	.file	"idctref.c"
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0                          # -- Begin function Initialize_Reference_IDCT
.LCPI0_0:
	.dword	0x3fdf6297cff75cb0              # double 0.49039264020161522
	.dword	0x3fda9b66290ea1a3              # double 0.41573480615127262
	.dword	0x3fd1c73b39ae68c9              # double 0.27778511650980114
	.dword	0x3fb8f8b83c69a60d              # double 0.097545161008064166
.LCPI0_1:
	.dword	0xbfb8f8b83c69a608              # double -0.097545161008064096
	.dword	0xbfd1c73b39ae68c6              # double -0.27778511650980098
	.dword	0xbfda9b66290ea1a4              # double -0.41573480615127267
	.dword	0xbfdf6297cff75cb0              # double -0.49039264020161522
.LCPI0_2:
	.dword	0x3fdd906bcf328d46              # double 0.46193976625564337
	.dword	0x3fc87de2a6aea964              # double 0.19134171618254492
	.dword	0xbfc87de2a6aea962              # double -0.19134171618254486
	.dword	0xbfdd906bcf328d46              # double -0.46193976625564337
.LCPI0_3:
	.dword	0xbfdd906bcf328d47              # double -0.46193976625564342
	.dword	0xbfc87de2a6aea96d              # double -0.19134171618254517
	.dword	0x3fc87de2a6aea967              # double 0.191341716182545
	.dword	0x3fdd906bcf328d44              # double 0.46193976625564326
.LCPI0_4:
	.dword	0x3fda9b66290ea1a3              # double 0.41573480615127262
	.dword	0xbfb8f8b83c69a608              # double -0.097545161008064096
	.dword	0xbfdf6297cff75cb0              # double -0.49039264020161522
	.dword	0xbfd1c73b39ae68c8              # double -0.27778511650980109
.LCPI0_5:
	.dword	0x3fd1c73b39ae68c5              # double 0.27778511650980092
	.dword	0x3fdf6297cff75cb0              # double 0.49039264020161522
	.dword	0x3fb8f8b83c69a61d              # double 0.097545161008064388
	.dword	0xbfda9b66290ea1a2              # double -0.41573480615127256
.LCPI0_6:
	.dword	0x3fd6a09e667f3bcd              # double 0.35355339059327379
	.dword	0xbfd6a09e667f3bcc              # double -0.35355339059327373
	.dword	0xbfd6a09e667f3bce              # double -0.35355339059327384
	.dword	0x3fd6a09e667f3bcb              # double 0.35355339059327368
.LCPI0_7:
	.dword	0x3fd6a09e667f3bce              # double 0.35355339059327384
	.dword	0xbfd6a09e667f3bc5              # double -0.35355339059327334
	.dword	0xbfd6a09e667f3bc9              # double -0.35355339059327356
	.dword	0x3fd6a09e667f3bc4              # double 0.35355339059327329
.LCPI0_8:
	.dword	0x3fd1c73b39ae68c9              # double 0.27778511650980114
	.dword	0xbfdf6297cff75cb0              # double -0.49039264020161522
	.dword	0x3fb8f8b83c69a60c              # double 0.097545161008064151
	.dword	0x3fda9b66290ea1a5              # double 0.41573480615127273
.LCPI0_9:
	.dword	0xbfda9b66290ea1a2              # double -0.41573480615127256
	.dword	0xbfb8f8b83c69a602              # double -0.097545161008064013
	.dword	0x3fdf6297cff75cb2              # double 0.49039264020161533
	.dword	0xbfd1c73b39ae68c2              # double -0.27778511650980076
.LCPI0_10:
	.dword	0x3fc87de2a6aea964              # double 0.19134171618254492
	.dword	0xbfdd906bcf328d47              # double -0.46193976625564342
	.dword	0x3fdd906bcf328d44              # double 0.46193976625564326
	.dword	0xbfc87de2a6aea965              # double -0.19134171618254495
.LCPI0_11:
	.dword	0xbfc87de2a6aea971              # double -0.19134171618254528
	.dword	0x3fdd906bcf328d46              # double 0.46193976625564337
	.dword	0xbfdd906bcf328d43              # double -0.4619397662556432
	.dword	0x3fc87de2a6aea95f              # double 0.19134171618254478
.LCPI0_12:
	.dword	0x3fb8f8b83c69a60d              # double 0.097545161008064166
	.dword	0xbfd1c73b39ae68c8              # double -0.27778511650980109
	.dword	0x3fda9b66290ea1a5              # double 0.41573480615127273
	.dword	0xbfdf6297cff75cb2              # double -0.49039264020161533
.LCPI0_13:
	.dword	0x3fdf6297cff75cb0              # double 0.49039264020161522
	.dword	0xbfda9b66290ea1a1              # double -0.41573480615127251
	.dword	0x3fd1c73b39ae68c2              # double 0.27778511650980076
	.dword	0xbfb8f8b83c69a616              # double -0.09754516100806429
	.text
	.globl	Initialize_Reference_IDCT
	.p2align	5
	.type	Initialize_Reference_IDCT,@function
Initialize_Reference_IDCT:              # @Initialize_Reference_IDCT
# %bb.0:
	lu12i.w	$a0, 419827
	ori	$a0, $a0, 3021
	lu32i.d	$a0, 434334
	lu52i.d	$a0, $a0, 1021
	xvreplgr2vr.d	$xr0, $a0
	pcalau12i	$a0, %pc_hi20(c)
	addi.d	$a0, $a0, %pc_lo12(c)
	pcalau12i	$a1, %pc_hi20(.LCPI0_0)
	xvld	$xr1, $a1, %pc_lo12(.LCPI0_0)
	pcalau12i	$a1, %pc_hi20(.LCPI0_1)
	xvld	$xr2, $a1, %pc_lo12(.LCPI0_1)
	xvst	$xr0, $a0, 0
	xvst	$xr0, $a0, 32
	xvst	$xr1, $a0, 64
	xvst	$xr2, $a0, 96
	pcalau12i	$a1, %pc_hi20(.LCPI0_2)
	xvld	$xr0, $a1, %pc_lo12(.LCPI0_2)
	pcalau12i	$a1, %pc_hi20(.LCPI0_3)
	xvld	$xr1, $a1, %pc_lo12(.LCPI0_3)
	pcalau12i	$a1, %pc_hi20(.LCPI0_4)
	xvld	$xr2, $a1, %pc_lo12(.LCPI0_4)
	pcalau12i	$a1, %pc_hi20(.LCPI0_5)
	xvld	$xr3, $a1, %pc_lo12(.LCPI0_5)
	xvst	$xr0, $a0, 128
	xvst	$xr1, $a0, 160
	xvst	$xr2, $a0, 192
	xvst	$xr3, $a0, 224
	pcalau12i	$a1, %pc_hi20(.LCPI0_6)
	xvld	$xr0, $a1, %pc_lo12(.LCPI0_6)
	pcalau12i	$a1, %pc_hi20(.LCPI0_7)
	xvld	$xr1, $a1, %pc_lo12(.LCPI0_7)
	pcalau12i	$a1, %pc_hi20(.LCPI0_8)
	xvld	$xr2, $a1, %pc_lo12(.LCPI0_8)
	pcalau12i	$a1, %pc_hi20(.LCPI0_9)
	xvld	$xr3, $a1, %pc_lo12(.LCPI0_9)
	xvst	$xr0, $a0, 256
	xvst	$xr1, $a0, 288
	xvst	$xr2, $a0, 320
	xvst	$xr3, $a0, 352
	pcalau12i	$a1, %pc_hi20(.LCPI0_10)
	xvld	$xr0, $a1, %pc_lo12(.LCPI0_10)
	pcalau12i	$a1, %pc_hi20(.LCPI0_11)
	xvld	$xr1, $a1, %pc_lo12(.LCPI0_11)
	pcalau12i	$a1, %pc_hi20(.LCPI0_12)
	xvld	$xr2, $a1, %pc_lo12(.LCPI0_12)
	pcalau12i	$a1, %pc_hi20(.LCPI0_13)
	xvld	$xr3, $a1, %pc_lo12(.LCPI0_13)
	xvst	$xr0, $a0, 384
	xvst	$xr1, $a0, 416
	xvst	$xr2, $a0, 448
	xvst	$xr3, $a0, 480
	ret
