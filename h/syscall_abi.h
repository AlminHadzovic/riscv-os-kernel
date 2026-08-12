#pragma once
#include "syscall_c.h"
#include "riscv.hpp"

typedef void (*thread_func_t)(void*);

void * mem_alloc_abi(size_t blocks);

int mem_free_abi(void *ptr);

int thread_create_abi(thread_t *thread , thread_func_t body, void * arg, void * stack_space);

void thread_exit_abi();

void thread_dispatch_abi();

int sem_open_abi(sem_t *sem, int init);

int sem_close_abi(sem_t sem);

int sem_wait_abi(sem_t id);

int sem_signal_abi(sem_t id);

int sem_wait_n_abi(sem_t id, int n);

int sem_signal_n_abi(sem_t id, int n);

char getc_abi();

void putc_abi(char c);

void thread_sleep_abi(time_t period);

void sync_thread_abi();