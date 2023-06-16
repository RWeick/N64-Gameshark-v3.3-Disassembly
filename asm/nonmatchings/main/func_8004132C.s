.globl func_8004132C
.ent func_8004132C
func_8004132C:
  addiu      $5, $0, 0x1
  addiu      $6, $0, 0x13A
  lui        $2, %hi(D_80042A60)
  lw         $7, %lo(D_80042A60)($2)
  addu       $2, $5, $6
.L80041340:
  srl        $3, $2, 31
  addu       $2, $2, $3
  sra        $3, $2, 1
  sll        $2, $3, 2
  addu       $2, $2, $7
  lw         $2, 0x0($2)
  sltu       $2, $4, $2
  beql       $2, $0, .L80041368
   addu      $6, $3, $0
  addiu      $5, $3, 0x1
.L80041368:
  slt        $2, $5, $6
  bnez       $2, .L80041340
   addu      $2, $5, $6
  jr         $31
   addu      $2, $5, $0
.end func_8004132C
