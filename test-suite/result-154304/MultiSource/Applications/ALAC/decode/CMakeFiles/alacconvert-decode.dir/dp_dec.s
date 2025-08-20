	.file	"dp_dec.c"
	.text
	.globl	unpc_block                      # -- Begin function unpc_block
	.p2align	5
	.type	unpc_block,@function
unpc_block:                             # @unpc_block
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
	ld.w	$a7, $a0, 0
	st.w	$a7, $a1, 0
	beqz	$a4, .LBB0_5
# %bb.1:
	ori	$t0, $zero, 32
	ori	$t1, $zero, 31
	sub.d	$a5, $t0, $a5
	bne	$a4, $t1, .LBB0_8
# %bb.2:                                # %.preheader517
	ori	$a3, $zero, 2
	blt	$a2, $a3, .LBB0_70
# %bb.3:                                # %.lr.ph.preheader
	addi.d	$a1, $a1, 4
	addi.d	$a0, $a0, 4
	addi.d	$a2, $a2, -1
	.p2align	4, , 16
.LBB0_4:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a3, $a0, 0
	add.d	$a3, $a3, $a7
	sll.w	$a3, $a3, $a5
	sra.w	$a7, $a3, $a5
	st.w	$a7, $a1, 0
	addi.d	$a1, $a1, 4
	addi.d	$a2, $a2, -1
	addi.d	$a0, $a0, 4
	bnez	$a2, .LBB0_4
	b	.LBB0_70
.LBB0_5:
	beq	$a0, $a1, .LBB0_70
# %bb.6:
	ori	$a3, $zero, 2
	blt	$a2, $a3, .LBB0_70
# %bb.7:
	addi.d	$a3, $a1, 4
	addi.d	$a1, $a0, 4
	slli.d	$a0, $a2, 2
	addi.d	$a2, $a0, -4
	move	$a0, $a3
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
	pcaddu18i	$t8, %call36(memcpy)
	jr	$t8
.LBB0_8:                                # %.preheader516
	addi.d	$a7, $a6, -1
	ori	$t0, $zero, 1
	ori	$t1, $zero, 1
	addi.w	$t7, $a4, 1
	blt	$a4, $t1, .LBB0_11
# %bb.9:                                # %.lr.ph523.preheader
	bstrpick.d	$t4, $t7, 31, 0
	ld.w	$t3, $a1, 0
	addi.d	$t1, $a0, 4
	addi.d	$t2, $a1, 4
	addi.d	$t4, $t4, -1
	.p2align	4, , 16
.LBB0_10:                               # %.lr.ph523
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$t5, $t1, 0
	add.d	$t3, $t3, $t5
	sll.w	$t3, $t3, $a5
	sra.w	$t3, $t3, $a5
	st.w	$t3, $t2, 0
	addi.d	$t1, $t1, 4
	addi.d	$t4, $t4, -1
	addi.d	$t2, $t2, 4
	bnez	$t4, .LBB0_10
.LBB0_11:                               # %._crit_edge
	ori	$t1, $zero, 4
	sll.w	$a7, $t0, $a7
	beq	$a4, $t1, .LBB0_36
# %bb.12:                               # %._crit_edge
	ori	$t0, $zero, 8
	bne	$a4, $t0, .LBB0_50
# %bb.13:
	ld.hu	$a4, $a3, 0
	st.d	$a4, $sp, 16                    # 8-byte Folded Spill
	ld.hu	$t0, $a3, 2
	ld.hu	$t1, $a3, 4
	ld.hu	$t2, $a3, 6
	ld.hu	$t6, $a3, 8
	ld.hu	$t5, $a3, 10
	ld.hu	$t4, $a3, 12
	ld.hu	$t3, $a3, 14
	ori	$t8, $zero, 10
	blt	$a2, $t8, .LBB0_35
# %bb.14:                               # %.lr.ph534.preheader
	ld.w	$fp, $a1, 32
	slli.d	$t7, $t7, 2
	sub.d	$a4, $zero, $t7
	st.d	$a4, $sp, 8                     # 8-byte Folded Spill
	addi.d	$a1, $a1, 36
	addi.d	$a0, $a0, 36
	addi.d	$a2, $a2, -9
	ori	$t8, $zero, 1
	b	.LBB0_17
	.p2align	4, , 16
