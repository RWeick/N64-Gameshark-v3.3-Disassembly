
build/src/main.c.o:     file format elf32-tradbigmips


Disassembly of section .text:

00000000 <func_80040180>:
       0:	27bdffe8 	addiu	sp,sp,-24
       4:	afb00010 	sw	s0,16(sp)
       8:	00008021 	move	s0,zero
       c:	3c040002 	lui	a0,0x2
      10:	348457ff 	ori	a0,a0,0x57ff
      14:	3c038030 	lui	v1,0x8030
      18:	afbf0014 	sw	ra,20(sp)
      1c:	ac600000 	sw	zero,0(v1)
      20:	26100001 	addiu	s0,s0,1
      24:	0090102a 	slt	v0,a0,s0
      28:	1040fffc 	beqz	v0,1c <func_80040180+0x1c>
      2c:	24630004 	addiu	v1,v1,4
      30:	0c0008c2 	jal	2308 <pifUnlock>
			30: R_MIPS_26	.text
      34:	00008021 	move	s0,zero
      38:	3c048018 	lui	a0,0x8018
      3c:	0c0007e0 	jal	1f80 <func_80042100>
			3c: R_MIPS_26	.text
      40:	3c058020 	lui	a1,0x8020
      44:	0c000056 	jal	158 <func_800402D8>
			44: R_MIPS_26	.text
      48:	00000000 	nop
      4c:	0c000901 	jal	2404 <func_80042584>
			4c: R_MIPS_26	.text
      50:	24040035 	li	a0,53
      54:	0c0008d0 	jal	2340 <func_800424C0>
			54: R_MIPS_26	.text
      58:	26100001 	addiu	s0,s0,1
      5c:	2a02003c 	slti	v0,s0,60
      60:	1440fffc 	bnez	v0,54 <func_80040180+0x54>
      64:	00000000 	nop
      68:	0c000901 	jal	2404 <func_80042584>
			68: R_MIPS_26	.text
      6c:	24040034 	li	a0,52
      70:	00008021 	move	s0,zero
      74:	0c0008d0 	jal	2340 <func_800424C0>
			74: R_MIPS_26	.text
      78:	26100001 	addiu	s0,s0,1
      7c:	2a02003c 	slti	v0,s0,60
      80:	1440fffc 	bnez	v0,74 <func_80040180+0x74>
      84:	00000000 	nop
      88:	0c000901 	jal	2404 <func_80042584>
			88: R_MIPS_26	.text
      8c:	24040033 	li	a0,51
      90:	3c048020 	lui	a0,0x8020
      94:	34840400 	ori	a0,a0,0x400
      98:	3c050000 	lui	a1,0x0
			98: R_MIPS_HI16	D_800429C0
      9c:	0c000793 	jal	1e4c <func_80041FCC>
			9c: R_MIPS_26	.text
      a0:	24a50000 	addiu	a1,a1,0
			a0: R_MIPS_LO16	D_800429C0
      a4:	0c000901 	jal	2404 <func_80042584>
			a4: R_MIPS_26	.text
      a8:	24040032 	li	a0,50
      ac:	3c048078 	lui	a0,0x8078
      b0:	34840800 	ori	a0,a0,0x800
      b4:	3c050000 	lui	a1,0x0
			b4: R_MIPS_HI16	D_800429CC
      b8:	0c000793 	jal	1e4c <func_80041FCC>
			b8: R_MIPS_26	.text
      bc:	24a50000 	addiu	a1,a1,0
			bc: R_MIPS_LO16	D_800429CC
      c0:	0c000901 	jal	2404 <func_80042584>
			c0: R_MIPS_26	.text
      c4:	24040031 	li	a0,49
      c8:	00008021 	move	s0,zero
      cc:	0c0008d0 	jal	2340 <func_800424C0>
			cc: R_MIPS_26	.text
      d0:	26100001 	addiu	s0,s0,1
      d4:	2a02003c 	slti	v0,s0,60
      d8:	1440fffc 	bnez	v0,cc <func_80040180+0xcc>
      dc:	3c048020 	lui	a0,0x8020
      e0:	0c00086c 	jal	21b0 <func_8004231C+0x14>
			e0: R_MIPS_26	.text
      e4:	34840400 	ori	a0,a0,0x400
      e8:	8fbf0014 	lw	ra,20(sp)
      ec:	8fb00010 	lw	s0,16(sp)
      f0:	03e00008 	jr	ra
      f4:	27bd0018 	addiu	sp,sp,24

000000f8 <func_80040278>:
      f8:	27bdffe0 	addiu	sp,sp,-32
      fc:	3c04b200 	lui	a0,0xb200
     100:	afb10014 	sw	s1,20(sp)
     104:	3c110000 	lui	s1,0x0
			104: R_MIPS_HI16	D_80042AA0
     108:	3c020060 	lui	v0,0x60
     10c:	afbf0018 	sw	ra,24(sp)
     110:	afb00010 	sw	s0,16(sp)
     114:	0c000120 	jal	480 <func_80040600>
			114: R_MIPS_26	.text
     118:	ae220000 	sw	v0,0(s1)
			118: R_MIPS_LO16	D_80042AA0
     11c:	3c10b2c0 	lui	s0,0xb2c0
     120:	8e100000 	lw	s0,0(s0)
     124:	0c000120 	jal	480 <func_80040600>
			124: R_MIPS_26	.text
     128:	3c04be00 	lui	a0,0xbe00
     12c:	3c038037 	lui	v1,0x8037
     130:	34631240 	ori	v1,v1,0x1240
     134:	8fbf0018 	lw	ra,24(sp)
     138:	3c020040 	lui	v0,0x40
     13c:	ae220000 	sw	v0,0(s1)
			13c: R_MIPS_LO16	D_80042AA0
     140:	8fb10014 	lw	s1,20(sp)
     144:	02038026 	xor	s0,s0,v1
     148:	2e020001 	sltiu	v0,s0,1
     14c:	8fb00010 	lw	s0,16(sp)
     150:	03e00008 	jr	ra
     154:	27bd0020 	addiu	sp,sp,32

00000158 <func_800402D8>:
     158:	27bdffd8 	addiu	sp,sp,-40
     15c:	afbf0020 	sw	ra,32(sp)
     160:	afb3001c 	sw	s3,28(sp)
     164:	afb20018 	sw	s2,24(sp)
     168:	afb10014 	sw	s1,20(sp)
     16c:	0c0000af 	jal	2bc <func_8004043C>
			16c: R_MIPS_26	.text
     170:	afb00010 	sw	s0,16(sp)
     174:	3c138028 	lui	s3,0x8028
     178:	02602021 	move	a0,s3
     17c:	3c050000 	lui	a1,0x0
			17c: R_MIPS_HI16	D_800429D8
     180:	0c000793 	jal	1e4c <func_80041FCC>
			180: R_MIPS_26	.text
     184:	24a50000 	addiu	a1,a1,0
			184: R_MIPS_LO16	D_800429D8
     188:	02608021 	move	s0,s3
     18c:	36101001 	ori	s0,s0,0x1001
     190:	02602021 	move	a0,s3
     194:	34841000 	ori	a0,a0,0x1000
     198:	3c050000 	lui	a1,0x0
			198: R_MIPS_HI16	D_800429E4
     19c:	0c000793 	jal	1e4c <func_80041FCC>
			19c: R_MIPS_26	.text
     1a0:	24a50000 	addiu	a1,a1,0
			1a0: R_MIPS_LO16	D_800429E4
     1a4:	24120028 	li	s2,40
     1a8:	3c118030 	lui	s1,0x8030
     1ac:	36316400 	ori	s1,s1,0x6400
     1b0:	0c000850 	jal	2140 <func_800422C0>
			1b0: R_MIPS_26	.text
     1b4:	00000000 	nop
     1b8:	24080019 	li	t0,25
     1bc:	26270032 	addiu	a3,s1,50
     1c0:	92020000 	lbu	v0,0(s0)
     1c4:	00021840 	sll	v1,v0,0x1
     1c8:	00621821 	addu	v1,v1,v0
     1cc:	02631821 	addu	v1,s3,v1
     1d0:	90640000 	lbu	a0,0(v1)
			1d0: R_MIPS_LO16	D_80280000
     1d4:	90650000 	lbu	a1,0(v1)
			1d4: R_MIPS_LO16	D_80280001
     1d8:	90660000 	lbu	a2,0(v1)
			1d8: R_MIPS_LO16	D_80280002
     1dc:	00a41021 	addu	v0,a1,a0
     1e0:	00c21021 	addu	v0,a2,v0
     1e4:	18400007 	blez	v0,204 <func_800402D8+0xac>
     1e8:	26100001 	addiu	s0,s0,1
     1ec:	000412c0 	sll	v0,a0,0xb
     1f0:	00051980 	sll	v1,a1,0x6
     1f4:	00431025 	or	v0,v0,v1
     1f8:	00061840 	sll	v1,a2,0x1
     1fc:	00431025 	or	v0,v0,v1
     200:	a4e20000 	sh	v0,0(a3)
     204:	25080001 	addiu	t0,t0,1
     208:	29020129 	slti	v0,t0,297
     20c:	1440ffec 	bnez	v0,1c0 <func_800402D8+0x68>
     210:	24e70002 	addiu	a3,a3,2
     214:	26520001 	addiu	s2,s2,1
     218:	2a4200b8 	slti	v0,s2,184
     21c:	1440ffe4 	bnez	v0,1b0 <func_800402D8+0x58>
     220:	26310280 	addiu	s1,s1,640
     224:	3c030001 	lui	v1,0x1
     228:	34633002 	ori	v1,v1,0x3002
     22c:	3c0403e5 	lui	a0,0x3e5
     230:	34842239 	ori	a0,a0,0x2239
     234:	3c080c15 	lui	t0,0xc15
     238:	35080c15 	ori	t0,t0,0xc15
     23c:	3c07006c 	lui	a3,0x6c
     240:	34e702ec 	ori	a3,a3,0x2ec
     244:	3c060025 	lui	a2,0x25
     248:	34c601ff 	ori	a2,a2,0x1ff
     24c:	3c05000e 	lui	a1,0xe
     250:	34a50204 	ori	a1,a1,0x204
     254:	3c020000 	lui	v0,0x0
			254: R_MIPS_HI16	VI_STATUS_REG
     258:	ac430000 	sw	v1,0(v0)
			258: R_MIPS_LO16	VI_STATUS_REG
     25c:	3c038030 	lui	v1,0x8030
     260:	ac430000 	sw	v1,0(v0)
			260: R_MIPS_LO16	VI_DRAM_ADDR_REG
     264:	24030140 	li	v1,320
     268:	ac430000 	sw	v1,0(v0)
			268: R_MIPS_LO16	VI_WIDTH_REG
     26c:	2403020d 	li	v1,525
     270:	ac430000 	sw	v1,0(v0)
			270: R_MIPS_LO16	VI_V_SYNC_REG
     274:	24030c15 	li	v1,3093
     278:	ac430000 	sw	v1,0(v0)
			278: R_MIPS_LO16	VI_H_SYNC_REG
     27c:	24030200 	li	v1,512
     280:	ac430000 	sw	v1,0(v0)
			280: R_MIPS_LO16	VI_X_SCALE_REG
     284:	24030400 	li	v1,1024
     288:	ac440000 	sw	a0,0(v0)
			288: R_MIPS_LO16	VI_BURST_REG
     28c:	ac480000 	sw	t0,0(v0)
			28c: R_MIPS_LO16	VI_LEAP_REG
     290:	ac470000 	sw	a3,0(v0)
			290: R_MIPS_LO16	VI_H_START_REG
     294:	ac460000 	sw	a2,0(v0)
			294: R_MIPS_LO16	VI_V_START_REG
     298:	ac450000 	sw	a1,0(v0)
			298: R_MIPS_LO16	VI_V_BURST_REG
     29c:	ac430000 	sw	v1,0(v0)
			29c: R_MIPS_LO16	VI_Y_SCALE_REG
     2a0:	8fbf0020 	lw	ra,32(sp)
     2a4:	8fb3001c 	lw	s3,28(sp)
     2a8:	8fb20018 	lw	s2,24(sp)
     2ac:	8fb10014 	lw	s1,20(sp)
     2b0:	8fb00010 	lw	s0,16(sp)
     2b4:	03e00008 	jr	ra
     2b8:	27bd0028 	addiu	sp,sp,40

000002bc <func_8004043C>:
     2bc:	27bdffe0 	addiu	sp,sp,-32
     2c0:	afb20018 	sw	s2,24(sp)
     2c4:	3c120000 	lui	s2,0x0
			2c4: R_MIPS_HI16	D_80210000
     2c8:	02402021 	move	a0,s2
     2cc:	3c050000 	lui	a1,0x0
			2cc: R_MIPS_HI16	D_800429F0
     2d0:	24a50000 	addiu	a1,a1,0
			2d0: R_MIPS_LO16	D_800429F0
     2d4:	afbf001c 	sw	ra,28(sp)
     2d8:	afb10014 	sw	s1,20(sp)
     2dc:	0c000793 	jal	1e4c <func_80041FCC>
			2dc: R_MIPS_26	.text
     2e0:	afb00010 	sw	s0,16(sp)
     2e4:	02402021 	move	a0,s2
     2e8:	00008821 	move	s1,zero
     2ec:	00008021 	move	s0,zero
     2f0:	94820000 	lhu	v0,0(a0)
			2f0: R_MIPS_LO16	D_80210000
     2f4:	26100001 	addiu	s0,s0,1
     2f8:	000219c2 	srl	v1,v0,0x7
     2fc:	3042007f 	andi	v0,v0,0x7f
     300:	00021240 	sll	v0,v0,0x9
     304:	00621825 	or	v1,v1,v0
     308:	00031842 	srl	v1,v1,0x1
     30c:	30637bde 	andi	v1,v1,0x7bde
     310:	a4830000 	sh	v1,0(a0)
			310: R_MIPS_LO16	D_80210000
     314:	2a020040 	slti	v0,s0,64
     318:	1440fff5 	bnez	v0,2f0 <func_8004043C+0x34>
     31c:	24840002 	addiu	a0,a0,2
			31c: R_MIPS_LO16	D_80210000
     320:	26310001 	addiu	s1,s1,1
     324:	2a220030 	slti	v0,s1,48
     328:	1440fff1 	bnez	v0,2f0 <func_8004043C+0x34>
     32c:	00008021 	move	s0,zero
     330:	00008821 	move	s1,zero
     334:	02002021 	move	a0,s0
     338:	02202821 	move	a1,s1
     33c:	0c0000df 	jal	37c <func_800404FC>
			33c: R_MIPS_26	.text
     340:	02403021 	move	a2,s2
     344:	26100040 	addiu	s0,s0,64
     348:	2a020140 	slti	v0,s0,320
     34c:	1440fffa 	bnez	v0,338 <func_8004043C+0x7c>
     350:	02002021 	move	a0,s0
     354:	26310030 	addiu	s1,s1,48
     358:	2a2200f0 	slti	v0,s1,240
     35c:	1440fff5 	bnez	v0,334 <func_8004043C+0x78>
     360:	00008021 	move	s0,zero
     364:	8fbf001c 	lw	ra,28(sp)
     368:	8fb20018 	lw	s2,24(sp)
     36c:	8fb10014 	lw	s1,20(sp)
     370:	8fb00010 	lw	s0,16(sp)
     374:	03e00008 	jr	ra
     378:	27bd0020 	addiu	sp,sp,32

0000037c <func_800404FC>:
     37c:	00003821 	move	a3,zero
     380:	00051080 	sll	v0,a1,0x2
     384:	00451021 	addu	v0,v0,a1
     388:	000211c0 	sll	v0,v0,0x7
     38c:	00042040 	sll	a0,a0,0x1
     390:	3c030000 	lui	v1,0x0
			390: R_MIPS_HI16	D_80300000
     394:	00832021 	addu	a0,a0,v1
     398:	00442821 	addu	a1,v0,a0
     39c:	00002021 	move	a0,zero
     3a0:	00a01821 	move	v1,a1
     3a4:	94c20000 	lhu	v0,0(a2)
     3a8:	24c60002 	addiu	a2,a2,2
     3ac:	24840001 	addiu	a0,a0,1
     3b0:	a4620000 	sh	v0,0(v1)
			3b0: R_MIPS_LO16	D_80300000
     3b4:	28820040 	slti	v0,a0,64
     3b8:	1440fffa 	bnez	v0,3a4 <func_800404FC+0x28>
     3bc:	24630000 	addiu	v1,v1,0
			3bc: R_MIPS_LO16	D_80300002
     3c0:	24e70001 	addiu	a3,a3,1
     3c4:	28e20030 	slti	v0,a3,48
     3c8:	1440fff4 	bnez	v0,39c <func_800404FC+0x20>
     3cc:	24a50000 	addiu	a1,a1,0
			3cc: R_MIPS_LO16	D_80300280
     3d0:	03e00008 	jr	ra
     3d4:	00000000 	nop
     3d8:	3c038004 	lui	v1,0x8004
     3dc:	afb00010 	sw	s0,16(sp)

000003e0 <wait_PI>:
     3e0:	3c030000 	lui	v1,0x0
			3e0: R_MIPS_HI16	PI_STATUS_REG
     3e4:	8c620000 	lw	v0,0(v1)
			3e4: R_MIPS_LO16	PI_STATUS_REG
     3e8:	30420003 	andi	v0,v0,0x3
     3ec:	1440fffd 	bnez	v0,3e4 <wait_PI+0x4>
     3f0:	00000000 	nop
     3f4:	03e00008 	jr	ra
     3f8:	00000000 	nop
     3fc:	8fbf0014 	lw	ra,20(sp)

00000400 <func_80040580>:
     400:	27bdffe8 	addiu	sp,sp,-24
     404:	3c020000 	lui	v0,0x0
			404: R_MIPS_HI16	D_80042AA4
     408:	3c030000 	lui	v1,0x0
			408: R_MIPS_HI16	D_80042AA0
     40c:	afb00010 	sw	s0,16(sp)
     410:	8c500000 	lw	s0,0(v0)
			410: R_MIPS_LO16	D_80042AA4
     414:	8c620000 	lw	v0,0(v1)
			414: R_MIPS_LO16	D_80042AA0
     418:	afbf0014 	sw	ra,20(sp)
     41c:	02028025 	or	s0,s0,v0
     420:	0c0000f8 	jal	3e0 <wait_PI>
			420: R_MIPS_26	.text
     424:	02048025 	or	s0,s0,a0
     428:	8e020000 	lw	v0,0(s0)
     42c:	8fbf0014 	lw	ra,20(sp)
     430:	8fb00010 	lw	s0,16(sp)
     434:	03e00008 	jr	ra
     438:	27bd0018 	addiu	sp,sp,24

0000043c <func_800405BC>:
     43c:	27bdffe8 	addiu	sp,sp,-24
     440:	30a5ffff 	andi	a1,a1,0xffff
     444:	00051c00 	sll	v1,a1,0x10
     448:	3c020000 	lui	v0,0x0
			448: R_MIPS_HI16	D_80042AA4
     44c:	3c060000 	lui	a2,0x0
			44c: R_MIPS_HI16	D_80042AA0
     450:	8c420000 	lw	v0,0(v0)
			450: R_MIPS_LO16	D_80042AA4
     454:	8cc60000 	lw	a2,0(a2)
			454: R_MIPS_LO16	D_80042AA0
     458:	00651825 	or	v1,v1,a1
     45c:	afbf0010 	sw	ra,16(sp)
     460:	00461025 	or	v0,v0,a2
     464:	00441025 	or	v0,v0,a0
     468:	ac430000 	sw	v1,0(v0)
     46c:	0c0000f8 	jal	3e0 <wait_PI>
			46c: R_MIPS_26	.text
     470:	00000000 	nop
     474:	8fbf0010 	lw	ra,16(sp)
     478:	03e00008 	jr	ra
     47c:	27bd0018 	addiu	sp,sp,24

00000480 <func_80040600>:
     480:	27bdffe8 	addiu	sp,sp,-24
     484:	3c020f00 	lui	v0,0xf00
     488:	afb00010 	sw	s0,16(sp)
     48c:	00828024 	and	s0,a0,v0
     490:	3c021000 	lui	v0,0x1000
     494:	02028025 	or	s0,s0,v0
     498:	24040400 	li	a0,1024
     49c:	afbf0014 	sw	ra,20(sp)
     4a0:	0c00010f 	jal	43c <func_800405BC>
			4a0: R_MIPS_26	.text
     4a4:	00102e02 	srl	a1,s0,0x18
     4a8:	3c030000 	lui	v1,0x0
			4a8: R_MIPS_HI16	D_80042AA4
     4ac:	3c02b000 	lui	v0,0xb000
     4b0:	8fbf0014 	lw	ra,20(sp)
     4b4:	02028025 	or	s0,s0,v0
     4b8:	ac700000 	sw	s0,0(v1)
			4b8: R_MIPS_LO16	D_80042AA4
     4bc:	8fb00010 	lw	s0,16(sp)
     4c0:	03e00008 	jr	ra
     4c4:	27bd0018 	addiu	sp,sp,24

000004c8 <func_80040648>:
     4c8:	27bdffe8 	addiu	sp,sp,-24
     4cc:	3c05007f 	lui	a1,0x7f
     4d0:	34a5f7ff 	ori	a1,a1,0xf7ff
     4d4:	afbf0010 	sw	ra,16(sp)
     4d8:	0c00010f 	jal	43c <func_800405BC>
			4d8: R_MIPS_26	.text
     4dc:	24040600 	li	a0,1536
     4e0:	8fbf0010 	lw	ra,16(sp)
     4e4:	03e00008 	jr	ra
     4e8:	27bd0018 	addiu	sp,sp,24

000004ec <func_8004066C>:
     4ec:	27bdffd8 	addiu	sp,sp,-40
     4f0:	afb3001c 	sw	s3,28(sp)
     4f4:	00809821 	move	s3,a0
     4f8:	afbf0020 	sw	ra,32(sp)
     4fc:	afb20018 	sw	s2,24(sp)
     500:	afb10014 	sw	s1,20(sp)
     504:	0c000132 	jal	4c8 <func_80040648>
			504: R_MIPS_26	.text
     508:	afb00010 	sw	s0,16(sp)
     50c:	24110001 	li	s1,1
     510:	3c120200 	lui	s2,0x200
     514:	36520200 	ori	s2,s2,0x200
     518:	02711024 	and	v0,s3,s1
     51c:	10400003 	beqz	v0,52c <func_8004066C+0x40>
     520:	00008021 	move	s0,zero
     524:	3c100100 	lui	s0,0x100
     528:	36100100 	ori	s0,s0,0x100
     52c:	24040800 	li	a0,2048
     530:	0c00010f 	jal	43c <func_800405BC>
			530: R_MIPS_26	.text
     534:	02002821 	move	a1,s0
     538:	24040800 	li	a0,2048
     53c:	0c00010f 	jal	43c <func_800405BC>
			53c: R_MIPS_26	.text
     540:	02122825 	or	a1,s0,s2
     544:	24040800 	li	a0,2048
     548:	0c00010f 	jal	43c <func_800405BC>
			548: R_MIPS_26	.text
     54c:	02002821 	move	a1,s0
     550:	00118840 	sll	s1,s1,0x1
     554:	2a220100 	slti	v0,s1,256
     558:	5440fff0 	bnezl	v0,51c <func_8004066C+0x30>
     55c:	02711024 	and	v0,s3,s1
     560:	8fbf0020 	lw	ra,32(sp)
     564:	8fb3001c 	lw	s3,28(sp)
     568:	8fb20018 	lw	s2,24(sp)
     56c:	8fb10014 	lw	s1,20(sp)
     570:	8fb00010 	lw	s0,16(sp)
     574:	03e00008 	jr	ra
     578:	27bd0028 	addiu	sp,sp,40

