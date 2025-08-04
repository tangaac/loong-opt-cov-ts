	.file	"makesite.c"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function Vside
.LCPI0_0:
	.dword	0x3f847ae147ae147b              # double 0.01
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI0_1:
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	4                               # 0x4
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0
.LCPI0_2:
	.dword	1                               # 0x1
	.dword	2                               # 0x2
	.dword	3                               # 0x3
	.dword	4                               # 0x4
	.text
	.globl	Vside
	.p2align	5
	.type	Vside,@function
Vside:                                  # @Vside
# %bb.0:
	addi.d	$sp, $sp, -80
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
	st.d	$s1, $sp, 48                    # 8-byte Folded Spill
	st.d	$s2, $sp, 40                    # 8-byte Folded Spill
	st.d	$s3, $sp, 32                    # 8-byte Folded Spill
	st.d	$s4, $sp, 24                    # 8-byte Folded Spill
	st.d	$s5, $sp, 16                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 8                    # 8-byte Folded Spill
	pcalau12i	$a5, %got_pc_hi20(cellarray)
	ld.d	$a5, $a5, %got_pc_lo12(cellarray)
	ld.d	$a5, $a5, 0
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $a5, $a0
	move	$s1, $a3
	move	$fp, $a2
	move	$s0, $a1
	sub.w	$a1, $a3, $a2
	fld.d	$fa0, $a0, 120
	pcalau12i	$a2, %pc_hi20(.LCPI0_0)
	fld.d	$fa1, $a2, %pc_lo12(.LCPI0_0)
	fld.d	$fa2, $a0, 112
	srai.d	$a2, $a1, 31
	xor	$a1, $a1, $a2
	fadd.d	$fa1, $fa0, $fa1
	fcmp.clt.d	$fcc0, $fa2, $fa1
	sub.w	$s2, $a1, $a2
	bceqz	$fcc0, .LBB0_2
# %bb.1:
	vldi	$vr0, -912
	b	.LBB0_3
.LBB0_2:
	fld.d	$fa1, $a0, 96
	fdiv.d	$fa1, $fa0, $fa1
	fsqrt.d	$fa0, $fa1
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB0_38
.LBB0_3:
	bstrpick.d	$a0, $s2, 31, 0
	movgr2fr.d	$fa1, $a0
	ffint.d.l	$fs0, $fa1
	fmul.d	$fa1, $fa0, $fs0
	ftintrz.w.d	$fa1, $fa1
	movfr2gr.s	$a0, $fa1
	addi.d	$a1, $a0, 1
	movgr2fr.w	$fa1, $a1
	ffint.d.w	$fa1, $fa1
	fdiv.d	$fa1, $fa1, $fa0
	fsub.d	$fa1, $fa1, $fs0
	movgr2fr.w	$fa2, $a0
	ffint.d.w	$fa2, $fa2
	fdiv.d	$fa0, $fa2, $fa0
	fsub.d	$fa0, $fs0, $fa0
	pcalau12i	$a2, %got_pc_hi20(pinSpacing)
	ld.d	$a2, $a2, %got_pc_lo12(pinSpacing)
	fcmp.clt.d	$fcc0, $fa1, $fa0
	movcf2gr	$a3, $fcc0
	masknez	$a0, $a0, $a3
	ld.w	$a2, $a2, 0
	maskeqz	$a1, $a1, $a3
	or	$a0, $a1, $a0
	addi.w	$a0, $a0, 0
	div.w	$s3, $a0, $a2
	addi.w	$s2, $s3, -1
	beqz	$a4, .LBB0_12
# %bb.4:
	ori	$a0, $zero, 51
	bge	$a0, $s3, .LBB0_13
# %bb.5:                                # %.preheader107
	pcalau12i	$a0, %got_pc_hi20(kArray)
	ld.d	$s4, $a0, %got_pc_lo12(kArray)
	ld.d	$s5, $s4, 0
	addi.d	$a0, $s5, 24
	ori	$a2, $zero, 996
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $s2, 31, 0
	lu12i.w	$a1, 335544
	ori	$a1, $a1, 1311
	mul.d	$a0, $a0, $a1
	srli.d	$a1, $a0, 36
	st.w	$a1, $s5, 20
	st.w	$a1, $s5, 40
	st.w	$a1, $s5, 60
	st.w	$a1, $s5, 80
	st.w	$a1, $s5, 100
	st.w	$a1, $s5, 120
	st.w	$a1, $s5, 140
	st.w	$a1, $s5, 160
	st.w	$a1, $s5, 180
	st.w	$a1, $s5, 200
	st.w	$a1, $s5, 220
	st.w	$a1, $s5, 240
	st.w	$a1, $s5, 260
	st.w	$a1, $s5, 280
	st.w	$a1, $s5, 300
	st.w	$a1, $s5, 320
	st.w	$a1, $s5, 340
	st.w	$a1, $s5, 360
	st.w	$a1, $s5, 380
	st.w	$a1, $s5, 400
	st.w	$a1, $s5, 420
	st.w	$a1, $s5, 440
	st.w	$a1, $s5, 460
	st.w	$a1, $s5, 480
	st.w	$a1, $s5, 500
	st.w	$a1, $s5, 520
	st.w	$a1, $s5, 540
	st.w	$a1, $s5, 560
	st.w	$a1, $s5, 580
	st.w	$a1, $s5, 600
	st.w	$a1, $s5, 620
	st.w	$a1, $s5, 640
	st.w	$a1, $s5, 660
	st.w	$a1, $s5, 680
	st.w	$a1, $s5, 700
	st.w	$a1, $s5, 720
	st.w	$a1, $s5, 740
	st.w	$a1, $s5, 760
	st.w	$a1, $s5, 780
	st.w	$a1, $s5, 800
	st.w	$a1, $s5, 820
	st.w	$a1, $s5, 840
	st.w	$a1, $s5, 860
	st.w	$a1, $s5, 880
	st.w	$a1, $s5, 900
	ld.w	$a0, $s5, 1000
	st.w	$a1, $s5, 920
	st.w	$a1, $s5, 940
	st.w	$a1, $s5, 960
	add.d	$a0, $a0, $a1
	st.w	$a0, $s5, 1000
	ori	$a0, $zero, 50
	mul.d	$a0, $a1, $a0
	sub.w	$a0, $s2, $a0
	st.w	$a1, $s5, 980
	beqz	$a0, .LBB0_20
# %bb.6:                                # %.lr.ph120
	ld.d	$a0, $s4, 0
	addi.w	$a2, $zero, -50
	mul.d	$a1, $a1, $a2
	add.d	$a1, $a1, $s3
	bstrpick.d	$a1, $a1, 31, 0
	addi.d	$a2, $a1, -1
	ori	$a4, $zero, 8
	ori	$a3, $zero, 1
	bltu	$a2, $a4, .LBB0_10
# %bb.7:                                # %vector.ph162
	move	$a4, $a2
	bstrins.d	$a4, $zero, 2, 0
	ori	$a5, $zero, 1
	move	$a3, $a2
	bstrins.d	$a3, $a5, 2, 0
	addi.d	$a5, $a0, 80
	move	$a6, $a4
	.p2align	4, , 16
