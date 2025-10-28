	.file	"jcsample.c"
	.text
	.globl	jinit_downsampler               # -- Begin function jinit_downsampler
	.p2align	5
	.type	jinit_downsampler,@function
jinit_downsampler:                      # @jinit_downsampler
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
	ld.d	$a0, $a0, 8
	ld.d	$a3, $a0, 0
	ori	$a1, $zero, 1
	ori	$a2, $zero, 104
	move	$a0, $fp
	jirl	$ra, $a3, 0
	move	$s0, $a0
	st.d	$a0, $fp, 472
	pcalau12i	$a0, %pc_hi20(start_pass_downsample)
	addi.d	$a0, $a0, %pc_lo12(start_pass_downsample)
	st.d	$a0, $s0, 0
	pcalau12i	$a0, %pc_hi20(sep_downsample)
	addi.d	$a0, $a0, %pc_lo12(sep_downsample)
	ld.w	$a1, $fp, 260
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
	ld.w	$a0, $fp, 68
	blez	$a0, .LBB0_25
# %bb.3:                                # %.lr.ph
	ld.d	$a1, $fp, 80
	addi.d	$s1, $s0, 24
	addi.d	$s2, $a1, 12
	pcalau12i	$a1, %pc_hi20(fullsize_downsample)
	addi.d	$s4, $a1, %pc_lo12(fullsize_downsample)
	pcalau12i	$a1, %pc_hi20(fullsize_smooth_downsample)
	addi.d	$s5, $a1, %pc_lo12(fullsize_smooth_downsample)
	pcalau12i	$a1, %pc_hi20(h2v1_downsample)
	addi.d	$s6, $a1, %pc_lo12(h2v1_downsample)
	pcalau12i	$a1, %pc_hi20(h2v2_downsample)
	addi.d	$a1, $a1, %pc_lo12(h2v2_downsample)
	st.d	$a1, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(h2v2_smooth_downsample)
	addi.d	$a1, $a1, %pc_lo12(h2v2_smooth_downsample)
	st.d	$a1, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(int_downsample)
	addi.d	$a1, $a1, %pc_lo12(int_downsample)
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	move	$s8, $zero
	ori	$s7, $zero, 37
	ori	$s3, $zero, 1
	b	.LBB0_7
	.p2align	4, , 16
.LBB0_4:                                #   in Loop: Header=BB0_7 Depth=1
	mod.w	$a1, $a2, $a1
	beqz	$a1, .LBB0_18
.LBB0_5:                                #   in Loop: Header=BB0_7 Depth=1
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 0
	st.w	$s7, $a0, 40
	move	$a0, $fp
	jirl	$ra, $a1, 0
	ld.w	$a0, $fp, 68
.LBB0_6:                                #   in Loop: Header=BB0_7 Depth=1
	addi.d	$s8, $s8, 1
	addi.d	$s1, $s1, 8
	addi.d	$s2, $s2, 96
	bge	$s8, $a0, .LBB0_22
.LBB0_7:                                # =>This Inner Loop Header: Depth=1
	ld.w	$a1, $s2, -4
	ld.w	$a2, $fp, 304
	bne	$a1, $a2, .LBB0_11
# %bb.8:                                #   in Loop: Header=BB0_7 Depth=1
	ld.w	$a3, $s2, 0
	ld.w	$a4, $fp, 308
	bne	$a3, $a4, .LBB0_11
# %bb.9:                                #   in Loop: Header=BB0_7 Depth=1
	ld.w	$a1, $fp, 264
	beqz	$a1, .LBB0_20
# %bb.10:                               #   in Loop: Header=BB0_7 Depth=1
	st.d	$s5, $s1, 0
	b	.LBB0_17
	.p2align	4, , 16
.LBB0_11:                               #   in Loop: Header=BB0_7 Depth=1
	slli.w	$a3, $a1, 1
	bne	$a3, $a2, .LBB0_4
# %bb.12:                               #   in Loop: Header=BB0_7 Depth=1
	ld.w	$a3, $s2, 0
	ld.w	$a4, $fp, 308
	bne	$a3, $a4, .LBB0_14
# %bb.13:                               #   in Loop: Header=BB0_7 Depth=1
	move	$s3, $zero
	st.d	$s6, $s1, 0
	b	.LBB0_6
.LBB0_14:                               #   in Loop: Header=BB0_7 Depth=1
	slli.w	$a3, $a3, 1
	bne	$a3, $a4, .LBB0_4
# %bb.15:                               #   in Loop: Header=BB0_7 Depth=1
	ld.w	$a1, $fp, 264
	beqz	$a1, .LBB0_21
