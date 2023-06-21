#include "common.h"

void loadStartupLogo(void);                                  /* extern */
void setBaseAddress(u32);
void loadFile(u32, char*);                             /* extern */
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
s32 free(void* arg0);
void setupHeap(u32 arg0, u32 arg1);

char D_800429C0[];              // shell.bin
char D_800429CC[];              // trainer.bin
char D_800429D8[];              // gslogo3.pal (US), arlogo3.pal (EU)
char D_800429E4[];              // gslogo3.bin (US), arlogo3.pal (EU)
char D_800429F0[];              // tile1.tg~
u8 D_80042A00[];                // 30 84 31 9F 32 C8 33 8A 34 93 35 A2 36 A0 37 8F 38 80 39 82 42 FF

char D_80042A20[];              // Write Error

mallocChunk* heapStart;         // 0x00000000
mallocChunk* heapEnd;           // 0x00000000
unsigned int mask;              // 0x00000000
u32 mask_putbit;                // 0x00000000
int* sym_to_char;               // 0x00000000
int* char_to_sym;               // 0x00000000
int in_cursor;                  // 0x00000000
unsigned int buffer;            // 0x00000000
u32 buffer_putbit;              // 0x00000000
int match_length;               // 0x00000000
unsigned int* sym_cum;          // 0x00000000
unsigned int* position_cum;     // 0x00000000
int* dad;                       // 0x00000000
u8 * infile;                    // 0x00000000
int out_cursor;                 // 0x00000000
int uncompressed_len;           // 0x00000000
unsigned char *text_buf;        // 0x00000000
unsigned int* sym_freq;         // 0x00000000
int* lson;                      // 0x00000000

u8* outfile;                    // 0x00000000
int* rson;                      // 0x00000000
int outfile_len;                // 0x00000000
int match_position;             // 0x00000000

s32 memSize;                    // 0x00400000
s32 baseAddress;                // 0xB0000000

unsigned long int textsize;     // 0x00000000
unsigned long int codesize;     // 0x00000000
unsigned long int printcount;   // 0x00000000
u32 low;                        // 0x00000000
u32 high;                       // 0x00020000
s32 value;                      // 0x00000000
s32 shifts;                     // 0x00000000

u8 ledSegmentTable[];           // ' ' 00 '.' 7F '0' 84 '1' 9F '2' C8 '3' 8A '4' 93 '5' A2        4 
                                // '6' A0 '7' 8F '8' 80 '9' 82 'E' E0 'F' E1 'H' 91 'L' F4       3 5
                                // 'O' 84 'P' C1 'R' 81 'a' FE 'b' FD 'c' FB 'd' F7 'e' EF        2 
                                // 'f' DF 'g' BF 'z' EA 00 FF FF 00                              1 6
                                //                                                                0  7
char unkLedValue;               // 0x61 'a'
s32 D_80042B14;                 // 0x00000000
u8 D_80042B20[];

extern volatile u32 SI_BASE14_REG;

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

    loadFile(0x80210000, D_800429F0);
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
void Error(char * message) {
    
}

void PutBit(int bit) {
    s32 temp_v1;
    u32 temp_v0;

    if (bit != 0) {
        buffer_putbit |= mask_putbit;
    }
    mask_putbit >>= 1;
    if (mask_putbit == 0) {
        outfile[out_cursor++] = buffer_putbit;
        if (out_cursor >= outfile_len) {
            Error(D_80042A20);
        }
        buffer_putbit = 0;
        mask_putbit = 0x80;
        codesize++;
    }
}

void FlushBitBuffer(void) {
    s32 i;
    for (i = 0; i < 7; i++) {
        PutBit(0);
    };
}

int GetBit(void) {
    mask >>= 1;
    if (mask == 0) {
        buffer = infile[in_cursor++];
        mask = 0x80;
    }
    return (buffer & mask) != 0;
}

#define N		 4096	/* size of ring buffer */
#define F		   60	/* upper limit for match_length */
#define THRESHOLD	2   /* encode string into position and length
						   if match_length is greater than this */
#define NIL			N	/* index for root of binary search trees */

void InitTree(void) {
    int i;

    for (i = (N + 1); i <= (N + 256); i++) {
        rson[i] = NIL;
    }

    for (i = 0; i < N; i++) {
        dad[i] = NIL;
    }
}

