	.file	"goverlapx.c"
	.text
	.globl	goverlapx                       # -- Begin function goverlapx
	.p2align	5
	.type	goverlapx,@function
goverlapx:                              # @goverlapx
# %bb.0:
	addi.d	$sp, $sp, -256
	st.d	$ra, $sp, 248                   # 8-byte Folded Spill
	st.d	$fp, $sp, 240                   # 8-byte Folded Spill
	st.d	$s0, $sp, 232                   # 8-byte Folded Spill
	st.d	$s1, $sp, 224                   # 8-byte Folded Spill
	st.d	$s2, $sp, 216                   # 8-byte Folded Spill
	st.d	$s3, $sp, 208                   # 8-byte Folded Spill
	st.d	$s4, $sp, 200                   # 8-byte Folded Spill
	st.d	$s5, $sp, 192                   # 8-byte Folded Spill
	st.d	$s6, $sp, 184                   # 8-byte Folded Spill
	st.d	$s7, $sp, 176                   # 8-byte Folded Spill
	st.d	$s8, $sp, 168                   # 8-byte Folded Spill
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	move	$s7, $a0
	pcalau12i	$a0, %got_pc_hi20(cellarray)
	ld.d	$a0, $a0, %got_pc_lo12(cellarray)
	ld.d	$a5, $a0, 0
	slli.d	$a0, $s7, 3
	st.d	$a5, $sp, 144                   # 8-byte Folded Spill
	ldx.d	$a5, $a5, $a0
	ld.w	$a0, $a5, 56
	alsl.d	$a0, $a0, $a5, 3
	ld.d	$t8, $a0, 152
	ld.w	$t1, $a5, 12
	ld.w	$a0, $t8, 76
	st.d	$a5, $sp, 112                   # 8-byte Folded Spill
	ld.w	$t2, $a5, 16
	ld.w	$t7, $t8, 84
	ld.w	$t5, $t8, 48
	ld.w	$t3, $t8, 52
	pcalau12i	$a5, %got_pc_hi20(binOffsetX)
	ld.d	$a5, $a5, %got_pc_lo12(binOffsetX)
	ld.w	$t0, $a5, 0
	pcalau12i	$a5, %got_pc_hi20(binWidthX)
	ld.d	$a5, $a5, %got_pc_lo12(binWidthX)
	ld.w	$a5, $a5, 0
	pcalau12i	$a6, %got_pc_hi20(numBinsX)
	ld.d	$a6, $a6, %got_pc_lo12(numBinsX)
	ld.w	$a7, $a6, 0
	pcalau12i	$a6, %got_pc_hi20(binOffsetY)
	ld.d	$a6, $a6, %got_pc_lo12(binOffsetY)
	ld.w	$t6, $a6, 0
	pcalau12i	$a6, %got_pc_hi20(binWidthY)
	ld.d	$a6, $a6, %got_pc_lo12(binWidthY)
	ld.w	$a6, $a6, 0
	pcalau12i	$t4, %got_pc_hi20(numBinsY)
	ld.d	$t4, $t4, %got_pc_lo12(numBinsY)
	ld.w	$t4, $t4, 0
	vinsgr2vr.w	$vr1, $t7, 0
	vinsgr2vr.w	$vr1, $a0, 1
	vinsgr2vr.w	$vr2, $a2, 0
	vinsgr2vr.w	$vr2, $a1, 1
	vsub.w	$vr1, $vr1, $vr2
	vpickve2gr.w	$a0, $vr1, 1
	movgr2fr.w	$fa2, $a0
	ffint.d.w	$fa2, $fa2
	vpickve2gr.w	$a0, $vr1, 0
	movgr2fr.w	$fa1, $a0
	ffint.d.w	$fa1, $fa1
	vextrins.d	$vr1, $vr2, 16
	vreplvei.d	$vr2, $vr0, 0
	vfmul.d	$vr3, $vr2, $vr1
	vfdiv.d	$vr1, $vr1, $vr2
	vreplvei.d	$vr2, $vr3, 0
	vshuf4i.d	$vr3, $vr1, 12
	vreplvei.d	$vr1, $vr1, 1
	ftintrz.w.d	$fa1, $fa1
	movfr2gr.s	$a0, $fa1
	ftintrz.w.d	$fa1, $fa2
	movfr2gr.s	$t7, $fa1
	vinsgr2vr.w	$vr1, $t7, 0
	vinsgr2vr.w	$vr1, $a0, 1
	movgr2fr.w	$fa2, $a0
	ffint.d.w	$fa2, $fa2
	movgr2fr.w	$fa4, $t7
	ffint.d.w	$fa4, $fa4
	vextrins.d	$vr4, $vr2, 16
	vfsub.d	$vr2, $vr3, $vr4
	st.d	$t8, $sp, 96                    # 8-byte Folded Spill
	ld.d	$a0, $t8, 40
	vldi	$vr3, -928
	vfcmp.cle.d	$vr2, $vr3, $vr2
	vshuf4i.w	$vr4, $vr2, 8
	vinsgr2vr.d	$vr5, $a0, 0
	vinsgr2vr.w	$vr2, $a4, 0
	vinsgr2vr.w	$vr2, $a3, 1
	vinsgr2vr.w	$vr3, $t5, 0
	vpackev.w	$vr3, $vr5, $vr3
	vadd.w	$vr3, $vr2, $vr3
	vinsgr2vr.w	$vr6, $t2, 0
	vinsgr2vr.w	$vr6, $t1, 1
	vsub.w	$vr3, $vr6, $vr3
	vsub.w	$vr2, $vr6, $vr2
	vadd.w	$vr1, $vr2, $vr1
	vinsgr2vr.w	$vr5, $t3, 0
	vadd.w	$vr1, $vr1, $vr5
	vsub.w	$vr4, $vr1, $vr4
	vinsgr2vr.w	$vr1, $t6, 0
	vinsgr2vr.w	$vr1, $t0, 1
	vsub.w	$vr5, $vr3, $vr1
	vpickve2gr.w	$a0, $vr5, 1
	div.w	$a0, $a0, $a5
	vpickve2gr.w	$t0, $vr5, 0
	div.w	$t0, $t0, $a6
	vinsgr2vr.w	$vr5, $t0, 0
	vinsgr2vr.w	$vr5, $a0, 1
	vslti.w	$vr6, $vr5, 1
	vrepli.w	$vr7, 1
	vinsgr2vr.w	$vr8, $t4, 0
	vinsgr2vr.w	$vr8, $a7, 1
	vmin.w	$vr5, $vr5, $vr8
	vbitsel.v	$vr5, $vr5, $vr7, $vr6
	vsub.w	$vr1, $vr4, $vr1
	vpickve2gr.w	$a0, $vr1, 1
	div.w	$a0, $a0, $a5
	vpickve2gr.w	$a5, $vr1, 0
	div.w	$a5, $a5, $a6
	vinsgr2vr.w	$vr1, $a5, 0
	vinsgr2vr.w	$vr1, $a0, 1
	vslt.w	$vr6, $vr8, $vr1
	vmaxi.w	$vr1, $vr1, 1
	vbitsel.v	$vr1, $vr1, $vr8, $vr6
	vpickve2gr.w	$a5, $vr1, 1
	vseq.w	$vr6, $vr5, $vr1
	vshuf4i.w	$vr7, $vr6, 16
	vpickve2gr.d	$a0, $vr6, 0
	vpickve2gr.d	$a6, $vr7, 1
	and	$a0, $a6, $a0
	andi	$a0, $a0, 1
	vpickve2gr.w	$a6, $vr5, 1
	st.d	$a6, $sp, 24                    # 8-byte Folded Spill
	maskeqz	$a6, $a6, $a0
	vpickve2gr.w	$a7, $vr5, 0
	st.d	$a7, $sp, 48                    # 8-byte Folded Spill
	maskeqz	$a0, $a7, $a0
	pcalau12i	$a7, %got_pc_hi20(binX)
	ld.d	$a7, $a7, %got_pc_lo12(binX)
	st.w	$a6, $a7, 0
	pcalau12i	$a6, %got_pc_hi20(binY)
	ld.d	$a6, $a6, %got_pc_lo12(binY)
	st.w	$a0, $a6, 0
	bltz	$a5, .LBB0_43
