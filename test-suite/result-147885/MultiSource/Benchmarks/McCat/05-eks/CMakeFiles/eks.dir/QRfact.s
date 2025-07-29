	.file	"QRfact.c"
	.text
	.globl	Givens                          # -- Begin function Givens
	.p2align	5
	.type	Givens,@function
Givens:                                 # @Givens
# %bb.0:
	movgr2fr.d	$fa2, $zero
	fcmp.cune.d	$fcc0, $fa1, $fa2
	bcnez	$fcc0, .LBB0_2
# %bb.1:
	lu52i.d	$a2, $zero, 1023
	st.d	$a2, $a1, 0
	st.d	$zero, $a0, 0
	ret
.LBB0_2:
	fabs.d	$fa2, $fa1
	fabs.d	$fa3, $fa0
	fcmp.cule.d	$fcc0, $fa2, $fa3
	bcnez	$fcc0, .LBB0_4
# %bb.3:
	fneg.d	$fa0, $fa0
	fdiv.d	$fa0, $fa0, $fa1
	vldi	$vr1, -912
	fmadd.d	$fa1, $fa0, $fa0, $fa1
	frsqrt.d	$fa1, $fa1
	fst.d	$fa1, $a0, 0
	fmul.d	$fa0, $fa0, $fa1
	fst.d	$fa0, $a1, 0
	ret
.LBB0_4:
	fneg.d	$fa1, $fa1
	fdiv.d	$fa0, $fa1, $fa0
	vldi	$vr1, -912
	fmadd.d	$fa1, $fa0, $fa0, $fa1
	frsqrt.d	$fa1, $fa1
	fst.d	$fa1, $a1, 0
	fmul.d	$fa0, $fa0, $fa1
	fst.d	$fa0, $a0, 0
	ret
.Lfunc_end0:
	.size	Givens, .Lfunc_end0-Givens
                                        # -- End function
	.globl	sign                            # -- Begin function sign
	.p2align	5
	.type	sign,@function
sign:                                   # @sign
# %bb.0:
	movgr2fr.d	$fa1, $zero
	fcmp.clt.d	$fcc0, $fa0, $fa1
	movcf2gr	$a0, $fcc0
	sub.d	$a0, $zero, $a0
	ori	$a0, $a0, 1
	ret
.Lfunc_end1:
	.size	sign, .Lfunc_end1-sign
                                        # -- End function
	.globl	ApplyRGivens                    # -- Begin function ApplyRGivens
	.p2align	5
	.type	ApplyRGivens,@function
ApplyRGivens:                           # @ApplyRGivens
# %bb.0:
	move	$a3, $zero
	slli.d	$a1, $a1, 3
	slli.d	$a2, $a2, 3
	ori	$a4, $zero, 408
	.p2align	4, , 16
.LBB2_1:                                # =>This Inner Loop Header: Depth=1
	ldx.d	$a5, $a0, $a3
	fldx.d	$fa2, $a5, $a2
	fldx.d	$fa3, $a5, $a1
	fneg.d	$fa4, $fa2
	fmul.d	$fa4, $fa0, $fa4
	fmadd.d	$fa4, $fa1, $fa3, $fa4
	fstx.d	$fa4, $a5, $a1
	fmul.d	$fa2, $fa1, $fa2
	fmadd.d	$fa2, $fa0, $fa3, $fa2
	addi.d	$a3, $a3, 8
	fstx.d	$fa2, $a5, $a2
	bne	$a3, $a4, .LBB2_1
# %bb.2:
	ret
.Lfunc_end2:
	.size	ApplyRGivens, .Lfunc_end2-ApplyRGivens
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function QRiterate
.LCPI3_0:
	.dword	0x3ddb7cdfd9d7bdbb              # double 1.0E-10
	.text
	.globl	QRiterate
	.p2align	5
	.type	QRiterate,@function
