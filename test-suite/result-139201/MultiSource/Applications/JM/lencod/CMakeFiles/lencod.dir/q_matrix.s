	.file	"q_matrix.c"
	.text
	.globl	CheckParameterName              # -- Begin function CheckParameterName
	.p2align	5
	.type	CheckParameterName,@function
CheckParameterName:                     # @CheckParameterName
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	move	$s0, $a1
	move	$fp, $a0
	st.w	$zero, $a1, 0
	pcalau12i	$a0, %pc_hi20(MatrixType4x4)
	addi.d	$s1, $a0, %pc_lo12(MatrixType4x4)
	move	$a0, $s1
	move	$a1, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_8
# %bb.1:
	addi.d	$a0, $s1, 20
	move	$a1, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_9
# %bb.2:
	addi.d	$a0, $s1, 40
	move	$a1, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_10
# %bb.3:
	addi.d	$a0, $s1, 60
	move	$a1, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_11
# %bb.4:
	addi.d	$a0, $s1, 80
	move	$a1, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_12
# %bb.5:
	addi.d	$a0, $s1, 100
	move	$a1, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_13
# %bb.6:
	ori	$a0, $zero, 1
	st.w	$a0, $s0, 0
	pcalau12i	$a0, %pc_hi20(MatrixType8x8)
	addi.d	$s0, $a0, %pc_lo12(MatrixType8x8)
	move	$a0, $s0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_8
# %bb.7:
	addi.d	$a0, $s0, 20
	move	$a1, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	sltu	$a0, $zero, $a0
	sub.d	$a0, $zero, $a0
	ori	$a0, $a0, 1
	b	.LBB0_14
.LBB0_8:
	move	$a0, $zero
	b	.LBB0_14
.LBB0_9:
	ori	$a0, $zero, 1
	b	.LBB0_14
.LBB0_10:
	ori	$a0, $zero, 2
	b	.LBB0_14
.LBB0_11:
	ori	$a0, $zero, 3
	b	.LBB0_14
.LBB0_12:
	ori	$a0, $zero, 4
	b	.LBB0_14
.LBB0_13:
	ori	$a0, $zero, 5
.LBB0_14:                               # %.loopexit
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end0:
	.size	CheckParameterName, .Lfunc_end0-CheckParameterName
                                        # -- End function
	.globl	ParseMatrix                     # -- Begin function ParseMatrix
	.p2align	5
	.type	ParseMatrix,@function
ParseMatrix:                            # @ParseMatrix
# %bb.0:
	ori	$a2, $zero, 1
	blt	$a1, $a2, .LBB1_39
# %bb.1:                                # %.lr.ph.preheader
	addi.d	$sp, $sp, -2032
	st.d	$ra, $sp, 2024                  # 8-byte Folded Spill
	st.d	$fp, $sp, 2016                  # 8-byte Folded Spill
	st.d	$s0, $sp, 2008                  # 8-byte Folded Spill
	st.d	$s1, $sp, 2000                  # 8-byte Folded Spill
	st.d	$s2, $sp, 1992                  # 8-byte Folded Spill
	st.d	$s3, $sp, 1984                  # 8-byte Folded Spill
	st.d	$s4, $sp, 1976                  # 8-byte Folded Spill
	st.d	$s5, $sp, 1968                  # 8-byte Folded Spill
	st.d	$s6, $sp, 1960                  # 8-byte Folded Spill
	st.d	$s7, $sp, 1952                  # 8-byte Folded Spill
	st.d	$s8, $sp, 1944                  # 8-byte Folded Spill
	lu12i.w	$a2, 1
	ori	$a2, $a2, 2048
	sub.d	$sp, $sp, $a2
	move	$a2, $zero
	move	$t0, $zero
	move	$a7, $zero
	add.d	$a1, $a0, $a1
	ori	$a3, $zero, 35
	addi.d	$a4, $sp, 88
	pcalau12i	$a5, %pc_hi20(.LJTI1_0)
	addi.d	$a5, $a5, %pc_lo12(.LJTI1_0)
	ori	$a6, $zero, 10
	b	.LBB1_4
.LBB1_2:                                #   in Loop: Header=BB1_4 Depth=1
	move	$a7, $zero
	move	$t0, $zero
	addi.d	$t1, $a0, 1
	st.b	$zero, $a0, 0
	.p2align	4, , 16
.LBB1_3:                                # %.loopexit
                                        #   in Loop: Header=BB1_4 Depth=1
	move	$a0, $t1
	bgeu	$t1, $a1, .LBB1_22
.LBB1_4:                                # %.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_12 Depth 2
	ld.bu	$t1, $a0, 0
	addi.d	$t1, $t1, -9
	bltu	$a3, $t1, .LBB1_8
# %bb.5:                                # %.lr.ph
                                        #   in Loop: Header=BB1_4 Depth=1
	slli.d	$t1, $t1, 2
	ldx.w	$t1, $a5, $t1
	add.d	$t1, $a5, $t1
	jr	$t1
.LBB1_6:                                #   in Loop: Header=BB1_4 Depth=1
	addi.w	$a7, $a7, 0
	addi.d	$t1, $a0, 1
	beqz	$a7, .LBB1_19
# %bb.7:                                #   in Loop: Header=BB1_4 Depth=1
	addi.d	$a7, $zero, -1
	b	.LBB1_3
.LBB1_8:                                #   in Loop: Header=BB1_4 Depth=1
	addi.w	$t0, $t0, 0
	bnez	$t0, .LBB1_10
# %bb.9:                                #   in Loop: Header=BB1_4 Depth=1
	slli.d	$t0, $a2, 3
	addi.w	$a2, $a2, 1
	stx.d	$a0, $t0, $a4
.LBB1_10:                               #   in Loop: Header=BB1_4 Depth=1
	addi.d	$t1, $a0, 1
	addi.d	$t0, $zero, -1
	b	.LBB1_3
.LBB1_11:                               #   in Loop: Header=BB1_4 Depth=1
	st.b	$zero, $a0, 0
	.p2align	4, , 16
.LBB1_12:                               #   Parent Loop BB1_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$t1, $a0, 1
	bgeu	$a0, $a1, .LBB1_14
# %bb.13:                               #   in Loop: Header=BB1_12 Depth=2
	ld.bu	$a7, $a0, 0
	move	$a0, $t1
	bne	$a7, $a6, .LBB1_12
.LBB1_14:                               # %.loopexit.loopexit
                                        #   in Loop: Header=BB1_4 Depth=1
	move	$a7, $zero
	move	$t0, $zero
	addi.d	$t1, $t1, -1
	b	.LBB1_3
.LBB1_15:                               #   in Loop: Header=BB1_4 Depth=1
	move	$t0, $zero
.LBB1_16:                               # %.loopexit
                                        #   in Loop: Header=BB1_4 Depth=1
	addi.d	$t1, $a0, 1
	b	.LBB1_3
.LBB1_17:                               #   in Loop: Header=BB1_4 Depth=1
	addi.d	$t1, $a0, 1
	addi.w	$t3, $a7, 0
	st.b	$zero, $a0, 0
	beqz	$t3, .LBB1_20
# %bb.18:                               #   in Loop: Header=BB1_4 Depth=1
	move	$t2, $zero
	b	.LBB1_21
.LBB1_19:                               #   in Loop: Header=BB1_4 Depth=1
	move	$a7, $zero
	move	$t0, $zero
	st.b	$zero, $a0, 0
	b	.LBB1_3
.LBB1_20:                               #   in Loop: Header=BB1_4 Depth=1
	slli.d	$a0, $a2, 3
	addi.w	$a2, $a2, 1
	stx.d	$t1, $a0, $a4
	nor	$t2, $t0, $zero
.LBB1_21:                               #   in Loop: Header=BB1_4 Depth=1
	nor	$a7, $a7, $zero
	move	$t0, $t2
	b	.LBB1_3
.LBB1_22:                               # %._crit_edge
	ori	$a0, $zero, 2
	blt	$a2, $a0, .LBB1_38
# %bb.23:                               # %.lr.ph84.preheader
	move	$s0, $zero
	addi.w	$a0, $a2, -1
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	addi.d	$s6, $sp, 88
	addi.w	$a0, $zero, -1
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(errortext)
	addi.d	$fp, $a0, %pc_lo12(errortext)
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	ori	$s7, $zero, 61
	pcalau12i	$a0, %pc_hi20(ScalingList4x4input)
	addi.d	$a0, $a0, %pc_lo12(ScalingList4x4input)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(matrix4x4_check)
	addi.d	$a0, $a0, %pc_lo12(matrix4x4_check)
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	ori	$s3, $zero, 1
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$s1, $a0, %pc_lo12(.L.str.3)
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$s2, $a0, %pc_lo12(.L.str.4)
	pcalau12i	$a0, %pc_hi20(ScalingList8x8input)
	addi.d	$a0, $a0, %pc_lo12(ScalingList8x8input)
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(matrix8x8_check)
	addi.d	$a0, $a0, %pc_lo12(matrix8x8_check)
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	b	.LBB1_25
	.p2align	4, , 16
.LBB1_24:                               #   in Loop: Header=BB1_25 Depth=1
	ori	$a0, $zero, 46
	pcaddu18i	$ra, %call36(putchar)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	add.d	$s0, $s0, $a0
	addi.w	$a0, $s0, 0
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	addi.d	$s6, $sp, 88
	ori	$s7, $zero, 61
	bge	$a0, $a1, .LBB1_38
.LBB1_25:                               # %.lr.ph84
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_36 Depth 2
	slli.d	$a0, $s0, 3
	ldx.d	$s4, $a0, $s6
	addi.d	$a1, $sp, 80
	move	$a0, $s4
	pcaddu18i	$ra, %call36(CheckParameterName)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	bge	$a0, $s5, .LBB1_28
# %bb.26:                               # %sub_0
                                        #   in Loop: Header=BB1_25 Depth=1
	alsl.d	$a0, $s0, $s6, 3
	ld.d	$a0, $a0, 8
	ld.bu	$a1, $a0, 0
	bne	$a1, $s7, .LBB1_29
.LBB1_27:                               # %sub_1
                                        #   in Loop: Header=BB1_25 Depth=1
	ld.bu	$a0, $a0, 1
	sub.d	$a0, $zero, $a0
	bnez	$a0, .LBB1_30
	b	.LBB1_31
	.p2align	4, , 16
.LBB1_28:                               #   in Loop: Header=BB1_25 Depth=1
	ori	$a1, $zero, 300
	move	$a0, $fp
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	move	$a3, $s4
	pcaddu18i	$ra, %call36(snprintf)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 300
	move	$a0, $fp
	pcaddu18i	$ra, %call36(error)
	jirl	$ra, $ra, 0
	alsl.d	$a0, $s0, $s6, 3
	ld.d	$a0, $a0, 8
	ld.bu	$a1, $a0, 0
	beq	$a1, $s7, .LBB1_27
.LBB1_29:                               #   in Loop: Header=BB1_25 Depth=1
	sub.d	$a0, $s7, $a1
	beqz	$a0, .LBB1_31
.LBB1_30:                               #   in Loop: Header=BB1_25 Depth=1
	ori	$a2, $zero, 78
	move	$a0, $fp
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 300
	move	$a0, $fp
	pcaddu18i	$ra, %call36(error)
	jirl	$ra, $ra, 0
.LBB1_31:                               #   in Loop: Header=BB1_25 Depth=1
	ld.w	$a1, $sp, 80
	slli.d	$a0, $s5, 2
	beqz	$a1, .LBB1_33
