	.file	"ratectl.c"
	.text
	.globl	update_rc                       # -- Begin function update_rc
	.p2align	5
	.type	update_rc,@function
update_rc:                              # @update_rc
# %bb.0:
	pcalau12i	$a2, %pc_hi20(diffy)
	addi.d	$a2, $a2, %pc_lo12(diffy)
	move	$a3, $zero
	move	$a6, $zero
	ori	$a4, $zero, 1024
	.p2align	4, , 16
.LBB0_1:                                # %.preheader.i
                                        # =>This Inner Loop Header: Depth=1
	ldx.w	$a7, $a2, $a3
	add.d	$a5, $a2, $a3
	srai.d	$t0, $a7, 31
	ld.w	$t1, $a5, 4
	xor	$a7, $a7, $t0
	sub.d	$a7, $a7, $t0
	add.d	$a6, $a7, $a6
	srai.d	$a7, $t1, 31
	ld.w	$t0, $a5, 8
	xor	$t1, $t1, $a7
	sub.d	$a7, $t1, $a7
	add.d	$a6, $a6, $a7
	srai.d	$a7, $t0, 31
	ld.w	$t1, $a5, 12
	xor	$t0, $t0, $a7
	sub.d	$a7, $t0, $a7
	add.d	$a6, $a6, $a7
	srai.d	$a7, $t1, 31
	ld.w	$t0, $a5, 16
	xor	$t1, $t1, $a7
	sub.d	$a7, $t1, $a7
	add.d	$a6, $a6, $a7
	srai.d	$a7, $t0, 31
	ld.w	$t1, $a5, 20
	xor	$t0, $t0, $a7
	sub.d	$a7, $t0, $a7
	add.d	$a6, $a6, $a7
	srai.d	$a7, $t1, 31
	ld.w	$t0, $a5, 24
	xor	$t1, $t1, $a7
	sub.d	$a7, $t1, $a7
	add.d	$a6, $a6, $a7
	srai.d	$a7, $t0, 31
	ld.w	$t1, $a5, 28
	xor	$t0, $t0, $a7
	sub.d	$a7, $t0, $a7
	add.d	$a6, $a6, $a7
	srai.d	$a7, $t1, 31
	ld.w	$t0, $a5, 32
	xor	$t1, $t1, $a7
	sub.d	$a7, $t1, $a7
	add.d	$a6, $a6, $a7
	srai.d	$a7, $t0, 31
	ld.w	$t1, $a5, 36
	xor	$t0, $t0, $a7
	sub.d	$a7, $t0, $a7
	add.d	$a6, $a6, $a7
	srai.d	$a7, $t1, 31
	ld.w	$t0, $a5, 40
	xor	$t1, $t1, $a7
	sub.d	$a7, $t1, $a7
	add.d	$a6, $a6, $a7
	srai.d	$a7, $t0, 31
	ld.w	$t1, $a5, 44
	xor	$t0, $t0, $a7
	sub.d	$a7, $t0, $a7
	add.d	$a6, $a6, $a7
	srai.d	$a7, $t1, 31
	ld.w	$t0, $a5, 48
	xor	$t1, $t1, $a7
	sub.d	$a7, $t1, $a7
	add.d	$a6, $a6, $a7
	srai.d	$a7, $t0, 31
	ld.w	$t1, $a5, 52
	xor	$t0, $t0, $a7
	sub.d	$a7, $t0, $a7
	add.d	$a6, $a6, $a7
	srai.d	$a7, $t1, 31
	ld.w	$t0, $a5, 56
	xor	$t1, $t1, $a7
	sub.d	$a7, $t1, $a7
	add.d	$a6, $a6, $a7
	srai.d	$a7, $t0, 31
	ld.w	$a5, $a5, 60
	xor	$t0, $t0, $a7
	sub.d	$a7, $t0, $a7
	add.d	$a6, $a6, $a7
	srai.d	$a7, $a5, 31
	xor	$a5, $a5, $a7
	sub.d	$a5, $a5, $a7
	addi.d	$a3, $a3, 64
	add.d	$a6, $a6, $a5
	bne	$a3, $a4, .LBB0_1
