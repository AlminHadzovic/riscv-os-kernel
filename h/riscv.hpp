//
// Created by marko on 20.4.22.
//

#ifndef OS1_RISCV_CONTEXT_SWITCH_SYNCHORNOUS_RISCV_HPP
#define OS1_RISCV_CONTEXT_SWITCH_SYNCHORNOUS_RISCV_HPP

#include "../h/tcb.hpp"
#include "../h/memory_allocator.hpp"
#include "../lib/hw.h"
#include "syscall_abi.h"
#include "../h/consoleKernel.hpp"
#include "../h/console.hpp"

class Riscv
{
public:
    static void popSppSpie();
    static void handleSupervisorTrap();
    static void supervisorTrap();
    static void pushRegisters();
    static void popRegisters();

    // read register scause
    static uint64 r_scause();

    // write register scause
    static void w_scause(uint64 scause);

    // read register sepc
    static uint64 r_sepc();

    // write register sepc
    static void w_sepc(uint64 sepc);

    // read register stvec
    static uint64 r_stvec();

    // write register stvec
    static void w_stvec(uint64 stvec);

    // read register stval
    static uint64 r_stval();

    // write register stvalhandleSupervisorTrap()
    static void w_stval(uint64 stval);

    // read register a0 (System Call Code - call)
    static uint64 r_a0();

    static uint64 r_a1();

    static uint64 r_a2();

    static uint64 r_a3();



    static void w_a0(uint64 val);

    static void w_a1(uint64 val);

    static void w_a2(uint64 val);

    static void w_a3(uint64 val);

    enum BitMaskSip
    {
        SIP_SSIP = (1 << 1),
        SIP_STIP = (1 << 5),
        SIP_SEIP = (1 << 9),
    };

// mask set register sip
    static void mc_sip(uint64 mask);

    // read register sip
    static uint64 r_sip();

    // write register sip
    static void w_sip(uint64 sip);

    enum BitMaskSstatus
    {
        SSTATUS_SIE  = (1 << 1),
        SSTATUS_SPIE = (1 << 5),
        SSTATUS_SPP  = (1 << 8),
    };

    // mask set register sstatus
    static void ms_sstatus(uint64 mask);

    // mask clear register sstatus
    static void mc_sstatus(uint64 mask);

    // read register sstatus
    static uint64 r_sstatus();

    // write register sstatus
    static void w_sstatus(uint64 sstatus);

private:

};


////////////////////////////////////////////////////


inline uint64 Riscv::r_a0() {
    uint64 volatile a0;
    asm volatile("mv %0, a0" : "=r"(a0));
    return a0;
}

inline uint64 Riscv::r_a1() {
    uint64 volatile a1;
    asm volatile("mv %0, a1" : "=r"(a1));
    return a1;
}

inline uint64 Riscv::r_a2() {
    uint64 volatile a2;
    asm volatile("mv %0, a2" : "=r"(a2));
    return a2;
}

inline uint64 Riscv::r_a3() {
    uint64 volatile a3;
    asm volatile("mv %0, a3" : "=r"(a3));
    return a3;
}

inline void Riscv::w_a0(uint64 val) {
    asm volatile ("mv a0, %0" :: "r"(val));
}

inline void Riscv::w_a1(uint64 val) {
    asm volatile ("mv a1, %0" :: "r"(val));
}

inline void Riscv::w_a2(uint64 val) {
    asm volatile ("mv a2, %0" :: "r"(val));
}

inline void Riscv::w_a3(uint64 val) {
    asm volatile ("mv a3, %0" :: "r"(val));
}

inline uint64 Riscv::r_scause()
{
    uint64 volatile scause;
    __asm__ volatile ("csrr %[scause], scause"
    : [scause] "=r"(scause));
    return scause;
}

inline void Riscv::w_scause(uint64 scause)
{
    __asm__ volatile ("csrw scause, %[scause]"
    :
    : [scause] "r"(scause));
}
inline uint64 Riscv::r_sepc()
{
    uint64 volatile sepc;
    __asm__ volatile("csrr %0, sepc" : "=r"(sepc));
    return sepc;
}

inline void Riscv::w_sepc(uint64 sepc)
{
    __asm__ volatile("csrw sepc, %0" :: "r"(sepc));
}

inline uint64 Riscv::r_stvec()
{
    uint64 volatile stvec;
    __asm__ volatile("csrr %0, stvec" : "=r"(stvec));
    return stvec;
}

inline void Riscv::w_stvec(uint64 stvec)
{
    __asm__ volatile("csrw stvec, %0" :: "r"(stvec));
}

inline uint64 Riscv::r_stval()
{
    uint64 volatile stval;
    __asm__ volatile("csrr %0, stval" : "=r"(stval));
    return stval;
}

inline void Riscv::w_stval(uint64 stval)
{
    __asm__ volatile("csrw stval, %0" :: "r"(stval));
}

inline void Riscv::mc_sip(uint64 mask)
{
    __asm__ volatile("csrc sip, %0" :: "r"(mask));
}

inline uint64 Riscv::r_sip()
{
    uint64 volatile sip;
    __asm__ volatile("csrr %0, sip" : "=r"(sip));
    return sip;
}

inline void Riscv::w_sip(uint64 sip)
{
    __asm__ volatile("csrw sip, %0" :: "r"(sip));
}

inline void Riscv::ms_sstatus(uint64 mask)
{
    __asm__ volatile("csrs sstatus, %0" :: "r"(mask));
}

inline void Riscv::mc_sstatus(uint64 mask)
{
    __asm__ volatile("csrc sstatus, %0" :: "r"(mask));
}

inline uint64 Riscv::r_sstatus()
{
    uint64 volatile sstatus;
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    return sstatus;
}

inline void Riscv::w_sstatus(uint64 sstatus)
{
    __asm__ volatile("csrw sstatus, %0" :: "r"(sstatus));
}

#endif