.LBB0_8:                                # %vector.body165
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a7, $a5, -60
	ld.w	$t0, $a5, -40
	ld.w	$t1, $a5, -20
	ld.w	$t2, $a5, 0
	ld.w	$t3, $a5, 20
	ld.w	$t4, $a5, 40
	ld.w	$t5, $a5, 60
	ld.w	$t6, $a5, 80
	xvinsgr2vr.w	$xr0, $a7, 0
	xvinsgr2vr.w	$xr0, $t0, 1
	xvinsgr2vr.w	$xr0, $t1, 2
	xvinsgr2vr.w	$xr0, $t2, 3
	xvinsgr2vr.w	$xr0, $t3, 4
	xvinsgr2vr.w	$xr0, $t4, 5
	xvinsgr2vr.w	$xr0, $t5, 6
	xvinsgr2vr.w	$xr0, $t6, 7
	xvaddi.wu	$xr0, $xr0, 1
	xvstelm.w	$xr0, $a5, -60, 0
	xvstelm.w	$xr0, $a5, -40, 1
	xvstelm.w	$xr0, $a5, -20, 2
	xvstelm.w	$xr0, $a5, 0, 3
	xvstelm.w	$xr0, $a5, 20, 4
	xvstelm.w	$xr0, $a5, 40, 5
	xvstelm.w	$xr0, $a5, 60, 6
	xvstelm.w	$xr0, $a5, 80, 7
	addi.d	$a6, $a6, -8
	addi.d	$a5, $a5, 160
	bnez	$a6, .LBB0_8
# %bb.9:                                # %middle.block169
	beq	$a2, $a4, .LBB0_20
.LBB0_10:                               # %scalar.ph160.preheader
	slli.d	$a2, $a3, 4
	alsl.d	$a2, $a3, $a2, 2
	add.d	$a0, $a0, $a2
	sub.d	$a1, $a1, $a3
	.p2align	4, , 16
.LBB0_11:                               # %scalar.ph160
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a2, $a0, 0
	addi.d	$a2, $a2, 1
	st.w	$a2, $a0, 0
	addi.d	$a1, $a1, -1
	addi.d	$a0, $a0, 20
	bnez	$a1, .LBB0_11
	b	.LBB0_20
.LBB0_12:                               # %.thread
	slti	$a0, $s3, 52
	ori	$a1, $zero, 50
	masknez	$a1, $a1, $a0
	maskeqz	$a0, $s2, $a0
	or	$s2, $a0, $a1
	b	.LBB0_37
.LBB0_13:                               # %.preheader110
	ori	$s4, $zero, 1
	bge	$s4, $s3, .LBB0_20
# %bb.14:                               # %.lr.ph115
	pcalau12i	$a0, %got_pc_hi20(kArray)
	ld.d	$a0, $a0, %got_pc_lo12(kArray)
	ld.d	$s5, $a0, 0
	addi.d	$a0, $s5, 20
	alsl.d	$a1, $s2, $s2, 2
	slli.d	$a2, $a1, 2
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2
	beq	$s3, $a0, .LBB0_18
# %bb.15:                               # %vector.ph
	addi.d	$a0, $s3, -1
	move	$a1, $a0
	bstrins.d	$a1, $zero, 0, 0
	ori	$s4, $a0, 1
	addi.d	$a2, $s5, 40
	ori	$a3, $zero, 1
	move	$a4, $a1
	.p2align	4, , 16
.LBB0_16:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	st.w	$a3, $a2, -20
	st.w	$a3, $a2, 0
	addi.d	$a4, $a4, -2
	addi.d	$a2, $a2, 40
	bnez	$a4, .LBB0_16
# %bb.17:                               # %middle.block
	beq	$a0, $a1, .LBB0_20
.LBB0_18:                               # %scalar.ph.preheader
	slli.d	$a0, $s4, 4
	alsl.d	$a0, $s4, $a0, 2
	add.d	$a0, $s5, $a0
	sub.d	$a1, $s3, $s4
	ori	$a2, $zero, 1
	.p2align	4, , 16
.LBB0_19:                               # %scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	st.w	$a2, $a0, 0
	addi.d	$a1, $a1, -1
	addi.d	$a0, $a0, 20
	bnez	$a1, .LBB0_19
.LBB0_20:                               # %.loopexit106
	slti	$a0, $s3, 52
	ori	$a1, $zero, 50
	masknez	$a1, $a1, $a0
	maskeqz	$a0, $s2, $a0
	or	$a0, $a0, $a1
	addi.d	$a1, $a0, 1
	addi.w	$a4, $a1, 0
	movgr2fr.w	$fa0, $a1
	ffint.d.w	$fa0, $fa0
	fdiv.d	$fa0, $fs0, $fa0
	ori	$a1, $zero, 1
	bge	$fp, $s1, .LBB0_28
# %bb.21:                               # %.preheader
	blt	$a0, $a1, .LBB0_37
# %bb.22:                               # %.lr.ph127
	pcalau12i	$a2, %got_pc_hi20(kArray)
	ld.d	$a2, $a2, %got_pc_lo12(kArray)
	ld.d	$a2, $a2, 0
	ori	$a5, $zero, 5
	bstrpick.d	$a3, $a4, 31, 0
	bltu	$a4, $a5, .LBB0_26
# %bb.23:                               # %vector.ph190
	addi.d	$a4, $a3, -1
	move	$a5, $a4
	bstrins.d	$a5, $zero, 1, 0
	ori	$a6, $zero, 1
	move	$a1, $a4
	bstrins.d	$a1, $a6, 1, 0
	xvreplve0.d	$xr1, $xr0
	vreplgr2vr.w	$vr2, $fp
	pcalau12i	$a7, %pc_hi20(.LCPI0_1)
	vld	$vr3, $a7, %pc_lo12(.LCPI0_1)
	pcalau12i	$a7, %pc_hi20(.LCPI0_2)
	xvld	$xr4, $a7, %pc_lo12(.LCPI0_2)
	addi.d	$a7, $a2, 48
	lu52i.d	$t0, $zero, 1022
	xvreplgr2vr.d	$xr5, $t0
	move	$t0, $a5
	.p2align	4, , 16
