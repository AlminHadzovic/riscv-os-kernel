#pragma once
#include "scheduler.hpp"
#include "../lib/hw.h"


typedef unsigned long size_t;
class _thread;
typedef _thread* thread_t;
class _sem;
typedef _sem* sem_t;
const int EOF = -1;


// system-call - memory allocation - size given in bytes
void* mem_alloc(size_t size);

// system-call - memory deallocation - argument represents starting memory adress that needs to be deallocated
int mem_free(void *ptr);

// system-call - thread creation
int thread_create(thread_t *handle ,void(*body)(void*), void*args);

// system-call - turns off running thread
int thread_exit();

// system-call - (potential) dispatch
void thread_dispatch();

// system-call - semaphore opening
int sem_open(sem_t* handle, unsigned init);

// system-call - semaphore closing, unblocking all threads
int sem_close(sem_t handle);

// system-call - semaphore wait
int sem_wait(sem_t id);

// system-call - semaphore signal
int sem_signal(sem_t id);

// system-call - load character from stdin
char getc();

// system-call - displays argument __cpp_unicode_characters
void putc(char c);

// system-call - semaphore wait with n tokens
int sem_wait_n(sem_t id, int n);

// system-call - semaphore signal with n tokens
int sem_signal_n(sem_t id, int n);



// system-call - puts thread in sleep schedule (REDUNDANT)
void time_sleep(time_t p);

void set_partner(thread_t t1, thread_t t2);

void sync_thread();