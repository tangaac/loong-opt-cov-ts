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
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0                          # -- Begin function h2v1_fancy_upsample
.LCPI5_0:
	.dword	8                               # 0x8
	.dword	10                              # 0xa
	.dword	12                              # 0xc
	.dword	14                              # 0xe
.LCPI5_1:
	.dword	0                               # 0x0
	.dword	2                               # 0x2
	.dword	4                               # 0x4
	.dword	6                               # 0x6
	.text
	.p2align	5
	.type	h2v1_fancy_upsample,@function
h2v1_fancy_upsample:                    # @h2v1_fancy_upsample
# %bb.0:
	ld.w	$a4, $a0, 392
	ori	$a5, $zero, 1
	blt	$a4, $a5, .LBB5_17
# %bb.1:                                # %.lr.ph42
	addi.d	$sp, $sp, -64
	st.d	$fp, $sp, 56                    # 8-byte Folded Spill
	st.d	$s0, $sp, 48                    # 8-byte Folded Spill
	st.d	$s1, $sp, 40                    # 8-byte Folded Spill
	st.d	$s2, $sp, 32                    # 8-byte Folded Spill
	st.d	$s3, $sp, 24                    # 8-byte Folded Spill
	st.d	$s4, $sp, 16                    # 8-byte Folded Spill
	st.d	$s5, $sp, 8                     # 8-byte Folded Spill
	move	$a4, $zero
	ld.d	$a3, $a3, 0
	ori	$a5, $zero, 8
	vrepli.b	$vr0, 0
	vrepli.h	$vr1, 3
	b	.LBB5_4
	.p2align	4, , 16
.LBB5_2:                                #   in Loop: Header=BB5_4 Depth=1
	move	$t3, $t0
	move	$t1, $t2
.LBB5_3:                                # %._crit_edge
                                        #   in Loop: Header=BB5_4 Depth=1
	ld.bu	$a7, $t3, 0
	ld.bu	$t0, $t3, -1
	alsl.d	$t2, $a7, $a7, 1
	add.d	$t0, $t0, $t2
	addi.d	$t0, $t0, 1
	srli.d	$t0, $t0, 2
	st.b	$t0, $t1, 0
	st.b	$a7, $a6, 3
	ld.w	$a6, $a0, 392
	addi.d	$a4, $a4, 1
	bge	$a4, $a6, .LBB5_16
.LBB5_4:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_9 Depth 2
                                        #     Child Loop BB5_14 Depth 2
	slli.d	$a6, $a4, 3
	ldx.d	$t1, $a2, $a6
	ldx.d	$a6, $a3, $a6
	ld.bu	$a7, $t1, 0
	st.b	$a7, $a6, 0
	ld.bu	$t0, $t1, 1
	alsl.d	$a7, $a7, $a7, 1
	add.d	$a7, $a7, $t0
	addi.d	$a7, $a7, 2
	srli.d	$a7, $a7, 2
	st.b	$a7, $a6, 1
	ld.w	$t3, $a1, 40
	addi.d	$t0, $t1, 1
	addi.w	$a7, $t3, -2
	addi.d	$t2, $a6, 2
	beqz	$a7, .LBB5_2
# %bb.5:                                # %.lr.ph.preheader
                                        #   in Loop: Header=BB5_4 Depth=1
	bltu	$a7, $a5, .LBB5_13
# %bb.6:                                # %vector.memcheck
                                        #   in Loop: Header=BB5_4 Depth=1
	addi.d	$t3, $t3, -3
	bstrpick.d	$t3, $t3, 31, 0
	add.d	$t4, $t1, $t3
	addi.d	$t4, $t4, 3
	bgeu	$t2, $t4, .LBB5_8
# %bb.7:                                # %vector.memcheck
                                        #   in Loop: Header=BB5_4 Depth=1
	alsl.d	$t3, $t3, $a6, 1
	addi.d	$t3, $t3, 4
	bltu	$t1, $t3, .LBB5_13
.LBB5_8:                                # %vector.ph
                                        #   in Loop: Header=BB5_4 Depth=1
	bstrpick.d	$t4, $a7, 31, 0
	bstrpick.d	$t3, $t4, 31, 3
	slli.d	$t5, $t3, 3
	alsl.d	$t1, $t3, $t2, 4
	sub.d	$a7, $a7, $t5
	alsl.d	$a6, $t3, $a6, 4
	alsl.d	$t3, $t3, $t0, 3
	move	$t6, $t5
	.p2align	4, , 16
.LBB5_9:                                # %vector.body
                                        #   Parent Loop BB5_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	pcalau12i	$t7, %pc_hi20(.LCPI5_0)
	xvld	$xr2, $t7, %pc_lo12(.LCPI5_0)
	pcalau12i	$t7, %pc_hi20(.LCPI5_1)
	xvld	$xr3, $t7, %pc_lo12(.LCPI5_1)
	xvreplgr2vr.d	$xr4, $t2
	xvadd.d	$xr5, $xr4, $xr2
	xvadd.d	$xr4, $xr4, $xr3
	addi.d	$t7, $t2, -2
	xvreplgr2vr.d	$xr6, $t7
	ld.d	$t7, $t0, 0
	xvadd.d	$xr2, $xr6, $xr2
	ld.d	$t8, $t0, -1
	xvadd.d	$xr3, $xr6, $xr3
	vinsgr2vr.d	$vr6, $t7, 0
	vilvl.b	$vr6, $vr0, $vr6
	vinsgr2vr.d	$vr7, $t8, 0
	vilvl.b	$vr7, $vr0, $vr7
	vmadd.h	$vr7, $vr6, $vr1
	vaddi.hu	$vr7, $vr7, 1
	vsrli.h	$vr7, $vr7, 2
	xvpickve2gr.d	$t7, $xr3, 1
	xvpickve2gr.d	$t8, $xr3, 2
	xvpickve2gr.d	$fp, $xr3, 3
	xvpickve2gr.d	$s0, $xr2, 0
	xvpickve2gr.d	$s1, $xr2, 1
	xvpickve2gr.d	$s2, $xr2, 2
	vpickve2gr.b	$s3, $vr7, 0
	xvpickve2gr.d	$s4, $xr4, 0
	st.b	$s3, $s4, 0
	vpickve2gr.b	$s3, $vr7, 2
	xvpickve2gr.d	$s4, $xr4, 1
	st.b	$s3, $s4, 0
	vpickve2gr.b	$s3, $vr7, 4
	xvpickve2gr.d	$s4, $xr4, 2
	st.b	$s3, $s4, 0
	vpickve2gr.b	$s3, $vr7, 6
	xvpickve2gr.d	$s4, $xr4, 3
	st.b	$s3, $s4, 0
	vpickve2gr.b	$s3, $vr7, 8
	xvpickve2gr.d	$s4, $xr5, 0
	st.b	$s3, $s4, 0
	vpickve2gr.b	$s3, $vr7, 10
	xvpickve2gr.d	$s4, $xr5, 1
	st.b	$s3, $s4, 0
	vpickve2gr.b	$s3, $vr7, 12
	xvpickve2gr.d	$s4, $xr5, 2
	st.b	$s3, $s4, 0
	vpickve2gr.b	$s3, $vr7, 14
	ld.d	$s4, $t0, 1
	xvpickve2gr.d	$s5, $xr5, 3
	st.b	$s3, $s5, 0
	xvpickve2gr.d	$s3, $xr2, 3
	vinsgr2vr.d	$vr2, $s4, 0
	vilvl.b	$vr2, $vr0, $vr2
	vmadd.h	$vr2, $vr6, $vr1
	vaddi.hu	$vr2, $vr2, 2
	vsrli.h	$vr2, $vr2, 2
	vpickve2gr.b	$s4, $vr2, 0
	st.b	$s4, $t2, 1
	vpickve2gr.b	$s4, $vr2, 2
	st.b	$s4, $t7, 3
	vpickve2gr.b	$t7, $vr2, 4
	st.b	$t7, $t8, 3
	vpickve2gr.b	$t7, $vr2, 6
	st.b	$t7, $fp, 3
	vpickve2gr.b	$t7, $vr2, 8
	st.b	$t7, $s0, 3
	vpickve2gr.b	$t7, $vr2, 10
	st.b	$t7, $s1, 3
	vpickve2gr.b	$t7, $vr2, 12
	st.b	$t7, $s2, 3
	vpickve2gr.b	$t7, $vr2, 14
	st.b	$t7, $s3, 3
	addi.d	$t6, $t6, -8
	addi.d	$t0, $t0, 8
	addi.d	$t2, $t2, 16
	bnez	$t6, .LBB5_9
# %bb.10:                               # %middle.block
                                        #   in Loop: Header=BB5_4 Depth=1
	bne	$t5, $t4, .LBB5_12
# %bb.11:                               #   in Loop: Header=BB5_4 Depth=1
	addi.d	$a6, $t1, -2
	b	.LBB5_3
.LBB5_12:                               #   in Loop: Header=BB5_4 Depth=1
	move	$t2, $t1
	move	$t0, $t3
	.p2align	4, , 16
.LBB5_13:                               # %.lr.ph.preheader58
                                        #   in Loop: Header=BB5_4 Depth=1
	move	$t1, $t2
	.p2align	4, , 16
.LBB5_14:                               # %.lr.ph
                                        #   Parent Loop BB5_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$t2, $t0, 0
	ld.bu	$t3, $t0, -1
	alsl.d	$t2, $t2, $t2, 1
	add.d	$t3, $t3, $t2
	addi.d	$t3, $t3, 1
	srli.d	$t3, $t3, 2
	st.b	$t3, $t1, 0
	ld.bu	$t3, $t0, 1
	addi.d	$t0, $t0, 1
	add.d	$t2, $t2, $t3
	addi.d	$t2, $t2, 2
	srli.d	$t2, $t2, 2
	st.b	$t2, $a6, 3
	addi.w	$a7, $a7, -1
	move	$a6, $t1
	addi.d	$t1, $t1, 2
	bnez	$a7, .LBB5_14
# %bb.15:                               # %._crit_edge.loopexit
                                        #   in Loop: Header=BB5_4 Depth=1
	addi.d	$a6, $t1, -2
	move	$t3, $t0
	b	.LBB5_3
.LBB5_16:
	ld.d	$s5, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s4, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 48                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
.LBB5_17:                               # %._crit_edge43
	ret
.Lfunc_end5:
	.size	h2v1_fancy_upsample, .Lfunc_end5-h2v1_fancy_upsample
                                        # -- End function
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0                          # -- Begin function h2v1_upsample
.LCPI6_0:
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	1                               # 0x1
	.byte	2                               # 0x2
	.byte	2                               # 0x2
	.byte	3                               # 0x3
	.byte	3                               # 0x3
	.byte	4                               # 0x4
	.byte	4                               # 0x4
	.byte	5                               # 0x5
	.byte	5                               # 0x5
	.byte	6                               # 0x6
	.byte	6                               # 0x6
	.byte	7                               # 0x7
	.byte	7                               # 0x7
	.byte	8                               # 0x8
	.byte	8                               # 0x8
	.byte	9                               # 0x9
	.byte	9                               # 0x9
	.byte	10                              # 0xa
	.byte	10                              # 0xa
	.byte	11                              # 0xb
	.byte	11                              # 0xb
	.byte	12                              # 0xc
	.byte	12                              # 0xc
	.byte	13                              # 0xd
	.byte	13                              # 0xd
	.byte	14                              # 0xe
	.byte	14                              # 0xe
	.byte	15                              # 0xf
	.byte	15                              # 0xf
	.text
	.p2align	5
	.type	h2v1_upsample,@function
h2v1_upsample:                          # @h2v1_upsample
# %bb.0:
	ld.w	$a6, $a0, 392
	ori	$a1, $zero, 1
	blt	$a6, $a1, .LBB6_22
# %bb.1:                                # %.lr.ph22
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
	addi.d	$fp, $sp, 288
	bstrins.d	$sp, $zero, 4, 0
	ld.d	$a4, $a3, 0
	move	$a5, $zero
	ori	$t7, $zero, 30
	ori	$t8, $zero, 62
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	st.d	$a2, $sp, 24                    # 8-byte Folded Spill
	st.d	$a4, $sp, 16                    # 8-byte Folded Spill
	b	.LBB6_4
	.p2align	4, , 16
.LBB6_2:                                # %._crit_edge.loopexit
                                        #   in Loop: Header=BB6_4 Depth=1
	ld.w	$a6, $a0, 392
.LBB6_3:                                # %._crit_edge
                                        #   in Loop: Header=BB6_4 Depth=1
	addi.d	$a5, $a5, 1
	bge	$a5, $a6, .LBB6_21
.LBB6_4:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_16 Depth 2
                                        #     Child Loop BB6_13 Depth 2
                                        #     Child Loop BB6_9 Depth 2
	ld.wu	$a7, $a0, 128
	beqz	$a7, .LBB6_3
# %bb.5:                                # %iter.check
                                        #   in Loop: Header=BB6_4 Depth=1
	slli.d	$t1, $a5, 3
	ldx.d	$a1, $a4, $t1
	add.d	$a6, $a1, $a7
	ldx.d	$t0, $a2, $t1
	addi.d	$a7, $a1, 2
	sltu	$t2, $a7, $a6
	maskeqz	$t3, $a6, $t2
	masknez	$t2, $a7, $t2
	or	$t2, $t3, $t2
	nor	$t3, $a1, $zero
	add.d	$t2, $t2, $t3
	bltu	$t2, $t7, .LBB6_8
# %bb.6:                                # %vector.memcheck
                                        #   in Loop: Header=BB6_4 Depth=1
	srli.d	$t3, $t2, 1
	add.d	$t4, $t0, $t3
	addi.d	$t4, $t4, 1
	bgeu	$a1, $t4, .LBB6_10
# %bb.7:                                # %vector.memcheck
                                        #   in Loop: Header=BB6_4 Depth=1
	move	$t4, $t2
	bstrins.d	$t4, $zero, 0, 0
	add.d	$a7, $a7, $t4
	bgeu	$t0, $a7, .LBB6_10
.LBB6_8:                                #   in Loop: Header=BB6_4 Depth=1
	move	$t3, $t0
	move	$t4, $a1
	.p2align	4, , 16
.LBB6_9:                                # %.lr.ph
                                        #   Parent Loop BB6_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.b	$a3, $t3, 0
	addi.d	$t3, $t3, 1
	st.b	$a3, $t4, 0
	addi.d	$a1, $t4, 2
	st.b	$a3, $t4, 1
	move	$t4, $a1
	bltu	$a1, $a6, .LBB6_9
	b	.LBB6_2
.LBB6_10:                               # %vector.main.loop.iter.check
                                        #   in Loop: Header=BB6_4 Depth=1
	addi.d	$a3, $t3, 1
	bgeu	$t2, $t8, .LBB6_15
# %bb.11:                               #   in Loop: Header=BB6_4 Depth=1
	move	$a7, $zero
.LBB6_12:                               # %vec.epilog.ph
                                        #   in Loop: Header=BB6_4 Depth=1
	move	$t5, $a3
	bstrins.d	$t5, $zero, 3, 0
	add.d	$t3, $t0, $t5
	alsl.d	$t4, $t5, $a1, 1
	add.d	$t1, $t0, $a7
	sub.d	$t6, $a7, $t5
	alsl.d	$a1, $a7, $a1, 1
	addi.d	$t0, $a1, 15
	.p2align	4, , 16
.LBB6_13:                               # %vec.epilog.vector.body
                                        #   Parent Loop BB6_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $t1, 0
	pcalau12i	$a1, %pc_hi20(.LCPI6_0)
	xvld	$xr1, $a1, %pc_lo12(.LCPI6_0)
	xvpermi.q	$xr0, $xr0, 2
	xvpermi.d	$xr0, $xr0, 68
	xvshuf.b	$xr0, $xr0, $xr0, $xr1
	xvst	$xr0, $t0, -15
	addi.d	$t1, $t1, 16
	addi.d	$t6, $t6, 16
	addi.d	$t0, $t0, 32
	bnez	$t6, .LBB6_13