# %bb.1:                                # %.lr.ph339
	vpickve2gr.w	$a6, $vr1, 0
	bltz	$a6, .LBB0_43
# %bb.2:                                # %.lr.ph339.split.preheader
	pcalau12i	$a0, %got_pc_hi20(blockarray)
	ld.d	$a0, $a0, %got_pc_lo12(blockarray)
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(numcells)
	ld.d	$a0, $a0, %got_pc_lo12(numcells)
	ld.w	$t6, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(lapFactor)
	ld.d	$a0, $a0, %got_pc_lo12(lapFactor)
	fld.d	$fa1, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(offset)
	ld.d	$a0, $a0, %got_pc_lo12(offset)
	move	$a7, $zero
	st.d	$zero, $sp, 120                 # 8-byte Folded Spill
	ld.w	$a0, $a0, 0
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	addi.d	$a0, $a6, 1
	addi.d	$a5, $a5, 1
	bstrpick.d	$a5, $a5, 31, 0
	st.d	$a5, $sp, 32                    # 8-byte Folded Spill
	bstrpick.d	$a0, $a0, 31, 0
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	vpickve2gr.w	$a0, $vr3, 0
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	vpickve2gr.w	$a0, $vr3, 1
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	vpickve2gr.w	$a0, $vr4, 0
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	vpickve2gr.w	$a0, $vr4, 1
	st.d	$a0, $sp, 160                   # 8-byte Folded Spill
	vpickve2gr.w	$s5, $vr2, 0
	vpickve2gr.w	$s6, $vr2, 1
	vldi	$vr2, -928
	st.d	$s7, $sp, 80                    # 8-byte Folded Spill
	b	.LBB0_4
	.p2align	4, , 16
