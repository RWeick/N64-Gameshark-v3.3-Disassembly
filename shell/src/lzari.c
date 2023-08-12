#include "common.h"

typedef struct {
    /* 0x00 */ s32 incursor;
    /* 0x04 */ s32 outcursor;
    /* 0x08 */ s32 outfile_len;                            /* inferred */
    /* 0x0C */ s32 uncompressed_len;                            /* inferred */
    /* 0x10 */ u8* infile;
    /* 0x14 */ u8* outfile;
    /* 0x18 */ s32 textsize;                           /* inferred */
    /* 0x1C */ u32 codesize;
    /* 0x20 */ u32 printcount;                           /* inferred */
    /* 0x24 */ u32 outbuffer;
    /* 0x28 */ u32 outmask;
    /* 0x2C */ s32 inbuffer;
    /* 0x30 */ u32 inmask;
    /* 0x34 */ u32 low;
    /* 0x38 */ u32 high;
    /* 0x3C */ s32 value;
    /* 0x40 */ s32 shifts;
    /* 0x44 */ s32* char_to_sym;
    /* 0x48 */ s32* sym_to_char;
    /* 0x4C */ u32* sym_freq;
    /* 0x50 */ u32* sym_cum;
    /* 0x54 */ u32* position_cum;
    /* 0x58 */ s32 match_position;
    /* 0x5C */ s32 match_length;
    /* 0x60 */ u8* text_buf;
    /* 0x64 */ u32* lson;
    /* 0x68 */ u32* rson;
    /* 0x6C */ u32* dad;
} LZARIStruct;                                      /* size = 0x70 */

typedef struct {
    u32 length;
    char name[12];
    u8 fileData[0];
} FileEntry;

char D_80224C40[];

u8 D_802283E0[];

extern LZARIStruct D_80243338;

// see bottom of file for explanation
#ifdef NON_MATCHING
    #define _static
#else
    #define _static static
#endif

_static inline void Error(char * message) {
    
}

_static inline void PutBit(int bit) {
    if (bit) {
        D_80243338.outbuffer |= D_80243338.outmask;
    }
    if ((D_80243338.outmask >>= 1) == 0) {
        D_80243338.outfile[D_80243338.outcursor++] = D_80243338.outbuffer;
        if (D_80243338.outcursor >= D_80243338.outfile_len) {
            Error(D_80224C40);
        }
        D_80243338.outbuffer = 0;
        D_80243338.outmask = 0x80;
        D_80243338.codesize++;
    }
}

_static inline void FlushBitBuffer(void) {
    s32 i;
    for (i = 0; i < 7; i++) {
        PutBit(0);
    };
}

_static inline int GetBit(void) {
    if ((D_80243338.inmask >>= 1) == 0) {
        D_80243338.inbuffer = D_80243338.infile[D_80243338.incursor++];
        D_80243338.inmask = 0x80;
    }
    return (D_80243338.inbuffer & D_80243338.inmask) != 0;
}

#define N		 4096	/* size of ring buffer */
#define F		   60	/* upper limit for match_length */
#define THRESHOLD	2   /* encode string into position and length
						   if match_length is greater than this */
#define NIL			N	/* index for root of binary search trees */

void func_80215D40(void) {
    int i;

    for (i = (N + 1); i <= (N + 256); i++) {
        D_80243338.rson[i] = NIL;
    }

    for (i = 0; i < N; i++) {
        D_80243338.dad[i] = NIL;
    }
}

