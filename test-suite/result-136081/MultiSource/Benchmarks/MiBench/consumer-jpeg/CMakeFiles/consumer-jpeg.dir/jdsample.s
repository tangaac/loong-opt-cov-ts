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
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function h2v1_fancy_upsample
.LCPI5_0:
	.dword	28                              # 0x1c
	.dword	30                              # 0x1e
.LCPI5_1:
	.dword	24                              # 0x18
	.dword	26                              # 0x1a
.LCPI5_2:
	.dword	20                              # 0x14
	.dword	22                              # 0x16
.LCPI5_3:
	.dword	16                              # 0x10
	.dword	18                              # 0x12
.LCPI5_4:
	.dword	12                              # 0xc
	.dword	14                              # 0xe
.LCPI5_5:
	.dword	8                               # 0x8
	.dword	10                              # 0xa
.LCPI5_6:
	.dword	4                               # 0x4
	.dword	6                               # 0x6
.LCPI5_7:
	.dword	0                               # 0x0
	.dword	2                               # 0x2
	.text
	.p2align	5
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
	pcalau12i	$t7, %pc_hi20(.LCPI5_0)
	vld	$vr2, $t7, %pc_lo12(.LCPI5_0)
	vreplgr2vr.d	$vr3, $t1
	pcalau12i	$t7, %pc_hi20(.LCPI5_1)
	vld	$vr4, $t7, %pc_lo12(.LCPI5_1)
	pcalau12i	$t7, %pc_hi20(.LCPI5_2)
	vld	$vr5, $t7, %pc_lo12(.LCPI5_2)
	pcalau12i	$t7, %pc_hi20(.LCPI5_3)
	vld	$vr6, $t7, %pc_lo12(.LCPI5_3)
	vadd.d	$vr10, $vr3, $vr2
	vadd.d	$vr11, $vr3, $vr4
	vadd.d	$vr12, $vr3, $vr5
	vadd.d	$vr13, $vr3, $vr6
	pcalau12i	$t7, %pc_hi20(.LCPI5_4)
	vld	$vr7, $t7, %pc_lo12(.LCPI5_4)
	pcalau12i	$t7, %pc_hi20(.LCPI5_5)
	vld	$vr8, $t7, %pc_lo12(.LCPI5_5)
	pcalau12i	$t7, %pc_hi20(.LCPI5_6)
	vld	$vr9, $t7, %pc_lo12(.LCPI5_6)
	pcalau12i	$t7, %pc_hi20(.LCPI5_7)
	vld	$vr14, $t7, %pc_lo12(.LCPI5_7)
	vadd.d	$vr16, $vr3, $vr7
	vadd.d	$vr17, $vr3, $vr8
	vadd.d	$vr19, $vr3, $vr9
	vadd.d	$vr20, $vr3, $vr14
	addi.d	$t7, $t1, -2
	vreplgr2vr.d	$vr15, $t7
	vadd.d	$vr2, $vr15, $vr2
	vadd.d	$vr3, $vr15, $vr4
	vadd.d	$vr4, $vr15, $vr5
	vadd.d	$vr5, $vr15, $vr6
	vadd.d	$vr6, $vr15, $vr7
	vadd.d	$vr8, $vr15, $vr8
	vld	$vr18, $t0, 0
	vadd.d	$vr9, $vr15, $vr9
	vld	$vr21, $t0, -1
	vadd.d	$vr15, $vr15, $vr14
	vilvh.b	$vr7, $vr0, $vr18
	vilvl.b	$vr14, $vr0, $vr18
	vilvh.b	$vr18, $vr0, $vr21
	vilvl.b	$vr21, $vr0, $vr21
	vmadd.h	$vr21, $vr14, $vr1
	vmadd.h	$vr18, $vr7, $vr1
	vaddi.hu	$vr18, $vr18, 1
	vaddi.hu	$vr21, $vr21, 1
	vsrli.h	$vr21, $vr21, 2
	vsrli.h	$vr18, $vr18, 2
	vpickve2gr.b	$t7, $vr21, 0
	vpickve2gr.d	$t8, $vr20, 0
	st.b	$t7, $t8, 0
	vpickve2gr.b	$t7, $vr21, 2
	vpickve2gr.d	$t8, $vr20, 1
	st.b	$t7, $t8, 0
	vpickve2gr.b	$t7, $vr21, 4
	vpickve2gr.d	$t8, $vr19, 0
	st.b	$t7, $t8, 0
	vpickve2gr.b	$t7, $vr21, 6
	vpickve2gr.d	$t8, $vr19, 1
	st.b	$t7, $t8, 0
	vpickve2gr.b	$t7, $vr21, 8
	vpickve2gr.d	$t8, $vr17, 0
	st.b	$t7, $t8, 0
	vpickve2gr.b	$t7, $vr21, 10
	vpickve2gr.d	$t8, $vr17, 1
	st.b	$t7, $t8, 0
	vpickve2gr.b	$t7, $vr21, 12
	vpickve2gr.d	$t8, $vr16, 0
	st.b	$t7, $t8, 0
	vpickve2gr.b	$t7, $vr21, 14
	vpickve2gr.d	$t8, $vr16, 1
	st.b	$t7, $t8, 0
	vpickve2gr.b	$t7, $vr18, 0
	vpickve2gr.d	$t8, $vr13, 0
	st.b	$t7, $t8, 0
	vpickve2gr.b	$t7, $vr18, 2
	vpickve2gr.d	$t8, $vr13, 1
	st.b	$t7, $t8, 0
	vpickve2gr.b	$t7, $vr18, 4
	vpickve2gr.d	$t8, $vr12, 0
	st.b	$t7, $t8, 0
	vpickve2gr.b	$t7, $vr18, 6
	vpickve2gr.d	$t8, $vr12, 1
	st.b	$t7, $t8, 0
	vpickve2gr.b	$t7, $vr18, 8
	vpickve2gr.d	$t8, $vr11, 0
	st.b	$t7, $t8, 0
	vpickve2gr.b	$t7, $vr18, 10
	vpickve2gr.d	$t8, $vr11, 1
	st.b	$t7, $t8, 0
	vpickve2gr.b	$t7, $vr18, 12
	vpickve2gr.d	$t8, $vr10, 0
	st.b	$t7, $t8, 0
	vpickve2gr.b	$t7, $vr18, 14
	vld	$vr11, $t0, 1
	vpickve2gr.d	$t8, $vr10, 1
	st.b	$t7, $t8, 0
	vpickve2gr.d	$t7, $vr15, 1
	vilvl.b	$vr10, $vr0, $vr11
	vmadd.h	$vr10, $vr14, $vr1
	vaddi.hu	$vr10, $vr10, 2
	vsrli.h	$vr10, $vr10, 2
	vpickve2gr.b	$t8, $vr10, 0
	st.b	$t8, $t1, 1
	vpickve2gr.b	$t8, $vr10, 2
	st.b	$t8, $t7, 3
	vpickve2gr.d	$t7, $vr9, 0
	vpickve2gr.b	$t8, $vr10, 4
	st.b	$t8, $t7, 3
	vpickve2gr.d	$t7, $vr9, 1
	vpickve2gr.b	$t8, $vr10, 6
	st.b	$t8, $t7, 3
	vpickve2gr.d	$t7, $vr8, 0
	vpickve2gr.b	$t8, $vr10, 8
	st.b	$t8, $t7, 3
	vpickve2gr.d	$t7, $vr8, 1
	vpickve2gr.b	$t8, $vr10, 10
	st.b	$t8, $t7, 3
	vpickve2gr.d	$t7, $vr6, 0
	vpickve2gr.b	$t8, $vr10, 12
	st.b	$t8, $t7, 3
	vpickve2gr.d	$t7, $vr6, 1
	vpickve2gr.b	$t8, $vr10, 14
	st.b	$t8, $t7, 3
	vpickve2gr.d	$t7, $vr5, 0
	vilvh.b	$vr6, $vr0, $vr11
	vmadd.h	$vr6, $vr7, $vr1
	vaddi.hu	$vr6, $vr6, 2
	vsrli.h	$vr6, $vr6, 2
	vpickve2gr.b	$t8, $vr6, 0
	st.b	$t8, $t7, 3
	vpickve2gr.d	$t7, $vr5, 1
	vpickve2gr.b	$t8, $vr6, 2
	st.b	$t8, $t7, 3
	vpickve2gr.d	$t7, $vr4, 0
	vpickve2gr.b	$t8, $vr6, 4
	st.b	$t8, $t7, 3
	vpickve2gr.d	$t7, $vr4, 1
	vpickve2gr.b	$t8, $vr6, 6
	st.b	$t8, $t7, 3
	vpickve2gr.d	$t7, $vr3, 0
	vpickve2gr.b	$t8, $vr6, 8
	st.b	$t8, $t7, 3
	vpickve2gr.d	$t7, $vr3, 1
	vpickve2gr.b	$t8, $vr6, 10
	st.b	$t8, $t7, 3
	vpickve2gr.d	$t7, $vr2, 0
	vpickve2gr.b	$t8, $vr6, 12
	st.b	$t8, $t7, 3
	vpickve2gr.d	$t7, $vr2, 1
	vpickve2gr.b	$t8, $vr6, 14
	st.b	$t8, $t7, 3
	addi.d	$t6, $t6, -16
	addi.d	$t0, $t0, 16
	addi.d	$t1, $t1, 32
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
.LBB5_13:                               # %.lr.ph.preheader58
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
	ld.w	$a5, $a0, 392
	ori	$a1, $zero, 1
	blt	$a5, $a1, .LBB6_13
