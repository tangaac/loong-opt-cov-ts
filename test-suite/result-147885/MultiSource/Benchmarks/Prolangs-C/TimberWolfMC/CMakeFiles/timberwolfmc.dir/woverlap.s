	.file	"woverlap.c"
	.text
	.globl	woverlap                        # -- Begin function woverlap
	.p2align	5
	.type	woverlap,@function
woverlap:                               # @woverlap
# %bb.0:
	addi.d	$sp, $sp, -336
	st.d	$ra, $sp, 328                   # 8-byte Folded Spill
	st.d	$fp, $sp, 320                   # 8-byte Folded Spill
	st.d	$s0, $sp, 312                   # 8-byte Folded Spill
	st.d	$s1, $sp, 304                   # 8-byte Folded Spill
	st.d	$s2, $sp, 296                   # 8-byte Folded Spill
	st.d	$s3, $sp, 288                   # 8-byte Folded Spill
	st.d	$s4, $sp, 280                   # 8-byte Folded Spill
	st.d	$s5, $sp, 272                   # 8-byte Folded Spill
	st.d	$s6, $sp, 264                   # 8-byte Folded Spill
	st.d	$s7, $sp, 256                   # 8-byte Folded Spill
	st.d	$s8, $sp, 248                   # 8-byte Folded Spill
	pcalau12i	$a7, %got_pc_hi20(cellarray)
	ld.d	$s5, $a7, %got_pc_lo12(cellarray)
	ld.d	$a7, $s5, 0
	slli.d	$t0, $a0, 3
	ldx.d	$s6, $a7, $t0
	alsl.d	$a3, $a3, $s6, 3
	ld.d	$s3, $a3, 152
	st.d	$a6, $sp, 72                    # 8-byte Folded Spill
	move	$s8, $a5
	st.d	$a4, $sp, 160                   # 8-byte Folded Spill
	ld.w	$a5, $s3, 56
	pcalau12i	$a3, %got_pc_hi20(numcells)
	ld.d	$a4, $a3, %got_pc_lo12(numcells)
	ld.w	$a7, $s3, 60
	ld.w	$a6, $s3, 64
	ld.w	$a3, $s3, 68
	st.d	$a4, $sp, 224                   # 8-byte Folded Spill
	ld.w	$a4, $a4, 0
	add.w	$fp, $a5, $a1
	st.d	$a1, $sp, 176                   # 8-byte Folded Spill
	add.w	$s0, $a7, $a1
	add.w	$s1, $a6, $a2
	st.d	$a2, $sp, 184                   # 8-byte Folded Spill
	add.w	$s2, $a3, $a2
	st.d	$a0, $sp, 200                   # 8-byte Folded Spill
	st.d	$s3, $sp, 96                    # 8-byte Folded Spill
	blt	$a4, $a0, .LBB0_2
# %bb.1:
	fld.d	$fa0, $s3, 8
	move	$a0, $fp
	move	$a1, $s1
	move	$a2, $s2
	pcaddu18i	$ra, %call36(wireestx)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $s3, 16
	sub.w	$fp, $fp, $a0
	move	$a0, $s0
	move	$a1, $s1
	move	$a2, $s2
	pcaddu18i	$ra, %call36(wireestx)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $s3, 24
	add.w	$s0, $a0, $s0
	move	$a0, $s1
	move	$a1, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(wireesty)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $s3, 32
	sub.w	$s1, $s1, $a0
	move	$a0, $s2
	move	$a1, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(wireesty)
	jirl	$ra, $ra, 0
	add.w	$s2, $a0, $s2