.Lfunc_end0:
	.size	Initialize_Reference_IDCT, .Lfunc_end0-Initialize_Reference_IDCT
                                        # -- End function
	.globl	Reference_IDCT                  # -- Begin function Reference_IDCT
	.p2align	5
	.type	Reference_IDCT,@function
Reference_IDCT:                         # @Reference_IDCT
# %bb.0:
	addi.d	$sp, $sp, -2032
	fst.d	$fs0, $sp, 2024                 # 8-byte Folded Spill
	fst.d	$fs1, $sp, 2016                 # 8-byte Folded Spill
	fst.d	$fs2, $sp, 2008                 # 8-byte Folded Spill
	fst.d	$fs3, $sp, 2000                 # 8-byte Folded Spill
	fst.d	$fs4, $sp, 1992                 # 8-byte Folded Spill
	fst.d	$fs5, $sp, 1984                 # 8-byte Folded Spill
	fst.d	$fs6, $sp, 1976                 # 8-byte Folded Spill
	fst.d	$fs7, $sp, 1968                 # 8-byte Folded Spill
	addi.d	$sp, $sp, -128
	move	$a1, $zero
	pcalau12i	$a2, %pc_hi20(c)
	addi.d	$a2, $a2, %pc_lo12(c)
	xvld	$xr0, $a2, 0
	xvst	$xr0, $sp, 1552                 # 32-byte Folded Spill
	xvld	$xr0, $a2, 64
	xvst	$xr0, $sp, 1520                 # 32-byte Folded Spill
	xvld	$xr0, $a2, 128
	xvst	$xr0, $sp, 1488                 # 32-byte Folded Spill
	xvld	$xr0, $a2, 192
	xvst	$xr0, $sp, 1456                 # 32-byte Folded Spill
	xvld	$xr0, $a2, 256
	xvst	$xr0, $sp, 1424                 # 32-byte Folded Spill
	xvld	$xr0, $a2, 320
	xvst	$xr0, $sp, 1392                 # 32-byte Folded Spill
	xvld	$xr0, $a2, 384
	xvst	$xr0, $sp, 1360                 # 32-byte Folded Spill
	xvld	$xr0, $a2, 448
	xvst	$xr0, $sp, 1328                 # 32-byte Folded Spill
	fld.d	$fa0, $a2, 32
	fst.d	$fa0, $sp, 1296                 # 8-byte Folded Spill
	fld.d	$fa0, $a2, 96
	fst.d	$fa0, $sp, 1264                 # 8-byte Folded Spill
	fld.d	$fa0, $a2, 160
	fst.d	$fa0, $sp, 1232                 # 8-byte Folded Spill
	fld.d	$fa0, $a2, 224
	fst.d	$fa0, $sp, 1200                 # 8-byte Folded Spill
	fld.d	$fa0, $a2, 288
	fst.d	$fa0, $sp, 1168                 # 8-byte Folded Spill
	fld.d	$fa0, $a2, 352
	fst.d	$fa0, $sp, 1136                 # 8-byte Folded Spill
	fld.d	$fa0, $a2, 416
	fst.d	$fa0, $sp, 1104                 # 8-byte Folded Spill
	fld.d	$fa0, $a2, 480
	fst.d	$fa0, $sp, 1072                 # 8-byte Folded Spill
	fld.d	$fa0, $a2, 40
	fst.d	$fa0, $sp, 1040                 # 8-byte Folded Spill
	fld.d	$fa0, $a2, 104
	fst.d	$fa0, $sp, 1008                 # 8-byte Folded Spill
	fld.d	$fa0, $a2, 168
	fst.d	$fa0, $sp, 976                  # 8-byte Folded Spill
	fld.d	$fa0, $a2, 232
	fst.d	$fa0, $sp, 944                  # 8-byte Folded Spill
	fld.d	$ft13, $a2, 296
	fld.d	$ft14, $a2, 360
	fld.d	$ft15, $a2, 424
	fld.d	$fs0, $a2, 488
	fld.d	$fs1, $a2, 48
	fld.d	$fs2, $a2, 112
	fld.d	$fs3, $a2, 176
	fld.d	$fs4, $a2, 240
	fld.d	$fs5, $a2, 304
	fld.d	$fs6, $a2, 368
	fld.d	$fs7, $a2, 432
	fld.d	$fa1, $a2, 496
	fld.d	$fa2, $a2, 56
	fld.d	$fa3, $a2, 120
	fld.d	$fa4, $a2, 184
	fld.d	$fa5, $a2, 248
	fld.d	$fa6, $a2, 312
	fld.d	$fa7, $a2, 376
	fld.d	$ft0, $a2, 440
	fld.d	$ft1, $a2, 504
	addi.d	$a3, $a0, 8
	addi.d	$a4, $sp, 1584
	ori	$a5, $zero, 512
	.p2align	4, , 16