# %bb.16:                               #   in Loop: Header=BB0_7 Depth=1
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	st.d	$a1, $s1, 0
.LBB0_17:                               #   in Loop: Header=BB0_7 Depth=1
	ori	$a1, $zero, 1
	st.w	$a1, $s0, 16
	b	.LBB0_6
.LBB0_18:                               #   in Loop: Header=BB0_7 Depth=1
	ld.w	$a1, $fp, 308
	ld.w	$a2, $s2, 0
	mod.w	$a1, $a1, $a2
	bnez	$a1, .LBB0_5
# %bb.19:                               #   in Loop: Header=BB0_7 Depth=1
	move	$s3, $zero
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	st.d	$a1, $s1, 0
	b	.LBB0_6
.LBB0_20:                               #   in Loop: Header=BB0_7 Depth=1
	st.d	$s4, $s1, 0
	b	.LBB0_6
.LBB0_21:                               #   in Loop: Header=BB0_7 Depth=1
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	st.d	$a1, $s1, 0
	b	.LBB0_6
.LBB0_22:                               # %._crit_edge
	ld.w	$a0, $fp, 264
	beqz	$a0, .LBB0_25
# %bb.23:                               # %._crit_edge
	bnez	$s3, .LBB0_25
# %bb.24:
	ld.d	$a0, $fp, 0
	ld.d	$a2, $a0, 8
	ori	$a1, $zero, 98
	st.w	$a1, $a0, 40
	move	$a0, $fp
	move	$a1, $zero
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
	jr	$a2
.LBB0_25:                               # %._crit_edge.thread
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
.Lfunc_end0:
	.size	jinit_downsampler, .Lfunc_end0-jinit_downsampler
                                        # -- End function
	.p2align	5                               # -- Begin function start_pass_downsample
	.type	start_pass_downsample,@function
start_pass_downsample:                  # @start_pass_downsample
# %bb.0:
	ret
.Lfunc_end1:
	.size	start_pass_downsample, .Lfunc_end1-start_pass_downsample
                                        # -- End function
	.p2align	5                               # -- Begin function sep_downsample
	.type	sep_downsample,@function
sep_downsample:                         # @sep_downsample
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
	ld.w	$a0, $a0, 68
	blez	$a0, .LBB2_3
# %bb.1:                                # %.lr.ph
	move	$s0, $a4
	move	$s1, $a3
	move	$s2, $a1
	ld.d	$a0, $fp, 472
	ld.d	$s3, $fp, 80
	move	$s4, $zero
	bstrpick.d	$s5, $a2, 31, 0
	addi.d	$s6, $a0, 24
	.p2align	4, , 16
.LBB2_2:                                # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s2, 0
	ld.w	$a1, $s3, 12
	alsl.d	$a2, $s5, $a0, 3
	ld.d	$a0, $s1, 0
	ld.d	$a4, $s6, 0
	mul.d	$a1, $a1, $s0
	bstrpick.d	$a1, $a1, 31, 0
	alsl.d	$a3, $a1, $a0, 3
	move	$a0, $fp
	move	$a1, $s3
	jirl	$ra, $a4, 0
	addi.d	$s4, $s4, 1
	ld.w	$a0, $fp, 68
	addi.d	$s3, $s3, 96
	addi.d	$s1, $s1, 8
	addi.d	$s2, $s2, 8
	addi.d	$s6, $s6, 8
	blt	$s4, $a0, .LBB2_2
.LBB2_3:                                # %._crit_edge
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
.Lfunc_end2:
	.size	sep_downsample, .Lfunc_end2-sep_downsample
                                        # -- End function
	.p2align	5                               # -- Begin function fullsize_smooth_downsample
	.type	fullsize_smooth_downsample,@function
fullsize_smooth_downsample:             # @fullsize_smooth_downsample
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
	move	$fp, $a1
	move	$s2, $a0
	ld.w	$a1, $a1, 28
	ld.w	$a0, $a0, 308
	move	$s0, $a3
	move	$s1, $a2
	addi.w	$a2, $zero, -1
	slli.d	$s4, $a1, 3
	blt	$a0, $a2, .LBB3_4
# %bb.1:
	ld.wu	$s5, $s2, 40
	sub.w	$s3, $s4, $s5
	blez	$s3, .LBB3_4
# %bb.2:                                # %.lr.ph20.i
	addi.d	$s6, $s1, -8
	addi.w	$s7, $a0, 2
	.p2align	4, , 16
