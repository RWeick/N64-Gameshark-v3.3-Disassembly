# 0 "src/main.c"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "src/main.c"
# 1 "include/common.h" 1



# 1 "include/include_asm.h" 1
# 5 "include/common.h" 2
# 1 "include/macros.h" 1
# 6 "include/common.h" 2

# 1 "include/ultra64.h" 1
# 25 "include/ultra64.h"
# 1 "include/PR/ultratypes.h" 1
# 37 "include/PR/ultratypes.h"
typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned long u32;
typedef unsigned long long u64;

typedef signed char s8;
typedef short s16;
typedef long s32;
typedef long long s64;

typedef volatile unsigned char vu8;
typedef volatile unsigned short vu16;
typedef volatile unsigned long vu32;
typedef volatile unsigned long long vu64;

typedef volatile signed char vs8;
typedef volatile short vs16;
typedef volatile long vs32;
typedef volatile long long vs64;

typedef float f32;
typedef double f64;





typedef unsigned int size_t;
# 26 "include/ultra64.h" 2

# 1 "include/PR/os.h" 1
# 48 "include/PR/os.h"
typedef s32 OSPri;
typedef s32 OSId;
typedef union { struct { f32 f_odd; f32 f_even; } f; f64 d; } __OSfp;

typedef struct {
 u64 at, v0, v1, a0, a1, a2, a3;
 u64 t0, t1, t2, t3, t4, t5, t6, t7;
 u64 s0, s1, s2, s3, s4, s5, s6, s7;
 u64 t8, t9, gp, sp, s8, ra;
 u64 lo, hi;
 u32 sr, pc, cause, badvaddr, rcp;
 u32 fpcsr;
 __OSfp fp0, fp2, fp4, fp6, fp8, fp10, fp12, fp14;
 __OSfp fp16, fp18, fp20, fp22, fp24, fp26, fp28, fp30;
} __OSThreadContext;

typedef struct OSThread_s {
 struct OSThread_s *next;
 OSPri priority;
 struct OSThread_s **queue;
 struct OSThread_s *tlnext;
 u16 state;
 u16 flags;
 OSId id;
 int fp;
 __OSThreadContext context;
} OSThread;

typedef u32 OSEvent;
typedef u32 OSIntMask;
typedef u32 OSPageMask;
typedef u32 OSHWIntr;




typedef void * OSMesg;




typedef struct OSMesgQueue_s {
 OSThread *mtqueue;

 OSThread *fullqueue;

 s32 validCount;
 s32 first;
 s32 msgCount;
 OSMesg *msg;
} OSMesgQueue;
# 109 "include/PR/os.h"
typedef struct {
 u32 errStatus;
        void *dramAddr;
 void *C2Addr;
 u32 sectorSize;
 u32 C1ErrNum;
 u32 C1ErrSector[4];
} __OSBlockInfo;

typedef struct {
 u32 cmdType;
 u16 transferMode;
 u16 blockNum;
 s32 sectorNum;
 u32 devAddr;
 u32 bmCtlShadow;
 u32 seqCtlShadow;
 __OSBlockInfo block[2];
} __OSTranxInfo;


typedef struct OSPiHandle_s {
        struct OSPiHandle_s *next;
        u8 type;
        u8 latency;
        u8 pageSize;
        u8 relDuration;
        u8 pulse;
 u8 domain;
        u32 baseAddress;
        u32 speed;

        __OSTranxInfo transferInfo;
} OSPiHandle;

typedef struct {
        u8 type;
        u32 address;
} OSPiInfo;




typedef struct {
        u16 type;
        u8 pri;
        u8 status;
 OSMesgQueue *retQueue;

} OSIoMesgHdr;

typedef struct {
 OSIoMesgHdr hdr;
 void * dramAddr;
 u32 devAddr;
 u32 size;
 OSPiHandle *piHandle;
} OSIoMesg;




typedef struct {
        s32 active;
 OSThread *thread;
        OSMesgQueue *cmdQueue;
        OSMesgQueue *evtQueue;
        OSMesgQueue *acsQueue;

        s32 (*dma)(s32, u32, void *, u32);
        s32 (*edma)(OSPiHandle *, s32, u32, void *, u32);
} OSDevMgr;





typedef struct {
    u32 ctrl;
    u32 width;
    u32 burst;
    u32 vSync;
    u32 hSync;
    u32 leap;
    u32 hStart;
    u32 xScale;
    u32 vCurrent;
} OSViCommonRegs;





typedef struct {
    u32 origin;
    u32 yScale;
    u32 vStart;
    u32 vBurst;
    u32 vIntr;
} OSViFieldRegs;





typedef struct {
    u8 type;
    OSViCommonRegs comRegs;
    OSViFieldRegs fldRegs[2];
} OSViMode;




typedef u64 OSTime;




typedef struct OSTimer_s {
 struct OSTimer_s *next;
 struct OSTimer_s *prev;
 OSTime interval;
 OSTime value;

 OSMesgQueue *mq;
 OSMesg msg;
} OSTimer;





typedef struct {
 u16 type;
 u8 status;
 u8 errno;
}OSContStatus;

typedef struct {
 u16 button;
 s8 stick_x;
 s8 stick_y;
 u8 errno;
} OSContPad;

typedef struct {
 void *address;
 u8 databuffer[32];
        u8 addressCrc;
 u8 dataCrc;
 u8 errno;
} OSContRamIo;







typedef struct {
 int status;
 OSMesgQueue *queue;
 int channel;
 u8 id[32];
 u8 label[32];
 int version;
 int dir_size;
 int inode_table;
 int minode_table;
 int dir_table;
 int inode_start_page;
 u8 banks;
 u8 activebank;
} OSPfs;


typedef struct {
 u32 file_size;
   u32 game_code;
   u16 company_code;
   char ext_name[4];
   char game_name[16];
} OSPfsState;




typedef struct {
 u16 *histo_base;
 u32 histo_size;
 u32 *text_start;
 u32 *text_end;
} OSProf;
# 703 "include/PR/os.h"
extern u64 osClockRate;
# 717 "include/PR/os.h"
extern OSViMode osViModeTable[];

extern OSViMode osViModeNtscLpn1;
extern OSViMode osViModeNtscLpf1;
extern OSViMode osViModeNtscLan1;
extern OSViMode osViModeNtscLaf1;
extern OSViMode osViModeNtscLpn2;
extern OSViMode osViModeNtscLpf2;
extern OSViMode osViModeNtscLan2;
extern OSViMode osViModeNtscLaf2;
extern OSViMode osViModeNtscHpn1;
extern OSViMode osViModeNtscHpf1;
extern OSViMode osViModeNtscHan1;
extern OSViMode osViModeNtscHaf1;
extern OSViMode osViModeNtscHpn2;
extern OSViMode osViModeNtscHpf2;

extern OSViMode osViModePalLpn1;
extern OSViMode osViModePalLpf1;
extern OSViMode osViModePalLan1;
extern OSViMode osViModePalLaf1;
extern OSViMode osViModePalLpn2;
extern OSViMode osViModePalLpf2;
extern OSViMode osViModePalLan2;
extern OSViMode osViModePalLaf2;
extern OSViMode osViModePalHpn1;
extern OSViMode osViModePalHpf1;
extern OSViMode osViModePalHan1;
extern OSViMode osViModePalHaf1;
extern OSViMode osViModePalHpn2;
extern OSViMode osViModePalHpf2;

extern OSViMode osViModeMpalLpn1;
extern OSViMode osViModeMpalLpf1;
extern OSViMode osViModeMpalLan1;
extern OSViMode osViModeMpalLaf1;
extern OSViMode osViModeMpalLpn2;
extern OSViMode osViModeMpalLpf2;
extern OSViMode osViModeMpalLan2;
extern OSViMode osViModeMpalLaf2;
extern OSViMode osViModeMpalHpn1;
extern OSViMode osViModeMpalHpf1;
extern OSViMode osViModeMpalHan1;
extern OSViMode osViModeMpalHaf1;
extern OSViMode osViModeMpalHpn2;
extern OSViMode osViModeMpalHpf2;

extern s32 osRomType;
extern void *osRomBase;
extern s32 osTvType;
extern s32 osResetType;
extern s32 osCicId;
extern s32 osVersion;
extern u32 osMemSize;
extern s32 osAppNMIBuffer[];

extern OSIntMask __OSGlobalIntMask;
extern OSPiHandle *__osPiTable;
extern OSPiHandle *__osDiskHandle;
# 787 "include/PR/os.h"
extern void osCreateThread(OSThread *, OSId, void (*)(void *),
           void *, void *, OSPri);
extern void osDestroyThread(OSThread *);
extern void osYieldThread(void);
extern void osStartThread(OSThread *);
extern void osStopThread(OSThread *);
extern OSId osGetThreadId(OSThread *);
extern void osSetThreadPri(OSThread *, OSPri);
extern OSPri osGetThreadPri(OSThread *);



extern void osCreateMesgQueue(OSMesgQueue *, OSMesg *, s32);
extern s32 osSendMesg(OSMesgQueue *, OSMesg, s32);
extern s32 osJamMesg(OSMesgQueue *, OSMesg, s32);
extern s32 osRecvMesg(OSMesgQueue *, OSMesg *, s32);



extern void osSetEventMesg(OSEvent, OSMesgQueue *, OSMesg);



extern OSIntMask osGetIntMask(void);
extern OSIntMask osSetIntMask(OSIntMask);



extern void osInitRdb(u8 *sendBuf, u32 sendSize);



extern void osInvalDCache(void *, s32);
extern void osInvalICache(void *, s32);
extern void osWritebackDCache(void *, s32);
extern void osWritebackDCacheAll(void);






extern void osMapTLB(s32, OSPageMask, void *, u32, u32, s32);
extern void osMapTLBRdb(void);
extern void osUnmapTLB(s32);
extern void osUnmapTLBAll(void);
extern void osSetTLBASID(s32);



extern u32 osVirtualToPhysical(void *);
extern void * osPhysicalToVirtual(u32);
# 849 "include/PR/os.h"
extern u32 osAiGetStatus(void);
extern u32 osAiGetLength(void);
extern s32 osAiSetFrequency(u32);
extern s32 osAiSetNextBuffer(void *, u32);


extern u32 osDpGetStatus(void);
extern void osDpSetStatus(u32);
extern void osDpGetCounters(u32 *);
extern s32 osDpSetNextBuffer(void *, u64);


extern u32 osPiGetStatus(void);
extern s32 osPiGetDeviceType(void);
extern s32 osPiRawWriteIo(u32, u32);
extern s32 osPiRawReadIo(u32, u32 *);
extern s32 osPiRawStartDma(s32, u32, void *, u32);
extern s32 osPiWriteIo(u32, u32);
extern s32 osPiReadIo(u32, u32 *);
extern s32 osPiStartDma(OSIoMesg *, s32, s32, u32, void *, u32,
         OSMesgQueue *);
extern void osCreatePiManager(OSPri, OSMesgQueue *, OSMesg *, s32);


extern u32 osViGetStatus(void);
extern u32 osViGetCurrentMode(void);
extern u32 osViGetCurrentLine(void);
extern u32 osViGetCurrentField(void);
extern void *osViGetCurrentFramebuffer(void);
extern void *osViGetNextFramebuffer(void);
extern void osViSetXScale(f32);
extern void osViSetYScale(f32);
extern void osViSetSpecialFeatures(u32);
extern void osViSetMode(OSViMode *);
extern void osViSetEvent(OSMesgQueue *, OSMesg, u32);
extern void osViSwapBuffer(void *);
extern void osViBlack(u8);
extern void osViFade(u8, u16);
extern void osViRepeatLine(u8);
extern void osCreateViManager(OSPri);



