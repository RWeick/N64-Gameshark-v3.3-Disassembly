#include "common.h"

void func_800402D8(void);                                  /* extern */
void setBaseAddress(u32);
void func_80041FCC(u32, char*);                             /* extern */
void call(void (*arg0)());                                 /* extern */
void pifUnlock(void);                               /* extern */
void waitVsync(void);                                  /* extern */
void setLED(char);                                 /* extern */
void func_8004267C(void);
void func_800426D4(s16);
void func_80042694(u8);
void func_8004043C(void);
void func_800404FC(s32, s32, u16*);

typedef struct _80042100S {
    char name[4];
    struct _80042100S* next;
    struct _80042100S* prev;
    u8 pad[4];
} mallocChunk;

typedef struct {
    u32 length;
    char name[12];
    u8 fileData[0];
} FileEntry;

typedef struct {
    u8 r;
    u8 g;
    u8 b;
} RGB;

void* func_80042178(s32 arg0);
s32 func_8004224C(void* arg0);
void setupHeap(u32 arg0, u32 arg1);

char D_800429C0[];          // shell.bin
char D_800429CC[];          // trainer.bin
char D_800429D8[];          // gslogo3.pal (US), arlogo3.pal (EU)
char D_800429E4[];          // gslogo3.bin (US), arlogo3.pal (EU)
char D_800429F0[];          // tile1.tg~
u8 D_80042A00[];            // 30 84 31 9F 32 C8 33 8A 34 93 35 A2 36 A0 37 8F 38 80 39 82 42 FF

char D_80042A20[];          // Write Error

mallocChunk* heapStart;     // 0x00000000
mallocChunk* heapEnd;       // 0x00000000
u32 D_80042A40;             // 0x00000000
u32 D_80042A44;             // 0x00000000
s32* D_80042A48;            // 0x00000000
s32* D_80042A4C;            // 0x00000000
s32 D_80042A50;             // 0x00000000
s32 D_80042A54;             // 0x00000000
u32 D_80042A58;             // 0x00000000

s32* D_80042A60;            // 0x00000000
u32* D_80042A64;            // 0x00000000
s32* D_80042A68;            // 0x00000000
u8 * D_80042A6C;            // 0x00000000
int D_80042A70;             // 0x00000000

char *D_80042A78;           // 0x00000000
s32* D_80042A7C;            // 0x00000000
s32* D_80042A80;            // 0x00000000

u8* D_80042A88;             // 0x00000000
s32* D_80042A84;            // 0x00000000
int D_80042A8C;             // 0x00000000

s32 memSize;                // 0x00400000
s32 baseAddress;            // 0xB0000000

u32 D_80042AB0;             // 0x00000000
u32 D_80042AB4;             // 0x00000000
s32 D_80042AB8;             // 0x00000000
u32 D_80042ABC;             // 0x00000000
u32 D_80042AC0;             // 0x00020000
s32 D_80042AC4;             // 0x00000000
s32 D_80042AC8;             // 0x00000000

u8 ledSegmentTable[];       // ' ' 00 '.' 7F '0' 84 '1' 9F '2' C8 '3' 8A '4' 93 '5' A2        4 
                            // '6' A0 '7' 8F '8' 80 '9' 82 'E' E0 'F' E1 'H' 91 'L' F4       3 5
                            // 'O' 84 'P' C1 'R' 81 'a' FE 'b' FD 'c' FB 'd' F7 'e' EF        2 
                            // 'f' DF 'g' BF 'z' EA 00 FF FF 00                              1 6
                            //                                                                0  7
char unkLedValue;           // 0x61 'a'
s32 D_80042B14;             // 0x00000000
u8 D_80042B20[];

extern volatile u32 SI_BASE14_REG;

void func_80040180(void) {
    s32 i;

    for (i = 0; i < (320 * 240 * 2); i++) {
        ((s32 *)0x80300000)[i] = 0;
    }
    
    pifUnlock();
    setupHeap(0x80180000, 0x80200000);
    func_800402D8();
    setLED('5');
    
    for (i = 0; i < 0x3c; i++) {
        waitVsync();
    }
    
    setLED('4');
    
    for (i = 0; i < 0x3c; i++) {
        waitVsync();
    }
    
    setLED('3');
    func_80041FCC(0x80200400, D_800429C0);
    setLED('2');
    func_80041FCC(0x80780800, D_800429CC);
    setLED('1');
    
    for (i = 0; i < 0x3c; i++) {
        waitVsync();
    }
    
    call((void (*)())0x80200400);
}

