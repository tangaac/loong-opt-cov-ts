	.file	"jdsample.c"
	.text
	.globl	jinit_upsampler                 # -- Begin function jinit_upsampler
	.p2align	5
	.type	jinit_upsampler,@function
jinit_upsampler:                        # @jinit_upsampler
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
	move	$fp, $a0
	ld.d	$a0, $a0, 8
	ld.d	$a3, $a0, 0
	ori	$a1, $zero, 1
	ori	$a2, $zero, 256
	move	$a0, $fp
	jirl	$ra, $a3, 0
	move	$s0, $a0
	st.d	$a0, $fp, 592
	pcalau12i	$a0, %pc_hi20(start_pass_upsample)
	addi.d	$a0, $a0, %pc_lo12(start_pass_upsample)
	st.d	$a0, $s0, 0
	ld.w	$a0, $fp, 384
	pcalau12i	$a1, %pc_hi20(sep_upsample)
	addi.d	$a1, $a1, %pc_lo12(sep_upsample)
	st.d	$a1, $s0, 8
	st.w	$zero, $s0, 16
	beqz	$a0, .LBB0_2
# %bb.1:
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 0
	ori	$a2, $zero, 23
	st.w	$a2, $a0, 40
	move	$a0, $fp
	jirl	$ra, $a1, 0
.LBB0_2:
	ld.w	$a0, $fp, 92
	beqz	$a0, .LBB0_4
# %bb.3:
	ld.w	$a0, $fp, 396
	ori	$a1, $zero, 1
	slt	$a0, $a1, $a0
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	ld.w	$a0, $fp, 48
	ori	$a1, $zero, 1
	bge	$a0, $a1, .LBB0_5
	b	.LBB0_28
.LBB0_4:
	st.d	$zero, $sp, 40                  # 8-byte Folded Spill
	ld.w	$a0, $fp, 48
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB0_28
.LBB0_5:                                # %.lr.ph
	ld.d	$a0, $fp, 296
	move	$s3, $zero
	addi.d	$s4, $s0, 104
	addi.d	$a1, $s0, 24
	st.d	$a1, $sp, 48                    # 8-byte Folded Spill
	addi.d	$s6, $a0, 36
	ori	$s2, $zero, 232
	ori	$s7, $zero, 192
	pcalau12i	$a0, %pc_hi20(noop_upsample)
	addi.d	$s8, $a0, %pc_lo12(noop_upsample)
	pcalau12i	$a0, %pc_hi20(fullsize_upsample)
	addi.d	$s1, $a0, %pc_lo12(fullsize_upsample)
	pcalau12i	$a0, %pc_hi20(h2v1_fancy_upsample)
	addi.d	$a0, $a0, %pc_lo12(h2v1_fancy_upsample)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(h2v1_upsample)
	addi.d	$a0, $a0, %pc_lo12(h2v1_upsample)
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(h2v2_fancy_upsample)
	addi.d	$a0, $a0, %pc_lo12(h2v2_fancy_upsample)
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(h2v2_upsample)
	addi.d	$a0, $a0, %pc_lo12(h2v2_upsample)
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	b	.LBB0_10
.LBB0_6:                                #   in Loop: Header=BB0_10 Depth=1
	add.d	$a0, $s0, $s3
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
.LBB0_7:                                #   in Loop: Header=BB0_10 Depth=1
	st.d	$a1, $a0, 104
.LBB0_8:                                #   in Loop: Header=BB0_10 Depth=1
	ld.d	$a0, $fp, 8
	ld.d	$s5, $a0, 16
	ld.wu	$a0, $fp, 128
	ld.w	$a1, $fp, 388
	pcaddu18i	$ra, %call36(jround_up)
	jirl	$ra, $ra, 0
	ld.w	$a3, $fp, 392
	addi.w	$a2, $a0, 0
	ori	$a1, $zero, 1
	move	$a0, $fp
	jirl	$ra, $s5, 0
	ld.d	$a6, $sp, 48                    # 8-byte Folded Reload
.LBB0_9:                                # %.critedge
                                        #   in Loop: Header=BB0_10 Depth=1
	stx.d	$a0, $a6, $s3
	ld.w	$a0, $fp, 48
	addi.d	$s3, $s3, 8
	addi.d	$s6, $s6, 96
	addi.d	$a1, $s2, -231
	addi.d	$s2, $s2, 1
	addi.d	$s7, $s7, 4
	bge	$a1, $a0, .LBB0_28
.LBB0_10:                               # =>This Inner Loop Header: Depth=1
	ld.w	$a4, $s6, 0
	ld.w	$a0, $s6, -24
	ld.w	$a5, $fp, 396
	ld.w	$a7, $s6, -28
	mul.w	$a0, $a0, $a4
	div.w	$a1, $a0, $a5
	ld.w	$a3, $fp, 388
	ld.w	$a2, $fp, 392
	stx.w	$a1, $s0, $s7
	ld.w	$t0, $s6, 12
	move	$a6, $s4
	move	$a0, $s8
	beqz	$t0, .LBB0_9
# %bb.11:                               #   in Loop: Header=BB0_10 Depth=1
	mul.w	$a0, $a4, $a7
	div.w	$a4, $a0, $a5
	bne	$a4, $a3, .LBB0_13
# %bb.12:                               #   in Loop: Header=BB0_10 Depth=1
	move	$a6, $s4
	move	$a0, $s1
	beq	$a1, $a2, .LBB0_9
.LBB0_13:                               #   in Loop: Header=BB0_10 Depth=1
	slli.w	$a0, $a4, 1
	bne	$a0, $a3, .LBB0_18
# %bb.14:                               #   in Loop: Header=BB0_10 Depth=1
	bne	$a1, $a2, .LBB0_18
# %bb.15:                               #   in Loop: Header=BB0_10 Depth=1
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	beqz	$a0, .LBB0_6
# %bb.16:                               #   in Loop: Header=BB0_10 Depth=1
	ld.w	$a0, $s6, 4
	ori	$a1, $zero, 3
	bltu	$a0, $a1, .LBB0_6
# %bb.17:                               #   in Loop: Header=BB0_10 Depth=1
	add.d	$a0, $s0, $s3
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	b	.LBB0_7
.LBB0_18:                               #   in Loop: Header=BB0_10 Depth=1
	bne	$a0, $a3, .LBB0_23
# %bb.19:                               #   in Loop: Header=BB0_10 Depth=1
	slli.w	$a0, $a1, 1
	bne	$a0, $a2, .LBB0_23
# %bb.20:                               #   in Loop: Header=BB0_10 Depth=1
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	beqz	$a0, .LBB0_26
# %bb.21:                               #   in Loop: Header=BB0_10 Depth=1
	ld.w	$a0, $s6, 4
	ori	$a1, $zero, 3
	bltu	$a0, $a1, .LBB0_26
# %bb.22:                               #   in Loop: Header=BB0_10 Depth=1
	add.d	$a0, $s0, $s3
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	st.d	$a1, $a0, 104
	ori	$a0, $zero, 1
	st.w	$a0, $s0, 16
	b	.LBB0_8
.LBB0_23:                               #   in Loop: Header=BB0_10 Depth=1
	div.w	$a0, $a3, $a4
	mul.d	$a4, $a0, $a4
	sub.w	$a3, $a3, $a4
	bnez	$a3, .LBB0_25
# %bb.24:                               #   in Loop: Header=BB0_10 Depth=1
	div.w	$a3, $a2, $a1
	mul.d	$a1, $a3, $a1
	sub.w	$a1, $a2, $a1
	beqz	$a1, .LBB0_27
