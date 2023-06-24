#ifndef _HW_H
#define _HW_H

s32 func_80040580(s32);
void write16Doubled(u32, u32);
void setBaseAddress(u32);
void func_80040648(void);
void func_8004066C(u32);
s32 func_800406FC(u8);

extern s32 memSize;
extern s32 baseAddress;

#endif