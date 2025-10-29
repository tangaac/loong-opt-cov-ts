	.file	"me_distortion.c"
	.text
	.globl	distortion4x4                   # -- Begin function distortion4x4
	.p2align	5
	.type	distortion4x4,@function
distortion4x4:                          # @distortion4x4
# %bb.0:
	pcalau12i	$a1, %got_pc_hi20(input)
	ld.d	$a1, $a1, %got_pc_lo12(input)
	ld.d	$a1, $a1, 0
	ldptr.w	$a1, $a1, 5792
	ori	$a2, $zero, 1
	beq	$a1, $a2, .LBB0_3
# %bb.1:
	bnez	$a1, .LBB0_5
# %bb.2:                                # %.preheader
	pcalau12i	$a1, %got_pc_hi20(byte_abs)
	ld.d	$a1, $a1, %got_pc_lo12(byte_abs)
	ld.w	$a2, $a0, 0
	ld.d	$a1, $a1, 0
	b	.LBB0_4
.LBB0_3:                                # %.loopexit.loopexit19
	pcalau12i	$a1, %got_pc_hi20(img)
	ld.d	$a1, $a1, %got_pc_lo12(img)
	ld.d	$a1, $a1, 0
	ld.w	$a2, $a0, 0
	ldptr.d	$a1, $a1, 14232
.LBB0_4:                                # %.loopexit
	ld.w	$a3, $a0, 4
	slli.d	$a2, $a2, 2
	ld.w	$a4, $a0, 8
	ldx.w	$a2, $a1, $a2
	slli.d	$a3, $a3, 2
	ldx.w	$a3, $a1, $a3
	slli.d	$a4, $a4, 2
	ldx.w	$a4, $a1, $a4
	ld.w	$a5, $a0, 12
	add.d	$a2, $a3, $a2
	add.d	$a2, $a4, $a2
	ld.w	$a3, $a0, 16
	slli.d	$a4, $a5, 2
	ld.w	$a5, $a0, 20
	ldx.w	$a4, $a1, $a4
	slli.d	$a3, $a3, 2
	ldx.w	$a3, $a1, $a3
	slli.d	$a5, $a5, 2
	ldx.w	$a5, $a1, $a5
	add.d	$a2, $a4, $a2
	ld.w	$a4, $a0, 24
	add.d	$a2, $a3, $a2
	add.d	$a2, $a5, $a2
	ld.w	$a3, $a0, 28
	slli.d	$a4, $a4, 2
	ld.w	$a5, $a0, 32
	ldx.w	$a4, $a1, $a4
	slli.d	$a3, $a3, 2
	ldx.w	$a3, $a1, $a3
	slli.d	$a5, $a5, 2
	ldx.w	$a5, $a1, $a5
	add.d	$a2, $a4, $a2
	ld.w	$a4, $a0, 36
	add.d	$a2, $a3, $a2
	add.d	$a2, $a5, $a2
	ld.w	$a3, $a0, 40
	slli.d	$a4, $a4, 2
	ld.w	$a5, $a0, 44
	ldx.w	$a4, $a1, $a4
	slli.d	$a3, $a3, 2
	ldx.w	$a3, $a1, $a3
	slli.d	$a5, $a5, 2
	ldx.w	$a5, $a1, $a5
	add.d	$a2, $a4, $a2
	ld.w	$a4, $a0, 48
	add.d	$a2, $a3, $a2
	add.d	$a2, $a5, $a2
	ld.w	$a3, $a0, 52
	slli.d	$a4, $a4, 2
	ldx.w	$a4, $a1, $a4
	ld.w	$a5, $a0, 56
	slli.d	$a3, $a3, 2
	ld.w	$a0, $a0, 60
	ldx.w	$a3, $a1, $a3
	slli.d	$a5, $a5, 2
	ldx.w	$a5, $a1, $a5
	slli.d	$a0, $a0, 2
	ldx.w	$a0, $a1, $a0
	add.d	$a1, $a4, $a2
	add.d	$a1, $a3, $a1
	add.d	$a1, $a5, $a1
	add.w	$a0, $a0, $a1
	ret
.LBB0_5:
	pcaddu18i	$t8, %call36(HadamardSAD4x4)
	jr	$t8
.Lfunc_end0:
	.size	distortion4x4, .Lfunc_end0-distortion4x4
                                        # -- End function
	.globl	HadamardSAD4x4                  # -- Begin function HadamardSAD4x4
	.p2align	5
	.type	HadamardSAD4x4,@function
HadamardSAD4x4:                         # @HadamardSAD4x4
# %bb.0:
	addi.d	$sp, $sp, -64
	st.d	$fp, $sp, 56                    # 8-byte Folded Spill
	st.d	$s0, $sp, 48                    # 8-byte Folded Spill
	st.d	$s1, $sp, 40                    # 8-byte Folded Spill
	st.d	$s2, $sp, 32                    # 8-byte Folded Spill
	st.d	$s3, $sp, 24                    # 8-byte Folded Spill
	st.d	$s4, $sp, 16                    # 8-byte Folded Spill
	st.d	$s5, $sp, 8                     # 8-byte Folded Spill
	ld.w	$a1, $a0, 0
	ld.w	$a2, $a0, 48
	ld.w	$a3, $a0, 4
	ld.w	$a4, $a0, 52
	ld.w	$a5, $a0, 8
	ld.w	$a6, $a0, 56
	ld.w	$a7, $a0, 12
	ld.w	$t0, $a0, 60
	add.d	$t1, $a2, $a1
	add.d	$t2, $a4, $a3
	add.d	$t3, $a6, $a5
	add.d	$t4, $t0, $a7
	ld.w	$t5, $a0, 16
	ld.w	$t6, $a0, 32
	ld.w	$t7, $a0, 20
	ld.w	$t8, $a0, 36
	ld.w	$fp, $a0, 24
	ld.w	$s0, $a0, 40
	ld.w	$s1, $a0, 28
	ld.w	$a0, $a0, 44
	add.d	$s2, $t6, $t5
	add.d	$s3, $t8, $t7
	add.d	$s4, $s0, $fp
	add.d	$s5, $a0, $s1
	sub.d	$t5, $t5, $t6
	sub.d	$t6, $t7, $t8
	sub.d	$t7, $fp, $s0
	sub.d	$a0, $s1, $a0
	sub.d	$a1, $a1, $a2
	sub.d	$a2, $a3, $a4
	sub.d	$a3, $a5, $a6
	sub.d	$a4, $a7, $t0
	add.d	$a5, $s2, $t1
	add.d	$a6, $s3, $t2
	add.d	$a7, $s4, $t3
	add.d	$t0, $s5, $t4
	add.d	$t8, $t5, $a1
	add.d	$fp, $t6, $a2
	add.d	$s0, $t7, $a3
	add.d	$s1, $a0, $a4
	sub.d	$t1, $t1, $s2
	sub.d	$t2, $t2, $s3
	sub.d	$t3, $t3, $s4
	sub.d	$t4, $t4, $s5
	sub.d	$a1, $a1, $t5
	sub.d	$a2, $a2, $t6
	sub.d	$a3, $a3, $t7
	sub.d	$a0, $a4, $a0
	add.d	$a4, $t0, $a5
	add.d	$t5, $a7, $a6
	sub.d	$a6, $a6, $a7
	sub.d	$a5, $a5, $t0
	add.d	$a7, $s1, $t8
	add.d	$t0, $s0, $fp
	sub.d	$t6, $fp, $s0
	sub.d	$t7, $t8, $s1
	add.d	$t8, $t4, $t1
	add.d	$fp, $t3, $t2
	sub.d	$t2, $t2, $t3
	sub.d	$t1, $t1, $t4
	add.d	$t3, $a0, $a1
	add.d	$t4, $a3, $a2
	sub.d	$a2, $a2, $a3
	sub.d	$a0, $a1, $a0
	add.w	$a1, $a4, $t5
	sub.w	$a3, $a4, $t5
	add.w	$a4, $a5, $a6
	sub.w	$a5, $a5, $a6
	add.w	$a6, $a7, $t0
	sub.w	$a7, $a7, $t0
	add.w	$t0, $t7, $t6
	sub.w	$t5, $t7, $t6
	add.w	$t6, $t8, $fp
	sub.w	$t7, $t8, $fp
	add.w	$t8, $t1, $t2
	sub.w	$t1, $t1, $t2
	add.w	$t2, $t3, $t4
	sub.w	$t3, $t3, $t4
	add.w	$t4, $a0, $a2
	sub.w	$a0, $a0, $a2
	pcalau12i	$a2, %got_pc_hi20(byte_abs)
	ld.d	$a2, $a2, %got_pc_lo12(byte_abs)
	ld.d	$a2, $a2, 0
	slli.d	$a1, $a1, 2
	ldx.w	$a1, $a2, $a1
	slli.d	$a3, $a3, 2
	ldx.w	$a3, $a2, $a3
	slli.d	$a4, $a4, 2
	ldx.w	$a4, $a2, $a4
	slli.d	$a5, $a5, 2
	ldx.w	$a5, $a2, $a5
	add.d	$a1, $a3, $a1
	add.d	$a1, $a4, $a1
	add.d	$a1, $a5, $a1
	slli.d	$a3, $a6, 2
	ldx.w	$a3, $a2, $a3
	slli.d	$a4, $a7, 2
	ldx.w	$a4, $a2, $a4
	slli.d	$a5, $t0, 2
	ldx.w	$a5, $a2, $a5
	slli.d	$a6, $t5, 2
	ldx.w	$a6, $a2, $a6
	add.d	$a1, $a3, $a1
	add.d	$a1, $a4, $a1
	add.d	$a1, $a5, $a1
	add.d	$a1, $a6, $a1
	slli.d	$a3, $t6, 2
	ldx.w	$a3, $a2, $a3
	slli.d	$a4, $t7, 2
	ldx.w	$a4, $a2, $a4
	slli.d	$a5, $t8, 2
	ldx.w	$a5, $a2, $a5
	slli.d	$a6, $t1, 2
	ldx.w	$a6, $a2, $a6
	add.d	$a1, $a3, $a1
	add.d	$a1, $a4, $a1
	add.d	$a1, $a5, $a1
	add.d	$a1, $a6, $a1
	slli.d	$a3, $t2, 2
	ldx.w	$a3, $a2, $a3
	slli.d	$a4, $t3, 2
	ldx.w	$a4, $a2, $a4
	slli.d	$a5, $t4, 2
	ldx.w	$a5, $a2, $a5
	slli.d	$a0, $a0, 2
	ldx.w	$a0, $a2, $a0
	add.d	$a1, $a3, $a1
	add.d	$a1, $a4, $a1
	add.d	$a1, $a5, $a1
	add.d	$a0, $a0, $a1
	addi.w	$a0, $a0, 1
	srai.d	$a0, $a0, 1
	ld.d	$s5, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s4, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 48                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.Lfunc_end1:
	.size	HadamardSAD4x4, .Lfunc_end1-HadamardSAD4x4
                                        # -- End function
	.globl	distortion8x8                   # -- Begin function distortion8x8
	.p2align	5
	.type	distortion8x8,@function
distortion8x8:                          # @distortion8x8
# %bb.0:
	pcalau12i	$a1, %got_pc_hi20(input)
	ld.d	$a1, $a1, %got_pc_lo12(input)
	ld.d	$a1, $a1, 0
	ldptr.w	$a1, $a1, 5792
	ori	$a2, $zero, 1
	beq	$a1, $a2, .LBB2_4
# %bb.1:
	bnez	$a1, .LBB2_7
# %bb.2:                                # %.preheader
	pcalau12i	$a1, %got_pc_hi20(byte_abs)
	ld.d	$a1, $a1, %got_pc_lo12(byte_abs)
	ld.d	$a1, $a1, 0
	move	$a3, $zero
	move	$a2, $zero
	move	$a4, $zero
	ori	$a5, $zero, 256
	.p2align	4, , 16
.LBB2_3:                                # %vector.body30
                                        # =>This Inner Loop Header: Depth=1
	ldx.w	$a6, $a0, $a3
	add.d	$a7, $a0, $a3
	ld.w	$a7, $a7, 4
	slli.d	$a6, $a6, 2
	ldx.w	$a6, $a1, $a6
	slli.d	$a7, $a7, 2
	ldx.w	$a7, $a1, $a7
	add.d	$a2, $a6, $a2
	addi.d	$a3, $a3, 8
	add.d	$a4, $a7, $a4
	bne	$a3, $a5, .LBB2_3
	b	.LBB2_6
.LBB2_4:                                # %vector.ph
	pcalau12i	$a1, %got_pc_hi20(img)
	ld.d	$a1, $a1, %got_pc_lo12(img)
	ld.d	$a1, $a1, 0
	ldptr.d	$a1, $a1, 14232
	move	$a3, $zero
	move	$a2, $zero
	move	$a4, $zero
	ori	$a5, $zero, 256
	.p2align	4, , 16
.LBB2_5:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	ldx.w	$a6, $a0, $a3
	add.d	$a7, $a0, $a3
	ld.w	$a7, $a7, 4
	slli.d	$a6, $a6, 2
	ldx.w	$a6, $a1, $a6
	slli.d	$a7, $a7, 2
	ldx.w	$a7, $a1, $a7
	add.d	$a2, $a6, $a2
	addi.d	$a3, $a3, 8
	add.d	$a4, $a7, $a4
	bne	$a3, $a5, .LBB2_5
.LBB2_6:                                # %.loopexit.loopexit26
	add.w	$a0, $a4, $a2
	ret
.LBB2_7:
	pcaddu18i	$t8, %call36(HadamardSAD8x8)
	jr	$t8
.Lfunc_end2:
	.size	distortion8x8, .Lfunc_end2-distortion8x8
                                        # -- End function
	.globl	HadamardSAD8x8                  # -- Begin function HadamardSAD8x8
	.p2align	5
	.type	HadamardSAD8x8,@function
HadamardSAD8x8:                         # @HadamardSAD8x8
# %bb.0:
	addi.d	$a1, $a0, 28
	pcalau12i	$a0, %pc_hi20(m2)
	addi.d	$a0, $a0, %pc_lo12(m2)
	move	$a2, $zero
	ori	$a3, $zero, 256
	.p2align	4, , 16
.LBB3_1:                                # =>This Inner Loop Header: Depth=1
	add.d	$a4, $a1, $a2
	ld.w	$a5, $a4, -28
	ld.w	$a6, $a4, -12
	add.d	$a7, $a6, $a5
	ld.w	$t0, $a4, -24
	ld.w	$t1, $a4, -8
	ld.w	$t2, $a4, -20
	ld.w	$t3, $a4, -4
	ld.w	$a4, $a4, -16
	ldx.w	$t4, $a1, $a2
	add.d	$t5, $a0, $a2
	add.d	$t6, $t1, $t0
	add.d	$t7, $t3, $t2
	add.d	$t8, $t4, $a4
	sub.d	$a5, $a5, $a6
	sub.d	$a6, $t0, $t1
	sub.d	$t0, $t2, $t3
	sub.d	$a4, $a4, $t4
	add.d	$t1, $t7, $a7
	add.d	$t2, $t8, $t6
	sub.d	$a7, $a7, $t7
	sub.d	$t3, $t6, $t8
	add.d	$t4, $t0, $a5
	add.d	$t6, $a4, $a6
	sub.d	$a5, $a5, $t0
	sub.d	$a4, $a6, $a4
	add.d	$a6, $t2, $t1
	stx.w	$a6, $a0, $a2
	sub.d	$a6, $t1, $t2
	st.w	$a6, $t5, 4
	add.d	$a6, $t3, $a7
	st.w	$a6, $t5, 8
	sub.d	$a6, $a7, $t3
	st.w	$a6, $t5, 12
	add.d	$a6, $t6, $t4
	st.w	$a6, $t5, 16
	sub.d	$a6, $t4, $t6
	st.w	$a6, $t5, 20
	add.d	$a6, $a4, $a5
	st.w	$a6, $t5, 24
	sub.d	$a4, $a5, $a4
	addi.d	$a2, $a2, 32
	st.w	$a4, $t5, 28
	bne	$a2, $a3, .LBB3_1
# %bb.2:                                # %vector.body
	move	$a1, $zero
	move	$a2, $zero
	vld	$vr0, $a0, 0
	vld	$vr1, $a0, 128
	vld	$vr2, $a0, 32
	vld	$vr3, $a0, 160
	vld	$vr4, $a0, 64
	vld	$vr5, $a0, 192
	vld	$vr6, $a0, 96
	vld	$vr7, $a0, 224
	vadd.w	$vr8, $vr1, $vr0
	vadd.w	$vr9, $vr3, $vr2
	vadd.w	$vr10, $vr5, $vr4
	vadd.w	$vr11, $vr7, $vr6
	vsub.w	$vr0, $vr0, $vr1
	vsub.w	$vr1, $vr2, $vr3
	vsub.w	$vr2, $vr4, $vr5
	vsub.w	$vr3, $vr6, $vr7
	vadd.w	$vr4, $vr10, $vr8
	vadd.w	$vr5, $vr11, $vr9
	vsub.w	$vr6, $vr8, $vr10
	vsub.w	$vr7, $vr9, $vr11
	vadd.w	$vr8, $vr2, $vr0
	vadd.w	$vr9, $vr3, $vr1
	vsub.w	$vr0, $vr0, $vr2
	vsub.w	$vr1, $vr1, $vr3
	vadd.w	$vr2, $vr5, $vr4
	vst	$vr2, $a0, 0
	vsub.w	$vr2, $vr4, $vr5
	vst	$vr2, $a0, 32
	vadd.w	$vr2, $vr7, $vr6
	vst	$vr2, $a0, 64
	vsub.w	$vr2, $vr6, $vr7
	vst	$vr2, $a0, 96
	vadd.w	$vr2, $vr9, $vr8
	vst	$vr2, $a0, 128
	vsub.w	$vr2, $vr8, $vr9
	vst	$vr2, $a0, 160
	vadd.w	$vr2, $vr1, $vr0
	vst	$vr2, $a0, 192
	vsub.w	$vr0, $vr0, $vr1
	vst	$vr0, $a0, 224
	vld	$vr0, $a0, 16
	vld	$vr1, $a0, 144
	vld	$vr2, $a0, 48
	vld	$vr3, $a0, 176
	vld	$vr4, $a0, 80
	vld	$vr5, $a0, 208
	vld	$vr6, $a0, 112
	vld	$vr7, $a0, 240
	vadd.w	$vr8, $vr1, $vr0
	vadd.w	$vr9, $vr3, $vr2
	vadd.w	$vr10, $vr5, $vr4
	vadd.w	$vr11, $vr7, $vr6
	vsub.w	$vr0, $vr0, $vr1
	vsub.w	$vr1, $vr2, $vr3
	vsub.w	$vr2, $vr4, $vr5
	vsub.w	$vr3, $vr6, $vr7
	vadd.w	$vr4, $vr10, $vr8
	vadd.w	$vr5, $vr11, $vr9
	vsub.w	$vr6, $vr8, $vr10
	vsub.w	$vr7, $vr9, $vr11
	vadd.w	$vr8, $vr2, $vr0
	vadd.w	$vr9, $vr3, $vr1
	vsub.w	$vr0, $vr0, $vr2
	vsub.w	$vr1, $vr1, $vr3
	vadd.w	$vr2, $vr5, $vr4
	vst	$vr2, $a0, 16
	vsub.w	$vr2, $vr4, $vr5
	vst	$vr2, $a0, 48
	vadd.w	$vr2, $vr7, $vr6
	vst	$vr2, $a0, 80
	vsub.w	$vr2, $vr6, $vr7
	vst	$vr2, $a0, 112
	vadd.w	$vr2, $vr9, $vr8
	vst	$vr2, $a0, 144
	vsub.w	$vr2, $vr8, $vr9
	vst	$vr2, $a0, 176
	vadd.w	$vr2, $vr1, $vr0
	vst	$vr2, $a0, 208
	vsub.w	$vr0, $vr0, $vr1
	vst	$vr0, $a0, 240
	ori	$a3, $zero, 256
	.p2align	4, , 16
.LBB3_3:                                # %.preheader
                                        # =>This Inner Loop Header: Depth=1
	ldx.w	$a4, $a0, $a1
	add.d	$a5, $a0, $a1
	srai.d	$a6, $a4, 31
	ld.w	$a7, $a5, 4
	xor	$a4, $a4, $a6
	sub.d	$a4, $a4, $a6
	add.d	$a2, $a4, $a2
	srai.d	$a4, $a7, 31
	ld.w	$a6, $a5, 8
	xor	$a7, $a7, $a4
	sub.d	$a4, $a7, $a4
	add.d	$a2, $a4, $a2
	srai.d	$a4, $a6, 31
	ld.w	$a7, $a5, 12
	xor	$a6, $a6, $a4
	sub.d	$a4, $a6, $a4
	add.d	$a2, $a4, $a2
	srai.d	$a4, $a7, 31
	ld.w	$a6, $a5, 16
	xor	$a7, $a7, $a4
	sub.d	$a4, $a7, $a4
	add.d	$a2, $a4, $a2
	srai.d	$a4, $a6, 31
	ld.w	$a7, $a5, 20
	xor	$a6, $a6, $a4
	sub.d	$a4, $a6, $a4
	add.d	$a2, $a4, $a2
	srai.d	$a4, $a7, 31
	ld.w	$a6, $a5, 24
	xor	$a7, $a7, $a4
	sub.d	$a4, $a7, $a4
	add.d	$a2, $a4, $a2
	srai.d	$a4, $a6, 31
	ld.w	$a5, $a5, 28
	xor	$a6, $a6, $a4
	sub.d	$a4, $a6, $a4
	add.d	$a2, $a4, $a2
	srai.d	$a4, $a5, 31
	xor	$a5, $a5, $a4
	sub.d	$a4, $a5, $a4
	addi.d	$a1, $a1, 32
	add.w	$a2, $a4, $a2
	bne	$a1, $a3, .LBB3_3
# %bb.4:
	addi.d	$a0, $a2, 2
	bstrpick.d	$a0, $a0, 31, 2
	ret
.Lfunc_end3:
	.size	HadamardSAD8x8, .Lfunc_end3-HadamardSAD8x8
                                        # -- End function
	.globl	HadamardMB                      # -- Begin function HadamardMB
	.p2align	5
	.type	HadamardMB,@function
HadamardMB:                             # @HadamardMB
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	addi.d	$a2, $a1, -2
	ori	$a3, $zero, 2
	bltu	$a2, $a3, .LBB4_4
# %bb.1:
	ori	$a2, $zero, 4
	beq	$a1, $a2, .LBB4_5
# %bb.2:
	ori	$a2, $zero, 1
	bne	$a1, $a2, .LBB4_6
# %bb.3:
	move	$fp, $a0
	pcaddu18i	$ra, %call36(HadamardSAD8x8)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	addi.d	$a0, $fp, 256
	pcaddu18i	$ra, %call36(HadamardSAD8x8)
	jirl	$ra, $ra, 0
	add.d	$s0, $a0, $s0
	addi.d	$a0, $fp, 512
	pcaddu18i	$ra, %call36(HadamardSAD8x8)
	jirl	$ra, $ra, 0
	add.d	$s0, $s0, $a0
	addi.d	$a0, $fp, 768
	pcaddu18i	$ra, %call36(HadamardSAD8x8)
	jirl	$ra, $ra, 0
	add.w	$a0, $s0, $a0
	b	.LBB4_7
.LBB4_4:
	move	$fp, $a0
	pcaddu18i	$ra, %call36(HadamardSAD8x8)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	addi.d	$a0, $fp, 256
	pcaddu18i	$ra, %call36(HadamardSAD8x8)
	jirl	$ra, $ra, 0
	add.d	$a0, $a0, $s0
	b	.LBB4_7
.LBB4_5:
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(HadamardSAD8x8)
	jr	$t8
.LBB4_6:
	addi.w	$a0, $zero, -1
.LBB4_7:
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end4:
	.size	HadamardMB, .Lfunc_end4-HadamardMB
                                        # -- End function
	.globl	computeSAD                      # -- Begin function computeSAD
	.p2align	5
	.type	computeSAD,@function
computeSAD:                             # @computeSAD
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
	move	$s2, $a3
	move	$s4, $a2
	move	$s5, $a1
	move	$s3, $a0
	pcalau12i	$a0, %pc_hi20(img_padded_size_x)
	pcalau12i	$s0, %pc_hi20(ref_access_method)
	ld.w	$a1, $s0, %pc_lo12(ref_access_method)
	ld.w	$s1, $a0, %pc_lo12(img_padded_size_x)
	pcalau12i	$s7, %pc_hi20(src_line)
	st.d	$s3, $s7, %pc_lo12(src_line)
	slli.d	$a0, $a1, 3
	pcalau12i	$a1, %pc_hi20(get_line)
	addi.d	$a1, $a1, %pc_lo12(get_line)
	ldx.d	$a3, $a1, $a0
	pcalau12i	$a0, %pc_hi20(ref_pic_sub)
	addi.d	$s8, $a0, %pc_lo12(ref_pic_sub)
	ld.d	$a0, $s8, 0
	st.d	$a5, $sp, 24                    # 8-byte Folded Spill
	move	$a1, $a5
	st.d	$a4, $sp, 32                    # 8-byte Folded Spill
	move	$a2, $a4
	jirl	$ra, $a3, 0
	pcalau12i	$s6, %pc_hi20(ref_line)
	st.d	$a0, $s6, %pc_lo12(ref_line)
	blez	$s5, .LBB5_8
# %bb.1:                                # %.preheader54.lr.ph
	blez	$s4, .LBB5_9
# %bb.2:                                # %.preheader54.us.preheader
	pcalau12i	$a1, %got_pc_hi20(byte_abs)
	ld.d	$a2, $a1, %got_pc_lo12(byte_abs)
	move	$fp, $zero
	move	$a1, $zero
	ld.d	$a2, $a2, 0
	ld.d	$a5, $s7, %pc_lo12(src_line)
	slli.d	$a3, $s1, 1
	slli.d	$a4, $s4, 1
	sub.d	$a3, $a3, $a4
	.p2align	4, , 16
.LBB5_3:                                # %.preheader54.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_4 Depth 2
	move	$a4, $zero
	move	$a6, $a0
	.p2align	4, , 16
.LBB5_4:                                #   Parent Loop BB5_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.hu	$a0, $a5, 0
	ld.hu	$a7, $a6, 0
	sub.d	$a0, $a0, $a7
	slli.d	$a0, $a0, 2
	ld.hu	$a7, $a5, 2
	ld.hu	$t0, $a6, 2
	ldx.w	$a0, $a2, $a0
	ld.hu	$t1, $a5, 4
	ld.hu	$t2, $a6, 4
	sub.d	$a7, $a7, $t0
	slli.d	$a7, $a7, 2
	ldx.w	$a7, $a2, $a7
	sub.d	$t0, $t1, $t2
	slli.d	$t0, $t0, 2
	ldx.w	$t0, $a2, $t0
	ld.hu	$t1, $a5, 6
	ld.hu	$t2, $a6, 6
	add.d	$a0, $a0, $fp
	add.d	$a0, $a0, $a7
	add.d	$a0, $a0, $t0
	sub.d	$a7, $t1, $t2
	slli.d	$a7, $a7, 2
	ldx.w	$a7, $a2, $a7
	addi.d	$a5, $a5, 8
	addi.d	$a6, $a6, 8
	addi.w	$a4, $a4, 4
	add.w	$fp, $a0, $a7
	blt	$a4, $s4, .LBB5_4
# %bb.5:                                # %._crit_edge.us
                                        #   in Loop: Header=BB5_3 Depth=1
	bge	$fp, $s2, .LBB5_24
# %bb.6:                                #   in Loop: Header=BB5_3 Depth=1
	addi.w	$a1, $a1, 1
	add.d	$a0, $a6, $a3
	bne	$a1, $s5, .LBB5_3
# %bb.7:                                # %._crit_edge72.split.us
	add.d	$a0, $a6, $a3
	st.d	$a0, $s6, %pc_lo12(ref_line)
	st.d	$a5, $s7, %pc_lo12(src_line)
	pcalau12i	$a0, %pc_hi20(ChromaMEEnable)
	ld.w	$a0, $a0, %pc_lo12(ChromaMEEnable)
	bnez	$a0, .LBB5_11
	b	.LBB5_33
.LBB5_8:
	move	$fp, $zero
	pcalau12i	$a0, %pc_hi20(ChromaMEEnable)
	ld.w	$a0, $a0, %pc_lo12(ChromaMEEnable)
	bnez	$a0, .LBB5_11
	b	.LBB5_33
.LBB5_9:                                # %.preheader54.lr.ph.split
	move	$fp, $zero
	blez	$s2, .LBB5_33
# %bb.10:                               # %.preheader54.preheader
	slli.d	$a1, $s1, 1
	slli.d	$a2, $s4, 1
	sub.d	$a1, $a1, $a2
	addi.w	$a3, $s5, -1
	mul.d	$a1, $a1, $a3
	alsl.d	$a1, $s1, $a1, 1
	sub.d	$a1, $a1, $a2
	add.d	$a0, $a0, $a1
	st.d	$a0, $s6, %pc_lo12(ref_line)
	pcalau12i	$a0, %pc_hi20(ChromaMEEnable)
	ld.w	$a0, $a0, %pc_lo12(ChromaMEEnable)
	beqz	$a0, .LBB5_33
.LBB5_11:
	pcalau12i	$a0, %pc_hi20(shift_cr_y)
	ld.wu	$a0, $a0, %pc_lo12(shift_cr_y)
	sra.w	$s5, $s5, $a0
	blez	$s5, .LBB5_25
# %bb.12:                               # %.split.us
	pcalau12i	$a0, %pc_hi20(shift_cr_x)
	ld.wu	$a0, $a0, %pc_lo12(shift_cr_x)
	pcalau12i	$a1, %pc_hi20(img_cr_padded_size_x)
	ld.w	$s1, $a1, %pc_lo12(img_cr_padded_size_x)
	sra.w	$s4, $s4, $a0
	blez	$s4, .LBB5_28
# %bb.13:                               # %.preheader.lr.ph.us.us.preheader
	ld.w	$a0, $s0, %pc_lo12(ref_access_method)
	addi.d	$a1, $s3, 512
	st.d	$a1, $s7, %pc_lo12(src_line)
	slli.d	$a0, $a0, 3
	pcalau12i	$a1, %pc_hi20(get_crline)
	addi.d	$a1, $a1, %pc_lo12(get_crline)
	st.d	$a1, $sp, 16                    # 8-byte Folded Spill
	ldx.d	$a3, $a1, $a0
	ld.d	$a0, $s8, 8
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	jirl	$ra, $a3, 0
	ld.d	$a1, $s7, %pc_lo12(src_line)
	pcalau12i	$a2, %got_pc_hi20(byte_abs)
	ld.d	$t0, $a2, %got_pc_lo12(byte_abs)
	move	$a3, $zero
	ld.d	$a4, $t0, 0
	slli.d	$a2, $s1, 1
	slli.d	$a5, $s4, 1
	sub.d	$s1, $a2, $a5
	.p2align	4, , 16
.LBB5_14:                               # %.preheader.us.us.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_15 Depth 2
	move	$a5, $s4
	move	$a2, $a0
	.p2align	4, , 16
.LBB5_15:                               #   Parent Loop BB5_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.hu	$a0, $a1, 0
	ld.hu	$a6, $a2, 0
	sub.d	$a0, $a0, $a6
	slli.d	$a0, $a0, 2
	ldx.w	$a0, $a4, $a0
	ld.hu	$a6, $a1, 2
	ld.hu	$a7, $a2, 2
	add.d	$a0, $a0, $fp
	sub.d	$a6, $a6, $a7
	slli.d	$a6, $a6, 2
	ldx.w	$a6, $a4, $a6
	addi.d	$a1, $a1, 4
	addi.d	$a2, $a2, 4
	addi.w	$a5, $a5, -1
	add.w	$fp, $a0, $a6
	bnez	$a5, .LBB5_15
# %bb.16:                               # %._crit_edge.us93.us.us
                                        #   in Loop: Header=BB5_14 Depth=1
	bge	$fp, $s2, .LBB5_26
# %bb.17:                               #   in Loop: Header=BB5_14 Depth=1
	addi.w	$a3, $a3, 1
	add.d	$a0, $a2, $s1
	bne	$a3, $s5, .LBB5_14
# %bb.18:                               # %._crit_edge91.split.us.us.us
	ld.w	$a0, $s0, %pc_lo12(ref_access_method)
	add.d	$a1, $a2, $s1
	slli.d	$a0, $a0, 3
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	ldx.d	$a3, $a2, $a0
	ld.d	$a0, $s8, 16
	st.d	$a1, $s6, %pc_lo12(ref_line)
	addi.d	$a1, $s3, 1024
	st.d	$a1, $s7, %pc_lo12(src_line)
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	move	$s0, $t0
	jirl	$ra, $a3, 0
	ld.d	$a1, $s7, %pc_lo12(src_line)
	ld.d	$a3, $s0, 0
	move	$a4, $zero
	.p2align	4, , 16
.LBB5_19:                               # %.preheader.us.us.us.1
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_20 Depth 2
	move	$a5, $s4
	move	$a2, $a0
	.p2align	4, , 16
.LBB5_20:                               #   Parent Loop BB5_19 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.hu	$a0, $a1, 0
	ld.hu	$a6, $a2, 0
	sub.d	$a0, $a0, $a6
	slli.d	$a0, $a0, 2
	ldx.w	$a0, $a3, $a0
	ld.hu	$a6, $a1, 2
	ld.hu	$a7, $a2, 2
	add.d	$a0, $a0, $fp
	sub.d	$a6, $a6, $a7
	slli.d	$a6, $a6, 2
	ldx.w	$a6, $a3, $a6
	addi.d	$a1, $a1, 4
	addi.d	$a2, $a2, 4
	addi.w	$a5, $a5, -1
	add.w	$fp, $a0, $a6
	bnez	$a5, .LBB5_20
# %bb.21:                               # %._crit_edge.us93.us.us.1
                                        #   in Loop: Header=BB5_19 Depth=1
	bge	$fp, $s2, .LBB5_26
# %bb.22:                               #   in Loop: Header=BB5_19 Depth=1
	addi.w	$a4, $a4, 1
	add.d	$a0, $a2, $s1
	bne	$a4, $s5, .LBB5_19
# %bb.23:                               # %._crit_edge91.split.us.us.us.1
	add.d	$a0, $a2, $s1
	st.d	$a0, $s6, %pc_lo12(ref_line)
	b	.LBB5_27
.LBB5_24:                               # %.loopexit55.split.us
	st.d	$a6, $s6, %pc_lo12(ref_line)
	st.d	$a5, $s7, %pc_lo12(src_line)
	b	.LBB5_33
.LBB5_25:                               # %.split.preheader
	ld.w	$a0, $s0, %pc_lo12(ref_access_method)
	addi.d	$a1, $s3, 512
	st.d	$a1, $s7, %pc_lo12(src_line)
	slli.d	$a0, $a0, 3
	pcalau12i	$a1, %pc_hi20(get_crline)
	addi.d	$s1, $a1, %pc_lo12(get_crline)
	ldx.d	$a3, $s1, $a0
	ld.d	$a0, $s8, 8
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	move	$a1, $s4
	ld.d	$s2, $sp, 32                    # 8-byte Folded Reload
	move	$a2, $s2
	jirl	$ra, $a3, 0
	ld.w	$a1, $s0, %pc_lo12(ref_access_method)
	slli.d	$a1, $a1, 3
	ldx.d	$a3, $s1, $a1
	ld.d	$a1, $s8, 16
	st.d	$a0, $s6, %pc_lo12(ref_line)
	addi.d	$a0, $s3, 1024
	st.d	$a0, $s7, %pc_lo12(src_line)
	move	$a0, $a1
	move	$a1, $s4
	move	$a2, $s2
	b	.LBB5_31