0000057c <func_800406FC>:
     57c:	27bdffd0 	addiu	sp,sp,-48
     580:	3c020000 	lui	v0,0x0
			580: R_MIPS_HI16	D_80042A00
     584:	00001821 	move	v1,zero
     588:	27a50010 	addiu	a1,sp,16
     58c:	308400ff 	andi	a0,a0,0xff
     590:	afbf0028 	sw	ra,40(sp)
     594:	24490000 	addiu	t1,v0,0
			594: R_MIPS_LO16	D_80042A00
     598:	89260000 	lwl	a2,0(t1)
     59c:	99260003 	lwr	a2,3(t1)
     5a0:	89270004 	lwl	a3,4(t1)
     5a4:	99270007 	lwr	a3,7(t1)
     5a8:	89280008 	lwl	t0,8(t1)
     5ac:	9928000b 	lwr	t0,11(t1)
     5b0:	aba60010 	swl	a2,16(sp)
     5b4:	bba60013 	swr	a2,19(sp)
     5b8:	aba70014 	swl	a3,20(sp)
     5bc:	bba70017 	swr	a3,23(sp)
     5c0:	aba80018 	swl	t0,24(sp)
     5c4:	bba8001b 	swr	t0,27(sp)
     5c8:	8926000c 	lwl	a2,12(t1)
     5cc:	9926000f 	lwr	a2,15(t1)
     5d0:	89270010 	lwl	a3,16(t1)
     5d4:	99270013 	lwr	a3,19(t1)
     5d8:	81280014 	lb	t0,20(t1)
     5dc:	aba6001c 	swl	a2,28(sp)
     5e0:	bba6001f 	swr	a2,31(sp)
     5e4:	aba70020 	swl	a3,32(sp)
     5e8:	bba70023 	swr	a3,35(sp)
     5ec:	a3a80024 	sb	t0,36(sp)
     5f0:	81260015 	lb	a2,21(t1)
     5f4:	a3a60025 	sb	a2,37(sp)
     5f8:	00a31021 	addu	v0,a1,v1
     5fc:	90420000 	lbu	v0,0(v0)
     600:	54440007 	bnel	v0,a0,620 <func_800406FC+0xa4>
     604:	24630002 	addiu	v1,v1,2
     608:	00651021 	addu	v0,v1,a1
     60c:	90440001 	lbu	a0,1(v0)
     610:	0c00013b 	jal	4ec <func_8004066C>
			610: R_MIPS_26	.text
     614:	00000000 	nop
     618:	0800018c 	j	630 <func_800406FC+0xb4>
			618: R_MIPS_26	.text
     61c:	24020001 	li	v0,1
     620:	2c620016 	sltiu	v0,v1,22
     624:	1440fff5 	bnez	v0,5fc <func_800406FC+0x80>
     628:	00a31021 	addu	v0,a1,v1
     62c:	00001021 	move	v0,zero
     630:	8fbf0028 	lw	ra,40(sp)
     634:	03e00008 	jr	ra
     638:	27bd0030 	addiu	sp,sp,48

0000063c <func_800407BC>:
     63c:	00431025 	or	v0,v0,v1

00000640 <func_800407C0>:
     640:	03e00008 	jr	ra
     644:	00000000 	nop

00000648 <func_800407C8>:
     648:	27bdffe0 	addiu	sp,sp,-32
     64c:	afbf0018 	sw	ra,24(sp)
     650:	afb10014 	sw	s1,20(sp)
     654:	10800007 	beqz	a0,674 <func_800407C8+0x2c>
     658:	afb00010 	sw	s0,16(sp)
     65c:	3c040000 	lui	a0,0x0
			65c: R_MIPS_HI16	D_80042A58
     660:	3c030000 	lui	v1,0x0
			660: R_MIPS_HI16	D_80042A44
     664:	8c820000 	lw	v0,0(a0)
			664: R_MIPS_LO16	D_80042A58
     668:	8c630000 	lw	v1,0(v1)
			668: R_MIPS_LO16	D_80042A44
     66c:	00431025 	or	v0,v0,v1
     670:	ac820000 	sw	v0,0(a0)
			670: R_MIPS_LO16	D_80042A58
     674:	3c100000 	lui	s0,0x0
			674: R_MIPS_HI16	D_80042A44
     678:	8e020000 	lw	v0,0(s0)
			678: R_MIPS_LO16	D_80042A44
     67c:	00021042 	srl	v0,v0,0x1
     680:	1440001b 	bnez	v0,6f0 <func_800407C8+0xa8>
     684:	ae020000 	sw	v0,0(s0)
			684: R_MIPS_LO16	D_80042A44
     688:	3c050000 	lui	a1,0x0
			688: R_MIPS_HI16	D_80042A70
     68c:	3c020000 	lui	v0,0x0
			68c: R_MIPS_HI16	D_80042A88
     690:	3c110000 	lui	s1,0x0
			690: R_MIPS_HI16	D_80042A58
     694:	26240000 	addiu	a0,s1,0
			694: R_MIPS_LO16	D_80042A58
     698:	8ca30000 	lw	v1,0(a1)
			698: R_MIPS_LO16	D_80042A70
     69c:	8c420000 	lw	v0,0(v0)
			69c: R_MIPS_LO16	D_80042A88
     6a0:	90840003 	lbu	a0,3(a0)
     6a4:	00431021 	addu	v0,v0,v1
     6a8:	a0440000 	sb	a0,0(v0)
     6ac:	3c020000 	lui	v0,0x0
			6ac: R_MIPS_HI16	D_80042A8C
     6b0:	8c420000 	lw	v0,0(v0)
			6b0: R_MIPS_LO16	D_80042A8C
     6b4:	24630001 	addiu	v1,v1,1
     6b8:	aca30000 	sw	v1,0(a1)
			6b8: R_MIPS_LO16	D_80042A70
     6bc:	0062182a 	slt	v1,v1,v0
     6c0:	14600005 	bnez	v1,6d8 <func_800407C8+0x90>
     6c4:	3c020000 	lui	v0,0x0
			6c4: R_MIPS_HI16	D_80042AB4
     6c8:	3c040000 	lui	a0,0x0
			6c8: R_MIPS_HI16	D_80042A20
     6cc:	0c000190 	jal	640 <func_800407C0>
			6cc: R_MIPS_26	.text
     6d0:	24840000 	addiu	a0,a0,0
			6d0: R_MIPS_LO16	D_80042A20
     6d4:	3c020000 	lui	v0,0x0
			6d4: R_MIPS_HI16	D_80042AB4
     6d8:	8c430000 	lw	v1,0(v0)
			6d8: R_MIPS_LO16	D_80042AB4
     6dc:	24040080 	li	a0,128
     6e0:	ae200000 	sw	zero,0(s1)
			6e0: R_MIPS_LO16	D_80042A58
     6e4:	ae040000 	sw	a0,0(s0)
			6e4: R_MIPS_LO16	D_80042A44
     6e8:	24630001 	addiu	v1,v1,1
     6ec:	ac430000 	sw	v1,0(v0)
			6ec: R_MIPS_LO16	D_80042AB4
     6f0:	8fbf0018 	lw	ra,24(sp)
     6f4:	8fb10014 	lw	s1,20(sp)
     6f8:	8fb00010 	lw	s0,16(sp)
     6fc:	03e00008 	jr	ra
     700:	27bd0020 	addiu	sp,sp,32

00000704 <func_80040884>:
     704:	27bdffe8 	addiu	sp,sp,-24
     708:	afb00010 	sw	s0,16(sp)
     70c:	00008021 	move	s0,zero
     710:	afbf0014 	sw	ra,20(sp)
     714:	0c000192 	jal	648 <func_800407C8>
			714: R_MIPS_26	.text
     718:	00002021 	move	a0,zero
     71c:	26100001 	addiu	s0,s0,1
     720:	2a020007 	slti	v0,s0,7
     724:	1440fffb 	bnez	v0,714 <func_80040884+0x10>
     728:	00000000 	nop
     72c:	8fbf0014 	lw	ra,20(sp)
     730:	8fb00010 	lw	s0,16(sp)
     734:	03e00008 	jr	ra
     738:	27bd0018 	addiu	sp,sp,24

0000073c <func_800408BC>:
     73c:	3c060000 	lui	a2,0x0
			73c: R_MIPS_HI16	D_80042A40
     740:	8cc20000 	lw	v0,0(a2)
			740: R_MIPS_LO16	D_80042A40
     744:	00021042 	srl	v0,v0,0x1
     748:	1440000d 	bnez	v0,780 <func_800408BC+0x44>
     74c:	acc20000 	sw	v0,0(a2)
			74c: R_MIPS_LO16	D_80042A40
     750:	3c040000 	lui	a0,0x0
			750: R_MIPS_HI16	D_80042A50
     754:	3c020000 	lui	v0,0x0
			754: R_MIPS_HI16	D_80042A6C
     758:	8c830000 	lw	v1,0(a0)
			758: R_MIPS_LO16	D_80042A50
     75c:	8c420000 	lw	v0,0(v0)
			75c: R_MIPS_LO16	D_80042A6C
     760:	00431021 	addu	v0,v0,v1
     764:	24630001 	addiu	v1,v1,1
     768:	90450000 	lbu	a1,0(v0)
     76c:	24020080 	li	v0,128
     770:	acc20000 	sw	v0,0(a2)
			770: R_MIPS_LO16	D_80042A40
     774:	3c020000 	lui	v0,0x0
			774: R_MIPS_HI16	D_80042A54
     778:	ac830000 	sw	v1,0(a0)
			778: R_MIPS_LO16	D_80042A50
     77c:	ac450000 	sw	a1,0(v0)
			77c: R_MIPS_LO16	D_80042A54
     780:	3c020000 	lui	v0,0x0
			780: R_MIPS_HI16	D_80042A54
     784:	8c420000 	lw	v0,0(v0)
			784: R_MIPS_LO16	D_80042A54
     788:	8cc30000 	lw	v1,0(a2)
			788: R_MIPS_LO16	D_80042A40
     78c:	00431024 	and	v0,v0,v1
     790:	03e00008 	jr	ra
     794:	0002102b 	sltu	v0,zero,v0

00000798 <func_80040918>:
     798:	24031001 	li	v1,4097
     79c:	3c020000 	lui	v0,0x0
			79c: R_MIPS_HI16	D_80042A84
     7a0:	8c420000 	lw	v0,0(v0)
			7a0: R_MIPS_LO16	D_80042A84
     7a4:	24051000 	li	a1,4096
     7a8:	24444004 	addiu	a0,v0,16388
     7ac:	ac850000 	sw	a1,0(a0)
     7b0:	24630001 	addiu	v1,v1,1
     7b4:	28621101 	slti	v0,v1,4353
     7b8:	1440fffc 	bnez	v0,7ac <func_80040918+0x14>
     7bc:	24840004 	addiu	a0,a0,4
     7c0:	24041000 	li	a0,4096
     7c4:	3c020000 	lui	v0,0x0
			7c4: R_MIPS_HI16	D_80042A68
     7c8:	8c420000 	lw	v0,0(v0)
			7c8: R_MIPS_LO16	D_80042A68
     7cc:	24030fff 	li	v1,4095
     7d0:	24423ffc 	addiu	v0,v0,16380
     7d4:	ac440000 	sw	a0,0(v0)
     7d8:	2463ffff 	addiu	v1,v1,-1
     7dc:	0461fffd 	bgez	v1,7d4 <func_80040918+0x3c>
     7e0:	2442fffc 	addiu	v0,v0,-4
     7e4:	03e00008 	jr	ra
     7e8:	00000000 	nop

000007ec <func_8004096C>:
     7ec:	00806021 	move	t4,a0
     7f0:	24060001 	li	a2,1
     7f4:	240f1000 	li	t7,4096
     7f8:	3c020000 	lui	v0,0x0
			7f8: R_MIPS_HI16	D_80042A5C
     7fc:	00407021 	move	t6,v0
     800:	3c020000 	lui	v0,0x0
			800: R_MIPS_HI16	D_80042A84
     804:	3c0d0000 	lui	t5,0x0
			804: R_MIPS_HI16	D_80042A90
     808:	3c030000 	lui	v1,0x0
			808: R_MIPS_HI16	D_80042A78
     80c:	8c420000 	lw	v0,0(v0)
			80c: R_MIPS_LO16	D_80042A84
     810:	8c630000 	lw	v1,0(v1)
			810: R_MIPS_LO16	D_80042A78
     814:	00405821 	move	t3,v0
     818:	3c020000 	lui	v0,0x0
			818: R_MIPS_HI16	D_80042A68
     81c:	00604021 	move	t0,v1
     820:	010c3821 	addu	a3,t0,t4
     824:	8c420000 	lw	v0,0(v0)
			824: R_MIPS_LO16	D_80042A68
     828:	90e50000 	lbu	a1,0(a3)
     82c:	000c2080 	sll	a0,t4,0x2
     830:	adc00000 	sw	zero,0(t6)
			830: R_MIPS_LO16	D_80042A5C
     834:	0082c021 	addu	t8,a0,v0
     838:	3c020000 	lui	v0,0x0
			838: R_MIPS_HI16	D_80042A80
     83c:	8c420000 	lw	v0,0(v0)
			83c: R_MIPS_LO16	D_80042A80
     840:	24aa1001 	addiu	t2,a1,4097
     844:	00404821 	move	t1,v0
     848:	00891821 	addu	v1,a0,t1
     84c:	01e01021 	move	v0,t7
     850:	008b2021 	addu	a0,a0,t3
     854:	ac620000 	sw	v0,0(v1)
     858:	ac820000 	sw	v0,0(a0)
     85c:	04c00008 	bltz	a2,880 <func_8004096C+0x94>
     860:	000a1080 	sll	v0,t2,0x2
     864:	004b1021 	addu	v0,v0,t3
     868:	8c430000 	lw	v1,0(v0)
     86c:	546f0009 	bnel	v1,t7,894 <func_8004096C+0xa8>
     870:	00605021 	move	t2,v1
     874:	ac4c0000 	sw	t4,0(v0)
     878:	03e00008 	jr	ra
     87c:	af0a0000 	sw	t2,0(t8)
     880:	00491021 	addu	v0,v0,t1
     884:	8c430000 	lw	v1,0(v0)
     888:	506f004a 	beql	v1,t7,9b4 <func_8004096C+0x1c8>
     88c:	ac4c0000 	sw	t4,0(v0)
     890:	00605021 	move	t2,v1
     894:	24040001 	li	a0,1
     898:	00e41821 	addu	v1,a3,a0
     89c:	01441021 	addu	v0,t2,a0
     8a0:	01021021 	addu	v0,t0,v0
     8a4:	90630000 	lbu	v1,0(v1)
     8a8:	90420000 	lbu	v0,0(v0)
     8ac:	00623023 	subu	a2,v1,v0
     8b0:	14c00006 	bnez	a2,8cc <func_8004096C+0xe0>
     8b4:	28820003 	slti	v0,a0,3
     8b8:	24840001 	addiu	a0,a0,1
     8bc:	2882003c 	slti	v0,a0,60
     8c0:	1440fff6 	bnez	v0,89c <func_8004096C+0xb0>
     8c4:	00e41821 	addu	v1,a3,a0
     8c8:	28820003 	slti	v0,a0,3
     8cc:	1440ffe3 	bnez	v0,85c <func_8004096C+0x70>
     8d0:	00000000 	nop
     8d4:	8dc30000 	lw	v1,0(t6)
			8d4: R_MIPS_LO16	D_80042A5C
     8d8:	0064102a 	slt	v0,v1,a0
     8dc:	10400008 	beqz	v0,900 <func_8004096C+0x114>
     8e0:	018a1023 	subu	v0,t4,t2
     8e4:	30420fff 	andi	v0,v0,0xfff
     8e8:	ada20000 	sw	v0,0(t5)
			8e8: R_MIPS_LO16	D_80042A90
     8ec:	2882003c 	slti	v0,a0,60
     8f0:	1040000c 	beqz	v0,924 <func_8004096C+0x138>
     8f4:	adc40000 	sw	a0,0(t6)
			8f4: R_MIPS_LO16	D_80042A5C
     8f8:	08000217 	j	85c <func_8004096C+0x70>
			8f8: R_MIPS_26	.text
     8fc:	00000000 	nop
     900:	1483ffd6 	bne	a0,v1,85c <func_8004096C+0x70>
     904:	018a1823 	subu	v1,t4,t2
     908:	8da20000 	lw	v0,0(t5)
			908: R_MIPS_LO16	D_80042A90
     90c:	30630fff 	andi	v1,v1,0xfff
     910:	0062102a 	slt	v0,v1,v0
     914:	5440ffd1 	bnezl	v0,85c <func_8004096C+0x70>
     918:	ada30000 	sw	v1,0(t5)
			918: R_MIPS_LO16	D_80042A90
     91c:	08000217 	j	85c <func_8004096C+0x70>
			91c: R_MIPS_26	.text
     920:	00000000 	nop
     924:	3c020000 	lui	v0,0x0
			924: R_MIPS_HI16	D_80042A68
     928:	000c1880 	sll	v1,t4,0x2
     92c:	000a2080 	sll	a0,t2,0x2
     930:	8c470000 	lw	a3,0(v0)
			930: R_MIPS_LO16	D_80042A68
     934:	3c020000 	lui	v0,0x0
			934: R_MIPS_HI16	D_80042A80
     938:	8c4b0000 	lw	t3,0(v0)
			938: R_MIPS_LO16	D_80042A80
     93c:	00874821 	addu	t1,a0,a3
     940:	00671021 	addu	v0,v1,a3
     944:	8d250000 	lw	a1,0(t1)
     948:	008b4021 	addu	t0,a0,t3
     94c:	ac450000 	sw	a1,0(v0)
     950:	3c020000 	lui	v0,0x0
			950: R_MIPS_HI16	D_80042A84
     954:	8c460000 	lw	a2,0(v0)
			954: R_MIPS_LO16	D_80042A84
     958:	006b1021 	addu	v0,v1,t3
     95c:	8d050000 	lw	a1,0(t0)
     960:	00862021 	addu	a0,a0,a2
     964:	ac450000 	sw	a1,0(v0)
     968:	8c820000 	lw	v0,0(a0)
     96c:	00661821 	addu	v1,v1,a2
     970:	ac620000 	sw	v0,0(v1)
     974:	8d020000 	lw	v0,0(t0)
     978:	00021080 	sll	v0,v0,0x2
     97c:	00471021 	addu	v0,v0,a3
     980:	ac4c0000 	sw	t4,0(v0)
     984:	8c820000 	lw	v0,0(a0)
     988:	00021080 	sll	v0,v0,0x2
     98c:	00471021 	addu	v0,v0,a3
     990:	ac4c0000 	sw	t4,0(v0)
     994:	8d220000 	lw	v0,0(t1)
     998:	00022080 	sll	a0,v0,0x2
     99c:	00861821 	addu	v1,a0,a2
     9a0:	8c620000 	lw	v0,0(v1)
     9a4:	144a0009 	bne	v0,t2,9cc <func_8004096C+0x1e0>
     9a8:	008b1021 	addu	v0,a0,t3
     9ac:	08000274 	j	9d0 <func_8004096C+0x1e4>
			9ac: R_MIPS_26	.text
     9b0:	ac6c0000 	sw	t4,0(v1)
     9b4:	3c020000 	lui	v0,0x0
			9b4: R_MIPS_HI16	D_80042A68
     9b8:	8c430000 	lw	v1,0(v0)
			9b8: R_MIPS_LO16	D_80042A68
     9bc:	000c1080 	sll	v0,t4,0x2
     9c0:	00431021 	addu	v0,v0,v1
     9c4:	03e00008 	jr	ra
     9c8:	ac4a0000 	sw	t2,0(v0)
     9cc:	ac4c0000 	sw	t4,0(v0)
     9d0:	3c020000 	lui	v0,0x0
			9d0: R_MIPS_HI16	D_80042A68
     9d4:	8c430000 	lw	v1,0(v0)
			9d4: R_MIPS_LO16	D_80042A68
     9d8:	000a1080 	sll	v0,t2,0x2
     9dc:	00431021 	addu	v0,v0,v1
     9e0:	24031000 	li	v1,4096
     9e4:	03e00008 	jr	ra
     9e8:	ac430000 	sw	v1,0(v0)

