#pragma once



#include<vector>
#include<stddef.h>
#include<unistd.h>
#include<string>


/// A buffer class modeled after org.jboss.netty.buffer.ChannelBuffer
///
/// @code
/// +-------------------+------------------+------------------+
/// | prependable bytes |  readable bytes  |  writable bytes  |
/// |                   |     (CONTENT)    |                  |
/// +-------------------+------------------+------------------+
/// |                   |                  |                  |
/// 0      <=      readerIndex   <=   writerIndex    <=     size
/// @endcode

//网络库底层的缓冲区类型定义
class Buffer
{
public:
    static const size_t kCheapPrepend = 8;
    static const size_t kInitialSize = 1024;

    explicit Buffer(size_t initialSize = kInitialSize)
        : buffer_(kCheapPrepend + initialSize)
        , readerIndex_(kCheapPrepend)
        , writerIndex_(kCheapPrepend)
    {}

    size_t readableBytes() const {return writerIndex_ - readerIndex_;}
    size_t writeableBytes() const {return buffer_.size() - writerIndex_;}
    size_t prependableBytes() const {return readerIndex_;}

    //返回缓冲区中可读数据的起始地址
    const char* peek() const {return begin() + readerIndex_;}

    void retrieve(size_t len) 
    {
        if(len < readableBytes())
        {
            readerIndex_ += len;//用户只读取了可读缓冲区中的一部分，即len，还剩下readerIndex_ += len - writerIndex_
        }
        else
        {
            retrieveAll();
        }
    }
    void retrieveAll() {readerIndex_ = kCheapPrepend; writerIndex_ = kCheapPrepend;}

    //把onMessage函数上报的Buffer数据，转成string类型的数据返回
    std::string retrieveAllsString()
    {
        return retrieveAsString(readableBytes());//应用可读取数据长度
    }

    std::string retrieveAsString(size_t len)
    {
        std::string result(peek(),len);
        //前一句已经将缓冲区中可读取的数据读取出来了，接下来就是对缓冲区进行复位操作
        retrieve(len);
        return result;
    }

    void retrieveUntil(const char* end)
    {
        retrieve(end - peek());
    }

    //buffer_.sezi - writerIndex_
    void ensureWriteableBytes(size_t len)
    {
        if(writeableBytes() < len)
        {
            makeSpace(len);//扩容函数
        }
    }

    //把[data, len]上面的数据添加到writaable缓冲区当中
    void append(const char* data, size_t len)
    {
        ensureWriteableBytes(len);
        std::copy(data, data + len, beginWrite());
        writerIndex_ += len;
    }

    char* beginWrite() {return begin() + writerIndex_;}
    const char* beginWrite() const {return begin() + writerIndex_;}

    //从fd上读取数据
    ssize_t readFd(int fd, int* saveErrno);
    //通过fd发送数据
    ssize_t writeFd(int fd, int* saveErrno);

    const char* findCRLF() const 
    {
        std::string data(peek(), beginWrite());
        size_t pos = data.find(kCRLF);
        return pos != std::string::npos ? peek() + pos : nullptr;
    }
private:
    char* begin() {return &*buffer_.begin();}
    const char* begin() const {return &*buffer_.begin();}

    void makeSpace(size_t len)
    {
        if(writeableBytes() + prependableBytes() < len + kCheapPrepend)
        {
            buffer_.resize(writerIndex_ + len);
        }
        else
        {
            size_t readable = readableBytes();
            std::copy(begin()+readerIndex_,
                      begin()+writerIndex_,
                      begin()+kCheapPrepend);
            readerIndex_ = kCheapPrepend;
            writerIndex_ = readerIndex_ + readable;
        }
    }

    std::vector<char> buffer_;
    size_t readerIndex_;
    size_t writerIndex_;

    static const char kCRLF[];
};