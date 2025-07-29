	.file	"rmain.c"
	.text
	.globl	rmain                           # -- Begin function rmain
	.p2align	5
	.type	rmain,@function
rmain:                                  # @rmain
# %bb.0:
	addi.d	$sp, $sp, -1152
	st.d	$ra, $sp, 1144                  # 8-byte Folded Spill
	st.d	$fp, $sp, 1136                  # 8-byte Folded Spill
	st.d	$s0, $sp, 1128                  # 8-byte Folded Spill
	st.d	$s1, $sp, 1120                  # 8-byte Folded Spill
	st.d	$s2, $sp, 1112                  # 8-byte Folded Spill
	st.d	$s3, $sp, 1104                  # 8-byte Folded Spill
	st.d	$s4, $sp, 1096                  # 8-byte Folded Spill
	st.d	$s5, $sp, 1088                  # 8-byte Folded Spill
	st.d	$s6, $sp, 1080                  # 8-byte Folded Spill
	st.d	$s7, $sp, 1072                  # 8-byte Folded Spill
	st.d	$s8, $sp, 1064                  # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(finalShot)
	ld.d	$a0, $a0, %got_pc_lo12(finalShot)
	pcalau12i	$a1, %got_pc_hi20(doCompaction)
	ld.d	$a1, $a1, %got_pc_lo12(doCompaction)
	ld.w	$a0, $a0, 0
	ld.w	$a1, $a1, 0
	bne	$a0, $a1, .LBB0_2
# %bb.1:
	pcalau12i	$a0, %got_pc_hi20(bareFlag)
	ld.d	$a0, $a0, %got_pc_lo12(bareFlag)
	ld.w	$a0, $a0, 0
	beqz	$a0, .LBB0_80
.LBB0_2:
	pcalau12i	$a0, %got_pc_hi20(MAXPATHS)
	ld.d	$a1, $a0, %got_pc_lo12(MAXPATHS)
	ori	$a0, $zero, 1
	st.w	$a0, $a1, 0
	ori	$a1, $zero, 1
.LBB0_3:
	pcalau12i	$a2, %got_pc_hi20(EXTRASOURCES)
	pcalau12i	$a3, %got_pc_hi20(cktName)
	ld.d	$fp, $a3, %got_pc_lo12(cktName)
	ld.d	$s0, $a2, %got_pc_lo12(EXTRASOURCES)
	ld.d	$a2, $fp, 0
	st.w	$a0, $s0, 0
	pcalau12i	$a0, %pc_hi20(bareMinimum)
	st.w	$a1, $a0, %pc_lo12(bareMinimum)
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a1, $a0, %pc_lo12(.L.str)
	addi.d	$a0, $sp, 40
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a1, $a0, %pc_lo12(.L.str.1)
	addi.d	$a0, $sp, 40
	pcaddu18i	$ra, %call36(fopen)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_81
# %bb.4:
	pcaddu18i	$ra, %call36(readgraph)
	jirl	$ra, $ra, 0
	ld.d	$a2, $fp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a1, $a0, %pc_lo12(.L.str.3)
	addi.d	$a0, $sp, 40
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a1, $a0, %pc_lo12(.L.str.1)
	addi.d	$a0, $sp, 40
	pcaddu18i	$ra, %call36(fopen)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_82
# %bb.5:
	move	$fp, $a0
	st.d	$s0, $sp, 16                    # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(readpnode)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(printnets)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(doChannelGraph)
	ld.d	$a0, $a0, %got_pc_lo12(doChannelGraph)
	ld.w	$a0, $a0, 0
	beqz	$a0, .LBB0_7
# %bb.6:
	pcaddu18i	$ra, %call36(density)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(bellman)
	jirl	$ra, $ra, 0
