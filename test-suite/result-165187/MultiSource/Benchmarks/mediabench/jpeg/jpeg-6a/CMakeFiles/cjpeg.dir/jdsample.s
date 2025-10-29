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
	blez	$a4, .LBB5_13
# %bb.1:                                # %.lr.ph42
	move	$a4, $zero
	ld.d	$a3, $a3, 0
	ori	$a5, $zero, 16
	vrepli.b	$vr0, 0
	vrepli.h	$vr1, 3
	b	.LBB5_4
	.p2align	4, , 16
.LBB5_2:                                # %._crit_edge.loopexit
                                        #   in Loop: Header=BB5_4 Depth=1
	addi.d	$a6, $a7, -2
.LBB5_3:                                # %._crit_edge
                                        #   in Loop: Header=BB5_4 Depth=1
	ld.bu	$t1, $t0, 0
	ld.bu	$t0, $t0, -1
	alsl.d	$t2, $t1, $t1, 1
	add.d	$t0, $t0, $t2
	addi.d	$t0, $t0, 1
	srli.d	$t0, $t0, 2
	st.b	$t0, $a7, 0
	st.b	$t1, $a6, 3
	ld.w	$a6, $a0, 392
	addi.d	$a4, $a4, 1
	bge	$a4, $a6, .LBB5_13
.LBB5_4:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_9 Depth 2
                                        #     Child Loop BB5_12 Depth 2
	slli.d	$a6, $a4, 3
	ldx.d	$t5, $a2, $a6
	ldx.d	$a6, $a3, $a6
	ld.bu	$a7, $t5, 0
	st.b	$a7, $a6, 0
	ld.bu	$t0, $t5, 1
	alsl.d	$a7, $a7, $a7, 1
	add.d	$a7, $a7, $t0
	addi.d	$a7, $a7, 2
	srli.d	$a7, $a7, 2
	st.b	$a7, $a6, 1
	ld.w	$t2, $a1, 40
	addi.d	$t0, $t5, 1
	addi.w	$t1, $t2, -2
	addi.d	$a7, $a6, 2
	beqz	$t1, .LBB5_3
# %bb.5:                                # %.lr.ph.preheader
                                        #   in Loop: Header=BB5_4 Depth=1
	bltu	$t1, $a5, .LBB5_12
# %bb.6:                                # %vector.memcheck
                                        #   in Loop: Header=BB5_4 Depth=1
	addi.d	$t2, $t2, -3
	bstrpick.d	$t2, $t2, 31, 0
	add.d	$t3, $t5, $t2
	addi.d	$t3, $t3, 3
	bgeu	$a7, $t3, .LBB5_8
# %bb.7:                                # %vector.memcheck
                                        #   in Loop: Header=BB5_4 Depth=1
	alsl.d	$t2, $t2, $a6, 1
	addi.d	$t2, $t2, 4
	bltu	$t5, $t2, .LBB5_12
.LBB5_8:                                # %vector.ph
                                        #   in Loop: Header=BB5_4 Depth=1
	bstrpick.d	$t2, $t1, 31, 0
	bstrpick.d	$t6, $t2, 31, 4
	slli.d	$t3, $t6, 4
	slli.d	$t4, $t6, 5
	add.d	$a7, $a7, $t4
	sub.d	$t1, $t1, $t3
	add.d	$t4, $a6, $t4
	alsl.d	$t0, $t6, $t0, 4
	addi.d	$t5, $t5, 2
	move	$t6, $t3
	.p2align	4, , 16
