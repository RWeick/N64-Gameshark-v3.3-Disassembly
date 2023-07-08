#include "common.h"

int D_80225884;

u8* D_80227C00;
char ** D_80227C04;
char ** D_80227C08;

s32 D_80228278;

void func_8020E404(void);
s32 func_8020E5C8(void);
void func_8020E5FC(s32 arg0);
s32 func_8020F6CC(s32 arg0);
u8 *func_8020E4EC(u8*);
void func_8020FBD8(u8*, u8*, int);
u8* func_8020E708(void);
char* func_8020F248(char* arg0);

void func_8020E340(void) {
    if (D_80227C00 == 0) {
        D_80227C00 = func_80215874(D_80225884);
    }
    func_802181FC(0x30000, D_80227C00, D_80225884);
    if (D_80227C04 == 0) {
        D_80227C04 = func_80215874(0x3E80);
        D_80227C08 = func_80215874(0x400);
    }
    func_8020E404();
    D_80228278 = func_8020E5C8();
    func_8020EDCC();
}

void func_8020E3D8(void) {
    func_80218218(0x30000, D_80227C00, D_80225884);
}

void func_8020E404(void) {
    u8* temp_s1;
    s32 temp_s2;
    s32 var_s0;

    temp_s1 = D_80227C00 + 4;
    temp_s2 = func_8020E5C8();
    func_802157C8(D_80227C04, 0, 16000);
    for (var_s0 = 0; var_s0 < temp_s2; var_s0++) {
        D_80227C04[var_s0 + 1] = temp_s1;
        temp_s1 = func_8020E4EC(temp_s1);
    }
}

char* func_8020E494(s32 arg0) {
    if (arg0 == 0) {
        return (char*)-1;
    }
    if (func_8020E5C8() < arg0) {
        return (char*)-1;
    }
    return D_80227C04[arg0];
}

INCLUDE_ASM(u8*, "DF40", func_8020E4EC);

int func_8020E560(void) {
    s32 temp_v0 = func_8020E5C8();
    if (temp_v0 == 0) {
        return -1;
    }
    func_8020E5FC(temp_v0 - 1);
    return 0;
}

int func_8020E590(void) {
    s32 temp_v0 = func_8020E5C8();
    if (temp_v0 != 1000) {
        func_8020E5FC(temp_v0 + 1);
        return 0;
    }
    return -1;
}

s32 func_8020E5C8(void) {
    return (((((D_80227C00[0] << 8)
              + D_80227C00[1]) << 8)
              + D_80227C00[2]) << 8)
              | D_80227C00[3];
}

void func_8020E5FC(s32 arg0) { // should probably be unsigned
    D_80227C00[0] = (arg0 >> 0x18) & 0xFF;
    D_80227C00[1] = (arg0 >> 0x10) & 0xFF;
    D_80227C00[2] = (arg0 >> 8) & 0xFF;
    D_80227C00[3] = arg0 & 0xFF;
}

int func_8020E630(s32 arg0) {
    char* temp_v0;
    char* temp_v0_2;
    s32 var_v1;

    temp_v0 = func_8020E494(arg0);
    if (temp_v0 == (char*)-1) {
        return -1;
    }
    if ((arg0 == 1) && (func_8020E5C8() == arg0)) {
        var_v1 = 4;
        for (var_v1 = 4; var_v1 < D_80225884; var_v1++) {
            D_80227C00[var_v1] = 0;
        }
    } else {
        temp_v0_2 = func_8020E494(arg0 + 1);
        if (temp_v0_2 != (char*)-1) {
            func_8020FBD8(temp_v0, temp_v0_2, (u32)func_8020E708() - (u32)temp_v0_2);
        }
    }
    func_8020E560();
    func_8020E404();
    return 0;
}

u8* func_8020E708(void) {
    return func_8020E4EC(func_8020E494(func_8020E5C8()));
}

INCLUDE_ASM(const s32, "DF40", func_8020E734);

INCLUDE_ASM(const s32, "DF40", func_8020E9C8);

char* func_8020EAF4(char* arg0, int c) {
    if (arg0 == (char*)-1) {
        return (char*)-1;
    }
    if (func_8020ED70() < c) {
        return (char*)-1;
    }
    return D_80227C08[c];
}

INCLUDE_ASM(const s32, "DF40", func_8020EB44);

