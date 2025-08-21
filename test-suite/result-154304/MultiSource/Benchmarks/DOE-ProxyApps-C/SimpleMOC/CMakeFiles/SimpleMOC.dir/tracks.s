	.file	"tracks.c"
	.text
	.globl	generate_2D_tracks              # -- Begin function generate_2D_tracks
	.p2align	5
	.type	generate_2D_tracks,@function
generate_2D_tracks:                     # @generate_2D_tracks
# %bb.0:
	addi.d	$sp, $sp, -208
	st.d	$ra, $sp, 200                   # 8-byte Folded Spill
	st.d	$fp, $sp, 192                   # 8-byte Folded Spill
	st.d	$s0, $sp, 184                   # 8-byte Folded Spill
	st.d	$s1, $sp, 176                   # 8-byte Folded Spill
	st.d	$s2, $sp, 168                   # 8-byte Folded Spill
	st.d	$s3, $sp, 160                   # 8-byte Folded Spill
	move	$s0, $a0
	ld.d	$a0, $a0, 80
	move	$fp, $a1
	slli.d	$s1, $a0, 5
	move	$a0, $s1
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 0
	add.d	$a1, $a1, $s1
	st.d	$a1, $fp, 0
	ld.d	$a1, $s0, 80
	ori	$a2, $zero, 1
	move	$s1, $a0
	blt	$a1, $a2, .LBB0_3
# %bb.1:                                # %.lr.ph.preheader
	move	$s2, $zero
	move	$s3, $s1
	.p2align	4, , 16
.LBB0_2:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	pcaddu18i	$ra, %call36(urand)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 80
	fst.s	$fa0, $s3, 0
	addi.d	$s2, $s2, 1
	addi.d	$s3, $s3, 32
	blt	$s2, $a0, .LBB0_2
.LBB0_3:                                # %._crit_edge
	addi.d	$a0, $sp, 8
	ori	$a2, $zero, 152
	move	$a1, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 8
	move	$a1, $s1
	move	$a2, $fp
	pcaddu18i	$ra, %call36(generate_2D_segments)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	ld.d	$s3, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 192                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 200                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 208
	ret
.Lfunc_end0:
	.size	generate_2D_tracks, .Lfunc_end0-generate_2D_tracks
                                        # -- End function
	.globl	generate_2D_segments            # -- Begin function generate_2D_segments
	.p2align	5
	.type	generate_2D_segments,@function
generate_2D_segments:                   # @generate_2D_segments
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
	fst.d	$fs0, $sp, 8                    # 8-byte Folded Spill
	move	$fp, $a0
	ld.d	$a0, $a0, 80
	ori	$s3, $zero, 1
	move	$s1, $a2
	move	$s0, $a1
	move	$s2, $zero
	blt	$a0, $s3, .LBB1_6
# %bb.1:                                # %.lr.ph
	move	$s4, $zero
	addi.d	$s5, $s0, 8
	.p2align	4, , 16
.LBB1_2:                                # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 48
	movgr2fr.d	$fs0, $a0
	ffint.d.l	$fa1, $fs0
	fsqrt.d	$fa0, $fa1
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB1_4
.LBB1_3:                                # %.split
                                        #   in Loop: Header=BB1_2 Depth=1
	ffint.s.l	$fa2, $fs0
	fcvt.s.d	$fa1, $fa0
	fmov.s	$fa0, $fa2
	pcaddu18i	$ra, %call36(nrand)
	jirl	$ra, $ra, 0
	ftintrz.l.s	$fa0, $fa0
	movfr2gr.d	$a0, $fa0
	ld.d	$a1, $fp, 80
	fst.d	$fa0, $s5, 0
	add.d	$s2, $s2, $a0
	addi.d	$s4, $s4, 1
	addi.d	$s5, $s5, 32
	blt	$s4, $a1, .LBB1_2
	b	.LBB1_5
.LBB1_4:                                # %call.sqrt
                                        #   in Loop: Header=BB1_2 Depth=1
	fmov.d	$fa0, $fa1
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	b	.LBB1_3
.LBB1_5:                                # %._crit_edge.loopexit
	slli.d	$s2, $s2, 4
.LBB1_6:                                # %._crit_edge
	move	$a0, $s2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	add.d	$a1, $a1, $s2
	st.d	$a1, $s1, 0
	ld.d	$a1, $fp, 80
	blt	$a1, $s3, .LBB1_15
# %bb.7:                                # %.lr.ph40.preheader
	move	$a2, $zero
	addi.d	$a3, $s0, 16
	move	$a4, $a1
	.p2align	4, , 16
.LBB1_8:                                # %.lr.ph40
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a5, $a3, -8
	alsl.d	$a6, $a2, $a0, 4
	st.d	$a6, $a3, 0
	add.d	$a2, $a5, $a2
	addi.d	$a4, $a4, -1
	addi.d	$a3, $a3, 32
	bnez	$a4, .LBB1_8
# %bb.9:                                # %.preheader.lr.ph
	move	$s1, $zero
	ori	$s2, $zero, 1
	b	.LBB1_11
	.p2align	4, , 16
.LBB1_10:                               # %._crit_edge43
                                        #   in Loop: Header=BB1_11 Depth=1
	addi.d	$s1, $s1, 1
	bge	$s1, $a1, .LBB1_15
.LBB1_11:                               # %.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_13 Depth 2
	slli.d	$a0, $s1, 5
	add.d	$s3, $s0, $a0
	ld.d	$a0, $s3, 8
	blt	$a0, $s2, .LBB1_10
# %bb.12:                               # %.lr.ph42
                                        #   in Loop: Header=BB1_11 Depth=1
	move	$s4, $zero
	move	$s5, $zero
	.p2align	4, , 16
.LBB1_13:                               #   Parent Loop BB1_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	pcaddu18i	$ra, %call36(urand)
	jirl	$ra, $ra, 0
	fld.s	$fa1, $fp, 56
	ld.d	$a0, $s3, 8
	fmul.s	$fa0, $fa0, $fa1
	ld.d	$a1, $s3, 16
	movgr2fr.d	$fa1, $a0
	ffint.s.l	$fa1, $fa1
	fdiv.s	$fa0, $fa0, $fa1
	fstx.s	$fa0, $a1, $s4
	addi.d	$s5, $s5, 1
	addi.d	$s4, $s4, 16
	blt	$s5, $a0, .LBB1_13
# %bb.14:                               # %._crit_edge43.loopexit
                                        #   in Loop: Header=BB1_11 Depth=1
	ld.d	$a1, $fp, 80
	b	.LBB1_10
