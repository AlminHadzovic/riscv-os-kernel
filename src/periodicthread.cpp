#include "../h/periodicthread.hpp"

#include "../h/tcb.hpp"

PeriodicThread::PeriodicThread (time_t period) : Thread(), period(period) {

}

void PeriodicThread::terminate () {
    TCB * t = (TCB*) myHandle;
    if (myHandle == nullptr) {
        return;
    }
    if (t) {
        t->setTerminated(true);
    }
}

void PeriodicThread::run () {
    time_t p = this->period;
    while (1) {
        if (((TCB*)myHandle)->getTerminated()) { break; }
        periodicActivation();
        if (((TCB*)myHandle)->getTerminated()) { break; }
        Console::putc('s');
        Console::putc('l');
        Console::putc('e');
        Console::putc('e');
        Console::putc('p');
        Console::putc('\n');
        time_sleep(p);
    }
    Console::putc('b');
    Console::putc('r');
    Console::putc('e');
    Console::putc('a');
    Console::putc('k');
    Console::putc('\n');
    ((TCB*)myHandle)->setFinished(true);
}