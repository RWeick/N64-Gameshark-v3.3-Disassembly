#include "common.h"

u8 D_802283A0;
s32 D_802283A4;

INCLUDE_ASM(const s32, "17280", func_80217680);

INCLUDE_ASM(const s32, "17280", func_802176AC);

INCLUDE_ASM(const s32, "17280", func_802176C4);

INCLUDE_ASM(const s32, "17280", func_80217724);

u32 func_80217748(void) {
    return func_80217CC0(0);
}

INCLUDE_ASM(const s32, "17280", func_80217764);

INCLUDE_ASM(const s32, "17280", func_8021781C);

INCLUDE_ASM(const s32, "17280", func_80217858);

INCLUDE_ASM(const s32, "17280", func_80217894);

INCLUDE_ASM(const s32, "17280", func_802178D0);

INCLUDE_ASM(const s32, "17280", func_8021795C);

s32 func_802179A0(u8* arg1) {
    D_802283A4++;
    if (D_802283A4 == 11) {
        D_802283A4 = 0;
        D_802283A0++;
        if (D_802283A0 == 'd') {
            D_802283A0 = 'g';
        }
        if (D_802283A0 == 'h') {
            D_802283A0 = 'a';
        }
    }
    if (func_80217748() & 0x10) {
        return func_80217748() & 0xF;
    } else {
        return 0;
    }
}

INCLUDE_ASM(const s32, "17280", func_80217A28);

INCLUDE_ASM(const s32, "17280", func_80217A74);

INCLUDE_ASM(const s32, "17280", func_80217AA8);

INCLUDE_ASM(const s32, "17280", func_80217AD8);

INCLUDE_ASM(const s32, "17280", func_80217B08);

INCLUDE_ASM(const s32, "17280", func_80217B38);

#ifdef EQUIVALENT
void func_80217BC4(const char * msg, ...) {
    s32 pad[4];
}
#else
INCLUDE_ASM(const s32, "17280", func_80217BC4);
#endif

#ifdef EQUIVALENT
void func_80217BE0(void) {
    s32 pad[4];

}
#else
INCLUDE_ASM(const s32, "17280", func_80217BE0);
#endif

INCLUDE_ASM(const s32, "17280", func_80217BEC);

#ifndef NON_MATCHING
asm(
    "lw         $4, 0x54($16)\n"
    "sll        $3, $9, 2"
    );
#endif
