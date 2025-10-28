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
	pcalau12i	$a0, %pc_hi20(sep_upsample)
	addi.d	$a0, $a0, %pc_lo12(sep_upsample)
	ld.w	$a1, $fp, 384
	st.d	$a0, $s0, 8
	st.w	$zero, $s0, 16
	beqz	$a1, .LBB0_2
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
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	ld.w	$a0, $fp, 48
	bgtz	$a0, .LBB0_5
	b	.LBB0_28
.LBB0_4:
	st.d	$zero, $sp, 48                  # 8-byte Folded Spill
	ld.w	$a0, $fp, 48
	blez	$a0, .LBB0_28
.LBB0_5:                                # %.lr.ph
	ld.d	$a0, $fp, 296
	addi.d	$s2, $s0, 104
	addi.d	$s4, $a0, 36
	ori	$s5, $zero, 192
	ori	$s7, $zero, 242
	pcalau12i	$a0, %pc_hi20(noop_upsample)
	addi.d	$s6, $a0, %pc_lo12(noop_upsample)
	pcalau12i	$a0, %pc_hi20(fullsize_upsample)
	addi.d	$s8, $a0, %pc_lo12(fullsize_upsample)
	pcalau12i	$a0, %pc_hi20(h2v1_fancy_upsample)
	addi.d	$a0, $a0, %pc_lo12(h2v1_fancy_upsample)
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(h2v1_upsample)
	addi.d	$a0, $a0, %pc_lo12(h2v1_upsample)
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(h2v2_fancy_upsample)
	addi.d	$a0, $a0, %pc_lo12(h2v2_fancy_upsample)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(h2v2_upsample)
	addi.d	$a0, $a0, %pc_lo12(h2v2_upsample)
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	move	$s3, $zero
	b	.LBB0_10
.LBB0_6:                                #   in Loop: Header=BB0_10 Depth=1
	add.d	$a0, $s0, $s3
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
.LBB0_7:                                #   in Loop: Header=BB0_10 Depth=1
	st.d	$a1, $a0, 104
.LBB0_8:                                #   in Loop: Header=BB0_10 Depth=1
	ld.d	$a0, $fp, 8
	ld.d	$s1, $a0, 16
	ld.wu	$a0, $fp, 128
	ld.w	$a1, $fp, 388
	pcaddu18i	$ra, %call36(jround_up)
	jirl	$ra, $ra, 0
	ld.w	$a3, $fp, 392
	addi.w	$a2, $a0, 0
	ori	$a1, $zero, 1
	move	$a0, $fp
	jirl	$ra, $s1, 0
	addi.d	$a6, $s0, 24
.LBB0_9:                                # %.critedge
                                        #   in Loop: Header=BB0_10 Depth=1
	stx.d	$a0, $a6, $s3
	ld.w	$a0, $fp, 48
	addi.d	$s3, $s3, 8
	addi.d	$s5, $s5, 4
	addi.d	$a1, $s7, -241
	addi.d	$s7, $s7, 1
	addi.d	$s4, $s4, 96
	bge	$a1, $a0, .LBB0_28
.LBB0_10:                               # =>This Inner Loop Header: Depth=1
	ld.w	$a4, $s4, 0
	ld.w	$a0, $s4, -24
	ld.w	$a5, $fp, 396
	ld.w	$a7, $s4, -28
	mul.w	$a0, $a0, $a4
	div.w	$a1, $a0, $a5
	ld.w	$a3, $fp, 388
	ld.w	$a2, $fp, 392
	stx.w	$a1, $s0, $s5
	ld.w	$t0, $s4, 12
	move	$a6, $s2
	move	$a0, $s6
	beqz	$t0, .LBB0_9
# %bb.11:                               #   in Loop: Header=BB0_10 Depth=1
	mul.w	$a0, $a4, $a7
	div.w	$a4, $a0, $a5
	bne	$a4, $a3, .LBB0_13
# %bb.12:                               #   in Loop: Header=BB0_10 Depth=1
	move	$a6, $s2
	move	$a0, $s8
	beq	$a1, $a2, .LBB0_9
