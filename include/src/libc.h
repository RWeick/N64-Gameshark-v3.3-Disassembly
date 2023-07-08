#ifndef _LIBC_H
#define _LIBC_H

u8* func_80042060(void*, int, size_t);
void setupHeap(u32, u32);
void * malloc(s32);
s32 free(void*);
s32 func_800422BC();

#endif