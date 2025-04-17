	.file	"density.c"
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function density
.LCPI0_0:
	.word	0                               # 0x0
	.word	4                               # 0x4
	.word	4                               # 0x4
	.word	4                               # 0x4
	.text
	.globl	density
	.p2align	5
	.type	density,@function
density:                                # @density
# %bb.0:
	addi.d	$sp, $sp, -320
	st.d	$ra, $sp, 312                   # 8-byte Folded Spill
	st.d	$fp, $sp, 304                   # 8-byte Folded Spill
	st.d	$s0, $sp, 296                   # 8-byte Folded Spill
	st.d	$s1, $sp, 288                   # 8-byte Folded Spill
	st.d	$s2, $sp, 280                   # 8-byte Folded Spill
	st.d	$s3, $sp, 272                   # 8-byte Folded Spill
	st.d	$s4, $sp, 264                   # 8-byte Folded Spill
	st.d	$s5, $sp, 256                   # 8-byte Folded Spill
	st.d	$s6, $sp, 248                   # 8-byte Folded Spill
	st.d	$s7, $sp, 240                   # 8-byte Folded Spill
	st.d	$s8, $sp, 232                   # 8-byte Folded Spill
	addi.d	$fp, $sp, 320
	bstrins.d	$sp, $zero, 4, 0
	pcalau12i	$a0, %got_pc_hi20(eNum)
	ld.d	$a0, $a0, %got_pc_lo12(eNum)
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	ld.w	$a1, $a0, 0
	ori	$a0, $zero, 1
	blt	$a1, $a0, .LBB0_7
# %bb.1:                                # %.lr.ph
	pcalau12i	$a2, %got_pc_hi20(eArray)
	ld.d	$a2, $a2, %got_pc_lo12(eArray)
	ld.d	$a2, $a2, 0
	beq	$a1, $a0, .LBB0_5
# %bb.2:                                # %vector.ph
	bstrpick.d	$a0, $a1, 30, 1
	slli.d	$a3, $a0, 1
	ori	$a0, $a1, 1
	addi.d	$a4, $a2, 160
	move	$a5, $a3
	.p2align	4, , 16
.LBB0_3:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	st.d	$zero, $a4, -56
	st.d	$zero, $a4, 0
	addi.d	$a5, $a5, -2
	addi.d	$a4, $a4, 112
	bnez	$a5, .LBB0_3
# %bb.4:                                # %middle.block
	beq	$a3, $a1, .LBB0_7
.LBB0_5:                                # %scalar.ph.preheader
	addi.d	$a1, $a1, 1
	bstrpick.d	$a3, $a1, 31, 0
	ori	$a1, $zero, 56
	mul.d	$a1, $a0, $a1
	add.d	$a1, $a1, $a2
	addi.d	$a1, $a1, 48
	sub.d	$a0, $a3, $a0
	.p2align	4, , 16
.LBB0_6:                                # %scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	st.d	$zero, $a1, 0
	addi.d	$a0, $a0, -1
	addi.d	$a1, $a1, 56
	bnez	$a0, .LBB0_6
.LBB0_7:                                # %.preheader300
	pcalau12i	$a0, %got_pc_hi20(largestNet)
	ld.d	$a0, $a0, %got_pc_lo12(largestNet)
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	ld.w	$a0, $a0, 0
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB0_16
# %bb.8:                                # %.lr.ph311.preheader
	pcalau12i	$a2, %got_pc_hi20(netRoutes)
	ld.d	$a2, $a2, %got_pc_lo12(netRoutes)
	st.d	$a2, $sp, 72                    # 8-byte Folded Spill
	pcalau12i	$a2, %got_pc_hi20(eIndexArray)
	ld.d	$s4, $a2, %got_pc_lo12(eIndexArray)
	pcalau12i	$a2, %got_pc_hi20(eArray)
	ld.d	$s5, $a2, %got_pc_lo12(eArray)
	ori	$s6, $zero, 56
	ori	$s7, $zero, 12
	ori	$s8, $zero, 8
	addi.w	$s0, $zero, -1
	b	.LBB0_11
	.p2align	4, , 16
.LBB0_9:                                # %._crit_edge.loopexit
                                        #   in Loop: Header=BB0_11 Depth=1
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	ld.d	$a4, $sp, 88                    # 8-byte Folded Reload
.LBB0_10:                               # %._crit_edge
                                        #   in Loop: Header=BB0_11 Depth=1
	addi.d	$a1, $a4, 1
	bge	$a4, $a0, .LBB0_16
.LBB0_11:                               # %.lr.ph311
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_14 Depth 2
	ld.d	$a2, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a2, $a2, 0
	move	$a4, $a1
	slli.d	$a1, $a1, 4
	alsl.d	$a1, $a4, $a1, 3
	add.d	$a3, $a2, $a1
	ld.w	$a3, $a3, 12
	ldx.d	$a1, $a2, $a1
	slli.d	$a2, $a3, 3
	ldx.d	$a1, $a1, $a2
	ld.d	$s1, $a1, 16
	beqz	$s1, .LBB0_10
# %bb.12:                               # %.lr.ph308.preheader
                                        #   in Loop: Header=BB0_11 Depth=1
	st.d	$a4, $sp, 88                    # 8-byte Folded Spill
	ld.d	$a0, $s4, 0
	ld.d	$a2, $s5, 0
	b	.LBB0_14
	.p2align	4, , 16
.LBB0_13:                               #   in Loop: Header=BB0_14 Depth=2
	ld.d	$s1, $s1, 16
	beqz	$s1, .LBB0_9
.LBB0_14:                               # %.lr.ph308
                                        #   Parent Loop BB0_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a1, $s1, 0
	slli.d	$a3, $a1, 3
	ld.w	$a4, $s1, 4
	ldx.d	$a3, $a0, $a3
	slli.d	$a4, $a4, 2
	ldx.w	$a3, $a3, $a4
	mul.d	$s2, $a3, $s6
	ldx.w	$a4, $a2, $s2
	add.d	$a3, $a2, $s2
	xor	$a1, $a1, $a4
	sltui	$a1, $a1, 1
	ld.w	$a4, $a3, 20
	masknez	$a5, $s7, $a1
	maskeqz	$a6, $s8, $a1
	or	$a5, $a6, $a5
	masknez	$a6, $s8, $a1
	maskeqz	$a1, $s7, $a1
	or	$a1, $a1, $a6
	ldx.w	$a6, $s1, $a1
	ldx.w	$a1, $s1, $a5
	sub.w	$s3, $a4, $a6
	bge	$a1, $s3, .LBB0_13
# %bb.15:                               #   in Loop: Header=BB0_14 Depth=2
	addi.d	$a0, $a3, 48
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(tinsert)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, 0
	add.d	$a0, $a0, $s2
	addi.d	$a0, $a0, 48
	addi.w	$a1, $s3, 1
	move	$a2, $s0
	pcaddu18i	$ra, %call36(tinsert)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s4, 0
	ld.d	$a2, $s5, 0
	b	.LBB0_13
.LBB0_16:                               # %._crit_edge312
	pcalau12i	$a0, %got_pc_hi20(fpo)
	ld.d	$s4, $a0, %got_pc_lo12(fpo)
	ld.d	$a3, $s4, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	ori	$a1, $zero, 19
	ori	$a2, $zero, 1
	ori	$s5, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 19
	ori	$a0, $a0, 2184
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	ld.w	$a1, $a1, 0
	move	$s0, $a0
	blt	$a1, $s5, .LBB0_31
# %bb.17:                               # %.lr.ph327
	pcalau12i	$a0, %got_pc_hi20(eArray)
	ld.d	$s6, $a0, %got_pc_lo12(eArray)
	addi.d	$s7, $s0, 8
	ld.d	$a0, $s6, 0
	ori	$s8, $zero, 56
	pcalau12i	$a1, %pc_hi20(.L.str.1)
	addi.d	$s1, $a1, %pc_lo12(.L.str.1)
	ori	$a1, $zero, 1
	b	.LBB0_19
	.p2align	4, , 16