.LBB0_25:                               #   in Loop: Header=BB0_10 Depth=1
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 0
	ori	$a2, $zero, 37
	st.w	$a2, $a0, 40
	move	$a0, $fp
	jirl	$ra, $a1, 0
	b	.LBB0_8
.LBB0_26:                               #   in Loop: Header=BB0_10 Depth=1
	add.d	$a0, $s0, $s3
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	b	.LBB0_7
.LBB0_27:                               #   in Loop: Header=BB0_10 Depth=1
	add.d	$a1, $s0, $s3
	pcalau12i	$a2, %pc_hi20(int_upsample)
	addi.d	$a2, $a2, %pc_lo12(int_upsample)
	st.d	$a2, $a1, 104
	add.d	$a1, $s0, $s2
	stx.b	$a0, $s0, $s2
	st.b	$a3, $a1, 10
	b	.LBB0_8
.LBB0_28:                               # %._crit_edge
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
.Lfunc_end0:
	.size	jinit_upsampler, .Lfunc_end0-jinit_upsampler
                                        # -- End function
	.p2align	5                               # -- Begin function start_pass_upsample
	.type	start_pass_upsample,@function
start_pass_upsample:                    # @start_pass_upsample
# %bb.0:
	ld.d	$a1, $a0, 592
	ld.w	$a2, $a0, 392
	ld.w	$a0, $a0, 132
	st.w	$a2, $a1, 184
	st.w	$a0, $a1, 188
	ret
.Lfunc_end1:
	.size	start_pass_upsample, .Lfunc_end1-start_pass_upsample
                                        # -- End function
	.p2align	5                               # -- Begin function sep_upsample
	.type	sep_upsample,@function
sep_upsample:                           # @sep_upsample
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
	move	$s0, $a0
	ld.d	$s4, $a0, 592
	ld.w	$a7, $s4, 184
	ld.w	$a0, $a0, 392
	move	$s1, $a5
	move	$fp, $a2
	blt	$a7, $a0, .LBB2_6
# %bb.1:
	move	$s2, $a1
	ld.w	$a1, $s0, 48
	ori	$a2, $zero, 1
	blt	$a1, $a2, .LBB2_5
# %bb.2:                                # %.lr.ph
	st.d	$a6, $sp, 0                     # 8-byte Folded Spill
	move	$s6, $a4
	ld.d	$s3, $s0, 296
	move	$s7, $zero
	addi.d	$s8, $s4, 104
	addi.d	$s5, $s4, 192
	.p2align	4, , 16
.LBB2_3:                                # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $fp, 0
	ld.w	$a1, $s5, 0
	ld.d	$a2, $s2, 0
	ld.d	$a4, $s8, 0
	mul.d	$a0, $a1, $a0
	bstrpick.d	$a0, $a0, 31, 0
	alsl.d	$a2, $a0, $a2, 3
	addi.d	$a3, $s8, -80
	move	$a0, $s0
	move	$a1, $s3
	jirl	$ra, $a4, 0
	addi.d	$s7, $s7, 1
	ld.w	$a0, $s0, 48
	addi.d	$s3, $s3, 96
	addi.d	$s8, $s8, 8
	addi.d	$s5, $s5, 4
	addi.d	$s2, $s2, 8
	blt	$s7, $a0, .LBB2_3
# %bb.4:                                # %._crit_edge.loopexit
	ld.w	$a0, $s0, 392
	move	$a4, $s6
	ld.d	$a6, $sp, 0                     # 8-byte Folded Reload
.LBB2_5:                                # %._crit_edge
	move	$a7, $zero
	st.w	$zero, $s4, 184
.LBB2_6:
	ld.w	$a1, $s4, 188
	sub.w	$a0, $a0, $a7
	sltu	$a2, $a0, $a1
	ld.wu	$a3, $s1, 0
	maskeqz	$a0, $a0, $a2
	masknez	$a1, $a1, $a2
	or	$a0, $a0, $a1
	sub.w	$a1, $a6, $a3
	ld.d	$a2, $s0, 600
	sltu	$a5, $a0, $a1
	maskeqz	$a0, $a0, $a5
	masknez	$a1, $a1, $a5
	ld.d	$a5, $a2, 8
	or	$s2, $a0, $a1
	addi.d	$a1, $s4, 24
	alsl.d	$a3, $a3, $a4, 3
	move	$a0, $s0
	move	$a2, $a7
	move	$a4, $s2
	jirl	$ra, $a5, 0
	ld.w	$a0, $s1, 0
	add.d	$a0, $a0, $s2
	st.w	$a0, $s1, 0
	ld.w	$a0, $s4, 188
	ld.w	$a1, $s4, 184
	ld.w	$a2, $s0, 392
	sub.d	$a0, $a0, $s2
	st.w	$a0, $s4, 188
	add.w	$a0, $a1, $s2
	st.w	$a0, $s4, 184
	blt	$a0, $a2, .LBB2_8
# %bb.7:
	ld.w	$a0, $fp, 0
	addi.d	$a0, $a0, 1
	st.w	$a0, $fp, 0
.LBB2_8:
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
	.size	sep_upsample, .Lfunc_end2-sep_upsample
                                        # -- End function
	.p2align	5                               # -- Begin function noop_upsample
	.type	noop_upsample,@function
noop_upsample:                          # @noop_upsample
# %bb.0:
	st.d	$zero, $a3, 0
	ret
.Lfunc_end3:
	.size	noop_upsample, .Lfunc_end3-noop_upsample
                                        # -- End function
	.p2align	5                               # -- Begin function fullsize_upsample
	.type	fullsize_upsample,@function
fullsize_upsample:                      # @fullsize_upsample
# %bb.0:
	st.d	$a2, $a3, 0
	ret
.Lfunc_end4:
	.size	fullsize_upsample, .Lfunc_end4-fullsize_upsample
                                        # -- End function
	.p2align	5                               # -- Begin function h2v1_fancy_upsample
	.type	h2v1_fancy_upsample,@function
h2v1_fancy_upsample:                    # @h2v1_fancy_upsample
# %bb.0:
	ld.w	$a4, $a0, 392
	ori	$a5, $zero, 1
	blt	$a4, $a5, .LBB5_16
# %bb.1:                                # %.lr.ph42
	move	$a4, $zero
	ld.d	$a3, $a3, 0
	ori	$a5, $zero, 16
	vrepli.b	$vr0, 0
	vrepli.h	$vr1, 3
	b	.LBB5_4
	.p2align	4, , 16
.LBB5_2:                                #   in Loop: Header=BB5_4 Depth=1
	move	$t3, $t0
	move	$t2, $t1
.LBB5_3:                                # %._crit_edge
                                        #   in Loop: Header=BB5_4 Depth=1
	ld.bu	$a7, $t3, 0
	ld.bu	$t0, $t3, -1
	alsl.d	$t1, $a7, $a7, 1
	add.d	$t0, $t0, $t1
	addi.d	$t0, $t0, 1
	srli.d	$t0, $t0, 2
	st.b	$t0, $t2, 0
	st.b	$a7, $a6, 3
	ld.w	$a6, $a0, 392
	addi.d	$a4, $a4, 1
	bge	$a4, $a6, .LBB5_16
.LBB5_4:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_9 Depth 2
                                        #     Child Loop BB5_14 Depth 2
	slli.d	$a6, $a4, 3
	ldx.d	$t2, $a2, $a6
	ldx.d	$a6, $a3, $a6
	ld.bu	$a7, $t2, 0
	st.b	$a7, $a6, 0
	ld.bu	$t0, $t2, 1
	alsl.d	$a7, $a7, $a7, 1
	add.d	$a7, $a7, $t0
	addi.d	$a7, $a7, 2
	srli.d	$a7, $a7, 2
	st.b	$a7, $a6, 1
	ld.w	$t3, $a1, 40
	addi.d	$t0, $t2, 1
	addi.w	$a7, $t3, -2
	addi.d	$t1, $a6, 2
	beqz	$a7, .LBB5_2
