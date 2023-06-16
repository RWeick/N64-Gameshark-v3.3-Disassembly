.globl func_80041C58
.ent func_80041C58
func_80041C58:
  addiu      $29, $29, -0x30
  sw         $17, 0x14($29)
  addu       $17, $4, $0
  sw         $16, 0x10($29)
  addu       $16, $5, $0
  addiu      $4, $0, 0x103B
  sw         $31, 0x28($29)
  sw         $21, 0x24($29)
  sw         $20, 0x20($29)
  sw         $19, 0x1C($29)
  jal        func_80042178
   sw        $18, 0x18($29)
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
  addu       $6, $0, $0
  lui        $3, %hi(D_80042AB0)
  addu       $7, $3, $0
  lui        $3, %hi(D_80042A50)
  addu       $8, $3, $0
  lui        $3, %hi(D_80042A64)
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
  lui        $2, %hi(D_80042A88)
  sw         $17, %lo(D_80042A88)($2)
  lui        $2, %hi(D_80042A6C)
  sw         $16, %lo(D_80042A6C)($2)
  lui        $2, %hi(D_80042A70)
  sw         $0, %lo(D_80042AB0)($7)
  sw         $0, %lo(D_80042A50)($8)
  sw         $0, %lo(D_80042A70)($2)
  sw         $0, %lo(D_80042AB0)($7)
  sll        $5, $6, 3
.L80041D9C:
  lw         $3, %lo(D_80042A50)($8)
  addiu      $6, $6, 0x1
  addu       $2, $16, $3
  lbu        $4, 0x0($2)
  lw         $2, %lo(D_80042AB0)($7)
  addiu      $3, $3, 0x1
  sw         $3, %lo(D_80042A50)($8)
  sllv       $4, $4, $5
  or         $2, $2, $4
  sw         $2, %lo(D_80042AB0)($7)
  slti       $2, $6, 0x4
  bnel       $2, $0, .L80041D9C
   sll       $5, $6, 3
  lui        $2, %hi(D_80042AB0)
  lw         $3, %lo(D_80042AB0)($2)
  lui        $2, %hi(D_80042A8C)
  bnez       $3, .L80041DEC
   sw        $3, %lo(D_80042A8C)($2)
  j          .L80041FA8
   addu      $2, $0, $0
.L80041DEC:
  jal        func_800413CC
   nop
  jal        func_80040D1C
   nop
  addu       $6, $0, $0
  lui        $4, %hi(D_80042A78)
  addiu      $3, $0, 0x20
.L80041E08:
  lw         $2, %lo(D_80042A78)($4)
  addu       $2, $2, $6
  addiu      $6, $6, 0x1
  sb         $3, 0x0($2)
  slti       $2, $6, 0xFC4
  bnez       $2, .L80041E08
   addiu     $17, $0, 0xFC4
  lui        $2, %hi(D_80042AB0)
  lw         $2, %lo(D_80042AB0)($2)
  beqz       $2, .L80041F10
   addu      $18, $0, $0
  lui        $19, %hi(D_80042A70)
  lui        $21, %hi(D_80042A88)
  lui        $20, %hi(D_80042A78)
.L80041E40:
  jal        func_80041418
   nop
  addu       $16, $2, $0
  slti       $2, $16, 0x100
  beqz       $2, .L80041E8C
   nop
  lw         $2, %lo(D_80042A70)($19)
  lw         $3, %lo(D_80042A88)($21)
  addiu      $18, $18, 0x1
  addu       $3, $3, $2
  sb         $16, 0x0($3)
  lw         $3, %lo(D_80042A78)($20)
  addiu      $2, $2, 0x1
  sw         $2, %lo(D_80042A70)($19)
  addu       $3, $3, $17
  addiu      $17, $17, 0x1
  andi       $17, $17, 0xFFF
  j          .L80041EFC
   sb        $16, 0x0($3)
.L80041E8C:
  jal        func_8004160C
   nop
  subu       $2, $17, $2
  addiu      $2, $2, -0x1
  andi       $6, $2, 0xFFF
  addiu      $7, $16, -0xFD
  blez       $7, .L80041EFC
   addu      $5, $0, $0
.L80041EAC:
  addiu      $18, $18, 0x1
  addu       $2, $6, $5
  addiu      $5, $5, 0x1
  andi       $2, $2, 0xFFF
  lw         $3, %lo(D_80042A78)($20)
  lw         $4, %lo(D_80042A70)($19)
  addu       $3, $3, $2
  lw         $2, %lo(D_80042A88)($21)
  lbu        $16, 0x0($3)
  addu       $2, $2, $4
  sb         $16, 0x0($2)
  lw         $2, %lo(D_80042A78)($20)
  addiu      $4, $4, 0x1
  sw         $4, %lo(D_80042A70)($19)
  addu       $2, $2, $17
  addiu      $17, $17, 0x1
  sb         $16, 0x0($2)
  slt        $2, $5, $7
  bnez       $2, .L80041EAC
   andi      $17, $17, 0xFFF
.L80041EFC:
  lui        $2, %hi(D_80042AB0)
  lw         $2, %lo(D_80042AB0)($2)
  sltu       $2, $18, $2
  bnez       $2, .L80041E40
   nop
.L80041F10:
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
.L80041FA8:
  lw         $31, 0x28($29)
  lw         $21, 0x24($29)
  lw         $20, 0x20($29)
  lw         $19, 0x1C($29)
  lw         $18, 0x18($29)
  lw         $17, 0x14($29)
  lw         $16, 0x10($29)
  jr         $31
   addiu     $29, $29, 0x30
.end func_80041C58