.LBB0_18:                               #   in Loop: Header=BB0_19 Depth=1
	ld.d	$a0, $s4, 0
	ld.w	$a3, $a1, 0
	ld.w	$a4, $a1, 4
	st.w	$a5, $a1, 40
	move	$a1, $s1
	move	$a2, $s2
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s6, 0
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	ld.w	$a2, $a1, 0
	addi.d	$a1, $s2, 1
	bge	$s2, $a2, .LBB0_31
.LBB0_19:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_23 Depth 2
                                        #       Child Loop BB0_28 Depth 3
	move	$s2, $a1
	mul.d	$a1, $a1, $s8
	add.d	$a1, $a0, $a1
	ld.d	$a3, $a1, 48
	beqz	$a3, .LBB0_30
# %bb.20:                               #   in Loop: Header=BB0_19 Depth=1
	move	$a4, $zero
	move	$a5, $zero
	move	$a2, $zero
	move	$a0, $zero
	st.d	$a3, $s0, 0
	b	.LBB0_23
	.p2align	4, , 16
.LBB0_21:                               #   in Loop: Header=BB0_23 Depth=2
	addi.w	$a2, $a2, 3
	slli.d	$a6, $a2, 3
	stx.d	$a4, $s0, $a6
.LBB0_22:                               #   in Loop: Header=BB0_23 Depth=2
	addi.d	$a4, $a3, 1
	bge	$a3, $a2, .LBB0_18
.LBB0_23:                               #   Parent Loop BB0_19 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_28 Depth 3
	move	$a3, $a4
	slli.d	$a4, $a4, 3
	ldx.d	$a4, $s0, $a4
	ld.w	$a6, $a4, 4
	blt	$a6, $s5, .LBB0_26
# %bb.24:                               #   in Loop: Header=BB0_23 Depth=2
	ld.d	$a6, $a4, 8
	slli.d	$a7, $a2, 3
	ld.d	$t0, $a4, 16
	ld.d	$a4, $a4, 24
	stx.d	$a6, $s7, $a7
	addi.w	$a6, $a2, 2
	slli.d	$a7, $a6, 3
	stx.d	$t0, $s0, $a7
	bnez	$a4, .LBB0_21
# %bb.25:                               #   in Loop: Header=BB0_23 Depth=2
	move	$a2, $a6
	b	.LBB0_22
	.p2align	4, , 16
.LBB0_26:                               #   in Loop: Header=BB0_23 Depth=2
	ld.d	$a4, $a4, 56
	beqz	$a4, .LBB0_29
# %bb.27:                               # %.lr.ph318
                                        #   in Loop: Header=BB0_23 Depth=2
	ld.w	$a6, $a4, 0
	.p2align	4, , 16
.LBB0_28:                               #   Parent Loop BB0_19 Depth=1
                                        #     Parent Loop BB0_23 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a4, $a4, 8
	add.w	$a0, $a0, $a6
	bnez	$a4, .LBB0_28
.LBB0_29:                               # %._crit_edge319
                                        #   in Loop: Header=BB0_23 Depth=2
	slt	$a4, $a5, $a0
	masknez	$a5, $a5, $a4
	maskeqz	$a4, $a0, $a4
	or	$a5, $a4, $a5
	b	.LBB0_22
	.p2align	4, , 16
.LBB0_30:                               #   in Loop: Header=BB0_19 Depth=1
	st.w	$zero, $a1, 40
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	ld.w	$a2, $a1, 0
	addi.d	$a1, $s2, 1
	blt	$s2, $a2, .LBB0_19
.LBB0_31:                               # %._crit_edge328
	move	$a0, $s0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(numXnodes)
	ld.d	$a0, $a0, %got_pc_lo12(numXnodes)
	ld.w	$a4, $a0, 0
	ori	$a0, $zero, 1
	addi.d	$a5, $a4, 1
	blt	$a4, $a0, .LBB0_54
# %bb.32:                               # %.lr.ph343
	pcalau12i	$a1, %got_pc_hi20(xNodeArray)
	ld.d	$a1, $a1, %got_pc_lo12(xNodeArray)
	pcalau12i	$a2, %got_pc_hi20(eArray)
	ld.d	$a2, $a2, %got_pc_lo12(eArray)
	pcalau12i	$a3, %got_pc_hi20(defaultTracks)
	ld.d	$a3, $a3, %got_pc_lo12(defaultTracks)
	pcalau12i	$a6, %got_pc_hi20(pitch)
	ld.d	$a6, $a6, %got_pc_lo12(pitch)
	ld.d	$a1, $a1, 0
	ld.w	$t0, $a3, 0
	ld.d	$a2, $a2, 0
	ld.w	$a3, $a6, 0
	addi.d	$a6, $t0, 2
	bstrpick.d	$a7, $a5, 31, 0
	blez	$t0, .LBB0_44
# %bb.33:                               # %.lr.ph343.split.us.preheader
	addi.d	$t0, $t0, 1
	mul.d	$t0, $a3, $t0
	ori	$t1, $zero, 1
	ori	$t2, $zero, 56
	ori	$t3, $zero, 1
	b	.LBB0_35
	.p2align	4, , 16
.LBB0_34:                               # %._crit_edge339.split.us.us
                                        #   in Loop: Header=BB0_35 Depth=1
	addi.d	$t3, $t3, 1
	beq	$t3, $a7, .LBB0_54
.LBB0_35:                               # %.lr.ph343.split.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_38 Depth 2
                                        #       Child Loop BB0_41 Depth 3
	slli.d	$t4, $t3, 3
	ldx.d	$t4, $a1, $t4
	bnez	$t4, .LBB0_38
	b	.LBB0_34
	.p2align	4, , 16
.LBB0_36:                               # %.sink.split
                                        #   in Loop: Header=BB0_38 Depth=2
	st.w	$t8, $t4, 16
.LBB0_37:                               #   in Loop: Header=BB0_38 Depth=2
	ld.d	$t4, $t4, 24
	beqz	$t4, .LBB0_34
.LBB0_38:                               # %.lr.ph338.us
                                        #   Parent Loop BB0_35 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_41 Depth 3
	ld.w	$t5, $t4, 0
	beq	$t5, $t1, .LBB0_37
# %bb.39:                               #   in Loop: Header=BB0_38 Depth=2
	ld.d	$t6, $t4, 8
	st.w	$zero, $t4, 16
	ld.w	$t7, $t6, 0
	move	$t8, $t0
	blt	$t7, $t1, .LBB0_36
# %bb.40:                               # %.lr.ph332.us.us
                                        #   in Loop: Header=BB0_38 Depth=2
	move	$t5, $zero
	addi.d	$t7, $t7, 1
	bstrpick.d	$t7, $t7, 31, 0
	addi.d	$t6, $t6, 4
	addi.d	$t7, $t7, -1
	.p2align	4, , 16
.LBB0_41:                               #   Parent Loop BB0_35 Depth=1
                                        #     Parent Loop BB0_38 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$t8, $t6, 0
	mul.d	$t8, $t8, $t2
	add.d	$t8, $a2, $t8
	ld.w	$t8, $t8, 40
	add.w	$t5, $t5, $t8
	st.w	$t5, $t4, 16
	addi.d	$t7, $t7, -1
	addi.d	$t6, $t6, 4
	bnez	$t7, .LBB0_41
# %bb.42:                               # %._crit_edge333.us.us
                                        #   in Loop: Header=BB0_38 Depth=2
	move	$t8, $t0
	blt	$t5, $t1, .LBB0_36
# %bb.43:                               #   in Loop: Header=BB0_38 Depth=2
	add.d	$t5, $t5, $a6
	mul.d	$t8, $t5, $a3
	b	.LBB0_36
.LBB0_44:                               # %.lr.ph343.split.preheader
	ori	$t0, $zero, 1
	ori	$t1, $zero, 56
	ori	$t2, $zero, 1
	b	.LBB0_46
	.p2align	4, , 16
.LBB0_45:                               # %._crit_edge339.split
                                        #   in Loop: Header=BB0_46 Depth=1
	addi.d	$t2, $t2, 1
	beq	$t2, $a7, .LBB0_54