# %bb.5:                                # %.lr.ph.preheader
                                        #   in Loop: Header=BB5_4 Depth=1
	bltu	$a7, $a5, .LBB5_13
# %bb.6:                                # %vector.memcheck
                                        #   in Loop: Header=BB5_4 Depth=1
	addi.d	$t3, $t3, -3
	bstrpick.d	$t3, $t3, 31, 0
	add.d	$t4, $t2, $t3
	addi.d	$t4, $t4, 3
	bgeu	$t1, $t4, .LBB5_8
# %bb.7:                                # %vector.memcheck
                                        #   in Loop: Header=BB5_4 Depth=1
	alsl.d	$t3, $t3, $a6, 1
	addi.d	$t3, $t3, 4
	bltu	$t2, $t3, .LBB5_13
.LBB5_8:                                # %vector.ph
                                        #   in Loop: Header=BB5_4 Depth=1
	bstrpick.d	$t4, $a7, 31, 0
	bstrpick.d	$t3, $t4, 31, 4
	slli.d	$t5, $t3, 4
	slli.d	$t6, $t3, 5
	add.d	$t2, $t1, $t6
	sub.d	$a7, $a7, $t5
	add.d	$a6, $a6, $t6
	alsl.d	$t3, $t3, $t0, 4
	move	$t6, $t5
	.p2align	4, , 16
.LBB5_9:                                # %vector.body
                                        #   Parent Loop BB5_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr2, $t0, 0
	vld	$vr3, $t0, -1
	vilvh.b	$vr4, $vr0, $vr2
	vilvl.b	$vr2, $vr0, $vr2
	vilvh.b	$vr5, $vr0, $vr3
	vilvl.b	$vr3, $vr0, $vr3
	vmadd.h	$vr3, $vr2, $vr1
	vmadd.h	$vr5, $vr4, $vr1
	vaddi.hu	$vr5, $vr5, 1
	vld	$vr6, $t0, 1
	vaddi.hu	$vr3, $vr3, 1
	vsrli.h	$vr3, $vr3, 2
	vsrli.h	$vr5, $vr5, 2
	vilvl.b	$vr7, $vr0, $vr6
	vmadd.h	$vr7, $vr2, $vr1
	vilvh.b	$vr2, $vr0, $vr6
	vmadd.h	$vr2, $vr4, $vr1
	vaddi.hu	$vr2, $vr2, 2
	vaddi.hu	$vr4, $vr7, 2
	vsrli.h	$vr4, $vr4, 2
	vsrli.h	$vr2, $vr2, 2
	vilvl.h	$vr6, $vr2, $vr5
	vilvh.h	$vr2, $vr2, $vr5
	vilvl.h	$vr5, $vr4, $vr3
	vilvh.h	$vr3, $vr4, $vr3
	vpickev.b	$vr3, $vr3, $vr5
	vpickev.b	$vr2, $vr2, $vr6
	vst	$vr2, $t1, 16
	vst	$vr3, $t1, 0
	addi.d	$t1, $t1, 32
	addi.d	$t6, $t6, -16
	addi.d	$t0, $t0, 16
	bnez	$t6, .LBB5_9
# %bb.10:                               # %middle.block
                                        #   in Loop: Header=BB5_4 Depth=1
	bne	$t5, $t4, .LBB5_12
# %bb.11:                               #   in Loop: Header=BB5_4 Depth=1
	addi.d	$a6, $t2, -2
	b	.LBB5_3
.LBB5_12:                               #   in Loop: Header=BB5_4 Depth=1
	move	$t1, $t2
	move	$t0, $t3
	.p2align	4, , 16
.LBB5_13:                               # %.lr.ph.preheader56
                                        #   in Loop: Header=BB5_4 Depth=1
	move	$t2, $t1
	.p2align	4, , 16
.LBB5_14:                               # %.lr.ph
                                        #   Parent Loop BB5_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$t1, $t0, 0
	ld.bu	$t3, $t0, -1
	alsl.d	$t1, $t1, $t1, 1
	add.d	$t3, $t3, $t1
	addi.d	$t3, $t3, 1
	srli.d	$t3, $t3, 2
	st.b	$t3, $t2, 0
	ld.bu	$t3, $t0, 1
	addi.d	$t0, $t0, 1
	add.d	$t1, $t1, $t3
	addi.d	$t1, $t1, 2
	srli.d	$t1, $t1, 2
	st.b	$t1, $a6, 3
	addi.w	$a7, $a7, -1
	move	$a6, $t2
	addi.d	$t2, $t2, 2
	bnez	$a7, .LBB5_14
# %bb.15:                               # %._crit_edge.loopexit
                                        #   in Loop: Header=BB5_4 Depth=1
	addi.d	$a6, $t2, -2
	move	$t3, $t0
	b	.LBB5_3
.LBB5_16:                               # %._crit_edge43
	ret
.Lfunc_end5:
	.size	h2v1_fancy_upsample, .Lfunc_end5-h2v1_fancy_upsample
                                        # -- End function
	.p2align	5                               # -- Begin function h2v1_upsample
	.type	h2v1_upsample,@function
h2v1_upsample:                          # @h2v1_upsample
# %bb.0:
	ld.w	$a6, $a0, 392
	ori	$a1, $zero, 1
	blt	$a6, $a1, .LBB6_20
# %bb.1:                                # %.lr.ph22
	ld.d	$a1, $a3, 0
	move	$a3, $zero
	ori	$a4, $zero, 14
	ori	$a5, $zero, 30
	b	.LBB6_4
	.p2align	4, , 16
.LBB6_2:                                # %._crit_edge.loopexit
                                        #   in Loop: Header=BB6_4 Depth=1
	ld.w	$a6, $a0, 392
.LBB6_3:                                # %._crit_edge
                                        #   in Loop: Header=BB6_4 Depth=1
	addi.d	$a3, $a3, 1
	bge	$a3, $a6, .LBB6_20
.LBB6_4:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_16 Depth 2
                                        #     Child Loop BB6_13 Depth 2
                                        #     Child Loop BB6_9 Depth 2
	ld.wu	$t0, $a0, 128
	beqz	$t0, .LBB6_3
# %bb.5:                                # %iter.check
                                        #   in Loop: Header=BB6_4 Depth=1
	slli.d	$t1, $a3, 3
	ldx.d	$a7, $a1, $t1
	add.d	$a6, $a7, $t0
	ldx.d	$t0, $a2, $t1
	addi.d	$t1, $a7, 2
	sltu	$t2, $t1, $a6
	maskeqz	$t3, $a6, $t2
	masknez	$t2, $t1, $t2
	or	$t2, $t3, $t2
	nor	$t3, $a7, $zero
	add.d	$t2, $t2, $t3
	bltu	$t2, $a4, .LBB6_8
# %bb.6:                                # %vector.memcheck
                                        #   in Loop: Header=BB6_4 Depth=1
	srli.d	$t3, $t2, 1
	add.d	$t4, $t0, $t3
	addi.d	$t4, $t4, 1
	bgeu	$a7, $t4, .LBB6_10
# %bb.7:                                # %vector.memcheck
                                        #   in Loop: Header=BB6_4 Depth=1
	move	$t4, $t2
	bstrins.d	$t4, $zero, 0, 0
	add.d	$t1, $t1, $t4
	bgeu	$t0, $t1, .LBB6_10