.LBB5_26:                               # %.loopexit.split.us
	st.d	$a2, $s6, %pc_lo12(ref_line)
.LBB5_27:                               # %.loopexit
	st.d	$a1, $s7, %pc_lo12(src_line)
	b	.LBB5_33
.LBB5_28:                               # %.split.us.split
	bge	$fp, $s2, .LBB5_30
# %bb.29:                               # %.preheader.lr.ph.us.us119.preheader
	slli.d	$a0, $s1, 1
	slli.d	$a1, $s4, 1
	sub.d	$a0, $a0, $a1
	addi.w	$a2, $s5, -1
	mul.d	$a0, $a0, $a2
	alsl.d	$a0, $s1, $a0, 1
	ld.w	$a2, $s0, %pc_lo12(ref_access_method)
	sub.d	$s1, $a0, $a1
	addi.d	$a0, $s3, 512
	st.d	$a0, $s7, %pc_lo12(src_line)
	slli.d	$a0, $a2, 3
	pcalau12i	$a1, %pc_hi20(get_crline)
	addi.d	$s2, $a1, %pc_lo12(get_crline)
	ldx.d	$a3, $s2, $a0
	ld.d	$a0, $s8, 8
	ld.d	$s5, $sp, 24                    # 8-byte Folded Reload
	move	$a1, $s5
	ld.d	$s4, $sp, 32                    # 8-byte Folded Reload
	move	$a2, $s4
	jirl	$ra, $a3, 0
	ld.w	$a1, $s0, %pc_lo12(ref_access_method)
	add.d	$a2, $a0, $s1
	slli.d	$a0, $a1, 3
	ldx.d	$a3, $s2, $a0
	ld.d	$a0, $s8, 16
	st.d	$a2, $s6, %pc_lo12(ref_line)
	addi.d	$a1, $s3, 1024
	st.d	$a1, $s7, %pc_lo12(src_line)
	move	$a1, $s5
	move	$a2, $s4
	jirl	$ra, $a3, 0
	add.d	$a0, $a0, $s1
	b	.LBB5_32
.LBB5_30:                               # %.preheader.lr.ph.us
	ld.w	$a0, $s0, %pc_lo12(ref_access_method)
	addi.d	$a1, $s3, 512
	st.d	$a1, $s7, %pc_lo12(src_line)
	slli.d	$a0, $a0, 3
	pcalau12i	$a1, %pc_hi20(get_crline)
	addi.d	$a1, $a1, %pc_lo12(get_crline)
	ldx.d	$a3, $a1, $a0
	ld.d	$a0, $s8, 8
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
.LBB5_31:                               # %.loopexit
	jirl	$ra, $a3, 0
.LBB5_32:                               # %.loopexit
	st.d	$a0, $s6, %pc_lo12(ref_line)
.LBB5_33:                               # %.loopexit
	move	$a0, $fp
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
.Lfunc_end5:
	.size	computeSAD, .Lfunc_end5-computeSAD
                                        # -- End function
	.globl	computeSADWP                    # -- Begin function computeSADWP
	.p2align	5
	.type	computeSADWP,@function
computeSADWP:                           # @computeSADWP
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
	move	$fp, $a3
	move	$s4, $a2
	move	$s5, $a1
	move	$s3, $a0
	pcalau12i	$a0, %pc_hi20(img_padded_size_x)
	pcalau12i	$s8, %pc_hi20(ref_access_method)
	ld.w	$a1, $s8, %pc_lo12(ref_access_method)
	ld.w	$s2, $a0, %pc_lo12(img_padded_size_x)
	pcalau12i	$s6, %pc_hi20(src_line)
	st.d	$s3, $s6, %pc_lo12(src_line)
	slli.d	$a0, $a1, 3
	pcalau12i	$a1, %pc_hi20(get_line)
	addi.d	$a1, $a1, %pc_lo12(get_line)
	ldx.d	$a3, $a1, $a0
	pcalau12i	$a0, %pc_hi20(ref_pic_sub)
	addi.d	$s1, $a0, %pc_lo12(ref_pic_sub)
	ld.d	$a0, $s1, 0
	st.d	$a5, $sp, 56                    # 8-byte Folded Spill
	move	$a1, $a5
	st.d	$a4, $sp, 64                    # 8-byte Folded Spill
	move	$a2, $a4
	jirl	$ra, $a3, 0
	pcalau12i	$s7, %pc_hi20(ref_line)
	st.d	$a0, $s7, %pc_lo12(ref_line)
	blez	$s5, .LBB6_8
# %bb.1:                                # %.preheader64.lr.ph
	blez	$s4, .LBB6_9
# %bb.2:                                # %.preheader64.lr.ph.split.us
	ld.d	$t2, $s6, %pc_lo12(src_line)
	pcalau12i	$a1, %pc_hi20(weight_luma)
	ld.w	$a1, $a1, %pc_lo12(weight_luma)
	pcalau12i	$a2, %pc_hi20(wp_luma_round)
	ld.w	$a2, $a2, %pc_lo12(wp_luma_round)
	pcalau12i	$a3, %pc_hi20(luma_log_weight_denom)
	ld.w	$a3, $a3, %pc_lo12(luma_log_weight_denom)
	pcalau12i	$a4, %pc_hi20(offset_luma)
	ld.w	$a4, $a4, %pc_lo12(offset_luma)
	pcalau12i	$a5, %got_pc_hi20(byte_abs)
	ld.d	$a5, $a5, %got_pc_lo12(byte_abs)
	ld.d	$a5, $a5, 0
	pcalau12i	$a6, %got_pc_hi20(img)
	ld.d	$a6, $a6, %got_pc_lo12(img)
	ld.d	$a7, $a6, 0
	move	$s0, $zero
	move	$a6, $zero
	lu12i.w	$t0, 3
	ori	$t0, $t0, 3232
	ldx.w	$a7, $a7, $t0
	slli.d	$t0, $s2, 1
	slli.d	$t1, $s4, 1
	sub.d	$t0, $t0, $t1
	.p2align	4, , 16
.LBB6_3:                                # %.preheader64.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_4 Depth 2
	move	$t1, $zero
	move	$t3, $a0
	.p2align	4, , 16
.LBB6_4:                                #   Parent Loop BB6_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a0, $t3
	ld.hu	$t3, $t3, 0
	mul.d	$t3, $a1, $t3
	add.d	$t3, $t3, $a2
	sra.w	$t3, $t3, $a3
	add.w	$t3, $t3, $a4
	srai.d	$t4, $t3, 63
	andn	$t3, $t3, $t4
	slt	$t4, $t3, $a7
	maskeqz	$t3, $t3, $t4
	ld.hu	$t5, $t2, 0
	ld.hu	$t6, $a0, 2
	masknez	$t4, $a7, $t4
	or	$t3, $t3, $t4
	sub.w	$t3, $t5, $t3
	mul.d	$t4, $a1, $t6
	add.d	$t4, $t4, $a2
	sra.w	$t4, $t4, $a3
	add.w	$t4, $t4, $a4
	srai.d	$t5, $t4, 63
	andn	$t4, $t4, $t5
	slt	$t5, $t4, $a7
	maskeqz	$t4, $t4, $t5
	masknez	$t5, $a7, $t5
	ld.hu	$t6, $t2, 2
	ld.hu	$t7, $a0, 4
	or	$t4, $t4, $t5
	slli.d	$t3, $t3, 2
	sub.w	$t4, $t6, $t4
	mul.d	$t5, $a1, $t7
	add.d	$t5, $t5, $a2
	sra.w	$t5, $t5, $a3
	add.w	$t5, $t5, $a4
	srai.d	$t6, $t5, 63
	andn	$t5, $t5, $t6
	slt	$t6, $t5, $a7
	maskeqz	$t5, $t5, $t6
	masknez	$t6, $a7, $t6
	or	$t5, $t5, $t6
	ld.hu	$t6, $t2, 4
	ldx.w	$t3, $a5, $t3
	slli.d	$t4, $t4, 2
	ldx.w	$t4, $a5, $t4
	sub.w	$t5, $t6, $t5
	slli.d	$t5, $t5, 2
	ldx.w	$t5, $a5, $t5
	ld.hu	$t6, $a0, 6
	add.d	$t3, $t3, $s0
	add.d	$t3, $t3, $t4
	add.d	$t4, $t3, $t5
	mul.d	$t3, $a1, $t6
	add.d	$t3, $t3, $a2
	sra.w	$t3, $t3, $a3
	add.w	$t3, $t3, $a4
	srai.d	$t5, $t3, 63
	andn	$t3, $t3, $t5
	slt	$t5, $t3, $a7
	ld.hu	$t6, $t2, 6
	maskeqz	$t3, $t3, $t5
	masknez	$t5, $a7, $t5
	or	$t3, $t3, $t5
	sub.w	$t3, $t6, $t3
	slli.d	$t3, $t3, 2
	ldx.w	$t5, $a5, $t3
	addi.d	$t3, $a0, 8
	addi.d	$t2, $t2, 8
	addi.w	$t1, $t1, 4
	add.w	$s0, $t4, $t5
	blt	$t1, $s4, .LBB6_4
# %bb.5:                                # %._crit_edge.us
                                        #   in Loop: Header=BB6_3 Depth=1
	bge	$s0, $fp, .LBB6_19
# %bb.6:                                #   in Loop: Header=BB6_3 Depth=1
	addi.w	$a6, $a6, 1
	add.d	$a0, $t3, $t0
	bne	$a6, $s5, .LBB6_3
# %bb.7:                                # %._crit_edge82.split.us
	add.d	$a0, $t3, $t0
	st.d	$a0, $s7, %pc_lo12(ref_line)
	st.d	$t2, $s6, %pc_lo12(src_line)
	pcalau12i	$a0, %pc_hi20(ChromaMEEnable)
	ld.w	$a0, $a0, %pc_lo12(ChromaMEEnable)
	bnez	$a0, .LBB6_11
	b	.LBB6_34
.LBB6_8:
	move	$s0, $zero
	pcalau12i	$a0, %pc_hi20(ChromaMEEnable)
	ld.w	$a0, $a0, %pc_lo12(ChromaMEEnable)
	bnez	$a0, .LBB6_11
	b	.LBB6_34
.LBB6_9:                                # %.preheader64.lr.ph.split
	move	$s0, $zero
	blez	$fp, .LBB6_34
# %bb.10:                               # %.preheader64.preheader
	slli.d	$a1, $s2, 1
	slli.d	$a2, $s4, 1
	sub.d	$a1, $a1, $a2
	addi.w	$a3, $s5, -1
	mul.d	$a1, $a1, $a3
	alsl.d	$a1, $s2, $a1, 1
	sub.d	$a1, $a1, $a2
	add.d	$a0, $a0, $a1
	st.d	$a0, $s7, %pc_lo12(ref_line)
	pcalau12i	$a0, %pc_hi20(ChromaMEEnable)
	ld.w	$a0, $a0, %pc_lo12(ChromaMEEnable)
	beqz	$a0, .LBB6_34
.LBB6_11:
	pcalau12i	$a0, %pc_hi20(shift_cr_y)
	ld.wu	$a0, $a0, %pc_lo12(shift_cr_y)
	sra.w	$s5, $s5, $a0
	blez	$s5, .LBB6_20
# %bb.12:                               # %.preheader.lr.ph.us.preheader
	pcalau12i	$a0, %pc_hi20(shift_cr_x)
	ld.wu	$a0, $a0, %pc_lo12(shift_cr_x)
	pcalau12i	$a1, %pc_hi20(img_cr_padded_size_x)
	ld.w	$a1, $a1, %pc_lo12(img_cr_padded_size_x)
	sra.w	$s4, $s4, $a0
	slli.d	$a0, $a1, 1
	slli.d	$a2, $s4, 1
	sub.d	$s2, $a0, $a2
	addi.w	$a0, $s5, -1
	mul.d	$a0, $s2, $a0
	alsl.d	$a0, $a1, $a0, 1
	ld.w	$a1, $s8, %pc_lo12(ref_access_method)
	sub.d	$a0, $a0, $a2
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	addi.d	$a0, $s3, 512
	st.d	$a0, $s6, %pc_lo12(src_line)
	slli.d	$a0, $a1, 3
	pcalau12i	$a1, %pc_hi20(get_crline)
	addi.d	$a1, $a1, %pc_lo12(get_crline)
	st.d	$a1, $sp, 48                    # 8-byte Folded Spill
	ldx.d	$a3, $a1, $a0
	ld.d	$a0, $s1, 8
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 64                    # 8-byte Folded Reload
	jirl	$ra, $a3, 0
	st.d	$a0, $s7, %pc_lo12(ref_line)
	pcalau12i	$t6, %pc_hi20(wp_chroma_round)
	pcalau12i	$t7, %pc_hi20(chroma_log_weight_denom)
	pcalau12i	$a1, %got_pc_hi20(byte_abs)
	ld.d	$t8, $a1, %got_pc_lo12(byte_abs)
	blez	$s4, .LBB6_21
# %bb.13:                               # %.preheader.lr.ph.split.us.us
	ld.w	$a2, $t6, %pc_lo12(wp_chroma_round)
	ld.w	$a3, $t7, %pc_lo12(chroma_log_weight_denom)
	ld.d	$a4, $t8, 0
	pcalau12i	$a1, %got_pc_hi20(img)
	ld.d	$a1, $a1, %got_pc_lo12(img)
	ld.d	$a5, $a1, 0
	ld.d	$a1, $s6, %pc_lo12(src_line)
	lu12i.w	$a6, 3
	ori	$a6, $a6, 3236
	ldx.w	$a5, $a5, $a6
	pcalau12i	$a6, %pc_hi20(weight_cr)
	ld.w	$a6, $a6, %pc_lo12(weight_cr)
	pcalau12i	$a7, %pc_hi20(offset_cr)
	ld.w	$a7, $a7, %pc_lo12(offset_cr)
	move	$t0, $zero
	.p2align	4, , 16
.LBB6_14:                               # %.preheader.us.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_15 Depth 2
	move	$t2, $s4
	move	$t1, $a0
	.p2align	4, , 16
.LBB6_15:                               #   Parent Loop BB6_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.hu	$a0, $t1, 0
	mul.d	$a0, $a6, $a0
	add.d	$a0, $a0, $a2
	sra.w	$a0, $a0, $a3
	add.w	$a0, $a0, $a7
	srai.d	$t3, $a0, 63
	andn	$a0, $a0, $t3
	slt	$t3, $a0, $a5
	ld.hu	$t4, $a1, 0
	maskeqz	$a0, $a0, $t3
	masknez	$t3, $a5, $t3
	or	$a0, $a0, $t3
	sub.w	$a0, $t4, $a0
	slli.d	$a0, $a0, 2
	ldx.w	$a0, $a4, $a0
	ld.hu	$t3, $t1, 2
	add.d	$a0, $a0, $s0
	mul.d	$t3, $a6, $t3
	add.d	$t3, $t3, $a2
	sra.w	$t3, $t3, $a3
	add.w	$t3, $t3, $a7
	srai.d	$t4, $t3, 63
	andn	$t3, $t3, $t4
	slt	$t4, $t3, $a5
	ld.hu	$t5, $a1, 2
	maskeqz	$t3, $t3, $t4
	masknez	$t4, $a5, $t4
	or	$t3, $t3, $t4
	sub.w	$t3, $t5, $t3
	slli.d	$t3, $t3, 2
	ldx.w	$t3, $a4, $t3
	addi.d	$t1, $t1, 4
	addi.d	$a1, $a1, 4
	addi.w	$t2, $t2, -1
	add.w	$s0, $a0, $t3
	bnez	$t2, .LBB6_15
# %bb.16:                               # %._crit_edge.us103.us
                                        #   in Loop: Header=BB6_14 Depth=1
	bge	$s0, $fp, .LBB6_30
# %bb.17:                               #   in Loop: Header=BB6_14 Depth=1
	addi.w	$t0, $t0, 1
	add.d	$a0, $t1, $s2
	bne	$t0, $s5, .LBB6_14
# %bb.18:                               # %._crit_edge101.us.loopexit
	st.d	$t8, $sp, 16                    # 8-byte Folded Spill
	st.d	$t7, $sp, 24                    # 8-byte Folded Spill
	st.d	$t6, $sp, 32                    # 8-byte Folded Spill
	add.d	$a1, $t1, $s2
	b	.LBB6_23
.LBB6_19:                               # %.loopexit65.split.us
	st.d	$t3, $s7, %pc_lo12(ref_line)
	st.d	$t2, $s6, %pc_lo12(src_line)
	b	.LBB6_34
.LBB6_20:                               # %.split.preheader
	ld.w	$a0, $s8, %pc_lo12(ref_access_method)
	addi.d	$a1, $s3, 512
	st.d	$a1, $s6, %pc_lo12(src_line)
	slli.d	$a0, $a0, 3
	pcalau12i	$a1, %pc_hi20(get_crline)
	addi.d	$fp, $a1, %pc_lo12(get_crline)
	ldx.d	$a3, $fp, $a0
	ld.d	$a0, $s1, 8
	ld.d	$s4, $sp, 56                    # 8-byte Folded Reload
	move	$a1, $s4
	ld.d	$s2, $sp, 64                    # 8-byte Folded Reload
	move	$a2, $s2
	jirl	$ra, $a3, 0
	ld.w	$a1, $s8, %pc_lo12(ref_access_method)
	slli.d	$a1, $a1, 3
	ldx.d	$a3, $fp, $a1
	ld.d	$a1, $s1, 16
	st.d	$a0, $s7, %pc_lo12(ref_line)
	addi.d	$a0, $s3, 1024
	st.d	$a0, $s6, %pc_lo12(src_line)
	move	$a0, $a1
	move	$a1, $s4
	move	$a2, $s2
	jirl	$ra, $a3, 0
	b	.LBB6_33
.LBB6_21:                               # %.preheader.lr.ph.split.us116
	bge	$s0, $fp, .LBB6_34
# %bb.22:                               # %.preheader.us112.preheader
	st.d	$t8, $sp, 16                    # 8-byte Folded Spill
	st.d	$t7, $sp, 24                    # 8-byte Folded Spill
	st.d	$t6, $sp, 32                    # 8-byte Folded Spill
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	add.d	$a1, $a0, $a1
.LBB6_23:                               # %._crit_edge101.us
	ld.w	$a0, $s8, %pc_lo12(ref_access_method)
	slli.d	$a0, $a0, 3
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	ldx.d	$a3, $a2, $a0
	ld.d	$a0, $s1, 16
	st.d	$a1, $s7, %pc_lo12(ref_line)
	addi.d	$a1, $s3, 1024
	st.d	$a1, $s6, %pc_lo12(src_line)
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 64                    # 8-byte Folded Reload
	jirl	$ra, $a3, 0
	st.d	$a0, $s7, %pc_lo12(ref_line)
	blez	$s4, .LBB6_32
# %bb.24:                               # %.preheader.lr.ph.split.us.us.1
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	ld.w	$a2, $a1, %pc_lo12(wp_chroma_round)
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	ld.w	$a3, $a1, %pc_lo12(chroma_log_weight_denom)
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a4, $a1, 0
	pcalau12i	$a1, %got_pc_hi20(img)
	ld.d	$a1, $a1, %got_pc_lo12(img)
	ld.d	$a5, $a1, 0
	ld.d	$a1, $s6, %pc_lo12(src_line)
	lu12i.w	$a6, 3
	ori	$a6, $a6, 3236
	ldx.w	$a5, $a5, $a6
	pcalau12i	$a6, %pc_hi20(weight_cr+4)
	ld.w	$a6, $a6, %pc_lo12(weight_cr+4)
	pcalau12i	$a7, %pc_hi20(offset_cr+4)
	ld.w	$a7, $a7, %pc_lo12(offset_cr+4)
	move	$t0, $zero
	.p2align	4, , 16
.LBB6_25:                               # %.preheader.us.us.1
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_26 Depth 2
	move	$t2, $s4
	move	$t1, $a0
	.p2align	4, , 16
.LBB6_26:                               #   Parent Loop BB6_25 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.hu	$a0, $t1, 0
	mul.d	$a0, $a6, $a0
	add.d	$a0, $a0, $a2
	sra.w	$a0, $a0, $a3
	add.w	$a0, $a0, $a7
	srai.d	$t3, $a0, 63
	andn	$a0, $a0, $t3
	slt	$t3, $a0, $a5
	ld.hu	$t4, $a1, 0
	maskeqz	$a0, $a0, $t3
	masknez	$t3, $a5, $t3
	or	$a0, $a0, $t3
	sub.w	$a0, $t4, $a0
	slli.d	$a0, $a0, 2
	ldx.w	$a0, $a4, $a0
	ld.hu	$t3, $t1, 2
	add.d	$a0, $a0, $s0
	mul.d	$t3, $a6, $t3
	add.d	$t3, $t3, $a2
	sra.w	$t3, $t3, $a3
	add.w	$t3, $t3, $a7
	srai.d	$t4, $t3, 63
	andn	$t3, $t3, $t4
	slt	$t4, $t3, $a5
	ld.hu	$t5, $a1, 2
	maskeqz	$t3, $t3, $t4
	masknez	$t4, $a5, $t4
	or	$t3, $t3, $t4
	sub.w	$t3, $t5, $t3
	slli.d	$t3, $t3, 2
	ldx.w	$t3, $a4, $t3
	addi.d	$t1, $t1, 4
	addi.d	$a1, $a1, 4
	addi.w	$t2, $t2, -1
	add.w	$s0, $a0, $t3
	bnez	$t2, .LBB6_26
# %bb.27:                               # %._crit_edge.us103.us.1
                                        #   in Loop: Header=BB6_25 Depth=1
	bge	$s0, $fp, .LBB6_30
# %bb.28:                               #   in Loop: Header=BB6_25 Depth=1
	addi.w	$t0, $t0, 1
	add.d	$a0, $t1, $s2
	bne	$t0, $s5, .LBB6_25
# %bb.29:                               # %._crit_edge101.split.us.us.1
	add.d	$a0, $t1, $s2
	st.d	$a0, $s7, %pc_lo12(ref_line)
	b	.LBB6_31
.LBB6_30:                               # %.loopexit.split.us
	st.d	$t1, $s7, %pc_lo12(ref_line)
.LBB6_31:                               # %.loopexit
	st.d	$a1, $s6, %pc_lo12(src_line)
	b	.LBB6_34
.LBB6_32:                               # %.preheader.us112.preheader.1
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	add.d	$a0, $a0, $a1
.LBB6_33:                               # %.loopexit
	st.d	$a0, $s7, %pc_lo12(ref_line)
.LBB6_34:                               # %.loopexit
	move	$a0, $s0
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
.Lfunc_end6:
	.size	computeSADWP, .Lfunc_end6-computeSADWP
                                        # -- End function
	.globl	computeBiPredSAD1               # -- Begin function computeBiPredSAD1
	.p2align	5
	.type	computeBiPredSAD1,@function
computeBiPredSAD1:                      # @computeBiPredSAD1
# %bb.0:
	addi.d	$sp, $sp, -192
	st.d	$ra, $sp, 184                   # 8-byte Folded Spill
	st.d	$fp, $sp, 176                   # 8-byte Folded Spill
	st.d	$s0, $sp, 168                   # 8-byte Folded Spill
	st.d	$s1, $sp, 160                   # 8-byte Folded Spill
	st.d	$s2, $sp, 152                   # 8-byte Folded Spill
	st.d	$s3, $sp, 144                   # 8-byte Folded Spill
	st.d	$s4, $sp, 136                   # 8-byte Folded Spill
	st.d	$s5, $sp, 128                   # 8-byte Folded Spill
	st.d	$s6, $sp, 120                   # 8-byte Folded Spill
	st.d	$s7, $sp, 112                   # 8-byte Folded Spill
	st.d	$s8, $sp, 104                   # 8-byte Folded Spill
	move	$s5, $a5
	move	$s1, $a4
	move	$fp, $a3
	move	$s6, $a2
	move	$s7, $a1
	pcalau12i	$a2, %pc_hi20(img_padded_size_x)
	pcalau12i	$a1, %pc_hi20(bipred2_access_method)
	st.d	$a1, $sp, 48                    # 8-byte Folded Spill
	ld.w	$a1, $a1, %pc_lo12(bipred2_access_method)
	ld.w	$s4, $a2, %pc_lo12(img_padded_size_x)
	pcalau12i	$s8, %pc_hi20(src_line)
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	st.d	$a0, $s8, %pc_lo12(src_line)
	slli.d	$a0, $a1, 3
	pcalau12i	$a1, %pc_hi20(get_line)
	addi.d	$s0, $a1, %pc_lo12(get_line)
	ldx.d	$a3, $s0, $a0
	pcalau12i	$a0, %pc_hi20(ref_pic2_sub)
	addi.d	$a0, $a0, %pc_lo12(ref_pic2_sub)
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	ld.d	$a0, $a0, 0
	st.d	$a7, $sp, 64                    # 8-byte Folded Spill
	move	$a1, $a7
	st.d	$a6, $sp, 72                    # 8-byte Folded Spill
	move	$a2, $a6
	jirl	$ra, $a3, 0
	pcalau12i	$s3, %pc_hi20(bipred1_access_method)
	ld.w	$a1, $s3, %pc_lo12(bipred1_access_method)
	slli.d	$a1, $a1, 3
	ldx.d	$a3, $s0, $a1
	pcalau12i	$s2, %pc_hi20(ref2_line)
	st.d	$a0, $s2, %pc_lo12(ref2_line)
	pcalau12i	$a0, %pc_hi20(ref_pic1_sub)
	addi.d	$a0, $a0, %pc_lo12(ref_pic1_sub)
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	ld.d	$a0, $a0, 0
	st.d	$s5, $sp, 80                    # 8-byte Folded Spill
	move	$a1, $s5
	st.d	$s1, $sp, 88                    # 8-byte Folded Spill
	move	$a2, $s1
	jirl	$ra, $a3, 0
	pcalau12i	$s5, %pc_hi20(ref1_line)
	st.d	$a0, $s5, %pc_lo12(ref1_line)
	blez	$s7, .LBB7_8
# %bb.1:                                # %.preheader67.lr.ph
	ld.d	$a4, $s2, %pc_lo12(ref2_line)
	blez	$s6, .LBB7_9
# %bb.2:                                # %.preheader67.us.preheader
	pcalau12i	$a1, %got_pc_hi20(byte_abs)
	ld.d	$a2, $a1, %got_pc_lo12(byte_abs)
	move	$s0, $zero
	move	$a1, $zero
	ld.d	$a2, $a2, 0
	ld.d	$a5, $s8, %pc_lo12(src_line)
	slli.d	$a3, $s4, 1
	slli.d	$a6, $s6, 1
	sub.d	$a3, $a3, $a6
	vrepli.b	$vr0, 0
	.p2align	4, , 16
.LBB7_3:                                # %.preheader67.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_4 Depth 2
	move	$a6, $zero
	move	$a7, $a0
	move	$t0, $a4
	.p2align	4, , 16
.LBB7_4:                                #   Parent Loop BB7_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $a5, 0
	ld.d	$a4, $a7, 0
	ld.d	$t1, $t0, 0
	vinsgr2vr.d	$vr1, $a0, 0
	vilvl.h	$vr1, $vr0, $vr1
	vinsgr2vr.d	$vr2, $a4, 0
	vinsgr2vr.d	$vr3, $t1, 0
	vor.v	$vr4, $vr2, $vr3
	vxor.v	$vr2, $vr2, $vr3
	vsrli.h	$vr2, $vr2, 1
	vsub.h	$vr2, $vr4, $vr2
	vilvl.h	$vr2, $vr0, $vr2
	vsub.w	$vr1, $vr1, $vr2
	vpickve2gr.w	$a0, $vr1, 0
	slli.d	$a0, $a0, 2
	ldx.w	$a0, $a2, $a0
	addi.d	$a5, $a5, 8
	addi.d	$a7, $a7, 8
	addi.d	$t0, $t0, 8
	add.d	$a0, $a0, $s0
	vpickve2gr.w	$a4, $vr1, 1
	slli.d	$a4, $a4, 2
	ldx.w	$a4, $a2, $a4
	vpickve2gr.w	$t1, $vr1, 2
	slli.d	$t1, $t1, 2
	ldx.w	$t1, $a2, $t1
	vpickve2gr.w	$t2, $vr1, 3
	slli.d	$t2, $t2, 2
	ldx.w	$t2, $a2, $t2
	add.d	$a0, $a0, $a4
	add.d	$a0, $a0, $t1
	addi.w	$a6, $a6, 4
	add.w	$s0, $a0, $t2
	blt	$a6, $s6, .LBB7_4
# %bb.5:                                # %._crit_edge.us
                                        #   in Loop: Header=BB7_3 Depth=1
	bge	$s0, $fp, .LBB7_19
# %bb.6:                                #   in Loop: Header=BB7_3 Depth=1
	add.d	$a4, $t0, $a3
	addi.w	$a1, $a1, 1
	add.d	$a0, $a7, $a3
	bne	$a1, $s7, .LBB7_3
# %bb.7:                                # %._crit_edge90.split.us
	add.d	$a0, $t0, $a3
	st.d	$a0, $s2, %pc_lo12(ref2_line)
	add.d	$a0, $a7, $a3
	st.d	$a0, $s5, %pc_lo12(ref1_line)
	st.d	$a5, $s8, %pc_lo12(src_line)
	pcalau12i	$a0, %pc_hi20(ChromaMEEnable)
	ld.w	$a0, $a0, %pc_lo12(ChromaMEEnable)
	bnez	$a0, .LBB7_11
	b	.LBB7_33
.LBB7_8:
	move	$s0, $zero
	pcalau12i	$a0, %pc_hi20(ChromaMEEnable)
	ld.w	$a0, $a0, %pc_lo12(ChromaMEEnable)
	bnez	$a0, .LBB7_11
	b	.LBB7_33
.LBB7_9:                                # %.preheader67.lr.ph.split
	move	$s0, $zero
	blez	$fp, .LBB7_33
# %bb.10:                               # %.preheader67.preheader
	slli.d	$a1, $s4, 1
	slli.d	$a2, $s6, 1
	sub.d	$a1, $a1, $a2
	addi.w	$a3, $s7, -1
	mul.d	$a1, $a1, $a3
	alsl.d	$a1, $s4, $a1, 1
	sub.d	$a1, $a1, $a2
	add.d	$a2, $a4, $a1
	add.d	$a0, $a0, $a1
	st.d	$a2, $s2, %pc_lo12(ref2_line)
	st.d	$a0, $s5, %pc_lo12(ref1_line)
	pcalau12i	$a0, %pc_hi20(ChromaMEEnable)
	ld.w	$a0, $a0, %pc_lo12(ChromaMEEnable)
	beqz	$a0, .LBB7_33
.LBB7_11:
	pcalau12i	$a0, %pc_hi20(shift_cr_y)
	ld.wu	$a0, $a0, %pc_lo12(shift_cr_y)
	sra.w	$s7, $s7, $a0
	blez	$s7, .LBB7_20
# %bb.12:                               # %.preheader.lr.ph.us.preheader
	pcalau12i	$a0, %pc_hi20(shift_cr_x)
	ld.wu	$a0, $a0, %pc_lo12(shift_cr_x)
	pcalau12i	$a1, %pc_hi20(img_cr_padded_size_x)
	ld.w	$a1, $a1, %pc_lo12(img_cr_padded_size_x)
	sra.w	$s4, $s6, $a0
	slli.d	$a0, $a1, 1
	slli.d	$a2, $s4, 1
	sub.d	$s6, $a0, $a2
	addi.w	$a0, $s7, -1
	mul.d	$a0, $s6, $a0
	alsl.d	$a0, $a1, $a0, 1
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	ld.w	$a1, $a1, %pc_lo12(bipred2_access_method)
	sub.d	$a0, $a0, $a2
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	addi.d	$a0, $a0, 512
	st.d	$a0, $s8, %pc_lo12(src_line)
	slli.d	$a0, $a1, 3
	pcalau12i	$a1, %pc_hi20(get_crline)
	addi.d	$s1, $a1, %pc_lo12(get_crline)
	ldx.d	$a3, $s1, $a0
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 8
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 72                    # 8-byte Folded Reload
	jirl	$ra, $a3, 0
	ld.w	$a1, $s3, %pc_lo12(bipred1_access_method)
	slli.d	$a1, $a1, 3
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	ldx.d	$a3, $s1, $a1
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a1, $a1, 8
	st.d	$a0, $s2, %pc_lo12(ref2_line)
	move	$a0, $a1
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
	jirl	$ra, $a3, 0
	ld.d	$a7, $s2, %pc_lo12(ref2_line)
	st.d	$a0, $s5, %pc_lo12(ref1_line)
	pcalau12i	$a1, %got_pc_hi20(byte_abs)
	ld.d	$t2, $a1, %got_pc_lo12(byte_abs)
	blez	$s4, .LBB7_21
# %bb.13:                               # %.preheader.us.us.preheader
	ld.d	$a3, $t2, 0
	ld.d	$a1, $s8, %pc_lo12(src_line)
	move	$a5, $zero
	.p2align	4, , 16
.LBB7_14:                               # %.preheader.us.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_15 Depth 2
	move	$a6, $s4
	move	$a2, $a0
	move	$a4, $a7
	.p2align	4, , 16
.LBB7_15:                               #   Parent Loop BB7_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.hu	$a0, $a2, 0
	ld.hu	$a7, $a4, 0
	ld.hu	$t0, $a1, 0
	add.d	$a0, $a0, $a7
	addi.d	$a0, $a0, 1
	srli.d	$a0, $a0, 1
	sub.d	$a0, $t0, $a0
	slli.d	$a0, $a0, 2
	ldx.w	$a0, $a3, $a0
	ld.hu	$a7, $a2, 2
	ld.hu	$t0, $a4, 2
	add.d	$a0, $a0, $s0
	ld.hu	$t1, $a1, 2
	addi.d	$a1, $a1, 4
	add.d	$a7, $a7, $t0
	addi.d	$a7, $a7, 1
	srli.d	$a7, $a7, 1
	sub.d	$a7, $t1, $a7
	slli.d	$a7, $a7, 2
	ldx.w	$a7, $a3, $a7
	addi.d	$a2, $a2, 4
	addi.d	$a4, $a4, 4
	addi.w	$a6, $a6, -1
	add.w	$s0, $a0, $a7
	bnez	$a6, .LBB7_15
# %bb.16:                               # %._crit_edge.us118.us
                                        #   in Loop: Header=BB7_14 Depth=1
	bge	$s0, $fp, .LBB7_30
# %bb.17:                               #   in Loop: Header=BB7_14 Depth=1
	add.d	$a7, $a4, $s6
	addi.w	$a5, $a5, 1
	add.d	$a0, $a2, $s6
	bne	$a5, $s7, .LBB7_14
# %bb.18:                               # %._crit_edge116.us.loopexit
	st.d	$t2, $sp, 8                     # 8-byte Folded Spill
	add.d	$a1, $a2, $s6
	add.d	$a2, $a4, $s6
	b	.LBB7_23
.LBB7_19:                               # %.loopexit68.split.us
	st.d	$t0, $s2, %pc_lo12(ref2_line)
	st.d	$a7, $s5, %pc_lo12(ref1_line)
	st.d	$a5, $s8, %pc_lo12(src_line)
	b	.LBB7_33