int func_8020EB98(char* arg0, s32 arg1) {
    char* temp_v0;
    char* var_s0;

    temp_v0 = func_8020EAF4(arg0, arg1);
    if (temp_v0 == (char*)-1) {
        return -1;
    }
    var_s0 = func_8020EAF4(arg0, arg1 + 1);
    if (var_s0 == (char*)-1) {
        var_s0 = func_8020E4EC(arg0);
    }
    func_8020FBD8(temp_v0, var_s0, (u32)func_8020E708() - (u32)var_s0);
    func_8020EE30(arg0);
    return 0;
}

INCLUDE_ASM(const s32, "DF40", func_8020EC34);

int func_8020ED70(char* arg0) {
    int i = 0;
    while (arg0[i] != 0) {
        i++;
    }
    i++;
    return arg0[i];
}

void func_8020EDA0(char* arg0, int arg1) {
    int i = 0;
    while (arg0[i] != 0) {
        i++;
    }
    i++;
    arg0[i] = arg1;
}

int func_8020EDCC(void) {
    int temp_v0;
    int i;
    int rv;

    rv = 0;
    temp_v0 = func_8020E5C8();
    for (i = 1; i != temp_v0 + 1; i++) {
        rv += func_8020ED70(func_8020E494(i));
    }
    return rv;
}

int func_8020EE30(char* arg0) {
    s32 c = func_8020ED70(arg0);
    if (c == 0) {
        return -1;
    }
    func_8020EDA0(arg0, c - 1);
    return 0;
}

int func_8020EE70(char* arg0) {
    int c = func_8020ED70(arg0);
    if (c == 'd') {
        return -1;
    }
    func_8020EDA0(arg0, c + 1);
    return 0;
}

INCLUDE_ASM(const s32, "DF40", func_8020EEB8);

INCLUDE_ASM(const s32, "DF40", func_8020EFDC);

int func_8020F0BC(s32 arg0, s32 arg1, s32 arg2) {
    s32 var_s0;
    s32 var_s0_2;
    s32 var_s0_3;
    char var_v1;
    char* temp_a0;
    char* temp_v0;
    char* var_a0;
    char* var_v0;

    temp_v0 = func_8020E494(arg0);
    if (temp_v0 == (char* )-1) {
        return -1;
    }
        
    for (var_s0 = 0; temp_v0[var_s0] != 0; var_s0++);
    var_s0 += 2;
    var_a0 = &temp_v0[var_s0];
    
    for (var_s0 = 1; var_s0 < arg1; var_s0++) {
        var_a0 = func_8020EB44(var_a0);
    }
    
    for (var_s0 = 0; var_a0[var_s0] != 0; var_s0++);
    var_s0++;
    temp_a0 = &var_a0[var_s0];
    var_v1 = *temp_a0;
    if (arg2 == 1) {
        if (var_v1 < 0x80) {
            var_v1 -= 0x80;
        }
    } else if ((s8)var_v1 < 0) {
        var_v1 += 0x80;
    }
    *temp_a0 = var_v1;
    return 0;
}

char* func_8020F1AC(char* arg0, int arg1) {
    s32 var_s0;
    s32 var_s0_2;
    char* var_s1;
    char* var_v0;

    if (arg0 == (char*)-1) {
        return (char*)-1;
    }
    if (func_8020F250(arg0) < arg1) {
        return (char*)-1;
    }
    
    for (var_s0 = 0; arg0[var_s0] != 0; var_s0++);
    
    var_s0 += 2;
    arg0 = &arg0[var_s0];
    for (var_s0 = 1; var_s0 != arg1; var_s0++) {
        arg0 = func_8020F248(arg0);
    }
    return arg0;
}

char* func_8020F248(char* arg0) {
    return arg0 + 6;
}

int func_8020F250(char* arg0) {
    int i = 0;
    while (arg0[i] != 0) {
        i++;
    }
    i++;
    return arg0[i] & 0x7F;
}

int func_8020F280(char* arg0) {
    int len;
    int rv = 0;
    int c;

    len = 0;
    while (arg0[len] != 0) {
        len += 1;
    }
    len++;
    
    c = arg0[len];
    if (c & 0x7F) {
        arg0[len] = c - 1;
    } else {
        rv = -1;
    }
    
    return rv;
}

