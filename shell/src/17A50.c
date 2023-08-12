#include "common.h"

extern s32 D_80225884;

extern s32 D_802283C4;

extern u16 D_802283D2;

s32 D_80243314;

void func_80217E50(s32 arg0, s32 arg1) {
    s32 temp_a0;
    s32* temp_s0;

    temp_a0 = D_802283C4 | 0xE00000;
    temp_s0 = temp_a0 | ((arg0 & 1) << 0x14) | ((arg0 & 0x1FFFE) << 1);
    func_80217D90();
    *temp_s0 = arg1 << 0x10;
    func_80217D90();
}

s32 func_80217EB8(s32 arg0) {
    s32 var_s1;

    var_s1 = D_802283C4 | 0xE00000;
    var_s1 = var_s1 | ((arg0 & 1) << 0x14);
    var_s1 = var_s1 | ((arg0 & 0x1FFFE) << 1);
    func_80217D90();
    var_s1 = *(s32*)var_s1;
    if ((arg0 & 1) == 0) {
        var_s1 = var_s1 >> 0x10;
    }
    var_s1 &= 0xFFFF;
    func_80217D90();
    
    return var_s1;
}

void func_80217F28(void) {
    s32 temp_s0;
    int i;

    for (i = 0; i < 1000; i++);
    
    do {
        temp_s0 = func_80217EB8(0) & 0x4040;
    } while (temp_s0 != (func_80217EB8(0) & 0x4040));
}

INCLUDE_ASM(const s32, "17A50", func_80217F74);

INCLUDE_ASM(const s32, "17A50", func_80218094);

void func_80218118(s32 arg0, u8* arg1, s32 arg2) {
    s32 temp = arg2 + 0xFF;
    s32 temp2 = 0xC00000;
    
    temp = (temp) & ~0xFF;
    arg0 = arg0 | temp2 | D_802283C4;
    for (; temp != 0; temp--) {
        *arg1++ = func_80217C10(arg0++);
    }
    func_80218BBC();
}

void func_80218190(void) {
    func_80217F28();
    func_80217E50(0x5555, 0xAAAA);
    func_80217E50(0x2AAA, 0x5555);
    func_80217E50(0x5555, 0x8080);
    func_80217E50(0x5555, 0xAAAA);
    func_80217E50(0x2AAA, 0x5555);
    func_80217E50(0x5555, 0x1010);
    func_80217F28();
}

void func_802181FC(u32 arg0, void* arg1, int arg2) {
    func_80218118(arg0, arg1, arg2);
}

void func_80218218(s32 arg0, s32 arg1, s32 arg2) {
    D_80243314 = 0;
    func_80218430();
    if (D_802283D2 != 4) {
        func_80217F74(arg0, arg1, arg2);
    } else {
        D_80243314 = func_80218640(arg1, arg2, arg0);
    }
}

void func_802182A0(void) {
    func_80218094();
}

void func_802182BC(void) {
    func_80218430();
    if (D_802283D2 == 4) {
        D_80225884 = 0x40000;
    }
}

#ifndef NON_MATCHING
asm(
    ".word 0x02002021\n"
    ".word 0x24030020\n"
    ".word 0x8C820060"
    );
#endif