.LBB7_20:                               # %.split.preheader
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.w	$a0, $s1, %pc_lo12(bipred2_access_method)
	st.d	$s5, $sp, 32                    # 8-byte Folded Spill
	move	$s4, $s3
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	addi.d	$a1, $a1, 512
	st.d	$a1, $s8, %pc_lo12(src_line)
	slli.d	$a0, $a0, 3
	pcalau12i	$a1, %pc_hi20(get_crline)
	addi.d	$fp, $a1, %pc_lo12(get_crline)
	ldx.d	$a3, $fp, $a0
	ld.d	$s3, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a0, $s3, 8
	ld.d	$s7, $sp, 64                    # 8-byte Folded Reload
	move	$a1, $s7
	ld.d	$s6, $sp, 72                    # 8-byte Folded Reload
	move	$a2, $s6
	jirl	$ra, $a3, 0
	ld.w	$a1, $s4, %pc_lo12(bipred1_access_method)
	slli.d	$a1, $a1, 3
	ldx.d	$a3, $fp, $a1
	st.d	$s8, $sp, 24                    # 8-byte Folded Spill
	ld.d	$s8, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a1, $s8, 8
	st.d	$a0, $s2, %pc_lo12(ref2_line)
	move	$a0, $a1
	ld.d	$s5, $sp, 80                    # 8-byte Folded Reload
	move	$a1, $s5
	ld.d	$s4, $sp, 88                    # 8-byte Folded Reload
	move	$a2, $s4
	jirl	$ra, $a3, 0
	ld.w	$a1, $s1, %pc_lo12(bipred2_access_method)
	slli.d	$a1, $a1, 3
	ldx.d	$a3, $fp, $a1
	ld.d	$a1, $s3, 16
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	st.d	$a0, $s1, %pc_lo12(ref1_line)
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	addi.d	$a0, $a0, 1024
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	st.d	$a0, $a2, %pc_lo12(src_line)
	move	$a0, $a1
	move	$a1, $s7
	move	$a2, $s6
	jirl	$ra, $a3, 0
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	ld.w	$a1, $a1, %pc_lo12(bipred1_access_method)
	slli.d	$a1, $a1, 3
	ldx.d	$a3, $fp, $a1
	ld.d	$a1, $s8, 16
	st.d	$a0, $s2, %pc_lo12(ref2_line)
	move	$a0, $a1
	move	$a1, $s5
	move	$a2, $s4
	jirl	$ra, $a3, 0
	st.d	$a0, $s1, %pc_lo12(ref1_line)
	b	.LBB7_33
.LBB7_21:                               # %.preheader.lr.ph.split.us134
	bge	$s0, $fp, .LBB7_33
# %bb.22:                               # %.preheader.us129.preheader
	st.d	$t2, $sp, 8                     # 8-byte Folded Spill
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	add.d	$a2, $a7, $a1
	add.d	$a1, $a0, $a1
.LBB7_23:                               # %._crit_edge116.us
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(bipred2_access_method)
	st.d	$a2, $s2, %pc_lo12(ref2_line)
	slli.d	$a0, $a0, 3
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ldx.d	$a3, $s1, $a0
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 16
	st.d	$a1, $s5, %pc_lo12(ref1_line)
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	addi.d	$a1, $a1, 1024
	st.d	$a1, $s8, %pc_lo12(src_line)
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 72                    # 8-byte Folded Reload
	jirl	$ra, $a3, 0
	ld.w	$a1, $s3, %pc_lo12(bipred1_access_method)
	slli.d	$a1, $a1, 3
	ldx.d	$a3, $s1, $a1
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a1, $a1, 16
	st.d	$a0, $s2, %pc_lo12(ref2_line)
	move	$a0, $a1
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
	jirl	$ra, $a3, 0
	ld.d	$a7, $s2, %pc_lo12(ref2_line)
	st.d	$a0, $s5, %pc_lo12(ref1_line)
	blez	$s4, .LBB7_32
# %bb.24:                               # %.preheader.us.us.preheader.1
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	ld.d	$a3, $a1, 0
	ld.d	$a1, $s8, %pc_lo12(src_line)
	move	$a5, $zero
	.p2align	4, , 16
.LBB7_25:                               # %.preheader.us.us.1
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_26 Depth 2
	move	$a6, $s4
	move	$a2, $a0
	move	$a4, $a7
	.p2align	4, , 16
.LBB7_26:                               #   Parent Loop BB7_25 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.hu	$a0, $a2, 0
	ld.hu	$a7, $a4, 0
	ld.hu	$t0, $a1, 0
	add.d	$a0, $a0, $a7
	addi.d	$a0, $a0, 1
	srli.d	$a0, $a0, 1
	sub.d	$a0, $t0, $a0
	slli.d	$a0, $a0, 2
	ldx.w	$a0, $a3, $a0
	ld.hu	$a7, $a2, 2
	ld.hu	$t0, $a4, 2
	add.d	$a0, $a0, $s0
	ld.hu	$t1, $a1, 2
	addi.d	$a1, $a1, 4
	add.d	$a7, $a7, $t0
	addi.d	$a7, $a7, 1
	srli.d	$a7, $a7, 1
	sub.d	$a7, $t1, $a7
	slli.d	$a7, $a7, 2
	ldx.w	$a7, $a3, $a7
	addi.d	$a2, $a2, 4
	addi.d	$a4, $a4, 4
	addi.w	$a6, $a6, -1
	add.w	$s0, $a0, $a7
	bnez	$a6, .LBB7_26
# %bb.27:                               # %._crit_edge.us118.us.1
                                        #   in Loop: Header=BB7_25 Depth=1
	bge	$s0, $fp, .LBB7_30
# %bb.28:                               #   in Loop: Header=BB7_25 Depth=1
	add.d	$a7, $a4, $s6
	addi.w	$a5, $a5, 1
	add.d	$a0, $a2, $s6
	bne	$a5, $s7, .LBB7_25
# %bb.29:                               # %._crit_edge116.split.us.us.1
	add.d	$a0, $a4, $s6
	st.d	$a0, $s2, %pc_lo12(ref2_line)
	add.d	$a0, $a2, $s6
	st.d	$a0, $s5, %pc_lo12(ref1_line)
	b	.LBB7_31
.LBB7_30:                               # %.loopexit.split.us
	st.d	$a4, $s2, %pc_lo12(ref2_line)
	st.d	$a2, $s5, %pc_lo12(ref1_line)
.LBB7_31:                               # %.loopexit
	st.d	$a1, $s8, %pc_lo12(src_line)
	b	.LBB7_33
.LBB7_32:                               # %.preheader.us129.preheader.1
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	add.d	$a1, $a7, $a2
	add.d	$a0, $a0, $a2
	st.d	$a1, $s2, %pc_lo12(ref2_line)
	st.d	$a0, $s5, %pc_lo12(ref1_line)
.LBB7_33:                               # %.loopexit
	move	$a0, $s0
	ld.d	$s8, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 168                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 176                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 184                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 192
	ret
.Lfunc_end7:
	.size	computeBiPredSAD1, .Lfunc_end7-computeBiPredSAD1
                                        # -- End function
	.globl	computeBiPredSAD2               # -- Begin function computeBiPredSAD2
	.p2align	5
	.type	computeBiPredSAD2,@function
computeBiPredSAD2:                      # @computeBiPredSAD2
# %bb.0:
	addi.d	$sp, $sp, -208
	st.d	$ra, $sp, 200                   # 8-byte Folded Spill
	st.d	$fp, $sp, 192                   # 8-byte Folded Spill
	st.d	$s0, $sp, 184                   # 8-byte Folded Spill
	st.d	$s1, $sp, 176                   # 8-byte Folded Spill
	st.d	$s2, $sp, 168                   # 8-byte Folded Spill
	st.d	$s3, $sp, 160                   # 8-byte Folded Spill
	st.d	$s4, $sp, 152                   # 8-byte Folded Spill
	st.d	$s5, $sp, 144                   # 8-byte Folded Spill
	st.d	$s6, $sp, 136                   # 8-byte Folded Spill
	st.d	$s7, $sp, 128                   # 8-byte Folded Spill
	st.d	$s8, $sp, 120                   # 8-byte Folded Spill
	pcalau12i	$t0, %pc_hi20(luma_log_weight_denom)
	ld.w	$t0, $t0, %pc_lo12(luma_log_weight_denom)
	pcalau12i	$t1, %pc_hi20(wp_luma_round)
	ld.w	$t1, $t1, %pc_lo12(wp_luma_round)
	move	$s4, $a5
	move	$s8, $a4
	move	$fp, $a3
	move	$s6, $a2
	move	$s7, $a1
	addi.d	$s2, $t0, 1
	slli.d	$s3, $t1, 1
	pcalau12i	$a2, %pc_hi20(img_padded_size_x)
	pcalau12i	$a1, %pc_hi20(bipred2_access_method)
	st.d	$a1, $sp, 88                    # 8-byte Folded Spill
	ld.w	$a1, $a1, %pc_lo12(bipred2_access_method)
	ld.w	$s0, $a2, %pc_lo12(img_padded_size_x)
	pcalau12i	$a2, %pc_hi20(src_line)
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	st.d	$a2, $sp, 112                   # 8-byte Folded Spill
	st.d	$a0, $a2, %pc_lo12(src_line)
	slli.d	$a0, $a1, 3
	pcalau12i	$a1, %pc_hi20(get_line)
	addi.d	$s1, $a1, %pc_lo12(get_line)
	ldx.d	$a3, $s1, $a0
	pcalau12i	$a0, %pc_hi20(ref_pic2_sub)
	addi.d	$a0, $a0, %pc_lo12(ref_pic2_sub)
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	ld.d	$a0, $a0, 0
	st.d	$a7, $sp, 64                    # 8-byte Folded Spill
	move	$a1, $a7
	st.d	$a6, $sp, 72                    # 8-byte Folded Spill
	move	$a2, $a6
	jirl	$ra, $a3, 0
	pcalau12i	$a1, %pc_hi20(bipred1_access_method)
	st.d	$a1, $sp, 56                    # 8-byte Folded Spill
	ld.w	$a1, $a1, %pc_lo12(bipred1_access_method)
	slli.d	$a1, $a1, 3
	ldx.d	$a3, $s1, $a1
	pcalau12i	$s1, %pc_hi20(ref2_line)
	st.d	$a0, $s1, %pc_lo12(ref2_line)
	pcalau12i	$a0, %pc_hi20(ref_pic1_sub)
	addi.d	$s5, $a0, %pc_lo12(ref_pic1_sub)
	ld.d	$a0, $s5, 0
	st.d	$s4, $sp, 80                    # 8-byte Folded Spill
	move	$a1, $s4
	st.d	$s8, $sp, 104                   # 8-byte Folded Spill
	move	$a2, $s8
	jirl	$ra, $a3, 0
	pcalau12i	$t8, %pc_hi20(ref1_line)
	st.d	$a0, $t8, %pc_lo12(ref1_line)
	blez	$s7, .LBB8_8
# %bb.1:                                # %.preheader103.lr.ph
	ld.d	$t1, $s1, %pc_lo12(ref2_line)
	blez	$s6, .LBB8_9
# %bb.2:                                # %.preheader103.lr.ph.split.us
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	ld.d	$t2, $a1, %pc_lo12(src_line)
	pcalau12i	$a1, %pc_hi20(weight1)
	ld.h	$a1, $a1, %pc_lo12(weight1)
	pcalau12i	$a2, %pc_hi20(weight2)
	ld.h	$a2, $a2, %pc_lo12(weight2)
	pcalau12i	$a3, %pc_hi20(offsetBi)
	ld.h	$a3, $a3, %pc_lo12(offsetBi)
	pcalau12i	$a4, %got_pc_hi20(byte_abs)
	ld.d	$a4, $a4, %got_pc_lo12(byte_abs)
	ld.d	$a4, $a4, 0
	pcalau12i	$a5, %got_pc_hi20(img)
	ld.d	$a5, $a5, %got_pc_lo12(img)
	ld.d	$a6, $a5, 0
	move	$s4, $zero
	move	$a5, $zero
	lu12i.w	$a7, 3
	ori	$a7, $a7, 3232
	ldx.w	$a7, $a6, $a7
	slli.d	$a6, $s0, 1
	slli.d	$t0, $s6, 1
	sub.d	$a6, $a6, $t0
	.p2align	4, , 16
.LBB8_3:                                # %.preheader103.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_4 Depth 2
	move	$t0, $zero
	move	$t3, $a0
	move	$t4, $t1
	.p2align	4, , 16
.LBB8_4:                                #   Parent Loop BB8_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a0, $t4
	move	$t1, $t3
	ld.hu	$t3, $t3, 0
	ld.hu	$t4, $t4, 0
	mul.d	$t3, $t3, $a1
	mul.d	$t4, $t4, $a2
	add.d	$t3, $t3, $s3
	add.d	$t3, $t3, $t4
	sra.w	$t3, $t3, $s2
	add.w	$t3, $t3, $a3
	srai.d	$t4, $t3, 63
	andn	$t3, $t3, $t4
	slt	$t4, $t3, $a7
	ld.hu	$t5, $t2, 0
	maskeqz	$t3, $t3, $t4
	masknez	$t4, $a7, $t4
	or	$t3, $t3, $t4
	sub.w	$t3, $t5, $t3
	slli.d	$t3, $t3, 2
	ldx.w	$t3, $a4, $t3
	ld.hu	$t4, $t1, 2
	ld.hu	$t5, $a0, 2
	add.d	$t3, $t3, $s4
	mul.d	$t4, $t4, $a1
	mul.d	$t5, $t5, $a2
	add.d	$t4, $t4, $s3
	add.d	$t4, $t4, $t5
	sra.w	$t4, $t4, $s2
	add.w	$t4, $t4, $a3
	srai.d	$t5, $t4, 63
	andn	$t4, $t4, $t5
	slt	$t5, $t4, $a7
	ld.hu	$t6, $t2, 2
	maskeqz	$t4, $t4, $t5
	masknez	$t5, $a7, $t5
	or	$t4, $t4, $t5
	sub.w	$t4, $t6, $t4
	ld.hu	$t5, $t1, 4
	ld.hu	$t6, $a0, 4
	slli.d	$t4, $t4, 2
	ldx.w	$t4, $a4, $t4
	mul.d	$t5, $t5, $a1
	mul.d	$t6, $t6, $a2
	add.d	$t5, $t5, $s3
	add.d	$t5, $t5, $t6
	sra.w	$t5, $t5, $s2
	add.w	$t5, $t5, $a3
	srai.d	$t6, $t5, 63
	andn	$t5, $t5, $t6
	slt	$t6, $t5, $a7
	ld.hu	$t7, $t2, 4
	maskeqz	$t5, $t5, $t6
	masknez	$t6, $a7, $t6
	or	$t5, $t5, $t6
	sub.w	$t5, $t7, $t5
	slli.d	$t5, $t5, 2
	ldx.w	$t5, $a4, $t5
	ld.hu	$t6, $t1, 6
	ld.hu	$t7, $a0, 6
	add.d	$t3, $t3, $t4
	add.d	$t5, $t3, $t5
	mul.d	$t3, $t6, $a1
	mul.d	$t4, $t7, $a2
	add.d	$t3, $t3, $s3
	add.d	$t3, $t3, $t4
	sra.w	$t3, $t3, $s2
	add.w	$t3, $t3, $a3
	srai.d	$t4, $t3, 63
	andn	$t3, $t3, $t4
	slt	$t4, $t3, $a7
	maskeqz	$t3, $t3, $t4
	ld.hu	$t6, $t2, 6
	masknez	$t4, $a7, $t4
	or	$t4, $t3, $t4
	addi.d	$t3, $t1, 8
	sub.w	$t1, $t6, $t4
	slli.d	$t1, $t1, 2
	ldx.w	$t1, $a4, $t1
	addi.d	$t4, $a0, 8
	addi.d	$t2, $t2, 8
	addi.w	$t0, $t0, 4
	add.w	$s4, $t5, $t1
	blt	$t0, $s6, .LBB8_4
# %bb.5:                                # %._crit_edge.us
                                        #   in Loop: Header=BB8_3 Depth=1
	bge	$s4, $fp, .LBB8_19
# %bb.6:                                #   in Loop: Header=BB8_3 Depth=1
	add.d	$t1, $t4, $a6
	addi.w	$a5, $a5, 1
	add.d	$a0, $t3, $a6
	bne	$a5, $s7, .LBB8_3
# %bb.7:                                # %._crit_edge126.split.us
	add.d	$a0, $t4, $a6
	st.d	$a0, $s1, %pc_lo12(ref2_line)
	add.d	$a0, $t3, $a6
	st.d	$a0, $t8, %pc_lo12(ref1_line)
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	st.d	$t2, $a0, %pc_lo12(src_line)
	pcalau12i	$a0, %pc_hi20(ChromaMEEnable)
	ld.w	$a0, $a0, %pc_lo12(ChromaMEEnable)
	bnez	$a0, .LBB8_11
	b	.LBB8_33
.LBB8_8:
	move	$s4, $zero
	pcalau12i	$a0, %pc_hi20(ChromaMEEnable)
	ld.w	$a0, $a0, %pc_lo12(ChromaMEEnable)
	bnez	$a0, .LBB8_11
	b	.LBB8_33
.LBB8_9:                                # %.preheader103.lr.ph.split
	move	$s4, $zero
	blez	$fp, .LBB8_33
# %bb.10:                               # %.preheader103.preheader
	slli.d	$a1, $s0, 1
	slli.d	$a2, $s6, 1
	sub.d	$a1, $a1, $a2
	addi.w	$a3, $s7, -1
	mul.d	$a1, $a1, $a3
	alsl.d	$a1, $s0, $a1, 1
	sub.d	$a1, $a1, $a2
	add.d	$a2, $t1, $a1
	add.d	$a0, $a0, $a1
	st.d	$a2, $s1, %pc_lo12(ref2_line)
	st.d	$a0, $t8, %pc_lo12(ref1_line)
	pcalau12i	$a0, %pc_hi20(ChromaMEEnable)
	ld.w	$a0, $a0, %pc_lo12(ChromaMEEnable)
	beqz	$a0, .LBB8_33
.LBB8_11:
	st.d	$s1, $sp, 40                    # 8-byte Folded Spill
	move	$s1, $s5
	st.d	$t8, $sp, 32                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(shift_cr_y)
	ld.wu	$a0, $a0, %pc_lo12(shift_cr_y)
	sra.w	$s7, $s7, $a0
	blez	$s7, .LBB8_20
# %bb.12:                               # %.preheader.lr.ph.us.preheader
	pcalau12i	$a0, %pc_hi20(shift_cr_x)
	ld.wu	$a0, $a0, %pc_lo12(shift_cr_x)
	pcalau12i	$a1, %pc_hi20(img_cr_padded_size_x)
	ld.w	$a1, $a1, %pc_lo12(img_cr_padded_size_x)
	sra.w	$s0, $s6, $a0
	slli.d	$a0, $a1, 1
	slli.d	$a2, $s0, 1
	sub.d	$s6, $a0, $a2
	addi.w	$a0, $s7, -1
	mul.d	$a0, $s6, $a0
	alsl.d	$a0, $a1, $a0, 1
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	ld.w	$a1, $a1, %pc_lo12(bipred2_access_method)
	sub.d	$a0, $a0, $a2
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	addi.d	$a0, $a0, 512
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	st.d	$a0, $a2, %pc_lo12(src_line)
	slli.d	$a0, $a1, 3
	pcalau12i	$a1, %pc_hi20(get_crline)
	ld.d	$s5, $sp, 104                   # 8-byte Folded Reload
	addi.d	$s8, $a1, %pc_lo12(get_crline)
	ldx.d	$a3, $s8, $a0
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 8
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 72                    # 8-byte Folded Reload
	jirl	$ra, $a3, 0
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	ld.w	$a1, $a1, %pc_lo12(bipred1_access_method)
	slli.d	$a1, $a1, 3
	st.d	$s8, $sp, 24                    # 8-byte Folded Spill
	ldx.d	$a3, $s8, $a1
	ld.d	$a1, $s1, 8
	ld.d	$s8, $sp, 40                    # 8-byte Folded Reload
	st.d	$a0, $s8, %pc_lo12(ref2_line)
	move	$a0, $a1
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	move	$a2, $s5
	jirl	$ra, $a3, 0
	ld.d	$t3, $s8, %pc_lo12(ref2_line)
	ld.d	$t6, $sp, 32                    # 8-byte Folded Reload
	st.d	$a0, $t6, %pc_lo12(ref1_line)
	pcalau12i	$a1, %got_pc_hi20(byte_abs)
	ld.d	$t8, $a1, %got_pc_lo12(byte_abs)
	blez	$s0, .LBB8_21
# %bb.13:                               # %.preheader.lr.ph.split.us.us
	ld.d	$a2, $t8, 0
	pcalau12i	$a1, %got_pc_hi20(img)
	ld.d	$a1, $a1, %got_pc_lo12(img)
	ld.d	$a5, $a1, 0
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(src_line)
	pcalau12i	$a3, %pc_hi20(weight1_cr)
	ld.h	$a3, $a3, %pc_lo12(weight1_cr)
	pcalau12i	$a4, %pc_hi20(weight2_cr)
	ld.h	$a4, $a4, %pc_lo12(weight2_cr)
	lu12i.w	$a6, 3
	ori	$a6, $a6, 3236
	ldx.w	$a5, $a5, $a6
	pcalau12i	$a6, %pc_hi20(offsetBi_cr)
	ld.h	$a6, $a6, %pc_lo12(offsetBi_cr)
	move	$t0, $zero
	move	$s5, $s1
	ld.d	$s1, $sp, 40                    # 8-byte Folded Reload
	ld.d	$t7, $sp, 88                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB8_14:                               # %.preheader.us.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_15 Depth 2
	move	$t2, $s0
	move	$a7, $a0
	move	$t1, $t3
	.p2align	4, , 16
.LBB8_15:                               #   Parent Loop BB8_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.hu	$a0, $a7, 0
	ld.hu	$t3, $t1, 0
	mul.d	$a0, $a0, $a3
	mul.d	$t3, $t3, $a4
	add.d	$a0, $a0, $s3
	add.d	$a0, $a0, $t3
	sra.w	$a0, $a0, $s2
	add.w	$a0, $a0, $a6
	srai.d	$t3, $a0, 63
	andn	$a0, $a0, $t3
	slt	$t3, $a0, $a5
	ld.hu	$t4, $a1, 0
	maskeqz	$a0, $a0, $t3
	masknez	$t3, $a5, $t3
	or	$a0, $a0, $t3
	sub.w	$a0, $t4, $a0
	slli.d	$a0, $a0, 2
	ldx.w	$a0, $a2, $a0
	ld.hu	$t3, $a7, 2
	ld.hu	$t4, $t1, 2
	add.d	$a0, $a0, $s4
	mul.d	$t3, $t3, $a3
	mul.d	$t4, $t4, $a4
	add.d	$t3, $t3, $s3
	add.d	$t3, $t3, $t4
	sra.w	$t3, $t3, $s2
	add.w	$t3, $t3, $a6
	srai.d	$t4, $t3, 63
	andn	$t3, $t3, $t4
	slt	$t4, $t3, $a5
	maskeqz	$t3, $t3, $t4
	ld.hu	$t5, $a1, 2
	masknez	$t4, $a5, $t4
	or	$t3, $t3, $t4
	addi.d	$a7, $a7, 4
	sub.w	$t3, $t5, $t3
	slli.d	$t3, $t3, 2
	ldx.w	$t3, $a2, $t3
	addi.d	$t1, $t1, 4
	addi.d	$a1, $a1, 4
	addi.w	$t2, $t2, -1
	add.w	$s4, $a0, $t3
	bnez	$t2, .LBB8_15
# %bb.16:                               # %._crit_edge.us154.us
                                        #   in Loop: Header=BB8_14 Depth=1
	bge	$s4, $fp, .LBB8_30
# %bb.17:                               #   in Loop: Header=BB8_14 Depth=1
	add.d	$t3, $t1, $s6
	addi.w	$t0, $t0, 1
	add.d	$a0, $a7, $s6
	bne	$t0, $s7, .LBB8_14
# %bb.18:                               # %._crit_edge152.us.loopexit
	st.d	$t8, $sp, 8                     # 8-byte Folded Spill
	add.d	$a1, $a7, $s6
	add.d	$a2, $t1, $s6
	b	.LBB8_23
.LBB8_19:                               # %.loopexit104.split.us
	st.d	$t4, $s1, %pc_lo12(ref2_line)
	st.d	$t3, $t8, %pc_lo12(ref1_line)
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	st.d	$t2, $a0, %pc_lo12(src_line)
	b	.LBB8_33
.LBB8_20:                               # %.split.preheader
	ld.d	$s0, $sp, 88                    # 8-byte Folded Reload
	ld.w	$a0, $s0, %pc_lo12(bipred2_access_method)
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	addi.d	$a1, $a1, 512
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	st.d	$a1, $a2, %pc_lo12(src_line)
	slli.d	$a0, $a0, 3
	pcalau12i	$a1, %pc_hi20(get_crline)
	addi.d	$fp, $a1, %pc_lo12(get_crline)
	ldx.d	$a3, $fp, $a0
	ld.d	$s7, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a0, $s7, 8
	ld.d	$s6, $sp, 64                    # 8-byte Folded Reload
	move	$a1, $s6
	ld.d	$s3, $sp, 72                    # 8-byte Folded Reload
	move	$a2, $s3
	jirl	$ra, $a3, 0
	ld.d	$s8, $sp, 56                    # 8-byte Folded Reload
	ld.w	$a1, $s8, %pc_lo12(bipred1_access_method)
	slli.d	$a1, $a1, 3
	ldx.d	$a3, $fp, $a1
	ld.d	$a1, $s1, 8
	ld.d	$s5, $sp, 40                    # 8-byte Folded Reload
	st.d	$a0, $s5, %pc_lo12(ref2_line)
	move	$a0, $a1
	ld.d	$s2, $sp, 80                    # 8-byte Folded Reload
	move	$a1, $s2
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	jirl	$ra, $a3, 0
	ld.w	$a1, $s0, %pc_lo12(bipred2_access_method)
	slli.d	$a1, $a1, 3
	ldx.d	$a3, $fp, $a1
	ld.d	$a1, $s7, 16
	ld.d	$s0, $sp, 32                    # 8-byte Folded Reload
	st.d	$a0, $s0, %pc_lo12(ref1_line)
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	addi.d	$a0, $a0, 1024
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	st.d	$a0, $a2, %pc_lo12(src_line)
	move	$a0, $a1
	move	$a1, $s6
	move	$a2, $s3
	jirl	$ra, $a3, 0
	ld.w	$a1, $s8, %pc_lo12(bipred1_access_method)
	slli.d	$a1, $a1, 3
	ldx.d	$a3, $fp, $a1
	ld.d	$a1, $s1, 16
	st.d	$a0, $s5, %pc_lo12(ref2_line)
	move	$a0, $a1
	move	$a1, $s2
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	jirl	$ra, $a3, 0
	st.d	$a0, $s0, %pc_lo12(ref1_line)
	b	.LBB8_33
.LBB8_21:                               # %.preheader.lr.ph.split.us170
	bge	$s4, $fp, .LBB8_33
# %bb.22:                               # %.preheader.us165.preheader
	st.d	$t8, $sp, 8                     # 8-byte Folded Spill
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	add.d	$a2, $t3, $a1
	add.d	$a1, $a0, $a1
	move	$s5, $s1
	ld.d	$s1, $sp, 40                    # 8-byte Folded Reload
	ld.d	$t7, $sp, 88                    # 8-byte Folded Reload
.LBB8_23:                               # %._crit_edge152.us
	ld.w	$a0, $t7, %pc_lo12(bipred2_access_method)
	st.d	$a2, $s1, %pc_lo12(ref2_line)
	slli.d	$a0, $a0, 3
	ld.d	$s8, $sp, 24                    # 8-byte Folded Reload
	ldx.d	$a3, $s8, $a0
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 16
	st.d	$a1, $t6, %pc_lo12(ref1_line)
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	addi.d	$a1, $a1, 1024
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	st.d	$a1, $a2, %pc_lo12(src_line)
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 72                    # 8-byte Folded Reload
	jirl	$ra, $a3, 0
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	ld.w	$a1, $a1, %pc_lo12(bipred1_access_method)
	slli.d	$a1, $a1, 3
	ldx.d	$a3, $s8, $a1
	ld.d	$a1, $s5, 16
	st.d	$a0, $s1, %pc_lo12(ref2_line)
	move	$a0, $a1
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	jirl	$ra, $a3, 0
	ld.d	$t6, $sp, 32                    # 8-byte Folded Reload
	ld.d	$t3, $s1, %pc_lo12(ref2_line)
	st.d	$a0, $t6, %pc_lo12(ref1_line)
	blez	$s0, .LBB8_32
# %bb.24:                               # %.preheader.lr.ph.split.us.us.1
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	ld.d	$a2, $a1, 0
	pcalau12i	$a1, %got_pc_hi20(img)
	ld.d	$a1, $a1, %got_pc_lo12(img)
	ld.d	$a5, $a1, 0
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(src_line)
	pcalau12i	$a3, %pc_hi20(weight1_cr+2)
	ld.h	$a3, $a3, %pc_lo12(weight1_cr+2)
	pcalau12i	$a4, %pc_hi20(weight2_cr+2)
	ld.h	$a4, $a4, %pc_lo12(weight2_cr+2)
	lu12i.w	$a6, 3
	ori	$a6, $a6, 3236
	ldx.w	$a5, $a5, $a6
	pcalau12i	$a6, %pc_hi20(offsetBi_cr+2)
	ld.h	$a6, $a6, %pc_lo12(offsetBi_cr+2)
	move	$t0, $zero
	.p2align	4, , 16
.LBB8_25:                               # %.preheader.us.us.1
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_26 Depth 2
	move	$t2, $s0
	move	$a7, $a0
	move	$t1, $t3
	.p2align	4, , 16
.LBB8_26:                               #   Parent Loop BB8_25 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.hu	$a0, $a7, 0
	ld.hu	$t3, $t1, 0
	mul.d	$a0, $a0, $a3
	mul.d	$t3, $t3, $a4
	add.d	$a0, $a0, $s3
	add.d	$a0, $a0, $t3
	sra.w	$a0, $a0, $s2
	add.w	$a0, $a0, $a6
	srai.d	$t3, $a0, 63
	andn	$a0, $a0, $t3
	slt	$t3, $a0, $a5
	ld.hu	$t4, $a1, 0
	maskeqz	$a0, $a0, $t3
	masknez	$t3, $a5, $t3
	or	$a0, $a0, $t3
	sub.w	$a0, $t4, $a0
	slli.d	$a0, $a0, 2
	ldx.w	$a0, $a2, $a0
	ld.hu	$t3, $a7, 2
	ld.hu	$t4, $t1, 2
	add.d	$a0, $a0, $s4
	mul.d	$t3, $t3, $a3
	mul.d	$t4, $t4, $a4
	add.d	$t3, $t3, $s3
	add.d	$t3, $t3, $t4
	sra.w	$t3, $t3, $s2
	add.w	$t3, $t3, $a6
	srai.d	$t4, $t3, 63
	andn	$t3, $t3, $t4
	slt	$t4, $t3, $a5
	maskeqz	$t3, $t3, $t4
	ld.hu	$t5, $a1, 2
	masknez	$t4, $a5, $t4
	or	$t3, $t3, $t4
	addi.d	$a7, $a7, 4
	sub.w	$t3, $t5, $t3
	slli.d	$t3, $t3, 2
	ldx.w	$t3, $a2, $t3
	addi.d	$t1, $t1, 4
	addi.d	$a1, $a1, 4
	addi.w	$t2, $t2, -1
	add.w	$s4, $a0, $t3
	bnez	$t2, .LBB8_26
# %bb.27:                               # %._crit_edge.us154.us.1
                                        #   in Loop: Header=BB8_25 Depth=1
	bge	$s4, $fp, .LBB8_30
# %bb.28:                               #   in Loop: Header=BB8_25 Depth=1
	add.d	$t3, $t1, $s6
	addi.w	$t0, $t0, 1
	add.d	$a0, $a7, $s6
	bne	$t0, $s7, .LBB8_25
# %bb.29:                               # %._crit_edge152.split.us.us.1
	add.d	$a0, $t1, $s6
	st.d	$a0, $s1, %pc_lo12(ref2_line)
	add.d	$a0, $a7, $s6
	st.d	$a0, $t6, %pc_lo12(ref1_line)
	b	.LBB8_31
.LBB8_30:                               # %.loopexit.split.us
	st.d	$t1, $s1, %pc_lo12(ref2_line)
	st.d	$a7, $t6, %pc_lo12(ref1_line)
.LBB8_31:                               # %.loopexit
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	st.d	$a1, $a0, %pc_lo12(src_line)
	b	.LBB8_33
.LBB8_32:                               # %.preheader.us165.preheader.1
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	add.d	$a1, $t3, $a2
	add.d	$a0, $a0, $a2
	st.d	$a1, $s1, %pc_lo12(ref2_line)
	st.d	$a0, $t6, %pc_lo12(ref1_line)
.LBB8_33:                               # %.loopexit
	move	$a0, $s4
	ld.d	$s8, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 192                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 200                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 208
	ret
.Lfunc_end8:
	.size	computeBiPredSAD2, .Lfunc_end8-computeBiPredSAD2
                                        # -- End function
	.globl	computeSATD                     # -- Begin function computeSATD
	.p2align	5
	.type	computeSATD,@function
computeSATD:                            # @computeSATD
# %bb.0:
	addi.d	$sp, $sp, -208
	st.d	$ra, $sp, 200                   # 8-byte Folded Spill
	st.d	$fp, $sp, 192                   # 8-byte Folded Spill
	st.d	$s0, $sp, 184                   # 8-byte Folded Spill
	st.d	$s1, $sp, 176                   # 8-byte Folded Spill
	st.d	$s2, $sp, 168                   # 8-byte Folded Spill
	st.d	$s3, $sp, 160                   # 8-byte Folded Spill
	st.d	$s4, $sp, 152                   # 8-byte Folded Spill
	st.d	$s5, $sp, 144                   # 8-byte Folded Spill
	st.d	$s6, $sp, 136                   # 8-byte Folded Spill
	st.d	$s7, $sp, 128                   # 8-byte Folded Spill
	st.d	$s8, $sp, 120                   # 8-byte Folded Spill
	pcalau12i	$a6, %pc_hi20(test8x8transform)
	ld.w	$a6, $a6, %pc_lo12(test8x8transform)
	st.d	$a3, $sp, 104                   # 8-byte Folded Spill
	slli.w	$a3, $a1, 2
	st.d	$a5, $sp, 112                   # 8-byte Folded Spill
	alsl.w	$a5, $a1, $a5, 2
	st.d	$a2, $sp, 96                    # 8-byte Folded Spill
	beqz	$a6, .LBB9_8
# %bb.1:
	blez	$a3, .LBB9_15
# %bb.2:                                # %.preheader78.lr.ph
	blez	$a2, .LBB9_15
# %bb.3:                                # %.preheader78.us.preheader
	slli.w	$a3, $a2, 3
	pcalau12i	$a1, %pc_hi20(img_padded_size_x)
	ld.w	$s8, $a1, %pc_lo12(img_padded_size_x)
	slli.d	$a1, $a3, 1
	st.d	$a1, $sp, 16                    # 8-byte Folded Spill
	slli.d	$s7, $a2, 1
	pcalau12i	$a1, %pc_hi20(ref_access_method)
	st.d	$a1, $sp, 88                    # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(get_line)
	addi.d	$a1, $a1, %pc_lo12(get_line)
	st.d	$a1, $sp, 80                    # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(ref_pic_sub)
	st.d	$a1, $sp, 72                    # 8-byte Folded Spill
	pcalau12i	$s3, %pc_hi20(ref_line)
	pcalau12i	$s0, %pc_hi20(src_line)
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 48                   # 16-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(diff)
	addi.d	$s5, $a1, %pc_lo12(diff)
	move	$s4, $zero
	slli.d	$s1, $s8, 1
	st.d	$a4, $sp, 32                    # 8-byte Folded Spill
	st.d	$a5, $sp, 24                    # 8-byte Folded Spill
.LBB9_4:                                # %.preheader78.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_5 Depth 2
	move	$s2, $zero
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	move	$fp, $a0
	move	$s6, $a4
	.p2align	4, , 16
