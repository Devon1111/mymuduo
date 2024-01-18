#include"TcpConnection.h"
#include"Logger.h"
#include"Socket.h"
#include"Channel.h"
#include"EventLoop.h"

#include<functional>
#include<errno.h>
#include<sys/types.h>
#include<sys/socket.h>
#include<strings.h>
#include<netinet/tcp.h>

static EventLoop* CheckLoopNotNull(EventLoop* loop)
{
    if(loop == nullptr)
    {
        LOG_FATAL("%s:%s:%d TcpConnection loop is null!\n",__FILE__, __FUNCTION__, __LINE__);
    }
    return loop;
}   

TcpConnection::TcpConnection(EventLoop* loop,
                    const std::string& nameArg,
                    int sockfd,
                    const InetAddress& localAddr,
                    const InetAddress& peerAddr)
    : loop_(CheckLoopNotNull(loop))
    , name_(nameArg)
    , state_(kConnecting)
    , reading_(true)
    , socket_(new Socket(sockfd))
    , channel_(new Channel(loop,sockfd))
    , localAddr_(localAddr)
    , peerAddr_(peerAddr)
    , highWaterMark_(64*1024*1024)//64M
{
    //设置Channel回调，Channel感兴趣的事件发送时Poller会通知Channel调用回调
    channel_->setReadCallback(std::bind(&TcpConnection::handleRead, this, std::placeholders::_1));
    channel_->setWriteCallback(std::bind(&TcpConnection::handleWrite, this));
    channel_->setCloseCallback(std::bind(&TcpConnection::handleClose, this));
    channel_->setErrorCallback(std::bind(&TcpConnection::handleError, this));

    LOG_INFO("TcpConnection::ctor[%s] at fd=%d\n", name_.c_str(), sockfd);
    socket_->setKeepAlive(true);
}

TcpConnection::~TcpConnection()
{
    LOG_INFO("TcpConnection::dtor[%s] at fd=%d state=%d\n", 
        name_.c_str(), channel_->fd(), (int)state_);
}

//发送数据
void TcpConnection::send(const std::string& buf)
{
    if(state_ == kConnected)
    {
        if(loop_->isInLoopThread())
        {
            sendInLoop(buf.c_str(), buf.size());
        }
        else
        {
            loop_->runInLoop(std::bind(
                                &TcpConnection::sendInLoop,
                                this,
                                buf.c_str(),
                                buf.size()));
        }
    }
}

/**
 * 发送数据  应用写的快，而内核发送数据慢，需要把待发送数据写入缓冲区，而且设置了水位回调
*/
void TcpConnection::sendInLoop(const void* message, size_t len)
{
    size_t nwrote = 0;
    size_t remaining = len;
    bool faultError = false;

    //之前调用过connection的shutdown，不能再进行数据发送
    if(state_ == kDisconnected)
    {
        LOG_ERROR("disconnectedm, give up writing!\n");
        return;
    }

    //标识channel第一次开始写数据，而且缓冲区没有待发送数据
    if(!channel_->isWriting() && outputBuffer_.readableBytes() == 0)
    {
        nwrote = ::write(channel_->fd(), message, len);
        if(nwrote >= 0)
        {
            remaining = len - nwrote;
            if(remaining == 0 && writeCompleteCallback_)
            {
                //数据一次性发送完成，就不用再给channel设置EPOLLOUT事件了
                loop_->queueInLoop(std::bind(writeCompleteCallback_, shared_from_this()));
            }
        }
        else//nwrote < 0
        {
            nwrote = 0;
            if(errno != EWOULDBLOCK)
            {
                LOG_ERROR("TcpCOnnection::sendInLoop\n");
                if(errno == EPIPE || errno == ECONNRESET)
                {
                    faultError = true;
                }
            }
        }
    }
    /**
     * 说明当前这一次write并没有把数据全部发送出去，剩余的数据需要保存到缓冲区中，
     * 然后给channel注册EPOLLOUT事件，Poller发现tcp的发送缓冲区中有空间，会通知相应的sock-channel，调用handleWrite回调方法
     * 也就是调用Tcpconnection::handleWrite方法，把发送缓冲区中的数据全部发送完毕
    */
    if(!faultError && remaining > 0)
    {
        //目前发送缓冲区剩余的待发送数据长度
        size_t oldLen = outputBuffer_.readableBytes();
        if(oldLen + remaining >= highWaterMark_ 
            && oldLen < highWaterMark_ 
            && highWaterMarkCallback_)
        {
            loop_->queueInLoop(std::bind(highWaterMarkCallback_, shared_from_this(), oldLen + remaining));
        }
        outputBuffer_.append((char*)message + nwrote, remaining);
        if(!channel_->isWriting())
        {
            channel_->enableWriting();//一定要注册channel的写事件，否则poller不会给channel通知epollout
        }
    }

}   