.LBB0_15:                               #   in Loop: Header=BB0_17 Depth=1
	addi.w	$s6, $zero, -1
	bge	$s6, $t7, .LBB0_27
.LBB0_16:                               #   in Loop: Header=BB0_17 Depth=1
	addi.d	$a1, $a1, 4
	addi.d	$a2, $a2, -1
	addi.d	$a0, $a0, 4
	beqz	$a2, .LBB0_35
.LBB0_17:                               # %.lr.ph534
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a4, $sp, 8                     # 8-byte Folded Reload
	ldx.w	$s6, $a1, $a4
	ld.w	$t7, $a1, -8
	ld.w	$s2, $a1, -12
	ld.w	$s3, $a1, -16
	sub.w	$s0, $s6, $fp
	sub.w	$s1, $s6, $t7
	sub.w	$s2, $s6, $s2
	sub.w	$s3, $s6, $s3
	ld.w	$t7, $a1, -20
	ld.w	$fp, $a1, -24
	ld.w	$s7, $a1, -28
	ld.w	$s8, $a1, -32
	sub.w	$s4, $s6, $t7
	sub.w	$s5, $s6, $fp
	sub.w	$s7, $s6, $s7
	sub.w	$s8, $s6, $s8
	ld.d	$a4, $sp, 16                    # 8-byte Folded Reload
	ext.w.h	$t7, $a4
	ext.w.h	$fp, $t0
	ext.w.h	$ra, $t1
	mul.d	$t7, $s0, $t7
	mul.d	$fp, $s1, $fp
	add.d	$t7, $fp, $t7
	ext.w.h	$fp, $t2
	mul.d	$ra, $s2, $ra
	add.d	$t7, $t7, $ra
	ext.w.h	$ra, $t6
	mul.d	$fp, $s3, $fp
	add.d	$t7, $t7, $fp
	ext.w.h	$fp, $t5
	mul.d	$ra, $s4, $ra
	add.d	$t7, $t7, $ra
	ext.w.h	$ra, $t4
	mul.d	$fp, $s5, $fp
	add.d	$t7, $t7, $fp
	ext.w.h	$fp, $t3
	mul.d	$ra, $s7, $ra
	mul.d	$fp, $s8, $fp
	add.d	$t7, $t7, $ra
	ld.w	$ra, $a0, 0
	add.d	$t7, $t7, $fp
	sub.d	$t7, $a7, $t7
	sra.w	$t7, $t7, $a6
	slt	$fp, $zero, $ra
	add.d	$s6, $ra, $s6
	add.d	$s6, $s6, $t7
	srai.d	$t7, $ra, 31
	or	$a4, $t7, $fp
	sll.w	$fp, $s6, $a5
	sra.w	$fp, $fp, $a5
	st.w	$fp, $a1, 0
	blt	$a4, $t8, .LBB0_15
# %bb.18:                               #   in Loop: Header=BB0_17 Depth=1
	slt	$a4, $zero, $s8
	srai.d	$t7, $s8, 31
	or	$a4, $t7, $a4
	mul.d	$t7, $a4, $s8
	sra.w	$t7, $t7, $a6
	sub.w	$s6, $ra, $t7
	sub.d	$t3, $t3, $a4
	blt	$s6, $t8, .LBB0_16
# %bb.19:                               #   in Loop: Header=BB0_17 Depth=1
	slt	$a4, $zero, $s7
	srai.d	$t7, $s7, 31
	or	$a4, $t7, $a4
	mul.d	$t7, $a4, $s7
	sra.w	$t7, $t7, $a6
	slli.d	$t7, $t7, 1
	sub.w	$s6, $s6, $t7
	sub.d	$t4, $t4, $a4
	blt	$s6, $t8, .LBB0_16
