#ifndef _LED_H
#define _LED_H

void waitVsync(void);
void func_80042504(u32);
s32 getLEDSegmentData(char);
void setLED(char);
void func_80042628(char);

#endif