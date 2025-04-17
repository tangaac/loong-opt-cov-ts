	.file	"linkCells.c"
	.text
	.globl	initLinkCells                   # -- Begin function initLinkCells
	.p2align	5
	.type	initLinkCells,@function
initLinkCells:                          # @initLinkCells
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 8                    # 8-byte Folded Spill
	fmov.d	$fs0, $fa0
	move	$s0, $a0
	ori	$a0, $zero, 128
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $s0, 144
	move	$fp, $a0
	fdiv.d	$fa1, $fa0, $fs0
	ftintrz.w.d	$fa1, $fa1
	movfr2gr.s	$a0, $fa1
	movgr2fr.w	$fa1, $a0
	ffint.d.w	$fa1, $fa1
	fdiv.d	$fa0, $fa0, $fa1
	fld.d	$fa1, $s0, 152
	fst.d	$fa0, $fp, 72
	frecip.d	$fa0, $fa0
	fst.d	$fa0, $fp, 96
	fdiv.d	$fa0, $fa1, $fs0
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a1, $fa0
	movgr2fr.w	$fa0, $a1
	ffint.d.w	$fa0, $fa0
	fdiv.d	$fa0, $fa1, $fa0
	xvld	$xr1, $s0, 96
	fst.d	$fa0, $fp, 80
	frecip.d	$fa0, $fa0
	fst.d	$fa0, $fp, 104
	xvst	$xr1, $fp, 24
	vld	$vr0, $s0, 128
	fld.d	$fa1, $s0, 160
	st.w	$a0, $fp, 0
	st.w	$a1, $fp, 4
	vst	$vr0, $fp, 56
	fdiv.d	$fa0, $fa1, $fs0
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a2, $fa0
	st.w	$a2, $fp, 8
	movgr2fr.w	$fa0, $a2
	ffint.d.w	$fa0, $fa0
	fdiv.d	$fa0, $fa1, $fa0
	fst.d	$fa0, $fp, 88
	frecip.d	$fa0, $fa0
	fst.d	$fa0, $fp, 112
	mul.d	$a3, $a2, $a1
	mul.d	$a4, $a3, $a0
	st.w	$a4, $fp, 12
	addi.d	$a0, $a0, 2
	add.d	$a1, $a1, $a2
	addi.d	$a1, $a1, 2
	mul.d	$a0, $a1, $a0
	add.w	$a0, $a0, $a3
	slli.d	$a1, $a0, 1
	st.w	$a1, $fp, 16
	alsl.w	$s1, $a0, $a4, 1
	alsl.d	$a0, $a0, $a4, 1
	st.w	$a0, $fp, 20
	slli.d	$s0, $s1, 2
	move	$a0, $s0
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	st.d	$a0, $fp, 120
	blt	$s1, $a1, .LBB0_2
# %bb.1:                                # %.lr.ph.preheader
	move	$a1, $zero
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB0_2:                                # %._crit_edge
	move	$a0, $fp
	fld.d	$fs0, $sp, 8                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end0:
	.size	initLinkCells, .Lfunc_end0-initLinkCells
                                        # -- End function
	.globl	destroyLinkCells                # -- Begin function destroyLinkCells
	.p2align	5
	.type	destroyLinkCells,@function
destroyLinkCells:                       # @destroyLinkCells
# %bb.0:
	beqz	$a0, .LBB1_4
# %bb.1:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.d	$a0, $a0, 0
	beqz	$a0, .LBB1_3
# %bb.2:
	ld.d	$a0, $a0, 120
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	st.d	$zero, $fp, 0
.LBB1_3:
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
.LBB1_4:
	ret
.Lfunc_end1:
	.size	destroyLinkCells, .Lfunc_end1-destroyLinkCells
                                        # -- End function
	.globl	getNeighborBoxes                # -- Begin function getNeighborBoxes
	.p2align	5
	.type	getNeighborBoxes,@function
getNeighborBoxes:                       # @getNeighborBoxes
# %bb.0:
	ld.w	$a4, $a0, 12
	bge	$a1, $a4, .LBB2_2
# %bb.1:
	ld.w	$a3, $a0, 0
	ld.w	$a4, $a0, 4
	div.w	$a5, $a1, $a3
	mul.d	$a3, $a5, $a3
	sub.w	$a3, $a1, $a3
	div.w	$a1, $a5, $a4
	mul.d	$a4, $a1, $a4
	sub.w	$a4, $a5, $a4
	b	.LBB2_12
.LBB2_2:
	ld.w	$a3, $a0, 4
	ld.w	$a5, $a0, 8
	sub.w	$a4, $a1, $a4
	mul.d	$a1, $a3, $a5
	slli.w	$a1, $a1, 1
	bge	$a4, $a1, .LBB2_5
# %bb.3:
	mul.w	$a1, $a5, $a3
	bge	$a4, $a1, .LBB2_7
# %bb.4:
	move	$a5, $zero
	b	.LBB2_8
.LBB2_5:
	ld.w	$a1, $a0, 0
	slli.d	$a7, $a5, 1
	addi.d	$a6, $a3, 2
	add.d	$t0, $a1, $a6
	mul.w	$t0, $t0, $a7
	bge	$a4, $t0, .LBB2_9
# %bb.6:
	mul.d	$a6, $a7, $a3
	sub.w	$a6, $a4, $a6
	addi.w	$a7, $a1, 2
	mul.w	$a1, $a7, $a5
	slt	$a5, $a6, $a1
	addi.d	$a3, $a3, 1
	masknez	$a4, $a3, $a5
	masknez	$a1, $a1, $a5
	sub.w	$a3, $a6, $a1
	div.w	$a1, $a3, $a7
	mul.d	$a5, $a1, $a7
	b	.LBB2_10
.LBB2_7:
	ld.w	$a5, $a0, 0
	sub.w	$a4, $a4, $a1
	addi.d	$a5, $a5, 1