.LBB1_15:                               # %._crit_edge45
	fld.d	$fs0, $sp, 8                    # 8-byte Folded Reload
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
.Lfunc_end1:
	.size	generate_2D_segments, .Lfunc_end1-generate_2D_segments
                                        # -- End function
	.globl	segments_per_2D_track_distribution # -- Begin function segments_per_2D_track_distribution
	.p2align	5
	.type	segments_per_2D_track_distribution,@function
segments_per_2D_track_distribution:     # @segments_per_2D_track_distribution
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	fst.d	$fs0, $sp, 0                    # 8-byte Folded Spill
	ld.d	$a0, $a0, 48
	movgr2fr.d	$fa1, $a0
	ffint.d.l	$fa2, $fa1
	fsqrt.d	$fa0, $fa2
	fcmp.cor.d	$fcc0, $fa0, $fa0
	ffint.s.l	$fa3, $fa1
	bceqz	$fcc0, .LBB2_2
.LBB2_1:                                # %.split
	fcvt.s.d	$fa1, $fa0
	fmov.s	$fa0, $fa3
	pcaddu18i	$ra, %call36(nrand)
	jirl	$ra, $ra, 0
	ftintrz.l.s	$fa0, $fa0
	movfr2gr.d	$a0, $fa0
	fld.d	$fs0, $sp, 0                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB2_2:                                # %call.sqrt
	fmov.s	$fs0, $fa3
	fmov.d	$fa0, $fa2
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	fmov.s	$fa3, $fs0
	b	.LBB2_1
.Lfunc_end2:
	.size	segments_per_2D_track_distribution, .Lfunc_end2-segments_per_2D_track_distribution
                                        # -- End function
	.globl	free_2D_tracks                  # -- Begin function free_2D_tracks
	.p2align	5
	.type	free_2D_tracks,@function
free_2D_tracks:                         # @free_2D_tracks
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.d	$a0, $a0, 16
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(free)
	jr	$t8
.Lfunc_end3:
	.size	free_2D_tracks, .Lfunc_end3-free_2D_tracks
                                        # -- End function
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0                          # -- Begin function generate_tracks
.LCPI4_0:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
	.dword	2                               # 0x2
	.dword	3                               # 0x3
	.text
	.globl	generate_tracks
	.p2align	5
	.type	generate_tracks,@function
generate_tracks:                        # @generate_tracks
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
	ld.d	$s0, $a0, 80
	move	$s1, $a2
	slli.d	$a0, $s0, 3
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	alsl.d	$s0, $s0, $a1, 3
	st.d	$s0, $s1, 0
	ld.d	$a1, $fp, 80
	ld.w	$s4, $fp, 32
	move	$s5, $a0
	mul.d	$s2, $a1, $s4
	slli.d	$a0, $s2, 3
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	alsl.d	$s0, $s2, $s0, 3
	st.d	$s0, $s1, 0
	ld.d	$a1, $fp, 96
	move	$s2, $a0
	slli.d	$a0, $a1, 5
	alsl.d	$s3, $a1, $a0, 3
	move	$a0, $s3
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	add.d	$s3, $s3, $s0
	st.d	$s3, $s1, 0
	ld.d	$a1, $fp, 80
	ori	$s0, $zero, 1
	blt	$a1, $s0, .LBB4_18
# %bb.1:                                # %.lr.ph.preheader
	ori	$a3, $zero, 8
	pcalau12i	$a2, %pc_hi20(.LCPI4_0)
	bgeu	$a1, $a3, .LBB4_3
# %bb.2:
	move	$a3, $zero
	b	.LBB4_6
.LBB4_3:                                # %vector.ph
	bstrpick.d	$a3, $a1, 62, 3
	slli.d	$a3, $a3, 3
	xvld	$xr0, $a2, %pc_lo12(.LCPI4_0)
	xvreplgr2vr.d	$xr1, $s4
	addi.d	$a4, $s5, 32
	xvreplgr2vr.d	$xr2, $s2
	move	$a5, $a3
	.p2align	4, , 16
.LBB4_4:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	xvaddi.du	$xr3, $xr0, 4
	xvmul.d	$xr4, $xr0, $xr1
	xvmul.d	$xr3, $xr3, $xr1
	xvslli.d	$xr4, $xr4, 3
	xvadd.d	$xr4, $xr2, $xr4
	xvslli.d	$xr3, $xr3, 3
	xvadd.d	$xr3, $xr2, $xr3
	xvst	$xr4, $a4, -32
	xvst	$xr3, $a4, 0
	xvaddi.du	$xr0, $xr0, 8
	addi.d	$a5, $a5, -8
	addi.d	$a4, $a4, 64
	bnez	$a5, .LBB4_4
# %bb.5:                                # %middle.block
	beq	$a1, $a3, .LBB4_8
.LBB4_6:                                # %.lr.ph.preheader173
	sub.d	$a4, $a1, $a3
	alsl.d	$a5, $a3, $s5, 3
	mul.d	$a3, $a3, $s4
	alsl.d	$a3, $a3, $s2, 3
	slli.d	$a6, $s4, 3
	.p2align	4, , 16
.LBB4_7:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	st.d	$a3, $a5, 0
	addi.d	$a4, $a4, -1
	addi.d	$a5, $a5, 8
	add.d	$a3, $a3, $a6
	bnez	$a4, .LBB4_7
.LBB4_8:                                # %.preheader78.lr.ph
	ori	$a3, $zero, 1
	blt	$s4, $a3, .LBB4_18
# %bb.9:                                # %.preheader78.lr.ph.split.us
	ld.w	$a6, $fp, 88
	move	$a3, $zero
	move	$a4, $zero
	bstrpick.d	$a5, $s4, 30, 3
	slli.d	$a5, $a5, 3
	xvreplgr2vr.d	$xr0, $a6
	slli.d	$a7, $a6, 5
	alsl.d	$a6, $a6, $a7, 3
	xvld	$xr1, $a2, %pc_lo12(.LCPI4_0)
	ori	$a2, $zero, 8
	xvreplgr2vr.d	$xr2, $a0
	xvrepli.d	$xr3, 40
	b	.LBB4_11
	.p2align	4, , 16
.LBB4_10:                               # %._crit_edge.us
                                        #   in Loop: Header=BB4_11 Depth=1
	addi.d	$a4, $a4, 1
	add.d	$a3, $a3, $s4
	beq	$a4, $a1, .LBB4_18
.LBB4_11:                               # %.preheader78.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_14 Depth 2
                                        #     Child Loop BB4_17 Depth 2
	slli.d	$a7, $a4, 3
	ldx.d	$a7, $s5, $a7
	bgeu	$s4, $a2, .LBB4_13
# %bb.12:                               #   in Loop: Header=BB4_11 Depth=1
	move	$t1, $zero
	b	.LBB4_16
	.p2align	4, , 16