# %bb.1:                                # %.lr.ph22
	ld.d	$a1, $a3, 0
	move	$a3, $zero
	ori	$a4, $zero, 30
	b	.LBB6_4
	.p2align	4, , 16
.LBB6_2:                                # %._crit_edge.loopexit
                                        #   in Loop: Header=BB6_4 Depth=1
	ld.w	$a5, $a0, 392
.LBB6_3:                                # %._crit_edge
                                        #   in Loop: Header=BB6_4 Depth=1
	addi.d	$a3, $a3, 1
	bge	$a3, $a5, .LBB6_13
.LBB6_4:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_11 Depth 2
                                        #     Child Loop BB6_9 Depth 2
	ld.wu	$a6, $a0, 128
	beqz	$a6, .LBB6_3
# %bb.5:                                # %.lr.ph.preheader
                                        #   in Loop: Header=BB6_4 Depth=1
	slli.d	$a7, $a3, 3
	ldx.d	$t1, $a1, $a7
	add.d	$a5, $t1, $a6
	ldx.d	$a6, $a2, $a7
	addi.d	$a7, $t1, 2
	sltu	$t0, $a7, $a5
	maskeqz	$t2, $a5, $t0
	masknez	$t0, $a7, $t0
	or	$t0, $t2, $t0
	nor	$t2, $t1, $zero
	add.d	$t2, $t0, $t2
	bltu	$t2, $a4, .LBB6_8
# %bb.6:                                # %vector.memcheck
                                        #   in Loop: Header=BB6_4 Depth=1
	srli.d	$t0, $t2, 1
	add.d	$t3, $a6, $t0
	addi.d	$t3, $t3, 1
	bgeu	$t1, $t3, .LBB6_10
# %bb.7:                                # %vector.memcheck
                                        #   in Loop: Header=BB6_4 Depth=1
	bstrins.d	$t2, $zero, 0, 0
	add.d	$a7, $a7, $t2
	bgeu	$a6, $a7, .LBB6_10
.LBB6_8:                                #   in Loop: Header=BB6_4 Depth=1
	move	$a7, $a6
	move	$t0, $t1
	.p2align	4, , 16
.LBB6_9:                                # %.lr.ph
                                        #   Parent Loop BB6_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.b	$a6, $a7, 0
	addi.d	$a7, $a7, 1
	st.b	$a6, $t0, 0
	addi.d	$t1, $t0, 2
	st.b	$a6, $t0, 1
	move	$t0, $t1
	bltu	$t1, $a5, .LBB6_9
	b	.LBB6_2
.LBB6_10:                               # %vector.ph
                                        #   in Loop: Header=BB6_4 Depth=1
	addi.d	$t2, $t0, 1
	move	$t3, $t2
	bstrins.d	$t3, $zero, 3, 0
	add.d	$a7, $a6, $t3
	alsl.d	$t0, $t3, $t1, 1
	addi.d	$t1, $t1, 15
	move	$t4, $t3
	.p2align	4, , 16
.LBB6_11:                               # %vector.body
                                        #   Parent Loop BB6_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $a6, 0
	vilvl.b	$vr1, $vr0, $vr0
	vst	$vr1, $t1, -15
	vilvh.b	$vr0, $vr0, $vr0
	vst	$vr0, $t1, 1
	addi.d	$a6, $a6, 16
	addi.d	$t4, $t4, -16
	addi.d	$t1, $t1, 32
	bnez	$t4, .LBB6_11
# %bb.12:                               # %middle.block
                                        #   in Loop: Header=BB6_4 Depth=1
	bne	$t2, $t3, .LBB6_9
	b	.LBB6_2