.LBB3_3:                                # %.lr.ph.us.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s6, 0
	add.d	$a0, $a0, $s5
	ld.b	$a1, $a0, -1
	move	$a2, $s3
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	addi.d	$s7, $s7, -1
	addi.d	$s6, $s6, 8
	bnez	$s7, .LBB3_3
.LBB3_4:                                # %expand_right_edge.exit
	ld.w	$a0, $fp, 12
	blez	$a0, .LBB3_9
# %bb.5:                                # %.lr.ph
	ld.w	$a2, $s2, 264
	move	$a0, $zero
	slli.d	$a1, $a2, 9
	lu12i.w	$a3, 16
	sub.d	$a1, $a3, $a1
	slli.d	$a2, $a2, 6
	bstrpick.d	$a2, $a2, 31, 6
	slli.d	$a2, $a2, 6
	ori	$a3, $zero, 2
	sub.w	$a3, $a3, $s4
	lu12i.w	$a4, 8
	.p2align	4, , 16
.LBB3_6:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_7 Depth 2
	slli.d	$a5, $a0, 3
	alsl.d	$a6, $a0, $s1, 3
	ld.d	$t0, $a6, -8
	addi.d	$a0, $a0, 1
	slli.d	$a6, $a0, 3
	ldx.d	$a7, $s1, $a6
	ld.bu	$a6, $t0, 0
	ld.bu	$t1, $a7, 0
	ldx.d	$t2, $s1, $a5
	ldx.d	$a5, $s0, $a5
	add.d	$a6, $t1, $a6
	ld.bu	$t4, $t2, 0
	ld.bu	$t1, $t0, 1
	ld.bu	$t5, $a7, 1
	ld.bu	$t6, $t2, 1
	add.d	$t3, $a6, $t4
	addi.d	$a6, $t2, 1
	add.d	$t1, $t5, $t1
	add.d	$t1, $t1, $t6
	slli.d	$t2, $t3, 1
	sub.d	$t2, $t2, $t4
	add.d	$t2, $t2, $t1
	mul.d	$t4, $a1, $t4
	mul.d	$t2, $t2, $a2
	add.d	$t2, $t4, $t2
	add.d	$t2, $t2, $a4
	srli.d	$t2, $t2, 16
	st.b	$t2, $a5, 0
	addi.d	$a5, $a5, 1
	addi.d	$a7, $a7, 2
	addi.d	$t0, $t0, 2
	move	$t2, $a3
	.p2align	4, , 16
.LBB3_7:                                #   Parent Loop BB3_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$t4, $t1
	ld.bu	$t1, $t0, 0
	ld.bu	$t5, $a7, 0
	ld.bu	$t6, $a6, 1
	ld.bu	$t7, $a6, 0
	addi.d	$a6, $a6, 1
	add.d	$t1, $t5, $t1
	add.d	$t1, $t1, $t6
	add.d	$t3, $t3, $t4
	sub.d	$t3, $t3, $t7
	add.d	$t3, $t3, $t1
	mul.d	$t5, $a1, $t7
	mul.d	$t3, $t3, $a2
	add.d	$t3, $t5, $t3
	add.d	$t3, $t3, $a4
	srli.d	$t3, $t3, 16
	st.b	$t3, $a5, 0
	addi.d	$a5, $a5, 1
	bstrpick.d	$t2, $t2, 31, 0
	addi.d	$t2, $t2, 1
	addi.d	$a7, $a7, 1
	slli.d	$t5, $t2, 31
	addi.d	$t0, $t0, 1
	move	$t3, $t4
	bgez	$t5, .LBB3_7
# %bb.8:                                #   in Loop: Header=BB3_6 Depth=1
	ld.bu	$a6, $a6, 0
	alsl.d	$a7, $t1, $t4, 1
	sub.d	$a7, $a7, $a6
	mul.d	$a6, $a1, $a6
	mul.d	$a7, $a7, $a2
	add.d	$a6, $a6, $a7
	add.d	$a6, $a6, $a4
	srli.d	$a6, $a6, 16
	st.b	$a6, $a5, 0
	ld.w	$a5, $fp, 12
	blt	$a0, $a5, .LBB3_6
.LBB3_9:                                # %._crit_edge
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
.Lfunc_end3:
	.size	fullsize_smooth_downsample, .Lfunc_end3-fullsize_smooth_downsample
                                        # -- End function
	.p2align	5                               # -- Begin function fullsize_downsample
	.type	fullsize_downsample,@function
