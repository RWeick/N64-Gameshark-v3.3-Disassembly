.globl func_800412DC
.ent func_800412DC
func_800412DC:
  lui        $3, %hi(D_80042AC8)
  lw         $2, %lo(D_80042AC8)($3)
  addiu      $29, $29, -0x18
  sw         $31, 0x10($29)
  addiu      $2, $2, 0x1
  sw         $2, %lo(D_80042AC8)($3)
  lui        $2, %hi(D_80042ABC)
  lw         $3, %lo(D_80042ABC)($2)
  addiu      $2, $0, 0x7FFF
  sltu       $2, $2, $3
  bnez       $2, .L80041310
   addiu     $4, $0, 0x1
  addu       $4, $0, $0
.L80041310:
  jal        func_80040F3C
   nop
  jal        func_80040884
   nop
  lw         $31, 0x10($29)
  jr         $31
   addiu     $29, $29, 0x18
.end func_800412DC