extern OSTime osGetTime(void);
extern void osSetTime(OSTime);
extern int osSetTimer(OSTimer *, OSTime, OSTime,
       OSMesgQueue *, OSMesg);
extern int osStopTimer(OSTimer *);



extern s32 osContInit(OSMesgQueue *, u8 *, OSContStatus *);
extern s32 osContReset(OSMesgQueue *, OSContStatus *);
extern s32 osContStartQuery(OSMesgQueue *);
extern s32 osContStartReadData(OSMesgQueue *);

extern s32 osContSetCh(u8);

extern void osContGetQuery(OSContStatus *);
extern void osContGetReadData(OSContPad *);



extern s32 osPfsInitPak(OSMesgQueue *, OSPfs *, int);
extern s32 osPfsRepairId(OSPfs *);
extern s32 osPfsInit(OSMesgQueue *, OSPfs *, int);
extern s32 osPfsReFormat(OSPfs *, OSMesgQueue *, int);
extern s32 osPfsChecker(OSPfs *);
extern s32 osPfsAllocateFile(OSPfs *, u16, u32, u8 *, u8 *, int, s32 *);
extern s32 osPfsFindFile(OSPfs *, u16, u32, u8 *, u8 *, s32 *);
extern s32 osPfsDeleteFile(OSPfs *, u16, u32, u8 *, u8 *);
extern s32 osPfsReadWriteFile(OSPfs *, s32, u8, int, int, u8 *);
extern s32 osPfsFileState(OSPfs *, s32, OSPfsState *);
extern s32 osPfsGetLabel(OSPfs *, u8 *, int *);
extern s32 osPfsSetLabel(OSPfs *, u8 *);
extern s32 osPfsIsPlug(OSMesgQueue *, u8 *);
extern s32 osPfsFreeBlocks(OSPfs *, s32 *);
extern s32 osPfsNumFiles(OSPfs *, s32 *, s32 *);



extern s32 osEepromProbe(OSMesgQueue *);
extern s32 osEepromRead(OSMesgQueue *, u8, u8 *);
extern s32 osEepromWrite(OSMesgQueue *, u8, u8 *);
extern s32 osEepromLongRead(OSMesgQueue *, u8, u8 *, int);
extern s32 osEepromLongWrite(OSMesgQueue *, u8, u8 *, int);



extern s32 osMotorInit(OSMesgQueue *, OSPfs *, int);
extern s32 osMotorStop(OSPfs *);
extern s32 osMotorStart(OSPfs *);



extern OSPiHandle *osCartRomInit(void);
extern OSPiHandle *osLeoDiskInit(void);
extern OSPiHandle *osDriveRomInit(void);

extern s32 osEPiDeviceType(OSPiHandle *, OSPiInfo *);
extern s32 osEPiRawWriteIo(OSPiHandle *, u32 , u32);
extern s32 osEPiRawReadIo(OSPiHandle *, u32 , u32 *);
extern s32 osEPiRawStartDma(OSPiHandle *, s32 , u32 , void *, u32 );
extern s32 osEPiWriteIo(OSPiHandle *, u32 , u32 );
extern s32 osEPiReadIo(OSPiHandle *, u32 , u32 *);
extern s32 osEPiStartDma(OSPiHandle *, OSIoMesg *, s32);
extern s32 osEPiLinkHandle(OSPiHandle *);



extern void osProfileInit(OSProf *, u32 profcnt);
extern void osProfileStart(u32);
extern void osProfileFlush(void);
extern void osProfileStop(void);



extern s32 osTestHost(void);
extern void osReadHost(void *, u32);
extern void osWriteHost(void *, u32);
extern void osAckRamromRead(void);
extern void osAckRamromWrite(void);




extern void bcopy(const void *, void *, int);
extern int bcmp(const void *, const void *, int);
extern void bzero(void *, int);



extern void osInitialize(void);
extern u32 osGetCount(void);
extern void osExit(void);
extern u32 osGetMemSize(void);



extern int sprintf(char *s, const char *fmt, ...);
extern void osSyncPrintf(const char *fmt, ...);
extern void osAsyncPrintf(const char *fmt, ...);
extern int osSyncGetChars(char *buf);
extern int osAsyncGetChars(char *buf);
# 28 "include/ultra64.h" 2
# 1 "include/PR/region.h" 1
# 87 "include/PR/region.h"
typedef struct _Region_s {
 u8 *r_startBufferAddress;
 u8 *r_endAddress;
 s32 r_bufferSize;
 s32 r_bufferCount;

 u16 r_freeList;

 u16 r_alignSize;
} OSRegion;
# 109 "include/PR/region.h"
extern void *osCreateRegion(void *, u32, u32, u32);
extern void *osMalloc(void *);
extern void osFree(void *, void *);
extern s32 osGetRegionBufCount(void *);
extern s32 osGetRegionBufSize(void *);
# 29 "include/ultra64.h" 2
# 1 "include/PR/rmon.h" 1
# 32 "include/PR/rmon.h"
extern void rmonMain( void * );
extern void rmonPrintf( const char *, ... );
# 30 "include/ultra64.h" 2
# 1 "include/PR/sptask.h" 1
# 74 "include/PR/sptask.h"
typedef struct {
 u32 type;
 u32 flags;

 u64 *ucode_boot;
 u32 ucode_boot_size;

 u64 *ucode;
 u32 ucode_size;

 u64 *ucode_data;
 u32 ucode_data_size;

 u64 *dram_stack;
 u32 dram_stack_size;

 u64 *output_buff;
 u64 *output_buff_size;

 u64 *data_ptr;
 u32 data_size;

 u64 *yield_data_ptr;
 u32 yield_data_size;

} OSTask_t;

typedef union {
    OSTask_t t;
    long long int force_structure_alignment;
} OSTask;

typedef u32 OSYieldResult;
# 189 "include/PR/sptask.h"
extern void osSpTaskLoad(OSTask *tp);
extern void osSpTaskStartGo(OSTask *tp);

extern void osSpTaskYield(void);
extern OSYieldResult osSpTaskYielded(OSTask *tp);
# 31 "include/ultra64.h" 2
# 1 "include/PR/mbi.h" 1
# 63 "include/PR/mbi.h"
# 1 "include/PR/gbi.h" 1
# 1070 "include/PR/gbi.h"
typedef struct {
 short ob[3];
 unsigned short flag;
 short tc[2];
 unsigned char cn[4];
} Vtx_t;




typedef struct {
 short ob[3];
 unsigned short flag;
 short tc[2];
 signed char n[3];
 unsigned char a;
} Vtx_tn;

typedef union {
    Vtx_t v;
    Vtx_tn n;
    long long int force_structure_alignment;
} Vtx;





typedef struct {
  void *SourceImagePointer;
  void *TlutPointer;
  short Stride;
  short SubImageWidth;
  short SubImageHeight;
  char SourceImageType;
  char SourceImageBitSize;
  short SourceImageOffsetS;
  short SourceImageOffsetT;



  char dummy[4];

} uSprite_t;

typedef union {
  uSprite_t s;


  long long int force_structure_allignment[3];
} uSprite;




typedef struct {
 unsigned char flag;
 unsigned char v[3];
} Tri;






typedef long Mtx_t[4][4];

typedef union {
    Mtx_t m;
    long long int force_structure_alignment;
} Mtx;
# 1176 "include/PR/gbi.h"
typedef struct {
 short vscale[4];
 short vtrans[4];

} Vp_t;

typedef union {
    Vp_t vp;
    long long int force_structure_alignment;
} Vp;
# 1342 "include/PR/gbi.h"
typedef struct {
  unsigned char col[3];
  char pad1;
  unsigned char colc[3];
  char pad2;
  signed char dir[3];
  char pad3;
} Light_t;

typedef struct {
  unsigned char col[3];
  char pad1;
  unsigned char colc[3];
  char pad2;
} Ambient_t;

typedef struct {
  int x1,y1,x2,y2;
} Hilite_t;

typedef union {
    Light_t l;
    long long int force_structure_alignment[2];
} Light;

typedef union {
    Ambient_t l;
    long long int force_structure_alignment[1];
} Ambient;

typedef struct {
    Ambient a;
    Light l[7];
} Lightsn;

typedef struct {
    Ambient a;
    Light l[1];
} Lights0;

typedef struct {
    Ambient a;
    Light l[1];
} Lights1;

typedef struct {
    Ambient a;
    Light l[2];
} Lights2;

typedef struct {
    Ambient a;
    Light l[3];
} Lights3;

typedef struct {
    Ambient a;
    Light l[4];
} Lights4;

typedef struct {
    Ambient a;
    Light l[5];
} Lights5;

typedef struct {
    Ambient a;
    Light l[6];
} Lights6;

typedef struct {
    Ambient a;
    Light l[7];
} Lights7;

typedef struct {
    Light l[2];
} LookAt;

typedef union {
    Hilite_t h;
    long int force_structure_alignment[4];
} Hilite;
# 1484 "include/PR/gbi.h"
typedef struct {
 int cmd:8;
 unsigned int par:8;
 unsigned int len:16;
 unsigned int addr;
} Gdma;




typedef struct {
  int cmd:8;
  int pad:24;
  Tri tri;
} Gtri;

typedef struct {
  int cmd:8;
  int pad1:24;
  int pad2:24;
  unsigned char param:8;
} Gpopmtx;
# 1516 "include/PR/gbi.h"
typedef struct {
  int cmd:8;
  int pad0:8;
  int mw_index:8;
  int number:8;
  int pad1:8;
  int base:24;
} Gsegment;

typedef struct {
  int cmd:8;
  int pad0:8;
  int sft:8;
  int len:8;
  unsigned int data:32;
} GsetothermodeL;

typedef struct {
  int cmd:8;
  int pad0:8;
  int sft:8;
  int len:8;
  unsigned int data:32;
} GsetothermodeH;

typedef struct {
  unsigned char cmd;
  unsigned char lodscale;
  unsigned char tile;
  unsigned char on;
  unsigned short s;
  unsigned short t;
} Gtexture;

typedef struct {
  int cmd:8;
  int pad:24;
  Tri line;
} Gline3D;

typedef struct {
  int cmd:8;
  int pad1:24;
  short int pad2;
  short int scale;
} Gperspnorm;





typedef struct {
                int cmd:8;
                unsigned int fmt:3;
                unsigned int siz:2;
                unsigned int pad:7;
                unsigned int wd:12;
                unsigned int dram;
} Gsetimg;

typedef struct {
  int cmd:8;
  unsigned int muxs0:24;
  unsigned int muxs1:32;
} Gsetcombine;

typedef struct {
  int cmd:8;
  unsigned char pad;
  unsigned char prim_min_level;
  unsigned char prim_level;
  unsigned long color;
} Gsetcolor;

typedef struct {
  int cmd:8;
  int x0:10;
  int x0frac:2;
  int y0:10;
  int y0frac:2;
  unsigned int pad:8;
  int x1:10;
  int x1frac:2;
  int y1:10;
  int y1frac:2;
} Gfillrect;

typedef struct {
  int cmd:8;
  unsigned int fmt:3;
  unsigned int siz:2;
  unsigned int pad0:1;
  unsigned int line:9;
  unsigned int tmem:9;
  unsigned int pad1:5;
  unsigned int tile:3;
  unsigned int palette:4;
  unsigned int ct:1;
  unsigned int mt:1;
  unsigned int maskt:4;
  unsigned int shiftt:4;
  unsigned int cs:1;
  unsigned int ms:1;
  unsigned int masks:4;
  unsigned int shifts:4;
} Gsettile;

typedef struct {
  int cmd:8;
  unsigned int sl:12;
  unsigned int tl:12;
  int pad:5;
  unsigned int tile:3;
  unsigned int sh:12;
  unsigned int th:12;
} Gloadtile;

typedef Gloadtile Gloadblock;

typedef Gloadtile Gsettilesize;