.LBB0_3:                                # %..loopexit312_crit_edge
                                        #   in Loop: Header=BB0_4 Depth=1
	addi.d	$a7, $a7, 1
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	beq	$a7, $a0, .LBB0_44
.LBB0_4:                                # %.lr.ph339.split
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_8 Depth 2
                                        #       Child Loop BB0_14 Depth 3
                                        #         Child Loop BB0_26 Depth 4
                                        #           Child Loop BB0_35 Depth 5
                                        #           Child Loop BB0_29 Depth 5
	beqz	$a7, .LBB0_6
# %bb.5:                                # %.lr.ph339.split
                                        #   in Loop: Header=BB0_4 Depth=1
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	blt	$a7, $a0, .LBB0_3
.LBB0_6:                                # %.preheader
                                        #   in Loop: Header=BB0_4 Depth=1
	move	$a6, $zero
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	alsl.d	$a0, $a7, $a0, 3
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	sltui	$a0, $a7, 1
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	st.d	$a7, $sp, 72                    # 8-byte Folded Spill
	b	.LBB0_8
	.p2align	4, , 16
.LBB0_7:                                # %.loopexit311
                                        #   in Loop: Header=BB0_8 Depth=2
	ld.d	$a6, $sp, 104                   # 8-byte Folded Reload
	addi.d	$a6, $a6, 1
	ld.d	$a7, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	beq	$a6, $a0, .LBB0_3
.LBB0_8:                                #   Parent Loop BB0_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_14 Depth 3
                                        #         Child Loop BB0_26 Depth 4
                                        #           Child Loop BB0_35 Depth 5
                                        #           Child Loop BB0_29 Depth 5
	or	$a5, $a6, $a7
	slli.d	$a5, $a5, 32
	st.d	$a6, $sp, 104                   # 8-byte Folded Spill
	beqz	$a5, .LBB0_10
# %bb.9:                                #   in Loop: Header=BB0_8 Depth=2
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	slt	$a5, $a6, $a0
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	or	$a5, $a0, $a5
	bnez	$a5, .LBB0_7
.LBB0_10:                               #   in Loop: Header=BB0_8 Depth=2
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a5, $a0, 0
	slli.d	$a6, $a6, 3
	ldx.d	$t3, $a5, $a6
	ld.w	$a5, $t3, 0
	blez	$a5, .LBB0_7
# %bb.11:                               # %.lr.ph327.preheader
                                        #   in Loop: Header=BB0_8 Depth=2
	addi.d	$a5, $a5, 1
	bstrpick.d	$fp, $a5, 31, 0
	ori	$ra, $zero, 1
	b	.LBB0_14
.LBB0_12:                               #   in Loop: Header=BB0_14 Depth=3
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	slt	$a5, $t8, $a0
	masknez	$a7, $t8, $a5
	maskeqz	$a5, $a0, $a5
	or	$a5, $a5, $a7
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	slt	$a7, $a0, $t7
	masknez	$t4, $t7, $a7
	maskeqz	$a7, $a0, $a7
	or	$a7, $a7, $t4
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	slt	$t4, $t0, $a0
	masknez	$t0, $t0, $t4
	maskeqz	$t4, $a0, $t4
	or	$t0, $t4, $t0
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	slt	$t4, $a0, $a6
	masknez	$a6, $a6, $t4
	maskeqz	$t4, $a0, $t4
	or	$a6, $t4, $a6
	sub.d	$a6, $a6, $t0
	sub.d	$a5, $a7, $a5
	mul.d	$a5, $a6, $a5
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	add.d	$a5, $a0, $a5
	movgr2fr.w	$fa3, $a5
	ffint.d.w	$fa3, $fa3
	fmul.d	$fa3, $fa1, $fa3
	ftintrz.w.d	$fa3, $fa3
	movfr2gr.s	$a5, $fa3
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	add.w	$a0, $a0, $a5
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	.p2align	4, , 16
.LBB0_13:                               # %._crit_edge.thread
                                        #   in Loop: Header=BB0_14 Depth=3
	addi.d	$ra, $ra, 1
	beq	$ra, $fp, .LBB0_7
