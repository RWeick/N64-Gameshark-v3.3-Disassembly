#include "common.h"

s32 D_80249874;
s32 D_8024A008;
s32 D_8024A174;

INCLUDE_ASM(const s32, "D880", func_8020DC80);

void func_8020DFF0(s32 arg0) {
    func_8020DC80(D_8024A008, D_8024A174, D_80249874, -arg0);
}

INCLUDE_ASM(const s32, "D880", func_8020E028);

#ifndef NON_MATCHING
asm(
    ".word 0x57F0D578\n"
    ".word 0x76B61A7D"
    );
#endif