.LBB5_9:                                # %vector.body
                                        #   Parent Loop BB5_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	pcalau12i	$t7, %pc_hi20(.LCPI5_0)
	vld	$vr9, $t7, %pc_lo12(.LCPI5_0)
	pcalau12i	$t7, %pc_hi20(.LCPI5_1)
	vld	$vr10, $t7, %pc_lo12(.LCPI5_1)
	pcalau12i	$t7, %pc_hi20(.LCPI5_2)
	vld	$vr11, $t7, %pc_lo12(.LCPI5_2)
	pcalau12i	$t7, %pc_hi20(.LCPI5_3)
	vld	$vr12, $t7, %pc_lo12(.LCPI5_3)
	pcalau12i	$t7, %pc_hi20(.LCPI5_4)
	vld	$vr13, $t7, %pc_lo12(.LCPI5_4)
	pcalau12i	$t7, %pc_hi20(.LCPI5_5)
	vld	$vr14, $t7, %pc_lo12(.LCPI5_5)
	pcalau12i	$t7, %pc_hi20(.LCPI5_6)
	vld	$vr15, $t7, %pc_lo12(.LCPI5_6)
	pcalau12i	$t7, %pc_hi20(.LCPI5_7)
	vld	$vr16, $t7, %pc_lo12(.LCPI5_7)
	addi.d	$t7, $a6, 2
	vreplgr2vr.d	$vr8, $a6
	vadd.d	$vr2, $vr8, $vr9
	vadd.d	$vr3, $vr8, $vr10
	vadd.d	$vr4, $vr8, $vr11
	vadd.d	$vr5, $vr8, $vr12
	vadd.d	$vr6, $vr8, $vr13
	vadd.d	$vr7, $vr8, $vr14
	vadd.d	$vr8, $vr8, $vr15
	vreplgr2vr.d	$vr17, $t7
	vadd.d	$vr9, $vr17, $vr9
	vadd.d	$vr10, $vr17, $vr10
	vadd.d	$vr11, $vr17, $vr11
	vadd.d	$vr12, $vr17, $vr12
	vadd.d	$vr13, $vr17, $vr13
	vadd.d	$vr14, $vr17, $vr14
	vadd.d	$vr15, $vr17, $vr15
	vld	$vr18, $t5, -1
	vld	$vr19, $t5, -2
	vadd.d	$vr16, $vr17, $vr16
	vpickve2gr.d	$t7, $vr16, 0
	vilvl.b	$vr17, $vr0, $vr18
	vilvl.b	$vr20, $vr0, $vr19
	vmadd.h	$vr20, $vr17, $vr1
	vaddi.hu	$vr20, $vr20, 1
	vsrli.h	$vr20, $vr20, 2
	vstelm.b	$vr20, $t7, 0, 0
	vpickve2gr.d	$t7, $vr16, 1
	vstelm.b	$vr20, $t7, 0, 2
	vpickve2gr.d	$t7, $vr15, 0
	vstelm.b	$vr20, $t7, 0, 4
	vpickve2gr.d	$t7, $vr15, 1
	vstelm.b	$vr20, $t7, 0, 6
	vpickve2gr.d	$t7, $vr14, 0
	vstelm.b	$vr20, $t7, 0, 8
	vpickve2gr.d	$t7, $vr14, 1
	vstelm.b	$vr20, $t7, 0, 10
	vpickve2gr.d	$t7, $vr13, 0
	vstelm.b	$vr20, $t7, 0, 12
	vpickve2gr.d	$t7, $vr13, 1
	vstelm.b	$vr20, $t7, 0, 14
	vpickve2gr.d	$t7, $vr12, 0
	vilvh.b	$vr13, $vr0, $vr18
	vilvh.b	$vr14, $vr0, $vr19
	vmadd.h	$vr14, $vr13, $vr1
	vaddi.hu	$vr14, $vr14, 1
	vsrli.h	$vr14, $vr14, 2
	vstelm.b	$vr14, $t7, 0, 0
	vpickve2gr.d	$t7, $vr12, 1
	vstelm.b	$vr14, $t7, 0, 2
	vpickve2gr.d	$t7, $vr11, 0
	vstelm.b	$vr14, $t7, 0, 4
	vpickve2gr.d	$t7, $vr11, 1
	vstelm.b	$vr14, $t7, 0, 6
	vpickve2gr.d	$t7, $vr10, 0
	vstelm.b	$vr14, $t7, 0, 8
	vpickve2gr.d	$t7, $vr10, 1
	vstelm.b	$vr14, $t7, 0, 10
	vpickve2gr.d	$t7, $vr9, 0
	vstelm.b	$vr14, $t7, 0, 12
	vld	$vr10, $t5, 0
	vpickve2gr.d	$t7, $vr9, 1
	vstelm.b	$vr14, $t7, 0, 14
	vpickve2gr.d	$t7, $vr8, 0
	vilvl.b	$vr9, $vr0, $vr10
	vmadd.h	$vr9, $vr17, $vr1
	vaddi.hu	$vr9, $vr9, 2
	vsrli.h	$vr9, $vr9, 2
	vstelm.b	$vr9, $a6, 3, 0
	vstelm.b	$vr9, $a6, 5, 2
	vstelm.b	$vr9, $t7, 3, 4
	vpickve2gr.d	$t7, $vr8, 1
	vstelm.b	$vr9, $t7, 3, 6
	vpickve2gr.d	$t7, $vr7, 0
	vstelm.b	$vr9, $t7, 3, 8
	vpickve2gr.d	$t7, $vr7, 1
	vstelm.b	$vr9, $t7, 3, 10
	vpickve2gr.d	$t7, $vr6, 0
	vstelm.b	$vr9, $t7, 3, 12
	vpickve2gr.d	$t7, $vr6, 1
	vstelm.b	$vr9, $t7, 3, 14
	vpickve2gr.d	$t7, $vr5, 0
	vilvh.b	$vr6, $vr0, $vr10
	vmadd.h	$vr6, $vr13, $vr1
	vaddi.hu	$vr6, $vr6, 2
	vsrli.h	$vr6, $vr6, 2
	vstelm.b	$vr6, $t7, 3, 0
	vpickve2gr.d	$t7, $vr5, 1
	vstelm.b	$vr6, $t7, 3, 2
	vpickve2gr.d	$t7, $vr4, 0
	vstelm.b	$vr6, $t7, 3, 4
	vpickve2gr.d	$t7, $vr4, 1
	vstelm.b	$vr6, $t7, 3, 6
	vpickve2gr.d	$t7, $vr3, 0
	vstelm.b	$vr6, $t7, 3, 8
	vpickve2gr.d	$t7, $vr3, 1
	vstelm.b	$vr6, $t7, 3, 10
	vpickve2gr.d	$t7, $vr2, 0
	vstelm.b	$vr6, $t7, 3, 12
	vpickve2gr.d	$t7, $vr2, 1
	vstelm.b	$vr6, $t7, 3, 14
	addi.d	$a6, $a6, 32
	addi.d	$t6, $t6, -16
	addi.d	$t5, $t5, 16
	bnez	$t6, .LBB5_9
# %bb.10:                               # %middle.block
                                        #   in Loop: Header=BB5_4 Depth=1
	beq	$t3, $t2, .LBB5_2
# %bb.11:                               #   in Loop: Header=BB5_4 Depth=1
	move	$a6, $t4
	.p2align	4, , 16
.LBB5_12:                               # %.lr.ph
                                        #   Parent Loop BB5_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$t2, $t0, 0
	ld.bu	$t3, $t0, -1
	alsl.d	$t2, $t2, $t2, 1
	add.d	$t3, $t3, $t2
	addi.d	$t3, $t3, 1
	srli.d	$t3, $t3, 2
	st.b	$t3, $a7, 0
	ld.bu	$t3, $t0, 1
	addi.d	$t0, $t0, 1
	add.d	$t2, $t2, $t3
	addi.d	$t2, $t2, 2
	srli.d	$t2, $t2, 2
	st.b	$t2, $a6, 3
	addi.w	$t1, $t1, -1
	move	$a6, $a7
	addi.d	$a7, $a7, 2
	bnez	$t1, .LBB5_12
	b	.LBB5_2
.LBB5_13:                               # %._crit_edge43
	ret
.Lfunc_end5:
	.size	h2v1_fancy_upsample, .Lfunc_end5-h2v1_fancy_upsample
                                        # -- End function
	.p2align	5                               # -- Begin function h2v1_upsample
	.type	h2v1_upsample,@function
h2v1_upsample:                          # @h2v1_upsample
# %bb.0:
	ld.w	$a6, $a0, 392
	blez	$a6, .LBB6_14
# %bb.1:                                # %.lr.ph22
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
	ld.d	$a1, $a3, 0
	move	$a3, $zero
	ori	$t5, $zero, 30
	addi.w	$a4, $zero, -2
	st.d	$a4, $sp, 16                    # 8-byte Folded Spill
	b	.LBB6_4
	.p2align	4, , 16
.LBB6_2:                                # %._crit_edge.loopexit
                                        #   in Loop: Header=BB6_4 Depth=1
	ld.w	$a6, $a0, 392
.LBB6_3:                                # %._crit_edge
                                        #   in Loop: Header=BB6_4 Depth=1
	addi.d	$a3, $a3, 1
	bge	$a3, $a6, .LBB6_13
.LBB6_4:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_11 Depth 2
                                        #     Child Loop BB6_9 Depth 2
	ld.wu	$a7, $a0, 128
	beqz	$a7, .LBB6_3
# %bb.5:                                # %.lr.ph.preheader
                                        #   in Loop: Header=BB6_4 Depth=1
	slli.d	$t0, $a3, 3
	ldx.d	$t4, $a1, $t0
	add.d	$a6, $t4, $a7
	ldx.d	$t3, $a2, $t0
	addi.d	$a7, $t4, 2
	sltu	$t0, $a7, $a6
	maskeqz	$t1, $a6, $t0
	masknez	$t0, $a7, $t0
	or	$t0, $t1, $t0
	nor	$t1, $t4, $zero
	add.d	$t1, $t0, $t1
	bltu	$t1, $t5, .LBB6_8
# %bb.6:                                # %vector.memcheck
                                        #   in Loop: Header=BB6_4 Depth=1
	srli.d	$t1, $t1, 1
	add.d	$t2, $t3, $t1
	addi.d	$t2, $t2, 1
	bgeu	$t4, $t2, .LBB6_10
