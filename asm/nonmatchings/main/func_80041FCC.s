.globl func_80041FCC
.ent func_80041FCC
func_80041FCC:
  addiu      $29, $29, -0x18
  sw         $31, 0x10($29)
  addu       $7, $5, $0
  lui        $2, %hi(D_80042B20)
  addiu      $5, $2, %lo(D_80042B20)
.L80041FE0:
  lbu        $3, 0x0($7)
  beqz       $3, .L80042040
   addiu     $6, $0, 0x1
.L80041FEC:
  addu       $2, $6, $5
  lbu        $2, 0x3($2)
  bne        $3, $2, .L80042008
   addu      $2, $7, $6
  lbu        $3, 0x0($2)
  bnez       $3, .L80041FEC
   addiu     $6, $6, 0x1
.L80042008:
  beqz       $3, .L80042040
   nop
  lbu        $3, 0x0($5)
  lbu        $2, 0x1($5)
  sll        $6, $3, 24
  sll        $2, $2, 16
  or         $6, $6, $2
  lbu        $3, 0x2($5)
  lbu        $2, 0x3($5)
  sll        $3, $3, 8
  or         $6, $6, $3
  or         $6, $6, $2
  j          .L80041FE0
   addu      $5, $5, $6
.L80042040:
  jal        func_80041C58
   addiu     $5, $5, 0x10
  lw         $31, 0x10($29)
  jr         $31
   addiu     $29, $29, 0x18
.end func_80041FCC
