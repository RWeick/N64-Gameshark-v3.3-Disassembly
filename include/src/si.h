#ifndef _SI_H
#define _SI_H

void waitSIReserved(void);
u32 readPIRam(u32*);
void writePIRam(u32*, u32);
void pifUnlock(void);

#endif