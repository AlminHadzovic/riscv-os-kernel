#include "../h/consoleKernel.hpp"
#include "../h/semkernel.hpp"
#include "../h/riscv.hpp"

#define BUFFER_SIZE 256

static char rx_buffer[BUFFER_SIZE];
static volatile int rx_head = 0, rx_tail = 0;
SemKernel* sem_rx = nullptr;

void init_console() {
    sem_rx = new SemKernel(0);
}

void kernel_console_handler() {
    volatile uint8* status_reg = (volatile uint8*)CONSOLE_STATUS;
    volatile uint8* rx_data_reg = (volatile uint8*)CONSOLE_RX_DATA;

    // Čitamo sve karaktere koji su pristigli u UART fifo
    while (*status_reg & 0x01) {
        char c = (char)(*rx_data_reg);

        int next_tail = (rx_tail + 1) % BUFFER_SIZE;
        if (next_tail != rx_head) {
            rx_buffer[rx_tail] = c;
            rx_tail = next_tail;
            sem_rx->signal();
        }
    }
}

char kernel_getc() {
    sem_rx->wait(); // Čeka da stigne bar jedan karakter

    // Bezbedno čitanje iz bafera:
    // Dovoljno je onemogućiti interrupts samo dok uzimamo karakter iz bafera,
    // ali bez upisivanja neproverenog staro_stanje direktno u sstatus.

    char c = rx_buffer[rx_head];
    rx_head = (rx_head + 1) % BUFFER_SIZE;

    return c;
}

void kernel_putc(char chr) {
    uint64 sstatus = Riscv::r_sstatus();
    Riscv::mc_sstatus(Riscv::SSTATUS_SIE);

    volatile uint8* status_reg = (volatile uint8*)CONSOLE_STATUS;
    volatile uint8* tx_data_reg = (volatile uint8*)CONSOLE_TX_DATA;

    while (!(*status_reg & 0x20));

    *tx_data_reg = (uint8)chr;

    if (sstatus & Riscv::SSTATUS_SIE) {
        Riscv::ms_sstatus(Riscv::SSTATUS_SIE);
    }
}