.LBB0_24:                               # %vector.body197
                                        # =>This Inner Loop Header: Depth=1
	st.w	$s0, $a7, -16
	st.w	$s0, $a7, 4
	st.w	$s0, $a7, 24
	st.w	$s0, $a7, 44
	xvpickve2gr.d	$t1, $xr4, 0
	vinsgr2vr.w	$vr6, $t1, 0
	xvpickve2gr.d	$t1, $xr4, 1
	vinsgr2vr.w	$vr6, $t1, 1
	xvpickve2gr.d	$t1, $xr4, 2
	vinsgr2vr.w	$vr6, $t1, 2
	xvpickve2gr.d	$t1, $xr4, 3
	vinsgr2vr.w	$vr6, $t1, 3
	vaddi.wu	$vr6, $vr6, 1
	vext2xv.du.wu	$xr6, $xr6
	xvffint.d.lu	$xr6, $xr6
	xvfmul.d	$xr6, $xr1, $xr6
	vext2xv.du.wu	$xr7, $xr3
	xvffint.d.lu	$xr7, $xr7
	xvfmul.d	$xr7, $xr1, $xr7
	xvftintrz.l.d	$xr8, $xr7
	xvpermi.d	$xr9, $xr8, 238
	xvpickev.w	$xr8, $xr9, $xr8
	vext2xv.d.w	$xr9, $xr8
	xvffint.d.l	$xr9, $xr9
	xvfsub.d	$xr9, $xr7, $xr9
	xvfcmp.cle.d	$xr9, $xr5, $xr9
	xvpickve2gr.d	$t1, $xr9, 0
	vinsgr2vr.w	$vr10, $t1, 0
	xvpickve2gr.d	$t1, $xr9, 1
	vinsgr2vr.w	$vr10, $t1, 1
	xvpickve2gr.d	$t1, $xr9, 2
	vinsgr2vr.w	$vr10, $t1, 2
	xvpickve2gr.d	$t1, $xr9, 3
	vinsgr2vr.w	$vr10, $t1, 3
	vsub.w	$vr8, $vr8, $vr10
	vadd.w	$vr9, $vr8, $vr2
	vstelm.w	$vr9, $a7, -12, 0
	vstelm.w	$vr9, $a7, 8, 1
	vstelm.w	$vr9, $a7, 28, 2
	vstelm.w	$vr9, $a7, 48, 3
	xvftintrz.l.d	$xr9, $xr6
	xvpermi.d	$xr10, $xr9, 238
	xvpickev.w	$xr9, $xr10, $xr9
	vext2xv.d.w	$xr10, $xr9
	xvffint.d.l	$xr10, $xr10
	xvfsub.d	$xr10, $xr6, $xr10
	xvfcmp.cle.d	$xr10, $xr5, $xr10
	xvpickve2gr.d	$t1, $xr10, 0
	vinsgr2vr.w	$vr11, $t1, 0
	xvpickve2gr.d	$t1, $xr10, 1
	vinsgr2vr.w	$vr11, $t1, 1
	xvpickve2gr.d	$t1, $xr10, 2
	vinsgr2vr.w	$vr11, $t1, 2
	xvpickve2gr.d	$t1, $xr10, 3
	vinsgr2vr.w	$vr11, $t1, 3
	vsub.w	$vr9, $vr9, $vr11
	vsub.w	$vr8, $vr9, $vr8
	vstelm.w	$vr8, $a7, -20, 0
	vstelm.w	$vr8, $a7, 0, 1
	vstelm.w	$vr8, $a7, 20, 2
	vstelm.w	$vr8, $a7, 40, 3
	st.w	$a6, $a7, -24
	st.w	$a6, $a7, -4
	st.w	$a6, $a7, 16
	st.w	$a6, $a7, 36
	xvaddi.du	$xr4, $xr4, 4
	vaddi.wu	$vr3, $vr3, 4
	addi.d	$t0, $t0, -4
	addi.d	$a7, $a7, 80
	bnez	$t0, .LBB0_24
# %bb.25:                               # %middle.block205
	beq	$a4, $a5, .LBB0_33
.LBB0_26:                               # %scalar.ph188.preheader
	sub.d	$a3, $a3, $a1
	slli.d	$a4, $a1, 4
	alsl.d	$a4, $a1, $a4, 2
	add.d	$a2, $a4, $a2
	addi.d	$a2, $a2, 8
	vldi	$vr1, -928
	ori	$a4, $zero, 1
	.p2align	4, , 16
.LBB0_27:                               # %scalar.ph188
                                        # =>This Inner Loop Header: Depth=1
	st.w	$s0, $a2, 4
	bstrpick.d	$a5, $a1, 31, 0
	addi.w	$a1, $a1, 1
	bstrpick.d	$a6, $a1, 31, 0
	movgr2fr.d	$fa2, $a6
	ffint.d.l	$fa3, $fa2
	movgr2fr.d	$fa2, $a5
	ffint.d.l	$fa2, $fa2
	fmul.d	$fa2, $fa0, $fa2
	ftintrz.w.d	$fa4, $fa2
	movfr2gr.s	$a5, $fa4
	movgr2fr.w	$fa4, $a5
	ffint.d.w	$fa4, $fa4
	fsub.d	$fa4, $fa2, $fa4
	fcmp.cle.d	$fcc0, $fa1, $fa4
	fmul.d	$fa3, $fa0, $fa3
	movcf2gr	$a6, $fcc0
	add.d	$a5, $a6, $a5
	add.d	$a6, $a5, $fp
	ftintrz.w.d	$fa4, $fa3
	movfr2gr.s	$a7, $fa4
	movgr2fr.w	$fa4, $a7
	ffint.d.w	$fa4, $fa4
	fsub.d	$fa4, $fa3, $fa4
	fcmp.cle.d	$fcc0, $fa1, $fa4
	st.w	$a6, $a2, 8
	movcf2gr	$a6, $fcc0
	add.d	$a6, $a6, $a7
	sub.d	$a5, $a6, $a5
	st.w	$a5, $a2, 0
	st.w	$a4, $a2, -4
	addi.d	$a3, $a3, -1
	addi.d	$a2, $a2, 20
	bnez	$a3, .LBB0_27
	b	.LBB0_36
.LBB0_28:                               # %.preheader103
	blt	$a0, $a1, .LBB0_37
# %bb.29:                               # %.lr.ph123
	pcalau12i	$a2, %got_pc_hi20(kArray)
	ld.d	$a2, $a2, %got_pc_lo12(kArray)
	ld.d	$a2, $a2, 0
	ori	$a5, $zero, 5
	bstrpick.d	$a3, $a4, 31, 0
	bltu	$a4, $a5, .LBB0_34
# %bb.30:                               # %vector.ph174
	addi.d	$a4, $a3, -1
	move	$a5, $a4
	bstrins.d	$a5, $zero, 1, 0
	ori	$a6, $zero, 1
	move	$a1, $a4
	bstrins.d	$a1, $a6, 1, 0
	xvreplve0.d	$xr1, $xr0
	vreplgr2vr.w	$vr2, $fp
	pcalau12i	$a7, %pc_hi20(.LCPI0_1)
	vld	$vr3, $a7, %pc_lo12(.LCPI0_1)
	pcalau12i	$a7, %pc_hi20(.LCPI0_2)
	xvld	$xr4, $a7, %pc_lo12(.LCPI0_2)
	addi.d	$a7, $a2, 48
	lu52i.d	$t0, $zero, 1022
	xvreplgr2vr.d	$xr5, $t0
	move	$t0, $a5
	.p2align	4, , 16