# %bb.7:                                # %vector.memcheck
                                        #   in Loop: Header=BB6_4 Depth=1
	sub.d	$t0, $t4, $t0
	ld.d	$a4, $sp, 16                    # 8-byte Folded Reload
	andn	$t0, $a4, $t0
	add.d	$a7, $a7, $t0
	bgeu	$t3, $a7, .LBB6_10
.LBB6_8:                                #   in Loop: Header=BB6_4 Depth=1
	move	$a7, $t3
	move	$t0, $t4
	.p2align	4, , 16
.LBB6_9:                                # %.lr.ph
                                        #   Parent Loop BB6_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.b	$a4, $a7, 0
	addi.d	$a7, $a7, 1
	st.b	$a4, $t0, 0
	addi.d	$a5, $t0, 2
	st.b	$a4, $t0, 1
	move	$t0, $a5
	bltu	$a5, $a6, .LBB6_9
	b	.LBB6_2
.LBB6_10:                               # %vector.ph
                                        #   in Loop: Header=BB6_4 Depth=1
	addi.d	$t1, $t1, 1
	move	$t2, $t1
	bstrins.d	$t2, $zero, 3, 0
	add.d	$a7, $t3, $t2
	alsl.d	$t0, $t2, $t4, 1
	addi.d	$t3, $t3, 7
	addi.d	$t4, $t4, 15
	move	$t5, $t2
	.p2align	4, , 16
.LBB6_11:                               # %vector.body
                                        #   Parent Loop BB6_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.b	$t6, $t3, -7
	ld.b	$t7, $t3, -6
	ld.b	$t8, $t3, -5
	ld.b	$fp, $t3, -4
	ld.b	$s0, $t3, -3
	ld.b	$s1, $t3, -2
	ld.b	$s2, $t3, -1
	ld.b	$s3, $t3, 0
	ld.b	$s4, $t3, 1
	ld.b	$s5, $t3, 2
	ld.b	$s6, $t3, 3
	ld.b	$s7, $t3, 4
	ld.b	$s8, $t3, 5
	ld.b	$ra, $t3, 6
	ld.b	$a5, $t3, 7
	ld.b	$a4, $t3, 8
	st.b	$t6, $t4, -15
	st.b	$t7, $t4, -13
	st.b	$t8, $t4, -11
	st.b	$fp, $t4, -9
	st.b	$s0, $t4, -7
	st.b	$s1, $t4, -5
	st.b	$s2, $t4, -3
	st.b	$s3, $t4, -1
	st.b	$s4, $t4, 1
	st.b	$s5, $t4, 3
	st.b	$s6, $t4, 5
	st.b	$s7, $t4, 7
	st.b	$s8, $t4, 9
	st.b	$ra, $t4, 11
	st.b	$a5, $t4, 13
	st.b	$a4, $t4, 15
	st.b	$t6, $t4, -14
	st.b	$t7, $t4, -12
	st.b	$t8, $t4, -10
	st.b	$fp, $t4, -8
	st.b	$s0, $t4, -6
	st.b	$s1, $t4, -4
	st.b	$s2, $t4, -2
	st.b	$s3, $t4, 0
	st.b	$s4, $t4, 2
	st.b	$s5, $t4, 4
	st.b	$s6, $t4, 6
	st.b	$s7, $t4, 8
	st.b	$s8, $t4, 10
	st.b	$ra, $t4, 12
	st.b	$a5, $t4, 14
	st.b	$a4, $t4, 16
	addi.d	$t3, $t3, 16
	addi.d	$t5, $t5, -16
	addi.d	$t4, $t4, 32
	bnez	$t5, .LBB6_11
# %bb.12:                               # %middle.block
                                        #   in Loop: Header=BB6_4 Depth=1
	ori	$t5, $zero, 30
	bne	$t1, $t2, .LBB6_9
	b	.LBB6_2
.LBB6_13:
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
.LBB6_14:                               # %._crit_edge23
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
	.word	7                               # 0x7
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.text
	.p2align	5
	.type	h2v2_fancy_upsample,@function
h2v2_fancy_upsample:                    # @h2v2_fancy_upsample
# %bb.0:
	ld.w	$a4, $a0, 392
	blez	$a4, .LBB7_30
# %bb.1:                                # %.preheader.lr.ph
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
	fst.d	$fs0, $sp, 16                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 8                    # 8-byte Folded Spill
	move	$a4, $zero
	move	$a5, $zero
	ld.d	$a3, $a3, 0
	ori	$s7, $zero, 16
	vrepli.b	$vr0, 0
	vrepli.w	$vr1, 3
	pcalau12i	$t2, %pc_hi20(.LCPI7_3)
	pcalau12i	$t3, %pc_hi20(.LCPI7_4)
	pcalau12i	$t4, %pc_hi20(.LCPI7_5)
	pcalau12i	$t5, %pc_hi20(.LCPI7_6)
	pcalau12i	$t6, %pc_hi20(.LCPI7_7)
	pcalau12i	$t7, %pc_hi20(.LCPI7_8)
	b	.LBB7_4
.LBB7_2:                                #   in Loop: Header=BB7_4 Depth=1
	addi.d	$t8, $fp, -2
	ori	$s7, $zero, 16
	.p2align	4, , 16
.LBB7_3:                                # %._crit_edge.1
                                        #   in Loop: Header=BB7_4 Depth=1
	alsl.d	$a7, $s8, $s8, 1
	add.d	$a6, $a6, $a7
	addi.d	$a6, $a6, 8
	srli.d	$a6, $a6, 4
	st.b	$a6, $fp, 0
	slli.d	$a6, $s8, 2
	addi.d	$a6, $a6, 7
	srli.d	$a6, $a6, 4
	st.b	$a6, $t8, 3
	ld.w	$a6, $a0, 392
	addi.w	$a5, $a5, 2
	addi.d	$a4, $a4, 1
	bge	$a5, $a6, .LBB7_29
.LBB7_4:                                # %.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_9 Depth 2
                                        #     Child Loop BB7_15 Depth 2
                                        #     Child Loop BB7_22 Depth 2
                                        #     Child Loop BB7_27 Depth 2
	alsl.d	$t8, $a4, $a2, 3
	slli.d	$a6, $a4, 3
	ldx.d	$s5, $a2, $a6
	ld.d	$s4, $t8, -8
	slli.d	$a6, $a5, 3
	ldx.d	$fp, $a3, $a6
	ld.bu	$a6, $s5, 0
	ld.bu	$a7, $s4, 0
	ld.bu	$t0, $s5, 1
	ld.bu	$t1, $s4, 1
	alsl.d	$a6, $a6, $a6, 1
	add.d	$ra, $a6, $a7
	alsl.d	$a6, $t0, $t0, 1
	add.d	$a6, $a6, $t1
	slli.d	$a7, $ra, 2
	addi.d	$a7, $a7, 8
	srli.d	$a7, $a7, 4
	st.b	$a7, $fp, 0
	alsl.d	$a7, $ra, $ra, 1
	add.d	$a7, $a7, $a6
	addi.d	$a7, $a7, 7
	srli.d	$a7, $a7, 4
	st.b	$a7, $fp, 1
	ld.w	$s6, $a1, 40
	addi.w	$s1, $s6, -2
	addi.d	$s0, $fp, 2
	pcalau12i	$a7, %pc_hi20(.LCPI7_0)
	pcalau12i	$t0, %pc_hi20(.LCPI7_1)
	pcalau12i	$t1, %pc_hi20(.LCPI7_2)
	beqz	$s1, .LBB7_17
