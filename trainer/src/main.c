#include "common.h"

extern s32 D_80799D04;

s32 D_80799DF8;

s32* D_80799E10;

s32 D_8079B1D0;

void func_80780800(void) {
    s8* var_v0;
    u32 var_a1;
    void* temp_a0;
    s32* temp_v0;
    s32* temp_v1;
    u8* ptr;

    func_80788000(0xBE000000);
    WRITE32(PHYS_TO_K1(0x80000318), 0x400000);
    func_80787A58();
    
    D_80799E10 = (s32* )PHYS_TO_K1(0x807E9C00);
    D_80799DF8 = PHYS_TO_K1(0x807C9C00);
    ptr = (u8 *)D_80799E10;
    for (var_a1 = 0; var_a1 < 360; var_a1++) {
        ptr[var_a1] = 0;
    }
    func_80785C30(PHYS_TO_K1(0x80600000), PHYS_TO_K1(0x80700000));
    func_8078EF74();
    D_8079B1D0 = 0;
    WRITE32(PHYS_TO_K1(0x8078040C), &D_80799E10[0x58]);
    func_80790B74();
    temp_v0 = D_80799E10;
    temp_v0[0] = &temp_v0[0x59];
    temp_v0[0x32] = &temp_v0[0xAB];
    temp_v0[0x33] = temp_v0[0];
    temp_v1 = (s32*)temp_v0[0x32];
    temp_v0[0x34] = &temp_v1[0x65];
    temp_v0[0x35] = &temp_v1[0x8E];
    func_80794A80();
}

void func_807808E0(s32 arg0, s32 arg1) {
    s32 temp_a0;
    s32* temp_s0;

    temp_a0 = D_80799D04 | 0xE00000;
    temp_s0 = temp_a0 | ((arg0 & 1) << 0x14) | ((arg0 & 0x1FFFE) << 1);
    func_80788050();
    *temp_s0 = arg1 << 0x10;
    func_80788050();
}

s32 func_80780948(s32 arg0) {
    s32 var_s1;

    var_s1 = D_80799D04 | 0xE00000;
    var_s1 = var_s1 | ((arg0 & 1) << 0x14);
    var_s1 = var_s1 | ((arg0 & 0x1FFFE) << 1);
    func_80788050();
    var_s1 = *(s32*)var_s1;
    if ((arg0 & 1) == 0) {
        var_s1 = var_s1 >> 0x10;
    }
    var_s1 &= 0xFFFF;
    func_80788050();
    
    return var_s1;
}

void func_807809B8(void) {
    s32 temp_s0;
    s32 var_v0;

    var_v0 = 999;
    while (var_v0 >= 0) {
        var_v0 -= 1;
    }
    do {
        temp_s0 = func_80780948(0) & 0x4040;
    } while (temp_s0 != (func_80780948(0) & 0x4040));
}

void func_80780A04(s32 arg0, u8* arg1, s32 arg2) {
    s32 temp_v0;
    s32 i;
    s32 var_s3 = arg0;
    s32 var_s2 = arg2;
    u8* var_s1 = arg1;
    u8 hi;
    u8 lo;
    s32 temp;

    temp_v0 = func_80787AE8();
    func_80787AF4(temp_v0 & ~1);
    var_s2 = (var_s2 + 0xFF);
    var_s2 = var_s2 >> 8;
    var_s3 = var_s3 >> 1;
    func_807809B8();
    while (var_s2 != 0) {
        func_807808E0(0x5555, 0xAAAA);
        func_807808E0(0x2AAA, 0x5555);
        func_807808E0(0x5555, 0xA0A0);
        for (i = 0; i < 0x80; i++) {
            temp = (*var_s1++ << 8);
            temp |= *var_s1++;
            func_807808E0(var_s3++, temp);
        }
        var_s2 -= 1;
        func_807809B8();
    }
    func_80787AF4(temp_v0);
}

int func_80780AE8(s32 arg0, u8* arg1, s32 arg2) {
    s32 temp = arg2 + 0xFF;
    s32 temp2 = 0xC00000;
    
    temp = (temp) & ~0xFF;
    arg0 = arg0 | temp2 | D_80799D04;
    for (; temp != 0; temp--) {
        if (func_8078EDD0(arg0++) != *(arg1++)) {
            return -1;
        }
    }
    return 0;
}

void func_80780B6C(s32 arg0, u8* arg1, s32 arg2) {
    s32 temp = arg2 + 0xFF;
    s32 temp2 = 0xC00000;
    
    temp = (temp) & ~0xFF;
    arg0 = arg0 | temp2 | D_80799D04;
    for (; temp != 0; temp--) {
        *arg1++ = func_8078EDD0(arg0++);
    }
}

void func_80780BDC(void) {
    func_807809B8();
    func_807808E0(0x5555, 0xAAAA);
    func_807808E0(0x2AAA, 0x5555);
    func_807808E0(0x5555, 0x8080);
    func_807808E0(0x5555, 0xAAAA);
    func_807808E0(0x2AAA, 0x5555);
    func_807808E0(0x5555, 0x1010);
    func_807809B8();
}

#ifndef NON_MATCHING
asm(
    ".word 0x9DC395EE\n"
    ".word 0x1FC688BE"
    );
#endif