# %bb.14:                               # %vec.epilog.middle.block
                                        #   in Loop: Header=BB6_4 Depth=1
	bne	$a3, $t5, .LBB6_9
	b	.LBB6_2
.LBB6_15:                               # %vector.ph
                                        #   in Loop: Header=BB6_4 Depth=1
	st.d	$a6, $sp, 72                    # 8-byte Folded Spill
	st.d	$a5, $sp, 80                    # 8-byte Folded Spill
	st.d	$a3, $sp, 64                    # 8-byte Folded Spill
	move	$t4, $a3
	bstrins.d	$t4, $zero, 4, 0
	st.d	$a1, $sp, 48                    # 8-byte Folded Spill
	addi.d	$t3, $a1, 31
	st.d	$t4, $sp, 56                    # 8-byte Folded Spill
	st.d	$t0, $sp, 40                    # 8-byte Folded Spill
	move	$t5, $t0
	.p2align	4, , 16
.LBB6_16:                               # %vector.body
                                        #   Parent Loop BB6_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvld	$xr0, $t5, 0
	vpickve2gr.b	$a0, $vr0, 0
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	st.b	$a0, $t3, -31
	vpickve2gr.b	$a0, $vr0, 1
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	st.b	$a0, $t3, -29
	vpickve2gr.b	$a0, $vr0, 2
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	st.b	$a0, $t3, -27
	vpickve2gr.b	$a0, $vr0, 3
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	st.b	$a0, $t3, -25
	vpickve2gr.b	$a0, $vr0, 4
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	st.b	$a0, $t3, -23
	vpickve2gr.b	$a0, $vr0, 5
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	st.b	$a0, $t3, -21
	vpickve2gr.b	$a0, $vr0, 6
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	st.b	$a0, $t3, -19
	vpickve2gr.b	$a0, $vr0, 7
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	st.b	$a0, $t3, -17
	vpickve2gr.b	$a0, $vr0, 8
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	st.b	$a0, $t3, -15
	vpickve2gr.b	$s6, $vr0, 9
	st.b	$s6, $t3, -13
	vpickve2gr.b	$s7, $vr0, 10
	st.b	$s7, $t3, -11
	vpickve2gr.b	$s8, $vr0, 11
	st.b	$s8, $t3, -9
	vpickve2gr.b	$ra, $vr0, 12
	st.b	$ra, $t3, -7
	vpickve2gr.b	$s4, $vr0, 13
	st.b	$s4, $t3, -5
	vpickve2gr.b	$s3, $vr0, 14
	st.b	$s3, $t3, -3
	vpickve2gr.b	$s2, $vr0, 15
	st.b	$s2, $t3, -1
	xvst	$xr0, $sp, 160
	ld.b	$s1, $sp, 176
	st.b	$s1, $t3, 1
	ld.b	$s0, $sp, 177
	st.b	$s0, $t3, 3
	ld.b	$t8, $sp, 178
	st.b	$t8, $t3, 5
	ld.b	$t7, $sp, 179
	st.b	$t7, $t3, 7
	ld.b	$t6, $sp, 180
	st.b	$t6, $t3, 9
	ld.b	$t2, $sp, 181
	st.b	$t2, $t3, 11
	ld.b	$t1, $sp, 182
	st.b	$t1, $t3, 13
	ld.b	$t0, $sp, 183
	st.b	$t0, $t3, 15
	ld.b	$a7, $sp, 184
	st.b	$a7, $t3, 17
	ld.b	$a6, $sp, 185
	st.b	$a6, $t3, 19
	ld.b	$a5, $sp, 186
	st.b	$a5, $t3, 21
	ld.b	$a4, $sp, 187
	st.b	$a4, $t3, 23
	ld.b	$a3, $sp, 188
	st.b	$a3, $t3, 25
	ld.b	$a2, $sp, 189
	st.b	$a2, $t3, 27
	ld.b	$a0, $sp, 190
	st.b	$a0, $t3, 29
	ld.b	$a1, $sp, 191
	ld.d	$s5, $sp, 152                   # 8-byte Folded Reload
	st.b	$s5, $t3, -30
	ld.d	$s5, $sp, 144                   # 8-byte Folded Reload
	st.b	$s5, $t3, -28
	ld.d	$s5, $sp, 136                   # 8-byte Folded Reload
	st.b	$s5, $t3, -26
	ld.d	$s5, $sp, 128                   # 8-byte Folded Reload
	st.b	$s5, $t3, -24
	ld.d	$s5, $sp, 120                   # 8-byte Folded Reload
	st.b	$s5, $t3, -22
	ld.d	$s5, $sp, 112                   # 8-byte Folded Reload
	st.b	$s5, $t3, -20
	ld.d	$s5, $sp, 104                   # 8-byte Folded Reload
	st.b	$s5, $t3, -18
	ld.d	$s5, $sp, 96                    # 8-byte Folded Reload
	st.b	$s5, $t3, -16
	ld.d	$s5, $sp, 88                    # 8-byte Folded Reload
	st.b	$s5, $t3, -14
	st.b	$s6, $t3, -12
	st.b	$s7, $t3, -10
	st.b	$s8, $t3, -8
	st.b	$ra, $t3, -6
	st.b	$s4, $t3, -4
	st.b	$s3, $t3, -2
	st.b	$s2, $t3, 0
	st.b	$s1, $t3, 2
	st.b	$s0, $t3, 4
	st.b	$t8, $t3, 6
	st.b	$t7, $t3, 8
	st.b	$t6, $t3, 10
	st.b	$t2, $t3, 12
	st.b	$t1, $t3, 14
	st.b	$t0, $t3, 16
	st.b	$a7, $t3, 18
	st.b	$a6, $t3, 20
	st.b	$a5, $t3, 22
	st.b	$a4, $t3, 24
	st.b	$a3, $t3, 26
	st.b	$a2, $t3, 28
	st.b	$a0, $t3, 30
	st.b	$a1, $t3, 31
	st.b	$a1, $t3, 32
	addi.d	$t5, $t5, 32
	addi.d	$t4, $t4, -32
	addi.d	$t3, $t3, 64
	bnez	$t4, .LBB6_16
# %bb.17:                               # %middle.block
                                        #   in Loop: Header=BB6_4 Depth=1
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a4, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a5, $sp, 80                    # 8-byte Folded Reload
	ori	$t7, $zero, 30
	ori	$t8, $zero, 62
	ld.d	$a6, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a3, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a7, $sp, 56                    # 8-byte Folded Reload
	beq	$a3, $a7, .LBB6_2
# %bb.18:                               # %vec.epilog.iter.check
                                        #   in Loop: Header=BB6_4 Depth=1
	andi	$a1, $a3, 16
	bnez	$a1, .LBB6_20
# %bb.19:                               #   in Loop: Header=BB6_4 Depth=1
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	add.d	$t3, $a1, $a7
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	alsl.d	$t4, $a7, $a1, 1
	b	.LBB6_9
.LBB6_20:                               #   in Loop: Header=BB6_4 Depth=1
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$t0, $sp, 40                    # 8-byte Folded Reload
	b	.LBB6_12
.LBB6_21:
	addi.d	$sp, $fp, -288
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
.LBB6_22:                               # %._crit_edge23
	ret
.Lfunc_end6:
	.size	h2v1_upsample, .Lfunc_end6-h2v1_upsample
                                        # -- End function
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0                          # -- Begin function h2v2_fancy_upsample
.LCPI7_0:
	.dword	56                              # 0x38
	.dword	58                              # 0x3a
	.dword	60                              # 0x3c
	.dword	62                              # 0x3e
.LCPI7_1:
	.dword	48                              # 0x30
	.dword	50                              # 0x32
	.dword	52                              # 0x34
	.dword	54                              # 0x36
.LCPI7_2:
	.dword	40                              # 0x28
	.dword	42                              # 0x2a
	.dword	44                              # 0x2c
	.dword	46                              # 0x2e
.LCPI7_3:
	.dword	32                              # 0x20
	.dword	34                              # 0x22
	.dword	36                              # 0x24
	.dword	38                              # 0x26
.LCPI7_4:
	.dword	24                              # 0x18
	.dword	26                              # 0x1a
	.dword	28                              # 0x1c
	.dword	30                              # 0x1e
.LCPI7_5:
	.dword	16                              # 0x10
	.dword	18                              # 0x12
	.dword	20                              # 0x14
	.dword	22                              # 0x16
.LCPI7_6:
	.dword	8                               # 0x8
	.dword	10                              # 0xa
	.dword	12                              # 0xc
	.dword	14                              # 0xe
.LCPI7_7:
	.dword	0                               # 0x0
	.dword	2                               # 0x2
	.dword	4                               # 0x4
	.dword	6                               # 0x6
.LCPI7_8:
	.word	3                               # 0x3
	.word	7                               # 0x7
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.text
	.p2align	5
	.type	h2v2_fancy_upsample,@function
h2v2_fancy_upsample:                    # @h2v2_fancy_upsample
# %bb.0:
	addi.d	$sp, $sp, -352
	st.d	$ra, $sp, 344                   # 8-byte Folded Spill
	st.d	$fp, $sp, 336                   # 8-byte Folded Spill
	st.d	$s0, $sp, 328                   # 8-byte Folded Spill
	st.d	$s1, $sp, 320                   # 8-byte Folded Spill
	st.d	$s2, $sp, 312                   # 8-byte Folded Spill
	st.d	$s3, $sp, 304                   # 8-byte Folded Spill
	st.d	$s4, $sp, 296                   # 8-byte Folded Spill
	st.d	$s5, $sp, 288                   # 8-byte Folded Spill
	st.d	$s6, $sp, 280                   # 8-byte Folded Spill
	st.d	$s7, $sp, 272                   # 8-byte Folded Spill
	st.d	$s8, $sp, 264                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 256                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 248                  # 8-byte Folded Spill
	fst.d	$fs2, $sp, 240                  # 8-byte Folded Spill
	fst.d	$fs3, $sp, 232                  # 8-byte Folded Spill
	fst.d	$fs4, $sp, 224                  # 8-byte Folded Spill
	fst.d	$fs5, $sp, 216                  # 8-byte Folded Spill
	fst.d	$fs6, $sp, 208                  # 8-byte Folded Spill
	addi.d	$fp, $sp, 352
	bstrins.d	$sp, $zero, 4, 0
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	ld.w	$a0, $a0, 392
	ori	$a4, $zero, 1
	st.d	$a2, $sp, 48                    # 8-byte Folded Spill
	blt	$a0, $a4, .LBB7_27
# %bb.1:                                # %.preheader.lr.ph
	ld.d	$a0, $a3, 0
	move	$a4, $zero
	move	$a5, $zero
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	addi.d	$a0, $a0, 8
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	xvrepli.w	$xr0, 3
	pcalau12i	$t2, %pc_hi20(.LCPI7_2)
	pcalau12i	$t3, %pc_hi20(.LCPI7_3)
	pcalau12i	$t4, %pc_hi20(.LCPI7_4)
	pcalau12i	$t5, %pc_hi20(.LCPI7_5)
	pcalau12i	$t6, %pc_hi20(.LCPI7_6)
	pcalau12i	$t7, %pc_hi20(.LCPI7_7)
	pcalau12i	$t8, %pc_hi20(.LCPI7_8)
	b	.LBB7_4
	.p2align	4, , 16
.LBB7_2:                                #   in Loop: Header=BB7_4 Depth=1
	move	$s2, $s7
.LBB7_3:                                # %._crit_edge.1
                                        #   in Loop: Header=BB7_4 Depth=1
	alsl.d	$a0, $a3, $a3, 1
	add.d	$a0, $s8, $a0
	addi.d	$a0, $a0, 8
	srli.d	$a0, $a0, 4
	st.b	$a0, $s2, 0
	slli.d	$a0, $a3, 2
	addi.d	$a0, $a0, 7
	srli.d	$a0, $a0, 4
	st.b	$a0, $s0, 3
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	ld.w	$a0, $a0, 392
	addi.w	$a5, $a5, 2
	addi.d	$a4, $a4, 1
	bge	$a5, $a0, .LBB7_27
.LBB7_4:                                # %.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_20 Depth 2
                                        #     Child Loop BB7_8 Depth 2
                                        #     Child Loop BB7_25 Depth 2
                                        #     Child Loop BB7_15 Depth 2
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	alsl.d	$s0, $a4, $a2, 3
	slli.d	$a0, $a4, 3
	ldx.d	$a3, $a2, $a0
	ld.d	$a0, $s0, -8
	slli.d	$s1, $a5, 3
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	ldx.d	$s2, $a2, $s1
	ld.bu	$a6, $a3, 0
	ld.bu	$a7, $a0, 0
	ld.bu	$t0, $a3, 1
	ld.bu	$t1, $a0, 1
	alsl.d	$a6, $a6, $a6, 1
	add.d	$a7, $a6, $a7
	alsl.d	$a6, $t0, $t0, 1
	add.d	$a6, $a6, $t1
	slli.d	$t0, $a7, 2
	addi.d	$t0, $t0, 8
	srli.d	$t0, $t0, 4
	st.b	$t0, $s2, 0
	alsl.d	$t0, $a7, $a7, 1
	add.d	$t0, $t0, $a6
	addi.d	$t0, $t0, 7
	srli.d	$t0, $t0, 4
	st.b	$t0, $s2, 1
	ld.w	$s4, $a1, 40
	addi.w	$s3, $s4, -2
	addi.d	$s8, $s2, 2
	pcalau12i	$t0, %pc_hi20(.LCPI7_0)
	pcalau12i	$t1, %pc_hi20(.LCPI7_1)
	beqz	$s3, .LBB7_10
# %bb.5:                                # %.lr.ph.preheader
                                        #   in Loop: Header=BB7_4 Depth=1
	addi.d	$ra, $a0, 2
	addi.d	$s7, $a3, 2
	ori	$a2, $zero, 32
	bgeu	$s3, $a2, .LBB7_17
.LBB7_6:                                #   in Loop: Header=BB7_4 Depth=1
	move	$s4, $s8
	move	$s5, $ra
	move	$s6, $s7
.LBB7_7:                                # %.lr.ph.preheader147
                                        #   in Loop: Header=BB7_4 Depth=1
	move	$a0, $a7
	.p2align	4, , 16
.LBB7_8:                                # %.lr.ph
                                        #   Parent Loop BB7_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$a2, $s6, 0
	move	$a7, $a6
	ld.bu	$a3, $s5, 0
	addi.d	$s6, $s6, 1
	alsl.d	$a2, $a2, $a2, 1
	addi.d	$s5, $s5, 1
	add.d	$a6, $a2, $a3
	alsl.d	$a2, $a7, $a7, 1
	add.d	$a0, $a0, $a2
	addi.d	$a0, $a0, 8
	srli.d	$a0, $a0, 4
	st.b	$a0, $s4, 0
	add.d	$a0, $a2, $a6
	addi.d	$a0, $a0, 7
	srli.d	$a0, $a0, 4
	st.b	$a0, $s2, 3
	addi.w	$s3, $s3, -1
	move	$s2, $s4
	addi.d	$s4, $s4, 2
	move	$a0, $a7
	bnez	$s3, .LBB7_8
.LBB7_9:                                # %._crit_edge.loopexit
                                        #   in Loop: Header=BB7_4 Depth=1
	addi.d	$s2, $s4, -2
	b	.LBB7_11
	.p2align	4, , 16
.LBB7_10:                               #   in Loop: Header=BB7_4 Depth=1
	move	$s4, $s8
