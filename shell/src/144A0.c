#include "common.h"

vu32* D_80228380;
vu32* D_80228384;
vu32* D_80228388;

vu32* D_80228394;

s32 D_8023F640;

u16* D_80249888; // framebuffer

s32 D_80249E28;
s32 D_80249E30;

s32 D_8024A170;

s32 D_8024B958; // text_x
s32 D_8024B95C; // text_y

void func_802148A0(void) {
    while (*D_80228394 & 0x01000000);
    while (!(*D_80228388 & 0x04000000));
}

void func_802148F4(void) {
    while (!(*D_80228384 & 0x10000000));
}

INCLUDE_ASM(const s32, "144A0", func_8021492C);

INCLUDE_ASM(const s32, "144A0", func_80214A54);

INCLUDE_ASM(const s32, "144A0", func_80214AA8);

INCLUDE_ASM(const s32, "144A0", func_80214B98);

void func_80214CAC(u32 arg0) {
    *D_80228384 = arg0 ^ 0x03000001;
}

void func_80214CCC(s32 arg0, s32 arg1, s32 arg2, s32 arg3) {
    int i;

    func_802148A0();
    *D_80228384 = 0x04000000;
    *D_80228380 = 0x01000000;
    *D_80228380 = 0xA0000000;
    *D_80228380 = (arg1 << 0x10) | arg0;
    *D_80228380 = (arg3 << 0x10) | arg2;
    for (i = 0; i < (arg2 * arg3) / 2; i++) {
        *D_80228380 = 0;
    }
}

void func_80214D98(void) {
    func_80214CCC(0, D_8023F640 ? 0 : 0xF0, 0x140, 0xF0);
}

INCLUDE_ASM(const s32, "144A0", func_80214DD0);

void func_80214E80(s32 arg0, s32 arg1, s32 arg2, s32 arg3, s32 arg4) {
    u16 val = (arg2 << 11) | (arg3 << 6) | (arg4 << 1);
    
    D_80249888[arg1 * 320 * sizeof(u16) + arg0] = val;
}

INCLUDE_ASM(const s32, "144A0", func_80214EC0);

void func_80214F28(s32 arg0) {
    func_80214EC0(0, 0, 0x280, 0xF0, arg0);
}

void func_80214F54(void) {
    vu32* ai_regs = (vu32*)PHYS_TO_K1(VI_BASE_REG);
    while ((ai_regs[4] & 0x3FE) != 2);
    while ((ai_regs[4] & 0x3FE) == 2);
}

void func_80214F98(s32 arg0) {
    vu32* ai_regs = (vu32*)PHYS_TO_K1(VI_BASE_REG);
    ai_regs[1] = arg0;
}

INCLUDE_ASM(const s32, "144A0", func_80214FA8);

INCLUDE_ASM(const s32, "144A0", func_80214FF4);

void func_8021503C(u32 arg0) {
    if (arg0 - 0x80 < 4U) {
        arg0 += 0x21;
    }
    func_8021FAE0(D_8024B958 + 0x40, D_8024B95C + 0x20, arg0, D_80249E28);
    D_8024B958 += 8;
}

void func_8021509C(u8* arg0) {
    u32 var_a2;
    
    while (*arg0 != '\0') {
        if (D_8024B958 >= '9') {
            var_a2 = *arg0++;
            if (var_a2 > '\x7f' && var_a2 < '\x84') {
                var_a2 += 33;
            }
            func_8021FAE0(D_8024B958, D_8024B95C, var_a2, D_80249E28);
        } else {
            arg0++;
        }
        
        D_8024B958 += 8;
        if (D_8024B958 >= 0x180) {
            return;
        }
    }
}

void func_80215144(s32 arg0) {
    s32 digit = arg0 & 0x0F;
    func_8021503C(digit + (digit >= 10 ? ('A' - 10) : '0'));
}

void func_80215178(s32 arg0) {
    func_80215144(arg0 >> 4);
    func_80215144(arg0);
}

void func_802151A8(s32 arg0) {
    func_80215178(arg0 >> 8);
    func_80215178(arg0);
}

void func_802151D8(s32 arg0) {
    func_802151A8(arg0 >> 0x10);
    func_802151A8(arg0);
}

INCLUDE_ASM(const s32, "144A0", func_80215208);

INCLUDE_ASM(const s32, "144A0", func_80215294);

INCLUDE_ASM(const s32, "144A0", func_802154E0);

void func_80215678(u16* buf, int h, int w, __attribute__((unused)) s16 col) {
    s32 i;
    for (i = 0; i < h * w; i++) { // swap endianness??
        buf[i] = ((buf[i] >> 8) | ((buf[i] & 0xFF) << 8)) << 1;
    }
}

void func_802156BC(s16* buf, int h, int w, s16 col) {
    s32 i;
    for (i = 0; i < h * w; i++) {
        if (buf[i] == 0) {
            buf[i] = 2;
        }
    }
    for (i = 0; i < h * w; i++) {
        if (buf[i] == col) {
            buf[i] = 0;
        }
    }
}

void func_80215730(void) {
    vu32* ai_regs = (vu32*)PHYS_TO_K1(VI_BASE_REG);
    D_8024A170 = ai_regs[4];
}

void func_80215744(s32 arg0, s32 arg1) {
    D_8024B958 = arg0;
    D_8024B95C = arg1;
}

#ifndef NON_MATCHING
asm(
    ".word 0x24A30280\n"
    ".word 0x95020000"
    );
#endif