.LBB2_8:
	div.w	$a1, $a4, $a3
	mul.d	$a3, $a1, $a3
	sub.d	$a3, $a4, $a3
	addi.d	$a4, $a3, 1
	b	.LBB2_11
.LBB2_9:
	sub.w	$a3, $a4, $t0
	addi.w	$a7, $a1, 2
	mul.w	$a4, $a7, $a6
	slt	$a6, $a3, $a4
	masknez	$a1, $a5, $a6
	addi.w	$a5, $zero, -1
	maskeqz	$a5, $a5, $a6
	or	$a1, $a5, $a1
	masknez	$a4, $a4, $a6
	sub.w	$a3, $a3, $a4
	div.w	$a4, $a3, $a7
	mul.d	$a5, $a4, $a7
.LBB2_10:
	sub.d	$a5, $a3, $a5
.LBB2_11:
	addi.w	$a3, $a5, -1
	addi.w	$a4, $a4, -1
.LBB2_12:                               # %getTuple.exit
	addi.d	$sp, $sp, -80
	st.d	$fp, $sp, 72                    # 8-byte Folded Spill
	st.d	$s0, $sp, 64                    # 8-byte Folded Spill
	st.d	$s1, $sp, 56                    # 8-byte Folded Spill
	st.d	$s2, $sp, 48                    # 8-byte Folded Spill
	st.d	$s3, $sp, 40                    # 8-byte Folded Spill
	st.d	$s4, $sp, 32                    # 8-byte Folded Spill
	st.d	$s5, $sp, 24                    # 8-byte Folded Spill
	st.d	$s6, $sp, 16                    # 8-byte Folded Spill
	st.d	$s7, $sp, 8                     # 8-byte Folded Spill
	move	$a5, $zero
	addi.w	$a7, $a3, -1
	addi.w	$a6, $a4, -1
	addi.d	$t0, $a1, -1
	addi.d	$t1, $a1, -2
	sub.w	$t2, $zero, $a1
	slli.d	$t3, $a1, 1
	b	.LBB2_14
	.p2align	4, , 16
.LBB2_13:                               #   in Loop: Header=BB2_14 Depth=1
	blt	$a3, $t4, .LBB2_33
.LBB2_14:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_16 Depth 2
                                        #       Child Loop BB2_20 Depth 3
	move	$t4, $a7
	addi.w	$a7, $a7, 1
	move	$t5, $a4
	move	$t6, $a6
	b	.LBB2_16
	.p2align	4, , 16
.LBB2_15:                               #   in Loop: Header=BB2_16 Depth=2
	addi.d	$t5, $t5, 1
	blt	$a4, $fp, .LBB2_13
.LBB2_16:                               #   Parent Loop BB2_14 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_20 Depth 3
	move	$t7, $zero
	move	$t8, $a5
	move	$fp, $t6
	slli.d	$s0, $t6, 1
	addi.w	$t6, $t6, 1
	alsl.d	$s1, $a5, $a2, 2
	move	$s2, $t3
	b	.LBB2_20
	.p2align	4, , 16
.LBB2_17:                               #   in Loop: Header=BB2_20 Depth=3
	ld.w	$s4, $a0, 4
	ld.w	$s5, $a0, 0
	ld.w	$s6, $a0, 12
	slli.d	$s7, $s3, 1
	mul.d	$s4, $s4, $s7
	addi.d	$s5, $s5, 2
	alsl.d	$s3, $s3, $t6, 1
	mul.d	$s3, $s5, $s3
	add.d	$s5, $a7, $s6
	add.d	$s4, $s5, $s4
.LBB2_18:                               # %getBoxFromTuple.exit
                                        #   in Loop: Header=BB2_20 Depth=3
	add.d	$s3, $s4, $s3
.LBB2_19:                               # %getBoxFromTuple.exit
                                        #   in Loop: Header=BB2_20 Depth=3
	addi.w	$a5, $a5, 1
	st.w	$s3, $s1, 0
	addi.d	$s1, $s1, 4
	addi.w	$t7, $t7, 1
	add.w	$s3, $t1, $t7
	addi.d	$s2, $s2, 2
	blt	$a1, $s3, .LBB2_15
.LBB2_20:                               #   Parent Loop BB2_14 Depth=1
                                        #     Parent Loop BB2_16 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$s3, $a0, 8
	add.w	$s4, $t0, $t7
	bne	$s4, $s3, .LBB2_23
# %bb.21:                               #   in Loop: Header=BB2_20 Depth=3
	ld.w	$s3, $a0, 4
	ld.w	$s4, $a0, 0
	ld.w	$s5, $a0, 12
	addi.d	$s6, $s2, -2
	mul.d	$s6, $s3, $s6
	addi.d	$s4, $s4, 2
	add.d	$s7, $t5, $s2
	add.d	$s3, $s7, $s3
	mul.d	$s3, $s4, $s3
	add.d	$s4, $a7, $s5
.LBB2_22:                               # %getBoxFromTuple.exit
                                        #   in Loop: Header=BB2_20 Depth=3
	add.d	$s4, $s4, $s6
	b	.LBB2_18
	.p2align	4, , 16
.LBB2_23:                               #   in Loop: Header=BB2_20 Depth=3
	beq	$t2, $t7, .LBB2_17
# %bb.24:                               #   in Loop: Header=BB2_20 Depth=3
	ld.w	$s5, $a0, 4
	bne	$fp, $s5, .LBB2_26
# %bb.25:                               #   in Loop: Header=BB2_20 Depth=3
	ld.w	$s5, $a0, 0
	ld.w	$s6, $a0, 12
	mul.d	$s7, $s0, $s3
	addi.d	$s5, $s5, 2
	add.d	$s3, $s4, $s3
	mul.d	$s3, $s5, $s3
	add.d	$s4, $a7, $s7
	b	.LBB2_22
.LBB2_26:                               #   in Loop: Header=BB2_20 Depth=3
	addi.w	$s7, $zero, -1
	beq	$fp, $s7, .LBB2_29