.LBB0_31:                               # %vector.body179
                                        # =>This Inner Loop Header: Depth=1
	st.w	$s0, $a7, -16
	st.w	$s0, $a7, 4
	st.w	$s0, $a7, 24
	st.w	$s0, $a7, 44
	xvpickve2gr.d	$t1, $xr4, 0
	vinsgr2vr.w	$vr6, $t1, 0
	xvpickve2gr.d	$t1, $xr4, 1
	vinsgr2vr.w	$vr6, $t1, 1
	xvpickve2gr.d	$t1, $xr4, 2
	vinsgr2vr.w	$vr6, $t1, 2
	xvpickve2gr.d	$t1, $xr4, 3
	vinsgr2vr.w	$vr6, $t1, 3
	vaddi.wu	$vr6, $vr6, 1
	vext2xv.du.wu	$xr6, $xr6
	xvffint.d.lu	$xr6, $xr6
	xvfmul.d	$xr6, $xr1, $xr6
	vext2xv.du.wu	$xr7, $xr3
	xvffint.d.lu	$xr7, $xr7
	xvfmul.d	$xr7, $xr1, $xr7
	xvftintrz.l.d	$xr8, $xr7
	xvpermi.d	$xr9, $xr8, 238
	xvpickev.w	$xr8, $xr9, $xr8
	vext2xv.d.w	$xr9, $xr8
	xvffint.d.l	$xr9, $xr9
	xvfsub.d	$xr9, $xr7, $xr9
	xvfcmp.cle.d	$xr9, $xr5, $xr9
	xvpickve2gr.d	$t1, $xr9, 0
	vinsgr2vr.w	$vr10, $t1, 0
	xvpickve2gr.d	$t1, $xr9, 1
	vinsgr2vr.w	$vr10, $t1, 1
	xvpickve2gr.d	$t1, $xr9, 2
	vinsgr2vr.w	$vr10, $t1, 2
	xvpickve2gr.d	$t1, $xr9, 3
	vinsgr2vr.w	$vr10, $t1, 3
	vsub.w	$vr8, $vr8, $vr10
	vsub.w	$vr9, $vr2, $vr8
	vstelm.w	$vr9, $a7, -12, 0
	vstelm.w	$vr9, $a7, 8, 1
	vstelm.w	$vr9, $a7, 28, 2
	vstelm.w	$vr9, $a7, 48, 3
	xvftintrz.l.d	$xr9, $xr6
	xvpermi.d	$xr10, $xr9, 238
	xvpickev.w	$xr9, $xr10, $xr9
	vext2xv.d.w	$xr10, $xr9
	xvffint.d.l	$xr10, $xr10
	xvfsub.d	$xr10, $xr6, $xr10
	xvfcmp.cle.d	$xr10, $xr5, $xr10
	xvpickve2gr.d	$t1, $xr10, 0
	vinsgr2vr.w	$vr11, $t1, 0
	xvpickve2gr.d	$t1, $xr10, 1
	vinsgr2vr.w	$vr11, $t1, 1
	xvpickve2gr.d	$t1, $xr10, 2
	vinsgr2vr.w	$vr11, $t1, 2
	xvpickve2gr.d	$t1, $xr10, 3
	vinsgr2vr.w	$vr11, $t1, 3
	vsub.w	$vr9, $vr9, $vr11
	vsub.w	$vr8, $vr9, $vr8
	vstelm.w	$vr8, $a7, -20, 0
	vstelm.w	$vr8, $a7, 0, 1
	vstelm.w	$vr8, $a7, 20, 2
	vstelm.w	$vr8, $a7, 40, 3
	st.w	$a6, $a7, -24
	st.w	$a6, $a7, -4
	st.w	$a6, $a7, 16
	st.w	$a6, $a7, 36
	xvaddi.du	$xr4, $xr4, 4
	vaddi.wu	$vr3, $vr3, 4
	addi.d	$t0, $t0, -4
	addi.d	$a7, $a7, 80
	bnez	$t0, .LBB0_31
# %bb.32:                               # %middle.block185
	bne	$a4, $a5, .LBB0_34
.LBB0_33:
	xvpickve2gr.d	$a1, $xr6, 3
	movgr2fr.d	$fa3, $a1
	xvpickve2gr.d	$a1, $xr7, 3
	movgr2fr.d	$fa2, $a1
	b	.LBB0_36
.LBB0_34:                               # %scalar.ph172.preheader
	sub.d	$a3, $a3, $a1
	slli.d	$a4, $a1, 4
	alsl.d	$a4, $a1, $a4, 2
	add.d	$a2, $a4, $a2
	addi.d	$a2, $a2, 8
	vldi	$vr1, -928
	ori	$a4, $zero, 1
	.p2align	4, , 16
.LBB0_35:                               # %scalar.ph172
                                        # =>This Inner Loop Header: Depth=1
	st.w	$s0, $a2, 4
	bstrpick.d	$a5, $a1, 31, 0
	addi.w	$a1, $a1, 1
	bstrpick.d	$a6, $a1, 31, 0
	movgr2fr.d	$fa2, $a6
	ffint.d.l	$fa3, $fa2
	movgr2fr.d	$fa2, $a5
	ffint.d.l	$fa2, $fa2
	fmul.d	$fa2, $fa0, $fa2
	ftintrz.w.d	$fa4, $fa2
	movfr2gr.s	$a5, $fa4
	movgr2fr.w	$fa4, $a5
	ffint.d.w	$fa4, $fa4
	fsub.d	$fa4, $fa2, $fa4
	fcmp.cle.d	$fcc0, $fa1, $fa4
	fmul.d	$fa3, $fa0, $fa3
	movcf2gr	$a6, $fcc0
	add.d	$a5, $a6, $a5
	sub.d	$a6, $fp, $a5
	ftintrz.w.d	$fa4, $fa3
	movfr2gr.s	$a7, $fa4
	movgr2fr.w	$fa4, $a7
	ffint.d.w	$fa4, $fa4
	fsub.d	$fa4, $fa3, $fa4
	fcmp.cle.d	$fcc0, $fa1, $fa4
	st.w	$a6, $a2, 8
	movcf2gr	$a6, $fcc0
	add.d	$a6, $a6, $a7
	sub.d	$a5, $a6, $a5
	st.w	$a5, $a2, 0
	st.w	$a4, $a2, -4
	addi.d	$a3, $a3, -1
	addi.d	$a2, $a2, 20
	bnez	$a3, .LBB0_35
.LBB0_36:                               # %..loopexit104_crit_edge
	pcalau12i	$a1, %pc_hi20(val1)
	fst.d	$fa3, $a1, %pc_lo12(val1)
	pcalau12i	$a1, %pc_hi20(val2)
	fst.d	$fa2, $a1, %pc_lo12(val2)
	move	$s2, $a0
.LBB0_37:                               # %.loopexit
	move	$a0, $s2
	fld.d	$fs0, $sp, 8                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.LBB0_38:                               # %call.sqrt
	fmov.d	$fa0, $fa1
	move	$s3, $a4
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	move	$a4, $s3
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	b	.LBB0_3
.Lfunc_end0:
	.size	Vside, .Lfunc_end0-Vside
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function Hside
.LCPI1_0:
	.dword	0x3f847ae147ae147b              # double 0.01
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI1_1:
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	4                               # 0x4
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0
.LCPI1_2:
	.dword	1                               # 0x1
	.dword	2                               # 0x2
	.dword	3                               # 0x3
	.dword	4                               # 0x4
	.text
	.globl	Hside
	.p2align	5
	.type	Hside,@function
