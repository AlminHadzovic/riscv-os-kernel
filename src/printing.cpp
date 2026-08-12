//
// Created by os on 5/18/22.
//

#include "../h/printing.hpp"
#include "../lib/hw.h"
#include "../h/syscall_c.h"
uint64 lockPrint = 0;

#define LOCK() while(copy_and_swap(lockPrint, 0, 1)) thread_dispatch()
#define UNLOCK() lockPrint = 0

void printString(char const *string)
{
    LOCK();
    if (!string) return;
    while (*string != '\0')
    {
        putc(*string);
        string++;
    }
    UNLOCK();
}

char* getString(char *buf, int max) {
    int i, cc;
    char c;

    for(i = 0; i + 1 < max; ){
        cc = getc();
        if(cc < 1)
            break;
        c = (char)cc;
        buf[i++] = c;
        if(c == '\n' || c == '\r')
            break;
    }
    buf[i] = '\0';

    return buf;
}

int stringToInt(const char *s) {
    int n = 0;
    while ('0' <= *s && *s <= '9')
        n = n * 10 + *s++ - '0';
    return n;
}

char digits[] = "0123456789ABCDEF";

void printInt(unsigned long xx, unsigned char base, unsigned char sgn)
{
    LOCK();
    char buf[32];
    int i;
    long neg = 0;
    unsigned long x;


    if(sgn && (long)xx < 0){
        neg = 1;
        x = (unsigned long)(-(long)xx);
    } else {
        x = xx;
    }

    i = 0;
    do{
        buf[i++] = digits[x % base];
    } while((x /= base) != 0);

    if(neg)
        buf[i++] = '-';

    while(--i >= 0)
        putc(buf[i]);

    UNLOCK();
}