	.file	"operators.ompif.c"
	.text
	.globl	DoBufferCopy                    # -- Begin function DoBufferCopy
	.p2align	5
	.type	DoBufferCopy,@function
DoBufferCopy:                           # @DoBufferCopy
# %bb.0:
	alsl.d	$a4, $a1, $a0, 3
	ld.d	$a4, $a4, 1432
	ori	$a5, $zero, 88
	mul.d	$a3, $a3, $a5
	add.d	$a6, $a4, $a3
	ld.w	$a3, $a6, 24
	ld.w	$t1, $a6, 12
	bltz	$a3, .LBB0_3
# %bb.1:
	ld.d	$a4, $a0, 1776
	slli.d	$a3, $a3, 8
	add.d	$a3, $a4, $a3
	ld.d	$a3, $a3, 248
	ori	$a4, $zero, 216
	mul.d	$a4, $a1, $a4
	add.d	$a3, $a3, $a4
	ld.d	$a3, $a3, 176
	alsl.d	$a7, $a2, $a3, 3
	ld.w	$a3, $a6, 16
	ld.w	$a5, $a6, 56
	ld.w	$a4, $a6, 20
	bltz	$a5, .LBB0_4
.LBB0_2:
	ld.d	$a0, $a0, 1776
	slli.d	$a5, $a5, 8
	add.d	$a0, $a0, $a5
	ld.d	$a0, $a0, 248
	ori	$a5, $zero, 216
	mul.d	$a1, $a1, $a5
	add.d	$a0, $a0, $a1
	ld.d	$a0, $a0, 176
	slli.d	$a1, $a2, 3
	ldx.d	$a0, $a0, $a1
	b	.LBB0_5
.LBB0_3:
	addi.d	$a7, $a6, 48
	ld.w	$a3, $a6, 16
	ld.w	$a5, $a6, 56
	ld.w	$a4, $a6, 20
	bgez	$a5, .LBB0_2
.LBB0_4:
	ld.d	$a0, $a6, 80
.LBB0_5:
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
	ld.w	$t6, $a6, 28
	ld.w	$t0, $a6, 32
	ld.w	$t7, $a6, 36
	ld.w	$a1, $a6, 40
	ld.w	$a2, $a6, 44
	ld.w	$t5, $a6, 60
	ld.w	$t2, $a6, 64
	ld.w	$t8, $a6, 68
	ld.w	$a5, $a6, 72
	ld.w	$a6, $a6, 76
	ld.d	$a7, $a7, 0
	slt	$t3, $zero, $a4
	slt	$t4, $zero, $a3
	ori	$fp, $zero, 1
	and	$t3, $t3, $t4
	beq	$t1, $fp, .LBB0_12
# %bb.6:
	ori	$t4, $zero, 4
	bne	$t1, $t4, .LBB0_25
# %bb.7:                                # %.preheader168
	beqz	$t3, .LBB0_41
# %bb.8:                                # %.preheader167.us.preheader
	move	$t1, $zero
	mul.d	$t3, $t8, $a6
	add.d	$t3, $t5, $t3
	mul.d	$t2, $t2, $a5
	add.w	$t2, $t3, $t2
	mul.d	$t3, $t7, $a2
	add.d	$t3, $t6, $t3
	mul.d	$t0, $t0, $a1
	add.w	$t0, $t3, $t0
	.p2align	4, , 16
.LBB0_9:                                # %.preheader167.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_10 Depth 2
	move	$t3, $a3
	move	$t4, $t0
	move	$t5, $t2
	.p2align	4, , 16
.LBB0_10:                               #   Parent Loop BB0_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	slli.d	$t6, $t4, 3
	fldx.d	$fa0, $a7, $t6
	alsl.d	$t6, $t4, $a7, 3
	slli.d	$t7, $t5, 3
	fstx.d	$fa0, $a0, $t7
	fld.d	$fa0, $t6, 8
	alsl.d	$t7, $t5, $a0, 3
	fst.d	$fa0, $t7, 8
	fld.d	$fa0, $t6, 16
	fst.d	$fa0, $t7, 16
	fld.d	$fa0, $t6, 24
	fst.d	$fa0, $t7, 24
	add.w	$t5, $t5, $a5
	addi.d	$t3, $t3, -1
	add.w	$t4, $t4, $a1
	bnez	$t3, .LBB0_10
# %bb.11:                               # %._crit_edge.us
                                        #   in Loop: Header=BB0_9 Depth=1
	addi.w	$t1, $t1, 1
	add.w	$t2, $t2, $a6
	add.w	$t0, $t0, $a2
	bne	$t1, $a4, .LBB0_9
	b	.LBB0_41
.LBB0_12:                               # %.preheader165
	beqz	$t3, .LBB0_41
# %bb.13:                               # %.preheader164.us.preheader
	move	$t1, $zero
	addi.d	$t3, $a3, -1
	mul.d	$t4, $t8, $a6
	add.d	$t4, $t5, $t4
	add.w	$t5, $t4, $t2
	mul.d	$t7, $t7, $a2
	add.d	$t6, $t6, $t7
	add.w	$t7, $t6, $t0
	addi.d	$t8, $a5, -1
	sltu	$t8, $zero, $t8
	addi.d	$fp, $a1, -1
	sltu	$fp, $zero, $fp
	srli.d	$s0, $t3, 32
	sltu	$s0, $zero, $s0
	or	$t8, $t8, $fp
	or	$t8, $s0, $t8
	bstrpick.d	$fp, $a3, 30, 2
	slli.d	$fp, $fp, 2
	ori	$s0, $zero, 12
	ori	$s1, $zero, 32
	move	$s2, $t7
	move	$s3, $t5
	b	.LBB0_15
	.p2align	4, , 16
.LBB0_14:                               # %._crit_edge.us174
                                        #   in Loop: Header=BB0_15 Depth=1
	addi.w	$t1, $t1, 1
	add.w	$s3, $s3, $a6
	add.w	$s2, $s2, $a2
	add.d	$t4, $t4, $a6
	add.d	$t6, $t6, $a2
	beq	$t1, $a4, .LBB0_41
.LBB0_15:                               # %.preheader164.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_23 Depth 2
                                        #     Child Loop BB0_18 Depth 2
	bgeu	$a3, $s0, .LBB0_19
# %bb.16:                               #   in Loop: Header=BB0_15 Depth=1
	move	$s4, $zero
.LBB0_17:                               # %scalar.ph.preheader
                                        #   in Loop: Header=BB0_15 Depth=1
	add.d	$s5, $t2, $s4
	mul.d	$s5, $a5, $s5
	add.w	$s5, $t4, $s5
	add.d	$s6, $t0, $s4
	mul.d	$s6, $a1, $s6
	add.w	$s6, $t6, $s6
	sub.d	$s4, $a3, $s4
	.p2align	4, , 16
.LBB0_18:                               # %scalar.ph
                                        #   Parent Loop BB0_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	slli.d	$s7, $s6, 3
	fldx.d	$fa0, $a7, $s7
	slli.d	$s7, $s5, 3
	fstx.d	$fa0, $a0, $s7
	add.w	$s5, $s5, $a5
	addi.d	$s4, $s4, -1
	add.w	$s6, $s6, $a1
	bnez	$s4, .LBB0_18
	b	.LBB0_14
	.p2align	4, , 16
.LBB0_19:                               # %vector.scevcheck
                                        #   in Loop: Header=BB0_15 Depth=1
	mul.d	$s4, $a2, $t1
	add.w	$s5, $t7, $s4
	add.w	$s6, $s5, $t3
	move	$s4, $zero
	blt	$s6, $s5, .LBB0_17
# %bb.20:                               # %vector.scevcheck
                                        #   in Loop: Header=BB0_15 Depth=1
	mul.d	$s6, $a6, $t1
	add.w	$s6, $t5, $s6
	add.w	$s7, $s6, $t3
	slt	$s7, $s7, $s6
	or	$s7, $s7, $t8
	bnez	$s7, .LBB0_17
# %bb.21:                               # %vector.scevcheck
                                        #   in Loop: Header=BB0_15 Depth=1
	alsl.d	$s6, $s6, $a0, 3
	alsl.d	$s5, $s5, $a7, 3
	sub.d	$s5, $s6, $s5
	bltu	$s5, $s1, .LBB0_17
# %bb.22:                               # %vector.ph
                                        #   in Loop: Header=BB0_15 Depth=1
	move	$s4, $s2
	move	$s5, $s3
	move	$s6, $fp
	.p2align	4, , 16
.LBB0_23:                               # %vector.body
                                        #   Parent Loop BB0_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	alsl.d	$s7, $s4, $a7, 3
	slli.d	$s8, $s4, 3
	vldx	$vr0, $a7, $s8
	vld	$vr1, $s7, 16
	alsl.d	$s7, $s5, $a0, 3
	slli.d	$s8, $s5, 3
	vstx	$vr0, $a0, $s8
	vst	$vr1, $s7, 16
	addi.d	$s6, $s6, -4
	addi.w	$s5, $s5, 4
	addi.w	$s4, $s4, 4
	bnez	$s6, .LBB0_23
# %bb.24:                               # %middle.block
                                        #   in Loop: Header=BB0_15 Depth=1
	move	$s4, $fp
	beq	$fp, $a3, .LBB0_14
	b	.LBB0_17
.LBB0_25:                               # %.preheader163
	slt	$t4, $zero, $t1
	and	$t3, $t3, $t4
	beqz	$t3, .LBB0_41
# %bb.26:                               # %.preheader162.us.us.preheader
	move	$t3, $zero
	addi.d	$t4, $t1, -1
	mul.d	$t8, $t8, $a6
	add.d	$t5, $t5, $t8
	mul.d	$t2, $t2, $a5
	add.w	$t2, $t5, $t2
	mul.d	$t5, $t7, $a2
	add.d	$t5, $t6, $t5
	mul.d	$t0, $t0, $a1
	add.w	$t0, $t5, $t0
	bstrpick.d	$t5, $t1, 30, 2
	slli.d	$t5, $t5, 2
	ori	$t6, $zero, 10
	ori	$t7, $zero, 32
	move	$t8, $t0
	move	$fp, $t2
	b	.LBB0_28
	.p2align	4, , 16
.LBB0_27:                               # %._crit_edge177.split.us.us.us
                                        #   in Loop: Header=BB0_28 Depth=1
	addi.w	$t3, $t3, 1
	add.w	$fp, $fp, $a6
	add.w	$t8, $t8, $a2
	beq	$t3, $a4, .LBB0_41
.LBB0_28:                               # %.preheader162.us.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_30 Depth 2
                                        #       Child Loop BB0_39 Depth 3
                                        #       Child Loop BB0_33 Depth 3
	move	$s0, $zero
	mul.d	$s1, $a6, $t3
	add.d	$s1, $t2, $s1
	mul.d	$s2, $a2, $t3
	add.d	$s2, $t0, $s2
	move	$s3, $t8
	move	$s4, $fp
	b	.LBB0_30
	.p2align	4, , 16
.LBB0_29:                               # %._crit_edge.us178.us.us
                                        #   in Loop: Header=BB0_30 Depth=2
	addi.w	$s0, $s0, 1
	add.w	$s4, $s4, $a5
	add.w	$s3, $s3, $a1
	beq	$s0, $a3, .LBB0_27
.LBB0_30:                               # %.preheader.us.us.us
                                        #   Parent Loop BB0_28 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_39 Depth 3
                                        #       Child Loop BB0_33 Depth 3
	bgeu	$t1, $t6, .LBB0_34
# %bb.31:                               #   in Loop: Header=BB0_30 Depth=2
	move	$s5, $zero
.LBB0_32:                               # %scalar.ph229.preheader
                                        #   in Loop: Header=BB0_30 Depth=2
	sub.d	$s6, $t1, $s5
	.p2align	4, , 16
.LBB0_33:                               # %scalar.ph229
                                        #   Parent Loop BB0_28 Depth=1
                                        #     Parent Loop BB0_30 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.w	$s7, $s3, $s5
	slli.d	$s7, $s7, 3
	fldx.d	$fa0, $a7, $s7
	add.w	$s7, $s4, $s5
	slli.d	$s7, $s7, 3
	fstx.d	$fa0, $a0, $s7
	addi.d	$s6, $s6, -1
	addi.d	$s5, $s5, 1
	bnez	$s6, .LBB0_33
	b	.LBB0_29
	.p2align	4, , 16
.LBB0_34:                               # %vector.scevcheck225
                                        #   in Loop: Header=BB0_30 Depth=2
	mul.d	$s5, $a5, $s0
	add.w	$s6, $s1, $s5
	add.w	$s7, $s6, $t4
	move	$s5, $zero
	blt	$s7, $s6, .LBB0_32
# %bb.35:                               # %vector.scevcheck225
                                        #   in Loop: Header=BB0_30 Depth=2
	mul.d	$s7, $a1, $s0
	add.w	$s7, $s2, $s7
	add.w	$s8, $s7, $t4
	blt	$s8, $s7, .LBB0_32
# %bb.36:                               # %vector.scevcheck225
                                        #   in Loop: Header=BB0_30 Depth=2
	srli.d	$s8, $t4, 32
	bnez	$s8, .LBB0_32
# %bb.37:                               # %vector.scevcheck225
                                        #   in Loop: Header=BB0_30 Depth=2
	alsl.d	$s6, $s6, $a0, 3
	alsl.d	$s7, $s7, $a7, 3
	sub.d	$s6, $s6, $s7
	bltu	$s6, $t7, .LBB0_32
# %bb.38:                               # %vector.body234.preheader
                                        #   in Loop: Header=BB0_30 Depth=2
	move	$s5, $s3
	move	$s6, $s4
	move	$s7, $t5
	.p2align	4, , 16
.LBB0_39:                               # %vector.body234
                                        #   Parent Loop BB0_28 Depth=1
                                        #     Parent Loop BB0_30 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	alsl.d	$s8, $s5, $a7, 3
	slli.d	$ra, $s5, 3
	vldx	$vr0, $a7, $ra
	vld	$vr1, $s8, 16
	alsl.d	$s8, $s6, $a0, 3
	slli.d	$ra, $s6, 3
	vstx	$vr0, $a0, $ra
	vst	$vr1, $s8, 16
	addi.d	$s7, $s7, -4
	addi.w	$s6, $s6, 4
	addi.w	$s5, $s5, 4
	bnez	$s7, .LBB0_39
# %bb.40:                               # %middle.block239
                                        #   in Loop: Header=BB0_30 Depth=2
	move	$s5, $t5
	beq	$t5, $t1, .LBB0_29
	b	.LBB0_32
.LBB0_41:                               # %.loopexit
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
.Lfunc_end0:
	.size	DoBufferCopy, .Lfunc_end0-DoBufferCopy
                                        # -- End function
	.globl	exchange_boundary               # -- Begin function exchange_boundary
	.p2align	5
	.type	exchange_boundary,@function
exchange_boundary:                      # @exchange_boundary
# %bb.0:                                # %.split48.us
	addi.d	$sp, $sp, -128
	st.d	$ra, $sp, 120                   # 8-byte Folded Spill
	st.d	$fp, $sp, 112                   # 8-byte Folded Spill
	st.d	$s0, $sp, 104                   # 8-byte Folded Spill
	st.d	$s1, $sp, 96                    # 8-byte Folded Spill
	st.d	$s2, $sp, 88                    # 8-byte Folded Spill
	st.d	$s3, $sp, 80                    # 8-byte Folded Spill
	st.d	$s4, $sp, 72                    # 8-byte Folded Spill
	st.d	$s5, $sp, 64                    # 8-byte Folded Spill
	st.d	$s6, $sp, 56                    # 8-byte Folded Spill
	st.d	$s7, $sp, 48                    # 8-byte Folded Spill
	st.d	$s8, $sp, 40                    # 8-byte Folded Spill
	st.d	$a5, $sp, 32                    # 8-byte Folded Spill
	move	$s1, $a4
	move	$s2, $a3
	move	$s3, $a2
	move	$s4, $a1
	move	$s5, $a0
	pcaddu18i	$ra, %call36(CycleTime)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(CycleTime)
	jirl	$ra, $ra, 0
	ld.w	$fp, $s5, 1520
	ld.w	$a1, $s5, 1524
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	alsl.d	$s8, $s4, $s5, 3
	bge	$fp, $a1, .LBB1_10
# %bb.1:                                # %.lr.ph
	addi.d	$s6, $s8, 1432
	ori	$a0, $zero, 88
	mul.d	$s0, $fp, $a0
	move	$s7, $fp
	b	.LBB1_4
	.p2align	4, , 16
.LBB1_2:                                #   in Loop: Header=BB1_4 Depth=1
	move	$a0, $s5
	move	$a1, $s4
	move	$a2, $s3
	move	$a3, $s7
	pcaddu18i	$ra, %call36(DoBufferCopy)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s5, 1524
.LBB1_3:                                #   in Loop: Header=BB1_4 Depth=1
	addi.d	$fp, $fp, 1
	addi.w	$s7, $s7, 1
	addi.d	$s0, $s0, 88
	bge	$fp, $a1, .LBB1_10
.LBB1_4:                                # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s6, 0
	beqz	$s2, .LBB1_6
# %bb.5:                                #   in Loop: Header=BB1_4 Depth=1
	ldx.w	$a2, $a0, $s0
	bnez	$a2, .LBB1_2
.LBB1_6:                                #   in Loop: Header=BB1_4 Depth=1
	add.d	$a0, $a0, $s0
	beqz	$s1, .LBB1_8
# %bb.7:                                #   in Loop: Header=BB1_4 Depth=1
	ld.w	$a2, $a0, 4
	bnez	$a2, .LBB1_2
.LBB1_8:                                #   in Loop: Header=BB1_4 Depth=1
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	beqz	$a2, .LBB1_3
# %bb.9:                                #   in Loop: Header=BB1_4 Depth=1
	ld.w	$a0, $a0, 8
	bnez	$a0, .LBB1_2
	b	.LBB1_3
.LBB1_10:                               # %._crit_edge
	pcaddu18i	$ra, %call36(CycleTime)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s8, 560
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	sub.d	$a0, $a0, $a2
	add.d	$a0, $a0, $a1
	st.d	$a0, $s8, 560
	pcaddu18i	$ra, %call36(CycleTime)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s8, 400
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	sub.d	$a0, $a0, $a2
	add.d	$a0, $a0, $a1
	st.d	$a0, $s8, 400
	ld.d	$s8, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 112                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 120                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 128
	ret
.Lfunc_end1:
	.size	exchange_boundary, .Lfunc_end1-exchange_boundary
                                        # -- End function
	.globl	rebuild_lambda                  # -- Begin function rebuild_lambda
	.p2align	5
	.type	rebuild_lambda,@function
rebuild_lambda:                         # @rebuild_lambda
# %bb.0:
	addi.d	$sp, $sp, -144
	st.d	$ra, $sp, 136                   # 8-byte Folded Spill
	st.d	$fp, $sp, 128                   # 8-byte Folded Spill
	st.d	$s0, $sp, 120                   # 8-byte Folded Spill
	st.d	$s1, $sp, 112                   # 8-byte Folded Spill
	st.d	$s2, $sp, 104                   # 8-byte Folded Spill
	st.d	$s3, $sp, 96                    # 8-byte Folded Spill
	st.d	$s4, $sp, 88                    # 8-byte Folded Spill
	st.d	$s5, $sp, 80                    # 8-byte Folded Spill
	st.d	$s6, $sp, 72                    # 8-byte Folded Spill
	st.d	$s7, $sp, 64                    # 8-byte Folded Spill
	st.d	$s8, $sp, 56                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 48                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 40                   # 8-byte Folded Spill
	fmov.d	$fs0, $fa1
	fmov.d	$fs1, $fa0
	move	$fp, $a1
	move	$s0, $a0
	pcaddu18i	$ra, %call36(CycleTime)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s0, 1600
	move	$s1, $a0
	alsl.d	$s2, $fp, $s0, 3
	blez	$a1, .LBB2_13
# %bb.1:                                # %.lr.ph
	move	$a0, $zero
	ld.d	$a2, $s0, 1776
	addi.d	$a3, $s2, 1616
	vldi	$vr10, -784
	ori	$a4, $zero, 216
	mul.d	$a4, $fp, $a4
	b	.LBB2_4
	.p2align	4, , 16
.LBB2_2:                                #   in Loop: Header=BB2_4 Depth=1
	vldi	$vr0, -784
.LBB2_3:                                # %._crit_edge
                                        #   in Loop: Header=BB2_4 Depth=1
	fcmp.clt.d	$fcc0, $ft2, $fa0
	addi.d	$a0, $a0, 1
	fsel	$ft2, $ft2, $fa0, $fcc0
	beq	$a0, $a1, .LBB2_14
.LBB2_4:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_8 Depth 2
                                        #       Child Loop BB2_9 Depth 3
                                        #         Child Loop BB2_10 Depth 4
	slli.d	$a5, $a0, 8
	add.d	$a5, $a2, $a5
	ld.d	$a5, $a5, 248
	add.d	$t4, $a5, $a4
	ld.w	$a5, $t4, 28
	blez	$a5, .LBB2_2
# %bb.5:                                # %.preheader148.lr.ph
                                        #   in Loop: Header=BB2_4 Depth=1
	ld.w	$a6, $t4, 24
	vldi	$vr0, -784
	blez	$a6, .LBB2_3
# %bb.6:                                # %.preheader148.lr.ph
                                        #   in Loop: Header=BB2_4 Depth=1
	ld.w	$a7, $t4, 20
	blez	$a7, .LBB2_3
# %bb.7:                                # %.preheader148.us.us.preheader
                                        #   in Loop: Header=BB2_4 Depth=1
	ld.w	$t0, $t4, 48
	ld.d	$t6, $t4, 176
	ld.w	$t1, $t4, 52
	move	$t2, $zero
	move	$t3, $zero
	ld.w	$t4, $t4, 44
	ld.d	$t5, $t6, 16
	add.d	$t7, $t0, $t1
	ld.d	$t8, $t6, 40
	addi.d	$t7, $t7, 1
	mul.w	$s3, $t4, $t7
	alsl.d	$t4, $s3, $t5, 3
	alsl.d	$t5, $s3, $t8, 3
	ld.d	$t7, $t6, 48
	ld.d	$t8, $t6, 56
	ld.d	$s4, $t6, 32
	fld.d	$fa0, $a3, 0
	alsl.d	$t6, $s3, $t7, 3
	alsl.d	$t7, $s3, $t8, 3
	alsl.d	$t8, $s3, $s4, 3
	fmul.d	$fa0, $fa0, $fa0
	frecip.d	$fa0, $fa0
	fmul.d	$fa1, $fs0, $fa0
	vldi	$vr0, -784
	.p2align	4, , 16
.LBB2_8:                                # %.preheader148.us.us
                                        #   Parent Loop BB2_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_9 Depth 3
                                        #         Child Loop BB2_10 Depth 4
	move	$s3, $zero
	move	$s4, $t2
	.p2align	4, , 16
.LBB2_9:                                # %.preheader.us.us.us
                                        #   Parent Loop BB2_4 Depth=1
                                        #     Parent Loop BB2_8 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB2_10 Depth 4
	move	$s5, $a7
	move	$s6, $s4
	.p2align	4, , 16
.LBB2_10:                               #   Parent Loop BB2_4 Depth=1
                                        #     Parent Loop BB2_8 Depth=2
                                        #       Parent Loop BB2_9 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	slli.d	$s7, $s6, 3
	fldx.d	$fa2, $t5, $s7
	alsl.d	$s8, $s6, $t5, 3
	fld.d	$fa3, $s8, 8
	fmul.d	$fa4, $fa1, $fa2
	fabs.d	$fa4, $fa4
	fmul.d	$fa5, $fa1, $fa3
	fabs.d	$fa5, $fa5
	fadd.d	$fa4, $fa4, $fa5
	fldx.d	$fa5, $t6, $s7
	add.w	$s8, $t0, $s6
	slli.d	$s8, $s8, 3
	fldx.d	$fa6, $t6, $s8
	fmul.d	$fa7, $fa1, $fa5
	fabs.d	$fa7, $fa7
	fadd.d	$fa4, $fa4, $fa7
	fmul.d	$fa7, $fa1, $fa6
	fabs.d	$fa7, $fa7
	fadd.d	$fa4, $fa4, $fa7
	fldx.d	$fa7, $t7, $s7
	add.w	$s8, $t1, $s6
	slli.d	$s8, $s8, 3
	fldx.d	$ft0, $t7, $s8
	fmul.d	$ft1, $fa1, $fa7
	fabs.d	$ft1, $ft1
	fadd.d	$fa4, $fa4, $ft1
	fmul.d	$ft1, $fa1, $ft0
	fabs.d	$ft1, $ft1
	fadd.d	$fa4, $fa4, $ft1
	fldx.d	$ft1, $t4, $s7
	fneg.d	$fa2, $fa2
	fsub.d	$fa2, $fa2, $fa3
	fsub.d	$fa2, $fa2, $fa5
	fsub.d	$fa2, $fa2, $fa6
	fsub.d	$fa2, $fa2, $fa7
	fsub.d	$fa2, $fa2, $ft0
	fneg.d	$fa2, $fa2
	fmul.d	$fa2, $fa1, $fa2
	fmadd.d	$fa2, $fs1, $ft1, $fa2
	frecip.d	$fa3, $fa2
	fstx.d	$fa3, $t8, $s7
	fadd.d	$fa3, $fa2, $fa4
	fdiv.d	$fa2, $fa3, $fa2
	fcmp.clt.d	$fcc0, $fa0, $fa2
	fsel	$fa0, $fa0, $fa2, $fcc0
	addi.d	$s5, $s5, -1
	addi.w	$s6, $s6, 1
	bnez	$s5, .LBB2_10
# %bb.11:                               # %._crit_edge.us.us.us
                                        #   in Loop: Header=BB2_9 Depth=3
	addi.w	$s3, $s3, 1
	add.w	$s4, $s4, $t0
	bne	$s3, $a6, .LBB2_9
# %bb.12:                               # %._crit_edge153.split.us.us.us
                                        #   in Loop: Header=BB2_8 Depth=2
	addi.w	$t3, $t3, 1
	add.w	$t2, $t2, $t1
	bne	$t3, $a5, .LBB2_8
	b	.LBB2_3
.LBB2_13:
	vldi	$vr10, -784
.LBB2_14:                               # %._crit_edge166
	vst	$vr10, $sp, 16                  # 16-byte Folded Spill
	pcaddu18i	$ra, %call36(CycleTime)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s2, 960
	ld.w	$a2, $s0, 1596
	sub.d	$a0, $a0, $s1
	add.d	$a0, $a0, $a1
	st.d	$a0, $s2, 960
	bnez	$a2, .LBB2_18
# %bb.15:
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	bnez	$fp, .LBB2_17
# %bb.16:
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putchar)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
.LBB2_17:
	movfr2gr.d	$a2, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$a0, $a0, %got_pc_lo12(stdout)
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(fflush)
	jirl	$ra, $ra, 0
.LBB2_18:
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	fst.d	$fa0, $s2, 1696
	fld.d	$fs1, $sp, 40                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 48                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 128                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 136                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 144
	ret
.Lfunc_end2:
	.size	rebuild_lambda, .Lfunc_end2-rebuild_lambda
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function smooth
.LCPI3_0:
	.dword	0xbfe5555555555555              # double -0.66666666666666663
	.text
	.globl	smooth
	.p2align	5
	.type	smooth,@function
smooth:                                 # @smooth
# %bb.0:
	addi.d	$sp, $sp, -1008
	st.d	$ra, $sp, 1000                  # 8-byte Folded Spill
	st.d	$fp, $sp, 992                   # 8-byte Folded Spill
	st.d	$s0, $sp, 984                   # 8-byte Folded Spill
	st.d	$s1, $sp, 976                   # 8-byte Folded Spill
	st.d	$s2, $sp, 968                   # 8-byte Folded Spill
	st.d	$s3, $sp, 960                   # 8-byte Folded Spill
	st.d	$s4, $sp, 952                   # 8-byte Folded Spill
	st.d	$s5, $sp, 944                   # 8-byte Folded Spill
	st.d	$s6, $sp, 936                   # 8-byte Folded Spill
	st.d	$s7, $sp, 928                   # 8-byte Folded Spill
	st.d	$s8, $sp, 920                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 912                  # 8-byte Folded Spill
	move	$fp, $a0
	ld.w	$a4, $a0, 1612
	ori	$a0, $zero, 2
	fmov.d	$fs0, $fa1
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	move	$s3, $a3
	st.d	$a2, $sp, 136                   # 8-byte Folded Spill
	move	$s0, $a1
	st.d	$a4, $sp, 96                    # 8-byte Folded Spill
	vst	$vr0, $sp, 80                   # 16-byte Folded Spill
	blt	$a4, $a0, .LBB3_2
# %bb.1:
	ori	$a3, $zero, 1
	ori	$a4, $zero, 1
	ori	$a5, $zero, 1
	move	$a0, $fp
	move	$a1, $s0
	move	$a2, $s3
	pcaddu18i	$ra, %call36(exchange_boundary)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 80                   # 16-byte Folded Reload
.LBB3_2:
	move	$a1, $zero
	ori	$a2, $zero, 1
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	slt	$a0, $a2, $a0
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	alsl.d	$a0, $s0, $fp, 3
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	addi.d	$a0, $a0, 1616
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	vreplvei.d	$vr0, $vr0, 0
	vst	$vr0, $sp, 32                   # 16-byte Folded Spill
	ori	$a0, $zero, 216
	mul.d	$a0, $s0, $a0
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	slli.d	$a0, $s3, 3
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	lu12i.w	$a0, 349525
	ori	$a0, $a0, 1365
	lu32i.d	$a0, 349525
	lu52i.d	$a0, $a0, -1026
	vreplgr2vr.d	$vr0, $a0
	vst	$vr0, $sp, 16                   # 16-byte Folded Spill
	st.d	$fp, $sp, 104                   # 8-byte Folded Spill
	st.d	$s0, $sp, 72                    # 8-byte Folded Spill
	b	.LBB3_4
	.p2align	4, , 16
.LBB3_3:                                # %._crit_edge228
                                        #   in Loop: Header=BB3_4 Depth=1
	pcaddu18i	$ra, %call36(CycleTime)
	jirl	$ra, $ra, 0
	ld.d	$a3, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a1, $a3, 0
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	sub.d	$a0, $a0, $a2
	add.d	$a0, $a0, $a1
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 144                   # 8-byte Folded Reload
	add.w	$a1, $a2, $a1
	st.d	$a0, $a3, 0
	ld.d	$fp, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	ori	$a0, $zero, 4
	bge	$a1, $a0, .LBB3_43
.LBB3_4:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_7 Depth 2
                                        #       Child Loop BB3_10 Depth 3
                                        #         Child Loop BB3_15 Depth 4
                                        #           Child Loop BB3_16 Depth 5
                                        #             Child Loop BB3_41 Depth 6
                                        #             Child Loop BB3_18 Depth 6
	st.d	$a1, $sp, 144                   # 8-byte Folded Spill
	andi	$a0, $a1, 1
	sltui	$a0, $a0, 1
	ori	$a1, $zero, 10
	masknez	$a1, $a1, $a0
	ld.d	$a2, $sp, 136                   # 8-byte Folded Reload
	maskeqz	$a0, $a2, $a0
	or	$a2, $a0, $a1
	ori	$a3, $zero, 1
	move	$a0, $fp
	move	$a1, $s0
	ld.d	$a4, $sp, 64                    # 8-byte Folded Reload
	move	$a5, $a4
	pcaddu18i	$ra, %call36(exchange_boundary)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(CycleTime)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 1600
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	vld	$vr9, $sp, 80                   # 16-byte Folded Reload
	vld	$vr10, $sp, 32                  # 16-byte Folded Reload
	vld	$vr11, $sp, 16                  # 16-byte Folded Reload
	st.d	$a1, $sp, 168                   # 8-byte Folded Spill
	blez	$a1, .LBB3_3
# %bb.5:                                # %.lr.ph227
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 1776
	st.d	$a0, $sp, 160                   # 8-byte Folded Spill
	move	$a1, $zero
	b	.LBB3_7
	.p2align	4, , 16
.LBB3_6:                                # %._crit_edge224
                                        #   in Loop: Header=BB3_7 Depth=2
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	addi.d	$a1, $a1, 1
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	beq	$a1, $a0, .LBB3_3
.LBB3_7:                                #   Parent Loop BB3_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB3_10 Depth 3
                                        #         Child Loop BB3_15 Depth 4
                                        #           Child Loop BB3_16 Depth 5
                                        #             Child Loop BB3_41 Depth 6
                                        #             Child Loop BB3_18 Depth 6
	st.d	$a1, $sp, 176                   # 8-byte Folded Spill
	slli.d	$a0, $a1, 8
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	add.d	$a0, $a1, $a0
	ld.d	$a0, $a0, 248
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a1
	ld.w	$a1, $a0, 44
	st.d	$a1, $sp, 480                   # 8-byte Folded Spill
	blez	$a1, .LBB3_6
# %bb.8:                                # %.lr.ph
                                        #   in Loop: Header=BB3_7 Depth=2
	ld.w	$a4, $a0, 48
	ld.d	$a1, $a0, 176
	ld.w	$t1, $a0, 52
	st.d	$zero, $sp, 472                 # 8-byte Folded Spill
	ld.d	$a2, $sp, 120                   # 8-byte Folded Reload
	ldx.d	$a6, $a1, $a2
	add.d	$a7, $a4, $t1
	addi.w	$a2, $a7, 1
	ld.d	$a5, $sp, 480                   # 8-byte Folded Reload
	mul.w	$t0, $a5, $a2
	ld.d	$t2, $a1, 16
	ld.d	$t3, $a1, 40
	ld.d	$t4, $a1, 48
	ld.d	$t5, $a1, 56
	ld.d	$t6, $a1, 32
	ld.d	$a3, $sp, 128                   # 8-byte Folded Reload
	fld.d	$fa0, $a3, 0
	ld.w	$a3, $a0, 20
	ld.w	$t7, $a0, 24
	st.d	$t7, $sp, 336                   # 8-byte Folded Spill
	ld.w	$a0, $a0, 28
	st.d	$a0, $sp, 360                   # 8-byte Folded Spill
	fmul.d	$fa0, $fa0, $fa0
	frecip.d	$fa0, $fa0
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	alsl.d	$a0, $a0, $a1, 3
	st.d	$a0, $sp, 264                   # 8-byte Folded Spill
	addi.d	$a0, $a1, 80
	st.d	$a0, $sp, 256                   # 8-byte Folded Spill
	fmul.d	$fa0, $fs0, $fa0
	ori	$a0, $zero, 1
	sub.w	$a1, $a0, $a5
	st.d	$a3, $sp, 328                   # 8-byte Folded Spill
	add.d	$a0, $a3, $a5
	addi.d	$a3, $a0, -1
	st.d	$a7, $sp, 368                   # 8-byte Folded Spill
	st.d	$a1, $sp, 904                   # 8-byte Folded Spill
	mulw.d.w	$t7, $a7, $a1
	sub.d	$a0, $t7, $a5
	addi.w	$t8, $a0, 1
	bstrpick.d	$a1, $a2, 31, 0
	st.d	$a1, $sp, 232                   # 8-byte Folded Spill
	addi.d	$a0, $a0, 2
	st.d	$a0, $sp, 224                   # 8-byte Folded Spill
	add.d	$a0, $a4, $t7
	st.d	$a0, $sp, 456                   # 8-byte Folded Spill
	sub.d	$a0, $a0, $a5
	addi.w	$a2, $a0, 1
	addi.d	$a0, $t1, 1
	add.d	$a1, $a0, $t7
	sub.w	$fp, $a1, $a5
	sub.d	$a1, $t0, $t1
	slli.d	$a1, $a1, 3
	st.d	$a1, $sp, 200                   # 8-byte Folded Spill
	sub.d	$a1, $t0, $a4
	slli.d	$a1, $a1, 3
	st.d	$a1, $sp, 192                   # 8-byte Folded Spill
	vreplvei.d	$vr1, $vr0, 0
	add.d	$a0, $a0, $a4
	st.d	$a0, $sp, 352                   # 8-byte Folded Spill
	st.d	$a6, $sp, 320                   # 8-byte Folded Spill
	alsl.d	$a7, $t0, $a6, 3
	st.d	$t2, $sp, 304                   # 8-byte Folded Spill
	alsl.d	$t2, $t0, $t2, 3
	st.d	$t3, $sp, 296                   # 8-byte Folded Spill
	alsl.d	$t3, $t0, $t3, 3
	st.d	$t4, $sp, 288                   # 8-byte Folded Spill
	alsl.d	$t4, $t0, $t4, 3
	st.d	$t5, $sp, 280                   # 8-byte Folded Spill
	alsl.d	$t5, $t0, $t5, 3
	st.d	$t6, $sp, 272                   # 8-byte Folded Spill
	alsl.d	$t6, $t0, $t6, 3
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	add.w	$a1, $a5, $a0
	st.d	$a1, $sp, 344                   # 8-byte Folded Spill
	st.d	$t0, $sp, 312                   # 8-byte Folded Spill
	slli.d	$a1, $t0, 3
	st.d	$a1, $sp, 184                   # 8-byte Folded Spill
	sub.w	$a1, $t8, $a4
	st.d	$a1, $sp, 448                   # 8-byte Folded Spill
	sub.w	$a1, $t8, $t1
	st.d	$a1, $sp, 440                   # 8-byte Folded Spill
	sub.d	$a1, $t7, $t1
	st.d	$a1, $sp, 432                   # 8-byte Folded Spill
	add.d	$a1, $t1, $t7
	st.d	$a1, $sp, 424                   # 8-byte Folded Spill
	st.d	$a4, $sp, 872                   # 8-byte Folded Spill
	st.d	$t7, $sp, 464                   # 8-byte Folded Spill
	sub.d	$a1, $t7, $a4
	st.d	$a1, $sp, 416                   # 8-byte Folded Spill
	st.d	$a3, $sp, 248                   # 8-byte Folded Spill
	st.d	$a3, $sp, 408                   # 8-byte Folded Spill
	st.d	$fp, $sp, 208                   # 8-byte Folded Spill
	st.d	$fp, $sp, 400                   # 8-byte Folded Spill
	st.d	$a2, $sp, 216                   # 8-byte Folded Spill
	st.d	$a2, $sp, 392                   # 8-byte Folded Spill
	st.d	$t8, $sp, 240                   # 8-byte Folded Spill
	st.d	$t8, $sp, 384                   # 8-byte Folded Spill
	st.d	$a0, $sp, 376                   # 8-byte Folded Spill
	st.d	$t1, $sp, 488                   # 8-byte Folded Spill
	b	.LBB3_10
	.p2align	4, , 16
.LBB3_9:                                # %._crit_edge
                                        #   in Loop: Header=BB3_10 Depth=3
	ld.d	$a2, $sp, 376                   # 8-byte Folded Reload
	addi.w	$a2, $a2, 1
	ld.d	$a0, $sp, 904                   # 8-byte Folded Reload
	addi.w	$a0, $a0, 1
	st.d	$a0, $sp, 904                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 472                   # 8-byte Folded Reload
	addi.d	$a0, $a0, 1
	st.d	$a0, $sp, 472                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 352                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 384                   # 8-byte Folded Reload
	add.w	$a1, $a1, $a0
	st.d	$a1, $sp, 384                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 392                   # 8-byte Folded Reload
	add.w	$a1, $a1, $a0
	st.d	$a1, $sp, 392                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 448                   # 8-byte Folded Reload
	add.w	$a1, $a1, $a0
	st.d	$a1, $sp, 448                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 400                   # 8-byte Folded Reload
	add.w	$a1, $a1, $a0
	st.d	$a1, $sp, 400                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 440                   # 8-byte Folded Reload
	add.w	$a1, $a1, $a0
	st.d	$a1, $sp, 440                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 408                   # 8-byte Folded Reload
	addi.d	$a0, $a0, -1
	st.d	$a0, $sp, 408                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 368                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 432                   # 8-byte Folded Reload
	add.d	$a1, $a1, $a0
	st.d	$a1, $sp, 432                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 424                   # 8-byte Folded Reload
	add.d	$a1, $a1, $a0
	st.d	$a1, $sp, 424                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 416                   # 8-byte Folded Reload
	add.d	$a1, $a1, $a0
	st.d	$a1, $sp, 416                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 456                   # 8-byte Folded Reload
	add.d	$a1, $a1, $a0
	st.d	$a1, $sp, 456                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 464                   # 8-byte Folded Reload
	add.d	$a1, $a1, $a0
	st.d	$a1, $sp, 464                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 344                   # 8-byte Folded Reload
	st.d	$a2, $sp, 376                   # 8-byte Folded Spill
	bge	$a2, $a0, .LBB3_6
.LBB3_10:                               #   Parent Loop BB3_4 Depth=1
                                        #     Parent Loop BB3_7 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB3_15 Depth 4
                                        #           Child Loop BB3_16 Depth 5
                                        #             Child Loop BB3_41 Depth 6
                                        #             Child Loop BB3_18 Depth 6
	ld.d	$a0, $sp, 480                   # 8-byte Folded Reload
	ori	$a1, $zero, 1
	sub.d	$a2, $a1, $a0
	addi.d	$a0, $a0, -1
	st.d	$a0, $sp, 480                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 360                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a1
	st.d	$a2, $sp, 536                   # 8-byte Folded Spill
	st.d	$a0, $sp, 528                   # 8-byte Folded Spill
	bge	$a2, $a0, .LBB3_9
# %bb.11:                               # %.preheader210.lr.ph
                                        #   in Loop: Header=BB3_10 Depth=3
	ld.d	$a0, $sp, 480                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 336                   # 8-byte Folded Reload
	add.d	$a1, $a0, $a1
	ld.d	$a0, $sp, 536                   # 8-byte Folded Reload
	st.d	$a1, $sp, 856                   # 8-byte Folded Spill
	bge	$a0, $a1, .LBB3_9
# %bb.12:                               # %.preheader210.lr.ph
                                        #   in Loop: Header=BB3_10 Depth=3
	ld.d	$a0, $sp, 480                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 328                   # 8-byte Folded Reload
	add.d	$t0, $a0, $a1
	ld.d	$a0, $sp, 536                   # 8-byte Folded Reload
	bge	$a0, $t0, .LBB3_9
# %bb.13:                               # %.preheader210.us.us.preheader
                                        #   in Loop: Header=BB3_10 Depth=3
	move	$s0, $zero
	ld.d	$fp, $sp, 904                   # 8-byte Folded Reload
	addi.d	$a0, $fp, 1
	ld.d	$a3, $sp, 408                   # 8-byte Folded Reload
	slt	$a1, $a0, $a3
	masknez	$a2, $a0, $a1
	maskeqz	$a1, $a3, $a1
	or	$a1, $a1, $a2
	sub.d	$a1, $a1, $fp
	bstrins.d	$a1, $zero, 0, 0
	st.d	$a1, $sp, 656                   # 8-byte Folded Spill
	ld.d	$a3, $sp, 472                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	sub.d	$a1, $a1, $a3
	slt	$a2, $a0, $a1
	maskeqz	$a1, $a1, $a2
	masknez	$a0, $a0, $a2
	or	$a0, $a1, $a0
	sub.d	$s2, $a0, $fp
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	mul.d	$a1, $a3, $a1
	ld.d	$a2, $sp, 240                   # 8-byte Folded Reload
	add.d	$a2, $a2, $a1
	st.d	$a2, $sp, 520                   # 8-byte Folded Spill
	slli.d	$a2, $fp, 3
	sub.d	$a2, $zero, $a2
	add.d	$a3, $t1, $fp
	slli.d	$a3, $a3, 3
	sub.d	$a3, $zero, $a3
	ld.d	$a4, $sp, 208                   # 8-byte Folded Reload
	add.d	$a4, $a4, $a1
	st.d	$a4, $sp, 512                   # 8-byte Folded Spill
	ld.d	$a4, $sp, 872                   # 8-byte Folded Reload
	add.d	$a4, $a4, $fp
	slli.d	$a4, $a4, 3
	sub.d	$a4, $zero, $a4
	ld.d	$a5, $sp, 216                   # 8-byte Folded Reload
	add.d	$a5, $a5, $a1
	st.d	$a5, $sp, 504                   # 8-byte Folded Spill
	ld.d	$a5, $sp, 224                   # 8-byte Folded Reload
	add.d	$a1, $a5, $a1
	st.d	$a1, $sp, 496                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 376                   # 8-byte Folded Reload
	andi	$a1, $a1, 1
	sltui	$a1, $a1, 1
	ld.d	$t8, $sp, 256                   # 8-byte Folded Reload
	masknez	$a5, $t8, $a1
	ld.d	$t7, $sp, 264                   # 8-byte Folded Reload
	maskeqz	$a6, $t7, $a1
	or	$a5, $a6, $a5
	masknez	$a6, $t7, $a1
	maskeqz	$a1, $t8, $a1
	or	$a1, $a1, $a6
	ld.d	$a1, $a1, 0
	ld.d	$a5, $a5, 0
	nor	$a6, $fp, $zero
	add.d	$a6, $a0, $a6
	st.d	$a6, $sp, 880                   # 8-byte Folded Spill
	ld.d	$a6, $sp, 312                   # 8-byte Folded Reload
	alsl.d	$t7, $a6, $a1, 3
	alsl.d	$s7, $a6, $a5, 3
	ld.d	$t8, $sp, 184                   # 8-byte Folded Reload
	add.d	$s3, $a1, $t8
	st.d	$s3, $sp, 736                   # 8-byte Folded Spill
	add.d	$a1, $a1, $a2
	st.d	$a1, $sp, 728                   # 8-byte Folded Spill
	add.d	$a0, $a0, $a6
	st.d	$a0, $sp, 848                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 304                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a2
	st.d	$a0, $sp, 720                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	add.d	$a0, $a5, $a0
	st.d	$a0, $sp, 712                   # 8-byte Folded Spill
	add.d	$a0, $a5, $a3
	st.d	$a0, $sp, 704                   # 8-byte Folded Spill
	add.d	$a1, $a5, $t8
	add.d	$a0, $a5, $a2
	st.d	$a0, $sp, 840                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	add.d	$a0, $a5, $a0
	st.d	$a0, $sp, 696                   # 8-byte Folded Spill
	add.d	$a0, $a5, $a4
	st.d	$a0, $sp, 688                   # 8-byte Folded Spill
	st.d	$a1, $sp, 816                   # 8-byte Folded Spill
	addi.d	$a0, $a1, -8
	st.d	$a0, $sp, 680                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 296                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a2
	st.d	$a0, $sp, 800                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 288                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a2
	st.d	$a0, $sp, 784                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 280                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a2
	st.d	$a0, $sp, 768                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a2
	st.d	$a0, $sp, 672                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 320                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a2
	st.d	$a0, $sp, 664                   # 8-byte Folded Spill
	st.d	$s2, $sp, 864                   # 8-byte Folded Spill
	bstrins.d	$s2, $zero, 0, 0
	st.d	$s2, $sp, 648                   # 8-byte Folded Spill
	add.d	$a0, $s2, $fp
	st.d	$a0, $sp, 640                   # 8-byte Folded Spill
	ld.d	$s8, $sp, 464                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 456                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 416                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 424                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 432                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 440                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 400                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 448                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 392                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 384                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 536                   # 8-byte Folded Reload
	b	.LBB3_15
	.p2align	4, , 16
.LBB3_14:                               # %._crit_edge213.split.us.us.us
                                        #   in Loop: Header=BB3_15 Depth=4
	ld.d	$a1, $sp, 544                   # 8-byte Folded Reload
	addi.w	$a1, $a1, 1
	ld.d	$s0, $sp, 632                   # 8-byte Folded Reload
	addi.d	$s0, $s0, 1
	ld.d	$t1, $sp, 488                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 552                   # 8-byte Folded Reload
	add.w	$ra, $ra, $t1
	ld.d	$a6, $sp, 560                   # 8-byte Folded Reload
	add.w	$a6, $a6, $t1
	ld.d	$a5, $sp, 568                   # 8-byte Folded Reload
	add.w	$a5, $a5, $t1
	ld.d	$a4, $sp, 576                   # 8-byte Folded Reload
	add.w	$a4, $a4, $t1
	ld.d	$a3, $sp, 584                   # 8-byte Folded Reload
	add.w	$a3, $a3, $t1
	ld.d	$s5, $sp, 592                   # 8-byte Folded Reload
	add.d	$s5, $s5, $t1
	ld.d	$s4, $sp, 600                   # 8-byte Folded Reload
	add.d	$s4, $s4, $t1
	ld.d	$s2, $sp, 608                   # 8-byte Folded Reload
	add.d	$s2, $s2, $t1
	ld.d	$a2, $sp, 616                   # 8-byte Folded Reload
	add.d	$a2, $a2, $t1
	ld.d	$s8, $sp, 624                   # 8-byte Folded Reload
	add.d	$s8, $s8, $t1
	ld.d	$a0, $sp, 528                   # 8-byte Folded Reload
	bge	$a1, $a0, .LBB3_9
.LBB3_15:                               # %.preheader210.us.us
                                        #   Parent Loop BB3_4 Depth=1
                                        #     Parent Loop BB3_7 Depth=2
                                        #       Parent Loop BB3_10 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB3_16 Depth 5
                                        #             Child Loop BB3_41 Depth 6
                                        #             Child Loop BB3_18 Depth 6
	st.d	$a1, $sp, 544                   # 8-byte Folded Spill
	move	$s3, $zero
	st.d	$s0, $sp, 632                   # 8-byte Folded Spill
	mul.d	$a0, $t1, $s0
	ld.d	$a1, $sp, 520                   # 8-byte Folded Reload
	add.d	$a1, $a1, $a0
	st.d	$a1, $sp, 752                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 512                   # 8-byte Folded Reload
	add.d	$a1, $a1, $a0
	st.d	$a1, $sp, 808                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 504                   # 8-byte Folded Reload
	add.d	$a1, $a1, $a0
	st.d	$a1, $sp, 760                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 496                   # 8-byte Folded Reload
	add.d	$a0, $a1, $a0
	st.d	$a0, $sp, 744                   # 8-byte Folded Spill
	st.d	$s8, $sp, 624                   # 8-byte Folded Spill
	st.d	$a2, $sp, 616                   # 8-byte Folded Spill
	move	$t1, $a2
	st.d	$s2, $sp, 608                   # 8-byte Folded Spill
	st.d	$s4, $sp, 600                   # 8-byte Folded Spill
	st.d	$s5, $sp, 592                   # 8-byte Folded Spill
	st.d	$a3, $sp, 584                   # 8-byte Folded Spill
	st.d	$a3, $sp, 896                   # 8-byte Folded Spill
	st.d	$a4, $sp, 576                   # 8-byte Folded Spill
	st.d	$a4, $sp, 888                   # 8-byte Folded Spill
	st.d	$a5, $sp, 568                   # 8-byte Folded Spill
	move	$a0, $a5
	st.d	$a6, $sp, 560                   # 8-byte Folded Spill
	st.d	$ra, $sp, 552                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 536                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB3_16:                               # %.preheader.us.us.us
                                        #   Parent Loop BB3_4 Depth=1
                                        #     Parent Loop BB3_7 Depth=2
                                        #       Parent Loop BB3_10 Depth=3
                                        #         Parent Loop BB3_15 Depth=4
                                        # =>        This Loop Header: Depth=5
                                        #             Child Loop BB3_41 Depth 6
                                        #             Child Loop BB3_18 Depth 6
	ld.d	$fp, $sp, 904                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 864                   # 8-byte Folded Reload
	ori	$a3, $zero, 8
	bgeu	$a1, $a3, .LBB3_20
.LBB3_17:                               # %scalar.ph.preheader
                                        #   in Loop: Header=BB3_16 Depth=5
	move	$a1, $fp
	.p2align	4, , 16
.LBB3_18:                               # %scalar.ph
                                        #   Parent Loop BB3_4 Depth=1
                                        #     Parent Loop BB3_7 Depth=2
                                        #       Parent Loop BB3_10 Depth=3
                                        #         Parent Loop BB3_15 Depth=4
                                        #           Parent Loop BB3_16 Depth=5
                                        # =>          This Inner Loop Header: Depth=6
	add.w	$a4, $s8, $fp
	slli.d	$a3, $a4, 3
	fldx.d	$fa2, $t2, $a3
	alsl.d	$a5, $a4, $s7, 3
	fldx.d	$fa3, $s7, $a3
	addi.w	$a4, $a4, 1
	slli.d	$a4, $a4, 3
	fldx.d	$fa4, $s7, $a4
	fld.d	$fa5, $a5, -8
	fldx.d	$fa6, $t3, $a4
	fldx.d	$fa7, $t3, $a3
	fsub.d	$fa4, $fa4, $fa3
	fsub.d	$fa5, $fa3, $fa5
	fneg.d	$fa5, $fa5
	fmul.d	$fa5, $fa7, $fa5
	fmadd.d	$fa4, $fa6, $fa4, $fa5
	add.w	$a4, $t1, $fp
	slli.d	$a4, $a4, 3
	fldx.d	$fa5, $t4, $a4
	fldx.d	$fa6, $s7, $a4
	add.w	$a4, $s2, $fp
	slli.d	$a4, $a4, 3
	fldx.d	$fa7, $s7, $a4
	fsub.d	$fa6, $fa6, $fa3
	fmadd.d	$fa4, $fa5, $fa6, $fa4
	fldx.d	$fa5, $t4, $a3
	fsub.d	$fa6, $fa3, $fa7
	add.w	$a4, $s4, $fp
	slli.d	$a4, $a4, 3
	fldx.d	$fa7, $s7, $a4
	fneg.d	$fa5, $fa5
	fmadd.d	$fa4, $fa5, $fa6, $fa4
	fldx.d	$fa5, $t5, $a4
	fsub.d	$fa6, $fa7, $fa3
	add.w	$a4, $s5, $fp
	slli.d	$a4, $a4, 3
	fldx.d	$fa7, $s7, $a4
	fldx.d	$ft0, $t5, $a3
	fmadd.d	$fa4, $fa5, $fa6, $fa4
	fmul.d	$fa2, $ft1, $fa2
	fsub.d	$fa5, $fa3, $fa7
	fneg.d	$fa6, $ft0
	fnmadd.d	$fa4, $fa6, $fa5, $fa4
	fldx.d	$fa5, $t6, $a3
	fldx.d	$fa6, $a7, $a3
	pcalau12i	$a4, %pc_hi20(.LCPI3_0)
	fld.d	$fa7, $a4, %pc_lo12(.LCPI3_0)
	fmul.d	$fa4, $fa0, $fa4
	fmadd.d	$fa2, $fa2, $fa3, $fa4
	fsub.d	$fa2, $fa2, $fa6
	fmul.d	$fa4, $fa5, $fa7
	fmadd.d	$fa2, $fa4, $fa2, $fa3
	fstx.d	$fa2, $t7, $a3
	addi.d	$a1, $a1, 1
	addi.d	$fp, $fp, 1
	blt	$a1, $t0, .LBB3_18
.LBB3_19:                               # %._crit_edge.us.us.us
                                        #   in Loop: Header=BB3_16 Depth=5
	addi.w	$a2, $a2, 1
	addi.d	$s3, $s3, 1
	ld.d	$a1, $sp, 872                   # 8-byte Folded Reload
	add.w	$ra, $ra, $a1
	add.w	$a6, $a6, $a1
	add.w	$a0, $a0, $a1
	ld.d	$a3, $sp, 888                   # 8-byte Folded Reload
	add.w	$a3, $a3, $a1
	st.d	$a3, $sp, 888                   # 8-byte Folded Spill
	ld.d	$a3, $sp, 896                   # 8-byte Folded Reload
	add.w	$a3, $a3, $a1
	st.d	$a3, $sp, 896                   # 8-byte Folded Spill
	add.d	$s5, $s5, $a1
	add.d	$s4, $s4, $a1
	add.d	$s2, $s2, $a1
	add.d	$t1, $t1, $a1
	add.d	$s8, $s8, $a1
	ld.d	$a1, $sp, 856                   # 8-byte Folded Reload
	blt	$a2, $a1, .LBB3_16
	b	.LBB3_14
	.p2align	4, , 16
.LBB3_20:                               # %vector.scevcheck
                                        #   in Loop: Header=BB3_16 Depth=5
	ld.d	$a1, $sp, 872                   # 8-byte Folded Reload
	mul.d	$a1, $a1, $s3
	ld.d	$a3, $sp, 808                   # 8-byte Folded Reload
	add.w	$a4, $a3, $a1
	ld.d	$a3, $sp, 880                   # 8-byte Folded Reload
	add.w	$a3, $a4, $a3
	ld.d	$fp, $sp, 904                   # 8-byte Folded Reload
	st.d	$a4, $sp, 832                   # 8-byte Folded Spill
	blt	$a3, $a4, .LBB3_17
# %bb.21:                               # %vector.scevcheck
                                        #   in Loop: Header=BB3_16 Depth=5
	ld.d	$a3, $sp, 760                   # 8-byte Folded Reload
	add.w	$a4, $a3, $a1
	ld.d	$a3, $sp, 880                   # 8-byte Folded Reload
	add.w	$a3, $a4, $a3
	ld.d	$fp, $sp, 904                   # 8-byte Folded Reload
	st.d	$a4, $sp, 824                   # 8-byte Folded Spill
	blt	$a3, $a4, .LBB3_17
# %bb.22:                               # %vector.scevcheck
                                        #   in Loop: Header=BB3_16 Depth=5
	ld.d	$a3, $sp, 752                   # 8-byte Folded Reload
	add.w	$a5, $a3, $a1
	ld.d	$a3, $sp, 880                   # 8-byte Folded Reload
	add.w	$a3, $a5, $a3
	ld.d	$fp, $sp, 904                   # 8-byte Folded Reload
	blt	$a3, $a5, .LBB3_17
# %bb.23:                               # %vector.scevcheck
                                        #   in Loop: Header=BB3_16 Depth=5
	ld.d	$a3, $sp, 744                   # 8-byte Folded Reload
	add.w	$a3, $a3, $a1
	ld.d	$a1, $sp, 880                   # 8-byte Folded Reload
	add.w	$a1, $a3, $a1
	ld.d	$fp, $sp, 904                   # 8-byte Folded Reload
	blt	$a1, $a3, .LBB3_17
# %bb.24:                               # %vector.scevcheck
                                        #   in Loop: Header=BB3_16 Depth=5
	ld.d	$a1, $sp, 880                   # 8-byte Folded Reload
	srli.d	$a1, $a1, 32
	ld.d	$fp, $sp, 904                   # 8-byte Folded Reload
	bnez	$a1, .LBB3_17
# %bb.25:                               # %vector.memcheck
                                        #   in Loop: Header=BB3_16 Depth=5
	move	$s1, $a3
	ld.d	$a1, $sp, 736                   # 8-byte Folded Reload
	alsl.d	$a1, $a5, $a1, 3
	ld.d	$a3, $sp, 848                   # 8-byte Folded Reload
	add.d	$t8, $a3, $a5
	ld.d	$a3, $sp, 728                   # 8-byte Folded Reload
	alsl.d	$s6, $t8, $a3, 3
	alsl.d	$fp, $a5, $t2, 3
	ld.d	$a3, $sp, 720                   # 8-byte Folded Reload
	alsl.d	$s0, $t8, $a3, 3
	sltu	$s0, $a1, $s0
	sltu	$fp, $fp, $s6
	and	$s0, $s0, $fp
	ld.d	$fp, $sp, 904                   # 8-byte Folded Reload
	bnez	$s0, .LBB3_17
# %bb.26:                               # %vector.memcheck
                                        #   in Loop: Header=BB3_16 Depth=5
	ld.d	$a3, $sp, 712                   # 8-byte Folded Reload
	alsl.d	$fp, $a5, $a3, 3
	ld.d	$a3, $sp, 704                   # 8-byte Folded Reload
	alsl.d	$s0, $t8, $a3, 3
	sltu	$s0, $a1, $s0
	sltu	$fp, $fp, $s6
	and	$s0, $s0, $fp
	ld.d	$fp, $sp, 904                   # 8-byte Folded Reload
	bnez	$s0, .LBB3_17
# %bb.27:                               # %vector.memcheck
                                        #   in Loop: Header=BB3_16 Depth=5
	ld.d	$a3, $sp, 816                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 832                   # 8-byte Folded Reload
	alsl.d	$fp, $a4, $a3, 3
	ld.d	$a3, $sp, 848                   # 8-byte Folded Reload
	add.d	$a4, $a3, $a4
	ld.d	$a3, $sp, 840                   # 8-byte Folded Reload
	st.d	$a4, $sp, 776                   # 8-byte Folded Spill
	alsl.d	$s0, $a4, $a3, 3
	sltu	$s0, $a1, $s0
	sltu	$fp, $fp, $s6
	and	$s0, $s0, $fp
	ld.d	$fp, $sp, 904                   # 8-byte Folded Reload
	bnez	$s0, .LBB3_17
# %bb.28:                               # %vector.memcheck
                                        #   in Loop: Header=BB3_16 Depth=5
	ld.d	$a3, $sp, 696                   # 8-byte Folded Reload
	alsl.d	$fp, $a5, $a3, 3
	ld.d	$a3, $sp, 688                   # 8-byte Folded Reload
	alsl.d	$s0, $t8, $a3, 3
	sltu	$s0, $a1, $s0
	sltu	$fp, $fp, $s6
	and	$s0, $s0, $fp
	ld.d	$fp, $sp, 904                   # 8-byte Folded Reload
	bnez	$s0, .LBB3_17
# %bb.29:                               # %vector.memcheck
                                        #   in Loop: Header=BB3_16 Depth=5
	ld.d	$a3, $sp, 816                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 824                   # 8-byte Folded Reload
	alsl.d	$fp, $a4, $a3, 3
	ld.d	$a3, $sp, 848                   # 8-byte Folded Reload
	add.d	$a4, $a3, $a4
	ld.d	$a3, $sp, 840                   # 8-byte Folded Reload
	st.d	$a4, $sp, 792                   # 8-byte Folded Spill
	alsl.d	$s0, $a4, $a3, 3
	sltu	$s0, $a1, $s0
	sltu	$fp, $fp, $s6
	and	$s0, $s0, $fp
	ld.d	$fp, $sp, 904                   # 8-byte Folded Reload
	bnez	$s0, .LBB3_17
# %bb.30:                               # %vector.memcheck
                                        #   in Loop: Header=BB3_16 Depth=5
	ld.d	$a3, $sp, 680                   # 8-byte Folded Reload
	alsl.d	$fp, $a5, $a3, 3
	ld.d	$a3, $sp, 840                   # 8-byte Folded Reload
	alsl.d	$s0, $t8, $a3, 3
	sltu	$s0, $a1, $s0
	sltu	$fp, $fp, $s6
	and	$s0, $s0, $fp
	ld.d	$fp, $sp, 904                   # 8-byte Folded Reload
	bnez	$s0, .LBB3_17
# %bb.31:                               # %vector.memcheck
                                        #   in Loop: Header=BB3_16 Depth=5
	ld.d	$a3, $sp, 816                   # 8-byte Folded Reload
	alsl.d	$fp, $s1, $a3, 3
	ld.d	$a3, $sp, 848                   # 8-byte Folded Reload
	add.d	$s0, $a3, $s1
	ld.d	$a3, $sp, 840                   # 8-byte Folded Reload
	alsl.d	$a3, $s0, $a3, 3
	sltu	$a3, $a1, $a3
	sltu	$fp, $fp, $s6
	and	$a3, $a3, $fp
	ld.d	$fp, $sp, 904                   # 8-byte Folded Reload
	bnez	$a3, .LBB3_17
# %bb.32:                               # %vector.memcheck
                                        #   in Loop: Header=BB3_16 Depth=5
	alsl.d	$a3, $a5, $t3, 3
	ld.d	$a4, $sp, 800                   # 8-byte Folded Reload
	alsl.d	$fp, $t8, $a4, 3
	sltu	$fp, $a1, $fp
	sltu	$a3, $a3, $s6
	and	$a3, $fp, $a3
	ld.d	$fp, $sp, 904                   # 8-byte Folded Reload
	bnez	$a3, .LBB3_17
# %bb.33:                               # %vector.memcheck
                                        #   in Loop: Header=BB3_16 Depth=5
	alsl.d	$a3, $s1, $t3, 3
	ld.d	$a4, $sp, 800                   # 8-byte Folded Reload
	alsl.d	$fp, $s0, $a4, 3
	sltu	$fp, $a1, $fp
	sltu	$a3, $a3, $s6
	and	$a3, $fp, $a3
	ld.d	$fp, $sp, 904                   # 8-byte Folded Reload
	bnez	$a3, .LBB3_17
# %bb.34:                               # %vector.memcheck
                                        #   in Loop: Header=BB3_16 Depth=5
	alsl.d	$a3, $a5, $t4, 3
	ld.d	$a4, $sp, 784                   # 8-byte Folded Reload
	alsl.d	$fp, $t8, $a4, 3
	sltu	$fp, $a1, $fp
	sltu	$a3, $a3, $s6
	and	$a3, $fp, $a3
	ld.d	$fp, $sp, 904                   # 8-byte Folded Reload
	bnez	$a3, .LBB3_17
# %bb.35:                               # %vector.memcheck
                                        #   in Loop: Header=BB3_16 Depth=5
	ld.d	$a3, $sp, 824                   # 8-byte Folded Reload
	alsl.d	$a3, $a3, $t4, 3
	ld.d	$a4, $sp, 784                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 792                   # 8-byte Folded Reload
	alsl.d	$fp, $fp, $a4, 3
	sltu	$fp, $a1, $fp
	sltu	$a3, $a3, $s6
	and	$a3, $fp, $a3
	ld.d	$fp, $sp, 904                   # 8-byte Folded Reload
	bnez	$a3, .LBB3_17
# %bb.36:                               # %vector.memcheck
                                        #   in Loop: Header=BB3_16 Depth=5
	alsl.d	$a3, $a5, $t5, 3
	ld.d	$a4, $sp, 768                   # 8-byte Folded Reload
	alsl.d	$fp, $t8, $a4, 3
	sltu	$fp, $a1, $fp
	sltu	$a3, $a3, $s6
	and	$a3, $fp, $a3
	ld.d	$fp, $sp, 904                   # 8-byte Folded Reload
	bnez	$a3, .LBB3_17
# %bb.37:                               # %vector.memcheck
                                        #   in Loop: Header=BB3_16 Depth=5
	ld.d	$a3, $sp, 832                   # 8-byte Folded Reload
	alsl.d	$a3, $a3, $t5, 3
	ld.d	$a4, $sp, 768                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 776                   # 8-byte Folded Reload
	alsl.d	$fp, $fp, $a4, 3
	sltu	$fp, $a1, $fp
	sltu	$a3, $a3, $s6
	and	$a3, $fp, $a3
	ld.d	$fp, $sp, 904                   # 8-byte Folded Reload
	bnez	$a3, .LBB3_17
# %bb.38:                               # %vector.memcheck
                                        #   in Loop: Header=BB3_16 Depth=5
	alsl.d	$a3, $a5, $t6, 3
	ld.d	$a4, $sp, 672                   # 8-byte Folded Reload
	alsl.d	$fp, $t8, $a4, 3
	sltu	$fp, $a1, $fp
	sltu	$a3, $a3, $s6
	and	$a3, $fp, $a3
	ld.d	$fp, $sp, 904                   # 8-byte Folded Reload
	bnez	$a3, .LBB3_17
# %bb.39:                               # %vector.memcheck
                                        #   in Loop: Header=BB3_16 Depth=5
	alsl.d	$a3, $a5, $a7, 3
	ld.d	$a4, $sp, 664                   # 8-byte Folded Reload
	alsl.d	$a5, $t8, $a4, 3
	sltu	$a1, $a1, $a5
	sltu	$a3, $a3, $s6
	and	$a1, $a1, $a3
	ld.d	$fp, $sp, 904                   # 8-byte Folded Reload
	bnez	$a1, .LBB3_17
# %bb.40:                               # %vector.ph
                                        #   in Loop: Header=BB3_16 Depth=5
	ld.d	$a1, $sp, 656                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 896                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 888                   # 8-byte Folded Reload
	move	$t8, $a0
	move	$fp, $a6
	move	$s0, $ra
	.p2align	4, , 16
.LBB3_41:                               # %vector.body
                                        #   Parent Loop BB3_4 Depth=1
                                        #     Parent Loop BB3_7 Depth=2
                                        #       Parent Loop BB3_10 Depth=3
                                        #         Parent Loop BB3_15 Depth=4
                                        #           Parent Loop BB3_16 Depth=5
                                        # =>          This Inner Loop Header: Depth=6
	slli.d	$s6, $s0, 3
	vldx	$vr2, $t2, $s6
	alsl.d	$a4, $s0, $s7, 3
	vldx	$vr3, $s7, $s6
	addi.w	$s1, $s0, 1
	slli.d	$s1, $s1, 3
	vldx	$vr4, $s7, $s1
	vld	$vr5, $a4, -8
	vldx	$vr6, $t3, $s1
	vldx	$vr7, $t3, $s6
	vfsub.d	$vr4, $vr4, $vr3
	vfsub.d	$vr5, $vr3, $vr5
	vbitrevi.d	$vr5, $vr5, 63
	vfmul.d	$vr5, $vr7, $vr5
	vfmadd.d	$vr4, $vr6, $vr4, $vr5
	slli.d	$a4, $fp, 3
	vldx	$vr5, $s7, $a4
	vldx	$vr6, $t4, $a4
	slli.d	$a4, $t8, 3
	vldx	$vr7, $s7, $a4
	vfsub.d	$vr5, $vr5, $vr3
	vfmadd.d	$vr4, $vr6, $vr5, $vr4
	vldx	$vr5, $t4, $s6
	vfsub.d	$vr6, $vr3, $vr7
	slli.d	$a4, $a5, 3
	vldx	$vr7, $s7, $a4
	vbitrevi.d	$vr5, $vr5, 63
	vfmadd.d	$vr4, $vr5, $vr6, $vr4
	vldx	$vr5, $t5, $a4
	vfsub.d	$vr6, $vr7, $vr3
	slli.d	$a4, $a3, 3
	vldx	$vr7, $s7, $a4
	vldx	$vr8, $t5, $s6
	vfmadd.d	$vr4, $vr5, $vr6, $vr4
	vfmul.d	$vr2, $vr10, $vr2
	vfsub.d	$vr5, $vr3, $vr7
	vbitrevi.d	$vr6, $vr8, 63
	vfnmadd.d	$vr4, $vr6, $vr5, $vr4
	vldx	$vr5, $a7, $s6
	vldx	$vr6, $t6, $s6
	vfmul.d	$vr4, $vr1, $vr4
	vfmadd.d	$vr2, $vr2, $vr3, $vr4
	vfsub.d	$vr2, $vr2, $vr5
	vfmul.d	$vr4, $vr6, $vr11
	vfmadd.d	$vr2, $vr4, $vr2, $vr3
	vstx	$vr2, $t7, $s6
	addi.w	$s0, $s0, 2
	addi.w	$fp, $fp, 2
	addi.w	$t8, $t8, 2
	addi.w	$a5, $a5, 2
	addi.d	$a1, $a1, -2
	addi.w	$a3, $a3, 2
	bnez	$a1, .LBB3_41
# %bb.42:                               # %middle.block
                                        #   in Loop: Header=BB3_16 Depth=5
	ld.d	$fp, $sp, 640                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 864                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 648                   # 8-byte Folded Reload
	bne	$a1, $a3, .LBB3_17
	b	.LBB3_19
.LBB3_43:
	fld.d	$fs0, $sp, 912                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 920                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 928                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 936                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 944                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 952                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 960                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 968                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 976                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 984                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 992                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 1000                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 1008
	ret
.Lfunc_end3:
	.size	smooth, .Lfunc_end3-smooth
                                        # -- End function
	.globl	apply_op                        # -- Begin function apply_op
	.p2align	5
	.type	apply_op,@function
apply_op:                               # @apply_op
# %bb.0:
	addi.d	$sp, $sp, -384
	st.d	$ra, $sp, 376                   # 8-byte Folded Spill
	st.d	$fp, $sp, 368                   # 8-byte Folded Spill
	st.d	$s0, $sp, 360                   # 8-byte Folded Spill
	st.d	$s1, $sp, 352                   # 8-byte Folded Spill
	st.d	$s2, $sp, 344                   # 8-byte Folded Spill
	st.d	$s3, $sp, 336                   # 8-byte Folded Spill
	st.d	$s4, $sp, 328                   # 8-byte Folded Spill
	st.d	$s5, $sp, 320                   # 8-byte Folded Spill
	st.d	$s6, $sp, 312                   # 8-byte Folded Spill
	st.d	$s7, $sp, 304                   # 8-byte Folded Spill
	st.d	$s8, $sp, 296                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 288                  # 8-byte Folded Spill
	fmov.d	$fs0, $fa1
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 16                   # 16-byte Folded Spill
	move	$s1, $a3
	move	$s0, $a2
	move	$s2, $a1
	move	$s3, $a0
	ori	$a3, $zero, 1
	move	$a2, $s1
	move	$a4, $zero
	move	$a5, $zero
	pcaddu18i	$ra, %call36(exchange_boundary)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(CycleTime)
	jirl	$ra, $ra, 0
	vld	$vr10, $sp, 16                  # 16-byte Folded Reload
	ld.w	$a1, $s3, 1600
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	alsl.d	$a0, $s2, $s3, 3
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	st.d	$a1, $sp, 96                    # 8-byte Folded Spill
	blez	$a1, .LBB4_41
# %bb.1:                                # %.lr.ph
	move	$a1, $zero
	ld.d	$a0, $s3, 1776
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	addi.d	$a0, $a0, 1616
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	vreplvei.d	$vr0, $vr10, 0
	ori	$a0, $zero, 216
	mul.d	$a0, $s2, $a0
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	slli.d	$a0, $s1, 3
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	slli.d	$a0, $s0, 3
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	ori	$t1, $zero, 8
	b	.LBB4_3
	.p2align	4, , 16
.LBB4_2:                                # %._crit_edge
                                        #   in Loop: Header=BB4_3 Depth=1
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	addi.d	$a1, $a1, 1
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	beq	$a1, $a0, .LBB4_41
.LBB4_3:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_8 Depth 2
                                        #       Child Loop BB4_9 Depth 3
                                        #         Child Loop BB4_33 Depth 4
                                        #         Child Loop BB4_12 Depth 4
	st.d	$a1, $sp, 104                   # 8-byte Folded Spill
	slli.d	$a0, $a1, 8
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	add.d	$a0, $a1, $a0
	ld.d	$a0, $a0, 248
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	add.d	$a0, $a0, $a1
	ld.w	$a1, $a0, 28
	st.d	$a1, $sp, 112                   # 8-byte Folded Spill
	blez	$a1, .LBB4_2
# %bb.4:                                # %.preheader149.lr.ph
                                        #   in Loop: Header=BB4_3 Depth=1
	ld.w	$t5, $a0, 24
	blez	$t5, .LBB4_2
# %bb.5:                                # %.preheader149.lr.ph
                                        #   in Loop: Header=BB4_3 Depth=1
	ld.w	$a1, $a0, 20
	st.d	$a1, $sp, 256                   # 8-byte Folded Spill
	blez	$a1, .LBB4_2
# %bb.6:                                # %.preheader149.us.us.preheader
                                        #   in Loop: Header=BB4_3 Depth=1
	ld.w	$t3, $a0, 48
	ld.d	$a1, $a0, 176
	ld.w	$t4, $a0, 52
	move	$s4, $zero
	move	$t6, $zero
	ld.w	$a0, $a0, 44
	ld.d	$a2, $sp, 64                    # 8-byte Folded Reload
	ldx.d	$a2, $a1, $a2
	add.d	$a3, $t3, $t4
	addi.d	$a3, $a3, 1
	ld.d	$a4, $sp, 56                    # 8-byte Folded Reload
	ldx.d	$a4, $a1, $a4
	ld.d	$a5, $a1, 16
	mul.w	$a0, $a0, $a3
	alsl.d	$t7, $a0, $a2, 3
	alsl.d	$t8, $a0, $a4, 3
	alsl.d	$s0, $a0, $a5, 3
	ld.d	$a3, $a1, 40
	ld.d	$a6, $a1, 48
	ld.d	$a1, $a1, 56
	ld.d	$a7, $sp, 72                    # 8-byte Folded Reload
	fld.d	$fa1, $a7, 0
	alsl.d	$s1, $a0, $a3, 3
	alsl.d	$s2, $a0, $a6, 3
	alsl.d	$s3, $a0, $a1, 3
	fmul.d	$fa1, $fa1, $fa1
	frecip.d	$fa1, $fa1
	fmul.d	$fa1, $fs0, $fa1
	ld.d	$t0, $sp, 256                   # 8-byte Folded Reload
	addi.d	$s5, $t0, -1
	slli.d	$a0, $a0, 3
	alsl.d	$a7, $t0, $a0, 3
	add.d	$a4, $a4, $a7
	st.d	$a4, $sp, 240                   # 8-byte Folded Spill
	add.d	$a4, $a5, $a7
	st.d	$a4, $sp, 232                   # 8-byte Folded Spill
	slli.d	$a4, $t4, 3
	sub.d	$a5, $a0, $a4
	add.d	$a5, $a2, $a5
	st.d	$a5, $sp, 216                   # 8-byte Folded Spill
	sub.d	$a4, $a7, $a4
	add.d	$a4, $a2, $a4
	st.d	$a4, $sp, 208                   # 8-byte Folded Spill
	add.d	$fp, $a2, $a7
	slli.d	$a4, $t3, 3
	sub.d	$a0, $a0, $a4
	add.d	$a0, $a2, $a0
	st.d	$a0, $sp, 200                   # 8-byte Folded Spill
	sub.d	$a0, $a7, $a4
	add.d	$a0, $a2, $a0
	st.d	$a0, $sp, 192                   # 8-byte Folded Spill
	add.d	$a0, $a3, $a7
	st.d	$a0, $sp, 184                   # 8-byte Folded Spill
	add.d	$a0, $a6, $a7
	st.d	$a0, $sp, 176                   # 8-byte Folded Spill
	add.d	$a0, $a1, $a7
	st.d	$a0, $sp, 168                   # 8-byte Folded Spill
	bstrpick.d	$a0, $t0, 30, 1
	slli.d	$a0, $a0, 1
	st.d	$a0, $sp, 224                   # 8-byte Folded Spill
	sub.d	$a0, $zero, $t4
	sub.d	$t0, $zero, $t3
	vreplvei.d	$vr2, $vr1, 0
	move	$s7, $t3
	move	$s8, $t0
	move	$ra, $t4
	move	$a3, $a0
	b	.LBB4_8
	.p2align	4, , 16
.LBB4_7:                                # %._crit_edge152.split.us.us.us
                                        #   in Loop: Header=BB4_8 Depth=2
	ld.d	$t6, $sp, 152                   # 8-byte Folded Reload
	addi.w	$t6, $t6, 1
	ld.d	$s4, $sp, 160                   # 8-byte Folded Reload
	add.w	$s4, $s4, $t4
	ld.d	$a3, $sp, 120                   # 8-byte Folded Reload
	add.d	$a3, $a3, $t4
	ld.d	$ra, $sp, 128                   # 8-byte Folded Reload
	add.d	$ra, $ra, $t4
	ld.d	$s8, $sp, 136                   # 8-byte Folded Reload
	add.d	$s8, $s8, $t4
	ld.d	$s7, $sp, 144                   # 8-byte Folded Reload
	add.d	$s7, $s7, $t4
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	beq	$t6, $a1, .LBB4_2
.LBB4_8:                                # %.preheader149.us.us
                                        #   Parent Loop BB4_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_9 Depth 3
                                        #         Child Loop BB4_33 Depth 4
                                        #         Child Loop BB4_12 Depth 4
	move	$a5, $zero
	st.d	$t6, $sp, 152                   # 8-byte Folded Spill
	mul.d	$a1, $t4, $t6
	add.d	$t2, $t4, $a1
	add.d	$a2, $t3, $a1
	st.d	$a2, $sp, 280                   # 8-byte Folded Spill
	st.d	$a1, $sp, 272                   # 8-byte Folded Spill
	addi.d	$a1, $a1, 1
	st.d	$a1, $sp, 264                   # 8-byte Folded Spill
	st.d	$s7, $sp, 144                   # 8-byte Folded Spill
	st.d	$s8, $sp, 136                   # 8-byte Folded Spill
	st.d	$ra, $sp, 128                   # 8-byte Folded Spill
	st.d	$a3, $sp, 120                   # 8-byte Folded Spill
	st.d	$s4, $sp, 160                   # 8-byte Folded Spill
	ld.d	$t6, $sp, 256                   # 8-byte Folded Reload
	st.d	$t2, $sp, 248                   # 8-byte Folded Spill
	.p2align	4, , 16
.LBB4_9:                                # %.preheader.us.us.us
                                        #   Parent Loop BB4_3 Depth=1
                                        #     Parent Loop BB4_8 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB4_33 Depth 4
                                        #         Child Loop BB4_12 Depth 4
	bgeu	$t6, $t1, .LBB4_14
# %bb.10:                               #   in Loop: Header=BB4_9 Depth=3
	move	$a1, $zero
.LBB4_11:                               # %scalar.ph.preheader
                                        #   in Loop: Header=BB4_9 Depth=3
	sub.d	$a2, $t6, $a1
	.p2align	4, , 16
.LBB4_12:                               # %scalar.ph
                                        #   Parent Loop BB4_3 Depth=1
                                        #     Parent Loop BB4_8 Depth=2
                                        #       Parent Loop BB4_9 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	add.w	$a4, $s4, $a1
	slli.d	$a6, $a4, 3
	fldx.d	$fa3, $s0, $a6
	alsl.d	$a7, $a4, $t7, 3
	fldx.d	$fa4, $t7, $a6
	addi.w	$a4, $a4, 1
	slli.d	$a4, $a4, 3
	fldx.d	$fa5, $t7, $a4
	fld.d	$fa6, $a7, -8
	fldx.d	$fa7, $s1, $a4
	fldx.d	$ft0, $s1, $a6
	fsub.d	$fa5, $fa5, $fa4
	fsub.d	$fa6, $fa4, $fa6
	fneg.d	$fa6, $fa6
	fmul.d	$fa6, $ft0, $fa6
	fmadd.d	$fa5, $fa7, $fa5, $fa6
	add.w	$a4, $s7, $a1
	slli.d	$a4, $a4, 3
	fldx.d	$fa6, $s2, $a4
	fldx.d	$fa7, $t7, $a4
	add.w	$a4, $s8, $a1
	slli.d	$a4, $a4, 3
	fldx.d	$ft0, $t7, $a4
	fsub.d	$fa7, $fa7, $fa4
	fmadd.d	$fa5, $fa6, $fa7, $fa5
	fldx.d	$fa6, $s2, $a6
	fsub.d	$fa7, $fa4, $ft0
	add.w	$a4, $ra, $a1
	slli.d	$a4, $a4, 3
	fldx.d	$ft0, $t7, $a4
	fneg.d	$fa6, $fa6
	fmadd.d	$fa5, $fa6, $fa7, $fa5
	fldx.d	$fa6, $s3, $a4
	fsub.d	$fa7, $ft0, $fa4
	add.w	$a4, $a3, $a1
	slli.d	$a4, $a4, 3
	fldx.d	$ft0, $t7, $a4
	fldx.d	$ft1, $s3, $a6
	fmadd.d	$fa5, $fa6, $fa7, $fa5
	fmul.d	$fa3, $ft2, $fa3
	fsub.d	$fa6, $fa4, $ft0
	fneg.d	$fa7, $ft1
	fnmadd.d	$fa5, $fa7, $fa6, $fa5
	fmul.d	$fa5, $fa1, $fa5
	fmadd.d	$fa3, $fa3, $fa4, $fa5
	fstx.d	$fa3, $t8, $a6
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, 1
	bnez	$a2, .LBB4_12
.LBB4_13:                               # %._crit_edge.us.us.us
                                        #   in Loop: Header=BB4_9 Depth=3
	addi.w	$a5, $a5, 1
	add.w	$s4, $s4, $t3
	add.d	$a3, $a3, $t3
	add.d	$ra, $ra, $t3
	add.d	$s8, $s8, $t3
	add.d	$s7, $s7, $t3
	bne	$a5, $t5, .LBB4_9
	b	.LBB4_7
	.p2align	4, , 16
.LBB4_14:                               # %vector.scevcheck
                                        #   in Loop: Header=BB4_9 Depth=3
	mul.d	$a2, $t3, $a5
	add.w	$a7, $t2, $a2
	add.w	$a4, $a7, $s5
	move	$a1, $zero
	blt	$a4, $a7, .LBB4_11
# %bb.15:                               # %vector.scevcheck
                                        #   in Loop: Header=BB4_9 Depth=3
	ld.d	$a4, $sp, 280                   # 8-byte Folded Reload
	add.w	$s6, $a4, $a2
	add.w	$a4, $s6, $s5
	blt	$a4, $s6, .LBB4_11
# %bb.16:                               # %vector.scevcheck
                                        #   in Loop: Header=BB4_9 Depth=3
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	add.w	$a4, $a4, $a2
	add.w	$a6, $a4, $s5
	blt	$a6, $a4, .LBB4_11
# %bb.17:                               # %vector.scevcheck
                                        #   in Loop: Header=BB4_9 Depth=3
	ld.d	$a6, $sp, 264                   # 8-byte Folded Reload
	add.w	$a6, $a6, $a2
	add.w	$a2, $a6, $s5
	blt	$a2, $a6, .LBB4_11
# %bb.18:                               # %vector.scevcheck
                                        #   in Loop: Header=BB4_9 Depth=3
	srli.d	$a2, $s5, 32
	bnez	$a2, .LBB4_11
# %bb.19:                               # %vector.memcheck
                                        #   in Loop: Header=BB4_9 Depth=3
	move	$t2, $fp
	move	$s5, $t5
	alsl.d	$a2, $a4, $t8, 3
	ld.d	$a1, $sp, 240                   # 8-byte Folded Reload
	alsl.d	$t5, $a4, $a1, 3
	alsl.d	$a1, $a4, $s0, 3
	ld.d	$t6, $sp, 232                   # 8-byte Folded Reload
	alsl.d	$t6, $a4, $t6, 3
	sltu	$t6, $a2, $t6
	sltu	$a1, $a1, $t5
	and	$t6, $t6, $a1
	move	$a1, $zero
	bnez	$t6, .LBB4_39
# %bb.20:                               # %vector.memcheck
                                        #   in Loop: Header=BB4_9 Depth=3
	ld.d	$t1, $sp, 216                   # 8-byte Folded Reload
	alsl.d	$t6, $a4, $t1, 3
	ld.d	$t1, $sp, 208                   # 8-byte Folded Reload
	alsl.d	$t1, $a4, $t1, 3
	sltu	$t1, $a2, $t1
	sltu	$t6, $t6, $t5
	and	$t1, $t1, $t6
	bnez	$t1, .LBB4_38
# %bb.21:                               # %vector.memcheck
                                        #   in Loop: Header=BB4_9 Depth=3
	alsl.d	$t1, $a7, $t7, 3
	alsl.d	$t6, $a7, $t2, 3
	sltu	$t6, $a2, $t6
	sltu	$t1, $t1, $t5
	and	$t1, $t6, $t1
	bnez	$t1, .LBB4_38
# %bb.22:                               # %vector.memcheck
                                        #   in Loop: Header=BB4_9 Depth=3
	ld.d	$t1, $sp, 200                   # 8-byte Folded Reload
	alsl.d	$t1, $a4, $t1, 3
	ld.d	$t6, $sp, 192                   # 8-byte Folded Reload
	alsl.d	$t6, $a4, $t6, 3
	sltu	$t6, $a2, $t6
	sltu	$t1, $t1, $t5
	and	$t1, $t6, $t1
	bnez	$t1, .LBB4_38
# %bb.23:                               # %vector.memcheck
                                        #   in Loop: Header=BB4_9 Depth=3
	alsl.d	$t1, $s6, $t7, 3
	move	$fp, $t2
	alsl.d	$t6, $s6, $t2, 3
	sltu	$t6, $a2, $t6
	sltu	$t1, $t1, $t5
	and	$t1, $t6, $t1
	bnez	$t1, .LBB4_40
# %bb.24:                               # %vector.memcheck
                                        #   in Loop: Header=BB4_9 Depth=3
	addi.d	$t1, $t7, -8
	alsl.d	$t1, $a4, $t1, 3
	alsl.d	$t6, $a4, $fp, 3
	sltu	$t6, $a2, $t6
	sltu	$t1, $t1, $t5
	and	$t1, $t6, $t1
	bnez	$t1, .LBB4_40
# %bb.25:                               # %vector.memcheck
                                        #   in Loop: Header=BB4_9 Depth=3
	alsl.d	$t1, $a6, $t7, 3
	alsl.d	$t6, $a6, $fp, 3
	sltu	$t6, $a2, $t6
	sltu	$t1, $t1, $t5
	and	$t1, $t6, $t1
	bnez	$t1, .LBB4_38
# %bb.26:                               # %vector.memcheck
                                        #   in Loop: Header=BB4_9 Depth=3
	alsl.d	$t1, $a4, $s1, 3
	ld.d	$fp, $sp, 184                   # 8-byte Folded Reload
	alsl.d	$t6, $a4, $fp, 3
	sltu	$t6, $a2, $t6
	sltu	$t1, $t1, $t5
	and	$t1, $t6, $t1
	bnez	$t1, .LBB4_38
# %bb.27:                               # %vector.memcheck
                                        #   in Loop: Header=BB4_9 Depth=3
	alsl.d	$t1, $a6, $s1, 3
	alsl.d	$a6, $a6, $fp, 3
	sltu	$a6, $a2, $a6
	sltu	$t1, $t1, $t5
	and	$a6, $a6, $t1
	ld.d	$t6, $sp, 256                   # 8-byte Folded Reload
	bnez	$a6, .LBB4_35
# %bb.28:                               # %vector.memcheck
                                        #   in Loop: Header=BB4_9 Depth=3
	alsl.d	$a6, $a4, $s2, 3
	ld.d	$fp, $sp, 176                   # 8-byte Folded Reload
	alsl.d	$t1, $a4, $fp, 3
	sltu	$t1, $a2, $t1
	sltu	$a6, $a6, $t5
	and	$a6, $t1, $a6
	bnez	$a6, .LBB4_35
# %bb.29:                               # %vector.memcheck
                                        #   in Loop: Header=BB4_9 Depth=3
	alsl.d	$a6, $s6, $s2, 3
	alsl.d	$t1, $s6, $fp, 3
	sltu	$t1, $a2, $t1
	sltu	$a6, $a6, $t5
	and	$a6, $t1, $a6
	bnez	$a6, .LBB4_35
# %bb.30:                               # %vector.memcheck
                                        #   in Loop: Header=BB4_9 Depth=3
	alsl.d	$a6, $a4, $s3, 3
	ld.d	$fp, $sp, 168                   # 8-byte Folded Reload
	alsl.d	$a4, $a4, $fp, 3
	sltu	$a4, $a2, $a4
	sltu	$a6, $a6, $t5
	and	$a4, $a4, $a6
	ori	$t1, $zero, 8
	bnez	$a4, .LBB4_36
# %bb.31:                               # %vector.memcheck
                                        #   in Loop: Header=BB4_9 Depth=3
	alsl.d	$a4, $a7, $s3, 3
	alsl.d	$a6, $a7, $fp, 3
	sltu	$a2, $a2, $a6
	sltu	$a4, $a4, $t5
	and	$a2, $a2, $a4
	move	$t5, $s5
	addi.d	$s5, $t6, -1
	move	$fp, $t2
	ld.d	$t2, $sp, 248                   # 8-byte Folded Reload
	bnez	$a2, .LBB4_11
# %bb.32:                               # %vector.body.preheader
                                        #   in Loop: Header=BB4_9 Depth=3
	move	$a1, $s4
	ld.d	$a2, $sp, 224                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB4_33:                               # %vector.body
                                        #   Parent Loop BB4_3 Depth=1
                                        #     Parent Loop BB4_8 Depth=2
                                        #       Parent Loop BB4_9 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	slli.d	$a4, $a1, 3
	vldx	$vr3, $s0, $a4
	alsl.d	$a6, $a1, $t7, 3
	vldx	$vr4, $t7, $a4
	addi.w	$a7, $a1, 1
	slli.d	$a7, $a7, 3
	vldx	$vr5, $t7, $a7
	vld	$vr6, $a6, -8
	vldx	$vr7, $s1, $a7
	vldx	$vr8, $s1, $a4
	vfsub.d	$vr5, $vr5, $vr4
	vfsub.d	$vr6, $vr4, $vr6
	vbitrevi.d	$vr6, $vr6, 63
	vfmul.d	$vr6, $vr8, $vr6
	vfmadd.d	$vr5, $vr7, $vr5, $vr6
	add.w	$a6, $t3, $a1
	slli.d	$a6, $a6, 3
	vldx	$vr6, $s2, $a6
	vldx	$vr7, $t7, $a6
	add.w	$a6, $t0, $a1
	slli.d	$a6, $a6, 3
	vldx	$vr8, $t7, $a6
	vfsub.d	$vr7, $vr7, $vr4
	vfmadd.d	$vr5, $vr6, $vr7, $vr5
	vldx	$vr6, $s2, $a4
	vfsub.d	$vr7, $vr4, $vr8
	add.w	$a6, $t4, $a1
	slli.d	$a6, $a6, 3
	vldx	$vr8, $t7, $a6
	vbitrevi.d	$vr6, $vr6, 63
	vfmadd.d	$vr5, $vr6, $vr7, $vr5
	vldx	$vr6, $s3, $a6
	vfsub.d	$vr7, $vr8, $vr4
	add.w	$a6, $a0, $a1
	slli.d	$a6, $a6, 3
	vldx	$vr8, $t7, $a6
	vldx	$vr9, $s3, $a4
	vfmadd.d	$vr5, $vr6, $vr7, $vr5
	vfmul.d	$vr3, $vr0, $vr3
	vfsub.d	$vr6, $vr4, $vr8
	vbitrevi.d	$vr7, $vr9, 63
	vfnmadd.d	$vr5, $vr7, $vr6, $vr5
	vfmul.d	$vr5, $vr2, $vr5
	vfmadd.d	$vr3, $vr3, $vr4, $vr5
	vstx	$vr3, $t8, $a4
	addi.d	$a2, $a2, -2
	addi.w	$a1, $a1, 2
	bnez	$a2, .LBB4_33
# %bb.34:                               # %middle.block
                                        #   in Loop: Header=BB4_9 Depth=3
	ld.d	$a2, $sp, 224                   # 8-byte Folded Reload
	move	$a1, $a2
	bne	$a2, $t6, .LBB4_11
	b	.LBB4_13
.LBB4_35:                               #   in Loop: Header=BB4_9 Depth=3
	ori	$t1, $zero, 8
.LBB4_36:                               #   in Loop: Header=BB4_9 Depth=3
	move	$t5, $s5
.LBB4_37:                               # %scalar.ph.preheader
                                        #   in Loop: Header=BB4_9 Depth=3
	addi.d	$s5, $t6, -1
	move	$fp, $t2
	ld.d	$t2, $sp, 248                   # 8-byte Folded Reload
	b	.LBB4_11
.LBB4_38:                               #   in Loop: Header=BB4_9 Depth=3
	ori	$t1, $zero, 8
.LBB4_39:                               #   in Loop: Header=BB4_9 Depth=3
	move	$t5, $s5
	ld.d	$t6, $sp, 256                   # 8-byte Folded Reload
	b	.LBB4_37
.LBB4_40:                               #   in Loop: Header=BB4_9 Depth=3
	ori	$t1, $zero, 8
	move	$t5, $s5
	ld.d	$t6, $sp, 256                   # 8-byte Folded Reload
	addi.d	$s5, $t6, -1
	ld.d	$t2, $sp, 248                   # 8-byte Folded Reload
	b	.LBB4_11
.LBB4_41:                               # %._crit_edge160
	pcaddu18i	$ra, %call36(CycleTime)
	jirl	$ra, $ra, 0
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a1, $a2, 80
	ld.d	$a3, $sp, 40                    # 8-byte Folded Reload
	sub.d	$a0, $a0, $a3
	add.d	$a0, $a0, $a1
	st.d	$a0, $a2, 80
	fld.d	$fs0, $sp, 288                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 296                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 304                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 312                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 320                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 328                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 336                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 344                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 352                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 360                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 368                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 376                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 384
	ret
.Lfunc_end4:
	.size	apply_op, .Lfunc_end4-apply_op
                                        # -- End function
	.globl	residual                        # -- Begin function residual
	.p2align	5
	.type	residual,@function
residual:                               # @residual
# %bb.0:
	addi.d	$sp, $sp, -400
	st.d	$ra, $sp, 392                   # 8-byte Folded Spill
	st.d	$fp, $sp, 384                   # 8-byte Folded Spill
	st.d	$s0, $sp, 376                   # 8-byte Folded Spill
	st.d	$s1, $sp, 368                   # 8-byte Folded Spill
	st.d	$s2, $sp, 360                   # 8-byte Folded Spill
	st.d	$s3, $sp, 352                   # 8-byte Folded Spill
	st.d	$s4, $sp, 344                   # 8-byte Folded Spill
	st.d	$s5, $sp, 336                   # 8-byte Folded Spill
	st.d	$s6, $sp, 328                   # 8-byte Folded Spill
	st.d	$s7, $sp, 320                   # 8-byte Folded Spill
	st.d	$s8, $sp, 312                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 304                  # 8-byte Folded Spill
	fmov.d	$fs0, $fa1
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 16                   # 16-byte Folded Spill
	move	$s0, $a4
	move	$s2, $a3
	move	$s1, $a2
	move	$s3, $a1
	move	$s4, $a0
	ori	$a3, $zero, 1
	move	$a2, $s2
	move	$a4, $zero
	move	$a5, $zero
	pcaddu18i	$ra, %call36(exchange_boundary)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(CycleTime)
	jirl	$ra, $ra, 0
	vld	$vr10, $sp, 16                  # 16-byte Folded Reload
	ld.w	$a1, $s4, 1600
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	alsl.d	$a0, $s3, $s4, 3
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	st.d	$a1, $sp, 96                    # 8-byte Folded Spill
	blez	$a1, .LBB5_41
# %bb.1:                                # %.lr.ph
	move	$a1, $zero
	ld.d	$a0, $s4, 1776
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	addi.d	$a0, $a0, 1616
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	vreplvei.d	$vr0, $vr10, 0
	ori	$a0, $zero, 216
	mul.d	$a0, $s3, $a0
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	slli.d	$a0, $s2, 3
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	slli.d	$a0, $s0, 3
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	slli.d	$a0, $s1, 3
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	ori	$s7, $zero, 8
	b	.LBB5_3
	.p2align	4, , 16
.LBB5_2:                                # %._crit_edge
                                        #   in Loop: Header=BB5_3 Depth=1
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	addi.d	$a1, $a1, 1
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	beq	$a1, $a0, .LBB5_41
.LBB5_3:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_8 Depth 2
                                        #       Child Loop BB5_9 Depth 3
                                        #         Child Loop BB5_34 Depth 4
                                        #         Child Loop BB5_12 Depth 4
	st.d	$a1, $sp, 104                   # 8-byte Folded Spill
	slli.d	$a0, $a1, 8
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	add.d	$a0, $a1, $a0
	ld.d	$a0, $a0, 248
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	add.d	$a0, $a0, $a1
	ld.w	$a1, $a0, 28
	st.d	$a1, $sp, 112                   # 8-byte Folded Spill
	blez	$a1, .LBB5_2
# %bb.4:                                # %.preheader152.lr.ph
                                        #   in Loop: Header=BB5_3 Depth=1
	ld.w	$a1, $a0, 24
	st.d	$a1, $sp, 296                   # 8-byte Folded Spill
	blez	$a1, .LBB5_2
# %bb.5:                                # %.preheader152.lr.ph
                                        #   in Loop: Header=BB5_3 Depth=1
	ld.w	$t3, $a0, 20
	blez	$t3, .LBB5_2
# %bb.6:                                # %.preheader152.us.us.preheader
                                        #   in Loop: Header=BB5_3 Depth=1
	ld.w	$t4, $a0, 48
	ld.d	$a1, $a0, 176
	ld.w	$t5, $a0, 52
	move	$t1, $zero
	move	$t2, $zero
	ld.w	$a0, $a0, 44
	ld.d	$a2, $sp, 64                    # 8-byte Folded Reload
	ldx.d	$a2, $a1, $a2
	add.d	$a3, $t4, $t5
	addi.d	$a3, $a3, 1
	mul.w	$a0, $a0, $a3
	ld.d	$a3, $sp, 56                    # 8-byte Folded Reload
	ldx.d	$a3, $a1, $a3
	ld.d	$a4, $a1, 16
	ld.d	$a5, $a1, 40
	alsl.d	$t8, $a0, $a2, 3
	alsl.d	$s0, $a0, $a3, 3
	alsl.d	$s1, $a0, $a4, 3
	alsl.d	$s2, $a0, $a5, 3
	ld.d	$a6, $a1, 48
	ld.d	$a7, $a1, 56
	ld.d	$t0, $sp, 48                    # 8-byte Folded Reload
	ldx.d	$a1, $a1, $t0
	ld.d	$t0, $sp, 72                    # 8-byte Folded Reload
	fld.d	$fa1, $t0, 0
	alsl.d	$s3, $a0, $a6, 3
	alsl.d	$s4, $a0, $a7, 3
	alsl.d	$s6, $a0, $a1, 3
	fmul.d	$fa1, $fa1, $fa1
	frecip.d	$fa1, $fa1
	fmul.d	$fa1, $fs0, $fa1
	slli.d	$a0, $a0, 3
	alsl.d	$t0, $t3, $a0, 3
	add.d	$a1, $a1, $t0
	st.d	$a1, $sp, 256                   # 8-byte Folded Spill
	add.d	$a1, $a4, $t0
	st.d	$a1, $sp, 248                   # 8-byte Folded Spill
	slli.d	$a1, $t5, 3
	sub.d	$a4, $a0, $a1
	add.d	$a4, $a2, $a4
	st.d	$a4, $sp, 232                   # 8-byte Folded Spill
	sub.d	$a1, $t0, $a1
	add.d	$a1, $a2, $a1
	st.d	$a1, $sp, 224                   # 8-byte Folded Spill
	add.d	$s5, $a2, $t0
	slli.d	$a1, $t4, 3
	sub.d	$a0, $a0, $a1
	add.d	$a0, $a2, $a0
	st.d	$a0, $sp, 216                   # 8-byte Folded Spill
	sub.d	$a0, $t0, $a1
	add.d	$a0, $a2, $a0
	st.d	$a0, $sp, 208                   # 8-byte Folded Spill
	add.d	$a0, $a5, $t0
	st.d	$a0, $sp, 200                   # 8-byte Folded Spill
	add.d	$a0, $a6, $t0
	st.d	$a0, $sp, 184                   # 8-byte Folded Spill
	add.d	$a0, $a7, $t0
	st.d	$a0, $sp, 176                   # 8-byte Folded Spill
	add.d	$a0, $a3, $t0
	st.d	$a0, $sp, 168                   # 8-byte Folded Spill
	bstrpick.d	$a0, $t3, 30, 1
	slli.d	$a0, $a0, 1
	st.d	$a0, $sp, 240                   # 8-byte Folded Spill
	sub.d	$a7, $zero, $t5
	sub.d	$a0, $zero, $t4
	vreplvei.d	$vr2, $vr1, 0
	move	$fp, $t4
	move	$a3, $a0
	move	$a5, $t5
	move	$a6, $a7
	st.d	$t5, $sp, 192                   # 8-byte Folded Spill
	b	.LBB5_8
	.p2align	4, , 16
.LBB5_7:                                # %._crit_edge155.split.us.us.us
                                        #   in Loop: Header=BB5_8 Depth=2
	ld.d	$t2, $sp, 152                   # 8-byte Folded Reload
	addi.w	$t2, $t2, 1
	ld.d	$t1, $sp, 160                   # 8-byte Folded Reload
	add.w	$t1, $t1, $t5
	ld.d	$a6, $sp, 120                   # 8-byte Folded Reload
	add.d	$a6, $a6, $t5
	ld.d	$a5, $sp, 128                   # 8-byte Folded Reload
	add.d	$a5, $a5, $t5
	ld.d	$a3, $sp, 136                   # 8-byte Folded Reload
	add.d	$a3, $a3, $t5
	ld.d	$fp, $sp, 144                   # 8-byte Folded Reload
	add.d	$fp, $fp, $t5
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	beq	$t2, $a1, .LBB5_2
.LBB5_8:                                # %.preheader152.us.us
                                        #   Parent Loop BB5_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB5_9 Depth 3
                                        #         Child Loop BB5_34 Depth 4
                                        #         Child Loop BB5_12 Depth 4
	move	$t6, $zero
	st.d	$t2, $sp, 152                   # 8-byte Folded Spill
	mul.d	$a1, $t5, $t2
	add.d	$a2, $t5, $a1
	st.d	$a2, $sp, 288                   # 8-byte Folded Spill
	add.d	$a2, $t4, $a1
	st.d	$a2, $sp, 280                   # 8-byte Folded Spill
	st.d	$a1, $sp, 272                   # 8-byte Folded Spill
	addi.d	$a1, $a1, 1
	st.d	$a1, $sp, 264                   # 8-byte Folded Spill
	st.d	$fp, $sp, 144                   # 8-byte Folded Spill
	st.d	$a3, $sp, 136                   # 8-byte Folded Spill
	st.d	$a5, $sp, 128                   # 8-byte Folded Spill
	st.d	$a6, $sp, 120                   # 8-byte Folded Spill
	st.d	$t1, $sp, 160                   # 8-byte Folded Spill
	.p2align	4, , 16
.LBB5_9:                                # %.preheader.us.us.us
                                        #   Parent Loop BB5_3 Depth=1
                                        #     Parent Loop BB5_8 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB5_34 Depth 4
                                        #         Child Loop BB5_12 Depth 4
	bgeu	$t3, $s7, .LBB5_14
# %bb.10:                               #   in Loop: Header=BB5_9 Depth=3
	move	$t0, $zero
.LBB5_11:                               # %scalar.ph.preheader
                                        #   in Loop: Header=BB5_9 Depth=3
	sub.d	$a1, $t3, $t0
	.p2align	4, , 16
.LBB5_12:                               # %scalar.ph
                                        #   Parent Loop BB5_3 Depth=1
                                        #     Parent Loop BB5_8 Depth=2
                                        #       Parent Loop BB5_9 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	add.w	$a4, $t1, $t0
	slli.d	$a2, $a4, 3
	fldx.d	$fa3, $s1, $a2
	alsl.d	$t2, $a4, $t8, 3
	fldx.d	$fa4, $t8, $a2
	addi.w	$a4, $a4, 1
	slli.d	$a4, $a4, 3
	fldx.d	$fa5, $t8, $a4
	fld.d	$fa6, $t2, -8
	fldx.d	$fa7, $s2, $a4
	fldx.d	$ft0, $s2, $a2
	fsub.d	$fa5, $fa5, $fa4
	fsub.d	$fa6, $fa4, $fa6
	fneg.d	$fa6, $fa6
	fmul.d	$fa6, $ft0, $fa6
	fmadd.d	$fa5, $fa7, $fa5, $fa6
	add.w	$a4, $fp, $t0
	slli.d	$a4, $a4, 3
	fldx.d	$fa6, $s3, $a4
	fldx.d	$fa7, $t8, $a4
	add.w	$a4, $a3, $t0
	slli.d	$a4, $a4, 3
	fldx.d	$ft0, $t8, $a4
	fsub.d	$fa7, $fa7, $fa4
	fmadd.d	$fa5, $fa6, $fa7, $fa5
	fldx.d	$fa6, $s3, $a2
	fsub.d	$fa7, $fa4, $ft0
	add.w	$a4, $a5, $t0
	slli.d	$a4, $a4, 3
	fldx.d	$ft0, $t8, $a4
	fneg.d	$fa6, $fa6
	fmadd.d	$fa5, $fa6, $fa7, $fa5
	fldx.d	$fa6, $s4, $a4
	fsub.d	$fa7, $ft0, $fa4
	add.w	$a4, $a6, $t0
	slli.d	$a4, $a4, 3
	fldx.d	$ft0, $t8, $a4
	fldx.d	$ft1, $s4, $a2
	fmadd.d	$fa5, $fa6, $fa7, $fa5
	fmul.d	$fa3, $ft2, $fa3
	fsub.d	$fa6, $fa4, $ft0
	fneg.d	$fa7, $ft1
	fldx.d	$ft0, $s0, $a2
	fnmadd.d	$fa5, $fa7, $fa6, $fa5
	fmul.d	$fa5, $fa1, $fa5
	fmadd.d	$fa3, $fa3, $fa4, $fa5
	fsub.d	$fa3, $ft0, $fa3
	fstx.d	$fa3, $s6, $a2
	addi.d	$a1, $a1, -1
	addi.d	$t0, $t0, 1
	bnez	$a1, .LBB5_12
.LBB5_13:                               # %._crit_edge.us.us.us
                                        #   in Loop: Header=BB5_9 Depth=3
	addi.w	$t6, $t6, 1
	add.w	$t1, $t1, $t4
	add.d	$a6, $a6, $t4
	add.d	$a5, $a5, $t4
	add.d	$a3, $a3, $t4
	add.d	$fp, $fp, $t4
	ld.d	$a1, $sp, 296                   # 8-byte Folded Reload
	bne	$t6, $a1, .LBB5_9
	b	.LBB5_7
	.p2align	4, , 16
.LBB5_14:                               # %vector.scevcheck
                                        #   in Loop: Header=BB5_9 Depth=3
	mul.d	$a4, $t4, $t6
	ld.d	$a1, $sp, 288                   # 8-byte Folded Reload
	add.w	$a1, $a1, $a4
	addi.d	$t2, $t3, -1
	add.w	$a2, $a1, $t2
	move	$t0, $zero
	blt	$a2, $a1, .LBB5_11
# %bb.15:                               # %vector.scevcheck
                                        #   in Loop: Header=BB5_9 Depth=3
	ld.d	$a2, $sp, 280                   # 8-byte Folded Reload
	add.w	$a2, $a2, $a4
	add.w	$t7, $a2, $t2
	blt	$t7, $a2, .LBB5_11
# %bb.16:                               # %vector.scevcheck
                                        #   in Loop: Header=BB5_9 Depth=3
	ld.d	$t7, $sp, 272                   # 8-byte Folded Reload
	add.w	$ra, $t7, $a4
	add.w	$t7, $ra, $t2
	blt	$t7, $ra, .LBB5_11
# %bb.17:                               # %vector.scevcheck
                                        #   in Loop: Header=BB5_9 Depth=3
	ld.d	$t7, $sp, 264                   # 8-byte Folded Reload
	add.w	$s8, $t7, $a4
	add.w	$a4, $s8, $t2
	blt	$a4, $s8, .LBB5_11
# %bb.18:                               # %vector.scevcheck
                                        #   in Loop: Header=BB5_9 Depth=3
	srli.d	$a4, $t2, 32
	bnez	$a4, .LBB5_11
# %bb.19:                               # %vector.memcheck
                                        #   in Loop: Header=BB5_9 Depth=3
	alsl.d	$t7, $ra, $s6, 3
	ld.d	$a4, $sp, 256                   # 8-byte Folded Reload
	alsl.d	$a4, $ra, $a4, 3
	alsl.d	$t0, $ra, $s1, 3
	ld.d	$t2, $sp, 248                   # 8-byte Folded Reload
	alsl.d	$t2, $ra, $t2, 3
	sltu	$t2, $t7, $t2
	sltu	$t0, $t0, $a4
	and	$t2, $t2, $t0
	move	$t0, $zero
	bnez	$t2, .LBB5_11
# %bb.20:                               # %vector.memcheck
                                        #   in Loop: Header=BB5_9 Depth=3
	ld.d	$t2, $sp, 232                   # 8-byte Folded Reload
	alsl.d	$t2, $ra, $t2, 3
	ld.d	$s7, $sp, 224                   # 8-byte Folded Reload
	alsl.d	$s7, $ra, $s7, 3
	sltu	$s7, $t7, $s7
	sltu	$t2, $t2, $a4
	and	$t2, $s7, $t2
	bnez	$t2, .LBB5_40
# %bb.21:                               # %vector.memcheck
                                        #   in Loop: Header=BB5_9 Depth=3
	alsl.d	$t2, $a1, $t8, 3
	alsl.d	$s7, $a1, $s5, 3
	sltu	$s7, $t7, $s7
	sltu	$t2, $t2, $a4
	and	$t2, $s7, $t2
	bnez	$t2, .LBB5_40
# %bb.22:                               # %vector.memcheck
                                        #   in Loop: Header=BB5_9 Depth=3
	ld.d	$t2, $sp, 216                   # 8-byte Folded Reload
	alsl.d	$t2, $ra, $t2, 3
	ld.d	$s7, $sp, 208                   # 8-byte Folded Reload
	alsl.d	$s7, $ra, $s7, 3
	sltu	$s7, $t7, $s7
	sltu	$t2, $t2, $a4
	and	$t2, $s7, $t2
	bnez	$t2, .LBB5_40
# %bb.23:                               # %vector.memcheck
                                        #   in Loop: Header=BB5_9 Depth=3
	alsl.d	$t2, $a2, $t8, 3
	alsl.d	$s7, $a2, $s5, 3
	sltu	$s7, $t7, $s7
	sltu	$t2, $t2, $a4
	and	$t2, $s7, $t2
	bnez	$t2, .LBB5_40
# %bb.24:                               # %vector.memcheck
                                        #   in Loop: Header=BB5_9 Depth=3
	addi.d	$t2, $t8, -8
	alsl.d	$t2, $ra, $t2, 3
	alsl.d	$s7, $ra, $s5, 3
	sltu	$s7, $t7, $s7
	sltu	$t2, $t2, $a4
	and	$t2, $s7, $t2
	bnez	$t2, .LBB5_40
# %bb.25:                               # %vector.memcheck
                                        #   in Loop: Header=BB5_9 Depth=3
	alsl.d	$t2, $s8, $t8, 3
	alsl.d	$s7, $s8, $s5, 3
	sltu	$s7, $t7, $s7
	sltu	$t2, $t2, $a4
	and	$t2, $s7, $t2
	bnez	$t2, .LBB5_40
# %bb.26:                               # %vector.memcheck
                                        #   in Loop: Header=BB5_9 Depth=3
	move	$t5, $t3
	move	$t3, $s5
	alsl.d	$t2, $ra, $s2, 3
	ld.d	$s5, $sp, 200                   # 8-byte Folded Reload
	alsl.d	$s7, $ra, $s5, 3
	sltu	$s7, $t7, $s7
	sltu	$t2, $t2, $a4
	and	$t2, $s7, $t2
	bnez	$t2, .LBB5_38
# %bb.27:                               # %vector.memcheck
                                        #   in Loop: Header=BB5_9 Depth=3
	alsl.d	$t2, $s8, $s2, 3
	alsl.d	$s7, $s8, $s5, 3
	sltu	$s7, $t7, $s7
	sltu	$t2, $t2, $a4
	and	$t2, $s7, $t2
	bnez	$t2, .LBB5_38
# %bb.28:                               # %vector.memcheck
                                        #   in Loop: Header=BB5_9 Depth=3
	alsl.d	$t2, $ra, $s3, 3
	ld.d	$s8, $sp, 184                   # 8-byte Folded Reload
	alsl.d	$s7, $ra, $s8, 3
	sltu	$s7, $t7, $s7
	sltu	$t2, $t2, $a4
	and	$t2, $s7, $t2
	move	$s5, $t3
	bnez	$t2, .LBB5_37
# %bb.29:                               # %vector.memcheck
                                        #   in Loop: Header=BB5_9 Depth=3
	alsl.d	$t2, $a2, $s3, 3
	alsl.d	$a2, $a2, $s8, 3
	sltu	$a2, $t7, $a2
	sltu	$t2, $t2, $a4
	and	$a2, $a2, $t2
	ori	$s7, $zero, 8
	move	$t3, $t5
	bnez	$a2, .LBB5_36
# %bb.30:                               # %vector.memcheck
                                        #   in Loop: Header=BB5_9 Depth=3
	alsl.d	$a2, $ra, $s4, 3
	ld.d	$s8, $sp, 176                   # 8-byte Folded Reload
	alsl.d	$t2, $ra, $s8, 3
	sltu	$t2, $t7, $t2
	sltu	$a2, $a2, $a4
	and	$a2, $t2, $a2
	ld.d	$t5, $sp, 192                   # 8-byte Folded Reload
	bnez	$a2, .LBB5_11
# %bb.31:                               # %vector.memcheck
                                        #   in Loop: Header=BB5_9 Depth=3
	alsl.d	$a2, $a1, $s4, 3
	alsl.d	$a1, $a1, $s8, 3
	sltu	$a1, $t7, $a1
	sltu	$a2, $a2, $a4
	and	$a1, $a1, $a2
	bnez	$a1, .LBB5_11
# %bb.32:                               # %vector.memcheck
                                        #   in Loop: Header=BB5_9 Depth=3
	alsl.d	$a1, $ra, $s0, 3
	ld.d	$a2, $sp, 168                   # 8-byte Folded Reload
	alsl.d	$a2, $ra, $a2, 3
	sltu	$a2, $t7, $a2
	sltu	$a1, $a1, $a4
	and	$a1, $a2, $a1
	bnez	$a1, .LBB5_11
# %bb.33:                               # %vector.body.preheader
                                        #   in Loop: Header=BB5_9 Depth=3
	move	$a1, $t1
	ld.d	$a2, $sp, 240                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB5_34:                               # %vector.body
                                        #   Parent Loop BB5_3 Depth=1
                                        #     Parent Loop BB5_8 Depth=2
                                        #       Parent Loop BB5_9 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	slli.d	$a4, $a1, 3
	vldx	$vr3, $s1, $a4
	alsl.d	$t0, $a1, $t8, 3
	vldx	$vr4, $t8, $a4
	addi.w	$t2, $a1, 1
	slli.d	$t2, $t2, 3
	vldx	$vr5, $t8, $t2
	vld	$vr6, $t0, -8
	vldx	$vr7, $s2, $t2
	vldx	$vr8, $s2, $a4
	vfsub.d	$vr5, $vr5, $vr4
	vfsub.d	$vr6, $vr4, $vr6
	vbitrevi.d	$vr6, $vr6, 63
	vfmul.d	$vr6, $vr8, $vr6
	vfmadd.d	$vr5, $vr7, $vr5, $vr6
	add.w	$t0, $t4, $a1
	slli.d	$t0, $t0, 3
	vldx	$vr6, $s3, $t0
	vldx	$vr7, $t8, $t0
	add.w	$t0, $a0, $a1
	slli.d	$t0, $t0, 3
	vldx	$vr8, $t8, $t0
	vfsub.d	$vr7, $vr7, $vr4
	vfmadd.d	$vr5, $vr6, $vr7, $vr5
	vldx	$vr6, $s3, $a4
	vfsub.d	$vr7, $vr4, $vr8
	add.w	$t0, $t5, $a1
	slli.d	$t0, $t0, 3
	vldx	$vr8, $t8, $t0
	vbitrevi.d	$vr6, $vr6, 63
	vfmadd.d	$vr5, $vr6, $vr7, $vr5
	vldx	$vr6, $s4, $t0
	vfsub.d	$vr7, $vr8, $vr4
	add.w	$t0, $a7, $a1
	slli.d	$t0, $t0, 3
	vldx	$vr8, $t8, $t0
	vldx	$vr9, $s4, $a4
	vfmadd.d	$vr5, $vr6, $vr7, $vr5
	vfmul.d	$vr3, $vr0, $vr3
	vfsub.d	$vr6, $vr4, $vr8
	vbitrevi.d	$vr7, $vr9, 63
	vldx	$vr8, $s0, $a4
	vfnmadd.d	$vr5, $vr7, $vr6, $vr5
	vfmul.d	$vr5, $vr2, $vr5
	vfmadd.d	$vr3, $vr3, $vr4, $vr5
	vfsub.d	$vr3, $vr8, $vr3
	vstx	$vr3, $s6, $a4
	addi.d	$a2, $a2, -2
	addi.w	$a1, $a1, 2
	bnez	$a2, .LBB5_34
# %bb.35:                               # %middle.block
                                        #   in Loop: Header=BB5_9 Depth=3
	ld.d	$a1, $sp, 240                   # 8-byte Folded Reload
	move	$t0, $a1
	bne	$a1, $t3, .LBB5_11
	b	.LBB5_13
.LBB5_36:                               #   in Loop: Header=BB5_9 Depth=3
	ld.d	$t5, $sp, 192                   # 8-byte Folded Reload
	b	.LBB5_11
.LBB5_37:                               #   in Loop: Header=BB5_9 Depth=3
	ori	$s7, $zero, 8
	b	.LBB5_39
.LBB5_38:                               #   in Loop: Header=BB5_9 Depth=3
	ori	$s7, $zero, 8
	move	$s5, $t3
.LBB5_39:                               # %scalar.ph.preheader
                                        #   in Loop: Header=BB5_9 Depth=3
	move	$t3, $t5
	ld.d	$t5, $sp, 192                   # 8-byte Folded Reload
	b	.LBB5_11
.LBB5_40:                               #   in Loop: Header=BB5_9 Depth=3
	ori	$s7, $zero, 8
	b	.LBB5_11
.LBB5_41:                               # %._crit_edge163
	pcaddu18i	$ra, %call36(CycleTime)
	jirl	$ra, $ra, 0
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a1, $a2, 160
	ld.d	$a3, $sp, 32                    # 8-byte Folded Reload
	sub.d	$a0, $a0, $a3
	add.d	$a0, $a0, $a1
	st.d	$a0, $a2, 160
	fld.d	$fs0, $sp, 304                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 312                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 320                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 328                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 336                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 344                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 352                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 360                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 368                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 376                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 384                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 392                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 400
	ret
.Lfunc_end5:
	.size	residual, .Lfunc_end5-residual
                                        # -- End function
	.globl	residual_and_restriction        # -- Begin function residual_and_restriction
	.p2align	5
	.type	residual_and_restriction,@function
residual_and_restriction:               # @residual_and_restriction
# %bb.0:
	addi.d	$sp, $sp, -480
	st.d	$ra, $sp, 472                   # 8-byte Folded Spill
	st.d	$fp, $sp, 464                   # 8-byte Folded Spill
	st.d	$s0, $sp, 456                   # 8-byte Folded Spill
	st.d	$s1, $sp, 448                   # 8-byte Folded Spill
	st.d	$s2, $sp, 440                   # 8-byte Folded Spill
	st.d	$s3, $sp, 432                   # 8-byte Folded Spill
	st.d	$s4, $sp, 424                   # 8-byte Folded Spill
	st.d	$s5, $sp, 416                   # 8-byte Folded Spill
	st.d	$s6, $sp, 408                   # 8-byte Folded Spill
	st.d	$s7, $sp, 400                   # 8-byte Folded Spill
	st.d	$s8, $sp, 392                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 384                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 376                  # 8-byte Folded Spill
	fmov.d	$fs0, $fa1
	fmov.d	$fs1, $fa0
	move	$s0, $a5
	move	$s3, $a4
	move	$s1, $a3
	move	$s2, $a2
	move	$s4, $a1
	move	$s5, $a0
	ori	$a3, $zero, 1
	move	$a4, $zero
	move	$a5, $zero
	pcaddu18i	$ra, %call36(exchange_boundary)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(CycleTime)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s5, 1600
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	alsl.d	$a0, $s4, $s5, 3
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	st.d	$a1, $sp, 80                    # 8-byte Folded Spill
	blez	$a1, .LBB6_41
# %bb.1:                                # %.lr.ph
	move	$a1, $zero
	ld.d	$a0, $s5, 1776
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	addi.d	$a0, $a0, 1616
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	ori	$a0, $zero, 216
	mul.d	$a2, $s3, $a0
	st.d	$a2, $sp, 56                    # 8-byte Folded Spill
	mul.d	$a0, $s4, $a0
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	slli.d	$a0, $s2, 3
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	slli.d	$a0, $s1, 3
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	slli.d	$a0, $s0, 3
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	vrepli.b	$vr0, 0
	vldi	$vr1, -960
	b	.LBB6_3
	.p2align	4, , 16
.LBB6_2:                                # %._crit_edge216
                                        #   in Loop: Header=BB6_3 Depth=1
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	addi.d	$a1, $a1, 1
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	beq	$a1, $a0, .LBB6_41
.LBB6_3:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_30 Depth 2
                                        #       Child Loop BB6_32 Depth 3
                                        #         Child Loop BB6_39 Depth 4
                                        #         Child Loop BB6_35 Depth 4
                                        #     Child Loop BB6_8 Depth 2
                                        #       Child Loop BB6_9 Depth 3
                                        #         Child Loop BB6_24 Depth 4
                                        #         Child Loop BB6_13 Depth 4
                                        #         Child Loop BB6_15 Depth 4
                                        #           Child Loop BB6_16 Depth 5
                                        #           Child Loop BB6_18 Depth 5
	st.d	$a1, $sp, 88                    # 8-byte Folded Spill
	slli.d	$a0, $a1, 8
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	add.d	$a0, $a1, $a0
	ld.d	$a1, $a0, 248
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	add.d	$a0, $a1, $a0
	ld.w	$a2, $a0, 28
	st.d	$a2, $sp, 104                   # 8-byte Folded Spill
	blez	$a2, .LBB6_2
# %bb.4:                                # %.preheader198.lr.ph
                                        #   in Loop: Header=BB6_3 Depth=1
	ld.w	$a2, $a0, 24
	st.d	$a2, $sp, 240                   # 8-byte Folded Spill
	blez	$a2, .LBB6_2
# %bb.5:                                # %.preheader198.lr.ph.split.us
                                        #   in Loop: Header=BB6_3 Depth=1
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	add.d	$a1, $a1, $a2
	ld.w	$t5, $a1, 48
	ld.wu	$t6, $a1, 20
	ld.w	$t7, $a1, 52
	ld.d	$a2, $a1, 176
	ld.w	$a1, $a1, 44
	addi.w	$s0, $t6, 0
	ld.w	$t0, $a0, 20
	ld.d	$a3, $sp, 48                    # 8-byte Folded Reload
	ldx.d	$a2, $a2, $a3
	add.d	$a3, $t5, $t7
	addi.d	$a3, $a3, 1
	mul.w	$a1, $a1, $a3
	alsl.d	$t8, $a1, $a2, 3
	blez	$t0, .LBB6_27
# %bb.6:                                # %.preheader198.us.us.preheader
                                        #   in Loop: Header=BB6_3 Depth=1
	ld.w	$t1, $a0, 48
	ld.d	$a1, $a0, 176
	ld.w	$s2, $a0, 52
	move	$t2, $zero
	st.d	$zero, $sp, 232                 # 8-byte Folded Spill
	ld.w	$a0, $a0, 44
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	ldx.d	$a2, $a1, $a2
	add.d	$t3, $t1, $s2
	addi.d	$a3, $t3, 1
	ld.d	$a4, $sp, 24                    # 8-byte Folded Reload
	ldx.d	$a4, $a1, $a4
	ld.d	$a5, $a1, 16
	mul.w	$a0, $a0, $a3
	alsl.d	$ra, $a0, $a2, 3
	alsl.d	$fp, $a0, $a4, 3
	alsl.d	$a3, $a0, $a5, 3
	ld.d	$a2, $a1, 40
	ld.d	$a4, $a1, 48
	ld.d	$a1, $a1, 56
	ld.d	$a5, $sp, 40                    # 8-byte Folded Reload
	fld.d	$fa2, $a5, 0
	alsl.d	$s6, $a0, $a2, 3
	move	$a2, $zero
	alsl.d	$a6, $a0, $a4, 3
	move	$a4, $zero
	alsl.d	$a7, $a0, $a1, 3
	fmul.d	$fa2, $fa2, $fa2
	frecip.d	$fa2, $fa2
	fmul.d	$fa2, $fs0, $fa2
	addi.d	$a0, $t6, -1
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	bstrpick.d	$a0, $t6, 30, 2
	slli.d	$a0, $a0, 2
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	sub.d	$t4, $zero, $s2
	slli.d	$a0, $s2, 1
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	slli.d	$a0, $t1, 1
	st.d	$a0, $sp, 368                   # 8-byte Folded Spill
	sub.d	$s1, $zero, $t1
	sub.d	$s3, $t1, $s2
	ori	$a0, $zero, 2
	st.d	$a0, $sp, 352                   # 8-byte Folded Spill
	st.d	$t1, $sp, 328                   # 8-byte Folded Spill
	move	$s4, $s2
	st.d	$t5, $sp, 168                   # 8-byte Folded Spill
	st.d	$t6, $sp, 160                   # 8-byte Folded Spill
	st.d	$t7, $sp, 344                   # 8-byte Folded Spill
	st.d	$s0, $sp, 152                   # 8-byte Folded Spill
	st.d	$t0, $sp, 336                   # 8-byte Folded Spill
	b	.LBB6_8
	.p2align	4, , 16
.LBB6_7:                                # %._crit_edge.split.us.us.us
                                        #   in Loop: Header=BB6_8 Depth=2
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	addi.w	$a1, $a1, 2
	ld.d	$a0, $sp, 352                   # 8-byte Folded Reload
	addi.w	$a0, $a0, 2
	st.d	$a0, $sp, 352                   # 8-byte Folded Spill
	addi.d	$t2, $t2, 1
	ld.d	$a4, $sp, 112                   # 8-byte Folded Reload
	add.w	$a4, $a4, $t7
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	add.d	$t4, $t4, $a0
	add.d	$s4, $s4, $a0
	add.d	$s1, $s1, $a0
	add.d	$t1, $t1, $a0
	ld.d	$a2, $sp, 120                   # 8-byte Folded Reload
	add.d	$a2, $a2, $a0
	add.d	$s3, $s3, $a0
	add.d	$t3, $t3, $a0
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	st.d	$a1, $sp, 232                   # 8-byte Folded Spill
	bge	$a1, $a0, .LBB6_2
.LBB6_8:                                # %.preheader198.us.us
                                        #   Parent Loop BB6_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB6_9 Depth 3
                                        #         Child Loop BB6_24 Depth 4
                                        #         Child Loop BB6_13 Depth 4
                                        #         Child Loop BB6_15 Depth 4
                                        #           Child Loop BB6_16 Depth 5
                                        #           Child Loop BB6_18 Depth 5
	move	$s5, $zero
	move	$s7, $zero
	mul.d	$a0, $t7, $t2
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	move	$s8, $t3
	move	$a5, $s3
	st.d	$a2, $sp, 120                   # 8-byte Folded Spill
	move	$a1, $a2
	st.d	$t1, $sp, 320                   # 8-byte Folded Spill
	st.d	$s1, $sp, 312                   # 8-byte Folded Spill
	st.d	$s4, $sp, 304                   # 8-byte Folded Spill
	st.d	$t4, $sp, 296                   # 8-byte Folded Spill
	st.d	$a4, $sp, 112                   # 8-byte Folded Spill
	st.d	$a4, $sp, 288                   # 8-byte Folded Spill
	st.d	$t2, $sp, 224                   # 8-byte Folded Spill
	st.d	$t3, $sp, 216                   # 8-byte Folded Spill
	st.d	$t4, $sp, 208                   # 8-byte Folded Spill
	st.d	$s1, $sp, 200                   # 8-byte Folded Spill
	st.d	$s3, $sp, 192                   # 8-byte Folded Spill
	st.d	$t1, $sp, 184                   # 8-byte Folded Spill
	st.d	$s4, $sp, 176                   # 8-byte Folded Spill
	.p2align	4, , 16
.LBB6_9:                                # %.preheader197.us.us.us
                                        #   Parent Loop BB6_3 Depth=1
                                        #     Parent Loop BB6_8 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB6_24 Depth 4
                                        #         Child Loop BB6_13 Depth 4
                                        #         Child Loop BB6_15 Depth 4
                                        #           Child Loop BB6_16 Depth 5
                                        #           Child Loop BB6_18 Depth 5
	st.d	$a1, $sp, 280                   # 8-byte Folded Spill
	blez	$s0, .LBB6_14
# %bb.10:                               # %.lr.ph.us.us.us
                                        #   in Loop: Header=BB6_9 Depth=3
	ori	$a0, $zero, 6
	bgeu	$t6, $a0, .LBB6_21
# %bb.11:                               #   in Loop: Header=BB6_9 Depth=3
	move	$a2, $zero
.LBB6_12:                               # %scalar.ph.preheader
                                        #   in Loop: Header=BB6_9 Depth=3
	ld.d	$a0, $sp, 288                   # 8-byte Folded Reload
	add.w	$a0, $a0, $a2
	sub.d	$a2, $t6, $a2
	.p2align	4, , 16
.LBB6_13:                               # %scalar.ph
                                        #   Parent Loop BB6_3 Depth=1
                                        #     Parent Loop BB6_8 Depth=2
                                        #       Parent Loop BB6_9 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	slli.d	$a4, $a0, 3
	stx.d	$zero, $t8, $a4
	addi.d	$a2, $a2, -1
	addi.w	$a0, $a0, 1
	bnez	$a2, .LBB6_13
.LBB6_14:                               # %.preheader196.us.us.us
                                        #   in Loop: Header=BB6_9 Depth=3
	st.d	$s5, $sp, 272                   # 8-byte Folded Spill
	st.d	$s7, $sp, 264                   # 8-byte Folded Spill
	bstrpick.d	$a0, $s7, 31, 1
	mul.d	$a0, $a0, $t5
	st.d	$a0, $sp, 360                   # 8-byte Folded Spill
	st.d	$s8, $sp, 256                   # 8-byte Folded Spill
	move	$a0, $s8
	st.d	$a5, $sp, 248                   # 8-byte Folded Spill
	move	$t2, $a5
	move	$s5, $a1
	ld.d	$s4, $sp, 320                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 312                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 304                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 296                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 232                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB6_15:                               # %.preheader195.us.us.us.us
                                        #   Parent Loop BB6_3 Depth=1
                                        #     Parent Loop BB6_8 Depth=2
                                        #       Parent Loop BB6_9 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB6_16 Depth 5
                                        #           Child Loop BB6_18 Depth 5
	move	$t4, $zero
	bstrpick.d	$a5, $s7, 31, 1
	mul.d	$a5, $a5, $t7
	ld.d	$a1, $sp, 360                   # 8-byte Folded Reload
	add.d	$t5, $a1, $a5
	move	$s0, $t0
	.p2align	4, , 16
.LBB6_16:                               #   Parent Loop BB6_3 Depth=1
                                        #     Parent Loop BB6_8 Depth=2
                                        #       Parent Loop BB6_9 Depth=3
                                        #         Parent Loop BB6_15 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	add.w	$a5, $s5, $t4
	bstrpick.d	$t6, $t4, 31, 1
	slli.d	$t7, $a5, 3
	alsl.d	$s8, $a5, $ra, 3
	fldx.d	$fa3, $ra, $t7
	addi.w	$a5, $a5, 1
	slli.d	$a5, $a5, 3
	fldx.d	$fa4, $ra, $a5
	fld.d	$fa5, $s8, -8
	fldx.d	$fa6, $s6, $a5
	fldx.d	$fa7, $s6, $t7
	fsub.d	$fa4, $fa4, $fa3
	fsub.d	$fa5, $fa3, $fa5
	fneg.d	$fa5, $fa5
	fmul.d	$fa5, $fa7, $fa5
	fmadd.d	$fa4, $fa6, $fa4, $fa5
	add.w	$a5, $s4, $t4
	slli.d	$a5, $a5, 3
	fldx.d	$fa5, $a6, $a5
	fldx.d	$fa6, $ra, $a5
	add.w	$a5, $a4, $t4
	slli.d	$a5, $a5, 3
	fldx.d	$fa7, $ra, $a5
	fldx.d	$ft0, $a6, $t7
	fsub.d	$fa6, $fa6, $fa3
	fmadd.d	$fa4, $fa5, $fa6, $fa4
	fsub.d	$fa5, $fa3, $fa7
	fneg.d	$fa6, $ft0
	add.w	$a5, $t1, $t4
	slli.d	$a5, $a5, 3
	fldx.d	$fa7, $ra, $a5
	fldx.d	$ft0, $a7, $a5
	fmadd.d	$fa4, $fa6, $fa5, $fa4
	fldx.d	$fa5, $a3, $t7
	fsub.d	$fa6, $fa7, $fa3
	fmadd.d	$fa4, $ft0, $fa6, $fa4
	add.w	$a5, $a2, $t4
	slli.d	$a5, $a5, 3
	fldx.d	$fa6, $ra, $a5
	fldx.d	$fa7, $a7, $t7
	add.w	$a5, $t5, $t6
	fmul.d	$fa5, $fs1, $fa5
	fsub.d	$fa6, $fa3, $fa6
	fneg.d	$fa7, $fa7
	fnmadd.d	$fa4, $fa7, $fa6, $fa4
	fldx.d	$fa6, $fp, $t7
	slli.d	$a5, $a5, 3
	fldx.d	$fa7, $t8, $a5
	fmul.d	$fa4, $fa2, $fa4
	fmadd.d	$fa3, $fa5, $fa3, $fa4
	fsub.d	$fa3, $fa6, $fa3
	fmadd.d	$fa3, $fa3, $fa1, $fa7
	fstx.d	$fa3, $t8, $a5
	addi.d	$s0, $s0, -1
	addi.w	$t4, $t4, 1
	bnez	$s0, .LBB6_16
# %bb.17:                               # %._crit_edge.us.us.us.us.us
                                        #   in Loop: Header=BB6_15 Depth=4
	move	$t6, $zero
	ld.d	$a1, $sp, 368                   # 8-byte Folded Reload
	add.d	$t4, $a1, $s5
	ld.d	$a1, $sp, 328                   # 8-byte Folded Reload
	add.d	$s8, $a1, $s5
	move	$s0, $t0
	.p2align	4, , 16
.LBB6_18:                               #   Parent Loop BB6_3 Depth=1
                                        #     Parent Loop BB6_8 Depth=2
                                        #       Parent Loop BB6_9 Depth=3
                                        #         Parent Loop BB6_15 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	add.w	$s1, $s8, $t6
	bstrpick.d	$a5, $t6, 31, 1
	slli.d	$t7, $s1, 3
	alsl.d	$s1, $s1, $ra, 3
	fldx.d	$fa3, $ra, $t7
	add.w	$s3, $t4, $t6
	add.w	$a1, $s5, $t6
	add.w	$t0, $a0, $t6
	add.w	$t3, $t2, $t6
	addi.w	$t6, $t6, 1
	fld.d	$fa4, $s1, -8
	add.w	$s1, $t6, $s8
	slli.d	$s1, $s1, 3
	fldx.d	$fa5, $s6, $s1
	fldx.d	$fa6, $s6, $t7
	fldx.d	$fa7, $ra, $s1
	fsub.d	$fa4, $fa3, $fa4
	fneg.d	$fa4, $fa4
	fmul.d	$fa4, $fa6, $fa4
	slli.d	$s1, $s3, 3
	fldx.d	$fa6, $a6, $s1
	fldx.d	$ft0, $ra, $s1
	fsub.d	$fa7, $fa7, $fa3
	fmadd.d	$fa4, $fa5, $fa7, $fa4
	slli.d	$a1, $a1, 3
	fldx.d	$fa5, $ra, $a1
	fldx.d	$fa7, $a6, $t7
	fsub.d	$ft0, $ft0, $fa3
	fmadd.d	$fa4, $fa6, $ft0, $fa4
	fsub.d	$fa5, $fa3, $fa5
	fneg.d	$fa6, $fa7
	slli.d	$a1, $t0, 3
	fldx.d	$fa7, $ra, $a1
	fldx.d	$ft0, $a7, $a1
	fmadd.d	$fa4, $fa6, $fa5, $fa4
	fldx.d	$fa5, $a3, $t7
	fsub.d	$fa6, $fa7, $fa3
	fmadd.d	$fa4, $ft0, $fa6, $fa4
	slli.d	$a1, $t3, 3
	fldx.d	$fa6, $ra, $a1
	fldx.d	$fa7, $a7, $t7
	add.w	$a1, $t5, $a5
	fmul.d	$fa5, $fs1, $fa5
	fsub.d	$fa6, $fa3, $fa6
	fneg.d	$fa7, $fa7
	fnmadd.d	$fa4, $fa7, $fa6, $fa4
	fldx.d	$fa6, $fp, $t7
	slli.d	$a1, $a1, 3
	fldx.d	$fa7, $t8, $a1
	fmul.d	$fa4, $fa2, $fa4
	fmadd.d	$fa3, $fa5, $fa3, $fa4
	fsub.d	$fa3, $fa6, $fa3
	fmadd.d	$fa3, $fa3, $fa1, $fa7
	addi.d	$s0, $s0, -1
	fstx.d	$fa3, $t8, $a1
	bnez	$s0, .LBB6_18
# %bb.19:                               # %._crit_edge.us.us.us.us.us.1
                                        #   in Loop: Header=BB6_15 Depth=4
	addi.w	$s7, $s7, 1
	add.d	$a2, $a2, $s2
	add.d	$t1, $t1, $s2
	add.d	$a4, $a4, $s2
	add.d	$s4, $s4, $s2
	add.d	$s5, $s5, $s2
	add.d	$t2, $t2, $s2
	add.d	$a0, $a0, $s2
	ld.d	$t7, $sp, 344                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 336                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 352                   # 8-byte Folded Reload
	bne	$s7, $a1, .LBB6_15
# %bb.20:                               # %.split205.us.us.us.us
                                        #   in Loop: Header=BB6_9 Depth=3
	ld.d	$s7, $sp, 264                   # 8-byte Folded Reload
	addi.w	$s7, $s7, 2
	ld.d	$s5, $sp, 272                   # 8-byte Folded Reload
	addi.d	$s5, $s5, 1
	ld.d	$t5, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 288                   # 8-byte Folded Reload
	add.w	$a0, $a0, $t5
	st.d	$a0, $sp, 288                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 368                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 296                   # 8-byte Folded Reload
	add.d	$a1, $a1, $a0
	st.d	$a1, $sp, 296                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 304                   # 8-byte Folded Reload
	add.d	$a1, $a1, $a0
	st.d	$a1, $sp, 304                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 312                   # 8-byte Folded Reload
	add.d	$a1, $a1, $a0
	st.d	$a1, $sp, 312                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 320                   # 8-byte Folded Reload
	add.d	$a1, $a1, $a0
	st.d	$a1, $sp, 320                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 280                   # 8-byte Folded Reload
	add.d	$a1, $a1, $a0
	ld.d	$a5, $sp, 248                   # 8-byte Folded Reload
	add.d	$a5, $a5, $a0
	ld.d	$s8, $sp, 256                   # 8-byte Folded Reload
	add.d	$s8, $s8, $a0
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	ld.d	$t6, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 224                   # 8-byte Folded Reload
	ld.d	$t3, $sp, 216                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 208                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 200                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 192                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 184                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 176                   # 8-byte Folded Reload
	blt	$s7, $a0, .LBB6_9
	b	.LBB6_7
	.p2align	4, , 16
.LBB6_21:                               # %vector.scevcheck
                                        #   in Loop: Header=BB6_9 Depth=3
	mul.d	$a0, $t5, $s5
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	add.w	$a0, $a1, $a0
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	add.w	$a4, $a0, $a1
	move	$a2, $zero
	blt	$a4, $a0, .LBB6_26
# %bb.22:                               # %vector.scevcheck
                                        #   in Loop: Header=BB6_9 Depth=3
	srli.d	$a0, $a1, 32
	ld.d	$a1, $sp, 280                   # 8-byte Folded Reload
	bnez	$a0, .LBB6_12
# %bb.23:                               # %vector.body.preheader
                                        #   in Loop: Header=BB6_9 Depth=3
	move	$a1, $a5
	ld.d	$a0, $sp, 288                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB6_24:                               # %vector.body
                                        #   Parent Loop BB6_3 Depth=1
                                        #     Parent Loop BB6_8 Depth=2
                                        #       Parent Loop BB6_9 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	alsl.d	$a4, $a0, $t8, 3
	slli.d	$a5, $a0, 3
	vstx	$vr0, $t8, $a5
	vst	$vr0, $a4, 16
	addi.d	$a2, $a2, -4
	addi.w	$a0, $a0, 4
	bnez	$a2, .LBB6_24
# %bb.25:                               # %middle.block
                                        #   in Loop: Header=BB6_9 Depth=3
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	move	$a2, $a0
	move	$a5, $a1
	ld.d	$a1, $sp, 280                   # 8-byte Folded Reload
	bne	$a0, $t6, .LBB6_12
	b	.LBB6_14
.LBB6_26:                               #   in Loop: Header=BB6_9 Depth=3
	ld.d	$a1, $sp, 280                   # 8-byte Folded Reload
	b	.LBB6_12
.LBB6_27:                               # %.preheader198.lr.ph.split.us.split
                                        #   in Loop: Header=BB6_3 Depth=1
	blez	$s0, .LBB6_2
# %bb.28:                               # %.preheader198.us.us232.preheader
                                        #   in Loop: Header=BB6_3 Depth=1
	move	$a0, $zero
	move	$a1, $zero
	move	$a2, $zero
	addi.d	$a3, $s0, -1
	bstrpick.d	$a4, $s0, 30, 2
	slli.d	$a4, $a4, 2
	b	.LBB6_30
	.p2align	4, , 16
.LBB6_29:                               # %._crit_edge.split.split.us.us.us
                                        #   in Loop: Header=BB6_30 Depth=2
	addi.w	$a2, $a2, 2
	addi.d	$a1, $a1, 1
	add.w	$a0, $a0, $t7
	ld.d	$a5, $sp, 104                   # 8-byte Folded Reload
	bge	$a2, $a5, .LBB6_2
.LBB6_30:                               # %.preheader198.us.us232
                                        #   Parent Loop BB6_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB6_32 Depth 3
                                        #         Child Loop BB6_39 Depth 4
                                        #         Child Loop BB6_35 Depth 4
	move	$a5, $zero
	move	$a6, $zero
	mul.d	$a7, $t7, $a1
	move	$t0, $a0
	b	.LBB6_32
	.p2align	4, , 16
.LBB6_31:                               # %..preheader196_crit_edge.us212.us.us
                                        #   in Loop: Header=BB6_32 Depth=3
	addi.w	$a6, $a6, 2
	addi.d	$a5, $a5, 1
	add.w	$t0, $t0, $t5
	ld.d	$t1, $sp, 240                   # 8-byte Folded Reload
	bge	$a6, $t1, .LBB6_29
.LBB6_32:                               # %.preheader197.us207.us.us
                                        #   Parent Loop BB6_3 Depth=1
                                        #     Parent Loop BB6_30 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB6_39 Depth 4
                                        #         Child Loop BB6_35 Depth 4
	ori	$t1, $zero, 6
	bgeu	$t6, $t1, .LBB6_36
# %bb.33:                               #   in Loop: Header=BB6_32 Depth=3
	move	$t1, $zero
.LBB6_34:                               # %scalar.ph274.preheader
                                        #   in Loop: Header=BB6_32 Depth=3
	add.w	$t2, $t0, $t1
	sub.d	$t1, $s0, $t1
	.p2align	4, , 16
.LBB6_35:                               # %scalar.ph274
                                        #   Parent Loop BB6_3 Depth=1
                                        #     Parent Loop BB6_30 Depth=2
                                        #       Parent Loop BB6_32 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	slli.d	$t3, $t2, 3
	stx.d	$zero, $t8, $t3
	addi.d	$t1, $t1, -1
	addi.w	$t2, $t2, 1
	bnez	$t1, .LBB6_35
	b	.LBB6_31
	.p2align	4, , 16
.LBB6_36:                               # %vector.scevcheck269
                                        #   in Loop: Header=BB6_32 Depth=3
	mul.d	$t1, $t5, $a5
	add.w	$t2, $a7, $t1
	add.w	$t3, $t2, $a3
	move	$t1, $zero
	blt	$t3, $t2, .LBB6_34
# %bb.37:                               # %vector.scevcheck269
                                        #   in Loop: Header=BB6_32 Depth=3
	srli.d	$t2, $a3, 32
	bnez	$t2, .LBB6_34
# %bb.38:                               # %vector.body279.preheader
                                        #   in Loop: Header=BB6_32 Depth=3
	move	$t1, $t0
	move	$t2, $a4
	.p2align	4, , 16
.LBB6_39:                               # %vector.body279
                                        #   Parent Loop BB6_3 Depth=1
                                        #     Parent Loop BB6_30 Depth=2
                                        #       Parent Loop BB6_32 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	alsl.d	$t3, $t1, $t8, 3
	slli.d	$t4, $t1, 3
	vstx	$vr0, $t8, $t4
	vst	$vr0, $t3, 16
	addi.d	$t2, $t2, -4
	addi.w	$t1, $t1, 4
	bnez	$t2, .LBB6_39
# %bb.40:                               # %middle.block282
                                        #   in Loop: Header=BB6_32 Depth=3
	move	$t1, $a4
	beq	$a4, $s0, .LBB6_31
	b	.LBB6_34
.LBB6_41:                               # %._crit_edge
	pcaddu18i	$ra, %call36(CycleTime)
	jirl	$ra, $ra, 0
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a1, $a2, 160
	ld.d	$a3, $sp, 8                     # 8-byte Folded Reload
	sub.d	$a0, $a0, $a3
	add.d	$a0, $a0, $a1
	st.d	$a0, $a2, 160
	fld.d	$fs1, $sp, 376                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 384                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 392                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 400                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 408                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 416                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 424                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 432                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 440                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 448                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 456                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 464                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 472                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 480
	ret
.Lfunc_end6:
	.size	residual_and_restriction, .Lfunc_end6-residual_and_restriction
                                        # -- End function
	.globl	restriction                     # -- Begin function restriction
	.p2align	5
	.type	restriction,@function
restriction:                            # @restriction
# %bb.0:
	addi.d	$sp, $sp, -304
	st.d	$ra, $sp, 296                   # 8-byte Folded Spill
	st.d	$fp, $sp, 288                   # 8-byte Folded Spill
	st.d	$s0, $sp, 280                   # 8-byte Folded Spill
	st.d	$s1, $sp, 272                   # 8-byte Folded Spill
	st.d	$s2, $sp, 264                   # 8-byte Folded Spill
	st.d	$s3, $sp, 256                   # 8-byte Folded Spill
	st.d	$s4, $sp, 248                   # 8-byte Folded Spill
	st.d	$s5, $sp, 240                   # 8-byte Folded Spill
	st.d	$s6, $sp, 232                   # 8-byte Folded Spill
	st.d	$s7, $sp, 224                   # 8-byte Folded Spill
	st.d	$s8, $sp, 216                   # 8-byte Folded Spill
	move	$s3, $a3
	move	$s2, $a2
	move	$fp, $a1
	move	$s0, $a0
	pcaddu18i	$ra, %call36(CycleTime)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s0, 1600
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	st.d	$a1, $sp, 72                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	blez	$a1, .LBB7_36
# %bb.1:                                # %.lr.ph
	move	$a1, $zero
	ld.d	$a0, $s0, 1776
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	ori	$a0, $zero, 216
	mul.d	$a0, $fp, $a0
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	slli.d	$a0, $s3, 3
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	slli.d	$a0, $s2, 3
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	ori	$s7, $zero, 32
	vldi	$vr0, -960
	ori	$a0, $zero, 0
	lu32i.d	$a0, 1
	vreplgr2vr.d	$vr1, $a0
	b	.LBB7_3
	.p2align	4, , 16
.LBB7_2:                                # %._crit_edge
                                        #   in Loop: Header=BB7_3 Depth=1
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	addi.d	$a1, $a1, 1
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	beq	$a1, $a0, .LBB7_36
.LBB7_3:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_8 Depth 2
                                        #       Child Loop BB7_9 Depth 3
                                        #         Child Loop BB7_33 Depth 4
                                        #         Child Loop BB7_12 Depth 4
	st.d	$a1, $sp, 80                    # 8-byte Folded Spill
	slli.d	$a0, $a1, 8
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	add.d	$a0, $a1, $a0
	ld.d	$a0, $a0, 248
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	add.d	$a0, $a0, $a1
	ld.w	$a1, $a0, 244
	st.d	$a1, $sp, 112                   # 8-byte Folded Spill
	blez	$a1, .LBB7_2
# %bb.4:                                #   in Loop: Header=BB7_3 Depth=1
	ld.w	$t0, $a0, 240
	blez	$t0, .LBB7_2
# %bb.5:                                #   in Loop: Header=BB7_3 Depth=1
	ld.w	$t1, $a0, 236
	blez	$t1, .LBB7_2
# %bb.6:                                # %.preheader102.us.us.preheader
                                        #   in Loop: Header=BB7_3 Depth=1
	move	$t2, $zero
	move	$t3, $zero
	move	$a5, $zero
	ld.w	$a1, $a0, 260
	ld.w	$t5, $a0, 264
	ld.w	$a6, $a0, 268
	ld.d	$a2, $a0, 176
	ld.w	$t7, $a0, 48
	ld.w	$a3, $a0, 44
	ld.w	$t8, $a0, 52
	ld.d	$a4, $sp, 48                    # 8-byte Folded Reload
	ldx.d	$a2, $a2, $a4
	addi.d	$a4, $t7, 1
	ld.d	$a0, $a0, 392
	add.d	$a4, $a4, $t8
	st.d	$a4, $sp, 96                    # 8-byte Folded Spill
	mul.w	$a3, $a4, $a3
	alsl.d	$s4, $a3, $a2, 3
	ld.d	$a4, $sp, 40                    # 8-byte Folded Reload
	ldx.d	$a0, $a0, $a4
	add.d	$a4, $t5, $a6
	addi.d	$a4, $a4, 1
	mul.w	$a1, $a4, $a1
	alsl.d	$s5, $a1, $a0, 3
	addi.d	$a4, $t1, -1
	slli.d	$a7, $t8, 1
	st.d	$a7, $sp, 88                    # 8-byte Folded Spill
	slli.d	$s8, $t7, 1
	add.d	$s1, $t7, $t8
	add.d	$a1, $a1, $t1
	alsl.d	$a0, $a1, $a0, 3
	st.d	$a0, $sp, 160                   # 8-byte Folded Spill
	slli.d	$a0, $t1, 4
	alsl.d	$a0, $a3, $a0, 3
	add.d	$a0, $a2, $a0
	addi.d	$s0, $a0, -8
	slli.d	$a4, $a4, 1
	bstrpick.d	$a0, $t1, 30, 1
	slli.d	$a0, $a0, 1
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	vinsgr2vr.w	$vr2, $t7, 0
	vinsgr2vr.w	$vr2, $t7, 1
	vinsgr2vr.w	$vr3, $t8, 0
	vinsgr2vr.w	$vr3, $t8, 1
	vadd.w	$vr4, $vr2, $vr3
	st.d	$a6, $sp, 104                   # 8-byte Folded Spill
	b	.LBB7_8
	.p2align	4, , 16
.LBB7_7:                                # %._crit_edge105.split.us.us.us
                                        #   in Loop: Header=BB7_8 Depth=2
	ld.d	$a5, $sp, 120                   # 8-byte Folded Reload
	addi.w	$a5, $a5, 1
	ld.d	$t3, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 104                   # 8-byte Folded Reload
	add.w	$t3, $t3, $a6
	ld.d	$t2, $sp, 136                   # 8-byte Folded Reload
	add.d	$t2, $t2, $t8
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	beq	$a5, $a0, .LBB7_2
.LBB7_8:                                # %.preheader102.us.us
                                        #   Parent Loop BB7_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB7_9 Depth 3
                                        #         Child Loop BB7_33 Depth 4
                                        #         Child Loop BB7_12 Depth 4
	move	$a2, $zero
	mul.d	$a0, $a6, $a5
	st.d	$a0, $sp, 168                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	mul.d	$a1, $a0, $a5
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	add.d	$a0, $a0, $a1
	add.d	$a3, $s1, $a1
	st.d	$a3, $sp, 208                   # 8-byte Folded Spill
	addi.d	$a3, $t8, 1
	add.d	$a3, $a3, $a1
	st.d	$a3, $sp, 200                   # 8-byte Folded Spill
	add.d	$a3, $t8, $a1
	st.d	$a3, $sp, 192                   # 8-byte Folded Spill
	addi.d	$a3, $t7, 1
	add.d	$a3, $a3, $a1
	st.d	$a3, $sp, 184                   # 8-byte Folded Spill
	add.d	$a3, $t7, $a1
	st.d	$a3, $sp, 176                   # 8-byte Folded Spill
	st.d	$a5, $sp, 120                   # 8-byte Folded Spill
	mul.d	$a3, $a5, $t8
	st.d	$a3, $sp, 144                   # 8-byte Folded Spill
	st.d	$t2, $sp, 136                   # 8-byte Folded Spill
	st.d	$t3, $sp, 128                   # 8-byte Folded Spill
	.p2align	4, , 16
.LBB7_9:                                # %.preheader.us.us.us
                                        #   Parent Loop BB7_3 Depth=1
                                        #     Parent Loop BB7_8 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB7_33 Depth 4
                                        #         Child Loop BB7_12 Depth 4
	bgeu	$t1, $s7, .LBB7_14
# %bb.10:                               #   in Loop: Header=BB7_9 Depth=3
	move	$a5, $zero
.LBB7_11:                               # %scalar.ph.preheader
                                        #   in Loop: Header=BB7_9 Depth=3
	add.d	$a3, $t2, $a5
	slli.w	$a3, $a3, 1
	add.w	$t4, $t3, $a5
	sub.d	$a5, $t1, $a5
	.p2align	4, , 16
.LBB7_12:                               # %scalar.ph
                                        #   Parent Loop BB7_3 Depth=1
                                        #     Parent Loop BB7_8 Depth=2
                                        #       Parent Loop BB7_9 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	slli.d	$a6, $a3, 3
	fldx.d	$fa5, $s4, $a6
	addi.w	$a6, $a3, 1
	slli.d	$a6, $a6, 3
	fldx.d	$fa6, $s4, $a6
	add.w	$a6, $t7, $a3
	slli.d	$a7, $a6, 3
	fldx.d	$fa7, $s4, $a7
	addi.w	$a6, $a6, 1
	slli.d	$a6, $a6, 3
	fldx.d	$ft0, $s4, $a6
	fadd.d	$fa5, $fa5, $fa6
	fadd.d	$fa5, $fa5, $fa7
	fadd.d	$fa5, $fa5, $ft0
	add.w	$a6, $t8, $a3
	slli.d	$a7, $a6, 3
	fldx.d	$fa6, $s4, $a7
	addi.w	$a6, $a6, 1
	slli.d	$a6, $a6, 3
	fldx.d	$fa7, $s4, $a6
	add.w	$a6, $s1, $a3
	slli.d	$a7, $a6, 3
	fldx.d	$ft0, $s4, $a7
	addi.w	$a6, $a6, 1
	slli.d	$a6, $a6, 3
	fldx.d	$ft1, $s4, $a6
	fadd.d	$fa5, $fa5, $fa6
	fadd.d	$fa5, $fa5, $fa7
	fadd.d	$fa5, $fa5, $ft0
	fadd.d	$fa5, $fa5, $ft1
	fmul.d	$fa5, $fa5, $fa0
	slli.d	$a6, $t4, 3
	fstx.d	$fa5, $s5, $a6
	addi.w	$a3, $a3, 2
	addi.d	$a5, $a5, -1
	addi.w	$t4, $t4, 1
	bnez	$a5, .LBB7_12
.LBB7_13:                               # %._crit_edge.us.us.us
                                        #   in Loop: Header=BB7_9 Depth=3
	addi.w	$a2, $a2, 1
	add.w	$t3, $t3, $t5
	add.d	$t2, $t2, $t7
	bne	$a2, $t0, .LBB7_9
	b	.LBB7_7
	.p2align	4, , 16
.LBB7_14:                               # %vector.scevcheck
                                        #   in Loop: Header=BB7_9 Depth=3
	mul.d	$a7, $s8, $a2
	add.w	$a6, $a0, $a7
	add.w	$a3, $a6, $a4
	move	$a5, $zero
	blt	$a3, $a6, .LBB7_11
# %bb.15:                               # %vector.scevcheck
                                        #   in Loop: Header=BB7_9 Depth=3
	ld.d	$a3, $sp, 208                   # 8-byte Folded Reload
	add.w	$s6, $a3, $a7
	add.w	$a3, $s6, $a4
	blt	$a3, $s6, .LBB7_11
# %bb.16:                               # %vector.scevcheck
                                        #   in Loop: Header=BB7_9 Depth=3
	ld.d	$a3, $sp, 200                   # 8-byte Folded Reload
	add.w	$s2, $a3, $a7
	add.w	$a3, $s2, $a4
	blt	$a3, $s2, .LBB7_11
# %bb.17:                               # %vector.scevcheck
                                        #   in Loop: Header=BB7_9 Depth=3
	ld.d	$a3, $sp, 192                   # 8-byte Folded Reload
	add.w	$s3, $a3, $a7
	add.w	$a3, $s3, $a4
	blt	$a3, $s3, .LBB7_11
# %bb.18:                               # %vector.scevcheck
                                        #   in Loop: Header=BB7_9 Depth=3
	ld.d	$a3, $sp, 184                   # 8-byte Folded Reload
	add.w	$a3, $a3, $a7
	add.w	$t4, $a3, $a4
	blt	$t4, $a3, .LBB7_11
# %bb.19:                               # %vector.scevcheck
                                        #   in Loop: Header=BB7_9 Depth=3
	ld.d	$t4, $sp, 176                   # 8-byte Folded Reload
	add.w	$t4, $t4, $a7
	add.w	$t6, $t4, $a4
	blt	$t6, $t4, .LBB7_11
# %bb.20:                               # %vector.scevcheck
                                        #   in Loop: Header=BB7_9 Depth=3
	ori	$t6, $a1, 1
	add.w	$t6, $t6, $a7
	add.w	$fp, $t6, $a4
	blt	$fp, $t6, .LBB7_11
# %bb.21:                               # %vector.scevcheck
                                        #   in Loop: Header=BB7_9 Depth=3
	mul.d	$fp, $t5, $a2
	ld.d	$ra, $sp, 168                   # 8-byte Folded Reload
	add.w	$ra, $ra, $fp
	addi.d	$fp, $t1, -1
	add.w	$fp, $ra, $fp
	blt	$fp, $ra, .LBB7_11
# %bb.22:                               # %vector.scevcheck
                                        #   in Loop: Header=BB7_9 Depth=3
	add.w	$fp, $a1, $a7
	add.w	$a7, $fp, $a4
	blt	$a7, $fp, .LBB7_11
# %bb.23:                               # %vector.scevcheck
                                        #   in Loop: Header=BB7_9 Depth=3
	addi.d	$a7, $t1, -1
	srli.d	$a7, $a7, 32
	bnez	$a7, .LBB7_11
# %bb.24:                               # %vector.memcheck
                                        #   in Loop: Header=BB7_9 Depth=3
	alsl.d	$s7, $ra, $s5, 3
	ld.d	$a5, $sp, 160                   # 8-byte Folded Reload
	alsl.d	$a7, $ra, $a5, 3
	alsl.d	$a5, $a6, $s4, 3
	alsl.d	$a6, $a6, $s0, 3
	sltu	$a6, $s7, $a6
	sltu	$a5, $a5, $a7
	and	$a6, $a6, $a5
	move	$a5, $zero
	bnez	$a6, .LBB7_35
# %bb.25:                               # %vector.memcheck
                                        #   in Loop: Header=BB7_9 Depth=3
	alsl.d	$a6, $s6, $s4, 3
	alsl.d	$s6, $s6, $s0, 3
	sltu	$s6, $s7, $s6
	sltu	$a6, $a6, $a7
	and	$a6, $s6, $a6
	bnez	$a6, .LBB7_35
# %bb.26:                               # %vector.memcheck
                                        #   in Loop: Header=BB7_9 Depth=3
	alsl.d	$a6, $s2, $s4, 3
	alsl.d	$s2, $s2, $s0, 3
	sltu	$s2, $s7, $s2
	sltu	$a6, $a6, $a7
	and	$a6, $s2, $a6
	bnez	$a6, .LBB7_35
# %bb.27:                               # %vector.memcheck
                                        #   in Loop: Header=BB7_9 Depth=3
	alsl.d	$a6, $s3, $s4, 3
	alsl.d	$s2, $s3, $s0, 3
	sltu	$s2, $s7, $s2
	sltu	$a6, $a6, $a7
	and	$a6, $s2, $a6
	bnez	$a6, .LBB7_35
# %bb.28:                               # %vector.memcheck
                                        #   in Loop: Header=BB7_9 Depth=3
	alsl.d	$a6, $a3, $s4, 3
	alsl.d	$a3, $a3, $s0, 3
	sltu	$a3, $s7, $a3
	sltu	$a6, $a6, $a7
	and	$a3, $a3, $a6
	bnez	$a3, .LBB7_35
# %bb.29:                               # %vector.memcheck
                                        #   in Loop: Header=BB7_9 Depth=3
	alsl.d	$a3, $t4, $s4, 3
	alsl.d	$a6, $t4, $s0, 3
	sltu	$a6, $s7, $a6
	sltu	$a3, $a3, $a7
	and	$a3, $a6, $a3
	bnez	$a3, .LBB7_35
# %bb.30:                               # %vector.memcheck
                                        #   in Loop: Header=BB7_9 Depth=3
	alsl.d	$a3, $t6, $s4, 3
	alsl.d	$a6, $t6, $s0, 3
	sltu	$a6, $s7, $a6
	sltu	$a3, $a3, $a7
	and	$a3, $a6, $a3
	bnez	$a3, .LBB7_35
# %bb.31:                               # %vector.memcheck
                                        #   in Loop: Header=BB7_9 Depth=3
	alsl.d	$a3, $fp, $s4, 3
	alsl.d	$a6, $fp, $s0, 3
	sltu	$a6, $s7, $a6
	sltu	$a3, $a3, $a7
	and	$a3, $a6, $a3
	ori	$s7, $zero, 32
	bnez	$a3, .LBB7_11
# %bb.32:                               # %vector.ph
                                        #   in Loop: Header=BB7_9 Depth=3
	mul.d	$a3, $a2, $t7
	ld.d	$a5, $sp, 144                   # 8-byte Folded Reload
	add.d	$a3, $a3, $a5
	vinsgr2vr.w	$vr5, $a3, 0
	vinsgr2vr.w	$vr5, $a3, 1
	move	$a5, $t3
	ld.d	$t6, $sp, 152                   # 8-byte Folded Reload
	vori.b	$vr6, $vr1, 0
	.p2align	4, , 16
.LBB7_33:                               # %vector.body
                                        #   Parent Loop BB7_3 Depth=1
                                        #     Parent Loop BB7_8 Depth=2
                                        #       Parent Loop BB7_9 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	vadd.w	$vr7, $vr5, $vr6
	vslli.w	$vr8, $vr7, 1
	vshuf4i.w	$vr7, $vr8, 16
	vslli.d	$vr7, $vr7, 32
	vsrai.d	$vr7, $vr7, 32
	vpickve2gr.d	$a3, $vr7, 0
	vpickve2gr.d	$a6, $vr7, 1
	slli.d	$a3, $a3, 3
	slli.d	$a6, $a6, 3
	fldx.d	$ft1, $s4, $a3
	fldx.d	$ft2, $s4, $a6
	vbitseti.w	$vr7, $vr8, 0
	vshuf4i.w	$vr11, $vr7, 16
	vslli.d	$vr11, $vr11, 32
	vsrai.d	$vr11, $vr11, 32
	vpickve2gr.d	$a3, $vr11, 0
	vpickve2gr.d	$a6, $vr11, 1
	slli.d	$a3, $a3, 3
	slli.d	$a6, $a6, 3
	fldx.d	$ft3, $s4, $a3
	fldx.d	$ft4, $s4, $a6
	vextrins.d	$vr9, $vr10, 16
	vextrins.d	$vr11, $vr12, 16
	vadd.w	$vr10, $vr8, $vr2
	vshuf4i.w	$vr10, $vr10, 16
	vslli.d	$vr10, $vr10, 32
	vsrai.d	$vr10, $vr10, 32
	vpickve2gr.d	$a3, $vr10, 0
	vpickve2gr.d	$a6, $vr10, 1
	slli.d	$a3, $a3, 3
	slli.d	$a6, $a6, 3
	fldx.d	$ft2, $s4, $a3
	fldx.d	$ft4, $s4, $a6
	vadd.w	$vr13, $vr7, $vr2
	vshuf4i.w	$vr13, $vr13, 16
	vslli.d	$vr13, $vr13, 32
	vsrai.d	$vr13, $vr13, 32
	vpickve2gr.d	$a3, $vr13, 0
	vpickve2gr.d	$a6, $vr13, 1
	slli.d	$a3, $a3, 3
	slli.d	$a6, $a6, 3
	fldx.d	$ft5, $s4, $a3
	fldx.d	$ft6, $s4, $a6
	vfadd.d	$vr9, $vr9, $vr11
	vextrins.d	$vr10, $vr12, 16
	vfadd.d	$vr9, $vr9, $vr10
	vextrins.d	$vr13, $vr14, 16
	vadd.w	$vr10, $vr8, $vr3
	vshuf4i.w	$vr10, $vr10, 16
	vslli.d	$vr10, $vr10, 32
	vsrai.d	$vr10, $vr10, 32
	vpickve2gr.d	$a3, $vr10, 0
	vpickve2gr.d	$a6, $vr10, 1
	slli.d	$a3, $a3, 3
	slli.d	$a6, $a6, 3
	fldx.d	$ft2, $s4, $a3
	fldx.d	$ft3, $s4, $a6
	vadd.w	$vr12, $vr7, $vr3
	vshuf4i.w	$vr12, $vr12, 16
	vslli.d	$vr12, $vr12, 32
	vsrai.d	$vr12, $vr12, 32
	vpickve2gr.d	$a3, $vr12, 0
	vpickve2gr.d	$a6, $vr12, 1
	slli.d	$a3, $a3, 3
	slli.d	$a6, $a6, 3
	fldx.d	$ft4, $s4, $a3
	fldx.d	$ft6, $s4, $a6
	vfadd.d	$vr9, $vr9, $vr13
	vextrins.d	$vr10, $vr11, 16
	vfadd.d	$vr9, $vr9, $vr10
	vextrins.d	$vr12, $vr14, 16
	vadd.w	$vr8, $vr8, $vr4
	vshuf4i.w	$vr8, $vr8, 16
	vslli.d	$vr8, $vr8, 32
	vsrai.d	$vr8, $vr8, 32
	vpickve2gr.d	$a3, $vr8, 0
	vpickve2gr.d	$a6, $vr8, 1
	slli.d	$a3, $a3, 3
	slli.d	$a6, $a6, 3
	fldx.d	$ft0, $s4, $a3
	fldx.d	$ft2, $s4, $a6
	vadd.w	$vr7, $vr7, $vr4
	vshuf4i.w	$vr7, $vr7, 16
	vslli.d	$vr7, $vr7, 32
	vsrai.d	$vr7, $vr7, 32
	vpickve2gr.d	$a3, $vr7, 0
	vpickve2gr.d	$a6, $vr7, 1
	slli.d	$a3, $a3, 3
	slli.d	$a6, $a6, 3
	fldx.d	$fa7, $s4, $a3
	fldx.d	$ft3, $s4, $a6
	vfadd.d	$vr9, $vr9, $vr12
	vextrins.d	$vr8, $vr10, 16
	vfadd.d	$vr8, $vr9, $vr8
	vextrins.d	$vr7, $vr11, 16
	vfadd.d	$vr7, $vr8, $vr7
	vfmul.d	$vr7, $vr7, $vr0
	slli.d	$a3, $a5, 3
	vstx	$vr7, $s5, $a3
	vaddi.wu	$vr6, $vr6, 2
	addi.d	$t6, $t6, -2
	addi.w	$a5, $a5, 2
	bnez	$t6, .LBB7_33
# %bb.34:                               # %middle.block
                                        #   in Loop: Header=BB7_9 Depth=3
	ld.d	$a3, $sp, 152                   # 8-byte Folded Reload
	move	$a5, $a3
	bne	$a3, $t1, .LBB7_11
	b	.LBB7_13
.LBB7_35:                               #   in Loop: Header=BB7_9 Depth=3
	ori	$s7, $zero, 32
	b	.LBB7_11
.LBB7_36:                               # %._crit_edge113
	pcaddu18i	$ra, %call36(CycleTime)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	alsl.d	$a1, $a1, $a2, 3
	ld.d	$a2, $a1, 240
	ld.d	$a3, $sp, 16                    # 8-byte Folded Reload
	sub.d	$a0, $a0, $a3
	add.d	$a0, $a0, $a2
	st.d	$a0, $a1, 240
	ld.d	$s8, $sp, 216                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 224                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 232                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 240                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 248                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 256                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 264                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 272                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 280                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 288                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 296                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 304
	ret
.Lfunc_end7:
	.size	restriction, .Lfunc_end7-restriction
                                        # -- End function
	.globl	restriction_betas               # -- Begin function restriction_betas
	.p2align	5
	.type	restriction_betas,@function
restriction_betas:                      # @restriction_betas
# %bb.0:
	addi.d	$sp, $sp, -320
	st.d	$ra, $sp, 312                   # 8-byte Folded Spill
	st.d	$fp, $sp, 304                   # 8-byte Folded Spill
	st.d	$s0, $sp, 296                   # 8-byte Folded Spill
	st.d	$s1, $sp, 288                   # 8-byte Folded Spill
	st.d	$s2, $sp, 280                   # 8-byte Folded Spill
	st.d	$s3, $sp, 272                   # 8-byte Folded Spill
	st.d	$s4, $sp, 264                   # 8-byte Folded Spill
	st.d	$s5, $sp, 256                   # 8-byte Folded Spill
	st.d	$s6, $sp, 248                   # 8-byte Folded Spill
	st.d	$s7, $sp, 240                   # 8-byte Folded Spill
	st.d	$s8, $sp, 232                   # 8-byte Folded Spill
	move	$s2, $a2
	move	$fp, $a1
	move	$s0, $a0
	pcaddu18i	$ra, %call36(CycleTime)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s0, 1600
	st.d	$a1, $sp, 64                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	blez	$a1, .LBB8_75
# %bb.1:                                # %.lr.ph
	move	$a1, $zero
	ld.d	$a0, $s0, 1776
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	ori	$a0, $zero, 216
	mul.d	$a2, $s2, $a0
	st.d	$a2, $sp, 48                    # 8-byte Folded Spill
	mul.d	$a0, $fp, $a0
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	ori	$a5, $zero, 20
	vldi	$vr0, -944
	ori	$a0, $zero, 0
	lu32i.d	$a0, 1
	st.d	$a0, $sp, 200                   # 8-byte Folded Spill
	vreplgr2vr.d	$vr1, $a0
	b	.LBB8_3
	.p2align	4, , 16
.LBB8_2:                                # %._crit_edge224
                                        #   in Loop: Header=BB8_3 Depth=1
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	addi.d	$a1, $a1, 1
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	beq	$a1, $a0, .LBB8_75
.LBB8_3:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_8 Depth 2
                                        #       Child Loop BB8_9 Depth 3
                                        #         Child Loop BB8_25 Depth 4
                                        #         Child Loop BB8_12 Depth 4
                                        #     Child Loop BB8_32 Depth 2
                                        #       Child Loop BB8_33 Depth 3
                                        #         Child Loop BB8_49 Depth 4
                                        #         Child Loop BB8_36 Depth 4
                                        #     Child Loop BB8_56 Depth 2
                                        #       Child Loop BB8_57 Depth 3
                                        #         Child Loop BB8_73 Depth 4
                                        #         Child Loop BB8_60 Depth 4
	st.d	$a1, $sp, 72                    # 8-byte Folded Spill
	slli.d	$a0, $a1, 8
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	add.d	$a0, $a1, $a0
	ld.d	$a0, $a0, 248
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	add.d	$a1, $a0, $a1
	ld.w	$a7, $a1, 48
	ld.w	$a6, $a1, 52
	ld.w	$t1, $a1, 20
	ld.w	$t2, $a1, 24
	ld.w	$a3, $a1, 28
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	add.d	$a0, $a0, $a2
	ld.w	$t4, $a0, 52
	ld.w	$a2, $a0, 44
	ld.w	$t5, $a0, 48
	ld.d	$a0, $a0, 176
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	ld.w	$a4, $a1, 44
	mul.w	$a0, $t4, $a2
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	ld.d	$a0, $a1, 176
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	st.d	$a2, $sp, 136                   # 8-byte Folded Spill
	mul.w	$a0, $t5, $a2
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	mul.w	$a0, $a6, $a4
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	st.d	$a4, $sp, 112                   # 8-byte Folded Spill
	mul.w	$a0, $a7, $a4
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	st.d	$a6, $sp, 176                   # 8-byte Folded Spill
	st.d	$a3, $sp, 184                   # 8-byte Folded Spill
	blez	$a3, .LBB8_27
# %bb.4:                                #   in Loop: Header=BB8_3 Depth=1
	blez	$t2, .LBB8_27
# %bb.5:                                #   in Loop: Header=BB8_3 Depth=1
	blez	$t1, .LBB8_27
# %bb.6:                                # %.preheader200.us.us.preheader
                                        #   in Loop: Header=BB8_3 Depth=1
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 40
	move	$s7, $zero
	move	$s8, $zero
	move	$s3, $zero
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a1, $a1, 40
	ld.d	$t3, $sp, 128                   # 8-byte Folded Reload
	alsl.d	$a2, $t3, $a0, 3
	ld.d	$t6, $sp, 120                   # 8-byte Folded Reload
	alsl.d	$a2, $t6, $a2, 3
	ld.d	$t0, $sp, 136                   # 8-byte Folded Reload
	alsl.d	$s1, $t0, $a2, 3
	ld.d	$t8, $sp, 104                   # 8-byte Folded Reload
	alsl.d	$a2, $t8, $a1, 3
	ld.d	$s0, $sp, 96                    # 8-byte Folded Reload
	alsl.d	$a2, $s0, $a2, 3
	ld.d	$t7, $sp, 112                   # 8-byte Folded Reload
	alsl.d	$fp, $t7, $a2, 3
	addi.d	$s2, $t1, -1
	slli.d	$a2, $t4, 1
	st.d	$a2, $sp, 144                   # 8-byte Folded Spill
	slli.d	$a3, $t5, 1
	add.d	$a4, $t5, $t4
	add.d	$a2, $t7, $s0
	add.d	$a2, $a2, $t8
	alsl.d	$t7, $a2, $a1, 3
	st.d	$t7, $sp, 216                   # 8-byte Folded Spill
	add.d	$a2, $a2, $t1
	alsl.d	$a1, $a2, $a1, 3
	st.d	$a1, $sp, 208                   # 8-byte Folded Spill
	slli.d	$a1, $t0, 3
	alsl.d	$a1, $t6, $a1, 3
	alsl.d	$a1, $t3, $a1, 3
	add.d	$s6, $a0, $a1
	alsl.d	$a1, $t1, $a1, 4
	add.d	$a0, $a0, $a1
	addi.d	$t7, $a0, -8
	slli.d	$t8, $s2, 1
	bstrpick.d	$a0, $t1, 30, 1
	slli.d	$t0, $a0, 1
	vinsgr2vr.w	$vr2, $t5, 0
	vinsgr2vr.w	$vr2, $t5, 1
	vinsgr2vr.w	$vr3, $t4, 0
	vinsgr2vr.w	$vr3, $t4, 1
	vadd.w	$vr4, $vr2, $vr3
	b	.LBB8_8
	.p2align	4, , 16
.LBB8_7:                                # %._crit_edge203.split.us.us.us
                                        #   in Loop: Header=BB8_8 Depth=2
	ld.d	$s3, $sp, 152                   # 8-byte Folded Reload
	addi.w	$s3, $s3, 1
	ld.d	$a6, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 160                   # 8-byte Folded Reload
	add.w	$s8, $s8, $a6
	ld.d	$s7, $sp, 168                   # 8-byte Folded Reload
	add.d	$s7, $s7, $t4
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	beq	$s3, $a0, .LBB8_27
.LBB8_8:                                # %.preheader200.us.us
                                        #   Parent Loop BB8_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB8_9 Depth 3
                                        #         Child Loop BB8_25 Depth 4
                                        #         Child Loop BB8_12 Depth 4
	move	$a0, $zero
	mul.d	$a1, $a6, $s3
	st.d	$a1, $sp, 224                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	mul.d	$t6, $a1, $s3
	add.d	$s2, $a4, $t6
	add.d	$t3, $t4, $t6
	add.d	$a2, $t5, $t6
	st.d	$s3, $sp, 152                   # 8-byte Folded Spill
	mul.d	$a1, $s3, $t4
	st.d	$a1, $sp, 192                   # 8-byte Folded Spill
	st.d	$s7, $sp, 168                   # 8-byte Folded Spill
	st.d	$s8, $sp, 160                   # 8-byte Folded Spill
	.p2align	4, , 16
.LBB8_9:                                # %.preheader197.us.us.us
                                        #   Parent Loop BB8_3 Depth=1
                                        #     Parent Loop BB8_8 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB8_25 Depth 4
                                        #         Child Loop BB8_12 Depth 4
	bgeu	$t1, $a5, .LBB8_14
# %bb.10:                               #   in Loop: Header=BB8_9 Depth=3
	move	$s3, $zero
.LBB8_11:                               # %scalar.ph443.preheader
                                        #   in Loop: Header=BB8_9 Depth=3
	add.d	$a1, $s7, $s3
	slli.w	$a6, $a1, 1
	add.w	$a1, $s8, $s3
	sub.d	$s3, $t1, $s3
	.p2align	4, , 16
.LBB8_12:                               # %scalar.ph443
                                        #   Parent Loop BB8_3 Depth=1
                                        #     Parent Loop BB8_8 Depth=2
                                        #       Parent Loop BB8_9 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	slli.d	$s0, $a6, 3
	fldx.d	$fa5, $s1, $s0
	add.w	$s0, $t5, $a6
	slli.d	$s0, $s0, 3
	fldx.d	$fa6, $s1, $s0
	add.w	$s0, $t4, $a6
	slli.d	$s0, $s0, 3
	fldx.d	$fa7, $s1, $s0
	add.w	$s0, $a4, $a6
	slli.d	$s0, $s0, 3
	fldx.d	$ft0, $s1, $s0
	fadd.d	$fa5, $fa5, $fa6
	fadd.d	$fa5, $fa5, $fa7
	fadd.d	$fa5, $fa5, $ft0
	fmul.d	$fa5, $fa5, $fa0
	slli.d	$s0, $a1, 3
	fstx.d	$fa5, $fp, $s0
	addi.w	$a6, $a6, 2
	addi.d	$s3, $s3, -1
	addi.w	$a1, $a1, 1
	bnez	$s3, .LBB8_12
.LBB8_13:                               # %._crit_edge.us.us.us
                                        #   in Loop: Header=BB8_9 Depth=3
	addi.w	$a0, $a0, 1
	add.w	$s8, $s8, $a7
	add.d	$s7, $s7, $t5
	bne	$a0, $t2, .LBB8_9
	b	.LBB8_7
	.p2align	4, , 16
.LBB8_14:                               # %vector.scevcheck390
                                        #   in Loop: Header=BB8_9 Depth=3
	mul.d	$a1, $a3, $a0
	add.w	$s0, $s2, $a1
	add.w	$a6, $s0, $t8
	move	$s3, $zero
	blt	$a6, $s0, .LBB8_11
# %bb.15:                               # %vector.scevcheck390
                                        #   in Loop: Header=BB8_9 Depth=3
	add.w	$s5, $t3, $a1
	add.w	$a6, $s5, $t8
	blt	$a6, $s5, .LBB8_11
# %bb.16:                               # %vector.scevcheck390
                                        #   in Loop: Header=BB8_9 Depth=3
	add.w	$a6, $a2, $a1
	add.w	$s4, $a6, $t8
	blt	$s4, $a6, .LBB8_11
# %bb.17:                               # %vector.scevcheck390
                                        #   in Loop: Header=BB8_9 Depth=3
	mul.d	$s4, $a7, $a0
	ld.d	$ra, $sp, 224                   # 8-byte Folded Reload
	add.w	$s4, $ra, $s4
	addi.d	$ra, $t1, -1
	add.w	$ra, $s4, $ra
	blt	$ra, $s4, .LBB8_11
# %bb.18:                               # %vector.scevcheck390
                                        #   in Loop: Header=BB8_9 Depth=3
	add.w	$a1, $t6, $a1
	add.w	$ra, $a1, $t8
	blt	$ra, $a1, .LBB8_11
# %bb.19:                               # %vector.scevcheck390
                                        #   in Loop: Header=BB8_9 Depth=3
	addi.d	$ra, $t1, -1
	srli.d	$ra, $ra, 32
	bnez	$ra, .LBB8_11
# %bb.20:                               # %vector.memcheck403
                                        #   in Loop: Header=BB8_9 Depth=3
	ld.d	$s3, $sp, 216                   # 8-byte Folded Reload
	alsl.d	$ra, $s4, $s3, 3
	ld.d	$s3, $sp, 208                   # 8-byte Folded Reload
	alsl.d	$s4, $s4, $s3, 3
	alsl.d	$s3, $s0, $s6, 3
	alsl.d	$s0, $s0, $t7, 3
	sltu	$s0, $ra, $s0
	sltu	$s3, $s3, $s4
	and	$s0, $s0, $s3
	move	$s3, $zero
	bnez	$s0, .LBB8_11
# %bb.21:                               # %vector.memcheck403
                                        #   in Loop: Header=BB8_9 Depth=3
	alsl.d	$s0, $s5, $s6, 3
	alsl.d	$s5, $s5, $t7, 3
	sltu	$s5, $ra, $s5
	sltu	$s0, $s0, $s4
	and	$s0, $s5, $s0
	bnez	$s0, .LBB8_11
# %bb.22:                               # %vector.memcheck403
                                        #   in Loop: Header=BB8_9 Depth=3
	alsl.d	$s0, $a6, $s6, 3
	alsl.d	$a6, $a6, $t7, 3
	sltu	$a6, $ra, $a6
	sltu	$s0, $s0, $s4
	and	$a6, $a6, $s0
	bnez	$a6, .LBB8_11
# %bb.23:                               # %vector.memcheck403
                                        #   in Loop: Header=BB8_9 Depth=3
	alsl.d	$a6, $a1, $s6, 3
	alsl.d	$a1, $a1, $t7, 3
	sltu	$a1, $ra, $a1
	sltu	$a6, $a6, $s4
	and	$a1, $a1, $a6
	bnez	$a1, .LBB8_11
# %bb.24:                               # %vector.ph445
                                        #   in Loop: Header=BB8_9 Depth=3
	mul.d	$a1, $a0, $t5
	ld.d	$a6, $sp, 192                   # 8-byte Folded Reload
	add.d	$a1, $a1, $a6
	vinsgr2vr.w	$vr5, $a1, 0
	vinsgr2vr.w	$vr5, $a1, 1
	move	$s3, $s8
	move	$a6, $t0
	vori.b	$vr6, $vr1, 0
	.p2align	4, , 16
.LBB8_25:                               # %vector.body454
                                        #   Parent Loop BB8_3 Depth=1
                                        #     Parent Loop BB8_8 Depth=2
                                        #       Parent Loop BB8_9 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	vadd.w	$vr7, $vr5, $vr6
	vslli.w	$vr7, $vr7, 1
	vshuf4i.w	$vr8, $vr7, 16
	vslli.d	$vr8, $vr8, 32
	vsrai.d	$vr8, $vr8, 32
	vpickve2gr.d	$a1, $vr8, 0
	vpickve2gr.d	$s0, $vr8, 1
	slli.d	$a1, $a1, 3
	slli.d	$s0, $s0, 3
	fldx.d	$ft0, $s1, $a1
	fldx.d	$ft1, $s1, $s0
	vadd.w	$vr10, $vr7, $vr2
	vshuf4i.w	$vr10, $vr10, 16
	vslli.d	$vr10, $vr10, 32
	vsrai.d	$vr10, $vr10, 32
	vpickve2gr.d	$a1, $vr10, 0
	vpickve2gr.d	$s0, $vr10, 1
	slli.d	$a1, $a1, 3
	slli.d	$s0, $s0, 3
	fldx.d	$ft2, $s1, $a1
	fldx.d	$ft3, $s1, $s0
	vextrins.d	$vr8, $vr9, 16
	vextrins.d	$vr10, $vr11, 16
	vadd.w	$vr9, $vr7, $vr3
	vshuf4i.w	$vr9, $vr9, 16
	vslli.d	$vr9, $vr9, 32
	vsrai.d	$vr9, $vr9, 32
	vpickve2gr.d	$a1, $vr9, 0
	vpickve2gr.d	$s0, $vr9, 1
	slli.d	$a1, $a1, 3
	slli.d	$s0, $s0, 3
	fldx.d	$ft1, $s1, $a1
	fldx.d	$ft3, $s1, $s0
	vadd.w	$vr7, $vr7, $vr4
	vshuf4i.w	$vr7, $vr7, 16
	vslli.d	$vr7, $vr7, 32
	vsrai.d	$vr7, $vr7, 32
	vpickve2gr.d	$a1, $vr7, 0
	vpickve2gr.d	$s0, $vr7, 1
	slli.d	$a1, $a1, 3
	slli.d	$s0, $s0, 3
	fldx.d	$fa7, $s1, $a1
	fldx.d	$ft4, $s1, $s0
	vfadd.d	$vr8, $vr8, $vr10
	vextrins.d	$vr9, $vr11, 16
	vfadd.d	$vr8, $vr8, $vr9
	vextrins.d	$vr7, $vr12, 16
	vfadd.d	$vr7, $vr8, $vr7
	vfmul.d	$vr7, $vr7, $vr0
	slli.d	$a1, $s3, 3
	vstx	$vr7, $fp, $a1
	vaddi.wu	$vr6, $vr6, 2
	addi.d	$a6, $a6, -2
	addi.w	$s3, $s3, 2
	bnez	$a6, .LBB8_25
# %bb.26:                               # %middle.block459
                                        #   in Loop: Header=BB8_9 Depth=3
	move	$s3, $t0
	bne	$t0, $t1, .LBB8_11
	b	.LBB8_13
	.p2align	4, , 16
.LBB8_27:                               # %._crit_edge
                                        #   in Loop: Header=BB8_3 Depth=1
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	blez	$a0, .LBB8_51
# %bb.28:                               # %._crit_edge
                                        #   in Loop: Header=BB8_3 Depth=1
	blez	$t2, .LBB8_51
# %bb.29:                               # %._crit_edge
                                        #   in Loop: Header=BB8_3 Depth=1
	blez	$t1, .LBB8_51
# %bb.30:                               # %.preheader199.us.us.preheader
                                        #   in Loop: Header=BB8_3 Depth=1
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 48
	move	$fp, $zero
	move	$s3, $zero
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a1, $a1, 48
	ld.d	$t3, $sp, 128                   # 8-byte Folded Reload
	alsl.d	$a2, $t3, $a0, 3
	ld.d	$t6, $sp, 120                   # 8-byte Folded Reload
	alsl.d	$a2, $t6, $a2, 3
	ld.d	$t0, $sp, 136                   # 8-byte Folded Reload
	alsl.d	$s1, $t0, $a2, 3
	ld.d	$t7, $sp, 104                   # 8-byte Folded Reload
	alsl.d	$a2, $t7, $a1, 3
	ld.d	$t8, $sp, 96                    # 8-byte Folded Reload
	alsl.d	$a2, $t8, $a2, 3
	ld.d	$a3, $sp, 112                   # 8-byte Folded Reload
	alsl.d	$a2, $a3, $a2, 3
	addi.d	$s2, $t1, -1
	slli.d	$a4, $t4, 1
	st.d	$a4, $sp, 152                   # 8-byte Folded Spill
	slli.d	$a4, $t5, 1
	add.d	$a3, $a3, $t8
	add.d	$a3, $a3, $t7
	alsl.d	$t7, $a3, $a1, 3
	st.d	$t7, $sp, 224                   # 8-byte Folded Spill
	add.d	$a3, $a3, $t1
	alsl.d	$a1, $a3, $a1, 3
	st.d	$a1, $sp, 216                   # 8-byte Folded Spill
	slli.d	$a1, $t0, 3
	alsl.d	$a1, $t6, $a1, 3
	alsl.d	$a1, $t3, $a1, 3
	add.d	$s6, $a0, $a1
	alsl.d	$a1, $t1, $a1, 4
	add.d	$a0, $a0, $a1
	move	$a1, $zero
	addi.d	$t7, $a0, -8
	slli.d	$t8, $s2, 1
	bstrpick.d	$a0, $t1, 30, 1
	slli.d	$t3, $a0, 1
	vinsgr2vr.w	$vr2, $t4, 0
	vinsgr2vr.w	$vr2, $t4, 1
	b	.LBB8_32
	.p2align	4, , 16
.LBB8_31:                               # %._crit_edge212.split.us.us.us
                                        #   in Loop: Header=BB8_32 Depth=2
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	addi.w	$a1, $a1, 1
	ld.d	$a6, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 168                   # 8-byte Folded Reload
	add.w	$s3, $s3, $a6
	ld.d	$fp, $sp, 192                   # 8-byte Folded Reload
	add.d	$fp, $fp, $t4
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	beq	$a1, $a0, .LBB8_51
.LBB8_32:                               # %.preheader199.us.us
                                        #   Parent Loop BB8_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB8_33 Depth 3
                                        #         Child Loop BB8_49 Depth 4
                                        #         Child Loop BB8_36 Depth 4
	move	$s4, $zero
	mul.d	$a0, $a6, $a1
	ld.d	$a3, $sp, 152                   # 8-byte Folded Reload
	mul.d	$t6, $a3, $a1
	addi.d	$a3, $t4, 1
	add.d	$s2, $a3, $t6
	add.d	$s0, $t4, $t6
	st.d	$a1, $sp, 160                   # 8-byte Folded Spill
	mul.d	$a1, $a1, $t4
	st.d	$a1, $sp, 208                   # 8-byte Folded Spill
	st.d	$fp, $sp, 192                   # 8-byte Folded Spill
	move	$t0, $fp
	st.d	$s3, $sp, 168                   # 8-byte Folded Spill
	move	$a6, $s3
	.p2align	4, , 16
.LBB8_33:                               # %.preheader196.us.us.us
                                        #   Parent Loop BB8_3 Depth=1
                                        #     Parent Loop BB8_32 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB8_49 Depth 4
                                        #         Child Loop BB8_36 Depth 4
	bgeu	$t1, $a5, .LBB8_38
# %bb.34:                               #   in Loop: Header=BB8_33 Depth=3
	move	$s3, $zero
.LBB8_35:                               # %scalar.ph373.preheader
                                        #   in Loop: Header=BB8_33 Depth=3
	add.d	$a1, $t0, $s3
	slli.w	$fp, $a1, 1
	add.w	$s7, $a6, $s3
	sub.d	$s3, $t1, $s3
	.p2align	4, , 16
.LBB8_36:                               # %scalar.ph373
                                        #   Parent Loop BB8_3 Depth=1
                                        #     Parent Loop BB8_32 Depth=2
                                        #       Parent Loop BB8_33 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	slli.d	$a1, $fp, 3
	fldx.d	$fa3, $s1, $a1
	addi.w	$a1, $fp, 1
	slli.d	$a1, $a1, 3
	fldx.d	$fa4, $s1, $a1
	add.w	$a1, $t4, $fp
	slli.d	$a3, $a1, 3
	fldx.d	$fa5, $s1, $a3
	addi.w	$a1, $a1, 1
	slli.d	$a1, $a1, 3
	fldx.d	$fa6, $s1, $a1
	fadd.d	$fa3, $fa3, $fa4
	fadd.d	$fa3, $fa3, $fa5
	fadd.d	$fa3, $fa3, $fa6
	fmul.d	$fa3, $fa3, $fa0
	slli.d	$a1, $s7, 3
	fstx.d	$fa3, $a2, $a1
	addi.w	$fp, $fp, 2
	addi.d	$s3, $s3, -1
	addi.w	$s7, $s7, 1
	bnez	$s3, .LBB8_36
.LBB8_37:                               # %._crit_edge210.us.us.us
                                        #   in Loop: Header=BB8_33 Depth=3
	addi.w	$s4, $s4, 1
	add.w	$a6, $a6, $a7
	add.d	$t0, $t0, $t5
	bne	$s4, $t2, .LBB8_33
	b	.LBB8_31
	.p2align	4, , 16
.LBB8_38:                               # %vector.scevcheck320
                                        #   in Loop: Header=BB8_33 Depth=3
	mul.d	$a3, $a4, $s4
	add.w	$a1, $s2, $a3
	add.w	$fp, $a1, $t8
	move	$s3, $zero
	blt	$fp, $a1, .LBB8_35
# %bb.39:                               # %vector.scevcheck320
                                        #   in Loop: Header=BB8_33 Depth=3
	add.w	$s8, $s0, $a3
	add.w	$fp, $s8, $t8
	blt	$fp, $s8, .LBB8_35
# %bb.40:                               # %vector.scevcheck320
                                        #   in Loop: Header=BB8_33 Depth=3
	ori	$fp, $t6, 1
	add.w	$fp, $fp, $a3
	add.w	$s5, $fp, $t8
	blt	$s5, $fp, .LBB8_35
# %bb.41:                               # %vector.scevcheck320
                                        #   in Loop: Header=BB8_33 Depth=3
	mul.d	$s5, $a7, $s4
	add.w	$ra, $a0, $s5
	addi.d	$s5, $t1, -1
	add.w	$s5, $ra, $s5
	blt	$s5, $ra, .LBB8_35
# %bb.42:                               # %vector.scevcheck320
                                        #   in Loop: Header=BB8_33 Depth=3
	add.w	$s7, $t6, $a3
	add.w	$a3, $s7, $t8
	blt	$a3, $s7, .LBB8_35
# %bb.43:                               # %vector.scevcheck320
                                        #   in Loop: Header=BB8_33 Depth=3
	addi.d	$a3, $t1, -1
	srli.d	$a3, $a3, 32
	bnez	$a3, .LBB8_35
# %bb.44:                               # %vector.memcheck333
                                        #   in Loop: Header=BB8_33 Depth=3
	ld.d	$a3, $sp, 224                   # 8-byte Folded Reload
	alsl.d	$s5, $ra, $a3, 3
	ld.d	$a3, $sp, 216                   # 8-byte Folded Reload
	alsl.d	$a3, $ra, $a3, 3
	alsl.d	$s3, $a1, $s6, 3
	alsl.d	$a1, $a1, $t7, 3
	sltu	$a1, $s5, $a1
	sltu	$s3, $s3, $a3
	and	$a1, $a1, $s3
	move	$s3, $zero
	bnez	$a1, .LBB8_35
# %bb.45:                               # %vector.memcheck333
                                        #   in Loop: Header=BB8_33 Depth=3
	alsl.d	$a1, $s8, $s6, 3
	alsl.d	$s8, $s8, $t7, 3
	sltu	$s8, $s5, $s8
	sltu	$a1, $a1, $a3
	and	$a1, $s8, $a1
	bnez	$a1, .LBB8_35
# %bb.46:                               # %vector.memcheck333
                                        #   in Loop: Header=BB8_33 Depth=3
	alsl.d	$a1, $fp, $s6, 3
	alsl.d	$fp, $fp, $t7, 3
	sltu	$fp, $s5, $fp
	sltu	$a1, $a1, $a3
	and	$a1, $fp, $a1
	bnez	$a1, .LBB8_35
# %bb.47:                               # %vector.memcheck333
                                        #   in Loop: Header=BB8_33 Depth=3
	alsl.d	$a1, $s7, $s6, 3
	alsl.d	$fp, $s7, $t7, 3
	sltu	$fp, $s5, $fp
	sltu	$a1, $a1, $a3
	and	$a1, $fp, $a1
	bnez	$a1, .LBB8_35
# %bb.48:                               # %vector.ph375
                                        #   in Loop: Header=BB8_33 Depth=3
	mul.d	$a1, $s4, $t5
	ld.d	$a3, $sp, 208                   # 8-byte Folded Reload
	add.d	$a1, $a1, $a3
	vinsgr2vr.w	$vr3, $a1, 0
	vinsgr2vr.w	$vr3, $a1, 1
	ld.d	$a1, $sp, 200                   # 8-byte Folded Reload
	vreplgr2vr.d	$vr4, $a1
	move	$s3, $a6
	move	$fp, $t3
	.p2align	4, , 16
.LBB8_49:                               # %vector.body382
                                        #   Parent Loop BB8_3 Depth=1
                                        #     Parent Loop BB8_32 Depth=2
                                        #       Parent Loop BB8_33 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	vadd.w	$vr5, $vr3, $vr4
	vslli.w	$vr5, $vr5, 1
	vshuf4i.w	$vr6, $vr5, 16
	vslli.d	$vr6, $vr6, 32
	vsrai.d	$vr6, $vr6, 32
	vpickve2gr.d	$a1, $vr6, 0
	vpickve2gr.d	$a3, $vr6, 1
	slli.d	$a1, $a1, 3
	slli.d	$a3, $a3, 3
	fldx.d	$fa6, $s1, $a1
	fldx.d	$fa7, $s1, $a3
	vbitseti.w	$vr8, $vr5, 0
	vshuf4i.w	$vr9, $vr8, 16
	vslli.d	$vr9, $vr9, 32
	vsrai.d	$vr9, $vr9, 32
	vpickve2gr.d	$a1, $vr9, 0
	vpickve2gr.d	$a3, $vr9, 1
	slli.d	$a1, $a1, 3
	slli.d	$a3, $a3, 3
	fldx.d	$ft1, $s1, $a1
	fldx.d	$ft2, $s1, $a3
	vextrins.d	$vr6, $vr7, 16
	vextrins.d	$vr9, $vr10, 16
	vadd.w	$vr5, $vr5, $vr2
	vshuf4i.w	$vr5, $vr5, 16
	vslli.d	$vr5, $vr5, 32
	vsrai.d	$vr5, $vr5, 32
	vpickve2gr.d	$a1, $vr5, 0
	vpickve2gr.d	$a3, $vr5, 1
	slli.d	$a1, $a1, 3
	slli.d	$a3, $a3, 3
	fldx.d	$fa5, $s1, $a1
	fldx.d	$fa7, $s1, $a3
	vadd.w	$vr8, $vr8, $vr2
	vshuf4i.w	$vr8, $vr8, 16
	vslli.d	$vr8, $vr8, 32
	vsrai.d	$vr8, $vr8, 32
	vpickve2gr.d	$a1, $vr8, 0
	vpickve2gr.d	$a3, $vr8, 1
	slli.d	$a1, $a1, 3
	slli.d	$a3, $a3, 3
	fldx.d	$ft0, $s1, $a1
	fldx.d	$ft2, $s1, $a3
	vfadd.d	$vr6, $vr6, $vr9
	vextrins.d	$vr5, $vr7, 16
	vfadd.d	$vr5, $vr6, $vr5
	vextrins.d	$vr8, $vr10, 16
	vfadd.d	$vr5, $vr5, $vr8
	vfmul.d	$vr5, $vr5, $vr0
	slli.d	$a1, $s3, 3
	vstx	$vr5, $a2, $a1
	vaddi.wu	$vr4, $vr4, 2
	addi.d	$fp, $fp, -2
	addi.w	$s3, $s3, 2
	bnez	$fp, .LBB8_49
# %bb.50:                               # %middle.block387
                                        #   in Loop: Header=BB8_33 Depth=3
	move	$s3, $t3
	bne	$t3, $t1, .LBB8_35
	b	.LBB8_37
	.p2align	4, , 16
.LBB8_51:                               # %._crit_edge214
                                        #   in Loop: Header=BB8_3 Depth=1
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	blez	$a0, .LBB8_2
# %bb.52:                               # %._crit_edge214
                                        #   in Loop: Header=BB8_3 Depth=1
	blez	$t2, .LBB8_2
# %bb.53:                               # %._crit_edge214
                                        #   in Loop: Header=BB8_3 Depth=1
	blez	$t1, .LBB8_2
# %bb.54:                               # %.preheader198.us.us.preheader
                                        #   in Loop: Header=BB8_3 Depth=1
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 56
	move	$fp, $zero
	move	$s0, $zero
	move	$s3, $zero
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a1, $a1, 56
	ld.d	$t3, $sp, 128                   # 8-byte Folded Reload
	alsl.d	$a2, $t3, $a0, 3
	ld.d	$t6, $sp, 120                   # 8-byte Folded Reload
	alsl.d	$a2, $t6, $a2, 3
	ld.d	$t0, $sp, 136                   # 8-byte Folded Reload
	alsl.d	$s1, $t0, $a2, 3
	ld.d	$t7, $sp, 104                   # 8-byte Folded Reload
	alsl.d	$a2, $t7, $a1, 3
	ld.d	$a4, $sp, 96                    # 8-byte Folded Reload
	alsl.d	$a2, $a4, $a2, 3
	ld.d	$a3, $sp, 112                   # 8-byte Folded Reload
	alsl.d	$a2, $a3, $a2, 3
	addi.d	$t8, $t1, -1
	slli.d	$s2, $t4, 1
	st.d	$s2, $sp, 152                   # 8-byte Folded Spill
	add.d	$a3, $a3, $a4
	slli.d	$a4, $t5, 1
	add.d	$a3, $a3, $t7
	alsl.d	$t7, $a3, $a1, 3
	st.d	$t7, $sp, 224                   # 8-byte Folded Spill
	add.d	$a3, $a3, $t1
	alsl.d	$a1, $a3, $a1, 3
	st.d	$a1, $sp, 216                   # 8-byte Folded Spill
	slli.d	$a1, $t0, 3
	alsl.d	$a1, $t6, $a1, 3
	alsl.d	$a1, $t3, $a1, 3
	add.d	$t6, $a0, $a1
	alsl.d	$a1, $t1, $a1, 4
	add.d	$a0, $a0, $a1
	addi.d	$t7, $a0, -8
	slli.d	$t8, $t8, 1
	bstrpick.d	$a0, $t1, 30, 1
	slli.d	$t3, $a0, 1
	vinsgr2vr.w	$vr2, $t5, 0
	vinsgr2vr.w	$vr2, $t5, 1
	b	.LBB8_56
	.p2align	4, , 16
.LBB8_55:                               # %._crit_edge222.split.us.us.us
                                        #   in Loop: Header=BB8_56 Depth=2
	ld.d	$s3, $sp, 160                   # 8-byte Folded Reload
	addi.w	$s3, $s3, 1
	ld.d	$a6, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 168                   # 8-byte Folded Reload
	add.w	$s0, $s0, $a6
	ld.d	$fp, $sp, 192                   # 8-byte Folded Reload
	add.d	$fp, $fp, $t4
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	beq	$s3, $a0, .LBB8_2
.LBB8_56:                               # %.preheader198.us.us
                                        #   Parent Loop BB8_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB8_57 Depth 3
                                        #         Child Loop BB8_73 Depth 4
                                        #         Child Loop BB8_60 Depth 4
	move	$s4, $zero
	mul.d	$a0, $a6, $s3
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	mul.d	$s5, $a1, $s3
	addi.d	$a1, $t5, 1
	add.d	$ra, $a1, $s5
	add.d	$s2, $t5, $s5
	st.d	$s3, $sp, 160                   # 8-byte Folded Spill
	mul.d	$a1, $s3, $t4
	st.d	$a1, $sp, 208                   # 8-byte Folded Spill
	st.d	$fp, $sp, 192                   # 8-byte Folded Spill
	move	$t0, $fp
	st.d	$s0, $sp, 168                   # 8-byte Folded Spill
	move	$a6, $s0
	.p2align	4, , 16
.LBB8_57:                               # %.preheader.us.us.us
                                        #   Parent Loop BB8_3 Depth=1
                                        #     Parent Loop BB8_56 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB8_73 Depth 4
                                        #         Child Loop BB8_60 Depth 4
	bgeu	$t1, $a5, .LBB8_62
# %bb.58:                               #   in Loop: Header=BB8_57 Depth=3
	move	$s3, $zero
.LBB8_59:                               # %scalar.ph.preheader
                                        #   in Loop: Header=BB8_57 Depth=3
	add.d	$a1, $t0, $s3
	slli.w	$fp, $a1, 1
	add.w	$s6, $a6, $s3
	sub.d	$s3, $t1, $s3
	.p2align	4, , 16
.LBB8_60:                               # %scalar.ph
                                        #   Parent Loop BB8_3 Depth=1
                                        #     Parent Loop BB8_56 Depth=2
                                        #       Parent Loop BB8_57 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	slli.d	$a1, $fp, 3
	fldx.d	$fa3, $s1, $a1
	addi.w	$a1, $fp, 1
	slli.d	$a1, $a1, 3
	fldx.d	$fa4, $s1, $a1
	add.w	$a1, $t5, $fp
	slli.d	$a3, $a1, 3
	fldx.d	$fa5, $s1, $a3
	addi.w	$a1, $a1, 1
	slli.d	$a1, $a1, 3
	fldx.d	$fa6, $s1, $a1
	fadd.d	$fa3, $fa3, $fa4
	fadd.d	$fa3, $fa3, $fa5
	fadd.d	$fa3, $fa3, $fa6
	fmul.d	$fa3, $fa3, $fa0
	slli.d	$a1, $s6, 3
	fstx.d	$fa3, $a2, $a1
	addi.w	$fp, $fp, 2
	addi.d	$s3, $s3, -1
	addi.w	$s6, $s6, 1
	bnez	$s3, .LBB8_60
.LBB8_61:                               # %._crit_edge220.us.us.us
                                        #   in Loop: Header=BB8_57 Depth=3
	addi.w	$s4, $s4, 1
	add.w	$a6, $a6, $a7
	add.d	$t0, $t0, $t5
	bne	$s4, $t2, .LBB8_57
	b	.LBB8_55
	.p2align	4, , 16
.LBB8_62:                               # %vector.scevcheck
                                        #   in Loop: Header=BB8_57 Depth=3
	mul.d	$a3, $a4, $s4
	add.w	$a1, $ra, $a3
	add.w	$fp, $a1, $t8
	move	$s3, $zero
	blt	$fp, $a1, .LBB8_59
# %bb.63:                               # %vector.scevcheck
                                        #   in Loop: Header=BB8_57 Depth=3
	add.w	$s7, $s2, $a3
	add.w	$fp, $s7, $t8
	blt	$fp, $s7, .LBB8_59
# %bb.64:                               # %vector.scevcheck
                                        #   in Loop: Header=BB8_57 Depth=3
	ori	$fp, $s5, 1
	add.w	$fp, $fp, $a3
	add.w	$s0, $fp, $t8
	blt	$s0, $fp, .LBB8_59
# %bb.65:                               # %vector.scevcheck
                                        #   in Loop: Header=BB8_57 Depth=3
	mul.d	$s0, $a7, $s4
	add.w	$s8, $a0, $s0
	addi.d	$s0, $t1, -1
	add.w	$s0, $s8, $s0
	blt	$s0, $s8, .LBB8_59
# %bb.66:                               # %vector.scevcheck
                                        #   in Loop: Header=BB8_57 Depth=3
	add.w	$s6, $s5, $a3
	add.w	$a3, $s6, $t8
	blt	$a3, $s6, .LBB8_59
# %bb.67:                               # %vector.scevcheck
                                        #   in Loop: Header=BB8_57 Depth=3
	addi.d	$a3, $t1, -1
	srli.d	$a3, $a3, 32
	bnez	$a3, .LBB8_59
# %bb.68:                               # %vector.memcheck
                                        #   in Loop: Header=BB8_57 Depth=3
	ld.d	$a3, $sp, 224                   # 8-byte Folded Reload
	alsl.d	$s0, $s8, $a3, 3
	ld.d	$a3, $sp, 216                   # 8-byte Folded Reload
	alsl.d	$a3, $s8, $a3, 3
	alsl.d	$s3, $a1, $t6, 3
	alsl.d	$a1, $a1, $t7, 3
	sltu	$a1, $s0, $a1
	sltu	$s3, $s3, $a3
	and	$a1, $a1, $s3
	move	$s3, $zero
	bnez	$a1, .LBB8_59
# %bb.69:                               # %vector.memcheck
                                        #   in Loop: Header=BB8_57 Depth=3
	alsl.d	$a1, $s7, $t6, 3
	alsl.d	$s7, $s7, $t7, 3
	sltu	$s7, $s0, $s7
	sltu	$a1, $a1, $a3
	and	$a1, $s7, $a1
	bnez	$a1, .LBB8_59
# %bb.70:                               # %vector.memcheck
                                        #   in Loop: Header=BB8_57 Depth=3
	alsl.d	$a1, $fp, $t6, 3
	alsl.d	$fp, $fp, $t7, 3
	sltu	$fp, $s0, $fp
	sltu	$a1, $a1, $a3
	and	$a1, $fp, $a1
	bnez	$a1, .LBB8_59
# %bb.71:                               # %vector.memcheck
                                        #   in Loop: Header=BB8_57 Depth=3
	alsl.d	$a1, $s6, $t6, 3
	alsl.d	$fp, $s6, $t7, 3
	sltu	$fp, $s0, $fp
	sltu	$a1, $a1, $a3
	and	$a1, $fp, $a1
	bnez	$a1, .LBB8_59
# %bb.72:                               # %vector.ph
                                        #   in Loop: Header=BB8_57 Depth=3
	mul.d	$a1, $s4, $t5
	ld.d	$a3, $sp, 208                   # 8-byte Folded Reload
	add.d	$a1, $a1, $a3
	vinsgr2vr.w	$vr3, $a1, 0
	vinsgr2vr.w	$vr3, $a1, 1
	ld.d	$a1, $sp, 200                   # 8-byte Folded Reload
	vreplgr2vr.d	$vr4, $a1
	move	$s3, $a6
	move	$fp, $t3
	.p2align	4, , 16
.LBB8_73:                               # %vector.body
                                        #   Parent Loop BB8_3 Depth=1
                                        #     Parent Loop BB8_56 Depth=2
                                        #       Parent Loop BB8_57 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	vadd.w	$vr5, $vr3, $vr4
	vslli.w	$vr5, $vr5, 1
	vshuf4i.w	$vr6, $vr5, 16
	vslli.d	$vr6, $vr6, 32
	vsrai.d	$vr6, $vr6, 32
	vpickve2gr.d	$a1, $vr6, 0
	vpickve2gr.d	$a3, $vr6, 1
	slli.d	$a1, $a1, 3
	slli.d	$a3, $a3, 3
	fldx.d	$fa6, $s1, $a1
	fldx.d	$fa7, $s1, $a3
	vbitseti.w	$vr8, $vr5, 0
	vshuf4i.w	$vr9, $vr8, 16
	vslli.d	$vr9, $vr9, 32
	vsrai.d	$vr9, $vr9, 32
	vpickve2gr.d	$a1, $vr9, 0
	vpickve2gr.d	$a3, $vr9, 1
	slli.d	$a1, $a1, 3
	slli.d	$a3, $a3, 3
	fldx.d	$ft1, $s1, $a1
	fldx.d	$ft2, $s1, $a3
	vextrins.d	$vr6, $vr7, 16
	vextrins.d	$vr9, $vr10, 16
	vadd.w	$vr5, $vr5, $vr2
	vshuf4i.w	$vr5, $vr5, 16
	vslli.d	$vr5, $vr5, 32
	vsrai.d	$vr5, $vr5, 32
	vpickve2gr.d	$a1, $vr5, 0
	vpickve2gr.d	$a3, $vr5, 1
	slli.d	$a1, $a1, 3
	slli.d	$a3, $a3, 3
	fldx.d	$fa5, $s1, $a1
	fldx.d	$fa7, $s1, $a3
	vadd.w	$vr8, $vr8, $vr2
	vshuf4i.w	$vr8, $vr8, 16
	vslli.d	$vr8, $vr8, 32
	vsrai.d	$vr8, $vr8, 32
	vpickve2gr.d	$a1, $vr8, 0
	vpickve2gr.d	$a3, $vr8, 1
	slli.d	$a1, $a1, 3
	slli.d	$a3, $a3, 3
	fldx.d	$ft0, $s1, $a1
	fldx.d	$ft2, $s1, $a3
	vfadd.d	$vr6, $vr6, $vr9
	vextrins.d	$vr5, $vr7, 16
	vfadd.d	$vr5, $vr6, $vr5
	vextrins.d	$vr8, $vr10, 16
	vfadd.d	$vr5, $vr5, $vr8
	vfmul.d	$vr5, $vr5, $vr0
	slli.d	$a1, $s3, 3
	vstx	$vr5, $a2, $a1
	vaddi.wu	$vr4, $vr4, 2
	addi.d	$fp, $fp, -2
	addi.w	$s3, $s3, 2
	bnez	$fp, .LBB8_73
# %bb.74:                               # %middle.block
                                        #   in Loop: Header=BB8_57 Depth=3
	move	$s3, $t3
	bne	$t3, $t1, .LBB8_59
	b	.LBB8_61
.LBB8_75:                               # %._crit_edge231
	pcaddu18i	$ra, %call36(CycleTime)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	alsl.d	$a1, $a1, $a2, 3
	ld.d	$a2, $a1, 240
	ld.d	$a3, $sp, 16                    # 8-byte Folded Reload
	sub.d	$a0, $a0, $a3
	add.d	$a0, $a0, $a2
	st.d	$a0, $a1, 240
	ld.d	$s8, $sp, 232                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 240                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 248                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 256                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 264                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 272                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 280                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 288                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 296                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 304                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 312                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 320
	ret
.Lfunc_end8:
	.size	restriction_betas, .Lfunc_end8-restriction_betas
                                        # -- End function
	.globl	interpolation_constant          # -- Begin function interpolation_constant
	.p2align	5
	.type	interpolation_constant,@function
interpolation_constant:                 # @interpolation_constant
# %bb.0:
	addi.d	$sp, $sp, -112
	st.d	$ra, $sp, 104                   # 8-byte Folded Spill
	st.d	$fp, $sp, 96                    # 8-byte Folded Spill
	st.d	$s0, $sp, 88                    # 8-byte Folded Spill
	st.d	$s1, $sp, 80                    # 8-byte Folded Spill
	st.d	$s2, $sp, 72                    # 8-byte Folded Spill
	st.d	$s3, $sp, 64                    # 8-byte Folded Spill
	st.d	$s4, $sp, 56                    # 8-byte Folded Spill
	st.d	$s5, $sp, 48                    # 8-byte Folded Spill
	st.d	$s6, $sp, 40                    # 8-byte Folded Spill
	st.d	$s7, $sp, 32                    # 8-byte Folded Spill
	st.d	$s8, $sp, 24                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 16                   # 8-byte Folded Spill
	move	$s2, $a3
	move	$s3, $a2
	fmov.d	$fs0, $fa0
	move	$fp, $a1
	move	$s0, $a0
	pcaddu18i	$ra, %call36(CycleTime)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s0, 1600
	move	$s1, $a0
	blez	$a1, .LBB9_12
# %bb.1:                                # %.lr.ph
	move	$a0, $zero
	ld.d	$a2, $s0, 1776
	ori	$a3, $zero, 216
	mul.d	$a3, $fp, $a3
	slli.d	$a4, $s3, 3
	slli.d	$a5, $s2, 3
	b	.LBB9_3
	.p2align	4, , 16
.LBB9_2:                                # %._crit_edge
                                        #   in Loop: Header=BB9_3 Depth=1
	addi.d	$a0, $a0, 1
	beq	$a0, $a1, .LBB9_12
.LBB9_3:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_7 Depth 2
                                        #       Child Loop BB9_8 Depth 3
                                        #         Child Loop BB9_9 Depth 4
	slli.d	$a6, $a0, 8
	add.d	$a6, $a2, $a6
	ld.d	$a6, $a6, 248
	add.d	$t7, $a6, $a3
	ld.w	$a6, $t7, 28
	blez	$a6, .LBB9_2
# %bb.4:                                #   in Loop: Header=BB9_3 Depth=1
	ld.w	$a7, $t7, 24
	blez	$a7, .LBB9_2
# %bb.5:                                #   in Loop: Header=BB9_3 Depth=1
	ld.w	$t0, $t7, 20
	blez	$t0, .LBB9_2
# %bb.6:                                # %.preheader82.us.us.preheader
                                        #   in Loop: Header=BB9_3 Depth=1
	move	$t1, $zero
	move	$t2, $zero
	ld.w	$t3, $t7, 48
	ld.d	$t6, $t7, 176
	ld.w	$t4, $t7, 52
	ld.w	$t5, $t7, 264
	ld.w	$t8, $t7, 44
	ldx.d	$s2, $t6, $a4
	add.d	$t6, $t3, $t4
	addi.d	$t6, $t6, 1
	mul.w	$t8, $t6, $t8
	ld.d	$s3, $t7, 392
	ld.w	$t6, $t7, 268
	ld.w	$s4, $t7, 260
	alsl.d	$t7, $t8, $s2, 3
	ldx.d	$t8, $s3, $a5
	add.d	$s2, $t5, $t6
	addi.d	$s2, $s2, 1
	mul.w	$s2, $s2, $s4
	alsl.d	$t8, $s2, $t8, 3
	.p2align	4, , 16
.LBB9_7:                                # %.preheader82.us.us
                                        #   Parent Loop BB9_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB9_8 Depth 3
                                        #         Child Loop BB9_9 Depth 4
	move	$s2, $zero
	bstrpick.d	$s3, $t2, 31, 1
	mul.d	$s3, $s3, $t6
	move	$s4, $t1
	.p2align	4, , 16
.LBB9_8:                                # %.preheader.us.us.us
                                        #   Parent Loop BB9_3 Depth=1
                                        #     Parent Loop BB9_7 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB9_9 Depth 4
	move	$s5, $zero
	bstrpick.d	$s6, $s2, 31, 1
	mul.d	$s6, $s6, $t5
	add.d	$s6, $s6, $s3
	move	$s7, $t0
	.p2align	4, , 16
.LBB9_9:                                #   Parent Loop BB9_3 Depth=1
                                        #     Parent Loop BB9_7 Depth=2
                                        #       Parent Loop BB9_8 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	add.w	$s8, $s4, $s5
	bstrpick.d	$ra, $s5, 31, 1
	add.w	$ra, $s6, $ra
	slli.d	$s8, $s8, 3
	fldx.d	$fa0, $t7, $s8
	slli.d	$ra, $ra, 3
	fldx.d	$fa1, $t8, $ra
	fmadd.d	$fa0, $fs0, $fa0, $fa1
	fstx.d	$fa0, $t7, $s8
	addi.d	$s7, $s7, -1
	addi.w	$s5, $s5, 1
	bnez	$s7, .LBB9_9
# %bb.10:                               # %._crit_edge.us.us.us
                                        #   in Loop: Header=BB9_8 Depth=3
	addi.w	$s2, $s2, 1
	add.d	$s4, $s4, $t3
	bne	$s2, $a7, .LBB9_8
# %bb.11:                               # %._crit_edge85.split.us.us.us
                                        #   in Loop: Header=BB9_7 Depth=2
	addi.w	$t2, $t2, 1
	add.d	$t1, $t1, $t4
	bne	$t2, $a6, .LBB9_7
	b	.LBB9_2
.LBB9_12:                               # %._crit_edge93
	pcaddu18i	$ra, %call36(CycleTime)
	jirl	$ra, $ra, 0
	alsl.d	$a1, $fp, $s0, 3
	ld.d	$a2, $a1, 320
	sub.d	$a0, $a0, $s1
	add.d	$a0, $a0, $a2
	st.d	$a0, $a1, 320
	fld.d	$fs0, $sp, 16                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 96                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 104                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 112
	ret
.Lfunc_end9:
	.size	interpolation_constant, .Lfunc_end9-interpolation_constant
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function interpolation_linear
.LCPI10_0:
	.dword	0xbfb8000000000000              # double -0.09375
.LCPI10_1:
	.dword	0x3fec200000000000              # double 0.87890625
.LCPI10_2:
	.dword	0x3fea5e0000000000              # double 0.823974609375
	.text
	.globl	interpolation_linear
	.p2align	5
	.type	interpolation_linear,@function
interpolation_linear:                   # @interpolation_linear
# %bb.0:
	addi.d	$sp, $sp, -240
	st.d	$ra, $sp, 232                   # 8-byte Folded Spill
	st.d	$fp, $sp, 224                   # 8-byte Folded Spill
	st.d	$s0, $sp, 216                   # 8-byte Folded Spill
	st.d	$s1, $sp, 208                   # 8-byte Folded Spill
	st.d	$s2, $sp, 200                   # 8-byte Folded Spill
	st.d	$s3, $sp, 192                   # 8-byte Folded Spill
	st.d	$s4, $sp, 184                   # 8-byte Folded Spill
	st.d	$s5, $sp, 176                   # 8-byte Folded Spill
	st.d	$s6, $sp, 168                   # 8-byte Folded Spill
	st.d	$s7, $sp, 160                   # 8-byte Folded Spill
	st.d	$s8, $sp, 152                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 144                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 136                  # 8-byte Folded Spill
	fst.d	$fs2, $sp, 128                  # 8-byte Folded Spill
	fst.d	$fs3, $sp, 120                  # 8-byte Folded Spill
	fst.d	$fs4, $sp, 112                  # 8-byte Folded Spill
	fst.d	$fs5, $sp, 104                  # 8-byte Folded Spill
	fst.d	$fs6, $sp, 96                   # 8-byte Folded Spill
	move	$s2, $a3
	move	$s3, $a2
	fmov.d	$fs0, $fa0
	move	$fp, $a0
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	addi.w	$s4, $a1, 1
	ori	$a3, $zero, 1
	ori	$a4, $zero, 1
	ori	$a5, $zero, 1
	move	$a1, $s4
	move	$a2, $s2
	pcaddu18i	$ra, %call36(exchange_boundary)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(CycleTime)
	jirl	$ra, $ra, 0
	st.d	$fp, $sp, 24                    # 8-byte Folded Spill
	ld.w	$a1, $fp, 1600
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	st.d	$a1, $sp, 80                    # 8-byte Folded Spill
	blez	$a1, .LBB10_12
# %bb.1:                                # %.lr.ph
	move	$a2, $zero
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 1776
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	ori	$a1, $zero, 216
	mul.d	$a0, $s4, $a1
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	mul.d	$a0, $a0, $a1
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	slli.d	$a0, $s3, 3
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(.LCPI10_0)
	fld.d	$fa0, $a1, %pc_lo12(.LCPI10_0)
	slli.d	$a0, $s2, 3
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	vldi	$vr1, -956
	vldi	$vr2, -914
	b	.LBB10_3
	.p2align	4, , 16
.LBB10_2:                               # %._crit_edge
                                        #   in Loop: Header=BB10_3 Depth=1
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
	addi.d	$a2, $a2, 1
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	beq	$a2, $a0, .LBB10_12
.LBB10_3:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_7 Depth 2
                                        #       Child Loop BB10_8 Depth 3
                                        #         Child Loop BB10_9 Depth 4
	st.d	$a2, $sp, 88                    # 8-byte Folded Spill
	slli.d	$a1, $a2, 8
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	add.d	$a1, $a0, $a1
	ld.d	$a2, $a1, 248
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	add.d	$a1, $a2, $a0
	ld.w	$a7, $a1, 28
	blez	$a7, .LBB10_2
# %bb.4:                                #   in Loop: Header=BB10_3 Depth=1
	ld.w	$t0, $a1, 24
	blez	$t0, .LBB10_2
# %bb.5:                                #   in Loop: Header=BB10_3 Depth=1
	ld.w	$t1, $a1, 20
	blez	$t1, .LBB10_2
# %bb.6:                                # %.preheader278.us.us.preheader
                                        #   in Loop: Header=BB10_3 Depth=1
	move	$t2, $zero
	move	$t3, $zero
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	add.d	$a2, $a2, $a0
	ld.w	$t4, $a1, 48
	ld.d	$a3, $a1, 176
	ld.w	$t5, $a1, 52
	ld.w	$t6, $a2, 48
	ld.w	$a1, $a1, 44
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ldx.d	$a3, $a3, $a0
	add.d	$a4, $t4, $t5
	addi.d	$a4, $a4, 1
	mul.w	$a1, $a4, $a1
	ld.d	$a4, $a2, 176
	ld.w	$t7, $a2, 52
	ld.w	$a2, $a2, 44
	alsl.d	$t8, $a1, $a3, 3
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ldx.d	$a1, $a4, $a0
	add.d	$a3, $t6, $t7
	addi.d	$a3, $a3, 1
	mul.w	$a2, $a3, $a2
	alsl.d	$s2, $a2, $a1, 3
	.p2align	4, , 16
.LBB10_7:                               # %.preheader278.us.us
                                        #   Parent Loop BB10_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB10_8 Depth 3
                                        #         Child Loop BB10_9 Depth 4
	move	$s3, $zero
	bstrpick.d	$a1, $t3, 31, 1
	andi	$a2, $t3, 1
	sltui	$a2, $a2, 1
	mul.d	$s4, $a1, $t7
	movgr2cf	$fcc0, $a2
	fsel	$fa3, $fa0, $fa1, $fcc0
	fsel	$fa4, $fa1, $fa0, $fcc0
	fmul.d	$fa5, $fa3, $fa2
	fmul.d	$fa6, $fa5, $fa2
	fmul.d	$fa7, $fa4, $fa2
	fmul.d	$ft0, $fa7, $fa2
	move	$s5, $t2
	.p2align	4, , 16
.LBB10_8:                               # %.preheader.us.us.us
                                        #   Parent Loop BB10_3 Depth=1
                                        #     Parent Loop BB10_7 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB10_9 Depth 4
	move	$s6, $zero
	bstrpick.d	$a1, $s3, 31, 1
	mul.d	$a1, $a1, $t6
	andi	$a2, $s3, 1
	sltui	$a2, $a2, 1
	add.d	$s7, $a1, $s4
	movgr2cf	$fcc0, $a2
	fsel	$ft9, $fa0, $fa1, $fcc0
	fsel	$ft11, $fa1, $fa0, $fcc0
	fmul.d	$ft1, $fa3, $ft9
	fmul.d	$ft2, $ft1, $fa2
	fmul.d	$ft3, $fa3, $ft11
	fmul.d	$ft4, $ft3, $fa2
	fmul.d	$ft5, $ft9, $fa2
	fmul.d	$ft6, $ft5, $fa2
	fmul.d	$ft7, $ft11, $fa2
	fmul.d	$ft8, $ft7, $fa2
	fmul.d	$ft9, $fa4, $ft9
	fmul.d	$ft10, $ft9, $fa2
	fmul.d	$ft11, $fa4, $ft11
	fmul.d	$ft12, $ft11, $fa2
	move	$s8, $t1
	.p2align	4, , 16
.LBB10_9:                               #   Parent Loop BB10_3 Depth=1
                                        #     Parent Loop BB10_7 Depth=2
                                        #       Parent Loop BB10_8 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	add.w	$a1, $s5, $s6
	bstrpick.d	$a2, $s6, 31, 1
	andi	$a3, $s6, 1
	sltui	$a3, $a3, 1
	add.w	$s1, $s7, $a2
	movgr2cf	$fcc0, $a3
	fsel	$ft14, $fa0, $fa1, $fcc0
	fsel	$ft13, $fa1, $fa0, $fcc0
	slli.d	$ra, $a1, 3
	fldx.d	$ft15, $t8, $ra
	addi.w	$fp, $s1, -1
	sub.w	$a3, $fp, $t6
	sub.w	$a1, $a3, $t7
	slli.d	$a1, $a1, 3
	fldx.d	$fs1, $s2, $a1
	sub.w	$a5, $s1, $t6
	sub.w	$a1, $a5, $t7
	slli.d	$a1, $a1, 3
	fldx.d	$fs2, $s2, $a1
	fmul.d	$fs3, $ft1, $ft14
	fmul.d	$fs1, $fs3, $fs1
	fmadd.d	$ft15, $fs0, $ft15, $fs1
	fmadd.d	$ft15, $ft2, $fs2, $ft15
	fmul.d	$fs1, $ft1, $ft13
	addi.w	$s0, $s1, 1
	sub.w	$a1, $s0, $t6
	sub.w	$a2, $a1, $t7
	slli.d	$a2, $a2, 3
	fldx.d	$fs2, $s2, $a2
	sub.w	$a2, $fp, $t7
	slli.d	$a2, $a2, 3
	fldx.d	$fs3, $s2, $a2
	sub.w	$a2, $s1, $t7
	slli.d	$a2, $a2, 3
	fldx.d	$fs4, $s2, $a2
	fmadd.d	$ft15, $fs1, $fs2, $ft15
	fmul.d	$fs1, $fa5, $ft14
	fmadd.d	$ft15, $fs1, $fs3, $ft15
	fmadd.d	$ft15, $fa6, $fs4, $ft15
	fmul.d	$fs1, $fa5, $ft13
	sub.w	$a2, $s0, $t7
	slli.d	$a2, $a2, 3
	fldx.d	$fs2, $s2, $a2
	add.w	$a6, $fp, $t6
	sub.w	$a2, $a6, $t7
	slli.d	$a2, $a2, 3
	fldx.d	$fs3, $s2, $a2
	add.w	$a2, $s1, $t6
	sub.w	$a4, $a2, $t7
	slli.d	$a4, $a4, 3
	fldx.d	$fs4, $s2, $a4
	fmadd.d	$ft15, $fs1, $fs2, $ft15
	fmul.d	$fs1, $ft3, $ft14
	fmadd.d	$ft15, $fs1, $fs3, $ft15
	fmadd.d	$ft15, $ft4, $fs4, $ft15
	add.w	$a4, $s0, $t6
	sub.w	$a0, $a4, $t7
	slli.d	$a0, $a0, 3
	fldx.d	$fs1, $s2, $a0
	slli.d	$a0, $a3, 3
	fldx.d	$fs2, $s2, $a0
	fmul.d	$fs3, $ft3, $ft13
	fmadd.d	$ft15, $fs3, $fs1, $ft15
	fmul.d	$fs1, $ft5, $ft14
	fmadd.d	$ft15, $fs1, $fs2, $ft15
	slli.d	$a0, $a5, 3
	fldx.d	$fs1, $s2, $a0
	slli.d	$a0, $a1, 3
	fldx.d	$fs2, $s2, $a0
	pcalau12i	$a0, %pc_hi20(.LCPI10_1)
	fld.d	$fs3, $a0, %pc_lo12(.LCPI10_1)
	fmadd.d	$ft15, $ft6, $fs1, $ft15
	fmul.d	$fs1, $ft5, $ft13
	fmadd.d	$ft15, $fs1, $fs2, $ft15
	fmul.d	$fs1, $ft14, $fs3
	slli.d	$a0, $fp, 3
	fldx.d	$fs2, $s2, $a0
	slli.d	$a0, $s1, 3
	fldx.d	$fs4, $s2, $a0
	pcalau12i	$a0, %pc_hi20(.LCPI10_2)
	fld.d	$fs5, $a0, %pc_lo12(.LCPI10_2)
	slli.d	$a0, $s0, 3
	fldx.d	$fs6, $s2, $a0
	fmadd.d	$ft15, $fs1, $fs2, $ft15
	fmadd.d	$ft15, $fs4, $fs5, $ft15
	fmul.d	$fs1, $ft13, $fs3
	fmadd.d	$ft15, $fs1, $fs6, $ft15
	fmul.d	$fs1, $ft7, $ft14
	slli.d	$a0, $a6, 3
	fldx.d	$fs2, $s2, $a0
	slli.d	$a0, $a2, 3
	fldx.d	$fs3, $s2, $a0
	slli.d	$a0, $a4, 3
	fldx.d	$fs4, $s2, $a0
	fmadd.d	$ft15, $fs1, $fs2, $ft15
	fmadd.d	$ft15, $ft8, $fs3, $ft15
	fmul.d	$fs1, $ft7, $ft13
	fmadd.d	$ft15, $fs1, $fs4, $ft15
	fmul.d	$fs1, $ft9, $ft14
	add.w	$a0, $a3, $t7
	slli.d	$a0, $a0, 3
	fldx.d	$fs2, $s2, $a0
	add.w	$a0, $a5, $t7
	slli.d	$a0, $a0, 3
	fldx.d	$fs3, $s2, $a0
	add.w	$a0, $a1, $t7
	slli.d	$a0, $a0, 3
	fldx.d	$fs4, $s2, $a0
	fmadd.d	$ft15, $fs1, $fs2, $ft15
	fmadd.d	$ft15, $ft10, $fs3, $ft15
	fmul.d	$fs1, $ft9, $ft13
	fmadd.d	$ft15, $fs1, $fs4, $ft15
	fmul.d	$fs1, $fa7, $ft14
	add.w	$a0, $fp, $t7
	slli.d	$a0, $a0, 3
	fldx.d	$fs2, $s2, $a0
	add.w	$a0, $s1, $t7
	slli.d	$a0, $a0, 3
	fldx.d	$fs3, $s2, $a0
	add.w	$a0, $s0, $t7
	slli.d	$a0, $a0, 3
	fldx.d	$fs4, $s2, $a0
	fmadd.d	$ft15, $fs1, $fs2, $ft15
	fmadd.d	$ft15, $ft0, $fs3, $ft15
	fmul.d	$fs1, $fa7, $ft13
	fmadd.d	$ft15, $fs1, $fs4, $ft15
	fmul.d	$ft14, $ft11, $ft14
	add.w	$a0, $a6, $t7
	slli.d	$a0, $a0, 3
	fldx.d	$fs1, $s2, $a0
	add.w	$a0, $a2, $t7
	slli.d	$a0, $a0, 3
	fldx.d	$fs2, $s2, $a0
	add.w	$a0, $a4, $t7
	slli.d	$a0, $a0, 3
	fldx.d	$fs3, $s2, $a0
	fmadd.d	$ft14, $ft14, $fs1, $ft15
	fmadd.d	$ft14, $ft12, $fs2, $ft14
	fmul.d	$ft13, $ft11, $ft13
	fmadd.d	$ft13, $ft13, $fs3, $ft14
	fstx.d	$ft13, $t8, $ra
	addi.d	$s8, $s8, -1
	addi.w	$s6, $s6, 1
	bnez	$s8, .LBB10_9
# %bb.10:                               # %._crit_edge.us.us.us
                                        #   in Loop: Header=BB10_8 Depth=3
	addi.w	$s3, $s3, 1
	add.d	$s5, $s5, $t4
	bne	$s3, $t0, .LBB10_8
# %bb.11:                               # %._crit_edge281.split.us.us.us
                                        #   in Loop: Header=BB10_7 Depth=2
	addi.w	$t3, $t3, 1
	add.d	$t2, $t2, $t5
	bne	$t3, $a7, .LBB10_7
	b	.LBB10_2
.LBB10_12:                              # %._crit_edge289
	pcaddu18i	$ra, %call36(CycleTime)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	alsl.d	$a1, $a1, $a2, 3
	ld.d	$a2, $a1, 320
	ld.d	$a3, $sp, 16                    # 8-byte Folded Reload
	sub.d	$a0, $a0, $a3
	add.d	$a0, $a0, $a2
	st.d	$a0, $a1, 320
	fld.d	$fs6, $sp, 96                   # 8-byte Folded Reload
	fld.d	$fs5, $sp, 104                  # 8-byte Folded Reload
	fld.d	$fs4, $sp, 112                  # 8-byte Folded Reload
	fld.d	$fs3, $sp, 120                  # 8-byte Folded Reload
	fld.d	$fs2, $sp, 128                  # 8-byte Folded Reload
	fld.d	$fs1, $sp, 136                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 144                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 184                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 192                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 200                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 208                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 216                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 224                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 232                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 240
	ret
.Lfunc_end10:
	.size	interpolation_linear, .Lfunc_end10-interpolation_linear
                                        # -- End function
	.globl	zero_grid                       # -- Begin function zero_grid
	.p2align	5
	.type	zero_grid,@function
zero_grid:                              # @zero_grid
# %bb.0:
	addi.d	$sp, $sp, -160
	st.d	$ra, $sp, 152                   # 8-byte Folded Spill
	st.d	$fp, $sp, 144                   # 8-byte Folded Spill
	st.d	$s0, $sp, 136                   # 8-byte Folded Spill
	st.d	$s1, $sp, 128                   # 8-byte Folded Spill
	st.d	$s2, $sp, 120                   # 8-byte Folded Spill
	st.d	$s3, $sp, 112                   # 8-byte Folded Spill
	st.d	$s4, $sp, 104                   # 8-byte Folded Spill
	st.d	$s5, $sp, 96                    # 8-byte Folded Spill
	st.d	$s6, $sp, 88                    # 8-byte Folded Spill
	st.d	$s7, $sp, 80                    # 8-byte Folded Spill
	st.d	$s8, $sp, 72                    # 8-byte Folded Spill
	move	$s2, $a2
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	move	$fp, $a0
	pcaddu18i	$ra, %call36(CycleTime)
	jirl	$ra, $ra, 0
	st.d	$fp, $sp, 24                    # 8-byte Folded Spill
	ld.w	$a1, $fp, 1600
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	st.d	$a1, $sp, 64                    # 8-byte Folded Spill
	blez	$a1, .LBB11_17
# %bb.1:                                # %.lr.ph
	move	$a0, $zero
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a1, $a1, 1776
	st.d	$a1, $sp, 56                    # 8-byte Folded Spill
	ori	$a1, $zero, 216
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	mul.d	$a1, $a2, $a1
	st.d	$a1, $sp, 48                    # 8-byte Folded Spill
	slli.d	$a1, $s2, 3
	st.d	$a1, $sp, 40                    # 8-byte Folded Spill
	ori	$a5, $zero, 3
	vrepli.b	$vr0, 0
	b	.LBB11_3
	.p2align	4, , 16
.LBB11_2:                               # %._crit_edge
                                        #   in Loop: Header=BB11_3 Depth=1
	addi.d	$a0, $a0, 1
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	beq	$a0, $a1, .LBB11_17
.LBB11_3:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_8 Depth 2
                                        #       Child Loop BB11_10 Depth 3
                                        #         Child Loop BB11_13 Depth 4
                                        #         Child Loop BB11_16 Depth 4
	slli.d	$a1, $a0, 8
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	add.d	$a1, $a2, $a1
	ld.d	$a1, $a1, 248
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	add.d	$t3, $a1, $a2
	ld.w	$a6, $t3, 44
	ld.w	$a1, $t3, 28
	sub.w	$s0, $zero, $a6
	add.w	$a7, $a1, $a6
	bge	$s0, $a7, .LBB11_2
# %bb.4:                                # %.preheader61.lr.ph
                                        #   in Loop: Header=BB11_3 Depth=1
	ld.w	$a1, $t3, 24
	add.w	$t0, $a1, $a6
	bge	$s0, $t0, .LBB11_2
# %bb.5:                                # %.preheader61.lr.ph
                                        #   in Loop: Header=BB11_3 Depth=1
	ld.w	$t7, $t3, 20
	add.w	$t1, $t7, $a6
	bge	$s0, $t1, .LBB11_2
# %bb.6:                                # %.preheader61.us.us.preheader
                                        #   in Loop: Header=BB11_3 Depth=1
	ld.w	$t2, $t3, 48
	ld.d	$a1, $t3, 176
	ld.w	$t3, $t3, 52
	move	$t4, $zero
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	ldx.d	$a1, $a1, $a2
	add.d	$a4, $t2, $t3
	addi.d	$a4, $a4, 1
	mul.w	$a4, $a6, $a4
	alsl.d	$t5, $a4, $a1, 3
	bstrpick.d	$t6, $s0, 31, 0
	alsl.d	$a1, $a6, $t7, 1
	addi.w	$t7, $a1, -1
	nor	$a1, $t2, $zero
	sub.d	$a1, $a1, $t3
	mul.w	$fp, $a6, $a1
	bstrpick.d	$a1, $t7, 31, 0
	addi.d	$s2, $a1, 1
	bstrpick.d	$a1, $s2, 32, 2
	slli.d	$s3, $a1, 2
	alsl.d	$s4, $a1, $t6, 2
	add.d	$a1, $t3, $t2
	sub.d	$a1, $zero, $a1
	mul.d	$s1, $a6, $a1
	move	$t8, $fp
	move	$s7, $s0
	b	.LBB11_8
	.p2align	4, , 16
.LBB11_7:                               # %._crit_edge64.split.us.us.us
                                        #   in Loop: Header=BB11_8 Depth=2
	addi.w	$s7, $s7, 1
	addi.d	$t4, $t4, 1
	add.w	$t8, $t8, $t3
	add.d	$s1, $s1, $t3
	beq	$s7, $a7, .LBB11_2
.LBB11_8:                               # %.preheader61.us.us
                                        #   Parent Loop BB11_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB11_10 Depth 3
                                        #         Child Loop BB11_13 Depth 4
                                        #         Child Loop BB11_16 Depth 4
	move	$s8, $zero
	mul.d	$a1, $t3, $t4
	add.d	$ra, $fp, $a1
	move	$s5, $s1
	move	$s6, $t8
	move	$a6, $s0
	b	.LBB11_10
	.p2align	4, , 16
.LBB11_9:                               # %._crit_edge.us.us.us
                                        #   in Loop: Header=BB11_10 Depth=3
	addi.w	$a6, $a6, 1
	addi.d	$s8, $s8, 1
	add.w	$s6, $s6, $t2
	add.d	$s5, $s5, $t2
	beq	$a6, $t0, .LBB11_7
.LBB11_10:                              # %.preheader.us.us.us
                                        #   Parent Loop BB11_3 Depth=1
                                        #     Parent Loop BB11_8 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB11_13 Depth 4
                                        #         Child Loop BB11_16 Depth 4
	move	$a1, $t6
	bltu	$t7, $a5, .LBB11_15
# %bb.11:                               # %vector.scevcheck
                                        #   in Loop: Header=BB11_10 Depth=3
	mul.d	$a1, $t2, $s8
	add.w	$a4, $ra, $a1
	add.w	$a2, $a4, $t7
	move	$a1, $t6
	blt	$a2, $a4, .LBB11_15
# %bb.12:                               # %vector.body.preheader
                                        #   in Loop: Header=BB11_10 Depth=3
	move	$a4, $s3
	move	$a1, $s6
	.p2align	4, , 16
.LBB11_13:                              # %vector.body
                                        #   Parent Loop BB11_3 Depth=1
                                        #     Parent Loop BB11_8 Depth=2
                                        #       Parent Loop BB11_10 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	alsl.d	$a2, $a1, $t5, 3
	slli.d	$a3, $a1, 3
	vstx	$vr0, $t5, $a3
	vst	$vr0, $a2, 16
	addi.d	$a4, $a4, -4
	addi.w	$a1, $a1, 4
	bnez	$a4, .LBB11_13
# %bb.14:                               # %middle.block
                                        #   in Loop: Header=BB11_10 Depth=3
	move	$a1, $s4
	beq	$s2, $s3, .LBB11_9
	.p2align	4, , 16
.LBB11_15:                              # %scalar.ph.preheader
                                        #   in Loop: Header=BB11_10 Depth=3
	add.w	$a4, $s5, $a1
	sub.d	$a1, $t1, $a1
	.p2align	4, , 16
.LBB11_16:                              # %scalar.ph
                                        #   Parent Loop BB11_3 Depth=1
                                        #     Parent Loop BB11_8 Depth=2
                                        #       Parent Loop BB11_10 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	slli.d	$a2, $a4, 3
	stx.d	$zero, $t5, $a2
	addi.w	$a1, $a1, -1
	addi.w	$a4, $a4, 1
	bnez	$a1, .LBB11_16
	b	.LBB11_9
.LBB11_17:                              # %._crit_edge72
	pcaddu18i	$ra, %call36(CycleTime)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	alsl.d	$a1, $a1, $a2, 3
	ld.d	$a2, $a1, 960
	ld.d	$a3, $sp, 16                    # 8-byte Folded Reload
	sub.d	$a0, $a0, $a3
	add.d	$a0, $a0, $a2
	st.d	$a0, $a1, 960
	ld.d	$s8, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 136                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 144                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 152                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 160
	ret
.Lfunc_end11:
	.size	zero_grid, .Lfunc_end11-zero_grid
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function initialize_grid_to_scalar
.LCPI12_0:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
	.text
	.globl	initialize_grid_to_scalar
	.p2align	5
	.type	initialize_grid_to_scalar,@function
initialize_grid_to_scalar:              # @initialize_grid_to_scalar
# %bb.0:
	addi.d	$sp, $sp, -224
	st.d	$ra, $sp, 216                   # 8-byte Folded Spill
	st.d	$fp, $sp, 208                   # 8-byte Folded Spill
	st.d	$s0, $sp, 200                   # 8-byte Folded Spill
	st.d	$s1, $sp, 192                   # 8-byte Folded Spill
	st.d	$s2, $sp, 184                   # 8-byte Folded Spill
	st.d	$s3, $sp, 176                   # 8-byte Folded Spill
	st.d	$s4, $sp, 168                   # 8-byte Folded Spill
	st.d	$s5, $sp, 160                   # 8-byte Folded Spill
	st.d	$s6, $sp, 152                   # 8-byte Folded Spill
	st.d	$s7, $sp, 144                   # 8-byte Folded Spill
	st.d	$s8, $sp, 136                   # 8-byte Folded Spill
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 16                   # 16-byte Folded Spill
	move	$s2, $a2
	st.d	$a1, $sp, 48                    # 8-byte Folded Spill
	move	$fp, $a0
	pcaddu18i	$ra, %call36(CycleTime)
	jirl	$ra, $ra, 0
	vld	$vr16, $sp, 16                  # 16-byte Folded Reload
	st.d	$fp, $sp, 40                    # 8-byte Folded Spill
	ld.w	$a1, $fp, 1600
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	st.d	$a1, $sp, 80                    # 8-byte Folded Spill
	blez	$a1, .LBB12_38
# %bb.1:                                # %.lr.ph
	move	$a2, $zero
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 1776
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	vreplvei.d	$vr0, $vr16, 0
	ori	$a0, $zero, 216
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	mul.d	$a0, $a1, $a0
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	slli.d	$a0, $s2, 3
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.LCPI12_0)
	vld	$vr1, $a0, %pc_lo12(.LCPI12_0)
	ori	$a0, $zero, 0
	lu32i.d	$a0, 1
	vreplgr2vr.d	$vr2, $a0
	movgr2fr.d	$fa3, $zero
	vrepli.b	$vr4, -1
	ori	$a6, $zero, 6
	vrepli.b	$vr5, 0
	b	.LBB12_3
	.p2align	4, , 16
.LBB12_2:                               # %._crit_edge
                                        #   in Loop: Header=BB12_3 Depth=1
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
	addi.d	$a2, $a2, 1
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	beq	$a2, $a0, .LBB12_38
.LBB12_3:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB12_8 Depth 2
                                        #       Child Loop BB12_30 Depth 3
                                        #         Child Loop BB12_36 Depth 4
                                        #         Child Loop BB12_32 Depth 4
                                        #       Child Loop BB12_11 Depth 3
                                        #         Child Loop BB12_26 Depth 4
                                        #         Child Loop BB12_17 Depth 4
                                        #         Child Loop BB12_21 Depth 4
                                        #         Child Loop BB12_14 Depth 4
	st.d	$a2, $sp, 88                    # 8-byte Folded Spill
	slli.d	$a0, $a2, 8
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	add.d	$a0, $a1, $a0
	ld.d	$a0, $a0, 248
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	add.d	$a1, $a0, $a1
	ld.w	$a0, $a1, 44
	ld.w	$a2, $a1, 28
	sub.w	$s1, $zero, $a0
	st.d	$a2, $sp, 120                   # 8-byte Folded Spill
	add.w	$a2, $a2, $a0
	st.d	$a2, $sp, 112                   # 8-byte Folded Spill
	bge	$s1, $a2, .LBB12_2
# %bb.4:                                # %.preheader78.lr.ph
                                        #   in Loop: Header=BB12_3 Depth=1
	ld.w	$t2, $a1, 24
	add.w	$t3, $t2, $a0
	bge	$s1, $t3, .LBB12_2
# %bb.5:                                # %.preheader78.lr.ph
                                        #   in Loop: Header=BB12_3 Depth=1
	ld.w	$t4, $a1, 20
	add.w	$t5, $t4, $a0
	bge	$s1, $t5, .LBB12_2
# %bb.6:                                # %.preheader78.us.us.preheader
                                        #   in Loop: Header=BB12_3 Depth=1
	ld.w	$t6, $a1, 48
	ld.d	$a2, $a1, 176
	ld.w	$a4, $a1, 52
	move	$a5, $zero
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	ldx.d	$a1, $a2, $a1
	add.d	$a2, $t6, $a4
	addi.d	$a2, $a2, 1
	mul.w	$a2, $a0, $a2
	alsl.d	$s2, $a2, $a1, 3
	nor	$a1, $s1, $zero
	add.d	$s3, $a1, $t5
	nor	$a1, $t6, $zero
	sub.d	$a1, $a1, $a4
	sub.d	$s4, $t5, $s1
	mul.w	$a3, $a0, $a1
	move	$a7, $s4
	bstrins.d	$a7, $zero, 1, 0
	add.d	$s7, $a7, $s1
	vreplgr2vr.d	$vr6, $t4
	vreplgr2vr.d	$vr7, $s1
	vadd.d	$vr7, $vr7, $vr1
	vinsgr2vr.w	$vr8, $s1, 0
	vinsgr2vr.w	$vr8, $s1, 1
	vadd.w	$vr8, $vr8, $vr2
	add.d	$a1, $a4, $t6
	sub.d	$a1, $zero, $a1
	mul.d	$a2, $a0, $a1
	st.d	$a3, $sp, 96                    # 8-byte Folded Spill
	move	$a1, $a3
	move	$a3, $s1
	st.d	$a4, $sp, 104                   # 8-byte Folded Spill
	b	.LBB12_8
	.p2align	4, , 16
.LBB12_7:                               # %._crit_edge81.split.us.us.us
                                        #   in Loop: Header=BB12_8 Depth=2
	addi.w	$a3, $a3, 1
	ld.d	$a5, $sp, 128                   # 8-byte Folded Reload
	addi.d	$a5, $a5, 1
	ld.d	$a4, $sp, 104                   # 8-byte Folded Reload
	add.w	$a1, $a1, $a4
	add.d	$a2, $a2, $a4
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	beq	$a3, $a0, .LBB12_2
.LBB12_8:                               # %.preheader78.us.us
                                        #   Parent Loop BB12_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB12_30 Depth 3
                                        #         Child Loop BB12_36 Depth 4
                                        #         Child Loop BB12_32 Depth 4
                                        #       Child Loop BB12_11 Depth 3
                                        #         Child Loop BB12_26 Depth 4
                                        #         Child Loop BB12_17 Depth 4
                                        #         Child Loop BB12_21 Depth 4
                                        #         Child Loop BB12_14 Depth 4
	st.d	$a5, $sp, 128                   # 8-byte Folded Spill
	mul.d	$a0, $a4, $a5
	ld.d	$a4, $sp, 96                    # 8-byte Folded Reload
	add.d	$fp, $a4, $a0
	srli.d	$s0, $s3, 32
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	bge	$a3, $a0, .LBB12_28
# %bb.9:                                # %.preheader.us.us92.us.preheader
                                        #   in Loop: Header=BB12_8 Depth=2
	move	$a4, $zero
	move	$s8, $a2
	move	$s5, $a1
	move	$t0, $s1
	b	.LBB12_11
	.p2align	4, , 16
.LBB12_10:                              # %._crit_edge.us.us.us
                                        #   in Loop: Header=BB12_11 Depth=3
	addi.w	$t0, $t0, 1
	addi.d	$a4, $a4, 1
	add.w	$s5, $s5, $t6
	add.d	$s8, $s8, $t6
	beq	$t0, $t3, .LBB12_7
.LBB12_11:                              # %.preheader.us.us92.us
                                        #   Parent Loop BB12_3 Depth=1
                                        #     Parent Loop BB12_8 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB12_26 Depth 4
                                        #         Child Loop BB12_17 Depth 4
                                        #         Child Loop BB12_21 Depth 4
                                        #         Child Loop BB12_14 Depth 4
	mul.d	$a0, $t6, $a4
	add.w	$ra, $fp, $a0
	bge	$t0, $t2, .LBB12_15
# %bb.12:                               # %.lr.ph.split.us84.us.us.preheader
                                        #   in Loop: Header=BB12_11 Depth=3
	or	$a0, $t0, $a3
	move	$s6, $s1
	ori	$a5, $zero, 4
	bgeu	$s4, $a5, .LBB12_18
.LBB12_13:                              # %.lr.ph.split.us84.us.us.preheader176
                                        #   in Loop: Header=BB12_11 Depth=3
	move	$ra, $s6
	.p2align	4, , 16
.LBB12_14:                              # %.lr.ph.split.us84.us.us
                                        #   Parent Loop BB12_3 Depth=1
                                        #     Parent Loop BB12_8 Depth=2
                                        #       Parent Loop BB12_11 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	add.w	$t1, $s8, $s6
	or	$t7, $a0, $s6
	addi.w	$t7, $t7, 0
	addi.w	$a5, $zero, -1
	slt	$t8, $ra, $t4
	slt	$a5, $a5, $t7
	movgr2cf	$fcc0, $t8
	fsel	$ft1, $fa3, $ft8, $fcc0
	movgr2cf	$fcc0, $a5
	fsel	$ft1, $fa3, $ft1, $fcc0
	slli.d	$a5, $t1, 3
	fstx.d	$ft1, $s2, $a5
	addi.d	$ra, $ra, 1
	addi.d	$s6, $s6, 1
	bne	$t5, $ra, .LBB12_14
	b	.LBB12_10
	.p2align	4, , 16
.LBB12_15:                              # %.lr.ph.split.us.us.us.us.preheader
                                        #   in Loop: Header=BB12_11 Depth=3
	move	$s6, $s1
	bgeu	$s4, $a6, .LBB12_23
.LBB12_16:                              # %.lr.ph.split.us.us.us.us.preheader177
                                        #   in Loop: Header=BB12_11 Depth=3
	add.w	$a0, $s8, $s6
	sub.d	$s6, $t5, $s6
	.p2align	4, , 16
.LBB12_17:                              # %.lr.ph.split.us.us.us.us
                                        #   Parent Loop BB12_3 Depth=1
                                        #     Parent Loop BB12_8 Depth=2
                                        #       Parent Loop BB12_11 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	slli.d	$a5, $a0, 3
	stx.d	$zero, $s2, $a5
	addi.d	$s6, $s6, -1
	addi.w	$a0, $a0, 1
	bnez	$s6, .LBB12_17
	b	.LBB12_10
	.p2align	4, , 16
.LBB12_18:                              # %vector.scevcheck
                                        #   in Loop: Header=BB12_11 Depth=3
	add.w	$t1, $ra, $s3
	move	$s6, $s1
	blt	$t1, $ra, .LBB12_13
# %bb.19:                               # %vector.scevcheck
                                        #   in Loop: Header=BB12_11 Depth=3
	move	$s6, $s1
	bnez	$s0, .LBB12_13
# %bb.20:                               # %vector.ph
                                        #   in Loop: Header=BB12_11 Depth=3
	vinsgr2vr.w	$vr9, $a0, 0
	vinsgr2vr.w	$vr9, $a0, 1
	move	$s6, $a7
	move	$ra, $s5
	vori.b	$vr10, $vr7, 0
	vori.b	$vr11, $vr8, 0
	.p2align	4, , 16
.LBB12_21:                              # %vector.body
                                        #   Parent Loop BB12_3 Depth=1
                                        #     Parent Loop BB12_8 Depth=2
                                        #       Parent Loop BB12_11 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	vaddi.du	$vr12, $vr10, 2
	vaddi.wu	$vr13, $vr11, 2
	vor.v	$vr14, $vr9, $vr11
	vor.v	$vr13, $vr9, $vr13
	vslt.w	$vr14, $vr4, $vr14
	vshuf4i.w	$vr14, $vr14, 16
	vslli.d	$vr14, $vr14, 32
	vsrai.d	$vr14, $vr14, 32
	vslt.w	$vr13, $vr4, $vr13
	vshuf4i.w	$vr13, $vr13, 16
	vslli.d	$vr13, $vr13, 32
	vsrai.d	$vr13, $vr13, 32
	vslt.d	$vr15, $vr10, $vr6
	vslt.d	$vr12, $vr12, $vr6
	vand.v	$vr14, $vr14, $vr15
	vand.v	$vr12, $vr13, $vr12
	vand.v	$vr13, $vr14, $vr0
	vand.v	$vr12, $vr12, $vr0
	alsl.d	$t1, $ra, $s2, 3
	slli.d	$t7, $ra, 3
	vstx	$vr13, $s2, $t7
	vst	$vr12, $t1, 16
	vaddi.du	$vr10, $vr10, 4
	vaddi.wu	$vr11, $vr11, 4
	addi.d	$s6, $s6, -4
	addi.w	$ra, $ra, 4
	bnez	$s6, .LBB12_21
# %bb.22:                               # %middle.block
                                        #   in Loop: Header=BB12_11 Depth=3
	move	$s6, $s7
	beq	$s4, $a7, .LBB12_10
	b	.LBB12_13
	.p2align	4, , 16
.LBB12_23:                              # %vector.scevcheck148
                                        #   in Loop: Header=BB12_11 Depth=3
	add.w	$a0, $ra, $s3
	move	$s6, $s1
	blt	$a0, $ra, .LBB12_16
# %bb.24:                               # %vector.scevcheck148
                                        #   in Loop: Header=BB12_11 Depth=3
	move	$s6, $s1
	bnez	$s0, .LBB12_16
# %bb.25:                               # %vector.body154.preheader
                                        #   in Loop: Header=BB12_11 Depth=3
	move	$a0, $a7
	move	$s6, $s5
	.p2align	4, , 16
.LBB12_26:                              # %vector.body154
                                        #   Parent Loop BB12_3 Depth=1
                                        #     Parent Loop BB12_8 Depth=2
                                        #       Parent Loop BB12_11 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	alsl.d	$ra, $s6, $s2, 3
	slli.d	$t1, $s6, 3
	vstx	$vr5, $s2, $t1
	vst	$vr5, $ra, 16
	addi.d	$a0, $a0, -4
	addi.w	$s6, $s6, 4
	bnez	$a0, .LBB12_26
# %bb.27:                               # %middle.block158
                                        #   in Loop: Header=BB12_11 Depth=3
	move	$s6, $s7
	beq	$s4, $a7, .LBB12_10
	b	.LBB12_16
	.p2align	4, , 16
.LBB12_28:                              # %.preheader.us.us.us.us.preheader
                                        #   in Loop: Header=BB12_8 Depth=2
	move	$a0, $zero
	move	$a4, $a2
	move	$t0, $a1
	move	$s8, $s1
	b	.LBB12_30
	.p2align	4, , 16
.LBB12_29:                              # %._crit_edge.split.us.us.us.us.us
                                        #   in Loop: Header=BB12_30 Depth=3
	addi.w	$s8, $s8, 1
	addi.d	$a0, $a0, 1
	add.w	$t0, $t0, $t6
	add.d	$a4, $a4, $t6
	beq	$s8, $t3, .LBB12_7
.LBB12_30:                              # %.preheader.us.us.us.us
                                        #   Parent Loop BB12_3 Depth=1
                                        #     Parent Loop BB12_8 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB12_36 Depth 4
                                        #         Child Loop BB12_32 Depth 4
	move	$s6, $s1
	bgeu	$s4, $a6, .LBB12_33
.LBB12_31:                              # %scalar.ph164.preheader
                                        #   in Loop: Header=BB12_30 Depth=3
	add.w	$s5, $a4, $s6
	sub.d	$s6, $t5, $s6
	.p2align	4, , 16
.LBB12_32:                              # %scalar.ph164
                                        #   Parent Loop BB12_3 Depth=1
                                        #     Parent Loop BB12_8 Depth=2
                                        #       Parent Loop BB12_30 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	slli.d	$a5, $s5, 3
	stx.d	$zero, $s2, $a5
	addi.d	$s6, $s6, -1
	addi.w	$s5, $s5, 1
	bnez	$s6, .LBB12_32
	b	.LBB12_29
	.p2align	4, , 16
.LBB12_33:                              # %vector.scevcheck161
                                        #   in Loop: Header=BB12_30 Depth=3
	mul.d	$a5, $t6, $a0
	add.w	$a5, $fp, $a5
	add.w	$t1, $a5, $s3
	move	$s6, $s1
	blt	$t1, $a5, .LBB12_31
# %bb.34:                               # %vector.scevcheck161
                                        #   in Loop: Header=BB12_30 Depth=3
	move	$s6, $s1
	bnez	$s0, .LBB12_31
# %bb.35:                               # %vector.body169.preheader
                                        #   in Loop: Header=BB12_30 Depth=3
	move	$s5, $a7
	move	$s6, $t0
	.p2align	4, , 16
.LBB12_36:                              # %vector.body169
                                        #   Parent Loop BB12_3 Depth=1
                                        #     Parent Loop BB12_8 Depth=2
                                        #       Parent Loop BB12_30 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	alsl.d	$a5, $s6, $s2, 3
	slli.d	$t1, $s6, 3
	vstx	$vr5, $s2, $t1
	vst	$vr5, $a5, 16
	addi.d	$s5, $s5, -4
	addi.w	$s6, $s6, 4
	bnez	$s5, .LBB12_36
# %bb.37:                               # %middle.block173
                                        #   in Loop: Header=BB12_30 Depth=3
	move	$s6, $s7
	beq	$s4, $a7, .LBB12_29
	b	.LBB12_31
.LBB12_38:                              # %._crit_edge100
	pcaddu18i	$ra, %call36(CycleTime)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	alsl.d	$a1, $a1, $a2, 3
	ld.d	$a2, $a1, 960
	ld.d	$a3, $sp, 32                    # 8-byte Folded Reload
	sub.d	$a0, $a0, $a3
	add.d	$a0, $a0, $a2
	st.d	$a0, $a1, 960
	ld.d	$s8, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 184                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 192                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 200                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 208                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 216                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 224
	ret
.Lfunc_end12:
	.size	initialize_grid_to_scalar, .Lfunc_end12-initialize_grid_to_scalar
                                        # -- End function
	.globl	add_grids                       # -- Begin function add_grids
	.p2align	5
	.type	add_grids,@function
add_grids:                              # @add_grids
# %bb.0:
	addi.d	$sp, $sp, -160
	st.d	$ra, $sp, 152                   # 8-byte Folded Spill
	st.d	$fp, $sp, 144                   # 8-byte Folded Spill
	st.d	$s0, $sp, 136                   # 8-byte Folded Spill
	st.d	$s1, $sp, 128                   # 8-byte Folded Spill
	st.d	$s2, $sp, 120                   # 8-byte Folded Spill
	st.d	$s3, $sp, 112                   # 8-byte Folded Spill
	st.d	$s4, $sp, 104                   # 8-byte Folded Spill
	st.d	$s5, $sp, 96                    # 8-byte Folded Spill
	st.d	$s6, $sp, 88                    # 8-byte Folded Spill
	st.d	$s7, $sp, 80                    # 8-byte Folded Spill
	st.d	$s8, $sp, 72                    # 8-byte Folded Spill
	move	$s2, $a4
                                        # kill: def $f1_64 killed $f1_64 def $vr1
	vst	$vr1, $sp, 32                   # 16-byte Folded Spill
	move	$s3, $a3
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 16                   # 16-byte Folded Spill
	move	$s4, $a2
	st.d	$a1, $sp, 64                    # 8-byte Folded Spill
	move	$fp, $a0
	pcaddu18i	$ra, %call36(CycleTime)
	jirl	$ra, $ra, 0
	vld	$vr7, $sp, 16                   # 16-byte Folded Reload
	vld	$vr6, $sp, 32                   # 16-byte Folded Reload
	st.d	$fp, $sp, 56                    # 8-byte Folded Spill
	ld.w	$a1, $fp, 1600
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	blez	$a1, .LBB13_18
# %bb.1:                                # %.lr.ph
	move	$a0, $zero
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a2, $a2, 1776
	vreplvei.d	$vr0, $vr6, 0
	vreplvei.d	$vr1, $vr7, 0
	ori	$a3, $zero, 216
	ld.d	$a4, $sp, 64                    # 8-byte Folded Reload
	mul.d	$a3, $a4, $a3
	slli.d	$a4, $s4, 3
	slli.d	$a5, $s3, 3
	slli.d	$a6, $s2, 3
	ori	$a7, $zero, 6
	b	.LBB13_3
	.p2align	4, , 16
.LBB13_2:                               # %._crit_edge
                                        #   in Loop: Header=BB13_3 Depth=1
	addi.d	$a0, $a0, 1
	beq	$a0, $a1, .LBB13_18
.LBB13_3:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB13_8 Depth 2
                                        #       Child Loop BB13_10 Depth 3
                                        #         Child Loop BB13_16 Depth 4
                                        #         Child Loop BB13_14 Depth 4
	slli.d	$t0, $a0, 8
	add.d	$t0, $a2, $t0
	ld.d	$t0, $t0, 248
	add.d	$t7, $t0, $a3
	ld.w	$t0, $t7, 28
	blez	$t0, .LBB13_2
# %bb.4:                                #   in Loop: Header=BB13_3 Depth=1
	ld.w	$t1, $t7, 24
	blez	$t1, .LBB13_2
# %bb.5:                                #   in Loop: Header=BB13_3 Depth=1
	ld.w	$t2, $t7, 20
	blez	$t2, .LBB13_2
# %bb.6:                                # %.preheader75.us.us.preheader
                                        #   in Loop: Header=BB13_3 Depth=1
	ld.w	$t3, $t7, 48
	ld.d	$t8, $t7, 176
	ld.w	$t4, $t7, 52
	move	$t5, $zero
	move	$t6, $zero
	ld.w	$t7, $t7, 44
	ldx.d	$s1, $t8, $a4
	add.d	$s2, $t3, $t4
	addi.d	$s2, $s2, 1
	ldx.d	$s3, $t8, $a5
	ldx.d	$s4, $t8, $a6
	mul.w	$s2, $t7, $s2
	alsl.d	$t7, $s2, $s1, 3
	alsl.d	$t8, $s2, $s3, 3
	alsl.d	$s2, $s2, $s4, 3
	sub.d	$s5, $s1, $s3
	sub.d	$s1, $s1, $s4
	addi.d	$s3, $t2, -1
	sltui	$s4, $s5, 32
	sltui	$s1, $s1, 32
	or	$s4, $s4, $s1
	bstrpick.d	$s1, $t2, 30, 2
	slli.d	$s1, $s1, 2
	b	.LBB13_8
	.p2align	4, , 16
.LBB13_7:                               # %._crit_edge78.split.us.us.us
                                        #   in Loop: Header=BB13_8 Depth=2
	addi.w	$t6, $t6, 1
	add.w	$t5, $t5, $t4
	beq	$t6, $t0, .LBB13_2
.LBB13_8:                               # %.preheader75.us.us
                                        #   Parent Loop BB13_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB13_10 Depth 3
                                        #         Child Loop BB13_16 Depth 4
                                        #         Child Loop BB13_14 Depth 4
	move	$s6, $zero
	mul.d	$s7, $t4, $t6
	move	$s8, $t5
	b	.LBB13_10
	.p2align	4, , 16
.LBB13_9:                               # %._crit_edge.us.us.us
                                        #   in Loop: Header=BB13_10 Depth=3
	addi.w	$s6, $s6, 1
	add.w	$s8, $s8, $t3
	beq	$s6, $t1, .LBB13_7
.LBB13_10:                              # %.preheader.us.us.us
                                        #   Parent Loop BB13_3 Depth=1
                                        #     Parent Loop BB13_8 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB13_16 Depth 4
                                        #         Child Loop BB13_14 Depth 4
	bltu	$t2, $a7, .LBB13_12
# %bb.11:                               # %vector.scevcheck
                                        #   in Loop: Header=BB13_10 Depth=3
	srli.d	$s5, $s3, 32
	sltu	$s5, $zero, $s5
	mul.d	$ra, $t3, $s6
	add.w	$ra, $s7, $ra
	add.w	$fp, $ra, $s3
	slt	$fp, $fp, $ra
	or	$fp, $fp, $s5
	or	$fp, $fp, $s4
	andi	$fp, $fp, 1
	beqz	$fp, .LBB13_15
.LBB13_12:                              #   in Loop: Header=BB13_10 Depth=3
	move	$ra, $zero
.LBB13_13:                              # %scalar.ph.preheader
                                        #   in Loop: Header=BB13_10 Depth=3
	add.w	$s5, $s8, $ra
	sub.d	$ra, $t2, $ra
	.p2align	4, , 16
.LBB13_14:                              # %scalar.ph
                                        #   Parent Loop BB13_3 Depth=1
                                        #     Parent Loop BB13_8 Depth=2
                                        #       Parent Loop BB13_10 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	slli.d	$fp, $s5, 3
	fldx.d	$fa2, $s2, $fp
	fldx.d	$fa3, $t8, $fp
	fmul.d	$fa2, $fa6, $fa2
	fmadd.d	$fa2, $fa7, $fa3, $fa2
	fstx.d	$fa2, $t7, $fp
	addi.d	$ra, $ra, -1
	addi.w	$s5, $s5, 1
	bnez	$ra, .LBB13_14
	b	.LBB13_9
	.p2align	4, , 16
.LBB13_15:                              # %vector.body.preheader
                                        #   in Loop: Header=BB13_10 Depth=3
	move	$ra, $s8
	move	$s5, $s1
	.p2align	4, , 16
.LBB13_16:                              # %vector.body
                                        #   Parent Loop BB13_3 Depth=1
                                        #     Parent Loop BB13_8 Depth=2
                                        #       Parent Loop BB13_10 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	slli.d	$fp, $ra, 3
	alsl.d	$s0, $ra, $s2, 3
	vldx	$vr2, $s2, $fp
	vld	$vr3, $s0, 16
	alsl.d	$s0, $ra, $t8, 3
	vldx	$vr4, $t8, $fp
	vld	$vr5, $s0, 16
	vfmul.d	$vr2, $vr0, $vr2
	vfmul.d	$vr3, $vr0, $vr3
	vfmadd.d	$vr2, $vr1, $vr4, $vr2
	vfmadd.d	$vr3, $vr1, $vr5, $vr3
	alsl.d	$s0, $ra, $t7, 3
	vstx	$vr2, $t7, $fp
	vst	$vr3, $s0, 16
	addi.d	$s5, $s5, -4
	addi.w	$ra, $ra, 4
	bnez	$s5, .LBB13_16
# %bb.17:                               # %middle.block
                                        #   in Loop: Header=BB13_10 Depth=3
	move	$ra, $s1
	beq	$s1, $t2, .LBB13_9
	b	.LBB13_13
.LBB13_18:                              # %._crit_edge86
	pcaddu18i	$ra, %call36(CycleTime)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	alsl.d	$a1, $a1, $a2, 3
	ld.d	$a2, $a1, 960
	ld.d	$a3, $sp, 48                    # 8-byte Folded Reload
	sub.d	$a0, $a0, $a3
	add.d	$a0, $a0, $a2
	st.d	$a0, $a1, 960
	ld.d	$s8, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 136                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 144                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 152                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 160
	ret
.Lfunc_end13:
	.size	add_grids, .Lfunc_end13-add_grids
                                        # -- End function
	.globl	mul_grids                       # -- Begin function mul_grids
	.p2align	5
	.type	mul_grids,@function
mul_grids:                              # @mul_grids
# %bb.0:
	addi.d	$sp, $sp, -144
	st.d	$ra, $sp, 136                   # 8-byte Folded Spill
	st.d	$fp, $sp, 128                   # 8-byte Folded Spill
	st.d	$s0, $sp, 120                   # 8-byte Folded Spill
	st.d	$s1, $sp, 112                   # 8-byte Folded Spill
	st.d	$s2, $sp, 104                   # 8-byte Folded Spill
	st.d	$s3, $sp, 96                    # 8-byte Folded Spill
	st.d	$s4, $sp, 88                    # 8-byte Folded Spill
	st.d	$s5, $sp, 80                    # 8-byte Folded Spill
	st.d	$s6, $sp, 72                    # 8-byte Folded Spill
	st.d	$s7, $sp, 64                    # 8-byte Folded Spill
	st.d	$s8, $sp, 56                    # 8-byte Folded Spill
	move	$s2, $a4
	move	$s3, $a3
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 16                   # 16-byte Folded Spill
	move	$s4, $a2
	st.d	$a1, $sp, 48                    # 8-byte Folded Spill
	move	$fp, $a0
	pcaddu18i	$ra, %call36(CycleTime)
	jirl	$ra, $ra, 0
	vld	$vr5, $sp, 16                   # 16-byte Folded Reload
	st.d	$fp, $sp, 40                    # 8-byte Folded Spill
	ld.w	$a1, $fp, 1600
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	blez	$a1, .LBB14_18
# %bb.1:                                # %.lr.ph
	move	$a0, $zero
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a2, $a2, 1776
	vreplvei.d	$vr0, $vr5, 0
	ori	$a3, $zero, 216
	ld.d	$a4, $sp, 48                    # 8-byte Folded Reload
	mul.d	$a3, $a4, $a3
	slli.d	$a4, $s4, 3
	slli.d	$a5, $s3, 3
	slli.d	$a6, $s2, 3
	ori	$a7, $zero, 4
	b	.LBB14_3
	.p2align	4, , 16
.LBB14_2:                               # %._crit_edge
                                        #   in Loop: Header=BB14_3 Depth=1
	addi.d	$a0, $a0, 1
	beq	$a0, $a1, .LBB14_18
.LBB14_3:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB14_8 Depth 2
                                        #       Child Loop BB14_10 Depth 3
                                        #         Child Loop BB14_16 Depth 4
                                        #         Child Loop BB14_14 Depth 4
	slli.d	$t0, $a0, 8
	add.d	$t0, $a2, $t0
	ld.d	$t0, $t0, 248
	add.d	$t7, $t0, $a3
	ld.w	$t0, $t7, 28
	blez	$t0, .LBB14_2
# %bb.4:                                #   in Loop: Header=BB14_3 Depth=1
	ld.w	$t1, $t7, 24
	blez	$t1, .LBB14_2
# %bb.5:                                #   in Loop: Header=BB14_3 Depth=1
	ld.w	$t2, $t7, 20
	blez	$t2, .LBB14_2
# %bb.6:                                # %.preheader74.us.us.preheader
                                        #   in Loop: Header=BB14_3 Depth=1
	ld.w	$t3, $t7, 48
	ld.d	$t8, $t7, 176
	ld.w	$t4, $t7, 52
	move	$t5, $zero
	move	$t6, $zero
	ld.w	$t7, $t7, 44
	ldx.d	$s1, $t8, $a4
	add.d	$s2, $t3, $t4
	addi.d	$s2, $s2, 1
	ldx.d	$s3, $t8, $a5
	ldx.d	$s4, $t8, $a6
	mul.w	$s2, $t7, $s2
	alsl.d	$t7, $s2, $s1, 3
	alsl.d	$t8, $s2, $s3, 3
	alsl.d	$s2, $s2, $s4, 3
	sub.d	$s5, $s1, $s3
	sub.d	$s1, $s1, $s4
	addi.d	$s3, $t2, -1
	sltui	$s4, $s5, 32
	sltui	$s1, $s1, 32
	or	$s4, $s4, $s1
	bstrpick.d	$s1, $t2, 30, 2
	slli.d	$s1, $s1, 2
	b	.LBB14_8
	.p2align	4, , 16
.LBB14_7:                               # %._crit_edge77.split.us.us.us
                                        #   in Loop: Header=BB14_8 Depth=2
	addi.w	$t6, $t6, 1
	add.w	$t5, $t5, $t4
	beq	$t6, $t0, .LBB14_2
.LBB14_8:                               # %.preheader74.us.us
                                        #   Parent Loop BB14_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB14_10 Depth 3
                                        #         Child Loop BB14_16 Depth 4
                                        #         Child Loop BB14_14 Depth 4
	move	$s6, $zero
	mul.d	$s7, $t4, $t6
	move	$s8, $t5
	b	.LBB14_10
	.p2align	4, , 16
.LBB14_9:                               # %._crit_edge.us.us.us
                                        #   in Loop: Header=BB14_10 Depth=3
	addi.w	$s6, $s6, 1
	add.w	$s8, $s8, $t3
	beq	$s6, $t1, .LBB14_7
.LBB14_10:                              # %.preheader.us.us.us
                                        #   Parent Loop BB14_3 Depth=1
                                        #     Parent Loop BB14_8 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB14_16 Depth 4
                                        #         Child Loop BB14_14 Depth 4
	bltu	$t2, $a7, .LBB14_12
# %bb.11:                               # %vector.scevcheck
                                        #   in Loop: Header=BB14_10 Depth=3
	srli.d	$s5, $s3, 32
	sltu	$s5, $zero, $s5
	mul.d	$ra, $t3, $s6
	add.w	$ra, $s7, $ra
	add.w	$fp, $ra, $s3
	slt	$fp, $fp, $ra
	or	$fp, $fp, $s5
	or	$fp, $fp, $s4
	andi	$fp, $fp, 1
	beqz	$fp, .LBB14_15
.LBB14_12:                              #   in Loop: Header=BB14_10 Depth=3
	move	$ra, $zero
.LBB14_13:                              # %scalar.ph.preheader
                                        #   in Loop: Header=BB14_10 Depth=3
	add.w	$s5, $s8, $ra
	sub.d	$ra, $t2, $ra
	.p2align	4, , 16
.LBB14_14:                              # %scalar.ph
                                        #   Parent Loop BB14_3 Depth=1
                                        #     Parent Loop BB14_8 Depth=2
                                        #       Parent Loop BB14_10 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	slli.d	$fp, $s5, 3
	fldx.d	$fa1, $t8, $fp
	fldx.d	$fa2, $s2, $fp
	fmul.d	$fa1, $fa5, $fa1
	fmul.d	$fa1, $fa1, $fa2
	fstx.d	$fa1, $t7, $fp
	addi.d	$ra, $ra, -1
	addi.w	$s5, $s5, 1
	bnez	$ra, .LBB14_14
	b	.LBB14_9
	.p2align	4, , 16
.LBB14_15:                              # %vector.body.preheader
                                        #   in Loop: Header=BB14_10 Depth=3
	move	$ra, $s8
	move	$s5, $s1
	.p2align	4, , 16
.LBB14_16:                              # %vector.body
                                        #   Parent Loop BB14_3 Depth=1
                                        #     Parent Loop BB14_8 Depth=2
                                        #       Parent Loop BB14_10 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	alsl.d	$fp, $ra, $t8, 3
	slli.d	$s0, $ra, 3
	vldx	$vr1, $t8, $s0
	vld	$vr2, $fp, 16
	alsl.d	$fp, $ra, $s2, 3
	vldx	$vr3, $s2, $s0
	vld	$vr4, $fp, 16
	vfmul.d	$vr1, $vr0, $vr1
	vfmul.d	$vr2, $vr0, $vr2
	vfmul.d	$vr1, $vr1, $vr3
	vfmul.d	$vr2, $vr2, $vr4
	alsl.d	$fp, $ra, $t7, 3
	vstx	$vr1, $t7, $s0
	vst	$vr2, $fp, 16
	addi.d	$s5, $s5, -4
	addi.w	$ra, $ra, 4
	bnez	$s5, .LBB14_16
# %bb.17:                               # %middle.block
                                        #   in Loop: Header=BB14_10 Depth=3
	move	$ra, $s1
	beq	$s1, $t2, .LBB14_9
	b	.LBB14_13
.LBB14_18:                              # %._crit_edge85
	pcaddu18i	$ra, %call36(CycleTime)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	alsl.d	$a1, $a1, $a2, 3
	ld.d	$a2, $a1, 960
	ld.d	$a3, $sp, 32                    # 8-byte Folded Reload
	sub.d	$a0, $a0, $a3
	add.d	$a0, $a0, $a2
	st.d	$a0, $a1, 960
	ld.d	$s8, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 128                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 136                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 144
	ret
.Lfunc_end14:
	.size	mul_grids, .Lfunc_end14-mul_grids
                                        # -- End function
	.globl	scale_grid                      # -- Begin function scale_grid
	.p2align	5
	.type	scale_grid,@function
scale_grid:                             # @scale_grid
# %bb.0:
	addi.d	$sp, $sp, -144
	st.d	$ra, $sp, 136                   # 8-byte Folded Spill
	st.d	$fp, $sp, 128                   # 8-byte Folded Spill
	st.d	$s0, $sp, 120                   # 8-byte Folded Spill
	st.d	$s1, $sp, 112                   # 8-byte Folded Spill
	st.d	$s2, $sp, 104                   # 8-byte Folded Spill
	st.d	$s3, $sp, 96                    # 8-byte Folded Spill
	st.d	$s4, $sp, 88                    # 8-byte Folded Spill
	st.d	$s5, $sp, 80                    # 8-byte Folded Spill
	st.d	$s6, $sp, 72                    # 8-byte Folded Spill
	st.d	$s7, $sp, 64                    # 8-byte Folded Spill
	st.d	$s8, $sp, 56                    # 8-byte Folded Spill
	move	$s2, $a3
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 16                   # 16-byte Folded Spill
	move	$s3, $a2
	st.d	$a1, $sp, 48                    # 8-byte Folded Spill
	move	$s0, $a0
	pcaddu18i	$ra, %call36(CycleTime)
	jirl	$ra, $ra, 0
	vld	$vr3, $sp, 16                   # 16-byte Folded Reload
	ld.w	$a1, $s0, 1600
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	blez	$a1, .LBB15_20
# %bb.1:                                # %.lr.ph
	move	$a0, $zero
	ld.d	$a2, $s0, 1776
	vreplvei.d	$vr0, $vr3, 0
	ori	$a3, $zero, 216
	ld.d	$a4, $sp, 48                    # 8-byte Folded Reload
	mul.d	$a3, $a4, $a3
	slli.d	$a4, $s3, 3
	slli.d	$a5, $s2, 3
	ori	$a6, $zero, 6
	ori	$a7, $zero, 32
	b	.LBB15_3
	.p2align	4, , 16
.LBB15_2:                               # %._crit_edge
                                        #   in Loop: Header=BB15_3 Depth=1
	addi.d	$a0, $a0, 1
	beq	$a0, $a1, .LBB15_20
.LBB15_3:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB15_8 Depth 2
                                        #       Child Loop BB15_10 Depth 3
                                        #         Child Loop BB15_18 Depth 4
                                        #         Child Loop BB15_13 Depth 4
	slli.d	$t0, $a0, 8
	add.d	$t0, $a2, $t0
	ld.d	$t0, $t0, 248
	add.d	$t7, $t0, $a3
	ld.w	$t0, $t7, 28
	blez	$t0, .LBB15_2
# %bb.4:                                #   in Loop: Header=BB15_3 Depth=1
	ld.w	$t1, $t7, 24
	blez	$t1, .LBB15_2
# %bb.5:                                #   in Loop: Header=BB15_3 Depth=1
	ld.w	$t2, $t7, 20
	blez	$t2, .LBB15_2
# %bb.6:                                # %.preheader65.us.us.preheader
                                        #   in Loop: Header=BB15_3 Depth=1
	ld.w	$t3, $t7, 48
	ld.d	$t8, $t7, 176
	ld.w	$t4, $t7, 52
	move	$t5, $zero
	move	$t6, $zero
	ld.w	$t7, $t7, 44
	ldx.d	$s3, $t8, $a4
	add.d	$s2, $t3, $t4
	ldx.d	$s4, $t8, $a5
	addi.d	$t8, $s2, 1
	mul.w	$t8, $t7, $t8
	alsl.d	$t7, $t8, $s3, 3
	alsl.d	$t8, $t8, $s4, 3
	addi.d	$s2, $t2, -1
	sub.d	$s3, $s3, $s4
	bstrpick.d	$s4, $t2, 30, 2
	slli.d	$s4, $s4, 2
	b	.LBB15_8
	.p2align	4, , 16
.LBB15_7:                               # %._crit_edge68.split.us.us.us
                                        #   in Loop: Header=BB15_8 Depth=2
	addi.w	$t6, $t6, 1
	add.w	$t5, $t5, $t4
	beq	$t6, $t0, .LBB15_2
.LBB15_8:                               # %.preheader65.us.us
                                        #   Parent Loop BB15_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB15_10 Depth 3
                                        #         Child Loop BB15_18 Depth 4
                                        #         Child Loop BB15_13 Depth 4
	move	$s5, $zero
	mul.d	$s6, $t4, $t6
	move	$s7, $t5
	b	.LBB15_10
	.p2align	4, , 16
.LBB15_9:                               # %._crit_edge.us.us.us
                                        #   in Loop: Header=BB15_10 Depth=3
	addi.w	$s5, $s5, 1
	add.w	$s7, $s7, $t3
	beq	$s5, $t1, .LBB15_7
.LBB15_10:                              # %.preheader.us.us.us
                                        #   Parent Loop BB15_3 Depth=1
                                        #     Parent Loop BB15_8 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB15_18 Depth 4
                                        #         Child Loop BB15_13 Depth 4
	bgeu	$t2, $a6, .LBB15_14
# %bb.11:                               #   in Loop: Header=BB15_10 Depth=3
	move	$s8, $zero
.LBB15_12:                              # %scalar.ph.preheader
                                        #   in Loop: Header=BB15_10 Depth=3
	add.w	$ra, $s7, $s8
	sub.d	$s8, $t2, $s8
	.p2align	4, , 16
.LBB15_13:                              # %scalar.ph
                                        #   Parent Loop BB15_3 Depth=1
                                        #     Parent Loop BB15_8 Depth=2
                                        #       Parent Loop BB15_10 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	slli.d	$fp, $ra, 3
	fldx.d	$fa1, $t8, $fp
	fmul.d	$fa1, $fa3, $fa1
	fstx.d	$fa1, $t7, $fp
	addi.d	$s8, $s8, -1
	addi.w	$ra, $ra, 1
	bnez	$s8, .LBB15_13
	b	.LBB15_9
	.p2align	4, , 16
.LBB15_14:                              # %vector.scevcheck
                                        #   in Loop: Header=BB15_10 Depth=3
	mul.d	$s8, $t3, $s5
	add.w	$ra, $s6, $s8
	add.w	$s1, $ra, $s2
	move	$s8, $zero
	blt	$s1, $ra, .LBB15_12
# %bb.15:                               # %vector.scevcheck
                                        #   in Loop: Header=BB15_10 Depth=3
	srli.d	$s1, $s2, 32
	bnez	$s1, .LBB15_12
# %bb.16:                               # %vector.scevcheck
                                        #   in Loop: Header=BB15_10 Depth=3
	bltu	$s3, $a7, .LBB15_12
# %bb.17:                               # %vector.body.preheader
                                        #   in Loop: Header=BB15_10 Depth=3
	move	$s8, $s7
	move	$ra, $s4
	.p2align	4, , 16
.LBB15_18:                              # %vector.body
                                        #   Parent Loop BB15_3 Depth=1
                                        #     Parent Loop BB15_8 Depth=2
                                        #       Parent Loop BB15_10 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	alsl.d	$s1, $s8, $t8, 3
	slli.d	$fp, $s8, 3
	vldx	$vr1, $t8, $fp
	vld	$vr2, $s1, 16
	vfmul.d	$vr1, $vr0, $vr1
	vfmul.d	$vr2, $vr0, $vr2
	alsl.d	$s1, $s8, $t7, 3
	vstx	$vr1, $t7, $fp
	vst	$vr2, $s1, 16
	addi.d	$ra, $ra, -4
	addi.w	$s8, $s8, 4
	bnez	$ra, .LBB15_18
# %bb.19:                               # %middle.block
                                        #   in Loop: Header=BB15_10 Depth=3
	move	$s8, $s4
	beq	$s4, $t2, .LBB15_9
	b	.LBB15_12
.LBB15_20:                              # %._crit_edge76
	pcaddu18i	$ra, %call36(CycleTime)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	alsl.d	$a1, $a1, $s0, 3
	ld.d	$a2, $a1, 960
	ld.d	$a3, $sp, 40                    # 8-byte Folded Reload
	sub.d	$a0, $a0, $a3
	add.d	$a0, $a0, $a2
	st.d	$a0, $a1, 960
	ld.d	$s8, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 128                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 136                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 144
	ret
.Lfunc_end15:
	.size	scale_grid, .Lfunc_end15-scale_grid
                                        # -- End function
	.globl	dot                             # -- Begin function dot
	.p2align	5
	.type	dot,@function
dot:                                    # @dot
# %bb.0:
	addi.d	$sp, $sp, -80
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
	st.d	$s1, $sp, 48                    # 8-byte Folded Spill
	st.d	$s2, $sp, 40                    # 8-byte Folded Spill
	st.d	$s3, $sp, 32                    # 8-byte Folded Spill
	st.d	$s4, $sp, 24                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 16                   # 8-byte Folded Spill
	move	$s2, $a3
	move	$s3, $a2
	move	$fp, $a1
	move	$s0, $a0
	pcaddu18i	$ra, %call36(CycleTime)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s0, 1600
	move	$s1, $a0
	blez	$a1, .LBB16_12
# %bb.1:                                # %.lr.ph
	move	$a0, $zero
	ld.d	$a2, $s0, 1776
	movgr2fr.d	$fa0, $zero
	ori	$a3, $zero, 216
	mul.d	$a3, $fp, $a3
	slli.d	$a4, $s3, 3
	slli.d	$a5, $s2, 3
	fmov.d	$fs0, $fa0
	b	.LBB16_3
	.p2align	4, , 16
.LBB16_2:                               # %._crit_edge
                                        #   in Loop: Header=BB16_3 Depth=1
	addi.d	$a0, $a0, 1
	fadd.d	$fs0, $fs0, $fa1
	beq	$a0, $a1, .LBB16_13
.LBB16_3:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB16_7 Depth 2
                                        #       Child Loop BB16_8 Depth 3
                                        #         Child Loop BB16_9 Depth 4
	slli.d	$a6, $a0, 8
	add.d	$a6, $a2, $a6
	ld.d	$a6, $a6, 248
	add.d	$t5, $a6, $a3
	ld.w	$a6, $t5, 28
	fmov.d	$fa1, $fa0
	blez	$a6, .LBB16_2
# %bb.4:                                #   in Loop: Header=BB16_3 Depth=1
	ld.w	$a7, $t5, 24
	fmov.d	$fa1, $fa0
	blez	$a7, .LBB16_2
# %bb.5:                                #   in Loop: Header=BB16_3 Depth=1
	ld.w	$t0, $t5, 20
	fmov.d	$fa1, $fa0
	blez	$t0, .LBB16_2
# %bb.6:                                # %.preheader70.us.us.preheader
                                        #   in Loop: Header=BB16_3 Depth=1
	ld.w	$t1, $t5, 48
	ld.d	$t6, $t5, 176
	ld.w	$t2, $t5, 52
	move	$t3, $zero
	move	$t4, $zero
	ld.w	$t5, $t5, 44
	ldx.d	$t7, $t6, $a4
	add.d	$t8, $t1, $t2
	ldx.d	$t6, $t6, $a5
	addi.d	$t8, $t8, 1
	mul.w	$t8, $t5, $t8
	alsl.d	$t5, $t8, $t7, 3
	alsl.d	$t6, $t8, $t6, 3
	fmov.d	$fa1, $fa0
	.p2align	4, , 16
.LBB16_7:                               # %.preheader70.us.us
                                        #   Parent Loop BB16_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB16_8 Depth 3
                                        #         Child Loop BB16_9 Depth 4
	move	$t7, $zero
	move	$t8, $t3
	.p2align	4, , 16
.LBB16_8:                               # %.preheader.us.us.us
                                        #   Parent Loop BB16_3 Depth=1
                                        #     Parent Loop BB16_7 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB16_9 Depth 4
	move	$s2, $t0
	move	$s3, $t8
	.p2align	4, , 16
.LBB16_9:                               #   Parent Loop BB16_3 Depth=1
                                        #     Parent Loop BB16_7 Depth=2
                                        #       Parent Loop BB16_8 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	slli.d	$s4, $s3, 3
	fldx.d	$fa2, $t5, $s4
	fldx.d	$fa3, $t6, $s4
	fmadd.d	$fa1, $fa2, $fa3, $fa1
	addi.d	$s2, $s2, -1
	addi.w	$s3, $s3, 1
	bnez	$s2, .LBB16_9
# %bb.10:                               # %._crit_edge.us.us.us
                                        #   in Loop: Header=BB16_8 Depth=3
	addi.w	$t7, $t7, 1
	add.w	$t8, $t8, $t1
	bne	$t7, $a7, .LBB16_8
# %bb.11:                               # %._crit_edge75.split.us.us.us
                                        #   in Loop: Header=BB16_7 Depth=2
	addi.w	$t4, $t4, 1
	add.w	$t3, $t3, $t2
	bne	$t4, $a6, .LBB16_7
	b	.LBB16_2
.LBB16_12:
	movgr2fr.d	$fs0, $zero
.LBB16_13:                              # %._crit_edge88
	pcaddu18i	$ra, %call36(CycleTime)
	jirl	$ra, $ra, 0
	alsl.d	$a1, $fp, $s0, 3
	ld.d	$a2, $a1, 960
	sub.d	$a0, $a0, $s1
	add.d	$a0, $a0, $a2
	st.d	$a0, $a1, 960
	fmov.d	$fa0, $fs0
	fld.d	$fs0, $sp, 16                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.Lfunc_end16:
	.size	dot, .Lfunc_end16-dot
                                        # -- End function
	.globl	norm                            # -- Begin function norm
	.p2align	5
	.type	norm,@function
norm:                                   # @norm
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	fst.d	$fs0, $sp, 0                    # 8-byte Folded Spill
	move	$s2, $a2
	move	$fp, $a1
	move	$s0, $a0
	pcaddu18i	$ra, %call36(CycleTime)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s0, 1600
	move	$s1, $a0
	blez	$a1, .LBB17_12
# %bb.1:                                # %.lr.ph
	move	$a0, $zero
	ld.d	$a2, $s0, 1776
	movgr2fr.d	$fa0, $zero
	ori	$a3, $zero, 216
	mul.d	$a3, $fp, $a3
	slli.d	$a4, $s2, 3
	fmov.d	$fs0, $fa0
	b	.LBB17_3
	.p2align	4, , 16
.LBB17_2:                               # %._crit_edge
                                        #   in Loop: Header=BB17_3 Depth=1
	fcmp.clt.d	$fcc0, $fs0, $fa1
	addi.d	$a0, $a0, 1
	fsel	$fs0, $fs0, $fa1, $fcc0
	beq	$a0, $a1, .LBB17_13
.LBB17_3:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB17_7 Depth 2
                                        #       Child Loop BB17_8 Depth 3
                                        #         Child Loop BB17_9 Depth 4
	slli.d	$a5, $a0, 8
	add.d	$a5, $a2, $a5
	ld.d	$a5, $a5, 248
	add.d	$t4, $a5, $a3
	ld.w	$a5, $t4, 28
	fmov.d	$fa1, $fa0
	blez	$a5, .LBB17_2
# %bb.4:                                #   in Loop: Header=BB17_3 Depth=1
	ld.w	$a6, $t4, 24
	fmov.d	$fa1, $fa0
	blez	$a6, .LBB17_2
# %bb.5:                                #   in Loop: Header=BB17_3 Depth=1
	ld.w	$a7, $t4, 20
	fmov.d	$fa1, $fa0
	blez	$a7, .LBB17_2
# %bb.6:                                # %.preheader66.us.us.preheader
                                        #   in Loop: Header=BB17_3 Depth=1
	ld.w	$t0, $t4, 48
	ld.d	$t5, $t4, 176
	ld.w	$t1, $t4, 52
	move	$t2, $zero
	move	$t3, $zero
	ld.w	$t4, $t4, 44
	ldx.d	$t5, $t5, $a4
	add.d	$t6, $t0, $t1
	addi.d	$t6, $t6, 1
	mul.w	$t4, $t4, $t6
	alsl.d	$t4, $t4, $t5, 3
	fmov.d	$fa1, $fa0
	.p2align	4, , 16
.LBB17_7:                               # %.preheader66.us.us
                                        #   Parent Loop BB17_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB17_8 Depth 3
                                        #         Child Loop BB17_9 Depth 4
	move	$t5, $zero
	move	$t6, $t2
	.p2align	4, , 16
.LBB17_8:                               # %.preheader.us.us.us
                                        #   Parent Loop BB17_3 Depth=1
                                        #     Parent Loop BB17_7 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB17_9 Depth 4
	move	$t7, $a7
	move	$t8, $t6
	.p2align	4, , 16
.LBB17_9:                               #   Parent Loop BB17_3 Depth=1
                                        #     Parent Loop BB17_7 Depth=2
                                        #       Parent Loop BB17_8 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	slli.d	$s2, $t8, 3
	fldx.d	$fa2, $t4, $s2
	fabs.d	$fa2, $fa2
	fcmp.clt.d	$fcc0, $fa1, $fa2
	fsel	$fa1, $fa1, $fa2, $fcc0
	addi.d	$t7, $t7, -1
	addi.w	$t8, $t8, 1
	bnez	$t7, .LBB17_9
# %bb.10:                               # %._crit_edge.us.us.us
                                        #   in Loop: Header=BB17_8 Depth=3
	addi.w	$t5, $t5, 1
	add.w	$t6, $t6, $t0
	bne	$t5, $a6, .LBB17_8
# %bb.11:                               # %._crit_edge71.split.us.us.us
                                        #   in Loop: Header=BB17_7 Depth=2
	addi.w	$t3, $t3, 1
	add.w	$t2, $t2, $t1
	bne	$t3, $a5, .LBB17_7
	b	.LBB17_2
.LBB17_12:
	movgr2fr.d	$fs0, $zero
.LBB17_13:                              # %._crit_edge84
	pcaddu18i	$ra, %call36(CycleTime)
	jirl	$ra, $ra, 0
	alsl.d	$a1, $fp, $s0, 3
	ld.d	$a2, $a1, 960
	sub.d	$a0, $a0, $s1
	add.d	$a0, $a0, $a2
	st.d	$a0, $a1, 960
	fmov.d	$fa0, $fs0
	fld.d	$fs0, $sp, 0                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end17:
	.size	norm, .Lfunc_end17-norm
                                        # -- End function
	.globl	mean                            # -- Begin function mean
	.p2align	5
	.type	mean,@function
mean:                                   # @mean
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	fst.d	$fs0, $sp, 0                    # 8-byte Folded Spill
	move	$s2, $a2
	move	$s0, $a1
	move	$fp, $a0
	pcaddu18i	$ra, %call36(CycleTime)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 1600
	move	$s1, $a0
	blez	$a1, .LBB18_12
# %bb.1:                                # %.lr.ph
	move	$a0, $zero
	ld.d	$a2, $fp, 1776
	movgr2fr.d	$fa0, $zero
	ori	$a3, $zero, 216
	mul.d	$a3, $s0, $a3
	slli.d	$a4, $s2, 3
	fmov.d	$fs0, $fa0
	b	.LBB18_3
	.p2align	4, , 16
.LBB18_2:                               # %._crit_edge
                                        #   in Loop: Header=BB18_3 Depth=1
	addi.d	$a0, $a0, 1
	fadd.d	$fs0, $fs0, $fa1
	beq	$a0, $a1, .LBB18_13
.LBB18_3:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB18_7 Depth 2
                                        #       Child Loop BB18_8 Depth 3
                                        #         Child Loop BB18_9 Depth 4
	slli.d	$a5, $a0, 8
	add.d	$a5, $a2, $a5
	ld.d	$a5, $a5, 248
	add.d	$t4, $a5, $a3
	ld.w	$a5, $t4, 28
	fmov.d	$fa1, $fa0
	blez	$a5, .LBB18_2
# %bb.4:                                #   in Loop: Header=BB18_3 Depth=1
	ld.w	$a6, $t4, 24
	fmov.d	$fa1, $fa0
	blez	$a6, .LBB18_2
# %bb.5:                                #   in Loop: Header=BB18_3 Depth=1
	ld.w	$a7, $t4, 20
	fmov.d	$fa1, $fa0
	blez	$a7, .LBB18_2
# %bb.6:                                # %.preheader66.us.us.preheader
                                        #   in Loop: Header=BB18_3 Depth=1
	ld.w	$t0, $t4, 48
	ld.d	$t5, $t4, 176
	ld.w	$t1, $t4, 52
	move	$t2, $zero
	move	$t3, $zero
	ld.w	$t4, $t4, 44
	ldx.d	$t5, $t5, $a4
	add.d	$t6, $t0, $t1
	addi.d	$t6, $t6, 1
	mul.w	$t4, $t4, $t6
	alsl.d	$t4, $t4, $t5, 3
	fmov.d	$fa1, $fa0
	.p2align	4, , 16
.LBB18_7:                               # %.preheader66.us.us
                                        #   Parent Loop BB18_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB18_8 Depth 3
                                        #         Child Loop BB18_9 Depth 4
	move	$t5, $zero
	move	$t6, $t2
	.p2align	4, , 16
.LBB18_8:                               # %.preheader.us.us.us
                                        #   Parent Loop BB18_3 Depth=1
                                        #     Parent Loop BB18_7 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB18_9 Depth 4
	move	$t7, $a7
	move	$t8, $t6
	.p2align	4, , 16
.LBB18_9:                               #   Parent Loop BB18_3 Depth=1
                                        #     Parent Loop BB18_7 Depth=2
                                        #       Parent Loop BB18_8 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	slli.d	$s2, $t8, 3
	fldx.d	$fa2, $t4, $s2
	fadd.d	$fa1, $fa1, $fa2
	addi.d	$t7, $t7, -1
	addi.w	$t8, $t8, 1
	bnez	$t7, .LBB18_9
# %bb.10:                               # %._crit_edge.us.us.us
                                        #   in Loop: Header=BB18_8 Depth=3
	addi.w	$t5, $t5, 1
	add.w	$t6, $t6, $t0
	bne	$t5, $a6, .LBB18_8
# %bb.11:                               # %._crit_edge71.split.us.us.us
                                        #   in Loop: Header=BB18_7 Depth=2
	addi.w	$t3, $t3, 1
	add.w	$t2, $t2, $t1
	bne	$t3, $a5, .LBB18_7
	b	.LBB18_2
.LBB18_12:
	movgr2fr.d	$fs0, $zero
.LBB18_13:                              # %._crit_edge84
	pcaddu18i	$ra, %call36(CycleTime)
	jirl	$ra, $ra, 0
	alsl.d	$a1, $s0, $fp, 3
	ld.d	$a2, $a1, 960
	ld.w	$a3, $fp, 1536
	sub.d	$a0, $a0, $s1
	add.d	$a0, $a0, $a2
	ld.w	$a2, $fp, 1540
	movgr2fr.w	$fa0, $a3
	ffint.d.w	$fa0, $fa0
	ld.w	$a3, $fp, 1544
	movgr2fr.w	$fa1, $a2
	ffint.d.w	$fa1, $fa1
	fmul.d	$fa0, $fa0, $fa1
	movgr2fr.w	$fa1, $a3
	ffint.d.w	$fa1, $fa1
	fmul.d	$fa0, $fa0, $fa1
	fdiv.d	$fa0, $fs0, $fa0
	st.d	$a0, $a1, 960
	fld.d	$fs0, $sp, 0                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end18:
	.size	mean, .Lfunc_end18-mean
                                        # -- End function
	.globl	shift_grid                      # -- Begin function shift_grid
	.p2align	5
	.type	shift_grid,@function
shift_grid:                             # @shift_grid
# %bb.0:
	addi.d	$sp, $sp, -144
	st.d	$ra, $sp, 136                   # 8-byte Folded Spill
	st.d	$fp, $sp, 128                   # 8-byte Folded Spill
	st.d	$s0, $sp, 120                   # 8-byte Folded Spill
	st.d	$s1, $sp, 112                   # 8-byte Folded Spill
	st.d	$s2, $sp, 104                   # 8-byte Folded Spill
	st.d	$s3, $sp, 96                    # 8-byte Folded Spill
	st.d	$s4, $sp, 88                    # 8-byte Folded Spill
	st.d	$s5, $sp, 80                    # 8-byte Folded Spill
	st.d	$s6, $sp, 72                    # 8-byte Folded Spill
	st.d	$s7, $sp, 64                    # 8-byte Folded Spill
	st.d	$s8, $sp, 56                    # 8-byte Folded Spill
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 16                   # 16-byte Folded Spill
	move	$s2, $a3
	move	$s3, $a2
	st.d	$a1, $sp, 48                    # 8-byte Folded Spill
	move	$s0, $a0
	pcaddu18i	$ra, %call36(CycleTime)
	jirl	$ra, $ra, 0
	vld	$vr3, $sp, 16                   # 16-byte Folded Reload
	ld.w	$a1, $s0, 1600
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	blez	$a1, .LBB19_20
# %bb.1:                                # %.lr.ph
	move	$a0, $zero
	ld.d	$a2, $s0, 1776
	vreplvei.d	$vr0, $vr3, 0
	ori	$a3, $zero, 216
	ld.d	$a4, $sp, 48                    # 8-byte Folded Reload
	mul.d	$a3, $a4, $a3
	slli.d	$a4, $s3, 3
	slli.d	$a5, $s2, 3
	ori	$a6, $zero, 6
	ori	$a7, $zero, 32
	b	.LBB19_3
	.p2align	4, , 16
.LBB19_2:                               # %._crit_edge
                                        #   in Loop: Header=BB19_3 Depth=1
	addi.d	$a0, $a0, 1
	beq	$a0, $a1, .LBB19_20
.LBB19_3:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB19_8 Depth 2
                                        #       Child Loop BB19_10 Depth 3
                                        #         Child Loop BB19_18 Depth 4
                                        #         Child Loop BB19_13 Depth 4
	slli.d	$t0, $a0, 8
	add.d	$t0, $a2, $t0
	ld.d	$t0, $t0, 248
	add.d	$t7, $t0, $a3
	ld.w	$t0, $t7, 28
	blez	$t0, .LBB19_2
# %bb.4:                                #   in Loop: Header=BB19_3 Depth=1
	ld.w	$t1, $t7, 24
	blez	$t1, .LBB19_2
# %bb.5:                                #   in Loop: Header=BB19_3 Depth=1
	ld.w	$t2, $t7, 20
	blez	$t2, .LBB19_2
# %bb.6:                                # %.preheader65.us.us.preheader
                                        #   in Loop: Header=BB19_3 Depth=1
	ld.w	$t3, $t7, 48
	ld.d	$t8, $t7, 176
	ld.w	$t4, $t7, 52
	move	$t5, $zero
	move	$t6, $zero
	ld.w	$t7, $t7, 44
	ldx.d	$s3, $t8, $a4
	add.d	$s2, $t3, $t4
	ldx.d	$s4, $t8, $a5
	addi.d	$t8, $s2, 1
	mul.w	$t8, $t7, $t8
	alsl.d	$t7, $t8, $s3, 3
	alsl.d	$t8, $t8, $s4, 3
	addi.d	$s2, $t2, -1
	sub.d	$s3, $s3, $s4
	bstrpick.d	$s4, $t2, 30, 2
	slli.d	$s4, $s4, 2
	b	.LBB19_8
	.p2align	4, , 16
.LBB19_7:                               # %._crit_edge68.split.us.us.us
                                        #   in Loop: Header=BB19_8 Depth=2
	addi.w	$t6, $t6, 1
	add.w	$t5, $t5, $t4
	beq	$t6, $t0, .LBB19_2
.LBB19_8:                               # %.preheader65.us.us
                                        #   Parent Loop BB19_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB19_10 Depth 3
                                        #         Child Loop BB19_18 Depth 4
                                        #         Child Loop BB19_13 Depth 4
	move	$s5, $zero
	mul.d	$s6, $t4, $t6
	move	$s7, $t5
	b	.LBB19_10
	.p2align	4, , 16
.LBB19_9:                               # %._crit_edge.us.us.us
                                        #   in Loop: Header=BB19_10 Depth=3
	addi.w	$s5, $s5, 1
	add.w	$s7, $s7, $t3
	beq	$s5, $t1, .LBB19_7
.LBB19_10:                              # %.preheader.us.us.us
                                        #   Parent Loop BB19_3 Depth=1
                                        #     Parent Loop BB19_8 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB19_18 Depth 4
                                        #         Child Loop BB19_13 Depth 4
	bgeu	$t2, $a6, .LBB19_14
# %bb.11:                               #   in Loop: Header=BB19_10 Depth=3
	move	$s8, $zero
.LBB19_12:                              # %scalar.ph.preheader
                                        #   in Loop: Header=BB19_10 Depth=3
	add.w	$ra, $s7, $s8
	sub.d	$s8, $t2, $s8
	.p2align	4, , 16
.LBB19_13:                              # %scalar.ph
                                        #   Parent Loop BB19_3 Depth=1
                                        #     Parent Loop BB19_8 Depth=2
                                        #       Parent Loop BB19_10 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	slli.d	$fp, $ra, 3
	fldx.d	$fa1, $t8, $fp
	fadd.d	$fa1, $fa3, $fa1
	fstx.d	$fa1, $t7, $fp
	addi.d	$s8, $s8, -1
	addi.w	$ra, $ra, 1
	bnez	$s8, .LBB19_13
	b	.LBB19_9
	.p2align	4, , 16
.LBB19_14:                              # %vector.scevcheck
                                        #   in Loop: Header=BB19_10 Depth=3
	mul.d	$s8, $t3, $s5
	add.w	$ra, $s6, $s8
	add.w	$s1, $ra, $s2
	move	$s8, $zero
	blt	$s1, $ra, .LBB19_12
# %bb.15:                               # %vector.scevcheck
                                        #   in Loop: Header=BB19_10 Depth=3
	srli.d	$s1, $s2, 32
	bnez	$s1, .LBB19_12
# %bb.16:                               # %vector.scevcheck
                                        #   in Loop: Header=BB19_10 Depth=3
	bltu	$s3, $a7, .LBB19_12
# %bb.17:                               # %vector.body.preheader
                                        #   in Loop: Header=BB19_10 Depth=3
	move	$s8, $s7
	move	$ra, $s4
	.p2align	4, , 16
.LBB19_18:                              # %vector.body
                                        #   Parent Loop BB19_3 Depth=1
                                        #     Parent Loop BB19_8 Depth=2
                                        #       Parent Loop BB19_10 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	alsl.d	$s1, $s8, $t8, 3
	slli.d	$fp, $s8, 3
	vldx	$vr1, $t8, $fp
	vld	$vr2, $s1, 16
	vfadd.d	$vr1, $vr0, $vr1
	vfadd.d	$vr2, $vr0, $vr2
	alsl.d	$s1, $s8, $t7, 3
	vstx	$vr1, $t7, $fp
	vst	$vr2, $s1, 16
	addi.d	$ra, $ra, -4
	addi.w	$s8, $s8, 4
	bnez	$ra, .LBB19_18
# %bb.19:                               # %middle.block
                                        #   in Loop: Header=BB19_10 Depth=3
	move	$s8, $s4
	beq	$s4, $t2, .LBB19_9
	b	.LBB19_12
.LBB19_20:                              # %._crit_edge76
	pcaddu18i	$ra, %call36(CycleTime)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	alsl.d	$a1, $a1, $s0, 3
	ld.d	$a2, $a1, 960
	ld.d	$a3, $sp, 40                    # 8-byte Folded Reload
	sub.d	$a0, $a0, $a3
	add.d	$a0, $a0, $a2
	st.d	$a0, $a1, 960
	ld.d	$s8, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 128                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 136                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 144
	ret
.Lfunc_end19:
	.size	shift_grid, .Lfunc_end19-shift_grid
                                        # -- End function
	.globl	project_cell_to_face            # -- Begin function project_cell_to_face
	.p2align	5
	.type	project_cell_to_face,@function
project_cell_to_face:                   # @project_cell_to_face
# %bb.0:
	addi.d	$sp, $sp, -144
	st.d	$ra, $sp, 136                   # 8-byte Folded Spill
	st.d	$fp, $sp, 128                   # 8-byte Folded Spill
	st.d	$s0, $sp, 120                   # 8-byte Folded Spill
	st.d	$s1, $sp, 112                   # 8-byte Folded Spill
	st.d	$s2, $sp, 104                   # 8-byte Folded Spill
	st.d	$s3, $sp, 96                    # 8-byte Folded Spill
	st.d	$s4, $sp, 88                    # 8-byte Folded Spill
	st.d	$s5, $sp, 80                    # 8-byte Folded Spill
	st.d	$s6, $sp, 72                    # 8-byte Folded Spill
	st.d	$s7, $sp, 64                    # 8-byte Folded Spill
	st.d	$s8, $sp, 56                    # 8-byte Folded Spill
	move	$s1, $a4
	move	$s3, $a3
	move	$s4, $a2
	st.d	$a1, $sp, 24                    # 8-byte Folded Spill
	move	$fp, $a0
	pcaddu18i	$ra, %call36(CycleTime)
	jirl	$ra, $ra, 0
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	ld.w	$a1, $fp, 1600
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	st.d	$a1, $sp, 48                    # 8-byte Folded Spill
	blez	$a1, .LBB20_23
# %bb.1:                                # %.lr.ph
	move	$a0, $zero
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a2, $a1, 1776
	ori	$a3, $zero, 216
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	mul.d	$a3, $a1, $a3
	slli.d	$a1, $s4, 3
	st.d	$a1, $sp, 40                    # 8-byte Folded Spill
	slli.d	$a1, $s3, 3
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	ori	$a7, $zero, 3
	vldi	$vr0, -928
                                        # implicit-def: $r13
	b	.LBB20_3
	.p2align	4, , 16
.LBB20_2:                               # %._crit_edge81
                                        #   in Loop: Header=BB20_3 Depth=1
	addi.d	$a0, $a0, 1
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	beq	$a0, $a1, .LBB20_23
.LBB20_3:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB20_12 Depth 2
                                        #       Child Loop BB20_14 Depth 3
                                        #         Child Loop BB20_20 Depth 4
                                        #         Child Loop BB20_18 Depth 4
	slli.d	$a4, $a0, 8
	add.d	$a4, $a2, $a4
	ld.d	$a4, $a4, 248
	add.d	$t0, $a4, $a3
	ld.w	$t2, $t0, 48
	ld.w	$t3, $t0, 52
	ori	$a1, $zero, 2
	beq	$s1, $a1, .LBB20_22
# %bb.4:                                #   in Loop: Header=BB20_3 Depth=1
	move	$a4, $t1
	move	$t1, $t2
	ori	$a1, $zero, 1
	beq	$s1, $a1, .LBB20_7
# %bb.5:                                #   in Loop: Header=BB20_3 Depth=1
	move	$t1, $a4
	bnez	$s1, .LBB20_7
# %bb.6:                                #   in Loop: Header=BB20_3 Depth=1
	ori	$t1, $zero, 1
.LBB20_7:                               #   in Loop: Header=BB20_3 Depth=1
	ld.w	$t4, $t0, 28
	bltz	$t4, .LBB20_2
.LBB20_8:                               #   in Loop: Header=BB20_3 Depth=1
	ld.w	$t5, $t0, 24
	bltz	$t5, .LBB20_2
# %bb.9:                                #   in Loop: Header=BB20_3 Depth=1
	ld.w	$t6, $t0, 20
	bltz	$t6, .LBB20_2
# %bb.10:                               # %.preheader73.preheader
                                        #   in Loop: Header=BB20_3 Depth=1
	ld.d	$a4, $t0, 176
	move	$s0, $zero
	move	$t7, $zero
	ld.w	$a6, $t0, 44
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	ldx.d	$t0, $a4, $a1
	add.d	$t8, $t2, $t3
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	ldx.d	$a4, $a4, $a1
	addi.d	$t8, $t8, 1
	mul.w	$a6, $a6, $t8
	alsl.d	$t8, $a6, $t0, 3
	alsl.d	$s3, $a6, $a4, 3
	addi.d	$a6, $t6, 1
	bstrpick.d	$s4, $a6, 31, 0
	addi.w	$fp, $t1, 0
	alsl.d	$fp, $fp, $a4, 3
	sub.d	$a4, $a4, $t0
	sub.d	$t0, $fp, $t0
	sltui	$a4, $a4, 32
	sltui	$t0, $t0, 32
	or	$s5, $a4, $t0
	bstrpick.d	$a4, $a6, 31, 2
	sub.d	$s6, $zero, $t1
	slli.d	$a4, $a4, 2
	move	$fp, $s6
	b	.LBB20_12
	.p2align	4, , 16
.LBB20_11:                              # %._crit_edge78.split
                                        #   in Loop: Header=BB20_12 Depth=2
	addi.w	$t7, $ra, 1
	add.w	$s0, $s0, $t3
	add.d	$fp, $fp, $t3
	beq	$ra, $t4, .LBB20_2
.LBB20_12:                              # %.preheader73
                                        #   Parent Loop BB20_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB20_14 Depth 3
                                        #         Child Loop BB20_20 Depth 4
                                        #         Child Loop BB20_18 Depth 4
	move	$a6, $zero
	move	$ra, $t7
	mul.d	$s2, $t3, $t7
	move	$s8, $fp
	move	$t7, $s0
	b	.LBB20_14
	.p2align	4, , 16
.LBB20_13:                              # %._crit_edge
                                        #   in Loop: Header=BB20_14 Depth=3
	addi.w	$a6, $t0, 1
	add.w	$t7, $t7, $t2
	add.d	$s8, $s8, $t2
	beq	$t0, $t5, .LBB20_11
.LBB20_14:                              # %.preheader
                                        #   Parent Loop BB20_3 Depth=1
                                        #     Parent Loop BB20_12 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB20_20 Depth 4
                                        #         Child Loop BB20_18 Depth 4
	move	$t0, $a6
	bltu	$t6, $a7, .LBB20_16
# %bb.15:                               # %vector.scevcheck
                                        #   in Loop: Header=BB20_14 Depth=3
	mul.d	$a6, $t2, $t0
	add.w	$a6, $s2, $a6
	add.w	$s7, $a6, $t6
	slt	$a6, $s7, $a6
	or	$a6, $a6, $s5
	andi	$a6, $a6, 1
	beqz	$a6, .LBB20_19
.LBB20_16:                              #   in Loop: Header=BB20_14 Depth=3
	move	$s7, $zero
.LBB20_17:                              # %scalar.ph.preheader
                                        #   in Loop: Header=BB20_14 Depth=3
	sub.d	$a6, $s4, $s7
	.p2align	4, , 16
.LBB20_18:                              # %scalar.ph
                                        #   Parent Loop BB20_3 Depth=1
                                        #     Parent Loop BB20_12 Depth=2
                                        #       Parent Loop BB20_14 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	add.w	$a1, $t7, $s7
	add.w	$a5, $s8, $s7
	slli.d	$a5, $a5, 3
	fldx.d	$fa1, $t8, $a5
	slli.d	$a1, $a1, 3
	fldx.d	$fa2, $t8, $a1
	fadd.d	$fa1, $fa1, $fa2
	fmul.d	$fa1, $fa1, $fa0
	fstx.d	$fa1, $s3, $a1
	addi.d	$a6, $a6, -1
	addi.d	$s7, $s7, 1
	bnez	$a6, .LBB20_18
	b	.LBB20_13
	.p2align	4, , 16
.LBB20_19:                              # %vector.body.preheader
                                        #   in Loop: Header=BB20_14 Depth=3
	move	$s7, $t7
	move	$a6, $a4
	.p2align	4, , 16
.LBB20_20:                              # %vector.body
                                        #   Parent Loop BB20_3 Depth=1
                                        #     Parent Loop BB20_12 Depth=2
                                        #       Parent Loop BB20_14 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	add.w	$a5, $s6, $s7
	alsl.d	$a1, $a5, $t8, 3
	slli.d	$a5, $a5, 3
	vldx	$vr1, $t8, $a5
	vld	$vr2, $a1, 16
	alsl.d	$a1, $s7, $t8, 3
	slli.d	$a5, $s7, 3
	vldx	$vr3, $t8, $a5
	vld	$vr4, $a1, 16
	vfadd.d	$vr1, $vr1, $vr3
	vfadd.d	$vr2, $vr2, $vr4
	vfmul.d	$vr1, $vr1, $vr0
	vfmul.d	$vr2, $vr2, $vr0
	alsl.d	$a1, $s7, $s3, 3
	vstx	$vr1, $s3, $a5
	vst	$vr2, $a1, 16
	addi.d	$a6, $a6, -4
	addi.w	$s7, $s7, 4
	bnez	$a6, .LBB20_20
# %bb.21:                               # %middle.block
                                        #   in Loop: Header=BB20_14 Depth=3
	move	$s7, $a4
	beq	$a4, $s4, .LBB20_13
	b	.LBB20_17
	.p2align	4, , 16
.LBB20_22:                              #   in Loop: Header=BB20_3 Depth=1
	move	$t1, $t3
	ld.w	$t4, $t0, 28
	bgez	$t4, .LBB20_8
	b	.LBB20_2
.LBB20_23:                              # %._crit_edge88
	pcaddu18i	$ra, %call36(CycleTime)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	alsl.d	$a1, $a1, $a2, 3
	ld.d	$a2, $a1, 960
	ld.d	$a3, $sp, 8                     # 8-byte Folded Reload
	sub.d	$a0, $a0, $a3
	add.d	$a0, $a0, $a2
	st.d	$a0, $a1, 960
	ld.d	$s8, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 128                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 136                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 144
	ret
.Lfunc_end20:
	.size	project_cell_to_face, .Lfunc_end20-project_cell_to_face
                                        # -- End function
	.globl	matmul_grids                    # -- Begin function matmul_grids
	.p2align	5
	.type	matmul_grids,@function
matmul_grids:                           # @matmul_grids
# %bb.0:
	addi.d	$sp, $sp, -144
	st.d	$ra, $sp, 136                   # 8-byte Folded Spill
	st.d	$fp, $sp, 128                   # 8-byte Folded Spill
	st.d	$s0, $sp, 120                   # 8-byte Folded Spill
	st.d	$s1, $sp, 112                   # 8-byte Folded Spill
	st.d	$s2, $sp, 104                   # 8-byte Folded Spill
	st.d	$s3, $sp, 96                    # 8-byte Folded Spill
	st.d	$s4, $sp, 88                    # 8-byte Folded Spill
	st.d	$s5, $sp, 80                    # 8-byte Folded Spill
	st.d	$s6, $sp, 72                    # 8-byte Folded Spill
	st.d	$s7, $sp, 64                    # 8-byte Folded Spill
	st.d	$s8, $sp, 56                    # 8-byte Folded Spill
	move	$s2, $a6
	move	$s3, $a5
	st.d	$a4, $sp, 48                    # 8-byte Folded Spill
	st.d	$a3, $sp, 40                    # 8-byte Folded Spill
	st.d	$a2, $sp, 32                    # 8-byte Folded Spill
	st.d	$a1, $sp, 24                    # 8-byte Folded Spill
	move	$s0, $a0
	pcaddu18i	$ra, %call36(CycleTime)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	blez	$s3, .LBB21_21
# %bb.1:                                # %.preheader93.lr.ph
	blez	$s2, .LBB21_21
# %bb.2:                                # %.preheader93.us.preheader
	move	$a0, $zero
	movgr2fr.d	$fa0, $zero
	ori	$a1, $zero, 216
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	mul.d	$a1, $a2, $a1
	b	.LBB21_4
	.p2align	4, , 16
.LBB21_3:                               # %._crit_edge113.us
                                        #   in Loop: Header=BB21_4 Depth=1
	addi.d	$a0, $a0, 1
	beq	$a0, $s3, .LBB21_21
.LBB21_4:                               # %.preheader93.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB21_6 Depth 2
                                        #       Child Loop BB21_10 Depth 3
                                        #         Child Loop BB21_14 Depth 4
                                        #           Child Loop BB21_15 Depth 5
                                        #             Child Loop BB21_16 Depth 6
	move	$a2, $zero
	ld.d	$a3, $sp, 40                    # 8-byte Folded Reload
	alsl.d	$a3, $a0, $a3, 2
	mul.d	$a4, $a0, $s2
	ld.d	$a5, $sp, 32                    # 8-byte Folded Reload
	alsl.d	$a4, $a4, $a5, 3
	alsl.d	$a5, $a0, $a5, 3
	b	.LBB21_6
	.p2align	4, , 16
.LBB21_5:                               #   in Loop: Header=BB21_6 Depth=2
	addi.d	$a2, $a2, 1
	beq	$a2, $s2, .LBB21_3
.LBB21_6:                               #   Parent Loop BB21_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB21_10 Depth 3
                                        #         Child Loop BB21_14 Depth 4
                                        #           Child Loop BB21_15 Depth 5
                                        #             Child Loop BB21_16 Depth 6
	bltu	$a2, $a0, .LBB21_5
# %bb.7:                                # %.preheader92.us
                                        #   in Loop: Header=BB21_6 Depth=2
	ld.w	$a6, $s0, 1600
	fmov.d	$fa1, $fa0
	blez	$a6, .LBB21_19
# %bb.8:                                # %.lr.ph.us
                                        #   in Loop: Header=BB21_6 Depth=2
	ld.w	$t1, $a3, 0
	slli.d	$a7, $a2, 2
	ld.d	$t0, $sp, 48                    # 8-byte Folded Reload
	ldx.w	$t2, $t0, $a7
	ld.d	$a7, $s0, 1776
	move	$t0, $zero
	slli.d	$t1, $t1, 3
	slli.d	$t2, $t2, 3
	fmov.d	$fa1, $fa0
	b	.LBB21_10
	.p2align	4, , 16
.LBB21_9:                               # %._crit_edge.us
                                        #   in Loop: Header=BB21_10 Depth=3
	addi.d	$t0, $t0, 1
	fadd.d	$fa1, $fa1, $fa2
	beq	$t0, $a6, .LBB21_19
.LBB21_10:                              #   Parent Loop BB21_4 Depth=1
                                        #     Parent Loop BB21_6 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB21_14 Depth 4
                                        #           Child Loop BB21_15 Depth 5
                                        #             Child Loop BB21_16 Depth 6
	slli.d	$t3, $t0, 8
	add.d	$t3, $a7, $t3
	ld.d	$t3, $t3, 248
	add.d	$s8, $t3, $a1
	ld.w	$t3, $s8, 28
	fmov.d	$fa2, $fa0
	blez	$t3, .LBB21_9
# %bb.11:                               #   in Loop: Header=BB21_10 Depth=3
	ld.w	$t4, $s8, 24
	fmov.d	$fa2, $fa0
	blez	$t4, .LBB21_9
# %bb.12:                               #   in Loop: Header=BB21_10 Depth=3
	ld.w	$s5, $s8, 20
	fmov.d	$fa2, $fa0
	blez	$s5, .LBB21_9
# %bb.13:                               # %.preheader91.us.us.us.preheader
                                        #   in Loop: Header=BB21_10 Depth=3
	ld.w	$t6, $s8, 48
	ld.d	$t5, $s8, 176
	ld.w	$t7, $s8, 52
	move	$s6, $zero
	move	$s7, $zero
	ld.w	$t8, $s8, 44
	ldx.d	$fp, $t5, $t1
	add.d	$s1, $t6, $t7
	ldx.d	$t5, $t5, $t2
	addi.d	$s1, $s1, 1
	mul.w	$t8, $t8, $s1
	alsl.d	$s8, $t8, $fp, 3
	alsl.d	$ra, $t8, $t5, 3
	fmov.d	$fa2, $fa0
	.p2align	4, , 16
.LBB21_14:                              # %.preheader91.us.us.us
                                        #   Parent Loop BB21_4 Depth=1
                                        #     Parent Loop BB21_6 Depth=2
                                        #       Parent Loop BB21_10 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB21_15 Depth 5
                                        #             Child Loop BB21_16 Depth 6
	move	$s1, $zero
	move	$fp, $s6
	.p2align	4, , 16
.LBB21_15:                              # %.preheader.us.us.us.us
                                        #   Parent Loop BB21_4 Depth=1
                                        #     Parent Loop BB21_6 Depth=2
                                        #       Parent Loop BB21_10 Depth=3
                                        #         Parent Loop BB21_14 Depth=4
                                        # =>        This Loop Header: Depth=5
                                        #             Child Loop BB21_16 Depth 6
	move	$t5, $s5
	move	$t8, $fp
	.p2align	4, , 16
.LBB21_16:                              #   Parent Loop BB21_4 Depth=1
                                        #     Parent Loop BB21_6 Depth=2
                                        #       Parent Loop BB21_10 Depth=3
                                        #         Parent Loop BB21_14 Depth=4
                                        #           Parent Loop BB21_15 Depth=5
                                        # =>          This Inner Loop Header: Depth=6
	slli.d	$s4, $t8, 3
	fldx.d	$fa3, $s8, $s4
	fldx.d	$fa4, $ra, $s4
	fmadd.d	$fa2, $fa3, $fa4, $fa2
	addi.d	$t5, $t5, -1
	addi.w	$t8, $t8, 1
	bnez	$t5, .LBB21_16
# %bb.17:                               # %._crit_edge.us.us.us.us
                                        #   in Loop: Header=BB21_15 Depth=5
	addi.w	$s1, $s1, 1
	add.w	$fp, $fp, $t6
	bne	$s1, $t4, .LBB21_15
# %bb.18:                               # %._crit_edge98.split.us.us.us.us
                                        #   in Loop: Header=BB21_14 Depth=4
	addi.w	$s7, $s7, 1
	add.w	$s6, $s6, $t7
	bne	$s7, $t3, .LBB21_14
	b	.LBB21_9
	.p2align	4, , 16
.LBB21_19:                              # %._crit_edge110.us
                                        #   in Loop: Header=BB21_6 Depth=2
	slli.d	$a6, $a2, 3
	fstx.d	$fa1, $a4, $a6
	bgeu	$a2, $s3, .LBB21_5
# %bb.20:                               #   in Loop: Header=BB21_6 Depth=2
	mul.d	$a6, $a2, $s2
	slli.d	$a6, $a6, 3
	fstx.d	$fa1, $a5, $a6
	b	.LBB21_5
.LBB21_21:                              # %._crit_edge115
	pcaddu18i	$ra, %call36(CycleTime)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	alsl.d	$a1, $a1, $s0, 3
	ld.d	$a2, $a1, 1040
	ld.d	$a3, $sp, 16                    # 8-byte Folded Reload
	sub.d	$a0, $a0, $a3
	add.d	$a0, $a0, $a2
	st.d	$a0, $a1, 1040
	ld.d	$s8, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 128                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 136                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 144
	ret
.Lfunc_end21:
	.size	matmul_grids, .Lfunc_end21-matmul_grids
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function initialize_problem
.LCPI22_0:
	.dword	0x4046800000000000              # double 45
.LCPI22_1:
	.dword	0x401921fb54442d18              # double 6.2831853071795862
.LCPI22_2:
	.dword	0xc044000000000000              # double -40
.LCPI22_3:
	.dword	0x4043bd3cc9be45de              # double 39.478417604357432
	.text
	.globl	initialize_problem
	.p2align	5
	.type	initialize_problem,@function
initialize_problem:                     # @initialize_problem
# %bb.0:
	addi.d	$sp, $sp, -368
	st.d	$ra, $sp, 360                   # 8-byte Folded Spill
	st.d	$fp, $sp, 352                   # 8-byte Folded Spill
	st.d	$s0, $sp, 344                   # 8-byte Folded Spill
	st.d	$s1, $sp, 336                   # 8-byte Folded Spill
	st.d	$s2, $sp, 328                   # 8-byte Folded Spill
	st.d	$s3, $sp, 320                   # 8-byte Folded Spill
	st.d	$s4, $sp, 312                   # 8-byte Folded Spill
	st.d	$s5, $sp, 304                   # 8-byte Folded Spill
	st.d	$s6, $sp, 296                   # 8-byte Folded Spill
	st.d	$s7, $sp, 288                   # 8-byte Folded Spill
	st.d	$s8, $sp, 280                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 272                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 264                  # 8-byte Folded Spill
	fst.d	$fs2, $sp, 256                  # 8-byte Folded Spill
	fst.d	$fs3, $sp, 248                  # 8-byte Folded Spill
	fst.d	$fs4, $sp, 240                  # 8-byte Folded Spill
	fst.d	$fs5, $sp, 232                  # 8-byte Folded Spill
	fst.d	$fs6, $sp, 224                  # 8-byte Folded Spill
	fst.d	$fs7, $sp, 216                  # 8-byte Folded Spill
	move	$fp, $a0
	ld.w	$a0, $a0, 1600
	fmov.d	$fs0, $fa1
	st.d	$a1, $sp, 8                     # 8-byte Folded Spill
	blez	$a0, .LBB22_16
# %bb.1:                                # %.lr.ph325
	fmov.d	$fs2, $fa0
	move	$a2, $zero
	ori	$a0, $zero, 216
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	mul.d	$s2, $a1, $a0
	pcalau12i	$a0, %pc_hi20(.LCPI22_0)
	fld.d	$fs3, $a0, %pc_lo12(.LCPI22_0)
	pcalau12i	$a0, %pc_hi20(.LCPI22_1)
	fld.d	$fs4, $a0, %pc_lo12(.LCPI22_1)
	pcalau12i	$a0, %pc_hi20(.LCPI22_2)
	fld.d	$fs5, $a0, %pc_lo12(.LCPI22_2)
	pcalau12i	$a0, %pc_hi20(.LCPI22_3)
	fld.d	$fs6, $a0, %pc_lo12(.LCPI22_3)
	lu52i.d	$s3, $zero, 1023
	fst.d	$fs0, $sp, 144                  # 8-byte Folded Spill
	fst.d	$fa2, $sp, 48                   # 8-byte Folded Spill
	fst.d	$fa0, $sp, 40                   # 8-byte Folded Spill
	fst.d	$fs4, $sp, 32                   # 8-byte Folded Spill
	fst.d	$fs6, $sp, 192                  # 8-byte Folded Spill
	fst.d	$fs3, $sp, 24                   # 8-byte Folded Spill
	fst.d	$fs5, $sp, 184                  # 8-byte Folded Spill
	b	.LBB22_3
	.p2align	4, , 16
.LBB22_2:                               # %._crit_edge322
                                        #   in Loop: Header=BB22_3 Depth=1
	ld.w	$a0, $fp, 1600
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	addi.d	$a2, $a2, 1
	bge	$a2, $a0, .LBB22_16
.LBB22_3:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB22_8 Depth 2
                                        #       Child Loop BB22_12 Depth 3
                                        #         Child Loop BB22_14 Depth 4
	ld.d	$a0, $fp, 1776
	st.d	$a2, $sp, 16                    # 8-byte Folded Spill
	slli.d	$s4, $a2, 8
	add.d	$a0, $a0, $s4
	ld.d	$a0, $a0, 248
	add.d	$a0, $a0, $s2
	ld.d	$a1, $a0, 176
	ld.w	$a2, $a0, 56
	ld.d	$a0, $a1, 88
	slli.d	$a2, $a2, 3
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 1776
	add.d	$a0, $a0, $s4
	ld.d	$a0, $a0, 248
	add.d	$a0, $a0, $s2
	ld.d	$a1, $a0, 176
	ld.w	$a2, $a0, 56
	ld.d	$a0, $a1, 8
	slli.d	$a2, $a2, 3
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 1776
	add.d	$a0, $a0, $s4
	ld.d	$a0, $a0, 248
	add.d	$s5, $a0, $s2
	ld.w	$a1, $s5, 28
	blez	$a1, .LBB22_2
# %bb.4:                                # %.preheader316.lr.ph
                                        #   in Loop: Header=BB22_3 Depth=1
	ld.w	$a0, $s5, 24
	blez	$a0, .LBB22_2
# %bb.5:                                # %.preheader316.preheader
                                        #   in Loop: Header=BB22_3 Depth=1
	move	$s6, $zero
	b	.LBB22_8
	.p2align	4, , 16
.LBB22_6:                               # %._crit_edge319.loopexit
                                        #   in Loop: Header=BB22_8 Depth=2
	ld.w	$a1, $s5, 28
.LBB22_7:                               # %._crit_edge319
                                        #   in Loop: Header=BB22_8 Depth=2
	addi.w	$s6, $s6, 1
	bge	$s6, $a1, .LBB22_2
.LBB22_8:                               # %.preheader316
                                        #   Parent Loop BB22_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB22_12 Depth 3
                                        #         Child Loop BB22_14 Depth 4
	blez	$a0, .LBB22_7
# %bb.9:                                # %.preheader.lr.ph
                                        #   in Loop: Header=BB22_8 Depth=2
	ld.w	$a2, $s5, 20
	blez	$a2, .LBB22_7
# %bb.10:                               # %.preheader.preheader
                                        #   in Loop: Header=BB22_8 Depth=2
	move	$s7, $zero
	b	.LBB22_12
	.p2align	4, , 16
.LBB22_11:                              # %._crit_edge
                                        #   in Loop: Header=BB22_12 Depth=3
	addi.w	$s7, $s7, 1
	bge	$s7, $a0, .LBB22_6
.LBB22_12:                              # %.preheader
                                        #   Parent Loop BB22_3 Depth=1
                                        #     Parent Loop BB22_8 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB22_14 Depth 4
	blez	$a2, .LBB22_11
# %bb.13:                               # %.lr.ph
                                        #   in Loop: Header=BB22_12 Depth=3
	ld.d	$a0, $fp, 1776
	move	$s8, $zero
	add.d	$s0, $a0, $s4
	.p2align	4, , 16
.LBB22_14:                              #   Parent Loop BB22_3 Depth=1
                                        #     Parent Loop BB22_8 Depth=2
                                        #       Parent Loop BB22_12 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.w	$a0, $s5, 8
	add.d	$a0, $s8, $a0
	movgr2fr.w	$fa0, $a0
	ld.w	$a0, $s5, 12
	ffint.d.w	$fa0, $fa0
	vldi	$vr2, -928
	fadd.d	$fa0, $fa0, $fa2
	fmul.d	$fa1, $fs2, $fa0
	fst.d	$fa1, $sp, 168                  # 8-byte Folded Spill
	add.d	$a0, $a0, $s7
	movgr2fr.w	$fa0, $a0
	ld.w	$a0, $s5, 16
	ffint.d.w	$fa0, $fa0
	fadd.d	$fa0, $fa0, $fa2
	fmul.d	$fs6, $fs2, $fa0
	add.d	$a0, $a0, $s6
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa0, $fa0
	fadd.d	$fa0, $fa0, $fa2
	ld.w	$a0, $s5, 44
	ld.w	$a1, $s5, 52
	fmul.d	$fs1, $fs2, $fa0
	ld.w	$a2, $s5, 48
	add.d	$a3, $s6, $a0
	mul.d	$a1, $a1, $a3
	add.d	$a1, $a0, $a1
	add.d	$a0, $s7, $a0
	mul.d	$a0, $a2, $a0
	add.d	$a0, $a1, $a0
	add.w	$s1, $s8, $a0
	vldi	$vr4, -800
	fadd.d	$fa0, $fa1, $fa4
	fmul.d	$fa1, $fa0, $fa0
	fadd.d	$fa2, $fs6, $fa4
	fmul.d	$fa3, $fa2, $fa2
	fadd.d	$fa1, $fa1, $fa3
	fadd.d	$fa3, $fs1, $fa4
	fmul.d	$fa4, $fa3, $fa3
	fadd.d	$fs3, $fa1, $fa4
	fadd.d	$fs2, $fa0, $fa0
	fadd.d	$fs7, $fa2, $fa2
	fst.d	$fs7, $sp, 176                  # 8-byte Folded Spill
	fadd.d	$fs0, $fa3, $fa3
	fst.d	$fs0, $sp, 104                  # 8-byte Folded Spill
	vldi	$vr1, -928
	fmov.d	$fa0, $fs3
	pcaddu18i	$ra, %call36(pow)
	jirl	$ra, $ra, 0
	fmov.d	$fs4, $fa0
	vldi	$vr0, -928
	fmul.d	$fs5, $fs2, $fa0
	vldi	$vr1, -800
	fmov.d	$fa0, $fs3
	pcaddu18i	$ra, %call36(pow)
	jirl	$ra, $ra, 0
	fmul.d	$fs5, $fs5, $fa0
	vldi	$vr2, -928
	fmul.d	$fa1, $fs7, $fa2
	fmul.d	$fs7, $fa0, $fa1
	fmul.d	$fa1, $fs0, $fa2
	fmul.d	$fs0, $fa0, $fa1
	vldi	$vr1, -776
	fmov.d	$fa0, $fs3
	pcaddu18i	$ra, %call36(pow)
	jirl	$ra, $ra, 0
	vldi	$vr1, -800
	fmov.d	$fa0, $fs3
	pcaddu18i	$ra, %call36(pow)
	jirl	$ra, $ra, 0
	vldi	$vr1, -776
	fmov.d	$fa0, $fs3
	pcaddu18i	$ra, %call36(pow)
	jirl	$ra, $ra, 0
	vldi	$vr1, -800
	fmov.d	$fa0, $fs3
	pcaddu18i	$ra, %call36(pow)
	jirl	$ra, $ra, 0
	vldi	$vr1, -776
	fmov.d	$fa0, $fs3
	pcaddu18i	$ra, %call36(pow)
	jirl	$ra, $ra, 0
	vldi	$vr0, -816
	fadd.d	$fa0, $fs4, $fa0
	vldi	$vr1, -988
	fmul.d	$fa0, $fa0, $fa1
	pcaddu18i	$ra, %call36(tanh)
	jirl	$ra, $ra, 0
	vldi	$vr1, -1002
	vldi	$vr2, -1006
	fmadd.d	$fa1, $fa0, $fa2, $fa1
	fst.d	$fa1, $sp, 136                  # 8-byte Folded Spill
	fld.d	$fa2, $sp, 24                   # 8-byte Folded Reload
	fmul.d	$fa1, $fs5, $fa2
	fmul.d	$fa0, $fa0, $fa0
	vldi	$vr3, -912
	fsub.d	$fa0, $fa3, $fa0
	fmul.d	$fa1, $fa1, $fa0
	fst.d	$fa1, $sp, 128                  # 8-byte Folded Spill
	fmul.d	$fa1, $fs7, $fa2
	fmul.d	$fa1, $fa1, $fa0
	fst.d	$fa1, $sp, 120                  # 8-byte Folded Spill
	fmul.d	$fa1, $fs0, $fa2
	fmul.d	$fa0, $fa1, $fa0
	fst.d	$fa0, $sp, 112                  # 8-byte Folded Spill
	vldi	$vr0, -844
	fmul.d	$fs7, $fs3, $fa0
	fmov.d	$fa0, $fs7
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fmov.d	$fs5, $fa0
	fld.d	$fs3, $sp, 32                   # 8-byte Folded Reload
	fld.d	$fa0, $sp, 168                  # 8-byte Folded Reload
	fmul.d	$fa0, $fa0, $fs3
	fst.d	$fa0, $sp, 56                   # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(sin)
	jirl	$ra, $ra, 0
	fmul.d	$fs0, $fs5, $fa0
	fmul.d	$fs6, $fs6, $fs3
	fmov.d	$fa0, $fs6
	pcaddu18i	$ra, %call36(sin)
	jirl	$ra, $ra, 0
	fmul.d	$fs0, $fs0, $fa0
	fmul.d	$fa0, $fs1, $fs3
	fst.d	$fa0, $sp, 152                  # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(sin)
	jirl	$ra, $ra, 0
	fmul.d	$fs0, $fs0, $fa0
	vldi	$vr0, -844
	fmul.d	$fs4, $fs2, $fa0
	fst.d	$fs4, $sp, 72                   # 8-byte Folded Spill
	fmov.d	$fa0, $fs7
	fmov.d	$fs2, $fs7
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fmul.d	$fs1, $fa0, $fs3
	fld.d	$fs5, $sp, 56                   # 8-byte Folded Reload
	fmov.d	$fa0, $fs5
	pcaddu18i	$ra, %call36(cos)
	jirl	$ra, $ra, 0
	fmul.d	$fs1, $fs1, $fa0
	fmov.d	$fa0, $fs6
	pcaddu18i	$ra, %call36(sin)
	jirl	$ra, $ra, 0
	fmul.d	$fs1, $fs1, $fa0
	fld.d	$fa0, $sp, 152                  # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(sin)
	jirl	$ra, $ra, 0
	fmul.d	$fa0, $fs1, $fa0
	fmadd.d	$fa0, $fs4, $fs0, $fa0
	fst.d	$fa0, $sp, 168                  # 8-byte Folded Spill
	fld.d	$fa0, $sp, 176                  # 8-byte Folded Reload
	vldi	$vr1, -844
	fmul.d	$fs7, $fa0, $fa1
	fst.d	$fs7, $sp, 80                   # 8-byte Folded Spill
	fmov.d	$fa0, $fs2
	fmov.d	$fs1, $fs2
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fmul.d	$fs2, $fa0, $fs3
	fmov.d	$fs4, $fs5
	fmov.d	$fa0, $fs5
	pcaddu18i	$ra, %call36(sin)
	jirl	$ra, $ra, 0
	fmul.d	$fs2, $fs2, $fa0
	fmov.d	$fs5, $fs6
	fmov.d	$fa0, $fs6
	pcaddu18i	$ra, %call36(cos)
	jirl	$ra, $ra, 0
	fmul.d	$fs2, $fs2, $fa0
	fld.d	$fs6, $sp, 152                  # 8-byte Folded Reload
	fmov.d	$fa0, $fs6
	pcaddu18i	$ra, %call36(sin)
	jirl	$ra, $ra, 0
	fmul.d	$fa0, $fs2, $fa0
	fmadd.d	$fa0, $fs7, $fs0, $fa0
	fst.d	$fa0, $sp, 176                  # 8-byte Folded Spill
	fld.d	$fa0, $sp, 104                  # 8-byte Folded Reload
	vldi	$vr1, -844
	fmul.d	$fs7, $fa0, $fa1
	fst.d	$fs7, $sp, 88                   # 8-byte Folded Spill
	fmov.d	$fa0, $fs1
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fmul.d	$fs2, $fa0, $fs3
	fmov.d	$fa0, $fs4
	pcaddu18i	$ra, %call36(sin)
	jirl	$ra, $ra, 0
	fmul.d	$fs2, $fs2, $fa0
	fmov.d	$fa0, $fs5
	pcaddu18i	$ra, %call36(sin)
	jirl	$ra, $ra, 0
	fmul.d	$fs2, $fs2, $fa0
	fmov.d	$fa0, $fs6
	pcaddu18i	$ra, %call36(cos)
	jirl	$ra, $ra, 0
	fmul.d	$fa0, $fs2, $fa0
	fmadd.d	$fa0, $fs7, $fs0, $fa0
	fst.d	$fa0, $sp, 96                   # 8-byte Folded Spill
	fld.d	$fa2, $sp, 72                   # 8-byte Folded Reload
	fld.d	$fa0, $sp, 168                  # 8-byte Folded Reload
	fmul.d	$fa0, $fa2, $fa0
	fld.d	$fa1, $sp, 184                  # 8-byte Folded Reload
	fmadd.d	$fs2, $fs0, $fa1, $fa0
	fst.d	$fs0, $sp, 160                  # 8-byte Folded Spill
	fmul.d	$fs7, $fa2, $fs3
	fst.d	$fs1, $sp, 64                   # 8-byte Folded Spill
	fmov.d	$fa0, $fs1
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fmul.d	$fs7, $fs7, $fa0
	fmov.d	$fa0, $fs4
	pcaddu18i	$ra, %call36(cos)
	jirl	$ra, $ra, 0
	fmul.d	$fs7, $fs7, $fa0
	fmov.d	$fa0, $fs5
	pcaddu18i	$ra, %call36(sin)
	jirl	$ra, $ra, 0
	fmul.d	$fs7, $fs7, $fa0
	fmov.d	$fa0, $fs6
	pcaddu18i	$ra, %call36(sin)
	jirl	$ra, $ra, 0
	fmadd.d	$fs2, $fs7, $fa0, $fs2
	fmov.d	$fa0, $fs1
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fld.d	$fa1, $sp, 192                  # 8-byte Folded Reload
	fmul.d	$fs7, $fa0, $fa1
	fmov.d	$fa0, $fs4
	pcaddu18i	$ra, %call36(sin)
	jirl	$ra, $ra, 0
	fmul.d	$fs1, $fs7, $fa0
	fmov.d	$fa0, $fs5
	pcaddu18i	$ra, %call36(sin)
	jirl	$ra, $ra, 0
	fmov.d	$fs7, $fa0
	fmov.d	$fa0, $fs6
	pcaddu18i	$ra, %call36(sin)
	jirl	$ra, $ra, 0
	fneg.d	$fa1, $fs7
	fmul.d	$fa1, $fs1, $fa1
	fmadd.d	$fa0, $fa1, $fa0, $fs2
	fst.d	$fa0, $sp, 104                  # 8-byte Folded Spill
	fld.d	$fa0, $sp, 176                  # 8-byte Folded Reload
	fld.d	$fa1, $sp, 80                   # 8-byte Folded Reload
	fmul.d	$fa0, $fa1, $fa0
	fld.d	$fa2, $sp, 184                  # 8-byte Folded Reload
	fmadd.d	$fs1, $fs0, $fa2, $fa0
	fmul.d	$fs2, $fa1, $fs3
	fld.d	$fs0, $sp, 64                   # 8-byte Folded Reload
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fmul.d	$fs2, $fs2, $fa0
	fmov.d	$fa0, $fs4
	pcaddu18i	$ra, %call36(sin)
	jirl	$ra, $ra, 0
	fmul.d	$fs2, $fs2, $fa0
	fmov.d	$fa0, $fs5
	pcaddu18i	$ra, %call36(cos)
	jirl	$ra, $ra, 0
	fmul.d	$fs2, $fs2, $fa0
	fmov.d	$fa0, $fs6
	pcaddu18i	$ra, %call36(sin)
	jirl	$ra, $ra, 0
	fmadd.d	$fs1, $fs2, $fa0, $fs1
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fld.d	$fa1, $sp, 192                  # 8-byte Folded Reload
	fmul.d	$fs2, $fa0, $fa1
	fmov.d	$fa0, $fs4
	pcaddu18i	$ra, %call36(sin)
	jirl	$ra, $ra, 0
	fmul.d	$fs2, $fs2, $fa0
	fmov.d	$fa0, $fs5
	pcaddu18i	$ra, %call36(sin)
	jirl	$ra, $ra, 0
	fmov.d	$fs7, $fa0
	fmov.d	$fa0, $fs6
	pcaddu18i	$ra, %call36(sin)
	jirl	$ra, $ra, 0
	fneg.d	$fa1, $fs7
	fmul.d	$fa1, $fs2, $fa1
	fmadd.d	$fa0, $fa1, $fa0, $fs1
	fst.d	$fa0, $sp, 80                   # 8-byte Folded Spill
	fld.d	$fs1, $sp, 96                   # 8-byte Folded Reload
	fld.d	$fa1, $sp, 88                   # 8-byte Folded Reload
	fmul.d	$fa0, $fa1, $fs1
	fld.d	$fa2, $sp, 160                  # 8-byte Folded Reload
	fld.d	$fa3, $sp, 184                  # 8-byte Folded Reload
	fmadd.d	$fs2, $fa2, $fa3, $fa0
	fmul.d	$fs7, $fa1, $fs3
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fmul.d	$fs7, $fs7, $fa0
	fmov.d	$fa0, $fs4
	pcaddu18i	$ra, %call36(sin)
	jirl	$ra, $ra, 0
	fmul.d	$fs7, $fs7, $fa0
	fmov.d	$fa0, $fs5
	pcaddu18i	$ra, %call36(sin)
	jirl	$ra, $ra, 0
	fmul.d	$fs7, $fs7, $fa0
	fmov.d	$fa0, $fs6
	pcaddu18i	$ra, %call36(cos)
	jirl	$ra, $ra, 0
	fmadd.d	$fs2, $fs7, $fa0, $fs2
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fld.d	$fa1, $sp, 192                  # 8-byte Folded Reload
	fmul.d	$fs3, $fa0, $fa1
	fmov.d	$fa0, $fs4
	pcaddu18i	$ra, %call36(sin)
	jirl	$ra, $ra, 0
	fmul.d	$fs4, $fs3, $fa0
	fmov.d	$fa0, $fs5
	pcaddu18i	$ra, %call36(sin)
	jirl	$ra, $ra, 0
	fmov.d	$fs3, $fa0
	fmov.d	$fa0, $fs6
	pcaddu18i	$ra, %call36(sin)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 248
	add.d	$a0, $a0, $s2
	ld.d	$a0, $a0, 176
	fneg.d	$fa1, $fs3
	ld.d	$a1, $a0, 16
	fmul.d	$fa1, $fs4, $fa1
	fmadd.d	$fa0, $fa1, $fa0, $fs2
	fld.d	$fs2, $sp, 40                   # 8-byte Folded Reload
	slli.d	$a3, $s1, 3
	stx.d	$s3, $a1, $a3
	ld.d	$a1, $a0, 24
	fld.d	$fa1, $sp, 120                  # 8-byte Folded Reload
	fld.d	$fa2, $sp, 176                  # 8-byte Folded Reload
	fmul.d	$fa1, $fa1, $fa2
	fld.d	$fa2, $sp, 128                  # 8-byte Folded Reload
	fld.d	$fa3, $sp, 168                  # 8-byte Folded Reload
	fmadd.d	$fa1, $fa2, $fa3, $fa1
	fld.d	$fa2, $sp, 112                  # 8-byte Folded Reload
	fmadd.d	$fa1, $fa2, $fs1, $fa1
	fld.d	$fa3, $sp, 136                  # 8-byte Folded Reload
	fstx.d	$fa3, $a1, $a3
	ld.d	$a1, $a0, 88
	fld.d	$fa2, $sp, 104                  # 8-byte Folded Reload
	fld.d	$fa4, $sp, 80                   # 8-byte Folded Reload
	fadd.d	$fa2, $fa2, $fa4
	fld.d	$fs1, $sp, 48                   # 8-byte Folded Reload
	fadd.d	$fa0, $fa2, $fa0
	fnmadd.d	$fa0, $fa3, $fa0, $fa1
	fld.d	$fa2, $sp, 160                  # 8-byte Folded Reload
	fstx.d	$fa2, $a1, $a3
	ld.d	$a0, $a0, 8
	ld.w	$a2, $s5, 20
	fmul.d	$fa0, $fs1, $fa0
	fld.d	$fa1, $sp, 144                  # 8-byte Folded Reload
	fmadd.d	$fa0, $fa1, $fa2, $fa0
	fld.d	$fs0, $sp, 144                  # 8-byte Folded Reload
	addi.w	$s8, $s8, 1
	fstx.d	$fa0, $a0, $a3
	blt	$s8, $a2, .LBB22_14
# %bb.15:                               # %._crit_edge.loopexit
                                        #   in Loop: Header=BB22_12 Depth=3
	ld.w	$a0, $s5, 24
	b	.LBB22_11
.LBB22_16:                              # %._crit_edge326
	ori	$a2, $zero, 1
	move	$a0, $fp
	ld.d	$s6, $sp, 8                     # 8-byte Folded Reload
	move	$a1, $s6
	pcaddu18i	$ra, %call36(mean)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 1596
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 192                  # 16-byte Folded Spill
	bnez	$a0, .LBB22_18
# %bb.17:
	movfr2gr.d	$a1, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$a0, $a0, %got_pc_lo12(stdout)
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(fflush)
	jirl	$ra, $ra, 0
.LBB22_18:
	movgr2fr.d	$fa0, $zero
	fcmp.ceq.d	$fcc0, $fs0, $fa0
	bcnez	$fcc0, .LBB22_58
# %bb.19:
	pcaddu18i	$ra, %call36(CycleTime)
	jirl	$ra, $ra, 0
	vld	$vr3, $sp, 192                  # 16-byte Folded Reload
	ld.w	$a1, $fp, 1600
	move	$s1, $a0
	blez	$a1, .LBB22_38
# %bb.20:                               # %.lr.ph.i
	move	$a0, $zero
	ld.d	$a2, $fp, 1776
	vreplvei.d	$vr0, $vr3, 0
	ori	$a3, $zero, 216
	mul.d	$a3, $s6, $a3
	ori	$a4, $zero, 4
	b	.LBB22_22
	.p2align	4, , 16
.LBB22_21:                              # %._crit_edge.i
                                        #   in Loop: Header=BB22_22 Depth=1
	addi.d	$a0, $a0, 1
	beq	$a0, $a1, .LBB22_38
.LBB22_22:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB22_27 Depth 2
                                        #       Child Loop BB22_29 Depth 3
                                        #         Child Loop BB22_36 Depth 4
                                        #         Child Loop BB22_32 Depth 4
	slli.d	$a5, $a0, 8
	add.d	$a5, $a2, $a5
	ld.d	$a5, $a5, 248
	add.d	$t4, $a5, $a3
	ld.w	$a5, $t4, 28
	blez	$a5, .LBB22_21
# %bb.23:                               #   in Loop: Header=BB22_22 Depth=1
	ld.w	$a6, $t4, 24
	blez	$a6, .LBB22_21
# %bb.24:                               #   in Loop: Header=BB22_22 Depth=1
	ld.w	$a7, $t4, 20
	blez	$a7, .LBB22_21
# %bb.25:                               # %.preheader65.us.us.preheader.i
                                        #   in Loop: Header=BB22_22 Depth=1
	ld.w	$t0, $t4, 48
	ld.d	$t5, $t4, 176
	ld.w	$t1, $t4, 52
	move	$t2, $zero
	move	$t3, $zero
	ld.w	$t4, $t4, 44
	ld.d	$t5, $t5, 8
	add.d	$t6, $t0, $t1
	addi.d	$t6, $t6, 1
	mul.w	$t4, $t4, $t6
	alsl.d	$t4, $t4, $t5, 3
	addi.d	$t5, $a7, -1
	bstrpick.d	$t6, $a7, 30, 2
	slli.d	$t6, $t6, 2
	b	.LBB22_27
	.p2align	4, , 16
.LBB22_26:                              # %._crit_edge68.split.us.us.us.i
                                        #   in Loop: Header=BB22_27 Depth=2
	addi.w	$t3, $t3, 1
	add.w	$t2, $t2, $t1
	beq	$t3, $a5, .LBB22_21
.LBB22_27:                              # %.preheader65.us.us.i
                                        #   Parent Loop BB22_22 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB22_29 Depth 3
                                        #         Child Loop BB22_36 Depth 4
                                        #         Child Loop BB22_32 Depth 4
	move	$t7, $zero
	mul.d	$t8, $t1, $t3
	move	$s0, $t2
	b	.LBB22_29
	.p2align	4, , 16
.LBB22_28:                              # %._crit_edge.us.us.us.i
                                        #   in Loop: Header=BB22_29 Depth=3
	addi.w	$t7, $t7, 1
	add.w	$s0, $s0, $t0
	beq	$t7, $a6, .LBB22_26
.LBB22_29:                              # %.preheader.us.us.us.i
                                        #   Parent Loop BB22_22 Depth=1
                                        #     Parent Loop BB22_27 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB22_36 Depth 4
                                        #         Child Loop BB22_32 Depth 4
	bgeu	$a7, $a4, .LBB22_33
# %bb.30:                               #   in Loop: Header=BB22_29 Depth=3
	move	$s2, $zero
.LBB22_31:                              # %scalar.ph.preheader
                                        #   in Loop: Header=BB22_29 Depth=3
	sub.d	$s3, $a7, $s2
	add.w	$s2, $s0, $s2
	.p2align	4, , 16
.LBB22_32:                              # %scalar.ph
                                        #   Parent Loop BB22_22 Depth=1
                                        #     Parent Loop BB22_27 Depth=2
                                        #       Parent Loop BB22_29 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	slli.d	$s4, $s2, 3
	fldx.d	$fa1, $t4, $s4
	fsub.d	$fa1, $fa1, $fa3
	fstx.d	$fa1, $t4, $s4
	addi.d	$s3, $s3, -1
	addi.w	$s2, $s2, 1
	bnez	$s3, .LBB22_32
	b	.LBB22_28
	.p2align	4, , 16
.LBB22_33:                              # %vector.scevcheck
                                        #   in Loop: Header=BB22_29 Depth=3
	mul.d	$s2, $t0, $t7
	add.w	$s3, $t8, $s2
	add.w	$s4, $s3, $t5
	move	$s2, $zero
	blt	$s4, $s3, .LBB22_31
# %bb.34:                               # %vector.scevcheck
                                        #   in Loop: Header=BB22_29 Depth=3
	srli.d	$s3, $t5, 32
	bnez	$s3, .LBB22_31
# %bb.35:                               # %vector.body.preheader
                                        #   in Loop: Header=BB22_29 Depth=3
	move	$s2, $s0
	move	$s3, $t6
	.p2align	4, , 16
.LBB22_36:                              # %vector.body
                                        #   Parent Loop BB22_22 Depth=1
                                        #     Parent Loop BB22_27 Depth=2
                                        #       Parent Loop BB22_29 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	alsl.d	$s4, $s2, $t4, 3
	slli.d	$s5, $s2, 3
	vldx	$vr1, $t4, $s5
	vld	$vr2, $s4, 16
	vfsub.d	$vr1, $vr1, $vr0
	vfsub.d	$vr2, $vr2, $vr0
	vstx	$vr1, $t4, $s5
	vst	$vr2, $s4, 16
	addi.d	$s3, $s3, -4
	addi.w	$s2, $s2, 4
	bnez	$s3, .LBB22_36
# %bb.37:                               # %middle.block
                                        #   in Loop: Header=BB22_29 Depth=3
	move	$s2, $t6
	beq	$t6, $a7, .LBB22_28
	b	.LBB22_31
.LBB22_38:                              # %shift_grid.exit
	pcaddu18i	$ra, %call36(CycleTime)
	jirl	$ra, $ra, 0
	alsl.d	$a1, $s6, $fp, 3
	ld.d	$a2, $a1, 960
	sub.d	$a0, $a0, $s1
	addi.d	$s0, $a1, 960
	add.d	$a0, $a0, $a2
	st.d	$a0, $a1, 960
	pcaddu18i	$ra, %call36(CycleTime)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 1600
	move	$s1, $a0
	blez	$a1, .LBB22_57
# %bb.39:                               # %.lr.ph.i293
	move	$a0, $zero
	ld.d	$a2, $fp, 1776
	vld	$vr0, $sp, 192                  # 16-byte Folded Reload
	fdiv.d	$fa0, $fa0, $fs0
	vreplvei.d	$vr1, $vr0, 0
	ori	$a3, $zero, 216
	mul.d	$a3, $s6, $a3
	ori	$a4, $zero, 4
	b	.LBB22_41
	.p2align	4, , 16
.LBB22_40:                              # %._crit_edge.i298
                                        #   in Loop: Header=BB22_41 Depth=1
	addi.d	$a0, $a0, 1
	beq	$a0, $a1, .LBB22_57
.LBB22_41:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB22_46 Depth 2
                                        #       Child Loop BB22_48 Depth 3
                                        #         Child Loop BB22_55 Depth 4
                                        #         Child Loop BB22_51 Depth 4
	slli.d	$a5, $a0, 8
	add.d	$a5, $a2, $a5
	ld.d	$a5, $a5, 248
	add.d	$t4, $a5, $a3
	ld.w	$a5, $t4, 28
	blez	$a5, .LBB22_40
# %bb.42:                               #   in Loop: Header=BB22_41 Depth=1
	ld.w	$a6, $t4, 24
	blez	$a6, .LBB22_40
# %bb.43:                               #   in Loop: Header=BB22_41 Depth=1
	ld.w	$a7, $t4, 20
	blez	$a7, .LBB22_40
# %bb.44:                               # %.preheader65.us.us.preheader.i301
                                        #   in Loop: Header=BB22_41 Depth=1
	ld.w	$t0, $t4, 48
	ld.d	$t5, $t4, 176
	ld.w	$t1, $t4, 52
	move	$t2, $zero
	move	$t3, $zero
	ld.w	$t4, $t4, 44
	ld.d	$t5, $t5, 88
	add.d	$t6, $t0, $t1
	addi.d	$t6, $t6, 1
	mul.w	$t4, $t4, $t6
	alsl.d	$t4, $t4, $t5, 3
	addi.d	$t5, $a7, -1
	bstrpick.d	$t6, $a7, 30, 2
	slli.d	$t6, $t6, 2
	b	.LBB22_46
	.p2align	4, , 16
.LBB22_45:                              # %._crit_edge68.split.us.us.us.i312
                                        #   in Loop: Header=BB22_46 Depth=2
	addi.w	$t3, $t3, 1
	add.w	$t2, $t2, $t1
	beq	$t3, $a5, .LBB22_40
.LBB22_46:                              # %.preheader65.us.us.i303
                                        #   Parent Loop BB22_41 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB22_48 Depth 3
                                        #         Child Loop BB22_55 Depth 4
                                        #         Child Loop BB22_51 Depth 4
	move	$t7, $zero
	mul.d	$t8, $t1, $t3
	move	$fp, $t2
	b	.LBB22_48
	.p2align	4, , 16
.LBB22_47:                              # %._crit_edge.us.us.us.i310
                                        #   in Loop: Header=BB22_48 Depth=3
	addi.w	$t7, $t7, 1
	add.w	$fp, $fp, $t0
	beq	$t7, $a6, .LBB22_45
.LBB22_48:                              # %.preheader.us.us.us.i305
                                        #   Parent Loop BB22_41 Depth=1
                                        #     Parent Loop BB22_46 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB22_55 Depth 4
                                        #         Child Loop BB22_51 Depth 4
	bgeu	$a7, $a4, .LBB22_52
# %bb.49:                               #   in Loop: Header=BB22_48 Depth=3
	move	$s2, $zero
.LBB22_50:                              # %scalar.ph357.preheader
                                        #   in Loop: Header=BB22_48 Depth=3
	sub.d	$s3, $a7, $s2
	add.w	$s2, $fp, $s2
	.p2align	4, , 16
.LBB22_51:                              # %scalar.ph357
                                        #   Parent Loop BB22_41 Depth=1
                                        #     Parent Loop BB22_46 Depth=2
                                        #       Parent Loop BB22_48 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	slli.d	$s4, $s2, 3
	fldx.d	$fa2, $t4, $s4
	fsub.d	$fa2, $fa2, $fa0
	fstx.d	$fa2, $t4, $s4
	addi.d	$s3, $s3, -1
	addi.w	$s2, $s2, 1
	bnez	$s3, .LBB22_51
	b	.LBB22_47
	.p2align	4, , 16
.LBB22_52:                              # %vector.scevcheck356
                                        #   in Loop: Header=BB22_48 Depth=3
	mul.d	$s2, $t0, $t7
	add.w	$s3, $t8, $s2
	add.w	$s4, $s3, $t5
	move	$s2, $zero
	blt	$s4, $s3, .LBB22_50
# %bb.53:                               # %vector.scevcheck356
                                        #   in Loop: Header=BB22_48 Depth=3
	srli.d	$s3, $t5, 32
	bnez	$s3, .LBB22_50
# %bb.54:                               # %vector.body364.preheader
                                        #   in Loop: Header=BB22_48 Depth=3
	move	$s2, $fp
	move	$s3, $t6
	.p2align	4, , 16
.LBB22_55:                              # %vector.body364
                                        #   Parent Loop BB22_41 Depth=1
                                        #     Parent Loop BB22_46 Depth=2
                                        #       Parent Loop BB22_48 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	alsl.d	$s4, $s2, $t4, 3
	slli.d	$s5, $s2, 3
	vldx	$vr2, $t4, $s5
	vld	$vr3, $s4, 16
	vfsub.d	$vr2, $vr2, $vr1
	vfsub.d	$vr3, $vr3, $vr1
	vstx	$vr2, $t4, $s5
	vst	$vr3, $s4, 16
	addi.d	$s3, $s3, -4
	addi.w	$s2, $s2, 4
	bnez	$s3, .LBB22_55
# %bb.56:                               # %middle.block369
                                        #   in Loop: Header=BB22_48 Depth=3
	move	$s2, $t6
	beq	$t6, $a7, .LBB22_47
	b	.LBB22_50
.LBB22_57:                              # %shift_grid.exit314
	pcaddu18i	$ra, %call36(CycleTime)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, 0
	sub.d	$a0, $a0, $s1
	add.d	$a0, $a0, $a1
	st.d	$a0, $s0, 0
.LBB22_58:
	fld.d	$fs7, $sp, 216                  # 8-byte Folded Reload
	fld.d	$fs6, $sp, 224                  # 8-byte Folded Reload
	fld.d	$fs5, $sp, 232                  # 8-byte Folded Reload
	fld.d	$fs4, $sp, 240                  # 8-byte Folded Reload
	fld.d	$fs3, $sp, 248                  # 8-byte Folded Reload
	fld.d	$fs2, $sp, 256                  # 8-byte Folded Reload
	fld.d	$fs1, $sp, 264                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 272                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 280                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 288                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 296                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 304                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 312                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 320                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 328                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 336                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 344                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 352                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 360                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 368
	ret
.Lfunc_end22:
	.size	initialize_problem, .Lfunc_end22-initialize_problem
                                        # -- End function
	.type	.L.str.1,@object                # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"  level=%2d, eigenvalue_max ~= %e\n"
	.size	.L.str.1, 35

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"\n  average value of f = %20.12e\n"
	.size	.L.str.2, 33

	.section	".note.GNU-stack","",@progbits
	.addrsig
