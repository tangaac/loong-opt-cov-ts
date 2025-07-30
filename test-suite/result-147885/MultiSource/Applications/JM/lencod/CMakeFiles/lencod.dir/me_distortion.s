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
	sub.d	$a1, $a1, $a0
	add.w	$a3, $a4, $t5
	sub.w	$a4, $a4, $t5
	add.w	$t5, $a5, $a6
	sub.w	$a5, $a5, $a6
	add.w	$a6, $a7, $t0
	sub.w	$a7, $a7, $t0
	add.w	$t0, $t7, $t6
	sub.w	$t6, $t7, $t6
	add.w	$t7, $t8, $fp
	sub.w	$t8, $t8, $fp
	pcalau12i	$a0, %got_pc_hi20(byte_abs)
	ld.d	$a0, $a0, %got_pc_lo12(byte_abs)
	add.w	$fp, $t1, $t2
	sub.w	$t1, $t1, $t2
	add.w	$t2, $t3, $t4
	ld.d	$a0, $a0, 0
	sub.w	$t3, $t3, $t4
	add.w	$t4, $a1, $a2
	slli.d	$a3, $a3, 2
	ldx.w	$a3, $a0, $a3
	slli.d	$a4, $a4, 2
	ldx.w	$a4, $a0, $a4
	slli.d	$t5, $t5, 2
	ldx.w	$t5, $a0, $t5
	slli.d	$a5, $a5, 2
	ldx.w	$a5, $a0, $a5
	sub.w	$a1, $a1, $a2
	add.d	$a2, $a4, $a3
	add.d	$a2, $t5, $a2
	add.d	$a2, $a5, $a2
	slli.d	$a3, $a6, 2
	ldx.w	$a3, $a0, $a3
	slli.d	$a4, $a7, 2
	ldx.w	$a4, $a0, $a4
	slli.d	$a5, $t0, 2
	ldx.w	$a5, $a0, $a5
	slli.d	$a6, $t6, 2
	ldx.w	$a6, $a0, $a6
	add.d	$a2, $a3, $a2
	add.d	$a2, $a4, $a2
	add.d	$a2, $a5, $a2
	add.d	$a2, $a6, $a2
	slli.d	$a3, $t7, 2
	ldx.w	$a3, $a0, $a3
	slli.d	$a4, $t8, 2
	ldx.w	$a4, $a0, $a4
	slli.d	$a5, $fp, 2
	ldx.w	$a5, $a0, $a5
	slli.d	$a6, $t1, 2
	ldx.w	$a6, $a0, $a6
	add.d	$a2, $a3, $a2
	add.d	$a2, $a4, $a2
	add.d	$a2, $a5, $a2
	add.d	$a2, $a6, $a2
	slli.d	$a3, $t2, 2
	ldx.w	$a3, $a0, $a3
	slli.d	$a4, $t3, 2
	ldx.w	$a4, $a0, $a4
	slli.d	$a5, $t4, 2
	ldx.w	$a5, $a0, $a5
	slli.d	$a1, $a1, 2
	ldx.w	$a0, $a0, $a1
	add.d	$a1, $a3, $a2
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
	move	$a2, $zero
	vrepli.b	$vr0, 0
	ori	$a3, $zero, 256
	vori.b	$vr1, $vr0, 0
	.p2align	4, , 16
.LBB2_3:                                # %vector.body32
                                        # =>This Inner Loop Header: Depth=1
	vldx	$vr2, $a0, $a2
	add.d	$a4, $a0, $a2
	vld	$vr3, $a4, 16
	vshuf4i.w	$vr4, $vr2, 50
	vslli.d	$vr4, $vr4, 32
	vsrai.d	$vr4, $vr4, 32
	vshuf4i.w	$vr2, $vr2, 16
	vslli.d	$vr2, $vr2, 32
	vsrai.d	$vr2, $vr2, 32
	vshuf4i.w	$vr5, $vr3, 50
	vslli.d	$vr5, $vr5, 32
	vsrai.d	$vr5, $vr5, 32
	vshuf4i.w	$vr3, $vr3, 16
	vslli.d	$vr3, $vr3, 32
	vsrai.d	$vr3, $vr3, 32
	vpickve2gr.d	$a4, $vr2, 0
	slli.d	$a4, $a4, 2
	vpickve2gr.d	$a5, $vr2, 1
	slli.d	$a5, $a5, 2
	vpickve2gr.d	$a6, $vr4, 0
	slli.d	$a6, $a6, 2
	vpickve2gr.d	$a7, $vr4, 1
	slli.d	$a7, $a7, 2
	vpickve2gr.d	$t0, $vr3, 0
	slli.d	$t0, $t0, 2
	vpickve2gr.d	$t1, $vr3, 1
	slli.d	$t1, $t1, 2
	vpickve2gr.d	$t2, $vr5, 0
	slli.d	$t2, $t2, 2
	vpickve2gr.d	$t3, $vr5, 1
	slli.d	$t3, $t3, 2
	ldx.w	$a4, $a1, $a4
	ldx.w	$a5, $a1, $a5
	ldx.w	$a6, $a1, $a6
	ldx.w	$a7, $a1, $a7
	vinsgr2vr.w	$vr2, $a4, 0
	vinsgr2vr.w	$vr2, $a5, 1
	vinsgr2vr.w	$vr2, $a6, 2
	vinsgr2vr.w	$vr2, $a7, 3
	ldx.w	$a4, $a1, $t0
	ldx.w	$a5, $a1, $t1
	ldx.w	$a6, $a1, $t2
	ldx.w	$a7, $a1, $t3
	vinsgr2vr.w	$vr3, $a4, 0
	vinsgr2vr.w	$vr3, $a5, 1
	vinsgr2vr.w	$vr3, $a6, 2
	vinsgr2vr.w	$vr3, $a7, 3
	vadd.w	$vr0, $vr2, $vr0
	addi.d	$a2, $a2, 32
	vadd.w	$vr1, $vr3, $vr1
	bne	$a2, $a3, .LBB2_3
	b	.LBB2_6
.LBB2_4:                                # %vector.ph
	pcalau12i	$a1, %got_pc_hi20(img)
	ld.d	$a1, $a1, %got_pc_lo12(img)
	ld.d	$a1, $a1, 0
	ldptr.d	$a1, $a1, 14232
	move	$a2, $zero
	vrepli.b	$vr0, 0
	ori	$a3, $zero, 256
	vori.b	$vr1, $vr0, 0
	.p2align	4, , 16
.LBB2_5:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vldx	$vr2, $a0, $a2
	add.d	$a4, $a0, $a2
	vld	$vr3, $a4, 16
	vshuf4i.w	$vr4, $vr2, 50
	vslli.d	$vr4, $vr4, 32
	vsrai.d	$vr4, $vr4, 32
	vshuf4i.w	$vr2, $vr2, 16
	vslli.d	$vr2, $vr2, 32
	vsrai.d	$vr2, $vr2, 32
	vshuf4i.w	$vr5, $vr3, 50
	vslli.d	$vr5, $vr5, 32
	vsrai.d	$vr5, $vr5, 32
	vshuf4i.w	$vr3, $vr3, 16
	vslli.d	$vr3, $vr3, 32
	vsrai.d	$vr3, $vr3, 32
	vpickve2gr.d	$a4, $vr2, 0
	slli.d	$a4, $a4, 2
	vpickve2gr.d	$a5, $vr2, 1
	slli.d	$a5, $a5, 2
	vpickve2gr.d	$a6, $vr4, 0
	slli.d	$a6, $a6, 2
	vpickve2gr.d	$a7, $vr4, 1
	slli.d	$a7, $a7, 2
	vpickve2gr.d	$t0, $vr3, 0
	slli.d	$t0, $t0, 2
	vpickve2gr.d	$t1, $vr3, 1
	slli.d	$t1, $t1, 2
	vpickve2gr.d	$t2, $vr5, 0
	slli.d	$t2, $t2, 2
	vpickve2gr.d	$t3, $vr5, 1
	slli.d	$t3, $t3, 2
	ldx.w	$a4, $a1, $a4
	ldx.w	$a5, $a1, $a5
	ldx.w	$a6, $a1, $a6
	ldx.w	$a7, $a1, $a7
	vinsgr2vr.w	$vr2, $a4, 0
	vinsgr2vr.w	$vr2, $a5, 1
	vinsgr2vr.w	$vr2, $a6, 2
	vinsgr2vr.w	$vr2, $a7, 3
	ldx.w	$a4, $a1, $t0
	ldx.w	$a5, $a1, $t1
	ldx.w	$a6, $a1, $t2
	ldx.w	$a7, $a1, $t3
	vinsgr2vr.w	$vr3, $a4, 0
	vinsgr2vr.w	$vr3, $a5, 1
	vinsgr2vr.w	$vr3, $a6, 2
	vinsgr2vr.w	$vr3, $a7, 3
	vadd.w	$vr0, $vr2, $vr0
	addi.d	$a2, $a2, 32
	vadd.w	$vr1, $vr3, $vr1
	bne	$a2, $a3, .LBB2_5
.LBB2_6:                                # %middle.block39
	vadd.w	$vr0, $vr1, $vr0
	vshuf4i.w	$vr1, $vr0, 14
	vadd.w	$vr0, $vr0, $vr1
	vreplvei.w	$vr1, $vr0, 1
	vadd.w	$vr0, $vr0, $vr1
	vpickve2gr.w	$a0, $vr0, 0
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
	move	$a1, $zero
	addi.d	$a2, $a0, 28
	pcalau12i	$a0, %pc_hi20(m2)
	addi.d	$a0, $a0, %pc_lo12(m2)
	ori	$a3, $zero, 256
	.p2align	4, , 16
.LBB3_1:                                # =>This Inner Loop Header: Depth=1
	add.d	$a4, $a2, $a1
	ld.w	$a5, $a4, -28
	ld.w	$a6, $a4, -12
	add.d	$a7, $a6, $a5
	ld.w	$t0, $a4, -24
	ld.w	$t1, $a4, -8
	ld.w	$t2, $a4, -20
	ld.w	$t3, $a4, -4
	ld.w	$a4, $a4, -16
	ldx.w	$t4, $a2, $a1
	add.d	$t5, $a0, $a1
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
	stx.w	$a6, $a0, $a1
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
	addi.d	$a1, $a1, 32
	st.w	$a4, $t5, 28
	bne	$a1, $a3, .LBB3_1
# %bb.2:                                # %vector.body
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
	ld.w	$a1, $a0, 0
	ld.w	$a2, $a0, 32
	ld.w	$a3, $a0, 64
	ld.w	$a4, $a0, 96
	vinsgr2vr.w	$vr0, $a1, 0
	vinsgr2vr.w	$vr0, $a2, 1
	vinsgr2vr.w	$vr0, $a3, 2
	vinsgr2vr.w	$vr0, $a4, 3
	vneg.w	$vr1, $vr0
	vmax.w	$vr0, $vr0, $vr1
	ld.w	$a1, $a0, 4
	ld.w	$a2, $a0, 36
	ld.w	$a3, $a0, 68
	ld.w	$a4, $a0, 100
	vinsgr2vr.w	$vr1, $a1, 0
	vinsgr2vr.w	$vr1, $a2, 1
	vinsgr2vr.w	$vr1, $a3, 2
	vinsgr2vr.w	$vr1, $a4, 3
	vneg.w	$vr2, $vr1
	vmax.w	$vr1, $vr1, $vr2
	vadd.w	$vr0, $vr1, $vr0
	ld.w	$a1, $a0, 8
	ld.w	$a2, $a0, 40
	ld.w	$a3, $a0, 72
	ld.w	$a4, $a0, 104
	vinsgr2vr.w	$vr1, $a1, 0
	vinsgr2vr.w	$vr1, $a2, 1
	vinsgr2vr.w	$vr1, $a3, 2
	vinsgr2vr.w	$vr1, $a4, 3
	vneg.w	$vr2, $vr1
	vmax.w	$vr1, $vr1, $vr2
	vadd.w	$vr0, $vr1, $vr0
	ld.w	$a1, $a0, 12
	ld.w	$a2, $a0, 44
	ld.w	$a3, $a0, 76
	ld.w	$a4, $a0, 108
	vinsgr2vr.w	$vr1, $a1, 0
	vinsgr2vr.w	$vr1, $a2, 1
	vinsgr2vr.w	$vr1, $a3, 2
	vinsgr2vr.w	$vr1, $a4, 3
	vneg.w	$vr2, $vr1
	vmax.w	$vr1, $vr1, $vr2
	vadd.w	$vr0, $vr1, $vr0
	ld.w	$a1, $a0, 16
	ld.w	$a2, $a0, 48
	ld.w	$a3, $a0, 80
	ld.w	$a4, $a0, 112
	vinsgr2vr.w	$vr1, $a1, 0
	vinsgr2vr.w	$vr1, $a2, 1
	vinsgr2vr.w	$vr1, $a3, 2
	vinsgr2vr.w	$vr1, $a4, 3
	vneg.w	$vr2, $vr1
	vmax.w	$vr1, $vr1, $vr2
	vadd.w	$vr0, $vr1, $vr0
	ld.w	$a1, $a0, 20
	ld.w	$a2, $a0, 52
	ld.w	$a3, $a0, 84
	ld.w	$a4, $a0, 116
	vinsgr2vr.w	$vr1, $a1, 0
	vinsgr2vr.w	$vr1, $a2, 1
	vinsgr2vr.w	$vr1, $a3, 2
	vinsgr2vr.w	$vr1, $a4, 3
	vneg.w	$vr2, $vr1
	vmax.w	$vr1, $vr1, $vr2
	vadd.w	$vr0, $vr1, $vr0
	ld.w	$a1, $a0, 24
	ld.w	$a2, $a0, 56
	ld.w	$a3, $a0, 88
	ld.w	$a4, $a0, 120
	vinsgr2vr.w	$vr1, $a1, 0
	vinsgr2vr.w	$vr1, $a2, 1
	vinsgr2vr.w	$vr1, $a3, 2
	vinsgr2vr.w	$vr1, $a4, 3
	vneg.w	$vr2, $vr1
	vmax.w	$vr1, $vr1, $vr2
	vadd.w	$vr0, $vr1, $vr0
	ld.w	$a1, $a0, 28
	ld.w	$a2, $a0, 60
	ld.w	$a3, $a0, 92
	ld.w	$a4, $a0, 124
	vinsgr2vr.w	$vr1, $a1, 0
	vinsgr2vr.w	$vr1, $a2, 1
	vinsgr2vr.w	$vr1, $a3, 2
	vinsgr2vr.w	$vr1, $a4, 3
	vneg.w	$vr2, $vr1
	vmax.w	$vr1, $vr1, $vr2
	vadd.w	$vr0, $vr1, $vr0
	ld.w	$a1, $a0, 128
	ld.w	$a2, $a0, 160
	ld.w	$a3, $a0, 192
	ld.w	$a4, $a0, 224
	vinsgr2vr.w	$vr1, $a1, 0
	vinsgr2vr.w	$vr1, $a2, 1
	vinsgr2vr.w	$vr1, $a3, 2
	vinsgr2vr.w	$vr1, $a4, 3
	vneg.w	$vr2, $vr1
	vmax.w	$vr1, $vr1, $vr2
	vadd.w	$vr0, $vr1, $vr0
	ld.w	$a1, $a0, 132
	ld.w	$a2, $a0, 164
	ld.w	$a3, $a0, 196
	ld.w	$a4, $a0, 228
	vinsgr2vr.w	$vr1, $a1, 0
	vinsgr2vr.w	$vr1, $a2, 1
	vinsgr2vr.w	$vr1, $a3, 2
	vinsgr2vr.w	$vr1, $a4, 3
	vneg.w	$vr2, $vr1
	vmax.w	$vr1, $vr1, $vr2
	vadd.w	$vr0, $vr1, $vr0
	ld.w	$a1, $a0, 136
	ld.w	$a2, $a0, 168
	ld.w	$a3, $a0, 200
	ld.w	$a4, $a0, 232
	vinsgr2vr.w	$vr1, $a1, 0
	vinsgr2vr.w	$vr1, $a2, 1
	vinsgr2vr.w	$vr1, $a3, 2
	vinsgr2vr.w	$vr1, $a4, 3
	vneg.w	$vr2, $vr1
	vmax.w	$vr1, $vr1, $vr2
	vadd.w	$vr0, $vr1, $vr0
	ld.w	$a1, $a0, 140
	ld.w	$a2, $a0, 172
	ld.w	$a3, $a0, 204
	ld.w	$a4, $a0, 236
	vinsgr2vr.w	$vr1, $a1, 0
	vinsgr2vr.w	$vr1, $a2, 1
	vinsgr2vr.w	$vr1, $a3, 2
	vinsgr2vr.w	$vr1, $a4, 3
	vneg.w	$vr2, $vr1
	vmax.w	$vr1, $vr1, $vr2
	vadd.w	$vr0, $vr1, $vr0
	ld.w	$a1, $a0, 144
	ld.w	$a2, $a0, 176
	ld.w	$a3, $a0, 208
	ld.w	$a4, $a0, 240
	vinsgr2vr.w	$vr1, $a1, 0
	vinsgr2vr.w	$vr1, $a2, 1
	vinsgr2vr.w	$vr1, $a3, 2
	vinsgr2vr.w	$vr1, $a4, 3
	vneg.w	$vr2, $vr1
	vmax.w	$vr1, $vr1, $vr2
	vadd.w	$vr0, $vr1, $vr0
	ld.w	$a1, $a0, 148
	ld.w	$a2, $a0, 180
	ld.w	$a3, $a0, 212
	ld.w	$a4, $a0, 244
	vinsgr2vr.w	$vr1, $a1, 0
	vinsgr2vr.w	$vr1, $a2, 1
	vinsgr2vr.w	$vr1, $a3, 2
	vinsgr2vr.w	$vr1, $a4, 3
	vneg.w	$vr2, $vr1
	vmax.w	$vr1, $vr1, $vr2
	vadd.w	$vr0, $vr1, $vr0
	ld.w	$a1, $a0, 152
	ld.w	$a2, $a0, 184
	ld.w	$a3, $a0, 216
	ld.w	$a4, $a0, 248
	vinsgr2vr.w	$vr1, $a1, 0
	vinsgr2vr.w	$vr1, $a2, 1
	vinsgr2vr.w	$vr1, $a3, 2
	vinsgr2vr.w	$vr1, $a4, 3
	vneg.w	$vr2, $vr1
	vmax.w	$vr1, $vr1, $vr2
	vadd.w	$vr0, $vr1, $vr0
	ld.w	$a1, $a0, 156
	ld.w	$a2, $a0, 188
	ld.w	$a3, $a0, 220
	ld.w	$a0, $a0, 252
	vinsgr2vr.w	$vr1, $a1, 0
	vinsgr2vr.w	$vr1, $a2, 1
	vinsgr2vr.w	$vr1, $a3, 2
	vinsgr2vr.w	$vr1, $a0, 3
	vneg.w	$vr2, $vr1
	vmax.w	$vr1, $vr1, $vr2
	vadd.w	$vr0, $vr1, $vr0
	vshuf4i.w	$vr1, $vr0, 14
	vadd.w	$vr0, $vr0, $vr1
	vreplvei.w	$vr1, $vr0, 1
	vadd.w	$vr0, $vr0, $vr1
	vpickve2gr.w	$a0, $vr0, 0
	addi.d	$a0, $a0, 2
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
	pcalau12i	$s6, %pc_hi20(ref_access_method)
	ld.w	$a6, $s6, %pc_lo12(ref_access_method)
	pcalau12i	$a7, %pc_hi20(img_padded_size_x)
	ld.w	$s1, $a7, %pc_lo12(img_padded_size_x)
	slli.d	$a6, $a6, 3
	pcalau12i	$a7, %pc_hi20(get_line)
	addi.d	$a7, $a7, %pc_lo12(get_line)
	ldx.d	$a7, $a7, $a6
	pcalau12i	$a6, %pc_hi20(ref_pic_sub)
	addi.d	$a6, $a6, %pc_lo12(ref_pic_sub)
	st.d	$a6, $sp, 40                    # 8-byte Folded Spill
	ld.d	$a6, $a6, 0
	move	$s8, $a4
	move	$s0, $a3
	move	$s4, $a2
	move	$s5, $a1
	move	$s3, $a0
	pcalau12i	$s7, %pc_hi20(src_line)
	st.d	$a0, $s7, %pc_lo12(src_line)
	move	$a0, $a6
	st.d	$a5, $sp, 48                    # 8-byte Folded Spill
	move	$a1, $a5
	move	$a2, $a4
	jirl	$ra, $a7, 0
	pcalau12i	$s2, %pc_hi20(ref_line)
	ori	$a1, $zero, 1
	st.d	$a0, $s2, %pc_lo12(ref_line)
	blt	$s5, $a1, .LBB5_8
# %bb.1:                                # %.preheader54.lr.ph
	blt	$s4, $a1, .LBB5_9
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
	bge	$fp, $s0, .LBB5_34
# %bb.6:                                #   in Loop: Header=BB5_3 Depth=1
	addi.w	$a1, $a1, 1
	add.d	$a0, $a6, $a3
	bne	$a1, $s5, .LBB5_3
# %bb.7:                                # %._crit_edge72.split.us
	add.d	$a0, $a6, $a3
	st.d	$a0, $s2, %pc_lo12(ref_line)
	st.d	$a5, $s7, %pc_lo12(src_line)
	pcalau12i	$a0, %pc_hi20(ChromaMEEnable)
	ld.w	$a0, $a0, %pc_lo12(ChromaMEEnable)
	bnez	$a0, .LBB5_11
	b	.LBB5_43
.LBB5_8:
	move	$fp, $zero
	pcalau12i	$a0, %pc_hi20(ChromaMEEnable)
	ld.w	$a0, $a0, %pc_lo12(ChromaMEEnable)
	bnez	$a0, .LBB5_11
	b	.LBB5_43
.LBB5_9:                                # %.preheader54.lr.ph.split
	move	$fp, $zero
	ori	$a1, $zero, 1
	blt	$s0, $a1, .LBB5_43
# %bb.10:                               # %.preheader54.preheader
	slli.d	$a1, $s1, 1
	slli.d	$a2, $s4, 1
	sub.d	$a1, $a1, $a2
	addi.w	$a3, $s5, -1
	mul.d	$a1, $a1, $a3
	alsl.d	$a1, $s1, $a1, 1
	sub.d	$a1, $a1, $a2
	add.d	$a0, $a0, $a1
	st.d	$a0, $s2, %pc_lo12(ref_line)
	pcalau12i	$a0, %pc_hi20(ChromaMEEnable)
	ld.w	$a0, $a0, %pc_lo12(ChromaMEEnable)
	beqz	$a0, .LBB5_43
.LBB5_11:
	pcalau12i	$a0, %pc_hi20(shift_cr_y)
	ld.wu	$a0, $a0, %pc_lo12(shift_cr_y)
	sra.w	$s5, $s5, $a0
	blez	$s5, .LBB5_35
# %bb.12:                               # %.split.us
	st.d	$s8, $sp, 32                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(shift_cr_x)
	ld.wu	$a0, $a0, %pc_lo12(shift_cr_x)
	pcalau12i	$a1, %pc_hi20(img_cr_padded_size_x)
	ld.w	$a1, $a1, %pc_lo12(img_cr_padded_size_x)
	sra.w	$s4, $s4, $a0
	ori	$s8, $zero, 1
	blt	$s4, $s8, .LBB5_38
# %bb.13:                               # %.preheader.lr.ph.us.us.preheader
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	ld.w	$a0, $s6, %pc_lo12(ref_access_method)
	slli.d	$a0, $a0, 3
	pcalau12i	$a2, %pc_hi20(get_crline)
	addi.d	$a2, $a2, %pc_lo12(get_crline)
	st.d	$a2, $sp, 16                    # 8-byte Folded Spill
	ldx.d	$a3, $a2, $a0
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 8
	sub.w	$s1, $a1, $s4
	addi.d	$a1, $s3, 512
	st.d	$a1, $s7, %pc_lo12(src_line)
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	jirl	$ra, $a3, 0
	pcalau12i	$a1, %got_pc_hi20(byte_abs)
	ld.d	$ra, $a1, %got_pc_lo12(byte_abs)
	move	$a3, $zero
	ld.d	$a7, $s7, %pc_lo12(src_line)
	ld.d	$a4, $ra, 0
	bstrpick.d	$a1, $s4, 30, 1
	slli.d	$a5, $a1, 1
	st.d	$a1, $sp, 8                     # 8-byte Folded Spill
	slli.d	$s2, $a1, 3
	.p2align	4, , 16
.LBB5_14:                               # %.preheader.us.us.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_17 Depth 2
                                        #     Child Loop BB5_20 Depth 2
	move	$a6, $zero
	bne	$s4, $s8, .LBB5_16
# %bb.15:                               #   in Loop: Header=BB5_14 Depth=1
	move	$a1, $a7
	move	$a2, $a0
	b	.LBB5_19
	.p2align	4, , 16
.LBB5_16:                               # %vector.ph
                                        #   in Loop: Header=BB5_14 Depth=1
	add.d	$a1, $a7, $s2
	add.d	$a2, $a0, $s2
	addi.d	$a7, $a7, 4
	addi.d	$a0, $a0, 4
	move	$t0, $a5
	.p2align	4, , 16
.LBB5_17:                               # %vector.body
                                        #   Parent Loop BB5_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.hu	$t1, $a7, -4
	ld.hu	$t2, $a7, 0
	ld.hu	$t3, $a0, -4
	ld.hu	$t4, $a0, 0
	ld.hu	$t5, $a7, -2
	ld.hu	$t6, $a7, 2
	ld.hu	$t7, $a0, -2
	ld.hu	$t8, $a0, 2
	sub.d	$t1, $t1, $t3
	sub.d	$t2, $t2, $t4
	sub.d	$t3, $t5, $t7
	sub.d	$t4, $t6, $t8
	slli.d	$t1, $t1, 2
	slli.d	$t2, $t2, 2
	ldx.w	$t1, $a4, $t1
	ldx.w	$t2, $a4, $t2
	slli.d	$t3, $t3, 2
	slli.d	$t4, $t4, 2
	ldx.w	$t3, $a4, $t3
	ldx.w	$t4, $a4, $t4
	add.d	$t1, $t1, $fp
	add.d	$a6, $t2, $a6
	add.d	$fp, $t1, $t3
	add.d	$a6, $a6, $t4
	addi.d	$t0, $t0, -2
	addi.d	$a7, $a7, 8
	addi.d	$a0, $a0, 8
	bnez	$t0, .LBB5_17
# %bb.18:                               # %middle.block
                                        #   in Loop: Header=BB5_14 Depth=1
	add.w	$fp, $a6, $fp
	move	$a6, $a5
	beq	$a5, $s4, .LBB5_21
.LBB5_19:                               # %scalar.ph.preheader
                                        #   in Loop: Header=BB5_14 Depth=1
	sub.d	$a0, $s4, $a6
	.p2align	4, , 16
.LBB5_20:                               # %scalar.ph
                                        #   Parent Loop BB5_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.hu	$a6, $a1, 0
	ld.hu	$a7, $a2, 0
	sub.d	$a6, $a6, $a7
	slli.d	$a6, $a6, 2
	ldx.w	$a6, $a4, $a6
	ld.hu	$a7, $a1, 2
	ld.hu	$t0, $a2, 2
	add.d	$a6, $a6, $fp
	sub.d	$a7, $a7, $t0
	slli.d	$a7, $a7, 2
	ldx.w	$a7, $a4, $a7
	addi.d	$a1, $a1, 4
	addi.d	$a2, $a2, 4
	addi.w	$a0, $a0, -1
	add.w	$fp, $a6, $a7
	bnez	$a0, .LBB5_20
.LBB5_21:                               # %._crit_edge.us93.us.us
                                        #   in Loop: Header=BB5_14 Depth=1
	bge	$fp, $s0, .LBB5_36
# %bb.22:                               #   in Loop: Header=BB5_14 Depth=1
	addi.w	$a3, $a3, 1
	alsl.d	$a0, $s1, $a2, 1
	move	$a7, $a1
	bne	$a3, $s5, .LBB5_14
# %bb.23:                               # %._crit_edge91.split.us.us.us
	ld.w	$a1, $s6, %pc_lo12(ref_access_method)
	slli.d	$a1, $a1, 3
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	ldx.d	$a3, $a2, $a1
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a1, $a1, 16
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	st.d	$a0, $a2, %pc_lo12(ref_line)
	addi.d	$a0, $s3, 1024
	st.d	$a0, $s7, %pc_lo12(src_line)
	move	$a0, $a1
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	move	$s3, $ra
	jirl	$ra, $a3, 0
	ld.d	$t0, $s7, %pc_lo12(src_line)
	ld.d	$a3, $s3, 0
	move	$a4, $zero
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	slli.d	$a5, $a1, 1
	ori	$a6, $zero, 1
	.p2align	4, , 16
.LBB5_24:                               # %.preheader.us.us.us.1
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_27 Depth 2
                                        #     Child Loop BB5_30 Depth 2
	move	$a7, $zero
	bne	$s4, $a6, .LBB5_26
# %bb.25:                               #   in Loop: Header=BB5_24 Depth=1
	move	$a1, $t0
	move	$a2, $a0
	b	.LBB5_29
	.p2align	4, , 16
.LBB5_26:                               # %vector.ph205
                                        #   in Loop: Header=BB5_24 Depth=1
	add.d	$a1, $t0, $s2
	add.d	$a2, $a0, $s2
	addi.d	$t0, $t0, 4
	addi.d	$a0, $a0, 4
	move	$t1, $a5
	.p2align	4, , 16
.LBB5_27:                               # %vector.body208
                                        #   Parent Loop BB5_24 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.hu	$t2, $t0, -4
	ld.hu	$t3, $t0, 0
	ld.hu	$t4, $a0, -4
	ld.hu	$t5, $a0, 0
	ld.hu	$t6, $t0, -2
	ld.hu	$t7, $t0, 2
	ld.hu	$t8, $a0, -2
	ld.hu	$s3, $a0, 2
	sub.d	$t2, $t2, $t4
	sub.d	$t3, $t3, $t5
	sub.d	$t4, $t6, $t8
	sub.d	$t5, $t7, $s3
	slli.d	$t2, $t2, 2
	slli.d	$t3, $t3, 2
	ldx.w	$t2, $a3, $t2
	ldx.w	$t3, $a3, $t3
	slli.d	$t4, $t4, 2
	slli.d	$t5, $t5, 2
	ldx.w	$t4, $a3, $t4
	ldx.w	$t5, $a3, $t5
	add.d	$t2, $t2, $fp
	add.d	$a7, $t3, $a7
	add.d	$fp, $t2, $t4
	add.d	$a7, $a7, $t5
	addi.d	$t1, $t1, -2
	addi.d	$t0, $t0, 8
	addi.d	$a0, $a0, 8
	bnez	$t1, .LBB5_27
# %bb.28:                               # %middle.block219
                                        #   in Loop: Header=BB5_24 Depth=1
	add.w	$fp, $a7, $fp
	move	$a7, $a5
	beq	$a5, $s4, .LBB5_31
.LBB5_29:                               # %scalar.ph203.preheader
                                        #   in Loop: Header=BB5_24 Depth=1
	sub.d	$a0, $s4, $a7
	.p2align	4, , 16
.LBB5_30:                               # %scalar.ph203
                                        #   Parent Loop BB5_24 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.hu	$a7, $a1, 0
	ld.hu	$t0, $a2, 0
	sub.d	$a7, $a7, $t0
	slli.d	$a7, $a7, 2
	ldx.w	$a7, $a3, $a7
	ld.hu	$t0, $a1, 2
	ld.hu	$t1, $a2, 2
	add.d	$a7, $a7, $fp
	sub.d	$t0, $t0, $t1
	slli.d	$t0, $t0, 2
	ldx.w	$t0, $a3, $t0
	addi.d	$a1, $a1, 4
	addi.d	$a2, $a2, 4
	addi.w	$a0, $a0, -1
	add.w	$fp, $a7, $t0
	bnez	$a0, .LBB5_30
.LBB5_31:                               # %._crit_edge.us93.us.us.1
                                        #   in Loop: Header=BB5_24 Depth=1
	bge	$fp, $s0, .LBB5_36
# %bb.32:                               #   in Loop: Header=BB5_24 Depth=1
	addi.w	$a4, $a4, 1
	alsl.d	$a0, $s1, $a2, 1
	move	$t0, $a1
	bne	$a4, $s5, .LBB5_24
# %bb.33:                               # %._crit_edge91.split.us.us.us.1
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	st.d	$a0, $a2, %pc_lo12(ref_line)
	b	.LBB5_37
.LBB5_34:                               # %.loopexit55.split.us
	st.d	$a6, $s2, %pc_lo12(ref_line)
	st.d	$a5, $s7, %pc_lo12(src_line)
	b	.LBB5_43
.LBB5_35:                               # %.split.preheader
	ld.w	$a0, $s6, %pc_lo12(ref_access_method)
	slli.d	$a0, $a0, 3
	pcalau12i	$a1, %pc_hi20(get_crline)
	addi.d	$s0, $a1, %pc_lo12(get_crline)
	ldx.d	$a3, $s0, $a0
	ld.d	$s4, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a0, $s4, 8
	addi.d	$a1, $s3, 512
	st.d	$a1, $s7, %pc_lo12(src_line)
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	move	$a1, $s1
	move	$a2, $s8
	jirl	$ra, $a3, 0
	ld.w	$a1, $s6, %pc_lo12(ref_access_method)
	slli.d	$a1, $a1, 3
	ldx.d	$a3, $s0, $a1
	ld.d	$a1, $s4, 16
	st.d	$a0, $s2, %pc_lo12(ref_line)
	addi.d	$a0, $s3, 1024
	st.d	$a0, $s7, %pc_lo12(src_line)
	move	$a0, $a1
	move	$a1, $s1
	move	$a2, $s8
	b	.LBB5_41
.LBB5_36:                               # %.loopexit.split.us
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	st.d	$a2, $a0, %pc_lo12(ref_line)
.LBB5_37:                               # %.loopexit
	st.d	$a1, $s7, %pc_lo12(src_line)
	b	.LBB5_43
.LBB5_38:                               # %.split.us.split
	bge	$fp, $s0, .LBB5_40
# %bb.39:                               # %.preheader.lr.ph.us.us119.preheader
	slli.d	$a0, $a1, 1
	slli.d	$a2, $s4, 1
	sub.d	$a0, $a0, $a2
	ld.w	$a3, $s6, %pc_lo12(ref_access_method)
	addi.w	$a4, $s5, -1
	mul.d	$a0, $a0, $a4
	alsl.d	$a1, $a1, $a0, 1
	slli.d	$a0, $a3, 3
	pcalau12i	$a3, %pc_hi20(get_crline)
	addi.d	$s0, $a3, %pc_lo12(get_crline)
	ldx.d	$a3, $s0, $a0
	ld.d	$s8, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a0, $s8, 8
	sub.d	$s1, $a1, $a2
	addi.d	$a1, $s3, 512
	st.d	$a1, $s7, %pc_lo12(src_line)
	ld.d	$s5, $sp, 48                    # 8-byte Folded Reload
	move	$a1, $s5
	ld.d	$s4, $sp, 32                    # 8-byte Folded Reload
	move	$a2, $s4
	jirl	$ra, $a3, 0
	ld.w	$a1, $s6, %pc_lo12(ref_access_method)
	add.d	$a2, $a0, $s1
	slli.d	$a0, $a1, 3
	ldx.d	$a3, $s0, $a0
	ld.d	$a0, $s8, 16
	st.d	$a2, $s2, %pc_lo12(ref_line)
	addi.d	$a1, $s3, 1024
	st.d	$a1, $s7, %pc_lo12(src_line)
	move	$a1, $s5
	move	$a2, $s4
	jirl	$ra, $a3, 0
	add.d	$a0, $a0, $s1
	b	.LBB5_42
.LBB5_40:                               # %.preheader.lr.ph.us
	ld.w	$a0, $s6, %pc_lo12(ref_access_method)
	slli.d	$a0, $a0, 3
	pcalau12i	$a1, %pc_hi20(get_crline)
	addi.d	$a1, $a1, %pc_lo12(get_crline)
	ldx.d	$a3, $a1, $a0
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 8
	addi.d	$a1, $s3, 512
	st.d	$a1, $s7, %pc_lo12(src_line)
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
.LBB5_41:                               # %.loopexit
	jirl	$ra, $a3, 0
.LBB5_42:                               # %.loopexit
	st.d	$a0, $s2, %pc_lo12(ref_line)
.LBB5_43:                               # %.loopexit
	move	$a0, $fp
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
.Lfunc_end5:
	.size	computeSAD, .Lfunc_end5-computeSAD
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function computeSADWP
.LCPI6_0:
	.word	0                               # 0x0
	.word	4                               # 0x4
	.word	4                               # 0x4
	.word	4                               # 0x4
	.text
	.globl	computeSADWP
	.p2align	5
	.type	computeSADWP,@function
computeSADWP:                           # @computeSADWP
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
	pcalau12i	$a6, %pc_hi20(ref_access_method)
	st.d	$a6, $sp, 64                    # 8-byte Folded Spill
	ld.w	$a6, $a6, %pc_lo12(ref_access_method)
	pcalau12i	$a7, %pc_hi20(img_padded_size_x)
	ld.w	$s7, $a7, %pc_lo12(img_padded_size_x)
	slli.d	$a6, $a6, 3
	pcalau12i	$a7, %pc_hi20(get_line)
	addi.d	$a7, $a7, %pc_lo12(get_line)
	ldx.d	$a7, $a7, $a6
	pcalau12i	$a6, %pc_hi20(ref_pic_sub)
	addi.d	$a6, $a6, %pc_lo12(ref_pic_sub)
	st.d	$a6, $sp, 56                    # 8-byte Folded Spill
	ld.d	$a6, $a6, 0
	move	$fp, $a3
	move	$s3, $a2
	move	$s4, $a1
	pcalau12i	$s0, %pc_hi20(src_line)
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	st.d	$a0, $s0, %pc_lo12(src_line)
	move	$a0, $a6
	st.d	$a5, $sp, 72                    # 8-byte Folded Spill
	move	$a1, $a5
	st.d	$a4, $sp, 80                    # 8-byte Folded Spill
	move	$a2, $a4
	jirl	$ra, $a7, 0
	pcalau12i	$a4, %pc_hi20(ref_line)
	st.d	$a0, $a4, %pc_lo12(ref_line)
	ori	$a1, $zero, 1
	pcalau12i	$a2, %pc_hi20(.LCPI6_0)
	st.d	$a2, $sp, 104                   # 8-byte Folded Spill
	st.d	$s0, $sp, 88                    # 8-byte Folded Spill
	blt	$s4, $a1, .LBB6_12
# %bb.1:                                # %.preheader64.lr.ph
	blt	$s3, $a1, .LBB6_13
# %bb.2:                                # %.preheader64.lr.ph.split.us
	st.d	$a4, $sp, 96                    # 8-byte Folded Spill
	move	$s5, $zero
	move	$a1, $zero
	ld.d	$ra, $s0, %pc_lo12(src_line)
	sub.w	$a2, $s7, $s3
	pcalau12i	$a3, %pc_hi20(weight_luma)
	ld.w	$a3, $a3, %pc_lo12(weight_luma)
	pcalau12i	$a4, %pc_hi20(wp_luma_round)
	ld.w	$a4, $a4, %pc_lo12(wp_luma_round)
	pcalau12i	$a5, %pc_hi20(luma_log_weight_denom)
	ld.w	$a5, $a5, %pc_lo12(luma_log_weight_denom)
	pcalau12i	$a6, %got_pc_hi20(byte_abs)
	pcalau12i	$a7, %got_pc_hi20(img)
	ld.d	$a7, $a7, %got_pc_lo12(img)
	ld.d	$t0, $a6, %got_pc_lo12(byte_abs)
	pcalau12i	$a6, %pc_hi20(offset_luma)
	ld.w	$a6, $a6, %pc_lo12(offset_luma)
	ld.d	$t1, $a7, 0
	ld.d	$a7, $t0, 0
	lu12i.w	$t0, 3
	ori	$t0, $t0, 3232
	ldx.w	$t0, $t1, $t0
	addi.d	$t1, $s3, -1
	bstrpick.d	$t1, $t1, 31, 2
	addi.d	$t1, $t1, 1
	bstrpick.d	$t4, $t1, 30, 3
	slli.d	$t2, $t4, 3
	slli.d	$t3, $t4, 5
	slli.d	$t4, $t4, 6
	vreplgr2vr.w	$vr0, $a3
	vreplgr2vr.w	$vr1, $a4
	vreplgr2vr.w	$vr2, $a5
	vreplgr2vr.w	$vr3, $a6
	vreplgr2vr.w	$vr4, $t0
	ori	$s6, $zero, 29
	vrepli.b	$vr5, 0
	.p2align	4, , 16
.LBB6_3:                                # %.preheader64.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_6 Depth 2
                                        #     Child Loop BB6_8 Depth 2
	bgeu	$s3, $s6, .LBB6_5
# %bb.4:                                #   in Loop: Header=BB6_3 Depth=1
	move	$t8, $zero
	move	$t7, $a0
	move	$t6, $ra
	b	.LBB6_8
	.p2align	4, , 16
.LBB6_5:                                # %vector.ph
                                        #   in Loop: Header=BB6_3 Depth=1
	add.d	$t7, $a0, $t4
	ld.d	$t5, $sp, 104                   # 8-byte Folded Reload
	vld	$vr6, $t5, %pc_lo12(.LCPI6_0)
	add.d	$t6, $ra, $t4
	vinsgr2vr.w	$vr7, $s5, 0
	vinsgr2vr.w	$vr8, $zero, 0
	vshuf.w	$vr6, $vr8, $vr7
	addi.d	$a0, $a0, 32
	addi.d	$t8, $ra, 32
	move	$s5, $t2
	vori.b	$vr7, $vr5, 0
	.p2align	4, , 16
.LBB6_6:                                # %vector.body
                                        #   Parent Loop BB6_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.h	$s7, $a0, -8
	ld.h	$ra, $a0, -16
	ld.h	$s0, $a0, -24
	ld.h	$s1, $a0, -32
	st.h	$s7, $sp, 486
	st.h	$ra, $sp, 484
	st.h	$s0, $sp, 482
	st.h	$s1, $sp, 480
	vld	$vr8, $sp, 480
	ld.h	$s0, $a0, 24
	ld.h	$s1, $a0, 16
	ld.h	$s7, $a0, 8
	ld.h	$ra, $a0, 0
	st.h	$s0, $sp, 470
	st.h	$s1, $sp, 468
	st.h	$s7, $sp, 466
	st.h	$ra, $sp, 464
	vld	$vr9, $sp, 464
	vilvl.h	$vr8, $vr5, $vr8
	vilvl.h	$vr9, $vr5, $vr9
	vori.b	$vr10, $vr1, 0
	vmadd.w	$vr10, $vr0, $vr8
	vori.b	$vr8, $vr1, 0
	vmadd.w	$vr8, $vr0, $vr9
	vsra.w	$vr9, $vr10, $vr2
	vsra.w	$vr8, $vr8, $vr2
	vadd.w	$vr9, $vr9, $vr3
	vadd.w	$vr8, $vr8, $vr3
	vmaxi.w	$vr9, $vr9, 0
	vmaxi.w	$vr8, $vr8, 0
	ld.h	$s0, $t8, -8
	ld.h	$s1, $t8, -16
	ld.h	$s7, $t8, -24
	ld.h	$ra, $t8, -32
	st.h	$s0, $sp, 614
	st.h	$s1, $sp, 612
	st.h	$s7, $sp, 610
	st.h	$ra, $sp, 608
	vld	$vr10, $sp, 608
	ld.h	$s0, $t8, 24
	ld.h	$s1, $t8, 16
	ld.h	$s7, $t8, 8
	ld.h	$ra, $t8, 0
	st.h	$s0, $sp, 598
	st.h	$s1, $sp, 596
	st.h	$s7, $sp, 594
	st.h	$ra, $sp, 592
	vld	$vr11, $sp, 592
	vmin.w	$vr9, $vr9, $vr4
	vmin.w	$vr8, $vr8, $vr4
	vilvl.h	$vr10, $vr5, $vr10
	vilvl.h	$vr11, $vr5, $vr11
	vsub.w	$vr9, $vr10, $vr9
	vsub.w	$vr8, $vr11, $vr8
	vshuf4i.w	$vr10, $vr9, 50
	vslli.d	$vr10, $vr10, 32
	vsrai.d	$vr10, $vr10, 32
	vshuf4i.w	$vr9, $vr9, 16
	vslli.d	$vr9, $vr9, 32
	vsrai.d	$vr9, $vr9, 32
	vshuf4i.w	$vr11, $vr8, 50
	vslli.d	$vr11, $vr11, 32
	vsrai.d	$vr11, $vr11, 32
	vshuf4i.w	$vr8, $vr8, 16
	vslli.d	$vr8, $vr8, 32
	vsrai.d	$vr8, $vr8, 32
	vpickve2gr.d	$s0, $vr9, 0
	slli.d	$s0, $s0, 2
	vpickve2gr.d	$s1, $vr9, 1
	slli.d	$s1, $s1, 2
	vpickve2gr.d	$s7, $vr10, 0
	slli.d	$s7, $s7, 2
	vpickve2gr.d	$ra, $vr10, 1
	slli.d	$ra, $ra, 2
	vpickve2gr.d	$s2, $vr8, 0
	slli.d	$s2, $s2, 2
	vpickve2gr.d	$s6, $vr8, 1
	slli.d	$s6, $s6, 2
	vpickve2gr.d	$s8, $vr11, 0
	slli.d	$s8, $s8, 2
	vpickve2gr.d	$t5, $vr11, 1
	slli.d	$t5, $t5, 2
	ldx.w	$s0, $a7, $s0
	ldx.w	$s1, $a7, $s1
	ldx.w	$s7, $a7, $s7
	ldx.w	$ra, $a7, $ra
	vinsgr2vr.w	$vr8, $s0, 0
	vinsgr2vr.w	$vr8, $s1, 1
	vinsgr2vr.w	$vr8, $s7, 2
	vinsgr2vr.w	$vr8, $ra, 3
	ldx.w	$s0, $a7, $s2
	ldx.w	$s1, $a7, $s6
	ldx.w	$s2, $a7, $s8
	ldx.w	$t5, $a7, $t5
	vinsgr2vr.w	$vr9, $s0, 0
	vinsgr2vr.w	$vr9, $s1, 1
	vinsgr2vr.w	$vr9, $s2, 2
	vinsgr2vr.w	$vr9, $t5, 3
	ld.h	$t5, $a0, -6
	ld.h	$s0, $a0, -14
	ld.h	$s1, $a0, -22
	ld.h	$s2, $a0, -30
	st.h	$t5, $sp, 454
	st.h	$s0, $sp, 452
	st.h	$s1, $sp, 450
	st.h	$s2, $sp, 448
	vld	$vr10, $sp, 448
	ld.h	$t5, $a0, 26
	ld.h	$s0, $a0, 18
	ld.h	$s1, $a0, 10
	ld.h	$s2, $a0, 2
	st.h	$t5, $sp, 438
	st.h	$s0, $sp, 436
	st.h	$s1, $sp, 434
	st.h	$s2, $sp, 432
	vld	$vr11, $sp, 432
	vadd.w	$vr6, $vr8, $vr6
	vadd.w	$vr7, $vr9, $vr7
	vilvl.h	$vr8, $vr5, $vr10
	vilvl.h	$vr9, $vr5, $vr11
	vori.b	$vr10, $vr1, 0
	vmadd.w	$vr10, $vr0, $vr8
	vori.b	$vr8, $vr1, 0
	vmadd.w	$vr8, $vr0, $vr9
	vsra.w	$vr9, $vr10, $vr2
	vsra.w	$vr8, $vr8, $vr2
	vadd.w	$vr9, $vr9, $vr3
	vadd.w	$vr8, $vr8, $vr3
	vmaxi.w	$vr9, $vr9, 0
	vmaxi.w	$vr8, $vr8, 0
	ld.h	$t5, $t8, -6
	ld.h	$s0, $t8, -14
	ld.h	$s1, $t8, -22
	ld.h	$s2, $t8, -30
	st.h	$t5, $sp, 582
	st.h	$s0, $sp, 580
	st.h	$s1, $sp, 578
	st.h	$s2, $sp, 576
	vld	$vr10, $sp, 576
	ld.h	$t5, $t8, 26
	ld.h	$s0, $t8, 18
	ld.h	$s1, $t8, 10
	ld.h	$s2, $t8, 2
	st.h	$t5, $sp, 566
	st.h	$s0, $sp, 564
	st.h	$s1, $sp, 562
	st.h	$s2, $sp, 560
	vld	$vr11, $sp, 560
	vmin.w	$vr9, $vr9, $vr4
	vmin.w	$vr8, $vr8, $vr4
	vilvl.h	$vr10, $vr5, $vr10
	vilvl.h	$vr11, $vr5, $vr11
	vsub.w	$vr9, $vr10, $vr9
	vsub.w	$vr8, $vr11, $vr8
	vshuf4i.w	$vr10, $vr9, 50
	vslli.d	$vr10, $vr10, 32
	vsrai.d	$vr10, $vr10, 32
	vshuf4i.w	$vr9, $vr9, 16
	vslli.d	$vr9, $vr9, 32
	vsrai.d	$vr9, $vr9, 32
	vshuf4i.w	$vr11, $vr8, 50
	vslli.d	$vr11, $vr11, 32
	vsrai.d	$vr11, $vr11, 32
	vshuf4i.w	$vr8, $vr8, 16
	vslli.d	$vr8, $vr8, 32
	vsrai.d	$vr8, $vr8, 32
	vpickve2gr.d	$t5, $vr9, 0
	slli.d	$t5, $t5, 2
	vpickve2gr.d	$s0, $vr9, 1
	slli.d	$s0, $s0, 2
	vpickve2gr.d	$s1, $vr10, 0
	slli.d	$s1, $s1, 2
	vpickve2gr.d	$s2, $vr10, 1
	slli.d	$s2, $s2, 2
	vpickve2gr.d	$s6, $vr8, 0
	slli.d	$s6, $s6, 2
	vpickve2gr.d	$s7, $vr8, 1
	slli.d	$s7, $s7, 2
	vpickve2gr.d	$s8, $vr11, 0
	slli.d	$s8, $s8, 2
	vpickve2gr.d	$ra, $vr11, 1
	slli.d	$ra, $ra, 2
	ldx.w	$t5, $a7, $t5
	ldx.w	$s0, $a7, $s0
	ldx.w	$s1, $a7, $s1
	ldx.w	$s2, $a7, $s2
	vinsgr2vr.w	$vr8, $t5, 0
	vinsgr2vr.w	$vr8, $s0, 1
	vinsgr2vr.w	$vr8, $s1, 2
	vinsgr2vr.w	$vr8, $s2, 3
	ldx.w	$t5, $a7, $s6
	ldx.w	$s0, $a7, $s7
	ldx.w	$s1, $a7, $s8
	ldx.w	$s2, $a7, $ra
	vinsgr2vr.w	$vr9, $t5, 0
	vinsgr2vr.w	$vr9, $s0, 1
	vinsgr2vr.w	$vr9, $s1, 2
	vinsgr2vr.w	$vr9, $s2, 3
	ld.h	$t5, $a0, -4
	ld.h	$s0, $a0, -12
	ld.h	$s1, $a0, -20
	ld.h	$s2, $a0, -28
	st.h	$t5, $sp, 422
	st.h	$s0, $sp, 420
	st.h	$s1, $sp, 418
	st.h	$s2, $sp, 416
	vld	$vr10, $sp, 416
	ld.h	$t5, $a0, 28
	ld.h	$s0, $a0, 20
	ld.h	$s1, $a0, 12
	ld.h	$s2, $a0, 4
	st.h	$t5, $sp, 406
	st.h	$s0, $sp, 404
	st.h	$s1, $sp, 402
	st.h	$s2, $sp, 400
	vld	$vr11, $sp, 400
	vadd.w	$vr6, $vr6, $vr8
	vadd.w	$vr7, $vr7, $vr9
	vilvl.h	$vr8, $vr5, $vr10
	vilvl.h	$vr9, $vr5, $vr11
	vori.b	$vr10, $vr1, 0
	vmadd.w	$vr10, $vr0, $vr8
	vori.b	$vr8, $vr1, 0
	vmadd.w	$vr8, $vr0, $vr9
	vsra.w	$vr9, $vr10, $vr2
	vsra.w	$vr8, $vr8, $vr2
	vadd.w	$vr9, $vr9, $vr3
	vadd.w	$vr8, $vr8, $vr3
	vmaxi.w	$vr9, $vr9, 0
	vmaxi.w	$vr8, $vr8, 0
	ld.h	$t5, $t8, -4
	ld.h	$s0, $t8, -12
	ld.h	$s1, $t8, -20
	ld.h	$s2, $t8, -28
	st.h	$t5, $sp, 550
	st.h	$s0, $sp, 548
	st.h	$s1, $sp, 546
	st.h	$s2, $sp, 544
	vld	$vr10, $sp, 544
	ld.h	$t5, $t8, 28
	ld.h	$s0, $t8, 20
	ld.h	$s1, $t8, 12
	ld.h	$s2, $t8, 4
	st.h	$t5, $sp, 534
	st.h	$s0, $sp, 532
	st.h	$s1, $sp, 530
	st.h	$s2, $sp, 528
	vld	$vr11, $sp, 528
	vmin.w	$vr9, $vr9, $vr4
	vmin.w	$vr8, $vr8, $vr4
	vilvl.h	$vr10, $vr5, $vr10
	vilvl.h	$vr11, $vr5, $vr11
	vsub.w	$vr9, $vr10, $vr9
	vsub.w	$vr8, $vr11, $vr8
	vshuf4i.w	$vr10, $vr9, 50
	vslli.d	$vr10, $vr10, 32
	vsrai.d	$vr10, $vr10, 32
	vshuf4i.w	$vr9, $vr9, 16
	vslli.d	$vr9, $vr9, 32
	vsrai.d	$vr9, $vr9, 32
	vshuf4i.w	$vr11, $vr8, 50
	vslli.d	$vr11, $vr11, 32
	vsrai.d	$vr11, $vr11, 32
	vshuf4i.w	$vr8, $vr8, 16
	vslli.d	$vr8, $vr8, 32
	vsrai.d	$vr8, $vr8, 32
	vpickve2gr.d	$t5, $vr9, 0
	slli.d	$t5, $t5, 2
	vpickve2gr.d	$s0, $vr9, 1
	slli.d	$s0, $s0, 2
	vpickve2gr.d	$s1, $vr10, 0
	slli.d	$s1, $s1, 2
	vpickve2gr.d	$s2, $vr10, 1
	slli.d	$s2, $s2, 2
	vpickve2gr.d	$s6, $vr8, 0
	slli.d	$s6, $s6, 2
	vpickve2gr.d	$s7, $vr8, 1
	slli.d	$s7, $s7, 2
	vpickve2gr.d	$s8, $vr11, 0
	slli.d	$s8, $s8, 2
	vpickve2gr.d	$ra, $vr11, 1
	slli.d	$ra, $ra, 2
	ldx.w	$t5, $a7, $t5
	ldx.w	$s0, $a7, $s0
	ldx.w	$s1, $a7, $s1
	ldx.w	$s2, $a7, $s2
	vinsgr2vr.w	$vr8, $t5, 0
	vinsgr2vr.w	$vr8, $s0, 1
	vinsgr2vr.w	$vr8, $s1, 2
	vinsgr2vr.w	$vr8, $s2, 3
	ldx.w	$t5, $a7, $s6
	ldx.w	$s0, $a7, $s7
	ldx.w	$s1, $a7, $s8
	ldx.w	$s2, $a7, $ra
	vinsgr2vr.w	$vr9, $t5, 0
	vinsgr2vr.w	$vr9, $s0, 1
	vinsgr2vr.w	$vr9, $s1, 2
	vinsgr2vr.w	$vr9, $s2, 3
	ld.h	$t5, $a0, -2
	ld.h	$s0, $a0, -10
	ld.h	$s1, $a0, -18
	ld.h	$s2, $a0, -26
	st.h	$t5, $sp, 390
	st.h	$s0, $sp, 388
	st.h	$s1, $sp, 386
	st.h	$s2, $sp, 384
	vld	$vr10, $sp, 384
	ld.h	$t5, $a0, 30
	ld.h	$s0, $a0, 22
	ld.h	$s1, $a0, 14
	ld.h	$s2, $a0, 6
	st.h	$t5, $sp, 374
	st.h	$s0, $sp, 372
	st.h	$s1, $sp, 370
	st.h	$s2, $sp, 368
	vld	$vr11, $sp, 368
	vadd.w	$vr6, $vr6, $vr8
	vadd.w	$vr7, $vr7, $vr9
	vilvl.h	$vr8, $vr5, $vr10
	vilvl.h	$vr9, $vr5, $vr11
	vori.b	$vr10, $vr1, 0
	vmadd.w	$vr10, $vr0, $vr8
	vori.b	$vr8, $vr1, 0
	vmadd.w	$vr8, $vr0, $vr9
	vsra.w	$vr9, $vr10, $vr2
	vsra.w	$vr8, $vr8, $vr2
	vadd.w	$vr9, $vr9, $vr3
	vadd.w	$vr8, $vr8, $vr3
	vmaxi.w	$vr9, $vr9, 0
	vmaxi.w	$vr8, $vr8, 0
	ld.h	$t5, $t8, -2
	ld.h	$s0, $t8, -10
	ld.h	$s1, $t8, -18
	ld.h	$s2, $t8, -26
	st.h	$t5, $sp, 518
	st.h	$s0, $sp, 516
	st.h	$s1, $sp, 514
	st.h	$s2, $sp, 512
	vld	$vr10, $sp, 512
	ld.h	$t5, $t8, 30
	ld.h	$s0, $t8, 22
	ld.h	$s1, $t8, 14
	ld.h	$s2, $t8, 6
	st.h	$t5, $sp, 502
	st.h	$s0, $sp, 500
	st.h	$s1, $sp, 498
	st.h	$s2, $sp, 496
	vld	$vr11, $sp, 496
	vmin.w	$vr9, $vr9, $vr4
	vmin.w	$vr8, $vr8, $vr4
	vilvl.h	$vr10, $vr5, $vr10
	vilvl.h	$vr11, $vr5, $vr11
	vsub.w	$vr9, $vr10, $vr9
	vsub.w	$vr8, $vr11, $vr8
	vshuf4i.w	$vr10, $vr9, 50
	vslli.d	$vr10, $vr10, 32
	vsrai.d	$vr10, $vr10, 32
	vshuf4i.w	$vr9, $vr9, 16
	vslli.d	$vr9, $vr9, 32
	vsrai.d	$vr9, $vr9, 32
	vshuf4i.w	$vr11, $vr8, 50
	vslli.d	$vr11, $vr11, 32
	vsrai.d	$vr11, $vr11, 32
	vshuf4i.w	$vr8, $vr8, 16
	vslli.d	$vr8, $vr8, 32
	vsrai.d	$vr8, $vr8, 32
	vpickve2gr.d	$t5, $vr9, 0
	slli.d	$t5, $t5, 2
	vpickve2gr.d	$s0, $vr9, 1
	slli.d	$s0, $s0, 2
	vpickve2gr.d	$s1, $vr10, 0
	slli.d	$s1, $s1, 2
	vpickve2gr.d	$s2, $vr10, 1
	slli.d	$s2, $s2, 2
	vpickve2gr.d	$s6, $vr8, 0
	slli.d	$s6, $s6, 2
	vpickve2gr.d	$s7, $vr8, 1
	slli.d	$s7, $s7, 2
	vpickve2gr.d	$s8, $vr11, 0
	slli.d	$s8, $s8, 2
	vpickve2gr.d	$ra, $vr11, 1
	slli.d	$ra, $ra, 2
	ldx.w	$t5, $a7, $t5
	ldx.w	$s0, $a7, $s0
	ldx.w	$s1, $a7, $s1
	ldx.w	$s2, $a7, $s2
	vinsgr2vr.w	$vr8, $t5, 0
	vinsgr2vr.w	$vr8, $s0, 1
	vinsgr2vr.w	$vr8, $s1, 2
	vinsgr2vr.w	$vr8, $s2, 3
	ldx.w	$t5, $a7, $s6
	ldx.w	$s0, $a7, $s7
	ldx.w	$s1, $a7, $s8
	ldx.w	$s2, $a7, $ra
	vinsgr2vr.w	$vr9, $t5, 0
	vinsgr2vr.w	$vr9, $s0, 1
	vinsgr2vr.w	$vr9, $s1, 2
	vinsgr2vr.w	$vr9, $s2, 3
	vadd.w	$vr6, $vr6, $vr8
	vadd.w	$vr7, $vr7, $vr9
	addi.d	$s5, $s5, -8
	addi.d	$a0, $a0, 64
	addi.d	$t8, $t8, 64
	bnez	$s5, .LBB6_6
# %bb.7:                                # %middle.block
                                        #   in Loop: Header=BB6_3 Depth=1
	vadd.w	$vr6, $vr7, $vr6
	vshuf4i.w	$vr7, $vr6, 14
	vadd.w	$vr6, $vr6, $vr7
	vreplvei.w	$vr7, $vr6, 1
	vadd.w	$vr6, $vr6, $vr7
	vpickve2gr.w	$s5, $vr6, 0
	move	$t8, $t3
	ori	$s6, $zero, 29
	beq	$t2, $t1, .LBB6_9
	.p2align	4, , 16
.LBB6_8:                                # %scalar.ph
                                        #   Parent Loop BB6_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.hu	$a0, $t7, 0
	mul.d	$a0, $a3, $a0
	add.d	$a0, $a0, $a4
	sra.w	$a0, $a0, $a5
	add.w	$a0, $a0, $a6
	srai.d	$t5, $a0, 63
	andn	$a0, $a0, $t5
	slt	$t5, $a0, $t0
	maskeqz	$a0, $a0, $t5
	ld.hu	$s0, $t6, 0
	ld.hu	$s1, $t7, 2
	masknez	$t5, $t0, $t5
	or	$a0, $a0, $t5
	sub.w	$a0, $s0, $a0
	mul.d	$t5, $a3, $s1
	add.d	$t5, $t5, $a4
	sra.w	$t5, $t5, $a5
	add.w	$t5, $t5, $a6
	srai.d	$s0, $t5, 63
	andn	$t5, $t5, $s0
	slt	$s0, $t5, $t0
	maskeqz	$t5, $t5, $s0
	masknez	$s0, $t0, $s0
	ld.hu	$s1, $t6, 2
	ld.hu	$s2, $t7, 4
	or	$t5, $t5, $s0
	slli.d	$a0, $a0, 2
	sub.w	$t5, $s1, $t5
	mul.d	$s0, $a3, $s2
	add.d	$s0, $s0, $a4
	sra.w	$s0, $s0, $a5
	add.w	$s0, $s0, $a6
	srai.d	$s1, $s0, 63
	andn	$s0, $s0, $s1
	slt	$s1, $s0, $t0
	maskeqz	$s0, $s0, $s1
	masknez	$s1, $t0, $s1
	or	$s0, $s0, $s1
	ld.hu	$s1, $t6, 4
	ldx.w	$a0, $a7, $a0
	slli.d	$t5, $t5, 2
	ldx.w	$t5, $a7, $t5
	sub.w	$s0, $s1, $s0
	slli.d	$s0, $s0, 2
	ldx.w	$s0, $a7, $s0
	ld.hu	$s1, $t7, 6
	add.d	$a0, $a0, $s5
	add.d	$a0, $a0, $t5
	add.d	$a0, $a0, $s0
	mul.d	$t5, $a3, $s1
	add.d	$t5, $t5, $a4
	sra.w	$t5, $t5, $a5
	add.w	$t5, $t5, $a6
	srai.d	$s0, $t5, 63
	andn	$t5, $t5, $s0
	slt	$s0, $t5, $t0
	ld.hu	$s1, $t6, 6
	maskeqz	$t5, $t5, $s0
	masknez	$s0, $t0, $s0
	or	$t5, $t5, $s0
	sub.w	$t5, $s1, $t5
	slli.d	$t5, $t5, 2
	ldx.w	$t5, $a7, $t5
	addi.d	$t7, $t7, 8
	addi.d	$t6, $t6, 8
	addi.w	$t8, $t8, 4
	add.w	$s5, $a0, $t5
	blt	$t8, $s3, .LBB6_8
.LBB6_9:                                # %._crit_edge.us
                                        #   in Loop: Header=BB6_3 Depth=1
	bge	$s5, $fp, .LBB6_27
# %bb.10:                               #   in Loop: Header=BB6_3 Depth=1
	addi.w	$a1, $a1, 1
	alsl.d	$a0, $a2, $t7, 1
	move	$ra, $t6
	bne	$a1, $s4, .LBB6_3
# %bb.11:                               # %._crit_edge82.split.us
	ld.d	$a4, $sp, 96                    # 8-byte Folded Reload
	st.d	$a0, $a4, %pc_lo12(ref_line)
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	st.d	$t6, $a0, %pc_lo12(src_line)
	pcalau12i	$a0, %pc_hi20(ChromaMEEnable)
	ld.w	$a0, $a0, %pc_lo12(ChromaMEEnable)
	bnez	$a0, .LBB6_15
	b	.LBB6_46
.LBB6_12:
	move	$s5, $zero
	pcalau12i	$a0, %pc_hi20(ChromaMEEnable)
	ld.w	$a0, $a0, %pc_lo12(ChromaMEEnable)
	bnez	$a0, .LBB6_15
	b	.LBB6_46
.LBB6_13:                               # %.preheader64.lr.ph.split
	move	$s5, $zero
	ori	$a1, $zero, 1
	blt	$fp, $a1, .LBB6_46
# %bb.14:                               # %.preheader64.preheader
	slli.d	$a1, $s7, 1
	slli.d	$a2, $s3, 1
	sub.d	$a1, $a1, $a2
	addi.w	$a3, $s4, -1
	mul.d	$a1, $a1, $a3
	alsl.d	$a1, $s7, $a1, 1
	sub.d	$a1, $a1, $a2
	add.d	$a0, $a0, $a1
	st.d	$a0, $a4, %pc_lo12(ref_line)
	pcalau12i	$a0, %pc_hi20(ChromaMEEnable)
	ld.w	$a0, $a0, %pc_lo12(ChromaMEEnable)
	beqz	$a0, .LBB6_46
.LBB6_15:
	st.d	$a4, $sp, 96                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(shift_cr_y)
	ld.wu	$a0, $a0, %pc_lo12(shift_cr_y)
	sra.w	$s4, $s4, $a0
	blez	$s4, .LBB6_28
# %bb.16:                               # %.preheader.lr.ph.us.preheader
	pcalau12i	$a0, %pc_hi20(shift_cr_x)
	ld.wu	$a0, $a0, %pc_lo12(shift_cr_x)
	pcalau12i	$a1, %pc_hi20(img_cr_padded_size_x)
	ld.w	$a1, $a1, %pc_lo12(img_cr_padded_size_x)
	sra.w	$s3, $s3, $a0
	slli.d	$a0, $a1, 1
	slli.d	$a2, $s3, 1
	sub.d	$a0, $a0, $a2
	addi.w	$a3, $s4, -1
	ld.d	$a4, $sp, 64                    # 8-byte Folded Reload
	ld.w	$a4, $a4, %pc_lo12(ref_access_method)
	mul.d	$a0, $a0, $a3
	alsl.d	$a0, $a1, $a0, 1
	sub.d	$a0, $a0, $a2
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	slli.d	$a0, $a4, 3
	pcalau12i	$a2, %pc_hi20(get_crline)
	addi.d	$a2, $a2, %pc_lo12(get_crline)
	st.d	$a2, $sp, 40                    # 8-byte Folded Spill
	ldx.d	$a3, $a2, $a0
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 8
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	addi.d	$a2, $a2, 512
	ld.d	$s0, $sp, 88                    # 8-byte Folded Reload
	st.d	$a2, $s0, %pc_lo12(src_line)
	sub.w	$s7, $a1, $s3
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	jirl	$ra, $a3, 0
	pcalau12i	$a1, %got_pc_hi20(byte_abs)
	ld.d	$a2, $a1, %got_pc_lo12(byte_abs)
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(ref_line)
	pcalau12i	$a4, %pc_hi20(wp_chroma_round)
	pcalau12i	$a5, %pc_hi20(chroma_log_weight_denom)
	blez	$s3, .LBB6_29
# %bb.17:                               # %.preheader.lr.ph.split.us.us
	move	$a3, $zero
	pcalau12i	$a1, %got_pc_hi20(img)
	ld.d	$a1, $a1, %got_pc_lo12(img)
	st.d	$a4, $sp, 16                    # 8-byte Folded Spill
	ld.w	$a4, $a4, %pc_lo12(wp_chroma_round)
	st.d	$a5, $sp, 8                     # 8-byte Folded Spill
	ld.w	$a5, $a5, %pc_lo12(chroma_log_weight_denom)
	st.d	$a2, $sp, 24                    # 8-byte Folded Spill
	ld.d	$a6, $a2, 0
	ld.d	$a1, $a1, 0
	move	$ra, $s0
	ld.d	$t5, $s0, %pc_lo12(src_line)
	lu12i.w	$a2, 3
	ori	$a2, $a2, 3236
	ldx.w	$a7, $a1, $a2
	pcalau12i	$a1, %pc_hi20(weight_cr)
	ld.w	$t0, $a1, %pc_lo12(weight_cr)
	pcalau12i	$a1, %pc_hi20(offset_cr)
	ld.w	$t1, $a1, %pc_lo12(offset_cr)
	bstrpick.d	$a1, $s3, 30, 3
	slli.d	$t2, $a1, 3
	slli.d	$t3, $a1, 5
	vreplgr2vr.w	$vr0, $t0
	vreplgr2vr.w	$vr1, $a4
	vreplgr2vr.w	$vr2, $a5
	vreplgr2vr.w	$vr3, $t1
	vreplgr2vr.w	$vr4, $a7
	ori	$t4, $zero, 8
	vrepli.b	$vr5, 0
	.p2align	4, , 16
.LBB6_18:                               # %.preheader.us.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_21 Depth 2
                                        #     Child Loop BB6_24 Depth 2
	bgeu	$s3, $t4, .LBB6_20
# %bb.19:                               #   in Loop: Header=BB6_18 Depth=1
	move	$t6, $zero
	move	$a2, $a0
	move	$a1, $t5
	b	.LBB6_23
	.p2align	4, , 16
.LBB6_20:                               # %vector.ph221
                                        #   in Loop: Header=BB6_18 Depth=1
	add.d	$a2, $a0, $t3
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	vld	$vr6, $a1, %pc_lo12(.LCPI6_0)
	add.d	$a1, $t5, $t3
	vinsgr2vr.w	$vr7, $s5, 0
	vinsgr2vr.w	$vr8, $zero, 0
	vshuf.w	$vr6, $vr8, $vr7
	addi.d	$a0, $a0, 16
	addi.d	$t5, $t5, 16
	move	$t6, $t2
	vori.b	$vr7, $vr5, 0
	.p2align	4, , 16
.LBB6_21:                               # %vector.body235
                                        #   Parent Loop BB6_18 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.h	$t7, $a0, -4
	ld.h	$t8, $a0, -8
	ld.h	$s0, $a0, -12
	ld.h	$s1, $a0, -16
	st.h	$t7, $sp, 294
	st.h	$t8, $sp, 292
	st.h	$s0, $sp, 290
	st.h	$s1, $sp, 288
	vld	$vr8, $sp, 288
	ld.h	$t7, $a0, 12
	ld.h	$t8, $a0, 8
	ld.h	$s0, $a0, 4
	ld.h	$s1, $a0, 0
	st.h	$t7, $sp, 278
	st.h	$t8, $sp, 276
	st.h	$s0, $sp, 274
	st.h	$s1, $sp, 272
	vld	$vr9, $sp, 272
	vilvl.h	$vr8, $vr5, $vr8
	vilvl.h	$vr9, $vr5, $vr9
	vori.b	$vr10, $vr1, 0
	vmadd.w	$vr10, $vr0, $vr8
	vori.b	$vr8, $vr1, 0
	vmadd.w	$vr8, $vr0, $vr9
	vsra.w	$vr9, $vr10, $vr2
	vsra.w	$vr8, $vr8, $vr2
	vadd.w	$vr9, $vr9, $vr3
	vadd.w	$vr8, $vr8, $vr3
	vmaxi.w	$vr9, $vr9, 0
	vmaxi.w	$vr8, $vr8, 0
	ld.h	$t7, $t5, -4
	ld.h	$t8, $t5, -8
	ld.h	$s0, $t5, -12
	ld.h	$s1, $t5, -16
	st.h	$t7, $sp, 358
	st.h	$t8, $sp, 356
	st.h	$s0, $sp, 354
	st.h	$s1, $sp, 352
	vld	$vr10, $sp, 352
	ld.h	$t7, $t5, 12
	ld.h	$t8, $t5, 8
	ld.h	$s0, $t5, 4
	ld.h	$s1, $t5, 0
	st.h	$t7, $sp, 342
	st.h	$t8, $sp, 340
	st.h	$s0, $sp, 338
	st.h	$s1, $sp, 336
	vld	$vr11, $sp, 336
	vmin.w	$vr9, $vr9, $vr4
	vmin.w	$vr8, $vr8, $vr4
	vilvl.h	$vr10, $vr5, $vr10
	vilvl.h	$vr11, $vr5, $vr11
	vsub.w	$vr9, $vr10, $vr9
	vsub.w	$vr8, $vr11, $vr8
	vshuf4i.w	$vr10, $vr9, 50
	vslli.d	$vr10, $vr10, 32
	vsrai.d	$vr10, $vr10, 32
	vshuf4i.w	$vr9, $vr9, 16
	vslli.d	$vr9, $vr9, 32
	vsrai.d	$vr9, $vr9, 32
	vshuf4i.w	$vr11, $vr8, 50
	vslli.d	$vr11, $vr11, 32
	vsrai.d	$vr11, $vr11, 32
	vshuf4i.w	$vr8, $vr8, 16
	vslli.d	$vr8, $vr8, 32
	vsrai.d	$vr8, $vr8, 32
	vpickve2gr.d	$t7, $vr9, 0
	slli.d	$t7, $t7, 2
	vpickve2gr.d	$t8, $vr9, 1
	slli.d	$t8, $t8, 2
	vpickve2gr.d	$s0, $vr10, 0
	slli.d	$s0, $s0, 2
	vpickve2gr.d	$s1, $vr10, 1
	slli.d	$s1, $s1, 2
	vpickve2gr.d	$s2, $vr8, 0
	slli.d	$s2, $s2, 2
	vpickve2gr.d	$s5, $vr8, 1
	slli.d	$s5, $s5, 2
	vpickve2gr.d	$s6, $vr11, 0
	slli.d	$s6, $s6, 2
	vpickve2gr.d	$s8, $vr11, 1
	slli.d	$s8, $s8, 2
	ldx.w	$t7, $a6, $t7
	ldx.w	$t8, $a6, $t8
	ldx.w	$s0, $a6, $s0
	ldx.w	$s1, $a6, $s1
	vinsgr2vr.w	$vr8, $t7, 0
	vinsgr2vr.w	$vr8, $t8, 1
	vinsgr2vr.w	$vr8, $s0, 2
	vinsgr2vr.w	$vr8, $s1, 3
	ldx.w	$t7, $a6, $s2
	ldx.w	$t8, $a6, $s5
	ldx.w	$s0, $a6, $s6
	ldx.w	$s1, $a6, $s8
	vinsgr2vr.w	$vr9, $t7, 0
	vinsgr2vr.w	$vr9, $t8, 1
	vinsgr2vr.w	$vr9, $s0, 2
	vinsgr2vr.w	$vr9, $s1, 3
	ld.h	$t7, $a0, -2
	ld.h	$t8, $a0, -6
	ld.h	$s0, $a0, -10
	ld.h	$s1, $a0, -14
	st.h	$t7, $sp, 262
	st.h	$t8, $sp, 260
	st.h	$s0, $sp, 258
	st.h	$s1, $sp, 256
	vld	$vr10, $sp, 256
	ld.h	$t7, $a0, 14
	ld.h	$t8, $a0, 10
	ld.h	$s0, $a0, 6
	ld.h	$s1, $a0, 2
	st.h	$t7, $sp, 246
	st.h	$t8, $sp, 244
	st.h	$s0, $sp, 242
	st.h	$s1, $sp, 240
	vld	$vr11, $sp, 240
	vadd.w	$vr6, $vr8, $vr6
	vadd.w	$vr7, $vr9, $vr7
	vilvl.h	$vr8, $vr5, $vr10
	vilvl.h	$vr9, $vr5, $vr11
	vori.b	$vr10, $vr1, 0
	vmadd.w	$vr10, $vr0, $vr8
	vori.b	$vr8, $vr1, 0
	vmadd.w	$vr8, $vr0, $vr9
	vsra.w	$vr9, $vr10, $vr2
	vsra.w	$vr8, $vr8, $vr2
	vadd.w	$vr9, $vr9, $vr3
	vadd.w	$vr8, $vr8, $vr3
	vmaxi.w	$vr9, $vr9, 0
	vmaxi.w	$vr8, $vr8, 0
	ld.h	$t7, $t5, -2
	ld.h	$t8, $t5, -6
	ld.h	$s0, $t5, -10
	ld.h	$s1, $t5, -14
	st.h	$t7, $sp, 326
	st.h	$t8, $sp, 324
	st.h	$s0, $sp, 322
	st.h	$s1, $sp, 320
	vld	$vr10, $sp, 320
	ld.h	$t7, $t5, 14
	ld.h	$t8, $t5, 10
	ld.h	$s0, $t5, 6
	ld.h	$s1, $t5, 2
	st.h	$t7, $sp, 310
	st.h	$t8, $sp, 308
	st.h	$s0, $sp, 306
	st.h	$s1, $sp, 304
	vld	$vr11, $sp, 304
	vmin.w	$vr9, $vr9, $vr4
	vmin.w	$vr8, $vr8, $vr4
	vilvl.h	$vr10, $vr5, $vr10
	vilvl.h	$vr11, $vr5, $vr11
	vsub.w	$vr9, $vr10, $vr9
	vsub.w	$vr8, $vr11, $vr8
	vshuf4i.w	$vr10, $vr9, 50
	vslli.d	$vr10, $vr10, 32
	vsrai.d	$vr10, $vr10, 32
	vshuf4i.w	$vr9, $vr9, 16
	vslli.d	$vr9, $vr9, 32
	vsrai.d	$vr9, $vr9, 32
	vshuf4i.w	$vr11, $vr8, 50
	vslli.d	$vr11, $vr11, 32
	vsrai.d	$vr11, $vr11, 32
	vshuf4i.w	$vr8, $vr8, 16
	vslli.d	$vr8, $vr8, 32
	vsrai.d	$vr8, $vr8, 32
	vpickve2gr.d	$t7, $vr9, 0
	slli.d	$t7, $t7, 2
	vpickve2gr.d	$t8, $vr9, 1
	slli.d	$t8, $t8, 2
	vpickve2gr.d	$s0, $vr10, 0
	slli.d	$s0, $s0, 2
	vpickve2gr.d	$s1, $vr10, 1
	slli.d	$s1, $s1, 2
	vpickve2gr.d	$s2, $vr8, 0
	slli.d	$s2, $s2, 2
	vpickve2gr.d	$s5, $vr8, 1
	slli.d	$s5, $s5, 2
	vpickve2gr.d	$s6, $vr11, 0
	slli.d	$s6, $s6, 2
	vpickve2gr.d	$s8, $vr11, 1
	slli.d	$s8, $s8, 2
	ldx.w	$t7, $a6, $t7
	ldx.w	$t8, $a6, $t8
	ldx.w	$s0, $a6, $s0
	ldx.w	$s1, $a6, $s1
	vinsgr2vr.w	$vr8, $t7, 0
	vinsgr2vr.w	$vr8, $t8, 1
	vinsgr2vr.w	$vr8, $s0, 2
	vinsgr2vr.w	$vr8, $s1, 3
	ldx.w	$t7, $a6, $s2
	ldx.w	$t8, $a6, $s5
	ldx.w	$s0, $a6, $s6
	ldx.w	$s1, $a6, $s8
	vinsgr2vr.w	$vr9, $t7, 0
	vinsgr2vr.w	$vr9, $t8, 1
	vinsgr2vr.w	$vr9, $s0, 2
	vinsgr2vr.w	$vr9, $s1, 3
	vadd.w	$vr6, $vr6, $vr8
	vadd.w	$vr7, $vr7, $vr9
	addi.d	$t6, $t6, -8
	addi.d	$a0, $a0, 32
	addi.d	$t5, $t5, 32
	bnez	$t6, .LBB6_21
# %bb.22:                               # %middle.block258
                                        #   in Loop: Header=BB6_18 Depth=1
	vadd.w	$vr6, $vr7, $vr6
	vshuf4i.w	$vr7, $vr6, 14
	vadd.w	$vr6, $vr6, $vr7
	vreplvei.w	$vr7, $vr6, 1
	vadd.w	$vr6, $vr6, $vr7
	vpickve2gr.w	$s5, $vr6, 0
	move	$t6, $t2
	beq	$t2, $s3, .LBB6_25
.LBB6_23:                               # %scalar.ph219.preheader
                                        #   in Loop: Header=BB6_18 Depth=1
	sub.d	$a0, $s3, $t6
	.p2align	4, , 16
.LBB6_24:                               # %scalar.ph219
                                        #   Parent Loop BB6_18 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.hu	$t5, $a2, 0
	mul.d	$t5, $t0, $t5
	add.d	$t5, $t5, $a4
	sra.w	$t5, $t5, $a5
	add.w	$t5, $t5, $t1
	srai.d	$t6, $t5, 63
	andn	$t5, $t5, $t6
	slt	$t6, $t5, $a7
	ld.hu	$t7, $a1, 0
	maskeqz	$t5, $t5, $t6
	masknez	$t6, $a7, $t6
	or	$t5, $t5, $t6
	sub.w	$t5, $t7, $t5
	slli.d	$t5, $t5, 2
	ldx.w	$t5, $a6, $t5
	ld.hu	$t6, $a2, 2
	add.d	$t5, $t5, $s5
	mul.d	$t6, $t0, $t6
	add.d	$t6, $t6, $a4
	sra.w	$t6, $t6, $a5
	add.w	$t6, $t6, $t1
	srai.d	$t7, $t6, 63
	andn	$t6, $t6, $t7
	slt	$t7, $t6, $a7
	ld.hu	$t8, $a1, 2
	maskeqz	$t6, $t6, $t7
	masknez	$t7, $a7, $t7
	or	$t6, $t6, $t7
	sub.w	$t6, $t8, $t6
	slli.d	$t6, $t6, 2
	ldx.w	$t6, $a6, $t6
	addi.d	$a2, $a2, 4
	addi.d	$a1, $a1, 4
	addi.w	$a0, $a0, -1
	add.w	$s5, $t5, $t6
	bnez	$a0, .LBB6_24
.LBB6_25:                               # %._crit_edge.us103.us
                                        #   in Loop: Header=BB6_18 Depth=1
	bge	$s5, $fp, .LBB6_43
# %bb.26:                               #   in Loop: Header=BB6_18 Depth=1
	addi.w	$a3, $a3, 1
	alsl.d	$a0, $s7, $a2, 1
	move	$t5, $a1
	bne	$a3, $s4, .LBB6_18
	b	.LBB6_31
.LBB6_27:                               # %.loopexit65.split.us
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	st.d	$t7, $a0, %pc_lo12(ref_line)
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	st.d	$t6, $a0, %pc_lo12(src_line)
	b	.LBB6_46
.LBB6_28:                               # %.split.preheader
	ld.d	$s3, $sp, 64                    # 8-byte Folded Reload
	ld.w	$a0, $s3, %pc_lo12(ref_access_method)
	slli.d	$a0, $a0, 3
	pcalau12i	$a1, %pc_hi20(get_crline)
	addi.d	$fp, $a1, %pc_lo12(get_crline)
	ldx.d	$a3, $fp, $a0
	ld.d	$s4, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a0, $s4, 8
	ld.d	$s6, $sp, 48                    # 8-byte Folded Reload
	addi.d	$a1, $s6, 512
	ld.d	$s0, $sp, 88                    # 8-byte Folded Reload
	st.d	$a1, $s0, %pc_lo12(src_line)
	ld.d	$s2, $sp, 72                    # 8-byte Folded Reload
	move	$a1, $s2
	ld.d	$s1, $sp, 80                    # 8-byte Folded Reload
	move	$a2, $s1
	jirl	$ra, $a3, 0
	ld.w	$a1, $s3, %pc_lo12(ref_access_method)
	slli.d	$a1, $a1, 3
	ldx.d	$a3, $fp, $a1
	ld.d	$a1, $s4, 16
	ld.d	$fp, $sp, 96                    # 8-byte Folded Reload
	st.d	$a0, $fp, %pc_lo12(ref_line)
	addi.d	$a0, $s6, 1024
	st.d	$a0, $s0, %pc_lo12(src_line)
	move	$a0, $a1
	move	$a1, $s2
	move	$a2, $s1
	jirl	$ra, $a3, 0
	st.d	$a0, $fp, %pc_lo12(ref_line)
	b	.LBB6_46
.LBB6_29:                               # %.preheader.lr.ph.split.us116
	bge	$s5, $fp, .LBB6_46
# %bb.30:                               # %.preheader.us112.preheader
	move	$ra, $s0
	st.d	$a5, $sp, 8                     # 8-byte Folded Spill
	st.d	$a4, $sp, 16                    # 8-byte Folded Spill
	st.d	$a2, $sp, 24                    # 8-byte Folded Spill
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	add.d	$a0, $a0, $a1
.LBB6_31:                               # %._crit_edge101.us
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	ld.w	$a1, $a1, %pc_lo12(ref_access_method)
	slli.d	$a1, $a1, 3
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	ldx.d	$a3, $a2, $a1
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a1, $a1, 16
	ld.d	$s1, $sp, 96                    # 8-byte Folded Reload
	st.d	$a0, $s1, %pc_lo12(ref_line)
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	addi.d	$a0, $a0, 1024
	move	$s0, $ra
	st.d	$a0, $ra, %pc_lo12(src_line)
	move	$a0, $a1
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	jirl	$ra, $a3, 0
	st.d	$a0, $s1, %pc_lo12(ref_line)
	blez	$s3, .LBB6_45
# %bb.32:                               # %.preheader.lr.ph.split.us.us.1
	move	$a3, $zero
	pcalau12i	$a1, %got_pc_hi20(img)
	ld.d	$a1, $a1, %got_pc_lo12(img)
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	ld.w	$a4, $a2, %pc_lo12(wp_chroma_round)
	ld.d	$a2, $sp, 8                     # 8-byte Folded Reload
	ld.w	$a5, $a2, %pc_lo12(chroma_log_weight_denom)
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a6, $a2, 0
	ld.d	$a1, $a1, 0
	move	$ra, $s0
	ld.d	$t5, $s0, %pc_lo12(src_line)
	lu12i.w	$a2, 3
	ori	$a2, $a2, 3236
	ldx.w	$a7, $a1, $a2
	pcalau12i	$a1, %pc_hi20(weight_cr+4)
	ld.w	$t0, $a1, %pc_lo12(weight_cr+4)
	pcalau12i	$a1, %pc_hi20(offset_cr+4)
	ld.w	$t1, $a1, %pc_lo12(offset_cr+4)
	bstrpick.d	$a1, $s3, 30, 3
	slli.d	$t2, $a1, 3
	slli.d	$t3, $a1, 5
	vreplgr2vr.w	$vr0, $t0
	vreplgr2vr.w	$vr1, $a4
	vreplgr2vr.w	$vr2, $a5
	vreplgr2vr.w	$vr3, $t1
	vreplgr2vr.w	$vr4, $a7
	ori	$t4, $zero, 8
	vrepli.b	$vr5, 0
	.p2align	4, , 16
.LBB6_33:                               # %.preheader.us.us.1
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_36 Depth 2
                                        #     Child Loop BB6_39 Depth 2
	bgeu	$s3, $t4, .LBB6_35
# %bb.34:                               #   in Loop: Header=BB6_33 Depth=1
	move	$t6, $zero
	move	$a2, $a0
	move	$a1, $t5
	b	.LBB6_38
	.p2align	4, , 16
.LBB6_35:                               # %vector.ph267
                                        #   in Loop: Header=BB6_33 Depth=1
	add.d	$a2, $a0, $t3
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	vld	$vr6, $a1, %pc_lo12(.LCPI6_0)
	add.d	$a1, $t5, $t3
	vinsgr2vr.w	$vr7, $s5, 0
	vinsgr2vr.w	$vr8, $zero, 0
	vshuf.w	$vr6, $vr8, $vr7
	addi.d	$a0, $a0, 16
	addi.d	$t5, $t5, 16
	move	$t6, $t2
	vori.b	$vr7, $vr5, 0
	.p2align	4, , 16
.LBB6_36:                               # %vector.body281
                                        #   Parent Loop BB6_33 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.h	$t7, $a0, -4
	ld.h	$t8, $a0, -8
	ld.h	$s0, $a0, -12
	ld.h	$s1, $a0, -16
	st.h	$t7, $sp, 166
	st.h	$t8, $sp, 164
	st.h	$s0, $sp, 162
	st.h	$s1, $sp, 160
	vld	$vr8, $sp, 160
	ld.h	$t7, $a0, 12
	ld.h	$t8, $a0, 8
	ld.h	$s0, $a0, 4
	ld.h	$s1, $a0, 0
	st.h	$t7, $sp, 150
	st.h	$t8, $sp, 148
	st.h	$s0, $sp, 146
	st.h	$s1, $sp, 144
	vld	$vr9, $sp, 144
	vilvl.h	$vr8, $vr5, $vr8
	vilvl.h	$vr9, $vr5, $vr9
	vori.b	$vr10, $vr1, 0
	vmadd.w	$vr10, $vr0, $vr8
	vori.b	$vr8, $vr1, 0
	vmadd.w	$vr8, $vr0, $vr9
	vsra.w	$vr9, $vr10, $vr2
	vsra.w	$vr8, $vr8, $vr2
	vadd.w	$vr9, $vr9, $vr3
	vadd.w	$vr8, $vr8, $vr3
	vmaxi.w	$vr9, $vr9, 0
	vmaxi.w	$vr8, $vr8, 0
	ld.h	$t7, $t5, -4
	ld.h	$t8, $t5, -8
	ld.h	$s0, $t5, -12
	ld.h	$s1, $t5, -16
	st.h	$t7, $sp, 230
	st.h	$t8, $sp, 228
	st.h	$s0, $sp, 226
	st.h	$s1, $sp, 224
	vld	$vr10, $sp, 224
	ld.h	$t7, $t5, 12
	ld.h	$t8, $t5, 8
	ld.h	$s0, $t5, 4
	ld.h	$s1, $t5, 0
	st.h	$t7, $sp, 214
	st.h	$t8, $sp, 212
	st.h	$s0, $sp, 210
	st.h	$s1, $sp, 208
	vld	$vr11, $sp, 208
	vmin.w	$vr9, $vr9, $vr4
	vmin.w	$vr8, $vr8, $vr4
	vilvl.h	$vr10, $vr5, $vr10
	vilvl.h	$vr11, $vr5, $vr11
	vsub.w	$vr9, $vr10, $vr9
	vsub.w	$vr8, $vr11, $vr8
	vshuf4i.w	$vr10, $vr9, 50
	vslli.d	$vr10, $vr10, 32
	vsrai.d	$vr10, $vr10, 32
	vshuf4i.w	$vr9, $vr9, 16
	vslli.d	$vr9, $vr9, 32
	vsrai.d	$vr9, $vr9, 32
	vshuf4i.w	$vr11, $vr8, 50
	vslli.d	$vr11, $vr11, 32
	vsrai.d	$vr11, $vr11, 32
	vshuf4i.w	$vr8, $vr8, 16
	vslli.d	$vr8, $vr8, 32
	vsrai.d	$vr8, $vr8, 32
	vpickve2gr.d	$t7, $vr9, 0
	slli.d	$t7, $t7, 2
	vpickve2gr.d	$t8, $vr9, 1
	slli.d	$t8, $t8, 2
	vpickve2gr.d	$s0, $vr10, 0
	slli.d	$s0, $s0, 2
	vpickve2gr.d	$s1, $vr10, 1
	slli.d	$s1, $s1, 2
	vpickve2gr.d	$s2, $vr8, 0
	slli.d	$s2, $s2, 2
	vpickve2gr.d	$s5, $vr8, 1
	slli.d	$s5, $s5, 2
	vpickve2gr.d	$s6, $vr11, 0
	slli.d	$s6, $s6, 2
	vpickve2gr.d	$s8, $vr11, 1
	slli.d	$s8, $s8, 2
	ldx.w	$t7, $a6, $t7
	ldx.w	$t8, $a6, $t8
	ldx.w	$s0, $a6, $s0
	ldx.w	$s1, $a6, $s1
	vinsgr2vr.w	$vr8, $t7, 0
	vinsgr2vr.w	$vr8, $t8, 1
	vinsgr2vr.w	$vr8, $s0, 2
	vinsgr2vr.w	$vr8, $s1, 3
	ldx.w	$t7, $a6, $s2
	ldx.w	$t8, $a6, $s5
	ldx.w	$s0, $a6, $s6
	ldx.w	$s1, $a6, $s8
	vinsgr2vr.w	$vr9, $t7, 0
	vinsgr2vr.w	$vr9, $t8, 1
	vinsgr2vr.w	$vr9, $s0, 2
	vinsgr2vr.w	$vr9, $s1, 3
	ld.h	$t7, $a0, -2
	ld.h	$t8, $a0, -6
	ld.h	$s0, $a0, -10
	ld.h	$s1, $a0, -14
	st.h	$t7, $sp, 134
	st.h	$t8, $sp, 132
	st.h	$s0, $sp, 130
	st.h	$s1, $sp, 128
	vld	$vr10, $sp, 128
	ld.h	$t7, $a0, 14
	ld.h	$t8, $a0, 10
	ld.h	$s0, $a0, 6
	ld.h	$s1, $a0, 2
	st.h	$t7, $sp, 118
	st.h	$t8, $sp, 116
	st.h	$s0, $sp, 114
	st.h	$s1, $sp, 112
	vld	$vr11, $sp, 112
	vadd.w	$vr6, $vr8, $vr6
	vadd.w	$vr7, $vr9, $vr7
	vilvl.h	$vr8, $vr5, $vr10
	vilvl.h	$vr9, $vr5, $vr11
	vori.b	$vr10, $vr1, 0
	vmadd.w	$vr10, $vr0, $vr8
	vori.b	$vr8, $vr1, 0
	vmadd.w	$vr8, $vr0, $vr9
	vsra.w	$vr9, $vr10, $vr2
	vsra.w	$vr8, $vr8, $vr2
	vadd.w	$vr9, $vr9, $vr3
	vadd.w	$vr8, $vr8, $vr3
	vmaxi.w	$vr9, $vr9, 0
	vmaxi.w	$vr8, $vr8, 0
	ld.h	$t7, $t5, -2
	ld.h	$t8, $t5, -6
	ld.h	$s0, $t5, -10
	ld.h	$s1, $t5, -14
	st.h	$t7, $sp, 198
	st.h	$t8, $sp, 196
	st.h	$s0, $sp, 194
	st.h	$s1, $sp, 192
	vld	$vr10, $sp, 192
	ld.h	$t7, $t5, 14
	ld.h	$t8, $t5, 10
	ld.h	$s0, $t5, 6
	ld.h	$s1, $t5, 2
	st.h	$t7, $sp, 182
	st.h	$t8, $sp, 180
	st.h	$s0, $sp, 178
	st.h	$s1, $sp, 176
	vld	$vr11, $sp, 176
	vmin.w	$vr9, $vr9, $vr4
	vmin.w	$vr8, $vr8, $vr4
	vilvl.h	$vr10, $vr5, $vr10
	vilvl.h	$vr11, $vr5, $vr11
	vsub.w	$vr9, $vr10, $vr9
	vsub.w	$vr8, $vr11, $vr8
	vshuf4i.w	$vr10, $vr9, 50
	vslli.d	$vr10, $vr10, 32
	vsrai.d	$vr10, $vr10, 32
	vshuf4i.w	$vr9, $vr9, 16
	vslli.d	$vr9, $vr9, 32
	vsrai.d	$vr9, $vr9, 32
	vshuf4i.w	$vr11, $vr8, 50
	vslli.d	$vr11, $vr11, 32
	vsrai.d	$vr11, $vr11, 32
	vshuf4i.w	$vr8, $vr8, 16
	vslli.d	$vr8, $vr8, 32
	vsrai.d	$vr8, $vr8, 32
	vpickve2gr.d	$t7, $vr9, 0
	slli.d	$t7, $t7, 2
	vpickve2gr.d	$t8, $vr9, 1
	slli.d	$t8, $t8, 2
	vpickve2gr.d	$s0, $vr10, 0
	slli.d	$s0, $s0, 2
	vpickve2gr.d	$s1, $vr10, 1
	slli.d	$s1, $s1, 2
	vpickve2gr.d	$s2, $vr8, 0
	slli.d	$s2, $s2, 2
	vpickve2gr.d	$s5, $vr8, 1
	slli.d	$s5, $s5, 2
	vpickve2gr.d	$s6, $vr11, 0
	slli.d	$s6, $s6, 2
	vpickve2gr.d	$s8, $vr11, 1
	slli.d	$s8, $s8, 2
	ldx.w	$t7, $a6, $t7
	ldx.w	$t8, $a6, $t8
	ldx.w	$s0, $a6, $s0
	ldx.w	$s1, $a6, $s1
	vinsgr2vr.w	$vr8, $t7, 0
	vinsgr2vr.w	$vr8, $t8, 1
	vinsgr2vr.w	$vr8, $s0, 2
	vinsgr2vr.w	$vr8, $s1, 3
	ldx.w	$t7, $a6, $s2
	ldx.w	$t8, $a6, $s5
	ldx.w	$s0, $a6, $s6
	ldx.w	$s1, $a6, $s8
	vinsgr2vr.w	$vr9, $t7, 0
	vinsgr2vr.w	$vr9, $t8, 1
	vinsgr2vr.w	$vr9, $s0, 2
	vinsgr2vr.w	$vr9, $s1, 3
	vadd.w	$vr6, $vr6, $vr8
	vadd.w	$vr7, $vr7, $vr9
	addi.d	$t6, $t6, -8
	addi.d	$a0, $a0, 32
	addi.d	$t5, $t5, 32
	bnez	$t6, .LBB6_36
# %bb.37:                               # %middle.block304
                                        #   in Loop: Header=BB6_33 Depth=1
	vadd.w	$vr6, $vr7, $vr6
	vshuf4i.w	$vr7, $vr6, 14
	vadd.w	$vr6, $vr6, $vr7
	vreplvei.w	$vr7, $vr6, 1
	vadd.w	$vr6, $vr6, $vr7
	vpickve2gr.w	$s5, $vr6, 0
	move	$t6, $t2
	beq	$t2, $s3, .LBB6_40
.LBB6_38:                               # %scalar.ph265.preheader
                                        #   in Loop: Header=BB6_33 Depth=1
	sub.d	$a0, $s3, $t6
	.p2align	4, , 16
.LBB6_39:                               # %scalar.ph265
                                        #   Parent Loop BB6_33 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.hu	$t5, $a2, 0
	mul.d	$t5, $t0, $t5
	add.d	$t5, $t5, $a4
	sra.w	$t5, $t5, $a5
	add.w	$t5, $t5, $t1
	srai.d	$t6, $t5, 63
	andn	$t5, $t5, $t6
	slt	$t6, $t5, $a7
	ld.hu	$t7, $a1, 0
	maskeqz	$t5, $t5, $t6
	masknez	$t6, $a7, $t6
	or	$t5, $t5, $t6
	sub.w	$t5, $t7, $t5
	slli.d	$t5, $t5, 2
	ldx.w	$t5, $a6, $t5
	ld.hu	$t6, $a2, 2
	add.d	$t5, $t5, $s5
	mul.d	$t6, $t0, $t6
	add.d	$t6, $t6, $a4
	sra.w	$t6, $t6, $a5
	add.w	$t6, $t6, $t1
	srai.d	$t7, $t6, 63
	andn	$t6, $t6, $t7
	slt	$t7, $t6, $a7
	ld.hu	$t8, $a1, 2
	maskeqz	$t6, $t6, $t7
	masknez	$t7, $a7, $t7
	or	$t6, $t6, $t7
	sub.w	$t6, $t8, $t6
	slli.d	$t6, $t6, 2
	ldx.w	$t6, $a6, $t6
	addi.d	$a2, $a2, 4
	addi.d	$a1, $a1, 4
	addi.w	$a0, $a0, -1
	add.w	$s5, $t5, $t6
	bnez	$a0, .LBB6_39
.LBB6_40:                               # %._crit_edge.us103.us.1
                                        #   in Loop: Header=BB6_33 Depth=1
	bge	$s5, $fp, .LBB6_43
# %bb.41:                               #   in Loop: Header=BB6_33 Depth=1
	addi.w	$a3, $a3, 1
	alsl.d	$a0, $s7, $a2, 1
	move	$t5, $a1
	bne	$a3, $s4, .LBB6_33
# %bb.42:                               # %._crit_edge101.split.us.us.1
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	st.d	$a0, $a2, %pc_lo12(ref_line)
	b	.LBB6_44
.LBB6_43:                               # %.loopexit.split.us
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	st.d	$a2, $a0, %pc_lo12(ref_line)
.LBB6_44:                               # %.loopexit
	st.d	$a1, $ra, %pc_lo12(src_line)
	b	.LBB6_46
.LBB6_45:                               # %.preheader.us112.preheader.1
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	add.d	$a0, $a0, $a2
	st.d	$a0, $s1, %pc_lo12(ref_line)
.LBB6_46:                               # %.loopexit
	move	$a0, $s5
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
	pcalau12i	$t0, %pc_hi20(bipred2_access_method)
	st.d	$t0, $sp, 56                    # 8-byte Folded Spill
	ld.w	$t0, $t0, %pc_lo12(bipred2_access_method)
	pcalau12i	$t1, %pc_hi20(img_padded_size_x)
	ld.w	$s3, $t1, %pc_lo12(img_padded_size_x)
	slli.d	$t0, $t0, 3
	pcalau12i	$t1, %pc_hi20(get_line)
	addi.d	$fp, $t1, %pc_lo12(get_line)
	ldx.d	$t1, $fp, $t0
	pcalau12i	$t0, %pc_hi20(ref_pic2_sub)
	addi.d	$t0, $t0, %pc_lo12(ref_pic2_sub)
	st.d	$t0, $sp, 48                    # 8-byte Folded Spill
	ld.d	$t0, $t0, 0
	move	$s4, $a5
	move	$s1, $a4
	move	$s0, $a3
	move	$s6, $a2
	move	$s7, $a1
	pcalau12i	$s8, %pc_hi20(src_line)
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	st.d	$a0, $s8, %pc_lo12(src_line)
	move	$a0, $t0
	st.d	$a7, $sp, 72                    # 8-byte Folded Spill
	move	$a1, $a7
	st.d	$a6, $sp, 80                    # 8-byte Folded Spill
	move	$a2, $a6
	jirl	$ra, $t1, 0
	pcalau12i	$s5, %pc_hi20(bipred1_access_method)
	ld.w	$a1, $s5, %pc_lo12(bipred1_access_method)
	slli.d	$a1, $a1, 3
	ldx.d	$a3, $fp, $a1
	pcalau12i	$a1, %pc_hi20(ref_pic1_sub)
	addi.d	$a1, $a1, %pc_lo12(ref_pic1_sub)
	st.d	$a1, $sp, 64                    # 8-byte Folded Spill
	ld.d	$a1, $a1, 0
	pcalau12i	$s2, %pc_hi20(ref2_line)
	st.d	$a0, $s2, %pc_lo12(ref2_line)
	move	$a0, $a1
	st.d	$s4, $sp, 88                    # 8-byte Folded Spill
	move	$a1, $s4
	st.d	$s1, $sp, 96                    # 8-byte Folded Spill
	move	$a2, $s1
	jirl	$ra, $a3, 0
	pcalau12i	$s1, %pc_hi20(ref1_line)
	ori	$a1, $zero, 1
	st.d	$a0, $s1, %pc_lo12(ref1_line)
	blt	$s7, $a1, .LBB7_8
# %bb.1:                                # %.preheader67.lr.ph
	ld.d	$a5, $s2, %pc_lo12(ref2_line)
	blt	$s6, $a1, .LBB7_9
# %bb.2:                                # %.preheader67.us.preheader
	pcalau12i	$a1, %got_pc_hi20(byte_abs)
	ld.d	$a2, $a1, %got_pc_lo12(byte_abs)
	move	$fp, $zero
	move	$a1, $zero
	ld.d	$a2, $a2, 0
	ld.d	$a4, $s8, %pc_lo12(src_line)
	slli.d	$a3, $s3, 1
	slli.d	$a6, $s6, 1
	sub.d	$a3, $a3, $a6
	vrepli.b	$vr0, 0
	.p2align	4, , 16
.LBB7_3:                                # %.preheader67.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_4 Depth 2
	move	$a6, $zero
	move	$a7, $a0
	move	$t0, $a5
	.p2align	4, , 16
.LBB7_4:                                #   Parent Loop BB7_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $a4, 0
	ld.d	$a5, $a7, 0
	ld.d	$t1, $t0, 0
	vinsgr2vr.d	$vr1, $a0, 0
	vilvl.h	$vr1, $vr0, $vr1
	vinsgr2vr.d	$vr2, $a5, 0
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
	addi.d	$a4, $a4, 8
	addi.d	$a7, $a7, 8
	addi.d	$t0, $t0, 8
	add.d	$a0, $a0, $fp
	vpickve2gr.w	$a5, $vr1, 1
	slli.d	$a5, $a5, 2
	ldx.w	$a5, $a2, $a5
	vpickve2gr.w	$t1, $vr1, 2
	slli.d	$t1, $t1, 2
	ldx.w	$t1, $a2, $t1
	vpickve2gr.w	$t2, $vr1, 3
	slli.d	$t2, $t2, 2
	ldx.w	$t2, $a2, $t2
	add.d	$a0, $a0, $a5
	add.d	$a0, $a0, $t1
	addi.w	$a6, $a6, 4
	add.w	$fp, $a0, $t2
	blt	$a6, $s6, .LBB7_4
# %bb.5:                                # %._crit_edge.us
                                        #   in Loop: Header=BB7_3 Depth=1
	bge	$fp, $s0, .LBB7_19
# %bb.6:                                #   in Loop: Header=BB7_3 Depth=1
	add.d	$a5, $t0, $a3
	addi.w	$a1, $a1, 1
	add.d	$a0, $a7, $a3
	bne	$a1, $s7, .LBB7_3
# %bb.7:                                # %._crit_edge90.split.us
	add.d	$a0, $t0, $a3
	st.d	$a0, $s2, %pc_lo12(ref2_line)
	add.d	$a0, $a7, $a3
	st.d	$a0, $s1, %pc_lo12(ref1_line)
	st.d	$a4, $s8, %pc_lo12(src_line)
	pcalau12i	$a0, %pc_hi20(ChromaMEEnable)
	ld.w	$a0, $a0, %pc_lo12(ChromaMEEnable)
	bnez	$a0, .LBB7_11
	b	.LBB7_34
.LBB7_8:
	move	$fp, $zero
	pcalau12i	$a0, %pc_hi20(ChromaMEEnable)
	ld.w	$a0, $a0, %pc_lo12(ChromaMEEnable)
	bnez	$a0, .LBB7_11
	b	.LBB7_34
.LBB7_9:                                # %.preheader67.lr.ph.split
	move	$fp, $zero
	ori	$a1, $zero, 1
	blt	$s0, $a1, .LBB7_34
# %bb.10:                               # %.preheader67.preheader
	slli.d	$a1, $s3, 1
	slli.d	$a2, $s6, 1
	sub.d	$a1, $a1, $a2
	addi.w	$a3, $s7, -1
	mul.d	$a1, $a1, $a3
	alsl.d	$a1, $s3, $a1, 1
	sub.d	$a1, $a1, $a2
	add.d	$a2, $a5, $a1
	add.d	$a0, $a0, $a1
	st.d	$a2, $s2, %pc_lo12(ref2_line)
	st.d	$a0, $s1, %pc_lo12(ref1_line)
	pcalau12i	$a0, %pc_hi20(ChromaMEEnable)
	ld.w	$a0, $a0, %pc_lo12(ChromaMEEnable)
	beqz	$a0, .LBB7_34
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
	sra.w	$s3, $s6, $a0
	slli.d	$a0, $a1, 1
	slli.d	$a2, $s3, 1
	sub.d	$s6, $a0, $a2
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(bipred2_access_method)
	addi.w	$a3, $s7, -1
	mul.d	$a3, $s6, $a3
	alsl.d	$a1, $a1, $a3, 1
	slli.d	$a0, $a0, 3
	pcalau12i	$a3, %pc_hi20(get_crline)
	addi.d	$s4, $a3, %pc_lo12(get_crline)
	ldx.d	$a3, $s4, $a0
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 8
	sub.d	$a1, $a1, $a2
	st.d	$a1, $sp, 24                    # 8-byte Folded Spill
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	addi.d	$a1, $a1, 512
	st.d	$a1, $s8, %pc_lo12(src_line)
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	jirl	$ra, $a3, 0
	ld.w	$a1, $s5, %pc_lo12(bipred1_access_method)
	slli.d	$a1, $a1, 3
	st.d	$s4, $sp, 32                    # 8-byte Folded Spill
	ldx.d	$a3, $s4, $a1
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a1, $a1, 8
	st.d	$a0, $s2, %pc_lo12(ref2_line)
	move	$a0, $a1
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	jirl	$ra, $a3, 0
	ld.d	$a7, $s2, %pc_lo12(ref2_line)
	pcalau12i	$a1, %got_pc_hi20(byte_abs)
	ld.d	$t2, $a1, %got_pc_lo12(byte_abs)
	ori	$a1, $zero, 1
	st.d	$a0, $s1, %pc_lo12(ref1_line)
	blt	$s3, $a1, .LBB7_21
# %bb.13:                               # %.preheader.us.us.preheader
	ld.d	$a3, $t2, 0
	ld.d	$a1, $s8, %pc_lo12(src_line)
	move	$a5, $zero
	.p2align	4, , 16
.LBB7_14:                               # %.preheader.us.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_15 Depth 2
	move	$a6, $s3
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
	add.d	$a0, $a0, $fp
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
	add.w	$fp, $a0, $a7
	bnez	$a6, .LBB7_15
# %bb.16:                               # %._crit_edge.us118.us
                                        #   in Loop: Header=BB7_14 Depth=1
	bge	$fp, $s0, .LBB7_30
# %bb.17:                               #   in Loop: Header=BB7_14 Depth=1
	add.d	$a7, $a4, $s6
	addi.w	$a5, $a5, 1
	add.d	$a0, $a2, $s6
	bne	$a5, $s7, .LBB7_14
# %bb.18:                               # %._crit_edge116.us.loopexit
	st.d	$t2, $sp, 0                     # 8-byte Folded Spill
	add.d	$a1, $a2, $s6
	add.d	$a2, $a4, $s6
	b	.LBB7_23
.LBB7_19:                               # %.loopexit68.split.us
	st.d	$t0, $s2, %pc_lo12(ref2_line)
	st.d	$a7, $s1, %pc_lo12(ref1_line)
	st.d	$a4, $s8, %pc_lo12(src_line)
	b	.LBB7_34
.LBB7_20:                               # %.split.preheader
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	ld.d	$s1, $sp, 56                    # 8-byte Folded Reload
	ld.w	$a0, $s1, %pc_lo12(bipred2_access_method)
	slli.d	$a0, $a0, 3
	pcalau12i	$a1, %pc_hi20(get_crline)
	addi.d	$s0, $a1, %pc_lo12(get_crline)
	ldx.d	$a3, $s0, $a0
	move	$s3, $s2
	st.d	$s2, $sp, 16                    # 8-byte Folded Spill
	move	$a2, $s8
	st.d	$s8, $sp, 8                     # 8-byte Folded Spill
	ld.d	$s8, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a0, $s8, 8
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	addi.d	$a1, $s2, 512
	st.d	$a1, $a2, %pc_lo12(src_line)
	ld.d	$s7, $sp, 72                    # 8-byte Folded Reload
	move	$a1, $s7
	ld.d	$s6, $sp, 80                    # 8-byte Folded Reload
	move	$a2, $s6
	jirl	$ra, $a3, 0
	ld.w	$a1, $s5, %pc_lo12(bipred1_access_method)
	slli.d	$a1, $a1, 3
	ldx.d	$a3, $s0, $a1
	st.d	$s5, $sp, 24                    # 8-byte Folded Spill
	ld.d	$s5, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a1, $s5, 8
	st.d	$a0, $s3, %pc_lo12(ref2_line)
	move	$a0, $a1
	ld.d	$s4, $sp, 88                    # 8-byte Folded Reload
	move	$a1, $s4
	ld.d	$s3, $sp, 96                    # 8-byte Folded Reload
	move	$a2, $s3
	jirl	$ra, $a3, 0
	ld.w	$a1, $s1, %pc_lo12(bipred2_access_method)
	slli.d	$a1, $a1, 3
	ldx.d	$a3, $s0, $a1
	ld.d	$a1, $s8, 16
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	st.d	$a0, $s1, %pc_lo12(ref1_line)
	addi.d	$a0, $s2, 1024
	ld.d	$a2, $sp, 8                     # 8-byte Folded Reload
	st.d	$a0, $a2, %pc_lo12(src_line)
	move	$a0, $a1
	move	$a1, $s7
	move	$a2, $s6
	jirl	$ra, $a3, 0
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	ld.w	$a1, $a1, %pc_lo12(bipred1_access_method)
	slli.d	$a1, $a1, 3
	ldx.d	$a3, $s0, $a1
	ld.d	$a1, $s5, 16
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	st.d	$a0, $a2, %pc_lo12(ref2_line)
	move	$a0, $a1
	move	$a1, $s4
	move	$a2, $s3
	jirl	$ra, $a3, 0
	b	.LBB7_33
.LBB7_21:                               # %.preheader.lr.ph.split.us134
	bge	$fp, $s0, .LBB7_34
# %bb.22:                               # %.preheader.us129.preheader
	st.d	$t2, $sp, 0                     # 8-byte Folded Spill
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	add.d	$a2, $a7, $a1
	add.d	$a1, $a0, $a1
.LBB7_23:                               # %._crit_edge116.us
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(bipred2_access_method)
	st.d	$a2, $s2, %pc_lo12(ref2_line)
	slli.d	$a0, $a0, 3
	ld.d	$s4, $sp, 32                    # 8-byte Folded Reload
	ldx.d	$a3, $s4, $a0
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 16
	st.d	$a1, $s1, %pc_lo12(ref1_line)
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	addi.d	$a1, $a1, 1024
	st.d	$a1, $s8, %pc_lo12(src_line)
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	jirl	$ra, $a3, 0
	ld.w	$a1, $s5, %pc_lo12(bipred1_access_method)
	slli.d	$a1, $a1, 3
	ldx.d	$a3, $s4, $a1
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a1, $a1, 16
	st.d	$a0, $s2, %pc_lo12(ref2_line)
	move	$a0, $a1
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	jirl	$ra, $a3, 0
	ld.d	$a7, $s2, %pc_lo12(ref2_line)
	st.d	$a0, $s1, %pc_lo12(ref1_line)
	blez	$s3, .LBB7_32
# %bb.24:                               # %.preheader.us.us.preheader.1
	ld.d	$a1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$a3, $a1, 0
	ld.d	$a1, $s8, %pc_lo12(src_line)
	move	$a5, $zero
	.p2align	4, , 16
.LBB7_25:                               # %.preheader.us.us.1
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_26 Depth 2
	move	$a6, $s3
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
	add.d	$a0, $a0, $fp
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
	add.w	$fp, $a0, $a7
	bnez	$a6, .LBB7_26
# %bb.27:                               # %._crit_edge.us118.us.1
                                        #   in Loop: Header=BB7_25 Depth=1
	bge	$fp, $s0, .LBB7_30
# %bb.28:                               #   in Loop: Header=BB7_25 Depth=1
	add.d	$a7, $a4, $s6
	addi.w	$a5, $a5, 1
	add.d	$a0, $a2, $s6
	bne	$a5, $s7, .LBB7_25
# %bb.29:                               # %._crit_edge116.split.us.us.1
	add.d	$a0, $a4, $s6
	st.d	$a0, $s2, %pc_lo12(ref2_line)
	add.d	$a0, $a2, $s6
	st.d	$a0, $s1, %pc_lo12(ref1_line)
	b	.LBB7_31
.LBB7_30:                               # %.loopexit.split.us
	st.d	$a4, $s2, %pc_lo12(ref2_line)
	st.d	$a2, $s1, %pc_lo12(ref1_line)
.LBB7_31:                               # %.loopexit
	st.d	$a1, $s8, %pc_lo12(src_line)
	b	.LBB7_34
.LBB7_32:                               # %.preheader.us129.preheader.1
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	add.d	$a1, $a7, $a2
	add.d	$a0, $a0, $a2
	st.d	$a1, $s2, %pc_lo12(ref2_line)
.LBB7_33:                               # %.loopexit
	st.d	$a0, $s1, %pc_lo12(ref1_line)
.LBB7_34:                               # %.loopexit
	move	$a0, $fp
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
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function computeBiPredSAD2
.LCPI8_0:
	.word	0                               # 0x0
	.word	4                               # 0x4
	.word	4                               # 0x4
	.word	4                               # 0x4
	.text
	.globl	computeBiPredSAD2
	.p2align	5
	.type	computeBiPredSAD2,@function
computeBiPredSAD2:                      # @computeBiPredSAD2
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
	pcalau12i	$t0, %pc_hi20(luma_log_weight_denom)
	ld.w	$t0, $t0, %pc_lo12(luma_log_weight_denom)
	move	$s7, $a5
	move	$s4, $a4
	move	$s3, $a3
	move	$s5, $a2
	move	$s6, $a1
	move	$a4, $a0
	addi.d	$s0, $t0, 1
	pcalau12i	$a0, %pc_hi20(wp_luma_round)
	pcalau12i	$a1, %pc_hi20(bipred2_access_method)
	st.d	$a1, $sp, 24                    # 8-byte Folded Spill
	ld.w	$a1, $a1, %pc_lo12(bipred2_access_method)
	ld.w	$a2, $a0, %pc_lo12(wp_luma_round)
	pcalau12i	$a0, %pc_hi20(img_padded_size_x)
	ld.w	$s8, $a0, %pc_lo12(img_padded_size_x)
	slli.d	$a0, $a1, 3
	pcalau12i	$a1, %pc_hi20(get_line)
	addi.d	$s1, $a1, %pc_lo12(get_line)
	ldx.d	$a3, $s1, $a0
	pcalau12i	$a0, %pc_hi20(ref_pic2_sub)
	addi.d	$a0, $a0, %pc_lo12(ref_pic2_sub)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	ld.d	$a0, $a0, 0
	slli.d	$s2, $a2, 1
	pcalau12i	$fp, %pc_hi20(src_line)
	st.d	$a4, $sp, 32                    # 8-byte Folded Spill
	st.d	$a4, $fp, %pc_lo12(src_line)
	st.d	$a7, $sp, 40                    # 8-byte Folded Spill
	move	$a1, $a7
	st.d	$a6, $sp, 48                    # 8-byte Folded Spill
	move	$a2, $a6
	jirl	$ra, $a3, 0
	pcalau12i	$a1, %pc_hi20(bipred1_access_method)
	st.d	$a1, $sp, 72                    # 8-byte Folded Spill
	ld.w	$a1, $a1, %pc_lo12(bipred1_access_method)
	slli.d	$a1, $a1, 3
	ldx.d	$a3, $s1, $a1
	pcalau12i	$a1, %pc_hi20(ref_pic1_sub)
	addi.d	$a1, $a1, %pc_lo12(ref_pic1_sub)
	st.d	$a1, $sp, 80                    # 8-byte Folded Spill
	ld.d	$a1, $a1, 0
	pcalau12i	$s1, %pc_hi20(ref2_line)
	st.d	$a0, $s1, %pc_lo12(ref2_line)
	move	$a0, $a1
	st.d	$s7, $sp, 56                    # 8-byte Folded Spill
	move	$a1, $s7
	st.d	$s4, $sp, 64                    # 8-byte Folded Spill
	move	$a2, $s4
	jirl	$ra, $a3, 0
	pcalau12i	$a4, %pc_hi20(ref1_line)
	st.d	$a0, $a4, %pc_lo12(ref1_line)
	ori	$a1, $zero, 1
	pcalau12i	$a2, %pc_hi20(.LCPI8_0)
	st.d	$a2, $sp, 128                   # 8-byte Folded Spill
	st.d	$s1, $sp, 96                    # 8-byte Folded Spill
	st.d	$s3, $sp, 136                   # 8-byte Folded Spill
	st.d	$fp, $sp, 104                   # 8-byte Folded Spill
	blt	$s6, $a1, .LBB8_12
# %bb.1:                                # %.preheader103.lr.ph
	ld.d	$s4, $s1, %pc_lo12(ref2_line)
	blt	$s5, $a1, .LBB8_13
# %bb.2:                                # %.preheader103.lr.ph.split.us
	st.d	$a4, $sp, 88                    # 8-byte Folded Spill
	move	$s7, $zero
	move	$a1, $zero
	ld.d	$ra, $fp, %pc_lo12(src_line)
	sub.w	$a2, $s8, $s5
	pcalau12i	$a3, %pc_hi20(weight1)
	ld.h	$a3, $a3, %pc_lo12(weight1)
	pcalau12i	$a4, %pc_hi20(weight2)
	ld.h	$a4, $a4, %pc_lo12(weight2)
	pcalau12i	$a5, %got_pc_hi20(byte_abs)
	pcalau12i	$a6, %got_pc_hi20(img)
	ld.d	$a6, $a6, %got_pc_lo12(img)
	ld.d	$a7, $a5, %got_pc_lo12(byte_abs)
	pcalau12i	$a5, %pc_hi20(offsetBi)
	ld.h	$a5, $a5, %pc_lo12(offsetBi)
	ld.d	$t0, $a6, 0
	ld.d	$a6, $a7, 0
	lu12i.w	$a7, 3
	ori	$a7, $a7, 3232
	ldx.w	$a7, $t0, $a7
	addi.d	$t0, $s5, -1
	bstrpick.d	$t0, $t0, 31, 2
	addi.d	$t0, $t0, 1
	st.d	$t0, $sp, 120                   # 8-byte Folded Spill
	bstrpick.d	$t3, $t0, 30, 3
	slli.d	$t1, $t3, 3
	slli.d	$t0, $t3, 5
	st.d	$t0, $sp, 112                   # 8-byte Folded Spill
	slli.d	$t3, $t3, 6
	vreplgr2vr.w	$vr0, $a3
	vreplgr2vr.w	$vr1, $a4
	vreplgr2vr.w	$vr2, $s2
	vreplgr2vr.w	$vr3, $s0
	vreplgr2vr.w	$vr4, $a5
	vreplgr2vr.w	$vr5, $a7
	ori	$s1, $zero, 29
	vrepli.b	$vr6, 0
	.p2align	4, , 16
.LBB8_3:                                # %.preheader103.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_6 Depth 2
                                        #     Child Loop BB8_8 Depth 2
	bgeu	$s5, $s1, .LBB8_5
# %bb.4:                                #   in Loop: Header=BB8_3 Depth=1
	move	$t8, $zero
	move	$t6, $a0
	move	$t7, $s4
	move	$t5, $ra
	b	.LBB8_8
	.p2align	4, , 16
.LBB8_5:                                # %vector.ph
                                        #   in Loop: Header=BB8_3 Depth=1
	add.d	$t6, $a0, $t3
	add.d	$t7, $s4, $t3
	ld.d	$t0, $sp, 128                   # 8-byte Folded Reload
	vld	$vr7, $t0, %pc_lo12(.LCPI8_0)
	add.d	$t5, $ra, $t3
	vinsgr2vr.w	$vr8, $s7, 0
	vinsgr2vr.w	$vr9, $zero, 0
	vshuf.w	$vr7, $vr9, $vr8
	addi.d	$a0, $a0, 32
	addi.d	$t8, $s4, 32
	addi.d	$s4, $ra, 32
	move	$s7, $t1
	vori.b	$vr8, $vr6, 0
	.p2align	4, , 16
.LBB8_6:                                # %vector.body
                                        #   Parent Loop BB8_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.h	$s8, $a0, -8
	ld.h	$ra, $a0, -16
	ld.h	$s1, $a0, -24
	ld.h	$s3, $a0, -32
	st.h	$s8, $sp, 646
	st.h	$ra, $sp, 644
	st.h	$s1, $sp, 642
	st.h	$s3, $sp, 640
	vld	$vr9, $sp, 640
	ld.h	$s1, $a0, 24
	ld.h	$s3, $a0, 16
	ld.h	$s8, $a0, 8
	ld.h	$ra, $a0, 0
	st.h	$s1, $sp, 630
	st.h	$s3, $sp, 628
	st.h	$s8, $sp, 626
	st.h	$ra, $sp, 624
	vld	$vr10, $sp, 624
	ld.h	$s1, $t8, -8
	ld.h	$s3, $t8, -16
	ld.h	$s8, $t8, -24
	ld.h	$ra, $t8, -32
	st.h	$s1, $sp, 774
	st.h	$s3, $sp, 772
	st.h	$s8, $sp, 770
	st.h	$ra, $sp, 768
	vld	$vr11, $sp, 768
	ld.h	$s1, $t8, 24
	ld.h	$s3, $t8, 16
	ld.h	$s8, $t8, 8
	ld.h	$ra, $t8, 0
	st.h	$s1, $sp, 758
	st.h	$s3, $sp, 756
	st.h	$s8, $sp, 754
	st.h	$ra, $sp, 752
	vld	$vr12, $sp, 752
	vilvl.h	$vr9, $vr6, $vr9
	vilvl.h	$vr10, $vr6, $vr10
	vilvl.h	$vr11, $vr6, $vr11
	vilvl.h	$vr12, $vr6, $vr12
	vori.b	$vr13, $vr2, 0
	vmadd.w	$vr13, $vr0, $vr9
	vori.b	$vr9, $vr2, 0
	vmadd.w	$vr9, $vr0, $vr10
	vmadd.w	$vr13, $vr1, $vr11
	vmadd.w	$vr9, $vr1, $vr12
	vsra.w	$vr10, $vr13, $vr3
	vsra.w	$vr9, $vr9, $vr3
	vadd.w	$vr10, $vr10, $vr4
	vadd.w	$vr9, $vr9, $vr4
	vmaxi.w	$vr10, $vr10, 0
	vmaxi.w	$vr9, $vr9, 0
	ld.h	$s1, $s4, -8
	ld.h	$s3, $s4, -16
	ld.h	$s8, $s4, -24
	ld.h	$ra, $s4, -32
	st.h	$s1, $sp, 902
	st.h	$s3, $sp, 900
	st.h	$s8, $sp, 898
	st.h	$ra, $sp, 896
	vld	$vr11, $sp, 896
	ld.h	$s1, $s4, 24
	ld.h	$s3, $s4, 16
	ld.h	$s8, $s4, 8
	ld.h	$ra, $s4, 0
	st.h	$s1, $sp, 886
	st.h	$s3, $sp, 884
	st.h	$s8, $sp, 882
	st.h	$ra, $sp, 880
	vld	$vr12, $sp, 880
	vmin.w	$vr10, $vr10, $vr5
	vmin.w	$vr9, $vr9, $vr5
	vilvl.h	$vr11, $vr6, $vr11
	vilvl.h	$vr12, $vr6, $vr12
	vsub.w	$vr10, $vr11, $vr10
	vsub.w	$vr9, $vr12, $vr9
	vshuf4i.w	$vr11, $vr10, 50
	vslli.d	$vr11, $vr11, 32
	vsrai.d	$vr11, $vr11, 32
	vshuf4i.w	$vr10, $vr10, 16
	vslli.d	$vr10, $vr10, 32
	vsrai.d	$vr10, $vr10, 32
	vshuf4i.w	$vr12, $vr9, 50
	vslli.d	$vr12, $vr12, 32
	vsrai.d	$vr12, $vr12, 32
	vshuf4i.w	$vr9, $vr9, 16
	vslli.d	$vr9, $vr9, 32
	vsrai.d	$vr9, $vr9, 32
	vpickve2gr.d	$s1, $vr10, 0
	slli.d	$s1, $s1, 2
	vpickve2gr.d	$s3, $vr10, 1
	slli.d	$s3, $s3, 2
	vpickve2gr.d	$s8, $vr11, 0
	slli.d	$s8, $s8, 2
	vpickve2gr.d	$ra, $vr11, 1
	slli.d	$ra, $ra, 2
	vpickve2gr.d	$t4, $vr9, 0
	slli.d	$t4, $t4, 2
	vpickve2gr.d	$t2, $vr9, 1
	slli.d	$t2, $t2, 2
	vpickve2gr.d	$t0, $vr12, 0
	slli.d	$t0, $t0, 2
	vpickve2gr.d	$fp, $vr12, 1
	slli.d	$fp, $fp, 2
	ldx.w	$s1, $a6, $s1
	ldx.w	$s3, $a6, $s3
	ldx.w	$s8, $a6, $s8
	ldx.w	$ra, $a6, $ra
	vinsgr2vr.w	$vr9, $s1, 0
	vinsgr2vr.w	$vr9, $s3, 1
	vinsgr2vr.w	$vr9, $s8, 2
	vinsgr2vr.w	$vr9, $ra, 3
	ldx.w	$t4, $a6, $t4
	ldx.w	$t2, $a6, $t2
	ldx.w	$t0, $a6, $t0
	ldx.w	$fp, $a6, $fp
	vinsgr2vr.w	$vr10, $t4, 0
	vinsgr2vr.w	$vr10, $t2, 1
	vinsgr2vr.w	$vr10, $t0, 2
	vinsgr2vr.w	$vr10, $fp, 3
	vadd.w	$vr7, $vr9, $vr7
	vadd.w	$vr8, $vr10, $vr8
	ld.h	$t0, $a0, -6
	ld.h	$t2, $a0, -14
	ld.h	$t4, $a0, -22
	ld.h	$fp, $a0, -30
	st.h	$t0, $sp, 614
	st.h	$t2, $sp, 612
	st.h	$t4, $sp, 610
	st.h	$fp, $sp, 608
	vld	$vr9, $sp, 608
	ld.h	$t0, $a0, 26
	ld.h	$t2, $a0, 18
	ld.h	$t4, $a0, 10
	ld.h	$fp, $a0, 2
	st.h	$t0, $sp, 598
	st.h	$t2, $sp, 596
	st.h	$t4, $sp, 594
	st.h	$fp, $sp, 592
	vld	$vr10, $sp, 592
	ld.h	$t0, $t8, -6
	ld.h	$t2, $t8, -14
	ld.h	$t4, $t8, -22
	ld.h	$fp, $t8, -30
	st.h	$t0, $sp, 742
	st.h	$t2, $sp, 740
	st.h	$t4, $sp, 738
	st.h	$fp, $sp, 736
	vld	$vr11, $sp, 736
	ld.h	$t0, $t8, 26
	ld.h	$t2, $t8, 18
	ld.h	$t4, $t8, 10
	ld.h	$fp, $t8, 2
	st.h	$t0, $sp, 726
	st.h	$t2, $sp, 724
	st.h	$t4, $sp, 722
	st.h	$fp, $sp, 720
	vld	$vr12, $sp, 720
	vilvl.h	$vr9, $vr6, $vr9
	vilvl.h	$vr10, $vr6, $vr10
	vilvl.h	$vr11, $vr6, $vr11
	vilvl.h	$vr12, $vr6, $vr12
	vori.b	$vr13, $vr2, 0
	vmadd.w	$vr13, $vr0, $vr9
	vori.b	$vr9, $vr2, 0
	vmadd.w	$vr9, $vr0, $vr10
	vmadd.w	$vr13, $vr1, $vr11
	vmadd.w	$vr9, $vr1, $vr12
	vsra.w	$vr10, $vr13, $vr3
	vsra.w	$vr9, $vr9, $vr3
	vadd.w	$vr10, $vr10, $vr4
	vadd.w	$vr9, $vr9, $vr4
	vmaxi.w	$vr10, $vr10, 0
	vmaxi.w	$vr9, $vr9, 0
	ld.h	$t0, $s4, -6
	ld.h	$t2, $s4, -14
	ld.h	$t4, $s4, -22
	ld.h	$fp, $s4, -30
	st.h	$t0, $sp, 870
	st.h	$t2, $sp, 868
	st.h	$t4, $sp, 866
	st.h	$fp, $sp, 864
	vld	$vr11, $sp, 864
	ld.h	$t0, $s4, 26
	ld.h	$t2, $s4, 18
	ld.h	$t4, $s4, 10
	ld.h	$fp, $s4, 2
	st.h	$t0, $sp, 854
	st.h	$t2, $sp, 852
	st.h	$t4, $sp, 850
	st.h	$fp, $sp, 848
	vld	$vr12, $sp, 848
	vmin.w	$vr10, $vr10, $vr5
	vmin.w	$vr9, $vr9, $vr5
	vilvl.h	$vr11, $vr6, $vr11
	vilvl.h	$vr12, $vr6, $vr12
	vsub.w	$vr10, $vr11, $vr10
	vsub.w	$vr9, $vr12, $vr9
	vshuf4i.w	$vr11, $vr10, 50
	vslli.d	$vr11, $vr11, 32
	vsrai.d	$vr11, $vr11, 32
	vshuf4i.w	$vr10, $vr10, 16
	vslli.d	$vr10, $vr10, 32
	vsrai.d	$vr10, $vr10, 32
	vshuf4i.w	$vr12, $vr9, 50
	vslli.d	$vr12, $vr12, 32
	vsrai.d	$vr12, $vr12, 32
	vshuf4i.w	$vr9, $vr9, 16
	vslli.d	$vr9, $vr9, 32
	vsrai.d	$vr9, $vr9, 32
	vpickve2gr.d	$t0, $vr10, 0
	slli.d	$t0, $t0, 2
	vpickve2gr.d	$t2, $vr10, 1
	slli.d	$t2, $t2, 2
	vpickve2gr.d	$t4, $vr11, 0
	slli.d	$t4, $t4, 2
	vpickve2gr.d	$fp, $vr11, 1
	slli.d	$fp, $fp, 2
	vpickve2gr.d	$s1, $vr9, 0
	slli.d	$s1, $s1, 2
	vpickve2gr.d	$s3, $vr9, 1
	slli.d	$s3, $s3, 2
	vpickve2gr.d	$s8, $vr12, 0
	slli.d	$s8, $s8, 2
	vpickve2gr.d	$ra, $vr12, 1
	slli.d	$ra, $ra, 2
	ldx.w	$t0, $a6, $t0
	ldx.w	$t2, $a6, $t2
	ldx.w	$t4, $a6, $t4
	ldx.w	$fp, $a6, $fp
	vinsgr2vr.w	$vr9, $t0, 0
	vinsgr2vr.w	$vr9, $t2, 1
	vinsgr2vr.w	$vr9, $t4, 2
	vinsgr2vr.w	$vr9, $fp, 3
	ldx.w	$t0, $a6, $s1
	ldx.w	$t2, $a6, $s3
	ldx.w	$t4, $a6, $s8
	ldx.w	$fp, $a6, $ra
	vinsgr2vr.w	$vr10, $t0, 0
	vinsgr2vr.w	$vr10, $t2, 1
	vinsgr2vr.w	$vr10, $t4, 2
	vinsgr2vr.w	$vr10, $fp, 3
	vadd.w	$vr7, $vr7, $vr9
	vadd.w	$vr8, $vr8, $vr10
	ld.h	$t0, $a0, -4
	ld.h	$t2, $a0, -12
	ld.h	$t4, $a0, -20
	ld.h	$fp, $a0, -28
	st.h	$t0, $sp, 582
	st.h	$t2, $sp, 580
	st.h	$t4, $sp, 578
	st.h	$fp, $sp, 576
	vld	$vr9, $sp, 576
	ld.h	$t0, $a0, 28
	ld.h	$t2, $a0, 20
	ld.h	$t4, $a0, 12
	ld.h	$fp, $a0, 4
	st.h	$t0, $sp, 566
	st.h	$t2, $sp, 564
	st.h	$t4, $sp, 562
	st.h	$fp, $sp, 560
	vld	$vr10, $sp, 560
	ld.h	$t0, $t8, -4
	ld.h	$t2, $t8, -12
	ld.h	$t4, $t8, -20
	ld.h	$fp, $t8, -28
	st.h	$t0, $sp, 710
	st.h	$t2, $sp, 708
	st.h	$t4, $sp, 706
	st.h	$fp, $sp, 704
	vld	$vr11, $sp, 704
	ld.h	$t0, $t8, 28
	ld.h	$t2, $t8, 20
	ld.h	$t4, $t8, 12
	ld.h	$fp, $t8, 4
	st.h	$t0, $sp, 694
	st.h	$t2, $sp, 692
	st.h	$t4, $sp, 690
	st.h	$fp, $sp, 688
	vld	$vr12, $sp, 688
	vilvl.h	$vr9, $vr6, $vr9
	vilvl.h	$vr10, $vr6, $vr10
	vilvl.h	$vr11, $vr6, $vr11
	vilvl.h	$vr12, $vr6, $vr12
	vori.b	$vr13, $vr2, 0
	vmadd.w	$vr13, $vr0, $vr9
	vori.b	$vr9, $vr2, 0
	vmadd.w	$vr9, $vr0, $vr10
	vmadd.w	$vr13, $vr1, $vr11
	vmadd.w	$vr9, $vr1, $vr12
	vsra.w	$vr10, $vr13, $vr3
	vsra.w	$vr9, $vr9, $vr3
	vadd.w	$vr10, $vr10, $vr4
	vadd.w	$vr9, $vr9, $vr4
	vmaxi.w	$vr10, $vr10, 0
	vmaxi.w	$vr9, $vr9, 0
	ld.h	$t0, $s4, -4
	ld.h	$t2, $s4, -12
	ld.h	$t4, $s4, -20
	ld.h	$fp, $s4, -28
	st.h	$t0, $sp, 838
	st.h	$t2, $sp, 836
	st.h	$t4, $sp, 834
	st.h	$fp, $sp, 832
	vld	$vr11, $sp, 832
	ld.h	$t0, $s4, 28
	ld.h	$t2, $s4, 20
	ld.h	$t4, $s4, 12
	ld.h	$fp, $s4, 4
	st.h	$t0, $sp, 822
	st.h	$t2, $sp, 820
	st.h	$t4, $sp, 818
	st.h	$fp, $sp, 816
	vld	$vr12, $sp, 816
	vmin.w	$vr10, $vr10, $vr5
	vmin.w	$vr9, $vr9, $vr5
	vilvl.h	$vr11, $vr6, $vr11
	vilvl.h	$vr12, $vr6, $vr12
	vsub.w	$vr10, $vr11, $vr10
	vsub.w	$vr9, $vr12, $vr9
	vshuf4i.w	$vr11, $vr10, 50
	vslli.d	$vr11, $vr11, 32
	vsrai.d	$vr11, $vr11, 32
	vshuf4i.w	$vr10, $vr10, 16
	vslli.d	$vr10, $vr10, 32
	vsrai.d	$vr10, $vr10, 32
	vshuf4i.w	$vr12, $vr9, 50
	vslli.d	$vr12, $vr12, 32
	vsrai.d	$vr12, $vr12, 32
	vshuf4i.w	$vr9, $vr9, 16
	vslli.d	$vr9, $vr9, 32
	vsrai.d	$vr9, $vr9, 32
	vpickve2gr.d	$t0, $vr10, 0
	slli.d	$t0, $t0, 2
	vpickve2gr.d	$t2, $vr10, 1
	slli.d	$t2, $t2, 2
	vpickve2gr.d	$t4, $vr11, 0
	slli.d	$t4, $t4, 2
	vpickve2gr.d	$fp, $vr11, 1
	slli.d	$fp, $fp, 2
	vpickve2gr.d	$s1, $vr9, 0
	slli.d	$s1, $s1, 2
	vpickve2gr.d	$s3, $vr9, 1
	slli.d	$s3, $s3, 2
	vpickve2gr.d	$s8, $vr12, 0
	slli.d	$s8, $s8, 2
	vpickve2gr.d	$ra, $vr12, 1
	slli.d	$ra, $ra, 2
	ldx.w	$t0, $a6, $t0
	ldx.w	$t2, $a6, $t2
	ldx.w	$t4, $a6, $t4
	ldx.w	$fp, $a6, $fp
	vinsgr2vr.w	$vr9, $t0, 0
	vinsgr2vr.w	$vr9, $t2, 1
	vinsgr2vr.w	$vr9, $t4, 2
	vinsgr2vr.w	$vr9, $fp, 3
	ldx.w	$t0, $a6, $s1
	ldx.w	$t2, $a6, $s3
	ldx.w	$t4, $a6, $s8
	ldx.w	$fp, $a6, $ra
	vinsgr2vr.w	$vr10, $t0, 0
	vinsgr2vr.w	$vr10, $t2, 1
	vinsgr2vr.w	$vr10, $t4, 2
	vinsgr2vr.w	$vr10, $fp, 3
	vadd.w	$vr7, $vr7, $vr9
	vadd.w	$vr8, $vr8, $vr10
	ld.h	$t0, $a0, -2
	ld.h	$t2, $a0, -10
	ld.h	$t4, $a0, -18
	ld.h	$fp, $a0, -26
	st.h	$t0, $sp, 550
	st.h	$t2, $sp, 548
	st.h	$t4, $sp, 546
	st.h	$fp, $sp, 544
	vld	$vr9, $sp, 544
	ld.h	$t0, $a0, 30
	ld.h	$t2, $a0, 22
	ld.h	$t4, $a0, 14
	ld.h	$fp, $a0, 6
	st.h	$t0, $sp, 534
	st.h	$t2, $sp, 532
	st.h	$t4, $sp, 530
	st.h	$fp, $sp, 528
	vld	$vr10, $sp, 528
	ld.h	$t0, $t8, -2
	ld.h	$t2, $t8, -10
	ld.h	$t4, $t8, -18
	ld.h	$fp, $t8, -26
	st.h	$t0, $sp, 678
	st.h	$t2, $sp, 676
	st.h	$t4, $sp, 674
	st.h	$fp, $sp, 672
	vld	$vr11, $sp, 672
	ld.h	$t0, $t8, 30
	ld.h	$t2, $t8, 22
	ld.h	$t4, $t8, 14
	ld.h	$fp, $t8, 6
	st.h	$t0, $sp, 662
	st.h	$t2, $sp, 660
	st.h	$t4, $sp, 658
	st.h	$fp, $sp, 656
	vld	$vr12, $sp, 656
	vilvl.h	$vr9, $vr6, $vr9
	vilvl.h	$vr10, $vr6, $vr10
	vilvl.h	$vr11, $vr6, $vr11
	vilvl.h	$vr12, $vr6, $vr12
	vori.b	$vr13, $vr2, 0
	vmadd.w	$vr13, $vr0, $vr9
	vori.b	$vr9, $vr2, 0
	vmadd.w	$vr9, $vr0, $vr10
	vmadd.w	$vr13, $vr1, $vr11
	vmadd.w	$vr9, $vr1, $vr12
	vsra.w	$vr10, $vr13, $vr3
	vsra.w	$vr9, $vr9, $vr3
	vadd.w	$vr10, $vr10, $vr4
	vadd.w	$vr9, $vr9, $vr4
	vmaxi.w	$vr10, $vr10, 0
	vmaxi.w	$vr9, $vr9, 0
	ld.h	$t0, $s4, -2
	ld.h	$t2, $s4, -10
	ld.h	$t4, $s4, -18
	ld.h	$fp, $s4, -26
	st.h	$t0, $sp, 806
	st.h	$t2, $sp, 804
	st.h	$t4, $sp, 802
	st.h	$fp, $sp, 800
	vld	$vr11, $sp, 800
	ld.h	$t0, $s4, 30
	ld.h	$t2, $s4, 22
	ld.h	$t4, $s4, 14
	ld.h	$fp, $s4, 6
	st.h	$t0, $sp, 790
	st.h	$t2, $sp, 788
	st.h	$t4, $sp, 786
	st.h	$fp, $sp, 784
	vld	$vr12, $sp, 784
	vmin.w	$vr10, $vr10, $vr5
	vmin.w	$vr9, $vr9, $vr5
	vilvl.h	$vr11, $vr6, $vr11
	vilvl.h	$vr12, $vr6, $vr12
	vsub.w	$vr10, $vr11, $vr10
	vsub.w	$vr9, $vr12, $vr9
	vshuf4i.w	$vr11, $vr10, 50
	vslli.d	$vr11, $vr11, 32
	vsrai.d	$vr11, $vr11, 32
	vshuf4i.w	$vr10, $vr10, 16
	vslli.d	$vr10, $vr10, 32
	vsrai.d	$vr10, $vr10, 32
	vshuf4i.w	$vr12, $vr9, 50
	vslli.d	$vr12, $vr12, 32
	vsrai.d	$vr12, $vr12, 32
	vshuf4i.w	$vr9, $vr9, 16
	vslli.d	$vr9, $vr9, 32
	vsrai.d	$vr9, $vr9, 32
	vpickve2gr.d	$t0, $vr10, 0
	slli.d	$t0, $t0, 2
	vpickve2gr.d	$t2, $vr10, 1
	slli.d	$t2, $t2, 2
	vpickve2gr.d	$t4, $vr11, 0
	slli.d	$t4, $t4, 2
	vpickve2gr.d	$fp, $vr11, 1
	slli.d	$fp, $fp, 2
	vpickve2gr.d	$s1, $vr9, 0
	slli.d	$s1, $s1, 2
	vpickve2gr.d	$s3, $vr9, 1
	slli.d	$s3, $s3, 2
	vpickve2gr.d	$s8, $vr12, 0
	slli.d	$s8, $s8, 2
	vpickve2gr.d	$ra, $vr12, 1
	slli.d	$ra, $ra, 2
	ldx.w	$t0, $a6, $t0
	ldx.w	$t2, $a6, $t2
	ldx.w	$t4, $a6, $t4
	ldx.w	$fp, $a6, $fp
	vinsgr2vr.w	$vr9, $t0, 0
	vinsgr2vr.w	$vr9, $t2, 1
	vinsgr2vr.w	$vr9, $t4, 2
	vinsgr2vr.w	$vr9, $fp, 3
	ldx.w	$t0, $a6, $s1
	ldx.w	$t2, $a6, $s3
	ldx.w	$t4, $a6, $s8
	ldx.w	$fp, $a6, $ra
	vinsgr2vr.w	$vr10, $t0, 0
	vinsgr2vr.w	$vr10, $t2, 1
	vinsgr2vr.w	$vr10, $t4, 2
	vinsgr2vr.w	$vr10, $fp, 3
	vadd.w	$vr7, $vr7, $vr9
	vadd.w	$vr8, $vr8, $vr10
	addi.d	$s7, $s7, -8
	addi.d	$a0, $a0, 64
	addi.d	$t8, $t8, 64
	addi.d	$s4, $s4, 64
	bnez	$s7, .LBB8_6
# %bb.7:                                # %middle.block
                                        #   in Loop: Header=BB8_3 Depth=1
	vadd.w	$vr7, $vr8, $vr7
	vshuf4i.w	$vr8, $vr7, 14
	vadd.w	$vr7, $vr7, $vr8
	vreplvei.w	$vr8, $vr7, 1
	vadd.w	$vr7, $vr7, $vr8
	vpickve2gr.w	$s7, $vr7, 0
	ld.d	$t8, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	ori	$s1, $zero, 29
	beq	$t1, $a0, .LBB8_9
	.p2align	4, , 16
.LBB8_8:                                # %scalar.ph
                                        #   Parent Loop BB8_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.hu	$a0, $t6, 0
	ld.hu	$t0, $t7, 0
	mul.d	$a0, $a0, $a3
	mul.d	$t0, $t0, $a4
	add.d	$a0, $a0, $s2
	add.d	$a0, $a0, $t0
	sra.w	$a0, $a0, $s0
	add.w	$a0, $a0, $a5
	srai.d	$t0, $a0, 63
	andn	$a0, $a0, $t0
	slt	$t0, $a0, $a7
	ld.hu	$t2, $t5, 0
	maskeqz	$a0, $a0, $t0
	masknez	$t0, $a7, $t0
	or	$a0, $a0, $t0
	sub.w	$a0, $t2, $a0
	slli.d	$a0, $a0, 2
	ldx.w	$a0, $a6, $a0
	ld.hu	$t0, $t6, 2
	ld.hu	$t2, $t7, 2
	add.d	$a0, $a0, $s7
	mul.d	$t0, $t0, $a3
	mul.d	$t2, $t2, $a4
	add.d	$t0, $t0, $s2
	add.d	$t0, $t0, $t2
	sra.w	$t0, $t0, $s0
	add.w	$t0, $t0, $a5
	srai.d	$t2, $t0, 63
	andn	$t0, $t0, $t2
	slt	$t2, $t0, $a7
	ld.hu	$t4, $t5, 2
	maskeqz	$t0, $t0, $t2
	masknez	$t2, $a7, $t2
	or	$t0, $t0, $t2
	sub.w	$t0, $t4, $t0
	ld.hu	$t2, $t6, 4
	ld.hu	$t4, $t7, 4
	slli.d	$t0, $t0, 2
	ldx.w	$t0, $a6, $t0
	mul.d	$t2, $t2, $a3
	mul.d	$t4, $t4, $a4
	add.d	$t2, $t2, $s2
	add.d	$t2, $t2, $t4
	sra.w	$t2, $t2, $s0
	add.w	$t2, $t2, $a5
	srai.d	$t4, $t2, 63
	andn	$t2, $t2, $t4
	slt	$t4, $t2, $a7
	ld.hu	$fp, $t5, 4
	maskeqz	$t2, $t2, $t4
	masknez	$t4, $a7, $t4
	or	$t2, $t2, $t4
	sub.w	$t2, $fp, $t2
	slli.d	$t2, $t2, 2
	ldx.w	$t2, $a6, $t2
	ld.hu	$t4, $t6, 6
	ld.hu	$fp, $t7, 6
	add.d	$a0, $a0, $t0
	add.d	$a0, $a0, $t2
	mul.d	$t0, $t4, $a3
	mul.d	$t2, $fp, $a4
	add.d	$t0, $t0, $s2
	add.d	$t0, $t0, $t2
	sra.w	$t0, $t0, $s0
	add.w	$t0, $t0, $a5
	srai.d	$t2, $t0, 63
	andn	$t0, $t0, $t2
	slt	$t2, $t0, $a7
	maskeqz	$t0, $t0, $t2
	ld.hu	$t4, $t5, 6
	masknez	$t2, $a7, $t2
	or	$t0, $t0, $t2
	addi.d	$t6, $t6, 8
	sub.w	$t0, $t4, $t0
	slli.d	$t0, $t0, 2
	ldx.w	$t0, $a6, $t0
	addi.d	$t7, $t7, 8
	addi.d	$t5, $t5, 8
	addi.w	$t8, $t8, 4
	add.w	$s7, $a0, $t0
	blt	$t8, $s5, .LBB8_8
.LBB8_9:                                # %._crit_edge.us
                                        #   in Loop: Header=BB8_3 Depth=1
	bge	$s7, $s3, .LBB8_27
# %bb.10:                               #   in Loop: Header=BB8_3 Depth=1
	alsl.d	$s4, $a2, $t7, 1
	addi.w	$a1, $a1, 1
	alsl.d	$a0, $a2, $t6, 1
	move	$ra, $t5
	bne	$a1, $s6, .LBB8_3
# %bb.11:                               # %._crit_edge126.split.us
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	st.d	$s4, $a1, %pc_lo12(ref2_line)
	ld.d	$a4, $sp, 88                    # 8-byte Folded Reload
	st.d	$a0, $a4, %pc_lo12(ref1_line)
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	st.d	$t5, $a0, %pc_lo12(src_line)
	pcalau12i	$a0, %pc_hi20(ChromaMEEnable)
	ld.w	$a0, $a0, %pc_lo12(ChromaMEEnable)
	bnez	$a0, .LBB8_15
	b	.LBB8_47
.LBB8_12:
	move	$s7, $zero
	pcalau12i	$a0, %pc_hi20(ChromaMEEnable)
	ld.w	$a0, $a0, %pc_lo12(ChromaMEEnable)
	bnez	$a0, .LBB8_15
	b	.LBB8_47
.LBB8_13:                               # %.preheader103.lr.ph.split
	move	$s7, $zero
	ori	$a1, $zero, 1
	blt	$s3, $a1, .LBB8_47
# %bb.14:                               # %.preheader103.preheader
	slli.d	$a1, $s8, 1
	slli.d	$a2, $s5, 1
	sub.d	$a1, $a1, $a2
	addi.w	$a3, $s6, -1
	mul.d	$a1, $a1, $a3
	alsl.d	$a1, $s8, $a1, 1
	sub.d	$a1, $a1, $a2
	add.d	$a2, $s4, $a1
	add.d	$a0, $a0, $a1
	st.d	$a2, $s1, %pc_lo12(ref2_line)
	st.d	$a0, $a4, %pc_lo12(ref1_line)
	pcalau12i	$a0, %pc_hi20(ChromaMEEnable)
	ld.w	$a0, $a0, %pc_lo12(ChromaMEEnable)
	beqz	$a0, .LBB8_47
.LBB8_15:
	st.d	$a4, $sp, 88                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(shift_cr_y)
	ld.wu	$a0, $a0, %pc_lo12(shift_cr_y)
	sra.w	$s6, $s6, $a0
	blez	$s6, .LBB8_28
# %bb.16:                               # %.preheader.lr.ph.us.preheader
	pcalau12i	$a0, %pc_hi20(shift_cr_x)
	ld.wu	$a0, $a0, %pc_lo12(shift_cr_x)
	pcalau12i	$a1, %pc_hi20(img_cr_padded_size_x)
	ld.w	$a1, $a1, %pc_lo12(img_cr_padded_size_x)
	sra.w	$s5, $s5, $a0
	slli.d	$a0, $a1, 1
	slli.d	$a2, $s5, 1
	sub.d	$a0, $a0, $a2
	addi.w	$a3, $s6, -1
	ld.d	$a4, $sp, 24                    # 8-byte Folded Reload
	ld.w	$a4, $a4, %pc_lo12(bipred2_access_method)
	mul.d	$a0, $a0, $a3
	alsl.d	$a0, $a1, $a0, 1
	sub.d	$a0, $a0, $a2
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	slli.d	$a0, $a4, 3
	pcalau12i	$a2, %pc_hi20(get_crline)
	addi.d	$s1, $a2, %pc_lo12(get_crline)
	ldx.d	$a3, $s1, $a0
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 8
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	addi.d	$a2, $a2, 512
	ld.d	$fp, $sp, 104                   # 8-byte Folded Reload
	st.d	$a2, $fp, %pc_lo12(src_line)
	sub.w	$s4, $a1, $s5
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	jirl	$ra, $a3, 0
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	ld.w	$a1, $a1, %pc_lo12(bipred1_access_method)
	slli.d	$a1, $a1, 3
	st.d	$s1, $sp, 120                   # 8-byte Folded Spill
	ldx.d	$a3, $s1, $a1
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a1, $a1, 8
	ld.d	$s1, $sp, 96                    # 8-byte Folded Reload
	st.d	$a0, $s1, %pc_lo12(ref2_line)
	move	$a0, $a1
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 64                    # 8-byte Folded Reload
	jirl	$ra, $a3, 0
	ld.d	$t5, $s1, %pc_lo12(ref2_line)
	pcalau12i	$a1, %got_pc_hi20(byte_abs)
	ld.d	$a2, $a1, %got_pc_lo12(byte_abs)
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(ref1_line)
	blez	$s5, .LBB8_29
# %bb.17:                               # %.preheader.lr.ph.split.us.us
	pcalau12i	$a1, %got_pc_hi20(img)
	ld.d	$a1, $a1, %got_pc_lo12(img)
	move	$a4, $zero
	st.d	$a2, $sp, 8                     # 8-byte Folded Spill
	ld.d	$a5, $a2, 0
	ld.d	$a1, $a1, 0
	ld.d	$t6, $fp, %pc_lo12(src_line)
	pcalau12i	$a2, %pc_hi20(weight1_cr)
	ld.h	$a6, $a2, %pc_lo12(weight1_cr)
	pcalau12i	$a2, %pc_hi20(weight2_cr)
	ld.h	$a7, $a2, %pc_lo12(weight2_cr)
	lu12i.w	$a2, 3
	ori	$a2, $a2, 3236
	ldx.w	$t0, $a1, $a2
	pcalau12i	$a1, %pc_hi20(offsetBi_cr)
	ld.h	$t1, $a1, %pc_lo12(offsetBi_cr)
	bstrpick.d	$a1, $s5, 30, 3
	slli.d	$t2, $a1, 3
	slli.d	$t3, $a1, 5
	vreplgr2vr.w	$vr0, $a6
	vreplgr2vr.w	$vr1, $a7
	vreplgr2vr.w	$vr2, $s2
	vreplgr2vr.w	$vr3, $s0
	vreplgr2vr.w	$vr4, $t1
	vreplgr2vr.w	$vr5, $t0
	ori	$t8, $zero, 8
	vrepli.b	$vr6, 0
	.p2align	4, , 16
.LBB8_18:                               # %.preheader.us.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_21 Depth 2
                                        #     Child Loop BB8_24 Depth 2
	bgeu	$s5, $t8, .LBB8_20
# %bb.19:                               #   in Loop: Header=BB8_18 Depth=1
	move	$t7, $zero
	move	$a2, $a0
	move	$a3, $t5
	move	$a1, $t6
	b	.LBB8_23
	.p2align	4, , 16
.LBB8_20:                               # %vector.ph317
                                        #   in Loop: Header=BB8_18 Depth=1
	add.d	$a2, $a0, $t3
	add.d	$a3, $t5, $t3
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	vld	$vr7, $a1, %pc_lo12(.LCPI8_0)
	add.d	$a1, $t6, $t3
	vinsgr2vr.w	$vr8, $s7, 0
	vinsgr2vr.w	$vr9, $zero, 0
	vshuf.w	$vr7, $vr9, $vr8
	addi.d	$a0, $a0, 16
	addi.d	$t5, $t5, 16
	addi.d	$t6, $t6, 16
	move	$t7, $t2
	vori.b	$vr8, $vr6, 0
	.p2align	4, , 16
.LBB8_21:                               # %vector.body333
                                        #   Parent Loop BB8_18 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.h	$t8, $a0, -4
	ld.h	$fp, $a0, -8
	ld.h	$s1, $a0, -12
	ld.h	$s3, $a0, -16
	st.h	$t8, $sp, 390
	st.h	$fp, $sp, 388
	st.h	$s1, $sp, 386
	st.h	$s3, $sp, 384
	vld	$vr9, $sp, 384
	ld.h	$t8, $a0, 12
	ld.h	$fp, $a0, 8
	ld.h	$s1, $a0, 4
	ld.h	$s3, $a0, 0
	st.h	$t8, $sp, 374
	st.h	$fp, $sp, 372
	st.h	$s1, $sp, 370
	st.h	$s3, $sp, 368
	vld	$vr10, $sp, 368
	ld.h	$t8, $t5, -4
	ld.h	$fp, $t5, -8
	ld.h	$s1, $t5, -12
	ld.h	$s3, $t5, -16
	st.h	$t8, $sp, 454
	st.h	$fp, $sp, 452
	st.h	$s1, $sp, 450
	st.h	$s3, $sp, 448
	vld	$vr11, $sp, 448
	ld.h	$t8, $t5, 12
	ld.h	$fp, $t5, 8
	ld.h	$s1, $t5, 4
	ld.h	$s3, $t5, 0
	st.h	$t8, $sp, 438
	st.h	$fp, $sp, 436
	st.h	$s1, $sp, 434
	st.h	$s3, $sp, 432
	vld	$vr12, $sp, 432
	vilvl.h	$vr9, $vr6, $vr9
	vilvl.h	$vr10, $vr6, $vr10
	vilvl.h	$vr11, $vr6, $vr11
	vilvl.h	$vr12, $vr6, $vr12
	vori.b	$vr13, $vr2, 0
	vmadd.w	$vr13, $vr0, $vr9
	vori.b	$vr9, $vr2, 0
	vmadd.w	$vr9, $vr0, $vr10
	vmadd.w	$vr13, $vr1, $vr11
	vmadd.w	$vr9, $vr1, $vr12
	vsra.w	$vr10, $vr13, $vr3
	vsra.w	$vr9, $vr9, $vr3
	vadd.w	$vr10, $vr10, $vr4
	vadd.w	$vr9, $vr9, $vr4
	vmaxi.w	$vr10, $vr10, 0
	vmaxi.w	$vr9, $vr9, 0
	ld.h	$t8, $t6, -4
	ld.h	$fp, $t6, -8
	ld.h	$s1, $t6, -12
	ld.h	$s3, $t6, -16
	st.h	$t8, $sp, 518
	st.h	$fp, $sp, 516
	st.h	$s1, $sp, 514
	st.h	$s3, $sp, 512
	vld	$vr11, $sp, 512
	ld.h	$t8, $t6, 12
	ld.h	$fp, $t6, 8
	ld.h	$s1, $t6, 4
	ld.h	$s3, $t6, 0
	st.h	$t8, $sp, 502
	st.h	$fp, $sp, 500
	st.h	$s1, $sp, 498
	st.h	$s3, $sp, 496
	vld	$vr12, $sp, 496
	vmin.w	$vr10, $vr10, $vr5
	vmin.w	$vr9, $vr9, $vr5
	vilvl.h	$vr11, $vr6, $vr11
	vilvl.h	$vr12, $vr6, $vr12
	vsub.w	$vr10, $vr11, $vr10
	vsub.w	$vr9, $vr12, $vr9
	vshuf4i.w	$vr11, $vr10, 50
	vslli.d	$vr11, $vr11, 32
	vsrai.d	$vr11, $vr11, 32
	vshuf4i.w	$vr10, $vr10, 16
	vslli.d	$vr10, $vr10, 32
	vsrai.d	$vr10, $vr10, 32
	vshuf4i.w	$vr12, $vr9, 50
	vslli.d	$vr12, $vr12, 32
	vsrai.d	$vr12, $vr12, 32
	vshuf4i.w	$vr9, $vr9, 16
	vslli.d	$vr9, $vr9, 32
	vsrai.d	$vr9, $vr9, 32
	vpickve2gr.d	$t8, $vr10, 0
	slli.d	$t8, $t8, 2
	vpickve2gr.d	$fp, $vr10, 1
	slli.d	$fp, $fp, 2
	vpickve2gr.d	$s1, $vr11, 0
	slli.d	$s1, $s1, 2
	vpickve2gr.d	$s3, $vr11, 1
	slli.d	$s3, $s3, 2
	vpickve2gr.d	$s7, $vr9, 0
	slli.d	$s7, $s7, 2
	vpickve2gr.d	$ra, $vr9, 1
	slli.d	$ra, $ra, 2
	vpickve2gr.d	$s8, $vr12, 0
	slli.d	$s8, $s8, 2
	vpickve2gr.d	$t4, $vr12, 1
	slli.d	$t4, $t4, 2
	ldx.w	$t8, $a5, $t8
	ldx.w	$fp, $a5, $fp
	ldx.w	$s1, $a5, $s1
	ldx.w	$s3, $a5, $s3
	vinsgr2vr.w	$vr9, $t8, 0
	vinsgr2vr.w	$vr9, $fp, 1
	vinsgr2vr.w	$vr9, $s1, 2
	vinsgr2vr.w	$vr9, $s3, 3
	ldx.w	$t8, $a5, $s7
	ldx.w	$fp, $a5, $ra
	ldx.w	$s1, $a5, $s8
	ldx.w	$t4, $a5, $t4
	vinsgr2vr.w	$vr10, $t8, 0
	vinsgr2vr.w	$vr10, $fp, 1
	vinsgr2vr.w	$vr10, $s1, 2
	vinsgr2vr.w	$vr10, $t4, 3
	vadd.w	$vr7, $vr9, $vr7
	vadd.w	$vr8, $vr10, $vr8
	ld.h	$t4, $a0, -2
	ld.h	$t8, $a0, -6
	ld.h	$fp, $a0, -10
	ld.h	$s1, $a0, -14
	st.h	$t4, $sp, 358
	st.h	$t8, $sp, 356
	st.h	$fp, $sp, 354
	st.h	$s1, $sp, 352
	vld	$vr9, $sp, 352
	ld.h	$t4, $a0, 14
	ld.h	$t8, $a0, 10
	ld.h	$fp, $a0, 6
	ld.h	$s1, $a0, 2
	st.h	$t4, $sp, 342
	st.h	$t8, $sp, 340
	st.h	$fp, $sp, 338
	st.h	$s1, $sp, 336
	vld	$vr10, $sp, 336
	ld.h	$t4, $t5, -2
	ld.h	$t8, $t5, -6
	ld.h	$fp, $t5, -10
	ld.h	$s1, $t5, -14
	st.h	$t4, $sp, 422
	st.h	$t8, $sp, 420
	st.h	$fp, $sp, 418
	st.h	$s1, $sp, 416
	vld	$vr11, $sp, 416
	ld.h	$t4, $t5, 14
	ld.h	$t8, $t5, 10
	ld.h	$fp, $t5, 6
	ld.h	$s1, $t5, 2
	st.h	$t4, $sp, 406
	st.h	$t8, $sp, 404
	st.h	$fp, $sp, 402
	st.h	$s1, $sp, 400
	vld	$vr12, $sp, 400
	vilvl.h	$vr9, $vr6, $vr9
	vilvl.h	$vr10, $vr6, $vr10
	vilvl.h	$vr11, $vr6, $vr11
	vilvl.h	$vr12, $vr6, $vr12
	vori.b	$vr13, $vr2, 0
	vmadd.w	$vr13, $vr0, $vr9
	vori.b	$vr9, $vr2, 0
	vmadd.w	$vr9, $vr0, $vr10
	vmadd.w	$vr13, $vr1, $vr11
	vmadd.w	$vr9, $vr1, $vr12
	vsra.w	$vr10, $vr13, $vr3
	vsra.w	$vr9, $vr9, $vr3
	vadd.w	$vr10, $vr10, $vr4
	vadd.w	$vr9, $vr9, $vr4
	vmaxi.w	$vr10, $vr10, 0
	vmaxi.w	$vr9, $vr9, 0
	ld.h	$t4, $t6, -2
	ld.h	$t8, $t6, -6
	ld.h	$fp, $t6, -10
	ld.h	$s1, $t6, -14
	st.h	$t4, $sp, 486
	st.h	$t8, $sp, 484
	st.h	$fp, $sp, 482
	st.h	$s1, $sp, 480
	vld	$vr11, $sp, 480
	ld.h	$t4, $t6, 14
	ld.h	$t8, $t6, 10
	ld.h	$fp, $t6, 6
	ld.h	$s1, $t6, 2
	st.h	$t4, $sp, 470
	st.h	$t8, $sp, 468
	st.h	$fp, $sp, 466
	st.h	$s1, $sp, 464
	vld	$vr12, $sp, 464
	vmin.w	$vr10, $vr10, $vr5
	vmin.w	$vr9, $vr9, $vr5
	vilvl.h	$vr11, $vr6, $vr11
	vilvl.h	$vr12, $vr6, $vr12
	vsub.w	$vr10, $vr11, $vr10
	vsub.w	$vr9, $vr12, $vr9
	vshuf4i.w	$vr11, $vr10, 50
	vslli.d	$vr11, $vr11, 32
	vsrai.d	$vr11, $vr11, 32
	vshuf4i.w	$vr10, $vr10, 16
	vslli.d	$vr10, $vr10, 32
	vsrai.d	$vr10, $vr10, 32
	vshuf4i.w	$vr12, $vr9, 50
	vslli.d	$vr12, $vr12, 32
	vsrai.d	$vr12, $vr12, 32
	vshuf4i.w	$vr9, $vr9, 16
	vslli.d	$vr9, $vr9, 32
	vsrai.d	$vr9, $vr9, 32
	vpickve2gr.d	$t4, $vr10, 0
	slli.d	$t4, $t4, 2
	vpickve2gr.d	$t8, $vr10, 1
	slli.d	$t8, $t8, 2
	vpickve2gr.d	$fp, $vr11, 0
	slli.d	$fp, $fp, 2
	vpickve2gr.d	$s1, $vr11, 1
	slli.d	$s1, $s1, 2
	vpickve2gr.d	$s3, $vr9, 0
	slli.d	$s3, $s3, 2
	vpickve2gr.d	$s7, $vr9, 1
	slli.d	$s7, $s7, 2
	vpickve2gr.d	$s8, $vr12, 0
	slli.d	$s8, $s8, 2
	vpickve2gr.d	$ra, $vr12, 1
	slli.d	$ra, $ra, 2
	ldx.w	$t4, $a5, $t4
	ldx.w	$t8, $a5, $t8
	ldx.w	$fp, $a5, $fp
	ldx.w	$s1, $a5, $s1
	vinsgr2vr.w	$vr9, $t4, 0
	vinsgr2vr.w	$vr9, $t8, 1
	vinsgr2vr.w	$vr9, $fp, 2
	vinsgr2vr.w	$vr9, $s1, 3
	ldx.w	$t4, $a5, $s3
	ldx.w	$t8, $a5, $s7
	ldx.w	$fp, $a5, $s8
	ldx.w	$s1, $a5, $ra
	vinsgr2vr.w	$vr10, $t4, 0
	vinsgr2vr.w	$vr10, $t8, 1
	vinsgr2vr.w	$vr10, $fp, 2
	vinsgr2vr.w	$vr10, $s1, 3
	vadd.w	$vr7, $vr7, $vr9
	vadd.w	$vr8, $vr8, $vr10
	addi.d	$t7, $t7, -8
	addi.d	$a0, $a0, 32
	addi.d	$t5, $t5, 32
	addi.d	$t6, $t6, 32
	bnez	$t7, .LBB8_21
# %bb.22:                               # %middle.block365
                                        #   in Loop: Header=BB8_18 Depth=1
	vadd.w	$vr7, $vr8, $vr7
	vshuf4i.w	$vr8, $vr7, 14
	vadd.w	$vr7, $vr7, $vr8
	vreplvei.w	$vr8, $vr7, 1
	vadd.w	$vr7, $vr7, $vr8
	vpickve2gr.w	$s7, $vr7, 0
	move	$t7, $t2
	ld.d	$s3, $sp, 136                   # 8-byte Folded Reload
	ori	$t8, $zero, 8
	beq	$t2, $s5, .LBB8_25
.LBB8_23:                               # %scalar.ph315.preheader
                                        #   in Loop: Header=BB8_18 Depth=1
	sub.d	$a0, $s5, $t7
	.p2align	4, , 16
.LBB8_24:                               # %scalar.ph315
                                        #   Parent Loop BB8_18 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.hu	$t4, $a2, 0
	ld.hu	$t5, $a3, 0
	mul.d	$t4, $t4, $a6
	mul.d	$t5, $t5, $a7
	add.d	$t4, $t4, $s2
	add.d	$t4, $t4, $t5
	sra.w	$t4, $t4, $s0
	add.w	$t4, $t4, $t1
	srai.d	$t5, $t4, 63
	andn	$t4, $t4, $t5
	slt	$t5, $t4, $t0
	ld.hu	$t6, $a1, 0
	maskeqz	$t4, $t4, $t5
	masknez	$t5, $t0, $t5
	or	$t4, $t4, $t5
	sub.w	$t4, $t6, $t4
	slli.d	$t4, $t4, 2
	ldx.w	$t4, $a5, $t4
	ld.hu	$t5, $a2, 2
	ld.hu	$t6, $a3, 2
	add.d	$t4, $t4, $s7
	mul.d	$t5, $t5, $a6
	mul.d	$t6, $t6, $a7
	add.d	$t5, $t5, $s2
	add.d	$t5, $t5, $t6
	sra.w	$t5, $t5, $s0
	add.w	$t5, $t5, $t1
	srai.d	$t6, $t5, 63
	andn	$t5, $t5, $t6
	slt	$t6, $t5, $t0
	maskeqz	$t5, $t5, $t6
	ld.hu	$t7, $a1, 2
	masknez	$t6, $t0, $t6
	or	$t5, $t5, $t6
	addi.d	$a2, $a2, 4
	sub.w	$t5, $t7, $t5
	slli.d	$t5, $t5, 2
	ldx.w	$t5, $a5, $t5
	addi.d	$a3, $a3, 4
	addi.d	$a1, $a1, 4
	addi.w	$a0, $a0, -1
	add.w	$s7, $t4, $t5
	bnez	$a0, .LBB8_24
.LBB8_25:                               # %._crit_edge.us154.us
                                        #   in Loop: Header=BB8_18 Depth=1
	bge	$s7, $s3, .LBB8_43
# %bb.26:                               #   in Loop: Header=BB8_18 Depth=1
	alsl.d	$t5, $s4, $a3, 1
	addi.w	$a4, $a4, 1
	alsl.d	$a0, $s4, $a2, 1
	move	$t6, $a1
	bne	$a4, $s6, .LBB8_18
	b	.LBB8_31
.LBB8_27:                               # %.loopexit104.split.us
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	st.d	$t7, $a0, %pc_lo12(ref2_line)
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	st.d	$t6, $a0, %pc_lo12(ref1_line)
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	st.d	$t5, $a0, %pc_lo12(src_line)
	b	.LBB8_47
.LBB8_28:                               # %.split.preheader
	ld.d	$s1, $sp, 24                    # 8-byte Folded Reload
	ld.w	$a0, $s1, %pc_lo12(bipred2_access_method)
	slli.d	$a0, $a0, 3
	pcalau12i	$a1, %pc_hi20(get_crline)
	addi.d	$fp, $a1, %pc_lo12(get_crline)
	ldx.d	$a3, $fp, $a0
	ld.d	$s0, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a0, $s0, 8
	ld.d	$s8, $sp, 32                    # 8-byte Folded Reload
	addi.d	$a1, $s8, 512
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	st.d	$a1, $a2, %pc_lo12(src_line)
	ld.d	$s6, $sp, 40                    # 8-byte Folded Reload
	move	$a1, $s6
	ld.d	$s5, $sp, 48                    # 8-byte Folded Reload
	move	$a2, $s5
	jirl	$ra, $a3, 0
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	ld.w	$a1, $a1, %pc_lo12(bipred1_access_method)
	slli.d	$a1, $a1, 3
	ldx.d	$a3, $fp, $a1
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a1, $a1, 8
	ld.d	$s2, $sp, 96                    # 8-byte Folded Reload
	st.d	$a0, $s2, %pc_lo12(ref2_line)
	move	$a0, $a1
	ld.d	$s4, $sp, 56                    # 8-byte Folded Reload
	move	$a1, $s4
	ld.d	$s3, $sp, 64                    # 8-byte Folded Reload
	move	$a2, $s3
	jirl	$ra, $a3, 0
	ld.w	$a1, $s1, %pc_lo12(bipred2_access_method)
	slli.d	$a1, $a1, 3
	ldx.d	$a3, $fp, $a1
	ld.d	$a1, $s0, 16
	ld.d	$s1, $sp, 88                    # 8-byte Folded Reload
	st.d	$a0, $s1, %pc_lo12(ref1_line)
	addi.d	$a0, $s8, 1024
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	st.d	$a0, $a2, %pc_lo12(src_line)
	move	$a0, $a1
	move	$a1, $s6
	move	$a2, $s5
	jirl	$ra, $a3, 0
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	ld.w	$a1, $a1, %pc_lo12(bipred1_access_method)
	slli.d	$a1, $a1, 3
	ldx.d	$a3, $fp, $a1
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a1, $a1, 16
	st.d	$a0, $s2, %pc_lo12(ref2_line)
	move	$a0, $a1
	move	$a1, $s4
	move	$a2, $s3
	jirl	$ra, $a3, 0
	b	.LBB8_46
.LBB8_29:                               # %.preheader.lr.ph.split.us170
	bge	$s7, $s3, .LBB8_47
# %bb.30:                               # %.preheader.us165.preheader
	st.d	$a2, $sp, 8                     # 8-byte Folded Spill
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	add.d	$t5, $t5, $a1
	add.d	$a0, $a0, $a1
.LBB8_31:                               # %._crit_edge152.us
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	ld.w	$a1, $a1, %pc_lo12(bipred2_access_method)
	ld.d	$s3, $sp, 96                    # 8-byte Folded Reload
	st.d	$t5, $s3, %pc_lo12(ref2_line)
	slli.d	$a1, $a1, 3
	ld.d	$s8, $sp, 120                   # 8-byte Folded Reload
	ldx.d	$a3, $s8, $a1
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a1, $a1, 16
	ld.d	$s1, $sp, 88                    # 8-byte Folded Reload
	st.d	$a0, $s1, %pc_lo12(ref1_line)
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	addi.d	$a0, $a0, 1024
	ld.d	$fp, $sp, 104                   # 8-byte Folded Reload
	st.d	$a0, $fp, %pc_lo12(src_line)
	move	$a0, $a1
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	jirl	$ra, $a3, 0
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	ld.w	$a1, $a1, %pc_lo12(bipred1_access_method)
	slli.d	$a1, $a1, 3
	ldx.d	$a3, $s8, $a1
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a1, $a1, 16
	st.d	$a0, $s3, %pc_lo12(ref2_line)
	move	$a0, $a1
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 64                    # 8-byte Folded Reload
	jirl	$ra, $a3, 0
	ld.d	$t5, $s3, %pc_lo12(ref2_line)
	st.d	$a0, $s1, %pc_lo12(ref1_line)
	blez	$s5, .LBB8_45
# %bb.32:                               # %.preheader.lr.ph.split.us.us.1
	pcalau12i	$a1, %got_pc_hi20(img)
	ld.d	$a1, $a1, %got_pc_lo12(img)
	move	$a4, $zero
	ld.d	$a2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$a5, $a2, 0
	ld.d	$a1, $a1, 0
	ld.d	$t6, $fp, %pc_lo12(src_line)
	pcalau12i	$a2, %pc_hi20(weight1_cr+2)
	ld.h	$a6, $a2, %pc_lo12(weight1_cr+2)
	pcalau12i	$a2, %pc_hi20(weight2_cr+2)
	ld.h	$a7, $a2, %pc_lo12(weight2_cr+2)
	lu12i.w	$a2, 3
	ori	$a2, $a2, 3236
	ldx.w	$t0, $a1, $a2
	pcalau12i	$a1, %pc_hi20(offsetBi_cr+2)
	ld.h	$t1, $a1, %pc_lo12(offsetBi_cr+2)
	bstrpick.d	$a1, $s5, 30, 3
	slli.d	$t2, $a1, 3
	slli.d	$t3, $a1, 5
	vreplgr2vr.w	$vr0, $a6
	vreplgr2vr.w	$vr1, $a7
	vreplgr2vr.w	$vr2, $s2
	vreplgr2vr.w	$vr3, $s0
	vreplgr2vr.w	$vr4, $t1
	vreplgr2vr.w	$vr5, $t0
	ori	$fp, $zero, 8
	vrepli.b	$vr6, 0
	ld.d	$t8, $sp, 136                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB8_33:                               # %.preheader.us.us.1
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_36 Depth 2
                                        #     Child Loop BB8_39 Depth 2
	bgeu	$s5, $fp, .LBB8_35
# %bb.34:                               #   in Loop: Header=BB8_33 Depth=1
	move	$t7, $zero
	move	$a2, $a0
	move	$a3, $t5
	move	$a1, $t6
	b	.LBB8_38
	.p2align	4, , 16
.LBB8_35:                               # %vector.ph375
                                        #   in Loop: Header=BB8_33 Depth=1
	add.d	$a2, $a0, $t3
	add.d	$a3, $t5, $t3
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	vld	$vr7, $a1, %pc_lo12(.LCPI8_0)
	add.d	$a1, $t6, $t3
	vinsgr2vr.w	$vr8, $s7, 0
	vinsgr2vr.w	$vr9, $zero, 0
	vshuf.w	$vr7, $vr9, $vr8
	addi.d	$a0, $a0, 16
	addi.d	$t5, $t5, 16
	addi.d	$t6, $t6, 16
	move	$t7, $t2
	vori.b	$vr8, $vr6, 0
	.p2align	4, , 16
.LBB8_36:                               # %vector.body391
                                        #   Parent Loop BB8_33 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.h	$t8, $a0, -4
	ld.h	$fp, $a0, -8
	ld.h	$s1, $a0, -12
	ld.h	$s3, $a0, -16
	st.h	$t8, $sp, 198
	st.h	$fp, $sp, 196
	st.h	$s1, $sp, 194
	st.h	$s3, $sp, 192
	vld	$vr9, $sp, 192
	ld.h	$t8, $a0, 12
	ld.h	$fp, $a0, 8
	ld.h	$s1, $a0, 4
	ld.h	$s3, $a0, 0
	st.h	$t8, $sp, 182
	st.h	$fp, $sp, 180
	st.h	$s1, $sp, 178
	st.h	$s3, $sp, 176
	vld	$vr10, $sp, 176
	ld.h	$t8, $t5, -4
	ld.h	$fp, $t5, -8
	ld.h	$s1, $t5, -12
	ld.h	$s3, $t5, -16
	st.h	$t8, $sp, 262
	st.h	$fp, $sp, 260
	st.h	$s1, $sp, 258
	st.h	$s3, $sp, 256
	vld	$vr11, $sp, 256
	ld.h	$t8, $t5, 12
	ld.h	$fp, $t5, 8
	ld.h	$s1, $t5, 4
	ld.h	$s3, $t5, 0
	st.h	$t8, $sp, 246
	st.h	$fp, $sp, 244
	st.h	$s1, $sp, 242
	st.h	$s3, $sp, 240
	vld	$vr12, $sp, 240
	vilvl.h	$vr9, $vr6, $vr9
	vilvl.h	$vr10, $vr6, $vr10
	vilvl.h	$vr11, $vr6, $vr11
	vilvl.h	$vr12, $vr6, $vr12
	vori.b	$vr13, $vr2, 0
	vmadd.w	$vr13, $vr0, $vr9
	vori.b	$vr9, $vr2, 0
	vmadd.w	$vr9, $vr0, $vr10
	vmadd.w	$vr13, $vr1, $vr11
	vmadd.w	$vr9, $vr1, $vr12
	vsra.w	$vr10, $vr13, $vr3
	vsra.w	$vr9, $vr9, $vr3
	vadd.w	$vr10, $vr10, $vr4
	vadd.w	$vr9, $vr9, $vr4
	vmaxi.w	$vr10, $vr10, 0
	vmaxi.w	$vr9, $vr9, 0
	ld.h	$t8, $t6, -4
	ld.h	$fp, $t6, -8
	ld.h	$s1, $t6, -12
	ld.h	$s3, $t6, -16
	st.h	$t8, $sp, 326
	st.h	$fp, $sp, 324
	st.h	$s1, $sp, 322
	st.h	$s3, $sp, 320
	vld	$vr11, $sp, 320
	ld.h	$t8, $t6, 12
	ld.h	$fp, $t6, 8
	ld.h	$s1, $t6, 4
	ld.h	$s3, $t6, 0
	st.h	$t8, $sp, 310
	st.h	$fp, $sp, 308
	st.h	$s1, $sp, 306
	st.h	$s3, $sp, 304
	vld	$vr12, $sp, 304
	vmin.w	$vr10, $vr10, $vr5
	vmin.w	$vr9, $vr9, $vr5
	vilvl.h	$vr11, $vr6, $vr11
	vilvl.h	$vr12, $vr6, $vr12
	vsub.w	$vr10, $vr11, $vr10
	vsub.w	$vr9, $vr12, $vr9
	vshuf4i.w	$vr11, $vr10, 50
	vslli.d	$vr11, $vr11, 32
	vsrai.d	$vr11, $vr11, 32
	vshuf4i.w	$vr10, $vr10, 16
	vslli.d	$vr10, $vr10, 32
	vsrai.d	$vr10, $vr10, 32
	vshuf4i.w	$vr12, $vr9, 50
	vslli.d	$vr12, $vr12, 32
	vsrai.d	$vr12, $vr12, 32
	vshuf4i.w	$vr9, $vr9, 16
	vslli.d	$vr9, $vr9, 32
	vsrai.d	$vr9, $vr9, 32
	vpickve2gr.d	$t8, $vr10, 0
	slli.d	$t8, $t8, 2
	vpickve2gr.d	$fp, $vr10, 1
	slli.d	$fp, $fp, 2
	vpickve2gr.d	$s1, $vr11, 0
	slli.d	$s1, $s1, 2
	vpickve2gr.d	$s3, $vr11, 1
	slli.d	$s3, $s3, 2
	vpickve2gr.d	$s7, $vr9, 0
	slli.d	$s7, $s7, 2
	vpickve2gr.d	$s8, $vr9, 1
	slli.d	$s8, $s8, 2
	vpickve2gr.d	$ra, $vr12, 0
	slli.d	$ra, $ra, 2
	vpickve2gr.d	$t4, $vr12, 1
	slli.d	$t4, $t4, 2
	ldx.w	$t8, $a5, $t8
	ldx.w	$fp, $a5, $fp
	ldx.w	$s1, $a5, $s1
	ldx.w	$s3, $a5, $s3
	vinsgr2vr.w	$vr9, $t8, 0
	vinsgr2vr.w	$vr9, $fp, 1
	vinsgr2vr.w	$vr9, $s1, 2
	vinsgr2vr.w	$vr9, $s3, 3
	ldx.w	$t8, $a5, $s7
	ldx.w	$fp, $a5, $s8
	ldx.w	$s1, $a5, $ra
	ldx.w	$t4, $a5, $t4
	vinsgr2vr.w	$vr10, $t8, 0
	vinsgr2vr.w	$vr10, $fp, 1
	vinsgr2vr.w	$vr10, $s1, 2
	vinsgr2vr.w	$vr10, $t4, 3
	vadd.w	$vr7, $vr9, $vr7
	vadd.w	$vr8, $vr10, $vr8
	ld.h	$t4, $a0, -2
	ld.h	$t8, $a0, -6
	ld.h	$fp, $a0, -10
	ld.h	$s1, $a0, -14
	st.h	$t4, $sp, 166
	st.h	$t8, $sp, 164
	st.h	$fp, $sp, 162
	st.h	$s1, $sp, 160
	vld	$vr9, $sp, 160
	ld.h	$t4, $a0, 14
	ld.h	$t8, $a0, 10
	ld.h	$fp, $a0, 6
	ld.h	$s1, $a0, 2
	st.h	$t4, $sp, 150
	st.h	$t8, $sp, 148
	st.h	$fp, $sp, 146
	st.h	$s1, $sp, 144
	vld	$vr10, $sp, 144
	ld.h	$t4, $t5, -2
	ld.h	$t8, $t5, -6
	ld.h	$fp, $t5, -10
	ld.h	$s1, $t5, -14
	st.h	$t4, $sp, 230
	st.h	$t8, $sp, 228
	st.h	$fp, $sp, 226
	st.h	$s1, $sp, 224
	vld	$vr11, $sp, 224
	ld.h	$t4, $t5, 14
	ld.h	$t8, $t5, 10
	ld.h	$fp, $t5, 6
	ld.h	$s1, $t5, 2
	st.h	$t4, $sp, 214
	st.h	$t8, $sp, 212
	st.h	$fp, $sp, 210
	st.h	$s1, $sp, 208
	vld	$vr12, $sp, 208
	vilvl.h	$vr9, $vr6, $vr9
	vilvl.h	$vr10, $vr6, $vr10
	vilvl.h	$vr11, $vr6, $vr11
	vilvl.h	$vr12, $vr6, $vr12
	vori.b	$vr13, $vr2, 0
	vmadd.w	$vr13, $vr0, $vr9
	vori.b	$vr9, $vr2, 0
	vmadd.w	$vr9, $vr0, $vr10
	vmadd.w	$vr13, $vr1, $vr11
	vmadd.w	$vr9, $vr1, $vr12
	vsra.w	$vr10, $vr13, $vr3
	vsra.w	$vr9, $vr9, $vr3
	vadd.w	$vr10, $vr10, $vr4
	vadd.w	$vr9, $vr9, $vr4
	vmaxi.w	$vr10, $vr10, 0
	vmaxi.w	$vr9, $vr9, 0
	ld.h	$t4, $t6, -2
	ld.h	$t8, $t6, -6
	ld.h	$fp, $t6, -10
	ld.h	$s1, $t6, -14
	st.h	$t4, $sp, 294
	st.h	$t8, $sp, 292
	st.h	$fp, $sp, 290
	st.h	$s1, $sp, 288
	vld	$vr11, $sp, 288
	ld.h	$t4, $t6, 14
	ld.h	$t8, $t6, 10
	ld.h	$fp, $t6, 6
	ld.h	$s1, $t6, 2
	st.h	$t4, $sp, 278
	st.h	$t8, $sp, 276
	st.h	$fp, $sp, 274
	st.h	$s1, $sp, 272
	vld	$vr12, $sp, 272
	vmin.w	$vr10, $vr10, $vr5
	vmin.w	$vr9, $vr9, $vr5
	vilvl.h	$vr11, $vr6, $vr11
	vilvl.h	$vr12, $vr6, $vr12
	vsub.w	$vr10, $vr11, $vr10
	vsub.w	$vr9, $vr12, $vr9
	vshuf4i.w	$vr11, $vr10, 50
	vslli.d	$vr11, $vr11, 32
	vsrai.d	$vr11, $vr11, 32
	vshuf4i.w	$vr10, $vr10, 16
	vslli.d	$vr10, $vr10, 32
	vsrai.d	$vr10, $vr10, 32
	vshuf4i.w	$vr12, $vr9, 50
	vslli.d	$vr12, $vr12, 32
	vsrai.d	$vr12, $vr12, 32
	vshuf4i.w	$vr9, $vr9, 16
	vslli.d	$vr9, $vr9, 32
	vsrai.d	$vr9, $vr9, 32
	vpickve2gr.d	$t4, $vr10, 0
	slli.d	$t4, $t4, 2
	vpickve2gr.d	$t8, $vr10, 1
	slli.d	$t8, $t8, 2
	vpickve2gr.d	$fp, $vr11, 0
	slli.d	$fp, $fp, 2
	vpickve2gr.d	$s1, $vr11, 1
	slli.d	$s1, $s1, 2
	vpickve2gr.d	$s3, $vr9, 0
	slli.d	$s3, $s3, 2
	vpickve2gr.d	$s7, $vr9, 1
	slli.d	$s7, $s7, 2
	vpickve2gr.d	$s8, $vr12, 0
	slli.d	$s8, $s8, 2
	vpickve2gr.d	$ra, $vr12, 1
	slli.d	$ra, $ra, 2
	ldx.w	$t4, $a5, $t4
	ldx.w	$t8, $a5, $t8
	ldx.w	$fp, $a5, $fp
	ldx.w	$s1, $a5, $s1
	vinsgr2vr.w	$vr9, $t4, 0
	vinsgr2vr.w	$vr9, $t8, 1
	vinsgr2vr.w	$vr9, $fp, 2
	vinsgr2vr.w	$vr9, $s1, 3
	ldx.w	$t4, $a5, $s3
	ldx.w	$t8, $a5, $s7
	ldx.w	$fp, $a5, $s8
	ldx.w	$s1, $a5, $ra
	vinsgr2vr.w	$vr10, $t4, 0
	vinsgr2vr.w	$vr10, $t8, 1
	vinsgr2vr.w	$vr10, $fp, 2
	vinsgr2vr.w	$vr10, $s1, 3
	vadd.w	$vr7, $vr7, $vr9
	vadd.w	$vr8, $vr8, $vr10
	addi.d	$t7, $t7, -8
	addi.d	$a0, $a0, 32
	addi.d	$t5, $t5, 32
	addi.d	$t6, $t6, 32
	bnez	$t7, .LBB8_36
# %bb.37:                               # %middle.block423
                                        #   in Loop: Header=BB8_33 Depth=1
	vadd.w	$vr7, $vr8, $vr7
	vshuf4i.w	$vr8, $vr7, 14
	vadd.w	$vr7, $vr7, $vr8
	vreplvei.w	$vr8, $vr7, 1
	vadd.w	$vr7, $vr7, $vr8
	vpickve2gr.w	$s7, $vr7, 0
	move	$t7, $t2
	ld.d	$t8, $sp, 136                   # 8-byte Folded Reload
	ori	$fp, $zero, 8
	beq	$t2, $s5, .LBB8_40
.LBB8_38:                               # %scalar.ph373.preheader
                                        #   in Loop: Header=BB8_33 Depth=1
	sub.d	$a0, $s5, $t7
	.p2align	4, , 16
.LBB8_39:                               # %scalar.ph373
                                        #   Parent Loop BB8_33 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.hu	$t4, $a2, 0
	ld.hu	$t5, $a3, 0
	mul.d	$t4, $t4, $a6
	mul.d	$t5, $t5, $a7
	add.d	$t4, $t4, $s2
	add.d	$t4, $t4, $t5
	sra.w	$t4, $t4, $s0
	add.w	$t4, $t4, $t1
	srai.d	$t5, $t4, 63
	andn	$t4, $t4, $t5
	slt	$t5, $t4, $t0
	ld.hu	$t6, $a1, 0
	maskeqz	$t4, $t4, $t5
	masknez	$t5, $t0, $t5
	or	$t4, $t4, $t5
	sub.w	$t4, $t6, $t4
	slli.d	$t4, $t4, 2
	ldx.w	$t4, $a5, $t4
	ld.hu	$t5, $a2, 2
	ld.hu	$t6, $a3, 2
	add.d	$t4, $t4, $s7
	mul.d	$t5, $t5, $a6
	mul.d	$t6, $t6, $a7
	add.d	$t5, $t5, $s2
	add.d	$t5, $t5, $t6
	sra.w	$t5, $t5, $s0
	add.w	$t5, $t5, $t1
	srai.d	$t6, $t5, 63
	andn	$t5, $t5, $t6
	slt	$t6, $t5, $t0
	maskeqz	$t5, $t5, $t6
	ld.hu	$t7, $a1, 2
	masknez	$t6, $t0, $t6
	or	$t5, $t5, $t6
	addi.d	$a2, $a2, 4
	sub.w	$t5, $t7, $t5
	slli.d	$t5, $t5, 2
	ldx.w	$t5, $a5, $t5
	addi.d	$a3, $a3, 4
	addi.d	$a1, $a1, 4
	addi.w	$a0, $a0, -1
	add.w	$s7, $t4, $t5
	bnez	$a0, .LBB8_39
.LBB8_40:                               # %._crit_edge.us154.us.1
                                        #   in Loop: Header=BB8_33 Depth=1
	bge	$s7, $t8, .LBB8_43
# %bb.41:                               #   in Loop: Header=BB8_33 Depth=1
	alsl.d	$t5, $s4, $a3, 1
	addi.w	$a4, $a4, 1
	alsl.d	$a0, $s4, $a2, 1
	move	$t6, $a1
	bne	$a4, $s6, .LBB8_33
# %bb.42:                               # %._crit_edge152.split.us.us.1
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	st.d	$t5, $a2, %pc_lo12(ref2_line)
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
	st.d	$a0, $a2, %pc_lo12(ref1_line)
	b	.LBB8_44
.LBB8_43:                               # %.loopexit.split.us
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	st.d	$a3, $a0, %pc_lo12(ref2_line)
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	st.d	$a2, $a0, %pc_lo12(ref1_line)
.LBB8_44:                               # %.loopexit
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	st.d	$a1, $a0, %pc_lo12(src_line)
	b	.LBB8_47
.LBB8_45:                               # %.preheader.us165.preheader.1
	ld.d	$a3, $sp, 112                   # 8-byte Folded Reload
	add.d	$a1, $t5, $a3
	add.d	$a0, $a0, $a3
	st.d	$a1, $s3, %pc_lo12(ref2_line)
.LBB8_46:                               # %.loopexit
	st.d	$a0, $s1, %pc_lo12(ref1_line)
.LBB8_47:                               # %.loopexit
	move	$a0, $s7
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
.Lfunc_end8:
	.size	computeBiPredSAD2, .Lfunc_end8-computeBiPredSAD2
                                        # -- End function
	.globl	computeSATD                     # -- Begin function computeSATD
	.p2align	5
	.type	computeSATD,@function
computeSATD:                            # @computeSATD
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
	pcalau12i	$a6, %pc_hi20(test8x8transform)
	ld.w	$a6, $a6, %pc_lo12(test8x8transform)
	st.d	$a3, $sp, 88                    # 8-byte Folded Spill
	slli.w	$a3, $a1, 2
	st.d	$a5, $sp, 96                    # 8-byte Folded Spill
	alsl.w	$a5, $a1, $a5, 2
	st.d	$a2, $sp, 80                    # 8-byte Folded Spill
	ori	$a1, $zero, 1
	move	$s4, $zero
	beqz	$a6, .LBB9_8
# %bb.1:
	blt	$a3, $a1, .LBB9_15
# %bb.2:                                # %.preheader78.lr.ph
	blt	$a2, $a1, .LBB9_15
# %bb.3:                                # %.preheader78.us.preheader
	slli.w	$a3, $a2, 3
	pcalau12i	$a1, %pc_hi20(img_padded_size_x)
	ld.w	$s8, $a1, %pc_lo12(img_padded_size_x)
	slli.d	$a1, $a3, 1
	st.d	$a1, $sp, 0                     # 8-byte Folded Spill
	slli.d	$s7, $a2, 1
	pcalau12i	$a1, %pc_hi20(ref_access_method)
	st.d	$a1, $sp, 72                    # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(get_line)
	addi.d	$a1, $a1, %pc_lo12(get_line)
	st.d	$a1, $sp, 64                    # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(ref_pic_sub)
	st.d	$a1, $sp, 56                    # 8-byte Folded Spill
	pcalau12i	$s3, %pc_hi20(ref_line)
	pcalau12i	$s0, %pc_hi20(src_line)
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 32                   # 16-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(diff)
	addi.d	$s5, $a1, %pc_lo12(diff)
	slli.d	$s1, $s8, 1
	st.d	$a4, $sp, 16                    # 8-byte Folded Spill
	st.d	$a5, $sp, 8                     # 8-byte Folded Spill
.LBB9_4:                                # %.preheader78.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_5 Depth 2
	move	$s2, $zero
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	move	$fp, $a0
	move	$s6, $a4
	.p2align	4, , 16
.LBB9_5:                                #   Parent Loop BB9_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(ref_access_method)
	slli.d	$a0, $a0, 3
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	ldx.d	$a3, $a1, $a0
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(ref_pic_sub)
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	move	$a2, $s6
	jirl	$ra, $a3, 0
	ld.d	$a1, $fp, 0
	st.d	$a0, $s3, %pc_lo12(ref_line)
	ld.d	$a2, $a0, 0
	st.d	$fp, $s0, %pc_lo12(src_line)
	vinsgr2vr.d	$vr0, $a1, 0
	vld	$vr2, $sp, 32                   # 16-byte Folded Reload
	vilvl.h	$vr0, $vr2, $vr0
	vinsgr2vr.d	$vr1, $a2, 0
	vilvl.h	$vr1, $vr2, $vr1
	vsub.w	$vr0, $vr0, $vr1
	ld.d	$a1, $fp, 8
	vst	$vr0, $s5, 0
	ld.d	$a2, $a0, 8
	alsl.d	$a3, $s8, $a0, 1
	vinsgr2vr.d	$vr0, $a1, 0
	vilvl.h	$vr0, $vr2, $vr0
	vinsgr2vr.d	$vr1, $a2, 0
	vilvl.h	$vr1, $vr2, $vr1
	vsub.w	$vr0, $vr0, $vr1
	vst	$vr0, $s5, 16
	ldx.d	$a1, $fp, $s7
	alsl.d	$a2, $s8, $a3, 1
	ldx.d	$a0, $a0, $s1
	add.d	$a4, $fp, $s7
	vinsgr2vr.d	$vr0, $a1, 0
	vilvl.h	$vr0, $vr2, $vr0
	vinsgr2vr.d	$vr1, $a0, 0
	vilvl.h	$vr1, $vr2, $vr1
	ld.d	$a0, $a4, 8
	vsub.w	$vr0, $vr0, $vr1
	ld.d	$a1, $a3, 8
	vst	$vr0, $s5, 32
	vinsgr2vr.d	$vr0, $a0, 0
	vilvl.h	$vr0, $vr2, $vr0
	vinsgr2vr.d	$vr1, $a1, 0
	vilvl.h	$vr1, $vr2, $vr1
	vsub.w	$vr0, $vr0, $vr1
	vst	$vr0, $s5, 48
	ldx.d	$a0, $a4, $s7
	alsl.d	$a1, $s8, $a2, 1
	ldx.d	$a3, $a3, $s1
	add.d	$a4, $a4, $s7
	vinsgr2vr.d	$vr0, $a0, 0
	vilvl.h	$vr0, $vr2, $vr0
	vinsgr2vr.d	$vr1, $a3, 0
	vilvl.h	$vr1, $vr2, $vr1
	ld.d	$a0, $a4, 8
	vsub.w	$vr0, $vr0, $vr1
	ld.d	$a3, $a2, 8
	vst	$vr0, $s5, 64
	vinsgr2vr.d	$vr0, $a0, 0
	vilvl.h	$vr0, $vr2, $vr0
	vinsgr2vr.d	$vr1, $a3, 0
	vilvl.h	$vr1, $vr2, $vr1
	vsub.w	$vr0, $vr0, $vr1
	vst	$vr0, $s5, 80
	ldx.d	$a0, $a4, $s7
	alsl.d	$a3, $s8, $a1, 1
	ldx.d	$a2, $a2, $s1
	add.d	$a4, $a4, $s7
	vinsgr2vr.d	$vr0, $a0, 0
	vilvl.h	$vr0, $vr2, $vr0
	vinsgr2vr.d	$vr1, $a2, 0
	vilvl.h	$vr1, $vr2, $vr1
	ld.d	$a0, $a4, 8
	vsub.w	$vr0, $vr0, $vr1
	ld.d	$a2, $a1, 8
	vst	$vr0, $s5, 96
	vinsgr2vr.d	$vr0, $a0, 0
	vilvl.h	$vr0, $vr2, $vr0
	vinsgr2vr.d	$vr1, $a2, 0
	vilvl.h	$vr1, $vr2, $vr1
	vsub.w	$vr0, $vr0, $vr1
	vst	$vr0, $s5, 112
	ldx.d	$a0, $a4, $s7
	addi.d	$a2, $a3, 16
	ldx.d	$a1, $a1, $s1
	add.d	$a4, $a4, $s7
	vinsgr2vr.d	$vr0, $a0, 0
	vilvl.h	$vr0, $vr2, $vr0
	vinsgr2vr.d	$vr1, $a1, 0
	vilvl.h	$vr1, $vr2, $vr1
	ld.d	$a0, $a4, 8
	vsub.w	$vr0, $vr0, $vr1
	ld.d	$a1, $a3, 8
	vst	$vr0, $s5, 128
	vinsgr2vr.d	$vr0, $a0, 0
	vilvl.h	$vr0, $vr2, $vr0
	vinsgr2vr.d	$vr1, $a1, 0
	vilvl.h	$vr1, $vr2, $vr1
	vsub.w	$vr0, $vr0, $vr1
	vst	$vr0, $s5, 144
	ldx.d	$a0, $a4, $s7
	alsl.d	$a1, $s8, $a2, 1
	ld.d	$a2, $a1, -16
	add.d	$a3, $a4, $s7
	vinsgr2vr.d	$vr0, $a0, 0
	vilvl.h	$vr0, $vr2, $vr0
	vinsgr2vr.d	$vr1, $a2, 0
	vilvl.h	$vr1, $vr2, $vr1
	ld.d	$a0, $a3, 8
	vsub.w	$vr0, $vr0, $vr1
	ld.d	$a2, $a1, -8
	vst	$vr0, $s5, 160
	vinsgr2vr.d	$vr0, $a0, 0
	vilvl.h	$vr0, $vr2, $vr0
	vinsgr2vr.d	$vr1, $a2, 0
	vilvl.h	$vr1, $vr2, $vr1
	vsub.w	$vr0, $vr0, $vr1
	vst	$vr0, $s5, 176
	ldx.d	$a0, $a3, $s7
	alsl.d	$a1, $s8, $a1, 1
	ld.d	$a2, $a1, -16
	add.d	$a3, $a3, $s7
	vinsgr2vr.d	$vr0, $a0, 0
	vilvl.h	$vr0, $vr2, $vr0
	vinsgr2vr.d	$vr1, $a2, 0
	vilvl.h	$vr1, $vr2, $vr1
	ld.d	$a0, $a3, 8
	vsub.w	$vr0, $vr0, $vr1
	ld.d	$a2, $a1, -8
	vst	$vr0, $s5, 192
	vinsgr2vr.d	$vr0, $a0, 0
	vilvl.h	$vr0, $vr2, $vr0
	vinsgr2vr.d	$vr1, $a2, 0
	vilvl.h	$vr1, $vr2, $vr1
	vsub.w	$vr0, $vr0, $vr1
	vst	$vr0, $s5, 208
	ldx.d	$a0, $a3, $s7
	alsl.d	$a1, $s8, $a1, 1
	ld.d	$a2, $a1, -16
	add.d	$a3, $a3, $s7
	vinsgr2vr.d	$vr0, $a0, 0
	vilvl.h	$vr0, $vr2, $vr0
	vinsgr2vr.d	$vr1, $a2, 0
	vilvl.h	$vr1, $vr2, $vr1
	ld.d	$a0, $a3, 8
	vsub.w	$vr0, $vr0, $vr1
	ld.d	$a2, $a1, -8
	vst	$vr0, $s5, 224
	vinsgr2vr.d	$vr0, $a0, 0
	vilvl.h	$vr0, $vr2, $vr0
	vinsgr2vr.d	$vr1, $a2, 0
	vilvl.h	$vr1, $vr2, $vr1
	vsub.w	$vr0, $vr0, $vr1
	vst	$vr0, $s5, 240
	alsl.d	$a0, $s8, $a1, 1
	addi.d	$a0, $a0, -16
	add.d	$a1, $a3, $s7
	st.d	$a1, $s0, %pc_lo12(src_line)
	st.d	$a0, $s3, %pc_lo12(ref_line)
	move	$a0, $s5
	pcaddu18i	$ra, %call36(HadamardSAD8x8)
	jirl	$ra, $ra, 0
	add.w	$s4, $a0, $s4
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	blt	$a0, $s4, .LBB9_15
# %bb.6:                                #   in Loop: Header=BB9_5 Depth=2
	addi.w	$s6, $s6, 32
	addi.w	$s2, $s2, 8
	addi.d	$fp, $fp, 16
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	blt	$s2, $a0, .LBB9_5
# %bb.7:                                # %._crit_edge.us
                                        #   in Loop: Header=BB9_4 Depth=1
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	addi.w	$a1, $a1, 32
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 0                     # 8-byte Folded Reload
	add.d	$a0, $a0, $a2
	st.d	$a1, $sp, 96                    # 8-byte Folded Spill
	ld.d	$a4, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a5, $sp, 8                     # 8-byte Folded Reload
	blt	$a1, $a5, .LBB9_4
	b	.LBB9_15
.LBB9_8:
	blt	$a3, $a1, .LBB9_15
# %bb.9:                                # %.preheader.lr.ph
	blt	$a2, $a1, .LBB9_15
# %bb.10:                               # %.preheader.us.preheader
	slli.w	$a3, $a2, 2
	pcalau12i	$a1, %pc_hi20(img_padded_size_x)
	ld.w	$fp, $a1, %pc_lo12(img_padded_size_x)
	slli.d	$a1, $a3, 1
	st.d	$a1, $sp, 0                     # 8-byte Folded Spill
	slli.d	$s1, $a2, 1
	pcalau12i	$a1, %pc_hi20(ref_access_method)
	st.d	$a1, $sp, 72                    # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(get_line)
	addi.d	$a1, $a1, %pc_lo12(get_line)
	st.d	$a1, $sp, 64                    # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(ref_pic_sub)
	st.d	$a1, $sp, 56                    # 8-byte Folded Spill
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 32                   # 16-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(diff)
	addi.d	$s5, $a1, %pc_lo12(diff)
	slli.d	$s8, $fp, 1
	pcalau12i	$s0, %pc_hi20(src_line)
	pcalau12i	$s2, %pc_hi20(ref_line)
	st.d	$a4, $sp, 16                    # 8-byte Folded Spill
	st.d	$a5, $sp, 8                     # 8-byte Folded Spill
.LBB9_11:                               # %.preheader.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_12 Depth 2
	move	$s3, $zero
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	move	$s7, $a0
	move	$s6, $a4
	.p2align	4, , 16
.LBB9_12:                               #   Parent Loop BB9_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(ref_access_method)
	slli.d	$a0, $a0, 3
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	ldx.d	$a3, $a1, $a0
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(ref_pic_sub)
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	move	$a2, $s6
	jirl	$ra, $a3, 0
	ld.d	$a1, $s7, 0
	ld.d	$a2, $a0, 0
	alsl.d	$a3, $fp, $a0, 1
	vinsgr2vr.d	$vr0, $a1, 0
	vld	$vr2, $sp, 32                   # 16-byte Folded Reload
	vilvl.h	$vr0, $vr2, $vr0
	vinsgr2vr.d	$vr1, $a2, 0
	vilvl.h	$vr1, $vr2, $vr1
	vsub.w	$vr0, $vr0, $vr1
	vst	$vr0, $s5, 0
	ldx.d	$a1, $s7, $s1
	alsl.d	$a2, $fp, $a3, 1
	ldx.d	$a0, $a0, $s8
	add.d	$a4, $s7, $s1
	vinsgr2vr.d	$vr0, $a1, 0
	vilvl.h	$vr0, $vr2, $vr0
	vinsgr2vr.d	$vr1, $a0, 0
	vilvl.h	$vr1, $vr2, $vr1
	vsub.w	$vr0, $vr0, $vr1
	vst	$vr0, $s5, 16
	ldx.d	$a0, $a4, $s1
	alsl.d	$a1, $fp, $a2, 1
	ldx.d	$a3, $a3, $s8
	add.d	$a4, $a4, $s1
	vinsgr2vr.d	$vr0, $a0, 0
	vilvl.h	$vr0, $vr2, $vr0
	vinsgr2vr.d	$vr1, $a3, 0
	vilvl.h	$vr1, $vr2, $vr1
	vsub.w	$vr0, $vr0, $vr1
	vst	$vr0, $s5, 32
	ldx.d	$a0, $a4, $s1
	alsl.d	$a1, $fp, $a1, 1
	ldx.d	$a2, $a2, $s8
	add.d	$a3, $a4, $s1
	vinsgr2vr.d	$vr0, $a0, 0
	vilvl.h	$vr0, $vr2, $vr0
	vinsgr2vr.d	$vr1, $a2, 0
	vilvl.h	$vr1, $vr2, $vr1
	vsub.w	$vr0, $vr0, $vr1
	vst	$vr0, $s5, 48
	add.d	$a0, $a3, $s1
	st.d	$a0, $s0, %pc_lo12(src_line)
	st.d	$a1, $s2, %pc_lo12(ref_line)
	move	$a0, $s5
	pcaddu18i	$ra, %call36(HadamardSAD4x4)
	jirl	$ra, $ra, 0
	add.w	$s4, $a0, $s4
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	blt	$a0, $s4, .LBB9_15
# %bb.13:                               #   in Loop: Header=BB9_12 Depth=2
	addi.w	$s6, $s6, 16
	addi.w	$s3, $s3, 4
	addi.d	$s7, $s7, 8
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	blt	$s3, $a0, .LBB9_12
# %bb.14:                               # %._crit_edge.us109
                                        #   in Loop: Header=BB9_11 Depth=1
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	addi.w	$a1, $a1, 16
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 0                     # 8-byte Folded Reload
	add.d	$a0, $a0, $a2
	st.d	$a1, $sp, 96                    # 8-byte Folded Spill
	ld.d	$a4, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a5, $sp, 8                     # 8-byte Folded Reload
	blt	$a1, $a5, .LBB9_11
.LBB9_15:                               # %.loopexit
	move	$a0, $s4
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
	ori	$a1, $zero, 1
	beqz	$a6, .LBB10_11
# %bb.1:
	blt	$a0, $a1, .LBB10_10
# %bb.2:                                # %.preheader90.lr.ph
	blt	$a2, $a1, .LBB10_10
# %bb.3:                                # %.preheader90.us.preheader
	pcalau12i	$a0, %pc_hi20(img_padded_size_x)
	ld.w	$a0, $a0, %pc_lo12(img_padded_size_x)
	move	$s4, $zero
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
	move	$s4, $zero
	b	.LBB10_18
.LBB10_11:
	move	$s4, $zero
	blt	$a0, $a1, .LBB10_18
# %bb.12:                               # %.preheader.lr.ph
	blt	$a2, $a1, .LBB10_18
# %bb.13:                               # %.preheader.us.preheader
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
	slli.d	$s3, $s8, 1
	pcalau12i	$a0, %pc_hi20(ref_line)
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(src_line)
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	st.d	$a4, $sp, 16                    # 8-byte Folded Spill
.LBB10_14:                              # %.preheader.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_15 Depth 2
	move	$s0, $zero
	move	$fp, $a3
	move	$s1, $a3
	ld.d	$s6, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 104                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB10_15:                              #   Parent Loop BB10_14 Depth=1
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
	or	$a7, $a7, $t0
	ld.hu	$t2, $a0, 6
	sub.d	$a7, $t1, $a7
	st.w	$a7, $s5, 8
	alsl.d	$t0, $s8, $a0, 1
	mul.d	$a7, $a1, $t2
	add.d	$a7, $a7, $a2
	sra.w	$a7, $a7, $a3
	add.w	$a7, $a7, $a4
	srai.d	$t1, $a7, 63
	andn	$a7, $a7, $t1
	slt	$t1, $a7, $a6
	maskeqz	$a7, $a7, $t1
	ld.hu	$t2, $s1, 6
	masknez	$t1, $a6, $t1
	ldx.hu	$a0, $a0, $s3
	or	$a7, $a7, $t1
	sub.d	$a7, $t2, $a7
	st.w	$a7, $s5, 12
	mul.d	$a0, $a1, $a0
	add.d	$a0, $a0, $a2
	sra.w	$a0, $a0, $a3
	add.w	$a0, $a0, $a4
	srai.d	$a7, $a0, 63
	andn	$a0, $a0, $a7
	slt	$a7, $a0, $a6
	maskeqz	$a0, $a0, $a7
	masknez	$a7, $a6, $a7
	ldx.hu	$t2, $s1, $s7
	or	$a0, $a0, $a7
	ld.hu	$a7, $t0, 2
	add.d	$t1, $s1, $s7
	sub.d	$a0, $t2, $a0
	st.w	$a0, $s5, 16
	mul.d	$a0, $a1, $a7
	add.d	$a0, $a0, $a2
	sra.w	$a0, $a0, $a3
	add.w	$a0, $a0, $a4
	srai.d	$a7, $a0, 63
	andn	$a0, $a0, $a7
	slt	$a7, $a0, $a6
	maskeqz	$a0, $a0, $a7
	masknez	$a7, $a6, $a7
	ld.hu	$t2, $t1, 2
	or	$a0, $a0, $a7
	ld.hu	$t3, $t0, 4
	alsl.d	$a7, $s8, $t0, 1
	sub.d	$a0, $t2, $a0
	st.w	$a0, $s5, 20
	mul.d	$a0, $a1, $t3
	add.d	$a0, $a0, $a2
	sra.w	$a0, $a0, $a3
	add.w	$a0, $a0, $a4
	srai.d	$t2, $a0, 63
	andn	$a0, $a0, $t2
	slt	$t2, $a0, $a6
	maskeqz	$a0, $a0, $t2
	ld.hu	$t3, $t1, 4
	masknez	$a6, $a6, $t2
	or	$a0, $a0, $a6
	ld.hu	$a6, $t0, 6
	sub.d	$a0, $t3, $a0
	st.w	$a0, $s5, 24
	ldptr.w	$a0, $a5, 15520
	mul.d	$a6, $a1, $a6
	add.d	$a6, $a6, $a2
	sra.w	$a6, $a6, $a3
	add.w	$a6, $a6, $a4
	srai.d	$t2, $a6, 63
	andn	$a6, $a6, $t2
	slt	$t2, $a6, $a0
	maskeqz	$a6, $a6, $t2
	ld.hu	$t3, $t1, 6
	masknez	$t2, $a0, $t2
	ldx.hu	$t0, $t0, $s3
	or	$a6, $a6, $t2
	sub.d	$a6, $t3, $a6
	st.w	$a6, $s5, 28
	mul.d	$a6, $a1, $t0
	add.d	$a6, $a6, $a2
	sra.w	$a6, $a6, $a3
	add.w	$a6, $a6, $a4
	srai.d	$t0, $a6, 63
	andn	$a6, $a6, $t0
	slt	$t0, $a6, $a0
	maskeqz	$a6, $a6, $t0
	masknez	$t0, $a0, $t0
	ldx.hu	$t2, $t1, $s7
	or	$t0, $a6, $t0
	ld.hu	$t3, $a7, 2
	add.d	$a6, $t1, $s7
	sub.d	$t0, $t2, $t0
	st.w	$t0, $s5, 32
	mul.d	$t0, $a1, $t3
	add.d	$t0, $t0, $a2
	sra.w	$t0, $t0, $a3
	add.w	$t0, $t0, $a4
	srai.d	$t1, $t0, 63
	andn	$t0, $t0, $t1
	slt	$t1, $t0, $a0
	maskeqz	$t0, $t0, $t1
	ld.hu	$t2, $a6, 2
	masknez	$t1, $a0, $t1
	ld.hu	$t3, $a7, 4
	or	$t0, $t0, $t1
	sub.d	$t0, $t2, $t0
	st.w	$t0, $s5, 36
	mul.d	$t0, $a1, $t3
	add.d	$t0, $t0, $a2
	sra.w	$t0, $t0, $a3
	add.w	$t0, $t0, $a4
	srai.d	$t1, $t0, 63
	andn	$t0, $t0, $t1
	slt	$t1, $t0, $a0
	maskeqz	$t0, $t0, $t1
	ld.hu	$t2, $a6, 4
	masknez	$t1, $a0, $t1
	ld.hu	$t3, $a7, 6
	or	$t0, $t0, $t1
	sub.d	$t0, $t2, $t0
	st.w	$t0, $s5, 40
	mul.d	$t0, $a1, $t3
	add.d	$t0, $t0, $a2
	sra.w	$t0, $t0, $a3
	add.w	$t0, $t0, $a4
	srai.d	$t1, $t0, 63
	andn	$t0, $t0, $t1
	slt	$t1, $t0, $a0
	maskeqz	$t0, $t0, $t1
	masknez	$t1, $a0, $t1
	ld.hu	$t2, $a6, 6
	or	$t0, $t0, $t1
	ldx.hu	$t1, $a7, $s3
	alsl.d	$a7, $s8, $a7, 1
	sub.d	$t0, $t2, $t0
	st.w	$t0, $s5, 44
	mul.d	$t0, $a1, $t1
	add.d	$t0, $t0, $a2
	sra.w	$t0, $t0, $a3
	add.w	$t0, $t0, $a4
	srai.d	$t1, $t0, 63
	andn	$t0, $t0, $t1
	slt	$t1, $t0, $a0
	maskeqz	$t0, $t0, $t1
	masknez	$t1, $a0, $t1
	ldx.hu	$t2, $a6, $s7
	or	$t0, $t0, $t1
	ld.hu	$t1, $a7, 2
	add.d	$a6, $a6, $s7
	sub.d	$t0, $t2, $t0
	st.w	$t0, $s5, 48
	mul.d	$t0, $a1, $t1
	add.d	$t0, $t0, $a2
	sra.w	$t0, $t0, $a3
	add.w	$t0, $t0, $a4
	srai.d	$t1, $t0, 63
	andn	$t0, $t0, $t1
	slt	$t1, $t0, $a0
	maskeqz	$t0, $t0, $t1
	masknez	$a0, $a0, $t1
	ld.hu	$t1, $a6, 2
	addi.d	$t2, $a7, 8
	or	$a0, $t0, $a0
	ld.hu	$t0, $a7, 4
	sub.d	$a0, $t1, $a0
	st.w	$a0, $s5, 52
	ldptr.w	$a0, $a5, 15520
	mul.d	$a5, $a1, $t0
	add.d	$a5, $a5, $a2
	sra.w	$a5, $a5, $a3
	add.w	$a5, $a5, $a4
	srai.d	$t0, $a5, 63
	andn	$a5, $a5, $t0
	slt	$t0, $a5, $a0
	maskeqz	$a5, $a5, $t0
	ld.hu	$t1, $a6, 4
	masknez	$t0, $a0, $t0
	ld.hu	$a7, $a7, 6
	or	$a5, $a5, $t0
	sub.d	$a5, $t1, $a5
	st.w	$a5, $s5, 56
	mul.d	$a1, $a1, $a7
	add.d	$a1, $a1, $a2
	sra.w	$a1, $a1, $a3
	add.w	$a1, $a1, $a4
	srai.d	$a2, $a1, 63
	andn	$a1, $a1, $a2
	slt	$a2, $a1, $a0
	ld.hu	$a3, $a6, 6
	maskeqz	$a1, $a1, $a2
	masknez	$a0, $a0, $a2
	or	$a0, $a1, $a0
	sub.d	$a0, $a3, $a0
	st.w	$a0, $s5, 60
	alsl.d	$a0, $s8, $t2, 1
	addi.d	$a0, $a0, -8
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(ref_line)
	add.d	$a0, $a6, $s7
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(src_line)
	move	$a0, $s5
	pcaddu18i	$ra, %call36(HadamardSAD4x4)
	jirl	$ra, $ra, 0
	add.w	$s4, $a0, $s4
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	blt	$a0, $s4, .LBB10_18
# %bb.16:                               #   in Loop: Header=BB10_15 Depth=2
	addi.w	$s6, $s6, 16
	addi.w	$s0, $s0, 4
	addi.d	$s1, $s1, 8
	blt	$s0, $s2, .LBB10_15
# %bb.17:                               # %._crit_edge.us121
                                        #   in Loop: Header=BB10_14 Depth=1
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	addi.w	$a0, $a0, 16
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	add.d	$a3, $fp, $a1
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	ld.d	$a4, $sp, 16                    # 8-byte Folded Reload
	blt	$a0, $a4, .LBB10_14
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
	addi.d	$sp, $sp, -272
	st.d	$ra, $sp, 264                   # 8-byte Folded Spill
	st.d	$fp, $sp, 256                   # 8-byte Folded Spill
	st.d	$s0, $sp, 248                   # 8-byte Folded Spill
	st.d	$s1, $sp, 240                   # 8-byte Folded Spill
	st.d	$s2, $sp, 232                   # 8-byte Folded Spill
	st.d	$s3, $sp, 224                   # 8-byte Folded Spill
	st.d	$s4, $sp, 216                   # 8-byte Folded Spill
	st.d	$s5, $sp, 208                   # 8-byte Folded Spill
	st.d	$s6, $sp, 200                   # 8-byte Folded Spill
	st.d	$s7, $sp, 192                   # 8-byte Folded Spill
	st.d	$s8, $sp, 184                   # 8-byte Folded Spill
	pcalau12i	$t0, %pc_hi20(test8x8transform)
	ld.w	$t0, $t0, %pc_lo12(test8x8transform)
	st.d	$a3, $sp, 176                   # 8-byte Folded Spill
	move	$s4, $a2
	move	$s1, $a0
	beqz	$t0, .LBB11_8
# %bb.1:
	ori	$a0, $zero, 1
	blt	$a1, $a0, .LBB11_15
# %bb.2:                                # %.lr.ph118
	blt	$s4, $a0, .LBB11_15
# %bb.3:                                # %.lr.ph.us.preheader
	pcalau12i	$a0, %pc_hi20(img_padded_size_x)
	ld.w	$a0, $a0, %pc_lo12(img_padded_size_x)
	move	$s6, $zero
	move	$t0, $zero
	slli.w	$a2, $s4, 3
	addi.w	$s5, $a0, -8
	slli.d	$a0, $a2, 1
	st.d	$a0, $sp, 0                     # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(src_line)
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(bipred2_access_method)
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(get_line)
	addi.d	$a0, $a0, %pc_lo12(get_line)
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(ref_pic2_sub)
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(ref2_line)
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(bipred1_access_method)
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(ref_pic1_sub)
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 80                   # 16-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(diff)
	addi.d	$s7, $a0, %pc_lo12(diff)
	slli.d	$a0, $s4, 1
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(ref1_line)
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	st.d	$a1, $sp, 8                     # 8-byte Folded Spill
	st.d	$a7, $sp, 48                    # 8-byte Folded Spill
	st.d	$a6, $sp, 40                    # 8-byte Folded Spill
	st.d	$a5, $sp, 32                    # 8-byte Folded Spill
	st.d	$a4, $sp, 24                    # 8-byte Folded Spill
.LBB11_4:                               # %.lr.ph.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_5 Depth 2
	move	$s3, $zero
	alsl.w	$a0, $t0, $a7, 2
	st.d	$a0, $sp, 168                   # 8-byte Folded Spill
	st.d	$t0, $sp, 16                    # 8-byte Folded Spill
	alsl.w	$a0, $t0, $a5, 2
	st.d	$a0, $sp, 160                   # 8-byte Folded Spill
	st.d	$s1, $sp, 56                    # 8-byte Folded Spill
	move	$s0, $a6
	move	$s2, $a4
	.p2align	4, , 16
.LBB11_5:                               #   Parent Loop BB11_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(bipred2_access_method)
	slli.d	$a0, $a0, 3
	ld.d	$fp, $sp, 136                   # 8-byte Folded Reload
	ldx.d	$a3, $fp, $a0
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(ref_pic2_sub)
	ld.d	$s8, $sp, 152                   # 8-byte Folded Reload
	st.d	$s1, $s8, %pc_lo12(src_line)
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	move	$a2, $s0
	jirl	$ra, $a3, 0
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	ld.w	$a1, $a1, %pc_lo12(bipred1_access_method)
	slli.d	$a1, $a1, 3
	ldx.d	$a3, $fp, $a1
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(ref_pic1_sub)
	ld.d	$fp, $sp, 120                   # 8-byte Folded Reload
	st.d	$a0, $fp, %pc_lo12(ref2_line)
	move	$a0, $a1
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	move	$a2, $s2
	jirl	$ra, $a3, 0
	ld.d	$a2, $s8, %pc_lo12(src_line)
	ld.d	$a3, $fp, %pc_lo12(ref2_line)
	ld.d	$a1, $a2, 0
	ld.d	$a4, $a0, 0
	ld.d	$a5, $a3, 0
	vinsgr2vr.d	$vr0, $a1, 0
	vld	$vr4, $sp, 80                   # 16-byte Folded Reload
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
	alsl.d	$a1, $s4, $a2, 1
	alsl.d	$a4, $s5, $a0, 1
	ld.d	$a5, $a2, 8
	alsl.d	$a6, $s5, $a3, 1
	ld.d	$a0, $a0, 8
	ld.d	$a3, $a3, 8
	vinsgr2vr.d	$vr0, $a5, 0
	vilvl.h	$vr0, $vr4, $vr0
	vinsgr2vr.d	$vr1, $a0, 0
	vinsgr2vr.d	$vr2, $a3, 0
	vor.v	$vr3, $vr1, $vr2
	vxor.v	$vr1, $vr1, $vr2
	vsrli.h	$vr1, $vr1, 1
	vsub.h	$vr1, $vr3, $vr1
	vilvl.h	$vr1, $vr4, $vr1
	vsub.w	$vr0, $vr0, $vr1
	vst	$vr0, $s7, 16
	ld.d	$t0, $sp, 72                    # 8-byte Folded Reload
	ldx.d	$a0, $a2, $t0
	addi.d	$a2, $a4, 16
	ld.d	$a3, $a4, 16
	addi.d	$a5, $a6, 16
	vinsgr2vr.d	$vr0, $a0, 0
	ld.d	$a7, $a6, 16
	vinsgr2vr.d	$vr1, $a3, 0
	alsl.d	$a0, $s4, $a1, 1
	vilvl.h	$vr0, $vr4, $vr0
	vinsgr2vr.d	$vr2, $a7, 0
	vor.v	$vr3, $vr1, $vr2
	vxor.v	$vr1, $vr1, $vr2
	vsrli.h	$vr1, $vr1, 1
	vsub.h	$vr1, $vr3, $vr1
	vilvl.h	$vr1, $vr4, $vr1
	vsub.w	$vr0, $vr0, $vr1
	vst	$vr0, $s7, 32
	alsl.d	$a2, $s5, $a2, 1
	ld.d	$a3, $a1, 8
	alsl.d	$a5, $s5, $a5, 1
	ld.d	$a4, $a4, 24
	ld.d	$a6, $a6, 24
	vinsgr2vr.d	$vr0, $a3, 0
	vilvl.h	$vr0, $vr4, $vr0
	vinsgr2vr.d	$vr1, $a4, 0
	vinsgr2vr.d	$vr2, $a6, 0
	vor.v	$vr3, $vr1, $vr2
	vxor.v	$vr1, $vr1, $vr2
	vsrli.h	$vr1, $vr1, 1
	vsub.h	$vr1, $vr3, $vr1
	vilvl.h	$vr1, $vr4, $vr1
	vsub.w	$vr0, $vr0, $vr1
	vst	$vr0, $s7, 48
	ldx.d	$a1, $a1, $t0
	addi.d	$a3, $a2, 16
	ld.d	$a4, $a2, 16
	addi.d	$a6, $a5, 16
	vinsgr2vr.d	$vr0, $a1, 0
	ld.d	$a7, $a5, 16
	vinsgr2vr.d	$vr1, $a4, 0
	alsl.d	$a1, $s4, $a0, 1
	vilvl.h	$vr0, $vr4, $vr0
	vinsgr2vr.d	$vr2, $a7, 0
	vor.v	$vr3, $vr1, $vr2
	vxor.v	$vr1, $vr1, $vr2
	vsrli.h	$vr1, $vr1, 1
	vsub.h	$vr1, $vr3, $vr1
	vilvl.h	$vr1, $vr4, $vr1
	vsub.w	$vr0, $vr0, $vr1
	vst	$vr0, $s7, 64
	alsl.d	$a3, $s5, $a3, 1
	ld.d	$a4, $a0, 8
	alsl.d	$a6, $s5, $a6, 1
	ld.d	$a2, $a2, 24
	ld.d	$a5, $a5, 24
	vinsgr2vr.d	$vr0, $a4, 0
	vilvl.h	$vr0, $vr4, $vr0
	vinsgr2vr.d	$vr1, $a2, 0
	vinsgr2vr.d	$vr2, $a5, 0
	vor.v	$vr3, $vr1, $vr2
	vxor.v	$vr1, $vr1, $vr2
	vsrli.h	$vr1, $vr1, 1
	vsub.h	$vr1, $vr3, $vr1
	vilvl.h	$vr1, $vr4, $vr1
	vsub.w	$vr0, $vr0, $vr1
	vst	$vr0, $s7, 80
	ldx.d	$a0, $a0, $t0
	addi.d	$a2, $a3, 16
	ld.d	$a4, $a3, 16
	addi.d	$a5, $a6, 16
	vinsgr2vr.d	$vr0, $a0, 0
	ld.d	$a0, $a6, 16
	vinsgr2vr.d	$vr1, $a4, 0
	alsl.d	$a4, $s4, $a1, 1
	vilvl.h	$vr0, $vr4, $vr0
	vinsgr2vr.d	$vr2, $a0, 0
	vor.v	$vr3, $vr1, $vr2
	vxor.v	$vr1, $vr1, $vr2
	vsrli.h	$vr1, $vr1, 1
	vsub.h	$vr1, $vr3, $vr1
	vilvl.h	$vr1, $vr4, $vr1
	vsub.w	$vr0, $vr0, $vr1
	vst	$vr0, $s7, 96
	alsl.d	$a0, $s5, $a2, 1
	ld.d	$a2, $a1, 8
	alsl.d	$a5, $s5, $a5, 1
	ld.d	$a3, $a3, 24
	ld.d	$a6, $a6, 24
	vinsgr2vr.d	$vr0, $a2, 0
	vilvl.h	$vr0, $vr4, $vr0
	vinsgr2vr.d	$vr1, $a3, 0
	vinsgr2vr.d	$vr2, $a6, 0
	vor.v	$vr3, $vr1, $vr2
	vxor.v	$vr1, $vr1, $vr2
	vsrli.h	$vr1, $vr1, 1
	vsub.h	$vr1, $vr3, $vr1
	vilvl.h	$vr1, $vr4, $vr1
	vsub.w	$vr0, $vr0, $vr1
	vst	$vr0, $s7, 112
	ldx.d	$a1, $a1, $t0
	addi.d	$a2, $a0, 16
	ld.d	$a3, $a0, 16
	addi.d	$a6, $a5, 16
	vinsgr2vr.d	$vr0, $a1, 0
	ld.d	$a1, $a5, 16
	vinsgr2vr.d	$vr1, $a3, 0
	addi.d	$a3, $a4, 16
	vilvl.h	$vr0, $vr4, $vr0
	vinsgr2vr.d	$vr2, $a1, 0
	vor.v	$vr3, $vr1, $vr2
	vxor.v	$vr1, $vr1, $vr2
	vsrli.h	$vr1, $vr1, 1
	vsub.h	$vr1, $vr3, $vr1
	vilvl.h	$vr1, $vr4, $vr1
	vsub.w	$vr0, $vr0, $vr1
	vst	$vr0, $s7, 128
	alsl.d	$a1, $s5, $a2, 1
	ld.d	$a2, $a4, 8
	alsl.d	$a4, $s5, $a6, 1
	ld.d	$a0, $a0, 24
	ld.d	$a5, $a5, 24
	vinsgr2vr.d	$vr0, $a2, 0
	vilvl.h	$vr0, $vr4, $vr0
	vinsgr2vr.d	$vr1, $a0, 0
	vinsgr2vr.d	$vr2, $a5, 0
	vor.v	$vr3, $vr1, $vr2
	vxor.v	$vr1, $vr1, $vr2
	vsrli.h	$vr1, $vr1, 1
	vsub.h	$vr1, $vr3, $vr1
	vilvl.h	$vr1, $vr4, $vr1
	alsl.d	$a0, $s4, $a3, 1
	ld.d	$a2, $a0, -16
	vsub.w	$vr0, $vr0, $vr1
	vst	$vr0, $s7, 144
	addi.d	$a3, $a1, 16
	vinsgr2vr.d	$vr0, $a2, 0
	ld.d	$a2, $a1, 16
	ld.d	$a5, $a4, 16
	addi.d	$a6, $a4, 16
	vilvl.h	$vr0, $vr4, $vr0
	vinsgr2vr.d	$vr1, $a2, 0
	vinsgr2vr.d	$vr2, $a5, 0
	vor.v	$vr3, $vr1, $vr2
	vxor.v	$vr1, $vr1, $vr2
	vsrli.h	$vr1, $vr1, 1
	vsub.h	$vr1, $vr3, $vr1
	vilvl.h	$vr1, $vr4, $vr1
	vsub.w	$vr0, $vr0, $vr1
	vst	$vr0, $s7, 160
	alsl.d	$a2, $s5, $a3, 1
	ld.d	$a3, $a0, -8
	alsl.d	$a5, $s5, $a6, 1
	ld.d	$a1, $a1, 24
	ld.d	$a4, $a4, 24
	vinsgr2vr.d	$vr0, $a3, 0
	vilvl.h	$vr0, $vr4, $vr0
	vinsgr2vr.d	$vr1, $a1, 0
	vinsgr2vr.d	$vr2, $a4, 0
	vor.v	$vr3, $vr1, $vr2
	vxor.v	$vr1, $vr1, $vr2
	vsrli.h	$vr1, $vr1, 1
	vsub.h	$vr1, $vr3, $vr1
	vilvl.h	$vr1, $vr4, $vr1
	alsl.d	$a0, $s4, $a0, 1
	ld.d	$a1, $a0, -16
	vsub.w	$vr0, $vr0, $vr1
	vst	$vr0, $s7, 176
	addi.d	$a3, $a2, 16
	vinsgr2vr.d	$vr0, $a1, 0
	ld.d	$a1, $a2, 16
	ld.d	$a4, $a5, 16
	addi.d	$a6, $a5, 16
	vilvl.h	$vr0, $vr4, $vr0
	vinsgr2vr.d	$vr1, $a1, 0
	vinsgr2vr.d	$vr2, $a4, 0
	vor.v	$vr3, $vr1, $vr2
	vxor.v	$vr1, $vr1, $vr2
	vsrli.h	$vr1, $vr1, 1
	vsub.h	$vr1, $vr3, $vr1
	vilvl.h	$vr1, $vr4, $vr1
	vsub.w	$vr0, $vr0, $vr1
	vst	$vr0, $s7, 192
	alsl.d	$a1, $s5, $a3, 1
	ld.d	$a3, $a0, -8
	alsl.d	$a4, $s5, $a6, 1
	ld.d	$a2, $a2, 24
	ld.d	$a5, $a5, 24
	vinsgr2vr.d	$vr0, $a3, 0
	vilvl.h	$vr0, $vr4, $vr0
	vinsgr2vr.d	$vr1, $a2, 0
	vinsgr2vr.d	$vr2, $a5, 0
	vor.v	$vr3, $vr1, $vr2
	vxor.v	$vr1, $vr1, $vr2
	vsrli.h	$vr1, $vr1, 1
	vsub.h	$vr1, $vr3, $vr1
	vilvl.h	$vr1, $vr4, $vr1
	alsl.d	$a0, $s4, $a0, 1
	ld.d	$a2, $a0, -16
	vsub.w	$vr0, $vr0, $vr1
	vst	$vr0, $s7, 208
	addi.d	$a3, $a1, 16
	vinsgr2vr.d	$vr0, $a2, 0
	ld.d	$a2, $a1, 16
	ld.d	$a5, $a4, 16
	addi.d	$a6, $a4, 16
	vilvl.h	$vr0, $vr4, $vr0
	vinsgr2vr.d	$vr1, $a2, 0
	vinsgr2vr.d	$vr2, $a5, 0
	vor.v	$vr3, $vr1, $vr2
	vxor.v	$vr1, $vr1, $vr2
	vsrli.h	$vr1, $vr1, 1
	vsub.h	$vr1, $vr3, $vr1
	vilvl.h	$vr1, $vr4, $vr1
	vsub.w	$vr0, $vr0, $vr1
	vst	$vr0, $s7, 224
	alsl.d	$a2, $s5, $a3, 1
	ld.d	$a3, $a0, -8
	alsl.d	$a5, $s5, $a6, 1
	ld.d	$a1, $a1, 24
	ld.d	$a4, $a4, 24
	vinsgr2vr.d	$vr0, $a3, 0
	vilvl.h	$vr0, $vr4, $vr0
	vinsgr2vr.d	$vr1, $a1, 0
	vinsgr2vr.d	$vr2, $a4, 0
	vor.v	$vr3, $vr1, $vr2
	vxor.v	$vr1, $vr1, $vr2
	vsrli.h	$vr1, $vr1, 1
	vsub.h	$vr1, $vr3, $vr1
	vilvl.h	$vr1, $vr4, $vr1
	vsub.w	$vr0, $vr0, $vr1
	vst	$vr0, $s7, 240
	addi.d	$a1, $a2, 16
	addi.d	$a2, $a5, 16
	alsl.d	$a0, $s4, $a0, 1
	addi.d	$a0, $a0, -16
	st.d	$a0, $s8, %pc_lo12(src_line)
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	st.d	$a1, $a0, %pc_lo12(ref1_line)
	st.d	$a2, $fp, %pc_lo12(ref2_line)
	move	$a0, $s7
	pcaddu18i	$ra, %call36(HadamardSAD8x8)
	jirl	$ra, $ra, 0
	add.w	$s6, $a0, $s6
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	blt	$a0, $s6, .LBB11_16
# %bb.6:                                #   in Loop: Header=BB11_5 Depth=2
	addi.w	$s2, $s2, 32
	addi.w	$s0, $s0, 32
	addi.w	$s3, $s3, 8
	addi.d	$s1, $s1, 16
	blt	$s3, $s4, .LBB11_5
# %bb.7:                                # %..thread_crit_edge.us
                                        #   in Loop: Header=BB11_4 Depth=1
	ld.d	$t0, $sp, 16                    # 8-byte Folded Reload
	addi.w	$t0, $t0, 8
	ld.d	$s1, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a0, $sp, 0                     # 8-byte Folded Reload
	add.d	$s1, $s1, $a0
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	ld.d	$a7, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a6, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a5, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a4, $sp, 24                    # 8-byte Folded Reload
	blt	$t0, $a1, .LBB11_4
	b	.LBB11_16
.LBB11_8:
	slli.w	$a2, $a1, 2
	ori	$a0, $zero, 1
	blt	$a2, $a0, .LBB11_15
# %bb.9:                                # %.preheader.lr.ph
	blt	$s4, $a0, .LBB11_15
# %bb.10:                               # %.preheader.us.preheader
	pcalau12i	$a0, %pc_hi20(img_padded_size_x)
	ld.w	$a0, $a0, %pc_lo12(img_padded_size_x)
	move	$s6, $zero
	move	$t0, $zero
	slli.w	$a1, $s4, 2
	addi.w	$s5, $a0, -4
	slli.d	$a0, $a1, 1
	st.d	$a0, $sp, 0                     # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(src_line)
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(bipred2_access_method)
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(get_line)
	addi.d	$a0, $a0, %pc_lo12(get_line)
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(ref_pic2_sub)
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(ref2_line)
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(bipred1_access_method)
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(ref_pic1_sub)
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 80                   # 16-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(diff)
	addi.d	$fp, $a0, %pc_lo12(diff)
	slli.d	$a0, $s4, 1
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(ref1_line)
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	st.d	$a7, $sp, 48                    # 8-byte Folded Spill
	st.d	$a6, $sp, 40                    # 8-byte Folded Spill
	st.d	$a5, $sp, 32                    # 8-byte Folded Spill
	st.d	$a4, $sp, 24                    # 8-byte Folded Spill
	st.d	$a2, $sp, 8                     # 8-byte Folded Spill
.LBB11_11:                              # %.preheader.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_12 Depth 2
	move	$s3, $zero
	add.w	$a0, $t0, $a7
	st.d	$a0, $sp, 168                   # 8-byte Folded Spill
	st.d	$t0, $sp, 16                    # 8-byte Folded Spill
	add.w	$a0, $t0, $a5
	st.d	$a0, $sp, 160                   # 8-byte Folded Spill
	st.d	$s1, $sp, 56                    # 8-byte Folded Spill
	move	$s7, $a6
	move	$s8, $a4
	.p2align	4, , 16
.LBB11_12:                              #   Parent Loop BB11_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(bipred2_access_method)
	slli.d	$a0, $a0, 3
	ld.d	$s2, $sp, 136                   # 8-byte Folded Reload
	ldx.d	$a3, $s2, $a0
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(ref_pic2_sub)
	ld.d	$s0, $sp, 152                   # 8-byte Folded Reload
	st.d	$s1, $s0, %pc_lo12(src_line)
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	move	$a2, $s7
	jirl	$ra, $a3, 0
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	ld.w	$a1, $a1, %pc_lo12(bipred1_access_method)
	slli.d	$a1, $a1, 3
	ldx.d	$a3, $s2, $a1
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(ref_pic1_sub)
	ld.d	$s2, $sp, 120                   # 8-byte Folded Reload
	st.d	$a0, $s2, %pc_lo12(ref2_line)
	move	$a0, $a1
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	move	$a2, $s8
	jirl	$ra, $a3, 0
	ld.d	$a1, $s0, %pc_lo12(src_line)
	ld.d	$a2, $s2, %pc_lo12(ref2_line)
	alsl.d	$a3, $s4, $a1, 1
	alsl.d	$a4, $s5, $a0, 1
	ld.d	$a5, $a1, 0
	alsl.d	$a6, $s5, $a2, 1
	ld.d	$a0, $a0, 0
	ld.d	$a2, $a2, 0
	vinsgr2vr.d	$vr0, $a5, 0
	vld	$vr4, $sp, 80                   # 16-byte Folded Reload
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
	addi.d	$a0, $a4, 8
	addi.d	$a2, $a6, 8
	alsl.d	$a5, $s4, $a3, 1
	alsl.d	$a0, $s5, $a0, 1
	ld.d	$a7, $sp, 72                    # 8-byte Folded Reload
	ldx.d	$a1, $a1, $a7
	alsl.d	$a2, $s5, $a2, 1
	ld.d	$a4, $a4, 8
	ld.d	$a6, $a6, 8
	vinsgr2vr.d	$vr0, $a1, 0
	vilvl.h	$vr0, $vr4, $vr0
	vinsgr2vr.d	$vr1, $a4, 0
	vinsgr2vr.d	$vr2, $a6, 0
	vor.v	$vr3, $vr1, $vr2
	vxor.v	$vr1, $vr1, $vr2
	vsrli.h	$vr1, $vr1, 1
	vsub.h	$vr1, $vr3, $vr1
	vilvl.h	$vr1, $vr4, $vr1
	vsub.w	$vr0, $vr0, $vr1
	vst	$vr0, $fp, 16
	addi.d	$a1, $a0, 8
	addi.d	$a4, $a2, 8
	alsl.d	$a6, $s4, $a5, 1
	alsl.d	$a1, $s5, $a1, 1
	ldx.d	$a3, $a3, $a7
	alsl.d	$a4, $s5, $a4, 1
	ld.d	$a0, $a0, 8
	ld.d	$a2, $a2, 8
	vinsgr2vr.d	$vr0, $a3, 0
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
	addi.d	$a2, $a4, 8
	alsl.d	$a3, $s4, $a6, 1
	alsl.d	$a0, $s5, $a0, 1
	ldx.d	$a5, $a5, $a7
	alsl.d	$a2, $s5, $a2, 1
	ld.d	$a1, $a1, 8
	ld.d	$a4, $a4, 8
	vinsgr2vr.d	$vr0, $a5, 0
	vilvl.h	$vr0, $vr4, $vr0
	vinsgr2vr.d	$vr1, $a1, 0
	vinsgr2vr.d	$vr2, $a4, 0
	vor.v	$vr3, $vr1, $vr2
	vxor.v	$vr1, $vr1, $vr2
	vsrli.h	$vr1, $vr1, 1
	vsub.h	$vr1, $vr3, $vr1
	vilvl.h	$vr1, $vr4, $vr1
	vsub.w	$vr0, $vr0, $vr1
	vst	$vr0, $fp, 48
	addi.d	$a0, $a0, 8
	addi.d	$a1, $a2, 8
	st.d	$a3, $s0, %pc_lo12(src_line)
	ld.d	$a2, $sp, 64                    # 8-byte Folded Reload
	st.d	$a0, $a2, %pc_lo12(ref1_line)
	st.d	$a1, $s2, %pc_lo12(ref2_line)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(HadamardSAD4x4)
	jirl	$ra, $ra, 0
	add.w	$s6, $a0, $s6
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	blt	$a0, $s6, .LBB11_16
# %bb.13:                               #   in Loop: Header=BB11_12 Depth=2
	addi.w	$s8, $s8, 16
	addi.w	$s7, $s7, 16
	addi.w	$s3, $s3, 4
	addi.d	$s1, $s1, 8
	blt	$s3, $s4, .LBB11_12
# %bb.14:                               # %._crit_edge.us
                                        #   in Loop: Header=BB11_11 Depth=1
	ld.d	$t0, $sp, 16                    # 8-byte Folded Reload
	addi.w	$t0, $t0, 16
	ld.d	$s1, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a0, $sp, 0                     # 8-byte Folded Reload
	add.d	$s1, $s1, $a0
	ld.d	$a7, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a6, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a5, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 8                     # 8-byte Folded Reload
	blt	$t0, $a2, .LBB11_11
	b	.LBB11_16
.LBB11_15:
	move	$s6, $zero
.LBB11_16:                              # %.loopexit
	move	$a0, $s6
	ld.d	$s8, $sp, 184                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 192                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 200                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 208                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 216                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 224                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 232                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 240                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 248                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 256                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 264                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 272
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
	ori	$a0, $zero, 1
	blt	$a1, $a0, .LBB12_17
# %bb.2:                                # %.lr.ph178
	blt	$s4, $a0, .LBB12_17
# %bb.3:                                # %.lr.ph.us.preheader
	pcalau12i	$a0, %pc_hi20(img_padded_size_x)
	ld.w	$a0, $a0, %pc_lo12(img_padded_size_x)
	move	$s6, $zero
	move	$a2, $zero
	slli.w	$a3, $s4, 3
	st.d	$a3, $sp, 72                    # 8-byte Folded Spill
	addi.w	$a0, $a0, -8
	slli.d	$a0, $a0, 1
	addi.d	$s5, $a0, 16
	slli.d	$a0, $s4, 1
	addi.d	$s7, $a0, -2
	pcalau12i	$s3, %pc_hi20(src_line)
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
	st.d	$a1, $s3, %pc_lo12(src_line)
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
	ld.d	$a1, $s3, %pc_lo12(src_line)
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
	add.d	$a7, $a7, $s5
	add.d	$a1, $a1, $s7
	addi.d	$t1, $t1, 32
	bnez	$t0, .LBB12_6
# %bb.7:                                #   in Loop: Header=BB12_5 Depth=2
	add.d	$a0, $a0, $a7
	pcalau12i	$a3, %pc_hi20(ref1_line)
	st.d	$a0, $a3, %pc_lo12(ref1_line)
	add.d	$a0, $a2, $a7
	st.d	$a0, $fp, %pc_lo12(ref2_line)
	st.d	$a1, $s3, %pc_lo12(src_line)
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
	ori	$a0, $zero, 1
	blt	$a2, $a0, .LBB12_17
# %bb.11:                               # %.preheader.lr.ph
	blt	$s4, $a0, .LBB12_17
# %bb.12:                               # %.preheader.us.preheader
	pcalau12i	$a0, %pc_hi20(img_padded_size_x)
	ld.w	$a0, $a0, %pc_lo12(img_padded_size_x)
	move	$s6, $zero
	move	$a3, $zero
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
	ld.d	$a5, $s3, %pc_lo12(ref2_line)
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	ld.h	$a2, $a2, %pc_lo12(weight2)
	ld.d	$a3, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a3, $a3, 0
	ld.hu	$a7, $a0, 0
	ld.hu	$t0, $a5, 0
	ld.d	$a4, $sp, 64                    # 8-byte Folded Reload
	ld.h	$a4, $a4, %pc_lo12(offsetBi)
	ld.d	$a6, $s5, %pc_lo12(src_line)
	mul.d	$t1, $a7, $a1
	mul.d	$t0, $t0, $a2
	ldptr.w	$a7, $a3, 15520
	add.d	$t1, $t1, $s8
	add.d	$t0, $t1, $t0
	sra.w	$t0, $t0, $s1
	add.w	$t0, $t0, $a4
	srai.d	$t1, $t0, 63
	andn	$t0, $t0, $t1
	slt	$t1, $t0, $a7
	maskeqz	$t0, $t0, $t1
	masknez	$t1, $a7, $t1
	ld.hu	$t2, $a6, 0
	or	$t0, $t0, $t1
	ld.hu	$t1, $a0, 2
	ld.hu	$t3, $a5, 2
	sub.d	$t0, $t2, $t0
	st.w	$t0, $s7, 0
	mul.d	$t0, $t1, $a1
	mul.d	$t1, $t3, $a2
	add.d	$t0, $t0, $s8
	add.d	$t0, $t0, $t1
	sra.w	$t0, $t0, $s1
	add.w	$t0, $t0, $a4
	srai.d	$t1, $t0, 63
	andn	$t0, $t0, $t1
	slt	$t1, $t0, $a7
	maskeqz	$t0, $t0, $t1
	masknez	$t1, $a7, $t1
	ld.hu	$t2, $a6, 2
	or	$t0, $t0, $t1
	ld.hu	$t1, $a0, 4
	ld.hu	$t3, $a5, 4
	sub.d	$t0, $t2, $t0
	st.w	$t0, $s7, 4
	mul.d	$t0, $t1, $a1
	mul.d	$t1, $t3, $a2
	add.d	$t0, $t0, $s8
	add.d	$t0, $t0, $t1
	sra.w	$t0, $t0, $s1
	add.w	$t0, $t0, $a4
	srai.d	$t1, $t0, 63
	andn	$t0, $t0, $t1
	slt	$t1, $t0, $a7
	ld.hu	$t2, $a6, 4
	maskeqz	$t0, $t0, $t1
	masknez	$t1, $a7, $t1
	or	$t0, $t0, $t1
	sub.d	$t0, $t2, $t0
	ld.hu	$t2, $a0, 6
	st.w	$t0, $s7, 8
	ld.hu	$t3, $a5, 6
	alsl.d	$t1, $fp, $a0, 1
	mul.d	$a0, $t2, $a1
	alsl.d	$t0, $fp, $a5, 1
	mul.d	$a5, $t3, $a2
	add.d	$a0, $a0, $s8
	add.d	$a0, $a0, $a5
	sra.w	$a0, $a0, $s1
	add.w	$a0, $a0, $a4
	srai.d	$a5, $a0, 63
	andn	$a0, $a0, $a5
	slt	$a5, $a0, $a7
	maskeqz	$a0, $a0, $a5
	ld.hu	$t2, $a6, 6
	masknez	$a5, $a7, $a5
	or	$a0, $a0, $a5
	alsl.d	$a5, $s4, $a6, 1
	sub.d	$a0, $t2, $a0
	st.w	$a0, $s7, 12
	ld.hu	$a0, $t1, 8
	ld.hu	$t4, $t0, 8
	addi.d	$t3, $t1, 8
	addi.d	$t2, $t0, 8
	mul.d	$a0, $a0, $a1
	mul.d	$t4, $t4, $a2
	add.d	$a0, $a0, $s8
	add.d	$a0, $a0, $t4
	sra.w	$a0, $a0, $s1
	add.w	$a0, $a0, $a4
	srai.d	$t4, $a0, 63
	andn	$a0, $a0, $t4
	slt	$t4, $a0, $a7
	maskeqz	$a0, $a0, $t4
	masknez	$a7, $a7, $t4
	ld.d	$t6, $sp, 56                    # 8-byte Folded Reload
	ldx.hu	$a6, $a6, $t6
	or	$a0, $a0, $a7
	ld.hu	$a7, $t1, 10
	ld.hu	$t4, $t0, 10
	sub.d	$a0, $a6, $a0
	st.w	$a0, $s7, 16
	mul.d	$a0, $a7, $a1
	mul.d	$a7, $t4, $a2
	ldptr.w	$a6, $a3, 15520
	add.d	$a0, $a0, $s8
	add.d	$a0, $a0, $a7
	sra.w	$a0, $a0, $s1
	add.w	$a0, $a0, $a4
	srai.d	$a7, $a0, 63
	andn	$a0, $a0, $a7
	slt	$a7, $a0, $a6
	ld.hu	$t4, $a5, 2
	maskeqz	$a0, $a0, $a7
	masknez	$a7, $a6, $a7
	or	$a0, $a0, $a7
	sub.d	$a7, $t4, $a0
	ld.hu	$t4, $t1, 12
	ld.hu	$t5, $t0, 12
	alsl.d	$a0, $s4, $a5, 1
	st.w	$a7, $s7, 20
	mul.d	$a7, $t4, $a1
	mul.d	$t4, $t5, $a2
	add.d	$a7, $a7, $s8
	add.d	$a7, $a7, $t4
	sra.w	$a7, $a7, $s1
	add.w	$a7, $a7, $a4
	srai.d	$t4, $a7, 63
	andn	$a7, $a7, $t4
	slt	$t4, $a7, $a6
	ld.hu	$t5, $a5, 4
	maskeqz	$a7, $a7, $t4
	masknez	$t4, $a6, $t4
	or	$a7, $a7, $t4
	sub.d	$a7, $t5, $a7
	ld.hu	$t1, $t1, 14
	st.w	$a7, $s7, 24
	ld.hu	$t4, $t0, 14
	alsl.d	$t0, $fp, $t3, 1
	mul.d	$t1, $t1, $a1
	alsl.d	$a7, $fp, $t2, 1
	mul.d	$t2, $t4, $a2
	add.d	$t1, $t1, $s8
	add.d	$t1, $t1, $t2
	sra.w	$t1, $t1, $s1
	add.w	$t1, $t1, $a4
	srai.d	$t2, $t1, 63
	andn	$t1, $t1, $t2
	slt	$t2, $t1, $a6
	ld.hu	$t3, $a5, 6
	maskeqz	$t1, $t1, $t2
	masknez	$t2, $a6, $t2
	or	$t1, $t1, $t2
	sub.d	$t1, $t3, $t1
	st.w	$t1, $s7, 28
	ld.hu	$t3, $t0, 8
	ld.hu	$t4, $a7, 8
	addi.d	$t2, $t0, 8
	addi.d	$t1, $a7, 8
	mul.d	$t3, $t3, $a1
	mul.d	$t4, $t4, $a2
	add.d	$t3, $t3, $s8
	add.d	$t3, $t3, $t4
	sra.w	$t3, $t3, $s1
	add.w	$t3, $t3, $a4
	srai.d	$t4, $t3, 63
	andn	$t3, $t3, $t4
	slt	$t4, $t3, $a6
	ldx.hu	$a5, $a5, $t6
	maskeqz	$t3, $t3, $t4
	masknez	$t4, $a6, $t4
	or	$t3, $t3, $t4
	sub.d	$t3, $a5, $t3
	ld.hu	$t4, $t0, 10
	ld.hu	$t5, $a7, 10
	alsl.d	$a5, $s4, $a0, 1
	st.w	$t3, $s7, 32
	mul.d	$t3, $t4, $a1
	mul.d	$t4, $t5, $a2
	add.d	$t3, $t3, $s8
	add.d	$t3, $t3, $t4
	sra.w	$t3, $t3, $s1
	add.w	$t3, $t3, $a4
	srai.d	$t4, $t3, 63
	andn	$t3, $t3, $t4
	slt	$t4, $t3, $a6
	maskeqz	$t3, $t3, $t4
	masknez	$a6, $a6, $t4
	ld.hu	$t4, $a0, 2
	or	$a6, $t3, $a6
	ld.hu	$t3, $t0, 12
	ld.hu	$t5, $a7, 12
	sub.d	$a6, $t4, $a6
	st.w	$a6, $s7, 36
	mul.d	$t3, $t3, $a1
	mul.d	$t4, $t5, $a2
	ldptr.w	$a6, $a3, 15520
	add.d	$t3, $t3, $s8
	add.d	$t3, $t3, $t4
	sra.w	$t3, $t3, $s1
	add.w	$t3, $t3, $a4
	srai.d	$t4, $t3, 63
	andn	$t3, $t3, $t4
	slt	$t4, $t3, $a6
	ld.hu	$t5, $a0, 4
	maskeqz	$t3, $t3, $t4
	masknez	$t4, $a6, $t4
	or	$t3, $t3, $t4
	sub.d	$t3, $t5, $t3
	ld.hu	$t4, $t0, 14
	st.w	$t3, $s7, 40
	ld.hu	$t3, $a7, 14
	alsl.d	$t0, $fp, $t2, 1
	mul.d	$t2, $t4, $a1
	alsl.d	$a7, $fp, $t1, 1
	mul.d	$t1, $t3, $a2
	add.d	$t2, $t2, $s8
	add.d	$t1, $t2, $t1
	sra.w	$t1, $t1, $s1
	add.w	$t1, $t1, $a4
	srai.d	$t2, $t1, 63
	andn	$t1, $t1, $t2
	slt	$t2, $t1, $a6
	ld.hu	$t3, $a0, 6
	maskeqz	$t1, $t1, $t2
	masknez	$t2, $a6, $t2
	or	$t1, $t1, $t2
	sub.d	$t1, $t3, $t1
	st.w	$t1, $s7, 44
	ld.hu	$t3, $t0, 8
	ld.hu	$t4, $a7, 8
	addi.d	$t2, $t0, 8
	addi.d	$t1, $a7, 8
	mul.d	$t3, $t3, $a1
	mul.d	$t4, $t4, $a2
	add.d	$t3, $t3, $s8
	add.d	$t3, $t3, $t4
	sra.w	$t3, $t3, $s1
	add.w	$t3, $t3, $a4
	srai.d	$t4, $t3, 63
	andn	$t3, $t3, $t4
	slt	$t4, $t3, $a6
	maskeqz	$t3, $t3, $t4
	masknez	$t4, $a6, $t4
	ldx.hu	$a0, $a0, $t6
	or	$t3, $t3, $t4
	ld.hu	$t4, $t0, 10
	ld.hu	$t5, $a7, 10
	sub.d	$a0, $a0, $t3
	st.w	$a0, $s7, 48
	mul.d	$a0, $t4, $a1
	mul.d	$t3, $t5, $a2
	add.d	$a0, $a0, $s8
	add.d	$a0, $a0, $t3
	sra.w	$a0, $a0, $s1
	add.w	$a0, $a0, $a4
	srai.d	$t3, $a0, 63
	andn	$a0, $a0, $t3
	slt	$t3, $a0, $a6
	ld.hu	$t4, $a5, 2
	maskeqz	$a0, $a0, $t3
	masknez	$t3, $a6, $t3
	or	$a0, $a0, $t3
	sub.d	$a0, $t4, $a0
	ld.hu	$t3, $t0, 12
	ld.hu	$t4, $a7, 12
	addi.d	$t5, $a5, 8
	st.w	$a0, $s7, 52
	mul.d	$a0, $t3, $a1
	mul.d	$t3, $t4, $a2
	add.d	$a0, $a0, $s8
	add.d	$a0, $a0, $t3
	sra.w	$a0, $a0, $s1
	add.w	$a0, $a0, $a4
	srai.d	$t3, $a0, 63
	andn	$a0, $a0, $t3
	slt	$t3, $a0, $a6
	ld.hu	$t4, $a5, 4
	maskeqz	$a0, $a0, $t3
	masknez	$a6, $a6, $t3
	or	$a0, $a0, $a6
	sub.d	$a0, $t4, $a0
	ld.hu	$a6, $t0, 14
	st.w	$a0, $s7, 56
	ld.hu	$a0, $a7, 14
	alsl.d	$a7, $fp, $t2, 1
	mul.d	$a1, $a6, $a1
	alsl.d	$a6, $fp, $t1, 1
	mul.d	$a0, $a0, $a2
	ldptr.w	$a2, $a3, 15520
	add.d	$a1, $a1, $s8
	add.d	$a0, $a1, $a0
	sra.w	$a0, $a0, $s1
	add.w	$a0, $a0, $a4
	srai.d	$a1, $a0, 63
	andn	$a0, $a0, $a1
	slt	$a1, $a0, $a2
	ld.hu	$a3, $a5, 6
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $a2, $a1
	or	$a0, $a0, $a1
	sub.d	$a0, $a3, $a0
	st.w	$a0, $s7, 60
	addi.d	$a0, $a7, 8
	addi.d	$a1, $a6, 8
	alsl.d	$a2, $s4, $t5, 1
	addi.d	$a2, $a2, -8
	ld.d	$a3, $sp, 48                    # 8-byte Folded Reload
	st.d	$a0, $a3, %pc_lo12(ref1_line)
	st.d	$a1, $s3, %pc_lo12(ref2_line)
	st.d	$a2, $s5, %pc_lo12(src_line)
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
	pcalau12i	$a6, %got_pc_hi20(img)
	ld.d	$a6, $a6, %got_pc_lo12(img)
	ld.d	$a6, $a6, 0
	pcalau12i	$s1, %pc_hi20(ref_access_method)
	ld.w	$a7, $s1, %pc_lo12(ref_access_method)
	ldptr.d	$s8, $a6, 14232
	pcalau12i	$a6, %pc_hi20(img_padded_size_x)
	ld.w	$s2, $a6, %pc_lo12(img_padded_size_x)
	slli.d	$a6, $a7, 3
	pcalau12i	$a7, %pc_hi20(get_line)
	addi.d	$a7, $a7, %pc_lo12(get_line)
	ldx.d	$a7, $a7, $a6
	pcalau12i	$a6, %pc_hi20(ref_pic_sub)
	addi.d	$a6, $a6, %pc_lo12(ref_pic_sub)
	st.d	$a6, $sp, 32                    # 8-byte Folded Spill
	ld.d	$a6, $a6, 0
	move	$s3, $a4
	move	$s0, $a3
	move	$s4, $a2
	move	$s5, $a1
	pcalau12i	$s7, %pc_hi20(src_line)
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	st.d	$a0, $s7, %pc_lo12(src_line)
	move	$a0, $a6
	st.d	$a5, $sp, 48                    # 8-byte Folded Spill
	move	$a1, $a5
	move	$a2, $a4
	jirl	$ra, $a7, 0
	pcalau12i	$s6, %pc_hi20(ref_line)
	ori	$a1, $zero, 1
	st.d	$a0, $s6, %pc_lo12(ref_line)
	move	$fp, $zero
	blt	$s5, $a1, .LBB13_8
# %bb.1:                                # %.preheader60.lr.ph
	blt	$s4, $a1, .LBB13_32
# %bb.2:                                # %.preheader60.us.preheader
	move	$a1, $zero
	ld.d	$a4, $s7, %pc_lo12(src_line)
	slli.d	$a2, $s2, 1
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
	bge	$fp, $s0, .LBB13_34
# %bb.6:                                #   in Loop: Header=BB13_3 Depth=1
	addi.w	$a1, $a1, 1
	add.d	$a0, $a5, $a2
	bne	$a1, $s5, .LBB13_3
# %bb.7:                                # %._crit_edge78.split.us
	add.d	$a0, $a5, $a2
	st.d	$a0, $s6, %pc_lo12(ref_line)
	st.d	$a4, $s7, %pc_lo12(src_line)
.LBB13_8:                               # %._crit_edge78
	pcalau12i	$a0, %pc_hi20(ChromaMEEnable)
	ld.w	$a0, $a0, %pc_lo12(ChromaMEEnable)
	beqz	$a0, .LBB13_43
.LBB13_9:
	pcalau12i	$a0, %pc_hi20(shift_cr_y)
	ld.wu	$a0, $a0, %pc_lo12(shift_cr_y)
	sra.w	$s5, $s5, $a0
	blez	$s5, .LBB13_35
# %bb.10:                               # %.split.us
	st.d	$s3, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(shift_cr_x)
	ld.wu	$a0, $a0, %pc_lo12(shift_cr_x)
	pcalau12i	$a1, %pc_hi20(img_cr_padded_size_x)
	ld.w	$a1, $a1, %pc_lo12(img_cr_padded_size_x)
	sra.w	$s4, $s4, $a0
	ori	$s3, $zero, 1
	blt	$s4, $s3, .LBB13_38
# %bb.11:                               # %.preheader.lr.ph.us.us.preheader
	st.d	$s6, $sp, 16                    # 8-byte Folded Spill
	ld.w	$a0, $s1, %pc_lo12(ref_access_method)
	slli.d	$a0, $a0, 3
	pcalau12i	$a2, %pc_hi20(get_crline)
	addi.d	$a2, $a2, %pc_lo12(get_crline)
	st.d	$a2, $sp, 8                     # 8-byte Folded Spill
	ldx.d	$a3, $a2, $a0
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 8
	sub.w	$s2, $a1, $s4
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	addi.d	$a1, $a1, 512
	st.d	$a1, $s7, %pc_lo12(src_line)
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	jirl	$ra, $a3, 0
	move	$a3, $zero
	ld.d	$a6, $s7, %pc_lo12(src_line)
	bstrpick.d	$t8, $s4, 30, 1
	slli.d	$a4, $t8, 1
	slli.d	$s6, $t8, 3
	.p2align	4, , 16
.LBB13_12:                              # %.preheader.us.us.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB13_15 Depth 2
                                        #     Child Loop BB13_18 Depth 2
	move	$a5, $zero
	bne	$s4, $s3, .LBB13_14
# %bb.13:                               #   in Loop: Header=BB13_12 Depth=1
	move	$a1, $a6
	move	$a2, $a0
	b	.LBB13_17
	.p2align	4, , 16
.LBB13_14:                              # %vector.ph
                                        #   in Loop: Header=BB13_12 Depth=1
	add.d	$a1, $a6, $s6
	add.d	$a2, $a0, $s6
	addi.d	$a6, $a6, 4
	addi.d	$a0, $a0, 4
	move	$a7, $a4
	.p2align	4, , 16
.LBB13_15:                              # %vector.body
                                        #   Parent Loop BB13_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.hu	$t0, $a6, -4
	ld.hu	$t1, $a6, 0
	ld.hu	$t2, $a0, -4
	ld.hu	$t3, $a0, 0
	ld.hu	$t4, $a6, -2
	ld.hu	$t5, $a6, 2
	ld.hu	$t6, $a0, -2
	ld.hu	$t7, $a0, 2
	sub.d	$t0, $t0, $t2
	sub.d	$t1, $t1, $t3
	sub.d	$t2, $t4, $t6
	sub.d	$t3, $t5, $t7
	slli.d	$t0, $t0, 2
	slli.d	$t1, $t1, 2
	ldx.w	$t0, $s8, $t0
	ldx.w	$t1, $s8, $t1
	slli.d	$t2, $t2, 2
	slli.d	$t3, $t3, 2
	ldx.w	$t2, $s8, $t2
	ldx.w	$t3, $s8, $t3
	add.d	$t0, $t0, $fp
	add.d	$a5, $t1, $a5
	add.d	$fp, $t0, $t2
	add.d	$a5, $a5, $t3
	addi.d	$a7, $a7, -2
	addi.d	$a6, $a6, 8
	addi.d	$a0, $a0, 8
	bnez	$a7, .LBB13_15
# %bb.16:                               # %middle.block
                                        #   in Loop: Header=BB13_12 Depth=1
	add.w	$fp, $a5, $fp
	move	$a5, $a4
	beq	$a4, $s4, .LBB13_19
.LBB13_17:                              # %scalar.ph.preheader
                                        #   in Loop: Header=BB13_12 Depth=1
	sub.d	$a0, $s4, $a5
	.p2align	4, , 16
.LBB13_18:                              # %scalar.ph
                                        #   Parent Loop BB13_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.hu	$a5, $a1, 0
	ld.hu	$a6, $a2, 0
	sub.d	$a5, $a5, $a6
	slli.d	$a5, $a5, 2
	ldx.w	$a5, $s8, $a5
	ld.hu	$a6, $a1, 2
	ld.hu	$a7, $a2, 2
	add.d	$a5, $a5, $fp
	sub.d	$a6, $a6, $a7
	slli.d	$a6, $a6, 2
	ldx.w	$a6, $s8, $a6
	addi.d	$a1, $a1, 4
	addi.d	$a2, $a2, 4
	addi.w	$a0, $a0, -1
	add.w	$fp, $a5, $a6
	bnez	$a0, .LBB13_18
.LBB13_19:                              # %._crit_edge.us99.us.us
                                        #   in Loop: Header=BB13_12 Depth=1
	bge	$fp, $s0, .LBB13_36
# %bb.20:                               #   in Loop: Header=BB13_12 Depth=1
	addi.w	$a3, $a3, 1
	alsl.d	$a0, $s2, $a2, 1
	move	$a6, $a1
	bne	$a3, $s5, .LBB13_12
# %bb.21:                               # %._crit_edge97.split.us.us.us
	ld.w	$a1, $s1, %pc_lo12(ref_access_method)
	slli.d	$a1, $a1, 3
	ld.d	$a2, $sp, 8                     # 8-byte Folded Reload
	ldx.d	$a3, $a2, $a1
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a1, $a1, 16
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	st.d	$a0, $a2, %pc_lo12(ref_line)
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	addi.d	$a0, $a0, 1024
	st.d	$a0, $s7, %pc_lo12(src_line)
	move	$a0, $a1
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	move	$s1, $t8
	jirl	$ra, $a3, 0
	ld.d	$a7, $s7, %pc_lo12(src_line)
	move	$a3, $zero
	slli.d	$a4, $s1, 1
	ori	$a5, $zero, 1
	.p2align	4, , 16
.LBB13_22:                              # %.preheader.us.us.us.1
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB13_25 Depth 2
                                        #     Child Loop BB13_28 Depth 2
	move	$a6, $zero
	bne	$s4, $a5, .LBB13_24
# %bb.23:                               #   in Loop: Header=BB13_22 Depth=1
	move	$a1, $a7
	move	$a2, $a0
	b	.LBB13_27
	.p2align	4, , 16
.LBB13_24:                              # %vector.ph211
                                        #   in Loop: Header=BB13_22 Depth=1
	add.d	$a1, $a7, $s6
	add.d	$a2, $a0, $s6
	addi.d	$a7, $a7, 4
	addi.d	$a0, $a0, 4
	move	$t0, $a4
	.p2align	4, , 16
.LBB13_25:                              # %vector.body214
                                        #   Parent Loop BB13_22 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.hu	$t1, $a7, -4
	ld.hu	$t2, $a7, 0
	ld.hu	$t3, $a0, -4
	ld.hu	$t4, $a0, 0
	ld.hu	$t5, $a7, -2
	ld.hu	$t6, $a7, 2
	ld.hu	$t7, $a0, -2
	ld.hu	$t8, $a0, 2
	sub.d	$t1, $t1, $t3
	sub.d	$t2, $t2, $t4
	sub.d	$t3, $t5, $t7
	sub.d	$t4, $t6, $t8
	slli.d	$t1, $t1, 2
	slli.d	$t2, $t2, 2
	ldx.w	$t1, $s8, $t1
	ldx.w	$t2, $s8, $t2
	slli.d	$t3, $t3, 2
	slli.d	$t4, $t4, 2
	ldx.w	$t3, $s8, $t3
	ldx.w	$t4, $s8, $t4
	add.d	$t1, $t1, $fp
	add.d	$a6, $t2, $a6
	add.d	$fp, $t1, $t3
	add.d	$a6, $a6, $t4
	addi.d	$t0, $t0, -2
	addi.d	$a7, $a7, 8
	addi.d	$a0, $a0, 8
	bnez	$t0, .LBB13_25
# %bb.26:                               # %middle.block225
                                        #   in Loop: Header=BB13_22 Depth=1
	add.w	$fp, $a6, $fp
	move	$a6, $a4
	beq	$a4, $s4, .LBB13_29
.LBB13_27:                              # %scalar.ph209.preheader
                                        #   in Loop: Header=BB13_22 Depth=1
	sub.d	$a0, $s4, $a6
	.p2align	4, , 16
.LBB13_28:                              # %scalar.ph209
                                        #   Parent Loop BB13_22 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.hu	$a6, $a1, 0
	ld.hu	$a7, $a2, 0
	sub.d	$a6, $a6, $a7
	slli.d	$a6, $a6, 2
	ldx.w	$a6, $s8, $a6
	ld.hu	$a7, $a1, 2
	ld.hu	$t0, $a2, 2
	add.d	$a6, $a6, $fp
	sub.d	$a7, $a7, $t0
	slli.d	$a7, $a7, 2
	ldx.w	$a7, $s8, $a7
	addi.d	$a1, $a1, 4
	addi.d	$a2, $a2, 4
	addi.w	$a0, $a0, -1
	add.w	$fp, $a6, $a7
	bnez	$a0, .LBB13_28
.LBB13_29:                              # %._crit_edge.us99.us.us.1
                                        #   in Loop: Header=BB13_22 Depth=1
	bge	$fp, $s0, .LBB13_36
# %bb.30:                               #   in Loop: Header=BB13_22 Depth=1
	addi.w	$a3, $a3, 1
	alsl.d	$a0, $s2, $a2, 1
	move	$a7, $a1
	bne	$a3, $s5, .LBB13_22
# %bb.31:                               # %._crit_edge97.split.us.us.us.1
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	st.d	$a0, $a2, %pc_lo12(ref_line)
	b	.LBB13_37
.LBB13_32:                              # %.preheader60.lr.ph.split
	ori	$a1, $zero, 1
	blt	$s0, $a1, .LBB13_43
# %bb.33:                               # %.preheader60.preheader
	slli.d	$a1, $s2, 1
	slli.d	$a2, $s4, 1
	sub.d	$a1, $a1, $a2
	addi.w	$a3, $s5, -1
	mul.d	$a1, $a1, $a3
	alsl.d	$a1, $s2, $a1, 1
	sub.d	$a1, $a1, $a2
	add.d	$a0, $a0, $a1
	st.d	$a0, $s6, %pc_lo12(ref_line)
	pcalau12i	$a0, %pc_hi20(ChromaMEEnable)
	ld.w	$a0, $a0, %pc_lo12(ChromaMEEnable)
	bnez	$a0, .LBB13_9
	b	.LBB13_43
.LBB13_34:                              # %.loopexit61.split.us
	st.d	$a5, $s6, %pc_lo12(ref_line)
	st.d	$a4, $s7, %pc_lo12(src_line)
	b	.LBB13_43
.LBB13_35:                              # %.split.preheader
	ld.w	$a0, $s1, %pc_lo12(ref_access_method)
	slli.d	$a0, $a0, 3
	pcalau12i	$a1, %pc_hi20(get_crline)
	addi.d	$s0, $a1, %pc_lo12(get_crline)
	ldx.d	$a3, $s0, $a0
	ld.d	$s5, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a0, $s5, 8
	ld.d	$s4, $sp, 40                    # 8-byte Folded Reload
	addi.d	$a1, $s4, 512
	st.d	$a1, $s7, %pc_lo12(src_line)
	ld.d	$s2, $sp, 48                    # 8-byte Folded Reload
	move	$a1, $s2
	move	$a2, $s3
	jirl	$ra, $a3, 0
	ld.w	$a1, $s1, %pc_lo12(ref_access_method)
	slli.d	$a1, $a1, 3
	ldx.d	$a3, $s0, $a1
	ld.d	$a1, $s5, 16
	st.d	$a0, $s6, %pc_lo12(ref_line)
	addi.d	$a0, $s4, 1024
	st.d	$a0, $s7, %pc_lo12(src_line)
	move	$a0, $a1
	move	$a1, $s2
	move	$a2, $s3
	b	.LBB13_41
.LBB13_36:                              # %.loopexit.split.us
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	st.d	$a2, $a0, %pc_lo12(ref_line)
.LBB13_37:                              # %.loopexit
	st.d	$a1, $s7, %pc_lo12(src_line)
	b	.LBB13_43
.LBB13_38:                              # %.split.us.split
	bge	$fp, $s0, .LBB13_40
# %bb.39:                               # %.preheader.lr.ph.us.us125.preheader
	slli.d	$a0, $a1, 1
	slli.d	$a2, $s4, 1
	sub.d	$a0, $a0, $a2
	ld.w	$a3, $s1, %pc_lo12(ref_access_method)
	addi.w	$a4, $s5, -1
	mul.d	$a0, $a0, $a4
	alsl.d	$a1, $a1, $a0, 1
	slli.d	$a0, $a3, 3
	pcalau12i	$a3, %pc_hi20(get_crline)
	addi.d	$s0, $a3, %pc_lo12(get_crline)
	ldx.d	$a3, $s0, $a0
	ld.d	$s8, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a0, $s8, 8
	sub.d	$s2, $a1, $a2
	ld.d	$s5, $sp, 40                    # 8-byte Folded Reload
	addi.d	$a1, $s5, 512
	st.d	$a1, $s7, %pc_lo12(src_line)
	ld.d	$s4, $sp, 48                    # 8-byte Folded Reload
	move	$a1, $s4
	ld.d	$s3, $sp, 24                    # 8-byte Folded Reload
	move	$a2, $s3
	jirl	$ra, $a3, 0
	ld.w	$a1, $s1, %pc_lo12(ref_access_method)
	add.d	$a2, $a0, $s2
	slli.d	$a0, $a1, 3
	ldx.d	$a3, $s0, $a0
	ld.d	$a0, $s8, 16
	st.d	$a2, $s6, %pc_lo12(ref_line)
	addi.d	$a1, $s5, 1024
	st.d	$a1, $s7, %pc_lo12(src_line)
	move	$a1, $s4
	move	$a2, $s3
	jirl	$ra, $a3, 0
	add.d	$a0, $a0, $s2
	b	.LBB13_42
.LBB13_40:                              # %.preheader.lr.ph.us
	ld.w	$a0, $s1, %pc_lo12(ref_access_method)
	slli.d	$a0, $a0, 3
	pcalau12i	$a1, %pc_hi20(get_crline)
	addi.d	$a1, $a1, %pc_lo12(get_crline)
	ldx.d	$a3, $a1, $a0
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 8
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	addi.d	$a1, $a1, 512
	st.d	$a1, $s7, %pc_lo12(src_line)
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
.LBB13_41:                              # %.loopexit
	jirl	$ra, $a3, 0
.LBB13_42:                              # %.loopexit
	st.d	$a0, $s6, %pc_lo12(ref_line)
.LBB13_43:                              # %.loopexit
	move	$a0, $fp
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
.Lfunc_end13:
	.size	computeSSE, .Lfunc_end13-computeSSE
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function computeSSEWP
.LCPI14_0:
	.word	0                               # 0x0
	.word	4                               # 0x4
	.word	4                               # 0x4
	.word	4                               # 0x4
	.text
	.globl	computeSSEWP
	.p2align	5
	.type	computeSSEWP,@function
computeSSEWP:                           # @computeSSEWP
# %bb.0:
	addi.d	$sp, $sp, -704
	st.d	$ra, $sp, 696                   # 8-byte Folded Spill
	st.d	$fp, $sp, 688                   # 8-byte Folded Spill
	st.d	$s0, $sp, 680                   # 8-byte Folded Spill
	st.d	$s1, $sp, 672                   # 8-byte Folded Spill
	st.d	$s2, $sp, 664                   # 8-byte Folded Spill
	st.d	$s3, $sp, 656                   # 8-byte Folded Spill
	st.d	$s4, $sp, 648                   # 8-byte Folded Spill
	st.d	$s5, $sp, 640                   # 8-byte Folded Spill
	st.d	$s6, $sp, 632                   # 8-byte Folded Spill
	st.d	$s7, $sp, 624                   # 8-byte Folded Spill
	st.d	$s8, $sp, 616                   # 8-byte Folded Spill
	pcalau12i	$a6, %got_pc_hi20(img)
	ld.d	$s1, $a6, %got_pc_lo12(img)
	ld.d	$a6, $s1, 0
	pcalau12i	$a7, %pc_hi20(ref_access_method)
	st.d	$a7, $sp, 48                    # 8-byte Folded Spill
	ld.w	$a7, $a7, %pc_lo12(ref_access_method)
	ldptr.d	$s8, $a6, 14232
	pcalau12i	$a6, %pc_hi20(img_padded_size_x)
	ld.w	$s0, $a6, %pc_lo12(img_padded_size_x)
	slli.d	$a6, $a7, 3
	pcalau12i	$a7, %pc_hi20(get_line)
	addi.d	$a7, $a7, %pc_lo12(get_line)
	ldx.d	$a7, $a7, $a6
	pcalau12i	$a6, %pc_hi20(ref_pic_sub)
	addi.d	$a6, $a6, %pc_lo12(ref_pic_sub)
	st.d	$a6, $sp, 40                    # 8-byte Folded Spill
	ld.d	$a6, $a6, 0
	move	$fp, $a3
	move	$s3, $a2
	move	$s4, $a1
	pcalau12i	$a1, %pc_hi20(src_line)
	st.d	$a1, $sp, 80                    # 8-byte Folded Spill
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	st.d	$a0, $a1, %pc_lo12(src_line)
	move	$a0, $a6
	st.d	$a5, $sp, 56                    # 8-byte Folded Spill
	move	$a1, $a5
	st.d	$a4, $sp, 64                    # 8-byte Folded Spill
	move	$a2, $a4
	jirl	$ra, $a7, 0
	pcalau12i	$a4, %pc_hi20(ref_line)
	st.d	$a0, $a4, %pc_lo12(ref_line)
	ori	$a1, $zero, 1
	pcalau12i	$a2, %pc_hi20(.LCPI14_0)
	st.d	$a2, $sp, 88                    # 8-byte Folded Spill
	blt	$s4, $a1, .LBB14_12
# %bb.1:                                # %.preheader70.lr.ph
	blt	$s3, $a1, .LBB14_13
# %bb.2:                                # %.preheader70.lr.ph.split.us
	st.d	$a4, $sp, 72                    # 8-byte Folded Spill
	move	$s5, $zero
	move	$a1, $zero
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	ld.d	$t8, $a2, %pc_lo12(src_line)
	sub.w	$a2, $s0, $s3
	pcalau12i	$a3, %pc_hi20(weight_luma)
	ld.w	$a3, $a3, %pc_lo12(weight_luma)
	pcalau12i	$a4, %pc_hi20(wp_luma_round)
	ld.w	$a4, $a4, %pc_lo12(wp_luma_round)
	pcalau12i	$a5, %pc_hi20(luma_log_weight_denom)
	ld.w	$a5, $a5, %pc_lo12(luma_log_weight_denom)
	pcalau12i	$a6, %pc_hi20(offset_luma)
	st.d	$s1, $sp, 24                    # 8-byte Folded Spill
	ld.d	$a7, $s1, 0
	ld.w	$a6, $a6, %pc_lo12(offset_luma)
	lu12i.w	$t0, 3
	ori	$t0, $t0, 3232
	ldx.w	$a7, $a7, $t0
	addi.d	$t0, $s3, -1
	bstrpick.d	$t0, $t0, 31, 2
	addi.d	$t0, $t0, 1
	bstrpick.d	$t3, $t0, 30, 3
	slli.d	$t1, $t3, 3
	slli.d	$t2, $t3, 5
	slli.d	$t3, $t3, 6
	vreplgr2vr.w	$vr0, $a3
	vreplgr2vr.w	$vr1, $a4
	vreplgr2vr.w	$vr2, $a5
	vreplgr2vr.w	$vr3, $a6
	vreplgr2vr.w	$vr4, $a7
	ori	$s2, $zero, 29
	vrepli.b	$vr5, 0
	.p2align	4, , 16
.LBB14_3:                               # %.preheader70.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB14_6 Depth 2
                                        #     Child Loop BB14_8 Depth 2
	bgeu	$s3, $s2, .LBB14_5
# %bb.4:                                #   in Loop: Header=BB14_3 Depth=1
	move	$t7, $zero
	move	$t6, $a0
	move	$t5, $t8
	b	.LBB14_8
	.p2align	4, , 16
.LBB14_5:                               # %vector.ph
                                        #   in Loop: Header=BB14_3 Depth=1
	add.d	$t6, $a0, $t3
	ld.d	$t4, $sp, 88                    # 8-byte Folded Reload
	vld	$vr6, $t4, %pc_lo12(.LCPI14_0)
	add.d	$t5, $t8, $t3
	vinsgr2vr.w	$vr7, $s5, 0
	vinsgr2vr.w	$vr8, $zero, 0
	vshuf.w	$vr6, $vr8, $vr7
	addi.d	$a0, $a0, 32
	addi.d	$t7, $t8, 32
	move	$t8, $t1
	vori.b	$vr7, $vr5, 0
	.p2align	4, , 16
.LBB14_6:                               # %vector.body
                                        #   Parent Loop BB14_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.h	$s0, $a0, -8
	ld.h	$s5, $a0, -16
	ld.h	$ra, $a0, -24
	ld.h	$s1, $a0, -32
	st.h	$s0, $sp, 470
	st.h	$s5, $sp, 468
	st.h	$ra, $sp, 466
	st.h	$s1, $sp, 464
	vld	$vr8, $sp, 464
	ld.h	$s0, $a0, 24
	ld.h	$s1, $a0, 16
	ld.h	$s5, $a0, 8
	ld.h	$ra, $a0, 0
	st.h	$s0, $sp, 454
	st.h	$s1, $sp, 452
	st.h	$s5, $sp, 450
	st.h	$ra, $sp, 448
	vld	$vr9, $sp, 448
	vilvl.h	$vr8, $vr5, $vr8
	vilvl.h	$vr9, $vr5, $vr9
	vori.b	$vr10, $vr1, 0
	vmadd.w	$vr10, $vr0, $vr8
	vori.b	$vr8, $vr1, 0
	vmadd.w	$vr8, $vr0, $vr9
	vsra.w	$vr9, $vr10, $vr2
	vsra.w	$vr8, $vr8, $vr2
	vadd.w	$vr9, $vr9, $vr3
	vadd.w	$vr8, $vr8, $vr3
	vmaxi.w	$vr9, $vr9, 0
	vmaxi.w	$vr8, $vr8, 0
	ld.h	$s0, $t7, -8
	ld.h	$s1, $t7, -16
	ld.h	$s5, $t7, -24
	ld.h	$ra, $t7, -32
	st.h	$s0, $sp, 598
	st.h	$s1, $sp, 596
	st.h	$s5, $sp, 594
	st.h	$ra, $sp, 592
	vld	$vr10, $sp, 592
	ld.h	$s0, $t7, 24
	ld.h	$s1, $t7, 16
	ld.h	$s5, $t7, 8
	ld.h	$ra, $t7, 0
	st.h	$s0, $sp, 582
	st.h	$s1, $sp, 580
	st.h	$s5, $sp, 578
	st.h	$ra, $sp, 576
	vld	$vr11, $sp, 576
	vmin.w	$vr9, $vr9, $vr4
	vmin.w	$vr8, $vr8, $vr4
	vilvl.h	$vr10, $vr5, $vr10
	vilvl.h	$vr11, $vr5, $vr11
	vsub.w	$vr9, $vr10, $vr9
	vsub.w	$vr8, $vr11, $vr8
	vshuf4i.w	$vr10, $vr9, 50
	vslli.d	$vr10, $vr10, 32
	vsrai.d	$vr10, $vr10, 32
	vshuf4i.w	$vr9, $vr9, 16
	vslli.d	$vr9, $vr9, 32
	vsrai.d	$vr9, $vr9, 32
	vshuf4i.w	$vr11, $vr8, 50
	vslli.d	$vr11, $vr11, 32
	vsrai.d	$vr11, $vr11, 32
	vshuf4i.w	$vr8, $vr8, 16
	vslli.d	$vr8, $vr8, 32
	vsrai.d	$vr8, $vr8, 32
	vpickve2gr.d	$s0, $vr9, 0
	slli.d	$s0, $s0, 2
	vpickve2gr.d	$s1, $vr9, 1
	slli.d	$s1, $s1, 2
	vpickve2gr.d	$s5, $vr10, 0
	slli.d	$s5, $s5, 2
	vpickve2gr.d	$ra, $vr10, 1
	slli.d	$ra, $ra, 2
	vpickve2gr.d	$s2, $vr8, 0
	slli.d	$s2, $s2, 2
	vpickve2gr.d	$s6, $vr8, 1
	slli.d	$s6, $s6, 2
	vpickve2gr.d	$s7, $vr11, 0
	slli.d	$s7, $s7, 2
	vpickve2gr.d	$t4, $vr11, 1
	slli.d	$t4, $t4, 2
	ldx.w	$s0, $s8, $s0
	ldx.w	$s1, $s8, $s1
	ldx.w	$s5, $s8, $s5
	ldx.w	$ra, $s8, $ra
	vinsgr2vr.w	$vr8, $s0, 0
	vinsgr2vr.w	$vr8, $s1, 1
	vinsgr2vr.w	$vr8, $s5, 2
	vinsgr2vr.w	$vr8, $ra, 3
	ldx.w	$s0, $s8, $s2
	ldx.w	$s1, $s8, $s6
	ldx.w	$s2, $s8, $s7
	ldx.w	$t4, $s8, $t4
	vinsgr2vr.w	$vr9, $s0, 0
	vinsgr2vr.w	$vr9, $s1, 1
	vinsgr2vr.w	$vr9, $s2, 2
	vinsgr2vr.w	$vr9, $t4, 3
	ld.h	$t4, $a0, -6
	ld.h	$s0, $a0, -14
	ld.h	$s1, $a0, -22
	ld.h	$s2, $a0, -30
	st.h	$t4, $sp, 438
	st.h	$s0, $sp, 436
	st.h	$s1, $sp, 434
	st.h	$s2, $sp, 432
	vld	$vr10, $sp, 432
	ld.h	$t4, $a0, 26
	ld.h	$s0, $a0, 18
	ld.h	$s1, $a0, 10
	ld.h	$s2, $a0, 2
	st.h	$t4, $sp, 422
	st.h	$s0, $sp, 420
	st.h	$s1, $sp, 418
	st.h	$s2, $sp, 416
	vld	$vr11, $sp, 416
	vadd.w	$vr6, $vr8, $vr6
	vadd.w	$vr7, $vr9, $vr7
	vilvl.h	$vr8, $vr5, $vr10
	vilvl.h	$vr9, $vr5, $vr11
	vori.b	$vr10, $vr1, 0
	vmadd.w	$vr10, $vr0, $vr8
	vori.b	$vr8, $vr1, 0
	vmadd.w	$vr8, $vr0, $vr9
	vsra.w	$vr9, $vr10, $vr2
	vsra.w	$vr8, $vr8, $vr2
	vadd.w	$vr9, $vr9, $vr3
	vadd.w	$vr8, $vr8, $vr3
	vmaxi.w	$vr9, $vr9, 0
	vmaxi.w	$vr8, $vr8, 0
	ld.h	$t4, $t7, -6
	ld.h	$s0, $t7, -14
	ld.h	$s1, $t7, -22
	ld.h	$s2, $t7, -30
	st.h	$t4, $sp, 566
	st.h	$s0, $sp, 564
	st.h	$s1, $sp, 562
	st.h	$s2, $sp, 560
	vld	$vr10, $sp, 560
	ld.h	$t4, $t7, 26
	ld.h	$s0, $t7, 18
	ld.h	$s1, $t7, 10
	ld.h	$s2, $t7, 2
	st.h	$t4, $sp, 550
	st.h	$s0, $sp, 548
	st.h	$s1, $sp, 546
	st.h	$s2, $sp, 544
	vld	$vr11, $sp, 544
	vmin.w	$vr9, $vr9, $vr4
	vmin.w	$vr8, $vr8, $vr4
	vilvl.h	$vr10, $vr5, $vr10
	vilvl.h	$vr11, $vr5, $vr11
	vsub.w	$vr9, $vr10, $vr9
	vsub.w	$vr8, $vr11, $vr8
	vshuf4i.w	$vr10, $vr9, 50
	vslli.d	$vr10, $vr10, 32
	vsrai.d	$vr10, $vr10, 32
	vshuf4i.w	$vr9, $vr9, 16
	vslli.d	$vr9, $vr9, 32
	vsrai.d	$vr9, $vr9, 32
	vshuf4i.w	$vr11, $vr8, 50
	vslli.d	$vr11, $vr11, 32
	vsrai.d	$vr11, $vr11, 32
	vshuf4i.w	$vr8, $vr8, 16
	vslli.d	$vr8, $vr8, 32
	vsrai.d	$vr8, $vr8, 32
	vpickve2gr.d	$t4, $vr9, 0
	slli.d	$t4, $t4, 2
	vpickve2gr.d	$s0, $vr9, 1
	slli.d	$s0, $s0, 2
	vpickve2gr.d	$s1, $vr10, 0
	slli.d	$s1, $s1, 2
	vpickve2gr.d	$s2, $vr10, 1
	slli.d	$s2, $s2, 2
	vpickve2gr.d	$s5, $vr8, 0
	slli.d	$s5, $s5, 2
	vpickve2gr.d	$s6, $vr8, 1
	slli.d	$s6, $s6, 2
	vpickve2gr.d	$s7, $vr11, 0
	slli.d	$s7, $s7, 2
	vpickve2gr.d	$ra, $vr11, 1
	slli.d	$ra, $ra, 2
	ldx.w	$t4, $s8, $t4
	ldx.w	$s0, $s8, $s0
	ldx.w	$s1, $s8, $s1
	ldx.w	$s2, $s8, $s2
	vinsgr2vr.w	$vr8, $t4, 0
	vinsgr2vr.w	$vr8, $s0, 1
	vinsgr2vr.w	$vr8, $s1, 2
	vinsgr2vr.w	$vr8, $s2, 3
	ldx.w	$t4, $s8, $s5
	ldx.w	$s0, $s8, $s6
	ldx.w	$s1, $s8, $s7
	ldx.w	$s2, $s8, $ra
	vinsgr2vr.w	$vr9, $t4, 0
	vinsgr2vr.w	$vr9, $s0, 1
	vinsgr2vr.w	$vr9, $s1, 2
	vinsgr2vr.w	$vr9, $s2, 3
	ld.h	$t4, $a0, -4
	ld.h	$s0, $a0, -12
	ld.h	$s1, $a0, -20
	ld.h	$s2, $a0, -28
	st.h	$t4, $sp, 406
	st.h	$s0, $sp, 404
	st.h	$s1, $sp, 402
	st.h	$s2, $sp, 400
	vld	$vr10, $sp, 400
	ld.h	$t4, $a0, 28
	ld.h	$s0, $a0, 20
	ld.h	$s1, $a0, 12
	ld.h	$s2, $a0, 4
	st.h	$t4, $sp, 390
	st.h	$s0, $sp, 388
	st.h	$s1, $sp, 386
	st.h	$s2, $sp, 384
	vld	$vr11, $sp, 384
	vadd.w	$vr6, $vr6, $vr8
	vadd.w	$vr7, $vr7, $vr9
	vilvl.h	$vr8, $vr5, $vr10
	vilvl.h	$vr9, $vr5, $vr11
	vori.b	$vr10, $vr1, 0
	vmadd.w	$vr10, $vr0, $vr8
	vori.b	$vr8, $vr1, 0
	vmadd.w	$vr8, $vr0, $vr9
	vsra.w	$vr9, $vr10, $vr2
	vsra.w	$vr8, $vr8, $vr2
	vadd.w	$vr9, $vr9, $vr3
	vadd.w	$vr8, $vr8, $vr3
	vmaxi.w	$vr9, $vr9, 0
	vmaxi.w	$vr8, $vr8, 0
	ld.h	$t4, $t7, -4
	ld.h	$s0, $t7, -12
	ld.h	$s1, $t7, -20
	ld.h	$s2, $t7, -28
	st.h	$t4, $sp, 534
	st.h	$s0, $sp, 532
	st.h	$s1, $sp, 530
	st.h	$s2, $sp, 528
	vld	$vr10, $sp, 528
	ld.h	$t4, $t7, 28
	ld.h	$s0, $t7, 20
	ld.h	$s1, $t7, 12
	ld.h	$s2, $t7, 4
	st.h	$t4, $sp, 518
	st.h	$s0, $sp, 516
	st.h	$s1, $sp, 514
	st.h	$s2, $sp, 512
	vld	$vr11, $sp, 512
	vmin.w	$vr9, $vr9, $vr4
	vmin.w	$vr8, $vr8, $vr4
	vilvl.h	$vr10, $vr5, $vr10
	vilvl.h	$vr11, $vr5, $vr11
	vsub.w	$vr9, $vr10, $vr9
	vsub.w	$vr8, $vr11, $vr8
	vshuf4i.w	$vr10, $vr9, 50
	vslli.d	$vr10, $vr10, 32
	vsrai.d	$vr10, $vr10, 32
	vshuf4i.w	$vr9, $vr9, 16
	vslli.d	$vr9, $vr9, 32
	vsrai.d	$vr9, $vr9, 32
	vshuf4i.w	$vr11, $vr8, 50
	vslli.d	$vr11, $vr11, 32
	vsrai.d	$vr11, $vr11, 32
	vshuf4i.w	$vr8, $vr8, 16
	vslli.d	$vr8, $vr8, 32
	vsrai.d	$vr8, $vr8, 32
	vpickve2gr.d	$t4, $vr9, 0
	slli.d	$t4, $t4, 2
	vpickve2gr.d	$s0, $vr9, 1
	slli.d	$s0, $s0, 2
	vpickve2gr.d	$s1, $vr10, 0
	slli.d	$s1, $s1, 2
	vpickve2gr.d	$s2, $vr10, 1
	slli.d	$s2, $s2, 2
	vpickve2gr.d	$s5, $vr8, 0
	slli.d	$s5, $s5, 2
	vpickve2gr.d	$s6, $vr8, 1
	slli.d	$s6, $s6, 2
	vpickve2gr.d	$s7, $vr11, 0
	slli.d	$s7, $s7, 2
	vpickve2gr.d	$ra, $vr11, 1
	slli.d	$ra, $ra, 2
	ldx.w	$t4, $s8, $t4
	ldx.w	$s0, $s8, $s0
	ldx.w	$s1, $s8, $s1
	ldx.w	$s2, $s8, $s2
	vinsgr2vr.w	$vr8, $t4, 0
	vinsgr2vr.w	$vr8, $s0, 1
	vinsgr2vr.w	$vr8, $s1, 2
	vinsgr2vr.w	$vr8, $s2, 3
	ldx.w	$t4, $s8, $s5
	ldx.w	$s0, $s8, $s6
	ldx.w	$s1, $s8, $s7
	ldx.w	$s2, $s8, $ra
	vinsgr2vr.w	$vr9, $t4, 0
	vinsgr2vr.w	$vr9, $s0, 1
	vinsgr2vr.w	$vr9, $s1, 2
	vinsgr2vr.w	$vr9, $s2, 3
	ld.h	$t4, $a0, -2
	ld.h	$s0, $a0, -10
	ld.h	$s1, $a0, -18
	ld.h	$s2, $a0, -26
	st.h	$t4, $sp, 374
	st.h	$s0, $sp, 372
	st.h	$s1, $sp, 370
	st.h	$s2, $sp, 368
	vld	$vr10, $sp, 368
	ld.h	$t4, $a0, 30
	ld.h	$s0, $a0, 22
	ld.h	$s1, $a0, 14
	ld.h	$s2, $a0, 6
	st.h	$t4, $sp, 358
	st.h	$s0, $sp, 356
	st.h	$s1, $sp, 354
	st.h	$s2, $sp, 352
	vld	$vr11, $sp, 352
	vadd.w	$vr6, $vr6, $vr8
	vadd.w	$vr7, $vr7, $vr9
	vilvl.h	$vr8, $vr5, $vr10
	vilvl.h	$vr9, $vr5, $vr11
	vori.b	$vr10, $vr1, 0
	vmadd.w	$vr10, $vr0, $vr8
	vori.b	$vr8, $vr1, 0
	vmadd.w	$vr8, $vr0, $vr9
	vsra.w	$vr9, $vr10, $vr2
	vsra.w	$vr8, $vr8, $vr2
	vadd.w	$vr9, $vr9, $vr3
	vadd.w	$vr8, $vr8, $vr3
	vmaxi.w	$vr9, $vr9, 0
	vmaxi.w	$vr8, $vr8, 0
	ld.h	$t4, $t7, -2
	ld.h	$s0, $t7, -10
	ld.h	$s1, $t7, -18
	ld.h	$s2, $t7, -26
	st.h	$t4, $sp, 502
	st.h	$s0, $sp, 500
	st.h	$s1, $sp, 498
	st.h	$s2, $sp, 496
	vld	$vr10, $sp, 496
	ld.h	$t4, $t7, 30
	ld.h	$s0, $t7, 22
	ld.h	$s1, $t7, 14
	ld.h	$s2, $t7, 6
	st.h	$t4, $sp, 486
	st.h	$s0, $sp, 484
	st.h	$s1, $sp, 482
	st.h	$s2, $sp, 480
	vld	$vr11, $sp, 480
	vmin.w	$vr9, $vr9, $vr4
	vmin.w	$vr8, $vr8, $vr4
	vilvl.h	$vr10, $vr5, $vr10
	vilvl.h	$vr11, $vr5, $vr11
	vsub.w	$vr9, $vr10, $vr9
	vsub.w	$vr8, $vr11, $vr8
	vshuf4i.w	$vr10, $vr9, 50
	vslli.d	$vr10, $vr10, 32
	vsrai.d	$vr10, $vr10, 32
	vshuf4i.w	$vr9, $vr9, 16
	vslli.d	$vr9, $vr9, 32
	vsrai.d	$vr9, $vr9, 32
	vshuf4i.w	$vr11, $vr8, 50
	vslli.d	$vr11, $vr11, 32
	vsrai.d	$vr11, $vr11, 32
	vshuf4i.w	$vr8, $vr8, 16
	vslli.d	$vr8, $vr8, 32
	vsrai.d	$vr8, $vr8, 32
	vpickve2gr.d	$t4, $vr9, 0
	slli.d	$t4, $t4, 2
	vpickve2gr.d	$s0, $vr9, 1
	slli.d	$s0, $s0, 2
	vpickve2gr.d	$s1, $vr10, 0
	slli.d	$s1, $s1, 2
	vpickve2gr.d	$s2, $vr10, 1
	slli.d	$s2, $s2, 2
	vpickve2gr.d	$s5, $vr8, 0
	slli.d	$s5, $s5, 2
	vpickve2gr.d	$s6, $vr8, 1
	slli.d	$s6, $s6, 2
	vpickve2gr.d	$s7, $vr11, 0
	slli.d	$s7, $s7, 2
	vpickve2gr.d	$ra, $vr11, 1
	slli.d	$ra, $ra, 2
	ldx.w	$t4, $s8, $t4
	ldx.w	$s0, $s8, $s0
	ldx.w	$s1, $s8, $s1
	ldx.w	$s2, $s8, $s2
	vinsgr2vr.w	$vr8, $t4, 0
	vinsgr2vr.w	$vr8, $s0, 1
	vinsgr2vr.w	$vr8, $s1, 2
	vinsgr2vr.w	$vr8, $s2, 3
	ldx.w	$t4, $s8, $s5
	ldx.w	$s0, $s8, $s6
	ldx.w	$s1, $s8, $s7
	ldx.w	$s2, $s8, $ra
	vinsgr2vr.w	$vr9, $t4, 0
	vinsgr2vr.w	$vr9, $s0, 1
	vinsgr2vr.w	$vr9, $s1, 2
	vinsgr2vr.w	$vr9, $s2, 3
	vadd.w	$vr6, $vr6, $vr8
	vadd.w	$vr7, $vr7, $vr9
	addi.d	$t8, $t8, -8
	addi.d	$a0, $a0, 64
	addi.d	$t7, $t7, 64
	bnez	$t8, .LBB14_6
# %bb.7:                                # %middle.block
                                        #   in Loop: Header=BB14_3 Depth=1
	vadd.w	$vr6, $vr7, $vr6
	vshuf4i.w	$vr7, $vr6, 14
	vadd.w	$vr6, $vr6, $vr7
	vreplvei.w	$vr7, $vr6, 1
	vadd.w	$vr6, $vr6, $vr7
	vpickve2gr.w	$s5, $vr6, 0
	move	$t7, $t2
	ori	$s2, $zero, 29
	beq	$t1, $t0, .LBB14_9
	.p2align	4, , 16
.LBB14_8:                               # %scalar.ph
                                        #   Parent Loop BB14_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.hu	$a0, $t6, 0
	mul.d	$a0, $a3, $a0
	add.d	$a0, $a0, $a4
	sra.w	$a0, $a0, $a5
	add.w	$a0, $a0, $a6
	srai.d	$t4, $a0, 63
	andn	$a0, $a0, $t4
	slt	$t4, $a0, $a7
	maskeqz	$a0, $a0, $t4
	ld.hu	$t8, $t5, 0
	ld.hu	$s0, $t6, 2
	masknez	$t4, $a7, $t4
	or	$a0, $a0, $t4
	sub.w	$a0, $t8, $a0
	mul.d	$t4, $a3, $s0
	add.d	$t4, $t4, $a4
	sra.w	$t4, $t4, $a5
	add.w	$t4, $t4, $a6
	srai.d	$t8, $t4, 63
	andn	$t4, $t4, $t8
	slt	$t8, $t4, $a7
	maskeqz	$t4, $t4, $t8
	masknez	$t8, $a7, $t8
	ld.hu	$s0, $t5, 2
	ld.hu	$s1, $t6, 4
	or	$t4, $t4, $t8
	slli.d	$a0, $a0, 2
	sub.w	$t4, $s0, $t4
	mul.d	$t8, $a3, $s1
	add.d	$t8, $t8, $a4
	sra.w	$t8, $t8, $a5
	add.w	$t8, $t8, $a6
	srai.d	$s0, $t8, 63
	andn	$t8, $t8, $s0
	slt	$s0, $t8, $a7
	maskeqz	$t8, $t8, $s0
	masknez	$s0, $a7, $s0
	or	$t8, $t8, $s0
	ld.hu	$s0, $t5, 4
	ldx.w	$a0, $s8, $a0
	slli.d	$t4, $t4, 2
	ldx.w	$t4, $s8, $t4
	sub.w	$t8, $s0, $t8
	slli.d	$t8, $t8, 2
	ldx.w	$t8, $s8, $t8
	ld.hu	$s0, $t6, 6
	add.d	$a0, $a0, $s5
	add.d	$a0, $a0, $t4
	add.d	$a0, $a0, $t8
	mul.d	$t4, $a3, $s0
	add.d	$t4, $t4, $a4
	sra.w	$t4, $t4, $a5
	add.w	$t4, $t4, $a6
	srai.d	$t8, $t4, 63
	andn	$t4, $t4, $t8
	slt	$t8, $t4, $a7
	ld.hu	$s0, $t5, 6
	maskeqz	$t4, $t4, $t8
	masknez	$t8, $a7, $t8
	or	$t4, $t4, $t8
	sub.w	$t4, $s0, $t4
	slli.d	$t4, $t4, 2
	ldx.w	$t4, $s8, $t4
	addi.d	$t6, $t6, 8
	addi.d	$t5, $t5, 8
	addi.w	$t7, $t7, 4
	add.w	$s5, $a0, $t4
	blt	$t7, $s3, .LBB14_8
.LBB14_9:                               # %._crit_edge.us
                                        #   in Loop: Header=BB14_3 Depth=1
	bge	$s5, $fp, .LBB14_28
# %bb.10:                               #   in Loop: Header=BB14_3 Depth=1
	addi.w	$a1, $a1, 1
	alsl.d	$a0, $a2, $t6, 1
	move	$t8, $t5
	bne	$a1, $s4, .LBB14_3
# %bb.11:                               # %._crit_edge88.split.us
	ld.d	$a4, $sp, 72                    # 8-byte Folded Reload
	st.d	$a0, $a4, %pc_lo12(ref_line)
	ld.d	$s0, $sp, 80                    # 8-byte Folded Reload
	st.d	$t5, $s0, %pc_lo12(src_line)
	ld.d	$s1, $sp, 24                    # 8-byte Folded Reload
	pcalau12i	$a0, %pc_hi20(ChromaMEEnable)
	ld.w	$a0, $a0, %pc_lo12(ChromaMEEnable)
	bnez	$a0, .LBB14_16
	b	.LBB14_47
.LBB14_12:
	move	$s5, $zero
	b	.LBB14_15
.LBB14_13:                              # %.preheader70.lr.ph.split
	move	$s5, $zero
	ori	$a1, $zero, 1
	blt	$fp, $a1, .LBB14_47
# %bb.14:                               # %.preheader70.preheader
	slli.d	$a1, $s0, 1
	slli.d	$a2, $s3, 1
	sub.d	$a1, $a1, $a2
	addi.w	$a3, $s4, -1
	mul.d	$a1, $a1, $a3
	alsl.d	$a1, $s0, $a1, 1
	sub.d	$a1, $a1, $a2
	add.d	$a0, $a0, $a1
	st.d	$a0, $a4, %pc_lo12(ref_line)
.LBB14_15:                              # %._crit_edge88
	ld.d	$s0, $sp, 80                    # 8-byte Folded Reload
	pcalau12i	$a0, %pc_hi20(ChromaMEEnable)
	ld.w	$a0, $a0, %pc_lo12(ChromaMEEnable)
	beqz	$a0, .LBB14_47
.LBB14_16:
	st.d	$a4, $sp, 72                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(shift_cr_y)
	ld.wu	$a0, $a0, %pc_lo12(shift_cr_y)
	sra.w	$s4, $s4, $a0
	blez	$s4, .LBB14_29
# %bb.17:                               # %.preheader.lr.ph.us.preheader
	st.d	$s1, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(shift_cr_x)
	ld.wu	$a0, $a0, %pc_lo12(shift_cr_x)
	pcalau12i	$a1, %pc_hi20(img_cr_padded_size_x)
	ld.w	$a1, $a1, %pc_lo12(img_cr_padded_size_x)
	sra.w	$s3, $s3, $a0
	slli.d	$a0, $a1, 1
	slli.d	$a2, $s3, 1
	sub.d	$a0, $a0, $a2
	addi.w	$a3, $s4, -1
	ld.d	$a4, $sp, 48                    # 8-byte Folded Reload
	ld.w	$a4, $a4, %pc_lo12(ref_access_method)
	mul.d	$a0, $a0, $a3
	alsl.d	$a0, $a1, $a0, 1
	sub.d	$a0, $a0, $a2
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	slli.d	$a0, $a4, 3
	pcalau12i	$a2, %pc_hi20(get_crline)
	addi.d	$a2, $a2, %pc_lo12(get_crline)
	st.d	$a2, $sp, 16                    # 8-byte Folded Spill
	ldx.d	$a3, $a2, $a0
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 8
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	addi.d	$a2, $a2, 512
	st.d	$a2, $s0, %pc_lo12(src_line)
	move	$s1, $s0
	sub.w	$s0, $a1, $s3
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 64                    # 8-byte Folded Reload
	jirl	$ra, $a3, 0
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(ref_line)
	pcalau12i	$ra, %pc_hi20(wp_chroma_round)
	pcalau12i	$a1, %pc_hi20(chroma_log_weight_denom)
	blez	$s3, .LBB14_30
# %bb.18:                               # %.preheader.lr.ph.split.us.us
	move	$a3, $zero
	ld.w	$a4, $ra, %pc_lo12(wp_chroma_round)
	st.d	$a1, $sp, 0                     # 8-byte Folded Spill
	ld.w	$a5, $a1, %pc_lo12(chroma_log_weight_denom)
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	ld.d	$t4, $s1, %pc_lo12(src_line)
	lu12i.w	$a2, 3
	ori	$a2, $a2, 3236
	ldx.w	$a6, $a1, $a2
	pcalau12i	$a1, %pc_hi20(weight_cr)
	ld.w	$a7, $a1, %pc_lo12(weight_cr)
	pcalau12i	$a1, %pc_hi20(offset_cr)
	ld.w	$t0, $a1, %pc_lo12(offset_cr)
	bstrpick.d	$a1, $s3, 30, 3
	slli.d	$t1, $a1, 3
	slli.d	$t2, $a1, 5
	vreplgr2vr.w	$vr0, $a7
	vreplgr2vr.w	$vr1, $a4
	vreplgr2vr.w	$vr2, $a5
	vreplgr2vr.w	$vr3, $t0
	vreplgr2vr.w	$vr4, $a6
	ori	$t3, $zero, 8
	vrepli.b	$vr5, 0
	.p2align	4, , 16
.LBB14_19:                              # %.preheader.us.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB14_22 Depth 2
                                        #     Child Loop BB14_25 Depth 2
	bgeu	$s3, $t3, .LBB14_21
# %bb.20:                               #   in Loop: Header=BB14_19 Depth=1
	move	$t5, $zero
	move	$a2, $a0
	move	$a1, $t4
	b	.LBB14_24
	.p2align	4, , 16
.LBB14_21:                              # %vector.ph227
                                        #   in Loop: Header=BB14_19 Depth=1
	add.d	$a2, $a0, $t2
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	vld	$vr6, $a1, %pc_lo12(.LCPI14_0)
	add.d	$a1, $t4, $t2
	vinsgr2vr.w	$vr7, $s5, 0
	vinsgr2vr.w	$vr8, $zero, 0
	vshuf.w	$vr6, $vr8, $vr7
	addi.d	$a0, $a0, 16
	addi.d	$t4, $t4, 16
	move	$t5, $t1
	vori.b	$vr7, $vr5, 0
	.p2align	4, , 16
.LBB14_22:                              # %vector.body241
                                        #   Parent Loop BB14_19 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.h	$t6, $a0, -4
	ld.h	$t7, $a0, -8
	ld.h	$t8, $a0, -12
	ld.h	$s1, $a0, -16
	st.h	$t6, $sp, 278
	st.h	$t7, $sp, 276
	st.h	$t8, $sp, 274
	st.h	$s1, $sp, 272
	vld	$vr8, $sp, 272
	ld.h	$t6, $a0, 12
	ld.h	$t7, $a0, 8
	ld.h	$t8, $a0, 4
	ld.h	$s1, $a0, 0
	st.h	$t6, $sp, 262
	st.h	$t7, $sp, 260
	st.h	$t8, $sp, 258
	st.h	$s1, $sp, 256
	vld	$vr9, $sp, 256
	vilvl.h	$vr8, $vr5, $vr8
	vilvl.h	$vr9, $vr5, $vr9
	vori.b	$vr10, $vr1, 0
	vmadd.w	$vr10, $vr0, $vr8
	vori.b	$vr8, $vr1, 0
	vmadd.w	$vr8, $vr0, $vr9
	vsra.w	$vr9, $vr10, $vr2
	vsra.w	$vr8, $vr8, $vr2
	vadd.w	$vr9, $vr9, $vr3
	vadd.w	$vr8, $vr8, $vr3
	vmaxi.w	$vr9, $vr9, 0
	vmaxi.w	$vr8, $vr8, 0
	ld.h	$t6, $t4, -4
	ld.h	$t7, $t4, -8
	ld.h	$t8, $t4, -12
	ld.h	$s1, $t4, -16
	st.h	$t6, $sp, 342
	st.h	$t7, $sp, 340
	st.h	$t8, $sp, 338
	st.h	$s1, $sp, 336
	vld	$vr10, $sp, 336
	ld.h	$t6, $t4, 12
	ld.h	$t7, $t4, 8
	ld.h	$t8, $t4, 4
	ld.h	$s1, $t4, 0
	st.h	$t6, $sp, 326
	st.h	$t7, $sp, 324
	st.h	$t8, $sp, 322
	st.h	$s1, $sp, 320
	vld	$vr11, $sp, 320
	vmin.w	$vr9, $vr9, $vr4
	vmin.w	$vr8, $vr8, $vr4
	vilvl.h	$vr10, $vr5, $vr10
	vilvl.h	$vr11, $vr5, $vr11
	vsub.w	$vr9, $vr10, $vr9
	vsub.w	$vr8, $vr11, $vr8
	vshuf4i.w	$vr10, $vr9, 50
	vslli.d	$vr10, $vr10, 32
	vsrai.d	$vr10, $vr10, 32
	vshuf4i.w	$vr9, $vr9, 16
	vslli.d	$vr9, $vr9, 32
	vsrai.d	$vr9, $vr9, 32
	vshuf4i.w	$vr11, $vr8, 50
	vslli.d	$vr11, $vr11, 32
	vsrai.d	$vr11, $vr11, 32
	vshuf4i.w	$vr8, $vr8, 16
	vslli.d	$vr8, $vr8, 32
	vsrai.d	$vr8, $vr8, 32
	vpickve2gr.d	$t6, $vr9, 0
	slli.d	$t6, $t6, 2
	vpickve2gr.d	$t7, $vr9, 1
	slli.d	$t7, $t7, 2
	vpickve2gr.d	$t8, $vr10, 0
	slli.d	$t8, $t8, 2
	vpickve2gr.d	$s1, $vr10, 1
	slli.d	$s1, $s1, 2
	vpickve2gr.d	$s2, $vr8, 0
	slli.d	$s2, $s2, 2
	vpickve2gr.d	$s5, $vr8, 1
	slli.d	$s5, $s5, 2
	vpickve2gr.d	$s6, $vr11, 0
	slli.d	$s6, $s6, 2
	vpickve2gr.d	$s7, $vr11, 1
	slli.d	$s7, $s7, 2
	ldx.w	$t6, $s8, $t6
	ldx.w	$t7, $s8, $t7
	ldx.w	$t8, $s8, $t8
	ldx.w	$s1, $s8, $s1
	vinsgr2vr.w	$vr8, $t6, 0
	vinsgr2vr.w	$vr8, $t7, 1
	vinsgr2vr.w	$vr8, $t8, 2
	vinsgr2vr.w	$vr8, $s1, 3
	ldx.w	$t6, $s8, $s2
	ldx.w	$t7, $s8, $s5
	ldx.w	$t8, $s8, $s6
	ldx.w	$s1, $s8, $s7
	vinsgr2vr.w	$vr9, $t6, 0
	vinsgr2vr.w	$vr9, $t7, 1
	vinsgr2vr.w	$vr9, $t8, 2
	vinsgr2vr.w	$vr9, $s1, 3
	ld.h	$t6, $a0, -2
	ld.h	$t7, $a0, -6
	ld.h	$t8, $a0, -10
	ld.h	$s1, $a0, -14
	st.h	$t6, $sp, 246
	st.h	$t7, $sp, 244
	st.h	$t8, $sp, 242
	st.h	$s1, $sp, 240
	vld	$vr10, $sp, 240
	ld.h	$t6, $a0, 14
	ld.h	$t7, $a0, 10
	ld.h	$t8, $a0, 6
	ld.h	$s1, $a0, 2
	st.h	$t6, $sp, 230
	st.h	$t7, $sp, 228
	st.h	$t8, $sp, 226
	st.h	$s1, $sp, 224
	vld	$vr11, $sp, 224
	vadd.w	$vr6, $vr8, $vr6
	vadd.w	$vr7, $vr9, $vr7
	vilvl.h	$vr8, $vr5, $vr10
	vilvl.h	$vr9, $vr5, $vr11
	vori.b	$vr10, $vr1, 0
	vmadd.w	$vr10, $vr0, $vr8
	vori.b	$vr8, $vr1, 0
	vmadd.w	$vr8, $vr0, $vr9
	vsra.w	$vr9, $vr10, $vr2
	vsra.w	$vr8, $vr8, $vr2
	vadd.w	$vr9, $vr9, $vr3
	vadd.w	$vr8, $vr8, $vr3
	vmaxi.w	$vr9, $vr9, 0
	vmaxi.w	$vr8, $vr8, 0
	ld.h	$t6, $t4, -2
	ld.h	$t7, $t4, -6
	ld.h	$t8, $t4, -10
	ld.h	$s1, $t4, -14
	st.h	$t6, $sp, 310
	st.h	$t7, $sp, 308
	st.h	$t8, $sp, 306
	st.h	$s1, $sp, 304
	vld	$vr10, $sp, 304
	ld.h	$t6, $t4, 14
	ld.h	$t7, $t4, 10
	ld.h	$t8, $t4, 6
	ld.h	$s1, $t4, 2
	st.h	$t6, $sp, 294
	st.h	$t7, $sp, 292
	st.h	$t8, $sp, 290
	st.h	$s1, $sp, 288
	vld	$vr11, $sp, 288
	vmin.w	$vr9, $vr9, $vr4
	vmin.w	$vr8, $vr8, $vr4
	vilvl.h	$vr10, $vr5, $vr10
	vilvl.h	$vr11, $vr5, $vr11
	vsub.w	$vr9, $vr10, $vr9
	vsub.w	$vr8, $vr11, $vr8
	vshuf4i.w	$vr10, $vr9, 50
	vslli.d	$vr10, $vr10, 32
	vsrai.d	$vr10, $vr10, 32
	vshuf4i.w	$vr9, $vr9, 16
	vslli.d	$vr9, $vr9, 32
	vsrai.d	$vr9, $vr9, 32
	vshuf4i.w	$vr11, $vr8, 50
	vslli.d	$vr11, $vr11, 32
	vsrai.d	$vr11, $vr11, 32
	vshuf4i.w	$vr8, $vr8, 16
	vslli.d	$vr8, $vr8, 32
	vsrai.d	$vr8, $vr8, 32
	vpickve2gr.d	$t6, $vr9, 0
	slli.d	$t6, $t6, 2
	vpickve2gr.d	$t7, $vr9, 1
	slli.d	$t7, $t7, 2
	vpickve2gr.d	$t8, $vr10, 0
	slli.d	$t8, $t8, 2
	vpickve2gr.d	$s1, $vr10, 1
	slli.d	$s1, $s1, 2
	vpickve2gr.d	$s2, $vr8, 0
	slli.d	$s2, $s2, 2
	vpickve2gr.d	$s5, $vr8, 1
	slli.d	$s5, $s5, 2
	vpickve2gr.d	$s6, $vr11, 0
	slli.d	$s6, $s6, 2
	vpickve2gr.d	$s7, $vr11, 1
	slli.d	$s7, $s7, 2
	ldx.w	$t6, $s8, $t6
	ldx.w	$t7, $s8, $t7
	ldx.w	$t8, $s8, $t8
	ldx.w	$s1, $s8, $s1
	vinsgr2vr.w	$vr8, $t6, 0
	vinsgr2vr.w	$vr8, $t7, 1
	vinsgr2vr.w	$vr8, $t8, 2
	vinsgr2vr.w	$vr8, $s1, 3
	ldx.w	$t6, $s8, $s2
	ldx.w	$t7, $s8, $s5
	ldx.w	$t8, $s8, $s6
	ldx.w	$s1, $s8, $s7
	vinsgr2vr.w	$vr9, $t6, 0
	vinsgr2vr.w	$vr9, $t7, 1
	vinsgr2vr.w	$vr9, $t8, 2
	vinsgr2vr.w	$vr9, $s1, 3
	vadd.w	$vr6, $vr6, $vr8
	vadd.w	$vr7, $vr7, $vr9
	addi.d	$t5, $t5, -8
	addi.d	$a0, $a0, 32
	addi.d	$t4, $t4, 32
	bnez	$t5, .LBB14_22
# %bb.23:                               # %middle.block264
                                        #   in Loop: Header=BB14_19 Depth=1
	vadd.w	$vr6, $vr7, $vr6
	vshuf4i.w	$vr7, $vr6, 14
	vadd.w	$vr6, $vr6, $vr7
	vreplvei.w	$vr7, $vr6, 1
	vadd.w	$vr6, $vr6, $vr7
	vpickve2gr.w	$s5, $vr6, 0
	move	$t5, $t1
	beq	$t1, $s3, .LBB14_26
.LBB14_24:                              # %scalar.ph225.preheader
                                        #   in Loop: Header=BB14_19 Depth=1
	sub.d	$a0, $s3, $t5
	.p2align	4, , 16
.LBB14_25:                              # %scalar.ph225
                                        #   Parent Loop BB14_19 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.hu	$t4, $a2, 0
	mul.d	$t4, $a7, $t4
	add.d	$t4, $t4, $a4
	sra.w	$t4, $t4, $a5
	add.w	$t4, $t4, $t0
	srai.d	$t5, $t4, 63
	andn	$t4, $t4, $t5
	slt	$t5, $t4, $a6
	ld.hu	$t6, $a1, 0
	maskeqz	$t4, $t4, $t5
	masknez	$t5, $a6, $t5
	or	$t4, $t4, $t5
	sub.w	$t4, $t6, $t4
	slli.d	$t4, $t4, 2
	ldx.w	$t4, $s8, $t4
	ld.hu	$t5, $a2, 2
	add.d	$t4, $t4, $s5
	mul.d	$t5, $a7, $t5
	add.d	$t5, $t5, $a4
	sra.w	$t5, $t5, $a5
	add.w	$t5, $t5, $t0
	srai.d	$t6, $t5, 63
	andn	$t5, $t5, $t6
	slt	$t6, $t5, $a6
	ld.hu	$t7, $a1, 2
	maskeqz	$t5, $t5, $t6
	masknez	$t6, $a6, $t6
	or	$t5, $t5, $t6
	sub.w	$t5, $t7, $t5
	slli.d	$t5, $t5, 2
	ldx.w	$t5, $s8, $t5
	addi.d	$a2, $a2, 4
	addi.d	$a1, $a1, 4
	addi.w	$a0, $a0, -1
	add.w	$s5, $t4, $t5
	bnez	$a0, .LBB14_25
.LBB14_26:                              # %._crit_edge.us109.us
                                        #   in Loop: Header=BB14_19 Depth=1
	bge	$s5, $fp, .LBB14_44
# %bb.27:                               #   in Loop: Header=BB14_19 Depth=1
	addi.w	$a3, $a3, 1
	alsl.d	$a0, $s0, $a2, 1
	move	$t4, $a1
	bne	$a3, $s4, .LBB14_19
	b	.LBB14_32
.LBB14_28:                              # %.loopexit71.split.us
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	st.d	$t6, $a0, %pc_lo12(ref_line)
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	st.d	$t5, $a0, %pc_lo12(src_line)
	b	.LBB14_47
.LBB14_29:                              # %.split.preheader
	ld.d	$s3, $sp, 48                    # 8-byte Folded Reload
	ld.w	$a0, $s3, %pc_lo12(ref_access_method)
	slli.d	$a0, $a0, 3
	pcalau12i	$a1, %pc_hi20(get_crline)
	addi.d	$fp, $a1, %pc_lo12(get_crline)
	ldx.d	$a3, $fp, $a0
	ld.d	$s4, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a0, $s4, 8
	ld.d	$s6, $sp, 32                    # 8-byte Folded Reload
	addi.d	$a1, $s6, 512
	st.d	$a1, $s0, %pc_lo12(src_line)
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	move	$a1, $s2
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	move	$a2, $s1
	jirl	$ra, $a3, 0
	ld.w	$a1, $s3, %pc_lo12(ref_access_method)
	slli.d	$a1, $a1, 3
	ldx.d	$a3, $fp, $a1
	ld.d	$a1, $s4, 16
	ld.d	$fp, $sp, 72                    # 8-byte Folded Reload
	st.d	$a0, $fp, %pc_lo12(ref_line)
	addi.d	$a0, $s6, 1024
	st.d	$a0, $s0, %pc_lo12(src_line)
	move	$a0, $a1
	move	$a1, $s2
	move	$a2, $s1
	jirl	$ra, $a3, 0
	st.d	$a0, $fp, %pc_lo12(ref_line)
	b	.LBB14_47
.LBB14_30:                              # %.preheader.lr.ph.split.us122
	bge	$s5, $fp, .LBB14_47
# %bb.31:                               # %.preheader.us118.preheader
	st.d	$a1, $sp, 0                     # 8-byte Folded Spill
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	add.d	$a0, $a0, $a1
.LBB14_32:                              # %._crit_edge107.us
	move	$s6, $ra
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	ld.w	$a1, $a1, %pc_lo12(ref_access_method)
	slli.d	$a1, $a1, 3
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	ldx.d	$a3, $a2, $a1
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a1, $a1, 16
	ld.d	$s2, $sp, 72                    # 8-byte Folded Reload
	st.d	$a0, $s2, %pc_lo12(ref_line)
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	addi.d	$a0, $a0, 1024
	ld.d	$s1, $sp, 80                    # 8-byte Folded Reload
	st.d	$a0, $s1, %pc_lo12(src_line)
	move	$a0, $a1
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 64                    # 8-byte Folded Reload
	jirl	$ra, $a3, 0
	st.d	$a0, $s2, %pc_lo12(ref_line)
	blez	$s3, .LBB14_46
# %bb.33:                               # %.preheader.lr.ph.split.us.us.1
	move	$a3, $zero
	ld.w	$a4, $s6, %pc_lo12(wp_chroma_round)
	ld.d	$a1, $sp, 0                     # 8-byte Folded Reload
	ld.w	$a5, $a1, %pc_lo12(chroma_log_weight_denom)
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	ld.d	$t4, $s1, %pc_lo12(src_line)
	lu12i.w	$a2, 3
	ori	$a2, $a2, 3236
	ldx.w	$a6, $a1, $a2
	pcalau12i	$a1, %pc_hi20(weight_cr+4)
	ld.w	$a7, $a1, %pc_lo12(weight_cr+4)
	pcalau12i	$a1, %pc_hi20(offset_cr+4)
	ld.w	$t0, $a1, %pc_lo12(offset_cr+4)
	bstrpick.d	$a1, $s3, 30, 3
	slli.d	$t1, $a1, 3
	slli.d	$t2, $a1, 5
	vreplgr2vr.w	$vr0, $a7
	vreplgr2vr.w	$vr1, $a4
	vreplgr2vr.w	$vr2, $a5
	vreplgr2vr.w	$vr3, $t0
	vreplgr2vr.w	$vr4, $a6
	ori	$t3, $zero, 8
	vrepli.b	$vr5, 0
	.p2align	4, , 16
.LBB14_34:                              # %.preheader.us.us.1
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB14_37 Depth 2
                                        #     Child Loop BB14_40 Depth 2
	bgeu	$s3, $t3, .LBB14_36
# %bb.35:                               #   in Loop: Header=BB14_34 Depth=1
	move	$t5, $zero
	move	$a2, $a0
	move	$a1, $t4
	b	.LBB14_39
	.p2align	4, , 16
.LBB14_36:                              # %vector.ph273
                                        #   in Loop: Header=BB14_34 Depth=1
	add.d	$a2, $a0, $t2
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	vld	$vr6, $a1, %pc_lo12(.LCPI14_0)
	add.d	$a1, $t4, $t2
	vinsgr2vr.w	$vr7, $s5, 0
	vinsgr2vr.w	$vr8, $zero, 0
	vshuf.w	$vr6, $vr8, $vr7
	addi.d	$a0, $a0, 16
	addi.d	$t4, $t4, 16
	move	$t5, $t1
	vori.b	$vr7, $vr5, 0
	.p2align	4, , 16
.LBB14_37:                              # %vector.body287
                                        #   Parent Loop BB14_34 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.h	$t6, $a0, -4
	ld.h	$t7, $a0, -8
	ld.h	$t8, $a0, -12
	ld.h	$s1, $a0, -16
	st.h	$t6, $sp, 150
	st.h	$t7, $sp, 148
	st.h	$t8, $sp, 146
	st.h	$s1, $sp, 144
	vld	$vr8, $sp, 144
	ld.h	$t6, $a0, 12
	ld.h	$t7, $a0, 8
	ld.h	$t8, $a0, 4
	ld.h	$s1, $a0, 0
	st.h	$t6, $sp, 134
	st.h	$t7, $sp, 132
	st.h	$t8, $sp, 130
	st.h	$s1, $sp, 128
	vld	$vr9, $sp, 128
	vilvl.h	$vr8, $vr5, $vr8
	vilvl.h	$vr9, $vr5, $vr9
	vori.b	$vr10, $vr1, 0
	vmadd.w	$vr10, $vr0, $vr8
	vori.b	$vr8, $vr1, 0
	vmadd.w	$vr8, $vr0, $vr9
	vsra.w	$vr9, $vr10, $vr2
	vsra.w	$vr8, $vr8, $vr2
	vadd.w	$vr9, $vr9, $vr3
	vadd.w	$vr8, $vr8, $vr3
	vmaxi.w	$vr9, $vr9, 0
	vmaxi.w	$vr8, $vr8, 0
	ld.h	$t6, $t4, -4
	ld.h	$t7, $t4, -8
	ld.h	$t8, $t4, -12
	ld.h	$s1, $t4, -16
	st.h	$t6, $sp, 214
	st.h	$t7, $sp, 212
	st.h	$t8, $sp, 210
	st.h	$s1, $sp, 208
	vld	$vr10, $sp, 208
	ld.h	$t6, $t4, 12
	ld.h	$t7, $t4, 8
	ld.h	$t8, $t4, 4
	ld.h	$s1, $t4, 0
	st.h	$t6, $sp, 198
	st.h	$t7, $sp, 196
	st.h	$t8, $sp, 194
	st.h	$s1, $sp, 192
	vld	$vr11, $sp, 192
	vmin.w	$vr9, $vr9, $vr4
	vmin.w	$vr8, $vr8, $vr4
	vilvl.h	$vr10, $vr5, $vr10
	vilvl.h	$vr11, $vr5, $vr11
	vsub.w	$vr9, $vr10, $vr9
	vsub.w	$vr8, $vr11, $vr8
	vshuf4i.w	$vr10, $vr9, 50
	vslli.d	$vr10, $vr10, 32
	vsrai.d	$vr10, $vr10, 32
	vshuf4i.w	$vr9, $vr9, 16
	vslli.d	$vr9, $vr9, 32
	vsrai.d	$vr9, $vr9, 32
	vshuf4i.w	$vr11, $vr8, 50
	vslli.d	$vr11, $vr11, 32
	vsrai.d	$vr11, $vr11, 32
	vshuf4i.w	$vr8, $vr8, 16
	vslli.d	$vr8, $vr8, 32
	vsrai.d	$vr8, $vr8, 32
	vpickve2gr.d	$t6, $vr9, 0
	slli.d	$t6, $t6, 2
	vpickve2gr.d	$t7, $vr9, 1
	slli.d	$t7, $t7, 2
	vpickve2gr.d	$t8, $vr10, 0
	slli.d	$t8, $t8, 2
	vpickve2gr.d	$s1, $vr10, 1
	slli.d	$s1, $s1, 2
	vpickve2gr.d	$s2, $vr8, 0
	slli.d	$s2, $s2, 2
	vpickve2gr.d	$s5, $vr8, 1
	slli.d	$s5, $s5, 2
	vpickve2gr.d	$s6, $vr11, 0
	slli.d	$s6, $s6, 2
	vpickve2gr.d	$s7, $vr11, 1
	slli.d	$s7, $s7, 2
	ldx.w	$t6, $s8, $t6
	ldx.w	$t7, $s8, $t7
	ldx.w	$t8, $s8, $t8
	ldx.w	$s1, $s8, $s1
	vinsgr2vr.w	$vr8, $t6, 0
	vinsgr2vr.w	$vr8, $t7, 1
	vinsgr2vr.w	$vr8, $t8, 2
	vinsgr2vr.w	$vr8, $s1, 3
	ldx.w	$t6, $s8, $s2
	ldx.w	$t7, $s8, $s5
	ldx.w	$t8, $s8, $s6
	ldx.w	$s1, $s8, $s7
	vinsgr2vr.w	$vr9, $t6, 0
	vinsgr2vr.w	$vr9, $t7, 1
	vinsgr2vr.w	$vr9, $t8, 2
	vinsgr2vr.w	$vr9, $s1, 3
	ld.h	$t6, $a0, -2
	ld.h	$t7, $a0, -6
	ld.h	$t8, $a0, -10
	ld.h	$s1, $a0, -14
	st.h	$t6, $sp, 118
	st.h	$t7, $sp, 116
	st.h	$t8, $sp, 114
	st.h	$s1, $sp, 112
	vld	$vr10, $sp, 112
	ld.h	$t6, $a0, 14
	ld.h	$t7, $a0, 10
	ld.h	$t8, $a0, 6
	ld.h	$s1, $a0, 2
	st.h	$t6, $sp, 102
	st.h	$t7, $sp, 100
	st.h	$t8, $sp, 98
	st.h	$s1, $sp, 96
	vld	$vr11, $sp, 96
	vadd.w	$vr6, $vr8, $vr6
	vadd.w	$vr7, $vr9, $vr7
	vilvl.h	$vr8, $vr5, $vr10
	vilvl.h	$vr9, $vr5, $vr11
	vori.b	$vr10, $vr1, 0
	vmadd.w	$vr10, $vr0, $vr8
	vori.b	$vr8, $vr1, 0
	vmadd.w	$vr8, $vr0, $vr9
	vsra.w	$vr9, $vr10, $vr2
	vsra.w	$vr8, $vr8, $vr2
	vadd.w	$vr9, $vr9, $vr3
	vadd.w	$vr8, $vr8, $vr3
	vmaxi.w	$vr9, $vr9, 0
	vmaxi.w	$vr8, $vr8, 0
	ld.h	$t6, $t4, -2
	ld.h	$t7, $t4, -6
	ld.h	$t8, $t4, -10
	ld.h	$s1, $t4, -14
	st.h	$t6, $sp, 182
	st.h	$t7, $sp, 180
	st.h	$t8, $sp, 178
	st.h	$s1, $sp, 176
	vld	$vr10, $sp, 176
	ld.h	$t6, $t4, 14
	ld.h	$t7, $t4, 10
	ld.h	$t8, $t4, 6
	ld.h	$s1, $t4, 2
	st.h	$t6, $sp, 166
	st.h	$t7, $sp, 164
	st.h	$t8, $sp, 162
	st.h	$s1, $sp, 160
	vld	$vr11, $sp, 160
	vmin.w	$vr9, $vr9, $vr4
	vmin.w	$vr8, $vr8, $vr4
	vilvl.h	$vr10, $vr5, $vr10
	vilvl.h	$vr11, $vr5, $vr11
	vsub.w	$vr9, $vr10, $vr9
	vsub.w	$vr8, $vr11, $vr8
	vshuf4i.w	$vr10, $vr9, 50
	vslli.d	$vr10, $vr10, 32
	vsrai.d	$vr10, $vr10, 32
	vshuf4i.w	$vr9, $vr9, 16
	vslli.d	$vr9, $vr9, 32
	vsrai.d	$vr9, $vr9, 32
	vshuf4i.w	$vr11, $vr8, 50
	vslli.d	$vr11, $vr11, 32
	vsrai.d	$vr11, $vr11, 32
	vshuf4i.w	$vr8, $vr8, 16
	vslli.d	$vr8, $vr8, 32
	vsrai.d	$vr8, $vr8, 32
	vpickve2gr.d	$t6, $vr9, 0
	slli.d	$t6, $t6, 2
	vpickve2gr.d	$t7, $vr9, 1
	slli.d	$t7, $t7, 2
	vpickve2gr.d	$t8, $vr10, 0
	slli.d	$t8, $t8, 2
	vpickve2gr.d	$s1, $vr10, 1
	slli.d	$s1, $s1, 2
	vpickve2gr.d	$s2, $vr8, 0
	slli.d	$s2, $s2, 2
	vpickve2gr.d	$s5, $vr8, 1
	slli.d	$s5, $s5, 2
	vpickve2gr.d	$s6, $vr11, 0
	slli.d	$s6, $s6, 2
	vpickve2gr.d	$s7, $vr11, 1
	slli.d	$s7, $s7, 2
	ldx.w	$t6, $s8, $t6
	ldx.w	$t7, $s8, $t7
	ldx.w	$t8, $s8, $t8
	ldx.w	$s1, $s8, $s1
	vinsgr2vr.w	$vr8, $t6, 0
	vinsgr2vr.w	$vr8, $t7, 1
	vinsgr2vr.w	$vr8, $t8, 2
	vinsgr2vr.w	$vr8, $s1, 3
	ldx.w	$t6, $s8, $s2
	ldx.w	$t7, $s8, $s5
	ldx.w	$t8, $s8, $s6
	ldx.w	$s1, $s8, $s7
	vinsgr2vr.w	$vr9, $t6, 0
	vinsgr2vr.w	$vr9, $t7, 1
	vinsgr2vr.w	$vr9, $t8, 2
	vinsgr2vr.w	$vr9, $s1, 3
	vadd.w	$vr6, $vr6, $vr8
	vadd.w	$vr7, $vr7, $vr9
	addi.d	$t5, $t5, -8
	addi.d	$a0, $a0, 32
	addi.d	$t4, $t4, 32
	bnez	$t5, .LBB14_37
# %bb.38:                               # %middle.block310
                                        #   in Loop: Header=BB14_34 Depth=1
	vadd.w	$vr6, $vr7, $vr6
	vshuf4i.w	$vr7, $vr6, 14
	vadd.w	$vr6, $vr6, $vr7
	vreplvei.w	$vr7, $vr6, 1
	vadd.w	$vr6, $vr6, $vr7
	vpickve2gr.w	$s5, $vr6, 0
	move	$t5, $t1
	beq	$t1, $s3, .LBB14_41
.LBB14_39:                              # %scalar.ph271.preheader
                                        #   in Loop: Header=BB14_34 Depth=1
	sub.d	$a0, $s3, $t5
	.p2align	4, , 16
.LBB14_40:                              # %scalar.ph271
                                        #   Parent Loop BB14_34 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.hu	$t4, $a2, 0
	mul.d	$t4, $a7, $t4
	add.d	$t4, $t4, $a4
	sra.w	$t4, $t4, $a5
	add.w	$t4, $t4, $t0
	srai.d	$t5, $t4, 63
	andn	$t4, $t4, $t5
	slt	$t5, $t4, $a6
	ld.hu	$t6, $a1, 0
	maskeqz	$t4, $t4, $t5
	masknez	$t5, $a6, $t5
	or	$t4, $t4, $t5
	sub.w	$t4, $t6, $t4
	slli.d	$t4, $t4, 2
	ldx.w	$t4, $s8, $t4
	ld.hu	$t5, $a2, 2
	add.d	$t4, $t4, $s5
	mul.d	$t5, $a7, $t5
	add.d	$t5, $t5, $a4
	sra.w	$t5, $t5, $a5
	add.w	$t5, $t5, $t0
	srai.d	$t6, $t5, 63
	andn	$t5, $t5, $t6
	slt	$t6, $t5, $a6
	ld.hu	$t7, $a1, 2
	maskeqz	$t5, $t5, $t6
	masknez	$t6, $a6, $t6
	or	$t5, $t5, $t6
	sub.w	$t5, $t7, $t5
	slli.d	$t5, $t5, 2
	ldx.w	$t5, $s8, $t5
	addi.d	$a2, $a2, 4
	addi.d	$a1, $a1, 4
	addi.w	$a0, $a0, -1
	add.w	$s5, $t4, $t5
	bnez	$a0, .LBB14_40
.LBB14_41:                              # %._crit_edge.us109.us.1
                                        #   in Loop: Header=BB14_34 Depth=1
	bge	$s5, $fp, .LBB14_44
# %bb.42:                               #   in Loop: Header=BB14_34 Depth=1
	addi.w	$a3, $a3, 1
	alsl.d	$a0, $s0, $a2, 1
	move	$t4, $a1
	bne	$a3, $s4, .LBB14_34
# %bb.43:                               # %._crit_edge107.split.us.us.1
	ld.d	$a2, $sp, 72                    # 8-byte Folded Reload
	st.d	$a0, $a2, %pc_lo12(ref_line)
	b	.LBB14_45
.LBB14_44:                              # %.loopexit.split.us
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	st.d	$a2, $a0, %pc_lo12(ref_line)
.LBB14_45:                              # %.loopexit
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	st.d	$a1, $a0, %pc_lo12(src_line)
	b	.LBB14_47
.LBB14_46:                              # %.preheader.us118.preheader.1
	ld.d	$a2, $sp, 8                     # 8-byte Folded Reload
	add.d	$a0, $a0, $a2
	st.d	$a0, $s2, %pc_lo12(ref_line)
.LBB14_47:                              # %.loopexit
	move	$a0, $s5
	ld.d	$s8, $sp, 616                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 624                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 632                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 640                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 648                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 656                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 664                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 672                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 680                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 688                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 696                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 704
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
	pcalau12i	$t0, %got_pc_hi20(img)
	ld.d	$t0, $t0, %got_pc_lo12(img)
	ld.d	$t0, $t0, 0
	pcalau12i	$t1, %pc_hi20(bipred2_access_method)
	st.d	$t1, $sp, 40                    # 8-byte Folded Spill
	ld.w	$t1, $t1, %pc_lo12(bipred2_access_method)
	ldptr.d	$s3, $t0, 14232
	pcalau12i	$t0, %pc_hi20(img_padded_size_x)
	ld.w	$s4, $t0, %pc_lo12(img_padded_size_x)
	slli.d	$t0, $t1, 3
	pcalau12i	$t1, %pc_hi20(get_line)
	addi.d	$fp, $t1, %pc_lo12(get_line)
	ldx.d	$t1, $fp, $t0
	pcalau12i	$t0, %pc_hi20(ref_pic2_sub)
	addi.d	$s8, $t0, %pc_lo12(ref_pic2_sub)
	ld.d	$t0, $s8, 0
	move	$s5, $a5
	move	$s1, $a4
	move	$s0, $a3
	move	$s6, $a2
	move	$s7, $a1
	pcalau12i	$a1, %pc_hi20(src_line)
	st.d	$a1, $sp, 96                    # 8-byte Folded Spill
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	st.d	$a0, $a1, %pc_lo12(src_line)
	move	$a0, $t0
	st.d	$a7, $sp, 56                    # 8-byte Folded Spill
	move	$a1, $a7
	st.d	$a6, $sp, 64                    # 8-byte Folded Spill
	move	$a2, $a6
	jirl	$ra, $t1, 0
	pcalau12i	$a1, %pc_hi20(bipred1_access_method)
	st.d	$a1, $sp, 88                    # 8-byte Folded Spill
	ld.w	$a1, $a1, %pc_lo12(bipred1_access_method)
	slli.d	$a1, $a1, 3
	ldx.d	$a3, $fp, $a1
	pcalau12i	$a1, %pc_hi20(ref_pic1_sub)
	addi.d	$a1, $a1, %pc_lo12(ref_pic1_sub)
	st.d	$a1, $sp, 48                    # 8-byte Folded Spill
	ld.d	$a1, $a1, 0
	pcalau12i	$s2, %pc_hi20(ref2_line)
	st.d	$a0, $s2, %pc_lo12(ref2_line)
	move	$a0, $a1
	st.d	$s5, $sp, 72                    # 8-byte Folded Spill
	move	$a1, $s5
	st.d	$s1, $sp, 80                    # 8-byte Folded Spill
	move	$a2, $s1
	jirl	$ra, $a3, 0
	pcalau12i	$s1, %pc_hi20(ref1_line)
	ori	$a1, $zero, 1
	st.d	$a0, $s1, %pc_lo12(ref1_line)
	blt	$s7, $a1, .LBB15_8
# %bb.1:                                # %.preheader73.lr.ph
	ld.d	$a4, $s2, %pc_lo12(ref2_line)
	move	$fp, $zero
	blt	$s6, $a1, .LBB15_9
# %bb.2:                                # %.preheader73.us.preheader
	move	$a1, $zero
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a3, $a2, %pc_lo12(src_line)
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
	add.d	$a0, $a0, $fp
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
	add.w	$fp, $a0, $t1
	blt	$a5, $s6, .LBB15_4
# %bb.5:                                # %._crit_edge.us
                                        #   in Loop: Header=BB15_3 Depth=1
	bge	$fp, $s0, .LBB15_19
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
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	st.d	$a3, $a0, %pc_lo12(src_line)
	pcalau12i	$a0, %pc_hi20(ChromaMEEnable)
	ld.w	$a0, $a0, %pc_lo12(ChromaMEEnable)
	bnez	$a0, .LBB15_11
	b	.LBB15_34
.LBB15_8:
	move	$fp, $zero
	pcalau12i	$a0, %pc_hi20(ChromaMEEnable)
	ld.w	$a0, $a0, %pc_lo12(ChromaMEEnable)
	bnez	$a0, .LBB15_11
	b	.LBB15_34
.LBB15_9:                               # %.preheader73.lr.ph.split
	ori	$a1, $zero, 1
	blt	$s0, $a1, .LBB15_34
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
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(bipred2_access_method)
	addi.w	$a3, $s7, -1
	mul.d	$a3, $s6, $a3
	alsl.d	$a1, $a1, $a3, 1
	slli.d	$a0, $a0, 3
	pcalau12i	$a3, %pc_hi20(get_crline)
	addi.d	$s5, $a3, %pc_lo12(get_crline)
	ldx.d	$a3, $s5, $a0
	ld.d	$a0, $s8, 8
	sub.d	$a1, $a1, $a2
	st.d	$a1, $sp, 16                    # 8-byte Folded Spill
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	addi.d	$a1, $a1, 512
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	st.d	$a1, $a2, %pc_lo12(src_line)
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
	ori	$a1, $zero, 1
	st.d	$a0, $s1, %pc_lo12(ref1_line)
	blt	$s4, $a1, .LBB15_21
# %bb.13:                               # %.preheader.us.us.preheader
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(src_line)
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
	add.d	$a0, $a0, $fp
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
	add.w	$fp, $a0, $a6
	bnez	$a5, .LBB15_15
# %bb.16:                               # %._crit_edge.us124.us
                                        #   in Loop: Header=BB15_14 Depth=1
	bge	$fp, $s0, .LBB15_30
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
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	st.d	$a3, $a0, %pc_lo12(src_line)
	b	.LBB15_34
.LBB15_20:                              # %.split.preheader
	move	$a2, $s8
	st.d	$s8, $sp, 0                     # 8-byte Folded Spill
	ld.d	$s8, $sp, 40                    # 8-byte Folded Reload
	ld.w	$a0, $s8, %pc_lo12(bipred2_access_method)
	slli.d	$a0, $a0, 3
	pcalau12i	$a1, %pc_hi20(get_crline)
	addi.d	$s0, $a1, %pc_lo12(get_crline)
	ldx.d	$a3, $s0, $a0
	ld.d	$a0, $a2, 8
	move	$s4, $s2
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	ld.d	$s2, $sp, 32                    # 8-byte Folded Reload
	addi.d	$a1, $s2, 512
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	st.d	$a1, $a2, %pc_lo12(src_line)
	ld.d	$s6, $sp, 56                    # 8-byte Folded Reload
	move	$a1, $s6
	ld.d	$s5, $sp, 64                    # 8-byte Folded Reload
	move	$a2, $s5
	jirl	$ra, $a3, 0
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	ld.w	$a1, $a1, %pc_lo12(bipred1_access_method)
	slli.d	$a1, $a1, 3
	ldx.d	$a3, $s0, $a1
	ld.d	$s7, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a1, $s7, 8
	st.d	$a0, $s4, %pc_lo12(ref2_line)
	move	$a0, $a1
	ld.d	$s4, $sp, 72                    # 8-byte Folded Reload
	move	$a1, $s4
	ld.d	$s3, $sp, 80                    # 8-byte Folded Reload
	move	$a2, $s3
	jirl	$ra, $a3, 0
	ld.w	$a1, $s8, %pc_lo12(bipred2_access_method)
	slli.d	$a1, $a1, 3
	ldx.d	$a3, $s0, $a1
	ld.d	$a1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$a1, $a1, 16
	st.d	$a0, $s1, %pc_lo12(ref1_line)
	addi.d	$a0, $s2, 1024
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	st.d	$a0, $a2, %pc_lo12(src_line)
	move	$a0, $a1
	move	$a1, $s6
	move	$a2, $s5
	jirl	$ra, $a3, 0
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	ld.w	$a1, $a1, %pc_lo12(bipred1_access_method)
	slli.d	$a1, $a1, 3
	ldx.d	$a3, $s0, $a1
	ld.d	$a1, $s7, 16
	ld.d	$a2, $sp, 8                     # 8-byte Folded Reload
	st.d	$a0, $a2, %pc_lo12(ref2_line)
	move	$a0, $a1
	move	$a1, $s4
	move	$a2, $s3
	jirl	$ra, $a3, 0
	b	.LBB15_33
.LBB15_21:                              # %.preheader.lr.ph.split.us140
	bge	$fp, $s0, .LBB15_34
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
	ld.d	$a0, $s8, 16
	st.d	$a1, $s1, %pc_lo12(ref1_line)
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	addi.d	$a1, $a1, 1024
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	st.d	$a1, $a2, %pc_lo12(src_line)
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
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(src_line)
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
	add.d	$a0, $a0, $fp
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
	add.w	$fp, $a0, $a6
	bnez	$a5, .LBB15_26
# %bb.27:                               # %._crit_edge.us124.us.1
                                        #   in Loop: Header=BB15_25 Depth=1
	bge	$fp, $s0, .LBB15_30
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
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	st.d	$a1, $a0, %pc_lo12(src_line)
	b	.LBB15_34
.LBB15_32:                              # %.preheader.us135.preheader.1
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	add.d	$a1, $a6, $a2
	add.d	$a0, $a0, $a2
	st.d	$a1, $s2, %pc_lo12(ref2_line)
.LBB15_33:                              # %.loopexit
	st.d	$a0, $s1, %pc_lo12(ref1_line)
.LBB15_34:                              # %.loopexit
	move	$a0, $fp
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
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function computeBiPredSSE2
.LCPI16_0:
	.word	0                               # 0x0
	.word	4                               # 0x4
	.word	4                               # 0x4
	.word	4                               # 0x4
	.text
	.globl	computeBiPredSSE2
	.p2align	5
	.type	computeBiPredSSE2,@function
computeBiPredSSE2:                      # @computeBiPredSSE2
# %bb.0:
	addi.d	$sp, $sp, -992
	st.d	$ra, $sp, 984                   # 8-byte Folded Spill
	st.d	$fp, $sp, 976                   # 8-byte Folded Spill
	st.d	$s0, $sp, 968                   # 8-byte Folded Spill
	st.d	$s1, $sp, 960                   # 8-byte Folded Spill
	st.d	$s2, $sp, 952                   # 8-byte Folded Spill
	st.d	$s3, $sp, 944                   # 8-byte Folded Spill
	st.d	$s4, $sp, 936                   # 8-byte Folded Spill
	st.d	$s5, $sp, 928                   # 8-byte Folded Spill
	st.d	$s6, $sp, 920                   # 8-byte Folded Spill
	st.d	$s7, $sp, 912                   # 8-byte Folded Spill
	st.d	$s8, $sp, 904                   # 8-byte Folded Spill
	pcalau12i	$t0, %pc_hi20(luma_log_weight_denom)
	ld.w	$t0, $t0, %pc_lo12(luma_log_weight_denom)
	move	$s7, $a5
	move	$s3, $a4
	move	$fp, $a3
	move	$s5, $a2
	move	$s6, $a1
	move	$a4, $a0
	addi.d	$s0, $t0, 1
	pcalau12i	$a0, %pc_hi20(wp_luma_round)
	pcalau12i	$a1, %pc_hi20(bipred2_access_method)
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	ld.w	$a1, $a1, %pc_lo12(bipred2_access_method)
	ld.w	$a2, $a0, %pc_lo12(wp_luma_round)
	pcalau12i	$a0, %pc_hi20(img_padded_size_x)
	ld.w	$s4, $a0, %pc_lo12(img_padded_size_x)
	slli.d	$a0, $a1, 3
	pcalau12i	$a1, %pc_hi20(get_line)
	addi.d	$s1, $a1, %pc_lo12(get_line)
	ldx.d	$a3, $s1, $a0
	pcalau12i	$a0, %pc_hi20(ref_pic2_sub)
	addi.d	$a0, $a0, %pc_lo12(ref_pic2_sub)
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	ld.d	$a0, $a0, 0
	slli.d	$s2, $a2, 1
	pcalau12i	$a1, %pc_hi20(src_line)
	st.d	$a1, $sp, 120                   # 8-byte Folded Spill
	st.d	$a4, $sp, 48                    # 8-byte Folded Spill
	st.d	$a4, $a1, %pc_lo12(src_line)
	st.d	$a7, $sp, 56                    # 8-byte Folded Spill
	move	$a1, $a7
	st.d	$a6, $sp, 64                    # 8-byte Folded Spill
	move	$a2, $a6
	jirl	$ra, $a3, 0
	pcalau12i	$a1, %pc_hi20(bipred1_access_method)
	st.d	$a1, $sp, 88                    # 8-byte Folded Spill
	ld.w	$a1, $a1, %pc_lo12(bipred1_access_method)
	slli.d	$a1, $a1, 3
	ldx.d	$a3, $s1, $a1
	pcalau12i	$a1, %pc_hi20(ref_pic1_sub)
	addi.d	$a1, $a1, %pc_lo12(ref_pic1_sub)
	st.d	$a1, $sp, 96                    # 8-byte Folded Spill
	ld.d	$a1, $a1, 0
	pcalau12i	$s1, %pc_hi20(ref2_line)
	st.d	$a0, $s1, %pc_lo12(ref2_line)
	move	$a0, $a1
	st.d	$s7, $sp, 72                    # 8-byte Folded Spill
	move	$a1, $s7
	st.d	$s3, $sp, 80                    # 8-byte Folded Spill
	move	$a2, $s3
	jirl	$ra, $a3, 0
	pcalau12i	$s8, %pc_hi20(ref1_line)
	st.d	$a0, $s8, %pc_lo12(ref1_line)
	ori	$a1, $zero, 1
	pcalau12i	$s3, %pc_hi20(.LCPI16_0)
	st.d	$s1, $sp, 112                   # 8-byte Folded Spill
	blt	$s6, $a1, .LBB16_12
# %bb.1:                                # %.preheader109.lr.ph
	ld.d	$t8, $s1, %pc_lo12(ref2_line)
	blt	$s5, $a1, .LBB16_13
# %bb.2:                                # %.preheader109.lr.ph.split.us
	st.d	$s8, $sp, 104                   # 8-byte Folded Spill
	move	$s7, $zero
	move	$a1, $zero
	ld.d	$a2, $sp, 120                   # 8-byte Folded Reload
	ld.d	$ra, $a2, %pc_lo12(src_line)
	sub.w	$a2, $s4, $s5
	pcalau12i	$a3, %pc_hi20(weight1)
	ld.h	$a3, $a3, %pc_lo12(weight1)
	pcalau12i	$a4, %got_pc_hi20(img)
	ld.d	$a5, $a4, %got_pc_lo12(img)
	pcalau12i	$a4, %pc_hi20(weight2)
	ld.h	$a4, $a4, %pc_lo12(weight2)
	pcalau12i	$a6, %pc_hi20(offsetBi)
	ld.d	$a7, $a5, 0
	ld.h	$a5, $a6, %pc_lo12(offsetBi)
	lu12i.w	$a6, 3
	ori	$a6, $a6, 3232
	ldx.w	$a6, $a7, $a6
	addi.d	$a7, $s5, -1
	bstrpick.d	$a7, $a7, 31, 2
	addi.d	$a7, $a7, 1
	bstrpick.d	$t2, $a7, 30, 3
	slli.d	$t0, $t2, 3
	slli.d	$t1, $t2, 5
	slli.d	$t2, $t2, 6
	vreplgr2vr.w	$vr0, $a3
	vreplgr2vr.w	$vr1, $a4
	vreplgr2vr.w	$vr2, $s2
	vreplgr2vr.w	$vr3, $s0
	vreplgr2vr.w	$vr4, $a5
	vreplgr2vr.w	$vr5, $a6
	ori	$t3, $zero, 29
	vrepli.b	$vr6, 0
	.p2align	4, , 16
.LBB16_3:                               # %.preheader109.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB16_6 Depth 2
                                        #     Child Loop BB16_8 Depth 2
	bgeu	$s5, $t3, .LBB16_5
# %bb.4:                                #   in Loop: Header=BB16_3 Depth=1
	move	$t7, $zero
	move	$t5, $a0
	move	$t6, $t8
	move	$t4, $ra
	b	.LBB16_8
	.p2align	4, , 16
.LBB16_5:                               # %vector.ph
                                        #   in Loop: Header=BB16_3 Depth=1
	add.d	$t5, $a0, $t2
	add.d	$t6, $t8, $t2
	vld	$vr7, $s3, %pc_lo12(.LCPI16_0)
	add.d	$t4, $ra, $t2
	vinsgr2vr.w	$vr8, $s7, 0
	vinsgr2vr.w	$vr9, $zero, 0
	vshuf.w	$vr7, $vr9, $vr8
	addi.d	$a0, $a0, 32
	addi.d	$t7, $t8, 32
	addi.d	$t8, $ra, 32
	move	$s4, $t0
	vori.b	$vr8, $vr6, 0
	.p2align	4, , 16
.LBB16_6:                               # %vector.body
                                        #   Parent Loop BB16_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.h	$s7, $a0, -8
	ld.h	$ra, $a0, -16
	ld.h	$s8, $a0, -24
	ld.h	$s1, $a0, -32
	st.h	$s7, $sp, 630
	st.h	$ra, $sp, 628
	st.h	$s8, $sp, 626
	st.h	$s1, $sp, 624
	vld	$vr9, $sp, 624
	ld.h	$s1, $a0, 24
	ld.h	$s7, $a0, 16
	ld.h	$s8, $a0, 8
	ld.h	$ra, $a0, 0
	st.h	$s1, $sp, 614
	st.h	$s7, $sp, 612
	st.h	$s8, $sp, 610
	st.h	$ra, $sp, 608
	vld	$vr10, $sp, 608
	ld.h	$s1, $t7, -8
	ld.h	$s7, $t7, -16
	ld.h	$s8, $t7, -24
	ld.h	$ra, $t7, -32
	st.h	$s1, $sp, 758
	st.h	$s7, $sp, 756
	st.h	$s8, $sp, 754
	st.h	$ra, $sp, 752
	vld	$vr11, $sp, 752
	ld.h	$s1, $t7, 24
	ld.h	$s7, $t7, 16
	ld.h	$s8, $t7, 8
	ld.h	$ra, $t7, 0
	st.h	$s1, $sp, 742
	st.h	$s7, $sp, 740
	st.h	$s8, $sp, 738
	st.h	$ra, $sp, 736
	vld	$vr12, $sp, 736
	vilvl.h	$vr9, $vr6, $vr9
	vilvl.h	$vr10, $vr6, $vr10
	vilvl.h	$vr11, $vr6, $vr11
	vilvl.h	$vr12, $vr6, $vr12
	vori.b	$vr13, $vr2, 0
	vmadd.w	$vr13, $vr0, $vr9
	vori.b	$vr9, $vr2, 0
	vmadd.w	$vr9, $vr0, $vr10
	vmadd.w	$vr13, $vr1, $vr11
	vmadd.w	$vr9, $vr1, $vr12
	vsra.w	$vr10, $vr13, $vr3
	vsra.w	$vr9, $vr9, $vr3
	vadd.w	$vr10, $vr10, $vr4
	vadd.w	$vr9, $vr9, $vr4
	vmaxi.w	$vr10, $vr10, 0
	vmaxi.w	$vr9, $vr9, 0
	ld.h	$s1, $t8, -8
	ld.h	$s7, $t8, -16
	ld.h	$s8, $t8, -24
	ld.h	$ra, $t8, -32
	st.h	$s1, $sp, 886
	st.h	$s7, $sp, 884
	st.h	$s8, $sp, 882
	st.h	$ra, $sp, 880
	vld	$vr11, $sp, 880
	ld.h	$s1, $t8, 24
	ld.h	$s7, $t8, 16
	ld.h	$s8, $t8, 8
	ld.h	$ra, $t8, 0
	st.h	$s1, $sp, 870
	st.h	$s7, $sp, 868
	st.h	$s8, $sp, 866
	st.h	$ra, $sp, 864
	vld	$vr12, $sp, 864
	vmin.w	$vr10, $vr10, $vr5
	vmin.w	$vr9, $vr9, $vr5
	vilvl.h	$vr11, $vr6, $vr11
	vilvl.h	$vr12, $vr6, $vr12
	vsub.w	$vr10, $vr11, $vr10
	vsub.w	$vr9, $vr12, $vr9
	vmadd.w	$vr7, $vr10, $vr10
	vmadd.w	$vr8, $vr9, $vr9
	ld.h	$s1, $a0, -6
	ld.h	$s7, $a0, -14
	ld.h	$s8, $a0, -22
	ld.h	$ra, $a0, -30
	st.h	$s1, $sp, 598
	st.h	$s7, $sp, 596
	st.h	$s8, $sp, 594
	st.h	$ra, $sp, 592
	vld	$vr9, $sp, 592
	ld.h	$s1, $a0, 26
	ld.h	$s7, $a0, 18
	ld.h	$s8, $a0, 10
	ld.h	$ra, $a0, 2
	st.h	$s1, $sp, 582
	st.h	$s7, $sp, 580
	st.h	$s8, $sp, 578
	st.h	$ra, $sp, 576
	vld	$vr10, $sp, 576
	ld.h	$s1, $t7, -6
	ld.h	$s7, $t7, -14
	ld.h	$s8, $t7, -22
	ld.h	$ra, $t7, -30
	st.h	$s1, $sp, 726
	st.h	$s7, $sp, 724
	st.h	$s8, $sp, 722
	st.h	$ra, $sp, 720
	vld	$vr11, $sp, 720
	ld.h	$s1, $t7, 26
	ld.h	$s7, $t7, 18
	ld.h	$s8, $t7, 10
	ld.h	$ra, $t7, 2
	st.h	$s1, $sp, 710
	st.h	$s7, $sp, 708
	st.h	$s8, $sp, 706
	st.h	$ra, $sp, 704
	vld	$vr12, $sp, 704
	vilvl.h	$vr9, $vr6, $vr9
	vilvl.h	$vr10, $vr6, $vr10
	vilvl.h	$vr11, $vr6, $vr11
	vilvl.h	$vr12, $vr6, $vr12
	vori.b	$vr13, $vr2, 0
	vmadd.w	$vr13, $vr0, $vr9
	vori.b	$vr9, $vr2, 0
	vmadd.w	$vr9, $vr0, $vr10
	vmadd.w	$vr13, $vr1, $vr11
	vmadd.w	$vr9, $vr1, $vr12
	vsra.w	$vr10, $vr13, $vr3
	vsra.w	$vr9, $vr9, $vr3
	vadd.w	$vr10, $vr10, $vr4
	vadd.w	$vr9, $vr9, $vr4
	vmaxi.w	$vr10, $vr10, 0
	vmaxi.w	$vr9, $vr9, 0
	ld.h	$s1, $t8, -6
	ld.h	$s7, $t8, -14
	ld.h	$s8, $t8, -22
	ld.h	$ra, $t8, -30
	st.h	$s1, $sp, 854
	st.h	$s7, $sp, 852
	st.h	$s8, $sp, 850
	st.h	$ra, $sp, 848
	vld	$vr11, $sp, 848
	ld.h	$s1, $t8, 26
	ld.h	$s7, $t8, 18
	ld.h	$s8, $t8, 10
	ld.h	$ra, $t8, 2
	st.h	$s1, $sp, 838
	st.h	$s7, $sp, 836
	st.h	$s8, $sp, 834
	st.h	$ra, $sp, 832
	vld	$vr12, $sp, 832
	vmin.w	$vr10, $vr10, $vr5
	vmin.w	$vr9, $vr9, $vr5
	vilvl.h	$vr11, $vr6, $vr11
	vilvl.h	$vr12, $vr6, $vr12
	vsub.w	$vr10, $vr11, $vr10
	vsub.w	$vr9, $vr12, $vr9
	vmadd.w	$vr7, $vr10, $vr10
	vmadd.w	$vr8, $vr9, $vr9
	ld.h	$s1, $a0, -4
	ld.h	$s7, $a0, -12
	ld.h	$s8, $a0, -20
	ld.h	$ra, $a0, -28
	st.h	$s1, $sp, 566
	st.h	$s7, $sp, 564
	st.h	$s8, $sp, 562
	st.h	$ra, $sp, 560
	vld	$vr9, $sp, 560
	ld.h	$s1, $a0, 28
	ld.h	$s7, $a0, 20
	ld.h	$s8, $a0, 12
	ld.h	$ra, $a0, 4
	st.h	$s1, $sp, 550
	st.h	$s7, $sp, 548
	st.h	$s8, $sp, 546
	st.h	$ra, $sp, 544
	vld	$vr10, $sp, 544
	ld.h	$s1, $t7, -4
	ld.h	$s7, $t7, -12
	ld.h	$s8, $t7, -20
	ld.h	$ra, $t7, -28
	st.h	$s1, $sp, 694
	st.h	$s7, $sp, 692
	st.h	$s8, $sp, 690
	st.h	$ra, $sp, 688
	vld	$vr11, $sp, 688
	ld.h	$s1, $t7, 28
	ld.h	$s7, $t7, 20
	ld.h	$s8, $t7, 12
	ld.h	$ra, $t7, 4
	st.h	$s1, $sp, 678
	st.h	$s7, $sp, 676
	st.h	$s8, $sp, 674
	st.h	$ra, $sp, 672
	vld	$vr12, $sp, 672
	vilvl.h	$vr9, $vr6, $vr9
	vilvl.h	$vr10, $vr6, $vr10
	vilvl.h	$vr11, $vr6, $vr11
	vilvl.h	$vr12, $vr6, $vr12
	vori.b	$vr13, $vr2, 0
	vmadd.w	$vr13, $vr0, $vr9
	vori.b	$vr9, $vr2, 0
	vmadd.w	$vr9, $vr0, $vr10
	vmadd.w	$vr13, $vr1, $vr11
	vmadd.w	$vr9, $vr1, $vr12
	vsra.w	$vr10, $vr13, $vr3
	vsra.w	$vr9, $vr9, $vr3
	vadd.w	$vr10, $vr10, $vr4
	vadd.w	$vr9, $vr9, $vr4
	vmaxi.w	$vr10, $vr10, 0
	vmaxi.w	$vr9, $vr9, 0
	ld.h	$s1, $t8, -4
	ld.h	$s7, $t8, -12
	ld.h	$s8, $t8, -20
	ld.h	$ra, $t8, -28
	st.h	$s1, $sp, 822
	st.h	$s7, $sp, 820
	st.h	$s8, $sp, 818
	st.h	$ra, $sp, 816
	vld	$vr11, $sp, 816
	ld.h	$s1, $t8, 28
	ld.h	$s7, $t8, 20
	ld.h	$s8, $t8, 12
	ld.h	$ra, $t8, 4
	st.h	$s1, $sp, 806
	st.h	$s7, $sp, 804
	st.h	$s8, $sp, 802
	st.h	$ra, $sp, 800
	vld	$vr12, $sp, 800
	vmin.w	$vr10, $vr10, $vr5
	vmin.w	$vr9, $vr9, $vr5
	vilvl.h	$vr11, $vr6, $vr11
	vilvl.h	$vr12, $vr6, $vr12
	vsub.w	$vr10, $vr11, $vr10
	vsub.w	$vr9, $vr12, $vr9
	vmadd.w	$vr7, $vr10, $vr10
	vmadd.w	$vr8, $vr9, $vr9
	ld.h	$s1, $a0, -2
	ld.h	$s7, $a0, -10
	ld.h	$s8, $a0, -18
	ld.h	$ra, $a0, -26
	st.h	$s1, $sp, 534
	st.h	$s7, $sp, 532
	st.h	$s8, $sp, 530
	st.h	$ra, $sp, 528
	vld	$vr9, $sp, 528
	ld.h	$s1, $a0, 30
	ld.h	$s7, $a0, 22
	ld.h	$s8, $a0, 14
	ld.h	$ra, $a0, 6
	st.h	$s1, $sp, 518
	st.h	$s7, $sp, 516
	st.h	$s8, $sp, 514
	st.h	$ra, $sp, 512
	vld	$vr10, $sp, 512
	ld.h	$s1, $t7, -2
	ld.h	$s7, $t7, -10
	ld.h	$s8, $t7, -18
	ld.h	$ra, $t7, -26
	st.h	$s1, $sp, 662
	st.h	$s7, $sp, 660
	st.h	$s8, $sp, 658
	st.h	$ra, $sp, 656
	vld	$vr11, $sp, 656
	ld.h	$s1, $t7, 30
	ld.h	$s7, $t7, 22
	ld.h	$s8, $t7, 14
	ld.h	$ra, $t7, 6
	st.h	$s1, $sp, 646
	st.h	$s7, $sp, 644
	st.h	$s8, $sp, 642
	st.h	$ra, $sp, 640
	vld	$vr12, $sp, 640
	vilvl.h	$vr9, $vr6, $vr9
	vilvl.h	$vr10, $vr6, $vr10
	vilvl.h	$vr11, $vr6, $vr11
	vilvl.h	$vr12, $vr6, $vr12
	vori.b	$vr13, $vr2, 0
	vmadd.w	$vr13, $vr0, $vr9
	vori.b	$vr9, $vr2, 0
	vmadd.w	$vr9, $vr0, $vr10
	vmadd.w	$vr13, $vr1, $vr11
	vmadd.w	$vr9, $vr1, $vr12
	vsra.w	$vr10, $vr13, $vr3
	vsra.w	$vr9, $vr9, $vr3
	vadd.w	$vr10, $vr10, $vr4
	vadd.w	$vr9, $vr9, $vr4
	vmaxi.w	$vr10, $vr10, 0
	vmaxi.w	$vr9, $vr9, 0
	ld.h	$s1, $t8, -2
	ld.h	$s7, $t8, -10
	ld.h	$s8, $t8, -18
	ld.h	$ra, $t8, -26
	st.h	$s1, $sp, 790
	st.h	$s7, $sp, 788
	st.h	$s8, $sp, 786
	st.h	$ra, $sp, 784
	vld	$vr11, $sp, 784
	ld.h	$s1, $t8, 30
	ld.h	$s7, $t8, 22
	ld.h	$s8, $t8, 14
	ld.h	$ra, $t8, 6
	st.h	$s1, $sp, 774
	st.h	$s7, $sp, 772
	st.h	$s8, $sp, 770
	st.h	$ra, $sp, 768
	vld	$vr12, $sp, 768
	vmin.w	$vr10, $vr10, $vr5
	vmin.w	$vr9, $vr9, $vr5
	vilvl.h	$vr11, $vr6, $vr11
	vilvl.h	$vr12, $vr6, $vr12
	vsub.w	$vr10, $vr11, $vr10
	vsub.w	$vr9, $vr12, $vr9
	vmadd.w	$vr7, $vr10, $vr10
	vmadd.w	$vr8, $vr9, $vr9
	addi.d	$s4, $s4, -8
	addi.d	$a0, $a0, 64
	addi.d	$t7, $t7, 64
	addi.d	$t8, $t8, 64
	bnez	$s4, .LBB16_6
# %bb.7:                                # %middle.block
                                        #   in Loop: Header=BB16_3 Depth=1
	vadd.w	$vr7, $vr8, $vr7
	vshuf4i.w	$vr8, $vr7, 14
	vadd.w	$vr7, $vr7, $vr8
	vreplvei.w	$vr8, $vr7, 1
	vadd.w	$vr7, $vr7, $vr8
	vpickve2gr.w	$s7, $vr7, 0
	move	$t7, $t1
	beq	$t0, $a7, .LBB16_9
	.p2align	4, , 16
.LBB16_8:                               # %scalar.ph
                                        #   Parent Loop BB16_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.hu	$a0, $t5, 0
	ld.hu	$t8, $t6, 0
	mul.d	$a0, $a0, $a3
	mul.d	$t8, $t8, $a4
	add.d	$a0, $a0, $s2
	add.d	$a0, $a0, $t8
	sra.w	$a0, $a0, $s0
	add.w	$a0, $a0, $a5
	srai.d	$t8, $a0, 63
	andn	$a0, $a0, $t8
	slt	$t8, $a0, $a6
	ld.hu	$s1, $t4, 0
	maskeqz	$a0, $a0, $t8
	masknez	$t8, $a6, $t8
	or	$a0, $a0, $t8
	sub.d	$a0, $s1, $a0
	ld.hu	$t8, $t5, 2
	ld.hu	$s1, $t6, 2
	mulw.d.w	$a0, $a0, $a0
	add.d	$a0, $a0, $s7
	mul.d	$t8, $t8, $a3
	mul.d	$s1, $s1, $a4
	add.d	$t8, $t8, $s2
	add.d	$t8, $t8, $s1
	sra.w	$t8, $t8, $s0
	add.w	$t8, $t8, $a5
	srai.d	$s1, $t8, 63
	andn	$t8, $t8, $s1
	slt	$s1, $t8, $a6
	ld.hu	$s4, $t4, 2
	maskeqz	$t8, $t8, $s1
	masknez	$s1, $a6, $s1
	or	$t8, $t8, $s1
	sub.d	$t8, $s4, $t8
	ld.hu	$s1, $t5, 4
	ld.hu	$s4, $t6, 4
	mul.d	$t8, $t8, $t8
	add.d	$a0, $a0, $t8
	mul.d	$t8, $s1, $a3
	mul.d	$s1, $s4, $a4
	add.d	$t8, $t8, $s2
	add.d	$t8, $t8, $s1
	sra.w	$t8, $t8, $s0
	add.w	$t8, $t8, $a5
	srai.d	$s1, $t8, 63
	andn	$t8, $t8, $s1
	slt	$s1, $t8, $a6
	ld.hu	$s4, $t4, 4
	maskeqz	$t8, $t8, $s1
	masknez	$s1, $a6, $s1
	or	$t8, $t8, $s1
	sub.d	$t8, $s4, $t8
	ld.hu	$s1, $t5, 6
	ld.hu	$s4, $t6, 6
	mul.d	$t8, $t8, $t8
	add.d	$a0, $a0, $t8
	mul.d	$t8, $s1, $a3
	mul.d	$s1, $s4, $a4
	add.d	$t8, $t8, $s2
	add.d	$t8, $t8, $s1
	sra.w	$t8, $t8, $s0
	add.w	$t8, $t8, $a5
	srai.d	$s1, $t8, 63
	andn	$t8, $t8, $s1
	slt	$s1, $t8, $a6
	maskeqz	$t8, $t8, $s1
	masknez	$s1, $a6, $s1
	or	$t8, $t8, $s1
	ld.hu	$s1, $t4, 6
	addi.d	$t5, $t5, 8
	addi.d	$t6, $t6, 8
	addi.d	$t4, $t4, 8
	sub.d	$t8, $s1, $t8
	mul.d	$t8, $t8, $t8
	addi.w	$t7, $t7, 4
	add.w	$s7, $a0, $t8
	blt	$t7, $s5, .LBB16_8
.LBB16_9:                               # %._crit_edge.us
                                        #   in Loop: Header=BB16_3 Depth=1
	bge	$s7, $fp, .LBB16_27
# %bb.10:                               #   in Loop: Header=BB16_3 Depth=1
	alsl.d	$t8, $a2, $t6, 1
	addi.w	$a1, $a1, 1
	alsl.d	$a0, $a2, $t5, 1
	move	$ra, $t4
	bne	$a1, $s6, .LBB16_3
# %bb.11:                               # %._crit_edge132.split.us
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	st.d	$t8, $a1, %pc_lo12(ref2_line)
	ld.d	$s8, $sp, 104                   # 8-byte Folded Reload
	st.d	$a0, $s8, %pc_lo12(ref1_line)
	ld.d	$s1, $sp, 120                   # 8-byte Folded Reload
	st.d	$t4, $s1, %pc_lo12(src_line)
	pcalau12i	$a0, %pc_hi20(ChromaMEEnable)
	ld.w	$a0, $a0, %pc_lo12(ChromaMEEnable)
	bnez	$a0, .LBB16_15
	b	.LBB16_47
.LBB16_12:
	move	$s7, $zero
	ld.d	$s1, $sp, 120                   # 8-byte Folded Reload
	pcalau12i	$a0, %pc_hi20(ChromaMEEnable)
	ld.w	$a0, $a0, %pc_lo12(ChromaMEEnable)
	bnez	$a0, .LBB16_15
	b	.LBB16_47
.LBB16_13:                              # %.preheader109.lr.ph.split
	move	$s7, $zero
	ori	$a1, $zero, 1
	blt	$fp, $a1, .LBB16_47
# %bb.14:                               # %.preheader109.preheader
	slli.d	$a1, $s4, 1
	slli.d	$a2, $s5, 1
	sub.d	$a1, $a1, $a2
	addi.w	$a3, $s6, -1
	mul.d	$a1, $a1, $a3
	alsl.d	$a1, $s4, $a1, 1
	sub.d	$a1, $a1, $a2
	add.d	$a2, $t8, $a1
	add.d	$a0, $a0, $a1
	st.d	$a2, $s1, %pc_lo12(ref2_line)
	st.d	$a0, $s8, %pc_lo12(ref1_line)
	ld.d	$s1, $sp, 120                   # 8-byte Folded Reload
	pcalau12i	$a0, %pc_hi20(ChromaMEEnable)
	ld.w	$a0, $a0, %pc_lo12(ChromaMEEnable)
	beqz	$a0, .LBB16_47
.LBB16_15:
	st.d	$s8, $sp, 104                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(shift_cr_y)
	ld.wu	$a0, $a0, %pc_lo12(shift_cr_y)
	sra.w	$s6, $s6, $a0
	blez	$s6, .LBB16_28
# %bb.16:                               # %.preheader.lr.ph.us.preheader
	st.d	$s3, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(shift_cr_x)
	ld.wu	$a0, $a0, %pc_lo12(shift_cr_x)
	pcalau12i	$a1, %pc_hi20(img_cr_padded_size_x)
	ld.w	$a1, $a1, %pc_lo12(img_cr_padded_size_x)
	sra.w	$s5, $s5, $a0
	slli.d	$a0, $a1, 1
	slli.d	$a2, $s5, 1
	sub.d	$a0, $a0, $a2
	addi.w	$a3, $s6, -1
	ld.d	$s8, $sp, 32                    # 8-byte Folded Reload
	ld.w	$a4, $s8, %pc_lo12(bipred2_access_method)
	mul.d	$a0, $a0, $a3
	alsl.d	$a0, $a1, $a0, 1
	sub.d	$a0, $a0, $a2
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	slli.d	$a0, $a4, 3
	pcalau12i	$a2, %pc_hi20(get_crline)
	addi.d	$s3, $a2, %pc_lo12(get_crline)
	ldx.d	$a3, $s3, $a0
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 8
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	addi.d	$a2, $a2, 512
	st.d	$a2, $s1, %pc_lo12(src_line)
	sub.w	$s4, $a1, $s5
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 64                    # 8-byte Folded Reload
	jirl	$ra, $a3, 0
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	ld.w	$a1, $a1, %pc_lo12(bipred1_access_method)
	slli.d	$a1, $a1, 3
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	ldx.d	$a3, $s3, $a1
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a1, $a1, 8
	ld.d	$s3, $sp, 112                   # 8-byte Folded Reload
	st.d	$a0, $s3, %pc_lo12(ref2_line)
	move	$a0, $a1
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	jirl	$ra, $a3, 0
	ld.d	$t4, $s3, %pc_lo12(ref2_line)
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(ref1_line)
	blez	$s5, .LBB16_29
# %bb.17:                               # %.preheader.lr.ph.split.us.us
	pcalau12i	$a1, %got_pc_hi20(img)
	ld.d	$a1, $a1, %got_pc_lo12(img)
	move	$a4, $zero
	ld.d	$a1, $a1, 0
	ld.d	$t5, $s1, %pc_lo12(src_line)
	pcalau12i	$a2, %pc_hi20(weight1_cr)
	ld.h	$a5, $a2, %pc_lo12(weight1_cr)
	pcalau12i	$a2, %pc_hi20(weight2_cr)
	ld.h	$a6, $a2, %pc_lo12(weight2_cr)
	lu12i.w	$a2, 3
	ori	$a2, $a2, 3236
	ldx.w	$a7, $a1, $a2
	pcalau12i	$a1, %pc_hi20(offsetBi_cr)
	ld.h	$t0, $a1, %pc_lo12(offsetBi_cr)
	bstrpick.d	$a1, $s5, 30, 3
	slli.d	$t1, $a1, 3
	slli.d	$t2, $a1, 5
	vreplgr2vr.w	$vr0, $a5
	vreplgr2vr.w	$vr1, $a6
	vreplgr2vr.w	$vr2, $s2
	vreplgr2vr.w	$vr3, $s0
	vreplgr2vr.w	$vr4, $t0
	vreplgr2vr.w	$vr5, $a7
	ori	$t3, $zero, 8
	vrepli.b	$vr6, 0
	ld.d	$s3, $sp, 24                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB16_18:                              # %.preheader.us.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB16_21 Depth 2
                                        #     Child Loop BB16_24 Depth 2
	bgeu	$s5, $t3, .LBB16_20
# %bb.19:                               #   in Loop: Header=BB16_18 Depth=1
	move	$t6, $zero
	move	$a2, $a0
	move	$a3, $t4
	move	$a1, $t5
	b	.LBB16_23
	.p2align	4, , 16
.LBB16_20:                              # %vector.ph323
                                        #   in Loop: Header=BB16_18 Depth=1
	add.d	$a2, $a0, $t2
	add.d	$a3, $t4, $t2
	vld	$vr7, $s3, %pc_lo12(.LCPI16_0)
	add.d	$a1, $t5, $t2
	vinsgr2vr.w	$vr8, $s7, 0
	vinsgr2vr.w	$vr9, $zero, 0
	vshuf.w	$vr7, $vr9, $vr8
	addi.d	$a0, $a0, 16
	addi.d	$t4, $t4, 16
	addi.d	$t5, $t5, 16
	move	$t6, $t1
	vori.b	$vr8, $vr6, 0
	.p2align	4, , 16
.LBB16_21:                              # %vector.body339
                                        #   Parent Loop BB16_18 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.h	$t7, $a0, -4
	ld.h	$t8, $a0, -8
	ld.h	$s1, $a0, -12
	ld.h	$s7, $a0, -16
	st.h	$t7, $sp, 374
	st.h	$t8, $sp, 372
	st.h	$s1, $sp, 370
	st.h	$s7, $sp, 368
	vld	$vr9, $sp, 368
	ld.h	$t7, $a0, 12
	ld.h	$t8, $a0, 8
	ld.h	$s1, $a0, 4
	ld.h	$s7, $a0, 0
	st.h	$t7, $sp, 358
	st.h	$t8, $sp, 356
	st.h	$s1, $sp, 354
	st.h	$s7, $sp, 352
	vld	$vr10, $sp, 352
	ld.h	$t7, $t4, -4
	ld.h	$t8, $t4, -8
	ld.h	$s1, $t4, -12
	ld.h	$s7, $t4, -16
	st.h	$t7, $sp, 438
	st.h	$t8, $sp, 436
	st.h	$s1, $sp, 434
	st.h	$s7, $sp, 432
	vld	$vr11, $sp, 432
	ld.h	$t7, $t4, 12
	ld.h	$t8, $t4, 8
	ld.h	$s1, $t4, 4
	ld.h	$s7, $t4, 0
	st.h	$t7, $sp, 422
	st.h	$t8, $sp, 420
	st.h	$s1, $sp, 418
	st.h	$s7, $sp, 416
	vld	$vr12, $sp, 416
	vilvl.h	$vr9, $vr6, $vr9
	vilvl.h	$vr10, $vr6, $vr10
	vilvl.h	$vr11, $vr6, $vr11
	vilvl.h	$vr12, $vr6, $vr12
	vori.b	$vr13, $vr2, 0
	vmadd.w	$vr13, $vr0, $vr9
	vori.b	$vr9, $vr2, 0
	vmadd.w	$vr9, $vr0, $vr10
	vmadd.w	$vr13, $vr1, $vr11
	vmadd.w	$vr9, $vr1, $vr12
	vsra.w	$vr10, $vr13, $vr3
	vsra.w	$vr9, $vr9, $vr3
	vadd.w	$vr10, $vr10, $vr4
	vadd.w	$vr9, $vr9, $vr4
	vmaxi.w	$vr10, $vr10, 0
	vmaxi.w	$vr9, $vr9, 0
	ld.h	$t7, $t5, -4
	ld.h	$t8, $t5, -8
	ld.h	$s1, $t5, -12
	ld.h	$s7, $t5, -16
	st.h	$t7, $sp, 502
	st.h	$t8, $sp, 500
	st.h	$s1, $sp, 498
	st.h	$s7, $sp, 496
	vld	$vr11, $sp, 496
	ld.h	$t7, $t5, 12
	ld.h	$t8, $t5, 8
	ld.h	$s1, $t5, 4
	ld.h	$s7, $t5, 0
	st.h	$t7, $sp, 486
	st.h	$t8, $sp, 484
	st.h	$s1, $sp, 482
	st.h	$s7, $sp, 480
	vld	$vr12, $sp, 480
	vmin.w	$vr10, $vr10, $vr5
	vmin.w	$vr9, $vr9, $vr5
	vilvl.h	$vr11, $vr6, $vr11
	vilvl.h	$vr12, $vr6, $vr12
	vsub.w	$vr10, $vr11, $vr10
	vsub.w	$vr9, $vr12, $vr9
	vmadd.w	$vr7, $vr10, $vr10
	vmadd.w	$vr8, $vr9, $vr9
	ld.h	$t7, $a0, -2
	ld.h	$t8, $a0, -6
	ld.h	$s1, $a0, -10
	ld.h	$s7, $a0, -14
	st.h	$t7, $sp, 342
	st.h	$t8, $sp, 340
	st.h	$s1, $sp, 338
	st.h	$s7, $sp, 336
	vld	$vr9, $sp, 336
	ld.h	$t7, $a0, 14
	ld.h	$t8, $a0, 10
	ld.h	$s1, $a0, 6
	ld.h	$s7, $a0, 2
	st.h	$t7, $sp, 326
	st.h	$t8, $sp, 324
	st.h	$s1, $sp, 322
	st.h	$s7, $sp, 320
	vld	$vr10, $sp, 320
	ld.h	$t7, $t4, -2
	ld.h	$t8, $t4, -6
	ld.h	$s1, $t4, -10
	ld.h	$s7, $t4, -14
	st.h	$t7, $sp, 406
	st.h	$t8, $sp, 404
	st.h	$s1, $sp, 402
	st.h	$s7, $sp, 400
	vld	$vr11, $sp, 400
	ld.h	$t7, $t4, 14
	ld.h	$t8, $t4, 10
	ld.h	$s1, $t4, 6
	ld.h	$s7, $t4, 2
	st.h	$t7, $sp, 390
	st.h	$t8, $sp, 388
	st.h	$s1, $sp, 386
	st.h	$s7, $sp, 384
	vld	$vr12, $sp, 384
	vilvl.h	$vr9, $vr6, $vr9
	vilvl.h	$vr10, $vr6, $vr10
	vilvl.h	$vr11, $vr6, $vr11
	vilvl.h	$vr12, $vr6, $vr12
	vori.b	$vr13, $vr2, 0
	vmadd.w	$vr13, $vr0, $vr9
	vori.b	$vr9, $vr2, 0
	vmadd.w	$vr9, $vr0, $vr10
	vmadd.w	$vr13, $vr1, $vr11
	vmadd.w	$vr9, $vr1, $vr12
	vsra.w	$vr10, $vr13, $vr3
	vsra.w	$vr9, $vr9, $vr3
	vadd.w	$vr10, $vr10, $vr4
	vadd.w	$vr9, $vr9, $vr4
	vmaxi.w	$vr10, $vr10, 0
	vmaxi.w	$vr9, $vr9, 0
	ld.h	$t7, $t5, -2
	ld.h	$t8, $t5, -6
	ld.h	$s1, $t5, -10
	ld.h	$s7, $t5, -14
	st.h	$t7, $sp, 470
	st.h	$t8, $sp, 468
	st.h	$s1, $sp, 466
	st.h	$s7, $sp, 464
	vld	$vr11, $sp, 464
	ld.h	$t7, $t5, 14
	ld.h	$t8, $t5, 10
	ld.h	$s1, $t5, 6
	ld.h	$s7, $t5, 2
	st.h	$t7, $sp, 454
	st.h	$t8, $sp, 452
	st.h	$s1, $sp, 450
	st.h	$s7, $sp, 448
	vld	$vr12, $sp, 448
	vmin.w	$vr10, $vr10, $vr5
	vmin.w	$vr9, $vr9, $vr5
	vilvl.h	$vr11, $vr6, $vr11
	vilvl.h	$vr12, $vr6, $vr12
	vsub.w	$vr10, $vr11, $vr10
	vsub.w	$vr9, $vr12, $vr9
	vmadd.w	$vr7, $vr10, $vr10
	vmadd.w	$vr8, $vr9, $vr9
	addi.d	$t6, $t6, -8
	addi.d	$a0, $a0, 32
	addi.d	$t4, $t4, 32
	addi.d	$t5, $t5, 32
	bnez	$t6, .LBB16_21
# %bb.22:                               # %middle.block371
                                        #   in Loop: Header=BB16_18 Depth=1
	vadd.w	$vr7, $vr8, $vr7
	vshuf4i.w	$vr8, $vr7, 14
	vadd.w	$vr7, $vr7, $vr8
	vreplvei.w	$vr8, $vr7, 1
	vadd.w	$vr7, $vr7, $vr8
	vpickve2gr.w	$s7, $vr7, 0
	move	$t6, $t1
	beq	$t1, $s5, .LBB16_25
.LBB16_23:                              # %scalar.ph321.preheader
                                        #   in Loop: Header=BB16_18 Depth=1
	sub.d	$a0, $s5, $t6
	.p2align	4, , 16
.LBB16_24:                              # %scalar.ph321
                                        #   Parent Loop BB16_18 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.hu	$t4, $a2, 0
	ld.hu	$t5, $a3, 0
	mul.d	$t4, $t4, $a5
	mul.d	$t5, $t5, $a6
	add.d	$t4, $t4, $s2
	add.d	$t4, $t4, $t5
	sra.w	$t4, $t4, $s0
	add.w	$t4, $t4, $t0
	srai.d	$t5, $t4, 63
	andn	$t4, $t4, $t5
	slt	$t5, $t4, $a7
	ld.hu	$t6, $a1, 0
	maskeqz	$t4, $t4, $t5
	masknez	$t5, $a7, $t5
	or	$t4, $t4, $t5
	sub.d	$t4, $t6, $t4
	ld.hu	$t5, $a2, 2
	ld.hu	$t6, $a3, 2
	mul.d	$t4, $t4, $t4
	add.d	$t4, $t4, $s7
	mul.d	$t5, $t5, $a5
	mul.d	$t6, $t6, $a6
	add.d	$t5, $t5, $s2
	add.d	$t5, $t5, $t6
	sra.w	$t5, $t5, $s0
	add.w	$t5, $t5, $t0
	srai.d	$t6, $t5, 63
	andn	$t5, $t5, $t6
	slt	$t6, $t5, $a7
	maskeqz	$t5, $t5, $t6
	masknez	$t6, $a7, $t6
	or	$t5, $t5, $t6
	ld.hu	$t6, $a1, 2
	addi.d	$a2, $a2, 4
	addi.d	$a3, $a3, 4
	addi.d	$a1, $a1, 4
	sub.d	$t5, $t6, $t5
	mul.d	$t5, $t5, $t5
	addi.w	$a0, $a0, -1
	add.w	$s7, $t4, $t5
	bnez	$a0, .LBB16_24
.LBB16_25:                              # %._crit_edge.us160.us
                                        #   in Loop: Header=BB16_18 Depth=1
	bge	$s7, $fp, .LBB16_43
# %bb.26:                               #   in Loop: Header=BB16_18 Depth=1
	alsl.d	$t4, $s4, $a3, 1
	addi.w	$a4, $a4, 1
	alsl.d	$a0, $s4, $a2, 1
	move	$t5, $a1
	bne	$a4, $s6, .LBB16_18
	b	.LBB16_31
.LBB16_27:                              # %.loopexit110.split.us
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	st.d	$t6, $a0, %pc_lo12(ref2_line)
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	st.d	$t5, $a0, %pc_lo12(ref1_line)
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	st.d	$t4, $a0, %pc_lo12(src_line)
	b	.LBB16_47
.LBB16_28:                              # %.split.preheader
	ld.d	$s8, $sp, 32                    # 8-byte Folded Reload
	ld.w	$a0, $s8, %pc_lo12(bipred2_access_method)
	slli.d	$a0, $a0, 3
	pcalau12i	$a1, %pc_hi20(get_crline)
	addi.d	$fp, $a1, %pc_lo12(get_crline)
	ldx.d	$a3, $fp, $a0
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a0, $s0, 8
	ld.d	$s6, $sp, 48                    # 8-byte Folded Reload
	addi.d	$a1, $s6, 512
	st.d	$a1, $s1, %pc_lo12(src_line)
	ld.d	$s5, $sp, 56                    # 8-byte Folded Reload
	move	$a1, $s5
	ld.d	$s4, $sp, 64                    # 8-byte Folded Reload
	move	$a2, $s4
	jirl	$ra, $a3, 0
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	ld.w	$a1, $a1, %pc_lo12(bipred1_access_method)
	slli.d	$a1, $a1, 3
	ldx.d	$a3, $fp, $a1
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a1, $a1, 8
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	st.d	$a0, $a2, %pc_lo12(ref2_line)
	move	$a0, $a1
	ld.d	$s3, $sp, 72                    # 8-byte Folded Reload
	move	$a1, $s3
	ld.d	$s2, $sp, 80                    # 8-byte Folded Reload
	move	$a2, $s2
	jirl	$ra, $a3, 0
	ld.w	$a1, $s8, %pc_lo12(bipred2_access_method)
	slli.d	$a1, $a1, 3
	ldx.d	$a3, $fp, $a1
	ld.d	$a1, $s0, 16
	ld.d	$s8, $sp, 104                   # 8-byte Folded Reload
	st.d	$a0, $s8, %pc_lo12(ref1_line)
	addi.d	$a0, $s6, 1024
	st.d	$a0, $s1, %pc_lo12(src_line)
	move	$a0, $a1
	move	$a1, $s5
	move	$a2, $s4
	jirl	$ra, $a3, 0
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	ld.w	$a1, $a1, %pc_lo12(bipred1_access_method)
	slli.d	$a1, $a1, 3
	ldx.d	$a3, $fp, $a1
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a1, $a1, 16
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	st.d	$a0, $a2, %pc_lo12(ref2_line)
	move	$a0, $a1
	move	$a1, $s3
	move	$a2, $s2
	jirl	$ra, $a3, 0
	b	.LBB16_46
.LBB16_29:                              # %.preheader.lr.ph.split.us176
	bge	$s7, $fp, .LBB16_47
# %bb.30:                               # %.preheader.us171.preheader
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	add.d	$t4, $t4, $a1
	add.d	$a0, $a0, $a1
.LBB16_31:                              # %._crit_edge158.us
	ld.w	$a1, $s8, %pc_lo12(bipred2_access_method)
	ld.d	$s3, $sp, 112                   # 8-byte Folded Reload
	st.d	$t4, $s3, %pc_lo12(ref2_line)
	slli.d	$a1, $a1, 3
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ldx.d	$a3, $s1, $a1
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a1, $a1, 16
	ld.d	$s8, $sp, 104                   # 8-byte Folded Reload
	st.d	$a0, $s8, %pc_lo12(ref1_line)
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	addi.d	$a0, $a0, 1024
	ld.d	$a2, $sp, 120                   # 8-byte Folded Reload
	st.d	$a0, $a2, %pc_lo12(src_line)
	move	$a0, $a1
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 64                    # 8-byte Folded Reload
	jirl	$ra, $a3, 0
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	ld.w	$a1, $a1, %pc_lo12(bipred1_access_method)
	slli.d	$a1, $a1, 3
	ldx.d	$a3, $s1, $a1
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a1, $a1, 16
	st.d	$a0, $s3, %pc_lo12(ref2_line)
	move	$a0, $a1
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	jirl	$ra, $a3, 0
	ld.d	$t4, $s3, %pc_lo12(ref2_line)
	st.d	$a0, $s8, %pc_lo12(ref1_line)
	blez	$s5, .LBB16_45
# %bb.32:                               # %.preheader.lr.ph.split.us.us.1
	pcalau12i	$a1, %got_pc_hi20(img)
	ld.d	$a1, $a1, %got_pc_lo12(img)
	move	$a4, $zero
	ld.d	$a1, $a1, 0
	ld.d	$a2, $sp, 120                   # 8-byte Folded Reload
	ld.d	$t5, $a2, %pc_lo12(src_line)
	pcalau12i	$a2, %pc_hi20(weight1_cr+2)
	ld.h	$a5, $a2, %pc_lo12(weight1_cr+2)
	pcalau12i	$a2, %pc_hi20(weight2_cr+2)
	ld.h	$a6, $a2, %pc_lo12(weight2_cr+2)
	lu12i.w	$a2, 3
	ori	$a2, $a2, 3236
	ldx.w	$a7, $a1, $a2
	pcalau12i	$a1, %pc_hi20(offsetBi_cr+2)
	ld.h	$t0, $a1, %pc_lo12(offsetBi_cr+2)
	bstrpick.d	$a1, $s5, 30, 3
	slli.d	$t1, $a1, 3
	slli.d	$t2, $a1, 5
	vreplgr2vr.w	$vr0, $a5
	vreplgr2vr.w	$vr1, $a6
	vreplgr2vr.w	$vr2, $s2
	vreplgr2vr.w	$vr3, $s0
	vreplgr2vr.w	$vr4, $t0
	vreplgr2vr.w	$vr5, $a7
	ori	$t3, $zero, 8
	vrepli.b	$vr6, 0
	ld.d	$s3, $sp, 24                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB16_33:                              # %.preheader.us.us.1
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB16_36 Depth 2
                                        #     Child Loop BB16_39 Depth 2
	bgeu	$s5, $t3, .LBB16_35
# %bb.34:                               #   in Loop: Header=BB16_33 Depth=1
	move	$t6, $zero
	move	$a2, $a0
	move	$a3, $t4
	move	$a1, $t5
	b	.LBB16_38
	.p2align	4, , 16
.LBB16_35:                              # %vector.ph381
                                        #   in Loop: Header=BB16_33 Depth=1
	add.d	$a2, $a0, $t2
	add.d	$a3, $t4, $t2
	vld	$vr7, $s3, %pc_lo12(.LCPI16_0)
	add.d	$a1, $t5, $t2
	vinsgr2vr.w	$vr8, $s7, 0
	vinsgr2vr.w	$vr9, $zero, 0
	vshuf.w	$vr7, $vr9, $vr8
	addi.d	$a0, $a0, 16
	addi.d	$t4, $t4, 16
	addi.d	$t5, $t5, 16
	move	$t6, $t1
	vori.b	$vr8, $vr6, 0
	.p2align	4, , 16
.LBB16_36:                              # %vector.body397
                                        #   Parent Loop BB16_33 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.h	$t7, $a0, -4
	ld.h	$t8, $a0, -8
	ld.h	$s1, $a0, -12
	ld.h	$s7, $a0, -16
	st.h	$t7, $sp, 182
	st.h	$t8, $sp, 180
	st.h	$s1, $sp, 178
	st.h	$s7, $sp, 176
	vld	$vr9, $sp, 176
	ld.h	$t7, $a0, 12
	ld.h	$t8, $a0, 8
	ld.h	$s1, $a0, 4
	ld.h	$s7, $a0, 0
	st.h	$t7, $sp, 166
	st.h	$t8, $sp, 164
	st.h	$s1, $sp, 162
	st.h	$s7, $sp, 160
	vld	$vr10, $sp, 160
	ld.h	$t7, $t4, -4
	ld.h	$t8, $t4, -8
	ld.h	$s1, $t4, -12
	ld.h	$s7, $t4, -16
	st.h	$t7, $sp, 246
	st.h	$t8, $sp, 244
	st.h	$s1, $sp, 242
	st.h	$s7, $sp, 240
	vld	$vr11, $sp, 240
	ld.h	$t7, $t4, 12
	ld.h	$t8, $t4, 8
	ld.h	$s1, $t4, 4
	ld.h	$s7, $t4, 0
	st.h	$t7, $sp, 230
	st.h	$t8, $sp, 228
	st.h	$s1, $sp, 226
	st.h	$s7, $sp, 224
	vld	$vr12, $sp, 224
	vilvl.h	$vr9, $vr6, $vr9
	vilvl.h	$vr10, $vr6, $vr10
	vilvl.h	$vr11, $vr6, $vr11
	vilvl.h	$vr12, $vr6, $vr12
	vori.b	$vr13, $vr2, 0
	vmadd.w	$vr13, $vr0, $vr9
	vori.b	$vr9, $vr2, 0
	vmadd.w	$vr9, $vr0, $vr10
	vmadd.w	$vr13, $vr1, $vr11
	vmadd.w	$vr9, $vr1, $vr12
	vsra.w	$vr10, $vr13, $vr3
	vsra.w	$vr9, $vr9, $vr3
	vadd.w	$vr10, $vr10, $vr4
	vadd.w	$vr9, $vr9, $vr4
	vmaxi.w	$vr10, $vr10, 0
	vmaxi.w	$vr9, $vr9, 0
	ld.h	$t7, $t5, -4
	ld.h	$t8, $t5, -8
	ld.h	$s1, $t5, -12
	ld.h	$s7, $t5, -16
	st.h	$t7, $sp, 310
	st.h	$t8, $sp, 308
	st.h	$s1, $sp, 306
	st.h	$s7, $sp, 304
	vld	$vr11, $sp, 304
	ld.h	$t7, $t5, 12
	ld.h	$t8, $t5, 8
	ld.h	$s1, $t5, 4
	ld.h	$s7, $t5, 0
	st.h	$t7, $sp, 294
	st.h	$t8, $sp, 292
	st.h	$s1, $sp, 290
	st.h	$s7, $sp, 288
	vld	$vr12, $sp, 288
	vmin.w	$vr10, $vr10, $vr5
	vmin.w	$vr9, $vr9, $vr5
	vilvl.h	$vr11, $vr6, $vr11
	vilvl.h	$vr12, $vr6, $vr12
	vsub.w	$vr10, $vr11, $vr10
	vsub.w	$vr9, $vr12, $vr9
	vmadd.w	$vr7, $vr10, $vr10
	vmadd.w	$vr8, $vr9, $vr9
	ld.h	$t7, $a0, -2
	ld.h	$t8, $a0, -6
	ld.h	$s1, $a0, -10
	ld.h	$s7, $a0, -14
	st.h	$t7, $sp, 150
	st.h	$t8, $sp, 148
	st.h	$s1, $sp, 146
	st.h	$s7, $sp, 144
	vld	$vr9, $sp, 144
	ld.h	$t7, $a0, 14
	ld.h	$t8, $a0, 10
	ld.h	$s1, $a0, 6
	ld.h	$s7, $a0, 2
	st.h	$t7, $sp, 134
	st.h	$t8, $sp, 132
	st.h	$s1, $sp, 130
	st.h	$s7, $sp, 128
	vld	$vr10, $sp, 128
	ld.h	$t7, $t4, -2
	ld.h	$t8, $t4, -6
	ld.h	$s1, $t4, -10
	ld.h	$s7, $t4, -14
	st.h	$t7, $sp, 214
	st.h	$t8, $sp, 212
	st.h	$s1, $sp, 210
	st.h	$s7, $sp, 208
	vld	$vr11, $sp, 208
	ld.h	$t7, $t4, 14
	ld.h	$t8, $t4, 10
	ld.h	$s1, $t4, 6
	ld.h	$s7, $t4, 2
	st.h	$t7, $sp, 198
	st.h	$t8, $sp, 196
	st.h	$s1, $sp, 194
	st.h	$s7, $sp, 192
	vld	$vr12, $sp, 192
	vilvl.h	$vr9, $vr6, $vr9
	vilvl.h	$vr10, $vr6, $vr10
	vilvl.h	$vr11, $vr6, $vr11
	vilvl.h	$vr12, $vr6, $vr12
	vori.b	$vr13, $vr2, 0
	vmadd.w	$vr13, $vr0, $vr9
	vori.b	$vr9, $vr2, 0
	vmadd.w	$vr9, $vr0, $vr10
	vmadd.w	$vr13, $vr1, $vr11
	vmadd.w	$vr9, $vr1, $vr12
	vsra.w	$vr10, $vr13, $vr3
	vsra.w	$vr9, $vr9, $vr3
	vadd.w	$vr10, $vr10, $vr4
	vadd.w	$vr9, $vr9, $vr4
	vmaxi.w	$vr10, $vr10, 0
	vmaxi.w	$vr9, $vr9, 0
	ld.h	$t7, $t5, -2
	ld.h	$t8, $t5, -6
	ld.h	$s1, $t5, -10
	ld.h	$s7, $t5, -14
	st.h	$t7, $sp, 278
	st.h	$t8, $sp, 276
	st.h	$s1, $sp, 274
	st.h	$s7, $sp, 272
	vld	$vr11, $sp, 272
	ld.h	$t7, $t5, 14
	ld.h	$t8, $t5, 10
	ld.h	$s1, $t5, 6
	ld.h	$s7, $t5, 2
	st.h	$t7, $sp, 262
	st.h	$t8, $sp, 260
	st.h	$s1, $sp, 258
	st.h	$s7, $sp, 256
	vld	$vr12, $sp, 256
	vmin.w	$vr10, $vr10, $vr5
	vmin.w	$vr9, $vr9, $vr5
	vilvl.h	$vr11, $vr6, $vr11
	vilvl.h	$vr12, $vr6, $vr12
	vsub.w	$vr10, $vr11, $vr10
	vsub.w	$vr9, $vr12, $vr9
	vmadd.w	$vr7, $vr10, $vr10
	vmadd.w	$vr8, $vr9, $vr9
	addi.d	$t6, $t6, -8
	addi.d	$a0, $a0, 32
	addi.d	$t4, $t4, 32
	addi.d	$t5, $t5, 32
	bnez	$t6, .LBB16_36
# %bb.37:                               # %middle.block429
                                        #   in Loop: Header=BB16_33 Depth=1
	vadd.w	$vr7, $vr8, $vr7
	vshuf4i.w	$vr8, $vr7, 14
	vadd.w	$vr7, $vr7, $vr8
	vreplvei.w	$vr8, $vr7, 1
	vadd.w	$vr7, $vr7, $vr8
	vpickve2gr.w	$s7, $vr7, 0
	move	$t6, $t1
	beq	$t1, $s5, .LBB16_40
.LBB16_38:                              # %scalar.ph379.preheader
                                        #   in Loop: Header=BB16_33 Depth=1
	sub.d	$a0, $s5, $t6
	.p2align	4, , 16
.LBB16_39:                              # %scalar.ph379
                                        #   Parent Loop BB16_33 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.hu	$t4, $a2, 0
	ld.hu	$t5, $a3, 0
	mul.d	$t4, $t4, $a5
	mul.d	$t5, $t5, $a6
	add.d	$t4, $t4, $s2
	add.d	$t4, $t4, $t5
	sra.w	$t4, $t4, $s0
	add.w	$t4, $t4, $t0
	srai.d	$t5, $t4, 63
	andn	$t4, $t4, $t5
	slt	$t5, $t4, $a7
	ld.hu	$t6, $a1, 0
	maskeqz	$t4, $t4, $t5
	masknez	$t5, $a7, $t5
	or	$t4, $t4, $t5
	sub.d	$t4, $t6, $t4
	ld.hu	$t5, $a2, 2
	ld.hu	$t6, $a3, 2
	mul.d	$t4, $t4, $t4
	add.d	$t4, $t4, $s7
	mul.d	$t5, $t5, $a5
	mul.d	$t6, $t6, $a6
	add.d	$t5, $t5, $s2
	add.d	$t5, $t5, $t6
	sra.w	$t5, $t5, $s0
	add.w	$t5, $t5, $t0
	srai.d	$t6, $t5, 63
	andn	$t5, $t5, $t6
	slt	$t6, $t5, $a7
	maskeqz	$t5, $t5, $t6
	masknez	$t6, $a7, $t6
	or	$t5, $t5, $t6
	ld.hu	$t6, $a1, 2
	addi.d	$a2, $a2, 4
	addi.d	$a3, $a3, 4
	addi.d	$a1, $a1, 4
	sub.d	$t5, $t6, $t5
	mul.d	$t5, $t5, $t5
	addi.w	$a0, $a0, -1
	add.w	$s7, $t4, $t5
	bnez	$a0, .LBB16_39
.LBB16_40:                              # %._crit_edge.us160.us.1
                                        #   in Loop: Header=BB16_33 Depth=1
	bge	$s7, $fp, .LBB16_43
# %bb.41:                               #   in Loop: Header=BB16_33 Depth=1
	alsl.d	$t4, $s4, $a3, 1
	addi.w	$a4, $a4, 1
	alsl.d	$a0, $s4, $a2, 1
	move	$t5, $a1
	bne	$a4, $s6, .LBB16_33
# %bb.42:                               # %._crit_edge158.split.us.us.1
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	st.d	$t4, $a2, %pc_lo12(ref2_line)
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	st.d	$a0, $a2, %pc_lo12(ref1_line)
	b	.LBB16_44
.LBB16_43:                              # %.loopexit.split.us
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	st.d	$a3, $a0, %pc_lo12(ref2_line)
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	st.d	$a2, $a0, %pc_lo12(ref1_line)
.LBB16_44:                              # %.loopexit
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	st.d	$a1, $a0, %pc_lo12(src_line)
	b	.LBB16_47
.LBB16_45:                              # %.preheader.us171.preheader.1
	ld.d	$a3, $sp, 8                     # 8-byte Folded Reload
	add.d	$a1, $t4, $a3
	add.d	$a0, $a0, $a3
	st.d	$a1, $s3, %pc_lo12(ref2_line)
.LBB16_46:                              # %.loopexit
	st.d	$a0, $s8, %pc_lo12(ref1_line)
.LBB16_47:                              # %.loopexit
	move	$a0, $s7
	ld.d	$s8, $sp, 904                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 912                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 920                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 928                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 936                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 944                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 952                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 960                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 968                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 976                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 984                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 992
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