.LBB0_13:                               #   in Loop: Header=BB0_10 Depth=1
	slli.w	$a0, $a4, 1
	bne	$a0, $a3, .LBB0_18
# %bb.14:                               #   in Loop: Header=BB0_10 Depth=1
	bne	$a1, $a2, .LBB0_18
# %bb.15:                               #   in Loop: Header=BB0_10 Depth=1
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	beqz	$a0, .LBB0_6
# %bb.16:                               #   in Loop: Header=BB0_10 Depth=1
	ld.w	$a0, $s4, 4
	ori	$a1, $zero, 3
	bltu	$a0, $a1, .LBB0_6
# %bb.17:                               #   in Loop: Header=BB0_10 Depth=1
	add.d	$a0, $s0, $s3
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	b	.LBB0_7
.LBB0_18:                               #   in Loop: Header=BB0_10 Depth=1
	bne	$a0, $a3, .LBB0_23
# %bb.19:                               #   in Loop: Header=BB0_10 Depth=1
	slli.w	$a0, $a1, 1
	bne	$a0, $a2, .LBB0_23
# %bb.20:                               #   in Loop: Header=BB0_10 Depth=1
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	beqz	$a0, .LBB0_26
# %bb.21:                               #   in Loop: Header=BB0_10 Depth=1
	ld.w	$a0, $s4, 4
	ori	$a1, $zero, 3
	bltu	$a0, $a1, .LBB0_26
# %bb.22:                               #   in Loop: Header=BB0_10 Depth=1
	add.d	$a0, $s0, $s3
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
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
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	b	.LBB0_7
.LBB0_27:                               #   in Loop: Header=BB0_10 Depth=1
	add.d	$a1, $s0, $s3
	pcalau12i	$a2, %pc_hi20(int_upsample)
	addi.d	$a2, $a2, %pc_lo12(int_upsample)
	st.d	$a2, $a1, 104
	add.d	$a1, $s0, $s7
	st.b	$a0, $a1, -10
	stx.b	$a3, $s0, $s7
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
	blez	$a1, .LBB2_5
# %bb.2:                                # %.lr.ph
	st.d	$a6, $sp, 16                    # 8-byte Folded Spill
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
	addi.d	$s2, $s2, 8
	addi.d	$s5, $s5, 4
	blt	$s7, $a0, .LBB2_3
# %bb.4:                                # %._crit_edge.loopexit
	ld.w	$a0, $s0, 392
	move	$a4, $s6
	ld.d	$a6, $sp, 16                    # 8-byte Folded Reload
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
	blez	$a4, .LBB5_6
# %bb.1:                                # %.lr.ph42
	ld.d	$a3, $a3, 0
	move	$a4, $zero
	b	.LBB5_3
	.p2align	4, , 16
.LBB5_2:                                # %._crit_edge
                                        #   in Loop: Header=BB5_3 Depth=1
	ld.bu	$t0, $a6, 0
	ld.bu	$a6, $a6, -1
	alsl.d	$t1, $t0, $t0, 1
	add.d	$a6, $a6, $t1
	addi.d	$a6, $a6, 1
	srli.d	$a6, $a6, 2
	st.b	$a6, $a5, 0
	st.b	$t0, $a7, 3
	ld.w	$a5, $a0, 392
	addi.d	$a4, $a4, 1
	bge	$a4, $a5, .LBB5_6
.LBB5_3:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_4 Depth 2
	slli.d	$a5, $a4, 3
	ldx.d	$a6, $a2, $a5
	ldx.d	$a7, $a3, $a5
	ld.bu	$a5, $a6, 0
	st.b	$a5, $a7, 0
	ld.bu	$t0, $a6, 1
	alsl.d	$a5, $a5, $a5, 1
	add.d	$a5, $a5, $t0
	addi.d	$a5, $a5, 2
	srli.d	$a5, $a5, 2
	st.b	$a5, $a7, 1
	ld.w	$a5, $a1, 40
	addi.d	$a6, $a6, 1
	addi.w	$t0, $a5, -2
	addi.d	$a5, $a7, 2
	beqz	$t0, .LBB5_2
	.p2align	4, , 16