.LBB0_7:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(fclose)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(eNum)
	ld.d	$fp, $a0, %got_pc_lo12(eNum)
	ld.w	$a0, $fp, 0
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB0_13
# %bb.8:                                # %.lr.ph.preheader
	pcalau12i	$a2, %got_pc_hi20(eArray)
	ld.d	$s1, $a2, %got_pc_lo12(eArray)
	ori	$s2, $zero, 56
	b	.LBB0_10
	.p2align	4, , 16
.LBB0_9:                                # %.loopexit
                                        #   in Loop: Header=BB0_10 Depth=1
	addi.d	$a1, $s0, 1
	bge	$s0, $a0, .LBB0_13
.LBB0_10:                               # %.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_11 Depth 2
	ld.d	$a2, $s1, 0
	move	$s0, $a1
	mul.d	$s3, $a1, $s2
	add.d	$a1, $a2, $s3
	ld.d	$a1, $a1, 48
	beqz	$a1, .LBB0_9
	.p2align	4, , 16
.LBB0_11:                               # %.preheader126
                                        #   Parent Loop BB0_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $s1, 0
	add.d	$a0, $a0, $s3
	addi.d	$a0, $a0, 48
	addi.d	$a1, $sp, 32
	addi.d	$a2, $sp, 28
	addi.d	$a3, $sp, 24
	pcaddu18i	$ra, %call36(tpop)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 32
	bnez	$a0, .LBB0_11
# %bb.12:                               # %.loopexit.loopexit
                                        #   in Loop: Header=BB0_10 Depth=1
	ld.w	$a0, $fp, 0
	b	.LBB0_9
.LBB0_13:                               # %._crit_edge
	pcalau12i	$a0, %got_pc_hi20(eArray)
	ld.d	$a0, $a0, %got_pc_lo12(eArray)
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(numRects)
	ld.d	$s0, $a0, %got_pc_lo12(numRects)
	ld.w	$a0, $s0, 0
	ori	$fp, $zero, 1
	blt	$a0, $fp, .LBB0_16
# %bb.14:                               # %.lr.ph132.preheader
	pcalau12i	$a0, %got_pc_hi20(eIndexArray)
	ld.d	$s1, $a0, %got_pc_lo12(eIndexArray)
	move	$s2, $zero
	ori	$s3, $zero, 8
	.p2align	4, , 16
.LBB0_15:                               # %.lr.ph132
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s1, 0
	ldx.d	$a0, $a0, $s3
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s0, 0
	addi.d	$s2, $s2, 1
	addi.d	$s3, $s3, 8
	blt	$s2, $a0, .LBB0_15
.LBB0_16:                               # %._crit_edge133
	pcalau12i	$a0, %got_pc_hi20(eIndexArray)
	ld.d	$a0, $a0, %got_pc_lo12(eIndexArray)
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(numXnodes)
	ld.d	$s1, $a0, %got_pc_lo12(numXnodes)
	ld.w	$a0, $s1, 0
	blt	$a0, $fp, .LBB0_24
# %bb.17:                               # %.lr.ph142.preheader
	pcalau12i	$a1, %got_pc_hi20(xNodeArray)
	ld.d	$s2, $a1, %got_pc_lo12(xNodeArray)
	ori	$a1, $zero, 1
	b	.LBB0_20
	.p2align	4, , 16
.LBB0_18:                               # %._crit_edge138.loopexit
                                        #   in Loop: Header=BB0_20 Depth=1
	ld.w	$a0, $s1, 0
.LBB0_19:                               # %._crit_edge138
                                        #   in Loop: Header=BB0_20 Depth=1
	addi.d	$a1, $s3, 1
	bge	$s3, $a0, .LBB0_24
.LBB0_20:                               # %.lr.ph142
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_22 Depth 2
	ld.d	$a2, $s2, 0
	move	$s3, $a1
	slli.d	$a1, $a1, 3
	ldx.d	$fp, $a2, $a1
	bnez	$fp, .LBB0_22
	b	.LBB0_19
	.p2align	4, , 16