int func_8020F2D4(char* arg0) {
    int len;
    int rv = 0;
    int c;

    len = 0;
    while (arg0[len] != 0) {
        len += 1;
    }
    len++;
    c = arg0[len];
    if ((c & 0x7F) < 0x40U) {
        arg0[len] = c + 1;
    } else {
        rv = -1;
    }
    return rv;
}

INCLUDE_ASM(const s32, "DF40", func_8020F32C);

INCLUDE_ASM(const s32, "DF40", func_8020F3C8);

int func_8020F4F4(s32 arg0, s32 arg1, s32 arg2) {
    char* temp_v0;
    s32 temp_v0_2;

    temp_v0 = func_8020E494(arg0);
    if (temp_v0 == (char*)-1) {
        return -1;
    }
    temp_v0_2 = func_8020EEB8(temp_v0, arg1, arg2);
    if (temp_v0_2 == -1) {
        return -1;
    }
    if (temp_v0_2 == -2) {
        return -2;
    }
    return 0;
}

int func_8020F568(s32 arg0, s32 arg1) {
    char* temp_v0;
    char* temp_v0_2;

    temp_v0 = func_8020E494(arg0);
    if ((temp_v0 == (char*)-1)) {
        return -1;
    }
    temp_v0_2 = func_8020EC34(temp_v0, arg1);
    if (temp_v0_2 == (char*)-1) {
        return -1;
    }
    if (temp_v0_2 == (char*)-2) {
        return -2;
    }
    func_8020E404();
    func_8020F6CC(arg0);
    return 0;
}

void func_8020F5E4(s32 arg0, s32 arg1) {
    s32 i;
    s32 len;
    char* temp_v0;
    char* var_a0;
    char* var_a1;

    temp_v0 = func_8020E494(arg0);
    if (temp_v0 == (char* )-1) {
        return;
    }
    
    for (i = 0; temp_v0[i] != 0; i++);

    i+=2;
    var_a1 = &temp_v0[i];
    var_a0 = var_a1;
    D_80227C08[1] = var_a1;
    
    for (i = 1; i <= arg1; i++) {
        for (len = 0; var_a1[len] != 0; len++);
        len++;
        var_a1 = var_a1 + len;
        if (i < arg1) {
            var_a1 = func_8020EB44(var_a0, var_a1);
            var_a0 = var_a1;
        }
        D_80227C08[i + 1] = var_a1;
    }
}

s32 func_8020F6CC(s32 arg0) {
    s32 temp_v0;
    char* temp_v0_2;

    temp_v0_2 = func_8020E494(arg0);
    if (temp_v0_2 == (char*)-1) {
        return -1;
    }
    temp_v0 = func_8020ED70(temp_v0_2);
    if (temp_v0 == -1) {
        return -1;
    }
    func_8020F5E4(arg0, temp_v0);
    return temp_v0;
}

int func_8020F734(s32 arg0, s32 arg1) {
    char* temp_v0;

    temp_v0 = func_8020E494(arg0);
    if (temp_v0 == (char*)-1) {
        return -1;
    }
    if (func_8020EB98(temp_v0, arg1) == -1) {
        return -1;
    }
    func_8020E404();
    func_8020F6CC(arg0);
    return 0;
}

int func_8020F7A4(s32 arg0, s32 arg1, s32 arg2) {
    char* temp_v0;
    char* temp_v0_2;

    temp_v0 = func_8020E494(arg0);
    if (temp_v0 == (char*)-1) {
        return -1;
    }
    temp_v0_2 = func_8020EAF4(temp_v0, arg1);
    if (temp_v0_2 == (char*)-1) {
        return -1;
    }
    if (func_8020F32C(temp_v0_2, arg2) == (char*)-1) {
        return -1;
    }
    func_8020E404();
    func_8020F6CC(arg0);
    return 0;
}

INCLUDE_ASM(const s32, "DF40", func_8020F830);

s32 func_8020F8DC(s32 arg0, s32 arg1) {
    s32 temp_v0;
    char* temp_v0_2;
    char*  temp_v0_3;

    temp_v0_2 = func_8020E494(arg0);
    if (temp_v0_2 == (char*)-1) {
        return -1;
    }
    temp_v0_3 = func_8020EAF4(temp_v0_2, arg1);
    if (temp_v0_3 == (char*)-1) {
        return -1;
    }
    temp_v0 = func_8020F250(temp_v0_3);
    if (temp_v0 == -1) {
        return -1;
    }
    return temp_v0;
}

