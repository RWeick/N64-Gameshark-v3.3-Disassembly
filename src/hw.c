#include "common.h"

#include "pi.h"

s32 memSize;                    // 0x00400000
s32 baseAddress;                // 0xB0000000

u8 D_80042A00[];                // 30 84 31 9F 32 C8 33 8A 34 93 35 A2 36 A0 37 8F 38 80 39 82 42 FF

s32 func_80040580(s32 arg0) {
    volatile s32* temp_s0 = (volatile s32 *)(baseAddress | memSize | arg0);
    waitPI();
    return *temp_s0;
}

void write16Doubled(u32 offset, u32 data) {
    s32 k = ((data & 0xffff) << 16) | (data & 0xffff);
    *(volatile s32 *)(baseAddress | memSize | offset) = k;
    waitPI();
}

void setBaseAddress(u32 addr) {
    u32 masked = (addr & 0x0F000000) | 0x10000000;
    write16Doubled(0x400, masked >> 0x18);
    baseAddress = masked | 0xB0000000;
}

void func_80040648(void) {
    write16Doubled(0x600, 0x7FF7FF);
}

void func_8004066C(u32 byte) {
    s32 mask;
    s32 bit;

    func_80040648();
    for (bit = 1; bit < 0x100; bit <<= 1) {
        mask =  (byte & bit) ? 0x01000100 : 0;
        write16Doubled(0x800, mask);
        write16Doubled(0x800, mask | 0x02000200);
        write16Doubled(0x800, mask);
    } ;
}

s32 func_800406FC(u8 arg0) {
    u32 i;
    u8 sp10[22];
    
    memcpy(sp10, D_80042A00, 22);

    for (i = 0; i < 22; i += 2) {
        if (sp10[i] == arg0) {
            func_8004066C(sp10[i + 1]);
            return 1;
        }
    }

    return 0;
}

#ifndef NON_MATCHING
asm("or         $2, $2, $3");
#endif
