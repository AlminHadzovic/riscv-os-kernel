#pragma once
#include "semkernel.hpp"
#include "syscall_c.h"


class Semaphore {
public:
    Semaphore (unsigned init = 1);
    virtual ~Semaphore ();
    int wait ();
    int signal ();

private:
    sem_t myHandle;
    SemKernel * sem;
};