int func_8020F944(s32 arg0, s32 arg1, s32 arg2, s32 arg3, s32 arg4) {
    char* temp_v0;

    temp_v0 = func_8020E494(arg0);
    if (temp_v0 == (char*)-1) {
        return -1;
    }
    temp_v0 = func_8020EAF4(temp_v0, arg1);
    if (temp_v0 == (char*)-1) {
        return -1;
    }
    if (func_8020F250(temp_v0) < arg2) {
        return -1;
    }
    temp_v0 = func_8020F1AC(temp_v0, arg2);
    temp_v0[0] = (arg3 >> 24) & 0xFF;
    temp_v0[1] = (arg3 >> 16) & 0xFF;
    temp_v0[2] = (arg3 >> 8) & 0xFF;
    temp_v0[3] = arg3 & 0xFF;
    temp_v0[4] = (arg4 >> 8) & 0xFF;
    temp_v0[5] = arg4 & 0xFF;
    return 0;
}

INCLUDE_ASM(const s32, "DF40", func_8020FA18);

void func_8020FB08(s32 arg0, s32 arg1, char* arg2) {
    int i;
    char* temp_v0;

    temp_v0 = func_8020EAF4(func_8020E494(arg0), arg1);
    for (i = 0; temp_v0[i] != 0; i++) {
        arg2[i] = temp_v0[i];
    }
    arg2[i] = 0;
}

void func_8020FB7C(s32 arg0, char* dest) {
    int c;
    char* src;
    int i;
    
    src = func_8020E494(arg0);
    for (i = 0; src[i] != 0; i++) {
        dest[i] = src[i];
    }
    dest[i] = 0;
}

void func_8020FBD8(u8* dest, u8* src, int len) {
    int i;

    if ((dest < (src + len)) && (src < dest)) {
        for (i = len - 1; i >= 0; i--) {
            dest[i] = src[i];
        }
    } else {
        for (i = 0; i < len; i++) {
            dest[i] = src[i];
        }
    }
}

void func_8020FC48(s32 arg0, s32 arg1, s32 arg2, u32* arg3) {
    char* temp_v0;
    int i;
    u32 var_s1 = 0;

    temp_v0 = func_8020EAF4(func_8020E494(arg0), arg1);
    if (func_8020F250(temp_v0) == 0) {
        arg3[0] = 0;
        arg3[1] = 0;
    } else {
        temp_v0 = func_8020F1AC(temp_v0, arg2);
        
        for (i = 0; i < 4; i++) {
            var_s1 = (var_s1 << 8) + temp_v0[i];
        }
        arg3[0] = var_s1;
        var_s1 = temp_v0[4]; 
        var_s1 = (var_s1 << 8) + temp_v0[5];
        arg3[1] = var_s1;
    }
}

INCLUDE_ASM(const s32, "DF40", func_8020FD04);

INCLUDE_ASM(const s32, "DF40", func_8020FD30);

int func_8020FD90(u32 a0) {
    int v0;
    int sp[2];

    sp[0] = v0;
    if ((a0 & 0x01000001) != 0x01000000)
        return -1;
    return 0;
}

INCLUDE_ASM(const s32, "DF40", func_8020FDBC);

int func_8020FDE8(u32 a0) {
    int v0;
    int sp[2];

    sp[0] = v0;
    if ((a0 & 0xF0000000) == 0xF0000000)
        return -1;
    return 0;
}

int func_8020FE0C(u32 a0) {
    int v0;
    int sp[2];

    sp[0] = v0;
    if (a0 & 0x08000000)
        return -1;
    return 0;
}

int func_8020FE30(u32 a0) {
    int v0;
    int sp[2];

    sp[0] = v0;
    if ((a0 & 0xF0000000) == 0xD0000000)
        return -1;
    return 0;
}

int func_8020FE58(u32 a0) {
    int v0;
    int sp[2];

    sp[0] = v0;
    if (a0 & 0x04000000)
        return -1;
    return 0;
}

INCLUDE_ASM(const s32, "DF40", func_8020FE7C);

#ifndef NON_MATCHING
asm(
    ".word 0x2405FFFF\n"
    ".word 0x03E00008"
    );
#endif
