#include "../h/thread.hpp"

#include "../h/tcb.hpp"

Thread::Thread (void (*body)(void*), void* arg) {
    this->body = body;
    this->arg = arg;
    this->myHandle = nullptr;
}

void Thread::dispatch() {
    thread_dispatch();
}

void Thread::pair(Thread *t1, Thread *t2) {
    set_partner(t1->myHandle, t2->myHandle);
}

int Thread::start() {
    if (myHandle != nullptr) return -1; // vec startovan
    if (body != nullptr) {
        return thread_create(&myHandle, body, arg);
    }
    return thread_create(&myHandle, Thread::runWrapper, this);
}

void Thread::sync() {
    sync_thread();
}

Thread::~Thread () {}

Thread::Thread() {
    myHandle = nullptr;
    body = nullptr;
    arg = nullptr;
}

void Thread::runWrapper(void* threadObj) {
    if (threadObj != nullptr) {
        Thread* myThread = (Thread*)threadObj;
        myThread->run();
    }
}

int Thread::sleep(time_t t) {
    TCB::time_sleep(t);
    return 0;
}