.globl func_8004096C
.ent func_8004096C
func_8004096C:
  addu       $12, $4, $0
  addiu      $6, $0, 0x1
  addiu      $15, $0, 0x1000
  lui        $2, %hi(D_80042A5C)
  addu       $14, $2, $0
  lui        $2, %hi(D_80042A84)
  lui        $13, %hi(D_80042A90)
  lui        $3, %hi(D_80042A78)
  lw         $2, %lo(D_80042A84)($2)
  lw         $3, %lo(D_80042A78)($3)
  addu       $11, $2, $0
  lui        $2, %hi(D_80042A68)
  addu       $8, $3, $0
  addu       $7, $8, $12
  lw         $2, %lo(D_80042A68)($2)
  lbu        $5, 0x0($7)
  sll        $4, $12, 2
  sw         $0, %lo(D_80042A5C)($14)
  addu       $24, $4, $2
  lui        $2, %hi(D_80042A80)
  lw         $2, %lo(D_80042A80)($2)
  addiu      $10, $5, 0x1001
  addu       $9, $2, $0
  addu       $3, $4, $9
  addu       $2, $15, $0
  addu       $4, $4, $11
  sw         $2, 0x0($3)
  sw         $2, 0x0($4)
.L800409DC:
  bltz       $6, .L80040A00
   sll       $2, $10, 2
  addu       $2, $2, $11
  lw         $3, 0x0($2)
  bnel       $3, $15, .L80040A14
   addu      $10, $3, $0
  sw         $12, 0x0($2)
  jr         $31
   sw        $10, 0x0($24)
.L80040A00:
  addu       $2, $2, $9
  lw         $3, 0x0($2)
  beql       $3, $15, .L80040B34
   sw        $12, 0x0($2)
  addu       $10, $3, $0
.L80040A14:
  addiu      $4, $0, 0x1
  addu       $3, $7, $4
.L80040A1C:
  addu       $2, $10, $4
  addu       $2, $8, $2
  lbu        $3, 0x0($3)
  lbu        $2, 0x0($2)
  subu       $6, $3, $2
  bnez       $6, .L80040A4C
   slti      $2, $4, 0x3
  addiu      $4, $4, 0x1
  slti       $2, $4, 0x3C
  bnez       $2, .L80040A1C
   addu      $3, $7, $4
  slti       $2, $4, 0x3
.L80040A4C:
  bnez       $2, .L800409DC
   nop
  lw         $3, %lo(D_80042A5C)($14)
  slt        $2, $3, $4
  beqz       $2, .L80040A80
   subu      $2, $12, $10
  andi       $2, $2, 0xFFF
  sw         $2, %lo(D_80042A90)($13)
  slti       $2, $4, 0x3C
  beqz       $2, .L80040AA4
   sw        $4, %lo(D_80042A5C)($14)
  j          .L800409DC
   nop
.L80040A80:
  bne        $4, $3, .L800409DC
   subu      $3, $12, $10
  lw         $2, %lo(D_80042A90)($13)
  andi       $3, $3, 0xFFF
  slt        $2, $3, $2
  bnel       $2, $0, .L800409DC
   sw        $3, %lo(D_80042A90)($13)
  j          .L800409DC
   nop
.L80040AA4:
  lui        $2, %hi(D_80042A68)
  sll        $3, $12, 2
  sll        $4, $10, 2
  lw         $7, %lo(D_80042A68)($2)
  lui        $2, %hi(D_80042A80)
  lw         $11, %lo(D_80042A80)($2)
  addu       $9, $4, $7
  addu       $2, $3, $7
  lw         $5, 0x0($9)
  addu       $8, $4, $11
  sw         $5, 0x0($2)
  lui        $2, %hi(D_80042A84)
  lw         $6, %lo(D_80042A84)($2)
  addu       $2, $3, $11
  lw         $5, 0x0($8)
  addu       $4, $4, $6
  sw         $5, 0x0($2)
  lw         $2, 0x0($4)
  addu       $3, $3, $6
  sw         $2, 0x0($3)
  lw         $2, 0x0($8)
  sll        $2, $2, 2
  addu       $2, $2, $7
  sw         $12, 0x0($2)
  lw         $2, 0x0($4)
  sll        $2, $2, 2
  addu       $2, $2, $7
  sw         $12, 0x0($2)
  lw         $2, 0x0($9)
  sll        $4, $2, 2
  addu       $3, $4, $6
  lw         $2, 0x0($3)
  bne        $2, $10, .L80040B4C
   addu      $2, $4, $11
  j          .L80040B50
   sw        $12, 0x0($3)
.L80040B34:
  lui        $2, %hi(D_80042A68)
  lw         $3, %lo(D_80042A68)($2)
  sll        $2, $12, 2
  addu       $2, $2, $3
  jr         $31
   sw        $10, 0x0($2)
.L80040B4C:
  sw         $12, 0x0($2)
.L80040B50:
  lui        $2, %hi(D_80042A68)
  lw         $3, %lo(D_80042A68)($2)
  sll        $2, $10, 2
  addu       $2, $2, $3
  addiu      $3, $0, 0x1000
  jr         $31
   sw        $3, 0x0($2)
.end func_8004096C