.LBB0_2:
	pcalau12i	$a0, %got_pc_hi20(binOffsetX)
	ld.d	$a0, $a0, %got_pc_lo12(binOffsetX)
	pcalau12i	$a1, %got_pc_hi20(binWidthX)
	ld.d	$a1, $a1, %got_pc_lo12(binWidthX)
	pcalau12i	$a2, %got_pc_hi20(numBinsX)
	ld.d	$a2, $a2, %got_pc_lo12(numBinsX)
	ld.w	$a0, $a0, 0
	ld.w	$a1, $a1, 0
	ld.w	$a2, $a2, 0
	st.d	$fp, $sp, 144                   # 8-byte Folded Spill
	sub.w	$a3, $fp, $a0
	div.w	$a3, $a3, $a1
	slti	$a4, $a3, 1
	slt	$a5, $a3, $a2
	maskeqz	$a3, $a3, $a5
	masknez	$a5, $a2, $a5
	or	$a3, $a3, $a5
	masknez	$a3, $a3, $a4
	ori	$a5, $zero, 1
	maskeqz	$a4, $a5, $a4
	or	$t0, $a4, $a3
	st.d	$s0, $sp, 120                   # 8-byte Folded Spill
	sub.w	$a0, $s0, $a0
	div.w	$a0, $a0, $a1
	slt	$a1, $a2, $a0
	slt	$a3, $a5, $a0
	maskeqz	$a0, $a0, $a3
	masknez	$a3, $a5, $a3
	or	$a0, $a0, $a3
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a2, $a1
	pcalau12i	$a2, %got_pc_hi20(binOffsetY)
	ld.d	$a2, $a2, %got_pc_lo12(binOffsetY)
	pcalau12i	$a3, %got_pc_hi20(binWidthY)
	ld.d	$a3, $a3, %got_pc_lo12(binWidthY)
	pcalau12i	$a4, %got_pc_hi20(numBinsY)
	ld.d	$a4, $a4, %got_pc_lo12(numBinsY)
	ld.w	$a2, $a2, 0
	ld.w	$a3, $a3, 0
	or	$a0, $a1, $a0
	ld.w	$a1, $a4, 0
	st.d	$s1, $sp, 128                   # 8-byte Folded Spill
	sub.w	$a4, $s1, $a2
	div.w	$a4, $a4, $a3
	slti	$a6, $a4, 1
	slt	$a7, $a4, $a1
	maskeqz	$a4, $a4, $a7
	masknez	$a7, $a1, $a7
	or	$a4, $a4, $a7
	masknez	$a4, $a4, $a6
	maskeqz	$a6, $a5, $a6
	or	$a6, $a6, $a4
	st.d	$s2, $sp, 136                   # 8-byte Folded Spill
	sub.w	$a2, $s2, $a2
	div.w	$a2, $a2, $a3
	slt	$a3, $a1, $a2
	slt	$a4, $a5, $a2
	maskeqz	$a2, $a2, $a4
	masknez	$a4, $a5, $a4
	or	$a2, $a2, $a4
	masknez	$a2, $a2, $a3
	maskeqz	$a1, $a1, $a3
	or	$a1, $a1, $a2
	xor	$a2, $t0, $a0
	sltui	$a2, $a2, 1
	xor	$a3, $a6, $a1
	sltui	$a3, $a3, 1
	and	$a2, $a2, $a3
	pcalau12i	$a3, %got_pc_hi20(binX)
	ld.d	$a3, $a3, %got_pc_lo12(binX)
	pcalau12i	$a4, %got_pc_hi20(binY)
	ld.d	$a4, $a4, %got_pc_lo12(binY)
	st.d	$t0, $sp, 0                     # 8-byte Folded Spill
	maskeqz	$a5, $t0, $a2
	st.d	$a6, $sp, 32                    # 8-byte Folded Spill
	maskeqz	$a2, $a6, $a2
	st.w	$a5, $a3, 0
	st.w	$a2, $a4, 0
	bltz	$a0, .LBB0_55
# %bb.3:                                # %.lr.ph353
	bltz	$a1, .LBB0_55