# %bb.20:                               #   in Loop: Header=BB0_17 Depth=1
	slt	$a4, $zero, $s5
	srai.d	$t7, $s5, 31
	or	$a4, $t7, $a4
	mul.d	$t7, $a4, $s5
	sra.w	$t7, $t7, $a6
	alsl.d	$t7, $t7, $t7, 1
	sub.w	$s5, $s6, $t7
	sub.d	$t5, $t5, $a4
	blt	$s5, $t8, .LBB0_16
# %bb.21:                               #   in Loop: Header=BB0_17 Depth=1
	slt	$a4, $zero, $s4
	srai.d	$t7, $s4, 31
	or	$a4, $t7, $a4
	mul.d	$t7, $a4, $s4
	sra.w	$t7, $t7, $a6
	slli.d	$t7, $t7, 2
	sub.w	$s4, $s5, $t7
	sub.d	$t6, $t6, $a4
	blt	$s4, $t8, .LBB0_16
# %bb.22:                               #   in Loop: Header=BB0_17 Depth=1
	slt	$a4, $zero, $s3
	srai.d	$t7, $s3, 31
	or	$a4, $t7, $a4
	mul.d	$t7, $a4, $s3
	sra.w	$t7, $t7, $a6
	alsl.d	$t7, $t7, $t7, 2
	sub.w	$s3, $s4, $t7
	sub.d	$t2, $t2, $a4
	blt	$s3, $t8, .LBB0_16
# %bb.23:                               #   in Loop: Header=BB0_17 Depth=1
	slt	$a4, $zero, $s2
	srai.d	$t7, $s2, 31
	or	$a4, $t7, $a4
	mul.d	$t7, $a4, $s2
	sra.w	$t7, $t7, $a6
	addi.d	$s2, $zero, -6
	mul.d	$t7, $t7, $s2
	add.w	$s2, $s3, $t7
	sub.d	$t1, $t1, $a4
	blt	$s2, $t8, .LBB0_16
# %bb.24:                               #   in Loop: Header=BB0_17 Depth=1
	slt	$a4, $zero, $s1
	srai.d	$t7, $s1, 31
	or	$a4, $t7, $a4
	mul.d	$t7, $a4, $s1
	sra.w	$t7, $t7, $a6
	slli.d	$s1, $t7, 3
	sub.d	$t7, $t7, $s1
	add.w	$t7, $s2, $t7
	sub.d	$t0, $t0, $a4
	blt	$t7, $t8, .LBB0_16
# %bb.25:                               #   in Loop: Header=BB0_17 Depth=1
	slt	$a4, $zero, $s0
	srai.d	$t7, $s0, 31
	or	$a4, $t7, $a4
	ld.d	$t7, $sp, 16                    # 8-byte Folded Reload
	sub.d	$t7, $t7, $a4
.LBB0_26:                               #   in Loop: Header=BB0_17 Depth=1
	st.d	$t7, $sp, 16                    # 8-byte Folded Spill
	b	.LBB0_16
.LBB0_27:                               #   in Loop: Header=BB0_17 Depth=1
	slt	$a4, $zero, $s8
	srai.d	$t7, $s8, 31
	or	$a4, $t7, $a4
	mul.d	$t7, $s8, $a4
	sub.d	$t7, $zero, $t7
	sra.w	$t7, $t7, $a6
	sub.w	$s8, $ra, $t7
	add.d	$t3, $t3, $a4
	blt	$s6, $s8, .LBB0_16
# %bb.28:                               #   in Loop: Header=BB0_17 Depth=1
	slt	$a4, $zero, $s7
	srai.d	$t7, $s7, 31
	or	$a4, $t7, $a4
	mul.d	$t7, $s7, $a4
	sub.d	$t7, $zero, $t7
	sra.w	$t7, $t7, $a6
	slli.d	$t7, $t7, 1
	sub.w	$s7, $s8, $t7
	add.d	$t4, $t4, $a4
	blt	$s6, $s7, .LBB0_16
# %bb.29:                               #   in Loop: Header=BB0_17 Depth=1
	slt	$a4, $zero, $s5
	srai.d	$t7, $s5, 31
	or	$a4, $t7, $a4
	mul.d	$t7, $s5, $a4
	sub.d	$t7, $zero, $t7
	sra.w	$t7, $t7, $a6
	alsl.d	$t7, $t7, $t7, 1
	sub.w	$s5, $s7, $t7
	add.d	$t5, $t5, $a4
	blt	$s6, $s5, .LBB0_16