.LBB0_46:                               # %.lr.ph343.split
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_48 Depth 2
                                        #       Child Loop BB0_51 Depth 3
	slli.d	$t3, $t2, 3
	ldx.d	$t3, $a1, $t3
	bnez	$t3, .LBB0_48
	b	.LBB0_45
	.p2align	4, , 16
.LBB0_47:                               # %._crit_edge333.thread
                                        #   in Loop: Header=BB0_48 Depth=2
	ld.d	$t3, $t3, 24
	beqz	$t3, .LBB0_45
.LBB0_48:                               # %.lr.ph338
                                        #   Parent Loop BB0_46 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_51 Depth 3
	ld.w	$t4, $t3, 0
	beq	$t4, $t0, .LBB0_47
# %bb.49:                               #   in Loop: Header=BB0_48 Depth=2
	ld.d	$t5, $t3, 8
	st.w	$zero, $t3, 16
	ld.w	$t6, $t5, 0
	blt	$t6, $t0, .LBB0_47
# %bb.50:                               # %.lr.ph332
                                        #   in Loop: Header=BB0_48 Depth=2
	move	$t4, $zero
	addi.d	$t6, $t6, 1
	bstrpick.d	$t6, $t6, 31, 0
	addi.d	$t5, $t5, 4
	addi.d	$t6, $t6, -1
	.p2align	4, , 16
.LBB0_51:                               #   Parent Loop BB0_46 Depth=1
                                        #     Parent Loop BB0_48 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$t7, $t5, 0
	mul.d	$t7, $t7, $t1
	add.d	$t7, $a2, $t7
	ld.w	$t7, $t7, 40
	add.w	$t4, $t4, $t7
	st.w	$t4, $t3, 16
	addi.d	$t6, $t6, -1
	addi.d	$t5, $t5, 4
	bnez	$t6, .LBB0_51
# %bb.52:                               # %._crit_edge333
                                        #   in Loop: Header=BB0_48 Depth=2
	blt	$t4, $t0, .LBB0_47
# %bb.53:                               #   in Loop: Header=BB0_48 Depth=2
	add.d	$t4, $t4, $a6
	mul.d	$t4, $t4, $a3
	st.w	$t4, $t3, 16
	b	.LBB0_47
.LBB0_54:                               # %.preheader299
	pcalau12i	$a1, %got_pc_hi20(numYnodes)
	ld.d	$a1, $a1, %got_pc_lo12(numYnodes)
	ld.w	$a1, $a1, 0
	addi.d	$a2, $a1, 1
	st.d	$a1, $sp, 8                     # 8-byte Folded Spill
	blt	$a1, $a0, .LBB0_77
# %bb.55:                               # %.lr.ph362
	pcalau12i	$a0, %got_pc_hi20(yNodeArray)
	ld.d	$a0, $a0, %got_pc_lo12(yNodeArray)
	pcalau12i	$a1, %got_pc_hi20(eArray)
	ld.d	$a3, $a1, %got_pc_lo12(eArray)
	pcalau12i	$a1, %got_pc_hi20(defaultTracks)
	ld.d	$a1, $a1, %got_pc_lo12(defaultTracks)
	pcalau12i	$a6, %got_pc_hi20(pitch)
	ld.d	$a6, $a6, %got_pc_lo12(pitch)
	ld.d	$a0, $a0, 0
	ld.w	$a1, $a1, 0
	ld.d	$a3, $a3, 0
	ld.w	$a6, $a6, 0
	addi.d	$a7, $a1, 2
	bstrpick.d	$t0, $a2, 31, 0
	blez	$a1, .LBB0_67
# %bb.56:                               # %.lr.ph362.split.us.preheader
	addi.d	$a1, $a1, 1
	mul.d	$t1, $a6, $a1
	ori	$t2, $zero, 1
	ori	$t3, $zero, 56
	ori	$t4, $zero, 1
	b	.LBB0_58
	.p2align	4, , 16
.LBB0_57:                               # %._crit_edge356.split.us.us
                                        #   in Loop: Header=BB0_58 Depth=1
	addi.d	$t4, $t4, 1
	beq	$t4, $t0, .LBB0_77
.LBB0_58:                               # %.lr.ph362.split.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_61 Depth 2
                                        #       Child Loop BB0_64 Depth 3
	slli.d	$a1, $t4, 3
	ldx.d	$t5, $a0, $a1
	bnez	$t5, .LBB0_61
	b	.LBB0_57
	.p2align	4, , 16
.LBB0_59:                               # %.sink.split483
                                        #   in Loop: Header=BB0_61 Depth=2
	st.w	$t8, $t5, 16
.LBB0_60:                               #   in Loop: Header=BB0_61 Depth=2
	ld.d	$t5, $t5, 24
	beqz	$t5, .LBB0_57
.LBB0_61:                               # %.lr.ph355.us
                                        #   Parent Loop BB0_58 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_64 Depth 3
	ld.w	$a1, $t5, 0
	beq	$a1, $t2, .LBB0_60
# %bb.62:                               #   in Loop: Header=BB0_61 Depth=2
	ld.d	$t6, $t5, 8
	st.w	$zero, $t5, 16
	ld.w	$t7, $t6, 0
	move	$t8, $t1
	blt	$t7, $t2, .LBB0_59
# %bb.63:                               # %.lr.ph348.us.us
                                        #   in Loop: Header=BB0_61 Depth=2
	move	$a1, $zero
	addi.d	$t7, $t7, 1
	bstrpick.d	$t7, $t7, 31, 0
	addi.d	$t6, $t6, 4
	addi.d	$t7, $t7, -1
	.p2align	4, , 16
.LBB0_64:                               #   Parent Loop BB0_58 Depth=1
                                        #     Parent Loop BB0_61 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$t8, $t6, 0
	mul.d	$t8, $t8, $t3
	add.d	$t8, $a3, $t8
	ld.w	$t8, $t8, 40
	add.w	$a1, $a1, $t8
	st.w	$a1, $t5, 16
	addi.d	$t7, $t7, -1
	addi.d	$t6, $t6, 4
	bnez	$t7, .LBB0_64
# %bb.65:                               # %._crit_edge349.us.us
                                        #   in Loop: Header=BB0_61 Depth=2
	move	$t8, $t1
	blt	$a1, $t2, .LBB0_59
# %bb.66:                               #   in Loop: Header=BB0_61 Depth=2
	add.d	$a1, $a1, $a7
	mul.d	$t8, $a1, $a6
	b	.LBB0_59
.LBB0_67:                               # %.lr.ph362.split.preheader
	ori	$t1, $zero, 1
	ori	$t2, $zero, 56
	ori	$t3, $zero, 1
	b	.LBB0_69
	.p2align	4, , 16
.LBB0_68:                               # %._crit_edge356.split
                                        #   in Loop: Header=BB0_69 Depth=1
	addi.d	$t3, $t3, 1
	beq	$t3, $t0, .LBB0_77
.LBB0_69:                               # %.lr.ph362.split
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_71 Depth 2
                                        #       Child Loop BB0_74 Depth 3
	slli.d	$a1, $t3, 3
	ldx.d	$a1, $a0, $a1
	bnez	$a1, .LBB0_71
	b	.LBB0_68
	.p2align	4, , 16
.LBB0_70:                               # %._crit_edge349.thread
                                        #   in Loop: Header=BB0_71 Depth=2
	ld.d	$a1, $a1, 24
	beqz	$a1, .LBB0_68
.LBB0_71:                               # %.lr.ph355
                                        #   Parent Loop BB0_69 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_74 Depth 3
	ld.w	$t4, $a1, 0
	beq	$t4, $t1, .LBB0_70
# %bb.72:                               #   in Loop: Header=BB0_71 Depth=2
	ld.d	$t5, $a1, 8
	st.w	$zero, $a1, 16
	ld.w	$t6, $t5, 0
	blt	$t6, $t1, .LBB0_70
# %bb.73:                               # %.lr.ph348
                                        #   in Loop: Header=BB0_71 Depth=2
	move	$t4, $zero
	addi.d	$t6, $t6, 1
	bstrpick.d	$t6, $t6, 31, 0
	addi.d	$t5, $t5, 4
	addi.d	$t6, $t6, -1
	.p2align	4, , 16