.LBB9_5:                                #   Parent Loop BB9_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(ref_access_method)
	slli.d	$a0, $a0, 3
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	ldx.d	$a3, $a1, $a0
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(ref_pic_sub)
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	move	$a2, $s6
	jirl	$ra, $a3, 0
	ld.d	$a1, $fp, 0
	st.d	$a0, $s3, %pc_lo12(ref_line)
	ld.d	$a2, $a0, 0
	st.d	$fp, $s0, %pc_lo12(src_line)
	vinsgr2vr.d	$vr0, $a1, 0
	vld	$vr2, $sp, 48                   # 16-byte Folded Reload
	vilvl.h	$vr0, $vr2, $vr0
	vinsgr2vr.d	$vr1, $a2, 0
	vilvl.h	$vr1, $vr2, $vr1
	ld.d	$a1, $fp, 8
	vsub.w	$vr0, $vr0, $vr1
	ld.d	$a2, $a0, 8
	vst	$vr0, $s5, 0
	vinsgr2vr.d	$vr0, $a1, 0
	vilvl.h	$vr0, $vr2, $vr0
	vinsgr2vr.d	$vr1, $a2, 0
	vilvl.h	$vr1, $vr2, $vr1
	vsub.w	$vr0, $vr0, $vr1
	vst	$vr0, $s5, 16
	ldx.d	$a1, $fp, $s7
	alsl.d	$a2, $s8, $a0, 1
	ldx.d	$a0, $a0, $s1
	add.d	$a3, $fp, $s7
	vinsgr2vr.d	$vr0, $a1, 0
	vilvl.h	$vr0, $vr2, $vr0
	vinsgr2vr.d	$vr1, $a0, 0
	vilvl.h	$vr1, $vr2, $vr1
	ld.d	$a0, $a3, 8
	vsub.w	$vr0, $vr0, $vr1
	ld.d	$a1, $a2, 8
	vst	$vr0, $s5, 32
	vinsgr2vr.d	$vr0, $a0, 0
	vilvl.h	$vr0, $vr2, $vr0
	vinsgr2vr.d	$vr1, $a1, 0
	vilvl.h	$vr1, $vr2, $vr1
	vsub.w	$vr0, $vr0, $vr1
	vst	$vr0, $s5, 48
	ldx.d	$a0, $a3, $s7
	alsl.d	$a1, $s8, $a2, 1
	ldx.d	$a2, $a2, $s1
	add.d	$a3, $a3, $s7
	vinsgr2vr.d	$vr0, $a0, 0
	vilvl.h	$vr0, $vr2, $vr0
	vinsgr2vr.d	$vr1, $a2, 0
	vilvl.h	$vr1, $vr2, $vr1
	ld.d	$a0, $a3, 8
	vsub.w	$vr0, $vr0, $vr1
	ld.d	$a2, $a1, 8
	vst	$vr0, $s5, 64
	vinsgr2vr.d	$vr0, $a0, 0
	vilvl.h	$vr0, $vr2, $vr0
	vinsgr2vr.d	$vr1, $a2, 0
	vilvl.h	$vr1, $vr2, $vr1
	vsub.w	$vr0, $vr0, $vr1
	vst	$vr0, $s5, 80
	ldx.d	$a0, $a3, $s7
	alsl.d	$a2, $s8, $a1, 1
	ldx.d	$a1, $a1, $s1
	add.d	$a3, $a3, $s7
	vinsgr2vr.d	$vr0, $a0, 0
	vilvl.h	$vr0, $vr2, $vr0
	vinsgr2vr.d	$vr1, $a1, 0
	vilvl.h	$vr1, $vr2, $vr1
	ld.d	$a0, $a3, 8
	vsub.w	$vr0, $vr0, $vr1
	ld.d	$a1, $a2, 8
	vst	$vr0, $s5, 96
	vinsgr2vr.d	$vr0, $a0, 0
	vilvl.h	$vr0, $vr2, $vr0
	vinsgr2vr.d	$vr1, $a1, 0
	vilvl.h	$vr1, $vr2, $vr1
	vsub.w	$vr0, $vr0, $vr1
	vst	$vr0, $s5, 112
	ldx.d	$a0, $a3, $s7
	alsl.d	$a1, $s8, $a2, 1
	ldx.d	$a2, $a2, $s1
	add.d	$a3, $a3, $s7
	vinsgr2vr.d	$vr0, $a0, 0
	vilvl.h	$vr0, $vr2, $vr0
	vinsgr2vr.d	$vr1, $a2, 0
	vilvl.h	$vr1, $vr2, $vr1
	ld.d	$a0, $a3, 8
	vsub.w	$vr0, $vr0, $vr1
	ld.d	$a2, $a1, 8
	vst	$vr0, $s5, 128
	vinsgr2vr.d	$vr0, $a0, 0
	vilvl.h	$vr0, $vr2, $vr0
	vinsgr2vr.d	$vr1, $a2, 0
	vilvl.h	$vr1, $vr2, $vr1
	vsub.w	$vr0, $vr0, $vr1
	vst	$vr0, $s5, 144
	ldx.d	$a0, $a3, $s7
	alsl.d	$a2, $s8, $a1, 1
	ldx.d	$a1, $a1, $s1
	add.d	$a3, $a3, $s7
	vinsgr2vr.d	$vr0, $a0, 0
	vilvl.h	$vr0, $vr2, $vr0
	vinsgr2vr.d	$vr1, $a1, 0
	vilvl.h	$vr1, $vr2, $vr1
	ld.d	$a0, $a3, 8
	vsub.w	$vr0, $vr0, $vr1
	ld.d	$a1, $a2, 8
	vst	$vr0, $s5, 160
	vinsgr2vr.d	$vr0, $a0, 0
	vilvl.h	$vr0, $vr2, $vr0
	vinsgr2vr.d	$vr1, $a1, 0
	vilvl.h	$vr1, $vr2, $vr1
	vsub.w	$vr0, $vr0, $vr1
	vst	$vr0, $s5, 176
	ldx.d	$a0, $a3, $s7
	alsl.d	$a1, $s8, $a2, 1
	ldx.d	$a2, $a2, $s1
	add.d	$a3, $a3, $s7
	vinsgr2vr.d	$vr0, $a0, 0
	vilvl.h	$vr0, $vr2, $vr0
	vinsgr2vr.d	$vr1, $a2, 0
	vilvl.h	$vr1, $vr2, $vr1
	ld.d	$a0, $a3, 8
	vsub.w	$vr0, $vr0, $vr1
	ld.d	$a2, $a1, 8
	vst	$vr0, $s5, 192
	vinsgr2vr.d	$vr0, $a0, 0
	vilvl.h	$vr0, $vr2, $vr0
	vinsgr2vr.d	$vr1, $a2, 0
	vilvl.h	$vr1, $vr2, $vr1
	vsub.w	$vr0, $vr0, $vr1
	vst	$vr0, $s5, 208
	ldx.d	$a0, $a3, $s7
	alsl.d	$a2, $s8, $a1, 1
	ldx.d	$a1, $a1, $s1
	add.d	$a3, $a3, $s7
	vinsgr2vr.d	$vr0, $a0, 0
	vilvl.h	$vr0, $vr2, $vr0
	vinsgr2vr.d	$vr1, $a1, 0
	vilvl.h	$vr1, $vr2, $vr1
	ld.d	$a0, $a3, 8
	vsub.w	$vr0, $vr0, $vr1
	ld.d	$a1, $a2, 8
	vst	$vr0, $s5, 224
	vinsgr2vr.d	$vr0, $a0, 0
	vilvl.h	$vr0, $vr2, $vr0
	vinsgr2vr.d	$vr1, $a1, 0
	vilvl.h	$vr1, $vr2, $vr1
	vsub.w	$vr0, $vr0, $vr1
	vst	$vr0, $s5, 240
	alsl.d	$a0, $s8, $a2, 1
	add.d	$a1, $a3, $s7
	st.d	$a1, $s0, %pc_lo12(src_line)
	st.d	$a0, $s3, %pc_lo12(ref_line)
	move	$a0, $s5
	pcaddu18i	$ra, %call36(HadamardSAD8x8)
	jirl	$ra, $ra, 0
	add.w	$s4, $a0, $s4
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	blt	$a0, $s4, .LBB9_16
# %bb.6:                                #   in Loop: Header=BB9_5 Depth=2
	addi.w	$s6, $s6, 32
	addi.w	$s2, $s2, 8
	addi.d	$fp, $fp, 16
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	blt	$s2, $a0, .LBB9_5
# %bb.7:                                # %._crit_edge.us
                                        #   in Loop: Header=BB9_4 Depth=1
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	addi.w	$a1, $a1, 32
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	add.d	$a0, $a0, $a2
	st.d	$a1, $sp, 112                   # 8-byte Folded Spill
	ld.d	$a4, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a5, $sp, 24                    # 8-byte Folded Reload
	blt	$a1, $a5, .LBB9_4
	b	.LBB9_16
.LBB9_8:
	blez	$a3, .LBB9_15
# %bb.9:                                # %.preheader.lr.ph
	blez	$a2, .LBB9_15
# %bb.10:                               # %.preheader.us.preheader
	slli.w	$a3, $a2, 2
	pcalau12i	$a1, %pc_hi20(img_padded_size_x)
	ld.w	$fp, $a1, %pc_lo12(img_padded_size_x)
	slli.d	$a1, $a3, 1
	st.d	$a1, $sp, 16                    # 8-byte Folded Spill
	slli.d	$s1, $a2, 1
	pcalau12i	$a1, %pc_hi20(ref_access_method)
	st.d	$a1, $sp, 88                    # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(get_line)
	addi.d	$a1, $a1, %pc_lo12(get_line)
	st.d	$a1, $sp, 80                    # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(ref_pic_sub)
	st.d	$a1, $sp, 72                    # 8-byte Folded Spill
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 48                   # 16-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(diff)
	addi.d	$s5, $a1, %pc_lo12(diff)
	move	$s4, $zero
	slli.d	$s8, $fp, 1
	pcalau12i	$s0, %pc_hi20(src_line)
	pcalau12i	$s2, %pc_hi20(ref_line)
	st.d	$a4, $sp, 32                    # 8-byte Folded Spill
	st.d	$a5, $sp, 24                    # 8-byte Folded Spill
.LBB9_11:                               # %.preheader.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_12 Depth 2
	move	$s3, $zero
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	move	$s7, $a0
	move	$s6, $a4
	.p2align	4, , 16
.LBB9_12:                               #   Parent Loop BB9_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(ref_access_method)
	slli.d	$a0, $a0, 3
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	ldx.d	$a3, $a1, $a0
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(ref_pic_sub)
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	move	$a2, $s6
	jirl	$ra, $a3, 0
	ld.d	$a1, $s7, 0
	ld.d	$a2, $a0, 0
	vinsgr2vr.d	$vr0, $a1, 0
	vld	$vr2, $sp, 48                   # 16-byte Folded Reload
	vilvl.h	$vr0, $vr2, $vr0
	vinsgr2vr.d	$vr1, $a2, 0
	vilvl.h	$vr1, $vr2, $vr1
	vsub.w	$vr0, $vr0, $vr1
	vst	$vr0, $s5, 0
	ldx.d	$a1, $s7, $s1
	alsl.d	$a2, $fp, $a0, 1
	ldx.d	$a0, $a0, $s8
	add.d	$a3, $s7, $s1
	vinsgr2vr.d	$vr0, $a1, 0
	vilvl.h	$vr0, $vr2, $vr0
	vinsgr2vr.d	$vr1, $a0, 0
	vilvl.h	$vr1, $vr2, $vr1
	vsub.w	$vr0, $vr0, $vr1
	vst	$vr0, $s5, 16
	ldx.d	$a0, $a3, $s1
	alsl.d	$a1, $fp, $a2, 1
	ldx.d	$a2, $a2, $s8
	add.d	$a3, $a3, $s1
	vinsgr2vr.d	$vr0, $a0, 0
	vilvl.h	$vr0, $vr2, $vr0
	vinsgr2vr.d	$vr1, $a2, 0
	vilvl.h	$vr1, $vr2, $vr1
	vsub.w	$vr0, $vr0, $vr1
	vst	$vr0, $s5, 32
	ldx.d	$a0, $a3, $s1
	alsl.d	$a2, $fp, $a1, 1
	ldx.d	$a1, $a1, $s8
	add.d	$a3, $a3, $s1
	vinsgr2vr.d	$vr0, $a0, 0
	vilvl.h	$vr0, $vr2, $vr0
	vinsgr2vr.d	$vr1, $a1, 0
	vilvl.h	$vr1, $vr2, $vr1
	vsub.w	$vr0, $vr0, $vr1
	vst	$vr0, $s5, 48
	alsl.d	$a0, $fp, $a2, 1
	add.d	$a1, $a3, $s1
	st.d	$a1, $s0, %pc_lo12(src_line)
	st.d	$a0, $s2, %pc_lo12(ref_line)
	move	$a0, $s5
	pcaddu18i	$ra, %call36(HadamardSAD4x4)
	jirl	$ra, $ra, 0
	add.w	$s4, $a0, $s4
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	blt	$a0, $s4, .LBB9_16
# %bb.13:                               #   in Loop: Header=BB9_12 Depth=2
	addi.w	$s6, $s6, 16
	addi.w	$s3, $s3, 4
	addi.d	$s7, $s7, 8
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	blt	$s3, $a0, .LBB9_12
# %bb.14:                               # %._crit_edge.us109
                                        #   in Loop: Header=BB9_11 Depth=1
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	addi.w	$a1, $a1, 16
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	add.d	$a0, $a0, $a2
	st.d	$a1, $sp, 112                   # 8-byte Folded Spill
	ld.d	$a4, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a5, $sp, 24                    # 8-byte Folded Reload
	blt	$a1, $a5, .LBB9_11
	b	.LBB9_16
.LBB9_15:
	move	$s4, $zero
.LBB9_16:                               # %.loopexit
	move	$a0, $s4
	ld.d	$s8, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 192                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 200                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 208
	ret
.Lfunc_end9:
	.size	computeSATD, .Lfunc_end9-computeSATD
                                        # -- End function
	.globl	computeSATDWP                   # -- Begin function computeSATDWP
	.p2align	5
	.type	computeSATDWP,@function
computeSATDWP:                          # @computeSATDWP
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
	pcalau12i	$a6, %pc_hi20(test8x8transform)
	ld.w	$a6, $a6, %pc_lo12(test8x8transform)
	st.d	$a4, $sp, 112                   # 8-byte Folded Spill
	st.d	$a3, $sp, 120                   # 8-byte Folded Spill
	move	$a3, $a0
	slli.w	$a0, $a1, 2
	st.d	$a5, $sp, 128                   # 8-byte Folded Spill
	alsl.w	$a4, $a1, $a5, 2
	beqz	$a6, .LBB10_10
# %bb.1:
	blez	$a0, .LBB10_17
# %bb.2:                                # %.preheader90.lr.ph
	blez	$a2, .LBB10_17
# %bb.3:                                # %.preheader90.us.preheader
	pcalau12i	$a0, %pc_hi20(img_padded_size_x)
	ld.w	$a0, $a0, %pc_lo12(img_padded_size_x)
	slli.w	$a1, $a2, 3
	slli.d	$s0, $a0, 1
	slli.d	$a0, $a1, 1
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	st.d	$a2, $sp, 104                   # 8-byte Folded Spill
	slli.d	$s3, $a2, 1
	pcalau12i	$a0, %pc_hi20(ref_access_method)
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(get_line)
	addi.d	$a0, $a0, %pc_lo12(get_line)
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(ref_pic_sub)
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(img)
	ld.d	$a0, $a0, %got_pc_lo12(img)
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	pcalau12i	$s1, %pc_hi20(weight_luma)
	pcalau12i	$s2, %pc_hi20(wp_luma_round)
	pcalau12i	$fp, %pc_hi20(luma_log_weight_denom)
	pcalau12i	$s5, %pc_hi20(offset_luma)
	pcalau12i	$a0, %pc_hi20(diff)
	addi.d	$s6, $a0, %pc_lo12(diff)
	move	$s4, $zero
	st.d	$a4, $sp, 16                    # 8-byte Folded Spill
.LBB10_4:                               # %.preheader90.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_5 Depth 2
                                        #       Child Loop BB10_6 Depth 3
	move	$s7, $zero
	st.d	$a3, $sp, 64                    # 8-byte Folded Spill
	move	$s8, $a3
	.p2align	4, , 16
.LBB10_5:                               #   Parent Loop BB10_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB10_6 Depth 3
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(ref_access_method)
	slli.d	$a0, $a0, 3
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	ldx.d	$a3, $a1, $a0
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(ref_pic_sub)
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	alsl.w	$a2, $s7, $a1, 2
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	jirl	$ra, $a3, 0
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	ld.w	$a2, $s1, %pc_lo12(weight_luma)
	ld.w	$a3, $s2, %pc_lo12(wp_luma_round)
	ld.w	$a5, $fp, %pc_lo12(luma_log_weight_denom)
	ld.w	$a6, $s5, %pc_lo12(offset_luma)
	ori	$a7, $zero, 8
	move	$a4, $s8
	move	$t0, $s6
	.p2align	4, , 16
.LBB10_6:                               #   Parent Loop BB10_4 Depth=1
                                        #     Parent Loop BB10_5 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.hu	$t1, $a0, 0
	ldptr.w	$t2, $a1, 15520
	mul.d	$t1, $a2, $t1
	add.d	$t1, $t1, $a3
	sra.w	$t1, $t1, $a5
	add.w	$t1, $t1, $a6
	srai.d	$t3, $t1, 63
	andn	$t1, $t1, $t3
	slt	$t3, $t1, $t2
	maskeqz	$t1, $t1, $t3
	ld.hu	$t4, $a4, 0
	masknez	$t2, $t2, $t3
	or	$t1, $t1, $t2
	ld.hu	$t2, $a0, 2
	sub.d	$t1, $t4, $t1
	st.w	$t1, $t0, 0
	ldptr.w	$t1, $a1, 15520
	mul.d	$t2, $a2, $t2
	add.d	$t2, $t2, $a3
	sra.w	$t2, $t2, $a5
	add.w	$t2, $t2, $a6
	srai.d	$t3, $t2, 63
	andn	$t2, $t2, $t3
	slt	$t3, $t2, $t1
	maskeqz	$t2, $t2, $t3
	ld.hu	$t4, $a4, 2
	masknez	$t1, $t1, $t3
	or	$t1, $t2, $t1
	ld.hu	$t2, $a0, 4
	sub.d	$t1, $t4, $t1
	st.w	$t1, $t0, 4
	ldptr.w	$t1, $a1, 15520
	mul.d	$t2, $a2, $t2
	add.d	$t2, $t2, $a3
	sra.w	$t2, $t2, $a5
	add.w	$t2, $t2, $a6
	srai.d	$t3, $t2, 63
	andn	$t2, $t2, $t3
	slt	$t3, $t2, $t1
	maskeqz	$t2, $t2, $t3
	ld.hu	$t4, $a4, 4
	masknez	$t1, $t1, $t3
	or	$t1, $t2, $t1
	ld.hu	$t2, $a0, 6
	sub.d	$t1, $t4, $t1
	st.w	$t1, $t0, 8
	ldptr.w	$t1, $a1, 15520
	mul.d	$t2, $a2, $t2
	add.d	$t2, $t2, $a3
	sra.w	$t2, $t2, $a5
	add.w	$t2, $t2, $a6
	srai.d	$t3, $t2, 63
	andn	$t2, $t2, $t3
	slt	$t3, $t2, $t1
	maskeqz	$t2, $t2, $t3
	ld.hu	$t4, $a4, 6
	masknez	$t1, $t1, $t3
	or	$t1, $t2, $t1
	ld.hu	$t2, $a0, 8
	sub.d	$t1, $t4, $t1
	st.w	$t1, $t0, 12
	ldptr.w	$t1, $a1, 15520
	mul.d	$t2, $a2, $t2
	add.d	$t2, $t2, $a3
	sra.w	$t2, $t2, $a5
	add.w	$t2, $t2, $a6
	srai.d	$t3, $t2, 63
	andn	$t2, $t2, $t3
	slt	$t3, $t2, $t1
	maskeqz	$t2, $t2, $t3
	ld.hu	$t4, $a4, 8
	masknez	$t1, $t1, $t3
	or	$t1, $t2, $t1
	ld.hu	$t2, $a0, 10
	sub.d	$t1, $t4, $t1
	st.w	$t1, $t0, 16
	ldptr.w	$t1, $a1, 15520
	mul.d	$t2, $a2, $t2
	add.d	$t2, $t2, $a3
	sra.w	$t2, $t2, $a5
	add.w	$t2, $t2, $a6
	srai.d	$t3, $t2, 63
	andn	$t2, $t2, $t3
	slt	$t3, $t2, $t1
	maskeqz	$t2, $t2, $t3
	ld.hu	$t4, $a4, 10
	masknez	$t1, $t1, $t3
	or	$t1, $t2, $t1
	ld.hu	$t2, $a0, 12
	sub.d	$t1, $t4, $t1
	st.w	$t1, $t0, 20
	ldptr.w	$t1, $a1, 15520
	mul.d	$t2, $a2, $t2
	add.d	$t2, $t2, $a3
	sra.w	$t2, $t2, $a5
	add.w	$t2, $t2, $a6
	srai.d	$t3, $t2, 63
	andn	$t2, $t2, $t3
	slt	$t3, $t2, $t1
	maskeqz	$t2, $t2, $t3
	ld.hu	$t4, $a4, 12
	masknez	$t1, $t1, $t3
	or	$t1, $t2, $t1
	ld.hu	$t2, $a0, 14
	sub.d	$t1, $t4, $t1
	st.w	$t1, $t0, 24
	ldptr.w	$t1, $a1, 15520
	mul.d	$t2, $a2, $t2
	add.d	$t2, $t2, $a3
	sra.w	$t2, $t2, $a5
	add.w	$t2, $t2, $a6
	srai.d	$t3, $t2, 63
	andn	$t2, $t2, $t3
	slt	$t3, $t2, $t1
	ld.hu	$t4, $a4, 14
	maskeqz	$t2, $t2, $t3
	masknez	$t1, $t1, $t3
	or	$t1, $t2, $t1
	sub.d	$t1, $t4, $t1
	st.w	$t1, $t0, 28
	addi.w	$a7, $a7, -1
	add.d	$a0, $a0, $s0
	add.d	$a4, $a4, $s3
	addi.d	$t0, $t0, 32
	bnez	$a7, .LBB10_6
# %bb.7:                                #   in Loop: Header=BB10_5 Depth=2
	pcalau12i	$a1, %pc_hi20(ref_line)
	st.d	$a0, $a1, %pc_lo12(ref_line)
	pcalau12i	$a0, %pc_hi20(src_line)
	st.d	$a4, $a0, %pc_lo12(src_line)
	pcalau12i	$a0, %pc_hi20(diff)
	addi.d	$a0, $a0, %pc_lo12(diff)
	pcaddu18i	$ra, %call36(HadamardSAD8x8)
	jirl	$ra, $ra, 0
	add.w	$s4, $a0, $s4
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	blt	$a0, $s4, .LBB10_18
# %bb.8:                                #   in Loop: Header=BB10_5 Depth=2
	addi.w	$s7, $s7, 8
	addi.d	$s8, $s8, 16
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	blt	$s7, $a0, .LBB10_5
# %bb.9:                                # %._crit_edge.us
                                        #   in Loop: Header=BB10_4 Depth=1
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	addi.w	$a0, $a0, 32
	ld.d	$a3, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	add.d	$a3, $a3, $a1
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	ld.d	$a4, $sp, 16                    # 8-byte Folded Reload
	blt	$a0, $a4, .LBB10_4
	b	.LBB10_18
.LBB10_10:
	blez	$a0, .LBB10_17
# %bb.11:                               # %.preheader.lr.ph
	blez	$a2, .LBB10_17
# %bb.12:                               # %.preheader.us.preheader
	slli.w	$a0, $a2, 2
	pcalau12i	$a1, %pc_hi20(img_padded_size_x)
	ld.w	$s8, $a1, %pc_lo12(img_padded_size_x)
	slli.d	$a0, $a0, 1
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	st.d	$a2, $sp, 104                   # 8-byte Folded Spill
	slli.d	$s7, $a2, 1
	pcalau12i	$a0, %pc_hi20(ref_access_method)
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(get_line)
	addi.d	$a0, $a0, %pc_lo12(get_line)
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(ref_pic_sub)
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(img)
	ld.d	$a0, $a0, %got_pc_lo12(img)
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(weight_luma)
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(wp_luma_round)
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(luma_log_weight_denom)
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(offset_luma)
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(diff)
	addi.d	$s5, $a0, %pc_lo12(diff)
	move	$s4, $zero
	slli.d	$s3, $s8, 1
	pcalau12i	$a0, %pc_hi20(ref_line)
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(src_line)
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	st.d	$a4, $sp, 16                    # 8-byte Folded Spill
.LBB10_13:                              # %.preheader.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_14 Depth 2
	move	$s0, $zero
	move	$fp, $a3
	move	$s1, $a3
	ld.d	$s6, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 104                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB10_14:                              #   Parent Loop BB10_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(ref_access_method)
	slli.d	$a0, $a0, 3
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	ldx.d	$a3, $a1, $a0
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(ref_pic_sub)
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	move	$a2, $s6
	jirl	$ra, $a3, 0
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a5, $a1, 0
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	ld.w	$a1, $a1, %pc_lo12(weight_luma)
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	ld.w	$a2, $a2, %pc_lo12(wp_luma_round)
	ld.hu	$a7, $a0, 0
	ld.d	$a3, $sp, 48                    # 8-byte Folded Reload
	ld.wu	$a3, $a3, %pc_lo12(luma_log_weight_denom)
	ld.d	$a4, $sp, 40                    # 8-byte Folded Reload
	ld.w	$a4, $a4, %pc_lo12(offset_luma)
	ldptr.w	$a6, $a5, 15520
	mul.d	$a7, $a1, $a7
	add.d	$a7, $a7, $a2
	sra.w	$a7, $a7, $a3
	add.w	$a7, $a7, $a4
	srai.d	$t0, $a7, 63
	andn	$a7, $a7, $t0
	slt	$t0, $a7, $a6
	maskeqz	$a7, $a7, $t0
	ld.hu	$t1, $s1, 0
	masknez	$t0, $a6, $t0
	ld.hu	$t2, $a0, 2
	or	$a7, $a7, $t0
	sub.d	$a7, $t1, $a7
	st.w	$a7, $s5, 0
	mul.d	$a7, $a1, $t2
	add.d	$a7, $a7, $a2
	sra.w	$a7, $a7, $a3
	add.w	$a7, $a7, $a4
	srai.d	$t0, $a7, 63
	andn	$a7, $a7, $t0
	slt	$t0, $a7, $a6
	maskeqz	$a7, $a7, $t0
	ld.hu	$t1, $s1, 2
	masknez	$t0, $a6, $t0
	ld.hu	$t2, $a0, 4
	or	$a7, $a7, $t0
	sub.d	$a7, $t1, $a7
	st.w	$a7, $s5, 4
	mul.d	$a7, $a1, $t2
	add.d	$a7, $a7, $a2
	sra.w	$a7, $a7, $a3
	add.w	$a7, $a7, $a4
	srai.d	$t0, $a7, 63
	andn	$a7, $a7, $t0
	slt	$t0, $a7, $a6
	maskeqz	$a7, $a7, $t0
	ld.hu	$t1, $s1, 4
	masknez	$t0, $a6, $t0
	ld.hu	$t2, $a0, 6
	or	$a7, $a7, $t0
	sub.d	$a7, $t1, $a7
	st.w	$a7, $s5, 8
	mul.d	$a7, $a1, $t2
	add.d	$a7, $a7, $a2
	sra.w	$a7, $a7, $a3
	add.w	$a7, $a7, $a4
	srai.d	$t0, $a7, 63
	andn	$a7, $a7, $t0
	slt	$t0, $a7, $a6
	maskeqz	$a7, $a7, $t0
	ld.hu	$t1, $s1, 6
	masknez	$t0, $a6, $t0
	or	$a7, $a7, $t0
	ldx.hu	$t0, $a0, $s3
	sub.d	$a7, $t1, $a7
	st.w	$a7, $s5, 12
	alsl.d	$a0, $s8, $a0, 1
	mul.d	$a7, $a1, $t0
	add.d	$a7, $a7, $a2
	sra.w	$a7, $a7, $a3
	add.w	$a7, $a7, $a4
	srai.d	$t0, $a7, 63
	andn	$a7, $a7, $t0
	slt	$t0, $a7, $a6
	maskeqz	$a7, $a7, $t0
	masknez	$t0, $a6, $t0
	ldx.hu	$t1, $s1, $s7
	or	$t0, $a7, $t0
	ld.hu	$t2, $a0, 2
	add.d	$a7, $s1, $s7
	sub.d	$t0, $t1, $t0
	st.w	$t0, $s5, 16
	mul.d	$t0, $a1, $t2
	add.d	$t0, $t0, $a2
	sra.w	$t0, $t0, $a3
	add.w	$t0, $t0, $a4
	srai.d	$t1, $t0, 63
	andn	$t0, $t0, $t1
	slt	$t1, $t0, $a6
	maskeqz	$t0, $t0, $t1
	ld.hu	$t2, $a7, 2
	masknez	$t1, $a6, $t1
	ld.hu	$t3, $a0, 4
	or	$t0, $t0, $t1
	sub.d	$t0, $t2, $t0
	st.w	$t0, $s5, 20
	mul.d	$t0, $a1, $t3
	add.d	$t0, $t0, $a2
	sra.w	$t0, $t0, $a3
	add.w	$t0, $t0, $a4
	srai.d	$t1, $t0, 63
	andn	$t0, $t0, $t1
	slt	$t1, $t0, $a6
	maskeqz	$t0, $t0, $t1
	ld.hu	$t2, $a7, 4
	masknez	$t1, $a6, $t1
	ld.hu	$t3, $a0, 6
	or	$t0, $t0, $t1
	sub.d	$t0, $t2, $t0
	st.w	$t0, $s5, 24
	mul.d	$t0, $a1, $t3
	add.d	$t0, $t0, $a2
	sra.w	$t0, $t0, $a3
	add.w	$t0, $t0, $a4
	srai.d	$t1, $t0, 63
	andn	$t0, $t0, $t1
	slt	$t1, $t0, $a6
	ld.hu	$t2, $a7, 6
	maskeqz	$t0, $t0, $t1
	masknez	$a6, $a6, $t1
	or	$a6, $t0, $a6
	sub.d	$a6, $t2, $a6
	ldx.hu	$t0, $a0, $s3
	st.w	$a6, $s5, 28
	alsl.d	$a6, $s8, $a0, 1
	ldptr.w	$a0, $a5, 15520
	mul.d	$a5, $a1, $t0
	add.d	$a5, $a5, $a2
	sra.w	$a5, $a5, $a3
	add.w	$a5, $a5, $a4
	srai.d	$t0, $a5, 63
	andn	$a5, $a5, $t0
	slt	$t0, $a5, $a0
	maskeqz	$a5, $a5, $t0
	masknez	$t0, $a0, $t0
	ldx.hu	$t1, $a7, $s7
	or	$t0, $a5, $t0
	ld.hu	$t2, $a6, 2
	add.d	$a5, $a7, $s7
	sub.d	$a7, $t1, $t0
	st.w	$a7, $s5, 32
	mul.d	$a7, $a1, $t2
	add.d	$a7, $a7, $a2
	sra.w	$a7, $a7, $a3
	add.w	$a7, $a7, $a4
	srai.d	$t0, $a7, 63
	andn	$a7, $a7, $t0
	slt	$t0, $a7, $a0
	maskeqz	$a7, $a7, $t0
	ld.hu	$t1, $a5, 2
	masknez	$t0, $a0, $t0
	ld.hu	$t2, $a6, 4
	or	$a7, $a7, $t0
	sub.d	$a7, $t1, $a7
	st.w	$a7, $s5, 36
	mul.d	$a7, $a1, $t2
	add.d	$a7, $a7, $a2
	sra.w	$a7, $a7, $a3
	add.w	$a7, $a7, $a4
	srai.d	$t0, $a7, 63
	andn	$a7, $a7, $t0
	slt	$t0, $a7, $a0
	maskeqz	$a7, $a7, $t0
	ld.hu	$t1, $a5, 4
	masknez	$t0, $a0, $t0
	ld.hu	$t2, $a6, 6
	or	$a7, $a7, $t0
	sub.d	$a7, $t1, $a7
	st.w	$a7, $s5, 40
	mul.d	$a7, $a1, $t2
	add.d	$a7, $a7, $a2
	sra.w	$a7, $a7, $a3
	add.w	$a7, $a7, $a4
	srai.d	$t0, $a7, 63
	andn	$a7, $a7, $t0
	slt	$t0, $a7, $a0
	maskeqz	$a7, $a7, $t0
	ld.hu	$t1, $a5, 6
	masknez	$t0, $a0, $t0
	or	$a7, $a7, $t0
	ldx.hu	$t0, $a6, $s3
	sub.d	$a7, $t1, $a7
	st.w	$a7, $s5, 44
	alsl.d	$a6, $s8, $a6, 1
	mul.d	$a7, $a1, $t0
	add.d	$a7, $a7, $a2
	sra.w	$a7, $a7, $a3
	add.w	$a7, $a7, $a4
	srai.d	$t0, $a7, 63
	andn	$a7, $a7, $t0
	slt	$t0, $a7, $a0
	maskeqz	$a7, $a7, $t0
	masknez	$t0, $a0, $t0
	ldx.hu	$t1, $a5, $s7
	or	$a7, $a7, $t0
	ld.hu	$t0, $a6, 2
	add.d	$a5, $a5, $s7
	sub.d	$a7, $t1, $a7
	st.w	$a7, $s5, 48
	mul.d	$a7, $a1, $t0
	add.d	$a7, $a7, $a2
	sra.w	$a7, $a7, $a3
	add.w	$a7, $a7, $a4
	srai.d	$t0, $a7, 63
	andn	$a7, $a7, $t0
	slt	$t0, $a7, $a0
	maskeqz	$a7, $a7, $t0
	ld.hu	$t1, $a5, 2
	masknez	$t0, $a0, $t0
	ld.hu	$t2, $a6, 4
	or	$a7, $a7, $t0
	sub.d	$a7, $t1, $a7
	st.w	$a7, $s5, 52
	mul.d	$a7, $a1, $t2
	add.d	$a7, $a7, $a2
	sra.w	$a7, $a7, $a3
	add.w	$a7, $a7, $a4
	srai.d	$t0, $a7, 63
	andn	$a7, $a7, $t0
	slt	$t0, $a7, $a0
	maskeqz	$a7, $a7, $t0
	ld.hu	$t1, $a5, 4
	masknez	$t0, $a0, $t0
	ld.hu	$t2, $a6, 6
	or	$a7, $a7, $t0
	sub.d	$a7, $t1, $a7
	st.w	$a7, $s5, 56
	mul.d	$a1, $a1, $t2
	add.d	$a1, $a1, $a2
	sra.w	$a1, $a1, $a3
	add.w	$a1, $a1, $a4
	srai.d	$a2, $a1, 63
	andn	$a1, $a1, $a2
	slt	$a2, $a1, $a0
	ld.hu	$a3, $a5, 6
	maskeqz	$a1, $a1, $a2
	masknez	$a0, $a0, $a2
	or	$a0, $a1, $a0
	sub.d	$a0, $a3, $a0
	st.w	$a0, $s5, 60
	alsl.d	$a0, $s8, $a6, 1
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(ref_line)
	add.d	$a0, $a5, $s7
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(src_line)
	move	$a0, $s5
	pcaddu18i	$ra, %call36(HadamardSAD4x4)
	jirl	$ra, $ra, 0
	add.w	$s4, $a0, $s4
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	blt	$a0, $s4, .LBB10_18
# %bb.15:                               #   in Loop: Header=BB10_14 Depth=2
	addi.w	$s6, $s6, 16
	addi.w	$s0, $s0, 4
	addi.d	$s1, $s1, 8
	blt	$s0, $s2, .LBB10_14
