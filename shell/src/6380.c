#include "common.h"

typedef struct {
    u32 unk0;
    u32 unk4;
    u32 unk8;
    u32 pad[8];
} UnkStruct;

const u8 D_80227AE0[] = {
    ' ', 0x00, '.', 0x7F, '0', 0x84, '1', 0x9F,
    '2', 0xC8, '3', 0x8A, '4', 0x93, '5', 0xA2,
    '6', 0xA0, '7', 0x8F, '8', 0x80, '9', 0x82,
	'E', 0xE0, 'F', 0xE1, 'H', 0x91, 'L', 0xF4,
    'O', 0x84, 'P', 0xC1, 'R', 0x81, 'a', 0xFE,
    'b', 0xFD, 'c', 0xFB, 'd', 0xF7, 'e', 0xEF,
	'f', 0xDF, 'g', 0xBF, 'z', 0xEA, 000, 0xFF,
    0xFF, 0x00,
};

s32 D_80227B28;
s32 D_80227B2C;
s32 D_80227B30;

s32 D_80227B3C;
s32 D_80227B40;
s32 D_80227B44;

s32 D_80227B50;
u8* D_80227B54;
UnkStruct* D_80227B58;
u8 D_80249890[];
u8 D_80249E38[];

const s32 func_80206B84(void);

void func_80206780(s32 arg0) {
    func_80217CFC(0x800, arg0);
    func_802176AC();
}

s32 func_802067A8(char arg0) {
    int index = 0;
    int rv = 0xFF;

    while (D_80227AE0[index] != 0xFF) {
        if (D_80227AE0[index] == arg0) {
            rv = D_80227AE0[index + 1];
            break;
        }
        
        index += 2;
    }
    
    return rv;
}

void func_80206800(u8 arg0) {
    s32 var_s0;
    s32 var_s1;

    func_80217724(0x600);
    var_s1 = func_802067A8(arg0) | 0x10000;
    while (var_s1 >= 0x101) {
        var_s0 = (var_s1 & 1) ? 0x02000200 : 0;
        func_80206780(var_s0);
        func_80206780(var_s0 | 0x04000400);
        func_80206780(var_s0);
        var_s1 /= 2;
    }
    func_80217724(0x200);
}

void func_802068A4(u8 arg0) {
    func_80206800(arg0);
}

s32 func_802068C0(void) {
    s32 temp_v0;
    s32 var_s1;
    s32 var_v0;
    s32 var_v0_2;

    var_s1 = 0;
    D_80227B3C = 1;
    D_80227B44 = 1;
    func_802111A0(0x80000000, func_80206B84);
    while (var_s1 == 0) {
        temp_v0 = func_80210DA0();
        if (temp_v0 & 0x02000004) {
            if (D_80227B44 == 1) {
                D_80227B44 = 0;
            }
        }
        if (temp_v0 & 0x01000008) {
            if (D_80227B44 == 0) {
                D_80227B44 = 1;
            }
        }
        if (temp_v0 & 0x40000000) {
            D_80227B44 = 1;
            var_s1 = 2;
        }
        if (temp_v0 & 0x80000000) {
            var_s1 = 1;
        }
        func_80206B84();
        func_8021117C();
        func_80211184();
    }
    func_802111A0(0x80000000, func_80206B84);
    func_802111A0(0x40000000, func_80206B84);
    return var_s1;
}

void func_802069E8(void) {
    func_802181FC(0x2FC00, D_80249890, 0x400);
}

void func_80206A14(void) {
    func_80218218(0x2FC00, D_80249890, 0x400);
}

s32 func_80206A40(u32 crc1, u32 crc2, u8 checksum, u32 pc) {
    int i;
    u32 calculated_checksum = crc1 + crc2 + pc;
    for (i = 0; i != 4; i++) {
        calculated_checksum += ((u32* )PHYS_TO_K1(0x1EC00030))[i];
    }
    return ((checksum ^ (calculated_checksum & 0xFF))) == 0;
}

u32 func_80206A7C(s32 arg0, s32 arg1) {
    s32 tmp;
    if (D_80227B2C == 0) {
        return 0xFFFEFFFE;
    }
    if (arg0 == D_80227B28) {
        if (D_80227B30 == 1) {
            if (!(arg0 & 1)) {
                tmp = D_80227B54[arg1];
                if ((tmp & 0xF0) < 0xF0) {
                    D_80227B54[arg1] += 0x10;
                }
            } else {
                tmp = D_80227B54[arg1];
                if ((tmp & 0xF) < 0xF) {
                    D_80227B54[arg1]++;
                }
            }
        }
        if (D_80227B30 == 2) {
            if (!(arg0 & 1)) {
                tmp = D_80227B54[arg1];
                if ((tmp & 0xF0) > 0) {
                     D_80227B54[arg1] -= 0x10;
                } 
            } else {
                tmp = D_80227B54[arg1];
                if ((tmp & 0xF) > 0) {
                    D_80227B54[arg1]--;
                } 
            }
        }
        D_80227B30 = 0;
        return 0x07C007C0;
    }
    return 0xFFFEFFFE;
}

INCLUDE_ASM(const s32, "6380", func_80206B84);

INCLUDE_ASM(const s32, "6380", func_80207208);

void func_802076F0(void) {
    s32 var_a0;
    u8 temp_v0;
    u8* temp_v1;

    func_802181FC(0, D_80249E38, 0x100);
    for (var_a0 = 0; var_a0 < 8; var_a0++) {
        D_80249E38[var_a0 + 0x10] =  D_80227B54[var_a0];
    }
    func_80218218(0, D_80249E38, 0x100);
}

u32 func_80207764(void) {
    u32 temp_v0;
    u32 var_s1;
    u32 var_v0;
    u32 var_v0_2;

    var_s1 = 0;
    D_80227B40 = 1;
    D_80227B44 = 1;
    func_802111A0(0x80000000, func_80206B84);
    while (var_s1 == 0) {
        temp_v0 = func_80210DA0();
        if (temp_v0 & 0x02000004) {
            if (D_80227B44 == 1) {
                D_80227B44 = 0;
            }
        }
        if (temp_v0 & 0x01000008) {
            if (D_80227B44 == 0) {
                D_80227B44 = 1;
            }
        }
        if (temp_v0 & 0x40000000) {
            D_80227B44 = 1;
            var_s1 = 2;
        }
        if (temp_v0 & 0x80000000) {
            var_s1 = 1;
        }
        func_80206B84();
        func_8021117C();
        func_80211184();
    }
    func_802111A0(0x80000000, func_80206B84);
    func_802111A0(0x40000000, func_80206B84);
    return var_s1;
}

void func_8020788C(void) {
    int i = 0;
    D_80227B50 = 0;
    while (1) {
        if ((D_80227B58[i].unk0 + D_80227B58[i].unk4 + D_80227B58[i].unk8) == 0) {
            break;
        }
        D_80227B50 += 1;
        i++;
    }
}

#ifndef NON_MATCHING
asm(
    ".word      0x0070C6EE\n"
    ".word      0x01060000\n"
    "nop"
    );
#endif
