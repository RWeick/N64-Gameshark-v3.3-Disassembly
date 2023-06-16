.globl func_800417E0
.ent func_800417E0
func_800417E0:
  addiu      $29, $29, -0x38
  sw         $17, 0x14($29)
  addu       $17, $4, $0
  sw         $18, 0x18($29)
  addu       $18, $5, $0
  sw         $16, 0x10($29)
  addu       $16, $6, $0
  addiu      $4, $0, 0x103B
  sw         $31, 0x34($29)
  sw         $30, 0x30($29)
  sw         $23, 0x2C($29)
  sw         $22, 0x28($29)
  sw         $21, 0x24($29)
  sw         $20, 0x20($29)
  jal        func_80042178
   sw        $19, 0x1C($29)
  addiu      $4, $0, 0x4004
  lui        $3, %hi(D_80042A78)
  jal        func_80042178
   sw        $2, %lo(D_80042A78)($3)
  addiu      $4, $0, 0x4404
  lui        $3, %hi(D_80042A80)
  jal        func_80042178
   sw        $2, %lo(D_80042A80)($3)
  addiu      $4, $0, 0x4004
  lui        $3, %hi(D_80042A84)
  jal        func_80042178
   sw        $2, %lo(D_80042A84)($3)
  addiu      $4, $0, 0x4E8
  lui        $3, %hi(D_80042A68)
  jal        func_80042178
   sw        $2, %lo(D_80042A68)($3)
  addiu      $4, $0, 0x4EC
  lui        $3, %hi(D_80042A4C)
  jal        func_80042178
   sw        $2, %lo(D_80042A4C)($3)
  addiu      $4, $0, 0x4EC
  lui        $3, %hi(D_80042A48)
  jal        func_80042178
   sw        $2, %lo(D_80042A48)($3)
  addiu      $4, $0, 0x4EC
  lui        $3, %hi(D_80042A7C)
  jal        func_80042178
   sw        $2, %lo(D_80042A7C)($3)
  addiu      $4, $0, 0x4004
  lui        $3, %hi(D_80042A60)
  jal        func_80042178
   sw        $2, %lo(D_80042A60)($3)
  addu       $19, $0, $0
  lui        $3, %hi(D_80042A70)
  addu       $6, $3, $0
  lui        $3, %hi(D_80042A88)
  addu       $8, $3, $0
  lui        $3, %hi(D_80042A74)
  addu       $7, $3, $0
  lui        $3, %hi(D_80042A64)
  lui        $4, %hi(D_80042AB0)
  sw         $2, %lo(D_80042A64)($3)
  lui        $2, %hi(D_80042AB4)
  sw         $0, %lo(D_80042AB4)($2)
  lui        $2, %hi(D_80042AB8)
  sw         $0, %lo(D_80042AB8)($2)
  lui        $2, %hi(D_80042A58)
  lui        $3, %hi(D_80042A44)
  sw         $0, %lo(D_80042A58)($2)
  addiu      $2, $0, 0x80
  sw         $2, %lo(D_80042A44)($3)
  lui        $2, %hi(D_80042A54)
  sw         $0, %lo(D_80042A54)($2)
  lui        $2, %hi(D_80042A40)
  sw         $0, %lo(D_80042A40)($2)
  lui        $2, %hi(D_80042ABC)
  lui        $3, %hi(D_80042AC0)
  sw         $0, %lo(D_80042ABC)($2)
  lui        $2, (0x20000 >> 16)
  sw         $2, %lo(D_80042AC0)($3)
  lui        $2, %hi(D_80042AC4)
  sw         $0, %lo(D_80042AC4)($2)
  lui        $2, %hi(D_80042A6C)
  sw         $18, %lo(D_80042A6C)($2)
  lui        $2, %hi(D_80042A8C)
  sw         $16, %lo(D_80042A8C)($2)
  lui        $2, %hi(D_80042A50)
  sw         $0, %lo(D_80042AB0)($4)
  sw         $17, %lo(D_80042A88)($8)
  sw         $16, %lo(D_80042A74)($7)
  sw         $16, %lo(D_80042AB0)($4)
  sw         $0, %lo(D_80042A50)($2)
  sw         $0, %lo(D_80042A70)($6)
