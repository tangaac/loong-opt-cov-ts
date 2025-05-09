	.file	"macroblock.c"
	.text
	.globl	start_macroblock                # -- Begin function start_macroblock
	.p2align	5
	.type	start_macroblock,@function
start_macroblock:                       # @start_macroblock
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
	ldptr.d	$s1, $a0, 5600
	ld.wu	$s2, $a0, 4
	ldptr.w	$a0, $a0, 5624
	ori	$a1, $zero, 408
	mul.d	$a1, $s2, $a1
	add.d	$s0, $s1, $a1
	beqz	$a0, .LBB0_2
# %bb.1:
	ld.w	$a0, $fp, 48
	bstrpick.d	$a1, $a0, 62, 60
	add.w	$a0, $a0, $a1
	srai.d	$a0, $a0, 3
	addi.w	$a1, $a0, 0
	addi.w	$a2, $s2, 0
	div.wu	$a2, $a2, $a1
	mul.d	$a0, $a2, $a0
	sub.w	$a1, $s2, $a0
	bstrpick.d	$a0, $a1, 31, 31
	add.w	$a0, $a1, $a0
	bstrins.d	$a1, $a2, 63, 1
	srai.d	$a0, $a0, 1
	st.w	$a0, $fp, 72
	b	.LBB0_3
.LBB0_2:
	pcalau12i	$a0, %pc_hi20(PicPos)
	ld.d	$a0, $a0, %pc_lo12(PicPos)
	slli.d	$a1, $s2, 3
	ldx.d	$a1, $a0, $a1
	ld.w	$a0, $a1, 0
	st.w	$a0, $fp, 72
	ld.w	$a1, $a1, 4
.LBB0_3:
	slli.d	$a2, $a1, 2
	st.w	$a2, $fp, 76
	lu12i.w	$a2, 1
	ori	$a3, $a2, 1840
	ldx.w	$a3, $fp, $a3
	slli.d	$a4, $a1, 4
	st.w	$a4, $fp, 80
	st.w	$a1, $fp, 68
	mul.d	$a3, $a3, $a1
	st.w	$a3, $fp, 88
	slli.d	$a3, $a0, 2
	st.w	$a3, $fp, 92
	ori	$a2, $a2, 1836
	ldx.w	$a3, $fp, $a2
	slli.d	$a2, $a0, 4
	st.w	$a2, $fp, 84
	ld.w	$a2, $fp, 12
	mul.d	$a3, $a3, $a0
	st.w	$a3, $fp, 96
	ori	$a3, $zero, 50
	st.w	$a2, $s0, 12
	blt	$a2, $a3, .LBB0_5
# %bb.4:
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	ori	$a1, $zero, 200
	pcaddu18i	$ra, %call36(error)
	jirl	$ra, $ra, 0
	ld.w	$a2, $fp, 12
	ld.w	$a1, $fp, 68
	ld.w	$a0, $fp, 72
.LBB0_5:
	pcalau12i	$a3, %got_pc_hi20(dec_picture)
	ld.d	$a3, $a3, %got_pc_lo12(dec_picture)
	ld.d	$a4, $a3, 0
	lu12i.w	$a3, 77
	ori	$a5, $a3, 1468
	add.d	$a3, $a4, $a5
	ld.d	$a6, $a3, 84
	addi.w	$a1, $a1, 0
	slli.d	$a1, $a1, 3
	ldx.d	$a1, $a6, $a1
	addi.w	$a0, $a0, 0
	slli.d	$a0, $a0, 1
	stx.h	$a2, $a1, $a0
	ldx.h	$a0, $a4, $a5
	bge	$a0, $a2, .LBB0_7
# %bb.6:
	st.h	$a2, $a3, 0
.LBB0_7:
	pcaddu18i	$ra, %call36(CheckAvailabilityOfNeighbors)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 28
	st.w	$a0, $s0, 0
	st.w	$zero, $s0, 40
	st.w	$zero, $s0, 16
	st.w	$zero, $s0, 300
	st.w	$zero, $s0, 352
	ori	$a0, $zero, 408
	mul.d	$a0, $s2, $a0
	add.d	$a0, $s1, $a0
	addi.d	$a0, $a0, 44
	ori	$a2, $zero, 256
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	vrepli.b	$vr0, 0
	vst	$vr0, $s0, 304
	addi.d	$a0, $fp, 1384
	ori	$a2, $zero, 1024
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ldptr.d	$a0, $fp, 5592
	ld.w	$a1, $a0, 136
	st.w	$a1, $s0, 340
	ld.d	$a0, $a0, 140
	st.d	$a0, $s0, 344
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end0:
	.size	start_macroblock, .Lfunc_end0-start_macroblock
                                        # -- End function
	.globl	exit_macroblock                 # -- Begin function exit_macroblock
	.p2align	5
	.type	exit_macroblock,@function
exit_macroblock:                        # @exit_macroblock
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	move	$s0, $a0
	ld.w	$a0, $a0, 8
	ldptr.w	$a1, $s0, 5836
	addi.w	$a0, $a0, 1
	st.w	$a0, $s0, 8
	ori	$fp, $zero, 1
	beq	$a0, $a1, .LBB1_8
# %bb.1:
	move	$s1, $a2
	ld.w	$a0, $s0, 4
	pcaddu18i	$ra, %call36(FmoGetNextMBNr)
	jirl	$ra, $ra, 0
	addi.w	$a1, $zero, -1
	st.w	$a0, $s0, 4
	beq	$a0, $a1, .LBB1_8
# %bb.2:
	pcalau12i	$a0, %pc_hi20(nal_startcode_follows)
	ld.d	$a2, $a0, %pc_lo12(nal_startcode_follows)
	move	$a0, $s0
	move	$a1, $s1
	jirl	$ra, $a2, 0
	beqz	$a0, .LBB1_7
# %bb.3:
	ld.w	$a0, $s0, 44
	ori	$a1, $zero, 2
	beq	$a0, $a1, .LBB1_8
# %bb.4:
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB1_8
# %bb.5:
	pcalau12i	$a0, %pc_hi20(active_pps)
	ld.d	$a0, $a0, %pc_lo12(active_pps)
	ld.w	$a0, $a0, 12
	ori	$fp, $zero, 1
	beq	$a0, $fp, .LBB1_8
# %bb.6:
	ldptr.w	$a0, $s0, 5576
	slti	$fp, $a0, 1
	b	.LBB1_8
.LBB1_7:
	move	$fp, $zero
.LBB1_8:
	move	$a0, $fp
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end1:
	.size	exit_macroblock, .Lfunc_end1-exit_macroblock
                                        # -- End function
	.globl	interpret_mb_mode_P             # -- Begin function interpret_mb_mode_P
	.p2align	5
	.type	interpret_mb_mode_P,@function
interpret_mb_mode_P:                    # @interpret_mb_mode_P
# %bb.0:
	ld.wu	$a1, $a0, 4
	ldptr.d	$a2, $a0, 5600
	ori	$a3, $zero, 408
	mul.d	$a1, $a1, $a3
	add.d	$a1, $a2, $a1
	ld.w	$a2, $a1, 40
	ori	$a3, $zero, 3
	blt	$a3, $a2, .LBB2_2
# %bb.1:
	andi	$a0, $a2, 255
	lu12i.w	$a2, 4112
	ori	$a2, $a2, 257
	mul.d	$a0, $a0, $a2
	st.w	$a0, $a1, 328
	st.w	$zero, $a1, 332
	ret
.LBB2_2:
	bstrpick.d	$a3, $a2, 30, 1
	slli.d	$a3, $a3, 1
	ori	$a4, $zero, 4
	bne	$a3, $a4, .LBB2_4
# %bb.3:
	addi.d	$a2, $a2, -5
	sltui	$a2, $a2, 1
	ori	$a3, $zero, 8
	st.w	$a3, $a1, 40
	st.w	$a2, $a0, 100
	ret
.LBB2_4:
	ori	$a0, $zero, 31
	beq	$a2, $a0, .LBB2_7
# %bb.5:
	ori	$a0, $zero, 6
	bne	$a2, $a0, .LBB2_8
# %bb.6:
	ori	$a0, $zero, 9
	st.w	$a0, $a1, 40
	lu12i.w	$a0, 45232
	ori	$a0, $a0, 2827
	lu32i.d	$a0, -1
	st.d	$a0, $a1, 328
	ret
.LBB2_7:
	ori	$a0, $zero, 14
	st.w	$a0, $a1, 40
	addi.w	$a0, $zero, -1
	lu32i.d	$a0, 0
	st.w	$a0, $a1, 300
	st.d	$zero, $a1, 324
	st.w	$a0, $a1, 332
	ret
.LBB2_8:
	ori	$a0, $zero, 10
	st.w	$a0, $a1, 40
	addi.d	$a0, $a2, -7
	bstrpick.d	$a2, $a0, 31, 2
	slli.d	$a2, $a2, 2
	pcalau12i	$a3, %pc_hi20(.L__const.interpret_mb_mode_SI.ICBPTAB)
	addi.d	$a3, $a3, %pc_lo12(.L__const.interpret_mb_mode_SI.ICBPTAB)
	ldx.w	$a2, $a3, $a2
	st.w	$a2, $a1, 300
	andi	$a0, $a0, 3
	st.w	$a0, $a1, 324
	ori	$a0, $zero, 0
	lu32i.d	$a0, -1
	st.d	$a0, $a1, 328
	ret
.Lfunc_end2:
	.size	interpret_mb_mode_P, .Lfunc_end2-interpret_mb_mode_P
                                        # -- End function
	.globl	interpret_mb_mode_I             # -- Begin function interpret_mb_mode_I
	.p2align	5
	.type	interpret_mb_mode_I,@function
interpret_mb_mode_I:                    # @interpret_mb_mode_I
# %bb.0:
	ld.wu	$a1, $a0, 4
	ldptr.d	$a0, $a0, 5600
	ori	$a2, $zero, 408
	mul.d	$a1, $a1, $a2
	add.d	$a0, $a0, $a1
	ld.w	$a2, $a0, 40
	ori	$a3, $zero, 25
	addi.w	$a1, $zero, -1
	beq	$a2, $a3, .LBB3_3
# %bb.1:
	bnez	$a2, .LBB3_4
# %bb.2:
	ori	$a2, $zero, 9
	st.w	$a2, $a0, 40
	lu12i.w	$a2, 45232
	ori	$a2, $a2, 2827
	st.w	$a2, $a0, 328
	lu32i.d	$a1, 0
	st.w	$a1, $a0, 332
	ret
.LBB3_3:
	move	$a2, $zero
	ori	$a3, $zero, 14
	st.w	$a3, $a0, 40
	move	$a3, $a1
	lu32i.d	$a3, 0
	st.w	$a3, $a0, 300
	st.w	$zero, $a0, 324
	st.w	$a2, $a0, 328
	lu32i.d	$a1, 0
	st.w	$a1, $a0, 332
	ret
.LBB3_4:
	ori	$a3, $zero, 10
	st.w	$a3, $a0, 40
	addi.w	$a2, $a2, -1
	andi	$a3, $a2, 3
	bstrins.d	$a2, $zero, 1, 0
	pcalau12i	$a4, %pc_hi20(.L__const.interpret_mb_mode_SI.ICBPTAB)
	addi.d	$a4, $a4, %pc_lo12(.L__const.interpret_mb_mode_SI.ICBPTAB)
	ldx.w	$a4, $a4, $a2
	move	$a2, $zero
	st.w	$a4, $a0, 300
	st.w	$a3, $a0, 324
	st.w	$a2, $a0, 328
	lu32i.d	$a1, 0
	st.w	$a1, $a0, 332
	ret
.Lfunc_end3:
	.size	interpret_mb_mode_I, .Lfunc_end3-interpret_mb_mode_I
                                        # -- End function
	.globl	interpret_mb_mode_B             # -- Begin function interpret_mb_mode_B
	.p2align	5
	.type	interpret_mb_mode_B,@function
interpret_mb_mode_B:                    # @interpret_mb_mode_B
# %bb.0:
	ld.wu	$a1, $a0, 4
	ldptr.d	$a0, $a0, 5600
	ori	$a2, $zero, 408
	mul.d	$a1, $a1, $a2
	add.d	$a0, $a0, $a1
	ld.w	$a1, $a0, 40
	ori	$a2, $zero, 23
	beq	$a1, $a2, .LBB4_3
# %bb.1:
	bnez	$a1, .LBB4_4
# %bb.2:
	ori	$a1, $zero, 0
	lu32i.d	$a1, 131586
	lu52i.d	$a1, $a1, 32
	st.d	$a1, $a0, 328
	st.w	$zero, $a0, 40
	ret
.LBB4_3:
	lu12i.w	$a1, 45232
	ori	$a1, $a1, 2827
	lu32i.d	$a1, -1
	st.d	$a1, $a0, 328
	ori	$a2, $zero, 9
	st.w	$a2, $a0, 40
	ret
.LBB4_4:
	addi.w	$a2, $a1, -24
	ori	$a3, $zero, 23
	bltu	$a3, $a2, .LBB4_6
# %bb.5:
	ori	$a3, $zero, 0
	lu32i.d	$a3, -1
	st.d	$a3, $a0, 328
	bstrpick.d	$a2, $a2, 31, 2
	slli.d	$a2, $a2, 2
	pcalau12i	$a3, %pc_hi20(.L__const.interpret_mb_mode_SI.ICBPTAB)
	addi.d	$a3, $a3, %pc_lo12(.L__const.interpret_mb_mode_SI.ICBPTAB)
	ldx.w	$a2, $a3, $a2
	st.w	$a2, $a0, 300
	andi	$a1, $a1, 3
	st.w	$a1, $a0, 324
	ori	$a2, $zero, 10
	st.w	$a2, $a0, 40
	ret
.LBB4_6:
	ori	$a3, $zero, 22
	ori	$a2, $zero, 8
	bne	$a1, $a3, .LBB4_8
# %bb.7:                                # %.loopexit
	st.w	$a2, $a0, 40
	ret
.LBB4_8:
	ori	$a2, $zero, 3
	blt	$a2, $a1, .LBB4_10
# %bb.9:
	lu12i.w	$a2, 4112
	ori	$a2, $a2, 257
	st.w	$a2, $a0, 328
	slli.d	$a1, $a1, 2
	pcalau12i	$a3, %pc_hi20(interpret_mb_mode_B.offset2pdir16x16)
	addi.d	$a3, $a3, %pc_lo12(interpret_mb_mode_B.offset2pdir16x16)
	ldx.bu	$a1, $a3, $a1
	mul.d	$a1, $a1, $a2
	st.w	$a1, $a0, 332
	ori	$a2, $zero, 1
	st.w	$a2, $a0, 40
	ret
.LBB4_10:
	ori	$a2, $zero, 48
	bne	$a1, $a2, .LBB4_12
# %bb.11:
	addi.w	$a1, $zero, -1
	lu32i.d	$a1, 0
	st.w	$a1, $a0, 332
	st.w	$a1, $a0, 300
	st.d	$zero, $a0, 324
	ori	$a2, $zero, 14
	st.w	$a2, $a0, 40
	ret
.LBB4_12:
	andi	$a2, $a1, 1
	bnez	$a2, .LBB4_14
# %bb.13:                               # %.loopexit.loopexit
	lu12i.w	$a2, 8224
	ori	$a2, $a2, 514
	st.w	$a2, $a0, 328
	pcalau12i	$a2, %pc_hi20(interpret_mb_mode_B.offset2pdir16x8)
	addi.d	$a2, $a2, %pc_lo12(interpret_mb_mode_B.offset2pdir16x8)
	slli.d	$a3, $a1, 3
	ldx.b	$a3, $a2, $a3
	alsl.d	$a1, $a1, $a2, 3
	st.b	$a3, $a0, 332
	st.b	$a3, $a0, 333
	ld.b	$a1, $a1, 4
	st.b	$a1, $a0, 334
	st.b	$a1, $a0, 335
	ori	$a2, $zero, 2
	st.w	$a2, $a0, 40
	ret
.LBB4_14:                               # %.loopexit.loopexit49
	lu12i.w	$a2, 12336
	ori	$a2, $a2, 771
	st.w	$a2, $a0, 328
	pcalau12i	$a2, %pc_hi20(interpret_mb_mode_B.offset2pdir8x16)
	addi.d	$a2, $a2, %pc_lo12(interpret_mb_mode_B.offset2pdir8x16)
	slli.d	$a3, $a1, 3
	ldx.b	$a3, $a2, $a3
	alsl.d	$a1, $a1, $a2, 3
	st.b	$a3, $a0, 332
	ld.b	$a1, $a1, 4
	st.b	$a1, $a0, 333
	st.b	$a3, $a0, 334
	st.b	$a1, $a0, 335
	ori	$a2, $zero, 3
	st.w	$a2, $a0, 40
	ret
.Lfunc_end4:
	.size	interpret_mb_mode_B, .Lfunc_end4-interpret_mb_mode_B
                                        # -- End function
	.globl	interpret_mb_mode_SI            # -- Begin function interpret_mb_mode_SI
	.p2align	5
	.type	interpret_mb_mode_SI,@function
interpret_mb_mode_SI:                   # @interpret_mb_mode_SI
# %bb.0:
	ld.wu	$a1, $a0, 4
	ldptr.d	$a2, $a0, 5600
	ori	$a3, $zero, 408
	mul.d	$a1, $a1, $a3
	add.d	$a1, $a2, $a1
	ld.w	$a2, $a1, 40
	ori	$a3, $zero, 26
	beq	$a2, $a3, .LBB5_5
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB5_4
# %bb.2:
	bnez	$a2, .LBB5_6
# %bb.3:
	lu12i.w	$a2, 45232
	ori	$a2, $a2, 2827
	lu32i.d	$a2, -1
	st.d	$a2, $a1, 328
	ld.w	$a2, $a0, 68
	ldptr.d	$a3, $a0, 5568
	ori	$a4, $zero, 12
	ld.w	$a0, $a0, 72
	slli.d	$a2, $a2, 3
	ldx.d	$a2, $a3, $a2
	st.w	$a4, $a1, 40
	slli.d	$a0, $a0, 2
	ori	$a1, $zero, 1
	stx.w	$a1, $a2, $a0
	ret
.LBB5_4:
	ori	$a0, $zero, 9
	st.w	$a0, $a1, 40
	lu12i.w	$a0, 45232
	ori	$a0, $a0, 2827
	lu32i.d	$a0, -1
	st.d	$a0, $a1, 328
	ret
.LBB5_5:
	ori	$a0, $zero, 14
	st.w	$a0, $a1, 40
	addi.w	$a0, $zero, -1
	lu32i.d	$a0, 0
	st.w	$a0, $a1, 300
	st.d	$zero, $a1, 324
	st.w	$a0, $a1, 332
	ret
.LBB5_6:
	ori	$a0, $zero, 10
	st.w	$a0, $a1, 40
	addi.w	$a0, $a2, -1
	bstrins.d	$a0, $zero, 1, 0
	pcalau12i	$a3, %pc_hi20(.L__const.interpret_mb_mode_SI.ICBPTAB)
	addi.d	$a3, $a3, %pc_lo12(.L__const.interpret_mb_mode_SI.ICBPTAB)
	ldx.w	$a0, $a3, $a0
	st.w	$a0, $a1, 300
	andi	$a0, $a2, 3
	xori	$a0, $a0, 2
	st.w	$a0, $a1, 324
	ori	$a0, $zero, 0
	lu32i.d	$a0, -1
	st.d	$a0, $a1, 328
	ret
.Lfunc_end5:
	.size	interpret_mb_mode_SI, .Lfunc_end5-interpret_mb_mode_SI
                                        # -- End function
	.globl	init_macroblock                 # -- Begin function init_macroblock
	.p2align	5
	.type	init_macroblock,@function
init_macroblock:                        # @init_macroblock
# %bb.0:                                # %.lr.ph
	pcalau12i	$a1, %got_pc_hi20(dec_picture)
	ld.d	$a1, $a1, %got_pc_lo12(dec_picture)
	ld.w	$a3, $a0, 76
	ld.d	$t2, $a1, 0
	ld.w	$t3, $a0, 92
	addi.d	$a2, $a3, -1
	slli.d	$a3, $a3, 3
	lu12i.w	$t0, 77
	ori	$a4, $t0, 1584
	vrepli.b	$vr0, 0
	ori	$a5, $t0, 1560
	addi.w	$a6, $zero, -1
	lu32i.d	$a6, 0
	lu12i.w	$a7, 8224
	ori	$a7, $a7, 514
	ori	$t0, $t0, 1568
	lu52i.d	$t1, $zero, -2048
	.p2align	4, , 16
.LBB6_1:                                # =>This Inner Loop Header: Depth=1
	ldx.d	$t2, $t2, $a4
	ld.d	$t2, $t2, 0
	ldx.d	$t2, $t2, $a3
	slli.d	$t3, $t3, 3
	ldx.d	$t2, $t2, $t3
	vst	$vr0, $t2, 0
	ld.d	$t2, $a1, 0
	ldx.d	$t2, $t2, $a4
	ld.d	$t2, $t2, 8
	ld.w	$t3, $a0, 92
	ldx.d	$t2, $t2, $a3
	slli.d	$t3, $t3, 3
	ldx.d	$t2, $t2, $t3
	vst	$vr0, $t2, 0
	ld.d	$t2, $a1, 0
	ldx.d	$t2, $t2, $a5
	ld.d	$t2, $t2, 0
	ldx.d	$t2, $t2, $a3
	ld.w	$t3, $a0, 92
	stx.w	$a6, $t2, $t3
	ld.d	$t2, $a1, 0
	ldx.d	$t2, $t2, $a5
	ld.d	$t2, $t2, 8
	ldx.d	$t2, $t2, $a3
	ld.w	$t3, $a0, 92
	stx.w	$a6, $t2, $t3
	ldptr.d	$t2, $a0, 5544
	ldx.d	$t2, $t2, $a3
	ld.w	$t3, $a0, 92
	stx.w	$a7, $t2, $t3
	ld.d	$t2, $a1, 0
	ldx.d	$t3, $t2, $t0
	ld.d	$t4, $t3, 0
	ld.d	$t5, $t3, 8
	ld.w	$t3, $a0, 92
	ldx.d	$t4, $t4, $a3
	ldx.d	$t5, $t5, $a3
	slli.d	$t6, $t3, 3
	stx.d	$t1, $t4, $t6
	stx.d	$t1, $t5, $t6
	addi.d	$t7, $t6, 8
	stx.d	$t1, $t4, $t7
	stx.d	$t1, $t5, $t7
	addi.d	$t7, $t6, 16
	stx.d	$t1, $t4, $t7
	stx.d	$t1, $t5, $t7
	ld.w	$t7, $a0, 76
	addi.d	$t6, $t6, 24
	stx.d	$t1, $t4, $t6
	stx.d	$t1, $t5, $t6
	addi.w	$t4, $t7, 3
	addi.d	$a2, $a2, 1
	addi.d	$a3, $a3, 8
	blt	$a2, $t4, .LBB6_1
# %bb.2:                                # %._crit_edge
	ret
.Lfunc_end6:
	.size	init_macroblock, .Lfunc_end6-init_macroblock
                                        # -- End function
	.globl	SetB8Mode                       # -- Begin function SetB8Mode
	.p2align	5
	.type	SetB8Mode,@function
SetB8Mode:                              # @SetB8Mode
# %bb.0:
	ld.w	$a4, $a0, 44
	ori	$a5, $zero, 1
	addi.d	$a0, $a1, 328
	bne	$a4, $a5, .LBB7_2
# %bb.1:
	slli.d	$a4, $a2, 2
	pcalau12i	$a5, %pc_hi20(SetB8Mode.b_v2b8)
	addi.d	$a5, $a5, %pc_lo12(SetB8Mode.b_v2b8)
	ldx.b	$a4, $a5, $a4
	stx.b	$a4, $a0, $a3
	pcalau12i	$a0, %pc_hi20(SetB8Mode.b_v2pd)
	addi.d	$a0, $a0, %pc_lo12(SetB8Mode.b_v2pd)
	b	.LBB7_3
.LBB7_2:
	slli.d	$a4, $a2, 2
	pcalau12i	$a5, %pc_hi20(SetB8Mode.p_v2b8)
	addi.d	$a5, $a5, %pc_lo12(SetB8Mode.p_v2b8)
	ldx.b	$a4, $a5, $a4
	stx.b	$a4, $a0, $a3
	pcalau12i	$a0, %pc_hi20(SetB8Mode.p_v2pd)
	addi.d	$a0, $a0, %pc_lo12(SetB8Mode.p_v2pd)
.LBB7_3:
	alsl.d	$a0, $a2, $a0, 2
	ld.b	$a0, $a0, 0
	add.d	$a1, $a1, $a3
	st.b	$a0, $a1, 332
	ret
.Lfunc_end7:
	.size	SetB8Mode, .Lfunc_end7-SetB8Mode
                                        # -- End function
	.globl	reset_coeffs                    # -- Begin function reset_coeffs
	.p2align	5
	.type	reset_coeffs,@function
reset_coeffs:                           # @reset_coeffs
# %bb.0:
	pcalau12i	$a0, %got_pc_hi20(img)
	ld.d	$a1, $a0, %got_pc_lo12(img)
	ld.d	$a0, $a1, 0
	ldptr.w	$a3, $a0, 5924
	addi.w	$a2, $zero, -3
	blt	$a3, $a2, .LBB8_12
# %bb.1:                                # %.lr.ph.preheader
	addi.w	$a4, $zero, -1
	ori	$a5, $zero, 2408
	vrepli.b	$vr0, 0
	.p2align	4, , 16
.LBB8_2:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a3, $a0, $a5
	vstx	$vr0, $a0, $a5
	vst	$vr0, $a3, 48
	vst	$vr0, $a3, 32
	vst	$vr0, $a3, 16
	ld.d	$a0, $a1, 0
	ldptr.w	$a3, $a0, 5924
	addi.w	$a6, $a3, 3
	addi.d	$a4, $a4, 1
	addi.d	$a5, $a5, 64
	blt	$a4, $a6, .LBB8_2
# %bb.3:                                # %._crit_edge
	blt	$a3, $a2, .LBB8_12
# %bb.4:                                # %.lr.ph.1.preheader
	ori	$a4, $zero, 3176
	addi.w	$a5, $zero, -1
	.p2align	4, , 16
.LBB8_5:                                # %.lr.ph.1
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a3, $a0, $a4
	vstx	$vr0, $a0, $a4
	vst	$vr0, $a3, 48
	vst	$vr0, $a3, 32
	vst	$vr0, $a3, 16
	ld.d	$a0, $a1, 0
	ldptr.w	$a3, $a0, 5924
	addi.w	$a6, $a3, 3
	addi.d	$a5, $a5, 1
	addi.d	$a4, $a4, 64
	blt	$a5, $a6, .LBB8_5
# %bb.6:                                # %._crit_edge.1
	blt	$a3, $a2, .LBB8_12
# %bb.7:                                # %.lr.ph.2.preheader
	ori	$a4, $zero, 3944
	addi.w	$a5, $zero, -1
	.p2align	4, , 16
.LBB8_8:                                # %.lr.ph.2
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a3, $a0, $a4
	vstx	$vr0, $a0, $a4
	vst	$vr0, $a3, 48
	vst	$vr0, $a3, 32
	vst	$vr0, $a3, 16
	ld.d	$a0, $a1, 0
	ldptr.w	$a3, $a0, 5924
	addi.w	$a6, $a3, 3
	addi.d	$a5, $a5, 1
	addi.d	$a4, $a4, 64
	blt	$a5, $a6, .LBB8_8
# %bb.9:                                # %._crit_edge.2
	blt	$a3, $a2, .LBB8_12
# %bb.10:                               # %.lr.ph.3.preheader
	addi.w	$a2, $zero, -1
	lu12i.w	$a3, 1
	ori	$a4, $a3, 616
	ori	$a5, $a3, 1828
	.p2align	4, , 16
.LBB8_11:                               # %.lr.ph.3
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a3, $a0, $a4
	vstx	$vr0, $a0, $a4
	vst	$vr0, $a3, 48
	vst	$vr0, $a3, 32
	vst	$vr0, $a3, 16
	ld.d	$a0, $a1, 0
	ldx.w	$a3, $a0, $a5
	addi.w	$a6, $a3, 3
	addi.d	$a2, $a2, 1
	addi.d	$a4, $a4, 64
	blt	$a2, $a6, .LBB8_11
.LBB8_12:                               # %.split10.us
	ld.wu	$a1, $a0, 4
	ldptr.d	$a0, $a0, 5560
	slli.d	$a1, $a1, 3
	ldx.d	$a0, $a0, $a1
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 16
	alsl.w	$a1, $a3, $a1, 2
	slli.d	$a2, $a1, 2
	move	$a1, $zero
	pcaddu18i	$t8, %call36(memset)
	jr	$t8
.Lfunc_end8:
	.size	reset_coeffs, .Lfunc_end8-reset_coeffs
                                        # -- End function
	.globl	field_flag_inference            # -- Begin function field_flag_inference
	.p2align	5
	.type	field_flag_inference,@function
field_flag_inference:                   # @field_flag_inference
# %bb.0:
	pcalau12i	$a0, %got_pc_hi20(img)
	ld.d	$a0, $a0, %got_pc_lo12(img)
	ld.d	$a0, $a0, 0
	ld.wu	$a3, $a0, 4
	ldptr.d	$a1, $a0, 5600
	ori	$a2, $zero, 408
	mul.d	$a0, $a3, $a2
	add.d	$a0, $a1, $a0
	ld.w	$a4, $a0, 380
	ori	$a3, $zero, 364
	bnez	$a4, .LBB9_2
# %bb.1:
	ld.w	$a4, $a0, 384
	ori	$a3, $zero, 368
	beqz	$a4, .LBB9_3
.LBB9_2:                                # %.sink.split
	ldx.w	$a3, $a0, $a3
	mul.d	$a2, $a3, $a2
	add.d	$a1, $a1, $a2
	ld.w	$a1, $a1, 356
	st.w	$a1, $a0, 356
	ret
.LBB9_3:
	st.w	$zero, $a0, 356
	ret
.Lfunc_end9:
	.size	field_flag_inference, .Lfunc_end9-field_flag_inference
                                        # -- End function
	.globl	set_chroma_qp                   # -- Begin function set_chroma_qp
	.p2align	5
	.type	set_chroma_qp,@function
set_chroma_qp:                          # @set_chroma_qp
# %bb.0:
	pcalau12i	$a1, %got_pc_hi20(img)
	ld.d	$a1, $a1, %got_pc_lo12(img)
	pcalau12i	$a2, %got_pc_hi20(dec_picture)
	ld.d	$a3, $a2, %got_pc_lo12(dec_picture)
	ld.d	$a2, $a1, 0
	ld.w	$a1, $a0, 0
	ld.d	$a4, $a3, 0
	lu12i.w	$a3, 77
	ori	$a5, $a3, 1684
	lu12i.w	$a3, 1
	ori	$a3, $a3, 1792
	ldx.w	$a6, $a2, $a3
	ldx.w	$a7, $a4, $a5
	add.d	$a4, $a4, $a5
	sub.w	$a5, $zero, $a6
	add.w	$a6, $a7, $a1
	slt	$a7, $a5, $a6
	masknez	$a5, $a5, $a7
	maskeqz	$a6, $a6, $a7
	or	$t0, $a6, $a5
	slti	$a6, $t0, 51
	maskeqz	$a7, $t0, $a6
	ori	$a5, $zero, 51
	masknez	$a6, $a5, $a6
	or	$a7, $a7, $a6
	pcalau12i	$a6, %pc_hi20(QP_SCALE_CR)
	addi.d	$a6, $a6, %pc_lo12(QP_SCALE_CR)
	bltz	$t0, .LBB10_2
# %bb.1:
	ldx.bu	$a7, $a6, $a7
.LBB10_2:
	st.w	$a7, $a0, 4
	ldx.w	$a2, $a2, $a3
	ld.w	$a3, $a4, 4
	sub.w	$a2, $zero, $a2
	add.w	$a1, $a3, $a1
	slt	$a3, $a2, $a1
	masknez	$a2, $a2, $a3
	maskeqz	$a1, $a1, $a3
	or	$a2, $a1, $a2
	slti	$a1, $a2, 51
	maskeqz	$a3, $a2, $a1
	masknez	$a1, $a5, $a1
	or	$a1, $a3, $a1
	bltz	$a2, .LBB10_4
# %bb.3:
	ldx.bu	$a1, $a6, $a1
.LBB10_4:
	st.w	$a1, $a0, 8
	ret
.Lfunc_end10:
	.size	set_chroma_qp, .Lfunc_end10-set_chroma_qp
                                        # -- End function
	.globl	read_one_macroblock             # -- Begin function read_one_macroblock
	.p2align	5
	.type	read_one_macroblock,@function
read_one_macroblock:                    # @read_one_macroblock
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
	move	$fp, $a0
	ldptr.d	$s5, $a0, 5592
	ldptr.d	$a2, $a0, 5600
	ld.wu	$a3, $a0, 4
	ori	$a4, $zero, 408
	ld.w	$a0, $s5, 28
	ldptr.w	$a5, $fp, 5624
	mul.d	$a4, $a3, $a4
	add.d	$s4, $a2, $a4
	slli.d	$a7, $a0, 6
	andi	$a4, $a3, 1
	st.d	$a1, $sp, 16                    # 8-byte Folded Spill
	beqz	$a5, .LBB11_4
# %bb.1:
	beqz	$a4, .LBB11_4
# %bb.2:
	addi.d	$a3, $a3, -1
	bstrpick.d	$a3, $a3, 31, 0
	ld.w	$a4, $fp, 44
	ori	$a5, $zero, 408
	mul.d	$a5, $a3, $a5
	ori	$a6, $zero, 1
	add.d	$s3, $a2, $a5
	bne	$a4, $a6, .LBB11_7
# %bb.3:
	ld.w	$s0, $s3, 360
	b	.LBB11_8
.LBB11_4:
	bnez	$a4, .LBB11_6
# %bb.5:
	move	$a2, $zero
	move	$s3, $zero
	move	$s0, $zero
	b	.LBB11_9
.LBB11_6:                               # %..thread_crit_edge
	move	$s3, $zero
	move	$s0, $zero
	addi.d	$a3, $a3, -1
	bstrpick.d	$a3, $a3, 31, 0
	b	.LBB11_8
.LBB11_7:
	ld.w	$a4, $s3, 40
	sltui	$s0, $a4, 1
.LBB11_8:                               # %.thread
	ori	$a4, $zero, 408
	mul.d	$a3, $a3, $a4
	add.d	$a2, $a2, $a3
	ld.w	$a2, $a2, 356
.LBB11_9:
	alsl.d	$a0, $a0, $a7, 4
	ld.w	$a3, $fp, 28
	pcalau12i	$a1, %got_pc_hi20(dec_picture)
	ld.d	$s2, $a1, %got_pc_lo12(dec_picture)
	pcalau12i	$a1, %got_pc_hi20(assignSE2partition)
	st.w	$a2, $s4, 356
	st.w	$a3, $s4, 0
	ld.d	$a4, $s2, 0
	lu12i.w	$s6, 77
	ori	$a5, $s6, 1684
	lu12i.w	$s8, 1
	ori	$a2, $s8, 1792
	ldx.w	$a6, $fp, $a2
	ldx.w	$a7, $a4, $a5
	ld.d	$a1, $a1, %got_pc_lo12(assignSE2partition)
	add.d	$a5, $a4, $a5
	sub.w	$a4, $zero, $a6
	add.w	$a3, $a7, $a3
	slt	$a6, $a4, $a3
	masknez	$a4, $a4, $a6
	maskeqz	$a3, $a3, $a6
	or	$a7, $a3, $a4
	slti	$a4, $a7, 51
	maskeqz	$a6, $a7, $a4
	ori	$a3, $zero, 51
	masknez	$a4, $a3, $a4
	or	$a6, $a6, $a4
	pcalau12i	$a4, %pc_hi20(QP_SCALE_CR)
	addi.d	$a4, $a4, %pc_lo12(QP_SCALE_CR)
	bltz	$a7, .LBB11_11
# %bb.10:
	ldx.bu	$a6, $a4, $a6
.LBB11_11:
	st.w	$a6, $s4, 4
	ldx.w	$a2, $fp, $a2
	ld.w	$a6, $fp, 28
	ld.w	$a5, $a5, 4
	add.d	$a0, $a1, $a0
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	sub.w	$a0, $zero, $a2
	add.w	$a1, $a5, $a6
	slt	$a2, $a0, $a1
	masknez	$a0, $a0, $a2
	maskeqz	$a1, $a1, $a2
	or	$a1, $a1, $a0
	slti	$a0, $a1, 51
	maskeqz	$a2, $a1, $a0
	masknez	$a0, $a3, $a0
	or	$a0, $a2, $a0
	bltz	$a1, .LBB11_13
# %bb.12:
	ldx.bu	$a0, $a4, $a0
.LBB11_13:
	st.w	$a0, $s4, 8
	pcalau12i	$s7, %pc_hi20(active_pps)
	ld.d	$a0, $s7, %pc_lo12(active_pps)
	ori	$a1, $zero, 2
	ld.d	$a2, $s5, 40
	ld.d	$a3, $sp, 24                    # 8-byte Folded Reload
	ld.w	$a3, $a3, 8
	ld.w	$a0, $a0, 12
	st.w	$a1, $sp, 88
	ori	$a1, $zero, 56
	mul.d	$a1, $a3, $a1
	add.d	$s1, $a2, $a1
	beqz	$a0, .LBB11_15
# %bb.14:
	ld.d	$a1, $s1, 0
	ld.w	$a1, $a1, 24
	beqz	$a1, .LBB11_16
.LBB11_15:
	pcalau12i	$a1, %got_pc_hi20(linfo_ue)
	ld.d	$a1, $a1, %got_pc_lo12(linfo_ue)
	st.d	$a1, $sp, 120
.LBB11_16:
	ld.w	$a1, $fp, 44
	ori	$a2, $zero, 4
	beq	$a1, $a2, .LBB11_18
# %bb.17:
	ori	$a2, $zero, 2
	bne	$a1, $a2, .LBB11_23
.LBB11_18:
	ldptr.w	$a1, $fp, 5624
	beqz	$a1, .LBB11_68
# %bb.19:
	ld.bu	$a1, $fp, 4
	andi	$a1, $a1, 1
	bnez	$a1, .LBB11_68
# %bb.20:
	ld.d	$a1, $s1, 0
	beqz	$a0, .LBB11_22
# %bb.21:
	ld.w	$a0, $a1, 24
	beqz	$a0, .LBB11_66
.LBB11_22:
	ori	$a0, $zero, 1
	st.w	$a0, $sp, 100
	addi.d	$a0, $sp, 88
	pcaddu18i	$ra, %call36(readSyntaxElement_FLC)
	jirl	$ra, $ra, 0
	b	.LBB11_67
.LBB11_23:
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB11_34
# %bb.24:
	ldptr.w	$a0, $fp, 5624
	beqz	$a0, .LBB11_31
# %bb.25:
	ld.bu	$a0, $fp, 4
	andi	$a0, $a0, 1
	beqz	$a0, .LBB11_27
# %bb.26:
	beqz	$s0, .LBB11_31
.LBB11_27:
	pcalau12i	$a0, %got_pc_hi20(img)
	ld.d	$a0, $a0, %got_pc_lo12(img)
	ld.d	$a0, $a0, 0
	ld.wu	$a3, $a0, 4
	ldptr.d	$a1, $a0, 5600
	ori	$a2, $zero, 408
	mul.d	$a0, $a3, $a2
	add.d	$a0, $a1, $a0
	ld.w	$a4, $a0, 380
	ori	$a3, $zero, 364
	bnez	$a4, .LBB11_29
# %bb.28:
	ld.w	$a4, $a0, 384
	ori	$a3, $zero, 368
	beqz	$a4, .LBB11_210
.LBB11_29:                              # %.sink.split.i
	ldx.w	$a3, $a0, $a3
	mul.d	$a2, $a3, $a2
	add.d	$a1, $a1, $a2
	ld.w	$a1, $a1, 356
.LBB11_30:                              # %field_flag_inference.exit
	st.w	$a1, $a0, 356
.LBB11_31:
	pcaddu18i	$ra, %call36(CheckAvailabilityOfNeighborsCABAC)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(readMB_skip_flagInfo_CABAC)
	ld.d	$a0, $a0, %got_pc_lo12(readMB_skip_flagInfo_CABAC)
	ld.d	$a3, $s1, 48
	st.d	$a0, $sp, 128
	addi.d	$a0, $sp, 88
	move	$a1, $fp
	move	$a2, $s1
	jirl	$ra, $a3, 0
	ld.w	$a0, $sp, 92
	ld.w	$a1, $fp, 44
	st.w	$a0, $s4, 40
	sltui	$a2, $a0, 1
	ori	$a3, $zero, 1
	st.w	$a2, $s4, 360
	bne	$a1, $a3, .LBB11_43
# %bb.32:
	ld.w	$a2, $sp, 96
	st.w	$a2, $s4, 300
	ld.d	$a2, $s1, 0
	ld.w	$a2, $a2, 24
	bnez	$a2, .LBB11_44
.LBB11_33:
	st.w	$zero, $s4, 336
	ori	$a2, $zero, 1
	beq	$a1, $a2, .LBB11_45
	b	.LBB11_48
.LBB11_34:
	ldptr.w	$a0, $fp, 5576
	addi.w	$a1, $zero, -1
	beq	$a0, $a1, .LBB11_52
# %bb.35:
	beqz	$a0, .LBB11_53
.LBB11_36:
	addi.w	$a1, $a0, -1
	stptr.w	$a1, $fp, 5576
	ldptr.w	$a2, $fp, 5624
	st.w	$zero, $s4, 40
	st.w	$zero, $s4, 336
	ori	$a3, $zero, 1
	st.w	$a3, $s4, 360
	beqz	$a2, .LBB11_72
# %bb.37:
	beqz	$a1, .LBB11_207
# %bb.38:
	ori	$a1, $zero, 2
	blt	$a0, $a1, .LBB11_72
# %bb.39:
	ld.w	$a1, $fp, 4
	andi	$a0, $a1, 1
	bnez	$a0, .LBB11_72
# %bb.40:
	addi.w	$a0, $a1, -2
	pcaddu18i	$ra, %call36(mb_is_available)
	jirl	$ra, $ra, 0
	ori	$s0, $s8, 1724
	ldx.w	$a2, $fp, $s0
	ld.w	$a1, $fp, 4
	slli.w	$a2, $a2, 1
	beqz	$a0, .LBB11_211
# %bb.41:
	mod.wu	$a0, $a1, $a2
	beqz	$a0, .LBB11_211
# %bb.42:
	ldptr.d	$a0, $fp, 5600
	addi.d	$a1, $a1, -2
	bstrpick.d	$a1, $a1, 31, 0
	ori	$a2, $zero, 408
	mul.d	$a1, $a1, $a2
	add.d	$a0, $a0, $a1
	b	.LBB11_213
.LBB11_43:
	ld.d	$a2, $s1, 0
	ld.w	$a2, $a2, 24
	beqz	$a2, .LBB11_33
.LBB11_44:
	ori	$a2, $zero, 1
	bne	$a1, $a2, .LBB11_48
.LBB11_45:
	bnez	$a0, .LBB11_48
# %bb.46:
	ld.w	$a1, $sp, 96
	bnez	$a1, .LBB11_48
# %bb.47:
	stptr.w	$zero, $fp, 5576
.LBB11_48:
	ldptr.w	$a1, $fp, 5624
	beqz	$a1, .LBB11_65
# %bb.49:
	ld.bu	$a1, $fp, 4
	andi	$a1, $a1, 1
	bnez	$a1, .LBB11_62
# %bb.50:
	bnez	$a0, .LBB11_64
# %bb.51:
	addi.d	$a0, $sp, 88
	move	$a1, $fp
	move	$a2, $s1
	pcaddu18i	$ra, %call36(check_next_mb_and_get_field_mode_CABAC)
	jirl	$ra, $ra, 0
	b	.LBB11_65
.LBB11_52:
	ld.d	$a3, $s1, 48
	addi.d	$a0, $sp, 88
	move	$a1, $fp
	move	$a2, $s1
	jirl	$ra, $a3, 0
	ld.w	$a0, $sp, 92
	stptr.w	$a0, $fp, 5576
	bnez	$a0, .LBB11_36
.LBB11_53:
	ldptr.w	$a0, $fp, 5624
	beqz	$a0, .LBB11_57
# %bb.54:
	ld.bu	$a0, $fp, 4
	andi	$a0, $a0, 1
	beqz	$a0, .LBB11_56
# %bb.55:
	beqz	$s0, .LBB11_57
.LBB11_56:
	ld.d	$a1, $s1, 0
	ori	$a0, $zero, 1
	st.w	$a0, $sp, 100
	addi.d	$a0, $sp, 88
	pcaddu18i	$ra, %call36(readSyntaxElement_FLC)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 92
	st.w	$a0, $s4, 356
.LBB11_57:
	ld.d	$a3, $s1, 48
	addi.d	$a0, $sp, 88
	move	$a1, $fp
	move	$a2, $s1
	jirl	$ra, $a3, 0
	ld.w	$a0, $fp, 44
	beqz	$a0, .LBB11_59
# %bb.58:
	ori	$a1, $zero, 3
	bne	$a0, $a1, .LBB11_209
.LBB11_59:
	ld.w	$a0, $sp, 92
	addi.d	$a0, $a0, 1
	st.w	$a0, $sp, 92
	ld.d	$a1, $s1, 0
	ld.w	$a1, $a1, 24
	st.w	$a0, $s4, 40
	bnez	$a1, .LBB11_61
.LBB11_60:
	st.w	$zero, $s4, 336
.LBB11_61:
	ori	$a0, $s8, 1480
	ldx.w	$a0, $fp, $a0
	addi.d	$a0, $a0, -1
	stptr.w	$a0, $fp, 5576
	st.w	$zero, $s4, 360
	b	.LBB11_72
.LBB11_62:
	ld.w	$a1, $s3, 360
	beqz	$a1, .LBB11_65
# %bb.63:
	beqz	$a0, .LBB11_65
.LBB11_64:
	pcalau12i	$a0, %got_pc_hi20(readFieldModeInfo_CABAC)
	ld.d	$a0, $a0, %got_pc_lo12(readFieldModeInfo_CABAC)
	ld.d	$a3, $s1, 48
	st.d	$a0, $sp, 128
	addi.d	$a0, $sp, 88
	move	$a1, $fp
	move	$a2, $s1
	jirl	$ra, $a3, 0
	ld.w	$a0, $sp, 92
	st.w	$a0, $s4, 356
.LBB11_65:                              # %.thread440
	pcaddu18i	$ra, %call36(CheckAvailabilityOfNeighborsCABAC)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s4, 40
	bnez	$a0, .LBB11_70
	b	.LBB11_72
.LBB11_66:
	pcalau12i	$a0, %got_pc_hi20(readFieldModeInfo_CABAC)
	ld.d	$a0, $a0, %got_pc_lo12(readFieldModeInfo_CABAC)
	ld.d	$a3, $s1, 48
	st.d	$a0, $sp, 128
	addi.d	$a0, $sp, 88
	move	$a1, $fp
	move	$a2, $s1
	jirl	$ra, $a3, 0
.LBB11_67:
	ld.d	$a0, $s7, %pc_lo12(active_pps)
	ld.w	$a1, $sp, 92
	ld.w	$a0, $a0, 12
	st.w	$a1, $s4, 356
.LBB11_68:
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB11_70
# %bb.69:
	pcaddu18i	$ra, %call36(CheckAvailabilityOfNeighborsCABAC)
	jirl	$ra, $ra, 0
.LBB11_70:
	pcalau12i	$a0, %got_pc_hi20(readMB_typeInfo_CABAC)
	ld.d	$a0, $a0, %got_pc_lo12(readMB_typeInfo_CABAC)
	ld.d	$a3, $s1, 48
	st.d	$a0, $sp, 128
	addi.d	$a0, $sp, 88
	move	$a1, $fp
	move	$a2, $s1
	jirl	$ra, $a3, 0
	ld.d	$a0, $s1, 0
	ld.w	$a1, $sp, 92
	ld.w	$a0, $a0, 24
	st.w	$a1, $s4, 40
	bnez	$a0, .LBB11_72
# %bb.71:
	st.w	$zero, $s4, 336
.LBB11_72:                              # %.thread442
	ld.d	$a0, $s2, 0
	ld.b	$a1, $s4, 356
	ori	$a2, $s6, 1544
	ldx.d	$a0, $a0, $a2
	ld.wu	$a2, $fp, 4
	stx.b	$a1, $a0, $a2
	ld.w	$a0, $fp, 68
	ldptr.d	$a1, $fp, 5568
	slli.d	$a0, $a0, 3
	ld.w	$a2, $fp, 72
	ldx.d	$a0, $a1, $a0
	slli.d	$a1, $a2, 2
	stx.w	$zero, $a0, $a1
	ld.w	$a0, $fp, 44
	ori	$a1, $zero, 4
	bltu	$a1, $a0, .LBB11_93
# %bb.73:                               # %.thread442
	slli.d	$a0, $a0, 2
	pcalau12i	$a1, %pc_hi20(.LJTI11_0)
	addi.d	$a1, $a1, %pc_lo12(.LJTI11_0)
	ldx.w	$a0, $a1, $a0
	add.d	$a0, $a1, $a0
	jr	$a0
.LBB11_74:
	ld.wu	$a0, $fp, 4
	ldptr.d	$a1, $fp, 5600
	ori	$a2, $zero, 408
	mul.d	$a0, $a0, $a2
	add.d	$a0, $a1, $a0
	ld.w	$a1, $a0, 40
	ori	$a2, $zero, 3
	blt	$a2, $a1, .LBB11_84
# %bb.75:
	andi	$a1, $a1, 255
	lu12i.w	$a2, 4112
	ori	$a2, $a2, 257
	mul.d	$a1, $a1, $a2
	st.w	$a1, $a0, 328
	st.w	$zero, $a0, 332
	ldptr.w	$a0, $fp, 5624
	bnez	$a0, .LBB11_94
	b	.LBB11_96
.LBB11_76:
	ld.wu	$a0, $fp, 4
	ldptr.d	$a1, $fp, 5600
	ori	$a2, $zero, 408
	mul.d	$a0, $a0, $a2
	add.d	$a0, $a1, $a0
	ld.w	$a1, $a0, 40
	ori	$a2, $zero, 26
	beq	$a1, $a2, .LBB11_89
# %bb.77:
	ori	$a2, $zero, 1
	beq	$a1, $a2, .LBB11_88
# %bb.78:
	bnez	$a1, .LBB11_173
# %bb.79:
	lu12i.w	$a1, 45232
	ori	$a1, $a1, 2827
	lu32i.d	$a1, -1
	st.d	$a1, $a0, 328
	ld.w	$a1, $fp, 68
	ldptr.d	$a2, $fp, 5568
	ori	$a3, $zero, 12
	ld.w	$a4, $fp, 72
	slli.d	$a1, $a1, 3
	ldx.d	$a1, $a2, $a1
	st.w	$a3, $a0, 40
	slli.d	$a0, $a4, 2
	ori	$a2, $zero, 1
	stx.w	$a2, $a1, $a0
	ldptr.w	$a0, $fp, 5624
	bnez	$a0, .LBB11_94
	b	.LBB11_96
.LBB11_80:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(interpret_mb_mode_B)
	jirl	$ra, $ra, 0
	ldptr.w	$a0, $fp, 5624
	bnez	$a0, .LBB11_94
	b	.LBB11_96
.LBB11_81:
	ld.wu	$a0, $fp, 4
	ldptr.d	$a1, $fp, 5600
	ori	$a2, $zero, 408
	mul.d	$a0, $a0, $a2
	add.d	$a0, $a1, $a0
	ld.w	$a1, $a0, 40
	ori	$a2, $zero, 25
	beq	$a1, $a2, .LBB11_90
# %bb.82:
	bnez	$a1, .LBB11_91
# %bb.83:
	ori	$a1, $zero, 9
	st.w	$a1, $a0, 40
	lu12i.w	$a1, 45232
	ori	$a1, $a1, 2827
	b	.LBB11_92
.LBB11_84:
	bstrpick.d	$a2, $a1, 30, 1
	slli.d	$a2, $a2, 1
	ori	$a3, $zero, 4
	bne	$a2, $a3, .LBB11_86
# %bb.85:
	addi.d	$a1, $a1, -5
	sltui	$a1, $a1, 1
	ori	$a2, $zero, 8
	st.w	$a2, $a0, 40
	st.w	$a1, $fp, 100
	ldptr.w	$a0, $fp, 5624
	bnez	$a0, .LBB11_94
	b	.LBB11_96
.LBB11_86:
	ori	$a2, $zero, 31
	beq	$a1, $a2, .LBB11_89
# %bb.87:
	ori	$a2, $zero, 6
	bne	$a1, $a2, .LBB11_204
.LBB11_88:
	ori	$a1, $zero, 9
	st.w	$a1, $a0, 40
	lu12i.w	$a1, 45232
	ori	$a1, $a1, 2827
	b	.LBB11_206
.LBB11_89:
	ori	$a1, $zero, 14
	st.w	$a1, $a0, 40
	addi.w	$a1, $zero, -1
	lu32i.d	$a1, 0
	st.w	$a1, $a0, 300
	st.d	$zero, $a0, 324
	st.w	$a1, $a0, 332
	ldptr.w	$a0, $fp, 5624
	bnez	$a0, .LBB11_94
	b	.LBB11_96
.LBB11_90:
	move	$a1, $zero
	ori	$a2, $zero, 14
	st.w	$a2, $a0, 40
	addi.w	$a2, $zero, -1
	lu32i.d	$a2, 0
	st.w	$a2, $a0, 300
	st.w	$zero, $a0, 324
	b	.LBB11_92
.LBB11_91:
	ori	$a2, $zero, 10
	st.w	$a2, $a0, 40
	addi.w	$a1, $a1, -1
	andi	$a2, $a1, 3
	bstrins.d	$a1, $zero, 1, 0
	pcalau12i	$a3, %pc_hi20(.L__const.interpret_mb_mode_SI.ICBPTAB)
	addi.d	$a3, $a3, %pc_lo12(.L__const.interpret_mb_mode_SI.ICBPTAB)
	ldx.w	$a3, $a3, $a1
	move	$a1, $zero
	st.w	$a3, $a0, 300
	st.w	$a2, $a0, 324
.LBB11_92:                              # %interpret_mb_mode_I.exit
	st.w	$a1, $a0, 328
	addi.w	$a1, $zero, -1
	lu32i.d	$a1, 0
	st.w	$a1, $a0, 332
.LBB11_93:                              # %interpret_mb_mode_P.exit
	ldptr.w	$a0, $fp, 5624
	beqz	$a0, .LBB11_96
.LBB11_94:
	ld.w	$a0, $s4, 356
	beqz	$a0, .LBB11_96
# %bb.95:
	ori	$a0, $s8, 1544
	ldx.w	$a0, $fp, $a0
	ori	$a1, $s8, 1548
	ldx.w	$a1, $fp, $a1
	slli.d	$a0, $a0, 1
	stptr.w	$a0, $fp, 5640
	slli.d	$a0, $a1, 1
	stptr.w	$a0, $fp, 5644
.LBB11_96:
	ld.w	$a0, $s4, 40
	beqz	$a0, .LBB11_101
# %bb.97:
	ori	$a1, $zero, 1
	ori	$a2, $zero, 8
	st.w	$a1, $s4, 400
	bne	$a0, $a2, .LBB11_130
# %bb.98:
	ld.d	$a0, $s7, %pc_lo12(active_pps)
	ori	$a1, $zero, 2
	ld.d	$a2, $s5, 40
	ld.d	$a3, $sp, 24                    # 8-byte Folded Reload
	ld.w	$a3, $a3, 8
	ld.w	$a0, $a0, 12
	st.w	$a1, $sp, 88
	ori	$a1, $zero, 56
	mul.d	$a1, $a3, $a1
	add.d	$s1, $a2, $a1
	beqz	$a0, .LBB11_100
# %bb.99:
	ld.d	$a0, $s1, 0
	ld.w	$a0, $a0, 24
	beqz	$a0, .LBB11_104
.LBB11_100:
	pcalau12i	$a0, %got_pc_hi20(linfo_ue)
	ld.d	$a0, $a0, %got_pc_lo12(linfo_ue)
	st.d	$a0, $sp, 120
	b	.LBB11_105
.LBB11_101:
	ld.w	$a1, $fp, 44
	ori	$a0, $zero, 1
	bne	$a1, $a0, .LBB11_103
# %bb.102:
	pcalau12i	$a0, %pc_hi20(active_sps)
	ld.d	$a0, $a0, %pc_lo12(active_sps)
	ldptr.w	$a0, $a0, 2084
	sltu	$a0, $zero, $a0
.LBB11_103:                             # %.thread538
	st.w	$a0, $s4, 400
	b	.LBB11_135
.LBB11_104:
	pcalau12i	$a0, %got_pc_hi20(readB8_typeInfo_CABAC)
	ld.d	$a0, $a0, %got_pc_lo12(readB8_typeInfo_CABAC)
	st.d	$a0, $sp, 128
.LBB11_105:                             # %SetB8Mode.exit
	ld.d	$a3, $s1, 48
	addi.d	$a0, $sp, 88
	move	$a1, $fp
	move	$a2, $s1
	jirl	$ra, $a3, 0
	ld.w	$a0, $fp, 44
	ld.w	$a1, $sp, 92
	addi.d	$a0, $a0, -1
	sltui	$a2, $a0, 1
	pcalau12i	$a0, %pc_hi20(SetB8Mode.b_v2b8)
	addi.d	$s3, $a0, %pc_lo12(SetB8Mode.b_v2b8)
	alsl.d	$a0, $a1, $s3, 2
	pcalau12i	$a3, %pc_hi20(SetB8Mode.b_v2pd)
	addi.d	$s8, $a3, %pc_lo12(SetB8Mode.b_v2pd)
	alsl.d	$a3, $a1, $s8, 2
	pcalau12i	$a4, %pc_hi20(SetB8Mode.p_v2b8)
	addi.d	$s0, $a4, %pc_lo12(SetB8Mode.p_v2b8)
	alsl.d	$a4, $a1, $s0, 2
	pcalau12i	$a5, %pc_hi20(SetB8Mode.p_v2pd)
	addi.d	$s6, $a5, %pc_lo12(SetB8Mode.p_v2pd)
	alsl.d	$a1, $a1, $s6, 2
	masknez	$a4, $a4, $a2
	maskeqz	$a0, $a0, $a2
	or	$a0, $a0, $a4
	ld.bu	$a0, $a0, 0
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $a3, $a2
	or	$a1, $a2, $a1
	st.b	$a0, $s4, 328
	ld.b	$a1, $a1, 0
	st.b	$a1, $s4, 332
	beqz	$a0, .LBB11_107
.LBB11_106:
	addi.d	$a0, $a0, -4
	sltui	$a1, $a0, 1
	b	.LBB11_108
.LBB11_107:
	pcalau12i	$a1, %pc_hi20(active_sps)
	ld.d	$a1, $a1, %pc_lo12(active_sps)
	ldptr.w	$a2, $a1, 2084
	ori	$a1, $zero, 1
	beqz	$a2, .LBB11_106
.LBB11_108:
	ld.d	$a0, $s7, %pc_lo12(active_pps)
	ld.wu	$a2, $s4, 400
	ld.w	$a0, $a0, 12
	and	$a1, $a2, $a1
	st.w	$a1, $s4, 400
	beqz	$a0, .LBB11_110
# %bb.109:
	ld.d	$a0, $s1, 0
	ld.w	$a0, $a0, 24
	beqz	$a0, .LBB11_111
.LBB11_110:
	pcalau12i	$a0, %got_pc_hi20(linfo_ue)
	ld.d	$a0, $a0, %got_pc_lo12(linfo_ue)
	st.d	$a0, $sp, 120
	b	.LBB11_112
.LBB11_111:
	pcalau12i	$a0, %got_pc_hi20(readB8_typeInfo_CABAC)
	ld.d	$a0, $a0, %got_pc_lo12(readB8_typeInfo_CABAC)
	st.d	$a0, $sp, 128
.LBB11_112:                             # %SetB8Mode.exit.1
	ld.d	$a3, $s1, 48
	addi.d	$a0, $sp, 88
	move	$a1, $fp
	move	$a2, $s1
	jirl	$ra, $a3, 0
	ld.w	$a0, $fp, 44
	ld.w	$a1, $sp, 92
	addi.d	$a0, $a0, -1
	sltui	$a2, $a0, 1
	alsl.d	$a0, $a1, $s3, 2
	alsl.d	$a3, $a1, $s8, 2
	alsl.d	$a4, $a1, $s0, 2
	alsl.d	$a1, $a1, $s6, 2
	masknez	$a4, $a4, $a2
	maskeqz	$a0, $a0, $a2
	or	$a0, $a0, $a4
	ld.bu	$a0, $a0, 0
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $a3, $a2
	or	$a1, $a2, $a1
	st.b	$a0, $s4, 329
	ld.b	$a1, $a1, 0
	st.b	$a1, $s4, 333
	beqz	$a0, .LBB11_114
.LBB11_113:
	addi.d	$a0, $a0, -4
	sltui	$a1, $a0, 1
	b	.LBB11_115
.LBB11_114:
	pcalau12i	$a1, %pc_hi20(active_sps)
	ld.d	$a1, $a1, %pc_lo12(active_sps)
	ldptr.w	$a2, $a1, 2084
	ori	$a1, $zero, 1
	beqz	$a2, .LBB11_113
.LBB11_115:
	ld.d	$a0, $s7, %pc_lo12(active_pps)
	ld.wu	$a2, $s4, 400
	ld.w	$a0, $a0, 12
	and	$a1, $a2, $a1
	st.w	$a1, $s4, 400
	beqz	$a0, .LBB11_117
# %bb.116:
	ld.d	$a0, $s1, 0
	ld.w	$a0, $a0, 24
	beqz	$a0, .LBB11_118
.LBB11_117:
	pcalau12i	$a0, %got_pc_hi20(linfo_ue)
	ld.d	$a0, $a0, %got_pc_lo12(linfo_ue)
	st.d	$a0, $sp, 120
	b	.LBB11_119
.LBB11_118:
	pcalau12i	$a0, %got_pc_hi20(readB8_typeInfo_CABAC)
	ld.d	$a0, $a0, %got_pc_lo12(readB8_typeInfo_CABAC)
	st.d	$a0, $sp, 128
.LBB11_119:                             # %SetB8Mode.exit.2
	ld.d	$a3, $s1, 48
	addi.d	$a0, $sp, 88
	move	$a1, $fp
	move	$a2, $s1
	jirl	$ra, $a3, 0
	ld.w	$a0, $fp, 44
	ld.w	$a1, $sp, 92
	addi.d	$a0, $a0, -1
	sltui	$a2, $a0, 1
	alsl.d	$a0, $a1, $s3, 2
	alsl.d	$a3, $a1, $s8, 2
	alsl.d	$a4, $a1, $s0, 2
	alsl.d	$a1, $a1, $s6, 2
	masknez	$a4, $a4, $a2
	maskeqz	$a0, $a0, $a2
	or	$a0, $a0, $a4
	ld.bu	$a0, $a0, 0
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $a3, $a2
	or	$a1, $a2, $a1
	st.b	$a0, $s4, 330
	ld.b	$a1, $a1, 0
	st.b	$a1, $s4, 334
	beqz	$a0, .LBB11_121
.LBB11_120:
	addi.d	$a0, $a0, -4
	sltui	$a1, $a0, 1
	b	.LBB11_122
.LBB11_121:
	pcalau12i	$a1, %pc_hi20(active_sps)
	ld.d	$a1, $a1, %pc_lo12(active_sps)
	ldptr.w	$a2, $a1, 2084
	ori	$a1, $zero, 1
	beqz	$a2, .LBB11_120
.LBB11_122:
	ld.d	$a0, $s7, %pc_lo12(active_pps)
	ld.wu	$a2, $s4, 400
	ld.w	$a0, $a0, 12
	and	$a1, $a2, $a1
	st.w	$a1, $s4, 400
	beqz	$a0, .LBB11_124
# %bb.123:
	ld.d	$a0, $s1, 0
	ld.w	$a0, $a0, 24
	beqz	$a0, .LBB11_125
.LBB11_124:
	pcalau12i	$a0, %got_pc_hi20(linfo_ue)
	ld.d	$a0, $a0, %got_pc_lo12(linfo_ue)
	st.d	$a0, $sp, 120
	b	.LBB11_126
.LBB11_125:
	pcalau12i	$a0, %got_pc_hi20(readB8_typeInfo_CABAC)
	ld.d	$a0, $a0, %got_pc_lo12(readB8_typeInfo_CABAC)
	st.d	$a0, $sp, 128
.LBB11_126:                             # %SetB8Mode.exit.3
	ld.d	$a3, $s1, 48
	addi.d	$a0, $sp, 88
	move	$a1, $fp
	move	$a2, $s1
	jirl	$ra, $a3, 0
	ld.w	$a0, $fp, 44
	ld.w	$a1, $sp, 92
	addi.d	$a0, $a0, -1
	sltui	$a2, $a0, 1
	alsl.d	$a0, $a1, $s3, 2
	alsl.d	$a3, $a1, $s8, 2
	alsl.d	$a4, $a1, $s0, 2
	alsl.d	$a1, $a1, $s6, 2
	masknez	$a4, $a4, $a2
	maskeqz	$a0, $a0, $a2
	or	$a0, $a0, $a4
	ld.bu	$a0, $a0, 0
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $a3, $a2
	or	$a1, $a2, $a1
	st.b	$a0, $s4, 331
	ld.b	$a1, $a1, 0
	st.b	$a1, $s4, 335
	beqz	$a0, .LBB11_128
.LBB11_127:
	addi.d	$a0, $a0, -4
	sltui	$a1, $a0, 1
	b	.LBB11_129
.LBB11_128:
	pcalau12i	$a1, %pc_hi20(active_sps)
	ld.d	$a1, $a1, %pc_lo12(active_sps)
	ldptr.w	$a2, $a1, 2084
	ori	$a1, $zero, 1
	beqz	$a2, .LBB11_127
.LBB11_129:
	ld.wu	$a0, $s4, 400
	and	$a0, $a0, $a1
	st.w	$a0, $s4, 400
	move	$a0, $fp
	pcaddu18i	$ra, %call36(init_macroblock)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(readMotionInfoFromNAL)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s4, 40
	lu12i.w	$s6, 77
.LBB11_130:
	ori	$a1, $zero, 9
	bne	$a0, $a1, .LBB11_135
# %bb.131:
	ldptr.w	$a0, $fp, 5908
	beqz	$a0, .LBB11_135
# %bb.132:
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	ld.w	$a1, $a0, 0
	ld.d	$a0, $s5, 40
	ori	$a2, $zero, 56
	ld.d	$a3, $s7, %pc_lo12(active_pps)
	mul.d	$a2, $a1, $a2
	pcalau12i	$a1, %got_pc_hi20(readMB_transform_size_flag_CABAC)
	ld.d	$a4, $a1, %got_pc_lo12(readMB_transform_size_flag_CABAC)
	ld.w	$a3, $a3, 12
	ldx.d	$a1, $a0, $a2
	st.w	$zero, $sp, 88
	st.d	$a4, $sp, 128
	beqz	$a3, .LBB11_134
# %bb.133:
	ld.w	$a3, $a1, 24
	beqz	$a3, .LBB11_171
.LBB11_134:
	ori	$a0, $zero, 1
	st.w	$a0, $sp, 100
	addi.d	$a0, $sp, 88
	pcaddu18i	$ra, %call36(readSyntaxElement_FLC)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 92
	st.w	$a0, $s4, 396
	bnez	$a0, .LBB11_172
	b	.LBB11_136
.LBB11_135:
	st.w	$zero, $s4, 396
.LBB11_136:                             # %.loopexit469
	ld.d	$a0, $s7, %pc_lo12(active_pps)
	ld.w	$a1, $a0, 1148
	addi.d	$s0, $s4, 40
	move	$a0, $s0
	beqz	$a1, .LBB11_141
# %bb.137:
	ld.w	$a1, $fp, 44
	ori	$a2, $zero, 1
	move	$a0, $s0
	bltu	$a2, $a1, .LBB11_141
# %bb.138:
	ld.w	$a0, $s0, 0
	addi.w	$a0, $a0, -9
	ori	$a1, $zero, 5
	bltu	$a1, $a0, .LBB11_159
# %bb.139:
	ori	$a1, $zero, 59
	srl.d	$a1, $a1, $a0
	andi	$a1, $a1, 1
	beqz	$a1, .LBB11_159
# %bb.140:                              # %switch.lookup
	pcalau12i	$a1, %pc_hi20(.Lswitch.table.read_one_macroblock)
	addi.d	$a1, $a1, %pc_lo12(.Lswitch.table.read_one_macroblock)
	alsl.d	$a0, $a0, $a1, 2
.LBB11_141:                             # %thread-pre-split
	ld.w	$a0, $a0, 0
	ori	$s1, $zero, 14
	bltu	$s1, $a0, .LBB11_147
.LBB11_142:                             # %thread-pre-split
	ori	$a1, $zero, 1
	sll.d	$a1, $a1, $a0
	lu12i.w	$a2, 7
	ori	$a2, $a2, 1536
	and	$a1, $a1, $a2
	beqz	$a1, .LBB11_146
# %bb.143:
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	ld.w	$a0, $a0, 24
	ld.d	$a1, $s5, 40
	ori	$a2, $zero, 56
	mul.d	$a0, $a0, $a2
	ldx.d	$a0, $a1, $a0
	ld.w	$a0, $a0, 24
	beqz	$a0, .LBB11_147
# %bb.144:
	ld.w	$a0, $fp, 0
	beqz	$a0, .LBB11_147
# %bb.145:                              # %.loopexit468.loopexit
	st.w	$zero, $s4, 40
	ori	$a0, $zero, 1
	st.w	$a0, $s4, 336
	st.d	$zero, $s4, 328
	b	.LBB11_147
.LBB11_146:                             # %thread-pre-split
	ori	$a1, $zero, 8
	beq	$a0, $a1, .LBB11_155
.LBB11_147:                             # %.loopexit468.thread
	move	$a0, $fp
	pcaddu18i	$ra, %call36(init_macroblock)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s0, 0
	beq	$a0, $s1, .LBB11_158
# %bb.148:                              # %.loopexit468.thread
	bnez	$a0, .LBB11_155
# %bb.149:
	ld.w	$a0, $fp, 44
	beqz	$a0, .LBB11_160
# %bb.150:
	ori	$a1, $zero, 3
	beq	$a0, $a1, .LBB11_160
# %bb.151:
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB11_155
# %bb.152:
	ldptr.w	$a0, $fp, 5576
	bltz	$a0, .LBB11_155
# %bb.153:
	st.w	$zero, $s4, 300
	pcaddu18i	$ra, %call36(reset_coeffs)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s7, %pc_lo12(active_pps)
	ld.w	$a0, $a0, 12
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB11_202
# %bb.154:
	addi.w	$a0, $zero, -1
	lu32i.d	$a0, 0
	stptr.w	$a0, $fp, 5576
	b	.LBB11_202
.LBB11_155:                             # %.thread461
	move	$a0, $fp
	pcaddu18i	$ra, %call36(read_ipred_modes)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s0, 0
	ori	$a1, $zero, 14
	bltu	$a1, $a0, .LBB11_163
# %bb.156:                              # %.thread461
	ori	$a1, $zero, 1
	sll.d	$a0, $a1, $a0
	lu12i.w	$a1, 6
	ori	$a1, $a1, 1793
	and	$a0, $a0, $a1
	beqz	$a0, .LBB11_163
.LBB11_157:
	move	$a0, $fp
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(readCBPandCoeffsFromNAL)
	jirl	$ra, $ra, 0
	b	.LBB11_202
.LBB11_158:
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	ld.w	$a0, $a0, 8
	ld.d	$a1, $s5, 40
	ori	$a2, $zero, 56
	mul.d	$a0, $a0, $a2
	add.d	$a2, $a1, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(readIPCMcoeffsFromNAL)
	jirl	$ra, $ra, 0
	b	.LBB11_202
.LBB11_159:
	ld.wu	$a0, $fp, 4
	ld.d	$a1, $fp, 16
	slli.d	$a0, $a0, 2
	stx.w	$zero, $a1, $a0
	move	$a0, $s0
	ld.w	$a0, $a0, 0
	ori	$s1, $zero, 14
	bgeu	$s1, $a0, .LBB11_142
	b	.LBB11_147
.LBB11_160:
	ldptr.w	$a0, $fp, 5624
	beqz	$a0, .LBB11_164
# %bb.161:
	ld.w	$a1, $s4, 356
	ld.w	$a0, $fp, 4
	beqz	$a1, .LBB11_165
# %bb.162:
	andi	$a1, $a0, 1
	sltui	$a1, $a1, 1
	ori	$a2, $zero, 4
	masknez	$a2, $a2, $a1
	ori	$a3, $zero, 2
	maskeqz	$a1, $a3, $a1
	or	$s1, $a1, $a2
	b	.LBB11_166
.LBB11_163:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(readMotionInfoFromNAL)
	jirl	$ra, $ra, 0
	b	.LBB11_157
.LBB11_164:                             # %._crit_edge506
	ld.w	$a0, $fp, 4
.LBB11_165:
	move	$s1, $zero
.LBB11_166:
	ld.d	$a1, $s2, 0
	ori	$a2, $s6, 1584
	ldx.d	$a1, $a1, $a2
	ld.d	$s5, $a1, 0
	addi.w	$s0, $zero, -1
	addi.d	$a3, $sp, 60
	move	$a1, $s0
	move	$a2, $zero
	pcaddu18i	$ra, %call36(getLuma4x4Neighbour)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 4
	addi.d	$a3, $sp, 36
	move	$a1, $zero
	move	$a2, $s0
	pcaddu18i	$ra, %call36(getLuma4x4Neighbour)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 60
	beqz	$a0, .LBB11_170
# %bb.167:
	ld.d	$a1, $s2, 0
	ld.w	$a2, $sp, 80
	ori	$a3, $s6, 1560
	ldx.d	$a1, $a1, $a3
	slli.d	$a2, $a2, 3
	ld.w	$a3, $sp, 76
	ldx.d	$a4, $s5, $a2
	ld.d	$a1, $a1, 0
	slli.d	$a5, $a3, 3
	ldx.d	$a4, $a4, $a5
	ldx.d	$a2, $a1, $a2
	ld.h	$a1, $a4, 2
	ldx.b	$a2, $a2, $a3
	ld.w	$a3, $sp, 64
	ldptr.d	$a4, $fp, 5600
	ld.w	$a5, $s4, 356
	ori	$a6, $zero, 408
	mul.d	$a3, $a3, $a6
	add.d	$a3, $a4, $a3
	ld.w	$a3, $a3, 356
	beqz	$a5, .LBB11_174
# %bb.168:
	bnez	$a3, .LBB11_176
# %bb.169:
	bstrpick.d	$a1, $a1, 15, 0
	bstrpick.d	$a3, $a1, 15, 15
	add.d	$a1, $a1, $a3
	ext.w.h	$a1, $a1
	srai.d	$a1, $a1, 1
	slli.d	$a2, $a2, 1
	b	.LBB11_176
.LBB11_170:
	move	$a1, $zero
	move	$a2, $zero
	b	.LBB11_176
.LBB11_171:
	add.d	$a2, $a0, $a2
	ld.d	$a3, $a2, 48
	addi.d	$a0, $sp, 88
	move	$a1, $fp
	jirl	$ra, $a3, 0
	ld.w	$a0, $sp, 92
	st.w	$a0, $s4, 396
	beqz	$a0, .LBB11_136
.LBB11_172:                             # %.loopexit469.loopexit
	ori	$a0, $zero, 13
	st.w	$a0, $s4, 40
	lu12i.w	$a0, 53456
	ori	$a0, $a0, 3341
	lu32i.d	$a0, -1
	st.d	$a0, $s4, 328
	b	.LBB11_136
.LBB11_173:
	ori	$a2, $zero, 10
	st.w	$a2, $a0, 40
	addi.w	$a2, $a1, -1
	bstrins.d	$a2, $zero, 1, 0
	pcalau12i	$a3, %pc_hi20(.L__const.interpret_mb_mode_SI.ICBPTAB)
	addi.d	$a3, $a3, %pc_lo12(.L__const.interpret_mb_mode_SI.ICBPTAB)
	ldx.w	$a2, $a3, $a2
	st.w	$a2, $a0, 300
	andi	$a1, $a1, 3
	xori	$a1, $a1, 2
	b	.LBB11_205
.LBB11_174:
	beqz	$a3, .LBB11_176
# %bb.175:
	slli.d	$a1, $a1, 1
	srai.d	$a2, $a2, 1
.LBB11_176:                             # %.thread453
	ld.w	$a3, $sp, 36
	beqz	$a3, .LBB11_180
# %bb.177:
	ld.d	$a4, $s2, 0
	ld.w	$a5, $sp, 56
	ori	$a6, $s6, 1560
	ldx.d	$a4, $a4, $a6
	slli.d	$a5, $a5, 3
	ld.w	$a6, $sp, 52
	ldx.d	$a7, $s5, $a5
	ld.d	$a4, $a4, 0
	slli.d	$t0, $a6, 3
	ldx.d	$a7, $a7, $t0
	ldx.d	$a5, $a4, $a5
	ld.h	$a4, $a7, 2
	ldx.b	$a5, $a5, $a6
	ld.w	$a6, $sp, 40
	ldptr.d	$a7, $fp, 5600
	ld.w	$t0, $s4, 356
	ori	$t1, $zero, 408
	mul.d	$a6, $a6, $t1
	add.d	$a6, $a7, $a6
	ld.w	$a6, $a6, 356
	beqz	$t0, .LBB11_181
# %bb.178:
	bnez	$a6, .LBB11_183
# %bb.179:
	bstrpick.d	$a4, $a4, 15, 0
	bstrpick.d	$a6, $a4, 15, 15
	add.d	$a4, $a4, $a6
	ext.w.h	$a4, $a4
	srai.d	$a4, $a4, 1
	slli.d	$a5, $a5, 1
	b	.LBB11_183
.LBB11_180:
	move	$a4, $zero
	move	$a5, $zero
	b	.LBB11_183
.LBB11_181:
	beqz	$a6, .LBB11_183
# %bb.182:
	slli.d	$a4, $a4, 1
	srai.d	$a5, $a5, 1
.LBB11_183:                             # %.thread457
	beqz	$a0, .LBB11_191
# %bb.184:
	beqz	$a2, .LBB11_203
# %bb.185:
	move	$s3, $zero
	beqz	$a3, .LBB11_192
.LBB11_186:
	bnez	$a5, .LBB11_189
# %bb.187:
	ld.w	$a0, $sp, 56
	slli.d	$a0, $a0, 3
	ld.w	$a1, $sp, 52
	ldx.d	$a0, $s5, $a0
	slli.d	$a1, $a1, 3
	ldx.d	$a0, $a0, $a1
	ld.hu	$a0, $a0, 0
	bnez	$a0, .LBB11_189
# %bb.188:
	sltui	$a0, $a4, 1
	or	$a0, $a0, $s3
	andi	$s3, $a0, 1
.LBB11_189:
	st.w	$zero, $s4, 300
	pcaddu18i	$ra, %call36(reset_coeffs)
	jirl	$ra, $ra, 0
	ld.w	$s0, $fp, 76
	bnez	$s3, .LBB11_193
# %bb.190:                              # %.loopexit.loopexit481
	ld.d	$a0, $s2, 0
	ori	$a1, $s6, 1560
	add.d	$a2, $a0, $a1
	ldx.d	$a4, $a0, $a1
	ld.d	$a5, $a2, 24
	ori	$a0, $zero, 16
	st.d	$a0, $sp, 8
	addi.d	$a1, $sp, 84
	st.d	$a0, $sp, 0
	move	$a0, $fp
	move	$a2, $zero
	move	$a3, $zero
	move	$a6, $zero
	move	$a7, $zero
	pcaddu18i	$ra, %call36(SetMotionVectorPredictor)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 92
	slli.d	$a1, $s0, 3
	ldx.d	$a1, $s5, $a1
	alsl.d	$a2, $s0, $s5, 3
	slli.d	$a3, $a0, 3
	ldx.d	$a4, $a1, $a3
	ld.w	$a5, $sp, 84
	alsl.d	$a6, $a0, $a1, 3
	addi.d	$a7, $a3, 8
	ldx.d	$a1, $a1, $a7
	st.w	$a5, $a4, 0
	ld.d	$a4, $a6, 16
	ld.d	$t0, $a2, 8
	st.w	$a5, $a1, 0
	ld.d	$a1, $a6, 24
	st.w	$a5, $a4, 0
	ldx.d	$a4, $t0, $a3
	ldx.d	$a6, $t0, $a7
	st.w	$a5, $a1, 0
	alsl.d	$a1, $a0, $t0, 3
	st.w	$a5, $a4, 0
	st.w	$a5, $a6, 0
	ld.d	$a4, $a2, 16
	ld.d	$a6, $a1, 16
	ld.d	$a1, $a1, 24
	ld.w	$t0, $sp, 84
	ldx.d	$t1, $a4, $a3
	ld.w	$t2, $sp, 84
	st.w	$a5, $a6, 0
	st.w	$t0, $a1, 0
	alsl.d	$a1, $a0, $a4, 3
	st.w	$t2, $t1, 0
	ldx.d	$a4, $a4, $a7
	ld.d	$a5, $a1, 16
	ld.d	$a1, $a1, 24
	ld.w	$a6, $sp, 84
	ld.d	$a2, $a2, 24
	st.w	$t2, $a4, 0
	st.w	$t2, $a5, 0
	st.w	$a6, $a1, 0
	alsl.d	$a0, $a0, $a2, 3
	ldx.d	$a1, $a2, $a3
	ld.w	$a3, $sp, 84
	ldx.d	$a2, $a2, $a7
	ld.d	$a4, $a0, 16
	ld.d	$a0, $a0, 24
	ld.w	$a5, $sp, 84
	st.w	$a3, $a1, 0
	st.w	$a3, $a2, 0
	st.w	$a3, $a4, 0
	st.w	$a5, $a0, 0
	b	.LBB11_194
.LBB11_191:
	ori	$s3, $zero, 1
	bnez	$a3, .LBB11_186
.LBB11_192:                             # %.thread540
	st.w	$zero, $s4, 300
	pcaddu18i	$ra, %call36(reset_coeffs)
	jirl	$ra, $ra, 0
	ld.w	$s0, $fp, 76
.LBB11_193:                             # %.loopexit.loopexit
	slli.d	$a0, $s0, 3
	ld.w	$a1, $fp, 92
	ldx.d	$a0, $s5, $a0
	slli.d	$a1, $a1, 3
	ldx.d	$a0, $a0, $a1
	alsl.d	$a1, $s0, $s5, 3
	vrepli.b	$vr0, 0
	vst	$vr0, $a0, 0
	ld.w	$a0, $fp, 92
	ld.d	$a2, $a1, 8
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $a2, $a0
	vst	$vr0, $a0, 0
	ld.w	$a0, $fp, 92
	ld.d	$a2, $a1, 16
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $a2, $a0
	vst	$vr0, $a0, 0
	ld.w	$a0, $fp, 92
	ld.d	$a1, $a1, 24
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $a1, $a0
	vst	$vr0, $a0, 0
.LBB11_194:                             # %.lr.ph479
	ld.d	$a1, $s2, 0
	ori	$a0, $s6, 1560
	ldx.d	$a1, $a1, $a0
	ld.d	$a1, $a1, 0
	ld.w	$a6, $fp, 92
	slli.d	$a2, $s0, 3
	ldx.d	$a5, $a1, $a2
	slli.d	$a3, $a6, 3
	ori	$a4, $zero, 1584
	slli.d	$a1, $s1, 3
	slli.d	$a7, $s1, 8
	or	$a1, $a7, $a1
	.p2align	4, , 16
.LBB11_195:                             # =>This Inner Loop Header: Depth=1
	move	$a7, $a6
	stx.b	$zero, $a5, $a6
	ld.d	$a6, $s2, 0
	ldx.d	$a5, $a6, $a0
	ld.d	$a5, $a5, 0
	ld.w	$t0, $fp, 12
	ldx.d	$a5, $a5, $a2
	add.d	$t1, $a6, $a0
	ld.d	$t1, $t1, 8
	mul.d	$t0, $t0, $a4
	ldx.b	$t2, $a5, $a7
	add.d	$a6, $a6, $t0
	ld.d	$t0, $t1, 0
	add.d	$a6, $a6, $a1
	alsl.d	$a6, $t2, $a6, 3
	ld.d	$a6, $a6, 24
	ldx.d	$t0, $t0, $a2
	ld.w	$t1, $fp, 92
	stx.d	$a6, $t0, $a3
	addi.d	$a6, $a7, 1
	addi.w	$t0, $t1, 3
	addi.d	$a3, $a3, 8
	blt	$a7, $t0, .LBB11_195
# %bb.196:                              # %.lr.ph479.1
	ld.d	$a2, $s2, 0
	ldx.d	$a2, $a2, $a0
	ld.d	$a3, $a2, 0
	addi.d	$a2, $s0, 1
	ld.w	$a6, $fp, 92
	slli.d	$a2, $a2, 3
	ldx.d	$a5, $a3, $a2
	slli.d	$a3, $a6, 3
	ori	$a4, $zero, 1584
	.p2align	4, , 16
.LBB11_197:                             # =>This Inner Loop Header: Depth=1
	move	$a7, $a6
	stx.b	$zero, $a5, $a6
	ld.d	$a6, $s2, 0
	ldx.d	$a5, $a6, $a0
	ld.d	$a5, $a5, 0
	ld.w	$t0, $fp, 12
	ldx.d	$a5, $a5, $a2
	add.d	$t1, $a6, $a0
	ld.d	$t1, $t1, 8
	mul.d	$t0, $t0, $a4
	ldx.b	$t2, $a5, $a7
	add.d	$a6, $a6, $t0
	ld.d	$t0, $t1, 0
	add.d	$a6, $a6, $a1
	alsl.d	$a6, $t2, $a6, 3
	ld.d	$a6, $a6, 24
	ldx.d	$t0, $t0, $a2
	ld.w	$t1, $fp, 92
	stx.d	$a6, $t0, $a3
	addi.d	$a6, $a7, 1
	addi.w	$t0, $t1, 3
	addi.d	$a3, $a3, 8
	blt	$a7, $t0, .LBB11_197
# %bb.198:                              # %.lr.ph479.2
	ld.d	$a2, $s2, 0
	ldx.d	$a2, $a2, $a0
	ld.d	$a3, $a2, 0
	addi.d	$a2, $s0, 2
	ld.w	$a6, $fp, 92
	slli.d	$a2, $a2, 3
	ldx.d	$a5, $a3, $a2
	slli.d	$a3, $a6, 3
	ori	$a4, $zero, 1584
	.p2align	4, , 16
.LBB11_199:                             # =>This Inner Loop Header: Depth=1
	move	$a7, $a6
	stx.b	$zero, $a5, $a6
	ld.d	$a6, $s2, 0
	ldx.d	$a5, $a6, $a0
	ld.d	$a5, $a5, 0
	ld.w	$t0, $fp, 12
	ldx.d	$a5, $a5, $a2
	add.d	$t1, $a6, $a0
	ld.d	$t1, $t1, 8
	mul.d	$t0, $t0, $a4
	ldx.b	$t2, $a5, $a7
	add.d	$a6, $a6, $t0
	ld.d	$t0, $t1, 0
	add.d	$a6, $a6, $a1
	alsl.d	$a6, $t2, $a6, 3
	ld.d	$a6, $a6, 24
	ldx.d	$t0, $t0, $a2
	ld.w	$t1, $fp, 92
	stx.d	$a6, $t0, $a3
	addi.d	$a6, $a7, 1
	addi.w	$t0, $t1, 3
	addi.d	$a3, $a3, 8
	blt	$a7, $t0, .LBB11_199
# %bb.200:                              # %.lr.ph479.3
	ld.d	$a2, $s2, 0
	ldx.d	$a2, $a2, $a0
	ld.d	$a3, $a2, 0
	addi.d	$a2, $s0, 3
	ld.w	$a6, $fp, 92
	slli.d	$a2, $a2, 3
	ldx.d	$a5, $a3, $a2
	slli.d	$a3, $a6, 3
	ori	$a4, $zero, 1584
	.p2align	4, , 16
.LBB11_201:                             # =>This Inner Loop Header: Depth=1
	move	$a7, $a6
	stx.b	$zero, $a5, $a6
	ld.d	$a6, $s2, 0
	ldx.d	$a5, $a6, $a0
	ld.d	$a5, $a5, 0
	ld.w	$t0, $fp, 12
	ldx.d	$a5, $a5, $a2
	add.d	$t1, $a6, $a0
	ld.d	$t1, $t1, 8
	mul.d	$t0, $t0, $a4
	ldx.b	$t2, $a5, $a7
	add.d	$a6, $a6, $t0
	ld.d	$t0, $t1, 0
	add.d	$a6, $a6, $a1
	alsl.d	$a6, $t2, $a6, 3
	ld.d	$a6, $a6, 24
	ldx.d	$t0, $t0, $a2
	ld.w	$t1, $fp, 92
	stx.d	$a6, $t0, $a3
	addi.d	$a6, $a7, 1
	addi.w	$t0, $t1, 3
	addi.d	$a3, $a3, 8
	blt	$a7, $t0, .LBB11_201
.LBB11_202:
	ori	$a0, $zero, 1
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
.LBB11_203:
	ld.w	$a0, $sp, 80
	slli.d	$a0, $a0, 3
	ld.w	$a2, $sp, 76
	ldx.d	$a0, $s5, $a0
	slli.d	$a2, $a2, 3
	ldx.d	$a0, $a0, $a2
	ld.hu	$a0, $a0, 0
	addi.w	$a1, $a1, 0
	or	$a0, $a0, $a1
	sltui	$s3, $a0, 1
	bnez	$a3, .LBB11_186
	b	.LBB11_192
.LBB11_204:
	ori	$a2, $zero, 10
	st.w	$a2, $a0, 40
	addi.d	$a1, $a1, -7
	bstrpick.d	$a2, $a1, 31, 2
	slli.d	$a2, $a2, 2
	pcalau12i	$a3, %pc_hi20(.L__const.interpret_mb_mode_SI.ICBPTAB)
	addi.d	$a3, $a3, %pc_lo12(.L__const.interpret_mb_mode_SI.ICBPTAB)
	ldx.w	$a2, $a3, $a2
	st.w	$a2, $a0, 300
	andi	$a1, $a1, 3
.LBB11_205:                             # %interpret_mb_mode_P.exit
	st.w	$a1, $a0, 324
	ori	$a1, $zero, 0
.LBB11_206:                             # %interpret_mb_mode_P.exit
	lu32i.d	$a1, -1
	st.d	$a1, $a0, 328
	ldptr.w	$a0, $fp, 5624
	bnez	$a0, .LBB11_94
	b	.LBB11_96
.LBB11_207:
	ld.bu	$a0, $fp, 4
	andi	$a0, $a0, 1
	bnez	$a0, .LBB11_72
# %bb.208:
	ld.d	$a1, $s1, 0
	ori	$a0, $zero, 1
	st.w	$a0, $sp, 100
	addi.d	$a0, $sp, 88
	pcaddu18i	$ra, %call36(readSyntaxElement_FLC)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	ld.w	$a1, $a0, 8
	ld.w	$a2, $sp, 92
	addi.d	$a1, $a1, -1
	st.w	$a1, $a0, 8
	st.w	$a2, $s4, 356
	b	.LBB11_72
.LBB11_209:                             # %._crit_edge501
	ld.w	$a0, $sp, 92
	ld.d	$a1, $s1, 0
	ld.w	$a1, $a1, 24
	st.w	$a0, $s4, 40
	bnez	$a1, .LBB11_61
	b	.LBB11_60
.LBB11_210:
	move	$a1, $zero
	b	.LBB11_30
.LBB11_211:                             # %._crit_edge498
	sub.w	$a0, $a1, $a2
	pcaddu18i	$ra, %call36(mb_is_available)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB11_214
# %bb.212:
	ldx.w	$a0, $fp, $s0
	ld.w	$a1, $fp, 4
	ldptr.d	$a2, $fp, 5600
	slli.d	$a0, $a0, 1
	sub.d	$a0, $a1, $a0
	bstrpick.d	$a0, $a0, 31, 0
	ori	$a1, $zero, 408
	mul.d	$a0, $a0, $a1
	add.d	$a0, $a2, $a0
.LBB11_213:                             # %.thread442
	ld.w	$a0, $a0, 356
	st.w	$a0, $s4, 356
	b	.LBB11_72
.LBB11_214:
	st.w	$zero, $s4, 356
	b	.LBB11_72
.Lfunc_end11:
	.size	read_one_macroblock, .Lfunc_end11-read_one_macroblock
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI11_0:
	.word	.LBB11_74-.LJTI11_0
	.word	.LBB11_80-.LJTI11_0
	.word	.LBB11_81-.LJTI11_0
	.word	.LBB11_74-.LJTI11_0
	.word	.LBB11_76-.LJTI11_0
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function readMotionInfoFromNAL
.LCPI12_0:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
	.text
	.globl	readMotionInfoFromNAL
	.p2align	5
	.type	readMotionInfoFromNAL,@function
readMotionInfoFromNAL:                  # @readMotionInfoFromNAL
# %bb.0:
	addi.d	$sp, $sp, -624
	st.d	$ra, $sp, 616                   # 8-byte Folded Spill
	st.d	$fp, $sp, 608                   # 8-byte Folded Spill
	st.d	$s0, $sp, 600                   # 8-byte Folded Spill
	st.d	$s1, $sp, 592                   # 8-byte Folded Spill
	st.d	$s2, $sp, 584                   # 8-byte Folded Spill
	st.d	$s3, $sp, 576                   # 8-byte Folded Spill
	st.d	$s4, $sp, 568                   # 8-byte Folded Spill
	st.d	$s5, $sp, 560                   # 8-byte Folded Spill
	st.d	$s6, $sp, 552                   # 8-byte Folded Spill
	st.d	$s7, $sp, 544                   # 8-byte Folded Spill
	st.d	$s8, $sp, 536                   # 8-byte Folded Spill
	move	$a7, $a0
	st.d	$a0, $sp, 392                   # 8-byte Folded Spill
	ld.wu	$a0, $a0, 4
	ldptr.d	$a3, $a7, 5592
	ldptr.d	$a1, $a7, 5600
	ori	$a2, $zero, 408
	mul.d	$a2, $a0, $a2
	st.d	$a3, $sp, 40                    # 8-byte Folded Spill
	ld.w	$a3, $a3, 28
	add.d	$t6, $a1, $a2
	ld.w	$a1, $t6, 40
	addi.w	$a0, $a0, 0
	slli.d	$a5, $a3, 6
	ld.w	$a2, $a7, 44
	st.d	$a2, $sp, 400                   # 8-byte Folded Spill
	addi.d	$a2, $a1, -8
	sltui	$a2, $a2, 1
	masknez	$a4, $a1, $a2
	ori	$a6, $zero, 4
	maskeqz	$a2, $a6, $a2
	or	$a4, $a2, $a4
	pcalau12i	$a6, %pc_hi20(BLOCK_STEP)
	ldptr.w	$a2, $a7, 5624
	addi.d	$a6, $a6, %pc_lo12(BLOCK_STEP)
	st.d	$a6, $sp, 120                   # 8-byte Folded Spill
	alsl.d	$a6, $a4, $a6, 3
	slli.d	$a7, $a4, 3
	lu12i.w	$t3, 1
	beqz	$a2, .LBB12_4
# %bb.1:
	ld.w	$a4, $t6, 356
	beqz	$a4, .LBB12_4
# %bb.2:
	pcalau12i	$a4, %got_pc_hi20(Co_located)
	ld.d	$a4, $a4, %got_pc_lo12(Co_located)
	ld.d	$t2, $a4, 0
	andi	$a4, $a0, 1
	bnez	$a4, .LBB12_5
# %bb.3:
	addi.d	$t2, $t2, 2047
	addi.d	$a4, $t2, 1193
	addi.d	$t0, $t2, 1185
	addi.d	$t1, $t2, 1169
	addi.d	$t2, $t2, 1177
	ori	$t3, $zero, 2
	b	.LBB12_6
.LBB12_4:
	pcalau12i	$a4, %got_pc_hi20(Co_located)
	ld.d	$a4, $a4, %got_pc_lo12(Co_located)
	ld.d	$t2, $a4, 0
	st.d	$zero, $sp, 24                  # 8-byte Folded Spill
	addi.d	$a4, $t2, 1624
	addi.d	$t0, $t2, 1616
	addi.d	$t1, $t2, 1600
	addi.d	$t2, $t2, 1608
	b	.LBB12_7
.LBB12_5:
	ori	$a4, $t3, 760
	add.d	$a4, $t2, $a4
	ori	$t0, $t3, 752
	add.d	$t0, $t2, $t0
	ori	$t1, $t3, 736
	add.d	$t1, $t2, $t1
	ori	$t3, $t3, 744
	add.d	$t2, $t2, $t3
	ori	$t3, $zero, 4
.LBB12_6:
	st.d	$t3, $sp, 24                    # 8-byte Folded Spill
.LBB12_7:
	alsl.d	$a3, $a3, $a5, 4
	st.d	$a3, $sp, 352                   # 8-byte Folded Spill
	pcalau12i	$a3, %got_pc_hi20(assignSE2partition)
	ld.d	$a3, $a3, %got_pc_lo12(assignSE2partition)
	st.d	$a3, $sp, 344                   # 8-byte Folded Spill
	ld.d	$a3, $sp, 120                   # 8-byte Folded Reload
	ldx.w	$a3, $a3, $a7
	st.d	$a3, $sp, 248                   # 8-byte Folded Spill
	ld.w	$a3, $a6, 4
	st.d	$a3, $sp, 144                   # 8-byte Folded Spill
	ld.d	$fp, $t2, 0
	ld.d	$a3, $t1, 0
	st.d	$a3, $sp, 200                   # 8-byte Folded Spill
	ld.d	$a3, $t0, 0
	st.d	$a3, $sp, 72                    # 8-byte Folded Spill
	ori	$a5, $zero, 1
	addi.d	$a3, $t6, 328
	st.d	$a3, $sp, 208                   # 8-byte Folded Spill
	st.d	$t6, $sp, 152                   # 8-byte Folded Spill
	ld.d	$a3, $sp, 400                   # 8-byte Folded Reload
	st.d	$fp, $sp, 80                    # 8-byte Folded Spill
	bne	$a3, $a5, .LBB12_164
# %bb.8:
	ori	$a3, $zero, 8
	bne	$a1, $a3, .LBB12_164
# %bb.9:
	ld.d	$fp, $sp, 392                   # 8-byte Folded Reload
	ld.w	$a1, $fp, 40
	beqz	$a1, .LBB12_50
# %bb.10:
	lu12i.w	$s8, 77
	beqz	$a2, .LBB12_15
# %bb.11:
	ld.w	$a1, $t6, 356
	beqz	$a1, .LBB12_15
# %bb.12:
	ld.w	$a1, $fp, 76
	andi	$a2, $a0, 1
	ld.d	$s7, $sp, 24                    # 8-byte Folded Reload
	beqz	$a2, .LBB12_14
# %bb.13:
	addi.w	$a1, $a1, -4
.LBB12_14:
	srai.d	$s5, $a1, 1
	b	.LBB12_16
.LBB12_15:
	ld.w	$s5, $fp, 76
	ld.d	$s7, $sp, 24                    # 8-byte Folded Reload
.LBB12_16:
	ld.d	$s4, $a4, 0
	st.w	$zero, $sp, 412
	st.w	$zero, $sp, 408
	addi.w	$s1, $zero, -1
	addi.d	$a3, $sp, 488
	move	$a1, $s1
	move	$a2, $zero
	pcaddu18i	$ra, %call36(getLuma4x4Neighbour)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 4
	addi.d	$a3, $sp, 464
	move	$a1, $zero
	move	$a2, $s1
	pcaddu18i	$ra, %call36(getLuma4x4Neighbour)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 4
	ori	$a1, $zero, 16
	addi.d	$a3, $sp, 416
	move	$a2, $s1
	pcaddu18i	$ra, %call36(getLuma4x4Neighbour)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 4
	addi.d	$a3, $sp, 440
	move	$a1, $s1
	move	$a2, $s1
	pcaddu18i	$ra, %call36(getLuma4x4Neighbour)
	jirl	$ra, $ra, 0
	ldptr.w	$a0, $fp, 5624
	beqz	$a0, .LBB12_87
# %bb.17:
	ld.wu	$a0, $fp, 4
	ldptr.d	$a2, $fp, 5600
	ori	$a1, $zero, 408
	mul.d	$a0, $a0, $a1
	add.d	$a0, $a2, $a0
	ld.w	$a0, $a0, 356
	ld.w	$a5, $sp, 488
	beqz	$a0, .LBB12_103
# %bb.18:
	move	$a0, $s1
	beqz	$a5, .LBB12_22
# %bb.19:
	pcalau12i	$a0, %got_pc_hi20(dec_picture)
	ld.d	$a0, $a0, %got_pc_lo12(dec_picture)
	ld.d	$a0, $a0, 0
	ori	$a1, $s8, 1560
	ldx.d	$a0, $a0, $a1
	ld.w	$a1, $sp, 508
	ld.d	$a0, $a0, 0
	ld.w	$a3, $sp, 492
	ori	$a4, $zero, 408
	slli.d	$a1, $a1, 3
	ldx.d	$a0, $a0, $a1
	ld.w	$a1, $sp, 504
	mul.d	$a3, $a3, $a4
	add.d	$a3, $a2, $a3
	ld.w	$a3, $a3, 356
	ldx.b	$a0, $a0, $a1
	bnez	$a3, .LBB12_22
# %bb.20:
	addi.w	$a1, $zero, -1
	bge	$a1, $a0, .LBB12_22
# %bb.21:
	slli.d	$a0, $a0, 1
	andi	$a0, $a0, 254
.LBB12_22:
	ld.w	$a6, $sp, 464
	move	$a1, $s1
	beqz	$a6, .LBB12_26
# %bb.23:
	pcalau12i	$a1, %got_pc_hi20(dec_picture)
	ld.d	$a1, $a1, %got_pc_lo12(dec_picture)
	ld.d	$a1, $a1, 0
	ori	$a3, $s8, 1560
	ldx.d	$a1, $a1, $a3
	ld.w	$a3, $sp, 484
	ld.d	$a1, $a1, 0
	ld.w	$a4, $sp, 468
	ori	$a7, $zero, 408
	slli.d	$a3, $a3, 3
	ldx.d	$a1, $a1, $a3
	ld.w	$a3, $sp, 480
	mul.d	$a4, $a4, $a7
	add.d	$a4, $a2, $a4
	ld.w	$a4, $a4, 356
	ldx.b	$a1, $a1, $a3
	bnez	$a4, .LBB12_26
# %bb.24:
	addi.w	$a3, $zero, -1
	bge	$a3, $a1, .LBB12_26
# %bb.25:
	slli.d	$a1, $a1, 1
	andi	$a1, $a1, 254
.LBB12_26:
	ld.w	$a7, $sp, 440
	beqz	$a7, .LBB12_30
# %bb.27:
	pcalau12i	$a3, %got_pc_hi20(dec_picture)
	ld.d	$a3, $a3, %got_pc_lo12(dec_picture)
	ld.d	$a3, $a3, 0
	ori	$a4, $s8, 1560
	ldx.d	$a3, $a3, $a4
	ld.w	$a4, $sp, 460
	ld.d	$a3, $a3, 0
	ld.w	$t0, $sp, 444
	ori	$t1, $zero, 408
	slli.d	$a4, $a4, 3
	ldx.d	$a3, $a3, $a4
	ld.w	$a4, $sp, 456
	mul.d	$t0, $t0, $t1
	add.d	$t0, $a2, $t0
	ld.w	$t0, $t0, 356
	ldx.b	$s1, $a3, $a4
	bnez	$t0, .LBB12_30
# %bb.28:
	addi.w	$a3, $zero, -1
	bge	$a3, $s1, .LBB12_30
# %bb.29:
	slli.d	$a3, $s1, 1
	andi	$s1, $a3, 254
.LBB12_30:
	ld.w	$t0, $sp, 416
	beqz	$t0, .LBB12_34
# %bb.31:
	pcalau12i	$a3, %got_pc_hi20(dec_picture)
	ld.d	$a3, $a3, %got_pc_lo12(dec_picture)
	ld.d	$a3, $a3, 0
	ori	$a4, $s8, 1560
	ldx.d	$a3, $a3, $a4
	ld.w	$a4, $sp, 436
	ld.d	$a3, $a3, 0
	ld.w	$t1, $sp, 420
	ori	$t2, $zero, 408
	slli.d	$a4, $a4, 3
	ldx.d	$a3, $a3, $a4
	ld.w	$a4, $sp, 432
	mul.d	$t1, $t1, $t2
	add.d	$t1, $a2, $t1
	ld.w	$t1, $t1, 356
	ldx.b	$s1, $a3, $a4
	bnez	$t1, .LBB12_34
# %bb.32:
	addi.w	$a3, $zero, -1
	bge	$a3, $s1, .LBB12_34
# %bb.33:
	slli.d	$a3, $s1, 1
	andi	$s1, $a3, 254
.LBB12_34:
	addi.w	$a4, $zero, -1
	move	$a3, $a4
	beqz	$a5, .LBB12_38
# %bb.35:
	pcalau12i	$a3, %got_pc_hi20(dec_picture)
	ld.d	$a3, $a3, %got_pc_lo12(dec_picture)
	ld.d	$a3, $a3, 0
	ori	$a5, $s8, 1560
	ldx.d	$a3, $a3, $a5
	ld.w	$a5, $sp, 508
	ld.d	$a3, $a3, 8
	ld.w	$t1, $sp, 492
	ori	$t2, $zero, 408
	slli.d	$a5, $a5, 3
	ldx.d	$a3, $a3, $a5
	ld.w	$a5, $sp, 504
	mul.d	$t1, $t1, $t2
	add.d	$t1, $a2, $t1
	ld.w	$t1, $t1, 356
	ldx.b	$a3, $a3, $a5
	bnez	$t1, .LBB12_38
# %bb.36:
	addi.w	$a5, $zero, -1
	bge	$a5, $a3, .LBB12_38
# %bb.37:
	slli.d	$a3, $a3, 1
	andi	$a3, $a3, 254
.LBB12_38:
	move	$a5, $a4
	beqz	$a6, .LBB12_42
# %bb.39:
	pcalau12i	$a5, %got_pc_hi20(dec_picture)
	ld.d	$a5, $a5, %got_pc_lo12(dec_picture)
	ld.d	$a5, $a5, 0
	ori	$a6, $s8, 1560
	ldx.d	$a5, $a5, $a6
	ld.w	$a6, $sp, 484
	ld.d	$a5, $a5, 8
	ld.w	$t1, $sp, 468
	ori	$t2, $zero, 408
	slli.d	$a6, $a6, 3
	ldx.d	$a5, $a5, $a6
	ld.w	$a6, $sp, 480
	mul.d	$t1, $t1, $t2
	add.d	$t1, $a2, $t1
	ld.w	$t1, $t1, 356
	ldx.b	$a5, $a5, $a6
	bnez	$t1, .LBB12_42
# %bb.40:
	addi.w	$a6, $zero, -1
	bge	$a6, $a5, .LBB12_42
# %bb.41:
	slli.d	$a5, $a5, 1
	andi	$a5, $a5, 254
.LBB12_42:
	beqz	$a7, .LBB12_46
# %bb.43:
	pcalau12i	$a4, %got_pc_hi20(dec_picture)
	ld.d	$a4, $a4, %got_pc_lo12(dec_picture)
	ld.d	$a4, $a4, 0
	ori	$a6, $s8, 1560
	ldx.d	$a4, $a4, $a6
	ld.w	$a6, $sp, 460
	ld.d	$a4, $a4, 8
	ld.w	$a7, $sp, 444
	ori	$t1, $zero, 408
	slli.d	$a6, $a6, 3
	ldx.d	$a4, $a4, $a6
	ld.w	$a6, $sp, 456
	mul.d	$a7, $a7, $t1
	add.d	$a7, $a2, $a7
	ld.w	$a7, $a7, 356
	ldx.b	$a4, $a4, $a6
	bnez	$a7, .LBB12_46
# %bb.44:
	addi.w	$a6, $zero, -1
	bge	$a6, $a4, .LBB12_46
# %bb.45:
	slli.d	$a4, $a4, 1
	andi	$a4, $a4, 254
.LBB12_46:
	beqz	$t0, .LBB12_135
# %bb.47:
	pcalau12i	$a4, %got_pc_hi20(dec_picture)
	ld.d	$a4, $a4, %got_pc_lo12(dec_picture)
	ld.d	$a4, $a4, 0
	ori	$a6, $s8, 1560
	ldx.d	$a4, $a4, $a6
	ld.w	$a6, $sp, 436
	ld.d	$a4, $a4, 8
	ld.w	$a7, $sp, 420
	ori	$t0, $zero, 408
	slli.d	$a6, $a6, 3
	ldx.d	$a4, $a4, $a6
	ld.w	$a6, $sp, 432
	mul.d	$a7, $a7, $t0
	add.d	$a2, $a2, $a7
	ld.w	$a2, $a2, 356
	ldx.b	$a4, $a4, $a6
	bnez	$a2, .LBB12_135
# %bb.48:
	addi.w	$a2, $zero, -1
	bge	$a2, $a4, .LBB12_135
# %bb.49:
	slli.d	$a2, $a4, 1
	andi	$a4, $a2, 254
	b	.LBB12_135
.LBB12_50:                              # %.preheader970
	move	$a1, $zero
	st.d	$zero, $sp, 368                 # 8-byte Folded Spill
	ori	$s6, $zero, 255
	pcalau12i	$a0, %got_pc_hi20(dec_picture)
	ld.d	$s7, $a0, %got_pc_lo12(dec_picture)
	lu12i.w	$a0, 77
	ori	$s8, $a0, 1560
	pcalau12i	$a0, %got_pc_hi20(listXsize)
	ld.d	$s3, $a0, %got_pc_lo12(listXsize)
	ori	$t7, $zero, 1
	lu12i.w	$a0, -33153
	ori	$s4, $a0, 2220
	ori	$s0, $zero, 1584
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	b	.LBB12_52
	.p2align	4, , 16
.LBB12_51:                              # %.loopexit969
                                        #   in Loop: Header=BB12_52 Depth=1
	ld.d	$a1, $sp, 360                   # 8-byte Folded Reload
	addi.d	$a1, $a1, 1
	ld.d	$a0, $sp, 368                   # 8-byte Folded Reload
	xori	$a0, $a0, 1
	st.d	$a0, $sp, 368                   # 8-byte Folded Spill
	ori	$a0, $zero, 4
	beq	$a1, $a0, .LBB12_164
.LBB12_52:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB12_55 Depth 2
                                        #       Child Loop BB12_58 Depth 3
                                        #         Child Loop BB12_70 Depth 4
                                        #         Child Loop BB12_84 Depth 4
                                        #         Child Loop BB12_76 Depth 4
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	st.d	$a1, $sp, 360                   # 8-byte Folded Spill
	ldx.bu	$a0, $a0, $a1
	bnez	$a0, .LBB12_51
# %bb.53:                               #   in Loop: Header=BB12_52 Depth=1
	ld.d	$a0, $sp, 368                   # 8-byte Folded Reload
	andi	$a0, $a0, 1
	ori	$a1, $zero, 2
	masknez	$a1, $a1, $a0
	ori	$a2, $zero, 4
	maskeqz	$a0, $a2, $a0
	or	$s2, $a0, $a1
	ld.d	$a2, $sp, 360                   # 8-byte Folded Reload
	andi	$a0, $a2, 2
	slli.d	$a1, $a2, 1
	andi	$a1, $a1, 2
	st.d	$a1, $sp, 384                   # 8-byte Folded Spill
	ori	$a1, $a2, 1
	addi.w	$a1, $a1, 0
	st.d	$a1, $sp, 376                   # 8-byte Folded Spill
	b	.LBB12_55
	.p2align	4, , 16
.LBB12_54:                              #   in Loop: Header=BB12_55 Depth=2
	addi.w	$a0, $s5, 1
	ld.d	$a1, $sp, 376                   # 8-byte Folded Reload
	beq	$s5, $a1, .LBB12_51
.LBB12_55:                              #   Parent Loop BB12_52 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB12_58 Depth 3
                                        #         Child Loop BB12_70 Depth 4
                                        #         Child Loop BB12_84 Depth 4
                                        #         Child Loop BB12_76 Depth 4
	move	$s5, $a0
	ld.d	$s1, $sp, 384                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 392                   # 8-byte Folded Reload
	b	.LBB12_58
	.p2align	4, , 16
.LBB12_56:                              #   in Loop: Header=BB12_58 Depth=3
	move	$a3, $zero
.LBB12_57:                              #   in Loop: Header=BB12_58 Depth=3
	ld.d	$a2, $s7, 0
	ldx.d	$a2, $a2, $s8
	ld.d	$a2, $a2, 0
	add.w	$a0, $a0, $s5
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $a2, $a0
	stx.b	$a3, $a0, $a1
	ld.d	$a0, $s7, 0
	ldx.d	$a0, $a0, $s8
	ld.d	$a3, $sp, 392                   # 8-byte Folded Reload
	ld.w	$a1, $a3, 76
	ld.d	$a0, $a0, 8
	add.w	$a1, $a1, $s5
	ld.w	$a2, $a3, 92
	slli.d	$a1, $a1, 3
	ldx.d	$a0, $a0, $a1
	add.w	$a1, $a2, $s1
	addi.w	$s1, $s1, 1
	stx.b	$zero, $a0, $a1
	beq	$s1, $s2, .LBB12_54
.LBB12_58:                              #   Parent Loop BB12_52 Depth=1
                                        #     Parent Loop BB12_55 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB12_70 Depth 4
                                        #         Child Loop BB12_84 Depth 4
                                        #         Child Loop BB12_76 Depth 4
	ldptr.w	$a2, $a3, 5624
	beqz	$a2, .LBB12_62
# %bb.59:                               #   in Loop: Header=BB12_58 Depth=3
	ld.w	$a0, $t6, 356
	beqz	$a0, .LBB12_62
# %bb.60:                               #   in Loop: Header=BB12_58 Depth=3
	ld.d	$a4, $sp, 392                   # 8-byte Folded Reload
	ld.bu	$a0, $a4, 4
	andi	$a1, $a0, 1
	sltui	$a3, $a1, 1
	ld.w	$a0, $a4, 76
	ori	$a4, $zero, 4
	masknez	$a4, $a4, $a3
	ori	$a5, $zero, 2
	maskeqz	$a3, $a5, $a3
	or	$a5, $a3, $a4
	bnez	$a1, .LBB12_63
# %bb.61:                               #   in Loop: Header=BB12_58 Depth=3
	srai.d	$a1, $a0, 1
	b	.LBB12_64
	.p2align	4, , 16
.LBB12_62:                              # %.thread
                                        #   in Loop: Header=BB12_58 Depth=3
	ld.d	$t3, $sp, 392                   # 8-byte Folded Reload
	ld.w	$a0, $t3, 76
	move	$a5, $zero
	move	$a1, $a0
	b	.LBB12_65
.LBB12_63:                              #   in Loop: Header=BB12_58 Depth=3
	addi.w	$a1, $a0, -4
	srai.d	$a1, $a1, 1
.LBB12_64:                              #   in Loop: Header=BB12_58 Depth=3
	ld.d	$t3, $sp, 392                   # 8-byte Folded Reload
.LBB12_65:                              #   in Loop: Header=BB12_58 Depth=3
	ld.d	$a7, $sp, 200                   # 8-byte Folded Reload
	ld.d	$a3, $a7, 0
	add.w	$a1, $a1, $s5
	slli.d	$a4, $a1, 3
	ld.w	$a1, $t3, 92
	ldx.d	$a3, $a3, $a4
	add.w	$a1, $a1, $s1
	ldx.bu	$a3, $a3, $a1
	addi.d	$a3, $a3, -255
	sltui	$a3, $a3, 1
	slli.d	$a6, $a3, 3
	ldx.d	$a6, $a7, $a6
	ldx.d	$a6, $a6, $a4
	ldx.bu	$a6, $a6, $a1
	beq	$a6, $s6, .LBB12_56
# %bb.66:                               # %.preheader968
                                        #   in Loop: Header=BB12_58 Depth=3
	ldptr.w	$a6, $t3, 5640
	slli.d	$a7, $a5, 2
	ldx.w	$a7, $s3, $a7
	slt	$t0, $a6, $a7
	masknez	$a7, $a7, $t0
	maskeqz	$a6, $a6, $t0
	or	$a6, $a6, $a7
	blt	$a6, $t7, .LBB12_72
# %bb.67:                               # %.lr.ph
                                        #   in Loop: Header=BB12_58 Depth=3
	ldptr.w	$t2, $t3, 5584
	ld.d	$t1, $s7, 0
	alsl.d	$t0, $a3, $fp, 3
	slli.d	$a7, $a1, 3
	beqz	$t2, .LBB12_73
# %bb.68:                               # %.lr.ph.split.us
                                        #   in Loop: Header=BB12_58 Depth=3
	ld.d	$a3, $t0, 0
	ldx.d	$a3, $a3, $a4
	ld.w	$t0, $t3, 12
	ldx.d	$a4, $a3, $a7
	bstrpick.d	$a6, $a6, 31, 0
	move	$a3, $zero
	beqz	$a2, .LBB12_83
# %bb.69:                               # %.lr.ph.split.us.split.preheader
                                        #   in Loop: Header=BB12_58 Depth=3
	mul.d	$a2, $t0, $s0
	slli.d	$a7, $a5, 3
	slli.d	$a5, $a5, 8
	or	$a5, $a5, $a7
	add.d	$a2, $a2, $a5
	add.d	$a2, $t1, $a2
	addi.d	$a2, $a2, 24
	.p2align	4, , 16
.LBB12_70:                              # %.lr.ph.split.us.split
                                        #   Parent Loop BB12_52 Depth=1
                                        #     Parent Loop BB12_55 Depth=2
                                        #       Parent Loop BB12_58 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.d	$a5, $a2, 0
	beq	$a5, $a4, .LBB12_82
# %bb.71:                               #   in Loop: Header=BB12_70 Depth=4
	addi.d	$a3, $a3, 1
	addi.d	$a2, $a2, 8
	bne	$a6, $a3, .LBB12_70
	b	.LBB12_86
	.p2align	4, , 16
.LBB12_72:                              #   in Loop: Header=BB12_58 Depth=3
	addi.d	$a3, $zero, -1
	b	.LBB12_57
.LBB12_73:                              # %.lr.ph.split.preheader
                                        #   in Loop: Header=BB12_58 Depth=3
	pcalau12i	$a3, %got_pc_hi20(listX)
	ld.d	$t2, $a3, %got_pc_lo12(listX)
	move	$a3, $zero
	ld.d	$t2, $t2, 0
	slli.d	$t3, $a5, 3
	slli.d	$a5, $a5, 8
	or	$a5, $a5, $t3
	add.d	$a5, $t1, $a5
	addi.d	$a5, $a5, 24
	ori	$t4, $zero, 1
	b	.LBB12_76
	.p2align	4, , 16
.LBB12_74:                              #   in Loop: Header=BB12_76 Depth=4
	ld.d	$t4, $sp, 392                   # 8-byte Folded Reload
	ld.w	$t4, $t4, 12
	ldx.d	$t3, $t3, $a4
	mul.d	$t4, $t4, $s0
	ldx.d	$t4, $a5, $t4
	ldx.d	$t3, $t3, $a7
	xor	$t3, $t4, $t3
	sltui	$t3, $t3, 1
	addi.d	$a3, $a3, 1
	bnez	$t3, .LBB12_81
.LBB12_75:                              #   in Loop: Header=BB12_76 Depth=4
	addi.d	$a5, $a5, 8
	addi.d	$t2, $t2, 8
	addi.d	$t4, $t1, 1
	bgeu	$t1, $a6, .LBB12_81
.LBB12_76:                              # %.lr.ph.split
                                        #   Parent Loop BB12_52 Depth=1
                                        #     Parent Loop BB12_55 Depth=2
                                        #       Parent Loop BB12_58 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	move	$t1, $t4
	beqz	$a2, .LBB12_78
# %bb.77:                               #   in Loop: Header=BB12_76 Depth=4
	ld.w	$t4, $t6, 356
	ld.d	$t3, $t0, 0
	bnez	$t4, .LBB12_74
	b	.LBB12_79
	.p2align	4, , 16
.LBB12_78:                              # %.lr.ph.split..critedge_crit_edge
                                        #   in Loop: Header=BB12_76 Depth=4
	ld.d	$t3, $t0, 0
.LBB12_79:                              # %.critedge
                                        #   in Loop: Header=BB12_76 Depth=4
	ld.d	$t4, $t2, 0
	ldx.d	$t3, $t3, $a4
	ld.w	$t5, $t4, 8
	ldx.d	$t3, $t3, $a7
	slli.w	$t5, $t5, 1
	beq	$t3, $t5, .LBB12_57
# %bb.80:                               #   in Loop: Header=BB12_76 Depth=4
	ld.w	$t4, $t4, 12
	slli.w	$t4, $t4, 1
	xor	$t3, $t3, $t4
	sltui	$t3, $t3, 1
	addi.d	$a3, $a3, 1
	beqz	$t3, .LBB12_75
.LBB12_81:                              # %._crit_edge.loopexit
                                        #   in Loop: Header=BB12_58 Depth=3
	addi.d	$a2, $a3, -1
	masknez	$a3, $s4, $t3
	maskeqz	$a2, $a2, $t3
	or	$a3, $a2, $a3
.LBB12_82:                              # %._crit_edge
                                        #   in Loop: Header=BB12_58 Depth=3
	addi.w	$a2, $a3, 0
	lu12i.w	$a4, -33153
	ori	$a4, $a4, 2220
	bne	$a2, $a4, .LBB12_57
	b	.LBB12_86
.LBB12_83:                              # %.lr.ph.split.us.split.us.preheader
                                        #   in Loop: Header=BB12_58 Depth=3
	mul.d	$a2, $t0, $s0
	slli.d	$a7, $a5, 3
	slli.d	$a5, $a5, 8
	or	$a5, $a5, $a7
	add.d	$a2, $a2, $a5
	add.d	$a2, $t1, $a2
	addi.d	$a2, $a2, 24
	.p2align	4, , 16
.LBB12_84:                              # %.lr.ph.split.us.split.us
                                        #   Parent Loop BB12_52 Depth=1
                                        #     Parent Loop BB12_55 Depth=2
                                        #       Parent Loop BB12_58 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.d	$a5, $a2, 0
	beq	$a5, $a4, .LBB12_82
# %bb.85:                               #   in Loop: Header=BB12_84 Depth=4
	addi.d	$a3, $a3, 1
	addi.d	$a2, $a2, 8
	bne	$a6, $a3, .LBB12_84
	.p2align	4, , 16
.LBB12_86:                              # %._crit_edge.thread
                                        #   in Loop: Header=BB12_58 Depth=3
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
	addi.w	$a1, $zero, -1111
	pcaddu18i	$ra, %call36(error)
	jirl	$ra, $ra, 0
	ori	$t7, $zero, 1
	ld.d	$t6, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 392                   # 8-byte Folded Reload
	ld.w	$a1, $a0, 92
	ld.w	$a0, $a0, 76
	add.w	$a1, $a1, $s1
	move	$a3, $s4
	b	.LBB12_57
.LBB12_87:
	ld.w	$a2, $sp, 488
	addi.w	$s1, $zero, -1
	move	$a0, $s1
	beqz	$a2, .LBB12_89
# %bb.88:
	pcalau12i	$a0, %got_pc_hi20(dec_picture)
	ld.d	$a0, $a0, %got_pc_lo12(dec_picture)
	ld.d	$a0, $a0, 0
	ori	$a1, $s8, 1560
	ldx.d	$a0, $a0, $a1
	ld.w	$a1, $sp, 508
	ld.d	$a0, $a0, 0
	slli.d	$a1, $a1, 3
	ldx.d	$a0, $a0, $a1
	ld.w	$a1, $sp, 504
	ldx.b	$a0, $a0, $a1
.LBB12_89:
	ld.w	$a6, $sp, 464
	move	$a1, $s1
	beqz	$a6, .LBB12_91
# %bb.90:
	pcalau12i	$a1, %got_pc_hi20(dec_picture)
	ld.d	$a1, $a1, %got_pc_lo12(dec_picture)
	ld.d	$a1, $a1, 0
	ori	$a3, $s8, 1560
	ldx.d	$a1, $a1, $a3
	ld.w	$a3, $sp, 484
	ld.d	$a1, $a1, 0
	slli.d	$a3, $a3, 3
	ldx.d	$a1, $a1, $a3
	ld.w	$a3, $sp, 480
	ldx.b	$a1, $a1, $a3
.LBB12_91:
	ld.w	$a7, $sp, 440
	beqz	$a7, .LBB12_93
# %bb.92:
	pcalau12i	$a3, %got_pc_hi20(dec_picture)
	ld.d	$a3, $a3, %got_pc_lo12(dec_picture)
	ld.d	$a3, $a3, 0
	ori	$a4, $s8, 1560
	ldx.d	$a3, $a3, $a4
	ld.w	$a4, $sp, 460
	ld.d	$a3, $a3, 0
	slli.d	$a4, $a4, 3
	ldx.d	$a3, $a3, $a4
	ld.w	$a4, $sp, 456
	ldx.b	$s1, $a3, $a4
.LBB12_93:
	ld.w	$t0, $sp, 416
	beqz	$t0, .LBB12_95
# %bb.94:
	pcalau12i	$a3, %got_pc_hi20(dec_picture)
	ld.d	$a3, $a3, %got_pc_lo12(dec_picture)
	ld.d	$a3, $a3, 0
	ori	$a4, $s8, 1560
	ldx.d	$a3, $a3, $a4
	ld.w	$a4, $sp, 436
	ld.d	$a3, $a3, 0
	slli.d	$a4, $a4, 3
	ldx.d	$a3, $a3, $a4
	ld.w	$a4, $sp, 432
	ldx.b	$s1, $a3, $a4
.LBB12_95:
	addi.w	$a4, $zero, -1
	move	$a3, $a4
	beqz	$a2, .LBB12_97
# %bb.96:
	pcalau12i	$a2, %got_pc_hi20(dec_picture)
	ld.d	$a2, $a2, %got_pc_lo12(dec_picture)
	ld.d	$a2, $a2, 0
	ori	$a3, $s8, 1560
	ldx.d	$a2, $a2, $a3
	ld.w	$a3, $sp, 508
	ld.d	$a2, $a2, 8
	slli.d	$a3, $a3, 3
	ldx.d	$a2, $a2, $a3
	ld.w	$a3, $sp, 504
	ldx.b	$a3, $a2, $a3
.LBB12_97:
	move	$a5, $a4
	beqz	$a6, .LBB12_99
# %bb.98:
	pcalau12i	$a2, %got_pc_hi20(dec_picture)
	ld.d	$a2, $a2, %got_pc_lo12(dec_picture)
	ld.d	$a2, $a2, 0
	ori	$a5, $s8, 1560
	ldx.d	$a2, $a2, $a5
	ld.w	$a5, $sp, 484
	ld.d	$a2, $a2, 8
	slli.d	$a5, $a5, 3
	ldx.d	$a2, $a2, $a5
	ld.w	$a5, $sp, 480
	ldx.b	$a5, $a2, $a5
.LBB12_99:
	beqz	$a7, .LBB12_101
# %bb.100:
	pcalau12i	$a2, %got_pc_hi20(dec_picture)
	ld.d	$a2, $a2, %got_pc_lo12(dec_picture)
	ld.d	$a2, $a2, 0
	ori	$a4, $s8, 1560
	ldx.d	$a2, $a2, $a4
	ld.w	$a4, $sp, 460
	ld.d	$a2, $a2, 8
	slli.d	$a4, $a4, 3
	ldx.d	$a2, $a2, $a4
	ld.w	$a4, $sp, 456
	ldx.b	$a4, $a2, $a4
.LBB12_101:
	beqz	$t0, .LBB12_135
# %bb.102:
	pcalau12i	$a2, %got_pc_hi20(dec_picture)
	ld.d	$a2, $a2, %got_pc_lo12(dec_picture)
	ld.d	$a2, $a2, 0
	ori	$a4, $s8, 1560
	ldx.d	$a2, $a2, $a4
	ld.w	$a4, $sp, 436
	ld.d	$a2, $a2, 8
	slli.d	$a4, $a4, 3
	ldx.d	$a2, $a2, $a4
	ld.w	$a4, $sp, 432
	ldx.b	$a4, $a2, $a4
	b	.LBB12_135
.LBB12_103:
	addi.w	$s1, $zero, -1
	move	$a0, $s1
	beqz	$a5, .LBB12_107
# %bb.104:
	pcalau12i	$a0, %got_pc_hi20(dec_picture)
	ld.d	$a0, $a0, %got_pc_lo12(dec_picture)
	ld.d	$a0, $a0, 0
	ori	$a1, $s8, 1560
	ldx.d	$a0, $a0, $a1
	ld.w	$a1, $sp, 508
	ld.d	$a0, $a0, 0
	ld.w	$a3, $sp, 492
	ori	$a4, $zero, 408
	slli.d	$a1, $a1, 3
	ldx.d	$a0, $a0, $a1
	ld.w	$a1, $sp, 504
	mul.d	$a3, $a3, $a4
	add.d	$a3, $a2, $a3
	ld.w	$a3, $a3, 356
	ldx.b	$a0, $a0, $a1
	bnez	$a3, .LBB12_106
# %bb.105:
	addi.w	$a1, $zero, -1
	blt	$a1, $a0, .LBB12_107
.LBB12_106:                             # %._crit_edge1390
	srai.d	$a0, $a0, 1
.LBB12_107:
	ld.w	$a6, $sp, 464
	move	$a1, $s1
	beqz	$a6, .LBB12_111
# %bb.108:
	pcalau12i	$a1, %got_pc_hi20(dec_picture)
	ld.d	$a1, $a1, %got_pc_lo12(dec_picture)
	ld.d	$a1, $a1, 0
	ori	$a3, $s8, 1560
	ldx.d	$a1, $a1, $a3
	ld.w	$a3, $sp, 484
	ld.d	$a1, $a1, 0
	ld.w	$a4, $sp, 468
	ori	$a7, $zero, 408
	slli.d	$a3, $a3, 3
	ldx.d	$a1, $a1, $a3
	ld.w	$a3, $sp, 480
	mul.d	$a4, $a4, $a7
	add.d	$a4, $a2, $a4
	ld.w	$a4, $a4, 356
	ldx.b	$a1, $a1, $a3
	bnez	$a4, .LBB12_110
# %bb.109:
	addi.w	$a3, $zero, -1
	blt	$a3, $a1, .LBB12_111
.LBB12_110:                             # %._crit_edge1405
	srai.d	$a1, $a1, 1
.LBB12_111:
	ld.w	$a7, $sp, 440
	beqz	$a7, .LBB12_115
# %bb.112:
	pcalau12i	$a3, %got_pc_hi20(dec_picture)
	ld.d	$a3, $a3, %got_pc_lo12(dec_picture)
	ld.d	$a3, $a3, 0
	ori	$a4, $s8, 1560
	ldx.d	$a3, $a3, $a4
	ld.w	$a4, $sp, 460
	ld.d	$a3, $a3, 0
	ld.w	$t0, $sp, 444
	ori	$t1, $zero, 408
	slli.d	$a4, $a4, 3
	ldx.d	$a3, $a3, $a4
	ld.w	$a4, $sp, 456
	mul.d	$t0, $t0, $t1
	add.d	$t0, $a2, $t0
	ld.w	$t0, $t0, 356
	ldx.b	$s1, $a3, $a4
	bnez	$t0, .LBB12_114
# %bb.113:
	addi.w	$a3, $zero, -1
	blt	$a3, $s1, .LBB12_115
.LBB12_114:                             # %._crit_edge1420
	srai.d	$s1, $s1, 1
.LBB12_115:
	ld.w	$t0, $sp, 416
	beqz	$t0, .LBB12_119
# %bb.116:
	pcalau12i	$a3, %got_pc_hi20(dec_picture)
	ld.d	$a3, $a3, %got_pc_lo12(dec_picture)
	ld.d	$a3, $a3, 0
	ori	$a4, $s8, 1560
	ldx.d	$a3, $a3, $a4
	ld.w	$a4, $sp, 436
	ld.d	$a3, $a3, 0
	ld.w	$t1, $sp, 420
	ori	$t2, $zero, 408
	slli.d	$a4, $a4, 3
	ldx.d	$a3, $a3, $a4
	ld.w	$a4, $sp, 432
	mul.d	$t1, $t1, $t2
	add.d	$t1, $a2, $t1
	ld.w	$t1, $t1, 356
	ldx.b	$s1, $a3, $a4
	bnez	$t1, .LBB12_118
# %bb.117:
	addi.w	$a3, $zero, -1
	blt	$a3, $s1, .LBB12_119
.LBB12_118:                             # %._crit_edge1435
	srai.d	$s1, $s1, 1
.LBB12_119:
	addi.w	$a4, $zero, -1
	move	$a3, $a4
	beqz	$a5, .LBB12_123
# %bb.120:
	pcalau12i	$a3, %got_pc_hi20(dec_picture)
	ld.d	$a3, $a3, %got_pc_lo12(dec_picture)
	ld.d	$a3, $a3, 0
	ori	$a5, $s8, 1560
	ldx.d	$a3, $a3, $a5
	ld.w	$a5, $sp, 508
	ld.d	$a3, $a3, 8
	ld.w	$t1, $sp, 492
	ori	$t2, $zero, 408
	slli.d	$a5, $a5, 3
	ldx.d	$a3, $a3, $a5
	ld.w	$a5, $sp, 504
	mul.d	$t1, $t1, $t2
	add.d	$t1, $a2, $t1
	ld.w	$t1, $t1, 356
	ldx.b	$a3, $a3, $a5
	bnez	$t1, .LBB12_122
# %bb.121:
	addi.w	$a5, $zero, -1
	blt	$a5, $a3, .LBB12_123
.LBB12_122:                             # %._crit_edge1450
	srai.d	$a3, $a3, 1
.LBB12_123:
	move	$a5, $a4
	beqz	$a6, .LBB12_127
# %bb.124:
	pcalau12i	$a5, %got_pc_hi20(dec_picture)
	ld.d	$a5, $a5, %got_pc_lo12(dec_picture)
	ld.d	$a5, $a5, 0
	ori	$a6, $s8, 1560
	ldx.d	$a5, $a5, $a6
	ld.w	$a6, $sp, 484
	ld.d	$a5, $a5, 8
	ld.w	$t1, $sp, 468
	ori	$t2, $zero, 408
	slli.d	$a6, $a6, 3
	ldx.d	$a5, $a5, $a6
	ld.w	$a6, $sp, 480
	mul.d	$t1, $t1, $t2
	add.d	$t1, $a2, $t1
	ld.w	$t1, $t1, 356
	ldx.b	$a5, $a5, $a6
	bnez	$t1, .LBB12_126
# %bb.125:
	addi.w	$a6, $zero, -1
	blt	$a6, $a5, .LBB12_127
.LBB12_126:                             # %._crit_edge1466
	srai.d	$a5, $a5, 1
.LBB12_127:
	beqz	$a7, .LBB12_131
# %bb.128:
	pcalau12i	$a4, %got_pc_hi20(dec_picture)
	ld.d	$a4, $a4, %got_pc_lo12(dec_picture)
	ld.d	$a4, $a4, 0
	ori	$a6, $s8, 1560
	ldx.d	$a4, $a4, $a6
	ld.w	$a6, $sp, 460
	ld.d	$a4, $a4, 8
	ld.w	$a7, $sp, 444
	ori	$t1, $zero, 408
	slli.d	$a6, $a6, 3
	ldx.d	$a4, $a4, $a6
	ld.w	$a6, $sp, 456
	mul.d	$a7, $a7, $t1
	add.d	$a7, $a2, $a7
	ld.w	$a7, $a7, 356
	ldx.b	$a4, $a4, $a6
	bnez	$a7, .LBB12_130
# %bb.129:
	addi.w	$a6, $zero, -1
	blt	$a6, $a4, .LBB12_131
.LBB12_130:                             # %._crit_edge1482
	srai.d	$a4, $a4, 1
.LBB12_131:
	beqz	$t0, .LBB12_135
# %bb.132:
	pcalau12i	$a4, %got_pc_hi20(dec_picture)
	ld.d	$a4, $a4, %got_pc_lo12(dec_picture)
	ld.d	$a4, $a4, 0
	ori	$a6, $s8, 1560
	ldx.d	$a4, $a4, $a6
	ld.w	$a6, $sp, 436
	ld.d	$a4, $a4, 8
	ld.w	$a7, $sp, 420
	ori	$t0, $zero, 408
	slli.d	$a6, $a6, 3
	ldx.d	$a4, $a4, $a6
	ld.w	$a6, $sp, 432
	mul.d	$a7, $a7, $t0
	add.d	$a2, $a2, $a7
	ld.w	$a2, $a2, 356
	ldx.b	$a4, $a4, $a6
	bnez	$a2, .LBB12_134
# %bb.133:
	addi.w	$a2, $zero, -1
	blt	$a2, $a4, .LBB12_135
.LBB12_134:                             # %._crit_edge1498
	srai.d	$a4, $a4, 1
.LBB12_135:
	or	$a2, $a0, $a1
	addi.w	$a2, $a2, 0
	addi.w	$a1, $a1, 0
	addi.w	$s0, $zero, -1
	slt	$a2, $s0, $a2
	sltu	$a6, $a0, $a1
	masknez	$a7, $a1, $a6
	maskeqz	$a6, $a0, $a6
	or	$a6, $a6, $a7
	slt	$a7, $a1, $a0
	masknez	$a1, $a1, $a7
	maskeqz	$a0, $a0, $a7
	or	$a0, $a0, $a1
	masknez	$a0, $a0, $a2
	maskeqz	$a1, $a6, $a2
	or	$a0, $a1, $a0
	ext.w.b	$a0, $a0
	or	$a1, $a0, $s1
	addi.w	$a1, $a1, 0
	addi.w	$a2, $s1, 0
	slt	$a1, $s0, $a1
	sltu	$a6, $a0, $a2
	maskeqz	$a7, $a0, $a6
	masknez	$a6, $a2, $a6
	or	$a6, $a7, $a6
	slt	$a7, $a2, $a0
	maskeqz	$a0, $a0, $a7
	masknez	$a2, $a2, $a7
	or	$a0, $a0, $a2
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a6, $a1
	or	$s3, $a1, $a0
	or	$a0, $a3, $a5
	addi.w	$a0, $a0, 0
	addi.w	$a1, $a5, 0
	slt	$a0, $s0, $a0
	sltu	$a2, $a3, $a1
	masknez	$a5, $a1, $a2
	maskeqz	$a2, $a3, $a2
	or	$a2, $a2, $a5
	slt	$a5, $a1, $a3
	masknez	$a1, $a1, $a5
	maskeqz	$a3, $a3, $a5
	or	$a1, $a3, $a1
	masknez	$a1, $a1, $a0
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
	ext.w.b	$a0, $a0
	or	$a1, $a0, $a4
	addi.w	$a1, $a1, 0
	addi.w	$a2, $a4, 0
	slt	$a1, $s0, $a1
	sltu	$a3, $a0, $a2
	maskeqz	$a4, $a0, $a3
	masknez	$a3, $a2, $a3
	or	$a3, $a4, $a3
	slt	$a4, $a2, $a0
	maskeqz	$a0, $a0, $a4
	masknez	$a2, $a2, $a4
	or	$a0, $a0, $a2
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a3, $a1
	ext.w.b	$s1, $s3
	or	$s6, $a1, $a0
	bltz	$s1, .LBB12_137
# %bb.136:
	pcalau12i	$a0, %got_pc_hi20(dec_picture)
	ld.d	$a0, $a0, %got_pc_lo12(dec_picture)
	ld.d	$a0, $a0, 0
	ori	$a1, $s8, 1560
	add.d	$a2, $a0, $a1
	ldx.d	$a4, $a0, $a1
	ld.d	$a5, $a2, 24
	ori	$a0, $zero, 16
	st.d	$a0, $sp, 8
	addi.d	$a1, $sp, 412
	st.d	$a0, $sp, 0
	ld.d	$a0, $sp, 392                   # 8-byte Folded Reload
	move	$a2, $s1
	move	$a3, $zero
	move	$a6, $zero
	move	$a7, $zero
	pcaddu18i	$ra, %call36(SetMotionVectorPredictor)
	jirl	$ra, $ra, 0
.LBB12_137:
	ext.w.b	$s2, $s6
	slli.w	$fp, $s6, 24
	bltz	$s2, .LBB12_139
# %bb.138:
	pcalau12i	$a0, %got_pc_hi20(dec_picture)
	ld.d	$a0, $a0, %got_pc_lo12(dec_picture)
	ld.d	$a0, $a0, 0
	ori	$a1, $s8, 1560
	add.d	$a2, $a0, $a1
	ldx.d	$a4, $a0, $a1
	ld.d	$a5, $a2, 24
	ori	$a0, $zero, 16
	st.d	$a0, $sp, 8
	addi.d	$a1, $sp, 408
	ori	$a3, $zero, 1
	st.d	$a0, $sp, 0
	ld.d	$a0, $sp, 392                   # 8-byte Folded Reload
	move	$a2, $s2
	move	$a6, $zero
	move	$a7, $zero
	pcaddu18i	$ra, %call36(SetMotionVectorPredictor)
	jirl	$ra, $ra, 0
	ld.hu	$a1, $sp, 408
	ld.hu	$t0, $sp, 410
	b	.LBB12_140
.LBB12_139:
	move	$t0, $zero
	move	$a1, $zero
.LBB12_140:
	move	$t1, $zero
	st.d	$zero, $sp, 368                 # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(listX)
	ld.d	$a0, $a0, %got_pc_lo12(listX)
	and	$a4, $s2, $s1
	slli.d	$a2, $s7, 3
	ori	$a2, $a2, 8
	add.d	$a5, $a0, $a2
	ld.hu	$a6, $sp, 412
	ld.hu	$a7, $sp, 414
	addi.w	$a0, $s5, 0
	alsl.d	$a0, $a0, $s4, 3
	st.d	$a0, $sp, 376                   # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(dec_picture)
	ld.d	$t3, $a0, %got_pc_lo12(dec_picture)
	andi	$t4, $s3, 255
	ori	$t5, $s8, 1452
	ori	$t6, $s8, 1584
	ld.d	$a3, $sp, 392                   # 8-byte Folded Reload
	b	.LBB12_142
	.p2align	4, , 16
.LBB12_141:                             # %.loopexit972
                                        #   in Loop: Header=BB12_142 Depth=1
	ld.d	$t1, $sp, 360                   # 8-byte Folded Reload
	addi.d	$t1, $t1, 1
	ld.d	$a0, $sp, 368                   # 8-byte Folded Reload
	xori	$a0, $a0, 1
	st.d	$a0, $sp, 368                   # 8-byte Folded Spill
	ori	$a0, $zero, 4
	beq	$t1, $a0, .LBB12_163
.LBB12_142:                             # =>This Loop Header: Depth=1
                                        #     Child Loop BB12_145 Depth 2
                                        #       Child Loop BB12_147 Depth 3
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	st.d	$t1, $sp, 360                   # 8-byte Folded Spill
	ldx.bu	$a0, $a0, $t1
	bnez	$a0, .LBB12_141
# %bb.143:                              #   in Loop: Header=BB12_142 Depth=1
	ld.d	$a0, $sp, 368                   # 8-byte Folded Reload
	andi	$a0, $a0, 1
	ori	$a2, $zero, 2
	masknez	$a2, $a2, $a0
	ori	$t1, $zero, 4
	maskeqz	$a0, $t1, $a0
	or	$t7, $a0, $a2
	ld.d	$t1, $sp, 360                   # 8-byte Folded Reload
	addi.d	$a0, $t1, 2
	bstrpick.d	$a2, $t1, 62, 1
	slli.d	$t8, $a2, 1
	slli.d	$a2, $t1, 1
	andi	$s5, $a2, 2
	bstrpick.d	$a0, $a0, 31, 1
	slli.d	$a0, $a0, 1
	st.d	$a0, $sp, 384                   # 8-byte Folded Spill
	b	.LBB12_145
	.p2align	4, , 16
.LBB12_144:                             #   in Loop: Header=BB12_145 Depth=2
	addi.d	$t8, $t8, 1
	ld.d	$a0, $sp, 384                   # 8-byte Folded Reload
	beq	$t8, $a0, .LBB12_141
.LBB12_145:                             #   Parent Loop BB12_142 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB12_147 Depth 3
	ld.d	$a0, $sp, 376                   # 8-byte Folded Reload
	alsl.d	$s7, $t8, $a0, 3
	move	$s8, $s5
	b	.LBB12_147
	.p2align	4, , 16
.LBB12_146:                             #   in Loop: Header=BB12_147 Depth=3
	addi.w	$s8, $s8, 1
	ld.d	$a3, $sp, 392                   # 8-byte Folded Reload
	beq	$t7, $s8, .LBB12_144
.LBB12_147:                             #   Parent Loop BB12_142 Depth=1
                                        #     Parent Loop BB12_145 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$a0, $a3, 76
	ld.w	$a2, $a3, 92
	add.d	$a0, $t8, $a0
	add.w	$ra, $s8, $a2
	slli.d	$t1, $a0, 3
	bltz	$s1, .LBB12_152
# %bb.148:                              #   in Loop: Header=BB12_147 Depth=3
	bnez	$t4, .LBB12_151
# %bb.149:                              #   in Loop: Header=BB12_147 Depth=3
	ld.d	$a0, $s7, 0
	ldx.bu	$a0, $a0, $ra
	bnez	$a0, .LBB12_151
# %bb.150:                              #   in Loop: Header=BB12_147 Depth=3
	ld.d	$a0, $a5, 0
	ld.d	$a0, $a0, 0
	ldx.w	$a0, $a0, $t5
	beqz	$a0, .LBB12_161
	.p2align	4, , 16
.LBB12_151:                             #   in Loop: Header=BB12_147 Depth=3
	ld.d	$a3, $t3, 0
	ldx.d	$a0, $a3, $t6
	ld.d	$a0, $a0, 0
	ldx.d	$a0, $a0, $t1
	slli.d	$a2, $ra, 3
	ldx.d	$t2, $a0, $a2
	st.h	$a6, $t2, 0
	move	$a2, $a7
	move	$a0, $s3
	b	.LBB12_153
	.p2align	4, , 16
.LBB12_152:                             #   in Loop: Header=BB12_147 Depth=3
	ld.d	$a3, $t3, 0
	ldx.d	$a0, $a3, $t6
	ld.d	$a0, $a0, 0
	ldx.d	$a0, $a0, $t1
	slli.d	$a2, $ra, 3
	ldx.d	$t2, $a0, $a2
	move	$a2, $zero
	st.h	$zero, $t2, 0
	ori	$a0, $zero, 255
.LBB12_153:                             #   in Loop: Header=BB12_147 Depth=3
	st.h	$a2, $t2, 2
	lu12i.w	$a2, 77
	ori	$t2, $a2, 1560
	ldx.d	$a2, $a3, $t2
	ld.d	$a2, $a2, 0
	ldx.d	$a2, $a2, $t1
	stx.b	$a0, $a2, $ra
	bltz	$s2, .LBB12_158
# %bb.154:                              #   in Loop: Header=BB12_147 Depth=3
	bnez	$fp, .LBB12_157
# %bb.155:                              #   in Loop: Header=BB12_147 Depth=3
	ld.d	$a0, $s7, 0
	ldx.bu	$a0, $a0, $ra
	bnez	$a0, .LBB12_157
# %bb.156:                              #   in Loop: Header=BB12_147 Depth=3
	ld.d	$a0, $a5, 0
	ld.d	$a0, $a0, 0
	ldx.w	$a0, $a0, $t5
	beqz	$a0, .LBB12_162
	.p2align	4, , 16
.LBB12_157:                             #   in Loop: Header=BB12_147 Depth=3
	ld.d	$a3, $t3, 0
	ldx.d	$a0, $a3, $t6
	ld.d	$a0, $a0, 8
	ldx.d	$a0, $a0, $t1
	slli.d	$a2, $ra, 3
	ldx.d	$a2, $a0, $a2
	st.h	$a1, $a2, 0
	move	$a0, $t0
	move	$s4, $s6
	b	.LBB12_159
	.p2align	4, , 16
.LBB12_158:                             #   in Loop: Header=BB12_147 Depth=3
	ld.d	$a3, $t3, 0
	ldx.d	$a0, $a3, $t6
	ld.d	$a0, $a0, 8
	ldx.d	$a0, $a0, $t1
	slli.d	$a2, $ra, 3
	ldx.d	$a2, $a0, $a2
	move	$a0, $zero
	st.h	$zero, $a2, 0
	ori	$s4, $zero, 255
.LBB12_159:                             #   in Loop: Header=BB12_147 Depth=3
	st.h	$a0, $a2, 2
	ldx.d	$a0, $a3, $t2
	ld.d	$a0, $a0, 8
	ldx.d	$a0, $a0, $t1
	stx.b	$s4, $a0, $ra
	blt	$s0, $a4, .LBB12_146
# %bb.160:                              #   in Loop: Header=BB12_147 Depth=3
	ld.d	$a0, $t3, 0
	ldx.d	$a0, $a0, $t2
	ld.d	$a0, $a0, 0
	ldx.d	$a0, $a0, $t1
	stx.b	$zero, $a0, $ra
	ld.d	$a0, $t3, 0
	ldx.d	$a0, $a0, $t2
	ld.d	$a0, $a0, 8
	ldx.d	$a0, $a0, $t1
	stx.b	$zero, $a0, $ra
	b	.LBB12_146
.LBB12_161:                             #   in Loop: Header=BB12_147 Depth=3
	ld.d	$a3, $t3, 0
	ldx.d	$a0, $a3, $t6
	ld.d	$a0, $a0, 0
	ldx.d	$a0, $a0, $t1
	slli.d	$a2, $ra, 3
	ldx.d	$t2, $a0, $a2
	move	$a2, $zero
	move	$a0, $zero
	st.h	$zero, $t2, 0
	b	.LBB12_153
.LBB12_162:                             #   in Loop: Header=BB12_147 Depth=3
	ld.d	$a3, $t3, 0
	ldx.d	$a0, $a3, $t6
	ld.d	$a0, $a0, 8
	ldx.d	$a0, $a0, $t1
	slli.d	$a2, $ra, 3
	ldx.d	$a2, $a0, $a2
	move	$a0, $zero
	move	$s4, $zero
	st.h	$zero, $a2, 0
	b	.LBB12_159
.LBB12_163:
	ld.d	$t6, $sp, 152                   # 8-byte Folded Reload
.LBB12_164:                             # %.loopexit971
	ld.d	$a0, $sp, 392                   # 8-byte Folded Reload
	ldptr.w	$a3, $a0, 5640
	ld.d	$a0, $sp, 352                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 344                   # 8-byte Folded Reload
	add.d	$a2, $a1, $a0
	addi.d	$a0, $t6, 332
	st.d	$a0, $sp, 216                   # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(active_pps)
	ori	$a0, $zero, 1
	st.d	$a2, $sp, 32                    # 8-byte Folded Spill
	st.d	$a1, $sp, 128                   # 8-byte Folded Spill
	st.d	$a3, $sp, 384                   # 8-byte Folded Spill
	bge	$a0, $a3, .LBB12_167
# %bb.165:
	ld.d	$a0, $a1, %pc_lo12(active_pps)
	ori	$a3, $zero, 3
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a1, $a1, 40
	ld.w	$a2, $a2, 12
	ld.w	$a0, $a0, 12
	st.w	$a3, $sp, 488
	ori	$a3, $zero, 56
	mul.d	$a2, $a2, $a3
	add.d	$a1, $a1, $a2
	lu12i.w	$a7, 77
	st.d	$a1, $sp, 376                   # 8-byte Folded Spill
	beqz	$a0, .LBB12_176
# %bb.166:
	ld.d	$a0, $a1, 0
	ld.w	$a0, $a0, 24
	sltui	$a1, $a0, 1
	ori	$a0, $zero, 32
	masknez	$a0, $a0, $a1
	ori	$a2, $zero, 40
	pcalau12i	$a3, %got_pc_hi20(linfo_ue)
	ld.d	$a3, $a3, %got_pc_lo12(linfo_ue)
	pcalau12i	$a4, %got_pc_hi20(readRefFrame_CABAC)
	ld.d	$a4, $a4, %got_pc_lo12(readRefFrame_CABAC)
	maskeqz	$a2, $a2, $a1
	or	$a0, $a2, $a0
	masknez	$a2, $a3, $a1
	maskeqz	$a1, $a4, $a1
	or	$a1, $a1, $a2
	b	.LBB12_177
.LBB12_167:                             # %.preheader966
	st.d	$zero, $sp, 400                 # 8-byte Folded Spill
	move	$s2, $zero
	pcalau12i	$a0, %got_pc_hi20(dec_picture)
	ld.d	$s0, $a0, %got_pc_lo12(dec_picture)
	lu12i.w	$a0, 77
	ori	$s3, $a0, 1560
	ori	$s4, $zero, 4
	ld.d	$a5, $sp, 248                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 144                   # 8-byte Folded Reload
	b	.LBB12_169
	.p2align	4, , 16
.LBB12_168:                             #   in Loop: Header=BB12_169 Depth=1
	ld.d	$a6, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 400                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a6
	st.d	$a0, $sp, 400                   # 8-byte Folded Spill
	move	$s2, $s5
	bge	$s5, $s4, .LBB12_198
.LBB12_169:                             # %.preheader965
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB12_171 Depth 2
                                        #       Child Loop BB12_175 Depth 3
	move	$s6, $zero
	move	$s7, $s2
	bstrins.d	$s7, $zero, 0, 0
	add.w	$s5, $s2, $a6
	b	.LBB12_171
	.p2align	4, , 16
.LBB12_170:                             # %.loopexit964
                                        #   in Loop: Header=BB12_171 Depth=2
	add.w	$s6, $s6, $a5
	bge	$s6, $s4, .LBB12_168
.LBB12_171:                             #   Parent Loop BB12_169 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB12_175 Depth 3
	srli.d	$a0, $s6, 1
	add.w	$a0, $a0, $s7
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	ldx.bu	$a1, $a1, $a0
	ori	$a1, $a1, 2
	ld.d	$s1, $sp, 392                   # 8-byte Folded Reload
	ori	$a2, $zero, 2
	bne	$a1, $a2, .LBB12_170
# %bb.172:                              #   in Loop: Header=BB12_171 Depth=2
	ld.d	$a1, $sp, 208                   # 8-byte Folded Reload
	ldx.bu	$a0, $a1, $a0
	beqz	$a0, .LBB12_170
# %bb.173:                              #   in Loop: Header=BB12_171 Depth=2
	ld.w	$a0, $s1, 76
	add.w	$a1, $a0, $s2
	add.w	$a2, $s5, $a0
	bge	$a1, $a2, .LBB12_170
# %bb.174:                              # %.lr.ph994.preheader
                                        #   in Loop: Header=BB12_171 Depth=2
	ld.d	$a1, $sp, 400                   # 8-byte Folded Reload
	add.d	$s8, $a1, $a0
	slli.d	$fp, $s8, 3
	.p2align	4, , 16
.LBB12_175:                             # %.lr.ph994
                                        #   Parent Loop BB12_169 Depth=1
                                        #     Parent Loop BB12_171 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a0, $s0, 0
	ldx.d	$a0, $a0, $s3
	ld.d	$a0, $a0, 0
	ld.w	$a1, $s1, 92
	ldx.d	$a0, $a0, $fp
	add.w	$a1, $a1, $s6
	add.d	$a0, $a0, $a1
	move	$a1, $zero
	move	$a2, $a5
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a5, $sp, 248                   # 8-byte Folded Reload
	ld.w	$a0, $s1, 76
	addi.d	$s8, $s8, 1
	add.w	$a0, $s5, $a0
	addi.d	$fp, $fp, 8
	blt	$s8, $a0, .LBB12_175
	b	.LBB12_170
.LBB12_176:
	pcalau12i	$a0, %got_pc_hi20(linfo_ue)
	ld.d	$a1, $a0, %got_pc_lo12(linfo_ue)
	ori	$a0, $zero, 32
.LBB12_177:
	ld.d	$a5, $sp, 248                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 144                   # 8-byte Folded Reload
	st.d	$zero, $sp, 368                 # 8-byte Folded Spill
	move	$s1, $zero
	addi.d	$a2, $sp, 488
	stx.d	$a1, $a0, $a2
	pcalau12i	$a0, %got_pc_hi20(dec_picture)
	ld.d	$s7, $a0, %got_pc_lo12(dec_picture)
	ori	$s0, $a7, 1560
	b	.LBB12_179
	.p2align	4, , 16
.LBB12_178:                             #   in Loop: Header=BB12_179 Depth=1
	ld.d	$a6, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 368                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a6
	st.d	$a0, $sp, 368                   # 8-byte Folded Spill
	move	$s1, $s5
	ori	$a0, $zero, 4
	bge	$s5, $a0, .LBB12_198
.LBB12_179:                             # %.preheader962
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB12_181 Depth 2
                                        #       Child Loop BB12_197 Depth 3
	move	$s8, $zero
	move	$s6, $s1
	bstrins.d	$s6, $zero, 0, 0
	add.w	$s5, $s1, $a6
	b	.LBB12_181
	.p2align	4, , 16
.LBB12_180:                             # %.loopexit961
                                        #   in Loop: Header=BB12_181 Depth=2
	add.w	$s8, $s8, $a5
	ori	$a0, $zero, 4
	bge	$s8, $a0, .LBB12_178
.LBB12_181:                             #   Parent Loop BB12_179 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB12_197 Depth 3
	srli.d	$a0, $s8, 1
	add.w	$a0, $a0, $s6
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	ldx.bu	$a1, $a1, $a0
	ori	$a1, $a1, 2
	ld.d	$a2, $sp, 392                   # 8-byte Folded Reload
	ori	$a3, $zero, 2
	bne	$a1, $a3, .LBB12_180
# %bb.182:                              #   in Loop: Header=BB12_181 Depth=2
	ld.d	$a1, $sp, 208                   # 8-byte Folded Reload
	ldx.bu	$a1, $a1, $a0
	beqz	$a1, .LBB12_180
# %bb.183:                              #   in Loop: Header=BB12_181 Depth=2
	stptr.w	$s8, $a2, 5608
	stptr.w	$s1, $a2, 5612
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	ld.w	$a1, $a1, 40
	ori	$a2, $zero, 8
	bne	$a1, $a2, .LBB12_187
# %bb.184:                              #   in Loop: Header=BB12_181 Depth=2
	ld.d	$a1, $sp, 400                   # 8-byte Folded Reload
	ori	$a2, $zero, 1
	beq	$a1, $a2, .LBB12_187
# %bb.185:                              #   in Loop: Header=BB12_181 Depth=2
	ld.d	$a1, $sp, 392                   # 8-byte Folded Reload
	ld.w	$a1, $a1, 100
	beqz	$a1, .LBB12_187
# %bb.186:                              #   in Loop: Header=BB12_181 Depth=2
	move	$s2, $zero
	b	.LBB12_195
	.p2align	4, , 16
.LBB12_187:                             #   in Loop: Header=BB12_181 Depth=2
	ld.d	$a1, $sp, 208                   # 8-byte Folded Reload
	ldx.b	$a0, $a1, $a0
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(active_pps)
	ori	$a2, $zero, 3
	slt	$a0, $a2, $a0
	st.w	$a0, $sp, 512
	ld.w	$a0, $a1, 12
	beqz	$a0, .LBB12_190
# %bb.188:                              #   in Loop: Header=BB12_181 Depth=2
	ld.d	$a0, $sp, 384                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 376                   # 8-byte Folded Reload
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB12_193
# %bb.189:                              #   in Loop: Header=BB12_181 Depth=2
	ld.d	$a1, $a2, 0
	ld.w	$a0, $a1, 24
	bnez	$a0, .LBB12_192
	b	.LBB12_193
.LBB12_190:                             #   in Loop: Header=BB12_181 Depth=2
	ld.d	$a0, $sp, 384                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 376                   # 8-byte Folded Reload
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB12_193
# %bb.191:                              # %._crit_edge1520
                                        #   in Loop: Header=BB12_181 Depth=2
	ld.d	$a1, $a2, 0
.LBB12_192:                             #   in Loop: Header=BB12_181 Depth=2
	ori	$fp, $zero, 1
	st.w	$fp, $sp, 500
	addi.d	$a0, $sp, 488
	pcaddu18i	$ra, %call36(readSyntaxElement_FLC)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 492
	sub.w	$s2, $fp, $a0
	st.w	$s2, $sp, 492
	b	.LBB12_194
.LBB12_193:                             #   in Loop: Header=BB12_181 Depth=2
	st.w	$zero, $sp, 496
	ld.d	$a3, $a2, 48
	addi.d	$a0, $sp, 488
	ld.d	$a1, $sp, 392                   # 8-byte Folded Reload
	jirl	$ra, $a3, 0
	ld.w	$s2, $sp, 492
.LBB12_194:                             #   in Loop: Header=BB12_181 Depth=2
	ld.d	$a5, $sp, 248                   # 8-byte Folded Reload
.LBB12_195:                             #   in Loop: Header=BB12_181 Depth=2
	ld.d	$s4, $sp, 392                   # 8-byte Folded Reload
	ld.w	$a0, $s4, 76
	add.w	$a1, $a0, $s1
	add.w	$a2, $s5, $a0
	bge	$a1, $a2, .LBB12_180
# %bb.196:                              # %.lr.ph1000.preheader
                                        #   in Loop: Header=BB12_181 Depth=2
	ld.d	$a1, $sp, 368                   # 8-byte Folded Reload
	add.d	$s3, $a1, $a0
	slli.d	$fp, $s3, 3
	.p2align	4, , 16
.LBB12_197:                             # %.lr.ph1000
                                        #   Parent Loop BB12_179 Depth=1
                                        #     Parent Loop BB12_181 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a0, $s7, 0
	ldx.d	$a0, $a0, $s0
	ld.d	$a0, $a0, 0
	ld.w	$a1, $s4, 92
	ldx.d	$a0, $a0, $fp
	add.w	$a1, $a1, $s8
	add.d	$a0, $a0, $a1
	move	$a1, $s2
	move	$a2, $a5
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a5, $sp, 248                   # 8-byte Folded Reload
	ld.w	$a0, $s4, 76
	addi.d	$s3, $s3, 1
	add.w	$a0, $s5, $a0
	addi.d	$fp, $fp, 8
	blt	$s3, $a0, .LBB12_197
	b	.LBB12_180
.LBB12_198:                             # %.loopexit963
	ld.d	$a0, $sp, 392                   # 8-byte Folded Reload
	ldptr.w	$a0, $a0, 5644
	ori	$a1, $zero, 1
	st.d	$a0, $sp, 384                   # 8-byte Folded Spill
	bge	$a1, $a0, .LBB12_201
# %bb.199:
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(active_pps)
	ori	$a3, $zero, 3
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a1, $a1, 40
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	ld.w	$a2, $a2, 12
	ld.w	$a0, $a0, 12
	st.w	$a3, $sp, 488
	ori	$a3, $zero, 56
	mul.d	$a2, $a2, $a3
	add.d	$a1, $a1, $a2
	lu12i.w	$a7, 77
	st.d	$a1, $sp, 376                   # 8-byte Folded Spill
	beqz	$a0, .LBB12_210
# %bb.200:
	ld.d	$a0, $a1, 0
	ld.w	$a0, $a0, 24
	sltui	$a1, $a0, 1
	ori	$a0, $zero, 32
	masknez	$a0, $a0, $a1
	ori	$a2, $zero, 40
	pcalau12i	$a3, %got_pc_hi20(linfo_ue)
	ld.d	$a3, $a3, %got_pc_lo12(linfo_ue)
	pcalau12i	$a4, %got_pc_hi20(readRefFrame_CABAC)
	ld.d	$a4, $a4, %got_pc_lo12(readRefFrame_CABAC)
	maskeqz	$a2, $a2, $a1
	or	$a0, $a2, $a0
	masknez	$a2, $a3, $a1
	maskeqz	$a1, $a4, $a1
	or	$a1, $a1, $a2
	b	.LBB12_211
.LBB12_201:                             # %.preheader959
	pcalau12i	$a0, %got_pc_hi20(dec_picture)
	ld.d	$s0, $a0, %got_pc_lo12(dec_picture)
	st.d	$zero, $sp, 400                 # 8-byte Folded Spill
	move	$s4, $zero
	lu12i.w	$a0, 77
	ori	$s2, $a0, 1560
	ori	$s3, $zero, 4
	b	.LBB12_203
	.p2align	4, , 16
.LBB12_202:                             #   in Loop: Header=BB12_203 Depth=1
	ld.d	$a6, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 400                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a6
	st.d	$a0, $sp, 400                   # 8-byte Folded Spill
	move	$s4, $s5
	bge	$s5, $s3, .LBB12_227
.LBB12_203:                             # %.preheader958
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB12_205 Depth 2
                                        #       Child Loop BB12_209 Depth 3
	move	$s6, $zero
	move	$s7, $s4
	bstrins.d	$s7, $zero, 0, 0
	add.w	$s5, $s4, $a6
	b	.LBB12_205
	.p2align	4, , 16
.LBB12_204:                             # %.loopexit957
                                        #   in Loop: Header=BB12_205 Depth=2
	add.w	$s6, $s6, $a5
	bge	$s6, $s3, .LBB12_202
.LBB12_205:                             #   Parent Loop BB12_203 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB12_209 Depth 3
	srli.d	$a0, $s6, 1
	add.w	$a0, $a0, $s7
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	ldx.bu	$a1, $a1, $a0
	addi.d	$a1, $a1, -1
	ld.d	$fp, $sp, 392                   # 8-byte Folded Reload
	ori	$a2, $zero, 1
	bltu	$a2, $a1, .LBB12_204
# %bb.206:                              #   in Loop: Header=BB12_205 Depth=2
	ld.d	$a1, $sp, 208                   # 8-byte Folded Reload
	ldx.bu	$a0, $a1, $a0
	beqz	$a0, .LBB12_204
# %bb.207:                              #   in Loop: Header=BB12_205 Depth=2
	ld.w	$a0, $fp, 76
	add.w	$a1, $a0, $s4
	add.w	$a2, $s5, $a0
	bge	$a1, $a2, .LBB12_204
# %bb.208:                              # %.lr.ph1006.preheader
                                        #   in Loop: Header=BB12_205 Depth=2
	ld.d	$a1, $sp, 400                   # 8-byte Folded Reload
	add.d	$s8, $a1, $a0
	slli.d	$s1, $s8, 3
	.p2align	4, , 16
.LBB12_209:                             # %.lr.ph1006
                                        #   Parent Loop BB12_203 Depth=1
                                        #     Parent Loop BB12_205 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a0, $s0, 0
	ldx.d	$a0, $a0, $s2
	ld.d	$a0, $a0, 8
	ld.w	$a1, $fp, 92
	ldx.d	$a0, $a0, $s1
	add.w	$a1, $a1, $s6
	add.d	$a0, $a0, $a1
	move	$a1, $zero
	move	$a2, $a5
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a5, $sp, 248                   # 8-byte Folded Reload
	ld.w	$a0, $fp, 76
	addi.d	$s8, $s8, 1
	add.w	$a0, $s5, $a0
	addi.d	$s1, $s1, 8
	blt	$s8, $a0, .LBB12_209
	b	.LBB12_204
.LBB12_210:
	pcalau12i	$a0, %got_pc_hi20(linfo_ue)
	ld.d	$a1, $a0, %got_pc_lo12(linfo_ue)
	ori	$a0, $zero, 32
.LBB12_211:
	st.d	$zero, $sp, 368                 # 8-byte Folded Spill
	move	$a3, $zero
	addi.d	$a2, $sp, 488
	stx.d	$a1, $a0, $a2
	ori	$s3, $zero, 1
	pcalau12i	$a0, %got_pc_hi20(dec_picture)
	ld.d	$s6, $a0, %got_pc_lo12(dec_picture)
	ori	$s8, $a7, 1560
	b	.LBB12_213
	.p2align	4, , 16
.LBB12_212:                             #   in Loop: Header=BB12_213 Depth=1
	ld.d	$a6, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 368                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a6
	st.d	$a0, $sp, 368                   # 8-byte Folded Spill
	move	$a3, $s5
	ori	$a0, $zero, 4
	bge	$s5, $a0, .LBB12_227
.LBB12_213:                             # %.preheader955
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB12_215 Depth 2
                                        #       Child Loop BB12_226 Depth 3
	move	$fp, $zero
	move	$s7, $a3
	bstrins.d	$s7, $zero, 0, 0
	st.d	$a3, $sp, 400                   # 8-byte Folded Spill
	add.w	$s5, $a3, $a6
	b	.LBB12_215
	.p2align	4, , 16
.LBB12_214:                             # %.loopexit954
                                        #   in Loop: Header=BB12_215 Depth=2
	add.w	$fp, $fp, $a5
	ori	$a0, $zero, 4
	bge	$fp, $a0, .LBB12_212
.LBB12_215:                             #   Parent Loop BB12_213 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB12_226 Depth 3
	srli.d	$a0, $fp, 1
	add.w	$a0, $a0, $s7
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	ldx.bu	$a1, $a1, $a0
	addi.d	$a1, $a1, -1
	ld.d	$a2, $sp, 392                   # 8-byte Folded Reload
	bltu	$s3, $a1, .LBB12_214
# %bb.216:                              #   in Loop: Header=BB12_215 Depth=2
	ld.d	$a1, $sp, 208                   # 8-byte Folded Reload
	ldx.bu	$a1, $a1, $a0
	beqz	$a1, .LBB12_214
# %bb.217:                              #   in Loop: Header=BB12_215 Depth=2
	stptr.w	$fp, $a2, 5608
	ld.d	$s1, $sp, 400                   # 8-byte Folded Reload
	stptr.w	$s1, $a2, 5612
	ld.d	$a1, $sp, 208                   # 8-byte Folded Reload
	ldx.b	$a0, $a1, $a0
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(active_pps)
	ori	$a2, $zero, 3
	slt	$a0, $a2, $a0
	st.w	$a0, $sp, 512
	ld.w	$a0, $a1, 12
	beqz	$a0, .LBB12_220
# %bb.218:                              #   in Loop: Header=BB12_215 Depth=2
	ld.d	$a0, $sp, 384                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 376                   # 8-byte Folded Reload
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB12_223
# %bb.219:                              #   in Loop: Header=BB12_215 Depth=2
	ld.d	$a1, $a2, 0
	ld.w	$a0, $a1, 24
	bnez	$a0, .LBB12_222
	b	.LBB12_223
.LBB12_220:                             #   in Loop: Header=BB12_215 Depth=2
	ld.d	$a0, $sp, 384                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 376                   # 8-byte Folded Reload
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB12_223
# %bb.221:                              # %._crit_edge1523
                                        #   in Loop: Header=BB12_215 Depth=2
	ld.d	$a1, $a2, 0
.LBB12_222:                             #   in Loop: Header=BB12_215 Depth=2
	ori	$s0, $zero, 1
	st.w	$s0, $sp, 500
	addi.d	$a0, $sp, 488
	pcaddu18i	$ra, %call36(readSyntaxElement_FLC)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 492
	ori	$s3, $zero, 1
	sub.w	$s2, $s0, $a0
	st.w	$s2, $sp, 492
	ld.d	$s4, $sp, 392                   # 8-byte Folded Reload
	b	.LBB12_224
.LBB12_223:                             #   in Loop: Header=BB12_215 Depth=2
	st.w	$s3, $sp, 496
	ld.d	$a3, $a2, 48
	addi.d	$a0, $sp, 488
	ld.d	$s4, $sp, 392                   # 8-byte Folded Reload
	move	$a1, $s4
	jirl	$ra, $a3, 0
	ld.w	$s2, $sp, 492
.LBB12_224:                             #   in Loop: Header=BB12_215 Depth=2
	ld.w	$a0, $s4, 76
	add.w	$a1, $a0, $s1
	add.w	$a2, $s5, $a0
	ld.d	$a5, $sp, 248                   # 8-byte Folded Reload
	bge	$a1, $a2, .LBB12_214
# %bb.225:                              # %.lr.ph1012.preheader
                                        #   in Loop: Header=BB12_215 Depth=2
	ld.d	$a1, $sp, 368                   # 8-byte Folded Reload
	add.d	$s1, $a1, $a0
	slli.d	$s0, $s1, 3
	.p2align	4, , 16
.LBB12_226:                             # %.lr.ph1012
                                        #   Parent Loop BB12_213 Depth=1
                                        #     Parent Loop BB12_215 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a0, $s6, 0
	ldx.d	$a0, $a0, $s8
	ld.d	$a0, $a0, 8
	ld.w	$a1, $s4, 92
	ldx.d	$a0, $a0, $s0
	add.w	$a1, $a1, $fp
	add.d	$a0, $a0, $a1
	move	$a1, $s2
	move	$a2, $a5
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a5, $sp, 248                   # 8-byte Folded Reload
	ld.w	$a0, $s4, 76
	addi.d	$s1, $s1, 1
	add.w	$a0, $s5, $a0
	addi.d	$s0, $s0, 8
	blt	$s1, $a0, .LBB12_226
	b	.LBB12_214
.LBB12_227:                             # %.loopexit956
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(active_pps)
	ori	$a1, $zero, 5
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a2, $a2, 40
	ld.d	$a3, $sp, 32                    # 8-byte Folded Reload
	ld.w	$a3, $a3, 20
	ld.w	$a0, $a0, 12
	st.w	$a1, $sp, 488
	ori	$a1, $zero, 56
	mul.d	$a1, $a3, $a1
	add.d	$s5, $a2, $a1
	beqz	$a0, .LBB12_229
# %bb.228:
	ld.d	$a0, $s5, 0
	ld.w	$a0, $a0, 24
	sltui	$a1, $a0, 1
	ori	$a0, $zero, 32
	masknez	$a0, $a0, $a1
	ori	$a2, $zero, 40
	pcalau12i	$a3, %got_pc_hi20(linfo_se)
	ld.d	$a3, $a3, %got_pc_lo12(linfo_se)
	pcalau12i	$a4, %got_pc_hi20(readMVD_CABAC)
	ld.d	$a4, $a4, %got_pc_lo12(readMVD_CABAC)
	maskeqz	$a2, $a2, $a1
	or	$a0, $a2, $a0
	masknez	$a2, $a3, $a1
	maskeqz	$a1, $a4, $a1
	or	$a1, $a1, $a2
	b	.LBB12_230
.LBB12_229:
	pcalau12i	$a0, %got_pc_hi20(linfo_se)
	ld.d	$a1, $a0, %got_pc_lo12(linfo_se)
	ori	$a0, $zero, 32
.LBB12_230:
	ld.d	$s4, $sp, 392                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 152                   # 8-byte Folded Reload
	lu12i.w	$a4, 77
	lu12i.w	$a5, 1
	move	$a7, $zero
	st.d	$zero, $sp, 96                  # 8-byte Folded Spill
	addi.d	$a2, $sp, 488
	stx.d	$a1, $a0, $a2
	addi.d	$a1, $a3, 44
	addi.d	$a0, $s4, 616
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	addi.d	$a2, $a3, 48
	slli.d	$a0, $a6, 5
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	ori	$a3, $zero, 2
	pcalau12i	$a0, %got_pc_hi20(dec_picture)
	ld.d	$a0, $a0, %got_pc_lo12(dec_picture)
	st.d	$a0, $sp, 400                   # 8-byte Folded Spill
	ori	$a0, $a4, 1560
	st.d	$a0, $sp, 352                   # 8-byte Folded Spill
	ori	$s2, $zero, 4
	ori	$a0, $a5, 1488
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	lu12i.w	$a0, -33153
	ori	$a0, $a0, 2220
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 1807
	st.d	$a0, $sp, 160                   # 8-byte Folded Spill
	st.d	$a2, $sp, 256                   # 8-byte Folded Spill
	st.d	$a2, $sp, 112                   # 8-byte Folded Spill
	st.d	$a1, $sp, 264                   # 8-byte Folded Spill
	st.d	$a1, $sp, 104                   # 8-byte Folded Spill
	st.d	$s5, $sp, 272                   # 8-byte Folded Spill
	pcalau12i	$s6, %pc_hi20(.LCPI12_0)
	b	.LBB12_232
	.p2align	4, , 16
.LBB12_231:                             #   in Loop: Header=BB12_232 Depth=1
	ld.d	$a6, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	add.d	$a0, $a0, $a6
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	add.d	$a1, $a1, $a0
	st.d	$a1, $sp, 104                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	add.d	$a1, $a1, $a0
	st.d	$a1, $sp, 112                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	move	$a7, $a0
	bge	$a0, $s2, .LBB12_311
.LBB12_232:                             # %.preheader953
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB12_235 Depth 2
                                        #       Child Loop BB12_270 Depth 3
                                        #         Child Loop BB12_271 Depth 4
                                        #       Child Loop BB12_274 Depth 3
                                        #         Child Loop BB12_275 Depth 4
                                        #       Child Loop BB12_243 Depth 3
                                        #         Child Loop BB12_245 Depth 4
                                        #           Child Loop BB12_247 Depth 5
                                        #             Child Loop BB12_250 Depth 6
                                        #             Child Loop BB12_253 Depth 6
                                        #           Child Loop BB12_256 Depth 5
                                        #             Child Loop BB12_259 Depth 6
                                        #             Child Loop BB12_262 Depth 6
                                        #       Child Loop BB12_283 Depth 3
                                        #       Child Loop BB12_302 Depth 3
                                        #         Child Loop BB12_306 Depth 4
                                        #       Child Loop BB12_294 Depth 3
                                        #         Child Loop BB12_296 Depth 4
	move	$t0, $zero
	st.d	$zero, $sp, 224                 # 8-byte Folded Spill
	move	$a0, $a7
	bstrins.d	$a0, $zero, 0, 0
	st.d	$a0, $sp, 176                   # 8-byte Folded Spill
	add.d	$a0, $a7, $a6
	st.d	$a0, $sp, 232                   # 8-byte Folded Spill
	st.d	$a7, $sp, 136                   # 8-byte Folded Spill
	add.d	$a0, $a6, $a7
	st.d	$a0, $sp, 168                   # 8-byte Folded Spill
	b	.LBB12_235
	.p2align	4, , 16
.LBB12_233:                             # %.thread1582
                                        #   in Loop: Header=BB12_235 Depth=2
	ld.w	$a0, $s4, 40
	beqz	$a0, .LBB12_264
.LBB12_234:                             # %.loopexit949
                                        #   in Loop: Header=BB12_235 Depth=2
	ld.d	$a0, $sp, 248                   # 8-byte Folded Reload
	add.d	$t0, $t0, $a0
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	add.d	$a1, $a1, $a0
	st.d	$a1, $sp, 224                   # 8-byte Folded Spill
	lu12i.w	$a4, 77
	ori	$a3, $zero, 2
	bge	$t0, $s2, .LBB12_231
.LBB12_235:                             #   Parent Loop BB12_232 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB12_270 Depth 3
                                        #         Child Loop BB12_271 Depth 4
                                        #       Child Loop BB12_274 Depth 3
                                        #         Child Loop BB12_275 Depth 4
                                        #       Child Loop BB12_243 Depth 3
                                        #         Child Loop BB12_245 Depth 4
                                        #           Child Loop BB12_247 Depth 5
                                        #             Child Loop BB12_250 Depth 6
                                        #             Child Loop BB12_253 Depth 6
                                        #           Child Loop BB12_256 Depth 5
                                        #             Child Loop BB12_259 Depth 6
                                        #             Child Loop BB12_262 Depth 6
                                        #       Child Loop BB12_283 Depth 3
                                        #       Child Loop BB12_302 Depth 3
                                        #         Child Loop BB12_306 Depth 4
                                        #       Child Loop BB12_294 Depth 3
                                        #         Child Loop BB12_296 Depth 4
	addi.w	$a0, $t0, 0
	srli.d	$a0, $a0, 1
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	add.w	$a0, $a0, $a1
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	ldx.bu	$a1, $a1, $a0
	ori	$a1, $a1, 2
	ori	$t1, $a4, 1584
	st.d	$t1, $sp, 344                   # 8-byte Folded Spill
	st.d	$t0, $sp, 240                   # 8-byte Folded Spill
	bne	$a1, $a3, .LBB12_263
# %bb.236:                              #   in Loop: Header=BB12_235 Depth=2
	ld.d	$a1, $sp, 208                   # 8-byte Folded Reload
	ldx.b	$a0, $a1, $a0
	beqz	$a0, .LBB12_233
# %bb.237:                              #   in Loop: Header=BB12_235 Depth=2
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	ori	$a2, $zero, 1
	blt	$a1, $a2, .LBB12_234
# %bb.238:                              # %.lr.ph1043
                                        #   in Loop: Header=BB12_235 Depth=2
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	ori	$a2, $zero, 1
	blt	$a1, $a2, .LBB12_234
# %bb.239:                              # %.lr.ph1043.split.us
                                        #   in Loop: Header=BB12_235 Depth=2
	ld.d	$a1, $sp, 400                   # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	ld.d	$a2, $sp, 352                   # 8-byte Folded Reload
	ldx.d	$a1, $a1, $a2
	ld.d	$a1, $a1, 0
	ld.w	$a2, $s4, 76
	ld.d	$a4, $sp, 120                   # 8-byte Folded Reload
	alsl.d	$a3, $a0, $a4, 3
	slli.d	$a0, $a0, 3
	ld.d	$s3, $sp, 136                   # 8-byte Folded Reload
	alsl.d	$a1, $s3, $a1, 3
	slli.d	$a2, $a2, 3
	ldx.d	$a1, $a1, $a2
	ld.w	$a2, $s4, 92
	ldx.w	$s8, $a4, $a0
	ld.w	$s7, $a3, 4
	add.d	$a0, $a1, $t0
	ldx.b	$a2, $a0, $a2
	ld.d	$a0, $sp, 248                   # 8-byte Folded Reload
	add.d	$a0, $t0, $a0
	st.d	$a0, $sp, 376                   # 8-byte Folded Spill
	slli.w	$t1, $s8, 2
	slli.w	$a6, $s7, 2
	st.d	$a2, $sp, 384                   # 8-byte Folded Spill
	st.d	$t1, $sp, 368                   # 8-byte Folded Spill
	st.d	$a6, $sp, 360                   # 8-byte Folded Spill
	blez	$s7, .LBB12_269
# %bb.240:                              # %.lr.ph1043.split.us.split.us
                                        #   in Loop: Header=BB12_235 Depth=2
	blez	$s8, .LBB12_273
# %bb.241:                              # %.lr.ph1033.us.us.us.preheader
                                        #   in Loop: Header=BB12_235 Depth=2
	bstrpick.d	$a1, $s7, 31, 0
	bstrpick.d	$a0, $s8, 30, 2
	slli.d	$fp, $a0, 2
	st.d	$a1, $sp, 192                   # 8-byte Folded Spill
	slli.d	$a0, $a1, 5
	st.d	$a0, $sp, 184                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	st.d	$a0, $sp, 288                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	st.d	$a0, $sp, 280                   # 8-byte Folded Spill
	b	.LBB12_243
	.p2align	4, , 16
.LBB12_242:                             # %._crit_edge1034.split.us.split.us.us.us.us
                                        #   in Loop: Header=BB12_243 Depth=3
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	add.d	$s3, $s3, $a0
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 280                   # 8-byte Folded Reload
	add.d	$a1, $a1, $a0
	st.d	$a1, $sp, 280                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 288                   # 8-byte Folded Reload
	add.d	$a1, $a1, $a0
	st.d	$a1, $sp, 288                   # 8-byte Folded Spill
	ld.d	$s4, $sp, 392                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 240                   # 8-byte Folded Reload
	bge	$s3, $a0, .LBB12_234
.LBB12_243:                             # %.lr.ph1033.us.us.us
                                        #   Parent Loop BB12_232 Depth=1
                                        #     Parent Loop BB12_235 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB12_245 Depth 4
                                        #           Child Loop BB12_247 Depth 5
                                        #             Child Loop BB12_250 Depth 6
                                        #             Child Loop BB12_253 Depth 6
                                        #           Child Loop BB12_256 Depth 5
                                        #             Child Loop BB12_259 Depth 6
                                        #             Child Loop BB12_262 Depth 6
	ld.w	$a0, $s4, 76
	add.d	$a0, $s3, $a0
	st.d	$a0, $sp, 336                   # 8-byte Folded Spill
	move	$s4, $t0
	b	.LBB12_245
	.p2align	4, , 16
.LBB12_244:                             # %._crit_edge1020.split.us.us.us.us.us.us.us.us.1
                                        #   in Loop: Header=BB12_245 Depth=4
	add.d	$s4, $s4, $s8
	ld.d	$a2, $sp, 384                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 376                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 368                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 360                   # 8-byte Folded Reload
	bge	$s4, $a0, .LBB12_242
.LBB12_245:                             # %.split.us.us.us.us.us.us
                                        #   Parent Loop BB12_232 Depth=1
                                        #     Parent Loop BB12_235 Depth=2
                                        #       Parent Loop BB12_243 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB12_247 Depth 5
                                        #             Child Loop BB12_250 Depth 6
                                        #             Child Loop BB12_253 Depth 6
                                        #           Child Loop BB12_256 Depth 5
                                        #             Child Loop BB12_259 Depth 6
                                        #             Child Loop BB12_262 Depth 6
	ld.d	$s1, $sp, 400                   # 8-byte Folded Reload
	ld.d	$a0, $s1, 0
	ld.d	$s0, $sp, 392                   # 8-byte Folded Reload
	ld.w	$a1, $s0, 92
	st.d	$a1, $sp, 320                   # 8-byte Folded Spill
	ld.d	$a3, $sp, 352                   # 8-byte Folded Reload
	add.d	$a1, $a0, $a3
	ldx.d	$a4, $a0, $a3
	ld.d	$a5, $a1, 24
	st.d	$a6, $sp, 8
	addi.d	$a1, $sp, 464
	st.d	$t1, $sp, 0
	move	$a0, $s0
	move	$a3, $zero
	move	$a6, $s4
	move	$a7, $s3
	pcaddu18i	$ra, %call36(SetMotionVectorPredictor)
	jirl	$ra, $ra, 0
	stptr.w	$s4, $s0, 5608
	stptr.w	$s3, $s0, 5612
	st.w	$zero, $sp, 496
	ld.d	$a3, $s5, 48
	addi.d	$a0, $sp, 488
	move	$a1, $s0
	ld.d	$s0, $sp, 344                   # 8-byte Folded Reload
	move	$a2, $s5
	jirl	$ra, $a3, 0
	ld.d	$a0, $s1, 0
	ldx.d	$a1, $a0, $s0
	ld.w	$a0, $sp, 492
	ld.h	$a2, $sp, 464
	ld.d	$a3, $a1, 0
	move	$a1, $zero
	add.d	$a2, $a2, $a0
	ld.d	$a4, $sp, 336                   # 8-byte Folded Reload
	alsl.d	$a3, $a4, $a3, 3
	vreplgr2vr.d	$vr3, $s4
	vaddi.du	$vr4, $vr3, 2
	ld.d	$a4, $sp, 320                   # 8-byte Folded Reload
	add.d	$a4, $s4, $a4
	slli.d	$s1, $a4, 3
	ld.d	$a4, $sp, 280                   # 8-byte Folded Reload
	ld.d	$t5, $sp, 264                   # 8-byte Folded Reload
	b	.LBB12_247
	.p2align	4, , 16
.LBB12_246:                             # %._crit_edge1018.us.us.us.us.us.us.us.us
                                        #   in Loop: Header=BB12_247 Depth=5
	addi.d	$a1, $a1, 1
	addi.d	$a4, $a4, 32
	beq	$a1, $s7, .LBB12_254
.LBB12_247:                             # %.preheader948.us.us.us.us.us.us.us.us
                                        #   Parent Loop BB12_232 Depth=1
                                        #     Parent Loop BB12_235 Depth=2
                                        #       Parent Loop BB12_243 Depth=3
                                        #         Parent Loop BB12_245 Depth=4
                                        # =>        This Loop Header: Depth=5
                                        #             Child Loop BB12_250 Depth 6
                                        #             Child Loop BB12_253 Depth 6
	slli.d	$a5, $a1, 3
	ldx.d	$a5, $a3, $a5
	add.d	$a5, $a5, $s1
	bgeu	$s8, $s2, .LBB12_249
# %bb.248:                              #   in Loop: Header=BB12_247 Depth=5
	move	$a7, $zero
	b	.LBB12_252
	.p2align	4, , 16
.LBB12_249:                             # %vector.body1747.preheader
                                        #   in Loop: Header=BB12_247 Depth=5
	add.d	$a7, $a1, $s3
	vld	$vr0, $s6, %pc_lo12(.LCPI12_0)
	addi.d	$a6, $a5, 16
	slli.d	$a7, $a7, 5
	add.d	$a7, $t5, $a7
	move	$t0, $fp
	.p2align	4, , 16
.LBB12_250:                             # %vector.body1747
                                        #   Parent Loop BB12_232 Depth=1
                                        #     Parent Loop BB12_235 Depth=2
                                        #       Parent Loop BB12_243 Depth=3
                                        #         Parent Loop BB12_245 Depth=4
                                        #           Parent Loop BB12_247 Depth=5
                                        # =>          This Inner Loop Header: Depth=6
	vld	$vr1, $a6, -16
	vld	$vr2, $a6, 0
	vpickve2gr.d	$t1, $vr1, 0
	st.h	$a2, $t1, 0
	vpickve2gr.d	$t1, $vr1, 1
	st.h	$a2, $t1, 0
	vpickve2gr.d	$t1, $vr2, 0
	st.h	$a2, $t1, 0
	vpickve2gr.d	$t1, $vr2, 1
	st.h	$a2, $t1, 0
	vadd.d	$vr1, $vr0, $vr3
	vadd.d	$vr2, $vr0, $vr4
	vpickve2gr.d	$t1, $vr1, 0
	slli.d	$t1, $t1, 3
	vpickve2gr.d	$t2, $vr1, 1
	slli.d	$t2, $t2, 3
	vpickve2gr.d	$t3, $vr2, 0
	slli.d	$t3, $t3, 3
	vpickve2gr.d	$t4, $vr2, 1
	slli.d	$t4, $t4, 3
	stx.w	$a0, $a7, $t1
	stx.w	$a0, $a7, $t2
	stx.w	$a0, $a7, $t3
	stx.w	$a0, $a7, $t4
	vaddi.du	$vr0, $vr0, 4
	addi.d	$t0, $t0, -4
	addi.d	$a6, $a6, 32
	bnez	$t0, .LBB12_250
# %bb.251:                              # %middle.block1755
                                        #   in Loop: Header=BB12_247 Depth=5
	move	$a7, $fp
	beq	$fp, $s8, .LBB12_246
.LBB12_252:                             # %scalar.ph1740.preheader
                                        #   in Loop: Header=BB12_247 Depth=5
	alsl.d	$a5, $a7, $a5, 3
	add.d	$a6, $s4, $a7
	alsl.d	$a6, $a6, $a4, 3
	sub.d	$a7, $s8, $a7
	.p2align	4, , 16
.LBB12_253:                             # %scalar.ph1740
                                        #   Parent Loop BB12_232 Depth=1
                                        #     Parent Loop BB12_235 Depth=2
                                        #       Parent Loop BB12_243 Depth=3
                                        #         Parent Loop BB12_245 Depth=4
                                        #           Parent Loop BB12_247 Depth=5
                                        # =>          This Inner Loop Header: Depth=6
	ld.d	$t0, $a5, 0
	st.h	$a2, $t0, 0
	st.w	$a0, $a6, 0
	addi.d	$a5, $a5, 8
	addi.d	$a7, $a7, -1
	addi.d	$a6, $a6, 8
	bnez	$a7, .LBB12_253
	b	.LBB12_246
	.p2align	4, , 16
.LBB12_254:                             # %._crit_edge1020.split.us.us.us.us.us.us.us.us
                                        #   in Loop: Header=BB12_245 Depth=4
	ld.d	$a1, $sp, 392                   # 8-byte Folded Reload
	stptr.w	$s4, $a1, 5608
	stptr.w	$s3, $a1, 5612
	ori	$a0, $zero, 2
	st.w	$a0, $sp, 496
	ld.d	$s5, $sp, 272                   # 8-byte Folded Reload
	ld.d	$a3, $s5, 48
	addi.d	$a0, $sp, 488
	move	$a2, $s5
	vst	$vr3, $sp, 320                  # 16-byte Folded Spill
	vst	$vr4, $sp, 304                  # 16-byte Folded Spill
	jirl	$ra, $a3, 0
	vld	$vr4, $sp, 304                  # 16-byte Folded Reload
	vld	$vr3, $sp, 320                  # 16-byte Folded Reload
	ld.d	$a0, $sp, 400                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ldx.d	$a1, $a0, $s0
	ld.w	$a0, $sp, 492
	ld.h	$a2, $sp, 466
	ld.d	$a3, $a1, 0
	move	$a1, $zero
	add.d	$a2, $a2, $a0
	ld.d	$a4, $sp, 336                   # 8-byte Folded Reload
	alsl.d	$a3, $a4, $a3, 3
	ld.d	$a4, $sp, 288                   # 8-byte Folded Reload
	ld.d	$t5, $sp, 256                   # 8-byte Folded Reload
	b	.LBB12_256
	.p2align	4, , 16
.LBB12_255:                             # %._crit_edge1018.us.us.us.us.us.us.us.us.1
                                        #   in Loop: Header=BB12_256 Depth=5
	addi.d	$a1, $a1, 1
	addi.d	$a4, $a4, 32
	beq	$a1, $s7, .LBB12_244
.LBB12_256:                             # %.preheader948.us.us.us.us.us.us.us.us.1
                                        #   Parent Loop BB12_232 Depth=1
                                        #     Parent Loop BB12_235 Depth=2
                                        #       Parent Loop BB12_243 Depth=3
                                        #         Parent Loop BB12_245 Depth=4
                                        # =>        This Loop Header: Depth=5
                                        #             Child Loop BB12_259 Depth 6
                                        #             Child Loop BB12_262 Depth 6
	slli.d	$a5, $a1, 3
	ldx.d	$a5, $a3, $a5
	add.d	$a5, $a5, $s1
	bgeu	$s8, $s2, .LBB12_258
# %bb.257:                              #   in Loop: Header=BB12_256 Depth=5
	move	$a7, $zero
	b	.LBB12_261
	.p2align	4, , 16
.LBB12_258:                             # %vector.body.preheader
                                        #   in Loop: Header=BB12_256 Depth=5
	add.d	$a6, $a1, $s3
	vld	$vr0, $s6, %pc_lo12(.LCPI12_0)
	slli.d	$a6, $a6, 5
	add.d	$a6, $t5, $a6
	addi.d	$a7, $a5, 16
	move	$t0, $fp
	.p2align	4, , 16
.LBB12_259:                             # %vector.body
                                        #   Parent Loop BB12_232 Depth=1
                                        #     Parent Loop BB12_235 Depth=2
                                        #       Parent Loop BB12_243 Depth=3
                                        #         Parent Loop BB12_245 Depth=4
                                        #           Parent Loop BB12_256 Depth=5
                                        # =>          This Inner Loop Header: Depth=6
	ld.d	$t1, $a7, -16
	ld.d	$t2, $a7, -8
	ld.d	$t3, $a7, 0
	ld.d	$t4, $a7, 8
	st.h	$a2, $t1, 2
	st.h	$a2, $t2, 2
	st.h	$a2, $t3, 2
	st.h	$a2, $t4, 2
	vadd.d	$vr1, $vr0, $vr3
	vadd.d	$vr2, $vr0, $vr4
	vslli.d	$vr1, $vr1, 3
	vslli.d	$vr2, $vr2, 3
	vpickve2gr.d	$t1, $vr1, 0
	vpickve2gr.d	$t2, $vr1, 1
	vpickve2gr.d	$t3, $vr2, 0
	vpickve2gr.d	$t4, $vr2, 1
	stx.w	$a0, $a6, $t1
	stx.w	$a0, $a6, $t2
	stx.w	$a0, $a6, $t3
	stx.w	$a0, $a6, $t4
	vaddi.du	$vr0, $vr0, 4
	addi.d	$t0, $t0, -4
	addi.d	$a7, $a7, 32
	bnez	$t0, .LBB12_259
# %bb.260:                              # %middle.block
                                        #   in Loop: Header=BB12_256 Depth=5
	move	$a7, $fp
	beq	$fp, $s8, .LBB12_255
.LBB12_261:                             # %scalar.ph.preheader
                                        #   in Loop: Header=BB12_256 Depth=5
	alsl.d	$a5, $a7, $a5, 3
	sub.d	$a6, $s8, $a7
	add.d	$a7, $s4, $a7
	alsl.d	$a7, $a7, $a4, 3
	.p2align	4, , 16
.LBB12_262:                             # %scalar.ph
                                        #   Parent Loop BB12_232 Depth=1
                                        #     Parent Loop BB12_235 Depth=2
                                        #       Parent Loop BB12_243 Depth=3
                                        #         Parent Loop BB12_245 Depth=4
                                        #           Parent Loop BB12_256 Depth=5
                                        # =>          This Inner Loop Header: Depth=6
	ld.d	$t0, $a5, 0
	st.h	$a2, $t0, 2
	st.w	$a0, $a7, 0
	addi.d	$a5, $a5, 8
	addi.d	$a6, $a6, -1
	addi.d	$a7, $a7, 8
	bnez	$a6, .LBB12_262
	b	.LBB12_255
	.p2align	4, , 16
.LBB12_263:                             #   in Loop: Header=BB12_235 Depth=2
	ld.d	$a1, $sp, 208                   # 8-byte Folded Reload
	ldx.bu	$a0, $a1, $a0
	bnez	$a0, .LBB12_234
	b	.LBB12_233
.LBB12_264:                             #   in Loop: Header=BB12_235 Depth=2
	ldptr.w	$a1, $s4, 5624
	ld.d	$t6, $sp, 152                   # 8-byte Folded Reload
	beqz	$a1, .LBB12_268
# %bb.265:                              #   in Loop: Header=BB12_235 Depth=2
	ld.w	$a0, $t6, 356
	beqz	$a0, .LBB12_268
# %bb.266:                              #   in Loop: Header=BB12_235 Depth=2
	ld.bu	$a0, $s4, 4
	andi	$a2, $a0, 1
	sltui	$a3, $a2, 1
	ld.w	$a0, $s4, 76
	masknez	$a4, $s2, $a3
	ori	$a5, $zero, 2
	maskeqz	$a3, $a5, $a3
	or	$fp, $a3, $a4
	bnez	$a2, .LBB12_277
# %bb.267:                              #   in Loop: Header=BB12_235 Depth=2
	srai.d	$a2, $a0, 1
	b	.LBB12_278
.LBB12_268:                             # %.thread1583
                                        #   in Loop: Header=BB12_235 Depth=2
	ld.w	$a0, $s4, 76
	move	$fp, $zero
	move	$a2, $a0
	b	.LBB12_278
.LBB12_269:                             # %.lr.ph1033.us.preheader
                                        #   in Loop: Header=BB12_235 Depth=2
	move	$fp, $s3
	.p2align	4, , 16
.LBB12_270:                             # %.lr.ph1033.us
                                        #   Parent Loop BB12_232 Depth=1
                                        #     Parent Loop BB12_235 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB12_271 Depth 4
	move	$s1, $t0
	ld.d	$s0, $sp, 352                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 400                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB12_271:                             # %.split.us
                                        #   Parent Loop BB12_232 Depth=1
                                        #     Parent Loop BB12_235 Depth=2
                                        #       Parent Loop BB12_270 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.d	$a0, $s3, 0
	add.d	$a1, $a0, $s0
	ldx.d	$a4, $a0, $s0
	ld.d	$a5, $a1, 24
	st.d	$a6, $sp, 8
	addi.w	$a6, $s1, 0
	addi.w	$a7, $fp, 0
	addi.d	$a1, $sp, 464
	st.d	$t1, $sp, 0
	move	$a0, $s4
	move	$a3, $zero
	pcaddu18i	$ra, %call36(SetMotionVectorPredictor)
	jirl	$ra, $ra, 0
	stptr.w	$s1, $s4, 5608
	stptr.w	$fp, $s4, 5612
	st.w	$zero, $sp, 496
	ld.d	$a3, $s5, 48
	addi.d	$a0, $sp, 488
	move	$a1, $s4
	move	$a2, $s5
	jirl	$ra, $a3, 0
	stptr.w	$s1, $s4, 5608
	stptr.w	$fp, $s4, 5612
	ori	$a0, $zero, 2
	st.w	$a0, $sp, 496
	ld.d	$a3, $s5, 48
	addi.d	$a0, $sp, 488
	move	$a1, $s4
	move	$a2, $s5
	jirl	$ra, $a3, 0
	ld.d	$a6, $sp, 360                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 368                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 384                   # 8-byte Folded Reload
	add.w	$s1, $s1, $s8
	ld.d	$a0, $sp, 376                   # 8-byte Folded Reload
	blt	$s1, $a0, .LBB12_271
# %bb.272:                              # %._crit_edge1034.split.us1045
                                        #   in Loop: Header=BB12_270 Depth=3
	add.w	$fp, $fp, $s7
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 240                   # 8-byte Folded Reload
	blt	$fp, $a0, .LBB12_270
	b	.LBB12_234
.LBB12_273:                             # %.lr.ph1033.us.us.preheader
                                        #   in Loop: Header=BB12_235 Depth=2
	move	$fp, $s3
	.p2align	4, , 16
.LBB12_274:                             # %.lr.ph1033.us.us
                                        #   Parent Loop BB12_232 Depth=1
                                        #     Parent Loop BB12_235 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB12_275 Depth 4
	move	$s1, $t0
	ld.d	$s0, $sp, 352                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 400                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB12_275:                             # %.split.us.us.us1047.us
                                        #   Parent Loop BB12_232 Depth=1
                                        #     Parent Loop BB12_235 Depth=2
                                        #       Parent Loop BB12_274 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.d	$a0, $s3, 0
	add.d	$a1, $a0, $s0
	ldx.d	$a4, $a0, $s0
	ld.d	$a5, $a1, 24
	st.d	$a6, $sp, 8
	addi.w	$a6, $s1, 0
	addi.w	$a7, $fp, 0
	addi.d	$a1, $sp, 464
	st.d	$t1, $sp, 0
	move	$a0, $s4
	move	$a3, $zero
	pcaddu18i	$ra, %call36(SetMotionVectorPredictor)
	jirl	$ra, $ra, 0
	stptr.w	$s1, $s4, 5608
	stptr.w	$fp, $s4, 5612
	st.w	$zero, $sp, 496
	ld.d	$a3, $s5, 48
	addi.d	$a0, $sp, 488
	move	$a1, $s4
	move	$a2, $s5
	jirl	$ra, $a3, 0
	stptr.w	$s1, $s4, 5608
	stptr.w	$fp, $s4, 5612
	ori	$a0, $zero, 2
	st.w	$a0, $sp, 496
	ld.d	$a3, $s5, 48
	addi.d	$a0, $sp, 488
	move	$a1, $s4
	move	$a2, $s5
	jirl	$ra, $a3, 0
	ld.d	$a6, $sp, 360                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 368                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 384                   # 8-byte Folded Reload
	add.w	$s1, $s1, $s8
	ld.d	$a0, $sp, 376                   # 8-byte Folded Reload
	blt	$s1, $a0, .LBB12_275
# %bb.276:                              # %._crit_edge1034.split.us.split.us1049.us
                                        #   in Loop: Header=BB12_274 Depth=3
	add.w	$fp, $fp, $s7
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 240                   # 8-byte Folded Reload
	blt	$fp, $a0, .LBB12_274
	b	.LBB12_234
.LBB12_277:                             #   in Loop: Header=BB12_235 Depth=2
	addi.w	$a2, $a0, -4
	srai.d	$a2, $a2, 1
.LBB12_278:                             #   in Loop: Header=BB12_235 Depth=2
	ld.d	$a6, $sp, 200                   # 8-byte Folded Reload
	ld.d	$a3, $a6, 0
	addi.w	$s3, $a2, 0
	ld.d	$a2, $sp, 136                   # 8-byte Folded Reload
	add.d	$a2, $a2, $s3
	slli.d	$a2, $a2, 3
	ld.w	$a4, $s4, 92
	ldx.d	$a5, $a3, $a2
	add.d	$a3, $t0, $a4
	ldx.bu	$a5, $a5, $a3
	addi.d	$a5, $a5, -255
	sltui	$s1, $a5, 1
	slli.d	$a5, $s1, 3
	ldx.d	$a5, $a6, $a5
	ldx.d	$a5, $a5, $a2
	ldx.bu	$a5, $a5, $a3
	ori	$a6, $zero, 255
	ori	$t7, $zero, 1584
	beq	$a5, $a6, .LBB12_291
# %bb.279:                              # %.preheader951
                                        #   in Loop: Header=BB12_235 Depth=2
	pcalau12i	$a0, %got_pc_hi20(listXsize)
	ld.d	$a0, $a0, %got_pc_lo12(listXsize)
	ldptr.w	$a4, $s4, 5640
	slli.d	$a5, $fp, 2
	ldx.w	$a0, $a0, $a5
	slt	$a5, $a4, $a0
	masknez	$a0, $a0, $a5
	maskeqz	$a4, $a4, $a5
	or	$a4, $a4, $a0
	ori	$a0, $zero, 1
	blt	$a4, $a0, .LBB12_298
# %bb.280:                              # %.lr.ph1052
                                        #   in Loop: Header=BB12_235 Depth=2
	move	$a0, $zero
	ld.d	$a5, $sp, 56                    # 8-byte Folded Reload
	ldx.w	$a5, $s4, $a5
	ld.d	$a6, $sp, 400                   # 8-byte Folded Reload
	ld.d	$a6, $a6, 0
	slli.d	$a7, $fp, 3
	pcalau12i	$t0, %got_pc_hi20(listX)
	ld.d	$t0, $t0, %got_pc_lo12(listX)
	slli.d	$t1, $fp, 8
	or	$a7, $t1, $a7
	add.d	$t1, $a6, $a7
	ld.d	$a6, $t0, 0
	ld.d	$a7, $sp, 80                    # 8-byte Folded Reload
	alsl.d	$a7, $s1, $a7, 3
	addi.d	$t0, $t1, 24
	ori	$t3, $zero, 1
	b	.LBB12_283
	.p2align	4, , 16
.LBB12_281:                             #   in Loop: Header=BB12_283 Depth=3
	ld.d	$t2, $a7, 0
	ld.w	$t3, $s4, 12
	ldx.d	$t2, $t2, $a2
	mul.d	$t3, $t3, $t7
	ldx.d	$t3, $t0, $t3
	slli.d	$t4, $a3, 3
	ldx.d	$t2, $t2, $t4
	xor	$t2, $t3, $t2
	sltui	$t2, $t2, 1
	addi.w	$a0, $a0, 1
	bnez	$t2, .LBB12_289
.LBB12_282:                             #   in Loop: Header=BB12_283 Depth=3
	addi.d	$t0, $t0, 8
	addi.d	$a6, $a6, 8
	addi.d	$t3, $t1, 1
	bgeu	$t1, $a4, .LBB12_289
.LBB12_283:                             #   Parent Loop BB12_232 Depth=1
                                        #     Parent Loop BB12_235 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	move	$t1, $t3
	ori	$t2, $zero, 1
	beqz	$a1, .LBB12_285
# %bb.284:                              #   in Loop: Header=BB12_283 Depth=3
	ld.w	$t2, $t6, 356
	sltui	$t2, $t2, 1
.LBB12_285:                             #   in Loop: Header=BB12_283 Depth=3
	bnez	$a5, .LBB12_281
# %bb.286:                              #   in Loop: Header=BB12_283 Depth=3
	beqz	$t2, .LBB12_281
# %bb.287:                              #   in Loop: Header=BB12_283 Depth=3
	ld.d	$t3, $a7, 0
	ld.d	$t2, $a6, 0
	ldx.d	$t3, $t3, $a2
	ld.w	$t4, $t2, 8
	slli.d	$t5, $a3, 3
	ldx.d	$t3, $t3, $t5
	slli.w	$t4, $t4, 1
	beq	$t3, $t4, .LBB12_310
# %bb.288:                              #   in Loop: Header=BB12_283 Depth=3
	ld.w	$t2, $t2, 12
	slli.w	$t2, $t2, 1
	xor	$t2, $t3, $t2
	sltui	$t2, $t2, 1
	addi.w	$a0, $a0, 1
	beqz	$t2, .LBB12_282
.LBB12_289:                             # %._crit_edge1053
                                        #   in Loop: Header=BB12_235 Depth=2
	addi.w	$a0, $a0, -1
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	masknez	$a1, $a2, $t2
	maskeqz	$a0, $a0, $t2
	or	$a0, $a0, $a1
	ld.d	$t0, $sp, 240                   # 8-byte Folded Reload
	bne	$a0, $a2, .LBB12_299
# %bb.290:                              #   in Loop: Header=BB12_235 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
	addi.w	$a1, $zero, -1111
	pcaddu18i	$ra, %call36(error)
	jirl	$ra, $ra, 0
	ld.d	$t0, $sp, 240                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	ori	$a2, $zero, 1
	bge	$a1, $a2, .LBB12_300
	b	.LBB12_234
.LBB12_291:                             #   in Loop: Header=BB12_235 Depth=2
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	add.w	$a1, $a0, $a1
	ld.d	$a2, $sp, 168                   # 8-byte Folded Reload
	add.w	$a2, $a2, $a0
	bge	$a1, $a2, .LBB12_234
# %bb.292:                              # %.lr.ph1075
                                        #   in Loop: Header=BB12_235 Depth=2
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	add.d	$a1, $a1, $t0
	ld.d	$a2, $sp, 136                   # 8-byte Folded Reload
	add.d	$a2, $a2, $a0
	b	.LBB12_294
	.p2align	4, , 16
.LBB12_293:                             # %._crit_edge1072
                                        #   in Loop: Header=BB12_294 Depth=3
	addi.d	$a2, $a2, 1
	ld.d	$a3, $sp, 168                   # 8-byte Folded Reload
	add.w	$a3, $a3, $a0
	bge	$a2, $a3, .LBB12_234
.LBB12_294:                             #   Parent Loop BB12_232 Depth=1
                                        #     Parent Loop BB12_235 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB12_296 Depth 4
	ld.d	$a3, $sp, 224                   # 8-byte Folded Reload
	add.w	$a3, $a4, $a3
	add.w	$a5, $a1, $a4
	bge	$a3, $a5, .LBB12_293
# %bb.295:                              # %.lr.ph1071
                                        #   in Loop: Header=BB12_294 Depth=3
	add.d	$a0, $t0, $a4
	slli.d	$a3, $a0, 3
	ld.d	$a7, $sp, 352                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 400                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB12_296:                             #   Parent Loop BB12_232 Depth=1
                                        #     Parent Loop BB12_235 Depth=2
                                        #       Parent Loop BB12_294 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.d	$a4, $t0, 0
	ldx.d	$a4, $a4, $a7
	ld.d	$a4, $a4, 8
	slli.d	$a5, $a2, 3
	ldx.d	$a4, $a4, $a5
	stx.b	$zero, $a4, $a0
	ld.d	$a4, $t0, 0
	ldx.d	$a4, $a4, $a7
	ld.d	$a4, $a4, 0
	ldx.d	$a4, $a4, $a5
	stx.b	$zero, $a4, $a0
	ld.d	$a4, $t0, 0
	ldx.d	$a4, $a4, $t1
	ld.d	$a6, $a4, 0
	ld.d	$a4, $a4, 8
	ldx.d	$a6, $a6, $a5
	ldx.d	$a4, $a4, $a5
	ldx.d	$a5, $a6, $a3
	ldx.d	$a4, $a4, $a3
	st.h	$zero, $a5, 0
	st.h	$zero, $a4, 0
	st.h	$zero, $a5, 2
	st.h	$zero, $a4, 2
	ld.w	$a4, $s4, 92
	addi.d	$a0, $a0, 1
	add.w	$a5, $a1, $a4
	addi.d	$a3, $a3, 8
	blt	$a0, $a5, .LBB12_296
# %bb.297:                              # %._crit_edge1072.loopexit
                                        #   in Loop: Header=BB12_294 Depth=3
	ld.w	$a0, $s4, 76
	ld.d	$t0, $sp, 240                   # 8-byte Folded Reload
	b	.LBB12_293
.LBB12_298:                             #   in Loop: Header=BB12_235 Depth=2
	addi.w	$a0, $zero, -1
.LBB12_299:                             # %.thread941
                                        #   in Loop: Header=BB12_235 Depth=2
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	ori	$a2, $zero, 1
	blt	$a1, $a2, .LBB12_234
.LBB12_300:                             # %.lr.ph1067
                                        #   in Loop: Header=BB12_235 Depth=2
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	add.d	$a1, $a1, $t0
	slli.d	$a2, $fp, 7
	pcalau12i	$a3, %got_pc_hi20(listX)
	ld.d	$a3, $a3, %got_pc_lo12(listX)
	ld.d	$a4, $sp, 64                    # 8-byte Folded Reload
	add.d	$a2, $a4, $a2
	ld.w	$t2, $s4, 92
	alsl.d	$a2, $a0, $a2, 2
	alsl.d	$a3, $fp, $a3, 3
	ld.d	$a4, $sp, 72                    # 8-byte Folded Reload
	alsl.d	$a4, $s1, $a4, 3
	ld.d	$a5, $sp, 136                   # 8-byte Folded Reload
	b	.LBB12_302
	.p2align	4, , 16
.LBB12_301:                             # %._crit_edge1065
                                        #   in Loop: Header=BB12_302 Depth=3
	addi.d	$a5, $a5, 1
	ld.d	$a6, $sp, 232                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 240                   # 8-byte Folded Reload
	bge	$a5, $a6, .LBB12_234
.LBB12_302:                             #   Parent Loop BB12_232 Depth=1
                                        #     Parent Loop BB12_235 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB12_306 Depth 4
	ld.d	$a6, $sp, 224                   # 8-byte Folded Reload
	add.w	$a6, $t2, $a6
	add.w	$a7, $a1, $t2
	bge	$a6, $a7, .LBB12_301
# %bb.303:                              # %.lr.ph1064
                                        #   in Loop: Header=BB12_302 Depth=3
	ld.w	$a7, $s4, 76
	add.d	$a6, $a5, $s3
	add.d	$a7, $a5, $a7
	add.d	$t0, $t0, $t2
	slli.d	$t1, $t0, 3
	lu12i.w	$s0, 77
	ld.d	$s1, $sp, 160                   # 8-byte Folded Reload
	b	.LBB12_306
	.p2align	4, , 16
.LBB12_304:                             # %.split.us1058
                                        #   in Loop: Header=BB12_306 Depth=4
	ld.d	$t2, $t5, 0
	ld.d	$t5, $a4, 0
	ld.d	$t6, $t2, 0
	ldx.d	$t4, $t5, $t4
	ld.d	$t2, $t2, 8
	ldx.d	$t5, $t6, $t3
	ldx.d	$t4, $t4, $t1
	ldx.d	$t2, $t2, $t3
	ldx.d	$t5, $t5, $t1
	ld.h	$t6, $t4, 0
	ldx.d	$t3, $t2, $t1
	st.h	$t6, $t5, 0
	st.h	$zero, $t3, 0
	ld.h	$t4, $t4, 2
	move	$t2, $zero
	st.h	$t4, $t5, 2
.LBB12_305:                             # %.split1060.us
                                        #   in Loop: Header=BB12_306 Depth=4
	st.h	$t2, $t3, 2
	ld.w	$t2, $s4, 92
	addi.d	$t0, $t0, 1
	add.w	$t3, $a1, $t2
	addi.d	$t1, $t1, 8
	bge	$t0, $t3, .LBB12_301
.LBB12_306:                             #   Parent Loop BB12_232 Depth=1
                                        #     Parent Loop BB12_235 Depth=2
                                        #       Parent Loop BB12_302 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.d	$t6, $sp, 400                   # 8-byte Folded Reload
	ld.d	$t2, $t6, 0
	ld.d	$t5, $sp, 352                   # 8-byte Folded Reload
	ldx.d	$t2, $t2, $t5
	ld.d	$t2, $t2, 0
	slli.d	$t3, $a7, 3
	ldx.d	$t4, $t2, $t3
	ld.w	$t2, $a2, 0
	stx.b	$a0, $t4, $t0
	ld.d	$t4, $t6, 0
	ldx.d	$t4, $t4, $t5
	ld.d	$t4, $t4, 8
	ldx.d	$t4, $t4, $t3
	stx.b	$zero, $t4, $t0
	ld.d	$t4, $t6, 0
	ld.d	$t5, $sp, 344                   # 8-byte Folded Reload
	add.d	$t5, $t4, $t5
	slli.d	$t4, $a6, 3
	beq	$t2, $s1, .LBB12_304
# %bb.307:                              # %.split
                                        #   in Loop: Header=BB12_306 Depth=4
	ld.d	$t5, $t5, 0
	ld.d	$t6, $a3, 0
	slli.d	$t7, $a0, 3
	ld.d	$t8, $a4, 0
	ld.d	$fp, $t5, 0
	ld.d	$t5, $t5, 8
	ldx.d	$t6, $t6, $t7
	ldx.d	$t4, $t8, $t4
	ldx.d	$t7, $fp, $t3
	ldx.d	$t3, $t5, $t3
	ori	$t8, $s0, 1452
	ldx.d	$t5, $t4, $t1
	ldx.w	$t8, $t6, $t8
	ldx.d	$t4, $t7, $t1
	ldx.d	$t3, $t3, $t1
	ld.hu	$t6, $t5, 0
	beqz	$t8, .LBB12_309
# %bb.308:                              # %.split.split
                                        #   in Loop: Header=BB12_306 Depth=4
	st.h	$t6, $t4, 0
	st.h	$zero, $t3, 0
	ld.h	$t5, $t5, 2
	move	$t2, $zero
	st.h	$t5, $t4, 2
	b	.LBB12_305
.LBB12_309:                             # %.split.split.us
                                        #   in Loop: Header=BB12_306 Depth=4
	ext.w.h	$t6, $t6
	mul.d	$t6, $t2, $t6
	addi.d	$t6, $t6, 128
	bstrpick.d	$t6, $t6, 31, 8
	st.h	$t6, $t4, 0
	ld.h	$t7, $t5, 0
	sub.d	$t6, $t6, $t7
	st.h	$t6, $t3, 0
	ld.h	$t6, $t5, 2
	mul.d	$t2, $t2, $t6
	addi.d	$t2, $t2, 128
	bstrpick.d	$t2, $t2, 31, 8
	st.h	$t2, $t4, 2
	ld.h	$t4, $t5, 2
	sub.d	$t2, $t2, $t4
	b	.LBB12_305
.LBB12_310:                             #   in Loop: Header=BB12_235 Depth=2
	ld.d	$t0, $sp, 240                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	ori	$a2, $zero, 1
	bge	$a1, $a2, .LBB12_300
	b	.LBB12_234
.LBB12_311:
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(active_pps)
	ori	$a1, $zero, 5
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a2, $a2, 40
	ld.d	$a3, $sp, 32                    # 8-byte Folded Reload
	ld.w	$a3, $a3, 20
	ld.w	$a0, $a0, 12
	st.w	$a1, $sp, 488
	ori	$a1, $zero, 56
	mul.d	$a1, $a3, $a1
	add.d	$s0, $a2, $a1
	beqz	$a0, .LBB12_313
# %bb.312:
	ld.d	$a0, $s0, 0
	ld.w	$a0, $a0, 24
	sltui	$a1, $a0, 1
	ori	$a0, $zero, 32
	masknez	$a0, $a0, $a1
	ori	$a2, $zero, 40
	pcalau12i	$a3, %got_pc_hi20(linfo_se)
	ld.d	$a3, $a3, %got_pc_lo12(linfo_se)
	pcalau12i	$a4, %got_pc_hi20(readMVD_CABAC)
	ld.d	$a4, $a4, %got_pc_lo12(readMVD_CABAC)
	maskeqz	$a2, $a2, $a1
	or	$a0, $a2, $a0
	masknez	$a2, $a3, $a1
	maskeqz	$a1, $a4, $a1
	or	$a1, $a1, $a2
	b	.LBB12_314
.LBB12_313:
	pcalau12i	$a0, %got_pc_hi20(linfo_se)
	ld.d	$a1, $a0, %got_pc_lo12(linfo_se)
	ori	$a0, $zero, 32
.LBB12_314:
	ld.d	$a3, $sp, 152                   # 8-byte Folded Reload
	move	$a4, $zero
	addi.d	$a2, $sp, 488
	stx.d	$a1, $a0, $a2
	addi.d	$a0, $a3, 172
	addi.d	$s5, $a3, 176
	ori	$a2, $zero, 1
	ori	$s2, $zero, 4
	st.d	$s5, $sp, 184                   # 8-byte Folded Spill
	st.d	$a0, $sp, 264                   # 8-byte Folded Spill
	st.d	$a0, $sp, 176                   # 8-byte Folded Spill
	st.d	$s0, $sp, 336                   # 8-byte Folded Spill
	b	.LBB12_316
	.p2align	4, , 16
.LBB12_315:                             # %.split1135.us
                                        #   in Loop: Header=BB12_316 Depth=1
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	add.d	$a1, $a1, $a0
	st.d	$a1, $sp, 176                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 184                   # 8-byte Folded Reload
	add.d	$a1, $a1, $a0
	st.d	$a1, $sp, 184                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	move	$a4, $a0
	ld.d	$a6, $sp, 144                   # 8-byte Folded Reload
	bge	$a0, $s2, .LBB12_354
.LBB12_316:                             # %.preheader947
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB12_319 Depth 2
                                        #       Child Loop BB12_347 Depth 3
                                        #         Child Loop BB12_348 Depth 4
                                        #       Child Loop BB12_351 Depth 3
                                        #         Child Loop BB12_352 Depth 4
                                        #       Child Loop BB12_326 Depth 3
                                        #         Child Loop BB12_328 Depth 4
                                        #           Child Loop BB12_330 Depth 5
                                        #             Child Loop BB12_333 Depth 6
                                        #             Child Loop BB12_336 Depth 6
                                        #           Child Loop BB12_339 Depth 5
                                        #             Child Loop BB12_342 Depth 6
                                        #             Child Loop BB12_345 Depth 6
	st.d	$a4, $sp, 192                   # 8-byte Folded Spill
	add.d	$a0, $a4, $a6
	st.d	$a0, $sp, 240                   # 8-byte Folded Spill
	blt	$a6, $a2, .LBB12_315
# %bb.317:                              # %.preheader947.split.us.preheader
                                        #   in Loop: Header=BB12_316 Depth=1
	move	$s1, $zero
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	bstrins.d	$a0, $zero, 0, 0
	st.d	$a0, $sp, 200                   # 8-byte Folded Spill
	b	.LBB12_319
	.p2align	4, , 16
.LBB12_318:                             # %..loopexit_crit_edge.us
                                        #   in Loop: Header=BB12_319 Depth=2
	ld.d	$a0, $sp, 248                   # 8-byte Folded Reload
	add.d	$s1, $s1, $a0
	ori	$a2, $zero, 1
	bge	$s1, $s2, .LBB12_315
.LBB12_319:                             # %.preheader947.split.us
                                        #   Parent Loop BB12_316 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB12_347 Depth 3
                                        #         Child Loop BB12_348 Depth 4
                                        #       Child Loop BB12_351 Depth 3
                                        #         Child Loop BB12_352 Depth 4
                                        #       Child Loop BB12_326 Depth 3
                                        #         Child Loop BB12_328 Depth 4
                                        #           Child Loop BB12_330 Depth 5
                                        #             Child Loop BB12_333 Depth 6
                                        #             Child Loop BB12_336 Depth 6
                                        #           Child Loop BB12_339 Depth 5
                                        #             Child Loop BB12_342 Depth 6
                                        #             Child Loop BB12_345 Depth 6
	addi.w	$a0, $s1, 0
	srli.d	$a0, $a0, 1
	ld.d	$a1, $sp, 200                   # 8-byte Folded Reload
	add.w	$a0, $a0, $a1
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	ldx.bu	$a1, $a1, $a0
	addi.d	$a1, $a1, -1
	bltu	$a2, $a1, .LBB12_318
# %bb.320:                              #   in Loop: Header=BB12_319 Depth=2
	ld.d	$a1, $sp, 208                   # 8-byte Folded Reload
	ldx.b	$a0, $a1, $a0
	beqz	$a0, .LBB12_318
# %bb.321:                              # %.lr.ph1110.us
                                        #   in Loop: Header=BB12_319 Depth=2
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	blez	$a1, .LBB12_318
# %bb.322:                              # %.lr.ph1110.split.us.us
                                        #   in Loop: Header=BB12_319 Depth=2
	ld.d	$a1, $sp, 400                   # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	ld.d	$a2, $sp, 352                   # 8-byte Folded Reload
	ldx.d	$a1, $a1, $a2
	ld.d	$a1, $a1, 8
	ld.w	$a2, $s4, 76
	ld.d	$a4, $sp, 120                   # 8-byte Folded Reload
	alsl.d	$a3, $a0, $a4, 3
	slli.d	$a0, $a0, 3
	ld.d	$s3, $sp, 192                   # 8-byte Folded Reload
	alsl.d	$a1, $s3, $a1, 3
	slli.d	$a2, $a2, 3
	ldx.d	$a1, $a1, $a2
	ld.w	$a2, $s4, 92
	ldx.w	$s8, $a4, $a0
	ld.w	$s7, $a3, 4
	add.d	$a0, $a1, $s1
	ldx.b	$a2, $a0, $a2
	ld.d	$a0, $sp, 248                   # 8-byte Folded Reload
	add.d	$a0, $s1, $a0
	st.d	$a0, $sp, 376                   # 8-byte Folded Spill
	slli.w	$t0, $s8, 2
	slli.w	$a6, $s7, 2
	st.d	$s1, $sp, 256                   # 8-byte Folded Spill
	st.d	$a2, $sp, 384                   # 8-byte Folded Spill
	st.d	$t0, $sp, 368                   # 8-byte Folded Spill
	st.d	$a6, $sp, 360                   # 8-byte Folded Spill
	blez	$s7, .LBB12_346
# %bb.323:                              # %.lr.ph1110.split.us.split.us.us
                                        #   in Loop: Header=BB12_319 Depth=2
	blez	$s8, .LBB12_350
# %bb.324:                              # %.lr.ph1100.us.us.us.us.preheader
                                        #   in Loop: Header=BB12_319 Depth=2
	bstrpick.d	$a1, $s7, 31, 0
	bstrpick.d	$a0, $s8, 30, 2
	slli.d	$fp, $a0, 2
	st.d	$a1, $sp, 232                   # 8-byte Folded Spill
	slli.d	$a0, $a1, 5
	st.d	$a0, $sp, 224                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	st.d	$a0, $sp, 280                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	st.d	$a0, $sp, 272                   # 8-byte Folded Spill
	b	.LBB12_326
	.p2align	4, , 16
.LBB12_325:                             # %._crit_edge1101.split.us.split.us.us.us.us.us
                                        #   in Loop: Header=BB12_326 Depth=3
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	add.d	$s3, $s3, $a0
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 272                   # 8-byte Folded Reload
	add.d	$a1, $a1, $a0
	st.d	$a1, $sp, 272                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 280                   # 8-byte Folded Reload
	add.d	$a1, $a1, $a0
	st.d	$a1, $sp, 280                   # 8-byte Folded Spill
	ld.d	$s4, $sp, 392                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 336                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 256                   # 8-byte Folded Reload
	bge	$s3, $a0, .LBB12_318
.LBB12_326:                             # %.lr.ph1100.us.us.us.us
                                        #   Parent Loop BB12_316 Depth=1
                                        #     Parent Loop BB12_319 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB12_328 Depth 4
                                        #           Child Loop BB12_330 Depth 5
                                        #             Child Loop BB12_333 Depth 6
                                        #             Child Loop BB12_336 Depth 6
                                        #           Child Loop BB12_339 Depth 5
                                        #             Child Loop BB12_342 Depth 6
                                        #             Child Loop BB12_345 Depth 6
	ld.w	$a0, $s4, 76
	add.d	$a0, $s3, $a0
	st.d	$a0, $sp, 320                   # 8-byte Folded Spill
	move	$s4, $s1
	b	.LBB12_328
	.p2align	4, , 16
.LBB12_327:                             # %._crit_edge1086.split.us.us.us.us.us.us.us.us.us.1
                                        #   in Loop: Header=BB12_328 Depth=4
	add.d	$s4, $s4, $s8
	ld.d	$a2, $sp, 384                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 376                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 368                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 360                   # 8-byte Folded Reload
	bge	$s4, $a0, .LBB12_325
.LBB12_328:                             # %.split1088.us.us.us.us.us.us.us
                                        #   Parent Loop BB12_316 Depth=1
                                        #     Parent Loop BB12_319 Depth=2
                                        #       Parent Loop BB12_326 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB12_330 Depth 5
                                        #             Child Loop BB12_333 Depth 6
                                        #             Child Loop BB12_336 Depth 6
                                        #           Child Loop BB12_339 Depth 5
                                        #             Child Loop BB12_342 Depth 6
                                        #             Child Loop BB12_345 Depth 6
	ld.d	$s0, $sp, 400                   # 8-byte Folded Reload
	ld.d	$a0, $s0, 0
	ld.d	$s1, $sp, 392                   # 8-byte Folded Reload
	ld.w	$a1, $s1, 92
	st.d	$a1, $sp, 304                   # 8-byte Folded Spill
	ld.d	$a3, $sp, 352                   # 8-byte Folded Reload
	add.d	$a1, $a0, $a3
	ldx.d	$a4, $a0, $a3
	ld.d	$a5, $a1, 24
	st.d	$a6, $sp, 8
	addi.d	$a1, $sp, 464
	ori	$a3, $zero, 1
	st.d	$t0, $sp, 0
	move	$a0, $s1
	move	$a6, $s4
	move	$a7, $s3
	pcaddu18i	$ra, %call36(SetMotionVectorPredictor)
	jirl	$ra, $ra, 0
	stptr.w	$s4, $s1, 5608
	stptr.w	$s3, $s1, 5612
	ori	$a0, $zero, 1
	st.w	$a0, $sp, 496
	ld.d	$a2, $sp, 336                   # 8-byte Folded Reload
	ld.d	$a3, $a2, 48
	addi.d	$a0, $sp, 488
	move	$a1, $s1
	jirl	$ra, $a3, 0
	ld.d	$a0, $s0, 0
	ld.d	$s0, $sp, 344                   # 8-byte Folded Reload
	ldx.d	$a1, $a0, $s0
	ld.w	$a0, $sp, 492
	ld.h	$a2, $sp, 464
	ld.d	$a3, $a1, 8
	move	$a1, $zero
	add.d	$a2, $a2, $a0
	ld.d	$a4, $sp, 320                   # 8-byte Folded Reload
	alsl.d	$a3, $a4, $a3, 3
	vreplgr2vr.d	$vr3, $s4
	vaddi.du	$vr4, $vr3, 2
	ld.d	$a4, $sp, 304                   # 8-byte Folded Reload
	add.d	$a4, $s4, $a4
	slli.d	$s1, $a4, 3
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	ld.d	$t5, $sp, 264                   # 8-byte Folded Reload
	ori	$t6, $zero, 3
	b	.LBB12_330
	.p2align	4, , 16
.LBB12_329:                             # %._crit_edge1084.us.us.us.us.us.us.us.us.us
                                        #   in Loop: Header=BB12_330 Depth=5
	addi.d	$a1, $a1, 1
	addi.d	$a4, $a4, 32
	beq	$a1, $s7, .LBB12_337
.LBB12_330:                             # %.preheader.us.us.us.us.us.us.us.us.us
                                        #   Parent Loop BB12_316 Depth=1
                                        #     Parent Loop BB12_319 Depth=2
                                        #       Parent Loop BB12_326 Depth=3
                                        #         Parent Loop BB12_328 Depth=4
                                        # =>        This Loop Header: Depth=5
                                        #             Child Loop BB12_333 Depth 6
                                        #             Child Loop BB12_336 Depth 6
	slli.d	$a5, $a1, 3
	ldx.d	$a5, $a3, $a5
	add.d	$a5, $a5, $s1
	bgeu	$s8, $s2, .LBB12_332
# %bb.331:                              #   in Loop: Header=BB12_330 Depth=5
	move	$a7, $zero
	b	.LBB12_335
	.p2align	4, , 16
.LBB12_332:                             # %vector.body1783.preheader
                                        #   in Loop: Header=BB12_330 Depth=5
	add.d	$a7, $a1, $s3
	vld	$vr0, $s6, %pc_lo12(.LCPI12_0)
	addi.d	$a6, $a5, 16
	slli.d	$a7, $a7, 5
	add.d	$a7, $t5, $a7
	move	$t0, $fp
	.p2align	4, , 16
.LBB12_333:                             # %vector.body1783
                                        #   Parent Loop BB12_316 Depth=1
                                        #     Parent Loop BB12_319 Depth=2
                                        #       Parent Loop BB12_326 Depth=3
                                        #         Parent Loop BB12_328 Depth=4
                                        #           Parent Loop BB12_330 Depth=5
                                        # =>          This Inner Loop Header: Depth=6
	vld	$vr1, $a6, -16
	vld	$vr2, $a6, 0
	vpickve2gr.d	$t1, $vr1, 0
	st.h	$a2, $t1, 0
	vpickve2gr.d	$t1, $vr1, 1
	st.h	$a2, $t1, 0
	vpickve2gr.d	$t1, $vr2, 0
	st.h	$a2, $t1, 0
	vpickve2gr.d	$t1, $vr2, 1
	st.h	$a2, $t1, 0
	vadd.d	$vr1, $vr0, $vr3
	vadd.d	$vr2, $vr0, $vr4
	vpickve2gr.d	$t1, $vr1, 0
	slli.d	$t1, $t1, 3
	vpickve2gr.d	$t2, $vr1, 1
	slli.d	$t2, $t2, 3
	vpickve2gr.d	$t3, $vr2, 0
	slli.d	$t3, $t3, 3
	vpickve2gr.d	$t4, $vr2, 1
	slli.d	$t4, $t4, 3
	stx.w	$a0, $a7, $t1
	stx.w	$a0, $a7, $t2
	stx.w	$a0, $a7, $t3
	stx.w	$a0, $a7, $t4
	vaddi.du	$vr0, $vr0, 4
	addi.d	$t0, $t0, -4
	addi.d	$a6, $a6, 32
	bnez	$t0, .LBB12_333
# %bb.334:                              # %middle.block1791
                                        #   in Loop: Header=BB12_330 Depth=5
	move	$a7, $fp
	beq	$fp, $s8, .LBB12_329
.LBB12_335:                             # %scalar.ph1776.preheader
                                        #   in Loop: Header=BB12_330 Depth=5
	alsl.d	$a5, $a7, $a5, 3
	add.d	$a6, $s4, $a7
	alsl.d	$a6, $a6, $a4, 3
	sub.d	$a7, $s8, $a7
	.p2align	4, , 16
.LBB12_336:                             # %scalar.ph1776
                                        #   Parent Loop BB12_316 Depth=1
                                        #     Parent Loop BB12_319 Depth=2
                                        #       Parent Loop BB12_326 Depth=3
                                        #         Parent Loop BB12_328 Depth=4
                                        #           Parent Loop BB12_330 Depth=5
                                        # =>          This Inner Loop Header: Depth=6
	ld.d	$t0, $a5, 0
	st.h	$a2, $t0, 0
	st.w	$a0, $a6, 0
	addi.d	$a5, $a5, 8
	addi.d	$a7, $a7, -1
	addi.d	$a6, $a6, 8
	bnez	$a7, .LBB12_336
	b	.LBB12_329
	.p2align	4, , 16
.LBB12_337:                             # %._crit_edge1086.split.us.us.us.us.us.us.us.us.us
                                        #   in Loop: Header=BB12_328 Depth=4
	ld.d	$a1, $sp, 392                   # 8-byte Folded Reload
	stptr.w	$s4, $a1, 5608
	stptr.w	$s3, $a1, 5612
	st.w	$t6, $sp, 496
	ld.d	$a2, $sp, 336                   # 8-byte Folded Reload
	ld.d	$a3, $a2, 48
	addi.d	$a0, $sp, 488
	vst	$vr3, $sp, 304                  # 16-byte Folded Spill
	vst	$vr4, $sp, 288                  # 16-byte Folded Spill
	jirl	$ra, $a3, 0
	vld	$vr4, $sp, 288                  # 16-byte Folded Reload
	vld	$vr3, $sp, 304                  # 16-byte Folded Reload
	ld.d	$a0, $sp, 400                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ldx.d	$a1, $a0, $s0
	ld.w	$a0, $sp, 492
	ld.h	$a2, $sp, 466
	ld.d	$a3, $a1, 8
	move	$a1, $zero
	add.d	$a2, $a2, $a0
	ld.d	$a4, $sp, 320                   # 8-byte Folded Reload
	alsl.d	$a3, $a4, $a3, 3
	ld.d	$a4, $sp, 280                   # 8-byte Folded Reload
	b	.LBB12_339
	.p2align	4, , 16
.LBB12_338:                             # %._crit_edge1084.us.us.us.us.us.us.us.us.us.1
                                        #   in Loop: Header=BB12_339 Depth=5
	addi.d	$a1, $a1, 1
	addi.d	$a4, $a4, 32
	beq	$a1, $s7, .LBB12_327
.LBB12_339:                             # %.preheader.us.us.us.us.us.us.us.us.us.1
                                        #   Parent Loop BB12_316 Depth=1
                                        #     Parent Loop BB12_319 Depth=2
                                        #       Parent Loop BB12_326 Depth=3
                                        #         Parent Loop BB12_328 Depth=4
                                        # =>        This Loop Header: Depth=5
                                        #             Child Loop BB12_342 Depth 6
                                        #             Child Loop BB12_345 Depth 6
	slli.d	$a5, $a1, 3
	ldx.d	$a5, $a3, $a5
	add.d	$a5, $a5, $s1
	bgeu	$s8, $s2, .LBB12_341
# %bb.340:                              #   in Loop: Header=BB12_339 Depth=5
	move	$a7, $zero
	b	.LBB12_344
	.p2align	4, , 16
.LBB12_341:                             # %vector.body1765.preheader
                                        #   in Loop: Header=BB12_339 Depth=5
	add.d	$a6, $a1, $s3
	vld	$vr0, $s6, %pc_lo12(.LCPI12_0)
	slli.d	$a6, $a6, 5
	add.d	$a6, $s5, $a6
	addi.d	$a7, $a5, 16
	move	$t0, $fp
	.p2align	4, , 16
.LBB12_342:                             # %vector.body1765
                                        #   Parent Loop BB12_316 Depth=1
                                        #     Parent Loop BB12_319 Depth=2
                                        #       Parent Loop BB12_326 Depth=3
                                        #         Parent Loop BB12_328 Depth=4
                                        #           Parent Loop BB12_339 Depth=5
                                        # =>          This Inner Loop Header: Depth=6
	ld.d	$t1, $a7, -16
	ld.d	$t2, $a7, -8
	ld.d	$t3, $a7, 0
	ld.d	$t4, $a7, 8
	st.h	$a2, $t1, 2
	st.h	$a2, $t2, 2
	st.h	$a2, $t3, 2
	st.h	$a2, $t4, 2
	vadd.d	$vr1, $vr0, $vr3
	vadd.d	$vr2, $vr0, $vr4
	vslli.d	$vr1, $vr1, 3
	vslli.d	$vr2, $vr2, 3
	vpickve2gr.d	$t1, $vr1, 0
	vpickve2gr.d	$t2, $vr1, 1
	vpickve2gr.d	$t3, $vr2, 0
	vpickve2gr.d	$t4, $vr2, 1
	stx.w	$a0, $a6, $t1
	stx.w	$a0, $a6, $t2
	stx.w	$a0, $a6, $t3
	stx.w	$a0, $a6, $t4
	vaddi.du	$vr0, $vr0, 4
	addi.d	$t0, $t0, -4
	addi.d	$a7, $a7, 32
	bnez	$t0, .LBB12_342
# %bb.343:                              # %middle.block1773
                                        #   in Loop: Header=BB12_339 Depth=5
	move	$a7, $fp
	beq	$fp, $s8, .LBB12_338
.LBB12_344:                             # %scalar.ph1758.preheader
                                        #   in Loop: Header=BB12_339 Depth=5
	alsl.d	$a5, $a7, $a5, 3
	sub.d	$a6, $s8, $a7
	add.d	$a7, $s4, $a7
	alsl.d	$a7, $a7, $a4, 3
	.p2align	4, , 16
.LBB12_345:                             # %scalar.ph1758
                                        #   Parent Loop BB12_316 Depth=1
                                        #     Parent Loop BB12_319 Depth=2
                                        #       Parent Loop BB12_326 Depth=3
                                        #         Parent Loop BB12_328 Depth=4
                                        #           Parent Loop BB12_339 Depth=5
                                        # =>          This Inner Loop Header: Depth=6
	ld.d	$t0, $a5, 0
	st.h	$a2, $t0, 2
	st.w	$a0, $a7, 0
	addi.d	$a5, $a5, 8
	addi.d	$a6, $a6, -1
	addi.d	$a7, $a7, 8
	bnez	$a6, .LBB12_345
	b	.LBB12_338
.LBB12_346:                             # %.lr.ph1100.us.us1126.preheader
                                        #   in Loop: Header=BB12_319 Depth=2
	move	$fp, $s3
	.p2align	4, , 16
.LBB12_347:                             # %.lr.ph1100.us.us1126
                                        #   Parent Loop BB12_316 Depth=1
                                        #     Parent Loop BB12_319 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB12_348 Depth 4
	ld.d	$s3, $sp, 352                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB12_348:                             # %.split1088.us.us
                                        #   Parent Loop BB12_316 Depth=1
                                        #     Parent Loop BB12_319 Depth=2
                                        #       Parent Loop BB12_347 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.d	$a0, $sp, 400                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	add.d	$a1, $a0, $s3
	ldx.d	$a4, $a0, $s3
	ld.d	$a5, $a1, 24
	st.d	$a6, $sp, 8
	addi.w	$a6, $s1, 0
	addi.w	$a7, $fp, 0
	addi.d	$a1, $sp, 464
	ori	$a3, $zero, 1
	st.d	$t0, $sp, 0
	move	$a0, $s4
	pcaddu18i	$ra, %call36(SetMotionVectorPredictor)
	jirl	$ra, $ra, 0
	stptr.w	$s1, $s4, 5608
	stptr.w	$fp, $s4, 5612
	ori	$a0, $zero, 1
	st.w	$a0, $sp, 496
	ld.d	$a3, $s0, 48
	addi.d	$a0, $sp, 488
	move	$a1, $s4
	move	$a2, $s0
	jirl	$ra, $a3, 0
	stptr.w	$s1, $s4, 5608
	stptr.w	$fp, $s4, 5612
	ori	$a0, $zero, 3
	st.w	$a0, $sp, 496
	ld.d	$a3, $s0, 48
	addi.d	$a0, $sp, 488
	move	$a1, $s4
	move	$a2, $s0
	jirl	$ra, $a3, 0
	ld.d	$a6, $sp, 360                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 368                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 384                   # 8-byte Folded Reload
	add.w	$s1, $s1, $s8
	ld.d	$a0, $sp, 376                   # 8-byte Folded Reload
	blt	$s1, $a0, .LBB12_348
# %bb.349:                              # %._crit_edge1101.split.us1112.us
                                        #   in Loop: Header=BB12_347 Depth=3
	add.w	$fp, $fp, $s7
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 256                   # 8-byte Folded Reload
	blt	$fp, $a0, .LBB12_347
	b	.LBB12_318
.LBB12_350:                             # %.lr.ph1100.us.us.us1130.preheader
                                        #   in Loop: Header=BB12_319 Depth=2
	move	$fp, $s3
	.p2align	4, , 16
.LBB12_351:                             # %.lr.ph1100.us.us.us1130
                                        #   Parent Loop BB12_316 Depth=1
                                        #     Parent Loop BB12_319 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB12_352 Depth 4
	ld.d	$s3, $sp, 352                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB12_352:                             # %.split1088.us.us.us1114.us.us
                                        #   Parent Loop BB12_316 Depth=1
                                        #     Parent Loop BB12_319 Depth=2
                                        #       Parent Loop BB12_351 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.d	$a0, $sp, 400                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	add.d	$a1, $a0, $s3
	ldx.d	$a4, $a0, $s3
	ld.d	$a5, $a1, 24
	st.d	$a6, $sp, 8
	addi.w	$a6, $s1, 0
	addi.w	$a7, $fp, 0
	addi.d	$a1, $sp, 464
	ori	$a3, $zero, 1
	st.d	$t0, $sp, 0
	move	$a0, $s4
	pcaddu18i	$ra, %call36(SetMotionVectorPredictor)
	jirl	$ra, $ra, 0
	stptr.w	$s1, $s4, 5608
	stptr.w	$fp, $s4, 5612
	ori	$a0, $zero, 1
	st.w	$a0, $sp, 496
	ld.d	$a3, $s0, 48
	addi.d	$a0, $sp, 488
	move	$a1, $s4
	move	$a2, $s0
	jirl	$ra, $a3, 0
	stptr.w	$s1, $s4, 5608
	stptr.w	$fp, $s4, 5612
	ori	$a0, $zero, 3
	st.w	$a0, $sp, 496
	ld.d	$a3, $s0, 48
	addi.d	$a0, $sp, 488
	move	$a1, $s4
	move	$a2, $s0
	jirl	$ra, $a3, 0
	ld.d	$a6, $sp, 360                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 368                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 384                   # 8-byte Folded Reload
	add.w	$s1, $s1, $s8
	ld.d	$a0, $sp, 376                   # 8-byte Folded Reload
	blt	$s1, $a0, .LBB12_352
# %bb.353:                              # %._crit_edge1101.split.us.split.us1116.us.us
                                        #   in Loop: Header=BB12_351 Depth=3
	add.w	$fp, $fp, $s7
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 256                   # 8-byte Folded Reload
	blt	$fp, $a0, .LBB12_351
	b	.LBB12_318
.LBB12_354:
	ld.d	$a0, $sp, 400                   # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	ld.d	$a3, $sp, 352                   # 8-byte Folded Reload
	ldx.d	$a2, $a1, $a3
	ld.w	$a0, $s4, 92
	add.d	$a3, $a1, $a3
	ld.d	$t2, $a2, 0
	ld.d	$t3, $a2, 8
	addi.d	$a1, $a1, 24
	ld.d	$s8, $sp, 24                    # 8-byte Folded Reload
	ori	$a2, $s8, 1
	ld.d	$a5, $a3, 8
	ld.w	$t4, $s4, 76
	addi.d	$a3, $a0, 1
	addi.d	$a4, $a0, 2
	ld.d	$a7, $a5, 8
	ld.d	$t0, $a5, 0
	addi.d	$a5, $a0, 3
	addi.w	$a6, $t4, 3
	alsl.d	$a7, $t4, $a7, 3
	alsl.d	$t0, $t4, $t0, 3
	addi.d	$t1, $t4, -1
	alsl.d	$t2, $t4, $t2, 3
	alsl.d	$t3, $t4, $t3, 3
	lu52i.d	$t4, $zero, -2048
	ori	$t5, $zero, 1584
	b	.LBB12_356
	.p2align	4, , 16
.LBB12_355:                             #   in Loop: Header=BB12_356 Depth=1
	stx.d	$t8, $s3, $t6
	addi.d	$a7, $a7, 8
	addi.d	$t0, $t0, 8
	addi.d	$t1, $t1, 1
	addi.d	$t2, $t2, 8
	addi.d	$t3, $t3, 8
	bge	$t1, $a6, .LBB12_372
.LBB12_356:                             # =>This Inner Loop Header: Depth=1
	ld.d	$t8, $t2, 0
	ldx.b	$fp, $t8, $a0
	slli.d	$t6, $s8, 3
	slli.d	$t7, $s8, 8
	move	$s0, $t4
	bltz	$fp, .LBB12_358
# %bb.357:                              #   in Loop: Header=BB12_356 Depth=1
	ld.w	$s0, $s4, 12
	or	$s1, $t7, $t6
	mul.d	$s0, $s0, $t5
	add.d	$s0, $a1, $s0
	add.d	$s0, $s0, $s1
	slli.d	$fp, $fp, 3
	ldx.d	$s0, $s0, $fp
.LBB12_358:                             #   in Loop: Header=BB12_356 Depth=1
	ld.d	$s2, $t0, 0
	ld.d	$s1, $t3, 0
	slli.d	$s4, $a0, 3
	stx.d	$s0, $s2, $s4
	ldx.b	$s3, $s1, $a0
	slli.d	$fp, $a2, 3
	slli.d	$s0, $a2, 8
	move	$s5, $t4
	bltz	$s3, .LBB12_360
# %bb.359:                              #   in Loop: Header=BB12_356 Depth=1
	ld.d	$s5, $sp, 392                   # 8-byte Folded Reload
	ld.w	$s5, $s5, 12
	or	$s6, $s0, $fp
	mul.d	$s5, $s5, $t5
	add.d	$s5, $a1, $s5
	add.d	$s5, $s5, $s6
	slli.d	$s3, $s3, 3
	ldx.d	$s5, $s5, $s3
.LBB12_360:                             #   in Loop: Header=BB12_356 Depth=1
	ld.d	$s3, $a7, 0
	stx.d	$s5, $s3, $s4
	ldx.b	$s4, $t8, $a3
	move	$s5, $t4
	bltz	$s4, .LBB12_362
# %bb.361:                              #   in Loop: Header=BB12_356 Depth=1
	ld.d	$s5, $sp, 392                   # 8-byte Folded Reload
	ld.w	$s5, $s5, 12
	or	$s6, $t7, $t6
	mul.d	$s5, $s5, $t5
	add.d	$s5, $a1, $s5
	add.d	$s5, $s5, $s6
	slli.d	$s4, $s4, 3
	ldx.d	$s5, $s5, $s4
.LBB12_362:                             #   in Loop: Header=BB12_356 Depth=1
	slli.d	$s4, $a3, 3
	stx.d	$s5, $s2, $s4
	ldx.b	$s5, $s1, $a3
	move	$s6, $t4
	bltz	$s5, .LBB12_364
# %bb.363:                              #   in Loop: Header=BB12_356 Depth=1
	ld.d	$s6, $sp, 392                   # 8-byte Folded Reload
	ld.w	$s6, $s6, 12
	or	$s7, $s0, $fp
	mul.d	$s6, $s6, $t5
	add.d	$s6, $a1, $s6
	add.d	$s6, $s6, $s7
	slli.d	$s5, $s5, 3
	ldx.d	$s6, $s6, $s5
.LBB12_364:                             #   in Loop: Header=BB12_356 Depth=1
	stx.d	$s6, $s3, $s4
	ldx.b	$s4, $t8, $a4
	move	$s5, $t4
	bltz	$s4, .LBB12_366
# %bb.365:                              #   in Loop: Header=BB12_356 Depth=1
	ld.d	$s5, $sp, 392                   # 8-byte Folded Reload
	ld.w	$s5, $s5, 12
	or	$s6, $t7, $t6
	mul.d	$s5, $s5, $t5
	add.d	$s5, $a1, $s5
	add.d	$s5, $s5, $s6
	slli.d	$s4, $s4, 3
	ldx.d	$s5, $s5, $s4
.LBB12_366:                             #   in Loop: Header=BB12_356 Depth=1
	slli.d	$s4, $a4, 3
	stx.d	$s5, $s2, $s4
	ldx.b	$s5, $s1, $a4
	move	$s6, $t4
	bltz	$s5, .LBB12_368
# %bb.367:                              #   in Loop: Header=BB12_356 Depth=1
	ld.d	$s6, $sp, 392                   # 8-byte Folded Reload
	ld.w	$s6, $s6, 12
	or	$s7, $s0, $fp
	mul.d	$s6, $s6, $t5
	add.d	$s6, $a1, $s6
	add.d	$s6, $s6, $s7
	slli.d	$s5, $s5, 3
	ldx.d	$s6, $s6, $s5
.LBB12_368:                             #   in Loop: Header=BB12_356 Depth=1
	stx.d	$s6, $s3, $s4
	ldx.b	$t8, $t8, $a5
	move	$s4, $t4
	bltz	$t8, .LBB12_370
# %bb.369:                              #   in Loop: Header=BB12_356 Depth=1
	ld.d	$s4, $sp, 392                   # 8-byte Folded Reload
	ld.w	$s4, $s4, 12
	or	$t6, $t7, $t6
	mul.d	$t7, $s4, $t5
	add.d	$t7, $a1, $t7
	add.d	$t6, $t7, $t6
	slli.d	$t7, $t8, 3
	ldx.d	$s4, $t6, $t7
.LBB12_370:                             #   in Loop: Header=BB12_356 Depth=1
	slli.d	$t6, $a5, 3
	stx.d	$s4, $s2, $t6
	ldx.b	$t7, $s1, $a5
	move	$t8, $t4
	ld.d	$s4, $sp, 392                   # 8-byte Folded Reload
	bltz	$t7, .LBB12_355
# %bb.371:                              #   in Loop: Header=BB12_356 Depth=1
	ld.w	$t8, $s4, 12
	or	$fp, $s0, $fp
	mul.d	$t8, $t8, $t5
	add.d	$t8, $a1, $t8
	add.d	$t8, $t8, $fp
	slli.d	$t7, $t7, 3
	ldx.d	$t8, $t8, $t7
	b	.LBB12_355
.LBB12_372:
	ld.d	$s8, $sp, 536                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 544                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 552                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 560                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 568                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 576                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 584                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 592                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 600                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 608                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 616                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 624
	ret
.Lfunc_end12:
	.size	readMotionInfoFromNAL, .Lfunc_end12-readMotionInfoFromNAL
                                        # -- End function
	.p2align	5                               # -- Begin function SetMotionVectorPredictor
	.type	SetMotionVectorPredictor,@function
SetMotionVectorPredictor:               # @SetMotionVectorPredictor
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
	move	$s5, $a7
	move	$s3, $a6
	st.d	$a5, $sp, 16                    # 8-byte Folded Spill
	move	$s0, $a4
	st.d	$a3, $sp, 8                     # 8-byte Folded Spill
	move	$s2, $a2
	st.d	$a1, $sp, 24                    # 8-byte Folded Spill
	ld.d	$s4, $sp, 224
	slli.w	$s7, $a6, 2
	move	$s6, $a0
	ld.w	$s8, $a0, 4
	slli.w	$a2, $a7, 2
	addi.d	$s1, $zero, -1
	alsl.w	$fp, $a6, $s1, 2
	addi.d	$a3, $sp, 112
	move	$a0, $s8
	move	$a1, $fp
	pcaddu18i	$ra, %call36(getLuma4x4Neighbour)
	jirl	$ra, $ra, 0
	alsl.w	$s1, $s5, $s1, 2
	addi.d	$a3, $sp, 88
	move	$a0, $s8
	move	$a1, $s7
	move	$a2, $s1
	pcaddu18i	$ra, %call36(getLuma4x4Neighbour)
	jirl	$ra, $ra, 0
	st.d	$s4, $sp, 32                    # 8-byte Folded Spill
	alsl.w	$s7, $s3, $s4, 2
	addi.d	$a3, $sp, 64
	move	$a0, $s8
	move	$a1, $s7
	move	$a2, $s1
	pcaddu18i	$ra, %call36(getLuma4x4Neighbour)
	jirl	$ra, $ra, 0
	addi.d	$a3, $sp, 40
	move	$a0, $s8
	move	$a1, $fp
	move	$a2, $s1
	pcaddu18i	$ra, %call36(getLuma4x4Neighbour)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	blt	$s5, $a0, .LBB13_6
# %bb.1:
	blt	$a0, $s3, .LBB13_4
# %bb.2:
	ori	$a0, $zero, 2
	bne	$s5, $a0, .LBB13_5
# %bb.3:
	ori	$a0, $zero, 16
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	bne	$a1, $a0, .LBB13_6
	b	.LBB13_15
.LBB13_4:
	ori	$a0, $zero, 16
	bne	$s7, $a0, .LBB13_6
	b	.LBB13_15
.LBB13_5:
	ori	$a0, $zero, 8
	beq	$s7, $a0, .LBB13_15
.LBB13_6:
	ld.w	$a0, $sp, 64
	beqz	$a0, .LBB13_15
# %bb.7:
	ldptr.w	$a1, $s6, 5624
	move	$t3, $s0
	beqz	$a1, .LBB13_16
.LBB13_8:
	ld.wu	$a0, $s6, 4
	ldptr.d	$a3, $s6, 5600
	ori	$a2, $zero, 408
	mul.d	$a0, $a0, $a2
	add.d	$a0, $a3, $a0
	ld.w	$a2, $a0, 356
	ld.w	$a0, $sp, 112
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	beqz	$a2, .LBB13_23
# %bb.9:
	slli.d	$a6, $s0, 3
	addi.d	$a4, $zero, -1
	beqz	$a0, .LBB13_11
# %bb.10:
	ld.w	$a2, $sp, 132
	ldx.d	$a4, $t3, $a6
	ld.w	$a5, $sp, 116
	ori	$a7, $zero, 408
	slli.d	$a2, $a2, 3
	ldx.d	$a2, $a4, $a2
	ld.w	$a4, $sp, 128
	mul.d	$a5, $a5, $a7
	add.d	$a5, $a3, $a5
	ld.w	$a5, $a5, 356
	ldx.b	$a2, $a2, $a4
	sltui	$a4, $a5, 1
	sll.w	$a4, $a2, $a4
.LBB13_11:
	ld.w	$a2, $sp, 88
	addi.d	$a5, $zero, -1
	addi.d	$t2, $zero, -1
	beqz	$a2, .LBB13_13
# %bb.12:
	ld.w	$a5, $sp, 108
	ldx.d	$a7, $t3, $a6
	ld.w	$t0, $sp, 92
	ori	$t1, $zero, 408
	slli.d	$a5, $a5, 3
	ldx.d	$a5, $a7, $a5
	ld.w	$a7, $sp, 104
	mul.d	$t0, $t0, $t1
	add.d	$t0, $a3, $t0
	ld.w	$t0, $t0, 356
	ldx.b	$a5, $a5, $a7
	sltui	$a7, $t0, 1
	sll.w	$a5, $a5, $a7
.LBB13_13:
	ld.w	$a7, $sp, 64
	beqz	$a7, .LBB13_33
# %bb.14:
	ld.w	$a7, $sp, 84
	ldx.d	$a6, $t3, $a6
	ld.w	$t0, $sp, 68
	ori	$t1, $zero, 408
	slli.d	$a7, $a7, 3
	ldx.d	$a6, $a6, $a7
	ld.w	$a7, $sp, 80
	mul.d	$t0, $t0, $t1
	add.d	$a3, $a3, $t0
	ld.w	$t0, $a3, 356
	ldx.b	$a6, $a6, $a7
	move	$a3, $zero
	sltui	$a7, $t0, 1
	sll.w	$t2, $a6, $a7
	b	.LBB13_32
.LBB13_15:                              # %.thread
	ld.d	$a0, $sp, 56
	vld	$vr0, $sp, 40
	st.d	$a0, $sp, 80
	vst	$vr0, $sp, 64
	ldptr.w	$a1, $s6, 5624
	move	$t3, $s0
	bnez	$a1, .LBB13_8
.LBB13_16:
	ld.w	$a0, $sp, 112
	addi.d	$t2, $zero, -1
	addi.d	$a4, $zero, -1
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	beqz	$a0, .LBB13_18
# %bb.17:
	slli.d	$a2, $s0, 3
	ld.w	$a3, $sp, 132
	ldx.d	$a2, $t3, $a2
	slli.d	$a3, $a3, 3
	ldx.d	$a2, $a2, $a3
	ld.w	$a3, $sp, 128
	ldx.b	$a4, $a2, $a3
.LBB13_18:
	ld.w	$a2, $sp, 88
	addi.d	$a5, $zero, -1
	beqz	$a2, .LBB13_20
# %bb.19:
	slli.d	$a3, $s0, 3
	ld.w	$a5, $sp, 108
	ldx.d	$a3, $t3, $a3
	slli.d	$a5, $a5, 3
	ldx.d	$a3, $a3, $a5
	ld.w	$a5, $sp, 104
	ldx.b	$a5, $a3, $a5
.LBB13_20:
	ld.w	$a3, $sp, 64
	beqz	$a3, .LBB13_33
# %bb.21:
	slli.d	$a3, $s0, 3
	ld.w	$a6, $sp, 84
	ldx.d	$a3, $t3, $a3
	slli.d	$a6, $a6, 3
	ldx.d	$a3, $a3, $a6
	ld.w	$a6, $sp, 80
	ldx.b	$t2, $a3, $a6
.LBB13_22:
	move	$a3, $zero
	b	.LBB13_32
.LBB13_23:
	addi.d	$t2, $zero, -1
	addi.d	$a4, $zero, -1
	beqz	$a0, .LBB13_26
# %bb.24:
	slli.d	$a2, $s0, 3
	ld.w	$a4, $sp, 132
	ldx.d	$a2, $t3, $a2
	ld.w	$a5, $sp, 116
	ori	$a6, $zero, 408
	slli.d	$a4, $a4, 3
	ldx.d	$a2, $a2, $a4
	ld.w	$a4, $sp, 128
	mul.d	$a5, $a5, $a6
	add.d	$a5, $a3, $a5
	ld.w	$a5, $a5, 356
	ldx.bu	$a2, $a2, $a4
	ext.w.b	$a4, $a2
	beqz	$a5, .LBB13_26
# %bb.25:
	srai.d	$a4, $a4, 1
.LBB13_26:
	ld.w	$a2, $sp, 88
	addi.d	$a5, $zero, -1
	beqz	$a2, .LBB13_29
# %bb.27:
	slli.d	$a5, $s0, 3
	ld.w	$a6, $sp, 108
	ldx.d	$a5, $t3, $a5
	ld.w	$a7, $sp, 92
	ori	$t0, $zero, 408
	slli.d	$a6, $a6, 3
	ldx.d	$a5, $a5, $a6
	ld.w	$a6, $sp, 104
	mul.d	$a7, $a7, $t0
	add.d	$a7, $a3, $a7
	ld.w	$a7, $a7, 356
	ldx.bu	$a5, $a5, $a6
	ext.w.b	$a5, $a5
	beqz	$a7, .LBB13_29
# %bb.28:
	srai.d	$a5, $a5, 1
.LBB13_29:
	ld.w	$a6, $sp, 64
	beqz	$a6, .LBB13_33
# %bb.30:
	slli.d	$a6, $s0, 3
	ld.w	$a7, $sp, 84
	ldx.d	$a6, $t3, $a6
	ld.w	$t0, $sp, 68
	ori	$t1, $zero, 408
	slli.d	$a7, $a7, 3
	ldx.d	$a6, $a6, $a7
	ld.w	$a7, $sp, 80
	mul.d	$t0, $t0, $t1
	add.d	$a3, $a3, $t0
	ld.w	$a3, $a3, 356
	ldx.bu	$a6, $a6, $a7
	ext.w.b	$t2, $a6
	beqz	$a3, .LBB13_22
# %bb.31:
	move	$a3, $zero
	srai.d	$t2, $t2, 1
.LBB13_32:
	ori	$t1, $zero, 1
	addi.w	$a6, $a4, 0
	addi.w	$a7, $t2, 0
	addi.w	$a5, $a5, 0
	beq	$a6, $s2, .LBB13_34
	b	.LBB13_36
.LBB13_33:
	move	$t1, $zero
	ori	$a3, $zero, 1
	addi.w	$a6, $a4, 0
	addi.w	$a7, $t2, 0
	addi.w	$a5, $a5, 0
	bne	$a6, $s2, .LBB13_36
.LBB13_34:
	beq	$a5, $s2, .LBB13_36
# %bb.35:
	ori	$a4, $zero, 1
	bne	$a7, $s2, .LBB13_39
.LBB13_36:
	xor	$a4, $a7, $s2
	sltui	$t0, $a4, 1
	xor	$a4, $a5, $s2
	sltu	$t2, $zero, $a4
	xor	$a4, $a6, $s2
	sltui	$a4, $a4, 1
	or	$a4, $a4, $t0
	or	$t3, $a4, $t2
	ori	$a4, $zero, 2
	masknez	$a4, $a4, $t3
	beq	$a6, $s2, .LBB13_39
# %bb.37:
	beqz	$t3, .LBB13_39
# %bb.38:
	ori	$a4, $zero, 3
	maskeqz	$a4, $a4, $t0
	maskeqz	$a4, $a4, $t2
.LBB13_39:
	ld.d	$t0, $sp, 232
	ori	$t2, $zero, 8
	ld.d	$t3, $sp, 32                    # 8-byte Folded Reload
	bne	$t3, $t2, .LBB13_43
# %bb.40:
	ori	$t2, $zero, 16
	bne	$t0, $t2, .LBB13_43
# %bb.41:
	beqz	$s3, .LBB13_46
# %bb.42:
	xor	$a5, $a7, $s2
	sltui	$a5, $a5, 1
	masknez	$a4, $a4, $a5
	ori	$a6, $zero, 3
	b	.LBB13_48
.LBB13_43:
	ori	$a7, $zero, 16
	bne	$t3, $a7, .LBB13_49
# %bb.44:
	ori	$a7, $zero, 8
	bne	$t0, $a7, .LBB13_49
# %bb.45:
	beqz	$s5, .LBB13_47
.LBB13_46:
	xor	$a5, $a6, $s2
	sltui	$a5, $a5, 1
	masknez	$a4, $a4, $a5
	ori	$a6, $zero, 1
	b	.LBB13_48
.LBB13_47:
	xor	$a5, $a5, $s2
	sltui	$a5, $a5, 1
	masknez	$a4, $a4, $a5
	ori	$a6, $zero, 2
.LBB13_48:
	maskeqz	$a5, $a6, $a5
	or	$a4, $a5, $a4
.LBB13_49:
	ld.w	$t6, $sp, 132
	ld.w	$t5, $sp, 128
	ld.d	$a5, $sp, 16                    # 8-byte Folded Reload
	alsl.d	$a6, $s0, $a5, 3
	beqz	$a0, .LBB13_53
# %bb.50:
	ld.d	$a5, $a6, 0
	slli.d	$a7, $t6, 3
	ldx.d	$a5, $a5, $a7
	slli.d	$a7, $t5, 3
	ldx.d	$a5, $a5, $a7
	ld.h	$t4, $a5, 0
	ld.w	$t3, $sp, 108
	ld.w	$t2, $sp, 104
	beqz	$a2, .LBB13_54
.LBB13_51:
	ld.d	$a5, $a6, 0
	slli.d	$a7, $t3, 3
	ldx.d	$a5, $a5, $a7
	slli.d	$a7, $t2, 3
	ldx.d	$a5, $a5, $a7
	ld.h	$t7, $a5, 0
	ld.w	$t0, $sp, 84
	ld.w	$a7, $sp, 80
	sltu	$fp, $zero, $a2
	beqz	$a3, .LBB13_55
.LBB13_52:
	move	$t8, $zero
	b	.LBB13_56
.LBB13_53:
	move	$t4, $zero
	ld.w	$t3, $sp, 108
	ld.w	$t2, $sp, 104
	bnez	$a2, .LBB13_51
.LBB13_54:
	move	$t7, $zero
	ld.w	$t0, $sp, 84
	ld.w	$a7, $sp, 80
	sltu	$fp, $zero, $a2
	bnez	$a3, .LBB13_52
.LBB13_55:
	ld.d	$a5, $a6, 0
	slli.d	$t8, $t0, 3
	ldx.d	$a5, $a5, $t8
	slli.d	$t8, $a7, 3
	ldx.d	$a5, $a5, $t8
	ld.h	$t8, $a5, 0
.LBB13_56:
	slli.d	$a5, $a4, 2
	pcalau12i	$a4, %pc_hi20(.LJTI13_0)
	addi.d	$a4, $a4, %pc_lo12(.LJTI13_0)
	ldx.w	$s1, $a4, $a5
	add.d	$s1, $a4, $s1
	or	$a4, $fp, $t1
	jr	$s1
.LBB13_57:
	beqz	$a4, .LBB13_61
# %bb.58:
	slt	$t1, $t7, $t8
	masknez	$fp, $t8, $t1
	maskeqz	$t1, $t7, $t1
	or	$t1, $t1, $fp
	slt	$fp, $t4, $t1
	masknez	$t1, $t1, $fp
	maskeqz	$fp, $t4, $fp
	or	$t1, $fp, $t1
	slt	$fp, $t8, $t7
	masknez	$s1, $t8, $fp
	maskeqz	$fp, $t7, $fp
	or	$fp, $fp, $s1
	slt	$s1, $fp, $t4
	masknez	$fp, $fp, $s1
	maskeqz	$s1, $t4, $s1
	or	$fp, $s1, $fp
	add.d	$t4, $t7, $t4
	add.d	$t4, $t4, $t8
	add.d	$t1, $fp, $t1
	sub.d	$t4, $t4, $t1
	b	.LBB13_61
.LBB13_59:
	move	$t4, $t7
	b	.LBB13_61
.LBB13_60:
	move	$t4, $t8
.LBB13_61:
	ld.w	$t8, $sp, 116
	ld.w	$t7, $sp, 92
	ld.w	$t1, $sp, 68
	ld.d	$s1, $sp, 24                    # 8-byte Folded Reload
	st.h	$t4, $s1, 0
	beqz	$a1, .LBB13_68
# %bb.62:
	ld.wu	$a1, $s6, 4
	ldptr.d	$t4, $s6, 5600
	ori	$fp, $zero, 408
	mul.d	$a1, $a1, $fp
	add.d	$a1, $t4, $a1
	ld.w	$a1, $a1, 356
	beqz	$a1, .LBB13_71
# %bb.63:
	beqz	$a0, .LBB13_74
# %bb.64:
	ld.d	$a0, $a6, 0
	slli.d	$a1, $t6, 3
	ldx.d	$a0, $a0, $a1
	ori	$a1, $zero, 408
	slli.d	$t5, $t5, 3
	ldx.d	$a0, $a0, $t5
	mul.d	$a1, $t8, $a1
	add.d	$a1, $t4, $a1
	ld.w	$a1, $a1, 356
	ld.hu	$a0, $a0, 2
	beqz	$a1, .LBB13_79
# %bb.65:
	ext.w.h	$a0, $a0
	beqz	$a2, .LBB13_75
.LBB13_66:
	ld.d	$a1, $a6, 0
	slli.d	$a2, $t3, 3
	ldx.d	$a1, $a1, $a2
	ori	$a2, $zero, 408
	slli.d	$t2, $t2, 3
	ldx.d	$a1, $a1, $t2
	mul.d	$a2, $t7, $a2
	add.d	$a2, $t4, $a2
	ld.w	$a2, $a2, 356
	ld.hu	$a1, $a1, 2
	beqz	$a2, .LBB13_80
# %bb.67:
	ext.w.h	$a1, $a1
	bnez	$a3, .LBB13_85
	b	.LBB13_81
.LBB13_68:
	beqz	$a0, .LBB13_76
# %bb.69:
	ld.d	$a0, $a6, 0
	slli.d	$a1, $t6, 3
	ldx.d	$a0, $a0, $a1
	slli.d	$a1, $t5, 3
	ldx.d	$a0, $a0, $a1
	ld.h	$a0, $a0, 2
	beqz	$a2, .LBB13_77
.LBB13_70:
	ld.d	$a1, $a6, 0
	slli.d	$a2, $t3, 3
	ldx.d	$a1, $a1, $a2
	slli.d	$a2, $t2, 3
	ldx.d	$a1, $a1, $a2
	ld.h	$a1, $a1, 2
	beqz	$a3, .LBB13_78
	b	.LBB13_85
.LBB13_71:
	beqz	$a0, .LBB13_83
# %bb.72:
	ld.d	$a0, $a6, 0
	slli.d	$a1, $t6, 3
	ldx.d	$a0, $a0, $a1
	ori	$a1, $zero, 408
	slli.d	$t5, $t5, 3
	ldx.d	$a0, $a0, $t5
	mul.d	$a1, $t8, $a1
	add.d	$a1, $t4, $a1
	ld.w	$a1, $a1, 356
	ld.h	$a0, $a0, 2
	sltu	$a1, $zero, $a1
	sll.w	$a0, $a0, $a1
	beqz	$a2, .LBB13_84
.LBB13_73:
	ld.d	$a1, $a6, 0
	slli.d	$a2, $t3, 3
	ldx.d	$a1, $a1, $a2
	ori	$a2, $zero, 408
	slli.d	$t2, $t2, 3
	ldx.d	$a1, $a1, $t2
	mul.d	$a2, $t7, $a2
	add.d	$a2, $t4, $a2
	ld.w	$a2, $a2, 356
	ld.h	$a1, $a1, 2
	sltu	$a2, $zero, $a2
	sll.w	$a1, $a1, $a2
	bnez	$a3, .LBB13_85
	b	.LBB13_89
.LBB13_74:
	move	$a0, $zero
	bnez	$a2, .LBB13_66
.LBB13_75:
	move	$a1, $zero
	beqz	$a3, .LBB13_81
	b	.LBB13_85
.LBB13_76:
	move	$a0, $zero
	bnez	$a2, .LBB13_70
.LBB13_77:
	move	$a1, $zero
	bnez	$a3, .LBB13_85
.LBB13_78:
	ld.d	$a2, $a6, 0
	slli.d	$a3, $t0, 3
	ldx.d	$a2, $a2, $a3
	slli.d	$a3, $a7, 3
	ldx.d	$a2, $a2, $a3
	ld.h	$a2, $a2, 2
	b	.LBB13_86
.LBB13_79:
	srli.d	$a1, $a0, 15
	add.d	$a0, $a0, $a1
	ext.w.h	$a0, $a0
	srai.d	$a0, $a0, 1
	bnez	$a2, .LBB13_66
	b	.LBB13_75
.LBB13_80:
	srli.d	$a2, $a1, 15
	add.d	$a1, $a1, $a2
	ext.w.h	$a1, $a1
	srai.d	$a1, $a1, 1
	bnez	$a3, .LBB13_85
.LBB13_81:
	ld.d	$a2, $a6, 0
	slli.d	$a3, $t0, 3
	ldx.d	$a2, $a2, $a3
	ori	$a3, $zero, 408
	slli.d	$a6, $a7, 3
	ldx.d	$a2, $a2, $a6
	mul.d	$a3, $t1, $a3
	add.d	$a3, $t4, $a3
	ld.w	$a3, $a3, 356
	ld.hu	$a2, $a2, 2
	beqz	$a3, .LBB13_90
# %bb.82:
	pcalau12i	$a3, %pc_hi20(.LJTI13_1)
	addi.d	$a3, $a3, %pc_lo12(.LJTI13_1)
	ldx.w	$a5, $a3, $a5
	add.d	$a3, $a3, $a5
	ext.w.h	$a2, $a2
	jr	$a3
.LBB13_83:
	move	$a0, $zero
	bnez	$a2, .LBB13_73
.LBB13_84:
	move	$a1, $zero
	beqz	$a3, .LBB13_89
.LBB13_85:
	move	$a2, $zero
.LBB13_86:
	pcalau12i	$a3, %pc_hi20(.LJTI13_1)
	addi.d	$a3, $a3, %pc_lo12(.LJTI13_1)
	ldx.w	$a5, $a3, $a5
	add.d	$a3, $a3, $a5
	jr	$a3
.LBB13_87:
	beqz	$a4, .LBB13_93
# %bb.88:
	addi.w	$a3, $a2, 0
	addi.w	$a4, $a1, 0
	slt	$a5, $a4, $a3
	masknez	$a6, $a3, $a5
	maskeqz	$a5, $a4, $a5
	or	$a5, $a5, $a6
	addi.w	$a6, $a0, 0
	slt	$a7, $a6, $a5
	masknez	$a5, $a5, $a7
	maskeqz	$a7, $a6, $a7
	or	$a5, $a7, $a5
	slt	$a7, $a3, $a4
	masknez	$a3, $a3, $a7
	maskeqz	$a4, $a4, $a7
	or	$a3, $a4, $a3
	slt	$a4, $a3, $a6
	masknez	$a3, $a3, $a4
	maskeqz	$a4, $a6, $a4
	or	$a3, $a4, $a3
	add.d	$a0, $a1, $a0
	add.d	$a0, $a0, $a2
	add.d	$a1, $a3, $a5
	sub.d	$a0, $a0, $a1
	b	.LBB13_93
.LBB13_89:
	ld.d	$a2, $a6, 0
	ori	$a3, $zero, 408
	mul.d	$a3, $t1, $a3
	slli.d	$a6, $t0, 3
	ldx.d	$a2, $a2, $a6
	add.d	$a3, $t4, $a3
	ld.w	$a3, $a3, 356
	slli.d	$a6, $a7, 3
	ldx.d	$a2, $a2, $a6
	pcalau12i	$a6, %pc_hi20(.LJTI13_1)
	addi.d	$a6, $a6, %pc_lo12(.LJTI13_1)
	ldx.w	$a5, $a6, $a5
	ld.h	$a2, $a2, 2
	sltu	$a3, $zero, $a3
	add.d	$a5, $a6, $a5
	sll.w	$a2, $a2, $a3
	jr	$a5
.LBB13_90:
	pcalau12i	$a3, %pc_hi20(.LJTI13_1)
	addi.d	$a3, $a3, %pc_lo12(.LJTI13_1)
	ldx.w	$a5, $a3, $a5
	srli.d	$a6, $a2, 15
	add.d	$a2, $a2, $a6
	ext.w.h	$a2, $a2
	add.d	$a3, $a3, $a5
	srai.d	$a2, $a2, 1
	jr	$a3
.LBB13_91:
	move	$a0, $a1
	b	.LBB13_93
.LBB13_92:
	move	$a0, $a2
.LBB13_93:
	st.h	$a0, $s1, 2
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
.Lfunc_end13:
	.size	SetMotionVectorPredictor, .Lfunc_end13-SetMotionVectorPredictor
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI13_0:
	.word	.LBB13_57-.LJTI13_0
	.word	.LBB13_61-.LJTI13_0
	.word	.LBB13_59-.LJTI13_0
	.word	.LBB13_60-.LJTI13_0
.LJTI13_1:
	.word	.LBB13_87-.LJTI13_1
	.word	.LBB13_93-.LJTI13_1
	.word	.LBB13_91-.LJTI13_1
	.word	.LBB13_92-.LJTI13_1
                                        # -- End function
	.text
	.globl	read_ipred_modes                # -- Begin function read_ipred_modes
	.p2align	5
	.type	read_ipred_modes,@function
read_ipred_modes:                       # @read_ipred_modes
# %bb.0:                                # %switch.lookup
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
	move	$fp, $a0
	ld.wu	$a0, $a0, 4
	ldptr.d	$a1, $fp, 5600
	ori	$a2, $zero, 408
	mul.d	$a0, $a0, $a2
	add.d	$a0, $a1, $a0
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	ld.w	$a0, $a0, 40
	addi.w	$a1, $a0, -9
	ori	$a2, $zero, 5
	ldptr.d	$a6, $fp, 5592
	sltu	$a2, $a2, $a1
	ori	$a3, $zero, 51
	srl.d	$a1, $a3, $a1
	ld.w	$a3, $a6, 28
	pcalau12i	$a4, %got_pc_hi20(assignSE2partition)
	ld.d	$a4, $a4, %got_pc_lo12(assignSE2partition)
	orn	$a1, $a2, $a1
	slli.d	$a2, $a3, 6
	alsl.d	$a2, $a3, $a2, 4
	add.d	$a2, $a4, $a2
	ld.w	$a3, $a2, 16
	ori	$a4, $zero, 56
	pcalau12i	$s7, %pc_hi20(active_pps)
	ld.d	$a5, $s7, %pc_lo12(active_pps)
	mul.d	$a4, $a3, $a4
	st.d	$a6, $sp, 16                    # 8-byte Folded Spill
	ld.d	$a6, $a6, 40
	addi.d	$a0, $a0, -12
	ld.w	$a5, $a5, 12
	sltu	$a3, $zero, $a0
	add.d	$s0, $a6, $a4
	ori	$a0, $zero, 4
	st.w	$a0, $sp, 168
	beqz	$a5, .LBB14_3
# %bb.1:
	ld.d	$a0, $s0, 0
	ld.w	$a0, $a0, 24
	bnez	$a0, .LBB14_3
# %bb.2:
	pcalau12i	$a0, %got_pc_hi20(readIntraPredMode_CABAC)
	ld.d	$a0, $a0, %got_pc_lo12(readIntraPredMode_CABAC)
	st.d	$a0, $sp, 208
.LBB14_3:
	move	$a0, $zero
	and	$a1, $a1, $a3
	addi.d	$a2, $a2, 16
	st.d	$a2, $sp, 8                     # 8-byte Folded Spill
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	addi.d	$a5, $a2, 328
	ori	$a6, $zero, 13
	addi.w	$s6, $zero, -1
	ori	$a7, $zero, 11
	st.d	$a5, $sp, 24                    # 8-byte Folded Spill
	b	.LBB14_5
	.p2align	4, , 16
.LBB14_4:                               # %.loopexit.thread
                                        #   in Loop: Header=BB14_5 Depth=1
	move	$a1, $zero
	ld.d	$a3, $sp, 32                    # 8-byte Folded Reload
	addi.d	$a0, $a3, 1
	ld.d	$a5, $sp, 24                    # 8-byte Folded Reload
	ori	$a6, $zero, 13
	ori	$a2, $zero, 3
	ori	$a7, $zero, 11
	beq	$a3, $a2, .LBB14_40
.LBB14_5:                               # %.outer
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB14_6 Depth 2
                                        #     Child Loop BB14_11 Depth 2
                                        #       Child Loop BB14_12 Depth 3
                                        #         Child Loop BB14_35 Depth 4
	slli.d	$a2, $a0, 2
	sub.d	$a2, $zero, $a2
	slli.d	$a3, $a0, 1
	move	$t0, $a0
	.p2align	4, , 16
.LBB14_6:                               #   Parent Loop BB14_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.bu	$a4, $a5, $t0
	beq	$a4, $a6, .LBB14_9
# %bb.7:                                #   in Loop: Header=BB14_6 Depth=2
	beq	$a4, $a7, .LBB14_9
# %bb.8:                                # %.loopexit
                                        #   in Loop: Header=BB14_6 Depth=2
	addi.d	$t0, $t0, 1
	addi.d	$a2, $a2, -4
	addi.d	$a3, $a3, 2
	addi.d	$a0, $a0, 1
	ori	$a4, $zero, 4
	bne	$t0, $a4, .LBB14_6
	b	.LBB14_39
	.p2align	4, , 16
.LBB14_9:                               #   in Loop: Header=BB14_5 Depth=1
	st.d	$t0, $sp, 32                    # 8-byte Folded Spill
	move	$a1, $zero
	addi.d	$a4, $a4, -13
	sltu	$a5, $zero, $a4
	st.d	$a5, $sp, 112                   # 8-byte Folded Spill
	sltui	$a4, $a4, 1
	andi	$a0, $a0, 2
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	andi	$a0, $a3, 2
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	addi.d	$s1, $a4, 1
	sub.d	$a0, $zero, $a2
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	b	.LBB14_11
	.p2align	4, , 16
.LBB14_10:                              #   in Loop: Header=BB14_11 Depth=2
	ori	$a1, $zero, 1
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	bgeu	$a2, $a0, .LBB14_4
.LBB14_11:                              #   Parent Loop BB14_5 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB14_12 Depth 3
                                        #         Child Loop BB14_35 Depth 4
	move	$a0, $zero
	move	$a4, $a1
	ld.d	$a3, $sp, 40                    # 8-byte Folded Reload
	or	$a1, $a1, $a3
	ld.w	$a2, $fp, 76
	slli.d	$a5, $a4, 1
	st.d	$a5, $sp, 64                    # 8-byte Folded Spill
	slli.w	$a5, $a1, 2
	st.d	$a5, $sp, 104                   # 8-byte Folded Spill
	alsl.w	$a1, $a1, $s6, 2
	st.d	$a1, $sp, 96                    # 8-byte Folded Spill
	st.d	$a4, $sp, 48                    # 8-byte Folded Spill
	add.d	$a1, $a3, $a4
	add.w	$a1, $a1, $a2
	slli.d	$a1, $a1, 3
	st.d	$a1, $sp, 88                    # 8-byte Folded Spill
	.p2align	4, , 16
.LBB14_12:                              #   Parent Loop BB14_5 Depth=1
                                        #     Parent Loop BB14_11 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB14_35 Depth 4
	ld.d	$a1, $s7, %pc_lo12(active_pps)
	ld.w	$a1, $a1, 12
	ld.w	$s2, $fp, 92
	move	$s8, $a0
	beqz	$a1, .LBB14_14
# %bb.13:                               #   in Loop: Header=BB14_12 Depth=3
	ld.d	$a0, $s0, 0
	ld.w	$a0, $a0, 24
	beqz	$a0, .LBB14_15
.LBB14_14:                              #   in Loop: Header=BB14_12 Depth=3
	addi.d	$a0, $sp, 168
	move	$a1, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(readSyntaxElement_Intra4x4PredictionMode)
	jirl	$ra, $ra, 0
	b	.LBB14_16
	.p2align	4, , 16
.LBB14_15:                              #   in Loop: Header=BB14_12 Depth=3
	ld.d	$a3, $s0, 48
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	add.d	$a0, $a0, $s8
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	add.d	$a0, $a1, $a0
	st.w	$a0, $sp, 192
	addi.d	$a0, $sp, 168
	move	$a1, $fp
	move	$a2, $s0
	jirl	$ra, $a3, 0
.LBB14_16:                              #   in Loop: Header=BB14_12 Depth=3
	ld.w	$a0, $fp, 4
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	or	$s3, $s8, $a1
	slli.w	$s4, $s3, 2
	alsl.w	$a1, $s3, $s6, 2
	addi.d	$a3, $sp, 144
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(getLuma4x4Neighbour)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 4
	addi.d	$a3, $sp, 120
	move	$a1, $s4
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(getLuma4x4Neighbour)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s7, %pc_lo12(active_pps)
	ld.w	$a0, $a0, 1148
	beqz	$a0, .LBB14_23
# %bb.17:                               #   in Loop: Header=BB14_12 Depth=3
	ld.w	$a0, $sp, 144
	beqz	$a0, .LBB14_20
# %bb.18:                               #   in Loop: Header=BB14_12 Depth=3
	ld.w	$a0, $sp, 148
	ld.d	$a1, $fp, 16
	slli.d	$a0, $a0, 2
	ldx.w	$a0, $a1, $a0
	ld.w	$a1, $sp, 120
	st.w	$a0, $sp, 144
	beqz	$a1, .LBB14_21
.LBB14_19:                              #   in Loop: Header=BB14_12 Depth=3
	ld.w	$a0, $sp, 124
	ld.d	$a1, $fp, 16
	slli.d	$a0, $a0, 2
	ldx.w	$a0, $a1, $a0
	b	.LBB14_22
	.p2align	4, , 16
.LBB14_20:                              #   in Loop: Header=BB14_12 Depth=3
	move	$a0, $zero
	ld.w	$a1, $sp, 120
	st.w	$a0, $sp, 144
	bnez	$a1, .LBB14_19
.LBB14_21:                              #   in Loop: Header=BB14_12 Depth=3
	move	$a0, $zero
.LBB14_22:                              #   in Loop: Header=BB14_12 Depth=3
	st.w	$a0, $sp, 120
.LBB14_23:                              #   in Loop: Header=BB14_12 Depth=3
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ld.w	$a0, $a0, 40
	ori	$a1, $zero, 1
	ori	$a2, $zero, 9
	bne	$a0, $a2, .LBB14_27
# %bb.24:                               #   in Loop: Header=BB14_12 Depth=3
	ld.w	$a0, $fp, 44
	ori	$a2, $zero, 4
	bne	$a0, $a2, .LBB14_27
# %bb.25:                               #   in Loop: Header=BB14_12 Depth=3
	ld.w	$a0, $sp, 144
	beqz	$a0, .LBB14_37
# %bb.26:                               #   in Loop: Header=BB14_12 Depth=3
	ld.w	$a0, $sp, 164
	ldptr.d	$a2, $fp, 5568
	slli.d	$a0, $a0, 3
	ld.w	$a3, $sp, 160
	ldx.d	$a0, $a2, $a0
	slli.d	$a2, $a3, 2
	ldx.w	$a0, $a0, $a2
	sltu	$a0, $zero, $a0
	ld.w	$a2, $sp, 120
	bnez	$a2, .LBB14_38
	b	.LBB14_28
	.p2align	4, , 16
.LBB14_27:                              #   in Loop: Header=BB14_12 Depth=3
	move	$a0, $zero
.LBB14_28:                              #   in Loop: Header=BB14_12 Depth=3
	move	$a2, $s6
	beqz	$a1, .LBB14_31
# %bb.29:                               #   in Loop: Header=BB14_12 Depth=3
	ld.w	$a1, $sp, 120
	move	$a2, $s6
	beqz	$a1, .LBB14_31
# %bb.30:                               #   in Loop: Header=BB14_12 Depth=3
	ld.w	$a1, $sp, 140
	ldptr.d	$a2, $fp, 5544
	slli.d	$a1, $a1, 3
	ldx.d	$a1, $a2, $a1
	ld.w	$a2, $sp, 136
	ldx.bu	$a2, $a1, $a2
.LBB14_31:                              #   in Loop: Header=BB14_12 Depth=3
	move	$a1, $s6
	bnez	$a0, .LBB14_34
# %bb.32:                               #   in Loop: Header=BB14_12 Depth=3
	ld.w	$a0, $sp, 144
	move	$a1, $s6
	beqz	$a0, .LBB14_34
# %bb.33:                               #   in Loop: Header=BB14_12 Depth=3
	ld.w	$a0, $sp, 164
	ldptr.d	$a1, $fp, 5544
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $a1, $a0
	ld.w	$a1, $sp, 160
	ldx.bu	$a1, $a0, $a1
.LBB14_34:                              #   in Loop: Header=BB14_12 Depth=3
	add.w	$s2, $s2, $s3
	or	$a0, $a2, $a1
	slti	$a0, $a0, 0
	slt	$a3, $a2, $a1
	masknez	$a1, $a1, $a3
	maskeqz	$a2, $a2, $a3
	or	$a1, $a2, $a1
	ld.w	$a2, $sp, 172
	masknez	$a1, $a1, $a0
	ori	$a3, $zero, 2
	maskeqz	$a0, $a3, $a0
	or	$a0, $a0, $a1
	addi.d	$a1, $a2, 1
	sltui	$a1, $a1, 1
	slt	$a3, $a2, $a0
	xori	$a3, $a3, 1
	add.w	$a2, $a2, $a3
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $a2, $a1
	or	$s4, $a0, $a1
	move	$s3, $s1
	ld.d	$s5, $sp, 88                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB14_35:                              #   Parent Loop BB14_5 Depth=1
                                        #     Parent Loop BB14_11 Depth=2
                                        #       Parent Loop BB14_12 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ldptr.d	$a0, $fp, 5544
	ldx.d	$a0, $a0, $s5
	add.d	$a0, $a0, $s2
	move	$a1, $s4
	move	$a2, $s1
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	addi.d	$s3, $s3, -1
	addi.d	$s5, $s5, 8
	bnez	$s3, .LBB14_35
# %bb.36:                               #   in Loop: Header=BB14_12 Depth=3
	ori	$a0, $zero, 1
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	bltu	$s8, $a1, .LBB14_12
	b	.LBB14_10
.LBB14_37:                              #   in Loop: Header=BB14_12 Depth=3
	move	$a0, $zero
	ld.w	$a2, $sp, 120
	beqz	$a2, .LBB14_28
.LBB14_38:                              #   in Loop: Header=BB14_12 Depth=3
	ld.w	$a1, $sp, 140
	ldptr.d	$a2, $fp, 5568
	slli.d	$a1, $a1, 3
	ld.w	$a3, $sp, 136
	ldx.d	$a1, $a2, $a1
	slli.d	$a2, $a3, 2
	ldx.w	$a1, $a1, $a2
	sltui	$a1, $a1, 1
	b	.LBB14_28
.LBB14_39:
	andi	$a0, $a1, 1
	bnez	$a0, .LBB14_46
.LBB14_40:                              # %.thread
	pcalau12i	$a0, %got_pc_hi20(dec_picture)
	ld.d	$a0, $a0, %got_pc_lo12(dec_picture)
	ld.d	$a0, $a0, 0
	lu12i.w	$a1, 77
	ori	$a1, $a1, 1652
	ldx.w	$a0, $a0, $a1
	beqz	$a0, .LBB14_46
# %bb.41:
	ld.d	$a0, $s7, %pc_lo12(active_pps)
	ori	$s0, $zero, 4
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a1, $a1, 40
	ld.d	$a2, $sp, 8                     # 8-byte Folded Reload
	ld.w	$a2, $a2, 0
	ld.w	$a0, $a0, 12
	st.w	$s0, $sp, 168
	ori	$a3, $zero, 56
	mul.d	$a2, $a2, $a3
	add.d	$a2, $a1, $a2
	beqz	$a0, .LBB14_43
# %bb.42:
	ld.d	$a0, $a2, 0
	ld.w	$a0, $a0, 24
	sltui	$a1, $a0, 1
	ori	$a0, $zero, 32
	masknez	$a0, $a0, $a1
	ori	$a3, $zero, 40
	pcalau12i	$a4, %got_pc_hi20(linfo_ue)
	ld.d	$a4, $a4, %got_pc_lo12(linfo_ue)
	pcalau12i	$a5, %got_pc_hi20(readCIPredMode_CABAC)
	ld.d	$a5, $a5, %got_pc_lo12(readCIPredMode_CABAC)
	maskeqz	$a3, $a3, $a1
	or	$a0, $a3, $a0
	masknez	$a3, $a4, $a1
	maskeqz	$a1, $a5, $a1
	or	$a1, $a1, $a3
	b	.LBB14_44
.LBB14_43:
	pcalau12i	$a0, %got_pc_hi20(linfo_ue)
	ld.d	$a1, $a0, %got_pc_lo12(linfo_ue)
	ori	$a0, $zero, 32
.LBB14_44:
	addi.d	$a3, $sp, 168
	stx.d	$a1, $a0, $a3
	ld.d	$a3, $a2, 48
	addi.d	$a0, $sp, 168
	move	$a1, $fp
	jirl	$ra, $a3, 0
	ld.w	$a0, $sp, 172
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	st.w	$a0, $a1, 352
	bltu	$a0, $s0, .LBB14_46
# %bb.45:
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	ori	$a1, $zero, 600
	pcaddu18i	$ra, %call36(error)
	jirl	$ra, $ra, 0
.LBB14_46:
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
.Lfunc_end14:
	.size	read_ipred_modes, .Lfunc_end14-read_ipred_modes
                                        # -- End function
	.globl	readCBPandCoeffsFromNAL         # -- Begin function readCBPandCoeffsFromNAL
	.p2align	5
	.type	readCBPandCoeffsFromNAL,@function
readCBPandCoeffsFromNAL:                # @readCBPandCoeffsFromNAL
# %bb.0:
	addi.d	$sp, $sp, -688
	st.d	$ra, $sp, 680                   # 8-byte Folded Spill
	st.d	$fp, $sp, 672                   # 8-byte Folded Spill
	st.d	$s0, $sp, 664                   # 8-byte Folded Spill
	st.d	$s1, $sp, 656                   # 8-byte Folded Spill
	st.d	$s2, $sp, 648                   # 8-byte Folded Spill
	st.d	$s3, $sp, 640                   # 8-byte Folded Spill
	st.d	$s4, $sp, 632                   # 8-byte Folded Spill
	st.d	$s5, $sp, 624                   # 8-byte Folded Spill
	st.d	$s6, $sp, 616                   # 8-byte Folded Spill
	st.d	$s7, $sp, 608                   # 8-byte Folded Spill
	st.d	$s8, $sp, 600                   # 8-byte Folded Spill
	move	$t0, $a0
	ld.w	$a0, $a0, 4
	ldptr.d	$a1, $t0, 5600
	ori	$a2, $zero, 408
	ld.w	$a4, $t0, 44
	ldptr.d	$a3, $t0, 5592
	st.d	$a3, $sp, 288                   # 8-byte Folded Spill
	mul.d	$a0, $a0, $a2
	ori	$a2, $zero, 3
	add.d	$s8, $a1, $a0
	st.d	$a4, $sp, 24                    # 8-byte Folded Spill
	bne	$a4, $a2, .LBB15_2
# %bb.1:
	ld.w	$s7, $s8, 40
	addi.w	$a0, $s7, -9
	addi.w	$a1, $zero, -6
	and	$a0, $a0, $a1
	sltu	$a0, $zero, $a0
	b	.LBB15_3
.LBB15_2:
	ld.w	$s7, $s8, 40
	addi.d	$a0, $a4, -4
	sltui	$a0, $a0, 1
	addi.d	$a1, $s7, -12
	sltui	$a1, $a1, 1
	and	$a0, $a0, $a1
.LBB15_3:                               # %._crit_edge1593
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	st.d	$zero, $sp, 208                 # 8-byte Folded Spill
	ld.d	$a0, $sp, 288                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 28
	pcalau12i	$a1, %got_pc_hi20(dec_picture)
	ld.d	$a1, $a1, %got_pc_lo12(dec_picture)
	lu12i.w	$a2, 1
	ori	$s0, $a2, 1788
	ldx.w	$a2, $t0, $s0
	ld.w	$a3, $t0, 28
	st.d	$a1, $sp, 96                    # 8-byte Folded Spill
	ld.d	$a1, $a1, 0
	lu12i.w	$a4, 77
	sub.w	$a2, $zero, $a2
	ori	$a4, $a4, 1652
	st.d	$a4, $sp, 104                   # 8-byte Folded Spill
	bne	$a3, $a2, .LBB15_5
# %bb.4:
	lu12i.w	$a2, 1
	ori	$a2, $a2, 1824
	ldx.w	$a2, $t0, $a2
	addi.d	$a2, $a2, -1
	sltui	$a2, $a2, 1
	st.d	$a2, $sp, 208                   # 8-byte Folded Spill
.LBB15_5:
	ldptr.w	$a2, $t0, 5584
	ld.d	$a3, $sp, 104                   # 8-byte Folded Reload
	ldx.w	$s1, $a1, $a3
	slli.d	$a1, $a0, 6
	pcalau12i	$a3, %pc_hi20(SNGL_SCAN)
	addi.d	$t1, $a3, %pc_lo12(SNGL_SCAN)
	beqz	$a2, .LBB15_7
# %bb.6:
	pcalau12i	$a2, %pc_hi20(FIELD_SCAN)
	addi.d	$a2, $a2, %pc_lo12(FIELD_SCAN)
	st.d	$a2, $sp, 336                   # 8-byte Folded Spill
	pcalau12i	$a2, %pc_hi20(FIELD_SCAN8x8)
	addi.d	$a2, $a2, %pc_lo12(FIELD_SCAN8x8)
	st.d	$a2, $sp, 152                   # 8-byte Folded Spill
	b	.LBB15_8
.LBB15_7:
	ld.w	$a2, $s8, 356
	sltui	$a2, $a2, 1
	pcalau12i	$a3, %pc_hi20(FIELD_SCAN8x8)
	addi.d	$a3, $a3, %pc_lo12(FIELD_SCAN8x8)
	masknez	$a3, $a3, $a2
	pcalau12i	$a4, %pc_hi20(SNGL_SCAN8x8)
	addi.d	$a4, $a4, %pc_lo12(SNGL_SCAN8x8)
	maskeqz	$a4, $a4, $a2
	or	$a3, $a4, $a3
	st.d	$a3, $sp, 152                   # 8-byte Folded Spill
	pcalau12i	$a3, %pc_hi20(FIELD_SCAN)
	addi.d	$a3, $a3, %pc_lo12(FIELD_SCAN)
	masknez	$a3, $a3, $a2
	maskeqz	$a2, $t1, $a2
	or	$a2, $a2, $a3
	st.d	$a2, $sp, 336                   # 8-byte Folded Spill
.LBB15_8:
	pcalau12i	$a2, %got_pc_hi20(assignSE2partition)
	ld.d	$a2, $a2, %got_pc_lo12(assignSE2partition)
	alsl.d	$a0, $a0, $a1, 4
	lu12i.w	$s2, 174762
	beqz	$s1, .LBB15_10
# %bb.9:                                # %.preheader1215
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1792
	ldx.w	$a1, $t0, $a1
	ld.w	$a3, $s8, 4
	add.w	$a3, $a1, $a3
	ori	$a4, $s2, 2731
	mul.d	$a5, $a3, $a4
	srli.d	$a6, $a5, 63
	srli.d	$a5, $a5, 32
	add.d	$a5, $a5, $a6
	st.w	$a5, $sp, 412
	ori	$a6, $zero, 6
	ld.w	$a7, $s8, 8
	mul.d	$a5, $a5, $a6
	sub.d	$a3, $a3, $a5
	st.w	$a3, $sp, 404
	add.w	$a1, $a1, $a7
	mul.d	$a3, $a1, $a4
	srli.d	$a4, $a3, 63
	srli.d	$a3, $a3, 32
	add.d	$a3, $a3, $a4
	st.w	$a3, $sp, 416
	mul.d	$a3, $a3, $a6
	sub.d	$a1, $a1, $a3
	st.w	$a1, $sp, 408
.LBB15_10:                              # %.loopexit1216
	lu12i.w	$fp, 7
	add.d	$a0, $a2, $a0
	st.d	$a0, $sp, 280                   # 8-byte Folded Spill
	addi.d	$a0, $s7, -9
	ori	$a1, $zero, 5
	pcalau12i	$a2, %pc_hi20(active_pps)
	st.d	$a2, $sp, 296                   # 8-byte Folded Spill
	st.d	$t0, $sp, 304                   # 8-byte Folded Spill
	st.d	$t1, $sp, 112                   # 8-byte Folded Spill
	bltu	$a1, $a0, .LBB15_13
# %bb.11:                               # %.loopexit1216
	slli.d	$a0, $a0, 2
	pcalau12i	$a1, %pc_hi20(.LJTI15_0)
	addi.d	$a1, $a1, %pc_lo12(.LJTI15_0)
	ldx.w	$a0, $a1, $a0
	add.d	$a1, $a1, $a0
	ori	$a0, $zero, 6
	jr	$a1
.LBB15_12:
	ld.w	$a0, $s8, 300
	st.d	$a0, $sp, 160                   # 8-byte Folded Spill
	b	.LBB15_43
.LBB15_13:
	addi.d	$a0, $s7, -13
	sltui	$a0, $a0, 1
	ori	$a1, $zero, 11
	masknez	$a1, $a1, $a0
	ori	$a2, $zero, 6
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
.LBB15_14:
	ld.d	$a1, $sp, 296                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(active_pps)
	ld.d	$a2, $sp, 288                   # 8-byte Folded Reload
	ld.d	$a2, $a2, 40
	slli.d	$a3, $a0, 2
	ld.d	$a4, $sp, 280                   # 8-byte Folded Reload
	ldx.w	$a3, $a4, $a3
	ld.w	$a1, $a1, 12
	st.w	$a0, $sp, 552
	ori	$a0, $zero, 56
	mul.d	$a0, $a3, $a0
	add.d	$a2, $a2, $a0
	beqz	$a1, .LBB15_16
# %bb.15:
	ld.d	$a0, $a2, 0
	ld.w	$a0, $a0, 24
	beqz	$a0, .LBB15_19
.LBB15_16:
	pcalau12i	$a0, %got_pc_hi20(linfo_cbp_intra)
	ld.d	$a1, $a0, %got_pc_lo12(linfo_cbp_intra)
	ori	$a3, $zero, 9
	addi.d	$a0, $sp, 584
	beq	$s7, $a3, .LBB15_20
# %bb.17:
	ori	$a3, $zero, 12
	beq	$s7, $a3, .LBB15_20
# %bb.18:
	pcalau12i	$a1, %got_pc_hi20(linfo_cbp_inter)
	ld.d	$a1, $a1, %got_pc_lo12(linfo_cbp_inter)
	pcalau12i	$a3, %got_pc_hi20(linfo_cbp_intra)
	ld.d	$a3, $a3, %got_pc_lo12(linfo_cbp_intra)
	addi.d	$a4, $s7, -13
	sltui	$a4, $a4, 1
	masknez	$a1, $a1, $a4
	maskeqz	$a3, $a3, $a4
	or	$a1, $a3, $a1
	b	.LBB15_20
.LBB15_19:
	pcalau12i	$a0, %got_pc_hi20(readCBP_CABAC)
	ld.d	$a1, $a0, %got_pc_lo12(readCBP_CABAC)
	addi.d	$a0, $sp, 592
.LBB15_20:
	st.d	$a1, $a0, 0
	ld.d	$a3, $a2, 48
	addi.d	$a0, $sp, 552
	move	$a1, $t0
	jirl	$ra, $a3, 0
	ld.d	$t0, $sp, 304                   # 8-byte Folded Reload
	ld.w	$a0, $s8, 40
	ld.w	$a3, $sp, 556
	addi.w	$a1, $a0, -1
	ori	$a2, $zero, 3
	st.d	$a3, $sp, 160                   # 8-byte Folded Spill
	st.w	$a3, $s8, 300
	bltu	$a1, $a2, .LBB15_25
# %bb.21:
	bnez	$a0, .LBB15_24
# %bb.22:
	ld.w	$a1, $t0, 44
	ori	$a2, $zero, 1
	bne	$a1, $a2, .LBB15_24
# %bb.23:
	pcalau12i	$a1, %pc_hi20(active_sps)
	ld.d	$a1, $a1, %pc_lo12(active_sps)
	ldptr.w	$a1, $a1, 2084
	bnez	$a1, .LBB15_32
.LBB15_24:
	ld.w	$a1, $s8, 400
	beqz	$a1, .LBB15_26
.LBB15_25:
	ori	$a1, $a0, 4
	ori	$a2, $zero, 13
	bne	$a1, $a2, .LBB15_32
.LBB15_26:                              # %.critedge
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	beqz	$a1, .LBB15_37
.LBB15_27:                              # %.critedge.thread
	ori	$a1, $zero, 13
	bltu	$a1, $a0, .LBB15_29
# %bb.28:                               # %.critedge.thread
	ori	$a1, $zero, 1
	sll.d	$a1, $a1, $a0
	lu12i.w	$a2, 2
	ori	$a2, $a2, 1536
	and	$a2, $a1, $a2
	ori	$a1, $zero, 17
	bnez	$a2, .LBB15_30
.LBB15_29:
	addi.d	$a0, $a0, -14
	sltui	$a0, $a0, 1
	addi.d	$a1, $a0, 16
.LBB15_30:
	ld.d	$a0, $sp, 296                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(active_pps)
	ld.d	$a2, $sp, 288                   # 8-byte Folded Reload
	ld.d	$a2, $a2, 40
	slli.d	$a3, $a1, 2
	ld.d	$a4, $sp, 280                   # 8-byte Folded Reload
	ldx.w	$a3, $a4, $a3
	ld.w	$a0, $a0, 12
	st.w	$a1, $sp, 552
	ori	$a1, $zero, 56
	mul.d	$a1, $a3, $a1
	add.d	$a2, $a2, $a1
	beqz	$a0, .LBB15_38
# %bb.31:
	ld.d	$a0, $a2, 0
	ld.w	$a0, $a0, 24
	sltui	$a1, $a0, 1
	ori	$a0, $zero, 32
	masknez	$a0, $a0, $a1
	ori	$a3, $zero, 40
	pcalau12i	$a4, %got_pc_hi20(linfo_se)
	ld.d	$a4, $a4, %got_pc_lo12(linfo_se)
	pcalau12i	$a5, %got_pc_hi20(readDquant_CABAC)
	ld.d	$a5, $a5, %got_pc_lo12(readDquant_CABAC)
	maskeqz	$a3, $a3, $a1
	or	$a0, $a3, $a0
	masknez	$a3, $a4, $a1
	maskeqz	$a1, $a5, $a1
	or	$a1, $a1, $a3
	b	.LBB15_39
.LBB15_32:                              # %.thread1152
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	andi	$a1, $a1, 15
	beqz	$a1, .LBB15_26
# %bb.33:
	ldptr.w	$a1, $t0, 5908
	beqz	$a1, .LBB15_27
# %bb.34:
	ld.d	$a0, $sp, 280                   # 8-byte Folded Reload
	ld.w	$a1, $a0, 0
	ld.d	$a0, $sp, 288                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 40
	ori	$a2, $zero, 56
	ld.d	$a3, $sp, 296                   # 8-byte Folded Reload
	ld.d	$a3, $a3, %pc_lo12(active_pps)
	mul.d	$a2, $a1, $a2
	pcalau12i	$a1, %got_pc_hi20(readMB_transform_size_flag_CABAC)
	ld.d	$a4, $a1, %got_pc_lo12(readMB_transform_size_flag_CABAC)
	ld.w	$a3, $a3, 12
	ldx.d	$a1, $a0, $a2
	st.w	$zero, $sp, 552
	st.d	$a4, $sp, 592
	beqz	$a3, .LBB15_36
# %bb.35:
	ld.w	$a3, $a1, 24
	beqz	$a3, .LBB15_306
.LBB15_36:
	ori	$a0, $zero, 1
	st.w	$a0, $sp, 564
	addi.d	$a0, $sp, 552
	pcaddu18i	$ra, %call36(readSyntaxElement_FLC)
	jirl	$ra, $ra, 0
	b	.LBB15_307
.LBB15_37:
	st.d	$zero, $sp, 160                 # 8-byte Folded Spill
	b	.LBB15_43
.LBB15_38:
	pcalau12i	$a0, %got_pc_hi20(linfo_se)
	ld.d	$a1, $a0, %got_pc_lo12(linfo_se)
	ori	$a0, $zero, 32
.LBB15_39:
	addi.d	$a3, $sp, 552
	stx.d	$a1, $a0, $a3
	ld.d	$a3, $a2, 48
	addi.d	$a0, $sp, 552
	move	$a1, $t0
	jirl	$ra, $a3, 0
	ld.d	$t0, $sp, 304                   # 8-byte Folded Reload
	ldx.wu	$a0, $t0, $s0
	ld.w	$a1, $sp, 556
	srli.d	$a2, $a0, 31
	add.w	$a2, $a0, $a2
	srai.d	$a2, $a2, 1
	addi.w	$a3, $zero, -26
	sub.d	$a3, $a3, $a2
	st.w	$a1, $s8, 16
	blt	$a1, $a3, .LBB15_41
# %bb.40:
	addi.d	$a2, $a2, 25
	bge	$a2, $a1, .LBB15_42
.LBB15_41:
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a0, $a0, %pc_lo12(.L.str.5)
	ori	$a1, $zero, 500
	pcaddu18i	$ra, %call36(error)
	jirl	$ra, $ra, 0
	ld.d	$t0, $sp, 304                   # 8-byte Folded Reload
	ld.w	$a1, $s8, 16
	ldx.w	$a0, $t0, $s0
.LBB15_42:
	ld.w	$a2, $t0, 28
	add.d	$a1, $a2, $a1
	alsl.d	$a1, $a0, $a1, 1
	addi.w	$a1, $a1, 52
	addi.w	$a2, $a0, 52
	mod.w	$a1, $a1, $a2
	sub.d	$a0, $a1, $a0
	st.w	$a0, $t0, 28
.LBB15_43:                              # %.preheader1214
	ori	$fp, $fp, 1536
	addi.d	$s3, $t0, 2047
	addi.d	$a0, $s3, 361
	ori	$a2, $zero, 256
	st.d	$a0, $sp, 344                   # 8-byte Folded Spill
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	addi.d	$a0, $s3, 1129
	ori	$a2, $zero, 256
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	st.d	$s3, $sp, 8                     # 8-byte Folded Spill
	addi.d	$a0, $s3, 1897
	ori	$a2, $zero, 256
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 616
	ld.d	$a1, $sp, 304                   # 8-byte Folded Reload
	add.d	$a0, $a1, $a0
	ori	$a2, $zero, 256
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$ra, $sp, 304                   # 8-byte Folded Reload
	ld.w	$a0, $s8, 40
	ori	$a0, $a0, 4
	ori	$a1, $zero, 14
	ld.d	$a2, $sp, 208                   # 8-byte Folded Reload
	st.d	$a2, $sp, 208                   # 8-byte Folded Spill
	bne	$a0, $a1, .LBB15_61
# %bb.44:
	ld.d	$a0, $sp, 296                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(active_pps)
	ori	$a1, $zero, 17
	ld.d	$a2, $sp, 288                   # 8-byte Folded Reload
	ld.d	$a2, $a2, 40
	ld.d	$a3, $sp, 280                   # 8-byte Folded Reload
	ld.w	$a3, $a3, 68
	ld.w	$a0, $a0, 12
	st.w	$a1, $sp, 552
	ori	$a1, $zero, 56
	mul.d	$a1, $a3, $a1
	add.d	$a2, $a2, $a1
	beqz	$a0, .LBB15_46
# %bb.45:
	ld.d	$a0, $a2, 0
	ld.w	$a0, $a0, 24
	sltui	$a1, $a0, 1
	ori	$a0, $zero, 32
	masknez	$a0, $a0, $a1
	ori	$a3, $zero, 40
	pcalau12i	$a4, %got_pc_hi20(linfo_se)
	ld.d	$a4, $a4, %got_pc_lo12(linfo_se)
	pcalau12i	$a5, %got_pc_hi20(readDquant_CABAC)
	ld.d	$a5, $a5, %got_pc_lo12(readDquant_CABAC)
	maskeqz	$a3, $a3, $a1
	or	$a0, $a3, $a0
	masknez	$a3, $a4, $a1
	maskeqz	$a1, $a5, $a1
	or	$a1, $a1, $a3
	b	.LBB15_47
.LBB15_46:
	pcalau12i	$a0, %got_pc_hi20(linfo_se)
	ld.d	$a1, $a0, %got_pc_lo12(linfo_se)
	ori	$a0, $zero, 32
.LBB15_47:
	addi.d	$a3, $sp, 552
	stx.d	$a1, $a0, $a3
	ld.d	$a3, $a2, 48
	addi.d	$a0, $sp, 552
	move	$a1, $ra
	jirl	$ra, $a3, 0
	ld.d	$ra, $sp, 304                   # 8-byte Folded Reload
	ldx.wu	$a0, $ra, $s0
	ld.w	$a1, $sp, 556
	srli.d	$a2, $a0, 31
	add.w	$a2, $a0, $a2
	srai.d	$a2, $a2, 1
	addi.w	$a3, $zero, -26
	sub.d	$a3, $a3, $a2
	st.w	$a1, $s8, 16
	blt	$a1, $a3, .LBB15_49
# %bb.48:
	addi.d	$a2, $a2, 25
	bge	$a2, $a1, .LBB15_50
.LBB15_49:
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a0, $a0, %pc_lo12(.L.str.5)
	ori	$a1, $zero, 500
	pcaddu18i	$ra, %call36(error)
	jirl	$ra, $ra, 0
	ld.d	$ra, $sp, 304                   # 8-byte Folded Reload
	ld.w	$a1, $s8, 16
	ldx.w	$a0, $ra, $s0
.LBB15_50:                              # %.preheader1213
	ld.w	$a2, $ra, 28
	add.d	$a1, $a2, $a1
	alsl.d	$a1, $a0, $a1, 1
	addi.w	$a1, $a1, 52
	ld.w	$a2, $ra, 76
	ldptr.d	$a3, $ra, 5544
	addi.w	$a4, $a0, 52
	mod.w	$a1, $a1, $a4
	slli.d	$a2, $a2, 3
	ldx.d	$a2, $a3, $a2
	ld.w	$a3, $ra, 92
	sub.d	$a0, $a1, $a0
	st.w	$a0, $ra, 28
	ori	$a0, $zero, 2
	stx.b	$a0, $a2, $a3
	ldptr.d	$a1, $ra, 5544
	ld.w	$a2, $ra, 76
	alsl.d	$a1, $a2, $a1, 3
	ld.d	$a1, $a1, 8
	ld.w	$a2, $ra, 92
	stx.b	$a0, $a1, $a2
	ldptr.d	$a1, $ra, 5544
	ld.w	$a2, $ra, 76
	alsl.d	$a1, $a2, $a1, 3
	ld.d	$a1, $a1, 16
	ld.w	$a2, $ra, 92
	stx.b	$a0, $a1, $a2
	ldptr.d	$a1, $ra, 5544
	ld.w	$a2, $ra, 76
	alsl.d	$a1, $a2, $a1, 3
	ld.d	$a1, $a1, 24
	ld.w	$a2, $ra, 92
	stx.b	$a0, $a1, $a2
	ld.w	$a1, $ra, 76
	ldptr.d	$a2, $ra, 5544
	slli.d	$a1, $a1, 3
	ldx.d	$a1, $a2, $a1
	ld.w	$a2, $ra, 92
	add.d	$a1, $a1, $a2
	st.b	$a0, $a1, 1
	ldptr.d	$a1, $ra, 5544
	ld.w	$a2, $ra, 76
	alsl.d	$a1, $a2, $a1, 3
	ld.d	$a1, $a1, 8
	ld.w	$a2, $ra, 92
	add.d	$a1, $a1, $a2
	st.b	$a0, $a1, 1
	ldptr.d	$a1, $ra, 5544
	ld.w	$a2, $ra, 76
	alsl.d	$a1, $a2, $a1, 3
	ld.d	$a1, $a1, 16
	ld.w	$a2, $ra, 92
	add.d	$a1, $a1, $a2
	st.b	$a0, $a1, 1
	ldptr.d	$a1, $ra, 5544
	ld.w	$a2, $ra, 76
	alsl.d	$a1, $a2, $a1, 3
	ld.d	$a1, $a1, 24
	ld.w	$a2, $ra, 92
	add.d	$a1, $a1, $a2
	st.b	$a0, $a1, 1
	ld.w	$a1, $ra, 76
	ldptr.d	$a2, $ra, 5544
	slli.d	$a1, $a1, 3
	ldx.d	$a1, $a2, $a1
	ld.w	$a2, $ra, 92
	add.d	$a1, $a1, $a2
	st.b	$a0, $a1, 2
	ldptr.d	$a1, $ra, 5544
	ld.w	$a2, $ra, 76
	alsl.d	$a1, $a2, $a1, 3
	ld.d	$a1, $a1, 8
	ld.w	$a2, $ra, 92
	add.d	$a1, $a1, $a2
	st.b	$a0, $a1, 2
	ldptr.d	$a1, $ra, 5544
	ld.w	$a2, $ra, 76
	alsl.d	$a1, $a2, $a1, 3
	ld.d	$a1, $a1, 16
	ld.w	$a2, $ra, 92
	add.d	$a1, $a1, $a2
	st.b	$a0, $a1, 2
	ldptr.d	$a1, $ra, 5544
	ld.w	$a2, $ra, 76
	alsl.d	$a1, $a2, $a1, 3
	ld.d	$a1, $a1, 24
	ld.w	$a2, $ra, 92
	add.d	$a1, $a1, $a2
	st.b	$a0, $a1, 2
	ld.w	$a1, $ra, 76
	ldptr.d	$a2, $ra, 5544
	slli.d	$a1, $a1, 3
	ldx.d	$a1, $a2, $a1
	ld.w	$a2, $ra, 92
	add.d	$a1, $a1, $a2
	st.b	$a0, $a1, 3
	ldptr.d	$a1, $ra, 5544
	ld.w	$a2, $ra, 76
	alsl.d	$a1, $a2, $a1, 3
	ld.d	$a1, $a1, 8
	ld.w	$a2, $ra, 92
	add.d	$a1, $a1, $a2
	st.b	$a0, $a1, 3
	ldptr.d	$a1, $ra, 5544
	ld.w	$a2, $ra, 76
	alsl.d	$a1, $a2, $a1, 3
	ld.d	$a1, $a1, 16
	ld.w	$a2, $ra, 92
	add.d	$a1, $a1, $a2
	st.b	$a0, $a1, 3
	ldptr.d	$a1, $ra, 5544
	ld.w	$a2, $ra, 76
	alsl.d	$a1, $a2, $a1, 3
	ld.d	$a1, $a1, 24
	ld.w	$a2, $ra, 92
	add.d	$a1, $a1, $a2
	st.b	$a0, $a1, 3
	ld.d	$a0, $sp, 296                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(active_pps)
	ld.w	$a0, $a0, 12
	beqz	$a0, .LBB15_54
# %bb.51:
	ld.d	$a0, $sp, 280                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 28
	ld.d	$a1, $sp, 288                   # 8-byte Folded Reload
	ld.d	$a1, $a1, 40
	ori	$a2, $zero, 56
	mul.d	$a0, $a0, $a2
	add.d	$s4, $a1, $a0
	st.w	$zero, $sp, 576
	ldx.d	$a0, $a1, $a0
	ori	$a1, $zero, 7
	st.w	$a1, $sp, 552
	ori	$a1, $zero, 1
	ld.w	$a0, $a0, 24
	pcalau12i	$a2, %got_pc_hi20(linfo_levrun_inter)
	ld.d	$a2, $a2, %got_pc_lo12(linfo_levrun_inter)
	pcalau12i	$a3, %got_pc_hi20(readRunLevel_CABAC)
	ld.d	$a3, $a3, %got_pc_lo12(readRunLevel_CABAC)
	stptr.w	$a1, $ra, 5616
	sltui	$a0, $a0, 1
	masknez	$a1, $a2, $a0
	maskeqz	$a2, $a3, $a0
	or	$a1, $a2, $a1
	ori	$a2, $zero, 32
	masknez	$a2, $a2, $a0
	ori	$a3, $zero, 40
	maskeqz	$a0, $a3, $a0
	or	$a0, $a0, $a2
	addi.d	$a2, $sp, 552
	stx.d	$a1, $a0, $a2
	addi.d	$s3, $zero, -1
	ori	$s5, $zero, 16
	addi.d	$s6, $zero, -1
	.p2align	4, , 16
.LBB15_52:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $s4, 48
	addi.d	$a0, $sp, 552
	move	$a1, $ra
	move	$a2, $s4
	jirl	$ra, $a3, 0
	ld.d	$ra, $sp, 304                   # 8-byte Folded Reload
	ld.w	$a0, $sp, 556
	beqz	$a0, .LBB15_59
# %bb.53:                               #   in Loop: Header=BB15_52 Depth=1
	ld.w	$a1, $sp, 560
	add.d	$a1, $s6, $a1
	addi.w	$s6, $a1, 1
	slli.d	$a1, $s6, 1
	ld.d	$a2, $sp, 336                   # 8-byte Folded Reload
	ldx.bu	$a1, $a2, $a1
	alsl.d	$a2, $s6, $a2, 1
	ld.bu	$a2, $a2, 1
	alsl.d	$a1, $a1, $a1, 1
	slli.d	$a1, $a1, 8
	ld.d	$a3, $sp, 344                   # 8-byte Folded Reload
	add.d	$a1, $a3, $a1
	slli.d	$a2, $a2, 6
	addi.w	$s3, $s3, 1
	stx.w	$a0, $a1, $a2
	bltu	$s3, $s5, .LBB15_52
	b	.LBB15_59
.LBB15_54:
	ori	$s5, $zero, 1
	addi.d	$s3, $sp, 488
	ori	$a2, $zero, 1
	addi.d	$a5, $sp, 488
	addi.d	$a6, $sp, 424
	addi.d	$a7, $sp, 420
	addi.d	$s4, $sp, 424
	move	$a0, $ra
	move	$a3, $zero
	move	$a4, $zero
	pcaddu18i	$ra, %call36(readCoeff4x4_CAVLC)
	jirl	$ra, $ra, 0
	ld.d	$ra, $sp, 304                   # 8-byte Folded Reload
	ld.w	$a0, $sp, 420
	blt	$a0, $s5, .LBB15_59
# %bb.55:                               # %.lr.ph
	addi.d	$a1, $zero, -1
	b	.LBB15_57
	.p2align	4, , 16
.LBB15_56:                              #   in Loop: Header=BB15_57 Depth=1
	addi.d	$s4, $s4, 4
	addi.d	$a0, $a0, -1
	addi.d	$s3, $s3, 4
	beqz	$a0, .LBB15_59
.LBB15_57:                              # =>This Inner Loop Header: Depth=1
	ld.w	$a2, $s3, 0
	beqz	$a2, .LBB15_56
# %bb.58:                               #   in Loop: Header=BB15_57 Depth=1
	ld.w	$a3, $s4, 0
	add.d	$a1, $a1, $a3
	addi.w	$a1, $a1, 1
	slli.d	$a3, $a1, 1
	ld.d	$a4, $sp, 336                   # 8-byte Folded Reload
	ldx.bu	$a3, $a4, $a3
	alsl.d	$a4, $a1, $a4, 1
	ld.bu	$a4, $a4, 1
	alsl.d	$a3, $a3, $a3, 1
	slli.d	$a3, $a3, 8
	ld.d	$a5, $sp, 344                   # 8-byte Folded Reload
	add.d	$a3, $a5, $a3
	slli.d	$a4, $a4, 6
	stx.w	$a2, $a3, $a4
	b	.LBB15_56
.LBB15_59:                              # %.loopexit1211
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	bnez	$a0, .LBB15_61
# %bb.60:
	move	$a0, $ra
	pcaddu18i	$ra, %call36(itrans_2)
	jirl	$ra, $ra, 0
	ld.d	$ra, $sp, 304                   # 8-byte Folded Reload
.LBB15_61:
	pcalau12i	$a0, %got_pc_hi20(img)
	ld.d	$a0, $a0, %got_pc_lo12(img)
	ld.w	$a2, $ra, 28
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	sltui	$a3, $s7, 15
	ld.d	$a4, $a0, 0
	st.w	$a2, $s8, 0
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	add.d	$a0, $a1, $a0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1792
	st.d	$a1, $sp, 80                    # 8-byte Folded Spill
	ldx.w	$a1, $a4, $a1
	ld.w	$a6, $a0, 32
	srl.d	$a5, $fp, $s7
	addi.d	$a7, $s8, 4
	st.d	$a7, $sp, 72                    # 8-byte Folded Spill
	sub.w	$a1, $zero, $a1
	add.w	$a6, $a6, $a2
	slt	$a7, $a1, $a6
	masknez	$a1, $a1, $a7
	maskeqz	$a6, $a6, $a7
	or	$t0, $a6, $a1
	slti	$a1, $t0, 51
	maskeqz	$a7, $t0, $a1
	ori	$a6, $zero, 51
	masknez	$a1, $a6, $a1
	or	$a1, $a7, $a1
	pcalau12i	$a7, %pc_hi20(QP_SCALE_CR)
	addi.d	$a7, $a7, %pc_lo12(QP_SCALE_CR)
	bltz	$t0, .LBB15_63
# %bb.62:
	ldx.bu	$a1, $a7, $a1
.LBB15_63:
	ld.d	$t0, $sp, 72                    # 8-byte Folded Reload
	st.w	$a1, $t0, 0
	ld.d	$t0, $sp, 80                    # 8-byte Folded Reload
	ldx.w	$a4, $a4, $t0
	ld.w	$t0, $a0, 36
	and	$a3, $a3, $a5
	st.d	$a3, $sp, 88                    # 8-byte Folded Spill
	sub.w	$a3, $zero, $a4
	add.w	$a2, $t0, $a2
	slt	$a4, $a3, $a2
	masknez	$a3, $a3, $a4
	maskeqz	$a2, $a2, $a4
	or	$a2, $a2, $a3
	slti	$a3, $a2, 51
	maskeqz	$a4, $a2, $a3
	masknez	$a3, $a6, $a3
	or	$a4, $a4, $a3
	st.d	$s7, $sp, 32                    # 8-byte Folded Spill
	bltz	$a2, .LBB15_65
# %bb.64:
	ldx.bu	$a4, $a7, $a4
.LBB15_65:                              # %set_chroma_qp.exit
	st.w	$a4, $s8, 8
	ld.w	$a2, $ra, 28
	ldx.w	$a3, $ra, $s0
	addi.w	$a5, $s1, -1
	st.d	$a5, $sp, 0                     # 8-byte Folded Spill
	add.w	$a2, $a3, $a2
	ori	$t2, $s2, 2731
	mul.d	$a3, $a2, $t2
	srli.d	$a5, $a3, 63
	srli.d	$a3, $a3, 32
	add.d	$s7, $a3, $a5
	slli.d	$a3, $s7, 2
	alsl.d	$a3, $s7, $a3, 1
	sub.w	$a5, $a2, $a3
	slli.d	$a2, $a5, 6
	pcalau12i	$a3, %pc_hi20(InvLevelScale4x4Luma_Intra)
	addi.d	$a3, $a3, %pc_lo12(InvLevelScale4x4Luma_Intra)
	add.d	$a3, $a3, $a2
	pcalau12i	$a6, %pc_hi20(InvLevelScale4x4Luma_Inter)
	addi.d	$a6, $a6, %pc_lo12(InvLevelScale4x4Luma_Inter)
	add.d	$a2, $a6, $a2
	ld.d	$t1, $sp, 88                    # 8-byte Folded Reload
	masknez	$a2, $a2, $t1
	maskeqz	$a3, $a3, $t1
	slli.d	$a5, $a5, 8
	pcalau12i	$a6, %pc_hi20(InvLevelScale8x8Luma_Intra)
	addi.d	$a6, $a6, %pc_lo12(InvLevelScale8x8Luma_Intra)
	add.d	$a6, $a6, $a5
	pcalau12i	$a7, %pc_hi20(InvLevelScale8x8Luma_Inter)
	ld.w	$t0, $a0, 0
	addi.d	$a0, $a7, %pc_lo12(InvLevelScale8x8Luma_Inter)
	add.d	$a0, $a0, $a5
	masknez	$a0, $a0, $t1
	maskeqz	$a5, $a6, $t1
	beqz	$t0, .LBB15_67
# %bb.66:                               # %.preheader1209
	ld.d	$a6, $sp, 80                    # 8-byte Folded Reload
	ldx.w	$a6, $ra, $a6
	add.w	$a1, $a6, $a1
	mul.d	$a7, $a1, $t2
	srli.d	$t0, $a7, 63
	srli.d	$a7, $a7, 32
	add.d	$a7, $a7, $t0
	st.w	$a7, $sp, 412
	ori	$t0, $zero, 6
	mul.d	$a7, $a7, $t0
	sub.d	$a1, $a1, $a7
	st.w	$a1, $sp, 404
	add.w	$a1, $a6, $a4
	mul.d	$a4, $a1, $t2
	srli.d	$a6, $a4, 63
	srli.d	$a4, $a4, 32
	add.d	$a4, $a4, $a6
	st.w	$a4, $sp, 416
	mul.d	$a4, $a4, $t0
	sub.d	$a1, $a1, $a4
	st.w	$a1, $sp, 408
.LBB15_67:                              # %.loopexit1210
	st.d	$t2, $sp, 40                    # 8-byte Folded Spill
	move	$s6, $zero
	or	$a1, $a3, $a2
	st.d	$a1, $sp, 312                   # 8-byte Folded Spill
	or	$a0, $a5, $a0
	st.d	$a0, $sp, 200                   # 8-byte Folded Spill
	addi.d	$a0, $ra, 1384
	st.d	$a0, $sp, 320                   # 8-byte Folded Spill
	ori	$a0, $zero, 2
	st.d	$a0, $sp, 256                   # 8-byte Folded Spill
	ori	$a0, $zero, 1
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	ori	$a1, $zero, 1
	b	.LBB15_69
	.p2align	4, , 16
.LBB15_68:                              #   in Loop: Header=BB15_69 Depth=1
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	addi.d	$a0, $a0, 2
	st.d	$a0, $sp, 256                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	addi.d	$a0, $a0, 2
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	andi	$a0, $a0, 1
	ori	$s6, $zero, 2
	move	$a1, $zero
	beqz	$a0, .LBB15_170
.LBB15_69:                              # %.preheader1208
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB15_72 Depth 2
                                        #       Child Loop BB15_156 Depth 3
                                        #         Child Loop BB15_157 Depth 4
                                        #         Child Loop BB15_164 Depth 4
                                        #       Child Loop BB15_77 Depth 3
                                        #       Child Loop BB15_84 Depth 3
                                        #       Child Loop BB15_91 Depth 3
                                        #       Child Loop BB15_98 Depth 3
                                        #       Child Loop BB15_107 Depth 3
                                        #         Child Loop BB15_119 Depth 4
                                        #         Child Loop BB15_135 Depth 4
                                        #         Child Loop BB15_141 Depth 4
                                        #         Child Loop BB15_151 Depth 4
                                        #         Child Loop BB15_113 Depth 4
                                        #         Child Loop BB15_124 Depth 4
                                        #         Child Loop BB15_130 Depth 4
                                        #         Child Loop BB15_146 Depth 4
	st.d	$a1, $sp, 120                   # 8-byte Folded Spill
	st.d	$zero, $sp, 224                 # 8-byte Folded Spill
	move	$a5, $zero
	slli.d	$s0, $s6, 2
	addi.d	$a0, $s6, 1
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	slli.d	$a0, $a0, 2
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	ori	$a3, $zero, 1
	ori	$a4, $zero, 1
	st.d	$s6, $sp, 216                   # 8-byte Folded Spill
	b	.LBB15_72
	.p2align	4, , 16
.LBB15_70:                              #   in Loop: Header=BB15_72 Depth=2
	move	$a0, $ra
	pcaddu18i	$ra, %call36(readLumaCoeff8x8_CABAC)
	jirl	$ra, $ra, 0
	ld.d	$ra, $sp, 304                   # 8-byte Folded Reload
.LBB15_71:                              # %.loopexit1205
                                        #   in Loop: Header=BB15_72 Depth=2
	ld.d	$a3, $sp, 176                   # 8-byte Folded Reload
	addi.d	$a3, $a3, 2
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	addi.d	$a0, $a0, -2
	st.d	$a0, $sp, 224                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	andi	$a0, $a0, 1
	ori	$a5, $zero, 2
	move	$a4, $zero
	ld.d	$s6, $sp, 216                   # 8-byte Folded Reload
	beqz	$a0, .LBB15_68
.LBB15_72:                              #   Parent Loop BB15_69 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB15_156 Depth 3
                                        #         Child Loop BB15_157 Depth 4
                                        #         Child Loop BB15_164 Depth 4
                                        #       Child Loop BB15_77 Depth 3
                                        #       Child Loop BB15_84 Depth 3
                                        #       Child Loop BB15_91 Depth 3
                                        #       Child Loop BB15_98 Depth 3
                                        #       Child Loop BB15_107 Depth 3
                                        #         Child Loop BB15_119 Depth 4
                                        #         Child Loop BB15_135 Depth 4
                                        #         Child Loop BB15_141 Depth 4
                                        #         Child Loop BB15_151 Depth 4
                                        #         Child Loop BB15_113 Depth 4
                                        #         Child Loop BB15_124 Depth 4
                                        #         Child Loop BB15_130 Depth 4
                                        #         Child Loop BB15_146 Depth 4
	ld.d	$a0, $sp, 296                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(active_pps)
	ld.w	$a0, $a0, 12
	srli.d	$a1, $a5, 1
	or	$a2, $a1, $s6
	alsl.d	$a1, $a5, $a5, 1
	st.d	$a1, $sp, 272                   # 8-byte Folded Spill
	st.d	$a5, $sp, 264                   # 8-byte Folded Spill
	st.d	$a3, $sp, 176                   # 8-byte Folded Spill
	st.d	$a4, $sp, 168                   # 8-byte Folded Spill
	beqz	$a0, .LBB15_104
# %bb.73:                               #   in Loop: Header=BB15_72 Depth=2
	ld.w	$a0, $s8, 396
	bnez	$a0, .LBB15_70
# %bb.74:                               # %.preheader1206
                                        #   in Loop: Header=BB15_72 Depth=2
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	srl.w	$a0, $a0, $a2
	andi	$a0, $a0, 1
	beqz	$a0, .LBB15_153
# %bb.75:                               # %.preheader1206.split
                                        #   in Loop: Header=BB15_72 Depth=2
	addi.w	$s5, $zero, -5
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	beqz	$a0, .LBB15_154
# %bb.76:                               # %.preheader1203.us1236.preheader
                                        #   in Loop: Header=BB15_72 Depth=2
	ld.w	$a0, $s8, 40
	lu32i.d	$s5, 0
	and	$a1, $a0, $s5
	addi.w	$a1, $a1, 0
	addi.d	$a1, $a1, -10
	sltui	$a2, $a1, 1
	sltu	$a1, $zero, $a1
	stptr.w	$a5, $ra, 5608
	stptr.w	$s6, $ra, 5612
	sub.d	$fp, $zero, $a1
	addi.w	$a1, $a0, -9
	sltui	$a3, $a1, 6
	ori	$a4, $zero, 51
	srl.d	$a1, $a4, $a1
	and	$a1, $a3, $a1
	addi.d	$a0, $a0, -12
	sltui	$a0, $a0, 1
	or	$a0, $a1, $a0
	stptr.w	$a0, $ra, 5616
	or	$a0, $a5, $s0
	ori	$a1, $zero, 1
	sll.d	$s1, $a1, $a0
	addi.w	$s2, $a2, -1
	.p2align	4, , 16
.LBB15_77:                              #   Parent Loop BB15_69 Depth=1
                                        #     Parent Loop BB15_72 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.wu	$a0, $s8, 40
	and	$a0, $a0, $s5
	addi.w	$a0, $a0, 0
	addi.d	$a0, $a0, -10
	sltui	$a0, $a0, 1
	ldptr.w	$a1, $ra, 5616
	ori	$a2, $zero, 5
	masknez	$a2, $a2, $a0
	ori	$a3, $zero, 1
	maskeqz	$a0, $a3, $a0
	or	$a0, $a0, $a2
	sltui	$a1, $a1, 1
	addi.d	$a2, $s2, 1
	sltui	$a2, $a2, 1
	ori	$a3, $zero, 9
	masknez	$a3, $a3, $a2
	ori	$a4, $zero, 7
	maskeqz	$a4, $a4, $a2
	or	$a3, $a4, $a3
	ori	$a4, $zero, 14
	masknez	$a4, $a4, $a2
	ori	$a5, $zero, 12
	maskeqz	$a2, $a5, $a2
	or	$a2, $a2, $a4
	masknez	$a3, $a3, $a1
	maskeqz	$a1, $a2, $a1
	or	$a1, $a1, $a3
	ld.d	$a2, $sp, 296                   # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(active_pps)
	ld.d	$a3, $sp, 288                   # 8-byte Folded Reload
	ld.d	$a3, $a3, 40
	slli.d	$a4, $a1, 2
	ld.d	$a5, $sp, 280                   # 8-byte Folded Reload
	ldx.w	$a4, $a5, $a4
	ld.w	$a5, $a2, 12
	st.w	$a0, $sp, 576
	st.w	$a1, $sp, 552
	ori	$a0, $zero, 56
	mul.d	$a0, $a4, $a0
	add.d	$a2, $a3, $a0
	beqz	$a5, .LBB15_79
# %bb.78:                               #   in Loop: Header=BB15_77 Depth=3
	ld.d	$a0, $a2, 0
	ld.w	$a0, $a0, 24
	beqz	$a0, .LBB15_80
.LBB15_79:                              #   in Loop: Header=BB15_77 Depth=3
	pcalau12i	$a0, %got_pc_hi20(linfo_levrun_inter)
	ld.d	$a0, $a0, %got_pc_lo12(linfo_levrun_inter)
	st.d	$a0, $sp, 584
	b	.LBB15_81
	.p2align	4, , 16
.LBB15_80:                              #   in Loop: Header=BB15_77 Depth=3
	pcalau12i	$a0, %got_pc_hi20(readRunLevel_CABAC)
	ld.d	$a0, $a0, %got_pc_lo12(readRunLevel_CABAC)
	st.d	$a0, $sp, 592
.LBB15_81:                              #   in Loop: Header=BB15_77 Depth=3
	ld.d	$a3, $a2, 48
	addi.d	$a0, $sp, 552
	move	$a1, $ra
	jirl	$ra, $a3, 0
	ld.d	$ra, $sp, 304                   # 8-byte Folded Reload
	ld.w	$a0, $sp, 556
	slli.d	$s3, $s6, 6
	beqz	$a0, .LBB15_83
# %bb.82:                               #   in Loop: Header=BB15_77 Depth=3
	ld.w	$a1, $sp, 560
	add.d	$a1, $fp, $a1
	addi.w	$fp, $a1, 1
	ld.d	$a4, $sp, 336                   # 8-byte Folded Reload
	alsl.d	$a1, $fp, $a4, 1
	ld.d	$a2, $s8, 304
	slli.d	$a3, $fp, 1
	ldx.bu	$a3, $a4, $a3
	ld.bu	$a1, $a1, 1
	or	$a2, $a2, $s1
	st.d	$a2, $s8, 304
	ld.d	$a2, $sp, 272                   # 8-byte Folded Reload
	slli.d	$a2, $a2, 8
	ld.d	$a4, $sp, 344                   # 8-byte Folded Reload
	add.d	$a2, $a4, $a2
	add.d	$a2, $a2, $s3
	alsl.d	$a1, $a1, $a2, 4
	slli.d	$a2, $a3, 2
	addi.w	$s2, $s2, 1
	stx.w	$a0, $a1, $a2
	ori	$a0, $zero, 16
	bltu	$s2, $a0, .LBB15_77
.LBB15_83:                              # %.loopexit1199.us.us
                                        #   in Loop: Header=BB15_72 Depth=2
	ld.w	$a0, $s8, 40
	ld.d	$a1, $sp, 264                   # 8-byte Folded Reload
	addi.d	$a5, $a1, 1
	move	$s1, $s5
	and	$a1, $a0, $s5
	addi.w	$a1, $a1, 0
	addi.d	$a1, $a1, -10
	sltui	$a2, $a1, 1
	sltu	$a1, $zero, $a1
	stptr.w	$a5, $ra, 5608
	stptr.w	$s6, $ra, 5612
	sub.d	$s5, $zero, $a1
	addi.w	$a1, $a0, -9
	sltui	$a3, $a1, 6
	ori	$a4, $zero, 51
	srl.d	$a1, $a4, $a1
	and	$a1, $a3, $a1
	addi.d	$a0, $a0, -12
	sltui	$a0, $a0, 1
	or	$a0, $a1, $a0
	stptr.w	$a0, $ra, 5616
	st.d	$a5, $sp, 248                   # 8-byte Folded Spill
	or	$a0, $a5, $s0
	ori	$a1, $zero, 1
	sll.d	$s2, $a1, $a0
	addi.w	$s4, $a2, -1
	ld.d	$s6, $sp, 128                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB15_84:                              #   Parent Loop BB15_69 Depth=1
                                        #     Parent Loop BB15_72 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.wu	$a0, $s8, 40
	and	$a0, $a0, $s1
	addi.w	$a0, $a0, 0
	addi.d	$a0, $a0, -10
	sltui	$a0, $a0, 1
	ldptr.w	$a1, $ra, 5616
	ori	$a2, $zero, 5
	masknez	$a2, $a2, $a0
	ori	$a3, $zero, 1
	maskeqz	$a0, $a3, $a0
	or	$a0, $a0, $a2
	sltui	$a1, $a1, 1
	addi.d	$a2, $s4, 1
	sltui	$a2, $a2, 1
	ori	$a3, $zero, 9
	masknez	$a3, $a3, $a2
	ori	$a4, $zero, 7
	maskeqz	$a4, $a4, $a2
	or	$a3, $a4, $a3
	ori	$a4, $zero, 14
	masknez	$a4, $a4, $a2
	ori	$a5, $zero, 12
	maskeqz	$a2, $a5, $a2
	or	$a2, $a2, $a4
	masknez	$a3, $a3, $a1
	maskeqz	$a1, $a2, $a1
	or	$a1, $a1, $a3
	ld.d	$a2, $sp, 296                   # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(active_pps)
	ld.d	$a3, $sp, 288                   # 8-byte Folded Reload
	ld.d	$a3, $a3, 40
	slli.d	$a4, $a1, 2
	ld.d	$a5, $sp, 280                   # 8-byte Folded Reload
	ldx.w	$a4, $a5, $a4
	ld.w	$a5, $a2, 12
	st.w	$a0, $sp, 576
	st.w	$a1, $sp, 552
	ori	$a0, $zero, 56
	mul.d	$a0, $a4, $a0
	add.d	$a2, $a3, $a0
	beqz	$a5, .LBB15_86
# %bb.85:                               #   in Loop: Header=BB15_84 Depth=3
	ld.d	$a0, $a2, 0
	ld.w	$a0, $a0, 24
	beqz	$a0, .LBB15_87
.LBB15_86:                              #   in Loop: Header=BB15_84 Depth=3
	pcalau12i	$a0, %got_pc_hi20(linfo_levrun_inter)
	ld.d	$a0, $a0, %got_pc_lo12(linfo_levrun_inter)
	st.d	$a0, $sp, 584
	b	.LBB15_88
	.p2align	4, , 16
.LBB15_87:                              #   in Loop: Header=BB15_84 Depth=3
	pcalau12i	$a0, %got_pc_hi20(readRunLevel_CABAC)
	ld.d	$a0, $a0, %got_pc_lo12(readRunLevel_CABAC)
	st.d	$a0, $sp, 592
.LBB15_88:                              #   in Loop: Header=BB15_84 Depth=3
	ld.d	$a3, $a2, 48
	addi.d	$a0, $sp, 552
	move	$a1, $ra
	jirl	$ra, $a3, 0
	ld.d	$ra, $sp, 304                   # 8-byte Folded Reload
	ld.w	$a0, $sp, 556
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	alsl.d	$fp, $a1, $a1, 1
	beqz	$a0, .LBB15_90
# %bb.89:                               #   in Loop: Header=BB15_84 Depth=3
	ld.w	$a1, $sp, 560
	add.d	$a1, $s5, $a1
	addi.w	$s5, $a1, 1
	ld.d	$a4, $sp, 336                   # 8-byte Folded Reload
	alsl.d	$a1, $s5, $a4, 1
	ld.d	$a2, $s8, 304
	slli.d	$a3, $s5, 1
	ldx.bu	$a3, $a4, $a3
	ld.bu	$a1, $a1, 1
	or	$a2, $a2, $s2
	st.d	$a2, $s8, 304
	slli.d	$a2, $fp, 8
	ld.d	$a4, $sp, 344                   # 8-byte Folded Reload
	add.d	$a2, $a4, $a2
	add.d	$a2, $a2, $s3
	alsl.d	$a1, $a1, $a2, 4
	slli.d	$a2, $a3, 2
	addi.w	$s4, $s4, 1
	stx.w	$a0, $a1, $a2
	ori	$a0, $zero, 16
	bltu	$s4, $a0, .LBB15_84
.LBB15_90:                              # %.loopexit1199.us.us.1
                                        #   in Loop: Header=BB15_72 Depth=2
	ld.w	$a0, $s8, 40
	and	$a1, $a0, $s1
	addi.w	$a1, $a1, 0
	addi.d	$a1, $a1, -10
	sltui	$a2, $a1, 1
	sltu	$a1, $zero, $a1
	ld.d	$a5, $sp, 264                   # 8-byte Folded Reload
	stptr.w	$a5, $ra, 5608
	stptr.w	$s6, $ra, 5612
	sub.d	$s5, $zero, $a1
	addi.w	$a1, $a0, -9
	sltui	$a3, $a1, 6
	ori	$a4, $zero, 51
	srl.d	$a1, $a4, $a1
	and	$a1, $a3, $a1
	addi.d	$a0, $a0, -12
	sltui	$a0, $a0, 1
	or	$a0, $a1, $a0
	stptr.w	$a0, $ra, 5616
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	or	$a0, $a5, $a0
	ori	$a1, $zero, 1
	sll.d	$s2, $a1, $a0
	addi.w	$s4, $a2, -1
	.p2align	4, , 16
.LBB15_91:                              #   Parent Loop BB15_69 Depth=1
                                        #     Parent Loop BB15_72 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.wu	$a0, $s8, 40
	and	$a0, $a0, $s1
	addi.w	$a0, $a0, 0
	addi.d	$a0, $a0, -10
	sltui	$a0, $a0, 1
	ldptr.w	$a1, $ra, 5616
	ori	$a2, $zero, 5
	masknez	$a2, $a2, $a0
	ori	$a3, $zero, 1
	maskeqz	$a0, $a3, $a0
	or	$a0, $a0, $a2
	sltui	$a1, $a1, 1
	addi.d	$a2, $s4, 1
	sltui	$a2, $a2, 1
	ori	$a3, $zero, 9
	masknez	$a3, $a3, $a2
	ori	$a4, $zero, 7
	maskeqz	$a4, $a4, $a2
	or	$a3, $a4, $a3
	ori	$a4, $zero, 14
	masknez	$a4, $a4, $a2
	ori	$a5, $zero, 12
	maskeqz	$a2, $a5, $a2
	or	$a2, $a2, $a4
	masknez	$a3, $a3, $a1
	maskeqz	$a1, $a2, $a1
	or	$a1, $a1, $a3
	ld.d	$a2, $sp, 296                   # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(active_pps)
	ld.d	$a3, $sp, 288                   # 8-byte Folded Reload
	ld.d	$a3, $a3, 40
	slli.d	$a4, $a1, 2
	ld.d	$a5, $sp, 280                   # 8-byte Folded Reload
	ldx.w	$a4, $a5, $a4
	ld.w	$a5, $a2, 12
	st.w	$a0, $sp, 576
	st.w	$a1, $sp, 552
	ori	$a0, $zero, 56
	mul.d	$a0, $a4, $a0
	add.d	$a2, $a3, $a0
	beqz	$a5, .LBB15_93
# %bb.92:                               #   in Loop: Header=BB15_91 Depth=3
	ld.d	$a0, $a2, 0
	ld.w	$a0, $a0, 24
	beqz	$a0, .LBB15_94
.LBB15_93:                              #   in Loop: Header=BB15_91 Depth=3
	pcalau12i	$a0, %got_pc_hi20(linfo_levrun_inter)
	ld.d	$a0, $a0, %got_pc_lo12(linfo_levrun_inter)
	st.d	$a0, $sp, 584
	b	.LBB15_95
	.p2align	4, , 16
.LBB15_94:                              #   in Loop: Header=BB15_91 Depth=3
	pcalau12i	$a0, %got_pc_hi20(readRunLevel_CABAC)
	ld.d	$a0, $a0, %got_pc_lo12(readRunLevel_CABAC)
	st.d	$a0, $sp, 592
.LBB15_95:                              #   in Loop: Header=BB15_91 Depth=3
	ld.d	$a3, $a2, 48
	addi.d	$a0, $sp, 552
	move	$a1, $ra
	jirl	$ra, $a3, 0
	ld.d	$ra, $sp, 304                   # 8-byte Folded Reload
	ld.w	$a0, $sp, 556
	slli.d	$s3, $s6, 6
	beqz	$a0, .LBB15_97
# %bb.96:                               #   in Loop: Header=BB15_91 Depth=3
	ld.w	$a1, $sp, 560
	add.d	$a1, $s5, $a1
	addi.w	$s5, $a1, 1
	ld.d	$a4, $sp, 336                   # 8-byte Folded Reload
	alsl.d	$a1, $s5, $a4, 1
	ld.d	$a2, $s8, 304
	slli.d	$a3, $s5, 1
	ldx.bu	$a3, $a4, $a3
	ld.bu	$a1, $a1, 1
	or	$a2, $a2, $s2
	st.d	$a2, $s8, 304
	ld.d	$a2, $sp, 272                   # 8-byte Folded Reload
	slli.d	$a2, $a2, 8
	ld.d	$a4, $sp, 344                   # 8-byte Folded Reload
	add.d	$a2, $a4, $a2
	add.d	$a2, $a2, $s3
	alsl.d	$a1, $a1, $a2, 4
	slli.d	$a2, $a3, 2
	addi.w	$s4, $s4, 1
	stx.w	$a0, $a1, $a2
	ori	$a0, $zero, 16
	bltu	$s4, $a0, .LBB15_91
.LBB15_97:                              # %.loopexit1199.us.us.11395
                                        #   in Loop: Header=BB15_72 Depth=2
	ld.w	$a0, $s8, 40
	and	$a1, $a0, $s1
	addi.w	$a1, $a1, 0
	addi.d	$a1, $a1, -10
	sltui	$a2, $a1, 1
	sltu	$a1, $zero, $a1
	ld.d	$a5, $sp, 248                   # 8-byte Folded Reload
	stptr.w	$a5, $ra, 5608
	stptr.w	$s6, $ra, 5612
	sub.d	$s5, $zero, $a1
	addi.w	$a1, $a0, -9
	sltui	$a3, $a1, 6
	ori	$a4, $zero, 51
	srl.d	$a1, $a4, $a1
	and	$a1, $a3, $a1
	addi.d	$a0, $a0, -12
	sltui	$a0, $a0, 1
	or	$a0, $a1, $a0
	stptr.w	$a0, $ra, 5616
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	or	$a0, $a5, $a0
	ori	$a1, $zero, 1
	sll.d	$s6, $a1, $a0
	addi.w	$s2, $a2, -1
	.p2align	4, , 16
.LBB15_98:                              #   Parent Loop BB15_69 Depth=1
                                        #     Parent Loop BB15_72 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.wu	$a0, $s8, 40
	and	$a0, $a0, $s1
	addi.w	$a0, $a0, 0
	addi.d	$a0, $a0, -10
	sltui	$a0, $a0, 1
	ldptr.w	$a1, $ra, 5616
	ori	$a2, $zero, 5
	masknez	$a2, $a2, $a0
	ori	$a3, $zero, 1
	maskeqz	$a0, $a3, $a0
	or	$a0, $a0, $a2
	sltui	$a1, $a1, 1
	addi.d	$a2, $s2, 1
	sltui	$a2, $a2, 1
	ori	$a3, $zero, 9
	masknez	$a3, $a3, $a2
	ori	$a4, $zero, 7
	maskeqz	$a4, $a4, $a2
	or	$a3, $a4, $a3
	ori	$a4, $zero, 14
	masknez	$a4, $a4, $a2
	ori	$a5, $zero, 12
	maskeqz	$a2, $a5, $a2
	or	$a2, $a2, $a4
	masknez	$a3, $a3, $a1
	maskeqz	$a1, $a2, $a1
	or	$a1, $a1, $a3
	ld.d	$a2, $sp, 296                   # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(active_pps)
	ld.d	$a3, $sp, 288                   # 8-byte Folded Reload
	ld.d	$a3, $a3, 40
	slli.d	$a4, $a1, 2
	ld.d	$a5, $sp, 280                   # 8-byte Folded Reload
	ldx.w	$a4, $a5, $a4
	ld.w	$a5, $a2, 12
	st.w	$a0, $sp, 576
	st.w	$a1, $sp, 552
	ori	$a0, $zero, 56
	mul.d	$a0, $a4, $a0
	add.d	$a2, $a3, $a0
	beqz	$a5, .LBB15_100
# %bb.99:                               #   in Loop: Header=BB15_98 Depth=3
	ld.d	$a0, $a2, 0
	ld.w	$a0, $a0, 24
	beqz	$a0, .LBB15_101
.LBB15_100:                             #   in Loop: Header=BB15_98 Depth=3
	pcalau12i	$a0, %got_pc_hi20(linfo_levrun_inter)
	ld.d	$a0, $a0, %got_pc_lo12(linfo_levrun_inter)
	st.d	$a0, $sp, 584
	b	.LBB15_102
	.p2align	4, , 16
.LBB15_101:                             #   in Loop: Header=BB15_98 Depth=3
	pcalau12i	$a0, %got_pc_hi20(readRunLevel_CABAC)
	ld.d	$a0, $a0, %got_pc_lo12(readRunLevel_CABAC)
	st.d	$a0, $sp, 592
.LBB15_102:                             #   in Loop: Header=BB15_98 Depth=3
	ld.d	$a3, $a2, 48
	addi.d	$a0, $sp, 552
	move	$a1, $ra
	jirl	$ra, $a3, 0
	ld.d	$ra, $sp, 304                   # 8-byte Folded Reload
	ld.w	$a0, $sp, 556
	beqz	$a0, .LBB15_71
# %bb.103:                              #   in Loop: Header=BB15_98 Depth=3
	ld.w	$a1, $sp, 560
	add.d	$a1, $s5, $a1
	addi.w	$s5, $a1, 1
	ld.d	$a4, $sp, 336                   # 8-byte Folded Reload
	alsl.d	$a1, $s5, $a4, 1
	ld.d	$a2, $s8, 304
	slli.d	$a3, $s5, 1
	ldx.bu	$a3, $a4, $a3
	ld.bu	$a1, $a1, 1
	or	$a2, $a2, $s6
	st.d	$a2, $s8, 304
	slli.d	$a2, $fp, 8
	ld.d	$a4, $sp, 344                   # 8-byte Folded Reload
	add.d	$a2, $a4, $a2
	add.d	$a2, $a2, $s3
	alsl.d	$a1, $a1, $a2, 4
	slli.d	$a2, $a3, 2
	addi.w	$s2, $s2, 1
	stx.w	$a0, $a1, $a2
	ori	$a0, $zero, 16
	bltu	$s2, $a0, .LBB15_98
	b	.LBB15_71
	.p2align	4, , 16
.LBB15_104:                             # %.preheader1204
                                        #   in Loop: Header=BB15_72 Depth=2
	ori	$a0, $zero, 1
	sll.w	$a0, $a0, $a2
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	and	$a0, $a0, $a1
	st.d	$a0, $sp, 240                   # 8-byte Folded Spill
	or	$a0, $a5, $s0
	ori	$a1, $zero, 51
	sll.w	$fp, $a1, $a0
	slli.d	$s1, $a5, 2
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	alsl.d	$a1, $a5, $a0, 1
	st.d	$a1, $sp, 192                   # 8-byte Folded Spill
	addi.d	$s4, $a5, 1
	alsl.d	$a0, $s4, $a0, 1
	st.d	$a0, $sp, 184                   # 8-byte Folded Spill
	b	.LBB15_107
	.p2align	4, , 16
.LBB15_105:                             # %.preheader1202.split.us
                                        #   in Loop: Header=BB15_107 Depth=3
	ld.wu	$a0, $ra, 4
	ldptr.d	$a1, $ra, 5560
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $a1, $a0
	ld.d	$a3, $sp, 264                   # 8-byte Folded Reload
	slli.d	$a2, $a3, 3
	ldx.d	$a0, $a0, $a2
	stx.w	$zero, $a0, $a4
	ld.wu	$a0, $ra, 4
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $a1, $a0
	alsl.d	$a0, $a3, $a0, 3
	ld.d	$a0, $a0, 8
	stx.w	$zero, $a0, $a4
.LBB15_106:                             # %.split.us
                                        #   in Loop: Header=BB15_107 Depth=3
	addi.d	$s6, $s6, 1
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	beq	$s6, $a0, .LBB15_71
.LBB15_107:                             # %.preheader1202
                                        #   Parent Loop BB15_69 Depth=1
                                        #     Parent Loop BB15_72 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB15_119 Depth 4
                                        #         Child Loop BB15_135 Depth 4
                                        #         Child Loop BB15_141 Depth 4
                                        #         Child Loop BB15_151 Depth 4
                                        #         Child Loop BB15_113 Depth 4
                                        #         Child Loop BB15_124 Depth 4
                                        #         Child Loop BB15_130 Depth 4
                                        #         Child Loop BB15_146 Depth 4
	slli.d	$a4, $s6, 2
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	beqz	$a0, .LBB15_105
# %bb.108:                              # %.preheader1202.split
                                        #   in Loop: Header=BB15_107 Depth=3
	st.d	$a4, $sp, 232                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	sub.d	$a0, $s6, $a0
	ld.wu	$a1, $s8, 40
	ld.d	$a2, $sp, 224                   # 8-byte Folded Reload
	alsl.d	$a0, $a0, $a2, 1
	st.d	$a0, $sp, 248                   # 8-byte Folded Spill
	addi.w	$s3, $zero, -5
	lu32i.d	$s3, 0
	and	$a0, $a1, $s3
	addi.w	$a0, $a0, 0
	addi.d	$a0, $a0, -10
	sltui	$a0, $a0, 1
	slli.d	$a2, $a0, 1
	slli.d	$s5, $s6, 6
	ld.d	$s2, $sp, 200                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	beqz	$a0, .LBB15_115
# %bb.109:                              # %.preheader1202.split.split.us.preheader
                                        #   in Loop: Header=BB15_107 Depth=3
	addi.d	$a5, $sp, 488
	addi.d	$a6, $sp, 424
	addi.d	$a7, $sp, 420
	move	$a0, $ra
	ld.d	$a3, $sp, 264                   # 8-byte Folded Reload
	move	$a4, $s6
	pcaddu18i	$ra, %call36(readCoeff4x4_CAVLC)
	jirl	$ra, $ra, 0
	ld.wu	$a0, $s8, 40
	and	$a0, $a0, $s3
	addi.w	$a1, $a0, 0
	ld.w	$a2, $s8, 396
	ld.w	$t1, $sp, 420
	addi.d	$a1, $a1, -10
	sltu	$a1, $zero, $a1
	sub.d	$a1, $zero, $a1
	beqz	$a2, .LBB15_121
# %bb.110:                              # %.preheader1192.us
                                        #   in Loop: Header=BB15_107 Depth=3
	ld.d	$a0, $sp, 304                   # 8-byte Folded Reload
	ori	$a2, $zero, 1
	move	$t3, $s4
	blt	$t1, $a2, .LBB15_126
# %bb.111:                              # %.lr.ph1248.us
                                        #   in Loop: Header=BB15_107 Depth=3
	ld.d	$a2, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 248                   # 8-byte Folded Reload
	alsl.d	$a2, $a3, $a2, 1
	addi.d	$a3, $sp, 488
	addi.d	$a4, $sp, 424
	b	.LBB15_113
	.p2align	4, , 16
.LBB15_112:                             #   in Loop: Header=BB15_113 Depth=4
	addi.d	$a3, $a3, 4
	addi.d	$t1, $t1, -1
	addi.d	$a4, $a4, 4
	beqz	$t1, .LBB15_126
.LBB15_113:                             #   Parent Loop BB15_69 Depth=1
                                        #     Parent Loop BB15_72 Depth=2
                                        #       Parent Loop BB15_107 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.w	$a5, $a3, 0
	beqz	$a5, .LBB15_112
# %bb.114:                              #   in Loop: Header=BB15_113 Depth=4
	ld.w	$a6, $a4, 0
	ld.d	$a7, $s8, 304
	add.d	$a1, $a1, $a6
	addi.d	$a1, $a1, 1
	or	$a6, $a7, $fp
	st.d	$a6, $s8, 304
	slli.w	$a6, $a1, 2
	alsl.d	$a7, $a6, $a2, 1
	slli.d	$a6, $a6, 1
	ld.bu	$a7, $a7, 1
	ldx.bu	$a6, $a2, $a6
	add.d	$a7, $s0, $a7
	add.d	$a6, $s1, $a6
	slli.d	$a7, $a7, 6
	ld.d	$t0, $sp, 320                   # 8-byte Folded Reload
	add.d	$a7, $t0, $a7
	slli.d	$a6, $a6, 2
	stx.w	$a5, $a7, $a6
	b	.LBB15_112
	.p2align	4, , 16
.LBB15_115:                             # %.preheader1202.split.split.preheader
                                        #   in Loop: Header=BB15_107 Depth=3
	addi.d	$a5, $sp, 488
	addi.d	$a6, $sp, 424
	addi.d	$a7, $sp, 420
	move	$a0, $ra
	ld.d	$a3, $sp, 264                   # 8-byte Folded Reload
	move	$a4, $s6
	pcaddu18i	$ra, %call36(readCoeff4x4_CAVLC)
	jirl	$ra, $ra, 0
	ld.wu	$a0, $s8, 40
	and	$a0, $a0, $s3
	addi.w	$a1, $a0, 0
	ld.w	$a2, $s8, 396
	ld.w	$t2, $sp, 420
	addi.d	$a1, $a1, -10
	sltu	$a1, $zero, $a1
	sub.d	$a1, $zero, $a1
	beqz	$a2, .LBB15_132
# %bb.116:                              # %.preheader1196
                                        #   in Loop: Header=BB15_107 Depth=3
	ld.d	$a0, $sp, 304                   # 8-byte Folded Reload
	ori	$a2, $zero, 1
	move	$t3, $s4
	blt	$t2, $a2, .LBB15_137
# %bb.117:                              # %.lr.ph1240
                                        #   in Loop: Header=BB15_107 Depth=3
	ld.d	$a2, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 248                   # 8-byte Folded Reload
	alsl.d	$a2, $a3, $a2, 1
	addi.d	$a3, $sp, 424
	addi.d	$a4, $sp, 488
	b	.LBB15_119
	.p2align	4, , 16
.LBB15_118:                             #   in Loop: Header=BB15_119 Depth=4
	addi.d	$a3, $a3, 4
	addi.d	$t2, $t2, -1
	addi.d	$a4, $a4, 4
	beqz	$t2, .LBB15_137
.LBB15_119:                             #   Parent Loop BB15_69 Depth=1
                                        #     Parent Loop BB15_72 Depth=2
                                        #       Parent Loop BB15_107 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.w	$a5, $a4, 0
	beqz	$a5, .LBB15_118
# %bb.120:                              #   in Loop: Header=BB15_119 Depth=4
	ld.w	$a6, $a3, 0
	ld.d	$a7, $s8, 304
	add.d	$a1, $a1, $a6
	addi.d	$a1, $a1, 1
	or	$a6, $a7, $fp
	st.d	$a6, $s8, 304
	slli.w	$a6, $a1, 2
	alsl.d	$a7, $a6, $a2, 1
	ld.bu	$a7, $a7, 1
	slli.d	$a6, $a6, 1
	ldx.bu	$a6, $a2, $a6
	slli.d	$t0, $a7, 5
	add.d	$t0, $s2, $t0
	slli.d	$t1, $a6, 2
	ldx.w	$t0, $t0, $t1
	mul.d	$a5, $t0, $a5
	sll.w	$a5, $a5, $s7
	addi.w	$a5, $a5, 32
	srli.d	$a5, $a5, 6
	add.d	$a7, $s0, $a7
	add.d	$a6, $s1, $a6
	slli.d	$a7, $a7, 6
	ld.d	$t0, $sp, 320                   # 8-byte Folded Reload
	add.d	$a7, $t0, $a7
	slli.d	$a6, $a6, 2
	stx.w	$a5, $a7, $a6
	b	.LBB15_118
.LBB15_121:                             # %.preheader1190.us
                                        #   in Loop: Header=BB15_107 Depth=3
	ld.d	$a0, $sp, 304                   # 8-byte Folded Reload
	move	$t3, $s4
	blez	$t1, .LBB15_126
# %bb.122:                              # %.lr.ph1251.us
                                        #   in Loop: Header=BB15_107 Depth=3
	ld.d	$a2, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 232                   # 8-byte Folded Reload
	or	$a2, $a2, $a3
	ori	$a3, $zero, 1
	sll.d	$a2, $a3, $a2
	addi.d	$a3, $sp, 488
	addi.d	$a4, $sp, 424
	b	.LBB15_124
	.p2align	4, , 16
.LBB15_123:                             #   in Loop: Header=BB15_124 Depth=4
	addi.d	$a3, $a3, 4
	addi.d	$t1, $t1, -1
	addi.d	$a4, $a4, 4
	beqz	$t1, .LBB15_126
.LBB15_124:                             #   Parent Loop BB15_69 Depth=1
                                        #     Parent Loop BB15_72 Depth=2
                                        #       Parent Loop BB15_107 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.w	$a5, $a3, 0
	beqz	$a5, .LBB15_123
# %bb.125:                              #   in Loop: Header=BB15_124 Depth=4
	ld.w	$a6, $a4, 0
	add.d	$a1, $a1, $a6
	addi.w	$a1, $a1, 1
	ld.d	$t2, $sp, 336                   # 8-byte Folded Reload
	alsl.d	$a6, $a1, $t2, 1
	ld.d	$a7, $s8, 304
	slli.d	$t0, $a1, 1
	ldx.bu	$t0, $t2, $t0
	ld.bu	$a6, $a6, 1
	or	$a7, $a7, $a2
	st.d	$a7, $s8, 304
	ld.d	$a7, $sp, 272                   # 8-byte Folded Reload
	slli.d	$a7, $a7, 8
	ld.d	$t2, $sp, 344                   # 8-byte Folded Reload
	add.d	$a7, $t2, $a7
	add.d	$a7, $a7, $s5
	alsl.d	$a6, $a6, $a7, 4
	slli.d	$a7, $t0, 2
	stx.w	$a5, $a6, $a7
	b	.LBB15_123
	.p2align	4, , 16
.LBB15_126:                             # %.loopexit1191.us
                                        #   in Loop: Header=BB15_107 Depth=3
	ld.wu	$a1, $s8, 40
	and	$a1, $a1, $s3
	addi.w	$a1, $a1, 0
	addi.d	$a1, $a1, -10
	sltui	$a1, $a1, 1
	slli.d	$a2, $a1, 1
	addi.d	$a5, $sp, 488
	addi.d	$a6, $sp, 424
	addi.d	$a7, $sp, 420
	move	$a3, $t3
	move	$a4, $s6
	pcaddu18i	$ra, %call36(readCoeff4x4_CAVLC)
	jirl	$ra, $ra, 0
	ld.wu	$a0, $s8, 40
	and	$a0, $a0, $s3
	addi.w	$a1, $a0, 0
	ld.w	$a2, $s8, 396
	ld.w	$a0, $sp, 420
	addi.d	$a1, $a1, -10
	sltu	$a1, $zero, $a1
	sub.d	$a1, $zero, $a1
	beqz	$a2, .LBB15_143
# %bb.127:                              # %.preheader1192.us.1
                                        #   in Loop: Header=BB15_107 Depth=3
	ld.d	$ra, $sp, 304                   # 8-byte Folded Reload
	ori	$a2, $zero, 1
	blt	$a0, $a2, .LBB15_106
# %bb.128:                              # %.lr.ph1248.us.1
                                        #   in Loop: Header=BB15_107 Depth=3
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 248                   # 8-byte Folded Reload
	alsl.d	$a2, $a3, $a2, 1
	addi.d	$a3, $sp, 424
	addi.d	$a4, $sp, 488
	b	.LBB15_130
	.p2align	4, , 16
.LBB15_129:                             #   in Loop: Header=BB15_130 Depth=4
	addi.d	$a0, $a0, -1
	addi.d	$a3, $a3, 4
	addi.d	$a4, $a4, 4
	beqz	$a0, .LBB15_106
.LBB15_130:                             #   Parent Loop BB15_69 Depth=1
                                        #     Parent Loop BB15_72 Depth=2
                                        #       Parent Loop BB15_107 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.w	$a5, $a4, 0
	beqz	$a5, .LBB15_129
# %bb.131:                              #   in Loop: Header=BB15_130 Depth=4
	ld.w	$a6, $a3, 0
	ld.d	$a7, $s8, 304
	add.d	$a1, $a1, $a6
	addi.d	$a1, $a1, 1
	or	$a6, $a7, $fp
	st.d	$a6, $s8, 304
	slli.w	$a6, $a1, 2
	alsl.d	$a7, $a6, $a2, 1
	slli.d	$a6, $a6, 1
	ld.bu	$a7, $a7, 1
	ldx.bu	$a6, $a2, $a6
	add.d	$a7, $s0, $a7
	add.d	$a6, $s1, $a6
	slli.d	$a7, $a7, 6
	ld.d	$t0, $sp, 320                   # 8-byte Folded Reload
	add.d	$a7, $t0, $a7
	slli.d	$a6, $a6, 2
	stx.w	$a5, $a7, $a6
	b	.LBB15_129
.LBB15_132:                             # %.preheader1194
                                        #   in Loop: Header=BB15_107 Depth=3
	ld.d	$a0, $sp, 304                   # 8-byte Folded Reload
	ori	$a2, $zero, 1
	move	$t3, $s4
	blt	$t2, $a2, .LBB15_137
# %bb.133:                              # %.lr.ph1243
                                        #   in Loop: Header=BB15_107 Depth=3
	ld.d	$a2, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 232                   # 8-byte Folded Reload
	or	$a2, $a2, $a3
	ori	$a3, $zero, 1
	sll.d	$a2, $a3, $a2
	addi.d	$a3, $sp, 424
	addi.d	$a4, $sp, 488
	b	.LBB15_135
	.p2align	4, , 16
.LBB15_134:                             #   in Loop: Header=BB15_135 Depth=4
	addi.d	$a3, $a3, 4
	addi.d	$t2, $t2, -1
	addi.d	$a4, $a4, 4
	beqz	$t2, .LBB15_137
.LBB15_135:                             #   Parent Loop BB15_69 Depth=1
                                        #     Parent Loop BB15_72 Depth=2
                                        #       Parent Loop BB15_107 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.w	$a5, $a4, 0
	beqz	$a5, .LBB15_134
# %bb.136:                              #   in Loop: Header=BB15_135 Depth=4
	ld.w	$a6, $a3, 0
	add.d	$a1, $a1, $a6
	addi.w	$a1, $a1, 1
	ld.d	$t0, $sp, 336                   # 8-byte Folded Reload
	alsl.d	$a6, $a1, $t0, 1
	slli.d	$a7, $a1, 1
	ld.bu	$a6, $a6, 1
	ldx.bu	$a7, $t0, $a7
	ld.d	$t0, $s8, 304
	ld.d	$t1, $sp, 312                   # 8-byte Folded Reload
	alsl.d	$t1, $a6, $t1, 4
	slli.d	$a7, $a7, 2
	ldx.w	$t1, $t1, $a7
	or	$t0, $t0, $a2
	st.d	$t0, $s8, 304
	mul.d	$a5, $t1, $a5
	sll.w	$a5, $a5, $s7
	addi.w	$a5, $a5, 8
	srli.d	$a5, $a5, 4
	ld.d	$t0, $sp, 272                   # 8-byte Folded Reload
	slli.d	$t0, $t0, 8
	ld.d	$t1, $sp, 344                   # 8-byte Folded Reload
	add.d	$t0, $t1, $t0
	add.d	$t0, $t0, $s5
	alsl.d	$a6, $a6, $t0, 4
	stx.w	$a5, $a6, $a7
	b	.LBB15_134
	.p2align	4, , 16
.LBB15_137:                             # %.loopexit1195
                                        #   in Loop: Header=BB15_107 Depth=3
	ld.wu	$a1, $s8, 40
	and	$a1, $a1, $s3
	addi.w	$a1, $a1, 0
	addi.d	$a1, $a1, -10
	sltui	$a1, $a1, 1
	slli.d	$a2, $a1, 1
	addi.d	$a5, $sp, 488
	addi.d	$a6, $sp, 424
	addi.d	$a7, $sp, 420
	move	$a3, $t3
	move	$a4, $s6
	pcaddu18i	$ra, %call36(readCoeff4x4_CAVLC)
	jirl	$ra, $ra, 0
	ld.wu	$a0, $s8, 40
	and	$a0, $a0, $s3
	addi.w	$a1, $a0, 0
	ld.w	$a2, $s8, 396
	ld.w	$a0, $sp, 420
	addi.d	$a1, $a1, -10
	sltu	$a1, $zero, $a1
	sub.d	$a1, $zero, $a1
	beqz	$a2, .LBB15_148
# %bb.138:                              # %.preheader1196.1
                                        #   in Loop: Header=BB15_107 Depth=3
	ld.d	$ra, $sp, 304                   # 8-byte Folded Reload
	ori	$a2, $zero, 1
	blt	$a0, $a2, .LBB15_106
# %bb.139:                              # %.lr.ph1240.1
                                        #   in Loop: Header=BB15_107 Depth=3
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 248                   # 8-byte Folded Reload
	alsl.d	$a2, $a3, $a2, 1
	addi.d	$a3, $sp, 424
	addi.d	$a4, $sp, 488
	b	.LBB15_141
	.p2align	4, , 16
.LBB15_140:                             #   in Loop: Header=BB15_141 Depth=4
	addi.d	$a0, $a0, -1
	addi.d	$a3, $a3, 4
	addi.d	$a4, $a4, 4
	beqz	$a0, .LBB15_106
.LBB15_141:                             #   Parent Loop BB15_69 Depth=1
                                        #     Parent Loop BB15_72 Depth=2
                                        #       Parent Loop BB15_107 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.w	$a5, $a4, 0
	beqz	$a5, .LBB15_140
# %bb.142:                              #   in Loop: Header=BB15_141 Depth=4
	ld.w	$a6, $a3, 0
	ld.d	$a7, $s8, 304
	add.d	$a1, $a1, $a6
	addi.d	$a1, $a1, 1
	or	$a6, $a7, $fp
	st.d	$a6, $s8, 304
	slli.w	$a6, $a1, 2
	alsl.d	$a7, $a6, $a2, 1
	ld.bu	$a7, $a7, 1
	slli.d	$a6, $a6, 1
	ldx.bu	$a6, $a2, $a6
	slli.d	$t0, $a7, 5
	add.d	$t0, $s2, $t0
	slli.d	$t1, $a6, 2
	ldx.w	$t0, $t0, $t1
	mul.d	$a5, $t0, $a5
	sll.w	$a5, $a5, $s7
	addi.w	$a5, $a5, 32
	srli.d	$a5, $a5, 6
	add.d	$a7, $s0, $a7
	add.d	$a6, $s1, $a6
	slli.d	$a7, $a7, 6
	ld.d	$t0, $sp, 320                   # 8-byte Folded Reload
	add.d	$a7, $t0, $a7
	slli.d	$a6, $a6, 2
	stx.w	$a5, $a7, $a6
	b	.LBB15_140
.LBB15_143:                             # %.preheader1190.us.1
                                        #   in Loop: Header=BB15_107 Depth=3
	ld.d	$ra, $sp, 304                   # 8-byte Folded Reload
	ori	$a2, $zero, 1
	blt	$a0, $a2, .LBB15_106
# %bb.144:                              # %.lr.ph1251.us.1
                                        #   in Loop: Header=BB15_107 Depth=3
	ld.d	$a2, $sp, 232                   # 8-byte Folded Reload
	or	$a2, $s4, $a2
	ori	$a3, $zero, 1
	sll.d	$a2, $a3, $a2
	addi.d	$a3, $sp, 424
	addi.d	$a4, $sp, 488
	b	.LBB15_146
	.p2align	4, , 16
.LBB15_145:                             #   in Loop: Header=BB15_146 Depth=4
	addi.d	$a0, $a0, -1
	addi.d	$a3, $a3, 4
	addi.d	$a4, $a4, 4
	beqz	$a0, .LBB15_106
.LBB15_146:                             #   Parent Loop BB15_69 Depth=1
                                        #     Parent Loop BB15_72 Depth=2
                                        #       Parent Loop BB15_107 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.w	$a5, $a4, 0
	beqz	$a5, .LBB15_145
# %bb.147:                              #   in Loop: Header=BB15_146 Depth=4
	ld.w	$a6, $a3, 0
	add.d	$a1, $a1, $a6
	addi.w	$a1, $a1, 1
	ld.d	$t1, $sp, 336                   # 8-byte Folded Reload
	alsl.d	$a6, $a1, $t1, 1
	ld.d	$a7, $s8, 304
	slli.d	$t0, $a1, 1
	ldx.bu	$t0, $t1, $t0
	ld.bu	$a6, $a6, 1
	or	$a7, $a7, $a2
	st.d	$a7, $s8, 304
	alsl.d	$a7, $s4, $s4, 1
	slli.d	$a7, $a7, 8
	ld.d	$t1, $sp, 344                   # 8-byte Folded Reload
	add.d	$a7, $t1, $a7
	add.d	$a7, $a7, $s5
	alsl.d	$a6, $a6, $a7, 4
	slli.d	$a7, $t0, 2
	stx.w	$a5, $a6, $a7
	b	.LBB15_145
.LBB15_148:                             # %.preheader1194.1
                                        #   in Loop: Header=BB15_107 Depth=3
	ld.d	$ra, $sp, 304                   # 8-byte Folded Reload
	ori	$a2, $zero, 1
	blt	$a0, $a2, .LBB15_106
# %bb.149:                              # %.lr.ph1243.1
                                        #   in Loop: Header=BB15_107 Depth=3
	ld.d	$a2, $sp, 232                   # 8-byte Folded Reload
	or	$a2, $s4, $a2
	ori	$a3, $zero, 1
	sll.d	$a2, $a3, $a2
	addi.d	$a3, $sp, 424
	addi.d	$a4, $sp, 488
	b	.LBB15_151
	.p2align	4, , 16
.LBB15_150:                             #   in Loop: Header=BB15_151 Depth=4
	addi.d	$a0, $a0, -1
	addi.d	$a3, $a3, 4
	addi.d	$a4, $a4, 4
	beqz	$a0, .LBB15_106
.LBB15_151:                             #   Parent Loop BB15_69 Depth=1
                                        #     Parent Loop BB15_72 Depth=2
                                        #       Parent Loop BB15_107 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.w	$a5, $a4, 0
	beqz	$a5, .LBB15_150
# %bb.152:                              #   in Loop: Header=BB15_151 Depth=4
	ld.w	$a6, $a3, 0
	add.d	$a1, $a1, $a6
	addi.w	$a1, $a1, 1
	ld.d	$t0, $sp, 336                   # 8-byte Folded Reload
	alsl.d	$a6, $a1, $t0, 1
	slli.d	$a7, $a1, 1
	ld.bu	$a6, $a6, 1
	ldx.bu	$a7, $t0, $a7
	ld.d	$t0, $s8, 304
	ld.d	$t1, $sp, 312                   # 8-byte Folded Reload
	alsl.d	$t1, $a6, $t1, 4
	slli.d	$a7, $a7, 2
	ldx.w	$t1, $t1, $a7
	or	$t0, $t0, $a2
	st.d	$t0, $s8, 304
	mul.d	$a5, $t1, $a5
	sll.w	$a5, $a5, $s7
	addi.w	$a5, $a5, 8
	srli.d	$a5, $a5, 4
	alsl.d	$t0, $s4, $s4, 1
	slli.d	$t0, $t0, 8
	ld.d	$t1, $sp, 344                   # 8-byte Folded Reload
	add.d	$t0, $t1, $t0
	add.d	$t0, $t0, $s5
	alsl.d	$a6, $a6, $t0, 4
	stx.w	$a5, $a6, $a7
	b	.LBB15_150
.LBB15_153:                             # %.preheader1203.us.preheader
                                        #   in Loop: Header=BB15_72 Depth=2
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	stptr.w	$a0, $ra, 5612
	stptr.w	$a3, $ra, 5608
	b	.LBB15_71
.LBB15_154:                             # %.preheader1203.preheader
                                        #   in Loop: Header=BB15_72 Depth=2
	st.d	$s5, $sp, 240                   # 8-byte Folded Spill
	addi.d	$fp, $a5, 1
	move	$s1, $s6
	b	.LBB15_156
	.p2align	4, , 16
.LBB15_155:                             # %.loopexit1201.1
                                        #   in Loop: Header=BB15_156 Depth=3
	addi.d	$s1, $s1, 1
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	beq	$s1, $a0, .LBB15_71
.LBB15_156:                             # %.preheader1203
                                        #   Parent Loop BB15_69 Depth=1
                                        #     Parent Loop BB15_72 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB15_157 Depth 4
                                        #         Child Loop BB15_164 Depth 4
	ld.w	$a0, $s8, 40
	slli.d	$a6, $s1, 2
	ld.d	$s3, $sp, 240                   # 8-byte Folded Reload
	lu32i.d	$s3, 0
	and	$a1, $a0, $s3
	addi.w	$a1, $a1, 0
	addi.d	$a1, $a1, -10
	sltui	$a2, $a1, 1
	sltu	$a1, $zero, $a1
	ld.d	$a5, $sp, 264                   # 8-byte Folded Reload
	stptr.w	$a5, $ra, 5608
	stptr.w	$s1, $ra, 5612
	sub.d	$s5, $zero, $a1
	addi.w	$a1, $a0, -9
	sltui	$a3, $a1, 6
	ori	$a4, $zero, 51
	srl.d	$a1, $a4, $a1
	and	$a1, $a3, $a1
	addi.d	$a0, $a0, -12
	sltui	$a0, $a0, 1
	or	$a0, $a1, $a0
	stptr.w	$a0, $ra, 5616
	st.d	$a6, $sp, 248                   # 8-byte Folded Spill
	or	$a0, $a5, $a6
	ori	$a1, $zero, 1
	sll.d	$s2, $a1, $a0
	addi.w	$s4, $a2, -1
	.p2align	4, , 16
.LBB15_157:                             #   Parent Loop BB15_69 Depth=1
                                        #     Parent Loop BB15_72 Depth=2
                                        #       Parent Loop BB15_156 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.wu	$a0, $s8, 40
	and	$a0, $a0, $s3
	addi.w	$a0, $a0, 0
	addi.d	$a0, $a0, -10
	sltui	$a0, $a0, 1
	ldptr.w	$a1, $ra, 5616
	ori	$a2, $zero, 5
	masknez	$a2, $a2, $a0
	ori	$a3, $zero, 1
	maskeqz	$a0, $a3, $a0
	or	$a0, $a0, $a2
	sltui	$a1, $a1, 1
	addi.d	$a2, $s4, 1
	sltui	$a2, $a2, 1
	ori	$a3, $zero, 9
	masknez	$a3, $a3, $a2
	ori	$a4, $zero, 7
	maskeqz	$a4, $a4, $a2
	or	$a3, $a4, $a3
	ori	$a4, $zero, 14
	masknez	$a4, $a4, $a2
	ori	$a5, $zero, 12
	maskeqz	$a2, $a5, $a2
	or	$a2, $a2, $a4
	masknez	$a3, $a3, $a1
	maskeqz	$a1, $a2, $a1
	or	$a1, $a1, $a3
	ld.d	$a2, $sp, 296                   # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(active_pps)
	ld.d	$a3, $sp, 288                   # 8-byte Folded Reload
	ld.d	$a3, $a3, 40
	slli.d	$a4, $a1, 2
	ld.d	$a5, $sp, 280                   # 8-byte Folded Reload
	ldx.w	$a4, $a5, $a4
	ld.w	$a5, $a2, 12
	st.w	$a0, $sp, 576
	st.w	$a1, $sp, 552
	ori	$a0, $zero, 56
	mul.d	$a0, $a4, $a0
	add.d	$a2, $a3, $a0
	beqz	$a5, .LBB15_159
# %bb.158:                              #   in Loop: Header=BB15_157 Depth=4
	ld.d	$a0, $a2, 0
	ld.w	$a0, $a0, 24
	beqz	$a0, .LBB15_160
.LBB15_159:                             #   in Loop: Header=BB15_157 Depth=4
	pcalau12i	$a0, %got_pc_hi20(linfo_levrun_inter)
	ld.d	$a0, $a0, %got_pc_lo12(linfo_levrun_inter)
	st.d	$a0, $sp, 584
	b	.LBB15_161
	.p2align	4, , 16
.LBB15_160:                             #   in Loop: Header=BB15_157 Depth=4
	pcalau12i	$a0, %got_pc_hi20(readRunLevel_CABAC)
	ld.d	$a0, $a0, %got_pc_lo12(readRunLevel_CABAC)
	st.d	$a0, $sp, 592
.LBB15_161:                             #   in Loop: Header=BB15_157 Depth=4
	ld.d	$a3, $a2, 48
	addi.d	$a0, $sp, 552
	move	$a1, $ra
	jirl	$ra, $a3, 0
	ld.d	$ra, $sp, 304                   # 8-byte Folded Reload
	ld.w	$a0, $sp, 556
	slli.d	$s6, $s1, 6
	beqz	$a0, .LBB15_163
# %bb.162:                              #   in Loop: Header=BB15_157 Depth=4
	ld.w	$a1, $sp, 560
	add.d	$a1, $s5, $a1
	addi.w	$s5, $a1, 1
	ld.d	$a3, $sp, 336                   # 8-byte Folded Reload
	alsl.d	$a1, $s5, $a3, 1
	slli.d	$a2, $s5, 1
	ld.bu	$a1, $a1, 1
	ldx.bu	$a2, $a3, $a2
	ld.d	$a3, $s8, 304
	ld.d	$a4, $sp, 312                   # 8-byte Folded Reload
	alsl.d	$a4, $a1, $a4, 4
	slli.d	$a2, $a2, 2
	ldx.w	$a4, $a4, $a2
	or	$a3, $a3, $s2
	st.d	$a3, $s8, 304
	mul.d	$a0, $a4, $a0
	sll.w	$a0, $a0, $s7
	addi.w	$a0, $a0, 8
	srli.d	$a0, $a0, 4
	ld.d	$a3, $sp, 272                   # 8-byte Folded Reload
	slli.d	$a3, $a3, 8
	ld.d	$a4, $sp, 344                   # 8-byte Folded Reload
	add.d	$a3, $a4, $a3
	add.d	$a3, $a3, $s6
	alsl.d	$a1, $a1, $a3, 4
	addi.w	$s4, $s4, 1
	stx.w	$a0, $a1, $a2
	ori	$a0, $zero, 16
	bltu	$s4, $a0, .LBB15_157
.LBB15_163:                             # %.loopexit1201
                                        #   in Loop: Header=BB15_156 Depth=3
	ld.w	$a0, $s8, 40
	and	$a1, $a0, $s3
	addi.w	$a1, $a1, 0
	addi.d	$a1, $a1, -10
	sltui	$a2, $a1, 1
	sltu	$a1, $zero, $a1
	stptr.w	$fp, $ra, 5608
	stptr.w	$s1, $ra, 5612
	sub.d	$s5, $zero, $a1
	addi.w	$a1, $a0, -9
	sltui	$a3, $a1, 6
	ori	$a4, $zero, 51
	srl.d	$a1, $a4, $a1
	and	$a1, $a3, $a1
	addi.d	$a0, $a0, -12
	sltui	$a0, $a0, 1
	or	$a0, $a1, $a0
	stptr.w	$a0, $ra, 5616
	ld.d	$a0, $sp, 248                   # 8-byte Folded Reload
	or	$a0, $fp, $a0
	ori	$a1, $zero, 1
	sll.d	$s2, $a1, $a0
	addi.w	$s4, $a2, -1
	.p2align	4, , 16
.LBB15_164:                             #   Parent Loop BB15_69 Depth=1
                                        #     Parent Loop BB15_72 Depth=2
                                        #       Parent Loop BB15_156 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.wu	$a0, $s8, 40
	and	$a0, $a0, $s3
	addi.w	$a0, $a0, 0
	addi.d	$a0, $a0, -10
	sltui	$a0, $a0, 1
	ldptr.w	$a1, $ra, 5616
	ori	$a2, $zero, 5
	masknez	$a2, $a2, $a0
	ori	$a3, $zero, 1
	maskeqz	$a0, $a3, $a0
	or	$a0, $a0, $a2
	sltui	$a1, $a1, 1
	addi.d	$a2, $s4, 1
	sltui	$a2, $a2, 1
	ori	$a3, $zero, 9
	masknez	$a3, $a3, $a2
	ori	$a4, $zero, 7
	maskeqz	$a4, $a4, $a2
	or	$a3, $a4, $a3
	ori	$a4, $zero, 14
	masknez	$a4, $a4, $a2
	ori	$a5, $zero, 12
	maskeqz	$a2, $a5, $a2
	or	$a2, $a2, $a4
	masknez	$a3, $a3, $a1
	maskeqz	$a1, $a2, $a1
	or	$a1, $a1, $a3
	ld.d	$a2, $sp, 296                   # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(active_pps)
	ld.d	$a3, $sp, 288                   # 8-byte Folded Reload
	ld.d	$a3, $a3, 40
	slli.d	$a4, $a1, 2
	ld.d	$a5, $sp, 280                   # 8-byte Folded Reload
	ldx.w	$a4, $a5, $a4
	ld.w	$a5, $a2, 12
	st.w	$a0, $sp, 576
	st.w	$a1, $sp, 552
	ori	$a0, $zero, 56
	mul.d	$a0, $a4, $a0
	add.d	$a2, $a3, $a0
	beqz	$a5, .LBB15_166
# %bb.165:                              #   in Loop: Header=BB15_164 Depth=4
	ld.d	$a0, $a2, 0
	ld.w	$a0, $a0, 24
	beqz	$a0, .LBB15_167
.LBB15_166:                             #   in Loop: Header=BB15_164 Depth=4
	pcalau12i	$a0, %got_pc_hi20(linfo_levrun_inter)
	ld.d	$a0, $a0, %got_pc_lo12(linfo_levrun_inter)
	st.d	$a0, $sp, 584
	b	.LBB15_168
	.p2align	4, , 16
.LBB15_167:                             #   in Loop: Header=BB15_164 Depth=4
	pcalau12i	$a0, %got_pc_hi20(readRunLevel_CABAC)
	ld.d	$a0, $a0, %got_pc_lo12(readRunLevel_CABAC)
	st.d	$a0, $sp, 592
.LBB15_168:                             #   in Loop: Header=BB15_164 Depth=4
	ld.d	$a3, $a2, 48
	addi.d	$a0, $sp, 552
	move	$a1, $ra
	jirl	$ra, $a3, 0
	ld.d	$ra, $sp, 304                   # 8-byte Folded Reload
	ld.w	$a0, $sp, 556
	beqz	$a0, .LBB15_155
# %bb.169:                              #   in Loop: Header=BB15_164 Depth=4
	ld.w	$a1, $sp, 560
	add.d	$a1, $s5, $a1
	addi.w	$s5, $a1, 1
	ld.d	$a3, $sp, 336                   # 8-byte Folded Reload
	alsl.d	$a1, $s5, $a3, 1
	slli.d	$a2, $s5, 1
	ld.bu	$a1, $a1, 1
	ldx.bu	$a2, $a3, $a2
	ld.d	$a3, $s8, 304
	ld.d	$a4, $sp, 312                   # 8-byte Folded Reload
	alsl.d	$a4, $a1, $a4, 4
	slli.d	$a2, $a2, 2
	ldx.w	$a4, $a4, $a2
	or	$a3, $a3, $s2
	st.d	$a3, $s8, 304
	mul.d	$a0, $a4, $a0
	sll.w	$a0, $a0, $s7
	addi.w	$a0, $a0, 8
	srli.d	$a0, $a0, 4
	alsl.d	$a3, $fp, $fp, 1
	slli.d	$a3, $a3, 8
	ld.d	$a4, $sp, 344                   # 8-byte Folded Reload
	add.d	$a3, $a4, $a3
	add.d	$a3, $a3, $s6
	alsl.d	$a1, $a1, $a3, 4
	addi.w	$s4, $s4, 1
	stx.w	$a0, $a1, $a2
	ori	$a0, $zero, 16
	bltu	$s4, $a0, .LBB15_164
	b	.LBB15_155
.LBB15_170:
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	ldx.w	$a0, $a0, $a1
	beqz	$a0, .LBB15_273
# %bb.171:                              # %.preheader1189
	ldptr.w	$a1, $ra, 5924
	ori	$a2, $zero, 1
	vrepli.b	$vr4, 0
	lu12i.w	$a0, -1
	blt	$a1, $a2, .LBB15_174
# %bb.172:                              # %.preheader1188.lr.ph
	lu12i.w	$a7, 1
	ori	$a1, $a7, 872
	add.d	$a1, $ra, $a1
	ori	$a2, $zero, 3
	ori	$a3, $a0, 1840
	ori	$a4, $a0, 1824
	ori	$a5, $a0, 1808
	ori	$a6, $a0, 1792
	ori	$a7, $a7, 1828
	.p2align	4, , 16
.LBB15_173:                             # %.preheader1188
                                        # =>This Inner Loop Header: Depth=1
	vstx	$vr4, $a1, $a3
	vstx	$vr4, $a1, $a4
	vstx	$vr4, $a1, $a5
	vstx	$vr4, $a1, $a6
	vst	$vr4, $a1, -1536
	vst	$vr4, $a1, -1520
	vst	$vr4, $a1, -1504
	vst	$vr4, $a1, -1488
	vst	$vr4, $a1, -768
	vst	$vr4, $a1, -752
	vst	$vr4, $a1, -736
	vst	$vr4, $a1, -720
	vst	$vr4, $a1, 0
	vst	$vr4, $a1, 16
	vst	$vr4, $a1, 32
	vst	$vr4, $a1, 48
	ldx.w	$t0, $ra, $a7
	addi.w	$t0, $t0, 3
	addi.d	$a2, $a2, 1
	addi.d	$a1, $a1, 64
	blt	$a2, $t0, .LBB15_173
.LBB15_174:                             # %._crit_edge
	ori	$a3, $zero, 16
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	blt	$a1, $a3, .LBB15_272
# %bb.175:                              # %.preheader1186
	move	$s4, $zero
	addi.d	$a1, $a2, -10
	sltu	$a1, $zero, $a1
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	addi.d	$a2, $a2, -3
	sltui	$a2, $a2, 1
	lu12i.w	$a3, 1
	ori	$a3, $a3, 1384
	add.d	$a3, $ra, $a3
	st.d	$a3, $sp, 312                   # 8-byte Folded Spill
	and	$a1, $a2, $a1
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	or	$a1, $a1, $a2
	ld.d	$a2, $sp, 208                   # 8-byte Folded Reload
	or	$a1, $a1, $a2
	ld.d	$a2, $sp, 8                     # 8-byte Folded Reload
	addi.d	$a3, $a2, 617
	st.d	$a3, $sp, 192                   # 8-byte Folded Spill
	addi.d	$a3, $a2, 681
	st.d	$a3, $sp, 184                   # 8-byte Folded Spill
	addi.d	$a3, $a2, 745
	st.d	$a3, $sp, 176                   # 8-byte Folded Spill
	addi.d	$a2, $a2, 809
	st.d	$a2, $sp, 240                   # 8-byte Folded Spill
	pcalau12i	$a2, %pc_hi20(InvLevelScale4x4Chroma_Inter)
	addi.d	$a2, $a2, %pc_lo12(InvLevelScale4x4Chroma_Inter)
	st.d	$a2, $sp, 232                   # 8-byte Folded Spill
	masknez	$a2, $a2, $a4
	pcalau12i	$a3, %pc_hi20(InvLevelScale4x4Chroma_Intra)
	addi.d	$a3, $a3, %pc_lo12(InvLevelScale4x4Chroma_Intra)
	st.d	$a3, $sp, 224                   # 8-byte Folded Spill
	maskeqz	$a3, $a3, $a4
	or	$a2, $a3, $a2
	st.d	$a2, $sp, 248                   # 8-byte Folded Spill
	ori	$s7, $zero, 8
	andi	$a1, $a1, 1
	st.d	$a1, $sp, 216                   # 8-byte Folded Spill
	lu12i.w	$a1, -16
	lu32i.d	$a1, 0
	st.d	$a1, $sp, 200                   # 8-byte Folded Spill
	ori	$a0, $a0, 1024
	st.d	$a0, $sp, 168                   # 8-byte Folded Spill
	ori	$s5, $zero, 56
	ori	$a2, $zero, 1
	ori	$s1, $zero, 4
	vst	$vr4, $sp, 320                  # 16-byte Folded Spill
	b	.LBB15_178
.LBB15_176:                             # %._crit_edge1301
                                        #   in Loop: Header=BB15_178 Depth=1
	ld.w	$a0, $sp, 388
	ori	$a3, $zero, 768
	mul.d	$a1, $s4, $a3
	ld.d	$a5, $sp, 344                   # 8-byte Folded Reload
	add.d	$a1, $a5, $a1
	st.w	$a0, $a1, 256
	ld.w	$a0, $sp, 392
	addi.d	$a2, $s4, 1
	mul.d	$a2, $a2, $a3
	ld.w	$a3, $sp, 396
	ld.w	$a4, $sp, 400
	add.d	$a2, $a5, $a2
	st.w	$a0, $a2, 256
	st.w	$a3, $a1, 320
	st.w	$a4, $a2, 320
	.p2align	4, , 16
.LBB15_177:                             # %.loopexit1174
                                        #   in Loop: Header=BB15_178 Depth=1
	addi.d	$s1, $s1, 4
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	andi	$a0, $a0, 1
	ori	$s4, $zero, 2
	move	$a2, $zero
	beqz	$a0, .LBB15_271
.LBB15_178:                             # =>This Loop Header: Depth=1
                                        #     Child Loop BB15_199 Depth 2
                                        #     Child Loop BB15_229 Depth 2
                                        #     Child Loop BB15_236 Depth 2
                                        #     Child Loop BB15_183 Depth 2
                                        #     Child Loop BB15_208 Depth 2
                                        #     Child Loop BB15_267 Depth 2
                                        #     Child Loop BB15_270 Depth 2
                                        #     Child Loop BB15_262 Depth 2
                                        #     Child Loop BB15_265 Depth 2
                                        #     Child Loop BB15_191 Depth 2
                                        #     Child Loop BB15_219 Depth 2
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	ldx.w	$a0, $a0, $a1
	srli.d	$s6, $s4, 1
	ori	$a1, $zero, 2
	st.d	$a2, $sp, 272                   # 8-byte Folded Spill
	beq	$a0, $a1, .LBB15_189
# %bb.179:                              #   in Loop: Header=BB15_178 Depth=1
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB15_197
# %bb.180:                              #   in Loop: Header=BB15_178 Depth=1
	ld.d	$a0, $sp, 296                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(active_pps)
	slli.d	$fp, $s6, 2
	ld.d	$a1, $sp, 312                   # 8-byte Folded Reload
	vst	$vr4, $a1, 0
	ld.w	$a0, $a0, 12
	addi.d	$a1, $sp, 404
	ldx.w	$a1, $fp, $a1
	st.d	$a1, $sp, 264                   # 8-byte Folded Spill
	beqz	$a0, .LBB15_205
# %bb.181:                              # %.preheader1179
                                        #   in Loop: Header=BB15_178 Depth=1
	ldptr.w	$a0, $ra, 5928
	bltz	$a0, .LBB15_210
# %bb.182:                              # %.lr.ph1293
                                        #   in Loop: Header=BB15_178 Depth=1
	slli.d	$a0, $s4, 1
	bstrpick.d	$a0, $a0, 31, 1
	slli.d	$a0, $a0, 1
	lu12i.w	$a1, 240
	sll.w	$s0, $a1, $a0
	addi.d	$s2, $zero, -1
	addi.d	$s3, $zero, -1
	.p2align	4, , 16
.LBB15_183:                             # %switch.lookup1797
                                        #   Parent Loop BB15_178 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a0, $s8, 40
	addi.w	$a1, $a0, -9
	sltui	$a2, $a1, 6
	ori	$a3, $zero, 51
	srl.d	$a1, $a3, $a1
	and	$a1, $a2, $a1
	addi.d	$a0, $a0, -12
	sltui	$a0, $a0, 1
	or	$a0, $a1, $a0
	ori	$a1, $zero, 13
	masknez	$a1, $a1, $a0
	maskeqz	$a2, $s7, $a0
	or	$a1, $a2, $a1
	stptr.w	$a0, $ra, 5616
	stptr.w	$s4, $ra, 5620
	ori	$a2, $zero, 52
	masknez	$a2, $a2, $a0
	ori	$a3, $zero, 32
	maskeqz	$a0, $a3, $a0
	ld.d	$a3, $sp, 296                   # 8-byte Folded Reload
	ld.d	$a3, $a3, %pc_lo12(active_pps)
	or	$a0, $a0, $a2
	ld.d	$a2, $sp, 288                   # 8-byte Folded Reload
	ld.d	$a2, $a2, 40
	ld.d	$a4, $sp, 280                   # 8-byte Folded Reload
	ldx.w	$a0, $a4, $a0
	ld.w	$a3, $a3, 12
	st.w	$a1, $sp, 552
	ori	$a1, $zero, 6
	st.w	$a1, $sp, 576
	mul.d	$a0, $a0, $s5
	add.d	$a2, $a2, $a0
	beqz	$a3, .LBB15_185
# %bb.184:                              #   in Loop: Header=BB15_183 Depth=2
	ld.d	$a0, $a2, 0
	ld.w	$a0, $a0, 24
	beqz	$a0, .LBB15_186
.LBB15_185:                             #   in Loop: Header=BB15_183 Depth=2
	pcalau12i	$a0, %got_pc_hi20(linfo_levrun_c2x2)
	ld.d	$a0, $a0, %got_pc_lo12(linfo_levrun_c2x2)
	st.d	$a0, $sp, 584
	b	.LBB15_187
	.p2align	4, , 16
.LBB15_186:                             #   in Loop: Header=BB15_183 Depth=2
	pcalau12i	$a0, %got_pc_hi20(readRunLevel_CABAC)
	ld.d	$a0, $a0, %got_pc_lo12(readRunLevel_CABAC)
	st.d	$a0, $sp, 592
.LBB15_187:                             #   in Loop: Header=BB15_183 Depth=2
	ld.d	$a3, $a2, 48
	addi.d	$a0, $sp, 552
	move	$a1, $ra
	jirl	$ra, $a3, 0
	ld.d	$ra, $sp, 304                   # 8-byte Folded Reload
	ld.w	$a0, $sp, 556
	vld	$vr4, $sp, 320                  # 16-byte Folded Reload
	beqz	$a0, .LBB15_210
# %bb.188:                              #   in Loop: Header=BB15_183 Depth=2
	ld.w	$a1, $sp, 560
	ld.d	$a2, $s8, 304
	add.d	$a1, $s3, $a1
	addi.w	$s3, $a1, 1
	slli.d	$a1, $s3, 2
	ld.d	$a3, $sp, 312                   # 8-byte Folded Reload
	stx.w	$a0, $a3, $a1
	ldptr.w	$a0, $ra, 5928
	or	$a1, $a2, $s0
	addi.w	$s2, $s2, 1
	st.d	$a1, $s8, 304
	blt	$s2, $a0, .LBB15_183
	b	.LBB15_210
	.p2align	4, , 16
.LBB15_189:                             #   in Loop: Header=BB15_178 Depth=1
	ld.d	$a0, $sp, 296                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(active_pps)
	vst	$vr4, $sp, 368
	slli.d	$a1, $s6, 2
	ld.d	$a2, $sp, 72                    # 8-byte Folded Reload
	ldx.w	$a1, $a2, $a1
	st.d	$a1, $sp, 264                   # 8-byte Folded Spill
	ld.w	$a0, $a0, 12
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	ldx.w	$a1, $ra, $a1
	st.d	$a1, $sp, 256                   # 8-byte Folded Spill
	vst	$vr4, $sp, 352
	pcalau12i	$a1, %pc_hi20(SCAN_YUV422)
	addi.d	$fp, $a1, %pc_lo12(SCAN_YUV422)
	beqz	$a0, .LBB15_216
# %bb.190:                              # %.preheader1184
                                        #   in Loop: Header=BB15_178 Depth=1
	slli.d	$a0, $s4, 2
	lu12i.w	$a1, 4080
	sll.d	$s0, $a1, $a0
	addi.d	$s2, $zero, -1
	addi.d	$s3, $zero, -1
	.p2align	4, , 16
.LBB15_191:                             # %switch.lookup1804
                                        #   Parent Loop BB15_178 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a0, $s8, 40
	addi.w	$a1, $a0, -9
	sltui	$a2, $a1, 6
	ori	$a3, $zero, 51
	srl.d	$a1, $a3, $a1
	and	$a1, $a2, $a1
	addi.d	$a0, $a0, -12
	sltui	$a0, $a0, 1
	or	$a0, $a1, $a0
	ori	$a1, $zero, 13
	masknez	$a1, $a1, $a0
	maskeqz	$a2, $s7, $a0
	or	$a1, $a2, $a1
	stptr.w	$a0, $ra, 5616
	stptr.w	$s4, $ra, 5620
	ori	$a2, $zero, 52
	masknez	$a2, $a2, $a0
	ori	$a3, $zero, 32
	maskeqz	$a0, $a3, $a0
	ld.d	$a3, $sp, 296                   # 8-byte Folded Reload
	ld.d	$a3, $a3, %pc_lo12(active_pps)
	or	$a0, $a0, $a2
	ld.d	$a2, $sp, 288                   # 8-byte Folded Reload
	ld.d	$a2, $a2, 40
	ld.d	$a4, $sp, 280                   # 8-byte Folded Reload
	ldx.w	$a0, $a4, $a0
	ld.w	$a3, $a3, 12
	st.w	$a1, $sp, 552
	st.w	$s7, $sp, 576
	mul.d	$a0, $a0, $s5
	add.d	$a2, $a2, $a0
	beqz	$a3, .LBB15_193
# %bb.192:                              #   in Loop: Header=BB15_191 Depth=2
	ld.d	$a0, $a2, 0
	ld.w	$a0, $a0, 24
	beqz	$a0, .LBB15_194
.LBB15_193:                             #   in Loop: Header=BB15_191 Depth=2
	pcalau12i	$a0, %got_pc_hi20(linfo_levrun_c2x2)
	ld.d	$a0, $a0, %got_pc_lo12(linfo_levrun_c2x2)
	st.d	$a0, $sp, 584
	b	.LBB15_195
	.p2align	4, , 16
.LBB15_194:                             #   in Loop: Header=BB15_191 Depth=2
	pcalau12i	$a0, %got_pc_hi20(readRunLevel_CABAC)
	ld.d	$a0, $a0, %got_pc_lo12(readRunLevel_CABAC)
	st.d	$a0, $sp, 592
.LBB15_195:                             #   in Loop: Header=BB15_191 Depth=2
	ld.d	$a3, $a2, 48
	addi.d	$a0, $sp, 552
	move	$a1, $ra
	jirl	$ra, $a3, 0
	ld.d	$ra, $sp, 304                   # 8-byte Folded Reload
	ld.w	$a0, $sp, 556
	vld	$vr4, $sp, 320                  # 16-byte Folded Reload
	beqz	$a0, .LBB15_221
# %bb.196:                              #   in Loop: Header=BB15_191 Depth=2
	ld.d	$a1, $s8, 304
	ld.w	$a2, $sp, 560
	or	$a1, $a1, $s0
	st.d	$a1, $s8, 304
	add.d	$a1, $s3, $a2
	addi.w	$s3, $a1, 1
	alsl.d	$a1, $s3, $fp, 1
	slli.d	$a2, $s3, 1
	ldx.bu	$a2, $fp, $a2
	ld.bu	$a1, $a1, 1
	addi.d	$a3, $sp, 352
	alsl.d	$a2, $a2, $a3, 4
	slli.d	$a1, $a1, 2
	addi.w	$s2, $s2, 1
	stx.w	$a0, $a2, $a1
	bltu	$s2, $s7, .LBB15_191
	b	.LBB15_221
	.p2align	4, , 16
.LBB15_197:                             #   in Loop: Header=BB15_178 Depth=1
	ld.d	$a0, $sp, 296                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(active_pps)
	ld.w	$a0, $a0, 12
	slli.d	$a1, $s4, 1
	addi.d	$fp, $a1, 4
	beqz	$a0, .LBB15_226
# %bb.198:                              # %.preheader1176
                                        #   in Loop: Header=BB15_178 Depth=1
	slli.d	$a0, $s4, 3
	ld.d	$a1, $sp, 200                   # 8-byte Folded Reload
	sll.d	$s3, $a1, $a0
	addi.d	$s0, $zero, -1
	addi.d	$s2, $zero, -1
	.p2align	4, , 16
.LBB15_199:                             # %switch.lookup1811
                                        #   Parent Loop BB15_178 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a0, $s8, 40
	addi.w	$a1, $a0, -9
	sltui	$a2, $a1, 6
	ori	$a3, $zero, 51
	srl.d	$a1, $a3, $a1
	and	$a1, $a2, $a1
	addi.d	$a0, $a0, -12
	sltui	$a0, $a0, 1
	or	$a0, $a1, $a0
	ori	$a1, $zero, 13
	masknez	$a1, $a1, $a0
	maskeqz	$a2, $s7, $a0
	or	$a1, $a2, $a1
	stptr.w	$a0, $ra, 5616
	stptr.w	$s4, $ra, 5620
	ori	$a2, $zero, 52
	masknez	$a2, $a2, $a0
	ori	$a3, $zero, 32
	maskeqz	$a0, $a3, $a0
	ld.d	$a3, $sp, 296                   # 8-byte Folded Reload
	ld.d	$a3, $a3, %pc_lo12(active_pps)
	or	$a0, $a0, $a2
	ld.d	$a2, $sp, 288                   # 8-byte Folded Reload
	ld.d	$a2, $a2, 40
	ld.d	$a4, $sp, 280                   # 8-byte Folded Reload
	ldx.w	$a0, $a4, $a0
	ld.w	$a3, $a3, 12
	st.w	$a1, $sp, 552
	ori	$a1, $zero, 9
	st.w	$a1, $sp, 576
	mul.d	$a0, $a0, $s5
	add.d	$a2, $a2, $a0
	beqz	$a3, .LBB15_201
# %bb.200:                              #   in Loop: Header=BB15_199 Depth=2
	ld.d	$a0, $a2, 0
	ld.w	$a0, $a0, 24
	beqz	$a0, .LBB15_202
.LBB15_201:                             #   in Loop: Header=BB15_199 Depth=2
	pcalau12i	$a0, %got_pc_hi20(linfo_levrun_c2x2)
	ld.d	$a0, $a0, %got_pc_lo12(linfo_levrun_c2x2)
	st.d	$a0, $sp, 584
	b	.LBB15_203
	.p2align	4, , 16
.LBB15_202:                             #   in Loop: Header=BB15_199 Depth=2
	pcalau12i	$a0, %got_pc_hi20(readRunLevel_CABAC)
	ld.d	$a0, $a0, %got_pc_lo12(readRunLevel_CABAC)
	st.d	$a0, $sp, 592
.LBB15_203:                             #   in Loop: Header=BB15_199 Depth=2
	ld.d	$a3, $a2, 48
	addi.d	$a0, $sp, 552
	move	$a1, $ra
	jirl	$ra, $a3, 0
	ld.d	$ra, $sp, 304                   # 8-byte Folded Reload
	ld.w	$a0, $sp, 556
	vld	$vr4, $sp, 320                  # 16-byte Folded Reload
	beqz	$a0, .LBB15_231
# %bb.204:                              #   in Loop: Header=BB15_199 Depth=2
	ld.d	$a1, $s8, 304
	ld.w	$a2, $sp, 560
	or	$a1, $a1, $s3
	st.d	$a1, $s8, 304
	add.d	$a1, $s2, $a2
	addi.w	$s2, $a1, 1
	ld.d	$a3, $sp, 112                   # 8-byte Folded Reload
	alsl.d	$a1, $s2, $a3, 1
	slli.d	$a2, $s2, 1
	ld.bu	$a1, $a1, 1
	ldx.bu	$a2, $a3, $a2
	add.d	$a1, $fp, $a1
	alsl.d	$a2, $a2, $a2, 1
	slli.d	$a2, $a2, 8
	ld.d	$a3, $sp, 344                   # 8-byte Folded Reload
	add.d	$a2, $a3, $a2
	slli.d	$a1, $a1, 6
	addi.w	$s0, $s0, 1
	stx.w	$a0, $a2, $a1
	ori	$a0, $zero, 16
	bltu	$s0, $a0, .LBB15_199
	b	.LBB15_231
.LBB15_205:                             #   in Loop: Header=BB15_178 Depth=1
	ori	$a2, $zero, 6
	addi.d	$a5, $sp, 488
	addi.d	$a6, $sp, 424
	addi.d	$a7, $sp, 420
	move	$a0, $ra
	move	$a3, $zero
	move	$a4, $zero
	pcaddu18i	$ra, %call36(readCoeff4x4_CAVLC)
	jirl	$ra, $ra, 0
	vld	$vr4, $sp, 320                  # 16-byte Folded Reload
	ld.d	$ra, $sp, 304                   # 8-byte Folded Reload
	ld.w	$a0, $sp, 420
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB15_210
# %bb.206:                              # %.lr.ph1297
                                        #   in Loop: Header=BB15_178 Depth=1
	slli.d	$a1, $s4, 1
	bstrpick.d	$a1, $a1, 31, 1
	slli.d	$a1, $a1, 1
	lu12i.w	$a2, 240
	sll.w	$a1, $a2, $a1
	addi.d	$a3, $zero, -1
	addi.d	$a2, $sp, 424
	addi.d	$a4, $sp, 488
	b	.LBB15_208
	.p2align	4, , 16
.LBB15_207:                             #   in Loop: Header=BB15_208 Depth=2
	addi.d	$a2, $a2, 4
	addi.d	$a0, $a0, -1
	addi.d	$a4, $a4, 4
	beqz	$a0, .LBB15_210
.LBB15_208:                             #   Parent Loop BB15_178 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a5, $a4, 0
	beqz	$a5, .LBB15_207
# %bb.209:                              #   in Loop: Header=BB15_208 Depth=2
	ld.d	$a6, $s8, 304
	ld.w	$a7, $a2, 0
	or	$a6, $a6, $a1
	st.d	$a6, $s8, 304
	add.d	$a3, $a3, $a7
	addi.w	$a3, $a3, 1
	slli.d	$a6, $a3, 2
	ld.d	$a7, $sp, 312                   # 8-byte Folded Reload
	stx.w	$a5, $a7, $a6
	b	.LBB15_207
	.p2align	4, , 16
.LBB15_210:                             # %.loopexit1178
                                        #   in Loop: Header=BB15_178 Depth=1
	ld.d	$a0, $sp, 312                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	beqz	$a1, .LBB15_212
# %bb.211:                              #   in Loop: Header=BB15_178 Depth=1
	lu12i.w	$a4, 1
	ori	$a1, $a4, 1392
	ldx.w	$a1, $ra, $a1
	ori	$a5, $zero, 768
	mul.d	$a2, $s4, $a5
	ld.d	$a3, $sp, 344                   # 8-byte Folded Reload
	add.d	$a2, $a3, $a2
	st.w	$a0, $a2, 256
	st.w	$a1, $a2, 320
	ori	$a0, $a4, 1388
	ldx.w	$a0, $ra, $a0
	addi.d	$a1, $s4, 1
	ori	$a2, $a4, 1396
	ldx.w	$a2, $ra, $a2
	mul.d	$a1, $a1, $a5
	add.d	$a1, $a3, $a1
	st.w	$a0, $a1, 256
	st.w	$a2, $a1, 320
	b	.LBB15_177
.LBB15_212:                             #   in Loop: Header=BB15_178 Depth=1
	lu12i.w	$a4, 1
	ori	$a1, $a4, 1388
	ldx.w	$a2, $ra, $a1
	ori	$a1, $a4, 1392
	ldx.w	$a3, $ra, $a1
	ori	$a1, $a4, 1396
	ldx.w	$a4, $ra, $a1
	add.d	$a1, $a2, $a0
	add.d	$a5, $a4, $a3
	add.d	$a6, $a5, $a1
	st.w	$a6, $sp, 388
	add.d	$a6, $a0, $a3
	add.d	$a7, $a2, $a4
	sub.d	$a6, $a6, $a7
	st.w	$a6, $sp, 392
	sub.d	$a1, $a1, $a5
	st.w	$a1, $sp, 396
	ldptr.w	$a1, $ra, 5928
	add.d	$a2, $a2, $a3
	sub.d	$a0, $a0, $a2
	add.d	$a0, $a0, $a4
	st.w	$a0, $sp, 400
	ori	$a0, $zero, 1
	blt	$a1, $a0, .LBB15_176
# %bb.213:                              # %.lr.ph1300
                                        #   in Loop: Header=BB15_178 Depth=1
	alsl.d	$a0, $s6, $s6, 1
	slli.d	$a0, $a0, 7
	ld.d	$a2, $sp, 248                   # 8-byte Folded Reload
	add.d	$a0, $a2, $a0
	ld.d	$a2, $sp, 264                   # 8-byte Folded Reload
	slli.d	$a2, $a2, 6
	add.d	$a0, $a0, $a2
	addi.d	$a2, $sp, 412
	ldx.w	$a2, $fp, $a2
	ld.w	$a0, $a0, 0
	ori	$a3, $zero, 5
	bge	$a2, $a3, .LBB15_245
# %bb.214:                              # %.lr.ph1300.split.us.preheader
                                        #   in Loop: Header=BB15_178 Depth=1
	sub.d	$a2, $a3, $a2
	bgeu	$a1, $s7, .LBB15_261
# %bb.215:                              #   in Loop: Header=BB15_178 Depth=1
	move	$a3, $zero
	b	.LBB15_264
.LBB15_216:                             #   in Loop: Header=BB15_178 Depth=1
	ori	$a2, $zero, 6
	addi.d	$a5, $sp, 488
	addi.d	$a6, $sp, 424
	addi.d	$a7, $sp, 420
	move	$a0, $ra
	move	$a3, $zero
	move	$a4, $zero
	pcaddu18i	$ra, %call36(readCoeff4x4_CAVLC)
	jirl	$ra, $ra, 0
	vld	$vr4, $sp, 320                  # 16-byte Folded Reload
	ld.d	$ra, $sp, 304                   # 8-byte Folded Reload
	ld.w	$a0, $sp, 420
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB15_221
# %bb.217:                              # %.lr.ph1272
                                        #   in Loop: Header=BB15_178 Depth=1
	slli.d	$a1, $s4, 2
	lu12i.w	$a2, 4080
	sll.d	$a1, $a2, $a1
	addi.d	$a3, $zero, -1
	addi.d	$a2, $sp, 424
	addi.d	$a4, $sp, 488
	b	.LBB15_219
	.p2align	4, , 16
.LBB15_218:                             #   in Loop: Header=BB15_219 Depth=2
	addi.d	$a2, $a2, 4
	addi.d	$a0, $a0, -1
	addi.d	$a4, $a4, 4
	beqz	$a0, .LBB15_221
.LBB15_219:                             #   Parent Loop BB15_178 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a5, $a4, 0
	beqz	$a5, .LBB15_218
# %bb.220:                              #   in Loop: Header=BB15_219 Depth=2
	ld.d	$a6, $s8, 304
	ld.w	$a7, $a2, 0
	or	$a6, $a6, $a1
	st.d	$a6, $s8, 304
	add.d	$a3, $a3, $a7
	addi.w	$a3, $a3, 1
	alsl.d	$a6, $a3, $fp, 1
	slli.d	$a7, $a3, 1
	ldx.bu	$a7, $fp, $a7
	ld.bu	$a6, $a6, 1
	addi.d	$t0, $sp, 352
	alsl.d	$a7, $a7, $t0, 4
	slli.d	$a6, $a6, 2
	stx.w	$a5, $a7, $a6
	b	.LBB15_218
	.p2align	4, , 16
.LBB15_221:                             # %.loopexit1183
                                        #   in Loop: Header=BB15_178 Depth=1
	ld.w	$a6, $sp, 352
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	beqz	$a0, .LBB15_223
# %bb.222:                              # %.loopexit1182.thread
                                        #   in Loop: Header=BB15_178 Depth=1
	ori	$a4, $zero, 768
	mul.d	$a0, $s4, $a4
	ld.w	$a1, $sp, 356
	ld.w	$a2, $sp, 360
	ld.w	$a3, $sp, 364
	ld.d	$a5, $sp, 192                   # 8-byte Folded Reload
	stx.w	$a6, $a5, $a0
	ld.d	$a6, $sp, 184                   # 8-byte Folded Reload
	stx.w	$a1, $a6, $a0
	ld.d	$a7, $sp, 176                   # 8-byte Folded Reload
	stx.w	$a2, $a7, $a0
	ld.d	$t0, $sp, 240                   # 8-byte Folded Reload
	stx.w	$a3, $t0, $a0
	addi.d	$a0, $s4, 1
	ld.w	$a1, $sp, 368
	mul.d	$a0, $a0, $a4
	ld.w	$a2, $sp, 372
	ld.w	$a3, $sp, 376
	ld.w	$a4, $sp, 380
	stx.w	$a1, $a5, $a0
	stx.w	$a2, $a6, $a0
	stx.w	$a3, $a7, $a0
	stx.w	$a4, $t0, $a0
	b	.LBB15_177
.LBB15_223:                             # %.lr.ph1289
                                        #   in Loop: Header=BB15_178 Depth=1
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a1
	addi.w	$a5, $a0, 3
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	mul.d	$a0, $a5, $a0
	srli.d	$a1, $a0, 63
	srli.d	$a0, $a0, 32
	add.d	$a1, $a0, $a1
	slli.d	$a0, $a1, 2
	alsl.d	$a0, $a1, $a0, 1
	sub.w	$a0, $a5, $a0
	ld.w	$a7, $sp, 368
	ld.w	$t0, $sp, 356
	ld.w	$t1, $sp, 372
	ld.w	$t2, $sp, 360
	ld.w	$t3, $sp, 376
	ld.w	$t4, $sp, 364
	ld.w	$t5, $sp, 380
	alsl.d	$a2, $s6, $s6, 1
	slli.d	$a2, $a2, 7
	ld.d	$a3, $sp, 232                   # 8-byte Folded Reload
	add.d	$a3, $a3, $a2
	slli.d	$t6, $a0, 6
	add.d	$a0, $a3, $t6
	addi.d	$a4, $a1, -4
	ld.d	$a3, $sp, 224                   # 8-byte Folded Reload
	add.d	$a2, $a3, $a2
	add.d	$a3, $a2, $t6
	ori	$a2, $zero, 3
	sub.d	$a2, $a2, $a1
	ori	$t6, $zero, 1
	sll.w	$a2, $t6, $a2
	ori	$t6, $zero, 4
	sub.d	$a1, $t6, $a1
	add.d	$t7, $t5, $t4
	add.d	$t8, $t3, $t2
	add.d	$s0, $t1, $t0
	add.d	$fp, $a7, $a6
	alsl.d	$t6, $s4, $s4, 1
	slli.d	$t6, $t6, 8
	ld.d	$s2, $sp, 344                   # 8-byte Folded Reload
	add.d	$t6, $s2, $t6
	add.d	$s3, $t8, $fp
	sub.d	$t8, $fp, $t8
	sub.d	$fp, $s0, $t7
	add.d	$t7, $t7, $s0
	add.d	$s2, $t7, $s3
	sub.d	$s0, $s3, $t7
	add.d	$t7, $fp, $t8
	ori	$s3, $zero, 23
	blt	$s3, $a5, .LBB15_243
# %bb.224:                              # %.split1283.us
                                        #   in Loop: Header=BB15_178 Depth=1
	ld.d	$s3, $sp, 88                    # 8-byte Folded Reload
	beqz	$s3, .LBB15_247
# %bb.225:                              # %.split1283.us.split.us.preheader
                                        #   in Loop: Header=BB15_178 Depth=1
	ld.w	$s3, $a3, 0
	mul.d	$s2, $s2, $s3
	add.d	$s2, $s2, $a2
	sra.w	$s2, $s2, $a1
	addi.w	$s2, $s2, 2
	srli.d	$s2, $s2, 2
	st.w	$s2, $t6, 256
	ld.w	$s2, $a3, 0
	mul.d	$s0, $s2, $s0
	add.d	$s0, $s0, $a2
	sra.w	$s0, $s0, $a1
	addi.w	$s0, $s0, 2
	srli.d	$s0, $s0, 2
	st.w	$s0, $t6, 448
	ld.w	$s0, $a3, 0
	mul.d	$t7, $t7, $s0
	add.d	$t7, $t7, $a2
	sra.w	$t7, $t7, $a1
	addi.w	$t7, $t7, 2
	srli.d	$t7, $t7, 2
	st.w	$t7, $t6, 320
	ld.w	$t7, $a3, 0
	b	.LBB15_248
.LBB15_226:                             #   in Loop: Header=BB15_178 Depth=1
	ori	$a2, $zero, 6
	addi.d	$a5, $sp, 488
	addi.d	$a6, $sp, 424
	addi.d	$a7, $sp, 420
	move	$a0, $ra
	move	$a3, $zero
	move	$a4, $zero
	pcaddu18i	$ra, %call36(readCoeff4x4_CAVLC)
	jirl	$ra, $ra, 0
	vld	$vr4, $sp, 320                  # 16-byte Folded Reload
	ld.d	$ra, $sp, 304                   # 8-byte Folded Reload
	ld.w	$a0, $sp, 420
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB15_231
# %bb.227:                              # %.lr.ph1307
                                        #   in Loop: Header=BB15_178 Depth=1
	slli.d	$a1, $s4, 3
	ld.d	$a2, $sp, 200                   # 8-byte Folded Reload
	sll.d	$a1, $a2, $a1
	addi.d	$a3, $zero, -1
	addi.d	$a2, $sp, 424
	addi.d	$a4, $sp, 488
	b	.LBB15_229
	.p2align	4, , 16
.LBB15_228:                             #   in Loop: Header=BB15_229 Depth=2
	addi.d	$a2, $a2, 4
	addi.d	$a0, $a0, -1
	addi.d	$a4, $a4, 4
	beqz	$a0, .LBB15_231
.LBB15_229:                             #   Parent Loop BB15_178 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a5, $a4, 0
	beqz	$a5, .LBB15_228
# %bb.230:                              #   in Loop: Header=BB15_229 Depth=2
	ld.d	$a6, $s8, 304
	ld.w	$a7, $a2, 0
	or	$a6, $a6, $a1
	st.d	$a6, $s8, 304
	add.d	$a3, $a3, $a7
	addi.w	$a3, $a3, 1
	ld.d	$t0, $sp, 112                   # 8-byte Folded Reload
	alsl.d	$a6, $a3, $t0, 1
	slli.d	$a7, $a3, 1
	ld.bu	$a6, $a6, 1
	ldx.bu	$a7, $t0, $a7
	add.d	$a6, $fp, $a6
	alsl.d	$a7, $a7, $a7, 1
	slli.d	$a7, $a7, 8
	ld.d	$t0, $sp, 344                   # 8-byte Folded Reload
	add.d	$a7, $t0, $a7
	slli.d	$a6, $a6, 6
	stx.w	$a5, $a7, $a6
	b	.LBB15_228
	.p2align	4, , 16
.LBB15_231:                             # %.loopexit1175
                                        #   in Loop: Header=BB15_178 Depth=1
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	ld.d	$t7, $sp, 88                    # 8-byte Folded Reload
	ori	$t8, $zero, 3
	ori	$fp, $zero, 2880
	ori	$s0, $zero, 2944
	ori	$s2, $zero, 3008
	ori	$s3, $zero, 3072
	bnez	$a0, .LBB15_177
# %bb.232:                              # %.preheader1170.lr.ph
                                        #   in Loop: Header=BB15_178 Depth=1
	slli.d	$a0, $s1, 6
	ld.d	$t0, $sp, 344                   # 8-byte Folded Reload
	ldx.w	$a1, $t0, $a0
	ld.d	$t2, $sp, 56                    # 8-byte Folded Reload
	ldx.w	$a2, $t2, $a0
	ld.d	$t1, $sp, 64                    # 8-byte Folded Reload
	ldx.w	$a3, $t1, $a0
	ld.d	$t3, $sp, 48                    # 8-byte Folded Reload
	ldx.w	$a4, $t3, $a0
	add.d	$a5, $a2, $a1
	sub.d	$a1, $a1, $a2
	sub.d	$a2, $a3, $a4
	add.d	$a3, $a4, $a3
	add.d	$a4, $a3, $a5
	stx.w	$a4, $t0, $a0
	sub.d	$a3, $a5, $a3
	stx.w	$a3, $t3, $a0
	add.d	$a3, $a2, $a1
	stx.w	$a3, $t1, $a0
	addi.d	$a3, $a0, 64
	ldx.w	$a4, $t0, $a3
	ldx.w	$a5, $t2, $a3
	ldx.w	$a6, $t1, $a3
	ldx.w	$a7, $t3, $a3
	sub.d	$a1, $a1, $a2
	add.d	$a2, $a5, $a4
	sub.d	$a4, $a4, $a5
	sub.d	$a5, $a6, $a7
	add.d	$a6, $a7, $a6
	add.d	$a7, $a6, $a2
	stx.w	$a7, $t0, $a3
	sub.d	$a2, $a2, $a6
	stx.w	$a2, $t3, $a3
	add.d	$a2, $a5, $a4
	stx.w	$a2, $t1, $a3
	sub.d	$a2, $a4, $a5
	stx.w	$a2, $t2, $a3
	addi.d	$a2, $a0, 128
	ldx.w	$a3, $t0, $a2
	ldx.w	$a4, $t2, $a2
	ldx.w	$a5, $t1, $a2
	ldx.w	$a6, $t3, $a2
	stx.w	$a1, $t2, $a0
	add.d	$a1, $a4, $a3
	sub.d	$a3, $a3, $a4
	sub.d	$a4, $a5, $a6
	add.d	$a5, $a6, $a5
	add.d	$a6, $a5, $a1
	stx.w	$a6, $t0, $a2
	sub.d	$a1, $a1, $a5
	stx.w	$a1, $t3, $a2
	add.d	$a1, $a4, $a3
	stx.w	$a1, $t1, $a2
	sub.d	$a1, $a3, $a4
	addi.d	$a3, $a0, 192
	ldx.w	$a0, $t0, $a3
	ldx.w	$a4, $t2, $a3
	ldx.w	$a5, $t1, $a3
	ldx.w	$a6, $t3, $a3
	stx.w	$a1, $t2, $a2
	add.d	$a1, $a4, $a0
	sub.d	$a2, $a0, $a4
	sub.d	$a4, $a5, $a6
	add.d	$a0, $a6, $a5
	add.d	$a5, $a0, $a1
	stx.w	$a5, $t0, $a3
	sub.d	$a0, $a1, $a0
	stx.w	$a0, $t3, $a3
	add.d	$a1, $a4, $a2
	slli.d	$a5, $s6, 2
	addi.d	$a0, $sp, 412
	ldx.w	$a0, $a5, $a0
	stx.w	$a1, $t1, $a3
	sub.d	$a1, $a2, $a4
	stx.w	$a1, $t2, $a3
	addi.d	$a1, $a0, -4
	sub.d	$a2, $t8, $a0
	ori	$a3, $zero, 1
	sll.w	$a2, $a3, $a2
	ori	$a3, $zero, 4
	sub.d	$a3, $a3, $a0
	addi.d	$a4, $sp, 404
	ldx.w	$a4, $a5, $a4
	alsl.d	$a5, $s6, $s6, 1
	slli.d	$a5, $a5, 7
	ld.d	$a6, $sp, 232                   # 8-byte Folded Reload
	add.d	$a6, $a6, $a5
	slli.d	$a7, $a4, 6
	add.d	$a4, $a6, $a7
	ld.d	$a6, $sp, 224                   # 8-byte Folded Reload
	add.d	$a5, $a6, $a5
	add.d	$a5, $a5, $a7
	slli.d	$a6, $s4, 7
	ld.d	$a7, $sp, 240                   # 8-byte Folded Reload
	add.d	$a6, $a7, $a6
	ld.d	$a7, $sp, 168                   # 8-byte Folded Reload
	b	.LBB15_236
	.p2align	4, , 16
.LBB15_233:                             # %.split1315.split
                                        #   in Loop: Header=BB15_236 Depth=2
	ld.w	$t3, $a4, 0
	mul.d	$t3, $t3, $t5
	sll.w	$t3, $t3, $a1
	addi.w	$t3, $t3, 2
	srli.d	$t3, $t3, 2
	stptr.w	$t3, $t0, 2880
	ld.w	$t3, $a4, 0
	mul.d	$t3, $t3, $t4
	sll.w	$t3, $t3, $a1
	addi.w	$t3, $t3, 2
	srli.d	$t3, $t3, 2
	stptr.w	$t3, $t0, 3072
	ld.w	$t3, $a4, 0
	mul.d	$t1, $t3, $t1
	sll.w	$t1, $t1, $a1
	addi.w	$t1, $t1, 2
	srli.d	$t1, $t1, 2
	stptr.w	$t1, $t0, 2944
	ld.w	$t1, $a4, 0
.LBB15_234:                             # %.split1317.us
                                        #   in Loop: Header=BB15_236 Depth=2
	mul.d	$t1, $t1, $t2
	sll.w	$t1, $t1, $a1
.LBB15_235:                             # %.split1317.us
                                        #   in Loop: Header=BB15_236 Depth=2
	addi.w	$t1, $t1, 2
	srli.d	$t1, $t1, 2
	addi.d	$a7, $a7, 768
	stptr.w	$t1, $t0, 3008
	beqz	$a7, .LBB15_177
.LBB15_236:                             # %.preheader1170
                                        #   Parent Loop BB15_178 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$t0, $a6, $a7
	ldx.w	$t1, $t0, $fp
	ldx.w	$t2, $t0, $s2
	ldx.w	$t4, $t0, $s0
	ldx.w	$t5, $t0, $s3
	add.d	$t6, $t2, $t1
	sub.d	$t2, $t1, $t2
	sub.d	$t3, $t4, $t5
	add.d	$t1, $t5, $t4
	add.d	$t5, $t1, $t6
	sub.d	$t4, $t6, $t1
	add.d	$t1, $t3, $t2
	blt	$t8, $a0, .LBB15_239
# %bb.237:                              # %.split1315.us
                                        #   in Loop: Header=BB15_236 Depth=2
	beqz	$t7, .LBB15_241
# %bb.238:                              # %.split1315.us.split.us
                                        #   in Loop: Header=BB15_236 Depth=2
	ld.w	$t6, $a5, 0
	mul.d	$t5, $t6, $t5
	add.d	$t5, $t5, $a2
	sra.w	$t5, $t5, $a3
	addi.w	$t5, $t5, 2
	srli.d	$t5, $t5, 2
	stptr.w	$t5, $t0, 2880
	ld.w	$t5, $a5, 0
	mul.d	$t4, $t5, $t4
	add.d	$t4, $t4, $a2
	sra.w	$t4, $t4, $a3
	addi.w	$t4, $t4, 2
	srli.d	$t4, $t4, 2
	stptr.w	$t4, $t0, 3072
	ld.w	$t4, $a5, 0
	mul.d	$t1, $t4, $t1
	add.d	$t1, $t1, $a2
	sra.w	$t1, $t1, $a3
	addi.w	$t1, $t1, 2
	srli.d	$t1, $t1, 2
	stptr.w	$t1, $t0, 2944
	ld.w	$t1, $a5, 0
	b	.LBB15_242
	.p2align	4, , 16
.LBB15_239:                             # %.split1315
                                        #   in Loop: Header=BB15_236 Depth=2
	sub.d	$t2, $t2, $t3
	beqz	$t7, .LBB15_233
# %bb.240:                              # %.split1315.split.us
                                        #   in Loop: Header=BB15_236 Depth=2
	ld.w	$t3, $a5, 0
	mul.d	$t3, $t3, $t5
	sll.w	$t3, $t3, $a1
	addi.w	$t3, $t3, 2
	srli.d	$t3, $t3, 2
	stptr.w	$t3, $t0, 2880
	ld.w	$t3, $a5, 0
	mul.d	$t3, $t3, $t4
	sll.w	$t3, $t3, $a1
	addi.w	$t3, $t3, 2
	srli.d	$t3, $t3, 2
	stptr.w	$t3, $t0, 3072
	ld.w	$t3, $a5, 0
	mul.d	$t1, $t3, $t1
	sll.w	$t1, $t1, $a1
	addi.w	$t1, $t1, 2
	srli.d	$t1, $t1, 2
	stptr.w	$t1, $t0, 2944
	ld.w	$t1, $a5, 0
	b	.LBB15_234
	.p2align	4, , 16
.LBB15_241:                             # %.split1315.us.split
                                        #   in Loop: Header=BB15_236 Depth=2
	ld.w	$t6, $a4, 0
	mul.d	$t5, $t6, $t5
	add.d	$t5, $t5, $a2
	sra.w	$t5, $t5, $a3
	addi.w	$t5, $t5, 2
	srli.d	$t5, $t5, 2
	stptr.w	$t5, $t0, 2880
	ld.w	$t5, $a4, 0
	mul.d	$t4, $t5, $t4
	add.d	$t4, $t4, $a2
	sra.w	$t4, $t4, $a3
	addi.w	$t4, $t4, 2
	srli.d	$t4, $t4, 2
	stptr.w	$t4, $t0, 3072
	ld.w	$t4, $a4, 0
	mul.d	$t1, $t4, $t1
	add.d	$t1, $t1, $a2
	sra.w	$t1, $t1, $a3
	addi.w	$t1, $t1, 2
	srli.d	$t1, $t1, 2
	stptr.w	$t1, $t0, 2944
	ld.w	$t1, $a4, 0
.LBB15_242:                             # %.split1317.us
                                        #   in Loop: Header=BB15_236 Depth=2
	sub.d	$t2, $t2, $t3
	mul.d	$t1, $t1, $t2
	add.d	$t1, $t1, $a2
	sra.w	$t1, $t1, $a3
	b	.LBB15_235
.LBB15_243:                             # %.split1283
                                        #   in Loop: Header=BB15_178 Depth=1
	sub.d	$t8, $t8, $fp
	ld.d	$fp, $sp, 88                    # 8-byte Folded Reload
	beqz	$fp, .LBB15_249
# %bb.244:                              # %.split1283.split.us.preheader
                                        #   in Loop: Header=BB15_178 Depth=1
	ld.w	$fp, $a3, 0
	mul.d	$fp, $s2, $fp
	sll.w	$fp, $fp, $a4
	addi.w	$fp, $fp, 2
	srli.d	$fp, $fp, 2
	st.w	$fp, $t6, 256
	ld.w	$fp, $a3, 0
	mul.d	$fp, $fp, $s0
	sll.w	$fp, $fp, $a4
	addi.w	$fp, $fp, 2
	srli.d	$fp, $fp, 2
	st.w	$fp, $t6, 448
	ld.w	$fp, $a3, 0
	mul.d	$t7, $t7, $fp
	sll.w	$t7, $t7, $a4
	addi.w	$t7, $t7, 2
	srli.d	$t7, $t7, 2
	st.w	$t7, $t6, 320
	ld.w	$t7, $a3, 0
	b	.LBB15_250
.LBB15_245:                             # %.lr.ph1300.split.preheader
                                        #   in Loop: Header=BB15_178 Depth=1
	addi.d	$a2, $a2, -5
	bgeu	$a1, $s7, .LBB15_266
# %bb.246:                              #   in Loop: Header=BB15_178 Depth=1
	move	$a3, $zero
	b	.LBB15_269
.LBB15_247:                             # %.split1283.us.split.preheader
                                        #   in Loop: Header=BB15_178 Depth=1
	ld.w	$s3, $a0, 0
	mul.d	$s2, $s2, $s3
	add.d	$s2, $s2, $a2
	sra.w	$s2, $s2, $a1
	addi.w	$s2, $s2, 2
	srli.d	$s2, $s2, 2
	st.w	$s2, $t6, 256
	ld.w	$s2, $a0, 0
	mul.d	$s0, $s2, $s0
	add.d	$s0, $s0, $a2
	sra.w	$s0, $s0, $a1
	addi.w	$s0, $s0, 2
	srli.d	$s0, $s0, 2
	st.w	$s0, $t6, 448
	ld.w	$s0, $a0, 0
	mul.d	$t7, $t7, $s0
	add.d	$t7, $t7, $a2
	sra.w	$t7, $t7, $a1
	addi.w	$t7, $t7, 2
	srli.d	$t7, $t7, 2
	st.w	$t7, $t6, 320
	ld.w	$t7, $a0, 0
.LBB15_248:                             # %.split1285.us
                                        #   in Loop: Header=BB15_178 Depth=1
	sub.d	$t8, $t8, $fp
	mul.d	$t7, $t7, $t8
	add.d	$t7, $t7, $a2
	sra.w	$t7, $t7, $a1
	b	.LBB15_251
.LBB15_249:                             # %.split1283.split.preheader
                                        #   in Loop: Header=BB15_178 Depth=1
	ld.w	$fp, $a0, 0
	mul.d	$fp, $s2, $fp
	sll.w	$fp, $fp, $a4
	addi.w	$fp, $fp, 2
	srli.d	$fp, $fp, 2
	st.w	$fp, $t6, 256
	ld.w	$fp, $a0, 0
	mul.d	$fp, $fp, $s0
	sll.w	$fp, $fp, $a4
	addi.w	$fp, $fp, 2
	srli.d	$fp, $fp, 2
	st.w	$fp, $t6, 448
	ld.w	$fp, $a0, 0
	mul.d	$t7, $t7, $fp
	sll.w	$t7, $t7, $a4
	addi.w	$t7, $t7, 2
	srli.d	$t7, $t7, 2
	st.w	$t7, $t6, 320
	ld.w	$t7, $a0, 0
.LBB15_250:                             # %.split1285.us
                                        #   in Loop: Header=BB15_178 Depth=1
	mul.d	$t7, $t7, $t8
	sll.w	$t7, $t7, $a4
.LBB15_251:                             # %.split1285.us
                                        #   in Loop: Header=BB15_178 Depth=1
	sub.d	$a7, $a6, $a7
	sub.d	$t8, $t0, $t1
	sub.d	$t0, $t2, $t3
	sub.d	$t2, $t4, $t5
	addi.w	$a6, $t7, 2
	srli.d	$a6, $a6, 2
	st.w	$a6, $t6, 384
	addi.d	$a6, $s4, 1
	alsl.d	$a6, $a6, $a6, 1
	slli.d	$a6, $a6, 8
	ld.d	$t1, $sp, 344                   # 8-byte Folded Reload
	add.d	$a6, $t1, $a6
	add.d	$t4, $t0, $a7
	sub.d	$t0, $a7, $t0
	sub.d	$t1, $t8, $t2
	add.d	$a7, $t2, $t8
	add.d	$t3, $a7, $t4
	sub.d	$t2, $t4, $a7
	add.d	$a7, $t1, $t0
	ld.d	$t4, $sp, 88                    # 8-byte Folded Reload
	ori	$t5, $zero, 24
	bge	$a5, $t5, .LBB15_254
# %bb.252:                              # %.split1283.us.1
                                        #   in Loop: Header=BB15_178 Depth=1
	beqz	$t4, .LBB15_256
# %bb.253:                              # %.split1283.us.split.us.preheader.1
                                        #   in Loop: Header=BB15_178 Depth=1
	ld.w	$a0, $a3, 0
	mul.d	$a0, $t3, $a0
	add.d	$a0, $a0, $a2
	sra.w	$a0, $a0, $a1
	addi.w	$a0, $a0, 2
	srli.d	$a0, $a0, 2
	st.w	$a0, $a6, 256
	ld.w	$a0, $a3, 0
	mul.d	$a0, $a0, $t2
	add.d	$a0, $a0, $a2
	sra.w	$a0, $a0, $a1
	addi.w	$a0, $a0, 2
	srli.d	$a0, $a0, 2
	st.w	$a0, $a6, 448
	ld.w	$a0, $a3, 0
	mul.d	$a0, $a7, $a0
	add.d	$a0, $a0, $a2
	sra.w	$a0, $a0, $a1
	addi.w	$a0, $a0, 2
	srli.d	$a0, $a0, 2
	st.w	$a0, $a6, 320
	ld.w	$a0, $a3, 0
	b	.LBB15_257
.LBB15_254:                             # %.split1283.1
                                        #   in Loop: Header=BB15_178 Depth=1
	sub.d	$a1, $t0, $t1
	beqz	$t4, .LBB15_258
# %bb.255:                              # %.split1283.split.us.preheader.1
                                        #   in Loop: Header=BB15_178 Depth=1
	ld.w	$a0, $a3, 0
	mul.d	$a0, $t3, $a0
	sll.w	$a0, $a0, $a4
	addi.w	$a0, $a0, 2
	srli.d	$a0, $a0, 2
	st.w	$a0, $a6, 256
	ld.w	$a0, $a3, 0
	mul.d	$a0, $a0, $t2
	sll.w	$a0, $a0, $a4
	addi.w	$a0, $a0, 2
	srli.d	$a0, $a0, 2
	st.w	$a0, $a6, 448
	ld.w	$a0, $a3, 0
	mul.d	$a0, $a7, $a0
	sll.w	$a0, $a0, $a4
	addi.w	$a0, $a0, 2
	srli.d	$a0, $a0, 2
	st.w	$a0, $a6, 320
	ld.w	$a0, $a3, 0
	b	.LBB15_259
.LBB15_256:                             # %.split1283.us.split.preheader.1
                                        #   in Loop: Header=BB15_178 Depth=1
	ld.w	$a3, $a0, 0
	mul.d	$a3, $t3, $a3
	add.d	$a3, $a3, $a2
	sra.w	$a3, $a3, $a1
	addi.w	$a3, $a3, 2
	srli.d	$a3, $a3, 2
	st.w	$a3, $a6, 256
	ld.w	$a3, $a0, 0
	mul.d	$a3, $a3, $t2
	add.d	$a3, $a3, $a2
	sra.w	$a3, $a3, $a1
	addi.w	$a3, $a3, 2
	srli.d	$a3, $a3, 2
	st.w	$a3, $a6, 448
	ld.w	$a3, $a0, 0
	mul.d	$a3, $a7, $a3
	add.d	$a3, $a3, $a2
	sra.w	$a3, $a3, $a1
	addi.w	$a3, $a3, 2
	srli.d	$a3, $a3, 2
	st.w	$a3, $a6, 320
	ld.w	$a0, $a0, 0
.LBB15_257:                             # %.split1285.us.1
                                        #   in Loop: Header=BB15_178 Depth=1
	sub.d	$a3, $t0, $t1
	mul.d	$a0, $a0, $a3
	add.d	$a0, $a0, $a2
	sra.w	$a0, $a0, $a1
	b	.LBB15_260
.LBB15_258:                             # %.split1283.split.preheader.1
                                        #   in Loop: Header=BB15_178 Depth=1
	ld.w	$a2, $a0, 0
	mul.d	$a2, $t3, $a2
	sll.w	$a2, $a2, $a4
	addi.w	$a2, $a2, 2
	srli.d	$a2, $a2, 2
	st.w	$a2, $a6, 256
	ld.w	$a2, $a0, 0
	mul.d	$a2, $a2, $t2
	sll.w	$a2, $a2, $a4
	addi.w	$a2, $a2, 2
	srli.d	$a2, $a2, 2
	st.w	$a2, $a6, 448
	ld.w	$a2, $a0, 0
	mul.d	$a2, $a7, $a2
	sll.w	$a2, $a2, $a4
	addi.w	$a2, $a2, 2
	srli.d	$a2, $a2, 2
	st.w	$a2, $a6, 320
	ld.w	$a0, $a0, 0
.LBB15_259:                             # %.split1285.us.1
                                        #   in Loop: Header=BB15_178 Depth=1
	mul.d	$a0, $a0, $a1
	sll.w	$a0, $a0, $a4
.LBB15_260:                             # %.split1285.us.1
                                        #   in Loop: Header=BB15_178 Depth=1
	addi.w	$a0, $a0, 2
	srli.d	$a0, $a0, 2
	st.w	$a0, $a6, 384
	b	.LBB15_177
.LBB15_261:                             # %vector.ph
                                        #   in Loop: Header=BB15_178 Depth=1
	bstrpick.d	$a3, $a1, 30, 3
	slli.d	$a3, $a3, 3
	vreplgr2vr.w	$vr0, $a0
	vreplgr2vr.w	$vr1, $a2
	addi.d	$a4, $sp, 404
	move	$a5, $a3
	.p2align	4, , 16
.LBB15_262:                             # %vector.body
                                        #   Parent Loop BB15_178 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr2, $a4, -16
	vld	$vr3, $a4, 0
	vmul.w	$vr2, $vr0, $vr2
	vmul.w	$vr3, $vr0, $vr3
	vsra.w	$vr2, $vr2, $vr1
	vsra.w	$vr3, $vr3, $vr1
	vst	$vr2, $a4, -16
	vst	$vr3, $a4, 0
	addi.d	$a5, $a5, -8
	addi.d	$a4, $a4, 32
	bnez	$a5, .LBB15_262
# %bb.263:                              # %middle.block
                                        #   in Loop: Header=BB15_178 Depth=1
	beq	$a3, $a1, .LBB15_176
.LBB15_264:                             # %.lr.ph1300.split.us.preheader1863
                                        #   in Loop: Header=BB15_178 Depth=1
	addi.d	$a4, $sp, 388
	alsl.d	$a4, $a3, $a4, 2
	sub.d	$a1, $a1, $a3
	.p2align	4, , 16
.LBB15_265:                             # %.lr.ph1300.split.us
                                        #   Parent Loop BB15_178 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a3, $a4, 0
	mul.d	$a3, $a0, $a3
	sra.w	$a3, $a3, $a2
	st.w	$a3, $a4, 0
	addi.d	$a1, $a1, -1
	addi.d	$a4, $a4, 4
	bnez	$a1, .LBB15_265
	b	.LBB15_176
.LBB15_266:                             # %vector.ph1742
                                        #   in Loop: Header=BB15_178 Depth=1
	bstrpick.d	$a3, $a1, 30, 3
	slli.d	$a3, $a3, 3
	vreplgr2vr.w	$vr0, $a0
	vreplgr2vr.w	$vr1, $a2
	addi.d	$a4, $sp, 404
	move	$a5, $a3
	.p2align	4, , 16
.LBB15_267:                             # %vector.body1749
                                        #   Parent Loop BB15_178 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr2, $a4, -16
	vld	$vr3, $a4, 0
	vmul.w	$vr2, $vr0, $vr2
	vmul.w	$vr3, $vr0, $vr3
	vsll.w	$vr2, $vr2, $vr1
	vsll.w	$vr3, $vr3, $vr1
	vst	$vr2, $a4, -16
	vst	$vr3, $a4, 0
	addi.d	$a5, $a5, -8
	addi.d	$a4, $a4, 32
	bnez	$a5, .LBB15_267
# %bb.268:                              # %middle.block1754
                                        #   in Loop: Header=BB15_178 Depth=1
	beq	$a3, $a1, .LBB15_176
.LBB15_269:                             # %.lr.ph1300.split.preheader1864
                                        #   in Loop: Header=BB15_178 Depth=1
	addi.d	$a4, $sp, 388
	alsl.d	$a4, $a3, $a4, 2
	sub.d	$a1, $a1, $a3
	.p2align	4, , 16
.LBB15_270:                             # %.lr.ph1300.split
                                        #   Parent Loop BB15_178 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a3, $a4, 0
	mul.d	$a3, $a0, $a3
	sll.w	$a3, $a3, $a2
	st.w	$a3, $a4, 0
	addi.d	$a1, $a1, -1
	addi.d	$a4, $a4, 4
	bnez	$a1, .LBB15_270
	b	.LBB15_176
.LBB15_271:                             # %.loopexit1187
	ori	$a0, $zero, 31
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	blt	$a0, $a1, .LBB15_274
.LBB15_272:                             # %.loopexit1169
	ld.wu	$a0, $ra, 4
	ldptr.d	$a1, $ra, 5560
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $a1, $a0
	ld.d	$a0, $a0, 0
	ldptr.w	$a1, $ra, 5924
	addi.d	$a0, $a0, 16
	slli.d	$a2, $a1, 2
	move	$a1, $zero
	move	$fp, $ra
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.wu	$a0, $fp, 4
	ldptr.d	$a1, $fp, 5560
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $a1, $a0
	ld.d	$a0, $a0, 8
	ldptr.w	$a1, $fp, 5924
	addi.d	$a0, $a0, 16
	slli.d	$a2, $a1, 2
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.wu	$a0, $fp, 4
	ldptr.d	$a1, $fp, 5560
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $a1, $a0
	ld.d	$a0, $a0, 16
	ldptr.w	$a1, $fp, 5924
	addi.d	$a0, $a0, 16
	slli.d	$a2, $a1, 2
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.wu	$a0, $fp, 4
	ldptr.d	$a1, $fp, 5560
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $a1, $a0
	ld.d	$a0, $a0, 24
	ldptr.w	$a1, $fp, 5924
	addi.d	$a0, $a0, 16
	slli.d	$a2, $a1, 2
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB15_273:                             # %.loopexit1167
	ld.d	$s8, $sp, 600                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 608                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 616                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 624                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 632                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 640                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 648                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 656                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 664                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 672                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 680                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 688
	ret
.LBB15_274:                             # %.preheader1166
	ldptr.w	$a0, $ra, 5924
	ori	$fp, $zero, 1
	blt	$a0, $fp, .LBB15_273
# %bb.275:                              # %.lr.ph1335
	move	$a4, $zero
	ld.d	$a1, $sp, 0                     # 8-byte Folded Reload
	slli.d	$a2, $a1, 5
	pcalau12i	$a1, %pc_hi20(cofuv_blk_x)
	addi.d	$a1, $a1, %pc_lo12(cofuv_blk_x)
	add.d	$a1, $a1, $a2
	st.d	$a1, $sp, 240                   # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(cofuv_blk_y)
	addi.d	$a1, $a1, %pc_lo12(cofuv_blk_y)
	st.d	$a2, $sp, 256                   # 8-byte Folded Spill
	add.d	$a1, $a1, $a2
	st.d	$a1, $sp, 232                   # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(cbp_blk_chroma)
	addi.d	$a1, $a1, %pc_lo12(cbp_blk_chroma)
	st.d	$a1, $sp, 224                   # 8-byte Folded Spill
	b	.LBB15_277
	.p2align	4, , 16
.LBB15_276:                             #   in Loop: Header=BB15_277 Depth=1
	ldptr.w	$a0, $ra, 5924
	ld.d	$a4, $sp, 264                   # 8-byte Folded Reload
	addi.d	$a4, $a4, 1
	bge	$a4, $a0, .LBB15_273
.LBB15_277:                             # =>This Loop Header: Depth=1
                                        #     Child Loop BB15_279 Depth 2
                                        #       Child Loop BB15_295 Depth 3
                                        #       Child Loop BB15_282 Depth 3
                                        #       Child Loop BB15_304 Depth 3
                                        #       Child Loop BB15_292 Depth 3
	move	$s1, $zero
	srai.d	$a0, $a0, 1
	slt	$a0, $a4, $a0
	xori	$a0, $a0, 1
	slli.d	$a1, $a0, 2
	addi.d	$a2, $sp, 404
	ldx.w	$a1, $a1, $a2
	alsl.d	$a2, $a0, $a0, 1
	slli.d	$a2, $a2, 7
	ld.d	$a3, $sp, 248                   # 8-byte Folded Reload
	add.d	$a2, $a3, $a2
	slli.d	$a1, $a1, 6
	add.d	$s6, $a2, $a1
	stptr.w	$a0, $ra, 5620
	addi.d	$a1, $sp, 412
	alsl.d	$s0, $a0, $a1, 2
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	alsl.d	$a0, $a4, $a0, 2
	st.d	$a0, $sp, 320                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	alsl.d	$a0, $a4, $a0, 2
	st.d	$a0, $sp, 312                   # 8-byte Folded Spill
	st.d	$a4, $sp, 264                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	alsl.d	$a0, $a4, $a0, 2
	st.d	$a0, $sp, 272                   # 8-byte Folded Spill
	b	.LBB15_279
	.p2align	4, , 16
.LBB15_278:                             # %.loopexit
                                        #   in Loop: Header=BB15_279 Depth=2
	addi.d	$s1, $s1, 1
	ld.d	$ra, $sp, 304                   # 8-byte Folded Reload
	ori	$a0, $zero, 4
	beq	$s1, $a0, .LBB15_276
.LBB15_279:                             #   Parent Loop BB15_277 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB15_295 Depth 3
                                        #       Child Loop BB15_282 Depth 3
                                        #       Child Loop BB15_304 Depth 3
                                        #       Child Loop BB15_292 Depth 3
	ld.d	$a0, $sp, 296                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(active_pps)
	ld.d	$a1, $sp, 320                   # 8-byte Folded Reload
	ldx.bu	$s5, $a1, $s1
	ld.w	$a0, $a0, 12
	ld.d	$a1, $sp, 312                   # 8-byte Folded Reload
	ldx.bu	$s4, $a1, $s1
	beqz	$a0, .LBB15_288
# %bb.280:                              # %switch.lookup1818
                                        #   in Loop: Header=BB15_279 Depth=2
	pcalau12i	$a0, %pc_hi20(subblk_offset_y)
	addi.d	$a0, $a0, %pc_lo12(subblk_offset_y)
	ld.d	$a2, $sp, 256                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a2
	ld.d	$a1, $sp, 264                   # 8-byte Folded Reload
	alsl.d	$a0, $a1, $a0, 2
	ldx.bu	$a0, $a0, $s1
	srli.d	$a0, $a0, 2
	stptr.w	$a0, $ra, 5612
	pcalau12i	$a0, %pc_hi20(subblk_offset_x)
	addi.d	$a0, $a0, %pc_lo12(subblk_offset_x)
	add.d	$a0, $a0, $a2
	alsl.d	$a0, $a1, $a0, 2
	ldx.bu	$a0, $a0, $s1
	ld.w	$a1, $s8, 40
	srli.d	$a0, $a0, 2
	stptr.w	$a0, $ra, 5608
	ori	$a0, $zero, 7
	st.w	$a0, $sp, 576
	addi.w	$a0, $a1, -9
	sltui	$a2, $a0, 6
	ori	$a3, $zero, 51
	srl.d	$a0, $a3, $a0
	and	$a0, $a2, $a0
	addi.d	$a1, $a1, -12
	sltui	$a1, $a1, 1
	or	$a0, $a0, $a1
	ori	$a1, $zero, 15
	masknez	$a1, $a1, $a0
	ori	$a2, $zero, 10
	maskeqz	$a2, $a2, $a0
	or	$a1, $a2, $a1
	st.w	$a1, $sp, 552
	stptr.w	$a0, $ra, 5616
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	add.d	$s3, $a0, $s1
	alsl.d	$s5, $s5, $s5, 1
	slli.d	$s4, $s4, 6
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	beqz	$a0, .LBB15_294
# %bb.281:                              # %.preheader1162.preheader
                                        #   in Loop: Header=BB15_279 Depth=2
	move	$s7, $zero
	addi.d	$s2, $zero, -1
	.p2align	4, , 16
.LBB15_282:                             # %.preheader1162
                                        #   Parent Loop BB15_277 Depth=1
                                        #     Parent Loop BB15_279 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$a0, $sp, 552
	ld.d	$a1, $sp, 296                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(active_pps)
	ld.d	$a2, $sp, 288                   # 8-byte Folded Reload
	ld.d	$a2, $a2, 40
	slli.d	$a0, $a0, 2
	ld.d	$a3, $sp, 280                   # 8-byte Folded Reload
	ldx.w	$a0, $a3, $a0
	ld.w	$a1, $a1, 12
	ori	$a3, $zero, 56
	mul.d	$a0, $a0, $a3
	add.d	$a2, $a2, $a0
	beqz	$a1, .LBB15_284
# %bb.283:                              #   in Loop: Header=BB15_282 Depth=3
	ld.d	$a0, $a2, 0
	ld.w	$a0, $a0, 24
	beqz	$a0, .LBB15_285
.LBB15_284:                             #   in Loop: Header=BB15_282 Depth=3
	pcalau12i	$a0, %got_pc_hi20(linfo_levrun_inter)
	ld.d	$a0, $a0, %got_pc_lo12(linfo_levrun_inter)
	st.d	$a0, $sp, 584
	b	.LBB15_286
	.p2align	4, , 16
.LBB15_285:                             #   in Loop: Header=BB15_282 Depth=3
	pcalau12i	$a0, %got_pc_hi20(readRunLevel_CABAC)
	ld.d	$a0, $a0, %got_pc_lo12(readRunLevel_CABAC)
	st.d	$a0, $sp, 592
.LBB15_286:                             #   in Loop: Header=BB15_282 Depth=3
	ld.d	$a1, $sp, 304                   # 8-byte Folded Reload
	ld.d	$a3, $a2, 48
	addi.d	$a0, $sp, 552
	jirl	$ra, $a3, 0
	ld.w	$a0, $sp, 556
	beqz	$a0, .LBB15_278
# %bb.287:                              #   in Loop: Header=BB15_282 Depth=3
	ld.bu	$a1, $s3, 0
	ld.d	$a2, $s8, 304
	ld.w	$a3, $sp, 560
	sll.d	$a1, $fp, $a1
	or	$a1, $a1, $a2
	st.d	$a1, $s8, 304
	add.d	$a1, $s7, $a3
	addi.w	$s7, $a1, 1
	ld.d	$a3, $sp, 336                   # 8-byte Folded Reload
	alsl.d	$a1, $s7, $a3, 1
	slli.d	$a2, $s7, 1
	ldx.bu	$a2, $a3, $a2
	ld.bu	$a1, $a1, 1
	slli.d	$a3, $s5, 8
	ld.d	$a4, $sp, 344                   # 8-byte Folded Reload
	add.d	$a3, $a4, $a3
	add.d	$a3, $a3, $s4
	alsl.d	$a1, $a1, $a3, 4
	slli.d	$a2, $a2, 2
	addi.w	$s2, $s2, 1
	stx.w	$a0, $a1, $a2
	ori	$a0, $zero, 15
	bltu	$s2, $a0, .LBB15_282
	b	.LBB15_278
	.p2align	4, , 16
.LBB15_288:                             #   in Loop: Header=BB15_279 Depth=2
	ori	$a2, $zero, 7
	addi.d	$a5, $sp, 488
	addi.d	$a6, $sp, 424
	addi.d	$a7, $sp, 420
	move	$a0, $ra
	move	$a3, $s5
	move	$a4, $s4
	pcaddu18i	$ra, %call36(readCoeff4x4_CAVLC)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 420
	ld.d	$a1, $sp, 208                   # 8-byte Folded Reload
	beqz	$a1, .LBB15_301
# %bb.289:                              # %.preheader
                                        #   in Loop: Header=BB15_279 Depth=2
	blt	$a0, $fp, .LBB15_278
# %bb.290:                              # %.lr.ph1332
                                        #   in Loop: Header=BB15_279 Depth=2
	move	$a2, $zero
	ld.d	$a1, $sp, 272                   # 8-byte Folded Reload
	add.d	$a1, $a1, $s1
	addi.d	$a3, $sp, 424
	addi.d	$a4, $sp, 488
	slli.d	$a5, $s4, 6
	b	.LBB15_292
	.p2align	4, , 16
.LBB15_291:                             #   in Loop: Header=BB15_292 Depth=3
	addi.d	$a3, $a3, 4
	addi.d	$a0, $a0, -1
	addi.d	$a4, $a4, 4
	beqz	$a0, .LBB15_278
.LBB15_292:                             #   Parent Loop BB15_277 Depth=1
                                        #     Parent Loop BB15_279 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$a6, $a4, 0
	beqz	$a6, .LBB15_291
# %bb.293:                              #   in Loop: Header=BB15_292 Depth=3
	ld.bu	$a7, $a1, 0
	ld.d	$t0, $s8, 304
	ld.w	$t1, $a3, 0
	sll.d	$a7, $fp, $a7
	or	$a7, $a7, $t0
	st.d	$a7, $s8, 304
	add.d	$a2, $a2, $t1
	addi.w	$a2, $a2, 1
	ld.d	$t1, $sp, 336                   # 8-byte Folded Reload
	alsl.d	$a7, $a2, $t1, 1
	slli.d	$t0, $a2, 1
	ldx.bu	$t0, $t1, $t0
	ld.bu	$a7, $a7, 1
	alsl.d	$t1, $s5, $s5, 1
	slli.d	$t1, $t1, 8
	ld.d	$t2, $sp, 344                   # 8-byte Folded Reload
	add.d	$t1, $t2, $t1
	add.d	$t1, $t1, $a5
	alsl.d	$a7, $a7, $t1, 4
	slli.d	$t0, $t0, 2
	stx.w	$a6, $a7, $t0
	b	.LBB15_291
	.p2align	4, , 16
.LBB15_294:                             # %.preheader1164.preheader
                                        #   in Loop: Header=BB15_279 Depth=2
	move	$s2, $zero
	addi.d	$s7, $zero, -1
	.p2align	4, , 16
.LBB15_295:                             # %.preheader1164
                                        #   Parent Loop BB15_277 Depth=1
                                        #     Parent Loop BB15_279 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$a0, $sp, 552
	ld.d	$a1, $sp, 296                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(active_pps)
	ld.d	$a2, $sp, 288                   # 8-byte Folded Reload
	ld.d	$a2, $a2, 40
	slli.d	$a0, $a0, 2
	ld.d	$a3, $sp, 280                   # 8-byte Folded Reload
	ldx.w	$a0, $a3, $a0
	ld.w	$a1, $a1, 12
	ori	$a3, $zero, 56
	mul.d	$a0, $a0, $a3
	add.d	$a2, $a2, $a0
	beqz	$a1, .LBB15_297
# %bb.296:                              #   in Loop: Header=BB15_295 Depth=3
	ld.d	$a0, $a2, 0
	ld.w	$a0, $a0, 24
	beqz	$a0, .LBB15_298
.LBB15_297:                             #   in Loop: Header=BB15_295 Depth=3
	pcalau12i	$a0, %got_pc_hi20(linfo_levrun_inter)
	ld.d	$a0, $a0, %got_pc_lo12(linfo_levrun_inter)
	st.d	$a0, $sp, 584
	b	.LBB15_299
	.p2align	4, , 16
.LBB15_298:                             #   in Loop: Header=BB15_295 Depth=3
	pcalau12i	$a0, %got_pc_hi20(readRunLevel_CABAC)
	ld.d	$a0, $a0, %got_pc_lo12(readRunLevel_CABAC)
	st.d	$a0, $sp, 592
.LBB15_299:                             #   in Loop: Header=BB15_295 Depth=3
	ld.d	$a1, $sp, 304                   # 8-byte Folded Reload
	ld.d	$a3, $a2, 48
	addi.d	$a0, $sp, 552
	jirl	$ra, $a3, 0
	ld.w	$a0, $sp, 556
	beqz	$a0, .LBB15_278
# %bb.300:                              #   in Loop: Header=BB15_295 Depth=3
	ld.bu	$a1, $s3, 0
	ld.d	$a2, $s8, 304
	ld.w	$a3, $sp, 560
	sll.d	$a1, $fp, $a1
	or	$a1, $a1, $a2
	st.d	$a1, $s8, 304
	add.d	$a1, $s2, $a3
	addi.w	$s2, $a1, 1
	ld.d	$a3, $sp, 336                   # 8-byte Folded Reload
	alsl.d	$a1, $s2, $a3, 1
	slli.d	$a2, $s2, 1
	ld.bu	$a1, $a1, 1
	ldx.bu	$a2, $a3, $a2
	alsl.d	$a3, $a1, $s6, 4
	slli.d	$a2, $a2, 2
	ldx.w	$a3, $a3, $a2
	ld.wu	$a4, $s0, 0
	mul.d	$a0, $a3, $a0
	sll.w	$a0, $a0, $a4
	addi.w	$a0, $a0, 8
	srli.d	$a0, $a0, 4
	slli.d	$a3, $s5, 8
	ld.d	$a4, $sp, 344                   # 8-byte Folded Reload
	add.d	$a3, $a4, $a3
	add.d	$a3, $a3, $s4
	alsl.d	$a1, $a1, $a3, 4
	addi.w	$s7, $s7, 1
	stx.w	$a0, $a1, $a2
	ori	$a0, $zero, 15
	bltu	$s7, $a0, .LBB15_295
	b	.LBB15_278
.LBB15_301:                             # %.preheader1160
                                        #   in Loop: Header=BB15_279 Depth=2
	blt	$a0, $fp, .LBB15_278
# %bb.302:                              # %.lr.ph1329
                                        #   in Loop: Header=BB15_279 Depth=2
	move	$a2, $zero
	ld.d	$a1, $sp, 272                   # 8-byte Folded Reload
	add.d	$a1, $a1, $s1
	addi.d	$a3, $sp, 424
	addi.d	$a4, $sp, 488
	slli.d	$a5, $s4, 6
	b	.LBB15_304
	.p2align	4, , 16
.LBB15_303:                             #   in Loop: Header=BB15_304 Depth=3
	addi.d	$a3, $a3, 4
	addi.d	$a0, $a0, -1
	addi.d	$a4, $a4, 4
	beqz	$a0, .LBB15_278
.LBB15_304:                             #   Parent Loop BB15_277 Depth=1
                                        #     Parent Loop BB15_279 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$a6, $a4, 0
	beqz	$a6, .LBB15_303
# %bb.305:                              #   in Loop: Header=BB15_304 Depth=3
	ld.bu	$a7, $a1, 0
	ld.d	$t0, $s8, 304
	ld.w	$t1, $a3, 0
	sll.d	$a7, $fp, $a7
	or	$a7, $a7, $t0
	st.d	$a7, $s8, 304
	add.d	$a2, $a2, $t1
	addi.w	$a2, $a2, 1
	ld.d	$t1, $sp, 336                   # 8-byte Folded Reload
	alsl.d	$a7, $a2, $t1, 1
	slli.d	$t0, $a2, 1
	ld.bu	$a7, $a7, 1
	ldx.bu	$t0, $t1, $t0
	alsl.d	$t1, $a7, $s6, 4
	slli.d	$t0, $t0, 2
	ldx.w	$t1, $t1, $t0
	ld.wu	$t2, $s0, 0
	mul.d	$a6, $t1, $a6
	sll.w	$a6, $a6, $t2
	addi.w	$a6, $a6, 8
	srli.d	$a6, $a6, 4
	alsl.d	$t1, $s5, $s5, 1
	slli.d	$t1, $t1, 8
	ld.d	$t2, $sp, 344                   # 8-byte Folded Reload
	add.d	$t1, $t2, $t1
	add.d	$t1, $t1, $a5
	alsl.d	$a7, $a7, $t1, 4
	stx.w	$a6, $a7, $t0
	b	.LBB15_303
.LBB15_306:
	add.d	$a2, $a0, $a2
	ld.d	$a3, $a2, 48
	addi.d	$a0, $sp, 552
	move	$a1, $t0
	jirl	$ra, $a3, 0
.LBB15_307:
	ld.w	$a1, $sp, 556
	ld.w	$a0, $s8, 40
	st.w	$a1, $s8, 396
	ld.d	$t0, $sp, 304                   # 8-byte Folded Reload
	b	.LBB15_27
.Lfunc_end15:
	.size	readCBPandCoeffsFromNAL, .Lfunc_end15-readCBPandCoeffsFromNAL
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI15_0:
	.word	.LBB15_14-.LJTI15_0
	.word	.LBB15_12-.LJTI15_0
	.word	.LBB15_13-.LJTI15_0
	.word	.LBB15_14-.LJTI15_0
	.word	.LBB15_13-.LJTI15_0
	.word	.LBB15_12-.LJTI15_0
                                        # -- End function
	.text
	.globl	readIPCMcoeffsFromNAL           # -- Begin function readIPCMcoeffsFromNAL
	.p2align	5
	.type	readIPCMcoeffsFromNAL,@function
readIPCMcoeffsFromNAL:                  # @readIPCMcoeffsFromNAL
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
	pcalau12i	$a1, %pc_hi20(active_pps)
	ld.d	$a1, $a1, %pc_lo12(active_pps)
	ld.w	$a1, $a1, 12
	ori	$a3, $zero, 1
	move	$s0, $a2
	move	$fp, $a0
	bne	$a1, $a3, .LBB16_12
# %bb.1:
	move	$s2, $zero
	ori	$a0, $zero, 8
	st.w	$a0, $sp, 20
	addi.d	$a0, $fp, 2047
	addi.d	$s1, $a0, 361
	ori	$s3, $zero, 16
	.p2align	4, , 16
.LBB16_2:                               # %.preheader85
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s0, 0
	bstrpick.d	$s4, $s2, 31, 2
	andi	$s5, $s2, 3
	addi.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(readIPCMBytes_CABAC)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 12
	alsl.d	$a1, $s4, $s4, 1
	slli.d	$a1, $a1, 8
	add.d	$a2, $s1, $a1
	ld.d	$a1, $s0, 0
	alsl.d	$s4, $s5, $a2, 4
	slli.d	$a3, $s5, 4
	stx.w	$a0, $a2, $a3
	addi.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(readIPCMBytes_CABAC)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 12
	ld.d	$a1, $s0, 0
	st.w	$a0, $s4, 4
	addi.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(readIPCMBytes_CABAC)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 12
	ld.d	$a1, $s0, 0
	st.w	$a0, $s4, 8
	addi.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(readIPCMBytes_CABAC)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 12
	ld.d	$a1, $s0, 0
	st.w	$a0, $s4, 12
	addi.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(readIPCMBytes_CABAC)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 12
	ld.d	$a1, $s0, 0
	st.w	$a0, $s4, 64
	addi.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(readIPCMBytes_CABAC)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 12
	ld.d	$a1, $s0, 0
	st.w	$a0, $s4, 68
	addi.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(readIPCMBytes_CABAC)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 12
	ld.d	$a1, $s0, 0
	st.w	$a0, $s4, 72
	addi.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(readIPCMBytes_CABAC)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 12
	ld.d	$a1, $s0, 0
	st.w	$a0, $s4, 76
	addi.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(readIPCMBytes_CABAC)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 12
	ld.d	$a1, $s0, 0
	st.w	$a0, $s4, 128
	addi.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(readIPCMBytes_CABAC)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 12
	ld.d	$a1, $s0, 0
	st.w	$a0, $s4, 132
	addi.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(readIPCMBytes_CABAC)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 12
	ld.d	$a1, $s0, 0
	st.w	$a0, $s4, 136
	addi.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(readIPCMBytes_CABAC)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 12
	ld.d	$a1, $s0, 0
	st.w	$a0, $s4, 140
	addi.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(readIPCMBytes_CABAC)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 12
	ld.d	$a1, $s0, 0
	st.w	$a0, $s4, 192
	addi.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(readIPCMBytes_CABAC)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 12
	ld.d	$a1, $s0, 0
	st.w	$a0, $s4, 196
	addi.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(readIPCMBytes_CABAC)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 12
	ld.d	$a1, $s0, 0
	st.w	$a0, $s4, 200
	addi.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(readIPCMBytes_CABAC)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 12
	addi.w	$s2, $s2, 1
	st.w	$a0, $s4, 204
	bne	$s2, $s3, .LBB16_2
# %bb.3:
	pcalau12i	$a0, %got_pc_hi20(dec_picture)
	ld.d	$a0, $a0, %got_pc_lo12(dec_picture)
	ld.d	$a0, $a0, 0
	lu12i.w	$a1, 77
	ori	$a1, $a1, 1652
	ldx.w	$a0, $a0, $a1
	beqz	$a0, .LBB16_33
# %bb.4:                                # %.preheader84
	ldptr.w	$a0, $fp, 5936
	ori	$a2, $zero, 1
	blt	$a0, $a2, .LBB16_33
# %bb.5:                                # %.preheader83.lr.ph
	ldptr.w	$a1, $fp, 5932
	blt	$a1, $a2, .LBB16_26
# %bb.6:                                # %.preheader83.preheader
	move	$s2, $zero
	ori	$s3, $zero, 1
	lu12i.w	$a2, 1
	ori	$s4, $a2, 1840
	b	.LBB16_9
	.p2align	4, , 16
.LBB16_7:                               # %._crit_edge105.loopexit
                                        #   in Loop: Header=BB16_9 Depth=1
	ldx.w	$a0, $fp, $s4
.LBB16_8:                               # %._crit_edge105
                                        #   in Loop: Header=BB16_9 Depth=1
	addi.w	$s2, $s2, 1
	bge	$s2, $a0, .LBB16_25
.LBB16_9:                               # %.preheader83
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB16_11 Depth 2
	blt	$a1, $s3, .LBB16_8
# %bb.10:                               # %.lr.ph104
                                        #   in Loop: Header=BB16_9 Depth=1
	move	$s5, $zero
	bstrpick.d	$a0, $s2, 31, 2
	andi	$s6, $s2, 3
	alsl.d	$a0, $a0, $a0, 1
	slli.d	$a0, $a0, 8
	add.d	$s7, $s1, $a0
	.p2align	4, , 16
.LBB16_11:                              #   Parent Loop BB16_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a1, $s0, 0
	addi.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(readIPCMBytes_CABAC)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 12
	bstrpick.d	$a1, $s5, 31, 2
	slli.d	$a1, $a1, 6
	andi	$a2, $s5, 3
	add.d	$a1, $a1, $s7
	alsl.d	$a1, $s6, $a1, 4
	alsl.d	$a1, $a2, $a1, 2
	st.w	$a0, $a1, 256
	ldptr.w	$a1, $fp, 5932
	addi.w	$s5, $s5, 1
	blt	$s5, $a1, .LBB16_11
	b	.LBB16_7
.LBB16_12:
	ld.d	$a1, $s0, 0
	ld.w	$a0, $a1, 8
	bstrpick.d	$a2, $a0, 62, 60
	add.d	$a2, $a0, $a2
	bstrpick.d	$a2, $a2, 31, 3
	slli.d	$a2, $a2, 3
	sub.w	$a0, $a0, $a2
	beqz	$a0, .LBB16_14
# %bb.13:
	ori	$a2, $zero, 8
	sub.d	$a0, $a2, $a0
	st.w	$a0, $sp, 20
	addi.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(readSyntaxElement_FLC)
	jirl	$ra, $ra, 0
.LBB16_14:
	lu12i.w	$s2, 1
	ori	$a0, $s2, 1780
	ldx.w	$a0, $fp, $a0
	move	$s3, $zero
	st.w	$a0, $sp, 20
	addi.d	$a0, $fp, 2047
	addi.d	$s1, $a0, 361
	ori	$s4, $zero, 16
	.p2align	4, , 16
.LBB16_15:                              # %.preheader91
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s0, 0
	bstrpick.d	$s5, $s3, 31, 2
	andi	$s6, $s3, 3
	addi.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(readSyntaxElement_FLC)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 12
	alsl.d	$a1, $s5, $s5, 1
	slli.d	$a1, $a1, 8
	add.d	$a2, $s1, $a1
	ld.d	$a1, $s0, 0
	alsl.d	$s5, $s6, $a2, 4
	slli.d	$a3, $s6, 4
	stx.w	$a0, $a2, $a3
	addi.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(readSyntaxElement_FLC)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 12
	ld.d	$a1, $s0, 0
	st.w	$a0, $s5, 4
	addi.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(readSyntaxElement_FLC)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 12
	ld.d	$a1, $s0, 0
	st.w	$a0, $s5, 8
	addi.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(readSyntaxElement_FLC)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 12
	ld.d	$a1, $s0, 0
	st.w	$a0, $s5, 12
	addi.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(readSyntaxElement_FLC)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 12
	ld.d	$a1, $s0, 0
	st.w	$a0, $s5, 64
	addi.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(readSyntaxElement_FLC)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 12
	ld.d	$a1, $s0, 0
	st.w	$a0, $s5, 68
	addi.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(readSyntaxElement_FLC)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 12
	ld.d	$a1, $s0, 0
	st.w	$a0, $s5, 72
	addi.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(readSyntaxElement_FLC)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 12
	ld.d	$a1, $s0, 0
	st.w	$a0, $s5, 76
	addi.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(readSyntaxElement_FLC)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 12
	ld.d	$a1, $s0, 0
	st.w	$a0, $s5, 128
	addi.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(readSyntaxElement_FLC)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 12
	ld.d	$a1, $s0, 0
	st.w	$a0, $s5, 132
	addi.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(readSyntaxElement_FLC)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 12
	ld.d	$a1, $s0, 0
	st.w	$a0, $s5, 136
	addi.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(readSyntaxElement_FLC)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 12
	ld.d	$a1, $s0, 0
	st.w	$a0, $s5, 140
	addi.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(readSyntaxElement_FLC)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 12
	ld.d	$a1, $s0, 0
	st.w	$a0, $s5, 192
	addi.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(readSyntaxElement_FLC)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 12
	ld.d	$a1, $s0, 0
	st.w	$a0, $s5, 196
	addi.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(readSyntaxElement_FLC)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 12
	ld.d	$a1, $s0, 0
	st.w	$a0, $s5, 200
	addi.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(readSyntaxElement_FLC)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 12
	addi.w	$s3, $s3, 1
	st.w	$a0, $s5, 204
	bne	$s3, $s4, .LBB16_15
# %bb.16:
	pcalau12i	$a0, %got_pc_hi20(dec_picture)
	ld.d	$a0, $a0, %got_pc_lo12(dec_picture)
	ori	$a1, $s2, 1784
	ld.d	$a0, $a0, 0
	ldx.w	$a1, $fp, $a1
	lu12i.w	$a2, 77
	ori	$a2, $a2, 1652
	ldx.w	$a0, $a0, $a2
	st.w	$a1, $sp, 20
	beqz	$a0, .LBB16_38
# %bb.17:                               # %.preheader90
	ldptr.w	$a0, $fp, 5936
	ori	$a2, $zero, 1
	blt	$a0, $a2, .LBB16_38
# %bb.18:                               # %.preheader89.lr.ph
	ldptr.w	$a1, $fp, 5932
	blt	$a1, $a2, .LBB16_40
# %bb.19:                               # %.preheader89.preheader
	move	$s3, $zero
	ori	$s4, $zero, 1
	ori	$s5, $s2, 1840
	b	.LBB16_22
	.p2align	4, , 16
.LBB16_20:                              # %._crit_edge.loopexit
                                        #   in Loop: Header=BB16_22 Depth=1
	ldx.w	$a0, $fp, $s5
.LBB16_21:                              # %._crit_edge
                                        #   in Loop: Header=BB16_22 Depth=1
	addi.w	$s3, $s3, 1
	bge	$s3, $a0, .LBB16_39
.LBB16_22:                              # %.preheader89
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB16_24 Depth 2
	blt	$a1, $s4, .LBB16_21
# %bb.23:                               # %.lr.ph
                                        #   in Loop: Header=BB16_22 Depth=1
	move	$s6, $zero
	bstrpick.d	$a0, $s3, 31, 2
	andi	$s7, $s3, 3
	alsl.d	$a0, $a0, $a0, 1
	slli.d	$a0, $a0, 8
	add.d	$s8, $s1, $a0
	.p2align	4, , 16
.LBB16_24:                              #   Parent Loop BB16_22 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a1, $s0, 0
	addi.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(readSyntaxElement_FLC)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 12
	bstrpick.d	$a1, $s6, 31, 2
	slli.d	$a1, $a1, 6
	andi	$a2, $s6, 3
	add.d	$a1, $a1, $s8
	alsl.d	$a1, $s7, $a1, 4
	alsl.d	$a1, $a2, $a1, 2
	st.w	$a0, $a1, 256
	ldptr.w	$a1, $fp, 5932
	addi.w	$s6, $s6, 1
	blt	$s6, $a1, .LBB16_24
	b	.LBB16_20
.LBB16_25:                              # %.preheader82
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB16_33
.LBB16_26:                              # %.preheader.lr.ph
	ldptr.w	$a1, $fp, 5932
	ori	$s2, $zero, 1
	blt	$a1, $s2, .LBB16_33
# %bb.27:                               # %.preheader.preheader
	move	$s3, $zero
	lu12i.w	$a2, 1
	ori	$s4, $a2, 1840
	b	.LBB16_29
	.p2align	4, , 16
.LBB16_28:                              # %._crit_edge109
                                        #   in Loop: Header=BB16_29 Depth=1
	addi.w	$s3, $s3, 1
	bge	$s3, $a0, .LBB16_33
.LBB16_29:                              # %.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB16_31 Depth 2
	blt	$a1, $s2, .LBB16_28
# %bb.30:                               # %.lr.ph108
                                        #   in Loop: Header=BB16_29 Depth=1
	move	$s5, $zero
	bstrpick.d	$a0, $s3, 31, 2
	addi.d	$a0, $a0, 2
	andi	$s6, $s3, 3
	alsl.d	$a0, $a0, $a0, 1
	slli.d	$a0, $a0, 8
	add.d	$s7, $s1, $a0
	.p2align	4, , 16
.LBB16_31:                              #   Parent Loop BB16_29 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a1, $s0, 0
	addi.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(readIPCMBytes_CABAC)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 12
	bstrpick.d	$a1, $s5, 31, 2
	slli.d	$a1, $a1, 6
	andi	$a2, $s5, 3
	add.d	$a1, $a1, $s7
	alsl.d	$a1, $s6, $a1, 4
	alsl.d	$a1, $a2, $a1, 2
	st.w	$a0, $a1, 256
	ldptr.w	$a1, $fp, 5932
	addi.w	$s5, $s5, 1
	blt	$s5, $a1, .LBB16_31
# %bb.32:                               # %._crit_edge109.loopexit
                                        #   in Loop: Header=BB16_29 Depth=1
	ldx.w	$a0, $fp, $s4
	b	.LBB16_28
.LBB16_33:                              # %.loopexit
	ldptr.d	$s0, $fp, 5592
	ld.w	$a1, $s0, 28
	ori	$a0, $zero, 1
	beqz	$a1, .LBB16_36
# %bb.34:                               # %.loopexit
	ori	$a0, $zero, 1
	bne	$a1, $a0, .LBB16_47
# %bb.35:
	ori	$a0, $zero, 3
.LBB16_36:
	move	$s1, $zero
	ori	$a1, $zero, 56
	mul.d	$s2, $a0, $a1
	.p2align	4, , 16
.LBB16_37:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s0, 40
	ldx.d	$a3, $a0, $s1
	ld.w	$a2, $a3, 0
	ld.d	$a1, $a3, 16
	ld.w	$a4, $fp, 44
	add.d	$a0, $a0, $s1
	addi.d	$a0, $a0, 8
	pcaddu18i	$ra, %call36(arideco_start_decoding)
	jirl	$ra, $ra, 0
	addi.d	$s1, $s1, 56
	bne	$s2, $s1, .LBB16_37
.LBB16_38:                              # %init_decoding_engine_IPCM.exit
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
.LBB16_39:                              # %.preheader87
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB16_38
.LBB16_40:                              # %.preheader86.lr.ph
	ldptr.w	$a1, $fp, 5932
	ori	$s3, $zero, 1
	blt	$a1, $s3, .LBB16_38
# %bb.41:                               # %.preheader86.preheader
	move	$s4, $zero
	ori	$s2, $s2, 1840
	b	.LBB16_44
	.p2align	4, , 16
.LBB16_42:                              # %._crit_edge99.loopexit
                                        #   in Loop: Header=BB16_44 Depth=1
	ldx.w	$a0, $fp, $s2
.LBB16_43:                              # %._crit_edge99
                                        #   in Loop: Header=BB16_44 Depth=1
	addi.w	$s4, $s4, 1
	bge	$s4, $a0, .LBB16_38
.LBB16_44:                              # %.preheader86
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB16_46 Depth 2
	blt	$a1, $s3, .LBB16_43
# %bb.45:                               # %.lr.ph98
                                        #   in Loop: Header=BB16_44 Depth=1
	move	$s5, $zero
	bstrpick.d	$a0, $s4, 31, 2
	addi.d	$a0, $a0, 2
	andi	$s6, $s4, 3
	alsl.d	$a0, $a0, $a0, 1
	slli.d	$a0, $a0, 8
	add.d	$s7, $s1, $a0
	.p2align	4, , 16
.LBB16_46:                              #   Parent Loop BB16_44 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a1, $s0, 0
	addi.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(readSyntaxElement_FLC)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 12
	bstrpick.d	$a1, $s5, 31, 2
	slli.d	$a1, $a1, 6
	andi	$a2, $s5, 3
	add.d	$a1, $a1, $s7
	alsl.d	$a1, $s6, $a1, 4
	alsl.d	$a1, $a2, $a1, 2
	st.w	$a0, $a1, 256
	ldptr.w	$a1, $fp, 5932
	addi.w	$s5, $s5, 1
	blt	$s5, $a1, .LBB16_46
	b	.LBB16_42
.LBB16_47:
	pcalau12i	$a0, %pc_hi20(.Lstr)
	addi.d	$a0, $a0, %pc_lo12(.Lstr)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end16:
	.size	readIPCMcoeffsFromNAL, .Lfunc_end16-readIPCMcoeffsFromNAL
                                        # -- End function
	.globl	init_decoding_engine_IPCM       # -- Begin function init_decoding_engine_IPCM
	.p2align	5
	.type	init_decoding_engine_IPCM,@function
init_decoding_engine_IPCM:              # @init_decoding_engine_IPCM
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
	ldptr.d	$s0, $a0, 5592
	ld.w	$a1, $s0, 28
	ori	$a0, $zero, 1
	beqz	$a1, .LBB17_3
# %bb.1:
	ori	$a0, $zero, 1
	bne	$a1, $a0, .LBB17_6
# %bb.2:
	ori	$a0, $zero, 3
.LBB17_3:
	move	$s1, $zero
	ori	$a1, $zero, 56
	mul.d	$s2, $a0, $a1
	.p2align	4, , 16
.LBB17_4:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s0, 40
	ldx.d	$a3, $a0, $s1
	ld.w	$a2, $a3, 0
	ld.d	$a1, $a3, 16
	ld.w	$a4, $fp, 44
	add.d	$a0, $a0, $s1
	addi.d	$a0, $a0, 8
	pcaddu18i	$ra, %call36(arideco_start_decoding)
	jirl	$ra, $ra, 0
	addi.d	$s1, $s1, 56
	bne	$s2, $s1, .LBB17_4
# %bb.5:
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.LBB17_6:
	pcalau12i	$a0, %pc_hi20(.Lstr)
	addi.d	$a0, $a0, %pc_lo12(.Lstr)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end17:
	.size	init_decoding_engine_IPCM, .Lfunc_end17-init_decoding_engine_IPCM
                                        # -- End function
	.globl	BType2CtxRef                    # -- Begin function BType2CtxRef
	.p2align	5
	.type	BType2CtxRef,@function
BType2CtxRef:                           # @BType2CtxRef
# %bb.0:
	ori	$a1, $zero, 3
	slt	$a0, $a1, $a0
	ret
.Lfunc_end18:
	.size	BType2CtxRef, .Lfunc_end18-BType2CtxRef
                                        # -- End function
	.globl	predict_nnz                     # -- Begin function predict_nnz
	.p2align	5
	.type	predict_nnz,@function
predict_nnz:                            # @predict_nnz
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
	move	$fp, $a0
	ld.w	$s0, $a0, 4
	ldptr.d	$s3, $a0, 5600
	slli.w	$s1, $a1, 2
	addi.d	$a0, $zero, -1
	alsl.w	$a1, $a1, $a0, 2
	slli.w	$s2, $a2, 2
	addi.d	$a3, $sp, 8
	move	$a0, $s0
	move	$a2, $s2
	pcaddu18i	$ra, %call36(getLuma4x4Neighbour)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 408
	mul.d	$a0, $s0, $a0
	add.d	$a0, $s3, $a0
	ld.w	$a1, $a0, 40
	addi.d	$s7, $a0, 40
	ori	$a0, $zero, 14
	lu12i.w	$s5, 6
	pcalau12i	$s4, %pc_hi20(active_pps)
	bltu	$a0, $a1, .LBB19_8
# %bb.1:
	ori	$a0, $zero, 1
	sll.d	$a0, $a0, $a1
	ori	$a2, $s5, 1536
	and	$a0, $a0, $a2
	beqz	$a0, .LBB19_8
# %bb.2:
	ld.w	$a0, $sp, 8
	beqz	$a0, .LBB19_7
.LBB19_3:
	ld.d	$a1, $s4, %pc_lo12(active_pps)
	ld.w	$a1, $a1, 1148
	beqz	$a1, .LBB19_6
# %bb.4:
	ldptr.d	$a1, $fp, 5592
	ld.w	$a1, $a1, 28
	ori	$a2, $zero, 1
	bne	$a1, $a2, .LBB19_6
# %bb.5:
	ld.w	$a1, $sp, 12
	ld.d	$a2, $fp, 16
	slli.d	$a1, $a1, 2
	ldx.w	$a1, $a2, $a1
	and	$a0, $a0, $a1
	st.w	$a0, $sp, 8
	sltui	$s3, $a0, 1
	b	.LBB19_10
.LBB19_6:
	move	$s3, $zero
	b	.LBB19_11
.LBB19_7:
	move	$s3, $zero
	b	.LBB19_12
.LBB19_8:
	ld.w	$a0, $sp, 8
	ori	$a2, $zero, 12
	move	$s3, $zero
	bne	$a1, $a2, .LBB19_10
# %bb.9:
	bnez	$a0, .LBB19_3
.LBB19_10:                              # %thread-pre-split
	beqz	$a0, .LBB19_12
.LBB19_11:                              # %thread-pre-split.thread
	ld.w	$a0, $sp, 12
	ldptr.d	$a1, $fp, 5560
	ld.w	$a2, $sp, 16
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $a1, $a0
	slli.d	$a1, $a2, 3
	ld.w	$a2, $sp, 20
	ldx.d	$a0, $a0, $a1
	slli.d	$a1, $a2, 2
	ldx.w	$s6, $a0, $a1
	addi.d	$s3, $s3, 1
	b	.LBB19_13
.LBB19_12:
	move	$s6, $zero
.LBB19_13:                              # %.thread
	addi.w	$a2, $s2, -1
	addi.d	$a3, $sp, 8
	move	$a0, $s0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(getLuma4x4Neighbour)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s7, 0
	ori	$a0, $zero, 14
	bltu	$a0, $a1, .LBB19_19
# %bb.14:                               # %.thread
	ori	$a0, $zero, 1
	sll.d	$a0, $a0, $a1
	ori	$a2, $s5, 1536
	and	$a0, $a0, $a2
	beqz	$a0, .LBB19_19
# %bb.15:
	ld.w	$a0, $sp, 8
	beqz	$a0, .LBB19_23
.LBB19_16:
	ld.d	$a1, $s4, %pc_lo12(active_pps)
	ld.w	$a1, $a1, 1148
	beqz	$a1, .LBB19_22
# %bb.17:
	ldptr.d	$a1, $fp, 5592
	ld.w	$a1, $a1, 28
	ori	$a2, $zero, 1
	bne	$a1, $a2, .LBB19_22
# %bb.18:
	ld.w	$a1, $sp, 12
	ld.d	$a2, $fp, 16
	slli.d	$a1, $a1, 2
	ldx.w	$a1, $a2, $a1
	and	$a0, $a0, $a1
	st.w	$a0, $sp, 8
	sltui	$a1, $a0, 1
	add.d	$s3, $s3, $a1
	b	.LBB19_21
.LBB19_19:
	ld.w	$a0, $sp, 8
	ori	$a2, $zero, 12
	bne	$a1, $a2, .LBB19_21
# %bb.20:
	bnez	$a0, .LBB19_16
.LBB19_21:                              # %thread-pre-split52
	beqz	$a0, .LBB19_23
.LBB19_22:                              # %thread-pre-split52.thread
	ld.w	$a0, $sp, 12
	ldptr.d	$a1, $fp, 5560
	ld.w	$a2, $sp, 16
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $a1, $a0
	slli.d	$a1, $a2, 3
	ld.w	$a2, $sp, 20
	ldx.d	$a0, $a0, $a1
	slli.d	$a1, $a2, 2
	ldx.w	$a0, $a0, $a1
	add.d	$s6, $a0, $s6
	addi.d	$s3, $s3, 1
.LBB19_23:                              # %.thread54
	addi.d	$a0, $s3, -2
	sltui	$a0, $a0, 1
	addi.w	$a1, $s6, 1
	srli.d	$a1, $a1, 1
	masknez	$a2, $s6, $a0
	maskeqz	$a0, $a1, $a0
	or	$a0, $a0, $a2
	addi.w	$a0, $a0, 0
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
.Lfunc_end19:
	.size	predict_nnz, .Lfunc_end19-predict_nnz
                                        # -- End function
	.globl	predict_nnz_chroma              # -- Begin function predict_nnz_chroma
	.p2align	5
	.type	predict_nnz_chroma,@function
predict_nnz_chroma:                     # @predict_nnz_chroma
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
	move	$s2, $a1
	move	$fp, $a0
	pcalau12i	$a0, %got_pc_hi20(dec_picture)
	ld.d	$a0, $a0, %got_pc_lo12(dec_picture)
	ld.w	$s0, $fp, 4
	slli.d	$s6, $a2, 2
	ldptr.d	$a1, $fp, 5600
	ld.d	$a0, $a0, 0
	ori	$a3, $zero, 408
	lu12i.w	$a4, 77
	ori	$a4, $a4, 1652
	ldx.w	$a0, $a0, $a4
	mul.d	$a3, $s0, $a3
	add.d	$s4, $a1, $a3
	ori	$a1, $zero, 3
	slli.w	$s1, $s2, 2
	bne	$a0, $a1, .LBB20_7
# %bb.1:
	pcalau12i	$a0, %pc_hi20(predict_nnz_chroma.j_off_tab)
	addi.d	$a0, $a0, %pc_lo12(predict_nnz_chroma.j_off_tab)
	ldx.w	$s6, $a0, $s6
	addi.w	$a1, $s1, -1
	sub.d	$a0, $a2, $s6
	slli.w	$s2, $a0, 2
	addi.d	$a3, $sp, 0
	move	$a0, $s0
	move	$a2, $s2
	pcaddu18i	$ra, %call36(getChroma4x4Neighbour)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s4, 40
	ori	$a0, $zero, 14
	bltu	$a0, $a1, .LBB20_17
# %bb.2:
	ori	$a0, $zero, 1
	sll.d	$a0, $a0, $a1
	lu12i.w	$a2, 6
	ori	$a2, $a2, 1536
	and	$a0, $a0, $a2
	beqz	$a0, .LBB20_17
# %bb.3:
	ld.w	$a0, $sp, 0
	beqz	$a0, .LBB20_15
.LBB20_4:
	pcalau12i	$a1, %pc_hi20(active_pps)
	ld.d	$a1, $a1, %pc_lo12(active_pps)
	ld.w	$a1, $a1, 1148
	beqz	$a1, .LBB20_13
# %bb.5:
	ldptr.d	$a1, $fp, 5592
	ld.w	$a1, $a1, 28
	ori	$a2, $zero, 1
	bne	$a1, $a2, .LBB20_13
# %bb.6:
	ld.w	$a1, $sp, 4
	ld.d	$a2, $fp, 16
	slli.d	$a1, $a1, 2
	ldx.w	$a1, $a2, $a1
	and	$a0, $a0, $a1
	st.w	$a0, $sp, 0
	addi.w	$s3, $zero, -1
	b	.LBB20_19
.LBB20_7:
	andi	$s1, $s1, 4
	addi.d	$a1, $s1, -1
	addi.d	$a0, $zero, -16
	alsl.w	$a2, $a2, $a0, 2
	addi.d	$a3, $sp, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(getChroma4x4Neighbour)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s4, 40
	ori	$a0, $zero, 14
	lu12i.w	$s8, 6
	bstrpick.d	$s2, $s2, 31, 1
	pcalau12i	$s7, %pc_hi20(active_pps)
	bltu	$a0, $a1, .LBB20_28
# %bb.8:
	ori	$a0, $zero, 1
	sll.d	$a0, $a0, $a1
	ori	$a2, $s8, 1536
	and	$a0, $a0, $a2
	beqz	$a0, .LBB20_28
# %bb.9:
	ld.w	$a0, $sp, 0
	beqz	$a0, .LBB20_16
.LBB20_10:
	ld.d	$a1, $s7, %pc_lo12(active_pps)
	ld.w	$a1, $a1, 1148
	beqz	$a1, .LBB20_14
# %bb.11:
	ldptr.d	$a1, $fp, 5592
	ld.w	$a1, $a1, 28
	ori	$a2, $zero, 1
	bne	$a1, $a2, .LBB20_14
# %bb.12:
	ld.w	$a1, $sp, 4
	ld.d	$a2, $fp, 16
	slli.d	$a1, $a1, 2
	ldx.w	$a1, $a2, $a1
	and	$a0, $a0, $a1
	st.w	$a0, $sp, 0
	sltui	$s3, $a0, 1
	b	.LBB20_30
.LBB20_13:
	move	$s3, $zero
	b	.LBB20_20
.LBB20_14:
	move	$s3, $zero
	b	.LBB20_31
.LBB20_15:
	move	$s3, $zero
	b	.LBB20_21
.LBB20_16:
	move	$s3, $zero
	b	.LBB20_32
.LBB20_17:
	ld.w	$a0, $sp, 0
	ori	$a2, $zero, 12
	move	$s3, $zero
	bne	$a1, $a2, .LBB20_19
# %bb.18:
	bnez	$a0, .LBB20_4
.LBB20_19:                              # %thread-pre-split107
	beqz	$a0, .LBB20_21
.LBB20_20:                              # %thread-pre-split107.thread
	ld.w	$a0, $sp, 4
	ldptr.d	$a1, $fp, 5560
	slli.d	$a0, $a0, 3
	ld.w	$a2, $sp, 8
	ldx.d	$a0, $a1, $a0
	ld.w	$a1, $sp, 12
	slli.d	$a2, $a2, 3
	ldx.d	$a0, $a0, $a2
	add.w	$a1, $a1, $s6
	slli.d	$a1, $a1, 2
	ldx.w	$s5, $a0, $a1
	addi.d	$s3, $s3, 1
	b	.LBB20_22
.LBB20_21:
	move	$s5, $zero
.LBB20_22:                              # %.thread109
	addi.w	$a2, $s2, -1
	addi.d	$a3, $sp, 0
	move	$a0, $s0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(getChroma4x4Neighbour)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s4, 40
	ori	$a0, $zero, 14
	bltu	$a0, $a1, .LBB20_39
# %bb.23:                               # %.thread109
	ori	$a0, $zero, 1
	sll.d	$a0, $a0, $a1
	lu12i.w	$a2, 6
	ori	$a2, $a2, 1536
	and	$a0, $a0, $a2
	beqz	$a0, .LBB20_39
# %bb.24:
	ld.w	$a0, $sp, 0
	beqz	$a0, .LBB20_48
.LBB20_25:
	pcalau12i	$a1, %pc_hi20(active_pps)
	ld.d	$a1, $a1, %pc_lo12(active_pps)
	ld.w	$a1, $a1, 1148
	beqz	$a1, .LBB20_42
# %bb.26:
	ldptr.d	$a1, $fp, 5592
	ld.w	$a1, $a1, 28
	ori	$a2, $zero, 1
	bne	$a1, $a2, .LBB20_42
# %bb.27:
	ld.w	$a1, $sp, 4
	ld.d	$a2, $fp, 16
	slli.d	$a1, $a1, 2
	ldx.w	$a1, $a2, $a1
	and	$a0, $a0, $a1
	st.w	$a0, $sp, 0
	addi.d	$s3, $s3, -1
	b	.LBB20_41
.LBB20_28:
	ld.w	$a0, $sp, 0
	ori	$a2, $zero, 12
	move	$s3, $zero
	bne	$a1, $a2, .LBB20_30
# %bb.29:
	bnez	$a0, .LBB20_10
.LBB20_30:                              # %thread-pre-split
	beqz	$a0, .LBB20_32
.LBB20_31:                              # %thread-pre-split.thread
	ld.w	$a0, $sp, 4
	ldptr.d	$a1, $fp, 5560
	ld.w	$a2, $sp, 8
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $a1, $a0
	alsl.w	$a1, $s2, $a2, 1
	slli.d	$a1, $a1, 3
	ldx.d	$a0, $a0, $a1
	ld.w	$a1, $sp, 12
	alsl.d	$a0, $a1, $a0, 2
	ld.w	$s5, $a0, 16
	addi.d	$s3, $s3, 1
	b	.LBB20_33
.LBB20_32:
	move	$s5, $zero
.LBB20_33:                              # %.thread
	addi.w	$a2, $s6, -17
	addi.d	$a3, $sp, 0
	move	$a0, $s0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(getChroma4x4Neighbour)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s4, 40
	ori	$a0, $zero, 14
	bltu	$a0, $a1, .LBB20_43
# %bb.34:                               # %.thread
	ori	$a0, $zero, 1
	sll.d	$a0, $a0, $a1
	ori	$a2, $s8, 1536
	and	$a0, $a0, $a2
	beqz	$a0, .LBB20_43
# %bb.35:
	ld.w	$a0, $sp, 0
	beqz	$a0, .LBB20_48
.LBB20_36:
	ld.d	$a1, $s7, %pc_lo12(active_pps)
	ld.w	$a1, $a1, 1148
	beqz	$a1, .LBB20_46
# %bb.37:
	ldptr.d	$a1, $fp, 5592
	ld.w	$a1, $a1, 28
	ori	$a2, $zero, 1
	bne	$a1, $a2, .LBB20_46
# %bb.38:
	ld.w	$a1, $sp, 4
	ld.d	$a2, $fp, 16
	slli.d	$a1, $a1, 2
	ldx.w	$a1, $a2, $a1
	and	$a0, $a0, $a1
	st.w	$a0, $sp, 0
	sltui	$a1, $a0, 1
	add.d	$s3, $s3, $a1
	b	.LBB20_45
.LBB20_39:
	ld.w	$a0, $sp, 0
	ori	$a2, $zero, 12
	bne	$a1, $a2, .LBB20_41
# %bb.40:
	bnez	$a0, .LBB20_25
.LBB20_41:                              # %thread-pre-split112
	beqz	$a0, .LBB20_48
.LBB20_42:                              # %thread-pre-split112.thread
	ld.w	$a0, $sp, 4
	ldptr.d	$a1, $fp, 5560
	slli.d	$a0, $a0, 3
	ld.w	$a2, $sp, 8
	ldx.d	$a0, $a1, $a0
	ld.w	$a1, $sp, 12
	slli.d	$a2, $a2, 3
	ldx.d	$a0, $a0, $a2
	add.w	$a1, $a1, $s6
	slli.d	$a1, $a1, 2
	ldx.w	$a0, $a0, $a1
	b	.LBB20_47
.LBB20_43:
	ld.w	$a0, $sp, 0
	ori	$a2, $zero, 12
	bne	$a1, $a2, .LBB20_45
# %bb.44:
	bnez	$a0, .LBB20_36
.LBB20_45:                              # %thread-pre-split102
	beqz	$a0, .LBB20_48
.LBB20_46:                              # %thread-pre-split102.thread
	ld.w	$a0, $sp, 4
	ldptr.d	$a1, $fp, 5560
	ld.w	$a2, $sp, 8
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $a1, $a0
	alsl.w	$a1, $s2, $a2, 1
	slli.d	$a1, $a1, 3
	ldx.d	$a0, $a0, $a1
	ld.w	$a1, $sp, 12
	alsl.d	$a0, $a1, $a0, 2
	ld.w	$a0, $a0, 16
.LBB20_47:                              # %.thread104
	add.d	$s5, $a0, $s5
	addi.d	$s3, $s3, 1
.LBB20_48:                              # %.thread104
	addi.d	$a0, $s3, -2
	sltui	$a0, $a0, 1
	addi.w	$a1, $s5, 1
	srli.d	$a1, $a1, 1
	masknez	$a2, $s5, $a0
	maskeqz	$a0, $a1, $a0
	or	$a0, $a0, $a2
	addi.w	$a0, $a0, 0
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
.Lfunc_end20:
	.size	predict_nnz_chroma, .Lfunc_end20-predict_nnz_chroma
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function readCoeff4x4_CAVLC
.LCPI21_0:
	.word	0                               # 0x0
	.word	4294967295                      # 0xffffffff
	.word	4294967294                      # 0xfffffffe
	.word	4294967293                      # 0xfffffffd
	.text
	.globl	readCoeff4x4_CAVLC
	.p2align	5
	.type	readCoeff4x4_CAVLC,@function
readCoeff4x4_CAVLC:                     # @readCoeff4x4_CAVLC
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
	move	$s3, $a0
	ldptr.d	$s1, $a0, 5592
	ld.w	$a0, $s1, 28
	pcalau12i	$a1, %got_pc_hi20(assignSE2partition)
	ld.d	$a1, $a1, %got_pc_lo12(assignSE2partition)
	move	$s2, $a7
	st.d	$a6, $sp, 0                     # 8-byte Folded Spill
	move	$s0, $a5
	move	$s4, $a4
	move	$s5, $a3
	slli.d	$a3, $a0, 6
	alsl.d	$a0, $a0, $a3, 4
	add.d	$s8, $a1, $a0
	ori	$a1, $zero, 7
	ori	$fp, $zero, 1
	bltu	$a1, $a2, .LBB21_5
# %bb.1:
	ld.w	$a0, $s3, 4
	ldptr.d	$a3, $s3, 5600
	ori	$a4, $zero, 408
	slli.d	$a2, $a2, 2
	pcalau12i	$a5, %pc_hi20(.LJTI21_0)
	addi.d	$a5, $a5, %pc_lo12(.LJTI21_0)
	ldx.w	$a6, $a5, $a2
	mul.d	$a2, $a0, $a4
	add.d	$a2, $a3, $a2
	ori	$s6, $zero, 16
	add.d	$a3, $a5, $a6
	ori	$s7, $zero, 1
	jr	$a3
.LBB21_2:
	ld.w	$a3, $a2, 40
	ori	$a2, $zero, 14
	bltu	$a2, $a3, .LBB21_4
# %bb.3:
	ori	$a1, $zero, 1
	sll.d	$a1, $a1, $a3
	lu12i.w	$a4, 6
	ori	$a4, $a4, 1536
	and	$a4, $a1, $a4
	ori	$a1, $zero, 9
	bnez	$a4, .LBB21_16
.LBB21_4:
	addi.d	$a1, $a3, -12
	sltui	$a1, $a1, 1
	masknez	$a2, $a2, $a1
	ori	$a3, $zero, 9
	b	.LBB21_15
.LBB21_5:
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a0, $a0, %pc_lo12(.L.str.4)
	ori	$a1, $zero, 600
	pcaddu18i	$ra, %call36(error)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s3, 4
	move	$a1, $zero
	move	$s6, $zero
	b	.LBB21_16
.LBB21_6:
	ori	$s6, $zero, 15
	ori	$a1, $zero, 9
	b	.LBB21_16
.LBB21_7:
	lu12i.w	$a1, 1
	ori	$a3, $a1, 1832
	ld.w	$a1, $a2, 40
	ldx.w	$s6, $s3, $a3
	ori	$a2, $zero, 14
	bltu	$a2, $a1, .LBB21_13
# %bb.8:
	ori	$a2, $zero, 1
	sll.d	$a2, $a2, $a1
	lu12i.w	$a3, 6
	ori	$a3, $a3, 1536
	and	$a2, $a2, $a3
	beqz	$a2, .LBB21_13
# %bb.9:
	move	$s7, $zero
	ori	$a1, $zero, 8
	b	.LBB21_17
.LBB21_10:
	ld.w	$a1, $a2, 40
	ori	$a2, $zero, 14
	bltu	$a2, $a1, .LBB21_14
# %bb.11:
	ori	$a2, $zero, 1
	sll.d	$a2, $a2, $a1
	lu12i.w	$a3, 6
	ori	$a3, $a3, 1536
	and	$a2, $a2, $a3
	beqz	$a2, .LBB21_14
# %bb.12:
	move	$fp, $zero
	ori	$s6, $zero, 15
	ori	$a1, $zero, 10
	b	.LBB21_16
.LBB21_13:
	move	$s7, $zero
	addi.d	$a1, $a1, -12
	sltui	$a1, $a1, 1
	ori	$a2, $zero, 13
	masknez	$a2, $a2, $a1
	ori	$a3, $zero, 8
	maskeqz	$a1, $a3, $a1
	or	$a1, $a1, $a2
	b	.LBB21_17
.LBB21_14:
	move	$fp, $zero
	addi.d	$a1, $a1, -12
	sltui	$a1, $a1, 1
	ori	$s6, $zero, 15
	masknez	$a2, $s6, $a1
	ori	$a3, $zero, 10
.LBB21_15:
	maskeqz	$a1, $a3, $a1
	or	$a1, $a1, $a2
.LBB21_16:
	ori	$s7, $zero, 1
.LBB21_17:
	ldptr.d	$a2, $s3, 5560
	bstrpick.d	$a0, $a0, 31, 0
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $a2, $a0
	st.w	$a1, $sp, 24
	ld.d	$a2, $s1, 40
	slli.d	$a1, $a1, 2
	ldx.w	$a1, $s8, $a1
	slli.d	$a3, $s5, 3
	ldx.d	$a0, $a0, $a3
	ori	$a3, $zero, 56
	mul.d	$a1, $a1, $a3
	add.d	$s1, $a2, $a1
	slli.d	$a1, $s4, 2
	stx.w	$zero, $a0, $a1
	beqz	$s7, .LBB21_22
# %bb.18:
	move	$a0, $s3
	move	$a1, $s5
	move	$a2, $s4
	beqz	$fp, .LBB21_23
# %bb.19:
	pcaddu18i	$ra, %call36(predict_nnz)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 2
	blt	$a0, $a1, .LBB21_24
.LBB21_20:
	ori	$a2, $zero, 4
	ori	$a1, $zero, 1
	bltu	$a0, $a2, .LBB21_25
# %bb.21:
	sltui	$a0, $a0, 8
	xori	$a1, $a0, 3
	b	.LBB21_25
.LBB21_22:
	addi.d	$a0, $sp, 24
	move	$a1, $s1
	pcaddu18i	$ra, %call36(readSyntaxElement_NumCoeffTrailingOnesChromaDC)
	jirl	$ra, $ra, 0
	ld.w	$s3, $sp, 28
	ld.w	$s5, $sp, 32
	ori	$a0, $zero, 1
	bge	$s6, $a0, .LBB21_26
	b	.LBB21_33
.LBB21_23:
	pcaddu18i	$ra, %call36(predict_nnz_chroma)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 2
	bge	$a0, $a1, .LBB21_20
.LBB21_24:
	move	$a1, $zero
.LBB21_25:
	st.w	$a1, $sp, 28
	addi.d	$a0, $sp, 24
	addi.d	$a2, $sp, 9
	move	$a1, $s1
	pcaddu18i	$ra, %call36(readSyntaxElement_NumCoeffTrailingOnes)
	jirl	$ra, $ra, 0
	ld.wu	$a0, $s3, 4
	ldptr.d	$a1, $s3, 5560
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $a1, $a0
	ld.w	$s3, $sp, 28
	slli.d	$a1, $s5, 3
	ldx.d	$a0, $a0, $a1
	ld.w	$s5, $sp, 32
	slli.d	$a1, $s4, 2
	stx.w	$s3, $a0, $a1
	ori	$a0, $zero, 1
	blt	$s6, $a0, .LBB21_33
.LBB21_26:                              # %.lr.ph.preheader
	ori	$a1, $zero, 8
	move	$a0, $zero
	bltu	$s6, $a1, .LBB21_31
# %bb.27:                               # %.lr.ph.preheader
	ld.d	$a1, $sp, 0                     # 8-byte Folded Reload
	sub.d	$a1, $a1, $s0
	ori	$a2, $zero, 32
	bltu	$a1, $a2, .LBB21_31
# %bb.28:                               # %vector.ph
	bstrpick.d	$a0, $s6, 30, 3
	slli.d	$a0, $a0, 3
	ld.d	$a1, $sp, 0                     # 8-byte Folded Reload
	addi.d	$a1, $a1, 16
	addi.d	$a2, $s0, 16
	vrepli.b	$vr0, 0
	move	$a3, $a0
	.p2align	4, , 16
.LBB21_29:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vst	$vr0, $a2, -16
	vst	$vr0, $a2, 0
	vst	$vr0, $a1, -16
	vst	$vr0, $a1, 0
	addi.d	$a3, $a3, -8
	addi.d	$a1, $a1, 32
	addi.d	$a2, $a2, 32
	bnez	$a3, .LBB21_29
# %bb.30:                               # %middle.block
	beq	$a0, $s6, .LBB21_33
.LBB21_31:                              # %.lr.ph.preheader204
	ld.d	$a1, $sp, 0                     # 8-byte Folded Reload
	alsl.d	$a1, $a0, $a1, 2
	alsl.d	$a2, $a0, $s0, 2
	sub.d	$a0, $s6, $a0
	.p2align	4, , 16
.LBB21_32:                              # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	st.w	$zero, $a2, 0
	st.w	$zero, $a1, 0
	addi.d	$a1, $a1, 4
	addi.d	$a0, $a0, -1
	addi.d	$a2, $a2, 4
	bnez	$a0, .LBB21_32
.LBB21_33:                              # %._crit_edge
	st.w	$s3, $s2, 0
	beqz	$s3, .LBB21_59
# %bb.34:
	beqz	$s5, .LBB21_43
# %bb.35:
	ld.d	$a1, $s1, 0
	st.w	$s5, $sp, 36
	addi.d	$a0, $sp, 24
	pcaddu18i	$ra, %call36(readSyntaxElement_FLC)
	jirl	$ra, $ra, 0
	addi.w	$s4, $s3, -1
	ori	$a0, $zero, 1
	sub.w	$fp, $s4, $s5
	blt	$s5, $a0, .LBB21_42
# %bb.36:                               # %.lr.ph167.preheader
	ld.w	$a0, $sp, 40
	addi.d	$a1, $s4, -1
	slt	$a2, $fp, $a1
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $fp, $a2
	or	$a1, $a2, $a1
	sub.d	$a2, $s4, $a1
	ori	$a4, $zero, 8
	move	$a1, $s4
	move	$a3, $s5
	bltu	$a2, $a4, .LBB21_40
# %bb.37:                               # %vector.ph191
	move	$a4, $a2
	bstrins.d	$a4, $zero, 2, 0
	sub.d	$a1, $s4, $a4
	pcalau12i	$a3, %pc_hi20(.LCPI21_0)
	vld	$vr1, $a3, %pc_lo12(.LCPI21_0)
	sub.d	$a3, $s5, $a4
	vreplgr2vr.w	$vr0, $a0
	vreplgr2vr.w	$vr2, $s5
	vadd.w	$vr1, $vr2, $vr1
	alsl.d	$a5, $s4, $s0, 2
	addi.d	$a5, $a5, -12
	vrepli.b	$vr2, -1
	vrepli.w	$vr3, -5
	vrepli.w	$vr4, 1
	vrepli.w	$vr5, -8
	move	$a6, $a4
	.p2align	4, , 16
.LBB21_38:                              # %vector.body194
                                        # =>This Inner Loop Header: Depth=1
	vadd.w	$vr6, $vr1, $vr2
	vadd.w	$vr7, $vr1, $vr3
	vsrl.w	$vr6, $vr0, $vr6
	vand.v	$vr6, $vr6, $vr4
	vseqi.w	$vr6, $vr6, 0
	vsrl.w	$vr7, $vr0, $vr7
	vand.v	$vr7, $vr7, $vr4
	vseqi.w	$vr7, $vr7, 0
	vbitsel.v	$vr6, $vr2, $vr4, $vr6
	vbitsel.v	$vr7, $vr2, $vr4, $vr7
	vshuf4i.w	$vr6, $vr6, 27
	vst	$vr6, $a5, 0
	vshuf4i.w	$vr6, $vr7, 27
	vst	$vr6, $a5, -16
	vadd.w	$vr1, $vr1, $vr5
	addi.d	$a6, $a6, -8
	addi.d	$a5, $a5, -32
	bnez	$a6, .LBB21_38
# %bb.39:                               # %middle.block198
	beq	$a2, $a4, .LBB21_42
.LBB21_40:                              # %.lr.ph167.preheader203
	alsl.d	$a2, $a1, $s0, 2
	addi.d	$a3, $a3, -1
	.p2align	4, , 16
.LBB21_41:                              # %.lr.ph167
                                        # =>This Inner Loop Header: Depth=1
	srl.w	$a4, $a0, $a3
	andi	$a4, $a4, 1
	sub.d	$a4, $zero, $a4
	ori	$a4, $a4, 1
	st.w	$a4, $a2, 0
	addi.d	$a1, $a1, -1
	addi.d	$a2, $a2, -4
	addi.d	$a3, $a3, -1
	blt	$fp, $a1, .LBB21_41
.LBB21_42:                              # %.loopexit
	bgez	$fp, .LBB21_44
	b	.LBB21_54
.LBB21_43:                              # %..loopexit_crit_edge
	addi.w	$s4, $s3, -1
	sub.w	$fp, $s4, $s5
	bltz	$fp, .LBB21_54
.LBB21_44:                              # %.lr.ph172
	ori	$a0, $zero, 10
	slt	$a0, $a0, $s3
	slti	$a1, $s5, 3
	and	$s2, $a0, $a1
	ori	$a0, $zero, 3
	slt	$a0, $a0, $s3
	addi.d	$a1, $s5, -3
	sltui	$a1, $a1, 1
	ori	$a2, $zero, 1
	and	$s5, $a0, $a1
	addi.d	$a0, $sp, 24
	bne	$s2, $a2, .LBB21_46
# %bb.45:
	move	$a1, $s2
	move	$a2, $s1
	pcaddu18i	$ra, %call36(readSyntaxElement_Level_VLCN)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 40
	beqz	$s5, .LBB21_47
	b	.LBB21_48
.LBB21_46:
	move	$a1, $s1
	pcaddu18i	$ra, %call36(readSyntaxElement_Level_VLC0)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 40
	bnez	$s5, .LBB21_48
.LBB21_47:
	slti	$a1, $a0, 1
	sub.d	$a1, $zero, $a1
	ori	$a1, $a1, 1
	add.w	$a0, $a1, $a0
	st.w	$a0, $sp, 40
.LBB21_48:
	slli.d	$a1, $fp, 2
	stx.w	$a0, $s0, $a1
	beqz	$fp, .LBB21_54
# %bb.49:                               # %.peel.next
	srai.d	$a1, $a0, 31
	xor	$a0, $a0, $a1
	slli.d	$a2, $s2, 2
	pcalau12i	$a3, %pc_hi20(readCoeff4x4_CAVLC.incVlc)
	addi.d	$s5, $a3, %pc_lo12(readCoeff4x4_CAVLC.incVlc)
	ldx.w	$a2, $s5, $a2
	sub.w	$a0, $a0, $a1
	ori	$a1, $zero, 3
	sltu	$a1, $a1, $a0
	slt	$a0, $a2, $a0
	add.w	$a0, $s2, $a0
	masknez	$a0, $a0, $a1
	ori	$a2, $zero, 2
	maskeqz	$a1, $a2, $a1
	or	$s2, $a1, $a0
	addi.d	$s8, $fp, 1
	alsl.d	$a0, $fp, $s0, 2
	addi.d	$fp, $a0, -4
	ori	$s0, $zero, 1
	b	.LBB21_52
	.p2align	4, , 16
.LBB21_50:                              #   in Loop: Header=BB21_52 Depth=1
	move	$a1, $s2
	move	$a2, $s1
	pcaddu18i	$ra, %call36(readSyntaxElement_Level_VLCN)
	jirl	$ra, $ra, 0
.LBB21_51:                              #   in Loop: Header=BB21_52 Depth=1
	ld.w	$a0, $sp, 40
	st.w	$a0, $fp, 0
	slli.d	$a1, $s2, 2
	ldx.w	$a1, $s5, $a1
	srai.d	$a2, $a0, 31
	xor	$a0, $a0, $a2
	sub.w	$a0, $a0, $a2
	slt	$a0, $a1, $a0
	add.w	$s2, $s2, $a0
	addi.d	$s8, $s8, -1
	addi.d	$fp, $fp, -4
	bgeu	$s0, $s8, .LBB21_54
.LBB21_52:                              # =>This Inner Loop Header: Depth=1
	addi.d	$a0, $sp, 24
	bnez	$s2, .LBB21_50
# %bb.53:                               #   in Loop: Header=BB21_52 Depth=1
	move	$a1, $s1
	pcaddu18i	$ra, %call36(readSyntaxElement_Level_VLC0)
	jirl	$ra, $ra, 0
	b	.LBB21_51
.LBB21_54:                              # %._crit_edge173
	bge	$s3, $s6, .LBB21_57
# %bb.55:
	st.w	$s4, $sp, 28
	addi.d	$a0, $sp, 24
	move	$a1, $s1
	beqz	$s7, .LBB21_60
# %bb.56:
	pcaddu18i	$ra, %call36(readSyntaxElement_TotalZeros)
	jirl	$ra, $ra, 0
	ld.w	$fp, $sp, 28
	ori	$a0, $zero, 1
	bge	$fp, $a0, .LBB21_61
	b	.LBB21_58
.LBB21_57:
	move	$fp, $zero
.LBB21_58:                              # %.thread
	slli.d	$a0, $s4, 2
	ld.d	$a1, $sp, 0                     # 8-byte Folded Reload
	stx.w	$fp, $a1, $a0
.LBB21_59:
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
.LBB21_60:
	pcaddu18i	$ra, %call36(readSyntaxElement_TotalZerosChromaDC)
	jirl	$ra, $ra, 0
	ld.w	$fp, $sp, 28
	ori	$a0, $zero, 1
	blt	$fp, $a0, .LBB21_58
.LBB21_61:
	ori	$a0, $zero, 2
	blt	$s3, $a0, .LBB21_58
# %bb.62:                               # %.preheader
	ld.d	$a0, $sp, 0                     # 8-byte Folded Reload
	addi.d	$s0, $a0, -4
	slli.d	$a0, $s3, 2
	addi.d	$s4, $s3, -1
	ori	$s2, $zero, 7
	ori	$s3, $zero, 8
	.p2align	4, , 16
.LBB21_63:                              # =>This Inner Loop Header: Depth=1
	move	$s5, $a0
	slti	$a0, $fp, 7
	masknez	$a1, $s2, $a0
	maskeqz	$a0, $fp, $a0
	or	$a0, $a0, $a1
	addi.d	$a0, $a0, -1
	st.w	$a0, $sp, 28
	addi.d	$a0, $sp, 24
	move	$a1, $s1
	pcaddu18i	$ra, %call36(readSyntaxElement_Run)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 28
	stx.w	$a0, $s0, $s5
	sub.w	$fp, $fp, $a0
	addi.w	$s4, $s4, -1
	beqz	$fp, .LBB21_58
# %bb.64:                               #   in Loop: Header=BB21_63 Depth=1
	addi.d	$a0, $s5, -4
	bne	$s5, $s3, .LBB21_63
	b	.LBB21_58
.Lfunc_end21:
	.size	readCoeff4x4_CAVLC, .Lfunc_end21-readCoeff4x4_CAVLC
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI21_0:
	.word	.LBB21_2-.LJTI21_0
	.word	.LBB21_17-.LJTI21_0
	.word	.LBB21_6-.LJTI21_0
	.word	.LBB21_5-.LJTI21_0
	.word	.LBB21_5-.LJTI21_0
	.word	.LBB21_5-.LJTI21_0
	.word	.LBB21_7-.LJTI21_0
	.word	.LBB21_10-.LJTI21_0
                                        # -- End function
	.text
	.globl	CalculateQuant8Param            # -- Begin function CalculateQuant8Param
	.p2align	5
	.type	CalculateQuant8Param,@function
CalculateQuant8Param:                   # @CalculateQuant8Param
# %bb.0:
	pcalau12i	$a0, %pc_hi20(qmatrix)
	addi.d	$a1, $a0, %pc_lo12(qmatrix)
	ld.d	$a2, $a1, 48
	move	$a0, $zero
	ld.d	$a3, $a1, 56
	addi.d	$a1, $a2, 128
	pcalau12i	$a2, %pc_hi20(dequant_coef8+16)
	addi.d	$a2, $a2, %pc_lo12(dequant_coef8+16)
	addi.d	$a3, $a3, 128
	pcalau12i	$a4, %pc_hi20(InvLevelScale8x8Luma_Inter)
	addi.d	$a4, $a4, %pc_lo12(InvLevelScale8x8Luma_Inter)
	pcalau12i	$a5, %pc_hi20(InvLevelScale8x8Luma_Intra)
	addi.d	$a5, $a5, %pc_lo12(InvLevelScale8x8Luma_Intra)
	ori	$a6, $zero, 32
	ori	$a7, $zero, 6
	.p2align	4, , 16
.LBB22_1:                               # %.preheader24
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB22_2 Depth 2
	move	$t0, $zero
	move	$t1, $a2
	.p2align	4, , 16
.LBB22_2:                               # %.preheader
                                        #   Parent Loop BB22_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t2, $t1, -16
	add.d	$t3, $a1, $t0
	ld.w	$t4, $t3, -128
	mul.d	$t4, $t4, $t2
	stx.w	$t4, $a5, $t0
	add.d	$t4, $a3, $t0
	ld.w	$t5, $t4, -128
	mul.d	$t2, $t5, $t2
	stx.w	$t2, $a4, $t0
	ld.w	$t2, $t1, -12
	ld.w	$t5, $t3, -96
	add.d	$t6, $a5, $t0
	mul.d	$t5, $t5, $t2
	st.w	$t5, $t6, 32
	ld.w	$t5, $t4, -96
	add.d	$t7, $a4, $t0
	mul.d	$t2, $t5, $t2
	st.w	$t2, $t7, 32
	ld.w	$t2, $t1, -8
	ld.w	$t5, $t3, -64
	mul.d	$t5, $t5, $t2
	st.w	$t5, $t6, 64
	ld.w	$t5, $t4, -64
	mul.d	$t2, $t5, $t2
	st.w	$t2, $t7, 64
	ld.w	$t2, $t1, -4
	ld.w	$t5, $t3, -32
	mul.d	$t5, $t5, $t2
	st.w	$t5, $t6, 96
	ld.w	$t5, $t4, -32
	mul.d	$t2, $t5, $t2
	st.w	$t2, $t7, 96
	ld.w	$t2, $t1, 0
	ldx.w	$t5, $a1, $t0
	mul.d	$t5, $t5, $t2
	st.w	$t5, $t6, 128
	ldx.w	$t5, $a3, $t0
	mul.d	$t2, $t5, $t2
	st.w	$t2, $t7, 128
	ld.w	$t2, $t1, 4
	ld.w	$t5, $t3, 32
	mul.d	$t5, $t5, $t2
	st.w	$t5, $t6, 160
	ld.w	$t5, $t4, 32
	mul.d	$t2, $t5, $t2
	st.w	$t2, $t7, 160
	ld.w	$t2, $t1, 8
	ld.w	$t5, $t3, 64
	mul.d	$t5, $t5, $t2
	st.w	$t5, $t6, 192
	ld.w	$t5, $t4, 64
	mul.d	$t2, $t5, $t2
	st.w	$t2, $t7, 192
	ld.w	$t2, $t1, 12
	ld.w	$t3, $t3, 96
	mul.d	$t3, $t3, $t2
	st.w	$t3, $t6, 224
	ld.w	$t3, $t4, 96
	mul.d	$t2, $t3, $t2
	st.w	$t2, $t7, 224
	addi.d	$t0, $t0, 4
	addi.d	$t1, $t1, 32
	bne	$t0, $a6, .LBB22_2
# %bb.3:                                #   in Loop: Header=BB22_1 Depth=1
	addi.d	$a0, $a0, 1
	addi.d	$a4, $a4, 256
	addi.d	$a5, $a5, 256
	addi.d	$a2, $a2, 256
	bne	$a0, $a7, .LBB22_1
# %bb.4:
	ret
.Lfunc_end22:
	.size	CalculateQuant8Param, .Lfunc_end22-CalculateQuant8Param
                                        # -- End function
	.globl	readLumaCoeff8x8_CABAC          # -- Begin function readLumaCoeff8x8_CABAC
	.p2align	5
	.type	readLumaCoeff8x8_CABAC,@function
readLumaCoeff8x8_CABAC:                 # @readLumaCoeff8x8_CABAC
# %bb.0:
	addi.d	$sp, $sp, -176
	st.d	$ra, $sp, 168                   # 8-byte Folded Spill
	st.d	$fp, $sp, 160                   # 8-byte Folded Spill
	st.d	$s0, $sp, 152                   # 8-byte Folded Spill
	st.d	$s1, $sp, 144                   # 8-byte Folded Spill
	st.d	$s2, $sp, 136                   # 8-byte Folded Spill
	st.d	$s3, $sp, 128                   # 8-byte Folded Spill
	st.d	$s4, $sp, 120                   # 8-byte Folded Spill
	st.d	$s5, $sp, 112                   # 8-byte Folded Spill
	st.d	$s6, $sp, 104                   # 8-byte Folded Spill
	st.d	$s7, $sp, 96                    # 8-byte Folded Spill
	st.d	$s8, $sp, 88                    # 8-byte Folded Spill
	move	$fp, $a0
	ld.w	$a0, $a0, 4
	ld.w	$a1, $fp, 28
	lu12i.w	$a3, 1
	ori	$a3, $a3, 1788
	ldx.w	$a3, $fp, $a3
	ldptr.d	$a4, $fp, 5600
	ori	$a5, $zero, 408
	mul.d	$a0, $a0, $a5
	add.w	$s1, $a3, $a1
	add.d	$s0, $a4, $a0
	beqz	$s1, .LBB23_3
# %bb.1:
	move	$s3, $zero
	ld.w	$a0, $s0, 40
	addi.w	$a1, $a0, -9
	ori	$a3, $zero, 5
	bltu	$a3, $a1, .LBB23_4
.LBB23_2:                               # %switch.lookup
	slli.d	$a3, $a1, 3
	pcalau12i	$a4, %pc_hi20(.Lswitch.table.readLumaCoeff8x8_CABAC)
	addi.d	$a4, $a4, %pc_lo12(.Lswitch.table.readLumaCoeff8x8_CABAC)
	ldx.d	$s6, $a4, $a3
	b	.LBB23_5
.LBB23_3:
	ldptr.w	$a0, $fp, 5920
	addi.d	$a0, $a0, -1
	sltui	$s3, $a0, 1
	ld.w	$a0, $s0, 40
	addi.w	$a1, $a0, -9
	ori	$a3, $zero, 5
	bgeu	$a3, $a1, .LBB23_2
.LBB23_4:
	pcalau12i	$a3, %pc_hi20(InvLevelScale8x8Luma_Inter)
	addi.d	$s6, $a3, %pc_lo12(InvLevelScale8x8Luma_Inter)
.LBB23_5:
	ldptr.d	$a3, $fp, 5592
	st.d	$a3, $sp, 32                    # 8-byte Folded Spill
	ldptr.w	$a3, $fp, 5584
	ld.w	$a4, $s0, 300
	beqz	$a3, .LBB23_7
# %bb.6:
	pcalau12i	$a3, %pc_hi20(FIELD_SCAN8x8)
	addi.d	$s2, $a3, %pc_lo12(FIELD_SCAN8x8)
	b	.LBB23_8
.LBB23_7:
	ld.w	$a3, $s0, 356
	sltui	$a3, $a3, 1
	pcalau12i	$a5, %pc_hi20(FIELD_SCAN8x8)
	addi.d	$a5, $a5, %pc_lo12(FIELD_SCAN8x8)
	masknez	$a5, $a5, $a3
	pcalau12i	$a6, %pc_hi20(SNGL_SCAN8x8)
	addi.d	$a6, $a6, %pc_lo12(SNGL_SCAN8x8)
	maskeqz	$a3, $a6, $a3
	or	$s2, $a3, $a5
.LBB23_8:                               # %switch.lookup136
	ld.d	$a3, $sp, 32                    # 8-byte Folded Reload
	ld.w	$a5, $a3, 28
	sltui	$a6, $a1, 6
	ori	$a3, $zero, 51
	srl.d	$a1, $a3, $a1
	and	$a1, $a6, $a1
	addi.d	$a0, $a0, -12
	sltui	$a0, $a0, 1
	or	$a0, $a1, $a0
	srl.w	$a1, $a4, $a2
	andi	$a1, $a1, 1
	stptr.w	$a0, $fp, 5616
	beqz	$a1, .LBB23_18
# %bb.9:
	pcalau12i	$a1, %got_pc_hi20(assignSE2partition)
	ld.d	$a1, $a1, %got_pc_lo12(assignSE2partition)
	slli.d	$a4, $a5, 6
	alsl.d	$a4, $a5, $a4, 4
	add.d	$a5, $a1, $a4
	andi	$a1, $a2, 1
	slli.d	$a4, $a1, 3
	st.d	$a4, $sp, 24                    # 8-byte Folded Spill
	slli.d	$s5, $a2, 2
	slli.d	$a1, $a1, 1
	sub.d	$a2, $s5, $a1
	bstrins.d	$s5, $zero, 2, 0
	addi.w	$a4, $s5, 0
	stptr.w	$a1, $fp, 5608
	srli.d	$a1, $a4, 2
	stptr.w	$a1, $fp, 5612
	bstrpick.d	$a1, $a2, 31, 1
	slli.d	$a1, $a1, 1
	sll.w	$a1, $a3, $a1
	st.d	$a1, $sp, 16                    # 8-byte Folded Spill
	ori	$a1, $zero, 2
	st.w	$a1, $sp, 64
	ori	$a1, $zero, 12
	masknez	$a1, $a1, $a0
	ori	$a2, $zero, 7
	maskeqz	$a2, $a2, $a0
	ori	$a3, $zero, 48
	masknez	$a3, $a3, $a0
	ori	$a4, $zero, 28
	maskeqz	$a0, $a4, $a0
	or	$a0, $a0, $a3
	st.d	$a5, $sp, 8                     # 8-byte Folded Spill
	ldx.w	$a0, $a5, $a0
	ld.d	$a3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a3, $a3, 40
	or	$a1, $a2, $a1
	ori	$a2, $zero, 56
	mul.d	$a0, $a0, $a2
	add.d	$a2, $a3, $a0
	pcalau12i	$a0, %got_pc_hi20(readRunLevel_CABAC)
	ld.d	$s7, $a0, %got_pc_lo12(readRunLevel_CABAC)
	ld.d	$a3, $a2, 48
	addi.d	$s8, $fp, 1384
	st.w	$a1, $sp, 40
	st.d	$s7, $sp, 80
	addi.d	$a0, $sp, 40
	move	$a1, $fp
	jirl	$ra, $a3, 0
	ld.w	$a0, $sp, 44
	beqz	$s3, .LBB23_14
# %bb.10:                               # %.preheader
	beqz	$a0, .LBB23_18
# %bb.11:                               # %.peel.next117
	ld.w	$s3, $sp, 48
	move	$s4, $zero
	alsl.d	$a1, $s3, $s2, 1
	ld.d	$a2, $s0, 304
	slli.d	$a3, $s3, 1
	ld.bu	$a1, $a1, 1
	ldx.bu	$a3, $s2, $a3
	ld.d	$a4, $sp, 16                    # 8-byte Folded Reload
	or	$a2, $a2, $a4
	st.d	$a2, $s0, 304
	add.w	$a1, $s5, $a1
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	add.d	$a2, $a2, $a3
	slli.d	$a1, $a1, 6
	add.d	$a1, $s8, $a1
	slli.d	$a2, $a2, 2
	stx.w	$a0, $a1, $a2
	ori	$s6, $zero, 56
	ori	$s1, $zero, 36
	.p2align	4, , 16
.LBB23_12:                              # =>This Inner Loop Header: Depth=1
	ldptr.w	$a0, $fp, 5616
	addi.d	$a0, $a0, -1
	sltui	$a0, $a0, 1
	ori	$a1, $zero, 14
	masknez	$a1, $a1, $a0
	masknez	$a2, $s6, $a0
	maskeqz	$a3, $s1, $a0
	or	$a2, $a3, $a2
	ld.d	$a3, $sp, 8                     # 8-byte Folded Reload
	ldx.w	$a2, $a3, $a2
	ld.d	$a3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a3, $a3, 40
	ori	$a4, $zero, 9
	maskeqz	$a0, $a4, $a0
	or	$a0, $a0, $a1
	mul.d	$a1, $a2, $s6
	add.d	$a2, $a3, $a1
	ld.d	$a3, $a2, 48
	ori	$a1, $zero, 2
	st.w	$a1, $sp, 64
	st.w	$a0, $sp, 40
	st.d	$s7, $sp, 80
	addi.d	$a0, $sp, 40
	move	$a1, $fp
	jirl	$ra, $a3, 0
	ld.w	$a0, $sp, 44
	beqz	$a0, .LBB23_18
# %bb.13:                               #   in Loop: Header=BB23_12 Depth=1
	ld.w	$a1, $sp, 48
	add.d	$a1, $s3, $a1
	addi.w	$s3, $a1, 1
	alsl.d	$a1, $s3, $s2, 1
	ld.d	$a2, $s0, 304
	slli.d	$a3, $s3, 1
	ld.bu	$a1, $a1, 1
	ldx.bu	$a3, $s2, $a3
	ld.d	$a4, $sp, 16                    # 8-byte Folded Reload
	or	$a2, $a2, $a4
	st.d	$a2, $s0, 304
	add.w	$a1, $s5, $a1
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	add.d	$a2, $a2, $a3
	slli.d	$a1, $a1, 6
	add.d	$a1, $s8, $a1
	slli.d	$a2, $a2, 2
	addi.w	$s4, $s4, 1
	stx.w	$a0, $a1, $a2
	ori	$a0, $zero, 64
	bltu	$s4, $a0, .LBB23_12
	b	.LBB23_18
.LBB23_14:                              # %.preheader108
	beqz	$a0, .LBB23_18
# %bb.15:                               # %.peel.next
	lu12i.w	$a1, 174762
	ori	$a1, $a1, 2731
	mul.d	$a1, $s1, $a1
	srli.d	$a2, $a1, 63
	srli.d	$a1, $a1, 32
	add.d	$s4, $a1, $a2
	slli.d	$a1, $s4, 2
	alsl.d	$a1, $s4, $a1, 1
	ld.w	$s3, $sp, 48
	sub.w	$a1, $s1, $a1
	slli.d	$a1, $a1, 8
	add.d	$a5, $s6, $a1
	alsl.d	$a1, $s3, $s2, 1
	ld.bu	$a1, $a1, 1
	slli.d	$a2, $s3, 1
	ldx.bu	$a2, $s2, $a2
	ld.d	$a3, $s0, 304
	slli.d	$a4, $a1, 5
	st.d	$a5, $sp, 0                     # 8-byte Folded Spill
	add.d	$a4, $a5, $a4
	slli.d	$a5, $a2, 2
	ldx.w	$a4, $a4, $a5
	move	$s6, $zero
	ld.d	$a5, $sp, 16                    # 8-byte Folded Reload
	or	$a3, $a3, $a5
	st.d	$a3, $s0, 304
	mul.d	$a0, $a4, $a0
	sll.w	$a0, $a0, $s4
	addi.w	$a0, $a0, 32
	srli.d	$a0, $a0, 6
	add.w	$a1, $s5, $a1
	ld.d	$a3, $sp, 24                    # 8-byte Folded Reload
	add.d	$a2, $a3, $a2
	slli.d	$a1, $a1, 6
	add.d	$a1, $s8, $a1
	slli.d	$a2, $a2, 2
	stx.w	$a0, $a1, $a2
	ori	$s1, $zero, 56
	.p2align	4, , 16
.LBB23_16:                              # =>This Inner Loop Header: Depth=1
	ldptr.w	$a0, $fp, 5616
	addi.d	$a0, $a0, -1
	sltui	$a0, $a0, 1
	ori	$a1, $zero, 14
	masknez	$a1, $a1, $a0
	masknez	$a2, $s1, $a0
	ori	$a3, $zero, 36
	maskeqz	$a3, $a3, $a0
	or	$a2, $a3, $a2
	ld.d	$a3, $sp, 8                     # 8-byte Folded Reload
	ldx.w	$a2, $a3, $a2
	ld.d	$a3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a3, $a3, 40
	ori	$a4, $zero, 9
	maskeqz	$a0, $a4, $a0
	or	$a0, $a0, $a1
	mul.d	$a1, $a2, $s1
	add.d	$a2, $a3, $a1
	ld.d	$a3, $a2, 48
	ori	$a1, $zero, 2
	st.w	$a1, $sp, 64
	st.w	$a0, $sp, 40
	st.d	$s7, $sp, 80
	addi.d	$a0, $sp, 40
	move	$a1, $fp
	jirl	$ra, $a3, 0
	ld.w	$a0, $sp, 44
	beqz	$a0, .LBB23_18
# %bb.17:                               #   in Loop: Header=BB23_16 Depth=1
	ld.w	$a1, $sp, 48
	add.d	$a1, $s3, $a1
	addi.w	$s3, $a1, 1
	alsl.d	$a1, $s3, $s2, 1
	ld.bu	$a1, $a1, 1
	slli.d	$a2, $s3, 1
	ldx.bu	$a2, $s2, $a2
	ld.d	$a3, $s0, 304
	slli.d	$a4, $a1, 5
	ld.d	$a5, $sp, 0                     # 8-byte Folded Reload
	add.d	$a4, $a5, $a4
	slli.d	$a5, $a2, 2
	ldx.w	$a4, $a4, $a5
	ld.d	$a5, $sp, 16                    # 8-byte Folded Reload
	or	$a3, $a3, $a5
	st.d	$a3, $s0, 304
	mul.d	$a0, $a4, $a0
	sll.w	$a0, $a0, $s4
	addi.w	$a0, $a0, 32
	srli.d	$a0, $a0, 6
	add.w	$a1, $s5, $a1
	ld.d	$a3, $sp, 24                    # 8-byte Folded Reload
	add.d	$a2, $a3, $a2
	slli.d	$a1, $a1, 6
	add.d	$a1, $s8, $a1
	slli.d	$a2, $a2, 2
	addi.w	$s6, $s6, 1
	stx.w	$a0, $a1, $a2
	ori	$a0, $zero, 64
	bltu	$s6, $a0, .LBB23_16
.LBB23_18:                              # %.loopexit
	ld.d	$s8, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 160                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 168                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 176
	ret
.Lfunc_end23:
	.size	readLumaCoeff8x8_CABAC, .Lfunc_end23-readLumaCoeff8x8_CABAC
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function decode_ipcm_mb
.LCPI24_0:
	.dword	2                               # 0x2
	.dword	3                               # 0x3
.LCPI24_1:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
.LCPI24_2:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.text
	.globl	decode_ipcm_mb
	.p2align	5
	.type	decode_ipcm_mb,@function
decode_ipcm_mb:                         # @decode_ipcm_mb
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
	pcalau12i	$a1, %got_pc_hi20(dec_picture)
	ld.d	$a1, $a1, %got_pc_lo12(dec_picture)
	move	$a6, $zero
	ldptr.d	$a4, $a0, 5600
	ld.d	$a2, $a1, 0
	ld.wu	$a5, $a0, 4
	lu12i.w	$a3, 77
	ori	$a7, $a3, 1528
	ldx.d	$t0, $a2, $a7
	ld.w	$t1, $a0, 80
	ld.w	$a7, $a0, 84
	addi.d	$a2, $a0, 2047
	addi.d	$a2, $a2, 361
	alsl.d	$t0, $t1, $t0, 3
	slli.d	$t1, $a7, 1
	ori	$t2, $zero, 16
	.p2align	4, , 16
.LBB24_1:                               # %.preheader65
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$t3, $a6, 31, 2
	andi	$t4, $a6, 3
	ld.d	$t5, $t0, 0
	alsl.d	$t3, $t3, $t3, 1
	slli.d	$t3, $t3, 8
	add.d	$t3, $a2, $t3
	slli.d	$t6, $t4, 4
	ldx.h	$t6, $t3, $t6
	alsl.d	$t3, $t4, $t3, 4
	stx.h	$t6, $t5, $t1
	ld.h	$t4, $t3, 4
	ld.h	$t6, $t3, 8
	ld.h	$t7, $t3, 12
	alsl.d	$t5, $a7, $t5, 1
	st.h	$t4, $t5, 2
	st.h	$t6, $t5, 4
	st.h	$t7, $t5, 6
	ld.h	$t4, $t3, 64
	ld.h	$t6, $t3, 68
	ld.h	$t7, $t3, 72
	ld.h	$t8, $t3, 76
	st.h	$t4, $t5, 8
	st.h	$t6, $t5, 10
	st.h	$t7, $t5, 12
	st.h	$t8, $t5, 14
	ld.h	$t4, $t3, 128
	ld.h	$t6, $t3, 132
	ld.h	$t7, $t3, 136
	ld.h	$t8, $t3, 140
	st.h	$t4, $t5, 16
	st.h	$t6, $t5, 18
	st.h	$t7, $t5, 20
	st.h	$t8, $t5, 22
	ld.h	$t4, $t3, 192
	ld.h	$t6, $t3, 196
	ld.h	$t7, $t3, 200
	ld.h	$t3, $t3, 204
	st.h	$t4, $t5, 24
	st.h	$t6, $t5, 26
	st.h	$t7, $t5, 28
	st.h	$t3, $t5, 30
	addi.d	$a6, $a6, 1
	addi.d	$t0, $t0, 8
	bne	$a6, $t2, .LBB24_1
# %bb.2:
	ld.d	$a1, $a1, 0
	ori	$a3, $a3, 1536
	add.d	$a3, $a1, $a3
	ld.w	$a6, $a3, 116
	ori	$a1, $zero, 408
	mul.d	$a1, $a5, $a1
	add.d	$a1, $a4, $a1
	beqz	$a6, .LBB24_24
# %bb.3:                                # %.preheader64
	ldptr.w	$a4, $a0, 5936
	ori	$t1, $zero, 1
	blt	$a4, $t1, .LBB24_24
# %bb.4:                                # %.preheader63.lr.ph
	ldptr.w	$t0, $a0, 5932
	pcalau12i	$a5, %pc_hi20(.LCPI24_0)
	st.d	$a5, $sp, 0                     # 8-byte Folded Spill
	pcalau12i	$a6, %pc_hi20(.LCPI24_1)
	pcalau12i	$a7, %pc_hi20(.LCPI24_2)
	vrepli.b	$vr0, 0
	vrepli.d	$vr1, 3
	blt	$t0, $t1, .LBB24_14
# %bb.5:                                # %.preheader63.lr.ph.split.us
	ld.d	$t1, $a3, 0
	ld.d	$t3, $t1, 0
	ld.w	$t4, $a0, 88
	move	$t1, $zero
	ld.w	$t2, $a0, 96
	alsl.d	$t3, $t4, $t3, 3
	bstrpick.d	$t4, $t0, 30, 2
	ld.d	$a5, $sp, 0                     # 8-byte Folded Reload
	vld	$vr2, $a5, %pc_lo12(.LCPI24_0)
	vld	$vr3, $a6, %pc_lo12(.LCPI24_1)
	vld	$vr4, $a7, %pc_lo12(.LCPI24_2)
	slli.d	$t4, $t4, 2
	slli.d	$t5, $t2, 1
	ori	$t6, $zero, 4
	b	.LBB24_7
	.p2align	4, , 16
.LBB24_6:                               # %._crit_edge.us
                                        #   in Loop: Header=BB24_7 Depth=1
	addi.d	$t1, $t1, 1
	beq	$t1, $a4, .LBB24_14
.LBB24_7:                               # %.preheader63.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB24_10 Depth 2
                                        #     Child Loop BB24_13 Depth 2
	slli.d	$t7, $t1, 3
	ldx.d	$t8, $t3, $t7
	bstrpick.d	$fp, $t1, 31, 2
	andi	$t7, $t1, 3
	alsl.d	$fp, $fp, $fp, 1
	bgeu	$t0, $t6, .LBB24_9
# %bb.8:                                #   in Loop: Header=BB24_7 Depth=1
	move	$s0, $zero
	b	.LBB24_12
	.p2align	4, , 16
.LBB24_9:                               # %vector.body.preheader
                                        #   in Loop: Header=BB24_7 Depth=1
	alsl.d	$s0, $t2, $t8, 1
	slli.d	$s1, $fp, 8
	add.d	$s1, $a2, $s1
	move	$s2, $t4
	vori.b	$vr5, $vr3, 0
	vori.b	$vr6, $vr2, 0
	vori.b	$vr7, $vr4, 0
	.p2align	4, , 16
.LBB24_10:                              # %vector.body
                                        #   Parent Loop BB24_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vsrli.w	$vr8, $vr7, 2
	vaddi.wu	$vr8, $vr8, 4
	vilvh.w	$vr9, $vr0, $vr8
	vilvl.w	$vr8, $vr0, $vr8
	vand.v	$vr10, $vr6, $vr1
	vand.v	$vr11, $vr5, $vr1
	vpickve2gr.d	$s3, $vr8, 0
	vpickve2gr.d	$s4, $vr11, 0
	slli.d	$s3, $s3, 6
	add.d	$s3, $s1, $s3
	alsl.d	$s3, $t7, $s3, 4
	slli.d	$s4, $s4, 2
	vpickve2gr.d	$s5, $vr8, 1
	vpickve2gr.d	$s6, $vr11, 1
	slli.d	$s5, $s5, 6
	add.d	$s5, $s1, $s5
	alsl.d	$s5, $t7, $s5, 4
	slli.d	$s6, $s6, 2
	vpickve2gr.d	$s7, $vr9, 0
	vpickve2gr.d	$s8, $vr10, 0
	slli.d	$s7, $s7, 6
	add.d	$s7, $s1, $s7
	alsl.d	$s7, $t7, $s7, 4
	slli.d	$s8, $s8, 2
	vpickve2gr.d	$ra, $vr9, 1
	vpickve2gr.d	$a5, $vr10, 1
	slli.d	$ra, $ra, 6
	add.d	$ra, $s1, $ra
	alsl.d	$ra, $t7, $ra, 4
	slli.d	$a5, $a5, 2
	ldx.w	$s3, $s3, $s4
	ldx.w	$s4, $s5, $s6
	ldx.w	$s5, $s7, $s8
	ldx.w	$a5, $ra, $a5
	vinsgr2vr.w	$vr8, $s3, 0
	vinsgr2vr.w	$vr8, $s4, 1
	vinsgr2vr.w	$vr8, $s5, 2
	vinsgr2vr.w	$vr8, $a5, 3
	vpickev.h	$vr8, $vr8, $vr8
	vpickve2gr.d	$a5, $vr8, 0
	st.d	$a5, $s0, 0
	vaddi.du	$vr5, $vr5, 4
	vaddi.du	$vr6, $vr6, 4
	vaddi.wu	$vr7, $vr7, 4
	addi.d	$s2, $s2, -4
	addi.d	$s0, $s0, 8
	bnez	$s2, .LBB24_10
# %bb.11:                               # %middle.block
                                        #   in Loop: Header=BB24_7 Depth=1
	move	$s0, $t4
	beq	$t4, $t0, .LBB24_6
.LBB24_12:                              # %scalar.ph.preheader
                                        #   in Loop: Header=BB24_7 Depth=1
	add.d	$a5, $t8, $t5
	alsl.d	$t8, $s0, $a5, 1
	slli.d	$a5, $fp, 8
	add.d	$fp, $a2, $a5
	move	$s1, $s0
	.p2align	4, , 16
.LBB24_13:                              # %scalar.ph
                                        #   Parent Loop BB24_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	bstrpick.d	$a5, $s0, 31, 2
	slli.d	$a5, $a5, 6
	andi	$s2, $s1, 3
	add.d	$a5, $a5, $fp
	alsl.d	$a5, $t7, $a5, 4
	alsl.d	$a5, $s2, $a5, 2
	ld.h	$a5, $a5, 256
	st.h	$a5, $t8, 0
	addi.d	$s1, $s1, 1
	addi.d	$t8, $t8, 2
	addi.w	$s0, $s0, 1
	bne	$t0, $s1, .LBB24_13
	b	.LBB24_6
.LBB24_14:                              # %.preheader61.lr.ph
	ldptr.w	$t0, $a0, 5932
	ori	$a5, $zero, 1
	blt	$t0, $a5, .LBB24_24
# %bb.15:                               # %.preheader61.lr.ph.split.us
	ld.d	$a5, $a3, 0
	ld.d	$a5, $a5, 8
	ld.w	$t3, $a0, 88
	move	$t1, $zero
	ld.w	$t2, $a0, 96
	alsl.d	$t3, $t3, $a5, 3
	bstrpick.d	$a5, $t0, 30, 2
	ld.d	$t4, $sp, 0                     # 8-byte Folded Reload
	vld	$vr2, $t4, %pc_lo12(.LCPI24_0)
	vld	$vr3, $a6, %pc_lo12(.LCPI24_1)
	vld	$vr4, $a7, %pc_lo12(.LCPI24_2)
	slli.d	$a5, $a5, 2
	slli.d	$a6, $t2, 1
	ori	$a7, $zero, 4
	b	.LBB24_17
	.p2align	4, , 16
.LBB24_16:                              # %._crit_edge.us72
                                        #   in Loop: Header=BB24_17 Depth=1
	addi.d	$t1, $t1, 1
	beq	$t1, $a4, .LBB24_24
.LBB24_17:                              # %.preheader61.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB24_20 Depth 2
                                        #     Child Loop BB24_23 Depth 2
	bstrpick.d	$t4, $t1, 31, 2
	slli.d	$t5, $t1, 3
	ldx.d	$t5, $t3, $t5
	addi.d	$t6, $t4, 2
	andi	$t4, $t1, 3
	alsl.d	$t6, $t6, $t6, 1
	bgeu	$t0, $a7, .LBB24_19
# %bb.18:                               #   in Loop: Header=BB24_17 Depth=1
	move	$t7, $zero
	b	.LBB24_22
	.p2align	4, , 16
.LBB24_19:                              # %vector.body171.preheader
                                        #   in Loop: Header=BB24_17 Depth=1
	alsl.d	$t7, $t2, $t5, 1
	slli.d	$t8, $t6, 8
	add.d	$t8, $a2, $t8
	move	$fp, $a5
	vori.b	$vr5, $vr3, 0
	vori.b	$vr6, $vr2, 0
	vori.b	$vr7, $vr4, 0
	.p2align	4, , 16
.LBB24_20:                              # %vector.body171
                                        #   Parent Loop BB24_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vsrli.w	$vr8, $vr7, 2
	vaddi.wu	$vr8, $vr8, 4
	vilvh.w	$vr9, $vr0, $vr8
	vilvl.w	$vr8, $vr0, $vr8
	vand.v	$vr10, $vr6, $vr1
	vand.v	$vr11, $vr5, $vr1
	vpickve2gr.d	$s0, $vr8, 0
	vpickve2gr.d	$s1, $vr11, 0
	slli.d	$s0, $s0, 6
	add.d	$s0, $t8, $s0
	alsl.d	$s0, $t4, $s0, 4
	slli.d	$s1, $s1, 2
	vpickve2gr.d	$s2, $vr8, 1
	vpickve2gr.d	$s3, $vr11, 1
	slli.d	$s2, $s2, 6
	add.d	$s2, $t8, $s2
	alsl.d	$s2, $t4, $s2, 4
	slli.d	$s3, $s3, 2
	vpickve2gr.d	$s4, $vr9, 0
	vpickve2gr.d	$s5, $vr10, 0
	slli.d	$s4, $s4, 6
	add.d	$s4, $t8, $s4
	alsl.d	$s4, $t4, $s4, 4
	slli.d	$s5, $s5, 2
	vpickve2gr.d	$s6, $vr9, 1
	vpickve2gr.d	$s7, $vr10, 1
	slli.d	$s6, $s6, 6
	add.d	$s6, $t8, $s6
	alsl.d	$s6, $t4, $s6, 4
	slli.d	$s7, $s7, 2
	ldx.w	$s0, $s0, $s1
	ldx.w	$s1, $s2, $s3
	ldx.w	$s2, $s4, $s5
	ldx.w	$s3, $s6, $s7
	vinsgr2vr.w	$vr8, $s0, 0
	vinsgr2vr.w	$vr8, $s1, 1
	vinsgr2vr.w	$vr8, $s2, 2
	vinsgr2vr.w	$vr8, $s3, 3
	vpickev.h	$vr8, $vr8, $vr8
	vpickve2gr.d	$s0, $vr8, 0
	st.d	$s0, $t7, 0
	vaddi.du	$vr5, $vr5, 4
	vaddi.du	$vr6, $vr6, 4
	vaddi.wu	$vr7, $vr7, 4
	addi.d	$fp, $fp, -4
	addi.d	$t7, $t7, 8
	bnez	$fp, .LBB24_20
# %bb.21:                               # %middle.block178
                                        #   in Loop: Header=BB24_17 Depth=1
	move	$t7, $a5
	beq	$a5, $t0, .LBB24_16
.LBB24_22:                              # %scalar.ph166.preheader
                                        #   in Loop: Header=BB24_17 Depth=1
	add.d	$t5, $t5, $a6
	alsl.d	$t5, $t7, $t5, 1
	slli.d	$t6, $t6, 8
	add.d	$t6, $a2, $t6
	move	$t8, $t7
	.p2align	4, , 16
.LBB24_23:                              # %scalar.ph166
                                        #   Parent Loop BB24_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	bstrpick.d	$fp, $t7, 31, 2
	slli.d	$fp, $fp, 6
	andi	$s0, $t8, 3
	add.d	$fp, $fp, $t6
	alsl.d	$fp, $t4, $fp, 4
	alsl.d	$fp, $s0, $fp, 2
	ld.h	$fp, $fp, 256
	st.h	$fp, $t5, 0
	addi.d	$t8, $t8, 1
	addi.d	$t5, $t5, 2
	addi.w	$t7, $t7, 1
	bne	$t0, $t8, .LBB24_23
	b	.LBB24_16
.LBB24_24:                              # %.loopexit
	pcalau12i	$a2, %got_pc_hi20(img)
	ld.d	$a2, $a2, %got_pc_lo12(img)
	ld.d	$a4, $a2, 0
	st.w	$zero, $a1, 0
	lu12i.w	$a2, 1
	ori	$a5, $a2, 1792
	ldx.w	$a6, $a4, $a5
	ld.w	$a7, $a3, 148
	sub.w	$a6, $zero, $a6
	slt	$t0, $a6, $a7
	masknez	$a6, $a6, $t0
	maskeqz	$a7, $a7, $t0
	or	$t1, $a7, $a6
	slti	$a7, $t1, 51
	maskeqz	$t0, $t1, $a7
	ori	$a6, $zero, 51
	masknez	$a7, $a6, $a7
	or	$t0, $t0, $a7
	pcalau12i	$a7, %pc_hi20(QP_SCALE_CR)
	addi.d	$a7, $a7, %pc_lo12(QP_SCALE_CR)
	bltz	$t1, .LBB24_26
# %bb.25:
	ldx.bu	$t0, $a7, $t0
.LBB24_26:
	st.w	$t0, $a1, 4
	ldx.w	$a4, $a4, $a5
	ld.w	$a3, $a3, 152
	sub.w	$a4, $zero, $a4
	slt	$a5, $a4, $a3
	masknez	$a4, $a4, $a5
	maskeqz	$a3, $a3, $a5
	or	$a4, $a3, $a4
	slti	$a3, $a4, 51
	maskeqz	$a5, $a4, $a3
	masknez	$a3, $a6, $a3
	or	$a3, $a5, $a3
	bltz	$a4, .LBB24_28
# %bb.27:
	ldx.bu	$a3, $a7, $a3
.LBB24_28:                              # %set_chroma_qp.exit
	st.w	$a3, $a1, 8
	ldptr.w	$a4, $a0, 5924
	addi.w	$a3, $zero, -3
	blt	$a4, $a3, .LBB24_40
# %bb.29:                               # %.lr.ph
	ldptr.d	$a4, $a0, 5560
	move	$a5, $zero
	addi.w	$a6, $zero, -1
	ori	$a7, $zero, 16
	.p2align	4, , 16
.LBB24_30:                              # =>This Inner Loop Header: Depth=1
	ld.wu	$t0, $a0, 4
	slli.d	$t0, $t0, 3
	ldx.d	$t0, $a4, $t0
	ld.d	$t0, $t0, 0
	stx.w	$a7, $t0, $a5
	ldptr.w	$t0, $a0, 5924
	addi.w	$t1, $t0, 3
	addi.d	$a6, $a6, 1
	addi.d	$a5, $a5, 4
	blt	$a6, $t1, .LBB24_30
# %bb.31:                               # %._crit_edge
	blt	$t0, $a3, .LBB24_40
# %bb.32:                               # %.lr.ph.1
	ldptr.d	$a4, $a0, 5560
	move	$a5, $zero
	addi.w	$a6, $zero, -1
	ori	$a7, $zero, 16
	.p2align	4, , 16
.LBB24_33:                              # =>This Inner Loop Header: Depth=1
	ld.wu	$t0, $a0, 4
	slli.d	$t0, $t0, 3
	ldx.d	$t0, $a4, $t0
	ld.d	$t0, $t0, 8
	stx.w	$a7, $t0, $a5
	ldptr.w	$t0, $a0, 5924
	addi.w	$t1, $t0, 3
	addi.d	$a6, $a6, 1
	addi.d	$a5, $a5, 4
	blt	$a6, $t1, .LBB24_33
# %bb.34:                               # %._crit_edge.1
	blt	$t0, $a3, .LBB24_40
# %bb.35:                               # %.lr.ph.2
	ldptr.d	$a4, $a0, 5560
	move	$a5, $zero
	addi.w	$a6, $zero, -1
	ori	$a7, $zero, 16
	.p2align	4, , 16
.LBB24_36:                              # =>This Inner Loop Header: Depth=1
	ld.wu	$t0, $a0, 4
	slli.d	$t0, $t0, 3
	ldx.d	$t0, $a4, $t0
	ld.d	$t0, $t0, 16
	stx.w	$a7, $t0, $a5
	ldptr.w	$t0, $a0, 5924
	addi.w	$t1, $t0, 3
	addi.d	$a6, $a6, 1
	addi.d	$a5, $a5, 4
	blt	$a6, $t1, .LBB24_36
# %bb.37:                               # %._crit_edge.2
	blt	$t0, $a3, .LBB24_40
# %bb.38:                               # %.lr.ph.3
	move	$a3, $zero
	ldptr.d	$a4, $a0, 5560
	addi.w	$a5, $zero, -1
	ori	$a6, $zero, 16
	ori	$a2, $a2, 1828
	.p2align	4, , 16
.LBB24_39:                              # =>This Inner Loop Header: Depth=1
	ld.wu	$a7, $a0, 4
	slli.d	$a7, $a7, 3
	ldx.d	$a7, $a4, $a7
	ld.d	$a7, $a7, 24
	stx.w	$a6, $a7, $a3
	ldx.w	$a7, $a0, $a2
	addi.w	$a7, $a7, 3
	addi.d	$a5, $a5, 1
	addi.d	$a3, $a3, 4
	blt	$a5, $a7, .LBB24_39
.LBB24_40:                              # %.split.us
	st.w	$zero, $a1, 360
	pcalau12i	$a0, %got_pc_hi20(last_dquant)
	ld.d	$a0, $a0, %got_pc_lo12(last_dquant)
	lu12i.w	$a2, 15
	ori	$a2, $a2, 4095
	st.d	$a2, $a1, 304
	st.w	$zero, $a0, 0
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
.Lfunc_end24:
	.size	decode_ipcm_mb, .Lfunc_end24-decode_ipcm_mb
                                        # -- End function
	.globl	decode_one_macroblock           # -- Begin function decode_one_macroblock
	.p2align	5
	.type	decode_one_macroblock,@function
decode_one_macroblock:                  # @decode_one_macroblock
# %bb.0:
	addi.d	$sp, $sp, -800
	st.d	$ra, $sp, 792                   # 8-byte Folded Spill
	st.d	$fp, $sp, 784                   # 8-byte Folded Spill
	st.d	$s0, $sp, 776                   # 8-byte Folded Spill
	st.d	$s1, $sp, 768                   # 8-byte Folded Spill
	st.d	$s2, $sp, 760                   # 8-byte Folded Spill
	st.d	$s3, $sp, 752                   # 8-byte Folded Spill
	st.d	$s4, $sp, 744                   # 8-byte Folded Spill
	st.d	$s5, $sp, 736                   # 8-byte Folded Spill
	st.d	$s6, $sp, 728                   # 8-byte Folded Spill
	st.d	$s7, $sp, 720                   # 8-byte Folded Spill
	st.d	$s8, $sp, 712                   # 8-byte Folded Spill
	move	$s6, $a0
	ld.w	$a5, $a0, 4
	ldptr.d	$a0, $a0, 5600
	bstrpick.d	$a2, $a5, 31, 0
	ld.w	$a1, $s6, 44
	ori	$a3, $zero, 408
	mul.d	$a2, $a2, $a3
	ori	$a3, $zero, 3
	add.d	$a6, $a0, $a2
	bne	$a1, $a3, .LBB25_6
# %bb.1:
	ld.w	$a0, $a6, 40
	addi.w	$a0, $a0, -9
	addi.w	$a2, $zero, -6
	and	$a0, $a0, $a2
	sltu	$s0, $zero, $a0
	ldptr.w	$a4, $s6, 5624
	st.w	$zero, $sp, 580
	st.w	$zero, $sp, 576
	beqz	$a4, .LBB25_9
.LBB25_2:
	ld.w	$a0, $a6, 356
	sltu	$a0, $zero, $a0
	st.d	$a0, $sp, 472                   # 8-byte Folded Spill
	ld.w	$a0, $a6, 40
	ori	$a2, $zero, 14
	bne	$a0, $a2, .LBB25_10
.LBB25_3:
	move	$a0, $s6
	pcaddu18i	$ra, %call36(decode_ipcm_mb)
	jirl	$ra, $ra, 0
.LBB25_4:
	move	$a1, $zero
.LBB25_5:                               # %.loopexit1954
	move	$a0, $a1
	ld.d	$s8, $sp, 712                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 720                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 728                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 736                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 744                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 752                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 760                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 768                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 776                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 784                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 792                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 800
	ret
.LBB25_6:
	ori	$a0, $zero, 4
	bne	$a1, $a0, .LBB25_8
# %bb.7:
	ld.w	$a0, $a6, 40
	addi.d	$a0, $a0, -12
	sltui	$s0, $a0, 1
	ldptr.w	$a4, $s6, 5624
	st.w	$zero, $sp, 580
	st.w	$zero, $sp, 576
	bnez	$a4, .LBB25_2
	b	.LBB25_9
.LBB25_8:
	move	$s0, $zero
	ldptr.w	$a4, $s6, 5624
	st.w	$zero, $sp, 580
	st.w	$zero, $sp, 576
	bnez	$a4, .LBB25_2
.LBB25_9:
	st.d	$zero, $sp, 472                 # 8-byte Folded Spill
	ld.w	$a0, $a6, 40
	ori	$a2, $zero, 14
	beq	$a0, $a2, .LBB25_3
.LBB25_10:
	pcalau12i	$a2, %got_pc_hi20(dec_picture)
	ld.d	$a2, $a2, %got_pc_lo12(dec_picture)
	addi.d	$a1, $a1, -3
	st.d	$a2, $sp, 96                    # 8-byte Folded Spill
	ld.d	$a2, $a2, 0
	st.d	$a6, $sp, 40                    # 8-byte Folded Spill
	ld.w	$a3, $a6, 396
	st.d	$a3, $sp, 504                   # 8-byte Folded Spill
	lu12i.w	$a3, 77
	ori	$a3, $a3, 1484
	add.d	$a6, $a2, $a3
	ld.w	$s1, $a6, 168
	addi.d	$a2, $a0, -10
	sltui	$a3, $a2, 1
	ori	$a2, $zero, 1
	masknez	$a2, $a2, $a3
	maskeqz	$a3, $s0, $a3
	andi	$a5, $a5, 1
	st.d	$a5, $sp, 176                   # 8-byte Folded Spill
	lu12i.w	$t4, 1
	ld.d	$a5, $sp, 472                   # 8-byte Folded Reload
	beqz	$a5, .LBB25_19
# %bb.11:
	pcalau12i	$a5, %got_pc_hi20(Co_located)
	ld.d	$a5, $a5, %got_pc_lo12(Co_located)
	ld.d	$a7, $sp, 176                   # 8-byte Folded Reload
	sltui	$a7, $a7, 1
	ld.d	$a5, $a5, 0
	ori	$t0, $t4, 760
	masknez	$t0, $t0, $a7
	ori	$t1, $zero, 3240
	maskeqz	$t1, $t1, $a7
	or	$t0, $t1, $t0
	ori	$t1, $t4, 752
	masknez	$t1, $t1, $a7
	ori	$t2, $zero, 3232
	maskeqz	$t2, $t2, $a7
	or	$t1, $t2, $t1
	ori	$t2, $t4, 736
	masknez	$t2, $t2, $a7
	ori	$t3, $zero, 3216
	maskeqz	$t3, $t3, $a7
	or	$t2, $t3, $t2
	ori	$t3, $t4, 744
	masknez	$t3, $t3, $a7
	ori	$t4, $zero, 3224
	maskeqz	$t4, $t4, $a7
	or	$t3, $t4, $t3
	ori	$t4, $zero, 4
	masknez	$t4, $t4, $a7
	ori	$t5, $zero, 2
	maskeqz	$a7, $t5, $a7
	ld.w	$a6, $a6, 0
	ldx.d	$t3, $a5, $t3
	st.d	$t3, $sp, 216                   # 8-byte Folded Spill
	ldx.d	$t2, $a5, $t2
	st.d	$t2, $sp, 312                   # 8-byte Folded Spill
	ldx.d	$t1, $a5, $t1
	st.d	$t1, $sp, 256                   # 8-byte Folded Spill
	ldx.d	$a5, $a5, $t0
	st.d	$a5, $sp, 264                   # 8-byte Folded Spill
	or	$a7, $a7, $t4
	srai.d	$a5, $a6, 1
	addi.d	$s7, $a5, -1
	beqz	$a4, .LBB25_28
# %bb.12:                               # %.preheader1985
	pcalau12i	$a4, %got_pc_hi20(listXsize)
	ld.d	$a4, $a4, %got_pc_lo12(listXsize)
	slli.d	$a5, $a7, 2
	ldx.w	$a6, $a4, $a5
	st.d	$a7, $sp, 288                   # 8-byte Folded Spill
	alsl.d	$a5, $a7, $a4, 2
	ld.d	$a7, $sp, 176                   # 8-byte Folded Reload
	bnez	$a7, .LBB25_33
# %bb.13:                               # %.preheader1984.us.preheader
	blez	$a6, .LBB25_16
# %bb.14:                               # %.lr.ph2007.us
	pcalau12i	$a6, %got_pc_hi20(listX)
	ld.d	$a6, $a6, %got_pc_lo12(listX)
	ld.d	$a7, $sp, 288                   # 8-byte Folded Reload
	slli.d	$a7, $a7, 3
	ldx.d	$a6, $a6, $a7
	move	$a7, $zero
	addi.d	$t0, $zero, -2
	lu12i.w	$t1, 77
	ori	$t1, $t1, 1504
	.p2align	4, , 16
.LBB25_15:                              # %.thread1819.us.us
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$t2, $a6, 0
	ld.w	$t3, $t2, 0
	addi.d	$t3, $t3, -2
	sltui	$t3, $t3, 1
	maskeqz	$t3, $t0, $t3
	stx.w	$t3, $t2, $t1
	ld.w	$t2, $a5, 0
	addi.d	$a7, $a7, 1
	addi.d	$a6, $a6, 8
	blt	$a7, $t2, .LBB25_15
.LBB25_16:                              # %._crit_edge2008.split.us.us
	ld.d	$a5, $sp, 288                   # 8-byte Folded Reload
	addi.d	$a7, $a5, 1
	slli.d	$a5, $a7, 2
	ldx.w	$a5, $a4, $a5
	ori	$a6, $zero, 1
	blt	$a5, $a6, .LBB25_52
# %bb.17:                               # %.lr.ph2007.us.1
	pcalau12i	$a5, %got_pc_hi20(listX)
	ld.d	$a6, $a5, %got_pc_lo12(listX)
	move	$a5, $zero
	slli.d	$t0, $a7, 3
	ldx.d	$a6, $a6, $t0
	alsl.d	$a4, $a7, $a4, 2
	addi.d	$a7, $zero, -2
	lu12i.w	$t0, 77
	ori	$t0, $t0, 1504
	.p2align	4, , 16
.LBB25_18:                              # %.thread1819.us.us.1
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$t1, $a6, 0
	ld.w	$t2, $t1, 0
	addi.d	$t2, $t2, -2
	sltui	$t2, $t2, 1
	maskeqz	$t2, $a7, $t2
	stx.w	$t2, $t1, $t0
	ld.w	$t1, $a4, 0
	addi.d	$a5, $a5, 1
	addi.d	$a6, $a6, 8
	blt	$a5, $t1, .LBB25_18
	b	.LBB25_52
.LBB25_19:                              # %.thread
	pcalau12i	$a5, %got_pc_hi20(Co_located)
	ld.d	$a5, $a5, %got_pc_lo12(Co_located)
	ld.d	$a5, $a5, 0
	ld.w	$a6, $a6, 0
	ld.d	$a7, $a5, 1608
	st.d	$a7, $sp, 216                   # 8-byte Folded Spill
	ld.d	$a7, $a5, 1600
	st.d	$a7, $sp, 312                   # 8-byte Folded Spill
	ld.d	$a7, $a5, 1616
	st.d	$a7, $sp, 256                   # 8-byte Folded Spill
	ld.d	$a5, $a5, 1624
	st.d	$a5, $sp, 264                   # 8-byte Folded Spill
	addi.w	$s7, $a6, -1
	beqz	$a4, .LBB25_27
# %bb.20:                               # %.preheader1988
	pcalau12i	$a4, %got_pc_hi20(listXsize)
	ld.d	$a4, $a4, %got_pc_lo12(listXsize)
	ld.w	$a5, $a4, 0
	blez	$a5, .LBB25_23
# %bb.21:                               # %.lr.ph
	pcalau12i	$a5, %got_pc_hi20(listX)
	ld.d	$a5, $a5, %got_pc_lo12(listX)
	ld.d	$a5, $a5, 0
	ld.w	$a6, $a4, 0
	move	$a7, $zero
	lu12i.w	$t0, 77
	ori	$t0, $t0, 1504
	.p2align	4, , 16
.LBB25_22:                              # =>This Inner Loop Header: Depth=1
	ld.d	$t1, $a5, 0
	stx.w	$zero, $t1, $t0
	addi.d	$a7, $a7, 1
	addi.d	$a5, $a5, 8
	blt	$a7, $a6, .LBB25_22
.LBB25_23:                              # %._crit_edge
	ld.w	$a5, $a4, 4
	ori	$a6, $zero, 1
	blt	$a5, $a6, .LBB25_26
# %bb.24:                               # %.lr.ph.1
	pcalau12i	$a5, %got_pc_hi20(listX)
	ld.d	$a5, $a5, %got_pc_lo12(listX)
	ld.d	$a5, $a5, 8
	ld.w	$a4, $a4, 4
	move	$a6, $zero
	lu12i.w	$a7, 77
	ori	$a7, $a7, 1504
	.p2align	4, , 16
.LBB25_25:                              # =>This Inner Loop Header: Depth=1
	ld.d	$t0, $a5, 0
	stx.w	$zero, $t0, $a7
	addi.d	$a6, $a6, 1
	addi.d	$a5, $a5, 8
	blt	$a6, $a4, .LBB25_25
.LBB25_26:
	st.d	$zero, $sp, 288                 # 8-byte Folded Spill
	b	.LBB25_52
.LBB25_27:
	move	$a7, $zero
.LBB25_28:                              # %.preheader1982
	pcalau12i	$a4, %got_pc_hi20(listXsize)
	ld.d	$a4, $a4, %got_pc_lo12(listXsize)
	st.d	$a7, $sp, 288                   # 8-byte Folded Spill
	slli.d	$a5, $a7, 2
	ldx.w	$a6, $a4, $a5
	ori	$a5, $zero, 1
	blt	$a6, $a5, .LBB25_43
# %bb.29:                               # %.lr.ph2011
	pcalau12i	$a6, %got_pc_hi20(listX)
	ld.d	$a6, $a6, %got_pc_lo12(listX)
	ld.d	$t1, $sp, 288                   # 8-byte Folded Reload
	slli.d	$a7, $t1, 3
	ldptr.w	$t0, $s6, 5584
	ldx.d	$a6, $a6, $a7
	alsl.d	$a7, $t1, $a4, 2
	beq	$t0, $a5, .LBB25_39
# %bb.30:                               # %.lr.ph2011
	ori	$t1, $zero, 2
	bne	$t0, $t1, .LBB25_41
# %bb.31:                               # %.lr.ph2011.split.us2013.preheader
	move	$t0, $zero
	lu12i.w	$t1, 77
	ori	$t1, $t1, 1504
	.p2align	4, , 16
.LBB25_32:                              # %.lr.ph2011.split.us2013
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$t2, $a6, 0
	ld.w	$t3, $t2, 0
	addi.d	$t3, $t3, -2
	sltu	$t3, $zero, $t3
	slli.d	$t3, $t3, 1
	stx.w	$t3, $t2, $t1
	ld.w	$t2, $a7, 0
	addi.d	$t0, $t0, 1
	addi.d	$a6, $a6, 8
	blt	$t0, $t2, .LBB25_32
	b	.LBB25_43
.LBB25_33:                              # %.preheader1984.preheader
	blez	$a6, .LBB25_36
# %bb.34:                               # %.lr.ph2007
	pcalau12i	$a6, %got_pc_hi20(listX)
	ld.d	$a6, $a6, %got_pc_lo12(listX)
	ld.d	$a7, $sp, 288                   # 8-byte Folded Reload
	slli.d	$a7, $a7, 3
	ldx.d	$a6, $a6, $a7
	move	$a7, $zero
	lu12i.w	$t0, 77
	ori	$t0, $t0, 1504
	.p2align	4, , 16
.LBB25_35:                              # %.thread1819
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$t1, $a6, 0
	ld.w	$t2, $t1, 0
	addi.d	$t2, $t2, -1
	sltui	$t2, $t2, 1
	slli.d	$t2, $t2, 1
	stx.w	$t2, $t1, $t0
	ld.w	$t1, $a5, 0
	addi.d	$a7, $a7, 1
	addi.d	$a6, $a6, 8
	blt	$a7, $t1, .LBB25_35
.LBB25_36:                              # %._crit_edge2008.split
	ld.d	$a5, $sp, 288                   # 8-byte Folded Reload
	addi.d	$a7, $a5, 1
	slli.d	$a5, $a7, 2
	ldx.w	$a5, $a4, $a5
	ori	$a6, $zero, 1
	blt	$a5, $a6, .LBB25_52
# %bb.37:                               # %.lr.ph2007.1
	pcalau12i	$a5, %got_pc_hi20(listX)
	ld.d	$a5, $a5, %got_pc_lo12(listX)
	slli.d	$a6, $a7, 3
	ldx.d	$a5, $a5, $a6
	move	$a6, $zero
	alsl.d	$a4, $a7, $a4, 2
	lu12i.w	$a7, 77
	ori	$a7, $a7, 1504
	.p2align	4, , 16
.LBB25_38:                              # %.thread1819.1
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$t0, $a5, 0
	ld.w	$t1, $t0, 0
	addi.d	$t1, $t1, -1
	sltui	$t1, $t1, 1
	slli.d	$t1, $t1, 1
	stx.w	$t1, $t0, $a7
	ld.w	$t0, $a4, 0
	addi.d	$a6, $a6, 1
	addi.d	$a5, $a5, 8
	blt	$a6, $t0, .LBB25_38
	b	.LBB25_52
.LBB25_39:                              # %.lr.ph2011.split.us.preheader
	move	$t0, $zero
	addi.d	$t1, $zero, -2
	lu12i.w	$t2, 77
	ori	$t2, $t2, 1504
	.p2align	4, , 16
.LBB25_40:                              # %.lr.ph2011.split.us
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$t3, $a6, 0
	ld.w	$t4, $t3, 0
	addi.d	$t4, $t4, -1
	sltui	$t4, $t4, 1
	masknez	$t4, $t1, $t4
	stx.w	$t4, $t3, $t2
	ld.w	$t3, $a7, 0
	addi.d	$t0, $t0, 1
	addi.d	$a6, $a6, 8
	blt	$t0, $t3, .LBB25_40
	b	.LBB25_43
.LBB25_41:                              # %.thread1817.preheader
	move	$t0, $zero
	lu12i.w	$t1, 77
	ori	$t1, $t1, 1504
	.p2align	4, , 16
.LBB25_42:                              # %.thread1817
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$t2, $a6, 0
	stx.w	$zero, $t2, $t1
	ld.w	$t2, $a7, 0
	addi.d	$t0, $t0, 1
	addi.d	$a6, $a6, 8
	blt	$t0, $t2, .LBB25_42
.LBB25_43:                              # %._crit_edge2012
	ld.d	$a6, $sp, 288                   # 8-byte Folded Reload
	addi.d	$a6, $a6, 1
	slli.d	$a7, $a6, 2
	ldx.w	$a7, $a4, $a7
	blt	$a7, $a5, .LBB25_52
# %bb.44:                               # %.lr.ph2011.1
	pcalau12i	$a5, %got_pc_hi20(listX)
	ld.d	$a5, $a5, %got_pc_lo12(listX)
	slli.d	$t0, $a6, 3
	ldptr.w	$a7, $s6, 5584
	ldx.d	$a5, $a5, $t0
	ori	$t0, $zero, 1
	alsl.d	$a4, $a6, $a4, 2
	beq	$a7, $t0, .LBB25_48
# %bb.45:                               # %.lr.ph2011.1
	ori	$a6, $zero, 2
	bne	$a7, $a6, .LBB25_50
# %bb.46:                               # %.lr.ph2011.split.us2013.1.preheader
	move	$a6, $zero
	lu12i.w	$a7, 77
	ori	$a7, $a7, 1504
	.p2align	4, , 16
.LBB25_47:                              # %.lr.ph2011.split.us2013.1
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$t0, $a5, 0
	ld.w	$t1, $t0, 0
	addi.d	$t1, $t1, -2
	sltu	$t1, $zero, $t1
	slli.d	$t1, $t1, 1
	stx.w	$t1, $t0, $a7
	ld.w	$t0, $a4, 0
	addi.d	$a6, $a6, 1
	addi.d	$a5, $a5, 8
	blt	$a6, $t0, .LBB25_47
	b	.LBB25_52
.LBB25_48:                              # %.lr.ph2011.split.us.1.preheader
	move	$a6, $zero
	addi.d	$a7, $zero, -2
	lu12i.w	$t0, 77
	ori	$t0, $t0, 1504
	.p2align	4, , 16
.LBB25_49:                              # %.lr.ph2011.split.us.1
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$t1, $a5, 0
	ld.w	$t2, $t1, 0
	addi.d	$t2, $t2, -1
	sltui	$t2, $t2, 1
	masknez	$t2, $a7, $t2
	stx.w	$t2, $t1, $t0
	ld.w	$t1, $a4, 0
	addi.d	$a6, $a6, 1
	addi.d	$a5, $a5, 8
	blt	$a6, $t1, .LBB25_49
	b	.LBB25_52
.LBB25_50:                              # %.thread1817.1.preheader
	move	$a6, $zero
	lu12i.w	$a7, 77
	ori	$a7, $a7, 1504
	.p2align	4, , 16
.LBB25_51:                              # %.thread1817.1
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$t0, $a5, 0
	stx.w	$zero, $t0, $a7
	ld.w	$t0, $a4, 0
	addi.d	$a6, $a6, 1
	addi.d	$a5, $a5, 8
	blt	$a6, $t0, .LBB25_51
.LBB25_52:                              # %.loopexit1983
	sltui	$fp, $a1, 1
	ori	$a1, $zero, 10
	or	$s2, $a3, $a2
	bne	$a0, $a1, .LBB25_54
# %bb.53:
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.w	$a1, $a0, 324
	move	$a0, $s6
	pcaddu18i	$ra, %call36(intrapred_luma_16x16)
	jirl	$ra, $ra, 0
.LBB25_54:
	addi.w	$a0, $s1, -1
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	ld.w	$a0, $s6, 44
	maskeqz	$s1, $s2, $fp
	masknez	$s2, $s0, $fp
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB25_62
# %bb.55:
	ld.w	$a0, $s6, 40
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	beqz	$a0, .LBB25_62
# %bb.56:
	ld.w	$a0, $a2, 40
	beqz	$a0, .LBB25_316
# %bb.57:
	ori	$a1, $zero, 8
	bne	$a0, $a1, .LBB25_62
# %bb.58:
	ld.bu	$a0, $a2, 328
	beqz	$a0, .LBB25_316
# %bb.59:
	ld.bu	$a0, $a2, 329
	beqz	$a0, .LBB25_316
# %bb.60:
	ld.bu	$a0, $a2, 330
	beqz	$a0, .LBB25_316
# %bb.61:
	ld.bu	$a0, $a2, 331
	beqz	$a0, .LBB25_316
.LBB25_62:
	st.d	$zero, $sp, 304                 # 8-byte Folded Spill
	st.d	$zero, $sp, 296                 # 8-byte Folded Spill
	st.d	$zero, $sp, 280                 # 8-byte Folded Spill
	st.d	$zero, $sp, 272                 # 8-byte Folded Spill
	ori	$a0, $zero, 255
	st.d	$a0, $sp, 376                   # 8-byte Folded Spill
	ori	$a0, $zero, 255
	st.d	$a0, $sp, 352                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 288                   # 8-byte Folded Reload
.LBB25_63:
	move	$a4, $zero
	move	$a6, $zero
	or	$a0, $s1, $s2
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	addi.d	$a0, $a2, 328
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	addi.d	$a0, $a2, 332
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(listX)
	ld.d	$a2, $a0, %got_pc_lo12(listX)
	pcalau12i	$a0, %got_pc_hi20(listXsize)
	ld.d	$a0, $a0, %got_pc_lo12(listXsize)
	addi.d	$a3, $s6, 104
	st.d	$a3, $sp, 80                    # 8-byte Folded Spill
	addi.d	$a3, $a1, 1
	st.d	$a3, $sp, 392                   # 8-byte Folded Spill
	alsl.d	$a3, $a3, $a2, 3
	st.d	$a3, $sp, 344                   # 8-byte Folded Spill
	alsl.d	$a0, $a1, $a0, 2
	st.d	$a0, $sp, 240                   # 8-byte Folded Spill
	addi.d	$a0, $s6, 616
	st.d	$a0, $sp, 232                   # 8-byte Folded Spill
	st.d	$a2, $sp, 48                    # 8-byte Folded Spill
	alsl.d	$a0, $a1, $a2, 3
	move	$s2, $zero
	st.d	$a0, $sp, 320                   # 8-byte Folded Spill
	slli.d	$a0, $a1, 3
	addi.d	$a2, $s6, 1384
	st.d	$a2, $sp, 400                   # 8-byte Folded Spill
	slli.d	$a1, $a1, 8
	or	$a0, $a1, $a0
	addi.d	$a0, $a0, 24
	st.d	$a0, $sp, 208                   # 8-byte Folded Spill
	addi.w	$a0, $zero, -1
	st.d	$a0, $sp, 408                   # 8-byte Folded Spill
	lu12i.w	$a0, 15
	ori	$a5, $a0, 4095
	lu12i.w	$a0, 77
	ori	$a0, $a0, 1528
	st.d	$a0, $sp, 480                   # 8-byte Folded Spill
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1528
	st.d	$a0, $sp, 384                   # 8-byte Folded Spill
	lu12i.w	$a0, -33153
	ori	$a0, $a0, 2220
	st.d	$a0, $sp, 200                   # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 1807
	st.d	$a0, $sp, 224                   # 8-byte Folded Spill
	ori	$a0, $zero, 4
	st.d	$a0, $sp, 512                   # 8-byte Folded Spill
	st.d	$a5, $sp, 328                   # 8-byte Folded Spill
	st.d	$a5, $sp, 456                   # 8-byte Folded Spill
	move	$s0, $a5
	st.d	$s6, $sp, 368                   # 8-byte Folded Spill
	st.d	$s7, $sp, 360                   # 8-byte Folded Spill
	.p2align	4, , 16
.LBB25_64:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB25_70 Depth 2
                                        #       Child Loop BB25_139 Depth 3
                                        #       Child Loop BB25_126 Depth 3
	bstrpick.d	$a0, $s2, 62, 3
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	ldx.bu	$a1, $a1, $a4
	slli.d	$s5, $a0, 3
	st.d	$a6, $sp, 424                   # 8-byte Folded Spill
	andi	$a0, $a6, 1
	slli.d	$s3, $a0, 3
	pcalau12i	$a0, %pc_hi20(active_pps)
	st.d	$a0, $sp, 248                   # 8-byte Folded Spill
	ori	$a0, $zero, 13
	st.d	$a4, $sp, 448                   # 8-byte Folded Spill
	st.d	$s2, $sp, 440                   # 8-byte Folded Spill
	bne	$a1, $a0, .LBB25_66
# %bb.65:                               # %.preheader1962
                                        #   in Loop: Header=BB25_64 Depth=1
	slli.d	$a0, $a4, 3
	andi	$fp, $a0, 8
	slli.d	$a0, $a4, 2
	andi	$s1, $a0, 8
	addi.w	$a1, $a4, 0
	move	$a0, $s6
	st.d	$a5, $sp, 336                   # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(intrapred8x8)
	jirl	$ra, $ra, 0
	move	$a0, $s6
	move	$a1, $fp
	move	$a2, $s1
	pcaddu18i	$ra, %call36(itrans8x8)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$a1, $sp, 480                   # 8-byte Folded Reload
	ldx.d	$a0, $a0, $a1
	ld.w	$a1, $s6, 80
	alsl.d	$a0, $a1, $a0, 3
	ld.w	$a2, $s6, 84
	slli.d	$a1, $s5, 3
	ldx.d	$a3, $a0, $a1
	slli.d	$a1, $s5, 6
	ld.d	$a6, $sp, 400                   # 8-byte Folded Reload
	add.d	$a4, $a6, $a1
	alsl.d	$a5, $s3, $a4, 2
	slli.d	$a1, $s3, 2
	vldx	$vr0, $a4, $a1
	vld	$vr1, $a5, 16
	alsl.d	$a3, $s3, $a3, 1
	slli.d	$a2, $a2, 1
	vpickev.h	$vr0, $vr1, $vr0
	vstx	$vr0, $a3, $a2
	addi.d	$a3, $s5, 1
	slli.d	$a4, $a3, 3
	ldx.d	$a4, $a0, $a4
	slli.d	$a3, $a3, 6
	add.d	$a3, $a6, $a3
	alsl.d	$a5, $s3, $a3, 2
	vldx	$vr0, $a3, $a1
	vld	$vr1, $a5, 16
	alsl.d	$a3, $s3, $a4, 1
	vpickev.h	$vr0, $vr1, $vr0
	vstx	$vr0, $a3, $a2
	addi.d	$a3, $s5, 2
	slli.d	$a4, $a3, 3
	ldx.d	$a4, $a0, $a4
	slli.d	$a3, $a3, 6
	add.d	$a3, $a6, $a3
	alsl.d	$a5, $s3, $a3, 2
	vldx	$vr0, $a3, $a1
	vld	$vr1, $a5, 16
	alsl.d	$a3, $s3, $a4, 1
	vpickev.h	$vr0, $vr1, $vr0
	vstx	$vr0, $a3, $a2
	addi.d	$a3, $s5, 3
	slli.d	$a4, $a3, 3
	ldx.d	$a4, $a0, $a4
	slli.d	$a3, $a3, 6
	add.d	$a3, $a6, $a3
	alsl.d	$a5, $s3, $a3, 2
	vldx	$vr0, $a3, $a1
	vld	$vr1, $a5, 16
	alsl.d	$a3, $s3, $a4, 1
	vpickev.h	$vr0, $vr1, $vr0
	vstx	$vr0, $a3, $a2
	ori	$a3, $s2, 4
	slli.d	$a4, $a3, 3
	ldx.d	$a4, $a0, $a4
	slli.d	$a3, $a3, 6
	add.d	$a3, $a6, $a3
	alsl.d	$a5, $s3, $a3, 2
	vldx	$vr0, $a3, $a1
	vld	$vr1, $a5, 16
	alsl.d	$a3, $s3, $a4, 1
	vpickev.h	$vr0, $vr1, $vr0
	vstx	$vr0, $a3, $a2
	ori	$a3, $s2, 5
	slli.d	$a4, $a3, 3
	ldx.d	$a4, $a0, $a4
	slli.d	$a3, $a3, 6
	add.d	$a3, $a6, $a3
	alsl.d	$a5, $s3, $a3, 2
	vldx	$vr0, $a3, $a1
	vld	$vr1, $a5, 16
	alsl.d	$a3, $s3, $a4, 1
	vpickev.h	$vr0, $vr1, $vr0
	vstx	$vr0, $a3, $a2
	ori	$a3, $s2, 6
	slli.d	$a4, $a3, 3
	ldx.d	$a4, $a0, $a4
	slli.d	$a3, $a3, 6
	add.d	$a3, $a6, $a3
	alsl.d	$a5, $s3, $a3, 2
	vldx	$vr0, $a3, $a1
	vld	$vr1, $a5, 16
	ld.d	$a5, $sp, 336                   # 8-byte Folded Reload
	alsl.d	$a3, $s3, $a4, 1
	vpickev.h	$vr0, $vr1, $vr0
	vstx	$vr0, $a3, $a2
	ori	$a3, $s2, 7
	slli.d	$a4, $a3, 3
	ldx.d	$a0, $a0, $a4
	slli.d	$a3, $a3, 6
	add.d	$a3, $a6, $a3
	alsl.d	$a4, $s3, $a3, 2
	vldx	$vr0, $a3, $a1
	vld	$vr1, $a4, 16
	alsl.d	$a0, $s3, $a0, 1
	b	.LBB25_220
	.p2align	4, , 16
.LBB25_66:                              #   in Loop: Header=BB25_64 Depth=1
	move	$a4, $s2
	st.d	$s3, $sp, 496                   # 8-byte Folded Spill
	st.d	$s5, $sp, 488                   # 8-byte Folded Spill
	b	.LBB25_70
.LBB25_67:                              #   in Loop: Header=BB25_70 Depth=2
	move	$s8, $t8
	move	$fp, $t7
	move	$s1, $t2
	move	$s3, $a4
	move	$s4, $t1
	move	$s5, $ra
	move	$s2, $s0
	ld.d	$a0, $sp, 504                   # 8-byte Folded Reload
	beqz	$a0, .LBB25_73
.LBB25_68:                              #   in Loop: Header=BB25_70 Depth=2
	move	$s0, $s2
	ld.d	$s2, $sp, 496                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 488                   # 8-byte Folded Reload
.LBB25_69:                              # %.critedge1813
                                        #   in Loop: Header=BB25_70 Depth=2
	ld.d	$a4, $sp, 520                   # 8-byte Folded Reload
	addi.d	$a4, $a4, 1
	ld.d	$a5, $sp, 336                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 512                   # 8-byte Folded Reload
	beq	$a4, $a0, .LBB25_218
.LBB25_70:                              # %.preheader2863
                                        #   Parent Loop BB25_64 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB25_139 Depth 3
                                        #       Child Loop BB25_126 Depth 3
	move	$s2, $s0
	pcalau12i	$a0, %pc_hi20(decode_one_macroblock.decode_block_scan)
	addi.d	$a0, $a0, %pc_lo12(decode_one_macroblock.decode_block_scan)
	st.d	$a4, $sp, 520                   # 8-byte Folded Spill
	ldx.bu	$a2, $a0, $a4
	andi	$t2, $a2, 3
	bstrpick.d	$a4, $a2, 3, 2
	ld.w	$a3, $s6, 92
	ld.w	$a1, $s6, 76
	bstrpick.d	$a0, $a2, 1, 1
	srli.d	$a2, $a2, 3
	bstrins.d	$a0, $a2, 1, 1
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	ldx.bu	$s0, $a2, $a0
	slli.d	$t7, $t2, 2
	add.w	$ra, $t2, $a3
	slli.d	$t8, $a4, 2
	add.w	$t1, $a4, $a1
	ori	$a2, $zero, 11
	bne	$s0, $a2, .LBB25_76
# %bb.71:                               #   in Loop: Header=BB25_70 Depth=2
	move	$s1, $t2
	move	$s3, $a4
	st.d	$a5, $sp, 336                   # 8-byte Folded Spill
	move	$s8, $t8
	addi.w	$a2, $t8, 0
	move	$a0, $s6
	move	$fp, $t7
	move	$a1, $t7
	move	$s5, $ra
	move	$a3, $ra
	move	$s4, $t1
	move	$a4, $t1
	pcaddu18i	$ra, %call36(intrapred)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	beq	$a0, $a1, .LBB25_5
# %bb.72:                               # %.thread1880
                                        #   in Loop: Header=BB25_70 Depth=2
	ld.d	$a0, $sp, 504                   # 8-byte Folded Reload
	bnez	$a0, .LBB25_68
.LBB25_73:                              #   in Loop: Header=BB25_70 Depth=2
	ld.w	$a0, $s6, 44
	ori	$a1, $zero, 3
	bne	$a0, $a1, .LBB25_75
# %bb.74:                               #   in Loop: Header=BB25_70 Depth=2
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.w	$a0, $a0, 40
	ori	$a1, $zero, 10
	bne	$a0, $a1, .LBB25_86
.LBB25_75:                              #   in Loop: Header=BB25_70 Depth=2
	addi.w	$a2, $s8, 0
	move	$a0, $s6
	move	$a1, $fp
	move	$a3, $s1
	move	$a4, $s3
	move	$a5, $zero
	pcaddu18i	$ra, %call36(itrans)
	jirl	$ra, $ra, 0
	b	.LBB25_87
	.p2align	4, , 16
.LBB25_76:                              #   in Loop: Header=BB25_70 Depth=2
	ld.d	$a6, $sp, 40                    # 8-byte Folded Reload
	ld.w	$a2, $a6, 40
	ori	$a2, $a2, 4
	ori	$a3, $zero, 14
	bne	$a2, $a3, .LBB25_78
# %bb.77:                               #   in Loop: Header=BB25_70 Depth=2
	move	$s0, $s2
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	st.d	$a5, $sp, 336                   # 8-byte Folded Spill
	bnez	$a0, .LBB25_211
	b	.LBB25_67
.LBB25_78:                              #   in Loop: Header=BB25_70 Depth=2
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
	ldx.b	$a0, $a2, $a0
	andi	$a2, $a0, 255
	ori	$a3, $zero, 2
	st.d	$t2, $sp, 464                   # 8-byte Folded Spill
	bne	$a2, $a3, .LBB25_83
# %bb.79:                               #   in Loop: Header=BB25_70 Depth=2
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a2, $a0, 0
	lu12i.w	$a0, 77
	ori	$s5, $a0, 1560
	add.d	$a0, $a2, $s5
	ld.d	$a3, $a0, 24
	ld.d	$s4, $a3, 0
	ld.d	$t3, $a3, 8
	st.d	$t1, $sp, 416                   # 8-byte Folded Spill
	st.d	$a4, $sp, 432                   # 8-byte Folded Spill
	beqz	$s0, .LBB25_89
# %bb.80:                               # %.thread1827
                                        #   in Loop: Header=BB25_70 Depth=2
	ld.d	$a0, $a0, 0
	ld.d	$a1, $a0, 8
	ld.d	$a0, $a0, 0
	slli.d	$a2, $t1, 3
	ldx.d	$a1, $a1, $a2
	ldx.d	$a0, $a0, $a2
	ldx.b	$s8, $a1, $ra
	ldx.b	$s2, $a0, $ra
	st.d	$s8, $sp, 456                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 472                   # 8-byte Folded Reload
	beqz	$a0, .LBB25_155
.LBB25_81:                              #   in Loop: Header=BB25_70 Depth=2
	ld.w	$a0, $s6, 76
	slli.d	$a0, $a0, 3
	slli.d	$a1, $a4, 4
	ld.d	$a2, $sp, 176                   # 8-byte Folded Reload
	bnez	$a2, .LBB25_116
# %bb.82:                               #   in Loop: Header=BB25_70 Depth=2
	move	$s3, $t8
	move	$s1, $t7
	move	$fp, $s8
	add.d	$a0, $a0, $a1
	b	.LBB25_156
.LBB25_83:                              #   in Loop: Header=BB25_70 Depth=2
	ld.d	$a2, $sp, 472                   # 8-byte Folded Reload
	st.d	$a5, $sp, 336                   # 8-byte Folded Spill
	beqz	$a2, .LBB25_88
# %bb.84:                               #   in Loop: Header=BB25_70 Depth=2
	ld.d	$a2, $sp, 176                   # 8-byte Folded Reload
	bnez	$a2, .LBB25_105
# %bb.85:                               #   in Loop: Header=BB25_70 Depth=2
	move	$s1, $t8
	move	$s8, $t7
	move	$s3, $a4
	slli.d	$a2, $a4, 4
	alsl.w	$a3, $a1, $a2, 3
	b	.LBB25_106
.LBB25_86:                              #   in Loop: Header=BB25_70 Depth=2
	addi.w	$a2, $s8, 0
	move	$a0, $s6
	move	$a1, $fp
	move	$a3, $s1
	move	$a4, $s3
	pcaddu18i	$ra, %call36(itrans_sp)
	jirl	$ra, $ra, 0
.LBB25_87:                              # %.critedge1813.thread
                                        #   in Loop: Header=BB25_70 Depth=2
	move	$s0, $s2
	b	.LBB25_214
.LBB25_88:                              #   in Loop: Header=BB25_70 Depth=2
	move	$s1, $t8
	move	$s8, $t7
	move	$s3, $a4
	slli.d	$a3, $t1, 4
	b	.LBB25_106
.LBB25_89:                              #   in Loop: Header=BB25_70 Depth=2
	move	$s3, $a4
	ld.w	$a4, $s6, 40
	ld.d	$a3, $sp, 384                   # 8-byte Folded Reload
	ldx.w	$a3, $s6, $a3
	beqz	$a4, .LBB25_117
# %bb.90:                               #   in Loop: Header=BB25_70 Depth=2
	ld.d	$a6, $sp, 376                   # 8-byte Folded Reload
	beqz	$a3, .LBB25_128
# %bb.91:                               #   in Loop: Header=BB25_70 Depth=2
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	ld.w	$a2, $a2, 356
	move	$a3, $s3
	beqz	$a2, .LBB25_95
# %bb.92:                               #   in Loop: Header=BB25_70 Depth=2
	ld.bu	$a2, $s6, 4
	andi	$a2, $a2, 1
	beqz	$a2, .LBB25_94
# %bb.93:                               #   in Loop: Header=BB25_70 Depth=2
	addi.w	$a1, $a1, -4
.LBB25_94:                              #   in Loop: Header=BB25_70 Depth=2
	srai.d	$a1, $a1, 1
.LBB25_95:                              #   in Loop: Header=BB25_70 Depth=2
	ext.w.b	$a2, $a6
	add.w	$a1, $a1, $a3
	bltz	$a2, .LBB25_129
.LBB25_96:                              #   in Loop: Header=BB25_70 Depth=2
	andi	$a3, $a6, 255
	bnez	$a3, .LBB25_99
# %bb.97:                               #   in Loop: Header=BB25_70 Depth=2
	slli.d	$a3, $a1, 3
	ld.d	$a4, $sp, 264                   # 8-byte Folded Reload
	ldx.d	$a3, $a4, $a3
	ldx.bu	$a3, $a3, $ra
	bnez	$a3, .LBB25_99
# %bb.98:                               #   in Loop: Header=BB25_70 Depth=2
	ld.d	$a3, $sp, 344                   # 8-byte Folded Reload
	ld.d	$a3, $a3, 0
	ld.d	$a3, $a3, 0
	lu12i.w	$a4, 77
	ori	$a4, $a4, 1452
	ldx.w	$a3, $a3, $a4
	beqz	$a3, .LBB25_216
.LBB25_99:                              #   in Loop: Header=BB25_70 Depth=2
	slli.d	$a3, $t1, 3
	ldx.d	$a4, $s4, $a3
	slli.d	$a5, $ra, 3
	ldx.d	$a4, $a4, $a5
	ld.d	$a5, $sp, 272                   # 8-byte Folded Reload
	st.h	$a5, $a4, 0
	ld.d	$a5, $sp, 280                   # 8-byte Folded Reload
	st.h	$a5, $a4, 2
	ld.d	$a0, $a0, 0
	ld.d	$a0, $a0, 0
	ldx.d	$a0, $a0, $a3
	stx.b	$a6, $a0, $ra
	ld.d	$a3, $sp, 352                   # 8-byte Folded Reload
	ext.w.b	$a0, $a3
	bltz	$a0, .LBB25_130
.LBB25_100:                             #   in Loop: Header=BB25_70 Depth=2
	andi	$a0, $a3, 255
	bnez	$a0, .LBB25_103
# %bb.101:                              #   in Loop: Header=BB25_70 Depth=2
	slli.d	$a0, $a1, 3
	ld.d	$a1, $sp, 264                   # 8-byte Folded Reload
	ldx.d	$a0, $a1, $a0
	ldx.bu	$a0, $a0, $ra
	bnez	$a0, .LBB25_103
# %bb.102:                              #   in Loop: Header=BB25_70 Depth=2
	ld.d	$a0, $sp, 344                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$a0, $a0, 0
	lu12i.w	$a1, 77
	ori	$a1, $a1, 1452
	ldx.w	$a0, $a0, $a1
	beqz	$a0, .LBB25_217
.LBB25_103:                             #   in Loop: Header=BB25_70 Depth=2
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	lu12i.w	$a1, 77
	ori	$a1, $a1, 1584
	ldx.d	$a1, $a0, $a1
	ld.d	$a1, $a1, 8
	slli.d	$a2, $t1, 3
	ldx.d	$a1, $a1, $a2
	slli.d	$a2, $ra, 3
	ldx.d	$a1, $a1, $a2
	ld.d	$a2, $sp, 296                   # 8-byte Folded Reload
	st.h	$a2, $a1, 0
	ld.d	$a2, $sp, 304                   # 8-byte Folded Reload
	st.h	$a2, $a1, 2
	move	$a1, $a3
.LBB25_104:                             # %.thread1821.sink.split
                                        #   in Loop: Header=BB25_70 Depth=2
	ldx.d	$a0, $a0, $s5
	ld.d	$a0, $a0, 8
	slli.d	$a2, $t1, 3
	ldx.d	$a0, $a0, $a2
	stx.b	$a1, $a0, $ra
	b	.LBB25_131
.LBB25_105:                             #   in Loop: Header=BB25_70 Depth=2
	move	$s8, $t7
	move	$s3, $a4
	move	$s1, $t8
	alsl.d	$a1, $a1, $t8, 1
	addi.d	$a2, $zero, -32
	alsl.w	$a3, $a1, $a2, 2
.LBB25_106:                             #   in Loop: Header=BB25_70 Depth=2
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	lu12i.w	$a2, 77
	ori	$a2, $a2, 1560
	ldx.d	$a4, $a1, $a2
	add.d	$a1, $a1, $a2
	ld.d	$a1, $a1, 24
	slli.d	$s0, $a0, 3
	ldx.d	$a2, $a4, $s0
	ldx.d	$a1, $a1, $s0
	move	$s4, $t1
	slli.d	$a4, $t1, 3
	ldx.d	$a2, $a2, $a4
	ldx.d	$a1, $a1, $a4
	ldx.b	$a4, $a2, $ra
	slli.d	$a2, $ra, 3
	ldx.d	$a1, $a1, $a2
	move	$s2, $a4
	andi	$a4, $a4, 255
	ld.d	$a2, $sp, 288                   # 8-byte Folded Reload
	add.d	$a0, $a2, $a0
	ld.h	$a2, $a1, 0
	ld.h	$a5, $a1, 2
	slli.d	$a0, $a0, 3
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	ldx.d	$a1, $a1, $a0
	move	$s5, $ra
	alsl.w	$a2, $ra, $a2, 4
	add.w	$a3, $a3, $a5
	ext.w.b	$a0, $a4
	addi.d	$a5, $sp, 648
	move	$fp, $a0
	move	$a4, $s6
	pcaddu18i	$ra, %call36(get_block)
	jirl	$ra, $ra, 0
	ldptr.w	$a1, $s6, 5800
	move	$t8, $s1
	addi.w	$a6, $s1, 0
	move	$t7, $s8
	slli.d	$a0, $s8, 1
	beqz	$a1, .LBB25_111
# %bb.107:                              #   in Loop: Header=BB25_70 Depth=2
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(active_pps)
	ld.w	$a2, $a1, 1120
	beqz	$a2, .LBB25_112
# %bb.108:                              #   in Loop: Header=BB25_70 Depth=2
	ld.w	$a2, $s6, 44
	beqz	$a2, .LBB25_110
# %bb.109:                              #   in Loop: Header=BB25_70 Depth=2
	ori	$a3, $zero, 3
	bne	$a2, $a3, .LBB25_112
.LBB25_110:                             #   in Loop: Header=BB25_70 Depth=2
	move	$a1, $s2
	ld.d	$a2, $sp, 472                   # 8-byte Folded Reload
	move	$ra, $s5
	move	$t6, $s3
	bnez	$a2, .LBB25_114
	b	.LBB25_115
.LBB25_111:                             # %.preheader1975.preheader
                                        #   in Loop: Header=BB25_70 Depth=2
	ld.h	$a1, $sp, 648
	slli.d	$a2, $a6, 5
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
	add.d	$a2, $a3, $a2
	ld.h	$a3, $sp, 652
	stx.h	$a1, $a2, $a0
	addi.d	$a1, $a0, 2
	ld.h	$a4, $sp, 656
	stx.h	$a3, $a2, $a1
	ld.h	$a3, $sp, 660
	addi.d	$a5, $a0, 4
	stx.h	$a4, $a2, $a5
	ori	$a4, $a0, 6
	stx.h	$a3, $a2, $a4
	ld.h	$a3, $sp, 664
	addi.d	$a6, $a2, 32
	ld.h	$a7, $sp, 668
	ld.h	$t0, $sp, 672
	ld.h	$t1, $sp, 676
	stx.h	$a3, $a6, $a0
	stx.h	$a7, $a6, $a1
	stx.h	$t0, $a6, $a5
	stx.h	$t1, $a6, $a4
	ld.h	$a3, $sp, 680
	addi.d	$a6, $a2, 64
	ld.h	$a7, $sp, 684
	ld.h	$t0, $sp, 688
	ld.h	$t1, $sp, 692
	stx.h	$a3, $a6, $a0
	stx.h	$a7, $a6, $a1
	stx.h	$t0, $a6, $a5
	stx.h	$t1, $a6, $a4
	ld.h	$a3, $sp, 696
	addi.d	$a2, $a2, 96
	ld.h	$a6, $sp, 700
	ld.h	$a7, $sp, 704
	ld.h	$t0, $sp, 708
	stx.h	$a3, $a2, $a0
	stx.h	$a6, $a2, $a1
	stx.h	$a7, $a2, $a5
	stx.h	$t0, $a2, $a4
	ld.d	$a5, $sp, 336                   # 8-byte Folded Reload
	move	$s0, $s2
	ld.d	$a6, $sp, 40                    # 8-byte Folded Reload
	move	$ra, $s5
	move	$t1, $s4
	move	$a4, $s3
	b	.LBB25_210
.LBB25_112:                             #   in Loop: Header=BB25_70 Depth=2
	ld.w	$a2, $a1, 1124
	move	$a1, $s2
	ori	$a3, $zero, 1
	move	$ra, $s5
	move	$t6, $s3
	bne	$a2, $a3, .LBB25_115
# %bb.113:                              #   in Loop: Header=BB25_70 Depth=2
	ld.w	$a1, $s6, 44
	addi.d	$a1, $a1, -1
	sltui	$a1, $a1, 1
	ld.d	$a2, $sp, 472                   # 8-byte Folded Reload
	and	$a2, $a1, $a2
	move	$a1, $s2
	beqz	$a2, .LBB25_115
.LBB25_114:                             #   in Loop: Header=BB25_70 Depth=2
	srai.d	$a1, $fp, 1
.LBB25_115:                             # %.loopexit1965.loopexit2124
                                        #   in Loop: Header=BB25_70 Depth=2
	ldptr.d	$a2, $s6, 5768
	ldptr.d	$a3, $s6, 5776
	ldx.d	$a2, $a2, $s0
	slli.d	$a1, $a1, 3
	ldx.d	$a3, $a3, $s0
	ldx.d	$a1, $a2, $a1
	ld.d	$a2, $sp, 472                   # 8-byte Folded Reload
	sra.w	$a2, $fp, $a2
	slli.d	$a2, $a2, 3
	ldx.d	$a2, $a3, $a2
	ld.w	$a1, $a1, 0
	lu12i.w	$a3, 1
	ori	$a3, $a3, 1664
	ldx.wu	$a4, $s6, $a3
	ld.w	$a3, $a2, 0
	ld.w	$a7, $sp, 648
	ldptr.w	$a2, $s6, 5900
	addi.d	$a5, $a4, -1
	ori	$t0, $zero, 1
	sll.w	$a5, $t0, $a5
	mul.d	$a7, $a7, $a1
	add.d	$a7, $a5, $a7
	sra.w	$a7, $a7, $a4
	add.w	$a7, $a7, $a3
	srai.d	$t0, $a7, 63
	andn	$a7, $a7, $t0
	slt	$t0, $a7, $a2
	maskeqz	$a7, $a7, $t0
	masknez	$t0, $a2, $t0
	or	$a7, $a7, $t0
	ld.w	$t0, $sp, 652
	slli.d	$a6, $a6, 5
	ld.d	$t1, $sp, 80                    # 8-byte Folded Reload
	add.d	$a6, $t1, $a6
	stx.h	$a7, $a6, $a0
	mul.d	$a7, $t0, $a1
	add.d	$a7, $a5, $a7
	sra.w	$a7, $a7, $a4
	add.w	$a7, $a7, $a3
	srai.d	$t0, $a7, 63
	andn	$a7, $a7, $t0
	slt	$t0, $a7, $a2
	maskeqz	$a7, $a7, $t0
	masknez	$t0, $a2, $t0
	ld.w	$t1, $sp, 656
	or	$t0, $a7, $t0
	addi.d	$a7, $a0, 2
	stx.h	$t0, $a6, $a7
	mul.d	$t0, $t1, $a1
	add.d	$t0, $a5, $t0
	sra.w	$t0, $t0, $a4
	add.w	$t0, $t0, $a3
	srai.d	$t1, $t0, 63
	andn	$t0, $t0, $t1
	slt	$t1, $t0, $a2
	maskeqz	$t0, $t0, $t1
	masknez	$t1, $a2, $t1
	ld.w	$t2, $sp, 660
	or	$t1, $t0, $t1
	addi.d	$t0, $a0, 4
	stx.h	$t1, $a6, $t0
	mul.d	$t1, $t2, $a1
	add.d	$t1, $a5, $t1
	sra.w	$t1, $t1, $a4
	add.w	$t1, $t1, $a3
	srai.d	$t2, $t1, 63
	andn	$t1, $t1, $t2
	slt	$t2, $t1, $a2
	maskeqz	$t1, $t1, $t2
	masknez	$t2, $a2, $t2
	ld.w	$t3, $sp, 664
	or	$t2, $t1, $t2
	ori	$t1, $a0, 6
	stx.h	$t2, $a6, $t1
	mul.d	$t2, $t3, $a1
	add.d	$t2, $a5, $t2
	sra.w	$t2, $t2, $a4
	add.w	$t2, $t2, $a3
	srai.d	$t3, $t2, 63
	andn	$t2, $t2, $t3
	slt	$t3, $t2, $a2
	maskeqz	$t2, $t2, $t3
	masknez	$t3, $a2, $t3
	ld.w	$t4, $sp, 668
	or	$t2, $t2, $t3
	addi.d	$t3, $a6, 32
	stx.h	$t2, $t3, $a0
	mul.d	$t2, $t4, $a1
	add.d	$t2, $a5, $t2
	sra.w	$t2, $t2, $a4
	add.w	$t2, $t2, $a3
	srai.d	$t4, $t2, 63
	andn	$t2, $t2, $t4
	slt	$t4, $t2, $a2
	maskeqz	$t2, $t2, $t4
	ld.w	$t5, $sp, 672
	masknez	$t4, $a2, $t4
	or	$t2, $t2, $t4
	stx.h	$t2, $t3, $a7
	mul.d	$t2, $t5, $a1
	add.d	$t2, $a5, $t2
	sra.w	$t2, $t2, $a4
	add.w	$t2, $t2, $a3
	srai.d	$t4, $t2, 63
	andn	$t2, $t2, $t4
	slt	$t4, $t2, $a2
	maskeqz	$t2, $t2, $t4
	ld.w	$t5, $sp, 676
	masknez	$t4, $a2, $t4
	or	$t2, $t2, $t4
	stx.h	$t2, $t3, $t0
	mul.d	$t2, $t5, $a1
	add.d	$t2, $a5, $t2
	sra.w	$t2, $t2, $a4
	add.w	$t2, $t2, $a3
	srai.d	$t4, $t2, 63
	andn	$t2, $t2, $t4
	slt	$t4, $t2, $a2
	maskeqz	$t2, $t2, $t4
	ld.w	$t5, $sp, 680
	masknez	$t4, $a2, $t4
	or	$t2, $t2, $t4
	stx.h	$t2, $t3, $t1
	mul.d	$t2, $t5, $a1
	add.d	$t2, $a5, $t2
	sra.w	$t2, $t2, $a4
	add.w	$t2, $t2, $a3
	srai.d	$t3, $t2, 63
	andn	$t2, $t2, $t3
	slt	$t3, $t2, $a2
	maskeqz	$t2, $t2, $t3
	masknez	$t3, $a2, $t3
	ld.w	$t4, $sp, 684
	or	$t2, $t2, $t3
	addi.d	$t3, $a6, 64
	stx.h	$t2, $t3, $a0
	mul.d	$t2, $t4, $a1
	add.d	$t2, $a5, $t2
	sra.w	$t2, $t2, $a4
	add.w	$t2, $t2, $a3
	srai.d	$t4, $t2, 63
	andn	$t2, $t2, $t4
	slt	$t4, $t2, $a2
	maskeqz	$t2, $t2, $t4
	ld.w	$t5, $sp, 688
	masknez	$t4, $a2, $t4
	or	$t2, $t2, $t4
	stx.h	$t2, $t3, $a7
	mul.d	$t2, $t5, $a1
	add.d	$t2, $a5, $t2
	sra.w	$t2, $t2, $a4
	add.w	$t2, $t2, $a3
	srai.d	$t4, $t2, 63
	andn	$t2, $t2, $t4
	slt	$t4, $t2, $a2
	maskeqz	$t2, $t2, $t4
	ld.w	$t5, $sp, 692
	masknez	$t4, $a2, $t4
	or	$t2, $t2, $t4
	stx.h	$t2, $t3, $t0
	mul.d	$t2, $t5, $a1
	add.d	$t2, $a5, $t2
	sra.w	$t2, $t2, $a4
	add.w	$t2, $t2, $a3
	srai.d	$t4, $t2, 63
	andn	$t2, $t2, $t4
	slt	$t4, $t2, $a2
	maskeqz	$t2, $t2, $t4
	ld.w	$t5, $sp, 696
	masknez	$t4, $a2, $t4
	or	$t2, $t2, $t4
	stx.h	$t2, $t3, $t1
	mul.d	$t2, $t5, $a1
	add.d	$t2, $a5, $t2
	sra.w	$t2, $t2, $a4
	add.w	$t2, $t2, $a3
	srai.d	$t3, $t2, 63
	andn	$t2, $t2, $t3
	slt	$t3, $t2, $a2
	maskeqz	$t2, $t2, $t3
	masknez	$t3, $a2, $t3
	ld.w	$t4, $sp, 700
	or	$t2, $t2, $t3
	addi.d	$a6, $a6, 96
	stx.h	$t2, $a6, $a0
	mul.d	$a0, $t4, $a1
	add.d	$a0, $a5, $a0
	sra.w	$a0, $a0, $a4
	add.w	$a0, $a0, $a3
	srai.d	$t2, $a0, 63
	andn	$a0, $a0, $t2
	slt	$t2, $a0, $a2
	maskeqz	$a0, $a0, $t2
	ld.w	$t3, $sp, 704
	masknez	$t2, $a2, $t2
	or	$a0, $a0, $t2
	stx.h	$a0, $a6, $a7
	mul.d	$a0, $t3, $a1
	add.d	$a0, $a5, $a0
	sra.w	$a0, $a0, $a4
	add.w	$a0, $a0, $a3
	srai.d	$a7, $a0, 63
	andn	$a0, $a0, $a7
	slt	$a7, $a0, $a2
	maskeqz	$a0, $a0, $a7
	ld.w	$t2, $sp, 708
	masknez	$a7, $a2, $a7
	or	$a0, $a0, $a7
	stx.h	$a0, $a6, $t0
	mul.d	$a0, $t2, $a1
	add.d	$a0, $a5, $a0
	sra.w	$a0, $a0, $a4
	add.w	$a0, $a0, $a3
	srai.d	$a1, $a0, 63
	andn	$a0, $a0, $a1
	slt	$a1, $a0, $a2
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $a2, $a1
	or	$a0, $a0, $a1
	stx.h	$a0, $a6, $t1
	ld.d	$a5, $sp, 336                   # 8-byte Folded Reload
	move	$s0, $s2
	ld.d	$a6, $sp, 40                    # 8-byte Folded Reload
	move	$t1, $s4
	move	$a4, $t6
	b	.LBB25_210
.LBB25_116:                             #   in Loop: Header=BB25_70 Depth=2
	move	$s3, $t8
	move	$s1, $t7
	move	$fp, $s8
	add.d	$a0, $a1, $a0
	addi.d	$a0, $a0, -32
	b	.LBB25_156
.LBB25_117:                             #   in Loop: Header=BB25_70 Depth=2
	beqz	$a3, .LBB25_122
# %bb.118:                              #   in Loop: Header=BB25_70 Depth=2
	ld.w	$a3, $a6, 356
	beqz	$a3, .LBB25_122
# %bb.119:                              #   in Loop: Header=BB25_70 Depth=2
	ld.bu	$a3, $s6, 4
	andi	$a3, $a3, 1
	beqz	$a3, .LBB25_121
# %bb.120:                              #   in Loop: Header=BB25_70 Depth=2
	addi.w	$a1, $a1, -4
.LBB25_121:                             #   in Loop: Header=BB25_70 Depth=2
	srai.d	$a1, $a1, 1
.LBB25_122:                             #   in Loop: Header=BB25_70 Depth=2
	ld.d	$a4, $sp, 312                   # 8-byte Folded Reload
	ld.d	$a3, $a4, 0
	add.w	$a1, $a1, $s3
	slli.d	$s6, $a1, 3
	ldx.d	$a1, $a3, $s6
	ldx.bu	$a1, $a1, $ra
	addi.d	$a1, $a1, -255
	sltui	$a3, $a1, 1
	slli.d	$s7, $a3, 3
	ldx.d	$a1, $a4, $s7
	ldx.d	$a1, $a1, $s6
	ldx.bu	$a1, $a1, $ra
	ori	$a4, $zero, 255
	beq	$a1, $a4, .LBB25_135
# %bb.123:                              # %.preheader1974
                                        #   in Loop: Header=BB25_70 Depth=2
	ld.d	$a5, $sp, 368                   # 8-byte Folded Reload
	ldptr.w	$a0, $a5, 5640
	ld.d	$a1, $sp, 240                   # 8-byte Folded Reload
	ld.w	$a1, $a1, 0
	slt	$a4, $a0, $a1
	masknez	$a1, $a1, $a4
	maskeqz	$a0, $a0, $a4
	or	$a1, $a0, $a1
	slli.d	$fp, $ra, 3
	ori	$a0, $zero, 1
	blt	$a1, $a0, .LBB25_136
# %bb.124:                              # %.lr.ph2022
                                        #   in Loop: Header=BB25_70 Depth=2
	ldptr.w	$a0, $a5, 5584
	sltu	$a0, $zero, $a0
	ld.d	$a4, $sp, 472                   # 8-byte Folded Reload
	or	$a0, $a0, $a4
	andi	$a4, $a0, 1
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	alsl.d	$a0, $a3, $a0, 3
	beqz	$a4, .LBB25_138
# %bb.125:                              # %.lr.ph2022.split.us
                                        #   in Loop: Header=BB25_70 Depth=2
	ld.d	$a0, $a0, 0
	ldx.d	$a3, $a0, $s6
	move	$a0, $zero
	ld.w	$a4, $a5, 12
	ldx.d	$a3, $a3, $fp
	bstrpick.d	$a1, $a1, 31, 0
	ld.d	$a5, $sp, 208                   # 8-byte Folded Reload
	add.d	$a2, $a2, $a5
	ori	$a5, $zero, 1584
	mul.d	$a4, $a4, $a5
	add.d	$a2, $a2, $a4
	ld.d	$s8, $sp, 96                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB25_126:                             #   Parent Loop BB25_64 Depth=1
                                        #     Parent Loop BB25_70 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a4, $a2, 0
	beq	$a4, $a3, .LBB25_143
# %bb.127:                              #   in Loop: Header=BB25_126 Depth=3
	addi.w	$a0, $a0, 1
	addi.d	$a1, $a1, -1
	addi.d	$a2, $a2, 8
	bnez	$a1, .LBB25_126
	b	.LBB25_142
.LBB25_128:                             #   in Loop: Header=BB25_70 Depth=2
	move	$a3, $s3
	ext.w.b	$a2, $a6
	add.w	$a1, $a1, $a3
	bgez	$a2, .LBB25_96
.LBB25_129:                             #   in Loop: Header=BB25_70 Depth=2
	ld.d	$a0, $a0, 0
	ld.d	$a0, $a0, 0
	slli.d	$a3, $t1, 3
	ldx.d	$a0, $a0, $a3
	ori	$a4, $zero, 255
	stx.b	$a4, $a0, $ra
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	lu12i.w	$a4, 77
	ori	$a4, $a4, 1584
	ldx.d	$a0, $a0, $a4
	ld.d	$a0, $a0, 0
	ldx.d	$a0, $a0, $a3
	slli.d	$a3, $ra, 3
	ldx.d	$a0, $a0, $a3
	st.w	$zero, $a0, 0
	ld.d	$a3, $sp, 352                   # 8-byte Folded Reload
	ext.w.b	$a0, $a3
	bgez	$a0, .LBB25_100
.LBB25_130:                             #   in Loop: Header=BB25_70 Depth=2
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	add.d	$a0, $a1, $s5
	ld.d	$a0, $a0, 24
	ld.d	$a3, $a0, 8
	slli.d	$a0, $t1, 3
	ldx.d	$a3, $a3, $a0
	slli.d	$a4, $ra, 3
	ldx.d	$a3, $a3, $a4
	st.w	$zero, $a3, 0
	ldx.d	$a1, $a1, $s5
	ld.d	$a1, $a1, 8
	ldx.d	$a1, $a1, $a0
	addi.w	$a3, $zero, -1
	ori	$a4, $zero, 255
	stx.b	$a4, $a1, $ra
	bge	$a3, $a2, .LBB25_137
.LBB25_131:                             # %.thread1821
                                        #   in Loop: Header=BB25_70 Depth=2
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ldx.d	$a0, $a0, $s5
	ld.d	$a1, $a0, 0
	slli.d	$a2, $t1, 3
	ld.d	$a0, $a0, 8
	ldx.d	$a1, $a1, $a2
	ldx.d	$a0, $a0, $a2
	ldx.bu	$a2, $a1, $ra
	ldx.bu	$a0, $a0, $ra
	addi.d	$a1, $a2, -255
	sltui	$a1, $a1, 1
	masknez	$a2, $a2, $a1
	ext.w.b	$s2, $a2
	ori	$a2, $zero, 255
	beq	$a0, $a2, .LBB25_133
# %bb.132:                              #   in Loop: Header=BB25_70 Depth=2
	ext.w.b	$a0, $a0
	ori	$a2, $zero, 2
	sub.w	$a1, $a2, $a1
	st.d	$a1, $sp, 408                   # 8-byte Folded Spill
	st.d	$a0, $sp, 456                   # 8-byte Folded Spill
	st.d	$a0, $sp, 336                   # 8-byte Folded Spill
	b	.LBB25_134
.LBB25_133:                             #   in Loop: Header=BB25_70 Depth=2
	st.d	$zero, $sp, 456                 # 8-byte Folded Spill
	st.d	$zero, $sp, 336                 # 8-byte Folded Spill
	st.d	$zero, $sp, 408                 # 8-byte Folded Spill
.LBB25_134:                             #   in Loop: Header=BB25_70 Depth=2
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	b	.LBB25_149
.LBB25_135:                             # %.preheader1973
                                        #   in Loop: Header=BB25_70 Depth=2
	st.d	$a5, $sp, 336                   # 8-byte Folded Spill
	slli.d	$a1, $t1, 3
	ldx.d	$a2, $s4, $a1
	ldx.d	$a3, $t3, $a1
	slli.d	$a4, $ra, 3
	ldx.d	$a2, $a2, $a4
	ldx.d	$a3, $a3, $a4
	st.h	$zero, $a2, 0
	st.h	$zero, $a3, 0
	st.h	$zero, $a2, 2
	st.h	$zero, $a3, 2
	ld.d	$a0, $a0, 0
	ld.d	$a0, $a0, 0
	ldx.d	$a0, $a0, $a1
	stx.b	$zero, $a0, $ra
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a0, $a2, 0
	ldx.d	$a0, $a0, $s5
	ld.d	$a0, $a0, 8
	ldx.d	$a0, $a0, $a1
	st.d	$zero, $sp, 456                 # 8-byte Folded Spill
	move	$s2, $zero
	stx.b	$zero, $a0, $ra
	b	.LBB25_148
.LBB25_136:                             #   in Loop: Header=BB25_70 Depth=2
	move	$a0, $zero
	ld.d	$s8, $sp, 96                    # 8-byte Folded Reload
	b	.LBB25_143
.LBB25_137:                             #   in Loop: Header=BB25_70 Depth=2
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a1, $a2, 0
	ldx.d	$a1, $a1, $s5
	ld.d	$a1, $a1, 0
	ldx.d	$a0, $a1, $a0
	stx.b	$zero, $a0, $ra
	ld.d	$a0, $a2, 0
	move	$a1, $zero
	b	.LBB25_104
.LBB25_138:                             # %.lr.ph2022.split
                                        #   in Loop: Header=BB25_70 Depth=2
	ld.d	$a0, $a0, 0
	ldx.d	$a0, $a0, $s6
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a2, $a2, 0
	ldx.d	$a3, $a0, $fp
	move	$a0, $zero
	bstrpick.d	$a1, $a1, 31, 0
	ld.d	$s8, $sp, 96                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB25_139:                             #   Parent Loop BB25_64 Depth=1
                                        #     Parent Loop BB25_70 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a4, $a2, 0
	ld.w	$a5, $a4, 8
	slli.w	$a5, $a5, 1
	beq	$a3, $a5, .LBB25_143
# %bb.140:                              #   in Loop: Header=BB25_139 Depth=3
	ld.w	$a4, $a4, 12
	slli.w	$a4, $a4, 1
	beq	$a3, $a4, .LBB25_143
# %bb.141:                              #   in Loop: Header=BB25_139 Depth=3
	addi.w	$a0, $a0, 1
	addi.d	$a1, $a1, -1
	addi.d	$a2, $a2, 8
	bnez	$a1, .LBB25_139
.LBB25_142:                             # %._crit_edge2023
                                        #   in Loop: Header=BB25_70 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
	addi.w	$a1, $zero, -1111
	move	$s2, $ra
	move	$s1, $t7
	st.d	$t8, $sp, 456                   # 8-byte Folded Spill
	st.d	$t3, $sp, 336                   # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(error)
	jirl	$ra, $ra, 0
	ld.d	$t3, $sp, 336                   # 8-byte Folded Reload
	ld.d	$t8, $sp, 456                   # 8-byte Folded Reload
	move	$t7, $s1
	ld.d	$t1, $sp, 416                   # 8-byte Folded Reload
	move	$ra, $s2
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
.LBB25_143:                             # %.thread1824
                                        #   in Loop: Header=BB25_70 Depth=2
	ld.d	$a1, $sp, 288                   # 8-byte Folded Reload
	slli.d	$a1, $a1, 7
	ld.d	$a2, $sp, 232                   # 8-byte Folded Reload
	add.d	$a1, $a2, $a1
	slli.d	$a2, $a0, 2
	ldx.w	$a2, $a1, $a2
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	bne	$a2, $a1, .LBB25_145
# %bb.144:                              # %.thread1824._crit_edge
                                        #   in Loop: Header=BB25_70 Depth=2
	ld.d	$a1, $s8, 0
	b	.LBB25_146
.LBB25_145:                             #   in Loop: Header=BB25_70 Depth=2
	ld.d	$a1, $sp, 320                   # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	slli.d	$a3, $a0, 3
	ldx.d	$a1, $a1, $a3
	lu12i.w	$a4, 77
	ori	$a3, $a4, 1452
	ldx.w	$a3, $a1, $a3
	ld.d	$a1, $s8, 0
	beqz	$a3, .LBB25_215
.LBB25_146:                             #   in Loop: Header=BB25_70 Depth=2
	ld.d	$a2, $sp, 256                   # 8-byte Folded Reload
	ldx.d	$a2, $a2, $s7
	lu12i.w	$a3, 77
	ori	$a3, $a3, 1584
	ldx.d	$a3, $a1, $a3
	ldx.d	$a2, $a2, $s6
	ld.d	$a4, $a3, 0
	ldx.d	$a2, $a2, $fp
	slli.d	$a5, $t1, 3
	ldx.d	$a4, $a4, $a5
	ld.h	$a6, $a2, 0
	ldx.d	$a4, $a4, $fp
	st.h	$a6, $a4, 0
	ld.h	$a2, $a2, 2
	st.h	$a2, $a4, 2
	ld.d	$a2, $a3, 8
	ldx.d	$a2, $a2, $a5
	ldx.d	$a2, $a2, $fp
	move	$a3, $zero
	st.h	$zero, $a2, 0
.LBB25_147:                             #   in Loop: Header=BB25_70 Depth=2
	st.h	$a3, $a2, 2
	ldx.d	$a1, $a1, $s5
	ld.d	$a1, $a1, 0
	slli.d	$a2, $t1, 3
	ldx.d	$a1, $a1, $a2
	stx.b	$a0, $a1, $ra
	ld.d	$a1, $s8, 0
	ldx.d	$a1, $a1, $s5
	ld.d	$a1, $a1, 8
	ldx.d	$a1, $a1, $a2
	st.d	$zero, $sp, 456                 # 8-byte Folded Spill
	move	$a2, $s8
	st.d	$zero, $sp, 336                 # 8-byte Folded Spill
	ext.w.b	$s2, $a0
	stx.b	$zero, $a1, $ra
.LBB25_148:                             #   in Loop: Header=BB25_70 Depth=2
	ld.d	$s6, $sp, 368                   # 8-byte Folded Reload
.LBB25_149:                             #   in Loop: Header=BB25_70 Depth=2
	ld.d	$a1, $a2, 0
	ldx.d	$a2, $a1, $s5
	ld.d	$a0, $a2, 0
	ld.w	$a3, $s6, 12
	add.d	$a4, $a1, $s5
	move	$a7, $s6
	slli.d	$s6, $t1, 3
	ldx.d	$a0, $a0, $s6
	ori	$a5, $zero, 1584
	mul.d	$a3, $a3, $a5
	add.d	$a1, $a1, $a3
	ld.d	$a3, $a4, 8
	ldx.b	$a4, $a0, $ra
	ld.d	$a5, $sp, 288                   # 8-byte Folded Reload
	ori	$t0, $zero, 264
	mul.d	$a5, $a5, $t0
	addi.d	$a6, $a1, 24
	ld.d	$a1, $a3, 0
	add.d	$a5, $a6, $a5
	slli.d	$a4, $a4, 3
	ldx.d	$a4, $a5, $a4
	ldx.d	$a1, $a1, $s6
	slli.d	$s7, $ra, 3
	stx.d	$a4, $a1, $s7
	ld.d	$a1, $a2, 8
	ldx.d	$a1, $a1, $s6
	ldx.b	$a2, $a1, $ra
	ld.d	$a4, $sp, 392                   # 8-byte Folded Reload
	mul.d	$a4, $a4, $t0
	ld.d	$a3, $a3, 8
	add.d	$a4, $a6, $a4
	slli.d	$a2, $a2, 3
	ldx.d	$a2, $a4, $a2
	ldx.d	$a3, $a3, $s6
	stx.d	$a2, $a3, $s7
	ld.w	$a2, $a7, 40
	beqz	$a2, .LBB25_154
# %bb.150:                              #   in Loop: Header=BB25_70 Depth=2
	ldx.b	$a0, $a0, $ra
	bltz	$a0, .LBB25_173
# %bb.151:                              #   in Loop: Header=BB25_70 Depth=2
	ld.d	$a0, $sp, 472                   # 8-byte Folded Reload
	beqz	$a0, .LBB25_170
# %bb.152:                              #   in Loop: Header=BB25_70 Depth=2
	ld.d	$a0, $sp, 368                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 76
	slli.d	$a0, $a0, 3
	ld.d	$a1, $sp, 432                   # 8-byte Folded Reload
	slli.d	$a1, $a1, 4
	ld.d	$a2, $sp, 176                   # 8-byte Folded Reload
	bnez	$a2, .LBB25_171
# %bb.153:                              #   in Loop: Header=BB25_70 Depth=2
	move	$s8, $t3
	move	$s3, $t8
	move	$s1, $t7
	move	$fp, $t1
	add.d	$a0, $a0, $a1
	b	.LBB25_172
.LBB25_154:                             #   in Loop: Header=BB25_70 Depth=2
	ld.d	$s6, $sp, 368                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 360                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 336                   # 8-byte Folded Reload
	move	$a4, $s3
	ld.d	$a0, $sp, 472                   # 8-byte Folded Reload
	bnez	$a0, .LBB25_81
.LBB25_155:                             #   in Loop: Header=BB25_70 Depth=2
	move	$s3, $t8
	move	$s1, $t7
	move	$fp, $s8
	slli.d	$a0, $t1, 4
.LBB25_156:                             #   in Loop: Header=BB25_70 Depth=2
	slli.d	$a1, $t1, 3
	ldx.d	$a2, $s4, $a1
	slli.d	$a3, $ra, 3
	ldx.d	$a4, $a2, $a3
	ldx.d	$a1, $t3, $a1
	ld.h	$a2, $a4, 0
	ldx.d	$a1, $a1, $a3
	alsl.w	$a2, $ra, $a2, 4
	ld.h	$a3, $a1, 0
	ld.h	$a4, $a4, 2
	ld.h	$a5, $a1, 2
	ld.d	$a1, $sp, 320                   # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	move	$s5, $ra
	alsl.w	$s4, $ra, $a3, 4
	add.w	$a3, $a0, $a4
	add.w	$s8, $a0, $a5
	addi.d	$a5, $sp, 648
	move	$a0, $s2
	move	$a4, $s6
	pcaddu18i	$ra, %call36(get_block)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 344                   # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	addi.d	$a5, $sp, 584
	ld.d	$a0, $sp, 456                   # 8-byte Folded Reload
	move	$a2, $s4
	move	$a3, $s8
	move	$a4, $s6
	pcaddu18i	$ra, %call36(get_block)
	jirl	$ra, $ra, 0
	beqz	$s0, .LBB25_163
# %bb.157:                              # %.critedge.thread
                                        #   in Loop: Header=BB25_70 Depth=2
	ldptr.w	$a0, $s6, 5800
	move	$t6, $fp
	move	$t7, $s1
	move	$t8, $s3
	beqz	$a0, .LBB25_169
# %bb.158:                              # %.thread1872
                                        #   in Loop: Header=BB25_70 Depth=2
	ld.d	$a0, $sp, 248                   # 8-byte Folded Reload
	ld.d	$a2, $a0, %pc_lo12(active_pps)
	ld.w	$a1, $a2, 1124
	addi.d	$a0, $a1, -2
	sltui	$a0, $a0, 1
	ld.d	$a3, $sp, 288                   # 8-byte Folded Reload
	maskeqz	$a0, $a3, $a0
	move	$ra, $s5
.LBB25_159:                             #   in Loop: Header=BB25_70 Depth=2
	ld.w	$a2, $a2, 1120
	move	$s0, $s2
	beqz	$a2, .LBB25_164
# %bb.160:                              #   in Loop: Header=BB25_70 Depth=2
	ld.w	$a2, $s6, 44
	beqz	$a2, .LBB25_162
# %bb.161:                              #   in Loop: Header=BB25_70 Depth=2
	ori	$a3, $zero, 3
	bne	$a2, $a3, .LBB25_164
.LBB25_162:                             #   in Loop: Header=BB25_70 Depth=2
	ld.d	$a1, $sp, 472                   # 8-byte Folded Reload
	bnez	$a1, .LBB25_166
	b	.LBB25_167
.LBB25_163:                             #   in Loop: Header=BB25_70 Depth=2
	lu12i.w	$a0, 1
	move	$t6, $fp
	move	$t7, $s1
	move	$t8, $s3
	ld.w	$a3, $s6, 40
	bnez	$a3, .LBB25_181
	b	.LBB25_187
.LBB25_164:                             #   in Loop: Header=BB25_70 Depth=2
	ori	$a2, $zero, 1
	bne	$a1, $a2, .LBB25_167
# %bb.165:                              #   in Loop: Header=BB25_70 Depth=2
	ld.w	$a1, $s6, 44
	addi.d	$a1, $a1, -1
	sltui	$a1, $a1, 1
	ld.d	$a2, $sp, 472                   # 8-byte Folded Reload
	and	$a1, $a1, $a2
	beqz	$a1, .LBB25_167
.LBB25_166:                             #   in Loop: Header=BB25_70 Depth=2
	srai.d	$a3, $s0, 1
	ext.w.h	$a1, $t6
	srai.d	$t6, $a1, 1
	b	.LBB25_168
.LBB25_167:                             #   in Loop: Header=BB25_70 Depth=2
	move	$a3, $s0
.LBB25_168:                             # %.preheader1961
                                        #   in Loop: Header=BB25_70 Depth=2
	ldptr.d	$a1, $s6, 5784
	slli.d	$a0, $a0, 3
	ldx.d	$a2, $a1, $a0
	st.d	$a3, $sp, 328                   # 8-byte Folded Spill
	slli.d	$a3, $a3, 3
	ldx.d	$a2, $a2, $a3
	ldptr.d	$a4, $s6, 5776
	move	$fp, $t6
	ext.w.h	$a5, $t6
	addi.d	$a6, $a0, 8
	ldx.d	$a1, $a1, $a6
	ldx.d	$a0, $a4, $a0
	ldx.d	$a4, $a4, $a6
	slli.d	$a5, $a5, 3
	ldx.d	$a1, $a1, $a3
	ldx.d	$a0, $a0, $a3
	ldx.d	$a3, $a4, $a5
	ldx.d	$a2, $a2, $a5
	ldx.d	$a1, $a1, $a5
	ld.w	$a4, $a0, 0
	ld.w	$a3, $a3, 0
	ld.w	$a0, $a2, 0
	ld.w	$a1, $a1, 0
	add.d	$a2, $a4, $a3
	lu12i.w	$a3, 1
	ori	$a3, $a3, 1664
	ldx.wu	$a5, $s6, $a3
	addi.w	$a2, $a2, 1
	srai.d	$a3, $a2, 1
	ldptr.w	$a2, $s6, 5900
	addi.d	$a4, $a5, 1
	ld.w	$a6, $sp, 648
	ld.w	$a7, $sp, 584
	ori	$t0, $zero, 1
	sll.w	$a5, $t0, $a5
	addi.w	$t0, $t8, 0
	mul.d	$a6, $a6, $a0
	mul.d	$a7, $a7, $a1
	add.d	$a6, $a7, $a6
	add.d	$a6, $a6, $a5
	sra.w	$a6, $a6, $a4
	add.w	$a6, $a6, $a3
	srai.d	$a7, $a6, 63
	andn	$a6, $a6, $a7
	slt	$a7, $a6, $a2
	maskeqz	$a6, $a6, $a7
	masknez	$a7, $a2, $a7
	or	$t1, $a6, $a7
	slli.d	$a6, $t0, 5
	ld.d	$a7, $sp, 80                    # 8-byte Folded Reload
	add.d	$a6, $a7, $a6
	ld.w	$t0, $sp, 664
	ld.w	$t2, $sp, 600
	slli.d	$a7, $t7, 1
	stx.h	$t1, $a6, $a7
	mul.d	$t0, $t0, $a0
	mul.d	$t1, $t2, $a1
	add.d	$t0, $t1, $t0
	add.d	$t0, $t0, $a5
	sra.w	$t0, $t0, $a4
	add.w	$t0, $t0, $a3
	srai.d	$t1, $t0, 63
	andn	$t0, $t0, $t1
	slt	$t1, $t0, $a2
	maskeqz	$t0, $t0, $t1
	masknez	$t1, $a2, $t1
	or	$t1, $t0, $t1
	ld.w	$t2, $sp, 680
	ld.w	$t3, $sp, 616
	addi.d	$t0, $a6, 32
	stx.h	$t1, $t0, $a7
	mul.d	$t1, $t2, $a0
	mul.d	$t2, $t3, $a1
	add.d	$t1, $t2, $t1
	add.d	$t1, $t1, $a5
	sra.w	$t1, $t1, $a4
	add.w	$t1, $t1, $a3
	srai.d	$t2, $t1, 63
	andn	$t1, $t1, $t2
	slt	$t2, $t1, $a2
	maskeqz	$t1, $t1, $t2
	masknez	$t2, $a2, $t2
	or	$t2, $t1, $t2
	ld.w	$t3, $sp, 696
	ld.w	$t4, $sp, 632
	addi.d	$t1, $a6, 64
	stx.h	$t2, $t1, $a7
	mul.d	$t2, $t3, $a0
	mul.d	$t3, $t4, $a1
	add.d	$t2, $t3, $t2
	add.d	$t2, $t2, $a5
	sra.w	$t2, $t2, $a4
	add.w	$t2, $t2, $a3
	srai.d	$t3, $t2, 63
	ld.w	$t4, $sp, 652
	ld.w	$t5, $sp, 588
	andn	$t3, $t2, $t3
	addi.d	$t2, $a6, 96
	mul.d	$t4, $t4, $a0
	mul.d	$t5, $t5, $a1
	add.d	$t4, $t5, $t4
	add.d	$t4, $t4, $a5
	sra.w	$t4, $t4, $a4
	add.w	$t4, $t4, $a3
	srai.d	$t5, $t4, 63
	andn	$t4, $t4, $t5
	slt	$t5, $t4, $a2
	maskeqz	$t4, $t4, $t5
	masknez	$t5, $a2, $t5
	or	$t4, $t4, $t5
	ld.w	$t5, $sp, 668
	ld.w	$t6, $sp, 604
	move	$s2, $t7
	addi.d	$t7, $a7, 2
	stx.h	$t4, $a6, $t7
	mul.d	$t4, $t5, $a0
	mul.d	$t5, $t6, $a1
	add.d	$t4, $t5, $t4
	add.d	$t4, $t4, $a5
	sra.w	$t4, $t4, $a4
	add.w	$t4, $t4, $a3
	srai.d	$t5, $t4, 63
	andn	$t4, $t4, $t5
	slt	$t5, $t4, $a2
	maskeqz	$t4, $t4, $t5
	masknez	$t5, $a2, $t5
	ld.w	$t6, $sp, 684
	move	$s1, $t8
	ld.w	$t8, $sp, 620
	or	$t4, $t4, $t5
	stx.h	$t4, $t0, $t7
	mul.d	$t4, $t6, $a0
	mul.d	$t5, $t8, $a1
	add.d	$t4, $t5, $t4
	add.d	$t4, $t4, $a5
	sra.w	$t4, $t4, $a4
	add.w	$t4, $t4, $a3
	srai.d	$t5, $t4, 63
	andn	$t4, $t4, $t5
	slt	$t5, $t4, $a2
	maskeqz	$t4, $t4, $t5
	masknez	$t5, $a2, $t5
	ld.w	$t6, $sp, 700
	ld.w	$t8, $sp, 636
	or	$t4, $t4, $t5
	stx.h	$t4, $t1, $t7
	mul.d	$t4, $t6, $a0
	mul.d	$t5, $t8, $a1
	add.d	$t4, $t5, $t4
	add.d	$t4, $t4, $a5
	sra.w	$t4, $t4, $a4
	add.w	$t4, $t4, $a3
	srai.d	$t5, $t4, 63
	andn	$t4, $t4, $t5
	slt	$t5, $t4, $a2
	maskeqz	$t4, $t4, $t5
	masknez	$t5, $a2, $t5
	ld.w	$t6, $sp, 656
	ld.w	$t8, $sp, 592
	or	$t4, $t4, $t5
	stx.h	$t4, $t2, $t7
	mul.d	$t4, $t6, $a0
	mul.d	$t5, $t8, $a1
	add.d	$t4, $t5, $t4
	add.d	$t4, $t4, $a5
	sra.w	$t4, $t4, $a4
	add.w	$t4, $t4, $a3
	srai.d	$t5, $t4, 63
	andn	$t4, $t4, $t5
	slt	$t5, $t4, $a2
	maskeqz	$t4, $t4, $t5
	masknez	$t5, $a2, $t5
	or	$t4, $t4, $t5
	ld.w	$t5, $sp, 672
	ld.w	$t6, $sp, 608
	addi.d	$t7, $a7, 4
	stx.h	$t4, $a6, $t7
	mul.d	$t4, $t5, $a0
	mul.d	$t5, $t6, $a1
	add.d	$t4, $t5, $t4
	add.d	$t4, $t4, $a5
	sra.w	$t4, $t4, $a4
	add.w	$t4, $t4, $a3
	srai.d	$t5, $t4, 63
	andn	$t4, $t4, $t5
	slt	$t5, $t4, $a2
	maskeqz	$t4, $t4, $t5
	masknez	$t5, $a2, $t5
	ld.w	$t6, $sp, 688
	ld.w	$t8, $sp, 624
	or	$t4, $t4, $t5
	stx.h	$t4, $t0, $t7
	mul.d	$t4, $t6, $a0
	mul.d	$t5, $t8, $a1
	add.d	$t4, $t5, $t4
	add.d	$t4, $t4, $a5
	sra.w	$t4, $t4, $a4
	add.w	$t4, $t4, $a3
	srai.d	$t5, $t4, 63
	andn	$t4, $t4, $t5
	slt	$t5, $t4, $a2
	maskeqz	$t4, $t4, $t5
	masknez	$t5, $a2, $t5
	ld.w	$t6, $sp, 704
	ld.w	$t8, $sp, 640
	or	$t4, $t4, $t5
	stx.h	$t4, $t1, $t7
	mul.d	$t4, $t6, $a0
	mul.d	$t5, $t8, $a1
	move	$t8, $s1
	add.d	$t4, $t5, $t4
	add.d	$t4, $t4, $a5
	sra.w	$t4, $t4, $a4
	add.w	$t4, $t4, $a3
	srai.d	$t5, $t4, 63
	andn	$t4, $t4, $t5
	slt	$t5, $t4, $a2
	maskeqz	$t4, $t4, $t5
	masknez	$t5, $a2, $t5
	or	$t4, $t4, $t5
	slt	$t5, $t3, $a2
	maskeqz	$t3, $t3, $t5
	masknez	$t5, $a2, $t5
	stx.h	$t4, $t2, $t7
	move	$t7, $s2
	ld.w	$t4, $sp, 660
	ld.w	$t6, $sp, 596
	or	$t3, $t3, $t5
	stx.h	$t3, $t2, $a7
	mul.d	$t3, $t4, $a0
	mul.d	$t4, $t6, $a1
	add.d	$t3, $t4, $t3
	add.d	$t3, $t3, $a5
	sra.w	$t3, $t3, $a4
	add.w	$t3, $t3, $a3
	srai.d	$t4, $t3, 63
	andn	$t3, $t3, $t4
	slt	$t4, $t3, $a2
	maskeqz	$t3, $t3, $t4
	masknez	$t4, $a2, $t4
	or	$t3, $t3, $t4
	ld.w	$t4, $sp, 676
	ld.w	$t5, $sp, 612
	ori	$a7, $a7, 6
	stx.h	$t3, $a6, $a7
	mul.d	$a6, $t4, $a0
	mul.d	$t3, $t5, $a1
	add.d	$a6, $t3, $a6
	add.d	$a6, $a6, $a5
	sra.w	$a6, $a6, $a4
	add.w	$a6, $a6, $a3
	srai.d	$t3, $a6, 63
	andn	$a6, $a6, $t3
	slt	$t3, $a6, $a2
	maskeqz	$a6, $a6, $t3
	masknez	$t3, $a2, $t3
	ld.w	$t4, $sp, 692
	ld.w	$t5, $sp, 628
	or	$a6, $a6, $t3
	stx.h	$a6, $t0, $a7
	mul.d	$a6, $t4, $a0
	mul.d	$t0, $t5, $a1
	add.d	$a6, $t0, $a6
	add.d	$a6, $a6, $a5
	sra.w	$a6, $a6, $a4
	add.w	$a6, $a6, $a3
	srai.d	$t0, $a6, 63
	andn	$a6, $a6, $t0
	slt	$t0, $a6, $a2
	maskeqz	$a6, $a6, $t0
	masknez	$t0, $a2, $t0
	ld.w	$t3, $sp, 708
	ld.w	$t4, $sp, 644
	or	$a6, $a6, $t0
	stx.h	$a6, $t1, $a7
	mul.d	$a0, $t3, $a0
	mul.d	$a1, $t4, $a1
	add.d	$a0, $a1, $a0
	add.d	$a0, $a0, $a5
	move	$a5, $fp
	sra.w	$a0, $a0, $a4
	add.w	$a0, $a0, $a3
	srai.d	$a1, $a0, 63
	andn	$a0, $a0, $a1
	slt	$a1, $a0, $a2
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $a2, $a1
	or	$a0, $a0, $a1
	stx.h	$a0, $t2, $a7
	b	.LBB25_209
.LBB25_169:                             #   in Loop: Header=BB25_70 Depth=2
	move	$ra, $s5
	b	.LBB25_197
.LBB25_170:                             #   in Loop: Header=BB25_70 Depth=2
	move	$s8, $t3
	move	$s3, $t8
	move	$s1, $t7
	move	$fp, $t1
	slli.d	$a0, $t1, 4
	b	.LBB25_172
.LBB25_171:                             #   in Loop: Header=BB25_70 Depth=2
	move	$s8, $t3
	move	$s3, $t8
	move	$s1, $t7
	move	$fp, $t1
	add.d	$a0, $a1, $a0
	addi.d	$a0, $a0, -32
.LBB25_172:                             #   in Loop: Header=BB25_70 Depth=2
	ldx.d	$a1, $s4, $s6
	ldx.d	$a1, $a1, $s7
	ld.h	$a2, $a1, 0
	ld.h	$a3, $a1, 2
	ld.d	$a1, $sp, 320                   # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	alsl.w	$a2, $ra, $a2, 4
	add.w	$a3, $a0, $a3
	addi.d	$a5, $sp, 648
	move	$a0, $s2
	ld.d	$a4, $sp, 368                   # 8-byte Folded Reload
	move	$s4, $ra
	pcaddu18i	$ra, %call36(get_block)
	jirl	$ra, $ra, 0
	move	$ra, $s4
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ldx.d	$a0, $a0, $s5
	ld.d	$a0, $a0, 8
	ldx.d	$a1, $a0, $s6
	move	$t1, $fp
	move	$t7, $s1
	move	$t8, $s3
	move	$t3, $s8
.LBB25_173:                             #   in Loop: Header=BB25_70 Depth=2
	ldx.b	$a0, $a1, $ra
	ld.d	$t6, $sp, 336                   # 8-byte Folded Reload
	bltz	$a0, .LBB25_177
# %bb.174:                              #   in Loop: Header=BB25_70 Depth=2
	ld.d	$a0, $sp, 472                   # 8-byte Folded Reload
	beqz	$a0, .LBB25_178
# %bb.175:                              #   in Loop: Header=BB25_70 Depth=2
	ld.d	$a0, $sp, 368                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 76
	slli.d	$a0, $a0, 3
	ld.d	$a1, $sp, 432                   # 8-byte Folded Reload
	slli.d	$a1, $a1, 4
	ld.d	$a2, $sp, 176                   # 8-byte Folded Reload
	bnez	$a2, .LBB25_179
# %bb.176:                              #   in Loop: Header=BB25_70 Depth=2
	move	$s1, $t8
	move	$fp, $t7
	add.d	$a0, $a0, $a1
	b	.LBB25_180
.LBB25_177:                             #   in Loop: Header=BB25_70 Depth=2
	move	$s5, $ra
	ld.d	$s6, $sp, 368                   # 8-byte Folded Reload
	lu12i.w	$a0, 1
	ld.d	$s7, $sp, 360                   # 8-byte Folded Reload
	ld.w	$a3, $s6, 40
	bnez	$a3, .LBB25_181
	b	.LBB25_187
.LBB25_178:                             #   in Loop: Header=BB25_70 Depth=2
	move	$s1, $t8
	move	$fp, $t7
	slli.d	$a0, $t1, 4
	b	.LBB25_180
.LBB25_179:                             #   in Loop: Header=BB25_70 Depth=2
	move	$s1, $t8
	move	$fp, $t7
	add.d	$a0, $a1, $a0
	addi.d	$a0, $a0, -32
.LBB25_180:                             #   in Loop: Header=BB25_70 Depth=2
	ldx.d	$a1, $t3, $s6
	ldx.d	$a1, $a1, $s7
	ld.h	$a2, $a1, 0
	ld.h	$a3, $a1, 2
	ld.d	$a1, $sp, 344                   # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	move	$s5, $ra
	alsl.w	$a2, $ra, $a2, 4
	add.w	$a3, $a0, $a3
	addi.d	$a5, $sp, 584
	ld.d	$a0, $sp, 456                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 368                   # 8-byte Folded Reload
	move	$a4, $s6
	pcaddu18i	$ra, %call36(get_block)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 1
	ld.d	$s7, $sp, 360                   # 8-byte Folded Reload
	ld.d	$t6, $sp, 336                   # 8-byte Folded Reload
	move	$t7, $fp
	move	$t8, $s1
	ld.w	$a3, $s6, 40
	beqz	$a3, .LBB25_187
.LBB25_181:                             # %.thread1846
                                        #   in Loop: Header=BB25_70 Depth=2
	ld.d	$a1, $sp, 408                   # 8-byte Folded Reload
	bnez	$a1, .LBB25_187
# %bb.182:                              #   in Loop: Header=BB25_70 Depth=2
	ldptr.w	$a0, $s6, 5800
	move	$ra, $s5
	beqz	$a0, .LBB25_198
# %bb.183:                              #   in Loop: Header=BB25_70 Depth=2
	ld.d	$a0, $sp, 248                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(active_pps)
	ld.w	$a1, $a0, 1120
	move	$s0, $s2
	beqz	$a1, .LBB25_199
# %bb.184:                              #   in Loop: Header=BB25_70 Depth=2
	ld.w	$a1, $s6, 44
	beqz	$a1, .LBB25_186
# %bb.185:                              #   in Loop: Header=BB25_70 Depth=2
	ori	$a2, $zero, 3
	bne	$a1, $a2, .LBB25_199
.LBB25_186:                             #   in Loop: Header=BB25_70 Depth=2
	move	$a2, $s0
	ld.d	$a0, $sp, 472                   # 8-byte Folded Reload
	bnez	$a0, .LBB25_201
	b	.LBB25_202
.LBB25_187:                             #   in Loop: Header=BB25_70 Depth=2
	ori	$a0, $a0, 1704
	ldx.w	$a0, $s6, $a0
	move	$ra, $s5
	beqz	$a3, .LBB25_194
# %bb.188:                              #   in Loop: Header=BB25_70 Depth=2
	ori	$a1, $zero, 1
	ld.d	$a2, $sp, 408                   # 8-byte Folded Reload
	bne	$a2, $a1, .LBB25_194
# %bb.189:                              #   in Loop: Header=BB25_70 Depth=2
	beqz	$a0, .LBB25_203
# %bb.190:                              #   in Loop: Header=BB25_70 Depth=2
	ld.d	$a0, $sp, 248                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(active_pps)
	ld.w	$a1, $a0, 1120
	move	$s0, $s2
	beqz	$a1, .LBB25_205
# %bb.191:                              #   in Loop: Header=BB25_70 Depth=2
	ld.w	$a1, $s6, 44
	beqz	$a1, .LBB25_193
# %bb.192:                              #   in Loop: Header=BB25_70 Depth=2
	ori	$a2, $zero, 3
	bne	$a1, $a2, .LBB25_205
.LBB25_193:                             #   in Loop: Header=BB25_70 Depth=2
	ld.d	$a0, $sp, 472                   # 8-byte Folded Reload
	bnez	$a0, .LBB25_207
	b	.LBB25_208
.LBB25_194:                             # %.critedge
                                        #   in Loop: Header=BB25_70 Depth=2
	beqz	$a0, .LBB25_197
# %bb.195:                              #   in Loop: Header=BB25_70 Depth=2
	ld.d	$a0, $sp, 248                   # 8-byte Folded Reload
	ld.d	$a2, $a0, %pc_lo12(active_pps)
	ld.w	$a1, $a2, 1124
	addi.d	$a0, $a1, -2
	sltui	$a0, $a0, 1
	ld.d	$a4, $sp, 288                   # 8-byte Folded Reload
	maskeqz	$a0, $a4, $a0
	bnez	$s0, .LBB25_159
# %bb.196:                              #   in Loop: Header=BB25_70 Depth=2
	sltui	$a3, $a3, 1
	masknez	$t6, $t6, $a3
	b	.LBB25_159
.LBB25_197:                             # %.preheader1970
                                        #   in Loop: Header=BB25_70 Depth=2
	ld.w	$a0, $sp, 648
	ld.w	$a1, $sp, 584
	addi.w	$a2, $t8, 0
	add.d	$a0, $a0, $a1
	addi.d	$a0, $a0, 1
	srli.d	$a0, $a0, 1
	slli.d	$a1, $a2, 5
	ld.w	$a3, $sp, 652
	ld.w	$a4, $sp, 588
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	add.d	$a1, $a2, $a1
	slli.d	$a2, $t7, 1
	stx.h	$a0, $a1, $a2
	add.d	$a0, $a3, $a4
	addi.d	$a0, $a0, 1
	ld.w	$a4, $sp, 656
	ld.w	$a5, $sp, 592
	srli.d	$a0, $a0, 1
	addi.d	$a3, $a2, 2
	stx.h	$a0, $a1, $a3
	add.d	$a0, $a4, $a5
	addi.d	$a0, $a0, 1
	srli.d	$a4, $a0, 1
	addi.d	$a0, $a2, 4
	ld.w	$a5, $sp, 660
	ld.w	$a6, $sp, 596
	ld.w	$a7, $sp, 664
	ld.w	$t0, $sp, 600
	stx.h	$a4, $a1, $a0
	add.d	$a5, $a5, $a6
	ori	$a4, $a2, 6
	add.d	$a6, $a7, $t0
	addi.d	$a6, $a6, 1
	ld.w	$a7, $sp, 668
	ld.w	$t0, $sp, 604
	srli.d	$a6, $a6, 1
	addi.d	$t1, $a1, 32
	stx.h	$a6, $t1, $a2
	add.d	$a6, $a7, $t0
	ld.w	$a7, $sp, 672
	ld.w	$t0, $sp, 608
	addi.d	$a6, $a6, 1
	srli.d	$a6, $a6, 1
	stx.h	$a6, $t1, $a3
	add.d	$a6, $a7, $t0
	ld.w	$a7, $sp, 676
	ld.w	$t0, $sp, 612
	addi.d	$a6, $a6, 1
	srli.d	$a6, $a6, 1
	stx.h	$a6, $t1, $a0
	add.d	$a6, $a7, $t0
	ld.w	$a7, $sp, 680
	ld.w	$t0, $sp, 616
	addi.d	$a6, $a6, 1
	srli.d	$a6, $a6, 1
	stx.h	$a6, $t1, $a4
	add.d	$a6, $a7, $t0
	addi.d	$a6, $a6, 1
	ld.w	$a7, $sp, 684
	ld.w	$t0, $sp, 620
	srli.d	$a6, $a6, 1
	addi.d	$t1, $a1, 64
	stx.h	$a6, $t1, $a2
	add.d	$a6, $a7, $t0
	ld.w	$a7, $sp, 688
	ld.w	$t0, $sp, 624
	addi.d	$a6, $a6, 1
	srli.d	$a6, $a6, 1
	stx.h	$a6, $t1, $a3
	add.d	$a6, $a7, $t0
	ld.w	$a7, $sp, 692
	ld.w	$t0, $sp, 628
	addi.d	$a6, $a6, 1
	srli.d	$a6, $a6, 1
	stx.h	$a6, $t1, $a0
	add.d	$a6, $a7, $t0
	addi.d	$a6, $a6, 1
	srli.d	$a6, $a6, 1
	stx.h	$a6, $t1, $a4
	ld.w	$a6, $sp, 696
	ld.w	$a7, $sp, 632
	addi.d	$a5, $a5, 1
	srli.d	$a5, $a5, 1
	stx.h	$a5, $a1, $a4
	add.d	$a5, $a6, $a7
	addi.d	$a5, $a5, 1
	ld.w	$a6, $sp, 700
	ld.w	$a7, $sp, 636
	srli.d	$a5, $a5, 1
	addi.d	$a1, $a1, 96
	stx.h	$a5, $a1, $a2
	add.d	$a2, $a6, $a7
	ld.w	$a5, $sp, 704
	ld.w	$a6, $sp, 640
	addi.d	$a2, $a2, 1
	srli.d	$a2, $a2, 1
	stx.h	$a2, $a1, $a3
	add.d	$a2, $a5, $a6
	ld.w	$a3, $sp, 708
	ld.w	$a5, $sp, 644
	addi.d	$a2, $a2, 1
	srli.d	$a2, $a2, 1
	stx.h	$a2, $a1, $a0
	add.d	$a0, $a3, $a5
	addi.d	$a0, $a0, 1
	srli.d	$a0, $a0, 1
	stx.h	$a0, $a1, $a4
	move	$s0, $s2
	st.d	$s2, $sp, 328                   # 8-byte Folded Spill
	move	$a5, $t6
	b	.LBB25_209
.LBB25_198:                             # %.preheader1956.preheader
                                        #   in Loop: Header=BB25_70 Depth=2
	st.d	$zero, $sp, 408                 # 8-byte Folded Spill
	addi.w	$a0, $t8, 0
	ld.h	$a1, $sp, 648
	slli.d	$a0, $a0, 5
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	add.d	$a0, $a2, $a0
	slli.d	$a2, $t7, 1
	ld.h	$a3, $sp, 652
	stx.h	$a1, $a0, $a2
	addi.d	$a1, $a2, 2
	ld.h	$a4, $sp, 656
	stx.h	$a3, $a0, $a1
	ld.h	$a3, $sp, 660
	addi.d	$a5, $a2, 4
	stx.h	$a4, $a0, $a5
	ori	$a4, $a2, 6
	stx.h	$a3, $a0, $a4
	ld.h	$a3, $sp, 664
	addi.d	$a6, $a0, 32
	ld.h	$a7, $sp, 668
	ld.h	$t0, $sp, 672
	ld.h	$t1, $sp, 676
	stx.h	$a3, $a6, $a2
	stx.h	$a7, $a6, $a1
	stx.h	$t0, $a6, $a5
	stx.h	$t1, $a6, $a4
	ld.h	$a3, $sp, 680
	addi.d	$a6, $a0, 64
	ld.h	$a7, $sp, 684
	ld.h	$t0, $sp, 688
	ld.h	$t1, $sp, 692
	stx.h	$a3, $a6, $a2
	stx.h	$a7, $a6, $a1
	stx.h	$t0, $a6, $a5
	stx.h	$t1, $a6, $a4
	ld.h	$a3, $sp, 696
	addi.d	$a0, $a0, 96
	ld.h	$a6, $sp, 700
	ld.h	$a7, $sp, 704
	ld.h	$t0, $sp, 708
	stx.h	$a3, $a0, $a2
	stx.h	$a6, $a0, $a1
	stx.h	$a7, $a0, $a5
	move	$a5, $t6
	stx.h	$t0, $a0, $a4
	b	.LBB25_204
.LBB25_199:                             #   in Loop: Header=BB25_70 Depth=2
	ld.w	$a0, $a0, 1124
	move	$a2, $s0
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB25_202
# %bb.200:                              #   in Loop: Header=BB25_70 Depth=2
	ld.w	$a0, $s6, 44
	addi.d	$a0, $a0, -1
	sltui	$a0, $a0, 1
	ld.d	$a1, $sp, 472                   # 8-byte Folded Reload
	and	$a0, $a0, $a1
	move	$a2, $s0
	beqz	$a0, .LBB25_202
.LBB25_201:                             #   in Loop: Header=BB25_70 Depth=2
	srai.d	$a2, $s0, 1
.LBB25_202:                             # %.preheader1957
                                        #   in Loop: Header=BB25_70 Depth=2
	ldptr.d	$a0, $s6, 5768
	ldptr.d	$a1, $s6, 5776
	ld.d	$a0, $a0, 0
	st.d	$zero, $sp, 408                 # 8-byte Folded Spill
	st.d	$a2, $sp, 328                   # 8-byte Folded Spill
	slli.d	$a2, $a2, 3
	ld.d	$a1, $a1, 0
	ldx.d	$a0, $a0, $a2
	ld.d	$a2, $sp, 472                   # 8-byte Folded Reload
	sra.w	$a2, $s0, $a2
	slli.d	$a2, $a2, 3
	ldx.d	$a2, $a1, $a2
	ld.w	$a1, $a0, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1664
	ldx.wu	$a3, $s6, $a0
	ld.w	$a2, $a2, 0
	ldptr.w	$a0, $s6, 5900
	ld.w	$a5, $sp, 648
	addi.d	$a4, $a3, -1
	ori	$a6, $zero, 1
	sll.w	$a4, $a6, $a4
	addi.w	$a6, $t8, 0
	mul.d	$a5, $a5, $a1
	add.d	$a5, $a4, $a5
	sra.w	$a5, $a5, $a3
	add.w	$a5, $a5, $a2
	srai.d	$a7, $a5, 63
	andn	$a5, $a5, $a7
	slt	$a7, $a5, $a0
	maskeqz	$a5, $a5, $a7
	masknez	$a7, $a0, $a7
	or	$a7, $a5, $a7
	slli.d	$a5, $a6, 5
	ld.w	$t0, $sp, 652
	ld.d	$a6, $sp, 80                    # 8-byte Folded Reload
	add.d	$a5, $a6, $a5
	slli.d	$a6, $t7, 1
	stx.h	$a7, $a5, $a6
	mul.d	$a7, $t0, $a1
	add.d	$a7, $a4, $a7
	sra.w	$a7, $a7, $a3
	add.w	$a7, $a7, $a2
	srai.d	$t0, $a7, 63
	andn	$a7, $a7, $t0
	slt	$t0, $a7, $a0
	maskeqz	$a7, $a7, $t0
	masknez	$t0, $a0, $t0
	ld.w	$t1, $sp, 656
	or	$t0, $a7, $t0
	addi.d	$a7, $a6, 2
	stx.h	$t0, $a5, $a7
	mul.d	$t0, $t1, $a1
	add.d	$t0, $a4, $t0
	sra.w	$t0, $t0, $a3
	add.w	$t0, $t0, $a2
	srai.d	$t1, $t0, 63
	andn	$t0, $t0, $t1
	slt	$t1, $t0, $a0
	maskeqz	$t0, $t0, $t1
	masknez	$t1, $a0, $t1
	ld.w	$t2, $sp, 660
	or	$t1, $t0, $t1
	addi.d	$t0, $a6, 4
	stx.h	$t1, $a5, $t0
	mul.d	$t1, $t2, $a1
	add.d	$t1, $a4, $t1
	sra.w	$t1, $t1, $a3
	add.w	$t1, $t1, $a2
	srai.d	$t2, $t1, 63
	andn	$t1, $t1, $t2
	slt	$t2, $t1, $a0
	maskeqz	$t1, $t1, $t2
	masknez	$t2, $a0, $t2
	ld.w	$t3, $sp, 664
	or	$t2, $t1, $t2
	ori	$t1, $a6, 6
	stx.h	$t2, $a5, $t1
	mul.d	$t2, $t3, $a1
	add.d	$t2, $a4, $t2
	sra.w	$t2, $t2, $a3
	add.w	$t2, $t2, $a2
	srai.d	$t3, $t2, 63
	andn	$t2, $t2, $t3
	slt	$t3, $t2, $a0
	maskeqz	$t2, $t2, $t3
	masknez	$t3, $a0, $t3
	ld.w	$t4, $sp, 668
	or	$t2, $t2, $t3
	addi.d	$t3, $a5, 32
	stx.h	$t2, $t3, $a6
	mul.d	$t2, $t4, $a1
	add.d	$t2, $a4, $t2
	sra.w	$t2, $t2, $a3
	add.w	$t2, $t2, $a2
	srai.d	$t4, $t2, 63
	andn	$t2, $t2, $t4
	slt	$t4, $t2, $a0
	maskeqz	$t2, $t2, $t4
	ld.w	$t5, $sp, 672
	masknez	$t4, $a0, $t4
	or	$t2, $t2, $t4
	stx.h	$t2, $t3, $a7
	mul.d	$t2, $t5, $a1
	add.d	$t2, $a4, $t2
	sra.w	$t2, $t2, $a3
	add.w	$t2, $t2, $a2
	srai.d	$t4, $t2, 63
	andn	$t2, $t2, $t4
	slt	$t4, $t2, $a0
	maskeqz	$t2, $t2, $t4
	ld.w	$t5, $sp, 676
	masknez	$t4, $a0, $t4
	or	$t2, $t2, $t4
	stx.h	$t2, $t3, $t0
	mul.d	$t2, $t5, $a1
	add.d	$t2, $a4, $t2
	sra.w	$t2, $t2, $a3
	add.w	$t2, $t2, $a2
	srai.d	$t4, $t2, 63
	andn	$t2, $t2, $t4
	slt	$t4, $t2, $a0
	maskeqz	$t2, $t2, $t4
	ld.w	$t5, $sp, 680
	masknez	$t4, $a0, $t4
	or	$t2, $t2, $t4
	stx.h	$t2, $t3, $t1
	mul.d	$t2, $t5, $a1
	add.d	$t2, $a4, $t2
	sra.w	$t2, $t2, $a3
	add.w	$t2, $t2, $a2
	srai.d	$t3, $t2, 63
	andn	$t2, $t2, $t3
	slt	$t3, $t2, $a0
	maskeqz	$t2, $t2, $t3
	masknez	$t3, $a0, $t3
	ld.w	$t4, $sp, 684
	or	$t2, $t2, $t3
	addi.d	$t3, $a5, 64
	stx.h	$t2, $t3, $a6
	mul.d	$t2, $t4, $a1
	add.d	$t2, $a4, $t2
	sra.w	$t2, $t2, $a3
	add.w	$t2, $t2, $a2
	srai.d	$t4, $t2, 63
	andn	$t2, $t2, $t4
	slt	$t4, $t2, $a0
	maskeqz	$t2, $t2, $t4
	ld.w	$t5, $sp, 688
	masknez	$t4, $a0, $t4
	or	$t2, $t2, $t4
	stx.h	$t2, $t3, $a7
	mul.d	$t2, $t5, $a1
	add.d	$t2, $a4, $t2
	sra.w	$t2, $t2, $a3
	add.w	$t2, $t2, $a2
	srai.d	$t4, $t2, 63
	andn	$t2, $t2, $t4
	slt	$t4, $t2, $a0
	maskeqz	$t2, $t2, $t4
	ld.w	$t5, $sp, 692
	masknez	$t4, $a0, $t4
	or	$t2, $t2, $t4
	stx.h	$t2, $t3, $t0
	mul.d	$t2, $t5, $a1
	add.d	$t2, $a4, $t2
	sra.w	$t2, $t2, $a3
	add.w	$t2, $t2, $a2
	srai.d	$t4, $t2, 63
	andn	$t2, $t2, $t4
	slt	$t4, $t2, $a0
	maskeqz	$t2, $t2, $t4
	ld.w	$t5, $sp, 696
	masknez	$t4, $a0, $t4
	or	$t2, $t2, $t4
	stx.h	$t2, $t3, $t1
	mul.d	$t2, $t5, $a1
	add.d	$t2, $a4, $t2
	sra.w	$t2, $t2, $a3
	add.w	$t2, $t2, $a2
	srai.d	$t3, $t2, 63
	andn	$t2, $t2, $t3
	slt	$t3, $t2, $a0
	maskeqz	$t2, $t2, $t3
	masknez	$t3, $a0, $t3
	ld.w	$t4, $sp, 700
	or	$t2, $t2, $t3
	addi.d	$a5, $a5, 96
	stx.h	$t2, $a5, $a6
	mul.d	$a6, $t4, $a1
	add.d	$a6, $a4, $a6
	sra.w	$a6, $a6, $a3
	add.w	$a6, $a6, $a2
	srai.d	$t2, $a6, 63
	andn	$a6, $a6, $t2
	slt	$t2, $a6, $a0
	maskeqz	$a6, $a6, $t2
	ld.w	$t3, $sp, 704
	masknez	$t2, $a0, $t2
	or	$a6, $a6, $t2
	stx.h	$a6, $a5, $a7
	mul.d	$a6, $t3, $a1
	add.d	$a6, $a4, $a6
	sra.w	$a6, $a6, $a3
	add.w	$a6, $a6, $a2
	srai.d	$a7, $a6, 63
	andn	$a6, $a6, $a7
	slt	$a7, $a6, $a0
	maskeqz	$a6, $a6, $a7
	ld.w	$t2, $sp, 708
	masknez	$a7, $a0, $a7
	or	$a6, $a6, $a7
	stx.h	$a6, $a5, $t0
	mul.d	$a1, $t2, $a1
	add.d	$a1, $a4, $a1
	sra.w	$a1, $a1, $a3
	add.w	$a1, $a1, $a2
	srai.d	$a2, $a1, 63
	andn	$a1, $a1, $a2
	slt	$a2, $a1, $a0
	maskeqz	$a1, $a1, $a2
	masknez	$a0, $a0, $a2
	or	$a0, $a1, $a0
	stx.h	$a0, $a5, $t1
	move	$a5, $t6
	b	.LBB25_209
.LBB25_203:                             # %.preheader1958.preheader
                                        #   in Loop: Header=BB25_70 Depth=2
	addi.w	$a0, $t8, 0
	ld.h	$a1, $sp, 584
	slli.d	$a0, $a0, 5
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	add.d	$a0, $a2, $a0
	slli.d	$a2, $t7, 1
	ld.h	$a3, $sp, 588
	stx.h	$a1, $a0, $a2
	addi.d	$a1, $a2, 2
	ld.h	$a4, $sp, 592
	stx.h	$a3, $a0, $a1
	ld.h	$a3, $sp, 596
	addi.d	$a5, $a2, 4
	stx.h	$a4, $a0, $a5
	ori	$a4, $a2, 6
	stx.h	$a3, $a0, $a4
	ld.h	$a3, $sp, 600
	addi.d	$a6, $a0, 32
	ld.h	$a7, $sp, 604
	ld.h	$t0, $sp, 608
	ld.h	$t1, $sp, 612
	stx.h	$a3, $a6, $a2
	stx.h	$a7, $a6, $a1
	stx.h	$t0, $a6, $a5
	stx.h	$t1, $a6, $a4
	ld.h	$a3, $sp, 616
	addi.d	$a6, $a0, 64
	ld.h	$a7, $sp, 620
	ld.h	$t0, $sp, 624
	ld.h	$t1, $sp, 628
	stx.h	$a3, $a6, $a2
	stx.h	$a7, $a6, $a1
	stx.h	$t0, $a6, $a5
	stx.h	$t1, $a6, $a4
	ld.h	$a3, $sp, 632
	addi.d	$a0, $a0, 96
	ld.h	$a6, $sp, 636
	ld.h	$a7, $sp, 640
	ld.h	$t0, $sp, 644
	stx.h	$a3, $a0, $a2
	stx.h	$a6, $a0, $a1
	stx.h	$a7, $a0, $a5
	move	$a5, $t6
	stx.h	$t0, $a0, $a4
	ori	$a0, $zero, 1
	st.d	$a0, $sp, 408                   # 8-byte Folded Spill
.LBB25_204:                             # %.loopexit1965
                                        #   in Loop: Header=BB25_70 Depth=2
	move	$s0, $s2
	st.d	$s2, $sp, 328                   # 8-byte Folded Spill
	b	.LBB25_209
.LBB25_205:                             #   in Loop: Header=BB25_70 Depth=2
	ld.w	$a0, $a0, 1124
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB25_208
# %bb.206:                              #   in Loop: Header=BB25_70 Depth=2
	ld.w	$a0, $s6, 44
	addi.d	$a0, $a0, -1
	sltui	$a0, $a0, 1
	ld.d	$a1, $sp, 472                   # 8-byte Folded Reload
	and	$a0, $a0, $a1
	beqz	$a0, .LBB25_208
.LBB25_207:                             #   in Loop: Header=BB25_70 Depth=2
	ext.w.h	$a0, $t6
	srai.d	$t6, $a0, 1
.LBB25_208:                             # %.preheader1959
                                        #   in Loop: Header=BB25_70 Depth=2
	ldptr.d	$a0, $s6, 5768
	ldptr.d	$a1, $s6, 5776
	ld.d	$a0, $a0, 8
	ext.w.h	$a2, $t6
	slli.d	$a2, $a2, 3
	ld.d	$a1, $a1, 8
	ldx.d	$a0, $a0, $a2
	ld.d	$a2, $sp, 472                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 456                   # 8-byte Folded Reload
	sra.w	$a2, $a3, $a2
	slli.d	$a2, $a2, 3
	ldx.d	$a2, $a1, $a2
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1664
	ldx.wu	$a1, $s6, $a1
	ld.w	$a3, $a0, 0
	ld.w	$a2, $a2, 0
	ldptr.w	$a0, $s6, 5900
	addi.d	$a4, $a1, -1
	ld.w	$a5, $sp, 584
	ori	$a7, $zero, 1
	ori	$a6, $zero, 1
	st.d	$a6, $sp, 408                   # 8-byte Folded Spill
	sll.w	$a4, $a7, $a4
	addi.w	$a6, $t8, 0
	mul.d	$a5, $a5, $a3
	add.d	$a5, $a4, $a5
	sra.w	$a5, $a5, $a1
	add.w	$a5, $a5, $a2
	srai.d	$a7, $a5, 63
	andn	$a5, $a5, $a7
	slt	$a7, $a5, $a0
	maskeqz	$a5, $a5, $a7
	masknez	$a7, $a0, $a7
	or	$a7, $a5, $a7
	slli.d	$a5, $a6, 5
	ld.w	$t0, $sp, 588
	ld.d	$a6, $sp, 80                    # 8-byte Folded Reload
	add.d	$a5, $a6, $a5
	slli.d	$a6, $t7, 1
	stx.h	$a7, $a5, $a6
	mul.d	$a7, $t0, $a3
	add.d	$a7, $a4, $a7
	sra.w	$a7, $a7, $a1
	add.w	$a7, $a7, $a2
	srai.d	$t0, $a7, 63
	andn	$a7, $a7, $t0
	slt	$t0, $a7, $a0
	maskeqz	$a7, $a7, $t0
	masknez	$t0, $a0, $t0
	ld.w	$t1, $sp, 592
	or	$t0, $a7, $t0
	addi.d	$a7, $a6, 2
	stx.h	$t0, $a5, $a7
	mul.d	$t0, $t1, $a3
	add.d	$t0, $a4, $t0
	sra.w	$t0, $t0, $a1
	add.w	$t0, $t0, $a2
	srai.d	$t1, $t0, 63
	andn	$t0, $t0, $t1
	slt	$t1, $t0, $a0
	maskeqz	$t0, $t0, $t1
	masknez	$t1, $a0, $t1
	ld.w	$t2, $sp, 596
	or	$t1, $t0, $t1
	addi.d	$t0, $a6, 4
	stx.h	$t1, $a5, $t0
	mul.d	$t1, $t2, $a3
	add.d	$t1, $a4, $t1
	sra.w	$t1, $t1, $a1
	add.w	$t1, $t1, $a2
	srai.d	$t2, $t1, 63
	andn	$t1, $t1, $t2
	slt	$t2, $t1, $a0
	maskeqz	$t1, $t1, $t2
	masknez	$t2, $a0, $t2
	ld.w	$t3, $sp, 600
	or	$t2, $t1, $t2
	ori	$t1, $a6, 6
	stx.h	$t2, $a5, $t1
	mul.d	$t2, $t3, $a3
	add.d	$t2, $a4, $t2
	sra.w	$t2, $t2, $a1
	add.w	$t2, $t2, $a2
	srai.d	$t3, $t2, 63
	andn	$t2, $t2, $t3
	slt	$t3, $t2, $a0
	maskeqz	$t2, $t2, $t3
	masknez	$t3, $a0, $t3
	ld.w	$t4, $sp, 604
	or	$t2, $t2, $t3
	addi.d	$t3, $a5, 32
	stx.h	$t2, $t3, $a6
	mul.d	$t2, $t4, $a3
	add.d	$t2, $a4, $t2
	sra.w	$t2, $t2, $a1
	add.w	$t2, $t2, $a2
	srai.d	$t4, $t2, 63
	andn	$t2, $t2, $t4
	slt	$t4, $t2, $a0
	maskeqz	$t2, $t2, $t4
	ld.w	$t5, $sp, 608
	masknez	$t4, $a0, $t4
	or	$t2, $t2, $t4
	stx.h	$t2, $t3, $a7
	mul.d	$t2, $t5, $a3
	add.d	$t2, $a4, $t2
	sra.w	$t2, $t2, $a1
	add.w	$t2, $t2, $a2
	srai.d	$t4, $t2, 63
	andn	$t2, $t2, $t4
	slt	$t4, $t2, $a0
	maskeqz	$t2, $t2, $t4
	ld.w	$t5, $sp, 612
	masknez	$t4, $a0, $t4
	or	$t2, $t2, $t4
	stx.h	$t2, $t3, $t0
	mul.d	$t2, $t5, $a3
	add.d	$t2, $a4, $t2
	sra.w	$t2, $t2, $a1
	add.w	$t2, $t2, $a2
	srai.d	$t4, $t2, 63
	andn	$t2, $t2, $t4
	slt	$t4, $t2, $a0
	maskeqz	$t2, $t2, $t4
	ld.w	$t5, $sp, 616
	masknez	$t4, $a0, $t4
	or	$t2, $t2, $t4
	stx.h	$t2, $t3, $t1
	mul.d	$t2, $t5, $a3
	add.d	$t2, $a4, $t2
	sra.w	$t2, $t2, $a1
	add.w	$t2, $t2, $a2
	srai.d	$t3, $t2, 63
	andn	$t2, $t2, $t3
	slt	$t3, $t2, $a0
	maskeqz	$t2, $t2, $t3
	masknez	$t3, $a0, $t3
	ld.w	$t4, $sp, 620
	or	$t2, $t2, $t3
	addi.d	$t3, $a5, 64
	stx.h	$t2, $t3, $a6
	mul.d	$t2, $t4, $a3
	add.d	$t2, $a4, $t2
	sra.w	$t2, $t2, $a1
	add.w	$t2, $t2, $a2
	srai.d	$t4, $t2, 63
	andn	$t2, $t2, $t4
	slt	$t4, $t2, $a0
	maskeqz	$t2, $t2, $t4
	ld.w	$t5, $sp, 624
	masknez	$t4, $a0, $t4
	or	$t2, $t2, $t4
	stx.h	$t2, $t3, $a7
	mul.d	$t2, $t5, $a3
	add.d	$t2, $a4, $t2
	sra.w	$t2, $t2, $a1
	add.w	$t2, $t2, $a2
	srai.d	$t4, $t2, 63
	andn	$t2, $t2, $t4
	slt	$t4, $t2, $a0
	maskeqz	$t2, $t2, $t4
	ld.w	$t5, $sp, 628
	masknez	$t4, $a0, $t4
	or	$t2, $t2, $t4
	stx.h	$t2, $t3, $t0
	mul.d	$t2, $t5, $a3
	add.d	$t2, $a4, $t2
	sra.w	$t2, $t2, $a1
	add.w	$t2, $t2, $a2
	srai.d	$t4, $t2, 63
	andn	$t2, $t2, $t4
	slt	$t4, $t2, $a0
	maskeqz	$t2, $t2, $t4
	ld.w	$t5, $sp, 632
	masknez	$t4, $a0, $t4
	or	$t2, $t2, $t4
	stx.h	$t2, $t3, $t1
	mul.d	$t2, $t5, $a3
	add.d	$t2, $a4, $t2
	sra.w	$t2, $t2, $a1
	add.w	$t2, $t2, $a2
	srai.d	$t3, $t2, 63
	andn	$t2, $t2, $t3
	slt	$t3, $t2, $a0
	maskeqz	$t2, $t2, $t3
	masknez	$t3, $a0, $t3
	ld.w	$t4, $sp, 636
	or	$t2, $t2, $t3
	addi.d	$a5, $a5, 96
	stx.h	$t2, $a5, $a6
	mul.d	$a6, $t4, $a3
	add.d	$a6, $a4, $a6
	sra.w	$a6, $a6, $a1
	add.w	$a6, $a6, $a2
	srai.d	$t2, $a6, 63
	andn	$a6, $a6, $t2
	slt	$t2, $a6, $a0
	maskeqz	$a6, $a6, $t2
	ld.w	$t3, $sp, 640
	masknez	$t2, $a0, $t2
	or	$a6, $a6, $t2
	stx.h	$a6, $a5, $a7
	mul.d	$a6, $t3, $a3
	add.d	$a6, $a4, $a6
	sra.w	$a6, $a6, $a1
	add.w	$a6, $a6, $a2
	srai.d	$a7, $a6, 63
	andn	$a6, $a6, $a7
	slt	$a7, $a6, $a0
	maskeqz	$a6, $a6, $a7
	ld.w	$t2, $sp, 644
	masknez	$a7, $a0, $a7
	or	$a6, $a6, $a7
	stx.h	$a6, $a5, $t0
	mul.d	$a3, $t2, $a3
	add.d	$a3, $a4, $a3
	sra.w	$a1, $a3, $a1
	add.w	$a1, $a1, $a2
	srai.d	$a2, $a1, 63
	andn	$a1, $a1, $a2
	slt	$a2, $a1, $a0
	maskeqz	$a1, $a1, $a2
	masknez	$a0, $a0, $a2
	or	$a0, $a1, $a0
	stx.h	$a0, $a5, $t1
	move	$a5, $t6
	st.d	$s0, $sp, 328                   # 8-byte Folded Spill
.LBB25_209:                             # %.loopexit1965
                                        #   in Loop: Header=BB25_70 Depth=2
	ld.d	$a6, $sp, 40                    # 8-byte Folded Reload
	ld.d	$t1, $sp, 416                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 432                   # 8-byte Folded Reload
.LBB25_210:                             # %.loopexit1965
                                        #   in Loop: Header=BB25_70 Depth=2
	ld.d	$t2, $sp, 464                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	st.d	$a5, $sp, 336                   # 8-byte Folded Spill
	beqz	$a0, .LBB25_67
.LBB25_211:                             #   in Loop: Header=BB25_70 Depth=2
	move	$s4, $t1
	move	$s5, $ra
	ld.w	$a0, $a6, 40
	ori	$a0, $a0, 4
	addi.w	$a2, $t8, 0
	ori	$a1, $zero, 14
	bne	$a0, $a1, .LBB25_213
# %bb.212:                              #   in Loop: Header=BB25_70 Depth=2
	move	$a0, $s6
	move	$a1, $t7
	move	$a3, $t2
	move	$a5, $zero
	pcaddu18i	$ra, %call36(itrans)
	jirl	$ra, $ra, 0
	ld.d	$s2, $sp, 496                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 488                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 504                   # 8-byte Folded Reload
	bnez	$a0, .LBB25_69
	b	.LBB25_214
.LBB25_213:                             #   in Loop: Header=BB25_70 Depth=2
	move	$a0, $s6
	move	$a1, $t7
	move	$a3, $t2
	pcaddu18i	$ra, %call36(itrans_sp)
	jirl	$ra, $ra, 0
	ld.d	$s2, $sp, 496                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 488                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 504                   # 8-byte Folded Reload
	bnez	$a0, .LBB25_69
	.p2align	4, , 16
.LBB25_214:                             # %.critedge1813.thread
                                        #   in Loop: Header=BB25_70 Depth=2
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$a1, $sp, 480                   # 8-byte Folded Reload
	ldx.d	$a0, $a0, $a1
	slli.w	$a1, $s4, 2
	slli.d	$a2, $a1, 3
	ldx.d	$a2, $a0, $a2
	ld.h	$a3, $s6, 1384
	slli.w	$a4, $s5, 2
	slli.d	$a4, $a4, 1
	stx.h	$a3, $a2, $a4
	ld.h	$a3, $s6, 1388
	addi.d	$a5, $a4, 2
	stx.h	$a3, $a2, $a5
	ld.h	$a3, $s6, 1392
	addi.d	$a6, $a4, 4
	stx.h	$a3, $a2, $a6
	ld.h	$a3, $s6, 1396
	alsl.d	$a0, $a1, $a0, 3
	addi.d	$a1, $a4, 6
	stx.h	$a3, $a2, $a1
	ld.d	$a2, $a0, 8
	ld.h	$a3, $s6, 1448
	stx.h	$a3, $a2, $a4
	ld.h	$a3, $s6, 1452
	stx.h	$a3, $a2, $a5
	ld.h	$a3, $s6, 1456
	stx.h	$a3, $a2, $a6
	ld.h	$a3, $s6, 1460
	stx.h	$a3, $a2, $a1
	ld.d	$a2, $a0, 16
	ld.h	$a3, $s6, 1512
	stx.h	$a3, $a2, $a4
	ld.h	$a3, $s6, 1516
	stx.h	$a3, $a2, $a5
	ld.h	$a3, $s6, 1520
	stx.h	$a3, $a2, $a6
	ld.h	$a3, $s6, 1524
	stx.h	$a3, $a2, $a1
	ld.d	$a0, $a0, 24
	ld.h	$a2, $s6, 1576
	stx.h	$a2, $a0, $a4
	ld.h	$a2, $s6, 1580
	stx.h	$a2, $a0, $a5
	ld.h	$a2, $s6, 1584
	stx.h	$a2, $a0, $a6
	ld.h	$a2, $s6, 1588
	ld.d	$a4, $sp, 520                   # 8-byte Folded Reload
	addi.d	$a4, $a4, 1
	stx.h	$a2, $a0, $a1
	ld.d	$a5, $sp, 336                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 512                   # 8-byte Folded Reload
	bne	$a4, $a0, .LBB25_70
	b	.LBB25_221
.LBB25_215:                             #   in Loop: Header=BB25_70 Depth=2
	ld.d	$a3, $sp, 256                   # 8-byte Folded Reload
	ldx.d	$a3, $a3, $s7
	ori	$a4, $a4, 1584
	ldx.d	$a4, $a1, $a4
	ldx.d	$a3, $a3, $s6
	ld.d	$a5, $a4, 0
	ldx.d	$a3, $a3, $fp
	slli.d	$a6, $t1, 3
	ldx.d	$a5, $a5, $a6
	ld.h	$a7, $a3, 0
	ldx.d	$a5, $a5, $fp
	mul.d	$a7, $a2, $a7
	addi.d	$a7, $a7, 128
	bstrpick.d	$a7, $a7, 31, 8
	st.h	$a7, $a5, 0
	ld.h	$t0, $a3, 2
	mul.d	$a2, $a2, $t0
	addi.d	$a2, $a2, 128
	srli.d	$a2, $a2, 8
	st.h	$a2, $a5, 2
	ld.d	$a2, $a4, 8
	ldx.d	$a2, $a2, $a6
	ld.h	$a4, $a3, 0
	ldx.d	$a2, $a2, $fp
	sub.d	$a4, $a7, $a4
	st.h	$a4, $a2, 0
	ld.h	$a4, $a5, 2
	ld.h	$a3, $a3, 2
	sub.d	$a3, $a4, $a3
	b	.LBB25_147
.LBB25_216:                             #   in Loop: Header=BB25_70 Depth=2
	slli.d	$a3, $t1, 3
	ldx.d	$a4, $s4, $a3
	slli.d	$a5, $ra, 3
	ldx.d	$a4, $a4, $a5
	st.w	$zero, $a4, 0
	ld.d	$a0, $a0, 0
	ld.d	$a0, $a0, 0
	ldx.d	$a0, $a0, $a3
	stx.b	$zero, $a0, $ra
	ld.d	$a3, $sp, 352                   # 8-byte Folded Reload
	ext.w.b	$a0, $a3
	bgez	$a0, .LBB25_100
	b	.LBB25_130
.LBB25_217:                             #   in Loop: Header=BB25_70 Depth=2
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	lu12i.w	$a1, 77
	ori	$a1, $a1, 1584
	ldx.d	$a1, $a0, $a1
	ld.d	$a1, $a1, 8
	slli.d	$a2, $t1, 3
	ldx.d	$a1, $a1, $a2
	slli.d	$a2, $ra, 3
	ldx.d	$a2, $a1, $a2
	move	$a1, $zero
	st.w	$zero, $a2, 0
	b	.LBB25_104
	.p2align	4, , 16
.LBB25_218:                             #   in Loop: Header=BB25_64 Depth=1
	ld.d	$a0, $sp, 504                   # 8-byte Folded Reload
	beqz	$a0, .LBB25_221
# %bb.219:                              # %.preheader1963
                                        #   in Loop: Header=BB25_64 Depth=1
	ld.d	$a2, $sp, 448                   # 8-byte Folded Reload
	slli.d	$a0, $a2, 3
	andi	$a1, $a0, 8
	slli.d	$a0, $a2, 2
	andi	$a2, $a0, 8
	move	$a0, $s6
	move	$s3, $a3
	pcaddu18i	$ra, %call36(itrans8x8)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$a1, $sp, 480                   # 8-byte Folded Reload
	ldx.d	$a0, $a0, $a1
	ld.w	$a1, $s6, 80
	alsl.d	$a0, $a1, $a0, 3
	ld.w	$a2, $s6, 84
	slli.d	$a1, $s3, 3
	ldx.d	$a3, $a0, $a1
	slli.d	$a1, $s3, 6
	ld.d	$a7, $sp, 400                   # 8-byte Folded Reload
	add.d	$a4, $a7, $a1
	alsl.d	$a5, $s2, $a4, 2
	slli.d	$a1, $s2, 2
	vldx	$vr0, $a4, $a1
	vld	$vr1, $a5, 16
	alsl.d	$a3, $s2, $a3, 1
	slli.d	$a2, $a2, 1
	vpickev.h	$vr0, $vr1, $vr0
	vstx	$vr0, $a3, $a2
	addi.d	$a3, $s3, 1
	slli.d	$a4, $a3, 3
	ldx.d	$a4, $a0, $a4
	slli.d	$a3, $a3, 6
	add.d	$a3, $a7, $a3
	alsl.d	$a5, $s2, $a3, 2
	vldx	$vr0, $a3, $a1
	vld	$vr1, $a5, 16
	alsl.d	$a3, $s2, $a4, 1
	vpickev.h	$vr0, $vr1, $vr0
	vstx	$vr0, $a3, $a2
	addi.d	$a3, $s3, 2
	slli.d	$a4, $a3, 3
	ldx.d	$a4, $a0, $a4
	slli.d	$a3, $a3, 6
	add.d	$a3, $a7, $a3
	alsl.d	$a5, $s2, $a3, 2
	vldx	$vr0, $a3, $a1
	vld	$vr1, $a5, 16
	alsl.d	$a3, $s2, $a4, 1
	vpickev.h	$vr0, $vr1, $vr0
	vstx	$vr0, $a3, $a2
	addi.d	$a3, $s3, 3
	slli.d	$a4, $a3, 3
	ldx.d	$a4, $a0, $a4
	slli.d	$a3, $a3, 6
	add.d	$a3, $a7, $a3
	alsl.d	$a5, $s2, $a3, 2
	vldx	$vr0, $a3, $a1
	vld	$vr1, $a5, 16
	alsl.d	$a3, $s2, $a4, 1
	vpickev.h	$vr0, $vr1, $vr0
	vstx	$vr0, $a3, $a2
	ld.d	$a6, $sp, 440                   # 8-byte Folded Reload
	ori	$a3, $a6, 4
	slli.d	$a4, $a3, 3
	ldx.d	$a4, $a0, $a4
	slli.d	$a3, $a3, 6
	add.d	$a3, $a7, $a3
	alsl.d	$a5, $s2, $a3, 2
	vldx	$vr0, $a3, $a1
	vld	$vr1, $a5, 16
	alsl.d	$a3, $s2, $a4, 1
	vpickev.h	$vr0, $vr1, $vr0
	vstx	$vr0, $a3, $a2
	ori	$a3, $a6, 5
	slli.d	$a4, $a3, 3
	ldx.d	$a4, $a0, $a4
	slli.d	$a3, $a3, 6
	add.d	$a3, $a7, $a3
	alsl.d	$a5, $s2, $a3, 2
	vldx	$vr0, $a3, $a1
	vld	$vr1, $a5, 16
	alsl.d	$a3, $s2, $a4, 1
	vpickev.h	$vr0, $vr1, $vr0
	vstx	$vr0, $a3, $a2
	ori	$a3, $a6, 6
	slli.d	$a4, $a3, 3
	ldx.d	$a4, $a0, $a4
	slli.d	$a3, $a3, 6
	add.d	$a3, $a7, $a3
	alsl.d	$a5, $s2, $a3, 2
	vldx	$vr0, $a3, $a1
	vld	$vr1, $a5, 16
	ld.d	$a5, $sp, 336                   # 8-byte Folded Reload
	alsl.d	$a3, $s2, $a4, 1
	vpickev.h	$vr0, $vr1, $vr0
	vstx	$vr0, $a3, $a2
	ori	$a3, $a6, 7
	slli.d	$a4, $a3, 3
	ldx.d	$a0, $a0, $a4
	slli.d	$a3, $a3, 6
	add.d	$a3, $a7, $a3
	alsl.d	$a4, $s2, $a3, 2
	vldx	$vr0, $a3, $a1
	vld	$vr1, $a4, 16
	alsl.d	$a0, $s2, $a0, 1
.LBB25_220:                             # %.loopexit1978
                                        #   in Loop: Header=BB25_64 Depth=1
	vpickev.h	$vr0, $vr1, $vr0
	vstx	$vr0, $a0, $a2
.LBB25_221:                             # %.loopexit1978
                                        #   in Loop: Header=BB25_64 Depth=1
	ld.d	$a4, $sp, 448                   # 8-byte Folded Reload
	addi.d	$a4, $a4, 1
	ld.d	$s2, $sp, 440                   # 8-byte Folded Reload
	addi.d	$s2, $s2, 4
	ld.d	$a0, $sp, 512                   # 8-byte Folded Reload
	addi.d	$a0, $a0, 4
	st.d	$a0, $sp, 512                   # 8-byte Folded Spill
	ld.d	$a6, $sp, 424                   # 8-byte Folded Reload
	xori	$a6, $a6, 1
	ori	$a0, $zero, 4
	bne	$a4, $a0, .LBB25_64
# %bb.222:
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	lu12i.w	$a1, 77
	ori	$a1, $a1, 1652
	ldx.w	$a0, $a0, $a1
	beqz	$a0, .LBB25_4
# %bb.223:
	ldptr.w	$a0, $s6, 5932
	move	$a7, $zero
	move	$fp, $zero
	st.d	$zero, $sp, 464                 # 8-byte Folded Spill
	ldptr.w	$a1, $s6, 5936
	ori	$a2, $zero, 64
	div.w	$s4, $a2, $a0
	addi.d	$t5, $s4, -1
	div.w	$s5, $a2, $a1
	addi.d	$a0, $s5, -1
	st.d	$a0, $sp, 432                   # 8-byte Folded Spill
	mul.w	$a0, $s5, $s4
	st.d	$a0, $sp, 512                   # 8-byte Folded Spill
	srai.d	$a0, $a0, 1
	st.d	$a0, $sp, 504                   # 8-byte Folded Spill
	ori	$s2, $zero, 1
	lu12i.w	$a0, 77
	ori	$a0, $a0, 1536
	st.d	$a0, $sp, 488                   # 8-byte Folded Spill
	lu12i.w	$a0, 7
	ori	$a0, $a0, 1536
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	ori	$a0, $zero, 1
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	ld.d	$a3, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 456                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 328                   # 8-byte Folded Reload
	st.d	$t5, $sp, 440                   # 8-byte Folded Spill
	b	.LBB25_225
	.p2align	4, , 16
.LBB25_224:                             # %.loopexit1953
                                        #   in Loop: Header=BB25_225 Depth=1
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	andi	$a0, $a0, 1
	ori	$a7, $zero, 1
	st.d	$zero, $sp, 24                  # 8-byte Folded Spill
	beqz	$a0, .LBB25_4
.LBB25_225:                             # =>This Loop Header: Depth=1
                                        #     Child Loop BB25_231 Depth 2
                                        #       Child Loop BB25_235 Depth 3
                                        #         Child Loop BB25_292 Depth 4
                                        #           Child Loop BB25_302 Depth 5
                                        #         Child Loop BB25_239 Depth 4
                                        #           Child Loop BB25_248 Depth 5
	st.d	$fp, $sp, 296                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.w	$a0, $a0, 40
	ldptr.w	$fp, $s6, 5924
	st.d	$zero, $sp, 104                 # 8-byte Folded Spill
	ori	$a1, $zero, 14
	st.d	$a7, $sp, 216                   # 8-byte Folded Spill
	bltu	$a1, $a0, .LBB25_312
# %bb.226:                              #   in Loop: Header=BB25_225 Depth=1
	sll.d	$a0, $s2, $a0
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	and	$a1, $a0, $a1
	move	$a0, $fp
	beqz	$a1, .LBB25_228
# %bb.227:                              #   in Loop: Header=BB25_225 Depth=1
	move	$a0, $s6
	move	$a1, $a7
	move	$s1, $s0
	move	$s0, $a5
	pcaddu18i	$ra, %call36(intrapred_chroma)
	jirl	$ra, $ra, 0
	ld.d	$a7, $sp, 216                   # 8-byte Folded Reload
	ld.d	$t5, $sp, 440                   # 8-byte Folded Reload
	move	$a5, $s0
	move	$s0, $s1
	ld.d	$a3, $sp, 112                   # 8-byte Folded Reload
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1828
	ldx.w	$a0, $s6, $a0
	ori	$a1, $zero, 1
	st.d	$a1, $sp, 104                   # 8-byte Folded Spill
.LBB25_228:                             # %switch.edge
                                        #   in Loop: Header=BB25_225 Depth=1
	slli.d	$a1, $a7, 3
	st.d	$a1, $sp, 520                   # 8-byte Folded Spill
	ori	$a1, $zero, 2
	blt	$a0, $a1, .LBB25_313
.LBB25_229:                             # %.preheader1952.lr.ph
                                        #   in Loop: Header=BB25_225 Depth=1
	move	$t0, $zero
	srai.d	$a0, $fp, 1
	mul.w	$a0, $a0, $a7
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	addi.d	$a0, $a7, 1
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	ld.d	$fp, $sp, 296                   # 8-byte Folded Reload
	b	.LBB25_231
	.p2align	4, , 16
.LBB25_230:                             #   in Loop: Header=BB25_231 Depth=2
	ldptr.w	$a0, $s6, 5924
	addi.d	$t0, $t0, 1
	srai.d	$a0, $a0, 1
	bge	$t0, $a0, .LBB25_314
.LBB25_231:                             # %.preheader1952
                                        #   Parent Loop BB25_225 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB25_235 Depth 3
                                        #         Child Loop BB25_292 Depth 4
                                        #           Child Loop BB25_302 Depth 5
                                        #         Child Loop BB25_239 Depth 4
                                        #           Child Loop BB25_248 Depth 5
	move	$t1, $zero
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	add.d	$a0, $t0, $a0
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	st.d	$t0, $sp, 224                   # 8-byte Folded Spill
	b	.LBB25_235
	.p2align	4, , 16
.LBB25_232:                             #   in Loop: Header=BB25_235 Depth=3
	ld.d	$a5, $sp, 336                   # 8-byte Folded Reload
	move	$s0, $s8
	ld.d	$s8, $sp, 328                   # 8-byte Folded Reload
	ld.d	$t5, $sp, 440                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 216                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 224                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 232                   # 8-byte Folded Reload
	ld.d	$t3, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 256                   # 8-byte Folded Reload
.LBB25_233:                             # %.loopexit1950
                                        #   in Loop: Header=BB25_235 Depth=3
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	beqz	$a0, .LBB25_289
# %bb.234:                              # %.loopexit
                                        #   in Loop: Header=BB25_235 Depth=3
	addi.d	$t1, $t1, 1
	ld.d	$a3, $sp, 112                   # 8-byte Folded Reload
	ori	$a0, $zero, 4
	beq	$t1, $a0, .LBB25_230
.LBB25_235:                             #   Parent Loop BB25_225 Depth=1
                                        #     Parent Loop BB25_231 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB25_292 Depth 4
                                        #           Child Loop BB25_302 Depth 5
                                        #         Child Loop BB25_239 Depth 4
                                        #           Child Loop BB25_248 Depth 5
	slli.d	$a2, $a3, 5
	pcalau12i	$a0, %pc_hi20(subblk_offset_y)
	addi.d	$a0, $a0, %pc_lo12(subblk_offset_y)
	add.d	$a0, $a0, $a2
	alsl.d	$a0, $t0, $a0, 2
	ldx.bu	$a1, $a0, $t1
	ld.w	$a4, $s6, 88
	pcalau12i	$a0, %pc_hi20(subblk_offset_x)
	addi.d	$a0, $a0, %pc_lo12(subblk_offset_x)
	st.d	$a2, $sp, 128                   # 8-byte Folded Spill
	add.d	$a0, $a0, $a2
	alsl.d	$a0, $t0, $a0, 2
	ldx.bu	$a2, $a0, $t1
	ld.w	$a0, $s6, 96
	st.d	$a1, $sp, 168                   # 8-byte Folded Spill
	st.d	$a4, $sp, 160                   # 8-byte Folded Spill
	add.w	$t3, $a4, $a1
	st.d	$a2, $sp, 136                   # 8-byte Folded Spill
	add.w	$a6, $a0, $a2
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	st.d	$t1, $sp, 232                   # 8-byte Folded Spill
	bnez	$a0, .LBB25_233
# %bb.236:                              #   in Loop: Header=BB25_235 Depth=3
	slli.d	$a0, $a3, 6
	pcalau12i	$a1, %pc_hi20(block8x8_idx)
	addi.d	$a1, $a1, %pc_lo12(block8x8_idx)
	add.d	$a0, $a1, $a0
	alsl.d	$a0, $t0, $a0, 4
	slli.d	$a1, $t1, 2
	ldx.w	$a2, $a0, $a1
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ldx.b	$a7, $a0, $a2
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	andi	$t1, $a7, 255
	lu12i.w	$a4, 77
	ori	$a1, $a4, 1560
	add.d	$s1, $a0, $a1
	move	$t6, $a6
	ld.d	$a6, $s1, 24
	lu12i.w	$t0, 1
	ori	$a3, $t0, 1888
	ori	$a1, $t0, 1884
	ori	$a0, $t0, 1704
	mul.d	$t2, $s4, $t6
	st.d	$t2, $sp, 496                   # 8-byte Folded Spill
	pcalau12i	$t4, %pc_hi20(active_sps)
	ld.d	$t2, $sp, 72                    # 8-byte Folded Reload
	slli.d	$t2, $t2, 2
	st.d	$t2, $sp, 456                   # 8-byte Folded Spill
	ori	$t2, $t0, 1668
	st.d	$t2, $sp, 448                   # 8-byte Folded Spill
	ori	$t2, $t0, 1700
	st.d	$t2, $sp, 424                   # 8-byte Folded Spill
	ori	$a4, $a4, 1504
	st.d	$a4, $sp, 480                   # 8-byte Folded Spill
	ori	$a4, $t0, 1840
	st.d	$a4, $sp, 152                   # 8-byte Folded Spill
	ori	$a4, $zero, 2
	st.d	$t3, $sp, 264                   # 8-byte Folded Spill
	st.d	$t6, $sp, 256                   # 8-byte Folded Spill
	bne	$t1, $a4, .LBB25_290
# %bb.237:                              #   in Loop: Header=BB25_235 Depth=3
	move	$t2, $zero
	ld.d	$a4, $sp, 56                    # 8-byte Folded Reload
	ldx.bu	$a2, $a4, $a2
	st.d	$a2, $sp, 392                   # 8-byte Folded Spill
	ld.d	$a2, $a6, 0
	st.d	$a2, $sp, 200                   # 8-byte Folded Spill
	ld.d	$a2, $a6, 8
	st.d	$a2, $sp, 192                   # 8-byte Folded Spill
	ldx.w	$a2, $s6, $a3
	st.d	$a2, $sp, 184                   # 8-byte Folded Spill
	ldx.w	$a1, $s6, $a1
	st.d	$a1, $sp, 384                   # 8-byte Folded Spill
	ldx.w	$a0, $s6, $a0
	st.d	$a0, $sp, 376                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	srai.d	$a0, $a0, 1
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a1
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	bstrpick.d	$a0, $t6, 31, 0
	st.d	$a0, $sp, 272                   # 8-byte Folded Spill
	slli.d	$a0, $a1, 5
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	alsl.d	$a0, $a1, $a0, 1
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	add.d	$a0, $a1, $a0
	st.d	$a0, $sp, 416                   # 8-byte Folded Spill
	move	$a1, $zero
	addi.d	$a0, $t6, 1
	mul.d	$a0, $s4, $a0
	addi.d	$a0, $a0, -1
	st.d	$a0, $sp, 328                   # 8-byte Folded Spill
	ld.d	$a3, $sp, 432                   # 8-byte Folded Reload
	move	$a6, $t6
	st.d	$s1, $sp, 400                   # 8-byte Folded Spill
	st.d	$t4, $sp, 208                   # 8-byte Folded Spill
	b	.LBB25_239
	.p2align	4, , 16
.LBB25_238:                             #   in Loop: Header=BB25_239 Depth=4
	ld.d	$a1, $sp, 280                   # 8-byte Folded Reload
	addi.d	$a1, $a1, 1
	ld.d	$t2, $sp, 240                   # 8-byte Folded Reload
	addi.d	$t2, $t2, 1
	ld.d	$a0, $sp, 416                   # 8-byte Folded Reload
	addi.d	$a0, $a0, 32
	st.d	$a0, $sp, 416                   # 8-byte Folded Spill
	ori	$a0, $zero, 4
	ld.d	$a7, $sp, 216                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 224                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 232                   # 8-byte Folded Reload
	ld.d	$t3, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 256                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 208                   # 8-byte Folded Reload
	beq	$a1, $a0, .LBB25_233
.LBB25_239:                             #   Parent Loop BB25_225 Depth=1
                                        #     Parent Loop BB25_231 Depth=2
                                        #       Parent Loop BB25_235 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB25_248 Depth 5
	ld.d	$a0, $sp, 472                   # 8-byte Folded Reload
	st.d	$a1, $sp, 280                   # 8-byte Folded Spill
	st.d	$t2, $sp, 240                   # 8-byte Folded Spill
	beqz	$a0, .LBB25_242
# %bb.240:                              #   in Loop: Header=BB25_239 Depth=4
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	bnez	$a0, .LBB25_243
# %bb.241:                              #   in Loop: Header=BB25_239 Depth=4
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a1
	b	.LBB25_244
	.p2align	4, , 16
.LBB25_242:                             #   in Loop: Header=BB25_239 Depth=4
	add.d	$a0, $t2, $t3
	b	.LBB25_244
	.p2align	4, , 16
.LBB25_243:                             #   in Loop: Header=BB25_239 Depth=4
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	ldx.w	$a0, $s6, $a0
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	sub.w	$a0, $a1, $a0
	srli.d	$a0, $a0, 1
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 280                   # 8-byte Folded Reload
	add.d	$a1, $a2, $a1
	add.d	$a0, $a0, $a1
	ld.d	$a1, $sp, 280                   # 8-byte Folded Reload
.LBB25_244:                             #   in Loop: Header=BB25_239 Depth=4
	move	$a2, $zero
	move	$t7, $zero
	move	$t8, $zero
	add.w	$a1, $t3, $a1
	ld.d	$a4, $sp, 184                   # 8-byte Folded Reload
	div.w	$a4, $a1, $a4
	mul.d	$t1, $a0, $s5
	bstrpick.d	$a0, $a4, 31, 1
	slli.w	$a0, $a0, 1
	ld.d	$a1, $t4, %pc_lo12(active_sps)
	st.d	$a1, $sp, 408                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	ld.d	$t4, $a1, %pc_lo12(active_pps)
	ld.d	$a1, $sp, 200                   # 8-byte Folded Reload
	alsl.d	$a1, $a4, $a1, 3
	st.d	$a1, $sp, 336                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 192                   # 8-byte Folded Reload
	st.d	$a4, $sp, 312                   # 8-byte Folded Spill
	alsl.d	$a1, $a4, $a1, 3
	st.d	$a1, $sp, 352                   # 8-byte Folded Spill
	slli.d	$a0, $a0, 3
	st.d	$a0, $sp, 304                   # 8-byte Folded Spill
	b	.LBB25_248
.LBB25_245:                             #   in Loop: Header=BB25_248 Depth=5
	ld.w	$a1, $t4, 1124
	addi.d	$a1, $a1, -2
	ldptr.d	$a4, $s6, 5784
	sltui	$a1, $a1, 1
	ld.d	$a7, $sp, 288                   # 8-byte Folded Reload
	maskeqz	$a1, $a7, $a1
	slli.d	$a1, $a1, 3
	ldx.d	$a7, $a4, $a1
	addi.d	$t0, $a1, 8
	ldx.d	$a4, $a4, $t0
	slli.d	$a0, $a0, 3
	ldx.d	$a7, $a7, $a0
	ext.w.h	$t2, $a5
	ldx.d	$a4, $a4, $a0
	slli.d	$t2, $t2, 3
	ldx.d	$a7, $a7, $t2
	ldx.d	$a4, $a4, $t2
	ld.d	$ra, $sp, 456                   # 8-byte Folded Reload
	ldx.w	$a7, $a7, $ra
	ldptr.d	$t3, $s6, 5776
	ldx.w	$a4, $a4, $ra
	ldptr.w	$t6, $s6, 5904
	move	$s1, $fp
	ld.d	$fp, $sp, 464                   # 8-byte Folded Reload
	mul.d	$a7, $a7, $fp
	move	$fp, $s1
	ldx.d	$a1, $t3, $a1
	ldx.d	$t0, $t3, $t0
	mul.d	$a4, $a4, $s1
	ld.d	$t3, $sp, 448                   # 8-byte Folded Reload
	ldx.wu	$t3, $s6, $t3
	ldx.d	$a0, $a1, $a0
	ldx.d	$a1, $t0, $t2
	add.d	$a4, $a4, $a7
	sll.w	$a7, $s2, $t3
	ldx.w	$a0, $a0, $ra
	ldx.w	$a1, $a1, $ra
	add.d	$a4, $a4, $a7
	addi.d	$a7, $t3, 1
	sra.w	$a4, $a4, $a7
	add.d	$a0, $a0, $a1
	addi.w	$a0, $a0, 1
	srli.d	$a0, $a0, 1
	add.w	$a0, $a0, $a4
	srai.d	$a1, $a0, 63
	andn	$a0, $a0, $a1
	slt	$a1, $a0, $t6
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $t6, $a1
.LBB25_246:                             #   in Loop: Header=BB25_248 Depth=5
	or	$a0, $a0, $a1
.LBB25_247:                             #   in Loop: Header=BB25_248 Depth=5
	ld.d	$a1, $sp, 416                   # 8-byte Folded Reload
	stx.h	$a0, $a1, $t7
	addi.d	$t8, $t8, 1
	addi.d	$t7, $t7, 2
	add.d	$a2, $a2, $s4
	addi.w	$a6, $a6, 1
	ori	$a0, $zero, 8
	ld.d	$s1, $sp, 400                   # 8-byte Folded Reload
	beq	$t7, $a0, .LBB25_238
.LBB25_248:                             #   Parent Loop BB25_225 Depth=1
                                        #     Parent Loop BB25_231 Depth=2
                                        #       Parent Loop BB25_235 Depth=3
                                        #         Parent Loop BB25_239 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	ld.d	$a0, $sp, 384                   # 8-byte Folded Reload
	div.w	$t6, $a6, $a0
	ld.d	$a0, $sp, 392                   # 8-byte Folded Reload
	beqz	$a0, .LBB25_260
# %bb.249:                              # %._crit_edge2554
                                        #   in Loop: Header=BB25_248 Depth=5
	ld.d	$a0, $s1, 0
	ld.d	$a1, $sp, 408                   # 8-byte Folded Reload
	ld.w	$t2, $a1, 32
.LBB25_250:                             #   in Loop: Header=BB25_248 Depth=5
	ld.d	$a1, $a0, 0
	ld.d	$a0, $a0, 8
	ld.d	$a4, $sp, 312                   # 8-byte Folded Reload
	slli.d	$a4, $a4, 3
	ld.d	$a5, $sp, 336                   # 8-byte Folded Reload
	ld.d	$a7, $a5, 0
	ldx.d	$a1, $a1, $a4
	ldx.d	$a4, $a0, $a4
	slli.d	$a0, $t6, 3
	ldx.d	$a7, $a7, $a0
	ldx.b	$a5, $a1, $t6
	ldx.b	$s3, $a4, $t6
	ld.d	$a1, $sp, 320                   # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	ld.h	$ra, $a7, 0
	ld.h	$a4, $a7, 2
	slli.d	$a7, $a5, 3
	ldx.d	$t0, $a1, $a7
	ld.d	$a1, $sp, 496                   # 8-byte Folded Reload
	add.d	$a1, $a1, $a2
	add.w	$t3, $a1, $ra
	add.w	$a7, $t1, $a4
	ld.d	$a4, $sp, 480                   # 8-byte Folded Reload
	add.d	$fp, $t0, $a4
	bne	$t2, $s2, .LBB25_252
# %bb.251:                              #   in Loop: Header=BB25_248 Depth=5
	ld.w	$a4, $fp, 0
	add.w	$a7, $a4, $a7
.LBB25_252:                             # %._crit_edge2560
                                        #   in Loop: Header=BB25_248 Depth=5
	ld.w	$t6, $s6, 60
	div.w	$a4, $t3, $s4
	srai.d	$t0, $a4, 63
	andn	$a4, $a4, $t0
	slt	$t0, $a4, $t6
	maskeqz	$a4, $a4, $t0
	masknez	$t0, $t6, $t0
	or	$a4, $a4, $t0
	div.w	$t0, $a7, $s5
	srai.d	$s0, $t0, 63
	andn	$t0, $t0, $s0
	slt	$s0, $t0, $s7
	maskeqz	$t0, $t0, $s0
	masknez	$s0, $s7, $s0
	or	$t0, $t0, $s0
	ld.d	$s0, $sp, 328                   # 8-byte Folded Reload
	add.d	$s0, $s0, $a2
	add.w	$s0, $s0, $ra
	div.w	$s0, $s0, $s4
	srai.d	$s1, $s0, 63
	andn	$s0, $s0, $s1
	slt	$s1, $s0, $t6
	maskeqz	$s0, $s0, $s1
	masknez	$s1, $t6, $s1
	or	$s0, $s0, $s1
	add.w	$s1, $a7, $a3
	div.w	$s1, $s1, $s5
	srai.d	$s2, $s1, 63
	andn	$s1, $s1, $s2
	ld.d	$fp, $fp, 32
	slt	$s2, $s1, $s7
	maskeqz	$s1, $s1, $s2
	masknez	$s2, $s7, $s2
	ld.d	$s8, $sp, 520                   # 8-byte Folded Reload
	ldx.d	$fp, $fp, $s8
	or	$s1, $s1, $s2
	and	$t3, $t3, $t5
	slli.d	$t0, $t0, 3
	ldx.d	$t0, $fp, $t0
	slli.d	$a4, $a4, 1
	slli.d	$s1, $s1, 3
	ldx.d	$fp, $fp, $s1
	ldx.hu	$s1, $t0, $a4
	slli.d	$s0, $s0, 1
	ldx.hu	$t0, $t0, $s0
	ldx.hu	$a4, $fp, $a4
	ldx.hu	$fp, $fp, $s0
	sub.d	$s0, $s4, $t3
	mul.d	$s1, $s0, $s1
	mul.d	$a4, $s0, $a4
	mul.d	$t0, $t3, $t0
	mul.d	$t3, $t3, $fp
	add.d	$a4, $t3, $a4
	and	$a7, $a7, $a3
	add.d	$t0, $t0, $s1
	ld.d	$t3, $sp, 352                   # 8-byte Folded Reload
	ld.d	$t3, $t3, 0
	mul.d	$a4, $a4, $a7
	sub.d	$a7, $s5, $a7
	mul.d	$a7, $t0, $a7
	ldx.d	$a0, $t3, $a0
	ld.d	$t0, $sp, 504                   # 8-byte Folded Reload
	add.d	$a7, $a7, $t0
	add.w	$a4, $a7, $a4
	ld.d	$a7, $sp, 344                   # 8-byte Folded Reload
	ld.d	$a7, $a7, 0
	ld.h	$t0, $a0, 0
	ld.h	$t3, $a0, 2
	slli.d	$a0, $s3, 3
	ldx.d	$a7, $a7, $a0
	ld.d	$a0, $sp, 512                   # 8-byte Folded Reload
	div.w	$a0, $a4, $a0
	st.d	$a0, $sp, 464                   # 8-byte Folded Spill
	add.w	$a0, $a1, $t0
	add.w	$t3, $t1, $t3
	ori	$ra, $zero, 2
	ori	$s2, $zero, 1
	bne	$t2, $s2, .LBB25_254
# %bb.253:                              #   in Loop: Header=BB25_248 Depth=5
	ld.d	$a1, $sp, 480                   # 8-byte Folded Reload
	ldx.w	$a1, $a7, $a1
	add.w	$t3, $a1, $t3
.LBB25_254:                             # %.sink.split
                                        #   in Loop: Header=BB25_248 Depth=5
	move	$s0, $a5
	move	$s8, $a5
	move	$a5, $s3
.LBB25_255:                             # %.sink.split
                                        #   in Loop: Header=BB25_248 Depth=5
	div.w	$a1, $a0, $s4
	srai.d	$a4, $a1, 63
	andn	$a1, $a1, $a4
	slt	$a4, $a1, $t6
	maskeqz	$a1, $a1, $a4
	masknez	$a4, $t6, $a4
	or	$a1, $a1, $a4
	div.w	$a4, $t3, $s5
	srai.d	$t0, $a4, 63
	andn	$a4, $a4, $t0
	slt	$t0, $a4, $s7
	maskeqz	$a4, $a4, $t0
	masknez	$t0, $s7, $t0
	or	$a4, $a4, $t0
	add.w	$t0, $a0, $t5
	div.w	$t0, $t0, $s4
	srai.d	$t2, $t0, 63
	andn	$t0, $t0, $t2
	slt	$t2, $t0, $t6
	maskeqz	$t0, $t0, $t2
	masknez	$t2, $t6, $t2
	or	$t0, $t0, $t2
	add.w	$t2, $t3, $a3
	div.w	$t2, $t2, $s5
	srai.d	$t6, $t2, 63
	andn	$t2, $t2, $t6
	slt	$t6, $t2, $s7
	maskeqz	$t2, $t2, $t6
	masknez	$t6, $s7, $t6
	ld.d	$fp, $sp, 488                   # 8-byte Folded Reload
	ldx.d	$a7, $a7, $fp
	or	$t2, $t2, $t6
	and	$a0, $a0, $t5
	and	$t3, $t3, $a3
	ld.d	$t6, $sp, 520                   # 8-byte Folded Reload
	ldx.d	$a7, $a7, $t6
	sub.d	$t6, $s4, $a0
	sub.d	$fp, $s5, $t3
	slli.d	$a4, $a4, 3
	ldx.d	$a4, $a7, $a4
	slli.d	$a1, $a1, 1
	slli.d	$t2, $t2, 3
	ldx.d	$a7, $a7, $t2
	ldx.hu	$t2, $a4, $a1
	slli.d	$t0, $t0, 1
	ldx.hu	$a4, $a4, $t0
	ldx.hu	$a1, $a7, $a1
	ldx.hu	$a7, $a7, $t0
	mul.d	$t0, $t6, $t2
	mul.d	$a4, $a0, $a4
	mul.d	$a1, $t6, $a1
	mul.d	$a0, $a0, $a7
	add.d	$a0, $a0, $a1
	mul.d	$a0, $a0, $t3
	add.d	$a1, $a4, $t0
	mul.d	$a1, $a1, $fp
	ld.d	$a4, $sp, 504                   # 8-byte Folded Reload
	add.d	$a1, $a1, $a4
	add.w	$a0, $a1, $a0
	ld.d	$a1, $sp, 512                   # 8-byte Folded Reload
	div.w	$fp, $a0, $a1
	ld.d	$a0, $sp, 376                   # 8-byte Folded Reload
	beqz	$a0, .LBB25_282
.LBB25_256:                             #   in Loop: Header=BB25_248 Depth=5
	ld.w	$a0, $t4, 1120
	beqz	$a0, .LBB25_264
# %bb.257:                              #   in Loop: Header=BB25_248 Depth=5
	ld.w	$a0, $s6, 44
	beqz	$a0, .LBB25_259
# %bb.258:                              #   in Loop: Header=BB25_248 Depth=5
	ori	$a1, $zero, 3
	bne	$a0, $a1, .LBB25_264
.LBB25_259:                             #   in Loop: Header=BB25_248 Depth=5
	ld.d	$a0, $sp, 472                   # 8-byte Folded Reload
	bnez	$a0, .LBB25_266
	b	.LBB25_267
	.p2align	4, , 16
.LBB25_260:                             #   in Loop: Header=BB25_248 Depth=5
	ld.w	$a1, $s6, 40
	ld.d	$a0, $s1, 0
	ld.d	$a4, $sp, 408                   # 8-byte Folded Reload
	ld.w	$t2, $a4, 32
	beqz	$a1, .LBB25_250
# %bb.261:                              #   in Loop: Header=BB25_248 Depth=5
	ld.d	$a1, $a0, 0
	ld.d	$t0, $sp, 304                   # 8-byte Folded Reload
	ldx.d	$a1, $a1, $t0
	move	$a4, $t6
	bstrins.d	$a4, $zero, 0, 0
	ldx.b	$a1, $a1, $a4
	ld.d	$a0, $a0, 8
	andi	$a7, $a1, 255
	ldx.d	$a0, $a0, $t0
	addi.d	$t0, $a7, -255
	sltui	$t0, $t0, 1
	masknez	$t3, $a1, $t0
	ldx.b	$a0, $a0, $a4
	maskeqz	$a1, $s0, $t0
	or	$s0, $a1, $t3
	maskeqz	$a4, $s8, $t0
	andi	$a1, $a0, 255
	or	$s8, $a4, $t3
	ori	$a4, $zero, 255
	beq	$a1, $a4, .LBB25_274
# %bb.262:                              #   in Loop: Header=BB25_248 Depth=5
	bne	$a7, $a4, .LBB25_274
# %bb.263:                              # %..thread1920_crit_edge
                                        #   in Loop: Header=BB25_248 Depth=5
	ld.d	$a4, $sp, 496                   # 8-byte Folded Reload
	add.d	$fp, $a4, $a2
	ori	$ra, $zero, 1
	b	.LBB25_278
	.p2align	4, , 16
.LBB25_264:                             #   in Loop: Header=BB25_248 Depth=5
	ld.w	$a0, $t4, 1124
	bne	$a0, $s2, .LBB25_267
# %bb.265:                              #   in Loop: Header=BB25_248 Depth=5
	ld.w	$a0, $s6, 44
	addi.d	$a0, $a0, -1
	sltui	$a0, $a0, 1
	ld.d	$a1, $sp, 472                   # 8-byte Folded Reload
	and	$a0, $a0, $a1
	beqz	$a0, .LBB25_267
.LBB25_266:                             #   in Loop: Header=BB25_248 Depth=5
	ext.w.h	$a0, $s8
	srai.d	$s8, $a0, 1
	ext.w.h	$a0, $a5
	srai.d	$a5, $a0, 1
.LBB25_267:                             #   in Loop: Header=BB25_248 Depth=5
	ld.w	$a1, $s6, 40
	bne	$ra, $s2, .LBB25_270
# %bb.268:                              #   in Loop: Header=BB25_248 Depth=5
	beqz	$a1, .LBB25_270
# %bb.269:                              #   in Loop: Header=BB25_248 Depth=5
	ldptr.d	$a0, $s6, 5768
	ld.d	$a0, $a0, 8
	ext.w.h	$a1, $a5
	slli.d	$a1, $a1, 3
	ldx.d	$a0, $a0, $a1
	ldptr.d	$a1, $s6, 5776
	ld.d	$t0, $sp, 456                   # 8-byte Folded Reload
	ldx.w	$a0, $a0, $t0
	ld.d	$a1, $a1, 8
	ext.w.h	$a4, $s3
	ld.d	$a7, $sp, 472                   # 8-byte Folded Reload
	sra.w	$a4, $a4, $a7
	slli.d	$a4, $a4, 3
	ldx.d	$a1, $a1, $a4
	ld.d	$a4, $sp, 424                   # 8-byte Folded Reload
	ldx.w	$a4, $s6, $a4
	mul.d	$a0, $a0, $fp
	b	.LBB25_273
	.p2align	4, , 16
.LBB25_270:                             #   in Loop: Header=BB25_248 Depth=5
	ext.w.h	$a0, $s8
	bnez	$ra, .LBB25_245
# %bb.271:                              #   in Loop: Header=BB25_248 Depth=5
	beqz	$a1, .LBB25_245
# %bb.272:                              #   in Loop: Header=BB25_248 Depth=5
	ldptr.d	$a1, $s6, 5768
	ld.d	$a1, $a1, 0
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $a1, $a0
	ldptr.d	$a1, $s6, 5776
	ld.d	$t0, $sp, 456                   # 8-byte Folded Reload
	ldx.w	$a0, $a0, $t0
	ld.d	$a1, $a1, 0
	ext.w.h	$a4, $s0
	ld.d	$a7, $sp, 472                   # 8-byte Folded Reload
	sra.w	$a4, $a4, $a7
	slli.d	$a4, $a4, 3
	ldx.d	$a1, $a1, $a4
	ld.d	$a4, $sp, 424                   # 8-byte Folded Reload
	ldx.w	$a4, $s6, $a4
	ld.d	$a7, $sp, 464                   # 8-byte Folded Reload
	mul.d	$a0, $a0, $a7
.LBB25_273:                             #   in Loop: Header=BB25_248 Depth=5
	ld.d	$a7, $sp, 448                   # 8-byte Folded Reload
	ldx.wu	$a7, $s6, $a7
	ldx.w	$a1, $a1, $t0
	add.d	$a0, $a0, $a4
	ldptr.w	$a4, $s6, 5904
	sra.w	$a0, $a0, $a7
	add.w	$a0, $a1, $a0
	srai.d	$a1, $a0, 63
	andn	$a0, $a0, $a1
	slt	$a1, $a0, $a4
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $a4, $a1
	b	.LBB25_246
.LBB25_274:                             # %.thread1915
                                        #   in Loop: Header=BB25_248 Depth=5
	st.d	$fp, $sp, 296                   # 8-byte Folded Spill
	ori	$ra, $zero, 255
	move	$a3, $s8
	move	$t5, $a5
	ld.d	$a4, $sp, 336                   # 8-byte Folded Reload
	ld.d	$a4, $a4, 0
	slli.d	$a7, $t6, 3
	ldx.d	$fp, $a4, $a7
	ld.d	$a4, $sp, 320                   # 8-byte Folded Reload
	ld.d	$a4, $a4, 0
	ld.h	$a7, $fp, 2
	ext.w.h	$t0, $s0
	slli.d	$t0, $t0, 3
	ldx.d	$a4, $a4, $t0
	add.w	$a7, $t1, $a7
	ld.d	$a5, $sp, 480                   # 8-byte Folded Reload
	add.d	$t3, $a4, $a5
	move	$s8, $s0
	move	$a5, $s3
	bne	$t2, $s2, .LBB25_276
# %bb.275:                              #   in Loop: Header=BB25_248 Depth=5
	ld.w	$a4, $t3, 0
	add.w	$a7, $a4, $a7
.LBB25_276:                             # %.thread1915._crit_edge
                                        #   in Loop: Header=BB25_248 Depth=5
	ld.h	$a4, $fp, 0
	ld.d	$t0, $sp, 496                   # 8-byte Folded Reload
	add.d	$t0, $t0, $a2
	add.w	$t0, $t0, $a4
	ld.w	$fp, $s6, 60
	div.w	$s0, $t0, $s4
	srai.d	$s1, $s0, 63
	andn	$s0, $s0, $s1
	slt	$s1, $s0, $fp
	maskeqz	$s0, $s0, $s1
	masknez	$s1, $fp, $s1
	or	$s0, $s0, $s1
	div.w	$s1, $a7, $s5
	srai.d	$s2, $s1, 63
	andn	$s1, $s1, $s2
	slt	$s2, $s1, $s7
	maskeqz	$s1, $s1, $s2
	masknez	$s2, $s7, $s2
	or	$s1, $s1, $s2
	ld.d	$s2, $sp, 328                   # 8-byte Folded Reload
	add.d	$s2, $s2, $a2
	add.w	$a4, $s2, $a4
	div.w	$a4, $a4, $s4
	srai.d	$s2, $a4, 63
	andn	$a4, $a4, $s2
	slt	$s2, $a4, $fp
	maskeqz	$a4, $a4, $s2
	masknez	$fp, $fp, $s2
	or	$a4, $a4, $fp
	ld.d	$s3, $sp, 432                   # 8-byte Folded Reload
	add.w	$fp, $a7, $s3
	div.w	$fp, $fp, $s5
	srai.d	$s2, $fp, 63
	andn	$fp, $fp, $s2
	slt	$s2, $fp, $s7
	maskeqz	$fp, $fp, $s2
	masknez	$s2, $s7, $s2
	ld.d	$t3, $t3, 32
	or	$fp, $fp, $s2
	ld.d	$s2, $sp, 440                   # 8-byte Folded Reload
	and	$t0, $t0, $s2
	and	$a7, $a7, $s3
	ld.d	$s2, $sp, 520                   # 8-byte Folded Reload
	ldx.d	$t3, $t3, $s2
	sub.d	$s2, $s4, $t0
	sub.d	$s3, $s5, $a7
	slli.d	$s1, $s1, 3
	ldx.d	$s1, $t3, $s1
	slli.d	$s0, $s0, 1
	slli.d	$fp, $fp, 3
	ldx.d	$t3, $t3, $fp
	ldx.hu	$fp, $s1, $s0
	slli.d	$a4, $a4, 1
	ldx.hu	$s1, $s1, $a4
	ldx.hu	$s0, $t3, $s0
	ldx.hu	$a4, $t3, $a4
	mul.d	$t3, $s2, $fp
	mul.d	$fp, $t0, $s1
	mul.d	$s0, $s2, $s0
	mul.d	$a4, $t0, $a4
	add.d	$a4, $a4, $s0
	mul.d	$a4, $a4, $a7
	add.d	$a7, $fp, $t3
	mul.d	$a7, $a7, $s3
	ld.d	$t0, $sp, 504                   # 8-byte Folded Reload
	add.d	$a7, $a7, $t0
	add.w	$a4, $a7, $a4
	ld.d	$a7, $sp, 512                   # 8-byte Folded Reload
	div.w	$a4, $a4, $a7
	st.d	$a4, $sp, 464                   # 8-byte Folded Spill
	beq	$a1, $ra, .LBB25_281
# %bb.277:                              #   in Loop: Header=BB25_248 Depth=5
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	add.d	$a4, $t8, $a4
	mul.d	$fp, $s4, $a4
	ori	$ra, $zero, 2
	move	$s3, $a5
	move	$a5, $t5
	move	$s0, $s8
	move	$s8, $a3
	ld.d	$t5, $sp, 440                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 432                   # 8-byte Folded Reload
	ori	$s2, $zero, 1
.LBB25_278:                             # %.thread1920
                                        #   in Loop: Header=BB25_248 Depth=5
	ld.d	$a4, $sp, 352                   # 8-byte Folded Reload
	ld.d	$a4, $a4, 0
	slli.d	$a7, $t6, 3
	ldx.d	$t6, $a4, $a7
	ld.d	$a4, $sp, 344                   # 8-byte Folded Reload
	ld.d	$a4, $a4, 0
	ld.h	$t0, $t6, 2
	slli.d	$a7, $a0, 3
	ldx.d	$a7, $a4, $a7
	add.w	$t3, $t1, $t0
	bne	$t2, $s2, .LBB25_280
# %bb.279:                              #   in Loop: Header=BB25_248 Depth=5
	ld.d	$a4, $sp, 480                   # 8-byte Folded Reload
	ldx.w	$a4, $a7, $a4
	add.w	$t3, $a4, $t3
.LBB25_280:                             # %.thread1920._crit_edge
                                        #   in Loop: Header=BB25_248 Depth=5
	addi.d	$a1, $a1, -255
	sltu	$a1, $zero, $a1
	maskeqz	$a0, $a0, $a1
	masknez	$a4, $s3, $a1
	or	$s3, $a0, $a4
	ld.h	$a4, $t6, 0
	ld.w	$t6, $s6, 60
	masknez	$a1, $a5, $a1
	or	$a5, $a0, $a1
	add.w	$a0, $fp, $a4
	b	.LBB25_255
.LBB25_281:                             #   in Loop: Header=BB25_248 Depth=5
	move	$ra, $zero
	move	$s3, $a5
	move	$a5, $t5
	move	$s0, $s8
	move	$s8, $a3
	ld.d	$t5, $sp, 440                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 432                   # 8-byte Folded Reload
	ori	$s2, $zero, 1
	ld.d	$fp, $sp, 296                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 376                   # 8-byte Folded Reload
	bnez	$a0, .LBB25_256
	.p2align	4, , 16
.LBB25_282:                             #   in Loop: Header=BB25_248 Depth=5
	ld.w	$a0, $s6, 40
	bne	$ra, $s2, .LBB25_285
# %bb.283:                              #   in Loop: Header=BB25_248 Depth=5
	beqz	$a0, .LBB25_285
# %bb.284:                              #   in Loop: Header=BB25_248 Depth=5
	move	$a0, $fp
	b	.LBB25_247
.LBB25_285:                             #   in Loop: Header=BB25_248 Depth=5
	bnez	$ra, .LBB25_288
# %bb.286:                              #   in Loop: Header=BB25_248 Depth=5
	beqz	$a0, .LBB25_288
# %bb.287:                              #   in Loop: Header=BB25_248 Depth=5
	ld.d	$a0, $sp, 464                   # 8-byte Folded Reload
	b	.LBB25_247
.LBB25_288:                             #   in Loop: Header=BB25_248 Depth=5
	ld.d	$a0, $sp, 464                   # 8-byte Folded Reload
	add.d	$a0, $a0, $fp
	addi.d	$a0, $a0, 1
	bstrpick.d	$a0, $a0, 31, 1
	b	.LBB25_247
	.p2align	4, , 16
.LBB25_289:                             # %.preheader1949
                                        #   in Loop: Header=BB25_235 Depth=3
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$a1, $sp, 488                   # 8-byte Folded Reload
	ldx.d	$a0, $a0, $a1
	st.d	$fp, $sp, 296                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 520                   # 8-byte Folded Reload
	ldx.d	$fp, $a0, $a1
	pcalau12i	$a0, %pc_hi20(cofuv_blk_x)
	addi.d	$a0, $a0, %pc_lo12(cofuv_blk_x)
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a2
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	alsl.d	$a0, $a1, $a0, 2
	ldx.bu	$a3, $a0, $t1
	pcalau12i	$a0, %pc_hi20(cofuv_blk_y)
	addi.d	$a0, $a0, %pc_lo12(cofuv_blk_y)
	add.d	$a0, $a0, $a2
	alsl.d	$a0, $a1, $a0, 2
	ldx.bu	$a4, $a0, $t1
	st.d	$s0, $sp, 496                   # 8-byte Folded Spill
	st.d	$a5, $sp, 336                   # 8-byte Folded Spill
	ori	$a5, $zero, 1
	move	$a0, $s6
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 168                   # 8-byte Folded Reload
	move	$s0, $t3
	move	$s1, $a6
	pcaddu18i	$ra, %call36(itrans)
	jirl	$ra, $ra, 0
	ld.d	$t1, $sp, 232                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 224                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 216                   # 8-byte Folded Reload
	ld.d	$t5, $sp, 440                   # 8-byte Folded Reload
	slli.d	$a0, $s0, 3
	ldx.d	$a0, $fp, $a0
	ld.h	$a1, $s6, 1384
	slli.d	$a2, $s1, 1
	stx.h	$a1, $a0, $a2
	ld.h	$a1, $s6, 1388
	addi.d	$a3, $a2, 2
	stx.h	$a1, $a0, $a3
	ld.h	$a1, $s6, 1392
	addi.d	$a4, $a2, 4
	stx.h	$a1, $a0, $a4
	ld.h	$a1, $s6, 1396
	alsl.d	$a5, $s0, $fp, 3
	ld.d	$fp, $sp, 296                   # 8-byte Folded Reload
	addi.d	$a6, $a2, 6
	stx.h	$a1, $a0, $a6
	ld.d	$a0, $a5, 8
	ld.h	$a1, $s6, 1448
	stx.h	$a1, $a0, $a2
	ld.h	$a1, $s6, 1452
	stx.h	$a1, $a0, $a3
	ld.h	$a1, $s6, 1456
	stx.h	$a1, $a0, $a4
	ld.h	$a1, $s6, 1460
	stx.h	$a1, $a0, $a6
	ld.d	$a0, $a5, 16
	ld.h	$a1, $s6, 1512
	stx.h	$a1, $a0, $a2
	ld.h	$a1, $s6, 1516
	stx.h	$a1, $a0, $a3
	ld.h	$a1, $s6, 1520
	stx.h	$a1, $a0, $a4
	ld.h	$a1, $s6, 1524
	stx.h	$a1, $a0, $a6
	ld.d	$a0, $a5, 24
	ld.d	$a5, $sp, 336                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 496                   # 8-byte Folded Reload
	ld.h	$a1, $s6, 1576
	stx.h	$a1, $a0, $a2
	ld.h	$a1, $s6, 1580
	stx.h	$a1, $a0, $a3
	ld.h	$a1, $s6, 1584
	stx.h	$a1, $a0, $a4
	ld.h	$a1, $s6, 1588
	stx.h	$a1, $a0, $a6
	addi.d	$t1, $t1, 1
	ld.d	$a3, $sp, 112                   # 8-byte Folded Reload
	ori	$a0, $zero, 4
	bne	$t1, $a0, .LBB25_235
	b	.LBB25_230
	.p2align	4, , 16
.LBB25_290:                             #   in Loop: Header=BB25_235 Depth=3
	st.d	$s8, $sp, 328                   # 8-byte Folded Spill
	st.d	$a5, $sp, 336                   # 8-byte Folded Spill
	move	$t0, $zero
	move	$t1, $zero
	slli.d	$a2, $a7, 3
	ldx.d	$a4, $a6, $a2
	st.d	$a4, $sp, 392                   # 8-byte Folded Spill
	ld.d	$a4, $sp, 288                   # 8-byte Folded Reload
	add.d	$a6, $a4, $a7
	slli.d	$a6, $a6, 3
	ld.d	$a4, $sp, 48                    # 8-byte Folded Reload
	ldx.d	$a6, $a4, $a6
	ld.d	$a7, $s1, 0
	ld.d	$t2, $t4, %pc_lo12(active_sps)
	ldx.w	$a3, $s6, $a3
	st.d	$a3, $sp, 384                   # 8-byte Folded Spill
	ldx.w	$a1, $s6, $a1
	st.d	$a1, $sp, 416                   # 8-byte Folded Spill
	ldx.d	$a1, $a7, $a2
	st.d	$a1, $sp, 376                   # 8-byte Folded Spill
	ld.w	$t3, $t2, 32
	ld.w	$t4, $s6, 60
	ldx.w	$t5, $s6, $a0
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	srai.d	$a0, $a0, 1
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a1
	st.d	$a0, $sp, 352                   # 8-byte Folded Spill
	slli.d	$a0, $a1, 5
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	alsl.d	$a0, $a1, $a0, 1
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	add.d	$t7, $a1, $a0
	addi.d	$a0, $t6, 1
	mul.d	$a0, $s4, $a0
	addi.d	$t8, $a0, -1
	move	$a5, $s3
	st.d	$fp, $sp, 296                   # 8-byte Folded Spill
	b	.LBB25_292
	.p2align	4, , 16
.LBB25_291:                             #   in Loop: Header=BB25_292 Depth=4
	ld.d	$t0, $sp, 408                   # 8-byte Folded Reload
	addi.d	$t0, $t0, 1
	ld.d	$t1, $sp, 400                   # 8-byte Folded Reload
	addi.d	$t1, $t1, 1
	addi.d	$t7, $t7, 32
	ori	$a0, $zero, 4
	ld.d	$fp, $sp, 296                   # 8-byte Folded Reload
	beq	$t0, $a0, .LBB25_232
.LBB25_292:                             #   Parent Loop BB25_225 Depth=1
                                        #     Parent Loop BB25_231 Depth=2
                                        #       Parent Loop BB25_235 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB25_302 Depth 5
	ld.d	$a0, $sp, 472                   # 8-byte Folded Reload
	st.d	$t1, $sp, 400                   # 8-byte Folded Spill
	beqz	$a0, .LBB25_295
# %bb.293:                              #   in Loop: Header=BB25_292 Depth=4
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	bnez	$a0, .LBB25_296
# %bb.294:                              #   in Loop: Header=BB25_292 Depth=4
	ld.d	$a0, $sp, 352                   # 8-byte Folded Reload
	add.d	$a0, $a0, $t0
	b	.LBB25_297
	.p2align	4, , 16
.LBB25_295:                             #   in Loop: Header=BB25_292 Depth=4
	ld.d	$a1, $sp, 264                   # 8-byte Folded Reload
	add.d	$a0, $t1, $a1
	b	.LBB25_298
	.p2align	4, , 16
.LBB25_296:                             #   in Loop: Header=BB25_292 Depth=4
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	ldx.w	$a0, $s6, $a0
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	sub.w	$a0, $a1, $a0
	srli.d	$a0, $a0, 1
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	add.d	$a1, $t0, $a1
	add.d	$a0, $a0, $a1
.LBB25_297:                             #   in Loop: Header=BB25_292 Depth=4
	ld.d	$a1, $sp, 264                   # 8-byte Folded Reload
.LBB25_298:                             #   in Loop: Header=BB25_292 Depth=4
	st.d	$t0, $sp, 408                   # 8-byte Folded Spill
	add.w	$a1, $a1, $t0
	ld.d	$a3, $sp, 384                   # 8-byte Folded Reload
	div.w	$a1, $a1, $a3
	slli.d	$a1, $a1, 3
	ld.d	$a3, $sp, 376                   # 8-byte Folded Reload
	ldx.d	$ra, $a3, $a1
	ld.d	$a3, $sp, 392                   # 8-byte Folded Reload
	ldx.d	$t6, $a3, $a1
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	ld.d	$a3, $a1, %pc_lo12(active_pps)
	move	$a7, $zero
	move	$t2, $zero
	mul.d	$a1, $a0, $s5
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	b	.LBB25_302
	.p2align	4, , 16
.LBB25_299:                             #   in Loop: Header=BB25_302 Depth=5
	andi	$a4, $s0, 255
	ext.w.b	$a4, $a4
	srai.d	$s1, $a4, 1
.LBB25_300:                             #   in Loop: Header=BB25_302 Depth=5
	ldptr.d	$a4, $s6, 5768
	ldx.d	$a4, $a4, $a2
	ldptr.d	$t0, $s6, 5776
	slli.d	$s0, $s1, 3
	ldx.d	$a4, $a4, $s0
	ldx.d	$t0, $t0, $a2
	ld.d	$t1, $sp, 456                   # 8-byte Folded Reload
	ldx.w	$a4, $a4, $t1
	ldx.d	$t0, $t0, $s0
	ld.d	$s0, $sp, 424                   # 8-byte Folded Reload
	ldx.w	$s0, $s6, $s0
	mul.d	$a4, $a4, $fp
	ld.d	$fp, $sp, 448                   # 8-byte Folded Reload
	ldx.wu	$fp, $s6, $fp
	ldx.w	$t0, $t0, $t1
	add.d	$a4, $a4, $s0
	ldptr.w	$s0, $s6, 5904
	sra.w	$a4, $a4, $fp
	add.w	$a4, $t0, $a4
	srai.d	$t0, $a4, 63
	andn	$a4, $a4, $t0
	slt	$t0, $a4, $s0
	maskeqz	$a4, $a4, $t0
	masknez	$t0, $s0, $t0
	or	$fp, $a4, $t0
.LBB25_301:                             #   in Loop: Header=BB25_302 Depth=5
	stx.h	$fp, $t7, $t2
	addi.d	$t2, $t2, 2
	add.d	$a7, $a7, $s4
	addi.w	$a0, $a0, 1
	ori	$a4, $zero, 8
	beq	$t2, $a4, .LBB25_291
.LBB25_302:                             #   Parent Loop BB25_225 Depth=1
                                        #     Parent Loop BB25_231 Depth=2
                                        #       Parent Loop BB25_235 Depth=3
                                        #         Parent Loop BB25_292 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	ld.d	$a4, $sp, 416                   # 8-byte Folded Reload
	div.w	$fp, $a0, $a4
	slli.d	$s1, $fp, 3
	ldx.d	$s1, $t6, $s1
	ld.h	$t0, $s1, 2
	ldx.b	$s0, $ra, $fp
	add.w	$fp, $a1, $t0
	bne	$t3, $s2, .LBB25_304
# %bb.303:                              #   in Loop: Header=BB25_302 Depth=5
	slli.d	$t0, $s0, 3
	ldx.d	$t0, $a6, $t0
	ld.d	$a4, $sp, 480                   # 8-byte Folded Reload
	ldx.w	$t0, $t0, $a4
	add.w	$fp, $t0, $fp
.LBB25_304:                             #   in Loop: Header=BB25_302 Depth=5
	ld.h	$t0, $s1, 0
	ld.d	$a4, $sp, 496                   # 8-byte Folded Reload
	add.d	$s1, $a4, $a7
	add.w	$s1, $s1, $t0
	div.w	$s2, $s1, $s4
	srai.d	$s6, $s2, 63
	andn	$s2, $s2, $s6
	slt	$s6, $s2, $t4
	maskeqz	$s2, $s2, $s6
	masknez	$s6, $t4, $s6
	or	$s2, $s2, $s6
	div.w	$s6, $fp, $s5
	srai.d	$s3, $s6, 63
	andn	$s3, $s6, $s3
	slt	$s6, $s3, $s7
	maskeqz	$s3, $s3, $s6
	masknez	$s6, $s7, $s6
	or	$s3, $s3, $s6
	add.d	$s6, $t8, $a7
	add.w	$t0, $s6, $t0
	div.w	$t0, $t0, $s4
	srai.d	$s6, $t0, 63
	andn	$t0, $t0, $s6
	slt	$s6, $t0, $t4
	maskeqz	$t0, $t0, $s6
	masknez	$s6, $t4, $s6
	or	$t0, $t0, $s6
	ld.d	$t1, $sp, 432                   # 8-byte Folded Reload
	add.w	$s6, $fp, $t1
	div.w	$s6, $s6, $s5
	srai.d	$a4, $s6, 63
	andn	$a4, $s6, $a4
	move	$s8, $s0
	slli.d	$s6, $s0, 3
	ldx.d	$s6, $a6, $s6
	slt	$s0, $a4, $s7
	maskeqz	$a4, $a4, $s0
	masknez	$s0, $s7, $s0
	ld.d	$s7, $sp, 488                   # 8-byte Folded Reload
	ldx.d	$s6, $s6, $s7
	or	$a4, $a4, $s0
	ld.d	$s0, $sp, 440                   # 8-byte Folded Reload
	and	$s0, $s1, $s0
	and	$fp, $fp, $t1
	ld.d	$t1, $sp, 520                   # 8-byte Folded Reload
	ldx.d	$s1, $s6, $t1
	sub.d	$s6, $s4, $s0
	sub.d	$s7, $s5, $fp
	slli.d	$s3, $s3, 3
	ldx.d	$s3, $s1, $s3
	slli.d	$s2, $s2, 1
	slli.d	$a4, $a4, 3
	ldx.d	$a4, $s1, $a4
	ldx.hu	$s1, $s3, $s2
	slli.d	$t0, $t0, 1
	ldx.hu	$s3, $s3, $t0
	ldx.hu	$s2, $a4, $s2
	ldx.hu	$a4, $a4, $t0
	mul.d	$t0, $s6, $s1
	mul.d	$s1, $s0, $s3
	mul.d	$s2, $s6, $s2
	mul.d	$a4, $s0, $a4
	add.d	$a4, $a4, $s2
	mul.d	$a4, $a4, $fp
	add.d	$t0, $s1, $t0
	mul.d	$t0, $t0, $s7
	ld.d	$t1, $sp, 504                   # 8-byte Folded Reload
	add.d	$t0, $t0, $t1
	add.w	$a4, $t0, $a4
	ld.d	$t0, $sp, 512                   # 8-byte Folded Reload
	div.w	$fp, $a4, $t0
	beqz	$t5, .LBB25_309
# %bb.305:                              #   in Loop: Header=BB25_302 Depth=5
	ld.w	$a4, $a3, 1120
	ld.d	$s6, $sp, 368                   # 8-byte Folded Reload
	move	$s3, $a5
	ori	$s2, $zero, 1
	beqz	$a4, .LBB25_310
# %bb.306:                              #   in Loop: Header=BB25_302 Depth=5
	ld.w	$s1, $s6, 44
	beqz	$s1, .LBB25_308
# %bb.307:                              #   in Loop: Header=BB25_302 Depth=5
	ori	$a4, $zero, 3
	bne	$s1, $a4, .LBB25_310
.LBB25_308:                             #   in Loop: Header=BB25_302 Depth=5
	move	$s0, $s8
	move	$s1, $s8
	ld.d	$a4, $sp, 472                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 360                   # 8-byte Folded Reload
	bnez	$a4, .LBB25_299
	b	.LBB25_300
	.p2align	4, , 16
.LBB25_309:                             #   in Loop: Header=BB25_302 Depth=5
	ld.d	$s6, $sp, 368                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 360                   # 8-byte Folded Reload
	move	$s3, $a5
	ori	$s2, $zero, 1
	b	.LBB25_301
	.p2align	4, , 16
.LBB25_310:                             #   in Loop: Header=BB25_302 Depth=5
	ld.w	$a4, $a3, 1124
	move	$s1, $s8
	ld.d	$s7, $sp, 360                   # 8-byte Folded Reload
	bne	$a4, $s2, .LBB25_300
# %bb.311:                              #   in Loop: Header=BB25_302 Depth=5
	move	$s0, $s8
	ld.w	$a4, $s6, 44
	addi.d	$a4, $a4, -1
	sltui	$a4, $a4, 1
	ld.d	$t0, $sp, 472                   # 8-byte Folded Reload
	and	$a4, $a4, $t0
	move	$s1, $s8
	bnez	$a4, .LBB25_299
	b	.LBB25_300
.LBB25_312:                             #   in Loop: Header=BB25_225 Depth=1
	move	$a0, $fp
	slli.d	$a1, $a7, 3
	st.d	$a1, $sp, 520                   # 8-byte Folded Spill
	ori	$a1, $zero, 2
	bge	$a0, $a1, .LBB25_229
	.p2align	4, , 16
.LBB25_313:                             #   in Loop: Header=BB25_225 Depth=1
	ld.d	$fp, $sp, 296                   # 8-byte Folded Reload
.LBB25_314:                             # %._crit_edge2094
                                        #   in Loop: Header=BB25_225 Depth=1
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	beqz	$a0, .LBB25_224
# %bb.315:                              # %.preheader
                                        #   in Loop: Header=BB25_225 Depth=1
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$a1, $sp, 488                   # 8-byte Folded Reload
	ldx.d	$a0, $a0, $a1
	ld.d	$a1, $sp, 520                   # 8-byte Folded Reload
	ldx.d	$s2, $a0, $a1
	slli.d	$s1, $a7, 1
	move	$a0, $s6
	move	$a1, $s1
	st.d	$a5, $sp, 336                   # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(itrans_sp_chroma)
	jirl	$ra, $ra, 0
	addi.w	$a0, $s1, 1
	move	$a3, $s1
	st.d	$s1, $sp, 424                   # 8-byte Folded Spill
	st.d	$a0, $sp, 456                   # 8-byte Folded Spill
	st.d	$fp, $sp, 296                   # 8-byte Folded Spill
	ld.w	$fp, $s6, 88
	ld.w	$a0, $s6, 96
	st.d	$a0, $sp, 408                   # 8-byte Folded Spill
	move	$s1, $s2
	addi.d	$a1, $s2, 24
	st.d	$a1, $sp, 480                   # 8-byte Folded Spill
	addi.d	$a1, $s2, 16
	st.d	$a1, $sp, 520                   # 8-byte Folded Spill
	addi.d	$s2, $s2, 8
	st.d	$s1, $sp, 448                   # 8-byte Folded Spill
	ori	$a4, $zero, 4
	ori	$a5, $zero, 1
	move	$a0, $s6
	move	$a1, $zero
	move	$a2, $zero
	pcaddu18i	$ra, %call36(itrans)
	jirl	$ra, $ra, 0
	st.d	$s0, $sp, 496                   # 8-byte Folded Spill
	slli.d	$s0, $fp, 3
	ldx.d	$a0, $s1, $s0
	ld.h	$a1, $s6, 1384
	ld.d	$a2, $sp, 408                   # 8-byte Folded Reload
	slli.d	$a2, $a2, 1
	stx.h	$a1, $a0, $a2
	ld.h	$a1, $s6, 1388
	addi.d	$a3, $a2, 2
	stx.h	$a1, $a0, $a3
	ld.h	$a1, $s6, 1392
	addi.d	$a4, $a2, 4
	stx.h	$a1, $a0, $a4
	ld.h	$a1, $s6, 1396
	addi.d	$a5, $a2, 6
	stx.h	$a1, $a0, $a5
	ldx.d	$a0, $s2, $s0
	st.d	$s2, $sp, 416                   # 8-byte Folded Spill
	ld.h	$a1, $s6, 1448
	stx.h	$a1, $a0, $a2
	ld.h	$a1, $s6, 1452
	stx.h	$a1, $a0, $a3
	ld.h	$a1, $s6, 1456
	stx.h	$a1, $a0, $a4
	ld.h	$a1, $s6, 1460
	stx.h	$a1, $a0, $a5
	ld.d	$a0, $sp, 520                   # 8-byte Folded Reload
	ldx.d	$a0, $a0, $s0
	ld.h	$a1, $s6, 1512
	stx.h	$a1, $a0, $a2
	ld.h	$a1, $s6, 1516
	stx.h	$a1, $a0, $a3
	ld.h	$a1, $s6, 1520
	stx.h	$a1, $a0, $a4
	ld.h	$a1, $s6, 1524
	stx.h	$a1, $a0, $a5
	ld.d	$s1, $sp, 480                   # 8-byte Folded Reload
	ldx.d	$a0, $s1, $s0
	ld.h	$a1, $s6, 1576
	stx.h	$a1, $a0, $a2
	ld.h	$a1, $s6, 1580
	stx.h	$a1, $a0, $a3
	ld.h	$a1, $s6, 1584
	stx.h	$a1, $a0, $a4
	ld.h	$a1, $s6, 1588
	stx.h	$a1, $a0, $a5
	ld.w	$fp, $s6, 96
	ori	$a1, $zero, 4
	ori	$a4, $zero, 4
	ori	$a5, $zero, 1
	move	$a0, $s6
	move	$a2, $zero
	ld.d	$a3, $sp, 456                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(itrans)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 448                   # 8-byte Folded Reload
	ldx.d	$a0, $a0, $s0
	ld.h	$a1, $s6, 1384
	slli.d	$a2, $fp, 1
	addi.d	$a3, $a2, 8
	stx.h	$a1, $a0, $a3
	ld.h	$a1, $s6, 1388
	addi.d	$a4, $a2, 10
	stx.h	$a1, $a0, $a4
	ld.h	$a1, $s6, 1392
	addi.d	$a5, $a2, 12
	stx.h	$a1, $a0, $a5
	ld.h	$a1, $s6, 1396
	addi.d	$a2, $a2, 14
	stx.h	$a1, $a0, $a2
	ldx.d	$a0, $s2, $s0
	ld.h	$a1, $s6, 1448
	stx.h	$a1, $a0, $a3
	ld.h	$a1, $s6, 1452
	stx.h	$a1, $a0, $a4
	ld.h	$a1, $s6, 1456
	stx.h	$a1, $a0, $a5
	ld.h	$a1, $s6, 1460
	stx.h	$a1, $a0, $a2
	ld.d	$a0, $sp, 520                   # 8-byte Folded Reload
	ldx.d	$a0, $a0, $s0
	ld.h	$a1, $s6, 1512
	stx.h	$a1, $a0, $a3
	ld.h	$a1, $s6, 1516
	stx.h	$a1, $a0, $a4
	ld.h	$a1, $s6, 1520
	stx.h	$a1, $a0, $a5
	ld.h	$a1, $s6, 1524
	stx.h	$a1, $a0, $a2
	ldx.d	$a0, $s1, $s0
	ld.h	$a1, $s6, 1576
	stx.h	$a1, $a0, $a3
	ld.h	$a1, $s6, 1580
	stx.h	$a1, $a0, $a4
	ld.h	$a1, $s6, 1584
	stx.h	$a1, $a0, $a5
	ld.h	$a1, $s6, 1588
	stx.h	$a1, $a0, $a2
	ld.w	$a0, $s6, 88
	ld.w	$fp, $s6, 96
	slli.d	$a0, $a0, 3
	addi.d	$s0, $a0, 32
	ori	$a2, $zero, 4
	ori	$a4, $zero, 5
	ori	$a5, $zero, 1
	move	$a0, $s6
	move	$a1, $zero
	ld.d	$a3, $sp, 424                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(itrans)
	jirl	$ra, $ra, 0
	ld.d	$s2, $sp, 448                   # 8-byte Folded Reload
	ldx.d	$a0, $s2, $s0
	ld.h	$a1, $s6, 1384
	slli.d	$a2, $fp, 1
	stx.h	$a1, $a0, $a2
	ld.h	$a1, $s6, 1388
	addi.d	$a3, $a2, 2
	stx.h	$a1, $a0, $a3
	ld.h	$a1, $s6, 1392
	addi.d	$a4, $a2, 4
	stx.h	$a1, $a0, $a4
	ld.h	$a1, $s6, 1396
	addi.d	$a5, $a2, 6
	stx.h	$a1, $a0, $a5
	ld.d	$s1, $sp, 416                   # 8-byte Folded Reload
	ldx.d	$a0, $s1, $s0
	ld.h	$a1, $s6, 1448
	stx.h	$a1, $a0, $a2
	ld.h	$a1, $s6, 1452
	stx.h	$a1, $a0, $a3
	ld.h	$a1, $s6, 1456
	stx.h	$a1, $a0, $a4
	ld.h	$a1, $s6, 1460
	stx.h	$a1, $a0, $a5
	ld.d	$a0, $sp, 520                   # 8-byte Folded Reload
	ldx.d	$a0, $a0, $s0
	ld.h	$a1, $s6, 1512
	stx.h	$a1, $a0, $a2
	ld.h	$a1, $s6, 1516
	stx.h	$a1, $a0, $a3
	ld.h	$a1, $s6, 1520
	stx.h	$a1, $a0, $a4
	ld.h	$a1, $s6, 1524
	stx.h	$a1, $a0, $a5
	ld.d	$a0, $sp, 480                   # 8-byte Folded Reload
	ldx.d	$a0, $a0, $s0
	ld.h	$a1, $s6, 1576
	stx.h	$a1, $a0, $a2
	ld.h	$a1, $s6, 1580
	stx.h	$a1, $a0, $a3
	ld.h	$a1, $s6, 1584
	stx.h	$a1, $a0, $a4
	ld.h	$a1, $s6, 1588
	stx.h	$a1, $a0, $a5
	ld.w	$fp, $s6, 96
	ori	$a1, $zero, 4
	ori	$a2, $zero, 4
	ori	$a4, $zero, 5
	ori	$a5, $zero, 1
	move	$a0, $s6
	ld.d	$a3, $sp, 456                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(itrans)
	jirl	$ra, $ra, 0
	ld.d	$t5, $sp, 440                   # 8-byte Folded Reload
	ldx.d	$a0, $s2, $s0
	ld.h	$a1, $s6, 1384
	slli.d	$a2, $fp, 1
	ld.d	$fp, $sp, 296                   # 8-byte Folded Reload
	addi.d	$a3, $a2, 8
	stx.h	$a1, $a0, $a3
	ld.h	$a1, $s6, 1388
	addi.d	$a4, $a2, 10
	stx.h	$a1, $a0, $a4
	ld.h	$a1, $s6, 1392
	addi.d	$a5, $a2, 12
	stx.h	$a1, $a0, $a5
	ld.h	$a1, $s6, 1396
	addi.d	$a2, $a2, 14
	stx.h	$a1, $a0, $a2
	ldx.d	$a0, $s1, $s0
	ld.h	$a1, $s6, 1448
	stx.h	$a1, $a0, $a3
	ld.h	$a1, $s6, 1452
	stx.h	$a1, $a0, $a4
	ld.h	$a1, $s6, 1456
	stx.h	$a1, $a0, $a5
	ld.h	$a1, $s6, 1460
	stx.h	$a1, $a0, $a2
	ld.d	$a0, $sp, 520                   # 8-byte Folded Reload
	ldx.d	$a0, $a0, $s0
	ld.h	$a1, $s6, 1512
	stx.h	$a1, $a0, $a3
	ld.h	$a1, $s6, 1516
	stx.h	$a1, $a0, $a4
	ld.h	$a1, $s6, 1520
	stx.h	$a1, $a0, $a5
	ld.h	$a1, $s6, 1524
	stx.h	$a1, $a0, $a2
	ld.d	$a0, $sp, 480                   # 8-byte Folded Reload
	ldx.d	$a0, $a0, $s0
	ld.d	$s0, $sp, 496                   # 8-byte Folded Reload
	ori	$s2, $zero, 1
	ld.h	$a1, $s6, 1576
	stx.h	$a1, $a0, $a3
	ld.d	$a3, $sp, 112                   # 8-byte Folded Reload
	ld.h	$a1, $s6, 1580
	stx.h	$a1, $a0, $a4
	ld.h	$a1, $s6, 1584
	stx.h	$a1, $a0, $a5
	ld.d	$a5, $sp, 336                   # 8-byte Folded Reload
	ld.h	$a1, $s6, 1588
	stx.h	$a1, $a0, $a2
	b	.LBB25_224
.LBB25_316:
	ld.w	$a0, $s6, 4
	addi.w	$s0, $zero, -1
	addi.d	$a3, $sp, 648
	move	$a1, $s0
	move	$a2, $zero
	pcaddu18i	$ra, %call36(getLuma4x4Neighbour)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s6, 4
	addi.d	$a3, $sp, 584
	move	$a1, $zero
	move	$a2, $s0
	pcaddu18i	$ra, %call36(getLuma4x4Neighbour)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s6, 4
	ori	$a1, $zero, 16
	addi.d	$a3, $sp, 528
	move	$a2, $s0
	pcaddu18i	$ra, %call36(getLuma4x4Neighbour)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s6, 4
	addi.d	$a3, $sp, 552
	move	$a1, $s0
	move	$a2, $s0
	pcaddu18i	$ra, %call36(getLuma4x4Neighbour)
	jirl	$ra, $ra, 0
	ldptr.w	$a0, $s6, 5624
	beqz	$a0, .LBB25_324
# %bb.317:
	ld.wu	$a0, $s6, 4
	ldptr.d	$a2, $s6, 5600
	ori	$a1, $zero, 408
	mul.d	$a0, $a0, $a1
	add.d	$a0, $a2, $a0
	ld.w	$a0, $a0, 356
	ld.w	$a6, $sp, 648
	beqz	$a0, .LBB25_330
# %bb.318:
	ori	$a0, $zero, 255
	ori	$a1, $zero, 255
	beqz	$a6, .LBB25_320
# %bb.319:
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	lu12i.w	$a3, 77
	ori	$a3, $a3, 1560
	ldx.d	$a1, $a1, $a3
	ld.w	$a3, $sp, 668
	ld.d	$a1, $a1, 0
	ld.w	$a4, $sp, 652
	ori	$a5, $zero, 408
	slli.d	$a3, $a3, 3
	ldx.d	$a1, $a1, $a3
	ld.w	$a3, $sp, 664
	mul.d	$a4, $a4, $a5
	add.d	$a4, $a2, $a4
	ld.w	$a4, $a4, 356
	ldx.b	$a1, $a1, $a3
	sltui	$a3, $a4, 1
	ext.w.b	$a4, $a1
	slt	$a4, $s0, $a4
	and	$a3, $a3, $a4
	sll.d	$a1, $a1, $a3
.LBB25_320:                             # %._crit_edge2276
	ld.w	$a7, $sp, 584
	beqz	$a7, .LBB25_322
# %bb.321:
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	lu12i.w	$a3, 77
	ori	$a3, $a3, 1560
	ldx.d	$a0, $a0, $a3
	ld.w	$a3, $sp, 604
	ld.d	$a0, $a0, 0
	ld.w	$a4, $sp, 588
	ori	$a5, $zero, 408
	slli.d	$a3, $a3, 3
	ldx.d	$a0, $a0, $a3
	ld.w	$a3, $sp, 600
	mul.d	$a4, $a4, $a5
	add.d	$a4, $a2, $a4
	ld.w	$a4, $a4, 356
	ldx.b	$a0, $a0, $a3
	sltui	$a3, $a4, 1
	ext.w.b	$a4, $a0
	slt	$a4, $s0, $a4
	and	$a3, $a3, $a4
	sll.d	$a0, $a0, $a3
.LBB25_322:                             # %._crit_edge2291
	ld.w	$t0, $sp, 552
	beqz	$t0, .LBB25_336
# %bb.323:
	ld.d	$a3, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a3, $a3, 0
	lu12i.w	$a4, 77
	ori	$a4, $a4, 1560
	ldx.d	$a3, $a3, $a4
	ld.w	$a4, $sp, 572
	ld.d	$a3, $a3, 0
	ld.w	$a5, $sp, 556
	ori	$t1, $zero, 408
	slli.d	$a4, $a4, 3
	ldx.d	$a3, $a3, $a4
	ld.w	$a4, $sp, 568
	mul.d	$a5, $a5, $t1
	add.d	$a5, $a2, $a5
	ld.w	$a5, $a5, 356
	ldx.b	$a3, $a3, $a4
	sltui	$a4, $a5, 1
	ext.w.b	$a5, $a3
	slt	$a5, $s0, $a5
	and	$a4, $a4, $a5
	sll.d	$a3, $a3, $a4
	b	.LBB25_337
.LBB25_324:
	ld.w	$a2, $sp, 648
	ori	$a0, $zero, 255
	ori	$a1, $zero, 255
	beqz	$a2, .LBB25_326
# %bb.325:
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	lu12i.w	$a3, 77
	ori	$a3, $a3, 1560
	ldx.d	$a1, $a1, $a3
	ld.w	$a3, $sp, 668
	ld.d	$a1, $a1, 0
	slli.d	$a3, $a3, 3
	ldx.d	$a1, $a1, $a3
	ld.w	$a3, $sp, 664
	ldx.bu	$a1, $a1, $a3
.LBB25_326:
	ld.w	$a6, $sp, 584
	beqz	$a6, .LBB25_328
# %bb.327:
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	lu12i.w	$a3, 77
	ori	$a3, $a3, 1560
	ldx.d	$a0, $a0, $a3
	ld.w	$a3, $sp, 604
	ld.d	$a0, $a0, 0
	slli.d	$a3, $a3, 3
	ldx.d	$a0, $a0, $a3
	ld.w	$a3, $sp, 600
	ldx.bu	$a0, $a0, $a3
.LBB25_328:
	ld.w	$a7, $sp, 552
	beqz	$a7, .LBB25_348
# %bb.329:
	ld.d	$a3, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a3, $a3, 0
	lu12i.w	$a4, 77
	ori	$a4, $a4, 1560
	ldx.d	$a3, $a3, $a4
	ld.w	$a4, $sp, 572
	ld.d	$a3, $a3, 0
	slli.d	$a4, $a4, 3
	ldx.d	$a3, $a3, $a4
	ld.w	$a4, $sp, 568
	ldx.bu	$a3, $a3, $a4
	b	.LBB25_349
.LBB25_330:
	ori	$a0, $zero, 255
	ori	$a1, $zero, 255
	beqz	$a6, .LBB25_332
# %bb.331:
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	lu12i.w	$a3, 77
	ori	$a3, $a3, 1560
	ldx.d	$a1, $a1, $a3
	ld.w	$a3, $sp, 668
	ld.d	$a1, $a1, 0
	ld.w	$a4, $sp, 652
	ori	$a5, $zero, 408
	slli.d	$a3, $a3, 3
	ldx.d	$a1, $a1, $a3
	ld.w	$a3, $sp, 664
	mul.d	$a4, $a4, $a5
	add.d	$a4, $a2, $a4
	ld.w	$a4, $a4, 356
	ldx.b	$a1, $a1, $a3
	sltu	$a3, $zero, $a4
	ext.w.b	$a1, $a1
	slti	$a4, $a1, 0
	or	$a3, $a3, $a4
	sra.d	$a1, $a1, $a3
.LBB25_332:                             # %._crit_edge2400
	ld.w	$a7, $sp, 584
	beqz	$a7, .LBB25_334
# %bb.333:
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	lu12i.w	$a3, 77
	ori	$a3, $a3, 1560
	ldx.d	$a0, $a0, $a3
	ld.w	$a3, $sp, 604
	ld.d	$a0, $a0, 0
	ld.w	$a4, $sp, 588
	ori	$a5, $zero, 408
	slli.d	$a3, $a3, 3
	ldx.d	$a0, $a0, $a3
	ld.w	$a3, $sp, 600
	mul.d	$a4, $a4, $a5
	add.d	$a4, $a2, $a4
	ld.w	$a4, $a4, 356
	ldx.b	$a0, $a0, $a3
	sltu	$a3, $zero, $a4
	ext.w.b	$a0, $a0
	slti	$a4, $a0, 0
	or	$a3, $a3, $a4
	sra.d	$a0, $a0, $a3
.LBB25_334:                             # %._crit_edge2415
	ld.w	$t0, $sp, 552
	beqz	$t0, .LBB25_360
# %bb.335:
	ld.d	$a3, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a3, $a3, 0
	lu12i.w	$a4, 77
	ori	$a4, $a4, 1560
	ldx.d	$a3, $a3, $a4
	ld.w	$a4, $sp, 572
	ld.d	$a3, $a3, 0
	ld.w	$a5, $sp, 556
	ori	$t1, $zero, 408
	slli.d	$a4, $a4, 3
	ldx.d	$a3, $a3, $a4
	ld.w	$a4, $sp, 568
	mul.d	$a5, $a5, $t1
	add.d	$a5, $a2, $a5
	ld.w	$a5, $a5, 356
	ldx.b	$a3, $a3, $a4
	sltu	$a4, $zero, $a5
	ext.w.b	$a3, $a3
	slti	$a5, $a3, 0
	or	$a4, $a4, $a5
	sra.d	$a3, $a3, $a4
	b	.LBB25_361
.LBB25_336:
	ori	$a3, $zero, 255
.LBB25_337:                             # %._crit_edge2306
	ld.w	$t1, $sp, 528
	beqz	$t1, .LBB25_339
# %bb.338:
	ld.d	$a3, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a3, $a3, 0
	lu12i.w	$a4, 77
	ori	$a4, $a4, 1560
	ldx.d	$a3, $a3, $a4
	ld.w	$a4, $sp, 548
	ld.d	$a3, $a3, 0
	ld.w	$a5, $sp, 532
	ori	$t2, $zero, 408
	slli.d	$a4, $a4, 3
	ldx.d	$a3, $a3, $a4
	ld.w	$a4, $sp, 544
	mul.d	$a5, $a5, $t2
	add.d	$a5, $a2, $a5
	ld.w	$a5, $a5, 356
	ldx.b	$a3, $a3, $a4
	sltui	$a4, $a5, 1
	ext.w.b	$a5, $a3
	slt	$a5, $s0, $a5
	and	$a4, $a4, $a5
	sll.d	$a3, $a3, $a4
.LBB25_339:                             # %._crit_edge2321
	ori	$a4, $zero, 255
	ori	$a5, $zero, 255
	beqz	$a6, .LBB25_341
# %bb.340:
	ld.d	$a5, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a5, $a5, 0
	lu12i.w	$a6, 77
	ori	$a6, $a6, 1560
	ldx.d	$a5, $a5, $a6
	ld.w	$a6, $sp, 668
	ld.d	$a5, $a5, 8
	ld.w	$t2, $sp, 652
	ori	$t3, $zero, 408
	slli.d	$a6, $a6, 3
	ldx.d	$a5, $a5, $a6
	ld.w	$a6, $sp, 664
	mul.d	$t2, $t2, $t3
	add.d	$t2, $a2, $t2
	ld.w	$t2, $t2, 356
	ldx.b	$a5, $a5, $a6
	sltui	$a6, $t2, 1
	ext.w.b	$t2, $a5
	slt	$t2, $s0, $t2
	and	$a6, $a6, $t2
	sll.d	$a5, $a5, $a6
.LBB25_341:                             # %._crit_edge2336
	beqz	$a7, .LBB25_343
# %bb.342:
	ld.d	$a4, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a4, $a4, 0
	lu12i.w	$a6, 77
	ori	$a6, $a6, 1560
	ldx.d	$a4, $a4, $a6
	ld.w	$a6, $sp, 604
	ld.d	$a4, $a4, 8
	ld.w	$a7, $sp, 588
	ori	$t2, $zero, 408
	slli.d	$a6, $a6, 3
	ldx.d	$a4, $a4, $a6
	ld.w	$a6, $sp, 600
	mul.d	$a7, $a7, $t2
	add.d	$a7, $a2, $a7
	ld.w	$a7, $a7, 356
	ldx.b	$a4, $a4, $a6
	sltui	$a6, $a7, 1
	ext.w.b	$a7, $a4
	slt	$a7, $s0, $a7
	and	$a6, $a6, $a7
	sll.d	$a4, $a4, $a6
.LBB25_343:                             # %._crit_edge2352
	beqz	$t0, .LBB25_345
# %bb.344:
	ld.d	$a6, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a6, $a6, 0
	lu12i.w	$a7, 77
	ori	$a7, $a7, 1560
	ldx.d	$a6, $a6, $a7
	ld.w	$a7, $sp, 572
	ld.d	$a6, $a6, 8
	ld.w	$t0, $sp, 556
	ori	$t2, $zero, 408
	slli.d	$a7, $a7, 3
	ldx.d	$a6, $a6, $a7
	ld.w	$a7, $sp, 568
	mul.d	$t0, $t0, $t2
	add.d	$t0, $a2, $t0
	ld.w	$t0, $t0, 356
	ldx.b	$a6, $a6, $a7
	sltui	$a7, $t0, 1
	ext.w.b	$t0, $a6
	slt	$t0, $s0, $t0
	and	$a7, $a7, $t0
	sll.d	$a6, $a6, $a7
	b	.LBB25_346
.LBB25_345:
	ori	$a6, $zero, 255
.LBB25_346:                             # %._crit_edge2368
	beqz	$t1, .LBB25_372
# %bb.347:
	ld.d	$a6, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a6, $a6, 0
	lu12i.w	$a7, 77
	ori	$a7, $a7, 1560
	ldx.d	$a6, $a6, $a7
	ld.w	$a7, $sp, 548
	ld.d	$a6, $a6, 8
	ld.w	$t0, $sp, 532
	ori	$t1, $zero, 408
	slli.d	$a7, $a7, 3
	ldx.d	$a6, $a6, $a7
	ld.w	$a7, $sp, 544
	mul.d	$t0, $t0, $t1
	add.d	$a2, $a2, $t0
	ld.w	$a2, $a2, 356
	ldx.b	$a6, $a6, $a7
	sltui	$a2, $a2, 1
	ext.w.b	$a7, $a6
	slt	$a7, $s0, $a7
	and	$a2, $a2, $a7
	sll.d	$a6, $a6, $a2
	b	.LBB25_372
.LBB25_348:
	ori	$a3, $zero, 255
.LBB25_349:
	ld.w	$t0, $sp, 528
	beqz	$t0, .LBB25_351
# %bb.350:
	ld.d	$a3, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a3, $a3, 0
	lu12i.w	$a4, 77
	ori	$a4, $a4, 1560
	ldx.d	$a3, $a3, $a4
	ld.w	$a4, $sp, 548
	ld.d	$a3, $a3, 0
	slli.d	$a4, $a4, 3
	ldx.d	$a3, $a3, $a4
	ld.w	$a4, $sp, 544
	ldx.bu	$a3, $a3, $a4
.LBB25_351:
	ori	$a4, $zero, 255
	ori	$a5, $zero, 255
	beqz	$a2, .LBB25_353
# %bb.352:
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a2, $a2, 0
	lu12i.w	$a5, 77
	ori	$a5, $a5, 1560
	ldx.d	$a2, $a2, $a5
	ld.w	$a5, $sp, 668
	ld.d	$a2, $a2, 8
	slli.d	$a5, $a5, 3
	ldx.d	$a2, $a2, $a5
	ld.w	$a5, $sp, 664
	ldx.bu	$a5, $a2, $a5
.LBB25_353:
	beqz	$a6, .LBB25_355
# %bb.354:
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a2, $a2, 0
	lu12i.w	$a4, 77
	ori	$a4, $a4, 1560
	ldx.d	$a2, $a2, $a4
	ld.w	$a4, $sp, 604
	ld.d	$a2, $a2, 8
	slli.d	$a4, $a4, 3
	ldx.d	$a2, $a2, $a4
	ld.w	$a4, $sp, 600
	ldx.bu	$a4, $a2, $a4
.LBB25_355:
	beqz	$a7, .LBB25_357
# %bb.356:
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a2, $a2, 0
	lu12i.w	$a6, 77
	ori	$a6, $a6, 1560
	ldx.d	$a2, $a2, $a6
	ld.w	$a6, $sp, 572
	ld.d	$a2, $a2, 8
	slli.d	$a6, $a6, 3
	ldx.d	$a2, $a2, $a6
	ld.w	$a6, $sp, 568
	ldx.bu	$a6, $a2, $a6
	b	.LBB25_358
.LBB25_357:
	ori	$a6, $zero, 255
.LBB25_358:
	beqz	$t0, .LBB25_372
# %bb.359:
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a2, $a2, 0
	lu12i.w	$a6, 77
	ori	$a6, $a6, 1560
	ldx.d	$a2, $a2, $a6
	ld.w	$a6, $sp, 548
	ld.d	$a2, $a2, 8
	slli.d	$a6, $a6, 3
	ldx.d	$a2, $a2, $a6
	ld.w	$a6, $sp, 544
	ldx.bu	$a6, $a2, $a6
	b	.LBB25_372
.LBB25_360:
	ori	$a3, $zero, 255
.LBB25_361:                             # %._crit_edge2430
	ld.w	$t1, $sp, 528
	beqz	$t1, .LBB25_363
# %bb.362:
	ld.d	$a3, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a3, $a3, 0
	lu12i.w	$a4, 77
	ori	$a4, $a4, 1560
	ldx.d	$a3, $a3, $a4
	ld.w	$a4, $sp, 548
	ld.d	$a3, $a3, 0
	ld.w	$a5, $sp, 532
	ori	$t2, $zero, 408
	slli.d	$a4, $a4, 3
	ldx.d	$a3, $a3, $a4
	ld.w	$a4, $sp, 544
	mul.d	$a5, $a5, $t2
	add.d	$a5, $a2, $a5
	ld.w	$a5, $a5, 356
	ldx.b	$a3, $a3, $a4
	sltu	$a4, $zero, $a5
	ext.w.b	$a3, $a3
	slti	$a5, $a3, 0
	or	$a4, $a4, $a5
	sra.d	$a3, $a3, $a4
.LBB25_363:                             # %._crit_edge2445
	ori	$a4, $zero, 255
	ori	$a5, $zero, 255
	beqz	$a6, .LBB25_365
# %bb.364:
	ld.d	$a5, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a5, $a5, 0
	lu12i.w	$a6, 77
	ori	$a6, $a6, 1560
	ldx.d	$a5, $a5, $a6
	ld.w	$a6, $sp, 668
	ld.d	$a5, $a5, 8
	ld.w	$t2, $sp, 652
	ori	$t3, $zero, 408
	slli.d	$a6, $a6, 3
	ldx.d	$a5, $a5, $a6
	ld.w	$a6, $sp, 664
	mul.d	$t2, $t2, $t3
	add.d	$t2, $a2, $t2
	ld.w	$t2, $t2, 356
	ldx.b	$a5, $a5, $a6
	sltu	$a6, $zero, $t2
	ext.w.b	$a5, $a5
	slti	$t2, $a5, 0
	or	$a6, $a6, $t2
	sra.d	$a5, $a5, $a6
.LBB25_365:                             # %._crit_edge2460
	beqz	$a7, .LBB25_367
# %bb.366:
	ld.d	$a4, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a4, $a4, 0
	lu12i.w	$a6, 77
	ori	$a6, $a6, 1560
	ldx.d	$a4, $a4, $a6
	ld.w	$a6, $sp, 604
	ld.d	$a4, $a4, 8
	ld.w	$a7, $sp, 588
	ori	$t2, $zero, 408
	slli.d	$a6, $a6, 3
	ldx.d	$a4, $a4, $a6
	ld.w	$a6, $sp, 600
	mul.d	$a7, $a7, $t2
	add.d	$a7, $a2, $a7
	ld.w	$a7, $a7, 356
	ldx.b	$a4, $a4, $a6
	sltu	$a6, $zero, $a7
	ext.w.b	$a4, $a4
	slti	$a7, $a4, 0
	or	$a6, $a6, $a7
	sra.d	$a4, $a4, $a6
.LBB25_367:                             # %._crit_edge2476
	beqz	$t0, .LBB25_369
# %bb.368:
	ld.d	$a6, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a6, $a6, 0
	lu12i.w	$a7, 77
	ori	$a7, $a7, 1560
	ldx.d	$a6, $a6, $a7
	ld.w	$a7, $sp, 572
	ld.d	$a6, $a6, 8
	ld.w	$t0, $sp, 556
	ori	$t2, $zero, 408
	slli.d	$a7, $a7, 3
	ldx.d	$a6, $a6, $a7
	ld.w	$a7, $sp, 568
	mul.d	$t0, $t0, $t2
	add.d	$t0, $a2, $t0
	ld.w	$t0, $t0, 356
	ldx.b	$a6, $a6, $a7
	sltu	$a7, $zero, $t0
	ext.w.b	$a6, $a6
	slti	$t0, $a6, 0
	or	$a7, $a7, $t0
	sra.d	$a6, $a6, $a7
	b	.LBB25_370
.LBB25_369:
	ori	$a6, $zero, 255
.LBB25_370:                             # %._crit_edge2492
	beqz	$t1, .LBB25_372
# %bb.371:
	ld.d	$a6, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a6, $a6, 0
	lu12i.w	$a7, 77
	ori	$a7, $a7, 1560
	ldx.d	$a6, $a6, $a7
	ld.w	$a7, $sp, 548
	ld.d	$a6, $a6, 8
	ld.w	$t0, $sp, 532
	ori	$t1, $zero, 408
	slli.d	$a7, $a7, 3
	ldx.d	$a6, $a6, $a7
	ld.w	$a7, $sp, 544
	mul.d	$t0, $t0, $t1
	add.d	$a2, $a2, $t0
	ld.w	$a2, $a2, 356
	ldx.b	$a6, $a6, $a7
	sltu	$a2, $zero, $a2
	ext.w.b	$a6, $a6
	slti	$a7, $a6, 0
	or	$a2, $a2, $a7
	sra.d	$a6, $a6, $a2
.LBB25_372:                             # %._crit_edge2384
	ext.w.b	$a2, $a1
	or	$a1, $a1, $a0
	ext.w.b	$a1, $a1
	ext.w.b	$a0, $a0
	slt	$a1, $s0, $a1
	slt	$a7, $a2, $a0
	masknez	$t0, $a0, $a7
	maskeqz	$a7, $a2, $a7
	or	$a7, $a7, $t0
	slt	$t0, $a0, $a2
	masknez	$a0, $a0, $t0
	maskeqz	$a2, $a2, $t0
	or	$a0, $a2, $a0
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a7, $a1
	or	$a0, $a1, $a0
	slt	$a1, $s0, $a0
	ext.w.b	$a2, $a3
	slt	$a3, $s0, $a2
	slt	$a7, $a0, $a2
	maskeqz	$t0, $a0, $a7
	masknez	$a7, $a2, $a7
	or	$a7, $t0, $a7
	slt	$t0, $a2, $a0
	maskeqz	$a0, $a0, $t0
	masknez	$a2, $a2, $t0
	or	$a0, $a0, $a2
	masknez	$a2, $a0, $a3
	maskeqz	$a3, $a7, $a3
	or	$a2, $a3, $a2
	maskeqz	$a2, $a2, $a1
	masknez	$a0, $a0, $a1
	or	$a7, $a2, $a0
	ext.w.b	$a0, $a5
	or	$a1, $a5, $a4
	ext.w.b	$a1, $a1
	ext.w.b	$a2, $a4
	slt	$a1, $s0, $a1
	slt	$a3, $a0, $a2
	masknez	$a4, $a2, $a3
	maskeqz	$a3, $a0, $a3
	or	$a3, $a3, $a4
	slt	$a4, $a2, $a0
	masknez	$a2, $a2, $a4
	maskeqz	$a0, $a0, $a4
	or	$a0, $a0, $a2
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a3, $a1
	or	$a0, $a1, $a0
	slt	$a1, $s0, $a0
	ext.w.b	$a2, $a6
	slt	$a3, $s0, $a2
	slt	$a4, $a0, $a2
	maskeqz	$a5, $a0, $a4
	masknez	$a4, $a2, $a4
	or	$a4, $a5, $a4
	slt	$a5, $a2, $a0
	maskeqz	$a0, $a0, $a5
	masknez	$a2, $a2, $a5
	or	$a0, $a0, $a2
	masknez	$a2, $a0, $a3
	maskeqz	$a3, $a4, $a3
	or	$a2, $a3, $a2
	maskeqz	$a2, $a2, $a1
	masknez	$a0, $a0, $a1
	st.d	$a7, $sp, 376                   # 8-byte Folded Spill
	andi	$a1, $a7, 128
	or	$a3, $a2, $a0
	st.d	$a3, $sp, 352                   # 8-byte Folded Spill
	bnez	$a1, .LBB25_374
# %bb.373:
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	lu12i.w	$a1, 77
	ori	$a1, $a1, 1560
	add.d	$a2, $a0, $a1
	ldx.d	$a4, $a0, $a1
	ld.d	$a5, $a2, 24
	ori	$a0, $zero, 16
	st.d	$a0, $sp, 8
	addi.d	$a1, $sp, 580
	st.d	$a0, $sp, 0
	move	$a0, $s6
	ld.d	$a2, $sp, 376                   # 8-byte Folded Reload
	move	$a3, $zero
	move	$a6, $zero
	move	$a7, $zero
	pcaddu18i	$ra, %call36(SetMotionVectorPredictor)
	jirl	$ra, $ra, 0
	ld.d	$a3, $sp, 352                   # 8-byte Folded Reload
.LBB25_374:
	andi	$a0, $a3, 128
	bnez	$a0, .LBB25_376
# %bb.375:
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	lu12i.w	$a1, 77
	ori	$a1, $a1, 1560
	add.d	$a2, $a0, $a1
	ldx.d	$a4, $a0, $a1
	ld.d	$a5, $a2, 24
	ori	$a0, $zero, 16
	st.d	$a0, $sp, 8
	addi.d	$a1, $sp, 576
	move	$a2, $a3
	ori	$a3, $zero, 1
	st.d	$a0, $sp, 0
	move	$a0, $s6
	move	$a6, $zero
	move	$a7, $zero
	pcaddu18i	$ra, %call36(SetMotionVectorPredictor)
	jirl	$ra, $ra, 0
	ld.hu	$a0, $sp, 576
	st.d	$a0, $sp, 296                   # 8-byte Folded Spill
	ld.hu	$a0, $sp, 578
	st.d	$a0, $sp, 304                   # 8-byte Folded Spill
	b	.LBB25_377
.LBB25_376:
	st.d	$zero, $sp, 304                 # 8-byte Folded Spill
	st.d	$zero, $sp, 296                 # 8-byte Folded Spill
.LBB25_377:
	ld.d	$a1, $sp, 288                   # 8-byte Folded Reload
	ld.hu	$a0, $sp, 580
	st.d	$a0, $sp, 272                   # 8-byte Folded Spill
	ld.hu	$a0, $sp, 582
	st.d	$a0, $sp, 280                   # 8-byte Folded Spill
	b	.LBB25_63
.Lfunc_end25:
	.size	decode_one_macroblock, .Lfunc_end25-decode_one_macroblock
                                        # -- End function
	.type	SNGL_SCAN,@object               # @SNGL_SCAN
	.section	.rodata,"a",@progbits
	.globl	SNGL_SCAN
SNGL_SCAN:
	.space	2
	.asciz	"\001"
	.ascii	"\000\001"
	.ascii	"\000\002"
	.space	2,1
	.asciz	"\002"
	.asciz	"\003"
	.ascii	"\002\001"
	.ascii	"\001\002"
	.ascii	"\000\003"
	.ascii	"\001\003"
	.space	2,2
	.ascii	"\003\001"
	.ascii	"\003\002"
	.ascii	"\002\003"
	.space	2,3
	.size	SNGL_SCAN, 32

	.type	FIELD_SCAN,@object              # @FIELD_SCAN
	.globl	FIELD_SCAN
FIELD_SCAN:
	.space	2
	.ascii	"\000\001"
	.asciz	"\001"
	.ascii	"\000\002"
	.ascii	"\000\003"
	.space	2,1
	.ascii	"\001\002"
	.ascii	"\001\003"
	.asciz	"\002"
	.ascii	"\002\001"
	.space	2,2
	.ascii	"\002\003"
	.asciz	"\003"
	.ascii	"\003\001"
	.ascii	"\003\002"
	.space	2,3
	.size	FIELD_SCAN, 32

	.type	NCBP,@object                    # @NCBP
	.globl	NCBP
NCBP:
	.asciz	"\017"
	.ascii	"\000\001"
	.ascii	"\007\002"
	.ascii	"\013\004"
	.ascii	"\r\b"
	.ascii	"\016\003"
	.ascii	"\003\005"
	.ascii	"\005\n"
	.ascii	"\n\f"
	.ascii	"\f\017"
	.ascii	"\001\007"
	.ascii	"\002\013"
	.ascii	"\004\r"
	.ascii	"\b\016"
	.space	2,6
	.space	2,9
	.space	64
	.asciz	"/"
	.ascii	"\037\020"
	.ascii	"\017\001"
	.ascii	"\000\002"
	.ascii	"\027\004"
	.ascii	"\033\b"
	.ascii	"\035 "
	.ascii	"\036\003"
	.ascii	"\007\005"
	.ascii	"\013\n"
	.ascii	"\r\f"
	.ascii	"\016\017"
	.ascii	"'/"
	.ascii	"+\007"
	.ascii	"-\013"
	.ascii	".\r"
	.ascii	"\020\016"
	.ascii	"\003\006"
	.ascii	"\005\t"
	.ascii	"\n\037"
	.ascii	"\f#"
	.ascii	"\023%"
	.ascii	"\025*"
	.ascii	"\032,"
	.ascii	"\034!"
	.ascii	"#\""
	.ascii	"%$"
	.ascii	"*("
	.ascii	",'"
	.ascii	"\001+"
	.ascii	"\002-"
	.ascii	"\004."
	.ascii	"\b\021"
	.ascii	"\021\022"
	.ascii	"\022\024"
	.ascii	"\024\030"
	.ascii	"\030\023"
	.ascii	"\006\025"
	.ascii	"\t\032"
	.ascii	"\026\034"
	.ascii	"\031\027"
	.ascii	" \033"
	.ascii	"!\035"
	.ascii	"\"\036"
	.ascii	"$\026"
	.ascii	"(\031"
	.space	2,38
	.space	2,41
	.size	NCBP, 192

	.type	BLOCK_STEP,@object              # @BLOCK_STEP
	.globl	BLOCK_STEP
	.p2align	2, 0x0
BLOCK_STEP:
	.space	8
	.word	4                               # 0x4
	.word	4                               # 0x4
	.word	4                               # 0x4
	.word	2                               # 0x2
	.word	2                               # 0x2
	.word	4                               # 0x4
	.word	2                               # 0x2
	.word	2                               # 0x2
	.word	2                               # 0x2
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	1                               # 0x1
	.word	1                               # 0x1
	.size	BLOCK_STEP, 64

	.type	dequant_coef,@object            # @dequant_coef
	.globl	dequant_coef
	.p2align	2, 0x0
dequant_coef:
	.word	10                              # 0xa
	.word	13                              # 0xd
	.word	10                              # 0xa
	.word	13                              # 0xd
	.word	13                              # 0xd
	.word	16                              # 0x10
	.word	13                              # 0xd
	.word	16                              # 0x10
	.word	10                              # 0xa
	.word	13                              # 0xd
	.word	10                              # 0xa
	.word	13                              # 0xd
	.word	13                              # 0xd
	.word	16                              # 0x10
	.word	13                              # 0xd
	.word	16                              # 0x10
	.word	11                              # 0xb
	.word	14                              # 0xe
	.word	11                              # 0xb
	.word	14                              # 0xe
	.word	14                              # 0xe
	.word	18                              # 0x12
	.word	14                              # 0xe
	.word	18                              # 0x12
	.word	11                              # 0xb
	.word	14                              # 0xe
	.word	11                              # 0xb
	.word	14                              # 0xe
	.word	14                              # 0xe
	.word	18                              # 0x12
	.word	14                              # 0xe
	.word	18                              # 0x12
	.word	13                              # 0xd
	.word	16                              # 0x10
	.word	13                              # 0xd
	.word	16                              # 0x10
	.word	16                              # 0x10
	.word	20                              # 0x14
	.word	16                              # 0x10
	.word	20                              # 0x14
	.word	13                              # 0xd
	.word	16                              # 0x10
	.word	13                              # 0xd
	.word	16                              # 0x10
	.word	16                              # 0x10
	.word	20                              # 0x14
	.word	16                              # 0x10
	.word	20                              # 0x14
	.word	14                              # 0xe
	.word	18                              # 0x12
	.word	14                              # 0xe
	.word	18                              # 0x12
	.word	18                              # 0x12
	.word	23                              # 0x17
	.word	18                              # 0x12
	.word	23                              # 0x17
	.word	14                              # 0xe
	.word	18                              # 0x12
	.word	14                              # 0xe
	.word	18                              # 0x12
	.word	18                              # 0x12
	.word	23                              # 0x17
	.word	18                              # 0x12
	.word	23                              # 0x17
	.word	16                              # 0x10
	.word	20                              # 0x14
	.word	16                              # 0x10
	.word	20                              # 0x14
	.word	20                              # 0x14
	.word	25                              # 0x19
	.word	20                              # 0x14
	.word	25                              # 0x19
	.word	16                              # 0x10
	.word	20                              # 0x14
	.word	16                              # 0x10
	.word	20                              # 0x14
	.word	20                              # 0x14
	.word	25                              # 0x19
	.word	20                              # 0x14
	.word	25                              # 0x19
	.word	18                              # 0x12
	.word	23                              # 0x17
	.word	18                              # 0x12
	.word	23                              # 0x17
	.word	23                              # 0x17
	.word	29                              # 0x1d
	.word	23                              # 0x17
	.word	29                              # 0x1d
	.word	18                              # 0x12
	.word	23                              # 0x17
	.word	18                              # 0x12
	.word	23                              # 0x17
	.word	23                              # 0x17
	.word	29                              # 0x1d
	.word	23                              # 0x17
	.word	29                              # 0x1d
	.size	dequant_coef, 384

	.type	QP_SCALE_CR,@object             # @QP_SCALE_CR
	.globl	QP_SCALE_CR
QP_SCALE_CR:
	.ascii	"\000\001\002\003\004\005\006\007\b\t\n\013\f\r\016\017\020\021\022\023\024\025\026\027\030\031\032\033\034\035\035\036\037  !\"\"##$$%%%&&&''''"
	.size	QP_SCALE_CR, 52

	.type	SNGL_SCAN8x8,@object            # @SNGL_SCAN8x8
	.globl	SNGL_SCAN8x8
SNGL_SCAN8x8:
	.space	2
	.asciz	"\001"
	.ascii	"\000\001"
	.ascii	"\000\002"
	.space	2,1
	.asciz	"\002"
	.asciz	"\003"
	.ascii	"\002\001"
	.ascii	"\001\002"
	.ascii	"\000\003"
	.ascii	"\000\004"
	.ascii	"\001\003"
	.space	2,2
	.ascii	"\003\001"
	.asciz	"\004"
	.asciz	"\005"
	.ascii	"\004\001"
	.ascii	"\003\002"
	.ascii	"\002\003"
	.ascii	"\001\004"
	.ascii	"\000\005"
	.ascii	"\000\006"
	.ascii	"\001\005"
	.ascii	"\002\004"
	.space	2,3
	.ascii	"\004\002"
	.ascii	"\005\001"
	.asciz	"\006"
	.asciz	"\007"
	.ascii	"\006\001"
	.ascii	"\005\002"
	.ascii	"\004\003"
	.ascii	"\003\004"
	.ascii	"\002\005"
	.ascii	"\001\006"
	.ascii	"\000\007"
	.ascii	"\001\007"
	.ascii	"\002\006"
	.ascii	"\003\005"
	.space	2,4
	.ascii	"\005\003"
	.ascii	"\006\002"
	.ascii	"\007\001"
	.ascii	"\007\002"
	.ascii	"\006\003"
	.ascii	"\005\004"
	.ascii	"\004\005"
	.ascii	"\003\006"
	.ascii	"\002\007"
	.ascii	"\003\007"
	.ascii	"\004\006"
	.space	2,5
	.ascii	"\006\004"
	.ascii	"\007\003"
	.ascii	"\007\004"
	.ascii	"\006\005"
	.ascii	"\005\006"
	.ascii	"\004\007"
	.ascii	"\005\007"
	.space	2,6
	.ascii	"\007\005"
	.ascii	"\007\006"
	.ascii	"\006\007"
	.space	2,7
	.size	SNGL_SCAN8x8, 128

	.type	FIELD_SCAN8x8,@object           # @FIELD_SCAN8x8
	.globl	FIELD_SCAN8x8
FIELD_SCAN8x8:
	.space	2
	.ascii	"\000\001"
	.ascii	"\000\002"
	.asciz	"\001"
	.space	2,1
	.ascii	"\000\003"
	.ascii	"\000\004"
	.ascii	"\001\002"
	.asciz	"\002"
	.ascii	"\001\003"
	.ascii	"\000\005"
	.ascii	"\000\006"
	.ascii	"\000\007"
	.ascii	"\001\004"
	.ascii	"\002\001"
	.asciz	"\003"
	.space	2,2
	.ascii	"\001\005"
	.ascii	"\001\006"
	.ascii	"\001\007"
	.ascii	"\002\003"
	.ascii	"\003\001"
	.asciz	"\004"
	.ascii	"\003\002"
	.ascii	"\002\004"
	.ascii	"\002\005"
	.ascii	"\002\006"
	.ascii	"\002\007"
	.space	2,3
	.ascii	"\004\001"
	.asciz	"\005"
	.ascii	"\004\002"
	.ascii	"\003\004"
	.ascii	"\003\005"
	.ascii	"\003\006"
	.ascii	"\003\007"
	.ascii	"\004\003"
	.ascii	"\005\001"
	.asciz	"\006"
	.ascii	"\005\002"
	.space	2,4
	.ascii	"\004\005"
	.ascii	"\004\006"
	.ascii	"\004\007"
	.ascii	"\005\003"
	.ascii	"\006\001"
	.ascii	"\006\002"
	.ascii	"\005\004"
	.space	2,5
	.ascii	"\005\006"
	.ascii	"\005\007"
	.ascii	"\006\003"
	.asciz	"\007"
	.ascii	"\007\001"
	.ascii	"\006\004"
	.ascii	"\006\005"
	.space	2,6
	.ascii	"\006\007"
	.ascii	"\007\002"
	.ascii	"\007\003"
	.ascii	"\007\004"
	.ascii	"\007\005"
	.ascii	"\007\006"
	.space	2,7
	.size	FIELD_SCAN8x8, 128

	.type	SCAN_YUV422,@object             # @SCAN_YUV422
	.globl	SCAN_YUV422
SCAN_YUV422:
	.space	2
	.ascii	"\000\001"
	.asciz	"\001"
	.ascii	"\000\002"
	.ascii	"\000\003"
	.space	2,1
	.ascii	"\001\002"
	.ascii	"\001\003"
	.size	SCAN_YUV422, 16

	.type	subblk_offset_x,@object         # @subblk_offset_x
	.globl	subblk_offset_x
subblk_offset_x:
	.ascii	"\000\004\000\004"
	.ascii	"\000\004\000\004"
	.space	4
	.space	4
	.space	4
	.space	4
	.space	4
	.space	4
	.ascii	"\000\004\000\004"
	.ascii	"\000\004\000\004"
	.ascii	"\000\004\000\004"
	.ascii	"\000\004\000\004"
	.space	4
	.space	4
	.space	4
	.space	4
	.ascii	"\000\004\000\004"
	.ascii	"\b\f\b\f"
	.ascii	"\000\004\000\004"
	.ascii	"\b\f\b\f"
	.ascii	"\000\004\000\004"
	.ascii	"\b\f\b\f"
	.ascii	"\000\004\000\004"
	.ascii	"\b\f\b\f"
	.size	subblk_offset_x, 96

	.type	subblk_offset_y,@object         # @subblk_offset_y
	.globl	subblk_offset_y
subblk_offset_y:
	.ascii	"\000\000\004\004"
	.ascii	"\000\000\004\004"
	.space	4
	.space	4
	.space	4
	.space	4
	.space	4
	.space	4
	.ascii	"\000\000\004\004"
	.ascii	"\b\b\f\f"
	.ascii	"\000\000\004\004"
	.ascii	"\b\b\f\f"
	.space	4
	.space	4
	.space	4
	.space	4
	.ascii	"\000\000\004\004"
	.ascii	"\000\000\004\004"
	.ascii	"\b\b\f\f"
	.ascii	"\b\b\f\f"
	.ascii	"\000\000\004\004"
	.ascii	"\000\000\004\004"
	.ascii	"\b\b\f\f"
	.ascii	"\b\b\f\f"
	.size	subblk_offset_y, 96

	.type	block8x8_idx,@object            # @block8x8_idx
	.data
	.globl	block8x8_idx
	.p2align	2, 0x0
block8x8_idx:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.space	16
	.space	16
	.space	16
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	2                               # 0x2
	.word	3                               # 0x3
	.space	16
	.space	16
	.space	16
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	2                               # 0x2
	.word	2                               # 0x2
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	3                               # 0x3
	.word	3                               # 0x3
	.word	3                               # 0x3
	.size	block8x8_idx, 192

	.type	PicPos,@object                  # @PicPos
	.comm	PicPos,8,8
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"maximum number of supported slices exceeded, please recompile with increased value for MAX_NUM_SLICES"
	.size	.L.str, 102

	.type	nal_startcode_follows,@object   # @nal_startcode_follows
	.comm	nal_startcode_follows,8,8
	.type	active_pps,@object              # @active_pps
	.comm	active_pps,8,8
	.type	interpret_mb_mode_B.offset2pdir16x16,@object # @interpret_mb_mode_B.offset2pdir16x16
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
interpret_mb_mode_B.offset2pdir16x16:
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.space	32
	.size	interpret_mb_mode_B.offset2pdir16x16, 48

	.type	interpret_mb_mode_B.offset2pdir16x8,@object # @interpret_mb_mode_B.offset2pdir16x8
	.p2align	2, 0x0
interpret_mb_mode_B.offset2pdir16x8:
	.space	8
	.space	8
	.space	8
	.space	8
	.space	8
	.space	8
	.word	1                               # 0x1
	.word	1                               # 0x1
	.space	8
	.word	0                               # 0x0
	.word	1                               # 0x1
	.space	8
	.word	1                               # 0x1
	.word	0                               # 0x0
	.space	8
	.word	0                               # 0x0
	.word	2                               # 0x2
	.space	8
	.word	1                               # 0x1
	.word	2                               # 0x2
	.space	8
	.word	2                               # 0x2
	.word	0                               # 0x0
	.space	8
	.word	2                               # 0x2
	.word	1                               # 0x1
	.space	8
	.word	2                               # 0x2
	.word	2                               # 0x2
	.space	8
	.size	interpret_mb_mode_B.offset2pdir16x8, 176

	.type	interpret_mb_mode_B.offset2pdir8x16,@object # @interpret_mb_mode_B.offset2pdir8x16
	.p2align	2, 0x0
interpret_mb_mode_B.offset2pdir8x16:
	.space	8
	.space	8
	.space	8
	.space	8
	.space	8
	.space	8
	.space	8
	.word	1                               # 0x1
	.word	1                               # 0x1
	.space	8
	.word	0                               # 0x0
	.word	1                               # 0x1
	.space	8
	.word	1                               # 0x1
	.word	0                               # 0x0
	.space	8
	.word	0                               # 0x0
	.word	2                               # 0x2
	.space	8
	.word	1                               # 0x1
	.word	2                               # 0x2
	.space	8
	.word	2                               # 0x2
	.word	0                               # 0x0
	.space	8
	.word	2                               # 0x2
	.word	1                               # 0x1
	.space	8
	.word	2                               # 0x2
	.word	2                               # 0x2
	.size	interpret_mb_mode_B.offset2pdir8x16, 176

	.type	.L__const.interpret_mb_mode_SI.ICBPTAB,@object # @__const.interpret_mb_mode_SI.ICBPTAB
	.p2align	2, 0x0
.L__const.interpret_mb_mode_SI.ICBPTAB:
	.word	0                               # 0x0
	.word	16                              # 0x10
	.word	32                              # 0x20
	.word	15                              # 0xf
	.word	31                              # 0x1f
	.word	47                              # 0x2f
	.size	.L__const.interpret_mb_mode_SI.ICBPTAB, 24

	.type	SetB8Mode.p_v2b8,@object        # @SetB8Mode.p_v2b8
	.p2align	2, 0x0
SetB8Mode.p_v2b8:
	.word	4                               # 0x4
	.word	5                               # 0x5
	.word	6                               # 0x6
	.word	7                               # 0x7
	.word	11                              # 0xb
	.size	SetB8Mode.p_v2b8, 20

	.type	SetB8Mode.p_v2pd,@object        # @SetB8Mode.p_v2pd
	.p2align	2, 0x0
SetB8Mode.p_v2pd:
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	4294967295                      # 0xffffffff
	.size	SetB8Mode.p_v2pd, 20

	.type	SetB8Mode.b_v2b8,@object        # @SetB8Mode.b_v2b8
	.p2align	2, 0x0
SetB8Mode.b_v2b8:
	.word	0                               # 0x0
	.word	4                               # 0x4
	.word	4                               # 0x4
	.word	4                               # 0x4
	.word	5                               # 0x5
	.word	6                               # 0x6
	.word	5                               # 0x5
	.word	6                               # 0x6
	.word	5                               # 0x5
	.word	6                               # 0x6
	.word	7                               # 0x7
	.word	7                               # 0x7
	.word	7                               # 0x7
	.word	11                              # 0xb
	.size	SetB8Mode.b_v2b8, 56

	.type	SetB8Mode.b_v2pd,@object        # @SetB8Mode.b_v2pd
	.p2align	2, 0x0
SetB8Mode.b_v2pd:
	.word	2                               # 0x2
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	2                               # 0x2
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	4294967295                      # 0xffffffff
	.size	SetB8Mode.b_v2pd, 56

	.type	active_sps,@object              # @active_sps
	.comm	active_sps,8,8
	.type	.L.str.2,@object                # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"illegal chroma intra pred mode!\n"
	.size	.L.str.2, 33

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"temporal direct error\ncolocated block has ref that is unavailable"
	.size	.L.str.3, 66

	.type	predict_nnz_chroma.j_off_tab,@object # @predict_nnz_chroma.j_off_tab
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
predict_nnz_chroma.j_off_tab:
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	4                               # 0x4
	.word	4                               # 0x4
	.word	4                               # 0x4
	.word	4                               # 0x4
	.word	8                               # 0x8
	.word	8                               # 0x8
	.word	8                               # 0x8
	.word	8                               # 0x8
	.size	predict_nnz_chroma.j_off_tab, 48

	.type	readCoeff4x4_CAVLC.incVlc,@object # @readCoeff4x4_CAVLC.incVlc
	.p2align	2, 0x0
readCoeff4x4_CAVLC.incVlc:
	.word	0                               # 0x0
	.word	3                               # 0x3
	.word	6                               # 0x6
	.word	12                              # 0xc
	.word	24                              # 0x18
	.word	48                              # 0x30
	.word	32768                           # 0x8000
	.size	readCoeff4x4_CAVLC.incVlc, 28

	.type	.L.str.4,@object                # @.str.4
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.4:
	.asciz	"readCoeff4x4_CAVLC: invalid block type"
	.size	.L.str.4, 39

	.type	dequant_coef8,@object           # @dequant_coef8
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
dequant_coef8:
	.word	20                              # 0x14
	.word	19                              # 0x13
	.word	25                              # 0x19
	.word	19                              # 0x13
	.word	20                              # 0x14
	.word	19                              # 0x13
	.word	25                              # 0x19
	.word	19                              # 0x13
	.word	19                              # 0x13
	.word	18                              # 0x12
	.word	24                              # 0x18
	.word	18                              # 0x12
	.word	19                              # 0x13
	.word	18                              # 0x12
	.word	24                              # 0x18
	.word	18                              # 0x12
	.word	25                              # 0x19
	.word	24                              # 0x18
	.word	32                              # 0x20
	.word	24                              # 0x18
	.word	25                              # 0x19
	.word	24                              # 0x18
	.word	32                              # 0x20
	.word	24                              # 0x18
	.word	19                              # 0x13
	.word	18                              # 0x12
	.word	24                              # 0x18
	.word	18                              # 0x12
	.word	19                              # 0x13
	.word	18                              # 0x12
	.word	24                              # 0x18
	.word	18                              # 0x12
	.word	20                              # 0x14
	.word	19                              # 0x13
	.word	25                              # 0x19
	.word	19                              # 0x13
	.word	20                              # 0x14
	.word	19                              # 0x13
	.word	25                              # 0x19
	.word	19                              # 0x13
	.word	19                              # 0x13
	.word	18                              # 0x12
	.word	24                              # 0x18
	.word	18                              # 0x12
	.word	19                              # 0x13
	.word	18                              # 0x12
	.word	24                              # 0x18
	.word	18                              # 0x12
	.word	25                              # 0x19
	.word	24                              # 0x18
	.word	32                              # 0x20
	.word	24                              # 0x18
	.word	25                              # 0x19
	.word	24                              # 0x18
	.word	32                              # 0x20
	.word	24                              # 0x18
	.word	19                              # 0x13
	.word	18                              # 0x12
	.word	24                              # 0x18
	.word	18                              # 0x12
	.word	19                              # 0x13
	.word	18                              # 0x12
	.word	24                              # 0x18
	.word	18                              # 0x12
	.word	22                              # 0x16
	.word	21                              # 0x15
	.word	28                              # 0x1c
	.word	21                              # 0x15
	.word	22                              # 0x16
	.word	21                              # 0x15
	.word	28                              # 0x1c
	.word	21                              # 0x15
	.word	21                              # 0x15
	.word	19                              # 0x13
	.word	26                              # 0x1a
	.word	19                              # 0x13
	.word	21                              # 0x15
	.word	19                              # 0x13
	.word	26                              # 0x1a
	.word	19                              # 0x13
	.word	28                              # 0x1c
	.word	26                              # 0x1a
	.word	35                              # 0x23
	.word	26                              # 0x1a
	.word	28                              # 0x1c
	.word	26                              # 0x1a
	.word	35                              # 0x23
	.word	26                              # 0x1a
	.word	21                              # 0x15
	.word	19                              # 0x13
	.word	26                              # 0x1a
	.word	19                              # 0x13
	.word	21                              # 0x15
	.word	19                              # 0x13
	.word	26                              # 0x1a
	.word	19                              # 0x13
	.word	22                              # 0x16
	.word	21                              # 0x15
	.word	28                              # 0x1c
	.word	21                              # 0x15
	.word	22                              # 0x16
	.word	21                              # 0x15
	.word	28                              # 0x1c
	.word	21                              # 0x15
	.word	21                              # 0x15
	.word	19                              # 0x13
	.word	26                              # 0x1a
	.word	19                              # 0x13
	.word	21                              # 0x15
	.word	19                              # 0x13
	.word	26                              # 0x1a
	.word	19                              # 0x13
	.word	28                              # 0x1c
	.word	26                              # 0x1a
	.word	35                              # 0x23
	.word	26                              # 0x1a
	.word	28                              # 0x1c
	.word	26                              # 0x1a
	.word	35                              # 0x23
	.word	26                              # 0x1a
	.word	21                              # 0x15
	.word	19                              # 0x13
	.word	26                              # 0x1a
	.word	19                              # 0x13
	.word	21                              # 0x15
	.word	19                              # 0x13
	.word	26                              # 0x1a
	.word	19                              # 0x13
	.word	26                              # 0x1a
	.word	24                              # 0x18
	.word	33                              # 0x21
	.word	24                              # 0x18
	.word	26                              # 0x1a
	.word	24                              # 0x18
	.word	33                              # 0x21
	.word	24                              # 0x18
	.word	24                              # 0x18
	.word	23                              # 0x17
	.word	31                              # 0x1f
	.word	23                              # 0x17
	.word	24                              # 0x18
	.word	23                              # 0x17
	.word	31                              # 0x1f
	.word	23                              # 0x17
	.word	33                              # 0x21
	.word	31                              # 0x1f
	.word	42                              # 0x2a
	.word	31                              # 0x1f
	.word	33                              # 0x21
	.word	31                              # 0x1f
	.word	42                              # 0x2a
	.word	31                              # 0x1f
	.word	24                              # 0x18
	.word	23                              # 0x17
	.word	31                              # 0x1f
	.word	23                              # 0x17
	.word	24                              # 0x18
	.word	23                              # 0x17
	.word	31                              # 0x1f
	.word	23                              # 0x17
	.word	26                              # 0x1a
	.word	24                              # 0x18
	.word	33                              # 0x21
	.word	24                              # 0x18
	.word	26                              # 0x1a
	.word	24                              # 0x18
	.word	33                              # 0x21
	.word	24                              # 0x18
	.word	24                              # 0x18
	.word	23                              # 0x17
	.word	31                              # 0x1f
	.word	23                              # 0x17
	.word	24                              # 0x18
	.word	23                              # 0x17
	.word	31                              # 0x1f
	.word	23                              # 0x17
	.word	33                              # 0x21
	.word	31                              # 0x1f
	.word	42                              # 0x2a
	.word	31                              # 0x1f
	.word	33                              # 0x21
	.word	31                              # 0x1f
	.word	42                              # 0x2a
	.word	31                              # 0x1f
	.word	24                              # 0x18
	.word	23                              # 0x17
	.word	31                              # 0x1f
	.word	23                              # 0x17
	.word	24                              # 0x18
	.word	23                              # 0x17
	.word	31                              # 0x1f
	.word	23                              # 0x17
	.word	28                              # 0x1c
	.word	26                              # 0x1a
	.word	35                              # 0x23
	.word	26                              # 0x1a
	.word	28                              # 0x1c
	.word	26                              # 0x1a
	.word	35                              # 0x23
	.word	26                              # 0x1a
	.word	26                              # 0x1a
	.word	25                              # 0x19
	.word	33                              # 0x21
	.word	25                              # 0x19
	.word	26                              # 0x1a
	.word	25                              # 0x19
	.word	33                              # 0x21
	.word	25                              # 0x19
	.word	35                              # 0x23
	.word	33                              # 0x21
	.word	45                              # 0x2d
	.word	33                              # 0x21
	.word	35                              # 0x23
	.word	33                              # 0x21
	.word	45                              # 0x2d
	.word	33                              # 0x21
	.word	26                              # 0x1a
	.word	25                              # 0x19
	.word	33                              # 0x21
	.word	25                              # 0x19
	.word	26                              # 0x1a
	.word	25                              # 0x19
	.word	33                              # 0x21
	.word	25                              # 0x19
	.word	28                              # 0x1c
	.word	26                              # 0x1a
	.word	35                              # 0x23
	.word	26                              # 0x1a
	.word	28                              # 0x1c
	.word	26                              # 0x1a
	.word	35                              # 0x23
	.word	26                              # 0x1a
	.word	26                              # 0x1a
	.word	25                              # 0x19
	.word	33                              # 0x21
	.word	25                              # 0x19
	.word	26                              # 0x1a
	.word	25                              # 0x19
	.word	33                              # 0x21
	.word	25                              # 0x19
	.word	35                              # 0x23
	.word	33                              # 0x21
	.word	45                              # 0x2d
	.word	33                              # 0x21
	.word	35                              # 0x23
	.word	33                              # 0x21
	.word	45                              # 0x2d
	.word	33                              # 0x21
	.word	26                              # 0x1a
	.word	25                              # 0x19
	.word	33                              # 0x21
	.word	25                              # 0x19
	.word	26                              # 0x1a
	.word	25                              # 0x19
	.word	33                              # 0x21
	.word	25                              # 0x19
	.word	32                              # 0x20
	.word	30                              # 0x1e
	.word	40                              # 0x28
	.word	30                              # 0x1e
	.word	32                              # 0x20
	.word	30                              # 0x1e
	.word	40                              # 0x28
	.word	30                              # 0x1e
	.word	30                              # 0x1e
	.word	28                              # 0x1c
	.word	38                              # 0x26
	.word	28                              # 0x1c
	.word	30                              # 0x1e
	.word	28                              # 0x1c
	.word	38                              # 0x26
	.word	28                              # 0x1c
	.word	40                              # 0x28
	.word	38                              # 0x26
	.word	51                              # 0x33
	.word	38                              # 0x26
	.word	40                              # 0x28
	.word	38                              # 0x26
	.word	51                              # 0x33
	.word	38                              # 0x26
	.word	30                              # 0x1e
	.word	28                              # 0x1c
	.word	38                              # 0x26
	.word	28                              # 0x1c
	.word	30                              # 0x1e
	.word	28                              # 0x1c
	.word	38                              # 0x26
	.word	28                              # 0x1c
	.word	32                              # 0x20
	.word	30                              # 0x1e
	.word	40                              # 0x28
	.word	30                              # 0x1e
	.word	32                              # 0x20
	.word	30                              # 0x1e
	.word	40                              # 0x28
	.word	30                              # 0x1e
	.word	30                              # 0x1e
	.word	28                              # 0x1c
	.word	38                              # 0x26
	.word	28                              # 0x1c
	.word	30                              # 0x1e
	.word	28                              # 0x1c
	.word	38                              # 0x26
	.word	28                              # 0x1c
	.word	40                              # 0x28
	.word	38                              # 0x26
	.word	51                              # 0x33
	.word	38                              # 0x26
	.word	40                              # 0x28
	.word	38                              # 0x26
	.word	51                              # 0x33
	.word	38                              # 0x26
	.word	30                              # 0x1e
	.word	28                              # 0x1c
	.word	38                              # 0x26
	.word	28                              # 0x1c
	.word	30                              # 0x1e
	.word	28                              # 0x1c
	.word	38                              # 0x26
	.word	28                              # 0x1c
	.word	36                              # 0x24
	.word	34                              # 0x22
	.word	46                              # 0x2e
	.word	34                              # 0x22
	.word	36                              # 0x24
	.word	34                              # 0x22
	.word	46                              # 0x2e
	.word	34                              # 0x22
	.word	34                              # 0x22
	.word	32                              # 0x20
	.word	43                              # 0x2b
	.word	32                              # 0x20
	.word	34                              # 0x22
	.word	32                              # 0x20
	.word	43                              # 0x2b
	.word	32                              # 0x20
	.word	46                              # 0x2e
	.word	43                              # 0x2b
	.word	58                              # 0x3a
	.word	43                              # 0x2b
	.word	46                              # 0x2e
	.word	43                              # 0x2b
	.word	58                              # 0x3a
	.word	43                              # 0x2b
	.word	34                              # 0x22
	.word	32                              # 0x20
	.word	43                              # 0x2b
	.word	32                              # 0x20
	.word	34                              # 0x22
	.word	32                              # 0x20
	.word	43                              # 0x2b
	.word	32                              # 0x20
	.word	36                              # 0x24
	.word	34                              # 0x22
	.word	46                              # 0x2e
	.word	34                              # 0x22
	.word	36                              # 0x24
	.word	34                              # 0x22
	.word	46                              # 0x2e
	.word	34                              # 0x22
	.word	34                              # 0x22
	.word	32                              # 0x20
	.word	43                              # 0x2b
	.word	32                              # 0x20
	.word	34                              # 0x22
	.word	32                              # 0x20
	.word	43                              # 0x2b
	.word	32                              # 0x20
	.word	46                              # 0x2e
	.word	43                              # 0x2b
	.word	58                              # 0x3a
	.word	43                              # 0x2b
	.word	46                              # 0x2e
	.word	43                              # 0x2b
	.word	58                              # 0x3a
	.word	43                              # 0x2b
	.word	34                              # 0x22
	.word	32                              # 0x20
	.word	43                              # 0x2b
	.word	32                              # 0x20
	.word	34                              # 0x22
	.word	32                              # 0x20
	.word	43                              # 0x2b
	.word	32                              # 0x20
	.size	dequant_coef8, 1536

	.type	qmatrix,@object                 # @qmatrix
	.comm	qmatrix,64,8
	.type	InvLevelScale8x8Luma_Intra,@object # @InvLevelScale8x8Luma_Intra
	.comm	InvLevelScale8x8Luma_Intra,1536,4
	.type	InvLevelScale8x8Luma_Inter,@object # @InvLevelScale8x8Luma_Inter
	.comm	InvLevelScale8x8Luma_Inter,1536,4
	.type	.L.str.5,@object                # @.str.5
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.5:
	.asciz	"mb_qp_delta is out of range"
	.size	.L.str.5, 28

	.type	InvLevelScale4x4Luma_Intra,@object # @InvLevelScale4x4Luma_Intra
	.comm	InvLevelScale4x4Luma_Intra,384,4
	.type	InvLevelScale4x4Luma_Inter,@object # @InvLevelScale4x4Luma_Inter
	.comm	InvLevelScale4x4Luma_Inter,384,4
	.type	InvLevelScale4x4Chroma_Intra,@object # @InvLevelScale4x4Chroma_Intra
	.comm	InvLevelScale4x4Chroma_Intra,768,4
	.type	InvLevelScale4x4Chroma_Inter,@object # @InvLevelScale4x4Chroma_Inter
	.comm	InvLevelScale4x4Chroma_Inter,768,4
	.type	cofuv_blk_x,@object             # @cofuv_blk_x
	.section	.rodata,"a",@progbits
cofuv_blk_x:
	.ascii	"\000\001\000\001"
	.ascii	"\002\003\002\003"
	.space	4
	.space	4
	.space	4
	.space	4
	.space	4
	.space	4
	.ascii	"\000\001\000\001"
	.ascii	"\000\001\000\001"
	.ascii	"\002\003\002\003"
	.ascii	"\002\003\002\003"
	.space	4
	.space	4
	.space	4
	.space	4
	.ascii	"\000\001\000\001"
	.ascii	"\002\003\002\003"
	.ascii	"\000\001\000\001"
	.ascii	"\002\003\002\003"
	.ascii	"\000\001\000\001"
	.ascii	"\002\003\002\003"
	.ascii	"\000\001\000\001"
	.ascii	"\002\003\002\003"
	.size	cofuv_blk_x, 96

	.type	cofuv_blk_y,@object             # @cofuv_blk_y
cofuv_blk_y:
	.ascii	"\004\004\005\005"
	.ascii	"\004\004\005\005"
	.space	4
	.space	4
	.space	4
	.space	4
	.space	4
	.space	4
	.ascii	"\004\004\005\005"
	.ascii	"\006\006\007\007"
	.ascii	"\004\004\005\005"
	.ascii	"\006\006\007\007"
	.space	4
	.space	4
	.space	4
	.space	4
	.ascii	"\004\004\005\005"
	.ascii	"\004\004\005\005"
	.ascii	"\006\006\007\007"
	.ascii	"\006\006\007\007"
	.ascii	"\b\b\t\t"
	.ascii	"\b\b\t\t"
	.ascii	"\n\n\013\013"
	.ascii	"\n\n\013\013"
	.size	cofuv_blk_y, 96

	.type	cbp_blk_chroma,@object          # @cbp_blk_chroma
	.section	.rodata.cst32,"aM",@progbits,32
cbp_blk_chroma:
	.ascii	"\020\021\022\023"
	.ascii	"\024\025\026\027"
	.ascii	"\030\031\032\033"
	.ascii	"\034\035\036\037"
	.ascii	" !\"#"
	.ascii	"$%&'"
	.ascii	"()*+"
	.ascii	",-./"
	.size	cbp_blk_chroma, 32

	.type	decode_one_macroblock.decode_block_scan,@object # @decode_one_macroblock.decode_block_scan
	.section	.rodata.cst16,"aM",@progbits,16
decode_one_macroblock.decode_block_scan:
	.ascii	"\000\001\004\005\002\003\006\007\b\t\f\r\n\013\016\017"
	.size	decode_one_macroblock.decode_block_scan, 16

	.type	imgY_ref,@object                # @imgY_ref
	.comm	imgY_ref,8,8
	.type	imgUV_ref,@object               # @imgUV_ref
	.comm	imgUV_ref,8,8
	.type	ReMapRef,@object                # @ReMapRef
	.comm	ReMapRef,80,4
	.type	Bframe_ctr,@object              # @Bframe_ctr
	.comm	Bframe_ctr,4,4
	.type	frame_no,@object                # @frame_no
	.comm	frame_no,4,4
	.type	g_nFrame,@object                # @g_nFrame
	.comm	g_nFrame,4,4
	.type	TopFieldForSkip_Y,@object       # @TopFieldForSkip_Y
	.comm	TopFieldForSkip_Y,1024,4
	.type	TopFieldForSkip_UV,@object      # @TopFieldForSkip_UV
	.comm	TopFieldForSkip_UV,2048,4
	.type	errortext,@object               # @errortext
	.comm	errortext,300,1
	.type	tot_time,@object                # @tot_time
	.comm	tot_time,8,8
	.type	p_out,@object                   # @p_out
	.comm	p_out,4,4
	.type	p_ref,@object                   # @p_ref
	.comm	p_ref,4,4
	.type	p_log,@object                   # @p_log
	.comm	p_log,8,8
	.type	previous_frame_num,@object      # @previous_frame_num
	.comm	previous_frame_num,4,4
	.type	ref_flag,@object                # @ref_flag
	.comm	ref_flag,68,4
	.type	Is_primary_correct,@object      # @Is_primary_correct
	.comm	Is_primary_correct,4,4
	.type	Is_redundant_correct,@object    # @Is_redundant_correct
	.comm	Is_redundant_correct,4,4
	.type	redundant_slice_ref_idx,@object # @redundant_slice_ref_idx
	.comm	redundant_slice_ref_idx,4,4
	.type	getNeighbour,@object            # @getNeighbour
	.comm	getNeighbour,8,8
	.type	get_mb_block_pos,@object        # @get_mb_block_pos
	.comm	get_mb_block_pos,8,8
	.type	cofAC8x8_intra,@object          # @cofAC8x8_intra
	.comm	cofAC8x8_intra,8,8
	.type	cofAC8x8_iintra,@object         # @cofAC8x8_iintra
	.comm	cofAC8x8_iintra,8,8
	.type	.Lstr,@object                   # @str
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lstr:
	.asciz	"Partition Mode is not supported"
	.size	.Lstr, 32

	.type	.Lswitch.table.read_one_macroblock,@object # @switch.table.read_one_macroblock
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.Lswitch.table.read_one_macroblock:
	.word	9                               # 0x9
	.word	10                              # 0xa
	.space	4
	.word	12                              # 0xc
	.word	13                              # 0xd
	.word	14                              # 0xe
	.size	.Lswitch.table.read_one_macroblock, 24

	.type	.Lswitch.table.readLumaCoeff8x8_CABAC,@object # @switch.table.readLumaCoeff8x8_CABAC
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
.Lswitch.table.readLumaCoeff8x8_CABAC:
	.dword	InvLevelScale8x8Luma_Intra
	.dword	InvLevelScale8x8Luma_Intra
	.dword	InvLevelScale8x8Luma_Inter
	.dword	InvLevelScale8x8Luma_Intra
	.dword	InvLevelScale8x8Luma_Intra
	.dword	InvLevelScale8x8Luma_Intra
	.size	.Lswitch.table.readLumaCoeff8x8_CABAC, 48

	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym linfo_ue
	.addrsig_sym readFieldModeInfo_CABAC
	.addrsig_sym readMB_typeInfo_CABAC
	.addrsig_sym readMB_skip_flagInfo_CABAC
	.addrsig_sym readB8_typeInfo_CABAC
	.addrsig_sym readMB_transform_size_flag_CABAC
	.addrsig_sym readIntraPredMode_CABAC
	.addrsig_sym readCIPredMode_CABAC
	.addrsig_sym readRefFrame_CABAC
	.addrsig_sym linfo_se
	.addrsig_sym readMVD_CABAC
	.addrsig_sym readRunLevel_CABAC
	.addrsig_sym linfo_cbp_intra
	.addrsig_sym linfo_cbp_inter
	.addrsig_sym readCBP_CABAC
	.addrsig_sym readDquant_CABAC
	.addrsig_sym linfo_levrun_inter
	.addrsig_sym linfo_levrun_c2x2