void func_80215DA8(int r) {
	int  i, p, cmp, temp;
	unsigned char  *key;

	cmp = 1;
    key = &D_80243338.text_buf[r];
    p = N + 1 + key[0];
    
	D_80243338.rson[r] = D_80243338.lson[r] = NIL;
    
    D_80243338.match_length = 0;
	for ( ; ; ) {
		if (cmp >= 0) {
			if (D_80243338.rson[p] != NIL) {
                p = D_80243338.rson[p];
            } else {
                D_80243338.rson[p] = r;
                D_80243338.dad[r] = p;
                return;
            }
		} else {
			if (D_80243338.lson[p] != NIL) {
                p = D_80243338.lson[p];
            } else {
                D_80243338.lson[p] = r;
                D_80243338.dad[r] = p;
                return;
            }
		}
		for (i = 1; i < F; i++) {
            cmp = key[i] - D_80243338.text_buf[p + i];
			if (cmp != 0) {
                break;
            }
        }
		if (i > THRESHOLD) {
			if (i > D_80243338.match_length) {
				D_80243338.match_position = (r - p) & (N - 1);
				if ((D_80243338.match_length = i) >= F) break;
			} else if (i == D_80243338.match_length) {
                temp = (r - p) & (N - 1);
				if (temp < D_80243338.match_position) {
					D_80243338.match_position = temp;
                }
			}
		}
	}
    
	D_80243338.dad[r] = D_80243338.dad[p];
    D_80243338.lson[r] = D_80243338.lson[p];
    D_80243338.rson[r] = D_80243338.rson[p];
    
	D_80243338.dad[D_80243338.lson[p]] = r;
    D_80243338.dad[D_80243338.rson[p]] = r;
    
	if (D_80243338.rson[D_80243338.dad[p]] == p) {
        D_80243338.rson[D_80243338.dad[p]] = r;
    } else {
        D_80243338.lson[D_80243338.dad[p]] = r;
    }
    
	D_80243338.dad[p] = NIL;  /* remove p */
}

