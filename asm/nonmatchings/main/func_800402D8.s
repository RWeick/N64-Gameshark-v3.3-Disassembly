.globl func_800402D8
.ent func_800402D8
func_800402D8:
  addiu      $29, $29, -0x28
  sw         $31, 0x20($29)
  sw         $19, 0x1C($29)
  sw         $18, 0x18($29)
  sw         $17, 0x14($29)
  jal        func_8004043C
   sw        $16, 0x10($29)
  lui        $19, (0x80281000 >> 16)
  addu       $4, $19, $0
  lui        $5, %hi(D_800429D8)
  jal        func_80041FCC
   addiu     $5, $5, %lo(D_800429D8)
  addu       $16, $19, $0
  ori        $16, $16, (0x80281001 & 0xFFFF)
  addu       $4, $19, $0
  ori        $4, $4, (0x80281000 & 0xFFFF)
  lui        $5, %hi(D_800429E4)
  jal        func_80041FCC
   addiu     $5, $5, %lo(D_800429E4)
  addiu      $18, $0, 0x28
  lui        $17, (0x80306400 >> 16)
  ori        $17, $17, (0x80306400 & 0xFFFF)
.L80040330:
  jal        func_800422C0
   nop
  addiu      $8, $0, 0x19
  addiu      $7, $17, 0x32
.L80040340:
  lbu        $2, 0x0($16)
  sll        $3, $2, 1
  addu       $3, $3, $2
  addu       $3, $19, $3
  lbu        $4, %lo(D_80280000)($3)
  lbu        $5, %lo(D_80280001)($3)
  lbu        $6, %lo(D_80280002)($3)
  addu       $2, $5, $4
  addu       $2, $6, $2
  blez       $2, .L80040384
   addiu     $16, $16, 0x1
  sll        $2, $4, 11
  sll        $3, $5, 6
  or         $2, $2, $3
  sll        $3, $6, 1
  or         $2, $2, $3
  sh         $2, 0x0($7)
.L80040384:
  addiu      $8, $8, 0x1
  slti       $2, $8, 0x129
  bnez       $2, .L80040340
   addiu     $7, $7, 0x2
  addiu      $18, $18, 0x1
  slti       $2, $18, 0xB8
  bnez       $2, .L80040330
   addiu     $17, $17, 0x280
  lui        $3, (0x13002 >> 16)
  ori        $3, $3, (0x13002 & 0xFFFF)
  lui        $4, (0x3E52239 >> 16)
  ori        $4, $4, (0x3E52239 & 0xFFFF)
  lui        $8, (0xC150C15 >> 16)
  ori        $8, $8, (0xC150C15 & 0xFFFF)
  lui        $7, (0x6C02EC >> 16)
  ori        $7, $7, (0x6C02EC & 0xFFFF)
  lui        $6, (0x2501FF >> 16)
  ori        $6, $6, (0x2501FF & 0xFFFF)
  lui        $5, (0xE0204 >> 16)
  ori        $5, $5, (0xE0204 & 0xFFFF)
  lui        $2, %hi(VI_STATUS_REG)
  sw         $3, %lo(VI_STATUS_REG)($2)
  lui        $3, (0x80300000 >> 16)
  sw         $3, %lo(VI_DRAM_ADDR_REG)($2)
  addiu      $3, $0, 0x140
  sw         $3, %lo(VI_WIDTH_REG)($2)
  addiu      $3, $0, 0x20D
  sw         $3, %lo(VI_V_SYNC_REG)($2)
  addiu      $3, $0, 0xC15
  sw         $3, %lo(VI_H_SYNC_REG)($2)
  addiu      $3, $0, 0x200
  sw         $3, %lo(VI_X_SCALE_REG)($2)
  addiu      $3, $0, 0x400
  sw         $4, %lo(VI_BURST_REG)($2)
  sw         $8, %lo(VI_LEAP_REG)($2)
  sw         $7, %lo(VI_H_START_REG)($2)
  sw         $6, %lo(VI_V_START_REG)($2)
  sw         $5, %lo(VI_V_BURST_REG)($2)
  sw         $3, %lo(VI_Y_SCALE_REG)($2)
  lw         $31, 0x20($29)
  lw         $19, 0x1C($29)
  lw         $18, 0x18($29)
  lw         $17, 0x14($29)
  lw         $16, 0x10($29)
  jr         $31
   addiu     $29, $29, 0x28
.end func_800402D8