.LBB0_74:                               #   Parent Loop BB0_69 Depth=1
                                        #     Parent Loop BB0_71 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$t7, $t5, 0
	mul.d	$t7, $t7, $t2
	add.d	$t7, $a3, $t7
	ld.w	$t7, $t7, 40
	add.w	$t4, $t4, $t7
	st.w	$t4, $a1, 16
	addi.d	$t6, $t6, -1
	addi.d	$t5, $t5, 4
	bnez	$t6, .LBB0_74
# %bb.75:                               # %._crit_edge349
                                        #   in Loop: Header=BB0_71 Depth=2
	blt	$t4, $t1, .LBB0_70
# %bb.76:                               #   in Loop: Header=BB0_71 Depth=2
	add.d	$t4, $t4, $a7
	mul.d	$t4, $t4, $a6
	st.w	$t4, $a1, 16
	b	.LBB0_70
.LBB0_77:                               # %.preheader298
	st.d	$a2, $sp, 0                     # 8-byte Folded Spill
	ori	$a6, $zero, 1
	pcalau12i	$a0, %pc_hi20(.LCPI0_0)
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	blt	$a4, $a6, .LBB0_114
# %bb.78:                               # %.lr.ph380
	pcalau12i	$a1, %got_pc_hi20(xNodeArray)
	ld.d	$a1, $a1, %got_pc_lo12(xNodeArray)
	xvrepli.b	$xr0, 0
	ld.d	$a0, $a1, 0
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	bstrpick.d	$a0, $a5, 31, 0
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	pcalau12i	$a1, %got_pc_hi20(eArray)
	ld.d	$a0, $a1, %got_pc_lo12(eArray)
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	pcalau12i	$a1, %got_pc_hi20(edgeList)
	ld.d	$a0, $a1, %got_pc_lo12(edgeList)
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$a1, %got_pc_hi20(cellList)
	ld.d	$a0, $a1, %got_pc_lo12(cellList)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	ori	$t1, $zero, 56
	ori	$a5, $zero, 40
	ori	$a7, $zero, 4
	ori	$t0, $zero, 16
	ori	$a1, $zero, 1
	b	.LBB0_80
	.p2align	4, , 16
.LBB0_79:                               # %._crit_edge377
                                        #   in Loop: Header=BB0_80 Depth=1
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	addi.d	$a1, $a1, 1
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	beq	$a1, $a0, .LBB0_114
.LBB0_80:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_84 Depth 2
                                        #       Child Loop BB0_92 Depth 3
                                        #       Child Loop BB0_98 Depth 3
                                        #       Child Loop BB0_102 Depth 3
                                        #       Child Loop BB0_105 Depth 3
                                        #       Child Loop BB0_111 Depth 3
	st.d	$a1, $sp, 56                    # 8-byte Folded Spill
	slli.d	$a1, $a1, 3
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ldx.d	$t6, $a0, $a1
	beqz	$t6, .LBB0_79
# %bb.81:                               # %.lr.ph376
                                        #   in Loop: Header=BB0_80 Depth=1
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$t7, $a0, 0
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$t8, $a0, 0
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	ld.d	$t2, $a0, 0
	st.d	$t2, $sp, 64                    # 8-byte Folded Spill
	b	.LBB0_84
	.p2align	4, , 16
.LBB0_82:                               #   in Loop: Header=BB0_84 Depth=2
	slli.d	$a0, $s1, 5
	alsl.d	$a0, $s1, $a0, 3
	add.d	$a0, $t8, $a0
	ld.w	$a1, $a0, 12
	st.w	$zero, $s2, 8
	st.w	$a1, $s2, 12
	ld.d	$a0, $a0, 4
	st.d	$a0, $s2, 16
.LBB0_83:                               #   in Loop: Header=BB0_84 Depth=2
	ld.d	$t6, $t6, 24
	beqz	$t6, .LBB0_79
.LBB0_84:                               #   Parent Loop BB0_80 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_92 Depth 3
                                        #       Child Loop BB0_98 Depth 3
                                        #       Child Loop BB0_102 Depth 3
                                        #       Child Loop BB0_105 Depth 3
                                        #       Child Loop BB0_111 Depth 3
	ld.w	$a1, $t6, 0
	beq	$a1, $a6, .LBB0_83
# %bb.85:                               #   in Loop: Header=BB0_84 Depth=2
	ld.d	$s5, $t6, 8
	ld.w	$s6, $s5, 0
	ld.w	$a1, $s5, 4
	slli.d	$s1, $s6, 2
	ldx.w	$s1, $s5, $s1
	mul.d	$a1, $a1, $t1
	add.d	$a1, $t7, $a1
	ld.w	$s3, $a1, 32
	mul.d	$a1, $s1, $t1
	add.d	$a1, $t7, $a1
	ld.w	$s1, $a1, 36
	mul.d	$a1, $s3, $a5
	ldx.w	$s4, $t8, $a1
	mul.d	$a1, $s1, $a5
	ldx.w	$t3, $t8, $a1
	blt	$s6, $a6, .LBB0_88
# %bb.86:                               # %iter.check
                                        #   in Loop: Header=BB0_84 Depth=2
	bgeu	$s6, $a7, .LBB0_89
# %bb.87:                               #   in Loop: Header=BB0_84 Depth=2
	move	$ra, $zero
	ori	$s8, $zero, 1
	b	.LBB0_101
.LBB0_88:                               #   in Loop: Header=BB0_84 Depth=2
	move	$ra, $zero
	b	.LBB0_103
.LBB0_89:                               # %vector.main.loop.iter.check
                                        #   in Loop: Header=BB0_84 Depth=2
	bgeu	$s6, $t0, .LBB0_91
# %bb.90:                               #   in Loop: Header=BB0_84 Depth=2
	move	$a3, $zero
	move	$ra, $zero
	b	.LBB0_97
.LBB0_91:                               # %vector.ph497
                                        #   in Loop: Header=BB0_84 Depth=2
	st.d	$t3, $sp, 80                    # 8-byte Folded Spill
	bstrpick.d	$a1, $s6, 30, 4
	slli.d	$ra, $a1, 4
	addi.d	$s8, $s5, 36
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	xvori.b	$xr1, $xr0, 0
	xvori.b	$xr2, $xr0, 0
	.p2align	4, , 16