.LBB6_13:                               # %._crit_edge23
	ret
.Lfunc_end6:
	.size	h2v1_upsample, .Lfunc_end6-h2v1_upsample
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function h2v2_fancy_upsample
.LCPI7_0:
	.dword	28                              # 0x1c
	.dword	30                              # 0x1e
.LCPI7_1:
	.dword	24                              # 0x18
	.dword	26                              # 0x1a
.LCPI7_2:
	.dword	20                              # 0x14
	.dword	22                              # 0x16
.LCPI7_3:
	.dword	16                              # 0x10
	.dword	18                              # 0x12
.LCPI7_4:
	.dword	12                              # 0xc
	.dword	14                              # 0xe
.LCPI7_5:
	.dword	8                               # 0x8
	.dword	10                              # 0xa
.LCPI7_6:
	.dword	4                               # 0x4
	.dword	6                               # 0x6
.LCPI7_7:
	.dword	0                               # 0x0
	.dword	2                               # 0x2
.LCPI7_8:
	.word	3                               # 0x3
	.word	4                               # 0x4
	.word	5                               # 0x5
	.word	6                               # 0x6
.LCPI7_9:
	.word	3                               # 0x3
	.word	7                               # 0x7
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
.LCPI7_10:
	.dword	1                               # 0x1
	.dword	2                               # 0x2
	.text
	.p2align	5
	.type	h2v2_fancy_upsample,@function
h2v2_fancy_upsample:                    # @h2v2_fancy_upsample
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
	fst.d	$fs0, $sp, 96                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 88                   # 8-byte Folded Spill
	fst.d	$fs2, $sp, 80                   # 8-byte Folded Spill
	fst.d	$fs3, $sp, 72                   # 8-byte Folded Spill
	fst.d	$fs4, $sp, 64                   # 8-byte Folded Spill
	fst.d	$fs5, $sp, 56                   # 8-byte Folded Spill
	fst.d	$fs6, $sp, 48                   # 8-byte Folded Spill
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	ld.w	$a0, $a0, 392
	ori	$a4, $zero, 1
	st.d	$a2, $sp, 32                    # 8-byte Folded Spill
	blt	$a0, $a4, .LBB7_27
# %bb.1:                                # %.preheader.lr.ph
	ld.d	$a0, $a3, 0
	move	$a4, $zero
	move	$a5, $zero
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	addi.d	$a0, $a0, 8
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	vrepli.b	$vr0, 0
	vrepli.w	$vr1, 3
	pcalau12i	$t1, %pc_hi20(.LCPI7_1)
	pcalau12i	$t2, %pc_hi20(.LCPI7_2)
	pcalau12i	$t3, %pc_hi20(.LCPI7_3)
	pcalau12i	$t4, %pc_hi20(.LCPI7_4)
	pcalau12i	$t5, %pc_hi20(.LCPI7_5)
	pcalau12i	$t6, %pc_hi20(.LCPI7_6)
	pcalau12i	$t7, %pc_hi20(.LCPI7_7)
	pcalau12i	$t8, %pc_hi20(.LCPI7_8)
	pcalau12i	$fp, %pc_hi20(.LCPI7_9)
	pcalau12i	$s0, %pc_hi20(.LCPI7_10)
	b	.LBB7_4
	.p2align	4, , 16
.LBB7_2:                                #   in Loop: Header=BB7_4 Depth=1
	move	$s3, $s7
.LBB7_3:                                # %._crit_edge.1
                                        #   in Loop: Header=BB7_4 Depth=1
	alsl.d	$a2, $a0, $a0, 1
	add.d	$a2, $s8, $a2
	addi.d	$a2, $a2, 8
	srli.d	$a2, $a2, 4
	st.b	$a2, $s3, 0
	slli.d	$a0, $a0, 2
	addi.d	$a0, $a0, 7
	srli.d	$a0, $a0, 4
	st.b	$a0, $s1, 3
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
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
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	alsl.d	$s1, $a4, $a2, 3
	slli.d	$a0, $a4, 3
	ldx.d	$s5, $a2, $a0
	ld.d	$a6, $s1, -8
	slli.d	$a2, $a5, 3
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	ldx.d	$s3, $a0, $a2
	ld.bu	$a0, $s5, 0
	ld.bu	$a3, $a6, 0
	ld.bu	$a7, $s5, 1
	ld.bu	$t0, $a6, 1
	alsl.d	$a0, $a0, $a0, 1
	add.d	$a3, $a0, $a3
	alsl.d	$a0, $a7, $a7, 1
	add.d	$a0, $a0, $t0
	slli.d	$a7, $a3, 2
	addi.d	$a7, $a7, 8
	srli.d	$a7, $a7, 4
	st.b	$a7, $s3, 0
	alsl.d	$a7, $a3, $a3, 1
	add.d	$a7, $a7, $a0
	addi.d	$a7, $a7, 7
	srli.d	$a7, $a7, 4
	st.b	$a7, $s3, 1
	ld.w	$s6, $a1, 40
	addi.w	$s4, $s6, -2
	addi.d	$s8, $s3, 2
	pcalau12i	$t0, %pc_hi20(.LCPI7_0)
	beqz	$s4, .LBB7_10
# %bb.5:                                # %.lr.ph.preheader
                                        #   in Loop: Header=BB7_4 Depth=1
	addi.d	$a7, $a6, 2
	addi.d	$ra, $s5, 2
	ori	$s2, $zero, 16
	bgeu	$s4, $s2, .LBB7_17
.LBB7_6:                                #   in Loop: Header=BB7_4 Depth=1
	move	$s5, $s8
	move	$s6, $a7
	move	$s7, $ra
.LBB7_7:                                # %.lr.ph.preheader147
                                        #   in Loop: Header=BB7_4 Depth=1
	move	$a6, $a3
	.p2align	4, , 16
.LBB7_8:                                # %.lr.ph
                                        #   Parent Loop BB7_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$a7, $s7, 0
	move	$a3, $a0
	ld.bu	$a0, $s6, 0
	addi.d	$s7, $s7, 1
	alsl.d	$a7, $a7, $a7, 1
	addi.d	$s6, $s6, 1
	add.d	$a0, $a7, $a0
	alsl.d	$a7, $a3, $a3, 1
	add.d	$a6, $a6, $a7
	addi.d	$a6, $a6, 8
	srli.d	$a6, $a6, 4
	st.b	$a6, $s5, 0
	add.d	$a6, $a7, $a0
	addi.d	$a6, $a6, 7
	srli.d	$a6, $a6, 4
	st.b	$a6, $s3, 3
	addi.w	$s4, $s4, -1
	move	$s3, $s5
	addi.d	$s5, $s5, 2
	move	$a6, $a3
	bnez	$s4, .LBB7_8