.LBB6_8:                                #   in Loop: Header=BB6_4 Depth=1
	move	$t2, $t0
	move	$t3, $a7
	.p2align	4, , 16
.LBB6_9:                                # %.lr.ph
                                        #   Parent Loop BB6_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.b	$a7, $t2, 0
	addi.d	$t2, $t2, 1
	st.b	$a7, $t3, 0
	addi.d	$t0, $t3, 2
	st.b	$a7, $t3, 1
	move	$t3, $t0
	bltu	$t0, $a6, .LBB6_9
	b	.LBB6_2
.LBB6_10:                               # %vector.main.loop.iter.check
                                        #   in Loop: Header=BB6_4 Depth=1
	addi.d	$t1, $t3, 1
	bgeu	$t2, $a5, .LBB6_15
# %bb.11:                               #   in Loop: Header=BB6_4 Depth=1
	move	$t4, $zero
.LBB6_12:                               # %vec.epilog.ph
                                        #   in Loop: Header=BB6_4 Depth=1
	move	$t5, $t1
	bstrins.d	$t5, $zero, 2, 0
	add.d	$t2, $t0, $t5
	alsl.d	$t3, $t5, $a7, 1
	alsl.d	$a7, $t4, $a7, 1
	sub.d	$t6, $t4, $t5
	add.d	$t0, $t0, $t4
	.p2align	4, , 16
.LBB6_13:                               # %vec.epilog.vector.body
                                        #   Parent Loop BB6_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$t4, $t0, 0
	vinsgr2vr.d	$vr0, $t4, 0
	vilvl.b	$vr0, $vr0, $vr0
	vst	$vr0, $a7, 0
	addi.d	$a7, $a7, 16
	addi.d	$t6, $t6, 8
	addi.d	$t0, $t0, 8
	bnez	$t6, .LBB6_13
# %bb.14:                               # %vec.epilog.middle.block
                                        #   in Loop: Header=BB6_4 Depth=1
	bne	$t1, $t5, .LBB6_9
	b	.LBB6_2
.LBB6_15:                               # %vector.ph
                                        #   in Loop: Header=BB6_4 Depth=1
	move	$t4, $t1
	bstrins.d	$t4, $zero, 3, 0
	move	$t2, $t0
	move	$t3, $t4
	move	$t5, $a7
	.p2align	4, , 16
.LBB6_16:                               # %vector.body
                                        #   Parent Loop BB6_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $t2, 0
	vilvl.b	$vr1, $vr0, $vr0
	vilvh.b	$vr0, $vr0, $vr0
	vst	$vr0, $t5, 16
	vst	$vr1, $t5, 0
	addi.d	$t5, $t5, 32
	addi.d	$t3, $t3, -16
	addi.d	$t2, $t2, 16
	bnez	$t3, .LBB6_16
# %bb.17:                               # %middle.block
                                        #   in Loop: Header=BB6_4 Depth=1
	beq	$t1, $t4, .LBB6_2
# %bb.18:                               # %vec.epilog.iter.check
                                        #   in Loop: Header=BB6_4 Depth=1
	andi	$t2, $t1, 8
	bnez	$t2, .LBB6_12
# %bb.19:                               #   in Loop: Header=BB6_4 Depth=1
	add.d	$t2, $t0, $t4
	alsl.d	$t3, $t4, $a7, 1
	b	.LBB6_9
.LBB6_20:                               # %._crit_edge23
	ret
.Lfunc_end6:
	.size	h2v1_upsample, .Lfunc_end6-h2v1_upsample
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function h2v2_fancy_upsample
.LCPI7_0:
	.word	3                               # 0x3
	.word	7                               # 0x7
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.text
	.p2align	5
	.type	h2v2_fancy_upsample,@function
h2v2_fancy_upsample:                    # @h2v2_fancy_upsample
# %bb.0:
	ld.w	$a4, $a0, 392
	ori	$a5, $zero, 1
	blt	$a4, $a5, .LBB7_28
# %bb.1:                                # %.preheader.lr.ph
	addi.d	$sp, $sp, -48
	st.d	$fp, $sp, 40                    # 8-byte Folded Spill
	st.d	$s0, $sp, 32                    # 8-byte Folded Spill
	st.d	$s1, $sp, 24                    # 8-byte Folded Spill
	st.d	$s2, $sp, 16                    # 8-byte Folded Spill
	st.d	$s3, $sp, 8                     # 8-byte Folded Spill
	st.d	$s4, $sp, 0                     # 8-byte Folded Spill
	ld.d	$a3, $a3, 0
	move	$a4, $zero
	move	$a5, $zero
	addi.d	$a6, $a3, 8
	ori	$a7, $zero, 16
	vrepli.b	$vr0, 0
	vrepli.w	$vr1, 3
	b	.LBB7_4
	.p2align	4, , 16
.LBB7_2:                                #   in Loop: Header=BB7_4 Depth=1
	move	$t3, $t8
.LBB7_3:                                # %._crit_edge.1
                                        #   in Loop: Header=BB7_4 Depth=1
	alsl.d	$t0, $fp, $fp, 1
	add.d	$t0, $s2, $t0
	addi.d	$t0, $t0, 8
	srli.d	$t0, $t0, 4
	st.b	$t0, $t3, 0
	slli.d	$t0, $fp, 2
	addi.d	$t0, $t0, 7
	srli.d	$t0, $t0, 4
	st.b	$t0, $t1, 3
	ld.w	$t0, $a0, 392
	addi.w	$a5, $a5, 2
	addi.d	$a4, $a4, 1
	bge	$a5, $t0, .LBB7_27
.LBB7_4:                                # %.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_20 Depth 2
                                        #     Child Loop BB7_8 Depth 2
                                        #     Child Loop BB7_25 Depth 2
                                        #     Child Loop BB7_15 Depth 2
	alsl.d	$t1, $a4, $a2, 3
	slli.d	$t0, $a4, 3
	ldx.d	$t6, $a2, $t0
	ld.d	$t5, $t1, -8
	slli.d	$t2, $a5, 3
	ldx.d	$t3, $a3, $t2
	ld.bu	$t0, $t6, 0
	ld.bu	$t4, $t5, 0
	ld.bu	$t7, $t6, 1
	ld.bu	$t8, $t5, 1
	alsl.d	$t0, $t0, $t0, 1
	add.d	$s4, $t0, $t4
	alsl.d	$t0, $t7, $t7, 1
	add.d	$s1, $t0, $t8
	slli.d	$t0, $s4, 2
	addi.d	$t0, $t0, 8
	srli.d	$t0, $t0, 4
	st.b	$t0, $t3, 0
	alsl.d	$t0, $s4, $s4, 1
	add.d	$t0, $t0, $s1
	addi.d	$t0, $t0, 7
	srli.d	$t0, $t0, 4
	st.b	$t0, $t3, 1
	ld.w	$t7, $a1, 40
	addi.w	$t4, $t7, -2
	addi.d	$s0, $t3, 2
	pcalau12i	$t0, %pc_hi20(.LCPI7_0)
	beqz	$t4, .LBB7_10
# %bb.5:                                # %.lr.ph.preheader
                                        #   in Loop: Header=BB7_4 Depth=1
	addi.d	$fp, $t5, 2
	addi.d	$t8, $t6, 2
	bgeu	$t4, $a7, .LBB7_17
.LBB7_6:                                #   in Loop: Header=BB7_4 Depth=1
	move	$t5, $s0
	move	$t6, $fp
	move	$t7, $t8
.LBB7_7:                                # %.lr.ph.preheader142
                                        #   in Loop: Header=BB7_4 Depth=1
	move	$t8, $s4
	.p2align	4, , 16