# %bb.32:                               #   in Loop: Header=BB1_25 Depth=1
	slli.d	$a1, $s5, 7
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	add.d	$s8, $a2, $a1
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	stx.w	$s3, $a1, $a0
	ori	$a0, $zero, 64
	b	.LBB1_34
	.p2align	4, , 16
.LBB1_33:                               #   in Loop: Header=BB1_25 Depth=1
	slli.d	$a1, $s5, 5
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	add.d	$s8, $a2, $a1
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	stx.w	$s3, $a1, $a0
	ori	$a0, $zero, 16
.LBB1_34:                               #   in Loop: Header=BB1_25 Depth=1
	addi.d	$s0, $s0, 2
	alsl.d	$s7, $s0, $s6, 3
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	move	$s6, $a0
	b	.LBB1_36
	.p2align	4, , 16
.LBB1_35:                               #   in Loop: Header=BB1_36 Depth=2
	ld.h	$a0, $sp, 84
	st.h	$a0, $s8, 0
	addi.d	$s7, $s7, 8
	addi.d	$s6, $s6, -1
	addi.d	$s8, $s8, 2
	beqz	$s6, .LBB1_24
.LBB1_36:                               #   Parent Loop BB1_25 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s5, $s7, 0
	addi.d	$a2, $sp, 84
	move	$a0, $s5
	move	$a1, $s1
	pcaddu18i	$ra, %call36(__isoc99_sscanf)
	jirl	$ra, $ra, 0
	beq	$a0, $s3, .LBB1_35
# %bb.37:                               #   in Loop: Header=BB1_36 Depth=2
	ori	$a1, $zero, 300
	move	$a0, $fp
	move	$a2, $s2
	move	$a3, $s4
	move	$a4, $s5
	pcaddu18i	$ra, %call36(snprintf)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 300
	move	$a0, $fp
	pcaddu18i	$ra, %call36(error)
	jirl	$ra, $ra, 0
	b	.LBB1_35
.LBB1_38:
	lu12i.w	$a0, 1
	ori	$a0, $a0, 2048
	add.d	$sp, $sp, $a0
	ld.d	$s8, $sp, 1944                  # 8-byte Folded Reload
	ld.d	$s7, $sp, 1952                  # 8-byte Folded Reload
	ld.d	$s6, $sp, 1960                  # 8-byte Folded Reload
	ld.d	$s5, $sp, 1968                  # 8-byte Folded Reload
	ld.d	$s4, $sp, 1976                  # 8-byte Folded Reload
	ld.d	$s3, $sp, 1984                  # 8-byte Folded Reload
	ld.d	$s2, $sp, 1992                  # 8-byte Folded Reload
	ld.d	$s1, $sp, 2000                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 2008                  # 8-byte Folded Reload
	ld.d	$fp, $sp, 2016                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 2024                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 2032
.LBB1_39:                               # %._crit_edge85
	ret
.Lfunc_end1:
	.size	ParseMatrix, .Lfunc_end1-ParseMatrix
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI1_0:
	.word	.LBB1_6-.LJTI1_0
	.word	.LBB1_2-.LJTI1_0
	.word	.LBB1_8-.LJTI1_0
	.word	.LBB1_8-.LJTI1_0
	.word	.LBB1_16-.LJTI1_0
	.word	.LBB1_8-.LJTI1_0
	.word	.LBB1_8-.LJTI1_0
	.word	.LBB1_8-.LJTI1_0
	.word	.LBB1_8-.LJTI1_0
	.word	.LBB1_8-.LJTI1_0
	.word	.LBB1_8-.LJTI1_0
	.word	.LBB1_8-.LJTI1_0
	.word	.LBB1_8-.LJTI1_0
	.word	.LBB1_8-.LJTI1_0
	.word	.LBB1_8-.LJTI1_0
	.word	.LBB1_8-.LJTI1_0
	.word	.LBB1_8-.LJTI1_0
	.word	.LBB1_8-.LJTI1_0
	.word	.LBB1_8-.LJTI1_0
	.word	.LBB1_8-.LJTI1_0
	.word	.LBB1_8-.LJTI1_0
	.word	.LBB1_8-.LJTI1_0
	.word	.LBB1_8-.LJTI1_0
	.word	.LBB1_6-.LJTI1_0
	.word	.LBB1_8-.LJTI1_0
	.word	.LBB1_17-.LJTI1_0
	.word	.LBB1_11-.LJTI1_0
	.word	.LBB1_8-.LJTI1_0
	.word	.LBB1_8-.LJTI1_0
	.word	.LBB1_8-.LJTI1_0
	.word	.LBB1_8-.LJTI1_0
	.word	.LBB1_8-.LJTI1_0
	.word	.LBB1_8-.LJTI1_0
	.word	.LBB1_8-.LJTI1_0
	.word	.LBB1_8-.LJTI1_0
	.word	.LBB1_15-.LJTI1_0
                                        # -- End function
	.text
	.globl	PatchMatrix                     # -- Begin function PatchMatrix
	.p2align	5
	.type	PatchMatrix,@function
PatchMatrix:                            # @PatchMatrix
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
	move	$s4, $zero
	pcalau12i	$a0, %pc_hi20(ScalingList8x8input)
	addi.d	$s2, $a0, %pc_lo12(ScalingList8x8input)
	pcalau12i	$a0, %got_pc_hi20(input)
	ld.d	$s6, $a0, %got_pc_lo12(input)
	pcalau12i	$a0, %pc_hi20(matrix8x8_check)
	addi.d	$a0, $a0, %pc_lo12(matrix8x8_check)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(MatrixType8x8)
	addi.d	$a0, $a0, %pc_lo12(MatrixType8x8)
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a0, $a0, %pc_lo12(.L.str.8)
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Quant8_intra_default)
	addi.d	$a0, $a0, %pc_lo12(Quant8_intra_default)
	st.d	$a0, $sp, 0                     # 8-byte Folded Spill
	ori	$s0, $zero, 128
	ori	$s8, $zero, 256
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a0, $a0, %pc_lo12(.L.str.6)
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a0, $a0, %pc_lo12(.L.str.7)
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	ori	$s5, $zero, 6
	pcalau12i	$a0, %pc_hi20(ScalingList4x4input)
	addi.d	$fp, $a0, %pc_lo12(ScalingList4x4input)
	pcalau12i	$a0, %pc_hi20(matrix4x4_check)
	addi.d	$s7, $a0, %pc_lo12(matrix4x4_check)
	pcalau12i	$a0, %pc_hi20(MatrixType4x4)
	addi.d	$s1, $a0, %pc_lo12(MatrixType4x4)
	pcalau12i	$a0, %pc_hi20(Quant_inter_default)
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Quant_intra_default)
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	b	.LBB2_3
	.p2align	4, , 16
.LBB2_1:                                #   in Loop: Header=BB2_3 Depth=1
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	xvld	$xr0, $a0, %pc_lo12(Quant_inter_default)
	xvst	$xr0, $s3, 0
.LBB2_2:                                # %.critedge50
                                        #   in Loop: Header=BB2_3 Depth=1
	addi.d	$s4, $s4, 1
	addi.d	$s2, $s2, 128
	beq	$s4, $s5, .LBB2_33
.LBB2_3:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_28 Depth 2
	ld.d	$a0, $s6, 0
	alsl.d	$a0, $s4, $a0, 2
	ldptr.w	$a0, $a0, 5212
	beqz	$a0, .LBB2_24
# %bb.4:                                #   in Loop: Header=BB2_3 Depth=1
	slli.d	$a0, $s4, 2
	ldx.w	$a0, $s7, $a0
	slli.d	$a1, $s4, 5
	add.d	$s3, $fp, $a1
	beqz	$a0, .LBB2_22
# %bb.5:                                # %.preheader51.preheader
                                        #   in Loop: Header=BB2_3 Depth=1
	ld.hu	$a0, $s3, 0
	ori	$a1, $zero, 255
	bltu	$a1, $a0, .LBB2_21
# %bb.6:                                # %.preheader51.1
                                        #   in Loop: Header=BB2_3 Depth=1
	ld.hu	$a0, $s3, 2
	ori	$a1, $zero, 255
	bltu	$a1, $a0, .LBB2_21
# %bb.7:                                # %.preheader51.2
                                        #   in Loop: Header=BB2_3 Depth=1
	ld.hu	$a0, $s3, 4
	ori	$a1, $zero, 255
	bltu	$a1, $a0, .LBB2_21
# %bb.8:                                # %.preheader51.3
                                        #   in Loop: Header=BB2_3 Depth=1
	ld.hu	$a0, $s3, 6
	ori	$a1, $zero, 255
	bltu	$a1, $a0, .LBB2_21
# %bb.9:                                # %.preheader51.4
                                        #   in Loop: Header=BB2_3 Depth=1
	ld.hu	$a0, $s3, 8
	ori	$a1, $zero, 255
	bltu	$a1, $a0, .LBB2_21
# %bb.10:                               # %.preheader51.5
                                        #   in Loop: Header=BB2_3 Depth=1
	ld.hu	$a0, $s3, 10
	ori	$a1, $zero, 255
	bltu	$a1, $a0, .LBB2_21
# %bb.11:                               # %.preheader51.6
                                        #   in Loop: Header=BB2_3 Depth=1
	ld.hu	$a0, $s3, 12
	ori	$a1, $zero, 255
	bltu	$a1, $a0, .LBB2_21
# %bb.12:                               # %.preheader51.7
                                        #   in Loop: Header=BB2_3 Depth=1
	ld.hu	$a0, $s3, 14
	ori	$a1, $zero, 255
	bltu	$a1, $a0, .LBB2_21
# %bb.13:                               # %.preheader51.8
                                        #   in Loop: Header=BB2_3 Depth=1
	ld.hu	$a0, $s3, 16
	ori	$a1, $zero, 255
	bltu	$a1, $a0, .LBB2_21
# %bb.14:                               # %.preheader51.9
                                        #   in Loop: Header=BB2_3 Depth=1
	ld.hu	$a0, $s3, 18
	ori	$a1, $zero, 255
	bltu	$a1, $a0, .LBB2_21
# %bb.15:                               # %.preheader51.10
                                        #   in Loop: Header=BB2_3 Depth=1
	ld.hu	$a0, $s3, 20
	ori	$a1, $zero, 255
	bltu	$a1, $a0, .LBB2_21
# %bb.16:                               # %.preheader51.11
                                        #   in Loop: Header=BB2_3 Depth=1
	ld.hu	$a0, $s3, 22
	ori	$a1, $zero, 255
	bltu	$a1, $a0, .LBB2_21
# %bb.17:                               # %.preheader51.12
                                        #   in Loop: Header=BB2_3 Depth=1
	ld.hu	$a0, $s3, 24
	ori	$a1, $zero, 255
	bltu	$a1, $a0, .LBB2_21
# %bb.18:                               # %.preheader51.13
                                        #   in Loop: Header=BB2_3 Depth=1
	ld.hu	$a0, $s3, 26
	ori	$a1, $zero, 255
	bltu	$a1, $a0, .LBB2_21
# %bb.19:                               # %.preheader51.14
                                        #   in Loop: Header=BB2_3 Depth=1
	ld.hu	$a0, $s3, 28
	ori	$a1, $zero, 255
	bltu	$a1, $a0, .LBB2_21
