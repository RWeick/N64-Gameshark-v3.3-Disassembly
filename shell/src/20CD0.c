#include "common.h"

s32 D_8023F614;

INCLUDE_ASM(const s32, "20CD0", func_802210D0);

INCLUDE_ASM(const s32, "20CD0", func_80221104);

INCLUDE_ASM(const s32, "20CD0", func_802211A0);

void func_802212D0(s32 arg0) {
    func_80218BBC();
    func_802211A0(-arg0, 0, 0);
}


INCLUDE_ASM(const s32, "20CD0", func_80221304);

INCLUDE_ASM(const s32, "20CD0", func_802213A0);

INCLUDE_ASM(const s32, "20CD0", func_802213DC);

INCLUDE_ASM(const s32, "20CD0", func_80221418);

INCLUDE_ASM(const s32, "20CD0", func_80221454);

INCLUDE_ASM(const s32, "20CD0", func_80221490);

INCLUDE_ASM(const s32, "20CD0", func_80221614);

INCLUDE_ASM(const s32, "20CD0", func_802217FC);

INCLUDE_ASM(const s32, "20CD0", func_802219E8);

INCLUDE_ASM(const s32, "20CD0", func_80221D38);

INCLUDE_ASM(const s32, "20CD0", func_80221E10);

INCLUDE_ASM(const s32, "20CD0", func_80221E78);

INCLUDE_ASM(const s32, "20CD0", func_80222214);

INCLUDE_ASM(const s32, "20CD0", func_80222298);

INCLUDE_ASM(const s32, "20CD0", func_802222A0);

INCLUDE_ASM(const s32, "20CD0", func_80222508);

INCLUDE_ASM(const s32, "20CD0", func_80222540);

INCLUDE_ASM(const s32, "20CD0", func_802227A0);

INCLUDE_ASM(const s32, "20CD0", func_80222880);

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