.LBB4_13:                               # %vector.ph135
                                        #   in Loop: Header=BB4_11 Depth=1
	mul.d	$t0, $a4, $s4
	xvreplgr2vr.d	$xr4, $t0
	xvaddi.du	$xr5, $xr4, 4
	addi.d	$t0, $a7, 32
	move	$t1, $a5
	xvori.b	$xr6, $xr1, 0
	.p2align	4, , 16
.LBB4_14:                               # %vector.body142
                                        #   Parent Loop BB4_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvadd.d	$xr7, $xr4, $xr6
	xvadd.d	$xr8, $xr6, $xr5
	xvmul.d	$xr7, $xr7, $xr0
	xvmul.d	$xr8, $xr8, $xr0
	xvori.b	$xr9, $xr2, 0
	xvmadd.d	$xr9, $xr7, $xr3
	xvori.b	$xr7, $xr2, 0
	xvmadd.d	$xr7, $xr8, $xr3
	xvst	$xr9, $t0, -32
	xvst	$xr7, $t0, 0
	xvaddi.du	$xr6, $xr6, 8
	addi.d	$t1, $t1, -8
	addi.d	$t0, $t0, 64
	bnez	$t1, .LBB4_14
# %bb.15:                               # %middle.block148
                                        #   in Loop: Header=BB4_11 Depth=1
	move	$t1, $a5
	beq	$a5, $s4, .LBB4_10
.LBB4_16:                               # %scalar.ph133.preheader
                                        #   in Loop: Header=BB4_11 Depth=1
	add.d	$t0, $t1, $a3
	mul.d	$t0, $a6, $t0
	add.d	$t0, $a0, $t0
	alsl.d	$a7, $t1, $a7, 3
	sub.d	$t1, $s4, $t1
	.p2align	4, , 16
.LBB4_17:                               # %scalar.ph133
                                        #   Parent Loop BB4_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.d	$t0, $a7, 0
	add.d	$t0, $t0, $a6
	addi.d	$t1, $t1, -1
	addi.d	$a7, $a7, 8
	bnez	$t1, .LBB4_17
	b	.LBB4_10
.LBB4_18:                               # %._crit_edge84
	st.d	$s5, $sp, 8                     # 8-byte Folded Spill
	ld.d	$a0, $fp, 96
	ld.w	$a1, $fp, 36
	mul.d	$s2, $a0, $a1
	slli.d	$a0, $s2, 3
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	alsl.d	$a1, $s2, $s3, 3
	st.d	$a1, $s1, 0
	ld.d	$a1, $fp, 80
	blt	$a1, $s0, .LBB4_45
# %bb.19:                               # %.preheader77.lr.ph
	ori	$s2, $zero, 1
	blt	$s4, $s2, .LBB4_45
# %bb.20:                               # %.preheader77.preheader
	move	$s1, $a0
	move	$a0, $zero
	move	$s0, $zero
	ori	$s5, $zero, 4
	ori	$s6, $zero, 63
	vrepli.b	$vr0, 0
	xvrepli.b	$xr1, 0
	vst	$vr0, $sp, 64                   # 16-byte Folded Spill
	xvst	$xr1, $sp, 32                   # 32-byte Folded Spill
	b	.LBB4_23
	.p2align	4, , 16
.LBB4_21:                               # %._crit_edge94.loopexit
                                        #   in Loop: Header=BB4_23 Depth=1
	ld.d	$a1, $fp, 80
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
.LBB4_22:                               # %._crit_edge94
                                        #   in Loop: Header=BB4_23 Depth=1
	addi.d	$a0, $a0, 1
	bge	$a0, $a1, .LBB4_45
.LBB4_23:                               # %.preheader77
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_28 Depth 2
                                        #       Child Loop BB4_31 Depth 3
                                        #         Child Loop BB4_37 Depth 4
                                        #         Child Loop BB4_41 Depth 4
                                        #         Child Loop BB4_44 Depth 4
	blt	$s4, $s2, .LBB4_22
# %bb.24:                               # %.preheader.lr.ph
                                        #   in Loop: Header=BB4_23 Depth=1
	ld.w	$a2, $fp, 88
	blt	$a2, $s2, .LBB4_22
# %bb.25:                               # %.preheader.preheader
                                        #   in Loop: Header=BB4_23 Depth=1
	move	$a1, $a0
	move	$s8, $zero
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	st.d	$a1, $sp, 16                    # 8-byte Folded Spill
	alsl.d	$a0, $a1, $a0, 3
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	b	.LBB4_28
	.p2align	4, , 16
.LBB4_26:                               # %._crit_edge90.loopexit
                                        #   in Loop: Header=BB4_28 Depth=2
	ld.w	$s4, $fp, 32
.LBB4_27:                               # %._crit_edge90
                                        #   in Loop: Header=BB4_28 Depth=2
	addi.d	$s8, $s8, 1
	bge	$s8, $s4, .LBB4_21
.LBB4_28:                               # %.preheader
                                        #   Parent Loop BB4_23 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_31 Depth 3
                                        #         Child Loop BB4_37 Depth 4
                                        #         Child Loop BB4_41 Depth 4
                                        #         Child Loop BB4_44 Depth 4
	blt	$a2, $s2, .LBB4_27
# %bb.29:                               # %.lr.ph89.preheader
                                        #   in Loop: Header=BB4_28 Depth=2
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	move	$s4, $zero
	alsl.d	$s3, $s8, $a0, 3
	b	.LBB4_31
	.p2align	4, , 16
.LBB4_30:                               # %._crit_edge
                                        #   in Loop: Header=BB4_31 Depth=3
	ld.w	$a2, $fp, 88
	addi.d	$s4, $s4, 1
	add.d	$s0, $a1, $a0
	bge	$s4, $a2, .LBB4_26
.LBB4_31:                               # %.lr.ph89
                                        #   Parent Loop BB4_23 Depth=1
                                        #     Parent Loop BB4_28 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB4_37 Depth 4
                                        #         Child Loop BB4_41 Depth 4
                                        #         Child Loop BB4_44 Depth 4
	ld.wu	$a0, $fp, 32
	srli.d	$a1, $a0, 31
	add.w	$a0, $a0, $a1
	srai.d	$a0, $a0, 1
	slt	$a0, $s8, $a0
	xori	$a0, $a0, 1
	fld.s	$fa0, $fp, 24
	add.d	$a0, $s4, $a0
	bstrpick.d	$a0, $a0, 31, 0
	movgr2fr.d	$fa1, $a0
	ffint.s.l	$fa1, $fa1
	ld.d	$a0, $s3, 0
	fmul.s	$fa0, $fa0, $fa1
	slli.d	$a1, $s4, 5
	alsl.d	$s7, $s4, $a1, 3
	add.d	$a0, $a0, $s7
	fst.s	$fa0, $a0, 4
	pcaddu18i	$ra, %call36(urand)
	jirl	$ra, $ra, 0
	xvld	$xr1, $sp, 32                   # 32-byte Folded Reload
	ld.d	$a1, $s3, 0
	add.d	$a2, $a1, $s7
	alsl.d	$a3, $s0, $s1, 2
	ld.w	$a0, $fp, 36
	st.d	$a3, $a2, 24
	ld.d	$a2, $s3, 0
	fstx.s	$fa0, $a1, $s7
	vld	$vr0, $sp, 64                   # 16-byte Folded Reload
	add.d	$a1, $s0, $a0
	alsl.d	$a3, $a1, $s1, 2
	add.d	$a2, $a2, $s7
	st.d	$a3, $a2, 32
	blt	$a0, $s2, .LBB4_30
