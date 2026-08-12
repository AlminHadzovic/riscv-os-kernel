#include "../h/testklasa.hpp"

Test::Test(time_t period) : PeriodicThread(period) {}

void Test::periodicActivation() {
    Console::putc('t');
    Console::putc('e');
    Console::putc('s');
    Console::putc('t');
    Console::putc('\n');
}
