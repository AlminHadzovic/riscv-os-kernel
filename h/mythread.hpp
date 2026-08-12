#pragma once
#include "printing.hpp"
#include "thread.hpp"

class MyThread : public Thread {
public:
    MyThread() {

    }

    void run() override {
        printString("run");
        printString("\n");
    }
};