.LBB0_14:                               # %.lr.ph327
                                        #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_8 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_26 Depth 4
                                        #           Child Loop BB0_35 Depth 5
                                        #           Child Loop BB0_29 Depth 5
	slli.d	$a5, $ra, 2
	ldx.w	$t4, $t3, $a5
	beq	$t4, $s7, .LBB0_13
# %bb.15:                               #   in Loop: Header=BB0_14 Depth=3
	slli.d	$a5, $t4, 3
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	ldx.d	$a7, $a0, $a5
	ld.w	$a5, $a7, 56
	alsl.d	$a5, $a5, $a7, 3
	ld.d	$a5, $a5, 152
	ld.w	$t5, $a7, 12
	ld.w	$s0, $a7, 16
	ld.w	$a6, $a5, 56
	ld.w	$t0, $a5, 60
	ld.w	$s1, $a5, 64
	ld.w	$s2, $a5, 68
	add.w	$t8, $a6, $t5
	add.w	$t7, $t0, $t5
	add.w	$t0, $s1, $s0
	add.w	$a6, $s2, $s0
	blt	$t6, $t4, .LBB0_17
# %bb.16:                               #   in Loop: Header=BB0_14 Depth=3
	ld.w	$s1, $a5, 40
	ld.w	$s2, $a5, 44
	ld.w	$s3, $a5, 48
	ld.w	$s4, $a5, 52
	sub.w	$t8, $t8, $s1
	add.w	$t7, $s2, $t7
	sub.w	$t0, $t0, $s3
	add.w	$a6, $s4, $a6
.LBB0_17:                               #   in Loop: Header=BB0_14 Depth=3
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	bge	$t8, $a0, .LBB0_13
# %bb.18:                               #   in Loop: Header=BB0_14 Depth=3
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	bge	$a0, $t7, .LBB0_13
# %bb.19:                               #   in Loop: Header=BB0_14 Depth=3
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	bge	$t0, $a0, .LBB0_13
# %bb.20:                               #   in Loop: Header=BB0_14 Depth=3
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	bge	$a0, $a6, .LBB0_13
# %bb.21:                               #   in Loop: Header=BB0_14 Depth=3
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ld.w	$s1, $a0, 60
	ori	$a0, $zero, 1
	bne	$s1, $a0, .LBB0_23
# %bb.22:                               #   in Loop: Header=BB0_14 Depth=3
	ld.w	$a7, $a7, 60
	ori	$a0, $zero, 1
	beq	$a7, $a0, .LBB0_12
.LBB0_23:                               #   in Loop: Header=BB0_14 Depth=3
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.d	$t8, $a0, 0
	beqz	$t8, .LBB0_13
# %bb.24:                               # %.lr.ph321
                                        #   in Loop: Header=BB0_14 Depth=3
	ld.d	$s1, $a5, 0
	move	$t7, $zero
	b	.LBB0_26
	.p2align	4, , 16
.LBB0_25:                               # %.loopexit
                                        #   in Loop: Header=BB0_26 Depth=4
	ld.d	$t8, $t8, 0
	beqz	$t8, .LBB0_40
.LBB0_26:                               #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_8 Depth=2
                                        #       Parent Loop BB0_14 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB0_35 Depth 5
                                        #           Child Loop BB0_29 Depth 5
	beqz	$s1, .LBB0_25