.LBB0_21:                               #   in Loop: Header=BB0_22 Depth=2
	ld.d	$s0, $fp, 24
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$fp, $s0
	beqz	$s0, .LBB0_18
.LBB0_22:                               # %.lr.ph137
                                        #   Parent Loop BB0_20 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $fp, 8
	beqz	$a0, .LBB0_21
# %bb.23:                               #   in Loop: Header=BB0_22 Depth=2
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	b	.LBB0_21
.LBB0_24:                               # %.preheader125
	pcalau12i	$a0, %got_pc_hi20(numYnodes)
	ld.d	$s1, $a0, %got_pc_lo12(numYnodes)
	ld.w	$a0, $s1, 0
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB0_32
# %bb.25:                               # %.lr.ph150.preheader
	pcalau12i	$a2, %got_pc_hi20(yNodeArray)
	ld.d	$s2, $a2, %got_pc_lo12(yNodeArray)
	b	.LBB0_28
	.p2align	4, , 16
.LBB0_26:                               # %._crit_edge147.loopexit
                                        #   in Loop: Header=BB0_28 Depth=1
	ld.w	$a0, $s1, 0
.LBB0_27:                               # %._crit_edge147
                                        #   in Loop: Header=BB0_28 Depth=1
	addi.d	$a1, $s3, 1
	bge	$s3, $a0, .LBB0_32
.LBB0_28:                               # %.lr.ph150
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_30 Depth 2
	ld.d	$a2, $s2, 0
	move	$s3, $a1
	slli.d	$a1, $a1, 3
	ldx.d	$fp, $a2, $a1
	bnez	$fp, .LBB0_30
	b	.LBB0_27
	.p2align	4, , 16
.LBB0_29:                               #   in Loop: Header=BB0_30 Depth=2
	ld.d	$s0, $fp, 24
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$fp, $s0
	beqz	$s0, .LBB0_26
.LBB0_30:                               # %.lr.ph146
                                        #   Parent Loop BB0_28 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $fp, 8
	beqz	$a0, .LBB0_29
# %bb.31:                               #   in Loop: Header=BB0_30 Depth=2
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	b	.LBB0_29
.LBB0_32:                               # %._crit_edge151
	pcalau12i	$a0, %got_pc_hi20(xNodeArray)
	ld.d	$a0, $a0, %got_pc_lo12(xNodeArray)
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(yNodeArray)
	ld.d	$a0, $a0, %got_pc_lo12(yNodeArray)
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(edgeList)
	ld.d	$a0, $a0, %got_pc_lo12(edgeList)
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(xBellArray)
	ld.d	$a0, $a0, %got_pc_lo12(xBellArray)
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(yBellArray)
	ld.d	$a0, $a0, %got_pc_lo12(yBellArray)
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(pnodeAlength)
	ld.d	$fp, $a0, %got_pc_lo12(pnodeAlength)
	pcalau12i	$a0, %got_pc_hi20(pnodeArray)
	ld.d	$s1, $a0, %got_pc_lo12(pnodeArray)
	ld.w	$a2, $fp, 0
	ld.d	$a0, $s1, 0
	ori	$a1, $zero, 1
	bge	$a2, $a1, .LBB0_36
.LBB0_33:                               # %._crit_edge161
	st.d	$fp, $sp, 8                     # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(numnodes)
	ld.d	$s1, $a0, %got_pc_lo12(numnodes)
	pcalau12i	$a0, %got_pc_hi20(maxpnode)
	ld.d	$s2, $a0, %got_pc_lo12(maxpnode)
	ld.w	$a1, $s1, 0
	ld.w	$a2, $s2, 0
	add.w	$a3, $a2, $a1
	ori	$a0, $zero, 1
	blt	$a3, $a0, .LBB0_46
# %bb.34:                               # %.lr.ph170.preheader
	pcalau12i	$a3, %got_pc_hi20(gnodeArray)
	ld.d	$s3, $a3, %got_pc_lo12(gnodeArray)
	b	.LBB0_43
	.p2align	4, , 16
