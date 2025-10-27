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
	ld.w	$a3, $a0, 76
	pcalau12i	$a1, %got_pc_hi20(dec_picture)
	ld.d	$a1, $a1, %got_pc_lo12(dec_picture)
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
	ld.w	$a0, $a0, 44
	addi.d	$a0, $a0, -1
	sltui	$a0, $a0, 1
	add.d	$a1, $a1, $a3
	pcalau12i	$a3, %pc_hi20(SetB8Mode.p_v2b8)
	addi.d	$a3, $a3, %pc_lo12(SetB8Mode.p_v2b8)
	masknez	$a3, $a3, $a0
	pcalau12i	$a4, %pc_hi20(SetB8Mode.b_v2b8)
	addi.d	$a4, $a4, %pc_lo12(SetB8Mode.b_v2b8)
	maskeqz	$a4, $a4, $a0
	or	$a3, $a4, $a3
	pcalau12i	$a4, %pc_hi20(SetB8Mode.p_v2pd)
	addi.d	$a4, $a4, %pc_lo12(SetB8Mode.p_v2pd)
	masknez	$a4, $a4, $a0
	pcalau12i	$a5, %pc_hi20(SetB8Mode.b_v2pd)
	addi.d	$a5, $a5, %pc_lo12(SetB8Mode.b_v2pd)
	slli.d	$a2, $a2, 2
	ldx.b	$a3, $a3, $a2
	maskeqz	$a0, $a5, $a0
	or	$a0, $a0, $a4
	st.b	$a3, $a1, 328
	ldx.b	$a0, $a0, $a2
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
	addi.w	$a4, $zero, -1
	ori	$a5, $zero, 3176
	.p2align	4, , 16
.LBB8_5:                                # %.lr.ph.1
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
	blt	$a4, $a6, .LBB8_5
# %bb.6:                                # %._crit_edge.1
	blt	$a3, $a2, .LBB8_12
# %bb.7:                                # %.lr.ph.2.preheader
	addi.w	$a4, $zero, -1
	ori	$a5, $zero, 3944
	.p2align	4, , 16
.LBB8_8:                                # %.lr.ph.2
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
	blt	$a4, $a6, .LBB8_8
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
	ld.d	$a2, $a1, 0
	ld.w	$a1, $a0, 0
	pcalau12i	$a3, %got_pc_hi20(dec_picture)
	ld.d	$a3, $a3, %got_pc_lo12(dec_picture)
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
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
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
	pcalau12i	$a1, %got_pc_hi20(assignSE2partition)
	ld.d	$a1, $a1, %got_pc_lo12(assignSE2partition)
	ld.w	$a3, $fp, 28
	st.w	$a2, $s4, 356
	st.w	$a3, $s4, 0
	pcalau12i	$a2, %got_pc_hi20(dec_picture)
	ld.d	$s2, $a2, %got_pc_lo12(dec_picture)
	ld.d	$a4, $s2, 0
	lu12i.w	$s6, 77
	ori	$a5, $s6, 1684
	lu12i.w	$s8, 1
	ori	$a2, $s8, 1792
	ldx.w	$a6, $fp, $a2
	ldx.w	$a7, $a4, $a5
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
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
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
	ld.d	$a3, $sp, 40                    # 8-byte Folded Reload
	ld.w	$a3, $a3, 8
	ld.w	$a0, $a0, 12
	st.w	$a1, $sp, 104
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
	st.d	$a1, $sp, 136
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
	st.w	$a0, $sp, 116
	addi.d	$a0, $sp, 104
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
	st.d	$a0, $sp, 144
	addi.d	$a0, $sp, 104
	move	$a1, $fp
	move	$a2, $s1
	jirl	$ra, $a3, 0
	ld.w	$a0, $sp, 108
	ld.w	$a1, $fp, 44
	st.w	$a0, $s4, 40
	sltui	$a2, $a0, 1
	ori	$a3, $zero, 1
	st.w	$a2, $s4, 360
	bne	$a1, $a3, .LBB11_43
# %bb.32:
	ld.w	$a2, $sp, 112
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
	ld.w	$a1, $sp, 112
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
	addi.d	$a0, $sp, 104
	move	$a1, $fp
	move	$a2, $s1
	pcaddu18i	$ra, %call36(check_next_mb_and_get_field_mode_CABAC)
	jirl	$ra, $ra, 0
	b	.LBB11_65
.LBB11_52:
	ld.d	$a3, $s1, 48
	addi.d	$a0, $sp, 104
	move	$a1, $fp
	move	$a2, $s1
	jirl	$ra, $a3, 0
	ld.w	$a0, $sp, 108
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
	st.w	$a0, $sp, 116
	addi.d	$a0, $sp, 104
	pcaddu18i	$ra, %call36(readSyntaxElement_FLC)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 108
	st.w	$a0, $s4, 356
.LBB11_57:
	ld.d	$a3, $s1, 48
	addi.d	$a0, $sp, 104
	move	$a1, $fp
	move	$a2, $s1
	jirl	$ra, $a3, 0
	ld.w	$a0, $fp, 44
	beqz	$a0, .LBB11_59
# %bb.58:
	ori	$a1, $zero, 3
	bne	$a0, $a1, .LBB11_209
.LBB11_59:
	ld.w	$a0, $sp, 108
	addi.d	$a0, $a0, 1
	st.w	$a0, $sp, 108
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
	st.d	$a0, $sp, 144
	addi.d	$a0, $sp, 104
	move	$a1, $fp
	move	$a2, $s1
	jirl	$ra, $a3, 0
	ld.w	$a0, $sp, 108
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
	st.d	$a0, $sp, 144
	addi.d	$a0, $sp, 104
	move	$a1, $fp
	move	$a2, $s1
	jirl	$ra, $a3, 0
.LBB11_67:
	ld.d	$a0, $s7, %pc_lo12(active_pps)
	ld.w	$a1, $sp, 108
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
	st.d	$a0, $sp, 144
	addi.d	$a0, $sp, 104
	move	$a1, $fp
	move	$a2, $s1
	jirl	$ra, $a3, 0
	ld.d	$a0, $s1, 0
	ld.w	$a1, $sp, 108
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
	ld.d	$a3, $sp, 40                    # 8-byte Folded Reload
	ld.w	$a3, $a3, 8
	ld.w	$a0, $a0, 12
	st.w	$a1, $sp, 104
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
	st.d	$a0, $sp, 136
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
.LBB11_103:                             # %.thread540
	st.w	$a0, $s4, 400
	b	.LBB11_135
.LBB11_104:
	pcalau12i	$a0, %got_pc_hi20(readB8_typeInfo_CABAC)
	ld.d	$a0, $a0, %got_pc_lo12(readB8_typeInfo_CABAC)
	st.d	$a0, $sp, 144
.LBB11_105:
	ld.d	$a3, $s1, 48
	addi.d	$a0, $sp, 104
	move	$a1, $fp
	move	$a2, $s1
	jirl	$ra, $a3, 0
	ld.w	$a0, $fp, 44
	ld.w	$a1, $sp, 108
	addi.d	$a0, $a0, -1
	sltui	$a2, $a0, 1
	pcalau12i	$a0, %pc_hi20(SetB8Mode.p_v2b8)
	addi.d	$s8, $a0, %pc_lo12(SetB8Mode.p_v2b8)
	masknez	$a0, $s8, $a2
	pcalau12i	$a3, %pc_hi20(SetB8Mode.b_v2b8)
	addi.d	$s6, $a3, %pc_lo12(SetB8Mode.b_v2b8)
	maskeqz	$a3, $s6, $a2
	or	$a0, $a3, $a0
	pcalau12i	$a3, %pc_hi20(SetB8Mode.p_v2pd)
	addi.d	$s3, $a3, %pc_lo12(SetB8Mode.p_v2pd)
	masknez	$a3, $s3, $a2
	pcalau12i	$a4, %pc_hi20(SetB8Mode.b_v2pd)
	addi.d	$s0, $a4, %pc_lo12(SetB8Mode.b_v2pd)
	slli.d	$a1, $a1, 2
	ldx.bu	$a0, $a0, $a1
	maskeqz	$a2, $s0, $a2
	or	$a2, $a2, $a3
	st.b	$a0, $s4, 328
	ldx.b	$a1, $a2, $a1
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
	st.d	$a0, $sp, 136
	b	.LBB11_112
.LBB11_111:
	pcalau12i	$a0, %got_pc_hi20(readB8_typeInfo_CABAC)
	ld.d	$a0, $a0, %got_pc_lo12(readB8_typeInfo_CABAC)
	st.d	$a0, $sp, 144
.LBB11_112:
	ld.d	$a3, $s1, 48
	addi.d	$a0, $sp, 104
	move	$a1, $fp
	move	$a2, $s1
	jirl	$ra, $a3, 0
	ld.w	$a0, $fp, 44
	ld.w	$a1, $sp, 108
	addi.d	$a0, $a0, -1
	sltui	$a2, $a0, 1
	masknez	$a0, $s8, $a2
	maskeqz	$a3, $s6, $a2
	or	$a0, $a3, $a0
	slli.d	$a1, $a1, 2
	ldx.bu	$a0, $a0, $a1
	masknez	$a3, $s3, $a2
	maskeqz	$a2, $s0, $a2
	or	$a2, $a2, $a3
	st.b	$a0, $s4, 329
	ldx.b	$a1, $a2, $a1
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
	st.d	$a0, $sp, 136
	b	.LBB11_119
.LBB11_118:
	pcalau12i	$a0, %got_pc_hi20(readB8_typeInfo_CABAC)
	ld.d	$a0, $a0, %got_pc_lo12(readB8_typeInfo_CABAC)
	st.d	$a0, $sp, 144
.LBB11_119:
	ld.d	$a3, $s1, 48
	addi.d	$a0, $sp, 104
	move	$a1, $fp
	move	$a2, $s1
	jirl	$ra, $a3, 0
	ld.w	$a0, $fp, 44
	ld.w	$a1, $sp, 108
	addi.d	$a0, $a0, -1
	sltui	$a2, $a0, 1
	masknez	$a0, $s8, $a2
	maskeqz	$a3, $s6, $a2
	or	$a0, $a3, $a0
	slli.d	$a1, $a1, 2
	ldx.bu	$a0, $a0, $a1
	masknez	$a3, $s3, $a2
	maskeqz	$a2, $s0, $a2
	or	$a2, $a2, $a3
	st.b	$a0, $s4, 330
	ldx.b	$a1, $a2, $a1
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
	st.d	$a0, $sp, 136
	b	.LBB11_126
.LBB11_125:
	pcalau12i	$a0, %got_pc_hi20(readB8_typeInfo_CABAC)
	ld.d	$a0, $a0, %got_pc_lo12(readB8_typeInfo_CABAC)
	st.d	$a0, $sp, 144
.LBB11_126:
	ld.d	$a3, $s1, 48
	addi.d	$a0, $sp, 104
	move	$a1, $fp
	move	$a2, $s1
	jirl	$ra, $a3, 0
	ld.w	$a0, $fp, 44
	ld.w	$a1, $sp, 108
	addi.d	$a0, $a0, -1
	sltui	$a2, $a0, 1
	masknez	$a0, $s8, $a2
	maskeqz	$a3, $s6, $a2
	or	$a0, $a3, $a0
	slli.d	$a1, $a1, 2
	ldx.bu	$a0, $a0, $a1
	masknez	$a3, $s3, $a2
	maskeqz	$a2, $s0, $a2
	or	$a2, $a2, $a3
	st.b	$a0, $s4, 331
	ldx.b	$a1, $a2, $a1
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
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.w	$a1, $a0, 0
	ld.d	$a0, $s5, 40
	st.w	$zero, $sp, 104
	ori	$a2, $zero, 56
	mul.d	$a2, $a1, $a2
	pcalau12i	$a1, %got_pc_hi20(readMB_transform_size_flag_CABAC)
	ld.d	$a3, $a1, %got_pc_lo12(readMB_transform_size_flag_CABAC)
	ld.d	$a1, $s7, %pc_lo12(active_pps)
	ld.w	$a4, $a1, 12
	ldx.d	$a1, $a0, $a2
	st.d	$a3, $sp, 144
	beqz	$a4, .LBB11_134
# %bb.133:
	ld.w	$a3, $a1, 24
	beqz	$a3, .LBB11_171
.LBB11_134:
	ori	$a0, $zero, 1
	st.w	$a0, $sp, 116
	addi.d	$a0, $sp, 104
	pcaddu18i	$ra, %call36(readSyntaxElement_FLC)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 108
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
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
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
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(readCBPandCoeffsFromNAL)
	jirl	$ra, $ra, 0
	b	.LBB11_202
.LBB11_158:
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
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
.LBB11_164:                             # %._crit_edge503
	ld.w	$a0, $fp, 4
.LBB11_165:
	move	$s1, $zero
.LBB11_166:
	ld.d	$a1, $s2, 0
	ori	$a2, $s6, 1584
	ldx.d	$a1, $a1, $a2
	ld.d	$s5, $a1, 0
	addi.w	$s0, $zero, -1
	addi.d	$a3, $sp, 76
	move	$a1, $s0
	move	$a2, $zero
	pcaddu18i	$ra, %call36(getLuma4x4Neighbour)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 4
	addi.d	$a3, $sp, 52
	move	$a1, $zero
	move	$a2, $s0
	pcaddu18i	$ra, %call36(getLuma4x4Neighbour)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 76
	beqz	$a0, .LBB11_170
# %bb.167:
	ld.d	$a1, $s2, 0
	ld.w	$a2, $sp, 96
	ori	$a3, $s6, 1560
	ldx.d	$a1, $a1, $a3
	slli.d	$a2, $a2, 3
	ld.w	$a3, $sp, 92
	ldx.d	$a4, $s5, $a2
	ld.d	$a1, $a1, 0
	slli.d	$a5, $a3, 3
	ldx.d	$a4, $a4, $a5
	ldx.d	$a2, $a1, $a2
	ld.h	$a1, $a4, 2
	ldx.b	$a2, $a2, $a3
	ld.w	$a3, $sp, 80
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
	addi.d	$a0, $sp, 104
	move	$a1, $fp
	jirl	$ra, $a3, 0
	ld.w	$a0, $sp, 108
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
	ld.w	$a3, $sp, 52
	beqz	$a3, .LBB11_180
# %bb.177:
	ld.d	$a4, $s2, 0
	ld.w	$a5, $sp, 72
	ori	$a6, $s6, 1560
	ldx.d	$a4, $a4, $a6
	slli.d	$a5, $a5, 3
	ld.w	$a6, $sp, 68
	ldx.d	$a7, $s5, $a5
	ld.d	$a4, $a4, 0
	slli.d	$t0, $a6, 3
	ldx.d	$a7, $a7, $t0
	ldx.d	$a5, $a4, $a5
	ld.h	$a4, $a7, 2
	ldx.b	$a5, $a5, $a6
	ld.w	$a6, $sp, 56
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
	ld.w	$a0, $sp, 72
	slli.d	$a0, $a0, 3
	ld.w	$a1, $sp, 68
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
	addi.d	$a1, $sp, 100
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
	ld.w	$a5, $sp, 100
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
	ld.w	$t0, $sp, 100
	ldx.d	$t1, $a4, $a3
	ld.w	$t2, $sp, 100
	st.w	$a5, $a6, 0
	st.w	$t0, $a1, 0
	alsl.d	$a1, $a0, $a4, 3
	st.w	$t2, $t1, 0
	ldx.d	$a4, $a4, $a7
	ld.d	$a5, $a1, 16
	ld.d	$a1, $a1, 24
	ld.w	$a6, $sp, 100
	ld.d	$a2, $a2, 24
	st.w	$t2, $a4, 0
	st.w	$t2, $a5, 0
	st.w	$a6, $a1, 0
	alsl.d	$a0, $a0, $a2, 3
	ldx.d	$a1, $a2, $a3
	ld.w	$a3, $sp, 100
	ldx.d	$a2, $a2, $a7
	ld.d	$a4, $a0, 16
	ld.d	$a0, $a0, 24
	ld.w	$a5, $sp, 100
	st.w	$a3, $a1, 0
	st.w	$a3, $a2, 0
	st.w	$a3, $a4, 0
	st.w	$a5, $a0, 0
	b	.LBB11_194
.LBB11_191:
	ori	$s3, $zero, 1
	bnez	$a3, .LBB11_186
.LBB11_192:                             # %.thread542
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
.LBB11_203:
	ld.w	$a0, $sp, 96
	slli.d	$a0, $a0, 3
	ld.w	$a2, $sp, 92
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
	st.w	$a0, $sp, 116
	addi.d	$a0, $sp, 104
	pcaddu18i	$ra, %call36(readSyntaxElement_FLC)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	ld.w	$a1, $a0, 8
	ld.w	$a2, $sp, 108
	addi.d	$a1, $a1, -1
	st.w	$a1, $a0, 8
	st.w	$a2, $s4, 356
	b	.LBB11_72
.LBB11_209:                             # %._crit_edge498
	ld.w	$a0, $sp, 108
	ld.d	$a1, $s1, 0
	ld.w	$a1, $a1, 24
	st.w	$a0, $s4, 40
	bnez	$a1, .LBB11_61
	b	.LBB11_60
.LBB11_210:
	move	$a1, $zero
	b	.LBB11_30
.LBB11_211:                             # %._crit_edge495
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
	.text
	.globl	readMotionInfoFromNAL           # -- Begin function readMotionInfoFromNAL
	.p2align	5
	.type	readMotionInfoFromNAL,@function
readMotionInfoFromNAL:                  # @readMotionInfoFromNAL
# %bb.0:
	addi.d	$sp, $sp, -720
	st.d	$ra, $sp, 712                   # 8-byte Folded Spill
	st.d	$fp, $sp, 704                   # 8-byte Folded Spill
	st.d	$s0, $sp, 696                   # 8-byte Folded Spill
	st.d	$s1, $sp, 688                   # 8-byte Folded Spill
	st.d	$s2, $sp, 680                   # 8-byte Folded Spill
	st.d	$s3, $sp, 672                   # 8-byte Folded Spill
	st.d	$s4, $sp, 664                   # 8-byte Folded Spill
	st.d	$s5, $sp, 656                   # 8-byte Folded Spill
	st.d	$s6, $sp, 648                   # 8-byte Folded Spill
	st.d	$s7, $sp, 640                   # 8-byte Folded Spill
	st.d	$s8, $sp, 632                   # 8-byte Folded Spill
	move	$a7, $a0
	st.d	$a0, $sp, 496                   # 8-byte Folded Spill
	ld.wu	$a2, $a0, 4
	ldptr.d	$a3, $a0, 5592
	ldptr.d	$a1, $a0, 5600
	ori	$a0, $zero, 408
	mul.d	$a0, $a2, $a0
	st.d	$a3, $sp, 56                    # 8-byte Folded Spill
	ld.w	$a3, $a3, 28
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	add.d	$t5, $a1, $a0
	ld.w	$a1, $t5, 40
	st.d	$a2, $sp, 40                    # 8-byte Folded Spill
	addi.w	$a0, $a2, 0
	slli.d	$a5, $a3, 6
	ld.w	$a2, $a7, 44
	st.d	$a2, $sp, 488                   # 8-byte Folded Spill
	addi.d	$a2, $a1, -8
	sltui	$a2, $a2, 1
	masknez	$a4, $a1, $a2
	ori	$a6, $zero, 4
	maskeqz	$a2, $a6, $a2
	or	$a4, $a2, $a4
	pcalau12i	$a2, %pc_hi20(BLOCK_STEP)
	addi.d	$a6, $a2, %pc_lo12(BLOCK_STEP)
	ldptr.w	$a2, $a7, 5624
	st.d	$a6, $sp, 168                   # 8-byte Folded Spill
	alsl.d	$a6, $a4, $a6, 3
	st.d	$a4, $sp, 184                   # 8-byte Folded Spill
	slli.d	$a7, $a4, 3
	lu12i.w	$t3, 1
	beqz	$a2, .LBB12_4
# %bb.1:
	ld.w	$a4, $t5, 356
	beqz	$a4, .LBB12_4
# %bb.2:
	andi	$a4, $a0, 1
	pcalau12i	$t0, %got_pc_hi20(Co_located)
	ld.d	$t0, $t0, %got_pc_lo12(Co_located)
	ld.d	$t2, $t0, 0
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
	st.d	$a3, $sp, 448                   # 8-byte Folded Spill
	pcalau12i	$a3, %got_pc_hi20(assignSE2partition)
	ld.d	$a3, $a3, %got_pc_lo12(assignSE2partition)
	st.d	$a3, $sp, 440                   # 8-byte Folded Spill
	ld.d	$a3, $sp, 168                   # 8-byte Folded Reload
	ldx.w	$a3, $a3, $a7
	st.d	$a3, $sp, 328                   # 8-byte Folded Spill
	ld.w	$a3, $a6, 4
	st.d	$a3, $sp, 144                   # 8-byte Folded Spill
	ld.d	$a3, $t2, 0
	st.d	$a3, $sp, 208                   # 8-byte Folded Spill
	ld.d	$t1, $t1, 0
	ld.d	$a3, $t0, 0
	st.d	$a3, $sp, 88                    # 8-byte Folded Spill
	ori	$a5, $zero, 1
	addi.d	$a3, $t5, 328
	st.d	$a3, $sp, 160                   # 8-byte Folded Spill
	st.d	$t5, $sp, 272                   # 8-byte Folded Spill
	st.d	$t1, $sp, 216                   # 8-byte Folded Spill
	ld.d	$a3, $sp, 488                   # 8-byte Folded Reload
	bne	$a3, $a5, .LBB12_161
# %bb.8:
	ori	$a3, $zero, 8
	bne	$a1, $a3, .LBB12_161
# %bb.9:
	ld.d	$fp, $sp, 496                   # 8-byte Folded Reload
	ld.w	$a1, $fp, 40
	beqz	$a1, .LBB12_50
# %bb.10:
	lu12i.w	$s3, 77
	beqz	$a2, .LBB12_15
# %bb.11:
	ld.w	$a1, $t5, 356
	beqz	$a1, .LBB12_15
# %bb.12:
	ld.w	$a1, $fp, 76
	andi	$a2, $a0, 1
	beqz	$a2, .LBB12_14
# %bb.13:
	addi.w	$a1, $a1, -4
.LBB12_14:
	srai.d	$s6, $a1, 1
	b	.LBB12_16
.LBB12_15:
	ld.w	$s6, $fp, 76
.LBB12_16:
	ld.d	$s8, $a4, 0
	st.w	$zero, $sp, 508
	st.w	$zero, $sp, 504
	addi.w	$s1, $zero, -1
	addi.d	$a3, $sp, 584
	move	$a1, $s1
	move	$a2, $zero
	pcaddu18i	$ra, %call36(getLuma4x4Neighbour)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 4
	addi.d	$a3, $sp, 560
	move	$a1, $zero
	move	$a2, $s1
	pcaddu18i	$ra, %call36(getLuma4x4Neighbour)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 4
	ori	$a1, $zero, 16
	addi.d	$a3, $sp, 512
	move	$a2, $s1
	pcaddu18i	$ra, %call36(getLuma4x4Neighbour)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 4
	addi.d	$a3, $sp, 536
	move	$a1, $s1
	move	$a2, $s1
	pcaddu18i	$ra, %call36(getLuma4x4Neighbour)
	jirl	$ra, $ra, 0
	ldptr.w	$a0, $fp, 5624
	beqz	$a0, .LBB12_84
# %bb.17:
	ld.wu	$a0, $fp, 4
	ldptr.d	$a2, $fp, 5600
	ori	$a1, $zero, 408
	mul.d	$a0, $a0, $a1
	add.d	$a0, $a2, $a0
	ld.w	$a0, $a0, 356
	ld.w	$a5, $sp, 584
	beqz	$a0, .LBB12_100
# %bb.18:
	move	$a0, $s1
	beqz	$a5, .LBB12_22
# %bb.19:
	ld.w	$a0, $sp, 588
	ori	$a1, $zero, 408
	mul.d	$a0, $a0, $a1
	add.d	$a0, $a2, $a0
	ld.w	$a1, $a0, 356
	pcalau12i	$a0, %got_pc_hi20(dec_picture)
	ld.d	$a0, $a0, %got_pc_lo12(dec_picture)
	ld.d	$a0, $a0, 0
	ori	$a3, $s3, 1560
	ldx.d	$a0, $a0, $a3
	ld.w	$a3, $sp, 604
	ld.d	$a0, $a0, 0
	slli.d	$a3, $a3, 3
	ldx.d	$a0, $a0, $a3
	ld.w	$a3, $sp, 600
	ldx.b	$a0, $a0, $a3
	bnez	$a1, .LBB12_22
# %bb.20:
	bltz	$a0, .LBB12_22
# %bb.21:
	slli.d	$a0, $a0, 1
	andi	$a0, $a0, 254
.LBB12_22:
	ld.w	$a6, $sp, 560
	move	$a1, $s1
	beqz	$a6, .LBB12_26
# %bb.23:
	ld.w	$a1, $sp, 564
	ori	$a3, $zero, 408
	mul.d	$a1, $a1, $a3
	add.d	$a1, $a2, $a1
	ld.w	$a3, $a1, 356
	pcalau12i	$a1, %got_pc_hi20(dec_picture)
	ld.d	$a1, $a1, %got_pc_lo12(dec_picture)
	ld.d	$a1, $a1, 0
	ori	$a4, $s3, 1560
	ldx.d	$a1, $a1, $a4
	ld.w	$a4, $sp, 580
	ld.d	$a1, $a1, 0
	slli.d	$a4, $a4, 3
	ldx.d	$a1, $a1, $a4
	ld.w	$a4, $sp, 576
	ldx.b	$a1, $a1, $a4
	bnez	$a3, .LBB12_26
# %bb.24:
	bltz	$a1, .LBB12_26
# %bb.25:
	slli.d	$a1, $a1, 1
	andi	$a1, $a1, 254
.LBB12_26:
	ld.w	$a7, $sp, 536
	beqz	$a7, .LBB12_30
# %bb.27:
	ld.w	$a3, $sp, 540
	ori	$a4, $zero, 408
	mul.d	$a3, $a3, $a4
	add.d	$a3, $a2, $a3
	ld.w	$a3, $a3, 356
	pcalau12i	$a4, %got_pc_hi20(dec_picture)
	ld.d	$a4, $a4, %got_pc_lo12(dec_picture)
	ld.d	$a4, $a4, 0
	ori	$t0, $s3, 1560
	ldx.d	$a4, $a4, $t0
	ld.w	$t0, $sp, 556
	ld.d	$a4, $a4, 0
	slli.d	$t0, $t0, 3
	ldx.d	$a4, $a4, $t0
	ld.w	$t0, $sp, 552
	ldx.b	$s1, $a4, $t0
	bnez	$a3, .LBB12_30
# %bb.28:
	bltz	$s1, .LBB12_30
# %bb.29:
	slli.d	$a3, $s1, 1
	andi	$s1, $a3, 254
.LBB12_30:
	ld.w	$t0, $sp, 512
	beqz	$t0, .LBB12_34
# %bb.31:
	ld.w	$a3, $sp, 516
	ori	$a4, $zero, 408
	mul.d	$a3, $a3, $a4
	add.d	$a3, $a2, $a3
	ld.w	$a3, $a3, 356
	pcalau12i	$a4, %got_pc_hi20(dec_picture)
	ld.d	$a4, $a4, %got_pc_lo12(dec_picture)
	ld.d	$a4, $a4, 0
	ori	$t1, $s3, 1560
	ldx.d	$a4, $a4, $t1
	ld.w	$t1, $sp, 532
	ld.d	$a4, $a4, 0
	slli.d	$t1, $t1, 3
	ldx.d	$a4, $a4, $t1
	ld.w	$t1, $sp, 528
	ldx.b	$s1, $a4, $t1
	bnez	$a3, .LBB12_34
# %bb.32:
	bltz	$s1, .LBB12_34
# %bb.33:
	slli.d	$a3, $s1, 1
	andi	$s1, $a3, 254
.LBB12_34:
	addi.w	$a4, $zero, -1
	move	$a3, $a4
	beqz	$a5, .LBB12_38
# %bb.35:
	ld.w	$a3, $sp, 588
	ori	$a5, $zero, 408
	mul.d	$a3, $a3, $a5
	add.d	$a3, $a2, $a3
	ld.w	$a5, $a3, 356
	pcalau12i	$a3, %got_pc_hi20(dec_picture)
	ld.d	$a3, $a3, %got_pc_lo12(dec_picture)
	ld.d	$a3, $a3, 0
	ori	$t1, $s3, 1560
	ldx.d	$a3, $a3, $t1
	ld.w	$t1, $sp, 604
	ld.d	$a3, $a3, 8
	slli.d	$t1, $t1, 3
	ldx.d	$a3, $a3, $t1
	ld.w	$t1, $sp, 600
	ldx.b	$a3, $a3, $t1
	bnez	$a5, .LBB12_38
# %bb.36:
	bltz	$a3, .LBB12_38
# %bb.37:
	slli.d	$a3, $a3, 1
	andi	$a3, $a3, 254
.LBB12_38:
	move	$a5, $a4
	beqz	$a6, .LBB12_42
# %bb.39:
	ld.w	$a5, $sp, 564
	ori	$a6, $zero, 408
	mul.d	$a5, $a5, $a6
	add.d	$a5, $a2, $a5
	ld.w	$a6, $a5, 356
	pcalau12i	$a5, %got_pc_hi20(dec_picture)
	ld.d	$a5, $a5, %got_pc_lo12(dec_picture)
	ld.d	$a5, $a5, 0
	ori	$t1, $s3, 1560
	ldx.d	$a5, $a5, $t1
	ld.w	$t1, $sp, 580
	ld.d	$a5, $a5, 8
	slli.d	$t1, $t1, 3
	ldx.d	$a5, $a5, $t1
	ld.w	$t1, $sp, 576
	ldx.b	$a5, $a5, $t1
	bnez	$a6, .LBB12_42
# %bb.40:
	bltz	$a5, .LBB12_42
# %bb.41:
	slli.d	$a5, $a5, 1
	andi	$a5, $a5, 254
.LBB12_42:
	beqz	$a7, .LBB12_46
# %bb.43:
	ld.w	$a4, $sp, 540
	ori	$a6, $zero, 408
	mul.d	$a4, $a4, $a6
	add.d	$a4, $a2, $a4
	ld.w	$a6, $a4, 356
	pcalau12i	$a4, %got_pc_hi20(dec_picture)
	ld.d	$a4, $a4, %got_pc_lo12(dec_picture)
	ld.d	$a4, $a4, 0
	ori	$a7, $s3, 1560
	ldx.d	$a4, $a4, $a7
	ld.w	$a7, $sp, 556
	ld.d	$a4, $a4, 8
	slli.d	$a7, $a7, 3
	ldx.d	$a4, $a4, $a7
	ld.w	$a7, $sp, 552
	ldx.b	$a4, $a4, $a7
	bnez	$a6, .LBB12_46
# %bb.44:
	bltz	$a4, .LBB12_46
# %bb.45:
	slli.d	$a4, $a4, 1
	andi	$a4, $a4, 254
.LBB12_46:
	beqz	$t0, .LBB12_132
# %bb.47:
	ld.w	$a4, $sp, 516
	ori	$a6, $zero, 408
	mul.d	$a4, $a4, $a6
	add.d	$a2, $a2, $a4
	ld.w	$a2, $a2, 356
	pcalau12i	$a4, %got_pc_hi20(dec_picture)
	ld.d	$a4, $a4, %got_pc_lo12(dec_picture)
	ld.d	$a4, $a4, 0
	ori	$a6, $s3, 1560
	ldx.d	$a4, $a4, $a6
	ld.w	$a6, $sp, 532
	ld.d	$a4, $a4, 8
	slli.d	$a6, $a6, 3
	ldx.d	$a4, $a4, $a6
	ld.w	$a6, $sp, 528
	ldx.b	$a4, $a4, $a6
	bnez	$a2, .LBB12_132
# %bb.48:
	bltz	$a4, .LBB12_132
# %bb.49:
	slli.d	$a2, $a4, 1
	andi	$a4, $a2, 254
	b	.LBB12_132
.LBB12_50:                              # %.preheader967
	ori	$s0, $zero, 2
	ori	$s1, $zero, 4
	ori	$s2, $zero, 255
	pcalau12i	$a0, %got_pc_hi20(dec_picture)
	ld.d	$s5, $a0, %got_pc_lo12(dec_picture)
	lu12i.w	$a0, 77
	ori	$s6, $a0, 1560
	pcalau12i	$a0, %got_pc_hi20(listXsize)
	ld.d	$s8, $a0, %got_pc_lo12(listXsize)
	move	$a1, $zero
	st.d	$zero, $sp, 464                 # 8-byte Folded Spill
	ori	$s4, $zero, 1584
	b	.LBB12_52
	.p2align	4, , 16
.LBB12_51:                              # %.loopexit966
                                        #   in Loop: Header=BB12_52 Depth=1
	ld.d	$a1, $sp, 456                   # 8-byte Folded Reload
	addi.d	$a1, $a1, 1
	ld.d	$a0, $sp, 464                   # 8-byte Folded Reload
	xori	$a0, $a0, 1
	st.d	$a0, $sp, 464                   # 8-byte Folded Spill
	beq	$a1, $s1, .LBB12_161
.LBB12_52:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB12_55 Depth 2
                                        #       Child Loop BB12_58 Depth 3
                                        #         Child Loop BB12_69 Depth 4
                                        #         Child Loop BB12_71 Depth 4
                                        #         Child Loop BB12_79 Depth 4
	addi.d	$a0, $t5, 328
	st.d	$a1, $sp, 456                   # 8-byte Folded Spill
	ldx.bu	$a0, $a0, $a1
	bnez	$a0, .LBB12_51
# %bb.53:                               #   in Loop: Header=BB12_52 Depth=1
	ld.d	$a0, $sp, 464                   # 8-byte Folded Reload
	andi	$a0, $a0, 1
	masknez	$a1, $s0, $a0
	maskeqz	$a0, $s1, $a0
	or	$fp, $a0, $a1
	ld.d	$a2, $sp, 456                   # 8-byte Folded Reload
	andi	$a0, $a2, 2
	slli.d	$a1, $a2, 1
	andi	$a1, $a1, 2
	st.d	$a1, $sp, 480                   # 8-byte Folded Spill
	ori	$a1, $a2, 1
	addi.w	$a1, $a1, 0
	st.d	$a1, $sp, 472                   # 8-byte Folded Spill
	b	.LBB12_55
	.p2align	4, , 16
.LBB12_54:                              #   in Loop: Header=BB12_55 Depth=2
	addi.w	$a0, $s7, 1
	ld.d	$a1, $sp, 472                   # 8-byte Folded Reload
	beq	$s7, $a1, .LBB12_51
.LBB12_55:                              #   Parent Loop BB12_52 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB12_58 Depth 3
                                        #         Child Loop BB12_69 Depth 4
                                        #         Child Loop BB12_71 Depth 4
                                        #         Child Loop BB12_79 Depth 4
	move	$s7, $a0
	ld.d	$s3, $sp, 480                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 496                   # 8-byte Folded Reload
	b	.LBB12_58
	.p2align	4, , 16
.LBB12_56:                              #   in Loop: Header=BB12_58 Depth=3
	move	$a3, $zero
.LBB12_57:                              # %.thread925.thread
                                        #   in Loop: Header=BB12_58 Depth=3
	ld.d	$a2, $s5, 0
	ldx.d	$a2, $a2, $s6
	ld.d	$a2, $a2, 0
	add.w	$a0, $a0, $s7
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $a2, $a0
	stx.b	$a3, $a0, $a1
	ld.d	$a0, $s5, 0
	ldx.d	$a0, $a0, $s6
	ld.d	$a3, $sp, 496                   # 8-byte Folded Reload
	ld.w	$a1, $a3, 76
	ld.d	$a0, $a0, 8
	add.w	$a1, $a1, $s7
	ld.w	$a2, $a3, 92
	slli.d	$a1, $a1, 3
	ldx.d	$a0, $a0, $a1
	add.w	$a1, $a2, $s3
	addi.w	$s3, $s3, 1
	stx.b	$zero, $a0, $a1
	beq	$s3, $fp, .LBB12_54
.LBB12_58:                              #   Parent Loop BB12_52 Depth=1
                                        #     Parent Loop BB12_55 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB12_69 Depth 4
                                        #         Child Loop BB12_71 Depth 4
                                        #         Child Loop BB12_79 Depth 4
	ldptr.w	$a2, $a3, 5624
	beqz	$a2, .LBB12_62
# %bb.59:                               #   in Loop: Header=BB12_58 Depth=3
	ld.w	$a0, $t5, 356
	beqz	$a0, .LBB12_62
# %bb.60:                               #   in Loop: Header=BB12_58 Depth=3
	ld.d	$a4, $sp, 496                   # 8-byte Folded Reload
	ld.bu	$a0, $a4, 4
	andi	$a1, $a0, 1
	sltui	$a3, $a1, 1
	ld.w	$a0, $a4, 76
	masknez	$a4, $s1, $a3
	maskeqz	$a3, $s0, $a3
	or	$a3, $a3, $a4
	bnez	$a1, .LBB12_63
# %bb.61:                               #   in Loop: Header=BB12_58 Depth=3
	srai.d	$a1, $a0, 1
	b	.LBB12_64
	.p2align	4, , 16
.LBB12_62:                              # %.thread
                                        #   in Loop: Header=BB12_58 Depth=3
	ld.d	$t2, $sp, 496                   # 8-byte Folded Reload
	ld.w	$a0, $t2, 76
	move	$a3, $zero
	move	$a1, $a0
	b	.LBB12_65
.LBB12_63:                              #   in Loop: Header=BB12_58 Depth=3
	addi.w	$a1, $a0, -4
	srai.d	$a1, $a1, 1
.LBB12_64:                              #   in Loop: Header=BB12_58 Depth=3
	ld.d	$t2, $sp, 496                   # 8-byte Folded Reload
.LBB12_65:                              #   in Loop: Header=BB12_58 Depth=3
	ld.d	$a4, $t1, 0
	add.w	$a1, $a1, $s7
	slli.d	$a5, $a1, 3
	ld.w	$a1, $t2, 92
	ldx.d	$a4, $a4, $a5
	add.w	$a1, $a1, $s3
	ldx.bu	$a4, $a4, $a1
	addi.d	$a4, $a4, -255
	sltui	$a4, $a4, 1
	slli.d	$a6, $a4, 3
	ldx.d	$a6, $t1, $a6
	ldx.d	$a6, $a6, $a5
	ldx.bu	$a6, $a6, $a1
	beq	$a6, $s2, .LBB12_56
# %bb.66:                               # %.preheader965
                                        #   in Loop: Header=BB12_58 Depth=3
	ldptr.w	$a6, $t2, 5640
	slli.d	$a7, $a3, 2
	ldx.w	$a7, $s8, $a7
	slt	$t0, $a6, $a7
	masknez	$a7, $a7, $t0
	maskeqz	$a6, $a6, $t0
	or	$a7, $a6, $a7
	blez	$a7, .LBB12_75
# %bb.67:                               # %.lr.ph
                                        #   in Loop: Header=BB12_58 Depth=3
	ldptr.w	$t1, $t2, 5584
	ld.d	$a6, $s5, 0
	slli.d	$t0, $a3, 3
	slli.d	$a3, $a3, 8
	or	$a3, $a3, $t0
	add.d	$a3, $a6, $a3
	addi.d	$a6, $a3, 24
	ld.d	$a3, $sp, 208                   # 8-byte Folded Reload
	alsl.d	$t0, $a4, $a3, 3
	bstrpick.d	$a4, $a7, 31, 0
	slli.d	$a7, $a1, 3
	beqz	$t1, .LBB12_76
# %bb.68:                               # %.lr.ph.split.us
                                        #   in Loop: Header=BB12_58 Depth=3
	ld.d	$a3, $t0, 0
	ldx.d	$a3, $a3, $a5
	ld.w	$t0, $t2, 12
	ldx.d	$a5, $a3, $a7
	mul.d	$a3, $t0, $s4
	add.d	$a6, $a6, $a3
	move	$a3, $zero
	beqz	$a2, .LBB12_71
	.p2align	4, , 16
.LBB12_69:                              # %.lr.ph.split.us.split
                                        #   Parent Loop BB12_52 Depth=1
                                        #     Parent Loop BB12_55 Depth=2
                                        #       Parent Loop BB12_58 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.d	$a2, $a6, 0
	beq	$a2, $a5, .LBB12_74
# %bb.70:                               #   in Loop: Header=BB12_69 Depth=4
	addi.d	$a3, $a3, 1
	addi.d	$a6, $a6, 8
	bne	$a4, $a3, .LBB12_69
	b	.LBB12_73
	.p2align	4, , 16
.LBB12_71:                              # %.lr.ph.split.us.split.us
                                        #   Parent Loop BB12_52 Depth=1
                                        #     Parent Loop BB12_55 Depth=2
                                        #       Parent Loop BB12_58 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.d	$a2, $a6, 0
	beq	$a2, $a5, .LBB12_74
# %bb.72:                               #   in Loop: Header=BB12_71 Depth=4
	addi.d	$a3, $a3, 1
	addi.d	$a6, $a6, 8
	bne	$a4, $a3, .LBB12_71
.LBB12_73:                              # %.thread925.thread1633
                                        #   in Loop: Header=BB12_58 Depth=3
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
	addi.w	$a1, $zero, -1111
	pcaddu18i	$ra, %call36(error)
	jirl	$ra, $ra, 0
	ld.d	$t5, $sp, 272                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 496                   # 8-byte Folded Reload
	ld.w	$a1, $a0, 92
	ld.w	$a0, $a0, 76
	add.w	$a1, $a1, $s3
	ori	$a3, $zero, 172
.LBB12_74:                              # %.thread925.thread.loopexit
                                        #   in Loop: Header=BB12_58 Depth=3
	ld.d	$t1, $sp, 216                   # 8-byte Folded Reload
	b	.LBB12_57
	.p2align	4, , 16
.LBB12_75:                              #   in Loop: Header=BB12_58 Depth=3
	ori	$a3, $zero, 255
	b	.LBB12_57
.LBB12_76:                              # %.lr.ph.split.preheader
                                        #   in Loop: Header=BB12_58 Depth=3
	pcalau12i	$a3, %got_pc_hi20(listX)
	ld.d	$a3, $a3, %got_pc_lo12(listX)
	ld.d	$t1, $a3, 0
	move	$a3, $zero
	b	.LBB12_79
	.p2align	4, , 16
.LBB12_77:                              #   in Loop: Header=BB12_79 Depth=4
	ld.d	$t3, $sp, 496                   # 8-byte Folded Reload
	ld.w	$t3, $t3, 12
	ldx.d	$t2, $t2, $a5
	mul.d	$t3, $t3, $s4
	ldx.d	$t3, $a6, $t3
	ldx.d	$t2, $t2, $a7
	beq	$t3, $t2, .LBB12_74
.LBB12_78:                              #   in Loop: Header=BB12_79 Depth=4
	addi.d	$a3, $a3, 1
	addi.d	$a6, $a6, 8
	addi.d	$t1, $t1, 8
	beq	$a4, $a3, .LBB12_73
.LBB12_79:                              # %.lr.ph.split
                                        #   Parent Loop BB12_52 Depth=1
                                        #     Parent Loop BB12_55 Depth=2
                                        #       Parent Loop BB12_58 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	beqz	$a2, .LBB12_81
# %bb.80:                               #   in Loop: Header=BB12_79 Depth=4
	ld.w	$t3, $t5, 356
	ld.d	$t2, $t0, 0
	bnez	$t3, .LBB12_77
	b	.LBB12_82
	.p2align	4, , 16
.LBB12_81:                              # %.lr.ph.split..critedge_crit_edge
                                        #   in Loop: Header=BB12_79 Depth=4
	ld.d	$t2, $t0, 0
.LBB12_82:                              # %.critedge
                                        #   in Loop: Header=BB12_79 Depth=4
	ld.d	$t3, $t1, 0
	ldx.d	$t2, $t2, $a5
	ld.w	$t4, $t3, 8
	ldx.d	$t2, $t2, $a7
	slli.w	$t4, $t4, 1
	beq	$t2, $t4, .LBB12_74
# %bb.83:                               #   in Loop: Header=BB12_79 Depth=4
	ld.w	$t3, $t3, 12
	slli.w	$t3, $t3, 1
	bne	$t2, $t3, .LBB12_78
	b	.LBB12_74
.LBB12_84:
	ld.w	$a2, $sp, 584
	addi.w	$s1, $zero, -1
	move	$a0, $s1
	beqz	$a2, .LBB12_86
# %bb.85:
	pcalau12i	$a0, %got_pc_hi20(dec_picture)
	ld.d	$a0, $a0, %got_pc_lo12(dec_picture)
	ld.d	$a0, $a0, 0
	ori	$a1, $s3, 1560
	ldx.d	$a0, $a0, $a1
	ld.w	$a1, $sp, 604
	ld.d	$a0, $a0, 0
	slli.d	$a1, $a1, 3
	ldx.d	$a0, $a0, $a1
	ld.w	$a1, $sp, 600
	ldx.b	$a0, $a0, $a1
.LBB12_86:
	ld.w	$a6, $sp, 560
	move	$a1, $s1
	beqz	$a6, .LBB12_88
# %bb.87:
	pcalau12i	$a1, %got_pc_hi20(dec_picture)
	ld.d	$a1, $a1, %got_pc_lo12(dec_picture)
	ld.d	$a1, $a1, 0
	ori	$a3, $s3, 1560
	ldx.d	$a1, $a1, $a3
	ld.w	$a3, $sp, 580
	ld.d	$a1, $a1, 0
	slli.d	$a3, $a3, 3
	ldx.d	$a1, $a1, $a3
	ld.w	$a3, $sp, 576
	ldx.b	$a1, $a1, $a3
.LBB12_88:
	ld.w	$a7, $sp, 536
	beqz	$a7, .LBB12_90
# %bb.89:
	pcalau12i	$a3, %got_pc_hi20(dec_picture)
	ld.d	$a3, $a3, %got_pc_lo12(dec_picture)
	ld.d	$a3, $a3, 0
	ori	$a4, $s3, 1560
	ldx.d	$a3, $a3, $a4
	ld.w	$a4, $sp, 556
	ld.d	$a3, $a3, 0
	slli.d	$a4, $a4, 3
	ldx.d	$a3, $a3, $a4
	ld.w	$a4, $sp, 552
	ldx.b	$s1, $a3, $a4
.LBB12_90:
	ld.w	$t0, $sp, 512
	beqz	$t0, .LBB12_92
# %bb.91:
	pcalau12i	$a3, %got_pc_hi20(dec_picture)
	ld.d	$a3, $a3, %got_pc_lo12(dec_picture)
	ld.d	$a3, $a3, 0
	ori	$a4, $s3, 1560
	ldx.d	$a3, $a3, $a4
	ld.w	$a4, $sp, 532
	ld.d	$a3, $a3, 0
	slli.d	$a4, $a4, 3
	ldx.d	$a3, $a3, $a4
	ld.w	$a4, $sp, 528
	ldx.b	$s1, $a3, $a4
.LBB12_92:
	addi.w	$a4, $zero, -1
	move	$a3, $a4
	beqz	$a2, .LBB12_94
# %bb.93:
	pcalau12i	$a2, %got_pc_hi20(dec_picture)
	ld.d	$a2, $a2, %got_pc_lo12(dec_picture)
	ld.d	$a2, $a2, 0
	ori	$a3, $s3, 1560
	ldx.d	$a2, $a2, $a3
	ld.w	$a3, $sp, 604
	ld.d	$a2, $a2, 8
	slli.d	$a3, $a3, 3
	ldx.d	$a2, $a2, $a3
	ld.w	$a3, $sp, 600
	ldx.b	$a3, $a2, $a3
.LBB12_94:
	move	$a5, $a4
	beqz	$a6, .LBB12_96
# %bb.95:
	pcalau12i	$a2, %got_pc_hi20(dec_picture)
	ld.d	$a2, $a2, %got_pc_lo12(dec_picture)
	ld.d	$a2, $a2, 0
	ori	$a5, $s3, 1560
	ldx.d	$a2, $a2, $a5
	ld.w	$a5, $sp, 580
	ld.d	$a2, $a2, 8
	slli.d	$a5, $a5, 3
	ldx.d	$a2, $a2, $a5
	ld.w	$a5, $sp, 576
	ldx.b	$a5, $a2, $a5
.LBB12_96:
	beqz	$a7, .LBB12_98
# %bb.97:
	pcalau12i	$a2, %got_pc_hi20(dec_picture)
	ld.d	$a2, $a2, %got_pc_lo12(dec_picture)
	ld.d	$a2, $a2, 0
	ori	$a4, $s3, 1560
	ldx.d	$a2, $a2, $a4
	ld.w	$a4, $sp, 556
	ld.d	$a2, $a2, 8
	slli.d	$a4, $a4, 3
	ldx.d	$a2, $a2, $a4
	ld.w	$a4, $sp, 552
	ldx.b	$a4, $a2, $a4
.LBB12_98:
	beqz	$t0, .LBB12_132
# %bb.99:
	pcalau12i	$a2, %got_pc_hi20(dec_picture)
	ld.d	$a2, $a2, %got_pc_lo12(dec_picture)
	ld.d	$a2, $a2, 0
	ori	$a4, $s3, 1560
	ldx.d	$a2, $a2, $a4
	ld.w	$a4, $sp, 532
	ld.d	$a2, $a2, 8
	slli.d	$a4, $a4, 3
	ldx.d	$a2, $a2, $a4
	ld.w	$a4, $sp, 528
	ldx.b	$a4, $a2, $a4
	b	.LBB12_132
.LBB12_100:
	addi.w	$s1, $zero, -1
	move	$a0, $s1
	beqz	$a5, .LBB12_104
# %bb.101:
	ld.w	$a0, $sp, 588
	ori	$a1, $zero, 408
	mul.d	$a0, $a0, $a1
	add.d	$a0, $a2, $a0
	ld.w	$a1, $a0, 356
	pcalau12i	$a0, %got_pc_hi20(dec_picture)
	ld.d	$a0, $a0, %got_pc_lo12(dec_picture)
	ld.d	$a0, $a0, 0
	ori	$a3, $s3, 1560
	ldx.d	$a0, $a0, $a3
	ld.w	$a3, $sp, 604
	ld.d	$a0, $a0, 0
	slli.d	$a3, $a3, 3
	ldx.d	$a0, $a0, $a3
	ld.w	$a3, $sp, 600
	ldx.b	$a0, $a0, $a3
	bnez	$a1, .LBB12_103
# %bb.102:
	bgez	$a0, .LBB12_104
.LBB12_103:                             # %._crit_edge1391
	srai.d	$a0, $a0, 1
.LBB12_104:
	ld.w	$a6, $sp, 560
	move	$a1, $s1
	beqz	$a6, .LBB12_108
# %bb.105:
	ld.w	$a1, $sp, 564
	ori	$a3, $zero, 408
	mul.d	$a1, $a1, $a3
	add.d	$a1, $a2, $a1
	ld.w	$a3, $a1, 356
	pcalau12i	$a1, %got_pc_hi20(dec_picture)
	ld.d	$a1, $a1, %got_pc_lo12(dec_picture)
	ld.d	$a1, $a1, 0
	ori	$a4, $s3, 1560
	ldx.d	$a1, $a1, $a4
	ld.w	$a4, $sp, 580
	ld.d	$a1, $a1, 0
	slli.d	$a4, $a4, 3
	ldx.d	$a1, $a1, $a4
	ld.w	$a4, $sp, 576
	ldx.b	$a1, $a1, $a4
	bnez	$a3, .LBB12_107
# %bb.106:
	bgez	$a1, .LBB12_108
.LBB12_107:                             # %._crit_edge1406
	srai.d	$a1, $a1, 1
.LBB12_108:
	ld.w	$a7, $sp, 536
	beqz	$a7, .LBB12_112
# %bb.109:
	ld.w	$a3, $sp, 540
	ori	$a4, $zero, 408
	mul.d	$a3, $a3, $a4
	add.d	$a3, $a2, $a3
	ld.w	$a3, $a3, 356
	pcalau12i	$a4, %got_pc_hi20(dec_picture)
	ld.d	$a4, $a4, %got_pc_lo12(dec_picture)
	ld.d	$a4, $a4, 0
	ori	$t0, $s3, 1560
	ldx.d	$a4, $a4, $t0
	ld.w	$t0, $sp, 556
	ld.d	$a4, $a4, 0
	slli.d	$t0, $t0, 3
	ldx.d	$a4, $a4, $t0
	ld.w	$t0, $sp, 552
	ldx.b	$s1, $a4, $t0
	bnez	$a3, .LBB12_111
# %bb.110:
	bgez	$s1, .LBB12_112
.LBB12_111:                             # %._crit_edge1421
	srai.d	$s1, $s1, 1
.LBB12_112:
	ld.w	$t0, $sp, 512
	beqz	$t0, .LBB12_116
# %bb.113:
	ld.w	$a3, $sp, 516
	ori	$a4, $zero, 408
	mul.d	$a3, $a3, $a4
	add.d	$a3, $a2, $a3
	ld.w	$a3, $a3, 356
	pcalau12i	$a4, %got_pc_hi20(dec_picture)
	ld.d	$a4, $a4, %got_pc_lo12(dec_picture)
	ld.d	$a4, $a4, 0
	ori	$t1, $s3, 1560
	ldx.d	$a4, $a4, $t1
	ld.w	$t1, $sp, 532
	ld.d	$a4, $a4, 0
	slli.d	$t1, $t1, 3
	ldx.d	$a4, $a4, $t1
	ld.w	$t1, $sp, 528
	ldx.b	$s1, $a4, $t1
	bnez	$a3, .LBB12_115
# %bb.114:
	bgez	$s1, .LBB12_116
.LBB12_115:                             # %._crit_edge1436
	srai.d	$s1, $s1, 1
.LBB12_116:
	addi.w	$a4, $zero, -1
	move	$a3, $a4
	beqz	$a5, .LBB12_120
# %bb.117:
	ld.w	$a3, $sp, 588
	ori	$a5, $zero, 408
	mul.d	$a3, $a3, $a5
	add.d	$a3, $a2, $a3
	ld.w	$a5, $a3, 356
	pcalau12i	$a3, %got_pc_hi20(dec_picture)
	ld.d	$a3, $a3, %got_pc_lo12(dec_picture)
	ld.d	$a3, $a3, 0
	ori	$t1, $s3, 1560
	ldx.d	$a3, $a3, $t1
	ld.w	$t1, $sp, 604
	ld.d	$a3, $a3, 8
	slli.d	$t1, $t1, 3
	ldx.d	$a3, $a3, $t1
	ld.w	$t1, $sp, 600
	ldx.b	$a3, $a3, $t1
	bnez	$a5, .LBB12_119
# %bb.118:
	bgez	$a3, .LBB12_120
.LBB12_119:                             # %._crit_edge1451
	srai.d	$a3, $a3, 1
.LBB12_120:
	move	$a5, $a4
	beqz	$a6, .LBB12_124
# %bb.121:
	ld.w	$a5, $sp, 564
	ori	$a6, $zero, 408
	mul.d	$a5, $a5, $a6
	add.d	$a5, $a2, $a5
	ld.w	$a6, $a5, 356
	pcalau12i	$a5, %got_pc_hi20(dec_picture)
	ld.d	$a5, $a5, %got_pc_lo12(dec_picture)
	ld.d	$a5, $a5, 0
	ori	$t1, $s3, 1560
	ldx.d	$a5, $a5, $t1
	ld.w	$t1, $sp, 580
	ld.d	$a5, $a5, 8
	slli.d	$t1, $t1, 3
	ldx.d	$a5, $a5, $t1
	ld.w	$t1, $sp, 576
	ldx.b	$a5, $a5, $t1
	bnez	$a6, .LBB12_123
# %bb.122:
	bgez	$a5, .LBB12_124
.LBB12_123:                             # %._crit_edge1467
	srai.d	$a5, $a5, 1
.LBB12_124:
	beqz	$a7, .LBB12_128
# %bb.125:
	ld.w	$a4, $sp, 540
	ori	$a6, $zero, 408
	mul.d	$a4, $a4, $a6
	add.d	$a4, $a2, $a4
	ld.w	$a6, $a4, 356
	pcalau12i	$a4, %got_pc_hi20(dec_picture)
	ld.d	$a4, $a4, %got_pc_lo12(dec_picture)
	ld.d	$a4, $a4, 0
	ori	$a7, $s3, 1560
	ldx.d	$a4, $a4, $a7
	ld.w	$a7, $sp, 556
	ld.d	$a4, $a4, 8
	slli.d	$a7, $a7, 3
	ldx.d	$a4, $a4, $a7
	ld.w	$a7, $sp, 552
	ldx.b	$a4, $a4, $a7
	bnez	$a6, .LBB12_127
# %bb.126:
	bgez	$a4, .LBB12_128
.LBB12_127:                             # %._crit_edge1483
	srai.d	$a4, $a4, 1
.LBB12_128:
	beqz	$t0, .LBB12_132
# %bb.129:
	ld.w	$a4, $sp, 516
	ori	$a6, $zero, 408
	mul.d	$a4, $a4, $a6
	add.d	$a2, $a2, $a4
	ld.w	$a2, $a2, 356
	pcalau12i	$a4, %got_pc_hi20(dec_picture)
	ld.d	$a4, $a4, %got_pc_lo12(dec_picture)
	ld.d	$a4, $a4, 0
	ori	$a6, $s3, 1560
	ldx.d	$a4, $a4, $a6
	ld.w	$a6, $sp, 532
	ld.d	$a4, $a4, 8
	slli.d	$a6, $a6, 3
	ldx.d	$a4, $a4, $a6
	ld.w	$a6, $sp, 528
	ldx.b	$a4, $a4, $a6
	bnez	$a2, .LBB12_131
# %bb.130:
	bgez	$a4, .LBB12_132
.LBB12_131:                             # %._crit_edge1499
	srai.d	$a4, $a4, 1
.LBB12_132:
	or	$a2, $a0, $a1
	addi.w	$a2, $a2, 0
	addi.w	$a1, $a1, 0
	addi.w	$a6, $zero, -1
	slt	$a2, $a6, $a2
	sltu	$a7, $a0, $a1
	masknez	$t0, $a1, $a7
	maskeqz	$a7, $a0, $a7
	or	$a7, $a7, $t0
	slt	$t0, $a1, $a0
	masknez	$a1, $a1, $t0
	maskeqz	$a0, $a0, $t0
	or	$a0, $a0, $a1
	masknez	$a0, $a0, $a2
	maskeqz	$a1, $a7, $a2
	or	$a0, $a1, $a0
	ext.w.b	$a0, $a0
	or	$a1, $a0, $s1
	addi.w	$a1, $a1, 0
	addi.w	$a2, $s1, 0
	slt	$a1, $a6, $a1
	sltu	$a7, $a0, $a2
	maskeqz	$t0, $a0, $a7
	masknez	$a7, $a2, $a7
	or	$a7, $t0, $a7
	slt	$t0, $a2, $a0
	maskeqz	$a0, $a0, $t0
	masknez	$a2, $a2, $t0
	or	$a0, $a0, $a2
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a7, $a1
	or	$s0, $a1, $a0
	or	$a0, $a3, $a5
	addi.w	$a0, $a0, 0
	addi.w	$a1, $a5, 0
	slt	$a0, $a6, $a0
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
	slt	$a1, $a6, $a1
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
	ext.w.b	$s1, $s0
	or	$s4, $a1, $a0
	bltz	$s1, .LBB12_134
# %bb.133:
	pcalau12i	$a0, %got_pc_hi20(dec_picture)
	ld.d	$a0, $a0, %got_pc_lo12(dec_picture)
	ld.d	$a0, $a0, 0
	ori	$a1, $s3, 1560
	add.d	$a2, $a0, $a1
	ldx.d	$a4, $a0, $a1
	ld.d	$a5, $a2, 24
	ori	$a0, $zero, 16
	st.d	$a0, $sp, 8
	addi.d	$a1, $sp, 508
	st.d	$a0, $sp, 0
	move	$a0, $fp
	move	$a2, $s1
	move	$a3, $zero
	move	$a6, $zero
	move	$a7, $zero
	pcaddu18i	$ra, %call36(SetMotionVectorPredictor)
	jirl	$ra, $ra, 0
.LBB12_134:
	ext.w.b	$s2, $s4
	slli.w	$fp, $s4, 24
	bltz	$s2, .LBB12_136
# %bb.135:
	pcalau12i	$a0, %got_pc_hi20(dec_picture)
	ld.d	$a0, $a0, %got_pc_lo12(dec_picture)
	ld.d	$a0, $a0, 0
	ori	$a1, $s3, 1560
	add.d	$a2, $a0, $a1
	ldx.d	$a4, $a0, $a1
	ld.d	$a5, $a2, 24
	ori	$a0, $zero, 16
	st.d	$a0, $sp, 8
	addi.d	$a1, $sp, 504
	ori	$a3, $zero, 1
	st.d	$a0, $sp, 0
	ld.d	$a0, $sp, 496                   # 8-byte Folded Reload
	move	$a2, $s2
	move	$a6, $zero
	move	$a7, $zero
	pcaddu18i	$ra, %call36(SetMotionVectorPredictor)
	jirl	$ra, $ra, 0
	ld.hu	$a1, $sp, 504
	ld.hu	$t4, $sp, 506
	b	.LBB12_137
.LBB12_136:
	move	$t4, $zero
	move	$a1, $zero
.LBB12_137:
	and	$a2, $s2, $s1
	pcalau12i	$a0, %got_pc_hi20(listX)
	ld.d	$a0, $a0, %got_pc_lo12(listX)
	ld.d	$a3, $sp, 24                    # 8-byte Folded Reload
	alsl.d	$a3, $a3, $a0, 3
	ld.hu	$a4, $sp, 508
	ld.hu	$a5, $sp, 510
	addi.w	$a0, $s6, 0
	alsl.d	$a0, $a0, $s8, 3
	st.d	$a0, $sp, 480                   # 8-byte Folded Spill
	andi	$t1, $s0, 255
	ori	$t2, $s3, 1452
	pcalau12i	$a0, %got_pc_hi20(dec_picture)
	ld.d	$t3, $a0, %got_pc_lo12(dec_picture)
	move	$a6, $zero
	st.d	$zero, $sp, 472                 # 8-byte Folded Spill
	ori	$t6, $s3, 1584
	b	.LBB12_139
	.p2align	4, , 16
.LBB12_138:                             # %.loopexit969
                                        #   in Loop: Header=BB12_139 Depth=1
	ld.d	$a6, $sp, 464                   # 8-byte Folded Reload
	addi.d	$a6, $a6, 1
	ld.d	$a0, $sp, 472                   # 8-byte Folded Reload
	xori	$a0, $a0, 1
	st.d	$a0, $sp, 472                   # 8-byte Folded Spill
	ori	$a0, $zero, 4
	beq	$a6, $a0, .LBB12_160
.LBB12_139:                             # =>This Loop Header: Depth=1
                                        #     Child Loop BB12_142 Depth 2
                                        #       Child Loop BB12_144 Depth 3
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	addi.d	$a0, $a0, 328
	st.d	$a6, $sp, 464                   # 8-byte Folded Spill
	ldx.bu	$a0, $a0, $a6
	bnez	$a0, .LBB12_138
# %bb.140:                              #   in Loop: Header=BB12_139 Depth=1
	ld.d	$a0, $sp, 472                   # 8-byte Folded Reload
	andi	$a0, $a0, 1
	ori	$a6, $zero, 2
	masknez	$a6, $a6, $a0
	ori	$a7, $zero, 4
	maskeqz	$a0, $a7, $a0
	or	$t7, $a0, $a6
	ld.d	$a7, $sp, 464                   # 8-byte Folded Reload
	addi.d	$a0, $a7, 2
	bstrpick.d	$a6, $a7, 62, 1
	slli.d	$t8, $a6, 1
	slli.d	$a6, $a7, 1
	andi	$s3, $a6, 2
	bstrpick.d	$a0, $a0, 31, 1
	slli.d	$a6, $a0, 1
	b	.LBB12_142
	.p2align	4, , 16
.LBB12_141:                             #   in Loop: Header=BB12_142 Depth=2
	addi.d	$t8, $t8, 1
	beq	$t8, $a6, .LBB12_138
.LBB12_142:                             #   Parent Loop BB12_139 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB12_144 Depth 3
	ld.d	$a0, $sp, 480                   # 8-byte Folded Reload
	alsl.d	$s6, $t8, $a0, 3
	move	$s7, $s3
	b	.LBB12_144
	.p2align	4, , 16
.LBB12_143:                             #   in Loop: Header=BB12_144 Depth=3
	addi.w	$s7, $s7, 1
	beq	$t7, $s7, .LBB12_141
.LBB12_144:                             #   Parent Loop BB12_139 Depth=1
                                        #     Parent Loop BB12_142 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a7, $sp, 496                   # 8-byte Folded Reload
	ld.w	$a0, $a7, 76
	ld.w	$a7, $a7, 92
	add.d	$a0, $t8, $a0
	add.w	$s8, $s7, $a7
	slli.d	$ra, $a0, 3
	bltz	$s1, .LBB12_149
# %bb.145:                              #   in Loop: Header=BB12_144 Depth=3
	bnez	$t1, .LBB12_148
# %bb.146:                              #   in Loop: Header=BB12_144 Depth=3
	ld.d	$a0, $s6, 0
	ldx.bu	$a0, $a0, $s8
	bnez	$a0, .LBB12_148
# %bb.147:                              #   in Loop: Header=BB12_144 Depth=3
	ld.d	$a0, $a3, 8
	ld.d	$a0, $a0, 0
	ldx.w	$a0, $a0, $t2
	beqz	$a0, .LBB12_158
	.p2align	4, , 16
.LBB12_148:                             #   in Loop: Header=BB12_144 Depth=3
	ld.d	$t0, $t3, 0
	ldx.d	$a0, $t0, $t6
	ld.d	$a0, $a0, 0
	ldx.d	$a0, $a0, $ra
	slli.d	$a7, $s8, 3
	ldx.d	$a7, $a0, $a7
	st.h	$a4, $a7, 0
	move	$t5, $a5
	move	$a0, $s0
	b	.LBB12_150
	.p2align	4, , 16
.LBB12_149:                             #   in Loop: Header=BB12_144 Depth=3
	ld.d	$t0, $t3, 0
	ldx.d	$a0, $t0, $t6
	ld.d	$a0, $a0, 0
	ldx.d	$a0, $a0, $ra
	slli.d	$a7, $s8, 3
	ldx.d	$a7, $a0, $a7
	move	$t5, $zero
	st.h	$zero, $a7, 0
	ori	$a0, $zero, 255
.LBB12_150:                             #   in Loop: Header=BB12_144 Depth=3
	st.h	$t5, $a7, 2
	lu12i.w	$a7, 77
	ori	$a7, $a7, 1560
	ldx.d	$t0, $t0, $a7
	ld.d	$t0, $t0, 0
	ldx.d	$t0, $t0, $ra
	stx.b	$a0, $t0, $s8
	bltz	$s2, .LBB12_155
# %bb.151:                              #   in Loop: Header=BB12_144 Depth=3
	bnez	$fp, .LBB12_154
# %bb.152:                              #   in Loop: Header=BB12_144 Depth=3
	ld.d	$a0, $s6, 0
	ldx.bu	$a0, $a0, $s8
	bnez	$a0, .LBB12_154
# %bb.153:                              #   in Loop: Header=BB12_144 Depth=3
	ld.d	$a0, $a3, 8
	ld.d	$a0, $a0, 0
	ldx.w	$a0, $a0, $t2
	beqz	$a0, .LBB12_159
	.p2align	4, , 16
.LBB12_154:                             #   in Loop: Header=BB12_144 Depth=3
	ld.d	$t0, $t3, 0
	ldx.d	$a0, $t0, $t6
	ld.d	$a0, $a0, 8
	ldx.d	$a0, $a0, $ra
	slli.d	$t5, $s8, 3
	ldx.d	$t5, $a0, $t5
	st.h	$a1, $t5, 0
	move	$a0, $t4
	move	$s5, $s4
	b	.LBB12_156
	.p2align	4, , 16
.LBB12_155:                             #   in Loop: Header=BB12_144 Depth=3
	ld.d	$t0, $t3, 0
	ldx.d	$a0, $t0, $t6
	ld.d	$a0, $a0, 8
	ldx.d	$a0, $a0, $ra
	slli.d	$t5, $s8, 3
	ldx.d	$t5, $a0, $t5
	move	$a0, $zero
	st.h	$zero, $t5, 0
	ori	$s5, $zero, 255
.LBB12_156:                             #   in Loop: Header=BB12_144 Depth=3
	st.h	$a0, $t5, 2
	ldx.d	$a0, $t0, $a7
	ld.d	$a0, $a0, 8
	ldx.d	$a0, $a0, $ra
	stx.b	$s5, $a0, $s8
	bgez	$a2, .LBB12_143
# %bb.157:                              #   in Loop: Header=BB12_144 Depth=3
	ld.d	$a0, $t3, 0
	ldx.d	$a0, $a0, $a7
	ld.d	$a0, $a0, 0
	ldx.d	$a0, $a0, $ra
	stx.b	$zero, $a0, $s8
	ld.d	$a0, $t3, 0
	ldx.d	$a0, $a0, $a7
	ld.d	$a0, $a0, 8
	ldx.d	$a0, $a0, $ra
	stx.b	$zero, $a0, $s8
	b	.LBB12_143
.LBB12_158:                             #   in Loop: Header=BB12_144 Depth=3
	ld.d	$t0, $t3, 0
	ldx.d	$a0, $t0, $t6
	ld.d	$a0, $a0, 0
	ldx.d	$a0, $a0, $ra
	slli.d	$a7, $s8, 3
	ldx.d	$a7, $a0, $a7
	move	$t5, $zero
	move	$a0, $zero
	st.h	$zero, $a7, 0
	b	.LBB12_150
.LBB12_159:                             #   in Loop: Header=BB12_144 Depth=3
	ld.d	$t0, $t3, 0
	ldx.d	$a0, $t0, $t6
	ld.d	$a0, $a0, 8
	ldx.d	$a0, $a0, $ra
	slli.d	$t5, $s8, 3
	ldx.d	$t5, $a0, $t5
	move	$a0, $zero
	move	$s5, $zero
	st.h	$zero, $t5, 0
	b	.LBB12_156
.LBB12_160:
	ld.d	$t5, $sp, 272                   # 8-byte Folded Reload
.LBB12_161:                             # %.loopexit968
	ld.d	$a0, $sp, 496                   # 8-byte Folded Reload
	ldptr.w	$a3, $a0, 5640
	ld.d	$a0, $sp, 448                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 440                   # 8-byte Folded Reload
	add.d	$a2, $a1, $a0
	addi.d	$a0, $t5, 332
	st.d	$a0, $sp, 280                   # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(active_pps)
	ori	$a0, $zero, 1
	st.d	$a3, $sp, 480                   # 8-byte Folded Spill
	st.d	$a2, $sp, 48                    # 8-byte Folded Spill
	st.d	$a1, $sp, 152                   # 8-byte Folded Spill
	bge	$a0, $a3, .LBB12_164
# %bb.162:
	ld.d	$a0, $a1, %pc_lo12(active_pps)
	ori	$a3, $zero, 3
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a1, $a1, 40
	ld.w	$a2, $a2, 12
	ld.w	$a0, $a0, 12
	st.w	$a3, $sp, 584
	ori	$a3, $zero, 56
	mul.d	$a2, $a2, $a3
	add.d	$a1, $a1, $a2
	st.d	$a1, $sp, 472                   # 8-byte Folded Spill
	beqz	$a0, .LBB12_173
# %bb.163:
	ld.d	$a0, $a1, 0
	ld.w	$a0, $a0, 24
	sltui	$a1, $a0, 1
	ori	$a0, $zero, 32
	masknez	$a0, $a0, $a1
	ori	$a2, $zero, 40
	maskeqz	$a2, $a2, $a1
	or	$a0, $a2, $a0
	pcalau12i	$a2, %got_pc_hi20(linfo_ue)
	ld.d	$a2, $a2, %got_pc_lo12(linfo_ue)
	masknez	$a2, $a2, $a1
	pcalau12i	$a3, %got_pc_hi20(readRefFrame_CABAC)
	ld.d	$a3, $a3, %got_pc_lo12(readRefFrame_CABAC)
	maskeqz	$a1, $a3, $a1
	or	$a1, $a1, $a2
	b	.LBB12_174
.LBB12_164:                             # %.preheader963
	pcalau12i	$a0, %got_pc_hi20(dec_picture)
	ld.d	$fp, $a0, %got_pc_lo12(dec_picture)
	st.d	$zero, $sp, 488                 # 8-byte Folded Spill
	move	$s3, $zero
	lu12i.w	$a0, 77
	ori	$s1, $a0, 1560
	ori	$s2, $zero, 4
	ld.d	$a4, $sp, 328                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	b	.LBB12_166
	.p2align	4, , 16
.LBB12_165:                             #   in Loop: Header=BB12_166 Depth=1
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 488                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a1
	st.d	$a0, $sp, 488                   # 8-byte Folded Spill
	move	$s3, $s4
	bge	$s4, $s2, .LBB12_195
.LBB12_166:                             # %.preheader962
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB12_168 Depth 2
                                        #       Child Loop BB12_172 Depth 3
	move	$s5, $zero
	move	$s6, $s3
	bstrins.d	$s6, $zero, 0, 0
	add.w	$s4, $s3, $a1
	b	.LBB12_168
	.p2align	4, , 16
.LBB12_167:                             # %.loopexit961
                                        #   in Loop: Header=BB12_168 Depth=2
	add.w	$s5, $s5, $a4
	bge	$s5, $s2, .LBB12_165
.LBB12_168:                             #   Parent Loop BB12_166 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB12_172 Depth 3
	srli.d	$a0, $s5, 1
	add.w	$a0, $a0, $s6
	ld.d	$a1, $sp, 280                   # 8-byte Folded Reload
	ldx.bu	$a1, $a1, $a0
	andi	$a1, $a1, 253
	ld.d	$s0, $sp, 496                   # 8-byte Folded Reload
	bnez	$a1, .LBB12_167
# %bb.169:                              #   in Loop: Header=BB12_168 Depth=2
	ld.d	$a1, $sp, 272                   # 8-byte Folded Reload
	addi.d	$a1, $a1, 328
	ldx.bu	$a0, $a1, $a0
	beqz	$a0, .LBB12_167
# %bb.170:                              #   in Loop: Header=BB12_168 Depth=2
	ld.w	$a0, $s0, 76
	add.w	$a1, $a0, $s3
	add.w	$a2, $s4, $a0
	bge	$a1, $a2, .LBB12_167
# %bb.171:                              # %.lr.ph987.preheader
                                        #   in Loop: Header=BB12_168 Depth=2
	ld.d	$a1, $sp, 488                   # 8-byte Folded Reload
	add.d	$s7, $a1, $a0
	slli.d	$s8, $s7, 3
	.p2align	4, , 16
.LBB12_172:                             # %.lr.ph987
                                        #   Parent Loop BB12_166 Depth=1
                                        #     Parent Loop BB12_168 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a0, $fp, 0
	ldx.d	$a0, $a0, $s1
	ld.d	$a0, $a0, 0
	ld.w	$a1, $s0, 92
	ldx.d	$a0, $a0, $s8
	add.w	$a1, $a1, $s5
	add.d	$a0, $a0, $a1
	move	$a1, $zero
	move	$a2, $a4
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a4, $sp, 328                   # 8-byte Folded Reload
	ld.w	$a0, $s0, 76
	addi.d	$s7, $s7, 1
	add.w	$a0, $s4, $a0
	addi.d	$s8, $s8, 8
	blt	$s7, $a0, .LBB12_172
	b	.LBB12_167
.LBB12_173:
	pcalau12i	$a0, %got_pc_hi20(linfo_ue)
	ld.d	$a1, $a0, %got_pc_lo12(linfo_ue)
	ori	$a0, $zero, 32
.LBB12_174:
	ld.d	$a4, $sp, 328                   # 8-byte Folded Reload
	lu12i.w	$a3, 77
	addi.d	$a2, $sp, 584
	stx.d	$a1, $a0, $a2
	pcalau12i	$a0, %got_pc_hi20(dec_picture)
	ld.d	$s6, $a0, %got_pc_lo12(dec_picture)
	st.d	$zero, $sp, 464                 # 8-byte Folded Spill
	move	$s5, $zero
	ori	$s8, $a3, 1560
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	b	.LBB12_176
	.p2align	4, , 16
.LBB12_175:                             #   in Loop: Header=BB12_176 Depth=1
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 464                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a1
	st.d	$a0, $sp, 464                   # 8-byte Folded Spill
	move	$s5, $s4
	ori	$a0, $zero, 4
	bge	$s4, $a0, .LBB12_195
.LBB12_176:                             # %.preheader959
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB12_178 Depth 2
                                        #       Child Loop BB12_194 Depth 3
	move	$fp, $zero
	move	$s3, $s5
	bstrins.d	$s3, $zero, 0, 0
	add.w	$s4, $s5, $a1
	b	.LBB12_178
	.p2align	4, , 16
.LBB12_177:                             # %.loopexit958
                                        #   in Loop: Header=BB12_178 Depth=2
	add.w	$fp, $fp, $a4
	ori	$a0, $zero, 4
	bge	$fp, $a0, .LBB12_175
.LBB12_178:                             #   Parent Loop BB12_176 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB12_194 Depth 3
	srli.d	$a0, $fp, 1
	add.w	$a0, $a0, $s3
	ld.d	$a1, $sp, 280                   # 8-byte Folded Reload
	ldx.bu	$a1, $a1, $a0
	andi	$a1, $a1, 253
	ld.d	$a5, $sp, 496                   # 8-byte Folded Reload
	bnez	$a1, .LBB12_177
# %bb.179:                              #   in Loop: Header=BB12_178 Depth=2
	ld.d	$a1, $sp, 272                   # 8-byte Folded Reload
	addi.d	$a1, $a1, 328
	ldx.bu	$a1, $a1, $a0
	beqz	$a1, .LBB12_177
# %bb.180:                              #   in Loop: Header=BB12_178 Depth=2
	stptr.w	$fp, $a5, 5608
	stptr.w	$s5, $a5, 5612
	ld.d	$a3, $sp, 272                   # 8-byte Folded Reload
	ld.w	$a1, $a3, 40
	ori	$a2, $zero, 8
	bne	$a1, $a2, .LBB12_184
# %bb.181:                              #   in Loop: Header=BB12_178 Depth=2
	ld.d	$a1, $sp, 488                   # 8-byte Folded Reload
	ori	$a2, $zero, 1
	beq	$a1, $a2, .LBB12_184
# %bb.182:                              #   in Loop: Header=BB12_178 Depth=2
	ld.w	$a1, $a5, 100
	beqz	$a1, .LBB12_184
# %bb.183:                              #   in Loop: Header=BB12_178 Depth=2
	move	$s2, $zero
	b	.LBB12_192
	.p2align	4, , 16
.LBB12_184:                             #   in Loop: Header=BB12_178 Depth=2
	addi.d	$a1, $a3, 328
	ldx.b	$a0, $a1, $a0
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(active_pps)
	ori	$a3, $zero, 3
	slt	$a0, $a3, $a0
	st.w	$a0, $sp, 608
	ld.w	$a0, $a1, 12
	beqz	$a0, .LBB12_187
# %bb.185:                              #   in Loop: Header=BB12_178 Depth=2
	ld.d	$a0, $sp, 480                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 472                   # 8-byte Folded Reload
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB12_190
# %bb.186:                              #   in Loop: Header=BB12_178 Depth=2
	ld.d	$a1, $a2, 0
	ld.w	$a0, $a1, 24
	bnez	$a0, .LBB12_189
	b	.LBB12_190
.LBB12_187:                             #   in Loop: Header=BB12_178 Depth=2
	ld.d	$a0, $sp, 480                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 472                   # 8-byte Folded Reload
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB12_190
# %bb.188:                              # %._crit_edge1521
                                        #   in Loop: Header=BB12_178 Depth=2
	ld.d	$a1, $a2, 0
.LBB12_189:                             #   in Loop: Header=BB12_178 Depth=2
	ori	$s0, $zero, 1
	st.w	$s0, $sp, 596
	addi.d	$a0, $sp, 584
	pcaddu18i	$ra, %call36(readSyntaxElement_FLC)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 588
	sub.w	$s2, $s0, $a0
	st.w	$s2, $sp, 588
	b	.LBB12_191
.LBB12_190:                             #   in Loop: Header=BB12_178 Depth=2
	st.w	$zero, $sp, 592
	ld.d	$a3, $a2, 48
	addi.d	$a0, $sp, 584
	move	$a1, $a5
	jirl	$ra, $a3, 0
	ld.w	$s2, $sp, 588
.LBB12_191:                             #   in Loop: Header=BB12_178 Depth=2
	ld.d	$a4, $sp, 328                   # 8-byte Folded Reload
.LBB12_192:                             #   in Loop: Header=BB12_178 Depth=2
	ld.d	$s0, $sp, 496                   # 8-byte Folded Reload
	ld.w	$a0, $s0, 76
	add.w	$a1, $a0, $s5
	add.w	$a2, $s4, $a0
	bge	$a1, $a2, .LBB12_177
# %bb.193:                              # %.lr.ph992.preheader
                                        #   in Loop: Header=BB12_178 Depth=2
	ld.d	$a1, $sp, 464                   # 8-byte Folded Reload
	add.d	$s1, $a1, $a0
	slli.d	$s7, $s1, 3
	.p2align	4, , 16
.LBB12_194:                             # %.lr.ph992
                                        #   Parent Loop BB12_176 Depth=1
                                        #     Parent Loop BB12_178 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a0, $s6, 0
	ldx.d	$a0, $a0, $s8
	ld.d	$a0, $a0, 0
	ld.w	$a1, $s0, 92
	ldx.d	$a0, $a0, $s7
	add.w	$a1, $a1, $fp
	add.d	$a0, $a0, $a1
	move	$a1, $s2
	move	$a2, $a4
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a4, $sp, 328                   # 8-byte Folded Reload
	ld.w	$a0, $s0, 76
	addi.d	$s1, $s1, 1
	add.w	$a0, $s4, $a0
	addi.d	$s7, $s7, 8
	blt	$s1, $a0, .LBB12_194
	b	.LBB12_177
.LBB12_195:                             # %.loopexit960
	ld.d	$a0, $sp, 496                   # 8-byte Folded Reload
	ldptr.w	$a0, $a0, 5644
	ori	$a2, $zero, 1
	st.d	$a0, $sp, 480                   # 8-byte Folded Spill
	bge	$a2, $a0, .LBB12_198
# %bb.196:
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(active_pps)
	ori	$a3, $zero, 3
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a1, $a1, 40
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	ld.w	$a2, $a2, 12
	ld.w	$a0, $a0, 12
	st.w	$a3, $sp, 584
	ori	$a3, $zero, 56
	mul.d	$a2, $a2, $a3
	add.d	$a1, $a1, $a2
	lu12i.w	$a5, 77
	st.d	$a1, $sp, 472                   # 8-byte Folded Spill
	beqz	$a0, .LBB12_207
# %bb.197:
	ld.d	$a0, $a1, 0
	ld.w	$a0, $a0, 24
	sltui	$a1, $a0, 1
	ori	$a0, $zero, 32
	masknez	$a0, $a0, $a1
	ori	$a2, $zero, 40
	maskeqz	$a2, $a2, $a1
	or	$a0, $a2, $a0
	pcalau12i	$a2, %got_pc_hi20(linfo_ue)
	ld.d	$a2, $a2, %got_pc_lo12(linfo_ue)
	masknez	$a2, $a2, $a1
	pcalau12i	$a3, %got_pc_hi20(readRefFrame_CABAC)
	ld.d	$a3, $a3, %got_pc_lo12(readRefFrame_CABAC)
	maskeqz	$a1, $a3, $a1
	or	$a1, $a1, $a2
	b	.LBB12_208
.LBB12_198:                             # %.preheader956
	pcalau12i	$a0, %got_pc_hi20(dec_picture)
	ld.d	$s0, $a0, %got_pc_lo12(dec_picture)
	st.d	$zero, $sp, 488                 # 8-byte Folded Spill
	move	$s4, $zero
	lu12i.w	$a0, 77
	ori	$s2, $a0, 1560
	ori	$s3, $zero, 4
	b	.LBB12_200
	.p2align	4, , 16
.LBB12_199:                             #   in Loop: Header=BB12_200 Depth=1
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 488                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a1
	st.d	$a0, $sp, 488                   # 8-byte Folded Spill
	move	$s4, $s5
	bge	$s5, $s3, .LBB12_224
.LBB12_200:                             # %.preheader955
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB12_202 Depth 2
                                        #       Child Loop BB12_206 Depth 3
	move	$s6, $zero
	move	$s7, $s4
	bstrins.d	$s7, $zero, 0, 0
	add.w	$s5, $s4, $a1
	b	.LBB12_202
	.p2align	4, , 16
.LBB12_201:                             # %.loopexit954
                                        #   in Loop: Header=BB12_202 Depth=2
	add.w	$s6, $s6, $a4
	bge	$s6, $s3, .LBB12_199
.LBB12_202:                             #   Parent Loop BB12_200 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB12_206 Depth 3
	srli.d	$a0, $s6, 1
	add.w	$a0, $a0, $s7
	ld.d	$a1, $sp, 280                   # 8-byte Folded Reload
	ldx.bu	$a1, $a1, $a0
	addi.d	$a1, $a1, -1
	ld.d	$fp, $sp, 496                   # 8-byte Folded Reload
	ori	$a2, $zero, 1
	bltu	$a2, $a1, .LBB12_201
# %bb.203:                              #   in Loop: Header=BB12_202 Depth=2
	ld.d	$a1, $sp, 272                   # 8-byte Folded Reload
	addi.d	$a1, $a1, 328
	ldx.bu	$a0, $a1, $a0
	beqz	$a0, .LBB12_201
# %bb.204:                              #   in Loop: Header=BB12_202 Depth=2
	ld.w	$a0, $fp, 76
	add.w	$a1, $a0, $s4
	add.w	$a2, $s5, $a0
	bge	$a1, $a2, .LBB12_201
# %bb.205:                              # %.lr.ph997.preheader
                                        #   in Loop: Header=BB12_202 Depth=2
	ld.d	$a1, $sp, 488                   # 8-byte Folded Reload
	add.d	$s8, $a1, $a0
	slli.d	$s1, $s8, 3
	.p2align	4, , 16
.LBB12_206:                             # %.lr.ph997
                                        #   Parent Loop BB12_200 Depth=1
                                        #     Parent Loop BB12_202 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a0, $s0, 0
	ldx.d	$a0, $a0, $s2
	ld.d	$a0, $a0, 8
	ld.w	$a1, $fp, 92
	ldx.d	$a0, $a0, $s1
	add.w	$a1, $a1, $s6
	add.d	$a0, $a0, $a1
	move	$a1, $zero
	move	$a2, $a4
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a4, $sp, 328                   # 8-byte Folded Reload
	ld.w	$a0, $fp, 76
	addi.d	$s8, $s8, 1
	add.w	$a0, $s5, $a0
	addi.d	$s1, $s1, 8
	blt	$s8, $a0, .LBB12_206
	b	.LBB12_201
.LBB12_207:
	pcalau12i	$a0, %got_pc_hi20(linfo_ue)
	ld.d	$a1, $a0, %got_pc_lo12(linfo_ue)
	ori	$a0, $zero, 32
.LBB12_208:
	addi.d	$a2, $sp, 584
	stx.d	$a1, $a0, $a2
	ori	$s6, $zero, 1
	pcalau12i	$a0, %got_pc_hi20(dec_picture)
	ld.d	$s5, $a0, %got_pc_lo12(dec_picture)
	st.d	$zero, $sp, 464                 # 8-byte Folded Spill
	move	$a2, $zero
	ori	$s7, $a5, 1560
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	b	.LBB12_210
	.p2align	4, , 16
.LBB12_209:                             #   in Loop: Header=BB12_210 Depth=1
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 464                   # 8-byte Folded Reload
	add.d	$a1, $a1, $a0
	st.d	$a1, $sp, 464                   # 8-byte Folded Spill
	move	$a2, $s0
	ori	$a1, $zero, 4
	bge	$s0, $a1, .LBB12_224
.LBB12_210:                             # %.preheader952
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB12_212 Depth 2
                                        #       Child Loop BB12_223 Depth 3
	move	$fp, $zero
	move	$s4, $a2
	bstrins.d	$s4, $zero, 0, 0
	st.d	$a2, $sp, 488                   # 8-byte Folded Spill
	add.w	$s0, $a2, $a0
	b	.LBB12_212
	.p2align	4, , 16
.LBB12_211:                             # %.loopexit951
                                        #   in Loop: Header=BB12_212 Depth=2
	add.w	$fp, $fp, $a4
	ori	$a0, $zero, 4
	bge	$fp, $a0, .LBB12_209
.LBB12_212:                             #   Parent Loop BB12_210 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB12_223 Depth 3
	srli.d	$a0, $fp, 1
	add.w	$a0, $a0, $s4
	ld.d	$a1, $sp, 280                   # 8-byte Folded Reload
	ldx.bu	$a1, $a1, $a0
	addi.d	$a1, $a1, -1
	ld.d	$s3, $sp, 496                   # 8-byte Folded Reload
	bltu	$s6, $a1, .LBB12_211
# %bb.213:                              #   in Loop: Header=BB12_212 Depth=2
	ld.d	$a1, $sp, 272                   # 8-byte Folded Reload
	addi.d	$a1, $a1, 328
	ldx.bu	$a1, $a1, $a0
	beqz	$a1, .LBB12_211
# %bb.214:                              #   in Loop: Header=BB12_212 Depth=2
	stptr.w	$fp, $s3, 5608
	ld.d	$s8, $sp, 488                   # 8-byte Folded Reload
	stptr.w	$s8, $s3, 5612
	ld.d	$a1, $sp, 272                   # 8-byte Folded Reload
	addi.d	$a1, $a1, 328
	ldx.b	$a0, $a1, $a0
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(active_pps)
	ori	$a2, $zero, 3
	slt	$a0, $a2, $a0
	st.w	$a0, $sp, 608
	ld.w	$a0, $a1, 12
	beqz	$a0, .LBB12_217
# %bb.215:                              #   in Loop: Header=BB12_212 Depth=2
	ld.d	$a0, $sp, 480                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 472                   # 8-byte Folded Reload
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB12_220
# %bb.216:                              #   in Loop: Header=BB12_212 Depth=2
	ld.d	$a1, $a2, 0
	ld.w	$a0, $a1, 24
	bnez	$a0, .LBB12_219
	b	.LBB12_220
.LBB12_217:                             #   in Loop: Header=BB12_212 Depth=2
	ld.d	$a0, $sp, 480                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 472                   # 8-byte Folded Reload
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB12_220
# %bb.218:                              # %._crit_edge1524
                                        #   in Loop: Header=BB12_212 Depth=2
	ld.d	$a1, $a2, 0
.LBB12_219:                             #   in Loop: Header=BB12_212 Depth=2
	ori	$s2, $zero, 1
	st.w	$s2, $sp, 596
	addi.d	$a0, $sp, 584
	pcaddu18i	$ra, %call36(readSyntaxElement_FLC)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 588
	ori	$s6, $zero, 1
	sub.w	$s2, $s2, $a0
	st.w	$s2, $sp, 588
	b	.LBB12_221
.LBB12_220:                             #   in Loop: Header=BB12_212 Depth=2
	st.w	$s6, $sp, 592
	ld.d	$a3, $a2, 48
	addi.d	$a0, $sp, 584
	move	$a1, $s3
	jirl	$ra, $a3, 0
	ld.w	$s2, $sp, 588
.LBB12_221:                             #   in Loop: Header=BB12_212 Depth=2
	ld.w	$a0, $s3, 76
	add.w	$a1, $a0, $s8
	add.w	$a2, $s0, $a0
	ld.d	$a4, $sp, 328                   # 8-byte Folded Reload
	bge	$a1, $a2, .LBB12_211
# %bb.222:                              # %.lr.ph1002.preheader
                                        #   in Loop: Header=BB12_212 Depth=2
	ld.d	$a1, $sp, 464                   # 8-byte Folded Reload
	add.d	$s1, $a1, $a0
	slli.d	$s8, $s1, 3
	.p2align	4, , 16
.LBB12_223:                             # %.lr.ph1002
                                        #   Parent Loop BB12_210 Depth=1
                                        #     Parent Loop BB12_212 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a0, $s5, 0
	ldx.d	$a0, $a0, $s7
	ld.d	$a0, $a0, 8
	ld.w	$a1, $s3, 92
	ldx.d	$a0, $a0, $s8
	add.w	$a1, $a1, $fp
	add.d	$a0, $a0, $a1
	move	$a1, $s2
	move	$a2, $a4
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a4, $sp, 328                   # 8-byte Folded Reload
	ld.w	$a0, $s3, 76
	addi.d	$s1, $s1, 1
	add.w	$a0, $s0, $a0
	addi.d	$s8, $s8, 8
	blt	$s1, $a0, .LBB12_223
	b	.LBB12_211
.LBB12_224:                             # %.loopexit953
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(active_pps)
	ori	$a1, $zero, 5
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a2, $a2, 40
	ld.d	$a3, $sp, 48                    # 8-byte Folded Reload
	ld.w	$a3, $a3, 20
	ld.w	$a0, $a0, 12
	st.w	$a1, $sp, 584
	ori	$a1, $zero, 56
	mul.d	$a1, $a3, $a1
	add.d	$a1, $a2, $a1
	st.d	$a1, $sp, 448                   # 8-byte Folded Spill
	ld.d	$a5, $sp, 272                   # 8-byte Folded Reload
	beqz	$a0, .LBB12_226
# %bb.225:
	ld.d	$a0, $sp, 448                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.w	$a0, $a0, 24
	sltui	$a1, $a0, 1
	ori	$a0, $zero, 32
	masknez	$a0, $a0, $a1
	ori	$a2, $zero, 40
	maskeqz	$a2, $a2, $a1
	or	$a0, $a2, $a0
	pcalau12i	$a2, %got_pc_hi20(linfo_se)
	ld.d	$a2, $a2, %got_pc_lo12(linfo_se)
	masknez	$a2, $a2, $a1
	pcalau12i	$a3, %got_pc_hi20(readMVD_CABAC)
	ld.d	$a3, $a3, %got_pc_lo12(readMVD_CABAC)
	maskeqz	$a1, $a3, $a1
	or	$a1, $a1, $a2
	b	.LBB12_227
.LBB12_226:
	pcalau12i	$a0, %got_pc_hi20(linfo_se)
	ld.d	$a1, $a0, %got_pc_lo12(linfo_se)
	ori	$a0, $zero, 32
.LBB12_227:
	ld.d	$s2, $sp, 496                   # 8-byte Folded Reload
	lu12i.w	$a3, 77
	lu12i.w	$a6, 1
	move	$t2, $zero
	st.d	$zero, $sp, 136                 # 8-byte Folded Spill
	addi.d	$a2, $sp, 584
	stx.d	$a1, $a0, $a2
	addi.d	$a7, $a5, 44
	addi.d	$a0, $s2, 616
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	addi.d	$t0, $a5, 48
	ori	$a0, $zero, 408
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	mul.d	$a0, $a1, $a0
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	add.d	$a0, $a0, $a1
	addi.d	$t1, $a0, 68
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	slli.d	$a2, $a1, 5
	st.d	$a2, $sp, 128                   # 8-byte Folded Spill
	slli.d	$a2, $a4, 3
	st.d	$a2, $sp, 232                   # 8-byte Folded Spill
	addi.d	$a2, $a0, 72
	ori	$ra, $a3, 1560
	ori	$a0, $a6, 1488
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	lu12i.w	$a0, -33153
	ori	$a0, $a0, 2220
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 1807
	st.d	$a0, $sp, 192                   # 8-byte Folded Spill
	st.d	$ra, $sp, 416                   # 8-byte Folded Spill
	b	.LBB12_229
	.p2align	4, , 16
.LBB12_228:                             #   in Loop: Header=BB12_229 Depth=1
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a1
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 104                   # 8-byte Folded Reload
	add.d	$t1, $t1, $a0
	ld.d	$a7, $sp, 120                   # 8-byte Folded Reload
	add.d	$a7, $a7, $a0
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	add.d	$a2, $a2, $a0
	ld.d	$t0, $sp, 112                   # 8-byte Folded Reload
	add.d	$t0, $t0, $a0
	ld.d	$a4, $sp, 312                   # 8-byte Folded Reload
	move	$t2, $a4
	ori	$a0, $zero, 4
	bge	$a4, $a0, .LBB12_296
.LBB12_229:                             # %.preheader950
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB12_232 Depth 2
                                        #       Child Loop BB12_237 Depth 3
                                        #         Child Loop BB12_239 Depth 4
                                        #           Child Loop BB12_241 Depth 5
                                        #             Child Loop BB12_244 Depth 6
                                        #             Child Loop BB12_247 Depth 6
                                        #           Child Loop BB12_250 Depth 5
                                        #             Child Loop BB12_253 Depth 6
                                        #             Child Loop BB12_256 Depth 6
                                        #       Child Loop BB12_269 Depth 3
                                        #       Child Loop BB12_286 Depth 3
                                        #         Child Loop BB12_290 Depth 4
                                        #       Child Loop BB12_278 Depth 3
                                        #         Child Loop BB12_280 Depth 4
	move	$s4, $zero
	st.d	$zero, $sp, 288                 # 8-byte Folded Spill
	move	$a0, $t2
	bstrins.d	$a0, $zero, 0, 0
	st.d	$a0, $sp, 224                   # 8-byte Folded Spill
	add.d	$a0, $t2, $a1
	st.d	$a0, $sp, 312                   # 8-byte Folded Spill
	st.d	$t2, $sp, 176                   # 8-byte Folded Spill
	add.d	$a0, $a1, $t2
	st.d	$a0, $sp, 200                   # 8-byte Folded Spill
	st.d	$t0, $sp, 112                   # 8-byte Folded Spill
	st.d	$t0, $sp, 264                   # 8-byte Folded Spill
	st.d	$a2, $sp, 96                    # 8-byte Folded Spill
	st.d	$a2, $sp, 256                   # 8-byte Folded Spill
	st.d	$a7, $sp, 120                   # 8-byte Folded Spill
	st.d	$a7, $sp, 248                   # 8-byte Folded Spill
	st.d	$t1, $sp, 104                   # 8-byte Folded Spill
	st.d	$t1, $sp, 240                   # 8-byte Folded Spill
	b	.LBB12_232
	.p2align	4, , 16
.LBB12_230:                             # %.thread1637
                                        #   in Loop: Header=BB12_232 Depth=2
	ld.w	$a0, $s2, 40
	beqz	$a0, .LBB12_258
.LBB12_231:                             # %.loopexit946
                                        #   in Loop: Header=BB12_232 Depth=2
	ld.d	$a0, $sp, 328                   # 8-byte Folded Reload
	add.d	$s4, $s4, $a0
	ld.d	$a1, $sp, 288                   # 8-byte Folded Reload
	add.d	$a1, $a1, $a0
	st.d	$a1, $sp, 288                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 240                   # 8-byte Folded Reload
	add.d	$a1, $a1, $a0
	st.d	$a1, $sp, 240                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	add.d	$a1, $a1, $a0
	st.d	$a1, $sp, 248                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	add.d	$a1, $a1, $a0
	st.d	$a1, $sp, 256                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 264                   # 8-byte Folded Reload
	add.d	$a1, $a1, $a0
	st.d	$a1, $sp, 264                   # 8-byte Folded Spill
	ld.d	$a5, $sp, 272                   # 8-byte Folded Reload
	lu12i.w	$a3, 77
	ori	$a0, $zero, 4
	bge	$s4, $a0, .LBB12_228
.LBB12_232:                             #   Parent Loop BB12_229 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB12_237 Depth 3
                                        #         Child Loop BB12_239 Depth 4
                                        #           Child Loop BB12_241 Depth 5
                                        #             Child Loop BB12_244 Depth 6
                                        #             Child Loop BB12_247 Depth 6
                                        #           Child Loop BB12_250 Depth 5
                                        #             Child Loop BB12_253 Depth 6
                                        #             Child Loop BB12_256 Depth 6
                                        #       Child Loop BB12_269 Depth 3
                                        #       Child Loop BB12_286 Depth 3
                                        #         Child Loop BB12_290 Depth 4
                                        #       Child Loop BB12_278 Depth 3
                                        #         Child Loop BB12_280 Depth 4
	addi.w	$a0, $s4, 0
	srli.d	$a0, $a0, 1
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	add.w	$a0, $a0, $a1
	ld.d	$a1, $sp, 280                   # 8-byte Folded Reload
	ldx.bu	$a1, $a1, $a0
	andi	$a1, $a1, 253
	ori	$t8, $a3, 1584
	st.d	$s4, $sp, 320                   # 8-byte Folded Spill
	bnez	$a1, .LBB12_257
# %bb.233:                              #   in Loop: Header=BB12_232 Depth=2
	addi.d	$a1, $a5, 328
	ldx.b	$a1, $a1, $a0
	andi	$a0, $a1, 255
	beqz	$a0, .LBB12_230
# %bb.234:                              #   in Loop: Header=BB12_232 Depth=2
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	beqz	$a2, .LBB12_231
# %bb.235:                              # %.lr.ph1025.us.us.us.preheader
                                        #   in Loop: Header=BB12_232 Depth=2
	pcalau12i	$a2, %got_pc_hi20(dec_picture)
	ld.d	$a2, $a2, %got_pc_lo12(dec_picture)
	st.d	$a2, $sp, 480                   # 8-byte Folded Spill
	ld.d	$a2, $a2, 0
	ldx.d	$a2, $a2, $ra
	ld.d	$a2, $a2, 0
	ld.w	$a3, $s2, 76
	ld.d	$a6, $sp, 176                   # 8-byte Folded Reload
	alsl.d	$a2, $a6, $a2, 3
	slli.d	$a3, $a3, 3
	ldx.d	$a2, $a2, $a3
	ld.w	$a3, $s2, 92
	add.d	$a2, $a2, $s4
	ld.d	$a5, $sp, 168                   # 8-byte Folded Reload
	alsl.d	$a4, $a1, $a5, 3
	slli.d	$a1, $a1, 3
	ldx.w	$a5, $a5, $a1
	ld.w	$a4, $a4, 4
	ldx.b	$a1, $a2, $a3
	st.d	$a1, $sp, 400                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 328                   # 8-byte Folded Reload
	add.d	$a1, $s4, $a1
	st.d	$a1, $sp, 392                   # 8-byte Folded Spill
	slli.w	$a1, $a5, 2
	st.d	$a1, $sp, 384                   # 8-byte Folded Spill
	slli.w	$a1, $a4, 2
	st.d	$a1, $sp, 376                   # 8-byte Folded Spill
	ori	$a3, $zero, 1
	slt	$a1, $a3, $a5
	maskeqz	$a2, $a5, $a1
	masknez	$a1, $a3, $a1
	or	$s8, $a2, $a1
	slt	$a1, $a3, $a4
	maskeqz	$a2, $a4, $a1
	masknez	$a1, $a3, $a1
	or	$s7, $a2, $a1
	addi.d	$a0, $a0, -3
	bstrpick.d	$a1, $s8, 30, 2
	slli.d	$s0, $a1, 2
	st.d	$a4, $sp, 304                   # 8-byte Folded Spill
	slli.d	$a1, $a4, 5
	st.d	$a1, $sp, 296                   # 8-byte Folded Spill
	st.d	$a5, $sp, 408                   # 8-byte Folded Spill
	slli.d	$a1, $a5, 3
	st.d	$a1, $sp, 368                   # 8-byte Folded Spill
	andi	$fp, $a0, 255
	ld.d	$a1, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 248                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 240                   # 8-byte Folded Reload
	st.d	$t8, $sp, 488                   # 8-byte Folded Spill
	b	.LBB12_237
	.p2align	4, , 16
.LBB12_236:                             # %._crit_edge.split.us.split.us.us.us.us
                                        #   in Loop: Header=BB12_237 Depth=3
	ld.d	$a0, $sp, 304                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 464                   # 8-byte Folded Reload
	add.d	$a6, $a6, $a0
	ld.d	$a0, $sp, 296                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 336                   # 8-byte Folded Reload
	add.d	$a4, $a4, $a0
	ld.d	$a3, $sp, 344                   # 8-byte Folded Reload
	add.d	$a3, $a3, $a0
	ld.d	$a2, $sp, 352                   # 8-byte Folded Reload
	add.d	$a2, $a2, $a0
	ld.d	$a1, $sp, 360                   # 8-byte Folded Reload
	add.d	$a1, $a1, $a0
	ld.d	$s2, $sp, 496                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 312                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 320                   # 8-byte Folded Reload
	bge	$a6, $a0, .LBB12_231
.LBB12_237:                             # %.lr.ph1025.us.us.us
                                        #   Parent Loop BB12_229 Depth=1
                                        #     Parent Loop BB12_232 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB12_239 Depth 4
                                        #           Child Loop BB12_241 Depth 5
                                        #             Child Loop BB12_244 Depth 6
                                        #             Child Loop BB12_247 Depth 6
                                        #           Child Loop BB12_250 Depth 5
                                        #             Child Loop BB12_253 Depth 6
                                        #             Child Loop BB12_256 Depth 6
	ld.w	$a0, $s2, 76
	st.d	$a6, $sp, 464                   # 8-byte Folded Spill
	add.d	$a0, $a6, $a0
	st.d	$a0, $sp, 456                   # 8-byte Folded Spill
	st.d	$a1, $sp, 360                   # 8-byte Folded Spill
	move	$t6, $a1
	st.d	$a2, $sp, 352                   # 8-byte Folded Spill
	move	$t7, $a2
	st.d	$a3, $sp, 344                   # 8-byte Folded Spill
	st.d	$a4, $sp, 336                   # 8-byte Folded Spill
	move	$s2, $a4
	b	.LBB12_239
	.p2align	4, , 16
.LBB12_238:                             # %._crit_edge1011.split.us.us.us.us.us.us.us.us.1
                                        #   in Loop: Header=BB12_239 Depth=4
	ld.d	$a0, $sp, 408                   # 8-byte Folded Reload
	add.d	$s4, $s4, $a0
	ld.d	$a0, $sp, 368                   # 8-byte Folded Reload
	add.d	$s2, $s2, $a0
	ld.d	$a3, $sp, 472                   # 8-byte Folded Reload
	add.d	$a3, $a3, $a0
	add.d	$t7, $t7, $a0
	add.d	$t6, $t6, $a0
	ld.d	$a0, $sp, 392                   # 8-byte Folded Reload
	bge	$s4, $a0, .LBB12_236
.LBB12_239:                             # %.split.us.us.us.us.us.us
                                        #   Parent Loop BB12_229 Depth=1
                                        #     Parent Loop BB12_232 Depth=2
                                        #       Parent Loop BB12_237 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB12_241 Depth 5
                                        #             Child Loop BB12_244 Depth 6
                                        #             Child Loop BB12_247 Depth 6
                                        #           Child Loop BB12_250 Depth 5
                                        #             Child Loop BB12_253 Depth 6
                                        #             Child Loop BB12_256 Depth 6
	st.d	$a3, $sp, 472                   # 8-byte Folded Spill
	st.d	$t7, $sp, 432                   # 8-byte Folded Spill
	st.d	$t6, $sp, 440                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 480                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	move	$s1, $s4
	ld.d	$s4, $sp, 448                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 496                   # 8-byte Folded Reload
	ld.w	$a1, $s6, 92
	st.d	$a1, $sp, 424                   # 8-byte Folded Spill
	add.d	$a1, $a0, $ra
	ldx.d	$a4, $a0, $ra
	ld.d	$a5, $a1, 24
	ld.d	$a0, $sp, 376                   # 8-byte Folded Reload
	st.d	$a0, $sp, 8
	addi.d	$a1, $sp, 560
	ld.d	$a0, $sp, 384                   # 8-byte Folded Reload
	st.d	$a0, $sp, 0
	move	$a0, $s6
	ld.d	$a2, $sp, 400                   # 8-byte Folded Reload
	move	$a3, $zero
	move	$a6, $s1
	ld.d	$s5, $sp, 464                   # 8-byte Folded Reload
	move	$a7, $s5
	pcaddu18i	$ra, %call36(SetMotionVectorPredictor)
	jirl	$ra, $ra, 0
	stptr.w	$s1, $s6, 5608
	stptr.w	$s5, $s6, 5612
	ori	$s5, $zero, 254
	st.w	$zero, $sp, 592
	ld.d	$a3, $s4, 48
	addi.d	$a0, $sp, 584
	move	$a1, $s6
	ld.d	$s3, $sp, 488                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 456                   # 8-byte Folded Reload
	move	$a2, $s4
	move	$s4, $s1
	jirl	$ra, $a3, 0
	ld.d	$a0, $sp, 480                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ldx.d	$a1, $a0, $s3
	ld.w	$a0, $sp, 588
	ld.h	$a2, $sp, 560
	ld.d	$a3, $a1, 0
	move	$a1, $zero
	add.d	$a2, $a2, $a0
	alsl.d	$a3, $s6, $a3, 3
	ld.d	$a4, $sp, 424                   # 8-byte Folded Reload
	add.d	$a4, $s1, $a4
	slli.d	$s1, $a4, 3
	ld.d	$a4, $sp, 472                   # 8-byte Folded Reload
	move	$a5, $s2
	b	.LBB12_241
	.p2align	4, , 16
.LBB12_240:                             # %._crit_edge.us.us.us.us.us.us.us.us
                                        #   in Loop: Header=BB12_241 Depth=5
	addi.d	$a1, $a1, 1
	addi.d	$a5, $a5, 32
	addi.d	$a4, $a4, 32
	beq	$a1, $s7, .LBB12_248
.LBB12_241:                             # %.preheader945.us.us.us.us.us.us.us.us
                                        #   Parent Loop BB12_229 Depth=1
                                        #     Parent Loop BB12_232 Depth=2
                                        #       Parent Loop BB12_237 Depth=3
                                        #         Parent Loop BB12_239 Depth=4
                                        # =>        This Loop Header: Depth=5
                                        #             Child Loop BB12_244 Depth 6
                                        #             Child Loop BB12_247 Depth 6
	slli.d	$a6, $a1, 3
	ldx.d	$a6, $a3, $a6
	add.d	$a6, $a6, $s1
	bgeu	$fp, $s5, .LBB12_243
# %bb.242:                              #   in Loop: Header=BB12_241 Depth=5
	move	$t0, $zero
	b	.LBB12_246
	.p2align	4, , 16
.LBB12_243:                             # %vector.body1822.preheader
                                        #   in Loop: Header=BB12_241 Depth=5
	addi.d	$a7, $a6, 16
	move	$t0, $a5
	move	$t1, $s0
	.p2align	4, , 16
.LBB12_244:                             # %vector.body1822
                                        #   Parent Loop BB12_229 Depth=1
                                        #     Parent Loop BB12_232 Depth=2
                                        #       Parent Loop BB12_237 Depth=3
                                        #         Parent Loop BB12_239 Depth=4
                                        #           Parent Loop BB12_241 Depth=5
                                        # =>          This Inner Loop Header: Depth=6
	ld.d	$t2, $a7, -16
	ld.d	$t3, $a7, -8
	ld.d	$t4, $a7, 0
	ld.d	$t5, $a7, 8
	st.h	$a2, $t2, 0
	st.h	$a2, $t3, 0
	st.h	$a2, $t4, 0
	st.h	$a2, $t5, 0
	st.w	$a0, $t0, -24
	st.w	$a0, $t0, -16
	st.w	$a0, $t0, -8
	st.w	$a0, $t0, 0
	addi.d	$t1, $t1, -4
	addi.d	$t0, $t0, 32
	addi.d	$a7, $a7, 32
	bnez	$t1, .LBB12_244
# %bb.245:                              # %middle.block1827
                                        #   in Loop: Header=BB12_241 Depth=5
	move	$t0, $s0
	beq	$s0, $s8, .LBB12_240
.LBB12_246:                             # %scalar.ph1817.preheader
                                        #   in Loop: Header=BB12_241 Depth=5
	alsl.d	$a7, $t0, $a4, 3
	alsl.d	$a6, $t0, $a6, 3
	sub.d	$t0, $s8, $t0
	.p2align	4, , 16
.LBB12_247:                             # %scalar.ph1817
                                        #   Parent Loop BB12_229 Depth=1
                                        #     Parent Loop BB12_232 Depth=2
                                        #       Parent Loop BB12_237 Depth=3
                                        #         Parent Loop BB12_239 Depth=4
                                        #           Parent Loop BB12_241 Depth=5
                                        # =>          This Inner Loop Header: Depth=6
	ld.d	$t1, $a6, 0
	st.h	$a2, $t1, 0
	st.w	$a0, $a7, 0
	addi.d	$a7, $a7, 8
	addi.d	$t0, $t0, -1
	addi.d	$a6, $a6, 8
	bnez	$t0, .LBB12_247
	b	.LBB12_240
	.p2align	4, , 16
.LBB12_248:                             # %._crit_edge1011.split.us.us.us.us.us.us.us.us
                                        #   in Loop: Header=BB12_239 Depth=4
	ld.d	$a1, $sp, 496                   # 8-byte Folded Reload
	stptr.w	$s4, $a1, 5608
	ld.d	$a0, $sp, 464                   # 8-byte Folded Reload
	stptr.w	$a0, $a1, 5612
	ori	$a0, $zero, 2
	st.w	$a0, $sp, 592
	ld.d	$a2, $sp, 448                   # 8-byte Folded Reload
	ld.d	$a3, $a2, 48
	addi.d	$a0, $sp, 584
	jirl	$ra, $a3, 0
	ld.d	$a0, $sp, 480                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$t8, $sp, 488                   # 8-byte Folded Reload
	ldx.d	$a1, $a0, $t8
	ld.w	$a0, $sp, 588
	ld.h	$a2, $sp, 562
	ld.d	$a3, $a1, 0
	move	$a1, $zero
	add.d	$a2, $a2, $a0
	ld.d	$a4, $sp, 456                   # 8-byte Folded Reload
	alsl.d	$a3, $a4, $a3, 3
	ld.d	$t6, $sp, 440                   # 8-byte Folded Reload
	move	$a4, $t6
	ld.d	$t7, $sp, 432                   # 8-byte Folded Reload
	move	$a5, $t7
	ld.d	$ra, $sp, 416                   # 8-byte Folded Reload
	b	.LBB12_250
	.p2align	4, , 16
.LBB12_249:                             # %._crit_edge.us.us.us.us.us.us.us.us.1
                                        #   in Loop: Header=BB12_250 Depth=5
	addi.d	$a1, $a1, 1
	addi.d	$a5, $a5, 32
	addi.d	$a4, $a4, 32
	beq	$a1, $s7, .LBB12_238
.LBB12_250:                             # %.preheader945.us.us.us.us.us.us.us.us.1
                                        #   Parent Loop BB12_229 Depth=1
                                        #     Parent Loop BB12_232 Depth=2
                                        #       Parent Loop BB12_237 Depth=3
                                        #         Parent Loop BB12_239 Depth=4
                                        # =>        This Loop Header: Depth=5
                                        #             Child Loop BB12_253 Depth 6
                                        #             Child Loop BB12_256 Depth 6
	slli.d	$a6, $a1, 3
	ldx.d	$a6, $a3, $a6
	add.d	$a6, $a6, $s1
	bgeu	$fp, $s5, .LBB12_252
# %bb.251:                              #   in Loop: Header=BB12_250 Depth=5
	move	$t0, $zero
	b	.LBB12_255
	.p2align	4, , 16
.LBB12_252:                             # %vector.body.preheader
                                        #   in Loop: Header=BB12_250 Depth=5
	addi.d	$a7, $a6, 16
	move	$t0, $a5
	move	$t1, $s0
	.p2align	4, , 16
.LBB12_253:                             # %vector.body
                                        #   Parent Loop BB12_229 Depth=1
                                        #     Parent Loop BB12_232 Depth=2
                                        #       Parent Loop BB12_237 Depth=3
                                        #         Parent Loop BB12_239 Depth=4
                                        #           Parent Loop BB12_250 Depth=5
                                        # =>          This Inner Loop Header: Depth=6
	ld.d	$t2, $a7, -16
	ld.d	$t3, $a7, -8
	ld.d	$t4, $a7, 0
	ld.d	$t5, $a7, 8
	st.h	$a2, $t2, 2
	st.h	$a2, $t3, 2
	st.h	$a2, $t4, 2
	st.h	$a2, $t5, 2
	st.w	$a0, $t0, -24
	st.w	$a0, $t0, -16
	st.w	$a0, $t0, -8
	st.w	$a0, $t0, 0
	addi.d	$t1, $t1, -4
	addi.d	$t0, $t0, 32
	addi.d	$a7, $a7, 32
	bnez	$t1, .LBB12_253
# %bb.254:                              # %middle.block
                                        #   in Loop: Header=BB12_250 Depth=5
	move	$t0, $s0
	beq	$s0, $s8, .LBB12_249
.LBB12_255:                             # %scalar.ph.preheader
                                        #   in Loop: Header=BB12_250 Depth=5
	alsl.d	$a7, $t0, $a4, 3
	alsl.d	$a6, $t0, $a6, 3
	sub.d	$t0, $s8, $t0
	.p2align	4, , 16
.LBB12_256:                             # %scalar.ph
                                        #   Parent Loop BB12_229 Depth=1
                                        #     Parent Loop BB12_232 Depth=2
                                        #       Parent Loop BB12_237 Depth=3
                                        #         Parent Loop BB12_239 Depth=4
                                        #           Parent Loop BB12_250 Depth=5
                                        # =>          This Inner Loop Header: Depth=6
	ld.d	$t1, $a6, 0
	st.h	$a2, $t1, 2
	st.w	$a0, $a7, 0
	addi.d	$a7, $a7, 8
	addi.d	$t0, $t0, -1
	addi.d	$a6, $a6, 8
	bnez	$t0, .LBB12_256
	b	.LBB12_249
	.p2align	4, , 16
.LBB12_257:                             #   in Loop: Header=BB12_232 Depth=2
	addi.d	$a1, $a5, 328
	ldx.bu	$a0, $a1, $a0
	bnez	$a0, .LBB12_231
	b	.LBB12_230
.LBB12_258:                             #   in Loop: Header=BB12_232 Depth=2
	ldptr.w	$a1, $s2, 5624
	ld.d	$t5, $sp, 272                   # 8-byte Folded Reload
	beqz	$a1, .LBB12_262
# %bb.259:                              #   in Loop: Header=BB12_232 Depth=2
	ld.w	$a0, $t5, 356
	beqz	$a0, .LBB12_262
# %bb.260:                              #   in Loop: Header=BB12_232 Depth=2
	ld.bu	$a0, $s2, 4
	andi	$a2, $a0, 1
	sltui	$a3, $a2, 1
	ld.w	$a0, $s2, 76
	ori	$a4, $zero, 4
	masknez	$a4, $a4, $a3
	ori	$a5, $zero, 2
	maskeqz	$a3, $a5, $a3
	or	$fp, $a3, $a4
	ld.d	$a6, $sp, 216                   # 8-byte Folded Reload
	bnez	$a2, .LBB12_263
# %bb.261:                              #   in Loop: Header=BB12_232 Depth=2
	srai.d	$a2, $a0, 1
	b	.LBB12_264
.LBB12_262:                             # %.thread1638
                                        #   in Loop: Header=BB12_232 Depth=2
	ld.w	$a0, $s2, 76
	move	$fp, $zero
	move	$a2, $a0
	ld.d	$a6, $sp, 216                   # 8-byte Folded Reload
	b	.LBB12_264
.LBB12_263:                             #   in Loop: Header=BB12_232 Depth=2
	addi.w	$a2, $a0, -4
	srai.d	$a2, $a2, 1
.LBB12_264:                             #   in Loop: Header=BB12_232 Depth=2
	ld.d	$a4, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a3, $a6, 0
	addi.w	$s0, $a2, 0
	add.d	$a2, $a4, $s0
	slli.d	$a2, $a2, 3
	ld.w	$a4, $s2, 92
	ldx.d	$a5, $a3, $a2
	add.d	$a3, $s4, $a4
	ldx.bu	$a5, $a5, $a3
	addi.d	$a5, $a5, -255
	sltui	$s1, $a5, 1
	slli.d	$a5, $s1, 3
	ldx.d	$a5, $a6, $a5
	ldx.d	$a5, $a5, $a2
	ldx.bu	$a5, $a5, $a3
	ori	$a6, $zero, 255
	ori	$t6, $zero, 1584
	beq	$a5, $a6, .LBB12_275
# %bb.265:                              # %.preheader948
                                        #   in Loop: Header=BB12_232 Depth=2
	ldptr.w	$a0, $s2, 5640
	slli.d	$a4, $fp, 2
	pcalau12i	$a5, %got_pc_hi20(listXsize)
	ld.d	$a5, $a5, %got_pc_lo12(listXsize)
	ldx.w	$a4, $a5, $a4
	slt	$a5, $a0, $a4
	masknez	$a4, $a4, $a5
	maskeqz	$a0, $a0, $a5
	or	$a4, $a0, $a4
	blez	$a4, .LBB12_282
# %bb.266:                              # %.lr.ph1043
                                        #   in Loop: Header=BB12_232 Depth=2
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ldx.w	$a5, $s2, $a0
	pcalau12i	$a0, %got_pc_hi20(dec_picture)
	ld.d	$a0, $a0, %got_pc_lo12(dec_picture)
	ld.d	$a0, $a0, 0
	slli.d	$a6, $fp, 3
	slli.d	$a7, $fp, 8
	or	$a6, $a7, $a6
	add.d	$a0, $a0, $a6
	addi.d	$a6, $a0, 24
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	alsl.d	$a7, $s1, $a0, 3
	pcalau12i	$a0, %got_pc_hi20(listX)
	ld.d	$a0, $a0, %got_pc_lo12(listX)
	ld.d	$t0, $a0, 0
	move	$a0, $zero
	b	.LBB12_269
	.p2align	4, , 16
.LBB12_267:                             #   in Loop: Header=BB12_269 Depth=3
	ld.d	$t2, $a7, 0
	ld.w	$t3, $s2, 12
	ldx.d	$t2, $t2, $a2
	mul.d	$t3, $t3, $t6
	ldx.d	$t3, $a6, $t3
	ldx.d	$t1, $t2, $t1
	beq	$t3, $t1, .LBB12_283
.LBB12_268:                             #   in Loop: Header=BB12_269 Depth=3
	addi.w	$a0, $a0, 1
	addi.d	$a6, $a6, 8
	addi.d	$a4, $a4, -1
	addi.d	$t0, $t0, 8
	beqz	$a4, .LBB12_295
.LBB12_269:                             #   Parent Loop BB12_229 Depth=1
                                        #     Parent Loop BB12_232 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	beqz	$a1, .LBB12_271
# %bb.270:                              #   in Loop: Header=BB12_269 Depth=3
	ld.w	$t1, $t5, 356
	sltui	$t2, $t1, 1
	slli.d	$t1, $a3, 3
	beqz	$a5, .LBB12_272
	b	.LBB12_267
	.p2align	4, , 16
.LBB12_271:                             #   in Loop: Header=BB12_269 Depth=3
	ori	$t2, $zero, 1
	slli.d	$t1, $a3, 3
	bnez	$a5, .LBB12_267
.LBB12_272:                             #   in Loop: Header=BB12_269 Depth=3
	beqz	$t2, .LBB12_267
# %bb.273:                              #   in Loop: Header=BB12_269 Depth=3
	ld.d	$t3, $a7, 0
	ld.d	$t2, $t0, 0
	ldx.d	$t3, $t3, $a2
	ld.w	$t4, $t2, 8
	ldx.d	$t1, $t3, $t1
	slli.w	$t3, $t4, 1
	beq	$t1, $t3, .LBB12_283
# %bb.274:                              #   in Loop: Header=BB12_269 Depth=3
	ld.w	$t2, $t2, 12
	slli.w	$t2, $t2, 1
	bne	$t1, $t2, .LBB12_268
	b	.LBB12_283
.LBB12_275:                             #   in Loop: Header=BB12_232 Depth=2
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	add.w	$a1, $a0, $a1
	ld.d	$a2, $sp, 200                   # 8-byte Folded Reload
	add.w	$a2, $a2, $a0
	bge	$a1, $a2, .LBB12_231
# %bb.276:                              # %.lr.ph1067
                                        #   in Loop: Header=BB12_232 Depth=2
	ld.d	$a1, $sp, 328                   # 8-byte Folded Reload
	add.d	$a1, $a1, $s4
	ld.d	$a2, $sp, 176                   # 8-byte Folded Reload
	add.d	$a2, $a2, $a0
	b	.LBB12_278
	.p2align	4, , 16
.LBB12_277:                             # %._crit_edge1064
                                        #   in Loop: Header=BB12_278 Depth=3
	addi.d	$a2, $a2, 1
	ld.d	$a3, $sp, 200                   # 8-byte Folded Reload
	add.w	$a3, $a3, $a0
	bge	$a2, $a3, .LBB12_231
.LBB12_278:                             #   Parent Loop BB12_229 Depth=1
                                        #     Parent Loop BB12_232 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB12_280 Depth 4
	ld.d	$a3, $sp, 288                   # 8-byte Folded Reload
	add.w	$a3, $a4, $a3
	add.w	$a5, $a1, $a4
	bge	$a3, $a5, .LBB12_277
# %bb.279:                              # %.lr.ph1063
                                        #   in Loop: Header=BB12_278 Depth=3
	add.d	$a0, $s4, $a4
	slli.d	$a3, $a0, 3
	.p2align	4, , 16
.LBB12_280:                             #   Parent Loop BB12_229 Depth=1
                                        #     Parent Loop BB12_232 Depth=2
                                        #       Parent Loop BB12_278 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	pcalau12i	$a4, %got_pc_hi20(dec_picture)
	ld.d	$a4, $a4, %got_pc_lo12(dec_picture)
	ld.d	$a5, $a4, 0
	ldx.d	$a5, $a5, $ra
	ld.d	$a5, $a5, 8
	slli.d	$a6, $a2, 3
	ldx.d	$a5, $a5, $a6
	stx.b	$zero, $a5, $a0
	ld.d	$a5, $a4, 0
	ldx.d	$a5, $a5, $ra
	ld.d	$a5, $a5, 0
	ldx.d	$a5, $a5, $a6
	stx.b	$zero, $a5, $a0
	ld.d	$a4, $a4, 0
	ldx.d	$a4, $a4, $t8
	ld.d	$a5, $a4, 0
	ld.d	$a4, $a4, 8
	ldx.d	$a5, $a5, $a6
	ldx.d	$a4, $a4, $a6
	ldx.d	$a5, $a5, $a3
	ldx.d	$a4, $a4, $a3
	st.h	$zero, $a5, 0
	st.h	$zero, $a4, 0
	st.h	$zero, $a5, 2
	st.h	$zero, $a4, 2
	ld.w	$a4, $s2, 92
	addi.d	$a0, $a0, 1
	add.w	$a5, $a1, $a4
	addi.d	$a3, $a3, 8
	blt	$a0, $a5, .LBB12_280
# %bb.281:                              # %._crit_edge1064.loopexit
                                        #   in Loop: Header=BB12_278 Depth=3
	ld.w	$a0, $s2, 76
	b	.LBB12_277
.LBB12_282:                             #   in Loop: Header=BB12_232 Depth=2
	addi.w	$a0, $zero, -1
.LBB12_283:                             # %.thread934.thread
                                        #   in Loop: Header=BB12_232 Depth=2
	ld.d	$a1, $sp, 184                   # 8-byte Folded Reload
	beqz	$a1, .LBB12_231
.LBB12_284:                             # %.lr.ph1059
                                        #   in Loop: Header=BB12_232 Depth=2
	ld.d	$a1, $sp, 328                   # 8-byte Folded Reload
	add.d	$a1, $a1, $s4
	slli.d	$a2, $fp, 7
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
	add.d	$a2, $a3, $a2
	alsl.d	$a2, $a0, $a2, 2
	pcalau12i	$a3, %got_pc_hi20(listX)
	ld.d	$a3, $a3, %got_pc_lo12(listX)
	ld.w	$t2, $s2, 92
	alsl.d	$a3, $fp, $a3, 3
	ld.d	$a4, $sp, 88                    # 8-byte Folded Reload
	alsl.d	$a4, $s1, $a4, 3
	ld.d	$a5, $sp, 176                   # 8-byte Folded Reload
	b	.LBB12_286
	.p2align	4, , 16
.LBB12_285:                             # %._crit_edge
                                        #   in Loop: Header=BB12_286 Depth=3
	addi.d	$a5, $a5, 1
	ld.d	$a6, $sp, 312                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 320                   # 8-byte Folded Reload
	bge	$a5, $a6, .LBB12_231
.LBB12_286:                             #   Parent Loop BB12_229 Depth=1
                                        #     Parent Loop BB12_232 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB12_290 Depth 4
	ld.d	$a6, $sp, 288                   # 8-byte Folded Reload
	add.w	$a6, $t2, $a6
	add.w	$a7, $a1, $t2
	bge	$a6, $a7, .LBB12_285
# %bb.287:                              # %.lr.ph1057
                                        #   in Loop: Header=BB12_286 Depth=3
	ld.w	$a7, $s2, 76
	add.d	$a6, $a5, $s0
	add.d	$a7, $a5, $a7
	add.d	$t0, $s4, $t2
	slli.d	$t1, $t0, 3
	lu12i.w	$s1, 77
	ld.d	$s4, $sp, 192                   # 8-byte Folded Reload
	b	.LBB12_290
	.p2align	4, , 16
.LBB12_288:                             # %.split.us1052
                                        #   in Loop: Header=BB12_290 Depth=4
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
.LBB12_289:                             # %.split1054.us
                                        #   in Loop: Header=BB12_290 Depth=4
	st.h	$t2, $t3, 2
	ld.w	$t2, $s2, 92
	addi.d	$t0, $t0, 1
	add.w	$t3, $a1, $t2
	addi.d	$t1, $t1, 8
	bge	$t0, $t3, .LBB12_285
.LBB12_290:                             #   Parent Loop BB12_229 Depth=1
                                        #     Parent Loop BB12_232 Depth=2
                                        #       Parent Loop BB12_286 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.w	$t2, $a2, 0
	pcalau12i	$t3, %got_pc_hi20(dec_picture)
	ld.d	$t4, $t3, %got_pc_lo12(dec_picture)
	ld.d	$t3, $t4, 0
	ldx.d	$t3, $t3, $ra
	ld.d	$t5, $t3, 0
	slli.d	$t3, $a7, 3
	ldx.d	$t5, $t5, $t3
	stx.b	$a0, $t5, $t0
	ld.d	$t5, $t4, 0
	ldx.d	$t5, $t5, $ra
	ld.d	$t5, $t5, 8
	ldx.d	$t5, $t5, $t3
	stx.b	$zero, $t5, $t0
	ld.d	$t4, $t4, 0
	add.d	$t5, $t4, $t8
	slli.d	$t4, $a6, 3
	beq	$t2, $s4, .LBB12_288
# %bb.291:                              # %.split
                                        #   in Loop: Header=BB12_290 Depth=4
	move	$s3, $t8
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
	ori	$t8, $s1, 1452
	ldx.d	$t5, $t4, $t1
	ldx.w	$t8, $t6, $t8
	ldx.d	$t4, $t7, $t1
	ldx.d	$t3, $t3, $t1
	ld.hu	$t6, $t5, 0
	beqz	$t8, .LBB12_293
# %bb.292:                              # %.split.split
                                        #   in Loop: Header=BB12_290 Depth=4
	st.h	$t6, $t4, 0
	st.h	$zero, $t3, 0
	ld.h	$t5, $t5, 2
	move	$t2, $zero
	st.h	$t5, $t4, 2
	b	.LBB12_294
.LBB12_293:                             # %.split.split.us
                                        #   in Loop: Header=BB12_290 Depth=4
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
.LBB12_294:                             # %.split1054.us
                                        #   in Loop: Header=BB12_290 Depth=4
	move	$t8, $s3
	b	.LBB12_289
.LBB12_295:                             # %.thread934.thread1640
                                        #   in Loop: Header=BB12_232 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
	addi.w	$a1, $zero, -1111
	move	$s3, $t8
	pcaddu18i	$ra, %call36(error)
	jirl	$ra, $ra, 0
	move	$t8, $s3
	ld.d	$ra, $sp, 416                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 184                   # 8-byte Folded Reload
	bnez	$a1, .LBB12_284
	b	.LBB12_231
.LBB12_296:
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(active_pps)
	ori	$a1, $zero, 5
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a2, $a2, 40
	ld.d	$a3, $sp, 48                    # 8-byte Folded Reload
	ld.w	$a3, $a3, 20
	ld.w	$a0, $a0, 12
	st.w	$a1, $sp, 584
	ori	$a1, $zero, 56
	mul.d	$a1, $a3, $a1
	add.d	$a1, $a2, $a1
	st.d	$a1, $sp, 464                   # 8-byte Folded Spill
	st.d	$t8, $sp, 488                   # 8-byte Folded Spill
	beqz	$a0, .LBB12_298
# %bb.297:
	ld.d	$a0, $sp, 464                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.w	$a0, $a0, 24
	sltui	$a1, $a0, 1
	ori	$a0, $zero, 32
	masknez	$a0, $a0, $a1
	ori	$a2, $zero, 40
	maskeqz	$a2, $a2, $a1
	or	$a0, $a2, $a0
	pcalau12i	$a2, %got_pc_hi20(linfo_se)
	ld.d	$a2, $a2, %got_pc_lo12(linfo_se)
	masknez	$a2, $a2, $a1
	pcalau12i	$a3, %got_pc_hi20(readMVD_CABAC)
	ld.d	$a3, $a3, %got_pc_lo12(readMVD_CABAC)
	maskeqz	$a1, $a3, $a1
	or	$a1, $a1, $a2
	b	.LBB12_299
.LBB12_298:
	pcalau12i	$a0, %got_pc_hi20(linfo_se)
	ld.d	$a1, $a0, %got_pc_lo12(linfo_se)
	ori	$a0, $zero, 32
.LBB12_299:
	move	$a3, $zero
	addi.d	$a2, $sp, 584
	stx.d	$a1, $a0, $a2
	addi.d	$a0, $a5, 172
	st.d	$a0, $sp, 224                   # 8-byte Folded Spill
	addi.d	$a0, $a5, 176
	st.d	$a0, $sp, 216                   # 8-byte Folded Spill
	ori	$a0, $zero, 408
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	mul.d	$a0, $a1, $a0
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	add.d	$a0, $a0, $a1
	addi.d	$a1, $a0, 196
	st.d	$a1, $sp, 208                   # 8-byte Folded Spill
	addi.d	$a0, $a0, 200
	st.d	$a0, $sp, 200                   # 8-byte Folded Spill
	ori	$s6, $zero, 254
	b	.LBB12_301
	.p2align	4, , 16
.LBB12_300:                             # %.split1131.us
                                        #   in Loop: Header=BB12_301 Depth=1
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 208                   # 8-byte Folded Reload
	add.d	$a1, $a1, $a0
	st.d	$a1, $sp, 208                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	add.d	$a1, $a1, $a0
	st.d	$a1, $sp, 224                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 200                   # 8-byte Folded Reload
	add.d	$a1, $a1, $a0
	st.d	$a1, $sp, 200                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	add.d	$a1, $a1, $a0
	st.d	$a1, $sp, 216                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 296                   # 8-byte Folded Reload
	move	$a3, $a1
	ori	$a0, $zero, 4
	bge	$a1, $a0, .LBB12_328
.LBB12_301:                             # %.preheader944
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB12_304 Depth 2
                                        #       Child Loop BB12_308 Depth 3
                                        #         Child Loop BB12_310 Depth 4
                                        #           Child Loop BB12_312 Depth 5
                                        #             Child Loop BB12_315 Depth 6
                                        #             Child Loop BB12_318 Depth 6
                                        #           Child Loop BB12_321 Depth 5
                                        #             Child Loop BB12_324 Depth 6
                                        #             Child Loop BB12_327 Depth 6
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	st.d	$a3, $sp, 240                   # 8-byte Folded Spill
	add.d	$a0, $a3, $a0
	st.d	$a0, $sp, 296                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	beqz	$a0, .LBB12_300
# %bb.302:                              # %.preheader944.split.us.preheader
                                        #   in Loop: Header=BB12_301 Depth=1
	move	$s4, $zero
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	bstrins.d	$a0, $zero, 0, 0
	st.d	$a0, $sp, 248                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	st.d	$a0, $sp, 288                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	st.d	$a0, $sp, 272                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	st.d	$a0, $sp, 264                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	st.d	$a0, $sp, 256                   # 8-byte Folded Spill
	b	.LBB12_304
	.p2align	4, , 16
.LBB12_303:                             # %..loopexit_crit_edge.us
                                        #   in Loop: Header=BB12_304 Depth=2
	ld.d	$a0, $sp, 328                   # 8-byte Folded Reload
	add.d	$s4, $s4, $a0
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	add.d	$a1, $a1, $a0
	st.d	$a1, $sp, 256                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 264                   # 8-byte Folded Reload
	add.d	$a1, $a1, $a0
	st.d	$a1, $sp, 264                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 272                   # 8-byte Folded Reload
	add.d	$a1, $a1, $a0
	st.d	$a1, $sp, 272                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 288                   # 8-byte Folded Reload
	add.d	$a1, $a1, $a0
	st.d	$a1, $sp, 288                   # 8-byte Folded Spill
	ori	$a0, $zero, 4
	bge	$s4, $a0, .LBB12_300
.LBB12_304:                             # %.preheader944.split.us
                                        #   Parent Loop BB12_301 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB12_308 Depth 3
                                        #         Child Loop BB12_310 Depth 4
                                        #           Child Loop BB12_312 Depth 5
                                        #             Child Loop BB12_315 Depth 6
                                        #             Child Loop BB12_318 Depth 6
                                        #           Child Loop BB12_321 Depth 5
                                        #             Child Loop BB12_324 Depth 6
                                        #             Child Loop BB12_327 Depth 6
	addi.w	$a0, $s4, 0
	srli.d	$a0, $a0, 1
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	add.w	$a0, $a0, $a1
	ld.d	$a1, $sp, 280                   # 8-byte Folded Reload
	ldx.bu	$a1, $a1, $a0
	addi.d	$a1, $a1, -1
	ori	$a2, $zero, 1
	bltu	$a2, $a1, .LBB12_303
# %bb.305:                              #   in Loop: Header=BB12_304 Depth=2
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	ldx.b	$a1, $a1, $a0
	andi	$a0, $a1, 255
	beqz	$a0, .LBB12_303
# %bb.306:                              # %.lr.ph1096.us.us.us.us.preheader
                                        #   in Loop: Header=BB12_304 Depth=2
	ld.d	$a3, $sp, 168                   # 8-byte Folded Reload
	alsl.d	$a2, $a1, $a3, 3
	slli.d	$a1, $a1, 3
	ldx.w	$a5, $a3, $a1
	ld.w	$a6, $a2, 4
	pcalau12i	$a1, %got_pc_hi20(dec_picture)
	ld.d	$s3, $a1, %got_pc_lo12(dec_picture)
	ld.d	$a1, $s3, 0
	ldx.d	$a1, $a1, $ra
	ld.d	$a1, $a1, 8
	ld.w	$a2, $s2, 76
	ld.d	$a3, $sp, 240                   # 8-byte Folded Reload
	alsl.d	$a1, $a3, $a1, 3
	slli.d	$a2, $a2, 3
	ldx.d	$a1, $a1, $a2
	ld.w	$a2, $s2, 92
	add.d	$a1, $a1, $s4
	ldx.b	$a1, $a1, $a2
	st.d	$a1, $sp, 408                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 328                   # 8-byte Folded Reload
	add.d	$a1, $s4, $a1
	st.d	$a1, $sp, 400                   # 8-byte Folded Spill
	slli.w	$a1, $a5, 2
	st.d	$a1, $sp, 392                   # 8-byte Folded Spill
	slli.w	$a1, $a6, 2
	st.d	$a1, $sp, 384                   # 8-byte Folded Spill
	ori	$a4, $zero, 1
	slt	$a1, $a4, $a5
	maskeqz	$a2, $a5, $a1
	masknez	$a1, $a4, $a1
	or	$s5, $a2, $a1
	slt	$a1, $a4, $a6
	maskeqz	$a2, $a6, $a1
	masknez	$a1, $a4, $a1
	or	$s8, $a2, $a1
	addi.d	$a0, $a0, -3
	bstrpick.d	$a1, $s5, 30, 2
	slli.d	$s7, $a1, 2
	st.d	$a6, $sp, 312                   # 8-byte Folded Spill
	slli.d	$a1, $a6, 5
	st.d	$a1, $sp, 304                   # 8-byte Folded Spill
	st.d	$a5, $sp, 424                   # 8-byte Folded Spill
	slli.d	$a1, $a5, 3
	st.d	$a1, $sp, 376                   # 8-byte Folded Spill
	andi	$fp, $a0, 255
	ld.d	$a1, $sp, 288                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 272                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 256                   # 8-byte Folded Reload
	st.d	$s4, $sp, 320                   # 8-byte Folded Spill
	st.d	$s3, $sp, 368                   # 8-byte Folded Spill
	b	.LBB12_308
	.p2align	4, , 16
.LBB12_307:                             # %._crit_edge1097.split.us.split.us.us.us.us.us
                                        #   in Loop: Header=BB12_308 Depth=3
	ld.d	$a0, $sp, 312                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 472                   # 8-byte Folded Reload
	add.d	$a3, $a3, $a0
	ld.d	$a0, $sp, 304                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 336                   # 8-byte Folded Reload
	add.d	$a5, $a5, $a0
	ld.d	$a4, $sp, 344                   # 8-byte Folded Reload
	add.d	$a4, $a4, $a0
	ld.d	$a2, $sp, 352                   # 8-byte Folded Reload
	add.d	$a2, $a2, $a0
	ld.d	$a1, $sp, 360                   # 8-byte Folded Reload
	add.d	$a1, $a1, $a0
	ld.d	$s2, $sp, 496                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 296                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 320                   # 8-byte Folded Reload
	bge	$a3, $a0, .LBB12_303
.LBB12_308:                             # %.lr.ph1096.us.us.us.us
                                        #   Parent Loop BB12_301 Depth=1
                                        #     Parent Loop BB12_304 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB12_310 Depth 4
                                        #           Child Loop BB12_312 Depth 5
                                        #             Child Loop BB12_315 Depth 6
                                        #             Child Loop BB12_318 Depth 6
                                        #           Child Loop BB12_321 Depth 5
                                        #             Child Loop BB12_324 Depth 6
                                        #             Child Loop BB12_327 Depth 6
	ld.w	$a0, $s2, 76
	st.d	$a3, $sp, 472                   # 8-byte Folded Spill
	add.d	$s0, $a3, $a0
	st.d	$a1, $sp, 360                   # 8-byte Folded Spill
	move	$t6, $a1
	st.d	$a2, $sp, 352                   # 8-byte Folded Spill
	move	$t7, $a2
	st.d	$a4, $sp, 344                   # 8-byte Folded Spill
	move	$s2, $a4
	st.d	$a5, $sp, 336                   # 8-byte Folded Spill
	move	$a6, $s4
	st.d	$s0, $sp, 432                   # 8-byte Folded Spill
	b	.LBB12_310
	.p2align	4, , 16
.LBB12_309:                             # %._crit_edge1080.split.us.us.us.us.us.us.us.us.us.1
                                        #   in Loop: Header=BB12_310 Depth=4
	ld.d	$a0, $sp, 424                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 480                   # 8-byte Folded Reload
	add.d	$a6, $a6, $a0
	ld.d	$a0, $sp, 376                   # 8-byte Folded Reload
	add.d	$a5, $s4, $a0
	ld.d	$s2, $sp, 440                   # 8-byte Folded Reload
	add.d	$s2, $s2, $a0
	add.d	$t7, $t7, $a0
	add.d	$t6, $t6, $a0
	ld.d	$a0, $sp, 400                   # 8-byte Folded Reload
	bge	$a6, $a0, .LBB12_307
.LBB12_310:                             # %.split1084.us.us.us.us.us.us.us
                                        #   Parent Loop BB12_301 Depth=1
                                        #     Parent Loop BB12_304 Depth=2
                                        #       Parent Loop BB12_308 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB12_312 Depth 5
                                        #             Child Loop BB12_315 Depth 6
                                        #             Child Loop BB12_318 Depth 6
                                        #           Child Loop BB12_321 Depth 5
                                        #             Child Loop BB12_324 Depth 6
                                        #             Child Loop BB12_327 Depth 6
	st.d	$a6, $sp, 480                   # 8-byte Folded Spill
	st.d	$t7, $sp, 448                   # 8-byte Folded Spill
	st.d	$t6, $sp, 456                   # 8-byte Folded Spill
	ld.d	$a0, $s3, 0
	ld.d	$s3, $sp, 464                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 496                   # 8-byte Folded Reload
	ld.w	$a1, $s0, 92
	st.d	$a1, $sp, 440                   # 8-byte Folded Spill
	add.d	$a1, $a0, $ra
	ldx.d	$a4, $a0, $ra
	move	$s4, $a5
	ld.d	$a5, $a1, 24
	ld.d	$a0, $sp, 384                   # 8-byte Folded Reload
	st.d	$a0, $sp, 8
	addi.d	$a1, $sp, 560
	ori	$a3, $zero, 1
	ld.d	$a0, $sp, 392                   # 8-byte Folded Reload
	st.d	$a0, $sp, 0
	move	$a0, $s0
	ld.d	$a2, $sp, 408                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 472                   # 8-byte Folded Reload
	move	$a7, $s1
	pcaddu18i	$ra, %call36(SetMotionVectorPredictor)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 480                   # 8-byte Folded Reload
	stptr.w	$a0, $s0, 5608
	stptr.w	$s1, $s0, 5612
	ori	$a0, $zero, 1
	st.w	$a0, $sp, 592
	ld.d	$a3, $s3, 48
	addi.d	$a0, $sp, 584
	move	$a1, $s0
	move	$a2, $s3
	ld.d	$s3, $sp, 368                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 432                   # 8-byte Folded Reload
	jirl	$ra, $a3, 0
	ld.d	$t6, $sp, 480                   # 8-byte Folded Reload
	ld.d	$a0, $s3, 0
	ld.d	$a1, $sp, 488                   # 8-byte Folded Reload
	ldx.d	$a1, $a0, $a1
	ld.w	$a0, $sp, 588
	ld.h	$a2, $sp, 560
	ld.d	$a3, $a1, 8
	move	$a1, $zero
	add.d	$a2, $a2, $a0
	alsl.d	$a3, $s0, $a3, 3
	ld.d	$a4, $sp, 440                   # 8-byte Folded Reload
	add.d	$a4, $t6, $a4
	slli.d	$s1, $a4, 3
	st.d	$s2, $sp, 440                   # 8-byte Folded Spill
	move	$a4, $s2
	move	$a5, $s4
	b	.LBB12_312
	.p2align	4, , 16
.LBB12_311:                             # %._crit_edge1076.us.us.us.us.us.us.us.us.us
                                        #   in Loop: Header=BB12_312 Depth=5
	addi.d	$a1, $a1, 1
	addi.d	$a5, $a5, 32
	addi.d	$a4, $a4, 32
	beq	$a1, $s8, .LBB12_319
.LBB12_312:                             # %.preheader.us.us.us.us.us.us.us.us.us
                                        #   Parent Loop BB12_301 Depth=1
                                        #     Parent Loop BB12_304 Depth=2
                                        #       Parent Loop BB12_308 Depth=3
                                        #         Parent Loop BB12_310 Depth=4
                                        # =>        This Loop Header: Depth=5
                                        #             Child Loop BB12_315 Depth 6
                                        #             Child Loop BB12_318 Depth 6
	slli.d	$a6, $a1, 3
	ldx.d	$a6, $a3, $a6
	add.d	$a6, $a6, $s1
	bgeu	$fp, $s6, .LBB12_314
# %bb.313:                              #   in Loop: Header=BB12_312 Depth=5
	move	$t0, $zero
	b	.LBB12_317
	.p2align	4, , 16
.LBB12_314:                             # %vector.body1848.preheader
                                        #   in Loop: Header=BB12_312 Depth=5
	addi.d	$a7, $a6, 16
	move	$t0, $a5
	move	$t1, $s7
	.p2align	4, , 16
.LBB12_315:                             # %vector.body1848
                                        #   Parent Loop BB12_301 Depth=1
                                        #     Parent Loop BB12_304 Depth=2
                                        #       Parent Loop BB12_308 Depth=3
                                        #         Parent Loop BB12_310 Depth=4
                                        #           Parent Loop BB12_312 Depth=5
                                        # =>          This Inner Loop Header: Depth=6
	ld.d	$t2, $a7, -16
	ld.d	$t3, $a7, -8
	ld.d	$t4, $a7, 0
	ld.d	$t5, $a7, 8
	st.h	$a2, $t2, 0
	st.h	$a2, $t3, 0
	st.h	$a2, $t4, 0
	st.h	$a2, $t5, 0
	st.w	$a0, $t0, -24
	st.w	$a0, $t0, -16
	st.w	$a0, $t0, -8
	st.w	$a0, $t0, 0
	addi.d	$t1, $t1, -4
	addi.d	$t0, $t0, 32
	addi.d	$a7, $a7, 32
	bnez	$t1, .LBB12_315
# %bb.316:                              # %middle.block1853
                                        #   in Loop: Header=BB12_312 Depth=5
	move	$t0, $s7
	beq	$s7, $s5, .LBB12_311
.LBB12_317:                             # %scalar.ph1843.preheader
                                        #   in Loop: Header=BB12_312 Depth=5
	alsl.d	$a7, $t0, $a4, 3
	alsl.d	$a6, $t0, $a6, 3
	sub.d	$t0, $s5, $t0
	.p2align	4, , 16
.LBB12_318:                             # %scalar.ph1843
                                        #   Parent Loop BB12_301 Depth=1
                                        #     Parent Loop BB12_304 Depth=2
                                        #       Parent Loop BB12_308 Depth=3
                                        #         Parent Loop BB12_310 Depth=4
                                        #           Parent Loop BB12_312 Depth=5
                                        # =>          This Inner Loop Header: Depth=6
	ld.d	$t1, $a6, 0
	st.h	$a2, $t1, 0
	st.w	$a0, $a7, 0
	addi.d	$a7, $a7, 8
	addi.d	$t0, $t0, -1
	addi.d	$a6, $a6, 8
	bnez	$t0, .LBB12_318
	b	.LBB12_311
	.p2align	4, , 16
.LBB12_319:                             # %._crit_edge1080.split.us.us.us.us.us.us.us.us.us
                                        #   in Loop: Header=BB12_310 Depth=4
	ld.d	$a1, $sp, 496                   # 8-byte Folded Reload
	stptr.w	$t6, $a1, 5608
	ld.d	$a0, $sp, 472                   # 8-byte Folded Reload
	stptr.w	$a0, $a1, 5612
	ori	$a0, $zero, 3
	st.w	$a0, $sp, 592
	ld.d	$a2, $sp, 464                   # 8-byte Folded Reload
	ld.d	$a3, $a2, 48
	addi.d	$a0, $sp, 584
	jirl	$ra, $a3, 0
	ld.d	$a0, $s3, 0
	ld.d	$a1, $sp, 488                   # 8-byte Folded Reload
	ldx.d	$a1, $a0, $a1
	ld.w	$a0, $sp, 588
	ld.h	$a2, $sp, 562
	ld.d	$a3, $a1, 8
	move	$a1, $zero
	add.d	$a2, $a2, $a0
	alsl.d	$a3, $s0, $a3, 3
	ld.d	$t6, $sp, 456                   # 8-byte Folded Reload
	move	$a4, $t6
	ld.d	$t7, $sp, 448                   # 8-byte Folded Reload
	move	$a5, $t7
	ld.d	$ra, $sp, 416                   # 8-byte Folded Reload
	b	.LBB12_321
	.p2align	4, , 16
.LBB12_320:                             # %._crit_edge1076.us.us.us.us.us.us.us.us.us.1
                                        #   in Loop: Header=BB12_321 Depth=5
	addi.d	$a1, $a1, 1
	addi.d	$a5, $a5, 32
	addi.d	$a4, $a4, 32
	beq	$a1, $s8, .LBB12_309
.LBB12_321:                             # %.preheader.us.us.us.us.us.us.us.us.us.1
                                        #   Parent Loop BB12_301 Depth=1
                                        #     Parent Loop BB12_304 Depth=2
                                        #       Parent Loop BB12_308 Depth=3
                                        #         Parent Loop BB12_310 Depth=4
                                        # =>        This Loop Header: Depth=5
                                        #             Child Loop BB12_324 Depth 6
                                        #             Child Loop BB12_327 Depth 6
	slli.d	$a6, $a1, 3
	ldx.d	$a6, $a3, $a6
	add.d	$a6, $a6, $s1
	bgeu	$fp, $s6, .LBB12_323
# %bb.322:                              #   in Loop: Header=BB12_321 Depth=5
	move	$t0, $zero
	b	.LBB12_326
	.p2align	4, , 16
.LBB12_323:                             # %vector.body1835.preheader
                                        #   in Loop: Header=BB12_321 Depth=5
	addi.d	$a7, $a6, 16
	move	$t0, $a5
	move	$t1, $s7
	.p2align	4, , 16
.LBB12_324:                             # %vector.body1835
                                        #   Parent Loop BB12_301 Depth=1
                                        #     Parent Loop BB12_304 Depth=2
                                        #       Parent Loop BB12_308 Depth=3
                                        #         Parent Loop BB12_310 Depth=4
                                        #           Parent Loop BB12_321 Depth=5
                                        # =>          This Inner Loop Header: Depth=6
	ld.d	$t2, $a7, -16
	ld.d	$t3, $a7, -8
	ld.d	$t4, $a7, 0
	ld.d	$t5, $a7, 8
	st.h	$a2, $t2, 2
	st.h	$a2, $t3, 2
	st.h	$a2, $t4, 2
	st.h	$a2, $t5, 2
	st.w	$a0, $t0, -24
	st.w	$a0, $t0, -16
	st.w	$a0, $t0, -8
	st.w	$a0, $t0, 0
	addi.d	$t1, $t1, -4
	addi.d	$t0, $t0, 32
	addi.d	$a7, $a7, 32
	bnez	$t1, .LBB12_324
# %bb.325:                              # %middle.block1840
                                        #   in Loop: Header=BB12_321 Depth=5
	move	$t0, $s7
	beq	$s7, $s5, .LBB12_320
.LBB12_326:                             # %scalar.ph1830.preheader
                                        #   in Loop: Header=BB12_321 Depth=5
	alsl.d	$a7, $t0, $a4, 3
	alsl.d	$a6, $t0, $a6, 3
	sub.d	$t0, $s5, $t0
	.p2align	4, , 16
.LBB12_327:                             # %scalar.ph1830
                                        #   Parent Loop BB12_301 Depth=1
                                        #     Parent Loop BB12_304 Depth=2
                                        #       Parent Loop BB12_308 Depth=3
                                        #         Parent Loop BB12_310 Depth=4
                                        #           Parent Loop BB12_321 Depth=5
                                        # =>          This Inner Loop Header: Depth=6
	ld.d	$t1, $a6, 0
	st.h	$a2, $t1, 2
	st.w	$a0, $a7, 0
	addi.d	$a7, $a7, 8
	addi.d	$t0, $t0, -1
	addi.d	$a6, $a6, 8
	bnez	$t0, .LBB12_327
	b	.LBB12_320
.LBB12_328:
	ld.w	$a0, $s2, 92
	pcalau12i	$a1, %got_pc_hi20(dec_picture)
	ld.d	$a1, $a1, %got_pc_lo12(dec_picture)
	ld.d	$a1, $a1, 0
	ldx.d	$a2, $a1, $ra
	add.d	$a3, $a1, $ra
	ld.d	$t2, $a2, 0
	ld.d	$t3, $a2, 8
	ld.d	$a4, $sp, 24                    # 8-byte Folded Reload
	slli.d	$a2, $a4, 3
	slli.d	$a4, $a4, 8
	or	$a2, $a4, $a2
	add.d	$a1, $a1, $a2
	addi.d	$a2, $a1, 24
	ld.d	$a5, $a3, 8
	ld.w	$t4, $s2, 76
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
	b	.LBB12_330
	.p2align	4, , 16
.LBB12_329:                             #   in Loop: Header=BB12_330 Depth=1
	stx.d	$t8, $fp, $t6
	addi.d	$a7, $a7, 8
	addi.d	$t0, $t0, 8
	addi.d	$t1, $t1, 1
	addi.d	$t2, $t2, 8
	addi.d	$t3, $t3, 8
	bge	$t1, $a6, .LBB12_346
.LBB12_330:                             # =>This Inner Loop Header: Depth=1
	ld.d	$t6, $t2, 0
	ldx.b	$t7, $t6, $a0
	move	$fp, $t4
	bltz	$t7, .LBB12_332
# %bb.331:                              #   in Loop: Header=BB12_330 Depth=1
	ld.w	$t8, $s2, 12
	mul.d	$t8, $t8, $t5
	add.d	$t8, $a2, $t8
	slli.d	$t7, $t7, 3
	ldx.d	$fp, $t8, $t7
.LBB12_332:                             #   in Loop: Header=BB12_330 Depth=1
	ld.d	$t8, $t0, 0
	ld.d	$t7, $t3, 0
	slli.d	$s0, $a0, 3
	stx.d	$fp, $t8, $s0
	ldx.b	$fp, $t7, $a0
	move	$s1, $t4
	bltz	$fp, .LBB12_334
# %bb.333:                              #   in Loop: Header=BB12_330 Depth=1
	ld.w	$s1, $s2, 12
	mul.d	$s1, $s1, $t5
	add.d	$s1, $a1, $s1
	alsl.d	$fp, $fp, $s1, 3
	ld.d	$s1, $fp, 288
.LBB12_334:                             #   in Loop: Header=BB12_330 Depth=1
	ld.d	$fp, $a7, 0
	stx.d	$s1, $fp, $s0
	ldx.b	$s0, $t6, $a3
	move	$s1, $t4
	bltz	$s0, .LBB12_336
# %bb.335:                              #   in Loop: Header=BB12_330 Depth=1
	ld.w	$s1, $s2, 12
	mul.d	$s1, $s1, $t5
	add.d	$s1, $a2, $s1
	slli.d	$s0, $s0, 3
	ldx.d	$s1, $s1, $s0
.LBB12_336:                             #   in Loop: Header=BB12_330 Depth=1
	slli.d	$s0, $a3, 3
	stx.d	$s1, $t8, $s0
	ldx.b	$s1, $t7, $a3
	move	$s2, $t4
	bltz	$s1, .LBB12_338
# %bb.337:                              #   in Loop: Header=BB12_330 Depth=1
	ld.d	$s2, $sp, 496                   # 8-byte Folded Reload
	ld.w	$s2, $s2, 12
	mul.d	$s2, $s2, $t5
	add.d	$s2, $a1, $s2
	alsl.d	$s1, $s1, $s2, 3
	ld.d	$s2, $s1, 288
.LBB12_338:                             #   in Loop: Header=BB12_330 Depth=1
	stx.d	$s2, $fp, $s0
	ldx.b	$s0, $t6, $a4
	move	$s1, $t4
	bltz	$s0, .LBB12_340
# %bb.339:                              #   in Loop: Header=BB12_330 Depth=1
	ld.d	$s1, $sp, 496                   # 8-byte Folded Reload
	ld.w	$s1, $s1, 12
	mul.d	$s1, $s1, $t5
	add.d	$s1, $a2, $s1
	slli.d	$s0, $s0, 3
	ldx.d	$s1, $s1, $s0
.LBB12_340:                             #   in Loop: Header=BB12_330 Depth=1
	slli.d	$s0, $a4, 3
	stx.d	$s1, $t8, $s0
	ldx.b	$s1, $t7, $a4
	move	$s2, $t4
	bltz	$s1, .LBB12_342
# %bb.341:                              #   in Loop: Header=BB12_330 Depth=1
	ld.d	$s2, $sp, 496                   # 8-byte Folded Reload
	ld.w	$s2, $s2, 12
	mul.d	$s2, $s2, $t5
	add.d	$s2, $a1, $s2
	alsl.d	$s1, $s1, $s2, 3
	ld.d	$s2, $s1, 288
.LBB12_342:                             #   in Loop: Header=BB12_330 Depth=1
	stx.d	$s2, $fp, $s0
	ldx.b	$t6, $t6, $a5
	move	$s0, $t4
	ld.d	$s2, $sp, 496                   # 8-byte Folded Reload
	bltz	$t6, .LBB12_344
# %bb.343:                              #   in Loop: Header=BB12_330 Depth=1
	ld.w	$s0, $s2, 12
	mul.d	$s0, $s0, $t5
	add.d	$s0, $a2, $s0
	slli.d	$t6, $t6, 3
	ldx.d	$s0, $s0, $t6
.LBB12_344:                             #   in Loop: Header=BB12_330 Depth=1
	slli.d	$t6, $a5, 3
	stx.d	$s0, $t8, $t6
	ldx.b	$t7, $t7, $a5
	move	$t8, $t4
	bltz	$t7, .LBB12_329
# %bb.345:                              #   in Loop: Header=BB12_330 Depth=1
	ld.w	$t8, $s2, 12
	mul.d	$t8, $t8, $t5
	add.d	$t8, $a1, $t8
	alsl.d	$t7, $t7, $t8, 3
	ld.d	$t8, $t7, 288
	b	.LBB12_329
.LBB12_346:
	ld.d	$s8, $sp, 632                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 640                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 648                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 656                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 664                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 672                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 680                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 688                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 696                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 704                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 712                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 720
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
	blez	$s5, .LBB13_6
# %bb.1:
	ori	$a0, $zero, 1
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
	move	$t2, $s0
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
	move	$t4, $s2
	beqz	$a2, .LBB13_23
# %bb.9:
	slli.d	$a5, $s0, 3
	addi.d	$a4, $zero, -1
	beqz	$a0, .LBB13_11
# %bb.10:
	ld.w	$a2, $sp, 132
	ldx.d	$a4, $t2, $a5
	ld.w	$a6, $sp, 116
	ori	$a7, $zero, 408
	slli.d	$a2, $a2, 3
	ldx.d	$a2, $a4, $a2
	ld.w	$a4, $sp, 128
	mul.d	$a6, $a6, $a7
	add.d	$a6, $a3, $a6
	ld.w	$a6, $a6, 356
	ldx.b	$a2, $a2, $a4
	sltui	$a4, $a6, 1
	sll.w	$a4, $a2, $a4
.LBB13_11:
	ld.w	$a2, $sp, 88
	addi.d	$a6, $zero, -1
	beqz	$a2, .LBB13_13
# %bb.12:
	ld.w	$a6, $sp, 108
	ldx.d	$a7, $t2, $a5
	ld.w	$t0, $sp, 92
	ori	$t1, $zero, 408
	slli.d	$a6, $a6, 3
	ldx.d	$a6, $a7, $a6
	ld.w	$a7, $sp, 104
	mul.d	$t0, $t0, $t1
	add.d	$t0, $a3, $t0
	ld.w	$t0, $t0, 356
	ldx.b	$a6, $a6, $a7
	sltui	$a7, $t0, 1
	sll.w	$a6, $a6, $a7
.LBB13_13:
	ld.w	$a7, $sp, 64
	beqz	$a7, .LBB13_34
# %bb.14:
	ld.w	$a7, $sp, 84
	ldx.d	$a5, $t2, $a5
	ld.w	$t0, $sp, 68
	ori	$t1, $zero, 408
	slli.d	$a7, $a7, 3
	ldx.d	$a5, $a5, $a7
	ld.w	$a7, $sp, 80
	mul.d	$t0, $t0, $t1
	add.d	$a3, $a3, $t0
	ld.w	$t0, $a3, 356
	ldx.b	$a5, $a5, $a7
	move	$a3, $zero
	sltui	$a7, $t0, 1
	sll.w	$t1, $a5, $a7
	b	.LBB13_32
.LBB13_15:                              # %.thread
	ld.d	$a0, $sp, 56
	vld	$vr0, $sp, 40
	st.d	$a0, $sp, 80
	vst	$vr0, $sp, 64
	ldptr.w	$a1, $s6, 5624
	move	$t2, $s0
	bnez	$a1, .LBB13_8
.LBB13_16:
	ld.w	$a0, $sp, 112
	addi.d	$t1, $zero, -1
	addi.d	$a4, $zero, -1
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	move	$t4, $s2
	beqz	$a0, .LBB13_18
# %bb.17:
	slli.d	$a2, $s0, 3
	ld.w	$a3, $sp, 132
	ldx.d	$a2, $t2, $a2
	slli.d	$a3, $a3, 3
	ldx.d	$a2, $a2, $a3
	ld.w	$a3, $sp, 128
	ldx.b	$a4, $a2, $a3
.LBB13_18:
	ld.w	$a2, $sp, 88
	addi.d	$a6, $zero, -1
	beqz	$a2, .LBB13_20
# %bb.19:
	slli.d	$a3, $s0, 3
	ld.w	$a5, $sp, 108
	ldx.d	$a3, $t2, $a3
	slli.d	$a5, $a5, 3
	ldx.d	$a3, $a3, $a5
	ld.w	$a5, $sp, 104
	ldx.b	$a6, $a3, $a5
.LBB13_20:
	ld.w	$a3, $sp, 64
	beqz	$a3, .LBB13_33
# %bb.21:
	slli.d	$a3, $s0, 3
	ld.w	$a5, $sp, 84
	ldx.d	$a3, $t2, $a3
	slli.d	$a5, $a5, 3
	ldx.d	$a3, $a3, $a5
	ld.w	$a5, $sp, 80
	ldx.b	$t1, $a3, $a5
.LBB13_22:
	move	$a3, $zero
	b	.LBB13_32
.LBB13_23:
	addi.d	$t1, $zero, -1
	addi.d	$a4, $zero, -1
	beqz	$a0, .LBB13_26
# %bb.24:
	slli.d	$a2, $s0, 3
	ld.w	$a4, $sp, 132
	ldx.d	$a2, $t2, $a2
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
	addi.d	$a6, $zero, -1
	beqz	$a2, .LBB13_29
# %bb.27:
	slli.d	$a5, $s0, 3
	ld.w	$a6, $sp, 108
	ldx.d	$a5, $t2, $a5
	ld.w	$a7, $sp, 92
	ori	$t0, $zero, 408
	slli.d	$a6, $a6, 3
	ldx.d	$a5, $a5, $a6
	ld.w	$a6, $sp, 104
	mul.d	$a7, $a7, $t0
	add.d	$a7, $a3, $a7
	ld.w	$a7, $a7, 356
	ldx.bu	$a5, $a5, $a6
	ext.w.b	$a6, $a5
	beqz	$a7, .LBB13_29
# %bb.28:
	srai.d	$a6, $a6, 1
.LBB13_29:
	ld.w	$a5, $sp, 64
	beqz	$a5, .LBB13_33
# %bb.30:
	slli.d	$a5, $s0, 3
	ld.w	$a7, $sp, 84
	ldx.d	$a5, $t2, $a5
	ld.w	$t0, $sp, 68
	ori	$t1, $zero, 408
	slli.d	$a7, $a7, 3
	ldx.d	$a5, $a5, $a7
	ld.w	$a7, $sp, 80
	mul.d	$t0, $t0, $t1
	add.d	$a3, $a3, $t0
	ld.w	$a3, $a3, 356
	ldx.bu	$a5, $a5, $a7
	ext.w.b	$t1, $a5
	beqz	$a3, .LBB13_22
# %bb.31:
	move	$a3, $zero
	srai.d	$t1, $t1, 1
.LBB13_32:
	ori	$a5, $zero, 1
	b	.LBB13_35
.LBB13_33:
	move	$a5, $zero
	ori	$a3, $zero, 1
	b	.LBB13_35
.LBB13_34:
	move	$a5, $zero
	ori	$a3, $zero, 1
	addi.d	$t1, $zero, -1
.LBB13_35:
	addi.w	$a4, $a4, 0
	addi.w	$a7, $t1, 0
	addi.w	$a6, $a6, 0
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	bne	$a4, $t4, .LBB13_38
# %bb.36:
	beq	$a6, $t4, .LBB13_38
# %bb.37:
	ori	$t3, $zero, 1
	bne	$a7, $t4, .LBB13_41
.LBB13_38:
	xor	$t0, $a7, $t4
	sltui	$t0, $t0, 1
	xor	$t1, $a6, $t4
	sltu	$t1, $zero, $t1
	xor	$t2, $a4, $t4
	sltui	$t2, $t2, 1
	or	$t2, $t2, $t0
	or	$t2, $t2, $t1
	ori	$t3, $zero, 2
	masknez	$t3, $t3, $t2
	beq	$a4, $t4, .LBB13_41
# %bb.39:
	beqz	$t2, .LBB13_41
# %bb.40:
	ori	$t2, $zero, 3
	maskeqz	$t0, $t2, $t0
	maskeqz	$t3, $t0, $t1
.LBB13_41:
	ld.d	$t0, $sp, 232
	ori	$t1, $zero, 8
	ld.d	$t2, $sp, 32                    # 8-byte Folded Reload
	bne	$t2, $t1, .LBB13_45
# %bb.42:
	ori	$t1, $zero, 16
	bne	$t0, $t1, .LBB13_45
# %bb.43:
	beqz	$s3, .LBB13_48
# %bb.44:
	xor	$a4, $a7, $t4
	sltui	$a4, $a4, 1
	masknez	$a6, $t3, $a4
	ori	$a7, $zero, 3
	b	.LBB13_50
.LBB13_45:
	ori	$a7, $zero, 16
	bne	$t2, $a7, .LBB13_51
# %bb.46:
	ori	$a7, $zero, 8
	bne	$t0, $a7, .LBB13_51
# %bb.47:
	beqz	$s5, .LBB13_49
.LBB13_48:
	xor	$a4, $a4, $t4
	sltui	$a4, $a4, 1
	masknez	$a6, $t3, $a4
	ori	$a7, $zero, 1
	b	.LBB13_50
.LBB13_49:
	xor	$a4, $a6, $t4
	sltui	$a4, $a4, 1
	masknez	$a6, $t3, $a4
	ori	$a7, $zero, 2
.LBB13_50:
	maskeqz	$a4, $a7, $a4
	or	$t3, $a4, $a6
.LBB13_51:
	ld.w	$t6, $sp, 132
	ld.w	$t5, $sp, 128
	ld.d	$a4, $sp, 16                    # 8-byte Folded Reload
	alsl.d	$a6, $s0, $a4, 3
	beqz	$a0, .LBB13_55
# %bb.52:
	ld.d	$a4, $a6, 0
	slli.d	$a7, $t6, 3
	ldx.d	$a4, $a4, $a7
	slli.d	$a7, $t5, 3
	ldx.d	$a4, $a4, $a7
	ld.h	$t4, $a4, 0
	ld.w	$t2, $sp, 108
	ld.w	$t1, $sp, 104
	beqz	$a2, .LBB13_56
.LBB13_53:
	ld.d	$a4, $a6, 0
	slli.d	$a7, $t2, 3
	ldx.d	$a4, $a4, $a7
	slli.d	$a7, $t1, 3
	ldx.d	$a4, $a4, $a7
	ld.h	$t7, $a4, 0
	ld.w	$t0, $sp, 84
	ld.w	$a7, $sp, 80
	sltu	$a4, $zero, $a2
	beqz	$a3, .LBB13_57
.LBB13_54:
	move	$t8, $zero
	b	.LBB13_58
.LBB13_55:
	move	$t4, $zero
	ld.w	$t2, $sp, 108
	ld.w	$t1, $sp, 104
	bnez	$a2, .LBB13_53
.LBB13_56:
	move	$t7, $zero
	ld.w	$t0, $sp, 84
	ld.w	$a7, $sp, 80
	sltu	$a4, $zero, $a2
	bnez	$a3, .LBB13_54
.LBB13_57:
	ld.d	$t8, $a6, 0
	slli.d	$fp, $t0, 3
	ldx.d	$t8, $t8, $fp
	slli.d	$fp, $a7, 3
	ldx.d	$t8, $t8, $fp
	ld.h	$t8, $t8, 0
.LBB13_58:
	or	$a4, $a4, $a5
	slli.d	$a5, $t3, 2
	pcalau12i	$t3, %pc_hi20(.LJTI13_0)
	addi.d	$t3, $t3, %pc_lo12(.LJTI13_0)
	ldx.w	$fp, $t3, $a5
	add.d	$t3, $t3, $fp
	jr	$t3
.LBB13_59:
	beqz	$a4, .LBB13_63
# %bb.60:
	slt	$t3, $t7, $t8
	masknez	$fp, $t8, $t3
	maskeqz	$t3, $t7, $t3
	or	$t3, $t3, $fp
	slt	$fp, $t4, $t3
	masknez	$t3, $t3, $fp
	maskeqz	$fp, $t4, $fp
	or	$t3, $fp, $t3
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
	add.d	$t3, $fp, $t3
	sub.d	$t4, $t4, $t3
	b	.LBB13_63
.LBB13_61:
	move	$t4, $t7
	b	.LBB13_63
.LBB13_62:
	move	$t4, $t8
.LBB13_63:
	ld.w	$t8, $sp, 116
	ld.w	$t7, $sp, 92
	ld.w	$t3, $sp, 68
	st.h	$t4, $s2, 0
	beqz	$a1, .LBB13_70
# %bb.64:
	ld.wu	$a1, $s6, 4
	ldptr.d	$t4, $s6, 5600
	ori	$fp, $zero, 408
	mul.d	$a1, $a1, $fp
	add.d	$a1, $t4, $a1
	ld.w	$a1, $a1, 356
	beqz	$a1, .LBB13_73
# %bb.65:
	beqz	$a0, .LBB13_76
# %bb.66:
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
	beqz	$a1, .LBB13_81
# %bb.67:
	ext.w.h	$a0, $a0
	beqz	$a2, .LBB13_77
.LBB13_68:
	ld.d	$a1, $a6, 0
	slli.d	$a2, $t2, 3
	ldx.d	$a1, $a1, $a2
	ori	$a2, $zero, 408
	slli.d	$t1, $t1, 3
	ldx.d	$a1, $a1, $t1
	mul.d	$a2, $t7, $a2
	add.d	$a2, $t4, $a2
	ld.w	$a2, $a2, 356
	ld.hu	$a1, $a1, 2
	beqz	$a2, .LBB13_82
# %bb.69:
	ext.w.h	$a1, $a1
	bnez	$a3, .LBB13_87
	b	.LBB13_83
.LBB13_70:
	beqz	$a0, .LBB13_78
# %bb.71:
	ld.d	$a0, $a6, 0
	slli.d	$a1, $t6, 3
	ldx.d	$a0, $a0, $a1
	slli.d	$a1, $t5, 3
	ldx.d	$a0, $a0, $a1
	ld.h	$a0, $a0, 2
	beqz	$a2, .LBB13_79
.LBB13_72:
	ld.d	$a1, $a6, 0
	slli.d	$a2, $t2, 3
	ldx.d	$a1, $a1, $a2
	slli.d	$a2, $t1, 3
	ldx.d	$a1, $a1, $a2
	ld.h	$a1, $a1, 2
	beqz	$a3, .LBB13_80
	b	.LBB13_87
.LBB13_73:
	beqz	$a0, .LBB13_85
# %bb.74:
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
	beqz	$a2, .LBB13_86
.LBB13_75:
	ld.d	$a1, $a6, 0
	slli.d	$a2, $t2, 3
	ldx.d	$a1, $a1, $a2
	ori	$a2, $zero, 408
	slli.d	$t1, $t1, 3
	ldx.d	$a1, $a1, $t1
	mul.d	$a2, $t7, $a2
	add.d	$a2, $t4, $a2
	ld.w	$a2, $a2, 356
	ld.h	$a1, $a1, 2
	sltu	$a2, $zero, $a2
	sll.w	$a1, $a1, $a2
	bnez	$a3, .LBB13_87
	b	.LBB13_91
.LBB13_76:
	move	$a0, $zero
	bnez	$a2, .LBB13_68
.LBB13_77:
	move	$a1, $zero
	beqz	$a3, .LBB13_83
	b	.LBB13_87
.LBB13_78:
	move	$a0, $zero
	bnez	$a2, .LBB13_72
.LBB13_79:
	move	$a1, $zero
	bnez	$a3, .LBB13_87
.LBB13_80:
	ld.d	$a2, $a6, 0
	slli.d	$a3, $t0, 3
	ldx.d	$a2, $a2, $a3
	slli.d	$a3, $a7, 3
	ldx.d	$a2, $a2, $a3
	ld.h	$a2, $a2, 2
	b	.LBB13_88
.LBB13_81:
	srli.d	$a1, $a0, 15
	add.d	$a0, $a0, $a1
	ext.w.h	$a0, $a0
	srai.d	$a0, $a0, 1
	bnez	$a2, .LBB13_68
	b	.LBB13_77
.LBB13_82:
	srli.d	$a2, $a1, 15
	add.d	$a1, $a1, $a2
	ext.w.h	$a1, $a1
	srai.d	$a1, $a1, 1
	bnez	$a3, .LBB13_87
.LBB13_83:
	ld.d	$a2, $a6, 0
	slli.d	$a3, $t0, 3
	ldx.d	$a2, $a2, $a3
	ori	$a3, $zero, 408
	slli.d	$a6, $a7, 3
	ldx.d	$a2, $a2, $a6
	mul.d	$a3, $t3, $a3
	add.d	$a3, $t4, $a3
	ld.w	$a3, $a3, 356
	ld.hu	$a2, $a2, 2
	beqz	$a3, .LBB13_92
# %bb.84:
	ext.w.h	$a2, $a2
	pcalau12i	$a3, %pc_hi20(.LJTI13_1)
	addi.d	$a3, $a3, %pc_lo12(.LJTI13_1)
	ldx.w	$a5, $a3, $a5
	add.d	$a3, $a3, $a5
	jr	$a3
.LBB13_85:
	move	$a0, $zero
	bnez	$a2, .LBB13_75
.LBB13_86:
	move	$a1, $zero
	beqz	$a3, .LBB13_91
.LBB13_87:
	move	$a2, $zero
.LBB13_88:
	pcalau12i	$a3, %pc_hi20(.LJTI13_1)
	addi.d	$a3, $a3, %pc_lo12(.LJTI13_1)
	ldx.w	$a5, $a3, $a5
	add.d	$a3, $a3, $a5
	jr	$a3
.LBB13_89:
	beqz	$a4, .LBB13_95
# %bb.90:
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
	b	.LBB13_95
.LBB13_91:
	ld.d	$a2, $a6, 0
	slli.d	$a3, $t0, 3
	ldx.d	$a2, $a2, $a3
	ori	$a3, $zero, 408
	slli.d	$a6, $a7, 3
	ldx.d	$a2, $a2, $a6
	mul.d	$a3, $t3, $a3
	add.d	$a3, $t4, $a3
	ld.w	$a3, $a3, 356
	ld.h	$a2, $a2, 2
	sltu	$a3, $zero, $a3
	sll.w	$a2, $a2, $a3
	pcalau12i	$a3, %pc_hi20(.LJTI13_1)
	addi.d	$a3, $a3, %pc_lo12(.LJTI13_1)
	ldx.w	$a5, $a3, $a5
	add.d	$a3, $a3, $a5
	jr	$a3
.LBB13_92:
	srli.d	$a3, $a2, 15
	add.d	$a2, $a2, $a3
	ext.w.h	$a2, $a2
	srai.d	$a2, $a2, 1
	pcalau12i	$a3, %pc_hi20(.LJTI13_1)
	addi.d	$a3, $a3, %pc_lo12(.LJTI13_1)
	ldx.w	$a5, $a3, $a5
	add.d	$a3, $a3, $a5
	jr	$a3
.LBB13_93:
	move	$a0, $a1
	b	.LBB13_95
.LBB13_94:
	move	$a0, $a2
.LBB13_95:
	st.h	$a0, $s2, 2
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
	.word	.LBB13_59-.LJTI13_0
	.word	.LBB13_63-.LJTI13_0
	.word	.LBB13_61-.LJTI13_0
	.word	.LBB13_62-.LJTI13_0
.LJTI13_1:
	.word	.LBB13_89-.LJTI13_1
	.word	.LBB13_95-.LJTI13_1
	.word	.LBB13_93-.LJTI13_1
	.word	.LBB13_94-.LJTI13_1
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
	ldptr.d	$a5, $fp, 5592
	sltu	$a2, $a2, $a1
	ori	$a3, $zero, 51
	srl.d	$a3, $a3, $a1
	ld.w	$a4, $a5, 28
	addi.d	$a0, $a0, -12
	sltu	$a1, $zero, $a0
	orn	$a2, $a2, $a3
	slli.d	$a0, $a4, 6
	alsl.d	$a0, $a4, $a0, 4
	pcalau12i	$a3, %got_pc_hi20(assignSE2partition)
	ld.d	$a3, $a3, %got_pc_lo12(assignSE2partition)
	add.d	$a4, $a3, $a0
	pcalau12i	$s8, %pc_hi20(active_pps)
	ld.d	$a0, $s8, %pc_lo12(active_pps)
	ori	$a6, $zero, 4
	st.d	$a5, $sp, 16                    # 8-byte Folded Spill
	ld.d	$a3, $a5, 40
	st.d	$a4, $sp, 8                     # 8-byte Folded Spill
	ld.w	$a4, $a4, 16
	ld.w	$a0, $a0, 12
	st.w	$a6, $sp, 168
	ori	$a5, $zero, 56
	mul.d	$a4, $a4, $a5
	add.d	$s0, $a3, $a4
	beqz	$a0, .LBB14_3
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
	and	$a1, $a2, $a1
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
	ld.d	$a1, $s8, %pc_lo12(active_pps)
	ld.w	$a1, $a1, 12
	ld.w	$s2, $fp, 92
	move	$s7, $a0
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
	add.d	$a0, $a0, $s7
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
	or	$s3, $s7, $a1
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
	ld.d	$a0, $s8, %pc_lo12(active_pps)
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
	bltu	$s7, $a1, .LBB14_12
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
	ld.d	$a0, $s8, %pc_lo12(active_pps)
	ori	$s0, $zero, 4
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a1, $a1, 40
	ld.d	$a2, $sp, 8                     # 8-byte Folded Reload
	ld.w	$a2, $a2, 16
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
	maskeqz	$a3, $a3, $a1
	or	$a0, $a3, $a0
	pcalau12i	$a3, %got_pc_hi20(linfo_ue)
	ld.d	$a3, $a3, %got_pc_lo12(linfo_ue)
	masknez	$a3, $a3, $a1
	pcalau12i	$a4, %got_pc_hi20(readCIPredMode_CABAC)
	ld.d	$a4, $a4, %got_pc_lo12(readCIPredMode_CABAC)
	maskeqz	$a1, $a4, $a1
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
	addi.d	$sp, $sp, -656
	st.d	$ra, $sp, 648                   # 8-byte Folded Spill
	st.d	$fp, $sp, 640                   # 8-byte Folded Spill
	st.d	$s0, $sp, 632                   # 8-byte Folded Spill
	st.d	$s1, $sp, 624                   # 8-byte Folded Spill
	st.d	$s2, $sp, 616                   # 8-byte Folded Spill
	st.d	$s3, $sp, 608                   # 8-byte Folded Spill
	st.d	$s4, $sp, 600                   # 8-byte Folded Spill
	st.d	$s5, $sp, 592                   # 8-byte Folded Spill
	st.d	$s6, $sp, 584                   # 8-byte Folded Spill
	st.d	$s7, $sp, 576                   # 8-byte Folded Spill
	st.d	$s8, $sp, 568                   # 8-byte Folded Spill
	move	$fp, $a0
	ld.w	$a0, $a0, 4
	ldptr.d	$a1, $fp, 5600
	ori	$a2, $zero, 408
	ld.w	$a4, $fp, 44
	ldptr.d	$a3, $fp, 5592
	st.d	$a3, $sp, 304                   # 8-byte Folded Spill
	mul.d	$a0, $a0, $a2
	ori	$a2, $zero, 3
	add.d	$s5, $a1, $a0
	st.d	$a4, $sp, 24                    # 8-byte Folded Spill
	bne	$a4, $a2, .LBB15_2
# %bb.1:
	ld.w	$a5, $s5, 40
	addi.w	$a0, $a5, -9
	addi.w	$a1, $zero, -6
	and	$a0, $a0, $a1
	sltu	$a0, $zero, $a0
	b	.LBB15_3
.LBB15_2:
	ld.w	$a5, $s5, 40
	addi.d	$a0, $a4, -4
	sltui	$a0, $a0, 1
	addi.d	$a1, $a5, -12
	sltui	$a1, $a1, 1
	and	$a0, $a0, $a1
.LBB15_3:                               # %._crit_edge1613
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 304                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 28
	pcalau12i	$a1, %got_pc_hi20(dec_picture)
	ld.d	$a1, $a1, %got_pc_lo12(dec_picture)
	st.d	$zero, $sp, 192                 # 8-byte Folded Spill
	lu12i.w	$a2, 1
	ori	$s0, $a2, 1788
	ldx.w	$a2, $fp, $s0
	ld.w	$a3, $fp, 28
	st.d	$a1, $sp, 64                    # 8-byte Folded Spill
	ld.d	$a1, $a1, 0
	lu12i.w	$a4, 77
	sub.w	$a2, $zero, $a2
	ori	$a4, $a4, 1652
	st.d	$a4, $sp, 72                    # 8-byte Folded Spill
	bne	$a3, $a2, .LBB15_5
# %bb.4:
	lu12i.w	$a2, 1
	ori	$a2, $a2, 1824
	ldx.w	$a2, $fp, $a2
	addi.d	$a2, $a2, -1
	sltui	$a2, $a2, 1
	st.d	$a2, $sp, 192                   # 8-byte Folded Spill
.LBB15_5:
	ld.d	$a2, $sp, 72                    # 8-byte Folded Reload
	ldx.w	$s2, $a1, $a2
	ldptr.w	$a2, $fp, 5584
	slli.d	$a1, $a0, 6
	pcalau12i	$a3, %pc_hi20(SNGL_SCAN)
	addi.d	$t0, $a3, %pc_lo12(SNGL_SCAN)
	beqz	$a2, .LBB15_7
# %bb.6:
	pcalau12i	$a2, %pc_hi20(FIELD_SCAN)
	addi.d	$s7, $a2, %pc_lo12(FIELD_SCAN)
	pcalau12i	$a2, %pc_hi20(FIELD_SCAN8x8)
	addi.d	$a2, $a2, %pc_lo12(FIELD_SCAN8x8)
	st.d	$a2, $sp, 112                   # 8-byte Folded Spill
	b	.LBB15_8
.LBB15_7:
	ld.w	$a2, $s5, 356
	sltui	$a2, $a2, 1
	pcalau12i	$a3, %pc_hi20(FIELD_SCAN8x8)
	addi.d	$a3, $a3, %pc_lo12(FIELD_SCAN8x8)
	masknez	$a3, $a3, $a2
	pcalau12i	$a4, %pc_hi20(SNGL_SCAN8x8)
	addi.d	$a4, $a4, %pc_lo12(SNGL_SCAN8x8)
	maskeqz	$a4, $a4, $a2
	or	$a3, $a4, $a3
	st.d	$a3, $sp, 112                   # 8-byte Folded Spill
	pcalau12i	$a3, %pc_hi20(FIELD_SCAN)
	addi.d	$a3, $a3, %pc_lo12(FIELD_SCAN)
	masknez	$a3, $a3, $a2
	maskeqz	$a2, $t0, $a2
	or	$s7, $a2, $a3
.LBB15_8:
	alsl.d	$a0, $a0, $a1, 4
	pcalau12i	$a1, %got_pc_hi20(assignSE2partition)
	ld.d	$a1, $a1, %got_pc_lo12(assignSE2partition)
	lu12i.w	$s3, 174762
	st.d	$a5, $sp, 40                    # 8-byte Folded Spill
	beqz	$s2, .LBB15_10
# %bb.9:                                # %.preheader1226
	lu12i.w	$a2, 1
	ori	$a2, $a2, 1792
	ldx.w	$a2, $fp, $a2
	ld.w	$a3, $s5, 4
	add.w	$a3, $a2, $a3
	ori	$a4, $s3, 2731
	mul.d	$a5, $a3, $a4
	srli.d	$a6, $a5, 63
	srli.d	$a5, $a5, 32
	add.d	$a5, $a5, $a6
	st.w	$a5, $sp, 380
	ori	$a6, $zero, 6
	ld.w	$a7, $s5, 8
	mul.d	$a5, $a5, $a6
	sub.d	$a3, $a3, $a5
	ld.d	$a5, $sp, 40                    # 8-byte Folded Reload
	st.w	$a3, $sp, 372
	add.w	$a2, $a2, $a7
	mul.d	$a3, $a2, $a4
	srli.d	$a4, $a3, 63
	srli.d	$a3, $a3, 32
	add.d	$a3, $a3, $a4
	st.w	$a3, $sp, 384
	mul.d	$a3, $a3, $a6
	sub.d	$a2, $a2, $a3
	st.w	$a2, $sp, 376
.LBB15_10:                              # %.loopexit1227
	lu12i.w	$s1, 7
	add.d	$a0, $a1, $a0
	st.d	$a0, $sp, 296                   # 8-byte Folded Spill
	addi.d	$a1, $a5, -9
	ori	$a0, $zero, 5
	pcalau12i	$a2, %pc_hi20(active_pps)
	st.d	$a2, $sp, 312                   # 8-byte Folded Spill
	st.d	$t0, $sp, 80                    # 8-byte Folded Spill
	bltu	$a0, $a1, .LBB15_13
# %bb.11:                               # %.loopexit1227
	ori	$a0, $zero, 6
	slli.d	$a1, $a1, 2
	pcalau12i	$a2, %pc_hi20(.LJTI15_0)
	addi.d	$a2, $a2, %pc_lo12(.LJTI15_0)
	ldx.w	$a1, $a2, $a1
	add.d	$a1, $a2, $a1
	jr	$a1
.LBB15_12:
	ld.w	$a0, $s5, 300
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	b	.LBB15_43
.LBB15_13:
	addi.d	$a0, $a5, -13
	sltui	$a0, $a0, 1
	ori	$a1, $zero, 11
	masknez	$a1, $a1, $a0
	ori	$a2, $zero, 6
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
.LBB15_14:
	ld.d	$a1, $sp, 312                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(active_pps)
	ld.d	$a2, $sp, 304                   # 8-byte Folded Reload
	ld.d	$a2, $a2, 40
	slli.d	$a3, $a0, 2
	ld.d	$a4, $sp, 296                   # 8-byte Folded Reload
	ldx.w	$a3, $a4, $a3
	ld.w	$a1, $a1, 12
	st.w	$a0, $sp, 520
	ori	$a0, $zero, 56
	mul.d	$a0, $a3, $a0
	add.d	$a2, $a2, $a0
	beqz	$a1, .LBB15_16
# %bb.15:
	ld.d	$a0, $a2, 0
	ld.w	$a0, $a0, 24
	beqz	$a0, .LBB15_19
.LBB15_16:
	addi.d	$a0, $sp, 552
	pcalau12i	$a1, %got_pc_hi20(linfo_cbp_intra)
	ld.d	$a1, $a1, %got_pc_lo12(linfo_cbp_intra)
	ori	$a3, $zero, 9
	beq	$a5, $a3, .LBB15_20
# %bb.17:
	ori	$a3, $zero, 12
	beq	$a5, $a3, .LBB15_20
# %bb.18:
	addi.d	$a1, $a5, -13
	sltui	$a1, $a1, 1
	pcalau12i	$a3, %got_pc_hi20(linfo_cbp_inter)
	ld.d	$a3, $a3, %got_pc_lo12(linfo_cbp_inter)
	masknez	$a3, $a3, $a1
	pcalau12i	$a4, %got_pc_hi20(linfo_cbp_intra)
	ld.d	$a4, $a4, %got_pc_lo12(linfo_cbp_intra)
	maskeqz	$a1, $a4, $a1
	or	$a1, $a1, $a3
	b	.LBB15_20
.LBB15_19:
	addi.d	$a0, $sp, 560
	pcalau12i	$a1, %got_pc_hi20(readCBP_CABAC)
	ld.d	$a1, $a1, %got_pc_lo12(readCBP_CABAC)
.LBB15_20:
	st.d	$a1, $a0, 0
	ld.d	$a3, $a2, 48
	addi.d	$a0, $sp, 520
	move	$a1, $fp
	jirl	$ra, $a3, 0
	ld.w	$a0, $s5, 40
	ld.w	$a3, $sp, 524
	addi.w	$a1, $a0, -1
	ori	$a2, $zero, 3
	st.d	$a3, $sp, 136                   # 8-byte Folded Spill
	st.w	$a3, $s5, 300
	bltu	$a1, $a2, .LBB15_25
# %bb.21:
	bnez	$a0, .LBB15_24
# %bb.22:
	ld.w	$a1, $fp, 44
	ori	$a2, $zero, 1
	bne	$a1, $a2, .LBB15_24
# %bb.23:
	pcalau12i	$a1, %pc_hi20(active_sps)
	ld.d	$a1, $a1, %pc_lo12(active_sps)
	ldptr.w	$a1, $a1, 2084
	bnez	$a1, .LBB15_32
.LBB15_24:
	ld.w	$a1, $s5, 400
	beqz	$a1, .LBB15_26
.LBB15_25:
	ori	$a1, $a0, 4
	ori	$a2, $zero, 13
	bne	$a1, $a2, .LBB15_32
.LBB15_26:                              # %.critedge
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
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
	ld.d	$a0, $sp, 312                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(active_pps)
	ld.d	$a2, $sp, 304                   # 8-byte Folded Reload
	ld.d	$a2, $a2, 40
	slli.d	$a3, $a1, 2
	ld.d	$a4, $sp, 296                   # 8-byte Folded Reload
	ldx.w	$a3, $a4, $a3
	ld.w	$a0, $a0, 12
	st.w	$a1, $sp, 520
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
	maskeqz	$a3, $a3, $a1
	or	$a0, $a3, $a0
	pcalau12i	$a3, %got_pc_hi20(linfo_se)
	ld.d	$a3, $a3, %got_pc_lo12(linfo_se)
	masknez	$a3, $a3, $a1
	pcalau12i	$a4, %got_pc_hi20(readDquant_CABAC)
	ld.d	$a4, $a4, %got_pc_lo12(readDquant_CABAC)
	maskeqz	$a1, $a4, $a1
	or	$a1, $a1, $a3
	b	.LBB15_39
.LBB15_32:                              # %.thread1163
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	andi	$a1, $a1, 15
	beqz	$a1, .LBB15_26
# %bb.33:
	ldptr.w	$a1, $fp, 5908
	beqz	$a1, .LBB15_27
# %bb.34:
	ld.d	$a0, $sp, 296                   # 8-byte Folded Reload
	ld.w	$a1, $a0, 0
	ld.d	$a0, $sp, 304                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 40
	st.w	$zero, $sp, 520
	ori	$a2, $zero, 56
	mul.d	$a2, $a1, $a2
	pcalau12i	$a1, %got_pc_hi20(readMB_transform_size_flag_CABAC)
	ld.d	$a3, $a1, %got_pc_lo12(readMB_transform_size_flag_CABAC)
	ld.d	$a1, $sp, 312                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(active_pps)
	ld.w	$a4, $a1, 12
	ldx.d	$a1, $a0, $a2
	st.d	$a3, $sp, 560
	beqz	$a4, .LBB15_36
# %bb.35:
	ld.w	$a3, $a1, 24
	beqz	$a3, .LBB15_294
.LBB15_36:
	ori	$a0, $zero, 1
	st.w	$a0, $sp, 532
	addi.d	$a0, $sp, 520
	pcaddu18i	$ra, %call36(readSyntaxElement_FLC)
	jirl	$ra, $ra, 0
	b	.LBB15_295
.LBB15_37:
	st.d	$zero, $sp, 136                 # 8-byte Folded Spill
	b	.LBB15_43
.LBB15_38:
	pcalau12i	$a0, %got_pc_hi20(linfo_se)
	ld.d	$a1, $a0, %got_pc_lo12(linfo_se)
	ori	$a0, $zero, 32
.LBB15_39:
	addi.d	$a3, $sp, 520
	stx.d	$a1, $a0, $a3
	ld.d	$a3, $a2, 48
	addi.d	$a0, $sp, 520
	move	$a1, $fp
	jirl	$ra, $a3, 0
	ldx.wu	$a0, $fp, $s0
	ld.w	$a1, $sp, 524
	srli.d	$a2, $a0, 31
	add.w	$a2, $a0, $a2
	srai.d	$a2, $a2, 1
	addi.w	$a3, $zero, -26
	sub.d	$a3, $a3, $a2
	st.w	$a1, $s5, 16
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
	ld.w	$a1, $s5, 16
	ldx.w	$a0, $fp, $s0
.LBB15_42:
	ld.w	$a2, $fp, 28
	add.d	$a1, $a2, $a1
	alsl.d	$a1, $a0, $a1, 1
	addi.w	$a1, $a1, 52
	addi.w	$a2, $a0, 52
	mod.w	$a1, $a1, $a2
	sub.d	$a0, $a1, $a0
	st.w	$a0, $fp, 28
.LBB15_43:                              # %.preheader1225
	ori	$s4, $s1, 1536
	addi.d	$s1, $fp, 2047
	addi.d	$a0, $s1, 361
	ori	$a2, $zero, 256
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	addi.d	$a0, $s1, 1129
	ori	$a2, $zero, 256
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	addi.d	$a0, $s1, 1897
	ori	$a2, $zero, 256
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 616
	add.d	$a0, $fp, $a0
	ori	$a2, $zero, 256
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, 40
	ori	$a0, $a0, 4
	ori	$a1, $zero, 14
	bne	$a0, $a1, .LBB15_61
# %bb.44:
	ld.d	$a0, $sp, 312                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(active_pps)
	ori	$a1, $zero, 17
	ld.d	$a2, $sp, 304                   # 8-byte Folded Reload
	ld.d	$a2, $a2, 40
	ld.d	$a3, $sp, 296                   # 8-byte Folded Reload
	ld.w	$a3, $a3, 68
	ld.w	$a0, $a0, 12
	st.w	$a1, $sp, 520
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
	maskeqz	$a3, $a3, $a1
	or	$a0, $a3, $a0
	pcalau12i	$a3, %got_pc_hi20(linfo_se)
	ld.d	$a3, $a3, %got_pc_lo12(linfo_se)
	masknez	$a3, $a3, $a1
	pcalau12i	$a4, %got_pc_hi20(readDquant_CABAC)
	ld.d	$a4, $a4, %got_pc_lo12(readDquant_CABAC)
	maskeqz	$a1, $a4, $a1
	or	$a1, $a1, $a3
	b	.LBB15_47
.LBB15_46:
	pcalau12i	$a0, %got_pc_hi20(linfo_se)
	ld.d	$a1, $a0, %got_pc_lo12(linfo_se)
	ori	$a0, $zero, 32
.LBB15_47:
	addi.d	$a3, $sp, 520
	stx.d	$a1, $a0, $a3
	ld.d	$a3, $a2, 48
	addi.d	$a0, $sp, 520
	move	$a1, $fp
	jirl	$ra, $a3, 0
	ldx.wu	$a0, $fp, $s0
	ld.w	$a1, $sp, 524
	srli.d	$a2, $a0, 31
	add.w	$a2, $a0, $a2
	srai.d	$a2, $a2, 1
	addi.w	$a3, $zero, -26
	sub.d	$a3, $a3, $a2
	st.w	$a1, $s5, 16
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
	ld.w	$a1, $s5, 16
	ldx.w	$a0, $fp, $s0
.LBB15_50:                              # %.preheader1224
	ld.w	$a2, $fp, 28
	add.d	$a1, $a2, $a1
	alsl.d	$a1, $a0, $a1, 1
	addi.w	$a1, $a1, 52
	ld.w	$a2, $fp, 76
	ldptr.d	$a3, $fp, 5544
	addi.w	$a4, $a0, 52
	mod.w	$a1, $a1, $a4
	slli.d	$a2, $a2, 3
	ldx.d	$a2, $a3, $a2
	ld.w	$a3, $fp, 92
	sub.d	$a0, $a1, $a0
	st.w	$a0, $fp, 28
	ori	$a0, $zero, 2
	stx.b	$a0, $a2, $a3
	ldptr.d	$a1, $fp, 5544
	ld.w	$a2, $fp, 76
	alsl.d	$a1, $a2, $a1, 3
	ld.d	$a1, $a1, 8
	ld.w	$a2, $fp, 92
	stx.b	$a0, $a1, $a2
	ldptr.d	$a1, $fp, 5544
	ld.w	$a2, $fp, 76
	alsl.d	$a1, $a2, $a1, 3
	ld.d	$a1, $a1, 16
	ld.w	$a2, $fp, 92
	stx.b	$a0, $a1, $a2
	ldptr.d	$a1, $fp, 5544
	ld.w	$a2, $fp, 76
	alsl.d	$a1, $a2, $a1, 3
	ld.d	$a1, $a1, 24
	ld.w	$a2, $fp, 92
	stx.b	$a0, $a1, $a2
	ld.w	$a1, $fp, 76
	ldptr.d	$a2, $fp, 5544
	slli.d	$a1, $a1, 3
	ldx.d	$a1, $a2, $a1
	ld.w	$a2, $fp, 92
	add.d	$a1, $a1, $a2
	st.b	$a0, $a1, 1
	ldptr.d	$a1, $fp, 5544
	ld.w	$a2, $fp, 76
	alsl.d	$a1, $a2, $a1, 3
	ld.d	$a1, $a1, 8
	ld.w	$a2, $fp, 92
	add.d	$a1, $a1, $a2
	st.b	$a0, $a1, 1
	ldptr.d	$a1, $fp, 5544
	ld.w	$a2, $fp, 76
	alsl.d	$a1, $a2, $a1, 3
	ld.d	$a1, $a1, 16
	ld.w	$a2, $fp, 92
	add.d	$a1, $a1, $a2
	st.b	$a0, $a1, 1
	ldptr.d	$a1, $fp, 5544
	ld.w	$a2, $fp, 76
	alsl.d	$a1, $a2, $a1, 3
	ld.d	$a1, $a1, 24
	ld.w	$a2, $fp, 92
	add.d	$a1, $a1, $a2
	st.b	$a0, $a1, 1
	ld.w	$a1, $fp, 76
	ldptr.d	$a2, $fp, 5544
	slli.d	$a1, $a1, 3
	ldx.d	$a1, $a2, $a1
	ld.w	$a2, $fp, 92
	add.d	$a1, $a1, $a2
	st.b	$a0, $a1, 2
	ldptr.d	$a1, $fp, 5544
	ld.w	$a2, $fp, 76
	alsl.d	$a1, $a2, $a1, 3
	ld.d	$a1, $a1, 8
	ld.w	$a2, $fp, 92
	add.d	$a1, $a1, $a2
	st.b	$a0, $a1, 2
	ldptr.d	$a1, $fp, 5544
	ld.w	$a2, $fp, 76
	alsl.d	$a1, $a2, $a1, 3
	ld.d	$a1, $a1, 16
	ld.w	$a2, $fp, 92
	add.d	$a1, $a1, $a2
	st.b	$a0, $a1, 2
	ldptr.d	$a1, $fp, 5544
	ld.w	$a2, $fp, 76
	alsl.d	$a1, $a2, $a1, 3
	ld.d	$a1, $a1, 24
	ld.w	$a2, $fp, 92
	add.d	$a1, $a1, $a2
	st.b	$a0, $a1, 2
	ld.w	$a1, $fp, 76
	ldptr.d	$a2, $fp, 5544
	slli.d	$a1, $a1, 3
	ldx.d	$a1, $a2, $a1
	ld.w	$a2, $fp, 92
	add.d	$a1, $a1, $a2
	st.b	$a0, $a1, 3
	ldptr.d	$a1, $fp, 5544
	ld.w	$a2, $fp, 76
	alsl.d	$a1, $a2, $a1, 3
	ld.d	$a1, $a1, 8
	ld.w	$a2, $fp, 92
	add.d	$a1, $a1, $a2
	st.b	$a0, $a1, 3
	ldptr.d	$a1, $fp, 5544
	ld.w	$a2, $fp, 76
	alsl.d	$a1, $a2, $a1, 3
	ld.d	$a1, $a1, 16
	ld.w	$a2, $fp, 92
	add.d	$a1, $a1, $a2
	st.b	$a0, $a1, 3
	ldptr.d	$a1, $fp, 5544
	ld.w	$a2, $fp, 76
	alsl.d	$a1, $a2, $a1, 3
	ld.d	$a1, $a1, 24
	ld.w	$a2, $fp, 92
	add.d	$a1, $a1, $a2
	st.b	$a0, $a1, 3
	ld.d	$a0, $sp, 312                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(active_pps)
	ld.w	$a0, $a0, 12
	beqz	$a0, .LBB15_54
# %bb.51:
	ld.d	$a0, $sp, 296                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 28
	ld.d	$a1, $sp, 304                   # 8-byte Folded Reload
	ld.d	$a1, $a1, 40
	ori	$a2, $zero, 56
	mul.d	$a0, $a0, $a2
	ldx.d	$a2, $a1, $a0
	add.d	$s1, $a1, $a0
	st.w	$zero, $sp, 544
	ori	$a0, $zero, 7
	ld.w	$a1, $a2, 24
	st.w	$a0, $sp, 520
	ori	$a0, $zero, 1
	stptr.w	$a0, $fp, 5616
	sltui	$a0, $a1, 1
	pcalau12i	$a1, %got_pc_hi20(linfo_levrun_inter)
	ld.d	$a1, $a1, %got_pc_lo12(linfo_levrun_inter)
	masknez	$a1, $a1, $a0
	pcalau12i	$a2, %got_pc_hi20(readRunLevel_CABAC)
	ld.d	$a2, $a2, %got_pc_lo12(readRunLevel_CABAC)
	maskeqz	$a2, $a2, $a0
	or	$a1, $a2, $a1
	ori	$a2, $zero, 32
	masknez	$a2, $a2, $a0
	ori	$a3, $zero, 40
	maskeqz	$a0, $a3, $a0
	or	$a0, $a0, $a2
	addi.d	$a2, $sp, 520
	stx.d	$a1, $a0, $a2
	addi.d	$s6, $zero, -1
	ori	$s8, $zero, 16
	addi.d	$s3, $zero, -1
	.p2align	4, , 16
.LBB15_52:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $s1, 48
	addi.d	$a0, $sp, 520
	move	$a1, $fp
	move	$a2, $s1
	jirl	$ra, $a3, 0
	ld.w	$a0, $sp, 524
	beqz	$a0, .LBB15_59
# %bb.53:                               #   in Loop: Header=BB15_52 Depth=1
	ld.w	$a1, $sp, 528
	add.d	$a1, $s3, $a1
	addi.w	$s3, $a1, 1
	slli.d	$a1, $s3, 1
	ldx.bu	$a1, $s7, $a1
	alsl.d	$a2, $s3, $s7, 1
	ld.bu	$a2, $a2, 1
	alsl.d	$a1, $a1, $a1, 1
	slli.d	$a1, $a1, 8
	addi.d	$a3, $fp, 2047
	addi.d	$a3, $a3, 361
	add.d	$a1, $a3, $a1
	slli.d	$a2, $a2, 6
	addi.w	$s6, $s6, 1
	stx.w	$a0, $a1, $a2
	bltu	$s6, $s8, .LBB15_52
	b	.LBB15_59
.LBB15_54:
	addi.d	$s1, $sp, 456
	ori	$a2, $zero, 1
	addi.d	$a5, $sp, 456
	addi.d	$a6, $sp, 392
	addi.d	$a7, $sp, 388
	addi.d	$s6, $sp, 392
	move	$a0, $fp
	move	$a3, $zero
	move	$a4, $zero
	pcaddu18i	$ra, %call36(readCoeff4x4_CAVLC)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 388
	blez	$a0, .LBB15_59
# %bb.55:                               # %.lr.ph
	addi.d	$a1, $zero, -1
	b	.LBB15_57
	.p2align	4, , 16
.LBB15_56:                              #   in Loop: Header=BB15_57 Depth=1
	addi.d	$s1, $s1, 4
	addi.d	$a0, $a0, -1
	addi.d	$s6, $s6, 4
	beqz	$a0, .LBB15_59
.LBB15_57:                              # =>This Inner Loop Header: Depth=1
	ld.w	$a2, $s1, 0
	beqz	$a2, .LBB15_56
# %bb.58:                               #   in Loop: Header=BB15_57 Depth=1
	ld.w	$a3, $s6, 0
	add.d	$a1, $a1, $a3
	addi.w	$a1, $a1, 1
	slli.d	$a3, $a1, 1
	ldx.bu	$a3, $s7, $a3
	alsl.d	$a4, $a1, $s7, 1
	ld.bu	$a4, $a4, 1
	alsl.d	$a3, $a3, $a3, 1
	slli.d	$a3, $a3, 8
	addi.d	$a5, $fp, 2047
	addi.d	$a5, $a5, 361
	add.d	$a3, $a5, $a3
	slli.d	$a4, $a4, 6
	stx.w	$a2, $a3, $a4
	b	.LBB15_56
.LBB15_59:                              # %.loopexit1222
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	lu12i.w	$s3, 174762
	bnez	$a0, .LBB15_61
# %bb.60:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(itrans_2)
	jirl	$ra, $ra, 0
.LBB15_61:
	ld.w	$a2, $fp, 28
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	sltui	$a3, $a0, 15
	srl.d	$a4, $s4, $a0
	st.w	$a2, $s5, 0
	pcalau12i	$a0, %got_pc_hi20(img)
	ld.d	$a0, $a0, %got_pc_lo12(img)
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	ld.d	$a5, $a0, 0
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	add.d	$a0, $a1, $a0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1792
	st.d	$a1, $sp, 48                    # 8-byte Folded Spill
	ldx.w	$a1, $a5, $a1
	ld.w	$a6, $a0, 32
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
	addi.d	$t0, $s5, 4
	st.w	$a1, $t0, 0
	ld.d	$t0, $sp, 48                    # 8-byte Folded Reload
	ldx.w	$a5, $a5, $t0
	ld.w	$t0, $a0, 36
	and	$a3, $a3, $a4
	st.d	$a3, $sp, 56                    # 8-byte Folded Spill
	sub.w	$a3, $zero, $a5
	add.w	$a2, $t0, $a2
	slt	$a4, $a3, $a2
	masknez	$a3, $a3, $a4
	maskeqz	$a2, $a2, $a4
	or	$a2, $a2, $a3
	slti	$a3, $a2, 51
	maskeqz	$a4, $a2, $a3
	masknez	$a3, $a6, $a3
	or	$a4, $a4, $a3
	bltz	$a2, .LBB15_65
# %bb.64:
	ldx.bu	$a4, $a7, $a4
.LBB15_65:                              # %set_chroma_qp.exit
	st.w	$a4, $s5, 8
	ld.w	$a2, $fp, 28
	ldx.w	$a3, $fp, $s0
	addi.w	$a5, $s2, -1
	st.d	$a5, $sp, 8                     # 8-byte Folded Spill
	add.w	$a2, $a3, $a2
	ori	$t2, $s3, 2731
	mul.d	$a3, $a2, $t2
	srli.d	$a5, $a3, 63
	srli.d	$a3, $a3, 32
	add.d	$s0, $a3, $a5
	slli.d	$a3, $s0, 2
	alsl.d	$a3, $s0, $a3, 1
	sub.w	$a5, $a2, $a3
	pcalau12i	$a2, %pc_hi20(InvLevelScale4x4Luma_Inter)
	addi.d	$a2, $a2, %pc_lo12(InvLevelScale4x4Luma_Inter)
	ld.d	$t1, $sp, 56                    # 8-byte Folded Reload
	masknez	$a2, $a2, $t1
	pcalau12i	$a3, %pc_hi20(InvLevelScale4x4Luma_Intra)
	addi.d	$a3, $a3, %pc_lo12(InvLevelScale4x4Luma_Intra)
	maskeqz	$a3, $a3, $t1
	or	$a2, $a3, $a2
	slli.d	$a3, $a5, 6
	pcalau12i	$a6, %pc_hi20(InvLevelScale8x8Luma_Inter)
	addi.d	$a6, $a6, %pc_lo12(InvLevelScale8x8Luma_Inter)
	masknez	$a6, $a6, $t1
	pcalau12i	$a7, %pc_hi20(InvLevelScale8x8Luma_Intra)
	addi.d	$a7, $a7, %pc_lo12(InvLevelScale8x8Luma_Intra)
	ld.w	$t0, $a0, 0
	maskeqz	$a0, $a7, $t1
	or	$a0, $a0, $a6
	slli.d	$a5, $a5, 8
	beqz	$t0, .LBB15_67
# %bb.66:                               # %.preheader1220
	ld.d	$a6, $sp, 48                    # 8-byte Folded Reload
	ldx.w	$a6, $fp, $a6
	add.w	$a1, $a6, $a1
	mul.d	$a7, $a1, $t2
	srli.d	$t0, $a7, 63
	srli.d	$a7, $a7, 32
	add.d	$a7, $a7, $t0
	st.w	$a7, $sp, 380
	ori	$t0, $zero, 6
	mul.d	$a7, $a7, $t0
	sub.d	$a1, $a1, $a7
	st.w	$a1, $sp, 372
	add.w	$a1, $a6, $a4
	mul.d	$a4, $a1, $t2
	srli.d	$a6, $a4, 63
	srli.d	$a4, $a4, 32
	add.d	$a4, $a4, $a6
	st.w	$a4, $sp, 384
	mul.d	$a4, $a4, $t0
	sub.d	$a1, $a1, $a4
	st.w	$a1, $sp, 376
.LBB15_67:                              # %.loopexit1221
	st.d	$t2, $sp, 32                    # 8-byte Folded Spill
	move	$s3, $zero
	add.d	$a1, $a2, $a3
	st.d	$a1, $sp, 272                   # 8-byte Folded Spill
	add.d	$s4, $a0, $a5
	ori	$a0, $zero, 2
	st.d	$a0, $sp, 256                   # 8-byte Folded Spill
	ori	$a0, $zero, 1
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	ori	$a1, $zero, 1
	addi.d	$a0, $fp, 2047
	addi.d	$s2, $a0, 361
	st.d	$s4, $sp, 176                   # 8-byte Folded Spill
	b	.LBB15_69
	.p2align	4, , 16
.LBB15_68:                              #   in Loop: Header=BB15_69 Depth=1
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	addi.d	$a0, $a0, 2
	st.d	$a0, $sp, 256                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	addi.d	$a0, $a0, 2
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	andi	$a0, $a0, 1
	ori	$s3, $zero, 2
	move	$a1, $zero
	beqz	$a0, .LBB15_157
.LBB15_69:                              # %.preheader1219
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB15_72 Depth 2
                                        #       Child Loop BB15_78 Depth 3
                                        #         Child Loop BB15_79 Depth 4
                                        #         Child Loop BB15_86 Depth 4
                                        #       Child Loop BB15_93 Depth 3
                                        #         Child Loop BB15_94 Depth 4
                                        #         Child Loop BB15_101 Depth 4
                                        #       Child Loop BB15_110 Depth 3
                                        #         Child Loop BB15_122 Depth 4
                                        #         Child Loop BB15_138 Depth 4
                                        #         Child Loop BB15_144 Depth 4
                                        #         Child Loop BB15_154 Depth 4
                                        #         Child Loop BB15_116 Depth 4
                                        #         Child Loop BB15_127 Depth 4
                                        #         Child Loop BB15_133 Depth 4
                                        #         Child Loop BB15_149 Depth 4
	st.d	$a1, $sp, 88                    # 8-byte Folded Spill
	st.d	$zero, $sp, 208                 # 8-byte Folded Spill
	move	$a5, $zero
	slli.d	$a0, $s3, 2
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	slli.d	$a0, $s3, 8
	addi.d	$a1, $fp, 1384
	add.d	$a0, $a1, $a0
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	ori	$a3, $zero, 1
	ori	$a4, $zero, 1
	st.d	$s3, $sp, 200                   # 8-byte Folded Spill
	b	.LBB15_72
	.p2align	4, , 16
.LBB15_70:                              #   in Loop: Header=BB15_72 Depth=2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(readLumaCoeff8x8_CABAC)
	jirl	$ra, $ra, 0
.LBB15_71:                              # %.loopexit1216
                                        #   in Loop: Header=BB15_72 Depth=2
	ld.d	$a3, $sp, 152                   # 8-byte Folded Reload
	addi.d	$a3, $a3, 2
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	addi.d	$a0, $a0, -2
	st.d	$a0, $sp, 208                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	andi	$a0, $a0, 1
	ori	$a5, $zero, 2
	move	$a4, $zero
	ld.d	$s3, $sp, 200                   # 8-byte Folded Reload
	beqz	$a0, .LBB15_68
.LBB15_72:                              #   Parent Loop BB15_69 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB15_78 Depth 3
                                        #         Child Loop BB15_79 Depth 4
                                        #         Child Loop BB15_86 Depth 4
                                        #       Child Loop BB15_93 Depth 3
                                        #         Child Loop BB15_94 Depth 4
                                        #         Child Loop BB15_101 Depth 4
                                        #       Child Loop BB15_110 Depth 3
                                        #         Child Loop BB15_122 Depth 4
                                        #         Child Loop BB15_138 Depth 4
                                        #         Child Loop BB15_144 Depth 4
                                        #         Child Loop BB15_154 Depth 4
                                        #         Child Loop BB15_116 Depth 4
                                        #         Child Loop BB15_127 Depth 4
                                        #         Child Loop BB15_133 Depth 4
                                        #         Child Loop BB15_149 Depth 4
	ld.d	$a0, $sp, 312                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(active_pps)
	ld.w	$a0, $a0, 12
	srli.d	$a1, $a5, 1
	or	$a2, $a1, $s3
	alsl.d	$a1, $a5, $a5, 1
	st.d	$a1, $sp, 184                   # 8-byte Folded Spill
	st.d	$a5, $sp, 264                   # 8-byte Folded Spill
	st.d	$a3, $sp, 152                   # 8-byte Folded Spill
	st.d	$a4, $sp, 144                   # 8-byte Folded Spill
	beqz	$a0, .LBB15_107
# %bb.73:                               #   in Loop: Header=BB15_72 Depth=2
	ld.w	$a0, $s5, 396
	bnez	$a0, .LBB15_70
# %bb.74:                               # %.preheader1217
                                        #   in Loop: Header=BB15_72 Depth=2
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	srl.w	$a0, $a0, $a2
	andi	$a0, $a0, 1
	beqz	$a0, .LBB15_156
# %bb.75:                               # %.preheader1217.split
                                        #   in Loop: Header=BB15_72 Depth=2
	addi.d	$a0, $a5, 1
	st.d	$a0, $sp, 248                   # 8-byte Folded Spill
	alsl.d	$a0, $a0, $a0, 1
	st.d	$a0, $sp, 240                   # 8-byte Folded Spill
	move	$s1, $s3
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	beqz	$a0, .LBB15_78
# %bb.76:                               # %.preheader1214.us1249.preheader
                                        #   in Loop: Header=BB15_72 Depth=2
	ld.d	$s1, $sp, 200                   # 8-byte Folded Reload
	b	.LBB15_93
	.p2align	4, , 16
.LBB15_77:                              # %.loopexit1212.1
                                        #   in Loop: Header=BB15_78 Depth=3
	addi.d	$s1, $s1, 1
	addi.d	$a0, $fp, 2047
	addi.d	$s2, $a0, 361
	ld.d	$s4, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	beq	$s1, $a0, .LBB15_71
.LBB15_78:                              # %.preheader1214
                                        #   Parent Loop BB15_69 Depth=1
                                        #     Parent Loop BB15_72 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB15_79 Depth 4
                                        #         Child Loop BB15_86 Depth 4
	slli.d	$a6, $s1, 2
	slli.d	$a0, $s1, 6
	ld.w	$a1, $s5, 40
	add.d	$a7, $s2, $a0
	addi.w	$s8, $zero, -5
	lu32i.d	$s8, 0
	and	$a0, $a1, $s8
	addi.w	$a0, $a0, 0
	addi.d	$a0, $a0, -10
	sltui	$a2, $a0, 1
	sltu	$a0, $zero, $a0
	ld.d	$a5, $sp, 264                   # 8-byte Folded Reload
	stptr.w	$a5, $fp, 5608
	stptr.w	$s1, $fp, 5612
	sub.d	$s3, $zero, $a0
	addi.w	$a0, $a1, -9
	sltui	$a3, $a0, 6
	ori	$a4, $zero, 51
	srl.d	$a0, $a4, $a0
	and	$a0, $a3, $a0
	addi.d	$a1, $a1, -12
	sltui	$a1, $a1, 1
	or	$a0, $a0, $a1
	stptr.w	$a0, $fp, 5616
	st.d	$a6, $sp, 232                   # 8-byte Folded Spill
	or	$a0, $a5, $a6
	ori	$a1, $zero, 1
	sll.d	$s6, $a1, $a0
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	slli.d	$a0, $a0, 8
	st.d	$a7, $sp, 224                   # 8-byte Folded Spill
	add.d	$s4, $a7, $a0
	addi.w	$s2, $a2, -1
	.p2align	4, , 16
.LBB15_79:                              #   Parent Loop BB15_69 Depth=1
                                        #     Parent Loop BB15_72 Depth=2
                                        #       Parent Loop BB15_78 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.wu	$a0, $s5, 40
	and	$a0, $a0, $s8
	addi.w	$a0, $a0, 0
	addi.d	$a0, $a0, -10
	sltui	$a0, $a0, 1
	ldptr.w	$a1, $fp, 5616
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
	ld.d	$a2, $sp, 312                   # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(active_pps)
	ld.d	$a3, $sp, 304                   # 8-byte Folded Reload
	ld.d	$a3, $a3, 40
	slli.d	$a4, $a1, 2
	ld.d	$a5, $sp, 296                   # 8-byte Folded Reload
	ldx.w	$a4, $a5, $a4
	ld.w	$a5, $a2, 12
	st.w	$a0, $sp, 544
	st.w	$a1, $sp, 520
	ori	$a0, $zero, 56
	mul.d	$a0, $a4, $a0
	add.d	$a2, $a3, $a0
	beqz	$a5, .LBB15_81
# %bb.80:                               #   in Loop: Header=BB15_79 Depth=4
	ld.d	$a0, $a2, 0
	ld.w	$a0, $a0, 24
	beqz	$a0, .LBB15_82
.LBB15_81:                              #   in Loop: Header=BB15_79 Depth=4
	pcalau12i	$a0, %got_pc_hi20(linfo_levrun_inter)
	ld.d	$a0, $a0, %got_pc_lo12(linfo_levrun_inter)
	st.d	$a0, $sp, 552
	b	.LBB15_83
	.p2align	4, , 16
.LBB15_82:                              #   in Loop: Header=BB15_79 Depth=4
	pcalau12i	$a0, %got_pc_hi20(readRunLevel_CABAC)
	ld.d	$a0, $a0, %got_pc_lo12(readRunLevel_CABAC)
	st.d	$a0, $sp, 560
.LBB15_83:                              #   in Loop: Header=BB15_79 Depth=4
	ld.d	$a3, $a2, 48
	addi.d	$a0, $sp, 520
	move	$a1, $fp
	jirl	$ra, $a3, 0
	ld.w	$a0, $sp, 524
	beqz	$a0, .LBB15_85
# %bb.84:                               #   in Loop: Header=BB15_79 Depth=4
	ld.w	$a1, $sp, 528
	add.d	$a1, $s3, $a1
	addi.w	$s3, $a1, 1
	alsl.d	$a1, $s3, $s7, 1
	slli.d	$a2, $s3, 1
	ld.bu	$a1, $a1, 1
	ldx.bu	$a2, $s7, $a2
	ld.d	$a3, $s5, 304
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	alsl.d	$a4, $a1, $a4, 4
	slli.d	$a2, $a2, 2
	ldx.w	$a4, $a4, $a2
	or	$a3, $a3, $s6
	st.d	$a3, $s5, 304
	mul.d	$a0, $a4, $a0
	sll.w	$a0, $a0, $s0
	addi.w	$a0, $a0, 8
	srli.d	$a0, $a0, 4
	alsl.d	$a1, $a1, $s4, 4
	addi.w	$s2, $s2, 1
	stx.w	$a0, $a1, $a2
	ori	$a0, $zero, 16
	bltu	$s2, $a0, .LBB15_79
.LBB15_85:                              # %.loopexit1212
                                        #   in Loop: Header=BB15_78 Depth=3
	ld.w	$a0, $s5, 40
	and	$a1, $a0, $s8
	addi.w	$a1, $a1, 0
	addi.d	$a1, $a1, -10
	sltui	$a2, $a1, 1
	sltu	$a1, $zero, $a1
	ld.d	$a5, $sp, 248                   # 8-byte Folded Reload
	stptr.w	$a5, $fp, 5608
	stptr.w	$s1, $fp, 5612
	sub.d	$s3, $zero, $a1
	addi.w	$a1, $a0, -9
	sltui	$a3, $a1, 6
	ori	$a4, $zero, 51
	srl.d	$a1, $a4, $a1
	and	$a1, $a3, $a1
	addi.d	$a0, $a0, -12
	sltui	$a0, $a0, 1
	or	$a0, $a1, $a0
	stptr.w	$a0, $fp, 5616
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	or	$a0, $a5, $a0
	ori	$a1, $zero, 1
	sll.d	$s6, $a1, $a0
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	slli.d	$a0, $a0, 8
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	add.d	$s4, $a1, $a0
	addi.w	$s2, $a2, -1
	.p2align	4, , 16
.LBB15_86:                              #   Parent Loop BB15_69 Depth=1
                                        #     Parent Loop BB15_72 Depth=2
                                        #       Parent Loop BB15_78 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.wu	$a0, $s5, 40
	and	$a0, $a0, $s8
	addi.w	$a0, $a0, 0
	addi.d	$a0, $a0, -10
	sltui	$a0, $a0, 1
	ldptr.w	$a1, $fp, 5616
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
	ld.d	$a2, $sp, 312                   # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(active_pps)
	ld.d	$a3, $sp, 304                   # 8-byte Folded Reload
	ld.d	$a3, $a3, 40
	slli.d	$a4, $a1, 2
	ld.d	$a5, $sp, 296                   # 8-byte Folded Reload
	ldx.w	$a4, $a5, $a4
	ld.w	$a5, $a2, 12
	st.w	$a0, $sp, 544
	st.w	$a1, $sp, 520
	ori	$a0, $zero, 56
	mul.d	$a0, $a4, $a0
	add.d	$a2, $a3, $a0
	beqz	$a5, .LBB15_88
# %bb.87:                               #   in Loop: Header=BB15_86 Depth=4
	ld.d	$a0, $a2, 0
	ld.w	$a0, $a0, 24
	beqz	$a0, .LBB15_89
.LBB15_88:                              #   in Loop: Header=BB15_86 Depth=4
	pcalau12i	$a0, %got_pc_hi20(linfo_levrun_inter)
	ld.d	$a0, $a0, %got_pc_lo12(linfo_levrun_inter)
	st.d	$a0, $sp, 552
	b	.LBB15_90
	.p2align	4, , 16
.LBB15_89:                              #   in Loop: Header=BB15_86 Depth=4
	pcalau12i	$a0, %got_pc_hi20(readRunLevel_CABAC)
	ld.d	$a0, $a0, %got_pc_lo12(readRunLevel_CABAC)
	st.d	$a0, $sp, 560
.LBB15_90:                              #   in Loop: Header=BB15_86 Depth=4
	ld.d	$a3, $a2, 48
	addi.d	$a0, $sp, 520
	move	$a1, $fp
	jirl	$ra, $a3, 0
	ld.w	$a0, $sp, 524
	beqz	$a0, .LBB15_77
# %bb.91:                               #   in Loop: Header=BB15_86 Depth=4
	ld.w	$a1, $sp, 528
	add.d	$a1, $s3, $a1
	addi.w	$s3, $a1, 1
	alsl.d	$a1, $s3, $s7, 1
	slli.d	$a2, $s3, 1
	ld.bu	$a1, $a1, 1
	ldx.bu	$a2, $s7, $a2
	ld.d	$a3, $s5, 304
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	alsl.d	$a4, $a1, $a4, 4
	slli.d	$a2, $a2, 2
	ldx.w	$a4, $a4, $a2
	or	$a3, $a3, $s6
	st.d	$a3, $s5, 304
	mul.d	$a0, $a4, $a0
	sll.w	$a0, $a0, $s0
	addi.w	$a0, $a0, 8
	srli.d	$a0, $a0, 4
	alsl.d	$a1, $a1, $s4, 4
	addi.w	$s2, $s2, 1
	stx.w	$a0, $a1, $a2
	ori	$a0, $zero, 16
	bltu	$s2, $a0, .LBB15_86
	b	.LBB15_77
	.p2align	4, , 16
.LBB15_92:                              # %.loopexit1210.us.us.1
                                        #   in Loop: Header=BB15_93 Depth=3
	addi.d	$s1, $s1, 1
	addi.d	$a0, $fp, 2047
	addi.d	$s2, $a0, 361
	ld.d	$s4, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	beq	$s1, $a0, .LBB15_71
.LBB15_93:                              # %.preheader1214.us1249
                                        #   Parent Loop BB15_69 Depth=1
                                        #     Parent Loop BB15_72 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB15_94 Depth 4
                                        #         Child Loop BB15_101 Depth 4
	slli.d	$a6, $s1, 2
	slli.d	$a0, $s1, 6
	ld.w	$a1, $s5, 40
	add.d	$a7, $s2, $a0
	addi.w	$s8, $zero, -5
	lu32i.d	$s8, 0
	and	$a0, $a1, $s8
	addi.w	$a0, $a0, 0
	addi.d	$a0, $a0, -10
	sltui	$a2, $a0, 1
	sltu	$a0, $zero, $a0
	ld.d	$a5, $sp, 264                   # 8-byte Folded Reload
	stptr.w	$a5, $fp, 5608
	stptr.w	$s1, $fp, 5612
	sub.d	$s3, $zero, $a0
	addi.w	$a0, $a1, -9
	sltui	$a3, $a0, 6
	ori	$a4, $zero, 51
	srl.d	$a0, $a4, $a0
	and	$a0, $a3, $a0
	addi.d	$a1, $a1, -12
	sltui	$a1, $a1, 1
	or	$a0, $a0, $a1
	stptr.w	$a0, $fp, 5616
	st.d	$a6, $sp, 232                   # 8-byte Folded Spill
	or	$a0, $a5, $a6
	ori	$a1, $zero, 1
	sll.d	$s2, $a1, $a0
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	slli.d	$a0, $a0, 8
	st.d	$a7, $sp, 224                   # 8-byte Folded Spill
	add.d	$s4, $a7, $a0
	addi.w	$s6, $a2, -1
	.p2align	4, , 16
.LBB15_94:                              #   Parent Loop BB15_69 Depth=1
                                        #     Parent Loop BB15_72 Depth=2
                                        #       Parent Loop BB15_93 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.wu	$a0, $s5, 40
	and	$a0, $a0, $s8
	addi.w	$a0, $a0, 0
	addi.d	$a0, $a0, -10
	sltui	$a0, $a0, 1
	ldptr.w	$a1, $fp, 5616
	ori	$a2, $zero, 5
	masknez	$a2, $a2, $a0
	ori	$a3, $zero, 1
	maskeqz	$a0, $a3, $a0
	or	$a0, $a0, $a2
	sltui	$a1, $a1, 1
	addi.d	$a2, $s6, 1
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
	ld.d	$a2, $sp, 312                   # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(active_pps)
	ld.d	$a3, $sp, 304                   # 8-byte Folded Reload
	ld.d	$a3, $a3, 40
	slli.d	$a4, $a1, 2
	ld.d	$a5, $sp, 296                   # 8-byte Folded Reload
	ldx.w	$a4, $a5, $a4
	ld.w	$a5, $a2, 12
	st.w	$a0, $sp, 544
	st.w	$a1, $sp, 520
	ori	$a0, $zero, 56
	mul.d	$a0, $a4, $a0
	add.d	$a2, $a3, $a0
	beqz	$a5, .LBB15_96
# %bb.95:                               #   in Loop: Header=BB15_94 Depth=4
	ld.d	$a0, $a2, 0
	ld.w	$a0, $a0, 24
	beqz	$a0, .LBB15_97
.LBB15_96:                              #   in Loop: Header=BB15_94 Depth=4
	pcalau12i	$a0, %got_pc_hi20(linfo_levrun_inter)
	ld.d	$a0, $a0, %got_pc_lo12(linfo_levrun_inter)
	st.d	$a0, $sp, 552
	b	.LBB15_98
	.p2align	4, , 16
.LBB15_97:                              #   in Loop: Header=BB15_94 Depth=4
	pcalau12i	$a0, %got_pc_hi20(readRunLevel_CABAC)
	ld.d	$a0, $a0, %got_pc_lo12(readRunLevel_CABAC)
	st.d	$a0, $sp, 560
.LBB15_98:                              #   in Loop: Header=BB15_94 Depth=4
	ld.d	$a3, $a2, 48
	addi.d	$a0, $sp, 520
	move	$a1, $fp
	jirl	$ra, $a3, 0
	ld.w	$a0, $sp, 524
	beqz	$a0, .LBB15_100
# %bb.99:                               #   in Loop: Header=BB15_94 Depth=4
	ld.w	$a1, $sp, 528
	add.d	$a1, $s3, $a1
	addi.w	$s3, $a1, 1
	alsl.d	$a1, $s3, $s7, 1
	ld.d	$a2, $s5, 304
	slli.d	$a3, $s3, 1
	ld.bu	$a1, $a1, 1
	ldx.bu	$a3, $s7, $a3
	or	$a2, $a2, $s2
	st.d	$a2, $s5, 304
	alsl.d	$a1, $a1, $s4, 4
	slli.d	$a2, $a3, 2
	addi.w	$s6, $s6, 1
	stx.w	$a0, $a1, $a2
	ori	$a0, $zero, 16
	bltu	$s6, $a0, .LBB15_94
.LBB15_100:                             # %.loopexit1210.us.us
                                        #   in Loop: Header=BB15_93 Depth=3
	ld.w	$a0, $s5, 40
	and	$a1, $a0, $s8
	addi.w	$a1, $a1, 0
	addi.d	$a1, $a1, -10
	sltui	$a2, $a1, 1
	sltu	$a1, $zero, $a1
	ld.d	$a5, $sp, 248                   # 8-byte Folded Reload
	stptr.w	$a5, $fp, 5608
	stptr.w	$s1, $fp, 5612
	sub.d	$s3, $zero, $a1
	addi.w	$a1, $a0, -9
	sltui	$a3, $a1, 6
	ori	$a4, $zero, 51
	srl.d	$a1, $a4, $a1
	and	$a1, $a3, $a1
	addi.d	$a0, $a0, -12
	sltui	$a0, $a0, 1
	or	$a0, $a1, $a0
	stptr.w	$a0, $fp, 5616
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	or	$a0, $a5, $a0
	ori	$a1, $zero, 1
	sll.d	$s2, $a1, $a0
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	slli.d	$a0, $a0, 8
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	add.d	$s4, $a1, $a0
	addi.w	$s6, $a2, -1
	.p2align	4, , 16
.LBB15_101:                             #   Parent Loop BB15_69 Depth=1
                                        #     Parent Loop BB15_72 Depth=2
                                        #       Parent Loop BB15_93 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.wu	$a0, $s5, 40
	and	$a0, $a0, $s8
	addi.w	$a0, $a0, 0
	addi.d	$a0, $a0, -10
	sltui	$a0, $a0, 1
	ldptr.w	$a1, $fp, 5616
	ori	$a2, $zero, 5
	masknez	$a2, $a2, $a0
	ori	$a3, $zero, 1
	maskeqz	$a0, $a3, $a0
	or	$a0, $a0, $a2
	sltui	$a1, $a1, 1
	addi.d	$a2, $s6, 1
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
	ld.d	$a2, $sp, 312                   # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(active_pps)
	ld.d	$a3, $sp, 304                   # 8-byte Folded Reload
	ld.d	$a3, $a3, 40
	slli.d	$a4, $a1, 2
	ld.d	$a5, $sp, 296                   # 8-byte Folded Reload
	ldx.w	$a4, $a5, $a4
	ld.w	$a5, $a2, 12
	st.w	$a0, $sp, 544
	st.w	$a1, $sp, 520
	ori	$a0, $zero, 56
	mul.d	$a0, $a4, $a0
	add.d	$a2, $a3, $a0
	beqz	$a5, .LBB15_103
# %bb.102:                              #   in Loop: Header=BB15_101 Depth=4
	ld.d	$a0, $a2, 0
	ld.w	$a0, $a0, 24
	beqz	$a0, .LBB15_104
.LBB15_103:                             #   in Loop: Header=BB15_101 Depth=4
	pcalau12i	$a0, %got_pc_hi20(linfo_levrun_inter)
	ld.d	$a0, $a0, %got_pc_lo12(linfo_levrun_inter)
	st.d	$a0, $sp, 552
	b	.LBB15_105
	.p2align	4, , 16
.LBB15_104:                             #   in Loop: Header=BB15_101 Depth=4
	pcalau12i	$a0, %got_pc_hi20(readRunLevel_CABAC)
	ld.d	$a0, $a0, %got_pc_lo12(readRunLevel_CABAC)
	st.d	$a0, $sp, 560
.LBB15_105:                             #   in Loop: Header=BB15_101 Depth=4
	ld.d	$a3, $a2, 48
	addi.d	$a0, $sp, 520
	move	$a1, $fp
	jirl	$ra, $a3, 0
	ld.w	$a0, $sp, 524
	beqz	$a0, .LBB15_92
# %bb.106:                              #   in Loop: Header=BB15_101 Depth=4
	ld.w	$a1, $sp, 528
	add.d	$a1, $s3, $a1
	addi.w	$s3, $a1, 1
	alsl.d	$a1, $s3, $s7, 1
	ld.d	$a2, $s5, 304
	slli.d	$a3, $s3, 1
	ld.bu	$a1, $a1, 1
	ldx.bu	$a3, $s7, $a3
	or	$a2, $a2, $s2
	st.d	$a2, $s5, 304
	alsl.d	$a1, $a1, $s4, 4
	slli.d	$a2, $a3, 2
	addi.w	$s6, $s6, 1
	stx.w	$a0, $a1, $a2
	ori	$a0, $zero, 16
	bltu	$s6, $a0, .LBB15_101
	b	.LBB15_92
	.p2align	4, , 16
.LBB15_107:                             # %.preheader1215
                                        #   in Loop: Header=BB15_72 Depth=2
	ori	$a0, $zero, 1
	sll.w	$a0, $a0, $a2
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	and	$a0, $a0, $a1
	st.d	$a0, $sp, 240                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	or	$a0, $a5, $a0
	ori	$a1, $zero, 51
	sll.w	$s8, $a1, $a0
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	alsl.d	$a1, $a5, $a0, 1
	st.d	$a1, $sp, 168                   # 8-byte Folded Spill
	addi.d	$a1, $a5, 1
	st.d	$a1, $sp, 216                   # 8-byte Folded Spill
	alsl.d	$a0, $a1, $a0, 1
	st.d	$a0, $sp, 160                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	alsl.d	$s6, $a5, $a0, 4
	b	.LBB15_110
	.p2align	4, , 16
.LBB15_108:                             # %.preheader1213.split.us
                                        #   in Loop: Header=BB15_110 Depth=3
	ld.wu	$a0, $fp, 4
	ldptr.d	$a1, $fp, 5560
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $a1, $a0
	ld.d	$a3, $sp, 264                   # 8-byte Folded Reload
	slli.d	$a2, $a3, 3
	ldx.d	$a0, $a0, $a2
	stx.w	$zero, $a0, $a4
	ld.wu	$a0, $fp, 4
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $a1, $a0
	alsl.d	$a0, $a3, $a0, 3
	ld.d	$a0, $a0, 8
	stx.w	$zero, $a0, $a4
.LBB15_109:                             # %.split.us
                                        #   in Loop: Header=BB15_110 Depth=3
	addi.d	$s3, $s3, 1
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	beq	$s3, $a0, .LBB15_71
.LBB15_110:                             # %.preheader1213
                                        #   Parent Loop BB15_69 Depth=1
                                        #     Parent Loop BB15_72 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB15_122 Depth 4
                                        #         Child Loop BB15_138 Depth 4
                                        #         Child Loop BB15_144 Depth 4
                                        #         Child Loop BB15_154 Depth 4
                                        #         Child Loop BB15_116 Depth 4
                                        #         Child Loop BB15_127 Depth 4
                                        #         Child Loop BB15_133 Depth 4
                                        #         Child Loop BB15_149 Depth 4
	slli.d	$a4, $s3, 2
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	beqz	$a0, .LBB15_108
# %bb.111:                              # %.preheader1213.split
                                        #   in Loop: Header=BB15_110 Depth=3
	st.d	$a4, $sp, 232                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	sub.d	$a0, $s3, $a0
	ld.d	$a1, $sp, 208                   # 8-byte Folded Reload
	alsl.d	$a0, $a0, $a1, 1
	st.d	$a0, $sp, 248                   # 8-byte Folded Spill
	slli.d	$a0, $s3, 6
	ld.wu	$a1, $s5, 40
	add.d	$a0, $s2, $a0
	st.d	$a0, $sp, 224                   # 8-byte Folded Spill
	addi.w	$s1, $zero, -5
	lu32i.d	$s1, 0
	and	$a0, $a1, $s1
	addi.w	$a0, $a0, 0
	addi.d	$a0, $a0, -10
	sltui	$a0, $a0, 1
	slli.d	$a2, $a0, 1
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	beqz	$a0, .LBB15_118
# %bb.112:                              # %.preheader1213.split.split.us.preheader
                                        #   in Loop: Header=BB15_110 Depth=3
	addi.d	$a5, $sp, 456
	addi.d	$a6, $sp, 392
	addi.d	$a7, $sp, 388
	move	$a0, $fp
	ld.d	$a3, $sp, 264                   # 8-byte Folded Reload
	move	$a4, $s3
	pcaddu18i	$ra, %call36(readCoeff4x4_CAVLC)
	jirl	$ra, $ra, 0
	ld.wu	$a0, $s5, 40
	and	$a0, $a0, $s1
	addi.w	$a1, $a0, 0
	ld.w	$a2, $s5, 396
	ld.w	$a0, $sp, 388
	addi.d	$a1, $a1, -10
	sltu	$a1, $zero, $a1
	sub.d	$a1, $zero, $a1
	beqz	$a2, .LBB15_124
# %bb.113:                              # %.preheader1203.us
                                        #   in Loop: Header=BB15_110 Depth=3
	blez	$a0, .LBB15_129
# %bb.114:                              # %.lr.ph1263.us
                                        #   in Loop: Header=BB15_110 Depth=3
	ld.d	$a2, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 248                   # 8-byte Folded Reload
	alsl.d	$a2, $a3, $a2, 1
	addi.d	$a3, $sp, 456
	addi.d	$a4, $sp, 392
	b	.LBB15_116
	.p2align	4, , 16
.LBB15_115:                             #   in Loop: Header=BB15_116 Depth=4
	addi.d	$a3, $a3, 4
	addi.d	$a0, $a0, -1
	addi.d	$a4, $a4, 4
	beqz	$a0, .LBB15_129
.LBB15_116:                             #   Parent Loop BB15_69 Depth=1
                                        #     Parent Loop BB15_72 Depth=2
                                        #       Parent Loop BB15_110 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.w	$a5, $a3, 0
	beqz	$a5, .LBB15_115
# %bb.117:                              #   in Loop: Header=BB15_116 Depth=4
	ld.w	$a6, $a4, 0
	ld.d	$a7, $s5, 304
	add.d	$a1, $a1, $a6
	addi.d	$a1, $a1, 1
	or	$a6, $a7, $s8
	st.d	$a6, $s5, 304
	slli.w	$a6, $a1, 2
	alsl.d	$a7, $a6, $a2, 1
	ld.bu	$a7, $a7, 1
	slli.d	$a6, $a6, 1
	ldx.bu	$a6, $a2, $a6
	slli.d	$a7, $a7, 6
	add.d	$a7, $s6, $a7
	slli.d	$a6, $a6, 2
	stx.w	$a5, $a7, $a6
	b	.LBB15_115
	.p2align	4, , 16
.LBB15_118:                             # %.preheader1213.split.split.preheader
                                        #   in Loop: Header=BB15_110 Depth=3
	addi.d	$a5, $sp, 456
	addi.d	$a6, $sp, 392
	addi.d	$a7, $sp, 388
	move	$a0, $fp
	ld.d	$a3, $sp, 264                   # 8-byte Folded Reload
	move	$a4, $s3
	pcaddu18i	$ra, %call36(readCoeff4x4_CAVLC)
	jirl	$ra, $ra, 0
	ld.wu	$a0, $s5, 40
	and	$a0, $a0, $s1
	addi.w	$a1, $a0, 0
	ld.w	$a2, $s5, 396
	ld.w	$a0, $sp, 388
	addi.d	$a1, $a1, -10
	sltu	$a1, $zero, $a1
	sub.d	$a1, $zero, $a1
	beqz	$a2, .LBB15_135
# %bb.119:                              # %.preheader1207
                                        #   in Loop: Header=BB15_110 Depth=3
	blez	$a0, .LBB15_140
# %bb.120:                              # %.lr.ph1255
                                        #   in Loop: Header=BB15_110 Depth=3
	ld.d	$a2, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 248                   # 8-byte Folded Reload
	alsl.d	$a2, $a3, $a2, 1
	addi.d	$a3, $sp, 456
	addi.d	$a4, $sp, 392
	b	.LBB15_122
	.p2align	4, , 16
.LBB15_121:                             #   in Loop: Header=BB15_122 Depth=4
	addi.d	$a3, $a3, 4
	addi.d	$a0, $a0, -1
	addi.d	$a4, $a4, 4
	beqz	$a0, .LBB15_140
.LBB15_122:                             #   Parent Loop BB15_69 Depth=1
                                        #     Parent Loop BB15_72 Depth=2
                                        #       Parent Loop BB15_110 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.w	$a5, $a3, 0
	beqz	$a5, .LBB15_121
# %bb.123:                              #   in Loop: Header=BB15_122 Depth=4
	ld.w	$a6, $a4, 0
	ld.d	$a7, $s5, 304
	add.d	$a1, $a1, $a6
	addi.d	$a1, $a1, 1
	or	$a6, $a7, $s8
	st.d	$a6, $s5, 304
	slli.w	$a6, $a1, 2
	alsl.d	$a7, $a6, $a2, 1
	ld.bu	$a7, $a7, 1
	slli.d	$a6, $a6, 1
	ldx.bu	$a6, $a2, $a6
	slli.d	$t0, $a7, 5
	add.d	$t0, $s4, $t0
	slli.d	$a6, $a6, 2
	ldx.w	$t0, $t0, $a6
	mul.d	$a5, $t0, $a5
	sll.w	$a5, $a5, $s0
	addi.w	$a5, $a5, 32
	srli.d	$a5, $a5, 6
	slli.d	$a7, $a7, 6
	add.d	$a7, $s6, $a7
	stx.w	$a5, $a7, $a6
	b	.LBB15_121
.LBB15_124:                             # %.preheader1201.us
                                        #   in Loop: Header=BB15_110 Depth=3
	blez	$a0, .LBB15_129
# %bb.125:                              # %.lr.ph1266.us
                                        #   in Loop: Header=BB15_110 Depth=3
	ld.d	$a2, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 232                   # 8-byte Folded Reload
	or	$a2, $a2, $a3
	ori	$a3, $zero, 1
	sll.d	$a2, $a3, $a2
	ld.d	$a3, $sp, 184                   # 8-byte Folded Reload
	slli.d	$a3, $a3, 8
	ld.d	$a4, $sp, 224                   # 8-byte Folded Reload
	add.d	$a3, $a4, $a3
	addi.d	$a4, $sp, 456
	addi.d	$a5, $sp, 392
	b	.LBB15_127
	.p2align	4, , 16
.LBB15_126:                             #   in Loop: Header=BB15_127 Depth=4
	addi.d	$a4, $a4, 4
	addi.d	$a0, $a0, -1
	addi.d	$a5, $a5, 4
	beqz	$a0, .LBB15_129
.LBB15_127:                             #   Parent Loop BB15_69 Depth=1
                                        #     Parent Loop BB15_72 Depth=2
                                        #       Parent Loop BB15_110 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.w	$a6, $a4, 0
	beqz	$a6, .LBB15_126
# %bb.128:                              #   in Loop: Header=BB15_127 Depth=4
	ld.w	$a7, $a5, 0
	add.d	$a1, $a1, $a7
	addi.w	$a1, $a1, 1
	alsl.d	$a7, $a1, $s7, 1
	ld.d	$t0, $s5, 304
	slli.d	$t1, $a1, 1
	ld.bu	$a7, $a7, 1
	ldx.bu	$t1, $s7, $t1
	or	$t0, $t0, $a2
	st.d	$t0, $s5, 304
	alsl.d	$a7, $a7, $a3, 4
	slli.d	$t0, $t1, 2
	stx.w	$a6, $a7, $t0
	b	.LBB15_126
	.p2align	4, , 16
.LBB15_129:                             # %.loopexit1202.us
                                        #   in Loop: Header=BB15_110 Depth=3
	ld.wu	$a0, $s5, 40
	and	$a0, $a0, $s1
	addi.w	$a0, $a0, 0
	addi.d	$a0, $a0, -10
	sltui	$a0, $a0, 1
	slli.d	$a2, $a0, 1
	addi.d	$a5, $sp, 456
	addi.d	$a6, $sp, 392
	addi.d	$a7, $sp, 388
	move	$a0, $fp
	ld.d	$a3, $sp, 216                   # 8-byte Folded Reload
	move	$a4, $s3
	pcaddu18i	$ra, %call36(readCoeff4x4_CAVLC)
	jirl	$ra, $ra, 0
	ld.wu	$a0, $s5, 40
	and	$a0, $a0, $s1
	addi.w	$a1, $a0, 0
	ld.w	$a2, $s5, 396
	ld.w	$a0, $sp, 388
	addi.d	$a1, $a1, -10
	sltu	$a1, $zero, $a1
	sub.d	$a1, $zero, $a1
	beqz	$a2, .LBB15_146
# %bb.130:                              # %.preheader1203.us.1
                                        #   in Loop: Header=BB15_110 Depth=3
	blez	$a0, .LBB15_109
# %bb.131:                              # %.lr.ph1263.us.1
                                        #   in Loop: Header=BB15_110 Depth=3
	ld.d	$a2, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 248                   # 8-byte Folded Reload
	alsl.d	$a2, $a3, $a2, 1
	addi.d	$a3, $sp, 392
	addi.d	$a4, $sp, 456
	b	.LBB15_133
	.p2align	4, , 16
.LBB15_132:                             #   in Loop: Header=BB15_133 Depth=4
	addi.d	$a0, $a0, -1
	addi.d	$a3, $a3, 4
	addi.d	$a4, $a4, 4
	beqz	$a0, .LBB15_109
.LBB15_133:                             #   Parent Loop BB15_69 Depth=1
                                        #     Parent Loop BB15_72 Depth=2
                                        #       Parent Loop BB15_110 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.w	$a5, $a4, 0
	beqz	$a5, .LBB15_132
# %bb.134:                              #   in Loop: Header=BB15_133 Depth=4
	ld.w	$a6, $a3, 0
	ld.d	$a7, $s5, 304
	add.d	$a1, $a1, $a6
	addi.d	$a1, $a1, 1
	or	$a6, $a7, $s8
	st.d	$a6, $s5, 304
	slli.w	$a6, $a1, 2
	alsl.d	$a7, $a6, $a2, 1
	ld.bu	$a7, $a7, 1
	slli.d	$a6, $a6, 1
	ldx.bu	$a6, $a2, $a6
	slli.d	$a7, $a7, 6
	add.d	$a7, $s6, $a7
	slli.d	$a6, $a6, 2
	stx.w	$a5, $a7, $a6
	b	.LBB15_132
.LBB15_135:                             # %.preheader1205
                                        #   in Loop: Header=BB15_110 Depth=3
	blez	$a0, .LBB15_140
# %bb.136:                              # %.lr.ph1258
                                        #   in Loop: Header=BB15_110 Depth=3
	ld.d	$a2, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 232                   # 8-byte Folded Reload
	or	$a2, $a2, $a3
	ori	$a3, $zero, 1
	sll.d	$a2, $a3, $a2
	ld.d	$a3, $sp, 184                   # 8-byte Folded Reload
	slli.d	$a3, $a3, 8
	ld.d	$a4, $sp, 224                   # 8-byte Folded Reload
	add.d	$a3, $a4, $a3
	addi.d	$a4, $sp, 456
	addi.d	$a5, $sp, 392
	b	.LBB15_138
	.p2align	4, , 16
.LBB15_137:                             #   in Loop: Header=BB15_138 Depth=4
	addi.d	$a4, $a4, 4
	addi.d	$a0, $a0, -1
	addi.d	$a5, $a5, 4
	beqz	$a0, .LBB15_140
.LBB15_138:                             #   Parent Loop BB15_69 Depth=1
                                        #     Parent Loop BB15_72 Depth=2
                                        #       Parent Loop BB15_110 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.w	$a6, $a4, 0
	beqz	$a6, .LBB15_137
# %bb.139:                              #   in Loop: Header=BB15_138 Depth=4
	ld.w	$a7, $a5, 0
	add.d	$a1, $a1, $a7
	addi.w	$a1, $a1, 1
	alsl.d	$a7, $a1, $s7, 1
	slli.d	$t0, $a1, 1
	ld.bu	$a7, $a7, 1
	ldx.bu	$t0, $s7, $t0
	ld.d	$t1, $s5, 304
	ld.d	$t2, $sp, 272                   # 8-byte Folded Reload
	alsl.d	$t2, $a7, $t2, 4
	slli.d	$t0, $t0, 2
	ldx.w	$t2, $t2, $t0
	or	$t1, $t1, $a2
	st.d	$t1, $s5, 304
	mul.d	$a6, $t2, $a6
	sll.w	$a6, $a6, $s0
	addi.w	$a6, $a6, 8
	srli.d	$a6, $a6, 4
	alsl.d	$a7, $a7, $a3, 4
	stx.w	$a6, $a7, $t0
	b	.LBB15_137
	.p2align	4, , 16
.LBB15_140:                             # %.loopexit1206
                                        #   in Loop: Header=BB15_110 Depth=3
	ld.wu	$a0, $s5, 40
	and	$a0, $a0, $s1
	addi.w	$a0, $a0, 0
	addi.d	$a0, $a0, -10
	sltui	$a0, $a0, 1
	slli.d	$a2, $a0, 1
	addi.d	$a5, $sp, 456
	addi.d	$a6, $sp, 392
	addi.d	$a7, $sp, 388
	move	$a0, $fp
	ld.d	$a3, $sp, 216                   # 8-byte Folded Reload
	move	$a4, $s3
	pcaddu18i	$ra, %call36(readCoeff4x4_CAVLC)
	jirl	$ra, $ra, 0
	ld.wu	$a0, $s5, 40
	and	$a0, $a0, $s1
	addi.w	$a1, $a0, 0
	ld.w	$a2, $s5, 396
	ld.w	$a0, $sp, 388
	addi.d	$a1, $a1, -10
	sltu	$a1, $zero, $a1
	sub.d	$a1, $zero, $a1
	beqz	$a2, .LBB15_151
# %bb.141:                              # %.preheader1207.1
                                        #   in Loop: Header=BB15_110 Depth=3
	blez	$a0, .LBB15_109
# %bb.142:                              # %.lr.ph1255.1
                                        #   in Loop: Header=BB15_110 Depth=3
	ld.d	$a2, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 248                   # 8-byte Folded Reload
	alsl.d	$a2, $a3, $a2, 1
	addi.d	$a3, $sp, 392
	addi.d	$a4, $sp, 456
	b	.LBB15_144
	.p2align	4, , 16
.LBB15_143:                             #   in Loop: Header=BB15_144 Depth=4
	addi.d	$a0, $a0, -1
	addi.d	$a3, $a3, 4
	addi.d	$a4, $a4, 4
	beqz	$a0, .LBB15_109
.LBB15_144:                             #   Parent Loop BB15_69 Depth=1
                                        #     Parent Loop BB15_72 Depth=2
                                        #       Parent Loop BB15_110 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.w	$a5, $a4, 0
	beqz	$a5, .LBB15_143
# %bb.145:                              #   in Loop: Header=BB15_144 Depth=4
	ld.w	$a6, $a3, 0
	ld.d	$a7, $s5, 304
	add.d	$a1, $a1, $a6
	addi.d	$a1, $a1, 1
	or	$a6, $a7, $s8
	st.d	$a6, $s5, 304
	slli.w	$a6, $a1, 2
	alsl.d	$a7, $a6, $a2, 1
	ld.bu	$a7, $a7, 1
	slli.d	$a6, $a6, 1
	ldx.bu	$a6, $a2, $a6
	slli.d	$t0, $a7, 5
	add.d	$t0, $s4, $t0
	slli.d	$a6, $a6, 2
	ldx.w	$t0, $t0, $a6
	mul.d	$a5, $t0, $a5
	sll.w	$a5, $a5, $s0
	addi.w	$a5, $a5, 32
	srli.d	$a5, $a5, 6
	slli.d	$a7, $a7, 6
	add.d	$a7, $s6, $a7
	stx.w	$a5, $a7, $a6
	b	.LBB15_143
.LBB15_146:                             # %.preheader1201.us.1
                                        #   in Loop: Header=BB15_110 Depth=3
	blez	$a0, .LBB15_109
# %bb.147:                              # %.lr.ph1266.us.1
                                        #   in Loop: Header=BB15_110 Depth=3
	ld.d	$a4, $sp, 216                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 232                   # 8-byte Folded Reload
	or	$a2, $a4, $a2
	ori	$a3, $zero, 1
	sll.d	$a2, $a3, $a2
	alsl.d	$a3, $a4, $a4, 1
	slli.d	$a3, $a3, 8
	ld.d	$a4, $sp, 224                   # 8-byte Folded Reload
	add.d	$a3, $a4, $a3
	addi.d	$a4, $sp, 392
	addi.d	$a5, $sp, 456
	b	.LBB15_149
	.p2align	4, , 16
.LBB15_148:                             #   in Loop: Header=BB15_149 Depth=4
	addi.d	$a0, $a0, -1
	addi.d	$a4, $a4, 4
	addi.d	$a5, $a5, 4
	beqz	$a0, .LBB15_109
.LBB15_149:                             #   Parent Loop BB15_69 Depth=1
                                        #     Parent Loop BB15_72 Depth=2
                                        #       Parent Loop BB15_110 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.w	$a6, $a5, 0
	beqz	$a6, .LBB15_148
# %bb.150:                              #   in Loop: Header=BB15_149 Depth=4
	ld.w	$a7, $a4, 0
	add.d	$a1, $a1, $a7
	addi.w	$a1, $a1, 1
	alsl.d	$a7, $a1, $s7, 1
	ld.d	$t0, $s5, 304
	slli.d	$t1, $a1, 1
	ld.bu	$a7, $a7, 1
	ldx.bu	$t1, $s7, $t1
	or	$t0, $t0, $a2
	st.d	$t0, $s5, 304
	alsl.d	$a7, $a7, $a3, 4
	slli.d	$t0, $t1, 2
	stx.w	$a6, $a7, $t0
	b	.LBB15_148
.LBB15_151:                             # %.preheader1205.1
                                        #   in Loop: Header=BB15_110 Depth=3
	blez	$a0, .LBB15_109
# %bb.152:                              # %.lr.ph1258.1
                                        #   in Loop: Header=BB15_110 Depth=3
	ld.d	$a4, $sp, 216                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 232                   # 8-byte Folded Reload
	or	$a2, $a4, $a2
	ori	$a3, $zero, 1
	sll.d	$a2, $a3, $a2
	alsl.d	$a3, $a4, $a4, 1
	slli.d	$a3, $a3, 8
	ld.d	$a4, $sp, 224                   # 8-byte Folded Reload
	add.d	$a3, $a4, $a3
	addi.d	$a4, $sp, 392
	addi.d	$a5, $sp, 456
	b	.LBB15_154
	.p2align	4, , 16
.LBB15_153:                             #   in Loop: Header=BB15_154 Depth=4
	addi.d	$a0, $a0, -1
	addi.d	$a4, $a4, 4
	addi.d	$a5, $a5, 4
	beqz	$a0, .LBB15_109
.LBB15_154:                             #   Parent Loop BB15_69 Depth=1
                                        #     Parent Loop BB15_72 Depth=2
                                        #       Parent Loop BB15_110 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.w	$a6, $a5, 0
	beqz	$a6, .LBB15_153
# %bb.155:                              #   in Loop: Header=BB15_154 Depth=4
	ld.w	$a7, $a4, 0
	add.d	$a1, $a1, $a7
	addi.w	$a1, $a1, 1
	alsl.d	$a7, $a1, $s7, 1
	slli.d	$t0, $a1, 1
	ld.bu	$a7, $a7, 1
	ldx.bu	$t0, $s7, $t0
	ld.d	$t1, $s5, 304
	ld.d	$t2, $sp, 272                   # 8-byte Folded Reload
	alsl.d	$t2, $a7, $t2, 4
	slli.d	$t0, $t0, 2
	ldx.w	$t2, $t2, $t0
	or	$t1, $t1, $a2
	st.d	$t1, $s5, 304
	mul.d	$a6, $t2, $a6
	sll.w	$a6, $a6, $s0
	addi.w	$a6, $a6, 8
	srli.d	$a6, $a6, 4
	alsl.d	$a7, $a7, $a3, 4
	stx.w	$a6, $a7, $t0
	b	.LBB15_153
.LBB15_156:                             # %.preheader1214.us.preheader
                                        #   in Loop: Header=BB15_72 Depth=2
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	stptr.w	$a0, $fp, 5612
	stptr.w	$a3, $fp, 5608
	b	.LBB15_71
.LBB15_157:
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	ldx.w	$a0, $a0, $a1
	beqz	$a0, .LBB15_261
# %bb.158:                              # %.preheader1200
	ldptr.w	$a1, $fp, 5924
	vrepli.b	$vr4, 0
	lu12i.w	$a0, -1
	blez	$a1, .LBB15_161
# %bb.159:                              # %.preheader1199.preheader
	lu12i.w	$a7, 1
	ori	$a1, $a7, 872
	add.d	$a1, $fp, $a1
	ori	$a2, $zero, 3
	ori	$a3, $a0, 1840
	ori	$a4, $a0, 1824
	ori	$a5, $a0, 1808
	ori	$a6, $a0, 1792
	ori	$a7, $a7, 1828
	.p2align	4, , 16
.LBB15_160:                             # %.preheader1199
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
	ldx.w	$t0, $fp, $a7
	addi.w	$t0, $t0, 3
	addi.d	$a2, $a2, 1
	addi.d	$a1, $a1, 64
	blt	$a2, $t0, .LBB15_160
.LBB15_161:                             # %._crit_edge
	ori	$a2, $zero, 16
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 56                    # 8-byte Folded Reload
	blt	$a1, $a2, .LBB15_260
# %bb.162:                              # %.preheader1197
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	addi.d	$a1, $a1, -10
	sltu	$a1, $zero, $a1
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	addi.d	$a2, $a2, -3
	sltui	$a2, $a2, 1
	lu12i.w	$a3, 1
	ori	$a3, $a3, 1384
	add.d	$a3, $fp, $a3
	st.d	$a3, $sp, 264                   # 8-byte Folded Spill
	and	$a1, $a2, $a1
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	or	$a1, $a1, $a2
	ld.d	$a2, $sp, 192                   # 8-byte Folded Reload
	or	$a1, $a1, $a2
	pcalau12i	$a2, %pc_hi20(InvLevelScale4x4Chroma_Inter)
	addi.d	$a2, $a2, %pc_lo12(InvLevelScale4x4Chroma_Inter)
	st.d	$a2, $sp, 216                   # 8-byte Folded Spill
	masknez	$a2, $a2, $a4
	pcalau12i	$a3, %pc_hi20(InvLevelScale4x4Chroma_Intra)
	addi.d	$a3, $a3, %pc_lo12(InvLevelScale4x4Chroma_Intra)
	move	$s4, $zero
	st.d	$a3, $sp, 208                   # 8-byte Folded Spill
	maskeqz	$a3, $a3, $a4
	or	$a2, $a3, $a2
	st.d	$a2, $sp, 224                   # 8-byte Folded Spill
	addi.d	$a2, $fp, 2047
	addi.d	$a2, $a2, 617
	st.d	$a2, $sp, 176                   # 8-byte Folded Spill
	ori	$s1, $zero, 8
	andi	$a1, $a1, 1
	st.d	$a1, $sp, 200                   # 8-byte Folded Spill
	lu12i.w	$a1, -16
	lu32i.d	$a1, 0
	st.d	$a1, $sp, 184                   # 8-byte Folded Spill
	ori	$a0, $a0, 1024
	st.d	$a0, $sp, 168                   # 8-byte Folded Spill
	ori	$a2, $zero, 1
	ori	$s2, $zero, 4
	vst	$vr4, $sp, 272                  # 16-byte Folded Spill
	b	.LBB15_166
.LBB15_163:                             # %._crit_edge1316
                                        #   in Loop: Header=BB15_166 Depth=1
	ld.w	$a0, $sp, 356
	alsl.d	$a1, $s4, $s4, 1
	slli.d	$a1, $a1, 8
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	add.d	$a1, $a2, $a1
	ld.w	$a2, $sp, 360
	ld.w	$a3, $sp, 364
	ld.w	$a4, $sp, 368
.LBB15_164:                             # %.loopexit1185
                                        #   in Loop: Header=BB15_166 Depth=1
	st.w	$a0, $a1, 256
	st.w	$a2, $a1, 1024
	st.w	$a3, $a1, 320
	st.w	$a4, $a1, 1088
.LBB15_165:                             # %.loopexit1185
                                        #   in Loop: Header=BB15_166 Depth=1
	addi.d	$s2, $s2, 4
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	andi	$a0, $a0, 1
	ori	$s4, $zero, 2
	move	$a2, $zero
	beqz	$a0, .LBB15_259
.LBB15_166:                             # =>This Loop Header: Depth=1
                                        #     Child Loop BB15_187 Depth 2
                                        #     Child Loop BB15_217 Depth 2
                                        #     Child Loop BB15_224 Depth 2
                                        #     Child Loop BB15_171 Depth 2
                                        #     Child Loop BB15_196 Depth 2
                                        #     Child Loop BB15_255 Depth 2
                                        #     Child Loop BB15_258 Depth 2
                                        #     Child Loop BB15_250 Depth 2
                                        #     Child Loop BB15_253 Depth 2
                                        #     Child Loop BB15_179 Depth 2
                                        #     Child Loop BB15_207 Depth 2
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	ldx.w	$a0, $a0, $a1
	srli.d	$a3, $s4, 1
	ori	$a1, $zero, 2
	st.d	$a2, $sp, 256                   # 8-byte Folded Spill
	st.d	$a3, $sp, 248                   # 8-byte Folded Spill
	beq	$a0, $a1, .LBB15_177
# %bb.167:                              #   in Loop: Header=BB15_166 Depth=1
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB15_185
# %bb.168:                              #   in Loop: Header=BB15_166 Depth=1
	ld.d	$a0, $sp, 312                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(active_pps)
	slli.d	$s8, $a3, 2
	ld.d	$a1, $sp, 264                   # 8-byte Folded Reload
	vst	$vr4, $a1, 0
	ld.w	$a0, $a0, 12
	addi.d	$a1, $sp, 372
	ldx.w	$a1, $s8, $a1
	st.d	$a1, $sp, 240                   # 8-byte Folded Spill
	beqz	$a0, .LBB15_193
# %bb.169:                              # %.preheader1190
                                        #   in Loop: Header=BB15_166 Depth=1
	ldptr.w	$a0, $fp, 5928
	bltz	$a0, .LBB15_198
# %bb.170:                              # %.lr.ph1308
                                        #   in Loop: Header=BB15_166 Depth=1
	slli.d	$a0, $s4, 1
	bstrpick.d	$a0, $a0, 31, 1
	slli.d	$a0, $a0, 1
	lu12i.w	$a1, 240
	sll.w	$s0, $a1, $a0
	addi.d	$s3, $zero, -1
	addi.d	$s6, $zero, -1
	.p2align	4, , 16
.LBB15_171:                             # %switch.lookup1781
                                        #   Parent Loop BB15_166 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a0, $s5, 40
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
	maskeqz	$a2, $s1, $a0
	or	$a1, $a2, $a1
	stptr.w	$a0, $fp, 5616
	stptr.w	$s4, $fp, 5620
	ori	$a2, $zero, 52
	masknez	$a2, $a2, $a0
	ori	$a3, $zero, 32
	maskeqz	$a0, $a3, $a0
	ld.d	$a3, $sp, 312                   # 8-byte Folded Reload
	ld.d	$a3, $a3, %pc_lo12(active_pps)
	or	$a0, $a0, $a2
	ld.d	$a2, $sp, 304                   # 8-byte Folded Reload
	ld.d	$a2, $a2, 40
	ld.d	$a4, $sp, 296                   # 8-byte Folded Reload
	ldx.w	$a0, $a4, $a0
	ld.w	$a3, $a3, 12
	st.w	$a1, $sp, 520
	ori	$a1, $zero, 6
	st.w	$a1, $sp, 544
	ori	$a1, $zero, 56
	mul.d	$a0, $a0, $a1
	add.d	$a2, $a2, $a0
	beqz	$a3, .LBB15_173
# %bb.172:                              #   in Loop: Header=BB15_171 Depth=2
	ld.d	$a0, $a2, 0
	ld.w	$a0, $a0, 24
	beqz	$a0, .LBB15_174
.LBB15_173:                             #   in Loop: Header=BB15_171 Depth=2
	pcalau12i	$a0, %got_pc_hi20(linfo_levrun_c2x2)
	ld.d	$a0, $a0, %got_pc_lo12(linfo_levrun_c2x2)
	st.d	$a0, $sp, 552
	b	.LBB15_175
	.p2align	4, , 16
.LBB15_174:                             #   in Loop: Header=BB15_171 Depth=2
	pcalau12i	$a0, %got_pc_hi20(readRunLevel_CABAC)
	ld.d	$a0, $a0, %got_pc_lo12(readRunLevel_CABAC)
	st.d	$a0, $sp, 560
.LBB15_175:                             #   in Loop: Header=BB15_171 Depth=2
	ld.d	$a3, $a2, 48
	addi.d	$a0, $sp, 520
	move	$a1, $fp
	jirl	$ra, $a3, 0
	ld.w	$a0, $sp, 524
	vld	$vr4, $sp, 272                  # 16-byte Folded Reload
	beqz	$a0, .LBB15_198
# %bb.176:                              #   in Loop: Header=BB15_171 Depth=2
	ld.w	$a1, $sp, 528
	ld.d	$a2, $s5, 304
	add.d	$a1, $s6, $a1
	addi.w	$s6, $a1, 1
	slli.d	$a1, $s6, 2
	ld.d	$a3, $sp, 264                   # 8-byte Folded Reload
	stx.w	$a0, $a3, $a1
	ldptr.w	$a0, $fp, 5928
	or	$a1, $a2, $s0
	addi.w	$s3, $s3, 1
	st.d	$a1, $s5, 304
	blt	$s3, $a0, .LBB15_171
	b	.LBB15_198
	.p2align	4, , 16
.LBB15_177:                             #   in Loop: Header=BB15_166 Depth=1
	ld.d	$a0, $sp, 312                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(active_pps)
	slli.d	$a1, $a3, 2
	addi.d	$a2, $s5, 4
	ldx.w	$a1, $a2, $a1
	st.d	$a1, $sp, 240                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	ldx.w	$a1, $fp, $a1
	st.d	$a1, $sp, 232                   # 8-byte Folded Spill
	ld.w	$a0, $a0, 12
	vst	$vr4, $sp, 336
	vst	$vr4, $sp, 320
	pcalau12i	$a1, %pc_hi20(SCAN_YUV422)
	addi.d	$s8, $a1, %pc_lo12(SCAN_YUV422)
	beqz	$a0, .LBB15_204
# %bb.178:                              # %.preheader1195
                                        #   in Loop: Header=BB15_166 Depth=1
	slli.d	$a0, $s4, 2
	lu12i.w	$a1, 4080
	sll.d	$s0, $a1, $a0
	addi.d	$s3, $zero, -1
	addi.d	$s6, $zero, -1
	.p2align	4, , 16
.LBB15_179:                             # %switch.lookup1788
                                        #   Parent Loop BB15_166 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a0, $s5, 40
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
	maskeqz	$a2, $s1, $a0
	or	$a1, $a2, $a1
	stptr.w	$a0, $fp, 5616
	stptr.w	$s4, $fp, 5620
	ori	$a2, $zero, 52
	masknez	$a2, $a2, $a0
	ori	$a3, $zero, 32
	maskeqz	$a0, $a3, $a0
	ld.d	$a3, $sp, 312                   # 8-byte Folded Reload
	ld.d	$a3, $a3, %pc_lo12(active_pps)
	or	$a0, $a0, $a2
	ld.d	$a2, $sp, 304                   # 8-byte Folded Reload
	ld.d	$a2, $a2, 40
	ld.d	$a4, $sp, 296                   # 8-byte Folded Reload
	ldx.w	$a0, $a4, $a0
	ld.w	$a3, $a3, 12
	st.w	$a1, $sp, 520
	st.w	$s1, $sp, 544
	ori	$a1, $zero, 56
	mul.d	$a0, $a0, $a1
	add.d	$a2, $a2, $a0
	beqz	$a3, .LBB15_181
# %bb.180:                              #   in Loop: Header=BB15_179 Depth=2
	ld.d	$a0, $a2, 0
	ld.w	$a0, $a0, 24
	beqz	$a0, .LBB15_182
.LBB15_181:                             #   in Loop: Header=BB15_179 Depth=2
	pcalau12i	$a0, %got_pc_hi20(linfo_levrun_c2x2)
	ld.d	$a0, $a0, %got_pc_lo12(linfo_levrun_c2x2)
	st.d	$a0, $sp, 552
	b	.LBB15_183
	.p2align	4, , 16
.LBB15_182:                             #   in Loop: Header=BB15_179 Depth=2
	pcalau12i	$a0, %got_pc_hi20(readRunLevel_CABAC)
	ld.d	$a0, $a0, %got_pc_lo12(readRunLevel_CABAC)
	st.d	$a0, $sp, 560
.LBB15_183:                             #   in Loop: Header=BB15_179 Depth=2
	ld.d	$a3, $a2, 48
	addi.d	$a0, $sp, 520
	move	$a1, $fp
	jirl	$ra, $a3, 0
	ld.w	$a0, $sp, 524
	vld	$vr4, $sp, 272                  # 16-byte Folded Reload
	beqz	$a0, .LBB15_209
# %bb.184:                              #   in Loop: Header=BB15_179 Depth=2
	ld.d	$a1, $s5, 304
	ld.w	$a2, $sp, 528
	or	$a1, $a1, $s0
	st.d	$a1, $s5, 304
	add.d	$a1, $s6, $a2
	addi.w	$s6, $a1, 1
	alsl.d	$a1, $s6, $s8, 1
	slli.d	$a2, $s6, 1
	ldx.bu	$a2, $s8, $a2
	ld.bu	$a1, $a1, 1
	addi.d	$a3, $sp, 320
	alsl.d	$a2, $a2, $a3, 4
	slli.d	$a1, $a1, 2
	addi.w	$s3, $s3, 1
	stx.w	$a0, $a2, $a1
	bltu	$s3, $s1, .LBB15_179
	b	.LBB15_209
	.p2align	4, , 16
.LBB15_185:                             #   in Loop: Header=BB15_166 Depth=1
	ld.d	$a0, $sp, 312                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(active_pps)
	ld.w	$a0, $a0, 12
	slli.d	$a1, $s4, 1
	addi.d	$s0, $a1, 4
	beqz	$a0, .LBB15_214
# %bb.186:                              # %.preheader1187
                                        #   in Loop: Header=BB15_166 Depth=1
	slli.d	$a0, $s4, 3
	ld.d	$a1, $sp, 184                   # 8-byte Folded Reload
	sll.d	$s8, $a1, $a0
	slli.d	$a0, $s0, 6
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	add.d	$s3, $a1, $a0
	addi.d	$s0, $zero, -1
	addi.d	$s6, $zero, -1
	.p2align	4, , 16
.LBB15_187:                             # %switch.lookup1795
                                        #   Parent Loop BB15_166 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a0, $s5, 40
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
	maskeqz	$a2, $s1, $a0
	or	$a1, $a2, $a1
	stptr.w	$a0, $fp, 5616
	stptr.w	$s4, $fp, 5620
	ori	$a2, $zero, 52
	masknez	$a2, $a2, $a0
	ori	$a3, $zero, 32
	maskeqz	$a0, $a3, $a0
	ld.d	$a3, $sp, 312                   # 8-byte Folded Reload
	ld.d	$a3, $a3, %pc_lo12(active_pps)
	or	$a0, $a0, $a2
	ld.d	$a2, $sp, 304                   # 8-byte Folded Reload
	ld.d	$a2, $a2, 40
	ld.d	$a4, $sp, 296                   # 8-byte Folded Reload
	ldx.w	$a0, $a4, $a0
	ld.w	$a3, $a3, 12
	st.w	$a1, $sp, 520
	ori	$a1, $zero, 9
	st.w	$a1, $sp, 544
	ori	$a1, $zero, 56
	mul.d	$a0, $a0, $a1
	add.d	$a2, $a2, $a0
	beqz	$a3, .LBB15_189
# %bb.188:                              #   in Loop: Header=BB15_187 Depth=2
	ld.d	$a0, $a2, 0
	ld.w	$a0, $a0, 24
	beqz	$a0, .LBB15_190
.LBB15_189:                             #   in Loop: Header=BB15_187 Depth=2
	pcalau12i	$a0, %got_pc_hi20(linfo_levrun_c2x2)
	ld.d	$a0, $a0, %got_pc_lo12(linfo_levrun_c2x2)
	st.d	$a0, $sp, 552
	b	.LBB15_191
	.p2align	4, , 16
.LBB15_190:                             #   in Loop: Header=BB15_187 Depth=2
	pcalau12i	$a0, %got_pc_hi20(readRunLevel_CABAC)
	ld.d	$a0, $a0, %got_pc_lo12(readRunLevel_CABAC)
	st.d	$a0, $sp, 560
.LBB15_191:                             #   in Loop: Header=BB15_187 Depth=2
	ld.d	$a3, $a2, 48
	addi.d	$a0, $sp, 520
	move	$a1, $fp
	jirl	$ra, $a3, 0
	ld.w	$a0, $sp, 524
	vld	$vr4, $sp, 272                  # 16-byte Folded Reload
	beqz	$a0, .LBB15_219
# %bb.192:                              #   in Loop: Header=BB15_187 Depth=2
	ld.d	$a1, $s5, 304
	ld.w	$a2, $sp, 528
	or	$a1, $a1, $s8
	st.d	$a1, $s5, 304
	add.d	$a1, $s6, $a2
	addi.w	$s6, $a1, 1
	slli.d	$a1, $s6, 1
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	ldx.bu	$a1, $a2, $a1
	alsl.d	$a2, $s6, $a2, 1
	ld.bu	$a2, $a2, 1
	alsl.d	$a1, $a1, $a1, 1
	slli.d	$a1, $a1, 8
	add.d	$a1, $s3, $a1
	slli.d	$a2, $a2, 6
	addi.w	$s0, $s0, 1
	stx.w	$a0, $a1, $a2
	ori	$a0, $zero, 16
	bltu	$s0, $a0, .LBB15_187
	b	.LBB15_219
.LBB15_193:                             #   in Loop: Header=BB15_166 Depth=1
	ori	$a2, $zero, 6
	addi.d	$a5, $sp, 456
	addi.d	$a6, $sp, 392
	addi.d	$a7, $sp, 388
	move	$a0, $fp
	move	$a3, $zero
	move	$a4, $zero
	pcaddu18i	$ra, %call36(readCoeff4x4_CAVLC)
	jirl	$ra, $ra, 0
	vld	$vr4, $sp, 272                  # 16-byte Folded Reload
	ld.w	$a0, $sp, 388
	blez	$a0, .LBB15_198
# %bb.194:                              # %.lr.ph1312
                                        #   in Loop: Header=BB15_166 Depth=1
	slli.d	$a1, $s4, 1
	bstrpick.d	$a1, $a1, 31, 1
	slli.d	$a1, $a1, 1
	lu12i.w	$a2, 240
	sll.w	$a1, $a2, $a1
	addi.d	$a3, $zero, -1
	addi.d	$a2, $sp, 456
	addi.d	$a4, $sp, 392
	b	.LBB15_196
	.p2align	4, , 16
.LBB15_195:                             #   in Loop: Header=BB15_196 Depth=2
	addi.d	$a2, $a2, 4
	addi.d	$a0, $a0, -1
	addi.d	$a4, $a4, 4
	beqz	$a0, .LBB15_198
.LBB15_196:                             #   Parent Loop BB15_166 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a5, $a2, 0
	beqz	$a5, .LBB15_195
# %bb.197:                              #   in Loop: Header=BB15_196 Depth=2
	ld.d	$a6, $s5, 304
	ld.w	$a7, $a4, 0
	or	$a6, $a6, $a1
	st.d	$a6, $s5, 304
	add.d	$a3, $a3, $a7
	addi.w	$a3, $a3, 1
	slli.d	$a6, $a3, 2
	ld.d	$a7, $sp, 264                   # 8-byte Folded Reload
	stx.w	$a5, $a7, $a6
	b	.LBB15_195
	.p2align	4, , 16
.LBB15_198:                             # %.loopexit1189
                                        #   in Loop: Header=BB15_166 Depth=1
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	ld.d	$a1, $sp, 200                   # 8-byte Folded Reload
	beqz	$a1, .LBB15_200
# %bb.199:                              #   in Loop: Header=BB15_166 Depth=1
	alsl.d	$a1, $s4, $s4, 1
	slli.d	$a1, $a1, 8
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	add.d	$a1, $a2, $a1
	lu12i.w	$a4, 1
	ori	$a2, $a4, 1388
	ldx.w	$a2, $fp, $a2
	ori	$a3, $a4, 1392
	ldx.w	$a3, $fp, $a3
	ori	$a4, $a4, 1396
	ldx.w	$a4, $fp, $a4
	b	.LBB15_164
.LBB15_200:                             #   in Loop: Header=BB15_166 Depth=1
	lu12i.w	$a4, 1
	ori	$a1, $a4, 1388
	ldx.w	$a2, $fp, $a1
	ori	$a1, $a4, 1392
	ldx.w	$a3, $fp, $a1
	ori	$a1, $a4, 1396
	ldx.w	$a4, $fp, $a1
	add.d	$a1, $a2, $a0
	add.d	$a5, $a4, $a3
	add.d	$a6, $a5, $a1
	st.w	$a6, $sp, 356
	add.d	$a6, $a0, $a3
	add.d	$a7, $a2, $a4
	sub.d	$a6, $a6, $a7
	st.w	$a6, $sp, 360
	sub.d	$a1, $a1, $a5
	st.w	$a1, $sp, 364
	ldptr.w	$a1, $fp, 5928
	add.d	$a2, $a2, $a3
	sub.d	$a0, $a0, $a2
	add.d	$a0, $a0, $a4
	st.w	$a0, $sp, 368
	ori	$a3, $zero, 5
	blez	$a1, .LBB15_163
# %bb.201:                              # %.lr.ph1315
                                        #   in Loop: Header=BB15_166 Depth=1
	ld.d	$a0, $sp, 248                   # 8-byte Folded Reload
	alsl.d	$a0, $a0, $a0, 1
	slli.d	$a0, $a0, 7
	ld.d	$a2, $sp, 224                   # 8-byte Folded Reload
	add.d	$a0, $a2, $a0
	ld.d	$a2, $sp, 240                   # 8-byte Folded Reload
	slli.d	$a2, $a2, 6
	add.d	$a0, $a0, $a2
	addi.d	$a2, $sp, 380
	ldx.w	$a2, $s8, $a2
	ld.w	$a0, $a0, 0
	bge	$a2, $a3, .LBB15_233
# %bb.202:                              # %.lr.ph1315.split.us.preheader
                                        #   in Loop: Header=BB15_166 Depth=1
	sub.d	$a2, $a3, $a2
	bgeu	$a1, $s1, .LBB15_249
# %bb.203:                              #   in Loop: Header=BB15_166 Depth=1
	move	$a3, $zero
	b	.LBB15_252
.LBB15_204:                             #   in Loop: Header=BB15_166 Depth=1
	ori	$a2, $zero, 6
	addi.d	$a5, $sp, 456
	addi.d	$a6, $sp, 392
	addi.d	$a7, $sp, 388
	move	$a0, $fp
	move	$a3, $zero
	move	$a4, $zero
	pcaddu18i	$ra, %call36(readCoeff4x4_CAVLC)
	jirl	$ra, $ra, 0
	vld	$vr4, $sp, 272                  # 16-byte Folded Reload
	ld.w	$a0, $sp, 388
	blez	$a0, .LBB15_209
# %bb.205:                              # %.lr.ph1293
                                        #   in Loop: Header=BB15_166 Depth=1
	slli.d	$a1, $s4, 2
	lu12i.w	$a2, 4080
	sll.d	$a1, $a2, $a1
	addi.d	$a2, $sp, 456
	addi.d	$a3, $sp, 392
	addi.d	$a4, $zero, -1
	b	.LBB15_207
	.p2align	4, , 16
.LBB15_206:                             #   in Loop: Header=BB15_207 Depth=2
	addi.d	$a2, $a2, 4
	addi.d	$a0, $a0, -1
	addi.d	$a3, $a3, 4
	beqz	$a0, .LBB15_209
.LBB15_207:                             #   Parent Loop BB15_166 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a5, $a2, 0
	beqz	$a5, .LBB15_206
# %bb.208:                              #   in Loop: Header=BB15_207 Depth=2
	ld.d	$a6, $s5, 304
	ld.w	$a7, $a3, 0
	or	$a6, $a6, $a1
	st.d	$a6, $s5, 304
	add.d	$a4, $a4, $a7
	addi.w	$a4, $a4, 1
	alsl.d	$a6, $a4, $s8, 1
	slli.d	$a7, $a4, 1
	ldx.bu	$a7, $s8, $a7
	ld.bu	$a6, $a6, 1
	addi.d	$t0, $sp, 320
	alsl.d	$a7, $a7, $t0, 4
	slli.d	$a6, $a6, 2
	stx.w	$a5, $a7, $a6
	b	.LBB15_206
	.p2align	4, , 16
.LBB15_209:                             # %.loopexit1194
                                        #   in Loop: Header=BB15_166 Depth=1
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	beqz	$a0, .LBB15_211
# %bb.210:                              # %.loopexit1193.thread
                                        #   in Loop: Header=BB15_166 Depth=1
	alsl.d	$a0, $s4, $s4, 1
	slli.d	$a0, $a0, 8
	add.d	$a0, $fp, $a0
	ld.w	$a1, $sp, 320
	ld.w	$a2, $sp, 324
	ld.w	$a3, $sp, 328
	ld.w	$a4, $sp, 332
	stptr.w	$a1, $a0, 2664
	stptr.w	$a2, $a0, 2728
	stptr.w	$a3, $a0, 2792
	stptr.w	$a4, $a0, 2856
	ld.w	$a1, $sp, 336
	ld.w	$a2, $sp, 340
	ld.w	$a3, $sp, 344
	ld.w	$a4, $sp, 348
	stptr.w	$a1, $a0, 3432
	stptr.w	$a2, $a0, 3496
	stptr.w	$a3, $a0, 3560
	stptr.w	$a4, $a0, 3624
	b	.LBB15_165
.LBB15_211:                             # %.lr.ph1304
                                        #   in Loop: Header=BB15_166 Depth=1
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a1
	addi.w	$a6, $a0, 3
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	mul.d	$a0, $a6, $a0
	srli.d	$a1, $a0, 63
	srli.d	$a0, $a0, 32
	add.d	$a0, $a0, $a1
	slli.d	$a1, $a0, 2
	alsl.d	$a1, $a0, $a1, 1
	sub.w	$a1, $a6, $a1
	vld	$vr0, $sp, 320
	vld	$vr1, $sp, 336
	ld.d	$a2, $sp, 248                   # 8-byte Folded Reload
	alsl.d	$a2, $a2, $a2, 1
	slli.d	$a2, $a2, 7
	ld.d	$a3, $sp, 216                   # 8-byte Folded Reload
	add.d	$a3, $a3, $a2
	slli.d	$a4, $a1, 6
	add.d	$a1, $a3, $a4
	addi.d	$a5, $a0, -4
	ld.d	$a3, $sp, 208                   # 8-byte Folded Reload
	add.d	$a2, $a3, $a2
	add.d	$a4, $a2, $a4
	ori	$a2, $zero, 3
	sub.d	$a2, $a2, $a0
	ori	$a3, $zero, 1
	sll.w	$a3, $a3, $a2
	ori	$a2, $zero, 4
	sub.d	$a2, $a2, $a0
	alsl.d	$a0, $s4, $s4, 1
	slli.d	$a0, $a0, 8
	ld.d	$a7, $sp, 96                    # 8-byte Folded Reload
	add.d	$a0, $a7, $a0
	vadd.w	$vr2, $vr1, $vr0
	vpickve2gr.w	$a7, $vr2, 0
	vpickve2gr.w	$t2, $vr2, 1
	vpickve2gr.w	$t0, $vr2, 2
	vpickve2gr.w	$t3, $vr2, 3
	add.d	$t4, $t0, $a7
	sub.d	$t0, $a7, $t0
	sub.d	$t1, $t2, $t3
	add.d	$a7, $t3, $t2
	add.d	$t3, $a7, $t4
	sub.d	$t2, $t4, $a7
	add.d	$a7, $t1, $t0
	ld.d	$t5, $sp, 56                    # 8-byte Folded Reload
	ori	$t4, $zero, 23
	blt	$t4, $a6, .LBB15_231
# %bb.212:                              # %.split1298.us
                                        #   in Loop: Header=BB15_166 Depth=1
	beqz	$t5, .LBB15_235
# %bb.213:                              # %.split1298.us.split.us.preheader
                                        #   in Loop: Header=BB15_166 Depth=1
	ld.w	$t4, $a4, 0
	mul.d	$t3, $t3, $t4
	add.d	$t3, $t3, $a3
	sra.w	$t3, $t3, $a2
	addi.w	$t3, $t3, 2
	srli.d	$t3, $t3, 2
	st.w	$t3, $a0, 256
	ld.w	$t3, $a4, 0
	mul.d	$t2, $t3, $t2
	add.d	$t2, $t2, $a3
	sra.w	$t2, $t2, $a2
	addi.w	$t2, $t2, 2
	srli.d	$t2, $t2, 2
	st.w	$t2, $a0, 448
	ld.w	$t2, $a4, 0
	mul.d	$a7, $a7, $t2
	add.d	$a7, $a7, $a3
	sra.w	$a7, $a7, $a2
	addi.w	$a7, $a7, 2
	srli.d	$a7, $a7, 2
	st.w	$a7, $a0, 320
	ld.w	$a7, $a4, 0
	b	.LBB15_236
.LBB15_214:                             #   in Loop: Header=BB15_166 Depth=1
	ori	$a2, $zero, 6
	addi.d	$a5, $sp, 456
	addi.d	$a6, $sp, 392
	addi.d	$a7, $sp, 388
	move	$a0, $fp
	move	$a3, $zero
	move	$a4, $zero
	pcaddu18i	$ra, %call36(readCoeff4x4_CAVLC)
	jirl	$ra, $ra, 0
	vld	$vr4, $sp, 272                  # 16-byte Folded Reload
	ld.w	$a0, $sp, 388
	blez	$a0, .LBB15_219
# %bb.215:                              # %.lr.ph1322
                                        #   in Loop: Header=BB15_166 Depth=1
	slli.d	$a1, $s4, 3
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	sll.d	$a1, $a2, $a1
	slli.d	$a2, $s0, 6
	ld.d	$a3, $sp, 96                    # 8-byte Folded Reload
	add.d	$a2, $a3, $a2
	addi.d	$a4, $zero, -1
	addi.d	$a3, $sp, 456
	addi.d	$a5, $sp, 392
	b	.LBB15_217
	.p2align	4, , 16
.LBB15_216:                             #   in Loop: Header=BB15_217 Depth=2
	addi.d	$a3, $a3, 4
	addi.d	$a0, $a0, -1
	addi.d	$a5, $a5, 4
	beqz	$a0, .LBB15_219
.LBB15_217:                             #   Parent Loop BB15_166 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a6, $a3, 0
	beqz	$a6, .LBB15_216
# %bb.218:                              #   in Loop: Header=BB15_217 Depth=2
	ld.d	$a7, $s5, 304
	ld.w	$t0, $a5, 0
	or	$a7, $a7, $a1
	st.d	$a7, $s5, 304
	add.d	$a4, $a4, $t0
	addi.w	$a4, $a4, 1
	slli.d	$a7, $a4, 1
	ld.d	$t0, $sp, 80                    # 8-byte Folded Reload
	ldx.bu	$a7, $t0, $a7
	alsl.d	$t0, $a4, $t0, 1
	ld.bu	$t0, $t0, 1
	alsl.d	$a7, $a7, $a7, 1
	slli.d	$a7, $a7, 8
	add.d	$a7, $a2, $a7
	slli.d	$t0, $t0, 6
	stx.w	$a6, $a7, $t0
	b	.LBB15_216
	.p2align	4, , 16
.LBB15_219:                             # %.loopexit1186
                                        #   in Loop: Header=BB15_166 Depth=1
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	ld.d	$t7, $sp, 56                    # 8-byte Folded Reload
	ori	$t8, $zero, 3
	ori	$s0, $zero, 3072
	ori	$s3, $zero, 3136
	ori	$s6, $zero, 3200
	ori	$s8, $zero, 3264
	bnez	$a0, .LBB15_165
# %bb.220:                              # %.preheader1181.lr.ph
                                        #   in Loop: Header=BB15_166 Depth=1
	slli.d	$a1, $s2, 6
	ld.d	$a7, $sp, 96                    # 8-byte Folded Reload
	add.d	$a0, $a7, $a1
	ldx.w	$a2, $a7, $a1
	ld.w	$a3, $a0, 1536
	ld.w	$a4, $a0, 768
	ori	$a5, $zero, 2304
	ldx.w	$a5, $a0, $a5
	add.d	$a6, $a3, $a2
	sub.d	$a2, $a2, $a3
	sub.d	$a3, $a4, $a5
	add.d	$a4, $a5, $a4
	add.d	$a5, $a4, $a6
	stx.w	$a5, $a7, $a1
	sub.d	$a1, $a6, $a4
	stptr.w	$a1, $a0, 2304
	add.d	$a1, $a3, $a2
	st.w	$a1, $a0, 768
	sub.d	$a1, $a2, $a3
	ld.w	$a2, $a0, 64
	ld.w	$a3, $a0, 1600
	ld.w	$a4, $a0, 832
	ori	$a5, $zero, 2368
	ldx.w	$a5, $a0, $a5
	st.w	$a1, $a0, 1536
	add.d	$a1, $a3, $a2
	sub.d	$a2, $a2, $a3
	sub.d	$a3, $a4, $a5
	add.d	$a4, $a5, $a4
	add.d	$a5, $a4, $a1
	st.w	$a5, $a0, 64
	sub.d	$a1, $a1, $a4
	stptr.w	$a1, $a0, 2368
	add.d	$a1, $a3, $a2
	st.w	$a1, $a0, 832
	sub.d	$a1, $a2, $a3
	ld.w	$a2, $a0, 128
	ld.w	$a3, $a0, 1664
	ld.w	$a4, $a0, 896
	ori	$a5, $zero, 2432
	ldx.w	$a5, $a0, $a5
	st.w	$a1, $a0, 1600
	add.d	$a1, $a3, $a2
	sub.d	$a2, $a2, $a3
	sub.d	$a3, $a4, $a5
	add.d	$a4, $a5, $a4
	add.d	$a5, $a4, $a1
	st.w	$a5, $a0, 128
	sub.d	$a1, $a1, $a4
	stptr.w	$a1, $a0, 2432
	add.d	$a1, $a3, $a2
	st.w	$a1, $a0, 896
	sub.d	$a1, $a2, $a3
	ld.w	$a2, $a0, 192
	ld.w	$a3, $a0, 1728
	ld.w	$a4, $a0, 960
	ori	$a5, $zero, 2496
	ldx.w	$a5, $a0, $a5
	st.w	$a1, $a0, 1664
	add.d	$a1, $a3, $a2
	sub.d	$a2, $a2, $a3
	sub.d	$a3, $a4, $a5
	add.d	$a4, $a5, $a4
	add.d	$a5, $a4, $a1
	st.w	$a5, $a0, 192
	sub.d	$a1, $a1, $a4
	stptr.w	$a1, $a0, 2496
	add.d	$a1, $a3, $a2
	st.w	$a1, $a0, 960
	sub.d	$a1, $a2, $a3
	st.w	$a1, $a0, 1728
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	slli.d	$a2, $a1, 2
	addi.d	$a0, $sp, 380
	ldx.w	$a0, $a2, $a0
	alsl.d	$a1, $a1, $a1, 1
	slli.d	$a3, $a1, 7
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	add.d	$a4, $a1, $a3
	addi.d	$a1, $a0, -4
	ld.d	$a5, $sp, 208                   # 8-byte Folded Reload
	add.d	$a5, $a5, $a3
	addi.d	$a3, $sp, 372
	ldx.w	$a6, $a2, $a3
	sub.d	$a2, $t8, $a0
	ori	$a3, $zero, 1
	sll.w	$a2, $a3, $a2
	ori	$a3, $zero, 4
	sub.d	$a3, $a3, $a0
	slli.d	$a6, $a6, 6
	add.d	$a4, $a4, $a6
	add.d	$a5, $a5, $a6
	slli.d	$a6, $s4, 7
	ld.d	$a7, $sp, 176                   # 8-byte Folded Reload
	add.d	$a6, $a7, $a6
	ld.d	$a7, $sp, 168                   # 8-byte Folded Reload
	b	.LBB15_224
	.p2align	4, , 16
.LBB15_221:                             # %.split1336.split
                                        #   in Loop: Header=BB15_224 Depth=2
	ld.w	$t3, $a4, 0
	mul.d	$t3, $t3, $t5
	sll.w	$t3, $t3, $a1
	addi.w	$t3, $t3, 2
	srli.d	$t3, $t3, 2
	stptr.w	$t3, $t0, 3072
	ld.w	$t3, $a4, 0
	mul.d	$t3, $t3, $t4
	sll.w	$t3, $t3, $a1
	addi.w	$t3, $t3, 2
	srli.d	$t3, $t3, 2
	stptr.w	$t3, $t0, 3264
	ld.w	$t3, $a4, 0
	mul.d	$t1, $t3, $t1
	sll.w	$t1, $t1, $a1
	addi.w	$t1, $t1, 2
	srli.d	$t1, $t1, 2
	stptr.w	$t1, $t0, 3136
	ld.w	$t1, $a4, 0
.LBB15_222:                             # %.split1338.us
                                        #   in Loop: Header=BB15_224 Depth=2
	mul.d	$t1, $t1, $t2
	sll.w	$t1, $t1, $a1
.LBB15_223:                             # %.split1338.us
                                        #   in Loop: Header=BB15_224 Depth=2
	addi.w	$t1, $t1, 2
	srli.d	$t1, $t1, 2
	addi.d	$a7, $a7, 768
	stptr.w	$t1, $t0, 3200
	beqz	$a7, .LBB15_165
.LBB15_224:                             # %.preheader1181
                                        #   Parent Loop BB15_166 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$t0, $a6, $a7
	ldx.w	$t1, $t0, $s0
	ldx.w	$t2, $t0, $s6
	ldx.w	$t4, $t0, $s3
	ldx.w	$t5, $t0, $s8
	add.d	$t6, $t2, $t1
	sub.d	$t2, $t1, $t2
	sub.d	$t3, $t4, $t5
	add.d	$t1, $t5, $t4
	add.d	$t5, $t1, $t6
	sub.d	$t4, $t6, $t1
	add.d	$t1, $t3, $t2
	blt	$t8, $a0, .LBB15_227
# %bb.225:                              # %.split1336.us
                                        #   in Loop: Header=BB15_224 Depth=2
	beqz	$t7, .LBB15_229
# %bb.226:                              # %.split1336.us.split.us
                                        #   in Loop: Header=BB15_224 Depth=2
	ld.w	$t6, $a5, 0
	mul.d	$t5, $t6, $t5
	add.d	$t5, $t5, $a2
	sra.w	$t5, $t5, $a3
	addi.w	$t5, $t5, 2
	srli.d	$t5, $t5, 2
	stptr.w	$t5, $t0, 3072
	ld.w	$t5, $a5, 0
	mul.d	$t4, $t5, $t4
	add.d	$t4, $t4, $a2
	sra.w	$t4, $t4, $a3
	addi.w	$t4, $t4, 2
	srli.d	$t4, $t4, 2
	stptr.w	$t4, $t0, 3264
	ld.w	$t4, $a5, 0
	mul.d	$t1, $t4, $t1
	add.d	$t1, $t1, $a2
	sra.w	$t1, $t1, $a3
	addi.w	$t1, $t1, 2
	srli.d	$t1, $t1, 2
	stptr.w	$t1, $t0, 3136
	ld.w	$t1, $a5, 0
	b	.LBB15_230
	.p2align	4, , 16
.LBB15_227:                             # %.split1336
                                        #   in Loop: Header=BB15_224 Depth=2
	sub.d	$t2, $t2, $t3
	beqz	$t7, .LBB15_221
# %bb.228:                              # %.split1336.split.us
                                        #   in Loop: Header=BB15_224 Depth=2
	ld.w	$t3, $a5, 0
	mul.d	$t3, $t3, $t5
	sll.w	$t3, $t3, $a1
	addi.w	$t3, $t3, 2
	srli.d	$t3, $t3, 2
	stptr.w	$t3, $t0, 3072
	ld.w	$t3, $a5, 0
	mul.d	$t3, $t3, $t4
	sll.w	$t3, $t3, $a1
	addi.w	$t3, $t3, 2
	srli.d	$t3, $t3, 2
	stptr.w	$t3, $t0, 3264
	ld.w	$t3, $a5, 0
	mul.d	$t1, $t3, $t1
	sll.w	$t1, $t1, $a1
	addi.w	$t1, $t1, 2
	srli.d	$t1, $t1, 2
	stptr.w	$t1, $t0, 3136
	ld.w	$t1, $a5, 0
	b	.LBB15_222
	.p2align	4, , 16
.LBB15_229:                             # %.split1336.us.split
                                        #   in Loop: Header=BB15_224 Depth=2
	ld.w	$t6, $a4, 0
	mul.d	$t5, $t6, $t5
	add.d	$t5, $t5, $a2
	sra.w	$t5, $t5, $a3
	addi.w	$t5, $t5, 2
	srli.d	$t5, $t5, 2
	stptr.w	$t5, $t0, 3072
	ld.w	$t5, $a4, 0
	mul.d	$t4, $t5, $t4
	add.d	$t4, $t4, $a2
	sra.w	$t4, $t4, $a3
	addi.w	$t4, $t4, 2
	srli.d	$t4, $t4, 2
	stptr.w	$t4, $t0, 3264
	ld.w	$t4, $a4, 0
	mul.d	$t1, $t4, $t1
	add.d	$t1, $t1, $a2
	sra.w	$t1, $t1, $a3
	addi.w	$t1, $t1, 2
	srli.d	$t1, $t1, 2
	stptr.w	$t1, $t0, 3136
	ld.w	$t1, $a4, 0
.LBB15_230:                             # %.split1338.us
                                        #   in Loop: Header=BB15_224 Depth=2
	sub.d	$t2, $t2, $t3
	mul.d	$t1, $t1, $t2
	add.d	$t1, $t1, $a2
	sra.w	$t1, $t1, $a3
	b	.LBB15_223
.LBB15_231:                             # %.split1298
                                        #   in Loop: Header=BB15_166 Depth=1
	sub.d	$t0, $t0, $t1
	beqz	$t5, .LBB15_237
# %bb.232:                              # %.split1298.split.us.preheader
                                        #   in Loop: Header=BB15_166 Depth=1
	ld.w	$t1, $a4, 0
	mul.d	$t1, $t3, $t1
	sll.w	$t1, $t1, $a5
	addi.w	$t1, $t1, 2
	srli.d	$t1, $t1, 2
	st.w	$t1, $a0, 256
	ld.w	$t1, $a4, 0
	mul.d	$t1, $t1, $t2
	sll.w	$t1, $t1, $a5
	addi.w	$t1, $t1, 2
	srli.d	$t1, $t1, 2
	st.w	$t1, $a0, 448
	ld.w	$t1, $a4, 0
	mul.d	$a7, $a7, $t1
	sll.w	$a7, $a7, $a5
	addi.w	$a7, $a7, 2
	srli.d	$a7, $a7, 2
	st.w	$a7, $a0, 320
	ld.w	$a7, $a4, 0
	b	.LBB15_238
.LBB15_233:                             # %.lr.ph1315.split.preheader
                                        #   in Loop: Header=BB15_166 Depth=1
	addi.d	$a2, $a2, -5
	bgeu	$a1, $s1, .LBB15_254
# %bb.234:                              #   in Loop: Header=BB15_166 Depth=1
	move	$a3, $zero
	b	.LBB15_257
.LBB15_235:                             # %.split1298.us.split.preheader
                                        #   in Loop: Header=BB15_166 Depth=1
	ld.w	$t4, $a1, 0
	mul.d	$t3, $t3, $t4
	add.d	$t3, $t3, $a3
	sra.w	$t3, $t3, $a2
	addi.w	$t3, $t3, 2
	srli.d	$t3, $t3, 2
	st.w	$t3, $a0, 256
	ld.w	$t3, $a1, 0
	mul.d	$t2, $t3, $t2
	add.d	$t2, $t2, $a3
	sra.w	$t2, $t2, $a2
	addi.w	$t2, $t2, 2
	srli.d	$t2, $t2, 2
	st.w	$t2, $a0, 448
	ld.w	$t2, $a1, 0
	mul.d	$a7, $a7, $t2
	add.d	$a7, $a7, $a3
	sra.w	$a7, $a7, $a2
	addi.w	$a7, $a7, 2
	srli.d	$a7, $a7, 2
	st.w	$a7, $a0, 320
	ld.w	$a7, $a1, 0
.LBB15_236:                             # %.split1300.us
                                        #   in Loop: Header=BB15_166 Depth=1
	sub.d	$t0, $t0, $t1
	mul.d	$a7, $a7, $t0
	add.d	$a7, $a7, $a3
	sra.w	$a7, $a7, $a2
	b	.LBB15_239
.LBB15_237:                             # %.split1298.split.preheader
                                        #   in Loop: Header=BB15_166 Depth=1
	ld.w	$t1, $a1, 0
	mul.d	$t1, $t3, $t1
	sll.w	$t1, $t1, $a5
	addi.w	$t1, $t1, 2
	srli.d	$t1, $t1, 2
	st.w	$t1, $a0, 256
	ld.w	$t1, $a1, 0
	mul.d	$t1, $t1, $t2
	sll.w	$t1, $t1, $a5
	addi.w	$t1, $t1, 2
	srli.d	$t1, $t1, 2
	st.w	$t1, $a0, 448
	ld.w	$t1, $a1, 0
	mul.d	$a7, $a7, $t1
	sll.w	$a7, $a7, $a5
	addi.w	$a7, $a7, 2
	srli.d	$a7, $a7, 2
	st.w	$a7, $a0, 320
	ld.w	$a7, $a1, 0
.LBB15_238:                             # %.split1300.us
                                        #   in Loop: Header=BB15_166 Depth=1
	mul.d	$a7, $a7, $t0
	sll.w	$a7, $a7, $a5
.LBB15_239:                             # %.split1300.us
                                        #   in Loop: Header=BB15_166 Depth=1
	vsub.w	$vr0, $vr0, $vr1
	addi.w	$a7, $a7, 2
	srli.d	$a7, $a7, 2
	st.w	$a7, $a0, 384
	vpickve2gr.w	$a7, $vr0, 0
	vpickve2gr.w	$t2, $vr0, 1
	vpickve2gr.w	$t0, $vr0, 2
	vpickve2gr.w	$t3, $vr0, 3
	add.d	$t4, $t0, $a7
	sub.d	$t0, $a7, $t0
	sub.d	$t1, $t2, $t3
	add.d	$a7, $t3, $t2
	add.d	$t3, $a7, $t4
	sub.d	$t2, $t4, $a7
	add.d	$a7, $t1, $t0
	ori	$t4, $zero, 24
	bge	$a6, $t4, .LBB15_242
# %bb.240:                              # %.split1298.us.1
                                        #   in Loop: Header=BB15_166 Depth=1
	beqz	$t5, .LBB15_244
# %bb.241:                              # %.split1298.us.split.us.preheader.1
                                        #   in Loop: Header=BB15_166 Depth=1
	ld.w	$a1, $a4, 0
	mul.d	$a1, $t3, $a1
	add.d	$a1, $a1, $a3
	sra.w	$a1, $a1, $a2
	addi.w	$a1, $a1, 2
	srli.d	$a1, $a1, 2
	st.w	$a1, $a0, 1024
	ld.w	$a1, $a4, 0
	mul.d	$a1, $a1, $t2
	add.d	$a1, $a1, $a3
	sra.w	$a1, $a1, $a2
	addi.w	$a1, $a1, 2
	srli.d	$a1, $a1, 2
	st.w	$a1, $a0, 1216
	ld.w	$a1, $a4, 0
	mul.d	$a1, $a7, $a1
	add.d	$a1, $a1, $a3
	sra.w	$a1, $a1, $a2
	addi.w	$a1, $a1, 2
	srli.d	$a1, $a1, 2
	st.w	$a1, $a0, 1088
	ld.w	$a1, $a4, 0
	b	.LBB15_245
.LBB15_242:                             # %.split1298.1
                                        #   in Loop: Header=BB15_166 Depth=1
	sub.d	$a2, $t0, $t1
	beqz	$t5, .LBB15_246
# %bb.243:                              # %.split1298.split.us.preheader.1
                                        #   in Loop: Header=BB15_166 Depth=1
	ld.w	$a1, $a4, 0
	mul.d	$a1, $t3, $a1
	sll.w	$a1, $a1, $a5
	addi.w	$a1, $a1, 2
	srli.d	$a1, $a1, 2
	st.w	$a1, $a0, 1024
	ld.w	$a1, $a4, 0
	mul.d	$a1, $a1, $t2
	sll.w	$a1, $a1, $a5
	addi.w	$a1, $a1, 2
	srli.d	$a1, $a1, 2
	st.w	$a1, $a0, 1216
	ld.w	$a1, $a4, 0
	mul.d	$a1, $a7, $a1
	sll.w	$a1, $a1, $a5
	addi.w	$a1, $a1, 2
	srli.d	$a1, $a1, 2
	st.w	$a1, $a0, 1088
	ld.w	$a1, $a4, 0
	b	.LBB15_247
.LBB15_244:                             # %.split1298.us.split.preheader.1
                                        #   in Loop: Header=BB15_166 Depth=1
	ld.w	$a4, $a1, 0
	mul.d	$a4, $t3, $a4
	add.d	$a4, $a4, $a3
	sra.w	$a4, $a4, $a2
	addi.w	$a4, $a4, 2
	srli.d	$a4, $a4, 2
	st.w	$a4, $a0, 1024
	ld.w	$a4, $a1, 0
	mul.d	$a4, $a4, $t2
	add.d	$a4, $a4, $a3
	sra.w	$a4, $a4, $a2
	addi.w	$a4, $a4, 2
	srli.d	$a4, $a4, 2
	st.w	$a4, $a0, 1216
	ld.w	$a4, $a1, 0
	mul.d	$a4, $a7, $a4
	add.d	$a4, $a4, $a3
	sra.w	$a4, $a4, $a2
	addi.w	$a4, $a4, 2
	srli.d	$a4, $a4, 2
	st.w	$a4, $a0, 1088
	ld.w	$a1, $a1, 0
.LBB15_245:                             # %.split1300.us.1
                                        #   in Loop: Header=BB15_166 Depth=1
	sub.d	$a4, $t0, $t1
	mul.d	$a1, $a1, $a4
	add.d	$a1, $a1, $a3
	sra.w	$a1, $a1, $a2
	b	.LBB15_248
.LBB15_246:                             # %.split1298.split.preheader.1
                                        #   in Loop: Header=BB15_166 Depth=1
	ld.w	$a3, $a1, 0
	mul.d	$a3, $t3, $a3
	sll.w	$a3, $a3, $a5
	addi.w	$a3, $a3, 2
	srli.d	$a3, $a3, 2
	st.w	$a3, $a0, 1024
	ld.w	$a3, $a1, 0
	mul.d	$a3, $a3, $t2
	sll.w	$a3, $a3, $a5
	addi.w	$a3, $a3, 2
	srli.d	$a3, $a3, 2
	st.w	$a3, $a0, 1216
	ld.w	$a3, $a1, 0
	mul.d	$a3, $a7, $a3
	sll.w	$a3, $a3, $a5
	addi.w	$a3, $a3, 2
	srli.d	$a3, $a3, 2
	st.w	$a3, $a0, 1088
	ld.w	$a1, $a1, 0
.LBB15_247:                             # %.split1300.us.1
                                        #   in Loop: Header=BB15_166 Depth=1
	mul.d	$a1, $a1, $a2
	sll.w	$a1, $a1, $a5
.LBB15_248:                             # %.split1300.us.1
                                        #   in Loop: Header=BB15_166 Depth=1
	addi.w	$a1, $a1, 2
	srli.d	$a1, $a1, 2
	st.w	$a1, $a0, 1152
	b	.LBB15_165
.LBB15_249:                             # %vector.ph
                                        #   in Loop: Header=BB15_166 Depth=1
	bstrpick.d	$a3, $a1, 30, 3
	slli.d	$a3, $a3, 3
	vreplgr2vr.w	$vr0, $a0
	vreplgr2vr.w	$vr1, $a2
	addi.d	$a4, $sp, 372
	move	$a5, $a3
	.p2align	4, , 16
.LBB15_250:                             # %vector.body
                                        #   Parent Loop BB15_166 Depth=1
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
	bnez	$a5, .LBB15_250
# %bb.251:                              # %middle.block
                                        #   in Loop: Header=BB15_166 Depth=1
	beq	$a3, $a1, .LBB15_163
.LBB15_252:                             # %.lr.ph1315.split.us.preheader1845
                                        #   in Loop: Header=BB15_166 Depth=1
	addi.d	$a4, $sp, 356
	alsl.d	$a4, $a3, $a4, 2
	sub.d	$a1, $a1, $a3
	.p2align	4, , 16
.LBB15_253:                             # %.lr.ph1315.split.us
                                        #   Parent Loop BB15_166 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a3, $a4, 0
	mul.d	$a3, $a0, $a3
	sra.w	$a3, $a3, $a2
	st.w	$a3, $a4, 0
	addi.d	$a1, $a1, -1
	addi.d	$a4, $a4, 4
	bnez	$a1, .LBB15_253
	b	.LBB15_163
.LBB15_254:                             # %vector.ph1740
                                        #   in Loop: Header=BB15_166 Depth=1
	bstrpick.d	$a3, $a1, 30, 3
	slli.d	$a3, $a3, 3
	vreplgr2vr.w	$vr0, $a0
	vreplgr2vr.w	$vr1, $a2
	addi.d	$a4, $sp, 372
	move	$a5, $a3
	.p2align	4, , 16
.LBB15_255:                             # %vector.body1747
                                        #   Parent Loop BB15_166 Depth=1
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
	bnez	$a5, .LBB15_255
# %bb.256:                              # %middle.block1752
                                        #   in Loop: Header=BB15_166 Depth=1
	beq	$a3, $a1, .LBB15_163
.LBB15_257:                             # %.lr.ph1315.split.preheader1846
                                        #   in Loop: Header=BB15_166 Depth=1
	addi.d	$a4, $sp, 356
	alsl.d	$a4, $a3, $a4, 2
	sub.d	$a1, $a1, $a3
	.p2align	4, , 16
.LBB15_258:                             # %.lr.ph1315.split
                                        #   Parent Loop BB15_166 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a3, $a4, 0
	mul.d	$a3, $a0, $a3
	sll.w	$a3, $a3, $a2
	st.w	$a3, $a4, 0
	addi.d	$a1, $a1, -1
	addi.d	$a4, $a4, 4
	bnez	$a1, .LBB15_258
	b	.LBB15_163
.LBB15_259:                             # %.loopexit1198
	ori	$a0, $zero, 31
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	blt	$a0, $a1, .LBB15_262
.LBB15_260:                             # %.loopexit1180
	ld.wu	$a0, $fp, 4
	ldptr.d	$a1, $fp, 5560
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $a1, $a0
	ld.d	$a0, $a0, 0
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
.LBB15_261:                             # %.loopexit1178
	ld.d	$s8, $sp, 568                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 576                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 584                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 592                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 600                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 608                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 616                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 624                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 632                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 640                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 648                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 656
	ret
.LBB15_262:                             # %.preheader1177
	ldptr.w	$a0, $fp, 5924
	blez	$a0, .LBB15_261
# %bb.263:                              # %.lr.ph1357
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	slli.d	$a1, $a1, 5
	pcalau12i	$a2, %pc_hi20(cofuv_blk_x)
	addi.d	$a2, $a2, %pc_lo12(cofuv_blk_x)
	add.d	$a2, $a2, $a1
	st.d	$a2, $sp, 232                   # 8-byte Folded Spill
	pcalau12i	$a2, %pc_hi20(cofuv_blk_y)
	addi.d	$a2, $a2, %pc_lo12(cofuv_blk_y)
	add.d	$a2, $a2, $a1
	st.d	$a2, $sp, 216                   # 8-byte Folded Spill
	pcalau12i	$a2, %pc_hi20(subblk_offset_y)
	addi.d	$a2, $a2, %pc_lo12(subblk_offset_y)
	add.d	$a2, $a2, $a1
	st.d	$a2, $sp, 208                   # 8-byte Folded Spill
	pcalau12i	$a2, %pc_hi20(subblk_offset_x)
	addi.d	$a2, $a2, %pc_lo12(subblk_offset_x)
	add.d	$a1, $a2, $a1
	st.d	$a1, $sp, 200                   # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(cbp_blk_chroma)
	addi.d	$a1, $a1, %pc_lo12(cbp_blk_chroma)
	st.d	$a1, $sp, 184                   # 8-byte Folded Spill
	move	$a4, $zero
	b	.LBB15_265
	.p2align	4, , 16
.LBB15_264:                             #   in Loop: Header=BB15_265 Depth=1
	ldptr.w	$a0, $fp, 5924
	ld.d	$a4, $sp, 240                   # 8-byte Folded Reload
	addi.d	$a4, $a4, 1
	bge	$a4, $a0, .LBB15_261
.LBB15_265:                             # =>This Loop Header: Depth=1
                                        #     Child Loop BB15_267 Depth 2
                                        #       Child Loop BB15_283 Depth 3
                                        #       Child Loop BB15_270 Depth 3
                                        #       Child Loop BB15_292 Depth 3
                                        #       Child Loop BB15_280 Depth 3
	move	$s8, $zero
	srai.d	$a0, $a0, 1
	slt	$a0, $a4, $a0
	xori	$a0, $a0, 1
	slli.d	$s6, $a0, 2
	addi.d	$a1, $sp, 372
	ldx.w	$a1, $s6, $a1
	alsl.d	$a2, $a0, $a0, 1
	slli.d	$a2, $a2, 7
	ld.d	$a3, $sp, 224                   # 8-byte Folded Reload
	add.d	$a2, $a3, $a2
	slli.d	$a1, $a1, 6
	add.d	$s0, $a2, $a1
	stptr.w	$a0, $fp, 5620
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	alsl.d	$a0, $a4, $a0, 2
	st.d	$a0, $sp, 272                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	alsl.d	$a0, $a4, $a0, 2
	st.d	$a0, $sp, 264                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	alsl.d	$a0, $a4, $a0, 2
	st.d	$a0, $sp, 256                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	alsl.d	$a0, $a4, $a0, 2
	st.d	$a0, $sp, 248                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	st.d	$a4, $sp, 240                   # 8-byte Folded Spill
	alsl.d	$s3, $a4, $a0, 2
	b	.LBB15_267
	.p2align	4, , 16
.LBB15_266:                             # %.loopexit
                                        #   in Loop: Header=BB15_267 Depth=2
	addi.d	$s8, $s8, 1
	ori	$a0, $zero, 4
	beq	$s8, $a0, .LBB15_264
.LBB15_267:                             #   Parent Loop BB15_265 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB15_283 Depth 3
                                        #       Child Loop BB15_270 Depth 3
                                        #       Child Loop BB15_292 Depth 3
                                        #       Child Loop BB15_280 Depth 3
	ld.d	$a0, $sp, 312                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(active_pps)
	ld.d	$a1, $sp, 272                   # 8-byte Folded Reload
	ldx.bu	$s2, $a1, $s8
	ld.w	$a0, $a0, 12
	ld.d	$a1, $sp, 264                   # 8-byte Folded Reload
	ldx.bu	$s1, $a1, $s8
	beqz	$a0, .LBB15_276
# %bb.268:                              # %switch.lookup1802
                                        #   in Loop: Header=BB15_267 Depth=2
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ldx.bu	$a0, $a0, $s8
	srli.d	$a0, $a0, 2
	stptr.w	$a0, $fp, 5612
	ld.d	$a0, $sp, 248                   # 8-byte Folded Reload
	ldx.bu	$a0, $a0, $s8
	ld.w	$a1, $s5, 40
	srli.d	$a0, $a0, 2
	stptr.w	$a0, $fp, 5608
	ori	$a0, $zero, 7
	st.w	$a0, $sp, 544
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
	st.w	$a1, $sp, 520
	stptr.w	$a0, $fp, 5616
	alsl.d	$a0, $s2, $s2, 1
	slli.d	$a0, $a0, 8
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	add.d	$a0, $a1, $a0
	slli.d	$a1, $s1, 6
	add.d	$s1, $a0, $a1
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	beqz	$a0, .LBB15_282
# %bb.269:                              # %.preheader1173.preheader
                                        #   in Loop: Header=BB15_267 Depth=2
	move	$s4, $zero
	addi.d	$s2, $zero, -1
	.p2align	4, , 16
.LBB15_270:                             # %.preheader1173
                                        #   Parent Loop BB15_265 Depth=1
                                        #     Parent Loop BB15_267 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$a0, $sp, 520
	ld.d	$a1, $sp, 312                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(active_pps)
	ld.d	$a2, $sp, 304                   # 8-byte Folded Reload
	ld.d	$a2, $a2, 40
	slli.d	$a0, $a0, 2
	ld.d	$a3, $sp, 296                   # 8-byte Folded Reload
	ldx.w	$a0, $a3, $a0
	ld.w	$a1, $a1, 12
	ori	$a3, $zero, 56
	mul.d	$a0, $a0, $a3
	add.d	$a2, $a2, $a0
	beqz	$a1, .LBB15_272
# %bb.271:                              #   in Loop: Header=BB15_270 Depth=3
	ld.d	$a0, $a2, 0
	ld.w	$a0, $a0, 24
	beqz	$a0, .LBB15_273
.LBB15_272:                             #   in Loop: Header=BB15_270 Depth=3
	pcalau12i	$a0, %got_pc_hi20(linfo_levrun_inter)
	ld.d	$a0, $a0, %got_pc_lo12(linfo_levrun_inter)
	st.d	$a0, $sp, 552
	b	.LBB15_274
	.p2align	4, , 16
.LBB15_273:                             #   in Loop: Header=BB15_270 Depth=3
	pcalau12i	$a0, %got_pc_hi20(readRunLevel_CABAC)
	ld.d	$a0, $a0, %got_pc_lo12(readRunLevel_CABAC)
	st.d	$a0, $sp, 560
.LBB15_274:                             #   in Loop: Header=BB15_270 Depth=3
	ld.d	$a3, $a2, 48
	addi.d	$a0, $sp, 520
	move	$a1, $fp
	jirl	$ra, $a3, 0
	ld.w	$a0, $sp, 524
	beqz	$a0, .LBB15_266
# %bb.275:                              #   in Loop: Header=BB15_270 Depth=3
	ldx.bu	$a1, $s3, $s8
	ld.d	$a2, $s5, 304
	ld.w	$a3, $sp, 528
	ori	$a4, $zero, 1
	sll.d	$a1, $a4, $a1
	or	$a1, $a1, $a2
	st.d	$a1, $s5, 304
	add.d	$a1, $s4, $a3
	addi.w	$s4, $a1, 1
	alsl.d	$a1, $s4, $s7, 1
	slli.d	$a2, $s4, 1
	ld.bu	$a1, $a1, 1
	ldx.bu	$a2, $s7, $a2
	alsl.d	$a1, $a1, $s1, 4
	slli.d	$a2, $a2, 2
	addi.w	$s2, $s2, 1
	stx.w	$a0, $a1, $a2
	ori	$a0, $zero, 15
	bltu	$s2, $a0, .LBB15_270
	b	.LBB15_266
	.p2align	4, , 16
.LBB15_276:                             #   in Loop: Header=BB15_267 Depth=2
	ori	$a2, $zero, 7
	addi.d	$a5, $sp, 456
	addi.d	$a6, $sp, 392
	addi.d	$a7, $sp, 388
	move	$a0, $fp
	move	$a3, $s2
	move	$a4, $s1
	pcaddu18i	$ra, %call36(readCoeff4x4_CAVLC)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 388
	ld.d	$a1, $sp, 192                   # 8-byte Folded Reload
	beqz	$a1, .LBB15_289
# %bb.277:                              # %.preheader
                                        #   in Loop: Header=BB15_267 Depth=2
	blez	$a0, .LBB15_266
# %bb.278:                              # %.lr.ph1354
                                        #   in Loop: Header=BB15_267 Depth=2
	move	$a1, $zero
	alsl.d	$a2, $s2, $s2, 1
	slli.d	$a2, $a2, 8
	ld.d	$a3, $sp, 96                    # 8-byte Folded Reload
	add.d	$a2, $a3, $a2
	slli.d	$a3, $s1, 6
	add.d	$a2, $a2, $a3
	addi.d	$a3, $sp, 456
	addi.d	$a4, $sp, 392
	b	.LBB15_280
	.p2align	4, , 16
.LBB15_279:                             #   in Loop: Header=BB15_280 Depth=3
	addi.d	$a3, $a3, 4
	addi.d	$a0, $a0, -1
	addi.d	$a4, $a4, 4
	beqz	$a0, .LBB15_266
.LBB15_280:                             #   Parent Loop BB15_265 Depth=1
                                        #     Parent Loop BB15_267 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$a5, $a3, 0
	beqz	$a5, .LBB15_279
# %bb.281:                              #   in Loop: Header=BB15_280 Depth=3
	ldx.bu	$a6, $s3, $s8
	ld.d	$a7, $s5, 304
	ld.w	$t0, $a4, 0
	ori	$t1, $zero, 1
	sll.d	$a6, $t1, $a6
	or	$a6, $a6, $a7
	st.d	$a6, $s5, 304
	add.d	$a1, $a1, $t0
	addi.w	$a1, $a1, 1
	alsl.d	$a6, $a1, $s7, 1
	slli.d	$a7, $a1, 1
	ld.bu	$a6, $a6, 1
	ldx.bu	$a7, $s7, $a7
	alsl.d	$a6, $a6, $a2, 4
	slli.d	$a7, $a7, 2
	stx.w	$a5, $a6, $a7
	b	.LBB15_279
	.p2align	4, , 16
.LBB15_282:                             # %.preheader1175.preheader
                                        #   in Loop: Header=BB15_267 Depth=2
	move	$s4, $zero
	addi.d	$s2, $zero, -1
	.p2align	4, , 16
.LBB15_283:                             # %.preheader1175
                                        #   Parent Loop BB15_265 Depth=1
                                        #     Parent Loop BB15_267 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$a0, $sp, 520
	ld.d	$a1, $sp, 312                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(active_pps)
	ld.d	$a2, $sp, 304                   # 8-byte Folded Reload
	ld.d	$a2, $a2, 40
	slli.d	$a0, $a0, 2
	ld.d	$a3, $sp, 296                   # 8-byte Folded Reload
	ldx.w	$a0, $a3, $a0
	ld.w	$a1, $a1, 12
	ori	$a3, $zero, 56
	mul.d	$a0, $a0, $a3
	add.d	$a2, $a2, $a0
	beqz	$a1, .LBB15_285
# %bb.284:                              #   in Loop: Header=BB15_283 Depth=3
	ld.d	$a0, $a2, 0
	ld.w	$a0, $a0, 24
	beqz	$a0, .LBB15_286
.LBB15_285:                             #   in Loop: Header=BB15_283 Depth=3
	pcalau12i	$a0, %got_pc_hi20(linfo_levrun_inter)
	ld.d	$a0, $a0, %got_pc_lo12(linfo_levrun_inter)
	st.d	$a0, $sp, 552
	b	.LBB15_287
	.p2align	4, , 16
.LBB15_286:                             #   in Loop: Header=BB15_283 Depth=3
	pcalau12i	$a0, %got_pc_hi20(readRunLevel_CABAC)
	ld.d	$a0, $a0, %got_pc_lo12(readRunLevel_CABAC)
	st.d	$a0, $sp, 560
.LBB15_287:                             #   in Loop: Header=BB15_283 Depth=3
	ld.d	$a3, $a2, 48
	addi.d	$a0, $sp, 520
	move	$a1, $fp
	jirl	$ra, $a3, 0
	ld.w	$a0, $sp, 524
	beqz	$a0, .LBB15_266
# %bb.288:                              #   in Loop: Header=BB15_283 Depth=3
	ldx.bu	$a1, $s3, $s8
	ld.d	$a2, $s5, 304
	ld.w	$a3, $sp, 528
	ori	$a4, $zero, 1
	sll.d	$a1, $a4, $a1
	or	$a1, $a1, $a2
	st.d	$a1, $s5, 304
	add.d	$a1, $s4, $a3
	addi.w	$s4, $a1, 1
	alsl.d	$a1, $s4, $s7, 1
	slli.d	$a2, $s4, 1
	ld.bu	$a1, $a1, 1
	ldx.bu	$a2, $s7, $a2
	alsl.d	$a3, $a1, $s0, 4
	slli.d	$a2, $a2, 2
	ldx.w	$a3, $a3, $a2
	addi.d	$a4, $sp, 380
	ldx.wu	$a4, $s6, $a4
	mul.d	$a0, $a3, $a0
	sll.w	$a0, $a0, $a4
	addi.w	$a0, $a0, 8
	srli.d	$a0, $a0, 4
	alsl.d	$a1, $a1, $s1, 4
	addi.w	$s2, $s2, 1
	stx.w	$a0, $a1, $a2
	ori	$a0, $zero, 15
	bltu	$s2, $a0, .LBB15_283
	b	.LBB15_266
.LBB15_289:                             # %.preheader1171
                                        #   in Loop: Header=BB15_267 Depth=2
	blez	$a0, .LBB15_266
# %bb.290:                              # %.lr.ph1351
                                        #   in Loop: Header=BB15_267 Depth=2
	move	$a1, $zero
	alsl.d	$a2, $s2, $s2, 1
	slli.d	$a2, $a2, 8
	ld.d	$a3, $sp, 96                    # 8-byte Folded Reload
	add.d	$a2, $a3, $a2
	slli.d	$a3, $s1, 6
	add.d	$a2, $a2, $a3
	addi.d	$a3, $sp, 456
	addi.d	$a4, $sp, 392
	b	.LBB15_292
	.p2align	4, , 16
.LBB15_291:                             #   in Loop: Header=BB15_292 Depth=3
	addi.d	$a3, $a3, 4
	addi.d	$a0, $a0, -1
	addi.d	$a4, $a4, 4
	beqz	$a0, .LBB15_266
.LBB15_292:                             #   Parent Loop BB15_265 Depth=1
                                        #     Parent Loop BB15_267 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$a5, $a3, 0
	beqz	$a5, .LBB15_291
# %bb.293:                              #   in Loop: Header=BB15_292 Depth=3
	ldx.bu	$a6, $s3, $s8
	ld.d	$a7, $s5, 304
	ld.w	$t0, $a4, 0
	ori	$t1, $zero, 1
	sll.d	$a6, $t1, $a6
	or	$a6, $a6, $a7
	st.d	$a6, $s5, 304
	add.d	$a1, $a1, $t0
	addi.w	$a1, $a1, 1
	alsl.d	$a6, $a1, $s7, 1
	slli.d	$a7, $a1, 1
	ld.bu	$a6, $a6, 1
	ldx.bu	$a7, $s7, $a7
	alsl.d	$t0, $a6, $s0, 4
	slli.d	$a7, $a7, 2
	ldx.w	$t0, $t0, $a7
	addi.d	$t1, $sp, 380
	ldx.wu	$t1, $s6, $t1
	mul.d	$a5, $t0, $a5
	sll.w	$a5, $a5, $t1
	addi.w	$a5, $a5, 8
	srli.d	$a5, $a5, 4
	alsl.d	$a6, $a6, $a2, 4
	stx.w	$a5, $a6, $a7
	b	.LBB15_291
.LBB15_294:
	add.d	$a2, $a0, $a2
	ld.d	$a3, $a2, 48
	addi.d	$a0, $sp, 520
	move	$a1, $fp
	jirl	$ra, $a3, 0
.LBB15_295:
	ld.w	$a1, $sp, 524
	ld.w	$a0, $s5, 40
	st.w	$a1, $s5, 396
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
	pcalau12i	$a1, %pc_hi20(active_pps)
	ld.d	$a1, $a1, %pc_lo12(active_pps)
	ld.w	$a1, $a1, 12
	ori	$a3, $zero, 1
	move	$s0, $a2
	move	$fp, $a0
	bne	$a1, $a3, .LBB16_12
# %bb.1:
	move	$s1, $zero
	ori	$a0, $zero, 8
	st.w	$a0, $sp, 28
	addi.d	$a0, $fp, 2047
	addi.d	$s2, $a0, 361
	ori	$s3, $zero, 16
	.p2align	4, , 16
.LBB16_2:                               # %.preheader85
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a0, $s1, 31, 2
	alsl.d	$a0, $a0, $a0, 1
	slli.d	$a0, $a0, 8
	add.d	$s5, $s2, $a0
	ld.d	$a1, $s0, 0
	andi	$a0, $s1, 3
	alsl.d	$s4, $a0, $s5, 4
	slli.d	$s6, $a0, 4
	addi.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(readIPCMBytes_CABAC)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 20
	ld.d	$a1, $s0, 0
	stx.w	$a0, $s5, $s6
	addi.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(readIPCMBytes_CABAC)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 20
	ld.d	$a1, $s0, 0
	st.w	$a0, $s4, 4
	addi.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(readIPCMBytes_CABAC)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 20
	ld.d	$a1, $s0, 0
	st.w	$a0, $s4, 8
	addi.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(readIPCMBytes_CABAC)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 20
	ld.d	$a1, $s0, 0
	st.w	$a0, $s4, 12
	addi.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(readIPCMBytes_CABAC)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 20
	ld.d	$a1, $s0, 0
	st.w	$a0, $s4, 64
	addi.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(readIPCMBytes_CABAC)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 20
	ld.d	$a1, $s0, 0
	st.w	$a0, $s4, 68
	addi.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(readIPCMBytes_CABAC)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 20
	ld.d	$a1, $s0, 0
	st.w	$a0, $s4, 72
	addi.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(readIPCMBytes_CABAC)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 20
	ld.d	$a1, $s0, 0
	st.w	$a0, $s4, 76
	addi.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(readIPCMBytes_CABAC)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 20
	ld.d	$a1, $s0, 0
	st.w	$a0, $s4, 128
	addi.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(readIPCMBytes_CABAC)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 20
	ld.d	$a1, $s0, 0
	st.w	$a0, $s4, 132
	addi.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(readIPCMBytes_CABAC)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 20
	ld.d	$a1, $s0, 0
	st.w	$a0, $s4, 136
	addi.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(readIPCMBytes_CABAC)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 20
	ld.d	$a1, $s0, 0
	st.w	$a0, $s4, 140
	addi.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(readIPCMBytes_CABAC)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 20
	ld.d	$a1, $s0, 0
	st.w	$a0, $s4, 192
	addi.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(readIPCMBytes_CABAC)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 20
	ld.d	$a1, $s0, 0
	st.w	$a0, $s4, 196
	addi.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(readIPCMBytes_CABAC)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 20
	ld.d	$a1, $s0, 0
	st.w	$a0, $s4, 200
	addi.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(readIPCMBytes_CABAC)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 20
	addi.w	$s1, $s1, 1
	st.w	$a0, $s4, 204
	bne	$s1, $s3, .LBB16_2
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
	blez	$a0, .LBB16_33
# %bb.5:                                # %.preheader83.lr.ph
	ldptr.w	$a1, $fp, 5932
	blez	$a1, .LBB16_26
# %bb.6:                                # %.preheader83.preheader
	move	$s1, $zero
	lu12i.w	$a2, 1
	ori	$s2, $a2, 1840
	b	.LBB16_9
	.p2align	4, , 16
.LBB16_7:                               # %._crit_edge107.loopexit
                                        #   in Loop: Header=BB16_9 Depth=1
	ldx.w	$a0, $fp, $s2
.LBB16_8:                               # %._crit_edge107
                                        #   in Loop: Header=BB16_9 Depth=1
	addi.w	$s1, $s1, 1
	bge	$s1, $a0, .LBB16_25
.LBB16_9:                               # %.preheader83
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB16_11 Depth 2
	blez	$a1, .LBB16_8
# %bb.10:                               # %.lr.ph106
                                        #   in Loop: Header=BB16_9 Depth=1
	move	$s3, $zero
	bstrpick.d	$a0, $s1, 31, 2
	alsl.d	$a0, $a0, $a0, 1
	slli.d	$a0, $a0, 8
	add.d	$s4, $fp, $a0
	andi	$s5, $s1, 3
	.p2align	4, , 16
.LBB16_11:                              #   Parent Loop BB16_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a1, $s0, 0
	addi.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(readIPCMBytes_CABAC)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 20
	bstrpick.d	$a1, $s3, 31, 2
	slli.d	$a1, $a1, 6
	add.d	$a1, $s4, $a1
	alsl.d	$a1, $s5, $a1, 4
	andi	$a2, $s3, 3
	alsl.d	$a1, $a2, $a1, 2
	stptr.w	$a0, $a1, 2664
	ldptr.w	$a1, $fp, 5932
	addi.w	$s3, $s3, 1
	blt	$s3, $a1, .LBB16_11
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
	st.w	$a0, $sp, 28
	addi.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(readSyntaxElement_FLC)
	jirl	$ra, $ra, 0
.LBB16_14:
	lu12i.w	$s1, 1
	ori	$a0, $s1, 1780
	ldx.w	$a0, $fp, $a0
	move	$s2, $zero
	st.w	$a0, $sp, 28
	addi.d	$a0, $fp, 2047
	addi.d	$s3, $a0, 361
	ori	$s4, $zero, 16
	.p2align	4, , 16
.LBB16_15:                              # %.preheader91
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a0, $s2, 31, 2
	alsl.d	$a0, $a0, $a0, 1
	slli.d	$a0, $a0, 8
	add.d	$s6, $s3, $a0
	ld.d	$a1, $s0, 0
	andi	$a0, $s2, 3
	alsl.d	$s5, $a0, $s6, 4
	slli.d	$s7, $a0, 4
	addi.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(readSyntaxElement_FLC)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 20
	ld.d	$a1, $s0, 0
	stx.w	$a0, $s6, $s7
	addi.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(readSyntaxElement_FLC)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 20
	ld.d	$a1, $s0, 0
	st.w	$a0, $s5, 4
	addi.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(readSyntaxElement_FLC)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 20
	ld.d	$a1, $s0, 0
	st.w	$a0, $s5, 8
	addi.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(readSyntaxElement_FLC)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 20
	ld.d	$a1, $s0, 0
	st.w	$a0, $s5, 12
	addi.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(readSyntaxElement_FLC)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 20
	ld.d	$a1, $s0, 0
	st.w	$a0, $s5, 64
	addi.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(readSyntaxElement_FLC)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 20
	ld.d	$a1, $s0, 0
	st.w	$a0, $s5, 68
	addi.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(readSyntaxElement_FLC)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 20
	ld.d	$a1, $s0, 0
	st.w	$a0, $s5, 72
	addi.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(readSyntaxElement_FLC)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 20
	ld.d	$a1, $s0, 0
	st.w	$a0, $s5, 76
	addi.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(readSyntaxElement_FLC)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 20
	ld.d	$a1, $s0, 0
	st.w	$a0, $s5, 128
	addi.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(readSyntaxElement_FLC)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 20
	ld.d	$a1, $s0, 0
	st.w	$a0, $s5, 132
	addi.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(readSyntaxElement_FLC)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 20
	ld.d	$a1, $s0, 0
	st.w	$a0, $s5, 136
	addi.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(readSyntaxElement_FLC)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 20
	ld.d	$a1, $s0, 0
	st.w	$a0, $s5, 140
	addi.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(readSyntaxElement_FLC)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 20
	ld.d	$a1, $s0, 0
	st.w	$a0, $s5, 192
	addi.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(readSyntaxElement_FLC)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 20
	ld.d	$a1, $s0, 0
	st.w	$a0, $s5, 196
	addi.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(readSyntaxElement_FLC)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 20
	ld.d	$a1, $s0, 0
	st.w	$a0, $s5, 200
	addi.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(readSyntaxElement_FLC)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 20
	addi.w	$s2, $s2, 1
	st.w	$a0, $s5, 204
	bne	$s2, $s4, .LBB16_15
# %bb.16:
	ori	$a0, $s1, 1784
	ldx.w	$a0, $fp, $a0
	st.w	$a0, $sp, 28
	pcalau12i	$a0, %got_pc_hi20(dec_picture)
	ld.d	$a0, $a0, %got_pc_lo12(dec_picture)
	ld.d	$a0, $a0, 0
	lu12i.w	$a1, 77
	ori	$a1, $a1, 1652
	ldx.w	$a0, $a0, $a1
	beqz	$a0, .LBB16_38
# %bb.17:                               # %.preheader90
	ldptr.w	$a0, $fp, 5936
	blez	$a0, .LBB16_38
# %bb.18:                               # %.preheader89.lr.ph
	ldptr.w	$a1, $fp, 5932
	blez	$a1, .LBB16_40
# %bb.19:                               # %.preheader89.preheader
	move	$s2, $zero
	ori	$s3, $s1, 1840
	b	.LBB16_22
	.p2align	4, , 16
.LBB16_20:                              # %._crit_edge.loopexit
                                        #   in Loop: Header=BB16_22 Depth=1
	ldx.w	$a0, $fp, $s3
.LBB16_21:                              # %._crit_edge
                                        #   in Loop: Header=BB16_22 Depth=1
	addi.w	$s2, $s2, 1
	bge	$s2, $a0, .LBB16_39
.LBB16_22:                              # %.preheader89
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB16_24 Depth 2
	blez	$a1, .LBB16_21
# %bb.23:                               # %.lr.ph
                                        #   in Loop: Header=BB16_22 Depth=1
	move	$s4, $zero
	bstrpick.d	$a0, $s2, 31, 2
	alsl.d	$a0, $a0, $a0, 1
	slli.d	$a0, $a0, 8
	add.d	$s5, $fp, $a0
	andi	$s6, $s2, 3
	.p2align	4, , 16
.LBB16_24:                              #   Parent Loop BB16_22 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a1, $s0, 0
	addi.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(readSyntaxElement_FLC)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 20
	bstrpick.d	$a1, $s4, 31, 2
	slli.d	$a1, $a1, 6
	add.d	$a1, $s5, $a1
	alsl.d	$a1, $s6, $a1, 4
	andi	$a2, $s4, 3
	alsl.d	$a1, $a2, $a1, 2
	stptr.w	$a0, $a1, 2664
	ldptr.w	$a1, $fp, 5932
	addi.w	$s4, $s4, 1
	blt	$s4, $a1, .LBB16_24
	b	.LBB16_20
.LBB16_25:                              # %.preheader82
	blez	$a0, .LBB16_33
.LBB16_26:                              # %.preheader.lr.ph
	ldptr.w	$a1, $fp, 5932
	blez	$a1, .LBB16_33
# %bb.27:                               # %.preheader.preheader
	move	$s1, $zero
	lu12i.w	$a2, 1
	ori	$s2, $a2, 1840
	b	.LBB16_29
	.p2align	4, , 16
.LBB16_28:                              # %._crit_edge111
                                        #   in Loop: Header=BB16_29 Depth=1
	addi.w	$s1, $s1, 1
	bge	$s1, $a0, .LBB16_33
.LBB16_29:                              # %.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB16_31 Depth 2
	blez	$a1, .LBB16_28
# %bb.30:                               # %.lr.ph110
                                        #   in Loop: Header=BB16_29 Depth=1
	move	$s3, $zero
	bstrpick.d	$a0, $s1, 31, 2
	alsl.d	$a0, $a0, $a0, 1
	slli.d	$a0, $a0, 8
	add.d	$s4, $fp, $a0
	andi	$s5, $s1, 3
	.p2align	4, , 16
.LBB16_31:                              #   Parent Loop BB16_29 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a1, $s0, 0
	addi.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(readIPCMBytes_CABAC)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 20
	bstrpick.d	$a1, $s3, 31, 2
	slli.d	$a1, $a1, 6
	add.d	$a1, $s4, $a1
	alsl.d	$a1, $s5, $a1, 4
	andi	$a2, $s3, 3
	alsl.d	$a1, $a2, $a1, 2
	stptr.w	$a0, $a1, 4200
	ldptr.w	$a1, $fp, 5932
	addi.w	$s3, $s3, 1
	blt	$s3, $a1, .LBB16_31
# %bb.32:                               # %._crit_edge111.loopexit
                                        #   in Loop: Header=BB16_29 Depth=1
	ldx.w	$a0, $fp, $s2
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
	blez	$a0, .LBB16_38
.LBB16_40:                              # %.preheader86.lr.ph
	ldptr.w	$a1, $fp, 5932
	blez	$a1, .LBB16_38
# %bb.41:                               # %.preheader86.preheader
	move	$s2, $zero
	ori	$s1, $s1, 1840
	b	.LBB16_44
	.p2align	4, , 16
.LBB16_42:                              # %._crit_edge99.loopexit
                                        #   in Loop: Header=BB16_44 Depth=1
	ldx.w	$a0, $fp, $s1
.LBB16_43:                              # %._crit_edge99
                                        #   in Loop: Header=BB16_44 Depth=1
	addi.w	$s2, $s2, 1
	bge	$s2, $a0, .LBB16_38
.LBB16_44:                              # %.preheader86
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB16_46 Depth 2
	blez	$a1, .LBB16_43
# %bb.45:                               # %.lr.ph98
                                        #   in Loop: Header=BB16_44 Depth=1
	move	$s3, $zero
	bstrpick.d	$a0, $s2, 31, 2
	alsl.d	$a0, $a0, $a0, 1
	slli.d	$a0, $a0, 8
	add.d	$s4, $fp, $a0
	andi	$s5, $s2, 3
	.p2align	4, , 16
.LBB16_46:                              #   Parent Loop BB16_44 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a1, $s0, 0
	addi.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(readSyntaxElement_FLC)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 20
	bstrpick.d	$a1, $s3, 31, 2
	slli.d	$a1, $a1, 6
	add.d	$a1, $s4, $a1
	alsl.d	$a1, $s5, $a1, 4
	andi	$a2, $s3, 3
	alsl.d	$a1, $a2, $a1, 2
	stptr.w	$a0, $a1, 4200
	ldptr.w	$a1, $fp, 5932
	addi.w	$s3, $s3, 1
	blt	$s3, $a1, .LBB16_46
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
	ldptr.d	$a0, $a0, 5600
	ori	$a3, $zero, 408
	mul.d	$a3, $s0, $a3
	add.d	$s5, $a0, $a3
	slli.w	$s1, $a1, 2
	addi.d	$a0, $zero, -1
	alsl.w	$a1, $a1, $a0, 2
	slli.w	$s2, $a2, 2
	addi.d	$a3, $sp, 8
	move	$a0, $s0
	move	$a2, $s2
	pcaddu18i	$ra, %call36(getLuma4x4Neighbour)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s5, 40
	ori	$a0, $zero, 14
	lu12i.w	$s6, 6
	pcalau12i	$s4, %pc_hi20(active_pps)
	bltu	$a0, $a1, .LBB19_8
# %bb.1:
	ori	$a0, $zero, 1
	sll.d	$a0, $a0, $a1
	ori	$a2, $s6, 1536
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
	ldx.w	$s7, $a0, $a1
	addi.d	$s3, $s3, 1
	b	.LBB19_13
.LBB19_12:
	move	$s7, $zero
.LBB19_13:                              # %.thread
	addi.w	$a2, $s2, -1
	addi.d	$a3, $sp, 8
	move	$a0, $s0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(getLuma4x4Neighbour)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s5, 40
	ori	$a0, $zero, 14
	bltu	$a0, $a1, .LBB19_19
# %bb.14:                               # %.thread
	ori	$a0, $zero, 1
	sll.d	$a0, $a0, $a1
	ori	$a2, $s6, 1536
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
	add.d	$s7, $a0, $s7
	addi.d	$s3, $s3, 1
.LBB19_23:                              # %.thread54
	addi.d	$a0, $s3, -2
	sltui	$a0, $a0, 1
	addi.w	$a1, $s7, 1
	srli.d	$a1, $a1, 1
	masknez	$a2, $s7, $a0
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
	move	$s2, $a1
	move	$fp, $a0
	ld.w	$s0, $a0, 4
	ldptr.d	$a0, $a0, 5600
	slli.d	$s6, $a2, 2
	ori	$a1, $zero, 408
	mul.d	$a1, $s0, $a1
	add.d	$s4, $a0, $a1
	pcalau12i	$a0, %got_pc_hi20(dec_picture)
	ld.d	$a0, $a0, %got_pc_lo12(dec_picture)
	ld.d	$a0, $a0, 0
	lu12i.w	$a1, 77
	ori	$a1, $a1, 1652
	ldx.w	$a0, $a0, $a1
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
	addi.d	$a3, $sp, 16
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
	ld.w	$a0, $sp, 16
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
	ld.w	$a1, $sp, 20
	ld.d	$a2, $fp, 16
	slli.d	$a1, $a1, 2
	ldx.w	$a1, $a2, $a1
	and	$a0, $a0, $a1
	st.w	$a0, $sp, 16
	addi.w	$s3, $zero, -1
	b	.LBB20_19
.LBB20_7:
	andi	$s1, $s1, 4
	addi.d	$a1, $s1, -1
	addi.d	$a0, $zero, -16
	alsl.w	$a2, $a2, $a0, 2
	addi.d	$a3, $sp, 16
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
	ld.w	$a0, $sp, 16
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
	ld.w	$a1, $sp, 20
	ld.d	$a2, $fp, 16
	slli.d	$a1, $a1, 2
	ldx.w	$a1, $a2, $a1
	and	$a0, $a0, $a1
	st.w	$a0, $sp, 16
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
	ld.w	$a0, $sp, 16
	ori	$a2, $zero, 12
	move	$s3, $zero
	bne	$a1, $a2, .LBB20_19
# %bb.18:
	bnez	$a0, .LBB20_4
.LBB20_19:                              # %thread-pre-split107
	beqz	$a0, .LBB20_21
.LBB20_20:                              # %thread-pre-split107.thread
	ld.w	$a0, $sp, 20
	ldptr.d	$a1, $fp, 5560
	slli.d	$a0, $a0, 3
	ld.w	$a2, $sp, 24
	ldx.d	$a0, $a1, $a0
	ld.w	$a1, $sp, 28
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
	addi.d	$a3, $sp, 16
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
	ld.w	$a0, $sp, 16
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
	ld.w	$a1, $sp, 20
	ld.d	$a2, $fp, 16
	slli.d	$a1, $a1, 2
	ldx.w	$a1, $a2, $a1
	and	$a0, $a0, $a1
	st.w	$a0, $sp, 16
	addi.d	$s3, $s3, -1
	b	.LBB20_41
.LBB20_28:
	ld.w	$a0, $sp, 16
	ori	$a2, $zero, 12
	move	$s3, $zero
	bne	$a1, $a2, .LBB20_30
# %bb.29:
	bnez	$a0, .LBB20_10
.LBB20_30:                              # %thread-pre-split
	beqz	$a0, .LBB20_32
.LBB20_31:                              # %thread-pre-split.thread
	ld.w	$a0, $sp, 20
	ldptr.d	$a1, $fp, 5560
	ld.w	$a2, $sp, 24
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $a1, $a0
	alsl.w	$a1, $s2, $a2, 1
	slli.d	$a1, $a1, 3
	ldx.d	$a0, $a0, $a1
	ld.w	$a1, $sp, 28
	alsl.d	$a0, $a1, $a0, 2
	ld.w	$s5, $a0, 16
	addi.d	$s3, $s3, 1
	b	.LBB20_33
.LBB20_32:
	move	$s5, $zero
.LBB20_33:                              # %.thread
	addi.w	$a2, $s6, -17
	addi.d	$a3, $sp, 16
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
	ld.w	$a0, $sp, 16
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
	ld.w	$a1, $sp, 20
	ld.d	$a2, $fp, 16
	slli.d	$a1, $a1, 2
	ldx.w	$a1, $a2, $a1
	and	$a0, $a0, $a1
	st.w	$a0, $sp, 16
	sltui	$a1, $a0, 1
	add.d	$s3, $s3, $a1
	b	.LBB20_45
.LBB20_39:
	ld.w	$a0, $sp, 16
	ori	$a2, $zero, 12
	bne	$a1, $a2, .LBB20_41
# %bb.40:
	bnez	$a0, .LBB20_25
.LBB20_41:                              # %thread-pre-split112
	beqz	$a0, .LBB20_48
.LBB20_42:                              # %thread-pre-split112.thread
	ld.w	$a0, $sp, 20
	ldptr.d	$a1, $fp, 5560
	slli.d	$a0, $a0, 3
	ld.w	$a2, $sp, 24
	ldx.d	$a0, $a1, $a0
	ld.w	$a1, $sp, 28
	slli.d	$a2, $a2, 3
	ldx.d	$a0, $a0, $a2
	add.w	$a1, $a1, $s6
	slli.d	$a1, $a1, 2
	ldx.w	$a0, $a0, $a1
	b	.LBB20_47
.LBB20_43:
	ld.w	$a0, $sp, 16
	ori	$a2, $zero, 12
	bne	$a1, $a2, .LBB20_45
# %bb.44:
	bnez	$a0, .LBB20_36
.LBB20_45:                              # %thread-pre-split102
	beqz	$a0, .LBB20_48
.LBB20_46:                              # %thread-pre-split102.thread
	ld.w	$a0, $sp, 20
	ldptr.d	$a1, $fp, 5560
	ld.w	$a2, $sp, 24
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $a1, $a0
	alsl.w	$a1, $s2, $a2, 1
	slli.d	$a1, $a1, 3
	ldx.d	$a0, $a0, $a1
	ld.w	$a1, $sp, 28
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
	move	$s4, $a0
	ldptr.d	$s1, $a0, 5592
	ld.w	$a0, $s1, 28
	move	$s2, $a7
	st.d	$a6, $sp, 16                    # 8-byte Folded Spill
	move	$s0, $a5
	move	$s3, $a4
	move	$s5, $a3
	slli.d	$a1, $a0, 6
	alsl.d	$a0, $a0, $a1, 4
	pcalau12i	$a1, %got_pc_hi20(assignSE2partition)
	ld.d	$a1, $a1, %got_pc_lo12(assignSE2partition)
	add.d	$s8, $a1, $a0
	ori	$a1, $zero, 7
	ori	$fp, $zero, 1
	bltu	$a1, $a2, .LBB21_5
# %bb.1:
	ld.w	$a0, $s4, 4
	ldptr.d	$a3, $s4, 5600
	ori	$a4, $zero, 408
	mul.d	$a4, $a0, $a4
	add.d	$a3, $a3, $a4
	ori	$s6, $zero, 16
	slli.d	$a2, $a2, 2
	pcalau12i	$a4, %pc_hi20(.LJTI21_0)
	addi.d	$a4, $a4, %pc_lo12(.LJTI21_0)
	ldx.w	$a2, $a4, $a2
	add.d	$a2, $a4, $a2
	ori	$s7, $zero, 1
	jr	$a2
.LBB21_2:
	ld.w	$a3, $a3, 40
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
	ld.w	$a0, $s4, 4
	move	$a1, $zero
	move	$s6, $zero
	b	.LBB21_16
.LBB21_6:
	ori	$s6, $zero, 15
	ori	$a1, $zero, 9
	b	.LBB21_16
.LBB21_7:
	lu12i.w	$a1, 1
	ori	$a2, $a1, 1832
	ld.w	$a1, $a3, 40
	ldx.w	$s6, $s4, $a2
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
	ld.w	$a1, $a3, 40
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
	ldptr.d	$a2, $s4, 5560
	bstrpick.d	$a0, $a0, 31, 0
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $a2, $a0
	st.w	$a1, $sp, 40
	ld.d	$a2, $s1, 40
	slli.d	$a1, $a1, 2
	ldx.w	$a1, $s8, $a1
	slli.d	$a3, $s5, 3
	ldx.d	$a0, $a0, $a3
	ori	$a3, $zero, 56
	mul.d	$a1, $a1, $a3
	add.d	$s1, $a2, $a1
	slli.d	$a1, $s3, 2
	stx.w	$zero, $a0, $a1
	beqz	$s7, .LBB21_22
# %bb.18:
	move	$a0, $s4
	move	$a1, $s5
	move	$a2, $s3
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
	addi.d	$a0, $sp, 40
	move	$a1, $s1
	pcaddu18i	$ra, %call36(readSyntaxElement_NumCoeffTrailingOnesChromaDC)
	jirl	$ra, $ra, 0
	ld.w	$s4, $sp, 44
	ld.w	$s5, $sp, 48
	bgtz	$s6, .LBB21_26
	b	.LBB21_33
.LBB21_23:
	pcaddu18i	$ra, %call36(predict_nnz_chroma)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 2
	bge	$a0, $a1, .LBB21_20
.LBB21_24:
	move	$a1, $zero
.LBB21_25:
	st.w	$a1, $sp, 44
	addi.d	$a0, $sp, 40
	addi.d	$a2, $sp, 25
	move	$a1, $s1
	pcaddu18i	$ra, %call36(readSyntaxElement_NumCoeffTrailingOnes)
	jirl	$ra, $ra, 0
	ld.wu	$a0, $s4, 4
	ldptr.d	$a1, $s4, 5560
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $a1, $a0
	ld.w	$s4, $sp, 44
	slli.d	$a1, $s5, 3
	ldx.d	$a0, $a0, $a1
	ld.w	$s5, $sp, 48
	slli.d	$a1, $s3, 2
	stx.w	$s4, $a0, $a1
	blez	$s6, .LBB21_33
.LBB21_26:                              # %.lr.ph.preheader
	ori	$a1, $zero, 8
	move	$a0, $zero
	bltu	$s6, $a1, .LBB21_31
# %bb.27:                               # %.lr.ph.preheader
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	sub.d	$a1, $a1, $s0
	ori	$a2, $zero, 32
	bltu	$a1, $a2, .LBB21_31
# %bb.28:                               # %vector.ph
	bstrpick.d	$a0, $s6, 30, 3
	slli.d	$a0, $a0, 3
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
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
.LBB21_31:                              # %.lr.ph.preheader208
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
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
	st.w	$s4, $s2, 0
	beqz	$s4, .LBB21_59
# %bb.34:
	beqz	$s5, .LBB21_43
# %bb.35:
	ld.d	$a1, $s1, 0
	st.w	$s5, $sp, 52
	addi.d	$a0, $sp, 40
	pcaddu18i	$ra, %call36(readSyntaxElement_FLC)
	jirl	$ra, $ra, 0
	addi.w	$s3, $s4, -1
	sub.w	$fp, $s3, $s5
	blez	$s5, .LBB21_42
# %bb.36:                               # %.lr.ph167.preheader
	ld.w	$a0, $sp, 56
	addi.d	$a1, $s3, -1
	slt	$a2, $fp, $a1
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $fp, $a2
	or	$a1, $a2, $a1
	sub.d	$a2, $s3, $a1
	ori	$a4, $zero, 8
	move	$a1, $s3
	move	$a3, $s5
	bltu	$a2, $a4, .LBB21_40
# %bb.37:                               # %vector.ph193
	move	$a4, $a2
	bstrins.d	$a4, $zero, 2, 0
	sub.d	$a1, $s3, $a4
	pcalau12i	$a3, %pc_hi20(.LCPI21_0)
	vld	$vr1, $a3, %pc_lo12(.LCPI21_0)
	sub.d	$a3, $s5, $a4
	vreplgr2vr.w	$vr0, $a0
	vreplgr2vr.w	$vr2, $s5
	vadd.w	$vr1, $vr2, $vr1
	alsl.d	$a5, $s3, $s0, 2
	addi.d	$a5, $a5, -12
	vrepli.b	$vr2, -1
	vrepli.w	$vr3, -5
	vrepli.w	$vr4, 1
	vrepli.w	$vr5, -8
	move	$a6, $a4
	.p2align	4, , 16
.LBB21_38:                              # %vector.body198
                                        # =>This Inner Loop Header: Depth=1
	vadd.w	$vr6, $vr1, $vr2
	vadd.w	$vr7, $vr1, $vr3
	vsrl.w	$vr6, $vr0, $vr6
	vand.v	$vr6, $vr6, $vr4
	vsrl.w	$vr7, $vr0, $vr7
	vand.v	$vr7, $vr7, $vr4
	vseqi.w	$vr6, $vr6, 0
	vorn.v	$vr6, $vr4, $vr6
	vseqi.w	$vr7, $vr7, 0
	vorn.v	$vr7, $vr4, $vr7
	vshuf4i.w	$vr6, $vr6, 27
	vst	$vr6, $a5, 0
	vshuf4i.w	$vr6, $vr7, 27
	vst	$vr6, $a5, -16
	vadd.w	$vr1, $vr1, $vr5
	addi.d	$a6, $a6, -8
	addi.d	$a5, $a5, -32
	bnez	$a6, .LBB21_38
# %bb.39:                               # %middle.block202
	beq	$a2, $a4, .LBB21_42
.LBB21_40:                              # %.lr.ph167.preheader207
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
	addi.w	$fp, $s4, -1
	move	$s3, $fp
	bltz	$fp, .LBB21_54
.LBB21_44:                              # %.lr.ph172
	ori	$a0, $zero, 10
	slt	$a0, $a0, $s4
	slti	$a1, $s5, 3
	and	$s2, $a0, $a1
	ori	$a0, $zero, 3
	slt	$a0, $a0, $s4
	addi.d	$a1, $s5, -3
	sltui	$a1, $a1, 1
	and	$s5, $a0, $a1
	addi.d	$a0, $sp, 40
	beqz	$s2, .LBB21_46
# %bb.45:
	ori	$a1, $zero, 1
	move	$a2, $s1
	pcaddu18i	$ra, %call36(readSyntaxElement_Level_VLCN)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 56
	beqz	$s5, .LBB21_47
	b	.LBB21_48
.LBB21_46:
	move	$a1, $s1
	pcaddu18i	$ra, %call36(readSyntaxElement_Level_VLC0)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 56
	bnez	$s5, .LBB21_48
.LBB21_47:
	slti	$a1, $a0, 1
	sub.d	$a1, $zero, $a1
	ori	$a1, $a1, 1
	add.w	$a0, $a1, $a0
	st.w	$a0, $sp, 56
.LBB21_48:
	slli.d	$a1, $fp, 2
	stx.w	$a0, $s0, $a1
	beqz	$fp, .LBB21_54
# %bb.49:                               # %.peel.next
	srai.d	$a1, $a0, 31
	xor	$a0, $a0, $a1
	sub.w	$a0, $a0, $a1
	ori	$a1, $zero, 3
	sltu	$a1, $a1, $a0
	slli.d	$a2, $s2, 2
	pcalau12i	$a3, %pc_hi20(readCoeff4x4_CAVLC.incVlc)
	addi.d	$s5, $a3, %pc_lo12(readCoeff4x4_CAVLC.incVlc)
	ldx.w	$a2, $s5, $a2
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
	ld.w	$a0, $sp, 56
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
	addi.d	$a0, $sp, 40
	bnez	$s2, .LBB21_50
# %bb.53:                               #   in Loop: Header=BB21_52 Depth=1
	move	$a1, $s1
	pcaddu18i	$ra, %call36(readSyntaxElement_Level_VLC0)
	jirl	$ra, $ra, 0
	b	.LBB21_51
.LBB21_54:                              # %._crit_edge173
	bge	$s4, $s6, .LBB21_57
# %bb.55:
	st.w	$s3, $sp, 44
	addi.d	$a0, $sp, 40
	move	$a1, $s1
	beqz	$s7, .LBB21_60
# %bb.56:
	pcaddu18i	$ra, %call36(readSyntaxElement_TotalZeros)
	jirl	$ra, $ra, 0
	ld.w	$fp, $sp, 44
	bgtz	$fp, .LBB21_61
	b	.LBB21_58
.LBB21_57:
	move	$fp, $zero
.LBB21_58:                              # %.thread
	slli.d	$a0, $s3, 2
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	stx.w	$fp, $a1, $a0
.LBB21_59:
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
.LBB21_60:
	pcaddu18i	$ra, %call36(readSyntaxElement_TotalZerosChromaDC)
	jirl	$ra, $ra, 0
	ld.w	$fp, $sp, 44
	blez	$fp, .LBB21_58
.LBB21_61:
	ori	$a0, $zero, 2
	blt	$s4, $a0, .LBB21_58
# %bb.62:                               # %.preheader
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	addi.d	$s0, $a0, -4
	slli.d	$a0, $s4, 2
	addi.d	$s3, $s4, -1
	ori	$s2, $zero, 7
	ori	$s4, $zero, 8
	.p2align	4, , 16
.LBB21_63:                              # =>This Inner Loop Header: Depth=1
	move	$s5, $a0
	slti	$a0, $fp, 7
	masknez	$a1, $s2, $a0
	maskeqz	$a0, $fp, $a0
	or	$a0, $a0, $a1
	addi.d	$a0, $a0, -1
	st.w	$a0, $sp, 44
	addi.d	$a0, $sp, 40
	move	$a1, $s1
	pcaddu18i	$ra, %call36(readSyntaxElement_Run)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 44
	stx.w	$a0, $s0, $s5
	sub.w	$fp, $fp, $a0
	addi.w	$s3, $s3, -1
	beqz	$fp, .LBB21_58
# %bb.64:                               #   in Loop: Header=BB21_63 Depth=1
	addi.d	$a0, $s5, -4
	bne	$s5, $s4, .LBB21_63
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
	ld.d	$a0, $a1, 48
	ld.d	$a1, $a1, 56
	pcalau12i	$a2, %pc_hi20(InvLevelScale8x8Luma_Inter)
	addi.d	$a2, $a2, %pc_lo12(InvLevelScale8x8Luma_Inter)
	pcalau12i	$a3, %pc_hi20(InvLevelScale8x8Luma_Intra)
	addi.d	$a3, $a3, %pc_lo12(InvLevelScale8x8Luma_Intra)
	pcalau12i	$a4, %pc_hi20(dequant_coef8)
	addi.d	$a4, $a4, %pc_lo12(dequant_coef8)
	move	$a5, $zero
	ori	$a6, $zero, 1536
	.p2align	4, , 16
.LBB22_1:                               # %.preheader24
                                        # =>This Inner Loop Header: Depth=1
	ldx.w	$t0, $a4, $a5
	ld.w	$a7, $a0, 0
	mul.d	$a7, $a7, $t0
	stx.w	$a7, $a3, $a5
	ld.w	$t1, $a1, 0
	add.d	$a7, $a4, $a5
	mul.d	$t0, $t1, $t0
	stx.w	$t0, $a2, $a5
	ld.w	$t2, $a7, 4
	ld.w	$t0, $a0, 32
	add.d	$t1, $a3, $a5
	mul.d	$t0, $t0, $t2
	st.w	$t0, $t1, 32
	ld.w	$t3, $a1, 32
	add.d	$t0, $a2, $a5
	mul.d	$t2, $t3, $t2
	st.w	$t2, $t0, 32
	ld.w	$t2, $a7, 8
	ld.w	$t3, $a0, 64
	mul.d	$t3, $t3, $t2
	st.w	$t3, $t1, 64
	ld.w	$t3, $a1, 64
	mul.d	$t2, $t3, $t2
	st.w	$t2, $t0, 64
	ld.w	$t2, $a7, 12
	ld.w	$t3, $a0, 96
	mul.d	$t3, $t3, $t2
	st.w	$t3, $t1, 96
	ld.w	$t3, $a1, 96
	mul.d	$t2, $t3, $t2
	st.w	$t2, $t0, 96
	ld.w	$t2, $a7, 16
	ld.w	$t3, $a0, 128
	mul.d	$t3, $t3, $t2
	st.w	$t3, $t1, 128
	ld.w	$t3, $a1, 128
	mul.d	$t2, $t3, $t2
	st.w	$t2, $t0, 128
	ld.w	$t2, $a7, 20
	ld.w	$t3, $a0, 160
	mul.d	$t3, $t3, $t2
	st.w	$t3, $t1, 160
	ld.w	$t3, $a1, 160
	mul.d	$t2, $t3, $t2
	st.w	$t2, $t0, 160
	ld.w	$t2, $a7, 24
	ld.w	$t3, $a0, 192
	mul.d	$t3, $t3, $t2
	st.w	$t3, $t1, 192
	ld.w	$t3, $a1, 192
	mul.d	$t2, $t3, $t2
	st.w	$t2, $t0, 192
	ld.w	$t2, $a7, 28
	ld.w	$t3, $a0, 224
	mul.d	$t3, $t3, $t2
	st.w	$t3, $t1, 224
	ld.w	$t3, $a1, 224
	mul.d	$t2, $t3, $t2
	st.w	$t2, $t0, 224
	ld.w	$t2, $a7, 32
	ld.w	$t3, $a0, 4
	mul.d	$t3, $t3, $t2
	st.w	$t3, $t1, 4
	ld.w	$t3, $a1, 4
	mul.d	$t2, $t3, $t2
	st.w	$t2, $t0, 4
	ld.w	$t2, $a7, 36
	ld.w	$t3, $a0, 36
	mul.d	$t3, $t3, $t2
	st.w	$t3, $t1, 36
	ld.w	$t3, $a1, 36
	mul.d	$t2, $t3, $t2
	st.w	$t2, $t0, 36
	ld.w	$t2, $a7, 40
	ld.w	$t3, $a0, 68
	mul.d	$t3, $t3, $t2
	st.w	$t3, $t1, 68
	ld.w	$t3, $a1, 68
	mul.d	$t2, $t3, $t2
	st.w	$t2, $t0, 68
	ld.w	$t2, $a7, 44
	ld.w	$t3, $a0, 100
	mul.d	$t3, $t3, $t2
	st.w	$t3, $t1, 100
	ld.w	$t3, $a1, 100
	mul.d	$t2, $t3, $t2
	st.w	$t2, $t0, 100
	ld.w	$t2, $a7, 48
	ld.w	$t3, $a0, 132
	mul.d	$t3, $t3, $t2
	st.w	$t3, $t1, 132
	ld.w	$t3, $a1, 132
	mul.d	$t2, $t3, $t2
	st.w	$t2, $t0, 132
	ld.w	$t2, $a7, 52
	ld.w	$t3, $a0, 164
	mul.d	$t3, $t3, $t2
	st.w	$t3, $t1, 164
	ld.w	$t3, $a1, 164
	mul.d	$t2, $t3, $t2
	st.w	$t2, $t0, 164
	ld.w	$t2, $a7, 56
	ld.w	$t3, $a0, 196
	mul.d	$t3, $t3, $t2
	st.w	$t3, $t1, 196
	ld.w	$t3, $a1, 196
	mul.d	$t2, $t3, $t2
	st.w	$t2, $t0, 196
	ld.w	$t2, $a7, 60
	ld.w	$t3, $a0, 228
	mul.d	$t3, $t3, $t2
	st.w	$t3, $t1, 228
	ld.w	$t3, $a1, 228
	mul.d	$t2, $t3, $t2
	st.w	$t2, $t0, 228
	ld.w	$t2, $a7, 64
	ld.w	$t3, $a0, 8
	mul.d	$t3, $t3, $t2
	st.w	$t3, $t1, 8
	ld.w	$t3, $a1, 8
	mul.d	$t2, $t3, $t2
	st.w	$t2, $t0, 8
	ld.w	$t2, $a7, 68
	ld.w	$t3, $a0, 40
	mul.d	$t3, $t3, $t2
	st.w	$t3, $t1, 40
	ld.w	$t3, $a1, 40
	mul.d	$t2, $t3, $t2
	st.w	$t2, $t0, 40
	ld.w	$t2, $a7, 72
	ld.w	$t3, $a0, 72
	mul.d	$t3, $t3, $t2
	st.w	$t3, $t1, 72
	ld.w	$t3, $a1, 72
	mul.d	$t2, $t3, $t2
	st.w	$t2, $t0, 72
	ld.w	$t2, $a7, 76
	ld.w	$t3, $a0, 104
	mul.d	$t3, $t3, $t2
	st.w	$t3, $t1, 104
	ld.w	$t3, $a1, 104
	mul.d	$t2, $t3, $t2
	st.w	$t2, $t0, 104
	ld.w	$t2, $a7, 80
	ld.w	$t3, $a0, 136
	mul.d	$t3, $t3, $t2
	st.w	$t3, $t1, 136
	ld.w	$t3, $a1, 136
	mul.d	$t2, $t3, $t2
	st.w	$t2, $t0, 136
	ld.w	$t2, $a7, 84
	ld.w	$t3, $a0, 168
	mul.d	$t3, $t3, $t2
	st.w	$t3, $t1, 168
	ld.w	$t3, $a1, 168
	mul.d	$t2, $t3, $t2
	st.w	$t2, $t0, 168
	ld.w	$t2, $a7, 88
	ld.w	$t3, $a0, 200
	mul.d	$t3, $t3, $t2
	st.w	$t3, $t1, 200
	ld.w	$t3, $a1, 200
	mul.d	$t2, $t3, $t2
	st.w	$t2, $t0, 200
	ld.w	$t2, $a7, 92
	ld.w	$t3, $a0, 232
	mul.d	$t3, $t3, $t2
	st.w	$t3, $t1, 232
	ld.w	$t3, $a1, 232
	mul.d	$t2, $t3, $t2
	st.w	$t2, $t0, 232
	ld.w	$t2, $a7, 96
	ld.w	$t3, $a0, 12
	mul.d	$t3, $t3, $t2
	st.w	$t3, $t1, 12
	ld.w	$t3, $a1, 12
	mul.d	$t2, $t3, $t2
	st.w	$t2, $t0, 12
	ld.w	$t2, $a7, 100
	ld.w	$t3, $a0, 44
	mul.d	$t3, $t3, $t2
	st.w	$t3, $t1, 44
	ld.w	$t3, $a1, 44
	mul.d	$t2, $t3, $t2
	st.w	$t2, $t0, 44
	ld.w	$t2, $a7, 104
	ld.w	$t3, $a0, 76
	mul.d	$t3, $t3, $t2
	st.w	$t3, $t1, 76
	ld.w	$t3, $a1, 76
	mul.d	$t2, $t3, $t2
	st.w	$t2, $t0, 76
	ld.w	$t2, $a7, 108
	ld.w	$t3, $a0, 108
	mul.d	$t3, $t3, $t2
	st.w	$t3, $t1, 108
	ld.w	$t3, $a1, 108
	mul.d	$t2, $t3, $t2
	st.w	$t2, $t0, 108
	ld.w	$t2, $a7, 112
	ld.w	$t3, $a0, 140
	mul.d	$t3, $t3, $t2
	st.w	$t3, $t1, 140
	ld.w	$t3, $a1, 140
	mul.d	$t2, $t3, $t2
	st.w	$t2, $t0, 140
	ld.w	$t2, $a7, 116
	ld.w	$t3, $a0, 172
	mul.d	$t3, $t3, $t2
	st.w	$t3, $t1, 172
	ld.w	$t3, $a1, 172
	mul.d	$t2, $t3, $t2
	st.w	$t2, $t0, 172
	ld.w	$t2, $a7, 120
	ld.w	$t3, $a0, 204
	mul.d	$t3, $t3, $t2
	st.w	$t3, $t1, 204
	ld.w	$t3, $a1, 204
	mul.d	$t2, $t3, $t2
	st.w	$t2, $t0, 204
	ld.w	$t2, $a7, 124
	ld.w	$t3, $a0, 236
	mul.d	$t3, $t3, $t2
	st.w	$t3, $t1, 236
	ld.w	$t3, $a1, 236
	mul.d	$t2, $t3, $t2
	st.w	$t2, $t0, 236
	ld.w	$t2, $a7, 128
	ld.w	$t3, $a0, 16
	mul.d	$t3, $t3, $t2
	st.w	$t3, $t1, 16
	ld.w	$t3, $a1, 16
	mul.d	$t2, $t3, $t2
	st.w	$t2, $t0, 16
	ld.w	$t2, $a7, 132
	ld.w	$t3, $a0, 48
	mul.d	$t3, $t3, $t2
	st.w	$t3, $t1, 48
	ld.w	$t3, $a1, 48
	mul.d	$t2, $t3, $t2
	st.w	$t2, $t0, 48
	ld.w	$t2, $a7, 136
	ld.w	$t3, $a0, 80
	mul.d	$t3, $t3, $t2
	st.w	$t3, $t1, 80
	ld.w	$t3, $a1, 80
	mul.d	$t2, $t3, $t2
	st.w	$t2, $t0, 80
	ld.w	$t2, $a7, 140
	ld.w	$t3, $a0, 112
	mul.d	$t3, $t3, $t2
	st.w	$t3, $t1, 112
	ld.w	$t3, $a1, 112
	mul.d	$t2, $t3, $t2
	st.w	$t2, $t0, 112
	ld.w	$t2, $a7, 144
	ld.w	$t3, $a0, 144
	mul.d	$t3, $t3, $t2
	st.w	$t3, $t1, 144
	ld.w	$t3, $a1, 144
	mul.d	$t2, $t3, $t2
	st.w	$t2, $t0, 144
	ld.w	$t2, $a7, 148
	ld.w	$t3, $a0, 176
	mul.d	$t3, $t3, $t2
	st.w	$t3, $t1, 176
	ld.w	$t3, $a1, 176
	mul.d	$t2, $t3, $t2
	st.w	$t2, $t0, 176
	ld.w	$t2, $a7, 152
	ld.w	$t3, $a0, 208
	mul.d	$t3, $t3, $t2
	st.w	$t3, $t1, 208
	ld.w	$t3, $a1, 208
	mul.d	$t2, $t3, $t2
	st.w	$t2, $t0, 208
	ld.w	$t2, $a7, 156
	ld.w	$t3, $a0, 240
	mul.d	$t3, $t3, $t2
	st.w	$t3, $t1, 240
	ld.w	$t3, $a1, 240
	mul.d	$t2, $t3, $t2
	st.w	$t2, $t0, 240
	ld.w	$t2, $a7, 160
	ld.w	$t3, $a0, 20
	mul.d	$t3, $t3, $t2
	st.w	$t3, $t1, 20
	ld.w	$t3, $a1, 20
	mul.d	$t2, $t3, $t2
	st.w	$t2, $t0, 20
	ld.w	$t2, $a7, 164
	ld.w	$t3, $a0, 52
	mul.d	$t3, $t3, $t2
	st.w	$t3, $t1, 52
	ld.w	$t3, $a1, 52
	mul.d	$t2, $t3, $t2
	st.w	$t2, $t0, 52
	ld.w	$t2, $a7, 168
	ld.w	$t3, $a0, 84
	mul.d	$t3, $t3, $t2
	st.w	$t3, $t1, 84
	ld.w	$t3, $a1, 84
	mul.d	$t2, $t3, $t2
	st.w	$t2, $t0, 84
	ld.w	$t2, $a7, 172
	ld.w	$t3, $a0, 116
	mul.d	$t3, $t3, $t2
	st.w	$t3, $t1, 116
	ld.w	$t3, $a1, 116
	mul.d	$t2, $t3, $t2
	st.w	$t2, $t0, 116
	ld.w	$t2, $a7, 176
	ld.w	$t3, $a0, 148
	mul.d	$t3, $t3, $t2
	st.w	$t3, $t1, 148
	ld.w	$t3, $a1, 148
	mul.d	$t2, $t3, $t2
	st.w	$t2, $t0, 148
	ld.w	$t2, $a7, 180
	ld.w	$t3, $a0, 180
	mul.d	$t3, $t3, $t2
	st.w	$t3, $t1, 180
	ld.w	$t3, $a1, 180
	mul.d	$t2, $t3, $t2
	st.w	$t2, $t0, 180
	ld.w	$t2, $a7, 184
	ld.w	$t3, $a0, 212
	mul.d	$t3, $t3, $t2
	st.w	$t3, $t1, 212
	ld.w	$t3, $a1, 212
	mul.d	$t2, $t3, $t2
	st.w	$t2, $t0, 212
	ld.w	$t2, $a7, 188
	ld.w	$t3, $a0, 244
	mul.d	$t3, $t3, $t2
	st.w	$t3, $t1, 244
	ld.w	$t3, $a1, 244
	mul.d	$t2, $t3, $t2
	st.w	$t2, $t0, 244
	ld.w	$t2, $a7, 192
	ld.w	$t3, $a0, 24
	mul.d	$t3, $t3, $t2
	st.w	$t3, $t1, 24
	ld.w	$t3, $a1, 24
	mul.d	$t2, $t3, $t2
	st.w	$t2, $t0, 24
	ld.w	$t2, $a7, 196
	ld.w	$t3, $a0, 56
	mul.d	$t3, $t3, $t2
	st.w	$t3, $t1, 56
	ld.w	$t3, $a1, 56
	mul.d	$t2, $t3, $t2
	st.w	$t2, $t0, 56
	ld.w	$t2, $a7, 200
	ld.w	$t3, $a0, 88
	mul.d	$t3, $t3, $t2
	st.w	$t3, $t1, 88
	ld.w	$t3, $a1, 88
	mul.d	$t2, $t3, $t2
	st.w	$t2, $t0, 88
	ld.w	$t2, $a7, 204
	ld.w	$t3, $a0, 120
	mul.d	$t3, $t3, $t2
	st.w	$t3, $t1, 120
	ld.w	$t3, $a1, 120
	mul.d	$t2, $t3, $t2
	st.w	$t2, $t0, 120
	ld.w	$t2, $a7, 208
	ld.w	$t3, $a0, 152
	mul.d	$t3, $t3, $t2
	st.w	$t3, $t1, 152
	ld.w	$t3, $a1, 152
	mul.d	$t2, $t3, $t2
	st.w	$t2, $t0, 152
	ld.w	$t2, $a7, 212
	ld.w	$t3, $a0, 184
	mul.d	$t3, $t3, $t2
	st.w	$t3, $t1, 184
	ld.w	$t3, $a1, 184
	mul.d	$t2, $t3, $t2
	st.w	$t2, $t0, 184
	ld.w	$t2, $a7, 216
	ld.w	$t3, $a0, 216
	mul.d	$t3, $t3, $t2
	st.w	$t3, $t1, 216
	ld.w	$t3, $a1, 216
	mul.d	$t2, $t3, $t2
	st.w	$t2, $t0, 216
	ld.w	$t2, $a7, 220
	ld.w	$t3, $a0, 248
	mul.d	$t3, $t3, $t2
	st.w	$t3, $t1, 248
	ld.w	$t3, $a1, 248
	mul.d	$t2, $t3, $t2
	st.w	$t2, $t0, 248
	ld.w	$t2, $a7, 224
	ld.w	$t3, $a0, 28
	mul.d	$t3, $t3, $t2
	st.w	$t3, $t1, 28
	ld.w	$t3, $a1, 28
	mul.d	$t2, $t3, $t2
	st.w	$t2, $t0, 28
	ld.w	$t2, $a7, 228
	ld.w	$t3, $a0, 60
	mul.d	$t3, $t3, $t2
	st.w	$t3, $t1, 60
	ld.w	$t3, $a1, 60
	mul.d	$t2, $t3, $t2
	st.w	$t2, $t0, 60
	ld.w	$t2, $a7, 232
	ld.w	$t3, $a0, 92
	mul.d	$t3, $t3, $t2
	st.w	$t3, $t1, 92
	ld.w	$t3, $a1, 92
	mul.d	$t2, $t3, $t2
	st.w	$t2, $t0, 92
	ld.w	$t2, $a7, 236
	ld.w	$t3, $a0, 124
	mul.d	$t3, $t3, $t2
	st.w	$t3, $t1, 124
	ld.w	$t3, $a1, 124
	mul.d	$t2, $t3, $t2
	st.w	$t2, $t0, 124
	ld.w	$t2, $a7, 240
	ld.w	$t3, $a0, 156
	mul.d	$t3, $t3, $t2
	st.w	$t3, $t1, 156
	ld.w	$t3, $a1, 156
	mul.d	$t2, $t3, $t2
	st.w	$t2, $t0, 156
	ld.w	$t2, $a7, 244
	ld.w	$t3, $a0, 188
	mul.d	$t3, $t3, $t2
	st.w	$t3, $t1, 188
	ld.w	$t3, $a1, 188
	mul.d	$t2, $t3, $t2
	st.w	$t2, $t0, 188
	ld.w	$t2, $a7, 248
	ld.w	$t3, $a0, 220
	mul.d	$t3, $t3, $t2
	st.w	$t3, $t1, 220
	ld.w	$t3, $a1, 220
	mul.d	$t2, $t3, $t2
	st.w	$t2, $t0, 220
	ld.w	$a7, $a7, 252
	ld.w	$t2, $a0, 252
	mul.d	$t2, $t2, $a7
	st.w	$t2, $t1, 252
	ld.w	$t1, $a1, 252
	mul.d	$a7, $t1, $a7
	addi.d	$a5, $a5, 256
	st.w	$a7, $t0, 252
	bne	$a5, $a6, .LBB22_1
# %bb.2:
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
	add.w	$s6, $a3, $a1
	add.d	$s0, $a4, $a0
	beqz	$s6, .LBB23_4
# %bb.1:
	move	$s4, $zero
	ld.w	$a0, $s0, 40
	addi.w	$a1, $a0, -9
	ori	$a3, $zero, 5
	bltu	$a3, $a1, .LBB23_5
.LBB23_2:                               # %switch.lookup
	slli.d	$a3, $a1, 3
	pcalau12i	$a4, %pc_hi20(.Lswitch.table.readLumaCoeff8x8_CABAC)
	addi.d	$a4, $a4, %pc_lo12(.Lswitch.table.readLumaCoeff8x8_CABAC)
	ldx.d	$s3, $a4, $a3
	ldptr.d	$s1, $fp, 5592
	ldptr.w	$a3, $fp, 5584
	ld.w	$a4, $s0, 300
	beqz	$a3, .LBB23_6
.LBB23_3:
	pcalau12i	$a3, %pc_hi20(FIELD_SCAN8x8)
	addi.d	$s2, $a3, %pc_lo12(FIELD_SCAN8x8)
	b	.LBB23_7
.LBB23_4:
	ldptr.w	$a0, $fp, 5920
	addi.d	$a0, $a0, -1
	sltui	$s4, $a0, 1
	ld.w	$a0, $s0, 40
	addi.w	$a1, $a0, -9
	ori	$a3, $zero, 5
	bgeu	$a3, $a1, .LBB23_2
.LBB23_5:
	pcalau12i	$a3, %pc_hi20(InvLevelScale8x8Luma_Inter)
	addi.d	$s3, $a3, %pc_lo12(InvLevelScale8x8Luma_Inter)
	ldptr.d	$s1, $fp, 5592
	ldptr.w	$a3, $fp, 5584
	ld.w	$a4, $s0, 300
	bnez	$a3, .LBB23_3
.LBB23_6:
	ld.w	$a3, $s0, 356
	sltui	$a3, $a3, 1
	pcalau12i	$a5, %pc_hi20(FIELD_SCAN8x8)
	addi.d	$a5, $a5, %pc_lo12(FIELD_SCAN8x8)
	masknez	$a5, $a5, $a3
	pcalau12i	$a6, %pc_hi20(SNGL_SCAN8x8)
	addi.d	$a6, $a6, %pc_lo12(SNGL_SCAN8x8)
	maskeqz	$a3, $a6, $a3
	or	$s2, $a3, $a5
.LBB23_7:                               # %switch.lookup139
	ld.w	$a5, $s1, 28
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
	beqz	$a1, .LBB23_17
# %bb.8:
	slli.d	$a1, $a5, 6
	alsl.d	$a1, $a5, $a1, 4
	pcalau12i	$a4, %got_pc_hi20(assignSE2partition)
	ld.d	$a4, $a4, %got_pc_lo12(assignSE2partition)
	add.d	$a5, $a4, $a1
	andi	$a1, $a2, 1
	slli.d	$a4, $a1, 3
	st.d	$a4, $sp, 32                    # 8-byte Folded Spill
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
	st.d	$a1, $sp, 24                    # 8-byte Folded Spill
	ori	$a1, $zero, 2
	st.w	$a1, $sp, 64
	ori	$a1, $zero, 12
	masknez	$a1, $a1, $a0
	ori	$a2, $zero, 7
	maskeqz	$a2, $a2, $a0
	or	$a1, $a2, $a1
	ori	$a2, $zero, 48
	masknez	$a2, $a2, $a0
	ori	$a3, $zero, 28
	maskeqz	$a0, $a3, $a0
	or	$a0, $a0, $a2
	st.d	$a5, $sp, 16                    # 8-byte Folded Spill
	ldx.w	$a0, $a5, $a0
	ld.d	$a2, $s1, 40
	st.w	$a1, $sp, 40
	ori	$a1, $zero, 56
	mul.d	$a0, $a0, $a1
	add.d	$a2, $a2, $a0
	pcalau12i	$a0, %got_pc_hi20(readRunLevel_CABAC)
	ld.d	$s8, $a0, %got_pc_lo12(readRunLevel_CABAC)
	ld.d	$a3, $a2, 48
	st.d	$s8, $sp, 80
	addi.d	$a0, $sp, 40
	move	$a1, $fp
	jirl	$ra, $a3, 0
	ld.w	$a0, $sp, 44
	beqz	$s4, .LBB23_13
# %bb.9:                                # %.preheader
	beqz	$a0, .LBB23_17
# %bb.10:                               # %.peel.next117
	ld.w	$s3, $sp, 48
	move	$s4, $zero
	alsl.d	$a1, $s3, $s2, 1
	ld.d	$a2, $s0, 304
	slli.d	$a3, $s3, 1
	ld.bu	$a1, $a1, 1
	ldx.bu	$a3, $s2, $a3
	ld.d	$a4, $sp, 24                    # 8-byte Folded Reload
	or	$a2, $a2, $a4
	st.d	$a2, $s0, 304
	add.w	$a1, $s5, $a1
	slli.d	$a1, $a1, 6
	addi.d	$a2, $fp, 1384
	add.d	$a1, $a2, $a1
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	add.d	$a2, $a2, $a3
	slli.d	$a2, $a2, 2
	stx.w	$a0, $a1, $a2
	ori	$s7, $zero, 56
	ori	$s6, $zero, 36
	.p2align	4, , 16
.LBB23_11:                              # =>This Inner Loop Header: Depth=1
	ldptr.w	$a0, $fp, 5616
	addi.d	$a0, $a0, -1
	sltui	$a0, $a0, 1
	ori	$a1, $zero, 14
	masknez	$a1, $a1, $a0
	masknez	$a2, $s7, $a0
	maskeqz	$a3, $s6, $a0
	or	$a2, $a3, $a2
	ld.d	$a3, $sp, 16                    # 8-byte Folded Reload
	ldx.w	$a2, $a3, $a2
	ld.d	$a3, $s1, 40
	ori	$a4, $zero, 9
	maskeqz	$a0, $a4, $a0
	or	$a0, $a0, $a1
	mul.d	$a1, $a2, $s7
	add.d	$a2, $a3, $a1
	ld.d	$a3, $a2, 48
	ori	$a1, $zero, 2
	st.w	$a1, $sp, 64
	st.w	$a0, $sp, 40
	st.d	$s8, $sp, 80
	addi.d	$a0, $sp, 40
	move	$a1, $fp
	jirl	$ra, $a3, 0
	ld.w	$a0, $sp, 44
	beqz	$a0, .LBB23_17
# %bb.12:                               #   in Loop: Header=BB23_11 Depth=1
	ld.w	$a1, $sp, 48
	add.d	$a1, $s3, $a1
	addi.w	$s3, $a1, 1
	alsl.d	$a1, $s3, $s2, 1
	ld.d	$a2, $s0, 304
	slli.d	$a3, $s3, 1
	ld.bu	$a1, $a1, 1
	ldx.bu	$a3, $s2, $a3
	ld.d	$a4, $sp, 24                    # 8-byte Folded Reload
	or	$a2, $a2, $a4
	st.d	$a2, $s0, 304
	add.w	$a1, $s5, $a1
	slli.d	$a1, $a1, 6
	addi.d	$a2, $fp, 1384
	add.d	$a1, $a2, $a1
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	add.d	$a2, $a2, $a3
	slli.d	$a2, $a2, 2
	addi.w	$s4, $s4, 1
	stx.w	$a0, $a1, $a2
	ori	$a0, $zero, 64
	bltu	$s4, $a0, .LBB23_11
	b	.LBB23_17
.LBB23_13:                              # %.preheader108
	beqz	$a0, .LBB23_17
# %bb.14:                               # %.peel.next
	lu12i.w	$a1, 174762
	ori	$a1, $a1, 2731
	mul.d	$a1, $s6, $a1
	srli.d	$a2, $a1, 63
	srli.d	$a1, $a1, 32
	add.d	$s7, $a1, $a2
	slli.d	$a1, $s7, 2
	alsl.d	$a1, $s7, $a1, 1
	ld.w	$s4, $sp, 48
	sub.w	$a1, $s6, $a1
	slli.d	$a1, $a1, 8
	add.d	$a5, $s3, $a1
	alsl.d	$a1, $s4, $s2, 1
	ld.bu	$a1, $a1, 1
	slli.d	$a2, $s4, 1
	ldx.bu	$a2, $s2, $a2
	ld.d	$a3, $s0, 304
	slli.d	$a4, $a1, 5
	st.d	$a5, $sp, 8                     # 8-byte Folded Spill
	add.d	$a4, $a5, $a4
	slli.d	$a5, $a2, 2
	ldx.w	$a4, $a4, $a5
	move	$s6, $zero
	ld.d	$a5, $sp, 24                    # 8-byte Folded Reload
	or	$a3, $a3, $a5
	st.d	$a3, $s0, 304
	mul.d	$a0, $a4, $a0
	sll.w	$a0, $a0, $s7
	addi.w	$a0, $a0, 32
	srli.d	$a0, $a0, 6
	add.w	$a1, $s5, $a1
	slli.d	$a1, $a1, 6
	addi.d	$a3, $fp, 1384
	add.d	$a1, $a3, $a1
	ld.d	$a3, $sp, 32                    # 8-byte Folded Reload
	add.d	$a2, $a3, $a2
	slli.d	$a2, $a2, 2
	stx.w	$a0, $a1, $a2
	ori	$s3, $zero, 56
	.p2align	4, , 16
.LBB23_15:                              # =>This Inner Loop Header: Depth=1
	ldptr.w	$a0, $fp, 5616
	addi.d	$a0, $a0, -1
	sltui	$a0, $a0, 1
	ori	$a1, $zero, 14
	masknez	$a1, $a1, $a0
	masknez	$a2, $s3, $a0
	ori	$a3, $zero, 36
	maskeqz	$a3, $a3, $a0
	or	$a2, $a3, $a2
	ld.d	$a3, $sp, 16                    # 8-byte Folded Reload
	ldx.w	$a2, $a3, $a2
	ld.d	$a3, $s1, 40
	ori	$a4, $zero, 9
	maskeqz	$a0, $a4, $a0
	or	$a0, $a0, $a1
	mul.d	$a1, $a2, $s3
	add.d	$a2, $a3, $a1
	ld.d	$a3, $a2, 48
	ori	$a1, $zero, 2
	st.w	$a1, $sp, 64
	st.w	$a0, $sp, 40
	st.d	$s8, $sp, 80
	addi.d	$a0, $sp, 40
	move	$a1, $fp
	jirl	$ra, $a3, 0
	ld.w	$a0, $sp, 44
	beqz	$a0, .LBB23_17
# %bb.16:                               #   in Loop: Header=BB23_15 Depth=1
	ld.w	$a1, $sp, 48
	add.d	$a1, $s4, $a1
	addi.w	$s4, $a1, 1
	alsl.d	$a1, $s4, $s2, 1
	ld.bu	$a1, $a1, 1
	slli.d	$a2, $s4, 1
	ldx.bu	$a2, $s2, $a2
	ld.d	$a3, $s0, 304
	slli.d	$a4, $a1, 5
	ld.d	$a5, $sp, 8                     # 8-byte Folded Reload
	add.d	$a4, $a5, $a4
	slli.d	$a5, $a2, 2
	ldx.w	$a4, $a4, $a5
	ld.d	$a5, $sp, 24                    # 8-byte Folded Reload
	or	$a3, $a3, $a5
	st.d	$a3, $s0, 304
	mul.d	$a0, $a4, $a0
	sll.w	$a0, $a0, $s7
	addi.w	$a0, $a0, 32
	srli.d	$a0, $a0, 6
	add.w	$a1, $s5, $a1
	slli.d	$a1, $a1, 6
	addi.d	$a3, $fp, 1384
	add.d	$a1, $a3, $a1
	ld.d	$a3, $sp, 32                    # 8-byte Folded Reload
	add.d	$a2, $a3, $a2
	slli.d	$a2, $a2, 2
	addi.w	$s6, $s6, 1
	stx.w	$a0, $a1, $a2
	ori	$a0, $zero, 64
	bltu	$s6, $a0, .LBB23_15
.LBB23_17:                              # %.loopexit
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
	.text
	.globl	decode_ipcm_mb
	.p2align	5
	.type	decode_ipcm_mb,@function
decode_ipcm_mb:                         # @decode_ipcm_mb
# %bb.0:
	addi.d	$sp, $sp, -80
	st.d	$fp, $sp, 72                    # 8-byte Folded Spill
	st.d	$s0, $sp, 64                    # 8-byte Folded Spill
	st.d	$s1, $sp, 56                    # 8-byte Folded Spill
	st.d	$s2, $sp, 48                    # 8-byte Folded Spill
	st.d	$s3, $sp, 40                    # 8-byte Folded Spill
	st.d	$s4, $sp, 32                    # 8-byte Folded Spill
	st.d	$s5, $sp, 24                    # 8-byte Folded Spill
	st.d	$s6, $sp, 16                    # 8-byte Folded Spill
	st.d	$s7, $sp, 8                     # 8-byte Folded Spill
	ldptr.d	$a1, $a0, 5600
	ld.wu	$a2, $a0, 4
	addi.d	$a3, $a0, 2047
	addi.d	$a5, $a3, 361
	pcalau12i	$a3, %got_pc_hi20(dec_picture)
	ld.d	$a3, $a3, %got_pc_lo12(dec_picture)
	ld.d	$a6, $a3, 0
	lu12i.w	$a4, 77
	ori	$a7, $a4, 1528
	ldx.d	$t0, $a6, $a7
	ld.w	$t1, $a0, 80
	ld.w	$a6, $a0, 84
	move	$a7, $zero
	alsl.d	$t0, $t1, $t0, 3
	slli.d	$t1, $a6, 1
	ori	$t2, $zero, 16
	.p2align	4, , 16
.LBB24_1:                               # %.preheader65
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$t3, $a7, 31, 2
	alsl.d	$t3, $t3, $t3, 1
	slli.d	$t3, $t3, 8
	add.d	$t3, $a5, $t3
	andi	$t4, $a7, 3
	slli.d	$t5, $t4, 4
	ld.d	$t6, $t0, 0
	ldx.h	$t5, $t3, $t5
	alsl.d	$t3, $t4, $t3, 4
	stx.h	$t5, $t6, $t1
	ld.h	$t4, $t3, 4
	ld.h	$t5, $t3, 8
	ld.h	$t7, $t3, 12
	alsl.d	$t6, $a6, $t6, 1
	st.h	$t4, $t6, 2
	st.h	$t5, $t6, 4
	st.h	$t7, $t6, 6
	ld.h	$t4, $t3, 64
	ld.h	$t5, $t3, 68
	ld.h	$t7, $t3, 72
	ld.h	$t8, $t3, 76
	st.h	$t4, $t6, 8
	st.h	$t5, $t6, 10
	st.h	$t7, $t6, 12
	st.h	$t8, $t6, 14
	ld.h	$t4, $t3, 128
	ld.h	$t5, $t3, 132
	ld.h	$t7, $t3, 136
	ld.h	$t8, $t3, 140
	st.h	$t4, $t6, 16
	st.h	$t5, $t6, 18
	st.h	$t7, $t6, 20
	st.h	$t8, $t6, 22
	ld.h	$t4, $t3, 192
	ld.h	$t5, $t3, 196
	ld.h	$t7, $t3, 200
	ld.h	$t3, $t3, 204
	st.h	$t4, $t6, 24
	st.h	$t5, $t6, 26
	st.h	$t7, $t6, 28
	st.h	$t3, $t6, 30
	addi.d	$a7, $a7, 1
	addi.d	$t0, $t0, 8
	bne	$a7, $t2, .LBB24_1
# %bb.2:
	ld.d	$a3, $a3, 0
	ori	$a4, $a4, 1536
	add.d	$a3, $a3, $a4
	ld.w	$a4, $a3, 116
	ori	$a5, $zero, 408
	mul.d	$a2, $a2, $a5
	add.d	$a1, $a1, $a2
	lu12i.w	$a2, 1
	beqz	$a4, .LBB24_24
# %bb.3:                                # %.preheader64
	ldptr.w	$a4, $a0, 5936
	blez	$a4, .LBB24_24
# %bb.4:                                # %.preheader63.lr.ph
	ldptr.w	$t0, $a0, 5932
	pcalau12i	$a6, %pc_hi20(.LCPI24_0)
	pcalau12i	$a7, %pc_hi20(.LCPI24_1)
	lu12i.w	$a5, 262143
	vrepli.d	$vr0, 3
	blez	$t0, .LBB24_14
# %bb.5:                                # %.preheader63.lr.ph.split.us
	ld.d	$t1, $a3, 0
	ld.d	$t3, $t1, 0
	ld.w	$t4, $a0, 88
	move	$t1, $zero
	ld.w	$t2, $a0, 96
	alsl.d	$t3, $t4, $t3, 3
	bstrpick.d	$t4, $t0, 30, 2
	slli.d	$t4, $t4, 2
	slli.d	$t5, $t2, 1
	ori	$t6, $zero, 4
	vld	$vr1, $a6, %pc_lo12(.LCPI24_0)
	vld	$vr2, $a7, %pc_lo12(.LCPI24_1)
	ori	$t7, $a5, 4095
	vreplgr2vr.d	$vr3, $t7
	ori	$t7, $zero, 2664
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
	bstrpick.d	$t8, $t1, 31, 2
	alsl.d	$t8, $t8, $t8, 1
	slli.d	$fp, $t1, 3
	ldx.d	$s0, $t3, $fp
	slli.d	$t8, $t8, 8
	add.d	$t8, $a0, $t8
	andi	$fp, $t1, 3
	bgeu	$t0, $t6, .LBB24_9
# %bb.8:                                #   in Loop: Header=BB24_7 Depth=1
	move	$s1, $zero
	b	.LBB24_12
	.p2align	4, , 16
.LBB24_9:                               # %vector.body.preheader
                                        #   in Loop: Header=BB24_7 Depth=1
	alsl.d	$s1, $t2, $s0, 1
	move	$s2, $t4
	vori.b	$vr4, $vr2, 0
	vori.b	$vr5, $vr1, 0
	.p2align	4, , 16
.LBB24_10:                              # %vector.body
                                        #   Parent Loop BB24_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vsrli.d	$vr6, $vr4, 2
	vsrli.d	$vr7, $vr5, 2
	vand.v	$vr7, $vr7, $vr3
	vand.v	$vr6, $vr6, $vr3
	vpickve2gr.d	$s3, $vr6, 0
	vpickve2gr.d	$s4, $vr6, 1
	vpickve2gr.d	$s5, $vr7, 0
	vpickve2gr.d	$s6, $vr7, 1
	slli.d	$s3, $s3, 6
	add.d	$s3, $t8, $s3
	slli.d	$s4, $s4, 6
	add.d	$s4, $t8, $s4
	slli.d	$s5, $s5, 6
	add.d	$s5, $t8, $s5
	slli.d	$s6, $s6, 6
	add.d	$s6, $t8, $s6
	alsl.d	$s3, $fp, $s3, 4
	alsl.d	$s4, $fp, $s4, 4
	alsl.d	$s5, $fp, $s5, 4
	alsl.d	$s6, $fp, $s6, 4
	vand.v	$vr6, $vr4, $vr0
	vpickve2gr.d	$s7, $vr6, 0
	alsl.d	$s3, $s7, $s3, 2
	vpickve2gr.d	$s7, $vr6, 1
	alsl.d	$s4, $s7, $s4, 2
	vand.v	$vr6, $vr5, $vr0
	vpickve2gr.d	$s7, $vr6, 0
	alsl.d	$s5, $s7, $s5, 2
	vpickve2gr.d	$s7, $vr6, 1
	alsl.d	$s6, $s7, $s6, 2
	ldx.w	$s3, $s3, $t7
	ldx.w	$s4, $s4, $t7
	ldx.w	$s5, $s5, $t7
	ldx.w	$s6, $s6, $t7
	vinsgr2vr.w	$vr6, $s3, 0
	vinsgr2vr.w	$vr6, $s4, 1
	vinsgr2vr.w	$vr6, $s5, 2
	vinsgr2vr.w	$vr6, $s6, 3
	vpickev.h	$vr6, $vr6, $vr6
	vstelm.d	$vr6, $s1, 0, 0
	vaddi.du	$vr4, $vr4, 4
	vaddi.du	$vr5, $vr5, 4
	addi.d	$s2, $s2, -4
	addi.d	$s1, $s1, 8
	bnez	$s2, .LBB24_10
# %bb.11:                               # %middle.block
                                        #   in Loop: Header=BB24_7 Depth=1
	move	$s1, $t4
	beq	$t4, $t0, .LBB24_6
.LBB24_12:                              # %scalar.ph.preheader
                                        #   in Loop: Header=BB24_7 Depth=1
	add.d	$s0, $s0, $t5
	alsl.d	$s0, $s1, $s0, 1
	.p2align	4, , 16
.LBB24_13:                              # %scalar.ph
                                        #   Parent Loop BB24_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	slli.d	$s2, $s1, 4
	bstrpick.d	$s2, $s2, 35, 6
	slli.d	$s2, $s2, 6
	add.d	$s2, $t8, $s2
	alsl.d	$s2, $fp, $s2, 4
	andi	$s3, $s1, 3
	alsl.d	$s2, $s3, $s2, 2
	ldx.h	$s2, $s2, $t7
	st.h	$s2, $s0, 0
	addi.d	$s1, $s1, 1
	addi.d	$s0, $s0, 2
	bne	$t0, $s1, .LBB24_13
	b	.LBB24_6
.LBB24_14:                              # %.preheader61.lr.ph
	ldptr.w	$t0, $a0, 5932
	blez	$t0, .LBB24_24
# %bb.15:                               # %.preheader61.lr.ph.split.us
	ld.d	$t1, $a3, 0
	ld.d	$t3, $t1, 8
	ld.w	$t4, $a0, 88
	move	$t1, $zero
	ld.w	$t2, $a0, 96
	alsl.d	$t3, $t4, $t3, 3
	bstrpick.d	$t4, $t0, 30, 2
	slli.d	$t4, $t4, 2
	slli.d	$t5, $t2, 1
	ori	$t6, $zero, 4
	vld	$vr1, $a6, %pc_lo12(.LCPI24_0)
	vld	$vr2, $a7, %pc_lo12(.LCPI24_1)
	ori	$a6, $a2, 104
	ori	$a5, $a5, 4095
	vreplgr2vr.d	$vr3, $a5
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
	bstrpick.d	$a5, $t1, 31, 2
	alsl.d	$a5, $a5, $a5, 1
	slli.d	$a7, $t1, 3
	ldx.d	$t7, $t3, $a7
	slli.d	$a5, $a5, 8
	add.d	$a5, $a0, $a5
	andi	$a7, $t1, 3
	bgeu	$t0, $t6, .LBB24_19
# %bb.18:                               #   in Loop: Header=BB24_17 Depth=1
	move	$t8, $zero
	b	.LBB24_22
	.p2align	4, , 16
.LBB24_19:                              # %vector.body122.preheader
                                        #   in Loop: Header=BB24_17 Depth=1
	alsl.d	$t8, $t2, $t7, 1
	move	$fp, $t4
	vori.b	$vr4, $vr2, 0
	vori.b	$vr5, $vr1, 0
	.p2align	4, , 16
.LBB24_20:                              # %vector.body122
                                        #   Parent Loop BB24_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vsrli.d	$vr6, $vr4, 2
	vsrli.d	$vr7, $vr5, 2
	vand.v	$vr7, $vr7, $vr3
	vand.v	$vr6, $vr6, $vr3
	vpickve2gr.d	$s0, $vr6, 0
	vpickve2gr.d	$s1, $vr6, 1
	vpickve2gr.d	$s2, $vr7, 0
	vpickve2gr.d	$s3, $vr7, 1
	slli.d	$s0, $s0, 6
	add.d	$s0, $a5, $s0
	slli.d	$s1, $s1, 6
	add.d	$s1, $a5, $s1
	slli.d	$s2, $s2, 6
	add.d	$s2, $a5, $s2
	slli.d	$s3, $s3, 6
	add.d	$s3, $a5, $s3
	alsl.d	$s0, $a7, $s0, 4
	alsl.d	$s1, $a7, $s1, 4
	alsl.d	$s2, $a7, $s2, 4
	alsl.d	$s3, $a7, $s3, 4
	vand.v	$vr6, $vr4, $vr0
	vpickve2gr.d	$s4, $vr6, 0
	alsl.d	$s0, $s4, $s0, 2
	vpickve2gr.d	$s4, $vr6, 1
	alsl.d	$s1, $s4, $s1, 2
	vand.v	$vr6, $vr5, $vr0
	vpickve2gr.d	$s4, $vr6, 0
	alsl.d	$s2, $s4, $s2, 2
	vpickve2gr.d	$s4, $vr6, 1
	alsl.d	$s3, $s4, $s3, 2
	ldx.w	$s0, $s0, $a6
	ldx.w	$s1, $s1, $a6
	ldx.w	$s2, $s2, $a6
	ldx.w	$s3, $s3, $a6
	vinsgr2vr.w	$vr6, $s0, 0
	vinsgr2vr.w	$vr6, $s1, 1
	vinsgr2vr.w	$vr6, $s2, 2
	vinsgr2vr.w	$vr6, $s3, 3
	vpickev.h	$vr6, $vr6, $vr6
	vstelm.d	$vr6, $t8, 0, 0
	vaddi.du	$vr4, $vr4, 4
	vaddi.du	$vr5, $vr5, 4
	addi.d	$fp, $fp, -4
	addi.d	$t8, $t8, 8
	bnez	$fp, .LBB24_20
# %bb.21:                               # %middle.block127
                                        #   in Loop: Header=BB24_17 Depth=1
	move	$t8, $t4
	beq	$t4, $t0, .LBB24_16
.LBB24_22:                              # %scalar.ph117.preheader
                                        #   in Loop: Header=BB24_17 Depth=1
	add.d	$t7, $t7, $t5
	alsl.d	$t7, $t8, $t7, 1
	.p2align	4, , 16
.LBB24_23:                              # %scalar.ph117
                                        #   Parent Loop BB24_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	slli.d	$fp, $t8, 4
	bstrpick.d	$fp, $fp, 35, 6
	slli.d	$fp, $fp, 6
	add.d	$fp, $a5, $fp
	alsl.d	$fp, $a7, $fp, 4
	andi	$s0, $t8, 3
	alsl.d	$fp, $s0, $fp, 2
	ldx.h	$fp, $fp, $a6
	st.h	$fp, $t7, 0
	addi.d	$t8, $t8, 1
	addi.d	$t7, $t7, 2
	bne	$t0, $t8, .LBB24_23
	b	.LBB24_16
.LBB24_24:                              # %.loopexit
	st.w	$zero, $a1, 0
	pcalau12i	$a4, %got_pc_hi20(img)
	ld.d	$a4, $a4, %got_pc_lo12(img)
	ld.d	$a4, $a4, 0
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
	lu12i.w	$a0, 15
	ori	$a0, $a0, 4095
	st.d	$a0, $a1, 304
	pcalau12i	$a0, %got_pc_hi20(last_dquant)
	ld.d	$a0, $a0, %got_pc_lo12(last_dquant)
	st.w	$zero, $a0, 0
	ld.d	$s7, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s6, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 64                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.Lfunc_end24:
	.size	decode_ipcm_mb, .Lfunc_end24-decode_ipcm_mb
                                        # -- End function
	.globl	decode_one_macroblock           # -- Begin function decode_one_macroblock
	.p2align	5
	.type	decode_one_macroblock,@function
decode_one_macroblock:                  # @decode_one_macroblock
# %bb.0:
	addi.d	$sp, $sp, -912
	st.d	$ra, $sp, 904                   # 8-byte Folded Spill
	st.d	$fp, $sp, 896                   # 8-byte Folded Spill
	st.d	$s0, $sp, 888                   # 8-byte Folded Spill
	st.d	$s1, $sp, 880                   # 8-byte Folded Spill
	st.d	$s2, $sp, 872                   # 8-byte Folded Spill
	st.d	$s3, $sp, 864                   # 8-byte Folded Spill
	st.d	$s4, $sp, 856                   # 8-byte Folded Spill
	st.d	$s5, $sp, 848                   # 8-byte Folded Spill
	st.d	$s6, $sp, 840                   # 8-byte Folded Spill
	st.d	$s7, $sp, 832                   # 8-byte Folded Spill
	st.d	$s8, $sp, 824                   # 8-byte Folded Spill
	move	$t7, $a0
	ld.w	$a5, $a0, 4
	ldptr.d	$a0, $a0, 5600
	bstrpick.d	$a2, $a5, 31, 0
	ld.w	$a1, $t7, 44
	ori	$a3, $zero, 408
	mul.d	$a2, $a2, $a3
	ori	$a3, $zero, 3
	add.d	$a0, $a0, $a2
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	bne	$a1, $a3, .LBB25_6
# %bb.1:
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 40
	addi.w	$a0, $a0, -9
	addi.w	$a2, $zero, -6
	and	$a0, $a0, $a2
	sltu	$s0, $zero, $a0
	ldptr.w	$a4, $t7, 5624
	st.w	$zero, $sp, 692
	st.w	$zero, $sp, 688
	beqz	$a4, .LBB25_9
.LBB25_2:
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 356
	sltu	$a0, $zero, $a0
	st.d	$a0, $sp, 552                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 40
	ori	$a2, $zero, 14
	bne	$a0, $a2, .LBB25_10
.LBB25_3:
	move	$a0, $t7
	pcaddu18i	$ra, %call36(decode_ipcm_mb)
	jirl	$ra, $ra, 0
.LBB25_4:
	move	$a1, $zero
.LBB25_5:                               # %.loopexit1954
	move	$a0, $a1
	ld.d	$s8, $sp, 824                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 832                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 840                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 848                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 856                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 864                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 872                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 880                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 888                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 896                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 904                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 912
	ret
.LBB25_6:
	ori	$a0, $zero, 4
	bne	$a1, $a0, .LBB25_8
# %bb.7:
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 40
	addi.d	$a0, $a0, -12
	sltui	$s0, $a0, 1
	ldptr.w	$a4, $t7, 5624
	st.w	$zero, $sp, 692
	st.w	$zero, $sp, 688
	bnez	$a4, .LBB25_2
	b	.LBB25_9
.LBB25_8:
	move	$s0, $zero
	ldptr.w	$a4, $t7, 5624
	st.w	$zero, $sp, 692
	st.w	$zero, $sp, 688
	bnez	$a4, .LBB25_2
.LBB25_9:
	st.d	$zero, $sp, 552                 # 8-byte Folded Spill
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 40
	ori	$a2, $zero, 14
	beq	$a0, $a2, .LBB25_3
.LBB25_10:
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	ld.w	$a2, $a2, 396
	st.d	$a2, $sp, 624                   # 8-byte Folded Spill
	addi.d	$a1, $a1, -3
	pcalau12i	$a2, %got_pc_hi20(dec_picture)
	ld.d	$a2, $a2, %got_pc_lo12(dec_picture)
	st.d	$a2, $sp, 232                   # 8-byte Folded Spill
	ld.d	$a2, $a2, 0
	lu12i.w	$fp, 77
	ori	$a3, $fp, 1484
	add.d	$a6, $a2, $a3
	ld.w	$s1, $a6, 168
	addi.d	$a2, $a0, -10
	sltui	$a3, $a2, 1
	ori	$a2, $zero, 1
	masknez	$a2, $a2, $a3
	maskeqz	$a3, $s0, $a3
	andi	$t6, $a5, 1
	lu12i.w	$t4, 1
	ld.d	$a5, $sp, 552                   # 8-byte Folded Reload
	st.d	$t6, $sp, 320                   # 8-byte Folded Spill
	st.d	$t7, $sp, 592                   # 8-byte Folded Spill
	beqz	$a5, .LBB25_19
# %bb.11:
	sltui	$a5, $t6, 1
	pcalau12i	$a7, %got_pc_hi20(Co_located)
	ld.d	$a7, $a7, %got_pc_lo12(Co_located)
	ld.d	$a7, $a7, 0
	ori	$t0, $t4, 760
	masknez	$t0, $t0, $a5
	ori	$t1, $zero, 3240
	maskeqz	$t1, $t1, $a5
	or	$t0, $t1, $t0
	ori	$t1, $t4, 752
	masknez	$t1, $t1, $a5
	ori	$t2, $zero, 3232
	maskeqz	$t2, $t2, $a5
	or	$t1, $t2, $t1
	ori	$t2, $t4, 736
	masknez	$t2, $t2, $a5
	ori	$t3, $zero, 3216
	maskeqz	$t3, $t3, $a5
	or	$t2, $t3, $t2
	ori	$t3, $t4, 744
	masknez	$t3, $t3, $a5
	ori	$t4, $zero, 3224
	maskeqz	$t4, $t4, $a5
	or	$t3, $t4, $t3
	ori	$t4, $zero, 4
	masknez	$t4, $t4, $a5
	ori	$t5, $zero, 2
	maskeqz	$a5, $t5, $a5
	ld.w	$a6, $a6, 0
	ldx.d	$t3, $a7, $t3
	st.d	$t3, $sp, 328                   # 8-byte Folded Spill
	ldx.d	$t2, $a7, $t2
	st.d	$t2, $sp, 448                   # 8-byte Folded Spill
	ldx.d	$t1, $a7, $t1
	st.d	$t1, $sp, 368                   # 8-byte Folded Spill
	ldx.d	$a7, $a7, $t0
	st.d	$a7, $sp, 384                   # 8-byte Folded Spill
	or	$a7, $a5, $t4
	srai.d	$a5, $a6, 1
	addi.d	$a5, $a5, -1
	st.d	$a5, $sp, 304                   # 8-byte Folded Spill
	beqz	$a4, .LBB25_28
# %bb.12:                               # %.preheader1985
	pcalau12i	$a4, %got_pc_hi20(listXsize)
	ld.d	$a4, $a4, %got_pc_lo12(listXsize)
	slli.d	$a5, $a7, 2
	ldx.w	$a6, $a4, $a5
	st.d	$a7, $sp, 408                   # 8-byte Folded Spill
	alsl.d	$a5, $a7, $a4, 2
	bnez	$t6, .LBB25_33
# %bb.13:                               # %.preheader1984.us.preheader
	blez	$a6, .LBB25_16
# %bb.14:                               # %.lr.ph2007.us
	ld.d	$a6, $sp, 408                   # 8-byte Folded Reload
	slli.d	$a6, $a6, 3
	pcalau12i	$a7, %got_pc_hi20(listX)
	ld.d	$a7, $a7, %got_pc_lo12(listX)
	ldx.d	$a6, $a7, $a6
	move	$a7, $zero
	addi.d	$t0, $zero, -2
	ori	$t1, $fp, 1504
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
	ld.d	$a5, $sp, 408                   # 8-byte Folded Reload
	addi.d	$a5, $a5, 1
	slli.d	$a6, $a5, 2
	ldx.w	$a6, $a4, $a6
	blez	$a6, .LBB25_52
# %bb.17:                               # %.lr.ph2007.us.1
	alsl.d	$a4, $a5, $a4, 2
	slli.d	$a5, $a5, 3
	pcalau12i	$a6, %got_pc_hi20(listX)
	ld.d	$a6, $a6, %got_pc_lo12(listX)
	ldx.d	$a5, $a6, $a5
	move	$a6, $zero
	addi.d	$a7, $zero, -2
	ori	$t0, $fp, 1504
	.p2align	4, , 16
.LBB25_18:                              # %.thread1819.us.us.1
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$t1, $a5, 0
	ld.w	$t2, $t1, 0
	addi.d	$t2, $t2, -2
	sltui	$t2, $t2, 1
	maskeqz	$t2, $a7, $t2
	stx.w	$t2, $t1, $t0
	ld.w	$t1, $a4, 0
	addi.d	$a6, $a6, 1
	addi.d	$a5, $a5, 8
	blt	$a6, $t1, .LBB25_18
	b	.LBB25_52
.LBB25_19:                              # %.thread
	pcalau12i	$a5, %got_pc_hi20(Co_located)
	ld.d	$a5, $a5, %got_pc_lo12(Co_located)
	ld.d	$a5, $a5, 0
	ld.w	$a6, $a6, 0
	ld.d	$a7, $a5, 1608
	st.d	$a7, $sp, 328                   # 8-byte Folded Spill
	ld.d	$a7, $a5, 1600
	st.d	$a7, $sp, 448                   # 8-byte Folded Spill
	ld.d	$a7, $a5, 1616
	st.d	$a7, $sp, 368                   # 8-byte Folded Spill
	ld.d	$a5, $a5, 1624
	st.d	$a5, $sp, 384                   # 8-byte Folded Spill
	addi.d	$a5, $a6, -1
	st.d	$a5, $sp, 304                   # 8-byte Folded Spill
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
	ori	$t0, $fp, 1504
	.p2align	4, , 16
.LBB25_22:                              # =>This Inner Loop Header: Depth=1
	ld.d	$t1, $a5, 0
	stx.w	$zero, $t1, $t0
	addi.d	$a7, $a7, 1
	addi.d	$a5, $a5, 8
	blt	$a7, $a6, .LBB25_22
.LBB25_23:                              # %._crit_edge
	ld.w	$a5, $a4, 4
	blez	$a5, .LBB25_26
# %bb.24:                               # %.lr.ph.1
	pcalau12i	$a5, %got_pc_hi20(listX)
	ld.d	$a5, $a5, %got_pc_lo12(listX)
	ld.d	$a5, $a5, 8
	ld.w	$a4, $a4, 4
	move	$a6, $zero
	ori	$a7, $fp, 1504
	.p2align	4, , 16
.LBB25_25:                              # =>This Inner Loop Header: Depth=1
	ld.d	$t0, $a5, 0
	stx.w	$zero, $t0, $a7
	addi.d	$a6, $a6, 1
	addi.d	$a5, $a5, 8
	blt	$a6, $a4, .LBB25_25
.LBB25_26:
	st.d	$zero, $sp, 408                 # 8-byte Folded Spill
	b	.LBB25_52
.LBB25_27:
	move	$a7, $zero
.LBB25_28:                              # %.preheader1982
	pcalau12i	$a4, %got_pc_hi20(listXsize)
	ld.d	$a4, $a4, %got_pc_lo12(listXsize)
	st.d	$a7, $sp, 408                   # 8-byte Folded Spill
	slli.d	$a5, $a7, 2
	ldx.w	$a5, $a4, $a5
	blez	$a5, .LBB25_43
# %bb.29:                               # %.lr.ph2011
	ld.d	$a6, $sp, 408                   # 8-byte Folded Reload
	alsl.d	$a5, $a6, $a4, 2
	slli.d	$a6, $a6, 3
	pcalau12i	$a7, %got_pc_hi20(listX)
	ld.d	$t0, $a7, %got_pc_lo12(listX)
	ldptr.w	$a7, $t7, 5584
	ldx.d	$a6, $t0, $a6
	ori	$t0, $zero, 1
	beq	$a7, $t0, .LBB25_39
# %bb.30:                               # %.lr.ph2011
	ori	$t0, $zero, 2
	bne	$a7, $t0, .LBB25_41
# %bb.31:                               # %.lr.ph2011.split.us2013.preheader
	move	$a7, $zero
	ori	$t0, $fp, 1504
	.p2align	4, , 16
.LBB25_32:                              # %.lr.ph2011.split.us2013
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$t1, $a6, 0
	ld.w	$t2, $t1, 0
	addi.d	$t2, $t2, -2
	sltu	$t2, $zero, $t2
	slli.d	$t2, $t2, 1
	stx.w	$t2, $t1, $t0
	ld.w	$t1, $a5, 0
	addi.d	$a7, $a7, 1
	addi.d	$a6, $a6, 8
	blt	$a7, $t1, .LBB25_32
	b	.LBB25_43
.LBB25_33:                              # %.preheader1984.preheader
	blez	$a6, .LBB25_36
# %bb.34:                               # %.lr.ph2007
	ld.d	$a6, $sp, 408                   # 8-byte Folded Reload
	slli.d	$a6, $a6, 3
	pcalau12i	$a7, %got_pc_hi20(listX)
	ld.d	$a7, $a7, %got_pc_lo12(listX)
	ldx.d	$a6, $a7, $a6
	move	$a7, $zero
	ori	$t0, $fp, 1504
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
	ld.d	$a5, $sp, 408                   # 8-byte Folded Reload
	addi.d	$a5, $a5, 1
	slli.d	$a6, $a5, 2
	ldx.w	$a6, $a4, $a6
	blez	$a6, .LBB25_52
# %bb.37:                               # %.lr.ph2007.1
	alsl.d	$a4, $a5, $a4, 2
	slli.d	$a5, $a5, 3
	pcalau12i	$a6, %got_pc_hi20(listX)
	ld.d	$a6, $a6, %got_pc_lo12(listX)
	ldx.d	$a5, $a6, $a5
	move	$a6, $zero
	ori	$a7, $fp, 1504
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
	move	$a7, $zero
	addi.d	$t0, $zero, -2
	ori	$t1, $fp, 1504
	.p2align	4, , 16
.LBB25_40:                              # %.lr.ph2011.split.us
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$t2, $a6, 0
	ld.w	$t3, $t2, 0
	addi.d	$t3, $t3, -1
	sltui	$t3, $t3, 1
	masknez	$t3, $t0, $t3
	stx.w	$t3, $t2, $t1
	ld.w	$t2, $a5, 0
	addi.d	$a7, $a7, 1
	addi.d	$a6, $a6, 8
	blt	$a7, $t2, .LBB25_40
	b	.LBB25_43
.LBB25_41:                              # %.thread1817.preheader
	move	$a7, $zero
	ori	$t0, $fp, 1504
	.p2align	4, , 16
.LBB25_42:                              # %.thread1817
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$t1, $a6, 0
	stx.w	$zero, $t1, $t0
	ld.w	$t1, $a5, 0
	addi.d	$a7, $a7, 1
	addi.d	$a6, $a6, 8
	blt	$a7, $t1, .LBB25_42
.LBB25_43:                              # %._crit_edge2012
	ld.d	$a5, $sp, 408                   # 8-byte Folded Reload
	addi.d	$a5, $a5, 1
	slli.d	$a6, $a5, 2
	ldx.w	$a6, $a4, $a6
	blez	$a6, .LBB25_52
# %bb.44:                               # %.lr.ph2011.1
	alsl.d	$a4, $a5, $a4, 2
	slli.d	$a5, $a5, 3
	pcalau12i	$a6, %got_pc_hi20(listX)
	ld.d	$a7, $a6, %got_pc_lo12(listX)
	ldptr.w	$a6, $t7, 5584
	ldx.d	$a5, $a7, $a5
	ori	$a7, $zero, 1
	beq	$a6, $a7, .LBB25_48
# %bb.45:                               # %.lr.ph2011.1
	ori	$a7, $zero, 2
	bne	$a6, $a7, .LBB25_50
# %bb.46:                               # %.lr.ph2011.split.us2013.1.preheader
	move	$a6, $zero
	ori	$a7, $fp, 1504
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
	ori	$t0, $fp, 1504
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
	ori	$a7, $fp, 1504
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
	sltui	$s2, $a1, 1
	ori	$a1, $zero, 10
	or	$s3, $a3, $a2
	bne	$a0, $a1, .LBB25_54
# %bb.53:
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.w	$a1, $a0, 324
	ld.d	$a0, $sp, 592                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(intrapred_luma_16x16)
	jirl	$ra, $ra, 0
.LBB25_54:
	addi.w	$a1, $s1, -1
	ld.d	$a2, $sp, 592                   # 8-byte Folded Reload
	ld.w	$a0, $a2, 44
	maskeqz	$s1, $s3, $s2
	masknez	$s2, $s0, $s2
	ori	$a3, $zero, 1
	st.d	$a1, $sp, 296                   # 8-byte Folded Spill
	bne	$a0, $a3, .LBB25_63
# %bb.55:
	ld.w	$a0, $a2, 40
	lu12i.w	$a2, 1
	ld.d	$a3, $sp, 408                   # 8-byte Folded Reload
	beqz	$a0, .LBB25_62
# %bb.56:
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 40
	beqz	$a0, .LBB25_64
# %bb.57:
	ori	$a1, $zero, 8
	bne	$a0, $a1, .LBB25_62
# %bb.58:
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.bu	$a0, $a0, 328
	beqz	$a0, .LBB25_64
# %bb.59:
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.bu	$a0, $a0, 329
	beqz	$a0, .LBB25_64
# %bb.60:
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.bu	$a0, $a0, 330
	beqz	$a0, .LBB25_64
# %bb.61:
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.bu	$a0, $a0, 331
	beqz	$a0, .LBB25_64
.LBB25_62:
	st.d	$zero, $sp, 440                 # 8-byte Folded Spill
	st.d	$zero, $sp, 432                 # 8-byte Folded Spill
	st.d	$zero, $sp, 424                 # 8-byte Folded Spill
	st.d	$zero, $sp, 400                 # 8-byte Folded Spill
	ori	$a0, $zero, 255
	st.d	$a0, $sp, 472                   # 8-byte Folded Spill
	ori	$a0, $zero, 255
	st.d	$a0, $sp, 456                   # 8-byte Folded Spill
	b	.LBB25_126
.LBB25_63:
	st.d	$zero, $sp, 440                 # 8-byte Folded Spill
	st.d	$zero, $sp, 432                 # 8-byte Folded Spill
	st.d	$zero, $sp, 424                 # 8-byte Folded Spill
	st.d	$zero, $sp, 400                 # 8-byte Folded Spill
	ori	$a0, $zero, 255
	st.d	$a0, $sp, 472                   # 8-byte Folded Spill
	ori	$a0, $zero, 255
	st.d	$a0, $sp, 456                   # 8-byte Folded Spill
	lu12i.w	$a2, 1
	ld.d	$a3, $sp, 408                   # 8-byte Folded Reload
	b	.LBB25_126
.LBB25_64:
	ld.d	$s3, $sp, 592                   # 8-byte Folded Reload
	ld.w	$a0, $s3, 4
	addi.w	$s0, $zero, -1
	addi.d	$a3, $sp, 760
	move	$a1, $s0
	move	$a2, $zero
	pcaddu18i	$ra, %call36(getLuma4x4Neighbour)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s3, 4
	addi.d	$a3, $sp, 696
	move	$a1, $zero
	move	$a2, $s0
	pcaddu18i	$ra, %call36(getLuma4x4Neighbour)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s3, 4
	ori	$a1, $zero, 16
	addi.d	$a3, $sp, 640
	move	$a2, $s0
	pcaddu18i	$ra, %call36(getLuma4x4Neighbour)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s3, 4
	addi.d	$a3, $sp, 664
	move	$a1, $s0
	move	$a2, $s0
	pcaddu18i	$ra, %call36(getLuma4x4Neighbour)
	jirl	$ra, $ra, 0
	ldptr.w	$a0, $s3, 5624
	beqz	$a0, .LBB25_72
# %bb.65:
	ld.wu	$a0, $s3, 4
	ldptr.d	$a2, $s3, 5600
	ori	$a1, $zero, 408
	mul.d	$a0, $a0, $a1
	add.d	$a0, $a2, $a0
	ld.w	$a0, $a0, 356
	ld.w	$a6, $sp, 760
	beqz	$a0, .LBB25_78
# %bb.66:
	ori	$a0, $zero, 255
	ori	$a1, $zero, 255
	beqz	$a6, .LBB25_68
# %bb.67:
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	ori	$a3, $fp, 1560
	ldx.d	$a1, $a1, $a3
	ld.w	$a3, $sp, 780
	ld.d	$a1, $a1, 0
	ld.w	$a4, $sp, 764
	ori	$a5, $zero, 408
	slli.d	$a3, $a3, 3
	ldx.d	$a1, $a1, $a3
	ld.w	$a3, $sp, 776
	mul.d	$a4, $a4, $a5
	add.d	$a4, $a2, $a4
	ld.w	$a4, $a4, 356
	ldx.b	$a1, $a1, $a3
	sltui	$a3, $a4, 1
	ext.w.b	$a4, $a1
	slt	$a4, $s0, $a4
	and	$a3, $a3, $a4
	sll.d	$a1, $a1, $a3
.LBB25_68:                              # %._crit_edge2284
	ld.w	$a7, $sp, 696
	beqz	$a7, .LBB25_70
# %bb.69:
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ori	$a3, $fp, 1560
	ldx.d	$a0, $a0, $a3
	ld.w	$a3, $sp, 716
	ld.d	$a0, $a0, 0
	ld.w	$a4, $sp, 700
	ori	$a5, $zero, 408
	slli.d	$a3, $a3, 3
	ldx.d	$a0, $a0, $a3
	ld.w	$a3, $sp, 712
	mul.d	$a4, $a4, $a5
	add.d	$a4, $a2, $a4
	ld.w	$a4, $a4, 356
	ldx.b	$a0, $a0, $a3
	sltui	$a3, $a4, 1
	ext.w.b	$a4, $a0
	slt	$a4, $s0, $a4
	and	$a3, $a3, $a4
	sll.d	$a0, $a0, $a3
.LBB25_70:                              # %._crit_edge2299
	ld.w	$t0, $sp, 664
	beqz	$t0, .LBB25_84
# %bb.71:
	ld.d	$a3, $sp, 232                   # 8-byte Folded Reload
	ld.d	$a3, $a3, 0
	ori	$a4, $fp, 1560
	ldx.d	$a3, $a3, $a4
	ld.w	$a4, $sp, 684
	ld.d	$a3, $a3, 0
	ld.w	$a5, $sp, 668
	ori	$t1, $zero, 408
	slli.d	$a4, $a4, 3
	ldx.d	$a3, $a3, $a4
	ld.w	$a4, $sp, 680
	mul.d	$a5, $a5, $t1
	add.d	$a5, $a2, $a5
	ld.w	$a5, $a5, 356
	ldx.b	$a3, $a3, $a4
	sltui	$a4, $a5, 1
	ext.w.b	$a5, $a3
	slt	$a5, $s0, $a5
	and	$a4, $a4, $a5
	sll.d	$a3, $a3, $a4
	b	.LBB25_85
.LBB25_72:
	ld.w	$a2, $sp, 760
	ori	$a0, $zero, 255
	ori	$a1, $zero, 255
	beqz	$a2, .LBB25_74
# %bb.73:
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	ori	$a3, $fp, 1560
	ldx.d	$a1, $a1, $a3
	ld.w	$a3, $sp, 780
	ld.d	$a1, $a1, 0
	slli.d	$a3, $a3, 3
	ldx.d	$a1, $a1, $a3
	ld.w	$a3, $sp, 776
	ldx.bu	$a1, $a1, $a3
.LBB25_74:
	ld.w	$a6, $sp, 696
	beqz	$a6, .LBB25_76
# %bb.75:
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ori	$a3, $fp, 1560
	ldx.d	$a0, $a0, $a3
	ld.w	$a3, $sp, 716
	ld.d	$a0, $a0, 0
	slli.d	$a3, $a3, 3
	ldx.d	$a0, $a0, $a3
	ld.w	$a3, $sp, 712
	ldx.bu	$a0, $a0, $a3
.LBB25_76:
	ld.w	$a7, $sp, 664
	beqz	$a7, .LBB25_96
# %bb.77:
	ld.d	$a3, $sp, 232                   # 8-byte Folded Reload
	ld.d	$a3, $a3, 0
	ori	$a4, $fp, 1560
	ldx.d	$a3, $a3, $a4
	ld.w	$a4, $sp, 684
	ld.d	$a3, $a3, 0
	slli.d	$a4, $a4, 3
	ldx.d	$a3, $a3, $a4
	ld.w	$a4, $sp, 680
	ldx.bu	$a3, $a3, $a4
	b	.LBB25_97
.LBB25_78:
	ori	$a0, $zero, 255
	ori	$a1, $zero, 255
	beqz	$a6, .LBB25_80
# %bb.79:
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	ori	$a3, $fp, 1560
	ldx.d	$a1, $a1, $a3
	ld.w	$a3, $sp, 780
	ld.d	$a1, $a1, 0
	ld.w	$a4, $sp, 764
	ori	$a5, $zero, 408
	slli.d	$a3, $a3, 3
	ldx.d	$a1, $a1, $a3
	ld.w	$a3, $sp, 776
	mul.d	$a4, $a4, $a5
	add.d	$a4, $a2, $a4
	ld.w	$a4, $a4, 356
	ldx.b	$a1, $a1, $a3
	sltu	$a3, $zero, $a4
	ext.w.b	$a1, $a1
	slti	$a4, $a1, 0
	or	$a3, $a3, $a4
	sra.d	$a1, $a1, $a3
.LBB25_80:                              # %._crit_edge2408
	ld.w	$a7, $sp, 696
	beqz	$a7, .LBB25_82
# %bb.81:
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ori	$a3, $fp, 1560
	ldx.d	$a0, $a0, $a3
	ld.w	$a3, $sp, 716
	ld.d	$a0, $a0, 0
	ld.w	$a4, $sp, 700
	ori	$a5, $zero, 408
	slli.d	$a3, $a3, 3
	ldx.d	$a0, $a0, $a3
	ld.w	$a3, $sp, 712
	mul.d	$a4, $a4, $a5
	add.d	$a4, $a2, $a4
	ld.w	$a4, $a4, 356
	ldx.b	$a0, $a0, $a3
	sltu	$a3, $zero, $a4
	ext.w.b	$a0, $a0
	slti	$a4, $a0, 0
	or	$a3, $a3, $a4
	sra.d	$a0, $a0, $a3
.LBB25_82:                              # %._crit_edge2423
	ld.w	$t0, $sp, 664
	beqz	$t0, .LBB25_108
# %bb.83:
	ld.d	$a3, $sp, 232                   # 8-byte Folded Reload
	ld.d	$a3, $a3, 0
	ori	$a4, $fp, 1560
	ldx.d	$a3, $a3, $a4
	ld.w	$a4, $sp, 684
	ld.d	$a3, $a3, 0
	ld.w	$a5, $sp, 668
	ori	$t1, $zero, 408
	slli.d	$a4, $a4, 3
	ldx.d	$a3, $a3, $a4
	ld.w	$a4, $sp, 680
	mul.d	$a5, $a5, $t1
	add.d	$a5, $a2, $a5
	ld.w	$a5, $a5, 356
	ldx.b	$a3, $a3, $a4
	sltu	$a4, $zero, $a5
	ext.w.b	$a3, $a3
	slti	$a5, $a3, 0
	or	$a4, $a4, $a5
	sra.d	$a3, $a3, $a4
	b	.LBB25_109
.LBB25_84:
	ori	$a3, $zero, 255
.LBB25_85:                              # %._crit_edge2314
	ld.w	$t1, $sp, 640
	beqz	$t1, .LBB25_87
# %bb.86:
	ld.d	$a3, $sp, 232                   # 8-byte Folded Reload
	ld.d	$a3, $a3, 0
	ori	$a4, $fp, 1560
	ldx.d	$a3, $a3, $a4
	ld.w	$a4, $sp, 660
	ld.d	$a3, $a3, 0
	ld.w	$a5, $sp, 644
	ori	$t2, $zero, 408
	slli.d	$a4, $a4, 3
	ldx.d	$a3, $a3, $a4
	ld.w	$a4, $sp, 656
	mul.d	$a5, $a5, $t2
	add.d	$a5, $a2, $a5
	ld.w	$a5, $a5, 356
	ldx.b	$a3, $a3, $a4
	sltui	$a4, $a5, 1
	ext.w.b	$a5, $a3
	slt	$a5, $s0, $a5
	and	$a4, $a4, $a5
	sll.d	$a3, $a3, $a4
.LBB25_87:                              # %._crit_edge2329
	ori	$a4, $zero, 255
	ori	$a5, $zero, 255
	beqz	$a6, .LBB25_89
# %bb.88:
	ld.d	$a5, $sp, 232                   # 8-byte Folded Reload
	ld.d	$a5, $a5, 0
	ori	$a6, $fp, 1560
	ldx.d	$a5, $a5, $a6
	ld.w	$a6, $sp, 780
	ld.d	$a5, $a5, 8
	ld.w	$t2, $sp, 764
	ori	$t3, $zero, 408
	slli.d	$a6, $a6, 3
	ldx.d	$a5, $a5, $a6
	ld.w	$a6, $sp, 776
	mul.d	$t2, $t2, $t3
	add.d	$t2, $a2, $t2
	ld.w	$t2, $t2, 356
	ldx.b	$a5, $a5, $a6
	sltui	$a6, $t2, 1
	ext.w.b	$t2, $a5
	slt	$t2, $s0, $t2
	and	$a6, $a6, $t2
	sll.d	$a5, $a5, $a6
.LBB25_89:                              # %._crit_edge2344
	beqz	$a7, .LBB25_91
# %bb.90:
	ld.d	$a4, $sp, 232                   # 8-byte Folded Reload
	ld.d	$a4, $a4, 0
	ori	$a6, $fp, 1560
	ldx.d	$a4, $a4, $a6
	ld.w	$a6, $sp, 716
	ld.d	$a4, $a4, 8
	ld.w	$a7, $sp, 700
	ori	$t2, $zero, 408
	slli.d	$a6, $a6, 3
	ldx.d	$a4, $a4, $a6
	ld.w	$a6, $sp, 712
	mul.d	$a7, $a7, $t2
	add.d	$a7, $a2, $a7
	ld.w	$a7, $a7, 356
	ldx.b	$a4, $a4, $a6
	sltui	$a6, $a7, 1
	ext.w.b	$a7, $a4
	slt	$a7, $s0, $a7
	and	$a6, $a6, $a7
	sll.d	$a4, $a4, $a6
.LBB25_91:                              # %._crit_edge2360
	beqz	$t0, .LBB25_93
# %bb.92:
	ld.d	$a6, $sp, 232                   # 8-byte Folded Reload
	ld.d	$a6, $a6, 0
	ori	$a7, $fp, 1560
	ldx.d	$a6, $a6, $a7
	ld.w	$a7, $sp, 684
	ld.d	$a6, $a6, 8
	ld.w	$t0, $sp, 668
	ori	$t2, $zero, 408
	slli.d	$a7, $a7, 3
	ldx.d	$a6, $a6, $a7
	ld.w	$a7, $sp, 680
	mul.d	$t0, $t0, $t2
	add.d	$t0, $a2, $t0
	ld.w	$t0, $t0, 356
	ldx.b	$a6, $a6, $a7
	sltui	$a7, $t0, 1
	ext.w.b	$t0, $a6
	slt	$t0, $s0, $t0
	and	$a7, $a7, $t0
	sll.d	$a6, $a6, $a7
	b	.LBB25_94
.LBB25_93:
	ori	$a6, $zero, 255
.LBB25_94:                              # %._crit_edge2376
	beqz	$t1, .LBB25_120
# %bb.95:
	ld.d	$a6, $sp, 232                   # 8-byte Folded Reload
	ld.d	$a6, $a6, 0
	ori	$a7, $fp, 1560
	ldx.d	$a6, $a6, $a7
	ld.w	$a7, $sp, 660
	ld.d	$a6, $a6, 8
	ld.w	$t0, $sp, 644
	ori	$t1, $zero, 408
	slli.d	$a7, $a7, 3
	ldx.d	$a6, $a6, $a7
	ld.w	$a7, $sp, 656
	mul.d	$t0, $t0, $t1
	add.d	$a2, $a2, $t0
	ld.w	$a2, $a2, 356
	ldx.b	$a6, $a6, $a7
	sltui	$a2, $a2, 1
	ext.w.b	$a7, $a6
	slt	$a7, $s0, $a7
	and	$a2, $a2, $a7
	sll.d	$a6, $a6, $a2
	b	.LBB25_120
.LBB25_96:
	ori	$a3, $zero, 255
.LBB25_97:
	ld.w	$t0, $sp, 640
	beqz	$t0, .LBB25_99
# %bb.98:
	ld.d	$a3, $sp, 232                   # 8-byte Folded Reload
	ld.d	$a3, $a3, 0
	ori	$a4, $fp, 1560
	ldx.d	$a3, $a3, $a4
	ld.w	$a4, $sp, 660
	ld.d	$a3, $a3, 0
	slli.d	$a4, $a4, 3
	ldx.d	$a3, $a3, $a4
	ld.w	$a4, $sp, 656
	ldx.bu	$a3, $a3, $a4
.LBB25_99:
	ori	$a4, $zero, 255
	ori	$a5, $zero, 255
	beqz	$a2, .LBB25_101
# %bb.100:
	ld.d	$a2, $sp, 232                   # 8-byte Folded Reload
	ld.d	$a2, $a2, 0
	ori	$a5, $fp, 1560
	ldx.d	$a2, $a2, $a5
	ld.w	$a5, $sp, 780
	ld.d	$a2, $a2, 8
	slli.d	$a5, $a5, 3
	ldx.d	$a2, $a2, $a5
	ld.w	$a5, $sp, 776
	ldx.bu	$a5, $a2, $a5
.LBB25_101:
	beqz	$a6, .LBB25_103
# %bb.102:
	ld.d	$a2, $sp, 232                   # 8-byte Folded Reload
	ld.d	$a2, $a2, 0
	ori	$a4, $fp, 1560
	ldx.d	$a2, $a2, $a4
	ld.w	$a4, $sp, 716
	ld.d	$a2, $a2, 8
	slli.d	$a4, $a4, 3
	ldx.d	$a2, $a2, $a4
	ld.w	$a4, $sp, 712
	ldx.bu	$a4, $a2, $a4
.LBB25_103:
	beqz	$a7, .LBB25_105
# %bb.104:
	ld.d	$a2, $sp, 232                   # 8-byte Folded Reload
	ld.d	$a2, $a2, 0
	ori	$a6, $fp, 1560
	ldx.d	$a2, $a2, $a6
	ld.w	$a6, $sp, 684
	ld.d	$a2, $a2, 8
	slli.d	$a6, $a6, 3
	ldx.d	$a2, $a2, $a6
	ld.w	$a6, $sp, 680
	ldx.bu	$a6, $a2, $a6
	b	.LBB25_106
.LBB25_105:
	ori	$a6, $zero, 255
.LBB25_106:
	beqz	$t0, .LBB25_120
# %bb.107:
	ld.d	$a2, $sp, 232                   # 8-byte Folded Reload
	ld.d	$a2, $a2, 0
	ori	$a6, $fp, 1560
	ldx.d	$a2, $a2, $a6
	ld.w	$a6, $sp, 660
	ld.d	$a2, $a2, 8
	slli.d	$a6, $a6, 3
	ldx.d	$a2, $a2, $a6
	ld.w	$a6, $sp, 656
	ldx.bu	$a6, $a2, $a6
	b	.LBB25_120
.LBB25_108:
	ori	$a3, $zero, 255
.LBB25_109:                             # %._crit_edge2438
	ld.w	$t1, $sp, 640
	beqz	$t1, .LBB25_111
# %bb.110:
	ld.d	$a3, $sp, 232                   # 8-byte Folded Reload
	ld.d	$a3, $a3, 0
	ori	$a4, $fp, 1560
	ldx.d	$a3, $a3, $a4
	ld.w	$a4, $sp, 660
	ld.d	$a3, $a3, 0
	ld.w	$a5, $sp, 644
	ori	$t2, $zero, 408
	slli.d	$a4, $a4, 3
	ldx.d	$a3, $a3, $a4
	ld.w	$a4, $sp, 656
	mul.d	$a5, $a5, $t2
	add.d	$a5, $a2, $a5
	ld.w	$a5, $a5, 356
	ldx.b	$a3, $a3, $a4
	sltu	$a4, $zero, $a5
	ext.w.b	$a3, $a3
	slti	$a5, $a3, 0
	or	$a4, $a4, $a5
	sra.d	$a3, $a3, $a4
.LBB25_111:                             # %._crit_edge2453
	ori	$a4, $zero, 255
	ori	$a5, $zero, 255
	beqz	$a6, .LBB25_113
# %bb.112:
	ld.d	$a5, $sp, 232                   # 8-byte Folded Reload
	ld.d	$a5, $a5, 0
	ori	$a6, $fp, 1560
	ldx.d	$a5, $a5, $a6
	ld.w	$a6, $sp, 780
	ld.d	$a5, $a5, 8
	ld.w	$t2, $sp, 764
	ori	$t3, $zero, 408
	slli.d	$a6, $a6, 3
	ldx.d	$a5, $a5, $a6
	ld.w	$a6, $sp, 776
	mul.d	$t2, $t2, $t3
	add.d	$t2, $a2, $t2
	ld.w	$t2, $t2, 356
	ldx.b	$a5, $a5, $a6
	sltu	$a6, $zero, $t2
	ext.w.b	$a5, $a5
	slti	$t2, $a5, 0
	or	$a6, $a6, $t2
	sra.d	$a5, $a5, $a6
.LBB25_113:                             # %._crit_edge2468
	beqz	$a7, .LBB25_115
# %bb.114:
	ld.d	$a4, $sp, 232                   # 8-byte Folded Reload
	ld.d	$a4, $a4, 0
	ori	$a6, $fp, 1560
	ldx.d	$a4, $a4, $a6
	ld.w	$a6, $sp, 716
	ld.d	$a4, $a4, 8
	ld.w	$a7, $sp, 700
	ori	$t2, $zero, 408
	slli.d	$a6, $a6, 3
	ldx.d	$a4, $a4, $a6
	ld.w	$a6, $sp, 712
	mul.d	$a7, $a7, $t2
	add.d	$a7, $a2, $a7
	ld.w	$a7, $a7, 356
	ldx.b	$a4, $a4, $a6
	sltu	$a6, $zero, $a7
	ext.w.b	$a4, $a4
	slti	$a7, $a4, 0
	or	$a6, $a6, $a7
	sra.d	$a4, $a4, $a6
.LBB25_115:                             # %._crit_edge2484
	beqz	$t0, .LBB25_117
# %bb.116:
	ld.d	$a6, $sp, 232                   # 8-byte Folded Reload
	ld.d	$a6, $a6, 0
	ori	$a7, $fp, 1560
	ldx.d	$a6, $a6, $a7
	ld.w	$a7, $sp, 684
	ld.d	$a6, $a6, 8
	ld.w	$t0, $sp, 668
	ori	$t2, $zero, 408
	slli.d	$a7, $a7, 3
	ldx.d	$a6, $a6, $a7
	ld.w	$a7, $sp, 680
	mul.d	$t0, $t0, $t2
	add.d	$t0, $a2, $t0
	ld.w	$t0, $t0, 356
	ldx.b	$a6, $a6, $a7
	sltu	$a7, $zero, $t0
	ext.w.b	$a6, $a6
	slti	$t0, $a6, 0
	or	$a7, $a7, $t0
	sra.d	$a6, $a6, $a7
	b	.LBB25_118
.LBB25_117:
	ori	$a6, $zero, 255
.LBB25_118:                             # %._crit_edge2500
	beqz	$t1, .LBB25_120
# %bb.119:
	ld.d	$a6, $sp, 232                   # 8-byte Folded Reload
	ld.d	$a6, $a6, 0
	ori	$a7, $fp, 1560
	ldx.d	$a6, $a6, $a7
	ld.w	$a7, $sp, 660
	ld.d	$a6, $a6, 8
	ld.w	$t0, $sp, 644
	ori	$t1, $zero, 408
	slli.d	$a7, $a7, 3
	ldx.d	$a6, $a6, $a7
	ld.w	$a7, $sp, 656
	mul.d	$t0, $t0, $t1
	add.d	$a2, $a2, $t0
	ld.w	$a2, $a2, 356
	ldx.b	$a6, $a6, $a7
	sltu	$a2, $zero, $a2
	ext.w.b	$a6, $a6
	slti	$a7, $a6, 0
	or	$a2, $a2, $a7
	sra.d	$a6, $a6, $a2
.LBB25_120:                             # %._crit_edge2392
	ext.w.b	$a2, $a1
	or	$a1, $a1, $a0
	ext.w.b	$a1, $a1
	ext.w.b	$a0, $a0
	slt	$a1, $s0, $a1
	sltu	$a7, $a2, $a0
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
	sltu	$a7, $a0, $a2
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
	sltu	$a3, $a0, $a2
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
	sltu	$a4, $a0, $a2
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
	st.d	$a7, $sp, 472                   # 8-byte Folded Spill
	andi	$a1, $a7, 128
	or	$a2, $a2, $a0
	st.d	$a2, $sp, 456                   # 8-byte Folded Spill
	bnez	$a1, .LBB25_122
# %bb.121:
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ori	$a1, $fp, 1560
	add.d	$a2, $a0, $a1
	ldx.d	$a4, $a0, $a1
	ld.d	$a5, $a2, 24
	ori	$a0, $zero, 16
	st.d	$a0, $sp, 8
	addi.d	$a1, $sp, 692
	st.d	$a0, $sp, 0
	ld.d	$a0, $sp, 592                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 472                   # 8-byte Folded Reload
	move	$a3, $zero
	move	$a6, $zero
	move	$a7, $zero
	pcaddu18i	$ra, %call36(SetMotionVectorPredictor)
	jirl	$ra, $ra, 0
	ld.d	$a2, $sp, 456                   # 8-byte Folded Reload
.LBB25_122:
	andi	$a0, $a2, 128
	bnez	$a0, .LBB25_124
# %bb.123:
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ori	$a1, $fp, 1560
	add.d	$a3, $a0, $a1
	ldx.d	$a4, $a0, $a1
	ld.d	$a5, $a3, 24
	ori	$a0, $zero, 16
	st.d	$a0, $sp, 8
	addi.d	$a1, $sp, 688
	ori	$a3, $zero, 1
	st.d	$a0, $sp, 0
	ld.d	$a0, $sp, 592                   # 8-byte Folded Reload
	move	$a6, $zero
	move	$a7, $zero
	pcaddu18i	$ra, %call36(SetMotionVectorPredictor)
	jirl	$ra, $ra, 0
	ld.hu	$a0, $sp, 688
	st.d	$a0, $sp, 432                   # 8-byte Folded Spill
	ld.hu	$a0, $sp, 690
	st.d	$a0, $sp, 440                   # 8-byte Folded Spill
	b	.LBB25_125
.LBB25_124:
	st.d	$zero, $sp, 440                 # 8-byte Folded Spill
	st.d	$zero, $sp, 432                 # 8-byte Folded Spill
.LBB25_125:
	lu12i.w	$a2, 1
	ld.d	$a3, $sp, 408                   # 8-byte Folded Reload
	ld.hu	$a0, $sp, 692
	st.d	$a0, $sp, 400                   # 8-byte Folded Spill
	ld.hu	$a0, $sp, 694
	st.d	$a0, $sp, 424                   # 8-byte Folded Spill
.LBB25_126:
	or	$a0, $s1, $s2
	st.d	$a0, $sp, 248                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	addi.d	$a0, $a1, 328
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	addi.d	$a0, $a1, 332
	st.d	$a0, $sp, 208                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 592                   # 8-byte Folded Reload
	addi.d	$a0, $a1, 104
	st.d	$a0, $sp, 200                   # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(listX)
	ld.d	$a0, $a0, %got_pc_lo12(listX)
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	alsl.d	$a0, $a3, $a0, 3
	st.d	$a0, $sp, 560                   # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(listXsize)
	ld.d	$a0, $a0, %got_pc_lo12(listXsize)
	move	$a5, $zero
	move	$a4, $zero
	move	$s1, $zero
	alsl.d	$a0, $a3, $a0, 2
	st.d	$a0, $sp, 360                   # 8-byte Folded Spill
	slli.d	$a0, $a3, 7
	add.d	$a0, $a1, $a0
	addi.d	$a0, $a0, 616
	st.d	$a0, $sp, 352                   # 8-byte Folded Spill
	addi.d	$a0, $a1, 1384
	st.d	$a0, $sp, 512                   # 8-byte Folded Spill
	addi.w	$a0, $zero, -1
	st.d	$a0, $sp, 520                   # 8-byte Folded Spill
	lu12i.w	$a0, 15
	ori	$s2, $a0, 4095
	ori	$a0, $fp, 1528
	st.d	$a0, $sp, 616                   # 8-byte Folded Spill
	ori	$a0, $a2, 1528
	st.d	$a0, $sp, 488                   # 8-byte Folded Spill
	lu12i.w	$a0, -33153
	ori	$a0, $a0, 2220
	st.d	$a0, $sp, 312                   # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 1807
	st.d	$a0, $sp, 344                   # 8-byte Folded Spill
	ori	$a0, $zero, 264
	mul.d	$a0, $a3, $a0
	st.d	$a0, $sp, 480                   # 8-byte Folded Spill
	ori	$a0, $zero, 4
	st.d	$a0, $sp, 632                   # 8-byte Folded Spill
	move	$ra, $s2
	st.d	$s2, $sp, 584                   # 8-byte Folded Spill
	st.d	$s2, $sp, 464                   # 8-byte Folded Spill
	.p2align	4, , 16
.LBB25_127:                             # =>This Loop Header: Depth=1
                                        #     Child Loop BB25_133 Depth 2
                                        #       Child Loop BB25_205 Depth 3
                                        #       Child Loop BB25_194 Depth 3
	bstrpick.d	$a0, $s1, 62, 3
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	addi.d	$a1, $a1, 328
	ldx.bu	$a1, $a1, $a5
	slli.d	$s8, $a0, 3
	st.d	$a4, $sp, 544                   # 8-byte Folded Spill
	andi	$a0, $a4, 1
	slli.d	$s3, $a0, 3
	pcalau12i	$a0, %pc_hi20(active_pps)
	st.d	$a0, $sp, 376                   # 8-byte Folded Spill
	ori	$a0, $zero, 13
	st.d	$s1, $sp, 576                   # 8-byte Folded Spill
	st.d	$a5, $sp, 568                   # 8-byte Folded Spill
	bne	$a1, $a0, .LBB25_129
# %bb.128:                              # %.preheader1962
                                        #   in Loop: Header=BB25_127 Depth=1
	slli.d	$a0, $a5, 3
	andi	$fp, $a0, 8
	slli.d	$a0, $a5, 2
	andi	$s4, $a0, 8
	addi.w	$a1, $a5, 0
	ld.d	$s0, $sp, 592                   # 8-byte Folded Reload
	move	$a0, $s0
	move	$s6, $ra
	pcaddu18i	$ra, %call36(intrapred8x8)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	move	$a1, $fp
	move	$a2, $s4
	pcaddu18i	$ra, %call36(itrans8x8)
	jirl	$ra, $ra, 0
	move	$ra, $s6
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$a1, $sp, 616                   # 8-byte Folded Reload
	ldx.d	$a0, $a0, $a1
	ld.w	$a1, $s0, 80
	alsl.d	$a0, $a1, $a0, 3
	ld.w	$a2, $s0, 84
	slli.d	$a1, $s8, 6
	ld.d	$a6, $sp, 512                   # 8-byte Folded Reload
	add.d	$a3, $a6, $a1
	slli.d	$a1, $s8, 3
	ldx.d	$a4, $a0, $a1
	alsl.d	$a5, $s3, $a3, 2
	slli.d	$a1, $s3, 2
	vldx	$vr0, $a3, $a1
	vld	$vr1, $a5, 16
	alsl.d	$a3, $s3, $a4, 1
	slli.d	$a2, $a2, 1
	vpickev.h	$vr0, $vr1, $vr0
	vstx	$vr0, $a3, $a2
	addi.d	$a3, $s8, 1
	slli.d	$a4, $a3, 6
	add.d	$a4, $a6, $a4
	slli.d	$a3, $a3, 3
	ldx.d	$a3, $a0, $a3
	alsl.d	$a5, $s3, $a4, 2
	vldx	$vr0, $a4, $a1
	vld	$vr1, $a5, 16
	alsl.d	$a3, $s3, $a3, 1
	vpickev.h	$vr0, $vr1, $vr0
	vstx	$vr0, $a3, $a2
	addi.d	$a3, $s8, 2
	slli.d	$a4, $a3, 6
	add.d	$a4, $a6, $a4
	slli.d	$a3, $a3, 3
	ldx.d	$a3, $a0, $a3
	alsl.d	$a5, $s3, $a4, 2
	vldx	$vr0, $a4, $a1
	vld	$vr1, $a5, 16
	alsl.d	$a3, $s3, $a3, 1
	vpickev.h	$vr0, $vr1, $vr0
	vstx	$vr0, $a3, $a2
	addi.d	$a3, $s8, 3
	slli.d	$a4, $a3, 6
	add.d	$a4, $a6, $a4
	slli.d	$a3, $a3, 3
	ldx.d	$a3, $a0, $a3
	alsl.d	$a5, $s3, $a4, 2
	vldx	$vr0, $a4, $a1
	vld	$vr1, $a5, 16
	alsl.d	$a3, $s3, $a3, 1
	vpickev.h	$vr0, $vr1, $vr0
	vstx	$vr0, $a3, $a2
	ori	$a3, $s1, 4
	slli.d	$a4, $a3, 6
	add.d	$a4, $a6, $a4
	slli.d	$a3, $a3, 3
	ldx.d	$a3, $a0, $a3
	alsl.d	$a5, $s3, $a4, 2
	vldx	$vr0, $a4, $a1
	vld	$vr1, $a5, 16
	alsl.d	$a3, $s3, $a3, 1
	vpickev.h	$vr0, $vr1, $vr0
	vstx	$vr0, $a3, $a2
	ori	$a3, $s1, 5
	slli.d	$a4, $a3, 6
	add.d	$a4, $a6, $a4
	slli.d	$a3, $a3, 3
	ldx.d	$a3, $a0, $a3
	alsl.d	$a5, $s3, $a4, 2
	vldx	$vr0, $a4, $a1
	vld	$vr1, $a5, 16
	alsl.d	$a3, $s3, $a3, 1
	vpickev.h	$vr0, $vr1, $vr0
	vstx	$vr0, $a3, $a2
	ori	$a3, $s1, 6
	slli.d	$a4, $a3, 6
	add.d	$a4, $a6, $a4
	slli.d	$a3, $a3, 3
	ldx.d	$a3, $a0, $a3
	alsl.d	$a5, $s3, $a4, 2
	vldx	$vr0, $a4, $a1
	vld	$vr1, $a5, 16
	alsl.d	$a3, $s3, $a3, 1
	vpickev.h	$vr0, $vr1, $vr0
	vstx	$vr0, $a3, $a2
	ori	$a3, $s1, 7
	slli.d	$a4, $a3, 6
	add.d	$a4, $a6, $a4
	slli.d	$a3, $a3, 3
	ldx.d	$a0, $a0, $a3
	alsl.d	$a3, $s3, $a4, 2
	vldx	$vr0, $a4, $a1
	vld	$vr1, $a3, 16
	alsl.d	$a0, $s3, $a0, 1
	b	.LBB25_282
	.p2align	4, , 16
.LBB25_129:                             #   in Loop: Header=BB25_127 Depth=1
	st.d	$s8, $sp, 496                   # 8-byte Folded Spill
	move	$s7, $s1
	ori	$s6, $zero, 11
	st.d	$s3, $sp, 504                   # 8-byte Folded Spill
	b	.LBB25_133
.LBB25_130:                             #   in Loop: Header=BB25_133 Depth=2
	move	$s1, $t8
	move	$fp, $t7
	move	$s3, $t1
	move	$s5, $ra
	move	$s8, $a7
	move	$s0, $t6
	ld.d	$a0, $sp, 624                   # 8-byte Folded Reload
	beqz	$a0, .LBB25_136
.LBB25_131:                             #   in Loop: Header=BB25_133 Depth=2
	move	$ra, $s0
.LBB25_132:                             # %.critedge1813
                                        #   in Loop: Header=BB25_133 Depth=2
	addi.d	$s7, $s7, 1
	ld.d	$a0, $sp, 632                   # 8-byte Folded Reload
	beq	$s7, $a0, .LBB25_280
.LBB25_133:                             # %.preheader2922
                                        #   Parent Loop BB25_127 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB25_205 Depth 3
                                        #       Child Loop BB25_194 Depth 3
	move	$t6, $ra
	pcalau12i	$a0, %pc_hi20(decode_one_macroblock.decode_block_scan)
	addi.d	$a0, $a0, %pc_lo12(decode_one_macroblock.decode_block_scan)
	ldx.bu	$a2, $a0, $s7
	andi	$s4, $a2, 3
	bstrpick.d	$t1, $a2, 3, 2
	ld.d	$a0, $sp, 592                   # 8-byte Folded Reload
	ld.w	$a3, $a0, 92
	ld.w	$a1, $a0, 76
	bstrpick.d	$a4, $a2, 1, 1
	srli.d	$a2, $a2, 3
	bstrins.d	$a4, $a2, 1, 1
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	addi.d	$a2, $a2, 328
	ldx.bu	$s0, $a2, $a4
	slli.d	$t7, $s4, 2
	add.w	$a7, $s4, $a3
	slli.d	$t8, $t1, 2
	add.w	$ra, $t1, $a1
	bne	$s0, $s6, .LBB25_139
# %bb.134:                              #   in Loop: Header=BB25_133 Depth=2
	move	$s3, $t1
	move	$s0, $t6
	move	$s1, $t8
	addi.w	$a2, $t8, 0
	move	$fp, $t7
	move	$a1, $t7
	move	$s8, $a7
	move	$a3, $a7
	move	$s5, $ra
	move	$a4, $ra
	pcaddu18i	$ra, %call36(intrapred)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	beq	$a0, $a1, .LBB25_5
# %bb.135:                              # %.thread1880
                                        #   in Loop: Header=BB25_133 Depth=2
	ld.d	$a0, $sp, 624                   # 8-byte Folded Reload
	bnez	$a0, .LBB25_131
.LBB25_136:                             #   in Loop: Header=BB25_133 Depth=2
	ld.d	$a0, $sp, 592                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 44
	ori	$a1, $zero, 3
	bne	$a0, $a1, .LBB25_138
# %bb.137:                              #   in Loop: Header=BB25_133 Depth=2
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 40
	ori	$a1, $zero, 10
	bne	$a0, $a1, .LBB25_152
.LBB25_138:                             #   in Loop: Header=BB25_133 Depth=2
	addi.w	$a2, $s1, 0
	ld.d	$a0, $sp, 592                   # 8-byte Folded Reload
	move	$a1, $fp
	move	$a3, $s4
	move	$a4, $s3
	move	$a5, $zero
	pcaddu18i	$ra, %call36(itrans)
	jirl	$ra, $ra, 0
	b	.LBB25_153
	.p2align	4, , 16
.LBB25_139:                             #   in Loop: Header=BB25_133 Depth=2
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.w	$a2, $a0, 40
	ori	$a2, $a2, 4
	ori	$a0, $zero, 14
	bne	$a2, $a0, .LBB25_143
.LBB25_140:                             # %.loopexit1965
                                        #   in Loop: Header=BB25_133 Depth=2
	ld.d	$a0, $sp, 248                   # 8-byte Folded Reload
	beqz	$a0, .LBB25_130
# %bb.141:                              #   in Loop: Header=BB25_133 Depth=2
	move	$s5, $ra
	move	$s8, $a7
	move	$s0, $t6
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 40
	ori	$a0, $a0, 4
	addi.w	$a2, $t8, 0
	ori	$a1, $zero, 14
	bne	$a0, $a1, .LBB25_148
# %bb.142:                              #   in Loop: Header=BB25_133 Depth=2
	ld.d	$a0, $sp, 592                   # 8-byte Folded Reload
	move	$a1, $t7
	move	$a3, $s4
	move	$a4, $t1
	move	$a5, $zero
	pcaddu18i	$ra, %call36(itrans)
	jirl	$ra, $ra, 0
	move	$ra, $s0
	ld.d	$a0, $sp, 624                   # 8-byte Folded Reload
	bnez	$a0, .LBB25_132
	b	.LBB25_154
.LBB25_143:                             #   in Loop: Header=BB25_133 Depth=2
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	addi.d	$a2, $a0, 332
	ldx.b	$a0, $a2, $a4
	andi	$a2, $a0, 255
	ori	$a3, $zero, 2
	st.d	$t1, $sp, 608                   # 8-byte Folded Spill
	bne	$a2, $a3, .LBB25_149
# %bb.144:                              #   in Loop: Header=BB25_133 Depth=2
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	ld.d	$a2, $a0, 0
	lu12i.w	$t0, 77
	ori	$t4, $t0, 1560
	add.d	$a0, $a2, $t4
	ld.d	$a3, $a0, 24
	ld.d	$s3, $a3, 0
	ld.d	$t3, $a3, 8
	st.d	$a7, $sp, 536                   # 8-byte Folded Spill
	beqz	$s0, .LBB25_156
# %bb.145:                              # %.thread1827
                                        #   in Loop: Header=BB25_133 Depth=2
	ld.d	$a0, $a0, 0
	ld.d	$a1, $a0, 8
	ld.d	$a0, $a0, 0
	slli.d	$a2, $ra, 3
	ldx.d	$a1, $a1, $a2
	ldx.d	$a0, $a0, $a2
	ldx.b	$a3, $a1, $a7
	ldx.b	$s2, $a0, $a7
	st.d	$a3, $sp, 584                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 552                   # 8-byte Folded Reload
	st.d	$a3, $sp, 464                   # 8-byte Folded Spill
	beqz	$a0, .LBB25_220
.LBB25_146:                             #   in Loop: Header=BB25_133 Depth=2
	ld.d	$a0, $sp, 592                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 76
	slli.d	$a0, $a0, 3
	slli.d	$a1, $t1, 4
	ld.d	$a2, $sp, 320                   # 8-byte Folded Reload
	bnez	$a2, .LBB25_184
# %bb.147:                              #   in Loop: Header=BB25_133 Depth=2
	move	$s5, $t8
	move	$fp, $t7
	add.d	$a0, $a0, $a1
	b	.LBB25_221
.LBB25_148:                             #   in Loop: Header=BB25_133 Depth=2
	ld.d	$a0, $sp, 592                   # 8-byte Folded Reload
	move	$a1, $t7
	move	$a3, $s4
	move	$a4, $t1
	pcaddu18i	$ra, %call36(itrans_sp)
	jirl	$ra, $ra, 0
	move	$ra, $s0
	ld.d	$a0, $sp, 624                   # 8-byte Folded Reload
	bnez	$a0, .LBB25_132
	b	.LBB25_154
.LBB25_149:                             #   in Loop: Header=BB25_133 Depth=2
	ld.d	$a2, $sp, 552                   # 8-byte Folded Reload
	lu12i.w	$a3, 77
	st.d	$s4, $sp, 600                   # 8-byte Folded Spill
	st.d	$t6, $sp, 416                   # 8-byte Folded Spill
	beqz	$a2, .LBB25_155
# %bb.150:                              #   in Loop: Header=BB25_133 Depth=2
	move	$a4, $a3
	ld.d	$a2, $sp, 320                   # 8-byte Folded Reload
	bnez	$a2, .LBB25_172
# %bb.151:                              #   in Loop: Header=BB25_133 Depth=2
	move	$s3, $t8
	move	$fp, $t7
	slli.d	$a2, $t1, 4
	alsl.w	$a3, $a1, $a2, 3
	b	.LBB25_173
.LBB25_152:                             #   in Loop: Header=BB25_133 Depth=2
	addi.w	$a2, $s1, 0
	ld.d	$a0, $sp, 592                   # 8-byte Folded Reload
	move	$a1, $fp
	move	$a3, $s4
	move	$a4, $s3
	pcaddu18i	$ra, %call36(itrans_sp)
	jirl	$ra, $ra, 0
.LBB25_153:                             # %.critedge1813.thread
                                        #   in Loop: Header=BB25_133 Depth=2
	move	$ra, $s0
.LBB25_154:                             # %.critedge1813.thread
                                        #   in Loop: Header=BB25_133 Depth=2
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$a1, $sp, 616                   # 8-byte Folded Reload
	ldx.d	$a0, $a0, $a1
	slli.w	$a1, $s5, 2
	slli.d	$a2, $a1, 3
	ldx.d	$a2, $a0, $a2
	ld.d	$a7, $sp, 592                   # 8-byte Folded Reload
	ld.h	$a3, $a7, 1384
	slli.w	$a4, $s8, 2
	slli.d	$a4, $a4, 1
	stx.h	$a3, $a2, $a4
	ld.h	$a3, $a7, 1388
	addi.d	$a5, $a4, 2
	stx.h	$a3, $a2, $a5
	ld.h	$a3, $a7, 1392
	addi.d	$a6, $a4, 4
	stx.h	$a3, $a2, $a6
	ld.h	$a3, $a7, 1396
	alsl.d	$a0, $a1, $a0, 3
	addi.d	$a1, $a4, 6
	stx.h	$a3, $a2, $a1
	ld.d	$a2, $a0, 8
	ld.h	$a3, $a7, 1448
	stx.h	$a3, $a2, $a4
	ld.h	$a3, $a7, 1452
	stx.h	$a3, $a2, $a5
	ld.h	$a3, $a7, 1456
	stx.h	$a3, $a2, $a6
	ld.h	$a3, $a7, 1460
	stx.h	$a3, $a2, $a1
	ld.d	$a2, $a0, 16
	ld.h	$a3, $a7, 1512
	stx.h	$a3, $a2, $a4
	ld.h	$a3, $a7, 1516
	stx.h	$a3, $a2, $a5
	ld.h	$a3, $a7, 1520
	stx.h	$a3, $a2, $a6
	ld.h	$a3, $a7, 1524
	stx.h	$a3, $a2, $a1
	ld.d	$a0, $a0, 24
	ld.h	$a2, $a7, 1576
	stx.h	$a2, $a0, $a4
	ld.h	$a2, $a7, 1580
	stx.h	$a2, $a0, $a5
	ld.h	$a2, $a7, 1584
	stx.h	$a2, $a0, $a6
	ld.h	$a2, $a7, 1588
	addi.d	$s7, $s7, 1
	stx.h	$a2, $a0, $a1
	ld.d	$a0, $sp, 632                   # 8-byte Folded Reload
	bne	$s7, $a0, .LBB25_133
	b	.LBB25_283
.LBB25_155:                             #   in Loop: Header=BB25_133 Depth=2
	move	$s3, $t8
	move	$fp, $t7
	move	$a4, $a3
	slli.d	$a3, $ra, 4
	b	.LBB25_173
.LBB25_156:                             #   in Loop: Header=BB25_133 Depth=2
	ld.d	$a3, $sp, 592                   # 8-byte Folded Reload
	ld.w	$a4, $a3, 40
	ld.d	$a5, $sp, 488                   # 8-byte Folded Reload
	ldx.w	$a3, $a3, $a5
	beqz	$a4, .LBB25_185
# %bb.157:                              #   in Loop: Header=BB25_133 Depth=2
	ld.d	$a6, $sp, 472                   # 8-byte Folded Reload
	beqz	$a3, .LBB25_162
# %bb.158:                              #   in Loop: Header=BB25_133 Depth=2
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	ld.w	$a2, $a2, 356
	beqz	$a2, .LBB25_162
# %bb.159:                              #   in Loop: Header=BB25_133 Depth=2
	ld.d	$a2, $sp, 592                   # 8-byte Folded Reload
	ld.bu	$a2, $a2, 4
	andi	$a2, $a2, 1
	beqz	$a2, .LBB25_161
# %bb.160:                              #   in Loop: Header=BB25_133 Depth=2
	addi.w	$a1, $a1, -4
.LBB25_161:                             #   in Loop: Header=BB25_133 Depth=2
	srai.d	$a1, $a1, 1
.LBB25_162:                             #   in Loop: Header=BB25_133 Depth=2
	ext.w.b	$a2, $a6
	add.w	$a1, $a1, $t1
	bltz	$a2, .LBB25_196
# %bb.163:                              #   in Loop: Header=BB25_133 Depth=2
	andi	$a3, $a6, 255
	bnez	$a3, .LBB25_166
# %bb.164:                              #   in Loop: Header=BB25_133 Depth=2
	slli.d	$a3, $a1, 3
	ld.d	$a4, $sp, 384                   # 8-byte Folded Reload
	ldx.d	$a3, $a4, $a3
	ldx.bu	$a3, $a3, $a7
	bnez	$a3, .LBB25_166
# %bb.165:                              #   in Loop: Header=BB25_133 Depth=2
	ld.d	$a3, $sp, 560                   # 8-byte Folded Reload
	ld.d	$a3, $a3, 8
	ld.d	$a3, $a3, 0
	ori	$a4, $t0, 1452
	ldx.w	$a3, $a3, $a4
	beqz	$a3, .LBB25_278
.LBB25_166:                             #   in Loop: Header=BB25_133 Depth=2
	slli.d	$a3, $ra, 3
	ldx.d	$a4, $s3, $a3
	slli.d	$a5, $a7, 3
	ldx.d	$a4, $a4, $a5
	ld.d	$a5, $sp, 400                   # 8-byte Folded Reload
	st.h	$a5, $a4, 0
	ld.d	$a5, $sp, 424                   # 8-byte Folded Reload
	st.h	$a5, $a4, 2
	ld.d	$a0, $a0, 0
	ld.d	$a0, $a0, 0
	ldx.d	$a0, $a0, $a3
	stx.b	$a6, $a0, $a7
	ld.d	$a3, $sp, 456                   # 8-byte Folded Reload
	ext.w.b	$a0, $a3
	bltz	$a0, .LBB25_197
.LBB25_167:                             #   in Loop: Header=BB25_133 Depth=2
	andi	$a0, $a3, 255
	bnez	$a0, .LBB25_170
# %bb.168:                              #   in Loop: Header=BB25_133 Depth=2
	slli.d	$a0, $a1, 3
	ld.d	$a1, $sp, 384                   # 8-byte Folded Reload
	ldx.d	$a0, $a1, $a0
	ldx.bu	$a0, $a0, $a7
	bnez	$a0, .LBB25_170
# %bb.169:                              #   in Loop: Header=BB25_133 Depth=2
	ld.d	$a0, $sp, 560                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 8
	ld.d	$a0, $a0, 0
	ori	$a1, $t0, 1452
	ldx.w	$a0, $a0, $a1
	beqz	$a0, .LBB25_279
.LBB25_170:                             #   in Loop: Header=BB25_133 Depth=2
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ori	$a1, $t0, 1584
	ldx.d	$a1, $a0, $a1
	ld.d	$a1, $a1, 8
	slli.d	$a2, $ra, 3
	ldx.d	$a1, $a1, $a2
	slli.d	$a2, $a7, 3
	ldx.d	$a1, $a1, $a2
	ld.d	$a2, $sp, 432                   # 8-byte Folded Reload
	st.h	$a2, $a1, 0
	ld.d	$a2, $sp, 440                   # 8-byte Folded Reload
	st.h	$a2, $a1, 2
	move	$a1, $a3
.LBB25_171:                             # %.thread1821.sink.split
                                        #   in Loop: Header=BB25_133 Depth=2
	ldx.d	$a0, $a0, $t4
	ld.d	$a0, $a0, 8
	slli.d	$a2, $ra, 3
	ldx.d	$a0, $a0, $a2
	stx.b	$a1, $a0, $a7
	b	.LBB25_198
.LBB25_172:                             #   in Loop: Header=BB25_133 Depth=2
	move	$fp, $t7
	move	$s3, $t8
	alsl.d	$a1, $a1, $t8, 1
	addi.d	$a2, $zero, -32
	alsl.w	$a3, $a1, $a2, 2
.LBB25_173:                             #   in Loop: Header=BB25_133 Depth=2
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	ori	$a2, $a4, 1560
	ldx.d	$a4, $a1, $a2
	add.d	$a1, $a1, $a2
	ld.d	$a1, $a1, 24
	slli.d	$s0, $a0, 3
	ldx.d	$a2, $a4, $s0
	ldx.d	$a1, $a1, $s0
	move	$s5, $ra
	slli.d	$a4, $ra, 3
	ldx.d	$a2, $a2, $a4
	ldx.d	$a1, $a1, $a4
	ldx.b	$s2, $a2, $a7
	slli.d	$a2, $a7, 3
	ldx.d	$a1, $a1, $a2
	andi	$a4, $s2, 255
	ld.d	$a2, $sp, 408                   # 8-byte Folded Reload
	add.d	$a0, $a2, $a0
	ld.h	$a2, $a1, 0
	ld.h	$a5, $a1, 2
	slli.d	$a0, $a0, 3
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	ldx.d	$a1, $a1, $a0
	move	$s8, $a7
	alsl.w	$a2, $a7, $a2, 4
	add.w	$a3, $a3, $a5
	ext.w.b	$s4, $a4
	addi.d	$a5, $sp, 760
	move	$a0, $s4
	ld.d	$s1, $sp, 592                   # 8-byte Folded Reload
	move	$a4, $s1
	pcaddu18i	$ra, %call36(get_block)
	jirl	$ra, $ra, 0
	ldptr.w	$a1, $s1, 5800
	move	$t8, $s3
	addi.w	$a6, $s3, 0
	move	$t7, $fp
	slli.d	$a0, $fp, 1
	beqz	$a1, .LBB25_178
# %bb.174:                              #   in Loop: Header=BB25_133 Depth=2
	ld.d	$a1, $sp, 376                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(active_pps)
	ld.w	$a2, $a1, 1120
	beqz	$a2, .LBB25_179
# %bb.175:                              #   in Loop: Header=BB25_133 Depth=2
	ld.d	$a2, $sp, 592                   # 8-byte Folded Reload
	ld.w	$a2, $a2, 44
	beqz	$a2, .LBB25_177
# %bb.176:                              #   in Loop: Header=BB25_133 Depth=2
	ori	$a3, $zero, 3
	bne	$a2, $a3, .LBB25_179
.LBB25_177:                             #   in Loop: Header=BB25_133 Depth=2
	move	$a1, $s2
	ld.d	$a2, $sp, 552                   # 8-byte Folded Reload
	ori	$s6, $zero, 11
	ori	$t1, $zero, 1
	move	$ra, $s5
	bnez	$a2, .LBB25_181
	b	.LBB25_182
.LBB25_178:                             # %.preheader1975.preheader
                                        #   in Loop: Header=BB25_133 Depth=2
	ld.h	$a1, $sp, 760
	slli.d	$a2, $a6, 5
	addi.d	$a3, $s1, 104
	add.d	$a2, $a3, $a2
	ld.h	$a3, $sp, 764
	stx.h	$a1, $a2, $a0
	addi.d	$a1, $a0, 2
	ld.h	$a4, $sp, 768
	stx.h	$a3, $a2, $a1
	ld.h	$a3, $sp, 772
	addi.d	$a5, $a0, 4
	stx.h	$a4, $a2, $a5
	addi.d	$a4, $a0, 6
	stx.h	$a3, $a2, $a4
	addi.d	$a3, $a2, 32
	ld.h	$a6, $sp, 776
	ld.h	$a7, $sp, 780
	ld.h	$t0, $sp, 784
	ld.h	$t1, $sp, 788
	stx.h	$a6, $a3, $a0
	stx.h	$a7, $a3, $a1
	stx.h	$t0, $a3, $a5
	stx.h	$t1, $a3, $a4
	addi.d	$a3, $a2, 64
	ld.h	$a6, $sp, 792
	ld.h	$a7, $sp, 796
	ld.h	$t0, $sp, 800
	ld.h	$t1, $sp, 804
	stx.h	$a6, $a3, $a0
	stx.h	$a7, $a3, $a1
	stx.h	$t0, $a3, $a5
	stx.h	$t1, $a3, $a4
	addi.d	$a2, $a2, 96
	ld.h	$a3, $sp, 808
	ld.h	$a6, $sp, 812
	ld.h	$a7, $sp, 816
	ld.h	$t0, $sp, 820
	stx.h	$a3, $a2, $a0
	stx.h	$a6, $a2, $a1
	stx.h	$a7, $a2, $a5
	stx.h	$t0, $a2, $a4
	ori	$s6, $zero, 11
	ld.d	$t6, $sp, 416                   # 8-byte Folded Reload
	move	$a7, $s8
	move	$ra, $s5
	b	.LBB25_183
.LBB25_179:                             #   in Loop: Header=BB25_133 Depth=2
	ld.w	$a2, $a1, 1124
	move	$a1, $s2
	ori	$s6, $zero, 11
	ori	$t1, $zero, 1
	move	$ra, $s5
	bne	$a2, $t1, .LBB25_182
# %bb.180:                              #   in Loop: Header=BB25_133 Depth=2
	ld.d	$a1, $sp, 592                   # 8-byte Folded Reload
	ld.w	$a1, $a1, 44
	addi.d	$a1, $a1, -1
	sltui	$a1, $a1, 1
	ld.d	$a2, $sp, 552                   # 8-byte Folded Reload
	and	$a2, $a1, $a2
	move	$a1, $s2
	beqz	$a2, .LBB25_182
.LBB25_181:                             #   in Loop: Header=BB25_133 Depth=2
	srai.d	$a1, $s4, 1
.LBB25_182:                             # %.loopexit1965.loopexit2129
                                        #   in Loop: Header=BB25_133 Depth=2
	ld.d	$t0, $sp, 592                   # 8-byte Folded Reload
	ldptr.d	$a2, $t0, 5768
	ldptr.d	$a3, $t0, 5776
	ldx.d	$a2, $a2, $s0
	slli.d	$a1, $a1, 3
	ldx.d	$a3, $a3, $s0
	ldx.d	$a1, $a2, $a1
	ld.d	$a2, $sp, 552                   # 8-byte Folded Reload
	sra.w	$a2, $s4, $a2
	slli.d	$a2, $a2, 3
	ldx.d	$a3, $a3, $a2
	lu12i.w	$a2, 1
	ori	$a2, $a2, 1664
	ldx.wu	$a2, $t0, $a2
	ld.w	$a4, $a1, 0
	ld.w	$a3, $a3, 0
	ldptr.w	$a1, $t0, 5900
	addi.d	$a5, $a2, -1
	ld.w	$a7, $sp, 760
	sll.w	$a5, $t1, $a5
	slli.d	$a6, $a6, 5
	addi.d	$t0, $t0, 104
	add.d	$a6, $t0, $a6
	mul.d	$a7, $a7, $a4
	add.d	$a7, $a5, $a7
	sra.w	$a7, $a7, $a2
	add.w	$a7, $a7, $a3
	srai.d	$t0, $a7, 63
	andn	$a7, $a7, $t0
	slt	$t0, $a7, $a1
	maskeqz	$a7, $a7, $t0
	ld.w	$t1, $sp, 764
	masknez	$t0, $a1, $t0
	or	$a7, $a7, $t0
	stx.h	$a7, $a6, $a0
	mul.d	$a7, $t1, $a4
	add.d	$a7, $a5, $a7
	sra.w	$a7, $a7, $a2
	add.w	$a7, $a7, $a3
	srai.d	$t0, $a7, 63
	andn	$a7, $a7, $t0
	slt	$t0, $a7, $a1
	maskeqz	$a7, $a7, $t0
	masknez	$t0, $a1, $t0
	ld.w	$t1, $sp, 768
	or	$t0, $a7, $t0
	addi.d	$a7, $a0, 2
	stx.h	$t0, $a6, $a7
	mul.d	$t0, $t1, $a4
	add.d	$t0, $a5, $t0
	sra.w	$t0, $t0, $a2
	add.w	$t0, $t0, $a3
	srai.d	$t1, $t0, 63
	andn	$t0, $t0, $t1
	slt	$t1, $t0, $a1
	maskeqz	$t0, $t0, $t1
	masknez	$t1, $a1, $t1
	ld.w	$t2, $sp, 772
	or	$t1, $t0, $t1
	addi.d	$t0, $a0, 4
	stx.h	$t1, $a6, $t0
	mul.d	$t1, $t2, $a4
	add.d	$t1, $a5, $t1
	sra.w	$t1, $t1, $a2
	add.w	$t1, $t1, $a3
	srai.d	$t2, $t1, 63
	andn	$t1, $t1, $t2
	slt	$t2, $t1, $a1
	maskeqz	$t1, $t1, $t2
	masknez	$t2, $a1, $t2
	or	$t2, $t1, $t2
	ld.w	$t3, $sp, 776
	addi.d	$t1, $a0, 6
	stx.h	$t2, $a6, $t1
	addi.d	$t2, $a6, 32
	mul.d	$t3, $t3, $a4
	add.d	$t3, $a5, $t3
	sra.w	$t3, $t3, $a2
	add.w	$t3, $t3, $a3
	srai.d	$t4, $t3, 63
	andn	$t3, $t3, $t4
	slt	$t4, $t3, $a1
	maskeqz	$t3, $t3, $t4
	ld.w	$t5, $sp, 780
	masknez	$t4, $a1, $t4
	or	$t3, $t3, $t4
	stx.h	$t3, $t2, $a0
	mul.d	$t3, $t5, $a4
	add.d	$t3, $a5, $t3
	sra.w	$t3, $t3, $a2
	add.w	$t3, $t3, $a3
	srai.d	$t4, $t3, 63
	andn	$t3, $t3, $t4
	slt	$t4, $t3, $a1
	maskeqz	$t3, $t3, $t4
	ld.w	$t5, $sp, 784
	masknez	$t4, $a1, $t4
	or	$t3, $t3, $t4
	stx.h	$t3, $t2, $a7
	mul.d	$t3, $t5, $a4
	add.d	$t3, $a5, $t3
	sra.w	$t3, $t3, $a2
	add.w	$t3, $t3, $a3
	srai.d	$t4, $t3, 63
	andn	$t3, $t3, $t4
	slt	$t4, $t3, $a1
	maskeqz	$t3, $t3, $t4
	ld.w	$t5, $sp, 788
	masknez	$t4, $a1, $t4
	or	$t3, $t3, $t4
	stx.h	$t3, $t2, $t0
	mul.d	$t3, $t5, $a4
	add.d	$t3, $a5, $t3
	sra.w	$t3, $t3, $a2
	add.w	$t3, $t3, $a3
	srai.d	$t4, $t3, 63
	andn	$t3, $t3, $t4
	slt	$t4, $t3, $a1
	maskeqz	$t3, $t3, $t4
	masknez	$t4, $a1, $t4
	ld.w	$t5, $sp, 792
	or	$t3, $t3, $t4
	stx.h	$t3, $t2, $t1
	addi.d	$t2, $a6, 64
	mul.d	$t3, $t5, $a4
	add.d	$t3, $a5, $t3
	sra.w	$t3, $t3, $a2
	add.w	$t3, $t3, $a3
	srai.d	$t4, $t3, 63
	andn	$t3, $t3, $t4
	slt	$t4, $t3, $a1
	maskeqz	$t3, $t3, $t4
	ld.w	$t5, $sp, 796
	masknez	$t4, $a1, $t4
	or	$t3, $t3, $t4
	stx.h	$t3, $t2, $a0
	mul.d	$t3, $t5, $a4
	add.d	$t3, $a5, $t3
	sra.w	$t3, $t3, $a2
	add.w	$t3, $t3, $a3
	srai.d	$t4, $t3, 63
	andn	$t3, $t3, $t4
	slt	$t4, $t3, $a1
	maskeqz	$t3, $t3, $t4
	ld.w	$t5, $sp, 800
	masknez	$t4, $a1, $t4
	or	$t3, $t3, $t4
	stx.h	$t3, $t2, $a7
	mul.d	$t3, $t5, $a4
	add.d	$t3, $a5, $t3
	sra.w	$t3, $t3, $a2
	add.w	$t3, $t3, $a3
	srai.d	$t4, $t3, 63
	andn	$t3, $t3, $t4
	slt	$t4, $t3, $a1
	maskeqz	$t3, $t3, $t4
	ld.w	$t5, $sp, 804
	masknez	$t4, $a1, $t4
	or	$t3, $t3, $t4
	stx.h	$t3, $t2, $t0
	mul.d	$t3, $t5, $a4
	add.d	$t3, $a5, $t3
	sra.w	$t3, $t3, $a2
	add.w	$t3, $t3, $a3
	srai.d	$t4, $t3, 63
	andn	$t3, $t3, $t4
	slt	$t4, $t3, $a1
	maskeqz	$t3, $t3, $t4
	masknez	$t4, $a1, $t4
	ld.w	$t5, $sp, 808
	or	$t3, $t3, $t4
	stx.h	$t3, $t2, $t1
	addi.d	$a6, $a6, 96
	mul.d	$t2, $t5, $a4
	add.d	$t2, $a5, $t2
	sra.w	$t2, $t2, $a2
	add.w	$t2, $t2, $a3
	srai.d	$t3, $t2, 63
	andn	$t2, $t2, $t3
	slt	$t3, $t2, $a1
	maskeqz	$t2, $t2, $t3
	ld.w	$t4, $sp, 812
	masknez	$t3, $a1, $t3
	or	$t2, $t2, $t3
	stx.h	$t2, $a6, $a0
	mul.d	$a0, $t4, $a4
	add.d	$a0, $a5, $a0
	sra.w	$a0, $a0, $a2
	add.w	$a0, $a0, $a3
	srai.d	$t2, $a0, 63
	andn	$a0, $a0, $t2
	slt	$t2, $a0, $a1
	maskeqz	$a0, $a0, $t2
	ld.w	$t3, $sp, 816
	masknez	$t2, $a1, $t2
	or	$a0, $a0, $t2
	stx.h	$a0, $a6, $a7
	mul.d	$a0, $t3, $a4
	add.d	$a0, $a5, $a0
	sra.w	$a0, $a0, $a2
	add.w	$a0, $a0, $a3
	srai.d	$a7, $a0, 63
	andn	$a0, $a0, $a7
	slt	$a7, $a0, $a1
	maskeqz	$a0, $a0, $a7
	ld.w	$t2, $sp, 820
	masknez	$a7, $a1, $a7
	or	$a0, $a0, $a7
	stx.h	$a0, $a6, $t0
	mul.d	$a0, $t2, $a4
	add.d	$a0, $a5, $a0
	sra.w	$a0, $a0, $a2
	add.w	$a0, $a0, $a3
	srai.d	$a2, $a0, 63
	andn	$a0, $a0, $a2
	slt	$a2, $a0, $a1
	maskeqz	$a0, $a0, $a2
	masknez	$a1, $a1, $a2
	or	$a0, $a0, $a1
	stx.h	$a0, $a6, $t1
	ld.d	$t6, $sp, 416                   # 8-byte Folded Reload
	move	$a7, $s8
.LBB25_183:                             # %.loopexit1965
                                        #   in Loop: Header=BB25_133 Depth=2
	ld.d	$t1, $sp, 608                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 600                   # 8-byte Folded Reload
	b	.LBB25_140
.LBB25_184:                             #   in Loop: Header=BB25_133 Depth=2
	move	$s5, $t8
	move	$fp, $t7
	add.d	$a0, $a1, $a0
	addi.d	$a0, $a0, -32
	b	.LBB25_221
.LBB25_185:                             #   in Loop: Header=BB25_133 Depth=2
	beqz	$a3, .LBB25_190
# %bb.186:                              #   in Loop: Header=BB25_133 Depth=2
	ld.d	$a3, $sp, 104                   # 8-byte Folded Reload
	ld.w	$a3, $a3, 356
	beqz	$a3, .LBB25_190
# %bb.187:                              #   in Loop: Header=BB25_133 Depth=2
	ld.d	$a3, $sp, 592                   # 8-byte Folded Reload
	ld.bu	$a3, $a3, 4
	andi	$a3, $a3, 1
	beqz	$a3, .LBB25_189
# %bb.188:                              #   in Loop: Header=BB25_133 Depth=2
	addi.w	$a1, $a1, -4
.LBB25_189:                             #   in Loop: Header=BB25_133 Depth=2
	srai.d	$a1, $a1, 1
.LBB25_190:                             #   in Loop: Header=BB25_133 Depth=2
	ld.d	$a4, $sp, 448                   # 8-byte Folded Reload
	ld.d	$a3, $a4, 0
	add.w	$a1, $a1, $t1
	slli.d	$s5, $a1, 3
	ldx.d	$a1, $a3, $s5
	ldx.bu	$a1, $a1, $a7
	addi.d	$a1, $a1, -255
	sltui	$a3, $a1, 1
	slli.d	$s6, $a3, 3
	ldx.d	$a1, $a4, $s6
	ldx.d	$a1, $a1, $s5
	ldx.bu	$a1, $a1, $a7
	ori	$a4, $zero, 255
	beq	$a1, $a4, .LBB25_201
# %bb.191:                              # %.preheader1974
                                        #   in Loop: Header=BB25_133 Depth=2
	ld.d	$a6, $sp, 592                   # 8-byte Folded Reload
	ldptr.w	$a0, $a6, 5640
	ld.d	$a1, $sp, 360                   # 8-byte Folded Reload
	ld.w	$a1, $a1, 0
	slt	$a4, $a0, $a1
	masknez	$a1, $a1, $a4
	maskeqz	$a0, $a0, $a4
	or	$a1, $a0, $a1
	slli.d	$s1, $a7, 3
	blez	$a1, .LBB25_202
# %bb.192:                              # %.lr.ph2022
                                        #   in Loop: Header=BB25_133 Depth=2
	ldptr.w	$a0, $a6, 5584
	sltu	$a0, $zero, $a0
	ld.d	$a4, $sp, 552                   # 8-byte Folded Reload
	or	$a0, $a0, $a4
	andi	$a0, $a0, 1
	ld.d	$a4, $sp, 328                   # 8-byte Folded Reload
	alsl.d	$a3, $a3, $a4, 3
	beqz	$a0, .LBB25_204
# %bb.193:                              # %.lr.ph2022.split.us
                                        #   in Loop: Header=BB25_133 Depth=2
	move	$a0, $zero
	ld.d	$a3, $a3, 0
	ld.d	$a5, $sp, 408                   # 8-byte Folded Reload
	slli.d	$a4, $a5, 3
	slli.d	$a5, $a5, 8
	ld.w	$a6, $a6, 12
	ldx.d	$a3, $a3, $s5
	or	$a4, $a5, $a4
	add.d	$a4, $a2, $a4
	ori	$a2, $zero, 1584
	mul.d	$a5, $a6, $a2
	ldx.d	$a2, $a3, $s1
	add.d	$a3, $a4, $a5
	addi.d	$a3, $a3, 24
	bstrpick.d	$a1, $a1, 31, 0
	.p2align	4, , 16
.LBB25_194:                             #   Parent Loop BB25_127 Depth=1
                                        #     Parent Loop BB25_133 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a4, $a3, 0
	beq	$a4, $a2, .LBB25_209
# %bb.195:                              #   in Loop: Header=BB25_194 Depth=3
	addi.w	$a0, $a0, 1
	addi.d	$a1, $a1, -1
	addi.d	$a3, $a3, 8
	bnez	$a1, .LBB25_194
	b	.LBB25_208
.LBB25_196:                             #   in Loop: Header=BB25_133 Depth=2
	ld.d	$a0, $a0, 0
	ld.d	$a0, $a0, 0
	slli.d	$a3, $ra, 3
	ldx.d	$a0, $a0, $a3
	ori	$a4, $zero, 255
	stx.b	$a4, $a0, $a7
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ori	$a4, $t0, 1584
	ldx.d	$a0, $a0, $a4
	ld.d	$a0, $a0, 0
	ldx.d	$a0, $a0, $a3
	slli.d	$a3, $a7, 3
	ldx.d	$a0, $a0, $a3
	st.w	$zero, $a0, 0
	ld.d	$a3, $sp, 456                   # 8-byte Folded Reload
	ext.w.b	$a0, $a3
	bgez	$a0, .LBB25_167
.LBB25_197:                             #   in Loop: Header=BB25_133 Depth=2
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	add.d	$a0, $a1, $t4
	ld.d	$a0, $a0, 24
	ld.d	$a3, $a0, 8
	slli.d	$a0, $ra, 3
	ldx.d	$a3, $a3, $a0
	slli.d	$a4, $a7, 3
	ldx.d	$a3, $a3, $a4
	st.w	$zero, $a3, 0
	ldx.d	$a1, $a1, $t4
	ld.d	$a1, $a1, 8
	ldx.d	$a1, $a1, $a0
	ori	$a3, $zero, 255
	stx.b	$a3, $a1, $a7
	bltz	$a2, .LBB25_203
.LBB25_198:                             # %.thread1821
                                        #   in Loop: Header=BB25_133 Depth=2
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ldx.d	$a0, $a0, $t4
	ld.d	$a1, $a0, 0
	slli.d	$a2, $ra, 3
	ld.d	$a0, $a0, 8
	ldx.d	$a1, $a1, $a2
	ldx.d	$a0, $a0, $a2
	ldx.bu	$a2, $a1, $a7
	ldx.bu	$a0, $a0, $a7
	addi.d	$a1, $a2, -255
	sltui	$a1, $a1, 1
	masknez	$a2, $a2, $a1
	ext.w.b	$s2, $a2
	ori	$a2, $zero, 255
	beq	$a0, $a2, .LBB25_200
# %bb.199:                              #   in Loop: Header=BB25_133 Depth=2
	ext.w.b	$a0, $a0
	ori	$a2, $zero, 2
	sub.w	$a1, $a2, $a1
	st.d	$a1, $sp, 520                   # 8-byte Folded Spill
	st.d	$a0, $sp, 584                   # 8-byte Folded Spill
	st.d	$a0, $sp, 464                   # 8-byte Folded Spill
	b	.LBB25_214
.LBB25_200:                             #   in Loop: Header=BB25_133 Depth=2
	st.d	$zero, $sp, 584                 # 8-byte Folded Spill
	st.d	$zero, $sp, 464                 # 8-byte Folded Spill
	st.d	$zero, $sp, 520                 # 8-byte Folded Spill
	b	.LBB25_214
.LBB25_201:                             # %.preheader1973
                                        #   in Loop: Header=BB25_133 Depth=2
	slli.d	$a1, $ra, 3
	ldx.d	$a2, $s3, $a1
	ldx.d	$a3, $t3, $a1
	slli.d	$a4, $a7, 3
	ldx.d	$a2, $a2, $a4
	ldx.d	$a3, $a3, $a4
	st.h	$zero, $a2, 0
	st.h	$zero, $a3, 0
	st.h	$zero, $a2, 2
	st.h	$zero, $a3, 2
	ld.d	$a0, $a0, 0
	ld.d	$a0, $a0, 0
	ldx.d	$a0, $a0, $a1
	stx.b	$zero, $a0, $a7
	ld.d	$s2, $sp, 232                   # 8-byte Folded Reload
	ld.d	$a0, $s2, 0
	ldx.d	$a0, $a0, $t4
	ld.d	$a0, $a0, 8
	ldx.d	$a0, $a0, $a1
	st.d	$zero, $sp, 584                 # 8-byte Folded Spill
	move	$s2, $zero
	stx.b	$zero, $a0, $a7
	b	.LBB25_214
.LBB25_202:                             #   in Loop: Header=BB25_133 Depth=2
	move	$a0, $zero
	b	.LBB25_209
.LBB25_203:                             #   in Loop: Header=BB25_133 Depth=2
	ld.d	$a2, $sp, 232                   # 8-byte Folded Reload
	ld.d	$a1, $a2, 0
	ldx.d	$a1, $a1, $t4
	ld.d	$a1, $a1, 0
	ldx.d	$a0, $a1, $a0
	stx.b	$zero, $a0, $a7
	ld.d	$a0, $a2, 0
	move	$a1, $zero
	b	.LBB25_171
.LBB25_204:                             # %.lr.ph2022.split
                                        #   in Loop: Header=BB25_133 Depth=2
	ld.d	$a0, $a3, 0
	ldx.d	$a0, $a0, $s5
	ld.d	$a2, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a2, $a2, 0
	ldx.d	$a3, $a0, $s1
	move	$a0, $zero
	bstrpick.d	$a1, $a1, 31, 0
	.p2align	4, , 16
.LBB25_205:                             #   Parent Loop BB25_127 Depth=1
                                        #     Parent Loop BB25_133 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a4, $a2, 0
	ld.w	$a5, $a4, 8
	slli.w	$a5, $a5, 1
	beq	$a3, $a5, .LBB25_209
# %bb.206:                              #   in Loop: Header=BB25_205 Depth=3
	ld.w	$a4, $a4, 12
	slli.w	$a4, $a4, 1
	beq	$a3, $a4, .LBB25_209
# %bb.207:                              #   in Loop: Header=BB25_205 Depth=3
	addi.w	$a0, $a0, 1
	addi.d	$a1, $a1, -1
	addi.d	$a2, $a2, 8
	bnez	$a1, .LBB25_205
.LBB25_208:                             # %._crit_edge2023
                                        #   in Loop: Header=BB25_133 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
	addi.w	$a1, $zero, -1111
	st.d	$s4, $sp, 600                   # 8-byte Folded Spill
	move	$s4, $a7
	move	$s8, $ra
	move	$fp, $t7
	st.d	$t8, $sp, 392                   # 8-byte Folded Spill
	move	$s2, $t3
	st.d	$t4, $sp, 584                   # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(error)
	jirl	$ra, $ra, 0
	ld.d	$t4, $sp, 584                   # 8-byte Folded Reload
	move	$t3, $s2
	ld.d	$t8, $sp, 392                   # 8-byte Folded Reload
	move	$t7, $fp
	ld.d	$t1, $sp, 608                   # 8-byte Folded Reload
	move	$ra, $s8
	move	$a7, $s4
	ld.d	$s4, $sp, 600                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 312                   # 8-byte Folded Reload
.LBB25_209:                             # %.thread1824
                                        #   in Loop: Header=BB25_133 Depth=2
	slli.d	$a1, $a0, 2
	ld.d	$a2, $sp, 352                   # 8-byte Folded Reload
	ldx.w	$a2, $a2, $a1
	ld.d	$a1, $sp, 344                   # 8-byte Folded Reload
	bne	$a2, $a1, .LBB25_211
# %bb.210:                              # %.thread1824._crit_edge
                                        #   in Loop: Header=BB25_133 Depth=2
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	b	.LBB25_212
.LBB25_211:                             #   in Loop: Header=BB25_133 Depth=2
	ld.d	$a1, $sp, 560                   # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	slli.d	$a3, $a0, 3
	ldx.d	$a1, $a1, $a3
	lu12i.w	$a4, 77
	ori	$a3, $a4, 1452
	ldx.w	$a3, $a1, $a3
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	beqz	$a3, .LBB25_277
.LBB25_212:                             #   in Loop: Header=BB25_133 Depth=2
	ld.d	$a2, $sp, 368                   # 8-byte Folded Reload
	ldx.d	$a2, $a2, $s6
	lu12i.w	$a3, 77
	ori	$a3, $a3, 1584
	ldx.d	$a3, $a1, $a3
	ldx.d	$a2, $a2, $s5
	ld.d	$a4, $a3, 0
	ldx.d	$a2, $a2, $s1
	slli.d	$a5, $ra, 3
	ldx.d	$a4, $a4, $a5
	ld.h	$a6, $a2, 0
	ldx.d	$a4, $a4, $s1
	st.h	$a6, $a4, 0
	ld.h	$a2, $a2, 2
	st.h	$a2, $a4, 2
	ld.d	$a2, $a3, 8
	ldx.d	$a2, $a2, $a5
	ldx.d	$a2, $a2, $s1
	move	$a3, $zero
	st.h	$zero, $a2, 0
.LBB25_213:                             #   in Loop: Header=BB25_133 Depth=2
	st.h	$a3, $a2, 2
	ldx.d	$a1, $a1, $t4
	ld.d	$a1, $a1, 0
	slli.d	$a2, $ra, 3
	ldx.d	$a1, $a1, $a2
	stx.b	$a0, $a1, $a7
	ld.d	$s2, $sp, 232                   # 8-byte Folded Reload
	ld.d	$a1, $s2, 0
	ldx.d	$a1, $a1, $t4
	ld.d	$a1, $a1, 8
	ldx.d	$a1, $a1, $a2
	st.d	$zero, $sp, 584                 # 8-byte Folded Spill
	st.d	$zero, $sp, 464                 # 8-byte Folded Spill
	ext.w.b	$s2, $a0
	stx.b	$zero, $a1, $a7
.LBB25_214:                             #   in Loop: Header=BB25_133 Depth=2
	move	$t0, $a7
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	move	$s1, $a0
	ld.d	$a1, $a0, 0
	ldx.d	$a2, $a1, $t4
	ld.d	$a0, $a2, 0
	ld.d	$a7, $sp, 592                   # 8-byte Folded Reload
	ld.w	$a3, $a7, 12
	slli.d	$s5, $ra, 3
	ldx.d	$a0, $a0, $s5
	add.d	$a4, $a1, $t4
	ld.d	$a4, $a4, 8
	ori	$a5, $zero, 1584
	mul.d	$a3, $a3, $a5
	ldx.b	$a5, $a0, $t0
	add.d	$a1, $a1, $a3
	ld.d	$a3, $a4, 0
	ld.d	$a6, $sp, 480                   # 8-byte Folded Reload
	add.d	$a6, $a1, $a6
	alsl.d	$a1, $a5, $a6, 3
	ld.d	$a1, $a1, 24
	ldx.d	$a3, $a3, $s5
	slli.d	$s6, $t0, 3
	stx.d	$a1, $a3, $s6
	ld.d	$a1, $a2, 8
	ldx.d	$a1, $a1, $s5
	ldx.b	$a2, $a1, $t0
	ld.d	$a3, $a4, 8
	alsl.d	$a2, $a2, $a6, 3
	ld.d	$a2, $a2, 288
	ldx.d	$a3, $a3, $s5
	stx.d	$a2, $a3, $s6
	ld.w	$a2, $a7, 40
	beqz	$a2, .LBB25_219
# %bb.215:                              #   in Loop: Header=BB25_133 Depth=2
	ldx.b	$a0, $a0, $t0
	move	$a6, $t0
	bltz	$a0, .LBB25_238
# %bb.216:                              #   in Loop: Header=BB25_133 Depth=2
	ld.d	$a0, $sp, 552                   # 8-byte Folded Reload
	st.d	$s4, $sp, 600                   # 8-byte Folded Spill
	st.d	$t8, $sp, 392                   # 8-byte Folded Spill
	st.d	$t3, $sp, 528                   # 8-byte Folded Spill
	st.d	$t7, $sp, 336                   # 8-byte Folded Spill
	beqz	$a0, .LBB25_235
# %bb.217:                              #   in Loop: Header=BB25_133 Depth=2
	ld.d	$a0, $sp, 592                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 76
	slli.d	$a0, $a0, 3
	slli.d	$a1, $t1, 4
	ld.d	$a2, $sp, 320                   # 8-byte Folded Reload
	bnez	$a2, .LBB25_236
# %bb.218:                              #   in Loop: Header=BB25_133 Depth=2
	move	$fp, $t4
	move	$s4, $t1
	move	$s8, $ra
	add.d	$a0, $a0, $a1
	b	.LBB25_237
.LBB25_219:                             #   in Loop: Header=BB25_133 Depth=2
	ld.d	$a3, $sp, 464                   # 8-byte Folded Reload
	move	$a7, $t0
	ld.d	$a0, $sp, 552                   # 8-byte Folded Reload
	st.d	$a3, $sp, 464                   # 8-byte Folded Spill
	bnez	$a0, .LBB25_146
.LBB25_220:                             #   in Loop: Header=BB25_133 Depth=2
	move	$s5, $t8
	move	$fp, $t7
	slli.d	$a0, $ra, 4
.LBB25_221:                             #   in Loop: Header=BB25_133 Depth=2
	move	$s8, $ra
	slli.d	$a1, $ra, 3
	ldx.d	$a2, $s3, $a1
	slli.d	$a3, $a7, 3
	ldx.d	$a4, $a2, $a3
	ldx.d	$a1, $t3, $a1
	ld.h	$a2, $a4, 0
	ldx.d	$a1, $a1, $a3
	alsl.w	$a2, $a7, $a2, 4
	ld.h	$a3, $a1, 0
	ld.h	$a4, $a4, 2
	ld.h	$a5, $a1, 2
	ld.d	$s1, $sp, 560                   # 8-byte Folded Reload
	ld.d	$a1, $s1, 0
	alsl.w	$s6, $a7, $a3, 4
	add.w	$a3, $a0, $a4
	add.w	$a0, $a0, $a5
	st.d	$a0, $sp, 528                   # 8-byte Folded Spill
	addi.d	$a5, $sp, 760
	move	$a0, $s2
	ld.d	$s3, $sp, 592                   # 8-byte Folded Reload
	move	$a4, $s3
	pcaddu18i	$ra, %call36(get_block)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 8
	addi.d	$a5, $sp, 696
	ld.d	$a0, $sp, 584                   # 8-byte Folded Reload
	move	$a2, $s6
	ld.d	$a3, $sp, 528                   # 8-byte Folded Reload
	move	$a4, $s3
	pcaddu18i	$ra, %call36(get_block)
	jirl	$ra, $ra, 0
	beqz	$s0, .LBB25_228
# %bb.222:                              # %.critedge.thread
                                        #   in Loop: Header=BB25_133 Depth=2
	ldptr.w	$a0, $s3, 5800
	ld.d	$a3, $sp, 408                   # 8-byte Folded Reload
	ori	$a7, $zero, 1
	ori	$s6, $zero, 11
	move	$t7, $fp
	move	$t8, $s5
	beqz	$a0, .LBB25_234
# %bb.223:                              # %.thread1872
                                        #   in Loop: Header=BB25_133 Depth=2
	ld.d	$a0, $sp, 376                   # 8-byte Folded Reload
	ld.d	$a2, $a0, %pc_lo12(active_pps)
	ld.w	$a1, $a2, 1124
	addi.d	$a0, $a1, -2
	sltui	$a0, $a0, 1
	maskeqz	$a0, $a3, $a0
	ld.d	$a3, $sp, 464                   # 8-byte Folded Reload
	move	$ra, $s8
.LBB25_224:                             #   in Loop: Header=BB25_133 Depth=2
	ld.w	$a2, $a2, 1120
	beqz	$a2, .LBB25_229
# %bb.225:                              #   in Loop: Header=BB25_133 Depth=2
	ld.d	$a2, $sp, 592                   # 8-byte Folded Reload
	ld.w	$a2, $a2, 44
	beqz	$a2, .LBB25_227
# %bb.226:                              #   in Loop: Header=BB25_133 Depth=2
	ori	$a4, $zero, 3
	bne	$a2, $a4, .LBB25_229
.LBB25_227:                             #   in Loop: Header=BB25_133 Depth=2
	ld.d	$a1, $sp, 552                   # 8-byte Folded Reload
	bnez	$a1, .LBB25_231
	b	.LBB25_232
.LBB25_228:                             #   in Loop: Header=BB25_133 Depth=2
	ori	$a7, $zero, 1
	ori	$s6, $zero, 11
	move	$t7, $fp
	move	$t8, $s5
	ld.d	$a0, $sp, 592                   # 8-byte Folded Reload
	ld.w	$a3, $a0, 40
	bnez	$a3, .LBB25_246
	b	.LBB25_252
.LBB25_229:                             #   in Loop: Header=BB25_133 Depth=2
	bne	$a1, $a7, .LBB25_232
# %bb.230:                              #   in Loop: Header=BB25_133 Depth=2
	ld.d	$a1, $sp, 592                   # 8-byte Folded Reload
	ld.w	$a1, $a1, 44
	addi.d	$a1, $a1, -1
	sltui	$a1, $a1, 1
	ld.d	$a2, $sp, 552                   # 8-byte Folded Reload
	and	$a1, $a1, $a2
	beqz	$a1, .LBB25_232
.LBB25_231:                             #   in Loop: Header=BB25_133 Depth=2
	srai.d	$s0, $s2, 1
	ext.w.h	$a1, $a3
	srai.d	$a5, $a1, 1
	b	.LBB25_233
.LBB25_232:                             #   in Loop: Header=BB25_133 Depth=2
	move	$s0, $s2
	move	$a5, $a3
.LBB25_233:                             # %.preheader1961
                                        #   in Loop: Header=BB25_133 Depth=2
	ld.d	$t2, $sp, 592                   # 8-byte Folded Reload
	ldptr.d	$a1, $t2, 5784
	slli.d	$a0, $a0, 3
	ldx.d	$a2, $a1, $a0
	slli.d	$a3, $s0, 3
	ldx.d	$a2, $a2, $a3
	ldptr.d	$a4, $t2, 5776
	st.d	$a5, $sp, 464                   # 8-byte Folded Spill
	ext.w.h	$a5, $a5
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
	ldx.wu	$a5, $t2, $a3
	addi.w	$a2, $a2, 1
	srai.d	$a3, $a2, 1
	ldptr.w	$a2, $t2, 5900
	addi.d	$a4, $a5, 1
	sll.w	$a5, $a7, $a5
	ld.w	$a7, $sp, 760
	ld.w	$t0, $sp, 696
	addi.w	$t1, $t8, 0
	addi.d	$a6, $t2, 104
	alsl.d	$a6, $t7, $a6, 1
	mul.d	$a7, $a7, $a0
	mul.d	$t0, $t0, $a1
	add.d	$a7, $t0, $a7
	add.d	$a7, $a7, $a5
	sra.w	$a7, $a7, $a4
	add.w	$a7, $a7, $a3
	srai.d	$t0, $a7, 63
	andn	$a7, $a7, $t0
	slt	$t0, $a7, $a2
	maskeqz	$a7, $a7, $t0
	masknez	$t0, $a2, $t0
	or	$t0, $a7, $t0
	ld.w	$t2, $sp, 776
	ld.w	$t3, $sp, 712
	slli.d	$a7, $t1, 5
	stx.h	$t0, $a6, $a7
	mul.d	$t0, $t2, $a0
	mul.d	$t1, $t3, $a1
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
	ld.w	$t2, $sp, 792
	ld.w	$t3, $sp, 728
	addi.d	$t0, $a7, 32
	stx.h	$t1, $a6, $t0
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
	ld.w	$t3, $sp, 808
	ld.w	$t4, $sp, 744
	addi.d	$t1, $a7, 64
	stx.h	$t2, $a6, $t1
	mul.d	$t2, $t3, $a0
	mul.d	$t3, $t4, $a1
	add.d	$t2, $t3, $t2
	add.d	$t2, $t2, $a5
	sra.w	$t2, $t2, $a4
	add.w	$t2, $t2, $a3
	srai.d	$t3, $t2, 63
	andn	$t3, $t2, $t3
	ld.w	$t5, $sp, 764
	ld.w	$t6, $sp, 700
	addi.d	$t2, $a7, 96
	addi.d	$t4, $a6, 2
	mul.d	$t5, $t5, $a0
	mul.d	$t6, $t6, $a1
	add.d	$t5, $t6, $t5
	add.d	$t5, $t5, $a5
	sra.w	$t5, $t5, $a4
	add.w	$t5, $t5, $a3
	srai.d	$t6, $t5, 63
	andn	$t5, $t5, $t6
	slt	$t6, $t5, $a2
	maskeqz	$t5, $t5, $t6
	masknez	$t6, $a2, $t6
	move	$fp, $t7
	ld.w	$t7, $sp, 780
	move	$s3, $t8
	ld.w	$t8, $sp, 716
	or	$t5, $t5, $t6
	stx.h	$t5, $t4, $a7
	mul.d	$t5, $t7, $a0
	mul.d	$t6, $t8, $a1
	add.d	$t5, $t6, $t5
	add.d	$t5, $t5, $a5
	sra.w	$t5, $t5, $a4
	add.w	$t5, $t5, $a3
	srai.d	$t6, $t5, 63
	andn	$t5, $t5, $t6
	slt	$t6, $t5, $a2
	maskeqz	$t5, $t5, $t6
	masknez	$t6, $a2, $t6
	ld.w	$t7, $sp, 796
	ld.w	$t8, $sp, 732
	or	$t5, $t5, $t6
	stx.h	$t5, $t4, $t0
	mul.d	$t5, $t7, $a0
	mul.d	$t6, $t8, $a1
	add.d	$t5, $t6, $t5
	add.d	$t5, $t5, $a5
	sra.w	$t5, $t5, $a4
	add.w	$t5, $t5, $a3
	srai.d	$t6, $t5, 63
	andn	$t5, $t5, $t6
	slt	$t6, $t5, $a2
	maskeqz	$t5, $t5, $t6
	masknez	$t6, $a2, $t6
	ld.w	$t7, $sp, 812
	ld.w	$t8, $sp, 748
	or	$t5, $t5, $t6
	stx.h	$t5, $t4, $t1
	mul.d	$t5, $t7, $a0
	mul.d	$t6, $t8, $a1
	add.d	$t5, $t6, $t5
	add.d	$t5, $t5, $a5
	sra.w	$t5, $t5, $a4
	add.w	$t5, $t5, $a3
	srai.d	$t6, $t5, 63
	andn	$t5, $t5, $t6
	slt	$t6, $t5, $a2
	maskeqz	$t5, $t5, $t6
	masknez	$t6, $a2, $t6
	or	$t5, $t5, $t6
	ld.w	$t6, $sp, 768
	ld.w	$t7, $sp, 704
	stx.h	$t5, $t4, $t2
	addi.d	$t4, $a6, 4
	mul.d	$t5, $t6, $a0
	mul.d	$t6, $t7, $a1
	add.d	$t5, $t6, $t5
	add.d	$t5, $t5, $a5
	sra.w	$t5, $t5, $a4
	add.w	$t5, $t5, $a3
	srai.d	$t6, $t5, 63
	andn	$t5, $t5, $t6
	slt	$t6, $t5, $a2
	maskeqz	$t5, $t5, $t6
	masknez	$t6, $a2, $t6
	ld.w	$t7, $sp, 784
	ld.w	$t8, $sp, 720
	or	$t5, $t5, $t6
	stx.h	$t5, $t4, $a7
	mul.d	$t5, $t7, $a0
	mul.d	$t6, $t8, $a1
	add.d	$t5, $t6, $t5
	add.d	$t5, $t5, $a5
	sra.w	$t5, $t5, $a4
	add.w	$t5, $t5, $a3
	srai.d	$t6, $t5, 63
	andn	$t5, $t5, $t6
	slt	$t6, $t5, $a2
	maskeqz	$t5, $t5, $t6
	masknez	$t6, $a2, $t6
	ld.w	$t7, $sp, 800
	ld.w	$t8, $sp, 736
	or	$t5, $t5, $t6
	stx.h	$t5, $t4, $t0
	mul.d	$t5, $t7, $a0
	mul.d	$t6, $t8, $a1
	add.d	$t5, $t6, $t5
	add.d	$t5, $t5, $a5
	sra.w	$t5, $t5, $a4
	add.w	$t5, $t5, $a3
	srai.d	$t6, $t5, 63
	andn	$t5, $t5, $t6
	slt	$t6, $t5, $a2
	maskeqz	$t5, $t5, $t6
	masknez	$t6, $a2, $t6
	ld.w	$t7, $sp, 816
	ld.w	$t8, $sp, 752
	or	$t5, $t5, $t6
	stx.h	$t5, $t4, $t1
	mul.d	$t5, $t7, $a0
	move	$t7, $fp
	mul.d	$t6, $t8, $a1
	move	$t8, $s3
	add.d	$t5, $t6, $t5
	add.d	$t5, $t5, $a5
	sra.w	$t5, $t5, $a4
	add.w	$t5, $t5, $a3
	srai.d	$t6, $t5, 63
	andn	$t5, $t5, $t6
	slt	$t6, $t5, $a2
	maskeqz	$t5, $t5, $t6
	masknez	$t6, $a2, $t6
	or	$t5, $t5, $t6
	slt	$t6, $t3, $a2
	maskeqz	$t3, $t3, $t6
	masknez	$t6, $a2, $t6
	stx.h	$t5, $t4, $t2
	ld.w	$t4, $sp, 772
	ld.w	$t5, $sp, 708
	or	$t3, $t3, $t6
	stx.h	$t3, $a6, $t2
	mul.d	$t3, $t4, $a0
	mul.d	$t4, $t5, $a1
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
	ld.w	$t4, $sp, 788
	ld.w	$t5, $sp, 724
	addi.d	$a6, $a6, 6
	stx.h	$t3, $a6, $a7
	mul.d	$a7, $t4, $a0
	mul.d	$t3, $t5, $a1
	add.d	$a7, $t3, $a7
	add.d	$a7, $a7, $a5
	sra.w	$a7, $a7, $a4
	add.w	$a7, $a7, $a3
	srai.d	$t3, $a7, 63
	andn	$a7, $a7, $t3
	slt	$t3, $a7, $a2
	maskeqz	$a7, $a7, $t3
	masknez	$t3, $a2, $t3
	ld.w	$t4, $sp, 804
	ld.w	$t5, $sp, 740
	or	$a7, $a7, $t3
	stx.h	$a7, $a6, $t0
	mul.d	$a7, $t4, $a0
	mul.d	$t0, $t5, $a1
	add.d	$a7, $t0, $a7
	add.d	$a7, $a7, $a5
	sra.w	$a7, $a7, $a4
	add.w	$a7, $a7, $a3
	srai.d	$t0, $a7, 63
	andn	$a7, $a7, $t0
	slt	$t0, $a7, $a2
	maskeqz	$a7, $a7, $t0
	masknez	$t0, $a2, $t0
	ld.w	$t3, $sp, 820
	ld.w	$t4, $sp, 756
	or	$a7, $a7, $t0
	stx.h	$a7, $a6, $t1
	mul.d	$a0, $t3, $a0
	move	$t6, $s0
	mul.d	$a1, $t4, $a1
	add.d	$a0, $a1, $a0
	add.d	$a0, $a0, $a5
	sra.w	$a0, $a0, $a4
	add.w	$a0, $a0, $a3
	srai.d	$a1, $a0, 63
	andn	$a0, $a0, $a1
	slt	$a1, $a0, $a2
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $a2, $a1
	or	$a0, $a0, $a1
	stx.h	$a0, $a6, $t2
	b	.LBB25_275
.LBB25_234:                             #   in Loop: Header=BB25_133 Depth=2
	move	$ra, $s8
	b	.LBB25_262
.LBB25_235:                             #   in Loop: Header=BB25_133 Depth=2
	move	$fp, $t4
	move	$s4, $t1
	move	$s8, $ra
	slli.d	$a0, $ra, 4
	b	.LBB25_237
.LBB25_236:                             #   in Loop: Header=BB25_133 Depth=2
	move	$fp, $t4
	move	$s4, $t1
	move	$s8, $ra
	add.d	$a0, $a1, $a0
	addi.d	$a0, $a0, -32
.LBB25_237:                             #   in Loop: Header=BB25_133 Depth=2
	ldx.d	$a1, $s3, $s5
	ldx.d	$a1, $a1, $s6
	ld.h	$a2, $a1, 0
	ld.h	$a3, $a1, 2
	ld.d	$a1, $sp, 560                   # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	alsl.w	$a2, $a6, $a2, 4
	add.w	$a3, $a0, $a3
	addi.d	$a5, $sp, 760
	move	$a0, $s2
	ld.d	$a4, $sp, 592                   # 8-byte Folded Reload
	move	$s3, $a6
	pcaddu18i	$ra, %call36(get_block)
	jirl	$ra, $ra, 0
	move	$a6, $s3
	ld.d	$a0, $s1, 0
	ldx.d	$a0, $a0, $fp
	ld.d	$a0, $a0, 8
	ldx.d	$a1, $a0, $s5
	move	$ra, $s8
	move	$t1, $s4
	ld.d	$s4, $sp, 600                   # 8-byte Folded Reload
	ld.d	$t7, $sp, 336                   # 8-byte Folded Reload
	ld.d	$t8, $sp, 392                   # 8-byte Folded Reload
	ld.d	$t3, $sp, 528                   # 8-byte Folded Reload
.LBB25_238:                             #   in Loop: Header=BB25_133 Depth=2
	ldx.b	$a0, $a1, $a6
	bltz	$a0, .LBB25_242
# %bb.239:                              #   in Loop: Header=BB25_133 Depth=2
	ld.d	$a0, $sp, 552                   # 8-byte Folded Reload
	beqz	$a0, .LBB25_243
# %bb.240:                              #   in Loop: Header=BB25_133 Depth=2
	ld.d	$a0, $sp, 592                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 76
	slli.d	$a0, $a0, 3
	slli.d	$a1, $t1, 4
	ld.d	$a2, $sp, 320                   # 8-byte Folded Reload
	bnez	$a2, .LBB25_244
# %bb.241:                              #   in Loop: Header=BB25_133 Depth=2
	move	$s3, $t8
	move	$fp, $t7
	move	$s8, $ra
	add.d	$a0, $a0, $a1
	b	.LBB25_245
.LBB25_242:                             #   in Loop: Header=BB25_133 Depth=2
	move	$s8, $ra
	ori	$a7, $zero, 1
	ori	$s6, $zero, 11
	ld.d	$a0, $sp, 592                   # 8-byte Folded Reload
	ld.w	$a3, $a0, 40
	bnez	$a3, .LBB25_246
	b	.LBB25_252
.LBB25_243:                             #   in Loop: Header=BB25_133 Depth=2
	move	$s3, $t8
	move	$fp, $t7
	move	$s8, $ra
	slli.d	$a0, $ra, 4
	b	.LBB25_245
.LBB25_244:                             #   in Loop: Header=BB25_133 Depth=2
	move	$s3, $t8
	move	$fp, $t7
	move	$s8, $ra
	add.d	$a0, $a1, $a0
	addi.d	$a0, $a0, -32
.LBB25_245:                             #   in Loop: Header=BB25_133 Depth=2
	ldx.d	$a1, $t3, $s5
	ldx.d	$a1, $a1, $s6
	ld.h	$a2, $a1, 0
	ld.h	$a3, $a1, 2
	ld.d	$a1, $sp, 560                   # 8-byte Folded Reload
	ld.d	$a1, $a1, 8
	alsl.w	$a2, $a6, $a2, 4
	add.w	$a3, $a0, $a3
	addi.d	$a5, $sp, 696
	ld.d	$a0, $sp, 584                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 592                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(get_block)
	jirl	$ra, $ra, 0
	ori	$s6, $zero, 11
	ori	$a7, $zero, 1
	move	$t7, $fp
	move	$t8, $s3
	ld.d	$a0, $sp, 592                   # 8-byte Folded Reload
	ld.w	$a3, $a0, 40
	beqz	$a3, .LBB25_252
.LBB25_246:                             # %.thread1846
                                        #   in Loop: Header=BB25_133 Depth=2
	ld.d	$a0, $sp, 520                   # 8-byte Folded Reload
	bnez	$a0, .LBB25_252
# %bb.247:                              #   in Loop: Header=BB25_133 Depth=2
	ld.d	$a2, $sp, 592                   # 8-byte Folded Reload
	ldptr.w	$a0, $a2, 5800
	move	$ra, $s8
	beqz	$a0, .LBB25_263
# %bb.248:                              #   in Loop: Header=BB25_133 Depth=2
	ori	$a5, $zero, 1
	ld.d	$a0, $sp, 376                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(active_pps)
	ld.w	$a1, $a0, 1120
	beqz	$a1, .LBB25_264
# %bb.249:                              #   in Loop: Header=BB25_133 Depth=2
	ld.d	$a1, $sp, 592                   # 8-byte Folded Reload
	ld.w	$a1, $a1, 44
	beqz	$a1, .LBB25_251
# %bb.250:                              #   in Loop: Header=BB25_133 Depth=2
	ori	$a2, $zero, 3
	bne	$a1, $a2, .LBB25_264
.LBB25_251:                             #   in Loop: Header=BB25_133 Depth=2
	move	$t3, $s2
	ld.d	$a0, $sp, 552                   # 8-byte Folded Reload
	lu12i.w	$a3, 1
	bnez	$a0, .LBB25_266
	b	.LBB25_267
.LBB25_252:                             #   in Loop: Header=BB25_133 Depth=2
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1704
	ld.d	$a1, $sp, 592                   # 8-byte Folded Reload
	ldx.w	$a0, $a1, $a0
	move	$ra, $s8
	beqz	$a3, .LBB25_259
# %bb.253:                              #   in Loop: Header=BB25_133 Depth=2
	ld.d	$a1, $sp, 520                   # 8-byte Folded Reload
	bne	$a1, $a7, .LBB25_259
# %bb.254:                              #   in Loop: Header=BB25_133 Depth=2
	beqz	$a0, .LBB25_268
# %bb.255:                              #   in Loop: Header=BB25_133 Depth=2
	ld.d	$a0, $sp, 376                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(active_pps)
	ld.w	$a1, $a0, 1120
	beqz	$a1, .LBB25_269
# %bb.256:                              #   in Loop: Header=BB25_133 Depth=2
	ld.d	$a1, $sp, 592                   # 8-byte Folded Reload
	ld.w	$a1, $a1, 44
	beqz	$a1, .LBB25_258
# %bb.257:                              #   in Loop: Header=BB25_133 Depth=2
	ori	$a2, $zero, 3
	bne	$a1, $a2, .LBB25_269
.LBB25_258:                             #   in Loop: Header=BB25_133 Depth=2
	ld.d	$a0, $sp, 552                   # 8-byte Folded Reload
	lu12i.w	$a3, 1
	bnez	$a0, .LBB25_271
	b	.LBB25_272
.LBB25_259:                             # %.critedge
                                        #   in Loop: Header=BB25_133 Depth=2
	beqz	$a0, .LBB25_262
# %bb.260:                              #   in Loop: Header=BB25_133 Depth=2
	ld.d	$a0, $sp, 376                   # 8-byte Folded Reload
	ld.d	$a2, $a0, %pc_lo12(active_pps)
	ld.w	$a1, $a2, 1124
	addi.d	$a0, $a1, -2
	sltui	$a0, $a0, 1
	ld.d	$a4, $sp, 408                   # 8-byte Folded Reload
	maskeqz	$a0, $a4, $a0
	beqz	$s0, .LBB25_276
# %bb.261:                              #   in Loop: Header=BB25_133 Depth=2
	ld.d	$a3, $sp, 464                   # 8-byte Folded Reload
	b	.LBB25_224
.LBB25_262:                             # %.preheader1970
                                        #   in Loop: Header=BB25_133 Depth=2
	ld.w	$a0, $sp, 760
	ld.w	$a2, $sp, 696
	addi.w	$a1, $t8, 0
	slli.d	$a1, $a1, 5
	ld.d	$a3, $sp, 592                   # 8-byte Folded Reload
	addi.d	$a3, $a3, 104
	add.d	$a1, $a3, $a1
	add.d	$a0, $a0, $a2
	addi.d	$a0, $a0, 1
	ld.w	$a3, $sp, 764
	ld.w	$a4, $sp, 700
	srli.d	$a0, $a0, 1
	slli.d	$a2, $t7, 1
	stx.h	$a0, $a1, $a2
	add.d	$a0, $a3, $a4
	addi.d	$a0, $a0, 1
	ld.w	$a4, $sp, 768
	ld.w	$a5, $sp, 704
	srli.d	$a0, $a0, 1
	addi.d	$a3, $a2, 2
	stx.h	$a0, $a1, $a3
	add.d	$a0, $a4, $a5
	addi.d	$a0, $a0, 1
	srli.d	$a4, $a0, 1
	addi.d	$a0, $a2, 4
	ld.w	$a5, $sp, 772
	ld.w	$a6, $sp, 708
	stx.h	$a4, $a1, $a0
	ld.w	$a7, $sp, 776
	ld.w	$t0, $sp, 712
	add.d	$a5, $a5, $a6
	addi.d	$a4, $a2, 6
	addi.d	$a6, $a1, 32
	add.d	$a7, $a7, $t0
	ld.w	$t0, $sp, 780
	ld.w	$t1, $sp, 716
	addi.d	$a7, $a7, 1
	srli.d	$a7, $a7, 1
	stx.h	$a7, $a6, $a2
	add.d	$a7, $t0, $t1
	ld.w	$t0, $sp, 784
	ld.w	$t1, $sp, 720
	addi.d	$a7, $a7, 1
	srli.d	$a7, $a7, 1
	stx.h	$a7, $a6, $a3
	add.d	$a7, $t0, $t1
	ld.w	$t0, $sp, 788
	ld.w	$t1, $sp, 724
	addi.d	$a7, $a7, 1
	srli.d	$a7, $a7, 1
	stx.h	$a7, $a6, $a0
	add.d	$a7, $t0, $t1
	addi.d	$a7, $a7, 1
	ld.w	$t0, $sp, 792
	ld.w	$t1, $sp, 728
	srli.d	$a7, $a7, 1
	stx.h	$a7, $a6, $a4
	addi.d	$a6, $a1, 64
	add.d	$a7, $t0, $t1
	ld.w	$t0, $sp, 796
	ld.w	$t1, $sp, 732
	addi.d	$a7, $a7, 1
	srli.d	$a7, $a7, 1
	stx.h	$a7, $a6, $a2
	add.d	$a7, $t0, $t1
	ld.w	$t0, $sp, 800
	ld.w	$t1, $sp, 736
	addi.d	$a7, $a7, 1
	srli.d	$a7, $a7, 1
	stx.h	$a7, $a6, $a3
	add.d	$a7, $t0, $t1
	ld.w	$t0, $sp, 804
	ld.w	$t1, $sp, 740
	addi.d	$a7, $a7, 1
	srli.d	$a7, $a7, 1
	stx.h	$a7, $a6, $a0
	add.d	$a7, $t0, $t1
	addi.d	$a5, $a5, 1
	addi.d	$a7, $a7, 1
	srli.d	$a7, $a7, 1
	stx.h	$a7, $a6, $a4
	ld.w	$a6, $sp, 808
	ld.w	$a7, $sp, 744
	srli.d	$a5, $a5, 1
	stx.h	$a5, $a1, $a4
	addi.d	$a1, $a1, 96
	add.d	$a5, $a6, $a7
	ld.w	$a6, $sp, 812
	ld.w	$a7, $sp, 748
	addi.d	$a5, $a5, 1
	srli.d	$a5, $a5, 1
	stx.h	$a5, $a1, $a2
	add.d	$a2, $a6, $a7
	ld.w	$a5, $sp, 816
	ld.w	$a6, $sp, 752
	addi.d	$a2, $a2, 1
	srli.d	$a2, $a2, 1
	stx.h	$a2, $a1, $a3
	add.d	$a2, $a5, $a6
	ld.w	$a3, $sp, 820
	ld.w	$a5, $sp, 756
	addi.d	$a2, $a2, 1
	srli.d	$a2, $a2, 1
	stx.h	$a2, $a1, $a0
	add.d	$a0, $a3, $a5
	addi.d	$a0, $a0, 1
	srli.d	$a0, $a0, 1
	stx.h	$a0, $a1, $a4
	b	.LBB25_274
.LBB25_263:                             # %.preheader1956.preheader
                                        #   in Loop: Header=BB25_133 Depth=2
	st.d	$zero, $sp, 520                 # 8-byte Folded Spill
	addi.w	$a0, $t8, 0
	slli.d	$a0, $a0, 5
	ld.h	$a1, $sp, 760
	addi.d	$a2, $a2, 104
	add.d	$a0, $a2, $a0
	slli.d	$a2, $t7, 1
	ld.h	$a3, $sp, 764
	stx.h	$a1, $a0, $a2
	addi.d	$a1, $a2, 2
	ld.h	$a4, $sp, 768
	stx.h	$a3, $a0, $a1
	ld.h	$a3, $sp, 772
	addi.d	$a5, $a2, 4
	stx.h	$a4, $a0, $a5
	addi.d	$a4, $a2, 6
	stx.h	$a3, $a0, $a4
	addi.d	$a3, $a0, 32
	ld.h	$a6, $sp, 776
	ld.h	$a7, $sp, 780
	ld.h	$t0, $sp, 784
	ld.h	$t1, $sp, 788
	stx.h	$a6, $a3, $a2
	stx.h	$a7, $a3, $a1
	stx.h	$t0, $a3, $a5
	stx.h	$t1, $a3, $a4
	addi.d	$a3, $a0, 64
	ld.h	$a6, $sp, 792
	ld.h	$a7, $sp, 796
	ld.h	$t0, $sp, 800
	ld.h	$t1, $sp, 804
	stx.h	$a6, $a3, $a2
	stx.h	$a7, $a3, $a1
	stx.h	$t0, $a3, $a5
	stx.h	$t1, $a3, $a4
	addi.d	$a0, $a0, 96
	ld.h	$a3, $sp, 808
	ld.h	$a6, $sp, 812
	ld.h	$a7, $sp, 816
	ld.h	$t0, $sp, 820
	stx.h	$a3, $a0, $a2
	stx.h	$a6, $a0, $a1
	stx.h	$a7, $a0, $a5
	stx.h	$t0, $a0, $a4
	b	.LBB25_274
.LBB25_264:                             #   in Loop: Header=BB25_133 Depth=2
	ld.w	$a0, $a0, 1124
	move	$t3, $s2
	lu12i.w	$a3, 1
	bne	$a0, $a5, .LBB25_267
# %bb.265:                              #   in Loop: Header=BB25_133 Depth=2
	ld.d	$a0, $sp, 592                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 44
	addi.d	$a0, $a0, -1
	sltui	$a0, $a0, 1
	ld.d	$a1, $sp, 552                   # 8-byte Folded Reload
	and	$a0, $a0, $a1
	move	$t3, $s2
	beqz	$a0, .LBB25_267
.LBB25_266:                             #   in Loop: Header=BB25_133 Depth=2
	srai.d	$t3, $s2, 1
.LBB25_267:                             # %.preheader1957
                                        #   in Loop: Header=BB25_133 Depth=2
	ld.d	$a7, $sp, 592                   # 8-byte Folded Reload
	ldptr.d	$a0, $a7, 5768
	ldptr.d	$a1, $a7, 5776
	ld.d	$a0, $a0, 0
	st.d	$zero, $sp, 520                 # 8-byte Folded Spill
	slli.d	$a2, $t3, 3
	ld.d	$a1, $a1, 0
	ldx.d	$a0, $a0, $a2
	ld.d	$a2, $sp, 552                   # 8-byte Folded Reload
	sra.w	$a2, $s2, $a2
	slli.d	$a2, $a2, 3
	ldx.d	$a2, $a1, $a2
	ori	$a1, $a3, 1664
	ldx.wu	$a1, $a7, $a1
	ld.w	$a3, $a0, 0
	ld.w	$a2, $a2, 0
	ldptr.w	$a0, $a7, 5900
	addi.d	$a4, $a1, -1
	sll.w	$a4, $a5, $a4
	ld.w	$a6, $sp, 760
	addi.w	$a5, $t8, 0
	slli.d	$a5, $a5, 5
	addi.d	$a7, $a7, 104
	add.d	$a5, $a7, $a5
	mul.d	$a6, $a6, $a3
	add.d	$a6, $a4, $a6
	sra.w	$a6, $a6, $a1
	add.w	$a6, $a6, $a2
	srai.d	$a7, $a6, 63
	andn	$a6, $a6, $a7
	slt	$a7, $a6, $a0
	maskeqz	$a6, $a6, $a7
	masknez	$a7, $a0, $a7
	ld.w	$t0, $sp, 764
	or	$a7, $a6, $a7
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
	ld.w	$t1, $sp, 768
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
	ld.w	$t2, $sp, 772
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
	or	$t2, $t1, $t2
	move	$t6, $t3
	ld.w	$t3, $sp, 776
	addi.d	$t1, $a6, 6
	stx.h	$t2, $a5, $t1
	addi.d	$t2, $a5, 32
	mul.d	$t3, $t3, $a3
	add.d	$t3, $a4, $t3
	sra.w	$t3, $t3, $a1
	add.w	$t3, $t3, $a2
	srai.d	$t4, $t3, 63
	andn	$t3, $t3, $t4
	slt	$t4, $t3, $a0
	maskeqz	$t3, $t3, $t4
	ld.w	$t5, $sp, 780
	masknez	$t4, $a0, $t4
	or	$t3, $t3, $t4
	stx.h	$t3, $t2, $a6
	mul.d	$t3, $t5, $a3
	add.d	$t3, $a4, $t3
	sra.w	$t3, $t3, $a1
	add.w	$t3, $t3, $a2
	srai.d	$t4, $t3, 63
	andn	$t3, $t3, $t4
	slt	$t4, $t3, $a0
	maskeqz	$t3, $t3, $t4
	ld.w	$t5, $sp, 784
	masknez	$t4, $a0, $t4
	or	$t3, $t3, $t4
	stx.h	$t3, $t2, $a7
	mul.d	$t3, $t5, $a3
	add.d	$t3, $a4, $t3
	sra.w	$t3, $t3, $a1
	add.w	$t3, $t3, $a2
	srai.d	$t4, $t3, 63
	andn	$t3, $t3, $t4
	slt	$t4, $t3, $a0
	maskeqz	$t3, $t3, $t4
	ld.w	$t5, $sp, 788
	masknez	$t4, $a0, $t4
	or	$t3, $t3, $t4
	stx.h	$t3, $t2, $t0
	mul.d	$t3, $t5, $a3
	add.d	$t3, $a4, $t3
	sra.w	$t3, $t3, $a1
	add.w	$t3, $t3, $a2
	srai.d	$t4, $t3, 63
	andn	$t3, $t3, $t4
	slt	$t4, $t3, $a0
	maskeqz	$t3, $t3, $t4
	masknez	$t4, $a0, $t4
	ld.w	$t5, $sp, 792
	or	$t3, $t3, $t4
	stx.h	$t3, $t2, $t1
	addi.d	$t2, $a5, 64
	mul.d	$t3, $t5, $a3
	add.d	$t3, $a4, $t3
	sra.w	$t3, $t3, $a1
	add.w	$t3, $t3, $a2
	srai.d	$t4, $t3, 63
	andn	$t3, $t3, $t4
	slt	$t4, $t3, $a0
	maskeqz	$t3, $t3, $t4
	ld.w	$t5, $sp, 796
	masknez	$t4, $a0, $t4
	or	$t3, $t3, $t4
	stx.h	$t3, $t2, $a6
	mul.d	$t3, $t5, $a3
	add.d	$t3, $a4, $t3
	sra.w	$t3, $t3, $a1
	add.w	$t3, $t3, $a2
	srai.d	$t4, $t3, 63
	andn	$t3, $t3, $t4
	slt	$t4, $t3, $a0
	maskeqz	$t3, $t3, $t4
	ld.w	$t5, $sp, 800
	masknez	$t4, $a0, $t4
	or	$t3, $t3, $t4
	stx.h	$t3, $t2, $a7
	mul.d	$t3, $t5, $a3
	add.d	$t3, $a4, $t3
	sra.w	$t3, $t3, $a1
	add.w	$t3, $t3, $a2
	srai.d	$t4, $t3, 63
	andn	$t3, $t3, $t4
	slt	$t4, $t3, $a0
	maskeqz	$t3, $t3, $t4
	ld.w	$t5, $sp, 804
	masknez	$t4, $a0, $t4
	or	$t3, $t3, $t4
	stx.h	$t3, $t2, $t0
	mul.d	$t3, $t5, $a3
	add.d	$t3, $a4, $t3
	sra.w	$t3, $t3, $a1
	add.w	$t3, $t3, $a2
	srai.d	$t4, $t3, 63
	andn	$t3, $t3, $t4
	slt	$t4, $t3, $a0
	maskeqz	$t3, $t3, $t4
	ld.w	$t5, $sp, 808
	masknez	$t4, $a0, $t4
	or	$t3, $t3, $t4
	stx.h	$t3, $t2, $t1
	mul.d	$t2, $t5, $a3
	add.d	$t2, $a4, $t2
	sra.w	$t2, $t2, $a1
	add.w	$t2, $t2, $a2
	srai.d	$t3, $t2, 63
	andn	$t2, $t2, $t3
	slt	$t3, $t2, $a0
	maskeqz	$t2, $t2, $t3
	masknez	$t3, $a0, $t3
	ld.w	$t4, $sp, 812
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
	ld.w	$t3, $sp, 816
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
	ld.w	$t2, $sp, 820
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
	b	.LBB25_275
.LBB25_268:                             # %.preheader1958.preheader
                                        #   in Loop: Header=BB25_133 Depth=2
	addi.w	$a0, $t8, 0
	slli.d	$a0, $a0, 5
	ld.h	$a1, $sp, 696
	ld.d	$a2, $sp, 592                   # 8-byte Folded Reload
	addi.d	$a2, $a2, 104
	add.d	$a0, $a2, $a0
	slli.d	$a2, $t7, 1
	ld.h	$a3, $sp, 700
	stx.h	$a1, $a0, $a2
	addi.d	$a1, $a2, 2
	ld.h	$a4, $sp, 704
	stx.h	$a3, $a0, $a1
	ld.h	$a3, $sp, 708
	addi.d	$a5, $a2, 4
	stx.h	$a4, $a0, $a5
	addi.d	$a4, $a2, 6
	stx.h	$a3, $a0, $a4
	addi.d	$a3, $a0, 32
	ld.h	$a6, $sp, 712
	ld.h	$a7, $sp, 716
	ld.h	$t0, $sp, 720
	ld.h	$t1, $sp, 724
	stx.h	$a6, $a3, $a2
	stx.h	$a7, $a3, $a1
	stx.h	$t0, $a3, $a5
	stx.h	$t1, $a3, $a4
	addi.d	$a3, $a0, 64
	ld.h	$a6, $sp, 728
	ld.h	$a7, $sp, 732
	ld.h	$t0, $sp, 736
	ld.h	$t1, $sp, 740
	stx.h	$a6, $a3, $a2
	stx.h	$a7, $a3, $a1
	stx.h	$t0, $a3, $a5
	stx.h	$t1, $a3, $a4
	addi.d	$a0, $a0, 96
	ld.h	$a3, $sp, 744
	ld.h	$a6, $sp, 748
	ld.h	$a7, $sp, 752
	ld.h	$t0, $sp, 756
	stx.h	$a3, $a0, $a2
	stx.h	$a6, $a0, $a1
	stx.h	$a7, $a0, $a5
	stx.h	$t0, $a0, $a4
	ori	$a0, $zero, 1
	st.d	$a0, $sp, 520                   # 8-byte Folded Spill
	b	.LBB25_274
.LBB25_269:                             #   in Loop: Header=BB25_133 Depth=2
	ld.w	$a0, $a0, 1124
	lu12i.w	$a3, 1
	bne	$a0, $a7, .LBB25_272
# %bb.270:                              #   in Loop: Header=BB25_133 Depth=2
	ld.d	$a0, $sp, 592                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 44
	addi.d	$a0, $a0, -1
	sltui	$a0, $a0, 1
	ld.d	$a1, $sp, 552                   # 8-byte Folded Reload
	and	$a0, $a0, $a1
	beqz	$a0, .LBB25_272
.LBB25_271:                             #   in Loop: Header=BB25_133 Depth=2
	ld.d	$a0, $sp, 464                   # 8-byte Folded Reload
	ext.w.h	$a0, $a0
	srai.d	$a2, $a0, 1
	b	.LBB25_273
.LBB25_272:                             #   in Loop: Header=BB25_133 Depth=2
	ld.d	$a2, $sp, 464                   # 8-byte Folded Reload
.LBB25_273:                             # %.preheader1959
                                        #   in Loop: Header=BB25_133 Depth=2
	ld.d	$a7, $sp, 592                   # 8-byte Folded Reload
	ldptr.d	$a0, $a7, 5768
	ldptr.d	$a1, $a7, 5776
	ld.d	$a0, $a0, 8
	st.d	$a2, $sp, 464                   # 8-byte Folded Spill
	ext.w.h	$a2, $a2
	slli.d	$a2, $a2, 3
	ld.d	$a1, $a1, 8
	ldx.d	$a0, $a0, $a2
	ld.d	$a2, $sp, 552                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 584                   # 8-byte Folded Reload
	sra.w	$a2, $a4, $a2
	slli.d	$a2, $a2, 3
	ldx.d	$a2, $a1, $a2
	ori	$a1, $a3, 1664
	ldx.wu	$a1, $a7, $a1
	ld.w	$a3, $a0, 0
	ld.w	$a2, $a2, 0
	ldptr.w	$a0, $a7, 5900
	addi.d	$a4, $a1, -1
	ori	$a6, $zero, 1
	ori	$a5, $zero, 1
	st.d	$a5, $sp, 520                   # 8-byte Folded Spill
	sll.w	$a4, $a6, $a4
	ld.w	$a6, $sp, 696
	addi.w	$a5, $t8, 0
	slli.d	$a5, $a5, 5
	addi.d	$a7, $a7, 104
	add.d	$a5, $a7, $a5
	mul.d	$a6, $a6, $a3
	add.d	$a6, $a4, $a6
	sra.w	$a6, $a6, $a1
	add.w	$a6, $a6, $a2
	srai.d	$a7, $a6, 63
	andn	$a6, $a6, $a7
	slt	$a7, $a6, $a0
	maskeqz	$a6, $a6, $a7
	masknez	$a7, $a0, $a7
	ld.w	$t0, $sp, 700
	or	$a7, $a6, $a7
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
	ld.w	$t1, $sp, 704
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
	ld.w	$t2, $sp, 708
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
	or	$t2, $t1, $t2
	ld.w	$t3, $sp, 712
	addi.d	$t1, $a6, 6
	stx.h	$t2, $a5, $t1
	addi.d	$t2, $a5, 32
	mul.d	$t3, $t3, $a3
	add.d	$t3, $a4, $t3
	sra.w	$t3, $t3, $a1
	add.w	$t3, $t3, $a2
	srai.d	$t4, $t3, 63
	andn	$t3, $t3, $t4
	slt	$t4, $t3, $a0
	maskeqz	$t3, $t3, $t4
	ld.w	$t5, $sp, 716
	masknez	$t4, $a0, $t4
	or	$t3, $t3, $t4
	stx.h	$t3, $t2, $a6
	mul.d	$t3, $t5, $a3
	add.d	$t3, $a4, $t3
	sra.w	$t3, $t3, $a1
	add.w	$t3, $t3, $a2
	srai.d	$t4, $t3, 63
	andn	$t3, $t3, $t4
	slt	$t4, $t3, $a0
	maskeqz	$t3, $t3, $t4
	ld.w	$t5, $sp, 720
	masknez	$t4, $a0, $t4
	or	$t3, $t3, $t4
	stx.h	$t3, $t2, $a7
	mul.d	$t3, $t5, $a3
	add.d	$t3, $a4, $t3
	sra.w	$t3, $t3, $a1
	add.w	$t3, $t3, $a2
	srai.d	$t4, $t3, 63
	andn	$t3, $t3, $t4
	slt	$t4, $t3, $a0
	maskeqz	$t3, $t3, $t4
	ld.w	$t5, $sp, 724
	masknez	$t4, $a0, $t4
	or	$t3, $t3, $t4
	stx.h	$t3, $t2, $t0
	mul.d	$t3, $t5, $a3
	add.d	$t3, $a4, $t3
	sra.w	$t3, $t3, $a1
	add.w	$t3, $t3, $a2
	srai.d	$t4, $t3, 63
	andn	$t3, $t3, $t4
	slt	$t4, $t3, $a0
	maskeqz	$t3, $t3, $t4
	masknez	$t4, $a0, $t4
	ld.w	$t5, $sp, 728
	or	$t3, $t3, $t4
	stx.h	$t3, $t2, $t1
	addi.d	$t2, $a5, 64
	mul.d	$t3, $t5, $a3
	add.d	$t3, $a4, $t3
	sra.w	$t3, $t3, $a1
	add.w	$t3, $t3, $a2
	srai.d	$t4, $t3, 63
	andn	$t3, $t3, $t4
	slt	$t4, $t3, $a0
	maskeqz	$t3, $t3, $t4
	ld.w	$t5, $sp, 732
	masknez	$t4, $a0, $t4
	or	$t3, $t3, $t4
	stx.h	$t3, $t2, $a6
	mul.d	$t3, $t5, $a3
	add.d	$t3, $a4, $t3
	sra.w	$t3, $t3, $a1
	add.w	$t3, $t3, $a2
	srai.d	$t4, $t3, 63
	andn	$t3, $t3, $t4
	slt	$t4, $t3, $a0
	maskeqz	$t3, $t3, $t4
	ld.w	$t5, $sp, 736
	masknez	$t4, $a0, $t4
	or	$t3, $t3, $t4
	stx.h	$t3, $t2, $a7
	mul.d	$t3, $t5, $a3
	add.d	$t3, $a4, $t3
	sra.w	$t3, $t3, $a1
	add.w	$t3, $t3, $a2
	srai.d	$t4, $t3, 63
	andn	$t3, $t3, $t4
	slt	$t4, $t3, $a0
	maskeqz	$t3, $t3, $t4
	ld.w	$t5, $sp, 740
	masknez	$t4, $a0, $t4
	or	$t3, $t3, $t4
	stx.h	$t3, $t2, $t0
	mul.d	$t3, $t5, $a3
	add.d	$t3, $a4, $t3
	sra.w	$t3, $t3, $a1
	add.w	$t3, $t3, $a2
	srai.d	$t4, $t3, 63
	andn	$t3, $t3, $t4
	slt	$t4, $t3, $a0
	maskeqz	$t3, $t3, $t4
	masknez	$t4, $a0, $t4
	ld.w	$t5, $sp, 744
	or	$t3, $t3, $t4
	stx.h	$t3, $t2, $t1
	addi.d	$a5, $a5, 96
	mul.d	$t2, $t5, $a3
	add.d	$t2, $a4, $t2
	sra.w	$t2, $t2, $a1
	add.w	$t2, $t2, $a2
	srai.d	$t3, $t2, 63
	andn	$t2, $t2, $t3
	slt	$t3, $t2, $a0
	maskeqz	$t2, $t2, $t3
	ld.w	$t4, $sp, 748
	masknez	$t3, $a0, $t3
	or	$t2, $t2, $t3
	stx.h	$t2, $a5, $a6
	mul.d	$a6, $t4, $a3
	add.d	$a6, $a4, $a6
	sra.w	$a6, $a6, $a1
	add.w	$a6, $a6, $a2
	srai.d	$t2, $a6, 63
	andn	$a6, $a6, $t2
	slt	$t2, $a6, $a0
	maskeqz	$a6, $a6, $t2
	ld.w	$t3, $sp, 752
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
	ld.w	$t2, $sp, 756
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
.LBB25_274:                             # %.loopexit1965
                                        #   in Loop: Header=BB25_133 Depth=2
	move	$t6, $s2
.LBB25_275:                             # %.loopexit1965
                                        #   in Loop: Header=BB25_133 Depth=2
	ld.d	$a7, $sp, 536                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 608                   # 8-byte Folded Reload
	b	.LBB25_140
.LBB25_276:                             #   in Loop: Header=BB25_133 Depth=2
	sltui	$a3, $a3, 1
	ld.d	$a4, $sp, 464                   # 8-byte Folded Reload
	masknez	$a3, $a4, $a3
	b	.LBB25_224
.LBB25_277:                             #   in Loop: Header=BB25_133 Depth=2
	ld.d	$a3, $sp, 368                   # 8-byte Folded Reload
	ldx.d	$a3, $a3, $s6
	ori	$a4, $a4, 1584
	ldx.d	$a4, $a1, $a4
	ldx.d	$a3, $a3, $s5
	ld.d	$a5, $a4, 0
	ldx.d	$a3, $a3, $s1
	slli.d	$a6, $ra, 3
	ldx.d	$a5, $a5, $a6
	move	$t2, $t1
	move	$t1, $a7
	ld.h	$a7, $a3, 0
	ldx.d	$a5, $a5, $s1
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
	ldx.d	$a2, $a2, $s1
	sub.d	$a4, $a7, $a4
	move	$a7, $t1
	move	$t1, $t2
	st.h	$a4, $a2, 0
	ld.h	$a4, $a5, 2
	ld.h	$a3, $a3, 2
	sub.d	$a3, $a4, $a3
	b	.LBB25_213
.LBB25_278:                             #   in Loop: Header=BB25_133 Depth=2
	slli.d	$a3, $ra, 3
	ldx.d	$a4, $s3, $a3
	slli.d	$a5, $a7, 3
	ldx.d	$a4, $a4, $a5
	st.w	$zero, $a4, 0
	ld.d	$a0, $a0, 0
	ld.d	$a0, $a0, 0
	ldx.d	$a0, $a0, $a3
	stx.b	$zero, $a0, $a7
	ld.d	$a3, $sp, 456                   # 8-byte Folded Reload
	ext.w.b	$a0, $a3
	bgez	$a0, .LBB25_167
	b	.LBB25_197
.LBB25_279:                             #   in Loop: Header=BB25_133 Depth=2
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ori	$a1, $t0, 1584
	ldx.d	$a1, $a0, $a1
	ld.d	$a1, $a1, 8
	slli.d	$a2, $ra, 3
	ldx.d	$a1, $a1, $a2
	slli.d	$a2, $a7, 3
	ldx.d	$a2, $a1, $a2
	move	$a1, $zero
	st.w	$zero, $a2, 0
	b	.LBB25_171
	.p2align	4, , 16
.LBB25_280:                             #   in Loop: Header=BB25_127 Depth=1
	ld.d	$a0, $sp, 624                   # 8-byte Folded Reload
	beqz	$a0, .LBB25_283
# %bb.281:                              # %.preheader1963
                                        #   in Loop: Header=BB25_127 Depth=1
	ld.d	$a2, $sp, 568                   # 8-byte Folded Reload
	slli.d	$a0, $a2, 3
	andi	$a1, $a0, 8
	slli.d	$a0, $a2, 2
	andi	$a2, $a0, 8
	ld.d	$s0, $sp, 592                   # 8-byte Folded Reload
	move	$a0, $s0
	move	$s1, $ra
	pcaddu18i	$ra, %call36(itrans8x8)
	jirl	$ra, $ra, 0
	move	$ra, $s1
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$a1, $sp, 616                   # 8-byte Folded Reload
	ldx.d	$a0, $a0, $a1
	ld.w	$a1, $s0, 80
	alsl.d	$a0, $a1, $a0, 3
	ld.w	$a2, $s0, 84
	ld.d	$a6, $sp, 496                   # 8-byte Folded Reload
	slli.d	$a1, $a6, 6
	ld.d	$a7, $sp, 512                   # 8-byte Folded Reload
	add.d	$a3, $a7, $a1
	slli.d	$a1, $a6, 3
	ldx.d	$a4, $a0, $a1
	ld.d	$t0, $sp, 504                   # 8-byte Folded Reload
	alsl.d	$a5, $t0, $a3, 2
	slli.d	$a1, $t0, 2
	vldx	$vr0, $a3, $a1
	vld	$vr1, $a5, 16
	alsl.d	$a3, $t0, $a4, 1
	slli.d	$a2, $a2, 1
	vpickev.h	$vr0, $vr1, $vr0
	vstx	$vr0, $a3, $a2
	addi.d	$a3, $a6, 1
	slli.d	$a4, $a3, 6
	add.d	$a4, $a7, $a4
	slli.d	$a3, $a3, 3
	ldx.d	$a3, $a0, $a3
	alsl.d	$a5, $t0, $a4, 2
	vldx	$vr0, $a4, $a1
	vld	$vr1, $a5, 16
	alsl.d	$a3, $t0, $a3, 1
	vpickev.h	$vr0, $vr1, $vr0
	vstx	$vr0, $a3, $a2
	addi.d	$a3, $a6, 2
	slli.d	$a4, $a3, 6
	add.d	$a4, $a7, $a4
	slli.d	$a3, $a3, 3
	ldx.d	$a3, $a0, $a3
	alsl.d	$a5, $t0, $a4, 2
	vldx	$vr0, $a4, $a1
	vld	$vr1, $a5, 16
	alsl.d	$a3, $t0, $a3, 1
	vpickev.h	$vr0, $vr1, $vr0
	vstx	$vr0, $a3, $a2
	addi.d	$a3, $a6, 3
	slli.d	$a4, $a3, 6
	add.d	$a4, $a7, $a4
	slli.d	$a3, $a3, 3
	ldx.d	$a3, $a0, $a3
	alsl.d	$a5, $t0, $a4, 2
	vldx	$vr0, $a4, $a1
	vld	$vr1, $a5, 16
	alsl.d	$a3, $t0, $a3, 1
	vpickev.h	$vr0, $vr1, $vr0
	vstx	$vr0, $a3, $a2
	ld.d	$a6, $sp, 576                   # 8-byte Folded Reload
	ori	$a3, $a6, 4
	slli.d	$a4, $a3, 6
	add.d	$a4, $a7, $a4
	slli.d	$a3, $a3, 3
	ldx.d	$a3, $a0, $a3
	alsl.d	$a5, $t0, $a4, 2
	vldx	$vr0, $a4, $a1
	vld	$vr1, $a5, 16
	alsl.d	$a3, $t0, $a3, 1
	vpickev.h	$vr0, $vr1, $vr0
	vstx	$vr0, $a3, $a2
	ori	$a3, $a6, 5
	slli.d	$a4, $a3, 6
	add.d	$a4, $a7, $a4
	slli.d	$a3, $a3, 3
	ldx.d	$a3, $a0, $a3
	alsl.d	$a5, $t0, $a4, 2
	vldx	$vr0, $a4, $a1
	vld	$vr1, $a5, 16
	alsl.d	$a3, $t0, $a3, 1
	vpickev.h	$vr0, $vr1, $vr0
	vstx	$vr0, $a3, $a2
	ori	$a3, $a6, 6
	slli.d	$a4, $a3, 6
	add.d	$a4, $a7, $a4
	slli.d	$a3, $a3, 3
	ldx.d	$a3, $a0, $a3
	alsl.d	$a5, $t0, $a4, 2
	vldx	$vr0, $a4, $a1
	vld	$vr1, $a5, 16
	alsl.d	$a3, $t0, $a3, 1
	vpickev.h	$vr0, $vr1, $vr0
	vstx	$vr0, $a3, $a2
	ori	$a3, $a6, 7
	slli.d	$a4, $a3, 6
	add.d	$a4, $a7, $a4
	slli.d	$a3, $a3, 3
	ldx.d	$a0, $a0, $a3
	alsl.d	$a3, $t0, $a4, 2
	vldx	$vr0, $a4, $a1
	vld	$vr1, $a3, 16
	alsl.d	$a0, $t0, $a0, 1
.LBB25_282:                             # %.loopexit1978
                                        #   in Loop: Header=BB25_127 Depth=1
	vpickev.h	$vr0, $vr1, $vr0
	vstx	$vr0, $a0, $a2
.LBB25_283:                             # %.loopexit1978
                                        #   in Loop: Header=BB25_127 Depth=1
	ld.d	$a5, $sp, 568                   # 8-byte Folded Reload
	addi.d	$a5, $a5, 1
	ld.d	$s1, $sp, 576                   # 8-byte Folded Reload
	addi.d	$s1, $s1, 4
	ld.d	$a0, $sp, 632                   # 8-byte Folded Reload
	addi.d	$a0, $a0, 4
	st.d	$a0, $sp, 632                   # 8-byte Folded Spill
	ld.d	$a4, $sp, 544                   # 8-byte Folded Reload
	xori	$a4, $a4, 1
	ori	$a0, $zero, 4
	lu12i.w	$a3, 77
	bne	$a5, $a0, .LBB25_127
# %bb.284:
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ori	$a1, $a3, 1652
	ldx.w	$a0, $a0, $a1
	beqz	$a0, .LBB25_4
# %bb.285:
	ld.d	$s3, $sp, 592                   # 8-byte Folded Reload
	ldptr.w	$a0, $s3, 5932
	ldptr.w	$a1, $s3, 5936
	ori	$a2, $zero, 64
	div.w	$s6, $a2, $a0
	div.w	$a4, $a2, $a1
	addi.d	$a0, $a4, -1
	st.d	$a0, $sp, 616                   # 8-byte Folded Spill
	mul.w	$a0, $a4, $s6
	st.d	$a0, $sp, 608                   # 8-byte Folded Spill
	srai.d	$a0, $a0, 1
	st.d	$a0, $sp, 600                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 296                   # 8-byte Folded Reload
	slli.d	$a0, $a2, 5
	pcalau12i	$a1, %pc_hi20(subblk_offset_y)
	addi.d	$a1, $a1, %pc_lo12(subblk_offset_y)
	add.d	$a1, $a1, $a0
	st.d	$a1, $sp, 80                    # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(subblk_offset_x)
	addi.d	$a1, $a1, %pc_lo12(subblk_offset_x)
	add.d	$a1, $a1, $a0
	st.d	$a1, $sp, 72                    # 8-byte Folded Spill
	slli.d	$a1, $a2, 6
	pcalau12i	$a2, %pc_hi20(block8x8_idx)
	addi.d	$a2, $a2, %pc_lo12(block8x8_idx)
	add.d	$a1, $a2, $a1
	st.d	$a1, $sp, 64                    # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(cofuv_blk_x)
	addi.d	$a1, $a1, %pc_lo12(cofuv_blk_x)
	add.d	$a1, $a1, $a0
	st.d	$a1, $sp, 56                    # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(cofuv_blk_y)
	addi.d	$a1, $a1, %pc_lo12(cofuv_blk_y)
	move	$s0, $zero
	st.d	$zero, $sp, 544                 # 8-byte Folded Spill
	add.d	$a0, $a1, $a0
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	vinsgr2vr.w	$vr3, $a4, 0
	st.d	$a4, $sp, 632                   # 8-byte Folded Spill
	vinsgr2vr.w	$vr3, $a4, 1
	move	$a4, $zero
	ld.d	$a0, $sp, 304                   # 8-byte Folded Reload
	vinsgr2vr.w	$vr4, $a0, 0
	vinsgr2vr.w	$vr4, $a0, 1
	vinsgr2vr.w	$vr5, $s6, 0
	vinsgr2vr.w	$vr5, $s6, 1
	ori	$s5, $zero, 1
	ori	$a0, $a3, 1536
	st.d	$a0, $sp, 576                   # 8-byte Folded Spill
	lu12i.w	$a0, 7
	ori	$a0, $a0, 1536
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	ori	$a2, $zero, 1
	ld.d	$s7, $sp, 584                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 464                   # 8-byte Folded Reload
	vst	$vr3, $sp, 160                  # 16-byte Folded Spill
	vst	$vr4, $sp, 144                  # 16-byte Folded Spill
	vst	$vr5, $sp, 128                  # 16-byte Folded Spill
	b	.LBB25_287
	.p2align	4, , 16
.LBB25_286:                             # %.loopexit1953
                                        #   in Loop: Header=BB25_287 Depth=1
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	andi	$a0, $a0, 1
	ori	$a4, $zero, 1
	move	$a2, $zero
	beqz	$a0, .LBB25_4
.LBB25_287:                             # =>This Loop Header: Depth=1
                                        #     Child Loop BB25_293 Depth 2
                                        #       Child Loop BB25_297 Depth 3
                                        #         Child Loop BB25_354 Depth 4
                                        #           Child Loop BB25_363 Depth 5
                                        #         Child Loop BB25_301 Depth 4
                                        #           Child Loop BB25_310 Depth 5
	move	$s4, $s0
	st.d	$a2, $sp, 32                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 40
	ldptr.w	$s0, $s3, 5924
	st.d	$zero, $sp, 240                 # 8-byte Folded Spill
	ori	$a1, $zero, 14
	st.d	$a4, $sp, 40                    # 8-byte Folded Spill
	bltu	$a1, $a0, .LBB25_373
# %bb.288:                              #   in Loop: Header=BB25_287 Depth=1
	sll.d	$a0, $s5, $a0
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	and	$a1, $a0, $a1
	move	$a0, $s0
	beqz	$a1, .LBB25_290
# %bb.289:                              #   in Loop: Header=BB25_287 Depth=1
	move	$a0, $s3
	move	$a1, $a4
	move	$fp, $a3
	move	$s1, $ra
	pcaddu18i	$ra, %call36(intrapred_chroma)
	jirl	$ra, $ra, 0
	ld.d	$a4, $sp, 40                    # 8-byte Folded Reload
	vld	$vr5, $sp, 128                  # 16-byte Folded Reload
	vld	$vr4, $sp, 144                  # 16-byte Folded Reload
	vld	$vr3, $sp, 160                  # 16-byte Folded Reload
	move	$ra, $s1
	move	$a3, $fp
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1828
	ldx.w	$a0, $s3, $a0
	ori	$a1, $zero, 1
	st.d	$a1, $sp, 240                   # 8-byte Folded Spill
.LBB25_290:                             # %switch.edge
                                        #   in Loop: Header=BB25_287 Depth=1
	slli.d	$a1, $a4, 3
	st.d	$a1, $sp, 624                   # 8-byte Folded Spill
	ori	$a1, $zero, 2
	blt	$a0, $a1, .LBB25_374
.LBB25_291:                             # %.preheader1952.lr.ph
                                        #   in Loop: Header=BB25_287 Depth=1
	move	$a1, $zero
	srai.d	$a0, $s0, 1
	mul.w	$a0, $a0, $a4
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	addi.d	$a0, $a4, 1
	st.d	$a0, $sp, 216                   # 8-byte Folded Spill
	move	$s0, $s4
	b	.LBB25_293
	.p2align	4, , 16
.LBB25_292:                             #   in Loop: Header=BB25_293 Depth=2
	ldptr.w	$a0, $s3, 5924
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	addi.d	$a1, $a1, 1
	srai.d	$a0, $a0, 1
	bge	$a1, $a0, .LBB25_375
.LBB25_293:                             # %.preheader1952
                                        #   Parent Loop BB25_287 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB25_297 Depth 3
                                        #         Child Loop BB25_354 Depth 4
                                        #           Child Loop BB25_363 Depth 5
                                        #         Child Loop BB25_301 Depth 4
                                        #           Child Loop BB25_310 Depth 5
	move	$a2, $zero
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	alsl.d	$a0, $a1, $a0, 2
	st.d	$a0, $sp, 264                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	alsl.d	$a0, $a1, $a0, 2
	st.d	$a0, $sp, 256                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	alsl.d	$a0, $a1, $a0, 4
	st.d	$a0, $sp, 224                   # 8-byte Folded Spill
	st.d	$a1, $sp, 96                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	add.d	$a0, $a1, $a0
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	alsl.d	$a1, $a0, $a1, 2
	st.d	$a1, $sp, 192                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	alsl.d	$a0, $a0, $a1, 2
	st.d	$a0, $sp, 184                   # 8-byte Folded Spill
	b	.LBB25_297
	.p2align	4, , 16
.LBB25_294:                             #   in Loop: Header=BB25_297 Depth=3
	ld.d	$a3, $sp, 464                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 416                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 400                   # 8-byte Folded Reload
.LBB25_295:                             # %.loopexit1950
                                        #   in Loop: Header=BB25_297 Depth=3
	ld.d	$a0, $sp, 248                   # 8-byte Folded Reload
	beqz	$a0, .LBB25_351
# %bb.296:                              # %.loopexit
                                        #   in Loop: Header=BB25_297 Depth=3
	ld.d	$a2, $sp, 288                   # 8-byte Folded Reload
	addi.d	$a2, $a2, 1
	ori	$a0, $zero, 4
	beq	$a2, $a0, .LBB25_292
.LBB25_297:                             #   Parent Loop BB25_287 Depth=1
                                        #     Parent Loop BB25_293 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB25_354 Depth 4
                                        #           Child Loop BB25_363 Depth 5
                                        #         Child Loop BB25_301 Depth 4
                                        #           Child Loop BB25_310 Depth 5
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	ldx.bu	$a1, $a0, $a2
	ld.w	$a5, $s3, 88
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ldx.bu	$a4, $a0, $a2
	ld.w	$a0, $s3, 96
	st.d	$a1, $sp, 312                   # 8-byte Folded Spill
	st.d	$a5, $sp, 304                   # 8-byte Folded Spill
	add.w	$a5, $a5, $a1
	st.d	$a4, $sp, 272                   # 8-byte Folded Spill
	add.w	$t4, $a0, $a4
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	st.d	$a2, $sp, 288                   # 8-byte Folded Spill
	st.d	$t4, $sp, 384                   # 8-byte Folded Spill
	bnez	$a0, .LBB25_295
# %bb.298:                              #   in Loop: Header=BB25_297 Depth=3
	st.d	$a5, $sp, 400                   # 8-byte Folded Spill
	st.d	$a3, $sp, 464                   # 8-byte Folded Spill
	slli.d	$a0, $a2, 2
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	ldx.w	$a0, $a1, $a0
	ld.d	$a1, $sp, 208                   # 8-byte Folded Reload
	ldx.b	$t1, $a1, $a0
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	andi	$a2, $t1, 255
	lu12i.w	$t2, 77
	ori	$a3, $t2, 1560
	add.d	$fp, $a1, $a3
	ld.d	$a6, $fp, 24
	lu12i.w	$a1, 1
	ori	$t0, $a1, 1888
	ori	$a7, $a1, 1884
	ori	$a5, $a1, 1704
	mul.d	$a3, $s6, $t4
	st.d	$a3, $sp, 584                   # 8-byte Folded Spill
	pcalau12i	$t3, %pc_hi20(active_sps)
	ld.d	$a3, $sp, 216                   # 8-byte Folded Reload
	slli.d	$a4, $a3, 2
	ori	$a3, $a1, 1668
	st.d	$a3, $sp, 536                   # 8-byte Folded Spill
	ori	$a3, $a1, 1700
	st.d	$a3, $sp, 520                   # 8-byte Folded Spill
	ori	$a3, $t2, 1504
	st.d	$a3, $sp, 568                   # 8-byte Folded Spill
	ori	$a1, $a1, 1840
	st.d	$a1, $sp, 296                   # 8-byte Folded Spill
	ori	$a1, $zero, 2
	bne	$a2, $a1, .LBB25_352
# %bb.299:                              #   in Loop: Header=BB25_297 Depth=3
	st.d	$t3, $sp, 352                   # 8-byte Folded Spill
	move	$t1, $zero
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	ldx.bu	$a0, $a1, $a0
	st.d	$a0, $sp, 488                   # 8-byte Folded Spill
	ld.d	$a0, $a6, 0
	st.d	$a0, $sp, 344                   # 8-byte Folded Spill
	ld.d	$a0, $a6, 8
	st.d	$a0, $sp, 336                   # 8-byte Folded Spill
	ldx.w	$a0, $s3, $t0
	st.d	$a0, $sp, 328                   # 8-byte Folded Spill
	ldx.w	$a0, $s3, $a7
	st.d	$a0, $sp, 480                   # 8-byte Folded Spill
	move	$a7, $zero
	ldx.w	$a0, $s3, $a5
	st.d	$a0, $sp, 472                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 304                   # 8-byte Folded Reload
	srai.d	$a0, $a0, 1
	ld.d	$a1, $sp, 312                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a1
	st.d	$a0, $sp, 280                   # 8-byte Folded Spill
	bstrpick.d	$a0, $t4, 31, 0
	st.d	$a0, $sp, 392                   # 8-byte Folded Spill
	slli.d	$a0, $a1, 5
	ld.d	$a1, $sp, 200                   # 8-byte Folded Reload
	add.d	$a0, $a1, $a0
	ld.d	$a1, $sp, 272                   # 8-byte Folded Reload
	alsl.d	$a0, $a1, $a0, 1
	st.d	$a0, $sp, 512                   # 8-byte Folded Spill
	addi.d	$a0, $t4, 1
	mul.d	$a0, $s6, $a0
	addi.d	$a0, $a0, -1
	st.d	$a0, $sp, 448                   # 8-byte Folded Spill
	ld.d	$a3, $sp, 464                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 400                   # 8-byte Folded Reload
	st.d	$fp, $sp, 496                   # 8-byte Folded Spill
	b	.LBB25_301
	.p2align	4, , 16
.LBB25_300:                             #   in Loop: Header=BB25_301 Depth=4
	ld.d	$a7, $sp, 368                   # 8-byte Folded Reload
	addi.d	$a7, $a7, 1
	ld.d	$t1, $sp, 360                   # 8-byte Folded Reload
	addi.d	$t1, $t1, 1
	ld.d	$a0, $sp, 512                   # 8-byte Folded Reload
	addi.d	$a0, $a0, 32
	st.d	$a0, $sp, 512                   # 8-byte Folded Spill
	ori	$a0, $zero, 4
	ld.d	$a5, $sp, 400                   # 8-byte Folded Reload
	beq	$a7, $a0, .LBB25_295
.LBB25_301:                             #   Parent Loop BB25_287 Depth=1
                                        #     Parent Loop BB25_293 Depth=2
                                        #       Parent Loop BB25_297 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB25_310 Depth 5
	ld.d	$a0, $sp, 552                   # 8-byte Folded Reload
	st.d	$t1, $sp, 360                   # 8-byte Folded Spill
	beqz	$a0, .LBB25_304
# %bb.302:                              #   in Loop: Header=BB25_301 Depth=4
	ld.d	$a0, $sp, 320                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 352                   # 8-byte Folded Reload
	bnez	$a0, .LBB25_305
# %bb.303:                              #   in Loop: Header=BB25_301 Depth=4
	ld.d	$a0, $sp, 280                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a7
	b	.LBB25_306
	.p2align	4, , 16
.LBB25_304:                             #   in Loop: Header=BB25_301 Depth=4
	add.d	$a0, $t1, $a5
	ld.d	$a6, $sp, 352                   # 8-byte Folded Reload
	b	.LBB25_306
	.p2align	4, , 16
.LBB25_305:                             #   in Loop: Header=BB25_301 Depth=4
	ld.d	$a0, $sp, 296                   # 8-byte Folded Reload
	ldx.w	$a0, $s3, $a0
	ld.d	$a1, $sp, 304                   # 8-byte Folded Reload
	sub.w	$a0, $a1, $a0
	srli.d	$a0, $a0, 1
	ld.d	$a1, $sp, 312                   # 8-byte Folded Reload
	add.d	$a1, $a7, $a1
	add.d	$a0, $a0, $a1
.LBB25_306:                             #   in Loop: Header=BB25_301 Depth=4
	move	$a2, $zero
	move	$t6, $zero
	move	$t7, $zero
	st.d	$a7, $sp, 368                   # 8-byte Folded Spill
	add.w	$a1, $a5, $a7
	ld.d	$a5, $sp, 328                   # 8-byte Folded Reload
	div.w	$a7, $a1, $a5
	ld.d	$a1, $sp, 632                   # 8-byte Folded Reload
	mul.d	$a1, $a0, $a1
	bstrpick.d	$a0, $a7, 31, 1
	slli.w	$a0, $a0, 1
	ld.d	$a5, $a6, %pc_lo12(active_sps)
	st.d	$a5, $sp, 504                   # 8-byte Folded Spill
	ld.d	$a5, $sp, 376                   # 8-byte Folded Reload
	ld.d	$a5, $a5, %pc_lo12(active_pps)
	st.d	$a5, $sp, 528                   # 8-byte Folded Spill
	ld.d	$a5, $sp, 344                   # 8-byte Folded Reload
	alsl.d	$a5, $a7, $a5, 3
	st.d	$a5, $sp, 456                   # 8-byte Folded Spill
	ld.d	$a5, $sp, 336                   # 8-byte Folded Reload
	st.d	$a7, $sp, 440                   # 8-byte Folded Spill
	alsl.d	$a5, $a7, $a5, 3
	st.d	$a5, $sp, 464                   # 8-byte Folded Spill
	slli.d	$a0, $a0, 3
	st.d	$a0, $sp, 424                   # 8-byte Folded Spill
	ld.d	$a7, $sp, 384                   # 8-byte Folded Reload
	b	.LBB25_310
.LBB25_307:                             #   in Loop: Header=BB25_310 Depth=5
	ld.d	$a5, $sp, 528                   # 8-byte Folded Reload
	ld.w	$a5, $a5, 1124
	addi.d	$a5, $a5, -2
	ldptr.d	$a6, $s3, 5784
	sltui	$a5, $a5, 1
	ld.d	$t0, $sp, 408                   # 8-byte Folded Reload
	maskeqz	$a5, $t0, $a5
	slli.d	$a5, $a5, 3
	ldx.d	$t0, $a6, $a5
	addi.d	$t1, $a5, 8
	ldx.d	$a6, $a6, $t1
	slli.d	$a0, $a0, 3
	ldx.d	$t0, $t0, $a0
	ext.w.h	$t2, $a3
	ldx.d	$a6, $a6, $a0
	slli.d	$t2, $t2, 3
	ldx.d	$t0, $t0, $t2
	ldx.d	$a6, $a6, $t2
	ldx.w	$t0, $t0, $a4
	ldptr.d	$t4, $s3, 5776
	ldx.w	$a6, $a6, $a4
	ldptr.w	$t5, $s3, 5904
	ld.d	$t8, $sp, 544                   # 8-byte Folded Reload
	mul.d	$t0, $t0, $t8
	ldx.d	$a5, $t4, $a5
	ldx.d	$t1, $t4, $t1
	mul.d	$a6, $a6, $s0
	ld.d	$t3, $sp, 536                   # 8-byte Folded Reload
	ldx.wu	$t4, $s3, $t3
	ldx.d	$a0, $a5, $a0
	ldx.d	$a5, $t1, $t2
	add.d	$a6, $a6, $t0
	sll.w	$t0, $s5, $t4
	ldx.w	$a0, $a0, $a4
	ldx.w	$a5, $a5, $a4
	add.d	$a6, $a6, $t0
	addi.d	$t0, $t4, 1
	sra.w	$a6, $a6, $t0
	add.d	$a0, $a0, $a5
	addi.w	$a0, $a0, 1
	srli.d	$a0, $a0, 1
	add.w	$a0, $a0, $a6
	srai.d	$a5, $a0, 63
	andn	$a0, $a0, $a5
	slt	$a5, $a0, $t5
	maskeqz	$a0, $a0, $a5
	masknez	$a5, $t5, $a5
.LBB25_308:                             #   in Loop: Header=BB25_310 Depth=5
	or	$a0, $a0, $a5
.LBB25_309:                             #   in Loop: Header=BB25_310 Depth=5
	ld.d	$a5, $sp, 512                   # 8-byte Folded Reload
	stx.h	$a0, $a5, $t6
	addi.d	$t7, $t7, 1
	addi.d	$t6, $t6, 2
	add.d	$a2, $a2, $s6
	addi.w	$a7, $a7, 1
	ori	$a0, $zero, 8
	beq	$t6, $a0, .LBB25_300
.LBB25_310:                             #   Parent Loop BB25_287 Depth=1
                                        #     Parent Loop BB25_293 Depth=2
                                        #       Parent Loop BB25_297 Depth=3
                                        #         Parent Loop BB25_301 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	ld.d	$a0, $sp, 480                   # 8-byte Folded Reload
	div.w	$a6, $a7, $a0
	vpickve2gr.w	$t8, $vr5, 1
	vpickve2gr.w	$t5, $vr5, 0
	vpickve2gr.w	$t2, $vr3, 1
	vpickve2gr.w	$t1, $vr3, 0
	ld.d	$a0, $sp, 488                   # 8-byte Folded Reload
	beqz	$a0, .LBB25_322
# %bb.311:                              # %._crit_edge2562
                                        #   in Loop: Header=BB25_310 Depth=5
	ld.d	$a0, $fp, 0
	ld.d	$a3, $sp, 504                   # 8-byte Folded Reload
	ld.w	$ra, $a3, 32
.LBB25_312:                             #   in Loop: Header=BB25_310 Depth=5
	ld.d	$a5, $a0, 0
	ld.d	$a0, $a0, 8
	ld.d	$a3, $sp, 440                   # 8-byte Folded Reload
	slli.d	$t0, $a3, 3
	ld.d	$a3, $sp, 456                   # 8-byte Folded Reload
	ld.d	$t4, $a3, 0
	ldx.d	$fp, $a5, $t0
	ldx.d	$a0, $a0, $t0
	slli.d	$a5, $a6, 3
	ldx.d	$t0, $t4, $a5
	ldx.b	$s8, $fp, $a6
	ldx.b	$s7, $a0, $a6
	ld.d	$a0, $sp, 560                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.h	$s0, $t0, 0
	ld.h	$a6, $t0, 2
	slli.d	$t0, $s8, 3
	ldx.d	$fp, $a0, $t0
	ld.d	$a0, $sp, 584                   # 8-byte Folded Reload
	add.d	$t0, $a0, $a2
	add.w	$a0, $t0, $s0
	add.w	$t4, $a1, $a6
	ld.d	$a3, $sp, 568                   # 8-byte Folded Reload
	add.d	$s4, $fp, $a3
	bne	$ra, $s5, .LBB25_314
# %bb.313:                              #   in Loop: Header=BB25_310 Depth=5
	ld.w	$a6, $s4, 0
	add.w	$t4, $a6, $t4
.LBB25_314:                             # %._crit_edge2568
                                        #   in Loop: Header=BB25_310 Depth=5
	ld.w	$a6, $s3, 60
	ld.d	$fp, $s4, 32
	ld.d	$a3, $sp, 448                   # 8-byte Folded Reload
	add.d	$s1, $a3, $a2
	add.w	$s0, $s1, $s0
	ld.d	$t3, $sp, 616                   # 8-byte Folded Reload
	add.w	$s1, $t4, $t3
	ld.d	$a3, $sp, 624                   # 8-byte Folded Reload
	ldx.d	$fp, $fp, $a3
	div.w	$s0, $s0, $t8
	div.w	$s2, $a0, $t5
	vinsgr2vr.w	$vr0, $s2, 0
	vinsgr2vr.w	$vr0, $s0, 1
	vmaxi.w	$vr0, $vr0, 0
	vinsgr2vr.w	$vr1, $a6, 0
	vinsgr2vr.w	$vr1, $a6, 1
	vmin.w	$vr0, $vr0, $vr1
	div.w	$s0, $s1, $t2
	div.w	$s1, $t4, $t1
	vinsgr2vr.w	$vr1, $s1, 0
	vinsgr2vr.w	$vr1, $s0, 1
	vmaxi.w	$vr1, $vr1, 0
	vmin.w	$vr1, $vr1, $vr4
	vpickve2gr.w	$s0, $vr1, 0
	slli.d	$s0, $s0, 3
	ldx.d	$s0, $fp, $s0
	addi.d	$a3, $s6, -1
	and	$a0, $a0, $a3
	vpickve2gr.w	$s1, $vr0, 0
	slli.d	$s1, $s1, 1
	ldx.hu	$s2, $s0, $s1
	vpickve2gr.w	$s3, $vr1, 1
	slli.d	$s3, $s3, 3
	ldx.d	$fp, $fp, $s3
	vpickve2gr.w	$s3, $vr0, 1
	slli.d	$s3, $s3, 1
	ldx.hu	$s0, $s0, $s3
	ldx.hu	$s1, $fp, $s1
	ldx.hu	$fp, $fp, $s3
	sub.d	$s3, $s6, $a0
	mul.d	$s2, $s3, $s2
	mul.d	$s1, $s3, $s1
	mul.d	$s0, $a0, $s0
	mul.d	$a0, $a0, $fp
	add.d	$a0, $a0, $s1
	and	$t4, $t4, $t3
	add.d	$fp, $s0, $s2
	ld.d	$a3, $sp, 464                   # 8-byte Folded Reload
	ld.d	$s0, $a3, 0
	mul.d	$a0, $a0, $t4
	ld.d	$a3, $sp, 632                   # 8-byte Folded Reload
	sub.d	$t4, $a3, $t4
	mul.d	$t4, $fp, $t4
	ldx.d	$a5, $s0, $a5
	ld.d	$a3, $sp, 600                   # 8-byte Folded Reload
	add.d	$t4, $t4, $a3
	add.w	$a0, $t4, $a0
	ld.d	$t4, $sp, 560                   # 8-byte Folded Reload
	ld.d	$t4, $t4, 8
	ld.h	$fp, $a5, 0
	ld.h	$s0, $a5, 2
	slli.d	$a5, $s7, 3
	ldx.d	$s4, $t4, $a5
	ld.d	$a3, $sp, 608                   # 8-byte Folded Reload
	div.w	$a0, $a0, $a3
	st.d	$a0, $sp, 544                   # 8-byte Folded Spill
	add.w	$a5, $t0, $fp
	add.w	$t4, $a1, $s0
	ori	$t0, $zero, 2
	bne	$ra, $s5, .LBB25_316
# %bb.315:                              #   in Loop: Header=BB25_310 Depth=5
	ld.d	$a0, $sp, 568                   # 8-byte Folded Reload
	ldx.w	$a0, $s4, $a0
	add.w	$t4, $a0, $t4
.LBB25_316:                             # %.sink.split
                                        #   in Loop: Header=BB25_310 Depth=5
	move	$ra, $s8
	move	$a3, $s7
.LBB25_317:                             # %.sink.split
                                        #   in Loop: Header=BB25_310 Depth=5
	addi.d	$s1, $s6, -1
	add.w	$a0, $a5, $s1
	ld.d	$s2, $sp, 616                   # 8-byte Folded Reload
	add.w	$fp, $t4, $s2
	ld.d	$s0, $sp, 576                   # 8-byte Folded Reload
	ldx.d	$s0, $s4, $s0
	and	$s1, $a5, $s1
	and	$s2, $t4, $s2
	sub.d	$s3, $s6, $s1
	ld.d	$t3, $sp, 624                   # 8-byte Folded Reload
	ldx.d	$s0, $s0, $t3
	div.w	$a0, $a0, $t8
	div.w	$a5, $a5, $t5
	vinsgr2vr.w	$vr0, $a5, 0
	vinsgr2vr.w	$vr0, $a0, 1
	vmaxi.w	$vr0, $vr0, 0
	vinsgr2vr.w	$vr1, $a6, 0
	vinsgr2vr.w	$vr1, $a6, 1
	vmin.w	$vr0, $vr0, $vr1
	div.w	$a0, $fp, $t2
	div.w	$a5, $t4, $t1
	vinsgr2vr.w	$vr1, $a5, 0
	vinsgr2vr.w	$vr1, $a0, 1
	vmaxi.w	$vr1, $vr1, 0
	vmin.w	$vr1, $vr1, $vr4
	vpickve2gr.w	$a0, $vr1, 0
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $s0, $a0
	ld.d	$a5, $sp, 632                   # 8-byte Folded Reload
	sub.d	$a5, $a5, $s2
	vpickve2gr.w	$a6, $vr0, 0
	slli.d	$a6, $a6, 1
	ldx.hu	$t1, $a0, $a6
	vpickve2gr.w	$t2, $vr1, 1
	slli.d	$t2, $t2, 3
	ldx.d	$t2, $s0, $t2
	vpickve2gr.w	$t4, $vr0, 1
	slli.d	$t4, $t4, 1
	ldx.hu	$a0, $a0, $t4
	ldx.hu	$a6, $t2, $a6
	ldx.hu	$t2, $t2, $t4
	mul.d	$t1, $s3, $t1
	mul.d	$a0, $s1, $a0
	mul.d	$a6, $s3, $a6
	mul.d	$t2, $s1, $t2
	add.d	$a6, $t2, $a6
	mul.d	$a6, $a6, $s2
	add.d	$a0, $a0, $t1
	mul.d	$a0, $a0, $a5
	ld.d	$a5, $sp, 600                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a5
	add.w	$a0, $a0, $a6
	ld.d	$a5, $sp, 608                   # 8-byte Folded Reload
	div.w	$s0, $a0, $a5
	ld.d	$fp, $sp, 496                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 592                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 472                   # 8-byte Folded Reload
	beqz	$a0, .LBB25_344
.LBB25_318:                             #   in Loop: Header=BB25_310 Depth=5
	ld.d	$a0, $sp, 528                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 1120
	move	$s2, $s8
	beqz	$a0, .LBB25_326
# %bb.319:                              #   in Loop: Header=BB25_310 Depth=5
	ld.w	$a0, $s3, 44
	beqz	$a0, .LBB25_321
# %bb.320:                              #   in Loop: Header=BB25_310 Depth=5
	ori	$a5, $zero, 3
	bne	$a0, $a5, .LBB25_326
.LBB25_321:                             #   in Loop: Header=BB25_310 Depth=5
	ld.d	$a0, $sp, 552                   # 8-byte Folded Reload
	bnez	$a0, .LBB25_328
	b	.LBB25_329
	.p2align	4, , 16
.LBB25_322:                             #   in Loop: Header=BB25_310 Depth=5
	move	$t3, $ra
	ld.w	$a5, $s3, 40
	ld.d	$a0, $fp, 0
	ld.d	$t0, $sp, 504                   # 8-byte Folded Reload
	ld.w	$ra, $t0, 32
	beqz	$a5, .LBB25_312
# %bb.323:                              #   in Loop: Header=BB25_310 Depth=5
	st.d	$s0, $sp, 432                   # 8-byte Folded Spill
	ld.d	$a5, $a0, 0
	ld.d	$fp, $sp, 424                   # 8-byte Folded Reload
	ldx.d	$a5, $a5, $fp
	move	$t0, $a6
	bstrins.d	$t0, $zero, 0, 0
	ldx.b	$a5, $a5, $t0
	ld.d	$t4, $a0, 8
	andi	$a0, $a5, 255
	ldx.d	$t4, $t4, $fp
	addi.d	$fp, $a0, -255
	sltui	$fp, $fp, 1
	masknez	$s1, $a5, $fp
	ldx.b	$s0, $t4, $t0
	maskeqz	$a5, $s2, $fp
	or	$s2, $a5, $s1
	maskeqz	$t0, $t3, $fp
	andi	$a5, $s0, 255
	or	$t3, $t0, $s1
	move	$s8, $s2
	ori	$t0, $zero, 255
	beq	$a5, $t0, .LBB25_336
# %bb.324:                              #   in Loop: Header=BB25_310 Depth=5
	bne	$a0, $t0, .LBB25_336
# %bb.325:                              # %..thread1920_crit_edge
                                        #   in Loop: Header=BB25_310 Depth=5
	ld.d	$a0, $sp, 584                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a2
	ori	$t0, $zero, 1
	b	.LBB25_340
	.p2align	4, , 16
.LBB25_326:                             #   in Loop: Header=BB25_310 Depth=5
	ld.d	$a0, $sp, 528                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 1124
	bne	$a0, $s5, .LBB25_329
# %bb.327:                              #   in Loop: Header=BB25_310 Depth=5
	ld.w	$a0, $s3, 44
	addi.d	$a0, $a0, -1
	sltui	$a0, $a0, 1
	ld.d	$a5, $sp, 552                   # 8-byte Folded Reload
	and	$a0, $a0, $a5
	beqz	$a0, .LBB25_329
.LBB25_328:                             #   in Loop: Header=BB25_310 Depth=5
	ext.w.h	$a0, $ra
	srai.d	$ra, $a0, 1
	ext.w.h	$a0, $a3
	srai.d	$a3, $a0, 1
.LBB25_329:                             #   in Loop: Header=BB25_310 Depth=5
	ld.w	$a5, $s3, 40
	bne	$t0, $s5, .LBB25_332
# %bb.330:                              #   in Loop: Header=BB25_310 Depth=5
	beqz	$a5, .LBB25_332
# %bb.331:                              #   in Loop: Header=BB25_310 Depth=5
	ldptr.d	$a0, $s3, 5768
	ld.d	$a0, $a0, 8
	ext.w.h	$a5, $a3
	slli.d	$a5, $a5, 3
	ldx.d	$a0, $a0, $a5
	ldptr.d	$a5, $s3, 5776
	ldx.w	$a0, $a0, $a4
	ld.d	$a5, $a5, 8
	ext.w.h	$a6, $s7
	ld.d	$t0, $sp, 552                   # 8-byte Folded Reload
	sra.w	$a6, $a6, $t0
	slli.d	$a6, $a6, 3
	ldx.d	$a5, $a5, $a6
	ld.d	$a6, $sp, 520                   # 8-byte Folded Reload
	ldx.w	$a6, $s3, $a6
	mul.d	$a0, $a0, $s0
	b	.LBB25_335
	.p2align	4, , 16
.LBB25_332:                             #   in Loop: Header=BB25_310 Depth=5
	ext.w.h	$a0, $ra
	bnez	$t0, .LBB25_307
# %bb.333:                              #   in Loop: Header=BB25_310 Depth=5
	beqz	$a5, .LBB25_307
# %bb.334:                              #   in Loop: Header=BB25_310 Depth=5
	ldptr.d	$a5, $s3, 5768
	ld.d	$a5, $a5, 0
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $a5, $a0
	ldptr.d	$a5, $s3, 5776
	ldx.w	$a0, $a0, $a4
	ld.d	$a5, $a5, 0
	ext.w.h	$a6, $s2
	ld.d	$t0, $sp, 552                   # 8-byte Folded Reload
	sra.w	$a6, $a6, $t0
	slli.d	$a6, $a6, 3
	ldx.d	$a5, $a5, $a6
	ld.d	$a6, $sp, 520                   # 8-byte Folded Reload
	ldx.w	$a6, $s3, $a6
	ld.d	$t0, $sp, 544                   # 8-byte Folded Reload
	mul.d	$a0, $a0, $t0
.LBB25_335:                             #   in Loop: Header=BB25_310 Depth=5
	ld.d	$t0, $sp, 536                   # 8-byte Folded Reload
	ldx.wu	$t0, $s3, $t0
	ldx.w	$a5, $a5, $a4
	add.d	$a0, $a0, $a6
	ldptr.w	$a6, $s3, 5904
	sra.w	$a0, $a0, $t0
	add.w	$a0, $a5, $a0
	srai.d	$a5, $a0, 63
	andn	$a0, $a0, $a5
	slt	$a5, $a0, $a6
	maskeqz	$a0, $a0, $a5
	masknez	$a5, $a6, $a5
	b	.LBB25_308
.LBB25_336:                             # %.thread1915
                                        #   in Loop: Header=BB25_310 Depth=5
	ori	$s1, $zero, 1
	st.d	$t3, $sp, 416                   # 8-byte Folded Spill
	move	$s5, $a3
	ld.d	$a0, $sp, 456                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	slli.d	$t0, $a6, 3
	ldx.d	$t4, $a0, $t0
	ld.d	$a0, $sp, 560                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.h	$t0, $t4, 2
	ext.w.h	$fp, $s2
	slli.d	$fp, $fp, 3
	ldx.d	$fp, $a0, $fp
	add.w	$a0, $a1, $t0
	ld.d	$a3, $sp, 568                   # 8-byte Folded Reload
	add.d	$t0, $fp, $a3
	move	$a3, $s7
	bne	$ra, $s1, .LBB25_338
# %bb.337:                              #   in Loop: Header=BB25_310 Depth=5
	ld.w	$fp, $t0, 0
	add.w	$a0, $fp, $a0
.LBB25_338:                             # %.thread1915._crit_edge
                                        #   in Loop: Header=BB25_310 Depth=5
	ld.h	$t4, $t4, 0
	ld.d	$t3, $sp, 584                   # 8-byte Folded Reload
	add.d	$fp, $t3, $a2
	add.w	$fp, $fp, $t4
	ld.w	$s1, $s3, 60
	ld.d	$t3, $sp, 448                   # 8-byte Folded Reload
	add.d	$s2, $t3, $a2
	add.w	$t4, $s2, $t4
	ld.d	$s4, $sp, 616                   # 8-byte Folded Reload
	add.w	$s2, $a0, $s4
	ld.d	$t0, $t0, 32
	addi.d	$s3, $s6, -1
	and	$s3, $fp, $s3
	and	$s4, $a0, $s4
	sub.d	$s7, $s6, $s3
	ld.d	$t3, $sp, 624                   # 8-byte Folded Reload
	ldx.d	$t0, $t0, $t3
	div.w	$t4, $t4, $t8
	div.w	$fp, $fp, $t5
	vinsgr2vr.w	$vr0, $fp, 0
	vinsgr2vr.w	$vr0, $t4, 1
	vmaxi.w	$vr0, $vr0, 0
	vinsgr2vr.w	$vr1, $s1, 0
	vinsgr2vr.w	$vr1, $s1, 1
	vmin.w	$vr0, $vr0, $vr1
	div.w	$t4, $s2, $t2
	div.w	$a0, $a0, $t1
	vinsgr2vr.w	$vr1, $a0, 0
	vinsgr2vr.w	$vr1, $t4, 1
	vmaxi.w	$vr1, $vr1, 0
	vmin.w	$vr1, $vr1, $vr4
	vpickve2gr.w	$a0, $vr1, 0
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $t0, $a0
	ld.d	$t4, $sp, 632                   # 8-byte Folded Reload
	sub.d	$t4, $t4, $s4
	vpickve2gr.w	$fp, $vr0, 0
	slli.d	$fp, $fp, 1
	ldx.hu	$s1, $a0, $fp
	vpickve2gr.w	$s2, $vr1, 1
	slli.d	$s2, $s2, 3
	ldx.d	$t0, $t0, $s2
	vpickve2gr.w	$s2, $vr0, 1
	slli.d	$s2, $s2, 1
	ldx.hu	$a0, $a0, $s2
	ldx.hu	$fp, $t0, $fp
	ldx.hu	$t0, $t0, $s2
	mul.d	$s1, $s7, $s1
	mul.d	$a0, $s3, $a0
	mul.d	$fp, $s7, $fp
	mul.d	$t0, $s3, $t0
	add.d	$t0, $t0, $fp
	mul.d	$t0, $t0, $s4
	add.d	$a0, $a0, $s1
	mul.d	$a0, $a0, $t4
	ld.d	$t4, $sp, 600                   # 8-byte Folded Reload
	add.d	$a0, $a0, $t4
	add.w	$a0, $a0, $t0
	ld.d	$t0, $sp, 608                   # 8-byte Folded Reload
	div.w	$a0, $a0, $t0
	st.d	$a0, $sp, 544                   # 8-byte Folded Spill
	ori	$a0, $zero, 255
	beq	$a5, $a0, .LBB25_343
# %bb.339:                              #   in Loop: Header=BB25_310 Depth=5
	ld.d	$a0, $sp, 392                   # 8-byte Folded Reload
	add.d	$a0, $t7, $a0
	mul.d	$a0, $s6, $a0
	ori	$t0, $zero, 2
	move	$s7, $a3
	move	$a3, $s5
	ld.d	$s3, $sp, 592                   # 8-byte Folded Reload
	ld.d	$t3, $sp, 416                   # 8-byte Folded Reload
	ori	$s5, $zero, 1
.LBB25_340:                             # %.thread1920
                                        #   in Loop: Header=BB25_310 Depth=5
	ld.d	$t4, $sp, 464                   # 8-byte Folded Reload
	ld.d	$t4, $t4, 0
	slli.d	$a6, $a6, 3
	ldx.d	$a6, $t4, $a6
	ld.d	$t4, $sp, 560                   # 8-byte Folded Reload
	ld.d	$t4, $t4, 8
	ld.h	$fp, $a6, 2
	slli.d	$s1, $s0, 3
	ldx.d	$s4, $t4, $s1
	add.w	$t4, $a1, $fp
	bne	$ra, $s5, .LBB25_342
# %bb.341:                              #   in Loop: Header=BB25_310 Depth=5
	ld.d	$fp, $sp, 568                   # 8-byte Folded Reload
	ldx.w	$fp, $s4, $fp
	add.w	$t4, $fp, $t4
.LBB25_342:                             # %.thread1920._crit_edge
                                        #   in Loop: Header=BB25_310 Depth=5
	addi.d	$a5, $a5, -255
	sltu	$a5, $zero, $a5
	maskeqz	$fp, $s0, $a5
	masknez	$s0, $s7, $a5
	or	$s7, $fp, $s0
	ld.h	$s0, $a6, 0
	ld.w	$a6, $s3, 60
	masknez	$a5, $a3, $a5
	or	$a3, $fp, $a5
	add.w	$a5, $a0, $s0
	move	$ra, $t3
	b	.LBB25_317
.LBB25_343:                             #   in Loop: Header=BB25_310 Depth=5
	move	$t0, $zero
	move	$s7, $a3
	move	$a3, $s5
	ld.d	$ra, $sp, 416                   # 8-byte Folded Reload
	ori	$s5, $zero, 1
	ld.d	$s0, $sp, 432                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 496                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 592                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 472                   # 8-byte Folded Reload
	bnez	$a0, .LBB25_318
	.p2align	4, , 16
.LBB25_344:                             #   in Loop: Header=BB25_310 Depth=5
	ld.w	$a0, $s3, 40
	move	$s2, $s8
	bne	$t0, $s5, .LBB25_347
# %bb.345:                              #   in Loop: Header=BB25_310 Depth=5
	beqz	$a0, .LBB25_347
# %bb.346:                              #   in Loop: Header=BB25_310 Depth=5
	move	$a0, $s0
	b	.LBB25_309
.LBB25_347:                             #   in Loop: Header=BB25_310 Depth=5
	bnez	$t0, .LBB25_350
# %bb.348:                              #   in Loop: Header=BB25_310 Depth=5
	beqz	$a0, .LBB25_350
# %bb.349:                              #   in Loop: Header=BB25_310 Depth=5
	ld.d	$a0, $sp, 544                   # 8-byte Folded Reload
	b	.LBB25_309
.LBB25_350:                             #   in Loop: Header=BB25_310 Depth=5
	ld.d	$a0, $sp, 544                   # 8-byte Folded Reload
	add.d	$a0, $a0, $s0
	addi.d	$a0, $a0, 1
	bstrpick.d	$a0, $a0, 31, 1
	b	.LBB25_309
	.p2align	4, , 16
.LBB25_351:                             # %.preheader1949
                                        #   in Loop: Header=BB25_297 Depth=3
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$a1, $sp, 576                   # 8-byte Folded Reload
	ldx.d	$a0, $a0, $a1
	ld.d	$a1, $sp, 624                   # 8-byte Folded Reload
	ldx.d	$fp, $a0, $a1
	move	$s4, $s0
	move	$s0, $a3
	ld.d	$a0, $sp, 288                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 192                   # 8-byte Folded Reload
	ldx.bu	$a3, $a1, $a0
	ld.d	$a1, $sp, 184                   # 8-byte Folded Reload
	ldx.bu	$a4, $a1, $a0
	move	$s8, $a5
	ori	$a5, $zero, 1
	move	$a0, $s3
	ld.d	$a1, $sp, 272                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 312                   # 8-byte Folded Reload
	move	$s1, $ra
	pcaddu18i	$ra, %call36(itrans)
	jirl	$ra, $ra, 0
	vld	$vr5, $sp, 128                  # 16-byte Folded Reload
	vld	$vr4, $sp, 144                  # 16-byte Folded Reload
	vld	$vr3, $sp, 160                  # 16-byte Folded Reload
	move	$ra, $s1
	slli.d	$a0, $s8, 3
	ldx.d	$a0, $fp, $a0
	ld.h	$a1, $s3, 1384
	ld.d	$a2, $sp, 384                   # 8-byte Folded Reload
	slli.d	$a2, $a2, 1
	stx.h	$a1, $a0, $a2
	ld.h	$a1, $s3, 1388
	addi.d	$a3, $a2, 2
	stx.h	$a1, $a0, $a3
	ld.h	$a1, $s3, 1392
	addi.d	$a4, $a2, 4
	stx.h	$a1, $a0, $a4
	ld.h	$a1, $s3, 1396
	alsl.d	$a5, $s8, $fp, 3
	addi.d	$a6, $a2, 6
	stx.h	$a1, $a0, $a6
	ld.d	$a0, $a5, 8
	ld.h	$a1, $s3, 1448
	stx.h	$a1, $a0, $a2
	ld.h	$a1, $s3, 1452
	stx.h	$a1, $a0, $a3
	ld.h	$a1, $s3, 1456
	stx.h	$a1, $a0, $a4
	ld.h	$a1, $s3, 1460
	stx.h	$a1, $a0, $a6
	ld.d	$a0, $a5, 16
	ld.h	$a1, $s3, 1512
	stx.h	$a1, $a0, $a2
	ld.h	$a1, $s3, 1516
	stx.h	$a1, $a0, $a3
	ld.h	$a1, $s3, 1520
	stx.h	$a1, $a0, $a4
	ld.h	$a1, $s3, 1524
	stx.h	$a1, $a0, $a6
	ld.d	$a0, $a5, 24
	ld.h	$a1, $s3, 1576
	stx.h	$a1, $a0, $a2
	ld.h	$a1, $s3, 1580
	stx.h	$a1, $a0, $a3
	move	$a3, $s0
	move	$s0, $s4
	ld.h	$a1, $s3, 1584
	stx.h	$a1, $a0, $a4
	ld.h	$a1, $s3, 1588
	stx.h	$a1, $a0, $a6
	ld.d	$a2, $sp, 288                   # 8-byte Folded Reload
	addi.d	$a2, $a2, 1
	ori	$a0, $zero, 4
	bne	$a2, $a0, .LBB25_297
	b	.LBB25_292
	.p2align	4, , 16
.LBB25_352:                             #   in Loop: Header=BB25_297 Depth=3
	st.d	$ra, $sp, 416                   # 8-byte Folded Spill
	move	$t7, $zero
	move	$t8, $zero
	slli.d	$a2, $t1, 3
	ldx.d	$a0, $a6, $a2
	st.d	$a0, $sp, 504                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 408                   # 8-byte Folded Reload
	add.d	$a6, $a0, $t1
	slli.d	$a6, $a6, 3
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	ldx.d	$a6, $a0, $a6
	ld.d	$t1, $fp, 0
	ld.d	$t2, $t3, %pc_lo12(active_sps)
	ldx.w	$a0, $s3, $t0
	st.d	$a0, $sp, 496                   # 8-byte Folded Spill
	ldx.w	$t0, $s3, $a7
	ldx.d	$a0, $t1, $a2
	st.d	$a0, $sp, 488                   # 8-byte Folded Spill
	ld.w	$t2, $t2, 32
	ld.w	$a7, $s3, 60
	ldx.w	$t3, $s3, $a5
	ld.d	$a0, $sp, 304                   # 8-byte Folded Reload
	srai.d	$a5, $a0, 1
	ld.d	$a0, $sp, 312                   # 8-byte Folded Reload
	add.d	$a1, $a5, $a0
	st.d	$a1, $sp, 480                   # 8-byte Folded Spill
	slli.d	$a5, $a0, 5
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	add.d	$a5, $a0, $a5
	vinsgr2vr.w	$vr0, $a7, 0
	vinsgr2vr.w	$vr0, $a7, 1
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	alsl.d	$t5, $a0, $a5, 1
	addi.d	$a5, $t4, 1
	mul.d	$a5, $s6, $a5
	addi.d	$t6, $a5, -1
	move	$a3, $s7
	st.d	$s0, $sp, 432                   # 8-byte Folded Spill
	b	.LBB25_354
	.p2align	4, , 16
.LBB25_353:                             #   in Loop: Header=BB25_354 Depth=4
	ld.d	$t7, $sp, 528                   # 8-byte Folded Reload
	addi.d	$t7, $t7, 1
	ld.d	$t8, $sp, 512                   # 8-byte Folded Reload
	addi.d	$t8, $t8, 1
	addi.d	$t5, $t5, 32
	ori	$a0, $zero, 4
	ld.d	$s0, $sp, 432                   # 8-byte Folded Reload
	beq	$t7, $a0, .LBB25_294
.LBB25_354:                             #   Parent Loop BB25_287 Depth=1
                                        #     Parent Loop BB25_293 Depth=2
                                        #       Parent Loop BB25_297 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB25_363 Depth 5
	ld.d	$a0, $sp, 552                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 400                   # 8-byte Folded Reload
	st.d	$t8, $sp, 512                   # 8-byte Folded Spill
	beqz	$a0, .LBB25_357
# %bb.355:                              #   in Loop: Header=BB25_354 Depth=4
	ld.d	$a0, $sp, 320                   # 8-byte Folded Reload
	bnez	$a0, .LBB25_358
# %bb.356:                              #   in Loop: Header=BB25_354 Depth=4
	ld.d	$a0, $sp, 480                   # 8-byte Folded Reload
	add.d	$a7, $a0, $t7
	b	.LBB25_359
	.p2align	4, , 16
.LBB25_357:                             #   in Loop: Header=BB25_354 Depth=4
	add.d	$a7, $t8, $a1
	b	.LBB25_359
	.p2align	4, , 16
.LBB25_358:                             #   in Loop: Header=BB25_354 Depth=4
	ld.d	$a0, $sp, 296                   # 8-byte Folded Reload
	ldx.w	$a5, $s3, $a0
	ld.d	$a0, $sp, 304                   # 8-byte Folded Reload
	sub.w	$a5, $a0, $a5
	srli.d	$a5, $a5, 1
	ld.d	$a0, $sp, 312                   # 8-byte Folded Reload
	add.d	$a7, $t7, $a0
	add.d	$a7, $a5, $a7
	ld.d	$a1, $sp, 400                   # 8-byte Folded Reload
.LBB25_359:                             #   in Loop: Header=BB25_354 Depth=4
	st.d	$t7, $sp, 528                   # 8-byte Folded Spill
	add.w	$a5, $a1, $t7
	ld.d	$a0, $sp, 496                   # 8-byte Folded Reload
	div.w	$a5, $a5, $a0
	slli.d	$a5, $a5, 3
	ld.d	$a0, $sp, 488                   # 8-byte Folded Reload
	ldx.d	$t7, $a0, $a5
	ld.d	$a0, $sp, 504                   # 8-byte Folded Reload
	ldx.d	$t8, $a0, $a5
	ld.d	$a0, $sp, 376                   # 8-byte Folded Reload
	ld.d	$ra, $a0, %pc_lo12(active_pps)
	move	$t4, $zero
	move	$a5, $zero
	ld.d	$a0, $sp, 632                   # 8-byte Folded Reload
	mul.d	$a7, $a7, $a0
	ld.d	$t1, $sp, 384                   # 8-byte Folded Reload
	b	.LBB25_363
	.p2align	4, , 16
.LBB25_360:                             #   in Loop: Header=BB25_363 Depth=5
	andi	$a0, $s2, 255
	ext.w.b	$a0, $a0
	srai.d	$s4, $a0, 1
.LBB25_361:                             #   in Loop: Header=BB25_363 Depth=5
	ldptr.d	$a0, $s3, 5768
	ldx.d	$a0, $a0, $a2
	ldptr.d	$a1, $s3, 5776
	slli.d	$fp, $s4, 3
	ldx.d	$a0, $a0, $fp
	ldx.d	$a1, $a1, $a2
	ldx.w	$a0, $a0, $a4
	ldx.d	$a1, $a1, $fp
	ld.d	$fp, $sp, 520                   # 8-byte Folded Reload
	ldx.w	$fp, $s3, $fp
	mul.d	$a0, $a0, $s0
	ld.d	$s0, $sp, 536                   # 8-byte Folded Reload
	ldx.wu	$s0, $s3, $s0
	ldx.w	$a1, $a1, $a4
	add.d	$a0, $a0, $fp
	ldptr.w	$fp, $s3, 5904
	sra.w	$a0, $a0, $s0
	add.w	$a0, $a1, $a0
	srai.d	$a1, $a0, 63
	andn	$a0, $a0, $a1
	slt	$a1, $a0, $fp
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $fp, $a1
	or	$s0, $a0, $a1
.LBB25_362:                             #   in Loop: Header=BB25_363 Depth=5
	stx.h	$s0, $t5, $a5
	addi.d	$a5, $a5, 2
	add.d	$t4, $t4, $s6
	addi.w	$t1, $t1, 1
	ori	$a0, $zero, 8
	beq	$a5, $a0, .LBB25_353
.LBB25_363:                             #   Parent Loop BB25_287 Depth=1
                                        #     Parent Loop BB25_293 Depth=2
                                        #       Parent Loop BB25_297 Depth=3
                                        #         Parent Loop BB25_354 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	div.w	$s0, $t1, $t0
	slli.d	$s1, $s0, 3
	ldx.d	$s4, $t8, $s1
	ld.h	$a1, $s4, 2
	ldx.b	$fp, $t7, $s0
	add.w	$s0, $a7, $a1
	bne	$t2, $s5, .LBB25_365
# %bb.364:                              #   in Loop: Header=BB25_363 Depth=5
	slli.d	$a1, $fp, 3
	ldx.d	$a1, $a6, $a1
	ld.d	$a0, $sp, 568                   # 8-byte Folded Reload
	ldx.w	$a1, $a1, $a0
	add.w	$s0, $a1, $s0
.LBB25_365:                             #   in Loop: Header=BB25_363 Depth=5
	ld.h	$a1, $s4, 0
	ld.d	$a0, $sp, 584                   # 8-byte Folded Reload
	add.d	$s4, $a0, $t4
	add.w	$s4, $s4, $a1
	add.d	$a0, $t6, $t4
	move	$s5, $fp
	slli.d	$fp, $fp, 3
	ldx.d	$fp, $a6, $fp
	add.w	$a0, $a0, $a1
	ld.d	$s2, $sp, 616                   # 8-byte Folded Reload
	add.w	$a1, $s0, $s2
	addi.d	$s1, $s6, -1
	and	$s1, $s4, $s1
	ld.d	$s3, $sp, 576                   # 8-byte Folded Reload
	ldx.d	$fp, $fp, $s3
	and	$s8, $s0, $s2
	sub.d	$s2, $s6, $s1
	ld.d	$s3, $sp, 632                   # 8-byte Folded Reload
	sub.d	$s7, $s3, $s8
	ld.d	$s3, $sp, 624                   # 8-byte Folded Reload
	ldx.d	$fp, $fp, $s3
	vpickve2gr.w	$s3, $vr5, 1
	div.w	$a0, $a0, $s3
	vpickve2gr.w	$s3, $vr5, 0
	div.w	$s3, $s4, $s3
	vinsgr2vr.w	$vr1, $s3, 0
	vinsgr2vr.w	$vr1, $a0, 1
	vmaxi.w	$vr1, $vr1, 0
	vpickve2gr.w	$a0, $vr3, 1
	div.w	$a0, $a1, $a0
	vpickve2gr.w	$a1, $vr3, 0
	div.w	$a1, $s0, $a1
	vinsgr2vr.w	$vr2, $a1, 0
	vinsgr2vr.w	$vr2, $a0, 1
	vmaxi.w	$vr2, $vr2, 0
	vmin.w	$vr2, $vr2, $vr4
	vpickve2gr.w	$a0, $vr2, 0
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $fp, $a0
	vmin.w	$vr1, $vr1, $vr0
	vpickve2gr.w	$a1, $vr1, 0
	slli.d	$a1, $a1, 1
	ldx.hu	$s0, $a0, $a1
	vpickve2gr.w	$s3, $vr2, 1
	slli.d	$s3, $s3, 3
	ldx.d	$fp, $fp, $s3
	vpickve2gr.w	$s3, $vr1, 1
	slli.d	$s3, $s3, 1
	ldx.hu	$a0, $a0, $s3
	ldx.hu	$a1, $fp, $a1
	ldx.hu	$fp, $fp, $s3
	mul.d	$s0, $s2, $s0
	mul.d	$a0, $s1, $a0
	mul.d	$a1, $s2, $a1
	mul.d	$fp, $s1, $fp
	add.d	$a1, $fp, $a1
	mul.d	$a1, $a1, $s8
	add.d	$a0, $a0, $s0
	mul.d	$a0, $a0, $s7
	ld.d	$fp, $sp, 600                   # 8-byte Folded Reload
	add.d	$a0, $a0, $fp
	add.w	$a0, $a0, $a1
	ld.d	$a1, $sp, 608                   # 8-byte Folded Reload
	div.w	$s0, $a0, $a1
	beqz	$t3, .LBB25_370
# %bb.366:                              #   in Loop: Header=BB25_363 Depth=5
	ld.w	$a0, $ra, 1120
	ld.d	$s3, $sp, 592                   # 8-byte Folded Reload
	move	$s7, $a3
	beqz	$a0, .LBB25_371
# %bb.367:                              #   in Loop: Header=BB25_363 Depth=5
	ld.w	$s4, $s3, 44
	beqz	$s4, .LBB25_369
# %bb.368:                              #   in Loop: Header=BB25_363 Depth=5
	ori	$a0, $zero, 3
	bne	$s4, $a0, .LBB25_371
.LBB25_369:                             #   in Loop: Header=BB25_363 Depth=5
	move	$s2, $s5
	move	$s4, $s5
	ld.d	$a0, $sp, 552                   # 8-byte Folded Reload
	ori	$s5, $zero, 1
	bnez	$a0, .LBB25_360
	b	.LBB25_361
	.p2align	4, , 16
.LBB25_370:                             #   in Loop: Header=BB25_363 Depth=5
	ld.d	$s3, $sp, 592                   # 8-byte Folded Reload
	move	$s7, $a3
	move	$s2, $s5
	ori	$s5, $zero, 1
	b	.LBB25_362
	.p2align	4, , 16
.LBB25_371:                             #   in Loop: Header=BB25_363 Depth=5
	ld.w	$a0, $ra, 1124
	move	$s2, $s5
	move	$s4, $s5
	ori	$s5, $zero, 1
	bne	$a0, $s5, .LBB25_361
# %bb.372:                              #   in Loop: Header=BB25_363 Depth=5
	ld.w	$a0, $s3, 44
	addi.d	$a0, $a0, -1
	sltui	$a0, $a0, 1
	ld.d	$a1, $sp, 552                   # 8-byte Folded Reload
	and	$a0, $a0, $a1
	move	$s4, $s2
	bnez	$a0, .LBB25_360
	b	.LBB25_361
.LBB25_373:                             #   in Loop: Header=BB25_287 Depth=1
	move	$a0, $s0
	slli.d	$a1, $a4, 3
	st.d	$a1, $sp, 624                   # 8-byte Folded Spill
	ori	$a1, $zero, 2
	bge	$a0, $a1, .LBB25_291
	.p2align	4, , 16
.LBB25_374:                             #   in Loop: Header=BB25_287 Depth=1
	move	$s0, $s4
.LBB25_375:                             # %._crit_edge2099
                                        #   in Loop: Header=BB25_287 Depth=1
	ld.d	$a0, $sp, 248                   # 8-byte Folded Reload
	beqz	$a0, .LBB25_286
# %bb.376:                              # %.preheader
                                        #   in Loop: Header=BB25_287 Depth=1
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$a1, $sp, 576                   # 8-byte Folded Reload
	ldx.d	$a0, $a0, $a1
	st.d	$s0, $sp, 432                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 624                   # 8-byte Folded Reload
	ldx.d	$s0, $a0, $a1
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	slli.d	$s4, $a0, 1
	move	$a0, $s3
	move	$a1, $s4
	move	$s8, $s3
	st.d	$s2, $sp, 624                   # 8-byte Folded Spill
	st.d	$a3, $sp, 464                   # 8-byte Folded Spill
	st.d	$ra, $sp, 416                   # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(itrans_sp_chroma)
	jirl	$ra, $ra, 0
	ld.w	$fp, $s3, 88
	ld.w	$s1, $s3, 96
	addi.w	$s2, $s4, 1
	move	$s3, $s4
	ori	$a4, $zero, 4
	ori	$a5, $zero, 1
	move	$a0, $s8
	move	$a1, $zero
	move	$a2, $zero
	move	$a3, $s4
	pcaddu18i	$ra, %call36(itrans)
	jirl	$ra, $ra, 0
	slli.d	$s5, $fp, 3
	ldx.d	$a0, $s0, $s5
	ld.h	$a1, $s8, 1384
	slli.d	$a2, $s1, 1
	stx.h	$a1, $a0, $a2
	ld.h	$a1, $s8, 1388
	addi.d	$a3, $a2, 2
	stx.h	$a1, $a0, $a3
	ld.h	$a1, $s8, 1392
	addi.d	$a4, $a2, 4
	stx.h	$a1, $a0, $a4
	ld.h	$a1, $s8, 1396
	alsl.d	$s4, $fp, $s0, 3
	addi.d	$a5, $a2, 6
	stx.h	$a1, $a0, $a5
	ld.d	$a0, $s4, 8
	ld.h	$a1, $s8, 1448
	stx.h	$a1, $a0, $a2
	ld.h	$a1, $s8, 1452
	stx.h	$a1, $a0, $a3
	ld.h	$a1, $s8, 1456
	stx.h	$a1, $a0, $a4
	ld.h	$a1, $s8, 1460
	stx.h	$a1, $a0, $a5
	ld.d	$a0, $s4, 16
	ld.h	$a1, $s8, 1512
	stx.h	$a1, $a0, $a2
	ld.h	$a1, $s8, 1516
	stx.h	$a1, $a0, $a3
	ld.h	$a1, $s8, 1520
	stx.h	$a1, $a0, $a4
	ld.h	$a1, $s8, 1524
	stx.h	$a1, $a0, $a5
	ld.d	$a0, $s4, 24
	ld.h	$a1, $s8, 1576
	stx.h	$a1, $a0, $a2
	ld.h	$a1, $s8, 1580
	stx.h	$a1, $a0, $a3
	ld.h	$a1, $s8, 1584
	stx.h	$a1, $a0, $a4
	ld.h	$a1, $s8, 1588
	stx.h	$a1, $a0, $a5
	ld.w	$fp, $s8, 96
	ori	$a1, $zero, 4
	ori	$a4, $zero, 4
	ori	$a5, $zero, 1
	move	$a0, $s8
	move	$a2, $zero
	move	$a3, $s2
	pcaddu18i	$ra, %call36(itrans)
	jirl	$ra, $ra, 0
	ldx.d	$a0, $s0, $s5
	ori	$s5, $zero, 1
	ld.h	$a1, $s8, 1384
	slli.d	$a2, $fp, 1
	addi.d	$a3, $a2, 8
	stx.h	$a1, $a0, $a3
	ld.h	$a1, $s8, 1388
	addi.d	$a4, $a2, 10
	stx.h	$a1, $a0, $a4
	ld.h	$a1, $s8, 1392
	addi.d	$a5, $a2, 12
	stx.h	$a1, $a0, $a5
	ld.h	$a1, $s8, 1396
	addi.d	$a2, $a2, 14
	stx.h	$a1, $a0, $a2
	ld.d	$a0, $s4, 8
	ld.h	$a1, $s8, 1448
	stx.h	$a1, $a0, $a3
	ld.h	$a1, $s8, 1452
	stx.h	$a1, $a0, $a4
	ld.h	$a1, $s8, 1456
	stx.h	$a1, $a0, $a5
	ld.h	$a1, $s8, 1460
	stx.h	$a1, $a0, $a2
	ld.d	$a0, $s4, 16
	ld.h	$a1, $s8, 1512
	stx.h	$a1, $a0, $a3
	ld.h	$a1, $s8, 1516
	stx.h	$a1, $a0, $a4
	ld.h	$a1, $s8, 1520
	stx.h	$a1, $a0, $a5
	ld.h	$a1, $s8, 1524
	stx.h	$a1, $a0, $a2
	ld.d	$a0, $s4, 24
	ld.h	$a1, $s8, 1576
	stx.h	$a1, $a0, $a3
	ld.h	$a1, $s8, 1580
	stx.h	$a1, $a0, $a4
	ld.h	$a1, $s8, 1584
	stx.h	$a1, $a0, $a5
	ld.h	$a1, $s8, 1588
	stx.h	$a1, $a0, $a2
	ld.w	$a0, $s8, 88
	ld.w	$fp, $s8, 96
	alsl.d	$s0, $a0, $s0, 3
	ori	$a2, $zero, 4
	ori	$a4, $zero, 5
	ori	$a5, $zero, 1
	move	$a0, $s8
	move	$a1, $zero
	move	$a3, $s3
	pcaddu18i	$ra, %call36(itrans)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 32
	ld.h	$a1, $s8, 1384
	slli.d	$a2, $fp, 1
	stx.h	$a1, $a0, $a2
	ld.h	$a1, $s8, 1388
	addi.d	$a3, $a2, 2
	stx.h	$a1, $a0, $a3
	ld.h	$a1, $s8, 1392
	addi.d	$a4, $a2, 4
	stx.h	$a1, $a0, $a4
	ld.h	$a1, $s8, 1396
	addi.d	$a5, $a2, 6
	stx.h	$a1, $a0, $a5
	ld.d	$a0, $s0, 40
	ld.h	$a1, $s8, 1448
	stx.h	$a1, $a0, $a2
	ld.h	$a1, $s8, 1452
	stx.h	$a1, $a0, $a3
	ld.h	$a1, $s8, 1456
	stx.h	$a1, $a0, $a4
	ld.h	$a1, $s8, 1460
	stx.h	$a1, $a0, $a5
	ld.d	$a0, $s0, 48
	ld.h	$a1, $s8, 1512
	stx.h	$a1, $a0, $a2
	ld.h	$a1, $s8, 1516
	stx.h	$a1, $a0, $a3
	ld.h	$a1, $s8, 1520
	stx.h	$a1, $a0, $a4
	ld.h	$a1, $s8, 1524
	stx.h	$a1, $a0, $a5
	ld.d	$a0, $s0, 56
	ld.h	$a1, $s8, 1576
	stx.h	$a1, $a0, $a2
	ld.h	$a1, $s8, 1580
	stx.h	$a1, $a0, $a3
	ld.h	$a1, $s8, 1584
	stx.h	$a1, $a0, $a4
	ld.h	$a1, $s8, 1588
	stx.h	$a1, $a0, $a5
	ld.w	$fp, $s8, 96
	ori	$a1, $zero, 4
	ori	$a2, $zero, 4
	ori	$a4, $zero, 5
	ori	$a5, $zero, 1
	move	$a0, $s8
	move	$a3, $s2
	pcaddu18i	$ra, %call36(itrans)
	jirl	$ra, $ra, 0
	vld	$vr5, $sp, 128                  # 16-byte Folded Reload
	vld	$vr4, $sp, 144                  # 16-byte Folded Reload
	vld	$vr3, $sp, 160                  # 16-byte Folded Reload
	ld.d	$ra, $sp, 416                   # 8-byte Folded Reload
	ld.d	$a0, $s0, 32
	ld.h	$a1, $s8, 1384
	slli.d	$a2, $fp, 1
	addi.d	$a3, $a2, 8
	stx.h	$a1, $a0, $a3
	ld.h	$a1, $s8, 1388
	addi.d	$a4, $a2, 10
	stx.h	$a1, $a0, $a4
	ld.h	$a1, $s8, 1392
	addi.d	$a5, $a2, 12
	stx.h	$a1, $a0, $a5
	ld.h	$a1, $s8, 1396
	addi.d	$a2, $a2, 14
	stx.h	$a1, $a0, $a2
	ld.d	$a0, $s0, 40
	ld.h	$a1, $s8, 1448
	stx.h	$a1, $a0, $a3
	ld.h	$a1, $s8, 1452
	stx.h	$a1, $a0, $a4
	ld.h	$a1, $s8, 1456
	stx.h	$a1, $a0, $a5
	ld.h	$a1, $s8, 1460
	stx.h	$a1, $a0, $a2
	ld.d	$a0, $s0, 48
	ld.h	$a1, $s8, 1512
	stx.h	$a1, $a0, $a3
	ld.h	$a1, $s8, 1516
	stx.h	$a1, $a0, $a4
	ld.h	$a1, $s8, 1520
	stx.h	$a1, $a0, $a5
	ld.h	$a1, $s8, 1524
	stx.h	$a1, $a0, $a2
	ld.d	$a0, $s0, 56
	ld.d	$s0, $sp, 432                   # 8-byte Folded Reload
	ld.h	$a1, $s8, 1576
	stx.h	$a1, $a0, $a3
	ld.d	$a3, $sp, 464                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 624                   # 8-byte Folded Reload
	move	$s3, $s8
	ld.h	$a1, $s8, 1580
	stx.h	$a1, $a0, $a4
	ld.h	$a1, $s8, 1584
	stx.h	$a1, $a0, $a5
	ld.h	$a1, $s8, 1588
	stx.h	$a1, $a0, $a2
	b	.LBB25_286
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