.LBB7_9:                                # %._crit_edge.loopexit
                                        #   in Loop: Header=BB7_4 Depth=1
	addi.d	$s3, $s5, -2
	b	.LBB7_11
	.p2align	4, , 16
.LBB7_10:                               #   in Loop: Header=BB7_4 Depth=1
	move	$s5, $s8
.LBB7_11:                               # %._crit_edge
                                        #   in Loop: Header=BB7_4 Depth=1
	alsl.d	$a6, $a0, $a0, 1
	add.d	$a3, $a3, $a6
	addi.d	$a3, $a3, 8
	srli.d	$a3, $a3, 4
	st.b	$a3, $s5, 0
	slli.d	$a0, $a0, 2
	addi.d	$a0, $a0, 7
	srli.d	$a0, $a0, 4
	st.b	$a0, $s3, 3
	ld.d	$a6, $s1, 0
	ld.d	$a3, $s1, 8
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	ldx.d	$s1, $a0, $a2
	ld.bu	$a0, $a6, 0
	ld.bu	$a2, $a3, 0
	ld.bu	$a7, $a6, 1
	ld.bu	$s2, $a3, 1
	alsl.d	$a0, $a0, $a0, 1
	add.d	$s8, $a0, $a2
	alsl.d	$a0, $a7, $a7, 1
	add.d	$a0, $a0, $s2
	slli.d	$a2, $s8, 2
	addi.d	$a2, $a2, 8
	srli.d	$a2, $a2, 4
	st.b	$a2, $s1, 0
	alsl.d	$a2, $s8, $s8, 1
	add.d	$a2, $a2, $a0
	addi.d	$a2, $a2, 7
	srli.d	$a2, $a2, 4
	st.b	$a2, $s1, 1
	ld.w	$s3, $a1, 40
	addi.w	$s2, $s3, -2
	addi.d	$s7, $s1, 2
	beqz	$s2, .LBB7_2
# %bb.12:                               # %.lr.ph.preheader.1
                                        #   in Loop: Header=BB7_4 Depth=1
	addi.d	$a7, $a3, 2
	addi.d	$s6, $a6, 2
	ori	$a2, $zero, 16
	bgeu	$s2, $a2, .LBB7_22
.LBB7_13:                               #   in Loop: Header=BB7_4 Depth=1
	move	$s3, $s7
	move	$s4, $a7
	move	$s5, $s6
.LBB7_14:                               # %.lr.ph.1.preheader
                                        #   in Loop: Header=BB7_4 Depth=1
	move	$a3, $s8
	.p2align	4, , 16
.LBB7_15:                               # %.lr.ph.1
                                        #   Parent Loop BB7_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$a2, $s5, 0
	move	$s8, $a0
	ld.bu	$a0, $s4, 0
	addi.d	$s5, $s5, 1
	alsl.d	$a2, $a2, $a2, 1
	addi.d	$s4, $s4, 1
	add.d	$a0, $a2, $a0
	alsl.d	$a2, $s8, $s8, 1
	add.d	$a3, $a3, $a2
	addi.d	$a3, $a3, 8
	srli.d	$a3, $a3, 4
	st.b	$a3, $s3, 0
	add.d	$a2, $a2, $a0
	addi.d	$a2, $a2, 7
	srli.d	$a2, $a2, 4
	st.b	$a2, $s1, 3
	addi.w	$s2, $s2, -1
	move	$s1, $s3
	addi.d	$s3, $s3, 2
	move	$a3, $s8
	bnez	$s2, .LBB7_15
.LBB7_16:                               # %._crit_edge.1.loopexit
                                        #   in Loop: Header=BB7_4 Depth=1
	addi.d	$s1, $s3, -2
	b	.LBB7_3
	.p2align	4, , 16
.LBB7_17:                               # %vector.memcheck97
                                        #   in Loop: Header=BB7_4 Depth=1
	addi.d	$s6, $s6, -3
	bstrpick.d	$s7, $s6, 31, 0
	alsl.d	$s6, $s7, $s3, 1
	addi.d	$s6, $s6, 4
	add.d	$s5, $s5, $s7
	addi.d	$s5, $s5, 3
	sltu	$s5, $s8, $s5
	sltu	$s2, $ra, $s6
	and	$s2, $s5, $s2
	bnez	$s2, .LBB7_6
# %bb.18:                               # %vector.memcheck97
                                        #   in Loop: Header=BB7_4 Depth=1
	add.d	$a6, $a6, $s7
	addi.d	$a6, $a6, 3
	sltu	$a6, $s8, $a6
	sltu	$s2, $a7, $s6
	and	$a6, $a6, $s2
	bnez	$a6, .LBB7_6
# %bb.19:                               # %vector.ph113
                                        #   in Loop: Header=BB7_4 Depth=1
	bstrpick.d	$a6, $s4, 31, 0
	st.d	$a6, $sp, 8                     # 8-byte Folded Spill
	bstrpick.d	$s2, $a6, 31, 4
	slli.d	$a6, $s2, 4
	slli.d	$s6, $s2, 5
	add.d	$s5, $s8, $s6
	sub.d	$s4, $s4, $a6
	add.d	$s3, $s3, $s6
	alsl.d	$s6, $s2, $a7, 4
	alsl.d	$s7, $s2, $ra, 4
	vinsgr2vr.w	$vr2, $a3, 0
	vreplvei.w	$vr8, $vr2, 0
	vinsgr2vr.w	$vr2, $a0, 0
	vreplvei.w	$vr6, $vr2, 0
	move	$a3, $a6
	.p2align	4, , 16
