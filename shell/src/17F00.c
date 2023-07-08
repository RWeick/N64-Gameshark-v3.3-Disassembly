#include "common.h"

s16 D_802283D0;
s16 D_802283D2;

void func_80218300(void) {
    u32 var_v1;
    for (var_v1 = 0; var_v1 < 0x180U; var_v1++);
}

s32 func_8021831C(s32* arg0) {
    s32 temp_s0 = *arg0;
    func_80218300();
    return temp_s0;
}

void func_80218348(s32 arg0) {
    int i;
    for (i = 0; i < arg0; i++);
}

INCLUDE_ASM(const s32, "17F00", func_80218368);

INCLUDE_ASM(const s32, "17F00", func_802183B8);

s32 func_80218430(void) {
    func_80218368(0, 0xFFFF);
    func_80218368(0, 0x9090);
    func_80218348(10000);
    D_802283D0 = func_802183B8(0) & 0xFF;
    D_802283D2 = func_802183B8(1) & 0xFF;
    func_80218368(0, 0xFFFF);
    return 0;
}

void func_8021849C(void) {
    func_802183B8(0x1823);
    func_802183B8(0x1820);
    func_802183B8(0x1822);
    func_802183B8(0x418);
    func_802183B8(0x41B);
    func_802183B8(0x419);
    func_802183B8(0x41A);
    func_80218348(10000);
}

void func_802184F0(void) {
    func_802183B8(0x1823);
    func_802183B8(0x1820);
    func_802183B8(0x1822);
    func_802183B8(0x418);
    func_802183B8(0x41B);
    func_802183B8(0x419);
    func_802183B8(0x40A);
    func_80218348(10000);
}

INCLUDE_ASM(const s32, "17F00", func_80218544); // c

s32 func_802185D8(void) {
    func_8021849C();
    func_80218368(0, 0xFFFF);
    func_80218368(0, 0x3030);
    func_80218368(0, 0x3030);
    func_80218348(10000);
    func_80218544(0);
    func_802184F0();
    func_80218368(0, 0xFFFF);
    return 0;
}

INCLUDE_ASM(const s32, "17F00", func_80218640);