# %bb.20:                               # %.preheader51.15
                                        #   in Loop: Header=BB2_3 Depth=1
	ld.hu	$a0, $s3, 30
	bltu	$a0, $s8, .LBB2_24
	.p2align	4, , 16
.LBB2_21:                               #   in Loop: Header=BB2_3 Depth=1
	slli.d	$a0, $s4, 4
	alsl.d	$a0, $s4, $a0, 2
	add.d	$a1, $s1, $a0
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 3
	bgeu	$s4, $a0, .LBB2_1
	b	.LBB2_23
	.p2align	4, , 16
.LBB2_22:                               #   in Loop: Header=BB2_3 Depth=1
	slli.d	$a0, $s4, 4
	alsl.d	$a0, $s4, $a0, 2
	add.d	$a1, $s1, $a0
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 3
	bgeu	$s4, $a0, .LBB2_1
.LBB2_23:                               # %.critedge.sink.split
                                        #   in Loop: Header=BB2_3 Depth=1
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	xvld	$xr0, $a0, %pc_lo12(Quant_intra_default)
	xvst	$xr0, $s3, 0
.LBB2_24:                               # %.critedge
                                        #   in Loop: Header=BB2_3 Depth=1
	ori	$a0, $zero, 1
	bltu	$a0, $s4, .LBB2_2
# %bb.25:                               #   in Loop: Header=BB2_3 Depth=1
	ld.d	$a0, $s6, 0
	alsl.d	$a0, $s4, $a0, 2
	ldptr.w	$a0, $a0, 5236
	beqz	$a0, .LBB2_2
# %bb.26:                               #   in Loop: Header=BB2_3 Depth=1
	slli.d	$a0, $s4, 2
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	ldx.w	$a0, $a1, $a0
	slli.d	$a1, $s4, 7
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	add.d	$s3, $a2, $a1
	beqz	$a0, .LBB2_30
# %bb.27:                               # %.preheader.preheader
                                        #   in Loop: Header=BB2_3 Depth=1
	move	$a0, $zero
	.p2align	4, , 16
.LBB2_28:                               # %.preheader
                                        #   Parent Loop BB2_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.hu	$a1, $s2, $a0
	bgeu	$a1, $s8, .LBB2_31
# %bb.29:                               #   in Loop: Header=BB2_28 Depth=2
	addi.d	$a0, $a0, 2
	bne	$a0, $s0, .LBB2_28
	b	.LBB2_2
.LBB2_30:                               #   in Loop: Header=BB2_3 Depth=1
	slli.d	$a0, $s4, 4
	alsl.d	$a0, $s4, $a0, 2
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	add.d	$a1, $a1, $a0
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	b	.LBB2_32
.LBB2_31:                               #   in Loop: Header=BB2_3 Depth=1
	slli.d	$a0, $s4, 4
	alsl.d	$a0, $s4, $a0, 2
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	add.d	$a1, $a1, $a0
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB2_32:                               # %.critedge50
                                        #   in Loop: Header=BB2_3 Depth=1
	ori	$a2, $zero, 128
	move	$a0, $s3
	ld.d	$a1, $sp, 0                     # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	b	.LBB2_2
.LBB2_33:
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
.Lfunc_end2:
	.size	PatchMatrix, .Lfunc_end2-PatchMatrix
                                        # -- End function
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0                          # -- Begin function allocate_QMatrix
.LCPI3_0:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	4                               # 0x4
	.word	5                               # 0x5
	.word	6                               # 0x6
	.word	7                               # 0x7
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI3_1:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.text
	.globl	allocate_QMatrix
	.p2align	5
	.type	allocate_QMatrix,@function
allocate_QMatrix:                       # @allocate_QMatrix
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(input)
	ld.d	$a0, $a0, %got_pc_lo12(input)
	ld.d	$a0, $a0, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1160
	ldx.w	$s1, $a0, $a1
	slli.d	$s2, $s1, 2
	alsl.d	$a0, $s1, $s2, 1
	addi.w	$s0, $a0, 4
	slli.d	$fp, $s0, 2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	pcalau12i	$s3, %pc_hi20(qp_per_matrix)
	st.d	$a0, $s3, %pc_lo12(qp_per_matrix)
	bnez	$a0, .LBB3_2
# %bb.1:
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$a0, $a0, %pc_lo12(.L.str.9)
	pcaddu18i	$ra, %call36(no_mem_exit)
	jirl	$ra, $ra, 0
.LBB3_2:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	pcalau12i	$fp, %pc_hi20(qp_rem_matrix)
	st.d	$a0, $fp, %pc_lo12(qp_rem_matrix)
	bnez	$a0, .LBB3_4
# %bb.3:
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$a0, $a0, %pc_lo12(.L.str.9)
	pcaddu18i	$ra, %call36(no_mem_exit)
	jirl	$ra, $ra, 0
.LBB3_4:
	ori	$a0, $zero, 1
	blt	$s0, $a0, .LBB3_18
# %bb.5:                                # %iter.check
	move	$a0, $zero
	ld.d	$a1, $s3, %pc_lo12(qp_per_matrix)
	ld.d	$a2, $fp, %pc_lo12(qp_rem_matrix)
	alsl.w	$a4, $s1, $s2, 1
	addi.w	$a5, $zero, -5
	lu12i.w	$a3, -349526
	bltu	$a5, $a4, .LBB3_16
# %bb.6:                                # %iter.check
	sub.d	$a4, $a2, $a1
	ori	$a5, $zero, 64
	bltu	$a4, $a5, .LBB3_16
# %bb.7:                                # %vector.main.loop.iter.check
	ori	$a0, $zero, 16
	bgeu	$s0, $a0, .LBB3_9
# %bb.8:
	move	$a0, $zero
	b	.LBB3_13
.LBB3_9:                                # %vector.ph
	bstrpick.d	$a0, $s0, 30, 4
	slli.d	$a0, $a0, 4
	addi.d	$a4, $a2, 32
	pcalau12i	$a5, %pc_hi20(.LCPI3_0)
	xvld	$xr2, $a5, %pc_lo12(.LCPI3_0)
	addi.d	$a5, $a1, 32
	ori	$a6, $a3, 2731
	xvreplgr2vr.w	$xr0, $a6
	xvrepli.w	$xr1, 6
	move	$a6, $a0
	.p2align	4, , 16
.LBB3_10:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	xvaddi.wu	$xr3, $xr2, 8
	xvmuh.wu	$xr4, $xr2, $xr0
	xvsrli.w	$xr4, $xr4, 2
	xvmuh.wu	$xr5, $xr3, $xr0
	xvsrli.w	$xr5, $xr5, 2
	xvst	$xr4, $a5, -32
	xvst	$xr5, $a5, 0
	xvaddi.wu	$xr6, $xr2, 16
	xvmsub.w	$xr2, $xr4, $xr1
	xvmsub.w	$xr3, $xr5, $xr1
	xvst	$xr2, $a4, -32
	xvst	$xr3, $a4, 0
	addi.d	$a6, $a6, -16
	addi.d	$a4, $a4, 64
	addi.d	$a5, $a5, 64
	xvori.b	$xr2, $xr6, 0
	bnez	$a6, .LBB3_10
# %bb.11:                               # %middle.block
	beq	$a0, $s0, .LBB3_18
# %bb.12:                               # %vec.epilog.iter.check
	andi	$a4, $s0, 12
	beqz	$a4, .LBB3_16
.LBB3_13:                               # %vec.epilog.ph
	move	$a6, $a0
	pcalau12i	$a0, %pc_hi20(.LCPI3_1)
	vld	$vr0, $a0, %pc_lo12(.LCPI3_1)
	bstrpick.d	$a0, $s0, 30, 2
	slli.d	$a0, $a0, 2
	vreplgr2vr.w	$vr1, $a6
	vor.v	$vr2, $vr1, $vr0
	sub.d	$a4, $a6, $a0
	alsl.d	$a5, $a6, $a2, 2
	alsl.d	$a6, $a6, $a1, 2
	ori	$a7, $a3, 2731
	vreplgr2vr.w	$vr0, $a7
	vrepli.w	$vr1, 6
	.p2align	4, , 16
.LBB3_14:                               # %vec.epilog.vector.body
                                        # =>This Inner Loop Header: Depth=1
	vmuh.wu	$vr3, $vr2, $vr0
	vsrli.w	$vr3, $vr3, 2
	vst	$vr3, $a6, 0
	vaddi.wu	$vr4, $vr2, 4
	vmsub.w	$vr2, $vr3, $vr1
	vst	$vr2, $a5, 0
	addi.d	$a4, $a4, 4
	addi.d	$a5, $a5, 16
	addi.d	$a6, $a6, 16
	vori.b	$vr2, $vr4, 0
	bnez	$a4, .LBB3_14
# %bb.15:                               # %vec.epilog.middle.block
	beq	$a0, $s0, .LBB3_18
.LBB3_16:                               # %vec.epilog.scalar.ph.preheader
	alsl.d	$a2, $a0, $a2, 2
	alsl.d	$a1, $a0, $a1, 2
	sub.d	$a4, $s0, $a0
	ori	$a3, $a3, 2731
	lu32i.d	$a3, 0
	.p2align	4, , 16
.LBB3_17:                               # %vec.epilog.scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a5, $a0, 31, 0
	mul.d	$a5, $a5, $a3
	srli.d	$a5, $a5, 34
	st.w	$a5, $a1, 0
	slli.d	$a6, $a5, 2
	alsl.d	$a5, $a5, $a6, 1
	sub.d	$a5, $a0, $a5
	st.w	$a5, $a2, 0
	addi.w	$a0, $a0, 1
	addi.d	$a2, $a2, 4
	addi.d	$a4, $a4, -1
	addi.d	$a1, $a1, 4
	bnez	$a4, .LBB3_17
.LBB3_18:                               # %._crit_edge
	pcalau12i	$a0, %pc_hi20(LevelScale4x4Luma)
	addi.d	$a0, $a0, %pc_lo12(LevelScale4x4Luma)
	ori	$a1, $zero, 2
	ori	$a2, $zero, 6
	ori	$a3, $zero, 4
	ori	$a4, $zero, 4
	pcaddu18i	$ra, %call36(get_mem4Dint)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(LevelScale4x4Chroma)
	addi.d	$a0, $a0, %pc_lo12(LevelScale4x4Chroma)
	ori	$a1, $zero, 2
	ori	$a2, $zero, 2
	ori	$a3, $zero, 6
	ori	$a4, $zero, 4
	ori	$a5, $zero, 4
	pcaddu18i	$ra, %call36(get_mem5Dint)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(LevelScale8x8Luma)
	addi.d	$a0, $a0, %pc_lo12(LevelScale8x8Luma)
	ori	$a1, $zero, 2
	ori	$a2, $zero, 6
	ori	$a3, $zero, 8
	ori	$a4, $zero, 8
	pcaddu18i	$ra, %call36(get_mem4Dint)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(InvLevelScale4x4Luma)
	addi.d	$a0, $a0, %pc_lo12(InvLevelScale4x4Luma)
	ori	$a1, $zero, 2
	ori	$a2, $zero, 6
	ori	$a3, $zero, 4
	ori	$a4, $zero, 4
	pcaddu18i	$ra, %call36(get_mem4Dint)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(InvLevelScale4x4Chroma)
	addi.d	$a0, $a0, %pc_lo12(InvLevelScale4x4Chroma)
	ori	$a1, $zero, 2
	ori	$a2, $zero, 2
	ori	$a3, $zero, 6
	ori	$a4, $zero, 4
	ori	$a5, $zero, 4
	pcaddu18i	$ra, %call36(get_mem5Dint)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(InvLevelScale8x8Luma)
	addi.d	$a0, $a0, %pc_lo12(InvLevelScale8x8Luma)
	ori	$a1, $zero, 2
	ori	$a2, $zero, 6
	ori	$a3, $zero, 8
	ori	$a4, $zero, 8
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	pcaddu18i	$t8, %call36(get_mem4Dint)
	jr	$t8