u32 func_80040278(void) {
    u32 cartStart;

    memSize = 0x600000;
    setBaseAddress(0xB2000000);
    cartStart = *(u32 *)0xB2C00000;
    setBaseAddress(0xBE000000);
    memSize = 0x400000;
    return cartStart == 0x80371240;
}

#define POS_X 40
#define POS_Y 24

#define HEIGHT 320
#define WIDTH 224


#if defined(VERSION_US)
#define HSYNC 0xC15
#elif defined(VERSION_EU)
#define HSYNC 0xC69
#define HSYNCPERIOD 0x17
#endif

void func_800402D8(void) {
    u16* var_s1;
    s32 var_s2;
    s32 var_t0;
    u8 r;
    u8 g;
    u8 b;
    RGB* temp_v1;
    u8* var_s0;

    u32* vi_regs;
    u32 addr;

    func_8004043C();
    addr = 0x80280000;
    func_80041FCC(addr, D_800429D8);
    var_s0 = (u8* )0x80281001;
    func_80041FCC(0x80281000, D_800429E4);
    for (var_s2 = POS_X, var_s1 = (u16 *)0x80306400; var_s2 < (WIDTH - POS_X); var_s2++, var_s1 += HEIGHT) {
        func_800422C0();
        for (var_t0 = POS_Y + 1; var_t0 < (HEIGHT - POS_Y) + 1; var_t0++) {
            temp_v1 = &((RGB*)addr)[*var_s0++];
            r = temp_v1->r;
            g = temp_v1->g;
            b = temp_v1->b;
            if ((r + g + b) > 0) {
                var_s1[var_t0] = (r << 0xB) | (g << 6) | (b << 1); // RGB5551 conversion
            }
        }
    };
    vi_regs = (u32*)PHYS_TO_K1(VI_BASE_REG);
#if defined(VERSION_US)
    vi_regs[0] = VI_CTRL_DITHER_FILTER_ON | 0x3000 | VI_CTRL_TYPE_16; // the 0x3000 are two reserved bits
#elif defined(VERSION_EU)
    vi_regs[0] = 0x3000 | (2 << 8) | VI_CTRL_TYPE_16;
#endif
    vi_regs[1] = 0x80300000;
    vi_regs[2] = HEIGHT;
#if defined(VERSION_US)
    vi_regs[5] = (0x3E << 20) | (5 << 16) | (0x22 << 8) | (0x39 << 0);
    vi_regs[6] = 525;
    vi_regs[7] = HSYNC;
    vi_regs[8] = (HSYNC << 16) | (HSYNC << 0);
    vi_regs[9] = (0x6C << 16) | (0x2EC << 0);
    vi_regs[10] = (0x25 << 16) | (0x1FF << 0);
    vi_regs[11] = (0xE << 16) | (0x204 << 0);
#elif defined(VERSION_EU)
    vi_regs[5] = (0x45 << 20) | (4 << 16) | (0x1E << 8) | (0x3A << 0);
    vi_regs[6] = 625;
    vi_regs[7] = (HSYNCPERIOD << 16) | (HSYNC << 0);
    vi_regs[8] = ((HSYNC + 6) << 16) | ((HSYNC + 4) << 0);
    vi_regs[9] = (0x80 << 16) | (0x300 << 0);
    vi_regs[10] = (0x5F << 16) | (0x239 << 0);
    vi_regs[11] = (0x9 << 16) | (0x26B << 0);
#endif
    vi_regs[12] = 0x200;
    vi_regs[13] = 0x400;
}

void func_8004043C(void) {
    s32 var_a0_2;
    s32 var_s1_2;
    u16 temp_v0;
    u16* var_a0;
    u16* temp = (u16*)0x80210000;
    u16* temp2;
    
    s32 var_s1;
    s32 var_s0;

    func_80041FCC(0x80210000, D_800429F0);
    temp2 = temp;
    for(var_s1 = 0; var_s1 < 0x30; var_s1++) {
        for(var_s0 = 0; var_s0 < 0x40; var_s0++, temp2++) {
            *temp2 = ((u32) ((*temp2 >> 7) | ((*temp2 & 0x7F) << 9)) >> 1) & 0x7BDE;
        }
    }
    
    for(var_s1 = 0; var_s1 < 0xF0; var_s1 += 0x30) {
        for(var_s0 = 0; var_s0 < 0x140; var_s0 += 0x40) {   
            func_800404FC(var_s0, var_s1, temp);
        }
    }
}