.LBB5_4:                                # %.lr.ph
                                        #   Parent Loop BB5_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$a7, $a6, 0
	ld.bu	$t1, $a6, -1
	alsl.d	$a7, $a7, $a7, 1
	add.d	$t1, $t1, $a7
	addi.d	$t1, $t1, 1
	srli.d	$t1, $t1, 2
	st.b	$t1, $a5, 0
	ld.bu	$t1, $a6, 1
	addi.d	$a6, $a6, 1
	add.d	$a7, $a7, $t1
	addi.d	$a7, $a7, 2
	srli.d	$a7, $a7, 2
	st.b	$a7, $a5, 1
	addi.w	$t0, $t0, -1
	addi.d	$a5, $a5, 2
	bnez	$t0, .LBB5_4
# %bb.5:                                # %._crit_edge.loopexit
                                        #   in Loop: Header=BB5_3 Depth=1
	addi.d	$a7, $a5, -2
	b	.LBB5_2
.LBB5_6:                                # %._crit_edge43
	ret
.Lfunc_end5:
	.size	h2v1_fancy_upsample, .Lfunc_end5-h2v1_fancy_upsample
                                        # -- End function
	.p2align	5                               # -- Begin function h2v1_upsample
	.type	h2v1_upsample,@function
h2v1_upsample:                          # @h2v1_upsample
# %bb.0:
	ld.w	$a4, $a0, 392
	blez	$a4, .LBB6_7
# %bb.1:                                # %.lr.ph22
	ld.d	$a1, $a3, 0
	move	$a3, $zero
	b	.LBB6_3
	.p2align	4, , 16
.LBB6_2:                                # %._crit_edge
                                        #   in Loop: Header=BB6_3 Depth=1
	addi.d	$a3, $a3, 1
	bge	$a3, $a4, .LBB6_7
.LBB6_3:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_5 Depth 2
	ld.wu	$a5, $a0, 128
	beqz	$a5, .LBB6_2
# %bb.4:                                # %.lr.ph.preheader
                                        #   in Loop: Header=BB6_3 Depth=1
	slli.d	$a6, $a3, 3
	ldx.d	$a4, $a1, $a6
	ldx.d	$a6, $a2, $a6
	add.d	$a5, $a4, $a5
	.p2align	4, , 16
.LBB6_5:                                # %.lr.ph
                                        #   Parent Loop BB6_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.b	$a7, $a6, 0
	addi.d	$a6, $a6, 1
	st.b	$a7, $a4, 0
	addi.d	$t0, $a4, 2
	st.b	$a7, $a4, 1
	move	$a4, $t0
	bltu	$t0, $a5, .LBB6_5
# %bb.6:                                # %._crit_edge.loopexit
                                        #   in Loop: Header=BB6_3 Depth=1
	ld.w	$a4, $a0, 392
	b	.LBB6_2
.LBB6_7:                                # %._crit_edge23
	ret
.Lfunc_end6:
	.size	h2v1_upsample, .Lfunc_end6-h2v1_upsample
                                        # -- End function
	.p2align	5                               # -- Begin function h2v2_fancy_upsample
	.type	h2v2_fancy_upsample,@function
h2v2_fancy_upsample:                    # @h2v2_fancy_upsample
# %bb.0:
	ld.w	$a4, $a0, 392
	blez	$a4, .LBB7_13
# %bb.1:                                # %.preheader.lr.ph
	ld.d	$a3, $a3, 0
	move	$a4, $zero
	move	$a5, $zero
	b	.LBB7_4
	.p2align	4, , 16
.LBB7_2:                                #   in Loop: Header=BB7_4 Depth=1
	move	$t3, $t0
.LBB7_3:                                # %._crit_edge.1
                                        #   in Loop: Header=BB7_4 Depth=1
	alsl.d	$t0, $a6, $a6, 1
	add.d	$t0, $t3, $t0
	addi.d	$t0, $t0, 8
	srli.d	$t0, $t0, 4
	st.b	$t0, $a7, 0
	slli.d	$a6, $a6, 2
	addi.d	$a6, $a6, 7
	srli.d	$a6, $a6, 4
	st.b	$a6, $t1, 3
	ld.w	$a6, $a0, 392
	addi.w	$a5, $a5, 2
	addi.d	$a4, $a4, 1
	bge	$a5, $a6, .LBB7_13
