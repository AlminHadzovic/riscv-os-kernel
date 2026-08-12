#pragma once
#include "syscall_c.h"
#include "../lib/hw.h"
#include "../h/semaphore.hpp"
class Thread {
public:
    Thread (void (*body)(void*), void* arg);
    virtual ~Thread ();
    int start ();
    static void dispatch ();
    static void pair(Thread* t1, Thread* t2);
    static int sleep (time_t);
    void sync();


protected:
    Thread ();
    virtual void run () {}
    thread_t myHandle;


private:
    void (*body)(void*); void* arg;
    static void runWrapper(void* threadObj);
};;