#include "common.h"

void func_80781780(void) {
}

void func_80781788(void) {
}

void func_80781790(void) {
}

void func_80781798(void) {
}

void func_807817A0(void) {
}

INCLUDE_ASM(const s32, "F80", func_807817A8);

int func_80781800(int arg0) {
    return arg0;
}

void func_80781808(void) {
}

INCLUDE_ASM(const s32, "F80", func_80781810);

void func_80781848(void) {
}

void func_80781850(void) {
}

int func_80781858(void) {
    return 0;
}

int func_80781860(void) {
    return 0;
}

int func_80781868(void) {
    return 0;
}

INCLUDE_ASM(const s32, "F80", func_80781870);

void func_8078193C(void) {
}

INCLUDE_ASM(const s32, "F80", func_80781944);

INCLUDE_ASM(const s32, "F80", func_8078197C);

INCLUDE_ASM(const s32, "F80", func_80781A1C);

INCLUDE_ASM(const s32, "F80", func_80781D1C);

INCLUDE_ASM(const s32, "F80", func_80781DE0);

INCLUDE_ASM(const s32, "F80", func_80781ECC);

INCLUDE_ASM(const s32, "F80", func_80781F30);

INCLUDE_ASM(const s32, "F80", func_80781F94);

INCLUDE_ASM(const s32, "F80", func_8078272C);

INCLUDE_ASM(const s32, "F80", func_8078277C);

INCLUDE_ASM(const s32, "F80", func_8078286C);

INCLUDE_ASM(const s32, "F80", func_80782888);

INCLUDE_ASM(const s32, "F80", func_807828C8);

INCLUDE_ASM(const s32, "F80", func_8078306C);

INCLUDE_ASM(const s32, "F80", func_8078315C);

INCLUDE_ASM(const s32, "F80", func_807833B0);

INCLUDE_ASM(const s32, "F80", func_8078342C);

INCLUDE_ASM(const s32, "F80", func_80783454);

INCLUDE_ASM(const s32, "F80", func_80783474);

INCLUDE_ASM(const s32, "F80", func_80783494);

INCLUDE_ASM(const s32, "F80", func_807834B8);

INCLUDE_ASM(const s32, "F80", func_807834E0);

INCLUDE_ASM(const s32, "F80", func_80783504);

INCLUDE_ASM(const s32, "F80", func_807835F8);

INCLUDE_ASM(const s32, "F80", func_807836EC);

INCLUDE_ASM(const s32, "F80", func_8078381C);

INCLUDE_ASM(const s32, "F80", func_8078394C);

INCLUDE_ASM(const s32, "F80", func_80783A74);

INCLUDE_ASM(const s32, "F80", func_80783BA0);

INCLUDE_ASM(const s32, "F80", func_80783CC0);

INCLUDE_ASM(const s32, "F80", func_80783DF4);

INCLUDE_ASM(const s32, "F80", func_80783E68);

INCLUDE_ASM(const s32, "F80", func_80783FA8);

INCLUDE_ASM(const s32, "F80", func_807840E8);

INCLUDE_ASM(const s32, "F80", func_80784220);

INCLUDE_ASM(const s32, "F80", func_8078435C);

INCLUDE_ASM(const s32, "F80", func_80784414);

INCLUDE_ASM(const s32, "F80", func_807844E4);

INCLUDE_ASM(const s32, "F80", func_80784504);

INCLUDE_ASM(const s32, "F80", func_80784DA0);

INCLUDE_ASM(const s32, "F80", func_80785344);

INCLUDE_ASM(const s32, "F80", func_80785390);

INCLUDE_ASM(const s32, "F80", func_807853F8);

INCLUDE_ASM(const s32, "F80", func_80785460);

void func_807854A4(s32 arg0) {
    vu32 * vi_regs = (vu32*)PHYS_TO_K1(VI_BASE_REG);
    vi_regs[1] = arg0;
}

INCLUDE_ASM(const s32, "F80", func_807854B4);

INCLUDE_ASM(const s32, "F80", func_80785500);

INCLUDE_ASM(const s32, "F80", func_8078554C);

INCLUDE_ASM(const s32, "F80", func_807855DC);

INCLUDE_ASM(const s32, "F80", func_80785610);

INCLUDE_ASM(const s32, "F80", func_80785640);

INCLUDE_ASM(const s32, "F80", func_80785670);

INCLUDE_ASM(const s32, "F80", func_807856A0);

INCLUDE_ASM(const s32, "F80", func_8078572C);

INCLUDE_ASM(const s32, "F80", func_80785948);

INCLUDE_ASM(const s32, "F80", func_80785ACC);

void func_80785B10(s16* arg0, s32 arg1, s32 arg2, s16 arg3) {
    s16* var_a0;
    s32 i;
    
    for (i = 0; i < arg1 * arg2; i++) {
        if (arg0[i] == 0) {
            arg0[i] = 2;
        }
    }
    
    for (i = 0; i < arg1 * arg2; i++) {
        if (arg0[i] == arg3) {
            arg0[i] = 0;
        }
    }
}

#ifndef NON_MATCHING
asm(
    ".word 0x8FB10014\n"
    ".word 0x8FB00010\n"
    ".word 0x03E00008"
    );
#endif