.L80041944:
  sll        $5, $19, 3
  addiu      $19, $19, 0x1
  lw         $4, %lo(D_80042A70)($6)
  lw         $3, %lo(D_80042A88)($8)
  lw         $2, %lo(D_80042A74)($7)
  addu       $3, $3, $4
  addiu      $4, $4, 0x1
  srav       $2, $2, $5
  sb         $2, 0x0($3)
  slti       $2, $19, 0x4
  bnez       $2, .L80041944
   sw        $4, %lo(D_80042A70)($6)
  lui        $2, %hi(D_80042AB4)
  lui        $5, %hi(D_80042AB0)
  lw         $3, %lo(D_80042AB4)($2)
  lw         $4, %lo(D_80042AB0)($5)
  addiu      $3, $3, 0x4
  bnez       $4, .L80041998
   sw        $3, %lo(D_80042AB4)($2)
  j          .L80041C28
   addu      $2, $0, $0
.L80041998:
  jal        func_80040D1C
   sw        $0, %lo(D_80042AB0)($5)
  jal        func_80040918
   addu      $18, $0, $0
  addiu      $17, $0, 0xFC4
  addu       $19, $18, $0
  lui        $4, %hi(D_80042A78)
  addiu      $3, $0, 0x20
.L800419B8:
  lw         $2, %lo(D_80042A78)($4)
  addu       $2, $2, $19
  addiu      $19, $19, 0x1
  sb         $3, 0x0($2)
  slt        $2, $19, $17
  bnez       $2, .L800419B8
   addu      $20, $0, $0
  lui        $6, %hi(D_80042A50)
  lui        $9, %hi(D_80042A74)
  lui        $8, %hi(D_80042A6C)
  lui        $7, %hi(D_80042A78)
.L800419E4:
  lw         $5, %lo(D_80042A50)($6)
  lw         $2, %lo(D_80042A74)($9)
  slt        $2, $5, $2
  beqz       $2, .L80041A24
   addu      $4, $17, $20
  addiu      $20, $20, 0x1
  lw         $2, %lo(D_80042A6C)($8)
  lw         $3, %lo(D_80042A78)($7)
  addu       $2, $2, $5
  lbu        $16, 0x0($2)
  addiu      $2, $5, 0x1
  addu       $3, $3, $4
  sw         $2, %lo(D_80042A50)($6)
  slti       $2, $20, 0x3C
  bnez       $2, .L800419E4
   sb        $16, 0x0($3)
.L80041A24:
  lui        $2, %hi(D_80042AB0)
  sw         $20, %lo(D_80042AB0)($2)
  addiu      $19, $0, 0x1
.L80041A30:
  jal        func_8004096C
   subu      $4, $17, $19
  addiu      $19, $19, 0x1
  slti       $2, $19, 0x3D
  bnez       $2, .L80041A30
   nop
  jal        func_8004096C
   addu      $4, $17, $0
  lui        $22, %hi(D_80042A5C)
  lui        $23, %hi(D_80042A78)
  lui        $30, %hi(D_80042A50)
.L80041A5C:
  lw         $2, %lo(D_80042A5C)($22)
  slt        $2, $20, $2
  bnel       $2, $0, .L80041A6C
   sw        $20, %lo(D_80042A5C)($22)
.L80041A6C:
  lw         $4, %lo(D_80042A5C)($22)
  slti       $2, $4, 0x3
  beqz       $2, .L80041A9C
   addiu     $2, $0, 0x1
  lw         $3, %lo(D_80042A78)($23)
  sw         $2, %lo(D_80042A5C)($22)
  addu       $3, $3, $17
  lbu        $4, 0x0($3)
  jal        func_80040F90
   nop
  j          .L80041AB4
   nop
.L80041A9C:
  jal        func_80040F90
   addiu     $4, $4, 0xFD
  lui        $2, %hi(D_80042A90)
  lw         $4, %lo(D_80042A90)($2)
  jal        func_80041148
   addiu     $4, $4, -0x1