.LBB0_35:                               #   in Loop: Header=BB0_36 Depth=1
	ld.w	$a2, $fp, 0
	addi.d	$a1, $s2, 1
	bge	$s2, $a2, .LBB0_33
.LBB0_36:                               # %.lr.ph160
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_38 Depth 2
	move	$s2, $a1
	slli.d	$a1, $a1, 4
	alsl.d	$s0, $s2, $a1, 3
	add.d	$a1, $a0, $s0
	ld.d	$a2, $a1, 16
	beqz	$a2, .LBB0_40
# %bb.37:                               # %.lr.ph155.preheader
                                        #   in Loop: Header=BB0_36 Depth=1
	move	$a0, $a2
	.p2align	4, , 16
.LBB0_38:                               # %.lr.ph155
                                        #   Parent Loop BB0_36 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s3, $a0, 8
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s3
	bnez	$s3, .LBB0_38
# %bb.39:                               # %._crit_edge156.loopexit
                                        #   in Loop: Header=BB0_36 Depth=1
	ld.d	$a0, $s1, 0
.LBB0_40:                               # %._crit_edge156
                                        #   in Loop: Header=BB0_36 Depth=1
	add.d	$a1, $a0, $s0
	ld.d	$a1, $a1, 8
	beqz	$a1, .LBB0_35
# %bb.41:                               #   in Loop: Header=BB0_36 Depth=1
	move	$a0, $a1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	b	.LBB0_35
	.p2align	4, , 16
.LBB0_42:                               # %._crit_edge166
                                        #   in Loop: Header=BB0_43 Depth=1
	add.w	$a3, $a2, $a1
	addi.d	$a0, $s4, 1
	bge	$s4, $a3, .LBB0_46
.LBB0_43:                               # %.lr.ph170
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_44 Depth 2
	ld.d	$a3, $s3, 0
	move	$s4, $a0
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $a3, $a0
	beqz	$a0, .LBB0_42
	.p2align	4, , 16
.LBB0_44:                               # %.lr.ph165
                                        #   Parent Loop BB0_43 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s0, $a0, 32
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	bnez	$s0, .LBB0_44
# %bb.45:                               # %._crit_edge166.loopexit
                                        #   in Loop: Header=BB0_43 Depth=1
	ld.w	$a1, $s1, 0
	ld.w	$a2, $s2, 0
	b	.LBB0_42
.LBB0_46:                               # %._crit_edge171
	pcalau12i	$a0, %got_pc_hi20(gnodeArray)
	ld.d	$a0, $a0, %got_pc_lo12(gnodeArray)
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(gtrace)
	ld.d	$s0, $a0, %got_pc_lo12(gtrace)
	ld.d	$a0, $s0, 0
	ld.d	$a0, $a0, 8
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 0
	ld.d	$a0, $a0, 16
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 0
	ld.d	$a0, $a0, 24
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 0
	ld.d	$a0, $a0, 32
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(largestNet)
	ld.d	$s2, $a0, %got_pc_lo12(largestNet)
	ld.w	$a0, $s2, 0
	ori	$s1, $zero, 1
	blt	$a0, $s1, .LBB0_55
# %bb.47:                               # %.preheader.preheader
	pcalau12i	$a0, %got_pc_hi20(MAXPATHS)
	ld.d	$s3, $a0, %got_pc_lo12(MAXPATHS)
	pcalau12i	$a0, %got_pc_hi20(netRoutes)
	ld.d	$s4, $a0, %got_pc_lo12(netRoutes)
	ori	$a0, $zero, 1
	b	.LBB0_49
	.p2align	4, , 16
.LBB0_48:                               # %._crit_edge181
                                        #   in Loop: Header=BB0_49 Depth=1
	ld.d	$a0, $s4, 0
	alsl.d	$a1, $s5, $s6, 3
	ldx.d	$a0, $a0, $a1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s2, 0
	addi.d	$a0, $s5, 1
	bge	$s5, $a1, .LBB0_55