000009ec <func_80040B6C>:
     9ec:	00805021 	move	t2,a0
     9f0:	3c020000 	lui	v0,0x0
			9f0: R_MIPS_HI16	D_80042A68
     9f4:	8c420000 	lw	v0,0(v0)
			9f4: R_MIPS_LO16	D_80042A68
     9f8:	000a2080 	sll	a0,t2,0x2
     9fc:	00821021 	addu	v0,a0,v0
     a00:	8c420000 	lw	v0,0(v0)
     a04:	24061000 	li	a2,4096
     a08:	10460062 	beq	v0,a2,b94 <func_80040B6C+0x1a8>
     a0c:	3c020000 	lui	v0,0x0
			a0c: R_MIPS_HI16	D_80042A84
     a10:	8c450000 	lw	a1,0(v0)
			a10: R_MIPS_LO16	D_80042A84
     a14:	00851021 	addu	v0,a0,a1
     a18:	8c430000 	lw	v1,0(v0)
     a1c:	14660006 	bne	v1,a2,a38 <func_80040B6C+0x4c>
     a20:	3c020000 	lui	v0,0x0
			a20: R_MIPS_HI16	D_80042A80
     a24:	8c420000 	lw	v0,0(v0)
			a24: R_MIPS_LO16	D_80042A80
     a28:	00821021 	addu	v0,a0,v0
     a2c:	8c490000 	lw	t1,0(v0)
     a30:	080002cb 	j	b2c <func_80040B6C+0x140>
			a30: R_MIPS_26	.text
     a34:	3c020000 	lui	v0,0x0
			a34: R_MIPS_HI16	D_80042A68
     a38:	8c420000 	lw	v0,0(v0)
			a38: R_MIPS_LO16	D_80042A80
     a3c:	00821021 	addu	v0,a0,v0
     a40:	8c420000 	lw	v0,0(v0)
     a44:	10460038 	beq	v0,a2,b28 <func_80040B6C+0x13c>
     a48:	00604821 	move	t1,v1
     a4c:	00404821 	move	t1,v0
     a50:	00091080 	sll	v0,t1,0x2
     a54:	00451021 	addu	v0,v0,a1
     a58:	8c420000 	lw	v0,0(v0)
     a5c:	10460024 	beq	v0,a2,af0 <func_80040B6C+0x104>
     a60:	00a01821 	move	v1,a1
     a64:	24041000 	li	a0,4096
     a68:	00091080 	sll	v0,t1,0x2
     a6c:	00431021 	addu	v0,v0,v1
     a70:	8c490000 	lw	t1,0(v0)
     a74:	00092880 	sll	a1,t1,0x2
     a78:	00a31021 	addu	v0,a1,v1
     a7c:	8c420000 	lw	v0,0(v0)
     a80:	1444fffa 	bne	v0,a0,a6c <func_80040B6C+0x80>
     a84:	00091080 	sll	v0,t1,0x2
     a88:	3c020000 	lui	v0,0x0
			a88: R_MIPS_HI16	D_80042A68
     a8c:	3c040000 	lui	a0,0x0
			a8c: R_MIPS_HI16	D_80042A84
     a90:	3c030000 	lui	v1,0x0
			a90: R_MIPS_HI16	D_80042A80
     a94:	8c460000 	lw	a2,0(v0)
			a94: R_MIPS_LO16	D_80042A68
     a98:	8c680000 	lw	t0,0(v1)
			a98: R_MIPS_LO16	D_80042A80
     a9c:	8c830000 	lw	v1,0(a0)
			a9c: R_MIPS_LO16	D_80042A84
     aa0:	00a63821 	addu	a3,a1,a2
     aa4:	00a82821 	addu	a1,a1,t0
     aa8:	8ce20000 	lw	v0,0(a3)
     aac:	8ca40000 	lw	a0,0(a1)
     ab0:	00021080 	sll	v0,v0,0x2
     ab4:	00431021 	addu	v0,v0,v1
     ab8:	ac440000 	sw	a0,0(v0)
     abc:	8ca20000 	lw	v0,0(a1)
     ac0:	8ce30000 	lw	v1,0(a3)
     ac4:	00021080 	sll	v0,v0,0x2
     ac8:	00461021 	addu	v0,v0,a2
     acc:	ac430000 	sw	v1,0(v0)
     ad0:	000a1080 	sll	v0,t2,0x2
     ad4:	00481021 	addu	v0,v0,t0
     ad8:	8c430000 	lw	v1,0(v0)
     adc:	aca30000 	sw	v1,0(a1)
     ae0:	8c420000 	lw	v0,0(v0)
     ae4:	00021080 	sll	v0,v0,0x2
     ae8:	00461021 	addu	v0,v0,a2
     aec:	ac490000 	sw	t1,0(v0)
     af0:	3c020000 	lui	v0,0x0
			af0: R_MIPS_HI16	D_80042A84
     af4:	00091880 	sll	v1,t1,0x2
     af8:	8c450000 	lw	a1,0(v0)
			af8: R_MIPS_LO16	D_80042A84
     afc:	000a1080 	sll	v0,t2,0x2
     b00:	00451021 	addu	v0,v0,a1
     b04:	8c440000 	lw	a0,0(v0)
     b08:	00651821 	addu	v1,v1,a1
     b0c:	ac640000 	sw	a0,0(v1)
     b10:	3c030000 	lui	v1,0x0
			b10: R_MIPS_HI16	D_80042A68
     b14:	8c420000 	lw	v0,0(v0)
     b18:	8c630000 	lw	v1,0(v1)
			b18: R_MIPS_LO16	D_80042A68
     b1c:	00021080 	sll	v0,v0,0x2
     b20:	00431021 	addu	v0,v0,v1
     b24:	ac490000 	sw	t1,0(v0)
     b28:	3c020000 	lui	v0,0x0
			b28: R_MIPS_HI16	D_80042A68
     b2c:	00091880 	sll	v1,t1,0x2
     b30:	8c450000 	lw	a1,0(v0)
			b30: R_MIPS_LO16	D_80042A68
     b34:	000a1080 	sll	v0,t2,0x2
     b38:	00451021 	addu	v0,v0,a1
     b3c:	8c440000 	lw	a0,0(v0)
     b40:	00651821 	addu	v1,v1,a1
     b44:	ac640000 	sw	a0,0(v1)
     b48:	3c030000 	lui	v1,0x0
			b48: R_MIPS_HI16	D_80042A84
     b4c:	8c420000 	lw	v0,0(v0)
     b50:	8c630000 	lw	v1,0(v1)
			b50: R_MIPS_LO16	D_80042A84
     b54:	00022080 	sll	a0,v0,0x2
     b58:	00831821 	addu	v1,a0,v1
     b5c:	8c620000 	lw	v0,0(v1)
     b60:	144a0003 	bne	v0,t2,b70 <func_80040B6C+0x184>
     b64:	3c020000 	lui	v0,0x0
			b64: R_MIPS_HI16	D_80042A80
     b68:	080002df 	j	b7c <func_80040B6C+0x190>
			b68: R_MIPS_26	.text
     b6c:	ac690000 	sw	t1,0(v1)
     b70:	8c420000 	lw	v0,0(v0)
			b70: R_MIPS_LO16	D_80042A80
     b74:	00821021 	addu	v0,a0,v0
     b78:	ac490000 	sw	t1,0(v0)
     b7c:	3c020000 	lui	v0,0x0
			b7c: R_MIPS_HI16	D_80042A68
     b80:	8c430000 	lw	v1,0(v0)
			b80: R_MIPS_LO16	D_80042A68
     b84:	000a1080 	sll	v0,t2,0x2
     b88:	00431021 	addu	v0,v0,v1
     b8c:	24031000 	li	v1,4096
     b90:	ac430000 	sw	v1,0(v0)
     b94:	03e00008 	jr	ra
     b98:	00000000 	nop

00000b9c <func_80040D1C>:
     b9c:	2405013a 	li	a1,314
     ba0:	240a0001 	li	t2,1
     ba4:	3c020000 	lui	v0,0x0
			ba4: R_MIPS_HI16	D_80042A4C
     ba8:	8c490000 	lw	t1,0(v0)
			ba8: R_MIPS_LO16	D_80042A4C
     bac:	3c020000 	lui	v0,0x0
			bac: R_MIPS_HI16	D_80042A48
     bb0:	8c480000 	lw	t0,0(v0)
			bb0: R_MIPS_LO16	D_80042A48
     bb4:	3c020000 	lui	v0,0x0
			bb4: R_MIPS_HI16	D_80042A60
     bb8:	3c030000 	lui	v1,0x0
			bb8: R_MIPS_HI16	D_80042A7C
     bbc:	8c420000 	lw	v0,0(v0)
			bbc: R_MIPS_LO16	D_80042A60
     bc0:	8c670000 	lw	a3,0(v1)
			bc0: R_MIPS_LO16	D_80042A7C
     bc4:	00403021 	move	a2,v0
     bc8:	acc004e8 	sw	zero,1256(a2)
     bcc:	24a4ffff 	addiu	a0,a1,-1
     bd0:	00041080 	sll	v0,a0,0x2
     bd4:	00491021 	addu	v0,v0,t1
     bd8:	00051880 	sll	v1,a1,0x2
     bdc:	ac450000 	sw	a1,0(v0)
     be0:	00681021 	addu	v0,v1,t0
     be4:	ac440000 	sw	a0,0(v0)
     be8:	00671021 	addu	v0,v1,a3
     bec:	00661821 	addu	v1,v1,a2
     bf0:	ac4a0000 	sw	t2,0(v0)
     bf4:	8c620000 	lw	v0,0(v1)
     bf8:	00802821 	move	a1,a0
     bfc:	24420001 	addiu	v0,v0,1
     c00:	1ca0fff2 	bgtz	a1,bcc <func_80040D1C+0x30>
     c04:	ac62fffc 	sw	v0,-4(v1)
     c08:	3c020000 	lui	v0,0x0
			c08: R_MIPS_HI16	D_80042A7C
     c0c:	8c420000 	lw	v0,0(v0)
			c0c: R_MIPS_LO16	D_80042A7C
     c10:	24051000 	li	a1,4096
     c14:	ac400000 	sw	zero,0(v0)
     c18:	3c020000 	lui	v0,0x0
			c18: R_MIPS_HI16	D_80042A64
     c1c:	8c420000 	lw	v0,0(v0)
			c1c: R_MIPS_LO16	D_80042A64
     c20:	24062710 	li	a2,10000
     c24:	24444000 	addiu	a0,v0,16384
     c28:	ac404000 	sw	zero,16384(v0)
     c2c:	24a300c8 	addiu	v1,a1,200
     c30:	00c3001a 	div	zero,a2,v1
     c34:	14600002 	bnez	v1,c40 <func_80040D1C+0xa4>
     c38:	00000000 	nop
     c3c:	0007000d 	break	0x7
     c40:	2401ffff 	li	at,-1
     c44:	14610004 	bne	v1,at,c58 <func_80040D1C+0xbc>
     c48:	3c018000 	lui	at,0x8000
     c4c:	14c10002 	bne	a2,at,c58 <func_80040D1C+0xbc>
     c50:	00000000 	nop
     c54:	0006000d 	break	0x6
     c58:	00001812 	mflo	v1
     c5c:	8c820000 	lw	v0,0(a0)
     c60:	24a5ffff 	addiu	a1,a1,-1
     c64:	00431021 	addu	v0,v0,v1
     c68:	ac82fffc 	sw	v0,-4(a0)
     c6c:	1ca0ffef 	bgtz	a1,c2c <func_80040D1C+0x90>
     c70:	2484fffc 	addiu	a0,a0,-4
     c74:	03e00008 	jr	ra
     c78:	00000000 	nop

00000c7c <func_80040DFC>:
     c7c:	3c020000 	lui	v0,0x0
			c7c: R_MIPS_HI16	D_80042A60
     c80:	8c430000 	lw	v1,0(v0)
			c80: R_MIPS_LO16	D_80042A60
     c84:	8c620000 	lw	v0,0(v1)
     c88:	2c427fff 	sltiu	v0,v0,32767
     c8c:	14400014 	bnez	v0,ce0 <func_80040DFC+0x64>
     c90:	00803821 	move	a3,a0
     c94:	00002021 	move	a0,zero
     c98:	2406013a 	li	a2,314
     c9c:	3c020000 	lui	v0,0x0
			c9c: R_MIPS_HI16	D_80042A7C
     ca0:	8c420000 	lw	v0,0(v0)
			ca0: R_MIPS_LO16	D_80042A7C
     ca4:	246504e8 	addiu	a1,v1,1256
     ca8:	244304e8 	addiu	v1,v0,1256
     cac:	aca40000 	sw	a0,0(a1)
     cb0:	24a5fffc 	addiu	a1,a1,-4
     cb4:	8c620000 	lw	v0,0(v1)
     cb8:	24c6ffff 	addiu	a2,a2,-1
     cbc:	24420001 	addiu	v0,v0,1
     cc0:	00021042 	srl	v0,v0,0x1
     cc4:	00822021 	addu	a0,a0,v0
     cc8:	ac620000 	sw	v0,0(v1)
     ccc:	1cc0fff7 	bgtz	a2,cac <func_80040DFC+0x30>
     cd0:	2463fffc 	addiu	v1,v1,-4
     cd4:	3c020000 	lui	v0,0x0
			cd4: R_MIPS_HI16	D_80042A60
     cd8:	8c420000 	lw	v0,0(v0)
			cd8: R_MIPS_LO16	D_80042A60
     cdc:	ac440000 	sw	a0,0(v0)
     ce0:	00e03021 	move	a2,a3
     ce4:	3c020000 	lui	v0,0x0
			ce4: R_MIPS_HI16	D_80042A7C
     ce8:	8c430000 	lw	v1,0(v0)
			ce8: R_MIPS_LO16	D_80042A7C
     cec:	00061080 	sll	v0,a2,0x2
     cf0:	00432021 	addu	a0,v0,v1
     cf4:	8c830000 	lw	v1,0(a0)
     cf8:	8c82fffc 	lw	v0,-4(a0)
     cfc:	14620007 	bne	v1,v0,d1c <func_80040DFC+0xa0>
     d00:	00c7102a 	slt	v0,a2,a3
     d04:	2484fffc 	addiu	a0,a0,-4
     d08:	8c830000 	lw	v1,0(a0)
     d0c:	8c82fffc 	lw	v0,-4(a0)
     d10:	1062fffc 	beq	v1,v0,d04 <func_80040DFC+0x88>
     d14:	24c6ffff 	addiu	a2,a2,-1
     d18:	00c7102a 	slt	v0,a2,a3
     d1c:	10400012 	beqz	v0,d68 <func_80040DFC+0xec>
     d20:	3c020000 	lui	v0,0x0
			d20: R_MIPS_HI16	D_80042A48
     d24:	00062080 	sll	a0,a2,0x2
     d28:	8c430000 	lw	v1,0(v0)
			d28: R_MIPS_LO16	D_80042A48
     d2c:	00071080 	sll	v0,a3,0x2
     d30:	00832021 	addu	a0,a0,v1
     d34:	00431021 	addu	v0,v0,v1
     d38:	8c450000 	lw	a1,0(v0)
     d3c:	8c830000 	lw	v1,0(a0)
     d40:	ac850000 	sw	a1,0(a0)
     d44:	ac430000 	sw	v1,0(v0)
     d48:	3c020000 	lui	v0,0x0
			d48: R_MIPS_HI16	D_80042A4C
     d4c:	00031880 	sll	v1,v1,0x2
     d50:	8c420000 	lw	v0,0(v0)
			d50: R_MIPS_LO16	D_80042A4C
     d54:	00052880 	sll	a1,a1,0x2
     d58:	00621821 	addu	v1,v1,v0
     d5c:	00a22821 	addu	a1,a1,v0
     d60:	ac670000 	sw	a3,0(v1)
     d64:	aca60000 	sw	a2,0(a1)
     d68:	3c020000 	lui	v0,0x0
			d68: R_MIPS_HI16	D_80042A7C
     d6c:	8c420000 	lw	v0,0(v0)
			d6c: R_MIPS_LO16	D_80042A7C
     d70:	00061880 	sll	v1,a2,0x2
     d74:	00621821 	addu	v1,v1,v0
     d78:	8c620000 	lw	v0,0(v1)
     d7c:	24c6ffff 	addiu	a2,a2,-1
     d80:	24420001 	addiu	v0,v0,1
     d84:	04c0000b 	bltz	a2,db4 <func_80040DFC+0x138>
     d88:	ac620000 	sw	v0,0(v1)
     d8c:	3c020000 	lui	v0,0x0
			d8c: R_MIPS_HI16	D_80042A60
     d90:	8c430000 	lw	v1,0(v0)
			d90: R_MIPS_LO16	D_80042A60
     d94:	00061080 	sll	v0,a2,0x2
     d98:	00431821 	addu	v1,v0,v1
     d9c:	8c620000 	lw	v0,0(v1)
     da0:	24c6ffff 	addiu	a2,a2,-1
     da4:	24420001 	addiu	v0,v0,1
     da8:	ac620000 	sw	v0,0(v1)
     dac:	04c1fffb 	bgez	a2,d9c <func_80040DFC+0x120>
     db0:	2463fffc 	addiu	v1,v1,-4
     db4:	03e00008 	jr	ra
     db8:	00000000 	nop

00000dbc <func_80040F3C>:
     dbc:	27bdffe0 	addiu	sp,sp,-32
     dc0:	afb10014 	sw	s1,20(sp)
     dc4:	00808821 	move	s1,a0
     dc8:	afbf0018 	sw	ra,24(sp)
     dcc:	0c000192 	jal	648 <func_800407C8>
			dcc: R_MIPS_26	.text
     dd0:	afb00010 	sw	s0,16(sp)
     dd4:	3c030000 	lui	v1,0x0
			dd4: R_MIPS_HI16	D_80042AC8
     dd8:	8c620000 	lw	v0,0(v1)
			dd8: R_MIPS_LO16	D_80042AC8
     ddc:	18400007 	blez	v0,dfc <func_80040F3C+0x40>
     de0:	00608021 	move	s0,v1
     de4:	0c000192 	jal	648 <func_800407C8>
			de4: R_MIPS_26	.text
     de8:	2e240001 	sltiu	a0,s1,1
     dec:	8e020000 	lw	v0,0(s0)
			dec: R_MIPS_LO16	D_80042AC8
     df0:	2442ffff 	addiu	v0,v0,-1
     df4:	1c40fffb 	bgtz	v0,de4 <func_80040F3C+0x28>
     df8:	ae020000 	sw	v0,0(s0)
			df8: R_MIPS_LO16	D_80042AC8
     dfc:	8fbf0018 	lw	ra,24(sp)
     e00:	8fb10014 	lw	s1,20(sp)
     e04:	8fb00010 	lw	s0,16(sp)
     e08:	03e00008 	jr	ra
     e0c:	27bd0020 	addiu	sp,sp,32

00000e10 <func_80040F90>:
     e10:	27bdffc8 	addiu	sp,sp,-56
     e14:	3c020000 	lui	v0,0x0
			e14: R_MIPS_HI16	D_80042A4C
     e18:	00042080 	sll	a0,a0,0x2
     e1c:	3c080000 	lui	t0,0x0
			e1c: R_MIPS_HI16	D_80042ABC
     e20:	8c420000 	lw	v0,0(v0)
			e20: R_MIPS_LO16	D_80042A4C
     e24:	8d060000 	lw	a2,0(t0)
			e24: R_MIPS_LO16	D_80042ABC
     e28:	3c070000 	lui	a3,0x0
			e28: R_MIPS_HI16	D_80042AC0
     e2c:	afbf0034 	sw	ra,52(sp)
     e30:	afbe0030 	sw	s8,48(sp)
     e34:	afb7002c 	sw	s7,44(sp)
     e38:	afb60028 	sw	s6,40(sp)
     e3c:	afb50024 	sw	s5,36(sp)
     e40:	afb40020 	sw	s4,32(sp)
     e44:	afb3001c 	sw	s3,28(sp)
     e48:	afb20018 	sw	s2,24(sp)
     e4c:	afb10014 	sw	s1,20(sp)
     e50:	afb00010 	sw	s0,16(sp)
     e54:	00822021 	addu	a0,a0,v0
     e58:	3c020000 	lui	v0,0x0
			e58: R_MIPS_HI16	D_80042A60
     e5c:	8c960000 	lw	s6,0(a0)
     e60:	8c450000 	lw	a1,0(v0)
			e60: R_MIPS_LO16	D_80042A60
     e64:	8ce40000 	lw	a0,0(a3)
			e64: R_MIPS_LO16	D_80042AC0
     e68:	00161880 	sll	v1,s6,0x2
     e6c:	00651821 	addu	v1,v1,a1
     e70:	8c62fffc 	lw	v0,-4(v1)
     e74:	00862023 	subu	a0,a0,a2
     e78:	00820018 	mult	a0,v0
     e7c:	00004812 	mflo	t1
     e80:	8ca20000 	lw	v0,0(a1)
     e84:	00000000 	nop
     e88:	0122001b 	divu	zero,t1,v0
     e8c:	14400002 	bnez	v0,e98 <func_80040F90+0x88>
     e90:	00000000 	nop
     e94:	0007000d 	break	0x7
     e98:	00001012 	mflo	v0
     e9c:	8c630000 	lw	v1,0(v1)
     ea0:	00000000 	nop
     ea4:	00830018 	mult	a0,v1
     ea8:	00001812 	mflo	v1
     eac:	00c21021 	addu	v0,a2,v0
     eb0:	ace20000 	sw	v0,0(a3)
			eb0: R_MIPS_LO16	D_80042AC0
     eb4:	8ca20000 	lw	v0,0(a1)
     eb8:	0062001b 	divu	zero,v1,v0
     ebc:	14400002 	bnez	v0,ec8 <func_80040F90+0xb8>
     ec0:	00000000 	nop
     ec4:	0007000d 	break	0x7
     ec8:	00001012 	mflo	v0
     ecc:	00e08821 	move	s1,a3
     ed0:	3c120001 	lui	s2,0x1
     ed4:	01008021 	move	s0,t0
     ed8:	341effff 	li	s8,0xffff
     edc:	24177fff 	li	s7,32767
     ee0:	0240a821 	move	s5,s2
     ee4:	36b58000 	ori	s5,s5,0x8000
     ee8:	3c140000 	lui	s4,0x0
			ee8: R_MIPS_HI16	D_80042AC8
     eec:	24138000 	li	s3,-32768
     ef0:	00c23021 	addu	a2,a2,v0
     ef4:	ae060000 	sw	a2,0(s0)
			ef4: R_MIPS_LO16	D_80042ABC
     ef8:	8e240000 	lw	a0,0(s1)
			ef8: R_MIPS_LO16	D_80042AC0
     efc:	0244102b 	sltu	v0,s2,a0
     f00:	14400005 	bnez	v0,f18 <func_80040F90+0x108>
     f04:	00000000 	nop
     f08:	0c00036f 	jal	dbc <func_80040F3C>
			f08: R_MIPS_26	.text
     f0c:	00002021 	move	a0,zero
     f10:	080003dd 	j	f74 <func_80040F90+0x164>
			f10: R_MIPS_26	.text
     f14:	00000000 	nop
     f18:	8e030000 	lw	v1,0(s0)
			f18: R_MIPS_LO16	D_80042ABC
     f1c:	03c3102b 	sltu	v0,s8,v1
     f20:	1040000a 	beqz	v0,f4c <func_80040F90+0x13c>
     f24:	02e3102b 	sltu	v0,s7,v1
     f28:	0c00036f 	jal	dbc <func_80040F3C>
			f28: R_MIPS_26	.text
     f2c:	24040001 	li	a0,1
     f30:	8e020000 	lw	v0,0(s0)
			f30: R_MIPS_LO16	D_80042ABC
     f34:	8e230000 	lw	v1,0(s1)
			f34: R_MIPS_LO16	D_80042AC0
     f38:	00521023 	subu	v0,v0,s2
     f3c:	00721823 	subu	v1,v1,s2
     f40:	ae020000 	sw	v0,0(s0)
			f40: R_MIPS_LO16	D_80042ABC
     f44:	080003dd 	j	f74 <func_80040F90+0x164>
			f44: R_MIPS_26	.text
     f48:	ae230000 	sw	v1,0(s1)
			f48: R_MIPS_LO16	D_80042AC0
     f4c:	10400010 	beqz	v0,f90 <func_80040F90+0x180>
     f50:	02a4102b 	sltu	v0,s5,a0
     f54:	1440000e 	bnez	v0,f90 <func_80040F90+0x180>
     f58:	00731021 	addu	v0,v1,s3
     f5c:	8e830000 	lw	v1,0(s4)
			f5c: R_MIPS_LO16	D_80042AC8
     f60:	ae020000 	sw	v0,0(s0)
			f60: R_MIPS_LO16	D_80042ABC
     f64:	00931021 	addu	v0,a0,s3
     f68:	ae220000 	sw	v0,0(s1)
			f68: R_MIPS_LO16	D_80042AC0
     f6c:	24630001 	addiu	v1,v1,1
     f70:	ae830000 	sw	v1,0(s4)
			f70: R_MIPS_LO16	D_80042AC8
     f74:	8e020000 	lw	v0,0(s0)
			f74: R_MIPS_LO16	D_80042ABC
     f78:	8e230000 	lw	v1,0(s1)
			f78: R_MIPS_LO16	D_80042AC0
     f7c:	00021040 	sll	v0,v0,0x1
     f80:	00031840 	sll	v1,v1,0x1
     f84:	ae020000 	sw	v0,0(s0)
			f84: R_MIPS_LO16	D_80042ABC
     f88:	080003be 	j	ef8 <func_80040F90+0xe8>
			f88: R_MIPS_26	.text
     f8c:	ae230000 	sw	v1,0(s1)
			f8c: R_MIPS_LO16	D_80042AC0
     f90:	0c00031f 	jal	c7c <func_80040DFC>
			f90: R_MIPS_26	.text
     f94:	02c02021 	move	a0,s6
     f98:	8fbf0034 	lw	ra,52(sp)
     f9c:	8fbe0030 	lw	s8,48(sp)
     fa0:	8fb7002c 	lw	s7,44(sp)
     fa4:	8fb60028 	lw	s6,40(sp)
     fa8:	8fb50024 	lw	s5,36(sp)
     fac:	8fb40020 	lw	s4,32(sp)
     fb0:	8fb3001c 	lw	s3,28(sp)
     fb4:	8fb20018 	lw	s2,24(sp)
     fb8:	8fb10014 	lw	s1,20(sp)
     fbc:	8fb00010 	lw	s0,16(sp)
     fc0:	03e00008 	jr	ra
     fc4:	27bd0038 	addiu	sp,sp,56