QRiterate:                              # @QRiterate
# %bb.0:
	addi.d	$sp, $sp, -96
	st.d	$ra, $sp, 88                    # 8-byte Folded Spill
	st.d	$fp, $sp, 80                    # 8-byte Folded Spill
	st.d	$s0, $sp, 72                    # 8-byte Folded Spill
	st.d	$s1, $sp, 64                    # 8-byte Folded Spill
	st.d	$s2, $sp, 56                    # 8-byte Folded Spill
	st.d	$s3, $sp, 48                    # 8-byte Folded Spill
	st.d	$s4, $sp, 40                    # 8-byte Folded Spill
	st.d	$s5, $sp, 32                    # 8-byte Folded Spill
	st.d	$s6, $sp, 24                    # 8-byte Folded Spill
	st.d	$s7, $sp, 16                    # 8-byte Folded Spill
	st.d	$s8, $sp, 8                     # 8-byte Folded Spill
	move	$t8, $zero
	ld.d	$a2, $a0, 0
	addi.d	$a3, $a0, 392
	pcalau12i	$a4, %pc_hi20(.LCPI3_0)
	fld.d	$fa0, $a4, %pc_lo12(.LCPI3_0)
	ori	$fp, $zero, 50
	movgr2fr.d	$fa1, $zero
	ori	$a5, $zero, 1
	addi.w	$s0, $zero, -8
	vldi	$vr2, -928
	vldi	$vr3, -784
	vldi	$vr4, -912
	ori	$a7, $zero, 408
	move	$a4, $a2
.LBB3_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_5 Depth 2
                                        #     Child Loop BB3_10 Depth 2
                                        #     Child Loop BB3_16 Depth 2
                                        #       Child Loop BB3_26 Depth 3
                                        #       Child Loop BB3_29 Depth 3
                                        #       Child Loop BB3_31 Depth 3
                                        #       Child Loop BB3_33 Depth 3
	addi.d	$a6, $t8, 1
	slli.d	$t1, $a6, 3
	ldx.d	$t0, $a0, $t1
	slli.d	$t2, $t8, 3
	fldx.d	$fa5, $t0, $t2
	fldx.d	$fa6, $a4, $t2
	fldx.d	$fa7, $t0, $t1
	fabs.d	$fa5, $fa5
	fabs.d	$fa6, $fa6
	fabs.d	$fa7, $fa7
	fadd.d	$fa6, $fa6, $fa7
	fmul.d	$fa6, $fa6, $fa0
	fcmp.cule.d	$fcc0, $fa6, $fa5
	bcnez	$fcc0, .LBB3_3
# %bb.2:                                #   in Loop: Header=BB3_1 Depth=1
	alsl.d	$t2, $t8, $t0, 3
	stx.d	$zero, $a4, $t1
	st.d	$zero, $t2, 0
.LBB3_3:                                #   in Loop: Header=BB3_1 Depth=1
	move	$a4, $t0
	move	$t8, $a6
	bne	$a6, $fp, .LBB3_1
# %bb.4:                                # %.preheader151.preheader
                                        #   in Loop: Header=BB3_1 Depth=1
	move	$t5, $zero
	ori	$t7, $zero, 392
	ori	$t6, $zero, 51
	ori	$t1, $zero, 50
	ori	$t2, $zero, 50
	.p2align	4, , 16
.LBB3_5:                                # %.preheader151
                                        #   Parent Loop BB3_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.d	$a4, $a0, $t7
	add.d	$a4, $a4, $t7
	fld.d	$fa5, $a4, 8
	fcmp.cune.d	$fcc0, $fa5, $fa1
	bcnez	$fcc0, .LBB3_7
# %bb.6:                                #   in Loop: Header=BB3_5 Depth=2
	addi.d	$t7, $t7, -8
	addi.d	$t6, $t6, -1
	addi.w	$t2, $t2, -1
	addi.d	$t5, $t5, -8
	addi.d	$t1, $t1, -1
	bltu	$a5, $t6, .LBB3_5
	b	.LBB3_37
	.p2align	4, , 16
.LBB3_7:                                # %.critedge
                                        #   in Loop: Header=BB3_1 Depth=1
	beq	$t7, $s0, .LBB3_37
# %bb.8:                                # %.preheader150
                                        #   in Loop: Header=BB3_1 Depth=1
	addi.d	$t3, $t6, -1
	move	$t8, $zero
	move	$a4, $a2
	blez	$t3, .LBB3_1
# %bb.9:                                # %.lr.ph.preheader
                                        #   in Loop: Header=BB3_1 Depth=1
	move	$a4, $t6
	move	$t4, $t2
	.p2align	4, , 16