# %bb.30:                               #   in Loop: Header=BB0_17 Depth=1
	slt	$a4, $zero, $s4
	srai.d	$t7, $s4, 31
	or	$a4, $t7, $a4
	mul.d	$t7, $s4, $a4
	sub.d	$t7, $zero, $t7
	sra.w	$t7, $t7, $a6
	slli.d	$t7, $t7, 2
	sub.w	$s4, $s5, $t7
	add.d	$t6, $t6, $a4
	blt	$s6, $s4, .LBB0_16
# %bb.31:                               #   in Loop: Header=BB0_17 Depth=1
	slt	$a4, $zero, $s3
	srai.d	$t7, $s3, 31
	or	$a4, $t7, $a4
	mul.d	$t7, $s3, $a4
	sub.d	$t7, $zero, $t7
	sra.w	$t7, $t7, $a6
	alsl.d	$t7, $t7, $t7, 2
	sub.w	$s3, $s4, $t7
	add.d	$t2, $t2, $a4
	blt	$s6, $s3, .LBB0_16
# %bb.32:                               #   in Loop: Header=BB0_17 Depth=1
	slt	$a4, $zero, $s2
	srai.d	$t7, $s2, 31
	or	$a4, $t7, $a4
	mul.d	$t7, $s2, $a4
	sub.d	$t7, $zero, $t7
	sra.w	$t7, $t7, $a6
	addi.d	$s2, $zero, -6
	mul.d	$t7, $t7, $s2
	add.w	$s2, $s3, $t7
	add.d	$t1, $t1, $a4
	blt	$s6, $s2, .LBB0_16
# %bb.33:                               #   in Loop: Header=BB0_17 Depth=1
	slt	$a4, $zero, $s1
	srai.d	$t7, $s1, 31
	or	$a4, $t7, $a4
	mul.d	$t7, $s1, $a4
	sub.d	$t7, $zero, $t7
	sra.w	$t7, $t7, $a6
	slli.d	$s1, $t7, 3
	sub.d	$t7, $t7, $s1
	add.w	$t7, $s2, $t7
	add.d	$t0, $t0, $a4
	blt	$s6, $t7, .LBB0_16
# %bb.34:                               #   in Loop: Header=BB0_17 Depth=1
	slt	$a4, $zero, $s0
	srai.d	$t7, $s0, 31
	or	$a4, $t7, $a4
	ld.d	$t7, $sp, 16                    # 8-byte Folded Reload
	add.d	$t7, $t7, $a4
	b	.LBB0_26
.LBB0_35:                               # %._crit_edge535
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	st.h	$a0, $a3, 0
	st.h	$t0, $a3, 2
	st.h	$t1, $a3, 4
	st.h	$t2, $a3, 6
	st.h	$t6, $a3, 8
	st.h	$t5, $a3, 10
	st.h	$t4, $a3, 12
	st.h	$t3, $a3, 14
	b	.LBB0_70
.LBB0_36:
	ld.hu	$t2, $a3, 0
	ld.hu	$t1, $a3, 2
	ld.hu	$t0, $a3, 4
	ld.hu	$a4, $a3, 6
	ori	$t3, $zero, 6
	blt	$a2, $t3, .LBB0_49
# %bb.37:                               # %.lr.ph549.preheader
	ld.w	$t5, $a1, 16
	slli.d	$t3, $t7, 2
	sub.d	$t3, $zero, $t3
	addi.d	$a1, $a1, 20
	addi.d	$a0, $a0, 20
	addi.d	$a2, $a2, -5
	ori	$t4, $zero, 1
	b	.LBB0_40
	.p2align	4, , 16
.LBB0_38:                               #   in Loop: Header=BB0_40 Depth=1
	addi.w	$s0, $zero, -1
	bge	$s0, $s2, .LBB0_45
.LBB0_39:                               #   in Loop: Header=BB0_40 Depth=1
	addi.d	$a1, $a1, 4
	addi.d	$a2, $a2, -1
	addi.d	$a0, $a0, 4
	beqz	$a2, .LBB0_49