fullsize_downsample:                    # @fullsize_downsample
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	move	$s0, $a0
	ld.w	$a4, $a0, 308
	ld.w	$a5, $a0, 40
	move	$fp, $a3
	move	$a0, $a2
	move	$s1, $a1
	move	$a1, $zero
	move	$a2, $a3
	move	$a3, $zero
	pcaddu18i	$ra, %call36(jcopy_sample_rows)
	jirl	$ra, $ra, 0
	ld.w	$s2, $s0, 308
	blez	$s2, .LBB4_3
# %bb.1:
	ld.w	$a0, $s1, 28
	ld.wu	$s1, $s0, 40
	slli.d	$a0, $a0, 3
	sub.w	$s0, $a0, $s1
	blez	$s0, .LBB4_3
	.p2align	4, , 16
.LBB4_2:                                # %.lr.ph.us.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 0
	add.d	$a0, $a0, $s1
	ld.b	$a1, $a0, -1
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	addi.d	$s2, $s2, -1
	addi.d	$fp, $fp, 8
	bnez	$s2, .LBB4_2
.LBB4_3:                                # %expand_right_edge.exit
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end4:
	.size	fullsize_downsample, .Lfunc_end4-fullsize_downsample
                                        # -- End function
	.p2align	5                               # -- Begin function h2v1_downsample
	.type	h2v1_downsample,@function
h2v1_downsample:                        # @h2v1_downsample
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
	move	$fp, $a1
	ld.w	$s4, $a0, 308
	ld.w	$s3, $a1, 28
	move	$s0, $a3
	move	$s1, $a2
	blez	$s4, .LBB5_4
# %bb.1:
	ld.wu	$s5, $a0, 40
	slli.d	$a0, $s3, 4
	sub.w	$s2, $a0, $s5
	blez	$s2, .LBB5_4
# %bb.2:                                # %.lr.ph20.i
	move	$s6, $s1
	.p2align	4, , 16
.LBB5_3:                                # %.lr.ph.us.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s6, 0
	add.d	$a0, $a0, $s5
	ld.b	$a1, $a0, -1
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	addi.d	$s4, $s4, -1
	addi.d	$s6, $s6, 8
	bnez	$s4, .LBB5_3
.LBB5_4:                                # %expand_right_edge.exit
	ld.w	$a0, $fp, 12
	blez	$a0, .LBB5_10
# %bb.5:                                # %expand_right_edge.exit
	slli.w	$a0, $s3, 3
	beqz	$a0, .LBB5_10
# %bb.6:                                # %.lr.ph.us.preheader
	move	$a1, $zero
	.p2align	4, , 16
.LBB5_7:                                # %.lr.ph.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_8 Depth 2
	slli.d	$a2, $a1, 3
	ldx.d	$a5, $s0, $a2
	ldx.d	$a2, $s1, $a2
	move	$a3, $zero
	move	$a4, $a0
	.p2align	4, , 16
.LBB5_8:                                #   Parent Loop BB5_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$a6, $a2, 0
	ld.bu	$a7, $a2, 1
	add.d	$a6, $a3, $a6
	add.d	$a6, $a6, $a7
	srli.d	$a6, $a6, 1
	st.b	$a6, $a5, 0
	addi.d	$a5, $a5, 1
	xori	$a3, $a3, 1
	addi.w	$a4, $a4, -1
	addi.d	$a2, $a2, 2
	bnez	$a4, .LBB5_8
# %bb.9:                                # %._crit_edge.us
                                        #   in Loop: Header=BB5_7 Depth=1
	ld.w	$a2, $fp, 12
	addi.d	$a1, $a1, 1
	blt	$a1, $a2, .LBB5_7
.LBB5_10:                               # %._crit_edge30
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
.Lfunc_end5:
	.size	h2v1_downsample, .Lfunc_end5-h2v1_downsample
                                        # -- End function
	.p2align	5                               # -- Begin function h2v2_smooth_downsample
	.type	h2v2_smooth_downsample,@function
h2v2_smooth_downsample:                 # @h2v2_smooth_downsample
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
	move	$fp, $a1
	move	$s2, $a0
	ld.w	$a0, $a0, 308
	ld.w	$s4, $a1, 28
	addi.w	$a1, $zero, -1
	move	$s0, $a3
	move	$s1, $a2
	blt	$a0, $a1, .LBB6_4
# %bb.1:
	ld.wu	$s5, $s2, 40
	slli.d	$a1, $s4, 4
	sub.w	$s3, $a1, $s5
	blez	$s3, .LBB6_4
# %bb.2:                                # %.lr.ph20.i
	addi.d	$s6, $s1, -8
	addi.w	$s7, $a0, 2
	.p2align	4, , 16
