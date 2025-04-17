	.file	"dp_enc.c"
	.text
	.globl	init_coefs                      # -- Begin function init_coefs
	.p2align	5
	.type	init_coefs,@function
init_coefs:                             # @init_coefs
# %bb.0:
	ori	$a3, $zero, 38
	sll.w	$a3, $a3, $a1
	srli.d	$a3, $a3, 4
	st.h	$a3, $a0, 0
	addi.d	$a3, $zero, -29
	sll.w	$a3, $a3, $a1
	srli.d	$a3, $a3, 4
	st.h	$a3, $a0, 2
	addi.d	$a3, $zero, -2
	sll.w	$a1, $a3, $a1
	srli.d	$a1, $a1, 4
	ori	$a3, $zero, 4
	st.h	$a1, $a0, 4
	blt	$a2, $a3, .LBB0_2
# %bb.1:                                # %.lr.ph.preheader
	addi.d	$a0, $a0, 6
	slli.d	$a1, $a2, 1
	addi.d	$a2, $a1, -6
	move	$a1, $zero
	pcaddu18i	$t8, %call36(memset)
	jr	$t8
.LBB0_2:                                # %._crit_edge
	ret
.Lfunc_end0:
	.size	init_coefs, .Lfunc_end0-init_coefs
                                        # -- End function
	.globl	copy_coefs                      # -- Begin function copy_coefs
	.p2align	5
	.type	copy_coefs,@function
copy_coefs:                             # @copy_coefs
# %bb.0:
	ori	$a3, $zero, 1
	blt	$a2, $a3, .LBB1_14
# %bb.1:                                # %iter.check
	ori	$a4, $zero, 8
	move	$a3, $zero
	bltu	$a2, $a4, .LBB1_12
# %bb.2:                                # %iter.check
	sub.d	$a4, $a1, $a0
	ori	$a5, $zero, 32
	bltu	$a4, $a5, .LBB1_12
# %bb.3:                                # %vector.main.loop.iter.check
	ori	$a3, $zero, 16
	bgeu	$a2, $a3, .LBB1_8
# %bb.4:
	move	$a3, $zero
.LBB1_5:                                # %vec.epilog.ph
	move	$a6, $a3
	bstrpick.d	$a3, $a2, 30, 3
	slli.d	$a3, $a3, 3
	sub.d	$a4, $a6, $a3
	alsl.d	$a5, $a6, $a1, 1
	alsl.d	$a6, $a6, $a0, 1
	.p2align	4, , 16
.LBB1_6:                                # %vec.epilog.vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a6, 0
	vst	$vr0, $a5, 0
	addi.d	$a4, $a4, 8
	addi.d	$a5, $a5, 16
	addi.d	$a6, $a6, 16
	bnez	$a4, .LBB1_6
# %bb.7:                                # %vec.epilog.middle.block
	bne	$a3, $a2, .LBB1_12
	b	.LBB1_14
.LBB1_8:                                # %vector.ph
	bstrpick.d	$a3, $a2, 30, 4
	slli.d	$a3, $a3, 4
	addi.d	$a4, $a1, 16
	addi.d	$a5, $a0, 16
	move	$a6, $a3
	.p2align	4, , 16
.LBB1_9:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a5, -16
	vld	$vr1, $a5, 0
	vst	$vr0, $a4, -16
	vst	$vr1, $a4, 0
	addi.d	$a6, $a6, -16
	addi.d	$a4, $a4, 32
	addi.d	$a5, $a5, 32
	bnez	$a6, .LBB1_9
# %bb.10:                               # %middle.block
	beq	$a3, $a2, .LBB1_14
# %bb.11:                               # %vec.epilog.iter.check
	andi	$a4, $a2, 8
	bnez	$a4, .LBB1_5
.LBB1_12:                               # %.lr.ph.preheader
	alsl.d	$a1, $a3, $a1, 1
	alsl.d	$a0, $a3, $a0, 1
	sub.d	$a2, $a2, $a3
	.p2align	4, , 16
.LBB1_13:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.h	$a3, $a0, 0
	st.h	$a3, $a1, 0
	addi.d	$a1, $a1, 2
	addi.d	$a2, $a2, -1
	addi.d	$a0, $a0, 2
	bnez	$a2, .LBB1_13
.LBB1_14:                               # %._crit_edge
	ret
.Lfunc_end1:
	.size	copy_coefs, .Lfunc_end1-copy_coefs
                                        # -- End function
	.globl	pc_block                        # -- Begin function pc_block
	.p2align	5
	.type	pc_block,@function
pc_block:                               # @pc_block
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
	ld.w	$a7, $a0, 0
	st.w	$a7, $a1, 0
	beqz	$a4, .LBB2_11