.LBB7_11:                               # %._crit_edge
                                        #   in Loop: Header=BB7_4 Depth=1
	alsl.d	$a0, $a6, $a6, 1
	add.d	$a0, $a7, $a0
	addi.d	$a0, $a0, 8
	srli.d	$a0, $a0, 4
	st.b	$a0, $s4, 0
	slli.d	$a0, $a6, 2
	addi.d	$a0, $a0, 7
	srli.d	$a0, $a0, 4
	st.b	$a0, $s2, 3
	ld.d	$a6, $s0, 0
	ld.d	$a0, $s0, 8
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	ldx.d	$s0, $a2, $s1
	ld.bu	$a2, $a6, 0
	ld.bu	$a3, $a0, 0
	ld.bu	$a7, $a6, 1
	ld.bu	$s1, $a0, 1
	alsl.d	$a2, $a2, $a2, 1
	add.d	$s8, $a2, $a3
	alsl.d	$a2, $a7, $a7, 1
	add.d	$a3, $a2, $s1
	slli.d	$a2, $s8, 2
	addi.d	$a2, $a2, 8
	srli.d	$a2, $a2, 4
	st.b	$a2, $s0, 0
	alsl.d	$a2, $s8, $s8, 1
	add.d	$a2, $a2, $a3
	addi.d	$a2, $a2, 7
	srli.d	$a2, $a2, 4
	st.b	$a2, $s0, 1
	ld.w	$a7, $a1, 40
	addi.w	$s1, $a7, -2
	addi.d	$s7, $s0, 2
	beqz	$s1, .LBB7_2
# %bb.12:                               # %.lr.ph.preheader.1
                                        #   in Loop: Header=BB7_4 Depth=1
	addi.d	$s6, $a0, 2
	addi.d	$s5, $a6, 2
	ori	$a2, $zero, 32
	bgeu	$s1, $a2, .LBB7_22
.LBB7_13:                               #   in Loop: Header=BB7_4 Depth=1
	move	$s2, $s7
	move	$s3, $s6
	move	$s4, $s5
.LBB7_14:                               # %.lr.ph.1.preheader
                                        #   in Loop: Header=BB7_4 Depth=1
	move	$a0, $s8
	.p2align	4, , 16
.LBB7_15:                               # %.lr.ph.1
                                        #   Parent Loop BB7_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$a2, $s4, 0
	move	$s8, $a3
	ld.bu	$a3, $s3, 0
	addi.d	$s4, $s4, 1
	alsl.d	$a2, $a2, $a2, 1
	addi.d	$s3, $s3, 1
	add.d	$a3, $a2, $a3
	alsl.d	$a2, $s8, $s8, 1
	add.d	$a0, $a0, $a2
	addi.d	$a0, $a0, 8
	srli.d	$a0, $a0, 4
	st.b	$a0, $s2, 0
	add.d	$a0, $a2, $a3
	addi.d	$a0, $a0, 7
	srli.d	$a0, $a0, 4
	st.b	$a0, $s0, 3
	addi.w	$s1, $s1, -1
	move	$s0, $s2
	addi.d	$s2, $s2, 2
	move	$a0, $s8
	bnez	$s1, .LBB7_15
.LBB7_16:                               # %._crit_edge.1.loopexit
                                        #   in Loop: Header=BB7_4 Depth=1
	addi.d	$s0, $s2, -2
	b	.LBB7_3
	.p2align	4, , 16
.LBB7_17:                               # %vector.memcheck97
                                        #   in Loop: Header=BB7_4 Depth=1
	addi.d	$s4, $s4, -3
	bstrpick.d	$s5, $s4, 31, 0
	alsl.d	$s4, $s5, $s2, 1
	addi.d	$s4, $s4, 4
	add.d	$a3, $a3, $s5
	addi.d	$a3, $a3, 3
	sltu	$a3, $s8, $a3
	sltu	$s6, $s7, $s4
	and	$a3, $a3, $s6
	bnez	$a3, .LBB7_6
# %bb.18:                               # %vector.memcheck97
                                        #   in Loop: Header=BB7_4 Depth=1
	add.d	$a0, $a0, $s5
	addi.d	$a0, $a0, 3
	sltu	$a0, $s8, $a0
	sltu	$a3, $ra, $s4
	and	$a0, $a0, $a3
	bnez	$a0, .LBB7_6
# %bb.19:                               # %vector.ph113
                                        #   in Loop: Header=BB7_4 Depth=1
	bstrpick.d	$a0, $s3, 31, 0
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	bstrpick.d	$a3, $a0, 31, 5
	slli.d	$a2, $a3, 5
	slli.d	$a3, $a3, 6
	add.d	$s4, $s8, $a3
	sub.d	$s3, $s3, $a2
	add.d	$s2, $s2, $a3
	add.d	$s5, $ra, $a2
	add.d	$s6, $s7, $a2
	xvinsgr2vr.w	$xr1, $a7, 0
	xvpermi.d	$xr1, $xr1, 68
	xvshuf4i.w	$xr21, $xr1, 0
	xvinsgr2vr.w	$xr1, $a6, 0
	xvpermi.d	$xr1, $xr1, 68
	xvshuf4i.w	$xr18, $xr1, 0
	move	$a6, $a2
	.p2align	4, , 16