# %bb.32:                               # %iter.check
                                        #   in Loop: Header=BB4_31 Depth=3
	ld.d	$a2, $s3, 0
	add.d	$a3, $a2, $s7
	ld.d	$a2, $a3, 24
	ld.d	$a3, $a3, 32
	move	$a4, $zero
	bltu	$a0, $s5, .LBB4_43
# %bb.33:                               # %iter.check
                                        #   in Loop: Header=BB4_31 Depth=3
	sub.d	$a5, $a3, $a2
	bgeu	$s6, $a5, .LBB4_43
# %bb.34:                               # %vector.main.loop.iter.check
                                        #   in Loop: Header=BB4_31 Depth=3
	ori	$a4, $zero, 16
	bgeu	$a0, $a4, .LBB4_36
# %bb.35:                               #   in Loop: Header=BB4_31 Depth=3
	move	$a4, $zero
	b	.LBB4_40
.LBB4_36:                               # %vector.ph155
                                        #   in Loop: Header=BB4_31 Depth=3
	bstrpick.d	$a4, $a0, 30, 4
	slli.d	$a4, $a4, 4
	addi.d	$a5, $a3, 32
	addi.d	$a6, $a2, 32
	move	$a7, $a4
	.p2align	4, , 16
.LBB4_37:                               # %vector.body158
                                        #   Parent Loop BB4_23 Depth=1
                                        #     Parent Loop BB4_28 Depth=2
                                        #       Parent Loop BB4_31 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	xvst	$xr1, $a6, -32
	xvst	$xr1, $a6, 0
	xvst	$xr1, $a5, -32
	xvst	$xr1, $a5, 0
	addi.d	$a7, $a7, -16
	addi.d	$a5, $a5, 64
	addi.d	$a6, $a6, 64
	bnez	$a7, .LBB4_37
# %bb.38:                               # %middle.block161
                                        #   in Loop: Header=BB4_31 Depth=3
	beq	$a4, $a0, .LBB4_30
# %bb.39:                               # %vec.epilog.iter.check
                                        #   in Loop: Header=BB4_31 Depth=3
	andi	$a5, $a0, 12
	beqz	$a5, .LBB4_43
.LBB4_40:                               # %vec.epilog.ph
                                        #   in Loop: Header=BB4_31 Depth=3
	move	$a7, $a4
	bstrpick.d	$a4, $a0, 30, 2
	slli.d	$a4, $a4, 2
	sub.d	$a5, $a7, $a4
	alsl.d	$a6, $a7, $a3, 2
	alsl.d	$a7, $a7, $a2, 2
	.p2align	4, , 16
.LBB4_41:                               # %vec.epilog.vector.body
                                        #   Parent Loop BB4_23 Depth=1
                                        #     Parent Loop BB4_28 Depth=2
                                        #       Parent Loop BB4_31 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	vst	$vr0, $a7, 0
	vst	$vr0, $a6, 0
	addi.d	$a5, $a5, 4
	addi.d	$a6, $a6, 16
	addi.d	$a7, $a7, 16
	bnez	$a5, .LBB4_41
# %bb.42:                               # %vec.epilog.middle.block
                                        #   in Loop: Header=BB4_31 Depth=3
	beq	$a4, $a0, .LBB4_30
.LBB4_43:                               # %vec.epilog.scalar.ph.preheader
                                        #   in Loop: Header=BB4_31 Depth=3
	alsl.d	$a3, $a4, $a3, 2
	alsl.d	$a2, $a4, $a2, 2
	sub.d	$a4, $a0, $a4
	.p2align	4, , 16
.LBB4_44:                               # %vec.epilog.scalar.ph
                                        #   Parent Loop BB4_23 Depth=1
                                        #     Parent Loop BB4_28 Depth=2
                                        #       Parent Loop BB4_31 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	st.w	$zero, $a2, 0
	st.w	$zero, $a3, 0
	addi.d	$a3, $a3, 4
	addi.d	$a4, $a4, -1
	addi.d	$a2, $a2, 4
	bnez	$a4, .LBB4_44
	b	.LBB4_30
.LBB4_45:                               # %._crit_edge98
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
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
.Lfunc_end4:
	.size	generate_tracks, .Lfunc_end4-generate_tracks
                                        # -- End function
	.globl	free_tracks                     # -- Begin function free_tracks
	.p2align	5
	.type	free_tracks,@function
free_tracks:                            # @free_tracks
# %bb.0:
	pcaddu18i	$t8, %call36(free)
	jr	$t8
.Lfunc_end5:
	.size	free_tracks, .Lfunc_end5-free_tracks
                                        # -- End function
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0                          # -- Begin function generate_polar_angles
.LCPI6_0:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	4                               # 0x4
	.word	5                               # 0x5
	.word	6                               # 0x6
	.word	7                               # 0x7
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0
.LCPI6_1:
	.dword	0x400921fb54442d18              # double 3.1415926535897931
	.text
	.globl	generate_polar_angles
	.p2align	5
	.type	generate_polar_angles,@function
generate_polar_angles:                  # @generate_polar_angles
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	ld.w	$fp, $a0, 32
	slli.d	$a0, $fp, 2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	blt	$fp, $a1, .LBB6_8
# %bb.1:                                # %.lr.ph
	bstrpick.d	$a1, $fp, 31, 0
	movgr2fr.d	$fa0, $a1
	ori	$a1, $zero, 8
	ffint.d.l	$fa0, $fa0
	bgeu	$fp, $a1, .LBB6_3
# %bb.2:
	move	$a1, $zero
	b	.LBB6_6