# %bb.1:
	ori	$a7, $zero, 32
	ori	$t0, $zero, 31
	sub.d	$a5, $a7, $a5
	bne	$a4, $t0, .LBB2_14
# %bb.2:                                # %.preheader526
	ori	$a3, $zero, 2
	blt	$a2, $a3, .LBB2_82
# %bb.3:                                # %.lr.ph.preheader
	ori	$a4, $zero, 9
	ori	$a3, $zero, 1
	bltu	$a2, $a4, .LBB2_9
# %bb.4:                                # %vector.memcheck
	addi.d	$a4, $a1, 4
	alsl.d	$a6, $a2, $a0, 2
	bgeu	$a4, $a6, .LBB2_6
# %bb.5:                                # %vector.memcheck
	alsl.d	$a4, $a2, $a1, 2
	bltu	$a0, $a4, .LBB2_9
.LBB2_6:                                # %vector.ph
	addi.d	$a4, $a2, -1
	move	$a6, $a4
	bstrins.d	$a6, $zero, 2, 0
	ori	$a7, $zero, 1
	move	$a3, $a4
	bstrins.d	$a3, $a7, 2, 0
	vreplgr2vr.w	$vr0, $a5
	addi.d	$a7, $a0, 16
	addi.d	$t0, $a1, 20
	move	$t1, $a6
	.p2align	4, , 16
.LBB2_7:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr1, $a7, -12
	vld	$vr2, $a7, 4
	vld	$vr3, $a7, -16
	vld	$vr4, $a7, 0
	vsub.w	$vr1, $vr1, $vr3
	vsub.w	$vr2, $vr2, $vr4
	vsll.w	$vr1, $vr1, $vr0
	vsll.w	$vr2, $vr2, $vr0
	vsra.w	$vr1, $vr1, $vr0
	vsra.w	$vr2, $vr2, $vr0
	vst	$vr1, $t0, -16
	vst	$vr2, $t0, 0
	addi.d	$a7, $a7, 32
	addi.d	$t1, $t1, -8
	addi.d	$t0, $t0, 32
	bnez	$t1, .LBB2_7
# %bb.8:                                # %middle.block
	beq	$a4, $a6, .LBB2_82
.LBB2_9:                                # %.lr.ph.preheader656
	alsl.d	$a1, $a3, $a1, 2
	alsl.d	$a0, $a3, $a0, 2
	sub.d	$a2, $a2, $a3
	.p2align	4, , 16
.LBB2_10:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a3, $a0, 0
	ld.w	$a4, $a0, -4
	sub.d	$a3, $a3, $a4
	sll.w	$a3, $a3, $a5
	sra.w	$a3, $a3, $a5
	st.w	$a3, $a1, 0
	addi.d	$a1, $a1, 4
	addi.d	$a2, $a2, -1
	addi.d	$a0, $a0, 4
	bnez	$a2, .LBB2_10
	b	.LBB2_82
.LBB2_11:
	beq	$a0, $a1, .LBB2_82
# %bb.12:
	ori	$a3, $zero, 2
	blt	$a2, $a3, .LBB2_82
# %bb.13:
	addi.d	$a3, $a1, 4
	addi.d	$a1, $a0, 4
	slli.d	$a0, $a2, 2
	addi.d	$a2, $a0, -4
	move	$a0, $a3
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
	pcaddu18i	$t8, %call36(memcpy)
	jr	$t8
.LBB2_14:                               # %.preheader525
	addi.d	$a7, $a6, -1
	ori	$t0, $zero, 1
	ori	$t1, $zero, 1
	addi.w	$t7, $a4, 1
	blt	$a4, $t1, .LBB2_23
# %bb.15:                               # %.lr.ph531.preheader
	ori	$t3, $zero, 9
	bstrpick.d	$t2, $t7, 31, 0
	bltu	$t7, $t3, .LBB2_21
# %bb.16:                               # %vector.memcheck607
	addi.d	$t3, $a1, 4
	alsl.d	$t4, $t2, $a0, 2
	bgeu	$t3, $t4, .LBB2_18
# %bb.17:                               # %vector.memcheck607
	alsl.d	$t3, $t2, $a1, 2
	bltu	$a0, $t3, .LBB2_21
.LBB2_18:                               # %vector.ph616
	addi.d	$t3, $t2, -1
	move	$t4, $t3
	bstrins.d	$t4, $zero, 2, 0
	ori	$t5, $zero, 1
	move	$t1, $t3
	bstrins.d	$t1, $t5, 2, 0
	vreplgr2vr.w	$vr0, $a5
	addi.d	$t5, $a0, 16
	addi.d	$t6, $a1, 20
	move	$t8, $t4
	.p2align	4, , 16