# %bb.4:                                # %.lr.ph353.split.preheader
	st.d	$zero, $sp, 104                 # 8-byte Folded Spill
	addi.d	$a1, $a1, 1
	addi.d	$a0, $a0, 1
	pcalau12i	$a2, %got_pc_hi20(blockarray)
	ld.d	$a2, $a2, %got_pc_lo12(blockarray)
	st.d	$a2, $sp, 16                    # 8-byte Folded Spill
	bstrpick.d	$a0, $a0, 31, 0
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	bstrpick.d	$a0, $a1, 31, 0
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	move	$a1, $zero
	ld.d	$a5, $sp, 120                   # 8-byte Folded Reload
	st.d	$s5, $sp, 64                    # 8-byte Folded Spill
	st.d	$s6, $sp, 56                    # 8-byte Folded Spill
	st.d	$s8, $sp, 48                    # 8-byte Folded Spill
	b	.LBB0_6
	.p2align	4, , 16
.LBB0_5:                                # %..loopexit326_crit_edge
                                        #   in Loop: Header=BB0_6 Depth=1
	addi.d	$a1, $a1, 1
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	beq	$a1, $a0, .LBB0_56
.LBB0_6:                                # %.lr.ph353.split
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_10 Depth 2
                                        #       Child Loop BB0_17 Depth 3
                                        #         Child Loop BB0_33 Depth 4
                                        #           Child Loop BB0_45 Depth 5
                                        #           Child Loop BB0_39 Depth 5
	beqz	$a1, .LBB0_8
# %bb.7:                                # %.lr.ph353.split
                                        #   in Loop: Header=BB0_6 Depth=1
	ld.d	$a0, $sp, 0                     # 8-byte Folded Reload
	blt	$a1, $a0, .LBB0_5
.LBB0_8:                                # %.preheader
                                        #   in Loop: Header=BB0_6 Depth=1
	move	$a2, $zero
	sltui	$a0, $a1, 1
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	slli.d	$a0, $a1, 3
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	st.d	$a1, $sp, 88                    # 8-byte Folded Spill
	b	.LBB0_10
	.p2align	4, , 16
.LBB0_9:                                # %.loopexit325
                                        #   in Loop: Header=BB0_10 Depth=2
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	addi.d	$a2, $a2, 1
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	beq	$a2, $a0, .LBB0_5
.LBB0_10:                               #   Parent Loop BB0_6 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_17 Depth 3
                                        #         Child Loop BB0_33 Depth 4
                                        #           Child Loop BB0_45 Depth 5
                                        #           Child Loop BB0_39 Depth 5
	or	$a0, $a2, $a1
	slli.d	$a0, $a0, 32
	st.d	$a2, $sp, 112                   # 8-byte Folded Spill
	beqz	$a0, .LBB0_12
# %bb.11:                               #   in Loop: Header=BB0_10 Depth=2
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	slt	$a0, $a2, $a0
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	or	$a0, $a1, $a0
	bnez	$a0, .LBB0_9
.LBB0_12:                               #   in Loop: Header=BB0_10 Depth=2
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	ldx.d	$a0, $a0, $a1
	slli.d	$a1, $a2, 3
	ldx.d	$a2, $a0, $a1
	ld.w	$a0, $a2, 0
	blez	$a0, .LBB0_9
# %bb.13:                               # %.lr.ph341.preheader
                                        #   in Loop: Header=BB0_10 Depth=2
	ori	$a0, $zero, 1
	st.d	$a2, $sp, 152                   # 8-byte Folded Spill
	b	.LBB0_17
