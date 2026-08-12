#pragma once
#include "tcb.hpp"

class SemKernel {
    public:
    SemKernel(int val);
    ~SemKernel();
    int wait();
    int signal();
    int wait_n(int n);
    int signal_n(int n);

private:
    int block();
    int deblock();
    int block_n(int n);
    int val;
    List<TCB> blockedList;
};