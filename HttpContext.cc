#include"HttpContext.h"
#include"Buffer.h"

#include<algorithm>

bool HttpContext::parseRequest(Buffer* buf, Timestamp receiveTime)
{
    //初始处理状态
    bool ok = true;
    bool hasMore = true;
    while(hasMore)
    {
        if(state_ == kExpectRequestLine)
        {
            const char* crlf = buf->findCRLF();
            if(crlf)
            {
                ok = processRequestLine(buf->peek(), crlf);
                if(ok)
                {
                    request_.setReceiveTime(receiveTime);
                    buf->retrieveUntil(crlf + 2);
                    state_ = kExpectHeaders;
                }
                else
                {
                    hasMore = false;
                }
            }
            else
            {
                hasMore = false;
            }
        }
        else if(state_ == kExpectHeaders)
        {
            const char* crlf = buf->findCRLF();
            if(crlf)
            {
                const char* colon = std::find(buf->peek(), crlf, ':');
                if(colon != crlf)
                {
                    request_.addHeader(buf->peek(), colon, crlf);
                }
                else
                {
                    state_ = kGotALl;
                    hasMore = false;
                }
                buf->retrieveUntil(crlf+2);
            }
            else
            {
                hasMore = false;
            }
        }
        else if(state_ == kExpectBody)
        {
            //code...
        }
    }
    return ok;
}

bool HttpContext::processRequestLine(const char* begin, const char* end)
{
    bool succeed = false;
    const char* start = begin;
    //剥离第一部分
    const char* space = std::find(start, end, ' ');
    if(space != end && request_.setMethod(start, space))
    {//成功则再剥离第二部分
        start = space + 1;
        space = std::find(start, end, ' ');
        if(space != end)//如果还有信息
        {
            //取出第三部分的请求
            const char* question = std::find(start, space, '?');
            if(question != space)
            {
                request_.setPath(start, question);
                request_.setQuery(question, space);
            }
            else
            {
                request_.setPath(start, space);
            }
            start = space + 1;
            succeed = end - start == 8 && std::equal(start, end-1, "HTTP/1.");
            //如果是正确的字符大小和HTTP版本
            if(succeed)
            {
                if(*(end - 1) == '1')
                {
                    request_.setVersion(HttpRequest::kHttp11);
                }
                else if(*(end - 1) == '0')
                {
                    request_.setVersion(HttpRequest::kHttp10);
                }
                else
                {
                    succeed = false;
                }
            }
        }
    }
    return succeed;
}