# %bb.27:                               # %.lr.ph
                                        #   in Loop: Header=BB0_26 Depth=4
	ld.w	$a5, $t8, 72
	sub.d	$a5, $a5, $a1
	movgr2fr.w	$fa3, $a5
	ffint.d.w	$fa3, $fa3
	fdiv.d	$fa3, $fa3, $fa0
	ftintrz.w.d	$fa4, $fa3
	movfr2gr.s	$a5, $fa4
	movgr2fr.w	$fa4, $a5
	ld.w	$a6, $t8, 76
	ffint.d.w	$fa4, $fa4
	fsub.d	$fa3, $fa3, $fa4
	fcmp.cle.d	$fcc0, $fa2, $fa3
	sub.d	$a6, $a6, $a1
	movgr2fr.w	$fa3, $a6
	ffint.d.w	$fa3, $fa3
	fdiv.d	$fa3, $fa3, $fa0
	ftintrz.w.d	$fa4, $fa3
	movfr2gr.s	$a6, $fa4
	movgr2fr.w	$fa4, $a6
	ld.w	$a7, $t8, 80
	ffint.d.w	$fa4, $fa4
	fsub.d	$fa3, $fa3, $fa4
	fcmp.cle.d	$fcc1, $fa2, $fa3
	sub.d	$a7, $a7, $a2
	movgr2fr.w	$fa3, $a7
	ffint.d.w	$fa3, $fa3
	fmul.d	$fa3, $fa0, $fa3
	ftintrz.w.d	$fa4, $fa3
	movfr2gr.s	$t0, $fa4
	movgr2fr.w	$fa4, $t0
	ld.w	$a7, $t8, 84
	ffint.d.w	$fa4, $fa4
	fsub.d	$fa3, $fa3, $fa4
	fcmp.cle.d	$fcc2, $fa2, $fa3
	sub.d	$a7, $a7, $a2
	movgr2fr.w	$fa3, $a7
	ffint.d.w	$fa3, $fa3
	ld.w	$a7, $t8, 40
	fmul.d	$fa3, $fa0, $fa3
	ftintrz.w.d	$fa4, $fa3
	add.d	$a5, $t1, $a5
	add.d	$a7, $a3, $a7
	sub.d	$a5, $a5, $a7
	movcf2gr	$a7, $fcc0
	ld.w	$s2, $t8, 44
	add.w	$a7, $a5, $a7
	movfr2gr.s	$s3, $fa4
	add.d	$a5, $s6, $a6
	add.d	$a5, $a5, $s2
	movcf2gr	$a6, $fcc1
	add.w	$s7, $a5, $a6
	ld.w	$a5, $t8, 48
	movgr2fr.w	$fa4, $s3
	ffint.d.w	$fa4, $fa4
	add.d	$a6, $t2, $t0
	add.d	$a5, $a4, $a5
	sub.d	$a5, $a6, $a5
	movcf2gr	$a6, $fcc2
	add.w	$a5, $a5, $a6
	ld.w	$a6, $t8, 52
	fsub.d	$fa3, $fa3, $fa4
	fcmp.cle.d	$fcc0, $fa2, $fa3
	add.d	$t0, $s5, $s3
	add.d	$a6, $t0, $a6
	movcf2gr	$t0, $fcc0
	add.w	$a6, $a6, $t0
	move	$t0, $s1
	blt	$t6, $t4, .LBB0_29
	b	.LBB0_35
	.p2align	4, , 16
.LBB0_28:                               #   in Loop: Header=BB0_29 Depth=5
	ld.d	$t0, $t0, 0
	beqz	$t0, .LBB0_25
.LBB0_29:                               # %.lr.ph.split.us
                                        #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_8 Depth=2
                                        #       Parent Loop BB0_14 Depth=3
                                        #         Parent Loop BB0_26 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	ld.w	$s2, $t0, 56
	add.w	$s2, $s2, $t5
	bge	$s2, $s7, .LBB0_28
# %bb.30:                               # %.lr.ph.split.us
                                        #   in Loop: Header=BB0_29 Depth=5
	ld.w	$s3, $t0, 60
	add.w	$s3, $s3, $t5
	bge	$a7, $s3, .LBB0_28
# %bb.31:                               # %.lr.ph.split.us
                                        #   in Loop: Header=BB0_29 Depth=5
	ld.w	$s4, $t0, 64
	add.w	$s4, $s4, $s0
	bge	$s4, $a6, .LBB0_28
# %bb.32:                               # %.lr.ph.split.us
                                        #   in Loop: Header=BB0_29 Depth=5
	ld.w	$s8, $t0, 68
	add.w	$s8, $s8, $s0
	bge	$a5, $s8, .LBB0_28