.LBB0_92:                               # %vector.body500
                                        #   Parent Loop BB0_80 Depth=1
                                        #     Parent Loop BB0_84 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	xvld	$xr3, $s8, -32
	xvld	$xr4, $s8, 0
	xvst	$xr3, $sp, 192
	vld	$vr3, $sp, 208
	vpickve2gr.w	$a1, $vr3, 3
	vld	$vr5, $sp, 192
	vpickve2gr.w	$a2, $vr3, 2
	vpickve2gr.w	$a6, $vr3, 1
	vpickve2gr.w	$a7, $vr3, 0
	vpickve2gr.w	$t0, $vr5, 3
	xvst	$xr4, $sp, 160
	vld	$vr3, $sp, 176
	vpickve2gr.w	$a4, $vr5, 2
	vpickve2gr.w	$a5, $vr5, 1
	vpickve2gr.w	$t4, $vr5, 0
	vpickve2gr.w	$a0, $vr3, 3
	vld	$vr4, $sp, 160
	vpickve2gr.w	$t3, $vr3, 2
	vpickve2gr.w	$t5, $vr3, 1
	vpickve2gr.w	$t2, $vr3, 0
	vpickve2gr.w	$s0, $vr4, 3
	vpickve2gr.w	$s7, $vr4, 2
	vpickve2gr.w	$a3, $vr4, 1
	vpickve2gr.w	$s2, $vr4, 0
	mul.d	$t4, $t4, $t1
	add.d	$t4, $t7, $t4
	mul.d	$a5, $a5, $t1
	add.d	$a5, $t7, $a5
	mul.d	$a4, $a4, $t1
	add.d	$a4, $t7, $a4
	mul.d	$t0, $t0, $t1
	add.d	$t0, $t7, $t0
	mul.d	$a7, $a7, $t1
	add.d	$a7, $t7, $a7
	mul.d	$a6, $a6, $t1
	add.d	$a6, $t7, $a6
	mul.d	$a2, $a2, $t1
	add.d	$a2, $t7, $a2
	mul.d	$a1, $a1, $t1
	add.d	$a1, $t7, $a1
	mul.d	$s2, $s2, $t1
	add.d	$s2, $t7, $s2
	mul.d	$a3, $a3, $t1
	add.d	$a3, $t7, $a3
	mul.d	$s7, $s7, $t1
	add.d	$s7, $t7, $s7
	mul.d	$s0, $s0, $t1
	add.d	$s0, $t7, $s0
	mul.d	$t2, $t2, $t1
	add.d	$t2, $t7, $t2
	mul.d	$t5, $t5, $t1
	add.d	$t5, $t7, $t5
	mul.d	$t3, $t3, $t1
	add.d	$t3, $t7, $t3
	mul.d	$a0, $a0, $t1
	add.d	$a0, $t7, $a0
	ld.w	$t4, $t4, 8
	ld.w	$a5, $a5, 8
	ld.w	$a4, $a4, 8
	ld.w	$t0, $t0, 8
	ld.w	$a7, $a7, 8
	ld.w	$a6, $a6, 8
	ld.w	$a2, $a2, 8
	ld.w	$a1, $a1, 8
	xvinsgr2vr.w	$xr3, $t4, 0
	xvinsgr2vr.w	$xr3, $a5, 1
	xvinsgr2vr.w	$xr3, $a4, 2
	xvinsgr2vr.w	$xr3, $t0, 3
	xvinsgr2vr.w	$xr3, $a7, 4
	xvinsgr2vr.w	$xr3, $a6, 5
	xvinsgr2vr.w	$xr3, $a2, 6
	xvinsgr2vr.w	$xr3, $a1, 7
	ld.w	$a1, $s2, 8
	ld.w	$a2, $a3, 8
	ld.w	$a3, $s7, 8
	ld.w	$a4, $s0, 8
	ld.w	$a5, $t2, 8
	ld.w	$a6, $t5, 8
	ld.w	$a7, $t3, 8
	ld.w	$a0, $a0, 8
	xvinsgr2vr.w	$xr4, $a1, 0
	xvinsgr2vr.w	$xr4, $a2, 1
	xvinsgr2vr.w	$xr4, $a3, 2
	xvinsgr2vr.w	$xr4, $a4, 3
	xvinsgr2vr.w	$xr4, $a5, 4
	xvinsgr2vr.w	$xr4, $a6, 5
	xvinsgr2vr.w	$xr4, $a7, 6
	xvinsgr2vr.w	$xr4, $a0, 7
	xvadd.w	$xr1, $xr3, $xr1
	xvadd.w	$xr2, $xr4, $xr2
	addi.d	$ra, $ra, -16
	addi.d	$s8, $s8, 64
	bnez	$ra, .LBB0_92
# %bb.93:                               # %middle.block505
                                        #   in Loop: Header=BB0_84 Depth=2
	xvadd.w	$xr1, $xr2, $xr1
	xvpermi.d	$xr2, $xr1, 78
	xvshuf4i.w	$xr2, $xr2, 228
	xvadd.w	$xr1, $xr1, $xr2
	xvpermi.d	$xr2, $xr1, 68
	xvshuf4i.w	$xr2, $xr2, 14
	xvadd.w	$xr1, $xr1, $xr2
	xvpermi.d	$xr2, $xr1, 68
	xvrepl128vei.w	$xr2, $xr2, 1
	xvadd.w	$xr1, $xr1, $xr2
	xvpickve2gr.w	$ra, $xr1, 0
	ld.d	$a3, $sp, 72                    # 8-byte Folded Reload
	bne	$a3, $s6, .LBB0_95
# %bb.94:                               #   in Loop: Header=BB0_84 Depth=2
	ori	$a6, $zero, 1
	ori	$a5, $zero, 40
	ori	$a7, $zero, 4
	ori	$t0, $zero, 16
	ld.d	$t2, $sp, 64                    # 8-byte Folded Reload
	ld.d	$t3, $sp, 80                    # 8-byte Folded Reload
	b	.LBB0_103
.LBB0_95:                               # %vec.epilog.iter.check
                                        #   in Loop: Header=BB0_84 Depth=2
	andi	$a0, $s6, 12
	ori	$a6, $zero, 1
	ori	$a5, $zero, 40
	ori	$a7, $zero, 4
	ld.d	$t2, $sp, 64                    # 8-byte Folded Reload
	ld.d	$t3, $sp, 80                    # 8-byte Folded Reload
	beqz	$a0, .LBB0_100
# %bb.96:                               #   in Loop: Header=BB0_84 Depth=2
	ori	$t0, $zero, 16
.LBB0_97:                               # %vec.epilog.ph
                                        #   in Loop: Header=BB0_84 Depth=2
	bstrpick.d	$a0, $s6, 30, 2
	slli.d	$a1, $a0, 2
	srli.d	$a0, $s6, 2
	ori	$s8, $zero, 1
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
	vld	$vr1, $a2, %pc_lo12(.LCPI0_0)
	bstrins.d	$s8, $a0, 30, 2
	vinsgr2vr.w	$vr2, $ra, 0
	vinsgr2vr.w	$vr3, $zero, 0
	vshuf.w	$vr1, $vr3, $vr2
	alsl.d	$a0, $a3, $s5, 2
	addi.d	$ra, $a0, 4
	sub.d	$s7, $a3, $a1
	.p2align	4, , 16
.LBB0_98:                               # %vec.epilog.vector.body
                                        #   Parent Loop BB0_80 Depth=1
                                        #     Parent Loop BB0_84 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	vld	$vr2, $ra, 0
	vpickve2gr.w	$a0, $vr2, 3
	vpickve2gr.w	$a2, $vr2, 2
	vpickve2gr.w	$a3, $vr2, 1
	vpickve2gr.w	$a4, $vr2, 0
	mul.d	$a4, $a4, $t1
	add.d	$a4, $t7, $a4
	mul.d	$a3, $a3, $t1
	add.d	$a3, $t7, $a3
	mul.d	$a2, $a2, $t1
	add.d	$a2, $t7, $a2
	mul.d	$a0, $a0, $t1
	add.d	$a0, $t7, $a0
	ld.w	$a4, $a4, 8
	ld.w	$a3, $a3, 8
	ld.w	$a2, $a2, 8
	ld.w	$a0, $a0, 8
	vinsgr2vr.w	$vr2, $a4, 0
	vinsgr2vr.w	$vr2, $a3, 1
	vinsgr2vr.w	$vr2, $a2, 2
	vinsgr2vr.w	$vr2, $a0, 3
	vadd.w	$vr1, $vr2, $vr1
	addi.d	$s7, $s7, 4
	addi.d	$ra, $ra, 16
	bnez	$s7, .LBB0_98
# %bb.99:                               # %vec.epilog.middle.block
                                        #   in Loop: Header=BB0_84 Depth=2
	vshuf4i.w	$vr2, $vr1, 14
	vadd.w	$vr1, $vr1, $vr2
	vreplvei.w	$vr2, $vr1, 1
	vadd.w	$vr1, $vr1, $vr2
	vpickve2gr.w	$ra, $vr1, 0
	bne	$a1, $s6, .LBB0_101
	b	.LBB0_103
.LBB0_100:                              #   in Loop: Header=BB0_84 Depth=2
	addi.d	$s8, $a3, 1
	ori	$t0, $zero, 16
	.p2align	4, , 16
.LBB0_101:                              # %.lr.ph369.preheader
                                        #   in Loop: Header=BB0_84 Depth=2
	addi.d	$a0, $s6, 1
	bstrpick.d	$a0, $a0, 31, 0
	alsl.d	$a1, $s8, $s5, 2
	sub.d	$s5, $a0, $s8
	.p2align	4, , 16
