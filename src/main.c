#include "common.h"

s32 func_800402D8(void);                                  /* extern */
void func_80040600(s32 arg0);
s32 func_80041FCC(s32, void*);                             /* extern */
s32 func_80042330(s32);                                 /* extern */
void pifUnlock(void);                               /* extern */
void func_800424C0(void);                                  /* extern */
void func_80042584(u8);                                 /* extern */
void func_8004267C(void);
void func_800426D4(s16 arg0);

typedef struct _80042100S {
    char name[4];
    struct _80042100S* next;
    struct _80042100S* prev;
    u8 pad[4];
} Struct80042100;

void func_80042100(Struct80042100* arg0, Struct80042100* arg1);

s32 D_800429C0;
s32 D_800429CC;

s32 D_80042AA0;
s32 D_80042AA4;

Struct80042100* D_80042A30;
Struct80042100* D_80042A34;

s32 D_80042A50;
s32 D_80042A54;
u8 * D_80042A6C;
u32 D_80042A40;

s32* D_80042A48;
s32* D_80042A4C;
s32* D_80042A60;
s32* D_80042A64;
s32* D_80042A7C;

s32 D_80042AC8;

s32 D_80042AC4;

extern u8 D_80042AD0[];

extern volatile u32 VI_CURRENT_REG;
extern volatile u32 PI_STATUS_REG;

extern volatile u32 SI_BASE14_REG;

void func_80040180(void) {
    s32 i;

    for (i = 0; i < 0x25800; i++) {
        ((s32 *)0x80300000)[i] = 0;
    }
    
    pifUnlock();
    func_80042100((void*)0x80180000, (void*)0x80200000);
    func_800402D8();
    func_80042584(0x35);
    
    for (i = 0; i < 0x3c; i++) {
        func_800424C0();
    }
    
    func_80042584(0x34);
    
    for (i = 0; i < 0x3c; i++) {
        func_800424C0();
    }
    
    func_80042584(0x33);
    func_80041FCC(0x80200400, &D_800429C0);
    func_80042584(0x32);
    func_80041FCC(0x80780800, &D_800429CC);
    func_80042584(0x31);
    
    for (i = 0; i < 0x3c; i++) {
        func_800424C0();
    }
    
    func_80042330(0x80200400);
}

u32 func_80040278(void) {
    u32 temp_s0;

    D_80042AA0 = 0x600000;
    func_80040600(0xB2000000);
    temp_s0 = * (u32*) 0xB2C00000;
    func_80040600(0xBE000000);
    D_80042AA0 = 0x400000;
    return temp_s0 == 0x80371240;
}

INCLUDE_ASM(s32, "main", func_800402D8);

INCLUDE_ASM(s32, "main", func_8004043C);

INCLUDE_ASM(s32, "main", func_800404FC);

asm (
    "lui        $3, (0x80040000 >> 16)\n"
    "sw         $16, 0x10($29)"
);
void wait_PI(void) {
    while (PI_STATUS_REG & 3); // wait until PI is not busy
}

asm ("lw         $31, 0x14($29)");
s32 func_80040580(s32 arg0) {
    s32* temp_s0;

    temp_s0 = (s32*)(D_80042AA4 | D_80042AA0 | arg0);
    wait_PI();
    return *temp_s0;
}

void func_800405BC(u32 arg0, u32 arg1) {
    s32 k = ((arg1 & 0xffff) << 16) | (arg1 & 0xffff);
    * (volatile s32 *) (D_80042AA4 | D_80042AA0 | arg0) = k;
    wait_PI();
}

void func_80040600(s32 arg0) {
    u32 temp_s0;

    temp_s0 = (arg0 & 0x0F000000) | 0x10000000;
    func_800405BC(0x400, temp_s0 >> 0x18);
    D_80042AA4 = temp_s0 | 0xB0000000;
}

void func_80040648(void) {
    func_800405BC(0x600, 0x7FF7FF);
}

void func_8004066C(s32 addr) {
    s32 mask;
    s32 bit;

    func_80040648();
    for (bit = 1; bit < 0x100; bit <<= 1) {
        mask =  (addr & bit) ? 0x01000100 : 0;
        func_800405BC(0x800, mask);
        func_800405BC(0x800, mask | 0x02000200);
        func_800405BC(0x800, mask);
    } ;
}

INCLUDE_ASM(s32, "main", func_800406FC);

INCLUDE_ASM(s32, "main", func_800407BC);

INCLUDE_ASM(s32, "main", func_800407C8);

void func_80040884(void) {
    s32 var_s0;
    for (var_s0 = 0; var_s0 < 7; var_s0++) {
        func_800407C8(NULL);
    };
}

