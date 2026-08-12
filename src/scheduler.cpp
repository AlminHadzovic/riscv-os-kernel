// Created by marko on 20.4.22..
//

#include "../h/scheduler.hpp"
#include "../h/printing.hpp"

List<TCB> Scheduler::readyCoroutineQueue;
List<TCB> Scheduler::sleepingThreads;

TCB *Scheduler::get()
{
    return readyCoroutineQueue.removeFirst();
}

void Scheduler::put(TCB *ccb)
{
    readyCoroutineQueue.addLast(ccb);
}

TCB *Scheduler::getS() {
    return sleepingThreads.removeFirst();
}

void Scheduler::putS(TCB *ccb) {
    sleepingThreads.addLast(ccb);
}