void InsertNode(int r) {
	int  i, p, cmp, temp;
	unsigned char  *key;

	cmp = 1;
    key = &text_buf[r];
    p = N + 1 + key[0];
    
    lson[r] = NIL;
	rson[r] = NIL;
    
    match_length = 0;
	for ( ; ; ) {
		if (cmp >= 0) {
			if (rson[p] != NIL) {
                p = rson[p];
            } else {
                rson[p] = r;
                dad[r] = p;
                return;
            }
		} else {
			if (lson[p] != NIL) {
                p = lson[p];
            } else {
                lson[p] = r;
                dad[r] = p;
                return;
            }
		}
		for (i = 1; i < F; i++) {
            cmp = key[i] - text_buf[p + i];
			if (cmp != 0) {
                break;
            }
        }
		if (i > THRESHOLD) {
			if (i > match_length) {
				match_position = (r - p) & (N - 1);
				if ((match_length = i) >= F) break;
			} else if (i == match_length) {
                temp = (r - p) & (N - 1);
				if (temp < match_position) {
					match_position = temp;
                }
			}
		}
	}
    
	dad[r] = dad[p];
    lson[r] = lson[p];
    rson[r] = rson[p];
    
	dad[lson[p]] = r;
    dad[rson[p]] = r;
    
	if (rson[dad[p]] == p) {
        rson[dad[p]] = r;
    } else {
        lson[dad[p]] = r;
    }
    
	dad[p] = NIL;  /* remove p */
}

void DeleteNode(int p) {
    s32 q;

    if (dad[p] == NIL) {
        return;
    }
    
    if (rson[p] == NIL) {
        q = lson[p];
    } else if (lson[p] == NIL) {
        q = rson[p];
    } else {
        q = lson[p];
        if (rson[lson[p]] != NIL) {
            do {
                q = rson[q];
            } while (rson[q] != NIL);
            rson[dad[q]] = lson[q];
            dad[lson[q]] = dad[q];
            lson[q] = lson[p];
            dad[lson[p]] = q;
        }
        rson[q] = rson[p];
        dad[rson[p]] = q;
    }
    
    dad[q] = dad[p];
    
    if (rson[dad[p]] == p) {
        rson[dad[p]] = q;
    } else {
        lson[dad[p]] = q;
    }
    
    dad[p] = NIL;
}

#define M   15

/*	Q1 (= 2 to the M) must be sufficiently large, but not so
	large as the unsigned long 4 * Q1 * (Q1 - 1) overflows.  */

#define Q1  (1UL << M)
#define Q2  (2 * Q1)
#define Q3  (3 * Q1)
#define Q4  (4 * Q1)
#define MAX_CUM (Q1 - 1)

#define N_CHAR  (256 - THRESHOLD + F)

void StartModel(void) {
    int ch, sym, i;

    sym_cum[N_CHAR] = 0;
    for (sym = N_CHAR; sym >= 1; sym--) {
        ch = sym - 1;
        char_to_sym[ch] = sym;
        sym_to_char[sym] = ch;
        sym_freq[sym] = 1;
        sym_cum[sym-1] = sym_cum[sym] + 1;
    }
    sym_freq[0] = 0;
    position_cum[N] = 0;
    for  (i = N; i >= 1; i--) {
        position_cum[i - 1] = position_cum[i] + 10000 / (i + 200);
    }
}

void UpdateModel(int sym) {
    s32 ch_i;
    s32 ch_sym;
    u32 c;
    s32 i;

    if (sym_cum[0] >= MAX_CUM) {
		c = 0;
		for (i = N_CHAR; i > 0; i--) {
			sym_cum[i] = c;
			c += (sym_freq[i] = (sym_freq[i] + 1) >> 1);
		}
		sym_cum[0] = c;
    }
    for (i = sym; sym_freq[i] == sym_freq[i - 1]; i--);
    if (i < sym) {
        ch_i = sym_to_char[i];
        ch_sym = sym_to_char[sym];
        
        sym_to_char[i] = ch_sym;
        sym_to_char[sym] = ch_i;
        
        char_to_sym[ch_i] = sym;
        char_to_sym[ch_sym] = i;
    }
    sym_freq[i]++;
    while (--i >= 0) {
        sym_cum[i]++;
    }
}

void Output(int bit) {
    PutBit(bit);
    while (shifts > 0) {
        PutBit(bit == 0);
        shifts--;
    };
}

void EncodeChar(int ch) {
    int sym;
    unsigned long int range;

    sym = char_to_sym[ch];
    range = high - low;
    high = low + (range * sym_cum[sym - 1]) / sym_cum[0];
    low +=       (range * sym_cum[sym    ]) / sym_cum[0];
    for ( ; ; ) {
        if (high <= Q2) {
            Output(0);
        } else if (low >= Q2) {
            Output(1);
            low -= Q2;
            high -= Q2;
        } else if ((low >= Q1) && (high <= Q3)) {
            shifts++;
            low -= Q1;
            high -= Q1;
        } else {
            break;
        }
        low += low;
        high += high;
    }
    UpdateModel(sym);
}