typedef Gloadtile Gloadtlut;

typedef struct {
  unsigned int cmd:8;
  unsigned int xl:12;
  unsigned int yl:12;
  unsigned int pad1:5;
  unsigned int tile:3;
  unsigned int xh:12;
  unsigned int yh:12;
  unsigned int s:16;
  unsigned int t:16;
  unsigned int dsdx:16;
  unsigned int dtdy:16;
} Gtexrect;







typedef struct {
    unsigned long w0;
    unsigned long w1;
    unsigned long w2;
    unsigned long w3;
} TexRect;




typedef struct {
 unsigned int w0;
 unsigned int w1;
} Gwords;





typedef union {
 Gwords words;
 Gdma dma;
 Gtri tri;
 Gline3D line;
 Gpopmtx popmtx;
 Gsegment segment;
 GsetothermodeH setothermodeH;
 GsetothermodeL setothermodeL;
 Gtexture texture;
 Gperspnorm perspnorm;
 Gsetimg setimg;
 Gsetcombine setcombine;
 Gsetcolor setcolor;
 Gfillrect fillrect;
 Gsettile settile;
 Gloadtile loadtile;
 Gsettilesize settilesize;
 Gloadtlut loadtlut;
        long long int force_structure_alignment;
} Gfx;
# 64 "include/PR/mbi.h" 2







# 1 "include/PR/abi.h" 1
# 78 "include/PR/abi.h"
typedef struct {
   unsigned int cmd:8;
 unsigned int flags:8;
 unsigned int gain:16;
 unsigned int addr;
} Aadpcm;

typedef struct {
   unsigned int cmd:8;
 unsigned int flags:8;
 unsigned int gain:16;
 unsigned int addr;
} Apolef;

typedef struct {
   unsigned int cmd:8;
 unsigned int flags:8;
 unsigned int pad1:16;
 unsigned int addr;
} Aenvelope;

typedef struct {
   unsigned int cmd:8;
 unsigned int pad1:8;
 unsigned int dmem:16;
 unsigned int pad2:16;
 unsigned int count:16;
} Aclearbuff;

typedef struct {
   unsigned int cmd:8;
 unsigned int pad1:8;
 unsigned int pad2:16;
 unsigned int inL:16;
        unsigned int inR:16;
} Ainterleave;

typedef struct {
   unsigned int cmd:8;
 unsigned int pad1:24;
 unsigned int addr;
} Aloadbuff;

typedef struct {
   unsigned int cmd:8;
 unsigned int flags:8;
 unsigned int pad1:16;
 unsigned int addr;
} Aenvmixer;

typedef struct {
   unsigned int cmd:8;
 unsigned int flags:8;
 unsigned int gain:16;
 unsigned int dmemi:16;
 unsigned int dmemo:16;
} Amixer;

typedef struct {
   unsigned int cmd:8;
 unsigned int flags:8;
 unsigned int dmem2:16;
 unsigned int addr;
} Apan;

typedef struct {
   unsigned int cmd:8;
 unsigned int flags:8;
 unsigned int pitch:16;
 unsigned int addr;
} Aresample;

typedef struct {
   unsigned int cmd:8;
 unsigned int flags:8;
 unsigned int pad1:16;
 unsigned int addr;
} Areverb;

typedef struct {
   unsigned int cmd:8;
 unsigned int pad1:24;
 unsigned int addr;
} Asavebuff;

typedef struct {
   unsigned int cmd:8;
 unsigned int pad1:24;
 unsigned int pad2:2;
 unsigned int number:4;
 unsigned int base:24;
} Asegment;

typedef struct {
   unsigned int cmd:8;
 unsigned int flags:8;
 unsigned int dmemin:16;
 unsigned int dmemout:16;
 unsigned int count:16;
} Asetbuff;

typedef struct {
   unsigned int cmd:8;
 unsigned int flags:8;
 unsigned int vol:16;
 unsigned int voltgt:16;
 unsigned int volrate:16;
} Asetvol;

typedef struct {
    unsigned int cmd:8;
    unsigned int pad1:8;
    unsigned int dmemin:16;
    unsigned int dmemout:16;
    unsigned int count:16;
} Admemmove;

typedef struct {
    unsigned int cmd:8;
    unsigned int pad1:8;
    unsigned int count:16;
    unsigned int addr;
} Aloadadpcm;

typedef struct {
    unsigned int cmd:8;
    unsigned int pad1:8;
    unsigned int pad2:16;
    unsigned int addr;
} Asetloop;





typedef struct {
 unsigned int w0;
 unsigned int w1;
} Awords;

typedef union {
 Awords words;
 Aadpcm adpcm;
        Apolef polef;
 Aclearbuff clearbuff;
 Aenvelope envelope;
        Ainterleave interleave;
 Aloadbuff loadbuff;
        Aenvmixer envmixer;
 Aresample resample;
 Areverb reverb;
 Asavebuff savebuff;
 Asegment segment;
 Asetbuff setbuff;
 Asetvol setvol;
        Admemmove dmemmove;
        Aloadadpcm loadadpcm;
        Amixer mixer;
        Asetloop setloop;
        long long int force_union_align;
} Acmd;






typedef short ADPCM_STATE[16];




typedef short POLEF_STATE[4];




typedef short RESAMPLE_STATE[16];
# 266 "include/PR/abi.h"
typedef short ENVMIX_STATE[40];
# 72 "include/PR/mbi.h" 2
# 32 "include/ultra64.h" 2
# 1 "include/PR/libaudio.h" 1
# 70 "include/PR/libaudio.h"
typedef s32 ALMicroTime;
typedef u8 ALPan;
# 113 "include/PR/libaudio.h"
typedef struct ALLink_s {
    struct ALLink_s *next;
    struct ALLink_s *prev;
} ALLink;

void alUnlink(ALLink *element);
void alLink(ALLink *element, ALLink *after);

typedef s32 (*ALDMAproc)(s32 addr, s32 len, void *state);
typedef ALDMAproc (*ALDMANew)(void *state);

void alCopy(void *src, void *dest, s32 len);

typedef struct {
    u8 *base;
    u8 *cur;
    s32 len;
    s32 count;
} ALHeap;





void alHeapInit(ALHeap *hp, u8 *base, s32 len);
void *alHeapDBAlloc(u8 *file, s32 line, ALHeap *hp, s32 num, s32 size);
s32 alHeapCheck(ALHeap *hp);
# 158 "include/PR/libaudio.h"
typedef u8 ALFxId;
typedef void *ALFxRef;
# 168 "include/PR/libaudio.h"
enum {AL_ADPCM_WAVE = 0,
         AL_RAW16_WAVE};

typedef struct {
    s32 order;
    s32 npredictors;
    s16 book[1];
} ALADPCMBook;

typedef struct {
    u32 start;
    u32 end;
    u32 count;
    ADPCM_STATE state;
} ALADPCMloop;

typedef struct {
    u32 start;
    u32 end;
    u32 count;
} ALRawLoop;

typedef struct {
    ALMicroTime attackTime;
    ALMicroTime decayTime;
    ALMicroTime releaseTime;
    u8 attackVolume;
    u8 decayVolume;
} ALEnvelope;

typedef struct {
    u8 velocityMin;
    u8 velocityMax;
    u8 keyMin;
    u8 keyMax;
    u8 keyBase;
    s8 detune;
} ALKeyMap;

typedef struct {
    ALADPCMloop *loop;
    ALADPCMBook *book;
} ALADPCMWaveInfo;

typedef struct {
    ALRawLoop *loop;
} ALRAWWaveInfo;

typedef struct ALWaveTable_s {
    u8 *base;
    s32 len;
    u8 type;
    u8 flags;
    union {
        ALADPCMWaveInfo adpcmWave;
        ALRAWWaveInfo rawWave;
    } waveInfo;
} ALWaveTable;

typedef struct ALSound_s {
    ALEnvelope *envelope;
    ALKeyMap *keyMap;
    ALWaveTable *wavetable;
    ALPan samplePan;
    u8 sampleVolume;
    u8 flags;
} ALSound;

typedef struct {
    u8 volume;
    ALPan pan;
    u8 priority;
    u8 flags;
    u8 tremType;
    u8 tremRate;
    u8 tremDepth;
    u8 tremDelay;
    u8 vibType;
    u8 vibRate;
    u8 vibDepth;
    u8 vibDelay;
    s16 bendRange;
    s16 soundCount;
    ALSound *soundArray[1];
} ALInstrument;

typedef struct ALBank_s {
    s16 instCount;
    u8 flags;
    u8 pad;
    s32 sampleRate;
    ALInstrument *percussion;
    ALInstrument *instArray[1];
} ALBank;

typedef struct {
    s16 revision;
    s16 bankCount;
    ALBank *bankArray[1];
} ALBankFile;

void alBnkfNew(ALBankFile *f, u8 *table);






typedef struct {
    u8 *offset;
    s32 len;
} ALSeqData;

typedef struct {
    s16 revision;
    s16 seqCount;
    ALSeqData seqArray[1];
} ALSeqFile;

void alSeqFileNew(ALSeqFile *f, u8 *base);




typedef ALMicroTime (*ALVoiceHandler)(void *);

typedef struct {
    s32 maxVVoices;
    s32 maxPVoices;
    s32 maxUpdates;
    s32 maxFXbusses;
    void *dmaproc;
    ALHeap *heap;
    s32 outputRate;
    ALFxId fxType;
    s32 *params;
} ALSynConfig;

typedef struct ALPlayer_s {
    struct ALPlayer_s *next;
    void *clientData;
    ALVoiceHandler handler;
    ALMicroTime callTime;
    s32 samplesLeft;
} ALPlayer;

typedef struct ALVoice_s {
    ALLink node;
    struct PVoice_s *pvoice;
    ALWaveTable *table;
    void *clientPrivate;
    s16 state;
    s16 priority;
    s16 fxBus;
    s16 unityPitch;
} ALVoice;

typedef struct ALVoiceConfig_s {
    s16 priority;
    s16 fxBus;
    u8 unityPitch;
} ALVoiceConfig;

typedef struct {
    ALPlayer *head;
    ALLink pFreeList;
    ALLink pAllocList;
    ALLink pLameList;
    s32 paramSamples;
    s32 curSamples;
    ALDMANew dma;
    ALHeap *heap;

    struct ALParam_s *paramList;

    struct ALMainBus_s *mainBus;
    struct ALAuxBus_s *auxBus;
    struct ALFilter_s *outputFilter;

    s32 numPVoices;
    s32 maxAuxBusses;
    s32 outputRate;
    s32 maxOutSamples;

} ALSynth;

void alSynNew(ALSynth *s, ALSynConfig *config);
void alSynDelete(ALSynth *s);

void alSynAddPlayer(ALSynth *s, ALPlayer *client);
void alSynRemovePlayer(ALSynth *s, ALPlayer *client);

s32 alSynAllocVoice(ALSynth *s, ALVoice *v, ALVoiceConfig *vc);
void alSynFreeVoice(ALSynth *s, ALVoice *voice);

void alSynStartVoice(ALSynth *s, ALVoice *voice, ALWaveTable *w);
void alSynStartVoiceParams(ALSynth *s, ALVoice *voice, ALWaveTable *w,
                              f32 pitch, s16 vol, ALPan pan, u8 fxmix,
                              ALMicroTime t);
void alSynStopVoice(ALSynth *s, ALVoice *voice);

void alSynSetVol(ALSynth *s, ALVoice *v, s16 vol, ALMicroTime delta);
void alSynSetPitch(ALSynth *s, ALVoice *voice, f32 ratio);
void alSynSetPan(ALSynth *s, ALVoice *voice, ALPan pan);
void alSynSetFXMix(ALSynth *s, ALVoice *voice, u8 fxmix);
void alSynSetPriority(ALSynth *s, ALVoice *voice, s16 priority);
s16 alSynGetPriority(ALSynth *s, ALVoice *voice);

