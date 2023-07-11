#ifndef _COMMON_H
#define _COMMON_H

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