.LBB1_1:                                # %.preheader41
                                        # =>This Inner Loop Header: Depth=1
	ld.h	$a6, $a3, -8
	ld.h	$a7, $a3, -6
	movgr2fr.w	$fa0, $a6
	ld.h	$a6, $a3, -4
	movgr2fr.w	$ft3, $a7
	ld.h	$a7, $a3, -2
	ld.h	$t0, $a3, 0
	movgr2fr.w	$ft4, $a6
	ld.h	$a6, $a3, 2
	movgr2fr.w	$ft5, $a7
	movgr2fr.w	$ft6, $t0
	ffint.d.w	$ft2, $fa0
	movgr2fr.w	$fa0, $a6
	ld.h	$a6, $a3, 4
	ffint.d.w	$ft3, $ft3
	ffint.d.w	$ft4, $ft4
	ffint.d.w	$ft5, $ft5
	movgr2fr.w	$ft7, $a6
	ld.h	$a6, $a3, 6
	ffint.d.w	$ft6, $ft6
	ffint.d.w	$ft8, $fa0
	ffint.d.w	$ft7, $ft7
	movgr2fr.w	$fa0, $a6
	ffint.d.w	$ft9, $fa0
	add.d	$a6, $a4, $a1
	xvreplve0.d	$xr18, $xr10
	xvrepli.b	$xr0, 0
	xvld	$xr19, $sp, 1552                # 32-byte Folded Reload
	xvfmadd.d	$xr18, $xr19, $xr18, $xr0
	xvreplve0.d	$xr19, $xr11
	xvld	$xr20, $sp, 1520                # 32-byte Folded Reload
	xvfmadd.d	$xr18, $xr20, $xr19, $xr18
	xvreplve0.d	$xr19, $xr12
	xvld	$xr20, $sp, 1488                # 32-byte Folded Reload
	xvfmadd.d	$xr18, $xr20, $xr19, $xr18
	xvreplve0.d	$xr19, $xr13
	xvld	$xr20, $sp, 1456                # 32-byte Folded Reload
	xvfmadd.d	$xr18, $xr20, $xr19, $xr18
	xvreplve0.d	$xr19, $xr14
	xvld	$xr20, $sp, 1424                # 32-byte Folded Reload
	xvfmadd.d	$xr18, $xr20, $xr19, $xr18
	xvreplve0.d	$xr19, $xr16
	xvld	$xr20, $sp, 1392                # 32-byte Folded Reload
	xvfmadd.d	$xr18, $xr20, $xr19, $xr18
	xvreplve0.d	$xr19, $xr15
	xvld	$xr20, $sp, 1360                # 32-byte Folded Reload
	xvfmadd.d	$xr18, $xr20, $xr19, $xr18
	xvreplve0.d	$xr19, $xr17
	xvld	$xr20, $sp, 1328                # 32-byte Folded Reload
	xvfmadd.d	$xr18, $xr20, $xr19, $xr18
	xvstx	$xr18, $a1, $a4
	movgr2fr.d	$ft10, $zero
	fld.d	$ft11, $sp, 1296                # 8-byte Folded Reload
	fmadd.d	$ft11, $ft11, $ft2, $ft10
	fld.d	$ft12, $sp, 1264                # 8-byte Folded Reload
	fmadd.d	$ft11, $ft12, $ft3, $ft11
	fld.d	$ft12, $sp, 1232                # 8-byte Folded Reload
	fmadd.d	$ft11, $ft12, $ft4, $ft11
	fld.d	$ft12, $sp, 1200                # 8-byte Folded Reload
	fmadd.d	$ft11, $ft12, $ft5, $ft11
	fld.d	$ft12, $sp, 1168                # 8-byte Folded Reload
	fmadd.d	$ft11, $ft12, $ft6, $ft11
	fld.d	$ft12, $sp, 1136                # 8-byte Folded Reload
	fmadd.d	$ft11, $ft12, $ft8, $ft11
	fld.d	$ft12, $sp, 1104                # 8-byte Folded Reload
	fmadd.d	$ft11, $ft12, $ft7, $ft11
	fld.d	$ft12, $sp, 1072                # 8-byte Folded Reload
	fmadd.d	$ft11, $ft12, $ft9, $ft11
	fst.d	$ft11, $a6, 32
	fld.d	$ft11, $sp, 1040                # 8-byte Folded Reload
	fmadd.d	$ft11, $ft11, $ft2, $ft10
	fld.d	$ft12, $sp, 1008                # 8-byte Folded Reload
	fmadd.d	$ft11, $ft12, $ft3, $ft11
	fld.d	$ft12, $sp, 976                 # 8-byte Folded Reload
	fmadd.d	$ft11, $ft12, $ft4, $ft11
	fld.d	$ft12, $sp, 944                 # 8-byte Folded Reload
	fmadd.d	$ft11, $ft12, $ft5, $ft11
	fmadd.d	$ft11, $ft13, $ft6, $ft11
	fmadd.d	$ft11, $ft14, $ft8, $ft11
	fmadd.d	$ft11, $ft15, $ft7, $ft11
	fmadd.d	$ft11, $fs0, $ft9, $ft11
	fst.d	$ft11, $a6, 40
	fmadd.d	$ft11, $fs1, $ft2, $ft10
	fmadd.d	$ft11, $fs2, $ft3, $ft11
	fmadd.d	$ft11, $fs3, $ft4, $ft11
	fmadd.d	$ft11, $fs4, $ft5, $ft11
	fmadd.d	$ft11, $fs5, $ft6, $ft11
	fmadd.d	$ft11, $fs6, $ft8, $ft11
	fmadd.d	$ft11, $fs7, $ft7, $ft11
	fmadd.d	$ft11, $fa1, $ft9, $ft11
	fst.d	$ft11, $a6, 48
	fmadd.d	$ft2, $fa2, $ft2, $ft10
	fmadd.d	$ft2, $fa3, $ft3, $ft2
	fmadd.d	$ft2, $fa4, $ft4, $ft2
	fmadd.d	$ft2, $fa5, $ft5, $ft2
	fmadd.d	$ft2, $fa6, $ft6, $ft2
	fmadd.d	$ft2, $fa7, $ft8, $ft2
	fmadd.d	$ft2, $ft0, $ft7, $ft2
	fmadd.d	$ft2, $ft1, $ft9, $ft2
	fst.d	$ft2, $a6, 56
	addi.d	$a1, $a1, 64
	addi.d	$a3, $a3, 16
	bne	$a1, $a5, .LBB1_1
