#include "common.h"

extern u32 D_80227C10;
s32 D_80227C14;
s32 D_80227C18;

extern s32 D_80228274;

extern u32 D_80228290;
extern u32 D_80228294;
extern u32 D_8022829C;
extern u32 D_802282A0;

extern u8 D_80249800[];

INCLUDE_ASM(const s32, "FED0", func_802102D0);

INCLUDE_ASM(const s32, "FED0", func_802104C8);

INCLUDE_ASM(const s32, "FED0", func_802106E8);

void func_80210828(s32 arg0) {
    func_802106E8(D_80227C14, D_80227C18, -arg0);
}

void func_80210858(void) {
    D_80227C18 = 1;
    func_802106E8(D_80227C14, 1, 0);
    func_80214F54();
    func_80211184();
    func_8021127C(0xC, &func_80210828);
    func_802111A0(0x80000000, &func_80210828);
}

void func_802108BC(void) {
    u8 buf[0x100];
    s32 idx = 0;
    s32 var_t0_2;
    s32 i;

    func_802181FC(0x2FB00, buf, 0x100);
    buf[idx++] = 'G';
    buf[idx++] = 'T';
    buf[idx++] = D_80227C10 & 0xFF;
    buf[idx++] = D_80228290 & 0xFF;
    buf[idx++] = D_80228294 & 0xFF;
    buf[idx++] = D_80228274 & 0xFF;
    buf[idx++] = (D_80228274 >> 8) & 0xFF;
    buf[idx++] = D_8022829C & 0xFF;
    
    for (i = 0; i < 100; idx++, i++) {
        buf[idx] = D_80249800[i];
    }
    
    buf[idx++] = D_802282A0 & 0xFF;
    for (; idx < 0x100; idx++) {
        buf[idx] = 0xFF;
    }
    func_80218218(0x2FB00, buf, 0x100);
}

INCLUDE_ASM(const s32, "FED0", func_802109C8);

INCLUDE_ASM(const s32, "FED0", func_80210B4C);

#ifndef NON_MATCHING
asm(
    ".word 0x3C030100\n"
    ".word 0x34630001"
    );
#endif
