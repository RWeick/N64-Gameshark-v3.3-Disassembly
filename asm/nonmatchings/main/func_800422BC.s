# Handwritten function
.globl func_800422BC
.ent func_800422BC
func_800422BC:
  lui        $8, (0x80000000 >> 16)
.globl func_800422C0
func_800422C0:
  addiu      $29, $29, -0x1C
  sw         $8, 0x10($29)
  sw         $9, 0x14($29)
  sw         $1, 0x18($29)
  lui        $8, %hi(D_80003000)
  addiu      $9, $8, %lo(D_80003000)
  addiu      $9, $9, -0x10
.L800422DC:
  cache      0x01, 0x0($8)
  sltu       $1, $8, $9
  bnez       $1, .L800422DC
   addiu     $8, $8, (0x80000010 & 0xFFFF)
  lui        $8, %hi(D_80006000)
  addiu      $9, $8, %lo(D_80006000)
  addiu      $9, $9, -0x20
.L800422F8:
  cache      0x00, 0x0($8)
  sltu       $1, $8, $9
  bnez       $1, .L800422F8
   addiu     $8, $8, (0x80000020 & 0xFFFF)
  lw         $8, 0x10($29)
  lw         $9, 0x14($29)
  lw         $1, 0x18($29)
  jr         $31
   addiu     $29, $29, 0x1C
.end func_800422BC