.LBB7_20:                               # %vector.body117
                                        #   Parent Loop BB7_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvld	$xr1, $t0, %pc_lo12(.LCPI7_0)
	xvreplgr2vr.d	$xr2, $s8
	xvld	$xr3, $t1, %pc_lo12(.LCPI7_1)
	xvld	$xr4, $t2, %pc_lo12(.LCPI7_2)
	xvld	$xr5, $t3, %pc_lo12(.LCPI7_3)
	xvadd.d	$xr9, $xr2, $xr1
	xvadd.d	$xr10, $xr2, $xr3
	xvadd.d	$xr11, $xr2, $xr4
	xvadd.d	$xr14, $xr2, $xr5
	xvld	$xr6, $t4, %pc_lo12(.LCPI7_4)
	xvld	$xr7, $t5, %pc_lo12(.LCPI7_5)
	xvld	$xr8, $t6, %pc_lo12(.LCPI7_6)
	xvld	$xr12, $t7, %pc_lo12(.LCPI7_7)
	xvadd.d	$xr15, $xr2, $xr6
	xvadd.d	$xr16, $xr2, $xr7
	xvadd.d	$xr17, $xr2, $xr8
	xvadd.d	$xr19, $xr2, $xr12
	addi.d	$a3, $s8, -2
	xvreplgr2vr.d	$xr20, $a3
	xvadd.d	$xr1, $xr20, $xr1
	xvadd.d	$xr2, $xr20, $xr3
	xvld	$xr13, $s7, 0
	xvadd.d	$xr3, $xr20, $xr4
	xvadd.d	$xr4, $xr20, $xr5
	xvadd.d	$xr5, $xr20, $xr6
	xvst	$xr13, $sp, 128
	vld	$vr13, $sp, 128
	xvadd.d	$xr6, $xr20, $xr7
	xvadd.d	$xr7, $xr20, $xr8
	xvadd.d	$xr8, $xr20, $xr12
	vpickve2gr.b	$a3, $vr13, 0
	andi	$a3, $a3, 255
	xvinsgr2vr.w	$xr22, $a3, 0
	vpickve2gr.b	$a3, $vr13, 1
	andi	$a3, $a3, 255
	xvinsgr2vr.w	$xr22, $a3, 1
	vpickve2gr.b	$a3, $vr13, 2
	andi	$a3, $a3, 255
	xvinsgr2vr.w	$xr22, $a3, 2
	vpickve2gr.b	$a3, $vr13, 3
	andi	$a3, $a3, 255
	xvinsgr2vr.w	$xr22, $a3, 3
	vpickve2gr.b	$a3, $vr13, 4
	andi	$a3, $a3, 255
	xvinsgr2vr.w	$xr22, $a3, 4
	vpickve2gr.b	$a3, $vr13, 5
	andi	$a3, $a3, 255
	xvinsgr2vr.w	$xr22, $a3, 5
	vpickve2gr.b	$a3, $vr13, 6
	andi	$a3, $a3, 255
	xvinsgr2vr.w	$xr22, $a3, 6
	vpickve2gr.b	$a3, $vr13, 7
	andi	$a3, $a3, 255
	xvinsgr2vr.w	$xr22, $a3, 7
	vpickve2gr.b	$a3, $vr13, 8
	andi	$a3, $a3, 255
	xvinsgr2vr.w	$xr23, $a3, 0
	vpickve2gr.b	$a3, $vr13, 9
	andi	$a3, $a3, 255
	xvinsgr2vr.w	$xr23, $a3, 1
	vpickve2gr.b	$a3, $vr13, 10
	andi	$a3, $a3, 255
	xvinsgr2vr.w	$xr23, $a3, 2
	vpickve2gr.b	$a3, $vr13, 11
	andi	$a3, $a3, 255
	xvinsgr2vr.w	$xr23, $a3, 3
	vpickve2gr.b	$a3, $vr13, 12
	andi	$a3, $a3, 255
	xvinsgr2vr.w	$xr23, $a3, 4
	vpickve2gr.b	$a3, $vr13, 13
	andi	$a3, $a3, 255
	xvinsgr2vr.w	$xr23, $a3, 5
	vpickve2gr.b	$a3, $vr13, 14
	andi	$a3, $a3, 255
	xvinsgr2vr.w	$xr23, $a3, 6
	vld	$vr12, $sp, 144
	vpickve2gr.b	$a3, $vr13, 15
	andi	$a3, $a3, 255
	xvinsgr2vr.w	$xr23, $a3, 7
	vpickve2gr.b	$a3, $vr12, 0
	andi	$a3, $a3, 255
	xvinsgr2vr.w	$xr24, $a3, 0
	vpickve2gr.b	$a3, $vr12, 1
	andi	$a3, $a3, 255
	xvinsgr2vr.w	$xr24, $a3, 1
	vpickve2gr.b	$a3, $vr12, 2
	andi	$a3, $a3, 255
	xvinsgr2vr.w	$xr24, $a3, 2
	vpickve2gr.b	$a3, $vr12, 3
	andi	$a3, $a3, 255
	xvinsgr2vr.w	$xr24, $a3, 3
	vpickve2gr.b	$a3, $vr12, 4
	andi	$a3, $a3, 255
	xvinsgr2vr.w	$xr24, $a3, 4
	vpickve2gr.b	$a3, $vr12, 5
	andi	$a3, $a3, 255
	xvinsgr2vr.w	$xr24, $a3, 5
	vpickve2gr.b	$a3, $vr12, 6
	andi	$a3, $a3, 255
	xvinsgr2vr.w	$xr24, $a3, 6
	vpickve2gr.b	$a3, $vr12, 7
	andi	$a3, $a3, 255
	xvinsgr2vr.w	$xr24, $a3, 7
	vpickve2gr.b	$a3, $vr12, 8
	andi	$a3, $a3, 255
	xvinsgr2vr.w	$xr25, $a3, 0
	vpickve2gr.b	$a3, $vr12, 9
	andi	$a3, $a3, 255
	xvinsgr2vr.w	$xr25, $a3, 1
	vpickve2gr.b	$a3, $vr12, 10
	andi	$a3, $a3, 255
	xvinsgr2vr.w	$xr25, $a3, 2
	vpickve2gr.b	$a3, $vr12, 11
	andi	$a3, $a3, 255
	xvinsgr2vr.w	$xr25, $a3, 3
	vpickve2gr.b	$a3, $vr12, 12
	andi	$a3, $a3, 255
	xvinsgr2vr.w	$xr25, $a3, 4
	vpickve2gr.b	$a3, $vr12, 13
	andi	$a3, $a3, 255
	xvinsgr2vr.w	$xr25, $a3, 5
	xvld	$xr13, $ra, 0
	vpickve2gr.b	$a3, $vr12, 14
	andi	$a3, $a3, 255
	xvinsgr2vr.w	$xr25, $a3, 6
	xvst	$xr13, $sp, 160
	vld	$vr27, $sp, 160
	vpickve2gr.b	$a3, $vr12, 15
	andi	$a3, $a3, 255
	xvinsgr2vr.w	$xr25, $a3, 7
	vpickve2gr.b	$a3, $vr27, 0
	andi	$a3, $a3, 255
	xvinsgr2vr.w	$xr20, $a3, 0
	vpickve2gr.b	$a3, $vr27, 1
	andi	$a3, $a3, 255
	xvinsgr2vr.w	$xr20, $a3, 1
	vpickve2gr.b	$a3, $vr27, 2
	andi	$a3, $a3, 255
	xvinsgr2vr.w	$xr20, $a3, 2
	vpickve2gr.b	$a3, $vr27, 3
	andi	$a3, $a3, 255
	xvinsgr2vr.w	$xr20, $a3, 3
	vpickve2gr.b	$a3, $vr27, 4
	andi	$a3, $a3, 255
	xvinsgr2vr.w	$xr20, $a3, 4
	vpickve2gr.b	$a3, $vr27, 5
	andi	$a3, $a3, 255
	xvinsgr2vr.w	$xr20, $a3, 5
	vpickve2gr.b	$a3, $vr27, 6
	andi	$a3, $a3, 255
	xvinsgr2vr.w	$xr20, $a3, 6
	vpickve2gr.b	$a3, $vr27, 7
	andi	$a3, $a3, 255
	xvinsgr2vr.w	$xr20, $a3, 7
	vpickve2gr.b	$a3, $vr27, 8
	andi	$a3, $a3, 255
	xvinsgr2vr.w	$xr13, $a3, 0
	vpickve2gr.b	$a3, $vr27, 9
	andi	$a3, $a3, 255
	xvinsgr2vr.w	$xr13, $a3, 1
	vpickve2gr.b	$a3, $vr27, 10
	andi	$a3, $a3, 255
	xvinsgr2vr.w	$xr13, $a3, 2
	vpickve2gr.b	$a3, $vr27, 11
	andi	$a3, $a3, 255
	xvinsgr2vr.w	$xr13, $a3, 3
	vpickve2gr.b	$a3, $vr27, 12
	andi	$a3, $a3, 255
	xvinsgr2vr.w	$xr13, $a3, 4
	vpickve2gr.b	$a3, $vr27, 13
	andi	$a3, $a3, 255
	xvinsgr2vr.w	$xr13, $a3, 5
	vpickve2gr.b	$a3, $vr27, 14
	andi	$a3, $a3, 255
	xvinsgr2vr.w	$xr13, $a3, 6
	vld	$vr26, $sp, 176
	vpickve2gr.b	$a3, $vr27, 15
	andi	$a3, $a3, 255
	xvinsgr2vr.w	$xr13, $a3, 7
	vpickve2gr.b	$a3, $vr26, 0
	andi	$a3, $a3, 255
	xvinsgr2vr.w	$xr12, $a3, 0
	vpickve2gr.b	$a3, $vr26, 1
	andi	$a3, $a3, 255
	xvinsgr2vr.w	$xr12, $a3, 1
	vpickve2gr.b	$a3, $vr26, 2
	andi	$a3, $a3, 255
	xvinsgr2vr.w	$xr12, $a3, 2
	vpickve2gr.b	$a3, $vr26, 3
	andi	$a3, $a3, 255
	xvinsgr2vr.w	$xr12, $a3, 3
	vpickve2gr.b	$a3, $vr26, 4
	andi	$a3, $a3, 255
	xvinsgr2vr.w	$xr12, $a3, 4
	vpickve2gr.b	$a3, $vr26, 5
	andi	$a3, $a3, 255
	xvinsgr2vr.w	$xr12, $a3, 5
	vpickve2gr.b	$a3, $vr26, 6
	andi	$a3, $a3, 255
	xvinsgr2vr.w	$xr12, $a3, 6
	vpickve2gr.b	$a3, $vr26, 7
	andi	$a3, $a3, 255
	xvinsgr2vr.w	$xr12, $a3, 7
	vpickve2gr.b	$a3, $vr26, 8
	andi	$a3, $a3, 255
	xvpickve2gr.w	$a7, $xr18, 7
	xvpermi.d	$xr27, $xr18, 78
	xvinsgr2vr.w	$xr18, $a3, 0
	vpickve2gr.b	$a3, $vr26, 9
	andi	$a3, $a3, 255
	xvinsgr2vr.w	$xr18, $a3, 1
	vpickve2gr.b	$a3, $vr26, 10
	andi	$a3, $a3, 255
	xvinsgr2vr.w	$xr18, $a3, 2
	vpickve2gr.b	$a3, $vr26, 11
	andi	$a3, $a3, 255
	xvinsgr2vr.w	$xr18, $a3, 3
	vpickve2gr.b	$a3, $vr26, 12
	andi	$a3, $a3, 255
	xvinsgr2vr.w	$xr18, $a3, 4
	vpickve2gr.b	$a3, $vr26, 13
	andi	$a3, $a3, 255
	xvinsgr2vr.w	$xr18, $a3, 5
	vpickve2gr.b	$a3, $vr26, 14
	andi	$a3, $a3, 255
	xvinsgr2vr.w	$xr18, $a3, 6
	vpickve2gr.b	$a3, $vr26, 15
	andi	$a3, $a3, 255
	xvinsgr2vr.w	$xr18, $a3, 7
	xvmadd.w	$xr18, $xr25, $xr0
	xvmadd.w	$xr12, $xr24, $xr0
	xvmadd.w	$xr13, $xr23, $xr0
	xvmadd.w	$xr20, $xr22, $xr0
	xvpickve2gr.w	$a3, $xr20, 0
	xvinsgr2vr.w	$xr24, $a7, 0
	xvinsgr2vr.w	$xr24, $a3, 1
	xvpickve2gr.w	$a3, $xr20, 1
	xvinsgr2vr.w	$xr24, $a3, 2
	xvpickve2gr.w	$a3, $xr20, 2
	xvinsgr2vr.w	$xr24, $a3, 3
	xvpickve2gr.w	$a3, $xr20, 3
	xvinsgr2vr.w	$xr24, $a3, 4
	xvpickve2gr.w	$a3, $xr20, 4
	xvinsgr2vr.w	$xr24, $a3, 5
	xvpickve2gr.w	$a3, $xr20, 5
	xvinsgr2vr.w	$xr24, $a3, 6
	xvpickve2gr.w	$a3, $xr20, 6
	xvinsgr2vr.w	$xr24, $a3, 7
	xvpickve2gr.w	$a3, $xr20, 7
	xvinsgr2vr.w	$xr23, $a3, 0
	xvpickve2gr.w	$a3, $xr13, 0
	xvinsgr2vr.w	$xr23, $a3, 1
	xvpickve2gr.w	$a3, $xr13, 1
	xvinsgr2vr.w	$xr23, $a3, 2
	xvpickve2gr.w	$a3, $xr13, 2
	xvinsgr2vr.w	$xr23, $a3, 3
	xvpickve2gr.w	$a3, $xr13, 3
	xvinsgr2vr.w	$xr23, $a3, 4
	xvpickve2gr.w	$a3, $xr13, 4
	xvinsgr2vr.w	$xr23, $a3, 5
	xvpickve2gr.w	$a3, $xr13, 5
	xvinsgr2vr.w	$xr23, $a3, 6
	xvpickve2gr.w	$a3, $xr13, 6
	xvinsgr2vr.w	$xr23, $a3, 7
	xvpickve2gr.w	$a3, $xr13, 7
	xvinsgr2vr.w	$xr22, $a3, 0
	xvpickve2gr.w	$a3, $xr12, 0
	xvinsgr2vr.w	$xr22, $a3, 1
	xvpickve2gr.w	$a3, $xr12, 1
	xvinsgr2vr.w	$xr22, $a3, 2
	xvpickve2gr.w	$a3, $xr12, 2
	xvinsgr2vr.w	$xr22, $a3, 3
	xvpickve2gr.w	$a3, $xr12, 3
	xvinsgr2vr.w	$xr22, $a3, 4
	xvpickve2gr.w	$a3, $xr12, 4
	xvinsgr2vr.w	$xr22, $a3, 5
	xvpickve2gr.w	$a3, $xr12, 5
	xvinsgr2vr.w	$xr22, $a3, 6
	xvpickve2gr.w	$a3, $xr12, 6
	xvinsgr2vr.w	$xr22, $a3, 7
	xvpickve2gr.w	$a3, $xr12, 7
	xvpermi.d	$xr25, $xr21, 78
	xvinsgr2vr.w	$xr21, $a3, 0
	xvpickve2gr.w	$a3, $xr18, 0
	xvinsgr2vr.w	$xr21, $a3, 1
	xvpickve2gr.w	$a3, $xr18, 1
	xvinsgr2vr.w	$xr21, $a3, 2
	xvpickve2gr.w	$a3, $xr18, 2
	xvinsgr2vr.w	$xr21, $a3, 3
	xvpickve2gr.w	$a3, $xr18, 3
	xvinsgr2vr.w	$xr21, $a3, 4
	xvpickve2gr.w	$a3, $xr18, 4
	xvinsgr2vr.w	$xr21, $a3, 5
	xvpickve2gr.w	$a3, $xr18, 5
	xvld	$xr26, $t8, %pc_lo12(.LCPI7_8)
	xvinsgr2vr.w	$xr21, $a3, 6
	xvpickve2gr.w	$a7, $xr18, 6
	xvinsgr2vr.w	$xr21, $a7, 7
	xvshuf.w	$xr26, $xr27, $xr25
	xvpickve2gr.d	$a3, $xr26, 0
	xvinsgr2vr.d	$xr25, $a3, 0
	xvpickve2gr.d	$a3, $xr20, 0
	xvinsgr2vr.d	$xr25, $a3, 1
	xvpickve2gr.d	$a3, $xr20, 1
	xvinsgr2vr.d	$xr25, $a3, 2
	xvpickve2gr.d	$a3, $xr20, 2
	xvinsgr2vr.d	$xr25, $a3, 3
	xvpickve2gr.d	$a3, $xr20, 3
	xvinsgr2vr.d	$xr26, $a3, 0
	xvpickve2gr.d	$a3, $xr13, 0
	xvinsgr2vr.d	$xr26, $a3, 1
	xvpickve2gr.d	$a3, $xr13, 1
	xvinsgr2vr.d	$xr26, $a3, 2
	xvpickve2gr.d	$a3, $xr13, 2
	xvinsgr2vr.d	$xr26, $a3, 3
	xvpickve2gr.d	$a3, $xr13, 3
	xvinsgr2vr.d	$xr29, $a3, 0
	xvpickve2gr.d	$a3, $xr12, 0
	xvinsgr2vr.d	$xr29, $a3, 1
	xvpickve2gr.d	$a3, $xr12, 1
	xvinsgr2vr.d	$xr29, $a3, 2
	xvpickve2gr.d	$a3, $xr12, 2
	xvinsgr2vr.d	$xr29, $a3, 3
	xvpickve2gr.d	$a3, $xr12, 3
	xvinsgr2vr.d	$xr30, $a3, 0
	xvpickve2gr.d	$a3, $xr18, 0
	xvinsgr2vr.d	$xr30, $a3, 1
	xvpickve2gr.d	$a3, $xr18, 1
	xvinsgr2vr.d	$xr30, $a3, 2
	xvpickve2gr.d	$a3, $xr18, 2
	xvinsgr2vr.d	$xr30, $a3, 3
	xvmadd.w	$xr30, $xr21, $xr0
	xvmadd.w	$xr29, $xr22, $xr0
	xvmadd.w	$xr26, $xr23, $xr0
	xvmadd.w	$xr25, $xr24, $xr0
	xvaddi.wu	$xr27, $xr25, 8
	xvaddi.wu	$xr28, $xr26, 8
	xvaddi.wu	$xr26, $xr29, 8
	xvaddi.wu	$xr25, $xr30, 8
	xvpickve2gr.w	$a3, $xr25, 0
	vinsgr2vr.h	$vr29, $a3, 0
	xvpickve2gr.w	$a3, $xr25, 1
	vinsgr2vr.h	$vr29, $a3, 1
	xvpickve2gr.w	$a3, $xr25, 2
	vinsgr2vr.h	$vr29, $a3, 2
	xvpickve2gr.w	$a3, $xr25, 3
	vinsgr2vr.h	$vr29, $a3, 3
	xvpickve2gr.w	$a3, $xr25, 4
	vinsgr2vr.h	$vr29, $a3, 4
	xvpickve2gr.w	$a3, $xr25, 5
	vinsgr2vr.h	$vr29, $a3, 5
	xvpickve2gr.w	$a3, $xr25, 6
	vinsgr2vr.h	$vr29, $a3, 6
	xvpickve2gr.w	$a3, $xr25, 7
	vinsgr2vr.h	$vr29, $a3, 7
	vsrli.h	$vr25, $vr29, 4
	xvpickve2gr.w	$a3, $xr26, 0
	vinsgr2vr.h	$vr29, $a3, 0
	xvpickve2gr.w	$a3, $xr26, 1
	vinsgr2vr.h	$vr29, $a3, 1
	xvpickve2gr.w	$a3, $xr26, 2
	vinsgr2vr.h	$vr29, $a3, 2
	xvpickve2gr.w	$a3, $xr26, 3
	vinsgr2vr.h	$vr29, $a3, 3
	xvpickve2gr.w	$a3, $xr26, 4
	vinsgr2vr.h	$vr29, $a3, 4
	xvpickve2gr.w	$a3, $xr26, 5
	vinsgr2vr.h	$vr29, $a3, 5
	xvpickve2gr.w	$a3, $xr26, 6
	vinsgr2vr.h	$vr29, $a3, 6
	xvpickve2gr.w	$a3, $xr26, 7
	vinsgr2vr.h	$vr29, $a3, 7
	vsrli.h	$vr26, $vr29, 4
	xvpickve2gr.w	$a3, $xr28, 0
	vinsgr2vr.h	$vr29, $a3, 0
	xvpickve2gr.w	$a3, $xr28, 1
	vinsgr2vr.h	$vr29, $a3, 1
	xvpickve2gr.w	$a3, $xr28, 2
	vinsgr2vr.h	$vr29, $a3, 2
	xvpickve2gr.w	$a3, $xr28, 3
	vinsgr2vr.h	$vr29, $a3, 3
	xvpickve2gr.w	$a3, $xr28, 4
	vinsgr2vr.h	$vr29, $a3, 4
	xvpickve2gr.w	$a3, $xr28, 5
	vinsgr2vr.h	$vr29, $a3, 5
	xvpickve2gr.w	$a3, $xr28, 6
	vinsgr2vr.h	$vr29, $a3, 6
	xvpickve2gr.w	$a3, $xr28, 7
	vinsgr2vr.h	$vr29, $a3, 7
	vsrli.h	$vr28, $vr29, 4
	xvpickve2gr.w	$a3, $xr27, 0
	vinsgr2vr.h	$vr29, $a3, 0
	xvpickve2gr.w	$a3, $xr27, 1
	vinsgr2vr.h	$vr29, $a3, 1
	xvpickve2gr.w	$a3, $xr27, 2
	vinsgr2vr.h	$vr29, $a3, 2
	xvpickve2gr.w	$a3, $xr27, 3
	vinsgr2vr.h	$vr29, $a3, 3
	xvpickve2gr.w	$a3, $xr27, 4
	vinsgr2vr.h	$vr29, $a3, 4
	xvpickve2gr.w	$a3, $xr27, 5
	vinsgr2vr.h	$vr29, $a3, 5
	xvpickve2gr.w	$a3, $xr27, 6
	vinsgr2vr.h	$vr29, $a3, 6
	xvpickve2gr.w	$a3, $xr27, 7
	vinsgr2vr.h	$vr29, $a3, 7
	vsrli.h	$vr27, $vr29, 4
	vpickve2gr.h	$a3, $vr27, 0
	xvpickve2gr.d	$a0, $xr19, 0
	st.b	$a3, $a0, 0
	vpickve2gr.h	$a0, $vr27, 1
	xvpickve2gr.d	$a3, $xr19, 1
	st.b	$a0, $a3, 0
	vpickve2gr.h	$a0, $vr27, 2
	xvpickve2gr.d	$a3, $xr19, 2
	st.b	$a0, $a3, 0
	vpickve2gr.h	$a0, $vr27, 3
	xvpickve2gr.d	$a3, $xr19, 3
	st.b	$a0, $a3, 0
	vpickve2gr.h	$a0, $vr27, 4
	xvpickve2gr.d	$a3, $xr17, 0
	st.b	$a0, $a3, 0
	vpickve2gr.h	$a0, $vr27, 5
	xvpickve2gr.d	$a3, $xr17, 1
	st.b	$a0, $a3, 0
	vpickve2gr.h	$a0, $vr27, 6
	xvpickve2gr.d	$a3, $xr17, 2
	st.b	$a0, $a3, 0
	vpickve2gr.h	$a0, $vr27, 7
	xvpickve2gr.d	$a3, $xr17, 3
	st.b	$a0, $a3, 0
	vpickve2gr.h	$a0, $vr28, 0
	xvpickve2gr.d	$a3, $xr16, 0
	st.b	$a0, $a3, 0
	vpickve2gr.h	$a0, $vr28, 1
	xvpickve2gr.d	$a3, $xr16, 1
	st.b	$a0, $a3, 0
	vpickve2gr.h	$a0, $vr28, 2
	xvpickve2gr.d	$a3, $xr16, 2
	st.b	$a0, $a3, 0
	vpickve2gr.h	$a0, $vr28, 3
	xvpickve2gr.d	$a3, $xr16, 3
	st.b	$a0, $a3, 0
	vpickve2gr.h	$a0, $vr28, 4
	xvpickve2gr.d	$a3, $xr15, 0
	st.b	$a0, $a3, 0
	vpickve2gr.h	$a0, $vr28, 5
	xvpickve2gr.d	$a3, $xr15, 1
	st.b	$a0, $a3, 0
	vpickve2gr.h	$a0, $vr28, 6
	xvpickve2gr.d	$a3, $xr15, 2
	st.b	$a0, $a3, 0
	vpickve2gr.h	$a0, $vr28, 7
	xvpickve2gr.d	$a3, $xr15, 3
	st.b	$a0, $a3, 0
	vpickve2gr.h	$a0, $vr26, 0
	xvpickve2gr.d	$a3, $xr14, 0
	st.b	$a0, $a3, 0
	vpickve2gr.h	$a0, $vr26, 1
	xvpickve2gr.d	$a3, $xr14, 1
	st.b	$a0, $a3, 0
	vpickve2gr.h	$a0, $vr26, 2
	xvpickve2gr.d	$a3, $xr14, 2
	st.b	$a0, $a3, 0
	vpickve2gr.h	$a0, $vr26, 3
	xvpickve2gr.d	$a3, $xr14, 3
	st.b	$a0, $a3, 0
	vpickve2gr.h	$a0, $vr26, 4
	xvpickve2gr.d	$a3, $xr11, 0
	st.b	$a0, $a3, 0
	vpickve2gr.h	$a0, $vr26, 5
	xvpickve2gr.d	$a3, $xr11, 1
	st.b	$a0, $a3, 0
	vpickve2gr.h	$a0, $vr26, 6
	xvpickve2gr.d	$a3, $xr11, 2
	st.b	$a0, $a3, 0
	vpickve2gr.h	$a0, $vr26, 7
	xvpickve2gr.d	$a3, $xr11, 3
	st.b	$a0, $a3, 0
	vpickve2gr.h	$a0, $vr25, 0
	xvpickve2gr.d	$a3, $xr10, 0
	st.b	$a0, $a3, 0
	vpickve2gr.h	$a0, $vr25, 1
	xvpickve2gr.d	$a3, $xr10, 1
	st.b	$a0, $a3, 0
	vpickve2gr.h	$a0, $vr25, 2
	xvpickve2gr.d	$a3, $xr10, 2
	st.b	$a0, $a3, 0
	vpickve2gr.h	$a0, $vr25, 3
	xvpickve2gr.d	$a3, $xr10, 3
	st.b	$a0, $a3, 0
	vpickve2gr.h	$a0, $vr25, 4
	xvpickve2gr.d	$a3, $xr9, 0
	st.b	$a0, $a3, 0
	vpickve2gr.h	$a0, $vr25, 5
	xvpickve2gr.d	$a3, $xr9, 1
	st.b	$a0, $a3, 0
	vpickve2gr.h	$a0, $vr25, 6
	xvpickve2gr.d	$a3, $xr9, 2
	st.b	$a0, $a3, 0
	vpickve2gr.h	$a0, $vr25, 7
	xvpickve2gr.d	$a3, $xr9, 3
	st.b	$a0, $a3, 0
	xvpickve2gr.d	$a3, $xr8, 1
	xvmadd.w	$xr20, $xr24, $xr0
	xvaddi.wu	$xr9, $xr20, 7
	xvpickve2gr.w	$a0, $xr9, 0
	vinsgr2vr.h	$vr10, $a0, 0
	xvpickve2gr.w	$a0, $xr9, 1
	vinsgr2vr.h	$vr10, $a0, 1
	xvpickve2gr.w	$a0, $xr9, 2
	vinsgr2vr.h	$vr10, $a0, 2
	xvpickve2gr.w	$a0, $xr9, 3
	vinsgr2vr.h	$vr10, $a0, 3
	xvpickve2gr.w	$a0, $xr9, 4
	vinsgr2vr.h	$vr10, $a0, 4
	xvpickve2gr.w	$a0, $xr9, 5
	vinsgr2vr.h	$vr10, $a0, 5
	xvpickve2gr.w	$a0, $xr9, 6
	vinsgr2vr.h	$vr10, $a0, 6
	xvpickve2gr.w	$a0, $xr9, 7
	vinsgr2vr.h	$vr10, $a0, 7
	vsrli.h	$vr9, $vr10, 4
	vpickve2gr.h	$a0, $vr9, 0
	st.b	$a0, $s8, 1
	vpickve2gr.h	$a0, $vr9, 1
	st.b	$a0, $a3, 3
	xvpickve2gr.d	$a0, $xr8, 2
	vpickve2gr.h	$a3, $vr9, 2
	st.b	$a3, $a0, 3
	xvpickve2gr.d	$a0, $xr8, 3
	vpickve2gr.h	$a3, $vr9, 3
	st.b	$a3, $a0, 3
	xvpickve2gr.d	$a0, $xr7, 0
	vpickve2gr.h	$a3, $vr9, 4
	st.b	$a3, $a0, 3
	xvpickve2gr.d	$a0, $xr7, 1
	vpickve2gr.h	$a3, $vr9, 5
	st.b	$a3, $a0, 3
	xvpickve2gr.d	$a0, $xr7, 2
	vpickve2gr.h	$a3, $vr9, 6
	st.b	$a3, $a0, 3
	xvpickve2gr.d	$a0, $xr7, 3
	vpickve2gr.h	$a3, $vr9, 7
	st.b	$a3, $a0, 3
	xvpickve2gr.d	$a0, $xr6, 0
	xvmadd.w	$xr13, $xr23, $xr0
	xvaddi.wu	$xr7, $xr13, 7
	xvpickve2gr.w	$a3, $xr7, 0
	vinsgr2vr.h	$vr8, $a3, 0
	xvpickve2gr.w	$a3, $xr7, 1
	vinsgr2vr.h	$vr8, $a3, 1
	xvpickve2gr.w	$a3, $xr7, 2
	vinsgr2vr.h	$vr8, $a3, 2
	xvpickve2gr.w	$a3, $xr7, 3
	vinsgr2vr.h	$vr8, $a3, 3
	xvpickve2gr.w	$a3, $xr7, 4
	vinsgr2vr.h	$vr8, $a3, 4
	xvpickve2gr.w	$a3, $xr7, 5
	vinsgr2vr.h	$vr8, $a3, 5
	xvpickve2gr.w	$a3, $xr7, 6
	vinsgr2vr.h	$vr8, $a3, 6
	xvpickve2gr.w	$a3, $xr7, 7
	vinsgr2vr.h	$vr8, $a3, 7
	vsrli.h	$vr7, $vr8, 4
	vpickve2gr.h	$a3, $vr7, 0
	st.b	$a3, $a0, 3
	xvpickve2gr.d	$a0, $xr6, 1
	vpickve2gr.h	$a3, $vr7, 1
	st.b	$a3, $a0, 3
	xvpickve2gr.d	$a0, $xr6, 2
	vpickve2gr.h	$a3, $vr7, 2
	st.b	$a3, $a0, 3
	xvpickve2gr.d	$a0, $xr6, 3
	vpickve2gr.h	$a3, $vr7, 3
	st.b	$a3, $a0, 3
	xvpickve2gr.d	$a0, $xr5, 0
	vpickve2gr.h	$a3, $vr7, 4
	st.b	$a3, $a0, 3
	xvpickve2gr.d	$a0, $xr5, 1
	vpickve2gr.h	$a3, $vr7, 5
	st.b	$a3, $a0, 3
	xvpickve2gr.d	$a0, $xr5, 2
	vpickve2gr.h	$a3, $vr7, 6
	st.b	$a3, $a0, 3
	xvpickve2gr.d	$a0, $xr5, 3
	vpickve2gr.h	$a3, $vr7, 7
	st.b	$a3, $a0, 3
	xvpickve2gr.d	$a0, $xr4, 0
	xvmadd.w	$xr12, $xr22, $xr0
	xvaddi.wu	$xr5, $xr12, 7
	xvpickve2gr.w	$a3, $xr5, 0
	vinsgr2vr.h	$vr6, $a3, 0
	xvpickve2gr.w	$a3, $xr5, 1
	vinsgr2vr.h	$vr6, $a3, 1
	xvpickve2gr.w	$a3, $xr5, 2
	vinsgr2vr.h	$vr6, $a3, 2
	xvpickve2gr.w	$a3, $xr5, 3
	vinsgr2vr.h	$vr6, $a3, 3
	xvpickve2gr.w	$a3, $xr5, 4
	vinsgr2vr.h	$vr6, $a3, 4
	xvpickve2gr.w	$a3, $xr5, 5
	vinsgr2vr.h	$vr6, $a3, 5
	xvpickve2gr.w	$a3, $xr5, 6
	vinsgr2vr.h	$vr6, $a3, 6
	xvpickve2gr.w	$a3, $xr5, 7
	vinsgr2vr.h	$vr6, $a3, 7
	vsrli.h	$vr5, $vr6, 4
	vpickve2gr.h	$a3, $vr5, 0
	st.b	$a3, $a0, 3
	xvpickve2gr.d	$a0, $xr4, 1
	vpickve2gr.h	$a3, $vr5, 1
	st.b	$a3, $a0, 3
	xvpickve2gr.d	$a0, $xr4, 2
	vpickve2gr.h	$a3, $vr5, 2
	st.b	$a3, $a0, 3
	xvpickve2gr.d	$a0, $xr4, 3
	vpickve2gr.h	$a3, $vr5, 3
	st.b	$a3, $a0, 3
	xvpickve2gr.d	$a0, $xr3, 0
	vpickve2gr.h	$a3, $vr5, 4
	st.b	$a3, $a0, 3
	xvpickve2gr.d	$a0, $xr3, 1
	vpickve2gr.h	$a3, $vr5, 5
	st.b	$a3, $a0, 3
	xvpickve2gr.d	$a0, $xr3, 2
	vpickve2gr.h	$a3, $vr5, 6
	st.b	$a3, $a0, 3
	xvpickve2gr.d	$a0, $xr3, 3
	vpickve2gr.h	$a3, $vr5, 7
	st.b	$a3, $a0, 3
	xvpickve2gr.d	$a0, $xr2, 0
	xvori.b	$xr3, $xr18, 0
	xvmadd.w	$xr3, $xr21, $xr0
	xvaddi.wu	$xr3, $xr3, 7
	xvpickve2gr.w	$a3, $xr3, 0
	vinsgr2vr.h	$vr4, $a3, 0
	xvpickve2gr.w	$a3, $xr3, 1
	vinsgr2vr.h	$vr4, $a3, 1
	xvpickve2gr.w	$a3, $xr3, 2
	vinsgr2vr.h	$vr4, $a3, 2
	xvpickve2gr.w	$a3, $xr3, 3
	vinsgr2vr.h	$vr4, $a3, 3
	xvpickve2gr.w	$a3, $xr3, 4
	vinsgr2vr.h	$vr4, $a3, 4
	xvpickve2gr.w	$a3, $xr3, 5
	vinsgr2vr.h	$vr4, $a3, 5
	xvpickve2gr.w	$a3, $xr3, 6
	vinsgr2vr.h	$vr4, $a3, 6
	xvpickve2gr.w	$a3, $xr3, 7
	vinsgr2vr.h	$vr4, $a3, 7
	vsrli.h	$vr3, $vr4, 4
	vpickve2gr.h	$a3, $vr3, 0
	st.b	$a3, $a0, 3
	xvpickve2gr.d	$a0, $xr2, 1
	vpickve2gr.h	$a3, $vr3, 1
	st.b	$a3, $a0, 3
	xvpickve2gr.d	$a0, $xr2, 2
	vpickve2gr.h	$a3, $vr3, 2
	st.b	$a3, $a0, 3
	xvpickve2gr.d	$a0, $xr2, 3
	vpickve2gr.h	$a3, $vr3, 3
	st.b	$a3, $a0, 3
	xvpickve2gr.d	$a0, $xr1, 0
	vpickve2gr.h	$a3, $vr3, 4
	st.b	$a3, $a0, 3
	xvpickve2gr.d	$a0, $xr1, 1
	vpickve2gr.h	$a3, $vr3, 5
	st.b	$a3, $a0, 3
	xvpickve2gr.d	$a0, $xr1, 2
	vpickve2gr.h	$a3, $vr3, 6
	st.b	$a3, $a0, 3
	xvpickve2gr.d	$a0, $xr1, 3
	vpickve2gr.h	$a3, $vr3, 7
	st.b	$a3, $a0, 3
	addi.d	$a6, $a6, -32
	addi.d	$s7, $s7, 32
	addi.d	$ra, $ra, 32
	addi.d	$s8, $s8, 64
	bnez	$a6, .LBB7_20
