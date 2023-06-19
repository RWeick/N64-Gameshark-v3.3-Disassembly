#include "common.h"

s32 func_800402D8(void);                                  /* extern */
void setBaseAddress(u32);
void func_80041FCC(u32, char*);                             /* extern */
void call(void (*arg0)());                                 /* extern */
void pifUnlock(void);                               /* extern */
void func_800424C0(void);                                  /* extern */
void func_80042584(u8);                                 /* extern */
void func_8004267C(void);
void func_800426D4(s16);

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

void* func_80042178(s32 arg0);
s32 func_8004224C(void* arg0);
void setupHeap(u32 arg0, u32 arg1);

char D_800429C0[];          // shell.bin
char D_800429CC[];          // trainer.bin

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
s32 D_80042AC0;             // 0x00020000
s32 D_80042AC4;             // 0x00000000
s32 D_80042AC8;             // 0x00000000

u8 D_80042AD0[];            // 20 00 2E 7F 30 84 31 9F 32 C8 33 8A 34 93 35 A2
                            // 36 A0 37 8F 38 80 39 82 45 E0 46 E1 48 91 4C F4
                            // 4F 84 50 C1 52 81 61 FE 62 FD 63 FB 64 F7 65 EF
                            // 66 DF 67 BF 7A EA 00 FF FF 00

u8 D_80042B20[];

extern volatile u32 VI_CURRENT_REG;
extern volatile u32 PI_STATUS_REG;

extern volatile u32 SI_BASE14_REG;

void func_80040180(void) {
    s32 i;

    for (i = 0; i < (320 * 240 * 2); i++) {
        ((s32 *)0x80300000)[i] = 0;
    }
    
    pifUnlock();
    setupHeap(0x80180000, 0x80200000);
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
    func_80041FCC(0x80200400, D_800429C0);
    func_80042584(0x32);
    func_80041FCC(0x80780800, D_800429CC);
    func_80042584(0x31);
    
    for (i = 0; i < 0x3c; i++) {
        func_800424C0();
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

INCLUDE_ASM(s32, "main", func_800402D8);

INCLUDE_ASM(s32, "main", func_8004043C);

INCLUDE_ASM(s32, "main", func_800404FC);

#ifndef NON_MATCHING
asm (
    "lui        $3, (0x80040000 >> 16)\n"
    "sw         $16, 0x10($29)"
);
#endif
void wait_PI(void) {
    while (PI_STATUS_REG & 3); // wait until PI is not busy
}

#ifndef NON_MATCHING
asm ("lw         $31, 0x14($29)");
#endif
s32 func_80040580(s32 arg0) {
    volatile s32* temp_s0 = (volatile s32 *)(baseAddress | memSize | arg0);
    wait_PI();
    return *temp_s0;
}

void write16Doubled(u32 offset, u32 data) {
    s32 k = ((data & 0xffff) << 16) | (data & 0xffff);
    *(volatile s32 *)(baseAddress | memSize | offset) = k;
    wait_PI();
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

INCLUDE_ASM(s32, "main", func_80040F90);

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
    "func_80042328:\n"
        "jr $4"
    );

asm( // SN AS inserts nops after jumps
    "call:\n"
        "addiu      $29, $29, -0x14\n"
        "sw         $31, 0x10($29)\n"
        "jalr       $4\n"
        "lw         $31, 0x10($29)\n"
        "addiu      $29, $29, 0x14\n"
        "jr         $31"
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
    write16Doubled(0x800, arg0);
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