.LBB6_3:                                # %.lr.ph.us.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s6, 0
	add.d	$a0, $a0, $s5
	ld.b	$a1, $a0, -1
	move	$a2, $s3
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	addi.d	$s7, $s7, -1
	addi.d	$s6, $s6, 8
	bnez	$s7, .LBB6_3
.LBB6_4:                                # %expand_right_edge.exit
	ld.w	$a0, $fp, 12
	blez	$a0, .LBB6_9
# %bb.5:                                # %.lr.ph
	ld.w	$a3, $s2, 264
	move	$a0, $zero
	move	$a1, $zero
	slli.d	$a4, $s4, 3
	addi.w	$a2, $zero, -80
	mul.d	$a2, $a3, $a2
	lu12i.w	$a5, 4
	add.d	$a2, $a2, $a5
	bstrpick.d	$a2, $a2, 31, 4
	slli.d	$a2, $a2, 4
	slli.d	$a3, $a3, 4
	bstrpick.d	$a3, $a3, 31, 4
	slli.d	$a3, $a3, 4
	ori	$a5, $zero, 2
	sub.w	$a4, $a5, $a4
	lu12i.w	$a5, 8
	.p2align	4, , 16
.LBB6_6:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_7 Depth 2
	slli.d	$a6, $a0, 3
	ldx.d	$a6, $s0, $a6
	alsl.d	$a7, $a1, $s1, 3
	slli.d	$t0, $a1, 3
	ldx.d	$t0, $s1, $t0
	ld.d	$t1, $a7, 8
	ld.d	$t3, $a7, -8
	addi.d	$a1, $a1, 2
	slli.d	$a7, $a1, 3
	ld.bu	$t2, $t0, 0
	ld.bu	$t4, $t1, 0
	ld.bu	$t5, $t0, 1
	ld.bu	$t6, $t1, 1
	ldx.d	$a7, $s1, $a7
	add.d	$t2, $t4, $t2
	add.d	$t4, $t2, $t5
	add.d	$t4, $t4, $t6
	ld.bu	$t5, $t3, 0
	ld.bu	$t6, $t3, 1
	ld.bu	$t7, $a7, 0
	ld.bu	$t8, $a7, 1
	ld.bu	$s2, $t0, 2
	ld.bu	$s3, $t1, 2
	add.d	$t2, $t2, $t5
	add.d	$t2, $t2, $t6
	add.d	$t2, $t2, $t7
	add.d	$t2, $t2, $t8
	add.d	$t2, $t2, $s2
	ld.bu	$t6, $t3, 2
	ld.bu	$t8, $a7, 2
	add.w	$t2, $t2, $s3
	add.d	$t5, $t7, $t5
	add.d	$t5, $t5, $t6
	add.d	$t5, $t5, $t8
	alsl.d	$t2, $t2, $t5, 1
	mul.d	$t4, $t4, $a2
	mul.d	$t2, $t2, $a3
	add.d	$t2, $t4, $t2
	add.d	$t2, $t2, $a5
	srli.d	$t2, $t2, 16
	st.b	$t2, $a6, 0
	addi.d	$a6, $a6, 1
	addi.d	$a7, $a7, 3
	addi.d	$t2, $t0, 3
	addi.d	$t1, $t1, 3
	addi.d	$t0, $t3, 3
	move	$t3, $a4
	.p2align	4, , 16
.LBB6_7:                                #   Parent Loop BB6_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$t4, $t2, -1
	ld.bu	$t5, $t2, 0
	add.d	$t4, $t5, $t4
	ld.bu	$t5, $t1, -1
	ld.bu	$t6, $t1, 0
	ld.bu	$t7, $t0, -1
	ld.bu	$t8, $t0, 0
	ld.bu	$s2, $a7, -1
	add.d	$t4, $t4, $t5
	add.d	$t4, $t4, $t6
	add.d	$t5, $t8, $t7
	add.d	$t5, $t5, $s2
	ld.bu	$t6, $a7, 0
	ld.bu	$t7, $t2, -2
	ld.bu	$t8, $t2, 1
	ld.bu	$s2, $t1, -2
	add.d	$t5, $t5, $t6
	add.d	$t5, $t5, $t7
	add.d	$t5, $t5, $t8
	add.d	$t5, $t5, $s2
	ld.bu	$t6, $t1, 1
	ld.bu	$t7, $t0, -2
	ld.bu	$t8, $t0, 1
	ld.bu	$s2, $a7, -2
	add.d	$t5, $t5, $t6
	ld.bu	$t6, $a7, 1
	add.d	$t7, $t8, $t7
	add.d	$t7, $t7, $s2
	alsl.d	$t5, $t5, $t7, 1
	add.d	$t5, $t5, $t6
	mul.d	$t4, $t4, $a2
	mul.d	$t5, $t5, $a3
	add.d	$t4, $t4, $t5
	add.d	$t4, $t4, $a5
	srli.d	$t4, $t4, 16
	st.b	$t4, $a6, 0
	addi.d	$a6, $a6, 1
	bstrpick.d	$t3, $t3, 31, 0
	addi.d	$t3, $t3, 1
	addi.d	$a7, $a7, 2
	addi.d	$t2, $t2, 2
	addi.d	$t1, $t1, 2
	slli.d	$t4, $t3, 31
	addi.d	$t0, $t0, 2
	bgez	$t4, .LBB6_7