.Lfunc_end3:
	.size	allocate_QMatrix, .Lfunc_end3-allocate_QMatrix
                                        # -- End function
	.globl	free_QMatrix                    # -- Begin function free_QMatrix
	.p2align	5
	.type	free_QMatrix,@function
free_QMatrix:                           # @free_QMatrix
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(qp_rem_matrix)
	ld.d	$a0, $a0, %pc_lo12(qp_rem_matrix)
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(qp_per_matrix)
	ld.d	$a0, $a0, %pc_lo12(qp_per_matrix)
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(LevelScale4x4Luma)
	ld.d	$a0, $a0, %pc_lo12(LevelScale4x4Luma)
	ori	$a1, $zero, 2
	ori	$a2, $zero, 6
	pcaddu18i	$ra, %call36(free_mem4Dint)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(LevelScale4x4Chroma)
	ld.d	$a0, $a0, %pc_lo12(LevelScale4x4Chroma)
	ori	$a1, $zero, 2
	ori	$a2, $zero, 2
	ori	$a3, $zero, 6
	pcaddu18i	$ra, %call36(free_mem5Dint)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(LevelScale8x8Luma)
	ld.d	$a0, $a0, %pc_lo12(LevelScale8x8Luma)
	ori	$a1, $zero, 2
	ori	$a2, $zero, 6
	pcaddu18i	$ra, %call36(free_mem4Dint)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(InvLevelScale4x4Luma)
	ld.d	$a0, $a0, %pc_lo12(InvLevelScale4x4Luma)
	ori	$a1, $zero, 2
	ori	$a2, $zero, 6
	pcaddu18i	$ra, %call36(free_mem4Dint)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(InvLevelScale4x4Chroma)
	ld.d	$a0, $a0, %pc_lo12(InvLevelScale4x4Chroma)
	ori	$a1, $zero, 2
	ori	$a2, $zero, 2
	ori	$a3, $zero, 6
	pcaddu18i	$ra, %call36(free_mem5Dint)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(InvLevelScale8x8Luma)
	ld.d	$a0, $a0, %pc_lo12(InvLevelScale8x8Luma)
	ori	$a1, $zero, 2
	ori	$a2, $zero, 6
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(free_mem4Dint)
	jr	$t8
.Lfunc_end4:
	.size	free_QMatrix, .Lfunc_end4-free_QMatrix
                                        # -- End function
	.globl	Init_QMatrix                    # -- Begin function Init_QMatrix
	.p2align	5
	.type	Init_QMatrix,@function
Init_QMatrix:                           # @Init_QMatrix
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(allocate_QMatrix)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(input)
	ld.d	$fp, $a0, %got_pc_lo12(input)
	ld.d	$a0, $fp, 0
	ldptr.w	$a1, $a0, 5208
	beqz	$a1, .LBB5_3
# %bb.1:
	addi.d	$a1, $a0, 1304
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a0, $a0, %pc_lo12(.L.str.10)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	addi.d	$a0, $a0, 1304
	move	$a1, $zero
	pcaddu18i	$ra, %call36(GetConfigFileContent)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	beqz	$a0, .LBB5_4
# %bb.2:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.w	$a1, $a0, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(ParseMatrix)
	jirl	$ra, $ra, 0
	b	.LBB5_5
.LBB5_3:
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB5_4:
	pcalau12i	$a0, %pc_hi20(.L.str.11)
	addi.d	$a0, $a0, %pc_lo12(.L.str.11)
	pcalau12i	$a1, %pc_hi20(errortext)
	addi.d	$a1, $a1, %pc_lo12(errortext)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB5_5:
	pcaddu18i	$ra, %call36(PatchMatrix)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putchar)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(UseDefaultScalingMatrix4x4Flag)
	addi.d	$a0, $a0, %pc_lo12(UseDefaultScalingMatrix4x4Flag)
	st.d	$zero, $a0, 0
	st.w	$zero, $a0, 8
	pcalau12i	$a0, %pc_hi20(UseDefaultScalingMatrix8x8Flag)
	st.w	$zero, $a0, %pc_lo12(UseDefaultScalingMatrix8x8Flag)
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(free)
	jr	$t8
.Lfunc_end5:
	.size	Init_QMatrix, .Lfunc_end5-Init_QMatrix
                                        # -- End function
	.globl	CalculateQuantParam             # -- Begin function CalculateQuantParam
	.p2align	5
	.type	CalculateQuantParam,@function
CalculateQuantParam:                    # @CalculateQuantParam
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
	pcalau12i	$a0, %pc_hi20(active_sps)
	ld.d	$a6, $a0, %pc_lo12(active_sps)
	ld.w	$a0, $a6, 36
	beqz	$a0, .LBB6_3
# %bb.1:                                # %.loopexit307
	pcalau12i	$a0, %pc_hi20(active_pps)
	ld.d	$a5, $a0, %pc_lo12(active_pps)
	ld.w	$a0, $a6, 40
	ld.w	$a2, $a5, 20
	ld.w	$a1, $a6, 52
	bnez	$a2, .LBB6_5
# %bb.2:
	addi.d	$a2, $a6, 44
	addi.d	$a3, $a6, 48
	addi.d	$a4, $a6, 56
	addi.d	$a5, $a6, 60
	b	.LBB6_6
.LBB6_3:
	pcalau12i	$a0, %pc_hi20(active_pps)
	ld.d	$a5, $a0, %pc_lo12(active_pps)
	ld.w	$a0, $a5, 20
	beqz	$a0, .LBB6_22
# %bb.4:
	move	$a1, $zero
	move	$a0, $zero
.LBB6_5:                                # %.critedge.loopexit
	ld.w	$a2, $a5, 24
	ld.w	$a4, $a5, 36
	or	$a0, $a0, $a2
	addi.d	$a2, $a5, 28
	addi.d	$a3, $a5, 32
	or	$a1, $a1, $a4
	addi.d	$a4, $a5, 40
	addi.d	$a5, $a5, 44
.LBB6_6:                                # %.critedge
	move	$a6, $zero
	ld.w	$a5, $a5, 0
	st.d	$a5, $sp, 112                   # 8-byte Folded Spill
	ld.w	$a4, $a4, 0
	st.d	$a4, $sp, 104                   # 8-byte Folded Spill
	ld.w	$a3, $a3, 0
	st.d	$a3, $sp, 96                    # 8-byte Folded Spill
	ld.w	$a2, $a2, 0
	st.d	$a2, $sp, 88                    # 8-byte Folded Spill
	pcalau12i	$a2, %got_pc_hi20(quant_coef)
	ld.d	$a3, $a2, %got_pc_lo12(quant_coef)
	pcalau12i	$a2, %got_pc_hi20(dequant_coef)
	ld.d	$a4, $a2, %got_pc_lo12(dequant_coef)
	pcalau12i	$a2, %pc_hi20(LevelScale4x4Luma)
	st.d	$a2, $sp, 64                    # 8-byte Folded Spill
	pcalau12i	$a2, %pc_hi20(InvLevelScale4x4Luma)
	st.d	$a2, $sp, 56                    # 8-byte Folded Spill
	pcalau12i	$a2, %pc_hi20(UseDefaultScalingMatrix4x4Flag)
	addi.d	$t1, $a2, %pc_lo12(UseDefaultScalingMatrix4x4Flag)
	pcalau12i	$a2, %pc_hi20(LevelScale4x4Chroma)
	st.d	$a2, $sp, 48                    # 8-byte Folded Spill
	pcalau12i	$a2, %pc_hi20(InvLevelScale4x4Chroma)
	st.d	$a2, $sp, 40                    # 8-byte Folded Spill
	sltui	$t4, $a0, 1
	sltui	$t5, $a1, 1
	b	.LBB6_8
	.p2align	4, , 16
.LBB6_7:                                #   in Loop: Header=BB6_8 Depth=1
	ld.d	$a6, $sp, 32                    # 8-byte Folded Reload
	addi.d	$a6, $a6, 1
	ld.d	$a3, $sp, 24                    # 8-byte Folded Reload
	addi.d	$a3, $a3, 64
	ld.d	$a4, $sp, 16                    # 8-byte Folded Reload
	addi.d	$a4, $a4, 64
	ori	$a0, $zero, 6
	beq	$a6, $a0, .LBB6_24
.LBB6_8:                                # %.preheader304
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_10 Depth 2
                                        #       Child Loop BB6_13 Depth 3
	move	$fp, $zero
	move	$t7, $zero
	st.d	$a6, $sp, 32                    # 8-byte Folded Spill
	slli.d	$s1, $a6, 3
	st.d	$a4, $sp, 16                    # 8-byte Folded Spill
	st.d	$a4, $sp, 128                   # 8-byte Folded Spill
	st.d	$a3, $sp, 24                    # 8-byte Folded Spill
	st.d	$a3, $sp, 120                   # 8-byte Folded Spill
	b	.LBB6_10
	.p2align	4, , 16
.LBB6_9:                                #   in Loop: Header=BB6_10 Depth=2
	ld.d	$t7, $sp, 72                    # 8-byte Folded Reload
	addi.d	$t7, $t7, 1
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	addi.d	$a0, $a0, 16
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	addi.d	$a0, $a0, 16
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	addi.d	$fp, $fp, 8
	ori	$a0, $zero, 4
	beq	$t7, $a0, .LBB6_7
.LBB6_10:                               # %.preheader303
                                        #   Parent Loop BB6_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB6_13 Depth 3
	move	$s4, $zero
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(LevelScale4x4Luma)
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(InvLevelScale4x4Luma)
	ld.hu	$a2, $t1, 2
	ld.d	$a3, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s5, $a3, %pc_lo12(LevelScale4x4Chroma)
	ld.d	$a3, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a3, $a3, %pc_lo12(InvLevelScale4x4Chroma)
	ld.hu	$a4, $t1, 4
	ld.hu	$t0, $t1, 8
	ld.d	$a5, $a0, 8
	ld.hu	$a7, $t1, 10
	ld.d	$a6, $a3, 0
	ld.d	$a3, $a3, 8
	ldx.d	$a5, $a5, $s1
	ld.d	$t2, $a1, 8
	ld.d	$t3, $a6, 8
	ld.d	$t6, $a3, 8
	st.d	$t7, $sp, 72                    # 8-byte Folded Spill
	slli.d	$s6, $t7, 3
	ldx.d	$t2, $t2, $s1
	ldx.d	$t3, $t3, $s1
	ldx.d	$t6, $t6, $s1
	ldx.d	$s7, $a5, $s6
	ldx.d	$s8, $t2, $s6
	ldx.d	$ra, $t3, $s6
	ldx.d	$t8, $t6, $s6
	ld.d	$a0, $a0, 0
	ld.d	$a1, $a1, 0
	ld.d	$a5, $a6, 0
	ld.d	$a3, $a3, 0
	ldx.d	$a0, $a0, $s1
	ldx.d	$a1, $a1, $s1
	ldx.d	$t2, $a5, $s1
	ldx.d	$a3, $a3, $s1
	ldx.d	$a5, $a0, $s6
	ldx.d	$a6, $a1, $s6
	ldx.d	$a0, $t2, $s6
	ldx.d	$t7, $a3, $s6
	sltui	$a7, $a7, 1
	sltui	$t0, $t0, 1
	sltui	$t2, $a4, 1
	sltui	$t3, $a2, 1
	st.d	$fp, $sp, 80                    # 8-byte Folded Spill
	b	.LBB6_13
	.p2align	4, , 16
