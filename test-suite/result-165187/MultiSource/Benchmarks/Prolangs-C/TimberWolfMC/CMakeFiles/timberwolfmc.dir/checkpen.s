	.file	"checkpen.c"
	.text
	.globl	checkpen                        # -- Begin function checkpen
	.p2align	5
	.type	checkpen,@function
checkpen:                               # @checkpen
# %bb.0:
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	st.d	$s4, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(numcells)
	ld.d	$s1, $a0, %got_pc_lo12(numcells)
	ld.w	$a0, $s1, 0
	blez	$a0, .LBB0_3
# %bb.1:                                # %.lr.ph.preheader
	ori	$fp, $zero, 1
	ori	$s2, $zero, 8
	pcalau12i	$a0, %got_pc_hi20(cellarray)
	ld.d	$s3, $a0, %got_pc_lo12(cellarray)
	move	$s4, $zero
	move	$s0, $zero
	.p2align	4, , 16
.LBB0_2:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s3, 0
	ldx.d	$a0, $a0, $s2
	ld.w	$a1, $a0, 12
	ld.w	$a2, $a0, 16
	ld.w	$a3, $a0, 56
	ori	$a5, $zero, 1
	move	$a0, $fp
	move	$a4, $zero
	move	$a6, $zero
	pcaddu18i	$ra, %call36(checkover)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s1, 0
	add.w	$s0, $a0, $s0
	addi.d	$s4, $s4, 1
	addi.w	$fp, $fp, 1
	addi.d	$s2, $s2, 8
	blt	$s4, $a1, .LBB0_2
	b	.LBB0_4
.LBB0_3:
	move	$s0, $zero
.LBB0_4:                                # %._crit_edge
	move	$a0, $s0
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.Lfunc_end0:
	.size	checkpen, .Lfunc_end0-checkpen
                                        # -- End function
	.globl	checkover                       # -- Begin function checkover
	.p2align	5
	.type	checkover,@function