void func_800404FC(s32 x, s32 y, u16* data) {
    s32 var_a0;
    s32 var_a3 = 0;
    u16* var_v1 = &((u16 (*)[0x140]) 0x80300000)[y][x];
    for (var_a3 = 0; var_a3 < 0x30; var_a3++, var_v1 += 0x140) {
        for (var_a0 = 0; var_a0 < 0x40; var_a0++) {
            var_v1[var_a0] = *data++;
        }
    }
}

#ifndef NON_MATCHING
asm (
    "lui        $3, (0x80040000 >> 16)\n"
    "sw         $16, 0x10($29)"
);
#endif
void waitPI(void) {
    volatile u32* pi_regs = (vu32*)PHYS_TO_K1(PI_BASE_REG);
    while (pi_regs[4] & 3); // wait until PI is not busy
}

#ifndef NON_MATCHING
asm ("lw         $31, 0x14($29)");
#endif
s32 func_80040580(s32 arg0) {
    volatile s32* temp_s0 = (volatile s32 *)(baseAddress | memSize | arg0);
    waitPI();
    return *temp_s0;
}

void write16Doubled(u32 offset, u32 data) {
    s32 k = ((data & 0xffff) << 16) | (data & 0xffff);
    *(volatile s32 *)(baseAddress | memSize | offset) = k;
    waitPI();
}

void setBaseAddress(u32 addr) {
    u32 masked = (addr & 0x0F000000) | 0x10000000;
    write16Doubled(0x400, masked >> 0x18);
    baseAddress = masked | 0xB0000000;
}

void func_80040648(void) {
    write16Doubled(0x600, 0x7FF7FF);
}

void func_8004066C(u32 byte) {
    s32 mask;
    s32 bit;

    func_80040648();
    for (bit = 1; bit < 0x100; bit <<= 1) {
        mask =  (byte & bit) ? 0x01000100 : 0;
        write16Doubled(0x800, mask);
        write16Doubled(0x800, mask | 0x02000200);
        write16Doubled(0x800, mask);
    } ;
}

s32 func_800406FC(u8 arg0) {
    u32 i;
    u8 sp10[22];
    u8* a;
    
    memcpy(sp10, D_80042A00, 22);

    for (i = 0; i < 22; i += 2) {
        if (sp10[i] == arg0) {
            func_8004066C(sp10[i + 1]);
            return 1;
        }
    }

    return 0;
}

asm("or         $2, $2, $3");
void printWriteError(char * msg) {
    
}

void func_800407C8(int arg0) {
    s32 temp_v1;
    u32 temp_v0;

    if (arg0 != 0) {
        D_80042A58 |= D_80042A44;
    }
    D_80042A44 >>= 1;
    if (D_80042A44 == 0) {
        D_80042A88[D_80042A70++] = D_80042A58;
        if (D_80042A70 >= D_80042A8C) {
            printWriteError(D_80042A20);
        }
        D_80042A58 = 0;
        D_80042A44 = 0x80;
        D_80042AB4 += 1;
    }
}

void func_80040884(void) {
    s32 var_s0;
    for (var_s0 = 0; var_s0 < 7; var_s0++) {
        func_800407C8(0);
    };
}

s32 getNextFileBit(void) {
    D_80042A40 >>= 1;
    if (D_80042A40 == 0) {
        D_80042A54 = D_80042A6C[D_80042A50++];
        D_80042A40 = 0x80;
    }
    return (D_80042A54 & D_80042A40) != 0;
}

void func_80040918(void) {
    int i;
    s32 k;

    for (i = 0x1001; i < 0x1101; i++) {
        D_80042A84[i] = 0x1000;
    }

    k = 0x1000;

    for (i = 0x0FFF; i >= 0; i--) {
        D_80042A68[i] = k;
    }
}

INCLUDE_ASM(s32, "main", func_8004096C);

