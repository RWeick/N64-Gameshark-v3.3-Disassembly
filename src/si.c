#include "common.h"

void waitSIReserved(void) {
    volatile u32* si_regs = (vu32*)PHYS_TO_K1(SI_BASE_REG);
    while (si_regs[5] & 3);
}

u32 readPIRam(u32* arg0) {
    waitSIReserved();
    return *arg0;
}

void writePIRam(u32* arg0, u32 arg1) {
    waitSIReserved();
    *arg0 = arg1;
}

void pifUnlock(void) {
    writePIRam((u32*)0xBFC007FC, readPIRam((u32*)0xBFC007FC) | 8);
} // JoyChannel RAM + 0x3C

#ifndef NON_MATCHING
asm(
    "addiu      $3, $0, 0x2\n"
    "lw         $2, 0x10($4)"
    );
#endif
