.globl func_80040B6C
.ent func_80040B6C
func_80040B6C:
  addu       $10, $4, $0
  lui        $2, %hi(D_80042A68)
  lw         $2, %lo(D_80042A68)($2)
  sll        $4, $10, 2
  addu       $2, $4, $2
  lw         $2, 0x0($2)
  addiu      $6, $0, 0x1000
  beq        $2, $6, .L80040D14
   lui       $2, %hi(D_80042A84)
  lw         $5, %lo(D_80042A84)($2)
  addu       $2, $4, $5
  lw         $3, 0x0($2)
  bne        $3, $6, .L80040BB8
   lui       $2, %hi(D_80042A80)
  lw         $2, %lo(D_80042A80)($2)
  addu       $2, $4, $2
  lw         $9, 0x0($2)
  j          .L80040CAC
   lui       $2, %hi(D_80042A68)
.L80040BB8:
  lw         $2, %lo(D_80042A80)($2)
  addu       $2, $4, $2
  lw         $2, 0x0($2)
  beq        $2, $6, .L80040CA8
   addu      $9, $3, $0
  addu       $9, $2, $0
  sll        $2, $9, 2
  addu       $2, $2, $5
  lw         $2, 0x0($2)
  beq        $2, $6, .L80040C70
   addu      $3, $5, $0
  addiu      $4, $0, 0x1000
  sll        $2, $9, 2
.L80040BEC:
  addu       $2, $2, $3
  lw         $9, 0x0($2)
  sll        $5, $9, 2
  addu       $2, $5, $3
  lw         $2, 0x0($2)
  bne        $2, $4, .L80040BEC
   sll       $2, $9, 2
  lui        $2, %hi(D_80042A68)
  lui        $4, %hi(D_80042A84)
  lui        $3, %hi(D_80042A80)
  lw         $6, %lo(D_80042A68)($2)
  lw         $8, %lo(D_80042A80)($3)
  lw         $3, %lo(D_80042A84)($4)
  addu       $7, $5, $6
  addu       $5, $5, $8
  lw         $2, 0x0($7)
  lw         $4, 0x0($5)
  sll        $2, $2, 2
  addu       $2, $2, $3
  sw         $4, 0x0($2)
  lw         $2, 0x0($5)
  lw         $3, 0x0($7)
  sll        $2, $2, 2
  addu       $2, $2, $6
  sw         $3, 0x0($2)
  sll        $2, $10, 2
  addu       $2, $2, $8
  lw         $3, 0x0($2)
  sw         $3, 0x0($5)
  lw         $2, 0x0($2)
  sll        $2, $2, 2
  addu       $2, $2, $6
  sw         $9, 0x0($2)
.L80040C70:
  lui        $2, %hi(D_80042A84)
  sll        $3, $9, 2
  lw         $5, %lo(D_80042A84)($2)
  sll        $2, $10, 2
  addu       $2, $2, $5
  lw         $4, 0x0($2)
  addu       $3, $3, $5
  sw         $4, 0x0($3)
  lui        $3, %hi(D_80042A68)
  lw         $2, 0x0($2)
  lw         $3, %lo(D_80042A68)($3)
  sll        $2, $2, 2
  addu       $2, $2, $3
  sw         $9, 0x0($2)
.L80040CA8:
  lui        $2, %hi(D_80042A68)
.L80040CAC:
  sll        $3, $9, 2
  lw         $5, %lo(D_80042A68)($2)
  sll        $2, $10, 2
  addu       $2, $2, $5
  lw         $4, 0x0($2)
  addu       $3, $3, $5
  sw         $4, 0x0($3)
  lui        $3, %hi(D_80042A84)
  lw         $2, 0x0($2)
  lw         $3, %lo(D_80042A84)($3)
  sll        $4, $2, 2
  addu       $3, $4, $3
  lw         $2, 0x0($3)
  bne        $2, $10, .L80040CF0
   lui       $2, %hi(D_80042A80)
  j          .L80040CFC
   sw        $9, 0x0($3)
.L80040CF0:
  lw         $2, %lo(D_80042A80)($2)
  addu       $2, $4, $2
  sw         $9, 0x0($2)
.L80040CFC:
  lui        $2, %hi(D_80042A68)
  lw         $3, %lo(D_80042A68)($2)
  sll        $2, $10, 2
  addu       $2, $2, $3
  addiu      $3, $0, 0x1000
  sw         $3, 0x0($2)
.L80040D14:
  jr         $31
   nop
.end func_80040B6C