.LBB0_40:                               # %.lr.ph549
                                        # =>This Inner Loop Header: Depth=1
	ldx.w	$s0, $a1, $t3
	ld.w	$t7, $a1, -8
	ld.w	$t8, $a1, -12
	ld.w	$fp, $a1, -16
	sub.w	$t6, $s0, $t5
	sub.w	$t7, $s0, $t7
	sub.w	$t8, $s0, $t8
	sub.w	$fp, $s0, $fp
	ext.w.h	$t5, $t2
	ext.w.h	$s1, $t1
	ext.w.h	$s2, $t0
	ext.w.h	$s3, $a4
	mul.d	$t5, $t6, $t5
	mul.d	$s1, $t7, $s1
	mul.d	$s2, $t8, $s2
	mul.d	$s3, $fp, $s3
	add.d	$t5, $s1, $t5
	add.d	$t5, $t5, $s2
	ld.w	$s1, $a0, 0
	add.d	$t5, $t5, $s3
	sub.d	$t5, $a7, $t5
	sra.w	$t5, $t5, $a6
	slt	$s3, $zero, $s1
	srai.d	$s2, $s1, 31
	or	$s3, $s2, $s3
	add.d	$s0, $s1, $s0
	add.d	$t5, $s0, $t5
	sll.w	$t5, $t5, $a5
	sra.w	$t5, $t5, $a5
	st.w	$t5, $a1, 0
	blt	$s3, $t4, .LBB0_38
# %bb.41:                               #   in Loop: Header=BB0_40 Depth=1
	slt	$s0, $zero, $fp
	srai.d	$s2, $fp, 31
	or	$s0, $s2, $s0
	mul.d	$fp, $s0, $fp
	sra.w	$fp, $fp, $a6
	sub.w	$fp, $s1, $fp
	sub.d	$a4, $a4, $s0
	blt	$fp, $t4, .LBB0_39
# %bb.42:                               #   in Loop: Header=BB0_40 Depth=1
	slt	$s0, $zero, $t8
	srai.d	$s1, $t8, 31
	or	$s0, $s1, $s0
	mul.d	$t8, $s0, $t8
	sra.w	$t8, $t8, $a6
	slli.d	$t8, $t8, 1
	sub.w	$t8, $fp, $t8
	sub.d	$t0, $t0, $s0
	blt	$t8, $t4, .LBB0_39
# %bb.43:                               #   in Loop: Header=BB0_40 Depth=1
	slt	$fp, $zero, $t7
	srai.d	$s0, $t7, 31
	or	$fp, $s0, $fp
	mul.d	$t7, $fp, $t7
	sra.w	$t7, $t7, $a6
	alsl.d	$t7, $t7, $t7, 1
	sub.w	$t7, $t8, $t7
	sub.d	$t1, $t1, $fp
	blt	$t7, $t4, .LBB0_39
# %bb.44:                               #   in Loop: Header=BB0_40 Depth=1
	slt	$t7, $zero, $t6
	srai.d	$t6, $t6, 31
	or	$t6, $t6, $t7
	sub.d	$t2, $t2, $t6
	b	.LBB0_39
.LBB0_45:                               #   in Loop: Header=BB0_40 Depth=1
	slt	$s2, $zero, $fp
	srai.d	$s3, $fp, 31
	or	$s2, $s3, $s2
	mul.d	$fp, $fp, $s2
	sub.d	$fp, $zero, $fp
	sra.w	$fp, $fp, $a6
	sub.w	$fp, $s1, $fp
	add.d	$a4, $a4, $s2
	blt	$s0, $fp, .LBB0_39
# %bb.46:                               #   in Loop: Header=BB0_40 Depth=1
	slt	$s1, $zero, $t8
	srai.d	$s2, $t8, 31
	or	$s1, $s2, $s1
	mul.d	$t8, $t8, $s1
	sub.d	$t8, $zero, $t8
	sra.w	$t8, $t8, $a6
	slli.d	$t8, $t8, 1
	sub.w	$t8, $fp, $t8
	add.d	$t0, $t0, $s1
	blt	$s0, $t8, .LBB0_39