# %bb.21:                               # %middle.block134
                                        #   in Loop: Header=BB7_4 Depth=1
	xvpickve2gr.w	$a6, $xr18, 7
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	bne	$a2, $a0, .LBB7_7
	b	.LBB7_9
	.p2align	4, , 16
.LBB7_22:                               # %vector.memcheck
                                        #   in Loop: Header=BB7_4 Depth=1
	addi.d	$a2, $a7, -3
	bstrpick.d	$s2, $a2, 31, 0
	alsl.d	$a2, $s2, $s0, 1
	addi.d	$a7, $a2, 4
	add.d	$a2, $a6, $s2
	addi.d	$a2, $a2, 3
	sltu	$a2, $s7, $a2
	sltu	$a6, $s5, $a7
	and	$a2, $a2, $a6
	bnez	$a2, .LBB7_13
# %bb.23:                               # %vector.memcheck
                                        #   in Loop: Header=BB7_4 Depth=1
	add.d	$a0, $a0, $s2
	addi.d	$a0, $a0, 3
	sltu	$a0, $s7, $a0
	sltu	$a2, $s6, $a7
	and	$a0, $a0, $a2
	bnez	$a0, .LBB7_13
# %bb.24:                               # %vector.ph
                                        #   in Loop: Header=BB7_4 Depth=1
	bstrpick.d	$a7, $s1, 31, 0
	bstrpick.d	$a0, $a7, 31, 5
	slli.d	$a6, $a0, 5
	slli.d	$a0, $a0, 6
	add.d	$s2, $s7, $a0
	sub.d	$s1, $s1, $a6
	add.d	$s0, $s0, $a0
	add.d	$s3, $s6, $a6
	add.d	$s4, $s5, $a6
	xvinsgr2vr.w	$xr1, $s8, 0
	xvpermi.d	$xr1, $xr1, 68
	xvshuf4i.w	$xr21, $xr1, 0
	xvinsgr2vr.w	$xr1, $a3, 0
	xvpermi.d	$xr1, $xr1, 68
	xvshuf4i.w	$xr18, $xr1, 0
	move	$a3, $a6
	.p2align	4, , 16