s32 func_800408BC(void) {
    D_80042A40 >>= 1;
    if (D_80042A40 == 0) {
        D_80042A54 = D_80042A6C[D_80042A50++];
        D_80042A40 = 0x80;
    }
    return (D_80042A54 & D_80042A40) != 0;
}

INCLUDE_ASM(s32, "main", func_80040918);

INCLUDE_ASM(s32, "main", func_8004096C);

INCLUDE_ASM(s32, "main", func_80040B6C);

void func_80040D1C(void) {
    int i, temp;

    D_80042A60[0x13A] = 0;
    for (i = 0x13A; i > 0; i--) {
        temp = i - 1;
        D_80042A4C[temp] = i;
        D_80042A48[i] = temp;
        D_80042A7C[i] = 1;
        D_80042A60[i-1] = D_80042A60[i] + 1;
    } ;
    D_80042A7C[0] = 0;
    D_80042A64[0x1000] = 0;
    for  (i = 0x1000; i > 0; i--) {
        D_80042A64[i - 1] = D_80042A64[i] + 10000 / (i + 200);
    } ;
}

INCLUDE_ASM(s32, "main", func_80040DFC);

void func_80040F3C(void* arg0) {
    func_800407C8(arg0);
    while (D_80042AC8 > 0) {
        func_800407C8((void* ) (arg0 == NULL));
        D_80042AC8--;
    };
}

INCLUDE_ASM(s32, "main", func_80040F90);

INCLUDE_ASM(s32, "main", func_80041148);

INCLUDE_ASM(s32, "main", func_800412DC);

INCLUDE_ASM(s32, "main", func_8004132C);

INCLUDE_ASM(s32, "main", func_8004137C);

void func_800413CC(void) {
    s32 var_s0;
    for (var_s0 = 0; var_s0 < 0x11; var_s0++) {
        D_80042AC4 = (D_80042AC4 * 2) + func_800408BC();
    };
}

INCLUDE_ASM(s32, "main", func_80041418);

INCLUDE_ASM(s32, "main", func_8004160C);

INCLUDE_ASM(s32, "main", func_800417E0);

INCLUDE_ASM(s32, "main", func_80041C58);

INCLUDE_ASM(s32, "main", func_80041FCC);

asm(
    "addu       $2, $4, $0\n"
    "lui        $2, %hi(D_800429F0)\n"
    "lw         $2, %lo(D_800429F0)($2)"
    );
u8* func_80042060(u8* str, int c, size_t n) { // memset
    u8* ptr = str;
    size_t count = 0;
    
    while (count < n) {
        *ptr = c;
        count++;
        ptr++;
    };
    
    return str;
}

Struct80042100* func_80042088(void) { // getFirst
    return D_80042A30;
}

Struct80042100* func_80042098(Struct80042100* arg0) { // getNext
    return arg0->next;
}

Struct80042100* func_800420A4(Struct80042100* arg0) { // getPrev
    return arg0->prev;
}

Struct80042100* func_800420B0(Struct80042100* cur) { // getLast
    while (func_80042098(cur) != NULL) {
        cur = func_80042098(cur);
    }
    return cur;
}

u32 func_800420F0(Struct80042100* arg0) { // getSpaceToNext
    return (u32)arg0->next - ((u32)arg0 + sizeof(Struct80042100));
}

INCLUDE_ASM(void, "main", func_80042100);

INCLUDE_ASM(s32, "main", func_80042178);

s32 func_8004224C(Struct80042100* arg0) { // deleteNode
    Struct80042100* temp_a0;
    Struct80042100* temp_a1;
    Struct80042100* temp_a2;
    Struct80042100* temp_a3;

    temp_a3 = arg0;
    temp_a3--;
    if (temp_a3->name[0] != 'D') {
        return -1;
    }
    if (temp_a3->name[1] != 'M') {
        return -1;
    }
    if (temp_a3->name[2] != 'R') {
        return -1;
    }
    temp_a3->name[2] = 'F';
    temp_a0 = (arg0 - 1)->next;
    temp_a1 = temp_a0->next;
    temp_a0->name[0] = '~';
    temp_a0->name[1] = '~';
    temp_a0->name[2] = '~';
    (arg0 - 1)->next = temp_a1;
    temp_a1->prev = temp_a3;
    return 0;
}

INCLUDE_ASM(s32, "main", func_800422BC); // func_800422C0 - handwritten, sets cache

void func_8004231C(void* arg0) {
    asm("cache      0x15, 0x0($4)");
}

#ifdef NON_MATCHING
s32 func_80042328(s32 (*arg0)()) {
    return arg0();
}

void func_80042330(void (*arg0)()) {
    arg0();
}
#else
asm(
    "func_80042328:\n"
        "jr $4"
    );

