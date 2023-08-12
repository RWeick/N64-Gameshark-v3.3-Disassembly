#include "common.h"

u32 D_80222B4C;

u32 D_80225A2C[];

int D_80225A44[];

int D_80225A5C[];

u32 D_80225A74[];

s16 D_80243418[];

u32 *D_802497D8;

void func_80202B88(void);
u8 func_80202C90(void);

INCLUDE_ASM(const s32, "540", func_80200940);

INCLUDE_ASM(const s32, "540", func_80201164);

INCLUDE_ASM(const s32, "540", func_802014F4);

INCLUDE_ASM(const s32, "540", func_8020162C);

int func_802017E4(s32 arg0) {
    int i;
    int rv = 0;

    for (i = D_80225A5C[arg0]; i < D_80225A44[arg0]; i++) {
        if (D_80243418[i] == 1) {
            rv += 1;
        }
    }
    return rv;
}

INCLUDE_ASM(const s32, "540", func_8020184C);

INCLUDE_ASM(const s32, "540", func_802018CC);

INCLUDE_ASM(const s32, "540", func_80201D44);

s32 func_80201E64(void) {
    return func_80202C90() & 1;
}

INCLUDE_ASM(const s32, "540", func_80201E84);

s32 func_80201EE0(s32 arg0) {
    u8 sp10[0x100];
    s32 temp_a0;

    func_80217BC4(&D_80222B4C, arg0);
    func_80201E84(arg0, 0);
    func_8020222C(sp10, 0, 0x100, arg0);
    D_80225A2C[arg0] = sp10[0x3A];
    D_80225A44[arg0] = D_80225A2C[arg0] << 7;
    temp_a0 = D_80225A2C[arg0] * 2;
    D_80225A5C[arg0] = temp_a0 + 1;
    D_80225A74[arg0] = temp_a0 + 3;
    return D_80225A44[arg0];
}

INCLUDE_ASM(const s32, "540", func_80201F90);

INCLUDE_ASM(const s32, "540", func_802021C4);

INCLUDE_ASM(void, "540", func_8020222C);

INCLUDE_ASM(const s32, "540", func_8020237C);

INCLUDE_ASM(const s32, "540", func_80202548);

void func_802026E4(void* arg0) {
    vu32* si_regs = (vu32*)PHYS_TO_K1(SI_BASE_REG); 
    func_80202B88();
    si_regs[0] = (u32)arg0 & 0x1FFFFFFF;
    si_regs[4] = PIF_RAM_START;
}

INCLUDE_ASM(const s32, "540", func_80202728);

INCLUDE_ASM(const s32, "540", func_80202898);

INCLUDE_ASM(const s32, "540", func_80202A04);

void func_80202B88(void) {
    u32* si_regs = (u32*)PHYS_TO_K1(SI_BASE_REG); // bug! should be volatile!

    while ((si_regs[6] & 3) != 0);
}

void func_80202BAC(void* arg0) {
    vu32* si_regs = (vu32*)PHYS_TO_K1(SI_BASE_REG); 
    func_80202B88();
    si_regs[0] = (u32)arg0 & 0x1FFFFFFF;
    si_regs[1] = PIF_RAM_START;
}

s32 func_80202BF0(s32 arg0) {
    u32 var_a1 = 0;
    int var_a2;
    u32 var_v0;
    int var_v1;

    for (var_a2 = 0x400; var_a2 != 0; var_a2 >>= 1) {
        var_v0 = var_a1 & 0x10;
        var_v1 = var_v0 != 0;
        if (arg0 & var_a2) {
            var_v1 ^= 1;
        }
        var_a1 <<= 1;
        if (var_v1 == 1) {
            var_a1 ^= 0x15;
        }
    }
    return var_a1 & 0x1F;
}

INCLUDE_ASM(const s32, "540", func_80202C30);

u8 func_80202C90(void) {
    s32 var_s1;
    s32 var_s1_2;
    s32 var_s1_3;
    s32 var_v0;
    u8* temp_s0;

    func_80201D44();
    temp_s0 = D_802497D8;
    temp_s0[0] = 0xFF;
    temp_s0[1] = 1;
    temp_s0[2] = 3;
    temp_s0[3] = 0xFF;
    
    temp_s0[7] = 0xFF;
    temp_s0[8] = 1;
    temp_s0[9] = 3;
    temp_s0[10] = 0xFF;
    
    temp_s0[14] = 0xFF;
    temp_s0[15] = 1;
    temp_s0[16] = 3;
    temp_s0[17] = 0xFF;
    
    temp_s0[21] = 0xFF;
    temp_s0[22] = 1;
    temp_s0[23] = 3;
    temp_s0[24] = 0xFF;
    
    temp_s0[28] = 0xFF;
    temp_s0[29] = 1;
    temp_s0[30] = 3;
    temp_s0[31] = 0xFF;
    
    temp_s0[35] = 0xFE;
    temp_s0[36] = 0xFE;
    
    temp_s0[63] = 1;
    for (var_s1 = 0; var_s1 < 0x10; var_s1++) {
        func_80218C18(&D_802497D8[var_s1]);
    }
    func_802026E4(D_802497D8);
    for (var_s1 = 0; var_s1 < 330000; var_s1++);
    func_80202BAC(D_802497D8);
    for (var_s1 = 0; var_s1 < 330000; var_s1++);
    return temp_s0[6];
}

INCLUDE_ASM(const s32, "540", func_80202DB0);

INCLUDE_ASM(const s32, "540", func_80202E70);

void func_80203044(u8* dest, u8* src, int len) {
    int i;
    for (i = len - 1; i != -1; i--) {
        *dest++ = *src++;
    }
}

void func_80203070(u8* dest, int len) {
    int i;
    for (i = len - 1; i != -1; i--) {
        *dest++ = 0;
    }
}