.LBB0_14:                               #   in Loop: Header=BB0_17 Depth=3
	slt	$a0, $fp, $a1
	move	$a2, $a1
	masknez	$a1, $fp, $a0
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
	slt	$a1, $a5, $s2
	masknez	$a2, $s2, $a1
	maskeqz	$a1, $a5, $a1
	or	$a1, $a1, $a2
	ld.d	$a4, $sp, 128                   # 8-byte Folded Reload
	slt	$a2, $s1, $a4
	masknez	$a3, $s1, $a2
	maskeqz	$a2, $a4, $a2
	or	$a2, $a2, $a3
	ld.d	$a7, $sp, 136                   # 8-byte Folded Reload
	slt	$a3, $a7, $s0
	masknez	$a4, $s0, $a3
	pcalau12i	$a5, %got_pc_hi20(lapFactor)
	ld.d	$a5, $a5, %got_pc_lo12(lapFactor)
	pcalau12i	$a6, %got_pc_hi20(offset)
	ld.d	$a6, $a6, %got_pc_lo12(offset)
	maskeqz	$a3, $a7, $a3
	or	$a3, $a3, $a4
	fld.d	$fa0, $a5, 0
	ld.d	$a5, $sp, 120                   # 8-byte Folded Reload
	ld.w	$a4, $a6, 0
	sub.d	$a2, $a3, $a2
	sub.d	$a0, $a1, $a0
	mul.d	$a0, $a2, $a0
	add.d	$a0, $a4, $a0
	movgr2fr.w	$fa1, $a0
	ffint.d.w	$fa1, $fa1
	fmul.d	$fa0, $fa0, $fa1
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a0, $fa0
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	add.w	$a1, $a1, $a0
	st.d	$a1, $sp, 104                   # 8-byte Folded Spill
	.p2align	4, , 16
.LBB0_15:                               # %._crit_edge.thread
                                        #   in Loop: Header=BB0_17 Depth=3
	ld.d	$a2, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 168                   # 8-byte Folded Reload
.LBB0_16:                               # %._crit_edge.thread
                                        #   in Loop: Header=BB0_17 Depth=3
	ld.w	$a1, $a2, 0
	addi.d	$a0, $a3, 1
	bge	$a3, $a1, .LBB0_9
.LBB0_17:                               # %.lr.ph341
                                        #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_10 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_33 Depth 4
                                        #           Child Loop BB0_45 Depth 5
                                        #           Child Loop BB0_39 Depth 5
	move	$a3, $a0
	slli.d	$a0, $a0, 2
	ldx.w	$a6, $a2, $a0
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	beq	$a6, $a0, .LBB0_16
# %bb.18:                               #   in Loop: Header=BB0_17 Depth=3
	ld.d	$a0, $s5, 0
	slli.d	$a1, $a6, 3
	ldx.d	$s3, $a0, $a1
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	bne	$a6, $a0, .LBB0_21
# %bb.19:                               #   in Loop: Header=BB0_17 Depth=3
	bnez	$s8, .LBB0_16
# %bb.20:                               #   in Loop: Header=BB0_17 Depth=3
	st.d	$a3, $sp, 168                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	alsl.d	$a0, $a0, $s3, 3
	addi.d	$a0, $a0, 152
	move	$a1, $s6
	b	.LBB0_22
	.p2align	4, , 16
.LBB0_21:                               #   in Loop: Header=BB0_17 Depth=3
	st.d	$a3, $sp, 168                   # 8-byte Folded Spill
	ld.w	$a0, $s3, 56
	alsl.d	$a0, $a0, $s3, 3
	addi.d	$a0, $a0, 152
	move	$a1, $s3
.LBB0_22:                               #   in Loop: Header=BB0_17 Depth=3
	ld.d	$s7, $a0, 0
	ld.w	$a7, $a1, 16
	ld.w	$s4, $a1, 12
	ld.w	$a0, $s7, 56
	ld.w	$a1, $s7, 60
	ld.w	$a2, $s7, 64
	ld.w	$a3, $s7, 68
	ld.d	$a4, $sp, 224                   # 8-byte Folded Reload
	ld.w	$a4, $a4, 0
	add.w	$fp, $a0, $s4
	add.w	$s2, $a1, $s4
	add.w	$s1, $a2, $a7
	add.w	$s0, $a3, $a7
	st.d	$a6, $sp, 240                   # 8-byte Folded Spill
	st.d	$s7, $sp, 192                   # 8-byte Folded Spill
	st.d	$a7, $sp, 232                   # 8-byte Folded Spill
	blt	$a4, $a6, .LBB0_24