.LBB3_10:                               # %.lr.ph
                                        #   Parent Loop BB3_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.d	$a6, $a3, $t5
	add.d	$a6, $a6, $t5
	fld.d	$fa5, $a6, 400
	fcmp.ceq.d	$fcc0, $fa5, $fa1
	bcnez	$fcc0, .LBB3_13
# %bb.11:                               #   in Loop: Header=BB3_10 Depth=2
	addi.w	$t4, $t4, -1
	addi.d	$a4, $a4, -1
	addi.d	$t5, $t5, -8
	blt	$a5, $a4, .LBB3_10
# %bb.12:                               #   in Loop: Header=BB3_1 Depth=1
	move	$t4, $zero
.LBB3_13:                               # %.critedge2
                                        #   in Loop: Header=BB3_1 Depth=1
	move	$t8, $zero
	move	$a4, $a2
	bge	$t4, $t2, .LBB3_1
# %bb.14:                               # %.lr.ph168.preheader
                                        #   in Loop: Header=BB3_1 Depth=1
	st.d	$s0, $sp, 0                     # 8-byte Folded Spill
	move	$t5, $zero
	ldx.d	$a4, $a0, $t7
	alsl.d	$a6, $t4, $a0, 3
	add.d	$t0, $a0, $t7
	ld.d	$t0, $t0, 8
	fldx.d	$fa6, $a4, $t7
	slli.d	$a4, $t4, 3
	ld.d	$a6, $a6, 8
	fldx.d	$fa7, $t0, $t7
	add.d	$t0, $t0, $t7
	ldx.d	$t7, $a0, $a4
	addi.d	$t6, $t6, -2
	fld.d	$ft0, $t0, 8
	fldx.d	$fa5, $a6, $a4
	fldx.d	$ft1, $t7, $a4
	fmul.d	$fa7, $fa7, $fa7
	fsub.d	$fa6, $fa6, $ft0
	fmul.d	$fa6, $fa6, $fa2
	fcmp.clt.d	$fcc0, $fa6, $fa1
	fsel	$ft2, $fa4, $fa3, $fcc0
	fmadd.d	$ft3, $fa6, $fa6, $fa7
	fsqrt.d	$ft3, $ft3
	fmadd.d	$fa6, $ft2, $ft3, $fa6
	fdiv.d	$fa6, $fa7, $fa6
	fsub.d	$fa6, $ft0, $fa6
	fsub.d	$fa6, $ft1, $fa6
	addi.w	$t7, $t4, 2
	addi.d	$t8, $t4, -1
	move	$fp, $t7
	move	$s0, $t4
	b	.LBB3_16
	.p2align	4, , 16
.LBB3_15:                               #   in Loop: Header=BB3_16 Depth=2
	addi.d	$t8, $t8, 1
	addi.d	$t5, $t5, 1
	addi.w	$fp, $fp, 1
	move	$s0, $s3
	beq	$t3, $s3, .LBB3_36
.LBB3_16:                               # %.lr.ph168
                                        #   Parent Loop BB3_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB3_26 Depth 3
                                        #       Child Loop BB3_29 Depth 3
                                        #       Child Loop BB3_31 Depth 3
                                        #       Child Loop BB3_33 Depth 3
	fcmp.ceq.d	$fcc0, $fa5, $fa1
	bceqz	$fcc0, .LBB3_18
# %bb.17:                               #   in Loop: Header=BB3_16 Depth=2
	vldi	$vr7, -912
	fmov.d	$ft0, $fa1
	b	.LBB3_21
	.p2align	4, , 16
.LBB3_18:                               #   in Loop: Header=BB3_16 Depth=2
	fabs.d	$fa7, $fa5
	fabs.d	$ft0, $fa6
	fcmp.cule.d	$fcc0, $fa7, $ft0
	bcnez	$fcc0, .LBB3_20
# %bb.19:                               #   in Loop: Header=BB3_16 Depth=2
	fneg.d	$fa7, $fa6
	fdiv.d	$fa7, $fa7, $fa5
	fmadd.d	$ft0, $fa7, $fa7, $fa4
	frsqrt.d	$ft0, $ft0
	fmul.d	$fa7, $fa7, $ft0
	b	.LBB3_21