.LBB7_8:                                # %.lr.ph
                                        #   Parent Loop BB7_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$fp, $t7, 0
	move	$s4, $s1
	ld.bu	$s0, $t6, 0
	addi.d	$t7, $t7, 1
	alsl.d	$fp, $fp, $fp, 1
	addi.d	$t6, $t6, 1
	add.d	$s1, $fp, $s0
	alsl.d	$fp, $s4, $s4, 1
	add.d	$t8, $t8, $fp
	addi.d	$t8, $t8, 8
	srli.d	$t8, $t8, 4
	st.b	$t8, $t5, 0
	add.d	$t8, $fp, $s1
	addi.d	$t8, $t8, 7
	srli.d	$t8, $t8, 4
	st.b	$t8, $t3, 3
	addi.w	$t4, $t4, -1
	move	$t3, $t5
	addi.d	$t5, $t5, 2
	move	$t8, $s4
	bnez	$t4, .LBB7_8
.LBB7_9:                                # %._crit_edge.loopexit
                                        #   in Loop: Header=BB7_4 Depth=1
	addi.d	$t3, $t5, -2
	b	.LBB7_11
	.p2align	4, , 16
.LBB7_10:                               #   in Loop: Header=BB7_4 Depth=1
	move	$t5, $s0
.LBB7_11:                               # %._crit_edge
                                        #   in Loop: Header=BB7_4 Depth=1
	alsl.d	$t4, $s1, $s1, 1
	add.d	$t4, $s4, $t4
	addi.d	$t4, $t4, 8
	srli.d	$t4, $t4, 4
	st.b	$t4, $t5, 0
	slli.d	$t4, $s1, 2
	addi.d	$t4, $t4, 7
	srli.d	$t4, $t4, 4
	st.b	$t4, $t3, 3
	ld.d	$t4, $t1, 0
	ld.d	$t3, $t1, 8
	ldx.d	$t1, $a6, $t2
	ld.bu	$t2, $t4, 0
	ld.bu	$t5, $t3, 0
	ld.bu	$t6, $t4, 1
	ld.bu	$t7, $t3, 1
	alsl.d	$t2, $t2, $t2, 1
	add.d	$s2, $t2, $t5
	alsl.d	$t2, $t6, $t6, 1
	add.d	$fp, $t2, $t7
	slli.d	$t2, $s2, 2
	addi.d	$t2, $t2, 8
	srli.d	$t2, $t2, 4
	st.b	$t2, $t1, 0
	alsl.d	$t2, $s2, $s2, 1
	add.d	$t2, $t2, $fp
	addi.d	$t2, $t2, 7
	srli.d	$t2, $t2, 4
	st.b	$t2, $t1, 1
	ld.w	$t5, $a1, 40
	addi.w	$t2, $t5, -2
	addi.d	$t8, $t1, 2
	beqz	$t2, .LBB7_2
# %bb.12:                               # %.lr.ph.preheader.1
                                        #   in Loop: Header=BB7_4 Depth=1
	addi.d	$t7, $t3, 2
	addi.d	$t6, $t4, 2
	bgeu	$t2, $a7, .LBB7_22
.LBB7_13:                               #   in Loop: Header=BB7_4 Depth=1
	move	$t3, $t8
	move	$t4, $t7
	move	$t5, $t6
.LBB7_14:                               # %.lr.ph.1.preheader
                                        #   in Loop: Header=BB7_4 Depth=1
	move	$t0, $s2
	.p2align	4, , 16
.LBB7_15:                               # %.lr.ph.1
                                        #   Parent Loop BB7_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$t6, $t5, 0
	move	$s2, $fp
	ld.bu	$t7, $t4, 0
	addi.d	$t5, $t5, 1
	alsl.d	$t6, $t6, $t6, 1
	addi.d	$t4, $t4, 1
	add.d	$fp, $t6, $t7
	alsl.d	$t6, $s2, $s2, 1
	add.d	$t0, $t0, $t6
	addi.d	$t0, $t0, 8
	srli.d	$t0, $t0, 4
	st.b	$t0, $t3, 0
	add.d	$t0, $t6, $fp
	addi.d	$t0, $t0, 7
	srli.d	$t0, $t0, 4
	st.b	$t0, $t1, 3
	addi.w	$t2, $t2, -1
	move	$t1, $t3
	addi.d	$t3, $t3, 2
	move	$t0, $s2
	bnez	$t2, .LBB7_15
.LBB7_16:                               # %._crit_edge.1.loopexit
                                        #   in Loop: Header=BB7_4 Depth=1
	addi.d	$t1, $t3, -2
	b	.LBB7_3
	.p2align	4, , 16
.LBB7_17:                               # %vector.memcheck95
                                        #   in Loop: Header=BB7_4 Depth=1
	addi.d	$t7, $t7, -3
	bstrpick.d	$s2, $t7, 31, 0
	alsl.d	$t7, $s2, $t3, 1
	addi.d	$t7, $t7, 4
	add.d	$t6, $t6, $s2
	addi.d	$t6, $t6, 3
	sltu	$t6, $s0, $t6
	sltu	$s3, $t8, $t7
	and	$t6, $t6, $s3
	bnez	$t6, .LBB7_6
# %bb.18:                               # %vector.memcheck95
                                        #   in Loop: Header=BB7_4 Depth=1
	add.d	$t5, $t5, $s2
	addi.d	$t5, $t5, 3
	sltu	$t5, $s0, $t5
	sltu	$t6, $fp, $t7
	and	$t5, $t5, $t6
	bnez	$t5, .LBB7_6
# %bb.19:                               # %vector.ph111
                                        #   in Loop: Header=BB7_4 Depth=1
	bstrpick.d	$s2, $t4, 31, 0
	bstrpick.d	$t7, $s2, 31, 4
	slli.d	$s3, $t7, 4
	slli.d	$t6, $t7, 5
	add.d	$t5, $s0, $t6
	sub.d	$t4, $t4, $s3
	add.d	$t3, $t3, $t6
	alsl.d	$t6, $t7, $fp, 4
	alsl.d	$t7, $t7, $t8, 4
	vinsgr2vr.w	$vr2, $s4, 0
	vreplvei.w	$vr3, $vr2, 0
	vinsgr2vr.w	$vr2, $s1, 0
	vreplvei.w	$vr2, $vr2, 0
	move	$s1, $s3
	.p2align	4, , 16