ALFxRef *alSynAllocFX(ALSynth *s, s16 bus, ALSynConfig *c, ALHeap *hp);
ALFxRef alSynGetFXRef(ALSynth *s, s16 bus, s16 index);
void alSynFreeFX(ALSynth *s, ALFxRef *fx);
void alSynSetFXParam(ALSynth *s, ALFxRef fx, s16 paramID, void *param);




typedef struct {
    ALSynth drvr;
} ALGlobals;

extern ALGlobals *alGlobals;

void alInit(ALGlobals *glob, ALSynConfig *c);
void alClose(ALGlobals *glob);

Acmd *alAudioFrame(Acmd *cmdList, s32 *cmdLen, s16 *outBuf, s32 outLen);
# 413 "include/PR/libaudio.h"
enum ALMsg {
    AL_SEQ_REF_EVT,
    AL_SEQ_MIDI_EVT,
    AL_SEQP_MIDI_EVT,
    AL_TEMPO_EVT,
    AL_SEQ_END_EVT,
    AL_NOTE_END_EVT,
    AL_SEQP_ENV_EVT,
    AL_SEQP_META_EVT,
    AL_SEQP_PROG_EVT,
    AL_SEQP_API_EVT,
    AL_SEQP_VOL_EVT,
    AL_SEQP_LOOP_EVT,
    AL_SEQP_PRIORITY_EVT,
    AL_SEQP_SEQ_EVT,
    AL_SEQP_BANK_EVT,
    AL_SEQP_PLAY_EVT,
    AL_SEQP_STOP_EVT,
    AL_SEQP_STOPPING_EVT,
    AL_TRACK_END,
    AL_CSP_LOOPSTART,
    AL_CSP_LOOPEND,
    AL_CSP_NOTEOFF_EVT,
    AL_TREM_OSC_EVT,
    AL_VIB_OSC_EVT
};






enum AL_MIDIstatus {

    AL_MIDI_ChannelMask = 0x0F,
    AL_MIDI_StatusMask = 0xF0,


    AL_MIDI_ChannelVoice = 0x80,
    AL_MIDI_NoteOff = 0x80,
    AL_MIDI_NoteOn = 0x90,
    AL_MIDI_PolyKeyPressure = 0xA0,
    AL_MIDI_ControlChange = 0xB0,
    AL_MIDI_ChannelModeSelect = 0xB0,
    AL_MIDI_ProgramChange = 0xC0,
    AL_MIDI_ChannelPressure = 0xD0,
    AL_MIDI_PitchBendChange = 0xE0,


    AL_MIDI_SysEx = 0xF0,


    AL_MIDI_SystemCommon = 0xF1,
    AL_MIDI_TimeCodeQuarterFrame = 0xF1,
    AL_MIDI_SongPositionPointer = 0xF2,
    AL_MIDI_SongSelect = 0xF3,
    AL_MIDI_Undefined1 = 0xF4,
    AL_MIDI_Undefined2 = 0xF5,
    AL_MIDI_TuneRequest = 0xF6,
    AL_MIDI_EOX = 0xF7,


    AL_MIDI_SystemRealTime = 0xF8,
    AL_MIDI_TimingClock = 0xF8,
    AL_MIDI_Undefined3 = 0xF9,
    AL_MIDI_Start = 0xFA,
    AL_MIDI_Continue = 0xFB,
    AL_MIDI_Stop = 0xFC,
    AL_MIDI_Undefined4 = 0xFD,
    AL_MIDI_ActiveSensing = 0xFE,
    AL_MIDI_SystemReset = 0xFF,
    AL_MIDI_Meta = 0xFF
};

enum AL_MIDIctrl {
    AL_MIDI_VOLUME_CTRL = 0x07,
    AL_MIDI_PAN_CTRL = 0x0A,
    AL_MIDI_PRIORITY_CTRL = 0x10,
    AL_MIDI_FX_CTRL_0 = 0x14,
    AL_MIDI_FX_CTRL_1 = 0x15,
    AL_MIDI_FX_CTRL_2 = 0x16,
    AL_MIDI_FX_CTRL_3 = 0x17,
    AL_MIDI_FX_CTRL_4 = 0x18,
    AL_MIDI_FX_CTRL_5 = 0x19,
    AL_MIDI_FX_CTRL_6 = 0x1A,
    AL_MIDI_FX_CTRL_7 = 0x1B,
    AL_MIDI_FX_CTRL_8 = 0x1C,
    AL_MIDI_FX_CTRL_9 = 0x1D,
    AL_MIDI_SUSTAIN_CTRL = 0x40,
    AL_MIDI_FX1_CTRL = 0x5B,
    AL_MIDI_FX3_CTRL = 0x5D
};

enum AL_MIDImeta {
    AL_MIDI_META_TEMPO = 0x51,
    AL_MIDI_META_EOT = 0x2f
};
# 520 "include/PR/libaudio.h"
typedef struct {
    u8 *curPtr;
    s32 lastTicks;
    s32 curTicks;
    s16 lastStatus;
} ALSeqMarker;

typedef struct {
    s32 ticks;
    u8 status;
    u8 byte1;
    u8 byte2;
    u32 duration;
} ALMIDIEvent;

typedef struct {
    s32 ticks;
    u8 status;
    u8 type;
    u8 len;
    u8 byte1;
    u8 byte2;
    u8 byte3;
} ALTempoEvent;

typedef struct {
    s32 ticks;
    u8 status;
    u8 type;
    u8 len;
} ALEndEvent;

typedef struct {
    struct ALVoice_s *voice;
} ALNoteEvent;

typedef struct {
    struct ALVoice_s *voice;
    ALMicroTime delta;
    u8 vol;
} ALVolumeEvent;

typedef struct {
    s16 vol;
} ALSeqpVolEvent;

typedef struct {
    ALSeqMarker *start;
    ALSeqMarker *end;
    s32 count;
} ALSeqpLoopEvent;

typedef struct {
    u8 chan;
    u8 priority;
} ALSeqpPriorityEvent;

typedef struct {
    void *seq;
} ALSeqpSeqEvent;

typedef struct {
    ALBank *bank;
} ALSeqpBankEvent;

typedef struct {
    struct ALVoiceState_s *vs;
    void *oscState;
    u8 chan;
} ALOscEvent;

typedef struct {
    s16 type;
    union {
        ALMIDIEvent midi;
        ALTempoEvent tempo;
        ALEndEvent end;
        ALNoteEvent note;
        ALVolumeEvent vol;
        ALSeqpLoopEvent loop;
        ALSeqpVolEvent spvol;
 ALSeqpPriorityEvent sppriority;
 ALSeqpSeqEvent spseq;
 ALSeqpBankEvent spbank;
        ALOscEvent osc;
    } msg;
} ALEvent;

typedef struct {
    ALLink node;
    ALMicroTime delta;
    ALEvent evt;
} ALEventListItem;

typedef struct {
    ALLink freeList;
    ALLink allocList;
    s32 eventCount;
} ALEventQueue;

void alEvtqNew(ALEventQueue *evtq, ALEventListItem *items,
                          s32 itemCount);
ALMicroTime alEvtqNextEvent(ALEventQueue *evtq, ALEvent *evt);
void alEvtqPostEvent(ALEventQueue *evtq, ALEvent *evt,
                                ALMicroTime delta);
void alEvtqFlush(ALEventQueue *evtq);
void alEvtqFlushType(ALEventQueue *evtq, s16 type);
# 636 "include/PR/libaudio.h"
typedef struct ALVoiceState_s {
    struct ALVoiceState_s *next;
    ALVoice voice;
    ALSound *sound;
    ALMicroTime envEndTime;
    f32 pitch;
    f32 vibrato;
    u8 envGain;
    u8 channel;
    u8 key;
    u8 velocity;
    u8 envPhase;
    u8 phase;
    u8 tremelo;
    u8 flags;

} ALVoiceState;

typedef struct {
    ALInstrument *instrument;
    s16 bendRange;
    ALFxId fxId;
    ALPan pan;
    u8 priority;
    u8 vol;
    u8 fxmix;
    u8 sustain;
    f32 pitchBend;
} ALChanState;

typedef struct ALSeq_s {
    u8 *base;
    u8 *trackStart;
    u8 *curPtr;
    s32 lastTicks;
    s32 len;
    f32 qnpt;
    s16 division;
    s16 lastStatus;
} ALSeq;

typedef struct {
    u32 trackOffset[16];
    u32 division;
} ALCMidiHdr;

typedef struct ALCSeq_s {
    ALCMidiHdr *base;
    u32 validTracks;
    f32 qnpt;
    u32 lastTicks;
    u32 lastDeltaTicks;
    u32 deltaFlag;
    u8 *curLoc[16];


    u8 *curBUPtr[16];
    u8 curBULen[16];
    u8 lastStatus[16];
    u32 evtDeltaTicks[16];
} ALCSeq;

typedef struct {
    u32 validTracks;
    s32 lastTicks;
    u32 lastDeltaTicks;
    u8 *curLoc[16];
    u8 *curBUPtr[16];
    u8 curBULen[16];
    u8 lastStatus[16];
    u32 evtDeltaTicks[16];
} ALCSeqMarker;





typedef struct {
    s32 maxVoices;
    s32 maxEvents;
    u8 maxChannels;
    u8 debugFlags;
    ALHeap *heap;
    void *initOsc;
    void *updateOsc;
    void *stopOsc;
} ALSeqpConfig;

typedef ALMicroTime (*ALOscInit)(void **oscState,f32 *initVal, u8 oscType,
                                   u8 oscRate, u8 oscDepth, u8 oscDelay);
typedef ALMicroTime (*ALOscUpdate)(void *oscState, f32 *updateVal);
typedef void (*ALOscStop)(void *oscState);

typedef struct {
    ALPlayer node;
    ALSynth *drvr;
    ALSeq *target;
    ALMicroTime curTime;
    ALBank *bank;
    s32 uspt;
    s32 nextDelta;
    s32 state;
    u16 chanMask;
    s16 vol;
    u8 maxChannels;
    u8 debugFlags;
    ALEvent nextEvent;
    ALEventQueue evtq;
    ALMicroTime frameTime;
    ALChanState *chanState;
    ALVoiceState *vAllocHead;
    ALVoiceState *vAllocTail;
    ALVoiceState *vFreeList;
    ALOscInit initOsc;
    ALOscUpdate updateOsc;
    ALOscStop stopOsc;
    ALSeqMarker *loopStart;
    ALSeqMarker *loopEnd;
    s32 loopCount;
} ALSeqPlayer;

typedef struct {
    ALPlayer node;
    ALSynth *drvr;
    ALCSeq *target;
    ALMicroTime curTime;
    ALBank *bank;
    s32 uspt;
    s32 nextDelta;
    s32 state;
    u16 chanMask;
    s16 vol;
    u8 maxChannels;
    u8 debugFlags;
    ALEvent nextEvent;
    ALEventQueue evtq;
    ALMicroTime frameTime;
    ALChanState *chanState;
    ALVoiceState *vAllocHead;
    ALVoiceState *vAllocTail;
    ALVoiceState *vFreeList;
    ALOscInit initOsc;
    ALOscUpdate updateOsc;
    ALOscStop stopOsc;
} ALCSPlayer;




void alSeqNew(ALSeq *seq, u8 *ptr, s32 len);
void alSeqNextEvent(ALSeq *seq, ALEvent *event);
s32 alSeqGetTicks(ALSeq *seq);
f32 alSeqTicksToSec(ALSeq *seq, s32 ticks, u32 tempo);
u32 alSeqSecToTicks(ALSeq *seq, f32 sec, u32 tempo);
void alSeqNewMarker(ALSeq *seq, ALSeqMarker *m, u32 ticks);
void alSeqSetLoc(ALSeq *seq, ALSeqMarker *marker);
void alSeqGetLoc(ALSeq *seq, ALSeqMarker *marker);