Hside:                                  # @Hside
# %bb.0:
	addi.d	$sp, $sp, -80
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
	st.d	$s1, $sp, 48                    # 8-byte Folded Spill
	st.d	$s2, $sp, 40                    # 8-byte Folded Spill
	st.d	$s3, $sp, 32                    # 8-byte Folded Spill
	st.d	$s4, $sp, 24                    # 8-byte Folded Spill
	st.d	$s5, $sp, 16                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 8                    # 8-byte Folded Spill
	pcalau12i	$a5, %got_pc_hi20(cellarray)
	ld.d	$a5, $a5, %got_pc_lo12(cellarray)
	ld.d	$a5, $a5, 0
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $a5, $a0
	move	$fp, $a3
	move	$s1, $a2
	move	$s0, $a1
	sub.w	$a1, $a2, $a1
	fld.d	$fa1, $a0, 120
	pcalau12i	$a2, %pc_hi20(.LCPI1_0)
	fld.d	$fa2, $a2, %pc_lo12(.LCPI1_0)
	fld.d	$fa0, $a0, 112
	srai.d	$a2, $a1, 31
	xor	$a1, $a1, $a2
	fadd.d	$fa1, $fa1, $fa2
	fcmp.clt.d	$fcc0, $fa0, $fa1
	sub.w	$s2, $a1, $a2
	bceqz	$fcc0, .LBB1_2
# %bb.1:
	vldi	$vr0, -912
	b	.LBB1_3
.LBB1_2:
	fld.d	$fa1, $a0, 96
	fdiv.d	$fa1, $fa1, $fa0
	fsqrt.d	$fa0, $fa1
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB1_38
.LBB1_3:
	bstrpick.d	$a0, $s2, 31, 0
	movgr2fr.d	$fa1, $a0
	ffint.d.l	$fs0, $fa1
	fmul.d	$fa1, $fa0, $fs0
	ftintrz.w.d	$fa1, $fa1
	movfr2gr.s	$a0, $fa1
	addi.d	$a1, $a0, 1
	movgr2fr.w	$fa1, $a1
	ffint.d.w	$fa1, $fa1
	fdiv.d	$fa1, $fa1, $fa0
	fsub.d	$fa1, $fa1, $fs0
	movgr2fr.w	$fa2, $a0
	ffint.d.w	$fa2, $fa2
	fdiv.d	$fa0, $fa2, $fa0
	fsub.d	$fa0, $fs0, $fa0
	pcalau12i	$a2, %got_pc_hi20(pinSpacing)
	ld.d	$a2, $a2, %got_pc_lo12(pinSpacing)
	fcmp.clt.d	$fcc0, $fa1, $fa0
	movcf2gr	$a3, $fcc0
	masknez	$a0, $a0, $a3
	ld.w	$a2, $a2, 0
	maskeqz	$a1, $a1, $a3
	or	$a0, $a1, $a0
	addi.w	$a0, $a0, 0
	div.w	$s3, $a0, $a2
	addi.w	$s2, $s3, -1
	beqz	$a4, .LBB1_12
# %bb.4:
	ori	$a0, $zero, 51
	bge	$a0, $s3, .LBB1_13
# %bb.5:                                # %.preheader108
	pcalau12i	$a0, %got_pc_hi20(kArray)
	ld.d	$s4, $a0, %got_pc_lo12(kArray)
	ld.d	$s5, $s4, 0
	addi.d	$a0, $s5, 24
	ori	$a2, $zero, 996
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $s2, 31, 0
	lu12i.w	$a1, 335544
	ori	$a1, $a1, 1311
	mul.d	$a0, $a0, $a1
	srli.d	$a1, $a0, 36
	st.w	$a1, $s5, 20
	st.w	$a1, $s5, 40
	st.w	$a1, $s5, 60
	st.w	$a1, $s5, 80
	st.w	$a1, $s5, 100
	st.w	$a1, $s5, 120
	st.w	$a1, $s5, 140
	st.w	$a1, $s5, 160
	st.w	$a1, $s5, 180
	st.w	$a1, $s5, 200
	st.w	$a1, $s5, 220
	st.w	$a1, $s5, 240
	st.w	$a1, $s5, 260
	st.w	$a1, $s5, 280
	st.w	$a1, $s5, 300
	st.w	$a1, $s5, 320
	st.w	$a1, $s5, 340
	st.w	$a1, $s5, 360
	st.w	$a1, $s5, 380
	st.w	$a1, $s5, 400
	st.w	$a1, $s5, 420
	st.w	$a1, $s5, 440
	st.w	$a1, $s5, 460
	st.w	$a1, $s5, 480
	st.w	$a1, $s5, 500
	st.w	$a1, $s5, 520
	st.w	$a1, $s5, 540
	st.w	$a1, $s5, 560
	st.w	$a1, $s5, 580
	st.w	$a1, $s5, 600
	st.w	$a1, $s5, 620
	st.w	$a1, $s5, 640
	st.w	$a1, $s5, 660
	st.w	$a1, $s5, 680
	st.w	$a1, $s5, 700
	st.w	$a1, $s5, 720
	st.w	$a1, $s5, 740
	st.w	$a1, $s5, 760
	st.w	$a1, $s5, 780
	st.w	$a1, $s5, 800
	st.w	$a1, $s5, 820
	st.w	$a1, $s5, 840
	st.w	$a1, $s5, 860
	st.w	$a1, $s5, 880
	st.w	$a1, $s5, 900
	ld.w	$a0, $s5, 1000
	st.w	$a1, $s5, 920
	st.w	$a1, $s5, 940
	st.w	$a1, $s5, 960
	add.d	$a0, $a0, $a1
	st.w	$a0, $s5, 1000
	ori	$a0, $zero, 50
	mul.d	$a0, $a1, $a0
	sub.w	$a0, $s2, $a0
	st.w	$a1, $s5, 980
	beqz	$a0, .LBB1_20
# %bb.6:                                # %.lr.ph121
	ld.d	$a0, $s4, 0
	addi.w	$a2, $zero, -50
	mul.d	$a1, $a1, $a2
	add.d	$a1, $a1, $s3
	bstrpick.d	$a1, $a1, 31, 0
	addi.d	$a2, $a1, -1
	ori	$a4, $zero, 8
	ori	$a3, $zero, 1
	bltu	$a2, $a4, .LBB1_10
# %bb.7:                                # %vector.ph163
	move	$a4, $a2
	bstrins.d	$a4, $zero, 2, 0
	ori	$a5, $zero, 1
	move	$a3, $a2
	bstrins.d	$a3, $a5, 2, 0
	addi.d	$a5, $a0, 80
	move	$a6, $a4
	.p2align	4, , 16