.L80041AB4:
  lw         $21, %lo(D_80042A5C)($22)
  blez       $21, .L80041B70
   addu      $19, $0, $0
  lui        $10, %hi(D_80042A74)
.L80041AC4:
  lw         $3, %lo(D_80042A50)($30)
  lw         $2, %lo(D_80042A74)($10)
  slt        $2, $3, $2
  beqz       $2, .L80041B70
   lui       $10, %hi(D_80042A6C)
  lw         $2, %lo(D_80042A6C)($10)
  addu       $4, $18, $0
  addu       $2, $2, $3
  lbu        $16, 0x0($2)
  addiu      $2, $3, 0x1
  jal        func_80040B6C
   sw        $2, %lo(D_80042A50)($30)
  lw         $2, %lo(D_80042A78)($23)
  addu       $2, $2, $18
  sb         $16, 0x0($2)
  slti       $2, $18, 0x3B
  beqz       $2, .L80041B1C
   addiu     $2, $18, 0x1
  lw         $2, %lo(D_80042A78)($23)
  addu       $2, $18, $2
  sb         $16, 0x1000($2)
  addiu      $2, $18, 0x1
.L80041B1C:
  andi       $18, $2, 0xFFF
  addiu      $2, $17, 0x1
  andi       $17, $2, 0xFFF
  jal        func_8004096C
   addu      $4, $17, $0
  addiu      $19, $19, 0x1
  slt        $2, $19, $21
  bnez       $2, .L80041AC4
   lui       $10, %hi(D_80042A74)
  j          .L80041B74
   addu      $2, $19, $0
.L80041B48:
  jal        func_80040B6C
   addu      $4, $18, $0
  addiu      $2, $18, 0x1
  andi       $18, $2, 0xFFF
  addiu      $2, $17, 0x1
  addiu      $20, $20, -0x1
  beqz       $20, .L80041B70
   andi      $17, $2, 0xFFF
  jal        func_8004096C
   addu      $4, $17, $0
.L80041B70:
  addu       $2, $19, $0
.L80041B74:
  slt        $2, $2, $21
  bnez       $2, .L80041B48
   addiu     $19, $19, 0x1
  bgtz       $20, .L80041A5C
   nop
  jal        func_800412DC
   nop
  lui        $2, %hi(D_80042A64)
  lw         $4, %lo(D_80042A64)($2)
  jal        func_8004224C
   nop
  lui        $2, %hi(D_80042A60)
  lw         $4, %lo(D_80042A60)($2)
  jal        func_8004224C
   nop
  lui        $2, %hi(D_80042A7C)
  lw         $4, %lo(D_80042A7C)($2)
  jal        func_8004224C
   nop
  lui        $2, %hi(D_80042A48)
  lw         $4, %lo(D_80042A48)($2)
  jal        func_8004224C
   nop
  lui        $2, %hi(D_80042A4C)
  lw         $4, %lo(D_80042A4C)($2)
  jal        func_8004224C
   nop
  lui        $2, %hi(D_80042A68)
  lw         $4, %lo(D_80042A68)($2)
  jal        func_8004224C
   nop
  lui        $2, %hi(D_80042A84)
  lw         $4, %lo(D_80042A84)($2)
  jal        func_8004224C
   nop
  lui        $2, %hi(D_80042A80)
  lw         $4, %lo(D_80042A80)($2)
  jal        func_8004224C
   nop
  lui        $2, %hi(D_80042A78)
  lw         $4, %lo(D_80042A78)($2)
  jal        func_8004224C
   nop
  lui        $2, %hi(D_80042A70)
  lw         $2, %lo(D_80042A70)($2)
.L80041C28:
  lw         $31, 0x34($29)
  lw         $30, 0x30($29)
  lw         $23, 0x2C($29)
  lw         $22, 0x28($29)
  lw         $21, 0x24($29)
  lw         $20, 0x20($29)
  lw         $19, 0x1C($29)
  lw         $18, 0x18($29)
  lw         $17, 0x14($29)
  lw         $16, 0x10($29)
  jr         $31
   addiu     $29, $29, 0x38
.end func_800417E0