# %bb.2:                                # %calc_MAD.exit
	pcalau12i	$a2, %pc_hi20(generic_RC)
	ld.d	$a4, $a2, %pc_lo12(generic_RC)
	ld.d	$a5, $a4, 64
	pcalau12i	$a2, %got_pc_hi20(img)
	ld.d	$a2, $a2, %got_pc_lo12(img)
	ld.d	$a2, $a2, 0
	ld.w	$a3, $a2, 12
	slli.d	$a3, $a3, 2
	stx.w	$a6, $a5, $a3
	pcalau12i	$a3, %got_pc_hi20(input)
	ld.d	$a3, $a3, %got_pc_lo12(input)
	ld.d	$a3, $a3, 0
	ldptr.w	$a6, $a3, 5128
	ldptr.w	$a7, $a2, 15352
	bgeu	$a6, $a7, .LBB0_8
# %bb.3:
	ld.w	$a6, $a2, 12
	slli.d	$a6, $a6, 2
	ldx.w	$a5, $a5, $a6
	ld.d	$a6, $a4, 56
	add.d	$a5, $a6, $a5
	ori	$a6, $zero, 14
	st.d	$a5, $a4, 56
	beq	$a1, $a6, .LBB0_5
# %bb.4:
	ld.w	$a4, $a0, 364
	sltu	$a4, $zero, $a4
	addi.d	$a1, $a1, -10
	sltui	$a1, $a1, 1
	or	$a4, $a1, $a4
	ori	$a1, $zero, 1
	bnez	$a4, .LBB0_6
.LBB0_5:
	ld.w	$a4, $a0, 496
	move	$a1, $zero
	st.w	$zero, $a0, 4
	st.w	$a4, $a0, 8
	st.w	$a4, $a2, 36
.LBB0_6:
	ldptr.w	$a3, $a3, 4708
	st.w	$a1, $a0, 504
	beqz	$a3, .LBB0_8
# %bb.7:
	ld.w	$a3, $a0, 4
	pcalau12i	$a4, %pc_hi20(rdopt)
	ld.d	$a4, $a4, %pc_lo12(rdopt)
	ld.w	$a5, $a0, 8
	ld.w	$a6, $a0, 424
	st.w	$a3, $a4, 1740
	st.w	$a5, $a4, 1728
	st.w	$a1, $a4, 1744
	pcalau12i	$a1, %pc_hi20(delta_qp_mbaff)
	addi.d	$a1, $a1, %pc_lo12(delta_qp_mbaff)
	ldptr.w	$a4, $a2, 15412
	alsl.d	$a1, $a6, $a1, 3
	slli.d	$a4, $a4, 2
	stx.w	$a3, $a1, $a4
	ld.w	$a1, $a0, 8
	ld.w	$a3, $a0, 424
	pcalau12i	$a4, %pc_hi20(qp_mbaff)
	addi.d	$a4, $a4, %pc_lo12(qp_mbaff)
	ldptr.w	$a2, $a2, 15412
	alsl.d	$a3, $a3, $a4, 3
	slli.d	$a2, $a2, 2
	stx.w	$a1, $a3, $a2
.LBB0_8:
	pcaddu18i	$t8, %call36(set_chroma_qp)
	jr	$t8
.Lfunc_end0:
	.size	update_rc, .Lfunc_end0-update_rc
                                        # -- End function
	.globl	calc_MAD                        # -- Begin function calc_MAD
	.p2align	5
	.type	calc_MAD,@function
calc_MAD:                               # @calc_MAD
# %bb.0:
	pcalau12i	$a0, %pc_hi20(diffy)
	addi.d	$a1, $a0, %pc_lo12(diffy)
	move	$a2, $zero
	move	$a0, $zero
	ori	$a3, $zero, 1024
	.p2align	4, , 16
