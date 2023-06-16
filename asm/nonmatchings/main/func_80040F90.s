.globl func_80040F90
.ent func_80040F90
func_80040F90:
  addiu      $29, $29, -0x38
  lui        $2, %hi(D_80042A4C)
  sll        $4, $4, 2
  lui        $8, %hi(D_80042ABC)
  lw         $2, %lo(D_80042A4C)($2)
  lw         $6, %lo(D_80042ABC)($8)
  lui        $7, %hi(D_80042AC0)
  sw         $31, 0x34($29)
  sw         $30, 0x30($29)
  sw         $23, 0x2C($29)
  sw         $22, 0x28($29)
  sw         $21, 0x24($29)
  sw         $20, 0x20($29)
  sw         $19, 0x1C($29)
  sw         $18, 0x18($29)
  sw         $17, 0x14($29)
  sw         $16, 0x10($29)
  addu       $4, $4, $2
  lui        $2, %hi(D_80042A60)
  lw         $22, 0x0($4)
  lw         $5, %lo(D_80042A60)($2)
  lw         $4, %lo(D_80042AC0)($7)
  sll        $3, $22, 2
  addu       $3, $3, $5
  lw         $2, -0x4($3)
  subu       $4, $4, $6
  mult       $4, $2
  mflo       $9
  lw         $2, 0x0($5)
  nop
  divu       $9, $2
  bnez       $2, .L80041018
   nop
  .word      0x0007000D                    # break      7 # 00000000 <InstrIdType: CPU_SPECIAL>
.L80041018:
  mflo       $2
  lw         $3, 0x0($3)
  nop
  mult       $4, $3
  mflo       $3
  addu       $2, $6, $2
  sw         $2, %lo(D_80042AC0)($7)
  lw         $2, 0x0($5)
  divu       $3, $2
  bnez       $2, .L80041048
   nop
  .word      0x0007000D                    # break      7 # 00000000 <InstrIdType: CPU_SPECIAL>
.L80041048:
  mflo       $2
  addu       $17, $7, $0
  lui        $18, (0x18000 >> 16)
  addu       $16, $8, $0
  ori        $30, $0, 0xFFFF
  addiu      $23, $0, 0x7FFF
  addu       $21, $18, $0
  ori        $21, $21, (0x18000 & 0xFFFF)
  lui        $20, %hi(D_80042AC8)
  addiu      $19, $0, -0x8000
  addu       $6, $6, $2
  sw         $6, %lo(D_80042ABC)($16)
.L80041078:
  lw         $4, %lo(D_80042AC0)($17)
  sltu       $2, $18, $4
  bnez       $2, .L80041098
   nop
  jal        func_80040F3C
   addu      $4, $0, $0
  j          .L800410F4
   nop
.L80041098:
  lw         $3, %lo(D_80042ABC)($16)
  sltu       $2, $30, $3
  beqz       $2, .L800410CC
   sltu      $2, $23, $3
  jal        func_80040F3C
   addiu     $4, $0, 0x1
  lw         $2, %lo(D_80042ABC)($16)
  lw         $3, %lo(D_80042AC0)($17)
  subu       $2, $2, $18
  subu       $3, $3, $18
  sw         $2, %lo(D_80042ABC)($16)
  j          .L800410F4
   sw        $3, %lo(D_80042AC0)($17)
.L800410CC:
  beqz       $2, .L80041110
   sltu      $2, $21, $4
  bnez       $2, .L80041110
   addu      $2, $3, $19
  lw         $3, %lo(D_80042AC8)($20)
  sw         $2, %lo(D_80042ABC)($16)
  addu       $2, $4, $19
  sw         $2, %lo(D_80042AC0)($17)
  addiu      $3, $3, 0x1
  sw         $3, %lo(D_80042AC8)($20)
.L800410F4:
  lw         $2, %lo(D_80042ABC)($16)
  lw         $3, %lo(D_80042AC0)($17)
  sll        $2, $2, 1
  sll        $3, $3, 1
  sw         $2, %lo(D_80042ABC)($16)
  j          .L80041078
   sw        $3, %lo(D_80042AC0)($17)
.L80041110:
  jal        func_80040DFC
   addu      $4, $22, $0
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
.end func_80040F90