# %bb.23:                               #   in Loop: Header=BB0_17 Depth=3
	fld.d	$fa0, $s7, 8
	move	$a0, $fp
	move	$a1, $s1
	move	$a2, $s0
	pcaddu18i	$ra, %call36(wireestx)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $s7, 16
	sub.w	$fp, $fp, $a0
	move	$a0, $s2
	move	$a1, $s1
	move	$a2, $s0
	pcaddu18i	$ra, %call36(wireestx)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $s7, 24
	add.w	$s2, $a0, $s2
	move	$a0, $s1
	move	$a1, $fp
	move	$a2, $s2
	pcaddu18i	$ra, %call36(wireesty)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $s7, 32
	sub.w	$s1, $s1, $a0
	move	$a0, $s0
	move	$a1, $fp
	move	$a2, $s2
	pcaddu18i	$ra, %call36(wireesty)
	jirl	$ra, $ra, 0
	ld.d	$a7, $sp, 232                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 240                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 120                   # 8-byte Folded Reload
	add.w	$s0, $a0, $s0
.LBB0_24:                               #   in Loop: Header=BB0_17 Depth=3
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	bge	$fp, $a5, .LBB0_15
# %bb.25:                               #   in Loop: Header=BB0_17 Depth=3
	bge	$a1, $s2, .LBB0_15
# %bb.26:                               #   in Loop: Header=BB0_17 Depth=3
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	bge	$s1, $a0, .LBB0_15
# %bb.27:                               #   in Loop: Header=BB0_17 Depth=3
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	bge	$a0, $s0, .LBB0_15
# %bb.28:                               #   in Loop: Header=BB0_17 Depth=3
	ld.w	$a0, $s6, 60
	ori	$a2, $zero, 1
	bne	$a0, $a2, .LBB0_30
# %bb.29:                               #   in Loop: Header=BB0_17 Depth=3
	ld.w	$a0, $s3, 60
	ori	$a2, $zero, 1
	beq	$a0, $a2, .LBB0_14
.LBB0_30:                               #   in Loop: Header=BB0_17 Depth=3
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s2, $a0, 0
	beqz	$s2, .LBB0_15
# %bb.31:                               # %.lr.ph335.preheader
                                        #   in Loop: Header=BB0_17 Depth=3
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	ld.w	$a1, $a0, 0
	move	$t0, $zero
	b	.LBB0_33
	.p2align	4, , 16
.LBB0_32:                               # %.loopexit
                                        #   in Loop: Header=BB0_33 Depth=4
	ld.d	$s2, $sp, 208                   # 8-byte Folded Reload
	ld.d	$s2, $s2, 0
	beqz	$s2, .LBB0_52
.LBB0_33:                               # %.lr.ph335
                                        #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_10 Depth=2
                                        #       Parent Loop BB0_17 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB0_45 Depth 5
                                        #           Child Loop BB0_39 Depth 5
	ld.w	$a0, $s2, 56
	ld.w	$a2, $s2, 60
	ld.w	$a3, $s2, 64
	ld.w	$a4, $s2, 68
	ld.d	$a5, $sp, 176                   # 8-byte Folded Reload
	add.w	$s0, $a0, $a5
	add.w	$s1, $a2, $a5
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	add.w	$s7, $a3, $a0
	add.w	$s8, $a4, $a0
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	blt	$a1, $a0, .LBB0_35
# %bb.34:                               #   in Loop: Header=BB0_33 Depth=4
	fld.d	$fa0, $s2, 8
	move	$a0, $s0
	move	$a1, $s7
	move	$a2, $s8
	move	$fp, $t0
	pcaddu18i	$ra, %call36(wireestx)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $s2, 16
	sub.w	$s0, $s0, $a0
	move	$a0, $s1
	move	$a1, $s7
	move	$a2, $s8
	pcaddu18i	$ra, %call36(wireestx)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $s2, 24
	add.w	$s1, $a0, $s1
	move	$a0, $s7
	move	$a1, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(wireesty)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $s2, 32
	sub.w	$s7, $s7, $a0
	move	$a0, $s8
	move	$a1, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(wireesty)
	jirl	$ra, $ra, 0
	move	$t0, $fp
	ld.d	$a7, $sp, 232                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 240                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	ld.w	$a1, $a1, 0
	add.w	$s8, $a0, $s8
