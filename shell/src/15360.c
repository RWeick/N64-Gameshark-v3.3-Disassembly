#include "common.h"

void func_80215760(u8* arg0, u8* arg1, s32 arg2) {
    for (; arg2 != 0; arg2--) {
        *arg0++ = *arg1++;
    }
}

INCLUDE_ASM(const s32, "15360", func_80215788);

u8* func_802157C8(u8* dst, int c, s32 len) {
    s32 i;
    u8* ptr = dst;
    
    for (i = 0; i < len; i++) {
        *ptr++ = c;
    }
    return dst;
}

u32 func_802157F0(u32* arg0) {
    return arg0[1];
}

u32 func_802157FC(u32* arg0) {
    return arg0[2];
}

INCLUDE_ASM(const s32, "15360", func_80215808);

INCLUDE_ASM(const s32, "15360", func_80215874);

INCLUDE_ASM(const s32, "15360", func_8021591C);

#ifndef NON_MATCHING
asm(
    ".set noreorder\n"
    "sw         $2, 0x0($3)\n"
    "jal        func_80214D98\n"
    ".set reorder"
    );
#endif
