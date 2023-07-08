#include "common.h"

extern s32 D_80227C10;
s32 D_80229ABD;
s32 D_8022B7B3;
s32 D_8022D659;

void func_802061A0(u32 addr, int len, u32 dacrate, u32 bitrate) {
    vu32* ai_regs = (vu32*)PHYS_TO_K1(AI_BASE_REG);

    ai_regs[0] = addr;
    if (len < 0) {
        len += 7;
    }
    ai_regs[1] = len >> 3; // bug? should be len & ~3
    ai_regs[2] = AI_CONTROL_DMA_ON;
    ai_regs[4] = dacrate;
    ai_regs[5] = bitrate;
}

void func_802061D0(s32 arg0) {
    if (D_80227C10 != 0) {
        if (arg0 == 0) {
            func_802061A0((u32)&D_80229ABD, (&D_8022B7B3 - &D_80229ABD), 11025, 8);        
        } else {
            func_802061A0((u32)&D_8022B7B3, (&D_8022D659 - &D_8022B7B3), 11025, 8);
        }
    }
}

#ifndef NON_MATCHING
asm(".word 0x6C6F7701");
#endif