.LBB6_11:                               #   in Loop: Header=BB6_13 Depth=3
	ld.d	$a1, $a3, 0
	ldx.d	$a1, $a1, $s1
	ldx.w	$a2, $a2, $s4
	ldx.d	$a1, $a1, $s6
	stx.w	$a2, $a1, $s4
	ldx.w	$a1, $a0, $s4
.LBB6_12:                               #   in Loop: Header=BB6_13 Depth=3
	stx.w	$a1, $t7, $s4
	addi.d	$s4, $s4, 4
	addi.d	$fp, $fp, 2
	ori	$a1, $zero, 16
	beq	$s4, $a1, .LBB6_9
.LBB6_13:                               #   Parent Loop BB6_8 Depth=1
                                        #     Parent Loop BB6_10 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.h	$a1, $t1, 0
	bstrpick.d	$a1, $a1, 15, 0
	sltu	$a1, $zero, $a1
	ld.d	$a2, $sp, 120                   # 8-byte Folded Reload
	ldx.w	$a2, $a2, $s4
	pcalau12i	$a3, %pc_hi20(ScalingList4x4)
	addi.d	$s0, $a3, %pc_lo12(ScalingList4x4)
	masknez	$a3, $s0, $a1
	pcalau12i	$a4, %pc_hi20(Quant_intra_default)
	addi.d	$a4, $a4, %pc_lo12(Quant_intra_default)
	maskeqz	$a1, $a4, $a1
	or	$a1, $a1, $a3
	masknez	$a1, $a1, $t4
	maskeqz	$a3, $a4, $t4
	or	$a1, $a3, $a1
	ldx.h	$a3, $a1, $fp
	slli.w	$t6, $a2, 4
	div.w	$a1, $t6, $a3
	stx.w	$a1, $s7, $s4
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	ldx.w	$a1, $a1, $s4
	mul.d	$a2, $a1, $a3
	stx.w	$a2, $s8, $s4
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
	beqz	$a2, .LBB6_16
# %bb.14:                               #   in Loop: Header=BB6_13 Depth=3
	ld.d	$a2, $s5, 0
	add.d	$a3, $a4, $fp
	ld.d	$s2, $a2, 8
	add.d	$s3, $s0, $fp
	addi.d	$s3, $s3, 32
	masknez	$a3, $a3, $t3
	ldx.d	$s2, $s2, $s1
	maskeqz	$s3, $s3, $t3
	or	$a3, $s3, $a3
	ld.h	$a3, $a3, 0
	ldx.d	$s2, $s2, $s6
	div.w	$s3, $t6, $a3
	stx.w	$s3, $s2, $s4
	mul.d	$a3, $a1, $a3
	stx.w	$a3, $ra, $s4
	ld.d	$a3, $sp, 96                    # 8-byte Folded Reload
	beqz	$a3, .LBB6_17
.LBB6_15:                               #   in Loop: Header=BB6_13 Depth=3
	ld.d	$a3, $s5, 8
	add.d	$a4, $a4, $fp
	ld.d	$s2, $a3, 8
	add.d	$s3, $s0, $fp
	addi.d	$s3, $s3, 64
	masknez	$a4, $a4, $t2
	ldx.d	$s2, $s2, $s1
	maskeqz	$s3, $s3, $t2
	or	$a4, $s3, $a4
	ld.h	$a4, $a4, 0
	ldx.d	$s2, $s2, $s6
	div.w	$s3, $t6, $a4
	stx.w	$s3, $s2, $s4
	mul.d	$a4, $a1, $a4
	b	.LBB6_18
	.p2align	4, , 16
.LBB6_16:                               #   in Loop: Header=BB6_13 Depth=3
	ld.d	$a2, $s5, 0
	ld.d	$a3, $a2, 8
	ldx.d	$a3, $a3, $s1
	ldx.w	$s3, $s7, $s4
	ldx.d	$s2, $a3, $s6
	stx.w	$s3, $s2, $s4
	ldx.w	$a3, $s8, $s4
	stx.w	$a3, $ra, $s4
	ld.d	$a3, $sp, 96                    # 8-byte Folded Reload
	bnez	$a3, .LBB6_15
.LBB6_17:                               #   in Loop: Header=BB6_13 Depth=3
	ld.d	$a3, $s5, 8
	ld.d	$a4, $a3, 8
	ldx.d	$a4, $a4, $s1
	ldx.w	$s2, $s2, $s4
	ldx.d	$a4, $a4, $s6
	stx.w	$s2, $a4, $s4
	ldx.w	$a4, $ra, $s4
.LBB6_18:                               #   in Loop: Header=BB6_13 Depth=3
	stx.w	$a4, $t8, $s4
	ld.h	$a4, $t1, 6
	bstrpick.d	$a4, $a4, 15, 0
	sltu	$s2, $zero, $a4
	addi.d	$a4, $s0, 96
	masknez	$s3, $a4, $s2
	pcalau12i	$a4, %pc_hi20(Quant_inter_default)
	addi.d	$a4, $a4, %pc_lo12(Quant_inter_default)
	maskeqz	$s2, $a4, $s2
	or	$s2, $s2, $s3
	masknez	$s2, $s2, $t5
	maskeqz	$s3, $a4, $t5
	or	$s2, $s3, $s2
	ldx.h	$s2, $s2, $fp
	div.w	$s3, $t6, $s2
	stx.w	$s3, $a5, $s4
	mul.d	$s2, $a1, $s2
	stx.w	$s2, $a6, $s4
	ld.d	$s2, $sp, 104                   # 8-byte Folded Reload
	beqz	$s2, .LBB6_20
# %bb.19:                               #   in Loop: Header=BB6_13 Depth=3
	add.d	$s2, $a4, $fp
	ld.d	$a2, $a2, 0
	add.d	$s3, $s0, $fp
	addi.d	$s3, $s3, 128
	masknez	$s2, $s2, $t0
	ldx.d	$a2, $a2, $s1
	maskeqz	$s3, $s3, $t0
	or	$s2, $s3, $s2
	ld.h	$s2, $s2, 0
	ldx.d	$a2, $a2, $s6
	div.w	$s3, $t6, $s2
	stx.w	$s3, $a2, $s4
	mul.d	$s2, $a1, $s2
	stx.w	$s2, $a0, $s4
	ld.d	$s2, $sp, 112                   # 8-byte Folded Reload
	bnez	$s2, .LBB6_21
	b	.LBB6_11
	.p2align	4, , 16
.LBB6_20:                               #   in Loop: Header=BB6_13 Depth=3
	ld.d	$a2, $a2, 0
	ldx.d	$a2, $a2, $s1
	ldx.w	$s2, $a5, $s4
	ldx.d	$a2, $a2, $s6
	stx.w	$s2, $a2, $s4
	ldx.w	$s2, $a6, $s4
	stx.w	$s2, $a0, $s4
	ld.d	$s2, $sp, 112                   # 8-byte Folded Reload
	beqz	$s2, .LBB6_11
.LBB6_21:                               #   in Loop: Header=BB6_13 Depth=3
	add.d	$a2, $a4, $fp
	ld.d	$a3, $a3, 0
	add.d	$a4, $s0, $fp
	addi.d	$a4, $a4, 160
	masknez	$a2, $a2, $a7
	ldx.d	$a3, $a3, $s1
	maskeqz	$a4, $a4, $a7
	or	$a2, $a4, $a2
	ld.h	$a2, $a2, 0
	ldx.d	$a3, $a3, $s6
	div.w	$a4, $t6, $a2
	stx.w	$a4, $a3, $s4
	mul.d	$a1, $a1, $a2
	b	.LBB6_12
.LBB6_22:                               # %.preheader302
	move	$s1, $zero
	pcalau12i	$a1, %pc_hi20(LevelScale4x4Luma)
	ld.d	$a1, $a1, %pc_lo12(LevelScale4x4Luma)
	pcalau12i	$a2, %pc_hi20(InvLevelScale4x4Luma)
	ld.d	$a2, $a2, %pc_lo12(InvLevelScale4x4Luma)
	pcalau12i	$a3, %pc_hi20(LevelScale4x4Chroma)
	ld.d	$a3, $a3, %pc_lo12(LevelScale4x4Chroma)
	pcalau12i	$a4, %pc_hi20(InvLevelScale4x4Chroma)
	ld.d	$a4, $a4, %pc_lo12(InvLevelScale4x4Chroma)
	ld.d	$a0, $a1, 8
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	ld.d	$a0, $a2, 8
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	ld.d	$a5, $a3, 0
	ld.d	$a6, $a4, 0
	ld.d	$a3, $a3, 8
	ld.d	$a4, $a4, 8
	ld.d	$a0, $a5, 8
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	ld.d	$a0, $a6, 8
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	ld.d	$a0, $a3, 8
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	ld.d	$a0, $a4, 8
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	ld.d	$a0, $a1, 0
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	ld.d	$a0, $a2, 0
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	ld.d	$a0, $a5, 0
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	ld.d	$a0, $a6, 0
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$a1, %got_pc_hi20(dequant_coef)
	ld.d	$a1, $a1, %got_pc_lo12(dequant_coef)
	pcalau12i	$a2, %got_pc_hi20(quant_coef)
	ld.d	$a2, $a2, %got_pc_lo12(quant_coef)
	ld.d	$a0, $a3, 0
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	ld.d	$a0, $a4, 0
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	addi.d	$t5, $a1, 32
	addi.d	$t6, $a2, 32
	.p2align	4, , 16
