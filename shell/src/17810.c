#include "common.h"

u8* D_802283B0;
u8* D_802283B4;

u32 D_802283C0;
u32 D_802283C4;

s32 D_8023F6B0;

u8 func_80217C10(u8* arg0) {
    u8* temp_s0;
    u32 temp_v1;

    if (arg0 <= (u8*)0xAFFFFFFFU) {
        return *arg0;
    }
    if (D_802283B0 == 0) {
        D_802283B0 = ALIGNPTR(&D_8023F6B0, 0x10);
    }
    temp_s0 = D_802283B0;
    temp_v1 = arg0 - D_802283B4;
    if (temp_v1 < 0x1000U) {
        return temp_s0[temp_v1];
    } else {
        func_80217DAC(temp_s0, arg0, 0x1000);
        D_802283B4 = arg0;
        return *temp_s0;
    }
}

u32 func_80217CC0(u32 arg0) {
    u32* temp_s0;

    temp_s0 = (u32 *)(D_802283C4 | D_802283C0 | arg0);
    func_80217D90();
    return *temp_s0;
}

void func_80217CFC(u32 offset, u32 data) {
    s32 k = ((data & 0xffff) << 16) | (data & 0xffff);
    *(volatile s32 *)(D_802283C4 | D_802283C0 | offset) = k;
    func_80217D90();
}

void func_80217D40(s32 arg0) {
    u32 temp_s0;

    temp_s0 = (arg0 & 0x0F000000) | 0x10000000;
    func_80217CFC(0x400, temp_s0 >> 0x18);
    D_802283C4 = temp_s0 | 0xB0000000;
}

#ifndef NON_MATCHING
asm(
    ".set noreorder\n"
    "lw         $16, 0x10($29)\n"
    "jr         $31\n"
    ".set reorder"
    );
#endif
