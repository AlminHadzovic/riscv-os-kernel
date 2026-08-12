#pragma once
#include "../lib/hw.h"
#include "thread.hpp"

class PeriodicThread : public Thread {
public:
    void terminate ();
protected:
    PeriodicThread (time_t period);
    virtual void periodicActivation () {}
    virtual void run() override;
private:
    time_t period;
};