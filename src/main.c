#include "common.h"

#include "libc.h"
#include "led.h"
#include "lzari.h"
#include "hw.h"
#include "si.h"
#include "util.h"

void loadStartupLogo(void);                                  /* extern */
void func_8004043C(void);
void func_800404FC(s32, s32, u16*);
void setBaseAddress(u32);

typedef struct {
    u8 r;
    u8 g;
    u8 b;
} RGB;

char D_800429C0[];              // shell.bin
char D_800429CC[];              // trainer.bin
char D_800429D8[];              // gslogo3.pal (US), arlogo3.pal (EU)
char D_800429E4[];              // gslogo3.bin (US), arlogo3.pal (EU)
char D_800429F0[];              // tile1.tg~

void func_80040180(void) {
    s32 i;

    for (i = 0; i < (320 * 240 * 2); i++) {
        ((s32 *)0x80300000)[i] = 0;
    }
    
    pifUnlock();
    setupHeap(0x80180000, 0x80200000);
    loadStartupLogo();
    setLED('5');
    
    for (i = 0; i < 0x3c; i++) {
        waitVsync();
    }
    
    setLED('4');
    
    for (i = 0; i < 0x3c; i++) {
        waitVsync();
    }
    
    setLED('3');
    loadFile(0x80200400, D_800429C0);
    setLED('2');
    loadFile(0x80780800, D_800429CC);
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
    cartStart = READ32(PHYS_TO_K1(0x12C00000));
    setBaseAddress(0xBE000000);
    memSize = 0x400000;
    return cartStart == 0x80371240;
}

#define POS_Y 40
#define POS_X 24

#define WIDTH 320
#define HEIGHT 224


#if defined(VERSION_US)
#define HSYNC 0xC15
#elif defined(VERSION_EU)
#define HSYNC 0xC69
#define HSYNCPERIOD 0x17
#endif

void loadStartupLogo(void) {
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
    loadFile(addr, D_800429D8);
    var_s0 = (u8* )0x80281001;
    loadFile(0x80281000, D_800429E4);
    for (var_s2 = POS_Y, var_s1 = (u16 *)0x80306400; var_s2 < (HEIGHT - POS_Y); var_s2++, var_s1 += WIDTH) {
        func_800422C0();
        for (var_t0 = POS_X + 1; var_t0 < (WIDTH - POS_X) + 1; var_t0++) {
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
    vi_regs[2] = WIDTH;
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
    u16* temp = (u16*)0x80210000;
    u16* temp2;
    
    s32 i;
    s32 j;

    loadFile(0x80210000, D_800429F0);
    temp2 = temp;
    for(i = 0; i < 0x30; i++) {
        for(j = 0; j < 0x40; j++, temp2++) {
            *temp2 = ((u32) ((*temp2 >> 7) | ((*temp2 & 0x7F) << 9)) >> 1) & 0x7BDE;
        }
    }
    
    for(i = 0; i < 0xF0; i += 0x30) {
        for(j = 0; j < 0x140; j += 0x40) {   
            func_800404FC(j, i, temp);
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
