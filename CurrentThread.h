#pragma once

#include<unistd.h>
#include<sys/syscall.h>

namespace CurrentThread
{
    extern __thread int t_cacheTid;

    void cacheTid();

    inline int tid()
    {
        //如果是首次调用，则通过cacheTid()方法获取tid
        if(__builtin_expect(t_cacheTid == 0,0))
        {
            cacheTid();
        }
        //否则直接放回已经获取的tid
        return t_cacheTid;
    }
}