00000fc8 <func_80041148>:
     fc8:	27bdffc8 	addiu	sp,sp,-56
     fcc:	3c080000 	lui	t0,0x0
			fcc: R_MIPS_HI16	D_80042AC0
     fd0:	3c090000 	lui	t1,0x0
			fd0: R_MIPS_HI16	D_80042ABC
     fd4:	3c020000 	lui	v0,0x0
			fd4: R_MIPS_HI16	D_80042A64
     fd8:	8c460000 	lw	a2,0(v0)
			fd8: R_MIPS_LO16	D_80042A64
     fdc:	8d050000 	lw	a1,0(t0)
			fdc: R_MIPS_LO16	D_80042AC0
     fe0:	8d270000 	lw	a3,0(t1)
			fe0: R_MIPS_LO16	D_80042ABC
     fe4:	00042080 	sll	a0,a0,0x2
     fe8:	afbf0030 	sw	ra,48(sp)
     fec:	afb7002c 	sw	s7,44(sp)
     ff0:	afb60028 	sw	s6,40(sp)
     ff4:	afb50024 	sw	s5,36(sp)
     ff8:	afb40020 	sw	s4,32(sp)
     ffc:	afb3001c 	sw	s3,28(sp)
    1000:	afb20018 	sw	s2,24(sp)
    1004:	afb10014 	sw	s1,20(sp)
    1008:	afb00010 	sw	s0,16(sp)
    100c:	00862021 	addu	a0,a0,a2
    1010:	8c820000 	lw	v0,0(a0)
    1014:	00a72823 	subu	a1,a1,a3
    1018:	00a20018 	mult	a1,v0
    101c:	00001812 	mflo	v1
    1020:	8cc20000 	lw	v0,0(a2)
    1024:	00000000 	nop
    1028:	0062001b 	divu	zero,v1,v0
    102c:	14400002 	bnez	v0,1038 <func_80041148+0x70>
    1030:	00000000 	nop
    1034:	0007000d 	break	0x7
    1038:	00001012 	mflo	v0
    103c:	8c830004 	lw	v1,4(a0)
    1040:	00000000 	nop
    1044:	00a30018 	mult	a1,v1
    1048:	00001812 	mflo	v1
    104c:	00e21021 	addu	v0,a3,v0
    1050:	ad020000 	sw	v0,0(t0)
			1050: R_MIPS_LO16	D_80042AC0
    1054:	8cc20000 	lw	v0,0(a2)
    1058:	0062001b 	divu	zero,v1,v0
    105c:	14400002 	bnez	v0,1068 <func_80041148+0xa0>
    1060:	00000000 	nop
    1064:	0007000d 	break	0x7
    1068:	00001012 	mflo	v0
    106c:	01008821 	move	s1,t0
    1070:	3c120001 	lui	s2,0x1
    1074:	01208021 	move	s0,t1
    1078:	3417ffff 	li	s7,0xffff
    107c:	24167fff 	li	s6,32767
    1080:	0240a821 	move	s5,s2
    1084:	36b58000 	ori	s5,s5,0x8000
    1088:	3c140000 	lui	s4,0x0
			1088: R_MIPS_HI16	D_80042AC8
    108c:	24138000 	li	s3,-32768
    1090:	00e23821 	addu	a3,a3,v0
    1094:	ae070000 	sw	a3,0(s0)
			1094: R_MIPS_LO16	D_80042ABC
    1098:	8e240000 	lw	a0,0(s1)
			1098: R_MIPS_LO16	D_80042AC0
    109c:	0244102b 	sltu	v0,s2,a0
    10a0:	14400005 	bnez	v0,10b8 <func_80041148+0xf0>
    10a4:	00000000 	nop
    10a8:	0c00036f 	jal	dbc <func_80040F3C>
			10a8: R_MIPS_26	.text
    10ac:	00002021 	move	a0,zero
    10b0:	08000445 	j	1114 <func_80041148+0x14c>
			10b0: R_MIPS_26	.text
    10b4:	00000000 	nop
    10b8:	8e030000 	lw	v1,0(s0)
			10b8: R_MIPS_LO16	D_80042ABC
    10bc:	02e3102b 	sltu	v0,s7,v1
    10c0:	1040000a 	beqz	v0,10ec <func_80041148+0x124>
    10c4:	02c3102b 	sltu	v0,s6,v1
    10c8:	0c00036f 	jal	dbc <func_80040F3C>
			10c8: R_MIPS_26	.text
    10cc:	24040001 	li	a0,1
    10d0:	8e020000 	lw	v0,0(s0)
			10d0: R_MIPS_LO16	D_80042ABC
    10d4:	8e230000 	lw	v1,0(s1)
			10d4: R_MIPS_LO16	D_80042AC0
    10d8:	00521023 	subu	v0,v0,s2
    10dc:	00721823 	subu	v1,v1,s2
    10e0:	ae020000 	sw	v0,0(s0)
			10e0: R_MIPS_LO16	D_80042ABC
    10e4:	08000445 	j	1114 <func_80041148+0x14c>
			10e4: R_MIPS_26	.text
    10e8:	ae230000 	sw	v1,0(s1)
			10e8: R_MIPS_LO16	D_80042AC0
    10ec:	10400010 	beqz	v0,1130 <func_80041148+0x168>
    10f0:	02a4102b 	sltu	v0,s5,a0
    10f4:	1440000e 	bnez	v0,1130 <func_80041148+0x168>
    10f8:	00731021 	addu	v0,v1,s3
    10fc:	8e830000 	lw	v1,0(s4)
			10fc: R_MIPS_LO16	D_80042AC8
    1100:	ae020000 	sw	v0,0(s0)
			1100: R_MIPS_LO16	D_80042ABC
    1104:	00931021 	addu	v0,a0,s3
    1108:	ae220000 	sw	v0,0(s1)
			1108: R_MIPS_LO16	D_80042AC0
    110c:	24630001 	addiu	v1,v1,1
    1110:	ae830000 	sw	v1,0(s4)
			1110: R_MIPS_LO16	D_80042AC8
    1114:	8e020000 	lw	v0,0(s0)
			1114: R_MIPS_LO16	D_80042ABC
    1118:	8e230000 	lw	v1,0(s1)
			1118: R_MIPS_LO16	D_80042AC0
    111c:	00021040 	sll	v0,v0,0x1
    1120:	00031840 	sll	v1,v1,0x1
    1124:	ae020000 	sw	v0,0(s0)
			1124: R_MIPS_LO16	D_80042ABC
    1128:	08000426 	j	1098 <func_80041148+0xd0>
			1128: R_MIPS_26	.text
    112c:	ae230000 	sw	v1,0(s1)
			112c: R_MIPS_LO16	D_80042AC0
    1130:	8fbf0030 	lw	ra,48(sp)
    1134:	8fb7002c 	lw	s7,44(sp)
    1138:	8fb60028 	lw	s6,40(sp)
    113c:	8fb50024 	lw	s5,36(sp)
    1140:	8fb40020 	lw	s4,32(sp)
    1144:	8fb3001c 	lw	s3,28(sp)
    1148:	8fb20018 	lw	s2,24(sp)
    114c:	8fb10014 	lw	s1,20(sp)
    1150:	8fb00010 	lw	s0,16(sp)
    1154:	03e00008 	jr	ra
    1158:	27bd0038 	addiu	sp,sp,56

0000115c <func_800412DC>:
    115c:	3c030000 	lui	v1,0x0
			115c: R_MIPS_HI16	D_80042AC8
    1160:	8c620000 	lw	v0,0(v1)
			1160: R_MIPS_LO16	D_80042AC8
    1164:	27bdffe8 	addiu	sp,sp,-24
    1168:	afbf0010 	sw	ra,16(sp)
    116c:	24420001 	addiu	v0,v0,1
    1170:	ac620000 	sw	v0,0(v1)
			1170: R_MIPS_LO16	D_80042AC8
    1174:	3c020000 	lui	v0,0x0
			1174: R_MIPS_HI16	D_80042ABC
    1178:	8c430000 	lw	v1,0(v0)
			1178: R_MIPS_LO16	D_80042ABC
    117c:	24027fff 	li	v0,32767
    1180:	0043102b 	sltu	v0,v0,v1
    1184:	14400002 	bnez	v0,1190 <func_800412DC+0x34>
    1188:	24040001 	li	a0,1
    118c:	00002021 	move	a0,zero
    1190:	0c00036f 	jal	dbc <func_80040F3C>
			1190: R_MIPS_26	.text
    1194:	00000000 	nop
    1198:	0c0001c1 	jal	704 <func_80040884>
			1198: R_MIPS_26	.text
    119c:	00000000 	nop
    11a0:	8fbf0010 	lw	ra,16(sp)
    11a4:	03e00008 	jr	ra
    11a8:	27bd0018 	addiu	sp,sp,24

000011ac <func_8004132C>:
    11ac:	24050001 	li	a1,1
    11b0:	2406013a 	li	a2,314
    11b4:	3c020000 	lui	v0,0x0
			11b4: R_MIPS_HI16	D_80042A60
    11b8:	8c470000 	lw	a3,0(v0)
			11b8: R_MIPS_LO16	D_80042A60
    11bc:	00a61021 	addu	v0,a1,a2
    11c0:	00021fc2 	srl	v1,v0,0x1f
    11c4:	00431021 	addu	v0,v0,v1
    11c8:	00021843 	sra	v1,v0,0x1
    11cc:	00031080 	sll	v0,v1,0x2
    11d0:	00471021 	addu	v0,v0,a3
    11d4:	8c420000 	lw	v0,0(v0)
    11d8:	0082102b 	sltu	v0,a0,v0
    11dc:	50400002 	beqzl	v0,11e8 <func_8004132C+0x3c>
    11e0:	00603021 	move	a2,v1
    11e4:	24650001 	addiu	a1,v1,1
    11e8:	00a6102a 	slt	v0,a1,a2
    11ec:	1440fff4 	bnez	v0,11c0 <func_8004132C+0x14>
    11f0:	00a61021 	addu	v0,a1,a2
    11f4:	03e00008 	jr	ra
    11f8:	00a01021 	move	v0,a1

000011fc <func_8004137C>:
    11fc:	24050001 	li	a1,1
    1200:	24061000 	li	a2,4096
    1204:	3c020000 	lui	v0,0x0
			1204: R_MIPS_HI16	D_80042A64
    1208:	8c470000 	lw	a3,0(v0)
			1208: R_MIPS_LO16	D_80042A64
    120c:	00a61021 	addu	v0,a1,a2
    1210:	00021fc2 	srl	v1,v0,0x1f
    1214:	00431021 	addu	v0,v0,v1
    1218:	00021843 	sra	v1,v0,0x1
    121c:	00031080 	sll	v0,v1,0x2
    1220:	00471021 	addu	v0,v0,a3
    1224:	8c420000 	lw	v0,0(v0)
    1228:	0082102b 	sltu	v0,a0,v0
    122c:	50400002 	beqzl	v0,1238 <func_8004137C+0x3c>
    1230:	00603021 	move	a2,v1
    1234:	24650001 	addiu	a1,v1,1
    1238:	00a6102a 	slt	v0,a1,a2
    123c:	1440fff4 	bnez	v0,1210 <func_8004137C+0x14>
    1240:	00a61021 	addu	v0,a1,a2
    1244:	03e00008 	jr	ra
    1248:	24a2ffff 	addiu	v0,a1,-1

0000124c <func_800413CC>:
    124c:	27bdffe0 	addiu	sp,sp,-32
    1250:	afb00010 	sw	s0,16(sp)
    1254:	00008021 	move	s0,zero
    1258:	afb10014 	sw	s1,20(sp)
    125c:	3c110000 	lui	s1,0x0
			125c: R_MIPS_HI16	D_80042AC4
    1260:	afbf0018 	sw	ra,24(sp)
    1264:	0c0001cf 	jal	73c <func_800408BC>
			1264: R_MIPS_26	.text
    1268:	26100001 	addiu	s0,s0,1
    126c:	8e230000 	lw	v1,0(s1)
			126c: R_MIPS_LO16	D_80042AC4
    1270:	00031840 	sll	v1,v1,0x1
    1274:	00621821 	addu	v1,v1,v0
    1278:	2a020011 	slti	v0,s0,17
    127c:	1440fff9 	bnez	v0,1264 <func_800413CC+0x18>
    1280:	ae230000 	sw	v1,0(s1)
			1280: R_MIPS_LO16	D_80042AC4
    1284:	8fbf0018 	lw	ra,24(sp)
    1288:	8fb10014 	lw	s1,20(sp)
    128c:	8fb00010 	lw	s0,16(sp)
    1290:	03e00008 	jr	ra
    1294:	27bd0020 	addiu	sp,sp,32

00001298 <func_80041418>:
    1298:	27bdffd0 	addiu	sp,sp,-48
    129c:	afb20018 	sw	s2,24(sp)
    12a0:	3c120000 	lui	s2,0x0
			12a0: R_MIPS_HI16	D_80042ABC
    12a4:	afb40020 	sw	s4,32(sp)
    12a8:	3c140000 	lui	s4,0x0
			12a8: R_MIPS_HI16	D_80042AC4
    12ac:	afb3001c 	sw	s3,28(sp)
    12b0:	3c130000 	lui	s3,0x0
			12b0: R_MIPS_HI16	D_80042A60
    12b4:	8e440000 	lw	a0,0(s2)
			12b4: R_MIPS_LO16	D_80042ABC
    12b8:	8e820000 	lw	v0,0(s4)
			12b8: R_MIPS_LO16	D_80042AC4
    12bc:	8e630000 	lw	v1,0(s3)
			12bc: R_MIPS_LO16	D_80042A60
    12c0:	afbf002c 	sw	ra,44(sp)
    12c4:	afb60028 	sw	s6,40(sp)
    12c8:	afb50024 	sw	s5,36(sp)
    12cc:	afb10014 	sw	s1,20(sp)
    12d0:	afb00010 	sw	s0,16(sp)
    12d4:	00441023 	subu	v0,v0,a0
    12d8:	8c630000 	lw	v1,0(v1)
    12dc:	24420001 	addiu	v0,v0,1
    12e0:	00430018 	mult	v0,v1
    12e4:	3c110000 	lui	s1,0x0
			12e4: R_MIPS_HI16	D_80042AC0
    12e8:	8e300000 	lw	s0,0(s1)
			12e8: R_MIPS_LO16	D_80042AC0
    12ec:	00001812 	mflo	v1
    12f0:	02048023 	subu	s0,s0,a0
    12f4:	2464ffff 	addiu	a0,v1,-1
    12f8:	0090001b 	divu	zero,a0,s0
    12fc:	16000002 	bnez	s0,1308 <func_80041418+0x70>
    1300:	00000000 	nop
    1304:	0007000d 	break	0x7
    1308:	00002012 	mflo	a0
    130c:	0c00046b 	jal	11ac <func_8004132C>
			130c: R_MIPS_26	.text
    1310:	3416ffff 	li	s6,0xffff
    1314:	0040a821 	move	s5,v0
    1318:	8e650000 	lw	a1,0(s3)
			1318: R_MIPS_LO16	D_80042A60
    131c:	00151880 	sll	v1,s5,0x2
    1320:	00651821 	addu	v1,v1,a1
    1324:	8c62fffc 	lw	v0,-4(v1)
    1328:	02020018 	mult	s0,v0
    132c:	00003812 	mflo	a3
    1330:	8ca20000 	lw	v0,0(a1)
    1334:	00000000 	nop
    1338:	00e2001b 	divu	zero,a3,v0
    133c:	14400002 	bnez	v0,1348 <func_80041418+0xb0>
    1340:	00000000 	nop
    1344:	0007000d 	break	0x7
    1348:	00001012 	mflo	v0
    134c:	8c630000 	lw	v1,0(v1)
    1350:	00000000 	nop
    1354:	02030018 	mult	s0,v1
    1358:	8e440000 	lw	a0,0(s2)
			1358: R_MIPS_LO16	D_80042ABC
    135c:	00001812 	mflo	v1
    1360:	00821021 	addu	v0,a0,v0
    1364:	ae220000 	sw	v0,0(s1)
			1364: R_MIPS_LO16	D_80042AC0
    1368:	8ca20000 	lw	v0,0(a1)
    136c:	0062001b 	divu	zero,v1,v0
    1370:	14400002 	bnez	v0,137c <func_80041418+0xe4>
    1374:	00000000 	nop
    1378:	0007000d 	break	0x7
    137c:	00001012 	mflo	v0
    1380:	3c13ffff 	lui	s3,0xffff
    1384:	24108000 	li	s0,-32768
    1388:	00822021 	addu	a0,a0,v0
    138c:	ae440000 	sw	a0,0(s2)
			138c: R_MIPS_LO16	D_80042ABC
    1390:	8e430000 	lw	v1,0(s2)
			1390: R_MIPS_LO16	D_80042ABC
    1394:	02c3102b 	sltu	v0,s6,v1
    1398:	10400009 	beqz	v0,13c0 <func_80041418+0x128>
    139c:	00731021 	addu	v0,v1,s3
    13a0:	ae420000 	sw	v0,0(s2)
			13a0: R_MIPS_LO16	D_80042ABC
    13a4:	8e820000 	lw	v0,0(s4)
			13a4: R_MIPS_LO16	D_80042AC4
    13a8:	8e230000 	lw	v1,0(s1)
			13a8: R_MIPS_LO16	D_80042AC0
    13ac:	00531021 	addu	v0,v0,s3
    13b0:	00731821 	addu	v1,v1,s3
    13b4:	ae820000 	sw	v0,0(s4)
			13b4: R_MIPS_LO16	D_80042AC4
    13b8:	08000505 	j	1414 <func_80041418+0x17c>
			13b8: R_MIPS_26	.text
    13bc:	ae230000 	sw	v1,0(s1)
			13bc: R_MIPS_LO16	D_80042AC0
    13c0:	24027fff 	li	v0,32767
    13c4:	0043102b 	sltu	v0,v0,v1
    13c8:	1040000d 	beqz	v0,1400 <func_80041418+0x168>
    13cc:	3c020001 	lui	v0,0x1
    13d0:	8e240000 	lw	a0,0(s1)
			13d0: R_MIPS_LO16	D_80042AC0
    13d4:	34428000 	ori	v0,v0,0x8000
    13d8:	0044102b 	sltu	v0,v0,a0
    13dc:	14400008 	bnez	v0,1400 <func_80041418+0x168>
    13e0:	00701021 	addu	v0,v1,s0
    13e4:	8e830000 	lw	v1,0(s4)
			13e4: R_MIPS_LO16	D_80042AC4
    13e8:	ae420000 	sw	v0,0(s2)
			13e8: R_MIPS_LO16	D_80042ABC
    13ec:	00901021 	addu	v0,a0,s0
    13f0:	ae220000 	sw	v0,0(s1)
			13f0: R_MIPS_LO16	D_80042AC0
    13f4:	00701821 	addu	v1,v1,s0
    13f8:	08000505 	j	1414 <func_80041418+0x17c>
			13f8: R_MIPS_26	.text
    13fc:	ae830000 	sw	v1,0(s4)
			13fc: R_MIPS_LO16	D_80042AC4
    1400:	8e230000 	lw	v1,0(s1)
			1400: R_MIPS_LO16	D_80042AC0
    1404:	3c020001 	lui	v0,0x1
    1408:	0043102b 	sltu	v0,v0,v1
    140c:	1440000d 	bnez	v0,1444 <func_80041418+0x1ac>
    1410:	02a02021 	move	a0,s5
    1414:	8e420000 	lw	v0,0(s2)
			1414: R_MIPS_LO16	D_80042ABC
    1418:	8e230000 	lw	v1,0(s1)
			1418: R_MIPS_LO16	D_80042AC0
    141c:	00021040 	sll	v0,v0,0x1
    1420:	00031840 	sll	v1,v1,0x1
    1424:	ae420000 	sw	v0,0(s2)
			1424: R_MIPS_LO16	D_80042ABC
    1428:	0c0001cf 	jal	73c <func_800408BC>
			1428: R_MIPS_26	.text
    142c:	ae230000 	sw	v1,0(s1)
			142c: R_MIPS_LO16	D_80042AC0
    1430:	8e830000 	lw	v1,0(s4)
			1430: R_MIPS_LO16	D_80042AC4
    1434:	00031840 	sll	v1,v1,0x1
    1438:	00621821 	addu	v1,v1,v0
    143c:	080004e4 	j	1390 <func_80041418+0xf8>
			143c: R_MIPS_26	.text
    1440:	ae830000 	sw	v1,0(s4)
			1440: R_MIPS_LO16	D_80042AC4
    1444:	3c020000 	lui	v0,0x0
			1444: R_MIPS_HI16	D_80042A48
    1448:	8c430000 	lw	v1,0(v0)
			1448: R_MIPS_LO16	D_80042A48
    144c:	00041080 	sll	v0,a0,0x2
    1450:	00431021 	addu	v0,v0,v1
    1454:	8c500000 	lw	s0,0(v0)
    1458:	0c00031f 	jal	c7c <func_80040DFC>
			1458: R_MIPS_26	.text
    145c:	00000000 	nop
    1460:	8fbf002c 	lw	ra,44(sp)
    1464:	8fb60028 	lw	s6,40(sp)
    1468:	8fb50024 	lw	s5,36(sp)
    146c:	8fb40020 	lw	s4,32(sp)
    1470:	8fb3001c 	lw	s3,28(sp)
    1474:	8fb20018 	lw	s2,24(sp)
    1478:	8fb10014 	lw	s1,20(sp)
    147c:	02001021 	move	v0,s0
    1480:	8fb00010 	lw	s0,16(sp)
    1484:	03e00008 	jr	ra
    1488:	27bd0030 	addiu	sp,sp,48