# %bb.27:                               #   in Loop: Header=BB2_20 Depth=3
	ld.w	$s6, $a0, 0
	bne	$t4, $s6, .LBB2_30
# %bb.28:                               #   in Loop: Header=BB2_20 Depth=3
	ld.w	$s6, $a0, 12
	add.d	$s3, $s4, $s3
	mul.d	$s3, $s5, $s3
	add.d	$s3, $s3, $fp
	add.d	$s3, $s3, $s6
	b	.LBB2_19
.LBB2_29:                               #   in Loop: Header=BB2_20 Depth=3
	ld.w	$s6, $a0, 0
	ld.w	$s7, $a0, 12
	mul.d	$s3, $s3, $s5
	addi.d	$s5, $s6, 2
	mul.d	$s4, $s5, $s4
	alsl.d	$s3, $s3, $a7, 1
	add.d	$s3, $s3, $s7
	add.d	$s3, $s3, $s4
	b	.LBB2_19
.LBB2_30:                               #   in Loop: Header=BB2_20 Depth=3
	mul.d	$s3, $s5, $s4
	beq	$t4, $s7, .LBB2_32
# %bb.31:                               #   in Loop: Header=BB2_20 Depth=3
	add.d	$s3, $s3, $fp
	mul.d	$s3, $s6, $s3
	add.d	$s3, $s3, $t4
	b	.LBB2_19
.LBB2_32:                               #   in Loop: Header=BB2_20 Depth=3
	ld.w	$s4, $a0, 12
	add.d	$s3, $s3, $fp
	add.d	$s3, $s3, $s4
	b	.LBB2_19
.LBB2_33:
	add.w	$a0, $t8, $t7
	ld.d	$s7, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s6, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 64                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.Lfunc_end2:
	.size	getNeighborBoxes, .Lfunc_end2-getNeighborBoxes
                                        # -- End function
	.globl	getBoxFromTuple                 # -- Begin function getBoxFromTuple
	.p2align	5
	.type	getBoxFromTuple,@function
getBoxFromTuple:                        # @getBoxFromTuple
# %bb.0:
	ld.w	$a4, $a0, 8
	bne	$a3, $a4, .LBB3_2
# %bb.1:
	ld.w	$a4, $a0, 4
	ld.w	$a5, $a0, 0
	ld.w	$a0, $a0, 12
	slli.d	$a6, $a3, 1
	mul.d	$a6, $a4, $a6
	addi.d	$a5, $a5, 2
	alsl.w	$a2, $a3, $a2, 1
	add.d	$a2, $a2, $a4
	addi.d	$a2, $a2, 3
	mul.d	$a2, $a2, $a5
	add.d	$a0, $a1, $a0
	add.d	$a0, $a0, $a6
	add.d	$a0, $a0, $a2
	addi.w	$a0, $a0, 1
	ret
.LBB3_2:
	addi.w	$a6, $zero, -1
	beq	$a3, $a6, .LBB3_5
# %bb.3:
	ld.w	$a5, $a0, 4
	bne	$a2, $a5, .LBB3_6
# %bb.4:
	ld.w	$a5, $a0, 0
	ld.w	$a0, $a0, 12
	mul.d	$a2, $a4, $a2
	addi.d	$a5, $a5, 2
	add.d	$a3, $a4, $a3
	mul.d	$a3, $a5, $a3
	alsl.d	$a1, $a2, $a1, 1
	add.d	$a0, $a1, $a0
	add.d	$a0, $a0, $a3
	addi.w	$a0, $a0, 1
	ret
.LBB3_5:
	ld.w	$a3, $a0, 4
	ld.w	$a5, $a0, 0
	ld.w	$a0, $a0, 12
	slli.d	$a6, $a4, 1
	mul.d	$a3, $a3, $a6
	addi.d	$a5, $a5, 2
	alsl.d	$a2, $a4, $a2, 1
	addi.d	$a2, $a2, 1
	mul.d	$a2, $a5, $a2
	add.d	$a0, $a1, $a0
	add.d	$a0, $a0, $a3
	add.d	$a0, $a0, $a2
	addi.w	$a0, $a0, 1
	ret
.LBB3_6:
	beq	$a2, $a6, .LBB3_9
# %bb.7:
	ld.w	$a7, $a0, 0
	bne	$a1, $a7, .LBB3_10
# %bb.8:
	ld.w	$a0, $a0, 12
	add.d	$a1, $a4, $a3
	mul.d	$a1, $a5, $a1
	add.d	$a1, $a1, $a2
	add.w	$a0, $a1, $a0
	ret
.LBB3_9:
	ld.w	$a2, $a0, 0
	ld.w	$a0, $a0, 12
	mul.d	$a4, $a4, $a5
	addi.d	$a2, $a2, 2
	mul.d	$a2, $a2, $a3
	alsl.d	$a1, $a4, $a1, 1
	add.d	$a0, $a1, $a0
	add.d	$a0, $a0, $a2
	addi.w	$a0, $a0, 1
	ret
.LBB3_10:
	beq	$a1, $a6, .LBB3_12
# %bb.11:
	mul.d	$a0, $a5, $a3
	add.d	$a0, $a0, $a2
	mul.d	$a0, $a0, $a7
	add.w	$a0, $a0, $a1
	ret
.LBB3_12:
	ld.w	$a0, $a0, 12
	mul.d	$a1, $a5, $a3
	add.d	$a1, $a1, $a2
	add.w	$a0, $a1, $a0
	ret
.Lfunc_end3:
	.size	getBoxFromTuple, .Lfunc_end3-getBoxFromTuple
                                        # -- End function
	.globl	putAtomInBox                    # -- Begin function putAtomInBox
	.p2align	5
	.type	putAtomInBox,@function