# %bb.47:                               #   in Loop: Header=BB0_40 Depth=1
	slt	$fp, $zero, $t7
	srai.d	$s1, $t7, 31
	or	$fp, $s1, $fp
	mul.d	$t7, $t7, $fp
	sub.d	$t7, $zero, $t7
	sra.w	$t7, $t7, $a6
	alsl.d	$t7, $t7, $t7, 1
	sub.w	$t7, $t8, $t7
	add.d	$t1, $t1, $fp
	blt	$s0, $t7, .LBB0_39
# %bb.48:                               #   in Loop: Header=BB0_40 Depth=1
	slt	$t7, $zero, $t6
	srai.d	$t6, $t6, 31
	or	$t6, $t6, $t7
	add.d	$t2, $t2, $t6
	b	.LBB0_39
.LBB0_49:                               # %._crit_edge550
	st.h	$t2, $a3, 0
	st.h	$t1, $a3, 2
	st.h	$t0, $a3, 4
	st.h	$a4, $a3, 6
	b	.LBB0_70
.LBB0_50:                               # %.preheader514
	bge	$t7, $a2, .LBB0_70
# %bb.51:                               # %.lr.ph562
	bstrpick.d	$t0, $a4, 31, 0
	bstrpick.d	$t1, $a4, 30, 3
	slli.d	$t1, $t1, 3
	addi.d	$t2, $a3, 8
	slli.d	$t6, $t7, 2
	alsl.d	$t4, $t7, $a1, 2
	addi.d	$t3, $t4, -16
	addi.d	$t4, $t4, -4
	alsl.d	$t5, $a4, $a3, 1
	addi.d	$t5, $t5, -2
	slli.d	$t8, $a4, 2
	sub.d	$t6, $t6, $t8
	add.d	$t6, $a1, $t6
	ori	$t8, $zero, 1
	vrepli.b	$vr0, 0
	move	$s0, $t7
	b	.LBB0_54
	.p2align	4, , 16
.LBB0_52:                               #   in Loop: Header=BB0_54 Depth=1
	addi.w	$s3, $zero, -1
	bge	$s3, $s4, .LBB0_67
.LBB0_53:                               # %.loopexit
                                        #   in Loop: Header=BB0_54 Depth=1
	addi.d	$s0, $s0, 1
	addi.w	$fp, $s0, 0
	addi.d	$t3, $t3, 4
	addi.d	$t4, $t4, 4
	addi.d	$t6, $t6, 4
	beq	$a2, $fp, .LBB0_70
.LBB0_54:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_59 Depth 2
                                        #     Child Loop BB0_62 Depth 2
                                        #     Child Loop BB0_68 Depth 2
                                        #     Child Loop BB0_65 Depth 2
	sub.d	$s1, $s0, $t7
	slli.d	$s1, $s1, 2
	ldx.w	$s1, $a1, $s1
	blt	$a4, $t8, .LBB0_57
# %bb.55:                               # %.lr.ph558.preheader
                                        #   in Loop: Header=BB0_54 Depth=1
	ori	$fp, $zero, 8
	bgeu	$a4, $fp, .LBB0_58
# %bb.56:                               #   in Loop: Header=BB0_54 Depth=1
	move	$s5, $zero
	move	$s3, $zero
	b	.LBB0_61
	.p2align	4, , 16
.LBB0_57:                               #   in Loop: Header=BB0_54 Depth=1
	move	$s3, $zero
	b	.LBB0_63
	.p2align	4, , 16
.LBB0_58:                               # %vector.ph
                                        #   in Loop: Header=BB0_54 Depth=1
	vreplgr2vr.w	$vr1, $s1
	move	$s2, $t3
	move	$s3, $t2
	move	$s4, $t1
	vori.b	$vr2, $vr0, 0
	vori.b	$vr3, $vr0, 0
	.p2align	4, , 16
.LBB0_59:                               # %vector.body
                                        #   Parent Loop BB0_54 Depth=1
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
	bnez	$s4, .LBB0_59