.LBB7_4:                                # %.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_6 Depth 2
                                        #     Child Loop BB7_11 Depth 2
	alsl.d	$a6, $a4, $a2, 3
	slli.d	$a7, $a4, 3
	ldx.d	$t4, $a2, $a7
	ld.d	$t5, $a6, -8
	slli.d	$a7, $a5, 3
	ldx.d	$t2, $a3, $a7
	ld.bu	$a7, $t4, 0
	ld.bu	$t0, $t5, 0
	ld.bu	$t3, $t4, 1
	ld.bu	$t6, $t5, 1
	alsl.d	$a7, $a7, $a7, 1
	add.d	$t1, $a7, $t0
	alsl.d	$a7, $t3, $t3, 1
	add.d	$a7, $a7, $t6
	slli.d	$t0, $t1, 2
	addi.d	$t0, $t0, 8
	srli.d	$t0, $t0, 4
	st.b	$t0, $t2, 0
	alsl.d	$t0, $t1, $t1, 1
	add.d	$t0, $t0, $a7
	addi.d	$t0, $t0, 7
	srli.d	$t0, $t0, 4
	st.b	$t0, $t2, 1
	ld.w	$t0, $a1, 40
	addi.w	$t3, $t0, -2
	addi.d	$t0, $t2, 2
	beqz	$t3, .LBB7_8
# %bb.5:                                # %.lr.ph.preheader
                                        #   in Loop: Header=BB7_4 Depth=1
	addi.d	$t2, $t5, 2
	addi.d	$t5, $t4, 2
	.p2align	4, , 16
.LBB7_6:                                # %.lr.ph
                                        #   Parent Loop BB7_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$t6, $t5, 0
	move	$t4, $a7
	ld.bu	$a7, $t2, 0
	addi.d	$t5, $t5, 1
	alsl.d	$t6, $t6, $t6, 1
	addi.d	$t2, $t2, 1
	add.d	$a7, $t6, $a7
	alsl.d	$t6, $t4, $t4, 1
	add.d	$t1, $t1, $t6
	addi.d	$t1, $t1, 8
	srli.d	$t1, $t1, 4
	st.b	$t1, $t0, 0
	add.d	$t1, $t6, $a7
	addi.d	$t1, $t1, 7
	srli.d	$t1, $t1, 4
	st.b	$t1, $t0, 1
	addi.w	$t3, $t3, -1
	addi.d	$t0, $t0, 2
	move	$t1, $t4
	bnez	$t3, .LBB7_6
# %bb.7:                                # %._crit_edge.loopexit
                                        #   in Loop: Header=BB7_4 Depth=1
	addi.d	$t2, $t0, -2
	b	.LBB7_9
	.p2align	4, , 16
.LBB7_8:                                #   in Loop: Header=BB7_4 Depth=1
	move	$t4, $t1
.LBB7_9:                                # %._crit_edge
                                        #   in Loop: Header=BB7_4 Depth=1
	alsl.d	$t1, $a7, $a7, 1
	add.d	$t1, $t4, $t1
	addi.d	$t1, $t1, 8
	srli.d	$t1, $t1, 4
	st.b	$t1, $t0, 0
	slli.d	$a7, $a7, 2
	addi.d	$a7, $a7, 7
	srli.d	$a7, $a7, 4
	st.b	$a7, $t2, 3
	ld.d	$t3, $a6, 0
	ld.d	$t4, $a6, 8
	alsl.d	$a6, $a5, $a3, 3
	ld.d	$t1, $a6, 8
	ld.bu	$a6, $t3, 0
	ld.bu	$a7, $t4, 0
	ld.bu	$t2, $t3, 1
	ld.bu	$t5, $t4, 1
	alsl.d	$a6, $a6, $a6, 1
	add.d	$t0, $a6, $a7
	alsl.d	$a6, $t2, $t2, 1
	add.d	$a6, $a6, $t5
	slli.d	$a7, $t0, 2
	addi.d	$a7, $a7, 8
	srli.d	$a7, $a7, 4
	st.b	$a7, $t1, 0
	alsl.d	$a7, $t0, $t0, 1
	add.d	$a7, $a7, $a6
	addi.d	$a7, $a7, 7
	srli.d	$a7, $a7, 4
	st.b	$a7, $t1, 1
	ld.w	$a7, $a1, 40
	addi.w	$t2, $a7, -2
	addi.d	$a7, $t1, 2
	beqz	$t2, .LBB7_2