# %bb.16:                               # %._crit_edge.us121
                                        #   in Loop: Header=BB10_13 Depth=1
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	addi.w	$a0, $a0, 16
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	add.d	$a3, $fp, $a1
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	ld.d	$a4, $sp, 16                    # 8-byte Folded Reload
	blt	$a0, $a4, .LBB10_13
	b	.LBB10_18
.LBB10_17:
	move	$s4, $zero
.LBB10_18:                              # %.loopexit
	move	$a0, $s4
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
.Lfunc_end10:
	.size	computeSATDWP, .Lfunc_end10-computeSATDWP
                                        # -- End function
	.globl	computeBiPredSATD1              # -- Begin function computeBiPredSATD1
	.p2align	5
	.type	computeBiPredSATD1,@function
computeBiPredSATD1:                     # @computeBiPredSATD1
# %bb.0:
	addi.d	$sp, $sp, -288
	st.d	$ra, $sp, 280                   # 8-byte Folded Spill
	st.d	$fp, $sp, 272                   # 8-byte Folded Spill
	st.d	$s0, $sp, 264                   # 8-byte Folded Spill
	st.d	$s1, $sp, 256                   # 8-byte Folded Spill
	st.d	$s2, $sp, 248                   # 8-byte Folded Spill
	st.d	$s3, $sp, 240                   # 8-byte Folded Spill
	st.d	$s4, $sp, 232                   # 8-byte Folded Spill
	st.d	$s5, $sp, 224                   # 8-byte Folded Spill
	st.d	$s6, $sp, 216                   # 8-byte Folded Spill
	st.d	$s7, $sp, 208                   # 8-byte Folded Spill
	st.d	$s8, $sp, 200                   # 8-byte Folded Spill
	pcalau12i	$t0, %pc_hi20(test8x8transform)
	ld.w	$t0, $t0, %pc_lo12(test8x8transform)
	st.d	$a3, $sp, 192                   # 8-byte Folded Spill
	move	$s4, $a2
	beqz	$t0, .LBB11_8
# %bb.1:
	blez	$a1, .LBB11_15
# %bb.2:                                # %.lr.ph118
	blez	$s4, .LBB11_15
# %bb.3:                                # %.lr.ph.us.preheader
	pcalau12i	$a2, %pc_hi20(img_padded_size_x)
	ld.w	$a3, $a2, %pc_lo12(img_padded_size_x)
	slli.w	$a2, $s4, 3
	addi.w	$s1, $a3, -8
	slli.d	$a2, $a2, 1
	st.d	$a2, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$a2, %pc_hi20(src_line)
	st.d	$a2, $sp, 168                   # 8-byte Folded Spill
	pcalau12i	$a2, %pc_hi20(bipred2_access_method)
	st.d	$a2, $sp, 160                   # 8-byte Folded Spill
	pcalau12i	$a2, %pc_hi20(get_line)
	addi.d	$a2, $a2, %pc_lo12(get_line)
	st.d	$a2, $sp, 152                   # 8-byte Folded Spill
	pcalau12i	$a2, %pc_hi20(ref_pic2_sub)
	st.d	$a2, $sp, 144                   # 8-byte Folded Spill
	pcalau12i	$a2, %pc_hi20(ref2_line)
	st.d	$a2, $sp, 136                   # 8-byte Folded Spill
	pcalau12i	$a2, %pc_hi20(bipred1_access_method)
	st.d	$a2, $sp, 128                   # 8-byte Folded Spill
	pcalau12i	$a2, %pc_hi20(ref_pic1_sub)
	st.d	$a2, $sp, 120                   # 8-byte Folded Spill
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 96                   # 16-byte Folded Spill
	pcalau12i	$a2, %pc_hi20(diff)
	addi.d	$s7, $a2, %pc_lo12(diff)
	move	$s6, $zero
	move	$a2, $zero
	slli.d	$a3, $s4, 1
	st.d	$a3, $sp, 80                    # 8-byte Folded Spill
	pcalau12i	$a3, %pc_hi20(ref1_line)
	st.d	$a3, $sp, 88                    # 8-byte Folded Spill
	st.d	$a1, $sp, 24                    # 8-byte Folded Spill
	st.d	$a7, $sp, 64                    # 8-byte Folded Spill
	st.d	$a6, $sp, 56                    # 8-byte Folded Spill
	st.d	$a5, $sp, 48                    # 8-byte Folded Spill
	st.d	$a4, $sp, 40                    # 8-byte Folded Spill
.LBB11_4:                               # %.lr.ph.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_5 Depth 2
	move	$s8, $zero
	alsl.w	$a1, $a2, $a7, 2
	st.d	$a1, $sp, 184                   # 8-byte Folded Spill
	st.d	$a2, $sp, 32                    # 8-byte Folded Spill
	alsl.w	$a1, $a2, $a5, 2
	st.d	$a1, $sp, 176                   # 8-byte Folded Spill
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	move	$s5, $a0
	move	$s0, $a6
	move	$s2, $a4
	.p2align	4, , 16
.LBB11_5:                               #   Parent Loop BB11_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(bipred2_access_method)
	slli.d	$a0, $a0, 3
	ld.d	$fp, $sp, 152                   # 8-byte Folded Reload
	ldx.d	$a3, $fp, $a0
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(ref_pic2_sub)
	ld.d	$s3, $sp, 168                   # 8-byte Folded Reload
	st.d	$s5, $s3, %pc_lo12(src_line)
	ld.d	$a1, $sp, 184                   # 8-byte Folded Reload
	move	$a2, $s0
	jirl	$ra, $a3, 0
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	ld.w	$a1, $a1, %pc_lo12(bipred1_access_method)
	slli.d	$a1, $a1, 3
	ldx.d	$a3, $fp, $a1
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(ref_pic1_sub)
	ld.d	$fp, $sp, 136                   # 8-byte Folded Reload
	st.d	$a0, $fp, %pc_lo12(ref2_line)
	move	$a0, $a1
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	move	$a2, $s2
	jirl	$ra, $a3, 0
	ld.d	$a1, $s3, %pc_lo12(src_line)
	ld.d	$a2, $fp, %pc_lo12(ref2_line)
	ld.d	$a3, $a1, 0
	ld.d	$a4, $a0, 0
	ld.d	$a5, $a2, 0
	vinsgr2vr.d	$vr0, $a3, 0
	vld	$vr4, $sp, 96                   # 16-byte Folded Reload
	vilvl.h	$vr0, $vr4, $vr0
	vinsgr2vr.d	$vr1, $a4, 0
	vinsgr2vr.d	$vr2, $a5, 0
	vor.v	$vr3, $vr1, $vr2
	vxor.v	$vr1, $vr1, $vr2
	vsrli.h	$vr1, $vr1, 1
	vsub.h	$vr1, $vr3, $vr1
	vilvl.h	$vr1, $vr4, $vr1
	vsub.w	$vr0, $vr0, $vr1
	vst	$vr0, $s7, 0
	alsl.d	$a3, $s1, $a0, 1
	ld.d	$a4, $a1, 8
	alsl.d	$a5, $s1, $a2, 1
	ld.d	$a0, $a0, 8
	ld.d	$a2, $a2, 8
	vinsgr2vr.d	$vr0, $a4, 0
	vilvl.h	$vr0, $vr4, $vr0
	vinsgr2vr.d	$vr1, $a0, 0
	vinsgr2vr.d	$vr2, $a2, 0
	vor.v	$vr3, $vr1, $vr2
	vxor.v	$vr1, $vr1, $vr2
	vsrli.h	$vr1, $vr1, 1
	vsub.h	$vr1, $vr3, $vr1
	vilvl.h	$vr1, $vr4, $vr1
	vsub.w	$vr0, $vr0, $vr1
	ld.d	$a6, $sp, 80                    # 8-byte Folded Reload
	ldx.d	$a0, $a1, $a6
	ld.d	$a2, $a3, 16
	vst	$vr0, $s7, 16
	addi.d	$a4, $a3, 16
	vinsgr2vr.d	$vr0, $a0, 0
	vinsgr2vr.d	$vr1, $a2, 0
	ld.d	$a0, $a5, 16
	addi.d	$a2, $a5, 16
	alsl.d	$a1, $s4, $a1, 1
	vilvl.h	$vr0, $vr4, $vr0
	vinsgr2vr.d	$vr2, $a0, 0
	vor.v	$vr3, $vr1, $vr2
	vxor.v	$vr1, $vr1, $vr2
	vsrli.h	$vr1, $vr1, 1
	vsub.h	$vr1, $vr3, $vr1
	vilvl.h	$vr1, $vr4, $vr1
	vsub.w	$vr0, $vr0, $vr1
	vst	$vr0, $s7, 32
	alsl.d	$a0, $s1, $a4, 1
	ld.d	$a4, $a1, 8
	alsl.d	$a2, $s1, $a2, 1
	ld.d	$a3, $a3, 24
	ld.d	$a5, $a5, 24
	vinsgr2vr.d	$vr0, $a4, 0
	vilvl.h	$vr0, $vr4, $vr0
	vinsgr2vr.d	$vr1, $a3, 0
	vinsgr2vr.d	$vr2, $a5, 0
	vor.v	$vr3, $vr1, $vr2
	vxor.v	$vr1, $vr1, $vr2
	vsrli.h	$vr1, $vr1, 1
	vsub.h	$vr1, $vr3, $vr1
	vilvl.h	$vr1, $vr4, $vr1
	vsub.w	$vr0, $vr0, $vr1
	ldx.d	$a3, $a1, $a6
	ld.d	$a4, $a0, 16
	vst	$vr0, $s7, 48
	addi.d	$a5, $a0, 16
	vinsgr2vr.d	$vr0, $a3, 0
	vinsgr2vr.d	$vr1, $a4, 0
	ld.d	$a3, $a2, 16
	addi.d	$a4, $a2, 16
	alsl.d	$a1, $s4, $a1, 1
	vilvl.h	$vr0, $vr4, $vr0
	vinsgr2vr.d	$vr2, $a3, 0
	vor.v	$vr3, $vr1, $vr2
	vxor.v	$vr1, $vr1, $vr2
	vsrli.h	$vr1, $vr1, 1
	vsub.h	$vr1, $vr3, $vr1
	vilvl.h	$vr1, $vr4, $vr1
	vsub.w	$vr0, $vr0, $vr1
	vst	$vr0, $s7, 64
	alsl.d	$a3, $s1, $a5, 1
	ld.d	$a5, $a1, 8
	alsl.d	$a4, $s1, $a4, 1
	ld.d	$a0, $a0, 24
	ld.d	$a2, $a2, 24
	vinsgr2vr.d	$vr0, $a5, 0
	vilvl.h	$vr0, $vr4, $vr0
	vinsgr2vr.d	$vr1, $a0, 0
	vinsgr2vr.d	$vr2, $a2, 0
	vor.v	$vr3, $vr1, $vr2
	vxor.v	$vr1, $vr1, $vr2
	vsrli.h	$vr1, $vr1, 1
	vsub.h	$vr1, $vr3, $vr1
	vilvl.h	$vr1, $vr4, $vr1
	vsub.w	$vr0, $vr0, $vr1
	ldx.d	$a0, $a1, $a6
	ld.d	$a2, $a3, 16
	vst	$vr0, $s7, 80
	addi.d	$a5, $a3, 16
	vinsgr2vr.d	$vr0, $a0, 0
	vinsgr2vr.d	$vr1, $a2, 0
	ld.d	$a0, $a4, 16
	addi.d	$a2, $a4, 16
	alsl.d	$a1, $s4, $a1, 1
	vilvl.h	$vr0, $vr4, $vr0
	vinsgr2vr.d	$vr2, $a0, 0
	vor.v	$vr3, $vr1, $vr2
	vxor.v	$vr1, $vr1, $vr2
	vsrli.h	$vr1, $vr1, 1
	vsub.h	$vr1, $vr3, $vr1
	vilvl.h	$vr1, $vr4, $vr1
	vsub.w	$vr0, $vr0, $vr1
	vst	$vr0, $s7, 96
	alsl.d	$a0, $s1, $a5, 1
	ld.d	$a5, $a1, 8
	alsl.d	$a2, $s1, $a2, 1
	ld.d	$a3, $a3, 24
	ld.d	$a4, $a4, 24
	vinsgr2vr.d	$vr0, $a5, 0
	vilvl.h	$vr0, $vr4, $vr0
	vinsgr2vr.d	$vr1, $a3, 0
	vinsgr2vr.d	$vr2, $a4, 0
	vor.v	$vr3, $vr1, $vr2
	vxor.v	$vr1, $vr1, $vr2
	vsrli.h	$vr1, $vr1, 1
	vsub.h	$vr1, $vr3, $vr1
	vilvl.h	$vr1, $vr4, $vr1
	vsub.w	$vr0, $vr0, $vr1
	ldx.d	$a3, $a1, $a6
	ld.d	$a4, $a0, 16
	vst	$vr0, $s7, 112
	addi.d	$a5, $a0, 16
	vinsgr2vr.d	$vr0, $a3, 0
	vinsgr2vr.d	$vr1, $a4, 0
	ld.d	$a3, $a2, 16
	addi.d	$a4, $a2, 16
	alsl.d	$a1, $s4, $a1, 1
	vilvl.h	$vr0, $vr4, $vr0
	vinsgr2vr.d	$vr2, $a3, 0
	vor.v	$vr3, $vr1, $vr2
	vxor.v	$vr1, $vr1, $vr2
	vsrli.h	$vr1, $vr1, 1
	vsub.h	$vr1, $vr3, $vr1
	vilvl.h	$vr1, $vr4, $vr1
	vsub.w	$vr0, $vr0, $vr1
	vst	$vr0, $s7, 128
	alsl.d	$a3, $s1, $a5, 1
	ld.d	$a5, $a1, 8
	alsl.d	$a4, $s1, $a4, 1
	ld.d	$a0, $a0, 24
	ld.d	$a2, $a2, 24
	vinsgr2vr.d	$vr0, $a5, 0
	vilvl.h	$vr0, $vr4, $vr0
	vinsgr2vr.d	$vr1, $a0, 0
	vinsgr2vr.d	$vr2, $a2, 0
	vor.v	$vr3, $vr1, $vr2
	vxor.v	$vr1, $vr1, $vr2
	vsrli.h	$vr1, $vr1, 1
	vsub.h	$vr1, $vr3, $vr1
	vilvl.h	$vr1, $vr4, $vr1
	vsub.w	$vr0, $vr0, $vr1
	ldx.d	$a0, $a1, $a6
	ld.d	$a2, $a3, 16
	vst	$vr0, $s7, 144
	addi.d	$a5, $a3, 16
	vinsgr2vr.d	$vr0, $a0, 0
	vinsgr2vr.d	$vr1, $a2, 0
	ld.d	$a0, $a4, 16
	addi.d	$a2, $a4, 16
	alsl.d	$a1, $s4, $a1, 1
	vilvl.h	$vr0, $vr4, $vr0
	vinsgr2vr.d	$vr2, $a0, 0
	vor.v	$vr3, $vr1, $vr2
	vxor.v	$vr1, $vr1, $vr2
	vsrli.h	$vr1, $vr1, 1
	vsub.h	$vr1, $vr3, $vr1
	vilvl.h	$vr1, $vr4, $vr1
	vsub.w	$vr0, $vr0, $vr1
	vst	$vr0, $s7, 160
	alsl.d	$a0, $s1, $a5, 1
	ld.d	$a5, $a1, 8
	alsl.d	$a2, $s1, $a2, 1
	ld.d	$a3, $a3, 24
	ld.d	$a4, $a4, 24
	vinsgr2vr.d	$vr0, $a5, 0
	vilvl.h	$vr0, $vr4, $vr0
	vinsgr2vr.d	$vr1, $a3, 0
	vinsgr2vr.d	$vr2, $a4, 0
	vor.v	$vr3, $vr1, $vr2
	vxor.v	$vr1, $vr1, $vr2
	vsrli.h	$vr1, $vr1, 1
	vsub.h	$vr1, $vr3, $vr1
	vilvl.h	$vr1, $vr4, $vr1
	vsub.w	$vr0, $vr0, $vr1
	ldx.d	$a3, $a1, $a6
	ld.d	$a4, $a0, 16
	vst	$vr0, $s7, 176
	addi.d	$a5, $a0, 16
	vinsgr2vr.d	$vr0, $a3, 0
	vinsgr2vr.d	$vr1, $a4, 0
	ld.d	$a3, $a2, 16
	addi.d	$a4, $a2, 16
	alsl.d	$a1, $s4, $a1, 1
	vilvl.h	$vr0, $vr4, $vr0
	vinsgr2vr.d	$vr2, $a3, 0
	vor.v	$vr3, $vr1, $vr2
	vxor.v	$vr1, $vr1, $vr2
	vsrli.h	$vr1, $vr1, 1
	vsub.h	$vr1, $vr3, $vr1
	vilvl.h	$vr1, $vr4, $vr1
	vsub.w	$vr0, $vr0, $vr1
	vst	$vr0, $s7, 192
	alsl.d	$a3, $s1, $a5, 1
	ld.d	$a5, $a1, 8
	alsl.d	$a4, $s1, $a4, 1
	ld.d	$a0, $a0, 24
	ld.d	$a2, $a2, 24
	vinsgr2vr.d	$vr0, $a5, 0
	vilvl.h	$vr0, $vr4, $vr0
	vinsgr2vr.d	$vr1, $a0, 0
	vinsgr2vr.d	$vr2, $a2, 0
	vor.v	$vr3, $vr1, $vr2
	vxor.v	$vr1, $vr1, $vr2
	vsrli.h	$vr1, $vr1, 1
	vsub.h	$vr1, $vr3, $vr1
	vilvl.h	$vr1, $vr4, $vr1
	vsub.w	$vr0, $vr0, $vr1
	ldx.d	$a0, $a1, $a6
	ld.d	$a2, $a3, 16
	vst	$vr0, $s7, 208
	addi.d	$a5, $a3, 16
	vinsgr2vr.d	$vr0, $a0, 0
	vinsgr2vr.d	$vr1, $a2, 0
	ld.d	$a0, $a4, 16
	addi.d	$a2, $a4, 16
	alsl.d	$a1, $s4, $a1, 1
	vilvl.h	$vr0, $vr4, $vr0
	vinsgr2vr.d	$vr2, $a0, 0
	vor.v	$vr3, $vr1, $vr2
	vxor.v	$vr1, $vr1, $vr2
	vsrli.h	$vr1, $vr1, 1
	vsub.h	$vr1, $vr3, $vr1
	vilvl.h	$vr1, $vr4, $vr1
	vsub.w	$vr0, $vr0, $vr1
	vst	$vr0, $s7, 224
	alsl.d	$a0, $s1, $a5, 1
	ld.d	$a5, $a1, 8
	alsl.d	$a2, $s1, $a2, 1
	ld.d	$a3, $a3, 24
	ld.d	$a4, $a4, 24
	vinsgr2vr.d	$vr0, $a5, 0
	vilvl.h	$vr0, $vr4, $vr0
	vinsgr2vr.d	$vr1, $a3, 0
	vinsgr2vr.d	$vr2, $a4, 0
	vor.v	$vr3, $vr1, $vr2
	vxor.v	$vr1, $vr1, $vr2
	vsrli.h	$vr1, $vr1, 1
	vsub.h	$vr1, $vr3, $vr1
	vilvl.h	$vr1, $vr4, $vr1
	vsub.w	$vr0, $vr0, $vr1
	vst	$vr0, $s7, 240
	addi.d	$a0, $a0, 16
	addi.d	$a2, $a2, 16
	alsl.d	$a1, $s4, $a1, 1
	st.d	$a1, $s3, %pc_lo12(src_line)
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(ref1_line)
	st.d	$a2, $fp, %pc_lo12(ref2_line)
	move	$a0, $s7
	pcaddu18i	$ra, %call36(HadamardSAD8x8)
	jirl	$ra, $ra, 0
	add.w	$s6, $a0, $s6
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	blt	$a0, $s6, .LBB11_16
# %bb.6:                                #   in Loop: Header=BB11_5 Depth=2
	addi.w	$s2, $s2, 32
	addi.w	$s0, $s0, 32
	addi.w	$s8, $s8, 8
	addi.d	$s5, $s5, 16
	blt	$s8, $s4, .LBB11_5
# %bb.7:                                # %..thread_crit_edge.us
                                        #   in Loop: Header=BB11_4 Depth=1
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	addi.w	$a2, $a2, 8
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	add.d	$a0, $a0, $a1
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a7, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a6, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a5, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a4, $sp, 40                    # 8-byte Folded Reload
	blt	$a2, $a1, .LBB11_4
	b	.LBB11_16
.LBB11_8:
	slli.w	$a3, $a1, 2
	blez	$a3, .LBB11_15
# %bb.9:                                # %.preheader.lr.ph
	blez	$s4, .LBB11_15
# %bb.10:                               # %.preheader.us.preheader
	pcalau12i	$a1, %pc_hi20(img_padded_size_x)
	ld.w	$a2, $a1, %pc_lo12(img_padded_size_x)
	slli.w	$a1, $s4, 2
	addi.w	$s3, $a2, -4
	slli.d	$a1, $a1, 1
	st.d	$a1, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(src_line)
	st.d	$a1, $sp, 168                   # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(bipred2_access_method)
	st.d	$a1, $sp, 160                   # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(get_line)
	addi.d	$a1, $a1, %pc_lo12(get_line)
	st.d	$a1, $sp, 152                   # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(ref_pic2_sub)
	st.d	$a1, $sp, 144                   # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(ref2_line)
	st.d	$a1, $sp, 136                   # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(bipred1_access_method)
	st.d	$a1, $sp, 128                   # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(ref_pic1_sub)
	st.d	$a1, $sp, 120                   # 8-byte Folded Spill
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 96                   # 16-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(diff)
	addi.d	$fp, $a1, %pc_lo12(diff)
	move	$s6, $zero
	move	$a2, $zero
	slli.d	$a1, $s4, 1
	st.d	$a1, $sp, 88                    # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(ref1_line)
	st.d	$a1, $sp, 80                    # 8-byte Folded Spill
	st.d	$a7, $sp, 64                    # 8-byte Folded Spill
	st.d	$a6, $sp, 56                    # 8-byte Folded Spill
	st.d	$a5, $sp, 48                    # 8-byte Folded Spill
	st.d	$a4, $sp, 40                    # 8-byte Folded Spill
	st.d	$a3, $sp, 24                    # 8-byte Folded Spill
.LBB11_11:                              # %.preheader.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_12 Depth 2
	move	$s1, $zero
	add.w	$a1, $a2, $a7
	st.d	$a1, $sp, 184                   # 8-byte Folded Spill
	st.d	$a2, $sp, 32                    # 8-byte Folded Spill
	add.w	$a1, $a2, $a5
	st.d	$a1, $sp, 176                   # 8-byte Folded Spill
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	move	$s5, $a0
	move	$s7, $a6
	move	$s8, $a4
	.p2align	4, , 16
.LBB11_12:                              #   Parent Loop BB11_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(bipred2_access_method)
	slli.d	$a0, $a0, 3
	ld.d	$s2, $sp, 152                   # 8-byte Folded Reload
	ldx.d	$a3, $s2, $a0
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(ref_pic2_sub)
	ld.d	$s0, $sp, 168                   # 8-byte Folded Reload
	st.d	$s5, $s0, %pc_lo12(src_line)
	ld.d	$a1, $sp, 184                   # 8-byte Folded Reload
	move	$a2, $s7
	jirl	$ra, $a3, 0
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	ld.w	$a1, $a1, %pc_lo12(bipred1_access_method)
	slli.d	$a1, $a1, 3
	ldx.d	$a3, $s2, $a1
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(ref_pic1_sub)
	ld.d	$s2, $sp, 136                   # 8-byte Folded Reload
	st.d	$a0, $s2, %pc_lo12(ref2_line)
	move	$a0, $a1
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	move	$a2, $s8
	jirl	$ra, $a3, 0
	ld.d	$a1, $s0, %pc_lo12(src_line)
	ld.d	$a2, $s2, %pc_lo12(ref2_line)
	alsl.d	$a3, $s3, $a0, 1
	ld.d	$a4, $a1, 0
	alsl.d	$a5, $s3, $a2, 1
	ld.d	$a0, $a0, 0
	ld.d	$a2, $a2, 0
	vinsgr2vr.d	$vr0, $a4, 0
	vld	$vr4, $sp, 96                   # 16-byte Folded Reload
	vilvl.h	$vr0, $vr4, $vr0
	vinsgr2vr.d	$vr1, $a0, 0
	vinsgr2vr.d	$vr2, $a2, 0
	vor.v	$vr3, $vr1, $vr2
	vxor.v	$vr1, $vr1, $vr2
	vsrli.h	$vr1, $vr1, 1
	vsub.h	$vr1, $vr3, $vr1
	vilvl.h	$vr1, $vr4, $vr1
	vsub.w	$vr0, $vr0, $vr1
	vst	$vr0, $fp, 0
	addi.d	$a0, $a3, 8
	addi.d	$a2, $a5, 8
	alsl.d	$a4, $s4, $a1, 1
	alsl.d	$a0, $s3, $a0, 1
	ld.d	$a6, $sp, 88                    # 8-byte Folded Reload
	ldx.d	$a1, $a1, $a6
	alsl.d	$a2, $s3, $a2, 1
	ld.d	$a3, $a3, 8
	ld.d	$a5, $a5, 8
	vinsgr2vr.d	$vr0, $a1, 0
	vilvl.h	$vr0, $vr4, $vr0
	vinsgr2vr.d	$vr1, $a3, 0
	vinsgr2vr.d	$vr2, $a5, 0
	vor.v	$vr3, $vr1, $vr2
	vxor.v	$vr1, $vr1, $vr2
	vsrli.h	$vr1, $vr1, 1
	vsub.h	$vr1, $vr3, $vr1
	vilvl.h	$vr1, $vr4, $vr1
	vsub.w	$vr0, $vr0, $vr1
	vst	$vr0, $fp, 16
	addi.d	$a1, $a0, 8
	addi.d	$a3, $a2, 8
	alsl.d	$a5, $s4, $a4, 1
	alsl.d	$a1, $s3, $a1, 1
	ldx.d	$a4, $a4, $a6
	alsl.d	$a3, $s3, $a3, 1
	ld.d	$a0, $a0, 8
	ld.d	$a2, $a2, 8
	vinsgr2vr.d	$vr0, $a4, 0
	vilvl.h	$vr0, $vr4, $vr0
	vinsgr2vr.d	$vr1, $a0, 0
	vinsgr2vr.d	$vr2, $a2, 0
	vor.v	$vr3, $vr1, $vr2
	vxor.v	$vr1, $vr1, $vr2
	vsrli.h	$vr1, $vr1, 1
	vsub.h	$vr1, $vr3, $vr1
	vilvl.h	$vr1, $vr4, $vr1
	vsub.w	$vr0, $vr0, $vr1
	vst	$vr0, $fp, 32
	addi.d	$a0, $a1, 8
	addi.d	$a2, $a3, 8
	alsl.d	$a4, $s4, $a5, 1
	alsl.d	$a0, $s3, $a0, 1
	ldx.d	$a5, $a5, $a6
	alsl.d	$a2, $s3, $a2, 1
	ld.d	$a1, $a1, 8
	ld.d	$a3, $a3, 8
	vinsgr2vr.d	$vr0, $a5, 0
	vilvl.h	$vr0, $vr4, $vr0
	vinsgr2vr.d	$vr1, $a1, 0
	vinsgr2vr.d	$vr2, $a3, 0
	vor.v	$vr3, $vr1, $vr2
	vxor.v	$vr1, $vr1, $vr2
	vsrli.h	$vr1, $vr1, 1
	vsub.h	$vr1, $vr3, $vr1
	vilvl.h	$vr1, $vr4, $vr1
	vsub.w	$vr0, $vr0, $vr1
	vst	$vr0, $fp, 48
	addi.d	$a0, $a0, 8
	addi.d	$a1, $a2, 8
	alsl.d	$a2, $s4, $a4, 1
	st.d	$a2, $s0, %pc_lo12(src_line)
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	st.d	$a0, $a2, %pc_lo12(ref1_line)
	st.d	$a1, $s2, %pc_lo12(ref2_line)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(HadamardSAD4x4)
	jirl	$ra, $ra, 0
	add.w	$s6, $a0, $s6
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	blt	$a0, $s6, .LBB11_16
# %bb.13:                               #   in Loop: Header=BB11_12 Depth=2
	addi.w	$s8, $s8, 16
	addi.w	$s7, $s7, 16
	addi.w	$s1, $s1, 4
	addi.d	$s5, $s5, 8
	blt	$s1, $s4, .LBB11_12
# %bb.14:                               # %._crit_edge.us
                                        #   in Loop: Header=BB11_11 Depth=1
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	addi.w	$a2, $a2, 16
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	add.d	$a0, $a0, $a1
	ld.d	$a7, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a6, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a5, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a4, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a3, $sp, 24                    # 8-byte Folded Reload
	blt	$a2, $a3, .LBB11_11
	b	.LBB11_16
.LBB11_15:
	move	$s6, $zero
.LBB11_16:                              # %.loopexit
	move	$a0, $s6
	ld.d	$s8, $sp, 200                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 208                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 216                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 224                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 232                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 240                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 248                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 256                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 264                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 272                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 280                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 288
	ret
.Lfunc_end11:
	.size	computeBiPredSATD1, .Lfunc_end11-computeBiPredSATD1
                                        # -- End function
	.globl	computeBiPredSATD2              # -- Begin function computeBiPredSATD2
	.p2align	5
	.type	computeBiPredSATD2,@function
computeBiPredSATD2:                     # @computeBiPredSATD2
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
	pcalau12i	$t0, %pc_hi20(luma_log_weight_denom)
	ld.w	$t0, $t0, %pc_lo12(luma_log_weight_denom)
	pcalau12i	$t1, %pc_hi20(wp_luma_round)
	ld.w	$t1, $t1, %pc_lo12(wp_luma_round)
	pcalau12i	$t2, %pc_hi20(test8x8transform)
	ld.w	$t2, $t2, %pc_lo12(test8x8transform)
	st.d	$a6, $sp, 176                   # 8-byte Folded Spill
	st.d	$a4, $sp, 168                   # 8-byte Folded Spill
	st.d	$a3, $sp, 208                   # 8-byte Folded Spill
	move	$s4, $a2
	st.d	$a0, $sp, 200                   # 8-byte Folded Spill
	addi.d	$s1, $t0, 1
	slli.d	$s8, $t1, 1
	beqz	$t2, .LBB12_10
# %bb.1:
	blez	$a1, .LBB12_17
# %bb.2:                                # %.lr.ph178
	blez	$s4, .LBB12_17
# %bb.3:                                # %.lr.ph.us.preheader
	pcalau12i	$a0, %pc_hi20(img_padded_size_x)
	ld.w	$a0, $a0, %pc_lo12(img_padded_size_x)
	slli.w	$a2, $s4, 3
	st.d	$a2, $sp, 72                    # 8-byte Folded Spill
	addi.w	$a0, $a0, -8
	slli.d	$a0, $a0, 1
	addi.d	$s3, $a0, 16
	slli.d	$a0, $s4, 1
	addi.d	$s5, $a0, -2
	pcalau12i	$s7, %pc_hi20(src_line)
	pcalau12i	$a0, %pc_hi20(bipred2_access_method)
	st.d	$a0, $sp, 160                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(get_line)
	addi.d	$s2, $a0, %pc_lo12(get_line)
	pcalau12i	$a0, %pc_hi20(ref_pic2_sub)
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	pcalau12i	$fp, %pc_hi20(ref2_line)
	pcalau12i	$a0, %pc_hi20(bipred1_access_method)
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(ref_pic1_sub)
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(weight1)
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(weight2)
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(img)
	ld.d	$a0, $a0, %got_pc_lo12(img)
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(offsetBi)
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(diff)
	addi.d	$a0, $a0, %pc_lo12(diff)
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	move	$s6, $zero
	move	$a2, $zero
	st.d	$a1, $sp, 80                    # 8-byte Folded Spill
	st.d	$a7, $sp, 40                    # 8-byte Folded Spill
	st.d	$a5, $sp, 32                    # 8-byte Folded Spill
.LBB12_4:                               # %.lr.ph.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB12_5 Depth 2
                                        #       Child Loop BB12_6 Depth 3
	move	$s0, $zero
	alsl.w	$a0, $a2, $a7, 2
	st.d	$a0, $sp, 192                   # 8-byte Folded Spill
	st.d	$a2, $sp, 88                    # 8-byte Folded Spill
	alsl.w	$a0, $a2, $a5, 2
	st.d	$a0, $sp, 184                   # 8-byte Folded Spill
	.p2align	4, , 16