.LBB1_1:                                # %.preheader
                                        # =>This Inner Loop Header: Depth=1
	ldx.w	$a5, $a1, $a2
	add.d	$a4, $a1, $a2
	srai.d	$a6, $a5, 31
	ld.w	$a7, $a4, 4
	xor	$a5, $a5, $a6
	sub.d	$a5, $a5, $a6
	add.d	$a0, $a5, $a0
	srai.d	$a5, $a7, 31
	ld.w	$a6, $a4, 8
	xor	$a7, $a7, $a5
	sub.d	$a5, $a7, $a5
	add.d	$a0, $a5, $a0
	srai.d	$a5, $a6, 31
	ld.w	$a7, $a4, 12
	xor	$a6, $a6, $a5
	sub.d	$a5, $a6, $a5
	add.d	$a0, $a5, $a0
	srai.d	$a5, $a7, 31
	ld.w	$a6, $a4, 16
	xor	$a7, $a7, $a5
	sub.d	$a5, $a7, $a5
	add.d	$a0, $a5, $a0
	srai.d	$a5, $a6, 31
	ld.w	$a7, $a4, 20
	xor	$a6, $a6, $a5
	sub.d	$a5, $a6, $a5
	add.d	$a0, $a5, $a0
	srai.d	$a5, $a7, 31
	ld.w	$a6, $a4, 24
	xor	$a7, $a7, $a5
	sub.d	$a5, $a7, $a5
	add.d	$a0, $a5, $a0
	srai.d	$a5, $a6, 31
	ld.w	$a7, $a4, 28
	xor	$a6, $a6, $a5
	sub.d	$a5, $a6, $a5
	add.d	$a0, $a5, $a0
	srai.d	$a5, $a7, 31
	ld.w	$a6, $a4, 32
	xor	$a7, $a7, $a5
	sub.d	$a5, $a7, $a5
	add.d	$a0, $a5, $a0
	srai.d	$a5, $a6, 31
	ld.w	$a7, $a4, 36
	xor	$a6, $a6, $a5
	sub.d	$a5, $a6, $a5
	add.d	$a0, $a5, $a0
	srai.d	$a5, $a7, 31
	ld.w	$a6, $a4, 40
	xor	$a7, $a7, $a5
	sub.d	$a5, $a7, $a5
	add.d	$a0, $a5, $a0
	srai.d	$a5, $a6, 31
	ld.w	$a7, $a4, 44
	xor	$a6, $a6, $a5
	sub.d	$a5, $a6, $a5
	add.d	$a0, $a5, $a0
	srai.d	$a5, $a7, 31
	ld.w	$a6, $a4, 48
	xor	$a7, $a7, $a5
	sub.d	$a5, $a7, $a5
	add.d	$a0, $a5, $a0
	srai.d	$a5, $a6, 31
	ld.w	$a7, $a4, 52
	xor	$a6, $a6, $a5
	sub.d	$a5, $a6, $a5
	add.d	$a0, $a5, $a0
	srai.d	$a5, $a7, 31
	ld.w	$a6, $a4, 56
	xor	$a7, $a7, $a5
	sub.d	$a5, $a7, $a5
	add.d	$a0, $a5, $a0
	srai.d	$a5, $a6, 31
	ld.w	$a4, $a4, 60
	xor	$a6, $a6, $a5
	sub.d	$a5, $a6, $a5
	add.d	$a0, $a5, $a0
	srai.d	$a5, $a4, 31
	xor	$a4, $a4, $a5
	sub.d	$a4, $a4, $a5
	addi.d	$a2, $a2, 64
	add.w	$a0, $a4, $a0
	bne	$a2, $a3, .LBB1_1
# %bb.2:
	ret
.Lfunc_end1:
	.size	calc_MAD, .Lfunc_end1-calc_MAD
                                        # -- End function
	.globl	QP2Qstep                        # -- Begin function QP2Qstep
	.p2align	5
	.type	QP2Qstep,@function