0000148c <func_8004160C>:
    148c:	27bdffd0 	addiu	sp,sp,-48
    1490:	afb20018 	sw	s2,24(sp)
    1494:	3c120000 	lui	s2,0x0
			1494: R_MIPS_HI16	D_80042ABC
    1498:	afb40020 	sw	s4,32(sp)
    149c:	3c140000 	lui	s4,0x0
			149c: R_MIPS_HI16	D_80042AC4
    14a0:	afb3001c 	sw	s3,28(sp)
    14a4:	3c130000 	lui	s3,0x0
			14a4: R_MIPS_HI16	D_80042A64
    14a8:	8e440000 	lw	a0,0(s2)
			14a8: R_MIPS_LO16	D_80042ABC
    14ac:	8e820000 	lw	v0,0(s4)
			14ac: R_MIPS_LO16	D_80042AC4
    14b0:	8e630000 	lw	v1,0(s3)
			14b0: R_MIPS_LO16	D_80042A64
    14b4:	afbf002c 	sw	ra,44(sp)
    14b8:	afb60028 	sw	s6,40(sp)
    14bc:	afb50024 	sw	s5,36(sp)
    14c0:	afb10014 	sw	s1,20(sp)
    14c4:	afb00010 	sw	s0,16(sp)
    14c8:	00441023 	subu	v0,v0,a0
    14cc:	8c630000 	lw	v1,0(v1)
    14d0:	24420001 	addiu	v0,v0,1
    14d4:	00430018 	mult	v0,v1
    14d8:	3c110000 	lui	s1,0x0
			14d8: R_MIPS_HI16	D_80042AC0
    14dc:	8e300000 	lw	s0,0(s1)
			14dc: R_MIPS_LO16	D_80042AC0
    14e0:	00001812 	mflo	v1
    14e4:	02048023 	subu	s0,s0,a0
    14e8:	2464ffff 	addiu	a0,v1,-1
    14ec:	0090001b 	divu	zero,a0,s0
    14f0:	16000002 	bnez	s0,14fc <func_8004160C+0x70>
    14f4:	00000000 	nop
    14f8:	0007000d 	break	0x7
    14fc:	00002012 	mflo	a0
    1500:	0c00047f 	jal	11fc <func_8004137C>
			1500: R_MIPS_26	.text
    1504:	3416ffff 	li	s6,0xffff
    1508:	0040a821 	move	s5,v0
    150c:	8e650000 	lw	a1,0(s3)
			150c: R_MIPS_LO16	D_80042A64
    1510:	00151880 	sll	v1,s5,0x2
    1514:	00651821 	addu	v1,v1,a1
    1518:	8c620000 	lw	v0,0(v1)
    151c:	02020018 	mult	s0,v0
    1520:	00003812 	mflo	a3
    1524:	8ca20000 	lw	v0,0(a1)
    1528:	00000000 	nop
    152c:	00e2001b 	divu	zero,a3,v0
    1530:	14400002 	bnez	v0,153c <func_8004160C+0xb0>
    1534:	00000000 	nop
    1538:	0007000d 	break	0x7
    153c:	00001012 	mflo	v0
    1540:	8c630004 	lw	v1,4(v1)
    1544:	00000000 	nop
    1548:	02030018 	mult	s0,v1
    154c:	8e440000 	lw	a0,0(s2)
			154c: R_MIPS_LO16	D_80042ABC
    1550:	00001812 	mflo	v1
    1554:	00821021 	addu	v0,a0,v0
    1558:	ae220000 	sw	v0,0(s1)
			1558: R_MIPS_LO16	D_80042AC0
    155c:	8ca20000 	lw	v0,0(a1)
    1560:	0062001b 	divu	zero,v1,v0
    1564:	14400002 	bnez	v0,1570 <func_8004160C+0xe4>
    1568:	00000000 	nop
    156c:	0007000d 	break	0x7
    1570:	00001012 	mflo	v0
    1574:	3c13ffff 	lui	s3,0xffff
    1578:	24108000 	li	s0,-32768
    157c:	00822021 	addu	a0,a0,v0
    1580:	ae440000 	sw	a0,0(s2)
			1580: R_MIPS_LO16	D_80042ABC
    1584:	8e430000 	lw	v1,0(s2)
			1584: R_MIPS_LO16	D_80042ABC
    1588:	02c3102b 	sltu	v0,s6,v1
    158c:	10400009 	beqz	v0,15b4 <func_8004160C+0x128>
    1590:	00731021 	addu	v0,v1,s3
    1594:	ae420000 	sw	v0,0(s2)
			1594: R_MIPS_LO16	D_80042ABC
    1598:	8e820000 	lw	v0,0(s4)
			1598: R_MIPS_LO16	D_80042AC4
    159c:	8e230000 	lw	v1,0(s1)
			159c: R_MIPS_LO16	D_80042AC0
    15a0:	00531021 	addu	v0,v0,s3
    15a4:	00731821 	addu	v1,v1,s3
    15a8:	ae820000 	sw	v0,0(s4)
			15a8: R_MIPS_LO16	D_80042AC4
    15ac:	08000582 	j	1608 <func_8004160C+0x17c>
			15ac: R_MIPS_26	.text
    15b0:	ae230000 	sw	v1,0(s1)
			15b0: R_MIPS_LO16	D_80042AC0
    15b4:	24027fff 	li	v0,32767
    15b8:	0043102b 	sltu	v0,v0,v1
    15bc:	1040000d 	beqz	v0,15f4 <func_8004160C+0x168>
    15c0:	3c020001 	lui	v0,0x1
    15c4:	8e240000 	lw	a0,0(s1)
			15c4: R_MIPS_LO16	D_80042AC0
    15c8:	34428000 	ori	v0,v0,0x8000
    15cc:	0044102b 	sltu	v0,v0,a0
    15d0:	14400008 	bnez	v0,15f4 <func_8004160C+0x168>
    15d4:	00701021 	addu	v0,v1,s0
    15d8:	8e830000 	lw	v1,0(s4)
			15d8: R_MIPS_LO16	D_80042AC4
    15dc:	ae420000 	sw	v0,0(s2)
			15dc: R_MIPS_LO16	D_80042ABC
    15e0:	00901021 	addu	v0,a0,s0
    15e4:	ae220000 	sw	v0,0(s1)
			15e4: R_MIPS_LO16	D_80042AC0
    15e8:	00701821 	addu	v1,v1,s0
    15ec:	08000582 	j	1608 <func_8004160C+0x17c>
			15ec: R_MIPS_26	.text
    15f0:	ae830000 	sw	v1,0(s4)
			15f0: R_MIPS_LO16	D_80042AC4
    15f4:	8e230000 	lw	v1,0(s1)
			15f4: R_MIPS_LO16	D_80042AC0
    15f8:	3c020001 	lui	v0,0x1
    15fc:	0043102b 	sltu	v0,v0,v1
    1600:	1440000d 	bnez	v0,1638 <func_8004160C+0x1ac>
    1604:	02a01021 	move	v0,s5
    1608:	8e420000 	lw	v0,0(s2)
			1608: R_MIPS_LO16	D_80042ABC
    160c:	8e230000 	lw	v1,0(s1)
			160c: R_MIPS_LO16	D_80042AC0
    1610:	00021040 	sll	v0,v0,0x1
    1614:	00031840 	sll	v1,v1,0x1
    1618:	ae420000 	sw	v0,0(s2)
			1618: R_MIPS_LO16	D_80042ABC
    161c:	0c0001cf 	jal	73c <func_800408BC>
			161c: R_MIPS_26	.text
    1620:	ae230000 	sw	v1,0(s1)
			1620: R_MIPS_LO16	D_80042AC0
    1624:	8e830000 	lw	v1,0(s4)
			1624: R_MIPS_LO16	D_80042AC4
    1628:	00031840 	sll	v1,v1,0x1
    162c:	00621821 	addu	v1,v1,v0
    1630:	08000561 	j	1584 <func_8004160C+0xf8>
			1630: R_MIPS_26	.text
    1634:	ae830000 	sw	v1,0(s4)
			1634: R_MIPS_LO16	D_80042AC4
    1638:	8fbf002c 	lw	ra,44(sp)
    163c:	8fb60028 	lw	s6,40(sp)
    1640:	8fb50024 	lw	s5,36(sp)
    1644:	8fb40020 	lw	s4,32(sp)
    1648:	8fb3001c 	lw	s3,28(sp)
    164c:	8fb20018 	lw	s2,24(sp)
    1650:	8fb10014 	lw	s1,20(sp)
    1654:	8fb00010 	lw	s0,16(sp)
    1658:	03e00008 	jr	ra
    165c:	27bd0030 	addiu	sp,sp,48

00001660 <func_800417E0>:
    1660:	27bdffc8 	addiu	sp,sp,-56
    1664:	afb10014 	sw	s1,20(sp)
    1668:	00808821 	move	s1,a0
    166c:	afb20018 	sw	s2,24(sp)
    1670:	00a09021 	move	s2,a1
    1674:	afb00010 	sw	s0,16(sp)
    1678:	00c08021 	move	s0,a2
    167c:	2404103b 	li	a0,4155
    1680:	afbf0034 	sw	ra,52(sp)
    1684:	afbe0030 	sw	s8,48(sp)
    1688:	afb7002c 	sw	s7,44(sp)
    168c:	afb60028 	sw	s6,40(sp)
    1690:	afb50024 	sw	s5,36(sp)
    1694:	afb40020 	sw	s4,32(sp)
    1698:	0c0007fe 	jal	1ff8 <func_80042178>
			1698: R_MIPS_26	.text
    169c:	afb3001c 	sw	s3,28(sp)
    16a0:	24044004 	li	a0,16388
    16a4:	3c030000 	lui	v1,0x0
			16a4: R_MIPS_HI16	D_80042A78
    16a8:	0c0007fe 	jal	1ff8 <func_80042178>
			16a8: R_MIPS_26	.text
    16ac:	ac620000 	sw	v0,0(v1)
			16ac: R_MIPS_LO16	D_80042A78
    16b0:	24044404 	li	a0,17412
    16b4:	3c030000 	lui	v1,0x0
			16b4: R_MIPS_HI16	D_80042A80
    16b8:	0c0007fe 	jal	1ff8 <func_80042178>
			16b8: R_MIPS_26	.text
    16bc:	ac620000 	sw	v0,0(v1)
			16bc: R_MIPS_LO16	D_80042A80
    16c0:	24044004 	li	a0,16388
    16c4:	3c030000 	lui	v1,0x0
			16c4: R_MIPS_HI16	D_80042A84
    16c8:	0c0007fe 	jal	1ff8 <func_80042178>
			16c8: R_MIPS_26	.text
    16cc:	ac620000 	sw	v0,0(v1)
			16cc: R_MIPS_LO16	D_80042A84
    16d0:	240404e8 	li	a0,1256
    16d4:	3c030000 	lui	v1,0x0
			16d4: R_MIPS_HI16	D_80042A68
    16d8:	0c0007fe 	jal	1ff8 <func_80042178>
			16d8: R_MIPS_26	.text
    16dc:	ac620000 	sw	v0,0(v1)
			16dc: R_MIPS_LO16	D_80042A68
    16e0:	240404ec 	li	a0,1260
    16e4:	3c030000 	lui	v1,0x0
			16e4: R_MIPS_HI16	D_80042A4C
    16e8:	0c0007fe 	jal	1ff8 <func_80042178>
			16e8: R_MIPS_26	.text
    16ec:	ac620000 	sw	v0,0(v1)
			16ec: R_MIPS_LO16	D_80042A4C
    16f0:	240404ec 	li	a0,1260
    16f4:	3c030000 	lui	v1,0x0
			16f4: R_MIPS_HI16	D_80042A48
    16f8:	0c0007fe 	jal	1ff8 <func_80042178>
			16f8: R_MIPS_26	.text
    16fc:	ac620000 	sw	v0,0(v1)
			16fc: R_MIPS_LO16	D_80042A48
    1700:	240404ec 	li	a0,1260
    1704:	3c030000 	lui	v1,0x0
			1704: R_MIPS_HI16	D_80042A7C
    1708:	0c0007fe 	jal	1ff8 <func_80042178>
			1708: R_MIPS_26	.text
    170c:	ac620000 	sw	v0,0(v1)
			170c: R_MIPS_LO16	D_80042A7C
    1710:	24044004 	li	a0,16388
    1714:	3c030000 	lui	v1,0x0
			1714: R_MIPS_HI16	D_80042A60
    1718:	0c0007fe 	jal	1ff8 <func_80042178>
			1718: R_MIPS_26	.text
    171c:	ac620000 	sw	v0,0(v1)
			171c: R_MIPS_LO16	D_80042A60
    1720:	00009821 	move	s3,zero
    1724:	3c030000 	lui	v1,0x0
			1724: R_MIPS_HI16	D_80042A70
    1728:	00603021 	move	a2,v1
    172c:	3c030000 	lui	v1,0x0
			172c: R_MIPS_HI16	D_80042A88
    1730:	00604021 	move	t0,v1
    1734:	3c030000 	lui	v1,0x0
			1734: R_MIPS_HI16	D_80042A74
    1738:	00603821 	move	a3,v1
    173c:	3c030000 	lui	v1,0x0
			173c: R_MIPS_HI16	D_80042A64
    1740:	3c040000 	lui	a0,0x0
			1740: R_MIPS_HI16	D_80042AB0
    1744:	ac620000 	sw	v0,0(v1)
			1744: R_MIPS_LO16	D_80042A64
    1748:	3c020000 	lui	v0,0x0
			1748: R_MIPS_HI16	D_80042AB4
    174c:	ac400000 	sw	zero,0(v0)
			174c: R_MIPS_LO16	D_80042AB4
    1750:	3c020000 	lui	v0,0x0
			1750: R_MIPS_HI16	D_80042AB8
    1754:	ac400000 	sw	zero,0(v0)
			1754: R_MIPS_LO16	D_80042AB8
    1758:	3c020000 	lui	v0,0x0
			1758: R_MIPS_HI16	D_80042A58
    175c:	3c030000 	lui	v1,0x0
			175c: R_MIPS_HI16	D_80042A44
    1760:	ac400000 	sw	zero,0(v0)
			1760: R_MIPS_LO16	D_80042A58
    1764:	24020080 	li	v0,128
    1768:	ac620000 	sw	v0,0(v1)
			1768: R_MIPS_LO16	D_80042A44
    176c:	3c020000 	lui	v0,0x0
			176c: R_MIPS_HI16	D_80042A54
    1770:	ac400000 	sw	zero,0(v0)
			1770: R_MIPS_LO16	D_80042A54
    1774:	3c020000 	lui	v0,0x0
			1774: R_MIPS_HI16	D_80042A40
    1778:	ac400000 	sw	zero,0(v0)
			1778: R_MIPS_LO16	D_80042A40
    177c:	3c020000 	lui	v0,0x0
			177c: R_MIPS_HI16	D_80042ABC
    1780:	3c030000 	lui	v1,0x0
			1780: R_MIPS_HI16	D_80042AC0
    1784:	ac400000 	sw	zero,0(v0)
			1784: R_MIPS_LO16	D_80042ABC
    1788:	3c020002 	lui	v0,0x2
    178c:	ac620000 	sw	v0,0(v1)
			178c: R_MIPS_LO16	D_80042AC0
    1790:	3c020000 	lui	v0,0x0
			1790: R_MIPS_HI16	D_80042AC4
    1794:	ac400000 	sw	zero,0(v0)
			1794: R_MIPS_LO16	D_80042AC4
    1798:	3c020000 	lui	v0,0x0
			1798: R_MIPS_HI16	D_80042A6C
    179c:	ac520000 	sw	s2,0(v0)
			179c: R_MIPS_LO16	D_80042A6C
    17a0:	3c020000 	lui	v0,0x0
			17a0: R_MIPS_HI16	D_80042A8C
    17a4:	ac500000 	sw	s0,0(v0)
			17a4: R_MIPS_LO16	D_80042A8C
    17a8:	3c020000 	lui	v0,0x0
			17a8: R_MIPS_HI16	D_80042A50
    17ac:	ac800000 	sw	zero,0(a0)
			17ac: R_MIPS_LO16	D_80042AB0
    17b0:	ad110000 	sw	s1,0(t0)
			17b0: R_MIPS_LO16	D_80042A88
    17b4:	acf00000 	sw	s0,0(a3)
			17b4: R_MIPS_LO16	D_80042A74
    17b8:	ac900000 	sw	s0,0(a0)
			17b8: R_MIPS_LO16	D_80042AB0
    17bc:	ac400000 	sw	zero,0(v0)
			17bc: R_MIPS_LO16	D_80042A50
    17c0:	acc00000 	sw	zero,0(a2)
			17c0: R_MIPS_LO16	D_80042A70
    17c4:	001328c0 	sll	a1,s3,0x3
    17c8:	26730001 	addiu	s3,s3,1
    17cc:	8cc40000 	lw	a0,0(a2)
			17cc: R_MIPS_LO16	D_80042A70
    17d0:	8d030000 	lw	v1,0(t0)
			17d0: R_MIPS_LO16	D_80042A88
    17d4:	8ce20000 	lw	v0,0(a3)
			17d4: R_MIPS_LO16	D_80042A74
    17d8:	00641821 	addu	v1,v1,a0
    17dc:	24840001 	addiu	a0,a0,1
    17e0:	00a21007 	srav	v0,v0,a1
    17e4:	a0620000 	sb	v0,0(v1)
    17e8:	2a620004 	slti	v0,s3,4
    17ec:	1440fff5 	bnez	v0,17c4 <func_800417E0+0x164>
    17f0:	acc40000 	sw	a0,0(a2)
			17f0: R_MIPS_LO16	D_80042A70
    17f4:	3c020000 	lui	v0,0x0
			17f4: R_MIPS_HI16	D_80042AB4
    17f8:	3c050000 	lui	a1,0x0
			17f8: R_MIPS_HI16	D_80042AB0
    17fc:	8c430000 	lw	v1,0(v0)
			17fc: R_MIPS_LO16	D_80042AB4
    1800:	8ca40000 	lw	a0,0(a1)
			1800: R_MIPS_LO16	D_80042AB0
    1804:	24630004 	addiu	v1,v1,4
    1808:	14800003 	bnez	a0,1818 <func_800417E0+0x1b8>
    180c:	ac430000 	sw	v1,0(v0)
			180c: R_MIPS_LO16	D_80042AB4
    1810:	080006aa 	j	1aa8 <func_800417E0+0x448>
			1810: R_MIPS_26	.text
    1814:	00001021 	move	v0,zero
    1818:	0c0002e7 	jal	b9c <func_80040D1C>
			1818: R_MIPS_26	.text
    181c:	aca00000 	sw	zero,0(a1)
			181c: R_MIPS_LO16	D_80042AB0
    1820:	0c0001e6 	jal	798 <func_80040918>
			1820: R_MIPS_26	.text
    1824:	00009021 	move	s2,zero
    1828:	24110fc4 	li	s1,4036
    182c:	02409821 	move	s3,s2
    1830:	3c040000 	lui	a0,0x0
			1830: R_MIPS_HI16	D_80042A78
    1834:	24030020 	li	v1,32
    1838:	8c820000 	lw	v0,0(a0)
			1838: R_MIPS_LO16	D_80042A78
    183c:	00531021 	addu	v0,v0,s3
    1840:	26730001 	addiu	s3,s3,1
    1844:	a0430000 	sb	v1,0(v0)
    1848:	0271102a 	slt	v0,s3,s1
    184c:	1440fffa 	bnez	v0,1838 <func_800417E0+0x1d8>
    1850:	0000a021 	move	s4,zero
    1854:	3c060000 	lui	a2,0x0
			1854: R_MIPS_HI16	D_80042A50
    1858:	3c090000 	lui	t1,0x0
			1858: R_MIPS_HI16	D_80042A74
    185c:	3c080000 	lui	t0,0x0
			185c: R_MIPS_HI16	D_80042A6C
    1860:	3c070000 	lui	a3,0x0
			1860: R_MIPS_HI16	D_80042A78
    1864:	8cc50000 	lw	a1,0(a2)
			1864: R_MIPS_LO16	D_80042A50
    1868:	8d220000 	lw	v0,0(t1)
			1868: R_MIPS_LO16	D_80042A74
    186c:	00a2102a 	slt	v0,a1,v0
    1870:	1040000c 	beqz	v0,18a4 <func_800417E0+0x244>
    1874:	02342021 	addu	a0,s1,s4
    1878:	26940001 	addiu	s4,s4,1
    187c:	8d020000 	lw	v0,0(t0)
			187c: R_MIPS_LO16	D_80042A6C
    1880:	8ce30000 	lw	v1,0(a3)
			1880: R_MIPS_LO16	D_80042A78
    1884:	00451021 	addu	v0,v0,a1
    1888:	90500000 	lbu	s0,0(v0)
    188c:	24a20001 	addiu	v0,a1,1
    1890:	00641821 	addu	v1,v1,a0
    1894:	acc20000 	sw	v0,0(a2)
			1894: R_MIPS_LO16	D_80042A50
    1898:	2a82003c 	slti	v0,s4,60
    189c:	1440fff1 	bnez	v0,1864 <func_800417E0+0x204>
    18a0:	a0700000 	sb	s0,0(v1)
    18a4:	3c020000 	lui	v0,0x0
			18a4: R_MIPS_HI16	D_80042AB0
    18a8:	ac540000 	sw	s4,0(v0)
			18a8: R_MIPS_LO16	D_80042AB0
    18ac:	24130001 	li	s3,1
    18b0:	0c0001fb 	jal	7ec <func_8004096C>
			18b0: R_MIPS_26	.text
    18b4:	02332023 	subu	a0,s1,s3
    18b8:	26730001 	addiu	s3,s3,1
    18bc:	2a62003d 	slti	v0,s3,61
    18c0:	1440fffb 	bnez	v0,18b0 <func_800417E0+0x250>
    18c4:	00000000 	nop
    18c8:	0c0001fb 	jal	7ec <func_8004096C>
			18c8: R_MIPS_26	.text
    18cc:	02202021 	move	a0,s1
    18d0:	3c160000 	lui	s6,0x0
			18d0: R_MIPS_HI16	D_80042A5C
    18d4:	3c170000 	lui	s7,0x0
			18d4: R_MIPS_HI16	D_80042A78
    18d8:	3c1e0000 	lui	s8,0x0
			18d8: R_MIPS_HI16	D_80042A50
    18dc:	8ec20000 	lw	v0,0(s6)
			18dc: R_MIPS_LO16	D_80042A5C
    18e0:	0282102a 	slt	v0,s4,v0
    18e4:	54400001 	bnezl	v0,18ec <func_800417E0+0x28c>
    18e8:	aed40000 	sw	s4,0(s6)
			18e8: R_MIPS_LO16	D_80042A5C
    18ec:	8ec40000 	lw	a0,0(s6)
			18ec: R_MIPS_LO16	D_80042A5C
    18f0:	28820003 	slti	v0,a0,3
    18f4:	10400009 	beqz	v0,191c <func_800417E0+0x2bc>
    18f8:	24020001 	li	v0,1
    18fc:	8ee30000 	lw	v1,0(s7)
			18fc: R_MIPS_LO16	D_80042A78
    1900:	aec20000 	sw	v0,0(s6)
			1900: R_MIPS_LO16	D_80042A5C
    1904:	00711821 	addu	v1,v1,s1
    1908:	90640000 	lbu	a0,0(v1)
    190c:	0c000384 	jal	e10 <func_80040F90>
			190c: R_MIPS_26	.text
    1910:	00000000 	nop
    1914:	0800064d 	j	1934 <func_800417E0+0x2d4>
			1914: R_MIPS_26	.text
    1918:	00000000 	nop
    191c:	0c000384 	jal	e10 <func_80040F90>
			191c: R_MIPS_26	.text
    1920:	248400fd 	addiu	a0,a0,253
    1924:	3c020000 	lui	v0,0x0
			1924: R_MIPS_HI16	D_80042A90
    1928:	8c440000 	lw	a0,0(v0)
			1928: R_MIPS_LO16	D_80042A90
    192c:	0c0003f2 	jal	fc8 <func_80041148>
			192c: R_MIPS_26	.text
    1930:	2484ffff 	addiu	a0,a0,-1
    1934:	8ed50000 	lw	s5,0(s6)
			1934: R_MIPS_LO16	D_80042A5C
    1938:	1aa0002d 	blez	s5,19f0 <func_800417E0+0x390>
    193c:	00009821 	move	s3,zero
    1940:	3c0a0000 	lui	t2,0x0
			1940: R_MIPS_HI16	D_80042A74
    1944:	8fc30000 	lw	v1,0(s8)
			1944: R_MIPS_LO16	D_80042A50
    1948:	8d420000 	lw	v0,0(t2)
			1948: R_MIPS_LO16	D_80042A74
    194c:	0062102a 	slt	v0,v1,v0
    1950:	10400027 	beqz	v0,19f0 <func_800417E0+0x390>
    1954:	3c0a0000 	lui	t2,0x0
			1954: R_MIPS_HI16	D_80042A6C
    1958:	8d420000 	lw	v0,0(t2)
			1958: R_MIPS_LO16	D_80042A6C
    195c:	02402021 	move	a0,s2
    1960:	00431021 	addu	v0,v0,v1
    1964:	90500000 	lbu	s0,0(v0)
    1968:	24620001 	addiu	v0,v1,1
    196c:	0c00027b 	jal	9ec <func_80040B6C>
			196c: R_MIPS_26	.text
    1970:	afc20000 	sw	v0,0(s8)
			1970: R_MIPS_LO16	D_80042A50
    1974:	8ee20000 	lw	v0,0(s7)
			1974: R_MIPS_LO16	D_80042A78
    1978:	00521021 	addu	v0,v0,s2
    197c:	a0500000 	sb	s0,0(v0)
    1980:	2a42003b 	slti	v0,s2,59
    1984:	10400005 	beqz	v0,199c <func_800417E0+0x33c>
    1988:	26420001 	addiu	v0,s2,1
    198c:	8ee20000 	lw	v0,0(s7)
			198c: R_MIPS_LO16	D_80042A78
    1990:	02421021 	addu	v0,s2,v0
    1994:	a0501000 	sb	s0,4096(v0)
    1998:	26420001 	addiu	v0,s2,1
    199c:	30520fff 	andi	s2,v0,0xfff
    19a0:	26220001 	addiu	v0,s1,1
    19a4:	30510fff 	andi	s1,v0,0xfff
    19a8:	0c0001fb 	jal	7ec <func_8004096C>
			19a8: R_MIPS_26	.text
    19ac:	02202021 	move	a0,s1
    19b0:	26730001 	addiu	s3,s3,1
    19b4:	0275102a 	slt	v0,s3,s5
    19b8:	1440ffe2 	bnez	v0,1944 <func_800417E0+0x2e4>
    19bc:	3c0a0000 	lui	t2,0x0
			19bc: R_MIPS_HI16	D_80042A74
    19c0:	0800067d 	j	19f4 <func_800417E0+0x394>
			19c0: R_MIPS_26	.text
    19c4:	02601021 	move	v0,s3
    19c8:	0c00027b 	jal	9ec <func_80040B6C>
			19c8: R_MIPS_26	.text
    19cc:	02402021 	move	a0,s2
    19d0:	26420001 	addiu	v0,s2,1
    19d4:	30520fff 	andi	s2,v0,0xfff
    19d8:	26220001 	addiu	v0,s1,1
    19dc:	2694ffff 	addiu	s4,s4,-1
    19e0:	12800003 	beqz	s4,19f0 <func_800417E0+0x390>
    19e4:	30510fff 	andi	s1,v0,0xfff
    19e8:	0c0001fb 	jal	7ec <func_8004096C>
			19e8: R_MIPS_26	.text
    19ec:	02202021 	move	a0,s1
    19f0:	02601021 	move	v0,s3
    19f4:	0055102a 	slt	v0,v0,s5
    19f8:	1440fff3 	bnez	v0,19c8 <func_800417E0+0x368>
    19fc:	26730001 	addiu	s3,s3,1
    1a00:	1e80ffb6 	bgtz	s4,18dc <func_800417E0+0x27c>
    1a04:	00000000 	nop
    1a08:	0c000457 	jal	115c <func_800412DC>
			1a08: R_MIPS_26	.text
    1a0c:	00000000 	nop
    1a10:	3c020000 	lui	v0,0x0
			1a10: R_MIPS_HI16	D_80042A64
    1a14:	8c440000 	lw	a0,0(v0)
			1a14: R_MIPS_LO16	D_80042A64
    1a18:	0c000833 	jal	20cc <func_8004224C>
			1a18: R_MIPS_26	.text
    1a1c:	00000000 	nop
    1a20:	3c020000 	lui	v0,0x0
			1a20: R_MIPS_HI16	D_80042A60
    1a24:	8c440000 	lw	a0,0(v0)
			1a24: R_MIPS_LO16	D_80042A60
    1a28:	0c000833 	jal	20cc <func_8004224C>
			1a28: R_MIPS_26	.text
    1a2c:	00000000 	nop
    1a30:	3c020000 	lui	v0,0x0
			1a30: R_MIPS_HI16	D_80042A7C
    1a34:	8c440000 	lw	a0,0(v0)
			1a34: R_MIPS_LO16	D_80042A7C
    1a38:	0c000833 	jal	20cc <func_8004224C>
			1a38: R_MIPS_26	.text
    1a3c:	00000000 	nop
    1a40:	3c020000 	lui	v0,0x0
			1a40: R_MIPS_HI16	D_80042A48
    1a44:	8c440000 	lw	a0,0(v0)
			1a44: R_MIPS_LO16	D_80042A48
    1a48:	0c000833 	jal	20cc <func_8004224C>
			1a48: R_MIPS_26	.text
    1a4c:	00000000 	nop
    1a50:	3c020000 	lui	v0,0x0
			1a50: R_MIPS_HI16	D_80042A4C
    1a54:	8c440000 	lw	a0,0(v0)
			1a54: R_MIPS_LO16	D_80042A4C
    1a58:	0c000833 	jal	20cc <func_8004224C>
			1a58: R_MIPS_26	.text
    1a5c:	00000000 	nop
    1a60:	3c020000 	lui	v0,0x0
			1a60: R_MIPS_HI16	D_80042A68
    1a64:	8c440000 	lw	a0,0(v0)
			1a64: R_MIPS_LO16	D_80042A68
    1a68:	0c000833 	jal	20cc <func_8004224C>
			1a68: R_MIPS_26	.text
    1a6c:	00000000 	nop
    1a70:	3c020000 	lui	v0,0x0
			1a70: R_MIPS_HI16	D_80042A84
    1a74:	8c440000 	lw	a0,0(v0)
			1a74: R_MIPS_LO16	D_80042A84
    1a78:	0c000833 	jal	20cc <func_8004224C>
			1a78: R_MIPS_26	.text
    1a7c:	00000000 	nop
    1a80:	3c020000 	lui	v0,0x0
			1a80: R_MIPS_HI16	D_80042A80
    1a84:	8c440000 	lw	a0,0(v0)
			1a84: R_MIPS_LO16	D_80042A80
    1a88:	0c000833 	jal	20cc <func_8004224C>
			1a88: R_MIPS_26	.text
    1a8c:	00000000 	nop
    1a90:	3c020000 	lui	v0,0x0
			1a90: R_MIPS_HI16	D_80042A78
    1a94:	8c440000 	lw	a0,0(v0)
			1a94: R_MIPS_LO16	D_80042A78
    1a98:	0c000833 	jal	20cc <func_8004224C>
			1a98: R_MIPS_26	.text
    1a9c:	00000000 	nop
    1aa0:	3c020000 	lui	v0,0x0
			1aa0: R_MIPS_HI16	D_80042A70
    1aa4:	8c420000 	lw	v0,0(v0)
			1aa4: R_MIPS_LO16	D_80042A70
    1aa8:	8fbf0034 	lw	ra,52(sp)
    1aac:	8fbe0030 	lw	s8,48(sp)
    1ab0:	8fb7002c 	lw	s7,44(sp)
    1ab4:	8fb60028 	lw	s6,40(sp)
    1ab8:	8fb50024 	lw	s5,36(sp)
    1abc:	8fb40020 	lw	s4,32(sp)
    1ac0:	8fb3001c 	lw	s3,28(sp)
    1ac4:	8fb20018 	lw	s2,24(sp)
    1ac8:	8fb10014 	lw	s1,20(sp)
    1acc:	8fb00010 	lw	s0,16(sp)
    1ad0:	03e00008 	jr	ra
    1ad4:	27bd0038 	addiu	sp,sp,56