# %bb.8:                                #   in Loop: Header=BB6_6 Depth=1
	ld.bu	$t3, $t2, 0
	ld.bu	$t4, $t1, 0
	ld.bu	$t5, $t2, -1
	ld.bu	$t6, $t1, -1
	add.d	$t3, $t4, $t3
	add.d	$t4, $t3, $t5
	add.d	$t4, $t4, $t6
	ld.bu	$t5, $t0, -1
	ld.bu	$t6, $t0, 0
	ld.bu	$t7, $a7, -1
	ld.bu	$t8, $a7, 0
	ld.bu	$t2, $t2, -2
	ld.bu	$t1, $t1, -2
	add.d	$t3, $t3, $t5
	add.d	$t3, $t3, $t6
	add.d	$t3, $t3, $t7
	add.d	$t3, $t3, $t8
	add.d	$t2, $t3, $t2
	ld.bu	$t0, $t0, -2
	ld.bu	$a7, $a7, -2
	add.w	$t1, $t2, $t1
	add.d	$t2, $t8, $t6
	add.d	$t0, $t2, $t0
	add.d	$a7, $t0, $a7
	alsl.d	$a7, $t1, $a7, 1
	mul.d	$t0, $t4, $a2
	mul.d	$a7, $a7, $a3
	add.d	$a7, $t0, $a7
	add.d	$a7, $a7, $a5
	srli.d	$a7, $a7, 16
	st.b	$a7, $a6, 0
	ld.w	$a6, $fp, 12
	addi.d	$a0, $a0, 1
	blt	$a0, $a6, .LBB6_6
.LBB6_9:                                # %._crit_edge
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
.Lfunc_end6:
	.size	h2v2_smooth_downsample, .Lfunc_end6-h2v2_smooth_downsample
                                        # -- End function
	.p2align	5                               # -- Begin function h2v2_downsample
	.type	h2v2_downsample,@function
h2v2_downsample:                        # @h2v2_downsample
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
	move	$fp, $a1
	ld.w	$s4, $a0, 308
	ld.w	$s3, $a1, 28
	move	$s0, $a3
	move	$s1, $a2
	blez	$s4, .LBB7_4
# %bb.1:
	ld.wu	$s5, $a0, 40
	slli.d	$a0, $s3, 4
	sub.w	$s2, $a0, $s5
	blez	$s2, .LBB7_4
# %bb.2:                                # %.lr.ph20.i
	move	$s6, $s1
	.p2align	4, , 16
.LBB7_3:                                # %.lr.ph.us.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s6, 0
	add.d	$a0, $a0, $s5
	ld.b	$a1, $a0, -1
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	addi.d	$s4, $s4, -1
	addi.d	$s6, $s6, 8
	bnez	$s4, .LBB7_3
.LBB7_4:                                # %expand_right_edge.exit
	ld.w	$a0, $fp, 12
	blez	$a0, .LBB7_10
# %bb.5:                                # %expand_right_edge.exit
	slli.w	$a0, $s3, 3
	beqz	$a0, .LBB7_10
# %bb.6:                                # %.lr.ph.us.preheader
	move	$a1, $zero
	move	$a2, $zero
	.p2align	4, , 16
.LBB7_7:                                # %.lr.ph.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_8 Depth 2
	slli.d	$a3, $a1, 3
	ldx.d	$a7, $s0, $a3
	alsl.d	$a4, $a2, $s1, 3
	slli.d	$a3, $a2, 3
	ldx.d	$a3, $s1, $a3
	ld.d	$a4, $a4, 8
	ori	$a5, $zero, 1
	move	$a6, $a0
	.p2align	4, , 16