.LBB0_49:                               # %.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_52 Depth 2
                                        #       Child Loop BB0_53 Depth 3
	ld.w	$a1, $s3, 0
	move	$s5, $a0
	slli.d	$s6, $a0, 4
	blt	$a1, $s1, .LBB0_48
# %bb.50:                               # %.lr.ph180.preheader
                                        #   in Loop: Header=BB0_49 Depth=1
	ori	$a0, $zero, 1
	alsl.d	$s7, $s5, $s6, 3
	b	.LBB0_52
	.p2align	4, , 16
.LBB0_51:                               # %._crit_edge177
                                        #   in Loop: Header=BB0_52 Depth=2
	ld.d	$a0, $a1, 0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s4, 0
	ldx.d	$a0, $a0, $s7
	ldx.d	$a0, $a0, $s0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s3, 0
	addi.d	$a0, $s8, 1
	bge	$s8, $a1, .LBB0_48
.LBB0_52:                               # %.lr.ph180
                                        #   Parent Loop BB0_49 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_53 Depth 3
	ld.d	$a1, $s4, 0
	ldx.d	$a1, $a1, $s7
	move	$s8, $a0
	slli.d	$s0, $a0, 3
	ldx.d	$a1, $a1, $s0
	ld.d	$a0, $a1, 16
	beqz	$a0, .LBB0_51
	.p2align	4, , 16
.LBB0_53:                               # %.lr.ph176
                                        #   Parent Loop BB0_49 Depth=1
                                        #     Parent Loop BB0_52 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$fp, $a0, 16
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	bnez	$fp, .LBB0_53
# %bb.54:                               # %._crit_edge177.loopexit
                                        #   in Loop: Header=BB0_52 Depth=2
	ld.d	$a0, $s4, 0
	ldx.d	$a0, $a0, $s7
	ldx.d	$a1, $a0, $s0
	b	.LBB0_51
.LBB0_55:                               # %._crit_edge184
	pcalau12i	$a0, %got_pc_hi20(netRoutes)
	ld.d	$a0, $a0, %got_pc_lo12(netRoutes)
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(MAXPATHS)
	ld.d	$s1, $a0, %got_pc_lo12(MAXPATHS)
	ld.w	$a0, $s1, 0
	ori	$s4, $zero, 1
	blt	$a0, $s4, .LBB0_58
# %bb.56:                               # %.lr.ph188.preheader
	pcalau12i	$a0, %got_pc_hi20(savePaths)
	ld.d	$s0, $a0, %got_pc_lo12(savePaths)
	move	$s3, $zero
	ori	$s5, $zero, 8
	.p2align	4, , 16
.LBB0_57:                               # %.lr.ph188
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s0, 0
	ldx.d	$a0, $a0, $s5
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s1, 0
	slli.w	$a0, $a0, 1
	addi.d	$s3, $s3, 1
	addi.d	$s5, $s5, 8
	blt	$s3, $a0, .LBB0_57
.LBB0_58:                               # %._crit_edge189
	pcalau12i	$a0, %got_pc_hi20(savePaths)
	ld.d	$a0, $a0, %got_pc_lo12(savePaths)
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(numpins)
	ld.d	$s3, $a0, %got_pc_lo12(numpins)
	pcalau12i	$a0, %got_pc_hi20(pnameArray)
	ld.d	$s5, $a0, %got_pc_lo12(pnameArray)
	ld.w	$a2, $s3, 0
	ld.d	$a0, $s5, 0
	blt	$a2, $s4, .LBB0_63
# %bb.59:                               # %.lr.ph193.preheader
	move	$s4, $zero
	ori	$s6, $zero, 8
	b	.LBB0_61
	.p2align	4, , 16
.LBB0_60:                               #   in Loop: Header=BB0_61 Depth=1
	addi.d	$s4, $s4, 1
	addi.d	$s6, $s6, 8
	bge	$s4, $a2, .LBB0_63
