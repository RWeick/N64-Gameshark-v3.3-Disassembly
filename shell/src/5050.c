#include "common.h"

extern s32 D_80225884;

extern u8* D_80227C00;

extern char * D_80227CF0[];

extern s32 D_80227DBC;

void func_80205450(u32* buf, int len) {
    int key_idx;
    int i;
    const u32 key[0x10] = {
        0x1471332E, 0x8149432E, 0x75697B21, 0x15597883,
        0x1C2AD435, 0x13ADE834, 0xE2DE18B1, 0x51BC7835,
        0x158732D4, 0x68D77612, 0x55424441, 0xD1F3FE22,
        0xAEED7894, 0x34685312, 0xA3266563, 0x452CC12E,
    };
    
    key_idx = 0;
    for (i = 0; i < len; i++) {
        buf[i] = (buf[i] ^ key[key_idx]) - (key[key_idx] & 0xFF00);
        key_idx++;
        if (key_idx == 0x10) {
            key_idx = 0;
        }
    }
}

const char rodata_bleh[] = "num games=%8\n";

void func_802054E4(s32 arg0, s32 arg1) {
    func_80205450(arg1, arg0 >> 2);
}

INCLUDE_ASM(const s32, "5050", func_80205508);

INCLUDE_ASM(const s32, "5050", func_80205574);

INCLUDE_ASM(const s32, "5050", func_802058CC);

INCLUDE_ASM(const s32, "5050", func_8020595C);

INCLUDE_ASM(const s32, "5050", func_80205C00);

void func_80205D24(void) {
    func_802058CC(func_80205C00());
}

void func_80205D48(void) {
    char sp10[0x28];
    int num_codes;
    int i;
    int checksum;
    int unk;

    while (1) {
        while (func_8021781C(0x67U) != 0x47);
        if (func_8021781C(0x74U) == 0x54) {
            break;
        }
    }
    switch (func_8021781C(0)) {
        case 0x64:
            break;

        case 0x65:
            func_8021781C(1U);
            break;
        
        case 0x66:
            func_8021110C(sp10, D_80227DBC);
            func_8021781C(0x4EU);
            func_8021781C(1U);
            func_8021781C(0x12EU);
            func_8021781C(func_80214260(sp10));
            for (i = 0; i < func_80214260(sp10); i++) {
                func_8021781C(sp10[i]);
            }
            break;
        
        case 0x67:
            func_80205574();
            break;

        case 0x6E:
            func_8020595C();
            break;
        
        case 0x7F:
            func_80205FF0();
            break;

        case 0x7E:
            func_802060BC();
            break;
        
        case 0x7C: // uninitialised
            num_codes = func_80217894(unk);
            checksum = 0;
            for (i = 0; i < num_codes; i++) {
                D_80227C00[i] = func_8021781C(0U);
                checksum += D_80227C00[i];
            }
            if (checksum != func_80217894(0)) {
                func_8021781C(1U);
                func_8020E340();
                break;
            }
            func_8020E3D8();
            func_8021781C(2U);
            while (1) {
                func_80218BBC();
                func_802211A0(0, 1, 1);
                func_80210EFC(0x52, D_80227CF0[0x10F], 0xFFFEFFFE, 0);
                func_80214F54();
                func_80211184();
            }

        case 0x7D:
            func_80217894(D_80225884);
            checksum = 0;
            for (i = 0; i < D_80225884; i++) {
                func_8021781C(D_80227C00[i]);
                checksum += D_80227C00[i];
            }
            func_80217894(checksum);
            break;
    }
}

void func_80205FBC(void) {
    if ((func_802179A0() & 0xFF) == 3) {
        func_80205D48();
    }
}

void func_80205FF0(void) {
    s32 temp_a0;
    s32 temp_s0;
    s32 var_s1;
    s32 var_s2;
    s32* var_s3;
    s32 var_s4;
    s32 var_s5;

    var_s2 = 0x63;
    var_s4 = 0;
    var_s5 = 0;
    var_s3 = func_80217894(0);
    var_s1 = func_80217894(0);
    if (var_s3 != 0) {
        while (var_s1 > 0) {
            var_s5 += 1;
            temp_a0 = var_s2;
            if (!(var_s5 & 0x3FF)) {
                var_s2 += 1;
                func_80206800(temp_a0 & 0xFF);
                if ((var_s2 & 0xFF) == 0x67) {
                    var_s2 = 0x63;
                }
            }
            temp_s0 = *var_s3;
            var_s3 += 1;
            var_s1 -= 4;
            func_80217894(temp_s0);
            var_s4 += temp_s0;
        }
        var_s4 &= 0xFF;
    }
    func_8021781C(var_s4);
}

INCLUDE_ASM(const s32, "5050", func_802060BC);

#ifndef NON_MATCHING
asm(
    ".word 0x0000C016\n"
    ".word 0x466C6F61\n"
    ".word 0x74204465"
    );
#endif