void func_80215FC4(int p) {
    s32 q;

    if (D_80243338.dad[p] == NIL) {
        return;
    }
    
    if (D_80243338.rson[p] == NIL) {
        q = D_80243338.lson[p];
    } else if (D_80243338.lson[p] == NIL) {
        q = D_80243338.rson[p];
    } else {
        q = D_80243338.lson[p];
        if (D_80243338.rson[D_80243338.lson[p]] != NIL) {
            do {
                q = D_80243338.rson[q];
            } while (D_80243338.rson[q] != NIL);
            D_80243338.rson[D_80243338.dad[q]] = D_80243338.lson[q];
            D_80243338.dad[D_80243338.lson[q]] = D_80243338.dad[q];
            D_80243338.lson[q] = D_80243338.lson[p];
            D_80243338.dad[D_80243338.lson[p]] = q;
        }
        D_80243338.rson[q] = D_80243338.rson[p];
        D_80243338.dad[D_80243338.rson[p]] = q;
    }
    
    D_80243338.dad[q] = D_80243338.dad[p];
    
    if (D_80243338.rson[D_80243338.dad[p]] == p) {
        D_80243338.rson[D_80243338.dad[p]] = q;
    } else {
        D_80243338.lson[D_80243338.dad[p]] = q;
    }
    
    D_80243338.dad[p] = NIL;
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

void func_802161A8(void) {
    int ch, sym, i;

    D_80243338.sym_cum[N_CHAR] = 0;
    for (sym = N_CHAR; sym >= 1; sym--) {
        ch = sym - 1;
        D_80243338.char_to_sym[ch] = sym;
        D_80243338.sym_to_char[sym] = ch;
        D_80243338.sym_freq[sym] = 1;
        D_80243338.sym_cum[sym-1] = D_80243338.sym_cum[sym] + D_80243338.sym_freq[sym];
    }
    D_80243338.sym_freq[0] = 0;
    D_80243338.position_cum[N] = 0;
    for  (i = N; i >= 1; i--) {
        D_80243338.position_cum[i - 1] = D_80243338.position_cum[i] + 10000 / (i + 200);
    }
}

void func_80216298(int sym) {
    s32 ch_i;
    s32 ch_sym;
    u32 c;
    s32 i;

    if (D_80243338.sym_cum[0] >= MAX_CUM) {
		c = 0;
		for (i = N_CHAR; i > 0; i--) {
			D_80243338.sym_cum[i] = c;
			c += (D_80243338.sym_freq[i] = (D_80243338.sym_freq[i] + 1) >> 1);
		}
		D_80243338.sym_cum[0] = c;
    }
    for (i = sym; D_80243338.sym_freq[i] == D_80243338.sym_freq[i - 1]; i--);
    if (i < sym) {
        ch_i = D_80243338.sym_to_char[i];
        ch_sym = D_80243338.sym_to_char[sym];
        
        D_80243338.sym_to_char[i] = ch_sym;
        D_80243338.sym_to_char[sym] = ch_i;
        
        D_80243338.char_to_sym[ch_i] = sym;
        D_80243338.char_to_sym[ch_sym] = i;
    }
    D_80243338.sym_freq[i]++;
    while (--i >= 0) {
        D_80243338.sym_cum[i]++;
    }
}

void func_802163D0(int bit) {
    PutBit(bit);
    for ( ; D_80243338.shifts > 0; D_80243338.shifts--) {
        PutBit(!bit);
    };
}

void func_802164BC(int ch) {
    int sym;
    unsigned long int range;

    sym = D_80243338.char_to_sym[ch];
    range = D_80243338.high - D_80243338.low;
    D_80243338.high = D_80243338.low + (range * D_80243338.sym_cum[sym - 1]) / D_80243338.sym_cum[0];
    D_80243338.low +=                  (range * D_80243338.sym_cum[sym    ]) / D_80243338.sym_cum[0];
    for ( ; ; ) {
        if (D_80243338.high <= Q2) {
            func_802163D0(0);
        } else if (D_80243338.low >= Q2) {
            func_802163D0(1);
            D_80243338.low -= Q2;
            D_80243338.high -= Q2;
        } else if ((D_80243338.low >= Q1) && (D_80243338.high <= Q3)) {
            D_80243338.shifts++;
            D_80243338.low -= Q1;
            D_80243338.high -= Q1;
        } else {
            break;
        }
        D_80243338.low += D_80243338.low;
        D_80243338.high += D_80243338.high;
    }
    func_80216298(sym);
}

void func_80216654(int position) {
    unsigned long int range;

    range = D_80243338.high - D_80243338.low;
    D_80243338.high = D_80243338.low + (range * D_80243338.position_cum[position    ]) / D_80243338.position_cum[0];
    D_80243338.low +=                  (range * D_80243338.position_cum[position + 1]) / D_80243338.position_cum[0];
    for ( ; ; ) {
        if (D_80243338.high <= Q2) {
            func_802163D0(0);
        } else if (D_80243338.low >= Q2) {
            func_802163D0(1);
            D_80243338.low -= Q2;
            D_80243338.high -= Q2; 
        } else if ((D_80243338.low >= Q1) && (D_80243338.high <= Q3)) {
            D_80243338.shifts++;
            D_80243338.low -= Q1;
            D_80243338.high -= Q1;
        } else {
            break;
        }
        D_80243338.low += D_80243338.low;
        D_80243338.high += D_80243338.high;
    }
}

void func_802167CC(void) {
    D_80243338.shifts++;
    if(D_80243338.low < Q1) {
        func_802163D0(0);
    } else {
        func_802163D0(1);
    }
    FlushBitBuffer();
}

int func_80216874(unsigned int x) {
    int i = 1, j = N_CHAR, k;
    while (i < j) {
        k = (i + j) / 2;
        if (x < D_80243338.sym_cum[k]) {
            i = k + 1;
        } else {
            j = k;
        }
    }
    return i;
}

int func_802168C4(unsigned int x) {
    int i = 1, j = N, k;
    while (i < j) {
        k = (i + j) / 2;
        if (x < D_80243338.position_cum[k]) {
            i = k + 1;
        } else {
            j = k;
        }
    }
    return i - 1;
}

void func_80216914(void) {
    int i;
    for (i = 0; i < (M + 2); i++) {
        D_80243338.value = 2 * D_80243338.value + GetBit();
    };
}

int func_8021698C(void) {
    int sym, ch;
    unsigned long int range;

    range = D_80243338.high - D_80243338.low;
    sym = func_80216874(((((D_80243338.value - D_80243338.low) + 1) * D_80243338.sym_cum[0]) - 1) / range);
    D_80243338.high = D_80243338.low + (range * D_80243338.sym_cum[sym - 1]) / D_80243338.sym_cum[0];
    D_80243338.low +=                  (range * D_80243338.sym_cum[sym    ]) / D_80243338.sym_cum[0];
    for ( ; ; ) {
        if (D_80243338.low >= Q2) {
            D_80243338.value -= Q2;
            D_80243338.low -= Q2;
            D_80243338.high -= Q2;
        } else if ((D_80243338.low >= Q1) && (D_80243338.high <= Q3)) {
            D_80243338.value -= Q1;
            D_80243338.low -= Q1;
            D_80243338.high -= Q1;
        } else if (D_80243338.high > Q2) {
            break;
        }
        D_80243338.low += D_80243338.low;
        D_80243338.high += D_80243338.high;
        D_80243338.value = 2 * D_80243338.value + GetBit();
    }
    ch = D_80243338.sym_to_char[sym];
    func_80216298(sym);
    return ch;
}

int func_80216BA0(void) {
    int position;
    unsigned long int range;

    range = D_80243338.high - D_80243338.low;
    position = func_802168C4(((((D_80243338.value - D_80243338.low) + 1) * D_80243338.position_cum[0]) - 1) / range);
    D_80243338.high = D_80243338.low + (range * D_80243338.position_cum[position    ]) / D_80243338.position_cum[0];
    D_80243338.low +=                  (range * D_80243338.position_cum[position + 1]) / D_80243338.position_cum[0];
    for ( ; ; ) {
        if (D_80243338.low >= Q2) {
            D_80243338.value -= Q2;
            D_80243338.low -= Q2;
            D_80243338.high -= Q2;
        } else if ((D_80243338.low >= Q1) && (D_80243338.high <= Q3)) {
            D_80243338.value -= Q1;
            D_80243338.low -= Q1;
            D_80243338.high -= Q1;
        } else if (D_80243338.high > Q2) {
            break;
        }
        D_80243338.low += D_80243338.low;
        D_80243338.high += D_80243338.high;
        D_80243338.value = 2 * D_80243338.value + GetBit();
    }
    return position;
}

s32 func_80216D94(u8* arg0, u8* arg1, s32 arg2, s32 arg3, s32 arg4, s32 arg5) {
    int  i, c, len, r, s, last_match_length;

    D_80243338.text_buf = func_80215874((N + F - 1) * sizeof(unsigned char));
    D_80243338.lson = func_80215874((N + 1) * sizeof(int));
    D_80243338.rson = func_80215874((N + 257) * sizeof(int));
    D_80243338.dad = func_80215874((N + 1) * sizeof(int));
    D_80243338.char_to_sym = func_80215874(N_CHAR * sizeof(int));
    D_80243338.sym_to_char = func_80215874((N_CHAR + 1) * sizeof(int));
    D_80243338.sym_freq = func_80215874((N_CHAR + 1) * sizeof(int));
    D_80243338.sym_cum = func_80215874((N_CHAR + 1) * sizeof(int));
    D_80243338.position_cum = func_80215874((N + 1) * sizeof(int));
    D_80243338.textsize = 0;
    D_80243338.codesize = 0;
    D_80243338.printcount = 0;
    D_80243338.outbuffer = 0;
    D_80243338.outmask = 0x80;
    D_80243338.inbuffer = 0;
    D_80243338.inmask = 0;
    D_80243338.low = 0;
    D_80243338.high = 0x20000;
    D_80243338.value = 0;
    D_80243338.outfile = arg0;
    D_80243338.infile = arg1;
    D_80243338.uncompressed_len = arg2;
    D_80243338.outfile_len = arg2;
    D_80243338.textsize = arg2;
    D_80243338.incursor = 0;
    D_80243338.outcursor = 0;
    
    for(i = 0; i < 4; i++) {
        D_80243338.outfile[D_80243338.outcursor++] = D_80243338.outfile_len >> (i * 8);
    }
    D_80243338.codesize += 4;
    if (D_80243338.textsize == 0) {
        return 0;
    }
    D_80243338.textsize = 0;
    func_802161A8();
    func_80215D40();
	s = 0;
    r = N - F;
	for (i = s; i < r; i++) {
        D_80243338.text_buf[i] = ' ';
    }
    
    for(len = 0; (len < F) && (D_80243338.incursor < D_80243338.outfile_len); len++) {
        c = D_80243338.infile[D_80243338.incursor++];
        D_80243338.text_buf[r + len] = c;
    }
    
    D_80243338.textsize = len;
	for (i = 1; i <= F; i++) {
        func_80215DA8(r - i);
    }
	func_80215DA8(r);

    do {
        if (D_80243338.match_length > len) {
            D_80243338.match_length = len;
        }
		if (D_80243338.match_length <= THRESHOLD) {
			D_80243338.match_length = 1; 
            func_802164BC(D_80243338.text_buf[r]); 
        } else {
			func_802164BC(255 - THRESHOLD + D_80243338.match_length);
			func_80216654(D_80243338.match_position - 1);
        }
    
        last_match_length = D_80243338.match_length;
        
        for(i = 0; (i < last_match_length) && (D_80243338.incursor < D_80243338.outfile_len); i++) {  
            c = D_80243338.infile[D_80243338.incursor++];
            func_80215FC4(s);
            
            D_80243338.text_buf[s] = c;
            
			if (s < F - 1) {
                D_80243338.text_buf[s + N] = c;
            }
            
			s = (s + 1) & (N - 1);
			r = (r + 1) & (N - 1);
            
			func_80215DA8(r);
        }
        
        if ((arg5 > 0) && ((D_80243338.textsize += i) > D_80243338.printcount)) {
            D_80243338.printcount += 1024;
        }

        while (i++ < last_match_length) {
			func_80215FC4(s);
			s = (s + 1) & (N - 1);
			r = (r + 1) & (N - 1);
			if (--len) {
                func_80215DA8(r);
            }
		}
    } while (len > 0);
    func_802167CC();
    func_8021591C(D_80243338.position_cum);
    func_8021591C(D_80243338.sym_cum);
    func_8021591C(D_80243338.sym_freq);
    func_8021591C(D_80243338.sym_to_char);
    func_8021591C(D_80243338.char_to_sym);
    func_8021591C(D_80243338.dad);
    func_8021591C(D_80243338.rson);
    func_8021591C(D_80243338.lson);
    func_8021591C(D_80243338.text_buf);
    return D_80243338.outcursor;
}

s32 func_80217194(void *loadAddr, u8 *dataStart, s32 arg2, s32 arg3, s32 arg4)
{
    int  i, j, k, r, c;
	unsigned long int  count;
    
    D_80243338.low = 0;
    D_80243338.high = 0x20000;
    D_80243338.value = 0;
    D_80243338.shifts = 0;
    D_80243338.text_buf = func_80215874((N + F - 1) * sizeof(unsigned char));
    D_80243338.lson = func_80215874((N + 1) * sizeof(int));
    D_80243338.rson = func_80215874((N + 257) * sizeof(int));
    D_80243338.dad = func_80215874((N + 1) * sizeof(int));
    D_80243338.char_to_sym = func_80215874(N_CHAR * sizeof(int));
    D_80243338.sym_to_char = func_80215874((N_CHAR + 1) * sizeof(int));
    D_80243338.sym_freq = func_80215874((N_CHAR + 1) * sizeof(int));
    D_80243338.sym_cum = func_80215874((N_CHAR + 1) * sizeof(int));
    D_80243338.position_cum = func_80215874((N + 1) * sizeof(int));
    D_80243338.textsize = 0;
    D_80243338.codesize = 0;
    D_80243338.printcount = 0;
    D_80243338.outbuffer = 0;
    D_80243338.outmask = 0x80;
    D_80243338.inbuffer = 0;
    D_80243338.inmask = 0;
    D_80243338.low = 0;
    D_80243338.high = 0x20000;
    D_80243338.value = 0;
    D_80243338.outfile = loadAddr;
    D_80243338.infile = dataStart;
    D_80243338.incursor = 0;
    D_80243338.outcursor = 0;
    
    D_80243338.textsize = 0;
    for (i = 0; i < 4; i++) {
        D_80243338.textsize |= D_80243338.infile[D_80243338.incursor] << (i * 8);
        D_80243338.incursor++;
    }

    D_80243338.uncompressed_len = D_80243338.textsize;
    if (D_80243338.textsize == 0) {
        return 0;
    }
    func_80216914();
    func_802161A8();
    for (i = 0; i < 0xFC4; i++) {
        D_80243338.text_buf[i] = 0x20;
    }

    r = 0xFC4;
    count = 0;
    while (count < D_80243338.textsize) {
        c = func_8021698C();
        if (c < 0x100) {
            D_80243338.outfile[D_80243338.outcursor++] = c;
            D_80243338.text_buf[r++] = c;
            r &= 0xFFF;
            count++;
        } else {
            i = ((r - func_80216BA0()) - 1) & 0xFFF;
            j = c - 0xFD;
            for (k = 0; k < j; k++) {
                c = D_80243338.text_buf[(i + k) & 0xFFF];
                D_80243338.outfile[D_80243338.outcursor++] = c;
                D_80243338.text_buf[r++] = c;
                r &= 0xFFF;
                count++;
            }
        }
		if ((arg4 > 0) && (count > D_80243338.printcount)) {
			D_80243338.printcount += 1024;
		}
    }

    func_8021591C(D_80243338.position_cum);
    func_8021591C(D_80243338.sym_cum);
    func_8021591C(D_80243338.sym_freq);
    func_8021591C(D_80243338.sym_to_char);
    func_8021591C(D_80243338.char_to_sym);
    func_8021591C(D_80243338.dad);
    func_8021591C(D_80243338.rson);
    func_8021591C(D_80243338.lson);
    func_8021591C(D_80243338.text_buf);
    
    return D_80243338.outcursor;
}

void func_802174B4(u32 loadAddr, char* filename) {
    u8* var_a1;
    u32 temp;

    var_a1 = D_802283E0;
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
    func_80217194((void *)loadAddr, ((FileEntry*) var_a1)->fileData, 0, 0, 0);
}

#ifndef NON_MATCHING
// stupid nonsense required to get this to match properly
// normally, the definitions of these 3 functions above
// would have the "static" removed, which would mean
// they would get put down here as they're non-static
// inlines, but because of the two words required at the
// end, that won't work - the words get moved before those
// functions - and so this annoying workaround is needed
// to get the right code in the right place
void _Error(char * message) {
    
}

void _PutBit(int bit) {
    if (bit) {
        D_80243338.outbuffer |= D_80243338.outmask;
    }
    if ((D_80243338.outmask >>= 1) == 0) {
        D_80243338.outfile[D_80243338.outcursor++] = D_80243338.outbuffer;
        if (D_80243338.outcursor >= D_80243338.outfile_len) {
            Error(D_80224C40); // the inline version
        }
        D_80243338.outbuffer = 0;
        D_80243338.outmask = 0x80;
        D_80243338.codesize++;
    }
}

void _FlushBitBuffer(void) {
    s32 i;
    for (i = 0; i < 7; i++) {
        PutBit(0); // the inline version
    };
}

int _GetBit(void) {
    if ((D_80243338.inmask >>= 1) == 0) {
        D_80243338.inbuffer = D_80243338.infile[D_80243338.incursor++];
        D_80243338.inmask = 0x80;
    }
    return (D_80243338.inbuffer & D_80243338.inmask) != 0;
}

asm(
    ".word 0xAFB10014\n"
    ".word 0xAFB00010"
    );
#endif
