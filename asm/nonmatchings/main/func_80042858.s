.globl func_80042858
.ent func_80042858
func_80042858:
  addiu      $29, $29, -0x28
  sw         $16, 0x10($29)
  addu       $16, $0, $0
  sw         $19, 0x1C($29)
  addiu      $19, $0, 0xF
  sw         $18, 0x18($29)
  addiu      $18, $0, 0xE
  sw         $17, 0x14($29)
  addiu      $17, $0, 0xA
  sw         $31, 0x20($29)
.L80042880:
  jal        func_80042714
   addu      $4, $0, $0
  bne        $2, $19, .L800428C0
   nop
  jal        func_80042714
   addiu     $4, $0, 0xF
  bnez       $2, .L800428C0
   nop
  jal        func_80042714
   addiu     $4, $0, 0xA
  bne        $2, $18, .L800428C0
   nop
  jal        func_80042714
   addiu     $4, $0, 0xE
  beql       $2, $17, .L800428C0
   addiu     $16, $0, 0x1
.L800428C0:
  beqz       $16, .L80042880
   nop
  lw         $31, 0x20($29)
  lw         $19, 0x1C($29)
  lw         $18, 0x18($29)
  lw         $17, 0x14($29)
  lw         $16, 0x10($29)
  jr         $31
   addiu     $29, $29, 0x28
.end func_80042858