.LBB12_5:                               #   Parent Loop BB12_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB12_6 Depth 3
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(bipred2_access_method)
	slli.d	$a0, $a0, 3
	ldx.d	$a3, $s2, $a0
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(ref_pic2_sub)
	ld.d	$a1, $sp, 200                   # 8-byte Folded Reload
	alsl.d	$a1, $s0, $a1, 1
	st.d	$a1, $s7, %pc_lo12(src_line)
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	alsl.w	$a2, $s0, $a1, 2
	ld.d	$a1, $sp, 192                   # 8-byte Folded Reload
	jirl	$ra, $a3, 0
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	ld.w	$a1, $a1, %pc_lo12(bipred1_access_method)
	slli.d	$a1, $a1, 3
	ldx.d	$a3, $s2, $a1
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(ref_pic1_sub)
	st.d	$a0, $fp, %pc_lo12(ref2_line)
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	alsl.w	$a2, $s0, $a0, 2
	move	$a0, $a1
	ld.d	$a1, $sp, 184                   # 8-byte Folded Reload
	jirl	$ra, $a3, 0
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	ld.h	$a3, $a1, %pc_lo12(weight1)
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	ld.h	$a4, $a1, %pc_lo12(weight2)
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a5, $a1, 0
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	ld.h	$a6, $a1, %pc_lo12(offsetBi)
	ld.d	$a2, $fp, %pc_lo12(ref2_line)
	ld.d	$a1, $s7, %pc_lo12(src_line)
	move	$a7, $zero
	ori	$t0, $zero, 8
	ld.d	$t1, $sp, 96                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB12_6:                               #   Parent Loop BB12_4 Depth=1
                                        #     Parent Loop BB12_5 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ldx.hu	$t4, $a0, $a7
	ldx.hu	$t5, $a2, $a7
	add.d	$t2, $a2, $a7
	add.d	$t3, $a0, $a7
	mul.d	$t4, $t4, $a3
	mul.d	$t5, $t5, $a4
	ldptr.w	$t6, $a5, 15520
	add.d	$t4, $t4, $s8
	add.d	$t4, $t4, $t5
	sra.w	$t4, $t4, $s1
	add.w	$t4, $t4, $a6
	srai.d	$t5, $t4, 63
	andn	$t4, $t4, $t5
	slt	$t5, $t4, $t6
	maskeqz	$t4, $t4, $t5
	masknez	$t5, $t6, $t5
	ld.hu	$t6, $a1, 0
	or	$t4, $t4, $t5
	ld.hu	$t5, $t3, 2
	ld.hu	$t7, $t2, 2
	sub.d	$t4, $t6, $t4
	st.w	$t4, $t1, 0
	mul.d	$t4, $t5, $a3
	mul.d	$t5, $t7, $a4
	ldptr.w	$t6, $a5, 15520
	add.d	$t4, $t4, $s8
	add.d	$t4, $t4, $t5
	sra.w	$t4, $t4, $s1
	add.w	$t4, $t4, $a6
	srai.d	$t5, $t4, 63
	andn	$t4, $t4, $t5
	slt	$t5, $t4, $t6
	maskeqz	$t4, $t4, $t5
	masknez	$t5, $t6, $t5
	ld.hu	$t6, $a1, 2
	or	$t4, $t4, $t5
	ld.hu	$t5, $t3, 4
	ld.hu	$t7, $t2, 4
	sub.d	$t4, $t6, $t4
	st.w	$t4, $t1, 4
	mul.d	$t4, $t5, $a3
	mul.d	$t5, $t7, $a4
	ldptr.w	$t6, $a5, 15520
	add.d	$t4, $t4, $s8
	add.d	$t4, $t4, $t5
	sra.w	$t4, $t4, $s1
	add.w	$t4, $t4, $a6
	srai.d	$t5, $t4, 63
	andn	$t4, $t4, $t5
	slt	$t5, $t4, $t6
	maskeqz	$t4, $t4, $t5
	masknez	$t5, $t6, $t5
	ld.hu	$t6, $a1, 4
	or	$t4, $t4, $t5
	ld.hu	$t5, $t3, 6
	ld.hu	$t7, $t2, 6
	sub.d	$t4, $t6, $t4
	st.w	$t4, $t1, 8
	mul.d	$t4, $t5, $a3
	mul.d	$t5, $t7, $a4
	ldptr.w	$t6, $a5, 15520
	add.d	$t4, $t4, $s8
	add.d	$t4, $t4, $t5
	sra.w	$t4, $t4, $s1
	add.w	$t4, $t4, $a6
	srai.d	$t5, $t4, 63
	andn	$t4, $t4, $t5
	slt	$t5, $t4, $t6
	maskeqz	$t4, $t4, $t5
	masknez	$t5, $t6, $t5
	ld.hu	$t6, $a1, 6
	or	$t4, $t4, $t5
	ld.hu	$t5, $t3, 8
	ld.hu	$t7, $t2, 8
	sub.d	$t4, $t6, $t4
	st.w	$t4, $t1, 12
	mul.d	$t4, $t5, $a3
	mul.d	$t5, $t7, $a4
	ldptr.w	$t6, $a5, 15520
	add.d	$t4, $t4, $s8
	add.d	$t4, $t4, $t5
	sra.w	$t4, $t4, $s1
	add.w	$t4, $t4, $a6
	srai.d	$t5, $t4, 63
	andn	$t4, $t4, $t5
	slt	$t5, $t4, $t6
	maskeqz	$t4, $t4, $t5
	masknez	$t5, $t6, $t5
	ld.hu	$t6, $a1, 8
	or	$t4, $t4, $t5
	ld.hu	$t5, $t3, 10
	ld.hu	$t7, $t2, 10
	sub.d	$t4, $t6, $t4
	st.w	$t4, $t1, 16
	mul.d	$t4, $t5, $a3
	mul.d	$t5, $t7, $a4
	ldptr.w	$t6, $a5, 15520
	add.d	$t4, $t4, $s8
	add.d	$t4, $t4, $t5
	sra.w	$t4, $t4, $s1
	add.w	$t4, $t4, $a6
	srai.d	$t5, $t4, 63
	andn	$t4, $t4, $t5
	slt	$t5, $t4, $t6
	maskeqz	$t4, $t4, $t5
	masknez	$t5, $t6, $t5
	ld.hu	$t6, $a1, 10
	or	$t4, $t4, $t5
	ld.hu	$t5, $t3, 12
	ld.hu	$t7, $t2, 12
	sub.d	$t4, $t6, $t4
	st.w	$t4, $t1, 20
	mul.d	$t4, $t5, $a3
	mul.d	$t5, $t7, $a4
	ldptr.w	$t6, $a5, 15520
	add.d	$t4, $t4, $s8
	add.d	$t4, $t4, $t5
	sra.w	$t4, $t4, $s1
	add.w	$t4, $t4, $a6
	srai.d	$t5, $t4, 63
	andn	$t4, $t4, $t5
	slt	$t5, $t4, $t6
	maskeqz	$t4, $t4, $t5
	masknez	$t5, $t6, $t5
	ld.hu	$t6, $a1, 12
	or	$t4, $t4, $t5
	ld.hu	$t3, $t3, 14
	ld.hu	$t2, $t2, 14
	sub.d	$t4, $t6, $t4
	st.w	$t4, $t1, 24
	mul.d	$t3, $t3, $a3
	mul.d	$t2, $t2, $a4
	ldptr.w	$t4, $a5, 15520
	add.d	$t3, $t3, $s8
	add.d	$t2, $t3, $t2
	sra.w	$t2, $t2, $s1
	add.w	$t2, $t2, $a6
	srai.d	$t3, $t2, 63
	andn	$t2, $t2, $t3
	slt	$t3, $t2, $t4
	ld.hu	$t5, $a1, 14
	maskeqz	$t2, $t2, $t3
	masknez	$t3, $t4, $t3
	or	$t2, $t2, $t3
	sub.d	$t2, $t5, $t2
	st.w	$t2, $t1, 28
	addi.w	$t0, $t0, -1
	add.d	$a7, $a7, $s3
	add.d	$a1, $a1, $s5
	addi.d	$t1, $t1, 32
	bnez	$t0, .LBB12_6
# %bb.7:                                #   in Loop: Header=BB12_5 Depth=2
	add.d	$a0, $a0, $a7
	pcalau12i	$a3, %pc_hi20(ref1_line)
	st.d	$a0, $a3, %pc_lo12(ref1_line)
	add.d	$a0, $a2, $a7
	st.d	$a0, $fp, %pc_lo12(ref2_line)
	st.d	$a1, $s7, %pc_lo12(src_line)
	pcalau12i	$a0, %pc_hi20(diff)
	addi.d	$a0, $a0, %pc_lo12(diff)
	pcaddu18i	$ra, %call36(HadamardSAD8x8)
	jirl	$ra, $ra, 0
	add.w	$s6, $a0, $s6
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	blt	$a0, $s6, .LBB12_18
# %bb.8:                                #   in Loop: Header=BB12_5 Depth=2
	addi.d	$s0, $s0, 8
	addi.w	$a0, $s0, 0
	blt	$a0, $s4, .LBB12_5
# %bb.9:                                # %..thread_crit_edge.us
                                        #   in Loop: Header=BB12_4 Depth=1
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
	addi.w	$a2, $a2, 8
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	alsl.d	$a0, $a1, $a0, 1
	st.d	$a0, $sp, 200                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a7, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a5, $sp, 32                    # 8-byte Folded Reload
	blt	$a2, $a1, .LBB12_4
	b	.LBB12_18
.LBB12_10:
	slli.w	$a2, $a1, 2
	blez	$a2, .LBB12_17
# %bb.11:                               # %.preheader.lr.ph
	blez	$s4, .LBB12_17
# %bb.12:                               # %.preheader.us.preheader
	pcalau12i	$a0, %pc_hi20(img_padded_size_x)
	ld.w	$a0, $a0, %pc_lo12(img_padded_size_x)
	slli.w	$a1, $s4, 2
	addi.w	$fp, $a0, -4
	slli.d	$a0, $a1, 1
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(src_line)
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(bipred2_access_method)
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(get_line)
	addi.d	$a0, $a0, %pc_lo12(get_line)
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(ref_pic2_sub)
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(ref2_line)
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(bipred1_access_method)
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(ref_pic1_sub)
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(weight1)
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(weight2)
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(img)
	ld.d	$a0, $a0, %got_pc_lo12(img)
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(offsetBi)
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(diff)
	addi.d	$s7, $a0, %pc_lo12(diff)
	move	$s6, $zero
	move	$a3, $zero
	slli.d	$a0, $s4, 1
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(ref1_line)
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	st.d	$a7, $sp, 40                    # 8-byte Folded Spill
	st.d	$a5, $sp, 32                    # 8-byte Folded Spill
	st.d	$a2, $sp, 16                    # 8-byte Folded Spill
.LBB12_13:                              # %.preheader.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB12_14 Depth 2
	move	$a0, $zero
	add.w	$a1, $a3, $a7
	st.d	$a1, $sp, 160                   # 8-byte Folded Spill
	st.d	$a3, $sp, 24                    # 8-byte Folded Spill
	add.w	$a1, $a3, $a5
	st.d	$a1, $sp, 152                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 200                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 168                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB12_14:                              #   Parent Loop BB12_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.d	$a0, $sp, 192                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(bipred2_access_method)
	slli.d	$a0, $a0, 3
	ld.d	$s3, $sp, 128                   # 8-byte Folded Reload
	ldx.d	$a3, $s3, $a0
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(ref_pic2_sub)
	ld.d	$s5, $sp, 144                   # 8-byte Folded Reload
	st.d	$a2, $sp, 184                   # 8-byte Folded Spill
	st.d	$a2, $s5, %pc_lo12(src_line)
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	move	$a2, $s0
	jirl	$ra, $a3, 0
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	ld.w	$a1, $a1, %pc_lo12(bipred1_access_method)
	slli.d	$a1, $a1, 3
	ldx.d	$a3, $s3, $a1
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(ref_pic1_sub)
	ld.d	$s3, $sp, 112                   # 8-byte Folded Reload
	st.d	$a0, $s3, %pc_lo12(ref2_line)
	move	$a0, $a1
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	move	$a2, $s2
	jirl	$ra, $a3, 0
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	ld.h	$a1, $a1, %pc_lo12(weight1)
	ld.d	$a7, $s3, %pc_lo12(ref2_line)
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	ld.h	$a2, $a2, %pc_lo12(weight2)
	ld.d	$a3, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a4, $a3, 0
	ld.hu	$a5, $a0, 0
	ld.hu	$t0, $a7, 0
	ld.d	$a3, $sp, 64                    # 8-byte Folded Reload
	ld.h	$a3, $a3, %pc_lo12(offsetBi)
	ld.d	$a6, $s5, %pc_lo12(src_line)
	mul.d	$t1, $a5, $a1
	mul.d	$t0, $t0, $a2
	ldptr.w	$a5, $a4, 15520
	add.d	$t1, $t1, $s8
	add.d	$t0, $t1, $t0
	sra.w	$t0, $t0, $s1
	add.w	$t0, $t0, $a3
	srai.d	$t1, $t0, 63
	andn	$t0, $t0, $t1
	slt	$t1, $t0, $a5
	maskeqz	$t0, $t0, $t1
	masknez	$t1, $a5, $t1
	ld.hu	$t2, $a6, 0
	or	$t0, $t0, $t1
	ld.hu	$t1, $a0, 2
	ld.hu	$t3, $a7, 2
	sub.d	$t0, $t2, $t0
	st.w	$t0, $s7, 0
	mul.d	$t0, $t1, $a1
	mul.d	$t1, $t3, $a2
	add.d	$t0, $t0, $s8
	add.d	$t0, $t0, $t1
	sra.w	$t0, $t0, $s1
	add.w	$t0, $t0, $a3
	srai.d	$t1, $t0, 63
	andn	$t0, $t0, $t1
	slt	$t1, $t0, $a5
	maskeqz	$t0, $t0, $t1
	masknez	$t1, $a5, $t1
	ld.hu	$t2, $a6, 2
	or	$t0, $t0, $t1
	ld.hu	$t1, $a0, 4
	ld.hu	$t3, $a7, 4
	sub.d	$t0, $t2, $t0
	st.w	$t0, $s7, 4
	mul.d	$t0, $t1, $a1
	mul.d	$t1, $t3, $a2
	add.d	$t0, $t0, $s8
	add.d	$t0, $t0, $t1
	sra.w	$t0, $t0, $s1
	add.w	$t0, $t0, $a3
	srai.d	$t1, $t0, 63
	andn	$t0, $t0, $t1
	slt	$t1, $t0, $a5
	ld.hu	$t2, $a6, 4
	maskeqz	$t0, $t0, $t1
	masknez	$t1, $a5, $t1
	or	$t0, $t0, $t1
	sub.d	$t0, $t2, $t0
	ld.hu	$t1, $a0, 6
	st.w	$t0, $s7, 8
	ld.hu	$t2, $a7, 6
	alsl.d	$t0, $fp, $a0, 1
	mul.d	$a0, $t1, $a1
	alsl.d	$a7, $fp, $a7, 1
	mul.d	$t1, $t2, $a2
	add.d	$a0, $a0, $s8
	add.d	$a0, $a0, $t1
	sra.w	$a0, $a0, $s1
	add.w	$a0, $a0, $a3
	srai.d	$t1, $a0, 63
	andn	$a0, $a0, $t1
	slt	$t1, $a0, $a5
	ld.hu	$t2, $a6, 6
	maskeqz	$a0, $a0, $t1
	masknez	$t1, $a5, $t1
	or	$a0, $a0, $t1
	sub.d	$a0, $t2, $a0
	st.w	$a0, $s7, 12
	ld.hu	$a0, $t0, 8
	ld.hu	$t1, $a7, 8
	addi.d	$t3, $t0, 8
	addi.d	$t2, $a7, 8
	mul.d	$a0, $a0, $a1
	mul.d	$t1, $t1, $a2
	add.d	$a0, $a0, $s8
	add.d	$a0, $a0, $t1
	sra.w	$a0, $a0, $s1
	add.w	$a0, $a0, $a3
	srai.d	$t1, $a0, 63
	andn	$a0, $a0, $t1
	slt	$t1, $a0, $a5
	ld.d	$t6, $sp, 56                    # 8-byte Folded Reload
	ldx.hu	$t4, $a6, $t6
	maskeqz	$a0, $a0, $t1
	masknez	$t1, $a5, $t1
	or	$a0, $a0, $t1
	sub.d	$a0, $t4, $a0
	ld.hu	$t4, $t0, 10
	ld.hu	$t5, $a7, 10
	alsl.d	$t1, $s4, $a6, 1
	st.w	$a0, $s7, 16
	mul.d	$a0, $t4, $a1
	mul.d	$a6, $t5, $a2
	add.d	$a0, $a0, $s8
	add.d	$a0, $a0, $a6
	sra.w	$a0, $a0, $s1
	add.w	$a0, $a0, $a3
	srai.d	$a6, $a0, 63
	andn	$a0, $a0, $a6
	slt	$a6, $a0, $a5
	maskeqz	$a0, $a0, $a6
	masknez	$a5, $a5, $a6
	ld.hu	$a6, $t1, 2
	or	$a0, $a0, $a5
	ld.hu	$a5, $t0, 12
	ld.hu	$t4, $a7, 12
	sub.d	$a0, $a6, $a0
	st.w	$a0, $s7, 20
	mul.d	$a5, $a5, $a1
	mul.d	$a6, $t4, $a2
	ldptr.w	$a0, $a4, 15520
	add.d	$a5, $a5, $s8
	add.d	$a5, $a5, $a6
	sra.w	$a5, $a5, $s1
	add.w	$a5, $a5, $a3
	srai.d	$a6, $a5, 63
	andn	$a5, $a5, $a6
	slt	$a6, $a5, $a0
	ld.hu	$t4, $t1, 4
	maskeqz	$a5, $a5, $a6
	masknez	$a6, $a0, $a6
	or	$a5, $a5, $a6
	sub.d	$a5, $t4, $a5
	ld.hu	$a6, $t0, 14
	st.w	$a5, $s7, 24
	ld.hu	$a5, $a7, 14
	alsl.d	$a7, $fp, $t3, 1
	mul.d	$t0, $a6, $a1
	alsl.d	$a6, $fp, $t2, 1
	mul.d	$a5, $a5, $a2
	add.d	$t0, $t0, $s8
	add.d	$a5, $t0, $a5
	sra.w	$a5, $a5, $s1
	add.w	$a5, $a5, $a3
	srai.d	$t0, $a5, 63
	andn	$a5, $a5, $t0
	slt	$t0, $a5, $a0
	ld.hu	$t2, $t1, 6
	maskeqz	$a5, $a5, $t0
	masknez	$t0, $a0, $t0
	or	$a5, $a5, $t0
	sub.d	$a5, $t2, $a5
	st.w	$a5, $s7, 28
	ld.hu	$t2, $a7, 8
	ld.hu	$t3, $a6, 8
	addi.d	$t0, $a7, 8
	alsl.d	$a5, $s4, $t1, 1
	mul.d	$t2, $t2, $a1
	mul.d	$t3, $t3, $a2
	add.d	$t2, $t2, $s8
	add.d	$t2, $t2, $t3
	sra.w	$t2, $t2, $s1
	add.w	$t2, $t2, $a3
	srai.d	$t3, $t2, 63
	andn	$t2, $t2, $t3
	slt	$t3, $t2, $a0
	maskeqz	$t2, $t2, $t3
	masknez	$t3, $a0, $t3
	ldx.hu	$t1, $t1, $t6
	or	$t2, $t2, $t3
	ld.hu	$t3, $a7, 10
	ld.hu	$t4, $a6, 10
	sub.d	$t1, $t1, $t2
	st.w	$t1, $s7, 32
	mul.d	$t1, $t3, $a1
	mul.d	$t2, $t4, $a2
	add.d	$t1, $t1, $s8
	add.d	$t1, $t1, $t2
	sra.w	$t1, $t1, $s1
	add.w	$t1, $t1, $a3
	srai.d	$t2, $t1, 63
	andn	$t1, $t1, $t2
	slt	$t2, $t1, $a0
	ld.hu	$t3, $a5, 2
	maskeqz	$t1, $t1, $t2
	masknez	$t2, $a0, $t2
	or	$t1, $t1, $t2
	sub.d	$t1, $t3, $t1
	ld.hu	$t2, $a7, 12
	ld.hu	$t3, $a6, 12
	addi.d	$t4, $a6, 8
	st.w	$t1, $s7, 36
	mul.d	$t1, $t2, $a1
	mul.d	$t2, $t3, $a2
	add.d	$t1, $t1, $s8
	add.d	$t1, $t1, $t2
	sra.w	$t1, $t1, $s1
	add.w	$t1, $t1, $a3
	srai.d	$t2, $t1, 63
	andn	$t1, $t1, $t2
	slt	$t2, $t1, $a0
	ld.hu	$t3, $a5, 4
	maskeqz	$t1, $t1, $t2
	masknez	$t2, $a0, $t2
	or	$t1, $t1, $t2
	sub.d	$t1, $t3, $t1
	ld.hu	$t2, $a7, 14
	st.w	$t1, $s7, 40
	ld.hu	$t1, $a6, 14
	alsl.d	$a7, $fp, $t0, 1
	mul.d	$t0, $t2, $a1
	alsl.d	$a6, $fp, $t4, 1
	mul.d	$t1, $t1, $a2
	add.d	$t0, $t0, $s8
	add.d	$t0, $t0, $t1
	sra.w	$t0, $t0, $s1
	add.w	$t0, $t0, $a3
	srai.d	$t1, $t0, 63
	andn	$t0, $t0, $t1
	slt	$t1, $t0, $a0
	ld.hu	$t2, $a5, 6
	maskeqz	$t0, $t0, $t1
	masknez	$a0, $a0, $t1
	or	$a0, $t0, $a0
	sub.d	$a0, $t2, $a0
	st.w	$a0, $s7, 44
	addi.d	$t0, $a7, 8
	ld.hu	$t2, $a7, 8
	ld.hu	$t3, $a6, 8
	addi.d	$t1, $a6, 8
	alsl.d	$a0, $s4, $a5, 1
	mul.d	$t2, $t2, $a1
	mul.d	$t3, $t3, $a2
	ldptr.w	$a4, $a4, 15520
	add.d	$t2, $t2, $s8
	add.d	$t2, $t2, $t3
	sra.w	$t2, $t2, $s1
	add.w	$t2, $t2, $a3
	srai.d	$t3, $t2, 63
	andn	$t2, $t2, $t3
	slt	$t3, $t2, $a4
	maskeqz	$t2, $t2, $t3
	masknez	$t3, $a4, $t3
	ldx.hu	$a5, $a5, $t6
	or	$t2, $t2, $t3
	ld.hu	$t3, $a7, 10
	ld.hu	$t4, $a6, 10
	sub.d	$a5, $a5, $t2
	st.w	$a5, $s7, 48
	mul.d	$a5, $t3, $a1
	mul.d	$t2, $t4, $a2
	add.d	$a5, $a5, $s8
	add.d	$a5, $a5, $t2
	sra.w	$a5, $a5, $s1
	add.w	$a5, $a5, $a3
	srai.d	$t2, $a5, 63
	andn	$a5, $a5, $t2
	slt	$t2, $a5, $a4
	maskeqz	$a5, $a5, $t2
	masknez	$t2, $a4, $t2
	ld.hu	$t3, $a0, 2
	or	$a5, $a5, $t2
	ld.hu	$t2, $a7, 12
	ld.hu	$t4, $a6, 12
	sub.d	$a5, $t3, $a5
	st.w	$a5, $s7, 52
	mul.d	$a5, $t2, $a1
	mul.d	$t2, $t4, $a2
	add.d	$a5, $a5, $s8
	add.d	$a5, $a5, $t2
	sra.w	$a5, $a5, $s1
	add.w	$a5, $a5, $a3
	srai.d	$t2, $a5, 63
	andn	$a5, $a5, $t2
	slt	$t2, $a5, $a4
	ld.hu	$t3, $a0, 4
	maskeqz	$a5, $a5, $t2
	masknez	$t2, $a4, $t2
	or	$a5, $a5, $t2
	sub.d	$a5, $t3, $a5
	ld.hu	$a7, $a7, 14
	st.w	$a5, $s7, 56
	ld.hu	$a5, $a6, 14
	alsl.d	$a6, $fp, $t0, 1
	mul.d	$a1, $a7, $a1
	alsl.d	$a7, $fp, $t1, 1
	mul.d	$a2, $a5, $a2
	add.d	$a1, $a1, $s8
	add.d	$a1, $a1, $a2
	sra.w	$a1, $a1, $s1
	add.w	$a1, $a1, $a3
	srai.d	$a2, $a1, 63
	andn	$a1, $a1, $a2
	slt	$a2, $a1, $a4
	ld.hu	$a3, $a0, 6
	maskeqz	$a1, $a1, $a2
	masknez	$a2, $a4, $a2
	or	$a1, $a1, $a2
	sub.d	$a1, $a3, $a1
	st.w	$a1, $s7, 60
	addi.d	$a1, $a6, 8
	addi.d	$a2, $a7, 8
	alsl.d	$a0, $s4, $a0, 1
	ld.d	$a3, $sp, 48                    # 8-byte Folded Reload
	st.d	$a1, $a3, %pc_lo12(ref1_line)
	st.d	$a2, $s3, %pc_lo12(ref2_line)
	st.d	$a0, $s5, %pc_lo12(src_line)
	move	$a0, $s7
	pcaddu18i	$ra, %call36(HadamardSAD4x4)
	jirl	$ra, $ra, 0
	add.w	$s6, $a0, $s6
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	blt	$a0, $s6, .LBB12_18
# %bb.15:                               #   in Loop: Header=BB12_14 Depth=2
	addi.w	$s2, $s2, 16
	addi.w	$s0, $s0, 16
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	addi.w	$a0, $a0, 4
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	addi.d	$a2, $a2, 8
	blt	$a0, $s4, .LBB12_14
# %bb.16:                               # %._crit_edge.us
                                        #   in Loop: Header=BB12_13 Depth=1
	ld.d	$a3, $sp, 24                    # 8-byte Folded Reload
	addi.w	$a3, $a3, 16
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	add.d	$a0, $a0, $a1
	st.d	$a0, $sp, 200                   # 8-byte Folded Spill
	ld.d	$a7, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a5, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	blt	$a3, $a2, .LBB12_13
	b	.LBB12_18
.LBB12_17:
	move	$s6, $zero
.LBB12_18:                              # %.loopexit
	move	$a0, $s6
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
.Lfunc_end12:
	.size	computeBiPredSATD2, .Lfunc_end12-computeBiPredSATD2
                                        # -- End function
	.globl	computeSSE                      # -- Begin function computeSSE
	.p2align	5
	.type	computeSSE,@function
computeSSE:                             # @computeSSE
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
	move	$s2, $a3
	move	$s4, $a2
	move	$s5, $a1
	move	$s3, $a0
	pcalau12i	$a0, %got_pc_hi20(img)
	ld.d	$a0, $a0, %got_pc_lo12(img)
	ld.d	$a0, $a0, 0
	ldptr.d	$s8, $a0, 14232
	pcalau12i	$a0, %pc_hi20(img_padded_size_x)
	pcalau12i	$s1, %pc_hi20(ref_access_method)
	ld.w	$a1, $s1, %pc_lo12(ref_access_method)
	ld.w	$s6, $a0, %pc_lo12(img_padded_size_x)
	pcalau12i	$s7, %pc_hi20(src_line)
	st.d	$s3, $s7, %pc_lo12(src_line)
	slli.d	$a0, $a1, 3
	pcalau12i	$a1, %pc_hi20(get_line)
	addi.d	$a1, $a1, %pc_lo12(get_line)
	ldx.d	$a3, $a1, $a0
	pcalau12i	$a0, %pc_hi20(ref_pic_sub)
	addi.d	$s0, $a0, %pc_lo12(ref_pic_sub)
	ld.d	$a0, $s0, 0
	st.d	$a5, $sp, 24                    # 8-byte Folded Spill
	move	$a1, $a5
	st.d	$a4, $sp, 32                    # 8-byte Folded Spill
	move	$a2, $a4
	jirl	$ra, $a3, 0
	pcalau12i	$t2, %pc_hi20(ref_line)
	st.d	$a0, $t2, %pc_lo12(ref_line)
	move	$fp, $zero
	blez	$s5, .LBB13_8
# %bb.1:                                # %.preheader60.lr.ph
	blez	$s4, .LBB13_22
# %bb.2:                                # %.preheader60.us.preheader
	move	$a1, $zero
	ld.d	$a4, $s7, %pc_lo12(src_line)
	slli.d	$a2, $s6, 1
	slli.d	$a3, $s4, 1
	sub.d	$a2, $a2, $a3
	.p2align	4, , 16
.LBB13_3:                               # %.preheader60.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB13_4 Depth 2
	move	$a3, $zero
	move	$a5, $a0
	.p2align	4, , 16
.LBB13_4:                               #   Parent Loop BB13_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.hu	$a0, $a4, 0
	ld.hu	$a6, $a5, 0
	sub.d	$a0, $a0, $a6
	slli.d	$a0, $a0, 2
	ld.hu	$a6, $a4, 2
	ld.hu	$a7, $a5, 2
	ldx.w	$a0, $s8, $a0
	ld.hu	$t0, $a4, 4
	ld.hu	$t1, $a5, 4
	sub.d	$a6, $a6, $a7
	slli.d	$a6, $a6, 2
	ldx.w	$a6, $s8, $a6
	sub.d	$a7, $t0, $t1
	slli.d	$a7, $a7, 2
	ldx.w	$a7, $s8, $a7
	ld.hu	$t0, $a4, 6
	ld.hu	$t1, $a5, 6
	add.d	$a0, $a0, $fp
	add.d	$a0, $a0, $a6
	add.d	$a0, $a0, $a7
	sub.d	$a6, $t0, $t1
	slli.d	$a6, $a6, 2
	ldx.w	$a6, $s8, $a6
	addi.d	$a4, $a4, 8
	addi.d	$a5, $a5, 8
	addi.w	$a3, $a3, 4
	add.w	$fp, $a0, $a6
	blt	$a3, $s4, .LBB13_4
# %bb.5:                                # %._crit_edge.us
                                        #   in Loop: Header=BB13_3 Depth=1
	bge	$fp, $s2, .LBB13_24
# %bb.6:                                #   in Loop: Header=BB13_3 Depth=1
	addi.w	$a1, $a1, 1
	add.d	$a0, $a5, $a2
	bne	$a1, $s5, .LBB13_3
# %bb.7:                                # %._crit_edge78.split.us
	add.d	$a0, $a5, $a2
	st.d	$a0, $t2, %pc_lo12(ref_line)
	st.d	$a4, $s7, %pc_lo12(src_line)
.LBB13_8:                               # %._crit_edge78
	pcalau12i	$a0, %pc_hi20(ChromaMEEnable)
	ld.w	$a0, $a0, %pc_lo12(ChromaMEEnable)
	beqz	$a0, .LBB13_32
.LBB13_9:
	pcalau12i	$a0, %pc_hi20(shift_cr_y)
	ld.wu	$a0, $a0, %pc_lo12(shift_cr_y)
	sra.w	$s5, $s5, $a0
	blez	$s5, .LBB13_25
# %bb.10:                               # %.split.us
	pcalau12i	$a0, %pc_hi20(shift_cr_x)
	ld.wu	$a0, $a0, %pc_lo12(shift_cr_x)
	pcalau12i	$a1, %pc_hi20(img_cr_padded_size_x)
	ld.w	$s6, $a1, %pc_lo12(img_cr_padded_size_x)
	sra.w	$s4, $s4, $a0
	blez	$s4, .LBB13_28
# %bb.11:                               # %.preheader.lr.ph.us.us.preheader
	ld.w	$a0, $s1, %pc_lo12(ref_access_method)
	addi.d	$a1, $s3, 512
	st.d	$a1, $s7, %pc_lo12(src_line)
	slli.d	$a0, $a0, 3
	pcalau12i	$a1, %pc_hi20(get_crline)
	addi.d	$a1, $a1, %pc_lo12(get_crline)
	st.d	$a1, $sp, 8                     # 8-byte Folded Spill
	ldx.d	$a3, $a1, $a0
	ld.d	$a0, $s0, 8
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	st.d	$t2, $sp, 16                    # 8-byte Folded Spill
	jirl	$ra, $a3, 0
	ld.d	$a7, $sp, 16                    # 8-byte Folded Reload
	move	$a3, $zero
	ld.d	$a1, $s7, %pc_lo12(src_line)
	slli.d	$a2, $s6, 1
	slli.d	$a4, $s4, 1
	sub.d	$s6, $a2, $a4
	.p2align	4, , 16
.LBB13_12:                              # %.preheader.us.us.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB13_13 Depth 2
	move	$a4, $s4
	move	$a2, $a0
	.p2align	4, , 16
.LBB13_13:                              #   Parent Loop BB13_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.hu	$a0, $a1, 0
	ld.hu	$a5, $a2, 0
	sub.d	$a0, $a0, $a5
	slli.d	$a0, $a0, 2
	ldx.w	$a0, $s8, $a0
	ld.hu	$a5, $a1, 2
	ld.hu	$a6, $a2, 2
	add.d	$a0, $a0, $fp
	sub.d	$a5, $a5, $a6
	slli.d	$a5, $a5, 2
	ldx.w	$a5, $s8, $a5
	addi.d	$a1, $a1, 4
	addi.d	$a2, $a2, 4
	addi.w	$a4, $a4, -1
	add.w	$fp, $a0, $a5
	bnez	$a4, .LBB13_13
# %bb.14:                               # %._crit_edge.us99.us.us
                                        #   in Loop: Header=BB13_12 Depth=1
	bge	$fp, $s2, .LBB13_26
# %bb.15:                               #   in Loop: Header=BB13_12 Depth=1
	addi.w	$a3, $a3, 1
	add.d	$a0, $a2, $s6
	bne	$a3, $s5, .LBB13_12
# %bb.16:                               # %._crit_edge97.split.us.us.us
	ld.w	$a0, $s1, %pc_lo12(ref_access_method)
	add.d	$a1, $a2, $s6
	slli.d	$a0, $a0, 3
	ld.d	$a2, $sp, 8                     # 8-byte Folded Reload
	ldx.d	$a3, $a2, $a0
	ld.d	$a0, $s0, 16
	st.d	$a1, $a7, %pc_lo12(ref_line)
	addi.d	$a1, $s3, 1024
	st.d	$a1, $s7, %pc_lo12(src_line)
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	jirl	$ra, $a3, 0
	ld.d	$a7, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a1, $s7, %pc_lo12(src_line)
	move	$a3, $zero
	.p2align	4, , 16
.LBB13_17:                              # %.preheader.us.us.us.1
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB13_18 Depth 2
	move	$a4, $s4
	move	$a2, $a0
	.p2align	4, , 16
.LBB13_18:                              #   Parent Loop BB13_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.hu	$a0, $a1, 0
	ld.hu	$a5, $a2, 0
	sub.d	$a0, $a0, $a5
	slli.d	$a0, $a0, 2
	ldx.w	$a0, $s8, $a0
	ld.hu	$a5, $a1, 2
	ld.hu	$a6, $a2, 2
	add.d	$a0, $a0, $fp
	sub.d	$a5, $a5, $a6
	slli.d	$a5, $a5, 2
	ldx.w	$a5, $s8, $a5
	addi.d	$a1, $a1, 4
	addi.d	$a2, $a2, 4
	addi.w	$a4, $a4, -1
	add.w	$fp, $a0, $a5
	bnez	$a4, .LBB13_18
# %bb.19:                               # %._crit_edge.us99.us.us.1
                                        #   in Loop: Header=BB13_17 Depth=1
	bge	$fp, $s2, .LBB13_26
# %bb.20:                               #   in Loop: Header=BB13_17 Depth=1
	addi.w	$a3, $a3, 1
	add.d	$a0, $a2, $s6
	bne	$a3, $s5, .LBB13_17
# %bb.21:                               # %._crit_edge97.split.us.us.us.1
	add.d	$a0, $a2, $s6
	st.d	$a0, $a7, %pc_lo12(ref_line)
	b	.LBB13_27
.LBB13_22:                              # %.preheader60.lr.ph.split
	blez	$s2, .LBB13_32
# %bb.23:                               # %.preheader60.preheader
	slli.d	$a1, $s6, 1
	slli.d	$a2, $s4, 1
	sub.d	$a1, $a1, $a2
	addi.w	$a3, $s5, -1
	mul.d	$a1, $a1, $a3
	alsl.d	$a1, $s6, $a1, 1
	sub.d	$a1, $a1, $a2
	add.d	$a0, $a0, $a1
	st.d	$a0, $t2, %pc_lo12(ref_line)
	pcalau12i	$a0, %pc_hi20(ChromaMEEnable)
	ld.w	$a0, $a0, %pc_lo12(ChromaMEEnable)
	bnez	$a0, .LBB13_9
	b	.LBB13_32
.LBB13_24:                              # %.loopexit61.split.us
	st.d	$a5, $t2, %pc_lo12(ref_line)
	st.d	$a4, $s7, %pc_lo12(src_line)
	b	.LBB13_32
.LBB13_25:                              # %.split.preheader
	ld.w	$a0, $s1, %pc_lo12(ref_access_method)
	addi.d	$a1, $s3, 512
	st.d	$a1, $s7, %pc_lo12(src_line)
	slli.d	$a0, $a0, 3
	pcalau12i	$a1, %pc_hi20(get_crline)
	addi.d	$s2, $a1, %pc_lo12(get_crline)
	ldx.d	$a3, $s2, $a0
	ld.d	$a0, $s0, 8
	ld.d	$s6, $sp, 24                    # 8-byte Folded Reload
	move	$a1, $s6
	ld.d	$s5, $sp, 32                    # 8-byte Folded Reload
	move	$a2, $s5
	move	$s4, $t2
	jirl	$ra, $a3, 0
	ld.w	$a1, $s1, %pc_lo12(ref_access_method)
	slli.d	$a1, $a1, 3
	ldx.d	$a3, $s2, $a1
	ld.d	$a1, $s0, 16
	st.d	$a0, $s4, %pc_lo12(ref_line)
	addi.d	$a0, $s3, 1024
	st.d	$a0, $s7, %pc_lo12(src_line)
	move	$a0, $a1
	move	$a1, $s6
	move	$a2, $s5
	jirl	$ra, $a3, 0
	st.d	$a0, $s4, %pc_lo12(ref_line)
	b	.LBB13_32
.LBB13_26:                              # %.loopexit.split.us
	st.d	$a2, $a7, %pc_lo12(ref_line)
