.globl func_80042928
.ent func_80042928
func_80042928:
  addiu      $29, $29, -0x18
  lui        $5, %hi(D_80042B14)
  lw         $2, %lo(D_80042B14)($5)
  addiu      $3, $0, 0xB
  sw         $31, 0x14($29)
  sw         $16, 0x10($29)
  addiu      $2, $2, 0x1
  bne        $2, $3, .L80042990
   sw        $2, %lo(D_80042B14)($5)
  lui        $16, %hi(D_80042B10)
  lbu        $4, %lo(D_80042B10)($16)
  jal        func_80042584
   sw        $0, %lo(D_80042B14)($5)
  lbu        $2, %lo(D_80042B10)($16)
  addiu      $3, $0, 0x64
  addiu      $2, $2, 0x1
  sb         $2, %lo(D_80042B10)($16)
  andi       $2, $2, 0xFF
  bne        $2, $3, .L8004297C
   addiu     $2, $0, 0x67
  sb         $2, %lo(D_80042B10)($16)
.L8004297C:
  lbu        $3, %lo(D_80042B10)($16)
  addiu      $2, $0, 0x68
  bne        $3, $2, .L80042990
   addiu     $2, $0, 0x61
  sb         $2, %lo(D_80042B10)($16)
.L80042990:
  jal        func_800426F8
   nop
  andi       $2, $2, 0x10
  beqz       $2, .L800429B0
   addu      $2, $0, $0
  jal        func_800426F8
   nop
  andi       $2, $2, 0xF
.L800429B0:
  lw         $31, 0x14($29)
  lw         $16, 0x10($29)
  jr         $31
   addiu     $29, $29, 0x18
.end func_80042928