.LBB6_23:                               # %.preheader301
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ldx.d	$s4, $a0, $s1
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ldx.d	$s5, $a0, $s1
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ldx.d	$s6, $a0, $s1
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ldx.d	$s7, $a0, $s1
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	ldx.d	$s8, $a0, $s1
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	ldx.d	$ra, $a0, $s1
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ldx.d	$s3, $a0, $s1
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ldx.d	$s0, $a0, $s1
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ldx.d	$s2, $a0, $s1
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	ldx.d	$fp, $a0, $s1
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	ldx.d	$t3, $a0, $s1
	st.d	$t3, $sp, 120                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	ldx.d	$t8, $a0, $s1
	st.d	$t8, $sp, 112                   # 8-byte Folded Spill
	ld.d	$a5, $s4, 0
	ld.d	$t7, $s5, 0
	ld.d	$a1, $s6, 0
	ld.d	$a2, $s7, 0
	ld.d	$a3, $s8, 0
	ld.d	$a4, $ra, 0
	ld.w	$t4, $t6, -32
	ld.d	$a6, $s3, 0
	ld.d	$a7, $s0, 0
	ld.d	$t0, $s2, 0
	st.d	$s2, $sp, 104                   # 8-byte Folded Spill
	st.w	$t4, $a5, 0
	ld.w	$a0, $t5, -32
	ld.d	$t1, $fp, 0
	ld.d	$t2, $t3, 0
	ld.d	$t3, $t8, 0
	slli.d	$a0, $a0, 4
	st.w	$a0, $t7, 0
	st.w	$t4, $a1, 0
	st.w	$a0, $a2, 0
	st.w	$t4, $a3, 0
	st.w	$a0, $a4, 0
	st.w	$t4, $a6, 0
	st.w	$a0, $a7, 0
	st.w	$t4, $t0, 0
	st.w	$a0, $t1, 0
	st.w	$t4, $t2, 0
	st.w	$a0, $t3, 0
	ld.w	$a0, $t6, -28
	st.w	$a0, $a5, 4
	ld.w	$t4, $t5, -28
	slli.d	$t4, $t4, 4
	st.w	$t4, $t7, 4
	st.w	$a0, $a1, 4
	st.w	$t4, $a2, 4
	st.w	$a0, $a3, 4
	st.w	$t4, $a4, 4
	st.w	$a0, $a6, 4
	st.w	$t4, $a7, 4
	st.w	$a0, $t0, 4
	st.w	$t4, $t1, 4
	st.w	$a0, $t2, 4
	st.w	$t4, $t3, 4
	ld.w	$a0, $t6, -24
	st.w	$a0, $a5, 8
	ld.w	$t4, $t5, -24
	slli.d	$t4, $t4, 4
	st.w	$t4, $t7, 8
	st.w	$a0, $a1, 8
	st.w	$t4, $a2, 8
	st.w	$a0, $a3, 8
	st.w	$t4, $a4, 8
	st.w	$a0, $a6, 8
	st.w	$t4, $a7, 8
	st.w	$a0, $t0, 8
	st.w	$t4, $t1, 8
	st.w	$a0, $t2, 8
	st.w	$t4, $t3, 8
	ld.w	$a0, $t6, -20
	st.w	$a0, $a5, 12
	ld.w	$a5, $t5, -20
	slli.d	$a5, $a5, 4
	st.w	$a5, $t7, 12
	st.w	$a0, $a1, 12
	st.w	$a5, $a2, 12
	st.w	$a0, $a3, 12
	st.w	$a5, $a4, 12
	st.w	$a0, $a6, 12
	st.w	$a5, $a7, 12
	st.w	$a0, $t0, 12
	st.w	$a5, $t1, 12
	st.w	$a0, $t2, 12
	st.w	$a5, $t3, 12
	ld.d	$a5, $s4, 8
	st.d	$s4, $sp, 128                   # 8-byte Folded Spill
	ld.d	$a1, $s5, 8
	ld.d	$a2, $s6, 8
	ld.d	$a3, $s7, 8
	ld.d	$a4, $s8, 8
	ld.d	$t7, $ra, 8
	ld.w	$a0, $t6, -16
	move	$t8, $s3
	ld.d	$a6, $s3, 8
	ld.d	$a7, $s0, 8
	move	$s3, $s0
	ld.d	$t0, $s2, 8
	st.w	$a0, $a5, 0
	ld.w	$t4, $t5, -16
	ld.d	$t1, $fp, 8
	ld.d	$s0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$t2, $s0, 8
	ld.d	$s2, $sp, 112                   # 8-byte Folded Reload
	ld.d	$t3, $s2, 8
	slli.d	$t4, $t4, 4
	st.w	$t4, $a1, 0
	st.w	$a0, $a2, 0
	st.w	$t4, $a3, 0
	st.w	$a0, $a4, 0
	st.w	$t4, $t7, 0
	st.w	$a0, $a6, 0
	st.w	$t4, $a7, 0
	st.w	$a0, $t0, 0
	st.w	$t4, $t1, 0
	st.w	$a0, $t2, 0
	st.w	$t4, $t3, 0
	ld.w	$a0, $t6, -12
	st.w	$a0, $a5, 4
	ld.w	$t4, $t5, -12
	slli.d	$t4, $t4, 4
	st.w	$t4, $a1, 4
	st.w	$a0, $a2, 4
	st.w	$t4, $a3, 4
	st.w	$a0, $a4, 4
	st.w	$t4, $t7, 4
	st.w	$a0, $a6, 4
	st.w	$t4, $a7, 4
	st.w	$a0, $t0, 4
	st.w	$t4, $t1, 4
	st.w	$a0, $t2, 4
	st.w	$t4, $t3, 4
	ld.w	$a0, $t6, -8
	st.w	$a0, $a5, 8
	ld.w	$t4, $t5, -8
	slli.d	$t4, $t4, 4
	st.w	$t4, $a1, 8
	st.w	$a0, $a2, 8
	st.w	$t4, $a3, 8
	st.w	$a0, $a4, 8
	st.w	$t4, $t7, 8
	st.w	$a0, $a6, 8
	st.w	$t4, $a7, 8
	st.w	$a0, $t0, 8
	st.w	$t4, $t1, 8
	st.w	$a0, $t2, 8
	st.w	$t4, $t3, 8
	ld.w	$a0, $t6, -4
	st.w	$a0, $a5, 12
	ld.w	$a5, $t5, -4
	slli.d	$a5, $a5, 4
	st.w	$a5, $a1, 12
	st.w	$a0, $a2, 12
	st.w	$a5, $a3, 12
	st.w	$a0, $a4, 12
	st.w	$a5, $t7, 12
	st.w	$a0, $a6, 12
	st.w	$a5, $a7, 12
	st.w	$a0, $t0, 12
	st.w	$a5, $t1, 12
	st.w	$a0, $t2, 12
	st.w	$a5, $t3, 12
	ld.d	$a5, $s4, 16
	ld.d	$a1, $s5, 16
	ld.d	$a2, $s6, 16
	ld.d	$a3, $s7, 16
	ld.d	$a4, $s8, 16
	ld.d	$t7, $ra, 16
	ld.w	$a0, $t6, 0
	ld.d	$a6, $t8, 16
	move	$s4, $t8
	ld.d	$a7, $s3, 16
	ld.d	$t8, $sp, 104                   # 8-byte Folded Reload
	ld.d	$t0, $t8, 16
	st.w	$a0, $a5, 0
	ld.w	$t4, $t5, 0
	ld.d	$t1, $fp, 16
	ld.d	$t2, $s0, 16
	ld.d	$t3, $s2, 16
	slli.d	$t4, $t4, 4
	st.w	$t4, $a1, 0
	st.w	$a0, $a2, 0
	st.w	$t4, $a3, 0
	st.w	$a0, $a4, 0
	st.w	$t4, $t7, 0
	st.w	$a0, $a6, 0
	st.w	$t4, $a7, 0
	st.w	$a0, $t0, 0
	st.w	$t4, $t1, 0
	st.w	$a0, $t2, 0
	st.w	$t4, $t3, 0
	ld.w	$a0, $t6, 4
	st.w	$a0, $a5, 4
	ld.w	$t4, $t5, 4
	slli.d	$t4, $t4, 4
	st.w	$t4, $a1, 4
	st.w	$a0, $a2, 4
	st.w	$t4, $a3, 4
	st.w	$a0, $a4, 4
	st.w	$t4, $t7, 4
	st.w	$a0, $a6, 4
	st.w	$t4, $a7, 4
	st.w	$a0, $t0, 4
	st.w	$t4, $t1, 4
	st.w	$a0, $t2, 4
	st.w	$t4, $t3, 4
	ld.w	$a0, $t6, 8
	st.w	$a0, $a5, 8
	ld.w	$t4, $t5, 8
	slli.d	$t4, $t4, 4
	st.w	$t4, $a1, 8
	st.w	$a0, $a2, 8
	st.w	$t4, $a3, 8
	st.w	$a0, $a4, 8
	st.w	$t4, $t7, 8
	st.w	$a0, $a6, 8
	st.w	$t4, $a7, 8
	st.w	$a0, $t0, 8
	st.w	$t4, $t1, 8
	st.w	$a0, $t2, 8
	st.w	$t4, $t3, 8
	ld.w	$a0, $t6, 12
	st.w	$a0, $a5, 12
	ld.w	$a5, $t5, 12
	slli.d	$a5, $a5, 4
	st.w	$a5, $a1, 12
	st.w	$a0, $a2, 12
	st.w	$a5, $a3, 12
	st.w	$a0, $a4, 12
	st.w	$a5, $t7, 12
	st.w	$a0, $a6, 12
	st.w	$a5, $a7, 12
	st.w	$a0, $t0, 12
	st.w	$a5, $t1, 12
	st.w	$a0, $t2, 12
	st.w	$a5, $t3, 12
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a5, $a0, 24
	ld.d	$a1, $s5, 24
	ld.d	$a2, $s6, 24
	ld.d	$a3, $s7, 24
	ld.d	$a4, $s8, 24
	ld.d	$t7, $ra, 24
	ld.w	$a0, $t6, 16
	ld.d	$a6, $s4, 24
	ld.d	$a7, $s3, 24
	ld.d	$t0, $t8, 24
	st.w	$a0, $a5, 0
	ld.w	$t4, $t5, 16
	ld.d	$t1, $fp, 24
	ld.d	$t2, $s0, 24
	ld.d	$t3, $s2, 24
	slli.d	$t4, $t4, 4
	st.w	$t4, $a1, 0
	st.w	$a0, $a2, 0
	st.w	$t4, $a3, 0
	st.w	$a0, $a4, 0
	st.w	$t4, $t7, 0
	st.w	$a0, $a6, 0
	st.w	$t4, $a7, 0
	st.w	$a0, $t0, 0
	st.w	$t4, $t1, 0
	st.w	$a0, $t2, 0
	st.w	$t4, $t3, 0
	ld.w	$a0, $t6, 20
	st.w	$a0, $a5, 4
	ld.w	$t4, $t5, 20
	slli.d	$t4, $t4, 4
	st.w	$t4, $a1, 4
	st.w	$a0, $a2, 4
	st.w	$t4, $a3, 4
	st.w	$a0, $a4, 4
	st.w	$t4, $t7, 4
	st.w	$a0, $a6, 4
	st.w	$t4, $a7, 4
	st.w	$a0, $t0, 4
	st.w	$t4, $t1, 4
	st.w	$a0, $t2, 4
	st.w	$t4, $t3, 4
	ld.w	$a0, $t6, 24
	st.w	$a0, $a5, 8
	ld.w	$t4, $t5, 24
	slli.d	$t4, $t4, 4
	st.w	$t4, $a1, 8
	st.w	$a0, $a2, 8
	st.w	$t4, $a3, 8
	st.w	$a0, $a4, 8
	st.w	$t4, $t7, 8
	st.w	$a0, $a6, 8
	st.w	$t4, $a7, 8
	st.w	$a0, $t0, 8
	st.w	$t4, $t1, 8
	st.w	$a0, $t2, 8
	st.w	$t4, $t3, 8
	ld.w	$a0, $t6, 28
	st.w	$a0, $a5, 12
	ld.w	$a5, $t5, 28
	slli.d	$a5, $a5, 4
	st.w	$a5, $a1, 12
	st.w	$a0, $a2, 12
	st.w	$a5, $a3, 12
	st.w	$a0, $a4, 12
	st.w	$a5, $t7, 12
	st.w	$a0, $a6, 12
	st.w	$a5, $a7, 12
	st.w	$a0, $t0, 12
	st.w	$a5, $t1, 12
	st.w	$a0, $t2, 12
	st.w	$a5, $t3, 12
	addi.d	$s1, $s1, 8
	addi.d	$t5, $t5, 64
	addi.d	$t6, $t6, 64
	ori	$a0, $zero, 48
	bne	$s1, $a0, .LBB6_23