QP2Qstep:                               # @QP2Qstep
# %bb.0:
	lu12i.w	$a1, 174762
	ori	$a1, $a1, 2731
	mul.d	$a1, $a0, $a1
	srli.d	$a2, $a1, 63
	srli.d	$a1, $a1, 32
	add.d	$a1, $a1, $a2
	ori	$a2, $zero, 6
	mul.d	$a3, $a1, $a2
	sub.w	$a3, $a0, $a3
	slli.d	$a3, $a3, 3
	pcalau12i	$a4, %pc_hi20(QP2Qstep.QP2QSTEP)
	addi.d	$a4, $a4, %pc_lo12(QP2Qstep.QP2QSTEP)
	fldx.d	$fa0, $a4, $a3
	blt	$a0, $a2, .LBB2_2
	.p2align	4, , 16
.LBB2_1:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	addi.w	$a1, $a1, -1
	fadd.d	$fa0, $fa0, $fa0
	bnez	$a1, .LBB2_1
.LBB2_2:                                # %._crit_edge
	ret
.Lfunc_end2:
	.size	QP2Qstep, .Lfunc_end2-QP2Qstep
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function Qstep2QP
.LCPI3_0:
	.dword	0x406c000000000000              # double 224
	.text
	.globl	Qstep2QP
	.p2align	5
	.type	Qstep2QP,@function
Qstep2QP:                               # @Qstep2QP
# %bb.0:
	vldi	$vr1, -924
	fcmp.clt.d	$fcc0, $fa0, $fa1
	bceqz	$fcc0, .LBB3_2
# %bb.1:
	move	$a0, $zero
	ret
.LBB3_2:                                # %.lr.ph.i.preheader
	pcalau12i	$a0, %pc_hi20(.LCPI3_0)
	fld.d	$fa1, $a0, %pc_lo12(.LCPI3_0)
	fcmp.clt.d	$fcc0, $fa1, $fa0
	ori	$a0, $zero, 51
	bcnez	$fcc0, .LBB3_13
# %bb.3:                                # %.preheader
	vldi	$vr1, -910
	move	$a0, $zero
	fcmp.cule.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB3_6
# %bb.4:                                # %.lr.ph.preheader
	vldi	$vr1, -928
	vldi	$vr2, -910
	.p2align	4, , 16
.LBB3_5:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	fmul.d	$fa0, $fa0, $fa1
	fcmp.clt.d	$fcc0, $fa2, $fa0
	addi.d	$a0, $a0, 6
	bcnez	$fcc0, .LBB3_5
.LBB3_6:                                # %._crit_edge
	vldi	$vr1, -923
	fcmp.cle.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB3_11
# %bb.7:
	vldi	$vr1, -920
	fcmp.cle.d	$fcc0, $fa0, $fa1
	ori	$a1, $zero, 1
	bcnez	$fcc0, .LBB3_12
# %bb.8:
	vldi	$vr1, -917
	fcmp.cle.d	$fcc0, $fa0, $fa1
	ori	$a1, $zero, 2
	bcnez	$fcc0, .LBB3_12
# %bb.9:
	vldi	$vr1, -914
	fcmp.cle.d	$fcc0, $fa0, $fa1
	ori	$a1, $zero, 3
	bcnez	$fcc0, .LBB3_12
# %bb.10:
	vldi	$vr1, -911
	fcmp.cult.d	$fcc0, $fa1, $fa0
	movcf2gr	$a1, $fcc0
	addi.d	$a1, $a1, 4
	b	.LBB3_12
.LBB3_11:
	move	$a1, $zero
.LBB3_12:
	add.w	$a0, $a1, $a0
.LBB3_13:
	ret
.Lfunc_end3:
	.size	Qstep2QP, .Lfunc_end3-Qstep2QP
                                        # -- End function
	.globl	ComputeFrameMAD                 # -- Begin function ComputeFrameMAD
	.p2align	5
	.type	ComputeFrameMAD,@function
ComputeFrameMAD:                        # @ComputeFrameMAD
# %bb.0:
	pcalau12i	$a0, %got_pc_hi20(img)
	ld.d	$a0, $a0, %got_pc_lo12(img)
	ld.d	$a0, $a0, 0
	ldptr.w	$a2, $a0, 15352
	bstrpick.d	$a0, $a2, 31, 0
	beqz	$a2, .LBB4_3
