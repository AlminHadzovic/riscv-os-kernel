#include "../h/console.hpp"


char Console::getc () {
    char c = ::getc();
    return c;
}

void Console::putc (char c) {
    ::putc(c);
}