00001ad8 <func_80041C58>:
    1ad8:	27bdffd0 	addiu	sp,sp,-48
    1adc:	afb10014 	sw	s1,20(sp)
    1ae0:	00808821 	move	s1,a0
    1ae4:	afb00010 	sw	s0,16(sp)
    1ae8:	00a08021 	move	s0,a1
    1aec:	2404103b 	li	a0,4155
    1af0:	afbf0028 	sw	ra,40(sp)
    1af4:	afb50024 	sw	s5,36(sp)
    1af8:	afb40020 	sw	s4,32(sp)
    1afc:	afb3001c 	sw	s3,28(sp)
    1b00:	0c0007fe 	jal	1ff8 <func_80042178>
			1b00: R_MIPS_26	.text
    1b04:	afb20018 	sw	s2,24(sp)
    1b08:	24044004 	li	a0,16388
    1b0c:	3c030000 	lui	v1,0x0
			1b0c: R_MIPS_HI16	D_80042A78
    1b10:	0c0007fe 	jal	1ff8 <func_80042178>
			1b10: R_MIPS_26	.text
    1b14:	ac620000 	sw	v0,0(v1)
			1b14: R_MIPS_LO16	D_80042A78
    1b18:	24044404 	li	a0,17412
    1b1c:	3c030000 	lui	v1,0x0
			1b1c: R_MIPS_HI16	D_80042A80
    1b20:	0c0007fe 	jal	1ff8 <func_80042178>
			1b20: R_MIPS_26	.text
    1b24:	ac620000 	sw	v0,0(v1)
			1b24: R_MIPS_LO16	D_80042A80
    1b28:	24044004 	li	a0,16388
    1b2c:	3c030000 	lui	v1,0x0
			1b2c: R_MIPS_HI16	D_80042A84
    1b30:	0c0007fe 	jal	1ff8 <func_80042178>
			1b30: R_MIPS_26	.text
    1b34:	ac620000 	sw	v0,0(v1)
			1b34: R_MIPS_LO16	D_80042A84
    1b38:	240404e8 	li	a0,1256
    1b3c:	3c030000 	lui	v1,0x0
			1b3c: R_MIPS_HI16	D_80042A68
    1b40:	0c0007fe 	jal	1ff8 <func_80042178>
			1b40: R_MIPS_26	.text
    1b44:	ac620000 	sw	v0,0(v1)
			1b44: R_MIPS_LO16	D_80042A68
    1b48:	240404ec 	li	a0,1260
    1b4c:	3c030000 	lui	v1,0x0
			1b4c: R_MIPS_HI16	D_80042A4C
    1b50:	0c0007fe 	jal	1ff8 <func_80042178>
			1b50: R_MIPS_26	.text
    1b54:	ac620000 	sw	v0,0(v1)
			1b54: R_MIPS_LO16	D_80042A4C
    1b58:	240404ec 	li	a0,1260
    1b5c:	3c030000 	lui	v1,0x0
			1b5c: R_MIPS_HI16	D_80042A48
    1b60:	0c0007fe 	jal	1ff8 <func_80042178>
			1b60: R_MIPS_26	.text
    1b64:	ac620000 	sw	v0,0(v1)
			1b64: R_MIPS_LO16	D_80042A48
    1b68:	240404ec 	li	a0,1260
    1b6c:	3c030000 	lui	v1,0x0
			1b6c: R_MIPS_HI16	D_80042A7C
    1b70:	0c0007fe 	jal	1ff8 <func_80042178>
			1b70: R_MIPS_26	.text
    1b74:	ac620000 	sw	v0,0(v1)
			1b74: R_MIPS_LO16	D_80042A7C
    1b78:	24044004 	li	a0,16388
    1b7c:	3c030000 	lui	v1,0x0
			1b7c: R_MIPS_HI16	D_80042A60
    1b80:	0c0007fe 	jal	1ff8 <func_80042178>
			1b80: R_MIPS_26	.text
    1b84:	ac620000 	sw	v0,0(v1)
			1b84: R_MIPS_LO16	D_80042A60
    1b88:	00003021 	move	a2,zero
    1b8c:	3c030000 	lui	v1,0x0
			1b8c: R_MIPS_HI16	D_80042AB0
    1b90:	00603821 	move	a3,v1
    1b94:	3c030000 	lui	v1,0x0
			1b94: R_MIPS_HI16	D_80042A50
    1b98:	00604021 	move	t0,v1
    1b9c:	3c030000 	lui	v1,0x0
			1b9c: R_MIPS_HI16	D_80042A64
    1ba0:	ac620000 	sw	v0,0(v1)
			1ba0: R_MIPS_LO16	D_80042A64
    1ba4:	3c020000 	lui	v0,0x0
			1ba4: R_MIPS_HI16	D_80042AB4
    1ba8:	ac400000 	sw	zero,0(v0)
			1ba8: R_MIPS_LO16	D_80042AB4
    1bac:	3c020000 	lui	v0,0x0
			1bac: R_MIPS_HI16	D_80042AB8
    1bb0:	ac400000 	sw	zero,0(v0)
			1bb0: R_MIPS_LO16	D_80042AB8
    1bb4:	3c020000 	lui	v0,0x0
			1bb4: R_MIPS_HI16	D_80042A58
    1bb8:	3c030000 	lui	v1,0x0
			1bb8: R_MIPS_HI16	D_80042A44
    1bbc:	ac400000 	sw	zero,0(v0)
			1bbc: R_MIPS_LO16	D_80042A58
    1bc0:	24020080 	li	v0,128
    1bc4:	ac620000 	sw	v0,0(v1)
			1bc4: R_MIPS_LO16	D_80042A44
    1bc8:	3c020000 	lui	v0,0x0
			1bc8: R_MIPS_HI16	D_80042A54
    1bcc:	ac400000 	sw	zero,0(v0)
			1bcc: R_MIPS_LO16	D_80042A54
    1bd0:	3c020000 	lui	v0,0x0
			1bd0: R_MIPS_HI16	D_80042A40
    1bd4:	ac400000 	sw	zero,0(v0)
			1bd4: R_MIPS_LO16	D_80042A40
    1bd8:	3c020000 	lui	v0,0x0
			1bd8: R_MIPS_HI16	D_80042ABC
    1bdc:	3c030000 	lui	v1,0x0
			1bdc: R_MIPS_HI16	D_80042AC0
    1be0:	ac400000 	sw	zero,0(v0)
			1be0: R_MIPS_LO16	D_80042ABC
    1be4:	3c020002 	lui	v0,0x2
    1be8:	ac620000 	sw	v0,0(v1)
			1be8: R_MIPS_LO16	D_80042AC0
    1bec:	3c020000 	lui	v0,0x0
			1bec: R_MIPS_HI16	D_80042AC4
    1bf0:	ac400000 	sw	zero,0(v0)
			1bf0: R_MIPS_LO16	D_80042AC4
    1bf4:	3c020000 	lui	v0,0x0
			1bf4: R_MIPS_HI16	D_80042A88
    1bf8:	ac510000 	sw	s1,0(v0)
			1bf8: R_MIPS_LO16	D_80042A88
    1bfc:	3c020000 	lui	v0,0x0
			1bfc: R_MIPS_HI16	D_80042A6C
    1c00:	ac500000 	sw	s0,0(v0)
			1c00: R_MIPS_LO16	D_80042A6C
    1c04:	3c020000 	lui	v0,0x0
			1c04: R_MIPS_HI16	D_80042A70
    1c08:	ace00000 	sw	zero,0(a3)
			1c08: R_MIPS_LO16	D_80042AB0
    1c0c:	ad000000 	sw	zero,0(t0)
			1c0c: R_MIPS_LO16	D_80042A50
    1c10:	ac400000 	sw	zero,0(v0)
			1c10: R_MIPS_LO16	D_80042A70
    1c14:	ace00000 	sw	zero,0(a3)
			1c14: R_MIPS_LO16	D_80042AB0
    1c18:	000628c0 	sll	a1,a2,0x3
    1c1c:	8d030000 	lw	v1,0(t0)
			1c1c: R_MIPS_LO16	D_80042A50
    1c20:	24c60001 	addiu	a2,a2,1
    1c24:	02031021 	addu	v0,s0,v1
    1c28:	90440000 	lbu	a0,0(v0)
    1c2c:	8ce20000 	lw	v0,0(a3)
			1c2c: R_MIPS_LO16	D_80042AB0
    1c30:	24630001 	addiu	v1,v1,1
    1c34:	ad030000 	sw	v1,0(t0)
			1c34: R_MIPS_LO16	D_80042A50
    1c38:	00a42004 	sllv	a0,a0,a1
    1c3c:	00441025 	or	v0,v0,a0
    1c40:	ace20000 	sw	v0,0(a3)
			1c40: R_MIPS_LO16	D_80042AB0
    1c44:	28c20004 	slti	v0,a2,4
    1c48:	5440fff4 	bnezl	v0,1c1c <func_80041C58+0x144>
    1c4c:	000628c0 	sll	a1,a2,0x3
    1c50:	3c020000 	lui	v0,0x0
			1c50: R_MIPS_HI16	D_80042AB0
    1c54:	8c430000 	lw	v1,0(v0)
			1c54: R_MIPS_LO16	D_80042AB0
    1c58:	3c020000 	lui	v0,0x0
			1c58: R_MIPS_HI16	D_80042A8C
    1c5c:	14600003 	bnez	v1,1c6c <func_80041C58+0x194>
    1c60:	ac430000 	sw	v1,0(v0)
			1c60: R_MIPS_LO16	D_80042A8C
    1c64:	0800078a 	j	1e28 <func_80041C58+0x350>
			1c64: R_MIPS_26	.text
    1c68:	00001021 	move	v0,zero
    1c6c:	0c000493 	jal	124c <func_800413CC>
			1c6c: R_MIPS_26	.text
    1c70:	00000000 	nop
    1c74:	0c0002e7 	jal	b9c <func_80040D1C>
			1c74: R_MIPS_26	.text
    1c78:	00000000 	nop
    1c7c:	00003021 	move	a2,zero
    1c80:	3c040000 	lui	a0,0x0
			1c80: R_MIPS_HI16	D_80042A78
    1c84:	24030020 	li	v1,32
    1c88:	8c820000 	lw	v0,0(a0)
			1c88: R_MIPS_LO16	D_80042A78
    1c8c:	00461021 	addu	v0,v0,a2
    1c90:	24c60001 	addiu	a2,a2,1
    1c94:	a0430000 	sb	v1,0(v0)
    1c98:	28c20fc4 	slti	v0,a2,4036
    1c9c:	1440fffa 	bnez	v0,1c88 <func_80041C58+0x1b0>
    1ca0:	24110fc4 	li	s1,4036
    1ca4:	3c020000 	lui	v0,0x0
			1ca4: R_MIPS_HI16	D_80042AB0
    1ca8:	8c420000 	lw	v0,0(v0)
			1ca8: R_MIPS_LO16	D_80042AB0
    1cac:	10400038 	beqz	v0,1d90 <func_80041C58+0x2b8>
    1cb0:	00009021 	move	s2,zero
    1cb4:	3c130000 	lui	s3,0x0
			1cb4: R_MIPS_HI16	D_80042A70
    1cb8:	3c150000 	lui	s5,0x0
			1cb8: R_MIPS_HI16	D_80042A88
    1cbc:	3c140000 	lui	s4,0x0
			1cbc: R_MIPS_HI16	D_80042A78
    1cc0:	0c0004a6 	jal	1298 <func_80041418>
			1cc0: R_MIPS_26	.text
    1cc4:	00000000 	nop
    1cc8:	00408021 	move	s0,v0
    1ccc:	2a020100 	slti	v0,s0,256
    1cd0:	1040000e 	beqz	v0,1d0c <func_80041C58+0x234>
    1cd4:	00000000 	nop
    1cd8:	8e620000 	lw	v0,0(s3)
			1cd8: R_MIPS_LO16	D_80042A70
    1cdc:	8ea30000 	lw	v1,0(s5)
			1cdc: R_MIPS_LO16	D_80042A88
    1ce0:	26520001 	addiu	s2,s2,1
    1ce4:	00621821 	addu	v1,v1,v0
    1ce8:	a0700000 	sb	s0,0(v1)
    1cec:	8e830000 	lw	v1,0(s4)
			1cec: R_MIPS_LO16	D_80042A78
    1cf0:	24420001 	addiu	v0,v0,1
    1cf4:	ae620000 	sw	v0,0(s3)
			1cf4: R_MIPS_LO16	D_80042A70
    1cf8:	00711821 	addu	v1,v1,s1
    1cfc:	26310001 	addiu	s1,s1,1
    1d00:	32310fff 	andi	s1,s1,0xfff
    1d04:	0800075f 	j	1d7c <func_80041C58+0x2a4>
			1d04: R_MIPS_26	.text
    1d08:	a0700000 	sb	s0,0(v1)
    1d0c:	0c000523 	jal	148c <func_8004160C>
			1d0c: R_MIPS_26	.text
    1d10:	00000000 	nop
    1d14:	02221023 	subu	v0,s1,v0
    1d18:	2442ffff 	addiu	v0,v0,-1
    1d1c:	30460fff 	andi	a2,v0,0xfff
    1d20:	2607ff03 	addiu	a3,s0,-253
    1d24:	18e00015 	blez	a3,1d7c <func_80041C58+0x2a4>
    1d28:	00002821 	move	a1,zero
    1d2c:	26520001 	addiu	s2,s2,1
    1d30:	00c51021 	addu	v0,a2,a1
    1d34:	24a50001 	addiu	a1,a1,1
    1d38:	30420fff 	andi	v0,v0,0xfff
    1d3c:	8e830000 	lw	v1,0(s4)
			1d3c: R_MIPS_LO16	D_80042A78
    1d40:	8e640000 	lw	a0,0(s3)
			1d40: R_MIPS_LO16	D_80042A70
    1d44:	00621821 	addu	v1,v1,v0
    1d48:	8ea20000 	lw	v0,0(s5)
			1d48: R_MIPS_LO16	D_80042A88
    1d4c:	90700000 	lbu	s0,0(v1)
    1d50:	00441021 	addu	v0,v0,a0
    1d54:	a0500000 	sb	s0,0(v0)
    1d58:	8e820000 	lw	v0,0(s4)
			1d58: R_MIPS_LO16	D_80042A78
    1d5c:	24840001 	addiu	a0,a0,1
    1d60:	ae640000 	sw	a0,0(s3)
			1d60: R_MIPS_LO16	D_80042A70
    1d64:	00511021 	addu	v0,v0,s1
    1d68:	26310001 	addiu	s1,s1,1
    1d6c:	a0500000 	sb	s0,0(v0)
    1d70:	00a7102a 	slt	v0,a1,a3
    1d74:	1440ffed 	bnez	v0,1d2c <func_80041C58+0x254>
    1d78:	32310fff 	andi	s1,s1,0xfff
    1d7c:	3c020000 	lui	v0,0x0
			1d7c: R_MIPS_HI16	D_80042AB0
    1d80:	8c420000 	lw	v0,0(v0)
			1d80: R_MIPS_LO16	D_80042AB0
    1d84:	0242102b 	sltu	v0,s2,v0
    1d88:	1440ffcd 	bnez	v0,1cc0 <func_80041C58+0x1e8>
    1d8c:	00000000 	nop
    1d90:	3c020000 	lui	v0,0x0
			1d90: R_MIPS_HI16	D_80042A64
    1d94:	8c440000 	lw	a0,0(v0)
			1d94: R_MIPS_LO16	D_80042A64
    1d98:	0c000833 	jal	20cc <func_8004224C>
			1d98: R_MIPS_26	.text
    1d9c:	00000000 	nop
    1da0:	3c020000 	lui	v0,0x0
			1da0: R_MIPS_HI16	D_80042A60
    1da4:	8c440000 	lw	a0,0(v0)
			1da4: R_MIPS_LO16	D_80042A60
    1da8:	0c000833 	jal	20cc <func_8004224C>
			1da8: R_MIPS_26	.text
    1dac:	00000000 	nop
    1db0:	3c020000 	lui	v0,0x0
			1db0: R_MIPS_HI16	D_80042A7C
    1db4:	8c440000 	lw	a0,0(v0)
			1db4: R_MIPS_LO16	D_80042A7C
    1db8:	0c000833 	jal	20cc <func_8004224C>
			1db8: R_MIPS_26	.text
    1dbc:	00000000 	nop
    1dc0:	3c020000 	lui	v0,0x0
			1dc0: R_MIPS_HI16	D_80042A48
    1dc4:	8c440000 	lw	a0,0(v0)
			1dc4: R_MIPS_LO16	D_80042A48
    1dc8:	0c000833 	jal	20cc <func_8004224C>
			1dc8: R_MIPS_26	.text
    1dcc:	00000000 	nop
    1dd0:	3c020000 	lui	v0,0x0
			1dd0: R_MIPS_HI16	D_80042A4C
    1dd4:	8c440000 	lw	a0,0(v0)
			1dd4: R_MIPS_LO16	D_80042A4C
    1dd8:	0c000833 	jal	20cc <func_8004224C>
			1dd8: R_MIPS_26	.text
    1ddc:	00000000 	nop
    1de0:	3c020000 	lui	v0,0x0
			1de0: R_MIPS_HI16	D_80042A68
    1de4:	8c440000 	lw	a0,0(v0)
			1de4: R_MIPS_LO16	D_80042A68
    1de8:	0c000833 	jal	20cc <func_8004224C>
			1de8: R_MIPS_26	.text
    1dec:	00000000 	nop
    1df0:	3c020000 	lui	v0,0x0
			1df0: R_MIPS_HI16	D_80042A84
    1df4:	8c440000 	lw	a0,0(v0)
			1df4: R_MIPS_LO16	D_80042A84
    1df8:	0c000833 	jal	20cc <func_8004224C>
			1df8: R_MIPS_26	.text
    1dfc:	00000000 	nop
    1e00:	3c020000 	lui	v0,0x0
			1e00: R_MIPS_HI16	D_80042A80
    1e04:	8c440000 	lw	a0,0(v0)
			1e04: R_MIPS_LO16	D_80042A80
    1e08:	0c000833 	jal	20cc <func_8004224C>
			1e08: R_MIPS_26	.text
    1e0c:	00000000 	nop
    1e10:	3c020000 	lui	v0,0x0
			1e10: R_MIPS_HI16	D_80042A78
    1e14:	8c440000 	lw	a0,0(v0)
			1e14: R_MIPS_LO16	D_80042A78
    1e18:	0c000833 	jal	20cc <func_8004224C>
			1e18: R_MIPS_26	.text
    1e1c:	00000000 	nop
    1e20:	3c020000 	lui	v0,0x0
			1e20: R_MIPS_HI16	D_80042A70
    1e24:	8c420000 	lw	v0,0(v0)
			1e24: R_MIPS_LO16	D_80042A70
    1e28:	8fbf0028 	lw	ra,40(sp)
    1e2c:	8fb50024 	lw	s5,36(sp)
    1e30:	8fb40020 	lw	s4,32(sp)
    1e34:	8fb3001c 	lw	s3,28(sp)
    1e38:	8fb20018 	lw	s2,24(sp)
    1e3c:	8fb10014 	lw	s1,20(sp)
    1e40:	8fb00010 	lw	s0,16(sp)
    1e44:	03e00008 	jr	ra
    1e48:	27bd0030 	addiu	sp,sp,48