.LBB0_102:                              # %.lr.ph369
                                        #   Parent Loop BB0_80 Depth=1
                                        #     Parent Loop BB0_84 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$a0, $a1, 0
	mul.d	$a0, $a0, $t1
	add.d	$a0, $t7, $a0
	ld.w	$a0, $a0, 8
	add.d	$ra, $a0, $ra
	addi.d	$s5, $s5, -1
	addi.d	$a1, $a1, 4
	bnez	$s5, .LBB0_102
.LBB0_103:                              # %._crit_edge370
                                        #   in Loop: Header=BB0_84 Depth=2
	ld.wu	$s5, $t6, 16
	srli.d	$a0, $s5, 31
	add.w	$a0, $s5, $a0
	srai.d	$s6, $a0, 1
	sub.w	$a1, $ra, $s5
	blt	$s4, $a6, .LBB0_109
# %bb.104:                              #   in Loop: Header=BB0_84 Depth=2
	alsl.d	$s7, $s4, $t2, 3
	.p2align	4, , 16
.LBB0_105:                              #   Parent Loop BB0_80 Depth=1
                                        #     Parent Loop BB0_84 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$s4, $s7, 0
	ld.w	$a0, $s4, 0
	addi.d	$s7, $s4, 32
	bne	$a0, $s3, .LBB0_105
# %bb.106:                              #   in Loop: Header=BB0_84 Depth=2
	ld.w	$a0, $s4, 24
	bge	$a1, $a0, .LBB0_108
# %bb.107:                              #   in Loop: Header=BB0_84 Depth=2
	st.w	$a1, $s4, 24
	st.w	$s6, $s4, 4
.LBB0_108:                              #   in Loop: Header=BB0_84 Depth=2
	slli.d	$a0, $s3, 5
	alsl.d	$a0, $s3, $a0, 3
	add.d	$a0, $t8, $a0
	ld.w	$a2, $a0, 12
	st.w	$zero, $s4, 8
	st.w	$a2, $s4, 12
	ld.d	$a0, $a0, 4
	st.d	$a0, $s4, 16
.LBB0_109:                              #   in Loop: Header=BB0_84 Depth=2
	blt	$t3, $a6, .LBB0_83
# %bb.110:                              #   in Loop: Header=BB0_84 Depth=2
	sub.d	$s3, $s5, $s6
	alsl.d	$s4, $t3, $t2, 3
	.p2align	4, , 16
.LBB0_111:                              #   Parent Loop BB0_80 Depth=1
                                        #     Parent Loop BB0_84 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$s2, $s4, 0
	ld.w	$a0, $s2, 0
	addi.d	$s4, $s2, 32
	bne	$a0, $s1, .LBB0_111
# %bb.112:                              #   in Loop: Header=BB0_84 Depth=2
	ld.w	$a0, $s2, 24
	bge	$a1, $a0, .LBB0_82
# %bb.113:                              #   in Loop: Header=BB0_84 Depth=2
	st.w	$a1, $s2, 24
	st.w	$s3, $s2, 4
	b	.LBB0_82
.LBB0_114:                              # %.preheader297
	ori	$t0, $zero, 1
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	blt	$a0, $t0, .LBB0_151
# %bb.115:                              # %.lr.ph396
	pcalau12i	$a1, %got_pc_hi20(yNodeArray)
	ld.d	$a1, $a1, %got_pc_lo12(yNodeArray)
	ld.d	$a0, $a1, 0
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 0                     # 8-byte Folded Reload
	bstrpick.d	$a0, $a0, 31, 0
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	pcalau12i	$a4, %got_pc_hi20(eArray)
	ld.d	$a0, $a4, %got_pc_lo12(eArray)
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	pcalau12i	$a5, %got_pc_hi20(edgeList)
	ld.d	$a0, $a5, %got_pc_lo12(edgeList)
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$a6, %got_pc_hi20(cellList)
	ld.d	$a0, $a6, %got_pc_lo12(cellList)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	ori	$a7, $zero, 56
	ori	$a4, $zero, 40
	ori	$a5, $zero, 4
	ori	$a6, $zero, 16
	xvrepli.b	$xr0, 0
	ori	$a1, $zero, 1
	b	.LBB0_117
	.p2align	4, , 16
.LBB0_116:                              # %._crit_edge393
                                        #   in Loop: Header=BB0_117 Depth=1
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	addi.d	$a1, $a1, 1
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	beq	$a1, $a0, .LBB0_151
.LBB0_117:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_121 Depth 2
                                        #       Child Loop BB0_129 Depth 3
                                        #       Child Loop BB0_135 Depth 3
                                        #       Child Loop BB0_139 Depth 3
                                        #       Child Loop BB0_142 Depth 3
                                        #       Child Loop BB0_148 Depth 3
	st.d	$a1, $sp, 56                    # 8-byte Folded Spill
	slli.d	$a0, $a1, 3
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	ldx.d	$t4, $a1, $a0
	beqz	$t4, .LBB0_116
# %bb.118:                              # %.lr.ph392
                                        #   in Loop: Header=BB0_117 Depth=1
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$t5, $a0, 0
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$t6, $a0, 0
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	ld.d	$t1, $a0, 0
	st.d	$t1, $sp, 64                    # 8-byte Folded Spill
	b	.LBB0_121
	.p2align	4, , 16
.LBB0_119:                              #   in Loop: Header=BB0_121 Depth=2
	slli.d	$a0, $t8, 5
	alsl.d	$a0, $t8, $a0, 3
	add.d	$a0, $t6, $a0
	ld.w	$a1, $a0, 12
	st.w	$t0, $s0, 8
	st.w	$a1, $s0, 12
	ld.d	$a0, $a0, 4
	st.d	$a0, $s0, 16
.LBB0_120:                              #   in Loop: Header=BB0_121 Depth=2
	ld.d	$t4, $t4, 24
	beqz	$t4, .LBB0_116
.LBB0_121:                              #   Parent Loop BB0_117 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_129 Depth 3
                                        #       Child Loop BB0_135 Depth 3
                                        #       Child Loop BB0_139 Depth 3
                                        #       Child Loop BB0_142 Depth 3
                                        #       Child Loop BB0_148 Depth 3
	ld.w	$a0, $t4, 0
	beq	$a0, $t0, .LBB0_120
# %bb.122:                              #   in Loop: Header=BB0_121 Depth=2
	ld.d	$s3, $t4, 8
	ld.w	$s4, $s3, 0
	ld.w	$a0, $s3, 4
	slli.d	$t8, $s4, 2
	ldx.w	$t8, $s3, $t8
	mul.d	$a0, $a0, $a7
	add.d	$a0, $t5, $a0
	ld.w	$s1, $a0, 32
	mul.d	$a0, $t8, $a7
	add.d	$a0, $t5, $a0
	ld.w	$t8, $a0, 36
	mul.d	$a0, $s1, $a4
	ldx.w	$s2, $t6, $a0
	mul.d	$a0, $t8, $a4
	ldx.w	$t2, $t6, $a0
	blt	$s4, $t0, .LBB0_125
# %bb.123:                              # %iter.check520
                                        #   in Loop: Header=BB0_121 Depth=2
	bgeu	$s4, $a5, .LBB0_126
# %bb.124:                              #   in Loop: Header=BB0_121 Depth=2
	move	$s7, $zero
	ori	$s6, $zero, 1
	b	.LBB0_138
.LBB0_125:                              #   in Loop: Header=BB0_121 Depth=2
	move	$s7, $zero
	b	.LBB0_140
.LBB0_126:                              # %vector.main.loop.iter.check522
                                        #   in Loop: Header=BB0_121 Depth=2
	bgeu	$s4, $a6, .LBB0_128
# %bb.127:                              #   in Loop: Header=BB0_121 Depth=2
	move	$a2, $zero
	move	$s7, $zero
	b	.LBB0_134
.LBB0_128:                              # %vector.ph523
                                        #   in Loop: Header=BB0_121 Depth=2
	st.d	$t2, $sp, 80                    # 8-byte Folded Spill
	bstrpick.d	$a0, $s4, 30, 4
	slli.d	$s7, $a0, 4
	addi.d	$s6, $s3, 36
	st.d	$s7, $sp, 72                    # 8-byte Folded Spill
	xvori.b	$xr1, $xr0, 0
	xvori.b	$xr2, $xr0, 0
	.p2align	4, , 16
