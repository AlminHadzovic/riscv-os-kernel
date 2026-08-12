#include "../h/memory_allocator.hpp"

void *operator new(uint64 n) {
    size_t blocks = (n + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE;
    return MemoryAllocator::allocate(blocks);

}
void *operator new[](uint64 n) {
    size_t blocks = (n + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE;
    return MemoryAllocator::allocate(blocks);
}

void operator delete(void* p) noexcept {
MemoryAllocator::free(p);
}

void operator delete[](void* p) noexcept {
    MemoryAllocator::free(p);
}