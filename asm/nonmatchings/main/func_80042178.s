.globl func_80042178
.ent func_80042178
func_80042178:
  addiu      $29, $29, -0x20
  sw         $18, 0x18($29)
  addiu      $18, $4, 0xF
  addiu      $2, $0, -0x10
  and        $18, $18, $2
  sw         $31, 0x1C($29)
  sw         $17, 0x14($29)
  jal        func_80042088
   sw        $16, 0x10($29)
  addu       $17, $2, $0
  addiu      $16, $0, 0x46
.L800421A4:
  lbu        $2, 0x2($17)
  bne        $2, $16, .L800421C4
   nop
  jal        func_800420F0
   addu      $4, $17, $0
  slt        $2, $2, $18
  beql       $2, $0, .L800421E0
   addiu     $16, $17, 0x10
.L800421C4:
  jal        func_80042098
   addu      $4, $17, $0
  addu       $17, $2, $0
  bnez       $17, .L800421A4
   addiu     $2, $0, -0x1
  j          .L80042234
   nop
.L800421E0:
  addu       $4, $16, $0
  addiu      $2, $0, 0x52
  sb         $2, 0x2($17)
  addiu      $2, $18, 0x10
  addu       $2, $17, $2
  lw         $5, 0x4($17)
  addiu      $3, $0, 0x44
  sw         $2, 0x4($17)
  sb         $3, 0x0($2)
  addiu      $3, $0, 0x4D
  sb         $3, 0x1($2)
  addiu      $3, $0, 0x46
  addu       $6, $18, $0
  sw         $17, 0x8($2)
  sb         $3, 0x2($2)
  sw         $5, 0x4($2)
  addu       $17, $5, $0
  addu       $5, $0, $0
  jal        func_80042060
   sw        $2, 0x8($17)
  addu       $2, $16, $0
.L80042234:
  lw         $31, 0x1C($29)
  lw         $18, 0x18($29)
  lw         $17, 0x14($29)
  lw         $16, 0x10($29)
  jr         $31
   addiu     $29, $29, 0x20
.end func_80042178
