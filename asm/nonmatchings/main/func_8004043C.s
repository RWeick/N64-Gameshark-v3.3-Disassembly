.globl func_8004043C
.ent func_8004043C
func_8004043C:
  addiu      $29, $29, -0x20
  sw         $18, 0x18($29)
  lui        $18, %hi(D_80210000)
  addu       $4, $18, $0
  lui        $5, %hi(D_800429F0)
  addiu      $5, $5, %lo(D_800429F0)
  sw         $31, 0x1C($29)
  sw         $17, 0x14($29)
  jal        func_80041FCC
   sw        $16, 0x10($29)
  addu       $4, $18, $0
  addu       $17, $0, $0
  addu       $16, $0, $0
.L80040470:
  lhu        $2, %lo(D_80210000)($4)
  addiu      $16, $16, 0x1
  srl        $3, $2, 7
  andi       $2, $2, 0x7F
  sll        $2, $2, 9
  or         $3, $3, $2
  srl        $3, $3, 1
  andi       $3, $3, 0x7BDE
  sh         $3, %lo(D_80210000)($4)
  slti       $2, $16, 0x40
  bnez       $2, .L80040470
   addiu     $4, $4, %lo(D_80210000 + 0x2)
  addiu      $17, $17, 0x1
  slti       $2, $17, 0x30
  bnez       $2, .L80040470
   addu      $16, $0, $0
  addu       $17, $0, $0
.L800404B4:
  addu       $4, $16, $0
.L800404B8:
  addu       $5, $17, $0
  jal        func_800404FC
   addu      $6, $18, $0
  addiu      $16, $16, 0x40
  slti       $2, $16, 0x140
  bnez       $2, .L800404B8
   addu      $4, $16, $0
  addiu      $17, $17, 0x30
  slti       $2, $17, 0xF0
  bnez       $2, .L800404B4
   addu      $16, $0, $0
  lw         $31, 0x1C($29)
  lw         $18, 0x18($29)
  lw         $17, 0x14($29)
  lw         $16, 0x10($29)
  jr         $31
   addiu     $29, $29, 0x20
.end func_8004043C
