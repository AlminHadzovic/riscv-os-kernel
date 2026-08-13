# RISC-V OS Kernel

A lightweight, multithreaded operating system kernel built from scratch in C++ and RISC-V assembly, developed as part of the **Operating Systems 1** course at the School of Electrical Engineering, University of Belgrade.

The kernel targets the **RV64IMA** RISC-V architecture and runs inside the **QEMU** emulator on top of a minimal host system (a stripped-down version of the xv6 educational OS, used only to boot the hardware and hand off control).

## Overview

This project implements a "library" kernel: the kernel and the user application are statically linked into a single executable that shares one address space — a configuration typical of embedded systems. All core OS concepts (memory management, threading, synchronization, timing, and I/O) are implemented **entirely from scratch**, without relying on any host OS services or standard C/C++ libraries.

## Features

- **Custom memory allocator** — first-fit/best-fit continuous allocation with configurable block size (`mem_alloc` / `mem_free`)
- **Multithreading** — lightweight thread abstraction with creation, termination, and cooperative dispatch (`thread_create`, `thread_exit`, `thread_dispatch`)
- **Preemptive scheduling** — asynchronous context switching driven by a periodic hardware timer interrupt, enabling true time-sharing between threads
- **Semaphores** — full synchronization primitives, including bulk `wait`/`signal` operations (`sem_open`, `sem_wait`, `sem_signal`, `sem_wait_n`, `sem_signal_n`)
- **Sleep/wake support** — threads can suspend themselves for a specified duration (`time_sleep`) and are woken automatically by the scheduler
- **Interrupt-driven console I/O** — buffered, non-blocking-style character input/output over a serial (UART) console, with dedicated kernel threads decoupling I/O from user-thread execution
- **Layered system interface** — a full three-layer API stack:
  - **ABI** — raw binary syscall interface via software interrupts (`ecall`), with arguments passed through processor registers per the RISC-V calling convention
  - **C API** — a procedural wrapper (`syscall_c.hpp`) exposing all kernel services as plain C functions
  - **C++ API** — an object-oriented layer (`syscall_cpp.hpp`) exposing `Thread`, `Semaphore`, `PeriodicThread`, and `Console` classes, including custom `operator new` / `operator delete` routed through the kernel allocator

## Architecture

The kernel is implemented as a **monolithic, single-processor** system: all kernel code executes in the same privileged address space, with service calls between internal modules handled as ordinary function calls rather than message passing.

Key components:

| Component | Responsibility |
|---|---|
| `MemoryAllocator` | Continuous memory allocation/deallocation for kernel and user objects |
| `Thread` / `PCB` | Thread abstraction — holds execution context, state, and scheduling metadata |
| `Scheduler` | Ready-queue management and thread selection (FCFS-based) |
| `Semaphore` | Classic counting semaphore with blocking wait/signal |
| `Console` | Interrupt-driven, buffered access to the serial console |

A single unified interrupt/trap handler, written in RISC-V assembly, is the sole entry and exit point between user-mode thread execution and privileged kernel code. It is responsible for:

1. Saving the interrupted thread's processor context
2. Dispatching to the appropriate handler based on the trap cause (system call, timer interrupt, console interrupt, or exception)
3. Performing an asynchronous context switch when required (e.g. on timer expiry or thread wake-up)
4. Restoring context and returning control to user mode

## Tech Stack

- **Language:** C++, RISC-V Assembly (GNU `gcc` toolchain for RISC-V)
- **Target architecture:** RISC-V RV64IMA
- **Emulation:** QEMU
- **Build system:** Make
- **Development environment:** CLion

## Project Structure

```
.
├── src/        # Kernel and interface implementation (.cpp, .S)
├── h/          # Kernel headers
inc/            # Public interface headers (syscall_c.hpp, syscall_cpp.hpp)
Makefile        # Build configuration (make qemu / make qemu-gdb / make clean)
```

## Building & Running

```bash
make qemu        # Build and run in QEMU
make qemu-gdb     # Build and run with remote GDB debugging enabled
make clean        # Remove build artifacts
```

The kernel links against the provided hardware-abstraction library (`hw.lib`) and a set of user-space test programs (`app.lib`), producing a single `kernel` executable that boots directly under QEMU.

## What I Learned

- Low-level interrupt/trap handling and manual processor context save/restore on a real ISA
- Designing and implementing preemptive scheduling and asynchronous context switching without OS support
- Synchronization primitive design (semaphores) and reasoning about critical sections in an environment with asynchronous preemption
- Producer/consumer buffering for interrupt-driven I/O
- Structuring a layered system interface (ABI → C API → C++ API) with strict binary compatibility constraints

## Course Context

Developed for the **Operating Systems 1** course (Katedra za računarsku tehniku i informatiku, School of Electrical Engineering, University of Belgrade), academic year 2025/2026, under prof. dr Dragan Milićev.
