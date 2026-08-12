#include "../h/riscv.hpp"
#include "../h/printing.hpp"
#include "../h/tcb.hpp"


void Riscv::popSppSpie() {
    __asm__ volatile("csrw sepc, ra");
    __asm__ volatile("sret");
}

void Riscv::handleSupervisorTrap() {
    uint64 cause = Riscv::r_scause();

    // Čitanje argumenata iz registara (za sistemske pozive)
    volatile uint64 sys_code, arg1, arg2, arg3; // bilo je bez volatile i tamo <0
    asm volatile("mv %0, a0" : "=r"(sys_code));
    asm volatile("mv %0, a1" : "=r"(arg1));
    asm volatile("mv %0, a2" : "=r"(arg2));
    asm volatile("mv %0, a3" : "=r"(arg3));
    volatile uint64 return_value = 0;


    if (cause == 0x8 || cause == 0x9) {
        if (sys_code == 0x13) {
            uint64 sepc = Riscv::r_sepc() + 4;
            uint64 sstatus = r_sstatus();
            thread_dispatch_abi();
            w_sepc(sepc);
            w_sstatus(sstatus);
            return;
        }
        else if (sys_code == 0x1) {
            uint64 sepc = Riscv::r_sepc() + 4;
            size_t bytes = (size_t)arg1;
            size_t blocks = (bytes + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE;
            return_value = (uint64)mem_alloc_abi(blocks);
            w_sepc(sepc);
            Riscv::w_a0(return_value);
        }
        else if (sys_code == 0x2) {
            uint64 sepc = Riscv::r_sepc() + 4;
            int status = mem_free_abi((void*)arg1);
            return_value = (uint64)status;
            w_sepc(sepc);
            Riscv::w_a0(return_value);

        }
        else if (sys_code == 0x11) {
            uint64 sepc = Riscv::r_sepc() + 4;
            void* stack = MemoryAllocator::allocate(DEFAULT_STACK_SIZE);
            int status = thread_create_abi((thread_t*)arg1, (TCB::Body)arg2, (void*)arg3, stack);
            return_value = (uint64)status;
            w_sepc(sepc);
            Riscv::w_a0(return_value);
        }
        else if (sys_code == 0x12) {
            uint64 sepc = Riscv::r_sepc() + 4;
            uint64 sstatus = r_sstatus();
            thread_exit_abi();
            w_sepc(sepc);
            w_sstatus(sstatus);
            Riscv::w_a0(0);
        }

        else if (sys_code == 0x15) {
            uint64 sepc = Riscv::r_sepc() + 4;
            TCB* current = TCB::running;
            current->sleepTimeSlice = arg1;
            current->setBlocked(true);
            Scheduler::putS(current);
            TCB::dispatch();
            w_sepc(sepc);
        }

        else if (sys_code == 0x31) {
            uint64 sepc = Riscv::r_sepc() + 4;
            thread_sleep_abi((time_t)arg1);
            TCB::dispatch();
            w_sepc(sepc);
        }

        else if (sys_code == 0x21) {
            uint64 sepc = Riscv::r_sepc() + 4;
            int status = sem_open_abi((sem_t*)arg1, (int)arg2);
            return_value = (uint64)status;
            w_sepc(sepc);
            Riscv::w_a0(return_value);
        }

        else if (sys_code == 0x22) {
            uint64 sepc = Riscv::r_sepc() + 4;
            int status = sem_close_abi((sem_t)arg1);
            return_value = (uint64)status;
            w_sepc(sepc);
            Riscv::w_a0(return_value);
        }
        else if (sys_code == 0x23) {
            uint64 sepc = Riscv::r_sepc() + 4;
            int status = sem_wait_abi((sem_t)arg1);
            return_value = (uint64)status;
            w_sepc(sepc);
            Riscv::w_a0(return_value);
        }
        else if (sys_code == 0x24) {
            uint64 sepc = Riscv::r_sepc() + 4;
            int status = sem_signal_abi((sem_t)arg1);
            return_value = (uint64)status;
            w_sepc(sepc);
            Riscv::w_a0(return_value);
        }
        else if (sys_code == 0x25) {
            uint64 sepc = Riscv::r_sepc() + 4;
            int status = sem_wait_n_abi((sem_t)arg1, (int)arg2);
            return_value = (uint64)status;
            w_sepc(sepc);
            Riscv::w_a0(return_value);

        }
        else if (sys_code == 0x26) {
            uint64 sepc = Riscv::r_sepc() + 4;
            int status = sem_signal_n_abi((sem_t)arg1, (int)arg2);
            return_value = (uint64)status;
            w_sepc(sepc);
            Riscv::w_a0(return_value);
        }
        else if (sys_code == 0x41) {
            uint64 sepc = Riscv::r_sepc() + 4;
            char ret = getc_abi();
            return_value = (uint64)ret;
            w_sepc(sepc);
            Riscv::w_a0(return_value);
        }
        else if (sys_code == 0x42) {
            uint64 sepc = Riscv::r_sepc() + 4;
            putc_abi(arg1);
            w_sepc(sepc);
            Riscv::w_a0(return_value);
        }
        else if (sys_code == 0x51) {
            uint64 sepc = Riscv::r_sepc() + 4;
            TCB::setPartner((TCB*)arg1, (TCB*)arg2);
            w_sepc(sepc);
        }
        else if (sys_code == 0x53) {
            uint64 sepc = Riscv::r_sepc() + 4;
            sync_thread_abi();
            w_sepc(sepc);
        }


    }

    else if (cause == 0x8000000000000001UL) {

        TCB::update_sleeping_threads();
        TCB::timeSliceCounter++;
        if (TCB::timeSliceCounter >= TCB::running->getTimeSlice()) {
            uint64 sepc = r_sepc();
            uint64 sstatus = r_sstatus();
            TCB::timeSliceCounter = 0;
            TCB::dispatch();
            w_sstatus(sstatus);
            w_sepc(sepc);
        }
        mc_sip(SIP_SSIP);
    }


    else if (cause == 0x8000000000000009UL) {
        int irq = plic_claim();
        if (irq == 10) {
            kernel_console_handler();
        }
        plic_complete(irq);
    }

    else {
        printString("unexpected cause: ");
        printInt(cause);
        printString("\n");
        printString("sepc: ");
        printInt(Riscv::r_sepc());
        printString("\n");
        printString("stval: ");
        printInt(Riscv::r_stval());
        printString("\n");

        while(1);
    }


}