.LBB2_19:                               # %vector.body621
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr1, $t5, -12
	vld	$vr2, $t5, 4
	vld	$vr3, $t5, -16
	vld	$vr4, $t5, 0
	vsub.w	$vr1, $vr1, $vr3
	vsub.w	$vr2, $vr2, $vr4
	vsll.w	$vr1, $vr1, $vr0
	vsll.w	$vr2, $vr2, $vr0
	vsra.w	$vr1, $vr1, $vr0
	vsra.w	$vr2, $vr2, $vr0
	vst	$vr1, $t6, -16
	vst	$vr2, $t6, 0
	addi.d	$t5, $t5, 32
	addi.d	$t8, $t8, -8
	addi.d	$t6, $t6, 32
	bnez	$t8, .LBB2_19
# %bb.20:                               # %middle.block629
	beq	$t3, $t4, .LBB2_23
.LBB2_21:                               # %.lr.ph531.preheader655
	alsl.d	$t3, $t1, $a1, 2
	alsl.d	$t4, $t1, $a0, 2
	sub.d	$t1, $t2, $t1
	.p2align	4, , 16
.LBB2_22:                               # %.lr.ph531
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$t2, $t4, 0
	ld.w	$t5, $t4, -4
	sub.d	$t2, $t2, $t5
	sll.w	$t2, $t2, $a5
	sra.w	$t2, $t2, $a5
	st.w	$t2, $t3, 0
	addi.d	$t3, $t3, 4
	addi.d	$t1, $t1, -1
	addi.d	$t4, $t4, 4
	bnez	$t1, .LBB2_22
.LBB2_23:                               # %._crit_edge
	ori	$t1, $zero, 4
	sll.w	$a7, $t0, $a7
	beq	$a4, $t1, .LBB2_48
# %bb.24:                               # %._crit_edge
	ori	$t0, $zero, 8
	bne	$a4, $t0, .LBB2_62
# %bb.25:
	ld.hu	$a4, $a3, 0
	ld.hu	$t0, $a3, 2
	ld.hu	$t1, $a3, 4
	ld.hu	$t2, $a3, 6
	ld.hu	$t6, $a3, 8
	ld.hu	$t5, $a3, 10
	ld.hu	$t4, $a3, 12
	ld.hu	$t3, $a3, 14
	ori	$t8, $zero, 10
	blt	$a2, $t8, .LBB2_47
# %bb.26:                               # %.lr.ph542.preheader
	slli.d	$t7, $t7, 2
	sub.d	$t7, $zero, $t7
	addi.d	$a0, $a0, 36
	addi.d	$a1, $a1, 36
	addi.d	$a2, $a2, -9
	ori	$t8, $zero, 1
	st.d	$t7, $sp, 0                     # 8-byte Folded Spill
	b	.LBB2_29
.LBB2_27:                               #   in Loop: Header=BB2_29 Depth=1
	ld.d	$t7, $sp, 0                     # 8-byte Folded Reload
	.p2align	4, , 16
.LBB2_28:                               #   in Loop: Header=BB2_29 Depth=1
	addi.d	$a0, $a0, 4
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, 4
	beqz	$a2, .LBB2_47
.LBB2_29:                               # %.lr.ph542
                                        # =>This Inner Loop Header: Depth=1
	ldx.w	$s5, $a0, $t7
	ld.w	$fp, $a0, -4
	ld.w	$s0, $a0, -8
	ld.w	$s1, $a0, -12
	ld.w	$s2, $a0, -16
	sub.w	$fp, $s5, $fp
	sub.w	$s0, $s5, $s0
	sub.w	$s1, $s5, $s1
	sub.w	$s2, $s5, $s2
	ld.w	$s3, $a0, -20
	ld.w	$s4, $a0, -24
	ld.w	$s6, $a0, -28
	ld.w	$s7, $a0, -32
	sub.w	$s3, $s5, $s3
	sub.w	$s4, $s5, $s4
	sub.w	$s6, $s5, $s6
	sub.w	$s7, $s5, $s7
	ext.w.h	$s8, $a4
	ext.w.h	$ra, $t0
	mul.d	$s8, $fp, $s8
	mul.d	$ra, $s0, $ra
	add.d	$s8, $ra, $s8
	ext.w.h	$ra, $t1
	mul.d	$ra, $s1, $ra
	add.d	$s8, $s8, $ra
	ext.w.h	$ra, $t2
	mul.d	$ra, $s2, $ra
	add.d	$s8, $s8, $ra
	ext.w.h	$ra, $t6
	mul.d	$ra, $s3, $ra
	add.d	$s8, $s8, $ra
	ext.w.h	$ra, $t5
	mul.d	$ra, $s4, $ra
	add.d	$s8, $s8, $ra
	ext.w.h	$ra, $t4
	mul.d	$ra, $s6, $ra
	add.d	$s8, $s8, $ra
	ext.w.h	$ra, $t3
	mul.d	$ra, $s7, $ra
	add.d	$s8, $s8, $ra
	ld.w	$ra, $a0, 0
	sub.d	$s8, $a7, $s8
	sra.w	$s8, $s8, $a6
	add.d	$s5, $s5, $s8
	sub.d	$s5, $ra, $s5
	sll.w	$s5, $s5, $a5
	sra.w	$s8, $s5, $a5
	slt	$s5, $zero, $s8
	srai.d	$ra, $s8, 31
	or	$s5, $ra, $s5
	st.w	$s8, $a1, 0
	blt	$s5, $t8, .LBB2_38