checkover:                              # @checkover
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
	st.d	$a6, $sp, 88                    # 8-byte Folded Spill
	move	$t3, $a5
	pcalau12i	$a5, %got_pc_hi20(cellarray)
	ld.d	$a5, $a5, %got_pc_lo12(cellarray)
	ld.d	$a7, $a5, 0
	slli.d	$a5, $a0, 3
	ldx.d	$s7, $a7, $a5
	alsl.d	$a3, $a3, $s7, 3
	ld.d	$t0, $a3, 152
	ld.w	$a3, $t0, 56
	ld.w	$a5, $t0, 60
	ld.w	$a6, $t0, 64
	st.d	$t0, $sp, 112                   # 8-byte Folded Spill
	ld.w	$t0, $t0, 68
	add.w	$t2, $a3, $a1
	add.w	$t7, $a6, $a2
	pcalau12i	$a3, %got_pc_hi20(binOffsetX)
	ld.d	$a3, $a3, %got_pc_lo12(binOffsetX)
	ld.w	$a6, $a3, 0
	sub.w	$a3, $t2, $a6
	pcalau12i	$t1, %got_pc_hi20(binWidthX)
	ld.d	$t1, $t1, %got_pc_lo12(binWidthX)
	ld.w	$t1, $t1, 0
	div.w	$t4, $a3, $t1
	slti	$t5, $t4, 1
	pcalau12i	$a3, %got_pc_hi20(numBinsX)
	ld.d	$a3, $a3, %got_pc_lo12(numBinsX)
	ld.w	$a3, $a3, 0
	slt	$t6, $t4, $a3
	maskeqz	$t4, $t4, $t6
	masknez	$t6, $a3, $t6
	or	$t4, $t4, $t6
	masknez	$t4, $t4, $t5
	ori	$t6, $zero, 1
	maskeqz	$t5, $t6, $t5
	or	$s1, $t5, $t4
	pcalau12i	$t4, %got_pc_hi20(binOffsetY)
	ld.d	$t4, $t4, %got_pc_lo12(binOffsetY)
	ld.w	$t4, $t4, 0
	st.d	$t7, $sp, 120                   # 8-byte Folded Spill
	sub.w	$t5, $t7, $t4
	pcalau12i	$t7, %got_pc_hi20(binWidthY)
	ld.d	$t7, $t7, %got_pc_lo12(binWidthY)
	ld.w	$t7, $t7, 0
	div.w	$t5, $t5, $t7
	slti	$t8, $t5, 1
	pcalau12i	$fp, %got_pc_hi20(numBinsY)
	ld.d	$fp, $fp, %got_pc_lo12(numBinsY)
	ld.w	$fp, $fp, 0
	slt	$s0, $t5, $fp
	maskeqz	$t5, $t5, $s0
	masknez	$s0, $fp, $s0
	or	$t5, $t5, $s0
	masknez	$t5, $t5, $t8
	maskeqz	$t8, $t6, $t8
	or	$t5, $t8, $t5
	vinsgr2vr.w	$vr0, $a5, 0
	vinsgr2vr.w	$vr0, $t0, 1
	vinsgr2vr.w	$vr1, $a1, 0
	vinsgr2vr.w	$vr1, $a2, 1
	vadd.w	$vr1, $vr0, $vr1
	vinsgr2vr.w	$vr0, $a6, 0
	vinsgr2vr.w	$vr0, $t4, 1
	vsub.w	$vr0, $vr1, $vr0
	vpickve2gr.w	$a5, $vr0, 1
	div.w	$a5, $a5, $t7
	vpickve2gr.w	$a6, $vr0, 0
	div.w	$a6, $a6, $t1
	vinsgr2vr.w	$vr0, $a6, 0
	vinsgr2vr.w	$vr0, $a5, 1
	slt	$t0, $t6, $a6
	maskeqz	$a6, $a6, $t0
	masknez	$t0, $t6, $t0
	or	$a6, $a6, $t0
	vinsgr2vr.w	$vr2, $a3, 0
	vinsgr2vr.w	$vr2, $fp, 1
	vslt.w	$vr0, $vr2, $vr0
	vshuf4i.w	$vr2, $vr0, 16
	vpickve2gr.d	$t0, $vr0, 0
	andi	$t0, $t0, 1
	masknez	$a6, $a6, $t0
	maskeqz	$a3, $a3, $t0
	or	$a6, $a3, $a6
	slt	$a3, $t6, $a5
	maskeqz	$a5, $a5, $a3
	masknez	$a3, $t6, $a3
	or	$a3, $a5, $a3
	vpickve2gr.d	$a5, $vr2, 1
	andi	$a5, $a5, 1
	masknez	$a3, $a3, $a5
	maskeqz	$a5, $fp, $a5
	or	$t1, $a5, $a3
	xor	$a3, $s1, $a6
	sltui	$a3, $a3, 1
	xor	$a5, $t5, $t1
	sltui	$a5, $a5, 1
	and	$a3, $a3, $a5
	st.d	$s1, $sp, 24                    # 8-byte Folded Spill
	maskeqz	$a5, $s1, $a3
	st.d	$t5, $sp, 72                    # 8-byte Folded Spill
	maskeqz	$a3, $t5, $a3
	pcalau12i	$t0, %got_pc_hi20(binX)
	ld.d	$t0, $t0, %got_pc_lo12(binX)
	st.w	$a5, $t0, 0
	pcalau12i	$a5, %got_pc_hi20(binY)
	ld.d	$a5, $a5, %got_pc_lo12(binY)
	st.w	$a3, $a5, 0
	bltz	$a6, .LBB1_41
# %bb.1:                                # %.lr.ph267
	bltz	$t1, .LBB1_41
# %bb.2:                                # %.lr.ph267.split.preheader
	pcalau12i	$a3, %got_pc_hi20(blockarray)
	ld.d	$a3, $a3, %got_pc_lo12(blockarray)
	ld.d	$a3, $a3, 0
	st.d	$a3, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$a3, %got_pc_hi20(numcells)
	ld.d	$a3, $a3, %got_pc_lo12(numcells)
	ld.w	$t7, $a3, 0
	pcalau12i	$a3, %got_pc_hi20(lapFactor)
	ld.d	$a3, $a3, %got_pc_lo12(lapFactor)
	fld.d	$fa0, $a3, 0
	pcalau12i	$a3, %got_pc_hi20(offset)
	ld.d	$a3, $a3, %got_pc_lo12(offset)
	move	$t4, $zero
	st.d	$zero, $sp, 128                 # 8-byte Folded Spill
	ld.w	$a3, $a3, 0
	st.d	$a3, $sp, 64                    # 8-byte Folded Spill
	addi.d	$a3, $t1, 1
	addi.d	$a5, $a6, 1
	bstrpick.d	$a5, $a5, 31, 0
	st.d	$a5, $sp, 32                    # 8-byte Folded Spill
	bstrpick.d	$a3, $a3, 31, 0
	st.d	$a3, $sp, 96                    # 8-byte Folded Spill
	vpickve2gr.w	$s2, $vr1, 0
	vpickve2gr.w	$s3, $vr1, 1
	ori	$t8, $zero, 1
	ld.d	$t0, $sp, 120                   # 8-byte Folded Reload
	st.d	$t3, $sp, 48                    # 8-byte Folded Spill
	st.d	$s7, $sp, 40                    # 8-byte Folded Spill
	b	.LBB1_4
	.p2align	4, , 16