.LBB7_25:                               # %vector.body
                                        #   Parent Loop BB7_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvld	$xr1, $t0, %pc_lo12(.LCPI7_0)
	xvreplgr2vr.d	$xr2, $s7
	xvld	$xr3, $t1, %pc_lo12(.LCPI7_1)
	xvld	$xr4, $t2, %pc_lo12(.LCPI7_2)
	xvld	$xr5, $t3, %pc_lo12(.LCPI7_3)
	xvadd.d	$xr9, $xr2, $xr1
	xvadd.d	$xr10, $xr2, $xr3
	xvadd.d	$xr11, $xr2, $xr4
	xvadd.d	$xr14, $xr2, $xr5
	xvld	$xr6, $t4, %pc_lo12(.LCPI7_4)
	xvld	$xr7, $t5, %pc_lo12(.LCPI7_5)
	xvld	$xr8, $t6, %pc_lo12(.LCPI7_6)
	xvld	$xr12, $t7, %pc_lo12(.LCPI7_7)
	xvadd.d	$xr15, $xr2, $xr6
	xvadd.d	$xr16, $xr2, $xr7
	xvadd.d	$xr17, $xr2, $xr8
	xvadd.d	$xr19, $xr2, $xr12
	addi.d	$a0, $s7, -2
	xvreplgr2vr.d	$xr20, $a0
	xvadd.d	$xr1, $xr20, $xr1
	xvadd.d	$xr2, $xr20, $xr3
	xvld	$xr13, $s5, 0
	xvadd.d	$xr3, $xr20, $xr4
	xvadd.d	$xr4, $xr20, $xr5
	xvadd.d	$xr5, $xr20, $xr6
	xvst	$xr13, $sp, 64
	vld	$vr13, $sp, 64
	xvadd.d	$xr6, $xr20, $xr7
	xvadd.d	$xr7, $xr20, $xr8
	xvadd.d	$xr8, $xr20, $xr12
	vpickve2gr.b	$a0, $vr13, 0
	andi	$a0, $a0, 255
	xvinsgr2vr.w	$xr22, $a0, 0
	vpickve2gr.b	$a0, $vr13, 1
	andi	$a0, $a0, 255
	xvinsgr2vr.w	$xr22, $a0, 1
	vpickve2gr.b	$a0, $vr13, 2
	andi	$a0, $a0, 255
	xvinsgr2vr.w	$xr22, $a0, 2
	vpickve2gr.b	$a0, $vr13, 3
	andi	$a0, $a0, 255
	xvinsgr2vr.w	$xr22, $a0, 3
	vpickve2gr.b	$a0, $vr13, 4
	andi	$a0, $a0, 255
	xvinsgr2vr.w	$xr22, $a0, 4
	vpickve2gr.b	$a0, $vr13, 5
	andi	$a0, $a0, 255
	xvinsgr2vr.w	$xr22, $a0, 5
	vpickve2gr.b	$a0, $vr13, 6
	andi	$a0, $a0, 255
	xvinsgr2vr.w	$xr22, $a0, 6
	vpickve2gr.b	$a0, $vr13, 7
	andi	$a0, $a0, 255
	xvinsgr2vr.w	$xr22, $a0, 7
	vpickve2gr.b	$a0, $vr13, 8
	andi	$a0, $a0, 255
	xvinsgr2vr.w	$xr23, $a0, 0
	vpickve2gr.b	$a0, $vr13, 9
	andi	$a0, $a0, 255
	xvinsgr2vr.w	$xr23, $a0, 1
	vpickve2gr.b	$a0, $vr13, 10
	andi	$a0, $a0, 255
	xvinsgr2vr.w	$xr23, $a0, 2
	vpickve2gr.b	$a0, $vr13, 11
	andi	$a0, $a0, 255
	xvinsgr2vr.w	$xr23, $a0, 3
	vpickve2gr.b	$a0, $vr13, 12
	andi	$a0, $a0, 255
	xvinsgr2vr.w	$xr23, $a0, 4
	vpickve2gr.b	$a0, $vr13, 13
	andi	$a0, $a0, 255
	xvinsgr2vr.w	$xr23, $a0, 5
	vpickve2gr.b	$a0, $vr13, 14
	andi	$a0, $a0, 255
	xvinsgr2vr.w	$xr23, $a0, 6
	vld	$vr12, $sp, 80
	vpickve2gr.b	$a0, $vr13, 15
	andi	$a0, $a0, 255
	xvinsgr2vr.w	$xr23, $a0, 7
	vpickve2gr.b	$a0, $vr12, 0
	andi	$a0, $a0, 255
	xvinsgr2vr.w	$xr24, $a0, 0
	vpickve2gr.b	$a0, $vr12, 1
	andi	$a0, $a0, 255
	xvinsgr2vr.w	$xr24, $a0, 1
	vpickve2gr.b	$a0, $vr12, 2
	andi	$a0, $a0, 255
	xvinsgr2vr.w	$xr24, $a0, 2
	vpickve2gr.b	$a0, $vr12, 3
	andi	$a0, $a0, 255
	xvinsgr2vr.w	$xr24, $a0, 3
	vpickve2gr.b	$a0, $vr12, 4
	andi	$a0, $a0, 255
	xvinsgr2vr.w	$xr24, $a0, 4
	vpickve2gr.b	$a0, $vr12, 5
	andi	$a0, $a0, 255
	xvinsgr2vr.w	$xr24, $a0, 5
	vpickve2gr.b	$a0, $vr12, 6
	andi	$a0, $a0, 255
	xvinsgr2vr.w	$xr24, $a0, 6
	vpickve2gr.b	$a0, $vr12, 7
	andi	$a0, $a0, 255
	xvinsgr2vr.w	$xr24, $a0, 7
	vpickve2gr.b	$a0, $vr12, 8
	andi	$a0, $a0, 255
	xvinsgr2vr.w	$xr25, $a0, 0
	vpickve2gr.b	$a0, $vr12, 9
	andi	$a0, $a0, 255
	xvinsgr2vr.w	$xr25, $a0, 1
	vpickve2gr.b	$a0, $vr12, 10
	andi	$a0, $a0, 255
	xvinsgr2vr.w	$xr25, $a0, 2
	vpickve2gr.b	$a0, $vr12, 11
	andi	$a0, $a0, 255
	xvinsgr2vr.w	$xr25, $a0, 3
	vpickve2gr.b	$a0, $vr12, 12
	andi	$a0, $a0, 255
	xvinsgr2vr.w	$xr25, $a0, 4
	vpickve2gr.b	$a0, $vr12, 13
	andi	$a0, $a0, 255
	xvinsgr2vr.w	$xr25, $a0, 5
	xvld	$xr13, $s6, 0
	vpickve2gr.b	$a0, $vr12, 14
	andi	$a0, $a0, 255
	xvinsgr2vr.w	$xr25, $a0, 6
	xvst	$xr13, $sp, 96
	vld	$vr27, $sp, 96
	vpickve2gr.b	$a0, $vr12, 15
	andi	$a0, $a0, 255
	xvinsgr2vr.w	$xr25, $a0, 7
	vpickve2gr.b	$a0, $vr27, 0
	andi	$a0, $a0, 255
	xvinsgr2vr.w	$xr20, $a0, 0
	vpickve2gr.b	$a0, $vr27, 1
	andi	$a0, $a0, 255
	xvinsgr2vr.w	$xr20, $a0, 1
	vpickve2gr.b	$a0, $vr27, 2
	andi	$a0, $a0, 255
	xvinsgr2vr.w	$xr20, $a0, 2
	vpickve2gr.b	$a0, $vr27, 3
	andi	$a0, $a0, 255
	xvinsgr2vr.w	$xr20, $a0, 3
	vpickve2gr.b	$a0, $vr27, 4
	andi	$a0, $a0, 255
	xvinsgr2vr.w	$xr20, $a0, 4
	vpickve2gr.b	$a0, $vr27, 5
	andi	$a0, $a0, 255
	xvinsgr2vr.w	$xr20, $a0, 5
	vpickve2gr.b	$a0, $vr27, 6
	andi	$a0, $a0, 255
	xvinsgr2vr.w	$xr20, $a0, 6
	vpickve2gr.b	$a0, $vr27, 7
	andi	$a0, $a0, 255
	xvinsgr2vr.w	$xr20, $a0, 7
	vpickve2gr.b	$a0, $vr27, 8
	andi	$a0, $a0, 255
	xvinsgr2vr.w	$xr13, $a0, 0
	vpickve2gr.b	$a0, $vr27, 9
	andi	$a0, $a0, 255
	xvinsgr2vr.w	$xr13, $a0, 1
	vpickve2gr.b	$a0, $vr27, 10
	andi	$a0, $a0, 255
	xvinsgr2vr.w	$xr13, $a0, 2
	vpickve2gr.b	$a0, $vr27, 11
	andi	$a0, $a0, 255
	xvinsgr2vr.w	$xr13, $a0, 3
	vpickve2gr.b	$a0, $vr27, 12
	andi	$a0, $a0, 255
	xvinsgr2vr.w	$xr13, $a0, 4
	vpickve2gr.b	$a0, $vr27, 13
	andi	$a0, $a0, 255
	xvinsgr2vr.w	$xr13, $a0, 5
	vpickve2gr.b	$a0, $vr27, 14
	andi	$a0, $a0, 255
	xvinsgr2vr.w	$xr13, $a0, 6
	vld	$vr26, $sp, 112
	vpickve2gr.b	$a0, $vr27, 15
	andi	$a0, $a0, 255
	xvinsgr2vr.w	$xr13, $a0, 7
	vpickve2gr.b	$a0, $vr26, 0
	andi	$a0, $a0, 255
	xvinsgr2vr.w	$xr12, $a0, 0
	vpickve2gr.b	$a0, $vr26, 1
	andi	$a0, $a0, 255
	xvinsgr2vr.w	$xr12, $a0, 1
	vpickve2gr.b	$a0, $vr26, 2
	andi	$a0, $a0, 255
	xvinsgr2vr.w	$xr12, $a0, 2
	vpickve2gr.b	$a0, $vr26, 3
	andi	$a0, $a0, 255
	xvinsgr2vr.w	$xr12, $a0, 3
	vpickve2gr.b	$a0, $vr26, 4
	andi	$a0, $a0, 255
	xvinsgr2vr.w	$xr12, $a0, 4
	vpickve2gr.b	$a0, $vr26, 5
	andi	$a0, $a0, 255
	xvinsgr2vr.w	$xr12, $a0, 5
	vpickve2gr.b	$a0, $vr26, 6
	andi	$a0, $a0, 255
	xvinsgr2vr.w	$xr12, $a0, 6
	vpickve2gr.b	$a0, $vr26, 7
	andi	$a0, $a0, 255
	xvinsgr2vr.w	$xr12, $a0, 7
	vpickve2gr.b	$a0, $vr26, 8
	andi	$a0, $a0, 255
	xvpickve2gr.w	$s8, $xr18, 7
	xvpermi.d	$xr27, $xr18, 78
	xvinsgr2vr.w	$xr18, $a0, 0
	vpickve2gr.b	$a0, $vr26, 9
	andi	$a0, $a0, 255
	xvinsgr2vr.w	$xr18, $a0, 1
	vpickve2gr.b	$a0, $vr26, 10
	andi	$a0, $a0, 255
	xvinsgr2vr.w	$xr18, $a0, 2
	vpickve2gr.b	$a0, $vr26, 11
	andi	$a0, $a0, 255
	xvinsgr2vr.w	$xr18, $a0, 3
	vpickve2gr.b	$a0, $vr26, 12
	andi	$a0, $a0, 255
	xvinsgr2vr.w	$xr18, $a0, 4
	vpickve2gr.b	$a0, $vr26, 13
	andi	$a0, $a0, 255
	xvinsgr2vr.w	$xr18, $a0, 5
	vpickve2gr.b	$a0, $vr26, 14
	andi	$a0, $a0, 255
	xvinsgr2vr.w	$xr18, $a0, 6
	vpickve2gr.b	$a0, $vr26, 15
	andi	$a0, $a0, 255
	xvinsgr2vr.w	$xr18, $a0, 7
	xvmadd.w	$xr18, $xr25, $xr0
	xvmadd.w	$xr12, $xr24, $xr0
	xvmadd.w	$xr13, $xr23, $xr0
	xvmadd.w	$xr20, $xr22, $xr0
	xvpickve2gr.w	$a0, $xr20, 0
	xvinsgr2vr.w	$xr24, $s8, 0
	xvinsgr2vr.w	$xr24, $a0, 1
	xvpickve2gr.w	$a0, $xr20, 1
	xvinsgr2vr.w	$xr24, $a0, 2
	xvpickve2gr.w	$a0, $xr20, 2
	xvinsgr2vr.w	$xr24, $a0, 3
	xvpickve2gr.w	$a0, $xr20, 3
	xvinsgr2vr.w	$xr24, $a0, 4
	xvpickve2gr.w	$a0, $xr20, 4
	xvinsgr2vr.w	$xr24, $a0, 5
	xvpickve2gr.w	$a0, $xr20, 5
	xvinsgr2vr.w	$xr24, $a0, 6
	xvpickve2gr.w	$a0, $xr20, 6
	xvinsgr2vr.w	$xr24, $a0, 7
	xvpickve2gr.w	$a0, $xr20, 7
	xvinsgr2vr.w	$xr23, $a0, 0
	xvpickve2gr.w	$a0, $xr13, 0
	xvinsgr2vr.w	$xr23, $a0, 1
	xvpickve2gr.w	$a0, $xr13, 1
	xvinsgr2vr.w	$xr23, $a0, 2
	xvpickve2gr.w	$a0, $xr13, 2
	xvinsgr2vr.w	$xr23, $a0, 3
	xvpickve2gr.w	$a0, $xr13, 3
	xvinsgr2vr.w	$xr23, $a0, 4
	xvpickve2gr.w	$a0, $xr13, 4
	xvinsgr2vr.w	$xr23, $a0, 5
	xvpickve2gr.w	$a0, $xr13, 5
	xvinsgr2vr.w	$xr23, $a0, 6
	xvpickve2gr.w	$a0, $xr13, 6
	xvinsgr2vr.w	$xr23, $a0, 7
	xvpickve2gr.w	$a0, $xr13, 7
	xvinsgr2vr.w	$xr22, $a0, 0
	xvpickve2gr.w	$a0, $xr12, 0
	xvinsgr2vr.w	$xr22, $a0, 1
	xvpickve2gr.w	$a0, $xr12, 1
	xvinsgr2vr.w	$xr22, $a0, 2
	xvpickve2gr.w	$a0, $xr12, 2
	xvinsgr2vr.w	$xr22, $a0, 3
	xvpickve2gr.w	$a0, $xr12, 3
	xvinsgr2vr.w	$xr22, $a0, 4
	xvpickve2gr.w	$a0, $xr12, 4
	xvinsgr2vr.w	$xr22, $a0, 5
	xvpickve2gr.w	$a0, $xr12, 5
	xvinsgr2vr.w	$xr22, $a0, 6
	xvpickve2gr.w	$a0, $xr12, 6
	xvinsgr2vr.w	$xr22, $a0, 7
	xvpickve2gr.w	$a0, $xr12, 7
	xvpermi.d	$xr25, $xr21, 78
	xvinsgr2vr.w	$xr21, $a0, 0
	xvpickve2gr.w	$a0, $xr18, 0
	xvinsgr2vr.w	$xr21, $a0, 1
	xvpickve2gr.w	$a0, $xr18, 1
	xvinsgr2vr.w	$xr21, $a0, 2
	xvpickve2gr.w	$a0, $xr18, 2
	xvinsgr2vr.w	$xr21, $a0, 3
	xvpickve2gr.w	$a0, $xr18, 3
	xvinsgr2vr.w	$xr21, $a0, 4
	xvpickve2gr.w	$a0, $xr18, 4
	xvinsgr2vr.w	$xr21, $a0, 5
	xvpickve2gr.w	$a0, $xr18, 5
	xvld	$xr26, $t8, %pc_lo12(.LCPI7_8)
	xvinsgr2vr.w	$xr21, $a0, 6
	xvpickve2gr.w	$s8, $xr18, 6
	xvinsgr2vr.w	$xr21, $s8, 7
	xvshuf.w	$xr26, $xr27, $xr25
	xvpickve2gr.d	$a0, $xr26, 0
	xvinsgr2vr.d	$xr25, $a0, 0
	xvpickve2gr.d	$a0, $xr20, 0
	xvinsgr2vr.d	$xr25, $a0, 1
	xvpickve2gr.d	$a0, $xr20, 1
	xvinsgr2vr.d	$xr25, $a0, 2
	xvpickve2gr.d	$a0, $xr20, 2
	xvinsgr2vr.d	$xr25, $a0, 3
	xvpickve2gr.d	$a0, $xr20, 3
	xvinsgr2vr.d	$xr26, $a0, 0
	xvpickve2gr.d	$a0, $xr13, 0
	xvinsgr2vr.d	$xr26, $a0, 1
	xvpickve2gr.d	$a0, $xr13, 1
	xvinsgr2vr.d	$xr26, $a0, 2
	xvpickve2gr.d	$a0, $xr13, 2
	xvinsgr2vr.d	$xr26, $a0, 3
	xvpickve2gr.d	$a0, $xr13, 3
	xvinsgr2vr.d	$xr29, $a0, 0
	xvpickve2gr.d	$a0, $xr12, 0
	xvinsgr2vr.d	$xr29, $a0, 1
	xvpickve2gr.d	$a0, $xr12, 1
	xvinsgr2vr.d	$xr29, $a0, 2
	xvpickve2gr.d	$a0, $xr12, 2
	xvinsgr2vr.d	$xr29, $a0, 3
	xvpickve2gr.d	$a0, $xr12, 3
	xvinsgr2vr.d	$xr30, $a0, 0
	xvpickve2gr.d	$a0, $xr18, 0
	xvinsgr2vr.d	$xr30, $a0, 1
	xvpickve2gr.d	$a0, $xr18, 1
	xvinsgr2vr.d	$xr30, $a0, 2
	xvpickve2gr.d	$a0, $xr18, 2
	xvinsgr2vr.d	$xr30, $a0, 3
	xvmadd.w	$xr30, $xr21, $xr0
	xvmadd.w	$xr29, $xr22, $xr0
	xvmadd.w	$xr26, $xr23, $xr0
	xvmadd.w	$xr25, $xr24, $xr0
	xvaddi.wu	$xr27, $xr25, 8
	xvaddi.wu	$xr28, $xr26, 8
	xvaddi.wu	$xr26, $xr29, 8
	xvaddi.wu	$xr25, $xr30, 8
	xvpickve2gr.w	$a0, $xr25, 0
	vinsgr2vr.h	$vr29, $a0, 0
	xvpickve2gr.w	$a0, $xr25, 1
	vinsgr2vr.h	$vr29, $a0, 1
	xvpickve2gr.w	$a0, $xr25, 2
	vinsgr2vr.h	$vr29, $a0, 2
	xvpickve2gr.w	$a0, $xr25, 3
	vinsgr2vr.h	$vr29, $a0, 3
	xvpickve2gr.w	$a0, $xr25, 4
	vinsgr2vr.h	$vr29, $a0, 4
	xvpickve2gr.w	$a0, $xr25, 5
	vinsgr2vr.h	$vr29, $a0, 5
	xvpickve2gr.w	$a0, $xr25, 6
	vinsgr2vr.h	$vr29, $a0, 6
	xvpickve2gr.w	$a0, $xr25, 7
	vinsgr2vr.h	$vr29, $a0, 7
	vsrli.h	$vr25, $vr29, 4
	xvpickve2gr.w	$a0, $xr26, 0
	vinsgr2vr.h	$vr29, $a0, 0
	xvpickve2gr.w	$a0, $xr26, 1
	vinsgr2vr.h	$vr29, $a0, 1
	xvpickve2gr.w	$a0, $xr26, 2
	vinsgr2vr.h	$vr29, $a0, 2
	xvpickve2gr.w	$a0, $xr26, 3
	vinsgr2vr.h	$vr29, $a0, 3
	xvpickve2gr.w	$a0, $xr26, 4
	vinsgr2vr.h	$vr29, $a0, 4
	xvpickve2gr.w	$a0, $xr26, 5
	vinsgr2vr.h	$vr29, $a0, 5
	xvpickve2gr.w	$a0, $xr26, 6
	vinsgr2vr.h	$vr29, $a0, 6
	xvpickve2gr.w	$a0, $xr26, 7
	vinsgr2vr.h	$vr29, $a0, 7
	vsrli.h	$vr26, $vr29, 4
	xvpickve2gr.w	$a0, $xr28, 0
	vinsgr2vr.h	$vr29, $a0, 0
	xvpickve2gr.w	$a0, $xr28, 1
	vinsgr2vr.h	$vr29, $a0, 1
	xvpickve2gr.w	$a0, $xr28, 2
	vinsgr2vr.h	$vr29, $a0, 2
	xvpickve2gr.w	$a0, $xr28, 3
	vinsgr2vr.h	$vr29, $a0, 3
	xvpickve2gr.w	$a0, $xr28, 4
	vinsgr2vr.h	$vr29, $a0, 4
	xvpickve2gr.w	$a0, $xr28, 5
	vinsgr2vr.h	$vr29, $a0, 5
	xvpickve2gr.w	$a0, $xr28, 6
	vinsgr2vr.h	$vr29, $a0, 6
	xvpickve2gr.w	$a0, $xr28, 7
	vinsgr2vr.h	$vr29, $a0, 7
	vsrli.h	$vr28, $vr29, 4
	xvpickve2gr.w	$a0, $xr27, 0
	vinsgr2vr.h	$vr29, $a0, 0
	xvpickve2gr.w	$a0, $xr27, 1
	vinsgr2vr.h	$vr29, $a0, 1
	xvpickve2gr.w	$a0, $xr27, 2
	vinsgr2vr.h	$vr29, $a0, 2
	xvpickve2gr.w	$a0, $xr27, 3
	vinsgr2vr.h	$vr29, $a0, 3
	xvpickve2gr.w	$a0, $xr27, 4
	vinsgr2vr.h	$vr29, $a0, 4
	xvpickve2gr.w	$a0, $xr27, 5
	vinsgr2vr.h	$vr29, $a0, 5
	xvpickve2gr.w	$a0, $xr27, 6
	vinsgr2vr.h	$vr29, $a0, 6
	xvpickve2gr.w	$a0, $xr27, 7
	vinsgr2vr.h	$vr29, $a0, 7
	vsrli.h	$vr27, $vr29, 4
	vpickve2gr.h	$a0, $vr27, 0
	xvpickve2gr.d	$a2, $xr19, 0
	st.b	$a0, $a2, 0
	vpickve2gr.h	$a0, $vr27, 1
	xvpickve2gr.d	$a2, $xr19, 1
	st.b	$a0, $a2, 0
	vpickve2gr.h	$a0, $vr27, 2
	xvpickve2gr.d	$a2, $xr19, 2
	st.b	$a0, $a2, 0
	vpickve2gr.h	$a0, $vr27, 3
	xvpickve2gr.d	$a2, $xr19, 3
	st.b	$a0, $a2, 0
	vpickve2gr.h	$a0, $vr27, 4
	xvpickve2gr.d	$a2, $xr17, 0
	st.b	$a0, $a2, 0
	vpickve2gr.h	$a0, $vr27, 5
	xvpickve2gr.d	$a2, $xr17, 1
	st.b	$a0, $a2, 0
	vpickve2gr.h	$a0, $vr27, 6
	xvpickve2gr.d	$a2, $xr17, 2
	st.b	$a0, $a2, 0
	vpickve2gr.h	$a0, $vr27, 7
	xvpickve2gr.d	$a2, $xr17, 3
	st.b	$a0, $a2, 0
	vpickve2gr.h	$a0, $vr28, 0
	xvpickve2gr.d	$a2, $xr16, 0
	st.b	$a0, $a2, 0
	vpickve2gr.h	$a0, $vr28, 1
	xvpickve2gr.d	$a2, $xr16, 1
	st.b	$a0, $a2, 0
	vpickve2gr.h	$a0, $vr28, 2
	xvpickve2gr.d	$a2, $xr16, 2
	st.b	$a0, $a2, 0
	vpickve2gr.h	$a0, $vr28, 3
	xvpickve2gr.d	$a2, $xr16, 3
	st.b	$a0, $a2, 0
	vpickve2gr.h	$a0, $vr28, 4
	xvpickve2gr.d	$a2, $xr15, 0
	st.b	$a0, $a2, 0
	vpickve2gr.h	$a0, $vr28, 5
	xvpickve2gr.d	$a2, $xr15, 1
	st.b	$a0, $a2, 0
	vpickve2gr.h	$a0, $vr28, 6
	xvpickve2gr.d	$a2, $xr15, 2
	st.b	$a0, $a2, 0
	vpickve2gr.h	$a0, $vr28, 7
	xvpickve2gr.d	$a2, $xr15, 3
	st.b	$a0, $a2, 0
	vpickve2gr.h	$a0, $vr26, 0
	xvpickve2gr.d	$a2, $xr14, 0
	st.b	$a0, $a2, 0
	vpickve2gr.h	$a0, $vr26, 1
	xvpickve2gr.d	$a2, $xr14, 1
	st.b	$a0, $a2, 0
	vpickve2gr.h	$a0, $vr26, 2
	xvpickve2gr.d	$a2, $xr14, 2
	st.b	$a0, $a2, 0
	vpickve2gr.h	$a0, $vr26, 3
	xvpickve2gr.d	$a2, $xr14, 3
	st.b	$a0, $a2, 0
	vpickve2gr.h	$a0, $vr26, 4
	xvpickve2gr.d	$a2, $xr11, 0
	st.b	$a0, $a2, 0
	vpickve2gr.h	$a0, $vr26, 5
	xvpickve2gr.d	$a2, $xr11, 1
	st.b	$a0, $a2, 0
	vpickve2gr.h	$a0, $vr26, 6
	xvpickve2gr.d	$a2, $xr11, 2
	st.b	$a0, $a2, 0
	vpickve2gr.h	$a0, $vr26, 7
	xvpickve2gr.d	$a2, $xr11, 3
	st.b	$a0, $a2, 0
	vpickve2gr.h	$a0, $vr25, 0
	xvpickve2gr.d	$a2, $xr10, 0
	st.b	$a0, $a2, 0
	vpickve2gr.h	$a0, $vr25, 1
	xvpickve2gr.d	$a2, $xr10, 1
	st.b	$a0, $a2, 0
	vpickve2gr.h	$a0, $vr25, 2
	xvpickve2gr.d	$a2, $xr10, 2
	st.b	$a0, $a2, 0
	vpickve2gr.h	$a0, $vr25, 3
	xvpickve2gr.d	$a2, $xr10, 3
	st.b	$a0, $a2, 0
	vpickve2gr.h	$a0, $vr25, 4
	xvpickve2gr.d	$a2, $xr9, 0
	st.b	$a0, $a2, 0
	vpickve2gr.h	$a0, $vr25, 5
	xvpickve2gr.d	$a2, $xr9, 1
	st.b	$a0, $a2, 0
	vpickve2gr.h	$a0, $vr25, 6
	xvpickve2gr.d	$a2, $xr9, 2
	st.b	$a0, $a2, 0
	vpickve2gr.h	$a0, $vr25, 7
	xvpickve2gr.d	$a2, $xr9, 3
	st.b	$a0, $a2, 0
	xvpickve2gr.d	$a0, $xr8, 1
	xvmadd.w	$xr20, $xr24, $xr0
	xvaddi.wu	$xr9, $xr20, 7
	xvpickve2gr.w	$a2, $xr9, 0
	vinsgr2vr.h	$vr10, $a2, 0
	xvpickve2gr.w	$a2, $xr9, 1
	vinsgr2vr.h	$vr10, $a2, 1
	xvpickve2gr.w	$a2, $xr9, 2
	vinsgr2vr.h	$vr10, $a2, 2
	xvpickve2gr.w	$a2, $xr9, 3
	vinsgr2vr.h	$vr10, $a2, 3
	xvpickve2gr.w	$a2, $xr9, 4
	vinsgr2vr.h	$vr10, $a2, 4
	xvpickve2gr.w	$a2, $xr9, 5
	vinsgr2vr.h	$vr10, $a2, 5
	xvpickve2gr.w	$a2, $xr9, 6
	vinsgr2vr.h	$vr10, $a2, 6
	xvpickve2gr.w	$a2, $xr9, 7
	vinsgr2vr.h	$vr10, $a2, 7
	vsrli.h	$vr9, $vr10, 4
	vpickve2gr.h	$a2, $vr9, 0
	st.b	$a2, $s7, 1
	vpickve2gr.h	$a2, $vr9, 1
	st.b	$a2, $a0, 3
	xvpickve2gr.d	$a0, $xr8, 2
	vpickve2gr.h	$a2, $vr9, 2
	st.b	$a2, $a0, 3
	xvpickve2gr.d	$a0, $xr8, 3
	vpickve2gr.h	$a2, $vr9, 3
	st.b	$a2, $a0, 3
	xvpickve2gr.d	$a0, $xr7, 0
	vpickve2gr.h	$a2, $vr9, 4
	st.b	$a2, $a0, 3
	xvpickve2gr.d	$a0, $xr7, 1
	vpickve2gr.h	$a2, $vr9, 5
	st.b	$a2, $a0, 3
	xvpickve2gr.d	$a0, $xr7, 2
	vpickve2gr.h	$a2, $vr9, 6
	st.b	$a2, $a0, 3
	xvpickve2gr.d	$a0, $xr7, 3
	vpickve2gr.h	$a2, $vr9, 7
	st.b	$a2, $a0, 3
	xvpickve2gr.d	$a0, $xr6, 0
	xvmadd.w	$xr13, $xr23, $xr0
	xvaddi.wu	$xr7, $xr13, 7
	xvpickve2gr.w	$a2, $xr7, 0
	vinsgr2vr.h	$vr8, $a2, 0
	xvpickve2gr.w	$a2, $xr7, 1
	vinsgr2vr.h	$vr8, $a2, 1
	xvpickve2gr.w	$a2, $xr7, 2
	vinsgr2vr.h	$vr8, $a2, 2
	xvpickve2gr.w	$a2, $xr7, 3
	vinsgr2vr.h	$vr8, $a2, 3
	xvpickve2gr.w	$a2, $xr7, 4
	vinsgr2vr.h	$vr8, $a2, 4
	xvpickve2gr.w	$a2, $xr7, 5
	vinsgr2vr.h	$vr8, $a2, 5
	xvpickve2gr.w	$a2, $xr7, 6
	vinsgr2vr.h	$vr8, $a2, 6
	xvpickve2gr.w	$a2, $xr7, 7
	vinsgr2vr.h	$vr8, $a2, 7
	vsrli.h	$vr7, $vr8, 4
	vpickve2gr.h	$a2, $vr7, 0
	st.b	$a2, $a0, 3
	xvpickve2gr.d	$a0, $xr6, 1
	vpickve2gr.h	$a2, $vr7, 1
	st.b	$a2, $a0, 3
	xvpickve2gr.d	$a0, $xr6, 2
	vpickve2gr.h	$a2, $vr7, 2
	st.b	$a2, $a0, 3
	xvpickve2gr.d	$a0, $xr6, 3
	vpickve2gr.h	$a2, $vr7, 3
	st.b	$a2, $a0, 3
	xvpickve2gr.d	$a0, $xr5, 0
	vpickve2gr.h	$a2, $vr7, 4
	st.b	$a2, $a0, 3
	xvpickve2gr.d	$a0, $xr5, 1
	vpickve2gr.h	$a2, $vr7, 5
	st.b	$a2, $a0, 3
	xvpickve2gr.d	$a0, $xr5, 2
	vpickve2gr.h	$a2, $vr7, 6
	st.b	$a2, $a0, 3
	xvpickve2gr.d	$a0, $xr5, 3
	vpickve2gr.h	$a2, $vr7, 7
	st.b	$a2, $a0, 3
	xvpickve2gr.d	$a0, $xr4, 0
	xvmadd.w	$xr12, $xr22, $xr0
	xvaddi.wu	$xr5, $xr12, 7
	xvpickve2gr.w	$a2, $xr5, 0
	vinsgr2vr.h	$vr6, $a2, 0
	xvpickve2gr.w	$a2, $xr5, 1
	vinsgr2vr.h	$vr6, $a2, 1
	xvpickve2gr.w	$a2, $xr5, 2
	vinsgr2vr.h	$vr6, $a2, 2
	xvpickve2gr.w	$a2, $xr5, 3
	vinsgr2vr.h	$vr6, $a2, 3
	xvpickve2gr.w	$a2, $xr5, 4
	vinsgr2vr.h	$vr6, $a2, 4
	xvpickve2gr.w	$a2, $xr5, 5
	vinsgr2vr.h	$vr6, $a2, 5
	xvpickve2gr.w	$a2, $xr5, 6
	vinsgr2vr.h	$vr6, $a2, 6
	xvpickve2gr.w	$a2, $xr5, 7
	vinsgr2vr.h	$vr6, $a2, 7
	vsrli.h	$vr5, $vr6, 4
	vpickve2gr.h	$a2, $vr5, 0
	st.b	$a2, $a0, 3
	xvpickve2gr.d	$a0, $xr4, 1
	vpickve2gr.h	$a2, $vr5, 1
	st.b	$a2, $a0, 3
	xvpickve2gr.d	$a0, $xr4, 2
	vpickve2gr.h	$a2, $vr5, 2
	st.b	$a2, $a0, 3
	xvpickve2gr.d	$a0, $xr4, 3
	vpickve2gr.h	$a2, $vr5, 3
	st.b	$a2, $a0, 3
	xvpickve2gr.d	$a0, $xr3, 0
	vpickve2gr.h	$a2, $vr5, 4
	st.b	$a2, $a0, 3
	xvpickve2gr.d	$a0, $xr3, 1
	vpickve2gr.h	$a2, $vr5, 5
	st.b	$a2, $a0, 3
	xvpickve2gr.d	$a0, $xr3, 2
	vpickve2gr.h	$a2, $vr5, 6
	st.b	$a2, $a0, 3
	xvpickve2gr.d	$a0, $xr3, 3
	vpickve2gr.h	$a2, $vr5, 7
	st.b	$a2, $a0, 3
	xvpickve2gr.d	$a0, $xr2, 0
	xvori.b	$xr3, $xr18, 0
	xvmadd.w	$xr3, $xr21, $xr0
	xvaddi.wu	$xr3, $xr3, 7
	xvpickve2gr.w	$a2, $xr3, 0
	vinsgr2vr.h	$vr4, $a2, 0
	xvpickve2gr.w	$a2, $xr3, 1
	vinsgr2vr.h	$vr4, $a2, 1
	xvpickve2gr.w	$a2, $xr3, 2
	vinsgr2vr.h	$vr4, $a2, 2
	xvpickve2gr.w	$a2, $xr3, 3
	vinsgr2vr.h	$vr4, $a2, 3
	xvpickve2gr.w	$a2, $xr3, 4
	vinsgr2vr.h	$vr4, $a2, 4
	xvpickve2gr.w	$a2, $xr3, 5
	vinsgr2vr.h	$vr4, $a2, 5
	xvpickve2gr.w	$a2, $xr3, 6
	vinsgr2vr.h	$vr4, $a2, 6
	xvpickve2gr.w	$a2, $xr3, 7
	vinsgr2vr.h	$vr4, $a2, 7
	vsrli.h	$vr3, $vr4, 4
	vpickve2gr.h	$a2, $vr3, 0
	st.b	$a2, $a0, 3
	xvpickve2gr.d	$a0, $xr2, 1
	vpickve2gr.h	$a2, $vr3, 1
	st.b	$a2, $a0, 3
	xvpickve2gr.d	$a0, $xr2, 2
	vpickve2gr.h	$a2, $vr3, 2
	st.b	$a2, $a0, 3
	xvpickve2gr.d	$a0, $xr2, 3
	vpickve2gr.h	$a2, $vr3, 3
	st.b	$a2, $a0, 3
	xvpickve2gr.d	$a0, $xr1, 0
	vpickve2gr.h	$a2, $vr3, 4
	st.b	$a2, $a0, 3
	xvpickve2gr.d	$a0, $xr1, 1
	vpickve2gr.h	$a2, $vr3, 5
	st.b	$a2, $a0, 3
	xvpickve2gr.d	$a0, $xr1, 2
	vpickve2gr.h	$a2, $vr3, 6
	st.b	$a2, $a0, 3
	xvpickve2gr.d	$a0, $xr1, 3
	vpickve2gr.h	$a2, $vr3, 7
	st.b	$a2, $a0, 3
	addi.d	$a3, $a3, -32
	addi.d	$s5, $s5, 32
	addi.d	$s6, $s6, 32
	addi.d	$s7, $s7, 64
	bnez	$a3, .LBB7_25
