#pragma once
#include "../lib/hw.h"

#define BUFFER_SIZE 256

class SemKernel;

extern SemKernel* sem_rx;


void init_console();
void kernel_console_handler();
char kernel_getc();
void kernel_putc(char chr);