void alCSeqNew(ALCSeq *seq, u8 *ptr);
void alCSeqNextEvent(ALCSeq *seq,ALEvent *evt);
s32 alCSeqGetTicks(ALCSeq *seq);
f32 alCSeqTicksToSec(ALCSeq *seq, s32 ticks, u32 tempo);
u32 alCSeqSecToTicks(ALCSeq *seq, f32 sec, u32 tempo);
void alCSeqNewMarker(ALCSeq *seq, ALCSeqMarker *m, u32 ticks);
void alCSeqSetLoc(ALCSeq *seq, ALCSeqMarker *marker);
void alCSeqGetLoc(ALCSeq *seq, ALCSeqMarker *marker);




f32 alCents2Ratio(s32 cents);

void alSeqpNew(ALSeqPlayer *seqp, ALSeqpConfig *config);
void alSeqpDelete(ALSeqPlayer *seqp);
void alSeqpSetSeq(ALSeqPlayer *seqp, ALSeq *seq);
ALSeq *alSeqpGetSeq(ALSeqPlayer *seqp);
void alSeqpPlay(ALSeqPlayer *seqp);
void alSeqpStop(ALSeqPlayer *seqp);
s32 alSeqpGetState(ALSeqPlayer *seqp);
void alSeqpSetBank(ALSeqPlayer *seqp, ALBank *b);
void alSeqpSetTempo(ALSeqPlayer *seqp, s32 tempo);
s32 alSeqpGetTempo(ALSeqPlayer *seqp);
s16 alSeqpGetVol(ALSeqPlayer *seqp);
void alSeqpSetVol(ALSeqPlayer *seqp, s16 vol);
void alSeqpLoop(ALSeqPlayer *seqp, ALSeqMarker *start, ALSeqMarker *end, s32 count);

void alSeqpSetChlProgram(ALSeqPlayer *seqp, u8 chan, u8 prog);
s32 alSeqpGetChlProgram(ALSeqPlayer *seqp, u8 chan);
void alSeqpSetChlFXMix(ALSeqPlayer *seqp, u8 chan, u8 fxmix);
u8 alSeqpGetChlFXMix(ALSeqPlayer *seqp, u8 chan);
void alSeqpSetChlVol(ALSeqPlayer *seqp, u8 chan, u8 vol);
u8 alSeqpGetChlVol(ALSeqPlayer *seqp, u8 chan);
void alSeqpSetChlPan(ALSeqPlayer *seqp, u8 chan, ALPan pan);
ALPan alSeqpGetChlPan(ALSeqPlayer *seqp, u8 chan);
void alSeqpSetChlPriority(ALSeqPlayer *seqp, u8 chan, u8 priority);
u8 alSeqpGetChlPriority(ALSeqPlayer *seqp, u8 chan);
void alSeqpSendMidi(ALSeqPlayer *seqp, s32 ticks, u8 status, u8 byte1, u8 byte2);
# 852 "include/PR/libaudio.h"
void alCSPNew(ALCSPlayer *seqp, ALSeqpConfig *config);
void alCSPDelete(ALCSPlayer *seqp);
void alCSPSetSeq(ALCSPlayer *seqp, ALCSeq *seq);
ALCSeq *alCSPGetSeq(ALCSPlayer *seqp);
void alCSPPlay(ALCSPlayer *seqp);
void alCSPStop(ALCSPlayer *seqp);
s32 alCSPGetState(ALCSPlayer *seqp);
void alCSPSetBank(ALCSPlayer *seqp, ALBank *b);
void alCSPSetTempo(ALCSPlayer *seqp, s32 tempo);
s32 alCSPGetTempo(ALCSPlayer *seqp);
s16 alCSPGetVol(ALCSPlayer *seqp);
void alCSPSetVol(ALCSPlayer *seqp, s16 vol);

void alCSPSetChlProgram(ALCSPlayer *seqp, u8 chan, u8 prog);
s32 alCSPGetChlProgram(ALCSPlayer *seqp, u8 chan);
void alCSPSetChlFXMix(ALCSPlayer *seqp, u8 chan, u8 fxmix);
u8 alCSPGetChlFXMix(ALCSPlayer *seqp, u8 chan);
void alCSPSetChlPan(ALCSPlayer *seqp, u8 chan, ALPan pan);
ALPan alCSPGetChlPan(ALCSPlayer *seqp, u8 chan);
void alCSPSetChlVol(ALCSPlayer *seqp, u8 chan, u8 vol);
u8 alCSPGetChlVol(ALCSPlayer *seqp, u8 chan);
void alCSPSetChlPriority(ALCSPlayer *seqp, u8 chan, u8 priority);
u8 alCSPGetChlPriority(ALCSPlayer *seqp, u8 chan);
void alCSPSendMidi(ALCSPlayer *seqp, s32 ticks, u8 status,
                       u8 byte1, u8 byte2);
# 895 "include/PR/libaudio.h"
typedef struct {
    s32 maxSounds;
    s32 maxEvents;
    ALHeap *heap;
} ALSndpConfig;

typedef struct {
    ALPlayer node;
    ALEventQueue evtq;
    ALEvent nextEvent;
    ALSynth *drvr;
    s32 target;
    void *sndState;
    s32 maxSounds;
    ALMicroTime frameTime;
    ALMicroTime nextDelta;
    ALMicroTime curTime;
} ALSndPlayer;

typedef s16 ALSndId;

void alSndpNew(ALSndPlayer *sndp, ALSndpConfig *c);
void alSndpDelete(ALSndPlayer *sndp);

ALSndId alSndpAllocate(ALSndPlayer *sndp, ALSound *sound);
void alSndpDeallocate(ALSndPlayer *sndp, ALSndId id);

void alSndpSetSound(ALSndPlayer *sndp, ALSndId id);
ALSndId alSndpGetSound(ALSndPlayer *sndp);

void alSndpPlay(ALSndPlayer *sndp);
void alSndpPlayAt(ALSndPlayer *sndp, ALMicroTime delta);
void alSndpStop(ALSndPlayer *sndp);

void alSndpSetVol(ALSndPlayer *sndp, s16 vol);
void alSndpSetPitch(ALSndPlayer *sndp, f32 pitch);
void alSndpSetPan(ALSndPlayer *sndp, ALPan pan);
void alSndpSetPriority(ALSndPlayer *sndp, ALSndId id, u8 priority);

void alSndpSetFXMix(ALSndPlayer *sndp, u8 mix);
s32 alSndpGetState(ALSndPlayer *sndp);


void alParseAbiCL(Acmd *cmdList, u32 nbytes);
# 33 "include/ultra64.h" 2
# 1 "include/PR/gu.h" 1
# 50 "include/PR/gu.h"
typedef struct {
 unsigned char *base;
 int fmt, siz;
 int xsize, ysize;
 int lsize;

 int addr;
 int w, h;
 int s, t;
} Image;

typedef struct {
 float col[3];
 float pos[3];
 float a1, a2;
} PositionalLight;






extern int guLoadTextureBlockMipMap(Gfx **glist, unsigned char *tbuf, Image *im,
  unsigned char startTile, unsigned char pal, unsigned char cms,
  unsigned char cmt, unsigned char masks, unsigned char maskt,
  unsigned char shifts, unsigned char shiftt, unsigned char cfs,
  unsigned char cft);

extern int guGetDPLoadTextureTileSz (int ult, int lrt);
extern void guDPLoadTextureTile (Gfx *glistp, void *timg,
   int texl_fmt, int texl_size,
   int img_width, int img_height,
   int uls, int ult, int lrs, int lrt,
   int palette,
   int cms, int cmt,
   int masks, int maskt,
   int shifts, int shiftt);
# 96 "include/PR/gu.h"
extern void guMtxIdent(Mtx *m);
extern void guMtxIdentF(float mf[4][4]);
extern void guOrtho(Mtx *m, float l, float r, float b, float t,
      float n, float f, float scale);
extern void guOrthoF(float mf[4][4], float l, float r, float b, float t,
       float n, float f, float scale);
extern void guFrustum(Mtx *m, float l, float r, float b, float t,
        float n, float f, float scale);
extern void guFrustumF(float mf[4][4], float l, float r, float b, float t,
         float n, float f, float scale);
extern void guPerspective(Mtx *m, u16 *perspNorm, float fovy,
     float aspect, float near, float far, float scale);
extern void guPerspectiveF(float mf[4][4], u16 *perspNorm, float fovy,
      float aspect, float near, float far, float scale);
extern void guLookAt(Mtx *m,
   float xEye, float yEye, float zEye,
   float xAt, float yAt, float zAt,
   float xUp, float yUp, float zUp);
extern void guLookAtF(float mf[4][4], float xEye, float yEye, float zEye,
        float xAt, float yAt, float zAt,
        float xUp, float yUp, float zUp);
extern void guLookAtReflect(Mtx *m, LookAt *l,
   float xEye, float yEye, float zEye,
   float xAt, float yAt, float zAt,
   float xUp, float yUp, float zUp);
extern void guLookAtReflectF(float mf[4][4], LookAt *l,
        float xEye, float yEye, float zEye,
        float xAt, float yAt, float zAt,
        float xUp, float yUp, float zUp);
extern void guLookAtHilite(Mtx *m, LookAt *l, Hilite *h,
                float xEye, float yEye, float zEye,
                float xAt, float yAt, float zAt,
                float xUp, float yUp, float zUp,
                float xl1, float yl1, float zl1,
                float xl2, float yl2, float zl2,
  int twidth, int theight);
extern void guLookAtHiliteF(float mf[4][4], LookAt *l, Hilite *h,
  float xEye, float yEye, float zEye,
  float xAt, float yAt, float zAt,
  float xUp, float yUp, float zUp,
  float xl1, float yl1, float zl1,
  float xl2, float yl2, float zl2,
  int twidth, int theight);
extern void guLookAtStereo(Mtx *m,
   float xEye, float yEye, float zEye,
   float xAt, float yAt, float zAt,
   float xUp, float yUp, float zUp,
   float eyedist);
extern void guLookAtStereoF(float mf[4][4],
         float xEye, float yEye, float zEye,
         float xAt, float yAt, float zAt,
         float xUp, float yUp, float zUp,
   float eyedist);
extern void guRotate(Mtx *m, float a, float x, float y, float z);
extern void guRotateF(float mf[4][4], float a, float x, float y, float z);
extern void guRotateRPY(Mtx *m, float r, float p, float y);
extern void guRotateRPYF(float mf[4][4], float r, float p, float h);
extern void guAlign(Mtx *m, float a, float x, float y, float z);
extern void guAlignF(float mf[4][4], float a, float x, float y, float z);
extern void guScale(Mtx *m, float x, float y, float z);
extern void guScaleF(float mf[4][4], float x, float y, float z);
extern void guTranslate(Mtx *m, float x, float y, float z);
extern void guTranslateF(float mf[4][4], float x, float y, float z);
extern void guPosition(Mtx *m, float r, float p, float h, float s,
         float x, float y, float z);
extern void guPositionF(float mf[4][4], float r, float p, float h, float s,
   float x, float y, float z);
extern void guMtxF2L(float mf[4][4], Mtx *m);
extern void guMtxL2F(float mf[4][4], Mtx *m);
extern void guMtxCatF(float m[4][4], float n[4][4], float r[4][4]);
extern void guMtxCatL(Mtx *m, Mtx *n, Mtx *res);
extern void guMtxXFMF(float mf[4][4], float x, float y, float z,
        float *ox, float *oy, float *oz);
extern void guMtxXFML(Mtx *m, float x, float y, float z,
        float *ox, float *oy, float *oz);