# %bb.5:                                # %.lr.ph.preheader
                                        #   in Loop: Header=BB7_4 Depth=1
	addi.d	$s2, $s4, 2
	addi.d	$s3, $s5, 2
	bltu	$s1, $s7, .LBB7_14
# %bb.6:                                # %vector.memcheck99
                                        #   in Loop: Header=BB7_4 Depth=1
	addi.d	$s6, $s6, -3
	bstrpick.d	$s7, $s6, 31, 0
	alsl.d	$s6, $s7, $fp, 1
	addi.d	$s6, $s6, 4
	add.d	$s5, $s5, $s7
	addi.d	$s5, $s5, 3
	sltu	$s5, $s0, $s5
	sltu	$s8, $s3, $s6
	and	$s5, $s5, $s8
	bnez	$s5, .LBB7_13
# %bb.7:                                # %vector.memcheck99
                                        #   in Loop: Header=BB7_4 Depth=1
	add.d	$s4, $s4, $s7
	addi.d	$s4, $s4, 3
	sltu	$s4, $s0, $s4
	sltu	$s5, $s2, $s6
	and	$s4, $s4, $s5
	bnez	$s4, .LBB7_13
# %bb.8:                                # %vector.ph115
                                        #   in Loop: Header=BB7_4 Depth=1
	bstrpick.d	$s4, $s1, 31, 0
	bstrpick.d	$s7, $s4, 31, 4
	slli.d	$s8, $s7, 4
	slli.d	$s5, $s7, 5
	add.d	$s0, $s0, $s5
	sub.d	$s1, $s1, $s8
	add.d	$s5, $fp, $s5
	alsl.d	$s6, $s7, $s2, 4
	alsl.d	$s7, $s7, $s3, 4
	vinsgr2vr.w	$vr16, $ra, 3
	vinsgr2vr.w	$vr8, $a6, 3
	move	$ra, $s8
	.p2align	4, , 16
