#pragma once

#include"copyable.h"
#include"HttpRequest.h"

class Buffer;

class HttpContext : copyable
{
public:
    enum HttpRequestParseState
    {
        kExpectRequestLine,
        kExpectHeaders,
        kExpectBody,
        kGotALl,
    };

    HttpContext()
        : state_(kExpectRequestLine)
    {}

    bool parseRequest(Buffer* buf, Timestamp receiveTime);
    
    bool gotAll() const {return state_ == kGotALl;}
    
    void reset()
    {
        state_ = kExpectRequestLine;
        HttpRequest dummy;
        request_.swap(dummy);
    }

    const HttpRequest& request() const {return request_;}
    HttpRequest& request() {return request_;}

private:

    bool processRequestLine(const char* begin, const char* end);

    HttpRequest request_;
    HttpRequestParseState state_;
};