void func_80040B6C(s32 arg0) {
    s32 temp_a0_2;
    s32 temp_v0;
    s32 temp_v1;
    s32 var_t1;

    if (D_80042A68[arg0] != 0x1000) {
        temp_v1 = D_80042A84[arg0];
        if (temp_v1 == 0x1000) {
            var_t1 = D_80042A80[arg0];
        } else {
            temp_v0 = D_80042A80[arg0];
            var_t1 = temp_v1;
            if (temp_v0 != 0x1000) {
                var_t1 = temp_v0;
                if (D_80042A84[temp_v0] != 0x1000) {
                    do {
                        var_t1 = D_80042A84[var_t1];
                    } while (D_80042A84[var_t1] != 0x1000);
                    D_80042A84[D_80042A68[var_t1]] = D_80042A80[var_t1];
                    D_80042A68[D_80042A80[var_t1]] = D_80042A68[var_t1];
                    D_80042A80[var_t1] = D_80042A80[arg0];
                    D_80042A68[D_80042A80[arg0]] = var_t1;
                }
                D_80042A84[var_t1] = D_80042A84[arg0];
                D_80042A68[D_80042A84[arg0]] = var_t1;
            }
        }
        D_80042A68[var_t1] = D_80042A68[arg0];
        temp_a0_2 = D_80042A68[arg0];
        if (D_80042A84[temp_a0_2] == arg0) {
            D_80042A84[temp_a0_2] = var_t1;
        } else {
            D_80042A80[temp_a0_2] = var_t1;
        }
        D_80042A68[arg0]= 0x1000;
    }
}

void func_80040D1C(void) {
    int i, temp;

    D_80042A60[0x13A] = 0;
    for (i = 0x13A; i > 0; i--) {
        temp = i - 1;
        D_80042A4C[temp] = i;
        D_80042A48[i] = temp;
        D_80042A7C[i] = 1;
        D_80042A60[i-1] = D_80042A60[i] + 1;
    }
    D_80042A7C[0] = 0;
    D_80042A64[0x1000] = 0;
    for  (i = 0x1000; i > 0; i--) {
        D_80042A64[i - 1] = D_80042A64[i] + 10000 / (i + 200);
    }
}

void func_80040DFC(s32 arg0) {
    s32 temp_a1;
    s32 temp_v1;
    s32 var_a2;
    s32 var_a2_2;
    s32 var_a2_3;
    s32 var_v0;
    s32* temp_a0;
    s32* temp_v0_2;
    s32* temp_v1_2;
    u32 temp_v0;
    u32 var_a0;
    u32* var_a1;
    u32* var_v1;
    u32* var_v1_2;
    s32 var_a0_2;

    if (D_80042A60[0] >= 0x7FFFU) {
        var_a0 = 0;
        var_a2 = 0x13A;
        var_a1 = &D_80042A60[0x13A];
        var_v1 = &D_80042A7C[0x13A];
        while (var_a2 > 0) {
            *var_a1 = var_a0;
            var_a1 -= 1;
            var_a2 -= 1;
            *var_v1 = (*var_v1 + 1) >> 1;
            var_a0 += *var_v1;
            var_v1 -= 1;
        }
        *D_80042A60 = var_a0;
    }
    var_a2_2 = arg0;
    var_a0_2 = arg0;
    while (D_80042A7C[var_a0_2] == D_80042A7C[var_a0_2 - 1]) {
            var_a0_2 -= 1;
            var_a2_2 -= 1;
    }
    if (var_a2_2 < arg0) {
        temp_a1 = D_80042A48[var_a2_2];
        temp_v1 = D_80042A48[arg0];
        D_80042A48[var_a2_2] = temp_v1;
        D_80042A48[arg0] = temp_a1;
        D_80042A4C[temp_a1] = arg0;
        D_80042A4C[temp_v1] = var_a2_2;
    }
    D_80042A7C[var_a2_2]++;
    var_a2_2--;
    while (var_a2_2 >= 0) {
        D_80042A60[var_a2_2]++;
        var_a2_2--;
    }
}

void func_80040F3C(int arg0) {
    func_800407C8(arg0);
    while (D_80042AC8 > 0) {
        func_800407C8(arg0 == 0);
        D_80042AC8--;
    };
}