.LBB0_35:                               #   in Loop: Header=BB0_33 Depth=4
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	ld.d	$s3, $a0, 0
	st.d	$s2, $sp, 208                   # 8-byte Folded Spill
	beqz	$s3, .LBB0_32
# %bb.36:                               # %.lr.ph
                                        #   in Loop: Header=BB0_33 Depth=4
	blt	$a1, $a6, .LBB0_39
# %bb.37:                               #   in Loop: Header=BB0_33 Depth=4
	st.d	$s1, $sp, 216                   # 8-byte Folded Spill
	b	.LBB0_45
	.p2align	4, , 16
.LBB0_38:                               #   in Loop: Header=BB0_39 Depth=5
	ld.d	$s3, $s3, 0
	beqz	$s3, .LBB0_32
.LBB0_39:                               # %.lr.ph.split.us
                                        #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_10 Depth=2
                                        #       Parent Loop BB0_17 Depth=3
                                        #         Parent Loop BB0_33 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	ld.w	$a0, $s3, 56
	add.w	$a0, $a0, $s4
	bge	$a0, $s1, .LBB0_38
# %bb.40:                               # %.lr.ph.split.us
                                        #   in Loop: Header=BB0_39 Depth=5
	ld.w	$a2, $s3, 60
	add.w	$a2, $a2, $s4
	bge	$s0, $a2, .LBB0_38
# %bb.41:                               # %.lr.ph.split.us
                                        #   in Loop: Header=BB0_39 Depth=5
	ld.w	$a3, $s3, 64
	add.w	$a3, $a3, $a7
	bge	$a3, $s8, .LBB0_38
# %bb.42:                               # %.lr.ph.split.us
                                        #   in Loop: Header=BB0_39 Depth=5
	ld.w	$a4, $s3, 68
	add.w	$a4, $a4, $a7
	bge	$s7, $a4, .LBB0_38
# %bb.43:                               #   in Loop: Header=BB0_39 Depth=5
	slt	$a5, $a0, $s0
	masknez	$a0, $a0, $a5
	maskeqz	$a5, $s0, $a5
	or	$a0, $a5, $a0
	slt	$a5, $s1, $a2
	masknez	$a2, $a2, $a5
	maskeqz	$a5, $s1, $a5
	or	$a2, $a5, $a2
	slt	$a5, $a3, $s7
	masknez	$a3, $a3, $a5
	maskeqz	$a5, $s7, $a5
	or	$a3, $a5, $a3
	slt	$a5, $s8, $a4
	masknez	$a4, $a4, $a5
	maskeqz	$a5, $s8, $a5
	or	$a4, $a5, $a4
	sub.d	$a3, $a4, $a3
	sub.d	$a0, $a2, $a0
	mul.d	$a0, $a3, $a0
	add.w	$t0, $a0, $t0
	b	.LBB0_38
	.p2align	4, , 16
.LBB0_44:                               #   in Loop: Header=BB0_45 Depth=5
	ld.d	$s3, $s3, 0
	beqz	$s3, .LBB0_32
.LBB0_45:                               # %.lr.ph.split
                                        #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_10 Depth=2
                                        #       Parent Loop BB0_17 Depth=3
                                        #         Parent Loop BB0_33 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	ld.w	$a0, $s3, 56
	ld.w	$a2, $s3, 60
	ld.w	$a3, $s3, 64
	ld.w	$a4, $s3, 68
	add.w	$fp, $a0, $s4
	add.w	$s2, $a2, $s4
	add.w	$s6, $a3, $a7
	add.w	$s5, $a4, $a7
	blt	$a1, $a6, .LBB0_47
