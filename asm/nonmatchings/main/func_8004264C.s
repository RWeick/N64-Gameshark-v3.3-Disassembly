.globl func_8004264C
.ent func_8004264C
func_8004264C:
  addiu      $2, $0, 0x9F
  addiu      $29, $29, -0x18
  sw         $31, 0x10($29)
  jal        func_800426D4
   addiu     $4, $0, 0x200
  jal        func_80042694
   addu      $4, $0, $0
  jal        func_80042584
   addu      $4, $0, $0
  lw         $31, 0x10($29)
  jr         $31
   addiu     $29, $29, 0x18
.end func_8004264C
