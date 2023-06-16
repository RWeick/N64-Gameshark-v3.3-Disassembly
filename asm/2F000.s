.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

# Handwritten function
.globl func_8006E000
.ent func_8006E000
func_8006E000:
  addiu      $29, $29, -0x68
  sw         $8, 0x10($29)
  sw         $9, 0x14($29)
  sw         $10, 0x18($29)
  sw         $11, 0x1C($29)
  sw         $12, 0x20($29)
  sw         $13, 0x24($29)
  sw         $14, 0x28($29)
  sw         $15, 0x2C($29)
  sw         $24, 0x30($29)
  sw         $25, 0x34($29)
  sw         $4, 0x38($29)
  sw         $5, 0x3C($29)
  sw         $6, 0x40($29)
  sw         $7, 0x44($29)
  sw         $16, 0x48($29)
  sw         $17, 0x4C($29)
  sw         $18, 0x50($29)
  sw         $19, 0x54($29)
  sw         $20, 0x58($29)
  sw         $21, 0x5C($29)
  sw         $22, 0x60($29)
  sw         $23, 0x64($29)
  addu       $8, $29, $0
  addiu      $9, $8, 0x68
  lui        $10, (0x80000180 >> 16)
  ori        $10, $10, (0x80000180 & 0xFFFF)
.L8006E06C:
  lw         $11, 0x10($8)
  nop
  beq        $10, $11, .L8006E090
   nop
  addiu      $8, $8, 0x4
  bne        $8, $9, .L8006E06C
   nop
  bgez       $0, .L8006E09C
   nop
.L8006E090:
  lui        $10, (0xA0000120 >> 16)
  ori        $10, $10, (0xA0000120 & 0xFFFF)
  sw         $10, 0x10($8)
.L8006E09C:
  lw         $8, 0x10($29)
  lw         $9, 0x14($29)
  lw         $10, 0x18($29)
  lw         $11, 0x1C($29)
  lw         $12, 0x20($29)
  lw         $13, 0x24($29)
  lw         $14, 0x28($29)
  lw         $15, 0x2C($29)
  lw         $24, 0x30($29)
  lw         $25, 0x34($29)
  lw         $4, 0x38($29)
  lw         $5, 0x3C($29)
  lw         $6, 0x40($29)
  lw         $7, 0x44($29)
  lw         $16, 0x48($29)
  lw         $17, 0x4C($29)
  lw         $18, 0x50($29)
  lw         $19, 0x54($29)
  lw         $20, 0x58($29)
  lw         $21, 0x5C($29)
  lw         $22, 0x60($29)
  lw         $23, 0x64($29)
  addiu      $29, $29, 0x68
  eret
  nop
.end func_8006E000
