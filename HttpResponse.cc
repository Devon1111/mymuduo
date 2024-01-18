#include"HttpResponse.h"

#include<string.h>

void HttpResponse::appendToBuffer(Buffer* output) const
{
    char buf[32] = {0};
    snprintf(buf, sizeof buf, "HTTP/1.1 %d ", statusCode_);
    output->append(buf,strlen(buf));
    output->append(statusMessage_.c_str(), statusMessage_.size());
    std::string KCRLF = "\r\n";
    std::string msg;
    output->append(KCRLF.c_str(), KCRLF.size());

    if(closeConnection_)
    {
        msg = "Connection: close\r\n";
        output->append("Connection: close\r\n", msg.size());
    }
    else
    {
        snprintf(buf, sizeof buf, "Connectent-Length: %zd\r\n", body_.size());
        output->append(buf, strlen(buf));
        msg = "Connection: Keep-Alive\r\n";
        output->append(msg.c_str(), msg.size());
    }
    for(const auto& header : headers_)
    {
        output->append(header.first.c_str(), header.first.size());
        output->append(": ", strlen(": "));
        output->append(header.second.c_str(),header.second.size());
        output->append(KCRLF.c_str(), KCRLF.size());
    }
    output->append(KCRLF.c_str(), KCRLF.size());
    output->append(body_.c_str(), body_.size());
}