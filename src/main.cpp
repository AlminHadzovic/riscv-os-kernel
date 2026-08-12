#include "../h/tcb.hpp"

#include "../h/memory_allocator.hpp"

#include "../h/riscv.hpp"
#include "../h/syscall_c.h"
#include "../lib/hw.h"
#include "../h/thread.hpp"


void userMain(void* arg);



int main() {
    MemoryAllocator::initialize();
    init_console();
    Riscv::w_stvec((uint64)&Riscv::supervisorTrap);
    TCB::running = TCB::createThread(nullptr, nullptr);
    thread_t userm = 0;
    //Thread* mainWorker = new Thread(userMain, nullptr);
    thread_create(&userm, userMain, nullptr);
    Riscv::ms_sstatus(Riscv::SSTATUS_SIE);
    //mainWorker->start();
    while (!(((TCB*)userm)->isFinished())) {
        thread_dispatch();
    }
    asm volatile (
    "li t0, 0x100000\n\t"
    "li t1, 0x5555\n\t"
    "sw t1, 0(t0)\n\t"
    ::: "t0", "t1"
);
    return 0;
}