extern void guNormalize(float *x, float *y, float *z);


void guPosLight(PositionalLight *pl, Light *l,
                float xOb, float yOb, float zOb);
void guPosLightHilite(PositionalLight *pl1, PositionalLight *pl2,
                Light *l1, Light *l2,
                LookAt *l, Hilite *h,
                float xEye, float yEye, float zEye,
                float xOb, float yOb, float zOb,
                float xUp, float yUp, float zUp,
                int twidth, int theight);
extern int guRandom(void);




extern float sinf(float angle);
extern float cosf(float angle);
extern signed short sins (unsigned short angle);
extern signed short coss (unsigned short angle);
extern float sqrtf(float value);
# 207 "include/PR/gu.h"
extern void guParseRdpDL(u64 *rdp_dl, u64 nbytes, u8 flags);
extern void guParseString(char *StringPointer, u64 nbytes);
# 220 "include/PR/gu.h"
extern void
guBlinkRdpDL(u64 *rdp_dl_in, u64 nbytes_in,
             u64 *rdp_dl_out, u64 *nbytes_out,
             u32 x, u32 y, u32 radius,
             u8 red, u8 green, u8 blue,
             u8 flags);
# 238 "include/PR/gu.h"
extern void guParseGbiDL(u64 *gbi_dl, u32 nbytes, u8 flags);
extern void guDumpGbiDL(OSTask *tp,u8 flags);
# 248 "include/PR/gu.h"
typedef struct {
    int dataSize;
    int dlType;
    int flags;
    u32 paddr;
} guDLPrintCB;

void guSprite2DInit(uSprite *SpritePointer,
      void *SourceImagePointer,
      void *TlutPointer,
      int Stride,
      int SubImageWidth,
      int SubImageHeight,
      int SourceImageType,
      int SourceImageBitSize,
      int SourceImageOffsetS,
      int SourceImageOffsetT);
# 34 "include/ultra64.h" 2

# 1 "include/PR/sp.h" 1
# 33 "include/PR/sp.h"
struct bitmap {
 s16 width;


 s16 width_img;


 s16 s;


 s16 t;

 void *buf;




 s16 actualHeight;

 s16 LUToffset;
};

typedef struct bitmap Bitmap;

struct sprite {
 s16 x,y;

 s16 width, height;

 f32 scalex, scaley;

 s16 expx, expy;

 u16 attr;
 s16 zdepth;

 u8 red;
 u8 green;
 u8 blue;
 u8 alpha;

 s16 startTLUT;
 s16 nTLUT;

 int *LUT;

 s16 istart;
 s16 istep;


 s16 nbitmaps;
 s16 ndisplist;

 s16 bmheight;
 s16 bmHreal;
 u8 bmfmt;
 u8 bmsiz;

 Bitmap *bitmap;

 Gfx *rsp_dl;

 Gfx *rsp_dl_next;

 s16 frac_s,
  frac_t;
};

typedef struct sprite Sprite;
# 162 "include/PR/sp.h"
void spSetAttribute (Sprite *sp, s32 attr);
void spClearAttribute (Sprite *sp, s32 attr);
void spMove (Sprite *sp, s32 x, s32 y);
void spScale (Sprite *sp, f32 sx, f32 sy);
void spSetZ (Sprite *sp, s32 z );
void spColor (Sprite *sp, u8 red, u8 green, u8 blue, u8 alpha);
Gfx *spDraw (Sprite *sp);
void spInit( Gfx **glistp );
void spScissor( s32 xmin, s32 xmax, s32 ymin, s32 ymax );
void spFinish( Gfx **glistp );
# 36 "include/ultra64.h" 2
# 1 "include/PR/ucode.h" 1
# 78 "include/PR/ucode.h"
extern long long int rspbootTextStart[], rspbootTextEnd[];


extern long long int gspFast3DTextStart[], gspFast3DTextEnd[];
extern long long int gspFast3DDataStart[], gspFast3DDataEnd[];


extern long long int gspFast3D_dramTextStart[], gspFast3D_dramTextEnd[];
extern long long int gspFast3D_dramDataStart[], gspFast3D_dramDataEnd[];


extern long long int gspFast3D_fifoTextStart[], gspFast3D_fifoTextEnd[];
extern long long int gspFast3D_fifoDataStart[], gspFast3D_fifoDataEnd[];


extern long long int gspF3DNoNTextStart[], gspF3DNoNTextEnd[];
extern long long int gspF3DNoNDataStart[], gspF3DNoNDataEnd[];


extern long long int gspF3DNoN_dramTextStart[];
extern long long int gspF3DNoN_dramTextEnd[];
extern long long int gspF3DNoN_dramDataStart[];
extern long long int gspF3DNoN_dramDataEnd[];


extern long long int gspF3DNoN_fifoTextStart[];
extern long long int gspF3DNoN_fifoTextEnd[];
extern long long int gspF3DNoN_fifoDataStart[];
extern long long int gspF3DNoN_fifoDataEnd[];


extern long long int gspLine3DTextStart[], gspLine3DTextEnd[];
extern long long int gspLine3DDataStart[], gspLine3DDataEnd[];


extern long long int gspLine3D_dramTextStart[], gspLine3D_dramTextEnd[];
extern long long int gspLine3D_dramDataStart[], gspLine3D_dramDataEnd[];


extern long long int gspLine3D_fifoTextStart[], gspLine3D_fifoTextEnd[];
extern long long int gspLine3D_fifoDataStart[], gspLine3D_fifoDataEnd[];


extern long long int gspSprite2DTextStart[], gspSprite2DTextEnd[];
extern long long int gspSprite2DDataStart[], gspSprite2DDataEnd[];


extern long long int gspSprite2D_dramTextStart[], gspSprite2D_dramTextEnd[];
extern long long int gspSprite2D_dramDataStart[], gspSprite2D_dramDataEnd[];


extern long long int gspSprite2D_fifoTextStart[], gspSprite2D_fifoTextEnd[];
extern long long int gspSprite2D_fifoDataStart[], gspSprite2D_fifoDataEnd[];


extern long long int aspMainTextStart[], aspMainTextEnd[];
extern long long int aspMainDataStart[], aspMainDataEnd[];



extern long long int gspF3DEX_fifoTextStart[], gspF3DEX_fifoTextEnd[];
extern long long int gspF3DEX_fifoDataStart[], gspF3DEX_fifoDataEnd[];
extern long long int gspF3DEX_NoN_fifoTextStart[], gspF3DEX_NoN_fifoTextEnd[];
extern long long int gspF3DEX_NoN_fifoDataStart[], gspF3DEX_NoN_fifoDataEnd[];

extern long long int gspF3DLX_fifoTextStart[], gspF3DLX_fifoTextEnd[];
extern long long int gspF3DLX_fifoDataStart[], gspF3DLX_fifoDataEnd[];
extern long long int gspF3DLX_NoN_fifoTextStart[], gspF3DLX_NoN_fifoTextEnd[];
extern long long int gspF3DLX_NoN_fifoDataStart[], gspF3DLX_NoN_fifoDataEnd[];
extern long long int gspF3DLX_Rej_fifoTextStart[], gspF3DLX_Rej_fifoTextEnd[];
extern long long int gspF3DLX_Rej_fifoDataStart[], gspF3DLX_Rej_fifoDataEnd[];

extern long long int gspF3DLP_Rej_fifoTextStart[], gspF3DLP_Rej_fifoTextEnd[];
extern long long int gspF3DLP_Rej_fifoDataStart[], gspF3DLP_Rej_fifoDataEnd[];
extern long long int gspL3DEX_fifoTextStart[], gspL3DEX_fifoTextEnd[];
extern long long int gspL3DEX_fifoDataStart[], gspL3DEX_fifoDataEnd[];



extern long long int gspF3DEX2_fifoTextStart[], gspF3DEX2_fifoTextEnd[];
extern long long int gspF3DEX2_fifoDataStart[], gspF3DEX2_fifoDataEnd[];
extern long long int gspF3DEX2_NoN_fifoTextStart[],gspF3DEX2_NoN_fifoTextEnd[];
extern long long int gspF3DEX2_NoN_fifoDataStart[],gspF3DEX2_NoN_fifoDataEnd[];

extern long long int gspF3DLX2_fifoTextStart[], gspF3DLX2_fifoTextEnd[];
extern long long int gspF3DLX2_fifoDataStart[], gspF3DLX2_fifoDataEnd[];
extern long long int gspF3DLX2_NoN_fifoTextStart[],gspF3DLX2_NoN_fifoTextEnd[];
extern long long int gspF3DLX2_NoN_fifoDataStart[],gspF3DLX2_NoN_fifoDataEnd[];
extern long long int gspF3DLX2_Rej_fifoTextStart[],gspF3DLX2_Rej_fifoTextEnd[];
extern long long int gspF3DLX2_Rej_fifoDataStart[],gspF3DLX2_Rej_fifoDataEnd[];

extern long long int gspF3DLP2_Rej_fifoTextStart[],gspF3DLP2_Rej_fifoTextEnd[];
extern long long int gspF3DLP2_Rej_fifoDataStart[],gspF3DLP2_Rej_fifoDataEnd[];
extern long long int gspL3DEX2_fifoTextStart[], gspL3DEX2_fifoTextEnd[];
extern long long int gspL3DEX2_fifoDataStart[], gspL3DEX2_fifoDataEnd[];
# 37 "include/ultra64.h" 2
# 1 "include/PR/ultraerror.h" 1
# 156 "include/PR/ultraerror.h"
typedef void (*OSErrorHandler)(s16, s16, ...);

OSErrorHandler osSetErrorHandler(OSErrorHandler);
# 38 "include/ultra64.h" 2
# 1 "include/PR/ultralog.h" 1
# 43 "include/PR/ultralog.h"
typedef struct {
    u32 magic;
    u32 len;
    u32 *base;
    s32 startCount;
    s32 writeOffset;
} OSLog;

typedef struct {
    u32 magic;
    u32 timeStamp;
    u16 argCount;
    u16 eventID;
} OSLogItem;

typedef struct {
    u32 magic;
    u32 version;
} OSLogFileHdr;

void osCreateLog(OSLog *log, u32 *base, s32 len);
void osLogEvent(OSLog *log, s16 code, s16 numArgs, ...);
void osFlushLog(OSLog *log);
u32 osLogFloat(f32);

extern void osDelay(int count);
# 39 "include/ultra64.h" 2
# 1 "include/PR/R4300.h" 1
# 40 "include/ultra64.h" 2
# 8 "include/common.h" 2
# 2 "src/main.c" 2

s32 func_800402D8(void);
void func_80040600(s32 arg0);
s32 func_80041FCC(s32, void*);
s32 func_80042330(s32);
void pifUnlock(void);
void func_800424C0(void);
void func_80042584(u8);
void func_8004267C(void);
void func_800426D4(s16 arg0);

typedef struct _80042100S {
    char name[4];
    struct _80042100S* next;
    struct _80042100S* prev;
    u8 pad[4];
} Struct80042100;

void func_80042100(Struct80042100* arg0, Struct80042100* arg1);

s32 D_800429C0;
s32 D_800429CC;

Struct80042100* D_80042A30;
Struct80042100* D_80042A34;
u32 D_80042A40;

s32* D_80042A48;
s32* D_80042A4C;
s32 D_80042A50;
s32 D_80042A54;

s32* D_80042A60;
s32* D_80042A64;
u8 * D_80042A6C;

s32* D_80042A7C;

s32 D_80042AA0;
s32 D_80042AA4;

s32 D_80042AC4;
s32 D_80042AC8;

extern u8 D_80042AD0[];




extern volatile u32 VI_CURRENT_REG;
extern volatile u32 PI_STATUS_REG;

extern volatile u32 SI_BASE14_REG;

