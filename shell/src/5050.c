#include "common.h"

extern u32 D_80222C60[];

void func_80205450(u32* buf, int len) {
    int key_idx;
    int i;
    u32 key[0x10];
    
    memcpy(key, D_80222C60, sizeof(key));

    key_idx = 0;
    for (i = 0; i < len; i++) {
        buf[i] = (buf[i] ^ key[key_idx]) - (key[key_idx] & 0xFF00);
        key_idx++;
        if (key_idx == 0x10) {
            key_idx = 0;
        }
    }
}

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

INCLUDE_ASM(const s32, "5050", func_80205D48);

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