# %bb.2:                                # %vector.ph
	vld	$vr1, $a2, 472
	xvst	$xr1, $sp, 560                  # 32-byte Folded Spill
	vld	$vr2, $a2, 408
	vld	$vr3, $a2, 344
	vld	$vr4, $a2, 280
	vld	$vr5, $a2, 216
	vld	$vr6, $a2, 152
	vld	$vr7, $a2, 88
	vld	$vr8, $a2, 24
	vld	$vr9, $a2, 464
	vld	$vr10, $a2, 400
	vld	$vr11, $a2, 336
	vld	$vr12, $a2, 272
	vld	$vr13, $a2, 208
	vld	$vr14, $a2, 144
	vld	$vr15, $a2, 80
	vld	$vr16, $a2, 16
	vld	$vr17, $a2, 456
	vld	$vr18, $a2, 392
	vld	$vr19, $a2, 328
	vld	$vr20, $a2, 264
	vld	$vr21, $a2, 200
	vld	$vr22, $a2, 136
	vld	$vr23, $a2, 72
	vld	$vr24, $a2, 8
	vld	$vr25, $a2, 448
	vld	$vr26, $a2, 384
	vld	$vr27, $a2, 320
	vld	$vr28, $a2, 256
	vld	$vr29, $a2, 0
	vld	$vr30, $a2, 192
	vld	$vr31, $a2, 64
	vld	$vr1, $a2, 128
	xvpermi.d	$xr29, $xr29, 68
	xvrepl128vei.d	$xr29, $xr29, 0
	xvst	$xr29, $sp, 1552                # 32-byte Folded Spill
	xvpermi.d	$xr29, $xr31, 68
	xvrepl128vei.d	$xr29, $xr29, 0
	xvst	$xr29, $sp, 1520                # 32-byte Folded Spill
	xvpermi.d	$xr1, $xr1, 68
	xvrepl128vei.d	$xr1, $xr1, 0
	xvst	$xr1, $sp, 1488                 # 32-byte Folded Spill
	xvpermi.d	$xr1, $xr30, 68
	xvrepl128vei.d	$xr1, $xr1, 0
	xvst	$xr1, $sp, 1456                 # 32-byte Folded Spill
	xvpermi.d	$xr1, $xr28, 68
	xvrepl128vei.d	$xr1, $xr1, 0
	xvst	$xr1, $sp, 1424                 # 32-byte Folded Spill
	xvpermi.d	$xr1, $xr27, 68
	xvrepl128vei.d	$xr1, $xr1, 0
	xvst	$xr1, $sp, 1392                 # 32-byte Folded Spill
	xvpermi.d	$xr1, $xr26, 68
	xvrepl128vei.d	$xr1, $xr1, 0
	xvst	$xr1, $sp, 1360                 # 32-byte Folded Spill
	xvpermi.d	$xr1, $xr25, 68
	xvrepl128vei.d	$xr1, $xr1, 0
	xvst	$xr1, $sp, 1328                 # 32-byte Folded Spill
	xvpermi.d	$xr1, $xr24, 68
	xvrepl128vei.d	$xr1, $xr1, 0
	xvst	$xr1, $sp, 1296                 # 32-byte Folded Spill
	xvpermi.d	$xr1, $xr23, 68
	xvrepl128vei.d	$xr1, $xr1, 0
	xvst	$xr1, $sp, 1264                 # 32-byte Folded Spill
	xvpermi.d	$xr1, $xr22, 68
	xvrepl128vei.d	$xr1, $xr1, 0
	xvst	$xr1, $sp, 1232                 # 32-byte Folded Spill
	xvpermi.d	$xr1, $xr21, 68
	xvrepl128vei.d	$xr1, $xr1, 0
	xvst	$xr1, $sp, 1200                 # 32-byte Folded Spill
	xvpermi.d	$xr1, $xr20, 68
	xvrepl128vei.d	$xr1, $xr1, 0
	xvst	$xr1, $sp, 1168                 # 32-byte Folded Spill
	xvpermi.d	$xr1, $xr19, 68
	xvrepl128vei.d	$xr1, $xr1, 0
	xvst	$xr1, $sp, 1136                 # 32-byte Folded Spill
	xvpermi.d	$xr1, $xr18, 68
	xvrepl128vei.d	$xr1, $xr1, 0
	xvst	$xr1, $sp, 1104                 # 32-byte Folded Spill
	xvpermi.d	$xr1, $xr17, 68
	xvrepl128vei.d	$xr1, $xr1, 0
	xvst	$xr1, $sp, 1072                 # 32-byte Folded Spill
	xvpermi.d	$xr1, $xr16, 68
	xvrepl128vei.d	$xr1, $xr1, 0
	xvst	$xr1, $sp, 1040                 # 32-byte Folded Spill
	xvpermi.d	$xr1, $xr15, 68
	xvrepl128vei.d	$xr1, $xr1, 0
	xvst	$xr1, $sp, 1008                 # 32-byte Folded Spill
	xvpermi.d	$xr1, $xr14, 68
	xvrepl128vei.d	$xr1, $xr1, 0
	xvst	$xr1, $sp, 976                  # 32-byte Folded Spill
	xvpermi.d	$xr1, $xr13, 68
	xvrepl128vei.d	$xr1, $xr1, 0
	xvst	$xr1, $sp, 944                  # 32-byte Folded Spill
	xvpermi.d	$xr1, $xr12, 68
	xvrepl128vei.d	$xr1, $xr1, 0
	xvst	$xr1, $sp, 912                  # 32-byte Folded Spill
	xvpermi.d	$xr1, $xr11, 68
	xvrepl128vei.d	$xr1, $xr1, 0
	xvst	$xr1, $sp, 880                  # 32-byte Folded Spill
	xvpermi.d	$xr1, $xr10, 68
	xvrepl128vei.d	$xr1, $xr1, 0
	xvst	$xr1, $sp, 848                  # 32-byte Folded Spill
	xvpermi.d	$xr1, $xr9, 68
	xvrepl128vei.d	$xr1, $xr1, 0
	xvst	$xr1, $sp, 816                  # 32-byte Folded Spill
	xvpermi.d	$xr1, $xr8, 68
	xvrepl128vei.d	$xr1, $xr1, 0
	xvst	$xr1, $sp, 784                  # 32-byte Folded Spill
	xvpermi.d	$xr1, $xr7, 68
	xvrepl128vei.d	$xr1, $xr1, 0
	xvst	$xr1, $sp, 752                  # 32-byte Folded Spill
	xvpermi.d	$xr1, $xr6, 68
	xvrepl128vei.d	$xr1, $xr1, 0
	xvst	$xr1, $sp, 720                  # 32-byte Folded Spill
	xvpermi.d	$xr1, $xr5, 68
	xvrepl128vei.d	$xr1, $xr1, 0
	xvst	$xr1, $sp, 688                  # 32-byte Folded Spill
	xvpermi.d	$xr1, $xr4, 68
	xvrepl128vei.d	$xr1, $xr1, 0
	xvst	$xr1, $sp, 656                  # 32-byte Folded Spill
	xvpermi.d	$xr1, $xr3, 68
	xvrepl128vei.d	$xr1, $xr1, 0
	xvst	$xr1, $sp, 624                  # 32-byte Folded Spill
	xvpermi.d	$xr1, $xr2, 68
	xvrepl128vei.d	$xr1, $xr1, 0
	xvst	$xr1, $sp, 592                  # 32-byte Folded Spill
	vld	$vr1, $a2, 32
	xvld	$xr2, $sp, 560                  # 32-byte Folded Reload
	xvpermi.d	$xr2, $xr2, 68
	xvrepl128vei.d	$xr2, $xr2, 0
	xvst	$xr2, $sp, 560                  # 32-byte Folded Spill
	vld	$vr2, $a2, 96
	xvpermi.d	$xr1, $xr1, 68
	xvrepl128vei.d	$xr1, $xr1, 0
	xvst	$xr1, $sp, 528                  # 32-byte Folded Spill
	vld	$vr1, $a2, 160
	xvpermi.d	$xr2, $xr2, 68
	xvrepl128vei.d	$xr2, $xr2, 0
	xvst	$xr2, $sp, 496                  # 32-byte Folded Spill
	vld	$vr2, $a2, 224
	xvpermi.d	$xr1, $xr1, 68
	xvrepl128vei.d	$xr1, $xr1, 0
	xvst	$xr1, $sp, 464                  # 32-byte Folded Spill
	vld	$vr1, $a2, 288
	xvpermi.d	$xr2, $xr2, 68
	xvrepl128vei.d	$xr2, $xr2, 0
	xvst	$xr2, $sp, 432                  # 32-byte Folded Spill
	vld	$vr2, $a2, 352
	xvpermi.d	$xr1, $xr1, 68
	xvrepl128vei.d	$xr1, $xr1, 0
	xvst	$xr1, $sp, 400                  # 32-byte Folded Spill
	vld	$vr1, $a2, 416
	xvpermi.d	$xr2, $xr2, 68
	xvrepl128vei.d	$xr2, $xr2, 0
	xvst	$xr2, $sp, 368                  # 32-byte Folded Spill
	vld	$vr2, $a2, 480
	xvpermi.d	$xr1, $xr1, 68
	xvrepl128vei.d	$xr1, $xr1, 0
	xvst	$xr1, $sp, 336                  # 32-byte Folded Spill
	vld	$vr1, $a2, 40
	xvpermi.d	$xr2, $xr2, 68
	xvrepl128vei.d	$xr2, $xr2, 0
	xvst	$xr2, $sp, 304                  # 32-byte Folded Spill
	vld	$vr2, $a2, 104
	xvpermi.d	$xr1, $xr1, 68
	xvrepl128vei.d	$xr1, $xr1, 0
	xvst	$xr1, $sp, 272                  # 32-byte Folded Spill
	vld	$vr1, $a2, 168
	xvpermi.d	$xr2, $xr2, 68
	xvrepl128vei.d	$xr2, $xr2, 0
	xvst	$xr2, $sp, 240                  # 32-byte Folded Spill
	vld	$vr2, $a2, 232
	xvpermi.d	$xr1, $xr1, 68
	xvrepl128vei.d	$xr1, $xr1, 0
	xvst	$xr1, $sp, 208                  # 32-byte Folded Spill
	vld	$vr1, $a2, 296
	xvpermi.d	$xr2, $xr2, 68
	xvrepl128vei.d	$xr2, $xr2, 0
	xvst	$xr2, $sp, 176                  # 32-byte Folded Spill
	vld	$vr2, $a2, 360
	xvpermi.d	$xr1, $xr1, 68
	xvrepl128vei.d	$xr1, $xr1, 0
	xvst	$xr1, $sp, 144                  # 32-byte Folded Spill
	vld	$vr1, $a2, 424
	xvpermi.d	$xr2, $xr2, 68
	xvrepl128vei.d	$xr2, $xr2, 0
	xvst	$xr2, $sp, 112                  # 32-byte Folded Spill
	vld	$vr2, $a2, 488
	xvpermi.d	$xr1, $xr1, 68
	xvrepl128vei.d	$xr1, $xr1, 0
	xvst	$xr1, $sp, 80                   # 32-byte Folded Spill
	vld	$vr1, $a2, 48
	xvpermi.d	$xr2, $xr2, 68
	xvrepl128vei.d	$xr2, $xr2, 0
	xvst	$xr2, $sp, 48                   # 32-byte Folded Spill
	vld	$vr2, $a2, 112
	xvpermi.d	$xr1, $xr1, 68
	xvrepl128vei.d	$xr1, $xr1, 0
	xvst	$xr1, $sp, 16                   # 32-byte Folded Spill
	vld	$vr1, $a2, 176
	xvpermi.d	$xr2, $xr2, 68
	xvrepl128vei.d	$xr19, $xr2, 0
	vld	$vr2, $a2, 240
	xvpermi.d	$xr1, $xr1, 68
	xvrepl128vei.d	$xr20, $xr1, 0
	vld	$vr1, $a2, 304
	xvpermi.d	$xr2, $xr2, 68
	xvrepl128vei.d	$xr21, $xr2, 0
	vld	$vr2, $a2, 368
	xvpermi.d	$xr1, $xr1, 68
	xvrepl128vei.d	$xr22, $xr1, 0
	vld	$vr1, $a2, 432
	xvpermi.d	$xr2, $xr2, 68
	xvrepl128vei.d	$xr23, $xr2, 0
	vld	$vr2, $a2, 496
	xvpermi.d	$xr1, $xr1, 68
	xvrepl128vei.d	$xr24, $xr1, 0
	vld	$vr1, $a2, 56
	xvpermi.d	$xr2, $xr2, 68
	xvrepl128vei.d	$xr25, $xr2, 0
	vld	$vr2, $a2, 120
	xvpermi.d	$xr1, $xr1, 68
	xvrepl128vei.d	$xr26, $xr1, 0
	vld	$vr1, $a2, 184
	xvpermi.d	$xr2, $xr2, 68
	xvrepl128vei.d	$xr27, $xr2, 0
	vld	$vr2, $a2, 248
	xvpermi.d	$xr1, $xr1, 68
	xvrepl128vei.d	$xr28, $xr1, 0
	vld	$vr1, $a2, 312
	xvpermi.d	$xr2, $xr2, 68
	xvrepl128vei.d	$xr29, $xr2, 0
	vld	$vr2, $a2, 376
	xvpermi.d	$xr1, $xr1, 68
	vld	$vr3, $a2, 440
	xvrepl128vei.d	$xr30, $xr1, 0
	xvpermi.d	$xr1, $xr2, 68
	xvrepl128vei.d	$xr31, $xr1, 0
	xvpermi.d	$xr1, $xr3, 68
	xvrepl128vei.d	$xr1, $xr1, 0
	addi.d	$a0, $a0, 64
	ori	$a1, $zero, 448
	xvldrepl.d	$xr2, $a2, 504
	addi.d	$a2, $sp, 1584
	lu52i.d	$a3, $zero, 1022
	ori	$a4, $zero, 512
	.p2align	4, , 16