.LBB13_27:                              # %.loopexit
	st.d	$a1, $s7, %pc_lo12(src_line)
	b	.LBB13_32
.LBB13_28:                              # %.split.us.split
	move	$s8, $t2
	bge	$fp, $s2, .LBB13_30
# %bb.29:                               # %.preheader.lr.ph.us.us125.preheader
	slli.d	$a0, $s6, 1
	slli.d	$a1, $s4, 1
	sub.d	$a0, $a0, $a1
	addi.w	$a2, $s5, -1
	mul.d	$a0, $a0, $a2
	alsl.d	$a0, $s6, $a0, 1
	ld.w	$a2, $s1, %pc_lo12(ref_access_method)
	sub.d	$s2, $a0, $a1
	addi.d	$a0, $s3, 512
	st.d	$a0, $s7, %pc_lo12(src_line)
	slli.d	$a0, $a2, 3
	pcalau12i	$a1, %pc_hi20(get_crline)
	addi.d	$s4, $a1, %pc_lo12(get_crline)
	ldx.d	$a3, $s4, $a0
	ld.d	$a0, $s0, 8
	ld.d	$s6, $sp, 24                    # 8-byte Folded Reload
	move	$a1, $s6
	ld.d	$s5, $sp, 32                    # 8-byte Folded Reload
	move	$a2, $s5
	jirl	$ra, $a3, 0
	ld.w	$a1, $s1, %pc_lo12(ref_access_method)
	add.d	$a2, $a0, $s2
	slli.d	$a0, $a1, 3
	ldx.d	$a3, $s4, $a0
	ld.d	$a0, $s0, 16
	st.d	$a2, $s8, %pc_lo12(ref_line)
	addi.d	$a1, $s3, 1024
	st.d	$a1, $s7, %pc_lo12(src_line)
	move	$a1, $s6
	move	$a2, $s5
	jirl	$ra, $a3, 0
	add.d	$a0, $a0, $s2
	b	.LBB13_31
.LBB13_30:                              # %.preheader.lr.ph.us
	ld.w	$a0, $s1, %pc_lo12(ref_access_method)
	addi.d	$a1, $s3, 512
	st.d	$a1, $s7, %pc_lo12(src_line)
	slli.d	$a0, $a0, 3
	pcalau12i	$a1, %pc_hi20(get_crline)
	addi.d	$a1, $a1, %pc_lo12(get_crline)
	ldx.d	$a3, $a1, $a0
	ld.d	$a0, $s0, 8
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	jirl	$ra, $a3, 0
.LBB13_31:                              # %.loopexit
	st.d	$a0, $s8, %pc_lo12(ref_line)
.LBB13_32:                              # %.loopexit
	move	$a0, $fp
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
.Lfunc_end13:
	.size	computeSSE, .Lfunc_end13-computeSSE
                                        # -- End function
	.globl	computeSSEWP                    # -- Begin function computeSSEWP
	.p2align	5
	.type	computeSSEWP,@function
computeSSEWP:                           # @computeSSEWP
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
	move	$fp, $a3
	move	$s4, $a2
	move	$s5, $a1
	pcalau12i	$a1, %got_pc_hi20(img)
	ld.d	$a1, $a1, %got_pc_lo12(img)
	st.d	$a1, $sp, 64                    # 8-byte Folded Spill
	ld.d	$a1, $a1, 0
	ldptr.d	$s8, $a1, 14232
	pcalau12i	$a2, %pc_hi20(img_padded_size_x)
	pcalau12i	$s2, %pc_hi20(ref_access_method)
	ld.w	$a1, $s2, %pc_lo12(ref_access_method)
	ld.w	$s3, $a2, %pc_lo12(img_padded_size_x)
	pcalau12i	$s6, %pc_hi20(src_line)
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	st.d	$a0, $s6, %pc_lo12(src_line)
	slli.d	$a0, $a1, 3
	pcalau12i	$a1, %pc_hi20(get_line)
	addi.d	$a1, $a1, %pc_lo12(get_line)
	ldx.d	$a3, $a1, $a0
	pcalau12i	$a0, %pc_hi20(ref_pic_sub)
	addi.d	$s1, $a0, %pc_lo12(ref_pic_sub)
	ld.d	$a0, $s1, 0
	st.d	$a5, $sp, 48                    # 8-byte Folded Spill
	move	$a1, $a5
	st.d	$a4, $sp, 56                    # 8-byte Folded Spill
	move	$a2, $a4
	jirl	$ra, $a3, 0
	pcalau12i	$s7, %pc_hi20(ref_line)
	st.d	$a0, $s7, %pc_lo12(ref_line)
	move	$s0, $zero
	blez	$s5, .LBB14_8
# %bb.1:                                # %.preheader70.lr.ph
	blez	$s4, .LBB14_17
# %bb.2:                                # %.preheader70.lr.ph.split.us
	move	$a1, $zero
	ld.d	$t1, $s6, %pc_lo12(src_line)
	pcalau12i	$a2, %pc_hi20(weight_luma)
	ld.w	$a2, $a2, %pc_lo12(weight_luma)
	pcalau12i	$a3, %pc_hi20(wp_luma_round)
	ld.w	$a3, $a3, %pc_lo12(wp_luma_round)
	pcalau12i	$a4, %pc_hi20(luma_log_weight_denom)
	ld.w	$a4, $a4, %pc_lo12(luma_log_weight_denom)
	pcalau12i	$a5, %pc_hi20(offset_luma)
	ld.d	$a6, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a6, $a6, 0
	ld.w	$a5, $a5, %pc_lo12(offset_luma)
	lu12i.w	$a7, 3
	ori	$a7, $a7, 3232
	ldx.w	$a6, $a6, $a7
	slli.d	$a7, $s3, 1
	slli.d	$t0, $s4, 1
	sub.d	$a7, $a7, $t0
	.p2align	4, , 16
.LBB14_3:                               # %.preheader70.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB14_4 Depth 2
	move	$t0, $zero
	move	$t2, $a0
	.p2align	4, , 16
.LBB14_4:                               #   Parent Loop BB14_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a0, $t2
	ld.hu	$t2, $t2, 0
	mul.d	$t2, $a2, $t2
	add.d	$t2, $t2, $a3
	sra.w	$t2, $t2, $a4
	add.w	$t2, $t2, $a5
	srai.d	$t3, $t2, 63
	andn	$t2, $t2, $t3
	slt	$t3, $t2, $a6
	maskeqz	$t2, $t2, $t3
	ld.hu	$t4, $t1, 0
	ld.hu	$t5, $a0, 2
	masknez	$t3, $a6, $t3
	or	$t2, $t2, $t3
	sub.w	$t2, $t4, $t2
	mul.d	$t3, $a2, $t5
	add.d	$t3, $t3, $a3
	sra.w	$t3, $t3, $a4
	add.w	$t3, $t3, $a5
	srai.d	$t4, $t3, 63
	andn	$t3, $t3, $t4
	slt	$t4, $t3, $a6
	maskeqz	$t3, $t3, $t4
	masknez	$t4, $a6, $t4
	ld.hu	$t5, $t1, 2
	ld.hu	$t6, $a0, 4
	or	$t3, $t3, $t4
	slli.d	$t2, $t2, 2
	sub.w	$t3, $t5, $t3
	mul.d	$t4, $a2, $t6
	add.d	$t4, $t4, $a3
	sra.w	$t4, $t4, $a4
	add.w	$t4, $t4, $a5
	srai.d	$t5, $t4, 63
	andn	$t4, $t4, $t5
	slt	$t5, $t4, $a6
	maskeqz	$t4, $t4, $t5
	masknez	$t5, $a6, $t5
	or	$t4, $t4, $t5
	ld.hu	$t5, $t1, 4
	ldx.w	$t2, $s8, $t2
	slli.d	$t3, $t3, 2
	ldx.w	$t3, $s8, $t3
	sub.w	$t4, $t5, $t4
	slli.d	$t4, $t4, 2
	ldx.w	$t4, $s8, $t4
	ld.hu	$t5, $a0, 6
	add.d	$t2, $t2, $s0
	add.d	$t2, $t2, $t3
	add.d	$t3, $t2, $t4
	mul.d	$t2, $a2, $t5
	add.d	$t2, $t2, $a3
	sra.w	$t2, $t2, $a4
	add.w	$t2, $t2, $a5
	srai.d	$t4, $t2, 63
	andn	$t2, $t2, $t4
	slt	$t4, $t2, $a6
	ld.hu	$t5, $t1, 6
	maskeqz	$t2, $t2, $t4
	masknez	$t4, $a6, $t4
	or	$t2, $t2, $t4
	sub.w	$t2, $t5, $t2
	slli.d	$t2, $t2, 2
	ldx.w	$t4, $s8, $t2
	addi.d	$t2, $a0, 8
	addi.d	$t1, $t1, 8
	addi.w	$t0, $t0, 4
	add.w	$s0, $t3, $t4
	blt	$t0, $s4, .LBB14_4
# %bb.5:                                # %._crit_edge.us
                                        #   in Loop: Header=BB14_3 Depth=1
	bge	$s0, $fp, .LBB14_19
# %bb.6:                                #   in Loop: Header=BB14_3 Depth=1
	addi.w	$a1, $a1, 1
	add.d	$a0, $t2, $a7
	bne	$a1, $s5, .LBB14_3
# %bb.7:                                # %._crit_edge88.split.us
	add.d	$a0, $t2, $a7
	st.d	$a0, $s7, %pc_lo12(ref_line)
	st.d	$t1, $s6, %pc_lo12(src_line)
.LBB14_8:                               # %._crit_edge88
	pcalau12i	$a0, %pc_hi20(ChromaMEEnable)
	ld.w	$a0, $a0, %pc_lo12(ChromaMEEnable)
	beqz	$a0, .LBB14_34
.LBB14_9:
	pcalau12i	$a0, %pc_hi20(shift_cr_y)
	ld.wu	$a0, $a0, %pc_lo12(shift_cr_y)
	sra.w	$s5, $s5, $a0
	blez	$s5, .LBB14_20
# %bb.10:                               # %.preheader.lr.ph.us.preheader
	pcalau12i	$a0, %pc_hi20(shift_cr_x)
	ld.wu	$a0, $a0, %pc_lo12(shift_cr_x)
	pcalau12i	$a1, %pc_hi20(img_cr_padded_size_x)
	ld.w	$a1, $a1, %pc_lo12(img_cr_padded_size_x)
	sra.w	$s4, $s4, $a0
	slli.d	$a0, $a1, 1
	slli.d	$a2, $s4, 1
	sub.d	$s3, $a0, $a2
	addi.w	$a0, $s5, -1
	mul.d	$a0, $s3, $a0
	alsl.d	$a0, $a1, $a0, 1
	ld.w	$a1, $s2, %pc_lo12(ref_access_method)
	sub.d	$a0, $a0, $a2
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	addi.d	$a0, $a0, 512
	st.d	$a0, $s6, %pc_lo12(src_line)
	slli.d	$a0, $a1, 3
	pcalau12i	$a1, %pc_hi20(get_crline)
	addi.d	$a1, $a1, %pc_lo12(get_crline)
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	ldx.d	$a3, $a1, $a0
	ld.d	$a0, $s1, 8
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	jirl	$ra, $a3, 0
	st.d	$a0, $s7, %pc_lo12(ref_line)
	pcalau12i	$t5, %pc_hi20(wp_chroma_round)
	pcalau12i	$t6, %pc_hi20(chroma_log_weight_denom)
	blez	$s4, .LBB14_21
# %bb.11:                               # %.preheader.lr.ph.split.us.us
	ld.w	$a2, $t5, %pc_lo12(wp_chroma_round)
	ld.w	$a3, $t6, %pc_lo12(chroma_log_weight_denom)
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a4, $a1, 0
	ld.d	$a1, $s6, %pc_lo12(src_line)
	lu12i.w	$a5, 3
	ori	$a5, $a5, 3236
	ldx.w	$a4, $a4, $a5
	pcalau12i	$a5, %pc_hi20(weight_cr)
	ld.w	$a5, $a5, %pc_lo12(weight_cr)
	pcalau12i	$a6, %pc_hi20(offset_cr)
	ld.w	$a6, $a6, %pc_lo12(offset_cr)
	move	$a7, $zero
	.p2align	4, , 16
.LBB14_12:                              # %.preheader.us.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB14_13 Depth 2
	move	$t1, $s4
	move	$t0, $a0
	.p2align	4, , 16
.LBB14_13:                              #   Parent Loop BB14_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.hu	$a0, $t0, 0
	mul.d	$a0, $a5, $a0
	add.d	$a0, $a0, $a2
	sra.w	$a0, $a0, $a3
	add.w	$a0, $a0, $a6
	srai.d	$t2, $a0, 63
	andn	$a0, $a0, $t2
	slt	$t2, $a0, $a4
	ld.hu	$t3, $a1, 0
	maskeqz	$a0, $a0, $t2
	masknez	$t2, $a4, $t2
	or	$a0, $a0, $t2
	sub.w	$a0, $t3, $a0
	slli.d	$a0, $a0, 2
	ldx.w	$a0, $s8, $a0
	ld.hu	$t2, $t0, 2
	add.d	$a0, $a0, $s0
	mul.d	$t2, $a5, $t2
	add.d	$t2, $t2, $a2
	sra.w	$t2, $t2, $a3
	add.w	$t2, $t2, $a6
	srai.d	$t3, $t2, 63
	andn	$t2, $t2, $t3
	slt	$t3, $t2, $a4
	ld.hu	$t4, $a1, 2
	maskeqz	$t2, $t2, $t3
	masknez	$t3, $a4, $t3
	or	$t2, $t2, $t3
	sub.w	$t2, $t4, $t2
	slli.d	$t2, $t2, 2
	ldx.w	$t2, $s8, $t2
	addi.d	$t0, $t0, 4
	addi.d	$a1, $a1, 4
	addi.w	$t1, $t1, -1
	add.w	$s0, $a0, $t2
	bnez	$t1, .LBB14_13
# %bb.14:                               # %._crit_edge.us109.us
                                        #   in Loop: Header=BB14_12 Depth=1
	bge	$s0, $fp, .LBB14_30
# %bb.15:                               #   in Loop: Header=BB14_12 Depth=1
	addi.w	$a7, $a7, 1
	add.d	$a0, $t0, $s3
	bne	$a7, $s5, .LBB14_12
# %bb.16:                               # %._crit_edge107.us.loopexit
	st.d	$t6, $sp, 8                     # 8-byte Folded Spill
	st.d	$t5, $sp, 16                    # 8-byte Folded Spill
	add.d	$a1, $t0, $s3
	b	.LBB14_23
.LBB14_17:                              # %.preheader70.lr.ph.split
	blez	$fp, .LBB14_34
# %bb.18:                               # %.preheader70.preheader
	slli.d	$a1, $s3, 1
	slli.d	$a2, $s4, 1
	sub.d	$a1, $a1, $a2
	addi.w	$a3, $s5, -1
	mul.d	$a1, $a1, $a3
	alsl.d	$a1, $s3, $a1, 1
	sub.d	$a1, $a1, $a2
	add.d	$a0, $a0, $a1
	st.d	$a0, $s7, %pc_lo12(ref_line)
	pcalau12i	$a0, %pc_hi20(ChromaMEEnable)
	ld.w	$a0, $a0, %pc_lo12(ChromaMEEnable)
	bnez	$a0, .LBB14_9
	b	.LBB14_34
.LBB14_19:                              # %.loopexit71.split.us
	st.d	$t2, $s7, %pc_lo12(ref_line)
	st.d	$t1, $s6, %pc_lo12(src_line)
	b	.LBB14_34
.LBB14_20:                              # %.split.preheader
	ld.w	$a0, $s2, %pc_lo12(ref_access_method)
	ld.d	$s5, $sp, 40                    # 8-byte Folded Reload
	addi.d	$a1, $s5, 512
	st.d	$a1, $s6, %pc_lo12(src_line)
	slli.d	$a0, $a0, 3
	pcalau12i	$a1, %pc_hi20(get_crline)
	addi.d	$fp, $a1, %pc_lo12(get_crline)
	ldx.d	$a3, $fp, $a0
	ld.d	$a0, $s1, 8
	ld.d	$s4, $sp, 48                    # 8-byte Folded Reload
	move	$a1, $s4
	ld.d	$s3, $sp, 56                    # 8-byte Folded Reload
	move	$a2, $s3
	jirl	$ra, $a3, 0
	ld.w	$a1, $s2, %pc_lo12(ref_access_method)
	slli.d	$a1, $a1, 3
	ldx.d	$a3, $fp, $a1
	ld.d	$a1, $s1, 16
	st.d	$a0, $s7, %pc_lo12(ref_line)
	addi.d	$a0, $s5, 1024
	st.d	$a0, $s6, %pc_lo12(src_line)
	move	$a0, $a1
	move	$a1, $s4
	move	$a2, $s3
	jirl	$ra, $a3, 0
	b	.LBB14_33
.LBB14_21:                              # %.preheader.lr.ph.split.us122
	bge	$s0, $fp, .LBB14_34
# %bb.22:                               # %.preheader.us118.preheader
	st.d	$t6, $sp, 8                     # 8-byte Folded Spill
	st.d	$t5, $sp, 16                    # 8-byte Folded Spill
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	add.d	$a1, $a0, $a1
.LBB14_23:                              # %._crit_edge107.us
	ld.w	$a0, $s2, %pc_lo12(ref_access_method)
	slli.d	$a0, $a0, 3
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	ldx.d	$a3, $a2, $a0
	ld.d	$a0, $s1, 16
	st.d	$a1, $s7, %pc_lo12(ref_line)
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	addi.d	$a1, $a1, 1024
	st.d	$a1, $s6, %pc_lo12(src_line)
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	jirl	$ra, $a3, 0
	st.d	$a0, $s7, %pc_lo12(ref_line)
	blez	$s4, .LBB14_32
# %bb.24:                               # %.preheader.lr.ph.split.us.us.1
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	ld.w	$a2, $a1, %pc_lo12(wp_chroma_round)
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	ld.w	$a3, $a1, %pc_lo12(chroma_log_weight_denom)
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a4, $a1, 0
	ld.d	$a1, $s6, %pc_lo12(src_line)
	lu12i.w	$a5, 3
	ori	$a5, $a5, 3236
	ldx.w	$a4, $a4, $a5
	pcalau12i	$a5, %pc_hi20(weight_cr+4)
	ld.w	$a5, $a5, %pc_lo12(weight_cr+4)
	pcalau12i	$a6, %pc_hi20(offset_cr+4)
	ld.w	$a6, $a6, %pc_lo12(offset_cr+4)
	move	$a7, $zero
	.p2align	4, , 16
.LBB14_25:                              # %.preheader.us.us.1
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB14_26 Depth 2
	move	$t1, $s4
	move	$t0, $a0
	.p2align	4, , 16
.LBB14_26:                              #   Parent Loop BB14_25 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.hu	$a0, $t0, 0
	mul.d	$a0, $a5, $a0
	add.d	$a0, $a0, $a2
	sra.w	$a0, $a0, $a3
	add.w	$a0, $a0, $a6
	srai.d	$t2, $a0, 63
	andn	$a0, $a0, $t2
	slt	$t2, $a0, $a4
	ld.hu	$t3, $a1, 0
	maskeqz	$a0, $a0, $t2
	masknez	$t2, $a4, $t2
	or	$a0, $a0, $t2
	sub.w	$a0, $t3, $a0
	slli.d	$a0, $a0, 2
	ldx.w	$a0, $s8, $a0
	ld.hu	$t2, $t0, 2
	add.d	$a0, $a0, $s0
	mul.d	$t2, $a5, $t2
	add.d	$t2, $t2, $a2
	sra.w	$t2, $t2, $a3
	add.w	$t2, $t2, $a6
	srai.d	$t3, $t2, 63
	andn	$t2, $t2, $t3
	slt	$t3, $t2, $a4
	ld.hu	$t4, $a1, 2
	maskeqz	$t2, $t2, $t3
	masknez	$t3, $a4, $t3
	or	$t2, $t2, $t3
	sub.w	$t2, $t4, $t2
	slli.d	$t2, $t2, 2
	ldx.w	$t2, $s8, $t2
	addi.d	$t0, $t0, 4
	addi.d	$a1, $a1, 4
	addi.w	$t1, $t1, -1
	add.w	$s0, $a0, $t2
	bnez	$t1, .LBB14_26
# %bb.27:                               # %._crit_edge.us109.us.1
                                        #   in Loop: Header=BB14_25 Depth=1
	bge	$s0, $fp, .LBB14_30
# %bb.28:                               #   in Loop: Header=BB14_25 Depth=1
	addi.w	$a7, $a7, 1
	add.d	$a0, $t0, $s3
	bne	$a7, $s5, .LBB14_25
# %bb.29:                               # %._crit_edge107.split.us.us.1
	add.d	$a0, $t0, $s3
	st.d	$a0, $s7, %pc_lo12(ref_line)
	b	.LBB14_31
.LBB14_30:                              # %.loopexit.split.us
	st.d	$t0, $s7, %pc_lo12(ref_line)
.LBB14_31:                              # %.loopexit
	st.d	$a1, $s6, %pc_lo12(src_line)
	b	.LBB14_34
.LBB14_32:                              # %.preheader.us118.preheader.1
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	add.d	$a0, $a0, $a1
.LBB14_33:                              # %.loopexit
	st.d	$a0, $s7, %pc_lo12(ref_line)
.LBB14_34:                              # %.loopexit
	move	$a0, $s0
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
.Lfunc_end14:
	.size	computeSSEWP, .Lfunc_end14-computeSSEWP
                                        # -- End function
	.globl	computeBiPredSSE1               # -- Begin function computeBiPredSSE1
	.p2align	5
	.type	computeBiPredSSE1,@function
computeBiPredSSE1:                      # @computeBiPredSSE1
# %bb.0:
	addi.d	$sp, $sp, -192
	st.d	$ra, $sp, 184                   # 8-byte Folded Spill
	st.d	$fp, $sp, 176                   # 8-byte Folded Spill
	st.d	$s0, $sp, 168                   # 8-byte Folded Spill
	st.d	$s1, $sp, 160                   # 8-byte Folded Spill
	st.d	$s2, $sp, 152                   # 8-byte Folded Spill
	st.d	$s3, $sp, 144                   # 8-byte Folded Spill
	st.d	$s4, $sp, 136                   # 8-byte Folded Spill
	st.d	$s5, $sp, 128                   # 8-byte Folded Spill
	st.d	$s6, $sp, 120                   # 8-byte Folded Spill
	st.d	$s7, $sp, 112                   # 8-byte Folded Spill
	st.d	$s8, $sp, 104                   # 8-byte Folded Spill
	move	$s5, $a5
	move	$s1, $a4
	move	$fp, $a3
	move	$s6, $a2
	move	$s7, $a1
	pcalau12i	$a1, %got_pc_hi20(img)
	ld.d	$a1, $a1, %got_pc_lo12(img)
	ld.d	$a1, $a1, 0
	ldptr.d	$s3, $a1, 14232
	pcalau12i	$a2, %pc_hi20(img_padded_size_x)
	pcalau12i	$a1, %pc_hi20(bipred2_access_method)
	st.d	$a1, $sp, 40                    # 8-byte Folded Spill
	ld.w	$a1, $a1, %pc_lo12(bipred2_access_method)
	ld.w	$s4, $a2, %pc_lo12(img_padded_size_x)
	pcalau12i	$s8, %pc_hi20(src_line)
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	st.d	$a0, $s8, %pc_lo12(src_line)
	slli.d	$a0, $a1, 3
	pcalau12i	$a1, %pc_hi20(get_line)
	addi.d	$s0, $a1, %pc_lo12(get_line)
	ldx.d	$a3, $s0, $a0
	pcalau12i	$a0, %pc_hi20(ref_pic2_sub)
	addi.d	$a0, $a0, %pc_lo12(ref_pic2_sub)
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	ld.d	$a0, $a0, 0
	st.d	$a7, $sp, 56                    # 8-byte Folded Spill
	move	$a1, $a7
	st.d	$a6, $sp, 64                    # 8-byte Folded Spill
	move	$a2, $a6
	jirl	$ra, $a3, 0
	pcalau12i	$a1, %pc_hi20(bipred1_access_method)
	st.d	$a1, $sp, 88                    # 8-byte Folded Spill
	ld.w	$a1, $a1, %pc_lo12(bipred1_access_method)
	slli.d	$a1, $a1, 3
	ldx.d	$a3, $s0, $a1
	pcalau12i	$s2, %pc_hi20(ref2_line)
	st.d	$a0, $s2, %pc_lo12(ref2_line)
	pcalau12i	$a0, %pc_hi20(ref_pic1_sub)
	addi.d	$a0, $a0, %pc_lo12(ref_pic1_sub)
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	ld.d	$a0, $a0, 0
	st.d	$s5, $sp, 72                    # 8-byte Folded Spill
	move	$a1, $s5
	st.d	$s1, $sp, 80                    # 8-byte Folded Spill
	move	$a2, $s1
	jirl	$ra, $a3, 0
	pcalau12i	$s1, %pc_hi20(ref1_line)
	st.d	$a0, $s1, %pc_lo12(ref1_line)
	blez	$s7, .LBB15_8
# %bb.1:                                # %.preheader73.lr.ph
	ld.d	$a4, $s2, %pc_lo12(ref2_line)
	move	$s0, $zero
	blez	$s6, .LBB15_9
# %bb.2:                                # %.preheader73.us.preheader
	move	$a1, $zero
	ld.d	$a3, $s8, %pc_lo12(src_line)
	slli.d	$a2, $s4, 1
	slli.d	$a5, $s6, 1
	sub.d	$a2, $a2, $a5
	vrepli.b	$vr0, 0
	.p2align	4, , 16
.LBB15_3:                               # %.preheader73.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB15_4 Depth 2
	move	$a5, $zero
	move	$a6, $a0
	move	$a7, $a4
	.p2align	4, , 16
.LBB15_4:                               #   Parent Loop BB15_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $a3, 0
	ld.d	$a4, $a6, 0
	ld.d	$t0, $a7, 0
	vinsgr2vr.d	$vr1, $a0, 0
	vilvl.h	$vr1, $vr0, $vr1
	vinsgr2vr.d	$vr2, $a4, 0
	vinsgr2vr.d	$vr3, $t0, 0
	vor.v	$vr4, $vr2, $vr3
	vxor.v	$vr2, $vr2, $vr3
	vsrli.h	$vr2, $vr2, 1
	vsub.h	$vr2, $vr4, $vr2
	vilvl.h	$vr2, $vr0, $vr2
	vsub.w	$vr1, $vr1, $vr2
	vpickve2gr.w	$a0, $vr1, 0
	slli.d	$a0, $a0, 2
	ldx.w	$a0, $s3, $a0
	addi.d	$a3, $a3, 8
	addi.d	$a6, $a6, 8
	addi.d	$a7, $a7, 8
	add.d	$a0, $a0, $s0
	vpickve2gr.w	$a4, $vr1, 1
	slli.d	$a4, $a4, 2
	ldx.w	$a4, $s3, $a4
	vpickve2gr.w	$t0, $vr1, 2
	slli.d	$t0, $t0, 2
	ldx.w	$t0, $s3, $t0
	vpickve2gr.w	$t1, $vr1, 3
	slli.d	$t1, $t1, 2
	ldx.w	$t1, $s3, $t1
	add.d	$a0, $a0, $a4
	add.d	$a0, $a0, $t0
	addi.w	$a5, $a5, 4
	add.w	$s0, $a0, $t1
	blt	$a5, $s6, .LBB15_4
# %bb.5:                                # %._crit_edge.us
                                        #   in Loop: Header=BB15_3 Depth=1
	bge	$s0, $fp, .LBB15_19
# %bb.6:                                #   in Loop: Header=BB15_3 Depth=1
	add.d	$a4, $a7, $a2
	addi.w	$a1, $a1, 1
	add.d	$a0, $a6, $a2
	bne	$a1, $s7, .LBB15_3
# %bb.7:                                # %._crit_edge96.split.us
	add.d	$a0, $a7, $a2
	st.d	$a0, $s2, %pc_lo12(ref2_line)
	add.d	$a0, $a6, $a2
	st.d	$a0, $s1, %pc_lo12(ref1_line)
	st.d	$a3, $s8, %pc_lo12(src_line)
	pcalau12i	$a0, %pc_hi20(ChromaMEEnable)
	ld.w	$a0, $a0, %pc_lo12(ChromaMEEnable)
	bnez	$a0, .LBB15_11
	b	.LBB15_34
.LBB15_8:
	move	$s0, $zero
	pcalau12i	$a0, %pc_hi20(ChromaMEEnable)
	ld.w	$a0, $a0, %pc_lo12(ChromaMEEnable)
	bnez	$a0, .LBB15_11
	b	.LBB15_34
.LBB15_9:                               # %.preheader73.lr.ph.split
	blez	$fp, .LBB15_34
# %bb.10:                               # %.preheader73.preheader
	slli.d	$a1, $s4, 1
	slli.d	$a2, $s6, 1
	sub.d	$a1, $a1, $a2
	addi.w	$a3, $s7, -1
	mul.d	$a1, $a1, $a3
	alsl.d	$a1, $s4, $a1, 1
	sub.d	$a1, $a1, $a2
	add.d	$a2, $a4, $a1
	add.d	$a0, $a0, $a1
	st.d	$a2, $s2, %pc_lo12(ref2_line)
	st.d	$a0, $s1, %pc_lo12(ref1_line)
	pcalau12i	$a0, %pc_hi20(ChromaMEEnable)
	ld.w	$a0, $a0, %pc_lo12(ChromaMEEnable)
	beqz	$a0, .LBB15_34
.LBB15_11:
	pcalau12i	$a0, %pc_hi20(shift_cr_y)
	ld.wu	$a0, $a0, %pc_lo12(shift_cr_y)
	sra.w	$s7, $s7, $a0
	blez	$s7, .LBB15_20
# %bb.12:                               # %.preheader.lr.ph.us.preheader
	pcalau12i	$a0, %pc_hi20(shift_cr_x)
	ld.wu	$a0, $a0, %pc_lo12(shift_cr_x)
	pcalau12i	$a1, %pc_hi20(img_cr_padded_size_x)
	ld.w	$a1, $a1, %pc_lo12(img_cr_padded_size_x)
	sra.w	$s4, $s6, $a0
	slli.d	$a0, $a1, 1
	slli.d	$a2, $s4, 1
	sub.d	$s6, $a0, $a2
	addi.w	$a0, $s7, -1
	mul.d	$a0, $s6, $a0
	alsl.d	$a0, $a1, $a0, 1
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	ld.w	$a1, $a1, %pc_lo12(bipred2_access_method)
	sub.d	$a0, $a0, $a2
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	addi.d	$a0, $a0, 512
	st.d	$a0, $s8, %pc_lo12(src_line)
	slli.d	$a0, $a1, 3
	pcalau12i	$a1, %pc_hi20(get_crline)
	addi.d	$s5, $a1, %pc_lo12(get_crline)
	ldx.d	$a3, $s5, $a0
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 8
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 64                    # 8-byte Folded Reload
	jirl	$ra, $a3, 0
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	ld.w	$a1, $a1, %pc_lo12(bipred1_access_method)
	slli.d	$a1, $a1, 3
	st.d	$s5, $sp, 24                    # 8-byte Folded Spill
	ldx.d	$a3, $s5, $a1
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a1, $a1, 8
	st.d	$a0, $s2, %pc_lo12(ref2_line)
	move	$a0, $a1
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	jirl	$ra, $a3, 0
	ld.d	$a6, $s2, %pc_lo12(ref2_line)
	st.d	$a0, $s1, %pc_lo12(ref1_line)
	blez	$s4, .LBB15_21
# %bb.13:                               # %.preheader.us.us.preheader
	ld.d	$a1, $s8, %pc_lo12(src_line)
	move	$a4, $zero
	.p2align	4, , 16
.LBB15_14:                              # %.preheader.us.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB15_15 Depth 2
	move	$a5, $s4
	move	$a2, $a0
	move	$a3, $a6
	.p2align	4, , 16
.LBB15_15:                              #   Parent Loop BB15_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.hu	$a0, $a2, 0
	ld.hu	$a6, $a3, 0
	ld.hu	$a7, $a1, 0
	add.d	$a0, $a0, $a6
	addi.d	$a0, $a0, 1
	srli.d	$a0, $a0, 1
	sub.d	$a0, $a7, $a0
	slli.d	$a0, $a0, 2
	ldx.w	$a0, $s3, $a0
	ld.hu	$a6, $a2, 2
	ld.hu	$a7, $a3, 2
	add.d	$a0, $a0, $s0
	ld.hu	$t0, $a1, 2
	addi.d	$a1, $a1, 4
	add.d	$a6, $a6, $a7
	addi.d	$a6, $a6, 1
	srli.d	$a6, $a6, 1
	sub.d	$a6, $t0, $a6
	slli.d	$a6, $a6, 2
	ldx.w	$a6, $s3, $a6
	addi.d	$a2, $a2, 4
	addi.d	$a3, $a3, 4
	addi.w	$a5, $a5, -1
	add.w	$s0, $a0, $a6
	bnez	$a5, .LBB15_15
# %bb.16:                               # %._crit_edge.us124.us
                                        #   in Loop: Header=BB15_14 Depth=1
	bge	$s0, $fp, .LBB15_30
# %bb.17:                               #   in Loop: Header=BB15_14 Depth=1
	add.d	$a6, $a3, $s6
	addi.w	$a4, $a4, 1
	add.d	$a0, $a2, $s6
	bne	$a4, $s7, .LBB15_14
# %bb.18:                               # %._crit_edge122.us.loopexit
	add.d	$a1, $a2, $s6
	add.d	$a2, $a3, $s6
	b	.LBB15_23
.LBB15_19:                              # %.loopexit74.split.us
	st.d	$a7, $s2, %pc_lo12(ref2_line)
	st.d	$a6, $s1, %pc_lo12(ref1_line)
	st.d	$a3, $s8, %pc_lo12(src_line)
	b	.LBB15_34
.LBB15_20:                              # %.split.preheader
	ld.d	$s7, $sp, 40                    # 8-byte Folded Reload
	ld.w	$a0, $s7, %pc_lo12(bipred2_access_method)
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	addi.d	$a1, $a1, 512
	st.d	$a1, $s8, %pc_lo12(src_line)
	slli.d	$a0, $a0, 3
	pcalau12i	$a1, %pc_hi20(get_crline)
	addi.d	$fp, $a1, %pc_lo12(get_crline)
	ldx.d	$a3, $fp, $a0
	move	$s3, $s2
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	ld.d	$s2, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a0, $s2, 8
	ld.d	$s6, $sp, 56                    # 8-byte Folded Reload
	move	$a1, $s6
	ld.d	$s5, $sp, 64                    # 8-byte Folded Reload
	move	$a2, $s5
	jirl	$ra, $a3, 0
	st.d	$s8, $sp, 24                    # 8-byte Folded Spill
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	ld.w	$a1, $a1, %pc_lo12(bipred1_access_method)
	slli.d	$a1, $a1, 3
	ldx.d	$a3, $fp, $a1
	ld.d	$s8, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a1, $s8, 8
	st.d	$a0, $s3, %pc_lo12(ref2_line)
	move	$a0, $a1
	ld.d	$s4, $sp, 72                    # 8-byte Folded Reload
	move	$a1, $s4
	ld.d	$s3, $sp, 80                    # 8-byte Folded Reload
	move	$a2, $s3
	jirl	$ra, $a3, 0
	ld.w	$a1, $s7, %pc_lo12(bipred2_access_method)
	slli.d	$a1, $a1, 3
	ldx.d	$a3, $fp, $a1
	ld.d	$a1, $s2, 16
	st.d	$a0, $s1, %pc_lo12(ref1_line)
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	addi.d	$a0, $a0, 1024
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	st.d	$a0, $a2, %pc_lo12(src_line)
	move	$a0, $a1
	move	$a1, $s6
	move	$a2, $s5
	jirl	$ra, $a3, 0
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	ld.w	$a1, $a1, %pc_lo12(bipred1_access_method)
	slli.d	$a1, $a1, 3
	ldx.d	$a3, $fp, $a1
	ld.d	$a1, $s8, 16
	ld.d	$a2, $sp, 8                     # 8-byte Folded Reload
	st.d	$a0, $a2, %pc_lo12(ref2_line)
	move	$a0, $a1
	move	$a1, $s4
	move	$a2, $s3
	jirl	$ra, $a3, 0
	b	.LBB15_33
