#include "common.h"

u8 D_80225890[];

u8 D_80225990[];

INCLUDE_ASM(const s32, "main", func_80200400);

INCLUDE_ASM(const s32, "main", func_80200490);

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