void EncodePosition(int position) {
    unsigned long int range;

    range = high - low;
    high = low + (range * position_cum[position    ]) / position_cum[0];
    low +=       (range * position_cum[position + 1]) / position_cum[0];
    for ( ; ; ) {
        if (high <= Q2) {
            Output(0);
        } else if (low >= Q2) {
            Output(1);
            low -= Q2;
            high -= Q2; 
        } else if ((low >= Q1) && (high <= Q3)) {
            shifts++;
            low -= Q1;
            high -= Q1;
        } else {
            break;
        }
        low += low;
        high += high;
    }
}

void EncodeEnd(void) {
    shifts++;
    if(low < Q1) {
        Output(0);
    } else {
        Output(1);
    }
    FlushBitBuffer();
}

int BinarySearchSym(unsigned int x) {
    int i = 1, j = N_CHAR, k;
    while (i < j) {
        k = (i + j) / 2;
        if (x < sym_cum[k]) {
            i = k + 1;
        } else {
            j = k;
        }
    }
    return i;
}

int BinarySearchPos(unsigned int x) {
    int i = 1, j = N, k;
    while (i < j) {
        k = (i + j) / 2;
        if (x < position_cum[k]) {
            i = k + 1;
        } else {
            j = k;
        }
    }
    return i - 1;
}

void StartDecode(void) {
    int i;
    for (i = 0; i < (M + 2); i++) {
        value = 2 * value + GetBit();
    };
}

int DecodeChar(void) {
    int sym, ch;
    unsigned long int range;

    range = high - low;
    sym = BinarySearchSym(((((value - low) + 1) * sym_cum[0]) - 1) / range);
    high = low + (range * sym_cum[sym - 1]) / sym_cum[0];
    low +=       (range * sym_cum[sym    ]) / sym_cum[0];
    for ( ; ; ) {
        if (low >= Q2) {
            value -= Q2;
            low -= Q2;
            high -= Q2;
        } else if ((low >= Q1) && (high <= Q3)) {
            value -= Q1;
            low -= Q1;
            high -= Q1;
        } else if (high > Q2) {
            break;
        }
        low += low;
        high += high;
        value = 2 * value + GetBit();
    }
    ch = sym_to_char[sym];
    UpdateModel(sym);
    return ch;
}

int DecodePosition(void) {
    int position;
    unsigned long int range;

    range = high - low;
    position = BinarySearchPos(((((value - low) + 1) * position_cum[0]) - 1) / range);
    high = low + (range * position_cum[position    ]) / position_cum[0];
    low +=       (range * position_cum[position + 1]) / position_cum[0];
    for ( ; ; ) {
        if (low >= Q2) {
            value -= Q2;
            low -= Q2;
            high -= Q2;
        } else if ((low >= Q1) && (high <= Q3)) {
            value -= Q1;
            low -= Q1;
            high -= Q1;
        } else if (high > Q2) {
            break;
        }
        low += low;
        high += high;
        value = 2 * value + GetBit();
    }
    return position;
}

s32 Encode(u8* arg0, u8* arg1, s32 arg2) {
    int  i, c, len, r, s, last_match_length;

    text_buf = func_80042178((N + F - 1) * sizeof(unsigned char));
    lson = func_80042178((N + 1) * sizeof(int));
    rson = func_80042178((N + 257) * sizeof(int));
    dad = func_80042178((N + 1) * sizeof(int));
    char_to_sym = func_80042178(N_CHAR * sizeof(int));
    sym_to_char = func_80042178((N_CHAR + 1) * sizeof(int));
    sym_freq = func_80042178((N_CHAR + 1) * sizeof(int));
    sym_cum = func_80042178((N_CHAR + 1) * sizeof(int));
    position_cum = func_80042178((N + 1) * sizeof(int));
    textsize = 0;
    codesize = 0;
    printcount = 0;
    buffer_putbit = 0;
    mask_putbit = 0x80;
    buffer = 0;
    mask = 0;
    low = 0;
    high = 0x20000;
    value = 0;
    outfile = arg0;
    infile = arg1;
    uncompressed_len = arg2;
    textsize = arg2;
    outfile_len = arg2;
    in_cursor = 0;
    out_cursor = 0;
    
    for(i = 0; i < 4; i++) {
        outfile[out_cursor++] = uncompressed_len >> (i * 8);
    }
    codesize += 4;
    if (textsize == 0) {
        return 0;
    }
    textsize = 0;
    StartModel();
    InitTree();
	s = 0;
    r = N - F;
	for (i = s; i < r; i++) {
        text_buf[i] = ' ';
    }
    
    for(len = 0; (len < F) && (in_cursor < uncompressed_len); len++) {
        c = infile[in_cursor++];
        text_buf[r + len] = c;
    }
    
    textsize = len;
	for (i = 1; i <= F; i++) {
        InsertNode(r - i);
    }
	InsertNode(r);

    do {
        if (match_length > len) {
            match_length = len;
        }
        
        if (match_length > len) {
            match_length = len;
        }
		if (match_length <= THRESHOLD) {
			match_length = 1; 
            EncodeChar(text_buf[r]); 
        } else {
			EncodeChar(255 - THRESHOLD + match_length);
			EncodePosition(match_position - 1);
        }
    
        last_match_length = match_length;
        
        for(i = 0; (i < last_match_length) && (in_cursor < uncompressed_len); i++) {  
            c = infile[in_cursor++];
            DeleteNode(s);
            
            text_buf[s] = c;
            
			if (s < F - 1) {
                text_buf[s + N] = c;
            }
            
			s = (s + 1) & (N - 1);
			r = (r + 1) & (N - 1);
            
			InsertNode(r);
        }
        
        while (i++ < last_match_length) {
			DeleteNode(s);
			s = (s + 1) & (N - 1);
			r = (r + 1) & (N - 1);
			if (--len) {
                InsertNode(r);
            }
		}
    } while (len > 0);
    EncodeEnd();
    free(position_cum);
    free(sym_cum);
    free(sym_freq);
    free(sym_to_char);
    free(char_to_sym);
    free(dad);
    free(rson);
    free(lson);
    free(text_buf);
    return out_cursor;
}