# %bb.30:                               #   in Loop: Header=BB2_29 Depth=1
	slt	$s5, $zero, $s7
	srai.d	$ra, $s7, 31
	or	$ra, $ra, $s5
	mul.d	$s5, $ra, $s7
	sra.w	$s5, $s5, $a6
	sub.w	$s5, $s8, $s5
	sub.d	$t3, $t3, $ra
	blt	$s5, $t8, .LBB2_28
# %bb.31:                               #   in Loop: Header=BB2_29 Depth=1
	slt	$s7, $zero, $s6
	srai.d	$s8, $s6, 31
	or	$s7, $s8, $s7
	mul.d	$s6, $s7, $s6
	sra.w	$s6, $s6, $a6
	slli.d	$s6, $s6, 1
	sub.w	$s5, $s5, $s6
	sub.d	$t4, $t4, $s7
	blt	$s5, $t8, .LBB2_28
# %bb.32:                               #   in Loop: Header=BB2_29 Depth=1
	slt	$s6, $zero, $s4
	srai.d	$s7, $s4, 31
	or	$s6, $s7, $s6
	mul.d	$s4, $s6, $s4
	sra.w	$s4, $s4, $a6
	alsl.d	$s4, $s4, $s4, 1
	sub.w	$s4, $s5, $s4
	sub.d	$t5, $t5, $s6
	blt	$s4, $t8, .LBB2_28
# %bb.33:                               #   in Loop: Header=BB2_29 Depth=1
	slt	$s5, $zero, $s3
	srai.d	$s6, $s3, 31
	or	$s5, $s6, $s5
	mul.d	$s3, $s5, $s3
	sra.w	$s3, $s3, $a6
	slli.d	$s3, $s3, 2
	sub.w	$s3, $s4, $s3
	sub.d	$t6, $t6, $s5
	blt	$s3, $t8, .LBB2_28
# %bb.34:                               #   in Loop: Header=BB2_29 Depth=1
	slt	$s4, $zero, $s2
	srai.d	$s5, $s2, 31
	or	$s4, $s5, $s4
	mul.d	$s2, $s4, $s2
	sra.w	$s2, $s2, $a6
	alsl.d	$s2, $s2, $s2, 2
	sub.w	$s2, $s3, $s2
	sub.d	$t2, $t2, $s4
	blt	$s2, $t8, .LBB2_28
# %bb.35:                               #   in Loop: Header=BB2_29 Depth=1
	slt	$s3, $zero, $s1
	srai.d	$s4, $s1, 31
	or	$s3, $s4, $s3
	mul.d	$s1, $s3, $s1
	sra.w	$s1, $s1, $a6
	addi.d	$s4, $zero, -6
	mul.d	$s1, $s1, $s4
	add.w	$s1, $s2, $s1
	sub.d	$t1, $t1, $s3
	blt	$s1, $t8, .LBB2_28
# %bb.36:                               #   in Loop: Header=BB2_29 Depth=1
	slt	$s2, $zero, $s0
	srai.d	$s3, $s0, 31
	or	$s2, $s3, $s2
	mul.d	$s0, $s2, $s0
	sra.w	$s0, $s0, $a6
	slli.d	$s3, $s0, 3
	sub.d	$s0, $s0, $s3
	add.w	$s0, $s1, $s0
	sub.d	$t0, $t0, $s2
	blt	$s0, $t8, .LBB2_28
# %bb.37:                               #   in Loop: Header=BB2_29 Depth=1
	slt	$s0, $zero, $fp
	srai.d	$fp, $fp, 31
	or	$fp, $fp, $s0
	sub.d	$a4, $a4, $fp
	b	.LBB2_28
	.p2align	4, , 16
.LBB2_38:                               #   in Loop: Header=BB2_29 Depth=1
	addi.w	$s5, $zero, -1
	blt	$s5, $ra, .LBB2_28
# %bb.39:                               #   in Loop: Header=BB2_29 Depth=1
	slt	$ra, $zero, $s7
	srai.d	$t7, $s7, 31
	or	$t7, $t7, $ra
	mul.d	$s7, $s7, $t7
	sub.d	$s7, $zero, $s7
	sra.w	$s7, $s7, $a6
	sub.w	$s7, $s8, $s7
	add.d	$t3, $t3, $t7
	blt	$s5, $s7, .LBB2_27