00001e4c <func_80041FCC>:
    1e4c:	27bdffe8 	addiu	sp,sp,-24
    1e50:	afbf0010 	sw	ra,16(sp)
    1e54:	00a03821 	move	a3,a1
    1e58:	3c020000 	lui	v0,0x0
			1e58: R_MIPS_HI16	D_80042B20
    1e5c:	24450000 	addiu	a1,v0,0
			1e5c: R_MIPS_LO16	D_80042B20
    1e60:	90e30000 	lbu	v1,0(a3)
    1e64:	10600016 	beqz	v1,1ec0 <func_80041FCC+0x74>
    1e68:	24060001 	li	a2,1
    1e6c:	00c51021 	addu	v0,a2,a1
    1e70:	90420003 	lbu	v0,3(v0)
    1e74:	14620004 	bne	v1,v0,1e88 <func_80041FCC+0x3c>
    1e78:	00e61021 	addu	v0,a3,a2
    1e7c:	90430000 	lbu	v1,0(v0)
    1e80:	1460fffa 	bnez	v1,1e6c <func_80041FCC+0x20>
    1e84:	24c60001 	addiu	a2,a2,1
    1e88:	1060000d 	beqz	v1,1ec0 <func_80041FCC+0x74>
    1e8c:	00000000 	nop
    1e90:	90a30000 	lbu	v1,0(a1)
    1e94:	90a20001 	lbu	v0,1(a1)
    1e98:	00033600 	sll	a2,v1,0x18
    1e9c:	00021400 	sll	v0,v0,0x10
    1ea0:	00c23025 	or	a2,a2,v0
    1ea4:	90a30002 	lbu	v1,2(a1)
    1ea8:	90a20003 	lbu	v0,3(a1)
    1eac:	00031a00 	sll	v1,v1,0x8
    1eb0:	00c33025 	or	a2,a2,v1
    1eb4:	00c23025 	or	a2,a2,v0
    1eb8:	08000798 	j	1e60 <func_80041FCC+0x14>
			1eb8: R_MIPS_26	.text
    1ebc:	00a62821 	addu	a1,a1,a2
    1ec0:	0c0006b6 	jal	1ad8 <func_80041C58>
			1ec0: R_MIPS_26	.text
    1ec4:	24a50010 	addiu	a1,a1,16
    1ec8:	8fbf0010 	lw	ra,16(sp)
    1ecc:	03e00008 	jr	ra
    1ed0:	27bd0018 	addiu	sp,sp,24
    1ed4:	00801021 	move	v0,a0
    1ed8:	3c020000 	lui	v0,0x0
			1ed8: R_MIPS_HI16	D_800429F0
    1edc:	8c420000 	lw	v0,0(v0)
			1edc: R_MIPS_LO16	D_800429F0

00001ee0 <func_80042060>:
    1ee0:	00803821 	move	a3,a0
    1ee4:	10c00006 	beqz	a2,1f00 <func_80042060+0x20>
    1ee8:	00001821 	move	v1,zero
    1eec:	a0e50000 	sb	a1,0(a3)
    1ef0:	24630001 	addiu	v1,v1,1
    1ef4:	0066102b 	sltu	v0,v1,a2
    1ef8:	1440fffc 	bnez	v0,1eec <func_80042060+0xc>
    1efc:	24e70001 	addiu	a3,a3,1
    1f00:	03e00008 	jr	ra
    1f04:	00801021 	move	v0,a0

00001f08 <func_80042088>:
    1f08:	3c020000 	lui	v0,0x0
			1f08: R_MIPS_HI16	D_80042A30
    1f0c:	8c420000 	lw	v0,0(v0)
			1f0c: R_MIPS_LO16	D_80042A30
    1f10:	03e00008 	jr	ra
    1f14:	00000000 	nop

00001f18 <func_80042098>:
    1f18:	8c820004 	lw	v0,4(a0)
    1f1c:	03e00008 	jr	ra
    1f20:	00000000 	nop

00001f24 <func_800420A4>:
    1f24:	8c820008 	lw	v0,8(a0)
    1f28:	03e00008 	jr	ra
    1f2c:	00000000 	nop

00001f30 <func_800420B0>:
    1f30:	27bdffe8 	addiu	sp,sp,-24
    1f34:	afb00010 	sw	s0,16(sp)
    1f38:	00808021 	move	s0,a0
    1f3c:	afbf0014 	sw	ra,20(sp)
    1f40:	0c0007c6 	jal	1f18 <func_80042098>
			1f40: R_MIPS_26	.text
    1f44:	02002021 	move	a0,s0
    1f48:	10400005 	beqz	v0,1f60 <func_800420B0+0x30>
    1f4c:	02001021 	move	v0,s0
    1f50:	0c0007c6 	jal	1f18 <func_80042098>
			1f50: R_MIPS_26	.text
    1f54:	02002021 	move	a0,s0
    1f58:	080007d0 	j	1f40 <func_800420B0+0x10>
			1f58: R_MIPS_26	.text
    1f5c:	00408021 	move	s0,v0
    1f60:	8fbf0014 	lw	ra,20(sp)
    1f64:	8fb00010 	lw	s0,16(sp)
    1f68:	03e00008 	jr	ra
    1f6c:	27bd0018 	addiu	sp,sp,24

00001f70 <func_800420F0>:
    1f70:	8c820004 	lw	v0,4(a0)
    1f74:	2442fff0 	addiu	v0,v0,-16
    1f78:	03e00008 	jr	ra
    1f7c:	00441023 	subu	v0,v0,a0

00001f80 <func_80042100>:
    1f80:	27bdffe8 	addiu	sp,sp,-24
    1f84:	3c020000 	lui	v0,0x0
			1f84: R_MIPS_HI16	D_80042A30
    1f88:	afb00010 	sw	s0,16(sp)
    1f8c:	3c100000 	lui	s0,0x0
			1f8c: R_MIPS_HI16	D_80042A34
    1f90:	afbf0014 	sw	ra,20(sp)
    1f94:	ac440000 	sw	a0,0(v0)
			1f94: R_MIPS_LO16	D_80042A30
    1f98:	0c0007c2 	jal	1f08 <func_80042088>
			1f98: R_MIPS_26	.text
    1f9c:	ae050000 	sw	a1,0(s0)
			1f9c: R_MIPS_LO16	D_80042A34
    1fa0:	24060044 	li	a2,68
    1fa4:	2405004d 	li	a1,77
    1fa8:	24030046 	li	v1,70
    1fac:	a0460000 	sb	a2,0(v0)
    1fb0:	a0450001 	sb	a1,1(v0)
    1fb4:	a0430002 	sb	v1,2(v0)
    1fb8:	8e030000 	lw	v1,0(s0)
			1fb8: R_MIPS_LO16	D_80042A34
    1fbc:	00402021 	move	a0,v0
    1fc0:	ac400008 	sw	zero,8(v0)
    1fc4:	2463fff0 	addiu	v1,v1,-16
    1fc8:	ac430004 	sw	v1,4(v0)
    1fcc:	00601021 	move	v0,v1
    1fd0:	24030054 	li	v1,84
    1fd4:	a0460000 	sb	a2,0(v0)
    1fd8:	a0450001 	sb	a1,1(v0)
    1fdc:	a0430002 	sb	v1,2(v0)
    1fe0:	ac400004 	sw	zero,4(v0)
    1fe4:	ac440008 	sw	a0,8(v0)
    1fe8:	8fbf0014 	lw	ra,20(sp)
    1fec:	8fb00010 	lw	s0,16(sp)
    1ff0:	03e00008 	jr	ra
    1ff4:	27bd0018 	addiu	sp,sp,24

00001ff8 <func_80042178>:
    1ff8:	27bdffe0 	addiu	sp,sp,-32
    1ffc:	afb20018 	sw	s2,24(sp)
    2000:	2492000f 	addiu	s2,a0,15
    2004:	2402fff0 	li	v0,-16
    2008:	02429024 	and	s2,s2,v0
    200c:	afbf001c 	sw	ra,28(sp)
    2010:	afb10014 	sw	s1,20(sp)
    2014:	0c0007c2 	jal	1f08 <func_80042088>
			2014: R_MIPS_26	.text
    2018:	afb00010 	sw	s0,16(sp)
    201c:	00408821 	move	s1,v0
    2020:	24100046 	li	s0,70
    2024:	92220002 	lbu	v0,2(s1)
    2028:	14500006 	bne	v0,s0,2044 <func_80042178+0x4c>
    202c:	00000000 	nop
    2030:	0c0007dc 	jal	1f70 <func_800420F0>
			2030: R_MIPS_26	.text
    2034:	02202021 	move	a0,s1
    2038:	0052102a 	slt	v0,v0,s2
    203c:	50400008 	beqzl	v0,2060 <func_80042178+0x68>
    2040:	26300010 	addiu	s0,s1,16
    2044:	0c0007c6 	jal	1f18 <func_80042098>
			2044: R_MIPS_26	.text
    2048:	02202021 	move	a0,s1
    204c:	00408821 	move	s1,v0
    2050:	1620fff4 	bnez	s1,2024 <func_80042178+0x2c>
    2054:	2402ffff 	li	v0,-1
    2058:	0800082d 	j	20b4 <func_80042178+0xbc>
			2058: R_MIPS_26	.text
    205c:	00000000 	nop
    2060:	02002021 	move	a0,s0
    2064:	24020052 	li	v0,82
    2068:	a2220002 	sb	v0,2(s1)
    206c:	26420010 	addiu	v0,s2,16
    2070:	02221021 	addu	v0,s1,v0
    2074:	8e250004 	lw	a1,4(s1)
    2078:	24030044 	li	v1,68
    207c:	ae220004 	sw	v0,4(s1)
    2080:	a0430000 	sb	v1,0(v0)
    2084:	2403004d 	li	v1,77
    2088:	a0430001 	sb	v1,1(v0)
    208c:	24030046 	li	v1,70
    2090:	02403021 	move	a2,s2
    2094:	ac510008 	sw	s1,8(v0)
    2098:	a0430002 	sb	v1,2(v0)
    209c:	ac450004 	sw	a1,4(v0)
    20a0:	00a08821 	move	s1,a1
    20a4:	00002821 	move	a1,zero
    20a8:	0c0007b8 	jal	1ee0 <func_80042060>
			20a8: R_MIPS_26	.text
    20ac:	ae220008 	sw	v0,8(s1)
    20b0:	02001021 	move	v0,s0
    20b4:	8fbf001c 	lw	ra,28(sp)
    20b8:	8fb20018 	lw	s2,24(sp)
    20bc:	8fb10014 	lw	s1,20(sp)
    20c0:	8fb00010 	lw	s0,16(sp)
    20c4:	03e00008 	jr	ra
    20c8:	27bd0020 	addiu	sp,sp,32

000020cc <func_8004224C>:
    20cc:	00803021 	move	a2,a0
    20d0:	00c03821 	move	a3,a2
    20d4:	90e3fff0 	lbu	v1,-16(a3)
    20d8:	24020044 	li	v0,68
    20dc:	10620003 	beq	v1,v0,20ec <func_8004224C+0x20>
    20e0:	24c6fff0 	addiu	a2,a2,-16
    20e4:	03e00008 	jr	ra
    20e8:	2402ffff 	li	v0,-1
    20ec:	90c30001 	lbu	v1,1(a2)
    20f0:	2402004d 	li	v0,77
    20f4:	1462fffb 	bne	v1,v0,20e4 <func_8004224C+0x18>
    20f8:	24020052 	li	v0,82
    20fc:	90c30002 	lbu	v1,2(a2)
    2100:	1462000c 	bne	v1,v0,2134 <func_8004224C+0x68>
    2104:	24020046 	li	v0,70
    2108:	a0c20002 	sb	v0,2(a2)
    210c:	8ce4fff4 	lw	a0,-12(a3)
    2110:	00001021 	move	v0,zero
    2114:	8c850004 	lw	a1,4(a0)
    2118:	2403007e 	li	v1,126
    211c:	a0830000 	sb	v1,0(a0)
    2120:	a0830001 	sb	v1,1(a0)
    2124:	a0830002 	sb	v1,2(a0)
    2128:	ace5fff4 	sw	a1,-12(a3)
    212c:	03e00008 	jr	ra
    2130:	aca60008 	sw	a2,8(a1)
    2134:	03e00008 	jr	ra
    2138:	2402ffff 	li	v0,-1

0000213c <func_800422BC>:
    213c:	3c088000 	lui	t0,0x8000

00002140 <func_800422C0>:
    2140:	27bdffe4 	addiu	sp,sp,-28
    2144:	afa80010 	sw	t0,16(sp)
    2148:	afa90014 	sw	t1,20(sp)
    214c:	afa10018 	sw	at,24(sp)
    2150:	3c080000 	lui	t0,0x0
			2150: R_MIPS_HI16	D_80003000
    2154:	25090000 	addiu	t1,t0,0
			2154: R_MIPS_LO16	D_80003000
    2158:	2529fff0 	addiu	t1,t1,-16
    215c:	bd010000 	cache	0x1,0(t0)
    2160:	0109082b 	sltu	at,t0,t1
    2164:	1420fffd 	bnez	at,215c <func_800422C0+0x1c>
    2168:	25080010 	addiu	t0,t0,16
    216c:	3c080000 	lui	t0,0x0
			216c: R_MIPS_HI16	D_80006000
    2170:	25090000 	addiu	t1,t0,0
			2170: R_MIPS_LO16	D_80006000
    2174:	2529ffe0 	addiu	t1,t1,-32
    2178:	bd000000 	cache	0x0,0(t0)
    217c:	0109082b 	sltu	at,t0,t1
    2180:	1420fffd 	bnez	at,2178 <func_800422C0+0x38>
    2184:	25080020 	addiu	t0,t0,32
    2188:	8fa80010 	lw	t0,16(sp)
    218c:	8fa90014 	lw	t1,20(sp)
    2190:	8fa10018 	lw	at,24(sp)
    2194:	03e00008 	jr	ra
    2198:	27bd001c 	addiu	sp,sp,28

0000219c <func_8004231C>:
    219c:	bc950000 	cache	0x15,0(a0)
    21a0:	03e00008 	jr	ra
    21a4:	00000000 	nop
    21a8:	00800008 	jr	a0
    21ac:	00000000 	nop
    21b0:	27bdffec 	addiu	sp,sp,-20
    21b4:	afbf0010 	sw	ra,16(sp)
    21b8:	0080f809 	jalr	a0
    21bc:	00000000 	nop
    21c0:	8fbf0010 	lw	ra,16(sp)
    21c4:	27bd0014 	addiu	sp,sp,20
    21c8:	03e00008 	jr	ra
    21cc:	00000000 	nop
    21d0:	40026000 	mfc0	v0,c0_sr
    21d4:	03e00008 	jr	ra
    21d8:	00000000 	nop
    21dc:	40846000 	mtc0	a0,c0_sr
    21e0:	03e00008 	jr	ra
    21e4:	00000000 	nop
    21e8:	40026800 	mfc0	v0,c0_cause
    21ec:	03e00008 	jr	ra
    21f0:	00000000 	nop
    21f4:	40027000 	mfc0	v0,c0_epc
    21f8:	03e00008 	jr	ra
    21fc:	00000000 	nop

00002200 <func_80042380>:
    2200:	27bdffe4 	addiu	sp,sp,-28
    2204:	afbf0010 	sw	ra,16(sp)
    2208:	afa80014 	sw	t0,20(sp)
    220c:	afa90018 	sw	t1,24(sp)
    2210:	3c080000 	lui	t0,0x0
			2210: R_MIPS_HI16	.text
    2214:	2508222c 	addiu	t0,t0,8748
			2214: R_MIPS_LO16	.text
    2218:	3c094085 	lui	t1,0x4085
    221c:	01244825 	or	t1,t1,a0
    2220:	ad090000 	sw	t1,0(t0)
    2224:	0c000850 	jal	2140 <func_800422C0>
			2224: R_MIPS_26	.text
    2228:	00000000 	nop
    222c:	40850000 	mtc0	a1,c0_index
    2230:	8fa90018 	lw	t1,24(sp)
    2234:	8fa80014 	lw	t0,20(sp)
    2238:	8fbf0010 	lw	ra,16(sp)
    223c:	27bd001c 	addiu	sp,sp,28
    2240:	03e00008 	jr	ra
    2244:	00000000 	nop

00002248 <func_800423C8>:
    2248:	27bdffe4 	addiu	sp,sp,-28
    224c:	afbf0010 	sw	ra,16(sp)
    2250:	afa80014 	sw	t0,20(sp)
    2254:	afa90018 	sw	t1,24(sp)
    2258:	3c080000 	lui	t0,0x0
			2258: R_MIPS_HI16	.text
    225c:	25082274 	addiu	t0,t0,8820
			225c: R_MIPS_LO16	.text
    2260:	3c094002 	lui	t1,0x4002
    2264:	01244825 	or	t1,t1,a0
    2268:	ad090000 	sw	t1,0(t0)
    226c:	0c000850 	jal	2140 <func_800422C0>
			226c: R_MIPS_26	.text
    2270:	00000000 	nop
    2274:	40020000 	mfc0	v0,c0_index
    2278:	8fa90018 	lw	t1,24(sp)
    227c:	8fa80014 	lw	t0,20(sp)
    2280:	8fbf0010 	lw	ra,16(sp)
    2284:	27bd001c 	addiu	sp,sp,28
    2288:	03e00008 	jr	ra
    228c:	00000000 	nop

00002290 <waitPIReserved>:
    2290:	3c030000 	lui	v1,0x0
			2290: R_MIPS_HI16	SI_BASE14_REG
    2294:	8c620000 	lw	v0,0(v1)
			2294: R_MIPS_LO16	SI_BASE14_REG
    2298:	30420003 	andi	v0,v0,0x3
    229c:	1440fffd 	bnez	v0,2294 <waitPIReserved+0x4>
    22a0:	00000000 	nop
    22a4:	03e00008 	jr	ra
    22a8:	00000000 	nop

000022ac <readPIRam>:
    22ac:	27bdffe8 	addiu	sp,sp,-24
    22b0:	afb00010 	sw	s0,16(sp)
    22b4:	afbf0014 	sw	ra,20(sp)
    22b8:	0c0008a4 	jal	2290 <waitPIReserved>
			22b8: R_MIPS_26	.text
    22bc:	00808021 	move	s0,a0
    22c0:	8e020000 	lw	v0,0(s0)
    22c4:	8fbf0014 	lw	ra,20(sp)
    22c8:	8fb00010 	lw	s0,16(sp)
    22cc:	03e00008 	jr	ra
    22d0:	27bd0018 	addiu	sp,sp,24

