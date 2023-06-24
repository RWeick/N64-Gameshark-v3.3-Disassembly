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

INCLUDE_ASM(const s32, "0", func_80780A04);

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