.LBB6_3:                                # %vector.ph
	bstrpick.d	$a1, $fp, 30, 3
	slli.d	$a1, $a1, 3
	pcalau12i	$a2, %pc_hi20(.LCPI6_0)
	xvld	$xr1, $a2, %pc_lo12(.LCPI6_0)
	xvreplve0.d	$xr2, $xr0
	lu52i.d	$a2, $zero, 1022
	xvreplgr2vr.d	$xr3, $a2
	lu12i.w	$a2, 345154
	ori	$a2, $a2, 3352
	lu32i.d	$a2, -450053
	lu52i.d	$a2, $a2, 1024
	xvreplgr2vr.d	$xr4, $a2
	move	$a2, $a0
	move	$a3, $a1
	.p2align	4, , 16
.LBB6_4:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	xvpermi.q	$xr5, $xr1, 1
	vext2xv.du.wu	$xr5, $xr5
	xvffint.d.lu	$xr5, $xr5
	vext2xv.du.wu	$xr6, $xr1
	xvffint.d.lu	$xr6, $xr6
	xvfadd.d	$xr5, $xr5, $xr3
	xvfadd.d	$xr6, $xr6, $xr3
	xvfmul.d	$xr6, $xr6, $xr4
	xvfmul.d	$xr5, $xr5, $xr4
	xvfdiv.d	$xr5, $xr5, $xr2
	xvfdiv.d	$xr6, $xr6, $xr2
	xvpickve.d	$xr7, $xr6, 1
	fcvt.s.d	$fa7, $fa7
	xvpickve.d	$xr8, $xr6, 0
	fcvt.s.d	$ft0, $ft0
	xvinsve0.w	$xr8, $xr7, 1
	xvpickve.d	$xr7, $xr6, 2
	fcvt.s.d	$fa7, $fa7
	xvinsve0.w	$xr8, $xr7, 2
	xvpickve.d	$xr6, $xr6, 3
	fcvt.s.d	$fa6, $fa6
	xvinsve0.w	$xr8, $xr6, 3
	xvpickve.d	$xr6, $xr5, 0
	fcvt.s.d	$fa6, $fa6
	xvinsve0.w	$xr8, $xr6, 4
	xvpickve.d	$xr6, $xr5, 1
	fcvt.s.d	$fa6, $fa6
	xvinsve0.w	$xr8, $xr6, 5
	xvpickve.d	$xr6, $xr5, 2
	fcvt.s.d	$fa6, $fa6
	xvinsve0.w	$xr8, $xr6, 6
	xvpickve.d	$xr5, $xr5, 3
	fcvt.s.d	$fa5, $fa5
	xvinsve0.w	$xr8, $xr5, 7
	xvst	$xr8, $a2, 0
	xvaddi.wu	$xr1, $xr1, 8
	addi.d	$a3, $a3, -8
	addi.d	$a2, $a2, 32
	bnez	$a3, .LBB6_4
# %bb.5:                                # %middle.block
	beq	$a1, $fp, .LBB6_8
.LBB6_6:                                # %scalar.ph.preheader
	pcalau12i	$a2, %pc_hi20(.LCPI6_1)
	fld.d	$fa1, $a2, %pc_lo12(.LCPI6_1)
	alsl.d	$a2, $a1, $a0, 2
	sub.d	$a3, $fp, $a1
	vldi	$vr2, -928
	.p2align	4, , 16
.LBB6_7:                                # %scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a4, $a1, 31, 0
	movgr2fr.d	$fa3, $a4
	ffint.d.l	$fa3, $fa3
	fadd.d	$fa3, $fa3, $fa2
	fmul.d	$fa3, $fa3, $fa1
	fdiv.d	$fa3, $fa3, $fa0
	fcvt.s.d	$fa3, $fa3
	fst.s	$fa3, $a2, 0
	addi.w	$a1, $a1, 1
	addi.d	$a3, $a3, -1
	addi.d	$a2, $a2, 4
	bnez	$a3, .LBB6_7
.LBB6_8:                                # %._crit_edge
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end6:
	.size	generate_polar_angles, .Lfunc_end6-generate_polar_angles
                                        # -- End function
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0                          # -- Begin function load_OpenMOC_tracks
.LCPI7_0:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
	.dword	0                               # 0x0
	.dword	0                               # 0x0
	.text
	.globl	load_OpenMOC_tracks
	.p2align	5
	.type	load_OpenMOC_tracks,@function
load_OpenMOC_tracks:                    # @load_OpenMOC_tracks
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
	addi.d	$fp, $sp, 272
	move	$s6, $a3
	move	$s2, $a2
	st.d	$a1, $fp, -224                  # 8-byte Folded Spill
	move	$s3, $a0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a1, $a0, %pc_lo12(.L.str)
	move	$a0, $s3
	pcaddu18i	$ra, %call36(fopen)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	move	$a1, $s3
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	addi.d	$a0, $fp, -100
	ori	$a1, $zero, 4
	ori	$a2, $zero, 1
	ori	$s4, $zero, 1
	move	$a3, $s0
	pcaddu18i	$ra, %call36(fread)
	jirl	$ra, $ra, 0
	ld.wu	$a1, $fp, -100
	move	$s3, $sp
	addi.d	$a0, $a1, 15
	bstrpick.d	$a0, $a0, 32, 4
	slli.d	$a0, $a0, 4
	sub.d	$a0, $sp, $a0
	move	$sp, $a0
	addi.w	$a1, $a1, 0
	ori	$a2, $zero, 1
	move	$a3, $s0
	pcaddu18i	$ra, %call36(fread)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.Lstr)
	addi.d	$a0, $a0, %pc_lo12(.Lstr)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	addi.d	$a0, $s2, 28
	ori	$a1, $zero, 4
	ori	$a2, $zero, 1
	st.d	$a0, $fp, -248                  # 8-byte Folded Spill
	move	$a3, $s0
	pcaddu18i	$ra, %call36(fread)
	jirl	$ra, $ra, 0
	addi.d	$a0, $fp, -112
	ori	$a1, $zero, 8
	ori	$a2, $zero, 1
	ori	$s1, $zero, 8
	move	$a3, $s0
	pcaddu18i	$ra, %call36(fread)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $fp, -112
	ld.wu	$a2, $s2, 28
	fcvt.s.d	$fa0, $fa0
	fst.s	$fa0, $s2, 20
	slli.d	$a1, $a2, 2
	addi.d	$a1, $a1, 15
	bstrpick.d	$a1, $a1, 34, 4
	slli.d	$a1, $a1, 4
	sub.d	$a0, $sp, $a1
	move	$sp, $a0
	sub.d	$s5, $sp, $a1
	move	$sp, $s5
	sub.d	$s7, $sp, $a1
	move	$sp, $s7
	slli.d	$a1, $a2, 3
	addi.d	$a1, $a1, 15
	bstrpick.d	$a1, $a1, 35, 4
	slli.d	$a1, $a1, 4
	sub.d	$s8, $sp, $a1
	move	$sp, $s8
	addi.w	$a2, $a2, 0
	ori	$a1, $zero, 4
	st.d	$a0, $fp, -240                  # 8-byte Folded Spill
	move	$a3, $s0
	pcaddu18i	$ra, %call36(fread)
	jirl	$ra, $ra, 0
	ld.w	$a2, $s2, 28
	ori	$a1, $zero, 4
	move	$a0, $s5
	move	$a3, $s0
	pcaddu18i	$ra, %call36(fread)
	jirl	$ra, $ra, 0
	ld.w	$a2, $s2, 28
	ori	$a1, $zero, 4
	move	$a0, $s7
	move	$a3, $s0
	pcaddu18i	$ra, %call36(fread)
	jirl	$ra, $ra, 0
	ld.w	$a2, $s2, 28
	ori	$a1, $zero, 8
	move	$a0, $s8
	move	$a3, $s0
	pcaddu18i	$ra, %call36(fread)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s2, 28
	st.d	$zero, $s2, 80
	blt	$a0, $s4, .LBB7_3