.LBB7_8:                                #   Parent Loop BB7_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$t0, $a3, 0
	ld.bu	$t1, $a3, 1
	ld.bu	$t2, $a4, 0
	ld.bu	$t3, $a4, 1
	add.d	$t0, $a5, $t0
	add.d	$t0, $t0, $t1
	add.d	$t0, $t0, $t2
	add.d	$t0, $t0, $t3
	srli.d	$t0, $t0, 2
	st.b	$t0, $a7, 0
	addi.d	$a7, $a7, 1
	xori	$a5, $a5, 3
	addi.d	$a3, $a3, 2
	addi.w	$a6, $a6, -1
	addi.d	$a4, $a4, 2
	bnez	$a6, .LBB7_8
# %bb.9:                                # %._crit_edge.us
                                        #   in Loop: Header=BB7_7 Depth=1
	ld.w	$a3, $fp, 12
	addi.d	$a1, $a1, 1
	addi.d	$a2, $a2, 2
	blt	$a1, $a3, .LBB7_7
.LBB7_10:                               # %._crit_edge40
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
.Lfunc_end7:
	.size	h2v2_downsample, .Lfunc_end7-h2v2_downsample
                                        # -- End function
	.p2align	5                               # -- Begin function int_downsample
	.type	int_downsample,@function
int_downsample:                         # @int_downsample
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
	move	$fp, $a1
	ld.w	$a1, $a1, 28
	ld.w	$a4, $a0, 304
	ld.w	$a5, $fp, 8
	ld.w	$s4, $a0, 308
	ld.w	$s6, $fp, 12
	move	$s0, $a3
	move	$s1, $a2
	slli.d	$a6, $a1, 3
	div.w	$s3, $a4, $a5
	move	$a1, $s6
	blez	$s4, .LBB8_5
# %bb.1:
	ld.wu	$s7, $a0, 40
	mul.d	$a0, $s3, $a6
	sub.w	$s2, $a0, $s7
	move	$a1, $s6
	blez	$s2, .LBB8_5
# %bb.2:                                # %.lr.ph20.i
	st.d	$a6, $sp, 16                    # 8-byte Folded Spill
	move	$s8, $s1
	move	$s5, $s4
	.p2align	4, , 16
.LBB8_3:                                # %.lr.ph.us.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s8, 0
	add.d	$a0, $a0, $s7
	ld.b	$a1, $a0, -1
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	addi.d	$s5, $s5, -1
	addi.d	$s8, $s8, 8
	bnez	$s5, .LBB8_3
# %bb.4:                                # %expand_right_edge.exit.loopexit
	ld.w	$a1, $fp, 12
	ld.d	$a6, $sp, 16                    # 8-byte Folded Reload
.LBB8_5:                                # %expand_right_edge.exit
	blez	$a1, .LBB8_26
# %bb.6:                                # %.lr.ph
	addi.w	$a2, $a6, 0
	beqz	$a2, .LBB8_26
# %bb.7:                                # %.lr.ph.split.us
	div.w	$a3, $s4, $s6
	mul.d	$a1, $a3, $s3
	bstrpick.d	$a0, $a1, 31, 31
	add.w	$a0, $a1, $a0
	srai.d	$a0, $a0, 1
	addi.w	$a1, $a1, 0
	blez	$a3, .LBB8_22
# %bb.8:                                # %.lr.ph.split.us.split.us
	blez	$s3, .LBB8_24
# %bb.9:                                # %.preheader.lr.ph.us.us.us.preheader
	move	$a4, $zero
	move	$a5, $zero
	bstrpick.d	$a6, $s3, 30, 1
	slli.d	$a6, $a6, 1
	ori	$a7, $zero, 1
	b	.LBB8_11
	.p2align	4, , 16
.LBB8_10:                               # %._crit_edge.split.us.split.us.us.us.us
                                        #   in Loop: Header=BB8_11 Depth=1
	ld.w	$t0, $fp, 12
	addi.d	$a4, $a4, 1
	add.d	$a5, $a5, $a3
	bge	$a4, $t0, .LBB8_26
.LBB8_11:                               # %.preheader.lr.ph.us.us.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_13 Depth 2
                                        #       Child Loop BB8_15 Depth 3
                                        #         Child Loop BB8_18 Depth 4
                                        #         Child Loop BB8_21 Depth 4
	slli.d	$t0, $a4, 3
	ldx.d	$t0, $s0, $t0
	move	$t1, $zero
	move	$t2, $zero
	alsl.d	$t3, $a5, $s1, 3
	b	.LBB8_13
	.p2align	4, , 16
.LBB8_12:                               # %._crit_edge54.split.us.us.us.us.us.us
                                        #   in Loop: Header=BB8_13 Depth=2
	add.d	$t4, $t4, $a0
	div.d	$t4, $t4, $a1
	st.b	$t4, $t0, 0
	addi.d	$t0, $t0, 1
	addi.w	$t2, $t2, 1
	add.w	$t1, $t1, $s3
	beq	$t2, $a2, .LBB8_10
