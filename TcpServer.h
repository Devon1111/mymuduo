#pragma once

#include"noncopyable.h"
#include"EventLoop.h"
#include"InetAddress.h"
#include"Acceptor.h"
#include"EventLoopThreadPool.h"
#include"Callback.h"
#include"TcpConnection.h"
#include"Buffer.h"

#include<functional>
#include<string>
#include<memory>
#include<atomic>
#include<unordered_map>

//对外的服务器编程使用的类
class TcpServer : noncopyable
{
public:
    using ThreadInitCallback = std::function<void(EventLoop*)>;

    enum Option
    {
        kNoReusePort,
        kReusePort,
    };

    TcpServer(EventLoop* loop,
                const InetAddress& listenAddr,
                const std::string& nameArg,
                Option option = kNoReusePort);
    ~TcpServer();

    //设置底层subloop个数
    void setThreadNum(int numThreads);

    //开启服务器监听
    void start();

    void setThreadInitCallback(const ThreadInitCallback& cb) {threadInitCallback_ = cb;}
    void setMessageCallback(const MessageCallback& cb) {messageCallback_ = cb;}
    void setConnectionCallback(const ConnectionCallback& cb) {connectionCallback_ = cb;}
    void setWriteCompleteCallback(const WriteCompleteCallback& cb) {writeCompleteCallback_ = cb;}

    const std::string& ipPort() const { return ipPort_; }
    const std::string& name() const { return name_; }
    EventLoop* getLoop() const { return loop_; }
private:
    void newConnection(int sockfd, const InetAddress& peeraddr);
    void removeConnection(const TcpConnectionPtr& conn);
    void removeConnectionInLoop(const TcpConnectionPtr& conn);

    using ConnectionMap = std::unordered_map<std::string, TcpConnectionPtr>;

    EventLoop* loop_;//baseloop 用户定义的loop
    const std::string ipPort_;
    const std::string name_;
    std::unique_ptr<Acceptor> acceptor_;//监听新连接事件
    std::shared_ptr<EventLoopThreadPool> threadPool_;

    ConnectionCallback connectionCallback_;//有新连接时的回调
    MessageCallback messageCallback_;//有读写消息时的回调
    WriteCompleteCallback writeCompleteCallback_;//消息发送完成的回调

    ThreadInitCallback threadInitCallback_;//线程初始化的回调
    std::atomic_int started_;

    int nextConnId_;
    ConnectionMap connections_;//保存所有的连接
};