.LBB3_20:                               #   in Loop: Header=BB3_16 Depth=2
	fneg.d	$fa7, $fa5
	fdiv.d	$ft0, $fa7, $fa6
	fmadd.d	$fa7, $ft0, $ft0, $fa4
	frsqrt.d	$fa7, $fa7
	fmul.d	$ft0, $ft0, $fa7
	.p2align	4, , 16
.LBB3_21:                               # %Givens.exit
                                        #   in Loop: Header=BB3_16 Depth=2
	addi.w	$a4, $s0, -1
	slt	$a6, $t4, $a4
	masknez	$t0, $t4, $a6
	maskeqz	$a4, $a4, $a6
	or	$a4, $a4, $t0
	addi.d	$s1, $s0, 2
	addi.w	$a6, $s1, 0
	slt	$t0, $t2, $a6
	masknez	$a6, $a6, $t0
	maskeqz	$t0, $t2, $t0
	or	$s3, $t0, $a6
	slli.d	$s2, $s0, 3
	blt	$s3, $a4, .LBB3_32
# %bb.22:                               # %.lr.ph161
                                        #   in Loop: Header=BB3_16 Depth=2
	slt	$a4, $t4, $t8
	masknez	$a6, $t4, $a4
	maskeqz	$a4, $t8, $a4
	or	$s4, $a4, $a6
	add.w	$a4, $t7, $t5
	slt	$a6, $t3, $a4
	masknez	$a4, $a4, $a6
	maskeqz	$a6, $t3, $a6
	or	$a4, $a6, $a4
	slt	$a6, $a4, $s4
	masknez	$a4, $a4, $a6
	maskeqz	$a6, $s4, $a6
	or	$a4, $a6, $a4
	alsl.d	$a6, $s0, $a0, 3
	ldx.d	$s5, $a0, $s2
	ld.d	$s6, $a6, 8
	sub.d	$a6, $a4, $s4
	addi.d	$s7, $a6, 1
	move	$a6, $s4
	ori	$t0, $zero, 2
	bltu	$s7, $t0, .LBB3_28
# %bb.23:                               # %vector.memcheck
                                        #   in Loop: Header=BB3_16 Depth=2
	slli.d	$a6, $s4, 3
	slli.d	$a4, $a4, 3
	add.d	$s8, $s5, $a6
	add.d	$t0, $s6, $a4
	addi.d	$t0, $t0, 8
	add.d	$ra, $s6, $a6
	bgeu	$s8, $t0, .LBB3_25
# %bb.24:                               # %vector.memcheck
                                        #   in Loop: Header=BB3_16 Depth=2
	add.d	$a4, $s5, $a4
	addi.d	$a4, $a4, 8
	move	$a6, $s4
	bltu	$ra, $a4, .LBB3_28
.LBB3_25:                               # %vector.ph
                                        #   in Loop: Header=BB3_16 Depth=2
	slt	$a4, $t1, $fp
	masknez	$a6, $fp, $a4
	maskeqz	$a4, $t1, $a4
	or	$a4, $a4, $a6
	slt	$a6, $a4, $s4
	masknez	$a4, $a4, $a6
	maskeqz	$a6, $s4, $a6
	or	$a4, $a6, $a4
	sub.d	$a4, $a4, $s4
	addi.d	$a4, $a4, 1
	bstrins.d	$a4, $zero, 0, 0
	move	$t0, $s7
	bstrins.d	$t0, $zero, 0, 0
	add.d	$a6, $s4, $t0
	vreplvei.d	$vr9, $vr8, 0
	vreplvei.d	$vr10, $vr7, 0
	.p2align	4, , 16
.LBB3_26:                               # %vector.body
                                        #   Parent Loop BB3_1 Depth=1
                                        #     Parent Loop BB3_16 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	vld	$vr11, $ra, 0
	vld	$vr12, $s8, 0
	vbitrevi.d	$vr13, $vr11, 63
	vfmul.d	$vr13, $vr9, $vr13
	vfmadd.d	$vr13, $vr10, $vr12, $vr13
	vst	$vr13, $s8, 0
	vfmul.d	$vr11, $vr10, $vr11
	vfmadd.d	$vr11, $vr9, $vr12, $vr11
	vst	$vr11, $ra, 0
	addi.d	$a4, $a4, -2
	addi.d	$ra, $ra, 16
	addi.d	$s8, $s8, 16
	bnez	$a4, .LBB3_26
