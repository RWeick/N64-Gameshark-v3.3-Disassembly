#ifndef _COMMON_H
#define _COMMON_H

#ifdef _LANGUAGE_ASSEMBLY

#include "asm.h"
#include "regdef.h"
#include "PR/rcp.h"

#define LI(reg, tmp, val) \
    lui tmp, ((val) >> 16); \
    ori reg, tmp, ((val) & 0xFFFF)
    
#define LA(reg, tmp, val) \
    lui tmp, %hi(val); \
    addiu reg, tmp, %lo(val)

#endif

#ifdef _LANGUAGE_C

#include <include_asm.h>
#include <macros.h>

#include <ultra64.h>

typedef u8 Addr[];

static inline u32 READ32(u32 addr) {
    return *(u32*)addr;
}

static inline void WRITE32(u32 addr, s32 data) {
    *(u32*)addr = data;
}

static inline void* ALIGNPTR(void* ptr, int size) {
    return (void*)(((u32)ptr + (size - 1)) & ~(size - 1));
}

#endif

#endif