.LBB7_9:                                # %vector.body119
                                        #   Parent Loop BB7_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$a6, $fp, 2
	vld	$vr10, $a7, %pc_lo12(.LCPI7_0)
	vld	$vr11, $t0, %pc_lo12(.LCPI7_1)
	vld	$vr12, $t1, %pc_lo12(.LCPI7_2)
	vreplgr2vr.d	$vr9, $fp
	vadd.d	$vr2, $vr9, $vr10
	vadd.d	$vr3, $vr9, $vr11
	vadd.d	$vr4, $vr9, $vr12
	vld	$vr13, $t2, %pc_lo12(.LCPI7_3)
	vld	$vr14, $t3, %pc_lo12(.LCPI7_4)
	vld	$vr15, $t4, %pc_lo12(.LCPI7_5)
	vld	$vr17, $t5, %pc_lo12(.LCPI7_6)
	vadd.d	$vr5, $vr9, $vr13
	vadd.d	$vr6, $vr9, $vr14
	vadd.d	$vr7, $vr9, $vr15
	vadd.d	$vr9, $vr9, $vr17
	vld	$vr21, $t6, %pc_lo12(.LCPI7_7)
	vreplgr2vr.d	$vr22, $a6
	vadd.d	$vr10, $vr22, $vr10
	vadd.d	$vr11, $vr22, $vr11
	vadd.d	$vr12, $vr22, $vr12
	vadd.d	$vr13, $vr22, $vr13
	vadd.d	$vr14, $vr22, $vr14
	vadd.d	$vr15, $vr22, $vr15
	vld	$vr18, $s3, 0
	vadd.d	$vr20, $vr22, $vr17
	vld	$vr19, $s2, 0
	vadd.d	$vr21, $vr22, $vr21
	vilvl.b	$vr22, $vr0, $vr18
	vilvl.h	$vr23, $vr0, $vr22
	vilvl.b	$vr24, $vr0, $vr19
	vld	$vr25, $t7, %pc_lo12(.LCPI7_8)
	vilvl.h	$vr17, $vr0, $vr24
	vmadd.w	$vr17, $vr23, $vr1
	vpickve2gr.d	$a6, $vr21, 0
	vshuf.w	$vr25, $vr8, $vr16
	vbsll.v	$vr16, $vr17, 4
	vbsrl.v	$vr8, $vr8, 12
	vor.v	$vr16, $vr16, $vr8
	vpackev.d	$vr8, $vr17, $vr25
	vmadd.w	$vr8, $vr16, $vr1
	vaddi.wu	$vr8, $vr8, 8
	vsrli.w	$vr8, $vr8, 4
	vstelm.b	$vr8, $a6, 0, 0
	vpickve2gr.d	$a6, $vr21, 1
	vilvh.h	$vr22, $vr0, $vr22
	vilvh.h	$vr21, $vr0, $vr24
	vmadd.w	$vr21, $vr22, $vr1
	vbsrl.v	$vr22, $vr17, 12
	vbsll.v	$vr23, $vr21, 4
	vor.v	$vr22, $vr23, $vr22
	vbsrl.v	$vr23, $vr17, 8
	vbsll.v	$vr24, $vr21, 8
	vor.v	$vr23, $vr24, $vr23
	vmadd.w	$vr23, $vr22, $vr1
	vaddi.wu	$vr23, $vr23, 8
	vsrli.w	$vr23, $vr23, 4
	vpickev.h	$vr8, $vr23, $vr8
	vstelm.b	$vr8, $a6, 0, 2
	vpickve2gr.d	$a6, $vr20, 0
	vstelm.b	$vr8, $a6, 0, 4
	vpickve2gr.d	$a6, $vr20, 1
	vstelm.b	$vr8, $a6, 0, 6
	vpickve2gr.d	$a6, $vr15, 0
	vstelm.b	$vr8, $a6, 0, 8
	vpickve2gr.d	$a6, $vr15, 1
	vstelm.b	$vr8, $a6, 0, 10
	vpickve2gr.d	$a6, $vr14, 0
	vstelm.b	$vr8, $a6, 0, 12
	vpickve2gr.d	$a6, $vr14, 1
	vstelm.b	$vr8, $a6, 0, 14
	vpickve2gr.d	$a6, $vr13, 0
	vilvh.b	$vr8, $vr0, $vr18
	vilvl.h	$vr15, $vr0, $vr8
	vilvh.b	$vr18, $vr0, $vr19
	vilvl.h	$vr14, $vr0, $vr18
	vmadd.w	$vr14, $vr15, $vr1
	vbsrl.v	$vr15, $vr21, 12
	vbsll.v	$vr19, $vr14, 4
	vor.v	$vr15, $vr19, $vr15
	vbsrl.v	$vr19, $vr21, 8
	vbsll.v	$vr20, $vr14, 8
	vor.v	$vr19, $vr20, $vr19
	vmadd.w	$vr19, $vr15, $vr1
	vaddi.wu	$vr19, $vr19, 8
	vsrli.w	$vr19, $vr19, 4
	vstelm.b	$vr19, $a6, 0, 0
	vpickve2gr.d	$a6, $vr13, 1
	vilvh.h	$vr13, $vr0, $vr8
	vilvh.h	$vr8, $vr0, $vr18
	vmadd.w	$vr8, $vr13, $vr1
	vbsrl.v	$vr13, $vr14, 12
	vbsll.v	$vr18, $vr8, 4
	vor.v	$vr13, $vr18, $vr13
	vbsrl.v	$vr18, $vr14, 8
	vbsll.v	$vr20, $vr8, 8
	vor.v	$vr18, $vr20, $vr18
	vmadd.w	$vr18, $vr13, $vr1
	vaddi.wu	$vr18, $vr18, 8
	vsrli.w	$vr18, $vr18, 4
	vpickev.h	$vr18, $vr18, $vr19
	vstelm.b	$vr18, $a6, 0, 2
	vpickve2gr.d	$a6, $vr12, 0
	vstelm.b	$vr18, $a6, 0, 4
	vpickve2gr.d	$a6, $vr12, 1
	vstelm.b	$vr18, $a6, 0, 6
	vpickve2gr.d	$a6, $vr11, 0
	vstelm.b	$vr18, $a6, 0, 8
	vpickve2gr.d	$a6, $vr11, 1
	vstelm.b	$vr18, $a6, 0, 10
	vpickve2gr.d	$a6, $vr10, 0
	vstelm.b	$vr18, $a6, 0, 12
	vpickve2gr.d	$a6, $vr10, 1
	vstelm.b	$vr18, $a6, 0, 14
	vpickve2gr.d	$a6, $vr9, 0
	vmadd.w	$vr17, $vr16, $vr1
	vmadd.w	$vr21, $vr22, $vr1
	vaddi.wu	$vr10, $vr21, 7
	vaddi.wu	$vr11, $vr17, 7
	vsrli.w	$vr11, $vr11, 4
	vsrli.w	$vr10, $vr10, 4
	vpickev.h	$vr10, $vr10, $vr11
	vstelm.b	$vr11, $fp, 3, 0
	vstelm.b	$vr10, $fp, 5, 2
	vstelm.b	$vr10, $a6, 3, 4
	vpickve2gr.d	$a6, $vr9, 1
	vstelm.b	$vr10, $a6, 3, 6
	vpickve2gr.d	$a6, $vr7, 0
	vstelm.b	$vr10, $a6, 3, 8
	vpickve2gr.d	$a6, $vr7, 1
	vstelm.b	$vr10, $a6, 3, 10
	vpickve2gr.d	$a6, $vr6, 0
	vstelm.b	$vr10, $a6, 3, 12
	vpickve2gr.d	$a6, $vr6, 1
	vstelm.b	$vr10, $a6, 3, 14
	vpickve2gr.d	$a6, $vr5, 0
	vmadd.w	$vr14, $vr15, $vr1
	vaddi.wu	$vr6, $vr14, 7
	vsrli.w	$vr6, $vr6, 4
	vstelm.b	$vr6, $a6, 3, 0
	vpickve2gr.d	$a6, $vr5, 1
	vori.b	$vr5, $vr8, 0
	vmadd.w	$vr5, $vr13, $vr1
	vaddi.wu	$vr5, $vr5, 7
	vsrli.w	$vr5, $vr5, 4
	vpickev.h	$vr5, $vr5, $vr6
	vstelm.b	$vr5, $a6, 3, 2
	vpickve2gr.d	$a6, $vr4, 0
	vstelm.b	$vr5, $a6, 3, 4
	vpickve2gr.d	$a6, $vr4, 1
	vstelm.b	$vr5, $a6, 3, 6
	vpickve2gr.d	$a6, $vr3, 0
	vstelm.b	$vr5, $a6, 3, 8
	vpickve2gr.d	$a6, $vr3, 1
	vstelm.b	$vr5, $a6, 3, 10
	vpickve2gr.d	$a6, $vr2, 0
	vstelm.b	$vr5, $a6, 3, 12
	vpickve2gr.d	$a6, $vr2, 1
	vstelm.b	$vr5, $a6, 3, 14
	addi.d	$fp, $fp, 32
	addi.d	$ra, $ra, -16
	addi.d	$s3, $s3, 16
	addi.d	$s2, $s2, 16
	vori.b	$vr16, $vr13, 0
	bnez	$ra, .LBB7_9
# %bb.10:                               # %middle.block136
                                        #   in Loop: Header=BB7_4 Depth=1
	vpickve2gr.w	$ra, $vr8, 2
	vpickve2gr.w	$a6, $vr8, 3
	bne	$s8, $s4, .LBB7_12
# %bb.11:                               #   in Loop: Header=BB7_4 Depth=1
	addi.d	$fp, $s0, -2
	ori	$s7, $zero, 16
	b	.LBB7_17
.LBB7_12:                               #   in Loop: Header=BB7_4 Depth=1
	move	$fp, $s5
	move	$s2, $s6
	move	$s3, $s7
.LBB7_13:                               # %.lr.ph.preheader149
                                        #   in Loop: Header=BB7_4 Depth=1
	ori	$s7, $zero, 16
.LBB7_14:                               # %.lr.ph.preheader149
                                        #   in Loop: Header=BB7_4 Depth=1
	move	$s4, $ra
	.p2align	4, , 16
.LBB7_15:                               # %.lr.ph
                                        #   Parent Loop BB7_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$s5, $s3, 0
	move	$ra, $a6
	ld.bu	$a6, $s2, 0
	addi.d	$s3, $s3, 1
	alsl.d	$s5, $s5, $s5, 1
	addi.d	$s2, $s2, 1
	add.d	$a6, $s5, $a6
	alsl.d	$s5, $ra, $ra, 1
	add.d	$s4, $s4, $s5
	addi.d	$s4, $s4, 8
	srli.d	$s4, $s4, 4
	st.b	$s4, $s0, 0
	add.d	$s4, $s5, $a6
	addi.d	$s4, $s4, 7
	srli.d	$s4, $s4, 4
	st.b	$s4, $fp, 3
	addi.w	$s1, $s1, -1
	move	$fp, $s0
	addi.d	$s0, $s0, 2
	move	$s4, $ra
	bnez	$s1, .LBB7_15
# %bb.16:                               # %._crit_edge.loopexit
                                        #   in Loop: Header=BB7_4 Depth=1
	addi.d	$fp, $s0, -2