void func_80040F90(s32 arg0) {
    u32 temp_a0;
    s32 temp_s6;
    u32* temp_v1;

    temp_s6 = D_80042A4C[arg0];
    temp_a0 = D_80042AC0 - D_80042ABC;
    D_80042AC0 = D_80042ABC + ((u32) (temp_a0 * D_80042A60[temp_s6 - 1]) / *D_80042A60);
    D_80042ABC += (u32) (temp_a0 * D_80042A60[temp_s6]) / (u32) *D_80042A60;
    while(1) {
        if (D_80042AC0 <= 0x10000) {
            func_80040F3C(0);
        } else if (D_80042ABC > 0xFFFF) {
            func_80040F3C(1);
            D_80042ABC -= 0x10000;
            D_80042AC0 -= 0x10000;
        } else if ((D_80042ABC > 0x7FFF) && (D_80042AC0 <= 0x18000)) {
            D_80042AC8++;
            D_80042ABC -= 0x8000;
            D_80042AC0 -= 0x8000;
        } else {
            break;
        }
        D_80042ABC *= 2;
        D_80042AC0 *= 2;
    }
    func_80040DFC(temp_s6);
}

void func_80041148(s32 arg0) {
    s32 diff = D_80042AC0 - D_80042ABC;
    D_80042AC0 = D_80042ABC + ((diff * D_80042A64[arg0]) / *D_80042A64);
    D_80042ABC += (diff * D_80042A64[arg0 + 1]) / *D_80042A64;
    while (1) {
        if (D_80042AC0 <= 0x10000U) {
            func_80040F3C(0);
        } else if (D_80042ABC > 0xFFFFU) {
            func_80040F3C(1);
            D_80042ABC -= 0x10000U;
            D_80042AC0 -= 0x10000U; 
        } else if ((D_80042ABC > 0x7FFFU) && (D_80042AC0 <= 0x18000U)) {
            D_80042AC8 += 1;
            D_80042ABC -= 0x8000;
            D_80042AC0 -= 0x8000;
        } else {
            break;
        }
        D_80042ABC *= 2;
        D_80042AC0 *= 2;
    }
}

void func_800412DC(void) {
    s32 temp;
    D_80042AC8 += 1;
    if(D_80042ABC <= 0x7FFF)
        func_80040F3C(0);
    else
        func_80040F3C(1);
    func_80040884();
}

int func_8004132C(u32 search) {
    int start = 1;
    int end = 0x13A;
    int half;
    while (start < end) {
        half = (start + end) / 2;
        if (search < D_80042A60[half]) {
            start = half + 1;
        } else {
            end = half;
        }
    }
    return start;
}

int func_8004137C(u32 search) {
    int half;
    int start = 1;
    int end = 0x1000;
    while (start < end) {
        half = (start + end) / 2;
        if (search < D_80042A64[half]) {
            start = half + 1;
        } else {
            end = half;
        }
    }
    return start - 1;
}

void func_800413CC(void) {
    s32 var_s0;
    for (var_s0 = 0; var_s0 < 0x11; var_s0++) {
        D_80042AC4 = (D_80042AC4 << 1) + getNextFileBit();
    };
}

s32 func_80041418(void) {
    s32 temp_s0;
    s32 temp_v0;
    u32 diff;

    diff = D_80042AC0 - D_80042ABC;
    temp_v0 = func_8004132C((u32) ((((D_80042AC4 - D_80042ABC) + 1) * *D_80042A60) - 1) / diff);
    D_80042AC0 = D_80042ABC + ((u32) (diff * D_80042A60[temp_v0 - 1]) / (u32) *D_80042A60);
    D_80042ABC += (u32) (diff * D_80042A60[temp_v0]) / (u32) *D_80042A60;
    while(1){
        if ((u32) D_80042ABC > 0xFFFFU) {
            D_80042ABC += 0xFFFF0000;
            D_80042AC4 += 0xFFFF0000;
            D_80042AC0 += 0xFFFF0000;
        } else if (((u32) D_80042ABC > 0x7FFFU) && ((u32) D_80042AC0 <= 0x18000U)) {
            D_80042ABC -= 0x8000;
            D_80042AC0 -= 0x8000;
            D_80042AC4 -= 0x8000;
        } else if ((u32) D_80042AC0 > 0x10000U) {
            break;
        }
        D_80042ABC *= 2;
        D_80042AC0 *= 2;
        D_80042AC4 = (D_80042AC4 << 1) + getNextFileBit();
    }
    temp_s0 = D_80042A48[temp_v0];
    func_80040DFC(temp_v0);
    return temp_s0;
}