# %bb.1:                                # %.lr.ph
	pcalau12i	$a1, %pc_hi20(generic_RC)
	ld.d	$a1, $a1, %pc_lo12(generic_RC)
	ld.d	$a1, $a1, 64
	ori	$a3, $zero, 1
	bne	$a2, $a3, .LBB4_4
# %bb.2:
	move	$a2, $zero
	move	$a3, $zero
	b	.LBB4_7
.LBB4_3:
	movgr2fr.d	$fa0, $zero
	b	.LBB4_10
.LBB4_4:                                # %vector.ph
	move	$a3, $zero
	move	$a4, $zero
	bstrpick.d	$a2, $a0, 31, 1
	slli.d	$a2, $a2, 1
	addi.d	$a5, $a1, 4
	move	$a6, $a2
	.p2align	4, , 16
.LBB4_5:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a7, $a5, -4
	ld.w	$t0, $a5, 0
	add.d	$a3, $a3, $a7
	add.d	$a4, $a4, $t0
	addi.d	$a6, $a6, -2
	addi.d	$a5, $a5, 8
	bnez	$a6, .LBB4_5
# %bb.6:                                # %middle.block
	add.d	$a3, $a4, $a3
	beq	$a2, $a0, .LBB4_9
.LBB4_7:                                # %scalar.ph.preheader
	alsl.d	$a1, $a2, $a1, 2
	sub.d	$a2, $a0, $a2
	.p2align	4, , 16
.LBB4_8:                                # %scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a4, $a1, 0
	add.d	$a3, $a3, $a4
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, 4
	bnez	$a2, .LBB4_8
.LBB4_9:                                # %._crit_edge.loopexit
	movgr2fr.d	$fa0, $a3
	ffint.d.l	$fa0, $fa0
.LBB4_10:                               # %._crit_edge
	movgr2fr.d	$fa1, $a0
	ffint.d.l	$fa1, $fa1
	lu52i.d	$a0, $zero, 1031
	movgr2fr.d	$fa2, $a0
	fmul.d	$fa1, $fa1, $fa2
	fdiv.d	$fa0, $fa0, $fa1
	ret
.Lfunc_end4:
	.size	ComputeFrameMAD, .Lfunc_end4-ComputeFrameMAD
                                        # -- End function
	.globl	copy_rc_generic                 # -- Begin function copy_rc_generic
	.p2align	5
	.type	copy_rc_generic,@function
copy_rc_generic:                        # @copy_rc_generic
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.d	$s0, $a0, 64
	move	$s1, $a1
	ori	$a2, $zero, 144
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	st.d	$s0, $fp, 64
	ld.d	$a1, $s1, 64
	pcalau12i	$a0, %got_pc_hi20(img)
	ld.d	$a0, $a0, %got_pc_lo12(img)
	ld.d	$a0, $a0, 0
	lu12i.w	$a2, 3
	ori	$a2, $a2, 3064
	ldx.wu	$a0, $a0, $a2
	slli.d	$a2, $a0, 2
	move	$a0, $s0
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(memcpy)
	jr	$t8
.Lfunc_end5:
	.size	copy_rc_generic, .Lfunc_end5-copy_rc_generic
                                        # -- End function
	.globl	generic_alloc                   # -- Begin function generic_alloc
	.p2align	5
	.type	generic_alloc,@function
generic_alloc:                          # @generic_alloc
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
	ori	$a0, $zero, 144
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	st.d	$a0, $fp, 0
	bnez	$a0, .LBB6_2
# %bb.1:
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$ra, %call36(no_mem_exit)
	jirl	$ra, $ra, 0
	ld.d	$s0, $fp, 0
.LBB6_2:
	pcalau12i	$a0, %got_pc_hi20(img)
	ld.d	$a0, $a0, %got_pc_lo12(img)
	ld.d	$a0, $a0, 0
	lu12i.w	$a1, 3
	ori	$a1, $a1, 3064
	ldx.wu	$a0, $a0, $a1
	ori	$a1, $zero, 4
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s0, 64
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 64
	bnez	$a1, .LBB6_4
