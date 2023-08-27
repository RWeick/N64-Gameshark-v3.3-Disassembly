#include "common.h"

const char alphanumerics[0x10] = "0123456789ABCDEF";

extern u32 D_802283C0;
extern u32 D_802283C4;

void func_80217A30(char* str) {
    char c;
    while ((c = *str) != '\0') {
        func_8021781C(*str++);
    }
}

void func_80217A74(s32 arg0) {
    int hexit = arg0 & 0xF;
    func_8021781C(hexit + (hexit >= 10 ? 'A' - 10 : '0'));
}

void func_80217AA8(s32 arg0) {
    func_80217A74(arg0 >> 4);
    func_80217A74(arg0);
}

void func_80217AD8(s32 arg0) {
    func_80217AA8(arg0 >> 8);
    func_80217AA8(arg0);
}

void func_80217B08(s32 arg0) {
    func_80217AD8(arg0 >> 0x10);
    func_80217AD8(arg0);
}

void func_80217B38(s32 num, u32 base, s32 is_signed) {
    s32 temp_lo;
    char *alph = alphanumerics;

    if ((num < 0) && is_signed) {
        func_8021781C('-');
        num = -num;
    }
    temp_lo = num / base;
    if (temp_lo != 0) {
        func_80217B38(temp_lo, base, 0);
    }
    func_8021781C(alph[num % base]);
}

#ifdef EQUIVALENT
void func_80217BC4(const char * msg, ...) {
    s32 pad[4];
}
#else
INCLUDE_ASM(const s32, "17630", func_80217BC4);
#endif

#ifdef EQUIVALENT
void func_80217BE0(void) {
    s32 pad[4];

}
#else
INCLUDE_ASM(const s32, "17630", func_80217BE0);
#endif

void func_80217BEC(void) {
    D_802283C0 = 0x400000;
    D_802283C4 = 0xBE000000;
}

#ifndef NON_MATCHING
asm(
    "lw         $4, 0x54($16)\n"
    "sll        $3, $9, 2"
    );
#endif