s32 func_8004160C(void) {
    s32 temp_v0;
    u32 temp_s0;

    temp_s0 = D_80042AC0 - D_80042ABC;
    temp_v0 = func_8004137C((u32) ((((D_80042AC4 - D_80042ABC) + 1) * *D_80042A64) - 1) / temp_s0);
    D_80042AC0 = D_80042ABC + ((u32) (temp_s0 * D_80042A64[temp_v0]) / (u32) *D_80042A64);
    D_80042ABC += (u32) (temp_s0 * D_80042A64[temp_v0 + 1]) / (u32) *D_80042A64;
    while(1) {
        if (D_80042ABC > 0xFFFFU) {
            D_80042ABC += 0xFFFF0000;
            D_80042AC4 += 0xFFFF0000;
            D_80042AC0 += 0xFFFF0000;
        } else if ((D_80042ABC > 0x7FFFU) && (D_80042AC0 <= 0x18000U)) {
            D_80042ABC -= 0x8000;
            D_80042AC0 -= 0x8000;
            D_80042AC4 -= 0x8000;
        } else if (D_80042AC0 > 0x10000U) {
            break;
        }
        D_80042ABC *= 2;
        D_80042AC0 *= 2;
        D_80042AC4 = (D_80042AC4 << 1) + getNextFileBit();
    }
    return temp_v0;
}

INCLUDE_ASM(s32, "main", func_800417E0);

s32 func_80041C58(void *loadAddr, u8 *dataStart)
{
  s32 temp_a2;
  s32 temp_a3;
  s32 var_s1;
  s32 var_a1;
  s32 var_a2;
  s32 temp_v0_2;
  u32 var_s2;
  D_80042A78 = func_80042178(0x103B);
  D_80042A80 = func_80042178(0x1001 * sizeof(s32));
  D_80042A84 = func_80042178(0x1101 * sizeof(s32));
  D_80042A68 = func_80042178(0x1001 * sizeof(s32));
  D_80042A4C = func_80042178(0x013A * sizeof(s32));
  D_80042A48 = func_80042178(0x013B * sizeof(s32));
  D_80042A7C = func_80042178(0x013B * sizeof(s32));
  D_80042A60 = func_80042178(0x013B * sizeof(s32));
  D_80042A64 = func_80042178(0x1001 * sizeof(s32));
  D_80042AB0 = 0;
  D_80042AB4 = 0;
  D_80042AB8 = 0;
  D_80042A58 = 0;
  D_80042A44 = 0x80;
  D_80042A54 = 0;
  D_80042A40 = 0;
  D_80042ABC = 0;
  D_80042AC0 = 0x20000;
  D_80042AC4 = 0;
  D_80042A88 = loadAddr;
  D_80042A6C = dataStart;
  D_80042A50 = 0;
  D_80042A70 = 0;
  D_80042AB0 = 0;
  for (var_a2 = 0; var_a2 < 4; var_a2++)
  {
    D_80042AB0 |= D_80042A6C[D_80042A50] << (var_a2 * 8);
    D_80042A50++;
  }

  D_80042A8C = D_80042AB0;
  if (D_80042AB0 == 0)
  {
    return 0;
  }
  func_800413CC();
  func_80040D1C();
  for (var_a2 = 0; var_a2 < 0xFC4; var_a2++)
  {
    D_80042A78[var_a2] = 0x20;
  }

  var_s1 = 0xFC4;
  var_s2 = 0;
  while (var_s2 < D_80042AB0)
  {
    temp_v0_2 = func_80041418();
    if (temp_v0_2 < 0x100)
    {
      var_s2++;
      D_80042A88[D_80042A70++] = temp_v0_2;
      D_80042A78[var_s1] = temp_v0_2;
      var_s1++;
      var_s1 &= 0xFFF;
    }
    else
    {
      temp_a2 = (var_s1 - func_8004160C()) - 1;
      temp_a2 &= 0xFFF;
      var_a2 = temp_a2;
      temp_a3 = temp_v0_2 - 0xFD;
      for (var_a1 = 0; var_a1 < temp_a3; var_a1++)
      {
        temp_v0_2 = D_80042A78[(var_a2 + var_a1) & 0xFFF];
        var_s2++;
        D_80042A88[D_80042A70++] = temp_v0_2;
        D_80042A78[var_s1] = temp_v0_2;
        var_s1++;
        var_s1 &= 0xFFF;
      }

    }
  }

  func_8004224C(D_80042A64);
  func_8004224C(D_80042A60);
  func_8004224C(D_80042A7C);
  func_8004224C(D_80042A48);
  func_8004224C(D_80042A4C);
  func_8004224C(D_80042A68);
  func_8004224C(D_80042A84);
  func_8004224C(D_80042A80);
  func_8004224C(D_80042A78);
  return D_80042A70;
}

