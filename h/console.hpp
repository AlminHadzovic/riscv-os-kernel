#pragma once
#include "consoleKernel.hpp"
#include "syscall_c.h"


class Console {
    public:
        static char getc ();
        static void putc (char);
};