# %bb.26:                               # %middle.block
                                        #   in Loop: Header=BB7_4 Depth=1
	xvpickve2gr.w	$a3, $xr18, 7
	bne	$a6, $a7, .LBB7_14
	b	.LBB7_16
.LBB7_27:                               # %._crit_edge68
	addi.d	$sp, $fp, -352
	fld.d	$fs6, $sp, 208                  # 8-byte Folded Reload
	fld.d	$fs5, $sp, 216                  # 8-byte Folded Reload
	fld.d	$fs4, $sp, 224                  # 8-byte Folded Reload
	fld.d	$fs3, $sp, 232                  # 8-byte Folded Reload
	fld.d	$fs2, $sp, 240                  # 8-byte Folded Reload
	fld.d	$fs1, $sp, 248                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 256                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 264                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 272                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 280                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 288                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 296                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 304                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 312                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 320                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 328                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 336                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 344                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 352
	ret
.Lfunc_end7:
	.size	h2v2_fancy_upsample, .Lfunc_end7-h2v2_fancy_upsample
                                        # -- End function
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0                          # -- Begin function h2v2_upsample
.LCPI8_0:
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	1                               # 0x1
	.byte	2                               # 0x2
	.byte	2                               # 0x2
	.byte	3                               # 0x3
	.byte	3                               # 0x3
	.byte	4                               # 0x4
	.byte	4                               # 0x4
	.byte	5                               # 0x5
	.byte	5                               # 0x5
	.byte	6                               # 0x6
	.byte	6                               # 0x6
	.byte	7                               # 0x7
	.byte	7                               # 0x7
	.byte	8                               # 0x8
	.byte	8                               # 0x8
	.byte	9                               # 0x9
	.byte	9                               # 0x9
	.byte	10                              # 0xa
	.byte	10                              # 0xa
	.byte	11                              # 0xb
	.byte	11                              # 0xb
	.byte	12                              # 0xc
	.byte	12                              # 0xc
	.byte	13                              # 0xd
	.byte	13                              # 0xd
	.byte	14                              # 0xe
	.byte	14                              # 0xe
	.byte	15                              # 0xf
	.byte	15                              # 0xf
	.text
	.p2align	5
	.type	h2v2_upsample,@function