# %bb.1:                                # %.lr.ph
	bgeu	$a0, $s1, .LBB7_4
# %bb.2:
	move	$a1, $zero
	move	$a2, $zero
	b	.LBB7_7
.LBB7_3:
	move	$s7, $zero
	b	.LBB7_10
.LBB7_4:                                # %vector.ph
	bstrpick.d	$a1, $a0, 30, 3
	slli.d	$a1, $a1, 3
	xvrepli.b	$xr0, 0
	ld.d	$a2, $fp, -240                  # 8-byte Folded Reload
	addi.d	$a2, $a2, 16
	move	$a3, $a1
	xvori.b	$xr1, $xr0, 0
	.p2align	4, , 16
.LBB7_5:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr2, $a2, -16
	vld	$vr3, $a2, 0
	vpickve2gr.w	$a4, $vr2, 0
	xvinsgr2vr.d	$xr4, $a4, 0
	vpickve2gr.w	$a4, $vr2, 1
	xvinsgr2vr.d	$xr4, $a4, 1
	vpickve2gr.w	$a4, $vr2, 2
	xvinsgr2vr.d	$xr4, $a4, 2
	vpickve2gr.w	$a4, $vr2, 3
	xvinsgr2vr.d	$xr4, $a4, 3
	vpickve2gr.w	$a4, $vr3, 0
	xvinsgr2vr.d	$xr2, $a4, 0
	vpickve2gr.w	$a4, $vr3, 1
	xvinsgr2vr.d	$xr2, $a4, 1
	vpickve2gr.w	$a4, $vr3, 2
	xvinsgr2vr.d	$xr2, $a4, 2
	vpickve2gr.w	$a4, $vr3, 3
	xvinsgr2vr.d	$xr2, $a4, 3
	xvadd.d	$xr0, $xr0, $xr4
	xvadd.d	$xr1, $xr1, $xr2
	addi.d	$a3, $a3, -8
	addi.d	$a2, $a2, 32
	bnez	$a3, .LBB7_5
# %bb.6:                                # %middle.block
	pcalau12i	$a2, %pc_hi20(.LCPI7_0)
	xvld	$xr2, $a2, %pc_lo12(.LCPI7_0)
	xvadd.d	$xr0, $xr1, $xr0
	xvpermi.d	$xr1, $xr0, 78
	xvshuf.d	$xr2, $xr0, $xr1
	xvadd.d	$xr0, $xr0, $xr2
	xvpermi.d	$xr1, $xr0, 68
	xvrepl128vei.d	$xr1, $xr1, 1
	xvadd.d	$xr0, $xr0, $xr1
	xvpickve2gr.d	$a2, $xr0, 0
	beq	$a1, $a0, .LBB7_9
.LBB7_7:                                # %scalar.ph.preheader
	ld.d	$a3, $fp, -240                  # 8-byte Folded Reload
	alsl.d	$a3, $a1, $a3, 2
	sub.d	$a0, $a0, $a1
	.p2align	4, , 16
.LBB7_8:                                # %scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a1, $a3, 0
	add.d	$a2, $a2, $a1
	addi.d	$a0, $a0, -1
	addi.d	$a3, $a3, 4
	bnez	$a0, .LBB7_8
.LBB7_9:                                # %._crit_edge
	st.d	$a2, $s2, 80
	slli.d	$s7, $a2, 5
.LBB7_10:
	move	$a0, $s7
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s6, 0
	st.d	$a0, $fp, -208                  # 8-byte Folded Spill
	add.d	$a0, $a1, $s7
	st.d	$a0, $s6, 0
	addi.d	$a1, $fp, -200
	move	$a0, $s0
	pcaddu18i	$ra, %call36(fgetpos)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, -248                  # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	st.d	$s2, $fp, -264                  # 8-byte Folded Spill
	st.d	$s3, $fp, -272                  # 8-byte Folded Spill
	blt	$a0, $s4, .LBB7_20
# %bb.11:                               # %.preheader110.lr.ph
	ld.d	$a1, $fp, -224                  # 8-byte Folded Reload
	beqz	$a1, .LBB7_35
# %bb.12:                               # %.preheader110.us.preheader
	move	$s1, $zero
	move	$s7, $zero
	ori	$s2, $zero, 1
	b	.LBB7_15
	.p2align	4, , 16
.LBB7_13:                               # %._crit_edge119.split.us.us.loopexit
                                        #   in Loop: Header=BB7_15 Depth=1
	ld.d	$a0, $fp, -248                  # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
.LBB7_14:                               # %._crit_edge119.split.us.us
                                        #   in Loop: Header=BB7_15 Depth=1
	addi.d	$s1, $s1, 1
	bge	$s1, $a0, .LBB7_21
.LBB7_15:                               # %.preheader110.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_18 Depth 2
                                        #       Child Loop BB7_19 Depth 3
	slli.d	$a1, $s1, 2
	ld.d	$a2, $fp, -240                  # 8-byte Folded Reload
	ldx.w	$s3, $a2, $a1
	blt	$s3, $s2, .LBB7_14
# %bb.16:                               # %.lr.ph118.us.preheader
                                        #   in Loop: Header=BB7_15 Depth=1
	move	$s4, $zero
	b	.LBB7_18
	.p2align	4, , 16
.LBB7_17:                               # %._crit_edge115.split.us.us.us
                                        #   in Loop: Header=BB7_18 Depth=2
	addi.w	$s4, $s4, 1
	add.d	$s7, $s7, $s5
	beq	$s4, $s3, .LBB7_13