//关闭连接
void TcpConnection::shutdown()
{
    if (state_ == kConnected)
    {
        setState(kDisconnecting);
        loop_->runInLoop(std::bind(&TcpConnection::shutdownInLoop, this));
    }
}

void TcpConnection::shutdownInLoop()
{
    if(!channel_->isWriting())//若当前无数据发送，或缓冲区中数据发送完成
    {
        socket_->shutdownWrite();//关闭写端
    }
}

//连接建立
void TcpConnection::connectEstablished()
{
    setState(kConnected);
    channel_->tie(shared_from_this());
    channel_->enableReading();//向poller注册channel的epollin事件、

    //新连接建立，执行回调
    connectionCallback_(shared_from_this());
}

//连接销毁
void TcpConnection::connectDestoryed()
{
    if(state_ == kConnected)
    {
        setState(kDisconnected);
        channel_->disableAll();//把channel所有感兴趣的事件，从poller中删除
        connectionCallback_(shared_from_this());
    }
    channel_->remove();//把channel从poller中删除
}

void TcpConnection::handleRead(Timestamp receiveTime)
{
    int savedErrno = 0;
    ssize_t n = inputBuffer_.readFd(channel_->fd(), &savedErrno);
    if(n>0)
    {
        //已建立连接的用户，有可读事件发送了，调用用户传入的回调操作执行操作onMessage
        messageCallback_(shared_from_this(), &inputBuffer_, receiveTime);
    }
    else if(n == 0)
    {
        handleClose();
    }
    else
    {
        errno = savedErrno;
        LOG_ERROR("TcpConnection::handleRead\n");
        handleError();
    }
}

void TcpConnection::handleWrite()
{
    if(channel_->isWriting())
    {
        int savedErrno = 0;
        ssize_t n = outputBuffer_.writeFd(channel_->fd(), &savedErrno);
        if(n > 0)
        {
            outputBuffer_.retrieve(n);
            if(outputBuffer_.readableBytes() == 0)
            {
                channel_->disableWriting();
                if(writeCompleteCallback_)
                {
                    //唤醒loop_对应的thread线程执行回调
                    loop_->queueInLoop(std::bind(writeCompleteCallback_, shared_from_this()));
                }
                if(state_ == kDisconnecting)
                {
                    shutdownInLoop();
                }
            }
        }
        else
        {
            LOG_ERROR("TcpConnection::handleWrite\n");
        }
    }
    else
    {
        LOG_ERROR("TcpConnection fd=%d is down, no more writing\n", channel_->fd());
    }
}

//poller => channel::closeCallbace => TcpConnection::handleClose
void TcpConnection::handleClose()
{
    LOG_INFO("TcpConnection::handleClose fd=%d state=%d\n", channel_->fd(), (int)state_);
    setState(kDisconnected);
    channel_->disableAll();

    TcpConnectionPtr connPtr(shared_from_this());
    connectionCallback_(connPtr);//执行连接关闭的回调
    closeCallback_(connPtr);//关闭连接的回调    执行的是TcpServer::removeConnection回调方法
}

void TcpConnection::handleError()
{
    int optval;
    socklen_t optlen = sizeof optval;
    int err = 0;
    if (::getsockopt(channel_->fd(), SOL_SOCKET, SO_ERROR, &optval, &optlen) < 0)
    {
        err = errno;
    }
    else
    {
        err = optval;
    }
    LOG_ERROR("TcpConnection::handleError name:%s - SO_ERROR:%d \n", name_.c_str(), err);
}