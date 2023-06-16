.globl func_800404FC
.ent func_800404FC
func_800404FC:
  addu       $7, $0, $0
  sll        $2, $5, 2
  addu       $2, $2, $5
  sll        $2, $2, 7
  sll        $4, $4, 1
  lui        $3, %hi(D_80300000)
  addu       $4, $4, $3
  addu       $5, $2, $4
.L8004051C:
  addu       $4, $0, $0
  addu       $3, $5, $0
.L80040524:
  lhu        $2, 0x0($6)
  addiu      $6, $6, 0x2
  addiu      $4, $4, 0x1
  sh         $2, %lo(D_80300000)($3)
  slti       $2, $4, 0x40
  bnez       $2, .L80040524
   addiu     $3, $3, %lo(D_80300002)
  addiu      $7, $7, 0x1
  slti       $2, $7, 0x30
  bnez       $2, .L8004051C
   addiu     $5, $5, %lo(D_80300280)
  jr         $31
   nop
.end func_800404FC
