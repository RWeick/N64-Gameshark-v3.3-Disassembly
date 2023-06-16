.globl func_80042100
.ent func_80042100
func_80042100:
  addiu      $29, $29, -0x18
  lui        $2, %hi(D_80042A30)
  sw         $16, 0x10($29)
  lui        $16, %hi(D_80042A34)
  sw         $31, 0x14($29)
  sw         $4, %lo(D_80042A30)($2)
  jal        func_80042088
   sw        $5, %lo(D_80042A34)($16)
  addiu      $6, $0, 0x44
  addiu      $5, $0, 0x4D
  addiu      $3, $0, 0x46
  sb         $6, 0x0($2)
  sb         $5, 0x1($2)
  sb         $3, 0x2($2)
  lw         $3, %lo(D_80042A34)($16)
  addu       $4, $2, $0
  sw         $0, 0x8($2)
  addiu      $3, $3, -0x10
  sw         $3, 0x4($2)
  addu       $2, $3, $0
  addiu      $3, $0, 0x54
  sb         $6, 0x0($2)
  sb         $5, 0x1($2)
  sb         $3, 0x2($2)
  sw         $0, 0x4($2)
  sw         $4, 0x8($2)
  lw         $31, 0x14($29)
  lw         $16, 0x10($29)
  jr         $31
   addiu     $29, $29, 0x18
.end func_80042100