.LBB0_61:                               # %.lr.ph193
                                        # =>This Inner Loop Header: Depth=1
	ldx.d	$a1, $a0, $s6
	beqz	$a1, .LBB0_60
# %bb.62:                               #   in Loop: Header=BB0_61 Depth=1
	move	$a0, $a1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, 0
	ld.w	$a2, $s3, 0
	b	.LBB0_60
.LBB0_63:                               # %._crit_edge194
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(nnameArray)
	ld.d	$s4, $a0, %got_pc_lo12(nnameArray)
	ld.w	$a2, $s2, 0
	ld.d	$a0, $s4, 0
	ori	$s3, $zero, 1
	blt	$a2, $s3, .LBB0_68
# %bb.64:                               # %.lr.ph198.preheader
	move	$s5, $zero
	ori	$s6, $zero, 8
	b	.LBB0_66
	.p2align	4, , 16
.LBB0_65:                               #   in Loop: Header=BB0_66 Depth=1
	addi.d	$s5, $s5, 1
	addi.d	$s6, $s6, 8
	bge	$s5, $a2, .LBB0_68
.LBB0_66:                               # %.lr.ph198
                                        # =>This Inner Loop Header: Depth=1
	ldx.d	$a1, $a0, $s6
	beqz	$a1, .LBB0_65
# %bb.67:                               #   in Loop: Header=BB0_66 Depth=1
	move	$a0, $a1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s4, 0
	ld.w	$a2, $s2, 0
	b	.LBB0_65
.LBB0_68:                               # %._crit_edge199
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(pinOffset)
	ld.d	$a0, $a0, %got_pc_lo12(pinOffset)
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(segList)
	ld.d	$a0, $a0, %got_pc_lo12(segList)
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$fp, $sp, 8                     # 8-byte Folded Reload
	ld.w	$a0, $fp, 0
	blt	$a0, $s3, .LBB0_71
# %bb.69:                               # %.lr.ph202.preheader
	pcalau12i	$a0, %got_pc_hi20(netSegArray)
	ld.d	$s0, $a0, %got_pc_lo12(netSegArray)
	move	$s2, $zero
	move	$s3, $zero
	.p2align	4, , 16
.LBB0_70:                               # %.lr.ph202
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s0, 0
	ldx.d	$a0, $a0, $s2
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 0
	addi.d	$s3, $s3, 1
	addi.d	$s2, $s2, 8
	blt	$s3, $a0, .LBB0_70
.LBB0_71:                               # %._crit_edge203
	pcalau12i	$a0, %got_pc_hi20(netSegArray)
	ld.d	$a0, $a0, %got_pc_lo12(netSegArray)
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(sourceList)
	ld.d	$a0, $a0, %got_pc_lo12(sourceList)
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(targetList)
	ld.d	$a0, $a0, %got_pc_lo12(targetList)
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(delSourceList)
	ld.d	$a0, $a0, %got_pc_lo12(delSourceList)
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(addTargetList)
	ld.d	$a0, $a0, %got_pc_lo12(addTargetList)
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.w	$a0, $s3, 0
	ld.w	$a1, $s1, 0
	mul.w	$a0, $a1, $a0
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB0_74
# %bb.72:                               # %.lr.ph207.preheader
	pcalau12i	$a0, %got_pc_hi20(pathList)
	ld.d	$fp, $a0, %got_pc_lo12(pathList)
	move	$s0, $zero
	ori	$s2, $zero, 8
	.p2align	4, , 16
.LBB0_73:                               # %.lr.ph207
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 0
	ldx.d	$a0, $a0, $s2
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s3, 0
	ld.w	$a1, $s1, 0
	mul.w	$a0, $a1, $a0
	addi.d	$s0, $s0, 1
	addi.d	$s2, $s2, 8
	blt	$s0, $a0, .LBB0_73