# %bb.40:                               #   in Loop: Header=BB2_29 Depth=1
	slt	$t7, $zero, $s6
	srai.d	$s8, $s6, 31
	or	$t7, $s8, $t7
	mul.d	$s6, $s6, $t7
	sub.d	$s6, $zero, $s6
	sra.w	$s6, $s6, $a6
	slli.d	$s6, $s6, 1
	sub.w	$s6, $s7, $s6
	add.d	$t4, $t4, $t7
	blt	$s5, $s6, .LBB2_27
# %bb.41:                               #   in Loop: Header=BB2_29 Depth=1
	slt	$t7, $zero, $s4
	srai.d	$s7, $s4, 31
	or	$t7, $s7, $t7
	mul.d	$s4, $s4, $t7
	sub.d	$s4, $zero, $s4
	sra.w	$s4, $s4, $a6
	alsl.d	$s4, $s4, $s4, 1
	sub.w	$s4, $s6, $s4
	add.d	$t5, $t5, $t7
	blt	$s5, $s4, .LBB2_27
# %bb.42:                               #   in Loop: Header=BB2_29 Depth=1
	slt	$t7, $zero, $s3
	srai.d	$s6, $s3, 31
	or	$t7, $s6, $t7
	mul.d	$s3, $s3, $t7
	sub.d	$s3, $zero, $s3
	sra.w	$s3, $s3, $a6
	slli.d	$s3, $s3, 2
	sub.w	$s3, $s4, $s3
	add.d	$t6, $t6, $t7
	blt	$s5, $s3, .LBB2_27
# %bb.43:                               #   in Loop: Header=BB2_29 Depth=1
	slt	$t7, $zero, $s2
	srai.d	$s4, $s2, 31
	or	$t7, $s4, $t7
	mul.d	$s2, $s2, $t7
	sub.d	$s2, $zero, $s2
	sra.w	$s2, $s2, $a6
	alsl.d	$s2, $s2, $s2, 2
	sub.w	$s2, $s3, $s2
	add.d	$t2, $t2, $t7
	blt	$s5, $s2, .LBB2_27
# %bb.44:                               #   in Loop: Header=BB2_29 Depth=1
	slt	$t7, $zero, $s1
	srai.d	$s3, $s1, 31
	or	$t7, $s3, $t7
	mul.d	$s1, $s1, $t7
	sub.d	$s1, $zero, $s1
	sra.w	$s1, $s1, $a6
	addi.d	$s3, $zero, -6
	mul.d	$s1, $s1, $s3
	add.w	$s1, $s2, $s1
	add.d	$t1, $t1, $t7
	blt	$s5, $s1, .LBB2_27
# %bb.45:                               #   in Loop: Header=BB2_29 Depth=1
	slt	$t7, $zero, $s0
	srai.d	$s2, $s0, 31
	or	$t7, $s2, $t7
	mul.d	$s0, $s0, $t7
	sub.d	$s0, $zero, $s0
	sra.w	$s0, $s0, $a6
	slli.d	$s2, $s0, 3
	sub.d	$s0, $s0, $s2
	add.w	$s0, $s1, $s0
	add.d	$t0, $t0, $t7
	blt	$s5, $s0, .LBB2_27
# %bb.46:                               #   in Loop: Header=BB2_29 Depth=1
	slt	$t7, $zero, $fp
	srai.d	$fp, $fp, 31
	or	$t7, $fp, $t7
	add.d	$a4, $a4, $t7
	b	.LBB2_27
.LBB2_47:                               # %._crit_edge543
	st.h	$a4, $a3, 0
	st.h	$t0, $a3, 2
	st.h	$t1, $a3, 4
	st.h	$t2, $a3, 6
	st.h	$t6, $a3, 8
	st.h	$t5, $a3, 10
	st.h	$t4, $a3, 12
	st.h	$t3, $a3, 14
	b	.LBB2_82
.LBB2_48:
	ld.hu	$a4, $a3, 0
	ld.hu	$t0, $a3, 2
	ld.hu	$t1, $a3, 4
	ld.hu	$t2, $a3, 6
	ori	$t3, $zero, 6
	blt	$a2, $t3, .LBB2_61
# %bb.49:                               # %.lr.ph557.preheader
	slli.d	$t3, $t7, 2
	sub.d	$t3, $zero, $t3
	addi.d	$a0, $a0, 20
	addi.d	$a1, $a1, 20
	addi.d	$a2, $a2, -5
	ori	$t4, $zero, 1
	b	.LBB2_52
	.p2align	4, , 16
