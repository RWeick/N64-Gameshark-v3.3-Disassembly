#include "common.h"

#include "led.h"
#include "hw.h"
#include "libc.h"
#include "util.h"

void func_80042694(u8);
void func_800426D4(s16);

char unkLedValue;               // 0x61 'a'
s32 D_80042B14;                 // 0x00000000

void func_80042650(void) {
    func_800426D4(0x200);
    func_80042694(0);
    setLED(0);
}

void func_8004267C(void) {
    int var_v0 = 0xA0;
    while (--var_v0 >= 0);
}

void func_80042694(u8 arg0) {
    * (u32 *) 0xBE5FFFFC = (arg0 << 0x18) | (arg0 << 0x10) | (arg0 << 8) | arg0;
    func_8004267C();
}

void func_800426D4(s16 arg0) {
    write16Doubled(0x600, arg0);
}

s32 func_800426F8(void) {
    return func_80040580(0);
}

s32 func_80042714(s32 arg0) {
    s32 rv;
    u32 Status;

    Status = getStatus();
    setStatus(Status & ~SR_IE);
    while (!(func_800426F8() & 0x10));
    rv = func_800426F8() & 0xF;
    func_80042694((arg0 & 0xF) | 0x10);
    while (func_800426F8() & 0x10);
    func_80042694(0);
    setStatus(Status);
    return rv;
}

s32 func_800427A4(s32 arg0) {
    return (func_80042714(arg0 >> 4) << 4) | func_80042714(arg0);
}

s32 func_800427E0(s32 arg0) {
    return (func_800427A4(arg0 >> 8) << 8) | func_800427A4(arg0);
}

s32 func_8004281C(s32 arg0) {
    return (func_800427E0(arg0 >> 0x10) << 0x10) | func_800427E0(arg0);
}

void func_80042858(void) {
    s32 var_s0;

    var_s0 = 0;
    while (!var_s0) {
        if ((func_80042714(0) == 0xF)) {
            if((func_80042714(0xF) == 0)){
                if((func_80042714(0xA) == 0xE)){
                    if((func_80042714(0xE) == 0xA)) {
                        var_s0 = 1;
                    }
                }
            }
        }
    } 
}

void func_800428E4(u8* arg0) {
    while (*arg0 != 0) {
        func_800427A4(*arg0++);
    }
}

s32 func_80042928(void) {
    D_80042B14++;
    if (D_80042B14 == 11) {
        D_80042B14 = 0;
        setLED(unkLedValue);
        unkLedValue++;
        if (unkLedValue == 'd') {
            unkLedValue = 'g';
        }
        if (unkLedValue == 'h') {
            unkLedValue = 'a';
        }
    }
    if (func_800426F8() & 0x10) {
        return func_800426F8() & 0xF;
    } else {
        return 0;
    }
}