# %bb.27:                               # %middle.block
                                        #   in Loop: Header=BB3_16 Depth=2
	beq	$s7, $t0, .LBB3_30
	.p2align	4, , 16
.LBB3_28:                               # %scalar.ph.preheader
                                        #   in Loop: Header=BB3_16 Depth=2
	addi.d	$a4, $a6, -1
	alsl.d	$t0, $a6, $s5, 3
	alsl.d	$a6, $a6, $s6, 3
	.p2align	4, , 16
.LBB3_29:                               # %scalar.ph
                                        #   Parent Loop BB3_1 Depth=1
                                        #     Parent Loop BB3_16 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fld.d	$ft1, $a6, 0
	fld.d	$ft2, $t0, 0
	fneg.d	$ft3, $ft1
	fmul.d	$ft3, $ft0, $ft3
	fmadd.d	$ft3, $fa7, $ft2, $ft3
	fst.d	$ft3, $t0, 0
	fmul.d	$ft1, $fa7, $ft1
	fmadd.d	$ft1, $ft0, $ft2, $ft1
	fst.d	$ft1, $a6, 0
	addi.d	$a4, $a4, 1
	addi.d	$t0, $t0, 8
	addi.d	$a6, $a6, 8
	blt	$a4, $s3, .LBB3_29
.LBB3_30:                               # %.lr.ph164
                                        #   in Loop: Header=BB3_16 Depth=2
	addi.d	$a4, $s4, -1
	alsl.d	$a6, $s4, $a0, 3
	.p2align	4, , 16
.LBB3_31:                               #   Parent Loop BB3_1 Depth=1
                                        #     Parent Loop BB3_16 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$t0, $a6, 0
	alsl.d	$s4, $s0, $t0, 3
	fld.d	$ft1, $s4, 8
	fldx.d	$ft2, $t0, $s2
	fneg.d	$ft3, $ft1
	fmul.d	$ft3, $ft0, $ft3
	fmadd.d	$ft3, $fa7, $ft2, $ft3
	fstx.d	$ft3, $t0, $s2
	fmul.d	$ft1, $fa7, $ft1
	fmadd.d	$ft1, $ft0, $ft2, $ft1
	fst.d	$ft1, $s4, 8
	addi.d	$a4, $a4, 1
	addi.d	$a6, $a6, 8
	blt	$a4, $s3, .LBB3_31
.LBB3_32:                               # %._crit_edge
                                        #   in Loop: Header=BB3_16 Depth=2
	move	$a6, $zero
	addi.d	$s3, $s0, 1
	.p2align	4, , 16
.LBB3_33:                               #   Parent Loop BB3_1 Depth=1
                                        #     Parent Loop BB3_16 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ldx.d	$t0, $a1, $a6
	slli.d	$a4, $s3, 3
	fldx.d	$ft1, $t0, $a4
	fldx.d	$ft2, $t0, $s2
	fneg.d	$ft3, $ft1
	fmul.d	$ft3, $ft0, $ft3
	fmadd.d	$ft3, $fa7, $ft2, $ft3
	fstx.d	$ft3, $t0, $s2
	fmul.d	$ft1, $fa7, $ft1
	fmadd.d	$ft1, $ft0, $ft2, $ft1
	addi.d	$a6, $a6, 8
	fstx.d	$ft1, $t0, $a4
	bne	$a6, $a7, .LBB3_33
# %bb.34:                               # %ApplyRGivens.exit
                                        #   in Loop: Header=BB3_16 Depth=2
	bge	$s0, $t6, .LBB3_15
# %bb.35:                               #   in Loop: Header=BB3_16 Depth=2
	ldx.d	$a4, $a0, $a4
	slli.d	$a6, $s1, 3
	ldx.d	$a6, $a0, $a6
	fldx.d	$fa6, $a4, $s2
	fldx.d	$fa5, $a6, $s2
	b	.LBB3_15
.LBB3_36:                               #   in Loop: Header=BB3_1 Depth=1
	move	$t8, $zero
	move	$a4, $a2
	ori	$fp, $zero, 50
	ld.d	$s0, $sp, 0                     # 8-byte Folded Reload
	b	.LBB3_1
.LBB3_37:                               # %.critedge2.thread
	ld.d	$s8, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s7, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
	ret
.Lfunc_end3:
	.size	QRiterate, .Lfunc_end3-QRiterate
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
