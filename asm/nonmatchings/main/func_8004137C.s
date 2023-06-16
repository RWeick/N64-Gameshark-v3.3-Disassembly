.globl func_8004137C
.ent func_8004137C
func_8004137C:
  addiu      $5, $0, 0x1
  addiu      $6, $0, 0x1000
  lui        $2, %hi(D_80042A64)
  lw         $7, %lo(D_80042A64)($2)
  addu       $2, $5, $6
.L80041390:
  srl        $3, $2, 31
  addu       $2, $2, $3
  sra        $3, $2, 1
  sll        $2, $3, 2
  addu       $2, $2, $7
  lw         $2, 0x0($2)
  sltu       $2, $4, $2
  beql       $2, $0, .L800413B8
   addu      $6, $3, $0
  addiu      $5, $3, 0x1
.L800413B8:
  slt        $2, $5, $6
  bnez       $2, .L80041390
   addu      $2, $5, $6
  jr         $31
   addiu     $2, $5, -0x1
.end func_8004137C
