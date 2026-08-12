
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	0000c117          	auipc	sp,0xc
    80000004:	b7813103          	ld	sp,-1160(sp) # 8000bb78 <_GLOBAL_OFFSET_TABLE_+0x40>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	6c5060ef          	jal	ra,80006ee0 <start>

0000000080000020 <spin>:
    80000020:	0000006f          	j	80000020 <spin>
	...

0000000080001000 <_ZN5Riscv13pushRegistersEv>:
.global _ZN5Riscv13pushRegistersEv
.type _ZN5Riscv13pushRegistersEv, @function
_ZN5Riscv13pushRegistersEv:
    addi sp, sp, -256;
    80001000:	f0010113          	addi	sp,sp,-256
    .irp index, 3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    sd x\index, \index*8(sp)
    .endr
    80001004:	00313c23          	sd	gp,24(sp)
    80001008:	02413023          	sd	tp,32(sp)
    8000100c:	02513423          	sd	t0,40(sp)
    80001010:	02613823          	sd	t1,48(sp)
    80001014:	02713c23          	sd	t2,56(sp)
    80001018:	04813023          	sd	s0,64(sp)
    8000101c:	04913423          	sd	s1,72(sp)
    80001020:	04a13823          	sd	a0,80(sp)
    80001024:	04b13c23          	sd	a1,88(sp)
    80001028:	06c13023          	sd	a2,96(sp)
    8000102c:	06d13423          	sd	a3,104(sp)
    80001030:	06e13823          	sd	a4,112(sp)
    80001034:	06f13c23          	sd	a5,120(sp)
    80001038:	09013023          	sd	a6,128(sp)
    8000103c:	09113423          	sd	a7,136(sp)
    80001040:	09213823          	sd	s2,144(sp)
    80001044:	09313c23          	sd	s3,152(sp)
    80001048:	0b413023          	sd	s4,160(sp)
    8000104c:	0b513423          	sd	s5,168(sp)
    80001050:	0b613823          	sd	s6,176(sp)
    80001054:	0b713c23          	sd	s7,184(sp)
    80001058:	0d813023          	sd	s8,192(sp)
    8000105c:	0d913423          	sd	s9,200(sp)
    80001060:	0da13823          	sd	s10,208(sp)
    80001064:	0db13c23          	sd	s11,216(sp)
    80001068:	0fc13023          	sd	t3,224(sp)
    8000106c:	0fd13423          	sd	t4,232(sp)
    80001070:	0fe13823          	sd	t5,240(sp)
    80001074:	0ff13c23          	sd	t6,248(sp)
    ret
    80001078:	00008067          	ret

000000008000107c <_ZN5Riscv12popRegistersEv>:
.global _ZN5Riscv12popRegistersEv
.type _ZN5Riscv12popRegistersEv, @function
_ZN5Riscv12popRegistersEv:
    .irp index, 3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    ld x\index, \index*8(sp)
    .endr
    8000107c:	01813183          	ld	gp,24(sp)
    80001080:	02013203          	ld	tp,32(sp)
    80001084:	02813283          	ld	t0,40(sp)
    80001088:	03013303          	ld	t1,48(sp)
    8000108c:	03813383          	ld	t2,56(sp)
    80001090:	04013403          	ld	s0,64(sp)
    80001094:	04813483          	ld	s1,72(sp)
    80001098:	05013503          	ld	a0,80(sp)
    8000109c:	05813583          	ld	a1,88(sp)
    800010a0:	06013603          	ld	a2,96(sp)
    800010a4:	06813683          	ld	a3,104(sp)
    800010a8:	07013703          	ld	a4,112(sp)
    800010ac:	07813783          	ld	a5,120(sp)
    800010b0:	08013803          	ld	a6,128(sp)
    800010b4:	08813883          	ld	a7,136(sp)
    800010b8:	09013903          	ld	s2,144(sp)
    800010bc:	09813983          	ld	s3,152(sp)
    800010c0:	0a013a03          	ld	s4,160(sp)
    800010c4:	0a813a83          	ld	s5,168(sp)
    800010c8:	0b013b03          	ld	s6,176(sp)
    800010cc:	0b813b83          	ld	s7,184(sp)
    800010d0:	0c013c03          	ld	s8,192(sp)
    800010d4:	0c813c83          	ld	s9,200(sp)
    800010d8:	0d013d03          	ld	s10,208(sp)
    800010dc:	0d813d83          	ld	s11,216(sp)
    800010e0:	0e013e03          	ld	t3,224(sp)
    800010e4:	0e813e83          	ld	t4,232(sp)
    800010e8:	0f013f03          	ld	t5,240(sp)
    800010ec:	0f813f83          	ld	t6,248(sp)
    addi sp, sp, 256;
    800010f0:	10010113          	addi	sp,sp,256
    800010f4:	00008067          	ret

00000000800010f8 <copy_and_swap>:
# a1 holds expected value
# a2 holds desired value
# a0 holds return value, 0 if successful, !0 otherwise
.global copy_and_swap
copy_and_swap:
    lr.w t0, (a0)          # Load original value.
    800010f8:	100522af          	lr.w	t0,(a0)
    bne t0, a1, fail       # Doesn’t match, so fail.
    800010fc:	00b29a63          	bne	t0,a1,80001110 <fail>
    sc.w t0, a2, (a0)      # Try to update.
    80001100:	18c522af          	sc.w	t0,a2,(a0)
    bnez t0, copy_and_swap # Retry if store-conditional failed.
    80001104:	fe029ae3          	bnez	t0,800010f8 <copy_and_swap>
    li a0, 0               # Set return to success.
    80001108:	00000513          	li	a0,0
    jr ra                  # Return.
    8000110c:	00008067          	ret

0000000080001110 <fail>:
    fail:
    li a0, 1               # Set return to failure.
    80001110:	00100513          	li	a0,1
    80001114:	00008067          	ret
	...

0000000080001120 <_ZN5Riscv14supervisorTrapEv>:
.extern _ZN5Riscv20handleSupervisorTrapEv
.align 4
.global _ZN5Riscv14supervisorTrapEv
.type  _ZN5Riscv14supervisorTrapEv, @function
_ZN5Riscv14supervisorTrapEv:
    addi sp, sp, -256
    80001120:	f0010113          	addi	sp,sp,-256
        .irp index, 1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
         sd x\index, \index*8(sp)
        .endr
    80001124:	00113423          	sd	ra,8(sp)
    80001128:	00213823          	sd	sp,16(sp)
    8000112c:	00313c23          	sd	gp,24(sp)
    80001130:	02413023          	sd	tp,32(sp)
    80001134:	02513423          	sd	t0,40(sp)
    80001138:	02613823          	sd	t1,48(sp)
    8000113c:	02713c23          	sd	t2,56(sp)
    80001140:	04813023          	sd	s0,64(sp)
    80001144:	04913423          	sd	s1,72(sp)
    80001148:	04a13823          	sd	a0,80(sp)
    8000114c:	04b13c23          	sd	a1,88(sp)
    80001150:	06c13023          	sd	a2,96(sp)
    80001154:	06d13423          	sd	a3,104(sp)
    80001158:	06e13823          	sd	a4,112(sp)
    8000115c:	06f13c23          	sd	a5,120(sp)
    80001160:	09013023          	sd	a6,128(sp)
    80001164:	09113423          	sd	a7,136(sp)
    80001168:	09213823          	sd	s2,144(sp)
    8000116c:	09313c23          	sd	s3,152(sp)
    80001170:	0b413023          	sd	s4,160(sp)
    80001174:	0b513423          	sd	s5,168(sp)
    80001178:	0b613823          	sd	s6,176(sp)
    8000117c:	0b713c23          	sd	s7,184(sp)
    80001180:	0d813023          	sd	s8,192(sp)
    80001184:	0d913423          	sd	s9,200(sp)
    80001188:	0da13823          	sd	s10,208(sp)
    8000118c:	0db13c23          	sd	s11,216(sp)
    80001190:	0fc13023          	sd	t3,224(sp)
    80001194:	0fd13423          	sd	t4,232(sp)
    80001198:	0fe13823          	sd	t5,240(sp)
    8000119c:	0ff13c23          	sd	t6,248(sp)
        call _ZN5Riscv20handleSupervisorTrapEv
    800011a0:	01c040ef          	jal	ra,800051bc <_ZN5Riscv20handleSupervisorTrapEv>
        .irp index, 1,2,3,4,5,6,7,8,9,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
        ld x\index, \index*8(sp)
        .endr
    800011a4:	00813083          	ld	ra,8(sp)
    800011a8:	01013103          	ld	sp,16(sp)
    800011ac:	01813183          	ld	gp,24(sp)
    800011b0:	02013203          	ld	tp,32(sp)
    800011b4:	02813283          	ld	t0,40(sp)
    800011b8:	03013303          	ld	t1,48(sp)
    800011bc:	03813383          	ld	t2,56(sp)
    800011c0:	04013403          	ld	s0,64(sp)
    800011c4:	04813483          	ld	s1,72(sp)
    800011c8:	05813583          	ld	a1,88(sp)
    800011cc:	06013603          	ld	a2,96(sp)
    800011d0:	06813683          	ld	a3,104(sp)
    800011d4:	07013703          	ld	a4,112(sp)
    800011d8:	07813783          	ld	a5,120(sp)
    800011dc:	08013803          	ld	a6,128(sp)
    800011e0:	08813883          	ld	a7,136(sp)
    800011e4:	09013903          	ld	s2,144(sp)
    800011e8:	09813983          	ld	s3,152(sp)
    800011ec:	0a013a03          	ld	s4,160(sp)
    800011f0:	0a813a83          	ld	s5,168(sp)
    800011f4:	0b013b03          	ld	s6,176(sp)
    800011f8:	0b813b83          	ld	s7,184(sp)
    800011fc:	0c013c03          	ld	s8,192(sp)
    80001200:	0c813c83          	ld	s9,200(sp)
    80001204:	0d013d03          	ld	s10,208(sp)
    80001208:	0d813d83          	ld	s11,216(sp)
    8000120c:	0e013e03          	ld	t3,224(sp)
    80001210:	0e813e83          	ld	t4,232(sp)
    80001214:	0f013f03          	ld	t5,240(sp)
    80001218:	0f813f83          	ld	t6,248(sp)
        addi sp, sp, 256
    8000121c:	10010113          	addi	sp,sp,256
    80001220:	10200073          	sret
	...

0000000080001230 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>:
.global _ZN3TCB13contextSwitchEPNS_7ContextES1_
.type _ZN3TCB13contextSwitchEPNS_7ContextES1_, @function
_ZN3TCB13contextSwitchEPNS_7ContextES1_:
    sd ra, 0*8(a0)
    80001230:	00153023          	sd	ra,0(a0) # 1000 <_entry-0x7ffff000>
    sd sp, 1*8(a0)
    80001234:	00253423          	sd	sp,8(a0)

    ld ra , 0*8(a1)
    80001238:	0005b083          	ld	ra,0(a1)
    ld sp , 1*8(a1)
    8000123c:	0085b103          	ld	sp,8(a1)
    80001240:	00008067          	ret

0000000080001244 <_Z13mem_alloc_abim>:
#include "../h/syscall_abi.h"
#include "../h/printing.hpp"
#include "../h/semkernel.hpp"


void * mem_alloc_abi(size_t blocks) {
    80001244:	ff010113          	addi	sp,sp,-16
    80001248:	00113423          	sd	ra,8(sp)
    8000124c:	00813023          	sd	s0,0(sp)
    80001250:	01010413          	addi	s0,sp,16
    return MemoryAllocator::allocate(blocks);
    80001254:	00004097          	auipc	ra,0x4
    80001258:	d8c080e7          	jalr	-628(ra) # 80004fe0 <_ZN15MemoryAllocator8allocateEm>
}
    8000125c:	00813083          	ld	ra,8(sp)
    80001260:	00013403          	ld	s0,0(sp)
    80001264:	01010113          	addi	sp,sp,16
    80001268:	00008067          	ret

000000008000126c <_Z12mem_free_abiPv>:

int mem_free_abi(void * ptr) {
    8000126c:	ff010113          	addi	sp,sp,-16
    80001270:	00113423          	sd	ra,8(sp)
    80001274:	00813023          	sd	s0,0(sp)
    80001278:	01010413          	addi	s0,sp,16
    return MemoryAllocator::free(ptr);
    8000127c:	00004097          	auipc	ra,0x4
    80001280:	e08080e7          	jalr	-504(ra) # 80005084 <_ZN15MemoryAllocator4freeEPv>
}
    80001284:	00813083          	ld	ra,8(sp)
    80001288:	00013403          	ld	s0,0(sp)
    8000128c:	01010113          	addi	sp,sp,16
    80001290:	00008067          	ret

0000000080001294 <_Z17thread_create_abiPP7_threadPFvPvES2_S2_>:

int thread_create_abi(thread_t *thread , thread_func_t b, void *arg, void* stack_size) {
    80001294:	fe010113          	addi	sp,sp,-32
    80001298:	00113c23          	sd	ra,24(sp)
    8000129c:	00813823          	sd	s0,16(sp)
    800012a0:	00913423          	sd	s1,8(sp)
    800012a4:	02010413          	addi	s0,sp,32
    800012a8:	00050493          	mv	s1,a0
    800012ac:	00058513          	mv	a0,a1
    TCB *ccb = TCB::createThread(b,arg);
    800012b0:	00060593          	mv	a1,a2
    800012b4:	00004097          	auipc	ra,0x4
    800012b8:	8ec080e7          	jalr	-1812(ra) # 80004ba0 <_ZN3TCB12createThreadEPFvPvES0_>
    *thread = (thread_t)ccb;
    800012bc:	00a4b023          	sd	a0,0(s1)
    return 0;
}
    800012c0:	00000513          	li	a0,0
    800012c4:	01813083          	ld	ra,24(sp)
    800012c8:	01013403          	ld	s0,16(sp)
    800012cc:	00813483          	ld	s1,8(sp)
    800012d0:	02010113          	addi	sp,sp,32
    800012d4:	00008067          	ret

00000000800012d8 <_Z15thread_exit_abiv>:

void thread_exit_abi() {
    800012d8:	ff010113          	addi	sp,sp,-16
    800012dc:	00113423          	sd	ra,8(sp)
    800012e0:	00813023          	sd	s0,0(sp)
    800012e4:	01010413          	addi	s0,sp,16
    TCB::running->setFinished(true);
    800012e8:	0000b797          	auipc	a5,0xb
    800012ec:	8a87b783          	ld	a5,-1880(a5) # 8000bb90 <_GLOBAL_OFFSET_TABLE_+0x58>
    800012f0:	0007b783          	ld	a5,0(a5)

    bool isFinished() const {
        return finished;
    }
    void setFinished(bool stat) {
        this->finished = stat;
    800012f4:	00100713          	li	a4,1
    800012f8:	02e78c23          	sb	a4,56(a5)
    TCB::timeSliceCounter = 0;
    800012fc:	0000b797          	auipc	a5,0xb
    80001300:	86c7b783          	ld	a5,-1940(a5) # 8000bb68 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001304:	0007b023          	sd	zero,0(a5)
    TCB::dispatch();
    80001308:	00003097          	auipc	ra,0x3
    8000130c:	74c080e7          	jalr	1868(ra) # 80004a54 <_ZN3TCB8dispatchEv>
}
    80001310:	00813083          	ld	ra,8(sp)
    80001314:	00013403          	ld	s0,0(sp)
    80001318:	01010113          	addi	sp,sp,16
    8000131c:	00008067          	ret

0000000080001320 <_Z19thread_dispatch_abiv>:

void thread_dispatch_abi() {
    80001320:	ff010113          	addi	sp,sp,-16
    80001324:	00113423          	sd	ra,8(sp)
    80001328:	00813023          	sd	s0,0(sp)
    8000132c:	01010413          	addi	s0,sp,16
    TCB::timeSliceCounter = 0;
    80001330:	0000b797          	auipc	a5,0xb
    80001334:	8387b783          	ld	a5,-1992(a5) # 8000bb68 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001338:	0007b023          	sd	zero,0(a5)
    TCB::dispatch();
    8000133c:	00003097          	auipc	ra,0x3
    80001340:	718080e7          	jalr	1816(ra) # 80004a54 <_ZN3TCB8dispatchEv>
}
    80001344:	00813083          	ld	ra,8(sp)
    80001348:	00013403          	ld	s0,0(sp)
    8000134c:	01010113          	addi	sp,sp,16
    80001350:	00008067          	ret

0000000080001354 <_Z12sem_open_abiPP4_semi>:

int sem_open_abi(sem_t *sem, int init) {
    80001354:	fd010113          	addi	sp,sp,-48
    80001358:	02113423          	sd	ra,40(sp)
    8000135c:	02813023          	sd	s0,32(sp)
    80001360:	00913c23          	sd	s1,24(sp)
    80001364:	01213823          	sd	s2,16(sp)
    80001368:	01313423          	sd	s3,8(sp)
    8000136c:	03010413          	addi	s0,sp,48
    80001370:	00050913          	mv	s2,a0
    80001374:	00058993          	mv	s3,a1
    SemKernel * semKernel = new SemKernel(init);
    80001378:	01800513          	li	a0,24
    8000137c:	00004097          	auipc	ra,0x4
    80001380:	a88080e7          	jalr	-1400(ra) # 80004e04 <_Znwm>
    80001384:	00050493          	mv	s1,a0
    80001388:	00098593          	mv	a1,s3
    8000138c:	00004097          	auipc	ra,0x4
    80001390:	43c080e7          	jalr	1084(ra) # 800057c8 <_ZN9SemKernelC1Ei>
    80001394:	0200006f          	j	800013b4 <_Z12sem_open_abiPP4_semi+0x60>
    80001398:	00050913          	mv	s2,a0
    8000139c:	00048513          	mv	a0,s1
    800013a0:	00004097          	auipc	ra,0x4
    800013a4:	ac4080e7          	jalr	-1340(ra) # 80004e64 <_ZdlPv>
    800013a8:	00090513          	mv	a0,s2
    800013ac:	0000c097          	auipc	ra,0xc
    800013b0:	acc080e7          	jalr	-1332(ra) # 8000ce78 <_Unwind_Resume>
    *sem = (sem_t)semKernel;
    800013b4:	00993023          	sd	s1,0(s2)
    return 0;
}
    800013b8:	00000513          	li	a0,0
    800013bc:	02813083          	ld	ra,40(sp)
    800013c0:	02013403          	ld	s0,32(sp)
    800013c4:	01813483          	ld	s1,24(sp)
    800013c8:	01013903          	ld	s2,16(sp)
    800013cc:	00813983          	ld	s3,8(sp)
    800013d0:	03010113          	addi	sp,sp,48
    800013d4:	00008067          	ret

00000000800013d8 <_Z13sem_close_abiP4_sem>:

int sem_close_abi(sem_t id) {
    if (id ==  nullptr) return -1;
    800013d8:	04050463          	beqz	a0,80001420 <_Z13sem_close_abiP4_sem+0x48>
int sem_close_abi(sem_t id) {
    800013dc:	fe010113          	addi	sp,sp,-32
    800013e0:	00113c23          	sd	ra,24(sp)
    800013e4:	00813823          	sd	s0,16(sp)
    800013e8:	00913423          	sd	s1,8(sp)
    800013ec:	02010413          	addi	s0,sp,32
    800013f0:	00050493          	mv	s1,a0
    SemKernel * sem = (SemKernel*)id;
    delete sem;
    800013f4:	00004097          	auipc	ra,0x4
    800013f8:	3f8080e7          	jalr	1016(ra) # 800057ec <_ZN9SemKernelD1Ev>
    800013fc:	00048513          	mv	a0,s1
    80001400:	00004097          	auipc	ra,0x4
    80001404:	a64080e7          	jalr	-1436(ra) # 80004e64 <_ZdlPv>
    return 0;
    80001408:	00000513          	li	a0,0
}
    8000140c:	01813083          	ld	ra,24(sp)
    80001410:	01013403          	ld	s0,16(sp)
    80001414:	00813483          	ld	s1,8(sp)
    80001418:	02010113          	addi	sp,sp,32
    8000141c:	00008067          	ret
    if (id ==  nullptr) return -1;
    80001420:	fff00513          	li	a0,-1
}
    80001424:	00008067          	ret

0000000080001428 <_Z12sem_wait_abiP4_sem>:

int sem_wait_abi(sem_t id) {
    if (id ==  nullptr) return -1;
    80001428:	02050663          	beqz	a0,80001454 <_Z12sem_wait_abiP4_sem+0x2c>
int sem_wait_abi(sem_t id) {
    8000142c:	ff010113          	addi	sp,sp,-16
    80001430:	00113423          	sd	ra,8(sp)
    80001434:	00813023          	sd	s0,0(sp)
    80001438:	01010413          	addi	s0,sp,16
    SemKernel * sem = (SemKernel*)id;
    return sem->wait();
    8000143c:	00004097          	auipc	ra,0x4
    80001440:	4f0080e7          	jalr	1264(ra) # 8000592c <_ZN9SemKernel4waitEv>
}
    80001444:	00813083          	ld	ra,8(sp)
    80001448:	00013403          	ld	s0,0(sp)
    8000144c:	01010113          	addi	sp,sp,16
    80001450:	00008067          	ret
    if (id ==  nullptr) return -1;
    80001454:	fff00513          	li	a0,-1
}
    80001458:	00008067          	ret

000000008000145c <_Z14sem_signal_abiP4_sem>:

int sem_signal_abi(sem_t id) {
    if (id ==  nullptr) return -1;
    8000145c:	02050863          	beqz	a0,8000148c <_Z14sem_signal_abiP4_sem+0x30>
int sem_signal_abi(sem_t id) {
    80001460:	ff010113          	addi	sp,sp,-16
    80001464:	00113423          	sd	ra,8(sp)
    80001468:	00813023          	sd	s0,0(sp)
    8000146c:	01010413          	addi	s0,sp,16
    SemKernel * sem = (SemKernel*)id;
    sem->signal();
    80001470:	00004097          	auipc	ra,0x4
    80001474:	5a4080e7          	jalr	1444(ra) # 80005a14 <_ZN9SemKernel6signalEv>
    return 0;
    80001478:	00000513          	li	a0,0
}
    8000147c:	00813083          	ld	ra,8(sp)
    80001480:	00013403          	ld	s0,0(sp)
    80001484:	01010113          	addi	sp,sp,16
    80001488:	00008067          	ret
    if (id ==  nullptr) return -1;
    8000148c:	fff00513          	li	a0,-1
}
    80001490:	00008067          	ret

0000000080001494 <_Z16sem_signal_n_abiP4_semi>:

int sem_signal_n_abi(sem_t id, int n) {
    if (id ==  nullptr) return -1;
    80001494:	02050663          	beqz	a0,800014c0 <_Z16sem_signal_n_abiP4_semi+0x2c>
int sem_signal_n_abi(sem_t id, int n) {
    80001498:	ff010113          	addi	sp,sp,-16
    8000149c:	00113423          	sd	ra,8(sp)
    800014a0:	00813023          	sd	s0,0(sp)
    800014a4:	01010413          	addi	s0,sp,16
    SemKernel * sem = (SemKernel*)id;
    return sem->signal_n(n);
    800014a8:	00004097          	auipc	ra,0x4
    800014ac:	668080e7          	jalr	1640(ra) # 80005b10 <_ZN9SemKernel8signal_nEi>
    return 0;
}
    800014b0:	00813083          	ld	ra,8(sp)
    800014b4:	00013403          	ld	s0,0(sp)
    800014b8:	01010113          	addi	sp,sp,16
    800014bc:	00008067          	ret
    if (id ==  nullptr) return -1;
    800014c0:	fff00513          	li	a0,-1
}
    800014c4:	00008067          	ret

00000000800014c8 <_Z14sem_wait_n_abiP4_semi>:

int sem_wait_n_abi(sem_t id, int n) {
    if (id ==  nullptr) return -1;
    800014c8:	02050663          	beqz	a0,800014f4 <_Z14sem_wait_n_abiP4_semi+0x2c>
int sem_wait_n_abi(sem_t id, int n) {
    800014cc:	ff010113          	addi	sp,sp,-16
    800014d0:	00113423          	sd	ra,8(sp)
    800014d4:	00813023          	sd	s0,0(sp)
    800014d8:	01010413          	addi	s0,sp,16
    SemKernel * sem = (SemKernel*)id;
    return sem->wait_n(n);
    800014dc:	00004097          	auipc	ra,0x4
    800014e0:	724080e7          	jalr	1828(ra) # 80005c00 <_ZN9SemKernel6wait_nEi>
    return 0;
}
    800014e4:	00813083          	ld	ra,8(sp)
    800014e8:	00013403          	ld	s0,0(sp)
    800014ec:	01010113          	addi	sp,sp,16
    800014f0:	00008067          	ret
    if (id ==  nullptr) return -1;
    800014f4:	fff00513          	li	a0,-1
}
    800014f8:	00008067          	ret

00000000800014fc <_Z8getc_abiv>:

char getc_abi() {
    800014fc:	ff010113          	addi	sp,sp,-16
    80001500:	00113423          	sd	ra,8(sp)
    80001504:	00813023          	sd	s0,0(sp)
    80001508:	01010413          	addi	s0,sp,16
    char c = kernel_getc();
    8000150c:	00005097          	auipc	ra,0x5
    80001510:	704080e7          	jalr	1796(ra) # 80006c10 <_Z11kernel_getcv>
    return c;
}
    80001514:	00813083          	ld	ra,8(sp)
    80001518:	00013403          	ld	s0,0(sp)
    8000151c:	01010113          	addi	sp,sp,16
    80001520:	00008067          	ret

0000000080001524 <_Z8putc_abic>:

void putc_abi(char c) {
    80001524:	ff010113          	addi	sp,sp,-16
    80001528:	00113423          	sd	ra,8(sp)
    8000152c:	00813023          	sd	s0,0(sp)
    80001530:	01010413          	addi	s0,sp,16
    kernel_putc(c);
    80001534:	00005097          	auipc	ra,0x5
    80001538:	748080e7          	jalr	1864(ra) # 80006c7c <_Z11kernel_putcc>
}
    8000153c:	00813083          	ld	ra,8(sp)
    80001540:	00013403          	ld	s0,0(sp)
    80001544:	01010113          	addi	sp,sp,16
    80001548:	00008067          	ret

000000008000154c <_Z16thread_sleep_abim>:

void thread_sleep_abi(time_t period) {
    8000154c:	ff010113          	addi	sp,sp,-16
    80001550:	00113423          	sd	ra,8(sp)
    80001554:	00813023          	sd	s0,0(sp)
    80001558:	01010413          	addi	s0,sp,16
    TCB* curr = TCB::running;
    8000155c:	0000a797          	auipc	a5,0xa
    80001560:	6347b783          	ld	a5,1588(a5) # 8000bb90 <_GLOBAL_OFFSET_TABLE_+0x58>
    80001564:	0007b783          	ld	a5,0(a5)
    uint64 getTimeSlice() const {
        return timeSlice;
    }

    void setSleepTimeSlice(time_t p) {
        this->sleepTimeSlice = p;
    80001568:	02a7b823          	sd	a0,48(a5)
        this->blocked = stat;
    8000156c:	00100713          	li	a4,1
    80001570:	02e78ca3          	sb	a4,57(a5)
    curr->setSleepTimeSlice(period);
    curr->setBlocked(true);
    Scheduler::putS(curr);
    80001574:	00078513          	mv	a0,a5
    80001578:	00005097          	auipc	ra,0x5
    8000157c:	87c080e7          	jalr	-1924(ra) # 80005df4 <_ZN9Scheduler4putSEP3TCB>
}
    80001580:	00813083          	ld	ra,8(sp)
    80001584:	00013403          	ld	s0,0(sp)
    80001588:	01010113          	addi	sp,sp,16
    8000158c:	00008067          	ret

0000000080001590 <_Z15sync_thread_abiv>:

void sync_thread_abi() {
    80001590:	fe010113          	addi	sp,sp,-32
    80001594:	00113c23          	sd	ra,24(sp)
    80001598:	00813823          	sd	s0,16(sp)
    8000159c:	00913423          	sd	s1,8(sp)
    800015a0:	02010413          	addi	s0,sp,32
    TCB * t1 = TCB::running;
    800015a4:	0000a797          	auipc	a5,0xa
    800015a8:	5ec7b783          	ld	a5,1516(a5) # 8000bb90 <_GLOBAL_OFFSET_TABLE_+0x58>
    800015ac:	0007b483          	ld	s1,0(a5)
    void * getArgs() {
        return args;
    }

    TCB* getPartner() {
        return partner;
    800015b0:	0504b783          	ld	a5,80(s1)
    TCB * t2 = t1->getPartner();
    t2->getSem()->signal();
    800015b4:	0587b503          	ld	a0,88(a5)
    800015b8:	00004097          	auipc	ra,0x4
    800015bc:	45c080e7          	jalr	1116(ra) # 80005a14 <_ZN9SemKernel6signalEv>
    t1->getSem()->wait();
    800015c0:	0584b503          	ld	a0,88(s1)
    800015c4:	00004097          	auipc	ra,0x4
    800015c8:	368080e7          	jalr	872(ra) # 8000592c <_ZN9SemKernel4waitEv>


}
    800015cc:	01813083          	ld	ra,24(sp)
    800015d0:	01013403          	ld	s0,16(sp)
    800015d4:	00813483          	ld	s1,8(sp)
    800015d8:	02010113          	addi	sp,sp,32
    800015dc:	00008067          	ret

00000000800015e0 <_Z9mem_allocm>:
#include "../h/riscv.hpp"
#include "../h/printing.hpp"



void* mem_alloc(size_t size) {
    800015e0:	fe010113          	addi	sp,sp,-32
    800015e4:	00813c23          	sd	s0,24(sp)
    800015e8:	02010413          	addi	s0,sp,32
    800015ec:	00050713          	mv	a4,a0
    asm volatile (
    "mv a0, %0\t\n"
    "mv a1, %1\t\n"
    "ecall" :: "r"(0x1), "r"(size) : "a0", "a1" );
    800015f0:	00100793          	li	a5,1
    800015f4:	00078513          	mv	a0,a5
    800015f8:	00070593          	mv	a1,a4
    800015fc:	00000073          	ecall
////////////////////////////////////////////////////


inline uint64 Riscv::r_a0() {
    uint64 volatile a0;
    asm volatile("mv %0, a0" : "=r"(a0));
    80001600:	00050793          	mv	a5,a0
    80001604:	fef43423          	sd	a5,-24(s0)
    return a0;
    80001608:	fe843503          	ld	a0,-24(s0)
    return (void*)Riscv::r_a0();
}
    8000160c:	01813403          	ld	s0,24(sp)
    80001610:	02010113          	addi	sp,sp,32
    80001614:	00008067          	ret

0000000080001618 <_Z8mem_freePv>:

int mem_free(void *ptr) {
    80001618:	fe010113          	addi	sp,sp,-32
    8000161c:	00813c23          	sd	s0,24(sp)
    80001620:	02010413          	addi	s0,sp,32
    80001624:	00050713          	mv	a4,a0
    asm volatile (
    "mv a0, %0\t\n"
    "mv a1, %1\t\n"
    "ecall" :: "r"(0x2), "r"(ptr) : "a0", "a1" );
    80001628:	00200793          	li	a5,2
    8000162c:	00078513          	mv	a0,a5
    80001630:	00070593          	mv	a1,a4
    80001634:	00000073          	ecall
    asm volatile("mv %0, a0" : "=r"(a0));
    80001638:	00050793          	mv	a5,a0
    8000163c:	fef43423          	sd	a5,-24(s0)
    return a0;
    80001640:	fe843503          	ld	a0,-24(s0)
    return (int)Riscv::r_a0();
}
    80001644:	0005051b          	sext.w	a0,a0
    80001648:	01813403          	ld	s0,24(sp)
    8000164c:	02010113          	addi	sp,sp,32
    80001650:	00008067          	ret

0000000080001654 <_Z13thread_createPP7_threadPFvPvES2_>:

int thread_create(thread_t *handle,void(*body)(void*), void *args) {
    80001654:	fe010113          	addi	sp,sp,-32
    80001658:	00813c23          	sd	s0,24(sp)
    8000165c:	02010413          	addi	s0,sp,32
    80001660:	00050713          	mv	a4,a0
    80001664:	00058813          	mv	a6,a1
    80001668:	00060893          	mv	a7,a2
    asm volatile (
        "mv a0, %0\t\n"
        "mv a1, %1\t\n"
        "mv a2, %2\t\n"
        "mv a3, %3\t\n"
        "ecall" :: "r"(0x11), "r"(handle),"r"(adress), "r"(args) : "a0", "a1", "a2", "a3");
    8000166c:	01100793          	li	a5,17
    80001670:	00078513          	mv	a0,a5
    80001674:	00070593          	mv	a1,a4
    80001678:	00080613          	mv	a2,a6
    8000167c:	00088693          	mv	a3,a7
    80001680:	00000073          	ecall
    asm volatile("mv %0, a0" : "=r"(a0));
    80001684:	00050793          	mv	a5,a0
    80001688:	fef43423          	sd	a5,-24(s0)
    return a0;
    8000168c:	fe843503          	ld	a0,-24(s0)
    return (int)Riscv::r_a0();
}
    80001690:	0005051b          	sext.w	a0,a0
    80001694:	01813403          	ld	s0,24(sp)
    80001698:	02010113          	addi	sp,sp,32
    8000169c:	00008067          	ret

00000000800016a0 <_Z11thread_exitv>:

int thread_exit() {
    800016a0:	fe010113          	addi	sp,sp,-32
    800016a4:	00813c23          	sd	s0,24(sp)
    800016a8:	02010413          	addi	s0,sp,32
    asm volatile (
        "mv a0, %0\t\n"
        "ecall" :: "r"(0x12) : "a0");
    800016ac:	01200793          	li	a5,18
    800016b0:	00078513          	mv	a0,a5
    800016b4:	00000073          	ecall
    asm volatile("mv %0, a0" : "=r"(a0));
    800016b8:	00050793          	mv	a5,a0
    800016bc:	fef43423          	sd	a5,-24(s0)
    return a0;
    800016c0:	fe843503          	ld	a0,-24(s0)
    return (int)Riscv::r_a0();
}
    800016c4:	0005051b          	sext.w	a0,a0
    800016c8:	01813403          	ld	s0,24(sp)
    800016cc:	02010113          	addi	sp,sp,32
    800016d0:	00008067          	ret

00000000800016d4 <_Z12thread_sleepv>:

void thread_sleep() {
    800016d4:	ff010113          	addi	sp,sp,-16
    800016d8:	00813423          	sd	s0,8(sp)
    800016dc:	01010413          	addi	s0,sp,16
    asm volatile (
        "mv a0, %0\t\n"
        "ecall" :: "r"(0x15) : "a0");
    800016e0:	01500793          	li	a5,21
    800016e4:	00078513          	mv	a0,a5
    800016e8:	00000073          	ecall
}
    800016ec:	00813403          	ld	s0,8(sp)
    800016f0:	01010113          	addi	sp,sp,16
    800016f4:	00008067          	ret

00000000800016f8 <_Z15thread_dispatchv>:

void thread_dispatch() {
    800016f8:	ff010113          	addi	sp,sp,-16
    800016fc:	00813423          	sd	s0,8(sp)
    80001700:	01010413          	addi	s0,sp,16

    asm volatile (
        "mv a0, %0\t\n"
        "ecall" :: "r"(0x13) : "a0");
    80001704:	01300793          	li	a5,19
    80001708:	00078513          	mv	a0,a5
    8000170c:	00000073          	ecall
}
    80001710:	00813403          	ld	s0,8(sp)
    80001714:	01010113          	addi	sp,sp,16
    80001718:	00008067          	ret

000000008000171c <_Z8sem_openPP4_semj>:

int sem_open(sem_t *handle, unsigned init) {
    8000171c:	fe010113          	addi	sp,sp,-32
    80001720:	00813c23          	sd	s0,24(sp)
    80001724:	02010413          	addi	s0,sp,32
    80001728:	00050713          	mv	a4,a0
    8000172c:	00058693          	mv	a3,a1
    asm volatile (
        "mv a0, %0\t\n"
        "mv a1, %1\t\n"
        "mv a2, %2\t\n"
        "ecall" :: "r"(0x21), "r"(handle),"r"(init) : "a0", "a1", "a2");
    80001730:	02100793          	li	a5,33
    80001734:	00078513          	mv	a0,a5
    80001738:	00070593          	mv	a1,a4
    8000173c:	00068613          	mv	a2,a3
    80001740:	00000073          	ecall
    asm volatile("mv %0, a0" : "=r"(a0));
    80001744:	00050793          	mv	a5,a0
    80001748:	fef43423          	sd	a5,-24(s0)
    return a0;
    8000174c:	fe843503          	ld	a0,-24(s0)
    return (int)Riscv::r_a0();
}
    80001750:	0005051b          	sext.w	a0,a0
    80001754:	01813403          	ld	s0,24(sp)
    80001758:	02010113          	addi	sp,sp,32
    8000175c:	00008067          	ret

0000000080001760 <_Z9sem_closeP4_sem>:

int sem_close(sem_t handle) {
    80001760:	fe010113          	addi	sp,sp,-32
    80001764:	00813c23          	sd	s0,24(sp)
    80001768:	02010413          	addi	s0,sp,32
    8000176c:	00050713          	mv	a4,a0
    asm volatile (
        "mv a0, %0\t\n"
        "mv a1, %1\t\n"
        "ecall" :: "r"(0x22), "r"(handle) : "a0", "a1" );
    80001770:	02200793          	li	a5,34
    80001774:	00078513          	mv	a0,a5
    80001778:	00070593          	mv	a1,a4
    8000177c:	00000073          	ecall
    asm volatile("mv %0, a0" : "=r"(a0));
    80001780:	00050793          	mv	a5,a0
    80001784:	fef43423          	sd	a5,-24(s0)
    return a0;
    80001788:	fe843503          	ld	a0,-24(s0)
    return (int)Riscv::r_a0();
}
    8000178c:	0005051b          	sext.w	a0,a0
    80001790:	01813403          	ld	s0,24(sp)
    80001794:	02010113          	addi	sp,sp,32
    80001798:	00008067          	ret

000000008000179c <_Z8sem_waitP4_sem>:

int sem_wait(sem_t id) {
    8000179c:	fe010113          	addi	sp,sp,-32
    800017a0:	00813c23          	sd	s0,24(sp)
    800017a4:	02010413          	addi	s0,sp,32
    800017a8:	00050713          	mv	a4,a0
    asm volatile (
        "mv a0, %0\t\n"
        "mv a1, %1\t\n"
        "ecall" :: "r"(0x23), "r"(id) : "a0", "a1" );
    800017ac:	02300793          	li	a5,35
    800017b0:	00078513          	mv	a0,a5
    800017b4:	00070593          	mv	a1,a4
    800017b8:	00000073          	ecall
    asm volatile("mv %0, a0" : "=r"(a0));
    800017bc:	00050793          	mv	a5,a0
    800017c0:	fef43423          	sd	a5,-24(s0)
    return a0;
    800017c4:	fe843503          	ld	a0,-24(s0)
    return (int)Riscv::r_a0();
}
    800017c8:	0005051b          	sext.w	a0,a0
    800017cc:	01813403          	ld	s0,24(sp)
    800017d0:	02010113          	addi	sp,sp,32
    800017d4:	00008067          	ret

00000000800017d8 <_Z10sem_signalP4_sem>:

int sem_signal(sem_t id) {
    800017d8:	fe010113          	addi	sp,sp,-32
    800017dc:	00813c23          	sd	s0,24(sp)
    800017e0:	02010413          	addi	s0,sp,32
    800017e4:	00050713          	mv	a4,a0
    asm volatile (
        "mv a0, %0\t\n"
        "mv a1, %1\t\n"
        "ecall" :: "r"(0x24), "r"(id) : "a0", "a1" );
    800017e8:	02400793          	li	a5,36
    800017ec:	00078513          	mv	a0,a5
    800017f0:	00070593          	mv	a1,a4
    800017f4:	00000073          	ecall
    asm volatile("mv %0, a0" : "=r"(a0));
    800017f8:	00050793          	mv	a5,a0
    800017fc:	fef43423          	sd	a5,-24(s0)
    return a0;
    80001800:	fe843503          	ld	a0,-24(s0)
    return (int)Riscv::r_a0();
}
    80001804:	0005051b          	sext.w	a0,a0
    80001808:	01813403          	ld	s0,24(sp)
    8000180c:	02010113          	addi	sp,sp,32
    80001810:	00008067          	ret

0000000080001814 <_Z4getcv>:

char getc() {
    80001814:	fe010113          	addi	sp,sp,-32
    80001818:	00813c23          	sd	s0,24(sp)
    8000181c:	02010413          	addi	s0,sp,32
    asm volatile (
        "mv a0, %0\t\n"
        "ecall" :: "r"(0x41) : "a0");
    80001820:	04100793          	li	a5,65
    80001824:	00078513          	mv	a0,a5
    80001828:	00000073          	ecall
    asm volatile("mv %0, a0" : "=r"(a0));
    8000182c:	00050793          	mv	a5,a0
    80001830:	fef43423          	sd	a5,-24(s0)
    return a0;
    80001834:	fe843503          	ld	a0,-24(s0)
    return (char)Riscv::r_a0();
}
    80001838:	0ff57513          	andi	a0,a0,255
    8000183c:	01813403          	ld	s0,24(sp)
    80001840:	02010113          	addi	sp,sp,32
    80001844:	00008067          	ret

0000000080001848 <_Z4putcc>:

void putc(char c) {
    80001848:	ff010113          	addi	sp,sp,-16
    8000184c:	00813423          	sd	s0,8(sp)
    80001850:	01010413          	addi	s0,sp,16
    80001854:	00050713          	mv	a4,a0
    asm volatile (
        "mv a0, %0\t\n"
        "mv a1, %1\t\n"
        "ecall" :: "r"(0x42), "r"(c) : "a0", "a1" );
    80001858:	04200793          	li	a5,66
    8000185c:	00078513          	mv	a0,a5
    80001860:	00070593          	mv	a1,a4
    80001864:	00000073          	ecall
}
    80001868:	00813403          	ld	s0,8(sp)
    8000186c:	01010113          	addi	sp,sp,16
    80001870:	00008067          	ret

0000000080001874 <_Z10time_sleepm>:

void time_sleep(time_t p) {
    80001874:	ff010113          	addi	sp,sp,-16
    80001878:	00813423          	sd	s0,8(sp)
    8000187c:	01010413          	addi	s0,sp,16
    80001880:	00050713          	mv	a4,a0
    asm volatile (
        "mv a0, %0\t\n"
        "mv a1, %1\t\n"
        "ecall" :: "r"(0x31), "r"(p) : "a0", "a1" );
    80001884:	03100793          	li	a5,49
    80001888:	00078513          	mv	a0,a5
    8000188c:	00070593          	mv	a1,a4
    80001890:	00000073          	ecall
}
    80001894:	00813403          	ld	s0,8(sp)
    80001898:	01010113          	addi	sp,sp,16
    8000189c:	00008067          	ret

00000000800018a0 <_Z10sem_wait_nP4_semi>:

int sem_wait_n(sem_t id, int n) {
    800018a0:	fe010113          	addi	sp,sp,-32
    800018a4:	00813c23          	sd	s0,24(sp)
    800018a8:	02010413          	addi	s0,sp,32
    800018ac:	00050713          	mv	a4,a0
    800018b0:	00058693          	mv	a3,a1
    asm volatile (
        "mv a0, %0\t\n"
        "mv a1, %1\t\n"
        "mv a2, %2\t\n"
        "ecall" :: "r"(0x25), "r"(id),"r"(n) : "a0", "a1", "a2");
    800018b4:	02500793          	li	a5,37
    800018b8:	00078513          	mv	a0,a5
    800018bc:	00070593          	mv	a1,a4
    800018c0:	00068613          	mv	a2,a3
    800018c4:	00000073          	ecall
    asm volatile("mv %0, a0" : "=r"(a0));
    800018c8:	00050793          	mv	a5,a0
    800018cc:	fef43423          	sd	a5,-24(s0)
    return a0;
    800018d0:	fe843503          	ld	a0,-24(s0)
    return (int)Riscv::r_a0();
}
    800018d4:	0005051b          	sext.w	a0,a0
    800018d8:	01813403          	ld	s0,24(sp)
    800018dc:	02010113          	addi	sp,sp,32
    800018e0:	00008067          	ret

00000000800018e4 <_Z12sem_signal_nP4_semi>:

int sem_signal_n(sem_t id, int n) {
    800018e4:	fe010113          	addi	sp,sp,-32
    800018e8:	00813c23          	sd	s0,24(sp)
    800018ec:	02010413          	addi	s0,sp,32
    800018f0:	00050713          	mv	a4,a0
    800018f4:	00058693          	mv	a3,a1
    asm volatile (
        "mv a0, %0\t\n"
        "mv a1, %1\t\n"
        "mv a2, %2\t\n"
        "ecall" :: "r"(0x26), "r"(id),"r"(n) : "a0", "a1", "a2");
    800018f8:	02600793          	li	a5,38
    800018fc:	00078513          	mv	a0,a5
    80001900:	00070593          	mv	a1,a4
    80001904:	00068613          	mv	a2,a3
    80001908:	00000073          	ecall
    asm volatile("mv %0, a0" : "=r"(a0));
    8000190c:	00050793          	mv	a5,a0
    80001910:	fef43423          	sd	a5,-24(s0)
    return a0;
    80001914:	fe843503          	ld	a0,-24(s0)
    return (int)Riscv::r_a0();

}
    80001918:	0005051b          	sext.w	a0,a0
    8000191c:	01813403          	ld	s0,24(sp)
    80001920:	02010113          	addi	sp,sp,32
    80001924:	00008067          	ret

0000000080001928 <_Z11set_partnerP7_threadS0_>:

void set_partner(thread_t t1, thread_t t2) {
    80001928:	ff010113          	addi	sp,sp,-16
    8000192c:	00813423          	sd	s0,8(sp)
    80001930:	01010413          	addi	s0,sp,16
    80001934:	00050713          	mv	a4,a0
    80001938:	00058693          	mv	a3,a1
    asm volatile (
        "mv a0, %0\t\n"
        "mv a1, %1\t\n"
        "mv a2, %2\t\n"
        "ecall" :: "r"(0x51), "r"(t1),"r"(t2) : "a0", "a1", "a2");
    8000193c:	05100793          	li	a5,81
    80001940:	00078513          	mv	a0,a5
    80001944:	00070593          	mv	a1,a4
    80001948:	00068613          	mv	a2,a3
    8000194c:	00000073          	ecall
}
    80001950:	00813403          	ld	s0,8(sp)
    80001954:	01010113          	addi	sp,sp,16
    80001958:	00008067          	ret

000000008000195c <_Z11sync_threadv>:

void sync_thread() {
    8000195c:	ff010113          	addi	sp,sp,-16
    80001960:	00813423          	sd	s0,8(sp)
    80001964:	01010413          	addi	s0,sp,16
    asm volatile (
        "mv a0, %0\t\n"
        "ecall" :: "r"(0x53) : "a0");
    80001968:	05300793          	li	a5,83
    8000196c:	00078513          	mv	a0,a5
    80001970:	00000073          	ecall
}
    80001974:	00813403          	ld	s0,8(sp)
    80001978:	01010113          	addi	sp,sp,16
    8000197c:	00008067          	ret

0000000080001980 <_ZL16producerKeyboardPv>:
    sem_t wait;
};

static volatile int threadEnd = 0;

static void producerKeyboard(void *arg) {
    80001980:	fe010113          	addi	sp,sp,-32
    80001984:	00113c23          	sd	ra,24(sp)
    80001988:	00813823          	sd	s0,16(sp)
    8000198c:	00913423          	sd	s1,8(sp)
    80001990:	01213023          	sd	s2,0(sp)
    80001994:	02010413          	addi	s0,sp,32
    80001998:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    8000199c:	00000913          	li	s2,0
    800019a0:	00c0006f          	j	800019ac <_ZL16producerKeyboardPv+0x2c>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    800019a4:	00000097          	auipc	ra,0x0
    800019a8:	d54080e7          	jalr	-684(ra) # 800016f8 <_Z15thread_dispatchv>
    while ((key = getc()) != 0x1b) {
    800019ac:	00000097          	auipc	ra,0x0
    800019b0:	e68080e7          	jalr	-408(ra) # 80001814 <_Z4getcv>
    800019b4:	0005059b          	sext.w	a1,a0
    800019b8:	01b00793          	li	a5,27
    800019bc:	02f58a63          	beq	a1,a5,800019f0 <_ZL16producerKeyboardPv+0x70>
        data->buffer->put(key);
    800019c0:	0084b503          	ld	a0,8(s1)
    800019c4:	00005097          	auipc	ra,0x5
    800019c8:	ea8080e7          	jalr	-344(ra) # 8000686c <_ZN6Buffer3putEi>
        i++;
    800019cc:	0019071b          	addiw	a4,s2,1
    800019d0:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    800019d4:	0004a683          	lw	a3,0(s1)
    800019d8:	0026979b          	slliw	a5,a3,0x2
    800019dc:	00d787bb          	addw	a5,a5,a3
    800019e0:	0017979b          	slliw	a5,a5,0x1
    800019e4:	02f767bb          	remw	a5,a4,a5
    800019e8:	fc0792e3          	bnez	a5,800019ac <_ZL16producerKeyboardPv+0x2c>
    800019ec:	fb9ff06f          	j	800019a4 <_ZL16producerKeyboardPv+0x24>
        }
    }

    threadEnd = 1;
    800019f0:	00100793          	li	a5,1
    800019f4:	0000a717          	auipc	a4,0xa
    800019f8:	1ef72e23          	sw	a5,508(a4) # 8000bbf0 <_ZL9threadEnd>
    data->buffer->put('!');
    800019fc:	02100593          	li	a1,33
    80001a00:	0084b503          	ld	a0,8(s1)
    80001a04:	00005097          	auipc	ra,0x5
    80001a08:	e68080e7          	jalr	-408(ra) # 8000686c <_ZN6Buffer3putEi>

    sem_signal(data->wait);
    80001a0c:	0104b503          	ld	a0,16(s1)
    80001a10:	00000097          	auipc	ra,0x0
    80001a14:	dc8080e7          	jalr	-568(ra) # 800017d8 <_Z10sem_signalP4_sem>
}
    80001a18:	01813083          	ld	ra,24(sp)
    80001a1c:	01013403          	ld	s0,16(sp)
    80001a20:	00813483          	ld	s1,8(sp)
    80001a24:	00013903          	ld	s2,0(sp)
    80001a28:	02010113          	addi	sp,sp,32
    80001a2c:	00008067          	ret

0000000080001a30 <_ZL8producerPv>:

static void producer(void *arg) {
    80001a30:	fe010113          	addi	sp,sp,-32
    80001a34:	00113c23          	sd	ra,24(sp)
    80001a38:	00813823          	sd	s0,16(sp)
    80001a3c:	00913423          	sd	s1,8(sp)
    80001a40:	01213023          	sd	s2,0(sp)
    80001a44:	02010413          	addi	s0,sp,32
    80001a48:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80001a4c:	00000913          	li	s2,0
    80001a50:	00c0006f          	j	80001a5c <_ZL8producerPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    80001a54:	00000097          	auipc	ra,0x0
    80001a58:	ca4080e7          	jalr	-860(ra) # 800016f8 <_Z15thread_dispatchv>
    while (!threadEnd) {
    80001a5c:	0000a797          	auipc	a5,0xa
    80001a60:	1947a783          	lw	a5,404(a5) # 8000bbf0 <_ZL9threadEnd>
    80001a64:	02079e63          	bnez	a5,80001aa0 <_ZL8producerPv+0x70>
        data->buffer->put(data->id + '0');
    80001a68:	0004a583          	lw	a1,0(s1)
    80001a6c:	0305859b          	addiw	a1,a1,48
    80001a70:	0084b503          	ld	a0,8(s1)
    80001a74:	00005097          	auipc	ra,0x5
    80001a78:	df8080e7          	jalr	-520(ra) # 8000686c <_ZN6Buffer3putEi>
        i++;
    80001a7c:	0019071b          	addiw	a4,s2,1
    80001a80:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80001a84:	0004a683          	lw	a3,0(s1)
    80001a88:	0026979b          	slliw	a5,a3,0x2
    80001a8c:	00d787bb          	addw	a5,a5,a3
    80001a90:	0017979b          	slliw	a5,a5,0x1
    80001a94:	02f767bb          	remw	a5,a4,a5
    80001a98:	fc0792e3          	bnez	a5,80001a5c <_ZL8producerPv+0x2c>
    80001a9c:	fb9ff06f          	j	80001a54 <_ZL8producerPv+0x24>
        }
    }

    sem_signal(data->wait);
    80001aa0:	0104b503          	ld	a0,16(s1)
    80001aa4:	00000097          	auipc	ra,0x0
    80001aa8:	d34080e7          	jalr	-716(ra) # 800017d8 <_Z10sem_signalP4_sem>
}
    80001aac:	01813083          	ld	ra,24(sp)
    80001ab0:	01013403          	ld	s0,16(sp)
    80001ab4:	00813483          	ld	s1,8(sp)
    80001ab8:	00013903          	ld	s2,0(sp)
    80001abc:	02010113          	addi	sp,sp,32
    80001ac0:	00008067          	ret

0000000080001ac4 <_ZL8consumerPv>:

static void consumer(void *arg) {
    80001ac4:	fd010113          	addi	sp,sp,-48
    80001ac8:	02113423          	sd	ra,40(sp)
    80001acc:	02813023          	sd	s0,32(sp)
    80001ad0:	00913c23          	sd	s1,24(sp)
    80001ad4:	01213823          	sd	s2,16(sp)
    80001ad8:	01313423          	sd	s3,8(sp)
    80001adc:	03010413          	addi	s0,sp,48
    80001ae0:	00050913          	mv	s2,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80001ae4:	00000993          	li	s3,0
    80001ae8:	01c0006f          	j	80001b04 <_ZL8consumerPv+0x40>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            thread_dispatch();
    80001aec:	00000097          	auipc	ra,0x0
    80001af0:	c0c080e7          	jalr	-1012(ra) # 800016f8 <_Z15thread_dispatchv>
    80001af4:	0500006f          	j	80001b44 <_ZL8consumerPv+0x80>
        }

        if (i % 80 == 0) {
            putc('\n');
    80001af8:	00a00513          	li	a0,10
    80001afc:	00000097          	auipc	ra,0x0
    80001b00:	d4c080e7          	jalr	-692(ra) # 80001848 <_Z4putcc>
    while (!threadEnd) {
    80001b04:	0000a797          	auipc	a5,0xa
    80001b08:	0ec7a783          	lw	a5,236(a5) # 8000bbf0 <_ZL9threadEnd>
    80001b0c:	06079063          	bnez	a5,80001b6c <_ZL8consumerPv+0xa8>
        int key = data->buffer->get();
    80001b10:	00893503          	ld	a0,8(s2)
    80001b14:	00005097          	auipc	ra,0x5
    80001b18:	de8080e7          	jalr	-536(ra) # 800068fc <_ZN6Buffer3getEv>
        i++;
    80001b1c:	0019849b          	addiw	s1,s3,1
    80001b20:	0004899b          	sext.w	s3,s1
        putc(key);
    80001b24:	0ff57513          	andi	a0,a0,255
    80001b28:	00000097          	auipc	ra,0x0
    80001b2c:	d20080e7          	jalr	-736(ra) # 80001848 <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    80001b30:	00092703          	lw	a4,0(s2)
    80001b34:	0027179b          	slliw	a5,a4,0x2
    80001b38:	00e787bb          	addw	a5,a5,a4
    80001b3c:	02f4e7bb          	remw	a5,s1,a5
    80001b40:	fa0786e3          	beqz	a5,80001aec <_ZL8consumerPv+0x28>
        if (i % 80 == 0) {
    80001b44:	05000793          	li	a5,80
    80001b48:	02f4e4bb          	remw	s1,s1,a5
    80001b4c:	fa049ce3          	bnez	s1,80001b04 <_ZL8consumerPv+0x40>
    80001b50:	fa9ff06f          	j	80001af8 <_ZL8consumerPv+0x34>
        }
    }

    while (data->buffer->getCnt() > 0) {
        int key = data->buffer->get();
    80001b54:	00893503          	ld	a0,8(s2)
    80001b58:	00005097          	auipc	ra,0x5
    80001b5c:	da4080e7          	jalr	-604(ra) # 800068fc <_ZN6Buffer3getEv>
        putc(key);
    80001b60:	0ff57513          	andi	a0,a0,255
    80001b64:	00000097          	auipc	ra,0x0
    80001b68:	ce4080e7          	jalr	-796(ra) # 80001848 <_Z4putcc>
    while (data->buffer->getCnt() > 0) {
    80001b6c:	00893503          	ld	a0,8(s2)
    80001b70:	00005097          	auipc	ra,0x5
    80001b74:	e18080e7          	jalr	-488(ra) # 80006988 <_ZN6Buffer6getCntEv>
    80001b78:	fca04ee3          	bgtz	a0,80001b54 <_ZL8consumerPv+0x90>
    }

    sem_signal(data->wait);
    80001b7c:	01093503          	ld	a0,16(s2)
    80001b80:	00000097          	auipc	ra,0x0
    80001b84:	c58080e7          	jalr	-936(ra) # 800017d8 <_Z10sem_signalP4_sem>
}
    80001b88:	02813083          	ld	ra,40(sp)
    80001b8c:	02013403          	ld	s0,32(sp)
    80001b90:	01813483          	ld	s1,24(sp)
    80001b94:	01013903          	ld	s2,16(sp)
    80001b98:	00813983          	ld	s3,8(sp)
    80001b9c:	03010113          	addi	sp,sp,48
    80001ba0:	00008067          	ret

0000000080001ba4 <_Z22producerConsumer_C_APIv>:

void producerConsumer_C_API() {
    80001ba4:	f9010113          	addi	sp,sp,-112
    80001ba8:	06113423          	sd	ra,104(sp)
    80001bac:	06813023          	sd	s0,96(sp)
    80001bb0:	04913c23          	sd	s1,88(sp)
    80001bb4:	05213823          	sd	s2,80(sp)
    80001bb8:	05313423          	sd	s3,72(sp)
    80001bbc:	05413023          	sd	s4,64(sp)
    80001bc0:	03513c23          	sd	s5,56(sp)
    80001bc4:	03613823          	sd	s6,48(sp)
    80001bc8:	07010413          	addi	s0,sp,112
        sem_wait(waitForAll);
    }

    sem_close(waitForAll);

    delete buffer;
    80001bcc:	00010b13          	mv	s6,sp
    printString("Unesite broj proizvodjaca?\n");
    80001bd0:	00007517          	auipc	a0,0x7
    80001bd4:	45050513          	addi	a0,a0,1104 # 80009020 <CONSOLE_STATUS+0x10>
    80001bd8:	00002097          	auipc	ra,0x2
    80001bdc:	548080e7          	jalr	1352(ra) # 80004120 <_Z11printStringPKc>
    getString(input, 30);
    80001be0:	01e00593          	li	a1,30
    80001be4:	fa040493          	addi	s1,s0,-96
    80001be8:	00048513          	mv	a0,s1
    80001bec:	00002097          	auipc	ra,0x2
    80001bf0:	5ac080e7          	jalr	1452(ra) # 80004198 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80001bf4:	00048513          	mv	a0,s1
    80001bf8:	00002097          	auipc	ra,0x2
    80001bfc:	634080e7          	jalr	1588(ra) # 8000422c <_Z11stringToIntPKc>
    80001c00:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    80001c04:	00007517          	auipc	a0,0x7
    80001c08:	43c50513          	addi	a0,a0,1084 # 80009040 <CONSOLE_STATUS+0x30>
    80001c0c:	00002097          	auipc	ra,0x2
    80001c10:	514080e7          	jalr	1300(ra) # 80004120 <_Z11printStringPKc>
    getString(input, 30);
    80001c14:	01e00593          	li	a1,30
    80001c18:	00048513          	mv	a0,s1
    80001c1c:	00002097          	auipc	ra,0x2
    80001c20:	57c080e7          	jalr	1404(ra) # 80004198 <_Z9getStringPci>
    n = stringToInt(input);
    80001c24:	00048513          	mv	a0,s1
    80001c28:	00002097          	auipc	ra,0x2
    80001c2c:	604080e7          	jalr	1540(ra) # 8000422c <_Z11stringToIntPKc>
    80001c30:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    80001c34:	00007517          	auipc	a0,0x7
    80001c38:	42c50513          	addi	a0,a0,1068 # 80009060 <CONSOLE_STATUS+0x50>
    80001c3c:	00002097          	auipc	ra,0x2
    80001c40:	4e4080e7          	jalr	1252(ra) # 80004120 <_Z11printStringPKc>
    80001c44:	00000613          	li	a2,0
    80001c48:	00a00593          	li	a1,10
    80001c4c:	00090513          	mv	a0,s2
    80001c50:	00002097          	auipc	ra,0x2
    80001c54:	62c080e7          	jalr	1580(ra) # 8000427c <_Z8printIntmhh>
    printString(" i velicina bafera "); printInt(n);
    80001c58:	00007517          	auipc	a0,0x7
    80001c5c:	42050513          	addi	a0,a0,1056 # 80009078 <CONSOLE_STATUS+0x68>
    80001c60:	00002097          	auipc	ra,0x2
    80001c64:	4c0080e7          	jalr	1216(ra) # 80004120 <_Z11printStringPKc>
    80001c68:	00000613          	li	a2,0
    80001c6c:	00a00593          	li	a1,10
    80001c70:	00048513          	mv	a0,s1
    80001c74:	00002097          	auipc	ra,0x2
    80001c78:	608080e7          	jalr	1544(ra) # 8000427c <_Z8printIntmhh>
    printString(".\n");
    80001c7c:	00007517          	auipc	a0,0x7
    80001c80:	41450513          	addi	a0,a0,1044 # 80009090 <CONSOLE_STATUS+0x80>
    80001c84:	00002097          	auipc	ra,0x2
    80001c88:	49c080e7          	jalr	1180(ra) # 80004120 <_Z11printStringPKc>
    if(threadNum > n) {
    80001c8c:	0324c463          	blt	s1,s2,80001cb4 <_Z22producerConsumer_C_APIv+0x110>
    } else if (threadNum < 1) {
    80001c90:	03205c63          	blez	s2,80001cc8 <_Z22producerConsumer_C_APIv+0x124>
    Buffer *buffer = new Buffer(n);
    80001c94:	03800513          	li	a0,56
    80001c98:	00003097          	auipc	ra,0x3
    80001c9c:	16c080e7          	jalr	364(ra) # 80004e04 <_Znwm>
    80001ca0:	00050a13          	mv	s4,a0
    80001ca4:	00048593          	mv	a1,s1
    80001ca8:	00005097          	auipc	ra,0x5
    80001cac:	b28080e7          	jalr	-1240(ra) # 800067d0 <_ZN6BufferC1Ei>
    80001cb0:	0300006f          	j	80001ce0 <_Z22producerConsumer_C_APIv+0x13c>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80001cb4:	00007517          	auipc	a0,0x7
    80001cb8:	3e450513          	addi	a0,a0,996 # 80009098 <CONSOLE_STATUS+0x88>
    80001cbc:	00002097          	auipc	ra,0x2
    80001cc0:	464080e7          	jalr	1124(ra) # 80004120 <_Z11printStringPKc>
        return;
    80001cc4:	0140006f          	j	80001cd8 <_Z22producerConsumer_C_APIv+0x134>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80001cc8:	00007517          	auipc	a0,0x7
    80001ccc:	41050513          	addi	a0,a0,1040 # 800090d8 <CONSOLE_STATUS+0xc8>
    80001cd0:	00002097          	auipc	ra,0x2
    80001cd4:	450080e7          	jalr	1104(ra) # 80004120 <_Z11printStringPKc>
        return;
    80001cd8:	000b0113          	mv	sp,s6
    80001cdc:	1500006f          	j	80001e2c <_Z22producerConsumer_C_APIv+0x288>
    sem_open(&waitForAll, 0);
    80001ce0:	00000593          	li	a1,0
    80001ce4:	0000a517          	auipc	a0,0xa
    80001ce8:	f1450513          	addi	a0,a0,-236 # 8000bbf8 <_ZL10waitForAll>
    80001cec:	00000097          	auipc	ra,0x0
    80001cf0:	a30080e7          	jalr	-1488(ra) # 8000171c <_Z8sem_openPP4_semj>
    thread_t threads[threadNum];
    80001cf4:	00391793          	slli	a5,s2,0x3
    80001cf8:	00f78793          	addi	a5,a5,15
    80001cfc:	ff07f793          	andi	a5,a5,-16
    80001d00:	40f10133          	sub	sp,sp,a5
    80001d04:	00010a93          	mv	s5,sp
    struct thread_data data[threadNum + 1];
    80001d08:	0019071b          	addiw	a4,s2,1
    80001d0c:	00171793          	slli	a5,a4,0x1
    80001d10:	00e787b3          	add	a5,a5,a4
    80001d14:	00379793          	slli	a5,a5,0x3
    80001d18:	00f78793          	addi	a5,a5,15
    80001d1c:	ff07f793          	andi	a5,a5,-16
    80001d20:	40f10133          	sub	sp,sp,a5
    80001d24:	00010993          	mv	s3,sp
    data[threadNum].id = threadNum;
    80001d28:	00191793          	slli	a5,s2,0x1
    80001d2c:	012787b3          	add	a5,a5,s2
    80001d30:	00379793          	slli	a5,a5,0x3
    80001d34:	00f987b3          	add	a5,s3,a5
    80001d38:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    80001d3c:	0147b423          	sd	s4,8(a5)
    data[threadNum].wait = waitForAll;
    80001d40:	0000a717          	auipc	a4,0xa
    80001d44:	eb873703          	ld	a4,-328(a4) # 8000bbf8 <_ZL10waitForAll>
    80001d48:	00e7b823          	sd	a4,16(a5)
    thread_create(&consumerThread, consumer, data + threadNum);
    80001d4c:	00078613          	mv	a2,a5
    80001d50:	00000597          	auipc	a1,0x0
    80001d54:	d7458593          	addi	a1,a1,-652 # 80001ac4 <_ZL8consumerPv>
    80001d58:	f9840513          	addi	a0,s0,-104
    80001d5c:	00000097          	auipc	ra,0x0
    80001d60:	8f8080e7          	jalr	-1800(ra) # 80001654 <_Z13thread_createPP7_threadPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    80001d64:	00000493          	li	s1,0
    80001d68:	0280006f          	j	80001d90 <_Z22producerConsumer_C_APIv+0x1ec>
        thread_create(threads + i,
    80001d6c:	00000597          	auipc	a1,0x0
    80001d70:	c1458593          	addi	a1,a1,-1004 # 80001980 <_ZL16producerKeyboardPv>
                      data + i);
    80001d74:	00179613          	slli	a2,a5,0x1
    80001d78:	00f60633          	add	a2,a2,a5
    80001d7c:	00361613          	slli	a2,a2,0x3
        thread_create(threads + i,
    80001d80:	00c98633          	add	a2,s3,a2
    80001d84:	00000097          	auipc	ra,0x0
    80001d88:	8d0080e7          	jalr	-1840(ra) # 80001654 <_Z13thread_createPP7_threadPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    80001d8c:	0014849b          	addiw	s1,s1,1
    80001d90:	0524d263          	bge	s1,s2,80001dd4 <_Z22producerConsumer_C_APIv+0x230>
        data[i].id = i;
    80001d94:	00149793          	slli	a5,s1,0x1
    80001d98:	009787b3          	add	a5,a5,s1
    80001d9c:	00379793          	slli	a5,a5,0x3
    80001da0:	00f987b3          	add	a5,s3,a5
    80001da4:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    80001da8:	0147b423          	sd	s4,8(a5)
        data[i].wait = waitForAll;
    80001dac:	0000a717          	auipc	a4,0xa
    80001db0:	e4c73703          	ld	a4,-436(a4) # 8000bbf8 <_ZL10waitForAll>
    80001db4:	00e7b823          	sd	a4,16(a5)
        thread_create(threads + i,
    80001db8:	00048793          	mv	a5,s1
    80001dbc:	00349513          	slli	a0,s1,0x3
    80001dc0:	00aa8533          	add	a0,s5,a0
    80001dc4:	fa9054e3          	blez	s1,80001d6c <_Z22producerConsumer_C_APIv+0x1c8>
    80001dc8:	00000597          	auipc	a1,0x0
    80001dcc:	c6858593          	addi	a1,a1,-920 # 80001a30 <_ZL8producerPv>
    80001dd0:	fa5ff06f          	j	80001d74 <_Z22producerConsumer_C_APIv+0x1d0>
    thread_dispatch();
    80001dd4:	00000097          	auipc	ra,0x0
    80001dd8:	924080e7          	jalr	-1756(ra) # 800016f8 <_Z15thread_dispatchv>
    for (int i = 0; i <= threadNum; i++) {
    80001ddc:	00000493          	li	s1,0
    80001de0:	00994e63          	blt	s2,s1,80001dfc <_Z22producerConsumer_C_APIv+0x258>
        sem_wait(waitForAll);
    80001de4:	0000a517          	auipc	a0,0xa
    80001de8:	e1453503          	ld	a0,-492(a0) # 8000bbf8 <_ZL10waitForAll>
    80001dec:	00000097          	auipc	ra,0x0
    80001df0:	9b0080e7          	jalr	-1616(ra) # 8000179c <_Z8sem_waitP4_sem>
    for (int i = 0; i <= threadNum; i++) {
    80001df4:	0014849b          	addiw	s1,s1,1
    80001df8:	fe9ff06f          	j	80001de0 <_Z22producerConsumer_C_APIv+0x23c>
    sem_close(waitForAll);
    80001dfc:	0000a517          	auipc	a0,0xa
    80001e00:	dfc53503          	ld	a0,-516(a0) # 8000bbf8 <_ZL10waitForAll>
    80001e04:	00000097          	auipc	ra,0x0
    80001e08:	95c080e7          	jalr	-1700(ra) # 80001760 <_Z9sem_closeP4_sem>
    delete buffer;
    80001e0c:	000a0e63          	beqz	s4,80001e28 <_Z22producerConsumer_C_APIv+0x284>
    80001e10:	000a0513          	mv	a0,s4
    80001e14:	00005097          	auipc	ra,0x5
    80001e18:	bfc080e7          	jalr	-1028(ra) # 80006a10 <_ZN6BufferD1Ev>
    80001e1c:	000a0513          	mv	a0,s4
    80001e20:	00003097          	auipc	ra,0x3
    80001e24:	044080e7          	jalr	68(ra) # 80004e64 <_ZdlPv>
    80001e28:	000b0113          	mv	sp,s6

}
    80001e2c:	f9040113          	addi	sp,s0,-112
    80001e30:	06813083          	ld	ra,104(sp)
    80001e34:	06013403          	ld	s0,96(sp)
    80001e38:	05813483          	ld	s1,88(sp)
    80001e3c:	05013903          	ld	s2,80(sp)
    80001e40:	04813983          	ld	s3,72(sp)
    80001e44:	04013a03          	ld	s4,64(sp)
    80001e48:	03813a83          	ld	s5,56(sp)
    80001e4c:	03013b03          	ld	s6,48(sp)
    80001e50:	07010113          	addi	sp,sp,112
    80001e54:	00008067          	ret
    80001e58:	00050493          	mv	s1,a0
    Buffer *buffer = new Buffer(n);
    80001e5c:	000a0513          	mv	a0,s4
    80001e60:	00003097          	auipc	ra,0x3
    80001e64:	004080e7          	jalr	4(ra) # 80004e64 <_ZdlPv>
    80001e68:	00048513          	mv	a0,s1
    80001e6c:	0000b097          	auipc	ra,0xb
    80001e70:	00c080e7          	jalr	12(ra) # 8000ce78 <_Unwind_Resume>

0000000080001e74 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80001e74:	fe010113          	addi	sp,sp,-32
    80001e78:	00113c23          	sd	ra,24(sp)
    80001e7c:	00813823          	sd	s0,16(sp)
    80001e80:	00913423          	sd	s1,8(sp)
    80001e84:	01213023          	sd	s2,0(sp)
    80001e88:	02010413          	addi	s0,sp,32
    80001e8c:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80001e90:	00100793          	li	a5,1
    80001e94:	02a7f863          	bgeu	a5,a0,80001ec4 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80001e98:	00a00793          	li	a5,10
    80001e9c:	02f577b3          	remu	a5,a0,a5
    80001ea0:	02078e63          	beqz	a5,80001edc <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80001ea4:	fff48513          	addi	a0,s1,-1
    80001ea8:	00000097          	auipc	ra,0x0
    80001eac:	fcc080e7          	jalr	-52(ra) # 80001e74 <_ZL9fibonaccim>
    80001eb0:	00050913          	mv	s2,a0
    80001eb4:	ffe48513          	addi	a0,s1,-2
    80001eb8:	00000097          	auipc	ra,0x0
    80001ebc:	fbc080e7          	jalr	-68(ra) # 80001e74 <_ZL9fibonaccim>
    80001ec0:	00a90533          	add	a0,s2,a0
}
    80001ec4:	01813083          	ld	ra,24(sp)
    80001ec8:	01013403          	ld	s0,16(sp)
    80001ecc:	00813483          	ld	s1,8(sp)
    80001ed0:	00013903          	ld	s2,0(sp)
    80001ed4:	02010113          	addi	sp,sp,32
    80001ed8:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80001edc:	00000097          	auipc	ra,0x0
    80001ee0:	81c080e7          	jalr	-2020(ra) # 800016f8 <_Z15thread_dispatchv>
    80001ee4:	fc1ff06f          	j	80001ea4 <_ZL9fibonaccim+0x30>

0000000080001ee8 <_ZN7WorkerA11workerBodyAEPv>:
    void run() override {
        workerBodyD(nullptr);
    }
};

void WorkerA::workerBodyA(void *arg) {
    80001ee8:	fe010113          	addi	sp,sp,-32
    80001eec:	00113c23          	sd	ra,24(sp)
    80001ef0:	00813823          	sd	s0,16(sp)
    80001ef4:	00913423          	sd	s1,8(sp)
    80001ef8:	01213023          	sd	s2,0(sp)
    80001efc:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80001f00:	00000913          	li	s2,0
    80001f04:	0380006f          	j	80001f3c <_ZN7WorkerA11workerBodyAEPv+0x54>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80001f08:	fffff097          	auipc	ra,0xfffff
    80001f0c:	7f0080e7          	jalr	2032(ra) # 800016f8 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80001f10:	00148493          	addi	s1,s1,1
    80001f14:	000027b7          	lui	a5,0x2
    80001f18:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80001f1c:	0097ee63          	bltu	a5,s1,80001f38 <_ZN7WorkerA11workerBodyAEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80001f20:	00000713          	li	a4,0
    80001f24:	000077b7          	lui	a5,0x7
    80001f28:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80001f2c:	fce7eee3          	bltu	a5,a4,80001f08 <_ZN7WorkerA11workerBodyAEPv+0x20>
    80001f30:	00170713          	addi	a4,a4,1
    80001f34:	ff1ff06f          	j	80001f24 <_ZN7WorkerA11workerBodyAEPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80001f38:	00190913          	addi	s2,s2,1
    80001f3c:	00900793          	li	a5,9
    80001f40:	0527e063          	bltu	a5,s2,80001f80 <_ZN7WorkerA11workerBodyAEPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80001f44:	00007517          	auipc	a0,0x7
    80001f48:	1c450513          	addi	a0,a0,452 # 80009108 <CONSOLE_STATUS+0xf8>
    80001f4c:	00002097          	auipc	ra,0x2
    80001f50:	1d4080e7          	jalr	468(ra) # 80004120 <_Z11printStringPKc>
    80001f54:	00000613          	li	a2,0
    80001f58:	00a00593          	li	a1,10
    80001f5c:	00090513          	mv	a0,s2
    80001f60:	00002097          	auipc	ra,0x2
    80001f64:	31c080e7          	jalr	796(ra) # 8000427c <_Z8printIntmhh>
    80001f68:	00007517          	auipc	a0,0x7
    80001f6c:	3f050513          	addi	a0,a0,1008 # 80009358 <CONSOLE_STATUS+0x348>
    80001f70:	00002097          	auipc	ra,0x2
    80001f74:	1b0080e7          	jalr	432(ra) # 80004120 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80001f78:	00000493          	li	s1,0
    80001f7c:	f99ff06f          	j	80001f14 <_ZN7WorkerA11workerBodyAEPv+0x2c>
        }
    }
    printString("A finished!\n");
    80001f80:	00007517          	auipc	a0,0x7
    80001f84:	19050513          	addi	a0,a0,400 # 80009110 <CONSOLE_STATUS+0x100>
    80001f88:	00002097          	auipc	ra,0x2
    80001f8c:	198080e7          	jalr	408(ra) # 80004120 <_Z11printStringPKc>
    finishedA = true;
    80001f90:	00100793          	li	a5,1
    80001f94:	0000a717          	auipc	a4,0xa
    80001f98:	c6f70623          	sb	a5,-916(a4) # 8000bc00 <_ZL9finishedA>
}
    80001f9c:	01813083          	ld	ra,24(sp)
    80001fa0:	01013403          	ld	s0,16(sp)
    80001fa4:	00813483          	ld	s1,8(sp)
    80001fa8:	00013903          	ld	s2,0(sp)
    80001fac:	02010113          	addi	sp,sp,32
    80001fb0:	00008067          	ret

0000000080001fb4 <_ZN7WorkerB11workerBodyBEPv>:

void WorkerB::workerBodyB(void *arg) {
    80001fb4:	fe010113          	addi	sp,sp,-32
    80001fb8:	00113c23          	sd	ra,24(sp)
    80001fbc:	00813823          	sd	s0,16(sp)
    80001fc0:	00913423          	sd	s1,8(sp)
    80001fc4:	01213023          	sd	s2,0(sp)
    80001fc8:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80001fcc:	00000913          	li	s2,0
    80001fd0:	0380006f          	j	80002008 <_ZN7WorkerB11workerBodyBEPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80001fd4:	fffff097          	auipc	ra,0xfffff
    80001fd8:	724080e7          	jalr	1828(ra) # 800016f8 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80001fdc:	00148493          	addi	s1,s1,1
    80001fe0:	000027b7          	lui	a5,0x2
    80001fe4:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80001fe8:	0097ee63          	bltu	a5,s1,80002004 <_ZN7WorkerB11workerBodyBEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80001fec:	00000713          	li	a4,0
    80001ff0:	000077b7          	lui	a5,0x7
    80001ff4:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80001ff8:	fce7eee3          	bltu	a5,a4,80001fd4 <_ZN7WorkerB11workerBodyBEPv+0x20>
    80001ffc:	00170713          	addi	a4,a4,1
    80002000:	ff1ff06f          	j	80001ff0 <_ZN7WorkerB11workerBodyBEPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80002004:	00190913          	addi	s2,s2,1
    80002008:	00f00793          	li	a5,15
    8000200c:	0527e063          	bltu	a5,s2,8000204c <_ZN7WorkerB11workerBodyBEPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80002010:	00007517          	auipc	a0,0x7
    80002014:	11050513          	addi	a0,a0,272 # 80009120 <CONSOLE_STATUS+0x110>
    80002018:	00002097          	auipc	ra,0x2
    8000201c:	108080e7          	jalr	264(ra) # 80004120 <_Z11printStringPKc>
    80002020:	00000613          	li	a2,0
    80002024:	00a00593          	li	a1,10
    80002028:	00090513          	mv	a0,s2
    8000202c:	00002097          	auipc	ra,0x2
    80002030:	250080e7          	jalr	592(ra) # 8000427c <_Z8printIntmhh>
    80002034:	00007517          	auipc	a0,0x7
    80002038:	32450513          	addi	a0,a0,804 # 80009358 <CONSOLE_STATUS+0x348>
    8000203c:	00002097          	auipc	ra,0x2
    80002040:	0e4080e7          	jalr	228(ra) # 80004120 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80002044:	00000493          	li	s1,0
    80002048:	f99ff06f          	j	80001fe0 <_ZN7WorkerB11workerBodyBEPv+0x2c>
        }
    }
    printString("B finished!\n");
    8000204c:	00007517          	auipc	a0,0x7
    80002050:	0dc50513          	addi	a0,a0,220 # 80009128 <CONSOLE_STATUS+0x118>
    80002054:	00002097          	auipc	ra,0x2
    80002058:	0cc080e7          	jalr	204(ra) # 80004120 <_Z11printStringPKc>
    finishedB = true;
    8000205c:	00100793          	li	a5,1
    80002060:	0000a717          	auipc	a4,0xa
    80002064:	baf700a3          	sb	a5,-1119(a4) # 8000bc01 <_ZL9finishedB>
    thread_dispatch();
    80002068:	fffff097          	auipc	ra,0xfffff
    8000206c:	690080e7          	jalr	1680(ra) # 800016f8 <_Z15thread_dispatchv>
}
    80002070:	01813083          	ld	ra,24(sp)
    80002074:	01013403          	ld	s0,16(sp)
    80002078:	00813483          	ld	s1,8(sp)
    8000207c:	00013903          	ld	s2,0(sp)
    80002080:	02010113          	addi	sp,sp,32
    80002084:	00008067          	ret

0000000080002088 <_ZN7WorkerC11workerBodyCEPv>:

void WorkerC::workerBodyC(void *arg) {
    80002088:	fe010113          	addi	sp,sp,-32
    8000208c:	00113c23          	sd	ra,24(sp)
    80002090:	00813823          	sd	s0,16(sp)
    80002094:	00913423          	sd	s1,8(sp)
    80002098:	01213023          	sd	s2,0(sp)
    8000209c:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    800020a0:	00000493          	li	s1,0
    800020a4:	0400006f          	j	800020e4 <_ZN7WorkerC11workerBodyCEPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    800020a8:	00007517          	auipc	a0,0x7
    800020ac:	09050513          	addi	a0,a0,144 # 80009138 <CONSOLE_STATUS+0x128>
    800020b0:	00002097          	auipc	ra,0x2
    800020b4:	070080e7          	jalr	112(ra) # 80004120 <_Z11printStringPKc>
    800020b8:	00000613          	li	a2,0
    800020bc:	00a00593          	li	a1,10
    800020c0:	00048513          	mv	a0,s1
    800020c4:	00002097          	auipc	ra,0x2
    800020c8:	1b8080e7          	jalr	440(ra) # 8000427c <_Z8printIntmhh>
    800020cc:	00007517          	auipc	a0,0x7
    800020d0:	28c50513          	addi	a0,a0,652 # 80009358 <CONSOLE_STATUS+0x348>
    800020d4:	00002097          	auipc	ra,0x2
    800020d8:	04c080e7          	jalr	76(ra) # 80004120 <_Z11printStringPKc>
    for (; i < 3; i++) {
    800020dc:	0014849b          	addiw	s1,s1,1
    800020e0:	0ff4f493          	andi	s1,s1,255
    800020e4:	00200793          	li	a5,2
    800020e8:	fc97f0e3          	bgeu	a5,s1,800020a8 <_ZN7WorkerC11workerBodyCEPv+0x20>
    }

    printString("C: dispatch\n");
    800020ec:	00007517          	auipc	a0,0x7
    800020f0:	05450513          	addi	a0,a0,84 # 80009140 <CONSOLE_STATUS+0x130>
    800020f4:	00002097          	auipc	ra,0x2
    800020f8:	02c080e7          	jalr	44(ra) # 80004120 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    800020fc:	00700313          	li	t1,7
    thread_dispatch();
    80002100:	fffff097          	auipc	ra,0xfffff
    80002104:	5f8080e7          	jalr	1528(ra) # 800016f8 <_Z15thread_dispatchv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80002108:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    8000210c:	00007517          	auipc	a0,0x7
    80002110:	04450513          	addi	a0,a0,68 # 80009150 <CONSOLE_STATUS+0x140>
    80002114:	00002097          	auipc	ra,0x2
    80002118:	00c080e7          	jalr	12(ra) # 80004120 <_Z11printStringPKc>
    8000211c:	00000613          	li	a2,0
    80002120:	00a00593          	li	a1,10
    80002124:	00090513          	mv	a0,s2
    80002128:	00002097          	auipc	ra,0x2
    8000212c:	154080e7          	jalr	340(ra) # 8000427c <_Z8printIntmhh>
    80002130:	00007517          	auipc	a0,0x7
    80002134:	22850513          	addi	a0,a0,552 # 80009358 <CONSOLE_STATUS+0x348>
    80002138:	00002097          	auipc	ra,0x2
    8000213c:	fe8080e7          	jalr	-24(ra) # 80004120 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    80002140:	00c00513          	li	a0,12
    80002144:	00000097          	auipc	ra,0x0
    80002148:	d30080e7          	jalr	-720(ra) # 80001e74 <_ZL9fibonaccim>
    8000214c:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80002150:	00007517          	auipc	a0,0x7
    80002154:	00850513          	addi	a0,a0,8 # 80009158 <CONSOLE_STATUS+0x148>
    80002158:	00002097          	auipc	ra,0x2
    8000215c:	fc8080e7          	jalr	-56(ra) # 80004120 <_Z11printStringPKc>
    80002160:	00000613          	li	a2,0
    80002164:	00a00593          	li	a1,10
    80002168:	00090513          	mv	a0,s2
    8000216c:	00002097          	auipc	ra,0x2
    80002170:	110080e7          	jalr	272(ra) # 8000427c <_Z8printIntmhh>
    80002174:	00007517          	auipc	a0,0x7
    80002178:	1e450513          	addi	a0,a0,484 # 80009358 <CONSOLE_STATUS+0x348>
    8000217c:	00002097          	auipc	ra,0x2
    80002180:	fa4080e7          	jalr	-92(ra) # 80004120 <_Z11printStringPKc>
    80002184:	0400006f          	j	800021c4 <_ZN7WorkerC11workerBodyCEPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80002188:	00007517          	auipc	a0,0x7
    8000218c:	fb050513          	addi	a0,a0,-80 # 80009138 <CONSOLE_STATUS+0x128>
    80002190:	00002097          	auipc	ra,0x2
    80002194:	f90080e7          	jalr	-112(ra) # 80004120 <_Z11printStringPKc>
    80002198:	00000613          	li	a2,0
    8000219c:	00a00593          	li	a1,10
    800021a0:	00048513          	mv	a0,s1
    800021a4:	00002097          	auipc	ra,0x2
    800021a8:	0d8080e7          	jalr	216(ra) # 8000427c <_Z8printIntmhh>
    800021ac:	00007517          	auipc	a0,0x7
    800021b0:	1ac50513          	addi	a0,a0,428 # 80009358 <CONSOLE_STATUS+0x348>
    800021b4:	00002097          	auipc	ra,0x2
    800021b8:	f6c080e7          	jalr	-148(ra) # 80004120 <_Z11printStringPKc>
    for (; i < 6; i++) {
    800021bc:	0014849b          	addiw	s1,s1,1
    800021c0:	0ff4f493          	andi	s1,s1,255
    800021c4:	00500793          	li	a5,5
    800021c8:	fc97f0e3          	bgeu	a5,s1,80002188 <_ZN7WorkerC11workerBodyCEPv+0x100>
    }

    printString("A finished!\n");
    800021cc:	00007517          	auipc	a0,0x7
    800021d0:	f4450513          	addi	a0,a0,-188 # 80009110 <CONSOLE_STATUS+0x100>
    800021d4:	00002097          	auipc	ra,0x2
    800021d8:	f4c080e7          	jalr	-180(ra) # 80004120 <_Z11printStringPKc>
    finishedC = true;
    800021dc:	00100793          	li	a5,1
    800021e0:	0000a717          	auipc	a4,0xa
    800021e4:	a2f70123          	sb	a5,-1502(a4) # 8000bc02 <_ZL9finishedC>
    thread_dispatch();
    800021e8:	fffff097          	auipc	ra,0xfffff
    800021ec:	510080e7          	jalr	1296(ra) # 800016f8 <_Z15thread_dispatchv>
}
    800021f0:	01813083          	ld	ra,24(sp)
    800021f4:	01013403          	ld	s0,16(sp)
    800021f8:	00813483          	ld	s1,8(sp)
    800021fc:	00013903          	ld	s2,0(sp)
    80002200:	02010113          	addi	sp,sp,32
    80002204:	00008067          	ret

0000000080002208 <_ZN7WorkerD11workerBodyDEPv>:

void WorkerD::workerBodyD(void* arg) {
    80002208:	fe010113          	addi	sp,sp,-32
    8000220c:	00113c23          	sd	ra,24(sp)
    80002210:	00813823          	sd	s0,16(sp)
    80002214:	00913423          	sd	s1,8(sp)
    80002218:	01213023          	sd	s2,0(sp)
    8000221c:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80002220:	00a00493          	li	s1,10
    80002224:	0400006f          	j	80002264 <_ZN7WorkerD11workerBodyDEPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80002228:	00007517          	auipc	a0,0x7
    8000222c:	f4050513          	addi	a0,a0,-192 # 80009168 <CONSOLE_STATUS+0x158>
    80002230:	00002097          	auipc	ra,0x2
    80002234:	ef0080e7          	jalr	-272(ra) # 80004120 <_Z11printStringPKc>
    80002238:	00000613          	li	a2,0
    8000223c:	00a00593          	li	a1,10
    80002240:	00048513          	mv	a0,s1
    80002244:	00002097          	auipc	ra,0x2
    80002248:	038080e7          	jalr	56(ra) # 8000427c <_Z8printIntmhh>
    8000224c:	00007517          	auipc	a0,0x7
    80002250:	10c50513          	addi	a0,a0,268 # 80009358 <CONSOLE_STATUS+0x348>
    80002254:	00002097          	auipc	ra,0x2
    80002258:	ecc080e7          	jalr	-308(ra) # 80004120 <_Z11printStringPKc>
    for (; i < 13; i++) {
    8000225c:	0014849b          	addiw	s1,s1,1
    80002260:	0ff4f493          	andi	s1,s1,255
    80002264:	00c00793          	li	a5,12
    80002268:	fc97f0e3          	bgeu	a5,s1,80002228 <_ZN7WorkerD11workerBodyDEPv+0x20>
    }

    printString("D: dispatch\n");
    8000226c:	00007517          	auipc	a0,0x7
    80002270:	f0450513          	addi	a0,a0,-252 # 80009170 <CONSOLE_STATUS+0x160>
    80002274:	00002097          	auipc	ra,0x2
    80002278:	eac080e7          	jalr	-340(ra) # 80004120 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    8000227c:	00500313          	li	t1,5
    thread_dispatch();
    80002280:	fffff097          	auipc	ra,0xfffff
    80002284:	478080e7          	jalr	1144(ra) # 800016f8 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80002288:	01000513          	li	a0,16
    8000228c:	00000097          	auipc	ra,0x0
    80002290:	be8080e7          	jalr	-1048(ra) # 80001e74 <_ZL9fibonaccim>
    80002294:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80002298:	00007517          	auipc	a0,0x7
    8000229c:	ee850513          	addi	a0,a0,-280 # 80009180 <CONSOLE_STATUS+0x170>
    800022a0:	00002097          	auipc	ra,0x2
    800022a4:	e80080e7          	jalr	-384(ra) # 80004120 <_Z11printStringPKc>
    800022a8:	00000613          	li	a2,0
    800022ac:	00a00593          	li	a1,10
    800022b0:	00090513          	mv	a0,s2
    800022b4:	00002097          	auipc	ra,0x2
    800022b8:	fc8080e7          	jalr	-56(ra) # 8000427c <_Z8printIntmhh>
    800022bc:	00007517          	auipc	a0,0x7
    800022c0:	09c50513          	addi	a0,a0,156 # 80009358 <CONSOLE_STATUS+0x348>
    800022c4:	00002097          	auipc	ra,0x2
    800022c8:	e5c080e7          	jalr	-420(ra) # 80004120 <_Z11printStringPKc>
    800022cc:	0400006f          	j	8000230c <_ZN7WorkerD11workerBodyDEPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800022d0:	00007517          	auipc	a0,0x7
    800022d4:	e9850513          	addi	a0,a0,-360 # 80009168 <CONSOLE_STATUS+0x158>
    800022d8:	00002097          	auipc	ra,0x2
    800022dc:	e48080e7          	jalr	-440(ra) # 80004120 <_Z11printStringPKc>
    800022e0:	00000613          	li	a2,0
    800022e4:	00a00593          	li	a1,10
    800022e8:	00048513          	mv	a0,s1
    800022ec:	00002097          	auipc	ra,0x2
    800022f0:	f90080e7          	jalr	-112(ra) # 8000427c <_Z8printIntmhh>
    800022f4:	00007517          	auipc	a0,0x7
    800022f8:	06450513          	addi	a0,a0,100 # 80009358 <CONSOLE_STATUS+0x348>
    800022fc:	00002097          	auipc	ra,0x2
    80002300:	e24080e7          	jalr	-476(ra) # 80004120 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80002304:	0014849b          	addiw	s1,s1,1
    80002308:	0ff4f493          	andi	s1,s1,255
    8000230c:	00f00793          	li	a5,15
    80002310:	fc97f0e3          	bgeu	a5,s1,800022d0 <_ZN7WorkerD11workerBodyDEPv+0xc8>
    }

    printString("D finished!\n");
    80002314:	00007517          	auipc	a0,0x7
    80002318:	e7c50513          	addi	a0,a0,-388 # 80009190 <CONSOLE_STATUS+0x180>
    8000231c:	00002097          	auipc	ra,0x2
    80002320:	e04080e7          	jalr	-508(ra) # 80004120 <_Z11printStringPKc>
    finishedD = true;
    80002324:	00100793          	li	a5,1
    80002328:	0000a717          	auipc	a4,0xa
    8000232c:	8cf70da3          	sb	a5,-1829(a4) # 8000bc03 <_ZL9finishedD>
    thread_dispatch();
    80002330:	fffff097          	auipc	ra,0xfffff
    80002334:	3c8080e7          	jalr	968(ra) # 800016f8 <_Z15thread_dispatchv>
}
    80002338:	01813083          	ld	ra,24(sp)
    8000233c:	01013403          	ld	s0,16(sp)
    80002340:	00813483          	ld	s1,8(sp)
    80002344:	00013903          	ld	s2,0(sp)
    80002348:	02010113          	addi	sp,sp,32
    8000234c:	00008067          	ret

0000000080002350 <_Z20Threads_CPP_API_testv>:


void Threads_CPP_API_test() {
    80002350:	fc010113          	addi	sp,sp,-64
    80002354:	02113c23          	sd	ra,56(sp)
    80002358:	02813823          	sd	s0,48(sp)
    8000235c:	02913423          	sd	s1,40(sp)
    80002360:	03213023          	sd	s2,32(sp)
    80002364:	04010413          	addi	s0,sp,64
    Thread* threads[4];

    threads[0] = new WorkerA();
    80002368:	02000513          	li	a0,32
    8000236c:	00003097          	auipc	ra,0x3
    80002370:	a98080e7          	jalr	-1384(ra) # 80004e04 <_Znwm>
    80002374:	00050493          	mv	s1,a0
    WorkerA():Thread() {}
    80002378:	00005097          	auipc	ra,0x5
    8000237c:	af4080e7          	jalr	-1292(ra) # 80006e6c <_ZN6ThreadC1Ev>
    80002380:	00009797          	auipc	a5,0x9
    80002384:	57878793          	addi	a5,a5,1400 # 8000b8f8 <_ZTV7WorkerA+0x10>
    80002388:	00f4b023          	sd	a5,0(s1)
    threads[0] = new WorkerA();
    8000238c:	fc943023          	sd	s1,-64(s0)
    printString("ThreadA created\n");
    80002390:	00007517          	auipc	a0,0x7
    80002394:	e1050513          	addi	a0,a0,-496 # 800091a0 <CONSOLE_STATUS+0x190>
    80002398:	00002097          	auipc	ra,0x2
    8000239c:	d88080e7          	jalr	-632(ra) # 80004120 <_Z11printStringPKc>

    threads[1] = new WorkerB();
    800023a0:	02000513          	li	a0,32
    800023a4:	00003097          	auipc	ra,0x3
    800023a8:	a60080e7          	jalr	-1440(ra) # 80004e04 <_Znwm>
    800023ac:	00050493          	mv	s1,a0
    WorkerB():Thread() {}
    800023b0:	00005097          	auipc	ra,0x5
    800023b4:	abc080e7          	jalr	-1348(ra) # 80006e6c <_ZN6ThreadC1Ev>
    800023b8:	00009797          	auipc	a5,0x9
    800023bc:	56878793          	addi	a5,a5,1384 # 8000b920 <_ZTV7WorkerB+0x10>
    800023c0:	00f4b023          	sd	a5,0(s1)
    threads[1] = new WorkerB();
    800023c4:	fc943423          	sd	s1,-56(s0)
    printString("ThreadB created\n");
    800023c8:	00007517          	auipc	a0,0x7
    800023cc:	df050513          	addi	a0,a0,-528 # 800091b8 <CONSOLE_STATUS+0x1a8>
    800023d0:	00002097          	auipc	ra,0x2
    800023d4:	d50080e7          	jalr	-688(ra) # 80004120 <_Z11printStringPKc>

    threads[2] = new WorkerC();
    800023d8:	02000513          	li	a0,32
    800023dc:	00003097          	auipc	ra,0x3
    800023e0:	a28080e7          	jalr	-1496(ra) # 80004e04 <_Znwm>
    800023e4:	00050493          	mv	s1,a0
    WorkerC():Thread() {}
    800023e8:	00005097          	auipc	ra,0x5
    800023ec:	a84080e7          	jalr	-1404(ra) # 80006e6c <_ZN6ThreadC1Ev>
    800023f0:	00009797          	auipc	a5,0x9
    800023f4:	55878793          	addi	a5,a5,1368 # 8000b948 <_ZTV7WorkerC+0x10>
    800023f8:	00f4b023          	sd	a5,0(s1)
    threads[2] = new WorkerC();
    800023fc:	fc943823          	sd	s1,-48(s0)
    printString("ThreadC created\n");
    80002400:	00007517          	auipc	a0,0x7
    80002404:	dd050513          	addi	a0,a0,-560 # 800091d0 <CONSOLE_STATUS+0x1c0>
    80002408:	00002097          	auipc	ra,0x2
    8000240c:	d18080e7          	jalr	-744(ra) # 80004120 <_Z11printStringPKc>

    threads[3] = new WorkerD();
    80002410:	02000513          	li	a0,32
    80002414:	00003097          	auipc	ra,0x3
    80002418:	9f0080e7          	jalr	-1552(ra) # 80004e04 <_Znwm>
    8000241c:	00050493          	mv	s1,a0
    WorkerD():Thread() {}
    80002420:	00005097          	auipc	ra,0x5
    80002424:	a4c080e7          	jalr	-1460(ra) # 80006e6c <_ZN6ThreadC1Ev>
    80002428:	00009797          	auipc	a5,0x9
    8000242c:	54878793          	addi	a5,a5,1352 # 8000b970 <_ZTV7WorkerD+0x10>
    80002430:	00f4b023          	sd	a5,0(s1)
    threads[3] = new WorkerD();
    80002434:	fc943c23          	sd	s1,-40(s0)
    printString("ThreadD created\n");
    80002438:	00007517          	auipc	a0,0x7
    8000243c:	db050513          	addi	a0,a0,-592 # 800091e8 <CONSOLE_STATUS+0x1d8>
    80002440:	00002097          	auipc	ra,0x2
    80002444:	ce0080e7          	jalr	-800(ra) # 80004120 <_Z11printStringPKc>

    for(int i=0; i<4; i++) {
    80002448:	00000493          	li	s1,0
    8000244c:	00300793          	li	a5,3
    80002450:	0297c663          	blt	a5,s1,8000247c <_Z20Threads_CPP_API_testv+0x12c>
        threads[i]->start();
    80002454:	00349793          	slli	a5,s1,0x3
    80002458:	fe040713          	addi	a4,s0,-32
    8000245c:	00f707b3          	add	a5,a4,a5
    80002460:	fe07b503          	ld	a0,-32(a5)
    80002464:	00005097          	auipc	ra,0x5
    80002468:	97c080e7          	jalr	-1668(ra) # 80006de0 <_ZN6Thread5startEv>
    for(int i=0; i<4; i++) {
    8000246c:	0014849b          	addiw	s1,s1,1
    80002470:	fddff06f          	j	8000244c <_Z20Threads_CPP_API_testv+0xfc>
    }

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        Thread::dispatch();
    80002474:	00005097          	auipc	ra,0x5
    80002478:	914080e7          	jalr	-1772(ra) # 80006d88 <_ZN6Thread8dispatchEv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    8000247c:	00009797          	auipc	a5,0x9
    80002480:	7847c783          	lbu	a5,1924(a5) # 8000bc00 <_ZL9finishedA>
    80002484:	fe0788e3          	beqz	a5,80002474 <_Z20Threads_CPP_API_testv+0x124>
    80002488:	00009797          	auipc	a5,0x9
    8000248c:	7797c783          	lbu	a5,1913(a5) # 8000bc01 <_ZL9finishedB>
    80002490:	fe0782e3          	beqz	a5,80002474 <_Z20Threads_CPP_API_testv+0x124>
    80002494:	00009797          	auipc	a5,0x9
    80002498:	76e7c783          	lbu	a5,1902(a5) # 8000bc02 <_ZL9finishedC>
    8000249c:	fc078ce3          	beqz	a5,80002474 <_Z20Threads_CPP_API_testv+0x124>
    800024a0:	00009797          	auipc	a5,0x9
    800024a4:	7637c783          	lbu	a5,1891(a5) # 8000bc03 <_ZL9finishedD>
    800024a8:	fc0786e3          	beqz	a5,80002474 <_Z20Threads_CPP_API_testv+0x124>
    800024ac:	fc040493          	addi	s1,s0,-64
    800024b0:	0080006f          	j	800024b8 <_Z20Threads_CPP_API_testv+0x168>
    }

    for (auto thread: threads) { delete thread; }
    800024b4:	00848493          	addi	s1,s1,8
    800024b8:	fe040793          	addi	a5,s0,-32
    800024bc:	08f48663          	beq	s1,a5,80002548 <_Z20Threads_CPP_API_testv+0x1f8>
    800024c0:	0004b503          	ld	a0,0(s1)
    800024c4:	fe0508e3          	beqz	a0,800024b4 <_Z20Threads_CPP_API_testv+0x164>
    800024c8:	00053783          	ld	a5,0(a0)
    800024cc:	0087b783          	ld	a5,8(a5)
    800024d0:	000780e7          	jalr	a5
    800024d4:	fe1ff06f          	j	800024b4 <_Z20Threads_CPP_API_testv+0x164>
    800024d8:	00050913          	mv	s2,a0
    threads[0] = new WorkerA();
    800024dc:	00048513          	mv	a0,s1
    800024e0:	00003097          	auipc	ra,0x3
    800024e4:	984080e7          	jalr	-1660(ra) # 80004e64 <_ZdlPv>
    800024e8:	00090513          	mv	a0,s2
    800024ec:	0000b097          	auipc	ra,0xb
    800024f0:	98c080e7          	jalr	-1652(ra) # 8000ce78 <_Unwind_Resume>
    800024f4:	00050913          	mv	s2,a0
    threads[1] = new WorkerB();
    800024f8:	00048513          	mv	a0,s1
    800024fc:	00003097          	auipc	ra,0x3
    80002500:	968080e7          	jalr	-1688(ra) # 80004e64 <_ZdlPv>
    80002504:	00090513          	mv	a0,s2
    80002508:	0000b097          	auipc	ra,0xb
    8000250c:	970080e7          	jalr	-1680(ra) # 8000ce78 <_Unwind_Resume>
    80002510:	00050913          	mv	s2,a0
    threads[2] = new WorkerC();
    80002514:	00048513          	mv	a0,s1
    80002518:	00003097          	auipc	ra,0x3
    8000251c:	94c080e7          	jalr	-1716(ra) # 80004e64 <_ZdlPv>
    80002520:	00090513          	mv	a0,s2
    80002524:	0000b097          	auipc	ra,0xb
    80002528:	954080e7          	jalr	-1708(ra) # 8000ce78 <_Unwind_Resume>
    8000252c:	00050913          	mv	s2,a0
    threads[3] = new WorkerD();
    80002530:	00048513          	mv	a0,s1
    80002534:	00003097          	auipc	ra,0x3
    80002538:	930080e7          	jalr	-1744(ra) # 80004e64 <_ZdlPv>
    8000253c:	00090513          	mv	a0,s2
    80002540:	0000b097          	auipc	ra,0xb
    80002544:	938080e7          	jalr	-1736(ra) # 8000ce78 <_Unwind_Resume>
}
    80002548:	03813083          	ld	ra,56(sp)
    8000254c:	03013403          	ld	s0,48(sp)
    80002550:	02813483          	ld	s1,40(sp)
    80002554:	02013903          	ld	s2,32(sp)
    80002558:	04010113          	addi	sp,sp,64
    8000255c:	00008067          	ret

0000000080002560 <_ZN7WorkerAD1Ev>:
class WorkerA: public Thread {
    80002560:	ff010113          	addi	sp,sp,-16
    80002564:	00113423          	sd	ra,8(sp)
    80002568:	00813023          	sd	s0,0(sp)
    8000256c:	01010413          	addi	s0,sp,16
    80002570:	00009797          	auipc	a5,0x9
    80002574:	38878793          	addi	a5,a5,904 # 8000b8f8 <_ZTV7WorkerA+0x10>
    80002578:	00f53023          	sd	a5,0(a0)
    8000257c:	00004097          	auipc	ra,0x4
    80002580:	768080e7          	jalr	1896(ra) # 80006ce4 <_ZN6ThreadD1Ev>
    80002584:	00813083          	ld	ra,8(sp)
    80002588:	00013403          	ld	s0,0(sp)
    8000258c:	01010113          	addi	sp,sp,16
    80002590:	00008067          	ret

0000000080002594 <_ZN7WorkerAD0Ev>:
    80002594:	fe010113          	addi	sp,sp,-32
    80002598:	00113c23          	sd	ra,24(sp)
    8000259c:	00813823          	sd	s0,16(sp)
    800025a0:	00913423          	sd	s1,8(sp)
    800025a4:	02010413          	addi	s0,sp,32
    800025a8:	00050493          	mv	s1,a0
    800025ac:	00009797          	auipc	a5,0x9
    800025b0:	34c78793          	addi	a5,a5,844 # 8000b8f8 <_ZTV7WorkerA+0x10>
    800025b4:	00f53023          	sd	a5,0(a0)
    800025b8:	00004097          	auipc	ra,0x4
    800025bc:	72c080e7          	jalr	1836(ra) # 80006ce4 <_ZN6ThreadD1Ev>
    800025c0:	00048513          	mv	a0,s1
    800025c4:	00003097          	auipc	ra,0x3
    800025c8:	8a0080e7          	jalr	-1888(ra) # 80004e64 <_ZdlPv>
    800025cc:	01813083          	ld	ra,24(sp)
    800025d0:	01013403          	ld	s0,16(sp)
    800025d4:	00813483          	ld	s1,8(sp)
    800025d8:	02010113          	addi	sp,sp,32
    800025dc:	00008067          	ret

00000000800025e0 <_ZN7WorkerBD1Ev>:
class WorkerB: public Thread {
    800025e0:	ff010113          	addi	sp,sp,-16
    800025e4:	00113423          	sd	ra,8(sp)
    800025e8:	00813023          	sd	s0,0(sp)
    800025ec:	01010413          	addi	s0,sp,16
    800025f0:	00009797          	auipc	a5,0x9
    800025f4:	33078793          	addi	a5,a5,816 # 8000b920 <_ZTV7WorkerB+0x10>
    800025f8:	00f53023          	sd	a5,0(a0)
    800025fc:	00004097          	auipc	ra,0x4
    80002600:	6e8080e7          	jalr	1768(ra) # 80006ce4 <_ZN6ThreadD1Ev>
    80002604:	00813083          	ld	ra,8(sp)
    80002608:	00013403          	ld	s0,0(sp)
    8000260c:	01010113          	addi	sp,sp,16
    80002610:	00008067          	ret

0000000080002614 <_ZN7WorkerBD0Ev>:
    80002614:	fe010113          	addi	sp,sp,-32
    80002618:	00113c23          	sd	ra,24(sp)
    8000261c:	00813823          	sd	s0,16(sp)
    80002620:	00913423          	sd	s1,8(sp)
    80002624:	02010413          	addi	s0,sp,32
    80002628:	00050493          	mv	s1,a0
    8000262c:	00009797          	auipc	a5,0x9
    80002630:	2f478793          	addi	a5,a5,756 # 8000b920 <_ZTV7WorkerB+0x10>
    80002634:	00f53023          	sd	a5,0(a0)
    80002638:	00004097          	auipc	ra,0x4
    8000263c:	6ac080e7          	jalr	1708(ra) # 80006ce4 <_ZN6ThreadD1Ev>
    80002640:	00048513          	mv	a0,s1
    80002644:	00003097          	auipc	ra,0x3
    80002648:	820080e7          	jalr	-2016(ra) # 80004e64 <_ZdlPv>
    8000264c:	01813083          	ld	ra,24(sp)
    80002650:	01013403          	ld	s0,16(sp)
    80002654:	00813483          	ld	s1,8(sp)
    80002658:	02010113          	addi	sp,sp,32
    8000265c:	00008067          	ret

0000000080002660 <_ZN7WorkerCD1Ev>:
class WorkerC: public Thread {
    80002660:	ff010113          	addi	sp,sp,-16
    80002664:	00113423          	sd	ra,8(sp)
    80002668:	00813023          	sd	s0,0(sp)
    8000266c:	01010413          	addi	s0,sp,16
    80002670:	00009797          	auipc	a5,0x9
    80002674:	2d878793          	addi	a5,a5,728 # 8000b948 <_ZTV7WorkerC+0x10>
    80002678:	00f53023          	sd	a5,0(a0)
    8000267c:	00004097          	auipc	ra,0x4
    80002680:	668080e7          	jalr	1640(ra) # 80006ce4 <_ZN6ThreadD1Ev>
    80002684:	00813083          	ld	ra,8(sp)
    80002688:	00013403          	ld	s0,0(sp)
    8000268c:	01010113          	addi	sp,sp,16
    80002690:	00008067          	ret

0000000080002694 <_ZN7WorkerCD0Ev>:
    80002694:	fe010113          	addi	sp,sp,-32
    80002698:	00113c23          	sd	ra,24(sp)
    8000269c:	00813823          	sd	s0,16(sp)
    800026a0:	00913423          	sd	s1,8(sp)
    800026a4:	02010413          	addi	s0,sp,32
    800026a8:	00050493          	mv	s1,a0
    800026ac:	00009797          	auipc	a5,0x9
    800026b0:	29c78793          	addi	a5,a5,668 # 8000b948 <_ZTV7WorkerC+0x10>
    800026b4:	00f53023          	sd	a5,0(a0)
    800026b8:	00004097          	auipc	ra,0x4
    800026bc:	62c080e7          	jalr	1580(ra) # 80006ce4 <_ZN6ThreadD1Ev>
    800026c0:	00048513          	mv	a0,s1
    800026c4:	00002097          	auipc	ra,0x2
    800026c8:	7a0080e7          	jalr	1952(ra) # 80004e64 <_ZdlPv>
    800026cc:	01813083          	ld	ra,24(sp)
    800026d0:	01013403          	ld	s0,16(sp)
    800026d4:	00813483          	ld	s1,8(sp)
    800026d8:	02010113          	addi	sp,sp,32
    800026dc:	00008067          	ret

00000000800026e0 <_ZN7WorkerDD1Ev>:
class WorkerD: public Thread {
    800026e0:	ff010113          	addi	sp,sp,-16
    800026e4:	00113423          	sd	ra,8(sp)
    800026e8:	00813023          	sd	s0,0(sp)
    800026ec:	01010413          	addi	s0,sp,16
    800026f0:	00009797          	auipc	a5,0x9
    800026f4:	28078793          	addi	a5,a5,640 # 8000b970 <_ZTV7WorkerD+0x10>
    800026f8:	00f53023          	sd	a5,0(a0)
    800026fc:	00004097          	auipc	ra,0x4
    80002700:	5e8080e7          	jalr	1512(ra) # 80006ce4 <_ZN6ThreadD1Ev>
    80002704:	00813083          	ld	ra,8(sp)
    80002708:	00013403          	ld	s0,0(sp)
    8000270c:	01010113          	addi	sp,sp,16
    80002710:	00008067          	ret

0000000080002714 <_ZN7WorkerDD0Ev>:
    80002714:	fe010113          	addi	sp,sp,-32
    80002718:	00113c23          	sd	ra,24(sp)
    8000271c:	00813823          	sd	s0,16(sp)
    80002720:	00913423          	sd	s1,8(sp)
    80002724:	02010413          	addi	s0,sp,32
    80002728:	00050493          	mv	s1,a0
    8000272c:	00009797          	auipc	a5,0x9
    80002730:	24478793          	addi	a5,a5,580 # 8000b970 <_ZTV7WorkerD+0x10>
    80002734:	00f53023          	sd	a5,0(a0)
    80002738:	00004097          	auipc	ra,0x4
    8000273c:	5ac080e7          	jalr	1452(ra) # 80006ce4 <_ZN6ThreadD1Ev>
    80002740:	00048513          	mv	a0,s1
    80002744:	00002097          	auipc	ra,0x2
    80002748:	720080e7          	jalr	1824(ra) # 80004e64 <_ZdlPv>
    8000274c:	01813083          	ld	ra,24(sp)
    80002750:	01013403          	ld	s0,16(sp)
    80002754:	00813483          	ld	s1,8(sp)
    80002758:	02010113          	addi	sp,sp,32
    8000275c:	00008067          	ret

0000000080002760 <_ZN7WorkerA3runEv>:
    void run() override {
    80002760:	ff010113          	addi	sp,sp,-16
    80002764:	00113423          	sd	ra,8(sp)
    80002768:	00813023          	sd	s0,0(sp)
    8000276c:	01010413          	addi	s0,sp,16
        workerBodyA(nullptr);
    80002770:	00000593          	li	a1,0
    80002774:	fffff097          	auipc	ra,0xfffff
    80002778:	774080e7          	jalr	1908(ra) # 80001ee8 <_ZN7WorkerA11workerBodyAEPv>
    }
    8000277c:	00813083          	ld	ra,8(sp)
    80002780:	00013403          	ld	s0,0(sp)
    80002784:	01010113          	addi	sp,sp,16
    80002788:	00008067          	ret

000000008000278c <_ZN7WorkerB3runEv>:
    void run() override {
    8000278c:	ff010113          	addi	sp,sp,-16
    80002790:	00113423          	sd	ra,8(sp)
    80002794:	00813023          	sd	s0,0(sp)
    80002798:	01010413          	addi	s0,sp,16
        workerBodyB(nullptr);
    8000279c:	00000593          	li	a1,0
    800027a0:	00000097          	auipc	ra,0x0
    800027a4:	814080e7          	jalr	-2028(ra) # 80001fb4 <_ZN7WorkerB11workerBodyBEPv>
    }
    800027a8:	00813083          	ld	ra,8(sp)
    800027ac:	00013403          	ld	s0,0(sp)
    800027b0:	01010113          	addi	sp,sp,16
    800027b4:	00008067          	ret

00000000800027b8 <_ZN7WorkerC3runEv>:
    void run() override {
    800027b8:	ff010113          	addi	sp,sp,-16
    800027bc:	00113423          	sd	ra,8(sp)
    800027c0:	00813023          	sd	s0,0(sp)
    800027c4:	01010413          	addi	s0,sp,16
        workerBodyC(nullptr);
    800027c8:	00000593          	li	a1,0
    800027cc:	00000097          	auipc	ra,0x0
    800027d0:	8bc080e7          	jalr	-1860(ra) # 80002088 <_ZN7WorkerC11workerBodyCEPv>
    }
    800027d4:	00813083          	ld	ra,8(sp)
    800027d8:	00013403          	ld	s0,0(sp)
    800027dc:	01010113          	addi	sp,sp,16
    800027e0:	00008067          	ret

00000000800027e4 <_ZN7WorkerD3runEv>:
    void run() override {
    800027e4:	ff010113          	addi	sp,sp,-16
    800027e8:	00113423          	sd	ra,8(sp)
    800027ec:	00813023          	sd	s0,0(sp)
    800027f0:	01010413          	addi	s0,sp,16
        workerBodyD(nullptr);
    800027f4:	00000593          	li	a1,0
    800027f8:	00000097          	auipc	ra,0x0
    800027fc:	a10080e7          	jalr	-1520(ra) # 80002208 <_ZN7WorkerD11workerBodyDEPv>
    }
    80002800:	00813083          	ld	ra,8(sp)
    80002804:	00013403          	ld	s0,0(sp)
    80002808:	01010113          	addi	sp,sp,16
    8000280c:	00008067          	ret

0000000080002810 <_Z20testConsumerProducerv>:

        td->sem->signal();
    }
};

void testConsumerProducer() {
    80002810:	f8010113          	addi	sp,sp,-128
    80002814:	06113c23          	sd	ra,120(sp)
    80002818:	06813823          	sd	s0,112(sp)
    8000281c:	06913423          	sd	s1,104(sp)
    80002820:	07213023          	sd	s2,96(sp)
    80002824:	05313c23          	sd	s3,88(sp)
    80002828:	05413823          	sd	s4,80(sp)
    8000282c:	05513423          	sd	s5,72(sp)
    80002830:	05613023          	sd	s6,64(sp)
    80002834:	03713c23          	sd	s7,56(sp)
    80002838:	03813823          	sd	s8,48(sp)
    8000283c:	03913423          	sd	s9,40(sp)
    80002840:	08010413          	addi	s0,sp,128
    delete waitForAll;
    for (int i = 0; i < threadNum; i++) {
        delete producers[i];
    }
    delete consumer;
    delete buffer;
    80002844:	00010c13          	mv	s8,sp
    printString("Unesite broj proizvodjaca?\n");
    80002848:	00006517          	auipc	a0,0x6
    8000284c:	7d850513          	addi	a0,a0,2008 # 80009020 <CONSOLE_STATUS+0x10>
    80002850:	00002097          	auipc	ra,0x2
    80002854:	8d0080e7          	jalr	-1840(ra) # 80004120 <_Z11printStringPKc>
    getString(input, 30);
    80002858:	01e00593          	li	a1,30
    8000285c:	f8040493          	addi	s1,s0,-128
    80002860:	00048513          	mv	a0,s1
    80002864:	00002097          	auipc	ra,0x2
    80002868:	934080e7          	jalr	-1740(ra) # 80004198 <_Z9getStringPci>
    threadNum = stringToInt(input);
    8000286c:	00048513          	mv	a0,s1
    80002870:	00002097          	auipc	ra,0x2
    80002874:	9bc080e7          	jalr	-1604(ra) # 8000422c <_Z11stringToIntPKc>
    80002878:	00050993          	mv	s3,a0
    printString("Unesite velicinu bafera?\n");
    8000287c:	00006517          	auipc	a0,0x6
    80002880:	7c450513          	addi	a0,a0,1988 # 80009040 <CONSOLE_STATUS+0x30>
    80002884:	00002097          	auipc	ra,0x2
    80002888:	89c080e7          	jalr	-1892(ra) # 80004120 <_Z11printStringPKc>
    getString(input, 30);
    8000288c:	01e00593          	li	a1,30
    80002890:	00048513          	mv	a0,s1
    80002894:	00002097          	auipc	ra,0x2
    80002898:	904080e7          	jalr	-1788(ra) # 80004198 <_Z9getStringPci>
    n = stringToInt(input);
    8000289c:	00048513          	mv	a0,s1
    800028a0:	00002097          	auipc	ra,0x2
    800028a4:	98c080e7          	jalr	-1652(ra) # 8000422c <_Z11stringToIntPKc>
    800028a8:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca ");
    800028ac:	00006517          	auipc	a0,0x6
    800028b0:	7b450513          	addi	a0,a0,1972 # 80009060 <CONSOLE_STATUS+0x50>
    800028b4:	00002097          	auipc	ra,0x2
    800028b8:	86c080e7          	jalr	-1940(ra) # 80004120 <_Z11printStringPKc>
    printInt(threadNum);
    800028bc:	00000613          	li	a2,0
    800028c0:	00a00593          	li	a1,10
    800028c4:	00098513          	mv	a0,s3
    800028c8:	00002097          	auipc	ra,0x2
    800028cc:	9b4080e7          	jalr	-1612(ra) # 8000427c <_Z8printIntmhh>
    printString(" i velicina bafera ");
    800028d0:	00006517          	auipc	a0,0x6
    800028d4:	7a850513          	addi	a0,a0,1960 # 80009078 <CONSOLE_STATUS+0x68>
    800028d8:	00002097          	auipc	ra,0x2
    800028dc:	848080e7          	jalr	-1976(ra) # 80004120 <_Z11printStringPKc>
    printInt(n);
    800028e0:	00000613          	li	a2,0
    800028e4:	00a00593          	li	a1,10
    800028e8:	00048513          	mv	a0,s1
    800028ec:	00002097          	auipc	ra,0x2
    800028f0:	990080e7          	jalr	-1648(ra) # 8000427c <_Z8printIntmhh>
    printString(".\n");
    800028f4:	00006517          	auipc	a0,0x6
    800028f8:	79c50513          	addi	a0,a0,1948 # 80009090 <CONSOLE_STATUS+0x80>
    800028fc:	00002097          	auipc	ra,0x2
    80002900:	824080e7          	jalr	-2012(ra) # 80004120 <_Z11printStringPKc>
    if (threadNum > n) {
    80002904:	0334c463          	blt	s1,s3,8000292c <_Z20testConsumerProducerv+0x11c>
    } else if (threadNum < 1) {
    80002908:	03305c63          	blez	s3,80002940 <_Z20testConsumerProducerv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    8000290c:	03800513          	li	a0,56
    80002910:	00002097          	auipc	ra,0x2
    80002914:	4f4080e7          	jalr	1268(ra) # 80004e04 <_Znwm>
    80002918:	00050a93          	mv	s5,a0
    8000291c:	00048593          	mv	a1,s1
    80002920:	00002097          	auipc	ra,0x2
    80002924:	a60080e7          	jalr	-1440(ra) # 80004380 <_ZN9BufferCPPC1Ei>
    80002928:	0300006f          	j	80002958 <_Z20testConsumerProducerv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    8000292c:	00006517          	auipc	a0,0x6
    80002930:	76c50513          	addi	a0,a0,1900 # 80009098 <CONSOLE_STATUS+0x88>
    80002934:	00001097          	auipc	ra,0x1
    80002938:	7ec080e7          	jalr	2028(ra) # 80004120 <_Z11printStringPKc>
        return;
    8000293c:	0140006f          	j	80002950 <_Z20testConsumerProducerv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80002940:	00006517          	auipc	a0,0x6
    80002944:	79850513          	addi	a0,a0,1944 # 800090d8 <CONSOLE_STATUS+0xc8>
    80002948:	00001097          	auipc	ra,0x1
    8000294c:	7d8080e7          	jalr	2008(ra) # 80004120 <_Z11printStringPKc>
        return;
    80002950:	000c0113          	mv	sp,s8
    80002954:	2140006f          	j	80002b68 <_Z20testConsumerProducerv+0x358>
    waitForAll = new Semaphore(0);
    80002958:	01800513          	li	a0,24
    8000295c:	00002097          	auipc	ra,0x2
    80002960:	4a8080e7          	jalr	1192(ra) # 80004e04 <_Znwm>
    80002964:	00050913          	mv	s2,a0
    80002968:	00000593          	li	a1,0
    8000296c:	00000097          	auipc	ra,0x0
    80002970:	6a0080e7          	jalr	1696(ra) # 8000300c <_ZN9SemaphoreC1Ej>
    80002974:	00009797          	auipc	a5,0x9
    80002978:	2927be23          	sd	s2,668(a5) # 8000bc10 <_ZL10waitForAll>
    Thread *producers[threadNum];
    8000297c:	00399793          	slli	a5,s3,0x3
    80002980:	00f78793          	addi	a5,a5,15
    80002984:	ff07f793          	andi	a5,a5,-16
    80002988:	40f10133          	sub	sp,sp,a5
    8000298c:	00010a13          	mv	s4,sp
    thread_data threadData[threadNum + 1];
    80002990:	0019871b          	addiw	a4,s3,1
    80002994:	00171793          	slli	a5,a4,0x1
    80002998:	00e787b3          	add	a5,a5,a4
    8000299c:	00379793          	slli	a5,a5,0x3
    800029a0:	00f78793          	addi	a5,a5,15
    800029a4:	ff07f793          	andi	a5,a5,-16
    800029a8:	40f10133          	sub	sp,sp,a5
    800029ac:	00010b13          	mv	s6,sp
    threadData[threadNum].id = threadNum;
    800029b0:	00199493          	slli	s1,s3,0x1
    800029b4:	013484b3          	add	s1,s1,s3
    800029b8:	00349493          	slli	s1,s1,0x3
    800029bc:	009b04b3          	add	s1,s6,s1
    800029c0:	0134a023          	sw	s3,0(s1)
    threadData[threadNum].buffer = buffer;
    800029c4:	0154b423          	sd	s5,8(s1)
    threadData[threadNum].sem = waitForAll;
    800029c8:	0124b823          	sd	s2,16(s1)
    Thread *consumer = new Consumer(&threadData[threadNum]);
    800029cc:	02800513          	li	a0,40
    800029d0:	00002097          	auipc	ra,0x2
    800029d4:	434080e7          	jalr	1076(ra) # 80004e04 <_Znwm>
    800029d8:	00050b93          	mv	s7,a0
    Consumer(thread_data *_td) : Thread(), td(_td) {}
    800029dc:	00004097          	auipc	ra,0x4
    800029e0:	490080e7          	jalr	1168(ra) # 80006e6c <_ZN6ThreadC1Ev>
    800029e4:	00009797          	auipc	a5,0x9
    800029e8:	00478793          	addi	a5,a5,4 # 8000b9e8 <_ZTV8Consumer+0x10>
    800029ec:	00fbb023          	sd	a5,0(s7)
    800029f0:	029bb023          	sd	s1,32(s7)
    consumer->start();
    800029f4:	000b8513          	mv	a0,s7
    800029f8:	00004097          	auipc	ra,0x4
    800029fc:	3e8080e7          	jalr	1000(ra) # 80006de0 <_ZN6Thread5startEv>
    threadData[0].id = 0;
    80002a00:	000b2023          	sw	zero,0(s6)
    threadData[0].buffer = buffer;
    80002a04:	015b3423          	sd	s5,8(s6)
    threadData[0].sem = waitForAll;
    80002a08:	00009797          	auipc	a5,0x9
    80002a0c:	2087b783          	ld	a5,520(a5) # 8000bc10 <_ZL10waitForAll>
    80002a10:	00fb3823          	sd	a5,16(s6)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80002a14:	02800513          	li	a0,40
    80002a18:	00002097          	auipc	ra,0x2
    80002a1c:	3ec080e7          	jalr	1004(ra) # 80004e04 <_Znwm>
    80002a20:	00050493          	mv	s1,a0
    ProducerKeyborad(thread_data *_td) : Thread(), td(_td) {}
    80002a24:	00004097          	auipc	ra,0x4
    80002a28:	448080e7          	jalr	1096(ra) # 80006e6c <_ZN6ThreadC1Ev>
    80002a2c:	00009797          	auipc	a5,0x9
    80002a30:	f6c78793          	addi	a5,a5,-148 # 8000b998 <_ZTV16ProducerKeyborad+0x10>
    80002a34:	00f4b023          	sd	a5,0(s1)
    80002a38:	0364b023          	sd	s6,32(s1)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80002a3c:	009a3023          	sd	s1,0(s4)
    producers[0]->start();
    80002a40:	00048513          	mv	a0,s1
    80002a44:	00004097          	auipc	ra,0x4
    80002a48:	39c080e7          	jalr	924(ra) # 80006de0 <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    80002a4c:	00100913          	li	s2,1
    80002a50:	0300006f          	j	80002a80 <_Z20testConsumerProducerv+0x270>
    Producer(thread_data *_td) : Thread(), td(_td) {}
    80002a54:	00009797          	auipc	a5,0x9
    80002a58:	f6c78793          	addi	a5,a5,-148 # 8000b9c0 <_ZTV8Producer+0x10>
    80002a5c:	00fcb023          	sd	a5,0(s9)
    80002a60:	029cb023          	sd	s1,32(s9)
        producers[i] = new Producer(&threadData[i]);
    80002a64:	00391793          	slli	a5,s2,0x3
    80002a68:	00fa07b3          	add	a5,s4,a5
    80002a6c:	0197b023          	sd	s9,0(a5)
        producers[i]->start();
    80002a70:	000c8513          	mv	a0,s9
    80002a74:	00004097          	auipc	ra,0x4
    80002a78:	36c080e7          	jalr	876(ra) # 80006de0 <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    80002a7c:	0019091b          	addiw	s2,s2,1
    80002a80:	05395263          	bge	s2,s3,80002ac4 <_Z20testConsumerProducerv+0x2b4>
        threadData[i].id = i;
    80002a84:	00191493          	slli	s1,s2,0x1
    80002a88:	012484b3          	add	s1,s1,s2
    80002a8c:	00349493          	slli	s1,s1,0x3
    80002a90:	009b04b3          	add	s1,s6,s1
    80002a94:	0124a023          	sw	s2,0(s1)
        threadData[i].buffer = buffer;
    80002a98:	0154b423          	sd	s5,8(s1)
        threadData[i].sem = waitForAll;
    80002a9c:	00009797          	auipc	a5,0x9
    80002aa0:	1747b783          	ld	a5,372(a5) # 8000bc10 <_ZL10waitForAll>
    80002aa4:	00f4b823          	sd	a5,16(s1)
        producers[i] = new Producer(&threadData[i]);
    80002aa8:	02800513          	li	a0,40
    80002aac:	00002097          	auipc	ra,0x2
    80002ab0:	358080e7          	jalr	856(ra) # 80004e04 <_Znwm>
    80002ab4:	00050c93          	mv	s9,a0
    Producer(thread_data *_td) : Thread(), td(_td) {}
    80002ab8:	00004097          	auipc	ra,0x4
    80002abc:	3b4080e7          	jalr	948(ra) # 80006e6c <_ZN6ThreadC1Ev>
    80002ac0:	f95ff06f          	j	80002a54 <_Z20testConsumerProducerv+0x244>
    Thread::dispatch();
    80002ac4:	00004097          	auipc	ra,0x4
    80002ac8:	2c4080e7          	jalr	708(ra) # 80006d88 <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    80002acc:	00000493          	li	s1,0
    80002ad0:	0099ce63          	blt	s3,s1,80002aec <_Z20testConsumerProducerv+0x2dc>
        waitForAll->wait();
    80002ad4:	00009517          	auipc	a0,0x9
    80002ad8:	13c53503          	ld	a0,316(a0) # 8000bc10 <_ZL10waitForAll>
    80002adc:	00000097          	auipc	ra,0x0
    80002ae0:	568080e7          	jalr	1384(ra) # 80003044 <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    80002ae4:	0014849b          	addiw	s1,s1,1
    80002ae8:	fe9ff06f          	j	80002ad0 <_Z20testConsumerProducerv+0x2c0>
    delete waitForAll;
    80002aec:	00009517          	auipc	a0,0x9
    80002af0:	12453503          	ld	a0,292(a0) # 8000bc10 <_ZL10waitForAll>
    80002af4:	00050863          	beqz	a0,80002b04 <_Z20testConsumerProducerv+0x2f4>
    80002af8:	00053783          	ld	a5,0(a0)
    80002afc:	0087b783          	ld	a5,8(a5)
    80002b00:	000780e7          	jalr	a5
    for (int i = 0; i <= threadNum; i++) {
    80002b04:	00000493          	li	s1,0
    80002b08:	0080006f          	j	80002b10 <_Z20testConsumerProducerv+0x300>
    for (int i = 0; i < threadNum; i++) {
    80002b0c:	0014849b          	addiw	s1,s1,1
    80002b10:	0334d263          	bge	s1,s3,80002b34 <_Z20testConsumerProducerv+0x324>
        delete producers[i];
    80002b14:	00349793          	slli	a5,s1,0x3
    80002b18:	00fa07b3          	add	a5,s4,a5
    80002b1c:	0007b503          	ld	a0,0(a5)
    80002b20:	fe0506e3          	beqz	a0,80002b0c <_Z20testConsumerProducerv+0x2fc>
    80002b24:	00053783          	ld	a5,0(a0)
    80002b28:	0087b783          	ld	a5,8(a5)
    80002b2c:	000780e7          	jalr	a5
    80002b30:	fddff06f          	j	80002b0c <_Z20testConsumerProducerv+0x2fc>
    delete consumer;
    80002b34:	000b8a63          	beqz	s7,80002b48 <_Z20testConsumerProducerv+0x338>
    80002b38:	000bb783          	ld	a5,0(s7)
    80002b3c:	0087b783          	ld	a5,8(a5)
    80002b40:	000b8513          	mv	a0,s7
    80002b44:	000780e7          	jalr	a5
    delete buffer;
    80002b48:	000a8e63          	beqz	s5,80002b64 <_Z20testConsumerProducerv+0x354>
    80002b4c:	000a8513          	mv	a0,s5
    80002b50:	00002097          	auipc	ra,0x2
    80002b54:	b28080e7          	jalr	-1240(ra) # 80004678 <_ZN9BufferCPPD1Ev>
    80002b58:	000a8513          	mv	a0,s5
    80002b5c:	00002097          	auipc	ra,0x2
    80002b60:	308080e7          	jalr	776(ra) # 80004e64 <_ZdlPv>
    80002b64:	000c0113          	mv	sp,s8
}
    80002b68:	f8040113          	addi	sp,s0,-128
    80002b6c:	07813083          	ld	ra,120(sp)
    80002b70:	07013403          	ld	s0,112(sp)
    80002b74:	06813483          	ld	s1,104(sp)
    80002b78:	06013903          	ld	s2,96(sp)
    80002b7c:	05813983          	ld	s3,88(sp)
    80002b80:	05013a03          	ld	s4,80(sp)
    80002b84:	04813a83          	ld	s5,72(sp)
    80002b88:	04013b03          	ld	s6,64(sp)
    80002b8c:	03813b83          	ld	s7,56(sp)
    80002b90:	03013c03          	ld	s8,48(sp)
    80002b94:	02813c83          	ld	s9,40(sp)
    80002b98:	08010113          	addi	sp,sp,128
    80002b9c:	00008067          	ret
    80002ba0:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    80002ba4:	000a8513          	mv	a0,s5
    80002ba8:	00002097          	auipc	ra,0x2
    80002bac:	2bc080e7          	jalr	700(ra) # 80004e64 <_ZdlPv>
    80002bb0:	00048513          	mv	a0,s1
    80002bb4:	0000a097          	auipc	ra,0xa
    80002bb8:	2c4080e7          	jalr	708(ra) # 8000ce78 <_Unwind_Resume>
    80002bbc:	00050493          	mv	s1,a0
    waitForAll = new Semaphore(0);
    80002bc0:	00090513          	mv	a0,s2
    80002bc4:	00002097          	auipc	ra,0x2
    80002bc8:	2a0080e7          	jalr	672(ra) # 80004e64 <_ZdlPv>
    80002bcc:	00048513          	mv	a0,s1
    80002bd0:	0000a097          	auipc	ra,0xa
    80002bd4:	2a8080e7          	jalr	680(ra) # 8000ce78 <_Unwind_Resume>
    80002bd8:	00050493          	mv	s1,a0
    Thread *consumer = new Consumer(&threadData[threadNum]);
    80002bdc:	000b8513          	mv	a0,s7
    80002be0:	00002097          	auipc	ra,0x2
    80002be4:	284080e7          	jalr	644(ra) # 80004e64 <_ZdlPv>
    80002be8:	00048513          	mv	a0,s1
    80002bec:	0000a097          	auipc	ra,0xa
    80002bf0:	28c080e7          	jalr	652(ra) # 8000ce78 <_Unwind_Resume>
    80002bf4:	00050913          	mv	s2,a0
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80002bf8:	00048513          	mv	a0,s1
    80002bfc:	00002097          	auipc	ra,0x2
    80002c00:	268080e7          	jalr	616(ra) # 80004e64 <_ZdlPv>
    80002c04:	00090513          	mv	a0,s2
    80002c08:	0000a097          	auipc	ra,0xa
    80002c0c:	270080e7          	jalr	624(ra) # 8000ce78 <_Unwind_Resume>
    80002c10:	00050493          	mv	s1,a0
        producers[i] = new Producer(&threadData[i]);
    80002c14:	000c8513          	mv	a0,s9
    80002c18:	00002097          	auipc	ra,0x2
    80002c1c:	24c080e7          	jalr	588(ra) # 80004e64 <_ZdlPv>
    80002c20:	00048513          	mv	a0,s1
    80002c24:	0000a097          	auipc	ra,0xa
    80002c28:	254080e7          	jalr	596(ra) # 8000ce78 <_Unwind_Resume>

0000000080002c2c <_ZN8Consumer3runEv>:
    void run() override {
    80002c2c:	fd010113          	addi	sp,sp,-48
    80002c30:	02113423          	sd	ra,40(sp)
    80002c34:	02813023          	sd	s0,32(sp)
    80002c38:	00913c23          	sd	s1,24(sp)
    80002c3c:	01213823          	sd	s2,16(sp)
    80002c40:	01313423          	sd	s3,8(sp)
    80002c44:	03010413          	addi	s0,sp,48
    80002c48:	00050913          	mv	s2,a0
        int i = 0;
    80002c4c:	00000993          	li	s3,0
    80002c50:	0100006f          	j	80002c60 <_ZN8Consumer3runEv+0x34>
                Console::putc('\n');
    80002c54:	00a00513          	li	a0,10
    80002c58:	00002097          	auipc	ra,0x2
    80002c5c:	d54080e7          	jalr	-684(ra) # 800049ac <_ZN7Console4putcEc>
        while (!threadEnd) {
    80002c60:	00009797          	auipc	a5,0x9
    80002c64:	fa87a783          	lw	a5,-88(a5) # 8000bc08 <_ZL9threadEnd>
    80002c68:	04079a63          	bnez	a5,80002cbc <_ZN8Consumer3runEv+0x90>
            int key = td->buffer->get();
    80002c6c:	02093783          	ld	a5,32(s2)
    80002c70:	0087b503          	ld	a0,8(a5)
    80002c74:	00002097          	auipc	ra,0x2
    80002c78:	8f0080e7          	jalr	-1808(ra) # 80004564 <_ZN9BufferCPP3getEv>
            i++;
    80002c7c:	0019849b          	addiw	s1,s3,1
    80002c80:	0004899b          	sext.w	s3,s1
            Console::putc(key);
    80002c84:	0ff57513          	andi	a0,a0,255
    80002c88:	00002097          	auipc	ra,0x2
    80002c8c:	d24080e7          	jalr	-732(ra) # 800049ac <_ZN7Console4putcEc>
            if (i % 80 == 0) {
    80002c90:	05000793          	li	a5,80
    80002c94:	02f4e4bb          	remw	s1,s1,a5
    80002c98:	fc0494e3          	bnez	s1,80002c60 <_ZN8Consumer3runEv+0x34>
    80002c9c:	fb9ff06f          	j	80002c54 <_ZN8Consumer3runEv+0x28>
            int key = td->buffer->get();
    80002ca0:	02093783          	ld	a5,32(s2)
    80002ca4:	0087b503          	ld	a0,8(a5)
    80002ca8:	00002097          	auipc	ra,0x2
    80002cac:	8bc080e7          	jalr	-1860(ra) # 80004564 <_ZN9BufferCPP3getEv>
            Console::putc(key);
    80002cb0:	0ff57513          	andi	a0,a0,255
    80002cb4:	00002097          	auipc	ra,0x2
    80002cb8:	cf8080e7          	jalr	-776(ra) # 800049ac <_ZN7Console4putcEc>
        while (td->buffer->getCnt() > 0) {
    80002cbc:	02093783          	ld	a5,32(s2)
    80002cc0:	0087b503          	ld	a0,8(a5)
    80002cc4:	00002097          	auipc	ra,0x2
    80002cc8:	92c080e7          	jalr	-1748(ra) # 800045f0 <_ZN9BufferCPP6getCntEv>
    80002ccc:	fca04ae3          	bgtz	a0,80002ca0 <_ZN8Consumer3runEv+0x74>
        td->sem->signal();
    80002cd0:	02093783          	ld	a5,32(s2)
    80002cd4:	0107b503          	ld	a0,16(a5)
    80002cd8:	00000097          	auipc	ra,0x0
    80002cdc:	398080e7          	jalr	920(ra) # 80003070 <_ZN9Semaphore6signalEv>
    }
    80002ce0:	02813083          	ld	ra,40(sp)
    80002ce4:	02013403          	ld	s0,32(sp)
    80002ce8:	01813483          	ld	s1,24(sp)
    80002cec:	01013903          	ld	s2,16(sp)
    80002cf0:	00813983          	ld	s3,8(sp)
    80002cf4:	03010113          	addi	sp,sp,48
    80002cf8:	00008067          	ret

0000000080002cfc <_ZN8ConsumerD1Ev>:
class Consumer : public Thread {
    80002cfc:	ff010113          	addi	sp,sp,-16
    80002d00:	00113423          	sd	ra,8(sp)
    80002d04:	00813023          	sd	s0,0(sp)
    80002d08:	01010413          	addi	s0,sp,16
    80002d0c:	00009797          	auipc	a5,0x9
    80002d10:	cdc78793          	addi	a5,a5,-804 # 8000b9e8 <_ZTV8Consumer+0x10>
    80002d14:	00f53023          	sd	a5,0(a0)
    80002d18:	00004097          	auipc	ra,0x4
    80002d1c:	fcc080e7          	jalr	-52(ra) # 80006ce4 <_ZN6ThreadD1Ev>
    80002d20:	00813083          	ld	ra,8(sp)
    80002d24:	00013403          	ld	s0,0(sp)
    80002d28:	01010113          	addi	sp,sp,16
    80002d2c:	00008067          	ret

0000000080002d30 <_ZN8ConsumerD0Ev>:
    80002d30:	fe010113          	addi	sp,sp,-32
    80002d34:	00113c23          	sd	ra,24(sp)
    80002d38:	00813823          	sd	s0,16(sp)
    80002d3c:	00913423          	sd	s1,8(sp)
    80002d40:	02010413          	addi	s0,sp,32
    80002d44:	00050493          	mv	s1,a0
    80002d48:	00009797          	auipc	a5,0x9
    80002d4c:	ca078793          	addi	a5,a5,-864 # 8000b9e8 <_ZTV8Consumer+0x10>
    80002d50:	00f53023          	sd	a5,0(a0)
    80002d54:	00004097          	auipc	ra,0x4
    80002d58:	f90080e7          	jalr	-112(ra) # 80006ce4 <_ZN6ThreadD1Ev>
    80002d5c:	00048513          	mv	a0,s1
    80002d60:	00002097          	auipc	ra,0x2
    80002d64:	104080e7          	jalr	260(ra) # 80004e64 <_ZdlPv>
    80002d68:	01813083          	ld	ra,24(sp)
    80002d6c:	01013403          	ld	s0,16(sp)
    80002d70:	00813483          	ld	s1,8(sp)
    80002d74:	02010113          	addi	sp,sp,32
    80002d78:	00008067          	ret

0000000080002d7c <_ZN16ProducerKeyboradD1Ev>:
class ProducerKeyborad : public Thread {
    80002d7c:	ff010113          	addi	sp,sp,-16
    80002d80:	00113423          	sd	ra,8(sp)
    80002d84:	00813023          	sd	s0,0(sp)
    80002d88:	01010413          	addi	s0,sp,16
    80002d8c:	00009797          	auipc	a5,0x9
    80002d90:	c0c78793          	addi	a5,a5,-1012 # 8000b998 <_ZTV16ProducerKeyborad+0x10>
    80002d94:	00f53023          	sd	a5,0(a0)
    80002d98:	00004097          	auipc	ra,0x4
    80002d9c:	f4c080e7          	jalr	-180(ra) # 80006ce4 <_ZN6ThreadD1Ev>
    80002da0:	00813083          	ld	ra,8(sp)
    80002da4:	00013403          	ld	s0,0(sp)
    80002da8:	01010113          	addi	sp,sp,16
    80002dac:	00008067          	ret

0000000080002db0 <_ZN16ProducerKeyboradD0Ev>:
    80002db0:	fe010113          	addi	sp,sp,-32
    80002db4:	00113c23          	sd	ra,24(sp)
    80002db8:	00813823          	sd	s0,16(sp)
    80002dbc:	00913423          	sd	s1,8(sp)
    80002dc0:	02010413          	addi	s0,sp,32
    80002dc4:	00050493          	mv	s1,a0
    80002dc8:	00009797          	auipc	a5,0x9
    80002dcc:	bd078793          	addi	a5,a5,-1072 # 8000b998 <_ZTV16ProducerKeyborad+0x10>
    80002dd0:	00f53023          	sd	a5,0(a0)
    80002dd4:	00004097          	auipc	ra,0x4
    80002dd8:	f10080e7          	jalr	-240(ra) # 80006ce4 <_ZN6ThreadD1Ev>
    80002ddc:	00048513          	mv	a0,s1
    80002de0:	00002097          	auipc	ra,0x2
    80002de4:	084080e7          	jalr	132(ra) # 80004e64 <_ZdlPv>
    80002de8:	01813083          	ld	ra,24(sp)
    80002dec:	01013403          	ld	s0,16(sp)
    80002df0:	00813483          	ld	s1,8(sp)
    80002df4:	02010113          	addi	sp,sp,32
    80002df8:	00008067          	ret

0000000080002dfc <_ZN8ProducerD1Ev>:
class Producer : public Thread {
    80002dfc:	ff010113          	addi	sp,sp,-16
    80002e00:	00113423          	sd	ra,8(sp)
    80002e04:	00813023          	sd	s0,0(sp)
    80002e08:	01010413          	addi	s0,sp,16
    80002e0c:	00009797          	auipc	a5,0x9
    80002e10:	bb478793          	addi	a5,a5,-1100 # 8000b9c0 <_ZTV8Producer+0x10>
    80002e14:	00f53023          	sd	a5,0(a0)
    80002e18:	00004097          	auipc	ra,0x4
    80002e1c:	ecc080e7          	jalr	-308(ra) # 80006ce4 <_ZN6ThreadD1Ev>
    80002e20:	00813083          	ld	ra,8(sp)
    80002e24:	00013403          	ld	s0,0(sp)
    80002e28:	01010113          	addi	sp,sp,16
    80002e2c:	00008067          	ret

0000000080002e30 <_ZN8ProducerD0Ev>:
    80002e30:	fe010113          	addi	sp,sp,-32
    80002e34:	00113c23          	sd	ra,24(sp)
    80002e38:	00813823          	sd	s0,16(sp)
    80002e3c:	00913423          	sd	s1,8(sp)
    80002e40:	02010413          	addi	s0,sp,32
    80002e44:	00050493          	mv	s1,a0
    80002e48:	00009797          	auipc	a5,0x9
    80002e4c:	b7878793          	addi	a5,a5,-1160 # 8000b9c0 <_ZTV8Producer+0x10>
    80002e50:	00f53023          	sd	a5,0(a0)
    80002e54:	00004097          	auipc	ra,0x4
    80002e58:	e90080e7          	jalr	-368(ra) # 80006ce4 <_ZN6ThreadD1Ev>
    80002e5c:	00048513          	mv	a0,s1
    80002e60:	00002097          	auipc	ra,0x2
    80002e64:	004080e7          	jalr	4(ra) # 80004e64 <_ZdlPv>
    80002e68:	01813083          	ld	ra,24(sp)
    80002e6c:	01013403          	ld	s0,16(sp)
    80002e70:	00813483          	ld	s1,8(sp)
    80002e74:	02010113          	addi	sp,sp,32
    80002e78:	00008067          	ret

0000000080002e7c <_ZN16ProducerKeyborad3runEv>:
    void run() override {
    80002e7c:	fe010113          	addi	sp,sp,-32
    80002e80:	00113c23          	sd	ra,24(sp)
    80002e84:	00813823          	sd	s0,16(sp)
    80002e88:	00913423          	sd	s1,8(sp)
    80002e8c:	02010413          	addi	s0,sp,32
    80002e90:	00050493          	mv	s1,a0
        while ((key = getc()) != 0x1b) {
    80002e94:	fffff097          	auipc	ra,0xfffff
    80002e98:	980080e7          	jalr	-1664(ra) # 80001814 <_Z4getcv>
    80002e9c:	0005059b          	sext.w	a1,a0
    80002ea0:	01b00793          	li	a5,27
    80002ea4:	00f58c63          	beq	a1,a5,80002ebc <_ZN16ProducerKeyborad3runEv+0x40>
            td->buffer->put(key);
    80002ea8:	0204b783          	ld	a5,32(s1)
    80002eac:	0087b503          	ld	a0,8(a5)
    80002eb0:	00001097          	auipc	ra,0x1
    80002eb4:	624080e7          	jalr	1572(ra) # 800044d4 <_ZN9BufferCPP3putEi>
        while ((key = getc()) != 0x1b) {
    80002eb8:	fddff06f          	j	80002e94 <_ZN16ProducerKeyborad3runEv+0x18>
        threadEnd = 1;
    80002ebc:	00100793          	li	a5,1
    80002ec0:	00009717          	auipc	a4,0x9
    80002ec4:	d4f72423          	sw	a5,-696(a4) # 8000bc08 <_ZL9threadEnd>
        td->buffer->put('!');
    80002ec8:	0204b783          	ld	a5,32(s1)
    80002ecc:	02100593          	li	a1,33
    80002ed0:	0087b503          	ld	a0,8(a5)
    80002ed4:	00001097          	auipc	ra,0x1
    80002ed8:	600080e7          	jalr	1536(ra) # 800044d4 <_ZN9BufferCPP3putEi>
        td->sem->signal();
    80002edc:	0204b783          	ld	a5,32(s1)
    80002ee0:	0107b503          	ld	a0,16(a5)
    80002ee4:	00000097          	auipc	ra,0x0
    80002ee8:	18c080e7          	jalr	396(ra) # 80003070 <_ZN9Semaphore6signalEv>
    }
    80002eec:	01813083          	ld	ra,24(sp)
    80002ef0:	01013403          	ld	s0,16(sp)
    80002ef4:	00813483          	ld	s1,8(sp)
    80002ef8:	02010113          	addi	sp,sp,32
    80002efc:	00008067          	ret

0000000080002f00 <_ZN8Producer3runEv>:
    void run() override {
    80002f00:	fe010113          	addi	sp,sp,-32
    80002f04:	00113c23          	sd	ra,24(sp)
    80002f08:	00813823          	sd	s0,16(sp)
    80002f0c:	00913423          	sd	s1,8(sp)
    80002f10:	01213023          	sd	s2,0(sp)
    80002f14:	02010413          	addi	s0,sp,32
    80002f18:	00050493          	mv	s1,a0
        int i = 0;
    80002f1c:	00000913          	li	s2,0
        while (!threadEnd) {
    80002f20:	00009797          	auipc	a5,0x9
    80002f24:	ce87a783          	lw	a5,-792(a5) # 8000bc08 <_ZL9threadEnd>
    80002f28:	04079263          	bnez	a5,80002f6c <_ZN8Producer3runEv+0x6c>
            td->buffer->put(td->id + '0');
    80002f2c:	0204b783          	ld	a5,32(s1)
    80002f30:	0007a583          	lw	a1,0(a5)
    80002f34:	0305859b          	addiw	a1,a1,48
    80002f38:	0087b503          	ld	a0,8(a5)
    80002f3c:	00001097          	auipc	ra,0x1
    80002f40:	598080e7          	jalr	1432(ra) # 800044d4 <_ZN9BufferCPP3putEi>
            i++;
    80002f44:	0019071b          	addiw	a4,s2,1
    80002f48:	0007091b          	sext.w	s2,a4
            Thread::sleep((i + td->id) % 5);
    80002f4c:	0204b783          	ld	a5,32(s1)
    80002f50:	0007a783          	lw	a5,0(a5)
    80002f54:	00e787bb          	addw	a5,a5,a4
    80002f58:	00500513          	li	a0,5
    80002f5c:	02a7e53b          	remw	a0,a5,a0
    80002f60:	00004097          	auipc	ra,0x4
    80002f64:	f3c080e7          	jalr	-196(ra) # 80006e9c <_ZN6Thread5sleepEm>
        while (!threadEnd) {
    80002f68:	fb9ff06f          	j	80002f20 <_ZN8Producer3runEv+0x20>
        td->sem->signal();
    80002f6c:	0204b783          	ld	a5,32(s1)
    80002f70:	0107b503          	ld	a0,16(a5)
    80002f74:	00000097          	auipc	ra,0x0
    80002f78:	0fc080e7          	jalr	252(ra) # 80003070 <_ZN9Semaphore6signalEv>
    }
    80002f7c:	01813083          	ld	ra,24(sp)
    80002f80:	01013403          	ld	s0,16(sp)
    80002f84:	00813483          	ld	s1,8(sp)
    80002f88:	00013903          	ld	s2,0(sp)
    80002f8c:	02010113          	addi	sp,sp,32
    80002f90:	00008067          	ret

0000000080002f94 <_ZN9SemaphoreD1Ev>:

Semaphore::Semaphore (unsigned init) {
    sem_open(&this->myHandle, init);
}

Semaphore::~Semaphore () {
    80002f94:	ff010113          	addi	sp,sp,-16
    80002f98:	00113423          	sd	ra,8(sp)
    80002f9c:	00813023          	sd	s0,0(sp)
    80002fa0:	01010413          	addi	s0,sp,16
    80002fa4:	00009797          	auipc	a5,0x9
    80002fa8:	a6c78793          	addi	a5,a5,-1428 # 8000ba10 <_ZTV9Semaphore+0x10>
    80002fac:	00f53023          	sd	a5,0(a0)
    sem_close(myHandle);
    80002fb0:	00853503          	ld	a0,8(a0)
    80002fb4:	ffffe097          	auipc	ra,0xffffe
    80002fb8:	7ac080e7          	jalr	1964(ra) # 80001760 <_Z9sem_closeP4_sem>
}
    80002fbc:	00813083          	ld	ra,8(sp)
    80002fc0:	00013403          	ld	s0,0(sp)
    80002fc4:	01010113          	addi	sp,sp,16
    80002fc8:	00008067          	ret

0000000080002fcc <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore () {
    80002fcc:	fe010113          	addi	sp,sp,-32
    80002fd0:	00113c23          	sd	ra,24(sp)
    80002fd4:	00813823          	sd	s0,16(sp)
    80002fd8:	00913423          	sd	s1,8(sp)
    80002fdc:	02010413          	addi	s0,sp,32
    80002fe0:	00050493          	mv	s1,a0
}
    80002fe4:	00000097          	auipc	ra,0x0
    80002fe8:	fb0080e7          	jalr	-80(ra) # 80002f94 <_ZN9SemaphoreD1Ev>
    80002fec:	00048513          	mv	a0,s1
    80002ff0:	00002097          	auipc	ra,0x2
    80002ff4:	e74080e7          	jalr	-396(ra) # 80004e64 <_ZdlPv>
    80002ff8:	01813083          	ld	ra,24(sp)
    80002ffc:	01013403          	ld	s0,16(sp)
    80003000:	00813483          	ld	s1,8(sp)
    80003004:	02010113          	addi	sp,sp,32
    80003008:	00008067          	ret

000000008000300c <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore (unsigned init) {
    8000300c:	ff010113          	addi	sp,sp,-16
    80003010:	00113423          	sd	ra,8(sp)
    80003014:	00813023          	sd	s0,0(sp)
    80003018:	01010413          	addi	s0,sp,16
    8000301c:	00009797          	auipc	a5,0x9
    80003020:	9f478793          	addi	a5,a5,-1548 # 8000ba10 <_ZTV9Semaphore+0x10>
    80003024:	00f53023          	sd	a5,0(a0)
    sem_open(&this->myHandle, init);
    80003028:	00850513          	addi	a0,a0,8
    8000302c:	ffffe097          	auipc	ra,0xffffe
    80003030:	6f0080e7          	jalr	1776(ra) # 8000171c <_Z8sem_openPP4_semj>
}
    80003034:	00813083          	ld	ra,8(sp)
    80003038:	00013403          	ld	s0,0(sp)
    8000303c:	01010113          	addi	sp,sp,16
    80003040:	00008067          	ret

0000000080003044 <_ZN9Semaphore4waitEv>:

int Semaphore::wait() {
    80003044:	ff010113          	addi	sp,sp,-16
    80003048:	00113423          	sd	ra,8(sp)
    8000304c:	00813023          	sd	s0,0(sp)
    80003050:	01010413          	addi	s0,sp,16
    return sem_wait(myHandle);
    80003054:	00853503          	ld	a0,8(a0)
    80003058:	ffffe097          	auipc	ra,0xffffe
    8000305c:	744080e7          	jalr	1860(ra) # 8000179c <_Z8sem_waitP4_sem>
}
    80003060:	00813083          	ld	ra,8(sp)
    80003064:	00013403          	ld	s0,0(sp)
    80003068:	01010113          	addi	sp,sp,16
    8000306c:	00008067          	ret

0000000080003070 <_ZN9Semaphore6signalEv>:

int Semaphore::signal() {
    80003070:	ff010113          	addi	sp,sp,-16
    80003074:	00113423          	sd	ra,8(sp)
    80003078:	00813023          	sd	s0,0(sp)
    8000307c:	01010413          	addi	s0,sp,16
    return sem_signal(myHandle);
    80003080:	00853503          	ld	a0,8(a0)
    80003084:	ffffe097          	auipc	ra,0xffffe
    80003088:	754080e7          	jalr	1876(ra) # 800017d8 <_Z10sem_signalP4_sem>
}
    8000308c:	00813083          	ld	ra,8(sp)
    80003090:	00013403          	ld	s0,0(sp)
    80003094:	01010113          	addi	sp,sp,16
    80003098:	00008067          	ret

000000008000309c <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    8000309c:	fe010113          	addi	sp,sp,-32
    800030a0:	00113c23          	sd	ra,24(sp)
    800030a4:	00813823          	sd	s0,16(sp)
    800030a8:	00913423          	sd	s1,8(sp)
    800030ac:	01213023          	sd	s2,0(sp)
    800030b0:	02010413          	addi	s0,sp,32
    800030b4:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    800030b8:	00100793          	li	a5,1
    800030bc:	02a7f863          	bgeu	a5,a0,800030ec <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    800030c0:	00a00793          	li	a5,10
    800030c4:	02f577b3          	remu	a5,a0,a5
    800030c8:	02078e63          	beqz	a5,80003104 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    800030cc:	fff48513          	addi	a0,s1,-1
    800030d0:	00000097          	auipc	ra,0x0
    800030d4:	fcc080e7          	jalr	-52(ra) # 8000309c <_ZL9fibonaccim>
    800030d8:	00050913          	mv	s2,a0
    800030dc:	ffe48513          	addi	a0,s1,-2
    800030e0:	00000097          	auipc	ra,0x0
    800030e4:	fbc080e7          	jalr	-68(ra) # 8000309c <_ZL9fibonaccim>
    800030e8:	00a90533          	add	a0,s2,a0
}
    800030ec:	01813083          	ld	ra,24(sp)
    800030f0:	01013403          	ld	s0,16(sp)
    800030f4:	00813483          	ld	s1,8(sp)
    800030f8:	00013903          	ld	s2,0(sp)
    800030fc:	02010113          	addi	sp,sp,32
    80003100:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80003104:	ffffe097          	auipc	ra,0xffffe
    80003108:	5f4080e7          	jalr	1524(ra) # 800016f8 <_Z15thread_dispatchv>
    8000310c:	fc1ff06f          	j	800030cc <_ZL9fibonaccim+0x30>

0000000080003110 <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    80003110:	fe010113          	addi	sp,sp,-32
    80003114:	00113c23          	sd	ra,24(sp)
    80003118:	00813823          	sd	s0,16(sp)
    8000311c:	00913423          	sd	s1,8(sp)
    80003120:	01213023          	sd	s2,0(sp)
    80003124:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80003128:	00a00493          	li	s1,10
    8000312c:	0400006f          	j	8000316c <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80003130:	00006517          	auipc	a0,0x6
    80003134:	03850513          	addi	a0,a0,56 # 80009168 <CONSOLE_STATUS+0x158>
    80003138:	00001097          	auipc	ra,0x1
    8000313c:	fe8080e7          	jalr	-24(ra) # 80004120 <_Z11printStringPKc>
    80003140:	00000613          	li	a2,0
    80003144:	00a00593          	li	a1,10
    80003148:	00048513          	mv	a0,s1
    8000314c:	00001097          	auipc	ra,0x1
    80003150:	130080e7          	jalr	304(ra) # 8000427c <_Z8printIntmhh>
    80003154:	00006517          	auipc	a0,0x6
    80003158:	20450513          	addi	a0,a0,516 # 80009358 <CONSOLE_STATUS+0x348>
    8000315c:	00001097          	auipc	ra,0x1
    80003160:	fc4080e7          	jalr	-60(ra) # 80004120 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80003164:	0014849b          	addiw	s1,s1,1
    80003168:	0ff4f493          	andi	s1,s1,255
    8000316c:	00c00793          	li	a5,12
    80003170:	fc97f0e3          	bgeu	a5,s1,80003130 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80003174:	00006517          	auipc	a0,0x6
    80003178:	ffc50513          	addi	a0,a0,-4 # 80009170 <CONSOLE_STATUS+0x160>
    8000317c:	00001097          	auipc	ra,0x1
    80003180:	fa4080e7          	jalr	-92(ra) # 80004120 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80003184:	00500313          	li	t1,5
    thread_dispatch();
    80003188:	ffffe097          	auipc	ra,0xffffe
    8000318c:	570080e7          	jalr	1392(ra) # 800016f8 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80003190:	01000513          	li	a0,16
    80003194:	00000097          	auipc	ra,0x0
    80003198:	f08080e7          	jalr	-248(ra) # 8000309c <_ZL9fibonaccim>
    8000319c:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    800031a0:	00006517          	auipc	a0,0x6
    800031a4:	fe050513          	addi	a0,a0,-32 # 80009180 <CONSOLE_STATUS+0x170>
    800031a8:	00001097          	auipc	ra,0x1
    800031ac:	f78080e7          	jalr	-136(ra) # 80004120 <_Z11printStringPKc>
    800031b0:	00000613          	li	a2,0
    800031b4:	00a00593          	li	a1,10
    800031b8:	00090513          	mv	a0,s2
    800031bc:	00001097          	auipc	ra,0x1
    800031c0:	0c0080e7          	jalr	192(ra) # 8000427c <_Z8printIntmhh>
    800031c4:	00006517          	auipc	a0,0x6
    800031c8:	19450513          	addi	a0,a0,404 # 80009358 <CONSOLE_STATUS+0x348>
    800031cc:	00001097          	auipc	ra,0x1
    800031d0:	f54080e7          	jalr	-172(ra) # 80004120 <_Z11printStringPKc>
    800031d4:	0400006f          	j	80003214 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800031d8:	00006517          	auipc	a0,0x6
    800031dc:	f9050513          	addi	a0,a0,-112 # 80009168 <CONSOLE_STATUS+0x158>
    800031e0:	00001097          	auipc	ra,0x1
    800031e4:	f40080e7          	jalr	-192(ra) # 80004120 <_Z11printStringPKc>
    800031e8:	00000613          	li	a2,0
    800031ec:	00a00593          	li	a1,10
    800031f0:	00048513          	mv	a0,s1
    800031f4:	00001097          	auipc	ra,0x1
    800031f8:	088080e7          	jalr	136(ra) # 8000427c <_Z8printIntmhh>
    800031fc:	00006517          	auipc	a0,0x6
    80003200:	15c50513          	addi	a0,a0,348 # 80009358 <CONSOLE_STATUS+0x348>
    80003204:	00001097          	auipc	ra,0x1
    80003208:	f1c080e7          	jalr	-228(ra) # 80004120 <_Z11printStringPKc>
    for (; i < 16; i++) {
    8000320c:	0014849b          	addiw	s1,s1,1
    80003210:	0ff4f493          	andi	s1,s1,255
    80003214:	00f00793          	li	a5,15
    80003218:	fc97f0e3          	bgeu	a5,s1,800031d8 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    8000321c:	00006517          	auipc	a0,0x6
    80003220:	f7450513          	addi	a0,a0,-140 # 80009190 <CONSOLE_STATUS+0x180>
    80003224:	00001097          	auipc	ra,0x1
    80003228:	efc080e7          	jalr	-260(ra) # 80004120 <_Z11printStringPKc>
    finishedD = true;
    8000322c:	00100793          	li	a5,1
    80003230:	00009717          	auipc	a4,0x9
    80003234:	9ef70423          	sb	a5,-1560(a4) # 8000bc18 <_ZL9finishedD>
    thread_dispatch();
    80003238:	ffffe097          	auipc	ra,0xffffe
    8000323c:	4c0080e7          	jalr	1216(ra) # 800016f8 <_Z15thread_dispatchv>
}
    80003240:	01813083          	ld	ra,24(sp)
    80003244:	01013403          	ld	s0,16(sp)
    80003248:	00813483          	ld	s1,8(sp)
    8000324c:	00013903          	ld	s2,0(sp)
    80003250:	02010113          	addi	sp,sp,32
    80003254:	00008067          	ret

0000000080003258 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80003258:	fe010113          	addi	sp,sp,-32
    8000325c:	00113c23          	sd	ra,24(sp)
    80003260:	00813823          	sd	s0,16(sp)
    80003264:	00913423          	sd	s1,8(sp)
    80003268:	01213023          	sd	s2,0(sp)
    8000326c:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80003270:	00000493          	li	s1,0
    80003274:	0400006f          	j	800032b4 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    80003278:	00006517          	auipc	a0,0x6
    8000327c:	ec050513          	addi	a0,a0,-320 # 80009138 <CONSOLE_STATUS+0x128>
    80003280:	00001097          	auipc	ra,0x1
    80003284:	ea0080e7          	jalr	-352(ra) # 80004120 <_Z11printStringPKc>
    80003288:	00000613          	li	a2,0
    8000328c:	00a00593          	li	a1,10
    80003290:	00048513          	mv	a0,s1
    80003294:	00001097          	auipc	ra,0x1
    80003298:	fe8080e7          	jalr	-24(ra) # 8000427c <_Z8printIntmhh>
    8000329c:	00006517          	auipc	a0,0x6
    800032a0:	0bc50513          	addi	a0,a0,188 # 80009358 <CONSOLE_STATUS+0x348>
    800032a4:	00001097          	auipc	ra,0x1
    800032a8:	e7c080e7          	jalr	-388(ra) # 80004120 <_Z11printStringPKc>
    for (; i < 3; i++) {
    800032ac:	0014849b          	addiw	s1,s1,1
    800032b0:	0ff4f493          	andi	s1,s1,255
    800032b4:	00200793          	li	a5,2
    800032b8:	fc97f0e3          	bgeu	a5,s1,80003278 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    800032bc:	00006517          	auipc	a0,0x6
    800032c0:	e8450513          	addi	a0,a0,-380 # 80009140 <CONSOLE_STATUS+0x130>
    800032c4:	00001097          	auipc	ra,0x1
    800032c8:	e5c080e7          	jalr	-420(ra) # 80004120 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    800032cc:	00700313          	li	t1,7
    thread_dispatch();
    800032d0:	ffffe097          	auipc	ra,0xffffe
    800032d4:	428080e7          	jalr	1064(ra) # 800016f8 <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    800032d8:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    800032dc:	00006517          	auipc	a0,0x6
    800032e0:	e7450513          	addi	a0,a0,-396 # 80009150 <CONSOLE_STATUS+0x140>
    800032e4:	00001097          	auipc	ra,0x1
    800032e8:	e3c080e7          	jalr	-452(ra) # 80004120 <_Z11printStringPKc>
    800032ec:	00000613          	li	a2,0
    800032f0:	00a00593          	li	a1,10
    800032f4:	00090513          	mv	a0,s2
    800032f8:	00001097          	auipc	ra,0x1
    800032fc:	f84080e7          	jalr	-124(ra) # 8000427c <_Z8printIntmhh>
    80003300:	00006517          	auipc	a0,0x6
    80003304:	05850513          	addi	a0,a0,88 # 80009358 <CONSOLE_STATUS+0x348>
    80003308:	00001097          	auipc	ra,0x1
    8000330c:	e18080e7          	jalr	-488(ra) # 80004120 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80003310:	00c00513          	li	a0,12
    80003314:	00000097          	auipc	ra,0x0
    80003318:	d88080e7          	jalr	-632(ra) # 8000309c <_ZL9fibonaccim>
    8000331c:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80003320:	00006517          	auipc	a0,0x6
    80003324:	e3850513          	addi	a0,a0,-456 # 80009158 <CONSOLE_STATUS+0x148>
    80003328:	00001097          	auipc	ra,0x1
    8000332c:	df8080e7          	jalr	-520(ra) # 80004120 <_Z11printStringPKc>
    80003330:	00000613          	li	a2,0
    80003334:	00a00593          	li	a1,10
    80003338:	00090513          	mv	a0,s2
    8000333c:	00001097          	auipc	ra,0x1
    80003340:	f40080e7          	jalr	-192(ra) # 8000427c <_Z8printIntmhh>
    80003344:	00006517          	auipc	a0,0x6
    80003348:	01450513          	addi	a0,a0,20 # 80009358 <CONSOLE_STATUS+0x348>
    8000334c:	00001097          	auipc	ra,0x1
    80003350:	dd4080e7          	jalr	-556(ra) # 80004120 <_Z11printStringPKc>
    80003354:	0400006f          	j	80003394 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    80003358:	00006517          	auipc	a0,0x6
    8000335c:	de050513          	addi	a0,a0,-544 # 80009138 <CONSOLE_STATUS+0x128>
    80003360:	00001097          	auipc	ra,0x1
    80003364:	dc0080e7          	jalr	-576(ra) # 80004120 <_Z11printStringPKc>
    80003368:	00000613          	li	a2,0
    8000336c:	00a00593          	li	a1,10
    80003370:	00048513          	mv	a0,s1
    80003374:	00001097          	auipc	ra,0x1
    80003378:	f08080e7          	jalr	-248(ra) # 8000427c <_Z8printIntmhh>
    8000337c:	00006517          	auipc	a0,0x6
    80003380:	fdc50513          	addi	a0,a0,-36 # 80009358 <CONSOLE_STATUS+0x348>
    80003384:	00001097          	auipc	ra,0x1
    80003388:	d9c080e7          	jalr	-612(ra) # 80004120 <_Z11printStringPKc>
    for (; i < 6; i++) {
    8000338c:	0014849b          	addiw	s1,s1,1
    80003390:	0ff4f493          	andi	s1,s1,255
    80003394:	00500793          	li	a5,5
    80003398:	fc97f0e3          	bgeu	a5,s1,80003358 <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    8000339c:	00006517          	auipc	a0,0x6
    800033a0:	d7450513          	addi	a0,a0,-652 # 80009110 <CONSOLE_STATUS+0x100>
    800033a4:	00001097          	auipc	ra,0x1
    800033a8:	d7c080e7          	jalr	-644(ra) # 80004120 <_Z11printStringPKc>
    finishedC = true;
    800033ac:	00100793          	li	a5,1
    800033b0:	00009717          	auipc	a4,0x9
    800033b4:	86f704a3          	sb	a5,-1943(a4) # 8000bc19 <_ZL9finishedC>
    thread_dispatch();
    800033b8:	ffffe097          	auipc	ra,0xffffe
    800033bc:	340080e7          	jalr	832(ra) # 800016f8 <_Z15thread_dispatchv>
}
    800033c0:	01813083          	ld	ra,24(sp)
    800033c4:	01013403          	ld	s0,16(sp)
    800033c8:	00813483          	ld	s1,8(sp)
    800033cc:	00013903          	ld	s2,0(sp)
    800033d0:	02010113          	addi	sp,sp,32
    800033d4:	00008067          	ret

00000000800033d8 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    800033d8:	fe010113          	addi	sp,sp,-32
    800033dc:	00113c23          	sd	ra,24(sp)
    800033e0:	00813823          	sd	s0,16(sp)
    800033e4:	00913423          	sd	s1,8(sp)
    800033e8:	01213023          	sd	s2,0(sp)
    800033ec:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    800033f0:	00000913          	li	s2,0
    800033f4:	0380006f          	j	8000342c <_ZL11workerBodyBPv+0x54>
            thread_dispatch();
    800033f8:	ffffe097          	auipc	ra,0xffffe
    800033fc:	300080e7          	jalr	768(ra) # 800016f8 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80003400:	00148493          	addi	s1,s1,1
    80003404:	000027b7          	lui	a5,0x2
    80003408:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    8000340c:	0097ee63          	bltu	a5,s1,80003428 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80003410:	00000713          	li	a4,0
    80003414:	000077b7          	lui	a5,0x7
    80003418:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    8000341c:	fce7eee3          	bltu	a5,a4,800033f8 <_ZL11workerBodyBPv+0x20>
    80003420:	00170713          	addi	a4,a4,1
    80003424:	ff1ff06f          	j	80003414 <_ZL11workerBodyBPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80003428:	00190913          	addi	s2,s2,1
    8000342c:	00f00793          	li	a5,15
    80003430:	0527e063          	bltu	a5,s2,80003470 <_ZL11workerBodyBPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80003434:	00006517          	auipc	a0,0x6
    80003438:	cec50513          	addi	a0,a0,-788 # 80009120 <CONSOLE_STATUS+0x110>
    8000343c:	00001097          	auipc	ra,0x1
    80003440:	ce4080e7          	jalr	-796(ra) # 80004120 <_Z11printStringPKc>
    80003444:	00000613          	li	a2,0
    80003448:	00a00593          	li	a1,10
    8000344c:	00090513          	mv	a0,s2
    80003450:	00001097          	auipc	ra,0x1
    80003454:	e2c080e7          	jalr	-468(ra) # 8000427c <_Z8printIntmhh>
    80003458:	00006517          	auipc	a0,0x6
    8000345c:	f0050513          	addi	a0,a0,-256 # 80009358 <CONSOLE_STATUS+0x348>
    80003460:	00001097          	auipc	ra,0x1
    80003464:	cc0080e7          	jalr	-832(ra) # 80004120 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80003468:	00000493          	li	s1,0
    8000346c:	f99ff06f          	j	80003404 <_ZL11workerBodyBPv+0x2c>
    printString("B finished!\n");
    80003470:	00006517          	auipc	a0,0x6
    80003474:	cb850513          	addi	a0,a0,-840 # 80009128 <CONSOLE_STATUS+0x118>
    80003478:	00001097          	auipc	ra,0x1
    8000347c:	ca8080e7          	jalr	-856(ra) # 80004120 <_Z11printStringPKc>
    finishedB = true;
    80003480:	00100793          	li	a5,1
    80003484:	00008717          	auipc	a4,0x8
    80003488:	78f70b23          	sb	a5,1942(a4) # 8000bc1a <_ZL9finishedB>
    thread_dispatch();
    8000348c:	ffffe097          	auipc	ra,0xffffe
    80003490:	26c080e7          	jalr	620(ra) # 800016f8 <_Z15thread_dispatchv>
}
    80003494:	01813083          	ld	ra,24(sp)
    80003498:	01013403          	ld	s0,16(sp)
    8000349c:	00813483          	ld	s1,8(sp)
    800034a0:	00013903          	ld	s2,0(sp)
    800034a4:	02010113          	addi	sp,sp,32
    800034a8:	00008067          	ret

00000000800034ac <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    800034ac:	fe010113          	addi	sp,sp,-32
    800034b0:	00113c23          	sd	ra,24(sp)
    800034b4:	00813823          	sd	s0,16(sp)
    800034b8:	00913423          	sd	s1,8(sp)
    800034bc:	01213023          	sd	s2,0(sp)
    800034c0:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    800034c4:	00000913          	li	s2,0
    800034c8:	0380006f          	j	80003500 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    800034cc:	ffffe097          	auipc	ra,0xffffe
    800034d0:	22c080e7          	jalr	556(ra) # 800016f8 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    800034d4:	00148493          	addi	s1,s1,1
    800034d8:	000027b7          	lui	a5,0x2
    800034dc:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800034e0:	0097ee63          	bltu	a5,s1,800034fc <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800034e4:	00000713          	li	a4,0
    800034e8:	000077b7          	lui	a5,0x7
    800034ec:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800034f0:	fce7eee3          	bltu	a5,a4,800034cc <_ZL11workerBodyAPv+0x20>
    800034f4:	00170713          	addi	a4,a4,1
    800034f8:	ff1ff06f          	j	800034e8 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    800034fc:	00190913          	addi	s2,s2,1
    80003500:	00900793          	li	a5,9
    80003504:	0527e063          	bltu	a5,s2,80003544 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80003508:	00006517          	auipc	a0,0x6
    8000350c:	c0050513          	addi	a0,a0,-1024 # 80009108 <CONSOLE_STATUS+0xf8>
    80003510:	00001097          	auipc	ra,0x1
    80003514:	c10080e7          	jalr	-1008(ra) # 80004120 <_Z11printStringPKc>
    80003518:	00000613          	li	a2,0
    8000351c:	00a00593          	li	a1,10
    80003520:	00090513          	mv	a0,s2
    80003524:	00001097          	auipc	ra,0x1
    80003528:	d58080e7          	jalr	-680(ra) # 8000427c <_Z8printIntmhh>
    8000352c:	00006517          	auipc	a0,0x6
    80003530:	e2c50513          	addi	a0,a0,-468 # 80009358 <CONSOLE_STATUS+0x348>
    80003534:	00001097          	auipc	ra,0x1
    80003538:	bec080e7          	jalr	-1044(ra) # 80004120 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    8000353c:	00000493          	li	s1,0
    80003540:	f99ff06f          	j	800034d8 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    80003544:	00006517          	auipc	a0,0x6
    80003548:	bcc50513          	addi	a0,a0,-1076 # 80009110 <CONSOLE_STATUS+0x100>
    8000354c:	00001097          	auipc	ra,0x1
    80003550:	bd4080e7          	jalr	-1068(ra) # 80004120 <_Z11printStringPKc>
    finishedA = true;
    80003554:	00100793          	li	a5,1
    80003558:	00008717          	auipc	a4,0x8
    8000355c:	6cf701a3          	sb	a5,1731(a4) # 8000bc1b <_ZL9finishedA>
}
    80003560:	01813083          	ld	ra,24(sp)
    80003564:	01013403          	ld	s0,16(sp)
    80003568:	00813483          	ld	s1,8(sp)
    8000356c:	00013903          	ld	s2,0(sp)
    80003570:	02010113          	addi	sp,sp,32
    80003574:	00008067          	ret

0000000080003578 <_Z18Threads_C_API_testv>:


void Threads_C_API_test() {
    80003578:	fd010113          	addi	sp,sp,-48
    8000357c:	02113423          	sd	ra,40(sp)
    80003580:	02813023          	sd	s0,32(sp)
    80003584:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80003588:	00000613          	li	a2,0
    8000358c:	00000597          	auipc	a1,0x0
    80003590:	f2058593          	addi	a1,a1,-224 # 800034ac <_ZL11workerBodyAPv>
    80003594:	fd040513          	addi	a0,s0,-48
    80003598:	ffffe097          	auipc	ra,0xffffe
    8000359c:	0bc080e7          	jalr	188(ra) # 80001654 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadA created\n");
    800035a0:	00006517          	auipc	a0,0x6
    800035a4:	c0050513          	addi	a0,a0,-1024 # 800091a0 <CONSOLE_STATUS+0x190>
    800035a8:	00001097          	auipc	ra,0x1
    800035ac:	b78080e7          	jalr	-1160(ra) # 80004120 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    800035b0:	00000613          	li	a2,0
    800035b4:	00000597          	auipc	a1,0x0
    800035b8:	e2458593          	addi	a1,a1,-476 # 800033d8 <_ZL11workerBodyBPv>
    800035bc:	fd840513          	addi	a0,s0,-40
    800035c0:	ffffe097          	auipc	ra,0xffffe
    800035c4:	094080e7          	jalr	148(ra) # 80001654 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadB created\n");
    800035c8:	00006517          	auipc	a0,0x6
    800035cc:	bf050513          	addi	a0,a0,-1040 # 800091b8 <CONSOLE_STATUS+0x1a8>
    800035d0:	00001097          	auipc	ra,0x1
    800035d4:	b50080e7          	jalr	-1200(ra) # 80004120 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    800035d8:	00000613          	li	a2,0
    800035dc:	00000597          	auipc	a1,0x0
    800035e0:	c7c58593          	addi	a1,a1,-900 # 80003258 <_ZL11workerBodyCPv>
    800035e4:	fe040513          	addi	a0,s0,-32
    800035e8:	ffffe097          	auipc	ra,0xffffe
    800035ec:	06c080e7          	jalr	108(ra) # 80001654 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadC created\n");
    800035f0:	00006517          	auipc	a0,0x6
    800035f4:	be050513          	addi	a0,a0,-1056 # 800091d0 <CONSOLE_STATUS+0x1c0>
    800035f8:	00001097          	auipc	ra,0x1
    800035fc:	b28080e7          	jalr	-1240(ra) # 80004120 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80003600:	00000613          	li	a2,0
    80003604:	00000597          	auipc	a1,0x0
    80003608:	b0c58593          	addi	a1,a1,-1268 # 80003110 <_ZL11workerBodyDPv>
    8000360c:	fe840513          	addi	a0,s0,-24
    80003610:	ffffe097          	auipc	ra,0xffffe
    80003614:	044080e7          	jalr	68(ra) # 80001654 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadD created\n");
    80003618:	00006517          	auipc	a0,0x6
    8000361c:	bd050513          	addi	a0,a0,-1072 # 800091e8 <CONSOLE_STATUS+0x1d8>
    80003620:	00001097          	auipc	ra,0x1
    80003624:	b00080e7          	jalr	-1280(ra) # 80004120 <_Z11printStringPKc>
    80003628:	00c0006f          	j	80003634 <_Z18Threads_C_API_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    8000362c:	ffffe097          	auipc	ra,0xffffe
    80003630:	0cc080e7          	jalr	204(ra) # 800016f8 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80003634:	00008797          	auipc	a5,0x8
    80003638:	5e77c783          	lbu	a5,1511(a5) # 8000bc1b <_ZL9finishedA>
    8000363c:	fe0788e3          	beqz	a5,8000362c <_Z18Threads_C_API_testv+0xb4>
    80003640:	00008797          	auipc	a5,0x8
    80003644:	5da7c783          	lbu	a5,1498(a5) # 8000bc1a <_ZL9finishedB>
    80003648:	fe0782e3          	beqz	a5,8000362c <_Z18Threads_C_API_testv+0xb4>
    8000364c:	00008797          	auipc	a5,0x8
    80003650:	5cd7c783          	lbu	a5,1485(a5) # 8000bc19 <_ZL9finishedC>
    80003654:	fc078ce3          	beqz	a5,8000362c <_Z18Threads_C_API_testv+0xb4>
    80003658:	00008797          	auipc	a5,0x8
    8000365c:	5c07c783          	lbu	a5,1472(a5) # 8000bc18 <_ZL9finishedD>
    80003660:	fc0786e3          	beqz	a5,8000362c <_Z18Threads_C_API_testv+0xb4>
    }

}
    80003664:	02813083          	ld	ra,40(sp)
    80003668:	02013403          	ld	s0,32(sp)
    8000366c:	03010113          	addi	sp,sp,48
    80003670:	00008067          	ret

0000000080003674 <_ZN16ProducerKeyboard16producerKeyboardEPv>:
    void run() override {
        producerKeyboard(td);
    }
};

void ProducerKeyboard::producerKeyboard(void *arg) {
    80003674:	fd010113          	addi	sp,sp,-48
    80003678:	02113423          	sd	ra,40(sp)
    8000367c:	02813023          	sd	s0,32(sp)
    80003680:	00913c23          	sd	s1,24(sp)
    80003684:	01213823          	sd	s2,16(sp)
    80003688:	01313423          	sd	s3,8(sp)
    8000368c:	03010413          	addi	s0,sp,48
    80003690:	00050993          	mv	s3,a0
    80003694:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    80003698:	00000913          	li	s2,0
    8000369c:	00c0006f          	j	800036a8 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    800036a0:	00003097          	auipc	ra,0x3
    800036a4:	6e8080e7          	jalr	1768(ra) # 80006d88 <_ZN6Thread8dispatchEv>
    while ((key = getc()) != 0x1b) {
    800036a8:	ffffe097          	auipc	ra,0xffffe
    800036ac:	16c080e7          	jalr	364(ra) # 80001814 <_Z4getcv>
    800036b0:	0005059b          	sext.w	a1,a0
    800036b4:	01b00793          	li	a5,27
    800036b8:	02f58a63          	beq	a1,a5,800036ec <_ZN16ProducerKeyboard16producerKeyboardEPv+0x78>
        data->buffer->put(key);
    800036bc:	0084b503          	ld	a0,8(s1)
    800036c0:	00001097          	auipc	ra,0x1
    800036c4:	e14080e7          	jalr	-492(ra) # 800044d4 <_ZN9BufferCPP3putEi>
        i++;
    800036c8:	0019071b          	addiw	a4,s2,1
    800036cc:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    800036d0:	0004a683          	lw	a3,0(s1)
    800036d4:	0026979b          	slliw	a5,a3,0x2
    800036d8:	00d787bb          	addw	a5,a5,a3
    800036dc:	0017979b          	slliw	a5,a5,0x1
    800036e0:	02f767bb          	remw	a5,a4,a5
    800036e4:	fc0792e3          	bnez	a5,800036a8 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    800036e8:	fb9ff06f          	j	800036a0 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x2c>
        }
    }

    threadEnd = 1;
    800036ec:	00100793          	li	a5,1
    800036f0:	00008717          	auipc	a4,0x8
    800036f4:	52f72823          	sw	a5,1328(a4) # 8000bc20 <_ZL9threadEnd>
    td->buffer->put('!');
    800036f8:	0209b783          	ld	a5,32(s3)
    800036fc:	02100593          	li	a1,33
    80003700:	0087b503          	ld	a0,8(a5)
    80003704:	00001097          	auipc	ra,0x1
    80003708:	dd0080e7          	jalr	-560(ra) # 800044d4 <_ZN9BufferCPP3putEi>

    data->wait->signal();
    8000370c:	0104b503          	ld	a0,16(s1)
    80003710:	00000097          	auipc	ra,0x0
    80003714:	960080e7          	jalr	-1696(ra) # 80003070 <_ZN9Semaphore6signalEv>
}
    80003718:	02813083          	ld	ra,40(sp)
    8000371c:	02013403          	ld	s0,32(sp)
    80003720:	01813483          	ld	s1,24(sp)
    80003724:	01013903          	ld	s2,16(sp)
    80003728:	00813983          	ld	s3,8(sp)
    8000372c:	03010113          	addi	sp,sp,48
    80003730:	00008067          	ret

0000000080003734 <_ZN12ProducerSync8producerEPv>:
    void run() override {
        producer(td);
    }
};

void ProducerSync::producer(void *arg) {
    80003734:	fe010113          	addi	sp,sp,-32
    80003738:	00113c23          	sd	ra,24(sp)
    8000373c:	00813823          	sd	s0,16(sp)
    80003740:	00913423          	sd	s1,8(sp)
    80003744:	01213023          	sd	s2,0(sp)
    80003748:	02010413          	addi	s0,sp,32
    8000374c:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80003750:	00000913          	li	s2,0
    80003754:	00c0006f          	j	80003760 <_ZN12ProducerSync8producerEPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    80003758:	00003097          	auipc	ra,0x3
    8000375c:	630080e7          	jalr	1584(ra) # 80006d88 <_ZN6Thread8dispatchEv>
    while (!threadEnd) {
    80003760:	00008797          	auipc	a5,0x8
    80003764:	4c07a783          	lw	a5,1216(a5) # 8000bc20 <_ZL9threadEnd>
    80003768:	02079e63          	bnez	a5,800037a4 <_ZN12ProducerSync8producerEPv+0x70>
        data->buffer->put(data->id + '0');
    8000376c:	0004a583          	lw	a1,0(s1)
    80003770:	0305859b          	addiw	a1,a1,48
    80003774:	0084b503          	ld	a0,8(s1)
    80003778:	00001097          	auipc	ra,0x1
    8000377c:	d5c080e7          	jalr	-676(ra) # 800044d4 <_ZN9BufferCPP3putEi>
        i++;
    80003780:	0019071b          	addiw	a4,s2,1
    80003784:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80003788:	0004a683          	lw	a3,0(s1)
    8000378c:	0026979b          	slliw	a5,a3,0x2
    80003790:	00d787bb          	addw	a5,a5,a3
    80003794:	0017979b          	slliw	a5,a5,0x1
    80003798:	02f767bb          	remw	a5,a4,a5
    8000379c:	fc0792e3          	bnez	a5,80003760 <_ZN12ProducerSync8producerEPv+0x2c>
    800037a0:	fb9ff06f          	j	80003758 <_ZN12ProducerSync8producerEPv+0x24>
        }
    }

    data->wait->signal();
    800037a4:	0104b503          	ld	a0,16(s1)
    800037a8:	00000097          	auipc	ra,0x0
    800037ac:	8c8080e7          	jalr	-1848(ra) # 80003070 <_ZN9Semaphore6signalEv>
}
    800037b0:	01813083          	ld	ra,24(sp)
    800037b4:	01013403          	ld	s0,16(sp)
    800037b8:	00813483          	ld	s1,8(sp)
    800037bc:	00013903          	ld	s2,0(sp)
    800037c0:	02010113          	addi	sp,sp,32
    800037c4:	00008067          	ret

00000000800037c8 <_ZN12ConsumerSync8consumerEPv>:
    void run() override {
        consumer(td);
    }
};

void ConsumerSync::consumer(void *arg) {
    800037c8:	fd010113          	addi	sp,sp,-48
    800037cc:	02113423          	sd	ra,40(sp)
    800037d0:	02813023          	sd	s0,32(sp)
    800037d4:	00913c23          	sd	s1,24(sp)
    800037d8:	01213823          	sd	s2,16(sp)
    800037dc:	01313423          	sd	s3,8(sp)
    800037e0:	01413023          	sd	s4,0(sp)
    800037e4:	03010413          	addi	s0,sp,48
    800037e8:	00050993          	mv	s3,a0
    800037ec:	00058913          	mv	s2,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    800037f0:	00000a13          	li	s4,0
    800037f4:	01c0006f          	j	80003810 <_ZN12ConsumerSync8consumerEPv+0x48>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            Thread::dispatch();
    800037f8:	00003097          	auipc	ra,0x3
    800037fc:	590080e7          	jalr	1424(ra) # 80006d88 <_ZN6Thread8dispatchEv>
    80003800:	0500006f          	j	80003850 <_ZN12ConsumerSync8consumerEPv+0x88>
        }

        if (i % 80 == 0) {
            putc('\n');
    80003804:	00a00513          	li	a0,10
    80003808:	ffffe097          	auipc	ra,0xffffe
    8000380c:	040080e7          	jalr	64(ra) # 80001848 <_Z4putcc>
    while (!threadEnd) {
    80003810:	00008797          	auipc	a5,0x8
    80003814:	4107a783          	lw	a5,1040(a5) # 8000bc20 <_ZL9threadEnd>
    80003818:	06079263          	bnez	a5,8000387c <_ZN12ConsumerSync8consumerEPv+0xb4>
        int key = data->buffer->get();
    8000381c:	00893503          	ld	a0,8(s2)
    80003820:	00001097          	auipc	ra,0x1
    80003824:	d44080e7          	jalr	-700(ra) # 80004564 <_ZN9BufferCPP3getEv>
        i++;
    80003828:	001a049b          	addiw	s1,s4,1
    8000382c:	00048a1b          	sext.w	s4,s1
        putc(key);
    80003830:	0ff57513          	andi	a0,a0,255
    80003834:	ffffe097          	auipc	ra,0xffffe
    80003838:	014080e7          	jalr	20(ra) # 80001848 <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    8000383c:	00092703          	lw	a4,0(s2)
    80003840:	0027179b          	slliw	a5,a4,0x2
    80003844:	00e787bb          	addw	a5,a5,a4
    80003848:	02f4e7bb          	remw	a5,s1,a5
    8000384c:	fa0786e3          	beqz	a5,800037f8 <_ZN12ConsumerSync8consumerEPv+0x30>
        if (i % 80 == 0) {
    80003850:	05000793          	li	a5,80
    80003854:	02f4e4bb          	remw	s1,s1,a5
    80003858:	fa049ce3          	bnez	s1,80003810 <_ZN12ConsumerSync8consumerEPv+0x48>
    8000385c:	fa9ff06f          	j	80003804 <_ZN12ConsumerSync8consumerEPv+0x3c>
        }
    }


    while (td->buffer->getCnt() > 0) {
        int key = td->buffer->get();
    80003860:	0209b783          	ld	a5,32(s3)
    80003864:	0087b503          	ld	a0,8(a5)
    80003868:	00001097          	auipc	ra,0x1
    8000386c:	cfc080e7          	jalr	-772(ra) # 80004564 <_ZN9BufferCPP3getEv>
        Console::putc(key);
    80003870:	0ff57513          	andi	a0,a0,255
    80003874:	00001097          	auipc	ra,0x1
    80003878:	138080e7          	jalr	312(ra) # 800049ac <_ZN7Console4putcEc>
    while (td->buffer->getCnt() > 0) {
    8000387c:	0209b783          	ld	a5,32(s3)
    80003880:	0087b503          	ld	a0,8(a5)
    80003884:	00001097          	auipc	ra,0x1
    80003888:	d6c080e7          	jalr	-660(ra) # 800045f0 <_ZN9BufferCPP6getCntEv>
    8000388c:	fca04ae3          	bgtz	a0,80003860 <_ZN12ConsumerSync8consumerEPv+0x98>
    }

    data->wait->signal();
    80003890:	01093503          	ld	a0,16(s2)
    80003894:	fffff097          	auipc	ra,0xfffff
    80003898:	7dc080e7          	jalr	2012(ra) # 80003070 <_ZN9Semaphore6signalEv>
}
    8000389c:	02813083          	ld	ra,40(sp)
    800038a0:	02013403          	ld	s0,32(sp)
    800038a4:	01813483          	ld	s1,24(sp)
    800038a8:	01013903          	ld	s2,16(sp)
    800038ac:	00813983          	ld	s3,8(sp)
    800038b0:	00013a03          	ld	s4,0(sp)
    800038b4:	03010113          	addi	sp,sp,48
    800038b8:	00008067          	ret

00000000800038bc <_Z29producerConsumer_CPP_Sync_APIv>:

void producerConsumer_CPP_Sync_API() {
    800038bc:	f8010113          	addi	sp,sp,-128
    800038c0:	06113c23          	sd	ra,120(sp)
    800038c4:	06813823          	sd	s0,112(sp)
    800038c8:	06913423          	sd	s1,104(sp)
    800038cc:	07213023          	sd	s2,96(sp)
    800038d0:	05313c23          	sd	s3,88(sp)
    800038d4:	05413823          	sd	s4,80(sp)
    800038d8:	05513423          	sd	s5,72(sp)
    800038dc:	05613023          	sd	s6,64(sp)
    800038e0:	03713c23          	sd	s7,56(sp)
    800038e4:	03813823          	sd	s8,48(sp)
    800038e8:	03913423          	sd	s9,40(sp)
    800038ec:	08010413          	addi	s0,sp,128
    for (int i = 0; i < threadNum; i++) {
        delete threads[i];
    }
    delete consumerThread;
    delete waitForAll;
    delete buffer;
    800038f0:	00010b93          	mv	s7,sp
    printString("Unesite broj proizvodjaca?\n");
    800038f4:	00005517          	auipc	a0,0x5
    800038f8:	72c50513          	addi	a0,a0,1836 # 80009020 <CONSOLE_STATUS+0x10>
    800038fc:	00001097          	auipc	ra,0x1
    80003900:	824080e7          	jalr	-2012(ra) # 80004120 <_Z11printStringPKc>
    getString(input, 30);
    80003904:	01e00593          	li	a1,30
    80003908:	f8040493          	addi	s1,s0,-128
    8000390c:	00048513          	mv	a0,s1
    80003910:	00001097          	auipc	ra,0x1
    80003914:	888080e7          	jalr	-1912(ra) # 80004198 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80003918:	00048513          	mv	a0,s1
    8000391c:	00001097          	auipc	ra,0x1
    80003920:	910080e7          	jalr	-1776(ra) # 8000422c <_Z11stringToIntPKc>
    80003924:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    80003928:	00005517          	auipc	a0,0x5
    8000392c:	71850513          	addi	a0,a0,1816 # 80009040 <CONSOLE_STATUS+0x30>
    80003930:	00000097          	auipc	ra,0x0
    80003934:	7f0080e7          	jalr	2032(ra) # 80004120 <_Z11printStringPKc>
    getString(input, 30);
    80003938:	01e00593          	li	a1,30
    8000393c:	00048513          	mv	a0,s1
    80003940:	00001097          	auipc	ra,0x1
    80003944:	858080e7          	jalr	-1960(ra) # 80004198 <_Z9getStringPci>
    n = stringToInt(input);
    80003948:	00048513          	mv	a0,s1
    8000394c:	00001097          	auipc	ra,0x1
    80003950:	8e0080e7          	jalr	-1824(ra) # 8000422c <_Z11stringToIntPKc>
    80003954:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    80003958:	00005517          	auipc	a0,0x5
    8000395c:	70850513          	addi	a0,a0,1800 # 80009060 <CONSOLE_STATUS+0x50>
    80003960:	00000097          	auipc	ra,0x0
    80003964:	7c0080e7          	jalr	1984(ra) # 80004120 <_Z11printStringPKc>
    80003968:	00000613          	li	a2,0
    8000396c:	00a00593          	li	a1,10
    80003970:	00090513          	mv	a0,s2
    80003974:	00001097          	auipc	ra,0x1
    80003978:	908080e7          	jalr	-1784(ra) # 8000427c <_Z8printIntmhh>
    printString(" i velicina bafera "); printInt(n);
    8000397c:	00005517          	auipc	a0,0x5
    80003980:	6fc50513          	addi	a0,a0,1788 # 80009078 <CONSOLE_STATUS+0x68>
    80003984:	00000097          	auipc	ra,0x0
    80003988:	79c080e7          	jalr	1948(ra) # 80004120 <_Z11printStringPKc>
    8000398c:	00000613          	li	a2,0
    80003990:	00a00593          	li	a1,10
    80003994:	00048513          	mv	a0,s1
    80003998:	00001097          	auipc	ra,0x1
    8000399c:	8e4080e7          	jalr	-1820(ra) # 8000427c <_Z8printIntmhh>
    printString(".\n");
    800039a0:	00005517          	auipc	a0,0x5
    800039a4:	6f050513          	addi	a0,a0,1776 # 80009090 <CONSOLE_STATUS+0x80>
    800039a8:	00000097          	auipc	ra,0x0
    800039ac:	778080e7          	jalr	1912(ra) # 80004120 <_Z11printStringPKc>
    if(threadNum > n) {
    800039b0:	0324c463          	blt	s1,s2,800039d8 <_Z29producerConsumer_CPP_Sync_APIv+0x11c>
    } else if (threadNum < 1) {
    800039b4:	03205c63          	blez	s2,800039ec <_Z29producerConsumer_CPP_Sync_APIv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    800039b8:	03800513          	li	a0,56
    800039bc:	00001097          	auipc	ra,0x1
    800039c0:	448080e7          	jalr	1096(ra) # 80004e04 <_Znwm>
    800039c4:	00050a93          	mv	s5,a0
    800039c8:	00048593          	mv	a1,s1
    800039cc:	00001097          	auipc	ra,0x1
    800039d0:	9b4080e7          	jalr	-1612(ra) # 80004380 <_ZN9BufferCPPC1Ei>
    800039d4:	0300006f          	j	80003a04 <_Z29producerConsumer_CPP_Sync_APIv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    800039d8:	00005517          	auipc	a0,0x5
    800039dc:	6c050513          	addi	a0,a0,1728 # 80009098 <CONSOLE_STATUS+0x88>
    800039e0:	00000097          	auipc	ra,0x0
    800039e4:	740080e7          	jalr	1856(ra) # 80004120 <_Z11printStringPKc>
        return;
    800039e8:	0140006f          	j	800039fc <_Z29producerConsumer_CPP_Sync_APIv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    800039ec:	00005517          	auipc	a0,0x5
    800039f0:	6ec50513          	addi	a0,a0,1772 # 800090d8 <CONSOLE_STATUS+0xc8>
    800039f4:	00000097          	auipc	ra,0x0
    800039f8:	72c080e7          	jalr	1836(ra) # 80004120 <_Z11printStringPKc>
        return;
    800039fc:	000b8113          	mv	sp,s7
    80003a00:	23c0006f          	j	80003c3c <_Z29producerConsumer_CPP_Sync_APIv+0x380>
    waitForAll = new Semaphore(0);
    80003a04:	01800513          	li	a0,24
    80003a08:	00001097          	auipc	ra,0x1
    80003a0c:	3fc080e7          	jalr	1020(ra) # 80004e04 <_Znwm>
    80003a10:	00050493          	mv	s1,a0
    80003a14:	00000593          	li	a1,0
    80003a18:	fffff097          	auipc	ra,0xfffff
    80003a1c:	5f4080e7          	jalr	1524(ra) # 8000300c <_ZN9SemaphoreC1Ej>
    80003a20:	00008797          	auipc	a5,0x8
    80003a24:	2097b423          	sd	s1,520(a5) # 8000bc28 <_ZL10waitForAll>
    Thread* threads[threadNum];
    80003a28:	00391793          	slli	a5,s2,0x3
    80003a2c:	00f78793          	addi	a5,a5,15
    80003a30:	ff07f793          	andi	a5,a5,-16
    80003a34:	40f10133          	sub	sp,sp,a5
    80003a38:	00010993          	mv	s3,sp
    struct thread_data data[threadNum + 1];
    80003a3c:	0019071b          	addiw	a4,s2,1
    80003a40:	00171793          	slli	a5,a4,0x1
    80003a44:	00e787b3          	add	a5,a5,a4
    80003a48:	00379793          	slli	a5,a5,0x3
    80003a4c:	00f78793          	addi	a5,a5,15
    80003a50:	ff07f793          	andi	a5,a5,-16
    80003a54:	40f10133          	sub	sp,sp,a5
    80003a58:	00010a13          	mv	s4,sp
    data[threadNum].id = threadNum;
    80003a5c:	00191793          	slli	a5,s2,0x1
    80003a60:	012787b3          	add	a5,a5,s2
    80003a64:	00379793          	slli	a5,a5,0x3
    80003a68:	00fa07b3          	add	a5,s4,a5
    80003a6c:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    80003a70:	0157b423          	sd	s5,8(a5)
    data[threadNum].wait = waitForAll;
    80003a74:	0097b823          	sd	s1,16(a5)
    consumerThread = new ConsumerSync(data+threadNum);
    80003a78:	02800513          	li	a0,40
    80003a7c:	00001097          	auipc	ra,0x1
    80003a80:	388080e7          	jalr	904(ra) # 80004e04 <_Znwm>
    80003a84:	00050b13          	mv	s6,a0
    80003a88:	00191493          	slli	s1,s2,0x1
    80003a8c:	012484b3          	add	s1,s1,s2
    80003a90:	00349493          	slli	s1,s1,0x3
    80003a94:	009a04b3          	add	s1,s4,s1
    ConsumerSync(thread_data* _td):Thread(), td(_td) {}
    80003a98:	00003097          	auipc	ra,0x3
    80003a9c:	3d4080e7          	jalr	980(ra) # 80006e6c <_ZN6ThreadC1Ev>
    80003aa0:	00008797          	auipc	a5,0x8
    80003aa4:	fe078793          	addi	a5,a5,-32 # 8000ba80 <_ZTV12ConsumerSync+0x10>
    80003aa8:	00fb3023          	sd	a5,0(s6)
    80003aac:	029b3023          	sd	s1,32(s6)
    consumerThread->start();
    80003ab0:	000b0513          	mv	a0,s6
    80003ab4:	00003097          	auipc	ra,0x3
    80003ab8:	32c080e7          	jalr	812(ra) # 80006de0 <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    80003abc:	00000493          	li	s1,0
    80003ac0:	0380006f          	j	80003af8 <_Z29producerConsumer_CPP_Sync_APIv+0x23c>
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    80003ac4:	00008797          	auipc	a5,0x8
    80003ac8:	f9478793          	addi	a5,a5,-108 # 8000ba58 <_ZTV12ProducerSync+0x10>
    80003acc:	00fcb023          	sd	a5,0(s9)
    80003ad0:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerSync(data+i);
    80003ad4:	00349793          	slli	a5,s1,0x3
    80003ad8:	00f987b3          	add	a5,s3,a5
    80003adc:	0197b023          	sd	s9,0(a5)
        threads[i]->start();
    80003ae0:	00349793          	slli	a5,s1,0x3
    80003ae4:	00f987b3          	add	a5,s3,a5
    80003ae8:	0007b503          	ld	a0,0(a5)
    80003aec:	00003097          	auipc	ra,0x3
    80003af0:	2f4080e7          	jalr	756(ra) # 80006de0 <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    80003af4:	0014849b          	addiw	s1,s1,1
    80003af8:	0b24d063          	bge	s1,s2,80003b98 <_Z29producerConsumer_CPP_Sync_APIv+0x2dc>
        data[i].id = i;
    80003afc:	00149793          	slli	a5,s1,0x1
    80003b00:	009787b3          	add	a5,a5,s1
    80003b04:	00379793          	slli	a5,a5,0x3
    80003b08:	00fa07b3          	add	a5,s4,a5
    80003b0c:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    80003b10:	0157b423          	sd	s5,8(a5)
        data[i].wait = waitForAll;
    80003b14:	00008717          	auipc	a4,0x8
    80003b18:	11473703          	ld	a4,276(a4) # 8000bc28 <_ZL10waitForAll>
    80003b1c:	00e7b823          	sd	a4,16(a5)
        if(i>0) {
    80003b20:	02905863          	blez	s1,80003b50 <_Z29producerConsumer_CPP_Sync_APIv+0x294>
            threads[i] = new ProducerSync(data+i);
    80003b24:	02800513          	li	a0,40
    80003b28:	00001097          	auipc	ra,0x1
    80003b2c:	2dc080e7          	jalr	732(ra) # 80004e04 <_Znwm>
    80003b30:	00050c93          	mv	s9,a0
    80003b34:	00149c13          	slli	s8,s1,0x1
    80003b38:	009c0c33          	add	s8,s8,s1
    80003b3c:	003c1c13          	slli	s8,s8,0x3
    80003b40:	018a0c33          	add	s8,s4,s8
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    80003b44:	00003097          	auipc	ra,0x3
    80003b48:	328080e7          	jalr	808(ra) # 80006e6c <_ZN6ThreadC1Ev>
    80003b4c:	f79ff06f          	j	80003ac4 <_Z29producerConsumer_CPP_Sync_APIv+0x208>
            threads[i] = new ProducerKeyboard(data+i);
    80003b50:	02800513          	li	a0,40
    80003b54:	00001097          	auipc	ra,0x1
    80003b58:	2b0080e7          	jalr	688(ra) # 80004e04 <_Znwm>
    80003b5c:	00050c93          	mv	s9,a0
    80003b60:	00149c13          	slli	s8,s1,0x1
    80003b64:	009c0c33          	add	s8,s8,s1
    80003b68:	003c1c13          	slli	s8,s8,0x3
    80003b6c:	018a0c33          	add	s8,s4,s8
    ProducerKeyboard(thread_data* _td):Thread(), td(_td) {}
    80003b70:	00003097          	auipc	ra,0x3
    80003b74:	2fc080e7          	jalr	764(ra) # 80006e6c <_ZN6ThreadC1Ev>
    80003b78:	00008797          	auipc	a5,0x8
    80003b7c:	eb878793          	addi	a5,a5,-328 # 8000ba30 <_ZTV16ProducerKeyboard+0x10>
    80003b80:	00fcb023          	sd	a5,0(s9)
    80003b84:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerKeyboard(data+i);
    80003b88:	00349793          	slli	a5,s1,0x3
    80003b8c:	00f987b3          	add	a5,s3,a5
    80003b90:	0197b023          	sd	s9,0(a5)
    80003b94:	f4dff06f          	j	80003ae0 <_Z29producerConsumer_CPP_Sync_APIv+0x224>
    Thread::dispatch();
    80003b98:	00003097          	auipc	ra,0x3
    80003b9c:	1f0080e7          	jalr	496(ra) # 80006d88 <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    80003ba0:	00000493          	li	s1,0
    80003ba4:	00994e63          	blt	s2,s1,80003bc0 <_Z29producerConsumer_CPP_Sync_APIv+0x304>
        waitForAll->wait();
    80003ba8:	00008517          	auipc	a0,0x8
    80003bac:	08053503          	ld	a0,128(a0) # 8000bc28 <_ZL10waitForAll>
    80003bb0:	fffff097          	auipc	ra,0xfffff
    80003bb4:	494080e7          	jalr	1172(ra) # 80003044 <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    80003bb8:	0014849b          	addiw	s1,s1,1
    80003bbc:	fe9ff06f          	j	80003ba4 <_Z29producerConsumer_CPP_Sync_APIv+0x2e8>
    for (int i = 0; i < threadNum; i++) {
    80003bc0:	00000493          	li	s1,0
    80003bc4:	0080006f          	j	80003bcc <_Z29producerConsumer_CPP_Sync_APIv+0x310>
    80003bc8:	0014849b          	addiw	s1,s1,1
    80003bcc:	0324d263          	bge	s1,s2,80003bf0 <_Z29producerConsumer_CPP_Sync_APIv+0x334>
        delete threads[i];
    80003bd0:	00349793          	slli	a5,s1,0x3
    80003bd4:	00f987b3          	add	a5,s3,a5
    80003bd8:	0007b503          	ld	a0,0(a5)
    80003bdc:	fe0506e3          	beqz	a0,80003bc8 <_Z29producerConsumer_CPP_Sync_APIv+0x30c>
    80003be0:	00053783          	ld	a5,0(a0)
    80003be4:	0087b783          	ld	a5,8(a5)
    80003be8:	000780e7          	jalr	a5
    80003bec:	fddff06f          	j	80003bc8 <_Z29producerConsumer_CPP_Sync_APIv+0x30c>
    delete consumerThread;
    80003bf0:	000b0a63          	beqz	s6,80003c04 <_Z29producerConsumer_CPP_Sync_APIv+0x348>
    80003bf4:	000b3783          	ld	a5,0(s6)
    80003bf8:	0087b783          	ld	a5,8(a5)
    80003bfc:	000b0513          	mv	a0,s6
    80003c00:	000780e7          	jalr	a5
    delete waitForAll;
    80003c04:	00008517          	auipc	a0,0x8
    80003c08:	02453503          	ld	a0,36(a0) # 8000bc28 <_ZL10waitForAll>
    80003c0c:	00050863          	beqz	a0,80003c1c <_Z29producerConsumer_CPP_Sync_APIv+0x360>
    80003c10:	00053783          	ld	a5,0(a0)
    80003c14:	0087b783          	ld	a5,8(a5)
    80003c18:	000780e7          	jalr	a5
    delete buffer;
    80003c1c:	000a8e63          	beqz	s5,80003c38 <_Z29producerConsumer_CPP_Sync_APIv+0x37c>
    80003c20:	000a8513          	mv	a0,s5
    80003c24:	00001097          	auipc	ra,0x1
    80003c28:	a54080e7          	jalr	-1452(ra) # 80004678 <_ZN9BufferCPPD1Ev>
    80003c2c:	000a8513          	mv	a0,s5
    80003c30:	00001097          	auipc	ra,0x1
    80003c34:	234080e7          	jalr	564(ra) # 80004e64 <_ZdlPv>
    80003c38:	000b8113          	mv	sp,s7

}
    80003c3c:	f8040113          	addi	sp,s0,-128
    80003c40:	07813083          	ld	ra,120(sp)
    80003c44:	07013403          	ld	s0,112(sp)
    80003c48:	06813483          	ld	s1,104(sp)
    80003c4c:	06013903          	ld	s2,96(sp)
    80003c50:	05813983          	ld	s3,88(sp)
    80003c54:	05013a03          	ld	s4,80(sp)
    80003c58:	04813a83          	ld	s5,72(sp)
    80003c5c:	04013b03          	ld	s6,64(sp)
    80003c60:	03813b83          	ld	s7,56(sp)
    80003c64:	03013c03          	ld	s8,48(sp)
    80003c68:	02813c83          	ld	s9,40(sp)
    80003c6c:	08010113          	addi	sp,sp,128
    80003c70:	00008067          	ret
    80003c74:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    80003c78:	000a8513          	mv	a0,s5
    80003c7c:	00001097          	auipc	ra,0x1
    80003c80:	1e8080e7          	jalr	488(ra) # 80004e64 <_ZdlPv>
    80003c84:	00048513          	mv	a0,s1
    80003c88:	00009097          	auipc	ra,0x9
    80003c8c:	1f0080e7          	jalr	496(ra) # 8000ce78 <_Unwind_Resume>
    80003c90:	00050913          	mv	s2,a0
    waitForAll = new Semaphore(0);
    80003c94:	00048513          	mv	a0,s1
    80003c98:	00001097          	auipc	ra,0x1
    80003c9c:	1cc080e7          	jalr	460(ra) # 80004e64 <_ZdlPv>
    80003ca0:	00090513          	mv	a0,s2
    80003ca4:	00009097          	auipc	ra,0x9
    80003ca8:	1d4080e7          	jalr	468(ra) # 8000ce78 <_Unwind_Resume>
    80003cac:	00050493          	mv	s1,a0
    consumerThread = new ConsumerSync(data+threadNum);
    80003cb0:	000b0513          	mv	a0,s6
    80003cb4:	00001097          	auipc	ra,0x1
    80003cb8:	1b0080e7          	jalr	432(ra) # 80004e64 <_ZdlPv>
    80003cbc:	00048513          	mv	a0,s1
    80003cc0:	00009097          	auipc	ra,0x9
    80003cc4:	1b8080e7          	jalr	440(ra) # 8000ce78 <_Unwind_Resume>
    80003cc8:	00050493          	mv	s1,a0
            threads[i] = new ProducerSync(data+i);
    80003ccc:	000c8513          	mv	a0,s9
    80003cd0:	00001097          	auipc	ra,0x1
    80003cd4:	194080e7          	jalr	404(ra) # 80004e64 <_ZdlPv>
    80003cd8:	00048513          	mv	a0,s1
    80003cdc:	00009097          	auipc	ra,0x9
    80003ce0:	19c080e7          	jalr	412(ra) # 8000ce78 <_Unwind_Resume>
    80003ce4:	00050493          	mv	s1,a0
            threads[i] = new ProducerKeyboard(data+i);
    80003ce8:	000c8513          	mv	a0,s9
    80003cec:	00001097          	auipc	ra,0x1
    80003cf0:	178080e7          	jalr	376(ra) # 80004e64 <_ZdlPv>
    80003cf4:	00048513          	mv	a0,s1
    80003cf8:	00009097          	auipc	ra,0x9
    80003cfc:	180080e7          	jalr	384(ra) # 8000ce78 <_Unwind_Resume>

0000000080003d00 <_ZN12ConsumerSyncD1Ev>:
class ConsumerSync:public Thread {
    80003d00:	ff010113          	addi	sp,sp,-16
    80003d04:	00113423          	sd	ra,8(sp)
    80003d08:	00813023          	sd	s0,0(sp)
    80003d0c:	01010413          	addi	s0,sp,16
    80003d10:	00008797          	auipc	a5,0x8
    80003d14:	d7078793          	addi	a5,a5,-656 # 8000ba80 <_ZTV12ConsumerSync+0x10>
    80003d18:	00f53023          	sd	a5,0(a0)
    80003d1c:	00003097          	auipc	ra,0x3
    80003d20:	fc8080e7          	jalr	-56(ra) # 80006ce4 <_ZN6ThreadD1Ev>
    80003d24:	00813083          	ld	ra,8(sp)
    80003d28:	00013403          	ld	s0,0(sp)
    80003d2c:	01010113          	addi	sp,sp,16
    80003d30:	00008067          	ret

0000000080003d34 <_ZN12ConsumerSyncD0Ev>:
    80003d34:	fe010113          	addi	sp,sp,-32
    80003d38:	00113c23          	sd	ra,24(sp)
    80003d3c:	00813823          	sd	s0,16(sp)
    80003d40:	00913423          	sd	s1,8(sp)
    80003d44:	02010413          	addi	s0,sp,32
    80003d48:	00050493          	mv	s1,a0
    80003d4c:	00008797          	auipc	a5,0x8
    80003d50:	d3478793          	addi	a5,a5,-716 # 8000ba80 <_ZTV12ConsumerSync+0x10>
    80003d54:	00f53023          	sd	a5,0(a0)
    80003d58:	00003097          	auipc	ra,0x3
    80003d5c:	f8c080e7          	jalr	-116(ra) # 80006ce4 <_ZN6ThreadD1Ev>
    80003d60:	00048513          	mv	a0,s1
    80003d64:	00001097          	auipc	ra,0x1
    80003d68:	100080e7          	jalr	256(ra) # 80004e64 <_ZdlPv>
    80003d6c:	01813083          	ld	ra,24(sp)
    80003d70:	01013403          	ld	s0,16(sp)
    80003d74:	00813483          	ld	s1,8(sp)
    80003d78:	02010113          	addi	sp,sp,32
    80003d7c:	00008067          	ret

0000000080003d80 <_ZN12ProducerSyncD1Ev>:
class ProducerSync:public Thread {
    80003d80:	ff010113          	addi	sp,sp,-16
    80003d84:	00113423          	sd	ra,8(sp)
    80003d88:	00813023          	sd	s0,0(sp)
    80003d8c:	01010413          	addi	s0,sp,16
    80003d90:	00008797          	auipc	a5,0x8
    80003d94:	cc878793          	addi	a5,a5,-824 # 8000ba58 <_ZTV12ProducerSync+0x10>
    80003d98:	00f53023          	sd	a5,0(a0)
    80003d9c:	00003097          	auipc	ra,0x3
    80003da0:	f48080e7          	jalr	-184(ra) # 80006ce4 <_ZN6ThreadD1Ev>
    80003da4:	00813083          	ld	ra,8(sp)
    80003da8:	00013403          	ld	s0,0(sp)
    80003dac:	01010113          	addi	sp,sp,16
    80003db0:	00008067          	ret

0000000080003db4 <_ZN12ProducerSyncD0Ev>:
    80003db4:	fe010113          	addi	sp,sp,-32
    80003db8:	00113c23          	sd	ra,24(sp)
    80003dbc:	00813823          	sd	s0,16(sp)
    80003dc0:	00913423          	sd	s1,8(sp)
    80003dc4:	02010413          	addi	s0,sp,32
    80003dc8:	00050493          	mv	s1,a0
    80003dcc:	00008797          	auipc	a5,0x8
    80003dd0:	c8c78793          	addi	a5,a5,-884 # 8000ba58 <_ZTV12ProducerSync+0x10>
    80003dd4:	00f53023          	sd	a5,0(a0)
    80003dd8:	00003097          	auipc	ra,0x3
    80003ddc:	f0c080e7          	jalr	-244(ra) # 80006ce4 <_ZN6ThreadD1Ev>
    80003de0:	00048513          	mv	a0,s1
    80003de4:	00001097          	auipc	ra,0x1
    80003de8:	080080e7          	jalr	128(ra) # 80004e64 <_ZdlPv>
    80003dec:	01813083          	ld	ra,24(sp)
    80003df0:	01013403          	ld	s0,16(sp)
    80003df4:	00813483          	ld	s1,8(sp)
    80003df8:	02010113          	addi	sp,sp,32
    80003dfc:	00008067          	ret

0000000080003e00 <_ZN16ProducerKeyboardD1Ev>:
class ProducerKeyboard:public Thread {
    80003e00:	ff010113          	addi	sp,sp,-16
    80003e04:	00113423          	sd	ra,8(sp)
    80003e08:	00813023          	sd	s0,0(sp)
    80003e0c:	01010413          	addi	s0,sp,16
    80003e10:	00008797          	auipc	a5,0x8
    80003e14:	c2078793          	addi	a5,a5,-992 # 8000ba30 <_ZTV16ProducerKeyboard+0x10>
    80003e18:	00f53023          	sd	a5,0(a0)
    80003e1c:	00003097          	auipc	ra,0x3
    80003e20:	ec8080e7          	jalr	-312(ra) # 80006ce4 <_ZN6ThreadD1Ev>
    80003e24:	00813083          	ld	ra,8(sp)
    80003e28:	00013403          	ld	s0,0(sp)
    80003e2c:	01010113          	addi	sp,sp,16
    80003e30:	00008067          	ret

0000000080003e34 <_ZN16ProducerKeyboardD0Ev>:
    80003e34:	fe010113          	addi	sp,sp,-32
    80003e38:	00113c23          	sd	ra,24(sp)
    80003e3c:	00813823          	sd	s0,16(sp)
    80003e40:	00913423          	sd	s1,8(sp)
    80003e44:	02010413          	addi	s0,sp,32
    80003e48:	00050493          	mv	s1,a0
    80003e4c:	00008797          	auipc	a5,0x8
    80003e50:	be478793          	addi	a5,a5,-1052 # 8000ba30 <_ZTV16ProducerKeyboard+0x10>
    80003e54:	00f53023          	sd	a5,0(a0)
    80003e58:	00003097          	auipc	ra,0x3
    80003e5c:	e8c080e7          	jalr	-372(ra) # 80006ce4 <_ZN6ThreadD1Ev>
    80003e60:	00048513          	mv	a0,s1
    80003e64:	00001097          	auipc	ra,0x1
    80003e68:	000080e7          	jalr	ra # 80004e64 <_ZdlPv>
    80003e6c:	01813083          	ld	ra,24(sp)
    80003e70:	01013403          	ld	s0,16(sp)
    80003e74:	00813483          	ld	s1,8(sp)
    80003e78:	02010113          	addi	sp,sp,32
    80003e7c:	00008067          	ret

0000000080003e80 <_ZN16ProducerKeyboard3runEv>:
    void run() override {
    80003e80:	ff010113          	addi	sp,sp,-16
    80003e84:	00113423          	sd	ra,8(sp)
    80003e88:	00813023          	sd	s0,0(sp)
    80003e8c:	01010413          	addi	s0,sp,16
        producerKeyboard(td);
    80003e90:	02053583          	ld	a1,32(a0)
    80003e94:	fffff097          	auipc	ra,0xfffff
    80003e98:	7e0080e7          	jalr	2016(ra) # 80003674 <_ZN16ProducerKeyboard16producerKeyboardEPv>
    }
    80003e9c:	00813083          	ld	ra,8(sp)
    80003ea0:	00013403          	ld	s0,0(sp)
    80003ea4:	01010113          	addi	sp,sp,16
    80003ea8:	00008067          	ret

0000000080003eac <_ZN12ProducerSync3runEv>:
    void run() override {
    80003eac:	ff010113          	addi	sp,sp,-16
    80003eb0:	00113423          	sd	ra,8(sp)
    80003eb4:	00813023          	sd	s0,0(sp)
    80003eb8:	01010413          	addi	s0,sp,16
        producer(td);
    80003ebc:	02053583          	ld	a1,32(a0)
    80003ec0:	00000097          	auipc	ra,0x0
    80003ec4:	874080e7          	jalr	-1932(ra) # 80003734 <_ZN12ProducerSync8producerEPv>
    }
    80003ec8:	00813083          	ld	ra,8(sp)
    80003ecc:	00013403          	ld	s0,0(sp)
    80003ed0:	01010113          	addi	sp,sp,16
    80003ed4:	00008067          	ret

0000000080003ed8 <_ZN12ConsumerSync3runEv>:
    void run() override {
    80003ed8:	ff010113          	addi	sp,sp,-16
    80003edc:	00113423          	sd	ra,8(sp)
    80003ee0:	00813023          	sd	s0,0(sp)
    80003ee4:	01010413          	addi	s0,sp,16
        consumer(td);
    80003ee8:	02053583          	ld	a1,32(a0)
    80003eec:	00000097          	auipc	ra,0x0
    80003ef0:	8dc080e7          	jalr	-1828(ra) # 800037c8 <_ZN12ConsumerSync8consumerEPv>
    }
    80003ef4:	00813083          	ld	ra,8(sp)
    80003ef8:	00013403          	ld	s0,0(sp)
    80003efc:	01010113          	addi	sp,sp,16
    80003f00:	00008067          	ret

0000000080003f04 <_ZN14PeriodicThread3runEv>:
    if (t) {
        t->setTerminated(true);
    }
}

void PeriodicThread::run () {
    80003f04:	fe010113          	addi	sp,sp,-32
    80003f08:	00113c23          	sd	ra,24(sp)
    80003f0c:	00813823          	sd	s0,16(sp)
    80003f10:	00913423          	sd	s1,8(sp)
    80003f14:	01213023          	sd	s2,0(sp)
    80003f18:	02010413          	addi	s0,sp,32
    80003f1c:	00050493          	mv	s1,a0
    time_t p = this->period;
    80003f20:	02053903          	ld	s2,32(a0)
    while (1) {
        if (((TCB*)myHandle)->getTerminated()) { break; }
    80003f24:	0084b783          	ld	a5,8(s1)
        return terminated;
    80003f28:	03a7c783          	lbu	a5,58(a5)
    80003f2c:	06079c63          	bnez	a5,80003fa4 <_ZN14PeriodicThread3runEv+0xa0>
        periodicActivation();
    80003f30:	0004b783          	ld	a5,0(s1)
    80003f34:	0187b783          	ld	a5,24(a5)
    80003f38:	00048513          	mv	a0,s1
    80003f3c:	000780e7          	jalr	a5
        if (((TCB*)myHandle)->getTerminated()) { break; }
    80003f40:	0084b783          	ld	a5,8(s1)
    80003f44:	03a7c783          	lbu	a5,58(a5)
    80003f48:	04079e63          	bnez	a5,80003fa4 <_ZN14PeriodicThread3runEv+0xa0>
        Console::putc('s');
    80003f4c:	07300513          	li	a0,115
    80003f50:	00001097          	auipc	ra,0x1
    80003f54:	a5c080e7          	jalr	-1444(ra) # 800049ac <_ZN7Console4putcEc>
        Console::putc('l');
    80003f58:	06c00513          	li	a0,108
    80003f5c:	00001097          	auipc	ra,0x1
    80003f60:	a50080e7          	jalr	-1456(ra) # 800049ac <_ZN7Console4putcEc>
        Console::putc('e');
    80003f64:	06500513          	li	a0,101
    80003f68:	00001097          	auipc	ra,0x1
    80003f6c:	a44080e7          	jalr	-1468(ra) # 800049ac <_ZN7Console4putcEc>
        Console::putc('e');
    80003f70:	06500513          	li	a0,101
    80003f74:	00001097          	auipc	ra,0x1
    80003f78:	a38080e7          	jalr	-1480(ra) # 800049ac <_ZN7Console4putcEc>
        Console::putc('p');
    80003f7c:	07000513          	li	a0,112
    80003f80:	00001097          	auipc	ra,0x1
    80003f84:	a2c080e7          	jalr	-1492(ra) # 800049ac <_ZN7Console4putcEc>
        Console::putc('\n');
    80003f88:	00a00513          	li	a0,10
    80003f8c:	00001097          	auipc	ra,0x1
    80003f90:	a20080e7          	jalr	-1504(ra) # 800049ac <_ZN7Console4putcEc>
        time_sleep(p);
    80003f94:	00090513          	mv	a0,s2
    80003f98:	ffffe097          	auipc	ra,0xffffe
    80003f9c:	8dc080e7          	jalr	-1828(ra) # 80001874 <_Z10time_sleepm>
        if (((TCB*)myHandle)->getTerminated()) { break; }
    80003fa0:	f85ff06f          	j	80003f24 <_ZN14PeriodicThread3runEv+0x20>
    }
    Console::putc('b');
    80003fa4:	06200513          	li	a0,98
    80003fa8:	00001097          	auipc	ra,0x1
    80003fac:	a04080e7          	jalr	-1532(ra) # 800049ac <_ZN7Console4putcEc>
    Console::putc('r');
    80003fb0:	07200513          	li	a0,114
    80003fb4:	00001097          	auipc	ra,0x1
    80003fb8:	9f8080e7          	jalr	-1544(ra) # 800049ac <_ZN7Console4putcEc>
    Console::putc('e');
    80003fbc:	06500513          	li	a0,101
    80003fc0:	00001097          	auipc	ra,0x1
    80003fc4:	9ec080e7          	jalr	-1556(ra) # 800049ac <_ZN7Console4putcEc>
    Console::putc('a');
    80003fc8:	06100513          	li	a0,97
    80003fcc:	00001097          	auipc	ra,0x1
    80003fd0:	9e0080e7          	jalr	-1568(ra) # 800049ac <_ZN7Console4putcEc>
    Console::putc('k');
    80003fd4:	06b00513          	li	a0,107
    80003fd8:	00001097          	auipc	ra,0x1
    80003fdc:	9d4080e7          	jalr	-1580(ra) # 800049ac <_ZN7Console4putcEc>
    Console::putc('\n');
    80003fe0:	00a00513          	li	a0,10
    80003fe4:	00001097          	auipc	ra,0x1
    80003fe8:	9c8080e7          	jalr	-1592(ra) # 800049ac <_ZN7Console4putcEc>
    ((TCB*)myHandle)->setFinished(true);
    80003fec:	0084b783          	ld	a5,8(s1)
        this->finished = stat;
    80003ff0:	00100713          	li	a4,1
    80003ff4:	02e78c23          	sb	a4,56(a5)
    80003ff8:	01813083          	ld	ra,24(sp)
    80003ffc:	01013403          	ld	s0,16(sp)
    80004000:	00813483          	ld	s1,8(sp)
    80004004:	00013903          	ld	s2,0(sp)
    80004008:	02010113          	addi	sp,sp,32
    8000400c:	00008067          	ret

0000000080004010 <_ZN14PeriodicThreadC1Em>:
PeriodicThread::PeriodicThread (time_t period) : Thread(), period(period) {
    80004010:	fe010113          	addi	sp,sp,-32
    80004014:	00113c23          	sd	ra,24(sp)
    80004018:	00813823          	sd	s0,16(sp)
    8000401c:	00913423          	sd	s1,8(sp)
    80004020:	01213023          	sd	s2,0(sp)
    80004024:	02010413          	addi	s0,sp,32
    80004028:	00050493          	mv	s1,a0
    8000402c:	00058913          	mv	s2,a1
    80004030:	00003097          	auipc	ra,0x3
    80004034:	e3c080e7          	jalr	-452(ra) # 80006e6c <_ZN6ThreadC1Ev>
    80004038:	00008797          	auipc	a5,0x8
    8000403c:	a7078793          	addi	a5,a5,-1424 # 8000baa8 <_ZTV14PeriodicThread+0x10>
    80004040:	00f4b023          	sd	a5,0(s1)
    80004044:	0324b023          	sd	s2,32(s1)
}
    80004048:	01813083          	ld	ra,24(sp)
    8000404c:	01013403          	ld	s0,16(sp)
    80004050:	00813483          	ld	s1,8(sp)
    80004054:	00013903          	ld	s2,0(sp)
    80004058:	02010113          	addi	sp,sp,32
    8000405c:	00008067          	ret

0000000080004060 <_ZN14PeriodicThread9terminateEv>:
void PeriodicThread::terminate () {
    80004060:	ff010113          	addi	sp,sp,-16
    80004064:	00813423          	sd	s0,8(sp)
    80004068:	01010413          	addi	s0,sp,16
    TCB * t = (TCB*) myHandle;
    8000406c:	00853783          	ld	a5,8(a0)
    if (myHandle == nullptr) {
    80004070:	00078663          	beqz	a5,8000407c <_ZN14PeriodicThread9terminateEv+0x1c>
        this->terminated = stat;
    80004074:	00100713          	li	a4,1
    80004078:	02e78d23          	sb	a4,58(a5)
}
    8000407c:	00813403          	ld	s0,8(sp)
    80004080:	01010113          	addi	sp,sp,16
    80004084:	00008067          	ret

0000000080004088 <_ZN14PeriodicThread18periodicActivationEv>:
class PeriodicThread : public Thread {
public:
    void terminate ();
protected:
    PeriodicThread (time_t period);
    virtual void periodicActivation () {}
    80004088:	ff010113          	addi	sp,sp,-16
    8000408c:	00813423          	sd	s0,8(sp)
    80004090:	01010413          	addi	s0,sp,16
    80004094:	00813403          	ld	s0,8(sp)
    80004098:	01010113          	addi	sp,sp,16
    8000409c:	00008067          	ret

00000000800040a0 <_ZN14PeriodicThreadD1Ev>:
class PeriodicThread : public Thread {
    800040a0:	ff010113          	addi	sp,sp,-16
    800040a4:	00113423          	sd	ra,8(sp)
    800040a8:	00813023          	sd	s0,0(sp)
    800040ac:	01010413          	addi	s0,sp,16
    800040b0:	00008797          	auipc	a5,0x8
    800040b4:	9f878793          	addi	a5,a5,-1544 # 8000baa8 <_ZTV14PeriodicThread+0x10>
    800040b8:	00f53023          	sd	a5,0(a0)
    800040bc:	00003097          	auipc	ra,0x3
    800040c0:	c28080e7          	jalr	-984(ra) # 80006ce4 <_ZN6ThreadD1Ev>
    800040c4:	00813083          	ld	ra,8(sp)
    800040c8:	00013403          	ld	s0,0(sp)
    800040cc:	01010113          	addi	sp,sp,16
    800040d0:	00008067          	ret

00000000800040d4 <_ZN14PeriodicThreadD0Ev>:
    800040d4:	fe010113          	addi	sp,sp,-32
    800040d8:	00113c23          	sd	ra,24(sp)
    800040dc:	00813823          	sd	s0,16(sp)
    800040e0:	00913423          	sd	s1,8(sp)
    800040e4:	02010413          	addi	s0,sp,32
    800040e8:	00050493          	mv	s1,a0
    800040ec:	00008797          	auipc	a5,0x8
    800040f0:	9bc78793          	addi	a5,a5,-1604 # 8000baa8 <_ZTV14PeriodicThread+0x10>
    800040f4:	00f53023          	sd	a5,0(a0)
    800040f8:	00003097          	auipc	ra,0x3
    800040fc:	bec080e7          	jalr	-1044(ra) # 80006ce4 <_ZN6ThreadD1Ev>
    80004100:	00048513          	mv	a0,s1
    80004104:	00001097          	auipc	ra,0x1
    80004108:	d60080e7          	jalr	-672(ra) # 80004e64 <_ZdlPv>
    8000410c:	01813083          	ld	ra,24(sp)
    80004110:	01013403          	ld	s0,16(sp)
    80004114:	00813483          	ld	s1,8(sp)
    80004118:	02010113          	addi	sp,sp,32
    8000411c:	00008067          	ret

0000000080004120 <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1)) thread_dispatch()
#define UNLOCK() lockPrint = 0

void printString(char const *string)
{
    80004120:	fe010113          	addi	sp,sp,-32
    80004124:	00113c23          	sd	ra,24(sp)
    80004128:	00813823          	sd	s0,16(sp)
    8000412c:	00913423          	sd	s1,8(sp)
    80004130:	02010413          	addi	s0,sp,32
    80004134:	00050493          	mv	s1,a0
    LOCK();
    80004138:	00100613          	li	a2,1
    8000413c:	00000593          	li	a1,0
    80004140:	00008517          	auipc	a0,0x8
    80004144:	af050513          	addi	a0,a0,-1296 # 8000bc30 <lockPrint>
    80004148:	ffffd097          	auipc	ra,0xffffd
    8000414c:	fb0080e7          	jalr	-80(ra) # 800010f8 <copy_and_swap>
    80004150:	00050863          	beqz	a0,80004160 <_Z11printStringPKc+0x40>
    80004154:	ffffd097          	auipc	ra,0xffffd
    80004158:	5a4080e7          	jalr	1444(ra) # 800016f8 <_Z15thread_dispatchv>
    8000415c:	fddff06f          	j	80004138 <_Z11printStringPKc+0x18>
    if (!string) return;
    80004160:	02048263          	beqz	s1,80004184 <_Z11printStringPKc+0x64>
    while (*string != '\0')
    80004164:	0004c503          	lbu	a0,0(s1)
    80004168:	00050a63          	beqz	a0,8000417c <_Z11printStringPKc+0x5c>
    {
        putc(*string);
    8000416c:	ffffd097          	auipc	ra,0xffffd
    80004170:	6dc080e7          	jalr	1756(ra) # 80001848 <_Z4putcc>
        string++;
    80004174:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80004178:	fedff06f          	j	80004164 <_Z11printStringPKc+0x44>
    }
    UNLOCK();
    8000417c:	00008797          	auipc	a5,0x8
    80004180:	aa07ba23          	sd	zero,-1356(a5) # 8000bc30 <lockPrint>
}
    80004184:	01813083          	ld	ra,24(sp)
    80004188:	01013403          	ld	s0,16(sp)
    8000418c:	00813483          	ld	s1,8(sp)
    80004190:	02010113          	addi	sp,sp,32
    80004194:	00008067          	ret

0000000080004198 <_Z9getStringPci>:

char* getString(char *buf, int max) {
    80004198:	fd010113          	addi	sp,sp,-48
    8000419c:	02113423          	sd	ra,40(sp)
    800041a0:	02813023          	sd	s0,32(sp)
    800041a4:	00913c23          	sd	s1,24(sp)
    800041a8:	01213823          	sd	s2,16(sp)
    800041ac:	01313423          	sd	s3,8(sp)
    800041b0:	01413023          	sd	s4,0(sp)
    800041b4:	03010413          	addi	s0,sp,48
    800041b8:	00050993          	mv	s3,a0
    800041bc:	00058a13          	mv	s4,a1
    int i, cc;
    char c;

    for(i = 0; i + 1 < max; ){
    800041c0:	00000913          	li	s2,0
    800041c4:	00090493          	mv	s1,s2
    800041c8:	0019091b          	addiw	s2,s2,1
    800041cc:	03495a63          	bge	s2,s4,80004200 <_Z9getStringPci+0x68>
        cc = getc();
    800041d0:	ffffd097          	auipc	ra,0xffffd
    800041d4:	644080e7          	jalr	1604(ra) # 80001814 <_Z4getcv>
        if(cc < 1)
    800041d8:	02050463          	beqz	a0,80004200 <_Z9getStringPci+0x68>
            break;
        c = (char)cc;
        buf[i++] = c;
    800041dc:	009984b3          	add	s1,s3,s1
    800041e0:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    800041e4:	00a00793          	li	a5,10
    800041e8:	00f50a63          	beq	a0,a5,800041fc <_Z9getStringPci+0x64>
    800041ec:	00d00793          	li	a5,13
    800041f0:	fcf51ae3          	bne	a0,a5,800041c4 <_Z9getStringPci+0x2c>
        buf[i++] = c;
    800041f4:	00090493          	mv	s1,s2
    800041f8:	0080006f          	j	80004200 <_Z9getStringPci+0x68>
    800041fc:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    80004200:	009984b3          	add	s1,s3,s1
    80004204:	00048023          	sb	zero,0(s1)

    return buf;
}
    80004208:	00098513          	mv	a0,s3
    8000420c:	02813083          	ld	ra,40(sp)
    80004210:	02013403          	ld	s0,32(sp)
    80004214:	01813483          	ld	s1,24(sp)
    80004218:	01013903          	ld	s2,16(sp)
    8000421c:	00813983          	ld	s3,8(sp)
    80004220:	00013a03          	ld	s4,0(sp)
    80004224:	03010113          	addi	sp,sp,48
    80004228:	00008067          	ret

000000008000422c <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    8000422c:	ff010113          	addi	sp,sp,-16
    80004230:	00813423          	sd	s0,8(sp)
    80004234:	01010413          	addi	s0,sp,16
    80004238:	00050693          	mv	a3,a0
    int n = 0;
    8000423c:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    80004240:	0006c603          	lbu	a2,0(a3)
    80004244:	fd06071b          	addiw	a4,a2,-48
    80004248:	0ff77713          	andi	a4,a4,255
    8000424c:	00900793          	li	a5,9
    80004250:	02e7e063          	bltu	a5,a4,80004270 <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    80004254:	0025179b          	slliw	a5,a0,0x2
    80004258:	00a787bb          	addw	a5,a5,a0
    8000425c:	0017979b          	slliw	a5,a5,0x1
    80004260:	00168693          	addi	a3,a3,1
    80004264:	00c787bb          	addw	a5,a5,a2
    80004268:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    8000426c:	fd5ff06f          	j	80004240 <_Z11stringToIntPKc+0x14>
    return n;
}
    80004270:	00813403          	ld	s0,8(sp)
    80004274:	01010113          	addi	sp,sp,16
    80004278:	00008067          	ret

000000008000427c <_Z8printIntmhh>:

char digits[] = "0123456789ABCDEF";

void printInt(unsigned long xx, unsigned char base, unsigned char sgn)
{
    8000427c:	fb010113          	addi	sp,sp,-80
    80004280:	04113423          	sd	ra,72(sp)
    80004284:	04813023          	sd	s0,64(sp)
    80004288:	02913c23          	sd	s1,56(sp)
    8000428c:	03213823          	sd	s2,48(sp)
    80004290:	03313423          	sd	s3,40(sp)
    80004294:	05010413          	addi	s0,sp,80
    80004298:	00050913          	mv	s2,a0
    8000429c:	00058993          	mv	s3,a1
    800042a0:	00060493          	mv	s1,a2
    LOCK();
    800042a4:	00100613          	li	a2,1
    800042a8:	00000593          	li	a1,0
    800042ac:	00008517          	auipc	a0,0x8
    800042b0:	98450513          	addi	a0,a0,-1660 # 8000bc30 <lockPrint>
    800042b4:	ffffd097          	auipc	ra,0xffffd
    800042b8:	e44080e7          	jalr	-444(ra) # 800010f8 <copy_and_swap>
    800042bc:	00050863          	beqz	a0,800042cc <_Z8printIntmhh+0x50>
    800042c0:	ffffd097          	auipc	ra,0xffffd
    800042c4:	438080e7          	jalr	1080(ra) # 800016f8 <_Z15thread_dispatchv>
    800042c8:	fddff06f          	j	800042a4 <_Z8printIntmhh+0x28>
    int i;
    long neg = 0;
    unsigned long x;


    if(sgn && (long)xx < 0){
    800042cc:	00048e63          	beqz	s1,800042e8 <_Z8printIntmhh+0x6c>
    800042d0:	00094663          	bltz	s2,800042dc <_Z8printIntmhh+0x60>
    long neg = 0;
    800042d4:	00000613          	li	a2,0
    800042d8:	0140006f          	j	800042ec <_Z8printIntmhh+0x70>
        neg = 1;
        x = (unsigned long)(-(long)xx);
    800042dc:	41200933          	neg	s2,s2
        neg = 1;
    800042e0:	00100613          	li	a2,1
        x = (unsigned long)(-(long)xx);
    800042e4:	0080006f          	j	800042ec <_Z8printIntmhh+0x70>
    long neg = 0;
    800042e8:	00000613          	li	a2,0
    } else {
        x = xx;
    }

    i = 0;
    800042ec:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    800042f0:	033976b3          	remu	a3,s2,s3
    800042f4:	00048713          	mv	a4,s1
    800042f8:	0014849b          	addiw	s1,s1,1
    800042fc:	00007797          	auipc	a5,0x7
    80004300:	7cc78793          	addi	a5,a5,1996 # 8000bac8 <digits>
    80004304:	00d787b3          	add	a5,a5,a3
    80004308:	0007c683          	lbu	a3,0(a5)
    8000430c:	fd040793          	addi	a5,s0,-48
    80004310:	00e787b3          	add	a5,a5,a4
    80004314:	fed78023          	sb	a3,-32(a5)
    } while((x /= base) != 0);
    80004318:	00090793          	mv	a5,s2
    8000431c:	03395933          	divu	s2,s2,s3
    80004320:	fd37f8e3          	bgeu	a5,s3,800042f0 <_Z8printIntmhh+0x74>

    if(neg)
    80004324:	00060c63          	beqz	a2,8000433c <_Z8printIntmhh+0xc0>
        buf[i++] = '-';
    80004328:	fd040793          	addi	a5,s0,-48
    8000432c:	009784b3          	add	s1,a5,s1
    80004330:	02d00793          	li	a5,45
    80004334:	fef48023          	sb	a5,-32(s1)
    80004338:	0027049b          	addiw	s1,a4,2

    while(--i >= 0)
    8000433c:	fff4849b          	addiw	s1,s1,-1
    80004340:	0004ce63          	bltz	s1,8000435c <_Z8printIntmhh+0xe0>
        putc(buf[i]);
    80004344:	fd040793          	addi	a5,s0,-48
    80004348:	009787b3          	add	a5,a5,s1
    8000434c:	fe07c503          	lbu	a0,-32(a5)
    80004350:	ffffd097          	auipc	ra,0xffffd
    80004354:	4f8080e7          	jalr	1272(ra) # 80001848 <_Z4putcc>
    80004358:	fe5ff06f          	j	8000433c <_Z8printIntmhh+0xc0>

    UNLOCK();
    8000435c:	00008797          	auipc	a5,0x8
    80004360:	8c07ba23          	sd	zero,-1836(a5) # 8000bc30 <lockPrint>
    80004364:	04813083          	ld	ra,72(sp)
    80004368:	04013403          	ld	s0,64(sp)
    8000436c:	03813483          	ld	s1,56(sp)
    80004370:	03013903          	ld	s2,48(sp)
    80004374:	02813983          	ld	s3,40(sp)
    80004378:	05010113          	addi	sp,sp,80
    8000437c:	00008067          	ret

0000000080004380 <_ZN9BufferCPPC1Ei>:
#include "../h/buffer_CPP_API.hpp"

BufferCPP::BufferCPP(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80004380:	fd010113          	addi	sp,sp,-48
    80004384:	02113423          	sd	ra,40(sp)
    80004388:	02813023          	sd	s0,32(sp)
    8000438c:	00913c23          	sd	s1,24(sp)
    80004390:	01213823          	sd	s2,16(sp)
    80004394:	01313423          	sd	s3,8(sp)
    80004398:	03010413          	addi	s0,sp,48
    8000439c:	00050493          	mv	s1,a0
    800043a0:	00058913          	mv	s2,a1
    800043a4:	0015879b          	addiw	a5,a1,1
    800043a8:	0007851b          	sext.w	a0,a5
    800043ac:	00f4a023          	sw	a5,0(s1)
    800043b0:	0004a823          	sw	zero,16(s1)
    800043b4:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    800043b8:	00251513          	slli	a0,a0,0x2
    800043bc:	ffffd097          	auipc	ra,0xffffd
    800043c0:	224080e7          	jalr	548(ra) # 800015e0 <_Z9mem_allocm>
    800043c4:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    800043c8:	01800513          	li	a0,24
    800043cc:	00001097          	auipc	ra,0x1
    800043d0:	a38080e7          	jalr	-1480(ra) # 80004e04 <_Znwm>
    800043d4:	00050993          	mv	s3,a0
    800043d8:	00000593          	li	a1,0
    800043dc:	fffff097          	auipc	ra,0xfffff
    800043e0:	c30080e7          	jalr	-976(ra) # 8000300c <_ZN9SemaphoreC1Ej>
    800043e4:	0334b023          	sd	s3,32(s1)
    spaceAvailable = new Semaphore(_cap);
    800043e8:	01800513          	li	a0,24
    800043ec:	00001097          	auipc	ra,0x1
    800043f0:	a18080e7          	jalr	-1512(ra) # 80004e04 <_Znwm>
    800043f4:	00050993          	mv	s3,a0
    800043f8:	00090593          	mv	a1,s2
    800043fc:	fffff097          	auipc	ra,0xfffff
    80004400:	c10080e7          	jalr	-1008(ra) # 8000300c <_ZN9SemaphoreC1Ej>
    80004404:	0134bc23          	sd	s3,24(s1)
    mutexHead = new Semaphore(1);
    80004408:	01800513          	li	a0,24
    8000440c:	00001097          	auipc	ra,0x1
    80004410:	9f8080e7          	jalr	-1544(ra) # 80004e04 <_Znwm>
    80004414:	00050913          	mv	s2,a0
    80004418:	00100593          	li	a1,1
    8000441c:	fffff097          	auipc	ra,0xfffff
    80004420:	bf0080e7          	jalr	-1040(ra) # 8000300c <_ZN9SemaphoreC1Ej>
    80004424:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    80004428:	01800513          	li	a0,24
    8000442c:	00001097          	auipc	ra,0x1
    80004430:	9d8080e7          	jalr	-1576(ra) # 80004e04 <_Znwm>
    80004434:	00050913          	mv	s2,a0
    80004438:	00100593          	li	a1,1
    8000443c:	fffff097          	auipc	ra,0xfffff
    80004440:	bd0080e7          	jalr	-1072(ra) # 8000300c <_ZN9SemaphoreC1Ej>
    80004444:	0324b823          	sd	s2,48(s1)
}
    80004448:	02813083          	ld	ra,40(sp)
    8000444c:	02013403          	ld	s0,32(sp)
    80004450:	01813483          	ld	s1,24(sp)
    80004454:	01013903          	ld	s2,16(sp)
    80004458:	00813983          	ld	s3,8(sp)
    8000445c:	03010113          	addi	sp,sp,48
    80004460:	00008067          	ret
    80004464:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    80004468:	00098513          	mv	a0,s3
    8000446c:	00001097          	auipc	ra,0x1
    80004470:	9f8080e7          	jalr	-1544(ra) # 80004e64 <_ZdlPv>
    80004474:	00048513          	mv	a0,s1
    80004478:	00009097          	auipc	ra,0x9
    8000447c:	a00080e7          	jalr	-1536(ra) # 8000ce78 <_Unwind_Resume>
    80004480:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(_cap);
    80004484:	00098513          	mv	a0,s3
    80004488:	00001097          	auipc	ra,0x1
    8000448c:	9dc080e7          	jalr	-1572(ra) # 80004e64 <_ZdlPv>
    80004490:	00048513          	mv	a0,s1
    80004494:	00009097          	auipc	ra,0x9
    80004498:	9e4080e7          	jalr	-1564(ra) # 8000ce78 <_Unwind_Resume>
    8000449c:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    800044a0:	00090513          	mv	a0,s2
    800044a4:	00001097          	auipc	ra,0x1
    800044a8:	9c0080e7          	jalr	-1600(ra) # 80004e64 <_ZdlPv>
    800044ac:	00048513          	mv	a0,s1
    800044b0:	00009097          	auipc	ra,0x9
    800044b4:	9c8080e7          	jalr	-1592(ra) # 8000ce78 <_Unwind_Resume>
    800044b8:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    800044bc:	00090513          	mv	a0,s2
    800044c0:	00001097          	auipc	ra,0x1
    800044c4:	9a4080e7          	jalr	-1628(ra) # 80004e64 <_ZdlPv>
    800044c8:	00048513          	mv	a0,s1
    800044cc:	00009097          	auipc	ra,0x9
    800044d0:	9ac080e7          	jalr	-1620(ra) # 8000ce78 <_Unwind_Resume>

00000000800044d4 <_ZN9BufferCPP3putEi>:
    delete mutexTail;
    delete mutexHead;

}

void BufferCPP::put(int val) {
    800044d4:	fe010113          	addi	sp,sp,-32
    800044d8:	00113c23          	sd	ra,24(sp)
    800044dc:	00813823          	sd	s0,16(sp)
    800044e0:	00913423          	sd	s1,8(sp)
    800044e4:	01213023          	sd	s2,0(sp)
    800044e8:	02010413          	addi	s0,sp,32
    800044ec:	00050493          	mv	s1,a0
    800044f0:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    800044f4:	01853503          	ld	a0,24(a0)
    800044f8:	fffff097          	auipc	ra,0xfffff
    800044fc:	b4c080e7          	jalr	-1204(ra) # 80003044 <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    80004500:	0304b503          	ld	a0,48(s1)
    80004504:	fffff097          	auipc	ra,0xfffff
    80004508:	b40080e7          	jalr	-1216(ra) # 80003044 <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    8000450c:	0084b783          	ld	a5,8(s1)
    80004510:	0144a703          	lw	a4,20(s1)
    80004514:	00271713          	slli	a4,a4,0x2
    80004518:	00e787b3          	add	a5,a5,a4
    8000451c:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80004520:	0144a783          	lw	a5,20(s1)
    80004524:	0017879b          	addiw	a5,a5,1
    80004528:	0004a703          	lw	a4,0(s1)
    8000452c:	02e7e7bb          	remw	a5,a5,a4
    80004530:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    80004534:	0304b503          	ld	a0,48(s1)
    80004538:	fffff097          	auipc	ra,0xfffff
    8000453c:	b38080e7          	jalr	-1224(ra) # 80003070 <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    80004540:	0204b503          	ld	a0,32(s1)
    80004544:	fffff097          	auipc	ra,0xfffff
    80004548:	b2c080e7          	jalr	-1236(ra) # 80003070 <_ZN9Semaphore6signalEv>

}
    8000454c:	01813083          	ld	ra,24(sp)
    80004550:	01013403          	ld	s0,16(sp)
    80004554:	00813483          	ld	s1,8(sp)
    80004558:	00013903          	ld	s2,0(sp)
    8000455c:	02010113          	addi	sp,sp,32
    80004560:	00008067          	ret

0000000080004564 <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    80004564:	fe010113          	addi	sp,sp,-32
    80004568:	00113c23          	sd	ra,24(sp)
    8000456c:	00813823          	sd	s0,16(sp)
    80004570:	00913423          	sd	s1,8(sp)
    80004574:	01213023          	sd	s2,0(sp)
    80004578:	02010413          	addi	s0,sp,32
    8000457c:	00050493          	mv	s1,a0
    itemAvailable->wait();
    80004580:	02053503          	ld	a0,32(a0)
    80004584:	fffff097          	auipc	ra,0xfffff
    80004588:	ac0080e7          	jalr	-1344(ra) # 80003044 <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    8000458c:	0284b503          	ld	a0,40(s1)
    80004590:	fffff097          	auipc	ra,0xfffff
    80004594:	ab4080e7          	jalr	-1356(ra) # 80003044 <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    80004598:	0084b703          	ld	a4,8(s1)
    8000459c:	0104a783          	lw	a5,16(s1)
    800045a0:	00279693          	slli	a3,a5,0x2
    800045a4:	00d70733          	add	a4,a4,a3
    800045a8:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    800045ac:	0017879b          	addiw	a5,a5,1
    800045b0:	0004a703          	lw	a4,0(s1)
    800045b4:	02e7e7bb          	remw	a5,a5,a4
    800045b8:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    800045bc:	0284b503          	ld	a0,40(s1)
    800045c0:	fffff097          	auipc	ra,0xfffff
    800045c4:	ab0080e7          	jalr	-1360(ra) # 80003070 <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    800045c8:	0184b503          	ld	a0,24(s1)
    800045cc:	fffff097          	auipc	ra,0xfffff
    800045d0:	aa4080e7          	jalr	-1372(ra) # 80003070 <_ZN9Semaphore6signalEv>

    return ret;
}
    800045d4:	00090513          	mv	a0,s2
    800045d8:	01813083          	ld	ra,24(sp)
    800045dc:	01013403          	ld	s0,16(sp)
    800045e0:	00813483          	ld	s1,8(sp)
    800045e4:	00013903          	ld	s2,0(sp)
    800045e8:	02010113          	addi	sp,sp,32
    800045ec:	00008067          	ret

00000000800045f0 <_ZN9BufferCPP6getCntEv>:

int BufferCPP::getCnt() {
    800045f0:	fe010113          	addi	sp,sp,-32
    800045f4:	00113c23          	sd	ra,24(sp)
    800045f8:	00813823          	sd	s0,16(sp)
    800045fc:	00913423          	sd	s1,8(sp)
    80004600:	01213023          	sd	s2,0(sp)
    80004604:	02010413          	addi	s0,sp,32
    80004608:	00050493          	mv	s1,a0
    int ret;

    mutexHead->wait();
    8000460c:	02853503          	ld	a0,40(a0)
    80004610:	fffff097          	auipc	ra,0xfffff
    80004614:	a34080e7          	jalr	-1484(ra) # 80003044 <_ZN9Semaphore4waitEv>
    mutexTail->wait();
    80004618:	0304b503          	ld	a0,48(s1)
    8000461c:	fffff097          	auipc	ra,0xfffff
    80004620:	a28080e7          	jalr	-1496(ra) # 80003044 <_ZN9Semaphore4waitEv>

    if (tail >= head) {
    80004624:	0144a783          	lw	a5,20(s1)
    80004628:	0104a903          	lw	s2,16(s1)
    8000462c:	0327ce63          	blt	a5,s2,80004668 <_ZN9BufferCPP6getCntEv+0x78>
        ret = tail - head;
    80004630:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    80004634:	0304b503          	ld	a0,48(s1)
    80004638:	fffff097          	auipc	ra,0xfffff
    8000463c:	a38080e7          	jalr	-1480(ra) # 80003070 <_ZN9Semaphore6signalEv>
    mutexHead->signal();
    80004640:	0284b503          	ld	a0,40(s1)
    80004644:	fffff097          	auipc	ra,0xfffff
    80004648:	a2c080e7          	jalr	-1492(ra) # 80003070 <_ZN9Semaphore6signalEv>

    return ret;
}
    8000464c:	00090513          	mv	a0,s2
    80004650:	01813083          	ld	ra,24(sp)
    80004654:	01013403          	ld	s0,16(sp)
    80004658:	00813483          	ld	s1,8(sp)
    8000465c:	00013903          	ld	s2,0(sp)
    80004660:	02010113          	addi	sp,sp,32
    80004664:	00008067          	ret
        ret = cap - head + tail;
    80004668:	0004a703          	lw	a4,0(s1)
    8000466c:	4127093b          	subw	s2,a4,s2
    80004670:	00f9093b          	addw	s2,s2,a5
    80004674:	fc1ff06f          	j	80004634 <_ZN9BufferCPP6getCntEv+0x44>

0000000080004678 <_ZN9BufferCPPD1Ev>:
BufferCPP::~BufferCPP() {
    80004678:	fe010113          	addi	sp,sp,-32
    8000467c:	00113c23          	sd	ra,24(sp)
    80004680:	00813823          	sd	s0,16(sp)
    80004684:	00913423          	sd	s1,8(sp)
    80004688:	02010413          	addi	s0,sp,32
    8000468c:	00050493          	mv	s1,a0
    Console::putc('\n');
    80004690:	00a00513          	li	a0,10
    80004694:	00000097          	auipc	ra,0x0
    80004698:	318080e7          	jalr	792(ra) # 800049ac <_ZN7Console4putcEc>
    printString("Buffer deleted!\n");
    8000469c:	00005517          	auipc	a0,0x5
    800046a0:	b6450513          	addi	a0,a0,-1180 # 80009200 <CONSOLE_STATUS+0x1f0>
    800046a4:	00000097          	auipc	ra,0x0
    800046a8:	a7c080e7          	jalr	-1412(ra) # 80004120 <_Z11printStringPKc>
    while (getCnt()) {
    800046ac:	00048513          	mv	a0,s1
    800046b0:	00000097          	auipc	ra,0x0
    800046b4:	f40080e7          	jalr	-192(ra) # 800045f0 <_ZN9BufferCPP6getCntEv>
    800046b8:	02050c63          	beqz	a0,800046f0 <_ZN9BufferCPPD1Ev+0x78>
        char ch = buffer[head];
    800046bc:	0084b783          	ld	a5,8(s1)
    800046c0:	0104a703          	lw	a4,16(s1)
    800046c4:	00271713          	slli	a4,a4,0x2
    800046c8:	00e787b3          	add	a5,a5,a4
        Console::putc(ch);
    800046cc:	0007c503          	lbu	a0,0(a5)
    800046d0:	00000097          	auipc	ra,0x0
    800046d4:	2dc080e7          	jalr	732(ra) # 800049ac <_ZN7Console4putcEc>
        head = (head + 1) % cap;
    800046d8:	0104a783          	lw	a5,16(s1)
    800046dc:	0017879b          	addiw	a5,a5,1
    800046e0:	0004a703          	lw	a4,0(s1)
    800046e4:	02e7e7bb          	remw	a5,a5,a4
    800046e8:	00f4a823          	sw	a5,16(s1)
    while (getCnt()) {
    800046ec:	fc1ff06f          	j	800046ac <_ZN9BufferCPPD1Ev+0x34>
    Console::putc('!');
    800046f0:	02100513          	li	a0,33
    800046f4:	00000097          	auipc	ra,0x0
    800046f8:	2b8080e7          	jalr	696(ra) # 800049ac <_ZN7Console4putcEc>
    Console::putc('\n');
    800046fc:	00a00513          	li	a0,10
    80004700:	00000097          	auipc	ra,0x0
    80004704:	2ac080e7          	jalr	684(ra) # 800049ac <_ZN7Console4putcEc>
    mem_free(buffer);
    80004708:	0084b503          	ld	a0,8(s1)
    8000470c:	ffffd097          	auipc	ra,0xffffd
    80004710:	f0c080e7          	jalr	-244(ra) # 80001618 <_Z8mem_freePv>
    delete itemAvailable;
    80004714:	0204b503          	ld	a0,32(s1)
    80004718:	00050863          	beqz	a0,80004728 <_ZN9BufferCPPD1Ev+0xb0>
    8000471c:	00053783          	ld	a5,0(a0)
    80004720:	0087b783          	ld	a5,8(a5)
    80004724:	000780e7          	jalr	a5
    delete spaceAvailable;
    80004728:	0184b503          	ld	a0,24(s1)
    8000472c:	00050863          	beqz	a0,8000473c <_ZN9BufferCPPD1Ev+0xc4>
    80004730:	00053783          	ld	a5,0(a0)
    80004734:	0087b783          	ld	a5,8(a5)
    80004738:	000780e7          	jalr	a5
    delete mutexTail;
    8000473c:	0304b503          	ld	a0,48(s1)
    80004740:	00050863          	beqz	a0,80004750 <_ZN9BufferCPPD1Ev+0xd8>
    80004744:	00053783          	ld	a5,0(a0)
    80004748:	0087b783          	ld	a5,8(a5)
    8000474c:	000780e7          	jalr	a5
    delete mutexHead;
    80004750:	0284b503          	ld	a0,40(s1)
    80004754:	00050863          	beqz	a0,80004764 <_ZN9BufferCPPD1Ev+0xec>
    80004758:	00053783          	ld	a5,0(a0)
    8000475c:	0087b783          	ld	a5,8(a5)
    80004760:	000780e7          	jalr	a5
}
    80004764:	01813083          	ld	ra,24(sp)
    80004768:	01013403          	ld	s0,16(sp)
    8000476c:	00813483          	ld	s1,8(sp)
    80004770:	02010113          	addi	sp,sp,32
    80004774:	00008067          	ret

0000000080004778 <_Z8userMainPv>:
#include "../h/ConsumerProducer_CPP_API_test.hpp"
#include "../h/System_Mode_test.hpp"

#endif

void userMain(void *) {
    80004778:	fe010113          	addi	sp,sp,-32
    8000477c:	00113c23          	sd	ra,24(sp)
    80004780:	00813823          	sd	s0,16(sp)
    80004784:	00913423          	sd	s1,8(sp)
    80004788:	02010413          	addi	s0,sp,32
    printString("Izaberite test primer [1-8]\n");
    8000478c:	00005517          	auipc	a0,0x5
    80004790:	a8c50513          	addi	a0,a0,-1396 # 80009218 <CONSOLE_STATUS+0x208>
    80004794:	00000097          	auipc	ra,0x0
    80004798:	98c080e7          	jalr	-1652(ra) # 80004120 <_Z11printStringPKc>
    int test = getc() - '0';
    8000479c:	ffffd097          	auipc	ra,0xffffd
    800047a0:	078080e7          	jalr	120(ra) # 80001814 <_Z4getcv>
    800047a4:	fd05049b          	addiw	s1,a0,-48
    getc();
    800047a8:	ffffd097          	auipc	ra,0xffffd
    800047ac:	06c080e7          	jalr	108(ra) # 80001814 <_Z4getcv>
            printString("Nije navedeno da je zadatak 4 implementiran\n");
            return;
        }
    }

    switch (test) {
    800047b0:	00800793          	li	a5,8
    800047b4:	1097e863          	bltu	a5,s1,800048c4 <_Z8userMainPv+0x14c>
    800047b8:	00249493          	slli	s1,s1,0x2
    800047bc:	00005717          	auipc	a4,0x5
    800047c0:	cb470713          	addi	a4,a4,-844 # 80009470 <CONSOLE_STATUS+0x460>
    800047c4:	00e484b3          	add	s1,s1,a4
    800047c8:	0004a783          	lw	a5,0(s1)
    800047cc:	00e787b3          	add	a5,a5,a4
    800047d0:	00078067          	jr	a5
        case 1:
#if LEVEL_2_IMPLEMENTED == 1
            Threads_C_API_test();
    800047d4:	fffff097          	auipc	ra,0xfffff
    800047d8:	da4080e7          	jalr	-604(ra) # 80003578 <_Z18Threads_C_API_testv>
            printString("TEST 1 (zadatak 2, niti C API i sinhrona promena konteksta)\n");
    800047dc:	00005517          	auipc	a0,0x5
    800047e0:	a5c50513          	addi	a0,a0,-1444 # 80009238 <CONSOLE_STATUS+0x228>
    800047e4:	00000097          	auipc	ra,0x0
    800047e8:	93c080e7          	jalr	-1732(ra) # 80004120 <_Z11printStringPKc>
#endif
        break;
        default:
            printString("Niste uneli odgovarajuci broj za test\n");
    }
}
    800047ec:	01813083          	ld	ra,24(sp)
    800047f0:	01013403          	ld	s0,16(sp)
    800047f4:	00813483          	ld	s1,8(sp)
    800047f8:	02010113          	addi	sp,sp,32
    800047fc:	00008067          	ret
            Threads_CPP_API_test();
    80004800:	ffffe097          	auipc	ra,0xffffe
    80004804:	b50080e7          	jalr	-1200(ra) # 80002350 <_Z20Threads_CPP_API_testv>
            printString("TEST 2 (zadatak 2., niti CPP API i sinhrona promena konteksta)\n");
    80004808:	00005517          	auipc	a0,0x5
    8000480c:	a7050513          	addi	a0,a0,-1424 # 80009278 <CONSOLE_STATUS+0x268>
    80004810:	00000097          	auipc	ra,0x0
    80004814:	910080e7          	jalr	-1776(ra) # 80004120 <_Z11printStringPKc>
            break;
    80004818:	fd5ff06f          	j	800047ec <_Z8userMainPv+0x74>
            producerConsumer_C_API();
    8000481c:	ffffd097          	auipc	ra,0xffffd
    80004820:	388080e7          	jalr	904(ra) # 80001ba4 <_Z22producerConsumer_C_APIv>
            printString("TEST 3 (zadatak 3., kompletan C API sa semaforima, sinhrona promena konteksta)\n");
    80004824:	00005517          	auipc	a0,0x5
    80004828:	a9450513          	addi	a0,a0,-1388 # 800092b8 <CONSOLE_STATUS+0x2a8>
    8000482c:	00000097          	auipc	ra,0x0
    80004830:	8f4080e7          	jalr	-1804(ra) # 80004120 <_Z11printStringPKc>
            break;
    80004834:	fb9ff06f          	j	800047ec <_Z8userMainPv+0x74>
            producerConsumer_CPP_Sync_API();
    80004838:	fffff097          	auipc	ra,0xfffff
    8000483c:	084080e7          	jalr	132(ra) # 800038bc <_Z29producerConsumer_CPP_Sync_APIv>
            printString("TEST 4 (zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta)\n");
    80004840:	00005517          	auipc	a0,0x5
    80004844:	ac850513          	addi	a0,a0,-1336 # 80009308 <CONSOLE_STATUS+0x2f8>
    80004848:	00000097          	auipc	ra,0x0
    8000484c:	8d8080e7          	jalr	-1832(ra) # 80004120 <_Z11printStringPKc>
            break;
    80004850:	f9dff06f          	j	800047ec <_Z8userMainPv+0x74>
            testSleeping();
    80004854:	00000097          	auipc	ra,0x0
    80004858:	704080e7          	jalr	1796(ra) # 80004f58 <_Z12testSleepingv>
            printString("TEST 5 (zadatak 4., thread_sleep test C API)\n");
    8000485c:	00005517          	auipc	a0,0x5
    80004860:	b0450513          	addi	a0,a0,-1276 # 80009360 <CONSOLE_STATUS+0x350>
    80004864:	00000097          	auipc	ra,0x0
    80004868:	8bc080e7          	jalr	-1860(ra) # 80004120 <_Z11printStringPKc>
            break;
    8000486c:	f81ff06f          	j	800047ec <_Z8userMainPv+0x74>
            testConsumerProducer();
    80004870:	ffffe097          	auipc	ra,0xffffe
    80004874:	fa0080e7          	jalr	-96(ra) # 80002810 <_Z20testConsumerProducerv>
            printString("TEST 6 (zadatak 4. CPP API i asinhrona promena konteksta)\n");
    80004878:	00005517          	auipc	a0,0x5
    8000487c:	b1850513          	addi	a0,a0,-1256 # 80009390 <CONSOLE_STATUS+0x380>
    80004880:	00000097          	auipc	ra,0x0
    80004884:	8a0080e7          	jalr	-1888(ra) # 80004120 <_Z11printStringPKc>
            break;
    80004888:	f65ff06f          	j	800047ec <_Z8userMainPv+0x74>
            System_Mode_test();
    8000488c:	00002097          	auipc	ra,0x2
    80004890:	e48080e7          	jalr	-440(ra) # 800066d4 <_Z16System_Mode_testv>
            printString("Test se nije uspesno zavrsio\n");
    80004894:	00005517          	auipc	a0,0x5
    80004898:	b3c50513          	addi	a0,a0,-1220 # 800093d0 <CONSOLE_STATUS+0x3c0>
    8000489c:	00000097          	auipc	ra,0x0
    800048a0:	884080e7          	jalr	-1916(ra) # 80004120 <_Z11printStringPKc>
            printString("TEST 7 (zadatak 2., testiranje da li se korisnicki kod izvrsava u korisnickom rezimu)\n");
    800048a4:	00005517          	auipc	a0,0x5
    800048a8:	b4c50513          	addi	a0,a0,-1204 # 800093f0 <CONSOLE_STATUS+0x3e0>
    800048ac:	00000097          	auipc	ra,0x0
    800048b0:	874080e7          	jalr	-1932(ra) # 80004120 <_Z11printStringPKc>
            break;
    800048b4:	f39ff06f          	j	800047ec <_Z8userMainPv+0x74>
            ::test();
    800048b8:	00001097          	auipc	ra,0x1
    800048bc:	704080e7          	jalr	1796(ra) # 80005fbc <_Z4testv>
        break;
    800048c0:	f2dff06f          	j	800047ec <_Z8userMainPv+0x74>
            printString("Niste uneli odgovarajuci broj za test\n");
    800048c4:	00005517          	auipc	a0,0x5
    800048c8:	b8450513          	addi	a0,a0,-1148 # 80009448 <CONSOLE_STATUS+0x438>
    800048cc:	00000097          	auipc	ra,0x0
    800048d0:	854080e7          	jalr	-1964(ra) # 80004120 <_Z11printStringPKc>
    800048d4:	f19ff06f          	j	800047ec <_Z8userMainPv+0x74>

00000000800048d8 <main>:

void userMain(void* arg);



int main() {
    800048d8:	fe010113          	addi	sp,sp,-32
    800048dc:	00113c23          	sd	ra,24(sp)
    800048e0:	00813823          	sd	s0,16(sp)
    800048e4:	02010413          	addi	s0,sp,32
    MemoryAllocator::initialize();
    800048e8:	00001097          	auipc	ra,0x1
    800048ec:	864080e7          	jalr	-1948(ra) # 8000514c <_ZN15MemoryAllocator10initializeEv>
    init_console();
    800048f0:	00002097          	auipc	ra,0x2
    800048f4:	200080e7          	jalr	512(ra) # 80006af0 <_Z12init_consolev>
    Riscv::w_stvec((uint64)&Riscv::supervisorTrap);
    800048f8:	00007797          	auipc	a5,0x7
    800048fc:	2687b783          	ld	a5,616(a5) # 8000bb60 <_GLOBAL_OFFSET_TABLE_+0x28>
    return stvec;
}

inline void Riscv::w_stvec(uint64 stvec)
{
    __asm__ volatile("csrw stvec, %0" :: "r"(stvec));
    80004900:	10579073          	csrw	stvec,a5
    TCB::running = TCB::createThread(nullptr, nullptr);
    80004904:	00000593          	li	a1,0
    80004908:	00000513          	li	a0,0
    8000490c:	00000097          	auipc	ra,0x0
    80004910:	294080e7          	jalr	660(ra) # 80004ba0 <_ZN3TCB12createThreadEPFvPvES0_>
    80004914:	00007797          	auipc	a5,0x7
    80004918:	27c7b783          	ld	a5,636(a5) # 8000bb90 <_GLOBAL_OFFSET_TABLE_+0x58>
    8000491c:	00a7b023          	sd	a0,0(a5)
    thread_t userm = 0;
    80004920:	fe043423          	sd	zero,-24(s0)
    //Thread* mainWorker = new Thread(userMain, nullptr);
    thread_create(&userm, userMain, nullptr);
    80004924:	00000613          	li	a2,0
    80004928:	00007597          	auipc	a1,0x7
    8000492c:	2585b583          	ld	a1,600(a1) # 8000bb80 <_GLOBAL_OFFSET_TABLE_+0x48>
    80004930:	fe840513          	addi	a0,s0,-24
    80004934:	ffffd097          	auipc	ra,0xffffd
    80004938:	d20080e7          	jalr	-736(ra) # 80001654 <_Z13thread_createPP7_threadPFvPvES2_>
    __asm__ volatile("csrw sip, %0" :: "r"(sip));
}

inline void Riscv::ms_sstatus(uint64 mask)
{
    __asm__ volatile("csrs sstatus, %0" :: "r"(mask));
    8000493c:	00200793          	li	a5,2
    80004940:	1007a073          	csrs	sstatus,a5
    Riscv::ms_sstatus(Riscv::SSTATUS_SIE);
    //mainWorker->start();
    while (!(((TCB*)userm)->isFinished())) {
    80004944:	fe843783          	ld	a5,-24(s0)
public:
    static int ID;
    int id;

    bool isFinished() const {
        return finished;
    80004948:	0387c783          	lbu	a5,56(a5)
    8000494c:	0ff7f793          	andi	a5,a5,255
    80004950:	00079863          	bnez	a5,80004960 <main+0x88>
        thread_dispatch();
    80004954:	ffffd097          	auipc	ra,0xffffd
    80004958:	da4080e7          	jalr	-604(ra) # 800016f8 <_Z15thread_dispatchv>
    8000495c:	fe9ff06f          	j	80004944 <main+0x6c>
    asm volatile (
    "li t0, 0x100000\n\t"
    "li t1, 0x5555\n\t"
    "sw t1, 0(t0)\n\t"
    ::: "t0", "t1"
);
    80004960:	001002b7          	lui	t0,0x100
    80004964:	00005337          	lui	t1,0x5
    80004968:	5553031b          	addiw	t1,t1,1365
    8000496c:	0062a023          	sw	t1,0(t0) # 100000 <_entry-0x7ff00000>
    return 0;
}
    80004970:	00000513          	li	a0,0
    80004974:	01813083          	ld	ra,24(sp)
    80004978:	01013403          	ld	s0,16(sp)
    8000497c:	02010113          	addi	sp,sp,32
    80004980:	00008067          	ret

0000000080004984 <_ZN7Console4getcEv>:
#include "../h/console.hpp"


char Console::getc () {
    80004984:	ff010113          	addi	sp,sp,-16
    80004988:	00113423          	sd	ra,8(sp)
    8000498c:	00813023          	sd	s0,0(sp)
    80004990:	01010413          	addi	s0,sp,16
    char c = ::getc();
    80004994:	ffffd097          	auipc	ra,0xffffd
    80004998:	e80080e7          	jalr	-384(ra) # 80001814 <_Z4getcv>
    return c;
}
    8000499c:	00813083          	ld	ra,8(sp)
    800049a0:	00013403          	ld	s0,0(sp)
    800049a4:	01010113          	addi	sp,sp,16
    800049a8:	00008067          	ret

00000000800049ac <_ZN7Console4putcEc>:

void Console::putc (char c) {
    800049ac:	ff010113          	addi	sp,sp,-16
    800049b0:	00113423          	sd	ra,8(sp)
    800049b4:	00813023          	sd	s0,0(sp)
    800049b8:	01010413          	addi	s0,sp,16
    ::putc(c);
    800049bc:	ffffd097          	auipc	ra,0xffffd
    800049c0:	e8c080e7          	jalr	-372(ra) # 80001848 <_Z4putcc>
    800049c4:	00813083          	ld	ra,8(sp)
    800049c8:	00013403          	ld	s0,0(sp)
    800049cc:	01010113          	addi	sp,sp,16
    800049d0:	00008067          	ret

00000000800049d4 <_ZN3TCB5yieldEv>:

TCB* TCB::running = nullptr;
int TCB::ID = 0;
uint64 TCB::timeSliceCounter = 0;

void TCB::yield() {
    800049d4:	ff010113          	addi	sp,sp,-16
    800049d8:	00813423          	sd	s0,8(sp)
    800049dc:	01010413          	addi	s0,sp,16
    __asm__ volatile (
        "mv a0, %0\t\n"
        "ecall" :: "r"(0x13) : "a0");
    800049e0:	01300793          	li	a5,19
    800049e4:	00078513          	mv	a0,a5
    800049e8:	00000073          	ecall
}
    800049ec:	00813403          	ld	s0,8(sp)
    800049f0:	01010113          	addi	sp,sp,16
    800049f4:	00008067          	ret

00000000800049f8 <_ZN3TCB13threadWrapperEv>:
    p2->sem = new SemKernel(0);
    p1->partner = p2;
    p2->partner = p1;
}

void TCB::threadWrapper() {
    800049f8:	fe010113          	addi	sp,sp,-32
    800049fc:	00113c23          	sd	ra,24(sp)
    80004a00:	00813823          	sd	s0,16(sp)
    80004a04:	00913423          	sd	s1,8(sp)
    80004a08:	02010413          	addi	s0,sp,32
    Riscv::popSppSpie();
    80004a0c:	00000097          	auipc	ra,0x0
    80004a10:	790080e7          	jalr	1936(ra) # 8000519c <_ZN5Riscv10popSppSpieEv>
    running->body(running->getArgs());
    80004a14:	00007497          	auipc	s1,0x7
    80004a18:	22448493          	addi	s1,s1,548 # 8000bc38 <_ZN3TCB7runningE>
    80004a1c:	0004b783          	ld	a5,0(s1)
    80004a20:	0087b703          	ld	a4,8(a5)
    80004a24:	0487b503          	ld	a0,72(a5)
    80004a28:	000700e7          	jalr	a4
    running->setFinished(true);
    80004a2c:	0004b783          	ld	a5,0(s1)
    }
    void setFinished(bool stat) {
        this->finished = stat;
    80004a30:	00100713          	li	a4,1
    80004a34:	02e78c23          	sb	a4,56(a5)
    TCB::yield();
    80004a38:	00000097          	auipc	ra,0x0
    80004a3c:	f9c080e7          	jalr	-100(ra) # 800049d4 <_ZN3TCB5yieldEv>
}
    80004a40:	01813083          	ld	ra,24(sp)
    80004a44:	01013403          	ld	s0,16(sp)
    80004a48:	00813483          	ld	s1,8(sp)
    80004a4c:	02010113          	addi	sp,sp,32
    80004a50:	00008067          	ret

0000000080004a54 <_ZN3TCB8dispatchEv>:
void TCB::dispatch() {
    80004a54:	fe010113          	addi	sp,sp,-32
    80004a58:	00113c23          	sd	ra,24(sp)
    80004a5c:	00813823          	sd	s0,16(sp)
    80004a60:	00913423          	sd	s1,8(sp)
    80004a64:	01213023          	sd	s2,0(sp)
    80004a68:	02010413          	addi	s0,sp,32
    TCB* old = TCB::running;
    80004a6c:	00007917          	auipc	s2,0x7
    80004a70:	1cc93903          	ld	s2,460(s2) # 8000bc38 <_ZN3TCB7runningE>
    TCB* next = Scheduler::get();
    80004a74:	00001097          	auipc	ra,0x1
    80004a78:	244080e7          	jalr	580(ra) # 80005cb8 <_ZN9Scheduler3getEv>
    if (next == nullptr) {
    80004a7c:	02050e63          	beqz	a0,80004ab8 <_ZN3TCB8dispatchEv+0x64>
    80004a80:	00050493          	mv	s1,a0
        return finished;
    80004a84:	03894783          	lbu	a5,56(s2)
    80004a88:	0ff7f793          	andi	a5,a5,255
    if (!old->isFinished() && !old->isBlocked()) {
    80004a8c:	00079663          	bnez	a5,80004a98 <_ZN3TCB8dispatchEv+0x44>
    void setBlocked(bool stat) {
        this->blocked = stat;
    }

    bool isBlocked() const {
        return blocked;
    80004a90:	03994783          	lbu	a5,57(s2)
    80004a94:	02078e63          	beqz	a5,80004ad0 <_ZN3TCB8dispatchEv+0x7c>
    TCB::running = next;
    80004a98:	00007797          	auipc	a5,0x7
    80004a9c:	1a97b023          	sd	s1,416(a5) # 8000bc38 <_ZN3TCB7runningE>
}

inline void Riscv::mc_sstatus(uint64 mask)
{
    __asm__ volatile("csrc sstatus, %0" :: "r"(mask));
    80004aa0:	10000793          	li	a5,256
    80004aa4:	1007b073          	csrc	sstatus,a5
    TCB::contextSwitch(&old->context, &running->context);
    80004aa8:	01848593          	addi	a1,s1,24
    80004aac:	01890513          	addi	a0,s2,24
    80004ab0:	ffffc097          	auipc	ra,0xffffc
    80004ab4:	780080e7          	jalr	1920(ra) # 80001230 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>
}
    80004ab8:	01813083          	ld	ra,24(sp)
    80004abc:	01013403          	ld	s0,16(sp)
    80004ac0:	00813483          	ld	s1,8(sp)
    80004ac4:	00013903          	ld	s2,0(sp)
    80004ac8:	02010113          	addi	sp,sp,32
    80004acc:	00008067          	ret
        Scheduler::put(old);
    80004ad0:	00090513          	mv	a0,s2
    80004ad4:	00001097          	auipc	ra,0x1
    80004ad8:	24c080e7          	jalr	588(ra) # 80005d20 <_ZN9Scheduler3putEP3TCB>
    80004adc:	fbdff06f          	j	80004a98 <_ZN3TCB8dispatchEv+0x44>

0000000080004ae0 <_ZN3TCB10setPartnerEPS_S0_>:
void TCB::setPartner(TCB *p1, TCB *p2) {
    80004ae0:	fd010113          	addi	sp,sp,-48
    80004ae4:	02113423          	sd	ra,40(sp)
    80004ae8:	02813023          	sd	s0,32(sp)
    80004aec:	00913c23          	sd	s1,24(sp)
    80004af0:	01213823          	sd	s2,16(sp)
    80004af4:	01313423          	sd	s3,8(sp)
    80004af8:	03010413          	addi	s0,sp,48
    80004afc:	00050913          	mv	s2,a0
    80004b00:	00058493          	mv	s1,a1
    p1->sem = new SemKernel(0);
    80004b04:	01800513          	li	a0,24
    80004b08:	00000097          	auipc	ra,0x0
    80004b0c:	2fc080e7          	jalr	764(ra) # 80004e04 <_Znwm>
    80004b10:	00050993          	mv	s3,a0
    80004b14:	00000593          	li	a1,0
    80004b18:	00001097          	auipc	ra,0x1
    80004b1c:	cb0080e7          	jalr	-848(ra) # 800057c8 <_ZN9SemKernelC1Ei>
    80004b20:	05393c23          	sd	s3,88(s2)
    p2->sem = new SemKernel(0);
    80004b24:	01800513          	li	a0,24
    80004b28:	00000097          	auipc	ra,0x0
    80004b2c:	2dc080e7          	jalr	732(ra) # 80004e04 <_Znwm>
    80004b30:	00050993          	mv	s3,a0
    80004b34:	00000593          	li	a1,0
    80004b38:	00001097          	auipc	ra,0x1
    80004b3c:	c90080e7          	jalr	-880(ra) # 800057c8 <_ZN9SemKernelC1Ei>
    80004b40:	0534bc23          	sd	s3,88(s1)
    p1->partner = p2;
    80004b44:	04993823          	sd	s1,80(s2)
    p2->partner = p1;
    80004b48:	0524b823          	sd	s2,80(s1)
}
    80004b4c:	02813083          	ld	ra,40(sp)
    80004b50:	02013403          	ld	s0,32(sp)
    80004b54:	01813483          	ld	s1,24(sp)
    80004b58:	01013903          	ld	s2,16(sp)
    80004b5c:	00813983          	ld	s3,8(sp)
    80004b60:	03010113          	addi	sp,sp,48
    80004b64:	00008067          	ret
    80004b68:	00050493          	mv	s1,a0
    p1->sem = new SemKernel(0);
    80004b6c:	00098513          	mv	a0,s3
    80004b70:	00000097          	auipc	ra,0x0
    80004b74:	2f4080e7          	jalr	756(ra) # 80004e64 <_ZdlPv>
    80004b78:	00048513          	mv	a0,s1
    80004b7c:	00008097          	auipc	ra,0x8
    80004b80:	2fc080e7          	jalr	764(ra) # 8000ce78 <_Unwind_Resume>
    80004b84:	00050493          	mv	s1,a0
    p2->sem = new SemKernel(0);
    80004b88:	00098513          	mv	a0,s3
    80004b8c:	00000097          	auipc	ra,0x0
    80004b90:	2d8080e7          	jalr	728(ra) # 80004e64 <_ZdlPv>
    80004b94:	00048513          	mv	a0,s1
    80004b98:	00008097          	auipc	ra,0x8
    80004b9c:	2e0080e7          	jalr	736(ra) # 8000ce78 <_Unwind_Resume>

0000000080004ba0 <_ZN3TCB12createThreadEPFvPvES0_>:

TCB* TCB::createThread(TCB::Body body,void * args) {
    80004ba0:	fd010113          	addi	sp,sp,-48
    80004ba4:	02113423          	sd	ra,40(sp)
    80004ba8:	02813023          	sd	s0,32(sp)
    80004bac:	00913c23          	sd	s1,24(sp)
    80004bb0:	01213823          	sd	s2,16(sp)
    80004bb4:	01313423          	sd	s3,8(sp)
    80004bb8:	03010413          	addi	s0,sp,48
    80004bbc:	00050913          	mv	s2,a0
    80004bc0:	00058993          	mv	s3,a1
    return new TCB(body,args,TIME_SLICE);
    80004bc4:	06000513          	li	a0,96
    80004bc8:	00000097          	auipc	ra,0x0
    80004bcc:	23c080e7          	jalr	572(ra) # 80004e04 <_Znwm>
    80004bd0:	00050493          	mv	s1,a0
    context({
        (uint64)&threadWrapper,
        (uint64)(stack != nullptr ? ( (uint64)(&stack[STACK_SIZE]) & ~0xFULL ) : 0)
    }),
    timeSlice(timeSlice), sleepTimeSlice(0), finished(false), blocked(false),
    terminated(false), semStatus(0), reqsem_n(0), args(args), partner(nullptr), sem(nullptr)
    80004bd4:	01253423          	sd	s2,8(a0)
    stack(body != nullptr ? new uint64[STACK_SIZE] : nullptr),
    80004bd8:	00090a63          	beqz	s2,80004bec <_ZN3TCB12createThreadEPFvPvES0_+0x4c>
    80004bdc:	00010537          	lui	a0,0x10
    80004be0:	00000097          	auipc	ra,0x0
    80004be4:	254080e7          	jalr	596(ra) # 80004e34 <_Znam>
    80004be8:	0080006f          	j	80004bf0 <_ZN3TCB12createThreadEPFvPvES0_+0x50>
    80004bec:	00000513          	li	a0,0
    terminated(false), semStatus(0), reqsem_n(0), args(args), partner(nullptr), sem(nullptr)
    80004bf0:	00a4b823          	sd	a0,16(s1)
    80004bf4:	00000797          	auipc	a5,0x0
    80004bf8:	e0478793          	addi	a5,a5,-508 # 800049f8 <_ZN3TCB13threadWrapperEv>
    80004bfc:	00f4bc23          	sd	a5,24(s1)
        (uint64)(stack != nullptr ? ( (uint64)(&stack[STACK_SIZE]) & ~0xFULL ) : 0)
    80004c00:	06050663          	beqz	a0,80004c6c <_ZN3TCB12createThreadEPFvPvES0_+0xcc>
    80004c04:	000107b7          	lui	a5,0x10
    80004c08:	00f507b3          	add	a5,a0,a5
    80004c0c:	ff07f793          	andi	a5,a5,-16
    terminated(false), semStatus(0), reqsem_n(0), args(args), partner(nullptr), sem(nullptr)
    80004c10:	02f4b023          	sd	a5,32(s1)
    80004c14:	00200793          	li	a5,2
    80004c18:	02f4b423          	sd	a5,40(s1)
    80004c1c:	0204b823          	sd	zero,48(s1)
    80004c20:	02048c23          	sb	zero,56(s1)
    80004c24:	02048ca3          	sb	zero,57(s1)
    80004c28:	02048d23          	sb	zero,58(s1)
    80004c2c:	0204ae23          	sw	zero,60(s1)
    80004c30:	0404a023          	sw	zero,64(s1)
    80004c34:	0534b423          	sd	s3,72(s1)
    80004c38:	0404b823          	sd	zero,80(s1)
    80004c3c:	0404bc23          	sd	zero,88(s1)
    {
        this->id = ID++;
    80004c40:	00007717          	auipc	a4,0x7
    80004c44:	ff870713          	addi	a4,a4,-8 # 8000bc38 <_ZN3TCB7runningE>
    80004c48:	00872783          	lw	a5,8(a4)
    80004c4c:	0017869b          	addiw	a3,a5,1
    80004c50:	00d72423          	sw	a3,8(a4)
    80004c54:	00f4a023          	sw	a5,0(s1)
        if (body != nullptr) {
    80004c58:	02090c63          	beqz	s2,80004c90 <_ZN3TCB12createThreadEPFvPvES0_+0xf0>
            Scheduler::put(this);
    80004c5c:	00048513          	mv	a0,s1
    80004c60:	00001097          	auipc	ra,0x1
    80004c64:	0c0080e7          	jalr	192(ra) # 80005d20 <_ZN9Scheduler3putEP3TCB>
    80004c68:	0280006f          	j	80004c90 <_ZN3TCB12createThreadEPFvPvES0_+0xf0>
        (uint64)(stack != nullptr ? ( (uint64)(&stack[STACK_SIZE]) & ~0xFULL ) : 0)
    80004c6c:	00000793          	li	a5,0
    80004c70:	fa1ff06f          	j	80004c10 <_ZN3TCB12createThreadEPFvPvES0_+0x70>
    80004c74:	00050913          	mv	s2,a0
    80004c78:	00048513          	mv	a0,s1
    80004c7c:	00000097          	auipc	ra,0x0
    80004c80:	1e8080e7          	jalr	488(ra) # 80004e64 <_ZdlPv>
    80004c84:	00090513          	mv	a0,s2
    80004c88:	00008097          	auipc	ra,0x8
    80004c8c:	1f0080e7          	jalr	496(ra) # 8000ce78 <_Unwind_Resume>
}
    80004c90:	00048513          	mv	a0,s1
    80004c94:	02813083          	ld	ra,40(sp)
    80004c98:	02013403          	ld	s0,32(sp)
    80004c9c:	01813483          	ld	s1,24(sp)
    80004ca0:	01013903          	ld	s2,16(sp)
    80004ca4:	00813983          	ld	s3,8(sp)
    80004ca8:	03010113          	addi	sp,sp,48
    80004cac:	00008067          	ret

0000000080004cb0 <_ZN3TCB10time_sleepEm>:


void TCB::time_sleep(uint64 timeout) {
    80004cb0:	ff010113          	addi	sp,sp,-16
    80004cb4:	00813423          	sd	s0,8(sp)
    80004cb8:	01010413          	addi	s0,sp,16
    if (timeout == 0) return;
    80004cbc:	00050c63          	beqz	a0,80004cd4 <_ZN3TCB10time_sleepEm+0x24>
    80004cc0:	00050793          	mv	a5,a0

    __asm__ volatile (
        "mv a0, %0\t\n"
        "mv a1, %1\t\n"
        "ecall" :: "r"(0x15), "r"(timeout) : "a0", "a1" );
    80004cc4:	01500713          	li	a4,21
    80004cc8:	00070513          	mv	a0,a4
    80004ccc:	00078593          	mv	a1,a5
    80004cd0:	00000073          	ecall
}
    80004cd4:	00813403          	ld	s0,8(sp)
    80004cd8:	01010113          	addi	sp,sp,16
    80004cdc:	00008067          	ret

0000000080004ce0 <_ZN3TCB23update_sleeping_threadsEv>:

void TCB::update_sleeping_threads() {
    80004ce0:	fc010113          	addi	sp,sp,-64
    80004ce4:	02113c23          	sd	ra,56(sp)
    80004ce8:	02813823          	sd	s0,48(sp)
    80004cec:	02913423          	sd	s1,40(sp)
    80004cf0:	03213023          	sd	s2,32(sp)
    80004cf4:	01313c23          	sd	s3,24(sp)
    80004cf8:	04010413          	addi	s0,sp,64
        }
        printString("\n");
    }

    int getNumOfElements() {
        Elem* curr = head;
    80004cfc:	00007797          	auipc	a5,0x7
    80004d00:	e8c7b783          	ld	a5,-372(a5) # 8000bb88 <_GLOBAL_OFFSET_TABLE_+0x50>
    80004d04:	0007b783          	ld	a5,0(a5)
        int cnt = 0;
    80004d08:	00000913          	li	s2,0

        while (curr) {
    80004d0c:	00078863          	beqz	a5,80004d1c <_ZN3TCB23update_sleeping_threadsEv+0x3c>
            cnt++;
    80004d10:	0019091b          	addiw	s2,s2,1
            curr = curr->next;
    80004d14:	0087b783          	ld	a5,8(a5)
        while (curr) {
    80004d18:	ff5ff06f          	j	80004d0c <_ZN3TCB23update_sleeping_threadsEv+0x2c>
    int cnt = Scheduler::sleepingThreads.getNumOfElements();
    if (cnt == 0) return;
    80004d1c:	02091063          	bnez	s2,80004d3c <_ZN3TCB23update_sleeping_threadsEv+0x5c>
    }

    while(privremeniRed.getNumOfElements()) {
        Scheduler::putS(privremeniRed.removeFirst());
    }
}
    80004d20:	03813083          	ld	ra,56(sp)
    80004d24:	03013403          	ld	s0,48(sp)
    80004d28:	02813483          	ld	s1,40(sp)
    80004d2c:	02013903          	ld	s2,32(sp)
    80004d30:	01813983          	ld	s3,24(sp)
    80004d34:	04010113          	addi	sp,sp,64
    80004d38:	00008067          	ret
    List() : head(nullptr), tail(nullptr) {}
    80004d3c:	fc043023          	sd	zero,-64(s0)
    80004d40:	fc043423          	sd	zero,-56(s0)
    for (int i = 0; i < cnt; i++) {
    80004d44:	00000993          	li	s3,0
    80004d48:	02c0006f          	j	80004d74 <_ZN3TCB23update_sleeping_threadsEv+0x94>
        Elem* elem = new Elem(data, nullptr);
    80004d4c:	01000513          	li	a0,16
    80004d50:	00000097          	auipc	ra,0x0
    80004d54:	0b4080e7          	jalr	180(ra) # 80004e04 <_Znwm>
        Elem(T* data, Elem* next) : data(data), next(next) {}
    80004d58:	00953023          	sd	s1,0(a0) # 10000 <_entry-0x7fff0000>
    80004d5c:	00053423          	sd	zero,8(a0)
        if (tail)
    80004d60:	fc843783          	ld	a5,-56(s0)
    80004d64:	04078463          	beqz	a5,80004dac <_ZN3TCB23update_sleeping_threadsEv+0xcc>
            tail->next = elem;
    80004d68:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    80004d6c:	fca43423          	sd	a0,-56(s0)
    80004d70:	0019899b          	addiw	s3,s3,1
    80004d74:	0729d663          	bge	s3,s2,80004de0 <_ZN3TCB23update_sleeping_threadsEv+0x100>
        TCB* current = Scheduler::getS();
    80004d78:	00001097          	auipc	ra,0x1
    80004d7c:	014080e7          	jalr	20(ra) # 80005d8c <_ZN9Scheduler4getSEv>
    80004d80:	00050493          	mv	s1,a0
        if (!current) break;
    80004d84:	04050e63          	beqz	a0,80004de0 <_ZN3TCB23update_sleeping_threadsEv+0x100>
        current->sleepTimeSlice--;
    80004d88:	03053783          	ld	a5,48(a0)
    80004d8c:	fff78793          	addi	a5,a5,-1
    80004d90:	02f53823          	sd	a5,48(a0)
        if (current->sleepTimeSlice <= 0) {
    80004d94:	fa079ce3          	bnez	a5,80004d4c <_ZN3TCB23update_sleeping_threadsEv+0x6c>
        this->blocked = stat;
    80004d98:	02050ca3          	sb	zero,57(a0)
            current->sleepTimeSlice = 0;
    80004d9c:	02053823          	sd	zero,48(a0)
            Scheduler::put(current);
    80004da0:	00001097          	auipc	ra,0x1
    80004da4:	f80080e7          	jalr	-128(ra) # 80005d20 <_ZN9Scheduler3putEP3TCB>
    80004da8:	fc9ff06f          	j	80004d70 <_ZN3TCB23update_sleeping_threadsEv+0x90>
            head = tail = elem;
    80004dac:	fca43423          	sd	a0,-56(s0)
    80004db0:	fca43023          	sd	a0,-64(s0)
    80004db4:	fbdff06f          	j	80004d70 <_ZN3TCB23update_sleeping_threadsEv+0x90>
    while(privremeniRed.getNumOfElements()) {
    80004db8:	f60704e3          	beqz	a4,80004d20 <_ZN3TCB23update_sleeping_threadsEv+0x40>
        if (!head)
    80004dbc:	04050063          	beqz	a0,80004dfc <_ZN3TCB23update_sleeping_threadsEv+0x11c>
        head = head->next;
    80004dc0:	00853783          	ld	a5,8(a0)
    80004dc4:	fcf43023          	sd	a5,-64(s0)
        T* ret = elem->data;
    80004dc8:	00053483          	ld	s1,0(a0)
        delete elem;
    80004dcc:	00000097          	auipc	ra,0x0
    80004dd0:	098080e7          	jalr	152(ra) # 80004e64 <_ZdlPv>
        Scheduler::putS(privremeniRed.removeFirst());
    80004dd4:	00048513          	mv	a0,s1
    80004dd8:	00001097          	auipc	ra,0x1
    80004ddc:	01c080e7          	jalr	28(ra) # 80005df4 <_ZN9Scheduler4putSEP3TCB>
        Elem* curr = head;
    80004de0:	fc043503          	ld	a0,-64(s0)
    80004de4:	00050793          	mv	a5,a0
        int cnt = 0;
    80004de8:	00000713          	li	a4,0
        while (curr) {
    80004dec:	fc0786e3          	beqz	a5,80004db8 <_ZN3TCB23update_sleeping_threadsEv+0xd8>
            cnt++;
    80004df0:	0017071b          	addiw	a4,a4,1
            curr = curr->next;
    80004df4:	0087b783          	ld	a5,8(a5)
        while (curr) {
    80004df8:	ff5ff06f          	j	80004dec <_ZN3TCB23update_sleeping_threadsEv+0x10c>
            return nullptr;
    80004dfc:	00050493          	mv	s1,a0
    80004e00:	fd5ff06f          	j	80004dd4 <_ZN3TCB23update_sleeping_threadsEv+0xf4>

0000000080004e04 <_Znwm>:
#include "../h/memory_allocator.hpp"

void *operator new(uint64 n) {
    80004e04:	ff010113          	addi	sp,sp,-16
    80004e08:	00113423          	sd	ra,8(sp)
    80004e0c:	00813023          	sd	s0,0(sp)
    80004e10:	01010413          	addi	s0,sp,16
    size_t blocks = (n + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE;
    80004e14:	03f50513          	addi	a0,a0,63
    return MemoryAllocator::allocate(blocks);
    80004e18:	00655513          	srli	a0,a0,0x6
    80004e1c:	00000097          	auipc	ra,0x0
    80004e20:	1c4080e7          	jalr	452(ra) # 80004fe0 <_ZN15MemoryAllocator8allocateEm>

}
    80004e24:	00813083          	ld	ra,8(sp)
    80004e28:	00013403          	ld	s0,0(sp)
    80004e2c:	01010113          	addi	sp,sp,16
    80004e30:	00008067          	ret

0000000080004e34 <_Znam>:
void *operator new[](uint64 n) {
    80004e34:	ff010113          	addi	sp,sp,-16
    80004e38:	00113423          	sd	ra,8(sp)
    80004e3c:	00813023          	sd	s0,0(sp)
    80004e40:	01010413          	addi	s0,sp,16
    size_t blocks = (n + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE;
    80004e44:	03f50513          	addi	a0,a0,63
    return MemoryAllocator::allocate(blocks);
    80004e48:	00655513          	srli	a0,a0,0x6
    80004e4c:	00000097          	auipc	ra,0x0
    80004e50:	194080e7          	jalr	404(ra) # 80004fe0 <_ZN15MemoryAllocator8allocateEm>
}
    80004e54:	00813083          	ld	ra,8(sp)
    80004e58:	00013403          	ld	s0,0(sp)
    80004e5c:	01010113          	addi	sp,sp,16
    80004e60:	00008067          	ret

0000000080004e64 <_ZdlPv>:

void operator delete(void* p) noexcept {
    80004e64:	ff010113          	addi	sp,sp,-16
    80004e68:	00113423          	sd	ra,8(sp)
    80004e6c:	00813023          	sd	s0,0(sp)
    80004e70:	01010413          	addi	s0,sp,16
MemoryAllocator::free(p);
    80004e74:	00000097          	auipc	ra,0x0
    80004e78:	210080e7          	jalr	528(ra) # 80005084 <_ZN15MemoryAllocator4freeEPv>
}
    80004e7c:	00813083          	ld	ra,8(sp)
    80004e80:	00013403          	ld	s0,0(sp)
    80004e84:	01010113          	addi	sp,sp,16
    80004e88:	00008067          	ret

0000000080004e8c <_ZdaPv>:

void operator delete[](void* p) noexcept {
    80004e8c:	ff010113          	addi	sp,sp,-16
    80004e90:	00113423          	sd	ra,8(sp)
    80004e94:	00813023          	sd	s0,0(sp)
    80004e98:	01010413          	addi	s0,sp,16
    MemoryAllocator::free(p);
    80004e9c:	00000097          	auipc	ra,0x0
    80004ea0:	1e8080e7          	jalr	488(ra) # 80005084 <_ZN15MemoryAllocator4freeEPv>
    80004ea4:	00813083          	ld	ra,8(sp)
    80004ea8:	00013403          	ld	s0,0(sp)
    80004eac:	01010113          	addi	sp,sp,16
    80004eb0:	00008067          	ret

0000000080004eb4 <_ZL9sleepyRunPv>:

#include "../h/printing.hpp"

static volatile bool finished[2];

static void sleepyRun(void *arg) {
    80004eb4:	fe010113          	addi	sp,sp,-32
    80004eb8:	00113c23          	sd	ra,24(sp)
    80004ebc:	00813823          	sd	s0,16(sp)
    80004ec0:	00913423          	sd	s1,8(sp)
    80004ec4:	01213023          	sd	s2,0(sp)
    80004ec8:	02010413          	addi	s0,sp,32
    time_t sleep_time = *((time_t *) arg);
    80004ecc:	00053903          	ld	s2,0(a0)
    int i = 6;
    80004ed0:	00600493          	li	s1,6
    while (--i > 0) {
    80004ed4:	fff4849b          	addiw	s1,s1,-1
    80004ed8:	04905463          	blez	s1,80004f20 <_ZL9sleepyRunPv+0x6c>

        printString("Hello ");
    80004edc:	00004517          	auipc	a0,0x4
    80004ee0:	5bc50513          	addi	a0,a0,1468 # 80009498 <CONSOLE_STATUS+0x488>
    80004ee4:	fffff097          	auipc	ra,0xfffff
    80004ee8:	23c080e7          	jalr	572(ra) # 80004120 <_Z11printStringPKc>
        printInt(sleep_time);
    80004eec:	00000613          	li	a2,0
    80004ef0:	00a00593          	li	a1,10
    80004ef4:	00090513          	mv	a0,s2
    80004ef8:	fffff097          	auipc	ra,0xfffff
    80004efc:	384080e7          	jalr	900(ra) # 8000427c <_Z8printIntmhh>
        printString(" !\n");
    80004f00:	00004517          	auipc	a0,0x4
    80004f04:	5a050513          	addi	a0,a0,1440 # 800094a0 <CONSOLE_STATUS+0x490>
    80004f08:	fffff097          	auipc	ra,0xfffff
    80004f0c:	218080e7          	jalr	536(ra) # 80004120 <_Z11printStringPKc>
        time_sleep(sleep_time);
    80004f10:	00090513          	mv	a0,s2
    80004f14:	ffffd097          	auipc	ra,0xffffd
    80004f18:	960080e7          	jalr	-1696(ra) # 80001874 <_Z10time_sleepm>
    while (--i > 0) {
    80004f1c:	fb9ff06f          	j	80004ed4 <_ZL9sleepyRunPv+0x20>
    }
    finished[sleep_time/10-1] = true;
    80004f20:	00a00793          	li	a5,10
    80004f24:	02f95933          	divu	s2,s2,a5
    80004f28:	fff90913          	addi	s2,s2,-1
    80004f2c:	00007797          	auipc	a5,0x7
    80004f30:	d2478793          	addi	a5,a5,-732 # 8000bc50 <_ZL8finished>
    80004f34:	01278933          	add	s2,a5,s2
    80004f38:	00100793          	li	a5,1
    80004f3c:	00f90023          	sb	a5,0(s2)
}
    80004f40:	01813083          	ld	ra,24(sp)
    80004f44:	01013403          	ld	s0,16(sp)
    80004f48:	00813483          	ld	s1,8(sp)
    80004f4c:	00013903          	ld	s2,0(sp)
    80004f50:	02010113          	addi	sp,sp,32
    80004f54:	00008067          	ret

0000000080004f58 <_Z12testSleepingv>:

void testSleeping() {
    80004f58:	fc010113          	addi	sp,sp,-64
    80004f5c:	02113c23          	sd	ra,56(sp)
    80004f60:	02813823          	sd	s0,48(sp)
    80004f64:	02913423          	sd	s1,40(sp)
    80004f68:	04010413          	addi	s0,sp,64
    const int sleepy_thread_count = 2;
    time_t sleep_times[sleepy_thread_count] = {10, 20};
    80004f6c:	00a00793          	li	a5,10
    80004f70:	fcf43823          	sd	a5,-48(s0)
    80004f74:	01400793          	li	a5,20
    80004f78:	fcf43c23          	sd	a5,-40(s0)
    thread_t sleepyThread[sleepy_thread_count];

    for (int i = 0; i < sleepy_thread_count; i++) {
    80004f7c:	00000493          	li	s1,0
    80004f80:	02c0006f          	j	80004fac <_Z12testSleepingv+0x54>
        thread_create(&sleepyThread[i], sleepyRun, sleep_times + i);
    80004f84:	00349793          	slli	a5,s1,0x3
    80004f88:	fd040613          	addi	a2,s0,-48
    80004f8c:	00f60633          	add	a2,a2,a5
    80004f90:	00000597          	auipc	a1,0x0
    80004f94:	f2458593          	addi	a1,a1,-220 # 80004eb4 <_ZL9sleepyRunPv>
    80004f98:	fc040513          	addi	a0,s0,-64
    80004f9c:	00f50533          	add	a0,a0,a5
    80004fa0:	ffffc097          	auipc	ra,0xffffc
    80004fa4:	6b4080e7          	jalr	1716(ra) # 80001654 <_Z13thread_createPP7_threadPFvPvES2_>
    for (int i = 0; i < sleepy_thread_count; i++) {
    80004fa8:	0014849b          	addiw	s1,s1,1
    80004fac:	00100793          	li	a5,1
    80004fb0:	fc97dae3          	bge	a5,s1,80004f84 <_Z12testSleepingv+0x2c>
    }

    while (!(finished[0] && finished[1])) {}
    80004fb4:	00007797          	auipc	a5,0x7
    80004fb8:	c9c7c783          	lbu	a5,-868(a5) # 8000bc50 <_ZL8finished>
    80004fbc:	fe078ce3          	beqz	a5,80004fb4 <_Z12testSleepingv+0x5c>
    80004fc0:	00007797          	auipc	a5,0x7
    80004fc4:	c917c783          	lbu	a5,-879(a5) # 8000bc51 <_ZL8finished+0x1>
    80004fc8:	fe0786e3          	beqz	a5,80004fb4 <_Z12testSleepingv+0x5c>
}
    80004fcc:	03813083          	ld	ra,56(sp)
    80004fd0:	03013403          	ld	s0,48(sp)
    80004fd4:	02813483          	ld	s1,40(sp)
    80004fd8:	04010113          	addi	sp,sp,64
    80004fdc:	00008067          	ret

0000000080004fe0 <_ZN15MemoryAllocator8allocateEm>:
#include "../h/riscv.hpp"


MemoryAllocator::FreeBlock* MemoryAllocator::head = nullptr;

void* MemoryAllocator::allocate(size_t blocks) {
    80004fe0:	ff010113          	addi	sp,sp,-16
    80004fe4:	00813423          	sd	s0,8(sp)
    80004fe8:	01010413          	addi	s0,sp,16
    size_t req_blocks = blocks + 1;
    80004fec:	00150713          	addi	a4,a0,1

    FreeBlock* curr = head;
    80004ff0:	00007517          	auipc	a0,0x7
    80004ff4:	c6853503          	ld	a0,-920(a0) # 8000bc58 <_ZN15MemoryAllocator4headE>
    FreeBlock* prev = nullptr;
    80004ff8:	00000693          	li	a3,0
    while (curr) {
    80004ffc:	00050c63          	beqz	a0,80005014 <_ZN15MemoryAllocator8allocateEm+0x34>
        if (curr->size >= req_blocks) { break; }
    80005000:	00053783          	ld	a5,0(a0)
    80005004:	00e7f863          	bgeu	a5,a4,80005014 <_ZN15MemoryAllocator8allocateEm+0x34>
        prev = curr;
    80005008:	00050693          	mv	a3,a0
        curr = curr->next;
    8000500c:	00853503          	ld	a0,8(a0)
    while (curr) {
    80005010:	fedff06f          	j	80004ffc <_ZN15MemoryAllocator8allocateEm+0x1c>
    }

    if (!curr) { return nullptr; }
    80005014:	02050c63          	beqz	a0,8000504c <_ZN15MemoryAllocator8allocateEm+0x6c>

    if (curr->size == req_blocks) {
    80005018:	00053783          	ld	a5,0(a0)
    8000501c:	02e78e63          	beq	a5,a4,80005058 <_ZN15MemoryAllocator8allocateEm+0x78>
            prev->next = curr->next;
        } else {
            head = curr->next;
        }
    } else {
        FreeBlock* newBlock = (FreeBlock*)((char*)curr + req_blocks * MEM_BLOCK_SIZE);
    80005020:	00671613          	slli	a2,a4,0x6
    80005024:	00c50633          	add	a2,a0,a2
        newBlock->size = curr->size - req_blocks;
    80005028:	40e787b3          	sub	a5,a5,a4
    8000502c:	00f63023          	sd	a5,0(a2)
        newBlock->next = curr->next;
    80005030:	00853783          	ld	a5,8(a0)
    80005034:	00f63423          	sd	a5,8(a2)

        if (prev) {
    80005038:	04068063          	beqz	a3,80005078 <_ZN15MemoryAllocator8allocateEm+0x98>
            prev->next = newBlock;
    8000503c:	00c6b423          	sd	a2,8(a3)
        } else {
            head = newBlock;
        }
    }

    curr->size = req_blocks;
    80005040:	00e53023          	sd	a4,0(a0)
    curr->next = nullptr;
    80005044:	00053423          	sd	zero,8(a0)
    return (void*)((char*)curr + MEM_BLOCK_SIZE);
    80005048:	04050513          	addi	a0,a0,64
}
    8000504c:	00813403          	ld	s0,8(sp)
    80005050:	01010113          	addi	sp,sp,16
    80005054:	00008067          	ret
        if (prev) {
    80005058:	00068863          	beqz	a3,80005068 <_ZN15MemoryAllocator8allocateEm+0x88>
            prev->next = curr->next;
    8000505c:	00853783          	ld	a5,8(a0)
    80005060:	00f6b423          	sd	a5,8(a3)
    80005064:	fddff06f          	j	80005040 <_ZN15MemoryAllocator8allocateEm+0x60>
            head = curr->next;
    80005068:	00853783          	ld	a5,8(a0)
    8000506c:	00007697          	auipc	a3,0x7
    80005070:	bef6b623          	sd	a5,-1044(a3) # 8000bc58 <_ZN15MemoryAllocator4headE>
    80005074:	fcdff06f          	j	80005040 <_ZN15MemoryAllocator8allocateEm+0x60>
            head = newBlock;
    80005078:	00007797          	auipc	a5,0x7
    8000507c:	bec7b023          	sd	a2,-1056(a5) # 8000bc58 <_ZN15MemoryAllocator4headE>
    80005080:	fc1ff06f          	j	80005040 <_ZN15MemoryAllocator8allocateEm+0x60>

0000000080005084 <_ZN15MemoryAllocator4freeEPv>:
int MemoryAllocator::free(void* ptr) {
    80005084:	ff010113          	addi	sp,sp,-16
    80005088:	00813423          	sd	s0,8(sp)
    8000508c:	01010413          	addi	s0,sp,16
    if (!ptr) return -1;
    80005090:	0a050663          	beqz	a0,8000513c <_ZN15MemoryAllocator4freeEPv+0xb8>
    FreeBlock* newFree = (FreeBlock*)((char*)ptr - MEM_BLOCK_SIZE);
    80005094:	fc050693          	addi	a3,a0,-64

    FreeBlock* prev = nullptr;
    FreeBlock* curr = head;
    80005098:	00007797          	auipc	a5,0x7
    8000509c:	bc07b783          	ld	a5,-1088(a5) # 8000bc58 <_ZN15MemoryAllocator4headE>
    FreeBlock* prev = nullptr;
    800050a0:	00000713          	li	a4,0

    while (curr && curr < newFree) {
    800050a4:	00078a63          	beqz	a5,800050b8 <_ZN15MemoryAllocator4freeEPv+0x34>
    800050a8:	00d7f863          	bgeu	a5,a3,800050b8 <_ZN15MemoryAllocator4freeEPv+0x34>
        prev = curr;
    800050ac:	00078713          	mv	a4,a5
        curr = curr->next;
    800050b0:	0087b783          	ld	a5,8(a5)
    while (curr && curr < newFree) {
    800050b4:	ff1ff06f          	j	800050a4 <_ZN15MemoryAllocator4freeEPv+0x20>
    }

    newFree->next = curr;
    800050b8:	fcf53423          	sd	a5,-56(a0)

    if (prev) {
    800050bc:	04070063          	beqz	a4,800050fc <_ZN15MemoryAllocator4freeEPv+0x78>
        prev->next = newFree;
    800050c0:	00d73423          	sd	a3,8(a4)
    } else {
        head = newFree;
    }

    if (curr && (char*)newFree + newFree->size * MEM_BLOCK_SIZE == (char*)curr) {
    800050c4:	00078a63          	beqz	a5,800050d8 <_ZN15MemoryAllocator4freeEPv+0x54>
    800050c8:	fc053583          	ld	a1,-64(a0)
    800050cc:	00659613          	slli	a2,a1,0x6
    800050d0:	00c68633          	add	a2,a3,a2
    800050d4:	02f60a63          	beq	a2,a5,80005108 <_ZN15MemoryAllocator4freeEPv+0x84>
        newFree->size += curr->size;
        newFree->next = curr->next;
    }

    if (prev && (char*)prev + prev->size * MEM_BLOCK_SIZE == (char*)newFree) {
    800050d8:	06070663          	beqz	a4,80005144 <_ZN15MemoryAllocator4freeEPv+0xc0>
    800050dc:	00073603          	ld	a2,0(a4)
    800050e0:	00661793          	slli	a5,a2,0x6
    800050e4:	00f707b3          	add	a5,a4,a5
    800050e8:	02d78c63          	beq	a5,a3,80005120 <_ZN15MemoryAllocator4freeEPv+0x9c>
        prev->size += newFree->size;
        prev->next = newFree->next;
    }

    return 0;
    800050ec:	00000513          	li	a0,0
}
    800050f0:	00813403          	ld	s0,8(sp)
    800050f4:	01010113          	addi	sp,sp,16
    800050f8:	00008067          	ret
        head = newFree;
    800050fc:	00007617          	auipc	a2,0x7
    80005100:	b4d63e23          	sd	a3,-1188(a2) # 8000bc58 <_ZN15MemoryAllocator4headE>
    80005104:	fc1ff06f          	j	800050c4 <_ZN15MemoryAllocator4freeEPv+0x40>
        newFree->size += curr->size;
    80005108:	0007b603          	ld	a2,0(a5)
    8000510c:	00c585b3          	add	a1,a1,a2
    80005110:	fcb53023          	sd	a1,-64(a0)
        newFree->next = curr->next;
    80005114:	0087b783          	ld	a5,8(a5)
    80005118:	fcf53423          	sd	a5,-56(a0)
    8000511c:	fbdff06f          	j	800050d8 <_ZN15MemoryAllocator4freeEPv+0x54>
        prev->size += newFree->size;
    80005120:	fc053783          	ld	a5,-64(a0)
    80005124:	00f60633          	add	a2,a2,a5
    80005128:	00c73023          	sd	a2,0(a4)
        prev->next = newFree->next;
    8000512c:	fc853783          	ld	a5,-56(a0)
    80005130:	00f73423          	sd	a5,8(a4)
    return 0;
    80005134:	00000513          	li	a0,0
    80005138:	fb9ff06f          	j	800050f0 <_ZN15MemoryAllocator4freeEPv+0x6c>
    if (!ptr) return -1;
    8000513c:	fff00513          	li	a0,-1
    80005140:	fb1ff06f          	j	800050f0 <_ZN15MemoryAllocator4freeEPv+0x6c>
    return 0;
    80005144:	00000513          	li	a0,0
    80005148:	fa9ff06f          	j	800050f0 <_ZN15MemoryAllocator4freeEPv+0x6c>

000000008000514c <_ZN15MemoryAllocator10initializeEv>:

void MemoryAllocator::initialize() {
    8000514c:	ff010113          	addi	sp,sp,-16
    80005150:	00813423          	sd	s0,8(sp)
    80005154:	01010413          	addi	s0,sp,16
    MemoryAllocator::head = (FreeBlock*)HEAP_START_ADDR;
    80005158:	00007797          	auipc	a5,0x7
    8000515c:	9f87b783          	ld	a5,-1544(a5) # 8000bb50 <_GLOBAL_OFFSET_TABLE_+0x18>
    80005160:	0007b703          	ld	a4,0(a5)
    80005164:	00007697          	auipc	a3,0x7
    80005168:	af468693          	addi	a3,a3,-1292 # 8000bc58 <_ZN15MemoryAllocator4headE>
    8000516c:	00e6b023          	sd	a4,0(a3)
    MemoryAllocator::head->size =((char*)HEAP_END_ADDR - (char*)HEAP_START_ADDR) / MEM_BLOCK_SIZE;
    80005170:	00007797          	auipc	a5,0x7
    80005174:	a287b783          	ld	a5,-1496(a5) # 8000bb98 <_GLOBAL_OFFSET_TABLE_+0x60>
    80005178:	0007b783          	ld	a5,0(a5)
    8000517c:	40e787b3          	sub	a5,a5,a4
    80005180:	0067d793          	srli	a5,a5,0x6
    80005184:	00f73023          	sd	a5,0(a4)
    MemoryAllocator::head->next = nullptr;
    80005188:	0006b783          	ld	a5,0(a3)
    8000518c:	0007b423          	sd	zero,8(a5)
}
    80005190:	00813403          	ld	s0,8(sp)
    80005194:	01010113          	addi	sp,sp,16
    80005198:	00008067          	ret

000000008000519c <_ZN5Riscv10popSppSpieEv>:
#include "../h/riscv.hpp"
#include "../h/printing.hpp"
#include "../h/tcb.hpp"


void Riscv::popSppSpie() {
    8000519c:	ff010113          	addi	sp,sp,-16
    800051a0:	00813423          	sd	s0,8(sp)
    800051a4:	01010413          	addi	s0,sp,16
    __asm__ volatile("csrw sepc, ra");
    800051a8:	14109073          	csrw	sepc,ra
    __asm__ volatile("sret");
    800051ac:	10200073          	sret
}
    800051b0:	00813403          	ld	s0,8(sp)
    800051b4:	01010113          	addi	sp,sp,16
    800051b8:	00008067          	ret

00000000800051bc <_ZN5Riscv20handleSupervisorTrapEv>:

void Riscv::handleSupervisorTrap() {
    800051bc:	f0010113          	addi	sp,sp,-256
    800051c0:	0e113c23          	sd	ra,248(sp)
    800051c4:	0e813823          	sd	s0,240(sp)
    800051c8:	0e913423          	sd	s1,232(sp)
    800051cc:	0f213023          	sd	s2,224(sp)
    800051d0:	10010413          	addi	s0,sp,256
    : [scause] "=r"(scause));
    800051d4:	142027f3          	csrr	a5,scause
    800051d8:	f0f43423          	sd	a5,-248(s0)
    return scause;
    800051dc:	f0843483          	ld	s1,-248(s0)
    uint64 cause = Riscv::r_scause();

    // Čitanje argumenata iz registara (za sistemske pozive)
    volatile uint64 sys_code, arg1, arg2, arg3; // bilo je bez volatile i tamo <0
    asm volatile("mv %0, a0" : "=r"(sys_code));
    800051e0:	00050793          	mv	a5,a0
    800051e4:	fcf43c23          	sd	a5,-40(s0)
    asm volatile("mv %0, a1" : "=r"(arg1));
    800051e8:	00058793          	mv	a5,a1
    800051ec:	fcf43823          	sd	a5,-48(s0)
    asm volatile("mv %0, a2" : "=r"(arg2));
    800051f0:	00060793          	mv	a5,a2
    800051f4:	fcf43423          	sd	a5,-56(s0)
    asm volatile("mv %0, a3" : "=r"(arg3));
    800051f8:	00068793          	mv	a5,a3
    800051fc:	fcf43023          	sd	a5,-64(s0)
    volatile uint64 return_value = 0;
    80005200:	fa043c23          	sd	zero,-72(s0)


    if (cause == 0x8 || cause == 0x9) {
    80005204:	ff848713          	addi	a4,s1,-8
    80005208:	00100793          	li	a5,1
    8000520c:	0ce7fa63          	bgeu	a5,a4,800052e0 <_ZN5Riscv20handleSupervisorTrapEv+0x124>
        }


    }

    else if (cause == 0x8000000000000001UL) {
    80005210:	fff00793          	li	a5,-1
    80005214:	03f79793          	slli	a5,a5,0x3f
    80005218:	00178793          	addi	a5,a5,1
    8000521c:	4ef48a63          	beq	s1,a5,80005710 <_ZN5Riscv20handleSupervisorTrapEv+0x554>
        }
        mc_sip(SIP_SSIP);
    }


    else if (cause == 0x8000000000000009UL) {
    80005220:	fff00793          	li	a5,-1
    80005224:	03f79793          	slli	a5,a5,0x3f
    80005228:	00978793          	addi	a5,a5,9
    8000522c:	54f48c63          	beq	s1,a5,80005784 <_ZN5Riscv20handleSupervisorTrapEv+0x5c8>
        }
        plic_complete(irq);
    }

    else {
        printString("unexpected cause: ");
    80005230:	00004517          	auipc	a0,0x4
    80005234:	27850513          	addi	a0,a0,632 # 800094a8 <CONSOLE_STATUS+0x498>
    80005238:	fffff097          	auipc	ra,0xfffff
    8000523c:	ee8080e7          	jalr	-280(ra) # 80004120 <_Z11printStringPKc>
        printInt(cause);
    80005240:	00000613          	li	a2,0
    80005244:	00a00593          	li	a1,10
    80005248:	00048513          	mv	a0,s1
    8000524c:	fffff097          	auipc	ra,0xfffff
    80005250:	030080e7          	jalr	48(ra) # 8000427c <_Z8printIntmhh>
        printString("\n");
    80005254:	00004517          	auipc	a0,0x4
    80005258:	10450513          	addi	a0,a0,260 # 80009358 <CONSOLE_STATUS+0x348>
    8000525c:	fffff097          	auipc	ra,0xfffff
    80005260:	ec4080e7          	jalr	-316(ra) # 80004120 <_Z11printStringPKc>
        printString("sepc: ");
    80005264:	00004517          	auipc	a0,0x4
    80005268:	25c50513          	addi	a0,a0,604 # 800094c0 <CONSOLE_STATUS+0x4b0>
    8000526c:	fffff097          	auipc	ra,0xfffff
    80005270:	eb4080e7          	jalr	-332(ra) # 80004120 <_Z11printStringPKc>
    __asm__ volatile("csrr %0, sepc" : "=r"(sepc));
    80005274:	141027f3          	csrr	a5,sepc
    80005278:	faf43823          	sd	a5,-80(s0)
    return sepc;
    8000527c:	fb043503          	ld	a0,-80(s0)
        printInt(Riscv::r_sepc());
    80005280:	00000613          	li	a2,0
    80005284:	00a00593          	li	a1,10
    80005288:	fffff097          	auipc	ra,0xfffff
    8000528c:	ff4080e7          	jalr	-12(ra) # 8000427c <_Z8printIntmhh>
        printString("\n");
    80005290:	00004517          	auipc	a0,0x4
    80005294:	0c850513          	addi	a0,a0,200 # 80009358 <CONSOLE_STATUS+0x348>
    80005298:	fffff097          	auipc	ra,0xfffff
    8000529c:	e88080e7          	jalr	-376(ra) # 80004120 <_Z11printStringPKc>
        printString("stval: ");
    800052a0:	00004517          	auipc	a0,0x4
    800052a4:	22850513          	addi	a0,a0,552 # 800094c8 <CONSOLE_STATUS+0x4b8>
    800052a8:	fffff097          	auipc	ra,0xfffff
    800052ac:	e78080e7          	jalr	-392(ra) # 80004120 <_Z11printStringPKc>
    __asm__ volatile("csrr %0, stval" : "=r"(stval));
    800052b0:	143027f3          	csrr	a5,stval
    800052b4:	faf43423          	sd	a5,-88(s0)
    return stval;
    800052b8:	fa843503          	ld	a0,-88(s0)
        printInt(Riscv::r_stval());
    800052bc:	00000613          	li	a2,0
    800052c0:	00a00593          	li	a1,10
    800052c4:	fffff097          	auipc	ra,0xfffff
    800052c8:	fb8080e7          	jalr	-72(ra) # 8000427c <_Z8printIntmhh>
        printString("\n");
    800052cc:	00004517          	auipc	a0,0x4
    800052d0:	08c50513          	addi	a0,a0,140 # 80009358 <CONSOLE_STATUS+0x348>
    800052d4:	fffff097          	auipc	ra,0xfffff
    800052d8:	e4c080e7          	jalr	-436(ra) # 80004120 <_Z11printStringPKc>

        while(1);
    800052dc:	0000006f          	j	800052dc <_ZN5Riscv20handleSupervisorTrapEv+0x120>
        if (sys_code == 0x13) {
    800052e0:	fd843703          	ld	a4,-40(s0)
    800052e4:	01300793          	li	a5,19
    800052e8:	0ef70263          	beq	a4,a5,800053cc <_ZN5Riscv20handleSupervisorTrapEv+0x210>
        else if (sys_code == 0x1) {
    800052ec:	fd843703          	ld	a4,-40(s0)
    800052f0:	00100793          	li	a5,1
    800052f4:	10f70463          	beq	a4,a5,800053fc <_ZN5Riscv20handleSupervisorTrapEv+0x240>
        else if (sys_code == 0x2) {
    800052f8:	fd843703          	ld	a4,-40(s0)
    800052fc:	00200793          	li	a5,2
    80005300:	12f70a63          	beq	a4,a5,80005434 <_ZN5Riscv20handleSupervisorTrapEv+0x278>
        else if (sys_code == 0x11) {
    80005304:	fd843703          	ld	a4,-40(s0)
    80005308:	01100793          	li	a5,17
    8000530c:	14f70c63          	beq	a4,a5,80005464 <_ZN5Riscv20handleSupervisorTrapEv+0x2a8>
        else if (sys_code == 0x12) {
    80005310:	fd843703          	ld	a4,-40(s0)
    80005314:	01200793          	li	a5,18
    80005318:	18f70a63          	beq	a4,a5,800054ac <_ZN5Riscv20handleSupervisorTrapEv+0x2f0>
        else if (sys_code == 0x15) {
    8000531c:	fd843703          	ld	a4,-40(s0)
    80005320:	01500793          	li	a5,21
    80005324:	1cf70063          	beq	a4,a5,800054e4 <_ZN5Riscv20handleSupervisorTrapEv+0x328>
        else if (sys_code == 0x31) {
    80005328:	fd843703          	ld	a4,-40(s0)
    8000532c:	03100793          	li	a5,49
    80005330:	1ef70c63          	beq	a4,a5,80005528 <_ZN5Riscv20handleSupervisorTrapEv+0x36c>
        else if (sys_code == 0x21) {
    80005334:	fd843703          	ld	a4,-40(s0)
    80005338:	02100793          	li	a5,33
    8000533c:	20f70c63          	beq	a4,a5,80005554 <_ZN5Riscv20handleSupervisorTrapEv+0x398>
        else if (sys_code == 0x22) {
    80005340:	fd843703          	ld	a4,-40(s0)
    80005344:	02200793          	li	a5,34
    80005348:	24f70263          	beq	a4,a5,8000558c <_ZN5Riscv20handleSupervisorTrapEv+0x3d0>
        else if (sys_code == 0x23) {
    8000534c:	fd843703          	ld	a4,-40(s0)
    80005350:	02300793          	li	a5,35
    80005354:	26f70463          	beq	a4,a5,800055bc <_ZN5Riscv20handleSupervisorTrapEv+0x400>
        else if (sys_code == 0x24) {
    80005358:	fd843703          	ld	a4,-40(s0)
    8000535c:	02400793          	li	a5,36
    80005360:	28f70663          	beq	a4,a5,800055ec <_ZN5Riscv20handleSupervisorTrapEv+0x430>
        else if (sys_code == 0x25) {
    80005364:	fd843703          	ld	a4,-40(s0)
    80005368:	02500793          	li	a5,37
    8000536c:	2af70863          	beq	a4,a5,8000561c <_ZN5Riscv20handleSupervisorTrapEv+0x460>
        else if (sys_code == 0x26) {
    80005370:	fd843703          	ld	a4,-40(s0)
    80005374:	02600793          	li	a5,38
    80005378:	2cf70e63          	beq	a4,a5,80005654 <_ZN5Riscv20handleSupervisorTrapEv+0x498>
        else if (sys_code == 0x41) {
    8000537c:	fd843703          	ld	a4,-40(s0)
    80005380:	04100793          	li	a5,65
    80005384:	30f70463          	beq	a4,a5,8000568c <_ZN5Riscv20handleSupervisorTrapEv+0x4d0>
        else if (sys_code == 0x42) {
    80005388:	fd843703          	ld	a4,-40(s0)
    8000538c:	04200793          	li	a5,66
    80005390:	32f70463          	beq	a4,a5,800056b8 <_ZN5Riscv20handleSupervisorTrapEv+0x4fc>
        else if (sys_code == 0x51) {
    80005394:	fd843703          	ld	a4,-40(s0)
    80005398:	05100793          	li	a5,81
    8000539c:	34f70663          	beq	a4,a5,800056e8 <_ZN5Riscv20handleSupervisorTrapEv+0x52c>
        else if (sys_code == 0x53) {
    800053a0:	fd843703          	ld	a4,-40(s0)
    800053a4:	05300793          	li	a5,83
    800053a8:	3ef71e63          	bne	a4,a5,800057a4 <_ZN5Riscv20handleSupervisorTrapEv+0x5e8>
    __asm__ volatile("csrr %0, sepc" : "=r"(sepc));
    800053ac:	141027f3          	csrr	a5,sepc
    800053b0:	faf43023          	sd	a5,-96(s0)
    return sepc;
    800053b4:	fa043483          	ld	s1,-96(s0)
            uint64 sepc = Riscv::r_sepc() + 4;
    800053b8:	00448493          	addi	s1,s1,4
            sync_thread_abi();
    800053bc:	ffffc097          	auipc	ra,0xffffc
    800053c0:	1d4080e7          	jalr	468(ra) # 80001590 <_Z15sync_thread_abiv>
    __asm__ volatile("csrw sepc, %0" :: "r"(sepc));
    800053c4:	14149073          	csrw	sepc,s1
}
    800053c8:	3dc0006f          	j	800057a4 <_ZN5Riscv20handleSupervisorTrapEv+0x5e8>
    __asm__ volatile("csrr %0, sepc" : "=r"(sepc));
    800053cc:	141027f3          	csrr	a5,sepc
    800053d0:	f0f43c23          	sd	a5,-232(s0)
    return sepc;
    800053d4:	f1843483          	ld	s1,-232(s0)
            uint64 sepc = Riscv::r_sepc() + 4;
    800053d8:	00448493          	addi	s1,s1,4
}

inline uint64 Riscv::r_sstatus()
{
    uint64 volatile sstatus;
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    800053dc:	100027f3          	csrr	a5,sstatus
    800053e0:	f0f43823          	sd	a5,-240(s0)
    return sstatus;
    800053e4:	f1043903          	ld	s2,-240(s0)
            thread_dispatch_abi();
    800053e8:	ffffc097          	auipc	ra,0xffffc
    800053ec:	f38080e7          	jalr	-200(ra) # 80001320 <_Z19thread_dispatch_abiv>
    __asm__ volatile("csrw sepc, %0" :: "r"(sepc));
    800053f0:	14149073          	csrw	sepc,s1
}

inline void Riscv::w_sstatus(uint64 sstatus)
{
    __asm__ volatile("csrw sstatus, %0" :: "r"(sstatus));
    800053f4:	10091073          	csrw	sstatus,s2
            return;
    800053f8:	3ac0006f          	j	800057a4 <_ZN5Riscv20handleSupervisorTrapEv+0x5e8>
    __asm__ volatile("csrr %0, sepc" : "=r"(sepc));
    800053fc:	141027f3          	csrr	a5,sepc
    80005400:	f2f43023          	sd	a5,-224(s0)
    return sepc;
    80005404:	f2043483          	ld	s1,-224(s0)
            uint64 sepc = Riscv::r_sepc() + 4;
    80005408:	00448493          	addi	s1,s1,4
            size_t bytes = (size_t)arg1;
    8000540c:	fd043503          	ld	a0,-48(s0)
            size_t blocks = (bytes + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE;
    80005410:	03f50513          	addi	a0,a0,63
            return_value = (uint64)mem_alloc_abi(blocks);
    80005414:	00655513          	srli	a0,a0,0x6
    80005418:	ffffc097          	auipc	ra,0xffffc
    8000541c:	e2c080e7          	jalr	-468(ra) # 80001244 <_Z13mem_alloc_abim>
    80005420:	faa43c23          	sd	a0,-72(s0)
    __asm__ volatile("csrw sepc, %0" :: "r"(sepc));
    80005424:	14149073          	csrw	sepc,s1
            Riscv::w_a0(return_value);
    80005428:	fb843783          	ld	a5,-72(s0)
    asm volatile ("mv a0, %0" :: "r"(val));
    8000542c:	00078513          	mv	a0,a5
}
    80005430:	3740006f          	j	800057a4 <_ZN5Riscv20handleSupervisorTrapEv+0x5e8>
    __asm__ volatile("csrr %0, sepc" : "=r"(sepc));
    80005434:	141027f3          	csrr	a5,sepc
    80005438:	f2f43423          	sd	a5,-216(s0)
    return sepc;
    8000543c:	f2843483          	ld	s1,-216(s0)
            uint64 sepc = Riscv::r_sepc() + 4;
    80005440:	00448493          	addi	s1,s1,4
            int status = mem_free_abi((void*)arg1);
    80005444:	fd043503          	ld	a0,-48(s0)
    80005448:	ffffc097          	auipc	ra,0xffffc
    8000544c:	e24080e7          	jalr	-476(ra) # 8000126c <_Z12mem_free_abiPv>
            return_value = (uint64)status;
    80005450:	faa43c23          	sd	a0,-72(s0)
    __asm__ volatile("csrw sepc, %0" :: "r"(sepc));
    80005454:	14149073          	csrw	sepc,s1
            Riscv::w_a0(return_value);
    80005458:	fb843783          	ld	a5,-72(s0)
    asm volatile ("mv a0, %0" :: "r"(val));
    8000545c:	00078513          	mv	a0,a5
}
    80005460:	3440006f          	j	800057a4 <_ZN5Riscv20handleSupervisorTrapEv+0x5e8>
    __asm__ volatile("csrr %0, sepc" : "=r"(sepc));
    80005464:	141027f3          	csrr	a5,sepc
    80005468:	f2f43823          	sd	a5,-208(s0)
    return sepc;
    8000546c:	f3043483          	ld	s1,-208(s0)
            uint64 sepc = Riscv::r_sepc() + 4;
    80005470:	00448493          	addi	s1,s1,4
            void* stack = MemoryAllocator::allocate(DEFAULT_STACK_SIZE);
    80005474:	00001537          	lui	a0,0x1
    80005478:	00000097          	auipc	ra,0x0
    8000547c:	b68080e7          	jalr	-1176(ra) # 80004fe0 <_ZN15MemoryAllocator8allocateEm>
    80005480:	00050693          	mv	a3,a0
            int status = thread_create_abi((thread_t*)arg1, (TCB::Body)arg2, (void*)arg3, stack);
    80005484:	fd043503          	ld	a0,-48(s0)
    80005488:	fc843583          	ld	a1,-56(s0)
    8000548c:	fc043603          	ld	a2,-64(s0)
    80005490:	ffffc097          	auipc	ra,0xffffc
    80005494:	e04080e7          	jalr	-508(ra) # 80001294 <_Z17thread_create_abiPP7_threadPFvPvES2_S2_>
            return_value = (uint64)status;
    80005498:	faa43c23          	sd	a0,-72(s0)
    __asm__ volatile("csrw sepc, %0" :: "r"(sepc));
    8000549c:	14149073          	csrw	sepc,s1
            Riscv::w_a0(return_value);
    800054a0:	fb843783          	ld	a5,-72(s0)
    asm volatile ("mv a0, %0" :: "r"(val));
    800054a4:	00078513          	mv	a0,a5
}
    800054a8:	2fc0006f          	j	800057a4 <_ZN5Riscv20handleSupervisorTrapEv+0x5e8>
    __asm__ volatile("csrr %0, sepc" : "=r"(sepc));
    800054ac:	141027f3          	csrr	a5,sepc
    800054b0:	f4f43023          	sd	a5,-192(s0)
    return sepc;
    800054b4:	f4043483          	ld	s1,-192(s0)
            uint64 sepc = Riscv::r_sepc() + 4;
    800054b8:	00448493          	addi	s1,s1,4
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    800054bc:	100027f3          	csrr	a5,sstatus
    800054c0:	f2f43c23          	sd	a5,-200(s0)
    return sstatus;
    800054c4:	f3843903          	ld	s2,-200(s0)
            thread_exit_abi();
    800054c8:	ffffc097          	auipc	ra,0xffffc
    800054cc:	e10080e7          	jalr	-496(ra) # 800012d8 <_Z15thread_exit_abiv>
    __asm__ volatile("csrw sepc, %0" :: "r"(sepc));
    800054d0:	14149073          	csrw	sepc,s1
    __asm__ volatile("csrw sstatus, %0" :: "r"(sstatus));
    800054d4:	10091073          	csrw	sstatus,s2
    asm volatile ("mv a0, %0" :: "r"(val));
    800054d8:	00000793          	li	a5,0
    800054dc:	00078513          	mv	a0,a5
}
    800054e0:	2c40006f          	j	800057a4 <_ZN5Riscv20handleSupervisorTrapEv+0x5e8>
    __asm__ volatile("csrr %0, sepc" : "=r"(sepc));
    800054e4:	141027f3          	csrr	a5,sepc
    800054e8:	f4f43423          	sd	a5,-184(s0)
    return sepc;
    800054ec:	f4843483          	ld	s1,-184(s0)
            uint64 sepc = Riscv::r_sepc() + 4;
    800054f0:	00448493          	addi	s1,s1,4
            TCB* current = TCB::running;
    800054f4:	00006797          	auipc	a5,0x6
    800054f8:	69c7b783          	ld	a5,1692(a5) # 8000bb90 <_GLOBAL_OFFSET_TABLE_+0x58>
    800054fc:	0007b503          	ld	a0,0(a5)
            current->sleepTimeSlice = arg1;
    80005500:	fd043783          	ld	a5,-48(s0)
    80005504:	02f53823          	sd	a5,48(a0) # 1030 <_entry-0x7fffefd0>
        this->blocked = stat;
    80005508:	00100793          	li	a5,1
    8000550c:	02f50ca3          	sb	a5,57(a0)
            Scheduler::putS(current);
    80005510:	00001097          	auipc	ra,0x1
    80005514:	8e4080e7          	jalr	-1820(ra) # 80005df4 <_ZN9Scheduler4putSEP3TCB>
            TCB::dispatch();
    80005518:	fffff097          	auipc	ra,0xfffff
    8000551c:	53c080e7          	jalr	1340(ra) # 80004a54 <_ZN3TCB8dispatchEv>
    __asm__ volatile("csrw sepc, %0" :: "r"(sepc));
    80005520:	14149073          	csrw	sepc,s1
}
    80005524:	2800006f          	j	800057a4 <_ZN5Riscv20handleSupervisorTrapEv+0x5e8>
    __asm__ volatile("csrr %0, sepc" : "=r"(sepc));
    80005528:	141027f3          	csrr	a5,sepc
    8000552c:	f4f43823          	sd	a5,-176(s0)
    return sepc;
    80005530:	f5043483          	ld	s1,-176(s0)
            uint64 sepc = Riscv::r_sepc() + 4;
    80005534:	00448493          	addi	s1,s1,4
            thread_sleep_abi((time_t)arg1);
    80005538:	fd043503          	ld	a0,-48(s0)
    8000553c:	ffffc097          	auipc	ra,0xffffc
    80005540:	010080e7          	jalr	16(ra) # 8000154c <_Z16thread_sleep_abim>
            TCB::dispatch();
    80005544:	fffff097          	auipc	ra,0xfffff
    80005548:	510080e7          	jalr	1296(ra) # 80004a54 <_ZN3TCB8dispatchEv>
    __asm__ volatile("csrw sepc, %0" :: "r"(sepc));
    8000554c:	14149073          	csrw	sepc,s1
}
    80005550:	2540006f          	j	800057a4 <_ZN5Riscv20handleSupervisorTrapEv+0x5e8>
    __asm__ volatile("csrr %0, sepc" : "=r"(sepc));
    80005554:	141027f3          	csrr	a5,sepc
    80005558:	f4f43c23          	sd	a5,-168(s0)
    return sepc;
    8000555c:	f5843483          	ld	s1,-168(s0)
            uint64 sepc = Riscv::r_sepc() + 4;
    80005560:	00448493          	addi	s1,s1,4
            int status = sem_open_abi((sem_t*)arg1, (int)arg2);
    80005564:	fd043503          	ld	a0,-48(s0)
    80005568:	fc843583          	ld	a1,-56(s0)
    8000556c:	0005859b          	sext.w	a1,a1
    80005570:	ffffc097          	auipc	ra,0xffffc
    80005574:	de4080e7          	jalr	-540(ra) # 80001354 <_Z12sem_open_abiPP4_semi>
            return_value = (uint64)status;
    80005578:	faa43c23          	sd	a0,-72(s0)
    __asm__ volatile("csrw sepc, %0" :: "r"(sepc));
    8000557c:	14149073          	csrw	sepc,s1
            Riscv::w_a0(return_value);
    80005580:	fb843783          	ld	a5,-72(s0)
    asm volatile ("mv a0, %0" :: "r"(val));
    80005584:	00078513          	mv	a0,a5
}
    80005588:	21c0006f          	j	800057a4 <_ZN5Riscv20handleSupervisorTrapEv+0x5e8>
    __asm__ volatile("csrr %0, sepc" : "=r"(sepc));
    8000558c:	141027f3          	csrr	a5,sepc
    80005590:	f6f43023          	sd	a5,-160(s0)
    return sepc;
    80005594:	f6043483          	ld	s1,-160(s0)
            uint64 sepc = Riscv::r_sepc() + 4;
    80005598:	00448493          	addi	s1,s1,4
            int status = sem_close_abi((sem_t)arg1);
    8000559c:	fd043503          	ld	a0,-48(s0)
    800055a0:	ffffc097          	auipc	ra,0xffffc
    800055a4:	e38080e7          	jalr	-456(ra) # 800013d8 <_Z13sem_close_abiP4_sem>
            return_value = (uint64)status;
    800055a8:	faa43c23          	sd	a0,-72(s0)
    __asm__ volatile("csrw sepc, %0" :: "r"(sepc));
    800055ac:	14149073          	csrw	sepc,s1
            Riscv::w_a0(return_value);
    800055b0:	fb843783          	ld	a5,-72(s0)
    asm volatile ("mv a0, %0" :: "r"(val));
    800055b4:	00078513          	mv	a0,a5
}
    800055b8:	1ec0006f          	j	800057a4 <_ZN5Riscv20handleSupervisorTrapEv+0x5e8>
    __asm__ volatile("csrr %0, sepc" : "=r"(sepc));
    800055bc:	141027f3          	csrr	a5,sepc
    800055c0:	f6f43423          	sd	a5,-152(s0)
    return sepc;
    800055c4:	f6843483          	ld	s1,-152(s0)
            uint64 sepc = Riscv::r_sepc() + 4;
    800055c8:	00448493          	addi	s1,s1,4
            int status = sem_wait_abi((sem_t)arg1);
    800055cc:	fd043503          	ld	a0,-48(s0)
    800055d0:	ffffc097          	auipc	ra,0xffffc
    800055d4:	e58080e7          	jalr	-424(ra) # 80001428 <_Z12sem_wait_abiP4_sem>
            return_value = (uint64)status;
    800055d8:	faa43c23          	sd	a0,-72(s0)
    __asm__ volatile("csrw sepc, %0" :: "r"(sepc));
    800055dc:	14149073          	csrw	sepc,s1
            Riscv::w_a0(return_value);
    800055e0:	fb843783          	ld	a5,-72(s0)
    asm volatile ("mv a0, %0" :: "r"(val));
    800055e4:	00078513          	mv	a0,a5
}
    800055e8:	1bc0006f          	j	800057a4 <_ZN5Riscv20handleSupervisorTrapEv+0x5e8>
    __asm__ volatile("csrr %0, sepc" : "=r"(sepc));
    800055ec:	141027f3          	csrr	a5,sepc
    800055f0:	f6f43823          	sd	a5,-144(s0)
    return sepc;
    800055f4:	f7043483          	ld	s1,-144(s0)
            uint64 sepc = Riscv::r_sepc() + 4;
    800055f8:	00448493          	addi	s1,s1,4
            int status = sem_signal_abi((sem_t)arg1);
    800055fc:	fd043503          	ld	a0,-48(s0)
    80005600:	ffffc097          	auipc	ra,0xffffc
    80005604:	e5c080e7          	jalr	-420(ra) # 8000145c <_Z14sem_signal_abiP4_sem>
            return_value = (uint64)status;
    80005608:	faa43c23          	sd	a0,-72(s0)
    __asm__ volatile("csrw sepc, %0" :: "r"(sepc));
    8000560c:	14149073          	csrw	sepc,s1
            Riscv::w_a0(return_value);
    80005610:	fb843783          	ld	a5,-72(s0)
    asm volatile ("mv a0, %0" :: "r"(val));
    80005614:	00078513          	mv	a0,a5
}
    80005618:	18c0006f          	j	800057a4 <_ZN5Riscv20handleSupervisorTrapEv+0x5e8>
    __asm__ volatile("csrr %0, sepc" : "=r"(sepc));
    8000561c:	141027f3          	csrr	a5,sepc
    80005620:	f6f43c23          	sd	a5,-136(s0)
    return sepc;
    80005624:	f7843483          	ld	s1,-136(s0)
            uint64 sepc = Riscv::r_sepc() + 4;
    80005628:	00448493          	addi	s1,s1,4
            int status = sem_wait_n_abi((sem_t)arg1, (int)arg2);
    8000562c:	fd043503          	ld	a0,-48(s0)
    80005630:	fc843583          	ld	a1,-56(s0)
    80005634:	0005859b          	sext.w	a1,a1
    80005638:	ffffc097          	auipc	ra,0xffffc
    8000563c:	e90080e7          	jalr	-368(ra) # 800014c8 <_Z14sem_wait_n_abiP4_semi>
            return_value = (uint64)status;
    80005640:	faa43c23          	sd	a0,-72(s0)
    __asm__ volatile("csrw sepc, %0" :: "r"(sepc));
    80005644:	14149073          	csrw	sepc,s1
            Riscv::w_a0(return_value);
    80005648:	fb843783          	ld	a5,-72(s0)
    asm volatile ("mv a0, %0" :: "r"(val));
    8000564c:	00078513          	mv	a0,a5
}
    80005650:	1540006f          	j	800057a4 <_ZN5Riscv20handleSupervisorTrapEv+0x5e8>
    __asm__ volatile("csrr %0, sepc" : "=r"(sepc));
    80005654:	141027f3          	csrr	a5,sepc
    80005658:	f8f43023          	sd	a5,-128(s0)
    return sepc;
    8000565c:	f8043483          	ld	s1,-128(s0)
            uint64 sepc = Riscv::r_sepc() + 4;
    80005660:	00448493          	addi	s1,s1,4
            int status = sem_signal_n_abi((sem_t)arg1, (int)arg2);
    80005664:	fd043503          	ld	a0,-48(s0)
    80005668:	fc843583          	ld	a1,-56(s0)
    8000566c:	0005859b          	sext.w	a1,a1
    80005670:	ffffc097          	auipc	ra,0xffffc
    80005674:	e24080e7          	jalr	-476(ra) # 80001494 <_Z16sem_signal_n_abiP4_semi>
            return_value = (uint64)status;
    80005678:	faa43c23          	sd	a0,-72(s0)
    __asm__ volatile("csrw sepc, %0" :: "r"(sepc));
    8000567c:	14149073          	csrw	sepc,s1
            Riscv::w_a0(return_value);
    80005680:	fb843783          	ld	a5,-72(s0)
    asm volatile ("mv a0, %0" :: "r"(val));
    80005684:	00078513          	mv	a0,a5
}
    80005688:	11c0006f          	j	800057a4 <_ZN5Riscv20handleSupervisorTrapEv+0x5e8>
    __asm__ volatile("csrr %0, sepc" : "=r"(sepc));
    8000568c:	141027f3          	csrr	a5,sepc
    80005690:	f8f43423          	sd	a5,-120(s0)
    return sepc;
    80005694:	f8843483          	ld	s1,-120(s0)
            uint64 sepc = Riscv::r_sepc() + 4;
    80005698:	00448493          	addi	s1,s1,4
            char ret = getc_abi();
    8000569c:	ffffc097          	auipc	ra,0xffffc
    800056a0:	e60080e7          	jalr	-416(ra) # 800014fc <_Z8getc_abiv>
            return_value = (uint64)ret;
    800056a4:	faa43c23          	sd	a0,-72(s0)
    __asm__ volatile("csrw sepc, %0" :: "r"(sepc));
    800056a8:	14149073          	csrw	sepc,s1
            Riscv::w_a0(return_value);
    800056ac:	fb843783          	ld	a5,-72(s0)
    asm volatile ("mv a0, %0" :: "r"(val));
    800056b0:	00078513          	mv	a0,a5
}
    800056b4:	0f00006f          	j	800057a4 <_ZN5Riscv20handleSupervisorTrapEv+0x5e8>
    __asm__ volatile("csrr %0, sepc" : "=r"(sepc));
    800056b8:	141027f3          	csrr	a5,sepc
    800056bc:	f8f43823          	sd	a5,-112(s0)
    return sepc;
    800056c0:	f9043483          	ld	s1,-112(s0)
            uint64 sepc = Riscv::r_sepc() + 4;
    800056c4:	00448493          	addi	s1,s1,4
            putc_abi(arg1);
    800056c8:	fd043503          	ld	a0,-48(s0)
    800056cc:	0ff57513          	andi	a0,a0,255
    800056d0:	ffffc097          	auipc	ra,0xffffc
    800056d4:	e54080e7          	jalr	-428(ra) # 80001524 <_Z8putc_abic>
    __asm__ volatile("csrw sepc, %0" :: "r"(sepc));
    800056d8:	14149073          	csrw	sepc,s1
            Riscv::w_a0(return_value);
    800056dc:	fb843783          	ld	a5,-72(s0)
    asm volatile ("mv a0, %0" :: "r"(val));
    800056e0:	00078513          	mv	a0,a5
}
    800056e4:	0c00006f          	j	800057a4 <_ZN5Riscv20handleSupervisorTrapEv+0x5e8>
    __asm__ volatile("csrr %0, sepc" : "=r"(sepc));
    800056e8:	141027f3          	csrr	a5,sepc
    800056ec:	f8f43c23          	sd	a5,-104(s0)
    return sepc;
    800056f0:	f9843483          	ld	s1,-104(s0)
            uint64 sepc = Riscv::r_sepc() + 4;
    800056f4:	00448493          	addi	s1,s1,4
            TCB::setPartner((TCB*)arg1, (TCB*)arg2);
    800056f8:	fd043503          	ld	a0,-48(s0)
    800056fc:	fc843583          	ld	a1,-56(s0)
    80005700:	fffff097          	auipc	ra,0xfffff
    80005704:	3e0080e7          	jalr	992(ra) # 80004ae0 <_ZN3TCB10setPartnerEPS_S0_>
    __asm__ volatile("csrw sepc, %0" :: "r"(sepc));
    80005708:	14149073          	csrw	sepc,s1
}
    8000570c:	0980006f          	j	800057a4 <_ZN5Riscv20handleSupervisorTrapEv+0x5e8>
        TCB::update_sleeping_threads();
    80005710:	fffff097          	auipc	ra,0xfffff
    80005714:	5d0080e7          	jalr	1488(ra) # 80004ce0 <_ZN3TCB23update_sleeping_threadsEv>
        TCB::timeSliceCounter++;
    80005718:	00006717          	auipc	a4,0x6
    8000571c:	45073703          	ld	a4,1104(a4) # 8000bb68 <_GLOBAL_OFFSET_TABLE_+0x30>
    80005720:	00073783          	ld	a5,0(a4)
    80005724:	00178793          	addi	a5,a5,1
    80005728:	00f73023          	sd	a5,0(a4)
        if (TCB::timeSliceCounter >= TCB::running->getTimeSlice()) {
    8000572c:	00006717          	auipc	a4,0x6
    80005730:	46473703          	ld	a4,1124(a4) # 8000bb90 <_GLOBAL_OFFSET_TABLE_+0x58>
    80005734:	00073703          	ld	a4,0(a4)
        return timeSlice;
    80005738:	02873703          	ld	a4,40(a4)
    8000573c:	00e7f863          	bgeu	a5,a4,8000574c <_ZN5Riscv20handleSupervisorTrapEv+0x590>
    __asm__ volatile("csrc sip, %0" :: "r"(mask));
    80005740:	00200793          	li	a5,2
    80005744:	1447b073          	csrc	sip,a5
}
    80005748:	05c0006f          	j	800057a4 <_ZN5Riscv20handleSupervisorTrapEv+0x5e8>
    __asm__ volatile("csrr %0, sepc" : "=r"(sepc));
    8000574c:	141027f3          	csrr	a5,sepc
    80005750:	faf43823          	sd	a5,-80(s0)
    return sepc;
    80005754:	fb043483          	ld	s1,-80(s0)
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    80005758:	100027f3          	csrr	a5,sstatus
    8000575c:	faf43423          	sd	a5,-88(s0)
    return sstatus;
    80005760:	fa843903          	ld	s2,-88(s0)
            TCB::timeSliceCounter = 0;
    80005764:	00006797          	auipc	a5,0x6
    80005768:	4047b783          	ld	a5,1028(a5) # 8000bb68 <_GLOBAL_OFFSET_TABLE_+0x30>
    8000576c:	0007b023          	sd	zero,0(a5)
            TCB::dispatch();
    80005770:	fffff097          	auipc	ra,0xfffff
    80005774:	2e4080e7          	jalr	740(ra) # 80004a54 <_ZN3TCB8dispatchEv>
    __asm__ volatile("csrw sstatus, %0" :: "r"(sstatus));
    80005778:	10091073          	csrw	sstatus,s2
    __asm__ volatile("csrw sepc, %0" :: "r"(sepc));
    8000577c:	14149073          	csrw	sepc,s1
}
    80005780:	fc1ff06f          	j	80005740 <_ZN5Riscv20handleSupervisorTrapEv+0x584>
        int irq = plic_claim();
    80005784:	00002097          	auipc	ra,0x2
    80005788:	fb0080e7          	jalr	-80(ra) # 80007734 <plic_claim>
    8000578c:	00050493          	mv	s1,a0
        if (irq == 10) {
    80005790:	00a00793          	li	a5,10
    80005794:	02f50463          	beq	a0,a5,800057bc <_ZN5Riscv20handleSupervisorTrapEv+0x600>
        plic_complete(irq);
    80005798:	00048513          	mv	a0,s1
    8000579c:	00002097          	auipc	ra,0x2
    800057a0:	fd0080e7          	jalr	-48(ra) # 8000776c <plic_complete>
    }


    800057a4:	0f813083          	ld	ra,248(sp)
    800057a8:	0f013403          	ld	s0,240(sp)
    800057ac:	0e813483          	ld	s1,232(sp)
    800057b0:	0e013903          	ld	s2,224(sp)
    800057b4:	10010113          	addi	sp,sp,256
    800057b8:	00008067          	ret
            kernel_console_handler();
    800057bc:	00001097          	auipc	ra,0x1
    800057c0:	3a4080e7          	jalr	932(ra) # 80006b60 <_Z22kernel_console_handlerv>
    800057c4:	fd5ff06f          	j	80005798 <_ZN5Riscv20handleSupervisorTrapEv+0x5dc>

00000000800057c8 <_ZN9SemKernelC1Ei>:
#include "../h/semkernel.hpp"

// Pomoćni RAII-stil makroi/funkcije nisu neophodni, radim eksplicitno
// da bude jasno gde tačno kritična sekcija počinje i završava se.

SemKernel::SemKernel(int val) {
    800057c8:	ff010113          	addi	sp,sp,-16
    800057cc:	00813423          	sd	s0,8(sp)
    800057d0:	01010413          	addi	s0,sp,16
    List() : head(nullptr), tail(nullptr) {}
    800057d4:	00053423          	sd	zero,8(a0)
    800057d8:	00053823          	sd	zero,16(a0)
    this->val = val;
    800057dc:	00b52023          	sw	a1,0(a0)
}
    800057e0:	00813403          	ld	s0,8(sp)
    800057e4:	01010113          	addi	sp,sp,16
    800057e8:	00008067          	ret

00000000800057ec <_ZN9SemKernelD1Ev>:

SemKernel::~SemKernel() {
    800057ec:	fc010113          	addi	sp,sp,-64
    800057f0:	02113c23          	sd	ra,56(sp)
    800057f4:	02813823          	sd	s0,48(sp)
    800057f8:	02913423          	sd	s1,40(sp)
    800057fc:	03213023          	sd	s2,32(sp)
    80005800:	01313c23          	sd	s3,24(sp)
    80005804:	04010413          	addi	s0,sp,64
    80005808:	00050493          	mv	s1,a0
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    8000580c:	100027f3          	csrr	a5,sstatus
    80005810:	fcf43423          	sd	a5,-56(s0)
    return sstatus;
    80005814:	fc843983          	ld	s3,-56(s0)
    __asm__ volatile("csrc sstatus, %0" :: "r"(mask));
    80005818:	00200793          	li	a5,2
    8000581c:	1007b073          	csrc	sstatus,a5
}
    80005820:	0180006f          	j	80005838 <_ZN9SemKernelD1Ev+0x4c>
            tail = nullptr;
    80005824:	0004b823          	sd	zero,16(s1)
        T* ret = elem->data;
    80005828:	00053903          	ld	s2,0(a0)
        delete elem;
    8000582c:	fffff097          	auipc	ra,0xfffff
    80005830:	638080e7          	jalr	1592(ra) # 80004e64 <_ZdlPv>
    uint64 sstatus = Riscv::r_sstatus();
    Riscv::mc_sstatus(Riscv::SSTATUS_SIE);

    while (!blockedList.isEmpty()) {
        TCB* threadToDeblock = blockedList.removeFirst();
        if (threadToDeblock != nullptr) {
    80005834:	02091063          	bnez	s2,80005854 <_ZN9SemKernelD1Ev+0x68>
        return head == 0;
    80005838:	0084b503          	ld	a0,8(s1)
    while (!blockedList.isEmpty()) {
    8000583c:	02050a63          	beqz	a0,80005870 <_ZN9SemKernelD1Ev+0x84>
        if (!head)
    80005840:	fe050ce3          	beqz	a0,80005838 <_ZN9SemKernelD1Ev+0x4c>
        head = head->next;
    80005844:	00853783          	ld	a5,8(a0)
    80005848:	00f4b423          	sd	a5,8(s1)
        if (!head)
    8000584c:	fc079ee3          	bnez	a5,80005828 <_ZN9SemKernelD1Ev+0x3c>
    80005850:	fd5ff06f          	j	80005824 <_ZN9SemKernelD1Ev+0x38>
        this->semStatus = status;
    80005854:	fff00793          	li	a5,-1
    80005858:	02f92e23          	sw	a5,60(s2)
        this->blocked = stat;
    8000585c:	02090ca3          	sb	zero,57(s2)
            threadToDeblock->setSemStatus(-1);
            threadToDeblock->setBlocked(false);
            Scheduler::put(threadToDeblock);
    80005860:	00090513          	mv	a0,s2
    80005864:	00000097          	auipc	ra,0x0
    80005868:	4bc080e7          	jalr	1212(ra) # 80005d20 <_ZN9Scheduler3putEP3TCB>
    8000586c:	fcdff06f          	j	80005838 <_ZN9SemKernelD1Ev+0x4c>
        }
    }

    if (sstatus & Riscv::SSTATUS_SIE) {
    80005870:	0029f993          	andi	s3,s3,2
    80005874:	00098663          	beqz	s3,80005880 <_ZN9SemKernelD1Ev+0x94>
    __asm__ volatile("csrs sstatus, %0" :: "r"(mask));
    80005878:	00200793          	li	a5,2
    8000587c:	1007a073          	csrs	sstatus,a5
        Riscv::ms_sstatus(Riscv::SSTATUS_SIE);
    }
}
    80005880:	03813083          	ld	ra,56(sp)
    80005884:	03013403          	ld	s0,48(sp)
    80005888:	02813483          	ld	s1,40(sp)
    8000588c:	02013903          	ld	s2,32(sp)
    80005890:	01813983          	ld	s3,24(sp)
    80005894:	04010113          	addi	sp,sp,64
    80005898:	00008067          	ret

000000008000589c <_ZN9SemKernel5blockEv>:
        Riscv::ms_sstatus(Riscv::SSTATUS_SIE);
    }
    return result;
}

int SemKernel::block() {
    8000589c:	fe010113          	addi	sp,sp,-32
    800058a0:	00113c23          	sd	ra,24(sp)
    800058a4:	00813823          	sd	s0,16(sp)
    800058a8:	00913423          	sd	s1,8(sp)
    800058ac:	01213023          	sd	s2,0(sp)
    800058b0:	02010413          	addi	s0,sp,32
    800058b4:	00050913          	mv	s2,a0
    // Pretpostavka: pozvano je unutar već isključenih prekida (iz wait()/wait_n()).
    TCB* oldThread = TCB::running;
    800058b8:	00006797          	auipc	a5,0x6
    800058bc:	2d87b783          	ld	a5,728(a5) # 8000bb90 <_GLOBAL_OFFSET_TABLE_+0x58>
    800058c0:	0007b483          	ld	s1,0(a5)
    oldThread->reqsem_n = 1;
    800058c4:	00100793          	li	a5,1
    800058c8:	04f4a023          	sw	a5,64(s1)
        this->semStatus = status;
    800058cc:	0204ae23          	sw	zero,60(s1)
        Elem* elem = new Elem(data, nullptr);
    800058d0:	01000513          	li	a0,16
    800058d4:	fffff097          	auipc	ra,0xfffff
    800058d8:	530080e7          	jalr	1328(ra) # 80004e04 <_Znwm>
        Elem(T* data, Elem* next) : data(data), next(next) {}
    800058dc:	00953023          	sd	s1,0(a0)
    800058e0:	00053423          	sd	zero,8(a0)
        if (tail)
    800058e4:	01093783          	ld	a5,16(s2)
    800058e8:	02078c63          	beqz	a5,80005920 <_ZN9SemKernel5blockEv+0x84>
            tail->next = elem;
    800058ec:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    800058f0:	00a93823          	sd	a0,16(s2)
        this->blocked = stat;
    800058f4:	00100793          	li	a5,1
    800058f8:	02f48ca3          	sb	a5,57(s1)
    oldThread->setSemStatus(0);
    blockedList.addLast(oldThread);
    oldThread->setBlocked(true);

    TCB::dispatch();
    800058fc:	fffff097          	auipc	ra,0xfffff
    80005900:	158080e7          	jalr	344(ra) # 80004a54 <_ZN3TCB8dispatchEv>

    // Čitamo status TEK kad se nit stvarno probudi (nakon dispatch-a),
    // ne pre. Ovo je popravka postojećeg bug-a.
    return oldThread->getSemStatus();
}
    80005904:	03c4a503          	lw	a0,60(s1)
    80005908:	01813083          	ld	ra,24(sp)
    8000590c:	01013403          	ld	s0,16(sp)
    80005910:	00813483          	ld	s1,8(sp)
    80005914:	00013903          	ld	s2,0(sp)
    80005918:	02010113          	addi	sp,sp,32
    8000591c:	00008067          	ret
            head = tail = elem;
    80005920:	00a93823          	sd	a0,16(s2)
    80005924:	00a93423          	sd	a0,8(s2)
    80005928:	fcdff06f          	j	800058f4 <_ZN9SemKernel5blockEv+0x58>

000000008000592c <_ZN9SemKernel4waitEv>:
int SemKernel::wait() {
    8000592c:	fd010113          	addi	sp,sp,-48
    80005930:	02113423          	sd	ra,40(sp)
    80005934:	02813023          	sd	s0,32(sp)
    80005938:	00913c23          	sd	s1,24(sp)
    8000593c:	03010413          	addi	s0,sp,48
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    80005940:	100027f3          	csrr	a5,sstatus
    80005944:	fcf43c23          	sd	a5,-40(s0)
    return sstatus;
    80005948:	fd843483          	ld	s1,-40(s0)
    __asm__ volatile("csrc sstatus, %0" :: "r"(mask));
    8000594c:	00200793          	li	a5,2
    80005950:	1007b073          	csrc	sstatus,a5
    val--;
    80005954:	00052783          	lw	a5,0(a0)
    80005958:	fff7879b          	addiw	a5,a5,-1
    8000595c:	00f52023          	sw	a5,0(a0)
    if (val < 0) {
    80005960:	02079713          	slli	a4,a5,0x20
    80005964:	02074663          	bltz	a4,80005990 <_ZN9SemKernel4waitEv+0x64>
    int result = 0;
    80005968:	00000513          	li	a0,0
    if (sstatus & Riscv::SSTATUS_SIE) {
    8000596c:	0024f493          	andi	s1,s1,2
    80005970:	00048663          	beqz	s1,8000597c <_ZN9SemKernel4waitEv+0x50>
    __asm__ volatile("csrs sstatus, %0" :: "r"(mask));
    80005974:	00200793          	li	a5,2
    80005978:	1007a073          	csrs	sstatus,a5
}
    8000597c:	02813083          	ld	ra,40(sp)
    80005980:	02013403          	ld	s0,32(sp)
    80005984:	01813483          	ld	s1,24(sp)
    80005988:	03010113          	addi	sp,sp,48
    8000598c:	00008067          	ret
        result = block();   // block() sam brine o svom delu kritične sekcije
    80005990:	00000097          	auipc	ra,0x0
    80005994:	f0c080e7          	jalr	-244(ra) # 8000589c <_ZN9SemKernel5blockEv>
    80005998:	fd5ff06f          	j	8000596c <_ZN9SemKernel4waitEv+0x40>

000000008000599c <_ZN9SemKernel7deblockEv>:
        Riscv::ms_sstatus(Riscv::SSTATUS_SIE);
    }
    return 0;
}

int SemKernel::deblock() {
    8000599c:	00050793          	mv	a5,a0
        if (!head)
    800059a0:	00853503          	ld	a0,8(a0)
    800059a4:	06050463          	beqz	a0,80005a0c <_ZN9SemKernel7deblockEv+0x70>
    800059a8:	fe010113          	addi	sp,sp,-32
    800059ac:	00113c23          	sd	ra,24(sp)
    800059b0:	00813823          	sd	s0,16(sp)
    800059b4:	00913423          	sd	s1,8(sp)
    800059b8:	02010413          	addi	s0,sp,32
        head = head->next;
    800059bc:	00853703          	ld	a4,8(a0)
    800059c0:	00e7b423          	sd	a4,8(a5)
        if (!head)
    800059c4:	04070063          	beqz	a4,80005a04 <_ZN9SemKernel7deblockEv+0x68>
        T* ret = elem->data;
    800059c8:	00053483          	ld	s1,0(a0)
        delete elem;
    800059cc:	fffff097          	auipc	ra,0xfffff
    800059d0:	498080e7          	jalr	1176(ra) # 80004e64 <_ZdlPv>
    // Pretpostavka: pozvano unutar već isključenih prekida (iz signal()).
    TCB* threadToDeblock = blockedList.removeFirst();
    if (threadToDeblock != nullptr) {
    800059d4:	00048c63          	beqz	s1,800059ec <_ZN9SemKernel7deblockEv+0x50>
        this->semStatus = status;
    800059d8:	0204ae23          	sw	zero,60(s1)
        this->blocked = stat;
    800059dc:	02048ca3          	sb	zero,57(s1)
        threadToDeblock->setSemStatus(0);
        threadToDeblock->setBlocked(false);
        Scheduler::put(threadToDeblock);
    800059e0:	00048513          	mv	a0,s1
    800059e4:	00000097          	auipc	ra,0x0
    800059e8:	33c080e7          	jalr	828(ra) # 80005d20 <_ZN9Scheduler3putEP3TCB>
    }
    return 0;
}
    800059ec:	00000513          	li	a0,0
    800059f0:	01813083          	ld	ra,24(sp)
    800059f4:	01013403          	ld	s0,16(sp)
    800059f8:	00813483          	ld	s1,8(sp)
    800059fc:	02010113          	addi	sp,sp,32
    80005a00:	00008067          	ret
            tail = nullptr;
    80005a04:	0007b823          	sd	zero,16(a5)
    80005a08:	fc1ff06f          	j	800059c8 <_ZN9SemKernel7deblockEv+0x2c>
    80005a0c:	00000513          	li	a0,0
    80005a10:	00008067          	ret

0000000080005a14 <_ZN9SemKernel6signalEv>:
int SemKernel::signal() {
    80005a14:	fd010113          	addi	sp,sp,-48
    80005a18:	02113423          	sd	ra,40(sp)
    80005a1c:	02813023          	sd	s0,32(sp)
    80005a20:	00913c23          	sd	s1,24(sp)
    80005a24:	03010413          	addi	s0,sp,48
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    80005a28:	100027f3          	csrr	a5,sstatus
    80005a2c:	fcf43c23          	sd	a5,-40(s0)
    return sstatus;
    80005a30:	fd843483          	ld	s1,-40(s0)
    __asm__ volatile("csrc sstatus, %0" :: "r"(mask));
    80005a34:	00200793          	li	a5,2
    80005a38:	1007b073          	csrc	sstatus,a5
    val++;
    80005a3c:	00052783          	lw	a5,0(a0)
    80005a40:	0017879b          	addiw	a5,a5,1
    80005a44:	0007871b          	sext.w	a4,a5
    80005a48:	00f52023          	sw	a5,0(a0)
    if (val <= 0) {
    80005a4c:	02e05663          	blez	a4,80005a78 <_ZN9SemKernel6signalEv+0x64>
    if (sstatus & Riscv::SSTATUS_SIE) {
    80005a50:	0024f493          	andi	s1,s1,2
    80005a54:	00048663          	beqz	s1,80005a60 <_ZN9SemKernel6signalEv+0x4c>
    __asm__ volatile("csrs sstatus, %0" :: "r"(mask));
    80005a58:	00200793          	li	a5,2
    80005a5c:	1007a073          	csrs	sstatus,a5
}
    80005a60:	00000513          	li	a0,0
    80005a64:	02813083          	ld	ra,40(sp)
    80005a68:	02013403          	ld	s0,32(sp)
    80005a6c:	01813483          	ld	s1,24(sp)
    80005a70:	03010113          	addi	sp,sp,48
    80005a74:	00008067          	ret
        deblock();
    80005a78:	00000097          	auipc	ra,0x0
    80005a7c:	f24080e7          	jalr	-220(ra) # 8000599c <_ZN9SemKernel7deblockEv>
    80005a80:	fd1ff06f          	j	80005a50 <_ZN9SemKernel6signalEv+0x3c>

0000000080005a84 <_ZN9SemKernel7block_nEi>:

int SemKernel::block_n(int tokens) {
    80005a84:	fe010113          	addi	sp,sp,-32
    80005a88:	00113c23          	sd	ra,24(sp)
    80005a8c:	00813823          	sd	s0,16(sp)
    80005a90:	00913423          	sd	s1,8(sp)
    80005a94:	01213023          	sd	s2,0(sp)
    80005a98:	02010413          	addi	s0,sp,32
    80005a9c:	00050913          	mv	s2,a0
    // Pretpostavka: pozvano unutar već isključenih prekida (iz wait_n()).
    TCB* oldThread = TCB::running;
    80005aa0:	00006797          	auipc	a5,0x6
    80005aa4:	0f07b783          	ld	a5,240(a5) # 8000bb90 <_GLOBAL_OFFSET_TABLE_+0x58>
    80005aa8:	0007b483          	ld	s1,0(a5)
        this->semStatus = status;
    80005aac:	0204ae23          	sw	zero,60(s1)
    oldThread->setSemStatus(0);
    oldThread->reqsem_n = tokens;
    80005ab0:	04b4a023          	sw	a1,64(s1)
        Elem* elem = new Elem(data, nullptr);
    80005ab4:	01000513          	li	a0,16
    80005ab8:	fffff097          	auipc	ra,0xfffff
    80005abc:	34c080e7          	jalr	844(ra) # 80004e04 <_Znwm>
        Elem(T* data, Elem* next) : data(data), next(next) {}
    80005ac0:	00953023          	sd	s1,0(a0)
    80005ac4:	00053423          	sd	zero,8(a0)
        if (tail)
    80005ac8:	01093783          	ld	a5,16(s2)
    80005acc:	02078c63          	beqz	a5,80005b04 <_ZN9SemKernel7block_nEi+0x80>
            tail->next = elem;
    80005ad0:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    80005ad4:	00a93823          	sd	a0,16(s2)
        this->blocked = stat;
    80005ad8:	00100793          	li	a5,1
    80005adc:	02f48ca3          	sb	a5,57(s1)
    blockedList.addLast(oldThread);
    oldThread->setBlocked(true);

    TCB::dispatch();
    80005ae0:	fffff097          	auipc	ra,0xfffff
    80005ae4:	f74080e7          	jalr	-140(ra) # 80004a54 <_ZN3TCB8dispatchEv>

    return oldThread->getSemStatus();
}
    80005ae8:	03c4a503          	lw	a0,60(s1)
    80005aec:	01813083          	ld	ra,24(sp)
    80005af0:	01013403          	ld	s0,16(sp)
    80005af4:	00813483          	ld	s1,8(sp)
    80005af8:	00013903          	ld	s2,0(sp)
    80005afc:	02010113          	addi	sp,sp,32
    80005b00:	00008067          	ret
            head = tail = elem;
    80005b04:	00a93823          	sd	a0,16(s2)
    80005b08:	00a93423          	sd	a0,8(s2)
    80005b0c:	fcdff06f          	j	80005ad8 <_ZN9SemKernel7block_nEi+0x54>

0000000080005b10 <_ZN9SemKernel8signal_nEi>:

int SemKernel::signal_n(int addVal) {
    if (addVal <= 0) return -1;
    80005b10:	0cb05463          	blez	a1,80005bd8 <_ZN9SemKernel8signal_nEi+0xc8>
int SemKernel::signal_n(int addVal) {
    80005b14:	fc010113          	addi	sp,sp,-64
    80005b18:	02113c23          	sd	ra,56(sp)
    80005b1c:	02813823          	sd	s0,48(sp)
    80005b20:	02913423          	sd	s1,40(sp)
    80005b24:	03213023          	sd	s2,32(sp)
    80005b28:	01313c23          	sd	s3,24(sp)
    80005b2c:	04010413          	addi	s0,sp,64
    80005b30:	00050493          	mv	s1,a0
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    80005b34:	100027f3          	csrr	a5,sstatus
    80005b38:	fcf43423          	sd	a5,-56(s0)
    return sstatus;
    80005b3c:	fc843983          	ld	s3,-56(s0)
    __asm__ volatile("csrc sstatus, %0" :: "r"(mask));
    80005b40:	00200793          	li	a5,2
    80005b44:	1007b073          	csrc	sstatus,a5

    uint64 sstatus = Riscv::r_sstatus();
    Riscv::mc_sstatus(Riscv::SSTATUS_SIE);

    this->val += addVal;
    80005b48:	00052783          	lw	a5,0(a0)
    80005b4c:	00b785bb          	addw	a1,a5,a1
    80005b50:	00b52023          	sw	a1,0(a0)
    80005b54:	0340006f          	j	80005b88 <_ZN9SemKernel8signal_nEi+0x78>
            tail = nullptr;
    80005b58:	0004b823          	sd	zero,16(s1)
        delete elem;
    80005b5c:	fffff097          	auipc	ra,0xfffff
    80005b60:	308080e7          	jalr	776(ra) # 80004e64 <_ZdlPv>
    while (!blockedList.isEmpty()) {
        TCB* firstBlocked = blockedList.peekFirst();
        if (firstBlocked != nullptr) {
            if (this->val >= firstBlocked->reqsem_n) {
                blockedList.removeFirst();
                this->val -= firstBlocked->reqsem_n;
    80005b64:	04092703          	lw	a4,64(s2)
    80005b68:	0004a783          	lw	a5,0(s1)
    80005b6c:	40e787bb          	subw	a5,a5,a4
    80005b70:	00f4a023          	sw	a5,0(s1)
        this->semStatus = status;
    80005b74:	02092e23          	sw	zero,60(s2)
        this->blocked = stat;
    80005b78:	02090ca3          	sb	zero,57(s2)
                firstBlocked->setSemStatus(0);
                firstBlocked->setBlocked(false);
                Scheduler::put(firstBlocked);
    80005b7c:	00090513          	mv	a0,s2
    80005b80:	00000097          	auipc	ra,0x0
    80005b84:	1a0080e7          	jalr	416(ra) # 80005d20 <_ZN9Scheduler3putEP3TCB>
        return head == 0;
    80005b88:	0084b783          	ld	a5,8(s1)
    while (!blockedList.isEmpty()) {
    80005b8c:	02078a63          	beqz	a5,80005bc0 <_ZN9SemKernel8signal_nEi+0xb0>
        if (!head)
    80005b90:	02078863          	beqz	a5,80005bc0 <_ZN9SemKernel8signal_nEi+0xb0>
        return head->data;
    80005b94:	0007b903          	ld	s2,0(a5)
        if (firstBlocked != nullptr) {
    80005b98:	02090463          	beqz	s2,80005bc0 <_ZN9SemKernel8signal_nEi+0xb0>
            if (this->val >= firstBlocked->reqsem_n) {
    80005b9c:	0004a703          	lw	a4,0(s1)
    80005ba0:	04092783          	lw	a5,64(s2)
    80005ba4:	00f74e63          	blt	a4,a5,80005bc0 <_ZN9SemKernel8signal_nEi+0xb0>
        if (!head)
    80005ba8:	0084b503          	ld	a0,8(s1)
    80005bac:	fa050ce3          	beqz	a0,80005b64 <_ZN9SemKernel8signal_nEi+0x54>
        head = head->next;
    80005bb0:	00853783          	ld	a5,8(a0)
    80005bb4:	00f4b423          	sd	a5,8(s1)
        if (!head)
    80005bb8:	fa0792e3          	bnez	a5,80005b5c <_ZN9SemKernel8signal_nEi+0x4c>
    80005bbc:	f9dff06f          	j	80005b58 <_ZN9SemKernel8signal_nEi+0x48>
        } else {
            break;
        }
    }

    if (sstatus & Riscv::SSTATUS_SIE) {
    80005bc0:	0029f993          	andi	s3,s3,2
    80005bc4:	00098e63          	beqz	s3,80005be0 <_ZN9SemKernel8signal_nEi+0xd0>
    __asm__ volatile("csrs sstatus, %0" :: "r"(mask));
    80005bc8:	00200793          	li	a5,2
    80005bcc:	1007a073          	csrs	sstatus,a5
        Riscv::ms_sstatus(Riscv::SSTATUS_SIE);
    }
    return 0;
    80005bd0:	00000513          	li	a0,0
}
    80005bd4:	0100006f          	j	80005be4 <_ZN9SemKernel8signal_nEi+0xd4>
    if (addVal <= 0) return -1;
    80005bd8:	fff00513          	li	a0,-1
}
    80005bdc:	00008067          	ret
    return 0;
    80005be0:	00000513          	li	a0,0
}
    80005be4:	03813083          	ld	ra,56(sp)
    80005be8:	03013403          	ld	s0,48(sp)
    80005bec:	02813483          	ld	s1,40(sp)
    80005bf0:	02013903          	ld	s2,32(sp)
    80005bf4:	01813983          	ld	s3,24(sp)
    80005bf8:	04010113          	addi	sp,sp,64
    80005bfc:	00008067          	ret

0000000080005c00 <_ZN9SemKernel6wait_nEi>:

int SemKernel::wait_n(int tokens) {
    80005c00:	fd010113          	addi	sp,sp,-48
    80005c04:	02113423          	sd	ra,40(sp)
    80005c08:	02813023          	sd	s0,32(sp)
    80005c0c:	00913c23          	sd	s1,24(sp)
    80005c10:	03010413          	addi	s0,sp,48
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    80005c14:	100027f3          	csrr	a5,sstatus
    80005c18:	fcf43c23          	sd	a5,-40(s0)
    return sstatus;
    80005c1c:	fd843483          	ld	s1,-40(s0)
    __asm__ volatile("csrc sstatus, %0" :: "r"(mask));
    80005c20:	00200793          	li	a5,2
    80005c24:	1007b073          	csrc	sstatus,a5
    uint64 sstatus = Riscv::r_sstatus();
    Riscv::mc_sstatus(Riscv::SSTATUS_SIE);

    int curr = this->val;
    80005c28:	00052783          	lw	a5,0(a0)
    curr -= tokens;
    80005c2c:	40b787bb          	subw	a5,a5,a1

    int result = 0;
    if (curr >= 0) {
    80005c30:	02079713          	slli	a4,a5,0x20
    80005c34:	02074863          	bltz	a4,80005c64 <_ZN9SemKernel6wait_nEi+0x64>
        this->val = curr;
    80005c38:	00f52023          	sw	a5,0(a0)
    int result = 0;
    80005c3c:	00000513          	li	a0,0
    } else {
        result = block_n(tokens);   // ide u dispatch dok su prekidi "isključeni"
    }

    if (sstatus & Riscv::SSTATUS_SIE) {
    80005c40:	0024f493          	andi	s1,s1,2
    80005c44:	00048663          	beqz	s1,80005c50 <_ZN9SemKernel6wait_nEi+0x50>
    __asm__ volatile("csrs sstatus, %0" :: "r"(mask));
    80005c48:	00200793          	li	a5,2
    80005c4c:	1007a073          	csrs	sstatus,a5
        Riscv::ms_sstatus(Riscv::SSTATUS_SIE);
    }
    return result;
    80005c50:	02813083          	ld	ra,40(sp)
    80005c54:	02013403          	ld	s0,32(sp)
    80005c58:	01813483          	ld	s1,24(sp)
    80005c5c:	03010113          	addi	sp,sp,48
    80005c60:	00008067          	ret
        result = block_n(tokens);   // ide u dispatch dok su prekidi "isključeni"
    80005c64:	00000097          	auipc	ra,0x0
    80005c68:	e20080e7          	jalr	-480(ra) # 80005a84 <_ZN9SemKernel7block_nEi>
    80005c6c:	fd5ff06f          	j	80005c40 <_ZN9SemKernel6wait_nEi+0x40>

0000000080005c70 <_Z41__static_initialization_and_destruction_0ii>:
    return sleepingThreads.removeFirst();
}

void Scheduler::putS(TCB *ccb) {
    sleepingThreads.addLast(ccb);
}
    80005c70:	ff010113          	addi	sp,sp,-16
    80005c74:	00813423          	sd	s0,8(sp)
    80005c78:	01010413          	addi	s0,sp,16
    80005c7c:	00100793          	li	a5,1
    80005c80:	00f50863          	beq	a0,a5,80005c90 <_Z41__static_initialization_and_destruction_0ii+0x20>
    80005c84:	00813403          	ld	s0,8(sp)
    80005c88:	01010113          	addi	sp,sp,16
    80005c8c:	00008067          	ret
    80005c90:	000107b7          	lui	a5,0x10
    80005c94:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80005c98:	fef596e3          	bne	a1,a5,80005c84 <_Z41__static_initialization_and_destruction_0ii+0x14>
    List() : head(nullptr), tail(nullptr) {}
    80005c9c:	00006797          	auipc	a5,0x6
    80005ca0:	fc478793          	addi	a5,a5,-60 # 8000bc60 <_ZN9Scheduler19readyCoroutineQueueE>
    80005ca4:	0007b023          	sd	zero,0(a5)
    80005ca8:	0007b423          	sd	zero,8(a5)
    80005cac:	0007b823          	sd	zero,16(a5)
    80005cb0:	0007bc23          	sd	zero,24(a5)
    80005cb4:	fd1ff06f          	j	80005c84 <_Z41__static_initialization_and_destruction_0ii+0x14>

0000000080005cb8 <_ZN9Scheduler3getEv>:
{
    80005cb8:	fe010113          	addi	sp,sp,-32
    80005cbc:	00113c23          	sd	ra,24(sp)
    80005cc0:	00813823          	sd	s0,16(sp)
    80005cc4:	00913423          	sd	s1,8(sp)
    80005cc8:	02010413          	addi	s0,sp,32
        if (!head)
    80005ccc:	00006517          	auipc	a0,0x6
    80005cd0:	f9453503          	ld	a0,-108(a0) # 8000bc60 <_ZN9Scheduler19readyCoroutineQueueE>
    80005cd4:	04050263          	beqz	a0,80005d18 <_ZN9Scheduler3getEv+0x60>
        head = head->next;
    80005cd8:	00853783          	ld	a5,8(a0)
    80005cdc:	00006717          	auipc	a4,0x6
    80005ce0:	f8f73223          	sd	a5,-124(a4) # 8000bc60 <_ZN9Scheduler19readyCoroutineQueueE>
        if (!head)
    80005ce4:	02078463          	beqz	a5,80005d0c <_ZN9Scheduler3getEv+0x54>
        T* ret = elem->data;
    80005ce8:	00053483          	ld	s1,0(a0)
        delete elem;
    80005cec:	fffff097          	auipc	ra,0xfffff
    80005cf0:	178080e7          	jalr	376(ra) # 80004e64 <_ZdlPv>
}
    80005cf4:	00048513          	mv	a0,s1
    80005cf8:	01813083          	ld	ra,24(sp)
    80005cfc:	01013403          	ld	s0,16(sp)
    80005d00:	00813483          	ld	s1,8(sp)
    80005d04:	02010113          	addi	sp,sp,32
    80005d08:	00008067          	ret
            tail = nullptr;
    80005d0c:	00006797          	auipc	a5,0x6
    80005d10:	f407be23          	sd	zero,-164(a5) # 8000bc68 <_ZN9Scheduler19readyCoroutineQueueE+0x8>
    80005d14:	fd5ff06f          	j	80005ce8 <_ZN9Scheduler3getEv+0x30>
            return nullptr;
    80005d18:	00050493          	mv	s1,a0
    return readyCoroutineQueue.removeFirst();
    80005d1c:	fd9ff06f          	j	80005cf4 <_ZN9Scheduler3getEv+0x3c>

0000000080005d20 <_ZN9Scheduler3putEP3TCB>:
{
    80005d20:	fe010113          	addi	sp,sp,-32
    80005d24:	00113c23          	sd	ra,24(sp)
    80005d28:	00813823          	sd	s0,16(sp)
    80005d2c:	00913423          	sd	s1,8(sp)
    80005d30:	02010413          	addi	s0,sp,32
    80005d34:	00050493          	mv	s1,a0
        Elem* elem = new Elem(data, nullptr);
    80005d38:	01000513          	li	a0,16
    80005d3c:	fffff097          	auipc	ra,0xfffff
    80005d40:	0c8080e7          	jalr	200(ra) # 80004e04 <_Znwm>
        Elem(T* data, Elem* next) : data(data), next(next) {}
    80005d44:	00953023          	sd	s1,0(a0)
    80005d48:	00053423          	sd	zero,8(a0)
        if (tail)
    80005d4c:	00006797          	auipc	a5,0x6
    80005d50:	f1c7b783          	ld	a5,-228(a5) # 8000bc68 <_ZN9Scheduler19readyCoroutineQueueE+0x8>
    80005d54:	02078263          	beqz	a5,80005d78 <_ZN9Scheduler3putEP3TCB+0x58>
            tail->next = elem;
    80005d58:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    80005d5c:	00006797          	auipc	a5,0x6
    80005d60:	f0a7b623          	sd	a0,-244(a5) # 8000bc68 <_ZN9Scheduler19readyCoroutineQueueE+0x8>
}
    80005d64:	01813083          	ld	ra,24(sp)
    80005d68:	01013403          	ld	s0,16(sp)
    80005d6c:	00813483          	ld	s1,8(sp)
    80005d70:	02010113          	addi	sp,sp,32
    80005d74:	00008067          	ret
            head = tail = elem;
    80005d78:	00006797          	auipc	a5,0x6
    80005d7c:	ee878793          	addi	a5,a5,-280 # 8000bc60 <_ZN9Scheduler19readyCoroutineQueueE>
    80005d80:	00a7b423          	sd	a0,8(a5)
    80005d84:	00a7b023          	sd	a0,0(a5)
    80005d88:	fddff06f          	j	80005d64 <_ZN9Scheduler3putEP3TCB+0x44>

0000000080005d8c <_ZN9Scheduler4getSEv>:
TCB *Scheduler::getS() {
    80005d8c:	fe010113          	addi	sp,sp,-32
    80005d90:	00113c23          	sd	ra,24(sp)
    80005d94:	00813823          	sd	s0,16(sp)
    80005d98:	00913423          	sd	s1,8(sp)
    80005d9c:	02010413          	addi	s0,sp,32
        if (!head)
    80005da0:	00006517          	auipc	a0,0x6
    80005da4:	ed053503          	ld	a0,-304(a0) # 8000bc70 <_ZN9Scheduler15sleepingThreadsE>
    80005da8:	04050263          	beqz	a0,80005dec <_ZN9Scheduler4getSEv+0x60>
        head = head->next;
    80005dac:	00853783          	ld	a5,8(a0)
    80005db0:	00006717          	auipc	a4,0x6
    80005db4:	ecf73023          	sd	a5,-320(a4) # 8000bc70 <_ZN9Scheduler15sleepingThreadsE>
        if (!head)
    80005db8:	02078463          	beqz	a5,80005de0 <_ZN9Scheduler4getSEv+0x54>
        T* ret = elem->data;
    80005dbc:	00053483          	ld	s1,0(a0)
        delete elem;
    80005dc0:	fffff097          	auipc	ra,0xfffff
    80005dc4:	0a4080e7          	jalr	164(ra) # 80004e64 <_ZdlPv>
}
    80005dc8:	00048513          	mv	a0,s1
    80005dcc:	01813083          	ld	ra,24(sp)
    80005dd0:	01013403          	ld	s0,16(sp)
    80005dd4:	00813483          	ld	s1,8(sp)
    80005dd8:	02010113          	addi	sp,sp,32
    80005ddc:	00008067          	ret
            tail = nullptr;
    80005de0:	00006797          	auipc	a5,0x6
    80005de4:	e807bc23          	sd	zero,-360(a5) # 8000bc78 <_ZN9Scheduler15sleepingThreadsE+0x8>
    80005de8:	fd5ff06f          	j	80005dbc <_ZN9Scheduler4getSEv+0x30>
            return nullptr;
    80005dec:	00050493          	mv	s1,a0
    return sleepingThreads.removeFirst();
    80005df0:	fd9ff06f          	j	80005dc8 <_ZN9Scheduler4getSEv+0x3c>

0000000080005df4 <_ZN9Scheduler4putSEP3TCB>:
void Scheduler::putS(TCB *ccb) {
    80005df4:	fe010113          	addi	sp,sp,-32
    80005df8:	00113c23          	sd	ra,24(sp)
    80005dfc:	00813823          	sd	s0,16(sp)
    80005e00:	00913423          	sd	s1,8(sp)
    80005e04:	02010413          	addi	s0,sp,32
    80005e08:	00050493          	mv	s1,a0
        Elem* elem = new Elem(data, nullptr);
    80005e0c:	01000513          	li	a0,16
    80005e10:	fffff097          	auipc	ra,0xfffff
    80005e14:	ff4080e7          	jalr	-12(ra) # 80004e04 <_Znwm>
        Elem(T* data, Elem* next) : data(data), next(next) {}
    80005e18:	00953023          	sd	s1,0(a0)
    80005e1c:	00053423          	sd	zero,8(a0)
        if (tail)
    80005e20:	00006797          	auipc	a5,0x6
    80005e24:	e587b783          	ld	a5,-424(a5) # 8000bc78 <_ZN9Scheduler15sleepingThreadsE+0x8>
    80005e28:	02078263          	beqz	a5,80005e4c <_ZN9Scheduler4putSEP3TCB+0x58>
            tail->next = elem;
    80005e2c:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    80005e30:	00006797          	auipc	a5,0x6
    80005e34:	e4a7b423          	sd	a0,-440(a5) # 8000bc78 <_ZN9Scheduler15sleepingThreadsE+0x8>
}
    80005e38:	01813083          	ld	ra,24(sp)
    80005e3c:	01013403          	ld	s0,16(sp)
    80005e40:	00813483          	ld	s1,8(sp)
    80005e44:	02010113          	addi	sp,sp,32
    80005e48:	00008067          	ret
            head = tail = elem;
    80005e4c:	00006797          	auipc	a5,0x6
    80005e50:	e1478793          	addi	a5,a5,-492 # 8000bc60 <_ZN9Scheduler19readyCoroutineQueueE>
    80005e54:	00a7bc23          	sd	a0,24(a5)
    80005e58:	00a7b823          	sd	a0,16(a5)
    80005e5c:	fddff06f          	j	80005e38 <_ZN9Scheduler4putSEP3TCB+0x44>

0000000080005e60 <_GLOBAL__sub_I__ZN9Scheduler19readyCoroutineQueueE>:
    80005e60:	ff010113          	addi	sp,sp,-16
    80005e64:	00113423          	sd	ra,8(sp)
    80005e68:	00813023          	sd	s0,0(sp)
    80005e6c:	01010413          	addi	s0,sp,16
    80005e70:	000105b7          	lui	a1,0x10
    80005e74:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    80005e78:	00100513          	li	a0,1
    80005e7c:	00000097          	auipc	ra,0x0
    80005e80:	df4080e7          	jalr	-524(ra) # 80005c70 <_Z41__static_initialization_and_destruction_0ii>
    80005e84:	00813083          	ld	ra,8(sp)
    80005e88:	00013403          	ld	s0,0(sp)
    80005e8c:	01010113          	addi	sp,sp,16
    80005e90:	00008067          	ret

0000000080005e94 <_Z1fPv>:


static Thread *t1;
static Thread *t2;

void f(void *arg) {
    80005e94:	fe010113          	addi	sp,sp,-32
    80005e98:	00113c23          	sd	ra,24(sp)
    80005e9c:	00813823          	sd	s0,16(sp)
    80005ea0:	00913423          	sd	s1,8(sp)
    80005ea4:	02010413          	addi	s0,sp,32
    for (int i = 0; i < 3; i++) {
    80005ea8:	00000493          	li	s1,0
    80005eac:	04c0006f          	j	80005ef8 <_Z1fPv+0x64>
        t1->sync();
    80005eb0:	00006517          	auipc	a0,0x6
    80005eb4:	dd053503          	ld	a0,-560(a0) # 8000bc80 <_ZL2t1>
    80005eb8:	00001097          	auipc	ra,0x1
    80005ebc:	f8c080e7          	jalr	-116(ra) # 80006e44 <_ZN6Thread4syncEv>
        printString("F");
    80005ec0:	00003517          	auipc	a0,0x3
    80005ec4:	61050513          	addi	a0,a0,1552 # 800094d0 <CONSOLE_STATUS+0x4c0>
    80005ec8:	ffffe097          	auipc	ra,0xffffe
    80005ecc:	258080e7          	jalr	600(ra) # 80004120 <_Z11printStringPKc>
        printInt(i);
    80005ed0:	00000613          	li	a2,0
    80005ed4:	00a00593          	li	a1,10
    80005ed8:	00048513          	mv	a0,s1
    80005edc:	ffffe097          	auipc	ra,0xffffe
    80005ee0:	3a0080e7          	jalr	928(ra) # 8000427c <_Z8printIntmhh>
        printString("\n");
    80005ee4:	00003517          	auipc	a0,0x3
    80005ee8:	47450513          	addi	a0,a0,1140 # 80009358 <CONSOLE_STATUS+0x348>
    80005eec:	ffffe097          	auipc	ra,0xffffe
    80005ef0:	234080e7          	jalr	564(ra) # 80004120 <_Z11printStringPKc>
    for (int i = 0; i < 3; i++) {
    80005ef4:	0014849b          	addiw	s1,s1,1
    80005ef8:	00200793          	li	a5,2
    80005efc:	fa97dae3          	bge	a5,s1,80005eb0 <_Z1fPv+0x1c>

    }
}
    80005f00:	01813083          	ld	ra,24(sp)
    80005f04:	01013403          	ld	s0,16(sp)
    80005f08:	00813483          	ld	s1,8(sp)
    80005f0c:	02010113          	addi	sp,sp,32
    80005f10:	00008067          	ret

0000000080005f14 <_Z1gPv>:


void g(void *arg) {
    80005f14:	fd010113          	addi	sp,sp,-48
    80005f18:	02113423          	sd	ra,40(sp)
    80005f1c:	02813023          	sd	s0,32(sp)
    80005f20:	00913c23          	sd	s1,24(sp)
    80005f24:	03010413          	addi	s0,sp,48
    for (int i = 0; i < 3; i++) {
    80005f28:	00000493          	li	s1,0
    80005f2c:	04c0006f          	j	80005f78 <_Z1gPv+0x64>
        for (volatile int k = 0; k < 1000000; k++) {}
        t2->sync();
    80005f30:	00006517          	auipc	a0,0x6
    80005f34:	d5853503          	ld	a0,-680(a0) # 8000bc88 <_ZL2t2>
    80005f38:	00001097          	auipc	ra,0x1
    80005f3c:	f0c080e7          	jalr	-244(ra) # 80006e44 <_ZN6Thread4syncEv>
        printString("G");
    80005f40:	00003517          	auipc	a0,0x3
    80005f44:	59850513          	addi	a0,a0,1432 # 800094d8 <CONSOLE_STATUS+0x4c8>
    80005f48:	ffffe097          	auipc	ra,0xffffe
    80005f4c:	1d8080e7          	jalr	472(ra) # 80004120 <_Z11printStringPKc>
        printInt(i);
    80005f50:	00000613          	li	a2,0
    80005f54:	00a00593          	li	a1,10
    80005f58:	00048513          	mv	a0,s1
    80005f5c:	ffffe097          	auipc	ra,0xffffe
    80005f60:	320080e7          	jalr	800(ra) # 8000427c <_Z8printIntmhh>
        printString("\n");
    80005f64:	00003517          	auipc	a0,0x3
    80005f68:	3f450513          	addi	a0,a0,1012 # 80009358 <CONSOLE_STATUS+0x348>
    80005f6c:	ffffe097          	auipc	ra,0xffffe
    80005f70:	1b4080e7          	jalr	436(ra) # 80004120 <_Z11printStringPKc>
    for (int i = 0; i < 3; i++) {
    80005f74:	0014849b          	addiw	s1,s1,1
    80005f78:	00200793          	li	a5,2
    80005f7c:	0297c663          	blt	a5,s1,80005fa8 <_Z1gPv+0x94>
        for (volatile int k = 0; k < 1000000; k++) {}
    80005f80:	fc042e23          	sw	zero,-36(s0)
    80005f84:	fdc42703          	lw	a4,-36(s0)
    80005f88:	0007071b          	sext.w	a4,a4
    80005f8c:	000f47b7          	lui	a5,0xf4
    80005f90:	23f78793          	addi	a5,a5,575 # f423f <_entry-0x7ff0bdc1>
    80005f94:	f8e7cee3          	blt	a5,a4,80005f30 <_Z1gPv+0x1c>
    80005f98:	fdc42783          	lw	a5,-36(s0)
    80005f9c:	0017879b          	addiw	a5,a5,1
    80005fa0:	fcf42e23          	sw	a5,-36(s0)
    80005fa4:	fe1ff06f          	j	80005f84 <_Z1gPv+0x70>

    }
}
    80005fa8:	02813083          	ld	ra,40(sp)
    80005fac:	02013403          	ld	s0,32(sp)
    80005fb0:	01813483          	ld	s1,24(sp)
    80005fb4:	03010113          	addi	sp,sp,48
    80005fb8:	00008067          	ret

0000000080005fbc <_Z4testv>:

void test() {
    80005fbc:	fe010113          	addi	sp,sp,-32
    80005fc0:	00113c23          	sd	ra,24(sp)
    80005fc4:	00813823          	sd	s0,16(sp)
    80005fc8:	00913423          	sd	s1,8(sp)
    80005fcc:	01213023          	sd	s2,0(sp)
    80005fd0:	02010413          	addi	s0,sp,32
    printString("USO\n");
    80005fd4:	00003517          	auipc	a0,0x3
    80005fd8:	50c50513          	addi	a0,a0,1292 # 800094e0 <CONSOLE_STATUS+0x4d0>
    80005fdc:	ffffe097          	auipc	ra,0xffffe
    80005fe0:	144080e7          	jalr	324(ra) # 80004120 <_Z11printStringPKc>
    t1 = new Thread(f, nullptr);
    80005fe4:	02000513          	li	a0,32
    80005fe8:	fffff097          	auipc	ra,0xfffff
    80005fec:	e1c080e7          	jalr	-484(ra) # 80004e04 <_Znwm>
    80005ff0:	00050493          	mv	s1,a0
    80005ff4:	00000613          	li	a2,0
    80005ff8:	00000597          	auipc	a1,0x0
    80005ffc:	e9c58593          	addi	a1,a1,-356 # 80005e94 <_Z1fPv>
    80006000:	00001097          	auipc	ra,0x1
    80006004:	d58080e7          	jalr	-680(ra) # 80006d58 <_ZN6ThreadC1EPFvPvES0_>
    80006008:	00006797          	auipc	a5,0x6
    8000600c:	c697bc23          	sd	s1,-904(a5) # 8000bc80 <_ZL2t1>
    t2 = new Thread(g, nullptr);
    80006010:	02000513          	li	a0,32
    80006014:	fffff097          	auipc	ra,0xfffff
    80006018:	df0080e7          	jalr	-528(ra) # 80004e04 <_Znwm>
    8000601c:	00050913          	mv	s2,a0
    80006020:	00000613          	li	a2,0
    80006024:	00000597          	auipc	a1,0x0
    80006028:	ef058593          	addi	a1,a1,-272 # 80005f14 <_Z1gPv>
    8000602c:	00001097          	auipc	ra,0x1
    80006030:	d2c080e7          	jalr	-724(ra) # 80006d58 <_ZN6ThreadC1EPFvPvES0_>
    80006034:	00006497          	auipc	s1,0x6
    80006038:	c4c48493          	addi	s1,s1,-948 # 8000bc80 <_ZL2t1>
    8000603c:	0124b423          	sd	s2,8(s1)

    t1->start();
    80006040:	0004b503          	ld	a0,0(s1)
    80006044:	00001097          	auipc	ra,0x1
    80006048:	d9c080e7          	jalr	-612(ra) # 80006de0 <_ZN6Thread5startEv>
    t2->start();
    8000604c:	0084b503          	ld	a0,8(s1)
    80006050:	00001097          	auipc	ra,0x1
    80006054:	d90080e7          	jalr	-624(ra) # 80006de0 <_ZN6Thread5startEv>
    Thread::pair(t1,t2);
    80006058:	0084b583          	ld	a1,8(s1)
    8000605c:	0004b503          	ld	a0,0(s1)
    80006060:	00001097          	auipc	ra,0x1
    80006064:	d50080e7          	jalr	-688(ra) # 80006db0 <_ZN6Thread4pairEPS_S0_>
    Thread::sleep(150);
    80006068:	09600513          	li	a0,150
    8000606c:	00001097          	auipc	ra,0x1
    80006070:	e30080e7          	jalr	-464(ra) # 80006e9c <_ZN6Thread5sleepEm>
}
    80006074:	01813083          	ld	ra,24(sp)
    80006078:	01013403          	ld	s0,16(sp)
    8000607c:	00813483          	ld	s1,8(sp)
    80006080:	00013903          	ld	s2,0(sp)
    80006084:	02010113          	addi	sp,sp,32
    80006088:	00008067          	ret
    8000608c:	00050913          	mv	s2,a0
    t1 = new Thread(f, nullptr);
    80006090:	00048513          	mv	a0,s1
    80006094:	fffff097          	auipc	ra,0xfffff
    80006098:	dd0080e7          	jalr	-560(ra) # 80004e64 <_ZdlPv>
    8000609c:	00090513          	mv	a0,s2
    800060a0:	00007097          	auipc	ra,0x7
    800060a4:	dd8080e7          	jalr	-552(ra) # 8000ce78 <_Unwind_Resume>
    800060a8:	00050493          	mv	s1,a0
    t2 = new Thread(g, nullptr);
    800060ac:	00090513          	mv	a0,s2
    800060b0:	fffff097          	auipc	ra,0xfffff
    800060b4:	db4080e7          	jalr	-588(ra) # 80004e64 <_ZdlPv>
    800060b8:	00048513          	mv	a0,s1
    800060bc:	00007097          	auipc	ra,0x7
    800060c0:	dbc080e7          	jalr	-580(ra) # 8000ce78 <_Unwind_Resume>

00000000800060c4 <_ZN4Test18periodicActivationEv>:
#include "../h/testklasa.hpp"

Test::Test(time_t period) : PeriodicThread(period) {}

void Test::periodicActivation() {
    800060c4:	ff010113          	addi	sp,sp,-16
    800060c8:	00113423          	sd	ra,8(sp)
    800060cc:	00813023          	sd	s0,0(sp)
    800060d0:	01010413          	addi	s0,sp,16
    Console::putc('t');
    800060d4:	07400513          	li	a0,116
    800060d8:	fffff097          	auipc	ra,0xfffff
    800060dc:	8d4080e7          	jalr	-1836(ra) # 800049ac <_ZN7Console4putcEc>
    Console::putc('e');
    800060e0:	06500513          	li	a0,101
    800060e4:	fffff097          	auipc	ra,0xfffff
    800060e8:	8c8080e7          	jalr	-1848(ra) # 800049ac <_ZN7Console4putcEc>
    Console::putc('s');
    800060ec:	07300513          	li	a0,115
    800060f0:	fffff097          	auipc	ra,0xfffff
    800060f4:	8bc080e7          	jalr	-1860(ra) # 800049ac <_ZN7Console4putcEc>
    Console::putc('t');
    800060f8:	07400513          	li	a0,116
    800060fc:	fffff097          	auipc	ra,0xfffff
    80006100:	8b0080e7          	jalr	-1872(ra) # 800049ac <_ZN7Console4putcEc>
    Console::putc('\n');
    80006104:	00a00513          	li	a0,10
    80006108:	fffff097          	auipc	ra,0xfffff
    8000610c:	8a4080e7          	jalr	-1884(ra) # 800049ac <_ZN7Console4putcEc>
}
    80006110:	00813083          	ld	ra,8(sp)
    80006114:	00013403          	ld	s0,0(sp)
    80006118:	01010113          	addi	sp,sp,16
    8000611c:	00008067          	ret

0000000080006120 <_ZN4TestC1Em>:
Test::Test(time_t period) : PeriodicThread(period) {}
    80006120:	fe010113          	addi	sp,sp,-32
    80006124:	00113c23          	sd	ra,24(sp)
    80006128:	00813823          	sd	s0,16(sp)
    8000612c:	00913423          	sd	s1,8(sp)
    80006130:	02010413          	addi	s0,sp,32
    80006134:	00050493          	mv	s1,a0
    80006138:	ffffe097          	auipc	ra,0xffffe
    8000613c:	ed8080e7          	jalr	-296(ra) # 80004010 <_ZN14PeriodicThreadC1Em>
    80006140:	00006797          	auipc	a5,0x6
    80006144:	9b078793          	addi	a5,a5,-1616 # 8000baf0 <_ZTV4Test+0x10>
    80006148:	00f4b023          	sd	a5,0(s1)
    8000614c:	01813083          	ld	ra,24(sp)
    80006150:	01013403          	ld	s0,16(sp)
    80006154:	00813483          	ld	s1,8(sp)
    80006158:	02010113          	addi	sp,sp,32
    8000615c:	00008067          	ret

0000000080006160 <_ZN4TestD1Ev>:
#pragma once
#include "periodicthread.hpp"
#include "console.hpp"

class Test : public PeriodicThread {
    80006160:	ff010113          	addi	sp,sp,-16
    80006164:	00113423          	sd	ra,8(sp)
    80006168:	00813023          	sd	s0,0(sp)
    8000616c:	01010413          	addi	s0,sp,16
    80006170:	00006797          	auipc	a5,0x6
    80006174:	9e87b783          	ld	a5,-1560(a5) # 8000bb58 <_GLOBAL_OFFSET_TABLE_+0x20>
    80006178:	01078793          	addi	a5,a5,16
    8000617c:	00f53023          	sd	a5,0(a0)
    80006180:	00001097          	auipc	ra,0x1
    80006184:	b64080e7          	jalr	-1180(ra) # 80006ce4 <_ZN6ThreadD1Ev>
    80006188:	00813083          	ld	ra,8(sp)
    8000618c:	00013403          	ld	s0,0(sp)
    80006190:	01010113          	addi	sp,sp,16
    80006194:	00008067          	ret

0000000080006198 <_ZN4TestD0Ev>:
    80006198:	fe010113          	addi	sp,sp,-32
    8000619c:	00113c23          	sd	ra,24(sp)
    800061a0:	00813823          	sd	s0,16(sp)
    800061a4:	00913423          	sd	s1,8(sp)
    800061a8:	02010413          	addi	s0,sp,32
    800061ac:	00050493          	mv	s1,a0
    800061b0:	00006797          	auipc	a5,0x6
    800061b4:	9a87b783          	ld	a5,-1624(a5) # 8000bb58 <_GLOBAL_OFFSET_TABLE_+0x20>
    800061b8:	01078793          	addi	a5,a5,16
    800061bc:	00f53023          	sd	a5,0(a0)
    800061c0:	00001097          	auipc	ra,0x1
    800061c4:	b24080e7          	jalr	-1244(ra) # 80006ce4 <_ZN6ThreadD1Ev>
    800061c8:	00048513          	mv	a0,s1
    800061cc:	fffff097          	auipc	ra,0xfffff
    800061d0:	c98080e7          	jalr	-872(ra) # 80004e64 <_ZdlPv>
    800061d4:	01813083          	ld	ra,24(sp)
    800061d8:	01013403          	ld	s0,16(sp)
    800061dc:	00813483          	ld	s1,8(sp)
    800061e0:	02010113          	addi	sp,sp,32
    800061e4:	00008067          	ret

00000000800061e8 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    800061e8:	fe010113          	addi	sp,sp,-32
    800061ec:	00113c23          	sd	ra,24(sp)
    800061f0:	00813823          	sd	s0,16(sp)
    800061f4:	00913423          	sd	s1,8(sp)
    800061f8:	01213023          	sd	s2,0(sp)
    800061fc:	02010413          	addi	s0,sp,32
    80006200:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80006204:	00100793          	li	a5,1
    80006208:	02a7f863          	bgeu	a5,a0,80006238 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    8000620c:	00a00793          	li	a5,10
    80006210:	02f577b3          	remu	a5,a0,a5
    80006214:	02078e63          	beqz	a5,80006250 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80006218:	fff48513          	addi	a0,s1,-1
    8000621c:	00000097          	auipc	ra,0x0
    80006220:	fcc080e7          	jalr	-52(ra) # 800061e8 <_ZL9fibonaccim>
    80006224:	00050913          	mv	s2,a0
    80006228:	ffe48513          	addi	a0,s1,-2
    8000622c:	00000097          	auipc	ra,0x0
    80006230:	fbc080e7          	jalr	-68(ra) # 800061e8 <_ZL9fibonaccim>
    80006234:	00a90533          	add	a0,s2,a0
}
    80006238:	01813083          	ld	ra,24(sp)
    8000623c:	01013403          	ld	s0,16(sp)
    80006240:	00813483          	ld	s1,8(sp)
    80006244:	00013903          	ld	s2,0(sp)
    80006248:	02010113          	addi	sp,sp,32
    8000624c:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80006250:	ffffb097          	auipc	ra,0xffffb
    80006254:	4a8080e7          	jalr	1192(ra) # 800016f8 <_Z15thread_dispatchv>
    80006258:	fc1ff06f          	j	80006218 <_ZL9fibonaccim+0x30>

000000008000625c <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    8000625c:	fe010113          	addi	sp,sp,-32
    80006260:	00113c23          	sd	ra,24(sp)
    80006264:	00813823          	sd	s0,16(sp)
    80006268:	00913423          	sd	s1,8(sp)
    8000626c:	01213023          	sd	s2,0(sp)
    80006270:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80006274:	00a00493          	li	s1,10
    80006278:	0400006f          	j	800062b8 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    8000627c:	00003517          	auipc	a0,0x3
    80006280:	eec50513          	addi	a0,a0,-276 # 80009168 <CONSOLE_STATUS+0x158>
    80006284:	ffffe097          	auipc	ra,0xffffe
    80006288:	e9c080e7          	jalr	-356(ra) # 80004120 <_Z11printStringPKc>
    8000628c:	00000613          	li	a2,0
    80006290:	00a00593          	li	a1,10
    80006294:	00048513          	mv	a0,s1
    80006298:	ffffe097          	auipc	ra,0xffffe
    8000629c:	fe4080e7          	jalr	-28(ra) # 8000427c <_Z8printIntmhh>
    800062a0:	00003517          	auipc	a0,0x3
    800062a4:	0b850513          	addi	a0,a0,184 # 80009358 <CONSOLE_STATUS+0x348>
    800062a8:	ffffe097          	auipc	ra,0xffffe
    800062ac:	e78080e7          	jalr	-392(ra) # 80004120 <_Z11printStringPKc>
    for (; i < 13; i++) {
    800062b0:	0014849b          	addiw	s1,s1,1
    800062b4:	0ff4f493          	andi	s1,s1,255
    800062b8:	00c00793          	li	a5,12
    800062bc:	fc97f0e3          	bgeu	a5,s1,8000627c <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    800062c0:	00003517          	auipc	a0,0x3
    800062c4:	eb050513          	addi	a0,a0,-336 # 80009170 <CONSOLE_STATUS+0x160>
    800062c8:	ffffe097          	auipc	ra,0xffffe
    800062cc:	e58080e7          	jalr	-424(ra) # 80004120 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    800062d0:	00500313          	li	t1,5
    thread_dispatch();
    800062d4:	ffffb097          	auipc	ra,0xffffb
    800062d8:	424080e7          	jalr	1060(ra) # 800016f8 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    800062dc:	01000513          	li	a0,16
    800062e0:	00000097          	auipc	ra,0x0
    800062e4:	f08080e7          	jalr	-248(ra) # 800061e8 <_ZL9fibonaccim>
    800062e8:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    800062ec:	00003517          	auipc	a0,0x3
    800062f0:	e9450513          	addi	a0,a0,-364 # 80009180 <CONSOLE_STATUS+0x170>
    800062f4:	ffffe097          	auipc	ra,0xffffe
    800062f8:	e2c080e7          	jalr	-468(ra) # 80004120 <_Z11printStringPKc>
    800062fc:	00000613          	li	a2,0
    80006300:	00a00593          	li	a1,10
    80006304:	00090513          	mv	a0,s2
    80006308:	ffffe097          	auipc	ra,0xffffe
    8000630c:	f74080e7          	jalr	-140(ra) # 8000427c <_Z8printIntmhh>
    80006310:	00003517          	auipc	a0,0x3
    80006314:	04850513          	addi	a0,a0,72 # 80009358 <CONSOLE_STATUS+0x348>
    80006318:	ffffe097          	auipc	ra,0xffffe
    8000631c:	e08080e7          	jalr	-504(ra) # 80004120 <_Z11printStringPKc>
    80006320:	0400006f          	j	80006360 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80006324:	00003517          	auipc	a0,0x3
    80006328:	e4450513          	addi	a0,a0,-444 # 80009168 <CONSOLE_STATUS+0x158>
    8000632c:	ffffe097          	auipc	ra,0xffffe
    80006330:	df4080e7          	jalr	-524(ra) # 80004120 <_Z11printStringPKc>
    80006334:	00000613          	li	a2,0
    80006338:	00a00593          	li	a1,10
    8000633c:	00048513          	mv	a0,s1
    80006340:	ffffe097          	auipc	ra,0xffffe
    80006344:	f3c080e7          	jalr	-196(ra) # 8000427c <_Z8printIntmhh>
    80006348:	00003517          	auipc	a0,0x3
    8000634c:	01050513          	addi	a0,a0,16 # 80009358 <CONSOLE_STATUS+0x348>
    80006350:	ffffe097          	auipc	ra,0xffffe
    80006354:	dd0080e7          	jalr	-560(ra) # 80004120 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80006358:	0014849b          	addiw	s1,s1,1
    8000635c:	0ff4f493          	andi	s1,s1,255
    80006360:	00f00793          	li	a5,15
    80006364:	fc97f0e3          	bgeu	a5,s1,80006324 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80006368:	00003517          	auipc	a0,0x3
    8000636c:	e2850513          	addi	a0,a0,-472 # 80009190 <CONSOLE_STATUS+0x180>
    80006370:	ffffe097          	auipc	ra,0xffffe
    80006374:	db0080e7          	jalr	-592(ra) # 80004120 <_Z11printStringPKc>
    finishedD = true;
    80006378:	00100793          	li	a5,1
    8000637c:	00006717          	auipc	a4,0x6
    80006380:	90f70a23          	sb	a5,-1772(a4) # 8000bc90 <_ZL9finishedD>
    thread_dispatch();
    80006384:	ffffb097          	auipc	ra,0xffffb
    80006388:	374080e7          	jalr	884(ra) # 800016f8 <_Z15thread_dispatchv>
}
    8000638c:	01813083          	ld	ra,24(sp)
    80006390:	01013403          	ld	s0,16(sp)
    80006394:	00813483          	ld	s1,8(sp)
    80006398:	00013903          	ld	s2,0(sp)
    8000639c:	02010113          	addi	sp,sp,32
    800063a0:	00008067          	ret

00000000800063a4 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    800063a4:	fe010113          	addi	sp,sp,-32
    800063a8:	00113c23          	sd	ra,24(sp)
    800063ac:	00813823          	sd	s0,16(sp)
    800063b0:	00913423          	sd	s1,8(sp)
    800063b4:	01213023          	sd	s2,0(sp)
    800063b8:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    800063bc:	00000493          	li	s1,0
    800063c0:	0400006f          	j	80006400 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    800063c4:	00003517          	auipc	a0,0x3
    800063c8:	d7450513          	addi	a0,a0,-652 # 80009138 <CONSOLE_STATUS+0x128>
    800063cc:	ffffe097          	auipc	ra,0xffffe
    800063d0:	d54080e7          	jalr	-684(ra) # 80004120 <_Z11printStringPKc>
    800063d4:	00000613          	li	a2,0
    800063d8:	00a00593          	li	a1,10
    800063dc:	00048513          	mv	a0,s1
    800063e0:	ffffe097          	auipc	ra,0xffffe
    800063e4:	e9c080e7          	jalr	-356(ra) # 8000427c <_Z8printIntmhh>
    800063e8:	00003517          	auipc	a0,0x3
    800063ec:	f7050513          	addi	a0,a0,-144 # 80009358 <CONSOLE_STATUS+0x348>
    800063f0:	ffffe097          	auipc	ra,0xffffe
    800063f4:	d30080e7          	jalr	-720(ra) # 80004120 <_Z11printStringPKc>
    for (; i < 3; i++) {
    800063f8:	0014849b          	addiw	s1,s1,1
    800063fc:	0ff4f493          	andi	s1,s1,255
    80006400:	00200793          	li	a5,2
    80006404:	fc97f0e3          	bgeu	a5,s1,800063c4 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    80006408:	00003517          	auipc	a0,0x3
    8000640c:	d3850513          	addi	a0,a0,-712 # 80009140 <CONSOLE_STATUS+0x130>
    80006410:	ffffe097          	auipc	ra,0xffffe
    80006414:	d10080e7          	jalr	-752(ra) # 80004120 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80006418:	00700313          	li	t1,7
    thread_dispatch();
    8000641c:	ffffb097          	auipc	ra,0xffffb
    80006420:	2dc080e7          	jalr	732(ra) # 800016f8 <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80006424:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80006428:	00003517          	auipc	a0,0x3
    8000642c:	d2850513          	addi	a0,a0,-728 # 80009150 <CONSOLE_STATUS+0x140>
    80006430:	ffffe097          	auipc	ra,0xffffe
    80006434:	cf0080e7          	jalr	-784(ra) # 80004120 <_Z11printStringPKc>
    80006438:	00000613          	li	a2,0
    8000643c:	00a00593          	li	a1,10
    80006440:	00090513          	mv	a0,s2
    80006444:	ffffe097          	auipc	ra,0xffffe
    80006448:	e38080e7          	jalr	-456(ra) # 8000427c <_Z8printIntmhh>
    8000644c:	00003517          	auipc	a0,0x3
    80006450:	f0c50513          	addi	a0,a0,-244 # 80009358 <CONSOLE_STATUS+0x348>
    80006454:	ffffe097          	auipc	ra,0xffffe
    80006458:	ccc080e7          	jalr	-820(ra) # 80004120 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    8000645c:	00c00513          	li	a0,12
    80006460:	00000097          	auipc	ra,0x0
    80006464:	d88080e7          	jalr	-632(ra) # 800061e8 <_ZL9fibonaccim>
    80006468:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    8000646c:	00003517          	auipc	a0,0x3
    80006470:	cec50513          	addi	a0,a0,-788 # 80009158 <CONSOLE_STATUS+0x148>
    80006474:	ffffe097          	auipc	ra,0xffffe
    80006478:	cac080e7          	jalr	-852(ra) # 80004120 <_Z11printStringPKc>
    8000647c:	00000613          	li	a2,0
    80006480:	00a00593          	li	a1,10
    80006484:	00090513          	mv	a0,s2
    80006488:	ffffe097          	auipc	ra,0xffffe
    8000648c:	df4080e7          	jalr	-524(ra) # 8000427c <_Z8printIntmhh>
    80006490:	00003517          	auipc	a0,0x3
    80006494:	ec850513          	addi	a0,a0,-312 # 80009358 <CONSOLE_STATUS+0x348>
    80006498:	ffffe097          	auipc	ra,0xffffe
    8000649c:	c88080e7          	jalr	-888(ra) # 80004120 <_Z11printStringPKc>
    800064a0:	0400006f          	j	800064e0 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    800064a4:	00003517          	auipc	a0,0x3
    800064a8:	c9450513          	addi	a0,a0,-876 # 80009138 <CONSOLE_STATUS+0x128>
    800064ac:	ffffe097          	auipc	ra,0xffffe
    800064b0:	c74080e7          	jalr	-908(ra) # 80004120 <_Z11printStringPKc>
    800064b4:	00000613          	li	a2,0
    800064b8:	00a00593          	li	a1,10
    800064bc:	00048513          	mv	a0,s1
    800064c0:	ffffe097          	auipc	ra,0xffffe
    800064c4:	dbc080e7          	jalr	-580(ra) # 8000427c <_Z8printIntmhh>
    800064c8:	00003517          	auipc	a0,0x3
    800064cc:	e9050513          	addi	a0,a0,-368 # 80009358 <CONSOLE_STATUS+0x348>
    800064d0:	ffffe097          	auipc	ra,0xffffe
    800064d4:	c50080e7          	jalr	-944(ra) # 80004120 <_Z11printStringPKc>
    for (; i < 6; i++) {
    800064d8:	0014849b          	addiw	s1,s1,1
    800064dc:	0ff4f493          	andi	s1,s1,255
    800064e0:	00500793          	li	a5,5
    800064e4:	fc97f0e3          	bgeu	a5,s1,800064a4 <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    800064e8:	00003517          	auipc	a0,0x3
    800064ec:	c2850513          	addi	a0,a0,-984 # 80009110 <CONSOLE_STATUS+0x100>
    800064f0:	ffffe097          	auipc	ra,0xffffe
    800064f4:	c30080e7          	jalr	-976(ra) # 80004120 <_Z11printStringPKc>
    finishedC = true;
    800064f8:	00100793          	li	a5,1
    800064fc:	00005717          	auipc	a4,0x5
    80006500:	78f70aa3          	sb	a5,1941(a4) # 8000bc91 <_ZL9finishedC>
    thread_dispatch();
    80006504:	ffffb097          	auipc	ra,0xffffb
    80006508:	1f4080e7          	jalr	500(ra) # 800016f8 <_Z15thread_dispatchv>
}
    8000650c:	01813083          	ld	ra,24(sp)
    80006510:	01013403          	ld	s0,16(sp)
    80006514:	00813483          	ld	s1,8(sp)
    80006518:	00013903          	ld	s2,0(sp)
    8000651c:	02010113          	addi	sp,sp,32
    80006520:	00008067          	ret

0000000080006524 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    80006524:	fe010113          	addi	sp,sp,-32
    80006528:	00113c23          	sd	ra,24(sp)
    8000652c:	00813823          	sd	s0,16(sp)
    80006530:	00913423          	sd	s1,8(sp)
    80006534:	01213023          	sd	s2,0(sp)
    80006538:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    8000653c:	00000913          	li	s2,0
    80006540:	0400006f          	j	80006580 <_ZL11workerBodyBPv+0x5c>
            thread_dispatch();
    80006544:	ffffb097          	auipc	ra,0xffffb
    80006548:	1b4080e7          	jalr	436(ra) # 800016f8 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    8000654c:	00148493          	addi	s1,s1,1
    80006550:	000027b7          	lui	a5,0x2
    80006554:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80006558:	0097ee63          	bltu	a5,s1,80006574 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    8000655c:	00000713          	li	a4,0
    80006560:	000077b7          	lui	a5,0x7
    80006564:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80006568:	fce7eee3          	bltu	a5,a4,80006544 <_ZL11workerBodyBPv+0x20>
    8000656c:	00170713          	addi	a4,a4,1
    80006570:	ff1ff06f          	j	80006560 <_ZL11workerBodyBPv+0x3c>
        if (i == 10) {
    80006574:	00a00793          	li	a5,10
    80006578:	04f90663          	beq	s2,a5,800065c4 <_ZL11workerBodyBPv+0xa0>
    for (uint64 i = 0; i < 16; i++) {
    8000657c:	00190913          	addi	s2,s2,1
    80006580:	00f00793          	li	a5,15
    80006584:	0527e463          	bltu	a5,s2,800065cc <_ZL11workerBodyBPv+0xa8>
        printString("B: i="); printInt(i); printString("\n");
    80006588:	00003517          	auipc	a0,0x3
    8000658c:	b9850513          	addi	a0,a0,-1128 # 80009120 <CONSOLE_STATUS+0x110>
    80006590:	ffffe097          	auipc	ra,0xffffe
    80006594:	b90080e7          	jalr	-1136(ra) # 80004120 <_Z11printStringPKc>
    80006598:	00000613          	li	a2,0
    8000659c:	00a00593          	li	a1,10
    800065a0:	00090513          	mv	a0,s2
    800065a4:	ffffe097          	auipc	ra,0xffffe
    800065a8:	cd8080e7          	jalr	-808(ra) # 8000427c <_Z8printIntmhh>
    800065ac:	00003517          	auipc	a0,0x3
    800065b0:	dac50513          	addi	a0,a0,-596 # 80009358 <CONSOLE_STATUS+0x348>
    800065b4:	ffffe097          	auipc	ra,0xffffe
    800065b8:	b6c080e7          	jalr	-1172(ra) # 80004120 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800065bc:	00000493          	li	s1,0
    800065c0:	f91ff06f          	j	80006550 <_ZL11workerBodyBPv+0x2c>
            asm volatile("csrr t6, sepc");
    800065c4:	14102ff3          	csrr	t6,sepc
    800065c8:	fb5ff06f          	j	8000657c <_ZL11workerBodyBPv+0x58>
    printString("B finished!\n");
    800065cc:	00003517          	auipc	a0,0x3
    800065d0:	b5c50513          	addi	a0,a0,-1188 # 80009128 <CONSOLE_STATUS+0x118>
    800065d4:	ffffe097          	auipc	ra,0xffffe
    800065d8:	b4c080e7          	jalr	-1204(ra) # 80004120 <_Z11printStringPKc>
    finishedB = true;
    800065dc:	00100793          	li	a5,1
    800065e0:	00005717          	auipc	a4,0x5
    800065e4:	6af70923          	sb	a5,1714(a4) # 8000bc92 <_ZL9finishedB>
    thread_dispatch();
    800065e8:	ffffb097          	auipc	ra,0xffffb
    800065ec:	110080e7          	jalr	272(ra) # 800016f8 <_Z15thread_dispatchv>
}
    800065f0:	01813083          	ld	ra,24(sp)
    800065f4:	01013403          	ld	s0,16(sp)
    800065f8:	00813483          	ld	s1,8(sp)
    800065fc:	00013903          	ld	s2,0(sp)
    80006600:	02010113          	addi	sp,sp,32
    80006604:	00008067          	ret

0000000080006608 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    80006608:	fe010113          	addi	sp,sp,-32
    8000660c:	00113c23          	sd	ra,24(sp)
    80006610:	00813823          	sd	s0,16(sp)
    80006614:	00913423          	sd	s1,8(sp)
    80006618:	01213023          	sd	s2,0(sp)
    8000661c:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80006620:	00000913          	li	s2,0
    80006624:	0380006f          	j	8000665c <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    80006628:	ffffb097          	auipc	ra,0xffffb
    8000662c:	0d0080e7          	jalr	208(ra) # 800016f8 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80006630:	00148493          	addi	s1,s1,1
    80006634:	000027b7          	lui	a5,0x2
    80006638:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    8000663c:	0097ee63          	bltu	a5,s1,80006658 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80006640:	00000713          	li	a4,0
    80006644:	000077b7          	lui	a5,0x7
    80006648:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    8000664c:	fce7eee3          	bltu	a5,a4,80006628 <_ZL11workerBodyAPv+0x20>
    80006650:	00170713          	addi	a4,a4,1
    80006654:	ff1ff06f          	j	80006644 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80006658:	00190913          	addi	s2,s2,1
    8000665c:	00900793          	li	a5,9
    80006660:	0527e063          	bltu	a5,s2,800066a0 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80006664:	00003517          	auipc	a0,0x3
    80006668:	aa450513          	addi	a0,a0,-1372 # 80009108 <CONSOLE_STATUS+0xf8>
    8000666c:	ffffe097          	auipc	ra,0xffffe
    80006670:	ab4080e7          	jalr	-1356(ra) # 80004120 <_Z11printStringPKc>
    80006674:	00000613          	li	a2,0
    80006678:	00a00593          	li	a1,10
    8000667c:	00090513          	mv	a0,s2
    80006680:	ffffe097          	auipc	ra,0xffffe
    80006684:	bfc080e7          	jalr	-1028(ra) # 8000427c <_Z8printIntmhh>
    80006688:	00003517          	auipc	a0,0x3
    8000668c:	cd050513          	addi	a0,a0,-816 # 80009358 <CONSOLE_STATUS+0x348>
    80006690:	ffffe097          	auipc	ra,0xffffe
    80006694:	a90080e7          	jalr	-1392(ra) # 80004120 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80006698:	00000493          	li	s1,0
    8000669c:	f99ff06f          	j	80006634 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    800066a0:	00003517          	auipc	a0,0x3
    800066a4:	a7050513          	addi	a0,a0,-1424 # 80009110 <CONSOLE_STATUS+0x100>
    800066a8:	ffffe097          	auipc	ra,0xffffe
    800066ac:	a78080e7          	jalr	-1416(ra) # 80004120 <_Z11printStringPKc>
    finishedA = true;
    800066b0:	00100793          	li	a5,1
    800066b4:	00005717          	auipc	a4,0x5
    800066b8:	5cf70fa3          	sb	a5,1503(a4) # 8000bc93 <_ZL9finishedA>
}
    800066bc:	01813083          	ld	ra,24(sp)
    800066c0:	01013403          	ld	s0,16(sp)
    800066c4:	00813483          	ld	s1,8(sp)
    800066c8:	00013903          	ld	s2,0(sp)
    800066cc:	02010113          	addi	sp,sp,32
    800066d0:	00008067          	ret

00000000800066d4 <_Z16System_Mode_testv>:


void System_Mode_test() {
    800066d4:	fd010113          	addi	sp,sp,-48
    800066d8:	02113423          	sd	ra,40(sp)
    800066dc:	02813023          	sd	s0,32(sp)
    800066e0:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    800066e4:	00000613          	li	a2,0
    800066e8:	00000597          	auipc	a1,0x0
    800066ec:	f2058593          	addi	a1,a1,-224 # 80006608 <_ZL11workerBodyAPv>
    800066f0:	fd040513          	addi	a0,s0,-48
    800066f4:	ffffb097          	auipc	ra,0xffffb
    800066f8:	f60080e7          	jalr	-160(ra) # 80001654 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadA created\n");
    800066fc:	00003517          	auipc	a0,0x3
    80006700:	aa450513          	addi	a0,a0,-1372 # 800091a0 <CONSOLE_STATUS+0x190>
    80006704:	ffffe097          	auipc	ra,0xffffe
    80006708:	a1c080e7          	jalr	-1508(ra) # 80004120 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    8000670c:	00000613          	li	a2,0
    80006710:	00000597          	auipc	a1,0x0
    80006714:	e1458593          	addi	a1,a1,-492 # 80006524 <_ZL11workerBodyBPv>
    80006718:	fd840513          	addi	a0,s0,-40
    8000671c:	ffffb097          	auipc	ra,0xffffb
    80006720:	f38080e7          	jalr	-200(ra) # 80001654 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadB created\n");
    80006724:	00003517          	auipc	a0,0x3
    80006728:	a9450513          	addi	a0,a0,-1388 # 800091b8 <CONSOLE_STATUS+0x1a8>
    8000672c:	ffffe097          	auipc	ra,0xffffe
    80006730:	9f4080e7          	jalr	-1548(ra) # 80004120 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80006734:	00000613          	li	a2,0
    80006738:	00000597          	auipc	a1,0x0
    8000673c:	c6c58593          	addi	a1,a1,-916 # 800063a4 <_ZL11workerBodyCPv>
    80006740:	fe040513          	addi	a0,s0,-32
    80006744:	ffffb097          	auipc	ra,0xffffb
    80006748:	f10080e7          	jalr	-240(ra) # 80001654 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadC created\n");
    8000674c:	00003517          	auipc	a0,0x3
    80006750:	a8450513          	addi	a0,a0,-1404 # 800091d0 <CONSOLE_STATUS+0x1c0>
    80006754:	ffffe097          	auipc	ra,0xffffe
    80006758:	9cc080e7          	jalr	-1588(ra) # 80004120 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    8000675c:	00000613          	li	a2,0
    80006760:	00000597          	auipc	a1,0x0
    80006764:	afc58593          	addi	a1,a1,-1284 # 8000625c <_ZL11workerBodyDPv>
    80006768:	fe840513          	addi	a0,s0,-24
    8000676c:	ffffb097          	auipc	ra,0xffffb
    80006770:	ee8080e7          	jalr	-280(ra) # 80001654 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadD created\n");
    80006774:	00003517          	auipc	a0,0x3
    80006778:	a7450513          	addi	a0,a0,-1420 # 800091e8 <CONSOLE_STATUS+0x1d8>
    8000677c:	ffffe097          	auipc	ra,0xffffe
    80006780:	9a4080e7          	jalr	-1628(ra) # 80004120 <_Z11printStringPKc>
    80006784:	00c0006f          	j	80006790 <_Z16System_Mode_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80006788:	ffffb097          	auipc	ra,0xffffb
    8000678c:	f70080e7          	jalr	-144(ra) # 800016f8 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80006790:	00005797          	auipc	a5,0x5
    80006794:	5037c783          	lbu	a5,1283(a5) # 8000bc93 <_ZL9finishedA>
    80006798:	fe0788e3          	beqz	a5,80006788 <_Z16System_Mode_testv+0xb4>
    8000679c:	00005797          	auipc	a5,0x5
    800067a0:	4f67c783          	lbu	a5,1270(a5) # 8000bc92 <_ZL9finishedB>
    800067a4:	fe0782e3          	beqz	a5,80006788 <_Z16System_Mode_testv+0xb4>
    800067a8:	00005797          	auipc	a5,0x5
    800067ac:	4e97c783          	lbu	a5,1257(a5) # 8000bc91 <_ZL9finishedC>
    800067b0:	fc078ce3          	beqz	a5,80006788 <_Z16System_Mode_testv+0xb4>
    800067b4:	00005797          	auipc	a5,0x5
    800067b8:	4dc7c783          	lbu	a5,1244(a5) # 8000bc90 <_ZL9finishedD>
    800067bc:	fc0786e3          	beqz	a5,80006788 <_Z16System_Mode_testv+0xb4>
    }

}
    800067c0:	02813083          	ld	ra,40(sp)
    800067c4:	02013403          	ld	s0,32(sp)
    800067c8:	03010113          	addi	sp,sp,48
    800067cc:	00008067          	ret

00000000800067d0 <_ZN6BufferC1Ei>:
#include "../h/buffer.hpp"

Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    800067d0:	fe010113          	addi	sp,sp,-32
    800067d4:	00113c23          	sd	ra,24(sp)
    800067d8:	00813823          	sd	s0,16(sp)
    800067dc:	00913423          	sd	s1,8(sp)
    800067e0:	01213023          	sd	s2,0(sp)
    800067e4:	02010413          	addi	s0,sp,32
    800067e8:	00050493          	mv	s1,a0
    800067ec:	00058913          	mv	s2,a1
    800067f0:	0015879b          	addiw	a5,a1,1
    800067f4:	0007851b          	sext.w	a0,a5
    800067f8:	00f4a023          	sw	a5,0(s1)
    800067fc:	0004a823          	sw	zero,16(s1)
    80006800:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80006804:	00251513          	slli	a0,a0,0x2
    80006808:	ffffb097          	auipc	ra,0xffffb
    8000680c:	dd8080e7          	jalr	-552(ra) # 800015e0 <_Z9mem_allocm>
    80006810:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    80006814:	00000593          	li	a1,0
    80006818:	02048513          	addi	a0,s1,32
    8000681c:	ffffb097          	auipc	ra,0xffffb
    80006820:	f00080e7          	jalr	-256(ra) # 8000171c <_Z8sem_openPP4_semj>
    sem_open(&spaceAvailable, _cap);
    80006824:	00090593          	mv	a1,s2
    80006828:	01848513          	addi	a0,s1,24
    8000682c:	ffffb097          	auipc	ra,0xffffb
    80006830:	ef0080e7          	jalr	-272(ra) # 8000171c <_Z8sem_openPP4_semj>
    sem_open(&mutexHead, 1);
    80006834:	00100593          	li	a1,1
    80006838:	02848513          	addi	a0,s1,40
    8000683c:	ffffb097          	auipc	ra,0xffffb
    80006840:	ee0080e7          	jalr	-288(ra) # 8000171c <_Z8sem_openPP4_semj>
    sem_open(&mutexTail, 1);
    80006844:	00100593          	li	a1,1
    80006848:	03048513          	addi	a0,s1,48
    8000684c:	ffffb097          	auipc	ra,0xffffb
    80006850:	ed0080e7          	jalr	-304(ra) # 8000171c <_Z8sem_openPP4_semj>
}
    80006854:	01813083          	ld	ra,24(sp)
    80006858:	01013403          	ld	s0,16(sp)
    8000685c:	00813483          	ld	s1,8(sp)
    80006860:	00013903          	ld	s2,0(sp)
    80006864:	02010113          	addi	sp,sp,32
    80006868:	00008067          	ret

000000008000686c <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    8000686c:	fe010113          	addi	sp,sp,-32
    80006870:	00113c23          	sd	ra,24(sp)
    80006874:	00813823          	sd	s0,16(sp)
    80006878:	00913423          	sd	s1,8(sp)
    8000687c:	01213023          	sd	s2,0(sp)
    80006880:	02010413          	addi	s0,sp,32
    80006884:	00050493          	mv	s1,a0
    80006888:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    8000688c:	01853503          	ld	a0,24(a0)
    80006890:	ffffb097          	auipc	ra,0xffffb
    80006894:	f0c080e7          	jalr	-244(ra) # 8000179c <_Z8sem_waitP4_sem>

    sem_wait(mutexTail);
    80006898:	0304b503          	ld	a0,48(s1)
    8000689c:	ffffb097          	auipc	ra,0xffffb
    800068a0:	f00080e7          	jalr	-256(ra) # 8000179c <_Z8sem_waitP4_sem>
    buffer[tail] = val;
    800068a4:	0084b783          	ld	a5,8(s1)
    800068a8:	0144a703          	lw	a4,20(s1)
    800068ac:	00271713          	slli	a4,a4,0x2
    800068b0:	00e787b3          	add	a5,a5,a4
    800068b4:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    800068b8:	0144a783          	lw	a5,20(s1)
    800068bc:	0017879b          	addiw	a5,a5,1
    800068c0:	0004a703          	lw	a4,0(s1)
    800068c4:	02e7e7bb          	remw	a5,a5,a4
    800068c8:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    800068cc:	0304b503          	ld	a0,48(s1)
    800068d0:	ffffb097          	auipc	ra,0xffffb
    800068d4:	f08080e7          	jalr	-248(ra) # 800017d8 <_Z10sem_signalP4_sem>

    sem_signal(itemAvailable);
    800068d8:	0204b503          	ld	a0,32(s1)
    800068dc:	ffffb097          	auipc	ra,0xffffb
    800068e0:	efc080e7          	jalr	-260(ra) # 800017d8 <_Z10sem_signalP4_sem>

}
    800068e4:	01813083          	ld	ra,24(sp)
    800068e8:	01013403          	ld	s0,16(sp)
    800068ec:	00813483          	ld	s1,8(sp)
    800068f0:	00013903          	ld	s2,0(sp)
    800068f4:	02010113          	addi	sp,sp,32
    800068f8:	00008067          	ret

00000000800068fc <_ZN6Buffer3getEv>:

int Buffer::get() {
    800068fc:	fe010113          	addi	sp,sp,-32
    80006900:	00113c23          	sd	ra,24(sp)
    80006904:	00813823          	sd	s0,16(sp)
    80006908:	00913423          	sd	s1,8(sp)
    8000690c:	01213023          	sd	s2,0(sp)
    80006910:	02010413          	addi	s0,sp,32
    80006914:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    80006918:	02053503          	ld	a0,32(a0)
    8000691c:	ffffb097          	auipc	ra,0xffffb
    80006920:	e80080e7          	jalr	-384(ra) # 8000179c <_Z8sem_waitP4_sem>

    sem_wait(mutexHead);
    80006924:	0284b503          	ld	a0,40(s1)
    80006928:	ffffb097          	auipc	ra,0xffffb
    8000692c:	e74080e7          	jalr	-396(ra) # 8000179c <_Z8sem_waitP4_sem>

    int ret = buffer[head];
    80006930:	0084b703          	ld	a4,8(s1)
    80006934:	0104a783          	lw	a5,16(s1)
    80006938:	00279693          	slli	a3,a5,0x2
    8000693c:	00d70733          	add	a4,a4,a3
    80006940:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80006944:	0017879b          	addiw	a5,a5,1
    80006948:	0004a703          	lw	a4,0(s1)
    8000694c:	02e7e7bb          	remw	a5,a5,a4
    80006950:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    80006954:	0284b503          	ld	a0,40(s1)
    80006958:	ffffb097          	auipc	ra,0xffffb
    8000695c:	e80080e7          	jalr	-384(ra) # 800017d8 <_Z10sem_signalP4_sem>

    sem_signal(spaceAvailable);
    80006960:	0184b503          	ld	a0,24(s1)
    80006964:	ffffb097          	auipc	ra,0xffffb
    80006968:	e74080e7          	jalr	-396(ra) # 800017d8 <_Z10sem_signalP4_sem>

    return ret;
}
    8000696c:	00090513          	mv	a0,s2
    80006970:	01813083          	ld	ra,24(sp)
    80006974:	01013403          	ld	s0,16(sp)
    80006978:	00813483          	ld	s1,8(sp)
    8000697c:	00013903          	ld	s2,0(sp)
    80006980:	02010113          	addi	sp,sp,32
    80006984:	00008067          	ret

0000000080006988 <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    80006988:	fe010113          	addi	sp,sp,-32
    8000698c:	00113c23          	sd	ra,24(sp)
    80006990:	00813823          	sd	s0,16(sp)
    80006994:	00913423          	sd	s1,8(sp)
    80006998:	01213023          	sd	s2,0(sp)
    8000699c:	02010413          	addi	s0,sp,32
    800069a0:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    800069a4:	02853503          	ld	a0,40(a0)
    800069a8:	ffffb097          	auipc	ra,0xffffb
    800069ac:	df4080e7          	jalr	-524(ra) # 8000179c <_Z8sem_waitP4_sem>
    sem_wait(mutexTail);
    800069b0:	0304b503          	ld	a0,48(s1)
    800069b4:	ffffb097          	auipc	ra,0xffffb
    800069b8:	de8080e7          	jalr	-536(ra) # 8000179c <_Z8sem_waitP4_sem>

    if (tail >= head) {
    800069bc:	0144a783          	lw	a5,20(s1)
    800069c0:	0104a903          	lw	s2,16(s1)
    800069c4:	0327ce63          	blt	a5,s2,80006a00 <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    800069c8:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    800069cc:	0304b503          	ld	a0,48(s1)
    800069d0:	ffffb097          	auipc	ra,0xffffb
    800069d4:	e08080e7          	jalr	-504(ra) # 800017d8 <_Z10sem_signalP4_sem>
    sem_signal(mutexHead);
    800069d8:	0284b503          	ld	a0,40(s1)
    800069dc:	ffffb097          	auipc	ra,0xffffb
    800069e0:	dfc080e7          	jalr	-516(ra) # 800017d8 <_Z10sem_signalP4_sem>

    return ret;
}
    800069e4:	00090513          	mv	a0,s2
    800069e8:	01813083          	ld	ra,24(sp)
    800069ec:	01013403          	ld	s0,16(sp)
    800069f0:	00813483          	ld	s1,8(sp)
    800069f4:	00013903          	ld	s2,0(sp)
    800069f8:	02010113          	addi	sp,sp,32
    800069fc:	00008067          	ret
        ret = cap - head + tail;
    80006a00:	0004a703          	lw	a4,0(s1)
    80006a04:	4127093b          	subw	s2,a4,s2
    80006a08:	00f9093b          	addw	s2,s2,a5
    80006a0c:	fc1ff06f          	j	800069cc <_ZN6Buffer6getCntEv+0x44>

0000000080006a10 <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    80006a10:	fe010113          	addi	sp,sp,-32
    80006a14:	00113c23          	sd	ra,24(sp)
    80006a18:	00813823          	sd	s0,16(sp)
    80006a1c:	00913423          	sd	s1,8(sp)
    80006a20:	02010413          	addi	s0,sp,32
    80006a24:	00050493          	mv	s1,a0
    putc('\n');
    80006a28:	00a00513          	li	a0,10
    80006a2c:	ffffb097          	auipc	ra,0xffffb
    80006a30:	e1c080e7          	jalr	-484(ra) # 80001848 <_Z4putcc>
    printString("Buffer deleted!\n");
    80006a34:	00002517          	auipc	a0,0x2
    80006a38:	7cc50513          	addi	a0,a0,1996 # 80009200 <CONSOLE_STATUS+0x1f0>
    80006a3c:	ffffd097          	auipc	ra,0xffffd
    80006a40:	6e4080e7          	jalr	1764(ra) # 80004120 <_Z11printStringPKc>
    while (getCnt() > 0) {
    80006a44:	00048513          	mv	a0,s1
    80006a48:	00000097          	auipc	ra,0x0
    80006a4c:	f40080e7          	jalr	-192(ra) # 80006988 <_ZN6Buffer6getCntEv>
    80006a50:	02a05c63          	blez	a0,80006a88 <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    80006a54:	0084b783          	ld	a5,8(s1)
    80006a58:	0104a703          	lw	a4,16(s1)
    80006a5c:	00271713          	slli	a4,a4,0x2
    80006a60:	00e787b3          	add	a5,a5,a4
        putc(ch);
    80006a64:	0007c503          	lbu	a0,0(a5)
    80006a68:	ffffb097          	auipc	ra,0xffffb
    80006a6c:	de0080e7          	jalr	-544(ra) # 80001848 <_Z4putcc>
        head = (head + 1) % cap;
    80006a70:	0104a783          	lw	a5,16(s1)
    80006a74:	0017879b          	addiw	a5,a5,1
    80006a78:	0004a703          	lw	a4,0(s1)
    80006a7c:	02e7e7bb          	remw	a5,a5,a4
    80006a80:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    80006a84:	fc1ff06f          	j	80006a44 <_ZN6BufferD1Ev+0x34>
    putc('!');
    80006a88:	02100513          	li	a0,33
    80006a8c:	ffffb097          	auipc	ra,0xffffb
    80006a90:	dbc080e7          	jalr	-580(ra) # 80001848 <_Z4putcc>
    putc('\n');
    80006a94:	00a00513          	li	a0,10
    80006a98:	ffffb097          	auipc	ra,0xffffb
    80006a9c:	db0080e7          	jalr	-592(ra) # 80001848 <_Z4putcc>
    mem_free(buffer);
    80006aa0:	0084b503          	ld	a0,8(s1)
    80006aa4:	ffffb097          	auipc	ra,0xffffb
    80006aa8:	b74080e7          	jalr	-1164(ra) # 80001618 <_Z8mem_freePv>
    sem_close(itemAvailable);
    80006aac:	0204b503          	ld	a0,32(s1)
    80006ab0:	ffffb097          	auipc	ra,0xffffb
    80006ab4:	cb0080e7          	jalr	-848(ra) # 80001760 <_Z9sem_closeP4_sem>
    sem_close(spaceAvailable);
    80006ab8:	0184b503          	ld	a0,24(s1)
    80006abc:	ffffb097          	auipc	ra,0xffffb
    80006ac0:	ca4080e7          	jalr	-860(ra) # 80001760 <_Z9sem_closeP4_sem>
    sem_close(mutexTail);
    80006ac4:	0304b503          	ld	a0,48(s1)
    80006ac8:	ffffb097          	auipc	ra,0xffffb
    80006acc:	c98080e7          	jalr	-872(ra) # 80001760 <_Z9sem_closeP4_sem>
    sem_close(mutexHead);
    80006ad0:	0284b503          	ld	a0,40(s1)
    80006ad4:	ffffb097          	auipc	ra,0xffffb
    80006ad8:	c8c080e7          	jalr	-884(ra) # 80001760 <_Z9sem_closeP4_sem>
}
    80006adc:	01813083          	ld	ra,24(sp)
    80006ae0:	01013403          	ld	s0,16(sp)
    80006ae4:	00813483          	ld	s1,8(sp)
    80006ae8:	02010113          	addi	sp,sp,32
    80006aec:	00008067          	ret

0000000080006af0 <_Z12init_consolev>:

static char rx_buffer[BUFFER_SIZE];
static volatile int rx_head = 0, rx_tail = 0;
SemKernel* sem_rx = nullptr;

void init_console() {
    80006af0:	fe010113          	addi	sp,sp,-32
    80006af4:	00113c23          	sd	ra,24(sp)
    80006af8:	00813823          	sd	s0,16(sp)
    80006afc:	00913423          	sd	s1,8(sp)
    80006b00:	01213023          	sd	s2,0(sp)
    80006b04:	02010413          	addi	s0,sp,32
    sem_rx = new SemKernel(0);
    80006b08:	01800513          	li	a0,24
    80006b0c:	ffffe097          	auipc	ra,0xffffe
    80006b10:	2f8080e7          	jalr	760(ra) # 80004e04 <_Znwm>
    80006b14:	00050493          	mv	s1,a0
    80006b18:	00000593          	li	a1,0
    80006b1c:	fffff097          	auipc	ra,0xfffff
    80006b20:	cac080e7          	jalr	-852(ra) # 800057c8 <_ZN9SemKernelC1Ei>
    80006b24:	00005797          	auipc	a5,0x5
    80006b28:	1697ba23          	sd	s1,372(a5) # 8000bc98 <sem_rx>
}
    80006b2c:	01813083          	ld	ra,24(sp)
    80006b30:	01013403          	ld	s0,16(sp)
    80006b34:	00813483          	ld	s1,8(sp)
    80006b38:	00013903          	ld	s2,0(sp)
    80006b3c:	02010113          	addi	sp,sp,32
    80006b40:	00008067          	ret
    80006b44:	00050913          	mv	s2,a0
    sem_rx = new SemKernel(0);
    80006b48:	00048513          	mv	a0,s1
    80006b4c:	ffffe097          	auipc	ra,0xffffe
    80006b50:	318080e7          	jalr	792(ra) # 80004e64 <_ZdlPv>
    80006b54:	00090513          	mv	a0,s2
    80006b58:	00006097          	auipc	ra,0x6
    80006b5c:	320080e7          	jalr	800(ra) # 8000ce78 <_Unwind_Resume>

0000000080006b60 <_Z22kernel_console_handlerv>:

void kernel_console_handler() {
    80006b60:	fe010113          	addi	sp,sp,-32
    80006b64:	00113c23          	sd	ra,24(sp)
    80006b68:	00813823          	sd	s0,16(sp)
    80006b6c:	00913423          	sd	s1,8(sp)
    80006b70:	01213023          	sd	s2,0(sp)
    80006b74:	02010413          	addi	s0,sp,32
    volatile uint8* status_reg = (volatile uint8*)CONSOLE_STATUS;
    80006b78:	00005797          	auipc	a5,0x5
    80006b7c:	fd07b783          	ld	a5,-48(a5) # 8000bb48 <_GLOBAL_OFFSET_TABLE_+0x10>
    80006b80:	0007b483          	ld	s1,0(a5)
    volatile uint8* rx_data_reg = (volatile uint8*)CONSOLE_RX_DATA;
    80006b84:	00005797          	auipc	a5,0x5
    80006b88:	fbc7b783          	ld	a5,-68(a5) # 8000bb40 <_GLOBAL_OFFSET_TABLE_+0x8>
    80006b8c:	0007b903          	ld	s2,0(a5)

    // Čitamo sve karaktere koji su pristigli u UART fifo
    while (*status_reg & 0x01) {
    80006b90:	0004c783          	lbu	a5,0(s1)
    80006b94:	0017f793          	andi	a5,a5,1
    80006b98:	06078063          	beqz	a5,80006bf8 <_Z22kernel_console_handlerv+0x98>
        char c = (char)(*rx_data_reg);
    80006b9c:	00094783          	lbu	a5,0(s2)
    80006ba0:	0ff7f693          	andi	a3,a5,255

        int next_tail = (rx_tail + 1) % BUFFER_SIZE;
    80006ba4:	00005617          	auipc	a2,0x5
    80006ba8:	0f460613          	addi	a2,a2,244 # 8000bc98 <sem_rx>
    80006bac:	00862783          	lw	a5,8(a2)
    80006bb0:	0017879b          	addiw	a5,a5,1
    80006bb4:	41f7d71b          	sraiw	a4,a5,0x1f
    80006bb8:	0187571b          	srliw	a4,a4,0x18
    80006bbc:	00e787bb          	addw	a5,a5,a4
    80006bc0:	0ff7f793          	andi	a5,a5,255
    80006bc4:	40e787bb          	subw	a5,a5,a4
        if (next_tail != rx_head) {
    80006bc8:	00c62703          	lw	a4,12(a2)
    80006bcc:	0007071b          	sext.w	a4,a4
    80006bd0:	fcf700e3          	beq	a4,a5,80006b90 <_Z22kernel_console_handlerv+0x30>
            rx_buffer[rx_tail] = c;
    80006bd4:	00862703          	lw	a4,8(a2)
    80006bd8:	0007071b          	sext.w	a4,a4
    80006bdc:	00e60733          	add	a4,a2,a4
    80006be0:	00d70823          	sb	a3,16(a4)
            rx_tail = next_tail;
    80006be4:	00f62423          	sw	a5,8(a2)
            sem_rx->signal();
    80006be8:	00063503          	ld	a0,0(a2)
    80006bec:	fffff097          	auipc	ra,0xfffff
    80006bf0:	e28080e7          	jalr	-472(ra) # 80005a14 <_ZN9SemKernel6signalEv>
    80006bf4:	f9dff06f          	j	80006b90 <_Z22kernel_console_handlerv+0x30>
        }
    }
}
    80006bf8:	01813083          	ld	ra,24(sp)
    80006bfc:	01013403          	ld	s0,16(sp)
    80006c00:	00813483          	ld	s1,8(sp)
    80006c04:	00013903          	ld	s2,0(sp)
    80006c08:	02010113          	addi	sp,sp,32
    80006c0c:	00008067          	ret

0000000080006c10 <_Z11kernel_getcv>:

char kernel_getc() {
    80006c10:	fe010113          	addi	sp,sp,-32
    80006c14:	00113c23          	sd	ra,24(sp)
    80006c18:	00813823          	sd	s0,16(sp)
    80006c1c:	00913423          	sd	s1,8(sp)
    80006c20:	02010413          	addi	s0,sp,32
    sem_rx->wait(); // Čeka da stigne bar jedan karakter
    80006c24:	00005497          	auipc	s1,0x5
    80006c28:	07448493          	addi	s1,s1,116 # 8000bc98 <sem_rx>
    80006c2c:	0004b503          	ld	a0,0(s1)
    80006c30:	fffff097          	auipc	ra,0xfffff
    80006c34:	cfc080e7          	jalr	-772(ra) # 8000592c <_ZN9SemKernel4waitEv>

    // Bezbedno čitanje iz bafera:
    // Dovoljno je onemogućiti interrupts samo dok uzimamo karakter iz bafera,
    // ali bez upisivanja neproverenog staro_stanje direktno u sstatus.

    char c = rx_buffer[rx_head];
    80006c38:	00c4a703          	lw	a4,12(s1)
    80006c3c:	0007071b          	sext.w	a4,a4
    80006c40:	00e48733          	add	a4,s1,a4
    rx_head = (rx_head + 1) % BUFFER_SIZE;
    80006c44:	00c4a783          	lw	a5,12(s1)
    80006c48:	0017879b          	addiw	a5,a5,1
    80006c4c:	41f7d69b          	sraiw	a3,a5,0x1f
    80006c50:	0186d69b          	srliw	a3,a3,0x18
    80006c54:	00d787bb          	addw	a5,a5,a3
    80006c58:	0ff7f793          	andi	a5,a5,255
    80006c5c:	40d787bb          	subw	a5,a5,a3
    80006c60:	00f4a623          	sw	a5,12(s1)

    return c;
}
    80006c64:	01074503          	lbu	a0,16(a4)
    80006c68:	01813083          	ld	ra,24(sp)
    80006c6c:	01013403          	ld	s0,16(sp)
    80006c70:	00813483          	ld	s1,8(sp)
    80006c74:	02010113          	addi	sp,sp,32
    80006c78:	00008067          	ret

0000000080006c7c <_Z11kernel_putcc>:

void kernel_putc(char chr) {
    80006c7c:	fe010113          	addi	sp,sp,-32
    80006c80:	00813c23          	sd	s0,24(sp)
    80006c84:	02010413          	addi	s0,sp,32
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    80006c88:	100027f3          	csrr	a5,sstatus
    80006c8c:	fef43423          	sd	a5,-24(s0)
    return sstatus;
    80006c90:	fe843683          	ld	a3,-24(s0)
    __asm__ volatile("csrc sstatus, %0" :: "r"(mask));
    80006c94:	00200793          	li	a5,2
    80006c98:	1007b073          	csrc	sstatus,a5
    uint64 sstatus = Riscv::r_sstatus();
    Riscv::mc_sstatus(Riscv::SSTATUS_SIE);

    volatile uint8* status_reg = (volatile uint8*)CONSOLE_STATUS;
    80006c9c:	00005797          	auipc	a5,0x5
    80006ca0:	eac7b783          	ld	a5,-340(a5) # 8000bb48 <_GLOBAL_OFFSET_TABLE_+0x10>
    80006ca4:	0007b703          	ld	a4,0(a5)
    volatile uint8* tx_data_reg = (volatile uint8*)CONSOLE_TX_DATA;
    80006ca8:	00005797          	auipc	a5,0x5
    80006cac:	ec87b783          	ld	a5,-312(a5) # 8000bb70 <_GLOBAL_OFFSET_TABLE_+0x38>
    80006cb0:	0007b603          	ld	a2,0(a5)

    while (!(*status_reg & 0x20));
    80006cb4:	00074783          	lbu	a5,0(a4)
    80006cb8:	0ff7f793          	andi	a5,a5,255
    80006cbc:	0207f793          	andi	a5,a5,32
    80006cc0:	fe078ae3          	beqz	a5,80006cb4 <_Z11kernel_putcc+0x38>

    *tx_data_reg = (uint8)chr;
    80006cc4:	00a60023          	sb	a0,0(a2)

    if (sstatus & Riscv::SSTATUS_SIE) {
    80006cc8:	0026f793          	andi	a5,a3,2
    80006ccc:	00078663          	beqz	a5,80006cd8 <_Z11kernel_putcc+0x5c>
    __asm__ volatile("csrs sstatus, %0" :: "r"(mask));
    80006cd0:	00200793          	li	a5,2
    80006cd4:	1007a073          	csrs	sstatus,a5
        Riscv::ms_sstatus(Riscv::SSTATUS_SIE);
    }
    80006cd8:	01813403          	ld	s0,24(sp)
    80006cdc:	02010113          	addi	sp,sp,32
    80006ce0:	00008067          	ret

0000000080006ce4 <_ZN6ThreadD1Ev>:

void Thread::sync() {
    sync_thread();
}

Thread::~Thread () {}
    80006ce4:	ff010113          	addi	sp,sp,-16
    80006ce8:	00813423          	sd	s0,8(sp)
    80006cec:	01010413          	addi	s0,sp,16
    80006cf0:	00813403          	ld	s0,8(sp)
    80006cf4:	01010113          	addi	sp,sp,16
    80006cf8:	00008067          	ret

0000000080006cfc <_ZN6Thread10runWrapperEPv>:
    body = nullptr;
    arg = nullptr;
}

void Thread::runWrapper(void* threadObj) {
    if (threadObj != nullptr) {
    80006cfc:	02050863          	beqz	a0,80006d2c <_ZN6Thread10runWrapperEPv+0x30>
void Thread::runWrapper(void* threadObj) {
    80006d00:	ff010113          	addi	sp,sp,-16
    80006d04:	00113423          	sd	ra,8(sp)
    80006d08:	00813023          	sd	s0,0(sp)
    80006d0c:	01010413          	addi	s0,sp,16
        Thread* myThread = (Thread*)threadObj;
        myThread->run();
    80006d10:	00053783          	ld	a5,0(a0)
    80006d14:	0107b783          	ld	a5,16(a5)
    80006d18:	000780e7          	jalr	a5
    }
}
    80006d1c:	00813083          	ld	ra,8(sp)
    80006d20:	00013403          	ld	s0,0(sp)
    80006d24:	01010113          	addi	sp,sp,16
    80006d28:	00008067          	ret
    80006d2c:	00008067          	ret

0000000080006d30 <_ZN6ThreadD0Ev>:
Thread::~Thread () {}
    80006d30:	ff010113          	addi	sp,sp,-16
    80006d34:	00113423          	sd	ra,8(sp)
    80006d38:	00813023          	sd	s0,0(sp)
    80006d3c:	01010413          	addi	s0,sp,16
    80006d40:	ffffe097          	auipc	ra,0xffffe
    80006d44:	124080e7          	jalr	292(ra) # 80004e64 <_ZdlPv>
    80006d48:	00813083          	ld	ra,8(sp)
    80006d4c:	00013403          	ld	s0,0(sp)
    80006d50:	01010113          	addi	sp,sp,16
    80006d54:	00008067          	ret

0000000080006d58 <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread (void (*body)(void*), void* arg) {
    80006d58:	ff010113          	addi	sp,sp,-16
    80006d5c:	00813423          	sd	s0,8(sp)
    80006d60:	01010413          	addi	s0,sp,16
    80006d64:	00005797          	auipc	a5,0x5
    80006d68:	dbc78793          	addi	a5,a5,-580 # 8000bb20 <_ZTV6Thread+0x10>
    80006d6c:	00f53023          	sd	a5,0(a0)
    this->body = body;
    80006d70:	00b53823          	sd	a1,16(a0)
    this->arg = arg;
    80006d74:	00c53c23          	sd	a2,24(a0)
    this->myHandle = nullptr;
    80006d78:	00053423          	sd	zero,8(a0)
}
    80006d7c:	00813403          	ld	s0,8(sp)
    80006d80:	01010113          	addi	sp,sp,16
    80006d84:	00008067          	ret

0000000080006d88 <_ZN6Thread8dispatchEv>:
void Thread::dispatch() {
    80006d88:	ff010113          	addi	sp,sp,-16
    80006d8c:	00113423          	sd	ra,8(sp)
    80006d90:	00813023          	sd	s0,0(sp)
    80006d94:	01010413          	addi	s0,sp,16
    thread_dispatch();
    80006d98:	ffffb097          	auipc	ra,0xffffb
    80006d9c:	960080e7          	jalr	-1696(ra) # 800016f8 <_Z15thread_dispatchv>
}
    80006da0:	00813083          	ld	ra,8(sp)
    80006da4:	00013403          	ld	s0,0(sp)
    80006da8:	01010113          	addi	sp,sp,16
    80006dac:	00008067          	ret

0000000080006db0 <_ZN6Thread4pairEPS_S0_>:
void Thread::pair(Thread *t1, Thread *t2) {
    80006db0:	ff010113          	addi	sp,sp,-16
    80006db4:	00113423          	sd	ra,8(sp)
    80006db8:	00813023          	sd	s0,0(sp)
    80006dbc:	01010413          	addi	s0,sp,16
    set_partner(t1->myHandle, t2->myHandle);
    80006dc0:	0085b583          	ld	a1,8(a1)
    80006dc4:	00853503          	ld	a0,8(a0)
    80006dc8:	ffffb097          	auipc	ra,0xffffb
    80006dcc:	b60080e7          	jalr	-1184(ra) # 80001928 <_Z11set_partnerP7_threadS0_>
}
    80006dd0:	00813083          	ld	ra,8(sp)
    80006dd4:	00013403          	ld	s0,0(sp)
    80006dd8:	01010113          	addi	sp,sp,16
    80006ddc:	00008067          	ret

0000000080006de0 <_ZN6Thread5startEv>:
    if (myHandle != nullptr) return -1; // vec startovan
    80006de0:	00853783          	ld	a5,8(a0)
    80006de4:	04079c63          	bnez	a5,80006e3c <_ZN6Thread5startEv+0x5c>
int Thread::start() {
    80006de8:	ff010113          	addi	sp,sp,-16
    80006dec:	00113423          	sd	ra,8(sp)
    80006df0:	00813023          	sd	s0,0(sp)
    80006df4:	01010413          	addi	s0,sp,16
    if (body != nullptr) {
    80006df8:	01053583          	ld	a1,16(a0)
    80006dfc:	02058263          	beqz	a1,80006e20 <_ZN6Thread5startEv+0x40>
        return thread_create(&myHandle, body, arg);
    80006e00:	01853603          	ld	a2,24(a0)
    80006e04:	00850513          	addi	a0,a0,8
    80006e08:	ffffb097          	auipc	ra,0xffffb
    80006e0c:	84c080e7          	jalr	-1972(ra) # 80001654 <_Z13thread_createPP7_threadPFvPvES2_>
}
    80006e10:	00813083          	ld	ra,8(sp)
    80006e14:	00013403          	ld	s0,0(sp)
    80006e18:	01010113          	addi	sp,sp,16
    80006e1c:	00008067          	ret
    return thread_create(&myHandle, Thread::runWrapper, this);
    80006e20:	00050613          	mv	a2,a0
    80006e24:	00000597          	auipc	a1,0x0
    80006e28:	ed858593          	addi	a1,a1,-296 # 80006cfc <_ZN6Thread10runWrapperEPv>
    80006e2c:	00850513          	addi	a0,a0,8
    80006e30:	ffffb097          	auipc	ra,0xffffb
    80006e34:	824080e7          	jalr	-2012(ra) # 80001654 <_Z13thread_createPP7_threadPFvPvES2_>
    80006e38:	fd9ff06f          	j	80006e10 <_ZN6Thread5startEv+0x30>
    if (myHandle != nullptr) return -1; // vec startovan
    80006e3c:	fff00513          	li	a0,-1
}
    80006e40:	00008067          	ret

0000000080006e44 <_ZN6Thread4syncEv>:
void Thread::sync() {
    80006e44:	ff010113          	addi	sp,sp,-16
    80006e48:	00113423          	sd	ra,8(sp)
    80006e4c:	00813023          	sd	s0,0(sp)
    80006e50:	01010413          	addi	s0,sp,16
    sync_thread();
    80006e54:	ffffb097          	auipc	ra,0xffffb
    80006e58:	b08080e7          	jalr	-1272(ra) # 8000195c <_Z11sync_threadv>
}
    80006e5c:	00813083          	ld	ra,8(sp)
    80006e60:	00013403          	ld	s0,0(sp)
    80006e64:	01010113          	addi	sp,sp,16
    80006e68:	00008067          	ret

0000000080006e6c <_ZN6ThreadC1Ev>:
Thread::Thread() {
    80006e6c:	ff010113          	addi	sp,sp,-16
    80006e70:	00813423          	sd	s0,8(sp)
    80006e74:	01010413          	addi	s0,sp,16
    80006e78:	00005797          	auipc	a5,0x5
    80006e7c:	ca878793          	addi	a5,a5,-856 # 8000bb20 <_ZTV6Thread+0x10>
    80006e80:	00f53023          	sd	a5,0(a0)
    myHandle = nullptr;
    80006e84:	00053423          	sd	zero,8(a0)
    body = nullptr;
    80006e88:	00053823          	sd	zero,16(a0)
    arg = nullptr;
    80006e8c:	00053c23          	sd	zero,24(a0)
}
    80006e90:	00813403          	ld	s0,8(sp)
    80006e94:	01010113          	addi	sp,sp,16
    80006e98:	00008067          	ret

0000000080006e9c <_ZN6Thread5sleepEm>:

int Thread::sleep(time_t t) {
    80006e9c:	ff010113          	addi	sp,sp,-16
    80006ea0:	00113423          	sd	ra,8(sp)
    80006ea4:	00813023          	sd	s0,0(sp)
    80006ea8:	01010413          	addi	s0,sp,16
    TCB::time_sleep(t);
    80006eac:	ffffe097          	auipc	ra,0xffffe
    80006eb0:	e04080e7          	jalr	-508(ra) # 80004cb0 <_ZN3TCB10time_sleepEm>
    return 0;
    80006eb4:	00000513          	li	a0,0
    80006eb8:	00813083          	ld	ra,8(sp)
    80006ebc:	00013403          	ld	s0,0(sp)
    80006ec0:	01010113          	addi	sp,sp,16
    80006ec4:	00008067          	ret

0000000080006ec8 <_ZN6Thread3runEv>:
    void sync();


protected:
    Thread ();
    virtual void run () {}
    80006ec8:	ff010113          	addi	sp,sp,-16
    80006ecc:	00813423          	sd	s0,8(sp)
    80006ed0:	01010413          	addi	s0,sp,16
    80006ed4:	00813403          	ld	s0,8(sp)
    80006ed8:	01010113          	addi	sp,sp,16
    80006edc:	00008067          	ret

0000000080006ee0 <start>:
    80006ee0:	ff010113          	addi	sp,sp,-16
    80006ee4:	00813423          	sd	s0,8(sp)
    80006ee8:	01010413          	addi	s0,sp,16
    80006eec:	300027f3          	csrr	a5,mstatus
    80006ef0:	ffffe737          	lui	a4,0xffffe
    80006ef4:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff17ef>
    80006ef8:	00e7f7b3          	and	a5,a5,a4
    80006efc:	00001737          	lui	a4,0x1
    80006f00:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80006f04:	00e7e7b3          	or	a5,a5,a4
    80006f08:	30079073          	csrw	mstatus,a5
    80006f0c:	00000797          	auipc	a5,0x0
    80006f10:	16078793          	addi	a5,a5,352 # 8000706c <system_main>
    80006f14:	34179073          	csrw	mepc,a5
    80006f18:	00000793          	li	a5,0
    80006f1c:	18079073          	csrw	satp,a5
    80006f20:	000107b7          	lui	a5,0x10
    80006f24:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80006f28:	30279073          	csrw	medeleg,a5
    80006f2c:	30379073          	csrw	mideleg,a5
    80006f30:	104027f3          	csrr	a5,sie
    80006f34:	2227e793          	ori	a5,a5,546
    80006f38:	10479073          	csrw	sie,a5
    80006f3c:	fff00793          	li	a5,-1
    80006f40:	00a7d793          	srli	a5,a5,0xa
    80006f44:	3b079073          	csrw	pmpaddr0,a5
    80006f48:	00f00793          	li	a5,15
    80006f4c:	3a079073          	csrw	pmpcfg0,a5
    80006f50:	f14027f3          	csrr	a5,mhartid
    80006f54:	0200c737          	lui	a4,0x200c
    80006f58:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80006f5c:	0007869b          	sext.w	a3,a5
    80006f60:	00269713          	slli	a4,a3,0x2
    80006f64:	000f4637          	lui	a2,0xf4
    80006f68:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80006f6c:	00d70733          	add	a4,a4,a3
    80006f70:	0037979b          	slliw	a5,a5,0x3
    80006f74:	020046b7          	lui	a3,0x2004
    80006f78:	00d787b3          	add	a5,a5,a3
    80006f7c:	00c585b3          	add	a1,a1,a2
    80006f80:	00371693          	slli	a3,a4,0x3
    80006f84:	00005717          	auipc	a4,0x5
    80006f88:	e2c70713          	addi	a4,a4,-468 # 8000bdb0 <timer_scratch>
    80006f8c:	00b7b023          	sd	a1,0(a5)
    80006f90:	00d70733          	add	a4,a4,a3
    80006f94:	00f73c23          	sd	a5,24(a4)
    80006f98:	02c73023          	sd	a2,32(a4)
    80006f9c:	34071073          	csrw	mscratch,a4
    80006fa0:	00000797          	auipc	a5,0x0
    80006fa4:	6e078793          	addi	a5,a5,1760 # 80007680 <timervec>
    80006fa8:	30579073          	csrw	mtvec,a5
    80006fac:	300027f3          	csrr	a5,mstatus
    80006fb0:	0087e793          	ori	a5,a5,8
    80006fb4:	30079073          	csrw	mstatus,a5
    80006fb8:	304027f3          	csrr	a5,mie
    80006fbc:	0807e793          	ori	a5,a5,128
    80006fc0:	30479073          	csrw	mie,a5
    80006fc4:	f14027f3          	csrr	a5,mhartid
    80006fc8:	0007879b          	sext.w	a5,a5
    80006fcc:	00078213          	mv	tp,a5
    80006fd0:	30200073          	mret
    80006fd4:	00813403          	ld	s0,8(sp)
    80006fd8:	01010113          	addi	sp,sp,16
    80006fdc:	00008067          	ret

0000000080006fe0 <timerinit>:
    80006fe0:	ff010113          	addi	sp,sp,-16
    80006fe4:	00813423          	sd	s0,8(sp)
    80006fe8:	01010413          	addi	s0,sp,16
    80006fec:	f14027f3          	csrr	a5,mhartid
    80006ff0:	0200c737          	lui	a4,0x200c
    80006ff4:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80006ff8:	0007869b          	sext.w	a3,a5
    80006ffc:	00269713          	slli	a4,a3,0x2
    80007000:	000f4637          	lui	a2,0xf4
    80007004:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80007008:	00d70733          	add	a4,a4,a3
    8000700c:	0037979b          	slliw	a5,a5,0x3
    80007010:	020046b7          	lui	a3,0x2004
    80007014:	00d787b3          	add	a5,a5,a3
    80007018:	00c585b3          	add	a1,a1,a2
    8000701c:	00371693          	slli	a3,a4,0x3
    80007020:	00005717          	auipc	a4,0x5
    80007024:	d9070713          	addi	a4,a4,-624 # 8000bdb0 <timer_scratch>
    80007028:	00b7b023          	sd	a1,0(a5)
    8000702c:	00d70733          	add	a4,a4,a3
    80007030:	00f73c23          	sd	a5,24(a4)
    80007034:	02c73023          	sd	a2,32(a4)
    80007038:	34071073          	csrw	mscratch,a4
    8000703c:	00000797          	auipc	a5,0x0
    80007040:	64478793          	addi	a5,a5,1604 # 80007680 <timervec>
    80007044:	30579073          	csrw	mtvec,a5
    80007048:	300027f3          	csrr	a5,mstatus
    8000704c:	0087e793          	ori	a5,a5,8
    80007050:	30079073          	csrw	mstatus,a5
    80007054:	304027f3          	csrr	a5,mie
    80007058:	0807e793          	ori	a5,a5,128
    8000705c:	30479073          	csrw	mie,a5
    80007060:	00813403          	ld	s0,8(sp)
    80007064:	01010113          	addi	sp,sp,16
    80007068:	00008067          	ret

000000008000706c <system_main>:
    8000706c:	fe010113          	addi	sp,sp,-32
    80007070:	00813823          	sd	s0,16(sp)
    80007074:	00913423          	sd	s1,8(sp)
    80007078:	00113c23          	sd	ra,24(sp)
    8000707c:	02010413          	addi	s0,sp,32
    80007080:	00000097          	auipc	ra,0x0
    80007084:	0c4080e7          	jalr	196(ra) # 80007144 <cpuid>
    80007088:	00005497          	auipc	s1,0x5
    8000708c:	b3848493          	addi	s1,s1,-1224 # 8000bbc0 <started>
    80007090:	02050263          	beqz	a0,800070b4 <system_main+0x48>
    80007094:	0004a783          	lw	a5,0(s1)
    80007098:	0007879b          	sext.w	a5,a5
    8000709c:	fe078ce3          	beqz	a5,80007094 <system_main+0x28>
    800070a0:	0ff0000f          	fence
    800070a4:	00002517          	auipc	a0,0x2
    800070a8:	47450513          	addi	a0,a0,1140 # 80009518 <CONSOLE_STATUS+0x508>
    800070ac:	00001097          	auipc	ra,0x1
    800070b0:	a70080e7          	jalr	-1424(ra) # 80007b1c <panic>
    800070b4:	00001097          	auipc	ra,0x1
    800070b8:	9c4080e7          	jalr	-1596(ra) # 80007a78 <consoleinit>
    800070bc:	00001097          	auipc	ra,0x1
    800070c0:	150080e7          	jalr	336(ra) # 8000820c <printfinit>
    800070c4:	00002517          	auipc	a0,0x2
    800070c8:	29450513          	addi	a0,a0,660 # 80009358 <CONSOLE_STATUS+0x348>
    800070cc:	00001097          	auipc	ra,0x1
    800070d0:	aac080e7          	jalr	-1364(ra) # 80007b78 <__printf>
    800070d4:	00002517          	auipc	a0,0x2
    800070d8:	41450513          	addi	a0,a0,1044 # 800094e8 <CONSOLE_STATUS+0x4d8>
    800070dc:	00001097          	auipc	ra,0x1
    800070e0:	a9c080e7          	jalr	-1380(ra) # 80007b78 <__printf>
    800070e4:	00002517          	auipc	a0,0x2
    800070e8:	27450513          	addi	a0,a0,628 # 80009358 <CONSOLE_STATUS+0x348>
    800070ec:	00001097          	auipc	ra,0x1
    800070f0:	a8c080e7          	jalr	-1396(ra) # 80007b78 <__printf>
    800070f4:	00001097          	auipc	ra,0x1
    800070f8:	4a4080e7          	jalr	1188(ra) # 80008598 <kinit>
    800070fc:	00000097          	auipc	ra,0x0
    80007100:	148080e7          	jalr	328(ra) # 80007244 <trapinit>
    80007104:	00000097          	auipc	ra,0x0
    80007108:	16c080e7          	jalr	364(ra) # 80007270 <trapinithart>
    8000710c:	00000097          	auipc	ra,0x0
    80007110:	5b4080e7          	jalr	1460(ra) # 800076c0 <plicinit>
    80007114:	00000097          	auipc	ra,0x0
    80007118:	5d4080e7          	jalr	1492(ra) # 800076e8 <plicinithart>
    8000711c:	00000097          	auipc	ra,0x0
    80007120:	078080e7          	jalr	120(ra) # 80007194 <userinit>
    80007124:	0ff0000f          	fence
    80007128:	00100793          	li	a5,1
    8000712c:	00002517          	auipc	a0,0x2
    80007130:	3d450513          	addi	a0,a0,980 # 80009500 <CONSOLE_STATUS+0x4f0>
    80007134:	00f4a023          	sw	a5,0(s1)
    80007138:	00001097          	auipc	ra,0x1
    8000713c:	a40080e7          	jalr	-1472(ra) # 80007b78 <__printf>
    80007140:	0000006f          	j	80007140 <system_main+0xd4>

0000000080007144 <cpuid>:
    80007144:	ff010113          	addi	sp,sp,-16
    80007148:	00813423          	sd	s0,8(sp)
    8000714c:	01010413          	addi	s0,sp,16
    80007150:	00020513          	mv	a0,tp
    80007154:	00813403          	ld	s0,8(sp)
    80007158:	0005051b          	sext.w	a0,a0
    8000715c:	01010113          	addi	sp,sp,16
    80007160:	00008067          	ret

0000000080007164 <mycpu>:
    80007164:	ff010113          	addi	sp,sp,-16
    80007168:	00813423          	sd	s0,8(sp)
    8000716c:	01010413          	addi	s0,sp,16
    80007170:	00020793          	mv	a5,tp
    80007174:	00813403          	ld	s0,8(sp)
    80007178:	0007879b          	sext.w	a5,a5
    8000717c:	00779793          	slli	a5,a5,0x7
    80007180:	00006517          	auipc	a0,0x6
    80007184:	c6050513          	addi	a0,a0,-928 # 8000cde0 <cpus>
    80007188:	00f50533          	add	a0,a0,a5
    8000718c:	01010113          	addi	sp,sp,16
    80007190:	00008067          	ret

0000000080007194 <userinit>:
    80007194:	ff010113          	addi	sp,sp,-16
    80007198:	00813423          	sd	s0,8(sp)
    8000719c:	01010413          	addi	s0,sp,16
    800071a0:	00813403          	ld	s0,8(sp)
    800071a4:	01010113          	addi	sp,sp,16
    800071a8:	ffffd317          	auipc	t1,0xffffd
    800071ac:	73030067          	jr	1840(t1) # 800048d8 <main>

00000000800071b0 <either_copyout>:
    800071b0:	ff010113          	addi	sp,sp,-16
    800071b4:	00813023          	sd	s0,0(sp)
    800071b8:	00113423          	sd	ra,8(sp)
    800071bc:	01010413          	addi	s0,sp,16
    800071c0:	02051663          	bnez	a0,800071ec <either_copyout+0x3c>
    800071c4:	00058513          	mv	a0,a1
    800071c8:	00060593          	mv	a1,a2
    800071cc:	0006861b          	sext.w	a2,a3
    800071d0:	00002097          	auipc	ra,0x2
    800071d4:	c54080e7          	jalr	-940(ra) # 80008e24 <__memmove>
    800071d8:	00813083          	ld	ra,8(sp)
    800071dc:	00013403          	ld	s0,0(sp)
    800071e0:	00000513          	li	a0,0
    800071e4:	01010113          	addi	sp,sp,16
    800071e8:	00008067          	ret
    800071ec:	00002517          	auipc	a0,0x2
    800071f0:	35450513          	addi	a0,a0,852 # 80009540 <CONSOLE_STATUS+0x530>
    800071f4:	00001097          	auipc	ra,0x1
    800071f8:	928080e7          	jalr	-1752(ra) # 80007b1c <panic>

00000000800071fc <either_copyin>:
    800071fc:	ff010113          	addi	sp,sp,-16
    80007200:	00813023          	sd	s0,0(sp)
    80007204:	00113423          	sd	ra,8(sp)
    80007208:	01010413          	addi	s0,sp,16
    8000720c:	02059463          	bnez	a1,80007234 <either_copyin+0x38>
    80007210:	00060593          	mv	a1,a2
    80007214:	0006861b          	sext.w	a2,a3
    80007218:	00002097          	auipc	ra,0x2
    8000721c:	c0c080e7          	jalr	-1012(ra) # 80008e24 <__memmove>
    80007220:	00813083          	ld	ra,8(sp)
    80007224:	00013403          	ld	s0,0(sp)
    80007228:	00000513          	li	a0,0
    8000722c:	01010113          	addi	sp,sp,16
    80007230:	00008067          	ret
    80007234:	00002517          	auipc	a0,0x2
    80007238:	33450513          	addi	a0,a0,820 # 80009568 <CONSOLE_STATUS+0x558>
    8000723c:	00001097          	auipc	ra,0x1
    80007240:	8e0080e7          	jalr	-1824(ra) # 80007b1c <panic>

0000000080007244 <trapinit>:
    80007244:	ff010113          	addi	sp,sp,-16
    80007248:	00813423          	sd	s0,8(sp)
    8000724c:	01010413          	addi	s0,sp,16
    80007250:	00813403          	ld	s0,8(sp)
    80007254:	00002597          	auipc	a1,0x2
    80007258:	33c58593          	addi	a1,a1,828 # 80009590 <CONSOLE_STATUS+0x580>
    8000725c:	00006517          	auipc	a0,0x6
    80007260:	c0450513          	addi	a0,a0,-1020 # 8000ce60 <tickslock>
    80007264:	01010113          	addi	sp,sp,16
    80007268:	00001317          	auipc	t1,0x1
    8000726c:	5c030067          	jr	1472(t1) # 80008828 <initlock>

0000000080007270 <trapinithart>:
    80007270:	ff010113          	addi	sp,sp,-16
    80007274:	00813423          	sd	s0,8(sp)
    80007278:	01010413          	addi	s0,sp,16
    8000727c:	00000797          	auipc	a5,0x0
    80007280:	2f478793          	addi	a5,a5,756 # 80007570 <kernelvec>
    80007284:	10579073          	csrw	stvec,a5
    80007288:	00813403          	ld	s0,8(sp)
    8000728c:	01010113          	addi	sp,sp,16
    80007290:	00008067          	ret

0000000080007294 <usertrap>:
    80007294:	ff010113          	addi	sp,sp,-16
    80007298:	00813423          	sd	s0,8(sp)
    8000729c:	01010413          	addi	s0,sp,16
    800072a0:	00813403          	ld	s0,8(sp)
    800072a4:	01010113          	addi	sp,sp,16
    800072a8:	00008067          	ret

00000000800072ac <usertrapret>:
    800072ac:	ff010113          	addi	sp,sp,-16
    800072b0:	00813423          	sd	s0,8(sp)
    800072b4:	01010413          	addi	s0,sp,16
    800072b8:	00813403          	ld	s0,8(sp)
    800072bc:	01010113          	addi	sp,sp,16
    800072c0:	00008067          	ret

00000000800072c4 <kerneltrap>:
    800072c4:	fe010113          	addi	sp,sp,-32
    800072c8:	00813823          	sd	s0,16(sp)
    800072cc:	00113c23          	sd	ra,24(sp)
    800072d0:	00913423          	sd	s1,8(sp)
    800072d4:	02010413          	addi	s0,sp,32
    800072d8:	142025f3          	csrr	a1,scause
    800072dc:	100027f3          	csrr	a5,sstatus
    800072e0:	0027f793          	andi	a5,a5,2
    800072e4:	10079c63          	bnez	a5,800073fc <kerneltrap+0x138>
    800072e8:	142027f3          	csrr	a5,scause
    800072ec:	0207ce63          	bltz	a5,80007328 <kerneltrap+0x64>
    800072f0:	00002517          	auipc	a0,0x2
    800072f4:	2e850513          	addi	a0,a0,744 # 800095d8 <CONSOLE_STATUS+0x5c8>
    800072f8:	00001097          	auipc	ra,0x1
    800072fc:	880080e7          	jalr	-1920(ra) # 80007b78 <__printf>
    80007300:	141025f3          	csrr	a1,sepc
    80007304:	14302673          	csrr	a2,stval
    80007308:	00002517          	auipc	a0,0x2
    8000730c:	2e050513          	addi	a0,a0,736 # 800095e8 <CONSOLE_STATUS+0x5d8>
    80007310:	00001097          	auipc	ra,0x1
    80007314:	868080e7          	jalr	-1944(ra) # 80007b78 <__printf>
    80007318:	00002517          	auipc	a0,0x2
    8000731c:	2e850513          	addi	a0,a0,744 # 80009600 <CONSOLE_STATUS+0x5f0>
    80007320:	00000097          	auipc	ra,0x0
    80007324:	7fc080e7          	jalr	2044(ra) # 80007b1c <panic>
    80007328:	0ff7f713          	andi	a4,a5,255
    8000732c:	00900693          	li	a3,9
    80007330:	04d70063          	beq	a4,a3,80007370 <kerneltrap+0xac>
    80007334:	fff00713          	li	a4,-1
    80007338:	03f71713          	slli	a4,a4,0x3f
    8000733c:	00170713          	addi	a4,a4,1
    80007340:	fae798e3          	bne	a5,a4,800072f0 <kerneltrap+0x2c>
    80007344:	00000097          	auipc	ra,0x0
    80007348:	e00080e7          	jalr	-512(ra) # 80007144 <cpuid>
    8000734c:	06050663          	beqz	a0,800073b8 <kerneltrap+0xf4>
    80007350:	144027f3          	csrr	a5,sip
    80007354:	ffd7f793          	andi	a5,a5,-3
    80007358:	14479073          	csrw	sip,a5
    8000735c:	01813083          	ld	ra,24(sp)
    80007360:	01013403          	ld	s0,16(sp)
    80007364:	00813483          	ld	s1,8(sp)
    80007368:	02010113          	addi	sp,sp,32
    8000736c:	00008067          	ret
    80007370:	00000097          	auipc	ra,0x0
    80007374:	3c4080e7          	jalr	964(ra) # 80007734 <plic_claim>
    80007378:	00a00793          	li	a5,10
    8000737c:	00050493          	mv	s1,a0
    80007380:	06f50863          	beq	a0,a5,800073f0 <kerneltrap+0x12c>
    80007384:	fc050ce3          	beqz	a0,8000735c <kerneltrap+0x98>
    80007388:	00050593          	mv	a1,a0
    8000738c:	00002517          	auipc	a0,0x2
    80007390:	22c50513          	addi	a0,a0,556 # 800095b8 <CONSOLE_STATUS+0x5a8>
    80007394:	00000097          	auipc	ra,0x0
    80007398:	7e4080e7          	jalr	2020(ra) # 80007b78 <__printf>
    8000739c:	01013403          	ld	s0,16(sp)
    800073a0:	01813083          	ld	ra,24(sp)
    800073a4:	00048513          	mv	a0,s1
    800073a8:	00813483          	ld	s1,8(sp)
    800073ac:	02010113          	addi	sp,sp,32
    800073b0:	00000317          	auipc	t1,0x0
    800073b4:	3bc30067          	jr	956(t1) # 8000776c <plic_complete>
    800073b8:	00006517          	auipc	a0,0x6
    800073bc:	aa850513          	addi	a0,a0,-1368 # 8000ce60 <tickslock>
    800073c0:	00001097          	auipc	ra,0x1
    800073c4:	48c080e7          	jalr	1164(ra) # 8000884c <acquire>
    800073c8:	00004717          	auipc	a4,0x4
    800073cc:	7fc70713          	addi	a4,a4,2044 # 8000bbc4 <ticks>
    800073d0:	00072783          	lw	a5,0(a4)
    800073d4:	00006517          	auipc	a0,0x6
    800073d8:	a8c50513          	addi	a0,a0,-1396 # 8000ce60 <tickslock>
    800073dc:	0017879b          	addiw	a5,a5,1
    800073e0:	00f72023          	sw	a5,0(a4)
    800073e4:	00001097          	auipc	ra,0x1
    800073e8:	534080e7          	jalr	1332(ra) # 80008918 <release>
    800073ec:	f65ff06f          	j	80007350 <kerneltrap+0x8c>
    800073f0:	00001097          	auipc	ra,0x1
    800073f4:	090080e7          	jalr	144(ra) # 80008480 <uartintr>
    800073f8:	fa5ff06f          	j	8000739c <kerneltrap+0xd8>
    800073fc:	00002517          	auipc	a0,0x2
    80007400:	19c50513          	addi	a0,a0,412 # 80009598 <CONSOLE_STATUS+0x588>
    80007404:	00000097          	auipc	ra,0x0
    80007408:	718080e7          	jalr	1816(ra) # 80007b1c <panic>

000000008000740c <clockintr>:
    8000740c:	fe010113          	addi	sp,sp,-32
    80007410:	00813823          	sd	s0,16(sp)
    80007414:	00913423          	sd	s1,8(sp)
    80007418:	00113c23          	sd	ra,24(sp)
    8000741c:	02010413          	addi	s0,sp,32
    80007420:	00006497          	auipc	s1,0x6
    80007424:	a4048493          	addi	s1,s1,-1472 # 8000ce60 <tickslock>
    80007428:	00048513          	mv	a0,s1
    8000742c:	00001097          	auipc	ra,0x1
    80007430:	420080e7          	jalr	1056(ra) # 8000884c <acquire>
    80007434:	00004717          	auipc	a4,0x4
    80007438:	79070713          	addi	a4,a4,1936 # 8000bbc4 <ticks>
    8000743c:	00072783          	lw	a5,0(a4)
    80007440:	01013403          	ld	s0,16(sp)
    80007444:	01813083          	ld	ra,24(sp)
    80007448:	00048513          	mv	a0,s1
    8000744c:	0017879b          	addiw	a5,a5,1
    80007450:	00813483          	ld	s1,8(sp)
    80007454:	00f72023          	sw	a5,0(a4)
    80007458:	02010113          	addi	sp,sp,32
    8000745c:	00001317          	auipc	t1,0x1
    80007460:	4bc30067          	jr	1212(t1) # 80008918 <release>

0000000080007464 <devintr>:
    80007464:	142027f3          	csrr	a5,scause
    80007468:	00000513          	li	a0,0
    8000746c:	0007c463          	bltz	a5,80007474 <devintr+0x10>
    80007470:	00008067          	ret
    80007474:	fe010113          	addi	sp,sp,-32
    80007478:	00813823          	sd	s0,16(sp)
    8000747c:	00113c23          	sd	ra,24(sp)
    80007480:	00913423          	sd	s1,8(sp)
    80007484:	02010413          	addi	s0,sp,32
    80007488:	0ff7f713          	andi	a4,a5,255
    8000748c:	00900693          	li	a3,9
    80007490:	04d70c63          	beq	a4,a3,800074e8 <devintr+0x84>
    80007494:	fff00713          	li	a4,-1
    80007498:	03f71713          	slli	a4,a4,0x3f
    8000749c:	00170713          	addi	a4,a4,1
    800074a0:	00e78c63          	beq	a5,a4,800074b8 <devintr+0x54>
    800074a4:	01813083          	ld	ra,24(sp)
    800074a8:	01013403          	ld	s0,16(sp)
    800074ac:	00813483          	ld	s1,8(sp)
    800074b0:	02010113          	addi	sp,sp,32
    800074b4:	00008067          	ret
    800074b8:	00000097          	auipc	ra,0x0
    800074bc:	c8c080e7          	jalr	-884(ra) # 80007144 <cpuid>
    800074c0:	06050663          	beqz	a0,8000752c <devintr+0xc8>
    800074c4:	144027f3          	csrr	a5,sip
    800074c8:	ffd7f793          	andi	a5,a5,-3
    800074cc:	14479073          	csrw	sip,a5
    800074d0:	01813083          	ld	ra,24(sp)
    800074d4:	01013403          	ld	s0,16(sp)
    800074d8:	00813483          	ld	s1,8(sp)
    800074dc:	00200513          	li	a0,2
    800074e0:	02010113          	addi	sp,sp,32
    800074e4:	00008067          	ret
    800074e8:	00000097          	auipc	ra,0x0
    800074ec:	24c080e7          	jalr	588(ra) # 80007734 <plic_claim>
    800074f0:	00a00793          	li	a5,10
    800074f4:	00050493          	mv	s1,a0
    800074f8:	06f50663          	beq	a0,a5,80007564 <devintr+0x100>
    800074fc:	00100513          	li	a0,1
    80007500:	fa0482e3          	beqz	s1,800074a4 <devintr+0x40>
    80007504:	00048593          	mv	a1,s1
    80007508:	00002517          	auipc	a0,0x2
    8000750c:	0b050513          	addi	a0,a0,176 # 800095b8 <CONSOLE_STATUS+0x5a8>
    80007510:	00000097          	auipc	ra,0x0
    80007514:	668080e7          	jalr	1640(ra) # 80007b78 <__printf>
    80007518:	00048513          	mv	a0,s1
    8000751c:	00000097          	auipc	ra,0x0
    80007520:	250080e7          	jalr	592(ra) # 8000776c <plic_complete>
    80007524:	00100513          	li	a0,1
    80007528:	f7dff06f          	j	800074a4 <devintr+0x40>
    8000752c:	00006517          	auipc	a0,0x6
    80007530:	93450513          	addi	a0,a0,-1740 # 8000ce60 <tickslock>
    80007534:	00001097          	auipc	ra,0x1
    80007538:	318080e7          	jalr	792(ra) # 8000884c <acquire>
    8000753c:	00004717          	auipc	a4,0x4
    80007540:	68870713          	addi	a4,a4,1672 # 8000bbc4 <ticks>
    80007544:	00072783          	lw	a5,0(a4)
    80007548:	00006517          	auipc	a0,0x6
    8000754c:	91850513          	addi	a0,a0,-1768 # 8000ce60 <tickslock>
    80007550:	0017879b          	addiw	a5,a5,1
    80007554:	00f72023          	sw	a5,0(a4)
    80007558:	00001097          	auipc	ra,0x1
    8000755c:	3c0080e7          	jalr	960(ra) # 80008918 <release>
    80007560:	f65ff06f          	j	800074c4 <devintr+0x60>
    80007564:	00001097          	auipc	ra,0x1
    80007568:	f1c080e7          	jalr	-228(ra) # 80008480 <uartintr>
    8000756c:	fadff06f          	j	80007518 <devintr+0xb4>

0000000080007570 <kernelvec>:
    80007570:	f0010113          	addi	sp,sp,-256
    80007574:	00113023          	sd	ra,0(sp)
    80007578:	00213423          	sd	sp,8(sp)
    8000757c:	00313823          	sd	gp,16(sp)
    80007580:	00413c23          	sd	tp,24(sp)
    80007584:	02513023          	sd	t0,32(sp)
    80007588:	02613423          	sd	t1,40(sp)
    8000758c:	02713823          	sd	t2,48(sp)
    80007590:	02813c23          	sd	s0,56(sp)
    80007594:	04913023          	sd	s1,64(sp)
    80007598:	04a13423          	sd	a0,72(sp)
    8000759c:	04b13823          	sd	a1,80(sp)
    800075a0:	04c13c23          	sd	a2,88(sp)
    800075a4:	06d13023          	sd	a3,96(sp)
    800075a8:	06e13423          	sd	a4,104(sp)
    800075ac:	06f13823          	sd	a5,112(sp)
    800075b0:	07013c23          	sd	a6,120(sp)
    800075b4:	09113023          	sd	a7,128(sp)
    800075b8:	09213423          	sd	s2,136(sp)
    800075bc:	09313823          	sd	s3,144(sp)
    800075c0:	09413c23          	sd	s4,152(sp)
    800075c4:	0b513023          	sd	s5,160(sp)
    800075c8:	0b613423          	sd	s6,168(sp)
    800075cc:	0b713823          	sd	s7,176(sp)
    800075d0:	0b813c23          	sd	s8,184(sp)
    800075d4:	0d913023          	sd	s9,192(sp)
    800075d8:	0da13423          	sd	s10,200(sp)
    800075dc:	0db13823          	sd	s11,208(sp)
    800075e0:	0dc13c23          	sd	t3,216(sp)
    800075e4:	0fd13023          	sd	t4,224(sp)
    800075e8:	0fe13423          	sd	t5,232(sp)
    800075ec:	0ff13823          	sd	t6,240(sp)
    800075f0:	cd5ff0ef          	jal	ra,800072c4 <kerneltrap>
    800075f4:	00013083          	ld	ra,0(sp)
    800075f8:	00813103          	ld	sp,8(sp)
    800075fc:	01013183          	ld	gp,16(sp)
    80007600:	02013283          	ld	t0,32(sp)
    80007604:	02813303          	ld	t1,40(sp)
    80007608:	03013383          	ld	t2,48(sp)
    8000760c:	03813403          	ld	s0,56(sp)
    80007610:	04013483          	ld	s1,64(sp)
    80007614:	04813503          	ld	a0,72(sp)
    80007618:	05013583          	ld	a1,80(sp)
    8000761c:	05813603          	ld	a2,88(sp)
    80007620:	06013683          	ld	a3,96(sp)
    80007624:	06813703          	ld	a4,104(sp)
    80007628:	07013783          	ld	a5,112(sp)
    8000762c:	07813803          	ld	a6,120(sp)
    80007630:	08013883          	ld	a7,128(sp)
    80007634:	08813903          	ld	s2,136(sp)
    80007638:	09013983          	ld	s3,144(sp)
    8000763c:	09813a03          	ld	s4,152(sp)
    80007640:	0a013a83          	ld	s5,160(sp)
    80007644:	0a813b03          	ld	s6,168(sp)
    80007648:	0b013b83          	ld	s7,176(sp)
    8000764c:	0b813c03          	ld	s8,184(sp)
    80007650:	0c013c83          	ld	s9,192(sp)
    80007654:	0c813d03          	ld	s10,200(sp)
    80007658:	0d013d83          	ld	s11,208(sp)
    8000765c:	0d813e03          	ld	t3,216(sp)
    80007660:	0e013e83          	ld	t4,224(sp)
    80007664:	0e813f03          	ld	t5,232(sp)
    80007668:	0f013f83          	ld	t6,240(sp)
    8000766c:	10010113          	addi	sp,sp,256
    80007670:	10200073          	sret
    80007674:	00000013          	nop
    80007678:	00000013          	nop
    8000767c:	00000013          	nop

0000000080007680 <timervec>:
    80007680:	34051573          	csrrw	a0,mscratch,a0
    80007684:	00b53023          	sd	a1,0(a0)
    80007688:	00c53423          	sd	a2,8(a0)
    8000768c:	00d53823          	sd	a3,16(a0)
    80007690:	01853583          	ld	a1,24(a0)
    80007694:	02053603          	ld	a2,32(a0)
    80007698:	0005b683          	ld	a3,0(a1)
    8000769c:	00c686b3          	add	a3,a3,a2
    800076a0:	00d5b023          	sd	a3,0(a1)
    800076a4:	00200593          	li	a1,2
    800076a8:	14459073          	csrw	sip,a1
    800076ac:	01053683          	ld	a3,16(a0)
    800076b0:	00853603          	ld	a2,8(a0)
    800076b4:	00053583          	ld	a1,0(a0)
    800076b8:	34051573          	csrrw	a0,mscratch,a0
    800076bc:	30200073          	mret

00000000800076c0 <plicinit>:
    800076c0:	ff010113          	addi	sp,sp,-16
    800076c4:	00813423          	sd	s0,8(sp)
    800076c8:	01010413          	addi	s0,sp,16
    800076cc:	00813403          	ld	s0,8(sp)
    800076d0:	0c0007b7          	lui	a5,0xc000
    800076d4:	00100713          	li	a4,1
    800076d8:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    800076dc:	00e7a223          	sw	a4,4(a5)
    800076e0:	01010113          	addi	sp,sp,16
    800076e4:	00008067          	ret

00000000800076e8 <plicinithart>:
    800076e8:	ff010113          	addi	sp,sp,-16
    800076ec:	00813023          	sd	s0,0(sp)
    800076f0:	00113423          	sd	ra,8(sp)
    800076f4:	01010413          	addi	s0,sp,16
    800076f8:	00000097          	auipc	ra,0x0
    800076fc:	a4c080e7          	jalr	-1460(ra) # 80007144 <cpuid>
    80007700:	0085171b          	slliw	a4,a0,0x8
    80007704:	0c0027b7          	lui	a5,0xc002
    80007708:	00e787b3          	add	a5,a5,a4
    8000770c:	40200713          	li	a4,1026
    80007710:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80007714:	00813083          	ld	ra,8(sp)
    80007718:	00013403          	ld	s0,0(sp)
    8000771c:	00d5151b          	slliw	a0,a0,0xd
    80007720:	0c2017b7          	lui	a5,0xc201
    80007724:	00a78533          	add	a0,a5,a0
    80007728:	00052023          	sw	zero,0(a0)
    8000772c:	01010113          	addi	sp,sp,16
    80007730:	00008067          	ret

0000000080007734 <plic_claim>:
    80007734:	ff010113          	addi	sp,sp,-16
    80007738:	00813023          	sd	s0,0(sp)
    8000773c:	00113423          	sd	ra,8(sp)
    80007740:	01010413          	addi	s0,sp,16
    80007744:	00000097          	auipc	ra,0x0
    80007748:	a00080e7          	jalr	-1536(ra) # 80007144 <cpuid>
    8000774c:	00813083          	ld	ra,8(sp)
    80007750:	00013403          	ld	s0,0(sp)
    80007754:	00d5151b          	slliw	a0,a0,0xd
    80007758:	0c2017b7          	lui	a5,0xc201
    8000775c:	00a78533          	add	a0,a5,a0
    80007760:	00452503          	lw	a0,4(a0)
    80007764:	01010113          	addi	sp,sp,16
    80007768:	00008067          	ret

000000008000776c <plic_complete>:
    8000776c:	fe010113          	addi	sp,sp,-32
    80007770:	00813823          	sd	s0,16(sp)
    80007774:	00913423          	sd	s1,8(sp)
    80007778:	00113c23          	sd	ra,24(sp)
    8000777c:	02010413          	addi	s0,sp,32
    80007780:	00050493          	mv	s1,a0
    80007784:	00000097          	auipc	ra,0x0
    80007788:	9c0080e7          	jalr	-1600(ra) # 80007144 <cpuid>
    8000778c:	01813083          	ld	ra,24(sp)
    80007790:	01013403          	ld	s0,16(sp)
    80007794:	00d5179b          	slliw	a5,a0,0xd
    80007798:	0c201737          	lui	a4,0xc201
    8000779c:	00f707b3          	add	a5,a4,a5
    800077a0:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    800077a4:	00813483          	ld	s1,8(sp)
    800077a8:	02010113          	addi	sp,sp,32
    800077ac:	00008067          	ret

00000000800077b0 <consolewrite>:
    800077b0:	fb010113          	addi	sp,sp,-80
    800077b4:	04813023          	sd	s0,64(sp)
    800077b8:	04113423          	sd	ra,72(sp)
    800077bc:	02913c23          	sd	s1,56(sp)
    800077c0:	03213823          	sd	s2,48(sp)
    800077c4:	03313423          	sd	s3,40(sp)
    800077c8:	03413023          	sd	s4,32(sp)
    800077cc:	01513c23          	sd	s5,24(sp)
    800077d0:	05010413          	addi	s0,sp,80
    800077d4:	06c05c63          	blez	a2,8000784c <consolewrite+0x9c>
    800077d8:	00060993          	mv	s3,a2
    800077dc:	00050a13          	mv	s4,a0
    800077e0:	00058493          	mv	s1,a1
    800077e4:	00000913          	li	s2,0
    800077e8:	fff00a93          	li	s5,-1
    800077ec:	01c0006f          	j	80007808 <consolewrite+0x58>
    800077f0:	fbf44503          	lbu	a0,-65(s0)
    800077f4:	0019091b          	addiw	s2,s2,1
    800077f8:	00148493          	addi	s1,s1,1
    800077fc:	00001097          	auipc	ra,0x1
    80007800:	a9c080e7          	jalr	-1380(ra) # 80008298 <uartputc>
    80007804:	03298063          	beq	s3,s2,80007824 <consolewrite+0x74>
    80007808:	00048613          	mv	a2,s1
    8000780c:	00100693          	li	a3,1
    80007810:	000a0593          	mv	a1,s4
    80007814:	fbf40513          	addi	a0,s0,-65
    80007818:	00000097          	auipc	ra,0x0
    8000781c:	9e4080e7          	jalr	-1564(ra) # 800071fc <either_copyin>
    80007820:	fd5518e3          	bne	a0,s5,800077f0 <consolewrite+0x40>
    80007824:	04813083          	ld	ra,72(sp)
    80007828:	04013403          	ld	s0,64(sp)
    8000782c:	03813483          	ld	s1,56(sp)
    80007830:	02813983          	ld	s3,40(sp)
    80007834:	02013a03          	ld	s4,32(sp)
    80007838:	01813a83          	ld	s5,24(sp)
    8000783c:	00090513          	mv	a0,s2
    80007840:	03013903          	ld	s2,48(sp)
    80007844:	05010113          	addi	sp,sp,80
    80007848:	00008067          	ret
    8000784c:	00000913          	li	s2,0
    80007850:	fd5ff06f          	j	80007824 <consolewrite+0x74>

0000000080007854 <consoleread>:
    80007854:	f9010113          	addi	sp,sp,-112
    80007858:	06813023          	sd	s0,96(sp)
    8000785c:	04913c23          	sd	s1,88(sp)
    80007860:	05213823          	sd	s2,80(sp)
    80007864:	05313423          	sd	s3,72(sp)
    80007868:	05413023          	sd	s4,64(sp)
    8000786c:	03513c23          	sd	s5,56(sp)
    80007870:	03613823          	sd	s6,48(sp)
    80007874:	03713423          	sd	s7,40(sp)
    80007878:	03813023          	sd	s8,32(sp)
    8000787c:	06113423          	sd	ra,104(sp)
    80007880:	01913c23          	sd	s9,24(sp)
    80007884:	07010413          	addi	s0,sp,112
    80007888:	00060b93          	mv	s7,a2
    8000788c:	00050913          	mv	s2,a0
    80007890:	00058c13          	mv	s8,a1
    80007894:	00060b1b          	sext.w	s6,a2
    80007898:	00005497          	auipc	s1,0x5
    8000789c:	5f048493          	addi	s1,s1,1520 # 8000ce88 <cons>
    800078a0:	00400993          	li	s3,4
    800078a4:	fff00a13          	li	s4,-1
    800078a8:	00a00a93          	li	s5,10
    800078ac:	05705e63          	blez	s7,80007908 <consoleread+0xb4>
    800078b0:	09c4a703          	lw	a4,156(s1)
    800078b4:	0984a783          	lw	a5,152(s1)
    800078b8:	0007071b          	sext.w	a4,a4
    800078bc:	08e78463          	beq	a5,a4,80007944 <consoleread+0xf0>
    800078c0:	07f7f713          	andi	a4,a5,127
    800078c4:	00e48733          	add	a4,s1,a4
    800078c8:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    800078cc:	0017869b          	addiw	a3,a5,1
    800078d0:	08d4ac23          	sw	a3,152(s1)
    800078d4:	00070c9b          	sext.w	s9,a4
    800078d8:	0b370663          	beq	a4,s3,80007984 <consoleread+0x130>
    800078dc:	00100693          	li	a3,1
    800078e0:	f9f40613          	addi	a2,s0,-97
    800078e4:	000c0593          	mv	a1,s8
    800078e8:	00090513          	mv	a0,s2
    800078ec:	f8e40fa3          	sb	a4,-97(s0)
    800078f0:	00000097          	auipc	ra,0x0
    800078f4:	8c0080e7          	jalr	-1856(ra) # 800071b0 <either_copyout>
    800078f8:	01450863          	beq	a0,s4,80007908 <consoleread+0xb4>
    800078fc:	001c0c13          	addi	s8,s8,1
    80007900:	fffb8b9b          	addiw	s7,s7,-1
    80007904:	fb5c94e3          	bne	s9,s5,800078ac <consoleread+0x58>
    80007908:	000b851b          	sext.w	a0,s7
    8000790c:	06813083          	ld	ra,104(sp)
    80007910:	06013403          	ld	s0,96(sp)
    80007914:	05813483          	ld	s1,88(sp)
    80007918:	05013903          	ld	s2,80(sp)
    8000791c:	04813983          	ld	s3,72(sp)
    80007920:	04013a03          	ld	s4,64(sp)
    80007924:	03813a83          	ld	s5,56(sp)
    80007928:	02813b83          	ld	s7,40(sp)
    8000792c:	02013c03          	ld	s8,32(sp)
    80007930:	01813c83          	ld	s9,24(sp)
    80007934:	40ab053b          	subw	a0,s6,a0
    80007938:	03013b03          	ld	s6,48(sp)
    8000793c:	07010113          	addi	sp,sp,112
    80007940:	00008067          	ret
    80007944:	00001097          	auipc	ra,0x1
    80007948:	1d8080e7          	jalr	472(ra) # 80008b1c <push_on>
    8000794c:	0984a703          	lw	a4,152(s1)
    80007950:	09c4a783          	lw	a5,156(s1)
    80007954:	0007879b          	sext.w	a5,a5
    80007958:	fef70ce3          	beq	a4,a5,80007950 <consoleread+0xfc>
    8000795c:	00001097          	auipc	ra,0x1
    80007960:	234080e7          	jalr	564(ra) # 80008b90 <pop_on>
    80007964:	0984a783          	lw	a5,152(s1)
    80007968:	07f7f713          	andi	a4,a5,127
    8000796c:	00e48733          	add	a4,s1,a4
    80007970:	01874703          	lbu	a4,24(a4)
    80007974:	0017869b          	addiw	a3,a5,1
    80007978:	08d4ac23          	sw	a3,152(s1)
    8000797c:	00070c9b          	sext.w	s9,a4
    80007980:	f5371ee3          	bne	a4,s3,800078dc <consoleread+0x88>
    80007984:	000b851b          	sext.w	a0,s7
    80007988:	f96bf2e3          	bgeu	s7,s6,8000790c <consoleread+0xb8>
    8000798c:	08f4ac23          	sw	a5,152(s1)
    80007990:	f7dff06f          	j	8000790c <consoleread+0xb8>

0000000080007994 <consputc>:
    80007994:	10000793          	li	a5,256
    80007998:	00f50663          	beq	a0,a5,800079a4 <consputc+0x10>
    8000799c:	00001317          	auipc	t1,0x1
    800079a0:	9f430067          	jr	-1548(t1) # 80008390 <uartputc_sync>
    800079a4:	ff010113          	addi	sp,sp,-16
    800079a8:	00113423          	sd	ra,8(sp)
    800079ac:	00813023          	sd	s0,0(sp)
    800079b0:	01010413          	addi	s0,sp,16
    800079b4:	00800513          	li	a0,8
    800079b8:	00001097          	auipc	ra,0x1
    800079bc:	9d8080e7          	jalr	-1576(ra) # 80008390 <uartputc_sync>
    800079c0:	02000513          	li	a0,32
    800079c4:	00001097          	auipc	ra,0x1
    800079c8:	9cc080e7          	jalr	-1588(ra) # 80008390 <uartputc_sync>
    800079cc:	00013403          	ld	s0,0(sp)
    800079d0:	00813083          	ld	ra,8(sp)
    800079d4:	00800513          	li	a0,8
    800079d8:	01010113          	addi	sp,sp,16
    800079dc:	00001317          	auipc	t1,0x1
    800079e0:	9b430067          	jr	-1612(t1) # 80008390 <uartputc_sync>

00000000800079e4 <consoleintr>:
    800079e4:	fe010113          	addi	sp,sp,-32
    800079e8:	00813823          	sd	s0,16(sp)
    800079ec:	00913423          	sd	s1,8(sp)
    800079f0:	01213023          	sd	s2,0(sp)
    800079f4:	00113c23          	sd	ra,24(sp)
    800079f8:	02010413          	addi	s0,sp,32
    800079fc:	00005917          	auipc	s2,0x5
    80007a00:	48c90913          	addi	s2,s2,1164 # 8000ce88 <cons>
    80007a04:	00050493          	mv	s1,a0
    80007a08:	00090513          	mv	a0,s2
    80007a0c:	00001097          	auipc	ra,0x1
    80007a10:	e40080e7          	jalr	-448(ra) # 8000884c <acquire>
    80007a14:	02048c63          	beqz	s1,80007a4c <consoleintr+0x68>
    80007a18:	0a092783          	lw	a5,160(s2)
    80007a1c:	09892703          	lw	a4,152(s2)
    80007a20:	07f00693          	li	a3,127
    80007a24:	40e7873b          	subw	a4,a5,a4
    80007a28:	02e6e263          	bltu	a3,a4,80007a4c <consoleintr+0x68>
    80007a2c:	00d00713          	li	a4,13
    80007a30:	04e48063          	beq	s1,a4,80007a70 <consoleintr+0x8c>
    80007a34:	07f7f713          	andi	a4,a5,127
    80007a38:	00e90733          	add	a4,s2,a4
    80007a3c:	0017879b          	addiw	a5,a5,1
    80007a40:	0af92023          	sw	a5,160(s2)
    80007a44:	00970c23          	sb	s1,24(a4)
    80007a48:	08f92e23          	sw	a5,156(s2)
    80007a4c:	01013403          	ld	s0,16(sp)
    80007a50:	01813083          	ld	ra,24(sp)
    80007a54:	00813483          	ld	s1,8(sp)
    80007a58:	00013903          	ld	s2,0(sp)
    80007a5c:	00005517          	auipc	a0,0x5
    80007a60:	42c50513          	addi	a0,a0,1068 # 8000ce88 <cons>
    80007a64:	02010113          	addi	sp,sp,32
    80007a68:	00001317          	auipc	t1,0x1
    80007a6c:	eb030067          	jr	-336(t1) # 80008918 <release>
    80007a70:	00a00493          	li	s1,10
    80007a74:	fc1ff06f          	j	80007a34 <consoleintr+0x50>

0000000080007a78 <consoleinit>:
    80007a78:	fe010113          	addi	sp,sp,-32
    80007a7c:	00113c23          	sd	ra,24(sp)
    80007a80:	00813823          	sd	s0,16(sp)
    80007a84:	00913423          	sd	s1,8(sp)
    80007a88:	02010413          	addi	s0,sp,32
    80007a8c:	00005497          	auipc	s1,0x5
    80007a90:	3fc48493          	addi	s1,s1,1020 # 8000ce88 <cons>
    80007a94:	00048513          	mv	a0,s1
    80007a98:	00002597          	auipc	a1,0x2
    80007a9c:	b7858593          	addi	a1,a1,-1160 # 80009610 <CONSOLE_STATUS+0x600>
    80007aa0:	00001097          	auipc	ra,0x1
    80007aa4:	d88080e7          	jalr	-632(ra) # 80008828 <initlock>
    80007aa8:	00000097          	auipc	ra,0x0
    80007aac:	7ac080e7          	jalr	1964(ra) # 80008254 <uartinit>
    80007ab0:	01813083          	ld	ra,24(sp)
    80007ab4:	01013403          	ld	s0,16(sp)
    80007ab8:	00000797          	auipc	a5,0x0
    80007abc:	d9c78793          	addi	a5,a5,-612 # 80007854 <consoleread>
    80007ac0:	0af4bc23          	sd	a5,184(s1)
    80007ac4:	00000797          	auipc	a5,0x0
    80007ac8:	cec78793          	addi	a5,a5,-788 # 800077b0 <consolewrite>
    80007acc:	0cf4b023          	sd	a5,192(s1)
    80007ad0:	00813483          	ld	s1,8(sp)
    80007ad4:	02010113          	addi	sp,sp,32
    80007ad8:	00008067          	ret

0000000080007adc <console_read>:
    80007adc:	ff010113          	addi	sp,sp,-16
    80007ae0:	00813423          	sd	s0,8(sp)
    80007ae4:	01010413          	addi	s0,sp,16
    80007ae8:	00813403          	ld	s0,8(sp)
    80007aec:	00005317          	auipc	t1,0x5
    80007af0:	45433303          	ld	t1,1108(t1) # 8000cf40 <devsw+0x10>
    80007af4:	01010113          	addi	sp,sp,16
    80007af8:	00030067          	jr	t1

0000000080007afc <console_write>:
    80007afc:	ff010113          	addi	sp,sp,-16
    80007b00:	00813423          	sd	s0,8(sp)
    80007b04:	01010413          	addi	s0,sp,16
    80007b08:	00813403          	ld	s0,8(sp)
    80007b0c:	00005317          	auipc	t1,0x5
    80007b10:	43c33303          	ld	t1,1084(t1) # 8000cf48 <devsw+0x18>
    80007b14:	01010113          	addi	sp,sp,16
    80007b18:	00030067          	jr	t1

0000000080007b1c <panic>:
    80007b1c:	fe010113          	addi	sp,sp,-32
    80007b20:	00113c23          	sd	ra,24(sp)
    80007b24:	00813823          	sd	s0,16(sp)
    80007b28:	00913423          	sd	s1,8(sp)
    80007b2c:	02010413          	addi	s0,sp,32
    80007b30:	00050493          	mv	s1,a0
    80007b34:	00002517          	auipc	a0,0x2
    80007b38:	ae450513          	addi	a0,a0,-1308 # 80009618 <CONSOLE_STATUS+0x608>
    80007b3c:	00005797          	auipc	a5,0x5
    80007b40:	4a07a623          	sw	zero,1196(a5) # 8000cfe8 <pr+0x18>
    80007b44:	00000097          	auipc	ra,0x0
    80007b48:	034080e7          	jalr	52(ra) # 80007b78 <__printf>
    80007b4c:	00048513          	mv	a0,s1
    80007b50:	00000097          	auipc	ra,0x0
    80007b54:	028080e7          	jalr	40(ra) # 80007b78 <__printf>
    80007b58:	00002517          	auipc	a0,0x2
    80007b5c:	80050513          	addi	a0,a0,-2048 # 80009358 <CONSOLE_STATUS+0x348>
    80007b60:	00000097          	auipc	ra,0x0
    80007b64:	018080e7          	jalr	24(ra) # 80007b78 <__printf>
    80007b68:	00100793          	li	a5,1
    80007b6c:	00004717          	auipc	a4,0x4
    80007b70:	04f72e23          	sw	a5,92(a4) # 8000bbc8 <panicked>
    80007b74:	0000006f          	j	80007b74 <panic+0x58>

0000000080007b78 <__printf>:
    80007b78:	f3010113          	addi	sp,sp,-208
    80007b7c:	08813023          	sd	s0,128(sp)
    80007b80:	07313423          	sd	s3,104(sp)
    80007b84:	09010413          	addi	s0,sp,144
    80007b88:	05813023          	sd	s8,64(sp)
    80007b8c:	08113423          	sd	ra,136(sp)
    80007b90:	06913c23          	sd	s1,120(sp)
    80007b94:	07213823          	sd	s2,112(sp)
    80007b98:	07413023          	sd	s4,96(sp)
    80007b9c:	05513c23          	sd	s5,88(sp)
    80007ba0:	05613823          	sd	s6,80(sp)
    80007ba4:	05713423          	sd	s7,72(sp)
    80007ba8:	03913c23          	sd	s9,56(sp)
    80007bac:	03a13823          	sd	s10,48(sp)
    80007bb0:	03b13423          	sd	s11,40(sp)
    80007bb4:	00005317          	auipc	t1,0x5
    80007bb8:	41c30313          	addi	t1,t1,1052 # 8000cfd0 <pr>
    80007bbc:	01832c03          	lw	s8,24(t1)
    80007bc0:	00b43423          	sd	a1,8(s0)
    80007bc4:	00c43823          	sd	a2,16(s0)
    80007bc8:	00d43c23          	sd	a3,24(s0)
    80007bcc:	02e43023          	sd	a4,32(s0)
    80007bd0:	02f43423          	sd	a5,40(s0)
    80007bd4:	03043823          	sd	a6,48(s0)
    80007bd8:	03143c23          	sd	a7,56(s0)
    80007bdc:	00050993          	mv	s3,a0
    80007be0:	4a0c1663          	bnez	s8,8000808c <__printf+0x514>
    80007be4:	60098c63          	beqz	s3,800081fc <__printf+0x684>
    80007be8:	0009c503          	lbu	a0,0(s3)
    80007bec:	00840793          	addi	a5,s0,8
    80007bf0:	f6f43c23          	sd	a5,-136(s0)
    80007bf4:	00000493          	li	s1,0
    80007bf8:	22050063          	beqz	a0,80007e18 <__printf+0x2a0>
    80007bfc:	00002a37          	lui	s4,0x2
    80007c00:	00018ab7          	lui	s5,0x18
    80007c04:	000f4b37          	lui	s6,0xf4
    80007c08:	00989bb7          	lui	s7,0x989
    80007c0c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80007c10:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80007c14:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80007c18:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    80007c1c:	00148c9b          	addiw	s9,s1,1
    80007c20:	02500793          	li	a5,37
    80007c24:	01998933          	add	s2,s3,s9
    80007c28:	38f51263          	bne	a0,a5,80007fac <__printf+0x434>
    80007c2c:	00094783          	lbu	a5,0(s2)
    80007c30:	00078c9b          	sext.w	s9,a5
    80007c34:	1e078263          	beqz	a5,80007e18 <__printf+0x2a0>
    80007c38:	0024849b          	addiw	s1,s1,2
    80007c3c:	07000713          	li	a4,112
    80007c40:	00998933          	add	s2,s3,s1
    80007c44:	38e78a63          	beq	a5,a4,80007fd8 <__printf+0x460>
    80007c48:	20f76863          	bltu	a4,a5,80007e58 <__printf+0x2e0>
    80007c4c:	42a78863          	beq	a5,a0,8000807c <__printf+0x504>
    80007c50:	06400713          	li	a4,100
    80007c54:	40e79663          	bne	a5,a4,80008060 <__printf+0x4e8>
    80007c58:	f7843783          	ld	a5,-136(s0)
    80007c5c:	0007a603          	lw	a2,0(a5)
    80007c60:	00878793          	addi	a5,a5,8
    80007c64:	f6f43c23          	sd	a5,-136(s0)
    80007c68:	42064a63          	bltz	a2,8000809c <__printf+0x524>
    80007c6c:	00a00713          	li	a4,10
    80007c70:	02e677bb          	remuw	a5,a2,a4
    80007c74:	00002d97          	auipc	s11,0x2
    80007c78:	9ccd8d93          	addi	s11,s11,-1588 # 80009640 <digits>
    80007c7c:	00900593          	li	a1,9
    80007c80:	0006051b          	sext.w	a0,a2
    80007c84:	00000c93          	li	s9,0
    80007c88:	02079793          	slli	a5,a5,0x20
    80007c8c:	0207d793          	srli	a5,a5,0x20
    80007c90:	00fd87b3          	add	a5,s11,a5
    80007c94:	0007c783          	lbu	a5,0(a5)
    80007c98:	02e656bb          	divuw	a3,a2,a4
    80007c9c:	f8f40023          	sb	a5,-128(s0)
    80007ca0:	14c5d863          	bge	a1,a2,80007df0 <__printf+0x278>
    80007ca4:	06300593          	li	a1,99
    80007ca8:	00100c93          	li	s9,1
    80007cac:	02e6f7bb          	remuw	a5,a3,a4
    80007cb0:	02079793          	slli	a5,a5,0x20
    80007cb4:	0207d793          	srli	a5,a5,0x20
    80007cb8:	00fd87b3          	add	a5,s11,a5
    80007cbc:	0007c783          	lbu	a5,0(a5)
    80007cc0:	02e6d73b          	divuw	a4,a3,a4
    80007cc4:	f8f400a3          	sb	a5,-127(s0)
    80007cc8:	12a5f463          	bgeu	a1,a0,80007df0 <__printf+0x278>
    80007ccc:	00a00693          	li	a3,10
    80007cd0:	00900593          	li	a1,9
    80007cd4:	02d777bb          	remuw	a5,a4,a3
    80007cd8:	02079793          	slli	a5,a5,0x20
    80007cdc:	0207d793          	srli	a5,a5,0x20
    80007ce0:	00fd87b3          	add	a5,s11,a5
    80007ce4:	0007c503          	lbu	a0,0(a5)
    80007ce8:	02d757bb          	divuw	a5,a4,a3
    80007cec:	f8a40123          	sb	a0,-126(s0)
    80007cf0:	48e5f263          	bgeu	a1,a4,80008174 <__printf+0x5fc>
    80007cf4:	06300513          	li	a0,99
    80007cf8:	02d7f5bb          	remuw	a1,a5,a3
    80007cfc:	02059593          	slli	a1,a1,0x20
    80007d00:	0205d593          	srli	a1,a1,0x20
    80007d04:	00bd85b3          	add	a1,s11,a1
    80007d08:	0005c583          	lbu	a1,0(a1)
    80007d0c:	02d7d7bb          	divuw	a5,a5,a3
    80007d10:	f8b401a3          	sb	a1,-125(s0)
    80007d14:	48e57263          	bgeu	a0,a4,80008198 <__printf+0x620>
    80007d18:	3e700513          	li	a0,999
    80007d1c:	02d7f5bb          	remuw	a1,a5,a3
    80007d20:	02059593          	slli	a1,a1,0x20
    80007d24:	0205d593          	srli	a1,a1,0x20
    80007d28:	00bd85b3          	add	a1,s11,a1
    80007d2c:	0005c583          	lbu	a1,0(a1)
    80007d30:	02d7d7bb          	divuw	a5,a5,a3
    80007d34:	f8b40223          	sb	a1,-124(s0)
    80007d38:	46e57663          	bgeu	a0,a4,800081a4 <__printf+0x62c>
    80007d3c:	02d7f5bb          	remuw	a1,a5,a3
    80007d40:	02059593          	slli	a1,a1,0x20
    80007d44:	0205d593          	srli	a1,a1,0x20
    80007d48:	00bd85b3          	add	a1,s11,a1
    80007d4c:	0005c583          	lbu	a1,0(a1)
    80007d50:	02d7d7bb          	divuw	a5,a5,a3
    80007d54:	f8b402a3          	sb	a1,-123(s0)
    80007d58:	46ea7863          	bgeu	s4,a4,800081c8 <__printf+0x650>
    80007d5c:	02d7f5bb          	remuw	a1,a5,a3
    80007d60:	02059593          	slli	a1,a1,0x20
    80007d64:	0205d593          	srli	a1,a1,0x20
    80007d68:	00bd85b3          	add	a1,s11,a1
    80007d6c:	0005c583          	lbu	a1,0(a1)
    80007d70:	02d7d7bb          	divuw	a5,a5,a3
    80007d74:	f8b40323          	sb	a1,-122(s0)
    80007d78:	3eeaf863          	bgeu	s5,a4,80008168 <__printf+0x5f0>
    80007d7c:	02d7f5bb          	remuw	a1,a5,a3
    80007d80:	02059593          	slli	a1,a1,0x20
    80007d84:	0205d593          	srli	a1,a1,0x20
    80007d88:	00bd85b3          	add	a1,s11,a1
    80007d8c:	0005c583          	lbu	a1,0(a1)
    80007d90:	02d7d7bb          	divuw	a5,a5,a3
    80007d94:	f8b403a3          	sb	a1,-121(s0)
    80007d98:	42eb7e63          	bgeu	s6,a4,800081d4 <__printf+0x65c>
    80007d9c:	02d7f5bb          	remuw	a1,a5,a3
    80007da0:	02059593          	slli	a1,a1,0x20
    80007da4:	0205d593          	srli	a1,a1,0x20
    80007da8:	00bd85b3          	add	a1,s11,a1
    80007dac:	0005c583          	lbu	a1,0(a1)
    80007db0:	02d7d7bb          	divuw	a5,a5,a3
    80007db4:	f8b40423          	sb	a1,-120(s0)
    80007db8:	42ebfc63          	bgeu	s7,a4,800081f0 <__printf+0x678>
    80007dbc:	02079793          	slli	a5,a5,0x20
    80007dc0:	0207d793          	srli	a5,a5,0x20
    80007dc4:	00fd8db3          	add	s11,s11,a5
    80007dc8:	000dc703          	lbu	a4,0(s11)
    80007dcc:	00a00793          	li	a5,10
    80007dd0:	00900c93          	li	s9,9
    80007dd4:	f8e404a3          	sb	a4,-119(s0)
    80007dd8:	00065c63          	bgez	a2,80007df0 <__printf+0x278>
    80007ddc:	f9040713          	addi	a4,s0,-112
    80007de0:	00f70733          	add	a4,a4,a5
    80007de4:	02d00693          	li	a3,45
    80007de8:	fed70823          	sb	a3,-16(a4)
    80007dec:	00078c93          	mv	s9,a5
    80007df0:	f8040793          	addi	a5,s0,-128
    80007df4:	01978cb3          	add	s9,a5,s9
    80007df8:	f7f40d13          	addi	s10,s0,-129
    80007dfc:	000cc503          	lbu	a0,0(s9)
    80007e00:	fffc8c93          	addi	s9,s9,-1
    80007e04:	00000097          	auipc	ra,0x0
    80007e08:	b90080e7          	jalr	-1136(ra) # 80007994 <consputc>
    80007e0c:	ffac98e3          	bne	s9,s10,80007dfc <__printf+0x284>
    80007e10:	00094503          	lbu	a0,0(s2)
    80007e14:	e00514e3          	bnez	a0,80007c1c <__printf+0xa4>
    80007e18:	1a0c1663          	bnez	s8,80007fc4 <__printf+0x44c>
    80007e1c:	08813083          	ld	ra,136(sp)
    80007e20:	08013403          	ld	s0,128(sp)
    80007e24:	07813483          	ld	s1,120(sp)
    80007e28:	07013903          	ld	s2,112(sp)
    80007e2c:	06813983          	ld	s3,104(sp)
    80007e30:	06013a03          	ld	s4,96(sp)
    80007e34:	05813a83          	ld	s5,88(sp)
    80007e38:	05013b03          	ld	s6,80(sp)
    80007e3c:	04813b83          	ld	s7,72(sp)
    80007e40:	04013c03          	ld	s8,64(sp)
    80007e44:	03813c83          	ld	s9,56(sp)
    80007e48:	03013d03          	ld	s10,48(sp)
    80007e4c:	02813d83          	ld	s11,40(sp)
    80007e50:	0d010113          	addi	sp,sp,208
    80007e54:	00008067          	ret
    80007e58:	07300713          	li	a4,115
    80007e5c:	1ce78a63          	beq	a5,a4,80008030 <__printf+0x4b8>
    80007e60:	07800713          	li	a4,120
    80007e64:	1ee79e63          	bne	a5,a4,80008060 <__printf+0x4e8>
    80007e68:	f7843783          	ld	a5,-136(s0)
    80007e6c:	0007a703          	lw	a4,0(a5)
    80007e70:	00878793          	addi	a5,a5,8
    80007e74:	f6f43c23          	sd	a5,-136(s0)
    80007e78:	28074263          	bltz	a4,800080fc <__printf+0x584>
    80007e7c:	00001d97          	auipc	s11,0x1
    80007e80:	7c4d8d93          	addi	s11,s11,1988 # 80009640 <digits>
    80007e84:	00f77793          	andi	a5,a4,15
    80007e88:	00fd87b3          	add	a5,s11,a5
    80007e8c:	0007c683          	lbu	a3,0(a5)
    80007e90:	00f00613          	li	a2,15
    80007e94:	0007079b          	sext.w	a5,a4
    80007e98:	f8d40023          	sb	a3,-128(s0)
    80007e9c:	0047559b          	srliw	a1,a4,0x4
    80007ea0:	0047569b          	srliw	a3,a4,0x4
    80007ea4:	00000c93          	li	s9,0
    80007ea8:	0ee65063          	bge	a2,a4,80007f88 <__printf+0x410>
    80007eac:	00f6f693          	andi	a3,a3,15
    80007eb0:	00dd86b3          	add	a3,s11,a3
    80007eb4:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80007eb8:	0087d79b          	srliw	a5,a5,0x8
    80007ebc:	00100c93          	li	s9,1
    80007ec0:	f8d400a3          	sb	a3,-127(s0)
    80007ec4:	0cb67263          	bgeu	a2,a1,80007f88 <__printf+0x410>
    80007ec8:	00f7f693          	andi	a3,a5,15
    80007ecc:	00dd86b3          	add	a3,s11,a3
    80007ed0:	0006c583          	lbu	a1,0(a3)
    80007ed4:	00f00613          	li	a2,15
    80007ed8:	0047d69b          	srliw	a3,a5,0x4
    80007edc:	f8b40123          	sb	a1,-126(s0)
    80007ee0:	0047d593          	srli	a1,a5,0x4
    80007ee4:	28f67e63          	bgeu	a2,a5,80008180 <__printf+0x608>
    80007ee8:	00f6f693          	andi	a3,a3,15
    80007eec:	00dd86b3          	add	a3,s11,a3
    80007ef0:	0006c503          	lbu	a0,0(a3)
    80007ef4:	0087d813          	srli	a6,a5,0x8
    80007ef8:	0087d69b          	srliw	a3,a5,0x8
    80007efc:	f8a401a3          	sb	a0,-125(s0)
    80007f00:	28b67663          	bgeu	a2,a1,8000818c <__printf+0x614>
    80007f04:	00f6f693          	andi	a3,a3,15
    80007f08:	00dd86b3          	add	a3,s11,a3
    80007f0c:	0006c583          	lbu	a1,0(a3)
    80007f10:	00c7d513          	srli	a0,a5,0xc
    80007f14:	00c7d69b          	srliw	a3,a5,0xc
    80007f18:	f8b40223          	sb	a1,-124(s0)
    80007f1c:	29067a63          	bgeu	a2,a6,800081b0 <__printf+0x638>
    80007f20:	00f6f693          	andi	a3,a3,15
    80007f24:	00dd86b3          	add	a3,s11,a3
    80007f28:	0006c583          	lbu	a1,0(a3)
    80007f2c:	0107d813          	srli	a6,a5,0x10
    80007f30:	0107d69b          	srliw	a3,a5,0x10
    80007f34:	f8b402a3          	sb	a1,-123(s0)
    80007f38:	28a67263          	bgeu	a2,a0,800081bc <__printf+0x644>
    80007f3c:	00f6f693          	andi	a3,a3,15
    80007f40:	00dd86b3          	add	a3,s11,a3
    80007f44:	0006c683          	lbu	a3,0(a3)
    80007f48:	0147d79b          	srliw	a5,a5,0x14
    80007f4c:	f8d40323          	sb	a3,-122(s0)
    80007f50:	21067663          	bgeu	a2,a6,8000815c <__printf+0x5e4>
    80007f54:	02079793          	slli	a5,a5,0x20
    80007f58:	0207d793          	srli	a5,a5,0x20
    80007f5c:	00fd8db3          	add	s11,s11,a5
    80007f60:	000dc683          	lbu	a3,0(s11)
    80007f64:	00800793          	li	a5,8
    80007f68:	00700c93          	li	s9,7
    80007f6c:	f8d403a3          	sb	a3,-121(s0)
    80007f70:	00075c63          	bgez	a4,80007f88 <__printf+0x410>
    80007f74:	f9040713          	addi	a4,s0,-112
    80007f78:	00f70733          	add	a4,a4,a5
    80007f7c:	02d00693          	li	a3,45
    80007f80:	fed70823          	sb	a3,-16(a4)
    80007f84:	00078c93          	mv	s9,a5
    80007f88:	f8040793          	addi	a5,s0,-128
    80007f8c:	01978cb3          	add	s9,a5,s9
    80007f90:	f7f40d13          	addi	s10,s0,-129
    80007f94:	000cc503          	lbu	a0,0(s9)
    80007f98:	fffc8c93          	addi	s9,s9,-1
    80007f9c:	00000097          	auipc	ra,0x0
    80007fa0:	9f8080e7          	jalr	-1544(ra) # 80007994 <consputc>
    80007fa4:	ff9d18e3          	bne	s10,s9,80007f94 <__printf+0x41c>
    80007fa8:	0100006f          	j	80007fb8 <__printf+0x440>
    80007fac:	00000097          	auipc	ra,0x0
    80007fb0:	9e8080e7          	jalr	-1560(ra) # 80007994 <consputc>
    80007fb4:	000c8493          	mv	s1,s9
    80007fb8:	00094503          	lbu	a0,0(s2)
    80007fbc:	c60510e3          	bnez	a0,80007c1c <__printf+0xa4>
    80007fc0:	e40c0ee3          	beqz	s8,80007e1c <__printf+0x2a4>
    80007fc4:	00005517          	auipc	a0,0x5
    80007fc8:	00c50513          	addi	a0,a0,12 # 8000cfd0 <pr>
    80007fcc:	00001097          	auipc	ra,0x1
    80007fd0:	94c080e7          	jalr	-1716(ra) # 80008918 <release>
    80007fd4:	e49ff06f          	j	80007e1c <__printf+0x2a4>
    80007fd8:	f7843783          	ld	a5,-136(s0)
    80007fdc:	03000513          	li	a0,48
    80007fe0:	01000d13          	li	s10,16
    80007fe4:	00878713          	addi	a4,a5,8
    80007fe8:	0007bc83          	ld	s9,0(a5)
    80007fec:	f6e43c23          	sd	a4,-136(s0)
    80007ff0:	00000097          	auipc	ra,0x0
    80007ff4:	9a4080e7          	jalr	-1628(ra) # 80007994 <consputc>
    80007ff8:	07800513          	li	a0,120
    80007ffc:	00000097          	auipc	ra,0x0
    80008000:	998080e7          	jalr	-1640(ra) # 80007994 <consputc>
    80008004:	00001d97          	auipc	s11,0x1
    80008008:	63cd8d93          	addi	s11,s11,1596 # 80009640 <digits>
    8000800c:	03ccd793          	srli	a5,s9,0x3c
    80008010:	00fd87b3          	add	a5,s11,a5
    80008014:	0007c503          	lbu	a0,0(a5)
    80008018:	fffd0d1b          	addiw	s10,s10,-1
    8000801c:	004c9c93          	slli	s9,s9,0x4
    80008020:	00000097          	auipc	ra,0x0
    80008024:	974080e7          	jalr	-1676(ra) # 80007994 <consputc>
    80008028:	fe0d12e3          	bnez	s10,8000800c <__printf+0x494>
    8000802c:	f8dff06f          	j	80007fb8 <__printf+0x440>
    80008030:	f7843783          	ld	a5,-136(s0)
    80008034:	0007bc83          	ld	s9,0(a5)
    80008038:	00878793          	addi	a5,a5,8
    8000803c:	f6f43c23          	sd	a5,-136(s0)
    80008040:	000c9a63          	bnez	s9,80008054 <__printf+0x4dc>
    80008044:	1080006f          	j	8000814c <__printf+0x5d4>
    80008048:	001c8c93          	addi	s9,s9,1
    8000804c:	00000097          	auipc	ra,0x0
    80008050:	948080e7          	jalr	-1720(ra) # 80007994 <consputc>
    80008054:	000cc503          	lbu	a0,0(s9)
    80008058:	fe0518e3          	bnez	a0,80008048 <__printf+0x4d0>
    8000805c:	f5dff06f          	j	80007fb8 <__printf+0x440>
    80008060:	02500513          	li	a0,37
    80008064:	00000097          	auipc	ra,0x0
    80008068:	930080e7          	jalr	-1744(ra) # 80007994 <consputc>
    8000806c:	000c8513          	mv	a0,s9
    80008070:	00000097          	auipc	ra,0x0
    80008074:	924080e7          	jalr	-1756(ra) # 80007994 <consputc>
    80008078:	f41ff06f          	j	80007fb8 <__printf+0x440>
    8000807c:	02500513          	li	a0,37
    80008080:	00000097          	auipc	ra,0x0
    80008084:	914080e7          	jalr	-1772(ra) # 80007994 <consputc>
    80008088:	f31ff06f          	j	80007fb8 <__printf+0x440>
    8000808c:	00030513          	mv	a0,t1
    80008090:	00000097          	auipc	ra,0x0
    80008094:	7bc080e7          	jalr	1980(ra) # 8000884c <acquire>
    80008098:	b4dff06f          	j	80007be4 <__printf+0x6c>
    8000809c:	40c0053b          	negw	a0,a2
    800080a0:	00a00713          	li	a4,10
    800080a4:	02e576bb          	remuw	a3,a0,a4
    800080a8:	00001d97          	auipc	s11,0x1
    800080ac:	598d8d93          	addi	s11,s11,1432 # 80009640 <digits>
    800080b0:	ff700593          	li	a1,-9
    800080b4:	02069693          	slli	a3,a3,0x20
    800080b8:	0206d693          	srli	a3,a3,0x20
    800080bc:	00dd86b3          	add	a3,s11,a3
    800080c0:	0006c683          	lbu	a3,0(a3)
    800080c4:	02e557bb          	divuw	a5,a0,a4
    800080c8:	f8d40023          	sb	a3,-128(s0)
    800080cc:	10b65e63          	bge	a2,a1,800081e8 <__printf+0x670>
    800080d0:	06300593          	li	a1,99
    800080d4:	02e7f6bb          	remuw	a3,a5,a4
    800080d8:	02069693          	slli	a3,a3,0x20
    800080dc:	0206d693          	srli	a3,a3,0x20
    800080e0:	00dd86b3          	add	a3,s11,a3
    800080e4:	0006c683          	lbu	a3,0(a3)
    800080e8:	02e7d73b          	divuw	a4,a5,a4
    800080ec:	00200793          	li	a5,2
    800080f0:	f8d400a3          	sb	a3,-127(s0)
    800080f4:	bca5ece3          	bltu	a1,a0,80007ccc <__printf+0x154>
    800080f8:	ce5ff06f          	j	80007ddc <__printf+0x264>
    800080fc:	40e007bb          	negw	a5,a4
    80008100:	00001d97          	auipc	s11,0x1
    80008104:	540d8d93          	addi	s11,s11,1344 # 80009640 <digits>
    80008108:	00f7f693          	andi	a3,a5,15
    8000810c:	00dd86b3          	add	a3,s11,a3
    80008110:	0006c583          	lbu	a1,0(a3)
    80008114:	ff100613          	li	a2,-15
    80008118:	0047d69b          	srliw	a3,a5,0x4
    8000811c:	f8b40023          	sb	a1,-128(s0)
    80008120:	0047d59b          	srliw	a1,a5,0x4
    80008124:	0ac75e63          	bge	a4,a2,800081e0 <__printf+0x668>
    80008128:	00f6f693          	andi	a3,a3,15
    8000812c:	00dd86b3          	add	a3,s11,a3
    80008130:	0006c603          	lbu	a2,0(a3)
    80008134:	00f00693          	li	a3,15
    80008138:	0087d79b          	srliw	a5,a5,0x8
    8000813c:	f8c400a3          	sb	a2,-127(s0)
    80008140:	d8b6e4e3          	bltu	a3,a1,80007ec8 <__printf+0x350>
    80008144:	00200793          	li	a5,2
    80008148:	e2dff06f          	j	80007f74 <__printf+0x3fc>
    8000814c:	00001c97          	auipc	s9,0x1
    80008150:	4d4c8c93          	addi	s9,s9,1236 # 80009620 <CONSOLE_STATUS+0x610>
    80008154:	02800513          	li	a0,40
    80008158:	ef1ff06f          	j	80008048 <__printf+0x4d0>
    8000815c:	00700793          	li	a5,7
    80008160:	00600c93          	li	s9,6
    80008164:	e0dff06f          	j	80007f70 <__printf+0x3f8>
    80008168:	00700793          	li	a5,7
    8000816c:	00600c93          	li	s9,6
    80008170:	c69ff06f          	j	80007dd8 <__printf+0x260>
    80008174:	00300793          	li	a5,3
    80008178:	00200c93          	li	s9,2
    8000817c:	c5dff06f          	j	80007dd8 <__printf+0x260>
    80008180:	00300793          	li	a5,3
    80008184:	00200c93          	li	s9,2
    80008188:	de9ff06f          	j	80007f70 <__printf+0x3f8>
    8000818c:	00400793          	li	a5,4
    80008190:	00300c93          	li	s9,3
    80008194:	dddff06f          	j	80007f70 <__printf+0x3f8>
    80008198:	00400793          	li	a5,4
    8000819c:	00300c93          	li	s9,3
    800081a0:	c39ff06f          	j	80007dd8 <__printf+0x260>
    800081a4:	00500793          	li	a5,5
    800081a8:	00400c93          	li	s9,4
    800081ac:	c2dff06f          	j	80007dd8 <__printf+0x260>
    800081b0:	00500793          	li	a5,5
    800081b4:	00400c93          	li	s9,4
    800081b8:	db9ff06f          	j	80007f70 <__printf+0x3f8>
    800081bc:	00600793          	li	a5,6
    800081c0:	00500c93          	li	s9,5
    800081c4:	dadff06f          	j	80007f70 <__printf+0x3f8>
    800081c8:	00600793          	li	a5,6
    800081cc:	00500c93          	li	s9,5
    800081d0:	c09ff06f          	j	80007dd8 <__printf+0x260>
    800081d4:	00800793          	li	a5,8
    800081d8:	00700c93          	li	s9,7
    800081dc:	bfdff06f          	j	80007dd8 <__printf+0x260>
    800081e0:	00100793          	li	a5,1
    800081e4:	d91ff06f          	j	80007f74 <__printf+0x3fc>
    800081e8:	00100793          	li	a5,1
    800081ec:	bf1ff06f          	j	80007ddc <__printf+0x264>
    800081f0:	00900793          	li	a5,9
    800081f4:	00800c93          	li	s9,8
    800081f8:	be1ff06f          	j	80007dd8 <__printf+0x260>
    800081fc:	00001517          	auipc	a0,0x1
    80008200:	42c50513          	addi	a0,a0,1068 # 80009628 <CONSOLE_STATUS+0x618>
    80008204:	00000097          	auipc	ra,0x0
    80008208:	918080e7          	jalr	-1768(ra) # 80007b1c <panic>

000000008000820c <printfinit>:
    8000820c:	fe010113          	addi	sp,sp,-32
    80008210:	00813823          	sd	s0,16(sp)
    80008214:	00913423          	sd	s1,8(sp)
    80008218:	00113c23          	sd	ra,24(sp)
    8000821c:	02010413          	addi	s0,sp,32
    80008220:	00005497          	auipc	s1,0x5
    80008224:	db048493          	addi	s1,s1,-592 # 8000cfd0 <pr>
    80008228:	00048513          	mv	a0,s1
    8000822c:	00001597          	auipc	a1,0x1
    80008230:	40c58593          	addi	a1,a1,1036 # 80009638 <CONSOLE_STATUS+0x628>
    80008234:	00000097          	auipc	ra,0x0
    80008238:	5f4080e7          	jalr	1524(ra) # 80008828 <initlock>
    8000823c:	01813083          	ld	ra,24(sp)
    80008240:	01013403          	ld	s0,16(sp)
    80008244:	0004ac23          	sw	zero,24(s1)
    80008248:	00813483          	ld	s1,8(sp)
    8000824c:	02010113          	addi	sp,sp,32
    80008250:	00008067          	ret

0000000080008254 <uartinit>:
    80008254:	ff010113          	addi	sp,sp,-16
    80008258:	00813423          	sd	s0,8(sp)
    8000825c:	01010413          	addi	s0,sp,16
    80008260:	100007b7          	lui	a5,0x10000
    80008264:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80008268:	f8000713          	li	a4,-128
    8000826c:	00e781a3          	sb	a4,3(a5)
    80008270:	00300713          	li	a4,3
    80008274:	00e78023          	sb	a4,0(a5)
    80008278:	000780a3          	sb	zero,1(a5)
    8000827c:	00e781a3          	sb	a4,3(a5)
    80008280:	00700693          	li	a3,7
    80008284:	00d78123          	sb	a3,2(a5)
    80008288:	00e780a3          	sb	a4,1(a5)
    8000828c:	00813403          	ld	s0,8(sp)
    80008290:	01010113          	addi	sp,sp,16
    80008294:	00008067          	ret

0000000080008298 <uartputc>:
    80008298:	00004797          	auipc	a5,0x4
    8000829c:	9307a783          	lw	a5,-1744(a5) # 8000bbc8 <panicked>
    800082a0:	00078463          	beqz	a5,800082a8 <uartputc+0x10>
    800082a4:	0000006f          	j	800082a4 <uartputc+0xc>
    800082a8:	fd010113          	addi	sp,sp,-48
    800082ac:	02813023          	sd	s0,32(sp)
    800082b0:	00913c23          	sd	s1,24(sp)
    800082b4:	01213823          	sd	s2,16(sp)
    800082b8:	01313423          	sd	s3,8(sp)
    800082bc:	02113423          	sd	ra,40(sp)
    800082c0:	03010413          	addi	s0,sp,48
    800082c4:	00004917          	auipc	s2,0x4
    800082c8:	90c90913          	addi	s2,s2,-1780 # 8000bbd0 <uart_tx_r>
    800082cc:	00093783          	ld	a5,0(s2)
    800082d0:	00004497          	auipc	s1,0x4
    800082d4:	90848493          	addi	s1,s1,-1784 # 8000bbd8 <uart_tx_w>
    800082d8:	0004b703          	ld	a4,0(s1)
    800082dc:	02078693          	addi	a3,a5,32
    800082e0:	00050993          	mv	s3,a0
    800082e4:	02e69c63          	bne	a3,a4,8000831c <uartputc+0x84>
    800082e8:	00001097          	auipc	ra,0x1
    800082ec:	834080e7          	jalr	-1996(ra) # 80008b1c <push_on>
    800082f0:	00093783          	ld	a5,0(s2)
    800082f4:	0004b703          	ld	a4,0(s1)
    800082f8:	02078793          	addi	a5,a5,32
    800082fc:	00e79463          	bne	a5,a4,80008304 <uartputc+0x6c>
    80008300:	0000006f          	j	80008300 <uartputc+0x68>
    80008304:	00001097          	auipc	ra,0x1
    80008308:	88c080e7          	jalr	-1908(ra) # 80008b90 <pop_on>
    8000830c:	00093783          	ld	a5,0(s2)
    80008310:	0004b703          	ld	a4,0(s1)
    80008314:	02078693          	addi	a3,a5,32
    80008318:	fce688e3          	beq	a3,a4,800082e8 <uartputc+0x50>
    8000831c:	01f77693          	andi	a3,a4,31
    80008320:	00005597          	auipc	a1,0x5
    80008324:	cd058593          	addi	a1,a1,-816 # 8000cff0 <uart_tx_buf>
    80008328:	00d586b3          	add	a3,a1,a3
    8000832c:	00170713          	addi	a4,a4,1
    80008330:	01368023          	sb	s3,0(a3)
    80008334:	00e4b023          	sd	a4,0(s1)
    80008338:	10000637          	lui	a2,0x10000
    8000833c:	02f71063          	bne	a4,a5,8000835c <uartputc+0xc4>
    80008340:	0340006f          	j	80008374 <uartputc+0xdc>
    80008344:	00074703          	lbu	a4,0(a4)
    80008348:	00f93023          	sd	a5,0(s2)
    8000834c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80008350:	00093783          	ld	a5,0(s2)
    80008354:	0004b703          	ld	a4,0(s1)
    80008358:	00f70e63          	beq	a4,a5,80008374 <uartputc+0xdc>
    8000835c:	00564683          	lbu	a3,5(a2)
    80008360:	01f7f713          	andi	a4,a5,31
    80008364:	00e58733          	add	a4,a1,a4
    80008368:	0206f693          	andi	a3,a3,32
    8000836c:	00178793          	addi	a5,a5,1
    80008370:	fc069ae3          	bnez	a3,80008344 <uartputc+0xac>
    80008374:	02813083          	ld	ra,40(sp)
    80008378:	02013403          	ld	s0,32(sp)
    8000837c:	01813483          	ld	s1,24(sp)
    80008380:	01013903          	ld	s2,16(sp)
    80008384:	00813983          	ld	s3,8(sp)
    80008388:	03010113          	addi	sp,sp,48
    8000838c:	00008067          	ret

0000000080008390 <uartputc_sync>:
    80008390:	ff010113          	addi	sp,sp,-16
    80008394:	00813423          	sd	s0,8(sp)
    80008398:	01010413          	addi	s0,sp,16
    8000839c:	00004717          	auipc	a4,0x4
    800083a0:	82c72703          	lw	a4,-2004(a4) # 8000bbc8 <panicked>
    800083a4:	02071663          	bnez	a4,800083d0 <uartputc_sync+0x40>
    800083a8:	00050793          	mv	a5,a0
    800083ac:	100006b7          	lui	a3,0x10000
    800083b0:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    800083b4:	02077713          	andi	a4,a4,32
    800083b8:	fe070ce3          	beqz	a4,800083b0 <uartputc_sync+0x20>
    800083bc:	0ff7f793          	andi	a5,a5,255
    800083c0:	00f68023          	sb	a5,0(a3)
    800083c4:	00813403          	ld	s0,8(sp)
    800083c8:	01010113          	addi	sp,sp,16
    800083cc:	00008067          	ret
    800083d0:	0000006f          	j	800083d0 <uartputc_sync+0x40>

00000000800083d4 <uartstart>:
    800083d4:	ff010113          	addi	sp,sp,-16
    800083d8:	00813423          	sd	s0,8(sp)
    800083dc:	01010413          	addi	s0,sp,16
    800083e0:	00003617          	auipc	a2,0x3
    800083e4:	7f060613          	addi	a2,a2,2032 # 8000bbd0 <uart_tx_r>
    800083e8:	00003517          	auipc	a0,0x3
    800083ec:	7f050513          	addi	a0,a0,2032 # 8000bbd8 <uart_tx_w>
    800083f0:	00063783          	ld	a5,0(a2)
    800083f4:	00053703          	ld	a4,0(a0)
    800083f8:	04f70263          	beq	a4,a5,8000843c <uartstart+0x68>
    800083fc:	100005b7          	lui	a1,0x10000
    80008400:	00005817          	auipc	a6,0x5
    80008404:	bf080813          	addi	a6,a6,-1040 # 8000cff0 <uart_tx_buf>
    80008408:	01c0006f          	j	80008424 <uartstart+0x50>
    8000840c:	0006c703          	lbu	a4,0(a3)
    80008410:	00f63023          	sd	a5,0(a2)
    80008414:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80008418:	00063783          	ld	a5,0(a2)
    8000841c:	00053703          	ld	a4,0(a0)
    80008420:	00f70e63          	beq	a4,a5,8000843c <uartstart+0x68>
    80008424:	01f7f713          	andi	a4,a5,31
    80008428:	00e806b3          	add	a3,a6,a4
    8000842c:	0055c703          	lbu	a4,5(a1)
    80008430:	00178793          	addi	a5,a5,1
    80008434:	02077713          	andi	a4,a4,32
    80008438:	fc071ae3          	bnez	a4,8000840c <uartstart+0x38>
    8000843c:	00813403          	ld	s0,8(sp)
    80008440:	01010113          	addi	sp,sp,16
    80008444:	00008067          	ret

0000000080008448 <uartgetc>:
    80008448:	ff010113          	addi	sp,sp,-16
    8000844c:	00813423          	sd	s0,8(sp)
    80008450:	01010413          	addi	s0,sp,16
    80008454:	10000737          	lui	a4,0x10000
    80008458:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    8000845c:	0017f793          	andi	a5,a5,1
    80008460:	00078c63          	beqz	a5,80008478 <uartgetc+0x30>
    80008464:	00074503          	lbu	a0,0(a4)
    80008468:	0ff57513          	andi	a0,a0,255
    8000846c:	00813403          	ld	s0,8(sp)
    80008470:	01010113          	addi	sp,sp,16
    80008474:	00008067          	ret
    80008478:	fff00513          	li	a0,-1
    8000847c:	ff1ff06f          	j	8000846c <uartgetc+0x24>

0000000080008480 <uartintr>:
    80008480:	100007b7          	lui	a5,0x10000
    80008484:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80008488:	0017f793          	andi	a5,a5,1
    8000848c:	0a078463          	beqz	a5,80008534 <uartintr+0xb4>
    80008490:	fe010113          	addi	sp,sp,-32
    80008494:	00813823          	sd	s0,16(sp)
    80008498:	00913423          	sd	s1,8(sp)
    8000849c:	00113c23          	sd	ra,24(sp)
    800084a0:	02010413          	addi	s0,sp,32
    800084a4:	100004b7          	lui	s1,0x10000
    800084a8:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    800084ac:	0ff57513          	andi	a0,a0,255
    800084b0:	fffff097          	auipc	ra,0xfffff
    800084b4:	534080e7          	jalr	1332(ra) # 800079e4 <consoleintr>
    800084b8:	0054c783          	lbu	a5,5(s1)
    800084bc:	0017f793          	andi	a5,a5,1
    800084c0:	fe0794e3          	bnez	a5,800084a8 <uartintr+0x28>
    800084c4:	00003617          	auipc	a2,0x3
    800084c8:	70c60613          	addi	a2,a2,1804 # 8000bbd0 <uart_tx_r>
    800084cc:	00003517          	auipc	a0,0x3
    800084d0:	70c50513          	addi	a0,a0,1804 # 8000bbd8 <uart_tx_w>
    800084d4:	00063783          	ld	a5,0(a2)
    800084d8:	00053703          	ld	a4,0(a0)
    800084dc:	04f70263          	beq	a4,a5,80008520 <uartintr+0xa0>
    800084e0:	100005b7          	lui	a1,0x10000
    800084e4:	00005817          	auipc	a6,0x5
    800084e8:	b0c80813          	addi	a6,a6,-1268 # 8000cff0 <uart_tx_buf>
    800084ec:	01c0006f          	j	80008508 <uartintr+0x88>
    800084f0:	0006c703          	lbu	a4,0(a3)
    800084f4:	00f63023          	sd	a5,0(a2)
    800084f8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800084fc:	00063783          	ld	a5,0(a2)
    80008500:	00053703          	ld	a4,0(a0)
    80008504:	00f70e63          	beq	a4,a5,80008520 <uartintr+0xa0>
    80008508:	01f7f713          	andi	a4,a5,31
    8000850c:	00e806b3          	add	a3,a6,a4
    80008510:	0055c703          	lbu	a4,5(a1)
    80008514:	00178793          	addi	a5,a5,1
    80008518:	02077713          	andi	a4,a4,32
    8000851c:	fc071ae3          	bnez	a4,800084f0 <uartintr+0x70>
    80008520:	01813083          	ld	ra,24(sp)
    80008524:	01013403          	ld	s0,16(sp)
    80008528:	00813483          	ld	s1,8(sp)
    8000852c:	02010113          	addi	sp,sp,32
    80008530:	00008067          	ret
    80008534:	00003617          	auipc	a2,0x3
    80008538:	69c60613          	addi	a2,a2,1692 # 8000bbd0 <uart_tx_r>
    8000853c:	00003517          	auipc	a0,0x3
    80008540:	69c50513          	addi	a0,a0,1692 # 8000bbd8 <uart_tx_w>
    80008544:	00063783          	ld	a5,0(a2)
    80008548:	00053703          	ld	a4,0(a0)
    8000854c:	04f70263          	beq	a4,a5,80008590 <uartintr+0x110>
    80008550:	100005b7          	lui	a1,0x10000
    80008554:	00005817          	auipc	a6,0x5
    80008558:	a9c80813          	addi	a6,a6,-1380 # 8000cff0 <uart_tx_buf>
    8000855c:	01c0006f          	j	80008578 <uartintr+0xf8>
    80008560:	0006c703          	lbu	a4,0(a3)
    80008564:	00f63023          	sd	a5,0(a2)
    80008568:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000856c:	00063783          	ld	a5,0(a2)
    80008570:	00053703          	ld	a4,0(a0)
    80008574:	02f70063          	beq	a4,a5,80008594 <uartintr+0x114>
    80008578:	01f7f713          	andi	a4,a5,31
    8000857c:	00e806b3          	add	a3,a6,a4
    80008580:	0055c703          	lbu	a4,5(a1)
    80008584:	00178793          	addi	a5,a5,1
    80008588:	02077713          	andi	a4,a4,32
    8000858c:	fc071ae3          	bnez	a4,80008560 <uartintr+0xe0>
    80008590:	00008067          	ret
    80008594:	00008067          	ret

0000000080008598 <kinit>:
    80008598:	fc010113          	addi	sp,sp,-64
    8000859c:	02913423          	sd	s1,40(sp)
    800085a0:	fffff7b7          	lui	a5,0xfffff
    800085a4:	00006497          	auipc	s1,0x6
    800085a8:	a6b48493          	addi	s1,s1,-1429 # 8000e00f <end+0xfff>
    800085ac:	02813823          	sd	s0,48(sp)
    800085b0:	01313c23          	sd	s3,24(sp)
    800085b4:	00f4f4b3          	and	s1,s1,a5
    800085b8:	02113c23          	sd	ra,56(sp)
    800085bc:	03213023          	sd	s2,32(sp)
    800085c0:	01413823          	sd	s4,16(sp)
    800085c4:	01513423          	sd	s5,8(sp)
    800085c8:	04010413          	addi	s0,sp,64
    800085cc:	000017b7          	lui	a5,0x1
    800085d0:	01100993          	li	s3,17
    800085d4:	00f487b3          	add	a5,s1,a5
    800085d8:	01b99993          	slli	s3,s3,0x1b
    800085dc:	06f9e063          	bltu	s3,a5,8000863c <kinit+0xa4>
    800085e0:	00005a97          	auipc	s5,0x5
    800085e4:	a30a8a93          	addi	s5,s5,-1488 # 8000d010 <end>
    800085e8:	0754ec63          	bltu	s1,s5,80008660 <kinit+0xc8>
    800085ec:	0734fa63          	bgeu	s1,s3,80008660 <kinit+0xc8>
    800085f0:	00088a37          	lui	s4,0x88
    800085f4:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    800085f8:	00003917          	auipc	s2,0x3
    800085fc:	5e890913          	addi	s2,s2,1512 # 8000bbe0 <kmem>
    80008600:	00ca1a13          	slli	s4,s4,0xc
    80008604:	0140006f          	j	80008618 <kinit+0x80>
    80008608:	000017b7          	lui	a5,0x1
    8000860c:	00f484b3          	add	s1,s1,a5
    80008610:	0554e863          	bltu	s1,s5,80008660 <kinit+0xc8>
    80008614:	0534f663          	bgeu	s1,s3,80008660 <kinit+0xc8>
    80008618:	00001637          	lui	a2,0x1
    8000861c:	00100593          	li	a1,1
    80008620:	00048513          	mv	a0,s1
    80008624:	00000097          	auipc	ra,0x0
    80008628:	5e4080e7          	jalr	1508(ra) # 80008c08 <__memset>
    8000862c:	00093783          	ld	a5,0(s2)
    80008630:	00f4b023          	sd	a5,0(s1)
    80008634:	00993023          	sd	s1,0(s2)
    80008638:	fd4498e3          	bne	s1,s4,80008608 <kinit+0x70>
    8000863c:	03813083          	ld	ra,56(sp)
    80008640:	03013403          	ld	s0,48(sp)
    80008644:	02813483          	ld	s1,40(sp)
    80008648:	02013903          	ld	s2,32(sp)
    8000864c:	01813983          	ld	s3,24(sp)
    80008650:	01013a03          	ld	s4,16(sp)
    80008654:	00813a83          	ld	s5,8(sp)
    80008658:	04010113          	addi	sp,sp,64
    8000865c:	00008067          	ret
    80008660:	00001517          	auipc	a0,0x1
    80008664:	ff850513          	addi	a0,a0,-8 # 80009658 <digits+0x18>
    80008668:	fffff097          	auipc	ra,0xfffff
    8000866c:	4b4080e7          	jalr	1204(ra) # 80007b1c <panic>

0000000080008670 <freerange>:
    80008670:	fc010113          	addi	sp,sp,-64
    80008674:	000017b7          	lui	a5,0x1
    80008678:	02913423          	sd	s1,40(sp)
    8000867c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80008680:	009504b3          	add	s1,a0,s1
    80008684:	fffff537          	lui	a0,0xfffff
    80008688:	02813823          	sd	s0,48(sp)
    8000868c:	02113c23          	sd	ra,56(sp)
    80008690:	03213023          	sd	s2,32(sp)
    80008694:	01313c23          	sd	s3,24(sp)
    80008698:	01413823          	sd	s4,16(sp)
    8000869c:	01513423          	sd	s5,8(sp)
    800086a0:	01613023          	sd	s6,0(sp)
    800086a4:	04010413          	addi	s0,sp,64
    800086a8:	00a4f4b3          	and	s1,s1,a0
    800086ac:	00f487b3          	add	a5,s1,a5
    800086b0:	06f5e463          	bltu	a1,a5,80008718 <freerange+0xa8>
    800086b4:	00005a97          	auipc	s5,0x5
    800086b8:	95ca8a93          	addi	s5,s5,-1700 # 8000d010 <end>
    800086bc:	0954e263          	bltu	s1,s5,80008740 <freerange+0xd0>
    800086c0:	01100993          	li	s3,17
    800086c4:	01b99993          	slli	s3,s3,0x1b
    800086c8:	0734fc63          	bgeu	s1,s3,80008740 <freerange+0xd0>
    800086cc:	00058a13          	mv	s4,a1
    800086d0:	00003917          	auipc	s2,0x3
    800086d4:	51090913          	addi	s2,s2,1296 # 8000bbe0 <kmem>
    800086d8:	00002b37          	lui	s6,0x2
    800086dc:	0140006f          	j	800086f0 <freerange+0x80>
    800086e0:	000017b7          	lui	a5,0x1
    800086e4:	00f484b3          	add	s1,s1,a5
    800086e8:	0554ec63          	bltu	s1,s5,80008740 <freerange+0xd0>
    800086ec:	0534fa63          	bgeu	s1,s3,80008740 <freerange+0xd0>
    800086f0:	00001637          	lui	a2,0x1
    800086f4:	00100593          	li	a1,1
    800086f8:	00048513          	mv	a0,s1
    800086fc:	00000097          	auipc	ra,0x0
    80008700:	50c080e7          	jalr	1292(ra) # 80008c08 <__memset>
    80008704:	00093703          	ld	a4,0(s2)
    80008708:	016487b3          	add	a5,s1,s6
    8000870c:	00e4b023          	sd	a4,0(s1)
    80008710:	00993023          	sd	s1,0(s2)
    80008714:	fcfa76e3          	bgeu	s4,a5,800086e0 <freerange+0x70>
    80008718:	03813083          	ld	ra,56(sp)
    8000871c:	03013403          	ld	s0,48(sp)
    80008720:	02813483          	ld	s1,40(sp)
    80008724:	02013903          	ld	s2,32(sp)
    80008728:	01813983          	ld	s3,24(sp)
    8000872c:	01013a03          	ld	s4,16(sp)
    80008730:	00813a83          	ld	s5,8(sp)
    80008734:	00013b03          	ld	s6,0(sp)
    80008738:	04010113          	addi	sp,sp,64
    8000873c:	00008067          	ret
    80008740:	00001517          	auipc	a0,0x1
    80008744:	f1850513          	addi	a0,a0,-232 # 80009658 <digits+0x18>
    80008748:	fffff097          	auipc	ra,0xfffff
    8000874c:	3d4080e7          	jalr	980(ra) # 80007b1c <panic>

0000000080008750 <kfree>:
    80008750:	fe010113          	addi	sp,sp,-32
    80008754:	00813823          	sd	s0,16(sp)
    80008758:	00113c23          	sd	ra,24(sp)
    8000875c:	00913423          	sd	s1,8(sp)
    80008760:	02010413          	addi	s0,sp,32
    80008764:	03451793          	slli	a5,a0,0x34
    80008768:	04079c63          	bnez	a5,800087c0 <kfree+0x70>
    8000876c:	00005797          	auipc	a5,0x5
    80008770:	8a478793          	addi	a5,a5,-1884 # 8000d010 <end>
    80008774:	00050493          	mv	s1,a0
    80008778:	04f56463          	bltu	a0,a5,800087c0 <kfree+0x70>
    8000877c:	01100793          	li	a5,17
    80008780:	01b79793          	slli	a5,a5,0x1b
    80008784:	02f57e63          	bgeu	a0,a5,800087c0 <kfree+0x70>
    80008788:	00001637          	lui	a2,0x1
    8000878c:	00100593          	li	a1,1
    80008790:	00000097          	auipc	ra,0x0
    80008794:	478080e7          	jalr	1144(ra) # 80008c08 <__memset>
    80008798:	00003797          	auipc	a5,0x3
    8000879c:	44878793          	addi	a5,a5,1096 # 8000bbe0 <kmem>
    800087a0:	0007b703          	ld	a4,0(a5)
    800087a4:	01813083          	ld	ra,24(sp)
    800087a8:	01013403          	ld	s0,16(sp)
    800087ac:	00e4b023          	sd	a4,0(s1)
    800087b0:	0097b023          	sd	s1,0(a5)
    800087b4:	00813483          	ld	s1,8(sp)
    800087b8:	02010113          	addi	sp,sp,32
    800087bc:	00008067          	ret
    800087c0:	00001517          	auipc	a0,0x1
    800087c4:	e9850513          	addi	a0,a0,-360 # 80009658 <digits+0x18>
    800087c8:	fffff097          	auipc	ra,0xfffff
    800087cc:	354080e7          	jalr	852(ra) # 80007b1c <panic>

00000000800087d0 <kalloc>:
    800087d0:	fe010113          	addi	sp,sp,-32
    800087d4:	00813823          	sd	s0,16(sp)
    800087d8:	00913423          	sd	s1,8(sp)
    800087dc:	00113c23          	sd	ra,24(sp)
    800087e0:	02010413          	addi	s0,sp,32
    800087e4:	00003797          	auipc	a5,0x3
    800087e8:	3fc78793          	addi	a5,a5,1020 # 8000bbe0 <kmem>
    800087ec:	0007b483          	ld	s1,0(a5)
    800087f0:	02048063          	beqz	s1,80008810 <kalloc+0x40>
    800087f4:	0004b703          	ld	a4,0(s1)
    800087f8:	00001637          	lui	a2,0x1
    800087fc:	00500593          	li	a1,5
    80008800:	00048513          	mv	a0,s1
    80008804:	00e7b023          	sd	a4,0(a5)
    80008808:	00000097          	auipc	ra,0x0
    8000880c:	400080e7          	jalr	1024(ra) # 80008c08 <__memset>
    80008810:	01813083          	ld	ra,24(sp)
    80008814:	01013403          	ld	s0,16(sp)
    80008818:	00048513          	mv	a0,s1
    8000881c:	00813483          	ld	s1,8(sp)
    80008820:	02010113          	addi	sp,sp,32
    80008824:	00008067          	ret

0000000080008828 <initlock>:
    80008828:	ff010113          	addi	sp,sp,-16
    8000882c:	00813423          	sd	s0,8(sp)
    80008830:	01010413          	addi	s0,sp,16
    80008834:	00813403          	ld	s0,8(sp)
    80008838:	00b53423          	sd	a1,8(a0)
    8000883c:	00052023          	sw	zero,0(a0)
    80008840:	00053823          	sd	zero,16(a0)
    80008844:	01010113          	addi	sp,sp,16
    80008848:	00008067          	ret

000000008000884c <acquire>:
    8000884c:	fe010113          	addi	sp,sp,-32
    80008850:	00813823          	sd	s0,16(sp)
    80008854:	00913423          	sd	s1,8(sp)
    80008858:	00113c23          	sd	ra,24(sp)
    8000885c:	01213023          	sd	s2,0(sp)
    80008860:	02010413          	addi	s0,sp,32
    80008864:	00050493          	mv	s1,a0
    80008868:	10002973          	csrr	s2,sstatus
    8000886c:	100027f3          	csrr	a5,sstatus
    80008870:	ffd7f793          	andi	a5,a5,-3
    80008874:	10079073          	csrw	sstatus,a5
    80008878:	fffff097          	auipc	ra,0xfffff
    8000887c:	8ec080e7          	jalr	-1812(ra) # 80007164 <mycpu>
    80008880:	07852783          	lw	a5,120(a0)
    80008884:	06078e63          	beqz	a5,80008900 <acquire+0xb4>
    80008888:	fffff097          	auipc	ra,0xfffff
    8000888c:	8dc080e7          	jalr	-1828(ra) # 80007164 <mycpu>
    80008890:	07852783          	lw	a5,120(a0)
    80008894:	0004a703          	lw	a4,0(s1)
    80008898:	0017879b          	addiw	a5,a5,1
    8000889c:	06f52c23          	sw	a5,120(a0)
    800088a0:	04071063          	bnez	a4,800088e0 <acquire+0x94>
    800088a4:	00100713          	li	a4,1
    800088a8:	00070793          	mv	a5,a4
    800088ac:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    800088b0:	0007879b          	sext.w	a5,a5
    800088b4:	fe079ae3          	bnez	a5,800088a8 <acquire+0x5c>
    800088b8:	0ff0000f          	fence
    800088bc:	fffff097          	auipc	ra,0xfffff
    800088c0:	8a8080e7          	jalr	-1880(ra) # 80007164 <mycpu>
    800088c4:	01813083          	ld	ra,24(sp)
    800088c8:	01013403          	ld	s0,16(sp)
    800088cc:	00a4b823          	sd	a0,16(s1)
    800088d0:	00013903          	ld	s2,0(sp)
    800088d4:	00813483          	ld	s1,8(sp)
    800088d8:	02010113          	addi	sp,sp,32
    800088dc:	00008067          	ret
    800088e0:	0104b903          	ld	s2,16(s1)
    800088e4:	fffff097          	auipc	ra,0xfffff
    800088e8:	880080e7          	jalr	-1920(ra) # 80007164 <mycpu>
    800088ec:	faa91ce3          	bne	s2,a0,800088a4 <acquire+0x58>
    800088f0:	00001517          	auipc	a0,0x1
    800088f4:	d7050513          	addi	a0,a0,-656 # 80009660 <digits+0x20>
    800088f8:	fffff097          	auipc	ra,0xfffff
    800088fc:	224080e7          	jalr	548(ra) # 80007b1c <panic>
    80008900:	00195913          	srli	s2,s2,0x1
    80008904:	fffff097          	auipc	ra,0xfffff
    80008908:	860080e7          	jalr	-1952(ra) # 80007164 <mycpu>
    8000890c:	00197913          	andi	s2,s2,1
    80008910:	07252e23          	sw	s2,124(a0)
    80008914:	f75ff06f          	j	80008888 <acquire+0x3c>

0000000080008918 <release>:
    80008918:	fe010113          	addi	sp,sp,-32
    8000891c:	00813823          	sd	s0,16(sp)
    80008920:	00113c23          	sd	ra,24(sp)
    80008924:	00913423          	sd	s1,8(sp)
    80008928:	01213023          	sd	s2,0(sp)
    8000892c:	02010413          	addi	s0,sp,32
    80008930:	00052783          	lw	a5,0(a0)
    80008934:	00079a63          	bnez	a5,80008948 <release+0x30>
    80008938:	00001517          	auipc	a0,0x1
    8000893c:	d3050513          	addi	a0,a0,-720 # 80009668 <digits+0x28>
    80008940:	fffff097          	auipc	ra,0xfffff
    80008944:	1dc080e7          	jalr	476(ra) # 80007b1c <panic>
    80008948:	01053903          	ld	s2,16(a0)
    8000894c:	00050493          	mv	s1,a0
    80008950:	fffff097          	auipc	ra,0xfffff
    80008954:	814080e7          	jalr	-2028(ra) # 80007164 <mycpu>
    80008958:	fea910e3          	bne	s2,a0,80008938 <release+0x20>
    8000895c:	0004b823          	sd	zero,16(s1)
    80008960:	0ff0000f          	fence
    80008964:	0f50000f          	fence	iorw,ow
    80008968:	0804a02f          	amoswap.w	zero,zero,(s1)
    8000896c:	ffffe097          	auipc	ra,0xffffe
    80008970:	7f8080e7          	jalr	2040(ra) # 80007164 <mycpu>
    80008974:	100027f3          	csrr	a5,sstatus
    80008978:	0027f793          	andi	a5,a5,2
    8000897c:	04079a63          	bnez	a5,800089d0 <release+0xb8>
    80008980:	07852783          	lw	a5,120(a0)
    80008984:	02f05e63          	blez	a5,800089c0 <release+0xa8>
    80008988:	fff7871b          	addiw	a4,a5,-1
    8000898c:	06e52c23          	sw	a4,120(a0)
    80008990:	00071c63          	bnez	a4,800089a8 <release+0x90>
    80008994:	07c52783          	lw	a5,124(a0)
    80008998:	00078863          	beqz	a5,800089a8 <release+0x90>
    8000899c:	100027f3          	csrr	a5,sstatus
    800089a0:	0027e793          	ori	a5,a5,2
    800089a4:	10079073          	csrw	sstatus,a5
    800089a8:	01813083          	ld	ra,24(sp)
    800089ac:	01013403          	ld	s0,16(sp)
    800089b0:	00813483          	ld	s1,8(sp)
    800089b4:	00013903          	ld	s2,0(sp)
    800089b8:	02010113          	addi	sp,sp,32
    800089bc:	00008067          	ret
    800089c0:	00001517          	auipc	a0,0x1
    800089c4:	cc850513          	addi	a0,a0,-824 # 80009688 <digits+0x48>
    800089c8:	fffff097          	auipc	ra,0xfffff
    800089cc:	154080e7          	jalr	340(ra) # 80007b1c <panic>
    800089d0:	00001517          	auipc	a0,0x1
    800089d4:	ca050513          	addi	a0,a0,-864 # 80009670 <digits+0x30>
    800089d8:	fffff097          	auipc	ra,0xfffff
    800089dc:	144080e7          	jalr	324(ra) # 80007b1c <panic>

00000000800089e0 <holding>:
    800089e0:	00052783          	lw	a5,0(a0)
    800089e4:	00079663          	bnez	a5,800089f0 <holding+0x10>
    800089e8:	00000513          	li	a0,0
    800089ec:	00008067          	ret
    800089f0:	fe010113          	addi	sp,sp,-32
    800089f4:	00813823          	sd	s0,16(sp)
    800089f8:	00913423          	sd	s1,8(sp)
    800089fc:	00113c23          	sd	ra,24(sp)
    80008a00:	02010413          	addi	s0,sp,32
    80008a04:	01053483          	ld	s1,16(a0)
    80008a08:	ffffe097          	auipc	ra,0xffffe
    80008a0c:	75c080e7          	jalr	1884(ra) # 80007164 <mycpu>
    80008a10:	01813083          	ld	ra,24(sp)
    80008a14:	01013403          	ld	s0,16(sp)
    80008a18:	40a48533          	sub	a0,s1,a0
    80008a1c:	00153513          	seqz	a0,a0
    80008a20:	00813483          	ld	s1,8(sp)
    80008a24:	02010113          	addi	sp,sp,32
    80008a28:	00008067          	ret

0000000080008a2c <push_off>:
    80008a2c:	fe010113          	addi	sp,sp,-32
    80008a30:	00813823          	sd	s0,16(sp)
    80008a34:	00113c23          	sd	ra,24(sp)
    80008a38:	00913423          	sd	s1,8(sp)
    80008a3c:	02010413          	addi	s0,sp,32
    80008a40:	100024f3          	csrr	s1,sstatus
    80008a44:	100027f3          	csrr	a5,sstatus
    80008a48:	ffd7f793          	andi	a5,a5,-3
    80008a4c:	10079073          	csrw	sstatus,a5
    80008a50:	ffffe097          	auipc	ra,0xffffe
    80008a54:	714080e7          	jalr	1812(ra) # 80007164 <mycpu>
    80008a58:	07852783          	lw	a5,120(a0)
    80008a5c:	02078663          	beqz	a5,80008a88 <push_off+0x5c>
    80008a60:	ffffe097          	auipc	ra,0xffffe
    80008a64:	704080e7          	jalr	1796(ra) # 80007164 <mycpu>
    80008a68:	07852783          	lw	a5,120(a0)
    80008a6c:	01813083          	ld	ra,24(sp)
    80008a70:	01013403          	ld	s0,16(sp)
    80008a74:	0017879b          	addiw	a5,a5,1
    80008a78:	06f52c23          	sw	a5,120(a0)
    80008a7c:	00813483          	ld	s1,8(sp)
    80008a80:	02010113          	addi	sp,sp,32
    80008a84:	00008067          	ret
    80008a88:	0014d493          	srli	s1,s1,0x1
    80008a8c:	ffffe097          	auipc	ra,0xffffe
    80008a90:	6d8080e7          	jalr	1752(ra) # 80007164 <mycpu>
    80008a94:	0014f493          	andi	s1,s1,1
    80008a98:	06952e23          	sw	s1,124(a0)
    80008a9c:	fc5ff06f          	j	80008a60 <push_off+0x34>

0000000080008aa0 <pop_off>:
    80008aa0:	ff010113          	addi	sp,sp,-16
    80008aa4:	00813023          	sd	s0,0(sp)
    80008aa8:	00113423          	sd	ra,8(sp)
    80008aac:	01010413          	addi	s0,sp,16
    80008ab0:	ffffe097          	auipc	ra,0xffffe
    80008ab4:	6b4080e7          	jalr	1716(ra) # 80007164 <mycpu>
    80008ab8:	100027f3          	csrr	a5,sstatus
    80008abc:	0027f793          	andi	a5,a5,2
    80008ac0:	04079663          	bnez	a5,80008b0c <pop_off+0x6c>
    80008ac4:	07852783          	lw	a5,120(a0)
    80008ac8:	02f05a63          	blez	a5,80008afc <pop_off+0x5c>
    80008acc:	fff7871b          	addiw	a4,a5,-1
    80008ad0:	06e52c23          	sw	a4,120(a0)
    80008ad4:	00071c63          	bnez	a4,80008aec <pop_off+0x4c>
    80008ad8:	07c52783          	lw	a5,124(a0)
    80008adc:	00078863          	beqz	a5,80008aec <pop_off+0x4c>
    80008ae0:	100027f3          	csrr	a5,sstatus
    80008ae4:	0027e793          	ori	a5,a5,2
    80008ae8:	10079073          	csrw	sstatus,a5
    80008aec:	00813083          	ld	ra,8(sp)
    80008af0:	00013403          	ld	s0,0(sp)
    80008af4:	01010113          	addi	sp,sp,16
    80008af8:	00008067          	ret
    80008afc:	00001517          	auipc	a0,0x1
    80008b00:	b8c50513          	addi	a0,a0,-1140 # 80009688 <digits+0x48>
    80008b04:	fffff097          	auipc	ra,0xfffff
    80008b08:	018080e7          	jalr	24(ra) # 80007b1c <panic>
    80008b0c:	00001517          	auipc	a0,0x1
    80008b10:	b6450513          	addi	a0,a0,-1180 # 80009670 <digits+0x30>
    80008b14:	fffff097          	auipc	ra,0xfffff
    80008b18:	008080e7          	jalr	8(ra) # 80007b1c <panic>

0000000080008b1c <push_on>:
    80008b1c:	fe010113          	addi	sp,sp,-32
    80008b20:	00813823          	sd	s0,16(sp)
    80008b24:	00113c23          	sd	ra,24(sp)
    80008b28:	00913423          	sd	s1,8(sp)
    80008b2c:	02010413          	addi	s0,sp,32
    80008b30:	100024f3          	csrr	s1,sstatus
    80008b34:	100027f3          	csrr	a5,sstatus
    80008b38:	0027e793          	ori	a5,a5,2
    80008b3c:	10079073          	csrw	sstatus,a5
    80008b40:	ffffe097          	auipc	ra,0xffffe
    80008b44:	624080e7          	jalr	1572(ra) # 80007164 <mycpu>
    80008b48:	07852783          	lw	a5,120(a0)
    80008b4c:	02078663          	beqz	a5,80008b78 <push_on+0x5c>
    80008b50:	ffffe097          	auipc	ra,0xffffe
    80008b54:	614080e7          	jalr	1556(ra) # 80007164 <mycpu>
    80008b58:	07852783          	lw	a5,120(a0)
    80008b5c:	01813083          	ld	ra,24(sp)
    80008b60:	01013403          	ld	s0,16(sp)
    80008b64:	0017879b          	addiw	a5,a5,1
    80008b68:	06f52c23          	sw	a5,120(a0)
    80008b6c:	00813483          	ld	s1,8(sp)
    80008b70:	02010113          	addi	sp,sp,32
    80008b74:	00008067          	ret
    80008b78:	0014d493          	srli	s1,s1,0x1
    80008b7c:	ffffe097          	auipc	ra,0xffffe
    80008b80:	5e8080e7          	jalr	1512(ra) # 80007164 <mycpu>
    80008b84:	0014f493          	andi	s1,s1,1
    80008b88:	06952e23          	sw	s1,124(a0)
    80008b8c:	fc5ff06f          	j	80008b50 <push_on+0x34>

0000000080008b90 <pop_on>:
    80008b90:	ff010113          	addi	sp,sp,-16
    80008b94:	00813023          	sd	s0,0(sp)
    80008b98:	00113423          	sd	ra,8(sp)
    80008b9c:	01010413          	addi	s0,sp,16
    80008ba0:	ffffe097          	auipc	ra,0xffffe
    80008ba4:	5c4080e7          	jalr	1476(ra) # 80007164 <mycpu>
    80008ba8:	100027f3          	csrr	a5,sstatus
    80008bac:	0027f793          	andi	a5,a5,2
    80008bb0:	04078463          	beqz	a5,80008bf8 <pop_on+0x68>
    80008bb4:	07852783          	lw	a5,120(a0)
    80008bb8:	02f05863          	blez	a5,80008be8 <pop_on+0x58>
    80008bbc:	fff7879b          	addiw	a5,a5,-1
    80008bc0:	06f52c23          	sw	a5,120(a0)
    80008bc4:	07853783          	ld	a5,120(a0)
    80008bc8:	00079863          	bnez	a5,80008bd8 <pop_on+0x48>
    80008bcc:	100027f3          	csrr	a5,sstatus
    80008bd0:	ffd7f793          	andi	a5,a5,-3
    80008bd4:	10079073          	csrw	sstatus,a5
    80008bd8:	00813083          	ld	ra,8(sp)
    80008bdc:	00013403          	ld	s0,0(sp)
    80008be0:	01010113          	addi	sp,sp,16
    80008be4:	00008067          	ret
    80008be8:	00001517          	auipc	a0,0x1
    80008bec:	ac850513          	addi	a0,a0,-1336 # 800096b0 <digits+0x70>
    80008bf0:	fffff097          	auipc	ra,0xfffff
    80008bf4:	f2c080e7          	jalr	-212(ra) # 80007b1c <panic>
    80008bf8:	00001517          	auipc	a0,0x1
    80008bfc:	a9850513          	addi	a0,a0,-1384 # 80009690 <digits+0x50>
    80008c00:	fffff097          	auipc	ra,0xfffff
    80008c04:	f1c080e7          	jalr	-228(ra) # 80007b1c <panic>

0000000080008c08 <__memset>:
    80008c08:	ff010113          	addi	sp,sp,-16
    80008c0c:	00813423          	sd	s0,8(sp)
    80008c10:	01010413          	addi	s0,sp,16
    80008c14:	1a060e63          	beqz	a2,80008dd0 <__memset+0x1c8>
    80008c18:	40a007b3          	neg	a5,a0
    80008c1c:	0077f793          	andi	a5,a5,7
    80008c20:	00778693          	addi	a3,a5,7
    80008c24:	00b00813          	li	a6,11
    80008c28:	0ff5f593          	andi	a1,a1,255
    80008c2c:	fff6071b          	addiw	a4,a2,-1
    80008c30:	1b06e663          	bltu	a3,a6,80008ddc <__memset+0x1d4>
    80008c34:	1cd76463          	bltu	a4,a3,80008dfc <__memset+0x1f4>
    80008c38:	1a078e63          	beqz	a5,80008df4 <__memset+0x1ec>
    80008c3c:	00b50023          	sb	a1,0(a0)
    80008c40:	00100713          	li	a4,1
    80008c44:	1ae78463          	beq	a5,a4,80008dec <__memset+0x1e4>
    80008c48:	00b500a3          	sb	a1,1(a0)
    80008c4c:	00200713          	li	a4,2
    80008c50:	1ae78a63          	beq	a5,a4,80008e04 <__memset+0x1fc>
    80008c54:	00b50123          	sb	a1,2(a0)
    80008c58:	00300713          	li	a4,3
    80008c5c:	18e78463          	beq	a5,a4,80008de4 <__memset+0x1dc>
    80008c60:	00b501a3          	sb	a1,3(a0)
    80008c64:	00400713          	li	a4,4
    80008c68:	1ae78263          	beq	a5,a4,80008e0c <__memset+0x204>
    80008c6c:	00b50223          	sb	a1,4(a0)
    80008c70:	00500713          	li	a4,5
    80008c74:	1ae78063          	beq	a5,a4,80008e14 <__memset+0x20c>
    80008c78:	00b502a3          	sb	a1,5(a0)
    80008c7c:	00700713          	li	a4,7
    80008c80:	18e79e63          	bne	a5,a4,80008e1c <__memset+0x214>
    80008c84:	00b50323          	sb	a1,6(a0)
    80008c88:	00700e93          	li	t4,7
    80008c8c:	00859713          	slli	a4,a1,0x8
    80008c90:	00e5e733          	or	a4,a1,a4
    80008c94:	01059e13          	slli	t3,a1,0x10
    80008c98:	01c76e33          	or	t3,a4,t3
    80008c9c:	01859313          	slli	t1,a1,0x18
    80008ca0:	006e6333          	or	t1,t3,t1
    80008ca4:	02059893          	slli	a7,a1,0x20
    80008ca8:	40f60e3b          	subw	t3,a2,a5
    80008cac:	011368b3          	or	a7,t1,a7
    80008cb0:	02859813          	slli	a6,a1,0x28
    80008cb4:	0108e833          	or	a6,a7,a6
    80008cb8:	03059693          	slli	a3,a1,0x30
    80008cbc:	003e589b          	srliw	a7,t3,0x3
    80008cc0:	00d866b3          	or	a3,a6,a3
    80008cc4:	03859713          	slli	a4,a1,0x38
    80008cc8:	00389813          	slli	a6,a7,0x3
    80008ccc:	00f507b3          	add	a5,a0,a5
    80008cd0:	00e6e733          	or	a4,a3,a4
    80008cd4:	000e089b          	sext.w	a7,t3
    80008cd8:	00f806b3          	add	a3,a6,a5
    80008cdc:	00e7b023          	sd	a4,0(a5)
    80008ce0:	00878793          	addi	a5,a5,8
    80008ce4:	fed79ce3          	bne	a5,a3,80008cdc <__memset+0xd4>
    80008ce8:	ff8e7793          	andi	a5,t3,-8
    80008cec:	0007871b          	sext.w	a4,a5
    80008cf0:	01d787bb          	addw	a5,a5,t4
    80008cf4:	0ce88e63          	beq	a7,a4,80008dd0 <__memset+0x1c8>
    80008cf8:	00f50733          	add	a4,a0,a5
    80008cfc:	00b70023          	sb	a1,0(a4)
    80008d00:	0017871b          	addiw	a4,a5,1
    80008d04:	0cc77663          	bgeu	a4,a2,80008dd0 <__memset+0x1c8>
    80008d08:	00e50733          	add	a4,a0,a4
    80008d0c:	00b70023          	sb	a1,0(a4)
    80008d10:	0027871b          	addiw	a4,a5,2
    80008d14:	0ac77e63          	bgeu	a4,a2,80008dd0 <__memset+0x1c8>
    80008d18:	00e50733          	add	a4,a0,a4
    80008d1c:	00b70023          	sb	a1,0(a4)
    80008d20:	0037871b          	addiw	a4,a5,3
    80008d24:	0ac77663          	bgeu	a4,a2,80008dd0 <__memset+0x1c8>
    80008d28:	00e50733          	add	a4,a0,a4
    80008d2c:	00b70023          	sb	a1,0(a4)
    80008d30:	0047871b          	addiw	a4,a5,4
    80008d34:	08c77e63          	bgeu	a4,a2,80008dd0 <__memset+0x1c8>
    80008d38:	00e50733          	add	a4,a0,a4
    80008d3c:	00b70023          	sb	a1,0(a4)
    80008d40:	0057871b          	addiw	a4,a5,5
    80008d44:	08c77663          	bgeu	a4,a2,80008dd0 <__memset+0x1c8>
    80008d48:	00e50733          	add	a4,a0,a4
    80008d4c:	00b70023          	sb	a1,0(a4)
    80008d50:	0067871b          	addiw	a4,a5,6
    80008d54:	06c77e63          	bgeu	a4,a2,80008dd0 <__memset+0x1c8>
    80008d58:	00e50733          	add	a4,a0,a4
    80008d5c:	00b70023          	sb	a1,0(a4)
    80008d60:	0077871b          	addiw	a4,a5,7
    80008d64:	06c77663          	bgeu	a4,a2,80008dd0 <__memset+0x1c8>
    80008d68:	00e50733          	add	a4,a0,a4
    80008d6c:	00b70023          	sb	a1,0(a4)
    80008d70:	0087871b          	addiw	a4,a5,8
    80008d74:	04c77e63          	bgeu	a4,a2,80008dd0 <__memset+0x1c8>
    80008d78:	00e50733          	add	a4,a0,a4
    80008d7c:	00b70023          	sb	a1,0(a4)
    80008d80:	0097871b          	addiw	a4,a5,9
    80008d84:	04c77663          	bgeu	a4,a2,80008dd0 <__memset+0x1c8>
    80008d88:	00e50733          	add	a4,a0,a4
    80008d8c:	00b70023          	sb	a1,0(a4)
    80008d90:	00a7871b          	addiw	a4,a5,10
    80008d94:	02c77e63          	bgeu	a4,a2,80008dd0 <__memset+0x1c8>
    80008d98:	00e50733          	add	a4,a0,a4
    80008d9c:	00b70023          	sb	a1,0(a4)
    80008da0:	00b7871b          	addiw	a4,a5,11
    80008da4:	02c77663          	bgeu	a4,a2,80008dd0 <__memset+0x1c8>
    80008da8:	00e50733          	add	a4,a0,a4
    80008dac:	00b70023          	sb	a1,0(a4)
    80008db0:	00c7871b          	addiw	a4,a5,12
    80008db4:	00c77e63          	bgeu	a4,a2,80008dd0 <__memset+0x1c8>
    80008db8:	00e50733          	add	a4,a0,a4
    80008dbc:	00b70023          	sb	a1,0(a4)
    80008dc0:	00d7879b          	addiw	a5,a5,13
    80008dc4:	00c7f663          	bgeu	a5,a2,80008dd0 <__memset+0x1c8>
    80008dc8:	00f507b3          	add	a5,a0,a5
    80008dcc:	00b78023          	sb	a1,0(a5)
    80008dd0:	00813403          	ld	s0,8(sp)
    80008dd4:	01010113          	addi	sp,sp,16
    80008dd8:	00008067          	ret
    80008ddc:	00b00693          	li	a3,11
    80008de0:	e55ff06f          	j	80008c34 <__memset+0x2c>
    80008de4:	00300e93          	li	t4,3
    80008de8:	ea5ff06f          	j	80008c8c <__memset+0x84>
    80008dec:	00100e93          	li	t4,1
    80008df0:	e9dff06f          	j	80008c8c <__memset+0x84>
    80008df4:	00000e93          	li	t4,0
    80008df8:	e95ff06f          	j	80008c8c <__memset+0x84>
    80008dfc:	00000793          	li	a5,0
    80008e00:	ef9ff06f          	j	80008cf8 <__memset+0xf0>
    80008e04:	00200e93          	li	t4,2
    80008e08:	e85ff06f          	j	80008c8c <__memset+0x84>
    80008e0c:	00400e93          	li	t4,4
    80008e10:	e7dff06f          	j	80008c8c <__memset+0x84>
    80008e14:	00500e93          	li	t4,5
    80008e18:	e75ff06f          	j	80008c8c <__memset+0x84>
    80008e1c:	00600e93          	li	t4,6
    80008e20:	e6dff06f          	j	80008c8c <__memset+0x84>

0000000080008e24 <__memmove>:
    80008e24:	ff010113          	addi	sp,sp,-16
    80008e28:	00813423          	sd	s0,8(sp)
    80008e2c:	01010413          	addi	s0,sp,16
    80008e30:	0e060863          	beqz	a2,80008f20 <__memmove+0xfc>
    80008e34:	fff6069b          	addiw	a3,a2,-1
    80008e38:	0006881b          	sext.w	a6,a3
    80008e3c:	0ea5e863          	bltu	a1,a0,80008f2c <__memmove+0x108>
    80008e40:	00758713          	addi	a4,a1,7
    80008e44:	00a5e7b3          	or	a5,a1,a0
    80008e48:	40a70733          	sub	a4,a4,a0
    80008e4c:	0077f793          	andi	a5,a5,7
    80008e50:	00f73713          	sltiu	a4,a4,15
    80008e54:	00174713          	xori	a4,a4,1
    80008e58:	0017b793          	seqz	a5,a5
    80008e5c:	00e7f7b3          	and	a5,a5,a4
    80008e60:	10078863          	beqz	a5,80008f70 <__memmove+0x14c>
    80008e64:	00900793          	li	a5,9
    80008e68:	1107f463          	bgeu	a5,a6,80008f70 <__memmove+0x14c>
    80008e6c:	0036581b          	srliw	a6,a2,0x3
    80008e70:	fff8081b          	addiw	a6,a6,-1
    80008e74:	02081813          	slli	a6,a6,0x20
    80008e78:	01d85893          	srli	a7,a6,0x1d
    80008e7c:	00858813          	addi	a6,a1,8
    80008e80:	00058793          	mv	a5,a1
    80008e84:	00050713          	mv	a4,a0
    80008e88:	01088833          	add	a6,a7,a6
    80008e8c:	0007b883          	ld	a7,0(a5)
    80008e90:	00878793          	addi	a5,a5,8
    80008e94:	00870713          	addi	a4,a4,8
    80008e98:	ff173c23          	sd	a7,-8(a4)
    80008e9c:	ff0798e3          	bne	a5,a6,80008e8c <__memmove+0x68>
    80008ea0:	ff867713          	andi	a4,a2,-8
    80008ea4:	02071793          	slli	a5,a4,0x20
    80008ea8:	0207d793          	srli	a5,a5,0x20
    80008eac:	00f585b3          	add	a1,a1,a5
    80008eb0:	40e686bb          	subw	a3,a3,a4
    80008eb4:	00f507b3          	add	a5,a0,a5
    80008eb8:	06e60463          	beq	a2,a4,80008f20 <__memmove+0xfc>
    80008ebc:	0005c703          	lbu	a4,0(a1)
    80008ec0:	00e78023          	sb	a4,0(a5)
    80008ec4:	04068e63          	beqz	a3,80008f20 <__memmove+0xfc>
    80008ec8:	0015c603          	lbu	a2,1(a1)
    80008ecc:	00100713          	li	a4,1
    80008ed0:	00c780a3          	sb	a2,1(a5)
    80008ed4:	04e68663          	beq	a3,a4,80008f20 <__memmove+0xfc>
    80008ed8:	0025c603          	lbu	a2,2(a1)
    80008edc:	00200713          	li	a4,2
    80008ee0:	00c78123          	sb	a2,2(a5)
    80008ee4:	02e68e63          	beq	a3,a4,80008f20 <__memmove+0xfc>
    80008ee8:	0035c603          	lbu	a2,3(a1)
    80008eec:	00300713          	li	a4,3
    80008ef0:	00c781a3          	sb	a2,3(a5)
    80008ef4:	02e68663          	beq	a3,a4,80008f20 <__memmove+0xfc>
    80008ef8:	0045c603          	lbu	a2,4(a1)
    80008efc:	00400713          	li	a4,4
    80008f00:	00c78223          	sb	a2,4(a5)
    80008f04:	00e68e63          	beq	a3,a4,80008f20 <__memmove+0xfc>
    80008f08:	0055c603          	lbu	a2,5(a1)
    80008f0c:	00500713          	li	a4,5
    80008f10:	00c782a3          	sb	a2,5(a5)
    80008f14:	00e68663          	beq	a3,a4,80008f20 <__memmove+0xfc>
    80008f18:	0065c703          	lbu	a4,6(a1)
    80008f1c:	00e78323          	sb	a4,6(a5)
    80008f20:	00813403          	ld	s0,8(sp)
    80008f24:	01010113          	addi	sp,sp,16
    80008f28:	00008067          	ret
    80008f2c:	02061713          	slli	a4,a2,0x20
    80008f30:	02075713          	srli	a4,a4,0x20
    80008f34:	00e587b3          	add	a5,a1,a4
    80008f38:	f0f574e3          	bgeu	a0,a5,80008e40 <__memmove+0x1c>
    80008f3c:	02069613          	slli	a2,a3,0x20
    80008f40:	02065613          	srli	a2,a2,0x20
    80008f44:	fff64613          	not	a2,a2
    80008f48:	00e50733          	add	a4,a0,a4
    80008f4c:	00c78633          	add	a2,a5,a2
    80008f50:	fff7c683          	lbu	a3,-1(a5)
    80008f54:	fff78793          	addi	a5,a5,-1
    80008f58:	fff70713          	addi	a4,a4,-1
    80008f5c:	00d70023          	sb	a3,0(a4)
    80008f60:	fec798e3          	bne	a5,a2,80008f50 <__memmove+0x12c>
    80008f64:	00813403          	ld	s0,8(sp)
    80008f68:	01010113          	addi	sp,sp,16
    80008f6c:	00008067          	ret
    80008f70:	02069713          	slli	a4,a3,0x20
    80008f74:	02075713          	srli	a4,a4,0x20
    80008f78:	00170713          	addi	a4,a4,1
    80008f7c:	00e50733          	add	a4,a0,a4
    80008f80:	00050793          	mv	a5,a0
    80008f84:	0005c683          	lbu	a3,0(a1)
    80008f88:	00178793          	addi	a5,a5,1
    80008f8c:	00158593          	addi	a1,a1,1
    80008f90:	fed78fa3          	sb	a3,-1(a5)
    80008f94:	fee798e3          	bne	a5,a4,80008f84 <__memmove+0x160>
    80008f98:	f89ff06f          	j	80008f20 <__memmove+0xfc>
	...