.LBB2_50:                               #   in Loop: Header=BB2_52 Depth=1
	addi.w	$fp, $zero, -1
	bge	$fp, $s1, .LBB2_57
.LBB2_51:                               #   in Loop: Header=BB2_52 Depth=1
	addi.d	$a0, $a0, 4
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, 4
	beqz	$a2, .LBB2_61
.LBB2_52:                               # %.lr.ph557
                                        # =>This Inner Loop Header: Depth=1
	ldx.w	$fp, $a0, $t3
	ld.w	$t5, $a0, -4
	ld.w	$t6, $a0, -8
	ld.w	$t7, $a0, -12
	ld.w	$t8, $a0, -16
	sub.w	$t5, $fp, $t5
	sub.w	$t6, $fp, $t6
	sub.w	$t7, $fp, $t7
	sub.w	$t8, $fp, $t8
	ext.w.h	$s0, $a4
	ext.w.h	$s1, $t0
	ext.w.h	$s2, $t1
	ext.w.h	$s3, $t2
	mul.d	$s0, $t5, $s0
	mul.d	$s1, $t6, $s1
	mul.d	$s2, $t7, $s2
	mul.d	$s3, $t8, $s3
	add.d	$s0, $s1, $s0
	add.d	$s0, $s0, $s2
	add.d	$s0, $s0, $s3
	ld.w	$s1, $a0, 0
	sub.d	$s0, $a7, $s0
	sra.w	$s0, $s0, $a6
	add.d	$fp, $fp, $s0
	sub.d	$fp, $s1, $fp
	sll.w	$fp, $fp, $a5
	sra.w	$s0, $fp, $a5
	slt	$fp, $zero, $s0
	srai.d	$s1, $s0, 31
	or	$fp, $s1, $fp
	st.w	$s0, $a1, 0
	blt	$fp, $t4, .LBB2_50
# %bb.53:                               #   in Loop: Header=BB2_52 Depth=1
	slt	$fp, $zero, $t8
	srai.d	$s1, $t8, 31
	or	$fp, $s1, $fp
	mul.d	$t8, $fp, $t8
	sra.w	$t8, $t8, $a6
	sub.w	$t8, $s0, $t8
	sub.d	$t2, $t2, $fp
	blt	$t8, $t4, .LBB2_51
# %bb.54:                               #   in Loop: Header=BB2_52 Depth=1
	slt	$fp, $zero, $t7
	srai.d	$s0, $t7, 31
	or	$fp, $s0, $fp
	mul.d	$t7, $fp, $t7
	sra.w	$t7, $t7, $a6
	slli.d	$t7, $t7, 1
	sub.w	$t7, $t8, $t7
	sub.d	$t1, $t1, $fp
	blt	$t7, $t4, .LBB2_51
# %bb.55:                               #   in Loop: Header=BB2_52 Depth=1
	slt	$t8, $zero, $t6
	srai.d	$fp, $t6, 31
	or	$t8, $fp, $t8
	mul.d	$t6, $t8, $t6
	sra.w	$t6, $t6, $a6
	alsl.d	$t6, $t6, $t6, 1
	sub.w	$t6, $t7, $t6
	sub.d	$t0, $t0, $t8
	blt	$t6, $t4, .LBB2_51
# %bb.56:                               #   in Loop: Header=BB2_52 Depth=1
	slt	$t6, $zero, $t5
	srai.d	$t5, $t5, 31
	or	$t5, $t5, $t6
	sub.d	$a4, $a4, $t5
	b	.LBB2_51
.LBB2_57:                               #   in Loop: Header=BB2_52 Depth=1
	slt	$s1, $zero, $t8
	srai.d	$s2, $t8, 31
	or	$s1, $s2, $s1
	mul.d	$t8, $t8, $s1
	sub.d	$t8, $zero, $t8
	sra.w	$t8, $t8, $a6
	sub.w	$t8, $s0, $t8
	add.d	$t2, $t2, $s1
	blt	$fp, $t8, .LBB2_51
# %bb.58:                               #   in Loop: Header=BB2_52 Depth=1
	slt	$s0, $zero, $t7
	srai.d	$s1, $t7, 31
	or	$s0, $s1, $s0
	mul.d	$t7, $t7, $s0
	sub.d	$t7, $zero, $t7
	sra.w	$t7, $t7, $a6
	slli.d	$t7, $t7, 1
	sub.w	$t7, $t8, $t7
	add.d	$t1, $t1, $s0
	blt	$fp, $t7, .LBB2_51