putAtomInBox:                           # @putAtomInBox
# %bb.0:
	addi.d	$sp, $sp, -112
	st.d	$ra, $sp, 104                   # 8-byte Folded Spill
	st.d	$fp, $sp, 96                    # 8-byte Folded Spill
	st.d	$s0, $sp, 88                    # 8-byte Folded Spill
	st.d	$s1, $sp, 80                    # 8-byte Folded Spill
	st.d	$s2, $sp, 72                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 64                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 56                   # 8-byte Folded Spill
	fst.d	$fs2, $sp, 48                   # 8-byte Folded Spill
	fst.d	$fs3, $sp, 40                   # 8-byte Folded Spill
	fst.d	$fs4, $sp, 32                   # 8-byte Folded Spill
	fst.d	$fs5, $sp, 24                   # 8-byte Folded Spill
	fmov.d	$fs0, $fa5
	fmov.d	$fs1, $fa4
	fmov.d	$fs2, $fa3
	fmov.d	$fs3, $fa2
	fmov.d	$fs4, $fa1
	fmov.d	$fs5, $fa0
	move	$s0, $a3
	move	$s1, $a2
	move	$fp, $a1
	move	$s2, $a0
	fst.d	$fa0, $sp, 0
	fst.d	$fa1, $sp, 8
	fst.d	$fa2, $sp, 16
	addi.d	$a1, $sp, 0
	pcaddu18i	$ra, %call36(getBoxFromCoord)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s2, 120
	slli.d	$a2, $a0, 2
	ldx.w	$a2, $a1, $a2
	ld.w	$a4, $s2, 12
	alsl.d	$a1, $a0, $a1, 2
	move	$a3, $a2
	bge	$a0, $a4, .LBB4_2
# %bb.1:
	ld.w	$a3, $fp, 0
	addi.d	$a3, $a3, 1
	st.w	$a3, $fp, 0
	ld.w	$a3, $a1, 0
.LBB4_2:
	slli.d	$a0, $a0, 6
	add.w	$a0, $a2, $a0
	addi.d	$a2, $a3, 1
	ld.d	$a3, $fp, 8
	st.w	$a2, $a1, 0
	ld.d	$a1, $fp, 16
	slli.d	$a2, $a0, 2
	stx.w	$s1, $a3, $a2
	ld.d	$a3, $fp, 24
	stx.w	$s0, $a1, $a2
	ori	$a1, $zero, 24
	mul.d	$a0, $a0, $a1
	add.d	$a1, $a3, $a0
	ld.d	$a2, $fp, 32
	fstx.d	$fs5, $a3, $a0
	fst.d	$fs4, $a1, 8
	fst.d	$fs3, $a1, 16
	add.d	$a1, $a2, $a0
	fstx.d	$fs2, $a2, $a0
	fst.d	$fs1, $a1, 8
	fst.d	$fs0, $a1, 16
	fld.d	$fs5, $sp, 24                   # 8-byte Folded Reload
	fld.d	$fs4, $sp, 32                   # 8-byte Folded Reload
	fld.d	$fs3, $sp, 40                   # 8-byte Folded Reload
	fld.d	$fs2, $sp, 48                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 56                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 64                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 96                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 104                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 112
	ret
.Lfunc_end4:
	.size	putAtomInBox, .Lfunc_end4-putAtomInBox
                                        # -- End function
	.p2align	5                               # -- Begin function getBoxFromCoord
	.type	getBoxFromCoord,@function
getBoxFromCoord:                        # @getBoxFromCoord
# %bb.0:
	fld.d	$fa6, $a1, 0
	fld.d	$fa1, $a1, 8
	fld.d	$fa2, $a0, 32
	fld.d	$fa3, $a0, 104
	fld.d	$fa0, $a1, 16
	fld.d	$fa7, $a0, 48
	fld.d	$fa4, $a0, 40
	fld.d	$fa5, $a0, 112
	fcmp.cule.d	$fcc0, $fa7, $fa6
	bcnez	$fcc0, .LBB5_2
# %bb.1:
	fld.d	$fa7, $a0, 24
	fld.d	$ft0, $a0, 96
	fsub.d	$fa6, $fa6, $fa7
	fmul.d	$fa6, $fa6, $ft0
	vreplvei.d	$vr6, $vr6, 0
	ld.w	$a1, $a0, 0
	vfrintrm.d	$vr6, $vr6
	ftintrz.w.d	$fa6, $fa6
	movfr2gr.s	$a2, $fa6
	xor	$a3, $a1, $a2
	sltui	$a3, $a3, 1
	addi.w	$a1, $a1, -1
	masknez	$a2, $a2, $a3
	maskeqz	$a1, $a1, $a3
	or	$a1, $a1, $a2
	b	.LBB5_3
.LBB5_2:
	ld.w	$a1, $a0, 0
.LBB5_3:
	fsub.d	$fa4, $fa0, $fa4
	fmul.d	$fa4, $fa4, $fa5
	vreplvei.d	$vr4, $vr4, 0
	vfrintrm.d	$vr4, $vr4
	ftintrz.w.d	$fa4, $fa4
	movfr2gr.s	$a3, $fa4
	fsub.d	$fa2, $fa1, $fa2
	fmul.d	$fa2, $fa2, $fa3
	vreplvei.d	$vr2, $vr2, 0
	vfrintrm.d	$vr2, $vr2
	fld.d	$fa3, $a0, 56
	ld.w	$a2, $a0, 4
	ftintrz.w.d	$fa2, $fa2
	movfr2gr.s	$a4, $fa2
	fcmp.clt.d	$fcc0, $fa1, $fa3
	xor	$a5, $a2, $a4
	sltui	$a5, $a5, 1
	addi.w	$a6, $a2, -1
	masknez	$a4, $a4, $a5
	maskeqz	$a5, $a6, $a5
	or	$a4, $a5, $a4
	movcf2gr	$a5, $fcc0
	maskeqz	$a4, $a4, $a5
	fld.d	$fa1, $a0, 64
	ld.w	$a6, $a0, 8
	masknez	$a2, $a2, $a5
	or	$a2, $a4, $a2
	fcmp.clt.d	$fcc0, $fa0, $fa1
	xor	$a4, $a6, $a3
	sltui	$a4, $a4, 1
	addi.w	$a5, $a6, -1
	masknez	$a3, $a3, $a4
	maskeqz	$a4, $a5, $a4
	or	$a3, $a4, $a3
	movcf2gr	$a4, $fcc0
	maskeqz	$a3, $a3, $a4
	masknez	$a4, $a6, $a4
	or	$a3, $a3, $a4
	pcaddu18i	$t8, %call36(getBoxFromTuple)
	jr	$t8
