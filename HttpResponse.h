#pragma once

#include"copyable.h"
#include"Buffer.h"

#include<unordered_map>
#include<string>

class HttpResponse : copyable
{
public:
    using string = std::string;
    enum HttpStatusCode
    {
        kUnknown,
        k200Ok = 200,
        k301MovedPermanently = 301,
        k400BadRequest = 400,
        k404NotFound = 404,
    };

    explicit HttpResponse(bool close)
        : statusCode_(kUnknown)
        , closeConnection_(close)
    {
    }

    void setStatusCode(HttpStatusCode code)
    { statusCode_ = code; }

    void setStatusMessage(const string& message)
    { statusMessage_ = message; }

    void setCloseConnection(bool on)
    { closeConnection_ = on; }

    bool closeConnection() const
    { return closeConnection_; }

    void setContentType(const string& contentType)
    { addHeader("Content-Type", contentType); }

    // FIXME: replace string with StringPiece
    void addHeader(const string& key, const string& value)
    { headers_[key] = value; }

    void setBody(const string& body)
    { body_ = body; }

    void appendToBuffer(Buffer* output) const;

private:

    std::unordered_map<std::string, std::string> headers_;
    HttpStatusCode statusCode_;
    std::string statusMessage_;
    bool closeConnection_;
    std::string body_;
};