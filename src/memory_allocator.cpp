#include "../h/memory_allocator.hpp"
#include "../lib/mem.h"
#include "../h/riscv.hpp"


MemoryAllocator::FreeBlock* MemoryAllocator::head = nullptr;

void* MemoryAllocator::allocate(size_t blocks) {
    size_t req_blocks = blocks + 1;

    FreeBlock* curr = head;
    FreeBlock* prev = nullptr;
    while (curr) {
        if (curr->size >= req_blocks) { break; }
        prev = curr;
        curr = curr->next;
    }

    if (!curr) { return nullptr; }

    if (curr->size == req_blocks) {
        if (prev) {
            prev->next = curr->next;
        } else {
            head = curr->next;
        }
    } else {
        FreeBlock* newBlock = (FreeBlock*)((char*)curr + req_blocks * MEM_BLOCK_SIZE);
        newBlock->size = curr->size - req_blocks;
        newBlock->next = curr->next;

        if (prev) {
            prev->next = newBlock;
        } else {
            head = newBlock;
        }
    }

    curr->size = req_blocks;
    curr->next = nullptr;
    return (void*)((char*)curr + MEM_BLOCK_SIZE);
}
int MemoryAllocator::free(void* ptr) {
    if (!ptr) return -1;
    FreeBlock* newFree = (FreeBlock*)((char*)ptr - MEM_BLOCK_SIZE);

    FreeBlock* prev = nullptr;
    FreeBlock* curr = head;

    while (curr && curr < newFree) {
        prev = curr;
        curr = curr->next;
    }

    newFree->next = curr;

    if (prev) {
        prev->next = newFree;
    } else {
        head = newFree;
    }

    if (curr && (char*)newFree + newFree->size * MEM_BLOCK_SIZE == (char*)curr) {
        newFree->size += curr->size;
        newFree->next = curr->next;
    }

    if (prev && (char*)prev + prev->size * MEM_BLOCK_SIZE == (char*)newFree) {
        prev->size += newFree->size;
        prev->next = newFree->next;
    }

    return 0;
}

void MemoryAllocator::initialize() {
    MemoryAllocator::head = (FreeBlock*)HEAP_START_ADDR;
    MemoryAllocator::head->size =((char*)HEAP_END_ADDR - (char*)HEAP_START_ADDR) / MEM_BLOCK_SIZE;
    MemoryAllocator::head->next = nullptr;
}
