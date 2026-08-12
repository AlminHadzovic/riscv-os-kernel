//
// Created by os on 6/8/26.
//

#ifndef PROJECT_BASE_V1_1_CCB_HPP
#define PROJECT_BASE_V1_1_CCB_HPP
#include "printing.hpp"
#include "../lib/hw.h"
#include "scheduler.hpp"
#include "riscv.hpp"
#include "semkernel.hpp"


class TCB {
public:
    static int ID;
    int id;

    bool isFinished() const {
        return finished;
    }
    void setFinished(bool stat) {
        this->finished = stat;
    }

    void setBlocked(bool stat) {
        this->blocked = stat;
    }

    bool isBlocked() const {
        return blocked;
    }

    void setTerminated(bool stat) {
        this->terminated = stat;
    }

    void setSemStatus(int status) {
        this->semStatus = status;
    }

    bool getTerminated() const {
        return terminated;
    }

    int getSemStatus() const {
        return semStatus;
    }

    uint64 getTimeSlice() const {
        return timeSlice;
    }

    void setSleepTimeSlice(time_t p) {
        this->sleepTimeSlice = p;
    }

    void * getArgs() {
        return args;
    }

    TCB* getPartner() {
        return partner;
    }
    SemKernel * getSem() {
        return sem;
    };
    static void yield();

    using Body = void(*)(void *);
    static TCB *createThread(Body body, void* args);
    static TCB* running;
    ~TCB() {delete[] stack;}
    static uint64 timeSliceCounter;
    static void dispatch();
    static void time_sleep(uint64 timeout);
    static void update_sleeping_threads();
    static void setPartner(TCB* p1, TCB* p2);
private :
    struct Context {
        uint64 ra;
        uint64 sp;
    };

    Body body;
    uint64 *stack;
    Context context;
    uint64 timeSlice;
    uint64 sleepTimeSlice;
    volatile bool finished;
    bool blocked;
    bool terminated;
    int semStatus;
    int reqsem_n;
    void * args;
    TCB* partner;
    SemKernel * sem;

    friend class Riscv;
    friend class SemKernel;




    static void threadWrapper();

    static void contextSwitch(Context *oldContext, Context*runningContext);


    static uint64 constexpr STACK_SIZE = 8192;
    static uint64 constexpr TIME_SLICE = 2;

    TCB(Body body, void* args, uint64 timeSlice) : body(body),
    stack(body != nullptr ? new uint64[STACK_SIZE] : nullptr),
    context({
        (uint64)&threadWrapper,
        (uint64)(stack != nullptr ? ( (uint64)(&stack[STACK_SIZE]) & ~0xFULL ) : 0)
    }),
    timeSlice(timeSlice), sleepTimeSlice(0), finished(false), blocked(false),
    terminated(false), semStatus(0), reqsem_n(0), args(args), partner(nullptr), sem(nullptr)
    {
        this->id = ID++;
        if (body != nullptr) {
            Scheduler::put(this);
        }
    }

};


#endif //PROJECT_BASE_V1_1_CCB_HPP