.LBB1_3:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a5, $a2, $a1
	xvld	$xr3, $a5, -448
	xvld	$xr4, $a5, -384
	xvld	$xr5, $a5, -320
	xvld	$xr6, $a5, -256
	xvld	$xr7, $sp, 1552                 # 32-byte Folded Reload
	xvfmadd.d	$xr7, $xr7, $xr3, $xr0
	xvld	$xr8, $sp, 1520                 # 32-byte Folded Reload
	xvfmadd.d	$xr7, $xr8, $xr4, $xr7
	xvld	$xr8, $sp, 1488                 # 32-byte Folded Reload
	xvfmadd.d	$xr7, $xr8, $xr5, $xr7
	xvld	$xr8, $sp, 1456                 # 32-byte Folded Reload
	xvfmadd.d	$xr11, $xr8, $xr6, $xr7
	xvld	$xr8, $a5, -192
	xvld	$xr10, $a5, -128
	xvld	$xr7, $a5, -64
	xvldx	$xr9, $a1, $a2
	xvld	$xr12, $sp, 1424                # 32-byte Folded Reload
	xvfmadd.d	$xr11, $xr12, $xr8, $xr11
	xvld	$xr12, $sp, 1392                # 32-byte Folded Reload
	xvfmadd.d	$xr11, $xr12, $xr10, $xr11
	xvld	$xr12, $sp, 1360                # 32-byte Folded Reload
	xvfmadd.d	$xr11, $xr12, $xr7, $xr11
	xvld	$xr12, $sp, 1328                # 32-byte Folded Reload
	xvfmadd.d	$xr11, $xr12, $xr9, $xr11
	xvreplgr2vr.d	$xr13, $a3
	xvfadd.d	$xr11, $xr11, $xr13
	xvpickve2gr.d	$a5, $xr11, 0
	movgr2fr.d	$ft4, $a5
	vreplvei.d	$vr12, $vr12, 0
	vfrintrm.d	$vr12, $vr12
	movfr2gr.d	$a5, $ft4
	xvpickve2gr.d	$a6, $xr11, 1
	movgr2fr.d	$ft4, $a6
	vreplvei.d	$vr12, $vr12, 0
	vfrintrm.d	$vr12, $vr12
	xvinsgr2vr.d	$xr14, $a5, 0
	movfr2gr.d	$a5, $ft4
	xvpickve2gr.d	$a6, $xr11, 2
	movgr2fr.d	$ft4, $a6
	vreplvei.d	$vr12, $vr12, 0
	vfrintrm.d	$vr12, $vr12
	xvinsgr2vr.d	$xr14, $a5, 1
	movfr2gr.d	$a5, $ft4
	xvpickve2gr.d	$a6, $xr11, 3
	movgr2fr.d	$ft3, $a6
	vreplvei.d	$vr11, $vr11, 0
	vfrintrm.d	$vr11, $vr11
	xvinsgr2vr.d	$xr14, $a5, 2
	movfr2gr.d	$a5, $ft3
	xvinsgr2vr.d	$xr14, $a5, 3
	xvftintrz.l.d	$xr11, $xr14
	xvpermi.d	$xr12, $xr11, 238
	xvpickev.w	$xr12, $xr12, $xr11
	vrepli.w	$vr11, -256
	vmax.w	$vr14, $vr12, $vr11
	vrepli.w	$vr12, 255
	vmin.w	$vr14, $vr14, $vr12
	vpickev.h	$vr14, $vr14, $vr14
	xvld	$xr15, $sp, 1296                # 32-byte Folded Reload
	xvfmadd.d	$xr15, $xr15, $xr3, $xr0
	xvld	$xr16, $sp, 1264                # 32-byte Folded Reload
	xvfmadd.d	$xr15, $xr16, $xr4, $xr15
	xvld	$xr16, $sp, 1232                # 32-byte Folded Reload
	xvfmadd.d	$xr15, $xr16, $xr5, $xr15
	xvld	$xr16, $sp, 1200                # 32-byte Folded Reload
	xvfmadd.d	$xr15, $xr16, $xr6, $xr15
	xvld	$xr16, $sp, 1168                # 32-byte Folded Reload
	xvfmadd.d	$xr15, $xr16, $xr8, $xr15
	xvld	$xr16, $sp, 1136                # 32-byte Folded Reload
	xvfmadd.d	$xr15, $xr16, $xr10, $xr15
	xvld	$xr16, $sp, 1104                # 32-byte Folded Reload
	xvfmadd.d	$xr15, $xr16, $xr7, $xr15
	xvld	$xr16, $sp, 1072                # 32-byte Folded Reload
	xvfmadd.d	$xr15, $xr16, $xr9, $xr15
	xvfadd.d	$xr15, $xr15, $xr13
	xvpickve2gr.d	$a5, $xr15, 0
	movgr2fr.d	$ft8, $a5
	vreplvei.d	$vr16, $vr16, 0
	vfrintrm.d	$vr16, $vr16
	vstelm.d	$vr14, $a0, -64, 0
	movfr2gr.d	$a5, $ft8
	xvpickve2gr.d	$a6, $xr15, 1
	movgr2fr.d	$ft6, $a6
	vreplvei.d	$vr14, $vr14, 0
	vfrintrm.d	$vr14, $vr14
	xvinsgr2vr.d	$xr16, $a5, 0
	movfr2gr.d	$a5, $ft6
	xvpickve2gr.d	$a6, $xr15, 2
	movgr2fr.d	$ft6, $a6
	vreplvei.d	$vr14, $vr14, 0
	vfrintrm.d	$vr14, $vr14
	xvinsgr2vr.d	$xr16, $a5, 1
	movfr2gr.d	$a5, $ft6
	xvpickve2gr.d	$a6, $xr15, 3
	movgr2fr.d	$ft6, $a6
	vreplvei.d	$vr14, $vr14, 0
	vfrintrm.d	$vr14, $vr14
	xvinsgr2vr.d	$xr16, $a5, 2
	movfr2gr.d	$a5, $ft6
	xvinsgr2vr.d	$xr16, $a5, 3
	xvftintrz.l.d	$xr14, $xr16
	xvpermi.d	$xr15, $xr14, 238
	xvpickev.w	$xr14, $xr15, $xr14
	vmax.w	$vr14, $vr14, $vr11
	vmin.w	$vr14, $vr14, $vr12
	vpickev.h	$vr14, $vr14, $vr14
	xvld	$xr15, $sp, 1040                # 32-byte Folded Reload
	xvfmadd.d	$xr15, $xr15, $xr3, $xr0
	xvld	$xr16, $sp, 1008                # 32-byte Folded Reload
	xvfmadd.d	$xr15, $xr16, $xr4, $xr15
	xvld	$xr16, $sp, 976                 # 32-byte Folded Reload
	xvfmadd.d	$xr15, $xr16, $xr5, $xr15
	xvld	$xr16, $sp, 944                 # 32-byte Folded Reload
	xvfmadd.d	$xr15, $xr16, $xr6, $xr15
	xvld	$xr16, $sp, 912                 # 32-byte Folded Reload
	xvfmadd.d	$xr15, $xr16, $xr8, $xr15
	xvld	$xr16, $sp, 880                 # 32-byte Folded Reload
	xvfmadd.d	$xr15, $xr16, $xr10, $xr15
	xvld	$xr16, $sp, 848                 # 32-byte Folded Reload
	xvfmadd.d	$xr15, $xr16, $xr7, $xr15
	xvld	$xr16, $sp, 816                 # 32-byte Folded Reload
	xvfmadd.d	$xr15, $xr16, $xr9, $xr15
	xvfadd.d	$xr15, $xr15, $xr13
	xvpickve2gr.d	$a5, $xr15, 0
	movgr2fr.d	$ft8, $a5
	vreplvei.d	$vr16, $vr16, 0
	vfrintrm.d	$vr16, $vr16
	vstelm.d	$vr14, $a0, -48, 0
	movfr2gr.d	$a5, $ft8
	xvpickve2gr.d	$a6, $xr15, 1
	movgr2fr.d	$ft6, $a6
	vreplvei.d	$vr14, $vr14, 0
	vfrintrm.d	$vr14, $vr14
	xvinsgr2vr.d	$xr16, $a5, 0
	movfr2gr.d	$a5, $ft6
	xvpickve2gr.d	$a6, $xr15, 2
	movgr2fr.d	$ft6, $a6
	vreplvei.d	$vr14, $vr14, 0
	vfrintrm.d	$vr14, $vr14
	xvinsgr2vr.d	$xr16, $a5, 1
	movfr2gr.d	$a5, $ft6
	xvpickve2gr.d	$a6, $xr15, 3
	movgr2fr.d	$ft6, $a6
	vreplvei.d	$vr14, $vr14, 0
	vfrintrm.d	$vr14, $vr14
	xvinsgr2vr.d	$xr16, $a5, 2
	movfr2gr.d	$a5, $ft6
	xvinsgr2vr.d	$xr16, $a5, 3
	xvftintrz.l.d	$xr14, $xr16
	xvpermi.d	$xr15, $xr14, 238
	xvpickev.w	$xr14, $xr15, $xr14
	vmax.w	$vr14, $vr14, $vr11
	vmin.w	$vr14, $vr14, $vr12
	vpickev.h	$vr14, $vr14, $vr14
	xvld	$xr15, $sp, 784                 # 32-byte Folded Reload
	xvfmadd.d	$xr15, $xr15, $xr3, $xr0
	xvld	$xr16, $sp, 752                 # 32-byte Folded Reload
	xvfmadd.d	$xr15, $xr16, $xr4, $xr15
	xvld	$xr16, $sp, 720                 # 32-byte Folded Reload
	xvfmadd.d	$xr15, $xr16, $xr5, $xr15
	xvld	$xr16, $sp, 688                 # 32-byte Folded Reload
	xvfmadd.d	$xr15, $xr16, $xr6, $xr15
	xvld	$xr16, $sp, 656                 # 32-byte Folded Reload
	xvfmadd.d	$xr15, $xr16, $xr8, $xr15
	xvld	$xr16, $sp, 624                 # 32-byte Folded Reload
	xvfmadd.d	$xr15, $xr16, $xr10, $xr15
	xvld	$xr16, $sp, 592                 # 32-byte Folded Reload
	xvfmadd.d	$xr15, $xr16, $xr7, $xr15
	xvld	$xr16, $sp, 560                 # 32-byte Folded Reload
	xvfmadd.d	$xr15, $xr16, $xr9, $xr15
	xvfadd.d	$xr15, $xr15, $xr13
	xvpickve2gr.d	$a5, $xr15, 0
	movgr2fr.d	$ft8, $a5
	vreplvei.d	$vr16, $vr16, 0
	vfrintrm.d	$vr16, $vr16
	vstelm.d	$vr14, $a0, -32, 0
	movfr2gr.d	$a5, $ft8
	xvpickve2gr.d	$a6, $xr15, 1
	movgr2fr.d	$ft6, $a6
	vreplvei.d	$vr14, $vr14, 0
	vfrintrm.d	$vr14, $vr14
	xvinsgr2vr.d	$xr16, $a5, 0
	movfr2gr.d	$a5, $ft6
	xvpickve2gr.d	$a6, $xr15, 2
	movgr2fr.d	$ft6, $a6
	vreplvei.d	$vr14, $vr14, 0
	vfrintrm.d	$vr14, $vr14
	xvinsgr2vr.d	$xr16, $a5, 1
	movfr2gr.d	$a5, $ft6
	xvpickve2gr.d	$a6, $xr15, 3
	movgr2fr.d	$ft6, $a6
	vreplvei.d	$vr14, $vr14, 0
	vfrintrm.d	$vr14, $vr14
	xvinsgr2vr.d	$xr16, $a5, 2
	movfr2gr.d	$a5, $ft6
	xvinsgr2vr.d	$xr16, $a5, 3
	xvftintrz.l.d	$xr14, $xr16
	xvpermi.d	$xr15, $xr14, 238
	xvpickev.w	$xr14, $xr15, $xr14
	vmax.w	$vr14, $vr14, $vr11
	vmin.w	$vr14, $vr14, $vr12
	vpickev.h	$vr14, $vr14, $vr14
	xvld	$xr15, $sp, 528                 # 32-byte Folded Reload
	xvfmadd.d	$xr15, $xr15, $xr3, $xr0
	xvld	$xr16, $sp, 496                 # 32-byte Folded Reload
	xvfmadd.d	$xr15, $xr16, $xr4, $xr15
	xvld	$xr16, $sp, 464                 # 32-byte Folded Reload
	xvfmadd.d	$xr15, $xr16, $xr5, $xr15
	xvld	$xr16, $sp, 432                 # 32-byte Folded Reload
	xvfmadd.d	$xr15, $xr16, $xr6, $xr15
	xvld	$xr16, $sp, 400                 # 32-byte Folded Reload
	xvfmadd.d	$xr15, $xr16, $xr8, $xr15
	xvld	$xr16, $sp, 368                 # 32-byte Folded Reload
	xvfmadd.d	$xr15, $xr16, $xr10, $xr15
	xvld	$xr16, $sp, 336                 # 32-byte Folded Reload
	xvfmadd.d	$xr15, $xr16, $xr7, $xr15
	xvld	$xr16, $sp, 304                 # 32-byte Folded Reload
	xvfmadd.d	$xr15, $xr16, $xr9, $xr15
	xvfadd.d	$xr15, $xr15, $xr13
	xvpickve2gr.d	$a5, $xr15, 0
	movgr2fr.d	$ft8, $a5
	vreplvei.d	$vr16, $vr16, 0
	vfrintrm.d	$vr16, $vr16
	vstelm.d	$vr14, $a0, -16, 0
	movfr2gr.d	$a5, $ft8
	xvpickve2gr.d	$a6, $xr15, 1
	movgr2fr.d	$ft6, $a6
	vreplvei.d	$vr14, $vr14, 0
	vfrintrm.d	$vr14, $vr14
	xvinsgr2vr.d	$xr16, $a5, 0
	movfr2gr.d	$a5, $ft6
	xvpickve2gr.d	$a6, $xr15, 2
	movgr2fr.d	$ft6, $a6
	vreplvei.d	$vr14, $vr14, 0
	vfrintrm.d	$vr14, $vr14
	xvinsgr2vr.d	$xr16, $a5, 1
	movfr2gr.d	$a5, $ft6
	xvpickve2gr.d	$a6, $xr15, 3
	movgr2fr.d	$ft6, $a6
	vreplvei.d	$vr14, $vr14, 0
	vfrintrm.d	$vr14, $vr14
	xvinsgr2vr.d	$xr16, $a5, 2
	movfr2gr.d	$a5, $ft6
	xvinsgr2vr.d	$xr16, $a5, 3
	xvftintrz.l.d	$xr14, $xr16
	xvpermi.d	$xr15, $xr14, 238
	xvpickev.w	$xr14, $xr15, $xr14
	vmax.w	$vr14, $vr14, $vr11
	vmin.w	$vr14, $vr14, $vr12
	vpickev.h	$vr14, $vr14, $vr14
	xvld	$xr15, $sp, 272                 # 32-byte Folded Reload
	xvfmadd.d	$xr15, $xr15, $xr3, $xr0
	xvld	$xr16, $sp, 240                 # 32-byte Folded Reload
	xvfmadd.d	$xr15, $xr16, $xr4, $xr15
	xvld	$xr16, $sp, 208                 # 32-byte Folded Reload
	xvfmadd.d	$xr15, $xr16, $xr5, $xr15
	xvld	$xr16, $sp, 176                 # 32-byte Folded Reload
	xvfmadd.d	$xr15, $xr16, $xr6, $xr15
	xvld	$xr16, $sp, 144                 # 32-byte Folded Reload
	xvfmadd.d	$xr15, $xr16, $xr8, $xr15
	xvld	$xr16, $sp, 112                 # 32-byte Folded Reload
	xvfmadd.d	$xr15, $xr16, $xr10, $xr15
	xvld	$xr16, $sp, 80                  # 32-byte Folded Reload
	xvfmadd.d	$xr15, $xr16, $xr7, $xr15
	xvld	$xr16, $sp, 48                  # 32-byte Folded Reload
	xvfmadd.d	$xr15, $xr16, $xr9, $xr15
	xvfadd.d	$xr15, $xr15, $xr13
	xvpickve2gr.d	$a5, $xr15, 0
	movgr2fr.d	$ft8, $a5
	vreplvei.d	$vr16, $vr16, 0
	vfrintrm.d	$vr16, $vr16
	vstelm.d	$vr14, $a0, 0, 0
	movfr2gr.d	$a5, $ft8
	xvpickve2gr.d	$a6, $xr15, 1
	movgr2fr.d	$ft6, $a6
	vreplvei.d	$vr14, $vr14, 0
	vfrintrm.d	$vr14, $vr14
	xvinsgr2vr.d	$xr16, $a5, 0
	movfr2gr.d	$a5, $ft6
	xvpickve2gr.d	$a6, $xr15, 2
	movgr2fr.d	$ft6, $a6
	vreplvei.d	$vr14, $vr14, 0
	vfrintrm.d	$vr14, $vr14
	xvinsgr2vr.d	$xr16, $a5, 1
	movfr2gr.d	$a5, $ft6
	xvpickve2gr.d	$a6, $xr15, 3
	movgr2fr.d	$ft6, $a6
	vreplvei.d	$vr14, $vr14, 0
	vfrintrm.d	$vr14, $vr14
	xvinsgr2vr.d	$xr16, $a5, 2
	movfr2gr.d	$a5, $ft6
	xvinsgr2vr.d	$xr16, $a5, 3
	xvftintrz.l.d	$xr14, $xr16
	xvpermi.d	$xr15, $xr14, 238
	xvpickev.w	$xr14, $xr15, $xr14
	vmax.w	$vr14, $vr14, $vr11
	vmin.w	$vr14, $vr14, $vr12
	vpickev.h	$vr14, $vr14, $vr14
	xvld	$xr15, $sp, 16                  # 32-byte Folded Reload
	xvfmadd.d	$xr15, $xr15, $xr3, $xr0
	xvfmadd.d	$xr15, $xr19, $xr4, $xr15
	xvfmadd.d	$xr15, $xr20, $xr5, $xr15
	xvfmadd.d	$xr15, $xr21, $xr6, $xr15
	xvfmadd.d	$xr15, $xr22, $xr8, $xr15
	xvfmadd.d	$xr15, $xr23, $xr10, $xr15
	xvfmadd.d	$xr15, $xr24, $xr7, $xr15
	xvfmadd.d	$xr15, $xr25, $xr9, $xr15
	xvfadd.d	$xr15, $xr15, $xr13
	xvpickve2gr.d	$a5, $xr15, 0
	movgr2fr.d	$ft8, $a5
	vreplvei.d	$vr16, $vr16, 0
	vfrintrm.d	$vr16, $vr16
	xvpickve2gr.d	$a5, $xr15, 1
	movgr2fr.d	$ft9, $a5
	vreplvei.d	$vr17, $vr17, 0
	vfrintrm.d	$vr17, $vr17
	xvpickve2gr.d	$a5, $xr15, 2
	movgr2fr.d	$ft10, $a5
	vreplvei.d	$vr18, $vr18, 0
	vfrintrm.d	$vr18, $vr18
	vstelm.d	$vr14, $a0, 16, 0
	movfr2gr.d	$a5, $ft8
	movfr2gr.d	$a6, $ft9
	movfr2gr.d	$a7, $ft10
	xvinsgr2vr.d	$xr14, $a5, 0
	xvinsgr2vr.d	$xr14, $a6, 1
	xvpickve2gr.d	$a5, $xr15, 3
	movgr2fr.d	$ft7, $a5
	vreplvei.d	$vr15, $vr15, 0
	vfrintrm.d	$vr15, $vr15
	xvinsgr2vr.d	$xr14, $a7, 2
	movfr2gr.d	$a5, $ft7
	xvinsgr2vr.d	$xr14, $a5, 3
	xvftintrz.l.d	$xr14, $xr14
	xvpermi.d	$xr15, $xr14, 238
	xvpickev.w	$xr14, $xr15, $xr14
	xvfmadd.d	$xr3, $xr26, $xr3, $xr0
	xvfmadd.d	$xr3, $xr27, $xr4, $xr3
	xvfmadd.d	$xr3, $xr28, $xr5, $xr3
	xvfmadd.d	$xr3, $xr29, $xr6, $xr3
	xvfmadd.d	$xr3, $xr30, $xr8, $xr3
	xvfmadd.d	$xr3, $xr31, $xr10, $xr3
	vmax.w	$vr4, $vr14, $vr11
	vmin.w	$vr4, $vr4, $vr12
	vpickev.h	$vr4, $vr4, $vr4
	xvfmadd.d	$xr3, $xr1, $xr7, $xr3
	xvfmadd.d	$xr3, $xr2, $xr9, $xr3
	xvfadd.d	$xr3, $xr3, $xr13
	xvpickve2gr.d	$a5, $xr3, 0
	movgr2fr.d	$fa5, $a5
	vreplvei.d	$vr5, $vr5, 0
	vfrintrm.d	$vr5, $vr5
	xvpickve2gr.d	$a5, $xr3, 1
	movgr2fr.d	$fa6, $a5
	vreplvei.d	$vr6, $vr6, 0
	vfrintrm.d	$vr6, $vr6
	xvpickve2gr.d	$a5, $xr3, 2
	movgr2fr.d	$fa7, $a5
	vreplvei.d	$vr7, $vr7, 0
	vfrintrm.d	$vr7, $vr7
	vstelm.d	$vr4, $a0, 32, 0
	movfr2gr.d	$a5, $fa5
	movfr2gr.d	$a6, $fa6
	movfr2gr.d	$a7, $fa7
	xvinsgr2vr.d	$xr4, $a5, 0
	xvinsgr2vr.d	$xr4, $a6, 1
	xvpickve2gr.d	$a5, $xr3, 3
	movgr2fr.d	$fa3, $a5
	vreplvei.d	$vr3, $vr3, 0
	vfrintrm.d	$vr3, $vr3
	xvinsgr2vr.d	$xr4, $a7, 2
	movfr2gr.d	$a5, $fa3
	xvinsgr2vr.d	$xr4, $a5, 3
	xvftintrz.l.d	$xr3, $xr4
	xvpermi.d	$xr4, $xr3, 238
	xvpickev.w	$xr3, $xr4, $xr3
	vmax.w	$vr3, $vr3, $vr11
	vmin.w	$vr3, $vr3, $vr12
	vpickev.h	$vr3, $vr3, $vr3
	vstelm.d	$vr3, $a0, 48, 0
	addi.d	$a1, $a1, 32
	addi.d	$a0, $a0, 8
	bne	$a1, $a4, .LBB1_3
# %bb.4:                                # %middle.block
	addi.d	$sp, $sp, 128
	fld.d	$fs7, $sp, 1968                 # 8-byte Folded Reload
	fld.d	$fs6, $sp, 1976                 # 8-byte Folded Reload
	fld.d	$fs5, $sp, 1984                 # 8-byte Folded Reload
	fld.d	$fs4, $sp, 1992                 # 8-byte Folded Reload
	fld.d	$fs3, $sp, 2000                 # 8-byte Folded Reload
	fld.d	$fs2, $sp, 2008                 # 8-byte Folded Reload
	fld.d	$fs1, $sp, 2016                 # 8-byte Folded Reload
	fld.d	$fs0, $sp, 2024                 # 8-byte Folded Reload
	addi.d	$sp, $sp, 2032
	ret
.Lfunc_end1:
	.size	Reference_IDCT, .Lfunc_end1-Reference_IDCT
                                        # -- End function
	.type	c,@object                       # @c
	.local	c
	.comm	c,512,32
	.section	".note.GNU-stack","",@progbits
	.addrsig