.LBB7_17:                               # %._crit_edge
                                        #   in Loop: Header=BB7_4 Depth=1
	alsl.d	$s1, $a6, $a6, 1
	add.d	$s1, $ra, $s1
	addi.d	$s1, $s1, 8
	srli.d	$s1, $s1, 4
	st.b	$s1, $s0, 0
	slli.d	$a6, $a6, 2
	addi.d	$a6, $a6, 7
	srli.d	$a6, $a6, 4
	st.b	$a6, $fp, 3
	ld.d	$s4, $t8, 0
	ld.d	$s3, $t8, 8
	alsl.d	$a6, $a5, $a3, 3
	ld.d	$t8, $a6, 8
	ld.bu	$a6, $s4, 0
	ld.bu	$fp, $s3, 0
	ld.bu	$s0, $s4, 1
	ld.bu	$s1, $s3, 1
	alsl.d	$a6, $a6, $a6, 1
	add.d	$a6, $a6, $fp
	alsl.d	$fp, $s0, $s0, 1
	add.d	$s8, $fp, $s1
	slli.d	$fp, $a6, 2
	addi.d	$fp, $fp, 8
	srli.d	$fp, $fp, 4
	st.b	$fp, $t8, 0
	alsl.d	$fp, $a6, $a6, 1
	add.d	$fp, $fp, $s8
	addi.d	$fp, $fp, 7
	srli.d	$fp, $fp, 4
	st.b	$fp, $t8, 1
	ld.w	$s5, $a1, 40
	addi.w	$s0, $s5, -2
	addi.d	$fp, $t8, 2
	beqz	$s0, .LBB7_3
# %bb.18:                               # %.lr.ph.preheader.1
                                        #   in Loop: Header=BB7_4 Depth=1
	addi.d	$s1, $s3, 2
	addi.d	$s2, $s4, 2
	bltu	$s0, $s7, .LBB7_26
# %bb.19:                               # %vector.memcheck
                                        #   in Loop: Header=BB7_4 Depth=1
	addi.d	$s5, $s5, -3
	bstrpick.d	$s6, $s5, 31, 0
	alsl.d	$s5, $s6, $t8, 1
	addi.d	$s5, $s5, 4
	add.d	$s4, $s4, $s6
	addi.d	$s4, $s4, 3
	sltu	$s4, $fp, $s4
	sltu	$s7, $s2, $s5
	and	$s4, $s4, $s7
	bnez	$s4, .LBB7_25
# %bb.20:                               # %vector.memcheck
                                        #   in Loop: Header=BB7_4 Depth=1
	add.d	$s3, $s3, $s6
	addi.d	$s3, $s3, 3
	sltu	$s3, $fp, $s3
	sltu	$s4, $s1, $s5
	and	$s3, $s3, $s4
	bnez	$s3, .LBB7_25
# %bb.21:                               # %vector.ph
                                        #   in Loop: Header=BB7_4 Depth=1
	bstrpick.d	$s3, $s0, 31, 0
	bstrpick.d	$s6, $s3, 31, 4
	slli.d	$s7, $s6, 4
	slli.d	$s4, $s6, 5
	add.d	$fp, $fp, $s4
	sub.d	$s0, $s0, $s7
	add.d	$s4, $t8, $s4
	alsl.d	$s5, $s6, $s1, 4
	alsl.d	$s6, $s6, $s2, 4
	vinsgr2vr.w	$vr16, $a6, 3
	vinsgr2vr.w	$vr8, $s8, 3
	move	$s8, $s7
	.p2align	4, , 16
