#include "common.h"

#include <stdarg.h>

char D_80223060[]; // ". "
char D_80223064[]; // "B: "
char D_80223068[]; // "\x81C"
char D_8022306C[]; // "Z"
char D_80223070[]; // "."

char D_80223134[]; // ". "
char D_80223138[]; // "C\x81"
char D_8022313C[]; // "B"
char D_80223140[]; // "."

char D_802231C4[]; // ". "
char D_802231C8[]; // "Z"
char D_802231CC[]; // "\x81C"
char D_802231D0[]; // "B"
char D_802231D4[]; // "."

u8 D_80225A0C[]; // 3B AD D1 E5 FA DE

s32 D_80227B6C;

s32 D_80227B74;

s32 D_80227B8C;

s32 D_80227BA8;

s32 D_80227BB0;
s32 D_80227BB4;

s32 D_80227BC0;
s32 D_80227BC4;

char * D_80227CF0[];

extern s32 D_80228278;

u8 D_8023F618[]; // 20 1A 26 1E 3B 2C 1A 2F 1E 1D 1A 2D 00
u8 D_8023F628[]; // 3B AD D1 E5 FA DE

s32 D_80243318;

s32 D_80243330;

s32 D_8024541C;
s32 D_80245420;

s32 D_80249640;
s32 D_80249644;

s32 D_80249654;

u16 D_80249688[];

s32 D_802497A0;

s32 D_802497B8;

u8 D_802497E0[];

u8 D_80249800[]; // 100

char * D_80249880;

s32 D_80249E2C;

s32 D_8024A178;

void func_80208160(void) {
    int i;
    for (i = 0x7F; i >= 0; i--) {
        D_80249688[i] = 0;
    }
    func_80218218(0x2EF00, D_80249688, 0x100);
}

INCLUDE_ASM(const s32, "7D60", func_802081AC);

void func_80208248(void) {
    func_80214280(1, 0xD, D_80227CF0[0xDF], D_80223060, D_80223064, D_80227CF0[0x2F], D_80223060, D_80223068, D_80227CF0[0x32], D_80223060, D_8022306C, D_80227CF0[0x11], D_80223060, D_80227CF0[0xE0], D_80223070);
}

void func_802082D8(void) {
    if (D_80227B8C == 0) {
        func_80214280(1, 7, D_80227CF0[0xDF], D_80223060, D_80223064, D_80227CF0[0x2F], D_80223060, D_80227CF0[0xE0], D_80223070);
    } else {
        func_80214280(1, 9, D_80227CF0[0xDF], D_80223060, D_80223064, D_80227CF0[0x2F], D_80223060, D_80227CF0[0xE0], D_80223060, D_80227CF0[0xFB], D_80223070);
    }
}

void func_802083A4(s32 arg0) {
    func_80214280(arg0, 5, D_80227CF0[0xDF], D_80223060, D_80223068, D_80227CF0[0x11], D_80223070);
}

INCLUDE_ASM(const s32, "7D60", func_802083F4);

INCLUDE_ASM(const s32, "7D60", func_80208550);

void func_802088FC(s32 arg0, s32 arg1) {
    func_80208550(arg0, arg1, 1);
}

void func_80208918(s32 arg0, s32 arg1) {
    func_80208550(arg0, arg1, 0);
}

void func_80208934(void) {
    func_80210FCC(0x80000000);
    func_802061D0(1);
    func_802112DC(0x46, 0xB1, 0xB3, 0x21, 0x280028);
    func_8021150C(0x46, 0xB0, 0xB3, 0x21, 0xFFFEFFFE);
    func_80210F64(0xB4, D_80227CF0[0x44], 0xFFFEFFFE);
    func_80210F64(0xC8, D_80227CF0[0xA1], 0xFFFEFFFE);
    func_80211184();
    while (func_80210DA0() != 0x80000000);
    func_80210FCC(0x80000000);
}

INCLUDE_ASM(const s32, "7D60", func_802089FC);

void func_80208BEC(s32 arg0) {
    func_802090D4(D_8024A178, D_802497B8, D_80245420, D_80243318, D_80243330, -arg0);
}

void func_80208C38(s32 arg0) {
    s32 temp_v1;
    s8 var_v1;
    char* var_v0;

    func_802090D4(D_8024A178, D_802497B8, D_80245420, 0, D_80243330, -arg0);
    func_802083F4(D_80249640, D_80249644);
    D_80227B6C++;
    if (D_80227B6C > 15) {
        if (D_80227B6C == 30) {
            D_80227B6C = 0;
        }
        D_80249880[D_802497A0] = '_';
    } else {
        D_80249880[D_802497A0] = ' ';
    }
    func_802112DC(0x18, D_80249654, 0x112, 9, 5);
    func_80210F64(D_80249654 + 1, D_80249880, 0xFFFEFFFE);
}

INCLUDE_ASM(const s32, "7D60", func_80208D38);

INCLUDE_ASM(const s32, "7D60", func_802090D4);

INCLUDE_ASM(const s32, "7D60", func_802097F0);

INCLUDE_ASM(const s32, "7D60", func_80209FD4);

INCLUDE_ASM(const s32, "7D60", func_8020A43C);

INCLUDE_ASM(const s32, "7D60", func_8020A6EC);

INCLUDE_ASM(const s32, "7D60", func_8020A77C);

INCLUDE_ASM(const s32, "7D60", func_8020A9B8);

INCLUDE_ASM(const s32, "7D60", func_8020AB78);