.Lfunc_end5:
	.size	getBoxFromCoord, .Lfunc_end5-getBoxFromCoord
                                        # -- End function
	.globl	moveAtom                        # -- Begin function moveAtom
	.p2align	5
	.type	moveAtom,@function
moveAtom:                               # @moveAtom
# %bb.0:
	ld.d	$a5, $a0, 120
	slli.d	$a7, $a4, 2
	ldx.w	$t0, $a5, $a7
	slli.d	$a6, $a3, 6
	ld.d	$t1, $a1, 8
	add.w	$t2, $a6, $a2
	slli.d	$a2, $a4, 6
	slli.d	$a5, $t2, 2
	ldx.w	$t3, $t1, $a5
	ld.d	$t4, $a1, 16
	add.w	$t5, $t0, $a2
	slli.d	$a2, $t5, 2
	stx.w	$t3, $t1, $a2
	ldx.w	$t0, $t4, $a5
	ld.d	$t1, $a1, 24
	stx.w	$t0, $t4, $a2
	ori	$t0, $zero, 24
	mul.d	$a2, $t2, $t0
	vldx	$vr0, $t1, $a2
	mul.d	$t3, $t5, $t0
	add.d	$t4, $t1, $a2
	vstx	$vr0, $t1, $t3
	ld.d	$t4, $t4, 16
	add.d	$t1, $t1, $t3
	st.d	$t4, $t1, 16
	ld.d	$t1, $a1, 32
	vldx	$vr0, $t1, $a2
	add.d	$t4, $t1, $a2
	vstx	$vr0, $t1, $t3
	ld.d	$t4, $t4, 16
	add.d	$t1, $t1, $t3
	st.d	$t4, $t1, 16
	ld.d	$t1, $a1, 40
	vldx	$vr0, $t1, $a2
	add.d	$t4, $t1, $a2
	vstx	$vr0, $t1, $t3
	ld.d	$t4, $t4, 16
	add.d	$t1, $t1, $t3
	st.d	$t4, $t1, 16
	ld.d	$t3, $a1, 48
	slli.d	$t1, $t2, 3
	ldx.d	$t2, $t3, $t1
	slli.d	$t4, $t5, 3
	stx.d	$t2, $t3, $t4
	ld.d	$t2, $a0, 120
	ldx.w	$t3, $t2, $a7
	addi.d	$t3, $t3, 1
	stx.w	$t3, $t2, $a7
	slli.d	$a7, $a3, 2
	ldx.w	$a3, $t2, $a7
	addi.w	$a3, $a3, -1
	stx.w	$a3, $t2, $a7
	beqz	$a3, .LBB6_2
# %bb.1:
	ld.d	$a7, $a1, 8
	add.w	$a3, $a3, $a6
	slli.d	$a6, $a3, 2
	ldx.w	$t2, $a7, $a6
	ld.d	$t3, $a1, 16
	stx.w	$t2, $a7, $a5
	ldx.w	$a6, $t3, $a6
	ld.d	$a7, $a1, 24
	stx.w	$a6, $t3, $a5
	mul.d	$a5, $a3, $t0
	vldx	$vr0, $a7, $a5
	add.d	$a6, $a7, $a5
	vstx	$vr0, $a7, $a2
	ld.d	$a6, $a6, 16
	add.d	$a7, $a7, $a2
	st.d	$a6, $a7, 16
	ld.d	$a6, $a1, 32
	vldx	$vr0, $a6, $a5
	add.d	$a7, $a6, $a5
	vstx	$vr0, $a6, $a2
	ld.d	$a7, $a7, 16
	add.d	$a6, $a6, $a2
	st.d	$a7, $a6, 16
	ld.d	$a6, $a1, 40
	vldx	$vr0, $a6, $a5
	add.d	$a5, $a6, $a5
	vstx	$vr0, $a6, $a2
	ld.d	$a5, $a5, 16
	add.d	$a2, $a6, $a2
	st.d	$a5, $a2, 16
	ld.d	$a2, $a1, 48
	slli.d	$a3, $a3, 3
	ldx.d	$a3, $a2, $a3
	stx.d	$a3, $a2, $t1
.LBB6_2:
	ld.w	$a0, $a0, 12
	bge	$a0, $a4, .LBB6_4
# %bb.3:
	ld.w	$a0, $a1, 0
	addi.d	$a0, $a0, -1
	st.w	$a0, $a1, 0
.LBB6_4:
	ret
.Lfunc_end6:
	.size	moveAtom, .Lfunc_end6-moveAtom
                                        # -- End function
	.globl	updateLinkCells                 # -- Begin function updateLinkCells
	.p2align	5
	.type	updateLinkCells,@function
updateLinkCells:                        # @updateLinkCells
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$fp, $sp, 40                    # 8-byte Folded Spill
	st.d	$s0, $sp, 32                    # 8-byte Folded Spill
	st.d	$s1, $sp, 24                    # 8-byte Folded Spill
	st.d	$s2, $sp, 16                    # 8-byte Folded Spill
	st.d	$s3, $sp, 8                     # 8-byte Folded Spill
	st.d	$s4, $sp, 0                     # 8-byte Folded Spill
	ld.w	$t0, $a0, 12
	ld.w	$a2, $a0, 20
	bge	$t0, $a2, .LBB7_4