.LBB7_20:                               # %vector.body117
                                        #   Parent Loop BB7_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr2, $t0, %pc_lo12(.LCPI7_0)
	vreplgr2vr.d	$vr3, $s8
	vld	$vr4, $t1, %pc_lo12(.LCPI7_1)
	vld	$vr5, $t2, %pc_lo12(.LCPI7_2)
	vld	$vr7, $t3, %pc_lo12(.LCPI7_3)
	vadd.d	$vr11, $vr3, $vr2
	vadd.d	$vr12, $vr3, $vr4
	vadd.d	$vr15, $vr3, $vr5
	vadd.d	$vr16, $vr3, $vr7
	vld	$vr9, $t4, %pc_lo12(.LCPI7_4)
	vld	$vr10, $t5, %pc_lo12(.LCPI7_5)
	vld	$vr13, $t6, %pc_lo12(.LCPI7_6)
	vld	$vr14, $t7, %pc_lo12(.LCPI7_7)
	vadd.d	$vr18, $vr3, $vr9
	vadd.d	$vr19, $vr3, $vr10
	vadd.d	$vr21, $vr3, $vr13
	vadd.d	$vr23, $vr3, $vr14
	addi.d	$a0, $s8, -2
	vreplgr2vr.d	$vr17, $a0
	vadd.d	$vr2, $vr17, $vr2
	vadd.d	$vr3, $vr17, $vr4
	vadd.d	$vr4, $vr17, $vr5
	vadd.d	$vr5, $vr17, $vr7
	vadd.d	$vr7, $vr17, $vr9
	vld	$vr20, $ra, 0
	vadd.d	$vr9, $vr17, $vr10
	vadd.d	$vr10, $vr17, $vr13
	vadd.d	$vr17, $vr17, $vr14
	vilvh.b	$vr13, $vr0, $vr20
	vilvl.h	$vr26, $vr0, $vr13
	vilvh.h	$vr27, $vr0, $vr13
	vld	$vr13, $a7, 0
	vilvl.b	$vr14, $vr0, $vr20
	vilvh.h	$vr28, $vr0, $vr14
	vilvl.h	$vr14, $vr0, $vr14
	vilvh.b	$vr24, $vr0, $vr13
	vld	$vr20, $t8, %pc_lo12(.LCPI7_8)
	vld	$vr29, $fp, %pc_lo12(.LCPI7_9)
	vilvl.b	$vr30, $vr0, $vr13
	vilvl.h	$vr22, $vr0, $vr30
	vmadd.w	$vr22, $vr14, $vr1
	vshuf.w	$vr29, $vr6, $vr8
	vori.b	$vr8, $vr20, 0
	vori.b	$vr13, $vr20, 0
	vori.b	$vr25, $vr20, 0
	vshuf.w	$vr20, $vr22, $vr6
	vilvl.h	$vr14, $vr0, $vr24
	vilvh.h	$vr6, $vr0, $vr24
	vilvh.h	$vr24, $vr0, $vr30
	vmadd.w	$vr24, $vr28, $vr1
	vmadd.w	$vr6, $vr27, $vr1
	vmadd.w	$vr14, $vr26, $vr1
	vld	$vr26, $s0, %pc_lo12(.LCPI7_10)
	vshuf.w	$vr8, $vr6, $vr14
	vshuf.w	$vr13, $vr14, $vr24
	vshuf.w	$vr25, $vr24, $vr22
	vpackev.d	$vr27, $vr22, $vr29
	vori.b	$vr28, $vr26, 0
	vshuf.d	$vr28, $vr6, $vr14
	vori.b	$vr29, $vr26, 0
	vshuf.d	$vr29, $vr14, $vr24
	vshuf.d	$vr26, $vr24, $vr22
	vmadd.w	$vr26, $vr25, $vr1
	vmadd.w	$vr29, $vr13, $vr1
	vmadd.w	$vr28, $vr8, $vr1
	vmadd.w	$vr27, $vr20, $vr1
	vaddi.wu	$vr28, $vr28, 8
	vaddi.wu	$vr29, $vr29, 8
	vaddi.wu	$vr26, $vr26, 8
	vaddi.wu	$vr27, $vr27, 8
	vsrli.w	$vr30, $vr26, 4
	vsrli.w	$vr29, $vr29, 4
	vsrli.w	$vr26, $vr28, 4
	vsrli.w	$vr27, $vr27, 4
	vpickev.h	$vr26, $vr26, $vr29
	vpickev.h	$vr28, $vr30, $vr27
	vpickve2gr.b	$a0, $vr27, 0
	vpickve2gr.d	$s2, $vr23, 0
	st.b	$a0, $s2, 0
	vpickve2gr.b	$a0, $vr28, 2
	vpickve2gr.d	$s2, $vr23, 1
	st.b	$a0, $s2, 0
	vpickve2gr.b	$a0, $vr28, 4
	vpickve2gr.d	$s2, $vr21, 0
	st.b	$a0, $s2, 0
	vpickve2gr.b	$a0, $vr28, 6
	vpickve2gr.d	$s2, $vr21, 1
	st.b	$a0, $s2, 0
	vpickve2gr.b	$a0, $vr28, 8
	vpickve2gr.d	$s2, $vr19, 0
	st.b	$a0, $s2, 0
	vpickve2gr.b	$a0, $vr28, 10
	vpickve2gr.d	$s2, $vr19, 1
	st.b	$a0, $s2, 0
	vpickve2gr.b	$a0, $vr28, 12
	vpickve2gr.d	$s2, $vr18, 0
	st.b	$a0, $s2, 0
	vpickve2gr.b	$a0, $vr28, 14
	vpickve2gr.d	$s2, $vr18, 1
	st.b	$a0, $s2, 0
	vpickve2gr.b	$a0, $vr29, 0
	vpickve2gr.d	$s2, $vr16, 0
	st.b	$a0, $s2, 0
	vpickve2gr.b	$a0, $vr26, 2
	vpickve2gr.d	$s2, $vr16, 1
	st.b	$a0, $s2, 0
	vpickve2gr.b	$a0, $vr26, 4
	vpickve2gr.d	$s2, $vr15, 0
	st.b	$a0, $s2, 0
	vpickve2gr.b	$a0, $vr26, 6
	vpickve2gr.d	$s2, $vr15, 1
	st.b	$a0, $s2, 0
	vpickve2gr.b	$a0, $vr26, 8
	vpickve2gr.d	$s2, $vr12, 0
	st.b	$a0, $s2, 0
	vpickve2gr.b	$a0, $vr26, 10
	vpickve2gr.d	$s2, $vr12, 1
	st.b	$a0, $s2, 0
	vpickve2gr.b	$a0, $vr26, 12
	vpickve2gr.d	$s2, $vr11, 0
	st.b	$a0, $s2, 0
	vpickve2gr.b	$a0, $vr26, 14
	vpickve2gr.d	$s2, $vr11, 1
	st.b	$a0, $s2, 0
	vpickve2gr.d	$a0, $vr17, 1
	vmadd.w	$vr22, $vr20, $vr1
	vmadd.w	$vr24, $vr25, $vr1
	vaddi.wu	$vr11, $vr24, 7
	vaddi.wu	$vr12, $vr22, 7
	vsrli.w	$vr12, $vr12, 4
	vsrli.w	$vr11, $vr11, 4
	vpickev.h	$vr11, $vr11, $vr12
	vpickve2gr.b	$s2, $vr12, 0
	st.b	$s2, $s8, 1
	vpickve2gr.b	$s2, $vr11, 2
	st.b	$s2, $a0, 3
	vpickve2gr.d	$a0, $vr10, 0
	vpickve2gr.b	$s2, $vr11, 4
	st.b	$s2, $a0, 3
	vpickve2gr.d	$a0, $vr10, 1
	vpickve2gr.b	$s2, $vr11, 6
	st.b	$s2, $a0, 3
	vpickve2gr.d	$a0, $vr9, 0
	vpickve2gr.b	$s2, $vr11, 8
	st.b	$s2, $a0, 3
	vpickve2gr.d	$a0, $vr9, 1
	vpickve2gr.b	$s2, $vr11, 10
	st.b	$s2, $a0, 3
	vpickve2gr.d	$a0, $vr7, 0
	vpickve2gr.b	$s2, $vr11, 12
	st.b	$s2, $a0, 3
	vpickve2gr.d	$a0, $vr7, 1
	vpickve2gr.b	$s2, $vr11, 14
	st.b	$s2, $a0, 3
	vpickve2gr.d	$a0, $vr5, 0
	vmadd.w	$vr14, $vr13, $vr1
	vaddi.wu	$vr7, $vr14, 7
	vsrli.w	$vr7, $vr7, 4
	vpickve2gr.b	$s2, $vr7, 0
	st.b	$s2, $a0, 3
	vpickve2gr.d	$a0, $vr5, 1
	vori.b	$vr5, $vr6, 0
	vmadd.w	$vr5, $vr8, $vr1
	vaddi.wu	$vr5, $vr5, 7
	vsrli.w	$vr5, $vr5, 4
	vpickev.h	$vr5, $vr5, $vr7
	vpickve2gr.b	$s2, $vr5, 2
	st.b	$s2, $a0, 3
	vpickve2gr.d	$a0, $vr4, 0
	vpickve2gr.b	$s2, $vr5, 4
	st.b	$s2, $a0, 3
	vpickve2gr.d	$a0, $vr4, 1
	vpickve2gr.b	$s2, $vr5, 6
	st.b	$s2, $a0, 3
	vpickve2gr.d	$a0, $vr3, 0
	vpickve2gr.b	$s2, $vr5, 8
	st.b	$s2, $a0, 3
	vpickve2gr.d	$a0, $vr3, 1
	vpickve2gr.b	$s2, $vr5, 10
	st.b	$s2, $a0, 3
	vpickve2gr.d	$a0, $vr2, 0
	vpickve2gr.b	$s2, $vr5, 12
	st.b	$s2, $a0, 3
	vpickve2gr.d	$a0, $vr2, 1
	vpickve2gr.b	$s2, $vr5, 14
	st.b	$s2, $a0, 3
	addi.d	$a3, $a3, -16
	addi.d	$ra, $ra, 16
	addi.d	$a7, $a7, 16
	addi.d	$s8, $s8, 32
	bnez	$a3, .LBB7_20