.LBB1_8:                                # %vector.body166
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a7, $a5, -60
	ld.w	$t0, $a5, -40
	ld.w	$t1, $a5, -20
	ld.w	$t2, $a5, 0
	ld.w	$t3, $a5, 20
	ld.w	$t4, $a5, 40
	ld.w	$t5, $a5, 60
	ld.w	$t6, $a5, 80
	xvinsgr2vr.w	$xr0, $a7, 0
	xvinsgr2vr.w	$xr0, $t0, 1
	xvinsgr2vr.w	$xr0, $t1, 2
	xvinsgr2vr.w	$xr0, $t2, 3
	xvinsgr2vr.w	$xr0, $t3, 4
	xvinsgr2vr.w	$xr0, $t4, 5
	xvinsgr2vr.w	$xr0, $t5, 6
	xvinsgr2vr.w	$xr0, $t6, 7
	xvaddi.wu	$xr0, $xr0, 1
	xvstelm.w	$xr0, $a5, -60, 0
	xvstelm.w	$xr0, $a5, -40, 1
	xvstelm.w	$xr0, $a5, -20, 2
	xvstelm.w	$xr0, $a5, 0, 3
	xvstelm.w	$xr0, $a5, 20, 4
	xvstelm.w	$xr0, $a5, 40, 5
	xvstelm.w	$xr0, $a5, 60, 6
	xvstelm.w	$xr0, $a5, 80, 7
	addi.d	$a6, $a6, -8
	addi.d	$a5, $a5, 160
	bnez	$a6, .LBB1_8
# %bb.9:                                # %middle.block170
	beq	$a2, $a4, .LBB1_20
.LBB1_10:                               # %scalar.ph161.preheader
	slli.d	$a2, $a3, 4
	alsl.d	$a2, $a3, $a2, 2
	add.d	$a0, $a0, $a2
	sub.d	$a1, $a1, $a3
	.p2align	4, , 16
.LBB1_11:                               # %scalar.ph161
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a2, $a0, 0
	addi.d	$a2, $a2, 1
	st.w	$a2, $a0, 0
	addi.d	$a1, $a1, -1
	addi.d	$a0, $a0, 20
	bnez	$a1, .LBB1_11
	b	.LBB1_20
.LBB1_12:                               # %.thread
	slti	$a0, $s3, 52
	ori	$a1, $zero, 50
	masknez	$a1, $a1, $a0
	maskeqz	$a0, $s2, $a0
	or	$s2, $a0, $a1
	b	.LBB1_37
.LBB1_13:                               # %.preheader111
	ori	$s4, $zero, 1
	bge	$s4, $s3, .LBB1_20
# %bb.14:                               # %.lr.ph116
	pcalau12i	$a0, %got_pc_hi20(kArray)
	ld.d	$a0, $a0, %got_pc_lo12(kArray)
	ld.d	$s5, $a0, 0
	addi.d	$a0, $s5, 20
	alsl.d	$a1, $s2, $s2, 2
	slli.d	$a2, $a1, 2
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2
	beq	$s3, $a0, .LBB1_18
# %bb.15:                               # %vector.ph
	addi.d	$a0, $s3, -1
	move	$a1, $a0
	bstrins.d	$a1, $zero, 0, 0
	ori	$s4, $a0, 1
	addi.d	$a2, $s5, 40
	ori	$a3, $zero, 1
	move	$a4, $a1
	.p2align	4, , 16
.LBB1_16:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	st.w	$a3, $a2, -20
	st.w	$a3, $a2, 0
	addi.d	$a4, $a4, -2
	addi.d	$a2, $a2, 40
	bnez	$a4, .LBB1_16
# %bb.17:                               # %middle.block
	beq	$a0, $a1, .LBB1_20
.LBB1_18:                               # %scalar.ph.preheader
	slli.d	$a0, $s4, 4
	alsl.d	$a0, $s4, $a0, 2
	add.d	$a0, $s5, $a0
	sub.d	$a1, $s3, $s4
	ori	$a2, $zero, 1
	.p2align	4, , 16
.LBB1_19:                               # %scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	st.w	$a2, $a0, 0
	addi.d	$a1, $a1, -1
	addi.d	$a0, $a0, 20
	bnez	$a1, .LBB1_19
.LBB1_20:                               # %.loopexit107
	slti	$a0, $s3, 52
	ori	$a1, $zero, 50
	masknez	$a1, $a1, $a0
	maskeqz	$a0, $s2, $a0
	or	$a0, $a0, $a1
	addi.d	$a1, $a0, 1
	addi.w	$a4, $a1, 0
	movgr2fr.w	$fa0, $a1
	ffint.d.w	$fa0, $fa0
	fdiv.d	$fa0, $fs0, $fa0
	ori	$a1, $zero, 1
	bge	$s0, $s1, .LBB1_28
# %bb.21:                               # %.preheader
	blt	$a0, $a1, .LBB1_37
# %bb.22:                               # %.lr.ph128
	pcalau12i	$a2, %got_pc_hi20(kArray)
	ld.d	$a2, $a2, %got_pc_lo12(kArray)
	ld.d	$a2, $a2, 0
	ori	$a5, $zero, 5
	bstrpick.d	$a3, $a4, 31, 0
	bltu	$a4, $a5, .LBB1_26
# %bb.23:                               # %vector.ph191
	addi.d	$a4, $a3, -1
	move	$a5, $a4
	bstrins.d	$a5, $zero, 1, 0
	ori	$a6, $zero, 1
	move	$a1, $a4
	bstrins.d	$a1, $a6, 1, 0
	xvreplve0.d	$xr1, $xr0
	vreplgr2vr.w	$vr2, $s0
	pcalau12i	$a6, %pc_hi20(.LCPI1_1)
	vld	$vr3, $a6, %pc_lo12(.LCPI1_1)
	pcalau12i	$a6, %pc_hi20(.LCPI1_2)
	xvld	$xr4, $a6, %pc_lo12(.LCPI1_2)
	addi.d	$a6, $a2, 48
	lu52i.d	$a7, $zero, 1022
	xvreplgr2vr.d	$xr5, $a7
	move	$a7, $a5
	.p2align	4, , 16