void func_8020B818(u32 num, char* dest) {
    int i;
    int c;
    u32 hexit;

    dest[8] = 0;
    
    for (i = 7; i >= 0; i--) {
        hexit = (num >> (i * 4)) & 0xF;
        c = hexit + (hexit >= 10 ? 'A' - 10 : '0');
        *dest++ = c;
    }
}

void func_8020B854(s32 arg0, u8* arg1, u32 arg2) {
    s32 i;

    func_80210E24(arg0, arg1);
    while (func_80214260(arg1) < arg2) {
        if (arg2 < 0) { // ??? something strange with integer promotion???
            *arg1 = '0';
        } else {
            for (i = arg2; i >= 0; i--) {
                arg1[i + 1] = arg1[i];
            }
            *arg1 = '0';
        }
    }
}

void func_8020B8C8(s32 arg0, s32 arg1, s32 arg2, s32 arg3) {
    char buf[0x10];
    int i;

    func_80210E24(arg2, buf);
    
    while (func_80214260(buf) < 5U) {
        for (i = 5; i >= 0; i--) {
            buf[i + 1] = buf[i];
        }
        buf[0] = '0';
    }
    func_80210DD8(arg0, arg1, buf, arg3);
}

INCLUDE_ASM(const s32, "7D60", func_8020B96C);

INCLUDE_ASM(const s32, "7D60", func_8020B9DC);

INCLUDE_ASM(const s32, "7D60", func_8020BB14);

void func_8020BF40(void) {
    func_80214280(0, 0xA, D_80227CF0[0xA3], D_80223134, D_80223138, D_80227CF0[0x11], D_80223134, D_80227CF0[0x12F], D_8022313C, D_80227CF0[0x1E], D_80223134, D_80227CF0[0xDE], D_80223140);
}

void func_8020BFC0(s32 arg0) {
    func_8020BB14(D_80249E2C, D_80227BB0, -arg0);
}

INCLUDE_ASM(const s32, "7D60", func_8020BFF0);

INCLUDE_ASM(const s32, "7D60", func_8020C078);

void func_8020C2B4(void) {
    func_8020BB14(D_80249E2C, D_80227BB0, 0);
    func_8021117C();
    func_80211184();
    func_8021127C(0xC, &func_8020BFC0);
}

void func_8020C300(void) {
    if (D_80249E2C != 0) {
        D_80227B74 = D_80249E2C;
        func_8020D440(0);
    }
}

INCLUDE_ASM(const s32, "7D60", func_8020C330);

void func_8020C4A8(s32 arg0) {
    s32 temp_s0;
    s32 temp_v0;

    memcpy(D_802497E0, D_8023F618, 13);
    memcpy(D_80225A0C, D_8023F628, 6);
    temp_s0 = func_80201E64();
    func_80218BBC();
    if (temp_s0 != 0) {
        if (arg0 != 0) {
            func_802217FC(D_80249E2C);
        } else {
            temp_v0 = func_80221614(temp_s0);
            if (temp_v0 != 0) {
                D_80249E2C = temp_v0;
            }
            if (D_80249E2C > 0) {
                func_8020C300();
            }
        }
    } else {
        func_802213A0();
    }
    D_80227BA8 = 0;
    D_80227BB4 = 0;
    func_802210D0();
}

INCLUDE_ASM(const s32, "7D60", func_8020C5CC);

#ifdef EQUIVALENT

void func_8020C884(void) {
    func_8020AB78(D_80249E2C, 0, 1);
    func_8020E340();
    func_8020BF40();
    D_80228278 = func_8020E5C8();
}

#else
INCLUDE_ASM(const s32, "7D60", func_8020C884);
#endif

INCLUDE_ASM(const s32, "7D60", func_8020C8D0);

INCLUDE_ASM(const s32, "7D60", func_8020CD9C);

void func_8020CEA8(void) {
    func_80214280(0, 0xD, D_80227CF0[0xA3], D_802231C4, D_802231C8, D_80227CF0[0x12], D_802231C4, D_802231CC, D_80227CF0[0x11], D_802231C4, D_802231D0, D_80227CF0[0x10], D_802231C4, D_80227CF0[0xDE], D_802231D4);
}

void func_8020CF38(s32 arg0) {
    func_8020CF74(D_80227B74, D_8024541C, &D_80249800, 0, -arg0);
}

INCLUDE_ASM(const s32, "7D60", func_8020CF74);

void func_8020D440(s32 arg0) {
    int i;
    int is_master_code;

    D_80227BC0 = func_8020F6CC(D_80227B74);
    if (arg0 == 0) {
        D_80227BC4 = 0;
        
        for (i = 0; i < 100; i++) {
            D_80249800[i] = 0;
        }
        
        for (i = 0; i < D_80227BC0; i++) {
            D_80249800[i] = func_8020EFDC(D_80227B74, i + 1);
            is_master_code = func_8020D550(D_80227B74, i + 1);
            if (is_master_code == 1) {
                D_80249800[i] = is_master_code;
            }
            if (D_80249800[i] != 0) {
                D_80227BC4 += 1;
            }
        }
    }
}

int func_8020D550(s32 game, s32 code) { // is_master_code
    char code_name[0x28];

    if (code != 0) {
        func_8020FB08(game, code, code_name);
        if (code_name[0] != '(') {
            return 0;
        }
        if (code_name[1] != 'M') {
            return 0;
        }
        if (code_name[2] == ')') {
            return 1;
        }
    }
    return 0;
}

INCLUDE_ASM(const s32, "7D60", func_8020D5A4);

#ifndef NON_MATCHING
asm(
    ".word 0x7061D186\n"
    ".word 0x5BC4EA24\n"
    ".word 0x4C25DDC3"
    );
#endif
