#include "../h/semaphore.hpp"


Semaphore::Semaphore (unsigned init) {
    sem_open(&this->myHandle, init);
}

Semaphore::~Semaphore () {
    sem_close(myHandle);
}

int Semaphore::wait() {
    return sem_wait(myHandle);
}

int Semaphore::signal() {
    return sem_signal(myHandle);
}