void func_80040180(void) {
    s32 i;

    for (i = 0; i < 0x25800; i++) {
        ((s32 *)0x80300000)[i] = 0;
    }

    pifUnlock();
    func_80042100((void*)0x80180000, (void*)0x80200000);
    func_800402D8();
    func_80042584(0x35);

    for (i = 0; i < 0x3c; i++) {
        func_800424C0();
    }

    func_80042584(0x34);

    for (i = 0; i < 0x3c; i++) {
        func_800424C0();
    }

    func_80042584(0x33);
    func_80041FCC(0x80200400, &D_800429C0);
    func_80042584(0x32);
    func_80041FCC(0x80780800, &D_800429CC);
    func_80042584(0x31);

    for (i = 0; i < 0x3c; i++) {
        func_800424C0();
    }

    func_80042330(0x80200400);
}

u32 func_80040278(void) {
    u32 temp_s0;

    D_80042AA0 = 0x600000;
    func_80040600(0xB2000000);
    temp_s0 = * (u32*) 0xB2C00000;
    func_80040600(0xBE000000);
    D_80042AA0 = 0x400000;
    return temp_s0 == 0x80371240;
}

s32 func_800402D8(); asm ( "\t.text\r\n" "\t.set noat\r\n" "\t.set noreorder\r\n" "\t.global " "func_800402D8" "" "\r\n" "\t.ent " "func_800402D8" "" "\r\n" "\t.end " "func_800402D8" "" "\r\n" "\t.include \"asm/nonmatchings/""main""/""func_800402D8"".s\"\r\n" "\t.set reorder\r\n" "\t.set at\r\n" );;

s32 func_8004043C(); asm ( "\t.text\r\n" "\t.set noat\r\n" "\t.set noreorder\r\n" "\t.global " "func_8004043C" "" "\r\n" "\t.ent " "func_8004043C" "" "\r\n" "\t.end " "func_8004043C" "" "\r\n" "\t.include \"asm/nonmatchings/""main""/""func_8004043C"".s\"\r\n" "\t.set reorder\r\n" "\t.set at\r\n" );;

s32 func_800404FC(); asm ( "\t.text\r\n" "\t.set noat\r\n" "\t.set noreorder\r\n" "\t.global " "func_800404FC" "" "\r\n" "\t.ent " "func_800404FC" "" "\r\n" "\t.end " "func_800404FC" "" "\r\n" "\t.include \"asm/nonmatchings/""main""/""func_800404FC"".s\"\r\n" "\t.set reorder\r\n" "\t.set at\r\n" );;


asm (
    "lui        $3, (0x80040000 >> 16)\n"
    "sw         $16, 0x10($29)"
);

void wait_PI(void) {
    while (PI_STATUS_REG & 3);
}


asm ("lw         $31, 0x14($29)");

s32 func_80040580(s32 arg0) {
    s32* temp_s0;

    temp_s0 = (s32*)(D_80042AA4 | D_80042AA0 | arg0);
    wait_PI();
    return *temp_s0;
}

void func_800405BC(u32 arg0, u32 arg1) {
    s32 k = ((arg1 & 0xffff) << 16) | (arg1 & 0xffff);
    * (volatile s32 *) (D_80042AA4 | D_80042AA0 | arg0) = k;
    wait_PI();
}

void func_80040600(s32 arg0) {
    u32 temp_s0;

    temp_s0 = (arg0 & 0x0F000000) | 0x10000000;
    func_800405BC(0x400, temp_s0 >> 0x18);
    D_80042AA4 = temp_s0 | 0xB0000000;
}

void func_80040648(void) {
    func_800405BC(0x600, 0x7FF7FF);
}

void func_8004066C(s32 addr) {
    s32 mask;
    s32 bit;

    func_80040648();
    for (bit = 1; bit < 0x100; bit <<= 1) {
        mask = (addr & bit) ? 0x01000100 : 0;
        func_800405BC(0x800, mask);
        func_800405BC(0x800, mask | 0x02000200);
        func_800405BC(0x800, mask);
    } ;
}

s32 func_800406FC(); asm ( "\t.text\r\n" "\t.set noat\r\n" "\t.set noreorder\r\n" "\t.global " "func_800406FC" "" "\r\n" "\t.ent " "func_800406FC" "" "\r\n" "\t.end " "func_800406FC" "" "\r\n" "\t.include \"asm/nonmatchings/""main""/""func_800406FC"".s\"\r\n" "\t.set reorder\r\n" "\t.set at\r\n" );;

s32 func_800407BC(); asm ( "\t.text\r\n" "\t.set noat\r\n" "\t.set noreorder\r\n" "\t.global " "func_800407BC" "" "\r\n" "\t.ent " "func_800407BC" "" "\r\n" "\t.end " "func_800407BC" "" "\r\n" "\t.include \"asm/nonmatchings/""main""/""func_800407BC"".s\"\r\n" "\t.set reorder\r\n" "\t.set at\r\n" );;

s32 func_800407C8(); asm ( "\t.text\r\n" "\t.set noat\r\n" "\t.set noreorder\r\n" "\t.global " "func_800407C8" "" "\r\n" "\t.ent " "func_800407C8" "" "\r\n" "\t.end " "func_800407C8" "" "\r\n" "\t.include \"asm/nonmatchings/""main""/""func_800407C8"".s\"\r\n" "\t.set reorder\r\n" "\t.set at\r\n" );;

void func_80040884(void) {
    s32 var_s0;
    for (var_s0 = 0; var_s0 < 7; var_s0++) {
        func_800407C8(0);
    };
}

s32 func_800408BC(void) {
    D_80042A40 >>= 1;
    if (D_80042A40 == 0) {
        D_80042A54 = D_80042A6C[D_80042A50++];
        D_80042A40 = 0x80;
    }
    return (D_80042A54 & D_80042A40) != 0;
}

s32 func_80040918(); asm ( "\t.text\r\n" "\t.set noat\r\n" "\t.set noreorder\r\n" "\t.global " "func_80040918" "" "\r\n" "\t.ent " "func_80040918" "" "\r\n" "\t.end " "func_80040918" "" "\r\n" "\t.include \"asm/nonmatchings/""main""/""func_80040918"".s\"\r\n" "\t.set reorder\r\n" "\t.set at\r\n" );;

s32 func_8004096C(); asm ( "\t.text\r\n" "\t.set noat\r\n" "\t.set noreorder\r\n" "\t.global " "func_8004096C" "" "\r\n" "\t.ent " "func_8004096C" "" "\r\n" "\t.end " "func_8004096C" "" "\r\n" "\t.include \"asm/nonmatchings/""main""/""func_8004096C"".s\"\r\n" "\t.set reorder\r\n" "\t.set at\r\n" );;

s32 func_80040B6C(); asm ( "\t.text\r\n" "\t.set noat\r\n" "\t.set noreorder\r\n" "\t.global " "func_80040B6C" "" "\r\n" "\t.ent " "func_80040B6C" "" "\r\n" "\t.end " "func_80040B6C" "" "\r\n" "\t.include \"asm/nonmatchings/""main""/""func_80040B6C"".s\"\r\n" "\t.set reorder\r\n" "\t.set at\r\n" );;

void func_80040D1C(void) {
    int i, temp;

    D_80042A60[0x13A] = 0;
    for (i = 0x13A; i > 0; i--) {
        temp = i - 1;
        D_80042A4C[temp] = i;
        D_80042A48[i] = temp;
        D_80042A7C[i] = 1;
        D_80042A60[i-1] = D_80042A60[i] + 1;
    } ;
    D_80042A7C[0] = 0;
    D_80042A64[0x1000] = 0;
    for (i = 0x1000; i > 0; i--) {
        D_80042A64[i - 1] = D_80042A64[i] + 10000 / (i + 200);
    } ;
}

s32 func_80040DFC(); asm ( "\t.text\r\n" "\t.set noat\r\n" "\t.set noreorder\r\n" "\t.global " "func_80040DFC" "" "\r\n" "\t.ent " "func_80040DFC" "" "\r\n" "\t.end " "func_80040DFC" "" "\r\n" "\t.include \"asm/nonmatchings/""main""/""func_80040DFC"".s\"\r\n" "\t.set reorder\r\n" "\t.set at\r\n" );;

void func_80040F3C(void* arg0) {
    func_800407C8(arg0);
    while (D_80042AC8 > 0) {
        func_800407C8((void* ) (arg0 == 0));
        D_80042AC8--;
    };
}

s32 func_80040F90(); asm ( "\t.text\r\n" "\t.set noat\r\n" "\t.set noreorder\r\n" "\t.global " "func_80040F90" "" "\r\n" "\t.ent " "func_80040F90" "" "\r\n" "\t.end " "func_80040F90" "" "\r\n" "\t.include \"asm/nonmatchings/""main""/""func_80040F90"".s\"\r\n" "\t.set reorder\r\n" "\t.set at\r\n" );;

s32 func_80041148(); asm ( "\t.text\r\n" "\t.set noat\r\n" "\t.set noreorder\r\n" "\t.global " "func_80041148" "" "\r\n" "\t.ent " "func_80041148" "" "\r\n" "\t.end " "func_80041148" "" "\r\n" "\t.include \"asm/nonmatchings/""main""/""func_80041148"".s\"\r\n" "\t.set reorder\r\n" "\t.set at\r\n" );;

s32 func_800412DC(); asm ( "\t.text\r\n" "\t.set noat\r\n" "\t.set noreorder\r\n" "\t.global " "func_800412DC" "" "\r\n" "\t.ent " "func_800412DC" "" "\r\n" "\t.end " "func_800412DC" "" "\r\n" "\t.include \"asm/nonmatchings/""main""/""func_800412DC"".s\"\r\n" "\t.set reorder\r\n" "\t.set at\r\n" );;

s32 func_8004132C(); asm ( "\t.text\r\n" "\t.set noat\r\n" "\t.set noreorder\r\n" "\t.global " "func_8004132C" "" "\r\n" "\t.ent " "func_8004132C" "" "\r\n" "\t.end " "func_8004132C" "" "\r\n" "\t.include \"asm/nonmatchings/""main""/""func_8004132C"".s\"\r\n" "\t.set reorder\r\n" "\t.set at\r\n" );;

s32 func_8004137C(); asm ( "\t.text\r\n" "\t.set noat\r\n" "\t.set noreorder\r\n" "\t.global " "func_8004137C" "" "\r\n" "\t.ent " "func_8004137C" "" "\r\n" "\t.end " "func_8004137C" "" "\r\n" "\t.include \"asm/nonmatchings/""main""/""func_8004137C"".s\"\r\n" "\t.set reorder\r\n" "\t.set at\r\n" );;

void func_800413CC(void) {
    s32 var_s0;
    for (var_s0 = 0; var_s0 < 0x11; var_s0++) {
        D_80042AC4 = (D_80042AC4 * 2) + func_800408BC();
    };
}

s32 func_80041418(); asm ( "\t.text\r\n" "\t.set noat\r\n" "\t.set noreorder\r\n" "\t.global " "func_80041418" "" "\r\n" "\t.ent " "func_80041418" "" "\r\n" "\t.end " "func_80041418" "" "\r\n" "\t.include \"asm/nonmatchings/""main""/""func_80041418"".s\"\r\n" "\t.set reorder\r\n" "\t.set at\r\n" );;

s32 func_8004160C(); asm ( "\t.text\r\n" "\t.set noat\r\n" "\t.set noreorder\r\n" "\t.global " "func_8004160C" "" "\r\n" "\t.ent " "func_8004160C" "" "\r\n" "\t.end " "func_8004160C" "" "\r\n" "\t.include \"asm/nonmatchings/""main""/""func_8004160C"".s\"\r\n" "\t.set reorder\r\n" "\t.set at\r\n" );;

