#pragma once

#include"noncopyable.h"
#include"Timestamp.h"

#include<vector>
#include<unordered_map>

class Channel;
class EventLoop;

/*muduo库中多路事件分发器的核心————I/O复用模块*/
class Poller : noncopyable
{
public:
    using ChannelList = std::vector<Channel*>;

    Poller(EventLoop* loop);
    virtual ~Poller()=default;

    //给所有IO复用保留统一的接口
    virtual Timestamp poll(int timeout, ChannelList* activeChannels)=0;
    virtual void updateChannel(Channel* channel)=0;
    virtual void removeChannel(Channel* channel)=0;

    //判断参数channel是否在当前Poller当中
    virtual bool hasChannel(Channel* channel) const;

    //EventLoop事件循环可以通过该接口获取默认的IO复用的具体实现
    //new的对象为pollpoller和epollpoller，需要包含两者的头文件，当是作为基类，不好调用派生类，因此使用另一个单独的文件进行实现
    static Poller* newDefaultPoller(EventLoop* loop);

protected:
    //使用无序的unordered_map而非有序的map，减少了系统对键的排序开销
    //map的key:sockfd   value:sockfd所属的channel通道类型
    using ChannelMap = std::unordered_map<int, Channel*>;
    ChannelMap channels_;
private:
    EventLoop* ownerLoop_;  //定义Poller所属事件循环EventLoop
};


