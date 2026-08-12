#include "../h/tcb.hpp"

#include "../h/printing.hpp"
#include "../h/riscv.hpp"
#include "../h/scheduler.hpp"
#include "../h/semkernel.hpp"


TCB* TCB::running = nullptr;
int TCB::ID = 0;
uint64 TCB::timeSliceCounter = 0;

void TCB::yield() {
    __asm__ volatile (
        "mv a0, %0\t\n"
        "ecall" :: "r"(0x13) : "a0");
}

void TCB::dispatch() {
    TCB* old = TCB::running;
    TCB* next = Scheduler::get();
    if (next == nullptr) {
        return;
    }
    if (!old->isFinished() && !old->isBlocked()) {
        Scheduler::put(old);
    }
    TCB::running = next;
    Riscv::mc_sstatus(Riscv::SSTATUS_SPP);
    TCB::contextSwitch(&old->context, &running->context);
}

void TCB::setPartner(TCB *p1, TCB *p2) {
    p1->sem = new SemKernel(0);
    p2->sem = new SemKernel(0);
    p1->partner = p2;
    p2->partner = p1;
}

void TCB::threadWrapper() {
    Riscv::popSppSpie();
    running->body(running->getArgs());
    running->setFinished(true);
    TCB::yield();
}

TCB* TCB::createThread(TCB::Body body,void * args) {
    return new TCB(body,args,TIME_SLICE);
}


void TCB::time_sleep(uint64 timeout) {
    if (timeout == 0) return;

    __asm__ volatile (
        "mv a0, %0\t\n"
        "mv a1, %1\t\n"
        "ecall" :: "r"(0x15), "r"(timeout) : "a0", "a1" );
}

void TCB::update_sleeping_threads() {
    int cnt = Scheduler::sleepingThreads.getNumOfElements();
    if (cnt == 0) return;

    List<TCB> privremeniRed;

    for (int i = 0; i < cnt; i++) {
        TCB* current = Scheduler::getS();
        if (!current) break;

        current->sleepTimeSlice--;
        if (current->sleepTimeSlice <= 0) {
            current->setBlocked(false);
            current->sleepTimeSlice = 0;
            Scheduler::put(current);
        }
        else {
            privremeniRed.addLast(current);
        }
    }

    while(privremeniRed.getNumOfElements()) {
        Scheduler::putS(privremeniRed.removeFirst());
    }
}