.LBB7_20:                               # %vector.body115
                                        #   Parent Loop BB7_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr4, $t8, 0
	vilvh.b	$vr5, $vr0, $vr4
	vilvl.h	$vr6, $vr0, $vr5
	vilvh.h	$vr5, $vr0, $vr5
	vilvl.b	$vr4, $vr0, $vr4
	vld	$vr7, $fp, 0
	vilvh.h	$vr8, $vr0, $vr4
	vilvl.h	$vr4, $vr0, $vr4
	vld	$vr9, $t0, %pc_lo12(.LCPI7_0)
	vilvh.b	$vr10, $vr0, $vr7
	vilvl.h	$vr11, $vr0, $vr10
	vbsrl.v	$vr12, $vr2, 12
	vshuf.w	$vr9, $vr2, $vr3
	vilvh.h	$vr2, $vr0, $vr10
	vilvl.b	$vr3, $vr0, $vr7
	vilvh.h	$vr7, $vr0, $vr3
	vilvl.h	$vr10, $vr0, $vr3
	vmadd.w	$vr10, $vr4, $vr1
	vmadd.w	$vr7, $vr8, $vr1
	vmadd.w	$vr2, $vr5, $vr1
	vmadd.w	$vr11, $vr6, $vr1
	vbsrl.v	$vr3, $vr11, 12
	vbsll.v	$vr4, $vr2, 4
	vor.v	$vr3, $vr4, $vr3
	vbsrl.v	$vr4, $vr7, 12
	vbsll.v	$vr5, $vr11, 4
	vor.v	$vr4, $vr5, $vr4
	vbsrl.v	$vr5, $vr10, 12
	vbsll.v	$vr6, $vr7, 4
	vor.v	$vr5, $vr6, $vr5
	vbsll.v	$vr6, $vr10, 4
	vor.v	$vr6, $vr6, $vr12
	vpackev.d	$vr8, $vr10, $vr9
	vbsrl.v	$vr9, $vr11, 8
	vbsll.v	$vr12, $vr2, 8
	vor.v	$vr9, $vr12, $vr9
	vbsrl.v	$vr12, $vr7, 8
	vbsll.v	$vr13, $vr11, 8
	vor.v	$vr12, $vr13, $vr12
	vbsrl.v	$vr13, $vr10, 8
	vbsll.v	$vr14, $vr7, 8
	vor.v	$vr13, $vr14, $vr13
	vmadd.w	$vr13, $vr5, $vr1
	vmadd.w	$vr12, $vr4, $vr1
	vmadd.w	$vr9, $vr3, $vr1
	vmadd.w	$vr8, $vr6, $vr1
	vaddi.wu	$vr9, $vr9, 8
	vaddi.wu	$vr12, $vr12, 8
	vaddi.wu	$vr13, $vr13, 8
	vaddi.wu	$vr8, $vr8, 8
	vsrli.w	$vr13, $vr13, 4
	vsrli.w	$vr12, $vr12, 4
	vsrli.w	$vr9, $vr9, 4
	vsrli.w	$vr8, $vr8, 4
	vmadd.w	$vr10, $vr6, $vr1
	vmadd.w	$vr7, $vr5, $vr1
	vmadd.w	$vr11, $vr4, $vr1
	vori.b	$vr4, $vr2, 0
	vmadd.w	$vr4, $vr3, $vr1
	vaddi.wu	$vr4, $vr4, 7
	vaddi.wu	$vr5, $vr11, 7
	vaddi.wu	$vr6, $vr7, 7
	vaddi.wu	$vr7, $vr10, 7
	vsrli.w	$vr7, $vr7, 4
	vsrli.w	$vr6, $vr6, 4
	vsrli.w	$vr5, $vr5, 4
	vsrli.w	$vr4, $vr4, 4
	vilvl.w	$vr10, $vr4, $vr9
	vilvh.w	$vr4, $vr4, $vr9
	vilvl.w	$vr9, $vr5, $vr12
	vilvh.w	$vr5, $vr5, $vr12
	vilvl.w	$vr11, $vr6, $vr13
	vilvh.w	$vr6, $vr6, $vr13
	vilvl.w	$vr12, $vr7, $vr8
	vilvh.w	$vr7, $vr7, $vr8
	vpickev.h	$vr7, $vr7, $vr12
	vpickev.h	$vr6, $vr6, $vr11
	vpickev.b	$vr6, $vr6, $vr7
	vpickev.h	$vr5, $vr5, $vr9
	vpickev.h	$vr4, $vr4, $vr10
	vpickev.b	$vr4, $vr4, $vr5
	vst	$vr4, $s0, 16
	vst	$vr6, $s0, 0
	addi.d	$s0, $s0, 32
	addi.d	$s1, $s1, -16
	addi.d	$t8, $t8, 16
	addi.d	$fp, $fp, 16
	bnez	$s1, .LBB7_20
# %bb.21:                               # %middle.block129
                                        #   in Loop: Header=BB7_4 Depth=1
	vpickve2gr.w	$s1, $vr2, 3
	vpickve2gr.w	$s4, $vr2, 2
	bne	$s3, $s2, .LBB7_7
	b	.LBB7_9
	.p2align	4, , 16
.LBB7_22:                               # %vector.memcheck
                                        #   in Loop: Header=BB7_4 Depth=1
	addi.d	$t5, $t5, -3
	bstrpick.d	$s0, $t5, 31, 0
	alsl.d	$t5, $s0, $t1, 1
	addi.d	$t5, $t5, 4
	add.d	$t4, $t4, $s0
	addi.d	$t4, $t4, 3
	sltu	$t4, $t8, $t4
	sltu	$s1, $t6, $t5
	and	$t4, $t4, $s1
	bnez	$t4, .LBB7_13
# %bb.23:                               # %vector.memcheck
                                        #   in Loop: Header=BB7_4 Depth=1
	add.d	$t3, $t3, $s0
	addi.d	$t3, $t3, 3
	sltu	$t3, $t8, $t3
	sltu	$t4, $t7, $t5
	and	$t3, $t3, $t4
	bnez	$t3, .LBB7_13
# %bb.24:                               # %vector.ph
                                        #   in Loop: Header=BB7_4 Depth=1
	bstrpick.d	$s0, $t2, 31, 0
	bstrpick.d	$t5, $s0, 31, 4
	slli.d	$s1, $t5, 4
	slli.d	$t4, $t5, 5
	add.d	$t3, $t8, $t4
	sub.d	$t2, $t2, $s1
	add.d	$t1, $t1, $t4
	alsl.d	$t4, $t5, $t7, 4
	alsl.d	$t5, $t5, $t6, 4
	vinsgr2vr.w	$vr2, $s2, 0
	vreplvei.w	$vr3, $vr2, 0
	vinsgr2vr.w	$vr2, $fp, 0
	vreplvei.w	$vr2, $vr2, 0
	move	$fp, $s1
	.p2align	4, , 16