void func_80041FCC(u32 loadAddr, char* arg1) {
    u8* var_a1;
    s32 var_v1;
    u32 temp;

    var_a1 = (u8*) &D_80042B20;
    while(1) {
        s32 var_a2 = 1;
        temp = *arg1;
        while (temp != 0 && temp == ((FileEntry*) var_a1)->name[var_a2 - 1]) {
            temp = arg1[var_a2];
            var_a2++;
        }
        if (temp == 0) {
            break;
        }
        var_a2 = var_a1[0] << 24;
        var_a2 |= var_a1[1] << 16;
        var_a2 |= var_a1[2] << 8;
        var_a2 |= var_a1[3];
        var_a1 += var_a2;
    }
    func_80041C58((void *)loadAddr, ((FileEntry*) var_a1)->fileData);
}

#ifndef NON_MATCHING
asm(
    "addu       $2, $4, $0\n"
    "lui        $2, %hi(D_800429F0)\n"
    "lw         $2, %lo(D_800429F0)($2)"
    );
#endif
u8* func_80042060(void* str, int c, size_t n) { // memset
    u8* ptr = str;
    size_t count = 0;
    
    while (count < n) {
        *ptr = c;
        count++;
        ptr++;
    };
    
    return str;
}

mallocChunk* func_80042088(void) { // getFirst
    return heapStart;
}

mallocChunk* func_80042098(mallocChunk* chunk) { // getNext
    return chunk->next;
}

mallocChunk* getPrev(mallocChunk* chunk) {
    return chunk->prev;
}

mallocChunk* getLast(mallocChunk* cur) { // getLast
    while (func_80042098(cur) != NULL) {
        cur = func_80042098(cur);
    }
    return cur;
}

u32 func_800420F0(mallocChunk* chunk) { // getSpaceToNext
    return (u32)chunk->next - ((u32)chunk + sizeof(mallocChunk));
}

void setupHeap(u32 start, u32 end) {
    mallocChunk* temp_v0;
    mallocChunk* temp_v1;

    heapStart = (mallocChunk *)start;
    heapEnd = (mallocChunk *)end;
    
    temp_v0 = func_80042088();
    
    temp_v0->name[0] = 'D';
    temp_v0->name[1] = 'M';
    temp_v0->name[2] = 'F';
    temp_v0->next = heapEnd - 1;
    temp_v0->prev = NULL;
    
    temp_v1 = temp_v0;
    temp_v0 = temp_v0->next;
    
    temp_v0->name[0] = 'D';
    temp_v0->name[1] = 'M';
    temp_v0->name[2] = 'T';
    temp_v0->next = NULL;
    temp_v0->prev = temp_v1;
}

INCLUDE_ASM(void *, "main", func_80042178); // malloc