.LBB1_3:                                # %..loopexit240_crit_edge
                                        #   in Loop: Header=BB1_4 Depth=1
	addi.d	$t4, $t4, 1
	ld.d	$a3, $sp, 32                    # 8-byte Folded Reload
	beq	$t4, $a3, .LBB1_42
.LBB1_4:                                # %.lr.ph267.split
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_8 Depth 2
                                        #       Child Loop BB1_14 Depth 3
                                        #         Child Loop BB1_31 Depth 4
                                        #           Child Loop BB1_33 Depth 5
	beqz	$t4, .LBB1_6
# %bb.5:                                # %.lr.ph267.split
                                        #   in Loop: Header=BB1_4 Depth=1
	ld.d	$a3, $sp, 24                    # 8-byte Folded Reload
	blt	$t4, $a3, .LBB1_3
.LBB1_6:                                # %.preheader
                                        #   in Loop: Header=BB1_4 Depth=1
	move	$s5, $zero
	ld.d	$a3, $sp, 16                    # 8-byte Folded Reload
	alsl.d	$a3, $t4, $a3, 3
	st.d	$a3, $sp, 56                    # 8-byte Folded Spill
	sltui	$a3, $t4, 1
	st.d	$a3, $sp, 80                    # 8-byte Folded Spill
	st.d	$t4, $sp, 104                   # 8-byte Folded Spill
	b	.LBB1_8
	.p2align	4, , 16
.LBB1_7:                                # %.loopexit239
                                        #   in Loop: Header=BB1_8 Depth=2
	addi.d	$s5, $s5, 1
	ld.d	$t4, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 96                    # 8-byte Folded Reload
	beq	$s5, $a3, .LBB1_3
.LBB1_8:                                #   Parent Loop BB1_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_14 Depth 3
                                        #         Child Loop BB1_31 Depth 4
                                        #           Child Loop BB1_33 Depth 5
	or	$a3, $s5, $t4
	slli.d	$a3, $a3, 32
	beqz	$a3, .LBB1_10
# %bb.9:                                #   in Loop: Header=BB1_8 Depth=2
	ld.d	$a3, $sp, 72                    # 8-byte Folded Reload
	slt	$a3, $s5, $a3
	ld.d	$a5, $sp, 80                    # 8-byte Folded Reload
	or	$a3, $a5, $a3
	bnez	$a3, .LBB1_7
.LBB1_10:                               #   in Loop: Header=BB1_8 Depth=2
	ld.d	$a3, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a3, $a3, 0
	slli.d	$a5, $s5, 3
	ldx.d	$s8, $a3, $a5
	ld.w	$a3, $s8, 0
	blez	$a3, .LBB1_7
# %bb.11:                               # %.lr.ph255.preheader
                                        #   in Loop: Header=BB1_8 Depth=2
	addi.d	$a3, $a3, 1
	bstrpick.d	$ra, $a3, 31, 0
	ori	$t6, $zero, 1
	b	.LBB1_14
.LBB1_12:                               #   in Loop: Header=BB1_14 Depth=3
	ori	$t8, $zero, 1
	.p2align	4, , 16
.LBB1_13:                               # %._crit_edge.thread
                                        #   in Loop: Header=BB1_14 Depth=3
	addi.d	$t6, $t6, 1
	beq	$t6, $ra, .LBB1_7
.LBB1_14:                               # %.lr.ph255
                                        #   Parent Loop BB1_4 Depth=1
                                        #     Parent Loop BB1_8 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB1_31 Depth 4
                                        #           Child Loop BB1_33 Depth 5
	slli.d	$a3, $t6, 2
	ldx.w	$a3, $s8, $a3
	beq	$a3, $a0, .LBB1_13
# %bb.15:                               # %.lr.ph255
                                        #   in Loop: Header=BB1_14 Depth=3
	blt	$t7, $a3, .LBB1_13