# %bb.46:                               #   in Loop: Header=BB0_45 Depth=5
	fld.d	$fa0, $s3, 8
	move	$a0, $fp
	move	$a1, $s6
	move	$a2, $s5
	move	$s1, $s0
	move	$s0, $s8
	move	$s8, $s7
	move	$s7, $s4
	move	$s4, $t0
	pcaddu18i	$ra, %call36(wireestx)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $s3, 16
	sub.w	$fp, $fp, $a0
	move	$a0, $s2
	move	$a1, $s6
	move	$a2, $s5
	pcaddu18i	$ra, %call36(wireestx)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $s3, 24
	add.w	$s2, $a0, $s2
	move	$a0, $s6
	move	$a1, $fp
	move	$a2, $s2
	pcaddu18i	$ra, %call36(wireesty)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $s3, 32
	sub.w	$s6, $s6, $a0
	move	$a0, $s5
	move	$a1, $fp
	move	$a2, $s2
	pcaddu18i	$ra, %call36(wireesty)
	jirl	$ra, $ra, 0
	move	$t0, $s4
	move	$s4, $s7
	move	$s7, $s8
	move	$s8, $s0
	move	$s0, $s1
	ld.d	$s1, $sp, 216                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 232                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 240                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	ld.w	$a1, $a1, 0
	add.w	$s5, $a0, $s5
.LBB0_47:                               #   in Loop: Header=BB0_45 Depth=5
	bge	$fp, $s1, .LBB0_44
# %bb.48:                               #   in Loop: Header=BB0_45 Depth=5
	bge	$s0, $s2, .LBB0_44
# %bb.49:                               #   in Loop: Header=BB0_45 Depth=5
	bge	$s6, $s8, .LBB0_44
# %bb.50:                               #   in Loop: Header=BB0_45 Depth=5
	bge	$s7, $s5, .LBB0_44
# %bb.51:                               #   in Loop: Header=BB0_45 Depth=5
	slt	$a0, $fp, $s0
	masknez	$a2, $fp, $a0
	maskeqz	$a0, $s0, $a0
	or	$a0, $a0, $a2
	slt	$a2, $s1, $s2
	masknez	$a3, $s2, $a2
	maskeqz	$a2, $s1, $a2
	or	$a2, $a2, $a3
	slt	$a3, $s6, $s7
	masknez	$a4, $s6, $a3
	maskeqz	$a3, $s7, $a3
	or	$a3, $a3, $a4
	slt	$a4, $s8, $s5
	masknez	$a5, $s5, $a4
	maskeqz	$a4, $s8, $a4
	or	$a4, $a4, $a5
	sub.d	$a3, $a4, $a3
	sub.d	$a0, $a2, $a0
	mul.d	$a0, $a3, $a0
	add.w	$t0, $a0, $t0
	b	.LBB0_44
.LBB0_52:                               # %._crit_edge
                                        #   in Loop: Header=BB0_17 Depth=3
	beqz	$t0, .LBB0_54
# %bb.53:                               #   in Loop: Header=BB0_17 Depth=3
	pcalau12i	$a0, %got_pc_hi20(offset)
	ld.d	$a0, $a0, %got_pc_lo12(offset)
	pcalau12i	$a1, %got_pc_hi20(lapFactor)
	ld.d	$a1, $a1, %got_pc_lo12(lapFactor)
	ld.w	$a0, $a0, 0
	fld.d	$fa0, $a1, 0
	add.d	$a0, $a0, $t0
	movgr2fr.w	$fa1, $a0
	ffint.d.w	$fa1, $fa1
	fmul.d	$fa0, $fa0, $fa1
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a0, $fa0
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	add.w	$a1, $a1, $a0
	st.d	$a1, $sp, 104                   # 8-byte Folded Spill
.LBB0_54:                               # %._crit_edge.thread
                                        #   in Loop: Header=BB0_17 Depth=3
	ld.d	$s5, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s8, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a5, $sp, 120                   # 8-byte Folded Reload
	b	.LBB0_15
.LBB0_55:
	st.d	$zero, $sp, 104                 # 8-byte Folded Spill
.LBB0_56:                               # %._crit_edge354
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 248                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 256                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 264                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 272                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 280                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 288                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 296                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 304                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 312                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 320                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 328                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 336
	ret
.Lfunc_end0:
	.size	woverlap, .Lfunc_end0-woverlap
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