.LBB0_129:                              # %vector.body526
                                        #   Parent Loop BB0_117 Depth=1
                                        #     Parent Loop BB0_121 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	xvld	$xr3, $s6, -32
	xvld	$xr4, $s6, 0
	xvst	$xr3, $sp, 128
	vld	$vr3, $sp, 144
	vpickve2gr.w	$a0, $vr3, 3
	vld	$vr5, $sp, 128
	vpickve2gr.w	$s8, $vr3, 2
	vpickve2gr.w	$ra, $vr3, 1
	vpickve2gr.w	$a4, $vr3, 0
	vpickve2gr.w	$a5, $vr5, 3
	xvst	$xr4, $sp, 96
	vld	$vr3, $sp, 112
	vpickve2gr.w	$a6, $vr5, 2
	vpickve2gr.w	$a2, $vr5, 1
	vpickve2gr.w	$a1, $vr5, 0
	vpickve2gr.w	$t2, $vr3, 3
	vld	$vr4, $sp, 96
	vpickve2gr.w	$t1, $vr3, 2
	vpickve2gr.w	$t3, $vr3, 1
	vpickve2gr.w	$t0, $vr3, 0
	vpickve2gr.w	$t7, $vr4, 3
	vpickve2gr.w	$s5, $vr4, 2
	vpickve2gr.w	$a3, $vr4, 1
	vpickve2gr.w	$s0, $vr4, 0
	mul.d	$a1, $a1, $a7
	add.d	$a1, $t5, $a1
	mul.d	$a2, $a2, $a7
	add.d	$a2, $t5, $a2
	mul.d	$a6, $a6, $a7
	add.d	$a6, $t5, $a6
	mul.d	$a5, $a5, $a7
	add.d	$a5, $t5, $a5
	mul.d	$a4, $a4, $a7
	add.d	$a4, $t5, $a4
	mul.d	$ra, $ra, $a7
	add.d	$ra, $t5, $ra
	mul.d	$s8, $s8, $a7
	add.d	$s8, $t5, $s8
	mul.d	$a0, $a0, $a7
	add.d	$a0, $t5, $a0
	mul.d	$s0, $s0, $a7
	add.d	$s0, $t5, $s0
	mul.d	$a3, $a3, $a7
	add.d	$a3, $t5, $a3
	mul.d	$s5, $s5, $a7
	add.d	$s5, $t5, $s5
	mul.d	$t7, $t7, $a7
	add.d	$t7, $t5, $t7
	mul.d	$t0, $t0, $a7
	add.d	$t0, $t5, $t0
	mul.d	$t3, $t3, $a7
	add.d	$t3, $t5, $t3
	mul.d	$t1, $t1, $a7
	add.d	$t1, $t5, $t1
	mul.d	$t2, $t2, $a7
	add.d	$t2, $t5, $t2
	ld.w	$a1, $a1, 8
	ld.w	$a2, $a2, 8
	ld.w	$a6, $a6, 8
	ld.w	$a5, $a5, 8
	ld.w	$a4, $a4, 8
	ld.w	$ra, $ra, 8
	ld.w	$s8, $s8, 8
	ld.w	$a0, $a0, 8
	xvinsgr2vr.w	$xr3, $a1, 0
	xvinsgr2vr.w	$xr3, $a2, 1
	xvinsgr2vr.w	$xr3, $a6, 2
	xvinsgr2vr.w	$xr3, $a5, 3
	xvinsgr2vr.w	$xr3, $a4, 4
	xvinsgr2vr.w	$xr3, $ra, 5
	xvinsgr2vr.w	$xr3, $s8, 6
	xvinsgr2vr.w	$xr3, $a0, 7
	ld.w	$a0, $s0, 8
	ld.w	$a1, $a3, 8
	ld.w	$a2, $s5, 8
	ld.w	$a3, $t7, 8
	ld.w	$a4, $t0, 8
	ld.w	$a5, $t3, 8
	ld.w	$a6, $t1, 8
	ld.w	$t0, $t2, 8
	xvinsgr2vr.w	$xr4, $a0, 0
	xvinsgr2vr.w	$xr4, $a1, 1
	xvinsgr2vr.w	$xr4, $a2, 2
	xvinsgr2vr.w	$xr4, $a3, 3
	xvinsgr2vr.w	$xr4, $a4, 4
	xvinsgr2vr.w	$xr4, $a5, 5
	xvinsgr2vr.w	$xr4, $a6, 6
	xvinsgr2vr.w	$xr4, $t0, 7
	xvadd.w	$xr1, $xr3, $xr1
	xvadd.w	$xr2, $xr4, $xr2
	addi.d	$s7, $s7, -16
	addi.d	$s6, $s6, 64
	bnez	$s7, .LBB0_129
# %bb.130:                              # %middle.block533
                                        #   in Loop: Header=BB0_121 Depth=2
	xvadd.w	$xr1, $xr2, $xr1
	xvpermi.d	$xr2, $xr1, 78
	xvshuf4i.w	$xr2, $xr2, 228
	xvadd.w	$xr1, $xr1, $xr2
	xvpermi.d	$xr2, $xr1, 68
	xvshuf4i.w	$xr2, $xr2, 14
	xvadd.w	$xr1, $xr1, $xr2
	xvpermi.d	$xr2, $xr1, 68
	xvrepl128vei.w	$xr2, $xr2, 1
	xvadd.w	$xr1, $xr1, $xr2
	xvpickve2gr.w	$s7, $xr1, 0
	ld.d	$a2, $sp, 72                    # 8-byte Folded Reload
	bne	$a2, $s4, .LBB0_132
# %bb.131:                              #   in Loop: Header=BB0_121 Depth=2
	ori	$t0, $zero, 1
	ori	$a4, $zero, 40
	ori	$a5, $zero, 4
	ori	$a6, $zero, 16
	ld.d	$t1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$t2, $sp, 80                    # 8-byte Folded Reload
	b	.LBB0_140
.LBB0_132:                              # %vec.epilog.iter.check540
                                        #   in Loop: Header=BB0_121 Depth=2
	andi	$a0, $s4, 12
	ori	$t0, $zero, 1
	ori	$a4, $zero, 40
	ori	$a5, $zero, 4
	ld.d	$t1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$t2, $sp, 80                    # 8-byte Folded Reload
	beqz	$a0, .LBB0_137
# %bb.133:                              #   in Loop: Header=BB0_121 Depth=2
	ori	$a6, $zero, 16
.LBB0_134:                              # %vec.epilog.ph539
                                        #   in Loop: Header=BB0_121 Depth=2
	bstrpick.d	$a0, $s4, 30, 2
	slli.d	$s8, $a0, 2
	srli.d	$a0, $s4, 2
	ori	$s6, $zero, 1
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	vld	$vr1, $a1, %pc_lo12(.LCPI0_0)
	bstrins.d	$s6, $a0, 30, 2
	vinsgr2vr.w	$vr2, $s7, 0
	vinsgr2vr.w	$vr3, $zero, 0
	vshuf.w	$vr1, $vr3, $vr2
	alsl.d	$a0, $a2, $s3, 2
	addi.d	$s7, $a0, 4
	sub.d	$s5, $a2, $s8
	.p2align	4, , 16
.LBB0_135:                              # %vec.epilog.vector.body545
                                        #   Parent Loop BB0_117 Depth=1
                                        #     Parent Loop BB0_121 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	vld	$vr2, $s7, 0
	vpickve2gr.w	$a0, $vr2, 3
	vpickve2gr.w	$a1, $vr2, 2
	vpickve2gr.w	$a2, $vr2, 1
	vpickve2gr.w	$a3, $vr2, 0
	mul.d	$a3, $a3, $a7
	add.d	$a3, $t5, $a3
	mul.d	$a2, $a2, $a7
	add.d	$a2, $t5, $a2
	mul.d	$a1, $a1, $a7
	add.d	$a1, $t5, $a1
	mul.d	$a0, $a0, $a7
	add.d	$a0, $t5, $a0
	ld.w	$a3, $a3, 8
	ld.w	$a2, $a2, 8
	ld.w	$a1, $a1, 8
	ld.w	$a0, $a0, 8
	vinsgr2vr.w	$vr2, $a3, 0
	vinsgr2vr.w	$vr2, $a2, 1
	vinsgr2vr.w	$vr2, $a1, 2
	vinsgr2vr.w	$vr2, $a0, 3
	vadd.w	$vr1, $vr2, $vr1
	addi.d	$s5, $s5, 4
	addi.d	$s7, $s7, 16
	bnez	$s5, .LBB0_135
