#include "common.h"

u8 D_80795910[];

s32 D_80795950;

s32 D_8079595C;

void func_80780C50(s32 arg0) {
    func_80787FBC(0x800, arg0);
    func_80787C0C();
}

u8 func_80780C78(u8 arg0) {
    s32 i = 0;
    s32 ret = 0xff;
    
    while (D_80795910[i] != 0xff) {
        if (D_80795910[i] == arg0) {
            ret = D_80795910[i + 1];
            break;
        }
        i += 2;
    }

    return ret;
}

INCLUDE_ASM(const s32, "450", func_80780CD0);

void func_80780D74(u8 arg0) {
    func_80780CD0(arg0);
}

void func_80780D90(void) {
}

s32 func_80780D98(void) {
    return D_80795950;
}

void func_80780DA8(s32 arg0) {
    D_80795950 = arg0;
    WRITE32(0xBE5FFFFC, arg0);
}

void func_80780DC0(s32 arg0) {
    s32 i;
    for (; arg0 != 0; arg0--) {
        for (i = 0; i <= 0xFFFF; i++);
    }
}

void func_80780DF0(void) {
    s32 temp_s0;

    temp_s0 = func_80780D98() & 0x7F7F7F7F;
    func_80780DA8(temp_s0);
    func_80780DC0(1);
    func_80780DA8(temp_s0 | 0x80808080);
    func_80780DC0(0x64);
}

void func_80780E44(s32 arg0) {
    s32 var_a0 = func_80780D98() & 0xBFBFDFBF;
    if (arg0 != 0) {
        var_a0 |= 0x40402040;
    }
    func_80780DA8(var_a0);
}

void func_80780E8C(s32 arg0) {
    s32 var_a0;

    var_a0 = func_80780D98() & 0xDFDFBFDF;
    if (arg0 != 0) {
        var_a0 |= 0x20204020;
    }
    func_80780DA8(var_a0);
}

s32 func_80780ED4(void) {
    return func_80787F80(0);
}

void func_80780EF0(s32 arg0) {
    s32 var_s0 = arg0 ? 0x400040 : 0;
    while ((func_80780ED4() & 0x400040) != var_s0);
}

INCLUDE_ASM(const s32, "450", func_80780F40);

INCLUDE_ASM(const s32, "450", func_80780FA8);

INCLUDE_ASM(const s32, "450", func_80781034);

INCLUDE_ASM(const s32, "450", func_80781104);

INCLUDE_ASM(const s32, "450", func_8078116C);

void func_80781230(void) {
    if ((D_8079595C == 0) && (func_80781034() == 0)) {
        for (;;);
    }
    D_8079595C = 1;
}

INCLUDE_ASM(const s32, "450", func_80781274);

#ifndef NON_MATCHING
asm(
    ".word 0xAC620130\n"
    ".word 0x8FBF0014"
    );
#endif