.LBB6_24:                               # %.loopexit
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
.Lfunc_end6:
	.size	CalculateQuantParam, .Lfunc_end6-CalculateQuantParam
                                        # -- End function
	.globl	CalculateQuant8Param            # -- Begin function CalculateQuant8Param
	.p2align	5
	.type	CalculateQuant8Param,@function
CalculateQuant8Param:                   # @CalculateQuant8Param
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
	pcalau12i	$a0, %pc_hi20(active_sps)
	ld.d	$a1, $a0, %pc_lo12(active_sps)
	ld.w	$a0, $a1, 36
	beqz	$a0, .LBB7_2
# %bb.1:                                # %.loopexit122
	pcalau12i	$a0, %pc_hi20(active_pps)
	ld.d	$a0, $a0, %pc_lo12(active_pps)
	ld.w	$a6, $a1, 64
	ld.w	$a2, $a0, 20
	ld.w	$a5, $a1, 68
	bnez	$a2, .LBB7_4
	b	.LBB7_5
.LBB7_2:
	pcalau12i	$a0, %pc_hi20(active_pps)
	ld.d	$a0, $a0, %pc_lo12(active_pps)
	ld.w	$a1, $a0, 20
	beqz	$a1, .LBB7_12
# %bb.3:
	move	$a6, $zero
	move	$a5, $zero
.LBB7_4:                                # %.preheader121
	ld.w	$a1, $a0, 48
	ld.w	$a0, $a0, 52
	or	$a6, $a6, $a1
	or	$a5, $a5, $a0
.LBB7_5:                                # %.critedge
	move	$a0, $zero
	pcalau12i	$a1, %got_pc_hi20(quant_coef8)
	ld.d	$s3, $a1, %got_pc_lo12(quant_coef8)
	pcalau12i	$a2, %got_pc_hi20(dequant_coef8)
	ld.d	$s2, $a2, %got_pc_lo12(dequant_coef8)
	pcalau12i	$a3, %pc_hi20(LevelScale8x8Luma)
	pcalau12i	$a4, %pc_hi20(InvLevelScale8x8Luma)
	sltui	$a5, $a5, 1
	sltui	$a6, $a6, 1
	pcalau12i	$a7, %pc_hi20(UseDefaultScalingMatrix8x8Flag)
	addi.d	$a7, $a7, %pc_lo12(UseDefaultScalingMatrix8x8Flag)
	pcalau12i	$t0, %pc_hi20(ScalingList8x8)
	addi.d	$t0, $t0, %pc_lo12(ScalingList8x8)
	pcalau12i	$t1, %pc_hi20(Quant8_intra_default)
	addi.d	$t1, $t1, %pc_lo12(Quant8_intra_default)
	maskeqz	$t2, $t1, $a6
	addi.d	$t3, $t0, 128
	pcalau12i	$t4, %pc_hi20(Quant8_inter_default)
	addi.d	$t4, $t4, %pc_lo12(Quant8_inter_default)
	maskeqz	$t5, $t4, $a5
	ori	$t6, $zero, 32
	ori	$t7, $zero, 8
	.p2align	4, , 16
.LBB7_6:                                # %.preheader119
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_7 Depth 2
                                        #       Child Loop BB7_8 Depth 3
	move	$fp, $zero
	move	$s0, $zero
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	slli.d	$s1, $a0, 3
	st.d	$s2, $sp, 0                     # 8-byte Folded Spill
	st.d	$s3, $sp, 8                     # 8-byte Folded Spill
	.p2align	4, , 16
.LBB7_7:                                # %.preheader118
                                        #   Parent Loop BB7_6 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB7_8 Depth 3
	ld.d	$s4, $a3, %pc_lo12(LevelScale8x8Luma)
	ld.d	$s5, $s4, 8
	ld.d	$s6, $a4, %pc_lo12(InvLevelScale8x8Luma)
	ldx.d	$s5, $s5, $s1
	ld.d	$s7, $s6, 8
	ld.d	$s4, $s4, 0
	ld.d	$s6, $s6, 0
	slli.d	$s8, $s0, 3
	ldx.d	$s7, $s7, $s1
	ldx.d	$ra, $s4, $s1
	ldx.d	$t8, $s6, $s1
	ldx.d	$s4, $s5, $s8
	ldx.d	$s5, $s7, $s8
	ldx.d	$s6, $ra, $s8
	ldx.d	$s7, $t8, $s8
	move	$s8, $zero
	move	$ra, $fp
	.p2align	4, , 16
.LBB7_8:                                #   Parent Loop BB7_6 Depth=1
                                        #     Parent Loop BB7_7 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.h	$t8, $a7, 0
	bstrpick.d	$t8, $t8, 15, 0
	sltu	$t8, $zero, $t8
	ldx.w	$a1, $s3, $s8
	masknez	$a2, $t0, $t8
	maskeqz	$t8, $t1, $t8
	or	$a2, $t8, $a2
	masknez	$a2, $a2, $a6
	or	$a2, $t2, $a2
	ldx.h	$a2, $a2, $ra
	slli.w	$a1, $a1, 4
	div.w	$t8, $a1, $a2
	stx.w	$t8, $s4, $s8
	ldx.w	$t8, $s2, $s8
	mul.d	$a2, $t8, $a2
	stx.w	$a2, $s5, $s8
	ld.h	$a2, $a7, 2
	bstrpick.d	$a2, $a2, 15, 0
	sltu	$a2, $zero, $a2
	masknez	$a0, $t3, $a2
	maskeqz	$a2, $t4, $a2
	or	$a0, $a2, $a0
	masknez	$a0, $a0, $a5
	or	$a0, $t5, $a0
	ldx.h	$a0, $a0, $ra
	div.w	$a1, $a1, $a0
	stx.w	$a1, $s6, $s8
	mul.d	$a0, $t8, $a0
	stx.w	$a0, $s7, $s8
	addi.d	$s8, $s8, 4
	addi.d	$ra, $ra, 2
	bne	$s8, $t6, .LBB7_8
# %bb.9:                                #   in Loop: Header=BB7_7 Depth=2
	addi.d	$s0, $s0, 1
	addi.d	$s3, $s3, 32
	addi.d	$s2, $s2, 32
	addi.d	$fp, $fp, 16
	bne	$s0, $t7, .LBB7_7
# %bb.10:                               #   in Loop: Header=BB7_6 Depth=1
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	addi.d	$a0, $a0, 1
	ld.d	$s3, $sp, 8                     # 8-byte Folded Reload
	addi.d	$s3, $s3, 256
	ld.d	$s2, $sp, 0                     # 8-byte Folded Reload
	addi.d	$s2, $s2, 256
	ori	$a1, $zero, 6
	bne	$a0, $a1, .LBB7_6
.LBB7_11:                               # %.loopexit
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
.LBB7_12:                               # %.preheader117
	pcalau12i	$a0, %pc_hi20(LevelScale8x8Luma)
	ld.d	$a3, $a0, %pc_lo12(LevelScale8x8Luma)
	pcalau12i	$a0, %pc_hi20(InvLevelScale8x8Luma)
	ld.d	$a5, $a0, %pc_lo12(InvLevelScale8x8Luma)
	move	$a0, $zero
	ld.d	$a1, $a3, 8
	ld.d	$a2, $a5, 8
	pcalau12i	$a4, %got_pc_hi20(dequant_coef8)
	ld.d	$a4, $a4, %got_pc_lo12(dequant_coef8)
	pcalau12i	$a6, %got_pc_hi20(quant_coef8)
	ld.d	$a6, $a6, %got_pc_lo12(quant_coef8)
	ld.d	$a3, $a3, 0
	addi.d	$a4, $a4, 16
	ld.d	$a5, $a5, 0
	addi.d	$a6, $a6, 16
	ori	$a7, $zero, 64
	ori	$t0, $zero, 6
	.p2align	4, , 16
.LBB7_13:                               # %.preheader116
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_14 Depth 2
	slli.d	$t4, $a0, 3
	ldx.d	$t1, $a1, $t4
	ldx.d	$t2, $a2, $t4
	ldx.d	$t3, $a3, $t4
	ldx.d	$t4, $a5, $t4
	move	$t5, $zero
	move	$t6, $a6
	move	$t7, $a4
	.p2align	4, , 16
.LBB7_14:                               # %.preheader
                                        #   Parent Loop BB7_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.d	$t8, $t1, $t5
	ld.w	$fp, $t6, -16
	st.w	$fp, $t8, 0
	ld.w	$s0, $t7, -16
	ldx.d	$s1, $t2, $t5
	ldx.d	$s2, $t3, $t5
	ldx.d	$s3, $t4, $t5
	slli.d	$s0, $s0, 4
	st.w	$s0, $s1, 0
	st.w	$fp, $s2, 0
	st.w	$s0, $s3, 0
	ld.w	$fp, $t6, -12
	st.w	$fp, $t8, 4
	ld.w	$s0, $t7, -12
	slli.d	$s0, $s0, 4
	st.w	$s0, $s1, 4
	st.w	$fp, $s2, 4
	st.w	$s0, $s3, 4
	ld.w	$fp, $t6, -8
	st.w	$fp, $t8, 8
	ld.w	$s0, $t7, -8
	slli.d	$s0, $s0, 4
	st.w	$s0, $s1, 8
	st.w	$fp, $s2, 8
	st.w	$s0, $s3, 8
	ld.w	$fp, $t6, -4
	st.w	$fp, $t8, 12
	ld.w	$s0, $t7, -4
	slli.d	$s0, $s0, 4
	st.w	$s0, $s1, 12
	st.w	$fp, $s2, 12
	st.w	$s0, $s3, 12
	ld.w	$fp, $t6, 0
	st.w	$fp, $t8, 16
	ld.w	$s0, $t7, 0
	slli.d	$s0, $s0, 4
	st.w	$s0, $s1, 16
	st.w	$fp, $s2, 16
	st.w	$s0, $s3, 16
	ld.w	$fp, $t6, 4
	st.w	$fp, $t8, 20
	ld.w	$s0, $t7, 4
	slli.d	$s0, $s0, 4
	st.w	$s0, $s1, 20
	st.w	$fp, $s2, 20
	st.w	$s0, $s3, 20
	ld.w	$fp, $t6, 8
	st.w	$fp, $t8, 24
	ld.w	$s0, $t7, 8
	slli.d	$s0, $s0, 4
	st.w	$s0, $s1, 24
	st.w	$fp, $s2, 24
	st.w	$s0, $s3, 24
	ld.w	$fp, $t6, 12
	st.w	$fp, $t8, 28
	ld.w	$t8, $t7, 12
	slli.d	$t8, $t8, 4
	st.w	$t8, $s1, 28
	st.w	$fp, $s2, 28
	st.w	$t8, $s3, 28
	addi.d	$t5, $t5, 8
	addi.d	$t7, $t7, 32
	addi.d	$t6, $t6, 32
	bne	$t5, $a7, .LBB7_14
# %bb.15:                               #   in Loop: Header=BB7_13 Depth=1
	addi.d	$a0, $a0, 1
	addi.d	$a4, $a4, 256
	addi.d	$a6, $a6, 256
	bne	$a0, $t0, .LBB7_13
	b	.LBB7_11
.Lfunc_end7:
	.size	CalculateQuant8Param, .Lfunc_end7-CalculateQuant8Param
                                        # -- End function
	.type	matrix4x4_check,@object         # @matrix4x4_check
	.bss
	.globl	matrix4x4_check
	.p2align	2, 0x0