# %bb.33:                               #   in Loop: Header=BB0_29 Depth=5
	slt	$a0, $s2, $a7
	masknez	$s2, $s2, $a0
	maskeqz	$a0, $a7, $a0
	or	$a0, $a0, $s2
	slt	$s2, $s7, $s3
	masknez	$s3, $s3, $s2
	maskeqz	$s2, $s7, $s2
	or	$s2, $s2, $s3
	slt	$s3, $s4, $a5
	masknez	$s4, $s4, $s3
	maskeqz	$s3, $a5, $s3
	or	$s3, $s3, $s4
	slt	$s4, $a6, $s8
	masknez	$s8, $s8, $s4
	maskeqz	$s4, $a6, $s4
	or	$s4, $s4, $s8
	sub.d	$s3, $s4, $s3
	sub.d	$a0, $s2, $a0
	mul.d	$a0, $s3, $a0
	add.w	$t7, $a0, $t7
	b	.LBB0_28
	.p2align	4, , 16
.LBB0_34:                               #   in Loop: Header=BB0_35 Depth=5
	ld.d	$t0, $t0, 0
	beqz	$t0, .LBB0_25
.LBB0_35:                               # %.lr.ph.split
                                        #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_8 Depth=2
                                        #       Parent Loop BB0_14 Depth=3
                                        #         Parent Loop BB0_26 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	ld.w	$a0, $t0, 56
	ld.w	$s2, $t0, 40
	add.d	$a0, $a0, $t5
	sub.w	$s3, $a0, $s2
	bge	$s3, $s7, .LBB0_34
# %bb.36:                               # %.lr.ph.split
                                        #   in Loop: Header=BB0_35 Depth=5
	ld.w	$a0, $t0, 60
	ld.w	$s2, $t0, 44
	add.d	$a0, $a0, $t5
	add.w	$s2, $s2, $a0
	bge	$a7, $s2, .LBB0_34
# %bb.37:                               # %.lr.ph.split
                                        #   in Loop: Header=BB0_35 Depth=5
	ld.w	$a0, $t0, 64
	ld.w	$s4, $t0, 48
	add.d	$a0, $a0, $s0
	sub.w	$s4, $a0, $s4
	bge	$s4, $a6, .LBB0_34
# %bb.38:                               # %.lr.ph.split
                                        #   in Loop: Header=BB0_35 Depth=5
	ld.w	$a0, $t0, 68
	ld.w	$s8, $t0, 52
	add.d	$a0, $a0, $s0
	add.w	$s8, $s8, $a0
	bge	$a5, $s8, .LBB0_34
# %bb.39:                               #   in Loop: Header=BB0_35 Depth=5
	slt	$a0, $s3, $a7
	masknez	$s3, $s3, $a0
	maskeqz	$a0, $a7, $a0
	or	$a0, $a0, $s3
	slt	$s3, $s7, $s2
	masknez	$s2, $s2, $s3
	maskeqz	$s3, $s7, $s3
	or	$s2, $s3, $s2
	slt	$s3, $s4, $a5
	masknez	$s4, $s4, $s3
	maskeqz	$s3, $a5, $s3
	or	$s3, $s3, $s4
	slt	$s4, $a6, $s8
	masknez	$s8, $s8, $s4
	maskeqz	$s4, $a6, $s4
	or	$s4, $s4, $s8
	sub.d	$s3, $s4, $s3
	sub.d	$a0, $s2, $a0
	mul.d	$a0, $s3, $a0
	add.w	$t7, $a0, $t7
	b	.LBB0_34
.LBB0_40:                               # %._crit_edge
                                        #   in Loop: Header=BB0_14 Depth=3
	beqz	$t7, .LBB0_42
# %bb.41:                               #   in Loop: Header=BB0_14 Depth=3
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	add.d	$a0, $a0, $t7
	movgr2fr.w	$fa3, $a0
	ffint.d.w	$fa3, $fa3
	fmul.d	$fa3, $fa1, $fa3
	ftintrz.w.d	$fa3, $fa3
	movfr2gr.s	$a0, $fa3
	ld.d	$a5, $sp, 120                   # 8-byte Folded Reload
	add.w	$a5, $a5, $a0
	st.d	$a5, $sp, 120                   # 8-byte Folded Spill
.LBB0_42:                               # %._crit_edge.thread
                                        #   in Loop: Header=BB0_14 Depth=3
	ld.d	$s7, $sp, 80                    # 8-byte Folded Reload
	b	.LBB0_13
.LBB0_43:
	st.d	$zero, $sp, 120                 # 8-byte Folded Spill
.LBB0_44:                               # %._crit_edge340
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 184                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 192                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 200                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 208                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 216                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 224                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 232                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 240                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 248                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 256
	ret
.Lfunc_end0:
	.size	goverlapx, .Lfunc_end0-goverlapx
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