# %bb.3:
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	pcaddu18i	$ra, %call36(no_mem_exit)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
.LBB6_4:
	ori	$a1, $zero, 1
	st.w	$a1, $a0, 8
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end6:
	.size	generic_alloc, .Lfunc_end6-generic_alloc
                                        # -- End function
	.globl	generic_free                    # -- Begin function generic_free
	.p2align	5
	.type	generic_free,@function
generic_free:                           # @generic_free
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.d	$a0, $a0, 0
	ld.d	$a1, $a0, 64
	beqz	$a1, .LBB7_2
# %bb.1:
	move	$a0, $a1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	st.d	$zero, $a0, 64
	ld.d	$a0, $fp, 0
	beqz	$a0, .LBB7_3
.LBB7_2:                                # %.thread
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	st.d	$zero, $fp, 0
.LBB7_3:
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end7:
	.size	generic_free, .Lfunc_end7-generic_free
                                        # -- End function
	.type	generic_RC,@object              # @generic_RC
	.comm	generic_RC,8,8
	.type	rdopt,@object                   # @rdopt
	.comm	rdopt,8,8
	.type	delta_qp_mbaff,@object          # @delta_qp_mbaff
	.comm	delta_qp_mbaff,16,4
	.type	qp_mbaff,@object                # @qp_mbaff
	.comm	qp_mbaff,16,4
	.type	QP2Qstep.QP2QSTEP,@object       # @QP2Qstep.QP2QSTEP
	.section	.rodata,"a",@progbits
	.p2align	3, 0x0