# %bb.21:                               # %middle.block134
                                        #   in Loop: Header=BB7_4 Depth=1
	vpickve2gr.w	$a0, $vr6, 3
	vpickve2gr.w	$a3, $vr6, 2
	ld.d	$a7, $sp, 8                     # 8-byte Folded Reload
	bne	$a6, $a7, .LBB7_7
	b	.LBB7_9
	.p2align	4, , 16
.LBB7_22:                               # %vector.memcheck
                                        #   in Loop: Header=BB7_4 Depth=1
	addi.d	$a2, $s3, -3
	bstrpick.d	$s4, $a2, 31, 0
	alsl.d	$a2, $s4, $s1, 1
	addi.d	$s3, $a2, 4
	add.d	$a2, $a6, $s4
	addi.d	$a2, $a2, 3
	sltu	$a2, $s7, $a2
	sltu	$a6, $s6, $s3
	and	$a2, $a2, $a6
	bnez	$a2, .LBB7_13
# %bb.23:                               # %vector.memcheck
                                        #   in Loop: Header=BB7_4 Depth=1
	add.d	$a2, $a3, $s4
	addi.d	$a2, $a2, 3
	sltu	$a2, $s7, $a2
	sltu	$a3, $a7, $s3
	and	$a2, $a2, $a3
	bnez	$a2, .LBB7_13
# %bb.24:                               # %vector.ph
                                        #   in Loop: Header=BB7_4 Depth=1
	bstrpick.d	$a6, $s2, 31, 0
	bstrpick.d	$a2, $a6, 31, 4
	slli.d	$a3, $a2, 4
	slli.d	$s4, $a2, 5
	add.d	$s3, $s7, $s4
	sub.d	$s2, $s2, $a3
	add.d	$s1, $s1, $s4
	alsl.d	$s4, $a2, $a7, 4
	alsl.d	$s5, $a2, $s6, 4
	vinsgr2vr.w	$vr2, $s8, 0
	vreplvei.w	$vr8, $vr2, 0
	vinsgr2vr.w	$vr2, $a0, 0
	vreplvei.w	$vr6, $vr2, 0
	move	$a0, $a3
	.p2align	4, , 16
