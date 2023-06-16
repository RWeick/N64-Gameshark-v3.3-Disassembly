.globl func_80040DFC
.ent func_80040DFC
func_80040DFC:
  lui        $2, %hi(D_80042A60)
  lw         $3, %lo(D_80042A60)($2)
  lw         $2, 0x0($3)
  sltiu      $2, $2, 0x7FFF
  bnez       $2, .L80040E60
   addu      $7, $4, $0
  addu       $4, $0, $0
  addiu      $6, $0, 0x13A
  lui        $2, %hi(D_80042A7C)
  lw         $2, %lo(D_80042A7C)($2)
  addiu      $5, $3, 0x4E8
  addiu      $3, $2, 0x4E8
.L80040E2C:
  sw         $4, 0x0($5)
  addiu      $5, $5, -0x4
  lw         $2, 0x0($3)
  addiu      $6, $6, -0x1
  addiu      $2, $2, 0x1
  srl        $2, $2, 1
  addu       $4, $4, $2
  sw         $2, 0x0($3)
  bgtz       $6, .L80040E2C
   addiu     $3, $3, -0x4
  lui        $2, %hi(D_80042A60)
  lw         $2, %lo(D_80042A60)($2)
  sw         $4, 0x0($2)
.L80040E60:
  addu       $6, $7, $0
  lui        $2, %hi(D_80042A7C)
  lw         $3, %lo(D_80042A7C)($2)
  sll        $2, $6, 2
  addu       $4, $2, $3
  lw         $3, 0x0($4)
  lw         $2, -0x4($4)
  bne        $3, $2, .L80040E9C
   slt       $2, $6, $7
.L80040E84:
  addiu      $4, $4, -0x4
  lw         $3, 0x0($4)
  lw         $2, -0x4($4)
  beq        $3, $2, .L80040E84
   addiu     $6, $6, -0x1
  slt        $2, $6, $7
.L80040E9C:
  beqz       $2, .L80040EE8
   lui       $2, %hi(D_80042A48)
  sll        $4, $6, 2
  lw         $3, %lo(D_80042A48)($2)
  sll        $2, $7, 2
  addu       $4, $4, $3
  addu       $2, $2, $3
  lw         $5, 0x0($2)
  lw         $3, 0x0($4)
  sw         $5, 0x0($4)
  sw         $3, 0x0($2)
  lui        $2, %hi(D_80042A4C)
  sll        $3, $3, 2
  lw         $2, %lo(D_80042A4C)($2)
  sll        $5, $5, 2
  addu       $3, $3, $2
  addu       $5, $5, $2
  sw         $7, 0x0($3)
  sw         $6, 0x0($5)
.L80040EE8:
  lui        $2, %hi(D_80042A7C)
  lw         $2, %lo(D_80042A7C)($2)
  sll        $3, $6, 2
  addu       $3, $3, $2
  lw         $2, 0x0($3)
  addiu      $6, $6, -0x1
  addiu      $2, $2, 0x1
  bltz       $6, .L80040F34
   sw        $2, 0x0($3)
  lui        $2, %hi(D_80042A60)
  lw         $3, %lo(D_80042A60)($2)
  sll        $2, $6, 2
  addu       $3, $2, $3
.L80040F1C:
  lw         $2, 0x0($3)
  addiu      $6, $6, -0x1
  addiu      $2, $2, 0x1
  sw         $2, 0x0($3)
  bgez       $6, .L80040F1C
   addiu     $3, $3, -0x4
.L80040F34:
  jr         $31
   nop
.end func_80040DFC
