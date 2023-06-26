#include "common.h"

INCLUDE_ASM(const s32, "0", func_80780800);

INCLUDE_ASM(const s32, "0", func_807808E0);

INCLUDE_ASM(const s32, "0", func_80780948);

void func_807809B8(void) {
    s32 temp_s0;
    s32 var_v0;

    var_v0 = 0x3E7;
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

INCLUDE_ASM(const s32, "0", func_80780AE8);

INCLUDE_ASM(const s32, "0", func_80780B6C);

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

INCLUDE_ASM(const s32, "0", func_80780C48);