asm(
    "func_80042330:\n"
        "addiu      $29, $29, -0x14\n"
        "sw         $31, 0x10($29)\n"
        "jalr       $4\n"
    //   "nop\n"
        "lw         $31, 0x10($29)\n"
        "addiu      $29, $29, 0x14\n"
        "jr         $31"
    //   "nop\n"
    );
#endif

asm(
    "getStatus:\n"
        "mfc0       $2, $12\n"
        "jr         $31"
    );

asm(
    "setStatus:\n"
        "mtc0       $4, $12\n"
        "jr         $31"
    );

asm(
    "getCause:\n"
        "mfc0       $2, $13\n"
        "jr         $31"
    );

asm(
    "getEPC:\n"
        "mfc0       $2, $14\n"
        "jr         $31"
    );

INCLUDE_ASM(s32, "main", func_80042380); // handwritten - tlb stuff??? uses coprocessor instrs

INCLUDE_ASM(s32, "main", func_800423C8); // handwritten - same

void waitPIReserved(void) {
    while (SI_BASE14_REG & 3);
}

u32 readPIRam(u32* arg0) {
    waitPIReserved();
    return *arg0;
}

void writePIRam(u32* arg0, u32 arg1) {
    waitPIReserved();
    *arg0 = arg1;
}

void pifUnlock(void) {
    writePIRam((u32*)0xBFC007FC, readPIRam((u32*)0xBFC007FC) | 8);
} // JoyChannel RAM + 0x3C

#ifdef NON_MATCHING
asm(
    "addiu      $3, $0, 0x2\n"
    "lw         $2, 0x10($4)"
    );
void func_800424C0(void) {
    while ((VI_CURRENT_REG & 0x3FE) != 2);
    while ((VI_CURRENT_REG & 0x3FE) == 2);
}
#else
INCLUDE_ASM(void, "main", func_800424B8);
#endif

void func_80042504(u32 arg0) {
    func_800405BC(0x800, arg0);
    func_8004267C();
}

s32 func_8004252C(u8 arg0) {
    s32 var_a1;
    s32 ret;

    var_a1 = 0;
    ret = 0xFF;
    
    while (D_80042AD0[var_a1] != 0xFF) {
        if (D_80042AD0[var_a1] == arg0) {
            ret = D_80042AD0[var_a1 + 1];
            break;
        }
        
        var_a1 += 2;
    }
    
    return ret;
}

void func_80042584(u8 arg0) {
    u32 var_s0;
    int var_s1;

    func_800426D4(0x600);
    var_s1 = func_8004252C(arg0) | 0x10000;
    while (var_s1 >= 0x101) {
        var_s0 = (var_s1 & 1) ? 0x02000200 : 0;
        func_80042504(var_s0);
        func_80042504(var_s0 | 0x04000400);
        func_80042504(var_s0);
        var_s1 = var_s1 / 2;
    };
    func_800426D4(0x200);
}

void func_80042628(u8 arg0) {
    func_80042584(arg0);
}

#ifdef NON_MATCHING
void func_80042644(void) {
}
#else
INCLUDE_ASM(void, "main", func_80042644);
#endif

#ifdef NON_MATCHING
void func_8004264C(void) {
    func_800426D4(0x200);
    func_80042694(0);
    func_80042584(0);
}
#else
INCLUDE_ASM(void, "main", func_8004264C);
#endif

void func_8004267C(void) {
    int var_v0 = 0xA0;
    while (--var_v0 >= 0);
}

void func_80042694(u8 arg0) {
    * (u32 *) 0xBE5FFFFC = (arg0 << 0x18) | (arg0 << 0x10) | (arg0 << 8) | arg0;
    func_8004267C();
}

void func_800426D4(s16 arg0) {
    func_800405BC(0x600, arg0);
}

s32 func_800426F8(void) {
    func_80040580(0);
}

#define WAIT_COND (func_800426F8() & 0x10)

s32 func_80042714(s32 arg0) {
    s32 rv;
    u32 Status;

    Status = getStatus();
    setStatus(Status & ~SR_IE);
    while (!WAIT_COND);
    rv = func_800426F8() & 0xF;
    func_80042694((arg0 & 0xF) | 0x10);
    while (WAIT_COND);
    func_80042694(0);
    setStatus(Status);
    return rv;
}

s32 func_800427A4(s32 arg0) {
    return (func_80042714(arg0 >> 4) * 0x10) | func_80042714(arg0);
}

INCLUDE_ASM(s32, "main", func_800427E0);

INCLUDE_ASM(s32, "main", func_8004281C);

INCLUDE_ASM(s32, "main", func_80042858);

void func_800428E4(u8* arg0) {
    while (*arg0 != 0) {
        func_800427A4(*arg0);
        arg0++;
    }
}

INCLUDE_ASM(s32, "main", func_80042928);
