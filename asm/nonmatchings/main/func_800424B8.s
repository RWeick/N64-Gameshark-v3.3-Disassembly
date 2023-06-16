.globl func_800424B8
.ent func_800424B8
func_800424B8:
  addiu      $3, $0, 0x2
  lw         $2, 0x10($4)
.globl func_800424C0
func_800424C0:
  lui        $4, %hi(VI_CURRENT_REG)
  lw         $2, %lo(VI_CURRENT_REG)($4)
  addiu      $3, $0, 0x2
  andi       $2, $2, 0x3FE
  beq        $2, $3, .L800424EC
   nop
.L800424D8:
  lw         $2, %lo(VI_CURRENT_REG)($4)
  andi       $2, $2, 0x3FE
  bne        $2, $3, .L800424D8
   nop
  addiu      $3, $0, 0x2
.L800424EC:
  lw         $2, %lo(VI_CURRENT_REG)($4)
  andi       $2, $2, 0x3FE
  beq        $2, $3, .L800424EC
   nop
  jr         $31
   nop
.end func_800424B8