.LBB7_18:                               # %.lr.ph118.us
                                        #   Parent Loop BB7_15 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB7_19 Depth 3
	ori	$a1, $zero, 44
	ori	$a2, $zero, 1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(fseek)
	jirl	$ra, $ra, 0
	addi.d	$a0, $fp, -160
	ori	$a1, $zero, 4
	ori	$a2, $zero, 1
	move	$a3, $s0
	pcaddu18i	$ra, %call36(fread)
	jirl	$ra, $ra, 0
	ld.w	$s5, $fp, -160
	move	$s8, $s5
	blt	$s5, $s2, .LBB7_17
	.p2align	4, , 16
.LBB7_19:                               # %.lr.ph114.us.us
                                        #   Parent Loop BB7_15 Depth=1
                                        #     Parent Loop BB7_18 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ori	$a1, $zero, 16
	ori	$a2, $zero, 1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(fseek)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 8
	ori	$a2, $zero, 1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(fseek)
	jirl	$ra, $ra, 0
	addi.w	$s8, $s8, -1
	bnez	$s8, .LBB7_19
	b	.LBB7_17
.LBB7_20:
	move	$s7, $zero
.LBB7_21:                               # %._crit_edge122
	slli.d	$a0, $s7, 4
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s6, 0
	st.d	$a0, $fp, -216                  # 8-byte Folded Spill
	alsl.d	$a0, $s7, $a1, 4
	st.d	$a0, $s6, 0
	addi.d	$a1, $fp, -200
	move	$a0, $s0
	pcaddu18i	$ra, %call36(fsetpos)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, -248                  # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB7_34
# %bb.22:                               # %.preheader.preheader
	move	$a3, $zero
	move	$s3, $zero
	move	$s4, $zero
	ld.d	$a1, $fp, -216                  # 8-byte Folded Reload
	addi.d	$a1, $a1, 8
	st.d	$a1, $fp, -232                  # 8-byte Folded Spill
	b	.LBB7_25
	.p2align	4, , 16
.LBB7_23:                               # %._crit_edge133.loopexit
                                        #   in Loop: Header=BB7_25 Depth=1
	ld.d	$a0, $fp, -248                  # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	ld.d	$a3, $fp, -256                  # 8-byte Folded Reload
.LBB7_24:                               # %._crit_edge133
                                        #   in Loop: Header=BB7_25 Depth=1
	addi.d	$a3, $a3, 1
	bge	$a3, $a0, .LBB7_34
.LBB7_25:                               # %.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_28 Depth 2
                                        #       Child Loop BB7_33 Depth 3
                                        #       Child Loop BB7_31 Depth 3
	slli.d	$a1, $a3, 2
	ld.d	$a2, $fp, -240                  # 8-byte Folded Reload
	ldx.w	$s1, $a2, $a1
	ori	$a1, $zero, 1
	blt	$s1, $a1, .LBB7_24
# %bb.26:                               # %.lr.ph132.preheader
                                        #   in Loop: Header=BB7_25 Depth=1
	st.d	$a3, $fp, -256                  # 8-byte Folded Spill
	move	$s6, $zero
	addi.w	$s4, $s4, 0
	b	.LBB7_28
	.p2align	4, , 16
.LBB7_27:                               # %._crit_edge128
                                        #   in Loop: Header=BB7_28 Depth=2
	add.w	$s3, $s5, $s3
	addi.w	$s6, $s6, 1
	addi.d	$s4, $s4, 1
	beq	$s6, $s1, .LBB7_23
.LBB7_28:                               # %.lr.ph132
                                        #   Parent Loop BB7_25 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB7_33 Depth 3
                                        #       Child Loop BB7_31 Depth 3
	addi.d	$a0, $fp, -120
	ori	$a1, $zero, 8
	ori	$a2, $zero, 1
	move	$a3, $s0
	pcaddu18i	$ra, %call36(fread)
	jirl	$ra, $ra, 0
	addi.d	$a0, $fp, -128
	ori	$a1, $zero, 8
	ori	$a2, $zero, 1
	move	$a3, $s0
	pcaddu18i	$ra, %call36(fread)
	jirl	$ra, $ra, 0
	addi.d	$a0, $fp, -136
	ori	$a1, $zero, 8
	ori	$a2, $zero, 1
	move	$a3, $s0
	pcaddu18i	$ra, %call36(fread)
	jirl	$ra, $ra, 0
	addi.d	$a0, $fp, -144
	ori	$a1, $zero, 8
	ori	$a2, $zero, 1
	move	$a3, $s0
	pcaddu18i	$ra, %call36(fread)
	jirl	$ra, $ra, 0
	addi.d	$a0, $fp, -152
	ori	$a1, $zero, 8
	ori	$a2, $zero, 1
	move	$a3, $s0
	pcaddu18i	$ra, %call36(fread)
	jirl	$ra, $ra, 0
	addi.d	$a0, $fp, -156
	ori	$a1, $zero, 4
	ori	$a2, $zero, 1
	move	$a3, $s0
	pcaddu18i	$ra, %call36(fread)
	jirl	$ra, $ra, 0
	addi.d	$a0, $fp, -160
	ori	$a1, $zero, 4
	ori	$a2, $zero, 1
	move	$a3, $s0
	pcaddu18i	$ra, %call36(fread)
	jirl	$ra, $ra, 0
	ld.w	$s5, $fp, -160
	slli.d	$s2, $s4, 5
	ld.d	$s8, $fp, -208                  # 8-byte Folded Reload
	add.d	$a0, $s8, $s2
	st.d	$s5, $a0, 8
	ld.d	$a1, $fp, -216                  # 8-byte Folded Reload
	alsl.d	$a1, $s3, $a1, 4
	st.d	$a1, $a0, 16
	pcaddu18i	$ra, %call36(urand)
	jirl	$ra, $ra, 0
	fstx.s	$fa0, $s8, $s2
	ori	$a0, $zero, 1
	blt	$s5, $a0, .LBB7_27
# %bb.29:                               # %.lr.ph127
                                        #   in Loop: Header=BB7_28 Depth=2
	ld.d	$a0, $fp, -224                  # 8-byte Folded Reload
	beqz	$a0, .LBB7_32
# %bb.30:                               # %.lr.ph127.split.us.preheader
                                        #   in Loop: Header=BB7_28 Depth=2
	ld.d	$a0, $fp, -232                  # 8-byte Folded Reload
	alsl.d	$s8, $s3, $a0, 4
	move	$s2, $s5
	.p2align	4, , 16
