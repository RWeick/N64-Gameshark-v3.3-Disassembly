# Handwritten function
.globl func_800423C8
.ent func_800423C8
func_800423C8:
  addiu      $29, $29, -0x1C
  sw         $31, 0x10($29)
  sw         $8, 0x14($29)
  sw         $9, 0x18($29)
  lui        $8, %hi(D_800423F4)
  addiu      $8, $8, %lo(D_800423F4)
  lui        $9, (0x40020000 >> 16)
  or         $9, $9, $4
  sw         $9, 0x0($8)
  jal        func_800422C0
   nop
D_800423F4:
  mfc0       $2, $0
  lw         $9, 0x18($29)
  lw         $8, 0x14($29)
  lw         $31, 0x10($29)
  addiu      $29, $29, 0x1C
  jr         $31
   nop
.end func_800423C8