.LBB7_25:                               # %vector.body
                                        #   Parent Loop BB7_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr2, $t0, %pc_lo12(.LCPI7_0)
	vreplgr2vr.d	$vr3, $s7
	vld	$vr4, $t1, %pc_lo12(.LCPI7_1)
	vld	$vr5, $t2, %pc_lo12(.LCPI7_2)
	vld	$vr7, $t3, %pc_lo12(.LCPI7_3)
	vadd.d	$vr11, $vr3, $vr2
	vadd.d	$vr12, $vr3, $vr4
	vadd.d	$vr15, $vr3, $vr5
	vadd.d	$vr16, $vr3, $vr7
	vld	$vr9, $t4, %pc_lo12(.LCPI7_4)
	vld	$vr10, $t5, %pc_lo12(.LCPI7_5)
	vld	$vr13, $t6, %pc_lo12(.LCPI7_6)
	vld	$vr14, $t7, %pc_lo12(.LCPI7_7)
	vadd.d	$vr18, $vr3, $vr9
	vadd.d	$vr19, $vr3, $vr10
	vadd.d	$vr21, $vr3, $vr13
	vadd.d	$vr23, $vr3, $vr14
	addi.d	$a2, $s7, -2
	vreplgr2vr.d	$vr17, $a2
	vadd.d	$vr2, $vr17, $vr2
	vadd.d	$vr3, $vr17, $vr4
	vadd.d	$vr4, $vr17, $vr5
	vadd.d	$vr5, $vr17, $vr7
	vadd.d	$vr7, $vr17, $vr9
	vld	$vr20, $s6, 0
	vadd.d	$vr9, $vr17, $vr10
	vadd.d	$vr10, $vr17, $vr13
	vadd.d	$vr17, $vr17, $vr14
	vilvh.b	$vr13, $vr0, $vr20
	vilvl.h	$vr26, $vr0, $vr13
	vilvh.h	$vr27, $vr0, $vr13
	vld	$vr13, $a7, 0
	vilvl.b	$vr14, $vr0, $vr20
	vilvh.h	$vr28, $vr0, $vr14
	vilvl.h	$vr14, $vr0, $vr14
	vilvh.b	$vr24, $vr0, $vr13
	vld	$vr20, $t8, %pc_lo12(.LCPI7_8)
	vld	$vr29, $fp, %pc_lo12(.LCPI7_9)
	vilvl.b	$vr30, $vr0, $vr13
	vilvl.h	$vr22, $vr0, $vr30
	vmadd.w	$vr22, $vr14, $vr1
	vshuf.w	$vr29, $vr6, $vr8
	vori.b	$vr8, $vr20, 0
	vori.b	$vr13, $vr20, 0
	vori.b	$vr25, $vr20, 0
	vshuf.w	$vr20, $vr22, $vr6
	vilvl.h	$vr14, $vr0, $vr24
	vilvh.h	$vr6, $vr0, $vr24
	vilvh.h	$vr24, $vr0, $vr30
	vmadd.w	$vr24, $vr28, $vr1
	vmadd.w	$vr6, $vr27, $vr1
	vmadd.w	$vr14, $vr26, $vr1
	vld	$vr26, $s0, %pc_lo12(.LCPI7_10)
	vshuf.w	$vr8, $vr6, $vr14
	vshuf.w	$vr13, $vr14, $vr24
	vshuf.w	$vr25, $vr24, $vr22
	vpackev.d	$vr27, $vr22, $vr29
	vori.b	$vr28, $vr26, 0
	vshuf.d	$vr28, $vr6, $vr14
	vori.b	$vr29, $vr26, 0
	vshuf.d	$vr29, $vr14, $vr24
	vshuf.d	$vr26, $vr24, $vr22
	vmadd.w	$vr26, $vr25, $vr1
	vmadd.w	$vr29, $vr13, $vr1
	vmadd.w	$vr28, $vr8, $vr1
	vmadd.w	$vr27, $vr20, $vr1
	vaddi.wu	$vr28, $vr28, 8
	vaddi.wu	$vr29, $vr29, 8
	vaddi.wu	$vr26, $vr26, 8
	vaddi.wu	$vr27, $vr27, 8
	vsrli.w	$vr30, $vr26, 4
	vsrli.w	$vr29, $vr29, 4
	vsrli.w	$vr26, $vr28, 4
	vsrli.w	$vr27, $vr27, 4
	vpickev.h	$vr26, $vr26, $vr29
	vpickev.h	$vr28, $vr30, $vr27
	vpickve2gr.b	$a2, $vr27, 0
	vpickve2gr.d	$s8, $vr23, 0
	st.b	$a2, $s8, 0
	vpickve2gr.b	$a2, $vr28, 2
	vpickve2gr.d	$s8, $vr23, 1
	st.b	$a2, $s8, 0
	vpickve2gr.b	$a2, $vr28, 4
	vpickve2gr.d	$s8, $vr21, 0
	st.b	$a2, $s8, 0
	vpickve2gr.b	$a2, $vr28, 6
	vpickve2gr.d	$s8, $vr21, 1
	st.b	$a2, $s8, 0
	vpickve2gr.b	$a2, $vr28, 8
	vpickve2gr.d	$s8, $vr19, 0
	st.b	$a2, $s8, 0
	vpickve2gr.b	$a2, $vr28, 10
	vpickve2gr.d	$s8, $vr19, 1
	st.b	$a2, $s8, 0
	vpickve2gr.b	$a2, $vr28, 12
	vpickve2gr.d	$s8, $vr18, 0
	st.b	$a2, $s8, 0
	vpickve2gr.b	$a2, $vr28, 14
	vpickve2gr.d	$s8, $vr18, 1
	st.b	$a2, $s8, 0
	vpickve2gr.b	$a2, $vr29, 0
	vpickve2gr.d	$s8, $vr16, 0
	st.b	$a2, $s8, 0
	vpickve2gr.b	$a2, $vr26, 2
	vpickve2gr.d	$s8, $vr16, 1
	st.b	$a2, $s8, 0
	vpickve2gr.b	$a2, $vr26, 4
	vpickve2gr.d	$s8, $vr15, 0
	st.b	$a2, $s8, 0
	vpickve2gr.b	$a2, $vr26, 6
	vpickve2gr.d	$s8, $vr15, 1
	st.b	$a2, $s8, 0
	vpickve2gr.b	$a2, $vr26, 8
	vpickve2gr.d	$s8, $vr12, 0
	st.b	$a2, $s8, 0
	vpickve2gr.b	$a2, $vr26, 10
	vpickve2gr.d	$s8, $vr12, 1
	st.b	$a2, $s8, 0
	vpickve2gr.b	$a2, $vr26, 12
	vpickve2gr.d	$s8, $vr11, 0
	st.b	$a2, $s8, 0
	vpickve2gr.b	$a2, $vr26, 14
	vpickve2gr.d	$s8, $vr11, 1
	st.b	$a2, $s8, 0
	vpickve2gr.d	$a2, $vr17, 1
	vmadd.w	$vr22, $vr20, $vr1
	vmadd.w	$vr24, $vr25, $vr1
	vaddi.wu	$vr11, $vr24, 7
	vaddi.wu	$vr12, $vr22, 7
	vsrli.w	$vr12, $vr12, 4
	vsrli.w	$vr11, $vr11, 4
	vpickev.h	$vr11, $vr11, $vr12
	vpickve2gr.b	$s8, $vr12, 0
	st.b	$s8, $s7, 1
	vpickve2gr.b	$s8, $vr11, 2
	st.b	$s8, $a2, 3
	vpickve2gr.d	$a2, $vr10, 0
	vpickve2gr.b	$s8, $vr11, 4
	st.b	$s8, $a2, 3
	vpickve2gr.d	$a2, $vr10, 1
	vpickve2gr.b	$s8, $vr11, 6
	st.b	$s8, $a2, 3
	vpickve2gr.d	$a2, $vr9, 0
	vpickve2gr.b	$s8, $vr11, 8
	st.b	$s8, $a2, 3
	vpickve2gr.d	$a2, $vr9, 1
	vpickve2gr.b	$s8, $vr11, 10
	st.b	$s8, $a2, 3
	vpickve2gr.d	$a2, $vr7, 0
	vpickve2gr.b	$s8, $vr11, 12
	st.b	$s8, $a2, 3
	vpickve2gr.d	$a2, $vr7, 1
	vpickve2gr.b	$s8, $vr11, 14
	st.b	$s8, $a2, 3
	vpickve2gr.d	$a2, $vr5, 0
	vmadd.w	$vr14, $vr13, $vr1
	vaddi.wu	$vr7, $vr14, 7
	vsrli.w	$vr7, $vr7, 4
	vpickve2gr.b	$s8, $vr7, 0
	st.b	$s8, $a2, 3
	vpickve2gr.d	$a2, $vr5, 1
	vori.b	$vr5, $vr6, 0
	vmadd.w	$vr5, $vr8, $vr1
	vaddi.wu	$vr5, $vr5, 7
	vsrli.w	$vr5, $vr5, 4
	vpickev.h	$vr5, $vr5, $vr7
	vpickve2gr.b	$s8, $vr5, 2
	st.b	$s8, $a2, 3
	vpickve2gr.d	$a2, $vr4, 0
	vpickve2gr.b	$s8, $vr5, 4
	st.b	$s8, $a2, 3
	vpickve2gr.d	$a2, $vr4, 1
	vpickve2gr.b	$s8, $vr5, 6
	st.b	$s8, $a2, 3
	vpickve2gr.d	$a2, $vr3, 0
	vpickve2gr.b	$s8, $vr5, 8
	st.b	$s8, $a2, 3
	vpickve2gr.d	$a2, $vr3, 1
	vpickve2gr.b	$s8, $vr5, 10
	st.b	$s8, $a2, 3
	vpickve2gr.d	$a2, $vr2, 0
	vpickve2gr.b	$s8, $vr5, 12
	st.b	$s8, $a2, 3
	vpickve2gr.d	$a2, $vr2, 1
	vpickve2gr.b	$s8, $vr5, 14
	st.b	$s8, $a2, 3
	addi.d	$a0, $a0, -16
	addi.d	$s6, $s6, 16
	addi.d	$a7, $a7, 16
	addi.d	$s7, $s7, 32
	bnez	$a0, .LBB7_25
