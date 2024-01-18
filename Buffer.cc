#include"Buffer.h"

#include<errno.h>
#include<sys/uio.h>

const char Buffer::kCRLF[] = "\r\n";

//从fd上读取数据(LT模式)
ssize_t Buffer::readFd(int fd, int* saveErrno)
{
    char extrabuff[65536] = {0};//栈上的内存空间   64K
    struct iovec vec[2];
    const size_t writeable = writeableBytes();
    vec[0].iov_base = begin() + writerIndex_;
    vec[0].iov_len = writeable;

    vec[1].iov_base = extrabuff;
    vec[1].iov_len = sizeof extrabuff;

    const int iovcnt = (writeable < sizeof extrabuff) ? 2 : 1;
    const ssize_t n = ::readv(fd, vec, iovcnt);
    if(n<0)
    {
        *saveErrno = errno;
    }
    else if(n <= writeable)//Buffer的可写缓冲区足够存储读取的数据
    {
        writerIndex_ += n;
    }
    else//extrabuff里也写了数据
    {
        writerIndex_ = buffer_.size();
        append(extrabuff, n - writeable);//writerIndex_开始写n-writeable大小的数据
    }
    return n;
}

ssize_t Buffer::writeFd(int fd, int* saveErrno)
{
    ssize_t n = ::write(fd, peek(), readableBytes());
    if(n < 0)
    {
        *saveErrno = errno;
    }
    return n;
}