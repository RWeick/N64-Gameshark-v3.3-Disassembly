#ifndef __INCLUDE_ASM_H__
#define __INCLUDE_ASM_H__

#ifdef __SN64__

//#define NONMATCHING_SUFFIX "_NONMATCHING"
#define NONMATCHING_SUFFIX ""

#define STRINGIFY_(x) #x
#define STRINGIFY(x) STRINGIFY_(x)

#if !defined(SPLAT) && !defined(__CTX__) && !defined(KMC) && !defined(PERMUTER)
#ifndef INCLUDE_ASM
#define INCLUDE_ASM(TYPE, FOLDER, NAME, ARGS...) \
  TYPE NAME(ARGS);\
  \
  asm ( \
      "\t.text\r\n" \
      "\t.set noat\r\n" \
      "\t.set noreorder\r\n" \
      "\t.global " #NAME NONMATCHING_SUFFIX "\r\n" \
      "\t.ent " #NAME NONMATCHING_SUFFIX "\r\n" \
      "\t.end " #NAME NONMATCHING_SUFFIX "\r\n" \
      "\t.include \"asm/"STRINGIFY(VERSION)"/nonmatchings/"FOLDER"/"#NAME".s\"\r\n" \
      "\t.set reorder\r\n" \
      "\t.set at\r\n" \
  );
#endif
// __asm__( ".include \"include/macro.inc\"\n");
#else
#define INCLUDE_ASM(TYPE, FOLDER, NAME, ARGS...)
#endif

// TODO this with guards to prevent issues in context generation/etc
#define UNUSED

#else
    
#define STRINGIFY_(x) #x
#define STRINGIFY(x) STRINGIFY_(x)

#if !defined(SPLAT) && !defined(__CTX__) && !defined(PERMUTER)
#ifndef INCLUDE_ASM
#define INCLUDE_ASM_INTERNAL(TYPE, BASE_FOLDER, FOLDER, NAME, ARGS...) \
   __asm__( \
        ".section .text\n" \
        "\t.align\t2\n" \
        "\t.globl\t"#NAME"\n" \
        "\t.ent\t"#NAME"\n" \
        #NAME ":\n" \
        "\t.include \"asm/"STRINGIFY(VERSION)"/"BASE_FOLDER"/"FOLDER"/"#NAME".s\"\n" \
        "\t.set reorder\n" \
        "\t.set at\n" \
        "\t.end\t"#NAME \
    );
#define INCLUDE_ASM(TYPE, FOLDER, NAME, ARGS...) INCLUDE_ASM_INTERNAL(TYPE, "nonmatchings", FOLDER, NAME, ARGS)
#define INCLUDE_ASM_SHIFT(TYPE, FOLDER, NAME, ARGS...) INCLUDE_ASM_INTERNAL(TYPE, "shiftable", FOLDER, NAME, ARGS)
#endif
__asm__(".include \"../include/macro.inc\"\n");
#else
#define INCLUDE_ASM(TYPE, FOLDER, NAME, ARGS...)
#endif

#endif

#endif
