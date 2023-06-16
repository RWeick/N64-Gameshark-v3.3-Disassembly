.globl func_80041148
.ent func_80041148
func_80041148:
  addiu      $29, $29, -0x38
  lui        $8, %hi(D_80042AC0)
  lui        $9, %hi(D_80042ABC)
  lui        $2, %hi(D_80042A64)
  lw         $6, %lo(D_80042A64)($2)
  lw         $5, %lo(D_80042AC0)($8)
  lw         $7, %lo(D_80042ABC)($9)
  sll        $4, $4, 2
  sw         $31, 0x30($29)
  sw         $23, 0x2C($29)
  sw         $22, 0x28($29)
  sw         $21, 0x24($29)
  sw         $20, 0x20($29)
  sw         $19, 0x1C($29)
  sw         $18, 0x18($29)
  sw         $17, 0x14($29)
  sw         $16, 0x10($29)
  addu       $4, $4, $6
  lw         $2, 0x0($4)
  subu       $5, $5, $7
  mult       $5, $2
  mflo       $3
  lw         $2, 0x0($6)
  nop
  divu       $3, $2
  bnez       $2, .L800411B8
   nop
  .word      0x0007000D                    # break      7 # 00000000 <InstrIdType: CPU_SPECIAL>
.L800411B8:
  mflo       $2
  lw         $3, 0x4($4)
  nop
  mult       $5, $3
  mflo       $3
  addu       $2, $7, $2
  sw         $2, %lo(D_80042AC0)($8)
  lw         $2, 0x0($6)
  divu       $3, $2
  bnez       $2, .L800411E8
   nop
  .word      0x0007000D                    # break      7 # 00000000 <InstrIdType: CPU_SPECIAL>
.L800411E8:
  mflo       $2
  addu       $17, $8, $0
  lui        $18, (0x18000 >> 16)
  addu       $16, $9, $0
  ori        $23, $0, 0xFFFF
  addiu      $22, $0, 0x7FFF
  addu       $21, $18, $0
  ori        $21, $21, (0x18000 & 0xFFFF)
  lui        $20, %hi(D_80042AC8)
  addiu      $19, $0, -0x8000
  addu       $7, $7, $2
  sw         $7, %lo(D_80042ABC)($16)
.L80041218:
  lw         $4, %lo(D_80042AC0)($17)
  sltu       $2, $18, $4
  bnez       $2, .L80041238
   nop
  jal        func_80040F3C
   addu      $4, $0, $0
  j          .L80041294
   nop
.L80041238:
  lw         $3, %lo(D_80042ABC)($16)
  sltu       $2, $23, $3
  beqz       $2, .L8004126C
   sltu      $2, $22, $3
  jal        func_80040F3C
   addiu     $4, $0, 0x1
  lw         $2, %lo(D_80042ABC)($16)
  lw         $3, %lo(D_80042AC0)($17)
  subu       $2, $2, $18
  subu       $3, $3, $18
  sw         $2, %lo(D_80042ABC)($16)
  j          .L80041294
   sw        $3, %lo(D_80042AC0)($17)
.L8004126C:
  beqz       $2, .L800412B0
   sltu      $2, $21, $4
  bnez       $2, .L800412B0
   addu      $2, $3, $19
  lw         $3, %lo(D_80042AC8)($20)
  sw         $2, %lo(D_80042ABC)($16)
  addu       $2, $4, $19
  sw         $2, %lo(D_80042AC0)($17)
  addiu      $3, $3, 0x1
  sw         $3, %lo(D_80042AC8)($20)
.L80041294:
  lw         $2, %lo(D_80042ABC)($16)
  lw         $3, %lo(D_80042AC0)($17)
  sll        $2, $2, 1
  sll        $3, $3, 1
  sw         $2, %lo(D_80042ABC)($16)
  j          .L80041218
   sw        $3, %lo(D_80042AC0)($17)
.L800412B0:
  lw         $31, 0x30($29)
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
.end func_80041148