matrix4x4_check:
	.space	24
	.size	matrix4x4_check, 24

	.type	matrix8x8_check,@object         # @matrix8x8_check
	.globl	matrix8x8_check
	.p2align	2, 0x0
matrix8x8_check:
	.space	8
	.size	matrix8x8_check, 8

	.type	MatrixType4x4,@object           # @MatrixType4x4
	.section	.rodata,"a",@progbits
MatrixType4x4:
	.asciz	"INTRA4X4_LUMA\000\000\000\000\000\000"
	.asciz	"INTRA4X4_CHROMAU\000\000\000"
	.asciz	"INTRA4X4_CHROMAV\000\000\000"
	.asciz	"INTER4X4_LUMA\000\000\000\000\000\000"
	.asciz	"INTER4X4_CHROMAU\000\000\000"
	.asciz	"INTER4X4_CHROMAV\000\000\000"
	.size	MatrixType4x4, 120

	.type	MatrixType8x8,@object           # @MatrixType8x8
MatrixType8x8:
	.asciz	"INTRA8X8_LUMA\000\000\000\000\000\000"
	.asciz	"INTER8X8_LUMA\000\000\000\000\000\000"
	.size	MatrixType8x8, 40

	.type	errortext,@object               # @errortext
	.comm	errortext,300,1
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	" Parsing error in config file: Parameter Name '%s' not recognized."
	.size	.L.str, 67

	.type	.L.str.2,@object                # @.str.2
	.section	.rodata.str1.8,"aMS",@progbits,1
	.p2align	3, 0x0
.L.str.2:
	.asciz	" Parsing error in config file: '=' expected as the second token in each item."
	.size	.L.str.2, 78

	.type	ScalingList4x4input,@object     # @ScalingList4x4input
	.comm	ScalingList4x4input,192,2
	.type	ScalingList8x8input,@object     # @ScalingList8x8input
	.comm	ScalingList8x8input,256,2
	.type	.L.str.3,@object                # @.str.3
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.3:
	.asciz	"%d"
	.size	.L.str.3, 3

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	" Parsing error: Expected numerical value for Parameter of %s, found '%s'."
	.size	.L.str.4, 74

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"\n%s value exceed range. (Value must be 1 to 255)\n"
	.size	.L.str.6, 50

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"Setting default values for this matrix."
	.size	.L.str.7, 40

	.type	Quant_inter_default,@object     # @Quant_inter_default
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	3, 0x0
Quant_inter_default:
	.half	10                              # 0xa
	.half	14                              # 0xe
	.half	20                              # 0x14
	.half	24                              # 0x18
	.half	14                              # 0xe
	.half	20                              # 0x14
	.half	24                              # 0x18
	.half	27                              # 0x1b
	.half	20                              # 0x14
	.half	24                              # 0x18
	.half	27                              # 0x1b
	.half	30                              # 0x1e
	.half	24                              # 0x18
	.half	27                              # 0x1b
	.half	30                              # 0x1e
	.half	34                              # 0x22
	.size	Quant_inter_default, 32

	.type	Quant_intra_default,@object     # @Quant_intra_default
	.p2align	3, 0x0
Quant_intra_default:
	.half	6                               # 0x6
	.half	13                              # 0xd
	.half	20                              # 0x14
	.half	28                              # 0x1c
	.half	13                              # 0xd
	.half	20                              # 0x14
	.half	28                              # 0x1c
	.half	32                              # 0x20
	.half	20                              # 0x14
	.half	28                              # 0x1c
	.half	32                              # 0x20
	.half	37                              # 0x25
	.half	28                              # 0x1c
	.half	32                              # 0x20
	.half	37                              # 0x25
	.half	42                              # 0x2a
	.size	Quant_intra_default, 32

	.type	.L.str.8,@object                # @.str.8
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.8:
	.asciz	"\n%s matrix definition not found. Setting default values."
	.size	.L.str.8, 57

	.type	Quant8_inter_default,@object    # @Quant8_inter_default
	.section	.rodata,"a",@progbits
	.p2align	1, 0x0
Quant8_inter_default:
	.half	9                               # 0x9
	.half	13                              # 0xd
	.half	15                              # 0xf
	.half	17                              # 0x11
	.half	19                              # 0x13
	.half	21                              # 0x15
	.half	22                              # 0x16
	.half	24                              # 0x18
	.half	13                              # 0xd
	.half	13                              # 0xd
	.half	17                              # 0x11
	.half	19                              # 0x13
	.half	21                              # 0x15
	.half	22                              # 0x16
	.half	24                              # 0x18
	.half	25                              # 0x19
	.half	15                              # 0xf
	.half	17                              # 0x11
	.half	19                              # 0x13
	.half	21                              # 0x15
	.half	22                              # 0x16
	.half	24                              # 0x18
	.half	25                              # 0x19
	.half	27                              # 0x1b
	.half	17                              # 0x11
	.half	19                              # 0x13
	.half	21                              # 0x15
	.half	22                              # 0x16
	.half	24                              # 0x18
	.half	25                              # 0x19
	.half	27                              # 0x1b
	.half	28                              # 0x1c
	.half	19                              # 0x13
	.half	21                              # 0x15
	.half	22                              # 0x16
	.half	24                              # 0x18
	.half	25                              # 0x19
	.half	27                              # 0x1b
	.half	28                              # 0x1c
	.half	30                              # 0x1e
	.half	21                              # 0x15
	.half	22                              # 0x16
	.half	24                              # 0x18
	.half	25                              # 0x19
	.half	27                              # 0x1b
	.half	28                              # 0x1c
	.half	30                              # 0x1e
	.half	32                              # 0x20
	.half	22                              # 0x16
	.half	24                              # 0x18
	.half	25                              # 0x19
	.half	27                              # 0x1b
	.half	28                              # 0x1c
	.half	30                              # 0x1e
	.half	32                              # 0x20
	.half	33                              # 0x21
	.half	24                              # 0x18
	.half	25                              # 0x19
	.half	27                              # 0x1b
	.half	28                              # 0x1c
	.half	30                              # 0x1e
	.half	32                              # 0x20
	.half	33                              # 0x21
	.half	35                              # 0x23
	.size	Quant8_inter_default, 128

	.type	Quant8_intra_default,@object    # @Quant8_intra_default
	.p2align	3, 0x0
Quant8_intra_default:
	.half	6                               # 0x6
	.half	10                              # 0xa
	.half	13                              # 0xd
	.half	16                              # 0x10
	.half	18                              # 0x12
	.half	23                              # 0x17
	.half	25                              # 0x19
	.half	27                              # 0x1b
	.half	10                              # 0xa
	.half	11                              # 0xb
	.half	16                              # 0x10
	.half	18                              # 0x12
	.half	23                              # 0x17
	.half	25                              # 0x19
	.half	27                              # 0x1b
	.half	29                              # 0x1d
	.half	13                              # 0xd
	.half	16                              # 0x10
	.half	18                              # 0x12
	.half	23                              # 0x17
	.half	25                              # 0x19
	.half	27                              # 0x1b
	.half	29                              # 0x1d
	.half	31                              # 0x1f
	.half	16                              # 0x10
	.half	18                              # 0x12
	.half	23                              # 0x17
	.half	25                              # 0x19
	.half	27                              # 0x1b
	.half	29                              # 0x1d
	.half	31                              # 0x1f
	.half	33                              # 0x21
	.half	18                              # 0x12
	.half	23                              # 0x17
	.half	25                              # 0x19
	.half	27                              # 0x1b
	.half	29                              # 0x1d
	.half	31                              # 0x1f
	.half	33                              # 0x21
	.half	36                              # 0x24
	.half	23                              # 0x17
	.half	25                              # 0x19
	.half	27                              # 0x1b
	.half	29                              # 0x1d
	.half	31                              # 0x1f
	.half	33                              # 0x21
	.half	36                              # 0x24
	.half	38                              # 0x26
	.half	25                              # 0x19
	.half	27                              # 0x1b
	.half	29                              # 0x1d
	.half	31                              # 0x1f
	.half	33                              # 0x21
	.half	36                              # 0x24
	.half	38                              # 0x26
	.half	40                              # 0x28
	.half	27                              # 0x1b
	.half	29                              # 0x1d
	.half	31                              # 0x1f
	.half	33                              # 0x21
	.half	36                              # 0x24
	.half	38                              # 0x26
	.half	40                              # 0x28
	.half	42                              # 0x2a
	.size	Quant8_intra_default, 128

	.type	qp_per_matrix,@object           # @qp_per_matrix
	.comm	qp_per_matrix,8,8
	.type	.L.str.9,@object                # @.str.9
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.9:
	.asciz	"init_global_buffers: qp_per_matrix"
	.size	.L.str.9, 35

	.type	qp_rem_matrix,@object           # @qp_rem_matrix
	.comm	qp_rem_matrix,8,8
	.type	LevelScale4x4Luma,@object       # @LevelScale4x4Luma
	.comm	LevelScale4x4Luma,8,8
	.type	LevelScale4x4Chroma,@object     # @LevelScale4x4Chroma
	.comm	LevelScale4x4Chroma,8,8
	.type	LevelScale8x8Luma,@object       # @LevelScale8x8Luma
	.comm	LevelScale8x8Luma,8,8
	.type	InvLevelScale4x4Luma,@object    # @InvLevelScale4x4Luma
	.comm	InvLevelScale4x4Luma,8,8
	.type	InvLevelScale4x4Chroma,@object  # @InvLevelScale4x4Chroma
	.comm	InvLevelScale4x4Chroma,8,8
	.type	InvLevelScale8x8Luma,@object    # @InvLevelScale8x8Luma
	.comm	InvLevelScale8x8Luma,8,8
	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"Parsing QMatrix file %s "
	.size	.L.str.10, 25

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"\nError: %s\nProceeding with default values for all matrices."
	.size	.L.str.11, 60

	.type	UseDefaultScalingMatrix4x4Flag,@object # @UseDefaultScalingMatrix4x4Flag
	.comm	UseDefaultScalingMatrix4x4Flag,12,2
	.type	UseDefaultScalingMatrix8x8Flag,@object # @UseDefaultScalingMatrix8x8Flag
	.comm	UseDefaultScalingMatrix8x8Flag,4,2
	.type	active_sps,@object              # @active_sps
	.comm	active_sps,8,8
	.type	active_pps,@object              # @active_pps
	.comm	active_pps,8,8
	.type	ScalingList4x4,@object          # @ScalingList4x4
	.comm	ScalingList4x4,192,2
	.type	ScalingList8x8,@object          # @ScalingList8x8
	.comm	ScalingList8x8,256,2
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
	.type	b8_ipredmode8x8,@object         # @b8_ipredmode8x8
	.comm	b8_ipredmode8x8,16,1
	.type	b8_intra_pred_modes8x8,@object  # @b8_intra_pred_modes8x8
	.comm	b8_intra_pred_modes8x8,16,1
	.type	gop_structure,@object           # @gop_structure
	.comm	gop_structure,8,8
	.type	rdopt,@object                   # @rdopt
	.comm	rdopt,8,8
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
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym MatrixType4x4
	.addrsig_sym MatrixType8x8
	.addrsig_sym errortext
	.addrsig_sym LevelScale4x4Luma
	.addrsig_sym LevelScale4x4Chroma
	.addrsig_sym LevelScale8x8Luma
	.addrsig_sym InvLevelScale4x4Luma
	.addrsig_sym InvLevelScale4x4Chroma
	.addrsig_sym InvLevelScale8x8Luma
