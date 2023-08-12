#include "common.h"

s32 D_80799D00;
s32 D_80799D04;

s32 func_80787F80(s32 arg0) {
    vu32* temp_s0 = (vu32 *)(D_80799D04 | D_80799D00 | arg0);
    func_80788050();
    return *temp_s0;
}

void func_80787FBC(u32 offset, u32 data) {
    s32 k = ((data & 0xffff) << 16) | (data & 0xffff);
    *(vu32 *)(D_80799D04 | D_80799D00 | offset) = k;
    func_80788050();
}

void func_80788000(u32 addr) {
    u32 masked = (addr & 0x0F000000) | 0x10000000;
    func_80787FBC(0x400, masked >> 0x18);
    D_80799D04 = masked | 0xB0000000;
}

#ifndef NON_MATCHING
asm(
    ".word 0x8078CDE0\n"
    ".word 0x8078CE88"
    );
#endif