.LBB7_22:                               # %vector.body
                                        #   Parent Loop BB7_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$a6, $t8, 2
	vld	$vr10, $a7, %pc_lo12(.LCPI7_0)
	vld	$vr11, $t0, %pc_lo12(.LCPI7_1)
	vld	$vr12, $t1, %pc_lo12(.LCPI7_2)
	vreplgr2vr.d	$vr9, $t8
	vadd.d	$vr2, $vr9, $vr10
	vadd.d	$vr3, $vr9, $vr11
	vadd.d	$vr4, $vr9, $vr12
	vld	$vr13, $t2, %pc_lo12(.LCPI7_3)
	vld	$vr14, $t3, %pc_lo12(.LCPI7_4)
	vld	$vr15, $t4, %pc_lo12(.LCPI7_5)
	vld	$vr17, $t5, %pc_lo12(.LCPI7_6)
	vadd.d	$vr5, $vr9, $vr13
	vadd.d	$vr6, $vr9, $vr14
	vadd.d	$vr7, $vr9, $vr15
	vadd.d	$vr9, $vr9, $vr17
	vld	$vr21, $t6, %pc_lo12(.LCPI7_7)
	vreplgr2vr.d	$vr22, $a6
	vadd.d	$vr10, $vr22, $vr10
	vadd.d	$vr11, $vr22, $vr11
	vadd.d	$vr12, $vr22, $vr12
	vadd.d	$vr13, $vr22, $vr13
	vadd.d	$vr14, $vr22, $vr14
	vadd.d	$vr15, $vr22, $vr15
	vld	$vr18, $s2, 0
	vadd.d	$vr20, $vr22, $vr17
	vld	$vr19, $s1, 0
	vadd.d	$vr21, $vr22, $vr21
	vilvl.b	$vr22, $vr0, $vr18
	vilvl.h	$vr23, $vr0, $vr22
	vilvl.b	$vr24, $vr0, $vr19
	vld	$vr25, $t7, %pc_lo12(.LCPI7_8)
	vilvl.h	$vr17, $vr0, $vr24
	vmadd.w	$vr17, $vr23, $vr1
	vpickve2gr.d	$a6, $vr21, 0
	vshuf.w	$vr25, $vr8, $vr16
	vbsll.v	$vr16, $vr17, 4
	vbsrl.v	$vr8, $vr8, 12
	vor.v	$vr16, $vr16, $vr8
	vpackev.d	$vr8, $vr17, $vr25
	vmadd.w	$vr8, $vr16, $vr1
	vaddi.wu	$vr8, $vr8, 8
	vsrli.w	$vr8, $vr8, 4
	vstelm.b	$vr8, $a6, 0, 0
	vpickve2gr.d	$a6, $vr21, 1
	vilvh.h	$vr22, $vr0, $vr22
	vilvh.h	$vr21, $vr0, $vr24
	vmadd.w	$vr21, $vr22, $vr1
	vbsrl.v	$vr22, $vr17, 12
	vbsll.v	$vr23, $vr21, 4
	vor.v	$vr22, $vr23, $vr22
	vbsrl.v	$vr23, $vr17, 8
	vbsll.v	$vr24, $vr21, 8
	vor.v	$vr23, $vr24, $vr23
	vmadd.w	$vr23, $vr22, $vr1
	vaddi.wu	$vr23, $vr23, 8
	vsrli.w	$vr23, $vr23, 4
	vpickev.h	$vr8, $vr23, $vr8
	vstelm.b	$vr8, $a6, 0, 2
	vpickve2gr.d	$a6, $vr20, 0
	vstelm.b	$vr8, $a6, 0, 4
	vpickve2gr.d	$a6, $vr20, 1
	vstelm.b	$vr8, $a6, 0, 6
	vpickve2gr.d	$a6, $vr15, 0
	vstelm.b	$vr8, $a6, 0, 8
	vpickve2gr.d	$a6, $vr15, 1
	vstelm.b	$vr8, $a6, 0, 10
	vpickve2gr.d	$a6, $vr14, 0
	vstelm.b	$vr8, $a6, 0, 12
	vpickve2gr.d	$a6, $vr14, 1
	vstelm.b	$vr8, $a6, 0, 14
	vpickve2gr.d	$a6, $vr13, 0
	vilvh.b	$vr8, $vr0, $vr18
	vilvl.h	$vr15, $vr0, $vr8
	vilvh.b	$vr18, $vr0, $vr19
	vilvl.h	$vr14, $vr0, $vr18
	vmadd.w	$vr14, $vr15, $vr1
	vbsrl.v	$vr15, $vr21, 12
	vbsll.v	$vr19, $vr14, 4
	vor.v	$vr15, $vr19, $vr15
	vbsrl.v	$vr19, $vr21, 8
	vbsll.v	$vr20, $vr14, 8
	vor.v	$vr19, $vr20, $vr19
	vmadd.w	$vr19, $vr15, $vr1
	vaddi.wu	$vr19, $vr19, 8
	vsrli.w	$vr19, $vr19, 4
	vstelm.b	$vr19, $a6, 0, 0
	vpickve2gr.d	$a6, $vr13, 1
	vilvh.h	$vr13, $vr0, $vr8
	vilvh.h	$vr8, $vr0, $vr18
	vmadd.w	$vr8, $vr13, $vr1
	vbsrl.v	$vr13, $vr14, 12
	vbsll.v	$vr18, $vr8, 4
	vor.v	$vr13, $vr18, $vr13
	vbsrl.v	$vr18, $vr14, 8
	vbsll.v	$vr20, $vr8, 8
	vor.v	$vr18, $vr20, $vr18
	vmadd.w	$vr18, $vr13, $vr1
	vaddi.wu	$vr18, $vr18, 8
	vsrli.w	$vr18, $vr18, 4
	vpickev.h	$vr18, $vr18, $vr19
	vstelm.b	$vr18, $a6, 0, 2
	vpickve2gr.d	$a6, $vr12, 0
	vstelm.b	$vr18, $a6, 0, 4
	vpickve2gr.d	$a6, $vr12, 1
	vstelm.b	$vr18, $a6, 0, 6
	vpickve2gr.d	$a6, $vr11, 0
	vstelm.b	$vr18, $a6, 0, 8
	vpickve2gr.d	$a6, $vr11, 1
	vstelm.b	$vr18, $a6, 0, 10
	vpickve2gr.d	$a6, $vr10, 0
	vstelm.b	$vr18, $a6, 0, 12
	vpickve2gr.d	$a6, $vr10, 1
	vstelm.b	$vr18, $a6, 0, 14
	vpickve2gr.d	$a6, $vr9, 0
	vmadd.w	$vr17, $vr16, $vr1
	vmadd.w	$vr21, $vr22, $vr1
	vaddi.wu	$vr10, $vr21, 7
	vaddi.wu	$vr11, $vr17, 7
	vsrli.w	$vr11, $vr11, 4
	vsrli.w	$vr10, $vr10, 4
	vpickev.h	$vr10, $vr10, $vr11
	vstelm.b	$vr11, $t8, 3, 0
	vstelm.b	$vr10, $t8, 5, 2
	vstelm.b	$vr10, $a6, 3, 4
	vpickve2gr.d	$a6, $vr9, 1
	vstelm.b	$vr10, $a6, 3, 6
	vpickve2gr.d	$a6, $vr7, 0
	vstelm.b	$vr10, $a6, 3, 8
	vpickve2gr.d	$a6, $vr7, 1
	vstelm.b	$vr10, $a6, 3, 10
	vpickve2gr.d	$a6, $vr6, 0
	vstelm.b	$vr10, $a6, 3, 12
	vpickve2gr.d	$a6, $vr6, 1
	vstelm.b	$vr10, $a6, 3, 14
	vpickve2gr.d	$a6, $vr5, 0
	vmadd.w	$vr14, $vr15, $vr1
	vaddi.wu	$vr6, $vr14, 7
	vsrli.w	$vr6, $vr6, 4
	vstelm.b	$vr6, $a6, 3, 0
	vpickve2gr.d	$a6, $vr5, 1
	vori.b	$vr5, $vr8, 0
	vmadd.w	$vr5, $vr13, $vr1
	vaddi.wu	$vr5, $vr5, 7
	vsrli.w	$vr5, $vr5, 4
	vpickev.h	$vr5, $vr5, $vr6
	vstelm.b	$vr5, $a6, 3, 2
	vpickve2gr.d	$a6, $vr4, 0
	vstelm.b	$vr5, $a6, 3, 4
	vpickve2gr.d	$a6, $vr4, 1
	vstelm.b	$vr5, $a6, 3, 6
	vpickve2gr.d	$a6, $vr3, 0
	vstelm.b	$vr5, $a6, 3, 8
	vpickve2gr.d	$a6, $vr3, 1
	vstelm.b	$vr5, $a6, 3, 10
	vpickve2gr.d	$a6, $vr2, 0
	vstelm.b	$vr5, $a6, 3, 12
	vpickve2gr.d	$a6, $vr2, 1
	vstelm.b	$vr5, $a6, 3, 14
	addi.d	$t8, $t8, 32
	addi.d	$s8, $s8, -16
	addi.d	$s2, $s2, 16
	addi.d	$s1, $s1, 16
	vori.b	$vr16, $vr13, 0
	bnez	$s8, .LBB7_22
# %bb.23:                               # %middle.block
                                        #   in Loop: Header=BB7_4 Depth=1
	vpickve2gr.w	$a6, $vr8, 2
	vpickve2gr.w	$s8, $vr8, 3
	beq	$s7, $s3, .LBB7_2
# %bb.24:                               #   in Loop: Header=BB7_4 Depth=1
	move	$t8, $s4
	move	$s1, $s5
	move	$s2, $s6
.LBB7_25:                               # %.lr.ph.1.preheader
                                        #   in Loop: Header=BB7_4 Depth=1
	ori	$s7, $zero, 16
.LBB7_26:                               # %.lr.ph.1.preheader
                                        #   in Loop: Header=BB7_4 Depth=1
	move	$a7, $a6
	.p2align	4, , 16