000022d4 <writePIRam>:
    22d4:	27bdffe0 	addiu	sp,sp,-32
    22d8:	afb10014 	sw	s1,20(sp)
    22dc:	00808821 	move	s1,a0
    22e0:	afb00010 	sw	s0,16(sp)
    22e4:	afbf0018 	sw	ra,24(sp)
    22e8:	0c0008a4 	jal	2290 <waitPIReserved>
			22e8: R_MIPS_26	.text
    22ec:	00a08021 	move	s0,a1
    22f0:	ae300000 	sw	s0,0(s1)
    22f4:	8fbf0018 	lw	ra,24(sp)
    22f8:	8fb10014 	lw	s1,20(sp)
    22fc:	8fb00010 	lw	s0,16(sp)
    2300:	03e00008 	jr	ra
    2304:	27bd0020 	addiu	sp,sp,32

00002308 <pifUnlock>:
    2308:	27bdffe8 	addiu	sp,sp,-24
    230c:	3c04bfc0 	lui	a0,0xbfc0
    2310:	afbf0010 	sw	ra,16(sp)
    2314:	0c0008ab 	jal	22ac <readPIRam>
			2314: R_MIPS_26	.text
    2318:	348407fc 	ori	a0,a0,0x7fc
    231c:	3c04bfc0 	lui	a0,0xbfc0
    2320:	348407fc 	ori	a0,a0,0x7fc
    2324:	0c0008b5 	jal	22d4 <writePIRam>
			2324: R_MIPS_26	.text
    2328:	34450008 	ori	a1,v0,0x8
    232c:	8fbf0010 	lw	ra,16(sp)
    2330:	03e00008 	jr	ra
    2334:	27bd0018 	addiu	sp,sp,24

00002338 <func_800424B8>:
    2338:	24030002 	li	v1,2
    233c:	8c820010 	lw	v0,16(a0)

00002340 <func_800424C0>:
    2340:	3c040000 	lui	a0,0x0
			2340: R_MIPS_HI16	VI_CURRENT_REG
    2344:	8c820000 	lw	v0,0(a0)
			2344: R_MIPS_LO16	VI_CURRENT_REG
    2348:	24030002 	li	v1,2
    234c:	304203fe 	andi	v0,v0,0x3fe
    2350:	10430006 	beq	v0,v1,236c <func_800424C0+0x2c>
    2354:	00000000 	nop
    2358:	8c820000 	lw	v0,0(a0)
			2358: R_MIPS_LO16	VI_CURRENT_REG
    235c:	304203fe 	andi	v0,v0,0x3fe
    2360:	1443fffd 	bne	v0,v1,2358 <func_800424C0+0x18>
    2364:	00000000 	nop
    2368:	24030002 	li	v1,2
    236c:	8c820000 	lw	v0,0(a0)
			236c: R_MIPS_LO16	VI_CURRENT_REG
    2370:	304203fe 	andi	v0,v0,0x3fe
    2374:	1043fffd 	beq	v0,v1,236c <func_800424C0+0x2c>
    2378:	00000000 	nop
    237c:	03e00008 	jr	ra
    2380:	00000000 	nop

00002384 <func_80042504>:
    2384:	27bdffe8 	addiu	sp,sp,-24
    2388:	00802821 	move	a1,a0
    238c:	afbf0010 	sw	ra,16(sp)
    2390:	0c00010f 	jal	43c <func_800405BC>
			2390: R_MIPS_26	.text
    2394:	24040800 	li	a0,2048
    2398:	0c00093f 	jal	24fc <func_8004267C>
			2398: R_MIPS_26	.text
    239c:	00000000 	nop
    23a0:	8fbf0010 	lw	ra,16(sp)
    23a4:	03e00008 	jr	ra
    23a8:	27bd0018 	addiu	sp,sp,24

000023ac <func_8004252C>:
    23ac:	3c030000 	lui	v1,0x0
			23ac: R_MIPS_HI16	D_80042AD0
    23b0:	90620000 	lbu	v0,0(v1)
			23b0: R_MIPS_LO16	D_80042AD0
    23b4:	240600ff 	li	a2,255
    23b8:	1046000f 	beq	v0,a2,23f8 <func_8004252C+0x4c>
    23bc:	00002821 	move	a1,zero
    23c0:	308400ff 	andi	a0,a0,0xff
    23c4:	00c04021 	move	t0,a2
    23c8:	24670000 	addiu	a3,v1,0
			23c8: R_MIPS_LO16	D_80042AD0
    23cc:	00e01821 	move	v1,a3
    23d0:	90620000 	lbu	v0,0(v1)
    23d4:	14440005 	bne	v0,a0,23ec <func_8004252C+0x40>
    23d8:	24630002 	addiu	v1,v1,2
    23dc:	00a71021 	addu	v0,a1,a3
    23e0:	90460001 	lbu	a2,1(v0)
    23e4:	03e00008 	jr	ra
    23e8:	00c01021 	move	v0,a2
    23ec:	90620000 	lbu	v0,0(v1)
    23f0:	1448fff8 	bne	v0,t0,23d4 <func_8004252C+0x28>
    23f4:	24a50002 	addiu	a1,a1,2
    23f8:	00c01021 	move	v0,a2
    23fc:	03e00008 	jr	ra
    2400:	00000000 	nop

00002404 <func_80042584>:
    2404:	27bdffe0 	addiu	sp,sp,-32
    2408:	afb00010 	sw	s0,16(sp)
    240c:	00808021 	move	s0,a0
    2410:	24040600 	li	a0,1536
    2414:	afbf001c 	sw	ra,28(sp)
    2418:	afb20018 	sw	s2,24(sp)
    241c:	0c000955 	jal	2554 <func_800426D4>
			241c: R_MIPS_26	.text
    2420:	afb10014 	sw	s1,20(sp)
    2424:	0c0008eb 	jal	23ac <func_8004252C>
			2424: R_MIPS_26	.text
    2428:	320400ff 	andi	a0,s0,0xff
    242c:	3c030001 	lui	v1,0x1
    2430:	00438825 	or	s1,v0,v1
    2434:	2a220101 	slti	v0,s1,257
    2438:	14400013 	bnez	v0,2488 <func_80042584+0x84>
    243c:	3c120400 	lui	s2,0x400
    2440:	36520400 	ori	s2,s2,0x400
    2444:	32220001 	andi	v0,s1,0x1
    2448:	10400003 	beqz	v0,2458 <func_80042584+0x54>
    244c:	00008021 	move	s0,zero
    2450:	3c100200 	lui	s0,0x200
    2454:	36100200 	ori	s0,s0,0x200
    2458:	0c0008e1 	jal	2384 <func_80042504>
			2458: R_MIPS_26	.text
    245c:	02002021 	move	a0,s0
    2460:	0c0008e1 	jal	2384 <func_80042504>
			2460: R_MIPS_26	.text
    2464:	02122025 	or	a0,s0,s2
    2468:	0c0008e1 	jal	2384 <func_80042504>
			2468: R_MIPS_26	.text
    246c:	02002021 	move	a0,s0
    2470:	001117c2 	srl	v0,s1,0x1f
    2474:	02221021 	addu	v0,s1,v0
    2478:	00028843 	sra	s1,v0,0x1
    247c:	2a220101 	slti	v0,s1,257
    2480:	1040fff1 	beqz	v0,2448 <func_80042584+0x44>
    2484:	32220001 	andi	v0,s1,0x1
    2488:	0c000955 	jal	2554 <func_800426D4>
			2488: R_MIPS_26	.text
    248c:	24040200 	li	a0,512
    2490:	8fbf001c 	lw	ra,28(sp)
    2494:	8fb20018 	lw	s2,24(sp)
    2498:	8fb10014 	lw	s1,20(sp)
    249c:	8fb00010 	lw	s0,16(sp)
    24a0:	03e00008 	jr	ra
    24a4:	27bd0020 	addiu	sp,sp,32

000024a8 <func_80042628>:
    24a8:	27bdffe8 	addiu	sp,sp,-24
    24ac:	afbf0010 	sw	ra,16(sp)
    24b0:	0c000901 	jal	2404 <func_80042584>
			24b0: R_MIPS_26	.text
    24b4:	308400ff 	andi	a0,a0,0xff
    24b8:	8fbf0010 	lw	ra,16(sp)
    24bc:	03e00008 	jr	ra
    24c0:	27bd0018 	addiu	sp,sp,24

000024c4 <func_80042644>:
    24c4:	03e00008 	jr	ra
    24c8:	27bd0018 	addiu	sp,sp,24

000024cc <func_8004264C>:
    24cc:	2402009f 	li	v0,159
    24d0:	27bdffe8 	addiu	sp,sp,-24
    24d4:	afbf0010 	sw	ra,16(sp)
    24d8:	0c000955 	jal	2554 <func_800426D4>
			24d8: R_MIPS_26	.text
    24dc:	24040200 	li	a0,512
    24e0:	0c000945 	jal	2514 <func_80042694>
			24e0: R_MIPS_26	.text
    24e4:	00002021 	move	a0,zero
    24e8:	0c000901 	jal	2404 <func_80042584>
			24e8: R_MIPS_26	.text
    24ec:	00002021 	move	a0,zero
    24f0:	8fbf0010 	lw	ra,16(sp)
    24f4:	03e00008 	jr	ra
    24f8:	27bd0018 	addiu	sp,sp,24

000024fc <func_8004267C>:
    24fc:	2402009f 	li	v0,159
    2500:	2442ffff 	addiu	v0,v0,-1
    2504:	0441ffff 	bgez	v0,2504 <func_8004267C+0x8>
    2508:	2442ffff 	addiu	v0,v0,-1
    250c:	03e00008 	jr	ra
    2510:	00000000 	nop

00002514 <func_80042694>:
    2514:	27bdffe8 	addiu	sp,sp,-24
    2518:	308400ff 	andi	a0,a0,0xff
    251c:	00041600 	sll	v0,a0,0x18
    2520:	00041c00 	sll	v1,a0,0x10
    2524:	00431025 	or	v0,v0,v1
    2528:	00041a00 	sll	v1,a0,0x8
    252c:	00431025 	or	v0,v0,v1
    2530:	00441025 	or	v0,v0,a0
    2534:	afbf0010 	sw	ra,16(sp)
    2538:	3c01be60 	lui	at,0xbe60
    253c:	ac22fffc 	sw	v0,-4(at)
    2540:	0c00093f 	jal	24fc <func_8004267C>
			2540: R_MIPS_26	.text
    2544:	00000000 	nop
    2548:	8fbf0010 	lw	ra,16(sp)
    254c:	03e00008 	jr	ra
    2550:	27bd0018 	addiu	sp,sp,24

00002554 <func_800426D4>:
    2554:	27bdffe8 	addiu	sp,sp,-24
    2558:	00042c00 	sll	a1,a0,0x10
    255c:	24040600 	li	a0,1536
    2560:	afbf0010 	sw	ra,16(sp)
    2564:	0c00010f 	jal	43c <func_800405BC>
			2564: R_MIPS_26	.text
    2568:	00052c03 	sra	a1,a1,0x10
    256c:	8fbf0010 	lw	ra,16(sp)
    2570:	03e00008 	jr	ra
    2574:	27bd0018 	addiu	sp,sp,24

00002578 <func_800426F8>:
    2578:	27bdffe8 	addiu	sp,sp,-24
    257c:	afbf0010 	sw	ra,16(sp)
    2580:	0c000100 	jal	400 <func_80040580>
			2580: R_MIPS_26	.text
    2584:	00002021 	move	a0,zero
    2588:	8fbf0010 	lw	ra,16(sp)
    258c:	03e00008 	jr	ra
    2590:	27bd0018 	addiu	sp,sp,24

00002594 <func_80042714>:
    2594:	27bdffe0 	addiu	sp,sp,-32
    2598:	afb00010 	sw	s0,16(sp)
    259c:	00808021 	move	s0,a0
    25a0:	afbf0018 	sw	ra,24(sp)
    25a4:	0c000874 	jal	21d0 <func_8004231C+0x34>
			25a4: R_MIPS_26	.text
    25a8:	afb10014 	sw	s1,20(sp)
    25ac:	00408821 	move	s1,v0
    25b0:	2404fffe 	li	a0,-2
    25b4:	0c000877 	jal	21dc <func_8004231C+0x40>
			25b4: R_MIPS_26	.text
    25b8:	02242024 	and	a0,s1,a0
    25bc:	0c00095e 	jal	2578 <func_800426F8>
			25bc: R_MIPS_26	.text
    25c0:	00000000 	nop
    25c4:	30420010 	andi	v0,v0,0x10
    25c8:	1040fffc 	beqz	v0,25bc <func_80042714+0x28>
    25cc:	00000000 	nop
    25d0:	0c00095e 	jal	2578 <func_800426F8>
			25d0: R_MIPS_26	.text
    25d4:	00000000 	nop
    25d8:	3204000f 	andi	a0,s0,0xf
    25dc:	34840010 	ori	a0,a0,0x10
    25e0:	0c000945 	jal	2514 <func_80042694>
			25e0: R_MIPS_26	.text
    25e4:	3050000f 	andi	s0,v0,0xf
    25e8:	0c00095e 	jal	2578 <func_800426F8>
			25e8: R_MIPS_26	.text
    25ec:	00000000 	nop
    25f0:	30420010 	andi	v0,v0,0x10
    25f4:	1440fffc 	bnez	v0,25e8 <func_80042714+0x54>
    25f8:	00000000 	nop
    25fc:	0c000945 	jal	2514 <func_80042694>
			25fc: R_MIPS_26	.text
    2600:	00002021 	move	a0,zero
    2604:	0c000877 	jal	21dc <func_8004231C+0x40>
			2604: R_MIPS_26	.text
    2608:	02202021 	move	a0,s1
    260c:	02001021 	move	v0,s0
    2610:	8fbf0018 	lw	ra,24(sp)
    2614:	8fb10014 	lw	s1,20(sp)
    2618:	8fb00010 	lw	s0,16(sp)
    261c:	03e00008 	jr	ra
    2620:	27bd0020 	addiu	sp,sp,32

00002624 <func_800427A4>:
    2624:	27bdffe8 	addiu	sp,sp,-24
    2628:	afb00010 	sw	s0,16(sp)
    262c:	00808021 	move	s0,a0
    2630:	afbf0014 	sw	ra,20(sp)
    2634:	0c000965 	jal	2594 <func_80042714>
			2634: R_MIPS_26	.text
    2638:	00102103 	sra	a0,s0,0x4
    263c:	02002021 	move	a0,s0
    2640:	0c000965 	jal	2594 <func_80042714>
			2640: R_MIPS_26	.text
    2644:	00408021 	move	s0,v0
    2648:	00108100 	sll	s0,s0,0x4
    264c:	02021025 	or	v0,s0,v0
    2650:	8fbf0014 	lw	ra,20(sp)
    2654:	8fb00010 	lw	s0,16(sp)
    2658:	03e00008 	jr	ra
    265c:	27bd0018 	addiu	sp,sp,24

00002660 <func_800427E0>:
    2660:	27bdffe8 	addiu	sp,sp,-24
    2664:	afb00010 	sw	s0,16(sp)
    2668:	00808021 	move	s0,a0
    266c:	afbf0014 	sw	ra,20(sp)
    2670:	0c000989 	jal	2624 <func_800427A4>
			2670: R_MIPS_26	.text
    2674:	00102203 	sra	a0,s0,0x8
    2678:	02002021 	move	a0,s0
    267c:	0c000989 	jal	2624 <func_800427A4>
			267c: R_MIPS_26	.text
    2680:	00408021 	move	s0,v0
    2684:	00108200 	sll	s0,s0,0x8
    2688:	02021025 	or	v0,s0,v0
    268c:	8fbf0014 	lw	ra,20(sp)
    2690:	8fb00010 	lw	s0,16(sp)
    2694:	03e00008 	jr	ra
    2698:	27bd0018 	addiu	sp,sp,24

0000269c <func_8004281C>:
    269c:	27bdffe8 	addiu	sp,sp,-24
    26a0:	afb00010 	sw	s0,16(sp)
    26a4:	00808021 	move	s0,a0
    26a8:	afbf0014 	sw	ra,20(sp)
    26ac:	0c000998 	jal	2660 <func_800427E0>
			26ac: R_MIPS_26	.text
    26b0:	00102403 	sra	a0,s0,0x10
    26b4:	02002021 	move	a0,s0
    26b8:	0c000998 	jal	2660 <func_800427E0>
			26b8: R_MIPS_26	.text
    26bc:	00408021 	move	s0,v0
    26c0:	00108400 	sll	s0,s0,0x10
    26c4:	02021025 	or	v0,s0,v0
    26c8:	8fbf0014 	lw	ra,20(sp)
    26cc:	8fb00010 	lw	s0,16(sp)
    26d0:	03e00008 	jr	ra
    26d4:	27bd0018 	addiu	sp,sp,24

000026d8 <func_80042858>:
    26d8:	27bdffd8 	addiu	sp,sp,-40
    26dc:	afb00010 	sw	s0,16(sp)
    26e0:	00008021 	move	s0,zero
    26e4:	afb3001c 	sw	s3,28(sp)
    26e8:	2413000f 	li	s3,15
    26ec:	afb20018 	sw	s2,24(sp)
    26f0:	2412000e 	li	s2,14
    26f4:	afb10014 	sw	s1,20(sp)
    26f8:	2411000a 	li	s1,10
    26fc:	afbf0020 	sw	ra,32(sp)
    2700:	0c000965 	jal	2594 <func_80042714>
			2700: R_MIPS_26	.text
    2704:	00002021 	move	a0,zero
    2708:	1453000d 	bne	v0,s3,2740 <func_80042858+0x68>
    270c:	00000000 	nop
    2710:	0c000965 	jal	2594 <func_80042714>
			2710: R_MIPS_26	.text
    2714:	2404000f 	li	a0,15
    2718:	14400009 	bnez	v0,2740 <func_80042858+0x68>
    271c:	00000000 	nop
    2720:	0c000965 	jal	2594 <func_80042714>
			2720: R_MIPS_26	.text
    2724:	2404000a 	li	a0,10
    2728:	14520005 	bne	v0,s2,2740 <func_80042858+0x68>
    272c:	00000000 	nop
    2730:	0c000965 	jal	2594 <func_80042714>
			2730: R_MIPS_26	.text
    2734:	2404000e 	li	a0,14
    2738:	50510001 	beql	v0,s1,2740 <func_80042858+0x68>
    273c:	24100001 	li	s0,1
    2740:	1200ffef 	beqz	s0,2700 <func_80042858+0x28>
    2744:	00000000 	nop
    2748:	8fbf0020 	lw	ra,32(sp)
    274c:	8fb3001c 	lw	s3,28(sp)
    2750:	8fb20018 	lw	s2,24(sp)
    2754:	8fb10014 	lw	s1,20(sp)
    2758:	8fb00010 	lw	s0,16(sp)
    275c:	03e00008 	jr	ra
    2760:	27bd0028 	addiu	sp,sp,40

00002764 <func_800428E4>:
    2764:	27bdffe8 	addiu	sp,sp,-24
    2768:	afb00010 	sw	s0,16(sp)
    276c:	00808021 	move	s0,a0
    2770:	afbf0014 	sw	ra,20(sp)
    2774:	92020000 	lbu	v0,0(s0)
    2778:	10400007 	beqz	v0,2798 <func_800428E4+0x34>
    277c:	00000000 	nop
    2780:	92040000 	lbu	a0,0(s0)
    2784:	0c000989 	jal	2624 <func_800427A4>
			2784: R_MIPS_26	.text
    2788:	26100001 	addiu	s0,s0,1
    278c:	92020000 	lbu	v0,0(s0)
    2790:	1440fffb 	bnez	v0,2780 <func_800428E4+0x1c>
    2794:	00000000 	nop
    2798:	8fbf0014 	lw	ra,20(sp)
    279c:	8fb00010 	lw	s0,16(sp)
    27a0:	03e00008 	jr	ra
    27a4:	27bd0018 	addiu	sp,sp,24

000027a8 <func_80042928>:
    27a8:	27bdffe8 	addiu	sp,sp,-24
    27ac:	3c050000 	lui	a1,0x0
			27ac: R_MIPS_HI16	D_80042B14
    27b0:	8ca20000 	lw	v0,0(a1)
			27b0: R_MIPS_LO16	D_80042B14
    27b4:	2403000b 	li	v1,11
    27b8:	afbf0014 	sw	ra,20(sp)
    27bc:	afb00010 	sw	s0,16(sp)
    27c0:	24420001 	addiu	v0,v0,1
    27c4:	14430012 	bne	v0,v1,2810 <func_80042928+0x68>
    27c8:	aca20000 	sw	v0,0(a1)
			27c8: R_MIPS_LO16	D_80042B14
    27cc:	3c100000 	lui	s0,0x0
			27cc: R_MIPS_HI16	D_80042B10
    27d0:	92040000 	lbu	a0,0(s0)
			27d0: R_MIPS_LO16	D_80042B10
    27d4:	0c000901 	jal	2404 <func_80042584>
			27d4: R_MIPS_26	.text
    27d8:	aca00000 	sw	zero,0(a1)
			27d8: R_MIPS_LO16	D_80042B14
    27dc:	92020000 	lbu	v0,0(s0)
			27dc: R_MIPS_LO16	D_80042B10
    27e0:	24030064 	li	v1,100
    27e4:	24420001 	addiu	v0,v0,1
    27e8:	a2020000 	sb	v0,0(s0)
			27e8: R_MIPS_LO16	D_80042B10
    27ec:	304200ff 	andi	v0,v0,0xff
    27f0:	14430002 	bne	v0,v1,27fc <func_80042928+0x54>
    27f4:	24020067 	li	v0,103
    27f8:	a2020000 	sb	v0,0(s0)
			27f8: R_MIPS_LO16	D_80042B10
    27fc:	92030000 	lbu	v1,0(s0)
			27fc: R_MIPS_LO16	D_80042B10
    2800:	24020068 	li	v0,104
    2804:	14620002 	bne	v1,v0,2810 <func_80042928+0x68>
    2808:	24020061 	li	v0,97
    280c:	a2020000 	sb	v0,0(s0)
			280c: R_MIPS_LO16	D_80042B10
    2810:	0c00095e 	jal	2578 <func_800426F8>
			2810: R_MIPS_26	.text
    2814:	00000000 	nop
    2818:	30420010 	andi	v0,v0,0x10
    281c:	10400004 	beqz	v0,2830 <func_80042928+0x88>
    2820:	00001021 	move	v0,zero
    2824:	0c00095e 	jal	2578 <func_800426F8>
			2824: R_MIPS_26	.text
    2828:	00000000 	nop
    282c:	3042000f 	andi	v0,v0,0xf
    2830:	8fbf0014 	lw	ra,20(sp)
    2834:	8fb00010 	lw	s0,16(sp)
    2838:	03e00008 	jr	ra
    283c:	27bd0018 	addiu	sp,sp,24