.LBB7_25:                               # %vector.body
                                        #   Parent Loop BB7_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr4, $t6, 0
	vilvh.b	$vr5, $vr0, $vr4
	vilvl.h	$vr6, $vr0, $vr5
	vilvh.h	$vr5, $vr0, $vr5
	vilvl.b	$vr4, $vr0, $vr4
	vld	$vr7, $t7, 0
	vilvh.h	$vr8, $vr0, $vr4
	vilvl.h	$vr4, $vr0, $vr4
	vld	$vr9, $t0, %pc_lo12(.LCPI7_0)
	vilvh.b	$vr10, $vr0, $vr7
	vilvl.h	$vr11, $vr0, $vr10
	vbsrl.v	$vr12, $vr2, 12
	vshuf.w	$vr9, $vr2, $vr3
	vilvh.h	$vr2, $vr0, $vr10
	vilvl.b	$vr3, $vr0, $vr7
	vilvh.h	$vr7, $vr0, $vr3
	vilvl.h	$vr10, $vr0, $vr3
	vmadd.w	$vr10, $vr4, $vr1
	vmadd.w	$vr7, $vr8, $vr1
	vmadd.w	$vr2, $vr5, $vr1
	vmadd.w	$vr11, $vr6, $vr1
	vbsrl.v	$vr3, $vr11, 12
	vbsll.v	$vr4, $vr2, 4
	vor.v	$vr3, $vr4, $vr3
	vbsrl.v	$vr4, $vr7, 12
	vbsll.v	$vr5, $vr11, 4
	vor.v	$vr4, $vr5, $vr4
	vbsrl.v	$vr5, $vr10, 12
	vbsll.v	$vr6, $vr7, 4
	vor.v	$vr5, $vr6, $vr5
	vbsll.v	$vr6, $vr10, 4
	vor.v	$vr6, $vr6, $vr12
	vpackev.d	$vr8, $vr10, $vr9
	vbsrl.v	$vr9, $vr11, 8
	vbsll.v	$vr12, $vr2, 8
	vor.v	$vr9, $vr12, $vr9
	vbsrl.v	$vr12, $vr7, 8
	vbsll.v	$vr13, $vr11, 8
	vor.v	$vr12, $vr13, $vr12
	vbsrl.v	$vr13, $vr10, 8
	vbsll.v	$vr14, $vr7, 8
	vor.v	$vr13, $vr14, $vr13
	vmadd.w	$vr13, $vr5, $vr1
	vmadd.w	$vr12, $vr4, $vr1
	vmadd.w	$vr9, $vr3, $vr1
	vmadd.w	$vr8, $vr6, $vr1
	vaddi.wu	$vr9, $vr9, 8
	vaddi.wu	$vr12, $vr12, 8
	vaddi.wu	$vr13, $vr13, 8
	vaddi.wu	$vr8, $vr8, 8
	vsrli.w	$vr13, $vr13, 4
	vsrli.w	$vr12, $vr12, 4
	vsrli.w	$vr9, $vr9, 4
	vsrli.w	$vr8, $vr8, 4
	vmadd.w	$vr10, $vr6, $vr1
	vmadd.w	$vr7, $vr5, $vr1
	vmadd.w	$vr11, $vr4, $vr1
	vori.b	$vr4, $vr2, 0
	vmadd.w	$vr4, $vr3, $vr1
	vaddi.wu	$vr4, $vr4, 7
	vaddi.wu	$vr5, $vr11, 7
	vaddi.wu	$vr6, $vr7, 7
	vaddi.wu	$vr7, $vr10, 7
	vsrli.w	$vr7, $vr7, 4
	vsrli.w	$vr6, $vr6, 4
	vsrli.w	$vr5, $vr5, 4
	vsrli.w	$vr4, $vr4, 4
	vilvl.w	$vr10, $vr4, $vr9
	vilvh.w	$vr4, $vr4, $vr9
	vilvl.w	$vr9, $vr5, $vr12
	vilvh.w	$vr5, $vr5, $vr12
	vilvl.w	$vr11, $vr6, $vr13
	vilvh.w	$vr6, $vr6, $vr13
	vilvl.w	$vr12, $vr7, $vr8
	vilvh.w	$vr7, $vr7, $vr8
	vpickev.h	$vr7, $vr7, $vr12
	vpickev.h	$vr6, $vr6, $vr11
	vpickev.b	$vr6, $vr6, $vr7
	vpickev.h	$vr5, $vr5, $vr9
	vpickev.h	$vr4, $vr4, $vr10
	vpickev.b	$vr4, $vr4, $vr5
	vst	$vr4, $t8, 16
	vst	$vr6, $t8, 0
	addi.d	$t8, $t8, 32
	addi.d	$fp, $fp, -16
	addi.d	$t6, $t6, 16
	addi.d	$t7, $t7, 16
	bnez	$fp, .LBB7_25
# %bb.26:                               # %middle.block
                                        #   in Loop: Header=BB7_4 Depth=1
	vpickve2gr.w	$fp, $vr2, 3
	vpickve2gr.w	$s2, $vr2, 2
	bne	$s1, $s0, .LBB7_14
	b	.LBB7_16
.LBB7_27:
	ld.d	$s4, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
.LBB7_28:                               # %._crit_edge68
	ret
.Lfunc_end7:
	.size	h2v2_fancy_upsample, .Lfunc_end7-h2v2_fancy_upsample
                                        # -- End function
	.p2align	5                               # -- Begin function h2v2_upsample
	.type	h2v2_upsample,@function
h2v2_upsample:                          # @h2v2_upsample
# %bb.0:
	addi.d	$sp, $sp, -80
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
	st.d	$s1, $sp, 48                    # 8-byte Folded Spill
	st.d	$s2, $sp, 40                    # 8-byte Folded Spill
	st.d	$s3, $sp, 32                    # 8-byte Folded Spill
	st.d	$s4, $sp, 24                    # 8-byte Folded Spill
	st.d	$s5, $sp, 16                    # 8-byte Folded Spill
	st.d	$s6, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.w	$a0, $a0, 392
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB8_21
# %bb.1:                                # %.lr.ph30
	move	$s0, $a2
	ld.d	$s1, $a3, 0
	move	$s3, $zero
	move	$s2, $zero
	move	$s4, $zero
	ori	$s5, $zero, 14
	ori	$s6, $zero, 30
	b	.LBB8_4
	.p2align	4, , 16
.LBB8_2:                                #   in Loop: Header=BB8_4 Depth=1
	move	$a5, $zero
.LBB8_3:                                # %._crit_edge
                                        #   in Loop: Header=BB8_4 Depth=1
	ori	$a3, $s4, 1
	ori	$a4, $zero, 1
	move	$a0, $s1
	move	$a1, $s2
	move	$a2, $s1
	pcaddu18i	$ra, %call36(jcopy_sample_rows)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 392
	addi.d	$s3, $s3, 1
	addi.d	$s2, $s2, 2
	addi.w	$a1, $s2, 0
	addi.w	$s4, $s4, 2
	bge	$a1, $a0, .LBB8_21
.LBB8_4:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_17 Depth 2
                                        #     Child Loop BB8_14 Depth 2
                                        #     Child Loop BB8_9 Depth 2
	ld.wu	$a0, $fp, 128
	beqz	$a0, .LBB8_2
# %bb.5:                                # %iter.check
                                        #   in Loop: Header=BB8_4 Depth=1
	slli.d	$a1, $s2, 3
	ldx.d	$a1, $s1, $a1
	add.d	$a0, $a1, $a0
	slli.d	$a2, $s3, 3
	ldx.d	$a2, $s0, $a2
	addi.d	$a3, $a1, 2
	sltu	$a4, $a3, $a0
	maskeqz	$a5, $a0, $a4
	masknez	$a4, $a3, $a4
	or	$a4, $a5, $a4
	nor	$a5, $a1, $zero
	add.d	$a4, $a4, $a5
	bltu	$a4, $s5, .LBB8_8
# %bb.6:                                # %vector.memcheck
                                        #   in Loop: Header=BB8_4 Depth=1
	srli.d	$a5, $a4, 1
	add.d	$a6, $a2, $a5
	addi.d	$a6, $a6, 1
	bgeu	$a1, $a6, .LBB8_11
# %bb.7:                                # %vector.memcheck
                                        #   in Loop: Header=BB8_4 Depth=1
	move	$a6, $a4
	bstrins.d	$a6, $zero, 0, 0
	add.d	$a3, $a3, $a6
	bgeu	$a2, $a3, .LBB8_11
.LBB8_8:                                #   in Loop: Header=BB8_4 Depth=1
	move	$a4, $a2
	move	$a5, $a1
	.p2align	4, , 16
.LBB8_9:                                # %.lr.ph
                                        #   Parent Loop BB8_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.b	$a1, $a4, 0
	addi.d	$a4, $a4, 1
	st.b	$a1, $a5, 0
	addi.d	$a2, $a5, 2
	st.b	$a1, $a5, 1
	move	$a5, $a2
	bltu	$a2, $a0, .LBB8_9
.LBB8_10:                               # %._crit_edge.loopexit
                                        #   in Loop: Header=BB8_4 Depth=1
	ld.w	$a5, $fp, 128
	b	.LBB8_3
.LBB8_11:                               # %vector.main.loop.iter.check
                                        #   in Loop: Header=BB8_4 Depth=1
	addi.d	$a3, $a5, 1
	bgeu	$a4, $s6, .LBB8_16
# %bb.12:                               #   in Loop: Header=BB8_4 Depth=1
	move	$a6, $zero