.LBB0_74:                               # %._crit_edge208
	pcalau12i	$a0, %got_pc_hi20(pathList)
	ld.d	$a0, $a0, %got_pc_lo12(pathList)
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s1, 0
	bltz	$a0, .LBB0_77
# %bb.75:                               # %.lr.ph212.preheader
	pcalau12i	$a0, %got_pc_hi20(pathArray)
	ld.d	$fp, $a0, %got_pc_lo12(pathArray)
	move	$s0, $zero
	ori	$s2, $zero, 40
	ori	$s3, $zero, 2
	.p2align	4, , 16
.LBB0_76:                               # %.lr.ph212
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 0
	ldx.d	$a0, $a0, $s2
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s1, 0
	alsl.w	$a0, $a0, $s3, 1
	addi.d	$s0, $s0, 1
	addi.d	$s2, $s2, 40
	blt	$s0, $a0, .LBB0_76
.LBB0_77:                               # %._crit_edge213
	pcalau12i	$a0, %got_pc_hi20(pathArray)
	ld.d	$a0, $a0, %got_pc_lo12(pathArray)
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(tempArray)
	ld.d	$a0, $a0, %got_pc_lo12(tempArray)
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(pinlist)
	ld.d	$a0, $a0, %got_pc_lo12(pinlist)
	ld.d	$a0, $a0, 0
	beqz	$a0, .LBB0_79
	.p2align	4, , 16
.LBB0_78:                               # %.lr.ph217
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$fp, $a0, 16
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	bnez	$fp, .LBB0_78
.LBB0_79:                               # %._crit_edge218
	ld.d	$s8, $sp, 1064                  # 8-byte Folded Reload
	ld.d	$s7, $sp, 1072                  # 8-byte Folded Reload
	ld.d	$s6, $sp, 1080                  # 8-byte Folded Reload
	ld.d	$s5, $sp, 1088                  # 8-byte Folded Reload
	ld.d	$s4, $sp, 1096                  # 8-byte Folded Reload
	ld.d	$s3, $sp, 1104                  # 8-byte Folded Reload
	ld.d	$s2, $sp, 1112                  # 8-byte Folded Reload
	ld.d	$s1, $sp, 1120                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 1128                  # 8-byte Folded Reload
	ld.d	$fp, $sp, 1136                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 1144                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 1152
	ret
.LBB0_80:
	pcalau12i	$a0, %got_pc_hi20(routerMaxPaths)
	ld.d	$a0, $a0, %got_pc_lo12(routerMaxPaths)
	pcalau12i	$a1, %got_pc_hi20(routerExtraS)
	ld.d	$a1, $a1, %got_pc_lo12(routerExtraS)
	ld.w	$a2, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(MAXPATHS)
	ld.d	$a3, $a0, %got_pc_lo12(MAXPATHS)
	ld.w	$a0, $a1, 0
	move	$a1, $zero
	st.w	$a2, $a3, 0
	b	.LBB0_3
.LBB0_81:
	pcalau12i	$a0, %got_pc_hi20(fpo)
	ld.d	$a0, $a0, %got_pc_lo12(fpo)
	ld.d	$a0, $a0, 0
	pcalau12i	$a1, %pc_hi20(.L.str.2)
	addi.d	$a1, $a1, %pc_lo12(.L.str.2)
	addi.d	$a2, $sp, 40
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB0_82:
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a0, $a0, %pc_lo12(.L.str.4)
	addi.d	$a1, $sp, 40
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end0:
	.size	rmain, .Lfunc_end0-rmain
                                        # -- End function
	.type	bareMinimum,@object             # @bareMinimum
	.comm	bareMinimum,4,4
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%s.gph"
	.size	.L.str, 7

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"r"
	.size	.L.str.1, 2

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"Error: file: %s not present\n"
	.size	.L.str.2, 29

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"%s.twf"
	.size	.L.str.3, 7

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"can't open %s\n"
	.size	.L.str.4, 15

	.section	".note.GNU-stack","",@progbits
	.addrsig
