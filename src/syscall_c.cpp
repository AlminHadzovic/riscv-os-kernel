#include "../h/syscall_c.h"
#include "../h/riscv.hpp"
#include "../h/printing.hpp"



void* mem_alloc(size_t size) {
    asm volatile (
    "mv a0, %0\t\n"
    "mv a1, %1\t\n"
    "ecall" :: "r"(0x1), "r"(size) : "a0", "a1" );
    return (void*)Riscv::r_a0();
}

int mem_free(void *ptr) {
    asm volatile (
    "mv a0, %0\t\n"
    "mv a1, %1\t\n"
    "ecall" :: "r"(0x2), "r"(ptr) : "a0", "a1" );
    return (int)Riscv::r_a0();
}

int thread_create(thread_t *handle,void(*body)(void*), void *args) {
    uint64 adress = (uint64)body;
    asm volatile (
        "mv a0, %0\t\n"
        "mv a1, %1\t\n"
        "mv a2, %2\t\n"
        "mv a3, %3\t\n"
        "ecall" :: "r"(0x11), "r"(handle),"r"(adress), "r"(args) : "a0", "a1", "a2", "a3");
    return (int)Riscv::r_a0();
}

int thread_exit() {
    asm volatile (
        "mv a0, %0\t\n"
        "ecall" :: "r"(0x12) : "a0");
    return (int)Riscv::r_a0();
}

void thread_sleep() {
    asm volatile (
        "mv a0, %0\t\n"
        "ecall" :: "r"(0x15) : "a0");
}

void thread_dispatch() {

    asm volatile (
        "mv a0, %0\t\n"
        "ecall" :: "r"(0x13) : "a0");
}

int sem_open(sem_t *handle, unsigned init) {
    asm volatile (
        "mv a0, %0\t\n"
        "mv a1, %1\t\n"
        "mv a2, %2\t\n"
        "ecall" :: "r"(0x21), "r"(handle),"r"(init) : "a0", "a1", "a2");
    return (int)Riscv::r_a0();
}

int sem_close(sem_t handle) {
    asm volatile (
        "mv a0, %0\t\n"
        "mv a1, %1\t\n"
        "ecall" :: "r"(0x22), "r"(handle) : "a0", "a1" );
    return (int)Riscv::r_a0();
}

int sem_wait(sem_t id) {
    asm volatile (
        "mv a0, %0\t\n"
        "mv a1, %1\t\n"
        "ecall" :: "r"(0x23), "r"(id) : "a0", "a1" );
    return (int)Riscv::r_a0();
}

int sem_signal(sem_t id) {
    asm volatile (
        "mv a0, %0\t\n"
        "mv a1, %1\t\n"
        "ecall" :: "r"(0x24), "r"(id) : "a0", "a1" );
    return (int)Riscv::r_a0();
}

char getc() {
    asm volatile (
        "mv a0, %0\t\n"
        "ecall" :: "r"(0x41) : "a0");
    return (char)Riscv::r_a0();
}

void putc(char c) {
    asm volatile (
        "mv a0, %0\t\n"
        "mv a1, %1\t\n"
        "ecall" :: "r"(0x42), "r"(c) : "a0", "a1" );
}

void time_sleep(time_t p) {
    asm volatile (
        "mv a0, %0\t\n"
        "mv a1, %1\t\n"
        "ecall" :: "r"(0x31), "r"(p) : "a0", "a1" );
}

int sem_wait_n(sem_t id, int n) {
    asm volatile (
        "mv a0, %0\t\n"
        "mv a1, %1\t\n"
        "mv a2, %2\t\n"
        "ecall" :: "r"(0x25), "r"(id),"r"(n) : "a0", "a1", "a2");
    return (int)Riscv::r_a0();
}

int sem_signal_n(sem_t id, int n) {
    asm volatile (
        "mv a0, %0\t\n"
        "mv a1, %1\t\n"
        "mv a2, %2\t\n"
        "ecall" :: "r"(0x26), "r"(id),"r"(n) : "a0", "a1", "a2");
    return (int)Riscv::r_a0();

}

void set_partner(thread_t t1, thread_t t2) {
    asm volatile (
        "mv a0, %0\t\n"
        "mv a1, %1\t\n"
        "mv a2, %2\t\n"
        "ecall" :: "r"(0x51), "r"(t1),"r"(t2) : "a0", "a1", "a2");
}

void sync_thread() {
    asm volatile (
        "mv a0, %0\t\n"
        "ecall" :: "r"(0x53) : "a0");
}