# %bb.10:                               # %.lr.ph.preheader.1
                                        #   in Loop: Header=BB7_4 Depth=1
	addi.d	$t1, $t4, 2
	addi.d	$t4, $t3, 2
	.p2align	4, , 16
.LBB7_11:                               # %.lr.ph.1
                                        #   Parent Loop BB7_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$t5, $t4, 0
	move	$t3, $a6
	ld.bu	$a6, $t1, 0
	addi.d	$t4, $t4, 1
	alsl.d	$t5, $t5, $t5, 1
	addi.d	$t1, $t1, 1
	add.d	$a6, $t5, $a6
	alsl.d	$t5, $t3, $t3, 1
	add.d	$t0, $t0, $t5
	addi.d	$t0, $t0, 8
	srli.d	$t0, $t0, 4
	st.b	$t0, $a7, 0
	add.d	$t0, $t5, $a6
	addi.d	$t0, $t0, 7
	srli.d	$t0, $t0, 4
	st.b	$t0, $a7, 1
	addi.w	$t2, $t2, -1
	addi.d	$a7, $a7, 2
	move	$t0, $t3
	bnez	$t2, .LBB7_11
# %bb.12:                               # %._crit_edge.1.loopexit
                                        #   in Loop: Header=BB7_4 Depth=1
	addi.d	$t1, $a7, -2
	b	.LBB7_3
.LBB7_13:                               # %._crit_edge68
	ret
.Lfunc_end7:
	.size	h2v2_fancy_upsample, .Lfunc_end7-h2v2_fancy_upsample
                                        # -- End function
	.p2align	5                               # -- Begin function h2v2_upsample
	.type	h2v2_upsample,@function
h2v2_upsample:                          # @h2v2_upsample
# %bb.0:
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	st.d	$s4, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.w	$a0, $a0, 392
	blez	$a0, .LBB8_8
# %bb.1:                                # %.lr.ph30
	move	$s0, $a2
	ld.d	$s1, $a3, 0
	move	$s3, $zero
	move	$s2, $zero
	move	$s4, $zero
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
	bge	$a1, $a0, .LBB8_8
.LBB8_4:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_6 Depth 2
	ld.wu	$a1, $fp, 128
	beqz	$a1, .LBB8_2
# %bb.5:                                # %.lr.ph.preheader
                                        #   in Loop: Header=BB8_4 Depth=1
	slli.d	$a0, $s2, 3
	ldx.d	$a0, $s1, $a0
	slli.d	$a2, $s3, 3
	ldx.d	$a2, $s0, $a2
	add.d	$a1, $a0, $a1
	.p2align	4, , 16
.LBB8_6:                                # %.lr.ph
                                        #   Parent Loop BB8_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.b	$a3, $a2, 0
	addi.d	$a2, $a2, 1
	st.b	$a3, $a0, 0
	addi.d	$a4, $a0, 2
	st.b	$a3, $a0, 1
	move	$a0, $a4
	bltu	$a4, $a1, .LBB8_6
# %bb.7:                                # %._crit_edge.loopexit
                                        #   in Loop: Header=BB8_4 Depth=1
	ld.w	$a5, $fp, 128
	b	.LBB8_3
.LBB8_8:                                # %._crit_edge31
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
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
	st.d	$a2, $sp, 8                     # 8-byte Folded Spill
	blez	$a0, .LBB9_16
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
	addi.d	$a4, $s6, -1
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
	addi.d	$a4, $s6, -1
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
