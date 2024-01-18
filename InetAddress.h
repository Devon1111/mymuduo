#pragma once
 
 #include<string>
 #include<cstring>
 #include<arpa/inet.h>
 #include<netinet/in.h>

// 封装socket递增类型
class InetAddress
{
public:
    explicit InetAddress() {memset(&addr_, 0, sizeof(addr_));}
    explicit InetAddress(uint16_t port, std::string ip = "127.0.0.1");
    explicit InetAddress(const sockaddr_in &addr)
        : addr_(addr)
        {}
    
    std::string toIp() const;
    std::string toIpPort() const;
    uint16_t toPort() const;

    const sockaddr_in* getSockAddr() const {return &addr_;}
    void setSockAddr(const sockaddr_in& addr) {addr_ = addr;}
private:
    sockaddr_in addr_;
};