#include "common.h"

void func_80217D90(void) {
    vu32* pi_regs = (vu32*)PHYS_TO_K1(PI_BASE_REG);
    while (pi_regs[4] & (PI_STATUS_IO_BUSY | PI_STATUS_DMA_BUSY));
}

void func_80217DAC(u32 arg0, u32 arg1, int arg2) {
    int i;
    vu32* pi_regs;
    func_80217D90();
    
    for (i = 0; i < arg2; i += 4) {
        func_80218C18(arg0 + i);
    }
    
    pi_regs = (vu32*)PHYS_TO_K1(PI_BASE_REG);
    pi_regs[0] = arg0 & 0x1FFFFFFF;
    pi_regs[1] = arg1 & 0x1FFFFFFF;
    pi_regs[3] = arg2 - 1;
    
    for (i = 0; i < 1000; i++);
    func_80217D90();
}

#ifndef NON_MATCHING
asm(".word 0xAE020028");
#endif
