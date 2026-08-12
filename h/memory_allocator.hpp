#ifndef PROJECT_BASE_V1_1_MEMORY_ALLOCATOR_HPP
#define PROJECT_BASE_V1_1_MEMORY_ALLOCATOR_HPP

#include "list.hpp"
#include "../lib/mem.h"
#include "../lib/hw.h"

class MemoryAllocator {
public:
    static void* allocate(size_t blocks);
    static int free(void *ptr);
    static void initialize();
private :
    MemoryAllocator() {};
    struct FreeBlock {
        size_t size;
        FreeBlock *next;
    };
    static FreeBlock* head;
};

#endif