#include "../h/test.hpp"
#include "../h/thread.hpp"
#include "../h/printing.hpp"


static Thread *t1;
static Thread *t2;

void f(void *arg) {
    for (int i = 0; i < 3; i++) {
        t1->sync();
        printString("F");
        printInt(i);
        printString("\n");

    }
}


void g(void *arg) {
    for (int i = 0; i < 3; i++) {
        for (volatile int k = 0; k < 1000000; k++) {}
        t2->sync();
        printString("G");
        printInt(i);
        printString("\n");

    }
}

void test() {
    printString("USO\n");
    t1 = new Thread(f, nullptr);
    t2 = new Thread(g, nullptr);

    t1->start();
    t2->start();
    Thread::pair(t1,t2);
    Thread::sleep(150);


}
