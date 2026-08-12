#include "../h/semkernel.hpp"

// Pomoćni RAII-stil makroi/funkcije nisu neophodni, radim eksplicitno
// da bude jasno gde tačno kritična sekcija počinje i završava se.

SemKernel::SemKernel(int val) {
    this->val = val;
}

SemKernel::~SemKernel() {
    uint64 sstatus = Riscv::r_sstatus();
    Riscv::mc_sstatus(Riscv::SSTATUS_SIE);

    while (!blockedList.isEmpty()) {
        TCB* threadToDeblock = blockedList.removeFirst();
        if (threadToDeblock != nullptr) {
            threadToDeblock->setSemStatus(-1);
            threadToDeblock->setBlocked(false);
            Scheduler::put(threadToDeblock);
        }
    }

    if (sstatus & Riscv::SSTATUS_SIE) {
        Riscv::ms_sstatus(Riscv::SSTATUS_SIE);
    }
}

int SemKernel::wait() {
    uint64 sstatus = Riscv::r_sstatus();
    Riscv::mc_sstatus(Riscv::SSTATUS_SIE);

    val--;
    int result = 0;
    if (val < 0) {
        result = block();   // block() sam brine o svom delu kritične sekcije
    }

    if (sstatus & Riscv::SSTATUS_SIE) {
        Riscv::ms_sstatus(Riscv::SSTATUS_SIE);
    }
    return result;
}

int SemKernel::block() {
    // Pretpostavka: pozvano je unutar već isključenih prekida (iz wait()/wait_n()).
    TCB* oldThread = TCB::running;
    oldThread->reqsem_n = 1;
    oldThread->setSemStatus(0);
    blockedList.addLast(oldThread);
    oldThread->setBlocked(true);

    TCB::dispatch();

    // Čitamo status TEK kad se nit stvarno probudi (nakon dispatch-a),
    // ne pre. Ovo je popravka postojećeg bug-a.
    return oldThread->getSemStatus();
}

int SemKernel::signal() {
    uint64 sstatus = Riscv::r_sstatus();
    Riscv::mc_sstatus(Riscv::SSTATUS_SIE);

    val++;
    if (val <= 0) {
        deblock();
    }

    if (sstatus & Riscv::SSTATUS_SIE) {
        Riscv::ms_sstatus(Riscv::SSTATUS_SIE);
    }
    return 0;
}

int SemKernel::deblock() {
    // Pretpostavka: pozvano unutar već isključenih prekida (iz signal()).
    TCB* threadToDeblock = blockedList.removeFirst();
    if (threadToDeblock != nullptr) {
        threadToDeblock->setSemStatus(0);
        threadToDeblock->setBlocked(false);
        Scheduler::put(threadToDeblock);
    }
    return 0;
}

int SemKernel::block_n(int tokens) {
    // Pretpostavka: pozvano unutar već isključenih prekida (iz wait_n()).
    TCB* oldThread = TCB::running;
    oldThread->setSemStatus(0);
    oldThread->reqsem_n = tokens;
    blockedList.addLast(oldThread);
    oldThread->setBlocked(true);

    TCB::dispatch();

    return oldThread->getSemStatus();
}

int SemKernel::signal_n(int addVal) {
    if (addVal <= 0) return -1;

    uint64 sstatus = Riscv::r_sstatus();
    Riscv::mc_sstatus(Riscv::SSTATUS_SIE);

    this->val += addVal;
    while (!blockedList.isEmpty()) {
        TCB* firstBlocked = blockedList.peekFirst();
        if (firstBlocked != nullptr) {
            if (this->val >= firstBlocked->reqsem_n) {
                blockedList.removeFirst();
                this->val -= firstBlocked->reqsem_n;
                firstBlocked->setSemStatus(0);
                firstBlocked->setBlocked(false);
                Scheduler::put(firstBlocked);
            } else {
                break;
            }
        } else {
            break;
        }
    }

    if (sstatus & Riscv::SSTATUS_SIE) {
        Riscv::ms_sstatus(Riscv::SSTATUS_SIE);
    }
    return 0;
}

int SemKernel::wait_n(int tokens) {
    uint64 sstatus = Riscv::r_sstatus();
    Riscv::mc_sstatus(Riscv::SSTATUS_SIE);

    int curr = this->val;
    curr -= tokens;

    int result = 0;
    if (curr >= 0) {
        this->val = curr;
    } else {
        result = block_n(tokens);   // ide u dispatch dok su prekidi "isključeni"
    }

    if (sstatus & Riscv::SSTATUS_SIE) {
        Riscv::ms_sstatus(Riscv::SSTATUS_SIE);
    }
    return result;
}