# %bb.136:                              # %vec.epilog.middle.block551
                                        #   in Loop: Header=BB0_121 Depth=2
	vshuf4i.w	$vr2, $vr1, 14
	vadd.w	$vr1, $vr1, $vr2
	vreplvei.w	$vr2, $vr1, 1
	vadd.w	$vr1, $vr1, $vr2
	vpickve2gr.w	$s7, $vr1, 0
	bne	$s8, $s4, .LBB0_138
	b	.LBB0_140
.LBB0_137:                              #   in Loop: Header=BB0_121 Depth=2
	addi.d	$s6, $a2, 1
	ori	$a6, $zero, 16
	.p2align	4, , 16
.LBB0_138:                              # %.lr.ph385.preheader
                                        #   in Loop: Header=BB0_121 Depth=2
	addi.d	$a0, $s4, 1
	bstrpick.d	$a0, $a0, 31, 0
	alsl.d	$s3, $s6, $s3, 2
	sub.d	$s4, $a0, $s6
	.p2align	4, , 16
.LBB0_139:                              # %.lr.ph385
                                        #   Parent Loop BB0_117 Depth=1
                                        #     Parent Loop BB0_121 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$a0, $s3, 0
	mul.d	$a0, $a0, $a7
	add.d	$a0, $t5, $a0
	ld.w	$a0, $a0, 8
	add.d	$s7, $a0, $s7
	addi.d	$s4, $s4, -1
	addi.d	$s3, $s3, 4
	bnez	$s4, .LBB0_139
.LBB0_140:                              # %._crit_edge386
                                        #   in Loop: Header=BB0_121 Depth=2
	ld.wu	$s4, $t4, 16
	srli.d	$a0, $s4, 31
	add.w	$a0, $s4, $a0
	srai.d	$s5, $a0, 1
	sub.w	$s3, $s7, $s4
	blt	$s2, $t0, .LBB0_146
# %bb.141:                              #   in Loop: Header=BB0_121 Depth=2
	alsl.d	$s6, $s2, $t1, 3
	.p2align	4, , 16
.LBB0_142:                              #   Parent Loop BB0_117 Depth=1
                                        #     Parent Loop BB0_121 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$s2, $s6, 0
	ld.w	$a0, $s2, 0
	addi.d	$s6, $s2, 32
	bne	$a0, $s1, .LBB0_142
# %bb.143:                              #   in Loop: Header=BB0_121 Depth=2
	ld.w	$a0, $s2, 24
	bge	$s3, $a0, .LBB0_145
# %bb.144:                              #   in Loop: Header=BB0_121 Depth=2
	st.w	$s3, $s2, 24
	st.w	$s5, $s2, 4
.LBB0_145:                              #   in Loop: Header=BB0_121 Depth=2
	slli.d	$a0, $s1, 5
	alsl.d	$a0, $s1, $a0, 3
	add.d	$a0, $t6, $a0
	ld.w	$a1, $a0, 12
	st.w	$t0, $s2, 8
	st.w	$a1, $s2, 12
	ld.d	$a0, $a0, 4
	st.d	$a0, $s2, 16
.LBB0_146:                              #   in Loop: Header=BB0_121 Depth=2
	blt	$t2, $t0, .LBB0_120
# %bb.147:                              #   in Loop: Header=BB0_121 Depth=2
	sub.d	$s1, $s4, $s5
	alsl.d	$s2, $t2, $t1, 3
	.p2align	4, , 16
.LBB0_148:                              #   Parent Loop BB0_117 Depth=1
                                        #     Parent Loop BB0_121 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$s0, $s2, 0
	ld.w	$a0, $s0, 0
	addi.d	$s2, $s0, 32
	bne	$a0, $t8, .LBB0_148
# %bb.149:                              #   in Loop: Header=BB0_121 Depth=2
	ld.w	$a0, $s0, 24
	bge	$s3, $a0, .LBB0_119
# %bb.150:                              #   in Loop: Header=BB0_121 Depth=2
	st.w	$s3, $s0, 24
	st.w	$s1, $s0, 4
	b	.LBB0_119
.LBB0_151:                              # %.preheader
	pcalau12i	$a0, %got_pc_hi20(numberCells)
	ld.d	$s5, $a0, %got_pc_lo12(numberCells)
	ld.w	$a1, $s5, 0
	ori	$a0, $zero, 1
	blt	$a1, $a0, .LBB0_156
# %bb.152:                              # %.lr.ph404.preheader
	pcalau12i	$a1, %got_pc_hi20(cellList)
	ld.d	$s6, $a1, %got_pc_lo12(cellList)
	pcalau12i	$a1, %got_pc_hi20(fpdebug)
	ld.d	$s7, $a1, %got_pc_lo12(fpdebug)
	pcalau12i	$a1, %pc_hi20(.L.str.2)
	addi.d	$s0, $a1, %pc_lo12(.L.str.2)
	pcalau12i	$a1, %pc_hi20(.L.str.3)
	addi.d	$s1, $a1, %pc_lo12(.L.str.3)
	pcalau12i	$a1, %pc_hi20(.L.str.4)
	addi.d	$s2, $a1, %pc_lo12(.L.str.4)
	pcalau12i	$a1, %pc_hi20(.L.str.5)
	addi.d	$s3, $a1, %pc_lo12(.L.str.5)
	b	.LBB0_154
	.p2align	4, , 16
.LBB0_153:                              # %._crit_edge401
                                        #   in Loop: Header=BB0_154 Depth=1
	ld.w	$a1, $s5, 0
	addi.d	$a0, $s4, 1
	bge	$s4, $a1, .LBB0_156
.LBB0_154:                              # %.lr.ph404
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_155 Depth 2
	ld.d	$a1, $s6, 0
	move	$s4, $a0
	slli.d	$a0, $a0, 3
	ldx.d	$s8, $a1, $a0
	ld.d	$a0, $s7, 0
	move	$a1, $s0
	move	$a2, $s4
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	beqz	$s8, .LBB0_153
	.p2align	4, , 16
.LBB0_155:                              # %.lr.ph400
                                        #   Parent Loop BB0_154 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $s7, 0
	ld.w	$a2, $s8, 0
	ld.w	$a3, $s8, 4
	move	$a1, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s7, 0
	ld.w	$a2, $s8, 8
	ld.w	$a3, $s8, 12
	ld.w	$a4, $s8, 16
	move	$a1, $s2
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s7, 0
	ld.w	$a2, $s8, 20
	move	$a1, $s3
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$s8, $s8, 32
	bnez	$s8, .LBB0_155
	b	.LBB0_153
.LBB0_156:                              # %._crit_edge405
	addi.d	$sp, $fp, -320
	ld.d	$s8, $sp, 232                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 240                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 248                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 256                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 264                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 272                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 280                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 288                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 296                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 304                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 312                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 320
	ret
.Lfunc_end0:
	.size	density, .Lfunc_end0-density
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"CHANNEL DENSITIES:\n"
	.size	.L.str, 20

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"channel:%d  node1:%d  node2:%d  density:%d\n"
	.size	.L.str.1, 44

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"CELL: <%d>\n"
	.size	.L.str.2, 12

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"edge:%d  extraSpace:%d  "
	.size	.L.str.3, 25

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"HorV:%d  loc:%d  start:%d  "
	.size	.L.str.4, 28

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"end:%d\n"
	.size	.L.str.5, 8

	.section	".note.GNU-stack","",@progbits
	.addrsig
