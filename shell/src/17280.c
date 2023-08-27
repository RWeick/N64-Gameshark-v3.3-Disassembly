#include "common.h"

u8 D_802283A0;
s32 D_802283A4;

void func_80217680(void) {
    func_80217724(0x200);
    func_802176C4(0);
    func_80206800(0);
}

void func_802176AC(void) {
    int i;
    for (i = 0; i < 0xC0; i++);
}

void func_802176C4(u8 arg0) {
    u32 temp = func_80206238() & 0xE0E0E0E0;

    WRITE32(0xBE5FFFFC, temp | ((arg0 << 0x18) | (arg0 << 0x10) | (arg0 << 8) | arg0));
    func_802176AC();
}

void func_80217724(s16 arg0) {
    func_80217CFC(0x600, arg0);
}

u32 func_80217748(void) {
    return func_80217CC0(0);
}

int exchange_4(int send) {
    int recv;
    
    s32 status = get_status();
    set_status(status & ~1);
    
    while (!(func_80217748() & 0x10));
    while (!(func_80217748() & 0x10));
    
    recv = func_80217748() & 0xF;
    func_802176C4((send & 0xF) | 0x10);
    
    while (func_80217748() & 0x10);
    while (func_80217748() & 0x10);
    
    func_802176C4(0);
    
    set_status(status);
    return recv;
}

s32 func_8021781C(s32 arg0) {
    s32 hi = exchange_4(arg0 >> 4);
    s32 lo = exchange_4(arg0);
    return (hi << 4) | lo;
}

s32 exchange_16(s32 arg0) {
    s32 hi = func_8021781C(arg0 >> 8);
    s32 lo = func_8021781C(arg0);
    return (hi << 8) | lo;
}

s32 func_80217894(s32 arg0) {
    s32 hi = exchange_16(arg0 >> 0x10);
    s32 lo = exchange_16(arg0);
    return (hi << 0x10) | lo;
}

void func_802178D0(void) {
    int var_s0 = 0;
    while (var_s0 == 0) {
        if (exchange_4(0) == 0xF) {
            if (exchange_4(0xF) == 0) {
                if (exchange_4(0xA) == 0xE) {
                    if (exchange_4(0xE) == 0xA) {
                        var_s0 = 1;
                    }
                }
            }
        }
    }
}

void func_8021795C(char* str) {
    char c;
    while ((c = *str) != '\0') {
        func_8021781C(*str++);
    }
}

s32 func_802179A0(void) {
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

#ifndef NON_MATCHING
asm(
    ".word 0x8E050034\n"
    ".word 0x00A21021"
    );
#endif