# %bb.1:                                # %.lr.ph.i
	ld.d	$a2, $a0, 120
	alsl.d	$a2, $t0, $a2, 2
	.p2align	4, , 16
.LBB7_2:                                # =>This Inner Loop Header: Depth=1
	st.w	$zero, $a2, 0
	ld.w	$a3, $a0, 20
	addi.d	$t0, $t0, 1
	addi.d	$a2, $a2, 4
	blt	$t0, $a3, .LBB7_2
# %bb.3:                                # %emptyHaloCells.exit.loopexit
	ld.w	$t0, $a0, 12
.LBB7_4:                                # %emptyHaloCells.exit
	ori	$a2, $zero, 1
	blt	$t0, $a2, .LBB7_34
# %bb.5:                                # %.lr.ph24
	ld.d	$t2, $a0, 120
	move	$a3, $zero
	ori	$a4, $zero, 24
	b	.LBB7_7
	.p2align	4, , 16
.LBB7_6:                                # %._crit_edge
                                        #   in Loop: Header=BB7_7 Depth=1
	addi.d	$a3, $a3, 1
	bge	$a3, $t0, .LBB7_34
.LBB7_7:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_11 Depth 2
	slli.d	$a5, $a3, 2
	ldx.w	$a6, $t2, $a5
	blt	$a6, $a2, .LBB7_6
# %bb.8:                                # %.lr.ph.preheader
                                        #   in Loop: Header=BB7_7 Depth=1
	move	$a6, $zero
	slli.d	$a7, $a3, 6
	b	.LBB7_11
	.p2align	4, , 16
.LBB7_9:                                #   in Loop: Header=BB7_11 Depth=2
	addi.w	$a6, $a6, 1
.LBB7_10:                               # %moveAtom.exit
                                        #   in Loop: Header=BB7_11 Depth=2
	ld.d	$t2, $a0, 120
	ldx.w	$t1, $t2, $a5
	bge	$a6, $t1, .LBB7_6
.LBB7_11:                               # %.lr.ph
                                        #   Parent Loop BB7_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$t4, $a1, 24
	add.d	$t3, $a7, $a6
	mul.d	$t1, $t3, $a4
	fldx.d	$fa0, $t4, $t1
	fld.d	$fa1, $a0, 48
	fcmp.cule.d	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB7_13
# %bb.12:                               #   in Loop: Header=BB7_11 Depth=2
	fld.d	$fa1, $a0, 24
	fld.d	$fa2, $a0, 96
	fsub.d	$fa0, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fa2
	vreplvei.d	$vr0, $vr0, 0
	ld.w	$t7, $a0, 0
	vfrintrm.d	$vr0, $vr0
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$t5, $fa0
	xor	$t6, $t7, $t5
	sltui	$t6, $t6, 1
	addi.w	$t8, $t7, -1
	masknez	$t5, $t5, $t6
	maskeqz	$t6, $t8, $t6
	or	$t6, $t6, $t5
	b	.LBB7_14
	.p2align	4, , 16
.LBB7_13:                               #   in Loop: Header=BB7_11 Depth=2
	ld.w	$t7, $a0, 0
	move	$t6, $t7
.LBB7_14:                               # %getBoxFromCoord.exit
                                        #   in Loop: Header=BB7_11 Depth=2
	add.d	$t5, $t4, $t1
	fld.d	$fa0, $t5, 8
	fld.d	$fa1, $a0, 32
	fld.d	$fa3, $a0, 104
	fld.d	$fa2, $t5, 16
	fsub.d	$fa1, $fa0, $fa1
	fmul.d	$fa1, $fa1, $fa3
	vreplvei.d	$vr1, $vr1, 0
	vfrintrm.d	$vr3, $vr1
	fld.d	$fa1, $a0, 56
	ld.w	$t8, $a0, 4
	ftintrz.w.d	$fa3, $fa3
	movfr2gr.s	$fp, $fa3
	fcmp.cule.d	$fcc0, $fa1, $fa0
	xor	$s0, $t8, $fp
	sltui	$s0, $s0, 1
	addi.w	$s1, $t8, -1
	masknez	$fp, $fp, $s0
	maskeqz	$s0, $s1, $s0
	or	$s0, $s0, $fp
	movcf2gr	$s1, $fcc0
	fld.d	$fa3, $a0, 64
	masknez	$s2, $s0, $s1
	ld.w	$fp, $a0, 8
	maskeqz	$s1, $t8, $s1
	fcmp.clt.d	$fcc0, $fa2, $fa3
	or	$s1, $s1, $s2
	bcnez	$fcc0, .LBB7_16
# %bb.15:                               #   in Loop: Header=BB7_11 Depth=2
	slli.d	$s0, $fp, 1
	mul.d	$s0, $s0, $t8
	addi.d	$t7, $t7, 2
	add.w	$t8, $t8, $s1
	alsl.d	$t8, $fp, $t8, 1
	addi.d	$t8, $t8, 3
	mul.d	$t7, $t7, $t8
	add.d	$t6, $t6, $s0
	b	.LBB7_25
	.p2align	4, , 16
.LBB7_16:                               #   in Loop: Header=BB7_11 Depth=2
	fld.d	$fa3, $a0, 40
	fld.d	$fa4, $a0, 112
	fsub.d	$fa2, $fa2, $fa3
	fmul.d	$fa2, $fa2, $fa4
	vreplvei.d	$vr2, $vr2, 0
	vfrintrm.d	$vr2, $vr2
	ftintrz.w.d	$fa2, $fa2
	movfr2gr.s	$s2, $fa2
	xor	$s3, $fp, $s2
	sltui	$s3, $s3, 1
	addi.w	$s4, $fp, -1
	masknez	$s2, $s2, $s3
	maskeqz	$s3, $s4, $s3
	or	$s2, $s3, $s2
	addi.w	$s3, $zero, -1
	beq	$s2, $s3, .LBB7_19