h2v2_upsample:                          # @h2v2_upsample
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
	addi.d	$fp, $sp, 288
	bstrins.d	$sp, $zero, 4, 0
	move	$s0, $a0
	ld.w	$a0, $a0, 392
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB8_22
# %bb.1:                                # %.lr.ph30
	move	$s1, $a2
	ld.d	$s2, $a3, 0
	move	$s3, $zero
	move	$s4, $zero
	move	$s5, $zero
	ori	$s6, $zero, 30
	ori	$s7, $zero, 62
	st.d	$s0, $sp, 16                    # 8-byte Folded Spill
	st.d	$a2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s2, $sp, 0                     # 8-byte Folded Spill
	b	.LBB8_4
	.p2align	4, , 16
.LBB8_2:                                #   in Loop: Header=BB8_4 Depth=1
	move	$a5, $zero
.LBB8_3:                                # %._crit_edge
                                        #   in Loop: Header=BB8_4 Depth=1
	ori	$a3, $s5, 1
	ori	$a4, $zero, 1
	move	$a0, $s2
	move	$a1, $s4
	move	$a2, $s2
	pcaddu18i	$ra, %call36(jcopy_sample_rows)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s0, 392
	addi.d	$s3, $s3, 1
	addi.d	$s4, $s4, 2
	addi.w	$a1, $s4, 0
	addi.w	$s5, $s5, 2
	bge	$a1, $a0, .LBB8_22
.LBB8_4:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_17 Depth 2
                                        #     Child Loop BB8_14 Depth 2
                                        #     Child Loop BB8_9 Depth 2
	ld.wu	$a0, $s0, 128
	beqz	$a0, .LBB8_2
# %bb.5:                                # %iter.check
                                        #   in Loop: Header=BB8_4 Depth=1
	slli.d	$a1, $s4, 3
	ldx.d	$a2, $s2, $a1
	add.d	$t1, $a2, $a0
	slli.d	$a1, $s3, 3
	ldx.d	$a0, $s1, $a1
	addi.d	$a1, $a2, 2
	sltu	$a4, $a1, $t1
	maskeqz	$a5, $t1, $a4
	masknez	$a4, $a1, $a4
	or	$a4, $a5, $a4
	nor	$a5, $a2, $zero
	add.d	$a4, $a4, $a5
	bltu	$a4, $s6, .LBB8_8
# %bb.6:                                # %vector.memcheck
                                        #   in Loop: Header=BB8_4 Depth=1
	srli.d	$a5, $a4, 1
	add.d	$a6, $a0, $a5
	addi.d	$a6, $a6, 1
	bgeu	$a2, $a6, .LBB8_11
# %bb.7:                                # %vector.memcheck
                                        #   in Loop: Header=BB8_4 Depth=1
	move	$a6, $a4
	bstrins.d	$a6, $zero, 0, 0
	add.d	$a1, $a1, $a6
	bgeu	$a0, $a1, .LBB8_11
.LBB8_8:                                #   in Loop: Header=BB8_4 Depth=1
	move	$a5, $a0
	move	$a6, $a2
	.p2align	4, , 16
.LBB8_9:                                # %.lr.ph
                                        #   Parent Loop BB8_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.b	$a0, $a5, 0
	addi.d	$a5, $a5, 1
	st.b	$a0, $a6, 0
	addi.d	$a1, $a6, 2
	st.b	$a0, $a6, 1
	move	$a6, $a1
	bltu	$a1, $t1, .LBB8_9
.LBB8_10:                               # %._crit_edge.loopexit
                                        #   in Loop: Header=BB8_4 Depth=1
	ld.w	$a5, $s0, 128
	b	.LBB8_3
.LBB8_11:                               # %vector.main.loop.iter.check
                                        #   in Loop: Header=BB8_4 Depth=1
	addi.d	$a1, $a5, 1
	bgeu	$a4, $s7, .LBB8_16
# %bb.12:                               #   in Loop: Header=BB8_4 Depth=1
	move	$a4, $zero
.LBB8_13:                               # %vec.epilog.ph
                                        #   in Loop: Header=BB8_4 Depth=1
	move	$a7, $a1
	bstrins.d	$a7, $zero, 3, 0
	add.d	$a5, $a0, $a7
	alsl.d	$a6, $a7, $a2, 1
	add.d	$a3, $a0, $a4
	sub.d	$t0, $a4, $a7
	alsl.d	$a0, $a4, $a2, 1
	addi.d	$a2, $a0, 15
	.p2align	4, , 16
.LBB8_14:                               # %vec.epilog.vector.body
                                        #   Parent Loop BB8_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $a3, 0
	pcalau12i	$a0, %pc_hi20(.LCPI8_0)
	xvld	$xr1, $a0, %pc_lo12(.LCPI8_0)
	xvpermi.q	$xr0, $xr0, 2
	xvpermi.d	$xr0, $xr0, 68
	xvshuf.b	$xr0, $xr0, $xr0, $xr1
	xvst	$xr0, $a2, -15
	addi.d	$a3, $a3, 16
	addi.d	$t0, $t0, 16
	addi.d	$a2, $a2, 32
	bnez	$t0, .LBB8_14
# %bb.15:                               # %vec.epilog.middle.block
                                        #   in Loop: Header=BB8_4 Depth=1
	bne	$a1, $a7, .LBB8_9
	b	.LBB8_10
.LBB8_16:                               # %vector.ph
                                        #   in Loop: Header=BB8_4 Depth=1
	st.d	$t1, $sp, 56                    # 8-byte Folded Spill
	st.d	$s5, $sp, 64                    # 8-byte Folded Spill
	st.d	$s4, $sp, 72                    # 8-byte Folded Spill
	st.d	$s3, $sp, 80                    # 8-byte Folded Spill
	st.d	$a1, $sp, 48                    # 8-byte Folded Spill
	move	$a6, $a1
	bstrins.d	$a6, $zero, 4, 0
	st.d	$a2, $sp, 32                    # 8-byte Folded Spill
	addi.d	$a5, $a2, 31
	st.d	$a6, $sp, 40                    # 8-byte Folded Spill
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	move	$a7, $a0
	.p2align	4, , 16
.LBB8_17:                               # %vector.body
                                        #   Parent Loop BB8_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvld	$xr0, $a7, 0
	vpickve2gr.b	$a0, $vr0, 0
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	st.b	$a0, $a5, -31
	vpickve2gr.b	$a0, $vr0, 1
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	st.b	$a0, $a5, -29
	vpickve2gr.b	$a0, $vr0, 2
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	st.b	$a0, $a5, -27
	vpickve2gr.b	$a0, $vr0, 3
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	st.b	$a0, $a5, -25
	vpickve2gr.b	$a0, $vr0, 4
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	st.b	$a0, $a5, -23
	vpickve2gr.b	$a0, $vr0, 5
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	st.b	$a0, $a5, -21
	vpickve2gr.b	$a0, $vr0, 6
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	st.b	$a0, $a5, -19
	vpickve2gr.b	$a0, $vr0, 7
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	st.b	$a0, $a5, -17
	vpickve2gr.b	$a0, $vr0, 8
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	st.b	$a0, $a5, -15
	vpickve2gr.b	$s8, $vr0, 9
	st.b	$s8, $a5, -13
	vpickve2gr.b	$ra, $vr0, 10
	st.b	$ra, $a5, -11
	vpickve2gr.b	$s7, $vr0, 11
	st.b	$s7, $a5, -9
	vpickve2gr.b	$s6, $vr0, 12
	st.b	$s6, $a5, -7
	vpickve2gr.b	$s1, $vr0, 13
	st.b	$s1, $a5, -5
	vpickve2gr.b	$t7, $vr0, 14
	st.b	$t7, $a5, -3
	vpickve2gr.b	$t6, $vr0, 15
	st.b	$t6, $a5, -1
	xvst	$xr0, $sp, 160
	ld.b	$s2, $sp, 176
	st.b	$s2, $a5, 1
	ld.b	$s0, $sp, 177
	st.b	$s0, $a5, 3
	ld.b	$t5, $sp, 178
	st.b	$t5, $a5, 5
	ld.b	$t4, $sp, 179
	st.b	$t4, $a5, 7
	ld.b	$s4, $sp, 180
	st.b	$s4, $a5, 9
	ld.b	$s5, $sp, 181
	st.b	$s5, $a5, 11
	ld.b	$s3, $sp, 182
	st.b	$s3, $a5, 13
	ld.b	$t3, $sp, 183
	st.b	$t3, $a5, 15
	ld.b	$t2, $sp, 184
	st.b	$t2, $a5, 17
	ld.b	$t1, $sp, 185
	st.b	$t1, $a5, 19
	ld.b	$t0, $sp, 186
	st.b	$t0, $a5, 21
	ld.b	$a4, $sp, 187
	st.b	$a4, $a5, 23
	ld.b	$a3, $sp, 188
	st.b	$a3, $a5, 25
	ld.b	$a2, $sp, 189
	st.b	$a2, $a5, 27
	ld.b	$a0, $sp, 190
	st.b	$a0, $a5, 29
	ld.b	$a1, $sp, 191
	ld.d	$t8, $sp, 152                   # 8-byte Folded Reload
	st.b	$t8, $a5, -30
	ld.d	$t8, $sp, 144                   # 8-byte Folded Reload
	st.b	$t8, $a5, -28
	ld.d	$t8, $sp, 136                   # 8-byte Folded Reload
	st.b	$t8, $a5, -26
	ld.d	$t8, $sp, 128                   # 8-byte Folded Reload
	st.b	$t8, $a5, -24
	ld.d	$t8, $sp, 120                   # 8-byte Folded Reload
	st.b	$t8, $a5, -22
	ld.d	$t8, $sp, 112                   # 8-byte Folded Reload
	st.b	$t8, $a5, -20
	ld.d	$t8, $sp, 104                   # 8-byte Folded Reload
	st.b	$t8, $a5, -18
	ld.d	$t8, $sp, 96                    # 8-byte Folded Reload
	st.b	$t8, $a5, -16
	ld.d	$t8, $sp, 88                    # 8-byte Folded Reload
	st.b	$t8, $a5, -14
	st.b	$s8, $a5, -12
	st.b	$ra, $a5, -10
	st.b	$s7, $a5, -8
	st.b	$s6, $a5, -6
	st.b	$s1, $a5, -4
	st.b	$t7, $a5, -2
	st.b	$t6, $a5, 0
	st.b	$s2, $a5, 2
	st.b	$s0, $a5, 4
	st.b	$t5, $a5, 6
	st.b	$t4, $a5, 8
	st.b	$s4, $a5, 10
	st.b	$s5, $a5, 12
	st.b	$s3, $a5, 14
	st.b	$t3, $a5, 16
	st.b	$t2, $a5, 18
	st.b	$t1, $a5, 20
	st.b	$t0, $a5, 22
	st.b	$a4, $a5, 24
	st.b	$a3, $a5, 26
	st.b	$a2, $a5, 28
	st.b	$a0, $a5, 30
	st.b	$a1, $a5, 31
	st.b	$a1, $a5, 32
	addi.d	$a7, $a7, 32
	addi.d	$a6, $a6, -32
	addi.d	$a5, $a5, 64
	bnez	$a6, .LBB8_17
# %bb.18:                               # %middle.block
                                        #   in Loop: Header=BB8_4 Depth=1
	ld.d	$s0, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 64                    # 8-byte Folded Reload
	ori	$s6, $zero, 30
	ori	$s7, $zero, 62
	ld.d	$t1, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a4, $sp, 40                    # 8-byte Folded Reload
	beq	$a1, $a4, .LBB8_10
# %bb.19:                               # %vec.epilog.iter.check
                                        #   in Loop: Header=BB8_4 Depth=1
	andi	$a0, $a1, 16
	bnez	$a0, .LBB8_21
# %bb.20:                               #   in Loop: Header=BB8_4 Depth=1
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	add.d	$a5, $a0, $a4
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	alsl.d	$a6, $a4, $a0, 1
	b	.LBB8_9
.LBB8_21:                               #   in Loop: Header=BB8_4 Depth=1
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	b	.LBB8_13
.LBB8_22:                               # %._crit_edge31
	addi.d	$sp, $fp, -288
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
