#include "common.h"

extern char * D_80227CF0[];

s32 D_80228150;

s32 D_8022816C;
s32 D_80228170;
s32 D_80228174;

s32 D_8023F614;

s32 D_8024964C;

s32 D_802497C4;

extern u32* D_802497D8;

s8* D_8024A000;

extern s32 D_8024A008;

s8* D_8024A19C;
s8* D_8024A1A0;

s8* D_8024ADA8;

void func_802210D0(void) {
    *D_8024A000 = 0;
    *D_8024A19C = 0;
    *D_8024A1A0 = 0;
    *D_8024ADA8 = 0;
}

void func_80221104(s32 arg0, s32 arg1) {
    char sp20[200];

    func_80213814(3, sizeof(sp20), sp20, D_80227CF0[0xD9], D_80227CF0[0x11A], D_80227CF0[0x29]);
    func_80212EAC(0x3F, 0x82, 0x14, 2, 0, arg0, arg1);
    func_80213890(0x3F, 0x82, 0x14, 2, arg0, arg1, sp20);
}

INCLUDE_ASM(const s32, "20CD0", func_802211A0);

void func_802212D0(s32 arg0) {
    func_80218BBC();
    func_802211A0(-arg0, 0, 0);
}

void func_80221304(void) {
    u32 var_s0 = 0;
    func_8021110C(D_8024ADA8, D_80227CF0[0x119]);
    while ((var_s0 != 0x40000000) && (var_s0 != 0x80000000)) {
        var_s0 = func_80210DBC();
        func_802212D0(0);
        func_8021117C();
        func_80211184();
    }
    func_802111A0(0x40000000, func_802212D0);
    func_802111A0(0x80000000, func_802212D0);
}

void func_802213A0(void) {
    func_8021110C(D_8024A1A0, D_80228150);
    *D_8024ADA8 = 0;
    func_80221304();
}

void func_802213DC(void) {
    func_8021110C(D_8024A1A0, D_8022816C);
    *D_8024ADA8 = 0;
    func_80221304();
}

void func_80221418(void) {
    func_8021110C(D_8024A1A0, D_80228170);
    *D_8024ADA8 = 0;
    func_80221304();
}

void func_80221454(void) {
    func_8021110C(D_8024A1A0, D_80228174);
    *D_8024ADA8 = 0;
    func_80221304();
}

INCLUDE_ASM(const s32, "20CD0", func_80221490);

INCLUDE_ASM(const s32, "20CD0", func_80221614);

INCLUDE_ASM(const s32, "20CD0", func_802217FC);

INCLUDE_ASM(const s32, "20CD0", func_802219E8);

INCLUDE_ASM(const s32, "20CD0", func_80221D38);

char* func_80221E10(char* arg0, s32 arg1) {
    s32 var_s0;
    s32 var_s0_2;

    var_s0 = 0;
    while (arg0[var_s0++] != 0);
    arg0 = &arg0[var_s0 + 1];
    
    for (var_s0 = 1; var_s0 != arg1; var_s0++) {
        arg0 = func_8020EB44(arg0);
    }
    return arg0;
}

INCLUDE_ASM(const s32, "20CD0", func_80221E78);

int func_80222214(s32 arg0, s32 arg1) {
    s32 temp_v0;
    s32 var_s0;

    temp_v0 = func_8020ED70();

    for (var_s0 = 1; var_s0 <= temp_v0; var_s0++) {
        if (func_80211098(func_80221E10(arg0, var_s0), arg1) == 0) {
            return 1;
        }
    }
    return 0;
}

int func_80222298(void) {
    return 0;
}

INCLUDE_ASM(const s32, "20CD0", func_802222A0);

void func_80222508(s32 arg0) {
    func_802222A0(D_8024A008, D_802497C4, D_8024964C, -arg0);
}

INCLUDE_ASM(const s32, "20CD0", func_80222540);

INCLUDE_ASM(const s32, "20CD0", func_802227A0);

void func_80222880(u8 arg0) {
    int i;
    u8* var = D_802497D8;

    var[0] = 0;
    var[1] = 0;
    var[2] = 0;
    var[3] = 0;
    var[4] = 0xA;
    var[5] = 1;
    var[6] = 5;
    var[7] = arg0;
    
    var[17] = 0xFE;
    
    var[63] = 1;
    
    for (i = 0; i < 0x10; i++) {
        func_80218C18(&D_802497D8[i]);
    }
    func_802026E4(D_802497D8);
    for (i = 0; i < 330000; i++);
    func_80202BAC(D_802497D8);
    for (i = 0; i < 330000; i++);
}

INCLUDE_ASM(const s32, "20CD0", func_8022295C);

void func_80222AAC(s32 arg0) {
    if (D_8023F614 != 0) {
        func_802030A0(1, 0);
        func_802147E8(0xDD, 0xCC - arg0, 6, arg0, 0, 0xFF, 0);
        func_80218BBC();
        func_80211184();
    }
}

#ifndef NON_MATCHING
asm(".word 0x0C080C28");
#endif
