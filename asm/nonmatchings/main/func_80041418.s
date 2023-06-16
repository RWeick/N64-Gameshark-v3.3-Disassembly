.globl func_80041418
.ent func_80041418
func_80041418:
  addiu      $29, $29, -0x30
  sw         $18, 0x18($29)
  lui        $18, %hi(D_80042ABC)
  sw         $20, 0x20($29)
  lui        $20, %hi(D_80042AC4)
  sw         $19, 0x1C($29)
  lui        $19, %hi(D_80042A60)
  lw         $4, %lo(D_80042ABC)($18)
  lw         $2, %lo(D_80042AC4)($20)
  lw         $3, %lo(D_80042A60)($19)
  sw         $31, 0x2C($29)
  sw         $22, 0x28($29)
  sw         $21, 0x24($29)
  sw         $17, 0x14($29)
  sw         $16, 0x10($29)
  subu       $2, $2, $4
  lw         $3, 0x0($3)
  addiu      $2, $2, 0x1
  mult       $2, $3
  lui        $17, %hi(D_80042AC0)
  lw         $16, %lo(D_80042AC0)($17)
  mflo       $3
  subu       $16, $16, $4
  addiu      $4, $3, -0x1
  divu       $4, $16
  bnez       $16, .L80041488
   nop
  .word      0x0007000D                    # break      7 # 00000000 <InstrIdType: CPU_SPECIAL>
.L80041488:
  mflo       $4
  jal        func_8004132C
   ori       $22, $0, 0xFFFF
  addu       $21, $2, $0
  lw         $5, %lo(D_80042A60)($19)
  sll        $3, $21, 2
  addu       $3, $3, $5
  lw         $2, -0x4($3)
  mult       $16, $2
  mflo       $7
  lw         $2, 0x0($5)
  nop
  divu       $7, $2
  bnez       $2, .L800414C8
   nop
  .word      0x0007000D                    # break      7 # 00000000 <InstrIdType: CPU_SPECIAL>
.L800414C8:
  mflo       $2
  lw         $3, 0x0($3)
  nop
  mult       $16, $3
  lw         $4, %lo(D_80042ABC)($18)
  mflo       $3
  addu       $2, $4, $2
  sw         $2, %lo(D_80042AC0)($17)
  lw         $2, 0x0($5)
  divu       $3, $2
  bnez       $2, .L800414FC
   nop
  .word      0x0007000D                    # break      7 # 00000000 <InstrIdType: CPU_SPECIAL>
.L800414FC:
  mflo       $2
  lui        $19, (0xFFFF0000 >> 16)
  addiu      $16, $0, -0x8000
  addu       $4, $4, $2
  sw         $4, %lo(D_80042ABC)($18)
.L80041510:
  lw         $3, %lo(D_80042ABC)($18)
  sltu       $2, $22, $3
  beqz       $2, .L80041540
   addu      $2, $3, $19
  sw         $2, %lo(D_80042ABC)($18)
  lw         $2, %lo(D_80042AC4)($20)
  lw         $3, %lo(D_80042AC0)($17)
  addu       $2, $2, $19
  addu       $3, $3, $19
  sw         $2, %lo(D_80042AC4)($20)
  j          .L80041594
   sw        $3, %lo(D_80042AC0)($17)
.L80041540:
  addiu      $2, $0, 0x7FFF
  sltu       $2, $2, $3
  beqz       $2, .L80041580
   lui       $2, (0x18000 >> 16)
  lw         $4, %lo(D_80042AC0)($17)
  ori        $2, $2, (0x18000 & 0xFFFF)
  sltu       $2, $2, $4
  bnez       $2, .L80041580
   addu      $2, $3, $16
  lw         $3, %lo(D_80042AC4)($20)
  sw         $2, %lo(D_80042ABC)($18)
  addu       $2, $4, $16
  sw         $2, %lo(D_80042AC0)($17)
  addu       $3, $3, $16
  j          .L80041594
   sw        $3, %lo(D_80042AC4)($20)
.L80041580:
  lw         $3, %lo(D_80042AC0)($17)
  lui        $2, (0x10000 >> 16)
  sltu       $2, $2, $3
  bnez       $2, .L800415C4
   addu      $4, $21, $0
.L80041594:
  lw         $2, %lo(D_80042ABC)($18)
  lw         $3, %lo(D_80042AC0)($17)
  sll        $2, $2, 1
  sll        $3, $3, 1
  sw         $2, %lo(D_80042ABC)($18)
  jal        func_800408BC
   sw        $3, %lo(D_80042AC0)($17)
  lw         $3, %lo(D_80042AC4)($20)
  sll        $3, $3, 1
  addu       $3, $3, $2
  j          .L80041510
   sw        $3, %lo(D_80042AC4)($20)
.L800415C4:
  lui        $2, %hi(D_80042A48)
  lw         $3, %lo(D_80042A48)($2)
  sll        $2, $4, 2
  addu       $2, $2, $3
  lw         $16, 0x0($2)
  jal        func_80040DFC
   nop
  lw         $31, 0x2C($29)
  lw         $22, 0x28($29)
  lw         $21, 0x24($29)
  lw         $20, 0x20($29)
  lw         $19, 0x1C($29)
  lw         $18, 0x18($29)
  lw         $17, 0x14($29)
  addu       $2, $16, $0
  lw         $16, 0x10($29)
  jr         $31
   addiu     $29, $29, 0x30
.end func_80041418
