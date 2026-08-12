#pragma once
#include "periodicthread.hpp"
#include "console.hpp"

class Test : public PeriodicThread {
    public:
    Test(time_t period);
    virtual void periodicActivation () override;

};