s32 Decode(void *loadAddr, u8 *dataStart)
{
    int  i, j, k, r, c;
	unsigned long int  count;
    
    text_buf = func_80042178((N + F - 1) * sizeof(unsigned char));
    lson = func_80042178((N + 1) * sizeof(int));
    rson = func_80042178((N + 257) * sizeof(int));
    dad = func_80042178((N + 1) * sizeof(int));
    char_to_sym = func_80042178(N_CHAR * sizeof(int));
    sym_to_char = func_80042178((N_CHAR + 1) * sizeof(int));
    sym_freq = func_80042178((N_CHAR + 1) * sizeof(int));
    sym_cum = func_80042178((N_CHAR + 1) * sizeof(int));
    position_cum = func_80042178((N + 1) * sizeof(int));
    textsize = 0;
    codesize = 0;
    printcount = 0;
    buffer_putbit = 0;
    mask_putbit = 0x80;
    buffer = 0;
    mask = 0;
    low = 0;
    high = 0x20000;
    value = 0;
    outfile = loadAddr;
    infile = dataStart;
    in_cursor = 0;
    out_cursor = 0;
    
    textsize = 0;
    for (i = 0; i < 4; i++) {
        textsize |= infile[in_cursor] << (i * 8);
        in_cursor++;
    }

    outfile_len = textsize;
    if (textsize == 0) {
        return 0;
    }
    StartDecode();
    StartModel();
    for (i = 0; i < 0xFC4; i++) {
        text_buf[i] = 0x20;
    }

    r = 0xFC4;
    count = 0;
    while (count < textsize) {
        c = DecodeChar();
        if (c < 0x100) {
            outfile[out_cursor++] = c;
            text_buf[r++] = c;
            r &= 0xFFF;
            count++;
        } else {
            i = ((r - DecodePosition()) - 1) & 0xFFF;
            j = c - 0xFD;
            for (k = 0; k < j; k++) {
                c = text_buf[(i + k) & 0xFFF];
                outfile[out_cursor++] = c;
                text_buf[r++] = c;
                r &= 0xFFF;
                count++;
            }

        }
    }

    free(position_cum);
    free(sym_cum);
    free(sym_freq);
    free(sym_to_char);
    free(char_to_sym);
    free(dad);
    free(rson);
    free(lson);
    free(text_buf);
    
    return out_cursor;
}

void loadFile(u32 loadAddr, char* filename) {
    u8* var_a1;
    s32 var_v1;
    u32 temp;

    var_a1 = (u8*) &D_80042B20;
    while (1) {
        s32 i = 1;
        temp = filename[0];
        while (temp != 0 && temp == ((FileEntry*) var_a1)->name[i - 1]) {
            temp = filename[i];
            i++;
        }
        if (temp == 0) {
            break;
        }
        i = var_a1[0] << 24;
        i |= var_a1[1] << 16;
        i |= var_a1[2] << 8;
        i |= var_a1[3];
        var_a1 += i;
    }
    Decode((void *)loadAddr, ((FileEntry*) var_a1)->fileData);
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

s32 free(void* arg0) { // free
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

s32 func_80042714(s32 arg0) {
    s32 rv;
    u32 Status;

    Status = getStatus();
    setStatus(Status & ~SR_IE);
    while (!(func_800426F8() & 0x10));
    rv = func_800426F8() & 0xF;
    func_80042694((arg0 & 0xF) | 0x10);
    while (func_800426F8() & 0x10);
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