# %bb.16:                               #   in Loop: Header=BB1_14 Depth=3
	slli.d	$a5, $a3, 3
	ldx.d	$a6, $a7, $a5
	bne	$a3, $a4, .LBB1_19
# %bb.17:                               #   in Loop: Header=BB1_14 Depth=3
	bnez	$t3, .LBB1_13
# %bb.18:                               #   in Loop: Header=BB1_14 Depth=3
	ld.d	$a3, $sp, 88                    # 8-byte Folded Reload
	alsl.d	$a3, $a3, $a6, 3
	addi.d	$a3, $a3, 152
	move	$s0, $s7
	b	.LBB1_20
	.p2align	4, , 16
.LBB1_19:                               #   in Loop: Header=BB1_14 Depth=3
	ld.w	$a3, $a6, 56
	alsl.d	$a3, $a3, $a6, 3
	addi.d	$a3, $a3, 152
	move	$s0, $a6
.LBB1_20:                               #   in Loop: Header=BB1_14 Depth=3
	ld.d	$t1, $a3, 0
	ld.w	$t4, $s0, 12
	ld.w	$a3, $t1, 56
	add.w	$t5, $a3, $t4
	bge	$t5, $s2, .LBB1_13
# %bb.21:                               #   in Loop: Header=BB1_14 Depth=3
	ld.w	$a3, $t1, 60
	add.w	$fp, $a3, $t4
	bge	$t2, $fp, .LBB1_13
# %bb.22:                               #   in Loop: Header=BB1_14 Depth=3
	ld.w	$s0, $s0, 16
	ld.w	$a3, $t1, 64
	add.w	$s1, $a3, $s0
	bge	$s1, $s3, .LBB1_13
# %bb.23:                               #   in Loop: Header=BB1_14 Depth=3
	ld.w	$a3, $t1, 68
	add.w	$s4, $a3, $s0
	bge	$t0, $s4, .LBB1_13
# %bb.24:                               #   in Loop: Header=BB1_14 Depth=3
	ld.w	$a3, $s7, 60
	bne	$a3, $t8, .LBB1_27
# %bb.25:                               #   in Loop: Header=BB1_14 Depth=3
	ld.w	$a3, $a6, 60
	bne	$a3, $t8, .LBB1_27
# %bb.26:                               #   in Loop: Header=BB1_14 Depth=3
	slt	$a3, $t5, $t2
	masknez	$a5, $t5, $a3
	maskeqz	$a3, $t2, $a3
	or	$a3, $a3, $a5
	slt	$a5, $s2, $fp
	masknez	$a6, $fp, $a5
	maskeqz	$a5, $s2, $a5
	or	$a5, $a5, $a6
	slt	$a6, $s1, $t0
	masknez	$t0, $s1, $a6
	ld.d	$t1, $sp, 120                   # 8-byte Folded Reload
	maskeqz	$a6, $t1, $a6
	or	$a6, $a6, $t0
	slt	$t0, $s3, $s4
	masknez	$t1, $s4, $t0
	maskeqz	$t0, $s3, $t0
	or	$t0, $t0, $t1
	sub.d	$a6, $t0, $a6
	ld.d	$t0, $sp, 120                   # 8-byte Folded Reload
	sub.d	$a3, $a5, $a3
	mul.d	$a3, $a6, $a3
	ld.d	$a5, $sp, 64                    # 8-byte Folded Reload
	add.d	$a3, $a5, $a3
	movgr2fr.w	$fa1, $a3
	ffint.d.w	$fa1, $fa1
	fmul.d	$fa1, $fa0, $fa1
	ftintrz.w.d	$fa1, $fa1
	movfr2gr.s	$a3, $fa1
	ld.d	$a5, $sp, 128                   # 8-byte Folded Reload
	add.w	$a5, $a5, $a3
	st.d	$a5, $sp, 128                   # 8-byte Folded Spill
	b	.LBB1_13
.LBB1_27:                               #   in Loop: Header=BB1_14 Depth=3
	ld.d	$a3, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s6, $a3, 0
	beqz	$s6, .LBB1_12
# %bb.28:                               # %.lr.ph249
                                        #   in Loop: Header=BB1_14 Depth=3
	ld.d	$s4, $t1, 0
	beqz	$s4, .LBB1_12
# %bb.29:                               # %.lr.ph.preheader
                                        #   in Loop: Header=BB1_14 Depth=3
	move	$fp, $zero
	b	.LBB1_31
	.p2align	4, , 16
