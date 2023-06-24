#include "common.h"

void waitPI(void) {
    volatile u32* pi_regs = (vu32*)PHYS_TO_K1(PI_BASE_REG);
    while (pi_regs[4] & 3); // wait until PI is not busy
}

#ifndef NON_MATCHING
asm ("lw         $31, 0x14($29)");
#endif
