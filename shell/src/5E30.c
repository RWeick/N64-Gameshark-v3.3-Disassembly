#include "common.h"

s32 D_80227AD0;
s32 D_80227AD4;
s32 D_80227AD8;
s32 D_80227ADC;
volatile s32 D_BE500000;

void func_8020622C(void) {
    
}

s32 func_80206238(void) {
    return D_80227AD0;
}

void func_80206248(s32 arg0) {
    D_80227AD0 = arg0;
    D_BE500000 = arg0;
}

void func_80206260(int count) {
    int i;
    int j;

    for (i = count; i != 0; i--) {
        for (j = 0; j < 0x10000; j++);
    }
}

void func_80206290(void) {      // 01111111 01111111 01111111 01111111
    s32 temp_s0 = func_80206238() & 0x7F7F7F7F;
    func_80206248(temp_s0);
    func_80206260(1);           // 10000000 10000000 10000000 10000000
    func_80206248(temp_s0 | 0x80808080);
    func_80206260(0x64);
}

void func_802062E4(void) {      // 01111111 01111111 01111111 01111111
    func_80206248(func_80206238() & 0x7F7F7F7F);
}

void func_80206310(s32 arg0) {
    s32 var_a0;
                                // 10111111 10111111 11011111 10111111
    var_a0 = func_80206238() & 0xBFBFDFBF;
    if (arg0 != 0) {
        var_a0 |= 0x40402040;   // 01000000 01000000 00100000 01000000
    }
    func_80206248(var_a0);
}

void func_80206358(s32 arg0) {
    s32 var_a0;
                                // 11011111 11011111 10111111 11011111
    var_a0 = func_80206238() & 0xDFDFBFDF;
    if (arg0 != 0) {
        var_a0 |= 0x20204020;   // 00100000 00100000 01000000 00100000
    }
    func_80206248(var_a0);
}

u32 func_802063A0(void) {
    return func_80217CC0(0);
}

void func_802063BC(s32 arg0) {
    s32 var_s0 = arg0 ? 0x400040 : 0;
    while ((func_802063A0() & 0x400040) != var_s0);
}

void func_8020640C(s32 arg0) {
    s32 var_s0;
    int i;

    var_s0 = arg0;
    for (i = 0; i < 8; i++) {
        func_80206310(1);
        func_80206358(var_s0 & 0x80);
        var_s0 <<= 1;
        func_802063BC(1);
        func_80206310(0);
        func_802063BC(0);
    }
}

u32 func_80206474(void) {
    u32 var_s0;
    int i;

    var_s0 = 0;
    for (i = 0; i < 8; i++) {
        var_s0 <<= 1;
        var_s0 &= 0xFF;
        func_802063BC(1);
        func_80206310(1);
        func_802063BC(0);
        if (func_802063A0() & 0x200020) {
            var_s0 |= 1;
        }
        func_80206310(0);
    }
    return var_s0;
}

s32 func_80206500(void) {
    s32 temp_a0;
    s32 temp_s3;
    s32 var_s0;
    s32 i;

    func_80206290();
    var_s0 = 0xAE;
    temp_s3 = func_802063A0() & 0x200020;
    for(i = 0; i < 6; i++) {
        func_80206310(1);
        temp_a0 = var_s0 & 0x80;
        var_s0 <<= 1;
        if (temp_a0 != 0) {
            var_s0 |= 1;
        }
        var_s0 = var_s0 & 0xFF;
        func_80206358(temp_a0);
        func_80206260(1);
        func_80206310(0);
        func_80206260(1);
        if ((func_802063A0() & 0x200020) != temp_s3) {
            break;
        }
    }
    return i < 6;
}

s32 func_802065B4(u8* arg0, s32 arg1) {
    s32 var_a2;
    int j;
    int i;
    s32 var_v1;
    u8* temp_v0;
    s32 tmp;

    var_a2 = 0xFFFF;
    for (i = 0; i < arg1; i += 2) {
        
        temp_v0 = &arg0[i];
        var_v1 = (temp_v0[0] << 8) | temp_v0[1];
        
        for(j = 0; j < 16; j++) {
            tmp = var_a2 & 0x8000;
            var_a2 *= 2;
            if (var_v1 & 0x8000) {
                var_a2 |= 1;
            }
            var_v1 *= 2;
            
            if (tmp) {
                var_a2 ^= 0x8005;
            }
            
            var_a2 &= 0xFFFF;
        }
    }
    return var_a2;
}

INCLUDE_ASM(const s32, "5E30", func_8020661C);

void func_802066E0(void) {
    if (D_80227AD4 == 0) {
        func_80206500();
    }
    D_80227AD4 = 1;
}

s32 func_80206718(void) {
    D_80227AD8 = 2;
    D_80227ADC = 2;
    if (func_8020661C(0x6962A1B4) == 0x04554321) {
        D_80227AD8 = 1;
        D_80227ADC = 1;
        return 0;
    }
    return 1;
}

#ifndef NON_MATCHING
asm(".word 0x2046696C");
#endif
