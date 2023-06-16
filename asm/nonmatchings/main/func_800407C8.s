.globl func_800407C8
.ent func_800407C8
func_800407C8:
  addiu      $29, $29, -0x20
  sw         $31, 0x18($29)
  sw         $17, 0x14($29)
  beqz       $4, .L800407F4
   sw        $16, 0x10($29)
  lui        $4, %hi(D_80042A58)
  lui        $3, %hi(D_80042A44)
  lw         $2, %lo(D_80042A58)($4)
  lw         $3, %lo(D_80042A44)($3)
  or         $2, $2, $3
  sw         $2, %lo(D_80042A58)($4)
.L800407F4:
  lui        $16, %hi(D_80042A44)
  lw         $2, %lo(D_80042A44)($16)
  srl        $2, $2, 1
  bnez       $2, .L80040870
   sw        $2, %lo(D_80042A44)($16)
  lui        $5, %hi(D_80042A70)
  lui        $2, %hi(D_80042A88)
  lui        $17, %hi(D_80042A58)
  addiu      $4, $17, %lo(D_80042A58)
  lw         $3, %lo(D_80042A70)($5)
  lw         $2, %lo(D_80042A88)($2)
  lbu        $4, 0x3($4)
  addu       $2, $2, $3
  sb         $4, 0x0($2)
  lui        $2, %hi(D_80042A8C)
  lw         $2, %lo(D_80042A8C)($2)
  addiu      $3, $3, 0x1
  sw         $3, %lo(D_80042A70)($5)
  slt        $3, $3, $2
  bnez       $3, .L80040858
   lui       $2, %hi(D_80042AB4)
  lui        $4, %hi(D_80042A20)
  jal        func_800407C0
   addiu     $4, $4, %lo(D_80042A20)
  lui        $2, %hi(D_80042AB4)
.L80040858:
  lw         $3, %lo(D_80042AB4)($2)
  addiu      $4, $0, 0x80
  sw         $0, %lo(D_80042A58)($17)
  sw         $4, %lo(D_80042A44)($16)
  addiu      $3, $3, 0x1
  sw         $3, %lo(D_80042AB4)($2)
.L80040870:
  lw         $31, 0x18($29)
  lw         $17, 0x14($29)
  lw         $16, 0x10($29)
  jr         $31
   addiu     $29, $29, 0x20
.end func_800407C8