# %bb.60:                               # %middle.block
                                        #   in Loop: Header=BB0_54 Depth=1
	vadd.w	$vr1, $vr3, $vr2
	vshuf4i.w	$vr2, $vr1, 14
	vadd.w	$vr1, $vr1, $vr2
	vreplvei.w	$vr2, $vr1, 1
	vadd.w	$vr1, $vr1, $vr2
	vpickve2gr.w	$s3, $vr1, 0
	move	$s5, $t1
	beq	$t1, $t0, .LBB0_63
.LBB0_61:                               # %.lr.ph558.preheader629
                                        #   in Loop: Header=BB0_54 Depth=1
	slli.d	$s2, $s5, 2
	sub.d	$s2, $t4, $s2
	alsl.d	$s4, $s5, $a3, 1
	sub.d	$s5, $t0, $s5
	.p2align	4, , 16
.LBB0_62:                               # %.lr.ph558
                                        #   Parent Loop BB0_54 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$s6, $s2, 0
	ld.h	$s7, $s4, 0
	sub.d	$s6, $s6, $s1
	mul.d	$s6, $s6, $s7
	add.d	$s3, $s6, $s3
	addi.d	$s2, $s2, -4
	addi.d	$s5, $s5, -1
	addi.d	$s4, $s4, 2
	bnez	$s5, .LBB0_62
.LBB0_63:                               # %._crit_edge559
                                        #   in Loop: Header=BB0_54 Depth=1
	slli.d	$s2, $s0, 2
	ldx.w	$s2, $a0, $s2
	alsl.d	$s5, $s0, $a1, 2
	slt	$s6, $zero, $s2
	srai.d	$s4, $s2, 31
	or	$s6, $s4, $s6
	add.d	$s3, $s3, $a7
	sra.w	$s3, $s3, $a6
	add.d	$s3, $s3, $s1
	add.d	$s3, $s3, $s2
	sll.w	$s3, $s3, $a5
	sra.w	$s3, $s3, $a5
	st.w	$s3, $s5, 0
	blt	$s6, $t8, .LBB0_52
# %bb.64:                               # %.preheader.preheader
                                        #   in Loop: Header=BB0_54 Depth=1
	move	$s3, $zero
	addi.d	$s4, $zero, -1
	move	$s5, $t5
	move	$s6, $a4
	.p2align	4, , 16
.LBB0_65:                               # %.preheader
                                        #   Parent Loop BB0_54 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	blt	$s6, $t8, .LBB0_53
# %bb.66:                               #   in Loop: Header=BB0_65 Depth=2
	ldx.w	$s7, $t6, $s3
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
	addi.d	$s4, $s4, -1
	addi.d	$s5, $s5, -2
	addi.d	$s3, $s3, 4
	bge	$s2, $t8, .LBB0_65
	b	.LBB0_53
.LBB0_67:                               # %.preheader512.preheader
                                        #   in Loop: Header=BB0_54 Depth=1
	move	$s4, $t6
	move	$s5, $t5
	move	$s6, $a4
	.p2align	4, , 16
.LBB0_68:                               # %.preheader512
                                        #   Parent Loop BB0_54 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	blt	$s6, $t8, .LBB0_53
# %bb.69:                               #   in Loop: Header=BB0_68 Depth=2
	ld.w	$fp, $s4, 0
	sub.w	$fp, $s1, $fp
	slt	$s7, $zero, $fp
	ld.h	$s8, $s5, 0
	srai.d	$ra, $fp, 31
	or	$s7, $ra, $s7
	addi.d	$s6, $s6, -1
	add.d	$s8, $s8, $s7
	st.h	$s8, $s5, 0
	mul.d	$fp, $fp, $s7
	sub.d	$fp, $zero, $fp
	sra.w	$fp, $fp, $a6
	mul.d	$fp, $fp, $s3
	add.w	$s2, $fp, $s2
	addi.d	$s3, $s3, -1
	addi.d	$s5, $s5, -2
	addi.d	$s4, $s4, 4
	bltz	$s2, .LBB0_68
	b	.LBB0_53
.LBB0_70:                               # %.loopexit515
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
.Lfunc_end0:
	.size	unpc_block, .Lfunc_end0-unpc_block
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
