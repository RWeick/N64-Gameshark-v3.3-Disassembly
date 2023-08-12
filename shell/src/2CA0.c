#include "common.h"

char D_80222BC8[]; // "B:Exit, "
char D_80222BD4[]; // "A:select, "
char D_80222BE0[]; // "R:Re-read."

s32 D_80227AA0;
s32 D_80227AA4;

INCLUDE_ASM(const s32, "2CA0", func_802030A0);

void func_80203E10(s32 arg0) {
    func_802030A0(1, -arg0);
}

void func_80203E30(s32 arg0) {
    func_802030A0(0, -arg0);
}

void func_80203E50(void) {
    func_80214280(0, 3, D_80222BC8, D_80222BD4, D_80222BE0);
}

INCLUDE_ASM(const s32, "2CA0", func_80203E8C);

INCLUDE_ASM(const s32, "2CA0", func_80205110);

INCLUDE_ASM(const s32, "2CA0", func_8020521C);

s32 func_802052F4(s32 arg0) {
    vu32* pi_status_reg = (vu32*)PHYS_TO_K1(PI_STATUS_REG);
    while (*pi_status_reg & 3);
    arg0 &= 0xBFFFFFFC;
    return *(s32 *)arg0;
}

void func_80205320(s32* arg0) {
    s32 i;
    s32 var = PHYS_TO_K1(PI_DOM2_ADDR2);
    for (i = 0; i < 0x8000; i += 4) {
        *arg0++ = func_802052F4(var | i);
    }
}

s32 func_80205380(u32 arg0, s32 arg1) {
    vu32* pi_status_reg = (vu32*)PHYS_TO_K1(PI_STATUS_REG);
    while (*pi_status_reg & 3);
    arg0 &= 0xBFFFFFFC;
    *(s32 *)arg0 = arg1;
}

void func_802053A8(s32* arg0) {
    s32 i;
    s32 var = 0xA8000000;
    s32* ptr = arg0;
    for (i = 0; i < 0x8000; i += 4) {
        func_80205380(var | i, *ptr++);
    }
}

s32 func_8020540C(void) {
    D_80227AA0 = 3;
    func_80205110();
    D_80227AA0 = 0;
    return D_80227AA4;
}
