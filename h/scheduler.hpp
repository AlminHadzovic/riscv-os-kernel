//
// Created by marko on 20.4.22..
//

#ifndef OS1_VEZBE07_RISCV_CONTEXT_SWITCH_1_SYNCHRONOUS_SCHEDULER_HPP
#define OS1_VEZBE07_RISCV_CONTEXT_SWITCH_1_SYNCHRONOUS_SCHEDULER_HPP

#include "list.hpp"


class TCB;

class Scheduler
{
private:
    static List<TCB> readyCoroutineQueue;
    static List<TCB> sleepingThreads;
    friend class TCB;

public:
    static TCB *get();

    static void put(TCB *ccb);

    static TCB *getS();

    static void putS(TCB *ccb);

};

#endif //OS1_VEZBE07_RISCV_CONTEXT_SWITCH_1_SYNCHRONOUS_SCHEDULER_HPP