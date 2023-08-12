#include "common.h"

s32 D_8079A150;

INCLUDE_ASM(const s32, "5390", func_80785B90);

s32 func_80785BB8(void) {
    return D_8079A150;
}

s32 func_80785BC8(s32* arg0) {
    return arg0[1];
}

s32 func_80785BD4(s32* arg0) {
    return arg0[2];
}

INCLUDE_ASM(const s32, "5390", func_80785BE0);

INCLUDE_ASM(const s32, "5390", func_80785C20);

INCLUDE_ASM(const s32, "5390", func_80785C30);

INCLUDE_ASM(const s32, "5390", func_80785CA8);

INCLUDE_ASM(const s32, "5390", func_80785D7C);

INCLUDE_ASM(const s32, "5390", func_80785DEC);

INCLUDE_ASM(const s32, "5390", func_80785EB8);

INCLUDE_ASM(const s32, "5390", func_80785F80);

INCLUDE_ASM(const s32, "5390", func_80785FF8);

INCLUDE_ASM(const s32, "5390", func_8078601C);

INCLUDE_ASM(const s32, "5390", func_807860AC);

INCLUDE_ASM(const s32, "5390", func_807860D0);

void func_80786114(s32 arg0) {
    vu32* si_base = (vu32*)PHYS_TO_K1(SI_BASE_REG);
    func_807860AC();
    si_base[0] = arg0 & 0x1FFFFFFF;
    si_base[1] = 0x1FC007C0;
}

#ifndef NON_MATCHING
asm(
    ".word 0xAC620000\n"
    ".word 0x1CC0FFF7"
    );
#endif