# %bb.59:                               #   in Loop: Header=BB2_52 Depth=1
	slt	$t8, $zero, $t6
	srai.d	$s0, $t6, 31
	or	$t8, $s0, $t8
	mul.d	$t6, $t6, $t8
	sub.d	$t6, $zero, $t6
	sra.w	$t6, $t6, $a6
	alsl.d	$t6, $t6, $t6, 1
	sub.w	$t6, $t7, $t6
	add.d	$t0, $t0, $t8
	blt	$fp, $t6, .LBB2_51
# %bb.60:                               #   in Loop: Header=BB2_52 Depth=1
	slt	$t6, $zero, $t5
	srai.d	$t5, $t5, 31
	or	$t5, $t5, $t6
	add.d	$a4, $a4, $t5
	b	.LBB2_51
.LBB2_61:                               # %._crit_edge558
	st.h	$a4, $a3, 0
	st.h	$t0, $a3, 2
	st.h	$t1, $a3, 4
	st.h	$t2, $a3, 6
	b	.LBB2_82
.LBB2_62:                               # %.preheader523
	bge	$t7, $a2, .LBB2_82
# %bb.63:                               # %.lr.ph570
	bstrpick.d	$t0, $a4, 31, 0
	bstrpick.d	$t1, $a4, 30, 3
	slli.d	$t1, $t1, 3
	addi.d	$t2, $a3, 8
	slli.d	$t5, $t7, 2
	alsl.d	$t4, $t7, $a0, 2
	addi.d	$t3, $t4, -16
	addi.d	$t4, $t4, -4
	slli.d	$t6, $a4, 2
	sub.d	$t5, $t5, $t6
	add.d	$t5, $a0, $t5
	alsl.d	$t6, $a4, $a3, 1
	addi.d	$t6, $t6, -2
	ori	$t8, $zero, 1
	vrepli.b	$vr0, 0
	move	$s0, $t7
	b	.LBB2_66
	.p2align	4, , 16
.LBB2_64:                               #   in Loop: Header=BB2_66 Depth=1
	addi.w	$s3, $zero, -1
	bge	$s3, $s4, .LBB2_79
.LBB2_65:                               # %.loopexit
                                        #   in Loop: Header=BB2_66 Depth=1
	addi.d	$s0, $s0, 1
	addi.w	$fp, $s0, 0
	addi.d	$t3, $t3, 4
	addi.d	$t4, $t4, 4
	addi.d	$t5, $t5, 4
	beq	$a2, $fp, .LBB2_82
.LBB2_66:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_71 Depth 2
                                        #     Child Loop BB2_74 Depth 2
                                        #     Child Loop BB2_80 Depth 2
                                        #     Child Loop BB2_77 Depth 2
	sub.d	$s1, $s0, $t7
	slli.d	$s1, $s1, 2
	ldx.w	$s1, $a0, $s1
	blt	$a4, $t8, .LBB2_69
# %bb.67:                               # %.lr.ph566.preheader
                                        #   in Loop: Header=BB2_66 Depth=1
	ori	$fp, $zero, 8
	bgeu	$a4, $fp, .LBB2_70
# %bb.68:                               #   in Loop: Header=BB2_66 Depth=1
	move	$s5, $zero
	move	$s2, $zero
	b	.LBB2_73
	.p2align	4, , 16
.LBB2_69:                               #   in Loop: Header=BB2_66 Depth=1
	move	$s2, $zero
	b	.LBB2_75
	.p2align	4, , 16
.LBB2_70:                               # %vector.ph634
                                        #   in Loop: Header=BB2_66 Depth=1
	vreplgr2vr.w	$vr1, $s1
	move	$s2, $t3
	move	$s3, $t2
	move	$s4, $t1
	vori.b	$vr2, $vr0, 0
	vori.b	$vr3, $vr0, 0
	.p2align	4, , 16
.LBB2_71:                               # %vector.body639
                                        #   Parent Loop BB2_66 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s5, $s3, -8
	ld.d	$s6, $s3, 0
	vinsgr2vr.d	$vr4, $s5, 0
	vinsgr2vr.d	$vr5, $s6, 0
	vilvl.h	$vr4, $vr4, $vr4
	vslli.w	$vr4, $vr4, 16
	vsrai.w	$vr4, $vr4, 16
	vilvl.h	$vr5, $vr5, $vr5
	vld	$vr6, $s2, 0
	vld	$vr7, $s2, -16
	vslli.w	$vr5, $vr5, 16
	vsrai.w	$vr5, $vr5, 16
	vshuf4i.w	$vr6, $vr6, 27
	vshuf4i.w	$vr7, $vr7, 27
	vsub.w	$vr6, $vr6, $vr1
	vsub.w	$vr7, $vr7, $vr1
	vmadd.w	$vr2, $vr6, $vr4
	vmadd.w	$vr3, $vr7, $vr5
	addi.d	$s4, $s4, -8
	addi.d	$s3, $s3, 16
	addi.d	$s2, $s2, -32
	bnez	$s4, .LBB2_71
