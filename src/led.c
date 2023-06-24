#include "common.h"

#include "hw.h"
#include "3650.h"

u8 ledSegmentTable[];           // ' ' 00 '.' 7F '0' 84 '1' 9F '2' C8 '3' 8A '4' 93 '5' A2        4 
                                // '6' A0 '7' 8F '8' 80 '9' 82 'E' E0 'F' E1 'H' 91 'L' F4       3 5
                                // 'O' 84 'P' C1 'R' 81 'a' FE 'b' FD 'c' FB 'd' F7 'e' EF        2 
                                // 'f' DF 'g' BF 'z' EA 00 FF FF 00                              1 6
                                //                                                                0  7

void waitVsync(void) {
    vu32* vi_regs = (vu32*)PHYS_TO_K1(VI_BASE_REG);
    while ((vi_regs[4] & 0x3FE) != 2);
    while ((vi_regs[4] & 0x3FE) == 2);
}

void func_80042504(u32 arg0) {
    write16Doubled(0x800, arg0);
    func_8004267C();
}

s32 getLEDSegmentData(char arg0) {
    int index = 0;
    int rv = 0xFF;

    while (ledSegmentTable[index] != 0xFF) {
        if (ledSegmentTable[index] == arg0) {
            rv = ledSegmentTable[index + 1];
            break;
        }
        
        index += 2;
    }
    
    return rv;
}

void setLED(char arg0) {
    u32 var_s0;
    int toWrite;

    func_800426D4(0x600);
    toWrite = getLEDSegmentData(arg0) | 0x10000;
    while (toWrite >= 0x101) {
        var_s0 = (toWrite & 1) ? 0x02000200 : 0;
        func_80042504(var_s0);
        func_80042504(var_s0 | 0x04000400);
        func_80042504(var_s0);
        toWrite = toWrite / 2;
    };
    func_800426D4(0x200);
}

void func_80042628(char arg0) {
    setLED(arg0);
}

#ifndef NON_MATCHING
asm(".set noreorder\n"
    "jr         $31\n"
    " addiu     $29, $29, 0x18\n"
    "addiu      $2, $0, 0x9F\n"
    ".set reorder"
    );
#endif