.LBB8_13:                               # %vec.epilog.ph
                                        #   in Loop: Header=BB8_4 Depth=1
	move	$a7, $a3
	bstrins.d	$a7, $zero, 2, 0
	add.d	$a4, $a2, $a7
	alsl.d	$a5, $a7, $a1, 1
	alsl.d	$a1, $a6, $a1, 1
	sub.d	$t0, $a6, $a7
	add.d	$a2, $a2, $a6
	.p2align	4, , 16
.LBB8_14:                               # %vec.epilog.vector.body
                                        #   Parent Loop BB8_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a6, $a2, 0
	vinsgr2vr.d	$vr0, $a6, 0
	vilvl.b	$vr0, $vr0, $vr0
	vst	$vr0, $a1, 0
	addi.d	$a1, $a1, 16
	addi.d	$t0, $t0, 8
	addi.d	$a2, $a2, 8
	bnez	$t0, .LBB8_14
# %bb.15:                               # %vec.epilog.middle.block
                                        #   in Loop: Header=BB8_4 Depth=1
	bne	$a3, $a7, .LBB8_9
	b	.LBB8_10
.LBB8_16:                               # %vector.ph
                                        #   in Loop: Header=BB8_4 Depth=1
	move	$a6, $a3
	bstrins.d	$a6, $zero, 3, 0
	move	$a4, $a2
	move	$a5, $a6
	move	$a7, $a1
	.p2align	4, , 16
.LBB8_17:                               # %vector.body
                                        #   Parent Loop BB8_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $a4, 0
	vilvl.b	$vr1, $vr0, $vr0
	vilvh.b	$vr0, $vr0, $vr0
	vst	$vr0, $a7, 16
	vst	$vr1, $a7, 0
	addi.d	$a7, $a7, 32
	addi.d	$a5, $a5, -16
	addi.d	$a4, $a4, 16
	bnez	$a5, .LBB8_17
# %bb.18:                               # %middle.block
                                        #   in Loop: Header=BB8_4 Depth=1
	beq	$a3, $a6, .LBB8_10
# %bb.19:                               # %vec.epilog.iter.check
                                        #   in Loop: Header=BB8_4 Depth=1
	andi	$a4, $a3, 8
	bnez	$a4, .LBB8_13
# %bb.20:                               #   in Loop: Header=BB8_4 Depth=1
	add.d	$a4, $a2, $a6
	alsl.d	$a5, $a6, $a1, 1
	b	.LBB8_9
.LBB8_21:                               # %._crit_edge31
	ld.d	$s6, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s5, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.Lfunc_end8:
	.size	h2v2_upsample, .Lfunc_end8-h2v2_upsample
                                        # -- End function
	.p2align	5                               # -- Begin function int_upsample
	.type	int_upsample,@function
int_upsample:                           # @int_upsample
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
	move	$fp, $a0
	ld.w	$a0, $a0, 392
	ori	$a4, $zero, 1
	st.d	$a2, $sp, 8                     # 8-byte Folded Spill
	blt	$a0, $a4, .LBB9_16
# %bb.1:                                # %.lr.ph
	ld.d	$a2, $fp, 592
	ld.w	$a1, $a1, 4
	add.d	$a1, $a2, $a1
	ld.b	$a2, $a1, 232
	ld.b	$a1, $a1, 242
	ld.d	$a3, $a3, 0
	st.d	$a3, $sp, 16                    # 8-byte Folded Spill
	andi	$s3, $a2, 255
	andi	$s6, $a1, 255
	addi.d	$a1, $s6, -1
	st.d	$a1, $sp, 0                     # 8-byte Folded Spill
	beqz	$s3, .LBB9_9
# %bb.2:                                # %.lr.ph.split.us.preheader
	move	$s7, $zero
	move	$s4, $zero
	move	$s8, $zero
	addi.d	$a0, $s3, -1
	bstrpick.d	$s1, $a0, 31, 0
	b	.LBB9_4
	.p2align	4, , 16
.LBB9_3:                                #   in Loop: Header=BB9_4 Depth=1
	ld.w	$a0, $fp, 392
	addi.d	$s7, $s7, 1
	add.d	$s4, $s4, $s6
	addi.w	$a1, $s4, 0
	add.d	$s8, $s8, $s6
	bge	$a1, $a0, .LBB9_16
.LBB9_4:                                # %.lr.ph.split.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_6 Depth 2
	ld.wu	$a0, $fp, 128
	beqz	$a0, .LBB9_7
# %bb.5:                                # %.lr.ph.us.us.preheader
                                        #   in Loop: Header=BB9_4 Depth=1
	slli.d	$a1, $s4, 3
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	ldx.d	$s5, $a2, $a1
	slli.d	$a1, $s7, 3
	ld.d	$a2, $sp, 8                     # 8-byte Folded Reload
	ldx.d	$s2, $a2, $a1
	add.d	$s0, $s5, $a0
	.p2align	4, , 16
.LBB9_6:                                # %.lr.ph.us.us
                                        #   Parent Loop BB9_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.b	$a1, $s2, 0
	move	$a0, $s5
	move	$a2, $s3
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	add.d	$a0, $s5, $s1
	addi.d	$s5, $a0, 1
	addi.d	$s2, $s2, 1
	bltu	$s5, $s0, .LBB9_6
.LBB9_7:                                # %._crit_edge.split.us.us
                                        #   in Loop: Header=BB9_4 Depth=1
	ori	$a0, $zero, 2
	bltu	$s6, $a0, .LBB9_3
# %bb.8:                                #   in Loop: Header=BB9_4 Depth=1
	ld.w	$a5, $fp, 128
	addi.w	$a3, $s8, 1
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	move	$a1, $s4
	move	$a2, $a0
	ld.d	$a4, $sp, 0                     # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(jcopy_sample_rows)
	jirl	$ra, $ra, 0
	b	.LBB9_3
.LBB9_9:                                # %.lr.ph.split
	ori	$a1, $zero, 2
	bltu	$s6, $a1, .LBB9_13
# %bb.10:                               # %.lr.ph.split.split.us.preheader
	move	$s2, $zero
	.p2align	4, , 16
.LBB9_11:                               # %.lr.ph.split.split.us
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $fp, 128
	bnez	$a0, .LBB9_17
# %bb.12:                               #   in Loop: Header=BB9_11 Depth=1
	addi.w	$a3, $s2, 1
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	move	$a1, $s2
	move	$a2, $a0
	ld.d	$a4, $sp, 0                     # 8-byte Folded Reload
	move	$a5, $zero
	pcaddu18i	$ra, %call36(jcopy_sample_rows)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 392
	add.w	$s2, $s2, $s6
	blt	$s2, $a0, .LBB9_11
	b	.LBB9_16
.LBB9_13:                               # %.lr.ph.split.split
	ld.w	$a1, $fp, 128
	move	$a2, $zero
	.p2align	4, , 16
.LBB9_14:                               # =>This Inner Loop Header: Depth=1
	bnez	$a1, .LBB9_17
# %bb.15:                               #   in Loop: Header=BB9_14 Depth=1
	add.w	$a2, $a2, $s6
	blt	$a2, $a0, .LBB9_14
.LBB9_16:                               # %._crit_edge44
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
	.p2align	4, , 16
.LBB9_17:                               # %.loopexit
                                        # =>This Inner Loop Header: Depth=1
	b	.LBB9_17
.Lfunc_end9:
	.size	int_upsample, .Lfunc_end9-int_upsample
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym start_pass_upsample
	.addrsig_sym sep_upsample
	.addrsig_sym noop_upsample
	.addrsig_sym fullsize_upsample
	.addrsig_sym h2v1_fancy_upsample
	.addrsig_sym h2v1_upsample
	.addrsig_sym h2v2_fancy_upsample
	.addrsig_sym h2v2_upsample
	.addrsig_sym int_upsample
