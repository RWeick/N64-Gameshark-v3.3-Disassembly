.globl func_80040918
.ent func_80040918
func_80040918:
  addiu      $3, $0, 0x1001
  lui        $2, %hi(D_80042A84)
  lw         $2, %lo(D_80042A84)($2)
  addiu      $5, $0, 0x1000
  addiu      $4, $2, 0x4004
.L8004092C:
  sw         $5, 0x0($4)
  addiu      $3, $3, 0x1
  slti       $2, $3, 0x1101
  bnez       $2, .L8004092C
   addiu     $4, $4, 0x4
  addiu      $4, $0, 0x1000
  lui        $2, %hi(D_80042A68)
  lw         $2, %lo(D_80042A68)($2)
  addiu      $3, $0, 0xFFF
  addiu      $2, $2, 0x3FFC
.L80040954:
  sw         $4, 0x0($2)
  addiu      $3, $3, -0x1
  bgez       $3, .L80040954
   addiu     $2, $2, -0x4
  jr         $31
   nop
.end func_80040918
