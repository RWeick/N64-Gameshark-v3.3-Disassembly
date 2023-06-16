.globl func_800427E0
.ent func_800427E0
func_800427E0:
  addiu      $29, $29, -0x18
  sw         $16, 0x10($29)
  addu       $16, $4, $0
  sw         $31, 0x14($29)
  jal        func_800427A4
   sra       $4, $16, 8
  addu       $4, $16, $0
  jal        func_800427A4
   addu      $16, $2, $0
  sll        $16, $16, 8
  or         $2, $16, $2
  lw         $31, 0x14($29)
  lw         $16, 0x10($29)
  jr         $31
   addiu     $29, $29, 0x18
.end func_800427E0
