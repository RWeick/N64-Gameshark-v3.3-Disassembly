#include "common.h"

char D_80224AB4[]; // "menuf.tg~"

s32 D_80228274;
s32 D_80228278;
s32 D_8022827C;
s32 D_80228280;

u16* D_80228368;
u16* D_8022836C;

s32 D_80249788;

extern s32 D_80249E28;
extern s32 D_80249E30;

u8 D_8024A010[];

extern s32 D_8024B958;
extern s32 D_8024B95C;

s32 func_80210DA0(void) {
    return func_80215A8C();
}

s32 func_80210DBC(void) {
    return func_80215BE8();
}

void func_80210DD8(s32 arg0, s32 arg1, s32 arg2, s32 arg3) {
    arg0 += D_80249E30 / 2;
    D_8024B958 = arg0;
    D_8024B95C = arg1;
    D_80249E28 = arg3;
    func_8021509C(arg2);
}

INCLUDE_ASM(const s32, "109A0", func_80210E24);

INCLUDE_ASM(const s32, "109A0", func_80210EFC);

INCLUDE_ASM(const s32, "109A0", func_80210F64);

void func_80210FCC(s32 arg0) {
    while (func_80210DBC() & arg0) {
        func_8021117C();
    }
}

INCLUDE_ASM(const s32, "109A0", func_80211010);

INCLUDE_ASM(const s32, "109A0", func_80211098);

char* func_8021110C(char* dst, const char* src) {
    for (; *src != '\0'; src++) {
        *dst++ = *src;
    }
    *dst = '\0';
    return dst;
}

char* func_80211134(char* dst, u8* src) {
    int c;
    for (; *dst != 0; dst++);
    for (; (c = *src) != 0; src++) {
        *dst++ = c;
    }
    *dst = 0;
    return dst;
}

void func_8021117C(void) {
}

void func_80211184(void) {
    func_80214FA8();
}

INCLUDE_ASM(const s32, "109A0", func_802111A0);

INCLUDE_ASM(const s32, "109A0", func_80211210);

void func_8021127C(s32 arg0, void (*arg1)(s32)) {
    while (arg0 != 0) {
        arg0 -= 1;
        if (arg1 != NULL) {
            arg1(0);
        }
        func_8021117C();
        if (arg1 != NULL) {
            func_80211184();
        }
    }
}

INCLUDE_ASM(const s32, "109A0", func_802112DC);

void func_80211340(s32 arg0, s32 arg1, s32 arg2, s32 arg3) {
    if (arg2 != 0x83) {
        if (arg2 > '\x7f' && arg2 < '\x84') {
            arg2 += 0x21;
        }
        func_8021FAE0(arg0 + 0x40, arg1, arg2, arg3);
    }
}

void func_80211374(s32 arg0) {
    s32 i;
    for (i = arg0; i > 0; i--) {
        func_80214F54();
    }
}

void func_802113A8(s32 arg0, s32 arg1, s32 arg2, s32 arg3) {
    s8 sp10[2];
    s32 temp_a2 = arg2 & 0xF;
    sp10[0] = temp_a2 + ((temp_a2 >= 10) ? ('A' - 10) : '0');
    sp10[1] = 0;
    func_80210DD8(arg0, arg1, (s32) sp10, arg3);
}

void func_802113E4(u32 arg0, u32 arg1, u8 arg2, s32 arg3) {
    func_802113A8(arg0, arg1, arg2 >> 4, arg3);
    func_802113A8(arg0 + 8, arg1, arg2 & 0xF, arg3);
}

void func_80211448(u32 arg0, u32 arg1, s32 arg2, s32 arg3) {
    func_802113E4(arg0, arg1, arg2 >> 8, arg3);
    func_802113E4(arg0 + 0x10, arg1, arg2, arg3);
}

void func_802114AC(s32 arg0, s32 arg1, s32 arg2, s32 arg3) {
    func_80211448(arg0, arg1, arg2 >> 0x10, arg3);
    func_80211448(arg0 + 0x20, arg1, arg2 & 0xFFFF, arg3);
}

INCLUDE_ASM(const s32, "109A0", func_8021150C);

INCLUDE_ASM(const s32, "109A0", func_80211620);

void func_8021186C(s32 arg0, s32 arg1, s32 arg2) {
    s32 var_s0;

    var_s0 = arg1 + (arg2 ? 0xF : 0);
    while (var_s0 != 0) {
        if (func_80210DA0() & arg0) {
            var_s0 -= 1;
            func_8021117C();
        } else {
            break;
        }
    }
}

INCLUDE_ASM(const s32, "109A0", func_802118CC);

void func_8021192C(s32 arg0) {
    func_8021195C(D_80228280, D_80249788, -arg0);
}

INCLUDE_ASM(const s32, "109A0", func_8021195C);

INCLUDE_ASM(const s32, "109A0", func_80211B9C);

void func_80212148(void) {
    D_80228274 = 0;
    D_80228278 = func_8020E5C8();
    D_8022827C = func_8020EDCC();
}

INCLUDE_ASM(const s32, "109A0", func_8021217C);

void func_80212590(s32 arg0) {
    func_8021509C(arg0);
}

void func_802125AC(void) {
    if (D_8024A010 != NULL) { // array, not pointer - no need to free it
        func_8021591C(D_8024A010);
    }
    if (D_80228368 != NULL) {
        func_8021591C(D_80228368);
    }
    if (D_8022836C != NULL) {
        func_8021591C(D_8022836C);
    }
}

INCLUDE_ASM(const s32, "109A0", func_80212604);

INCLUDE_ASM(const s32, "109A0", func_80212728);

INCLUDE_ASM(const s32, "109A0", func_80212974);

INCLUDE_ASM(const s32, "109A0", func_80212B90);

void func_80212C68(void) {
}

void func_80212C70(void) {
}

void func_80212C78(void) {
    D_80228368 = func_80215874(65 * 48 * sizeof(u16));
    func_802174B4(D_80228368, D_80224AB4);
    func_80215678(D_80228368, 48, 65, 0);
    func_802156BC(D_80228368, 48, 65, 0x2A);
}


void func_80212CDC(void) {
    func_80212C78();
    func_80212604();
}

INCLUDE_ASM(const s32, "109A0", func_80212D00);

INCLUDE_ASM(const s32, "109A0", func_80212EAC);

INCLUDE_ASM(const s32, "109A0", func_80213370);

INCLUDE_ASM(const s32, "109A0", func_802133D4);

INCLUDE_ASM(const s32, "109A0", func_8021374C);

char* func_802137F0(char* str) {
    while (*str != 0) {
        str++;
    }
    return str + 1;
}

INCLUDE_ASM(const s32, "109A0", func_80213814);

INCLUDE_ASM(const s32, "109A0", func_80213890);

INCLUDE_ASM(const s32, "109A0", func_802139F8);

INCLUDE_ASM(const s32, "109A0", func_80213EE4);

INCLUDE_ASM(const s32, "109A0", func_80213FB4);

INCLUDE_ASM(const s32, "109A0", func_8021408C);

int func_80214260(char* str) {
    int len;
    for (len = 0; *str++ != 0; len++);
    return len;
}

INCLUDE_ASM(const s32, "109A0", func_80214280);

INCLUDE_ASM(const s32, "109A0", func_802143AC);

#ifndef NON_MATCHING
asm(
    ".word 0x02202021\n"
    ".word 0x02551821\n"
    ".word 0x00602821"
    );
#endif