.LBB1_30:                               # %..loopexit_crit_edge
                                        #   in Loop: Header=BB1_31 Depth=4
	ld.d	$s6, $s6, 0
	beqz	$s6, .LBB1_38
.LBB1_31:                               # %.lr.ph
                                        #   Parent Loop BB1_4 Depth=1
                                        #     Parent Loop BB1_8 Depth=2
                                        #       Parent Loop BB1_14 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB1_33 Depth 5
	ld.w	$a3, $s6, 56
	ld.w	$a5, $s6, 60
	ld.w	$t0, $s6, 64
	ld.w	$t5, $s6, 68
	add.w	$a6, $a3, $a1
	add.w	$s7, $a5, $a1
	add.w	$t1, $t0, $a2
	add.w	$s1, $t5, $a2
	move	$t5, $s4
	b	.LBB1_33
	.p2align	4, , 16
.LBB1_32:                               #   in Loop: Header=BB1_33 Depth=5
	ld.d	$t5, $t5, 0
	beqz	$t5, .LBB1_30
.LBB1_33:                               #   Parent Loop BB1_4 Depth=1
                                        #     Parent Loop BB1_8 Depth=2
                                        #       Parent Loop BB1_14 Depth=3
                                        #         Parent Loop BB1_31 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	ld.w	$a3, $t5, 56
	add.w	$a3, $a3, $t4
	bge	$a3, $s7, .LBB1_32
# %bb.34:                               #   in Loop: Header=BB1_33 Depth=5
	ld.w	$a5, $t5, 60
	add.w	$t8, $a5, $t4
	bge	$a6, $t8, .LBB1_32
# %bb.35:                               #   in Loop: Header=BB1_33 Depth=5
	ld.w	$a5, $t5, 64
	add.w	$t0, $a5, $s0
	bge	$t0, $s1, .LBB1_32
# %bb.36:                               #   in Loop: Header=BB1_33 Depth=5
	ld.w	$a5, $t5, 68
	add.w	$a5, $a5, $s0
	bge	$t1, $a5, .LBB1_32
# %bb.37:                               #   in Loop: Header=BB1_33 Depth=5
	slt	$t3, $a3, $a6
	masknez	$a3, $a3, $t3
	maskeqz	$t3, $a6, $t3
	or	$a3, $t3, $a3
	slt	$t3, $s7, $t8
	masknez	$t8, $t8, $t3
	maskeqz	$t3, $s7, $t3
	or	$t3, $t3, $t8
	slt	$t8, $t0, $t1
	masknez	$t0, $t0, $t8
	maskeqz	$t8, $t1, $t8
	or	$t0, $t8, $t0
	slt	$t8, $s1, $a5
	masknez	$a5, $a5, $t8
	maskeqz	$t8, $s1, $t8
	or	$a5, $t8, $a5
	sub.d	$a5, $a5, $t0
	sub.d	$a3, $t3, $a3
	mul.d	$a3, $a5, $a3
	add.w	$fp, $a3, $fp
	b	.LBB1_32
.LBB1_38:                               # %._crit_edge
                                        #   in Loop: Header=BB1_14 Depth=3
	ori	$t8, $zero, 1
	beqz	$fp, .LBB1_40
# %bb.39:                               #   in Loop: Header=BB1_14 Depth=3
	ld.d	$a3, $sp, 64                    # 8-byte Folded Reload
	add.d	$a3, $a3, $fp
	movgr2fr.w	$fa1, $a3
	ffint.d.w	$fa1, $fa1
	fmul.d	$fa1, $fa0, $fa1
	ftintrz.w.d	$fa1, $fa1
	movfr2gr.s	$a3, $fa1
	ld.d	$a5, $sp, 128                   # 8-byte Folded Reload
	add.w	$a5, $a5, $a3
	st.d	$a5, $sp, 128                   # 8-byte Folded Spill
.LBB1_40:                               # %._crit_edge.thread
                                        #   in Loop: Header=BB1_14 Depth=3
	ld.d	$t3, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 40                    # 8-byte Folded Reload
	ld.d	$t0, $sp, 120                   # 8-byte Folded Reload
	b	.LBB1_13
.LBB1_41:
	st.d	$zero, $sp, 128                 # 8-byte Folded Spill
.LBB1_42:                               # %._crit_edge268
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
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
.Lfunc_end1:
	.size	checkover, .Lfunc_end1-checkover
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