# %bb.26:                               # %middle.block
                                        #   in Loop: Header=BB7_4 Depth=1
	vpickve2gr.w	$a0, $vr6, 3
	vpickve2gr.w	$s8, $vr6, 2
	bne	$a3, $a6, .LBB7_14
	b	.LBB7_16
.LBB7_27:                               # %._crit_edge68
	fld.d	$fs6, $sp, 48                   # 8-byte Folded Reload
	fld.d	$fs5, $sp, 56                   # 8-byte Folded Reload
	fld.d	$fs4, $sp, 64                   # 8-byte Folded Reload
	fld.d	$fs3, $sp, 72                   # 8-byte Folded Reload
	fld.d	$fs2, $sp, 80                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 88                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 96                   # 8-byte Folded Reload
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
	st.d	$s5, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.w	$a0, $a0, 392
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB8_14
# %bb.1:                                # %.lr.ph30
	move	$s0, $a2
	ld.d	$s1, $a3, 0
	move	$s3, $zero
	move	$s2, $zero
	move	$s4, $zero
	ori	$s5, $zero, 30
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
	bge	$a1, $a0, .LBB8_14
.LBB8_4:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_12 Depth 2
                                        #     Child Loop BB8_9 Depth 2
	ld.wu	$a0, $fp, 128
	beqz	$a0, .LBB8_2
# %bb.5:                                # %.lr.ph.preheader
                                        #   in Loop: Header=BB8_4 Depth=1
	slli.d	$a1, $s2, 3
	ldx.d	$a4, $s1, $a1
	add.d	$a0, $a4, $a0
	slli.d	$a1, $s3, 3
	ldx.d	$a1, $s0, $a1
	addi.d	$a2, $a4, 2
	sltu	$a3, $a2, $a0
	maskeqz	$a5, $a0, $a3
	masknez	$a3, $a2, $a3
	or	$a3, $a5, $a3
	nor	$a5, $a4, $zero
	add.d	$a5, $a3, $a5
	bltu	$a5, $s5, .LBB8_8
# %bb.6:                                # %vector.memcheck
                                        #   in Loop: Header=BB8_4 Depth=1
	srli.d	$a3, $a5, 1
	add.d	$a6, $a1, $a3
	addi.d	$a6, $a6, 1
	bgeu	$a4, $a6, .LBB8_11
# %bb.7:                                # %vector.memcheck
                                        #   in Loop: Header=BB8_4 Depth=1
	bstrins.d	$a5, $zero, 0, 0
	add.d	$a2, $a2, $a5
	bgeu	$a1, $a2, .LBB8_11
.LBB8_8:                                #   in Loop: Header=BB8_4 Depth=1
	move	$a2, $a1
	move	$a3, $a4
	.p2align	4, , 16
.LBB8_9:                                # %.lr.ph
                                        #   Parent Loop BB8_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.b	$a1, $a2, 0
	addi.d	$a2, $a2, 1
	st.b	$a1, $a3, 0
	addi.d	$a4, $a3, 2
	st.b	$a1, $a3, 1
	move	$a3, $a4
	bltu	$a4, $a0, .LBB8_9
.LBB8_10:                               # %._crit_edge.loopexit
                                        #   in Loop: Header=BB8_4 Depth=1
	ld.w	$a5, $fp, 128
	b	.LBB8_3
.LBB8_11:                               # %vector.ph
                                        #   in Loop: Header=BB8_4 Depth=1
	addi.d	$a5, $a3, 1
	move	$a6, $a5
	bstrins.d	$a6, $zero, 3, 0
	add.d	$a2, $a1, $a6
	alsl.d	$a3, $a6, $a4, 1
	addi.d	$a4, $a4, 15
	move	$a7, $a6
	.p2align	4, , 16
.LBB8_12:                               # %vector.body
                                        #   Parent Loop BB8_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $a1, 0
	vilvl.b	$vr1, $vr0, $vr0
	vst	$vr1, $a4, -15
	vilvh.b	$vr0, $vr0, $vr0
	vst	$vr0, $a4, 1
	addi.d	$a1, $a1, 16
	addi.d	$a7, $a7, -16
	addi.d	$a4, $a4, 32
	bnez	$a7, .LBB8_12
# %bb.13:                               # %middle.block
                                        #   in Loop: Header=BB8_4 Depth=1
	bne	$a5, $a6, .LBB8_9
	b	.LBB8_10
.LBB8_14:                               # %._crit_edge31
	ld.d	$s5, $sp, 0                     # 8-byte Folded Reload
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