s32 func_8004224C(void* arg0) { // free
    mallocChunk* temp_a0;
    mallocChunk* temp_a1;
    mallocChunk* temp_a3;

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
    temp_a0 = ((mallocChunk *)arg0 - 1)->next;
    temp_a1 = temp_a0->next;
    temp_a0->name[0] = '~';
    temp_a0->name[1] = '~';
    temp_a0->name[2] = '~';
    ((mallocChunk *)arg0 - 1)->next = temp_a1;
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

void call(void (*arg0)()) {
    arg0();
}
#else
asm(
    ".set noreorder\n"
    "func_80042328:\n"
        "jr $4\n"
        " nop"
    );

asm(
    "call:\n"
        "addiu      $29, $29, -0x14\n"
        "sw         $31, 0x10($29)\n"
        "jalr       $4\n"
        " nop\n"
        "lw         $31, 0x10($29)\n"
        "addiu      $29, $29, 0x14\n"
        "jr         $31\n"
        " nop\n"
    ".set reorder"
    );
#endif

u32 getStatus(void) {
    u32 status;
    asm("mfc0       %0, $12" : "=r" (status));
    return status;
}

void setStatus(u32 status) {
    asm("mtc0       %0, $12" : : "r" (status));
}

u32 getCause(void) {
    u32 cause;
    asm("mfc0       %0, $13" : "=r" (cause));
    return cause;
}

u32 getEPC(void) {
    u32 epc;
    asm("mfc0       %0, $14" : "=r" (epc));
    return epc;
}

INCLUDE_ASM(s32, "main", func_80042380); // handwritten - tlb stuff??? uses coprocessor instrs

INCLUDE_ASM(s32, "main", func_800423C8); // handwritten - same

void waitSIReserved(void) {
    volatile u32* si_regs = (vu32*)PHYS_TO_K1(SI_BASE_REG);
    while (si_regs[5] & 3);
}

u32 readPIRam(u32* arg0) {
    waitSIReserved();
    return *arg0;
}

void writePIRam(u32* arg0, u32 arg1) {
    waitSIReserved();
    *arg0 = arg1;
}

void pifUnlock(void) {
    writePIRam((u32*)0xBFC007FC, readPIRam((u32*)0xBFC007FC) | 8);
} // JoyChannel RAM + 0x3C

#ifndef NON_MATCHING
asm(
    "addiu      $3, $0, 0x2\n"
    "lw         $2, 0x10($4)"
    );
#endif
void waitVsync(void) {
    vu32* vi_regs = (vu32*)PHYS_TO_K1(VI_BASE_REG);
    while ((vi_regs[4] & 0x3FE) != 2);
    while ((vi_regs[4] & 0x3FE) == 2);
}

void func_80042504(u32 arg0) {
    write16Doubled(0x800, arg0);
    func_8004267C();
}

s32 getLEDSegmentData(char arg0) {
    int index = 0;
    int rv = 0xFF;

    while (ledSegmentTable[index] != 0xFF) {
        if (ledSegmentTable[index] == arg0) {
            rv = ledSegmentTable[index + 1];
            break;
        }
        
        index += 2;
    }
    
    return rv;
}

void setLED(char arg0) {
    u32 var_s0;
    int toWrite;

    func_800426D4(0x600);
    toWrite = getLEDSegmentData(arg0) | 0x10000;
    while (toWrite >= 0x101) {
        var_s0 = (toWrite & 1) ? 0x02000200 : 0;
        func_80042504(var_s0);
        func_80042504(var_s0 | 0x04000400);
        func_80042504(var_s0);
        toWrite = toWrite / 2;
    };
    func_800426D4(0x200);
}

void func_80042628(char arg0) {
    setLED(arg0);
}

#ifndef NON_MATCHING
asm(".set noreorder\n"
    "jr         $31\n"
    " addiu     $29, $29, 0x18\n"
    "addiu      $2, $0, 0x9F\n"
    ".set reorder"
    );
#endif
void func_80042650(void) {
    func_800426D4(0x200);
    func_80042694(0);
    setLED(0);
}

void func_8004267C(void) {
    int var_v0 = 0xA0;
    while (--var_v0 >= 0);
}

void func_80042694(u8 arg0) {
    * (u32 *) 0xBE5FFFFC = (arg0 << 0x18) | (arg0 << 0x10) | (arg0 << 8) | arg0;
    func_8004267C();
}

void func_800426D4(s16 arg0) {
    write16Doubled(0x600, arg0);
}

s32 func_800426F8(void) {
    return func_80040580(0);
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
    return (func_80042714(arg0 >> 4) << 4) | func_80042714(arg0);
}

s32 func_800427E0(s32 arg0) {
    return (func_800427A4(arg0 >> 8) << 8) | func_800427A4(arg0);
}

s32 func_8004281C(s32 arg0) {
    return (func_800427E0(arg0 >> 0x10) << 0x10) | func_800427E0(arg0);
}

void func_80042858(void) {
    s32 var_s0;

    var_s0 = 0;
    while (!var_s0) {
        if ((func_80042714(0) == 0xF)) {
            if((func_80042714(0xF) == 0)){
                if((func_80042714(0xA) == 0xE)){
                    if((func_80042714(0xE) == 0xA)) {
                        var_s0 = 1;
                    }
                }
            }
        }
    } 
}

void func_800428E4(u8* arg0) {
    while (*arg0 != 0) {
        func_800427A4(*arg0++);
    }
}

s32 func_80042928(void) {
    s32 temp_v0;
    s32 var_v0;

    D_80042B14++;
    if (D_80042B14 == 11) {
        D_80042B14 = 0;
        setLED(unkLedValue);
        unkLedValue++;
        if (unkLedValue == 'd') {
            unkLedValue = 'g';
        }
        if (unkLedValue == 'h') {
            unkLedValue = 'a';
        }
    }
    if (func_800426F8() & 0x10) {
        return func_800426F8() & 0xF;
    } else {
        return 0;
    }
}