# %bb.17:                               #   in Loop: Header=BB7_11 Depth=2
	fcmp.clt.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB7_20
# %bb.18:                               #   in Loop: Header=BB7_11 Depth=2
	mul.d	$t8, $fp, $t8
	addi.d	$t7, $t7, 2
	add.d	$fp, $s2, $fp
	mul.d	$t7, $t7, $fp
	b	.LBB7_24
.LBB7_19:                               #   in Loop: Header=BB7_11 Depth=2
	slli.d	$s0, $fp, 1
	mul.d	$t8, $s0, $t8
	addi.d	$t7, $t7, 2
	alsl.d	$fp, $fp, $s1, 1
	addi.d	$fp, $fp, 1
	mul.d	$t7, $t7, $fp
	add.d	$t6, $t6, $t8
	b	.LBB7_25
.LBB7_20:                               #   in Loop: Header=BB7_11 Depth=2
	beq	$s0, $s3, .LBB7_23
# %bb.21:                               #   in Loop: Header=BB7_11 Depth=2
	bne	$t6, $t7, .LBB7_31
# %bb.22:                               #   in Loop: Header=BB7_11 Depth=2
	add.d	$t6, $s2, $fp
	mul.d	$t6, $t6, $t8
	add.d	$t6, $t6, $s0
	add.w	$t6, $t6, $t0
	b	.LBB7_26
.LBB7_23:                               #   in Loop: Header=BB7_11 Depth=2
	mul.d	$t8, $t8, $fp
	addi.d	$t7, $t7, 2
	mul.d	$t7, $t7, $s2
.LBB7_24:                               # %getBoxFromTuple.exit
                                        #   in Loop: Header=BB7_11 Depth=2
	alsl.d	$t6, $t8, $t6, 1
.LBB7_25:                               # %getBoxFromTuple.exit
                                        #   in Loop: Header=BB7_11 Depth=2
	add.d	$t6, $t6, $t0
	add.d	$t6, $t6, $t7
	addi.w	$t6, $t6, 1
.LBB7_26:                               # %getBoxFromTuple.exit
                                        #   in Loop: Header=BB7_11 Depth=2
	bstrpick.d	$t7, $t6, 31, 0
	beq	$a3, $t7, .LBB7_9
# %bb.27:                               #   in Loop: Header=BB7_11 Depth=2
	slli.d	$t7, $t6, 2
	ld.d	$t8, $a1, 8
	ldx.w	$t2, $t2, $t7
	slli.d	$fp, $t6, 6
	slli.d	$t0, $t3, 2
	ldx.w	$s0, $t8, $t0
	ld.d	$s1, $a1, 16
	add.w	$fp, $t2, $fp
	slli.d	$t2, $fp, 2
	stx.w	$s0, $t8, $t2
	ldx.w	$t8, $s1, $t0
	stx.w	$t8, $s1, $t2
	vld	$vr0, $t5, 0
	mul.d	$t2, $fp, $a4
	vstx	$vr0, $t4, $t2
	ld.d	$t5, $t5, 16
	add.d	$t4, $t4, $t2
	st.d	$t5, $t4, 16
	ld.d	$t4, $a1, 32
	vldx	$vr0, $t4, $t1
	add.d	$t5, $t4, $t1
	vstx	$vr0, $t4, $t2
	ld.d	$t5, $t5, 16
	add.d	$t4, $t4, $t2
	st.d	$t5, $t4, 16
	ld.d	$t4, $a1, 40
	vldx	$vr0, $t4, $t1
	add.d	$t5, $t4, $t1
	vstx	$vr0, $t4, $t2
	ld.d	$t5, $t5, 16
	add.d	$t2, $t4, $t2
	st.d	$t5, $t2, 16
	ld.d	$t4, $a1, 48
	slli.d	$t2, $t3, 3
	ldx.d	$t3, $t4, $t2
	slli.d	$t5, $fp, 3
	stx.d	$t3, $t4, $t5
	ld.d	$t4, $a0, 120
	ldx.w	$t3, $t4, $t7
	addi.d	$t3, $t3, 1
	stx.w	$t3, $t4, $t7
	ldx.w	$t3, $t4, $a5
	addi.w	$t3, $t3, -1
	stx.w	$t3, $t4, $a5
	beqz	$t3, .LBB7_29
# %bb.28:                               #   in Loop: Header=BB7_11 Depth=2
	ld.d	$t4, $a1, 8
	add.d	$t3, $a7, $t3
	slli.d	$t5, $t3, 2
	ldx.w	$t7, $t4, $t5
	ld.d	$t8, $a1, 16
	stx.w	$t7, $t4, $t0
	ldx.w	$t4, $t8, $t5
	ld.d	$t5, $a1, 24
	stx.w	$t4, $t8, $t0
	mul.d	$t0, $t3, $a4
	vldx	$vr0, $t5, $t0
	add.d	$t4, $t5, $t0
	vstx	$vr0, $t5, $t1
	ld.d	$t4, $t4, 16
	add.d	$t5, $t5, $t1
	st.d	$t4, $t5, 16
	ld.d	$t4, $a1, 32
	vldx	$vr0, $t4, $t0
	add.d	$t5, $t4, $t0
	vstx	$vr0, $t4, $t1
	ld.d	$t5, $t5, 16
	add.d	$t4, $t4, $t1
	st.d	$t5, $t4, 16
	ld.d	$t4, $a1, 40
	vldx	$vr0, $t4, $t0
	add.d	$t0, $t4, $t0
	vstx	$vr0, $t4, $t1
	ld.d	$t0, $t0, 16
	add.d	$t1, $t4, $t1
	st.d	$t0, $t1, 16
	ld.d	$t0, $a1, 48
	slli.d	$t1, $t3, 3
	ldx.d	$t1, $t0, $t1
	stx.d	$t1, $t0, $t2