.LBB7_27:                               # %.lr.ph.1
                                        #   Parent Loop BB7_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$t0, $s2, 0
	move	$a6, $s8
	ld.bu	$t1, $s1, 0
	addi.d	$s2, $s2, 1
	alsl.d	$t0, $t0, $t0, 1
	addi.d	$s1, $s1, 1
	add.d	$s8, $t0, $t1
	alsl.d	$t0, $a6, $a6, 1
	add.d	$a7, $a7, $t0
	addi.d	$a7, $a7, 8
	srli.d	$a7, $a7, 4
	st.b	$a7, $fp, 0
	add.d	$a7, $t0, $s8
	addi.d	$a7, $a7, 7
	srli.d	$a7, $a7, 4
	st.b	$a7, $t8, 3
	addi.w	$s0, $s0, -1
	move	$t8, $fp
	addi.d	$fp, $fp, 2
	move	$a7, $a6
	bnez	$s0, .LBB7_27
# %bb.28:                               # %._crit_edge.1.loopexit
                                        #   in Loop: Header=BB7_4 Depth=1
	addi.d	$t8, $fp, -2
	b	.LBB7_3
.LBB7_29:
	fld.d	$fs1, $sp, 8                    # 8-byte Folded Reload
	fld.d	$fs0, $sp, 16                   # 8-byte Folded Reload
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
.LBB7_30:                               # %._crit_edge68
	ret
.Lfunc_end7:
	.size	h2v2_fancy_upsample, .Lfunc_end7-h2v2_fancy_upsample
                                        # -- End function
	.p2align	5                               # -- Begin function h2v2_upsample
	.type	h2v2_upsample,@function
h2v2_upsample:                          # @h2v2_upsample
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
	move	$fp, $a0
	ld.w	$a0, $a0, 392
	blez	$a0, .LBB8_14
# %bb.1:                                # %.lr.ph30
	move	$s0, $a2
	ld.d	$s1, $a3, 0
	move	$s3, $zero
	move	$s2, $zero
	move	$s4, $zero
	ori	$s5, $zero, 30
	addi.w	$a0, $zero, -2
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	st.d	$a2, $sp, 16                    # 8-byte Folded Spill
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
	ldx.d	$a6, $s1, $a1
	add.d	$a0, $a6, $a0
	slli.d	$a1, $s3, 3
	ldx.d	$a5, $s0, $a1
	addi.d	$a1, $a6, 2
	sltu	$a2, $a1, $a0
	maskeqz	$a3, $a0, $a2
	masknez	$a2, $a1, $a2
	or	$a2, $a3, $a2
	nor	$a3, $a6, $zero
	add.d	$a3, $a2, $a3
	bltu	$a3, $s5, .LBB8_8
# %bb.6:                                # %vector.memcheck
                                        #   in Loop: Header=BB8_4 Depth=1
	srli.d	$a3, $a3, 1
	add.d	$a4, $a5, $a3
	addi.d	$a4, $a4, 1
	bgeu	$a6, $a4, .LBB8_11
# %bb.7:                                # %vector.memcheck
                                        #   in Loop: Header=BB8_4 Depth=1
	sub.d	$a2, $a6, $a2
	ld.d	$a4, $sp, 24                    # 8-byte Folded Reload
	andn	$a2, $a4, $a2
	add.d	$a1, $a1, $a2
	bgeu	$a5, $a1, .LBB8_11
.LBB8_8:                                #   in Loop: Header=BB8_4 Depth=1
	move	$a1, $a5
	move	$a2, $a6
	.p2align	4, , 16
.LBB8_9:                                # %.lr.ph
                                        #   Parent Loop BB8_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.b	$a3, $a1, 0
	addi.d	$a1, $a1, 1
	st.b	$a3, $a2, 0
	addi.d	$a4, $a2, 2
	st.b	$a3, $a2, 1
	move	$a2, $a4
	bltu	$a4, $a0, .LBB8_9
.LBB8_10:                               # %._crit_edge.loopexit
                                        #   in Loop: Header=BB8_4 Depth=1
	ld.w	$a5, $fp, 128
	b	.LBB8_3
.LBB8_11:                               # %vector.ph
                                        #   in Loop: Header=BB8_4 Depth=1
	addi.d	$a4, $a3, 1
	st.d	$a4, $sp, 32                    # 8-byte Folded Spill
	bstrins.d	$a4, $zero, 3, 0
	add.d	$a1, $a5, $a4
	alsl.d	$a2, $a4, $a6, 1
	addi.d	$a5, $a5, 7
	addi.d	$a6, $a6, 15
	move	$a7, $a4
	.p2align	4, , 16
.LBB8_12:                               # %vector.body
                                        #   Parent Loop BB8_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.b	$t0, $a5, -7
	ld.b	$t1, $a5, -6
	ld.b	$t2, $a5, -5
	ld.b	$t3, $a5, -4
	ld.b	$t4, $a5, -3
	ld.b	$t5, $a5, -2
	ld.b	$t6, $a5, -1
	ld.b	$t7, $a5, 0
	ld.b	$t8, $a5, 1
	ld.b	$s7, $a5, 2
	ld.b	$s8, $a5, 3
	ld.b	$ra, $a5, 4
	ld.b	$s6, $a5, 5
	ld.b	$s5, $a5, 6
	ld.b	$s0, $a5, 7
	ld.b	$a3, $a5, 8
	st.b	$t0, $a6, -15
	st.b	$t1, $a6, -13
	st.b	$t2, $a6, -11
	st.b	$t3, $a6, -9
	st.b	$t4, $a6, -7
	st.b	$t5, $a6, -5
	st.b	$t6, $a6, -3
	st.b	$t7, $a6, -1
	st.b	$t8, $a6, 1
	st.b	$s7, $a6, 3
	st.b	$s8, $a6, 5
	st.b	$ra, $a6, 7
	st.b	$s6, $a6, 9
	st.b	$s5, $a6, 11
	st.b	$s0, $a6, 13
	st.b	$a3, $a6, 15
	st.b	$t0, $a6, -14
	st.b	$t1, $a6, -12
	st.b	$t2, $a6, -10
	st.b	$t3, $a6, -8
	st.b	$t4, $a6, -6
	st.b	$t5, $a6, -4
	st.b	$t6, $a6, -2
	st.b	$t7, $a6, 0
	st.b	$t8, $a6, 2
	st.b	$s7, $a6, 4
	st.b	$s8, $a6, 6
	st.b	$ra, $a6, 8
	st.b	$s6, $a6, 10
	st.b	$s5, $a6, 12
	st.b	$s0, $a6, 14
	st.b	$a3, $a6, 16
	addi.d	$a5, $a5, 16
	addi.d	$a7, $a7, -16
	addi.d	$a6, $a6, 32
	bnez	$a7, .LBB8_12
# %bb.13:                               # %middle.block
                                        #   in Loop: Header=BB8_4 Depth=1
	ld.d	$s0, $sp, 16                    # 8-byte Folded Reload
	ori	$s5, $zero, 30
	ld.d	$a3, $sp, 32                    # 8-byte Folded Reload
	bne	$a3, $a4, .LBB8_9
	b	.LBB8_10
.LBB8_14:                               # %._crit_edge31
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