.LBB8_13:                               # %.preheader.us.us.us.us.us
                                        #   Parent Loop BB8_11 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB8_15 Depth 3
                                        #         Child Loop BB8_18 Depth 4
                                        #         Child Loop BB8_21 Depth 4
	move	$t5, $zero
	move	$t4, $zero
	bstrpick.d	$t6, $t1, 31, 0
	b	.LBB8_15
	.p2align	4, , 16
.LBB8_14:                               # %._crit_edge.us.us.us.us.us.us
                                        #   in Loop: Header=BB8_15 Depth=3
	addi.d	$t5, $t5, 1
	beq	$t5, $a3, .LBB8_12
.LBB8_15:                               # %.lr.ph.us.us.us.us.us.us
                                        #   Parent Loop BB8_11 Depth=1
                                        #     Parent Loop BB8_13 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB8_18 Depth 4
                                        #         Child Loop BB8_21 Depth 4
	slli.d	$t7, $t5, 3
	ldx.d	$t7, $t3, $t7
	add.d	$s2, $t7, $t6
	move	$t8, $zero
	bne	$s3, $a7, .LBB8_17
# %bb.16:                               #   in Loop: Header=BB8_15 Depth=3
	move	$t7, $s2
	b	.LBB8_20
	.p2align	4, , 16
.LBB8_17:                               # %vector.ph
                                        #   in Loop: Header=BB8_15 Depth=3
	add.d	$t7, $s2, $a6
	addi.d	$s2, $s2, 1
	move	$s4, $a6
	.p2align	4, , 16
.LBB8_18:                               # %vector.body
                                        #   Parent Loop BB8_11 Depth=1
                                        #     Parent Loop BB8_13 Depth=2
                                        #       Parent Loop BB8_15 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.bu	$s5, $s2, -1
	ld.bu	$s6, $s2, 0
	add.d	$t4, $t4, $s5
	add.d	$t8, $t8, $s6
	addi.d	$s4, $s4, -2
	addi.d	$s2, $s2, 2
	bnez	$s4, .LBB8_18
# %bb.19:                               # %middle.block
                                        #   in Loop: Header=BB8_15 Depth=3
	add.d	$t4, $t8, $t4
	move	$t8, $a6
	beq	$a6, $s3, .LBB8_14
.LBB8_20:                               # %scalar.ph.preheader
                                        #   in Loop: Header=BB8_15 Depth=3
	sub.d	$t8, $s3, $t8
	.p2align	4, , 16
.LBB8_21:                               # %scalar.ph
                                        #   Parent Loop BB8_11 Depth=1
                                        #     Parent Loop BB8_13 Depth=2
                                        #       Parent Loop BB8_15 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.bu	$s2, $t7, 0
	addi.d	$t7, $t7, 1
	addi.w	$t8, $t8, -1
	add.d	$t4, $t4, $s2
	bnez	$t8, .LBB8_21
	b	.LBB8_14
.LBB8_22:                               # %.lr.ph.split.us.split
	move	$s3, $zero
	div.w	$s1, $a0, $a1
	bstrpick.d	$s2, $a6, 31, 0
	.p2align	4, , 16
.LBB8_23:                               # %.preheader.lr.ph.us
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s0, 0
	move	$a1, $s1
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 12
	addi.d	$s3, $s3, 1
	addi.d	$s0, $s0, 8
	blt	$s3, $a0, .LBB8_23
	b	.LBB8_26
.LBB8_24:                               # %.lr.ph.split.us.split.us.split
	move	$s3, $zero
	div.w	$s1, $a0, $a1
	bstrpick.d	$s2, $a6, 31, 0
	.p2align	4, , 16
.LBB8_25:                               # %.preheader.lr.ph.us.us
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s0, 0
	move	$a1, $s1
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 12
	addi.d	$s3, $s3, 1
	addi.d	$s0, $s0, 8
	blt	$s3, $a0, .LBB8_25
.LBB8_26:                               # %._crit_edge66
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
.Lfunc_end8:
	.size	int_downsample, .Lfunc_end8-int_downsample
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym start_pass_downsample
	.addrsig_sym sep_downsample
	.addrsig_sym fullsize_smooth_downsample
	.addrsig_sym fullsize_downsample
	.addrsig_sym h2v1_downsample
	.addrsig_sym h2v2_smooth_downsample
	.addrsig_sym h2v2_downsample
	.addrsig_sym int_downsample
