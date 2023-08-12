#include "common.h"

void* D_802497BC;

void func_80215CFC(void*);

INCLUDE_ASM(const s32, "155D0", func_802159D0);

INCLUDE_ASM(const s32, "155D0", func_80215A8C);

INCLUDE_ASM(const s32, "155D0", func_80215B4C);

void func_80215BC4(void) {
    func_80215CFC(D_802497BC);
}

INCLUDE_ASM(const s32, "155D0", func_80215BE8);

void func_80215C94(void) {
    u32* si_regs = (u32*)PHYS_TO_K1(SI_BASE_REG); // bug! should be volatile!

    while ((si_regs[6] & 3) != 0);
}

void func_80215CB8(void* arg0) {
    vu32* si_regs = (vu32*)PHYS_TO_K1(SI_BASE_REG); 
    func_80215C94();
    si_regs[0] = (u32)arg0 & 0x1FFFFFFF;
    si_regs[4] = PIF_RAM_START;
}

void func_80215CFC(void* arg0) {
    vu32* si_regs = (vu32*)PHYS_TO_K1(SI_BASE_REG); 
    func_80215C94();
    si_regs[0] = (u32)arg0 & 0x1FFFFFFF;
    si_regs[1] = PIF_RAM_START;
}