.LBB1_24:                               # %vector.body198
                                        # =>This Inner Loop Header: Depth=1
	st.w	$fp, $a6, -12
	st.w	$fp, $a6, 8
	st.w	$fp, $a6, 28
	st.w	$fp, $a6, 48
	xvpickve2gr.d	$t0, $xr4, 0
	vinsgr2vr.w	$vr6, $t0, 0
	xvpickve2gr.d	$t0, $xr4, 1
	vinsgr2vr.w	$vr6, $t0, 1
	xvpickve2gr.d	$t0, $xr4, 2
	vinsgr2vr.w	$vr6, $t0, 2
	xvpickve2gr.d	$t0, $xr4, 3
	vinsgr2vr.w	$vr6, $t0, 3
	vaddi.wu	$vr6, $vr6, 1
	vext2xv.du.wu	$xr6, $xr6
	xvffint.d.lu	$xr6, $xr6
	xvfmul.d	$xr6, $xr1, $xr6
	vext2xv.du.wu	$xr7, $xr3
	xvffint.d.lu	$xr7, $xr7
	xvfmul.d	$xr7, $xr1, $xr7
	xvftintrz.l.d	$xr8, $xr7
	xvpermi.d	$xr9, $xr8, 238
	xvpickev.w	$xr8, $xr9, $xr8
	vext2xv.d.w	$xr9, $xr8
	xvffint.d.l	$xr9, $xr9
	xvfsub.d	$xr9, $xr7, $xr9
	xvfcmp.cle.d	$xr9, $xr5, $xr9
	xvpickve2gr.d	$t0, $xr9, 0
	vinsgr2vr.w	$vr10, $t0, 0
	xvpickve2gr.d	$t0, $xr9, 1
	vinsgr2vr.w	$vr10, $t0, 1
	xvpickve2gr.d	$t0, $xr9, 2
	vinsgr2vr.w	$vr10, $t0, 2
	xvpickve2gr.d	$t0, $xr9, 3
	vinsgr2vr.w	$vr10, $t0, 3
	vsub.w	$vr8, $vr8, $vr10
	vadd.w	$vr9, $vr8, $vr2
	vstelm.w	$vr9, $a6, -16, 0
	vstelm.w	$vr9, $a6, 4, 1
	vstelm.w	$vr9, $a6, 24, 2
	vstelm.w	$vr9, $a6, 44, 3
	xvftintrz.l.d	$xr9, $xr6
	xvpermi.d	$xr10, $xr9, 238
	xvpickev.w	$xr9, $xr10, $xr9
	vext2xv.d.w	$xr10, $xr9
	xvffint.d.l	$xr10, $xr10
	xvfsub.d	$xr10, $xr6, $xr10
	xvfcmp.cle.d	$xr10, $xr5, $xr10
	xvpickve2gr.d	$t0, $xr10, 0
	vinsgr2vr.w	$vr11, $t0, 0
	xvpickve2gr.d	$t0, $xr10, 1
	vinsgr2vr.w	$vr11, $t0, 1
	xvpickve2gr.d	$t0, $xr10, 2
	vinsgr2vr.w	$vr11, $t0, 2
	xvpickve2gr.d	$t0, $xr10, 3
	vinsgr2vr.w	$vr11, $t0, 3
	vsub.w	$vr9, $vr9, $vr11
	vsub.w	$vr8, $vr9, $vr8
	vstelm.w	$vr8, $a6, -20, 0
	vstelm.w	$vr8, $a6, 0, 1
	vstelm.w	$vr8, $a6, 20, 2
	vstelm.w	$vr8, $a6, 40, 3
	st.w	$zero, $a6, -24
	st.w	$zero, $a6, -4
	st.w	$zero, $a6, 16
	st.w	$zero, $a6, 36
	xvaddi.du	$xr4, $xr4, 4
	vaddi.wu	$vr3, $vr3, 4
	addi.d	$a7, $a7, -4
	addi.d	$a6, $a6, 80
	bnez	$a7, .LBB1_24
# %bb.25:                               # %middle.block206
	beq	$a4, $a5, .LBB1_33
.LBB1_26:                               # %scalar.ph189.preheader
	sub.d	$a3, $a3, $a1
	slli.d	$a4, $a1, 4
	alsl.d	$a4, $a1, $a4, 2
	add.d	$a2, $a4, $a2
	addi.d	$a2, $a2, 8
	vldi	$vr1, -928
	.p2align	4, , 16
.LBB1_27:                               # %scalar.ph189
                                        # =>This Inner Loop Header: Depth=1
	st.w	$fp, $a2, 8
	bstrpick.d	$a4, $a1, 31, 0
	addi.w	$a1, $a1, 1
	bstrpick.d	$a5, $a1, 31, 0
	movgr2fr.d	$fa2, $a5
	ffint.d.l	$fa3, $fa2
	movgr2fr.d	$fa2, $a4
	ffint.d.l	$fa2, $fa2
	fmul.d	$fa2, $fa0, $fa2
	ftintrz.w.d	$fa4, $fa2
	movfr2gr.s	$a4, $fa4
	movgr2fr.w	$fa4, $a4
	ffint.d.w	$fa4, $fa4
	fsub.d	$fa4, $fa2, $fa4
	fcmp.cle.d	$fcc0, $fa1, $fa4
	fmul.d	$fa3, $fa0, $fa3
	movcf2gr	$a5, $fcc0
	add.d	$a4, $a5, $a4
	add.d	$a5, $a4, $s0
	ftintrz.w.d	$fa4, $fa3
	movfr2gr.s	$a6, $fa4
	movgr2fr.w	$fa4, $a6
	ffint.d.w	$fa4, $fa4
	fsub.d	$fa4, $fa3, $fa4
	fcmp.cle.d	$fcc0, $fa1, $fa4
	st.w	$a5, $a2, 4
	movcf2gr	$a5, $fcc0
	add.d	$a5, $a5, $a6
	sub.d	$a4, $a5, $a4
	st.w	$a4, $a2, 0
	st.w	$zero, $a2, -4
	addi.d	$a3, $a3, -1
	addi.d	$a2, $a2, 20
	bnez	$a3, .LBB1_27
	b	.LBB1_36
.LBB1_28:                               # %.preheader104
	blt	$a0, $a1, .LBB1_37
# %bb.29:                               # %.lr.ph124
	pcalau12i	$a2, %got_pc_hi20(kArray)
	ld.d	$a2, $a2, %got_pc_lo12(kArray)
	ld.d	$a2, $a2, 0
	ori	$a5, $zero, 5
	bstrpick.d	$a3, $a4, 31, 0
	bltu	$a4, $a5, .LBB1_34
# %bb.30:                               # %vector.ph175
	addi.d	$a4, $a3, -1
	move	$a5, $a4
	bstrins.d	$a5, $zero, 1, 0
	ori	$a6, $zero, 1
	move	$a1, $a4
	bstrins.d	$a1, $a6, 1, 0
	xvreplve0.d	$xr1, $xr0
	vreplgr2vr.w	$vr2, $s0
	pcalau12i	$a6, %pc_hi20(.LCPI1_1)
	vld	$vr3, $a6, %pc_lo12(.LCPI1_1)
	pcalau12i	$a6, %pc_hi20(.LCPI1_2)
	xvld	$xr4, $a6, %pc_lo12(.LCPI1_2)
	addi.d	$a6, $a2, 48
	lu52i.d	$a7, $zero, 1022
	xvreplgr2vr.d	$xr5, $a7
	move	$a7, $a5
	.p2align	4, , 16