s32 func_800417E0(); asm ( "\t.text\r\n" "\t.set noat\r\n" "\t.set noreorder\r\n" "\t.global " "func_800417E0" "" "\r\n" "\t.ent " "func_800417E0" "" "\r\n" "\t.end " "func_800417E0" "" "\r\n" "\t.include \"asm/nonmatchings/""main""/""func_800417E0"".s\"\r\n" "\t.set reorder\r\n" "\t.set at\r\n" );;

s32 func_80041C58(); asm ( "\t.text\r\n" "\t.set noat\r\n" "\t.set noreorder\r\n" "\t.global " "func_80041C58" "" "\r\n" "\t.ent " "func_80041C58" "" "\r\n" "\t.end " "func_80041C58" "" "\r\n" "\t.include \"asm/nonmatchings/""main""/""func_80041C58"".s\"\r\n" "\t.set reorder\r\n" "\t.set at\r\n" );;

s32 func_80041FCC(); asm ( "\t.text\r\n" "\t.set noat\r\n" "\t.set noreorder\r\n" "\t.global " "func_80041FCC" "" "\r\n" "\t.ent " "func_80041FCC" "" "\r\n" "\t.end " "func_80041FCC" "" "\r\n" "\t.include \"asm/nonmatchings/""main""/""func_80041FCC"".s\"\r\n" "\t.set reorder\r\n" "\t.set at\r\n" );;


asm(
    "addu       $2, $4, $0\n"
    "lui        $2, %hi(D_800429F0)\n"
    "lw         $2, %lo(D_800429F0)($2)"
    );

u8* func_80042060(u8* str, int c, size_t n) {
    u8* ptr = str;
    size_t count = 0;

    while (count < n) {
        *ptr = c;
        count++;
        ptr++;
    };

    return str;
}

Struct80042100* func_80042088(void) {
    return D_80042A30;
}

Struct80042100* func_80042098(Struct80042100* arg0) {
    return arg0->next;
}

Struct80042100* func_800420A4(Struct80042100* arg0) {
    return arg0->prev;
}

Struct80042100* func_800420B0(Struct80042100* cur) {
    while (func_80042098(cur) != 0) {
        cur = func_80042098(cur);
    }
    return cur;
}

u32 func_800420F0(Struct80042100* arg0) {
    return (u32)arg0->next - ((u32)arg0 + sizeof(Struct80042100));
}

void func_80042100(); asm ( "\t.text\r\n" "\t.set noat\r\n" "\t.set noreorder\r\n" "\t.global " "func_80042100" "" "\r\n" "\t.ent " "func_80042100" "" "\r\n" "\t.end " "func_80042100" "" "\r\n" "\t.include \"asm/nonmatchings/""main""/""func_80042100"".s\"\r\n" "\t.set reorder\r\n" "\t.set at\r\n" );;

s32 func_80042178(); asm ( "\t.text\r\n" "\t.set noat\r\n" "\t.set noreorder\r\n" "\t.global " "func_80042178" "" "\r\n" "\t.ent " "func_80042178" "" "\r\n" "\t.end " "func_80042178" "" "\r\n" "\t.include \"asm/nonmatchings/""main""/""func_80042178"".s\"\r\n" "\t.set reorder\r\n" "\t.set at\r\n" );;

s32 func_8004224C(Struct80042100* arg0) {
    Struct80042100* temp_a0;
    Struct80042100* temp_a1;
    Struct80042100* temp_a3;

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
    temp_a0 = (arg0 - 1)->next;
    temp_a1 = temp_a0->next;
    temp_a0->name[0] = '~';
    temp_a0->name[1] = '~';
    temp_a0->name[2] = '~';
    (arg0 - 1)->next = temp_a1;
    temp_a1->prev = temp_a3;
    return 0;
}

s32 func_800422BC(); asm ( "\t.text\r\n" "\t.set noat\r\n" "\t.set noreorder\r\n" "\t.global " "func_800422BC" "" "\r\n" "\t.ent " "func_800422BC" "" "\r\n" "\t.end " "func_800422BC" "" "\r\n" "\t.include \"asm/nonmatchings/""main""/""func_800422BC"".s\"\r\n" "\t.set reorder\r\n" "\t.set at\r\n" );;

void func_8004231C(void* arg0) {
    asm("cache      0x15, 0x0($4)");
}
# 332 "src/main.c"
asm(
    "func_80042328:\n"
        "jr $4"
    );

asm(
    "func_80042330:\n"
        "addiu      $29, $29, -0x14\n"
        "sw         $31, 0x10($29)\n"
        "jalr       $4\n"

        "lw         $31, 0x10($29)\n"
        "addiu      $29, $29, 0x14\n"
        "jr         $31"

    );


asm(
    "getStatus:\n"
        "mfc0       $2, $12\n"
        "jr         $31"
    );

asm(
    "setStatus:\n"
        "mtc0       $4, $12\n"
        "jr         $31"
    );

asm(
    "getCause:\n"
        "mfc0       $2, $13\n"
        "jr         $31"
    );

asm(
    "getEPC:\n"
        "mfc0       $2, $14\n"
        "jr         $31"
    );

s32 func_80042380(); asm ( "\t.text\r\n" "\t.set noat\r\n" "\t.set noreorder\r\n" "\t.global " "func_80042380" "" "\r\n" "\t.ent " "func_80042380" "" "\r\n" "\t.end " "func_80042380" "" "\r\n" "\t.include \"asm/nonmatchings/""main""/""func_80042380"".s\"\r\n" "\t.set reorder\r\n" "\t.set at\r\n" );;

s32 func_800423C8(); asm ( "\t.text\r\n" "\t.set noat\r\n" "\t.set noreorder\r\n" "\t.global " "func_800423C8" "" "\r\n" "\t.ent " "func_800423C8" "" "\r\n" "\t.end " "func_800423C8" "" "\r\n" "\t.include \"asm/nonmatchings/""main""/""func_800423C8"".s\"\r\n" "\t.set reorder\r\n" "\t.set at\r\n" );;

void waitPIReserved(void) {
    while (SI_BASE14_REG & 3);
}

u32 readPIRam(u32* arg0) {
    waitPIReserved();
    return *arg0;
}

void writePIRam(u32* arg0, u32 arg1) {
    waitPIReserved();
    *arg0 = arg1;
}

void pifUnlock(void) {
    writePIRam((u32*)0xBFC007FC, readPIRam((u32*)0xBFC007FC) | 8);
}
# 406 "src/main.c"
void func_800424B8(); asm ( "\t.text\r\n" "\t.set noat\r\n" "\t.set noreorder\r\n" "\t.global " "func_800424B8" "" "\r\n" "\t.ent " "func_800424B8" "" "\r\n" "\t.end " "func_800424B8" "" "\r\n" "\t.include \"asm/nonmatchings/""main""/""func_800424B8"".s\"\r\n" "\t.set reorder\r\n" "\t.set at\r\n" );;


void func_80042504(u32 arg0) {
    func_800405BC(0x800, arg0);
    func_8004267C();
}

s32 func_8004252C(u8 arg0) {
    s32 var_a1;
    s32 ret;

    var_a1 = 0;
    ret = 0xFF;

    while (D_80042AD0[var_a1] != 0xFF) {
        if (D_80042AD0[var_a1] == arg0) {
            ret = D_80042AD0[var_a1 + 1];
            break;
        }

        var_a1 += 2;
    }

    return ret;
}

void func_80042584(u8 arg0) {
    u32 var_s0;
    int var_s1;

    func_800426D4(0x600);
    var_s1 = func_8004252C(arg0) | 0x10000;
    while (var_s1 >= 0x101) {
        var_s0 = (var_s1 & 1) ? 0x02000200 : 0;
        func_80042504(var_s0);
        func_80042504(var_s0 | 0x04000400);
        func_80042504(var_s0);
        var_s1 = var_s1 / 2;
    };
    func_800426D4(0x200);
}

void func_80042628(u8 arg0) {
    func_80042584(arg0);
}





void func_80042644(); asm ( "\t.text\r\n" "\t.set noat\r\n" "\t.set noreorder\r\n" "\t.global " "func_80042644" "" "\r\n" "\t.ent " "func_80042644" "" "\r\n" "\t.end " "func_80042644" "" "\r\n" "\t.include \"asm/nonmatchings/""main""/""func_80042644"".s\"\r\n" "\t.set reorder\r\n" "\t.set at\r\n" );;
# 467 "src/main.c"
void func_8004264C(); asm ( "\t.text\r\n" "\t.set noat\r\n" "\t.set noreorder\r\n" "\t.global " "func_8004264C" "" "\r\n" "\t.ent " "func_8004264C" "" "\r\n" "\t.end " "func_8004264C" "" "\r\n" "\t.include \"asm/nonmatchings/""main""/""func_8004264C"".s\"\r\n" "\t.set reorder\r\n" "\t.set at\r\n" );;


void func_8004267C(void) {
    int var_v0 = 0xA0;
    while (--var_v0 >= 0);
}

void func_80042694(u8 arg0) {
    * (u32 *) 0xBE5FFFFC = (arg0 << 0x18) | (arg0 << 0x10) | (arg0 << 8) | arg0;
    func_8004267C();
}

void func_800426D4(s16 arg0) {
    func_800405BC(0x600, arg0);
}

s32 func_800426F8(void) {
    return func_80040580(0);
}



s32 func_80042714(s32 arg0) {
    s32 rv;
    u32 Status;

    Status = getStatus();
    setStatus(Status & ~0x00000001);
    while (!(func_800426F8() & 0x10));
    rv = func_800426F8() & 0xF;
    func_80042694((arg0 & 0xF) | 0x10);
    while ((func_800426F8() & 0x10));
    func_80042694(0);
    setStatus(Status);
    return rv;
}

s32 func_800427A4(s32 arg0) {
    return (func_80042714(arg0 >> 4) * 0x10) | func_80042714(arg0);
}

s32 func_800427E0(); asm ( "\t.text\r\n" "\t.set noat\r\n" "\t.set noreorder\r\n" "\t.global " "func_800427E0" "" "\r\n" "\t.ent " "func_800427E0" "" "\r\n" "\t.end " "func_800427E0" "" "\r\n" "\t.include \"asm/nonmatchings/""main""/""func_800427E0"".s\"\r\n" "\t.set reorder\r\n" "\t.set at\r\n" );;

s32 func_8004281C(); asm ( "\t.text\r\n" "\t.set noat\r\n" "\t.set noreorder\r\n" "\t.global " "func_8004281C" "" "\r\n" "\t.ent " "func_8004281C" "" "\r\n" "\t.end " "func_8004281C" "" "\r\n" "\t.include \"asm/nonmatchings/""main""/""func_8004281C"".s\"\r\n" "\t.set reorder\r\n" "\t.set at\r\n" );;

s32 func_80042858(); asm ( "\t.text\r\n" "\t.set noat\r\n" "\t.set noreorder\r\n" "\t.global " "func_80042858" "" "\r\n" "\t.ent " "func_80042858" "" "\r\n" "\t.end " "func_80042858" "" "\r\n" "\t.include \"asm/nonmatchings/""main""/""func_80042858"".s\"\r\n" "\t.set reorder\r\n" "\t.set at\r\n" );;

void func_800428E4(u8* arg0) {
    while (*arg0 != 0) {
        func_800427A4(*arg0);
        arg0++;
    }
}

s32 func_80042928(); asm ( "\t.text\r\n" "\t.set noat\r\n" "\t.set noreorder\r\n" "\t.global " "func_80042928" "" "\r\n" "\t.ent " "func_80042928" "" "\r\n" "\t.end " "func_80042928" "" "\r\n" "\t.include \"asm/nonmatchings/""main""/""func_80042928"".s\"\r\n" "\t.set reorder\r\n" "\t.set at\r\n" );;
