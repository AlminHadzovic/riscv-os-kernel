#include "../h/syscall_abi.h"
#include "../h/printing.hpp"
#include "../h/semkernel.hpp"


void * mem_alloc_abi(size_t blocks) {
    return MemoryAllocator::allocate(blocks);
}

int mem_free_abi(void * ptr) {
    return MemoryAllocator::free(ptr);
}

int thread_create_abi(thread_t *thread , thread_func_t b, void *arg, void* stack_size) {
    TCB *ccb = TCB::createThread(b,arg);
    *thread = (thread_t)ccb;
    return 0;
}

void thread_exit_abi() {
    TCB::running->setFinished(true);
    TCB::timeSliceCounter = 0;
    TCB::dispatch();
}

void thread_dispatch_abi() {
    TCB::timeSliceCounter = 0;
    TCB::dispatch();
}

int sem_open_abi(sem_t *sem, int init) {
    SemKernel * semKernel = new SemKernel(init);
    *sem = (sem_t)semKernel;
    return 0;
}

int sem_close_abi(sem_t id) {
    if (id ==  nullptr) return -1;
    SemKernel * sem = (SemKernel*)id;
    delete sem;
    return 0;
}

int sem_wait_abi(sem_t id) {
    if (id ==  nullptr) return -1;
    SemKernel * sem = (SemKernel*)id;
    return sem->wait();
}

int sem_signal_abi(sem_t id) {
    if (id ==  nullptr) return -1;
    SemKernel * sem = (SemKernel*)id;
    sem->signal();
    return 0;
}

int sem_signal_n_abi(sem_t id, int n) {
    if (id ==  nullptr) return -1;
    SemKernel * sem = (SemKernel*)id;
    return sem->signal_n(n);
    return 0;
}

int sem_wait_n_abi(sem_t id, int n) {
    if (id ==  nullptr) return -1;
    SemKernel * sem = (SemKernel*)id;
    return sem->wait_n(n);
    return 0;
}

char getc_abi() {
    char c = kernel_getc();
    return c;
}

void putc_abi(char c) {
    kernel_putc(c);
}

void thread_sleep_abi(time_t period) {
    TCB* curr = TCB::running;
    curr->setSleepTimeSlice(period);
    curr->setBlocked(true);
    Scheduler::putS(curr);
}

void sync_thread_abi() {
    TCB * t1 = TCB::running;
    TCB * t2 = t1->getPartner();
    t2->getSem()->signal();
    t1->getSem()->wait();


}