.LBB7_31:                               # %.lr.ph127.split.us
                                        #   Parent Loop BB7_25 Depth=1
                                        #     Parent Loop BB7_28 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	addi.d	$a0, $fp, -168
	ori	$a1, $zero, 8
	ori	$a2, $zero, 1
	move	$a3, $s0
	pcaddu18i	$ra, %call36(fread)
	jirl	$ra, $ra, 0
	addi.d	$a0, $fp, -172
	ori	$a1, $zero, 4
	ori	$a2, $zero, 1
	move	$a3, $s0
	pcaddu18i	$ra, %call36(fread)
	jirl	$ra, $ra, 0
	addi.d	$a0, $fp, -176
	ori	$a1, $zero, 4
	ori	$a2, $zero, 1
	move	$a3, $s0
	pcaddu18i	$ra, %call36(fread)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $fp, -168
	ld.w	$a0, $fp, -176
	fcvt.s.d	$fa0, $fa0
	fst.s	$fa0, $s8, -8
	st.d	$a0, $s8, 0
	addi.d	$a0, $fp, -180
	ori	$a1, $zero, 4
	ori	$a2, $zero, 1
	move	$a3, $s0
	pcaddu18i	$ra, %call36(fread)
	jirl	$ra, $ra, 0
	addi.d	$a0, $fp, -184
	ori	$a1, $zero, 4
	ori	$a2, $zero, 1
	move	$a3, $s0
	pcaddu18i	$ra, %call36(fread)
	jirl	$ra, $ra, 0
	addi.d	$s2, $s2, -1
	addi.d	$s8, $s8, 16
	bnez	$s2, .LBB7_31
	b	.LBB7_27
	.p2align	4, , 16
.LBB7_32:                               # %.lr.ph127.split.preheader
                                        #   in Loop: Header=BB7_28 Depth=2
	ld.d	$a0, $fp, -232                  # 8-byte Folded Reload
	alsl.d	$s2, $s3, $a0, 4
	move	$s8, $s5
	.p2align	4, , 16
.LBB7_33:                               # %.lr.ph127.split
                                        #   Parent Loop BB7_25 Depth=1
                                        #     Parent Loop BB7_28 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	addi.d	$a0, $fp, -168
	ori	$a1, $zero, 8
	ori	$a2, $zero, 1
	move	$a3, $s0
	pcaddu18i	$ra, %call36(fread)
	jirl	$ra, $ra, 0
	addi.d	$a0, $fp, -172
	ori	$a1, $zero, 4
	ori	$a2, $zero, 1
	move	$a3, $s0
	pcaddu18i	$ra, %call36(fread)
	jirl	$ra, $ra, 0
	addi.d	$a0, $fp, -176
	ori	$a1, $zero, 4
	ori	$a2, $zero, 1
	move	$a3, $s0
	pcaddu18i	$ra, %call36(fread)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $fp, -168
	ld.w	$a0, $fp, -176
	fcvt.s.d	$fa0, $fa0
	fst.s	$fa0, $s2, -8
	st.d	$a0, $s2, 0
	addi.d	$s8, $s8, -1
	addi.d	$s2, $s2, 16
	bnez	$s8, .LBB7_33
	b	.LBB7_27
.LBB7_34:                               # %._crit_edge139
	ld.d	$s1, $fp, -264                  # 8-byte Folded Reload
	ld.d	$a1, $s1, 80
	div.d	$a0, $s7, $a1
	st.d	$a0, $s1, 48
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 80
	ld.w	$a1, $s1, 32
	ld.w	$a2, $s1, 88
	mul.d	$a0, $a0, $a1
	mul.d	$a1, $a0, $a2
	st.d	$a1, $s1, 96
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a0, $a0, %pc_lo12(.L.str.4)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a0, $a0, %pc_lo12(.L.str.5)
	move	$a1, $s7
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(fclose)
	jirl	$ra, $ra, 0
	ld.d	$sp, $fp, -272                  # 8-byte Folded Reload
	ld.d	$a0, $fp, -208                  # 8-byte Folded Reload
	addi.d	$sp, $fp, -272
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
.LBB7_35:                               # %.preheader110.preheader
	move	$s1, $zero
	move	$s7, $zero
	ori	$s2, $zero, 1
	b	.LBB7_38
	.p2align	4, , 16
.LBB7_36:                               # %._crit_edge119.split.loopexit
                                        #   in Loop: Header=BB7_38 Depth=1
	ld.d	$a0, $fp, -248                  # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
.LBB7_37:                               # %._crit_edge119.split
                                        #   in Loop: Header=BB7_38 Depth=1
	addi.d	$s1, $s1, 1
	bge	$s1, $a0, .LBB7_21
.LBB7_38:                               # %.preheader110
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_41 Depth 2
                                        #       Child Loop BB7_42 Depth 3
	slli.d	$a1, $s1, 2
	ld.d	$a2, $fp, -240                  # 8-byte Folded Reload
	ldx.w	$s3, $a2, $a1
	blt	$s3, $s2, .LBB7_37
# %bb.39:                               # %.lr.ph118.preheader
                                        #   in Loop: Header=BB7_38 Depth=1
	move	$s4, $zero
	b	.LBB7_41
	.p2align	4, , 16
.LBB7_40:                               # %._crit_edge115.split
                                        #   in Loop: Header=BB7_41 Depth=2
	addi.w	$s4, $s4, 1
	add.d	$s7, $s7, $s5
	beq	$s4, $s3, .LBB7_36
.LBB7_41:                               # %.lr.ph118
                                        #   Parent Loop BB7_38 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB7_42 Depth 3
	ori	$a1, $zero, 44
	ori	$a2, $zero, 1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(fseek)
	jirl	$ra, $ra, 0
	addi.d	$a0, $fp, -160
	ori	$a1, $zero, 4
	ori	$a2, $zero, 1
	move	$a3, $s0
	pcaddu18i	$ra, %call36(fread)
	jirl	$ra, $ra, 0
	ld.w	$s5, $fp, -160
	move	$s8, $s5
	blt	$s5, $s2, .LBB7_40
	.p2align	4, , 16
.LBB7_42:                               # %.lr.ph114
                                        #   Parent Loop BB7_38 Depth=1
                                        #     Parent Loop BB7_41 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ori	$a1, $zero, 16
	ori	$a2, $zero, 1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(fseek)
	jirl	$ra, $ra, 0
	addi.w	$s8, $s8, -1
	bnez	$s8, .LBB7_42
	b	.LBB7_40
.Lfunc_end7:
	.size	load_OpenMOC_tracks, .Lfunc_end7-load_OpenMOC_tracks
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"r"
	.size	.L.str, 2

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"Reading track data from:\n%s\n"
	.size	.L.str.1, 29

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"Number of 2D tracks = %ld\n"
	.size	.L.str.3, 27

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"Number of 3D tracks = %ld\n"
	.size	.L.str.4, 27

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"Number of segments = %ld\n"
	.size	.L.str.5, 26

	.type	.Lstr,@object                   # @str
.Lstr:
	.asciz	"Importing ray tracing data from file..."
	.size	.Lstr, 40

	.section	".note.GNU-stack","",@progbits
	.addrsig
