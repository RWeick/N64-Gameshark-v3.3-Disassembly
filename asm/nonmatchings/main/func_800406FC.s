.globl func_800406FC
.ent func_800406FC
func_800406FC:
  addiu      $29, $29, -0x30
  lui        $2, %hi(D_80042A00)
  addu       $3, $0, $0
  addiu      $5, $29, 0x10
  andi       $4, $4, 0xFF
  sw         $31, 0x28($29)
  addiu      $9, $2, %lo(D_80042A00)
  lwl        $6, 0x0($9)
  lwr        $6, 0x3($9)
  lwl        $7, 0x4($9)
  lwr        $7, 0x7($9)
  lwl        $8, 0x8($9)
  lwr        $8, 0xB($9)
  swl        $6, 0x10($29)
  swr        $6, 0x13($29)
  swl        $7, 0x14($29)
  swr        $7, 0x17($29)
  swl        $8, 0x18($29)
  swr        $8, 0x1B($29)
  lwl        $6, 0xC($9)
  lwr        $6, 0xF($9)
  lwl        $7, 0x10($9)
  lwr        $7, 0x13($9)
  lb         $8, 0x14($9)
  swl        $6, 0x1C($29)
  swr        $6, 0x1F($29)
  swl        $7, 0x20($29)
  swr        $7, 0x23($29)
  sb         $8, 0x24($29)
  lb         $6, 0x15($9)
  sb         $6, 0x25($29)
  addu       $2, $5, $3
.L8004077C:
  lbu        $2, 0x0($2)
  bnel       $2, $4, .L800407A0
   addiu     $3, $3, 0x2
  addu       $2, $3, $5
  lbu        $4, 0x1($2)
  jal        func_8004066C
   nop
  j          .L800407B0
   addiu     $2, $0, 0x1
.L800407A0:
  sltiu      $2, $3, 0x16
  bnez       $2, .L8004077C
   addu      $2, $5, $3
  addu       $2, $0, $0
.L800407B0:
  lw         $31, 0x28($29)
  jr         $31
   addiu     $29, $29, 0x30
.end func_800406FC
