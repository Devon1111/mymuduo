#pragma once

#include"copyable.h"
#include"Timestamp.h"

#include<unordered_map>
#include<string>

class HttpRequest : copyable
{
public:
    enum Method
    {
        kInvalid, kGet, kPost, kHead, kPut, kDelete
    };
    enum Version
    {
        kUnknown, kHttp10, kHttp11
    };

    HttpRequest()
        : method_(kInvalid)
        , version_(kUnknown)
    {}

    void setVersion(Version v) {version_ = v;}
    Version getVersion() const {return version_;}

    bool setMethod(const char* start, const char* end)
    {
        std::string m(start, end);
        if (m == "GET")
        {
            method_ = kGet;
        }
        else if (m == "POST")
        {
            method_ = kPost;
        }
        else if (m == "HEAD")
        {
            method_ = kHead;
        }
        else if (m == "PUT")
        {
            method_ = kPut;
        }
        else if (m == "DELETE")
        {
            method_ = kDelete;
        }
        else
        {
            method_ = kInvalid;
        }
        return method_ != kInvalid;
    }
    Method getMethod() const {return method_;}

    std::string getMethodString() const
    {
        std::string result = "UNKNOWN";
        switch(method_)
        {
        case kGet:
            result = "GET";
            break;
        case kPost:
            result = "POST";
            break;
        case kHead:
            result = "HEAD";
            break;
        case kPut:
            result = "PUT";
            break;
        case kDelete:
            result = "DELETE";
            break;
        default:
            break;
        }
        return result;
    }

    void setPath(const char* start, const char* end)
    {
        path_.assign(start, end);
    }
    const std::string& getPath() const {return path_;}

    void setQuery(const char* start, const char* end)
    {
        query_.assign(start, end);
    }
    const std::string& getQuery() const {return query_;}

    void setReceiveTime(Timestamp t) {receiveTime_ = t;}
    Timestamp getReceiveTime() const {return receiveTime_;}

    void addHeader(const char* start, const char* colon, const char* end)
    {
        std::string field(start, colon);
        ++colon;

        //去除多余的空格
        while(colon < end && isspace(*colon))
        {
            ++colon;
        }
        std::string value(colon, end);
        //去除短语的空格
        while(!value.empty() && isspace(value[value.size()-1]))
        {
            value.resize(value.size()-1);
        }
        //添加键值对
        headers_[field] = value;
    }

    std::string getHeader(const std::string& field) const
    {
        std::string result;
        std::unordered_map<std::string, std::string>::const_iterator it = headers_.find(field);
        if(it != headers_.end())
        {
            return it->second;
        }
        return result;
    }
    const std::unordered_map<std::string, std::string> getHeaders() const {return headers_;}

    void swap(HttpRequest& that)
    {
        std::swap(method_, that.method_);
        std::swap(version_, that.version_);
        path_.swap(that.path_);
        query_.swap(that.query_);
        receiveTime_.swap(that.receiveTime_);
        headers_.swap(that.headers_);
    }
private:
    Method method_;
    Version version_;
    std::string path_;
    std::string query_;
    Timestamp receiveTime_;
    std::unordered_map<std::string, std::string> headers_;
};