.LBB15_21:                              # %.preheader.lr.ph.split.us140
	bge	$s0, $fp, .LBB15_34
# %bb.22:                               # %.preheader.us135.preheader
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	add.d	$a2, $a6, $a1
	add.d	$a1, $a0, $a1
.LBB15_23:                              # %._crit_edge122.us
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(bipred2_access_method)
	st.d	$a2, $s2, %pc_lo12(ref2_line)
	slli.d	$a0, $a0, 3
	ld.d	$s5, $sp, 24                    # 8-byte Folded Reload
	ldx.d	$a3, $s5, $a0
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 16
	st.d	$a1, $s1, %pc_lo12(ref1_line)
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	addi.d	$a1, $a1, 1024
	st.d	$a1, $s8, %pc_lo12(src_line)
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 64                    # 8-byte Folded Reload
	jirl	$ra, $a3, 0
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	ld.w	$a1, $a1, %pc_lo12(bipred1_access_method)
	slli.d	$a1, $a1, 3
	ldx.d	$a3, $s5, $a1
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a1, $a1, 16
	st.d	$a0, $s2, %pc_lo12(ref2_line)
	move	$a0, $a1
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	jirl	$ra, $a3, 0
	ld.d	$a6, $s2, %pc_lo12(ref2_line)
	st.d	$a0, $s1, %pc_lo12(ref1_line)
	blez	$s4, .LBB15_32
# %bb.24:                               # %.preheader.us.us.preheader.1
	ld.d	$a1, $s8, %pc_lo12(src_line)
	move	$a4, $zero
	.p2align	4, , 16
.LBB15_25:                              # %.preheader.us.us.1
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB15_26 Depth 2
	move	$a5, $s4
	move	$a2, $a0
	move	$a3, $a6
	.p2align	4, , 16
.LBB15_26:                              #   Parent Loop BB15_25 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.hu	$a0, $a2, 0
	ld.hu	$a6, $a3, 0
	ld.hu	$a7, $a1, 0
	add.d	$a0, $a0, $a6
	addi.d	$a0, $a0, 1
	srli.d	$a0, $a0, 1
	sub.d	$a0, $a7, $a0
	slli.d	$a0, $a0, 2
	ldx.w	$a0, $s3, $a0
	ld.hu	$a6, $a2, 2
	ld.hu	$a7, $a3, 2
	add.d	$a0, $a0, $s0
	ld.hu	$t0, $a1, 2
	addi.d	$a1, $a1, 4
	add.d	$a6, $a6, $a7
	addi.d	$a6, $a6, 1
	srli.d	$a6, $a6, 1
	sub.d	$a6, $t0, $a6
	slli.d	$a6, $a6, 2
	ldx.w	$a6, $s3, $a6
	addi.d	$a2, $a2, 4
	addi.d	$a3, $a3, 4
	addi.w	$a5, $a5, -1
	add.w	$s0, $a0, $a6
	bnez	$a5, .LBB15_26
# %bb.27:                               # %._crit_edge.us124.us.1
                                        #   in Loop: Header=BB15_25 Depth=1
	bge	$s0, $fp, .LBB15_30
# %bb.28:                               #   in Loop: Header=BB15_25 Depth=1
	add.d	$a6, $a3, $s6
	addi.w	$a4, $a4, 1
	add.d	$a0, $a2, $s6
	bne	$a4, $s7, .LBB15_25
# %bb.29:                               # %._crit_edge122.split.us.us.1
	add.d	$a0, $a3, $s6
	st.d	$a0, $s2, %pc_lo12(ref2_line)
	add.d	$a0, $a2, $s6
	st.d	$a0, $s1, %pc_lo12(ref1_line)
	b	.LBB15_31
.LBB15_30:                              # %.loopexit.split.us
	st.d	$a3, $s2, %pc_lo12(ref2_line)
	st.d	$a2, $s1, %pc_lo12(ref1_line)
.LBB15_31:                              # %.loopexit
	st.d	$a1, $s8, %pc_lo12(src_line)
	b	.LBB15_34
.LBB15_32:                              # %.preheader.us135.preheader.1
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	add.d	$a1, $a6, $a2
	add.d	$a0, $a0, $a2
	st.d	$a1, $s2, %pc_lo12(ref2_line)
.LBB15_33:                              # %.loopexit
	st.d	$a0, $s1, %pc_lo12(ref1_line)
.LBB15_34:                              # %.loopexit
	move	$a0, $s0
	ld.d	$s8, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 168                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 176                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 184                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 192
	ret
.Lfunc_end15:
	.size	computeBiPredSSE1, .Lfunc_end15-computeBiPredSSE1
                                        # -- End function
	.globl	computeBiPredSSE2               # -- Begin function computeBiPredSSE2
	.p2align	5
	.type	computeBiPredSSE2,@function
computeBiPredSSE2:                      # @computeBiPredSSE2
# %bb.0:
	addi.d	$sp, $sp, -208
	st.d	$ra, $sp, 200                   # 8-byte Folded Spill
	st.d	$fp, $sp, 192                   # 8-byte Folded Spill
	st.d	$s0, $sp, 184                   # 8-byte Folded Spill
	st.d	$s1, $sp, 176                   # 8-byte Folded Spill
	st.d	$s2, $sp, 168                   # 8-byte Folded Spill
	st.d	$s3, $sp, 160                   # 8-byte Folded Spill
	st.d	$s4, $sp, 152                   # 8-byte Folded Spill
	st.d	$s5, $sp, 144                   # 8-byte Folded Spill
	st.d	$s6, $sp, 136                   # 8-byte Folded Spill
	st.d	$s7, $sp, 128                   # 8-byte Folded Spill
	st.d	$s8, $sp, 120                   # 8-byte Folded Spill
	pcalau12i	$t0, %pc_hi20(luma_log_weight_denom)
	ld.w	$t0, $t0, %pc_lo12(luma_log_weight_denom)
	pcalau12i	$t1, %pc_hi20(wp_luma_round)
	ld.w	$t1, $t1, %pc_lo12(wp_luma_round)
	move	$s4, $a5
	move	$s8, $a4
	move	$fp, $a3
	move	$s6, $a2
	move	$s7, $a1
	addi.d	$s2, $t0, 1
	slli.d	$s3, $t1, 1
	pcalau12i	$a2, %pc_hi20(img_padded_size_x)
	pcalau12i	$a1, %pc_hi20(bipred2_access_method)
	st.d	$a1, $sp, 88                    # 8-byte Folded Spill
	ld.w	$a1, $a1, %pc_lo12(bipred2_access_method)
	ld.w	$s0, $a2, %pc_lo12(img_padded_size_x)
	pcalau12i	$a2, %pc_hi20(src_line)
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	st.d	$a2, $sp, 112                   # 8-byte Folded Spill
	st.d	$a0, $a2, %pc_lo12(src_line)
	slli.d	$a0, $a1, 3
	pcalau12i	$a1, %pc_hi20(get_line)
	addi.d	$s1, $a1, %pc_lo12(get_line)
	ldx.d	$a3, $s1, $a0
	pcalau12i	$a0, %pc_hi20(ref_pic2_sub)
	addi.d	$a0, $a0, %pc_lo12(ref_pic2_sub)
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	ld.d	$a0, $a0, 0
	st.d	$a7, $sp, 64                    # 8-byte Folded Spill
	move	$a1, $a7
	st.d	$a6, $sp, 72                    # 8-byte Folded Spill
	move	$a2, $a6
	jirl	$ra, $a3, 0
	pcalau12i	$a1, %pc_hi20(bipred1_access_method)
	st.d	$a1, $sp, 56                    # 8-byte Folded Spill
	ld.w	$a1, $a1, %pc_lo12(bipred1_access_method)
	slli.d	$a1, $a1, 3
	ldx.d	$a3, $s1, $a1
	pcalau12i	$s1, %pc_hi20(ref2_line)
	st.d	$a0, $s1, %pc_lo12(ref2_line)
	pcalau12i	$a0, %pc_hi20(ref_pic1_sub)
	addi.d	$s5, $a0, %pc_lo12(ref_pic1_sub)
	ld.d	$a0, $s5, 0
	st.d	$s4, $sp, 80                    # 8-byte Folded Spill
	move	$a1, $s4
	st.d	$s8, $sp, 104                   # 8-byte Folded Spill
	move	$a2, $s8
	jirl	$ra, $a3, 0
	pcalau12i	$t7, %pc_hi20(ref1_line)
	st.d	$a0, $t7, %pc_lo12(ref1_line)
	blez	$s7, .LBB16_8
# %bb.1:                                # %.preheader109.lr.ph
	ld.d	$t0, $s1, %pc_lo12(ref2_line)
	blez	$s6, .LBB16_9
# %bb.2:                                # %.preheader109.lr.ph.split.us
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	ld.d	$t1, $a1, %pc_lo12(src_line)
	pcalau12i	$a1, %pc_hi20(weight1)
	ld.h	$a1, $a1, %pc_lo12(weight1)
	pcalau12i	$a2, %pc_hi20(weight2)
	ld.h	$a2, $a2, %pc_lo12(weight2)
	pcalau12i	$a3, %pc_hi20(offsetBi)
	ld.h	$a3, $a3, %pc_lo12(offsetBi)
	pcalau12i	$a4, %got_pc_hi20(img)
	ld.d	$a4, $a4, %got_pc_lo12(img)
	ld.d	$a5, $a4, 0
	move	$s4, $zero
	move	$a4, $zero
	lu12i.w	$a6, 3
	ori	$a6, $a6, 3232
	ldx.w	$a6, $a5, $a6
	slli.d	$a5, $s0, 1
	slli.d	$a7, $s6, 1
	sub.d	$a5, $a5, $a7
	.p2align	4, , 16
.LBB16_3:                               # %.preheader109.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB16_4 Depth 2
	move	$a7, $zero
	move	$t2, $a0
	move	$t3, $t0
	.p2align	4, , 16
.LBB16_4:                               #   Parent Loop BB16_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a0, $t3
	move	$t0, $t2
	ld.hu	$t2, $t2, 0
	ld.hu	$t3, $t3, 0
	mul.d	$t2, $t2, $a1
	mul.d	$t3, $t3, $a2
	add.d	$t2, $t2, $s3
	add.d	$t2, $t2, $t3
	sra.w	$t2, $t2, $s2
	add.w	$t2, $t2, $a3
	srai.d	$t3, $t2, 63
	andn	$t2, $t2, $t3
	slt	$t3, $t2, $a6
	ld.hu	$t4, $t1, 0
	maskeqz	$t2, $t2, $t3
	masknez	$t3, $a6, $t3
	or	$t2, $t2, $t3
	sub.d	$t2, $t4, $t2
	ld.hu	$t3, $t0, 2
	ld.hu	$t4, $a0, 2
	mulw.d.w	$t2, $t2, $t2
	add.d	$t2, $t2, $s4
	mul.d	$t3, $t3, $a1
	mul.d	$t4, $t4, $a2
	add.d	$t3, $t3, $s3
	add.d	$t3, $t3, $t4
	sra.w	$t3, $t3, $s2
	add.w	$t3, $t3, $a3
	srai.d	$t4, $t3, 63
	andn	$t3, $t3, $t4
	slt	$t4, $t3, $a6
	ld.hu	$t5, $t1, 2
	maskeqz	$t3, $t3, $t4
	masknez	$t4, $a6, $t4
	or	$t3, $t3, $t4
	sub.d	$t3, $t5, $t3
	ld.hu	$t4, $t0, 4
	ld.hu	$t5, $a0, 4
	mul.d	$t3, $t3, $t3
	add.d	$t2, $t2, $t3
	mul.d	$t3, $t4, $a1
	mul.d	$t4, $t5, $a2
	add.d	$t3, $t3, $s3
	add.d	$t3, $t3, $t4
	sra.w	$t3, $t3, $s2
	add.w	$t3, $t3, $a3
	srai.d	$t4, $t3, 63
	andn	$t3, $t3, $t4
	slt	$t4, $t3, $a6
	ld.hu	$t5, $t1, 4
	maskeqz	$t3, $t3, $t4
	masknez	$t4, $a6, $t4
	or	$t3, $t3, $t4
	sub.d	$t3, $t5, $t3
	ld.hu	$t4, $t0, 6
	ld.hu	$t5, $a0, 6
	mul.d	$t3, $t3, $t3
	add.d	$t6, $t2, $t3
	mul.d	$t2, $t4, $a1
	mul.d	$t3, $t5, $a2
	add.d	$t2, $t2, $s3
	add.d	$t2, $t2, $t3
	sra.w	$t2, $t2, $s2
	add.w	$t2, $t2, $a3
	srai.d	$t3, $t2, 63
	andn	$t2, $t2, $t3
	slt	$t3, $t2, $a6
	maskeqz	$t2, $t2, $t3
	masknez	$t3, $a6, $t3
	or	$t4, $t2, $t3
	ld.hu	$t5, $t1, 6
	addi.d	$t2, $t0, 8
	addi.d	$t3, $a0, 8
	addi.d	$t1, $t1, 8
	sub.d	$a0, $t5, $t4
	mul.d	$a0, $a0, $a0
	addi.w	$a7, $a7, 4
	add.w	$s4, $t6, $a0
	blt	$a7, $s6, .LBB16_4
# %bb.5:                                # %._crit_edge.us
                                        #   in Loop: Header=BB16_3 Depth=1
	bge	$s4, $fp, .LBB16_19
# %bb.6:                                #   in Loop: Header=BB16_3 Depth=1
	add.d	$t0, $t3, $a5
	addi.w	$a4, $a4, 1
	add.d	$a0, $t2, $a5
	bne	$a4, $s7, .LBB16_3
# %bb.7:                                # %._crit_edge132.split.us
	add.d	$a0, $t3, $a5
	st.d	$a0, $s1, %pc_lo12(ref2_line)
	add.d	$a0, $t2, $a5
	st.d	$a0, $t7, %pc_lo12(ref1_line)
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	st.d	$t1, $a0, %pc_lo12(src_line)
	pcalau12i	$a0, %pc_hi20(ChromaMEEnable)
	ld.w	$a0, $a0, %pc_lo12(ChromaMEEnable)
	bnez	$a0, .LBB16_11
	b	.LBB16_33
.LBB16_8:
	move	$s4, $zero
	pcalau12i	$a0, %pc_hi20(ChromaMEEnable)
	ld.w	$a0, $a0, %pc_lo12(ChromaMEEnable)
	bnez	$a0, .LBB16_11
	b	.LBB16_33
.LBB16_9:                               # %.preheader109.lr.ph.split
	move	$s4, $zero
	blez	$fp, .LBB16_33
# %bb.10:                               # %.preheader109.preheader
	slli.d	$a1, $s0, 1
	slli.d	$a2, $s6, 1
	sub.d	$a1, $a1, $a2
	addi.w	$a3, $s7, -1
	mul.d	$a1, $a1, $a3
	alsl.d	$a1, $s0, $a1, 1
	sub.d	$a1, $a1, $a2
	add.d	$a2, $t0, $a1
	add.d	$a0, $a0, $a1
	st.d	$a2, $s1, %pc_lo12(ref2_line)
	st.d	$a0, $t7, %pc_lo12(ref1_line)
	pcalau12i	$a0, %pc_hi20(ChromaMEEnable)
	ld.w	$a0, $a0, %pc_lo12(ChromaMEEnable)
	beqz	$a0, .LBB16_33
.LBB16_11:
	st.d	$s1, $sp, 40                    # 8-byte Folded Spill
	move	$s1, $s5
	st.d	$t7, $sp, 32                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(shift_cr_y)
	ld.wu	$a0, $a0, %pc_lo12(shift_cr_y)
	sra.w	$s7, $s7, $a0
	blez	$s7, .LBB16_20
# %bb.12:                               # %.preheader.lr.ph.us.preheader
	pcalau12i	$a0, %pc_hi20(shift_cr_x)
	ld.wu	$a0, $a0, %pc_lo12(shift_cr_x)
	pcalau12i	$a1, %pc_hi20(img_cr_padded_size_x)
	ld.w	$a1, $a1, %pc_lo12(img_cr_padded_size_x)
	sra.w	$s0, $s6, $a0
	slli.d	$a0, $a1, 1
	slli.d	$a2, $s0, 1
	sub.d	$s6, $a0, $a2
	addi.w	$a0, $s7, -1
	mul.d	$a0, $s6, $a0
	alsl.d	$a0, $a1, $a0, 1
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	ld.w	$a1, $a1, %pc_lo12(bipred2_access_method)
	sub.d	$a0, $a0, $a2
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	addi.d	$a0, $a0, 512
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	st.d	$a0, $a2, %pc_lo12(src_line)
	slli.d	$a0, $a1, 3
	pcalau12i	$a1, %pc_hi20(get_crline)
	ld.d	$s5, $sp, 104                   # 8-byte Folded Reload
	addi.d	$s8, $a1, %pc_lo12(get_crline)
	ldx.d	$a3, $s8, $a0
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 8
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 72                    # 8-byte Folded Reload
	jirl	$ra, $a3, 0
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	ld.w	$a1, $a1, %pc_lo12(bipred1_access_method)
	slli.d	$a1, $a1, 3
	st.d	$s8, $sp, 24                    # 8-byte Folded Spill
	ldx.d	$a3, $s8, $a1
	ld.d	$a1, $s1, 8
	ld.d	$s8, $sp, 40                    # 8-byte Folded Reload
	st.d	$a0, $s8, %pc_lo12(ref2_line)
	move	$a0, $a1
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	move	$a2, $s5
	jirl	$ra, $a3, 0
	ld.d	$t2, $s8, %pc_lo12(ref2_line)
	ld.d	$t4, $sp, 32                    # 8-byte Folded Reload
	st.d	$a0, $t4, %pc_lo12(ref1_line)
	blez	$s0, .LBB16_21
# %bb.13:                               # %.preheader.lr.ph.split.us.us
	pcalau12i	$a1, %got_pc_hi20(img)
	ld.d	$a1, $a1, %got_pc_lo12(img)
	ld.d	$a4, $a1, 0
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(src_line)
	pcalau12i	$a2, %pc_hi20(weight1_cr)
	ld.h	$a2, $a2, %pc_lo12(weight1_cr)
	pcalau12i	$a3, %pc_hi20(weight2_cr)
	ld.h	$a3, $a3, %pc_lo12(weight2_cr)
	lu12i.w	$a5, 3
	ori	$a5, $a5, 3236
	ldx.w	$a4, $a4, $a5
	pcalau12i	$a5, %pc_hi20(offsetBi_cr)
	ld.h	$a5, $a5, %pc_lo12(offsetBi_cr)
	move	$a7, $zero
	move	$s5, $s1
	ld.d	$s1, $sp, 40                    # 8-byte Folded Reload
	ld.d	$t5, $sp, 88                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB16_14:                              # %.preheader.us.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB16_15 Depth 2
	move	$t1, $s0
	move	$a6, $a0
	move	$t0, $t2
	.p2align	4, , 16
.LBB16_15:                              #   Parent Loop BB16_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.hu	$a0, $a6, 0
	ld.hu	$t2, $t0, 0
	mul.d	$a0, $a0, $a2
	mul.d	$t2, $t2, $a3
	add.d	$a0, $a0, $s3
	add.d	$a0, $a0, $t2
	sra.w	$a0, $a0, $s2
	add.w	$a0, $a0, $a5
	srai.d	$t2, $a0, 63
	andn	$a0, $a0, $t2
	slt	$t2, $a0, $a4
	ld.hu	$t3, $a1, 0
	maskeqz	$a0, $a0, $t2
	masknez	$t2, $a4, $t2
	or	$a0, $a0, $t2
	sub.d	$a0, $t3, $a0
	ld.hu	$t2, $a6, 2
	ld.hu	$t3, $t0, 2
	mul.d	$a0, $a0, $a0
	add.d	$a0, $a0, $s4
	mul.d	$t2, $t2, $a2
	mul.d	$t3, $t3, $a3
	add.d	$t2, $t2, $s3
	add.d	$t2, $t2, $t3
	sra.w	$t2, $t2, $s2
	add.w	$t2, $t2, $a5
	srai.d	$t3, $t2, 63
	andn	$t2, $t2, $t3
	slt	$t3, $t2, $a4
	maskeqz	$t2, $t2, $t3
	masknez	$t3, $a4, $t3
	or	$t2, $t2, $t3
	ld.hu	$t3, $a1, 2
	addi.d	$a6, $a6, 4
	addi.d	$t0, $t0, 4
	addi.d	$a1, $a1, 4
	sub.d	$t2, $t3, $t2
	mul.d	$t2, $t2, $t2
	addi.w	$t1, $t1, -1
	add.w	$s4, $a0, $t2
	bnez	$t1, .LBB16_15
# %bb.16:                               # %._crit_edge.us160.us
                                        #   in Loop: Header=BB16_14 Depth=1
	bge	$s4, $fp, .LBB16_30
# %bb.17:                               #   in Loop: Header=BB16_14 Depth=1
	add.d	$t2, $t0, $s6
	addi.w	$a7, $a7, 1
	add.d	$a0, $a6, $s6
	bne	$a7, $s7, .LBB16_14
# %bb.18:                               # %._crit_edge158.us.loopexit
	add.d	$a1, $a6, $s6
	add.d	$a2, $t0, $s6
	b	.LBB16_23
.LBB16_19:                              # %.loopexit110.split.us
	st.d	$t3, $s1, %pc_lo12(ref2_line)
	st.d	$t2, $t7, %pc_lo12(ref1_line)
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	st.d	$t1, $a0, %pc_lo12(src_line)
	b	.LBB16_33
.LBB16_20:                              # %.split.preheader
	ld.d	$s0, $sp, 88                    # 8-byte Folded Reload
	ld.w	$a0, $s0, %pc_lo12(bipred2_access_method)
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	addi.d	$a1, $a1, 512
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	st.d	$a1, $a2, %pc_lo12(src_line)
	slli.d	$a0, $a0, 3
	pcalau12i	$a1, %pc_hi20(get_crline)
	addi.d	$fp, $a1, %pc_lo12(get_crline)
	ldx.d	$a3, $fp, $a0
	ld.d	$s7, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a0, $s7, 8
	ld.d	$s6, $sp, 64                    # 8-byte Folded Reload
	move	$a1, $s6
	ld.d	$s3, $sp, 72                    # 8-byte Folded Reload
	move	$a2, $s3
	jirl	$ra, $a3, 0
	ld.d	$s8, $sp, 56                    # 8-byte Folded Reload
	ld.w	$a1, $s8, %pc_lo12(bipred1_access_method)
	slli.d	$a1, $a1, 3
	ldx.d	$a3, $fp, $a1
	ld.d	$a1, $s1, 8
	ld.d	$s5, $sp, 40                    # 8-byte Folded Reload
	st.d	$a0, $s5, %pc_lo12(ref2_line)
	move	$a0, $a1
	ld.d	$s2, $sp, 80                    # 8-byte Folded Reload
	move	$a1, $s2
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	jirl	$ra, $a3, 0
	ld.w	$a1, $s0, %pc_lo12(bipred2_access_method)
	slli.d	$a1, $a1, 3
	ldx.d	$a3, $fp, $a1
	ld.d	$a1, $s7, 16
	ld.d	$s0, $sp, 32                    # 8-byte Folded Reload
	st.d	$a0, $s0, %pc_lo12(ref1_line)
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	addi.d	$a0, $a0, 1024
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	st.d	$a0, $a2, %pc_lo12(src_line)
	move	$a0, $a1
	move	$a1, $s6
	move	$a2, $s3
	jirl	$ra, $a3, 0
	ld.w	$a1, $s8, %pc_lo12(bipred1_access_method)
	slli.d	$a1, $a1, 3
	ldx.d	$a3, $fp, $a1
	ld.d	$a1, $s1, 16
	st.d	$a0, $s5, %pc_lo12(ref2_line)
	move	$a0, $a1
	move	$a1, $s2
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	jirl	$ra, $a3, 0
	st.d	$a0, $s0, %pc_lo12(ref1_line)
	b	.LBB16_33
.LBB16_21:                              # %.preheader.lr.ph.split.us176
	bge	$s4, $fp, .LBB16_33
# %bb.22:                               # %.preheader.us171.preheader
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	add.d	$a2, $t2, $a1
	add.d	$a1, $a0, $a1
	move	$s5, $s1
	ld.d	$s1, $sp, 40                    # 8-byte Folded Reload
	ld.d	$t5, $sp, 88                    # 8-byte Folded Reload
.LBB16_23:                              # %._crit_edge158.us
	ld.w	$a0, $t5, %pc_lo12(bipred2_access_method)
	st.d	$a2, $s1, %pc_lo12(ref2_line)
	slli.d	$a0, $a0, 3
	ld.d	$s8, $sp, 24                    # 8-byte Folded Reload
	ldx.d	$a3, $s8, $a0
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 16
	st.d	$a1, $t4, %pc_lo12(ref1_line)
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	addi.d	$a1, $a1, 1024
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	st.d	$a1, $a2, %pc_lo12(src_line)
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 72                    # 8-byte Folded Reload
	jirl	$ra, $a3, 0
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	ld.w	$a1, $a1, %pc_lo12(bipred1_access_method)
	slli.d	$a1, $a1, 3
	ldx.d	$a3, $s8, $a1
	ld.d	$a1, $s5, 16
	st.d	$a0, $s1, %pc_lo12(ref2_line)
	move	$a0, $a1
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	jirl	$ra, $a3, 0
	ld.d	$t4, $sp, 32                    # 8-byte Folded Reload
	ld.d	$t2, $s1, %pc_lo12(ref2_line)
	st.d	$a0, $t4, %pc_lo12(ref1_line)
	blez	$s0, .LBB16_32
# %bb.24:                               # %.preheader.lr.ph.split.us.us.1
	pcalau12i	$a1, %got_pc_hi20(img)
	ld.d	$a1, $a1, %got_pc_lo12(img)
	ld.d	$a4, $a1, 0
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(src_line)
	pcalau12i	$a2, %pc_hi20(weight1_cr+2)
	ld.h	$a2, $a2, %pc_lo12(weight1_cr+2)
	pcalau12i	$a3, %pc_hi20(weight2_cr+2)
	ld.h	$a3, $a3, %pc_lo12(weight2_cr+2)
	lu12i.w	$a5, 3
	ori	$a5, $a5, 3236
	ldx.w	$a4, $a4, $a5
	pcalau12i	$a5, %pc_hi20(offsetBi_cr+2)
	ld.h	$a5, $a5, %pc_lo12(offsetBi_cr+2)
	move	$a7, $zero
	.p2align	4, , 16
.LBB16_25:                              # %.preheader.us.us.1
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB16_26 Depth 2
	move	$t1, $s0
	move	$a6, $a0
	move	$t0, $t2
	.p2align	4, , 16
.LBB16_26:                              #   Parent Loop BB16_25 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.hu	$a0, $a6, 0
	ld.hu	$t2, $t0, 0
	mul.d	$a0, $a0, $a2
	mul.d	$t2, $t2, $a3
	add.d	$a0, $a0, $s3
	add.d	$a0, $a0, $t2
	sra.w	$a0, $a0, $s2
	add.w	$a0, $a0, $a5
	srai.d	$t2, $a0, 63
	andn	$a0, $a0, $t2
	slt	$t2, $a0, $a4
	ld.hu	$t3, $a1, 0
	maskeqz	$a0, $a0, $t2
	masknez	$t2, $a4, $t2
	or	$a0, $a0, $t2
	sub.d	$a0, $t3, $a0
	ld.hu	$t2, $a6, 2
	ld.hu	$t3, $t0, 2
	mul.d	$a0, $a0, $a0
	add.d	$a0, $a0, $s4
	mul.d	$t2, $t2, $a2
	mul.d	$t3, $t3, $a3
	add.d	$t2, $t2, $s3
	add.d	$t2, $t2, $t3
	sra.w	$t2, $t2, $s2
	add.w	$t2, $t2, $a5
	srai.d	$t3, $t2, 63
	andn	$t2, $t2, $t3
	slt	$t3, $t2, $a4
	maskeqz	$t2, $t2, $t3
	masknez	$t3, $a4, $t3
	or	$t2, $t2, $t3
	ld.hu	$t3, $a1, 2
	addi.d	$a6, $a6, 4
	addi.d	$t0, $t0, 4
	addi.d	$a1, $a1, 4
	sub.d	$t2, $t3, $t2
	mul.d	$t2, $t2, $t2
	addi.w	$t1, $t1, -1
	add.w	$s4, $a0, $t2
	bnez	$t1, .LBB16_26
# %bb.27:                               # %._crit_edge.us160.us.1
                                        #   in Loop: Header=BB16_25 Depth=1
	bge	$s4, $fp, .LBB16_30
# %bb.28:                               #   in Loop: Header=BB16_25 Depth=1
	add.d	$t2, $t0, $s6
	addi.w	$a7, $a7, 1
	add.d	$a0, $a6, $s6
	bne	$a7, $s7, .LBB16_25
# %bb.29:                               # %._crit_edge158.split.us.us.1
	add.d	$a0, $t0, $s6
	st.d	$a0, $s1, %pc_lo12(ref2_line)
	add.d	$a0, $a6, $s6
	st.d	$a0, $t4, %pc_lo12(ref1_line)
	b	.LBB16_31
.LBB16_30:                              # %.loopexit.split.us
	st.d	$t0, $s1, %pc_lo12(ref2_line)
	st.d	$a6, $t4, %pc_lo12(ref1_line)
.LBB16_31:                              # %.loopexit
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	st.d	$a1, $a0, %pc_lo12(src_line)
	b	.LBB16_33
.LBB16_32:                              # %.preheader.us171.preheader.1
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	add.d	$a1, $t2, $a2
	add.d	$a0, $a0, $a2
	st.d	$a1, $s1, %pc_lo12(ref2_line)
	st.d	$a0, $t4, %pc_lo12(ref1_line)
.LBB16_33:                              # %.loopexit
	move	$a0, $s4
	ld.d	$s8, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 192                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 200                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 208
	ret
.Lfunc_end16:
	.size	computeBiPredSSE2, .Lfunc_end16-computeBiPredSSE2
                                        # -- End function
	.type	m2,@object                      # @m2
	.local	m2
	.comm	m2,256,16
	.type	img_padded_size_x,@object       # @img_padded_size_x
	.comm	img_padded_size_x,4,4
	.type	src_line,@object                # @src_line
	.local	src_line
	.comm	src_line,8,8
	.type	get_line,@object                # @get_line
	.comm	get_line,16,8
	.type	ref_access_method,@object       # @ref_access_method
	.comm	ref_access_method,4,4
	.type	ref_pic_sub,@object             # @ref_pic_sub
	.comm	ref_pic_sub,24,8
	.type	ref_line,@object                # @ref_line
	.local	ref_line
	.comm	ref_line,8,8
	.type	ChromaMEEnable,@object          # @ChromaMEEnable
	.comm	ChromaMEEnable,4,4
	.type	shift_cr_x,@object              # @shift_cr_x
	.comm	shift_cr_x,4,4
	.type	shift_cr_y,@object              # @shift_cr_y
	.comm	shift_cr_y,4,4
	.type	img_cr_padded_size_x,@object    # @img_cr_padded_size_x
	.comm	img_cr_padded_size_x,4,4
	.type	get_crline,@object              # @get_crline
	.comm	get_crline,16,8
	.type	weight_luma,@object             # @weight_luma
	.comm	weight_luma,4,4
	.type	wp_luma_round,@object           # @wp_luma_round
	.comm	wp_luma_round,4,4
	.type	luma_log_weight_denom,@object   # @luma_log_weight_denom
	.comm	luma_log_weight_denom,4,4
	.type	offset_luma,@object             # @offset_luma
	.comm	offset_luma,4,4
	.type	weight_cr,@object               # @weight_cr
	.comm	weight_cr,8,4
	.type	wp_chroma_round,@object         # @wp_chroma_round
	.comm	wp_chroma_round,4,4
	.type	chroma_log_weight_denom,@object # @chroma_log_weight_denom
	.comm	chroma_log_weight_denom,4,4
	.type	offset_cr,@object               # @offset_cr
	.comm	offset_cr,8,4
	.type	bipred2_access_method,@object   # @bipred2_access_method
	.comm	bipred2_access_method,4,4
	.type	ref_pic2_sub,@object            # @ref_pic2_sub
	.comm	ref_pic2_sub,24,8
	.type	ref2_line,@object               # @ref2_line
	.local	ref2_line
	.comm	ref2_line,8,8
	.type	bipred1_access_method,@object   # @bipred1_access_method
	.comm	bipred1_access_method,4,4
	.type	ref_pic1_sub,@object            # @ref_pic1_sub
	.comm	ref_pic1_sub,24,8
	.type	ref1_line,@object               # @ref1_line
	.local	ref1_line
	.comm	ref1_line,8,8
	.type	weight1,@object                 # @weight1
	.comm	weight1,2,2
	.type	weight2,@object                 # @weight2
	.comm	weight2,2,2
	.type	offsetBi,@object                # @offsetBi
	.comm	offsetBi,2,2
	.type	weight1_cr,@object              # @weight1_cr
	.comm	weight1_cr,4,2
	.type	weight2_cr,@object              # @weight2_cr
	.comm	weight2_cr,4,2
	.type	offsetBi_cr,@object             # @offsetBi_cr
	.comm	offsetBi_cr,4,2
	.type	test8x8transform,@object        # @test8x8transform
	.comm	test8x8transform,4,4
	.type	diff,@object                    # @diff
	.local	diff
	.comm	diff,1024,16
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
	.type	start_me_refinement_hp,@object  # @start_me_refinement_hp
	.comm	start_me_refinement_hp,4,4
	.type	start_me_refinement_qp,@object  # @start_me_refinement_qp
	.comm	start_me_refinement_qp,4,4
	.type	getNeighbour,@object            # @getNeighbour
	.comm	getNeighbour,8,8
	.type	get_mb_block_pos,@object        # @get_mb_block_pos
	.comm	get_mb_block_pos,8,8
	.type	height_pad,@object              # @height_pad
	.comm	height_pad,4,4
	.type	width_pad,@object               # @width_pad
	.comm	width_pad,4,4
	.type	height_pad_cr,@object           # @height_pad_cr
	.comm	height_pad_cr,4,4
	.type	width_pad_cr,@object            # @width_pad_cr
	.comm	width_pad_cr,4,4
	.type	get_line1,@object               # @get_line1
	.comm	get_line1,16,8
	.type	get_line2,@object               # @get_line2
	.comm	get_line2,16,8
	.type	get_crline1,@object             # @get_crline1
	.comm	get_crline1,16,8
	.type	get_crline2,@object             # @get_crline2
	.comm	get_crline2,16,8
	.type	img_width,@object               # @img_width
	.comm	img_width,2,2
	.type	img_height,@object              # @img_height
	.comm	img_height,2,2
	.type	computeUniPred,@object          # @computeUniPred
	.comm	computeUniPred,48,8
	.type	computeBiPred,@object           # @computeBiPred
	.comm	computeBiPred,8,8
	.type	computeBiPred1,@object          # @computeBiPred1
	.comm	computeBiPred1,24,8
	.type	computeBiPred2,@object          # @computeBiPred2
	.comm	computeBiPred2,24,8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym diff