# %bb.72:                               # %middle.block648
                                        #   in Loop: Header=BB2_66 Depth=1
	vadd.w	$vr1, $vr3, $vr2
	vreplvei.d	$vr2, $vr1, 1
	vadd.w	$vr1, $vr1, $vr2
	vreplvei.w	$vr2, $vr1, 1
	vadd.w	$vr1, $vr1, $vr2
	vpickve2gr.w	$s2, $vr1, 0
	move	$s5, $t1
	beq	$t1, $t0, .LBB2_75
.LBB2_73:                               # %.lr.ph566.preheader652
                                        #   in Loop: Header=BB2_66 Depth=1
	slli.d	$s3, $s5, 2
	sub.d	$s3, $t4, $s3
	alsl.d	$s4, $s5, $a3, 1
	sub.d	$s5, $t0, $s5
	.p2align	4, , 16
.LBB2_74:                               # %.lr.ph566
                                        #   Parent Loop BB2_66 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$s6, $s3, 0
	ld.h	$s7, $s4, 0
	sub.d	$s6, $s6, $s1
	mul.d	$s6, $s6, $s7
	add.d	$s2, $s6, $s2
	addi.d	$s3, $s3, -4
	addi.d	$s5, $s5, -1
	addi.d	$s4, $s4, 2
	bnez	$s5, .LBB2_74
.LBB2_75:                               # %._crit_edge567
                                        #   in Loop: Header=BB2_66 Depth=1
	alsl.d	$s3, $s0, $a0, 2
	ld.w	$s3, $s3, 0
	add.d	$s2, $s2, $a7
	sra.w	$s2, $s2, $a6
	add.d	$s2, $s2, $s1
	sub.d	$s2, $s3, $s2
	sll.w	$s2, $s2, $a5
	sra.w	$s2, $s2, $a5
	slli.d	$s3, $s0, 2
	slt	$s5, $zero, $s2
	srai.d	$s4, $s2, 31
	or	$s5, $s4, $s5
	stx.w	$s2, $a1, $s3
	blt	$s5, $t8, .LBB2_64
# %bb.76:                               # %.preheader.preheader
                                        #   in Loop: Header=BB2_66 Depth=1
	move	$s3, $zero
	addi.d	$s4, $zero, -1
	move	$s5, $t6
	move	$s6, $a4
	.p2align	4, , 16
.LBB2_77:                               # %.preheader
                                        #   Parent Loop BB2_66 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	blt	$s6, $t8, .LBB2_65
# %bb.78:                               #   in Loop: Header=BB2_77 Depth=2
	ldx.w	$s7, $t5, $s3
	sub.w	$s7, $s1, $s7
	slt	$s8, $zero, $s7
	ld.h	$ra, $s5, 0
	srai.d	$fp, $s7, 31
	or	$fp, $fp, $s8
	addi.d	$s6, $s6, -1
	sub.d	$s8, $ra, $fp
	st.h	$s8, $s5, 0
	mul.d	$fp, $fp, $s7
	sra.w	$fp, $fp, $a6
	mul.d	$fp, $fp, $s4
	add.w	$s2, $fp, $s2
	addi.d	$s3, $s3, 4
	addi.d	$s4, $s4, -1
	addi.d	$s5, $s5, -2
	bge	$s2, $t8, .LBB2_77
	b	.LBB2_65
.LBB2_79:                               # %.preheader521.preheader
                                        #   in Loop: Header=BB2_66 Depth=1
	move	$s4, $t6
	move	$s5, $t5
	move	$s6, $a4
	.p2align	4, , 16
.LBB2_80:                               # %.preheader521
                                        #   Parent Loop BB2_66 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	blt	$s6, $t8, .LBB2_65
# %bb.81:                               #   in Loop: Header=BB2_80 Depth=2
	ld.w	$fp, $s5, 0
	sub.w	$fp, $s1, $fp
	slt	$s7, $zero, $fp
	ld.h	$s8, $s4, 0
	srai.d	$ra, $fp, 31
	or	$s7, $ra, $s7
	addi.d	$s6, $s6, -1
	add.d	$s8, $s8, $s7
	st.h	$s8, $s4, 0
	mul.d	$fp, $fp, $s7
	sub.d	$fp, $zero, $fp
	sra.w	$fp, $fp, $a6
	mul.d	$fp, $fp, $s3
	add.w	$s2, $fp, $s2
	addi.d	$s5, $s5, 4
	addi.d	$s3, $s3, -1
	addi.d	$s4, $s4, -2
	bltz	$s2, .LBB2_80
	b	.LBB2_65
.LBB2_82:                               # %.loopexit524
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
.Lfunc_end2:
	.size	pc_block, .Lfunc_end2-pc_block
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