.LBB1_31:                               # %vector.body180
                                        # =>This Inner Loop Header: Depth=1
	st.w	$fp, $a6, -12
	st.w	$fp, $a6, 8
	st.w	$fp, $a6, 28
	st.w	$fp, $a6, 48
	xvpickve2gr.d	$t0, $xr4, 0
	vinsgr2vr.w	$vr6, $t0, 0
	xvpickve2gr.d	$t0, $xr4, 1
	vinsgr2vr.w	$vr6, $t0, 1
	xvpickve2gr.d	$t0, $xr4, 2
	vinsgr2vr.w	$vr6, $t0, 2
	xvpickve2gr.d	$t0, $xr4, 3
	vinsgr2vr.w	$vr6, $t0, 3
	vaddi.wu	$vr6, $vr6, 1
	vext2xv.du.wu	$xr6, $xr6
	xvffint.d.lu	$xr6, $xr6
	xvfmul.d	$xr6, $xr1, $xr6
	vext2xv.du.wu	$xr7, $xr3
	xvffint.d.lu	$xr7, $xr7
	xvfmul.d	$xr7, $xr1, $xr7
	xvftintrz.l.d	$xr8, $xr7
	xvpermi.d	$xr9, $xr8, 238
	xvpickev.w	$xr8, $xr9, $xr8
	vext2xv.d.w	$xr9, $xr8
	xvffint.d.l	$xr9, $xr9
	xvfsub.d	$xr9, $xr7, $xr9
	xvfcmp.cle.d	$xr9, $xr5, $xr9
	xvpickve2gr.d	$t0, $xr9, 0
	vinsgr2vr.w	$vr10, $t0, 0
	xvpickve2gr.d	$t0, $xr9, 1
	vinsgr2vr.w	$vr10, $t0, 1
	xvpickve2gr.d	$t0, $xr9, 2
	vinsgr2vr.w	$vr10, $t0, 2
	xvpickve2gr.d	$t0, $xr9, 3
	vinsgr2vr.w	$vr10, $t0, 3
	vsub.w	$vr8, $vr8, $vr10
	vsub.w	$vr9, $vr2, $vr8
	vstelm.w	$vr9, $a6, -16, 0
	vstelm.w	$vr9, $a6, 4, 1
	vstelm.w	$vr9, $a6, 24, 2
	vstelm.w	$vr9, $a6, 44, 3
	xvftintrz.l.d	$xr9, $xr6
	xvpermi.d	$xr10, $xr9, 238
	xvpickev.w	$xr9, $xr10, $xr9
	vext2xv.d.w	$xr10, $xr9
	xvffint.d.l	$xr10, $xr10
	xvfsub.d	$xr10, $xr6, $xr10
	xvfcmp.cle.d	$xr10, $xr5, $xr10
	xvpickve2gr.d	$t0, $xr10, 0
	vinsgr2vr.w	$vr11, $t0, 0
	xvpickve2gr.d	$t0, $xr10, 1
	vinsgr2vr.w	$vr11, $t0, 1
	xvpickve2gr.d	$t0, $xr10, 2
	vinsgr2vr.w	$vr11, $t0, 2
	xvpickve2gr.d	$t0, $xr10, 3
	vinsgr2vr.w	$vr11, $t0, 3
	vsub.w	$vr9, $vr9, $vr11
	vsub.w	$vr8, $vr9, $vr8
	vstelm.w	$vr8, $a6, -20, 0
	vstelm.w	$vr8, $a6, 0, 1
	vstelm.w	$vr8, $a6, 20, 2
	vstelm.w	$vr8, $a6, 40, 3
	st.w	$zero, $a6, -24
	st.w	$zero, $a6, -4
	st.w	$zero, $a6, 16
	st.w	$zero, $a6, 36
	xvaddi.du	$xr4, $xr4, 4
	vaddi.wu	$vr3, $vr3, 4
	addi.d	$a7, $a7, -4
	addi.d	$a6, $a6, 80
	bnez	$a7, .LBB1_31
# %bb.32:                               # %middle.block186
	bne	$a4, $a5, .LBB1_34
.LBB1_33:
	xvpickve2gr.d	$a1, $xr6, 3
	movgr2fr.d	$fa3, $a1
	xvpickve2gr.d	$a1, $xr7, 3
	movgr2fr.d	$fa2, $a1
	b	.LBB1_36
.LBB1_34:                               # %scalar.ph173.preheader
	sub.d	$a3, $a3, $a1
	slli.d	$a4, $a1, 4
	alsl.d	$a4, $a1, $a4, 2
	add.d	$a2, $a4, $a2
	addi.d	$a2, $a2, 8
	vldi	$vr1, -928
	.p2align	4, , 16
.LBB1_35:                               # %scalar.ph173
                                        # =>This Inner Loop Header: Depth=1
	st.w	$fp, $a2, 8
	bstrpick.d	$a4, $a1, 31, 0
	addi.w	$a1, $a1, 1
	bstrpick.d	$a5, $a1, 31, 0
	movgr2fr.d	$fa2, $a5
	ffint.d.l	$fa3, $fa2
	movgr2fr.d	$fa2, $a4
	ffint.d.l	$fa2, $fa2
	fmul.d	$fa2, $fa0, $fa2
	ftintrz.w.d	$fa4, $fa2
	movfr2gr.s	$a4, $fa4
	movgr2fr.w	$fa4, $a4
	ffint.d.w	$fa4, $fa4
	fsub.d	$fa4, $fa2, $fa4
	fcmp.cle.d	$fcc0, $fa1, $fa4
	fmul.d	$fa3, $fa0, $fa3
	movcf2gr	$a5, $fcc0
	add.d	$a4, $a5, $a4
	sub.d	$a5, $s0, $a4
	ftintrz.w.d	$fa4, $fa3
	movfr2gr.s	$a6, $fa4
	movgr2fr.w	$fa4, $a6
	ffint.d.w	$fa4, $fa4
	fsub.d	$fa4, $fa3, $fa4
	fcmp.cle.d	$fcc0, $fa1, $fa4
	st.w	$a5, $a2, 4
	movcf2gr	$a5, $fcc0
	add.d	$a5, $a5, $a6
	sub.d	$a4, $a5, $a4
	st.w	$a4, $a2, 0
	st.w	$zero, $a2, -4
	addi.d	$a3, $a3, -1
	addi.d	$a2, $a2, 20
	bnez	$a3, .LBB1_35
.LBB1_36:                               # %..loopexit105_crit_edge
	pcalau12i	$a1, %pc_hi20(val1)
	fst.d	$fa3, $a1, %pc_lo12(val1)
	pcalau12i	$a1, %pc_hi20(val2)
	fst.d	$fa2, $a1, %pc_lo12(val2)
	move	$s2, $a0
.LBB1_37:                               # %.loopexit
	move	$a0, $s2
	fld.d	$fs0, $sp, 8                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.LBB1_38:                               # %call.sqrt
	fmov.d	$fa0, $fa1
	move	$s3, $a4
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	move	$a4, $s3
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	b	.LBB1_3
.Lfunc_end1:
	.size	Hside, .Lfunc_end1-Hside
                                        # -- End function
	.type	val1,@object                    # @val1
	.comm	val1,8,8
	.type	val2,@object                    # @val2
	.comm	val2,8,8
	.section	".note.GNU-stack","",@progbits
	.addrsig
