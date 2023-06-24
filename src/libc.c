#include "common.h"

typedef struct _80042100S {
    char name[4];
    struct _80042100S* next;
    struct _80042100S* prev;
    u8 pad[4];
} mallocChunk;

mallocChunk* heapStart;         // 0x00000000
mallocChunk* heapEnd;           // 0x00000000

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

INCLUDE_ASM(void *, "libc", malloc); // malloc

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

#ifndef NON_MATCHING
asm("lui        $8, (0x80000000 >> 16)");
#endif
