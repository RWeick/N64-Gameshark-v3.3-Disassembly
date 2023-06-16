.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

# Handwritten function
.globl func_80200480
.ent func_80200480
func_80200480:
  lui        $8, (0xB0C01000 >> 16)
  ori        $8, $8, (0xB0C01000 & 0xFFFF)
  lui        $9, %hi(D_80040000)
  lui        $10, (0x3F000 >> 16)
  ori        $10, $10, (0x3F000 & 0xFFFF)
.L80200494:
  lw         $11, 0x0($8)
  addiu      $8, $8, 0x4
  sw         $11, %lo(D_80040000)($9)
  addiu      $10, $10, -0x4
  bnez       $10, .L80200494
   addiu     $9, $9, %lo(D_80040004)
  lui        $8, %hi(D_80003000)
  addiu      $9, $8, %lo(D_80003000)
  addiu      $9, $9, -0x10
.L802004B8:
  cache      0x01, 0x0($8)
  sltu       $1, $8, $9
  bnez       $1, .L802004B8
   addiu     $8, $8, (0x80000010 & 0xFFFF)
  lui        $8, %hi(D_80006000)
  addiu      $9, $8, %lo(D_80006000)
  addiu      $9, $9, -0x20
.L802004D4:
  cache      0x00, 0x0($8)
  sltu       $1, $8, $9
  bnez       $1, .L802004D4
   addiu     $8, $8, (0x80000020 & 0xFFFF)
  lui        $29, (0x803FFF00 >> 16)
  ori        $29, $29, (0x803FFF00 & 0xFFFF)
  j          func_80040180
   nop
.end func_80200480

.globl func_802004F4
.ent func_802004F4
func_802004F4:
  lui        $8, %hi(VI_STATUS_REG)
  lui        $9, (0x13002 >> 16)
  ori        $9, $9, (0x13002 & 0xFFFF)
  sw         $9, %lo(VI_STATUS_REG)($8)
  lui        $9, (0x80000000 >> 16)
  sw         $9, %lo(VI_DRAM_ADDR_REG)($8)
  addiu      $9, $0, 0x140
  sw         $9, %lo(VI_WIDTH_REG)($8)
  lui        $9, (0x3E52239 >> 16)
  ori        $9, $9, (0x3E52239 & 0xFFFF)
  sw         $9, %lo(VI_BURST_REG)($8)
  addiu      $9, $0, 0x20D
  sw         $9, %lo(VI_V_SYNC_REG)($8)
  addiu      $9, $0, 0xC15
  sw         $9, %lo(VI_H_SYNC_REG)($8)
  lui        $9, (0xC150C15 >> 16)
  ori        $9, $9, (0xC150C15 & 0xFFFF)
  sw         $9, %lo(VI_LEAP_REG)($8)
  lui        $9, (0x6C02EC >> 16)
  ori        $9, $9, (0x6C02EC & 0xFFFF)
  sw         $9, %lo(VI_H_START_REG)($8)
  lui        $9, (0x2501FF >> 16)
  ori        $9, $9, (0x2501FF & 0xFFFF)
  sw         $9, %lo(VI_V_START_REG)($8)
  lui        $9, (0xE0204 >> 16)
  ori        $9, $9, (0xE0204 & 0xFFFF)
  sw         $9, %lo(VI_V_BURST_REG)($8)
  addiu      $9, $0, 0x200
  sw         $9, %lo(VI_X_SCALE_REG)($8)
  addiu      $9, $0, 0x400
  sw         $9, %lo(VI_Y_SCALE_REG)($8)
.L80200570:
  bgez       $0, .L80200570
   nop
  nop
  nop
.end func_802004F4
