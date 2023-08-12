#include "common.h"

u8 D_80225890[];

u8 D_80225990[];

s32 D_80227BF0;

s32 D_8022826C;

s32 D_80228284;

s32 D_80249648;

s32 D_802497B0;

volatile s32 D_802497C0;

s32 D_802497D0;
s32 D_802497D4;

s32* D_80249870;

void func_80200400(void) {
    D_80249648 = get_status();
    set_status(D_80249648 & ~SR_IE);
    func_80217D40(PHYS_TO_K1(0x1E000000));
    D_80249870 = 0x80000318;
    D_802497B0 = 1;
    D_802497D0 = 0;
    D_802497C0 = *D_80249870;
    func_802182BC();
    func_802006FC();
    func_80206800(0);
    func_80200490(func_8021217C());
}

void func_80200490(s32 arg0) {
    s32 var_a0;

    WRITE32(PHYS_TO_K1(VI_STATUS_REG), 0);
    WRITE32(PHYS_TO_K1(0x80000200), D_802497D4);
    func_802076F0();
    var_a0 = 0;
    if (arg0 != 0) {
        var_a0 = '.';
    }
    func_80206800(var_a0);
    if ((D_80228284 == 0) && (arg0 != 0)) {
        WRITE32(PHYS_TO_K1(0x80000200), D_8022826C);
   }
    if (D_802497B0 == 1) {
        WRITE32(PHYS_TO_K1(0x80000318), D_802497C0);
    }
    func_80218BBC();
    if ((D_802497C0 > 0x7FFFFF) && (D_80227BF0 == 1)) {
        func_80218C2C(0x80780800);
    } else if (arg0 != 0) {
        if ((D_802497C0 == 0x800000) && (D_80228284 == 1)) {
            WRITE32(PHYS_TO_K1(0x80000200), PHYS_TO_K1(0x807C5C00));
        }
        if (D_802497D0 == 1) {
            func_802188C0();
        } else {
            func_80218810();
        }
    }
    func_80218BBC();
    func_802005E4();
}

INCLUDE_ASM(const s32, "main", func_802005E4);

INCLUDE_ASM(const s32, "main", func_802006FC);

void func_80200830(u8* arg0, u8* arg1, s32 arg2) {
    u8* end = arg0 + arg2;
    while (arg0 < end) {
        *arg1++ = D_80225990[*arg0++];
    }
}

INCLUDE_ASM(const s32, "main", func_8020086C);

void func_80200928(s32 arg0, s8 arg1) {
    D_80225890[arg0] = arg1;
}