.LBB7_29:                               #   in Loop: Header=BB7_11 Depth=2
	ld.w	$t0, $a0, 12
	bge	$t0, $t6, .LBB7_10
# %bb.30:                               #   in Loop: Header=BB7_11 Depth=2
	ld.w	$t1, $a1, 0
	addi.d	$t1, $t1, -1
	st.w	$t1, $a1, 0
	b	.LBB7_10
.LBB7_31:                               #   in Loop: Header=BB7_11 Depth=2
	mul.d	$t8, $s2, $t8
	add.d	$t8, $t8, $s0
	beq	$t6, $s3, .LBB7_33
# %bb.32:                               #   in Loop: Header=BB7_11 Depth=2
	mul.d	$t7, $t7, $t8
	add.w	$t6, $t7, $t6
	b	.LBB7_26
.LBB7_33:                               #   in Loop: Header=BB7_11 Depth=2
	add.w	$t6, $t8, $t0
	b	.LBB7_26
.LBB7_34:                               # %._crit_edge25
	ld.d	$s4, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end7:
	.size	updateLinkCells, .Lfunc_end7-updateLinkCells
                                        # -- End function
	.globl	maxOccupancy                    # -- Begin function maxOccupancy
	.p2align	5
	.type	maxOccupancy,@function
maxOccupancy:                           # @maxOccupancy
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	ld.w	$a1, $a0, 12
	ori	$a2, $zero, 1
	st.w	$zero, $sp, 4
	blt	$a1, $a2, .LBB8_7
# %bb.1:                                # %iter.check
	ld.d	$a0, $a0, 120
	ori	$a2, $zero, 3
	bgeu	$a2, $a1, .LBB8_4
# %bb.2:                                # %vector.memcheck
	alsl.d	$a2, $a1, $a0, 2
	addi.d	$a3, $sp, 4
	bgeu	$a3, $a2, .LBB8_8
# %bb.3:                                # %vector.memcheck
	addi.d	$a2, $sp, 8
	bgeu	$a0, $a2, .LBB8_8
.LBB8_4:
	move	$a2, $zero
	move	$a3, $zero
.LBB8_5:                                # %vec.epilog.scalar.ph.preheader
	alsl.d	$a0, $a2, $a0, 2
	sub.d	$a1, $a1, $a2
	.p2align	4, , 16
.LBB8_6:                                # %vec.epilog.scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a2, $a0, 0
	slt	$a4, $a2, $a3
	masknez	$a2, $a2, $a4
	maskeqz	$a3, $a3, $a4
	or	$a3, $a3, $a2
	st.w	$a3, $sp, 4
	addi.d	$a1, $a1, -1
	addi.d	$a0, $a0, 4
	bnez	$a1, .LBB8_6
.LBB8_7:                                # %._crit_edge
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(profileStart)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 4
	addi.d	$a1, $sp, 0
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(maxIntParallel)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(profileStop)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 0
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB8_8:                                # %vector.main.loop.iter.check
	ori	$a2, $zero, 16
	bgeu	$a1, $a2, .LBB8_10
# %bb.9:
	move	$a2, $zero
	move	$a3, $zero
	b	.LBB8_14
.LBB8_10:                               # %vector.ph
	bstrpick.d	$a2, $a1, 30, 4
	slli.d	$a2, $a2, 4
	xvrepli.b	$xr0, 0
	addi.d	$a3, $a0, 32
	move	$a4, $a2
	xvori.b	$xr1, $xr0, 0
	.p2align	4, , 16
.LBB8_11:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr2, $a3, -32
	xvld	$xr3, $a3, 0
	xvmax.w	$xr0, $xr0, $xr2
	xvmax.w	$xr1, $xr1, $xr3
	addi.d	$a4, $a4, -16
	addi.d	$a3, $a3, 64
	bnez	$a4, .LBB8_11
# %bb.12:                               # %middle.block
	xvmax.w	$xr0, $xr0, $xr1
	xvpermi.d	$xr1, $xr0, 78
	xvshuf4i.w	$xr1, $xr1, 228
	xvmax.w	$xr0, $xr0, $xr1
	xvpermi.d	$xr1, $xr0, 68
	xvshuf4i.w	$xr1, $xr1, 14
	xvmax.w	$xr0, $xr0, $xr1
	xvpermi.d	$xr1, $xr0, 68
	xvrepl128vei.w	$xr1, $xr1, 1
	xvmax.w	$xr0, $xr0, $xr1
	xvpickve2gr.w	$a3, $xr0, 0
	st.w	$a3, $sp, 4
	beq	$a2, $a1, .LBB8_7
# %bb.13:                               # %vec.epilog.iter.check
	andi	$a4, $a1, 12
	beqz	$a4, .LBB8_5
.LBB8_14:                               # %vec.epilog.ph
	move	$a4, $a2
	bstrpick.d	$a2, $a1, 30, 2
	slli.d	$a2, $a2, 2
	vreplgr2vr.w	$vr0, $a3
	sub.d	$a3, $a4, $a2
	alsl.d	$a4, $a4, $a0, 2
	.p2align	4, , 16
.LBB8_15:                               # %vec.epilog.vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr1, $a4, 0
	vmax.w	$vr0, $vr0, $vr1
	addi.d	$a3, $a3, 4
	addi.d	$a4, $a4, 16
	bnez	$a3, .LBB8_15
# %bb.16:                               # %vec.epilog.middle.block
	vshuf4i.w	$vr1, $vr0, 14
	vmax.w	$vr0, $vr0, $vr1
	vreplvei.w	$vr1, $vr0, 1
	vmax.w	$vr0, $vr0, $vr1
	vpickve2gr.w	$a3, $vr0, 0
	st.w	$a3, $sp, 4
	bne	$a2, $a1, .LBB8_5
	b	.LBB8_7
.Lfunc_end8:
	.size	maxOccupancy, .Lfunc_end8-maxOccupancy
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