QP2Qstep.QP2QSTEP:
	.dword	0x3fe4000000000000              # double 0.625
	.dword	0x3fe6000000000000              # double 0.6875
	.dword	0x3fea000000000000              # double 0.8125
	.dword	0x3fec000000000000              # double 0.875
	.dword	0x3ff0000000000000              # double 1
	.dword	0x3ff2000000000000              # double 1.125
	.size	QP2Qstep.QP2QSTEP, 48

	.type	diffy,@object                   # @diffy
	.comm	diffy,1024,4
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"init_global_buffers: generic_alloc"
	.size	.L.str, 35

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"init_global_buffers: (*prc)->MADofMB"
	.size	.L.str.1, 37

	.type	color_formats,@object           # @color_formats
	.comm	color_formats,4,4
	.type	top_pic,@object                 # @top_pic
	.comm	top_pic,8,8
	.type	bottom_pic,@object              # @bottom_pic
	.comm	bottom_pic,8,8
	.type	frame_pic,@object               # @frame_pic
	.comm	frame_pic,8,8
	.type	frame_pic_1,@object             # @frame_pic_1
	.comm	frame_pic_1,8,8
	.type	frame_pic_2,@object             # @frame_pic_2
	.comm	frame_pic_2,8,8
	.type	frame_pic_3,@object             # @frame_pic_3
	.comm	frame_pic_3,8,8
	.type	frame_pic_si,@object            # @frame_pic_si
	.comm	frame_pic_si,8,8
	.type	Bit_Buffer,@object              # @Bit_Buffer
	.comm	Bit_Buffer,8,8
	.type	imgY_org,@object                # @imgY_org
	.comm	imgY_org,8,8
	.type	imgUV_org,@object               # @imgUV_org
	.comm	imgUV_org,8,8
	.type	imgY_sub_tmp,@object            # @imgY_sub_tmp
	.comm	imgY_sub_tmp,8,8
	.type	PicPos,@object                  # @PicPos
	.comm	PicPos,8,8
	.type	log2_max_frame_num_minus4,@object # @log2_max_frame_num_minus4
	.comm	log2_max_frame_num_minus4,4,4
	.type	log2_max_pic_order_cnt_lsb_minus4,@object # @log2_max_pic_order_cnt_lsb_minus4
	.comm	log2_max_pic_order_cnt_lsb_minus4,4,4
	.type	me_tot_time,@object             # @me_tot_time
	.comm	me_tot_time,8,8
	.type	me_time,@object                 # @me_time
	.comm	me_time,8,8
	.type	active_pps,@object              # @active_pps
	.comm	active_pps,8,8
	.type	active_sps,@object              # @active_sps
	.comm	active_sps,8,8
	.type	dsr_new_search_range,@object    # @dsr_new_search_range
	.comm	dsr_new_search_range,4,4
	.type	mb_adaptive,@object             # @mb_adaptive
	.comm	mb_adaptive,4,4
	.type	MBPairIsField,@object           # @MBPairIsField
	.comm	MBPairIsField,4,4
	.type	wp_weight,@object               # @wp_weight
	.comm	wp_weight,8,8
	.type	wp_offset,@object               # @wp_offset
	.comm	wp_offset,8,8
	.type	wbp_weight,@object              # @wbp_weight
	.comm	wbp_weight,8,8
	.type	luma_log_weight_denom,@object   # @luma_log_weight_denom
	.comm	luma_log_weight_denom,4,4
	.type	chroma_log_weight_denom,@object # @chroma_log_weight_denom
	.comm	chroma_log_weight_denom,4,4
	.type	wp_luma_round,@object           # @wp_luma_round
	.comm	wp_luma_round,4,4
	.type	wp_chroma_round,@object         # @wp_chroma_round
	.comm	wp_chroma_round,4,4
	.type	imgY_org_top,@object            # @imgY_org_top
	.comm	imgY_org_top,8,8
	.type	imgY_org_bot,@object            # @imgY_org_bot
	.comm	imgY_org_bot,8,8
	.type	imgUV_org_top,@object           # @imgUV_org_top
	.comm	imgUV_org_top,8,8
	.type	imgUV_org_bot,@object           # @imgUV_org_bot
	.comm	imgUV_org_bot,8,8
	.type	imgY_org_frm,@object            # @imgY_org_frm
	.comm	imgY_org_frm,8,8
	.type	imgUV_org_frm,@object           # @imgUV_org_frm
	.comm	imgUV_org_frm,8,8
	.type	imgY_com,@object                # @imgY_com
	.comm	imgY_com,8,8
	.type	imgUV_com,@object               # @imgUV_com
	.comm	imgUV_com,8,8
	.type	direct_ref_idx,@object          # @direct_ref_idx
	.comm	direct_ref_idx,8,8
	.type	direct_pdir,@object             # @direct_pdir
	.comm	direct_pdir,8,8
	.type	pixel_map,@object               # @pixel_map
	.comm	pixel_map,8,8
	.type	refresh_map,@object             # @refresh_map
	.comm	refresh_map,8,8
	.type	intras,@object                  # @intras
	.comm	intras,4,4
	.type	frame_ctr,@object               # @frame_ctr
	.comm	frame_ctr,20,4
	.type	frame_no,@object                # @frame_no
	.comm	frame_no,4,4
	.type	nextP_tr_fld,@object            # @nextP_tr_fld
	.comm	nextP_tr_fld,4,4
	.type	nextP_tr_frm,@object            # @nextP_tr_frm
	.comm	nextP_tr_frm,4,4
	.type	tot_time,@object                # @tot_time
	.comm	tot_time,8,8
	.type	errortext,@object               # @errortext
	.comm	errortext,300,1
	.type	b8_ipredmode8x8,@object         # @b8_ipredmode8x8
	.comm	b8_ipredmode8x8,16,1
	.type	b8_intra_pred_modes8x8,@object  # @b8_intra_pred_modes8x8
	.comm	b8_intra_pred_modes8x8,16,1
	.type	gop_structure,@object           # @gop_structure
	.comm	gop_structure,8,8
	.type	rddata_top_frame_mb,@object     # @rddata_top_frame_mb
	.comm	rddata_top_frame_mb,1752,8
	.type	rddata_bot_frame_mb,@object     # @rddata_bot_frame_mb
	.comm	rddata_bot_frame_mb,1752,8
	.type	rddata_top_field_mb,@object     # @rddata_top_field_mb
	.comm	rddata_top_field_mb,1752,8
	.type	rddata_bot_field_mb,@object     # @rddata_bot_field_mb
	.comm	rddata_bot_field_mb,1752,8
	.type	p_stat,@object                  # @p_stat
	.comm	p_stat,8,8
	.type	p_log,@object                   # @p_log
	.comm	p_log,8,8
	.type	p_trace,@object                 # @p_trace
	.comm	p_trace,8,8
	.type	p_in,@object                    # @p_in
	.comm	p_in,4,4
	.type	p_dec,@object                   # @p_dec
	.comm	p_dec,4,4
	.type	mb16x16_cost_frame,@object      # @mb16x16_cost_frame
	.comm	mb16x16_cost_frame,8,8
	.type	Bytes_After_Header,@object      # @Bytes_After_Header
	.comm	Bytes_After_Header,4,4
	.type	encode_one_macroblock,@object   # @encode_one_macroblock
	.comm	encode_one_macroblock,8,8
	.type	lrec,@object                    # @lrec
	.comm	lrec,8,8
	.type	lrec_uv,@object                 # @lrec_uv
	.comm	lrec_uv,8,8
	.type	si_frame_indicator,@object      # @si_frame_indicator
	.comm	si_frame_indicator,4,4
	.type	sp2_frame_indicator,@object     # @sp2_frame_indicator
	.comm	sp2_frame_indicator,4,4
	.type	number_sp2_frames,@object       # @number_sp2_frames
	.comm	number_sp2_frames,4,4
	.type	giRDOpt_B8OnlyFlag,@object      # @giRDOpt_B8OnlyFlag
	.comm	giRDOpt_B8OnlyFlag,4,4
	.type	imgY_tmp,@object                # @imgY_tmp
	.comm	imgY_tmp,8,8
	.type	imgUV_tmp,@object               # @imgUV_tmp
	.comm	imgUV_tmp,16,8
	.type	frameNuminGOP,@object           # @frameNuminGOP
	.comm	frameNuminGOP,4,4
	.type	redundant_coding,@object        # @redundant_coding
	.comm	redundant_coding,4,4
	.type	key_frame,@object               # @key_frame
	.comm	key_frame,4,4
	.type	redundant_ref_idx,@object       # @redundant_ref_idx
	.comm	redundant_ref_idx,4,4
	.type	img_pad_size_uv_x,@object       # @img_pad_size_uv_x
	.comm	img_pad_size_uv_x,4,4
	.type	img_pad_size_uv_y,@object       # @img_pad_size_uv_y
	.comm	img_pad_size_uv_y,4,4
	.type	chroma_mask_mv_y,@object        # @chroma_mask_mv_y
	.comm	chroma_mask_mv_y,1,1
	.type	chroma_mask_mv_x,@object        # @chroma_mask_mv_x
	.comm	chroma_mask_mv_x,1,1
	.type	chroma_shift_y,@object          # @chroma_shift_y
	.comm	chroma_shift_y,4,4
	.type	chroma_shift_x,@object          # @chroma_shift_x
	.comm	chroma_shift_x,4,4
	.type	shift_cr_x,@object              # @shift_cr_x
	.comm	shift_cr_x,4,4
	.type	shift_cr_y,@object              # @shift_cr_y
	.comm	shift_cr_y,4,4
	.type	img_padded_size_x,@object       # @img_padded_size_x
	.comm	img_padded_size_x,4,4
	.type	img_cr_padded_size_x,@object    # @img_cr_padded_size_x
	.comm	img_cr_padded_size_x,4,4
	.type	start_me_refinement_hp,@object  # @start_me_refinement_hp
	.comm	start_me_refinement_hp,4,4
	.type	start_me_refinement_qp,@object  # @start_me_refinement_qp
	.comm	start_me_refinement_qp,4,4
	.type	generic_RC_init,@object         # @generic_RC_init
	.comm	generic_RC_init,8,8
	.type	generic_RC_best,@object         # @generic_RC_best
	.comm	generic_RC_best,8,8
	.section	".note.GNU-stack","",@progbits
	.addrsig
