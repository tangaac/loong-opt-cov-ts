	.file	"nbench1.c"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function DoNumSort
.LCPI0_0:
	.dword	0x4077700000000000              # double 375
	.text
	.globl	DoNumSort
	.p2align	5
	.type	DoNumSort,@function
DoNumSort:                              # @DoNumSort
# %bb.0:
	addi.d	$sp, $sp, -80
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
	st.d	$s1, $sp, 48                    # 8-byte Folded Spill
	st.d	$s2, $sp, 40                    # 8-byte Folded Spill
	st.d	$s3, $sp, 32                    # 8-byte Folded Spill
	st.d	$s4, $sp, 24                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 16                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 8                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(global_numsortstruct)
	ld.d	$s2, $a0, %got_pc_lo12(global_numsortstruct)
	ld.w	$a0, $s2, 0
	beqz	$a0, .LBB0_8
# %bb.1:
	ld.hu	$a0, $s2, 24
	ld.d	$a1, $s2, 32
	mul.d	$a0, $a0, $a1
	slli.d	$a0, $a0, 3
	addi.d	$a1, $sp, 4
	pcaddu18i	$ra, %call36(AllocateMemory)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 4
	move	$fp, $a0
	beqz	$a1, .LBB0_3
# %bb.2:
	pcalau12i	$a0, %pc_hi20(.L.str.50)
	addi.d	$a0, $a0, %pc_lo12(.L.str.50)
	pcaddu18i	$ra, %call36(ReportError)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 4
	move	$a0, $fp
	pcaddu18i	$ra, %call36(FreeMemory)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(ErrorExit)
	jirl	$ra, $ra, 0
.LBB0_3:                                # %.loopexit
	pcalau12i	$a0, %pc_hi20(.LCPI0_0)
	fld.d	$fs1, $a0, %pc_lo12(.LCPI0_0)
	move	$s0, $zero
	movgr2fr.d	$fs0, $zero
	.p2align	4, , 16
.LBB0_4:                                # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s2, 32
	ld.hu	$a2, $s2, 24
	move	$a0, $fp
	pcaddu18i	$ra, %call36(DoNumSortIteration)
	jirl	$ra, $ra, 0
	vldi	$vr0, -912
	fadd.d	$fs0, $fs0, $fa0
	fcmp.clt.d	$fcc0, $fs0, $fs1
	add.d	$s0, $a0, $s0
	bcnez	$fcc0, .LBB0_4
# %bb.5:
	addi.d	$a1, $sp, 4
	move	$a0, $fp
	pcaddu18i	$ra, %call36(FreeMemory)
	jirl	$ra, $ra, 0
	ld.hu	$a0, $s2, 24
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa0, $fa0
	fmul.d	$fs0, $fs0, $fa0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(TicksToFracSecs)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s2, 0
	fdiv.d	$fa0, $fs0, $fa0
	fst.d	$fa0, $s2, 16
	bnez	$a0, .LBB0_7
# %bb.6:
	ori	$a0, $zero, 1
	st.w	$a0, $s2, 0
.LBB0_7:
	fld.d	$fs1, $sp, 8                    # 8-byte Folded Reload
	fld.d	$fs0, $sp, 16                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.LBB0_8:
	ori	$a0, $zero, 1
	st.h	$a0, $s2, 24
	pcalau12i	$a1, %got_pc_hi20(global_min_ticks)
	ld.d	$s3, $a1, %got_pc_lo12(global_min_ticks)
	lu12i.w	$a1, 2
	ori	$s4, $a1, 1809
	pcalau12i	$a1, %pc_hi20(.Lstr)
	addi.d	$s0, $a1, %pc_lo12(.Lstr)
	pcalau12i	$a1, %pc_hi20(.L.str.50)
	addi.d	$s1, $a1, %pc_lo12(.L.str.50)
	.p2align	4, , 16
.LBB0_9:                                # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s2, 32
	bstrpick.d	$a0, $a0, 15, 0
	mul.d	$a0, $a0, $a1
	slli.d	$a0, $a0, 3
	addi.d	$a1, $sp, 4
	pcaddu18i	$ra, %call36(AllocateMemory)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 4
	move	$fp, $a0
	beqz	$a1, .LBB0_11
# %bb.10:                               #   in Loop: Header=BB0_9 Depth=1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(ReportError)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 4
	move	$a0, $fp
	pcaddu18i	$ra, %call36(FreeMemory)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(ErrorExit)
	jirl	$ra, $ra, 0
.LBB0_11:                               #   in Loop: Header=BB0_9 Depth=1
	ld.d	$a1, $s2, 32
	ld.hu	$a2, $s2, 24
	move	$a0, $fp
	pcaddu18i	$ra, %call36(DoNumSortIteration)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s3, 0
	bltu	$a1, $a0, .LBB0_3
# %bb.12:                               #   in Loop: Header=BB0_9 Depth=1
	addi.d	$a1, $sp, 4
	move	$a0, $fp
	pcaddu18i	$ra, %call36(FreeMemory)
	jirl	$ra, $ra, 0
	ld.hu	$a1, $s2, 24
	addi.d	$a0, $a1, 1
	st.h	$a0, $s2, 24
	bltu	$a1, $s4, .LBB0_9
# %bb.13:                               #   in Loop: Header=BB0_9 Depth=1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(ErrorExit)
	jirl	$ra, $ra, 0
	ld.hu	$a0, $s2, 24
	b	.LBB0_9
.Lfunc_end0:
	.size	DoNumSort, .Lfunc_end0-DoNumSort
                                        # -- End function
	.p2align	5                               # -- Begin function DoNumSortIteration
	.type	DoNumSortIteration,@function
DoNumSortIteration:                     # @DoNumSortIteration
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	move	$s1, $a2
	move	$fp, $a1
	move	$s0, $a0
	ori	$a0, $zero, 13
	pcaddu18i	$ra, %call36(randnum)
	jirl	$ra, $ra, 0
	beqz	$fp, .LBB1_14
# %bb.1:
	move	$s2, $s0
	move	$s3, $fp
	.p2align	4, , 16
.LBB1_2:                                # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $zero
	pcaddu18i	$ra, %call36(randnum)
	jirl	$ra, $ra, 0
	st.d	$a0, $s2, 0
	addi.d	$s3, $s3, -1
	addi.d	$s2, $s2, 8
	bnez	$s3, .LBB1_2
# %bb.3:                                # %.preheader.thread.i
	addi.w	$a0, $s1, -1
	beqz	$a0, .LBB1_16
# %bb.4:                                # %.lr.ph21.us.i.preheader
	slli.d	$a1, $fp, 3
	move	$a2, $zero
	move	$a3, $a1
	move	$a4, $fp
	bstrins.d	$a4, $zero, 2, 0
	ori	$a5, $zero, 8
	ori	$a6, $zero, 64
	b	.LBB1_6
	.p2align	4, , 16
.LBB1_5:                                # %..loopexit_crit_edge.us.i
                                        #   in Loop: Header=BB1_6 Depth=1
	addi.w	$a0, $a0, -1
	addi.d	$a2, $a2, 1
	add.d	$a3, $a3, $a1
	beqz	$a0, .LBB1_14
.LBB1_6:                                # %.lr.ph21.us.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_12 Depth 2
                                        #     Child Loop BB1_10 Depth 2
	bltu	$fp, $a5, .LBB1_8
# %bb.7:                                # %vector.memcheck
                                        #   in Loop: Header=BB1_6 Depth=1
	mul.d	$a7, $a1, $a2
	add.d	$a7, $a1, $a7
	bgeu	$a7, $a6, .LBB1_11
.LBB1_8:                                #   in Loop: Header=BB1_6 Depth=1
	move	$t0, $zero
.LBB1_9:                                # %scalar.ph.preheader
                                        #   in Loop: Header=BB1_6 Depth=1
	sub.d	$a7, $fp, $t0
	alsl.d	$t0, $t0, $s0, 3
	.p2align	4, , 16
.LBB1_10:                               # %scalar.ph
                                        #   Parent Loop BB1_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$t1, $t0, 0
	stx.d	$t1, $t0, $a3
	addi.d	$a7, $a7, -1
	addi.d	$t0, $t0, 8
	bnez	$a7, .LBB1_10
	b	.LBB1_5
	.p2align	4, , 16
.LBB1_11:                               # %vector.body.preheader
                                        #   in Loop: Header=BB1_6 Depth=1
	move	$a7, $s0
	move	$t0, $a4
	.p2align	4, , 16
.LBB1_12:                               # %vector.body
                                        #   Parent Loop BB1_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvld	$xr0, $a7, 0
	xvld	$xr1, $a7, 32
	add.d	$t1, $a7, $a3
	xvstx	$xr0, $a7, $a3
	xvst	$xr1, $t1, 32
	addi.d	$t0, $t0, -8
	addi.d	$a7, $a7, 64
	bnez	$t0, .LBB1_12
# %bb.13:                               # %middle.block
                                        #   in Loop: Header=BB1_6 Depth=1
	move	$t0, $a4
	beq	$fp, $a4, .LBB1_5
	b	.LBB1_9
.LBB1_14:                               # %LoadNumArrayWithRand.exit
	pcaddu18i	$ra, %call36(StartStopwatch)
	jirl	$ra, $ra, 0
	beqz	$s1, .LBB1_37
# %bb.15:                               # %.lr.ph
	addi.d	$a1, $fp, -1
	bnez	$a1, .LBB1_17
	b	.LBB1_37
.LBB1_16:                               # %LoadNumArrayWithRand.exit.thread
	ori	$s1, $zero, 1
	pcaddu18i	$ra, %call36(StartStopwatch)
	jirl	$ra, $ra, 0
	addi.d	$a1, $fp, -1
	beqz	$a1, .LBB1_37
.LBB1_17:                               # %.lr.ph.split.preheader
	move	$a2, $zero
	srli.d	$a3, $a1, 1
	ori	$a4, $zero, 2
	b	.LBB1_19
	.p2align	4, , 16
.LBB1_18:                               # %NumHeapSort.exit.loopexit
                                        #   in Loop: Header=BB1_19 Depth=1
	addi.d	$a2, $a2, 1
	beq	$a2, $s1, .LBB1_37
.LBB1_19:                               # %.lr.ph.split
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_30 Depth 2
                                        #       Child Loop BB1_33 Depth 3
                                        #     Child Loop BB1_22 Depth 2
                                        #       Child Loop BB1_24 Depth 3
	mul.d	$a5, $a2, $fp
	alsl.d	$a5, $a5, $s0, 3
	bgeu	$a1, $a4, .LBB1_28
.LBB1_20:                               # %.lr.ph31.i.preheader
                                        #   in Loop: Header=BB1_19 Depth=1
	move	$a6, $a1
	b	.LBB1_22
	.p2align	4, , 16
.LBB1_21:                               # %NumSift.exit26.i
                                        #   in Loop: Header=BB1_22 Depth=2
	slli.d	$a7, $a6, 3
	ldx.d	$t0, $a5, $a7
	ld.d	$t1, $a5, 0
	st.d	$t0, $a5, 0
	addi.d	$a6, $a6, -1
	stx.d	$t1, $a5, $a7
	beqz	$a6, .LBB1_18
.LBB1_22:                               # %.lr.ph31.i
                                        #   Parent Loop BB1_19 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_24 Depth 3
	move	$t0, $zero
	move	$t1, $zero
	addi.d	$a7, $a6, 1
	b	.LBB1_24
	.p2align	4, , 16
.LBB1_23:                               #   in Loop: Header=BB1_24 Depth=3
	slli.d	$t0, $t4, 1
	move	$t1, $t4
	bltu	$a6, $t0, .LBB1_21
.LBB1_24:                               #   Parent Loop BB1_19 Depth=1
                                        #     Parent Loop BB1_22 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	bgeu	$t0, $a6, .LBB1_26
# %bb.25:                               #   in Loop: Header=BB1_24 Depth=3
	slli.d	$t2, $t0, 3
	ldx.d	$t2, $a5, $t2
	addi.d	$t3, $t0, 1
	slli.d	$t4, $t3, 3
	ldx.d	$t4, $a5, $t4
	slt	$t2, $t2, $t4
	masknez	$t0, $t0, $t2
	maskeqz	$t2, $t3, $t2
	or	$t0, $t2, $t0
.LBB1_26:                               #   in Loop: Header=BB1_24 Depth=3
	slli.d	$t2, $t1, 3
	ldx.d	$t2, $a5, $t2
	slli.d	$t3, $t0, 3
	ldx.d	$t3, $a5, $t3
	move	$t4, $a7
	bge	$t2, $t3, .LBB1_23
# %bb.27:                               #   in Loop: Header=BB1_24 Depth=3
	alsl.d	$t1, $t1, $a5, 3
	alsl.d	$t4, $t0, $a5, 3
	st.d	$t2, $t4, 0
	st.d	$t3, $t1, 0
	move	$t4, $t0
	b	.LBB1_23
	.p2align	4, , 16
.LBB1_28:                               # %.lr.ph.i11.preheader
                                        #   in Loop: Header=BB1_19 Depth=1
	move	$a6, $a3
	b	.LBB1_30
	.p2align	4, , 16
.LBB1_29:                               # %NumSift.exit.i
                                        #   in Loop: Header=BB1_30 Depth=2
	addi.d	$a6, $a6, -1
	beqz	$a6, .LBB1_20
.LBB1_30:                               # %.lr.ph.i11
                                        #   Parent Loop BB1_19 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_33 Depth 3
	slli.d	$a7, $a6, 1
	bltu	$a1, $a7, .LBB1_29
# %bb.31:                               # %.lr.ph.i.i.preheader
                                        #   in Loop: Header=BB1_30 Depth=2
	move	$t0, $a6
	b	.LBB1_33
	.p2align	4, , 16
.LBB1_32:                               #   in Loop: Header=BB1_33 Depth=3
	slli.d	$a7, $t3, 1
	move	$t0, $t3
	bltu	$a1, $a7, .LBB1_29
.LBB1_33:                               # %.lr.ph.i.i
                                        #   Parent Loop BB1_19 Depth=1
                                        #     Parent Loop BB1_30 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	bgeu	$a7, $a1, .LBB1_35
# %bb.34:                               #   in Loop: Header=BB1_33 Depth=3
	slli.d	$t1, $a7, 3
	ldx.d	$t1, $a5, $t1
	addi.d	$t2, $a7, 1
	slli.d	$t3, $t2, 3
	ldx.d	$t3, $a5, $t3
	slt	$t1, $t1, $t3
	masknez	$a7, $a7, $t1
	maskeqz	$t1, $t2, $t1
	or	$a7, $t1, $a7
.LBB1_35:                               #   in Loop: Header=BB1_33 Depth=3
	slli.d	$t1, $t0, 3
	ldx.d	$t1, $a5, $t1
	slli.d	$t2, $a7, 3
	ldx.d	$t2, $a5, $t2
	move	$t3, $fp
	bge	$t1, $t2, .LBB1_32
# %bb.36:                               #   in Loop: Header=BB1_33 Depth=3
	alsl.d	$t0, $t0, $a5, 3
	alsl.d	$t3, $a7, $a5, 3
	st.d	$t1, $t3, 0
	st.d	$t2, $t0, 0
	move	$t3, $a7
	b	.LBB1_32
.LBB1_37:                               # %._crit_edge
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	pcaddu18i	$t8, %call36(StopStopwatch)
	jr	$t8
.Lfunc_end1:
	.size	DoNumSortIteration, .Lfunc_end1-DoNumSortIteration
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function DoStringSort
.LCPI2_0:
	.dword	0x405f400000000000              # double 125
	.text
	.globl	DoStringSort
	.p2align	5
	.type	DoStringSort,@function
DoStringSort:                           # @DoStringSort
# %bb.0:
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 16                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 8                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(global_strsortstruct)
	ld.d	$s1, $a0, %got_pc_lo12(global_strsortstruct)
	ld.w	$a0, $s1, 0
	beqz	$a0, .LBB2_8
# %bb.1:
	ld.d	$a0, $s1, 32
	ld.hu	$a1, $s1, 24
	addi.d	$a0, $a0, 100
	mul.d	$a0, $a0, $a1
	addi.d	$a1, $sp, 4
	pcaddu18i	$ra, %call36(AllocateMemory)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 4
	move	$fp, $a0
	beqz	$a1, .LBB2_3
# %bb.2:
	pcalau12i	$a0, %pc_hi20(.L.str.52)
	addi.d	$a0, $a0, %pc_lo12(.L.str.52)
	pcaddu18i	$ra, %call36(ReportError)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(ErrorExit)
	jirl	$ra, $ra, 0
.LBB2_3:                                # %.loopexit
	ld.hu	$a1, $s1, 24
	pcalau12i	$a0, %pc_hi20(.LCPI2_0)
	fld.d	$fs1, $a0, %pc_lo12(.LCPI2_0)
	move	$s0, $zero
	movgr2fr.d	$fs0, $zero
	.p2align	4, , 16
.LBB2_4:                                # =>This Inner Loop Header: Depth=1
	ld.d	$a2, $s1, 32
	bstrpick.d	$a1, $a1, 15, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(DoStringSortIteration)
	jirl	$ra, $ra, 0
	ld.hu	$a1, $s1, 24
	movgr2fr.w	$fa0, $a1
	ffint.d.w	$fa0, $fa0
	fadd.d	$fs0, $fs0, $fa0
	fcmp.clt.d	$fcc0, $fs0, $fs1
	add.d	$s0, $a0, $s0
	bcnez	$fcc0, .LBB2_4
# %bb.5:
	addi.d	$a1, $sp, 4
	move	$a0, $fp
	pcaddu18i	$ra, %call36(FreeMemory)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(TicksToFracSecs)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s1, 0
	fdiv.d	$fa0, $fs0, $fa0
	fst.d	$fa0, $s1, 16
	bnez	$a0, .LBB2_7
# %bb.6:
	ori	$a0, $zero, 1
	st.w	$a0, $s1, 0
.LBB2_7:
	fld.d	$fs1, $sp, 8                    # 8-byte Folded Reload
	fld.d	$fs0, $sp, 16                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.LBB2_8:                                # %.preheader.preheader
	pcalau12i	$a0, %got_pc_hi20(global_min_ticks)
	ld.d	$s2, $a0, %got_pc_lo12(global_min_ticks)
	ori	$a0, $zero, 1
	pcalau12i	$a1, %pc_hi20(.L.str.52)
	addi.d	$s0, $a1, %pc_lo12(.L.str.52)
	.p2align	4, , 16
.LBB2_9:                                # %.preheader
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s1, 32
	st.h	$a0, $s1, 24
	addi.d	$a1, $a1, 100
	bstrpick.d	$a0, $a0, 15, 0
	mul.d	$a0, $a1, $a0
	addi.d	$a1, $sp, 4
	pcaddu18i	$ra, %call36(AllocateMemory)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 4
	move	$fp, $a0
	beqz	$a1, .LBB2_11
# %bb.10:                               #   in Loop: Header=BB2_9 Depth=1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(ReportError)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(ErrorExit)
	jirl	$ra, $ra, 0
.LBB2_11:                               #   in Loop: Header=BB2_9 Depth=1
	ld.hu	$a1, $s1, 24
	ld.d	$a2, $s1, 32
	move	$a0, $fp
	pcaddu18i	$ra, %call36(DoStringSortIteration)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s2, 0
	bltu	$a1, $a0, .LBB2_3
# %bb.12:                               #   in Loop: Header=BB2_9 Depth=1
	addi.d	$a1, $sp, 4
	move	$a0, $fp
	pcaddu18i	$ra, %call36(FreeMemory)
	jirl	$ra, $ra, 0
	ld.h	$a0, $s1, 24
	addi.d	$a0, $a0, 1
	b	.LBB2_9
.Lfunc_end2:
	.size	DoStringSort, .Lfunc_end2-DoStringSort
                                        # -- End function
	.p2align	5                               # -- Begin function DoStringSortIteration
	.type	DoStringSortIteration,@function
DoStringSortIteration:                  # @DoStringSortIteration
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
	move	$s4, $a2
	move	$s6, $a1
	move	$s1, $a0
	ori	$a0, $zero, 13
	pcaddu18i	$ra, %call36(randnum)
	jirl	$ra, $ra, 0
	move	$s3, $zero
	move	$s2, $zero
	ori	$a0, $zero, 1
	ori	$a1, $zero, 8
	ori	$a2, $zero, 40
	b	.LBB3_2
	.p2align	4, , 16
.LBB3_1:                                # %._crit_edge.i
                                        #   in Loop: Header=BB3_2 Depth=1
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	addi.d	$s3, $a0, 1
	addi.d	$a0, $s7, 1
	addi.d	$a1, $s8, 8
	addi.d	$a2, $s5, 8
	move	$s2, $s0
	bgeu	$fp, $s4, .LBB3_5
.LBB3_2:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_4 Depth 2
	st.d	$s3, $sp, 88                    # 8-byte Folded Spill
	move	$s7, $a0
	move	$s8, $a1
	move	$s5, $a2
	ori	$a0, $zero, 76
	pcaddu18i	$ra, %call36(abs_randwc)
	jirl	$ra, $ra, 0
	addi.d	$a0, $a0, 1
	andi	$a1, $a0, 255
	addi.d	$s0, $s2, 1
	add.d	$fp, $s0, $a1
	sltu	$a1, $fp, $s4
	nor	$a2, $s2, $zero
	add.d	$a2, $s4, $a2
	masknez	$a2, $a2, $a1
	maskeqz	$a0, $a0, $a1
	or	$a0, $a0, $a2
	andi	$a1, $a0, 255
	stx.b	$a0, $s1, $s2
	beqz	$a1, .LBB3_1
# %bb.3:                                # %.lr.ph.preheader.i
                                        #   in Loop: Header=BB3_2 Depth=1
	add.d	$a0, $s2, $a0
	addi.d	$a0, $a0, 1
	andi	$s2, $a0, 255
	.p2align	4, , 16
.LBB3_4:                                # %.lr.ph.i
                                        #   Parent Loop BB3_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ori	$a0, $zero, 254
	pcaddu18i	$ra, %call36(abs_randwc)
	jirl	$ra, $ra, 0
	stx.b	$a0, $s1, $s0
	addi.d	$s0, $s0, 1
	andi	$a0, $s0, 255
	bne	$s2, $a0, .LBB3_4
	b	.LBB3_1
.LBB3_5:                                # %.preheader73.i
	ori	$a0, $zero, 2
	bltu	$s6, $a0, .LBB3_24
# %bb.6:                                # %.preheader73.i
	beqz	$s4, .LBB3_24
# %bb.7:                                # %.lr.ph79.us.i.preheader
	move	$a0, $zero
	addi.d	$a2, $s4, -1
	addi.d	$a1, $s4, 100
	bstrpick.d	$a3, $a2, 31, 0
	addi.w	$a4, $zero, -1
	lu32i.d	$a4, 0
	xor	$a3, $a3, $a4
	sltui	$a3, $a3, 1
	srli.d	$a2, $a2, 32
	sltu	$a2, $zero, $a2
	or	$a2, $a3, $a2
	bstrpick.d	$a3, $s4, 32, 6
	slli.d	$a3, $a3, 6
	andi	$a4, $s4, 48
	bstrpick.d	$a5, $s4, 32, 4
	slli.d	$a5, $a5, 4
	addi.d	$a6, $s4, 132
	sub.d	$a7, $zero, $a5
	ori	$t0, $zero, 1
	ori	$t1, $zero, 16
	ori	$t2, $zero, 64
	move	$t3, $a1
	move	$t4, $s1
	b	.LBB3_9
	.p2align	4, , 16
.LBB3_8:                                # %._crit_edge80.us.i
                                        #   in Loop: Header=BB3_9 Depth=1
	addi.w	$t0, $t0, 1
	add.d	$a6, $a6, $a1
	add.d	$t3, $t3, $a1
	beq	$t0, $s6, .LBB3_24
.LBB3_9:                                # %iter.check
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_17 Depth 2
                                        #     Child Loop BB3_21 Depth 2
                                        #     Child Loop BB3_13 Depth 2
	add.d	$t4, $t4, $s4
	addi.d	$t4, $t4, 100
	addi.d	$a0, $a0, 1
	bltu	$s4, $t1, .LBB3_11
# %bb.10:                               # %vector.scevcheck
                                        #   in Loop: Header=BB3_9 Depth=1
	mul.d	$t5, $a1, $a0
	sltui	$t5, $t5, 64
	or	$t5, $a2, $t5
	beqz	$t5, .LBB3_14
.LBB3_11:                               #   in Loop: Header=BB3_9 Depth=1
	move	$t5, $zero
	move	$t6, $zero
.LBB3_12:                               # %vec.epilog.scalar.ph.preheader
                                        #   in Loop: Header=BB3_9 Depth=1
	addi.w	$t6, $t6, 1
	.p2align	4, , 16
.LBB3_13:                               # %vec.epilog.scalar.ph
                                        #   Parent Loop BB3_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.b	$t7, $s1, $t5
	stx.b	$t7, $t4, $t5
	bstrpick.d	$t5, $t6, 31, 0
	addi.w	$t6, $t6, 1
	bltu	$t5, $s4, .LBB3_13
	b	.LBB3_8
	.p2align	4, , 16
.LBB3_14:                               # %vector.main.loop.iter.check
                                        #   in Loop: Header=BB3_9 Depth=1
	bgeu	$s4, $t2, .LBB3_16
# %bb.15:                               #   in Loop: Header=BB3_9 Depth=1
	move	$t6, $zero
	b	.LBB3_20
.LBB3_16:                               # %vector.body.preheader
                                        #   in Loop: Header=BB3_9 Depth=1
	move	$t5, $s1
	move	$t6, $a3
	.p2align	4, , 16
.LBB3_17:                               # %vector.body
                                        #   Parent Loop BB3_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvld	$xr0, $t5, 0
	xvld	$xr1, $t5, 32
	add.d	$t7, $t5, $a6
	xvst	$xr0, $t7, -32
	xvstx	$xr1, $t5, $a6
	addi.d	$t6, $t6, -64
	addi.d	$t5, $t5, 64
	bnez	$t6, .LBB3_17
# %bb.18:                               # %middle.block
                                        #   in Loop: Header=BB3_9 Depth=1
	beq	$s4, $a3, .LBB3_8
# %bb.19:                               # %vec.epilog.iter.check
                                        #   in Loop: Header=BB3_9 Depth=1
	move	$t6, $a3
	beqz	$a4, .LBB3_23
.LBB3_20:                               # %vec.epilog.ph
                                        #   in Loop: Header=BB3_9 Depth=1
	add.d	$t5, $a7, $t6
	add.d	$t6, $s1, $t6
	.p2align	4, , 16
.LBB3_21:                               # %vec.epilog.vector.body
                                        #   Parent Loop BB3_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $t6, 0
	vstx	$vr0, $t6, $t3
	addi.d	$t5, $t5, 16
	addi.d	$t6, $t6, 16
	bnez	$t5, .LBB3_21
# %bb.22:                               # %vec.epilog.middle.block
                                        #   in Loop: Header=BB3_9 Depth=1
	move	$t6, $a5
	move	$t5, $a5
	beq	$s4, $a5, .LBB3_8
	b	.LBB3_12
.LBB3_23:                               #   in Loop: Header=BB3_9 Depth=1
	move	$t6, $a3
	move	$t5, $a3
	b	.LBB3_12
.LBB3_24:                               # %._crit_edge84.i
	slli.w	$a0, $s6, 3
	mul.d	$a0, $s3, $a0
	addi.d	$a1, $sp, 104
	pcaddu18i	$ra, %call36(AllocateMemory)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 104
	move	$s0, $a0
	beqz	$a1, .LBB3_26
# %bb.25:
	pcalau12i	$a0, %pc_hi20(.L.str.63)
	addi.d	$a0, $a0, %pc_lo12(.L.str.63)
	pcaddu18i	$ra, %call36(ReportError)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 104
	move	$a0, $s1
	pcaddu18i	$ra, %call36(FreeMemory)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(ErrorExit)
	jirl	$ra, $ra, 0
.LBB3_26:
	beqz	$s3, .LBB3_30
# %bb.27:                               # %.lr.ph88.i.preheader
	move	$a1, $zero
	move	$a0, $s0
	move	$a2, $s7
	.p2align	4, , 16
.LBB3_28:                               # %.lr.ph88.i
                                        # =>This Inner Loop Header: Depth=1
	st.d	$a1, $a0, 0
	ldx.bu	$a3, $s1, $a1
	add.d	$a1, $a1, $a3
	addi.d	$a1, $a1, 1
	addi.d	$a2, $a2, -1
	addi.d	$a0, $a0, 8
	bnez	$a2, .LBB3_28
# %bb.29:                               # %.preheader.i
	ori	$a0, $zero, 2
	bgeu	$s6, $a0, .LBB3_31
.LBB3_30:                               # %LoadStringArray.exit
	pcaddu18i	$ra, %call36(StartStopwatch)
	jirl	$ra, $ra, 0
	bnez	$s6, .LBB3_45
	b	.LBB3_84
.LBB3_31:                               # %.lr.ph95.split.i.preheader
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
	bstrpick.d	$a0, $a2, 31, 0
	addi.w	$a1, $zero, -1
	lu32i.d	$a1, 0
	xor	$a0, $a0, $a1
	sltui	$a0, $a0, 1
	srli.d	$a1, $a2, 32
	sltu	$a1, $zero, $a1
	or	$a3, $a0, $a1
	move	$a0, $s7
	bstrins.d	$a0, $zero, 2, 0
	addi.d	$a1, $s0, 32
	ori	$a2, $zero, 1
	sltui	$a4, $s7, 8
	or	$a3, $a4, $a3
	andi	$a3, $a3, 1
	ori	$a4, $zero, 64
	move	$a6, $s3
	move	$a5, $s0
	b	.LBB3_34
	.p2align	4, , 16
.LBB3_32:                               #   in Loop: Header=BB3_34 Depth=1
	move	$a6, $zero
.LBB3_33:                               # %._crit_edge92.i
                                        #   in Loop: Header=BB3_34 Depth=1
	addi.w	$a2, $a2, 1
	beq	$a2, $s6, .LBB3_44
.LBB3_34:                               # %.lr.ph95.split.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_42 Depth 2
                                        #     Child Loop BB3_39 Depth 2
	move	$a7, $a5
	alsl.d	$a5, $a6, $a5, 3
	beqz	$a6, .LBB3_32
# %bb.35:                               # %.lr.ph91.i.preheader
                                        #   in Loop: Header=BB3_34 Depth=1
	bnez	$a3, .LBB3_37
# %bb.36:                               # %vector.memcheck55
                                        #   in Loop: Header=BB3_34 Depth=1
	sub.d	$t0, $a7, $s0
	alsl.d	$t0, $a6, $t0, 3
	bgeu	$t0, $a4, .LBB3_41
.LBB3_37:                               #   in Loop: Header=BB3_34 Depth=1
	move	$a7, $zero
	move	$t0, $zero
.LBB3_38:                               # %.lr.ph91.i.preheader140
                                        #   in Loop: Header=BB3_34 Depth=1
	addi.w	$a6, $t0, 1
	.p2align	4, , 16
.LBB3_39:                               # %.lr.ph91.i
                                        #   Parent Loop BB3_34 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	slli.d	$a7, $a7, 3
	ldx.d	$t0, $s0, $a7
	stx.d	$t0, $a5, $a7
	bstrpick.d	$a7, $a6, 31, 0
	addi.w	$a6, $a6, 1
	bltu	$a7, $s3, .LBB3_39
# %bb.40:                               #   in Loop: Header=BB3_34 Depth=1
	move	$a6, $s3
	b	.LBB3_33
.LBB3_41:                               # %vector.body62.preheader
                                        #   in Loop: Header=BB3_34 Depth=1
	slli.d	$a6, $a6, 3
	add.d	$a6, $a7, $a6
	addi.d	$a6, $a6, 32
	move	$a7, $a1
	move	$t0, $a0
	.p2align	4, , 16
.LBB3_42:                               # %vector.body62
                                        #   Parent Loop BB3_34 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvld	$xr0, $a7, -32
	xvld	$xr1, $a7, 0
	xvst	$xr0, $a6, -32
	xvst	$xr1, $a6, 0
	addi.d	$t0, $t0, -8
	addi.d	$a6, $a6, 64
	addi.d	$a7, $a7, 64
	bnez	$t0, .LBB3_42
# %bb.43:                               # %middle.block67
                                        #   in Loop: Header=BB3_34 Depth=1
	move	$t0, $a0
	move	$a7, $a0
	move	$a6, $s3
	beq	$s7, $a0, .LBB3_33
	b	.LBB3_38
.LBB3_44:                               # %LoadStringArray.exit.thread
	pcaddu18i	$ra, %call36(StartStopwatch)
	jirl	$ra, $ra, 0
.LBB3_45:                               # %.lr.ph
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	move	$a2, $zero
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	srli.d	$a0, $a1, 1
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	move	$a0, $a1
	bstrins.d	$a0, $zero, 2, 0
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	ori	$a0, $zero, 1
	bstrins.d	$a1, $a0, 2, 0
	st.d	$a1, $sp, 64                    # 8-byte Folded Spill
	addi.d	$a0, $s0, 40
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	add.d	$a0, $s0, $s5
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	st.d	$s0, $sp, 0                     # 8-byte Folded Spill
	move	$s5, $s0
	st.d	$s4, $sp, 40                    # 8-byte Folded Spill
	st.d	$s6, $sp, 32                    # 8-byte Folded Spill
	st.d	$s8, $sp, 24                    # 8-byte Folded Spill
	b	.LBB3_47
	.p2align	4, , 16
.LBB3_46:                               # %StrHeapSort.exit
                                        #   in Loop: Header=BB3_47 Depth=1
	ld.d	$s8, $sp, 24                    # 8-byte Folded Reload
	add.d	$s5, $s5, $s8
	ld.d	$s4, $sp, 40                    # 8-byte Folded Reload
	add.d	$a0, $s1, $s4
	addi.d	$s1, $a0, 100
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	addi.w	$a2, $a2, 1
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	add.d	$a0, $a0, $s8
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	add.d	$a0, $a0, $s8
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	ld.d	$s6, $sp, 32                    # 8-byte Folded Reload
	beq	$a2, $s6, .LBB3_83
.LBB3_47:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_49 Depth 2
                                        #     Child Loop BB3_53 Depth 2
                                        #       Child Loop BB3_57 Depth 3
                                        #       Child Loop BB3_60 Depth 3
                                        #       Child Loop BB3_63 Depth 3
                                        #       Child Loop BB3_66 Depth 3
                                        #       Child Loop BB3_73 Depth 3
                                        #       Child Loop BB3_76 Depth 3
                                        #       Child Loop BB3_79 Depth 3
                                        #       Child Loop BB3_82 Depth 3
	st.d	$a2, $sp, 48                    # 8-byte Folded Spill
	ld.d	$s6, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 88                    # 8-byte Folded Reload
	ori	$a0, $zero, 2
	bgeu	$s4, $a0, .LBB3_49
# %bb.48:                               # %.preheader.i22
                                        #   in Loop: Header=BB3_47 Depth=1
	bnez	$s4, .LBB3_50
	b	.LBB3_46
	.p2align	4, , 16
.LBB3_49:                               # %.lr.ph.i18
                                        #   Parent Loop BB3_47 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a0, $s5
	move	$a1, $s1
	move	$a2, $s3
	move	$a3, $s6
	move	$a4, $s4
	pcaddu18i	$ra, %call36(strsift)
	jirl	$ra, $ra, 0
	addi.d	$s6, $s6, -1
	bnez	$s6, .LBB3_49
.LBB3_50:                               # %.lr.ph57.i
                                        #   in Loop: Header=BB3_47 Depth=1
	move	$fp, $zero
	alsl.d	$a0, $s3, $s5, 3
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	ld.d	$s8, $sp, 56                    # 8-byte Folded Reload
	move	$s6, $s4
	b	.LBB3_53
	.p2align	4, , 16
.LBB3_51:                               # %._crit_edge.i39.i
                                        #   in Loop: Header=BB3_53 Depth=2
	ld.d	$a0, $s0, 0
	stx.b	$s2, $s1, $a0
	ld.d	$s4, $sp, 88                    # 8-byte Folded Reload
.LBB3_52:                               # %stradjust.exit49.i
                                        #   in Loop: Header=BB3_53 Depth=2
	ld.d	$a0, $s0, 0
	add.d	$a0, $s1, $a0
	addi.d	$a2, $s2, 1
	addi.d	$a1, $sp, 104
	pcaddu18i	$ra, %call36(MoveMemory)
	jirl	$ra, $ra, 0
	addi.d	$s6, $s6, -1
	addi.d	$fp, $fp, 1
	addi.d	$s8, $s8, -8
	beqz	$s6, .LBB3_46
.LBB3_53:                               #   Parent Loop BB3_47 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB3_57 Depth 3
                                        #       Child Loop BB3_60 Depth 3
                                        #       Child Loop BB3_63 Depth 3
                                        #       Child Loop BB3_66 Depth 3
                                        #       Child Loop BB3_73 Depth 3
                                        #       Child Loop BB3_76 Depth 3
                                        #       Child Loop BB3_79 Depth 3
                                        #       Child Loop BB3_82 Depth 3
	move	$a0, $s5
	move	$a1, $s1
	move	$a2, $s3
	move	$a3, $zero
	move	$a4, $s6
	pcaddu18i	$ra, %call36(strsift)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $s1, 0
	addi.d	$a2, $a0, 1
	addi.d	$a0, $sp, 104
	move	$a1, $s1
	pcaddu18i	$ra, %call36(MoveMemory)
	jirl	$ra, $ra, 0
	slli.d	$a0, $s6, 3
	ldx.d	$a0, $s5, $a0
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a1, $a1, -8
	ld.d	$a2, $s5, 0
	ldx.bu	$s2, $s1, $a0
	ldx.bu	$a0, $s1, $a1
	ld.d	$a3, $s5, 8
	add.d	$a4, $s1, $a2
	ldx.bu	$s0, $s1, $a2
	add.d	$a0, $a1, $a0
	sub.d	$a0, $a0, $a3
	addi.d	$a2, $a0, 1
	add.d	$a0, $a4, $s2
	addi.d	$a0, $a0, 1
	add.d	$a1, $s1, $a3
	pcaddu18i	$ra, %call36(MoveMemory)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2
	bltu	$s3, $a0, .LBB3_67
# %bb.54:                               # %.lr.ph.i.i
                                        #   in Loop: Header=BB3_53 Depth=2
	sub.d	$a1, $s2, $s0
	addi.w	$a0, $a1, 0
	srai.d	$a0, $a0, 31
	xor	$a2, $a1, $a0
	sub.w	$a0, $a2, $a0
	bltz	$a1, .LBB3_61
# %bb.55:                               # %.lr.ph.split.i.i.preheader
                                        #   in Loop: Header=BB3_53 Depth=2
	ori	$a1, $zero, 1
	ori	$a2, $zero, 8
	bltu	$s4, $a2, .LBB3_59
# %bb.56:                               # %vector.ph120
                                        #   in Loop: Header=BB3_53 Depth=2
	xvreplgr2vr.d	$xr0, $a0
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 72                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB3_57:                               # %vector.body125
                                        #   Parent Loop BB3_47 Depth=1
                                        #     Parent Loop BB3_53 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	xvld	$xr1, $a2, -32
	xvld	$xr2, $a2, 0
	xvadd.d	$xr1, $xr1, $xr0
	xvadd.d	$xr2, $xr2, $xr0
	xvst	$xr1, $a2, -32
	xvst	$xr2, $a2, 0
	addi.d	$a1, $a1, -8
	addi.d	$a2, $a2, 64
	bnez	$a1, .LBB3_57
# %bb.58:                               # %middle.block131
                                        #   in Loop: Header=BB3_53 Depth=2
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	beq	$s4, $a2, .LBB3_67
.LBB3_59:                               # %.lr.ph.split.i.i.preheader138
                                        #   in Loop: Header=BB3_53 Depth=2
	alsl.d	$a2, $a1, $s5, 3
	.p2align	4, , 16
.LBB3_60:                               # %.lr.ph.split.i.i
                                        #   Parent Loop BB3_47 Depth=1
                                        #     Parent Loop BB3_53 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a3, $a2, 0
	add.d	$a3, $a3, $a0
	st.d	$a3, $a2, 0
	addi.d	$a1, $a1, 1
	addi.d	$a2, $a2, 8
	bne	$s7, $a1, .LBB3_60
	b	.LBB3_67
.LBB3_61:                               # %.lr.ph.split.us.i.i.preheader
                                        #   in Loop: Header=BB3_53 Depth=2
	ori	$a1, $zero, 1
	ori	$a2, $zero, 8
	bltu	$s4, $a2, .LBB3_65
# %bb.62:                               # %vector.ph104
                                        #   in Loop: Header=BB3_53 Depth=2
	xvreplgr2vr.d	$xr0, $a0
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 72                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB3_63:                               # %vector.body109
                                        #   Parent Loop BB3_47 Depth=1
                                        #     Parent Loop BB3_53 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	xvld	$xr1, $a2, -32
	xvld	$xr2, $a2, 0
	xvsub.d	$xr1, $xr1, $xr0
	xvsub.d	$xr2, $xr2, $xr0
	xvst	$xr1, $a2, -32
	xvst	$xr2, $a2, 0
	addi.d	$a1, $a1, -8
	addi.d	$a2, $a2, 64
	bnez	$a1, .LBB3_63
# %bb.64:                               # %middle.block115
                                        #   in Loop: Header=BB3_53 Depth=2
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	beq	$s4, $a2, .LBB3_67
.LBB3_65:                               # %.lr.ph.split.us.i.i.preheader137
                                        #   in Loop: Header=BB3_53 Depth=2
	alsl.d	$a2, $a1, $s5, 3
	.p2align	4, , 16
.LBB3_66:                               # %.lr.ph.split.us.i.i
                                        #   Parent Loop BB3_47 Depth=1
                                        #     Parent Loop BB3_53 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a3, $a2, 0
	sub.d	$a3, $a3, $a0
	st.d	$a3, $a2, 0
	addi.d	$a1, $a1, 1
	addi.d	$a2, $a2, 8
	bne	$s7, $a1, .LBB3_66
	.p2align	4, , 16
.LBB3_67:                               # %._crit_edge.i.i
                                        #   in Loop: Header=BB3_53 Depth=2
	ld.d	$a0, $s5, 0
	alsl.d	$s0, $s6, $s5, 3
	stx.b	$s2, $s1, $a0
	ld.d	$a0, $s0, 0
	add.d	$a1, $s1, $a0
	addi.d	$a2, $s2, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(MoveMemory)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, 0
	ld.bu	$s2, $sp, 104
	add.d	$a0, $s1, $a1
	bne	$s6, $s4, .LBB3_69
# %bb.68:                               #   in Loop: Header=BB3_53 Depth=2
	st.b	$s2, $a0, 0
	b	.LBB3_52
	.p2align	4, , 16
.LBB3_69:                               #   in Loop: Header=BB3_53 Depth=2
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a2, $a2, -8
	ldx.bu	$a3, $s1, $a2
	ld.d	$a4, $s0, 8
	ldx.bu	$s4, $s1, $a1
	add.d	$a1, $a2, $a3
	sub.d	$a1, $a1, $a4
	addi.d	$a2, $a1, 1
	add.d	$a0, $a0, $s2
	addi.d	$a0, $a0, 1
	add.d	$a1, $s1, $a4
	pcaddu18i	$ra, %call36(MoveMemory)
	jirl	$ra, $ra, 0
	addi.d	$a0, $s6, 1
	bgeu	$a0, $s3, .LBB3_51
# %bb.70:                               # %.lr.ph.i40.i
                                        #   in Loop: Header=BB3_53 Depth=2
	move	$a2, $fp
	bstrins.d	$a2, $zero, 2, 0
	sub.d	$a3, $s2, $s4
	srai.d	$a1, $a3, 63
	xor	$a4, $a3, $a1
	sub.w	$a1, $a4, $a1
	bltz	$a3, .LBB3_77
# %bb.71:                               # %.lr.ph.split.i41.i.preheader
                                        #   in Loop: Header=BB3_53 Depth=2
	ori	$a3, $zero, 8
	bltu	$fp, $a3, .LBB3_75
# %bb.72:                               # %vector.ph88
                                        #   in Loop: Header=BB3_53 Depth=2
	move	$a3, $fp
	bstrins.d	$a3, $zero, 2, 0
	add.d	$a0, $a0, $a3
	xvreplgr2vr.d	$xr0, $a1
	move	$a4, $s8
	.p2align	4, , 16
.LBB3_73:                               # %vector.body93
                                        #   Parent Loop BB3_47 Depth=1
                                        #     Parent Loop BB3_53 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	xvld	$xr1, $a4, -32
	xvld	$xr2, $a4, 0
	xvadd.d	$xr1, $xr1, $xr0
	xvadd.d	$xr2, $xr2, $xr0
	xvst	$xr1, $a4, -32
	xvst	$xr2, $a4, 0
	addi.d	$a2, $a2, -8
	addi.d	$a4, $a4, 64
	bnez	$a2, .LBB3_73
# %bb.74:                               # %middle.block99
                                        #   in Loop: Header=BB3_53 Depth=2
	beq	$fp, $a3, .LBB3_51
.LBB3_75:                               # %.lr.ph.split.i41.i.preheader135
                                        #   in Loop: Header=BB3_53 Depth=2
	alsl.d	$a2, $a0, $s5, 3
	.p2align	4, , 16
.LBB3_76:                               # %.lr.ph.split.i41.i
                                        #   Parent Loop BB3_47 Depth=1
                                        #     Parent Loop BB3_53 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a3, $a2, 0
	add.d	$a3, $a3, $a1
	st.d	$a3, $a2, 0
	addi.d	$a0, $a0, 1
	addi.d	$a2, $a2, 8
	bne	$s7, $a0, .LBB3_76
	b	.LBB3_51
.LBB3_77:                               # %.lr.ph.split.us.i45.i.preheader
                                        #   in Loop: Header=BB3_53 Depth=2
	ori	$a3, $zero, 8
	bltu	$fp, $a3, .LBB3_81
# %bb.78:                               # %vector.ph75
                                        #   in Loop: Header=BB3_53 Depth=2
	move	$a3, $fp
	bstrins.d	$a3, $zero, 2, 0
	add.d	$a0, $a0, $a3
	xvreplgr2vr.d	$xr0, $a1
	move	$a4, $s8
	.p2align	4, , 16
.LBB3_79:                               # %vector.body78
                                        #   Parent Loop BB3_47 Depth=1
                                        #     Parent Loop BB3_53 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	xvld	$xr1, $a4, -32
	xvld	$xr2, $a4, 0
	xvsub.d	$xr1, $xr1, $xr0
	xvsub.d	$xr2, $xr2, $xr0
	xvst	$xr1, $a4, -32
	xvst	$xr2, $a4, 0
	addi.d	$a2, $a2, -8
	addi.d	$a4, $a4, 64
	bnez	$a2, .LBB3_79
# %bb.80:                               # %middle.block83
                                        #   in Loop: Header=BB3_53 Depth=2
	beq	$fp, $a3, .LBB3_51
.LBB3_81:                               # %.lr.ph.split.us.i45.i.preheader134
                                        #   in Loop: Header=BB3_53 Depth=2
	alsl.d	$a2, $a0, $s5, 3
	.p2align	4, , 16
.LBB3_82:                               # %.lr.ph.split.us.i45.i
                                        #   Parent Loop BB3_47 Depth=1
                                        #     Parent Loop BB3_53 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a3, $a2, 0
	sub.d	$a3, $a3, $a1
	st.d	$a3, $a2, 0
	addi.d	$a0, $a0, 1
	addi.d	$a2, $a2, 8
	bne	$s7, $a0, .LBB3_82
	b	.LBB3_51
.LBB3_83:
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 0                     # 8-byte Folded Reload
.LBB3_84:                               # %._crit_edge
	pcaddu18i	$ra, %call36(StopStopwatch)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	addi.d	$a1, $sp, 104
	move	$a0, $s0
	pcaddu18i	$ra, %call36(FreeMemory)
	jirl	$ra, $ra, 0
	move	$a0, $fp
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
.Lfunc_end3:
	.size	DoStringSortIteration, .Lfunc_end3-DoStringSortIteration
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function DoBitops
.LCPI4_0:
	.dword	0x4530000000100000              # double 1.9342813118337666E+25
.LCPI4_1:
	.dword	0x413312d000000000              # double 1.25E+6
	.text
	.globl	DoBitops
	.p2align	5
	.type	DoBitops,@function
DoBitops:                               # @DoBitops
# %bb.0:
	addi.d	$sp, $sp, -96
	st.d	$ra, $sp, 88                    # 8-byte Folded Spill
	st.d	$fp, $sp, 80                    # 8-byte Folded Spill
	st.d	$s0, $sp, 72                    # 8-byte Folded Spill
	st.d	$s1, $sp, 64                    # 8-byte Folded Spill
	st.d	$s2, $sp, 56                    # 8-byte Folded Spill
	st.d	$s3, $sp, 48                    # 8-byte Folded Spill
	st.d	$s4, $sp, 40                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 32                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 24                   # 8-byte Folded Spill
	fst.d	$fs2, $sp, 16                   # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(global_bitopstruct)
	ld.d	$s2, $a0, %got_pc_lo12(global_bitopstruct)
	ld.d	$a0, $s2, 32
	ld.w	$s0, $s2, 0
	slli.d	$a0, $a0, 3
	addi.d	$a1, $sp, 4
	pcaddu18i	$ra, %call36(AllocateMemory)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 4
	move	$fp, $a0
	beqz	$s0, .LBB4_10
# %bb.1:
	beqz	$a1, .LBB4_3
# %bb.2:
	pcalau12i	$a0, %pc_hi20(.L.str.53)
	addi.d	$a0, $a0, %pc_lo12(.L.str.53)
	pcaddu18i	$ra, %call36(ReportError)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(ErrorExit)
	jirl	$ra, $ra, 0
.LBB4_3:
	ld.d	$a0, $s2, 24
	slli.d	$a0, $a0, 4
	addi.d	$a1, $sp, 4
	pcaddu18i	$ra, %call36(AllocateMemory)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 4
	move	$s0, $a0
	beqz	$a1, .LBB4_5
# %bb.4:
	pcalau12i	$a0, %pc_hi20(.L.str.53)
	addi.d	$a0, $a0, %pc_lo12(.L.str.53)
	pcaddu18i	$ra, %call36(ReportError)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 4
	move	$a0, $fp
	pcaddu18i	$ra, %call36(FreeMemory)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(ErrorExit)
	jirl	$ra, $ra, 0
.LBB4_5:                                # %.loopexit
	move	$s1, $zero
	pcalau12i	$a0, %pc_hi20(.LCPI4_0)
	fld.d	$fs1, $a0, %pc_lo12(.LCPI4_0)
	pcalau12i	$a0, %pc_hi20(.LCPI4_1)
	fld.d	$fs2, $a0, %pc_lo12(.LCPI4_1)
	movgr2fr.d	$fs0, $zero
	lu52i.d	$s3, $zero, 1107
	lu12i.w	$s4, 275200
	.p2align	4, , 16
.LBB4_6:                                # =>This Inner Loop Header: Depth=1
	ld.d	$a2, $s2, 24
	addi.d	$a3, $sp, 8
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(DoBitfieldIteration)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 8
	srli.d	$a2, $a1, 32
	or	$a2, $a2, $s3
	movgr2fr.d	$fa0, $a2
	fsub.d	$fa0, $fa0, $fs1
	bstrins.d	$a1, $s4, 63, 32
	movgr2fr.d	$fa1, $a1
	fadd.d	$fa0, $fa1, $fa0
	fadd.d	$fs0, $fs0, $fa0
	fcmp.clt.d	$fcc0, $fs0, $fs2
	add.d	$s1, $a0, $s1
	bcnez	$fcc0, .LBB4_6
# %bb.7:
	addi.d	$a1, $sp, 4
	move	$a0, $fp
	pcaddu18i	$ra, %call36(FreeMemory)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 4
	move	$a0, $s0
	pcaddu18i	$ra, %call36(FreeMemory)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(TicksToFracSecs)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s2, 0
	fdiv.d	$fa0, $fs0, $fa0
	fst.d	$fa0, $s2, 16
	bnez	$a0, .LBB4_9
# %bb.8:
	ori	$a0, $zero, 1
	st.w	$a0, $s2, 0
.LBB4_9:
	fld.d	$fs2, $sp, 16                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 24                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 32                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
	ret
.LBB4_10:
	beqz	$a1, .LBB4_12
# %bb.11:
	pcalau12i	$a0, %pc_hi20(.L.str.53)
	addi.d	$a0, $a0, %pc_lo12(.L.str.53)
	pcaddu18i	$ra, %call36(ReportError)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(ErrorExit)
	jirl	$ra, $ra, 0
.LBB4_12:                               # %.preheader
	pcalau12i	$a0, %got_pc_hi20(global_min_ticks)
	ld.d	$s3, $a0, %got_pc_lo12(global_min_ticks)
	ori	$a0, $zero, 30
	pcalau12i	$a1, %pc_hi20(.L.str.53)
	addi.d	$s1, $a1, %pc_lo12(.L.str.53)
	.p2align	4, , 16
.LBB4_13:                               # =>This Inner Loop Header: Depth=1
	st.d	$a0, $s2, 24
	slli.d	$a0, $a0, 4
	addi.d	$a1, $sp, 4
	pcaddu18i	$ra, %call36(AllocateMemory)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 4
	move	$s0, $a0
	beqz	$a1, .LBB4_15
# %bb.14:                               #   in Loop: Header=BB4_13 Depth=1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(ReportError)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 4
	move	$a0, $fp
	pcaddu18i	$ra, %call36(FreeMemory)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(ErrorExit)
	jirl	$ra, $ra, 0
.LBB4_15:                               #   in Loop: Header=BB4_13 Depth=1
	ld.d	$a2, $s2, 24
	addi.d	$a3, $sp, 8
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(DoBitfieldIteration)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s3, 0
	addi.w	$a0, $a0, 0
	bltu	$a1, $a0, .LBB4_5
# %bb.16:                               #   in Loop: Header=BB4_13 Depth=1
	addi.d	$a1, $sp, 4
	move	$a0, $s0
	pcaddu18i	$ra, %call36(FreeMemory)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 24
	addi.d	$a0, $a0, 100
	b	.LBB4_13
.Lfunc_end4:
	.size	DoBitops, .Lfunc_end4-DoBitops
                                        # -- End function
	.p2align	5                               # -- Begin function DoBitfieldIteration
	.type	DoBitfieldIteration,@function
DoBitfieldIteration:                    # @DoBitfieldIteration
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
	move	$s2, $a3
	move	$fp, $a2
	move	$s0, $a1
	move	$s1, $a0
	st.d	$zero, $a3, 0
	ori	$a0, $zero, 13
	pcaddu18i	$ra, %call36(randnum)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(global_bitopstruct)
	ld.d	$a0, $a0, %got_pc_lo12(global_bitopstruct)
	ld.d	$a1, $a0, 32
	beqz	$a1, .LBB5_3
# %bb.1:                                # %.lr.ph.preheader
	move	$a1, $zero
	lu12i.w	$a2, 349525
	ori	$a2, $a2, 1365
	bstrins.d	$a2, $a2, 62, 32
	move	$a3, $s1
	.p2align	4, , 16
.LBB5_2:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	st.d	$a2, $a3, 0
	ld.d	$a4, $a0, 32
	addi.d	$a1, $a1, 1
	addi.d	$a3, $a3, 8
	bltu	$a1, $a4, .LBB5_2
.LBB5_3:                                # %._crit_edge
	ori	$a0, $zero, 13
	pcaddu18i	$ra, %call36(randnum)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	blt	$fp, $a0, .LBB5_19
# %bb.4:                                # %.lr.ph53.preheader
	addi.d	$s4, $s0, 8
	lu12i.w	$a0, 63
	ori	$s3, $a0, 4092
	move	$s5, $fp
	.p2align	4, , 16
.LBB5_5:                                # %.lr.ph53
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $s3
	pcaddu18i	$ra, %call36(abs_randwc)
	jirl	$ra, $ra, 0
	bstrpick.d	$a1, $a0, 31, 0
	st.d	$a1, $s4, -8
	sub.w	$a0, $s3, $a0
	pcaddu18i	$ra, %call36(abs_randwc)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	st.d	$a0, $s4, 0
	ld.d	$a1, $s2, 0
	add.d	$a0, $a1, $a0
	st.d	$a0, $s2, 0
	addi.d	$s5, $s5, -1
	addi.d	$s4, $s4, 16
	bnez	$s5, .LBB5_5
# %bb.6:                                # %.lr.ph57.preheader
	move	$s2, $zero
	pcaddu18i	$ra, %call36(StartStopwatch)
	jirl	$ra, $ra, 0
	lu12i.w	$a1, -349526
	ori	$a1, $a1, 2731
	lu32i.d	$a1, -349526
	lu52i.d	$a1, $a1, -1366
	ori	$a2, $zero, 2
	ori	$a3, $zero, 1
	addi.w	$a4, $zero, -8
	lu52i.d	$a4, $a4, 511
	b	.LBB5_8
	.p2align	4, , 16
.LBB5_7:                                # %ToggleBitRun.exit
                                        #   in Loop: Header=BB5_8 Depth=1
	addi.d	$s2, $s2, 1
	beq	$s2, $fp, .LBB5_20
.LBB5_8:                                # %.lr.ph57
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_18 Depth 2
                                        #     Child Loop BB5_12 Depth 2
                                        #     Child Loop BB5_15 Depth 2
	mulh.du	$a7, $s2, $a1
	srli.d	$t0, $a7, 1
	bstrins.d	$a7, $zero, 0, 0
	alsl.d	$a5, $s2, $s0, 3
	alsl.d	$a6, $s2, $a5, 3
	ld.d	$a5, $a6, 8
	add.d	$a7, $a7, $t0
	sub.d	$a7, $s2, $a7
	beq	$a7, $a2, .LBB5_13
# %bb.9:                                # %.lr.ph57
                                        #   in Loop: Header=BB5_8 Depth=1
	bne	$a7, $a3, .LBB5_16
# %bb.10:                               #   in Loop: Header=BB5_8 Depth=1
	beqz	$a5, .LBB5_7
# %bb.11:                               # %.lr.ph.i43
                                        #   in Loop: Header=BB5_8 Depth=1
	ld.d	$a6, $a6, 0
	.p2align	4, , 16
.LBB5_12:                               # %.lr.ph.split.us.i
                                        #   Parent Loop BB5_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	srli.d	$a7, $a6, 3
	and	$a7, $a7, $a4
	ldx.d	$t0, $s1, $a7
	addi.d	$a5, $a5, -1
	sll.d	$t1, $a3, $a6
	andn	$t0, $t0, $t1
	stx.d	$t0, $s1, $a7
	addi.d	$a6, $a6, 1
	bnez	$a5, .LBB5_12
	b	.LBB5_7
	.p2align	4, , 16
.LBB5_13:                               #   in Loop: Header=BB5_8 Depth=1
	beqz	$a5, .LBB5_7
# %bb.14:                               # %.lr.ph.i45.preheader
                                        #   in Loop: Header=BB5_8 Depth=1
	ld.d	$a6, $a6, 0
	.p2align	4, , 16
.LBB5_15:                               # %.lr.ph.i45
                                        #   Parent Loop BB5_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	srli.d	$a7, $a6, 3
	and	$a7, $a7, $a4
	ldx.d	$t0, $s1, $a7
	addi.d	$a5, $a5, -1
	sll.d	$t1, $a3, $a6
	xor	$t0, $t0, $t1
	stx.d	$t0, $s1, $a7
	addi.d	$a6, $a6, 1
	bnez	$a5, .LBB5_15
	b	.LBB5_7
	.p2align	4, , 16
.LBB5_16:                               #   in Loop: Header=BB5_8 Depth=1
	beqz	$a5, .LBB5_7
# %bb.17:                               # %.lr.ph.i
                                        #   in Loop: Header=BB5_8 Depth=1
	ld.d	$a6, $a6, 0
	.p2align	4, , 16
.LBB5_18:                               # %.lr.ph.split.i
                                        #   Parent Loop BB5_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	srli.d	$a7, $a6, 3
	and	$a7, $a7, $a4
	ldx.d	$t0, $s1, $a7
	addi.d	$a5, $a5, -1
	sll.d	$t1, $a3, $a6
	or	$t0, $t1, $t0
	stx.d	$t0, $s1, $a7
	addi.d	$a6, $a6, 1
	bnez	$a5, .LBB5_18
	b	.LBB5_7
.LBB5_19:                               # %._crit_edge54
	pcaddu18i	$ra, %call36(StartStopwatch)
	jirl	$ra, $ra, 0
.LBB5_20:                               # %._crit_edge58
	ld.d	$s5, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	pcaddu18i	$t8, %call36(StopStopwatch)
	jr	$t8
.Lfunc_end5:
	.size	DoBitfieldIteration, .Lfunc_end5-DoBitfieldIteration
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function DoEmFloat
.LCPI6_0:
	.dword	0x4052c00000000000              # double 75
.LCPI6_1:
	.dword	0x4530000000100000              # double 1.9342813118337666E+25
	.text
	.globl	DoEmFloat
	.p2align	5
	.type	DoEmFloat,@function
DoEmFloat:                              # @DoEmFloat
# %bb.0:
	addi.d	$sp, $sp, -80
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
	st.d	$s1, $sp, 48                    # 8-byte Folded Spill
	st.d	$s2, $sp, 40                    # 8-byte Folded Spill
	st.d	$s3, $sp, 32                    # 8-byte Folded Spill
	st.d	$s4, $sp, 24                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 16                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 8                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(global_emfloatstruct)
	ld.d	$s3, $a0, %got_pc_lo12(global_emfloatstruct)
	ld.d	$a0, $s3, 16
	slli.d	$a1, $a0, 3
	alsl.d	$a0, $a0, $a1, 2
	addi.d	$a1, $sp, 4
	pcaddu18i	$ra, %call36(AllocateMemory)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 4
	move	$fp, $a0
	beqz	$a1, .LBB6_2
# %bb.1:
	pcalau12i	$a0, %pc_hi20(.L.str.54)
	addi.d	$a0, $a0, %pc_lo12(.L.str.54)
	pcaddu18i	$ra, %call36(ReportError)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(ErrorExit)
	jirl	$ra, $ra, 0
.LBB6_2:
	ld.d	$a0, $s3, 16
	slli.d	$a1, $a0, 3
	alsl.d	$a0, $a0, $a1, 2
	addi.d	$a1, $sp, 4
	pcaddu18i	$ra, %call36(AllocateMemory)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 4
	move	$s0, $a0
	beqz	$a1, .LBB6_4
# %bb.3:
	pcalau12i	$a0, %pc_hi20(.L.str.54)
	addi.d	$a0, $a0, %pc_lo12(.L.str.54)
	pcaddu18i	$ra, %call36(ReportError)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 4
	move	$a0, $fp
	pcaddu18i	$ra, %call36(FreeMemory)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(ErrorExit)
	jirl	$ra, $ra, 0
.LBB6_4:
	ld.d	$a0, $s3, 16
	slli.d	$a1, $a0, 3
	alsl.d	$a0, $a0, $a1, 2
	addi.d	$a1, $sp, 4
	pcaddu18i	$ra, %call36(AllocateMemory)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 4
	move	$s1, $a0
	beqz	$a1, .LBB6_6
# %bb.5:
	pcalau12i	$a0, %pc_hi20(.L.str.54)
	addi.d	$a0, $a0, %pc_lo12(.L.str.54)
	pcaddu18i	$ra, %call36(ReportError)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 4
	move	$a0, $fp
	pcaddu18i	$ra, %call36(FreeMemory)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 4
	move	$a0, $s0
	pcaddu18i	$ra, %call36(FreeMemory)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(ErrorExit)
	jirl	$ra, $ra, 0
.LBB6_6:
	ld.d	$a3, $s3, 16
	move	$a0, $fp
	move	$a1, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(SetupCPUEmFloatArrays)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s3, 0
	beqz	$a0, .LBB6_9
.LBB6_7:                                # %.loopexit
	ld.d	$a0, $s3, 24
	bnez	$a0, .LBB6_29
# %bb.8:
	pcalau12i	$a0, %pc_hi20(.Lstr.1)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.1)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 4
	move	$a0, $fp
	pcaddu18i	$ra, %call36(FreeMemory)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 4
	move	$a0, $s0
	pcaddu18i	$ra, %call36(FreeMemory)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 4
	move	$a0, $s1
	pcaddu18i	$ra, %call36(FreeMemory)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(ErrorExit)
	jirl	$ra, $ra, 0
	b	.LBB6_29
.LBB6_9:
	ld.d	$a3, $s3, 16
	st.d	$zero, $s3, 24
	ori	$a4, $zero, 1
	ori	$s2, $zero, 1
	move	$a0, $fp
	move	$a1, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(DoEmFloatIteration)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(global_min_ticks)
	ld.d	$s4, $a1, %got_pc_lo12(global_min_ticks)
	ld.d	$a1, $s4, 0
	bltu	$a1, $a0, .LBB6_28
# %bb.10:
	ld.d	$a3, $s3, 16
	ori	$a4, $zero, 2
	ori	$s2, $zero, 2
	move	$a0, $fp
	move	$a1, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(DoEmFloatIteration)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s4, 0
	bltu	$a1, $a0, .LBB6_28
# %bb.11:
	ld.d	$a3, $s3, 16
	ori	$a4, $zero, 4
	ori	$s2, $zero, 4
	move	$a0, $fp
	move	$a1, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(DoEmFloatIteration)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s4, 0
	bltu	$a1, $a0, .LBB6_28
# %bb.12:
	ld.d	$a3, $s3, 16
	ori	$a4, $zero, 8
	ori	$s2, $zero, 8
	move	$a0, $fp
	move	$a1, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(DoEmFloatIteration)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s4, 0
	bltu	$a1, $a0, .LBB6_28
# %bb.13:
	ld.d	$a3, $s3, 16
	ori	$a4, $zero, 16
	ori	$s2, $zero, 16
	move	$a0, $fp
	move	$a1, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(DoEmFloatIteration)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s4, 0
	bltu	$a1, $a0, .LBB6_28
# %bb.14:
	ld.d	$a3, $s3, 16
	ori	$a4, $zero, 32
	ori	$s2, $zero, 32
	move	$a0, $fp
	move	$a1, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(DoEmFloatIteration)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s4, 0
	bltu	$a1, $a0, .LBB6_28
# %bb.15:
	ld.d	$a3, $s3, 16
	ori	$a4, $zero, 64
	ori	$s2, $zero, 64
	move	$a0, $fp
	move	$a1, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(DoEmFloatIteration)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s4, 0
	bltu	$a1, $a0, .LBB6_28
# %bb.16:
	ld.d	$a3, $s3, 16
	ori	$a4, $zero, 128
	ori	$s2, $zero, 128
	move	$a0, $fp
	move	$a1, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(DoEmFloatIteration)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s4, 0
	bltu	$a1, $a0, .LBB6_28
# %bb.17:
	ld.d	$a3, $s3, 16
	ori	$a4, $zero, 256
	ori	$s2, $zero, 256
	move	$a0, $fp
	move	$a1, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(DoEmFloatIteration)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s4, 0
	bltu	$a1, $a0, .LBB6_28
# %bb.18:
	ld.d	$a3, $s3, 16
	ori	$a4, $zero, 512
	ori	$s2, $zero, 512
	move	$a0, $fp
	move	$a1, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(DoEmFloatIteration)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s4, 0
	bltu	$a1, $a0, .LBB6_28
# %bb.19:
	ld.d	$a3, $s3, 16
	ori	$a4, $zero, 1024
	ori	$s2, $zero, 1024
	move	$a0, $fp
	move	$a1, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(DoEmFloatIteration)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s4, 0
	bltu	$a1, $a0, .LBB6_28
# %bb.20:
	ld.d	$a3, $s3, 16
	ori	$a4, $zero, 2048
	ori	$s2, $zero, 2048
	move	$a0, $fp
	move	$a1, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(DoEmFloatIteration)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s4, 0
	bltu	$a1, $a0, .LBB6_28
# %bb.21:
	ld.d	$a3, $s3, 16
	lu12i.w	$s2, 1
	move	$a0, $fp
	move	$a1, $s0
	move	$a2, $s1
	move	$a4, $s2
	pcaddu18i	$ra, %call36(DoEmFloatIteration)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s4, 0
	bltu	$a1, $a0, .LBB6_28
# %bb.22:
	ld.d	$a3, $s3, 16
	lu12i.w	$s2, 2
	move	$a0, $fp
	move	$a1, $s0
	move	$a2, $s1
	move	$a4, $s2
	pcaddu18i	$ra, %call36(DoEmFloatIteration)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s4, 0
	bltu	$a1, $a0, .LBB6_28
# %bb.23:
	ld.d	$a3, $s3, 16
	lu12i.w	$s2, 4
	move	$a0, $fp
	move	$a1, $s0
	move	$a2, $s1
	move	$a4, $s2
	pcaddu18i	$ra, %call36(DoEmFloatIteration)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s4, 0
	bltu	$a1, $a0, .LBB6_28
# %bb.24:
	ld.d	$a3, $s3, 16
	lu12i.w	$s2, 8
	move	$a0, $fp
	move	$a1, $s0
	move	$a2, $s1
	move	$a4, $s2
	pcaddu18i	$ra, %call36(DoEmFloatIteration)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s4, 0
	bltu	$a1, $a0, .LBB6_28
# %bb.25:
	ld.d	$a3, $s3, 16
	lu12i.w	$s2, 16
	move	$a0, $fp
	move	$a1, $s0
	move	$a2, $s1
	move	$a4, $s2
	pcaddu18i	$ra, %call36(DoEmFloatIteration)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s4, 0
	bltu	$a1, $a0, .LBB6_28
# %bb.26:
	ld.d	$a3, $s3, 16
	lu12i.w	$s2, 32
	move	$a0, $fp
	move	$a1, $s0
	move	$a2, $s1
	move	$a4, $s2
	pcaddu18i	$ra, %call36(DoEmFloatIteration)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s4, 0
	bltu	$a1, $a0, .LBB6_28
# %bb.27:
	ld.d	$a3, $s3, 16
	lu12i.w	$s2, 64
	move	$a0, $fp
	move	$a1, $s0
	move	$a2, $s1
	move	$a4, $s2
	pcaddu18i	$ra, %call36(DoEmFloatIteration)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s4, 0
	bgeu	$a1, $a0, .LBB6_7
.LBB6_28:                               # %.thread
	st.d	$s2, $s3, 24
.LBB6_29:                               # %.preheader
	pcalau12i	$a0, %pc_hi20(.LCPI6_0)
	fld.d	$fs1, $a0, %pc_lo12(.LCPI6_0)
	move	$s2, $zero
	movgr2fr.d	$fs0, $zero
	.p2align	4, , 16
.LBB6_30:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $s3, 16
	ld.d	$a4, $s3, 24
	move	$a0, $fp
	move	$a1, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(DoEmFloatIteration)
	jirl	$ra, $ra, 0
	vldi	$vr0, -912
	fadd.d	$fs0, $fs0, $fa0
	fcmp.clt.d	$fcc0, $fs0, $fs1
	add.d	$s2, $a0, $s2
	bcnez	$fcc0, .LBB6_30
# %bb.31:
	addi.d	$a1, $sp, 4
	move	$a0, $fp
	pcaddu18i	$ra, %call36(FreeMemory)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 4
	move	$a0, $s0
	pcaddu18i	$ra, %call36(FreeMemory)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 4
	move	$a0, $s1
	pcaddu18i	$ra, %call36(FreeMemory)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, 24
	srli.d	$a1, $a0, 32
	pcalau12i	$a2, %pc_hi20(.LCPI6_1)
	fld.d	$fa0, $a2, %pc_lo12(.LCPI6_1)
	lu52i.d	$a2, $zero, 1107
	or	$a1, $a1, $a2
	movgr2fr.d	$fa1, $a1
	fsub.d	$fa0, $fa1, $fa0
	lu12i.w	$a1, 275200
	bstrins.d	$a0, $a1, 63, 32
	movgr2fr.d	$fa1, $a0
	fadd.d	$fa0, $fa1, $fa0
	fmul.d	$fs0, $fs0, $fa0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(TicksToFracSecs)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s3, 0
	fdiv.d	$fa0, $fs0, $fa0
	fst.d	$fa0, $s3, 32
	bnez	$a0, .LBB6_33
# %bb.32:
	ori	$a0, $zero, 1
	st.w	$a0, $s3, 0
.LBB6_33:
	fld.d	$fs1, $sp, 8                    # 8-byte Folded Reload
	fld.d	$fs0, $sp, 16                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.Lfunc_end6:
	.size	DoEmFloat, .Lfunc_end6-DoEmFloat
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function DoFourier
.LCPI7_0:
	.dword	0x4530000000100000              # double 1.9342813118337666E+25
.LCPI7_1:
	.dword	0x40c3880000000000              # double 1.0E+4
	.text
	.globl	DoFourier
	.p2align	5
	.type	DoFourier,@function
DoFourier:                              # @DoFourier
# %bb.0:
	addi.d	$sp, $sp, -96
	st.d	$ra, $sp, 88                    # 8-byte Folded Spill
	st.d	$fp, $sp, 80                    # 8-byte Folded Spill
	st.d	$s0, $sp, 72                    # 8-byte Folded Spill
	st.d	$s1, $sp, 64                    # 8-byte Folded Spill
	st.d	$s2, $sp, 56                    # 8-byte Folded Spill
	st.d	$s3, $sp, 48                    # 8-byte Folded Spill
	st.d	$s4, $sp, 40                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 32                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 24                   # 8-byte Folded Spill
	fst.d	$fs2, $sp, 16                   # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(global_fourierstruct)
	ld.d	$s2, $a0, %got_pc_lo12(global_fourierstruct)
	ld.w	$a0, $s2, 0
	beqz	$a0, .LBB7_10
# %bb.1:
	ld.d	$a0, $s2, 16
	slli.d	$a0, $a0, 3
	addi.d	$a1, $sp, 12
	pcaddu18i	$ra, %call36(AllocateMemory)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 12
	move	$fp, $a0
	beqz	$a1, .LBB7_3
# %bb.2:
	pcalau12i	$a0, %pc_hi20(.L.str.56)
	addi.d	$a0, $a0, %pc_lo12(.L.str.56)
	pcaddu18i	$ra, %call36(ReportError)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(ErrorExit)
	jirl	$ra, $ra, 0
.LBB7_3:
	ld.d	$a0, $s2, 16
	slli.d	$a0, $a0, 3
	addi.d	$a1, $sp, 12
	pcaddu18i	$ra, %call36(AllocateMemory)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 12
	move	$s0, $a0
	beqz	$a1, .LBB7_5
# %bb.4:
	pcalau12i	$a0, %pc_hi20(.L.str.56)
	addi.d	$a0, $a0, %pc_lo12(.L.str.56)
	pcaddu18i	$ra, %call36(ReportError)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 12
	move	$a0, $fp
	pcaddu18i	$ra, %call36(FreeMemory)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(ErrorExit)
	jirl	$ra, $ra, 0
.LBB7_5:                                # %.loopexit
	move	$s1, $zero
	ld.d	$a2, $s2, 16
	movgr2fr.d	$fs0, $zero
	lu52i.d	$s3, $zero, 1107
	pcalau12i	$a0, %pc_hi20(.LCPI7_0)
	fld.d	$fs1, $a0, %pc_lo12(.LCPI7_0)
	pcalau12i	$a0, %pc_hi20(.LCPI7_1)
	fld.d	$fs2, $a0, %pc_lo12(.LCPI7_1)
	lu12i.w	$s4, 275200
	.p2align	4, , 16
.LBB7_6:                                # =>This Inner Loop Header: Depth=1
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(DoFPUTransIteration)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s2, 16
	srli.d	$a1, $a2, 32
	or	$a1, $a1, $s3
	movgr2fr.d	$fa0, $a1
	fsub.d	$fa0, $fa0, $fs1
	move	$a1, $a2
	bstrins.d	$a1, $s4, 63, 32
	movgr2fr.d	$fa1, $a1
	fadd.d	$fa0, $fa1, $fa0
	vldi	$vr1, -784
	vldi	$vr2, -1024
	fmadd.d	$fa0, $fa0, $fa2, $fa1
	fadd.d	$fs0, $fs0, $fa0
	fcmp.clt.d	$fcc0, $fs0, $fs2
	add.d	$s1, $a0, $s1
	bcnez	$fcc0, .LBB7_6
# %bb.7:
	addi.d	$a1, $sp, 12
	move	$a0, $fp
	pcaddu18i	$ra, %call36(FreeMemory)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 12
	move	$a0, $s0
	pcaddu18i	$ra, %call36(FreeMemory)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(TicksToFracSecs)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s2, 0
	fdiv.d	$fa0, $fs0, $fa0
	fst.d	$fa0, $s2, 24
	bnez	$a0, .LBB7_9
# %bb.8:
	ori	$a0, $zero, 1
	st.w	$a0, $s2, 0
.LBB7_9:
	fld.d	$fs2, $sp, 16                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 24                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 32                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
	ret
.LBB7_10:                               # %.preheader.preheader
	pcalau12i	$a0, %got_pc_hi20(global_min_ticks)
	ld.d	$s3, $a0, %got_pc_lo12(global_min_ticks)
	ori	$a0, $zero, 100
	pcalau12i	$a1, %pc_hi20(.L.str.56)
	addi.d	$s1, $a1, %pc_lo12(.L.str.56)
	.p2align	4, , 16
.LBB7_11:                               # %.preheader
                                        # =>This Inner Loop Header: Depth=1
	st.d	$a0, $s2, 16
	slli.d	$a0, $a0, 3
	addi.d	$a1, $sp, 12
	pcaddu18i	$ra, %call36(AllocateMemory)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 12
	move	$fp, $a0
	beqz	$a1, .LBB7_13
# %bb.12:                               #   in Loop: Header=BB7_11 Depth=1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(ReportError)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(ErrorExit)
	jirl	$ra, $ra, 0
.LBB7_13:                               #   in Loop: Header=BB7_11 Depth=1
	ld.d	$a0, $s2, 16
	slli.d	$a0, $a0, 3
	addi.d	$a1, $sp, 12
	pcaddu18i	$ra, %call36(AllocateMemory)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 12
	move	$s0, $a0
	beqz	$a1, .LBB7_15
# %bb.14:                               #   in Loop: Header=BB7_11 Depth=1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(ReportError)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 12
	move	$a0, $fp
	pcaddu18i	$ra, %call36(FreeMemory)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(ErrorExit)
	jirl	$ra, $ra, 0
.LBB7_15:                               #   in Loop: Header=BB7_11 Depth=1
	ld.d	$a2, $s2, 16
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(DoFPUTransIteration)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s3, 0
	bltu	$a1, $a0, .LBB7_5
# %bb.16:                               #   in Loop: Header=BB7_11 Depth=1
	addi.d	$a1, $sp, 12
	move	$a0, $fp
	pcaddu18i	$ra, %call36(FreeMemory)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 12
	move	$a0, $s0
	pcaddu18i	$ra, %call36(FreeMemory)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 16
	addi.d	$a0, $a0, 50
	b	.LBB7_11
.Lfunc_end7:
	.size	DoFourier, .Lfunc_end7-DoFourier
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function DoFPUTransIteration
.LCPI8_0:
	.dword	0x3f847ae147ae147b              # double 0.01
.LCPI8_1:
	.dword	0x4530000000100000              # double 1.9342813118337666E+25
.LCPI8_2:
	.dword	0x400921fb54442d18              # double 3.1415926535897931
	.text
	.p2align	5
	.type	DoFPUTransIteration,@function
DoFPUTransIteration:                    # @DoFPUTransIteration
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
	fst.d	$fs7, $sp, 40                   # 8-byte Folded Spill
	move	$fp, $a2
	move	$s0, $a1
	move	$s1, $a0
	movgr2fr.d	$fs0, $zero
	addi.w	$s3, $zero, -198
	vldi	$vr0, -928
	vst	$vr0, $sp, 16                   # 16-byte Folded Spill
	pcaddu18i	$ra, %call36(StartStopwatch)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.LCPI8_0)
	fld.d	$fs3, $a0, %pc_lo12(.LCPI8_0)
	ori	$s2, $zero, 0
	lu32i.d	$s2, 1
	.p2align	4, , 16
.LBB8_1:                                # %thefunction.exit27.us.i
                                        # =>This Inner Loop Header: Depth=1
	fadd.d	$fs0, $fs0, $fs3
	vldi	$vr0, -912
	fadd.d	$fa0, $fs0, $fa0
	fmov.d	$fa1, $fs0
	pcaddu18i	$ra, %call36(pow)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $s3, 31, 0
	addi.d	$s3, $a0, 1
	and	$a0, $s3, $s2
	vld	$vr1, $sp, 16                   # 16-byte Folded Reload
	fadd.d	$fa1, $fa1, $fa0
	vst	$vr1, $sp, 16                   # 16-byte Folded Spill
	beqz	$a0, .LBB8_1
# %bb.2:                                # %TrapezoidIntegrate.exit
	vldi	$vr0, -1006
	vld	$vr1, $sp, 16                   # 16-byte Folded Reload
	fadd.d	$fa0, $fa1, $fa0
	fmul.d	$fa0, $fa0, $fs3
	vldi	$vr1, -928
	fmul.d	$fa0, $fa0, $fa1
	ori	$a0, $zero, 2
	fst.d	$fa0, $s1, 0
	bltu	$fp, $a0, .LBB8_9
# %bb.3:                                # %.lr.ph.preheader
	ori	$s3, $zero, 1
	lu52i.d	$s4, $zero, 1107
	pcalau12i	$a0, %pc_hi20(.LCPI8_1)
	fld.d	$fa0, $a0, %pc_lo12(.LCPI8_1)
	fst.d	$fa0, $sp, 16                   # 8-byte Folded Spill
	lu12i.w	$s5, 275200
	pcalau12i	$a0, %pc_hi20(.LCPI8_2)
	fld.d	$fs5, $a0, %pc_lo12(.LCPI8_2)
	movgr2fr.d	$fs6, $zero
	addi.w	$s2, $zero, -198
	ori	$s7, $zero, 0
	lu32i.d	$s7, 1
	.p2align	4, , 16
.LBB8_4:                                # %.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_5 Depth 2
                                        #     Child Loop BB8_7 Depth 2
	srli.d	$a0, $s3, 32
	or	$a0, $a0, $s4
	movgr2fr.d	$fa0, $a0
	fld.d	$fa1, $sp, 16                   # 8-byte Folded Reload
	fsub.d	$fa0, $fa0, $fa1
	move	$a0, $s3
	bstrins.d	$a0, $s5, 63, 32
	movgr2fr.d	$fa1, $a0
	fadd.d	$fa0, $fa1, $fa0
	fmul.d	$fs7, $fa0, $fs5
	fmul.d	$fs0, $fs7, $fs6
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(cos)
	jirl	$ra, $ra, 0
	vldi	$vr1, -928
	fmul.d	$fs4, $fa0, $fa1
	move	$s8, $s2
	fmov.d	$fs1, $fs6
	.p2align	4, , 16
.LBB8_5:                                # %thefunction.exit27.us37.i
                                        #   Parent Loop BB8_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fadd.d	$fs1, $fs1, $fs3
	vldi	$vr0, -912
	fadd.d	$fa0, $fs1, $fa0
	fmov.d	$fa1, $fs1
	pcaddu18i	$ra, %call36(pow)
	jirl	$ra, $ra, 0
	fmov.d	$fs2, $fa0
	fmul.d	$fa0, $fs7, $fs1
	pcaddu18i	$ra, %call36(cos)
	jirl	$ra, $ra, 0
	fmul.d	$fa0, $fs2, $fa0
	bstrpick.d	$a0, $s8, 31, 0
	addi.d	$s8, $a0, 1
	and	$a0, $s8, $s7
	fadd.d	$fs4, $fs4, $fa0
	beqz	$a0, .LBB8_5
# %bb.6:                                # %TrapezoidIntegrate.exit12
                                        #   in Loop: Header=BB8_4 Depth=1
	fadd.d	$fs1, $fs7, $fs7
	fmov.d	$fa0, $fs1
	pcaddu18i	$ra, %call36(cos)
	jirl	$ra, $ra, 0
	vldi	$vr1, -990
	fmul.d	$fa0, $fa0, $fa1
	vldi	$vr1, -928
	fmul.d	$fa0, $fa0, $fa1
	fadd.d	$fa0, $fs4, $fa0
	fmul.d	$fa0, $fa0, $fs3
	slli.d	$s8, $s3, 3
	fstx.d	$fa0, $s1, $s8
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(sin)
	jirl	$ra, $ra, 0
	vldi	$vr1, -928
	fmul.d	$fs4, $fa0, $fa1
	move	$s6, $s2
	fmov.d	$fs0, $fs6
	.p2align	4, , 16
.LBB8_7:                                # %thefunction.exit27.us45.i
                                        #   Parent Loop BB8_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fadd.d	$fs0, $fs0, $fs3
	vldi	$vr0, -912
	fadd.d	$fa0, $fs0, $fa0
	fmov.d	$fa1, $fs0
	pcaddu18i	$ra, %call36(pow)
	jirl	$ra, $ra, 0
	fmov.d	$fs2, $fa0
	fmul.d	$fa0, $fs7, $fs0
	pcaddu18i	$ra, %call36(sin)
	jirl	$ra, $ra, 0
	fmul.d	$fa0, $fs2, $fa0
	bstrpick.d	$a0, $s6, 31, 0
	addi.d	$s6, $a0, 1
	and	$a0, $s6, $s7
	fadd.d	$fs4, $fs4, $fa0
	beqz	$a0, .LBB8_7
# %bb.8:                                # %TrapezoidIntegrate.exit13
                                        #   in Loop: Header=BB8_4 Depth=1
	fmov.d	$fa0, $fs1
	pcaddu18i	$ra, %call36(sin)
	jirl	$ra, $ra, 0
	vldi	$vr1, -990
	fmul.d	$fa0, $fa0, $fa1
	vldi	$vr1, -928
	fmul.d	$fa0, $fa0, $fa1
	fadd.d	$fa0, $fs4, $fa0
	fmul.d	$fa0, $fa0, $fs3
	addi.d	$s3, $s3, 1
	fstx.d	$fa0, $s0, $s8
	bne	$s3, $fp, .LBB8_4
.LBB8_9:                                # %._crit_edge
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	fld.d	$fs7, $sp, 40                   # 8-byte Folded Reload
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
	pcaddu18i	$t8, %call36(StopStopwatch)
	jr	$t8
.Lfunc_end8:
	.size	DoFPUTransIteration, .Lfunc_end8-DoFPUTransIteration
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function DoAssign
.LCPI9_0:
	.dword	0x4530000000100000              # double 1.9342813118337666E+25
	.text
	.globl	DoAssign
	.p2align	5
	.type	DoAssign,@function
DoAssign:                               # @DoAssign
# %bb.0:
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 8                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(global_assignstruct)
	ld.d	$s1, $a0, %got_pc_lo12(global_assignstruct)
	ld.w	$a0, $s1, 0
	beqz	$a0, .LBB9_6
# %bb.1:
	ld.d	$a0, $s1, 16
	lu12i.w	$a1, 19
	ori	$a1, $a1, 3784
	mul.d	$a0, $a0, $a1
	addi.d	$a1, $sp, 4
	pcaddu18i	$ra, %call36(AllocateMemory)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 4
	move	$fp, $a0
	beqz	$a1, .LBB9_3
# %bb.2:
	pcalau12i	$a0, %pc_hi20(.L.str.57)
	addi.d	$a0, $a0, %pc_lo12(.L.str.57)
	pcaddu18i	$ra, %call36(ReportError)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 4
	move	$a0, $fp
	pcaddu18i	$ra, %call36(FreeMemory)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(ErrorExit)
	jirl	$ra, $ra, 0
.LBB9_3:                                # %.loopexit
	ld.d	$a1, $s1, 16
	move	$a0, $fp
	pcaddu18i	$ra, %call36(DoAssignIteration)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 16
	move	$s0, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(DoAssignIteration)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 16
	add.d	$s0, $a0, $s0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(DoAssignIteration)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 16
	add.d	$s0, $a0, $s0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(DoAssignIteration)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 16
	add.d	$s0, $a0, $s0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(DoAssignIteration)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 16
	add.d	$s0, $a0, $s0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(DoAssignIteration)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 16
	add.d	$s0, $a0, $s0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(DoAssignIteration)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 16
	add.d	$s0, $a0, $s0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(DoAssignIteration)
	jirl	$ra, $ra, 0
	add.d	$s0, $a0, $s0
	addi.d	$a1, $sp, 4
	move	$a0, $fp
	pcaddu18i	$ra, %call36(FreeMemory)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 16
	srli.d	$a1, $a0, 32
	pcalau12i	$a2, %pc_hi20(.LCPI9_0)
	fld.d	$fa0, $a2, %pc_lo12(.LCPI9_0)
	lu52i.d	$a2, $zero, 1107
	or	$a1, $a1, $a2
	movgr2fr.d	$fa1, $a1
	fsub.d	$fa0, $fa1, $fa0
	lu12i.w	$a1, 275200
	bstrins.d	$a0, $a1, 63, 32
	movgr2fr.d	$fa1, $a0
	fadd.d	$fa0, $fa1, $fa0
	vldi	$vr1, -992
	fmul.d	$fs0, $fa0, $fa1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(TicksToFracSecs)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s1, 0
	fdiv.d	$fa0, $fs0, $fa0
	fst.d	$fa0, $s1, 24
	bnez	$a0, .LBB9_5
# %bb.4:
	ori	$a0, $zero, 1
	st.w	$a0, $s1, 0
.LBB9_5:
	fld.d	$fs0, $sp, 8                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.LBB9_6:                                # %.preheader.preheader
	ori	$a0, $zero, 1
	lu12i.w	$a1, 19
	pcalau12i	$a2, %got_pc_hi20(global_min_ticks)
	ld.d	$s2, $a2, %got_pc_lo12(global_min_ticks)
	ori	$s3, $a1, 3784
	pcalau12i	$a1, %pc_hi20(.L.str.57)
	addi.d	$s0, $a1, %pc_lo12(.L.str.57)
	.p2align	4, , 16
.LBB9_7:                                # %.preheader
                                        # =>This Inner Loop Header: Depth=1
	st.d	$a0, $s1, 16
	mul.d	$a0, $a0, $s3
	addi.d	$a1, $sp, 4
	pcaddu18i	$ra, %call36(AllocateMemory)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 4
	move	$fp, $a0
	beqz	$a1, .LBB9_9
# %bb.8:                                #   in Loop: Header=BB9_7 Depth=1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(ReportError)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 4
	move	$a0, $fp
	pcaddu18i	$ra, %call36(FreeMemory)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(ErrorExit)
	jirl	$ra, $ra, 0
.LBB9_9:                                #   in Loop: Header=BB9_7 Depth=1
	ld.d	$a1, $s1, 16
	move	$a0, $fp
	pcaddu18i	$ra, %call36(DoAssignIteration)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s2, 0
	bltu	$a1, $a0, .LBB9_3
# %bb.10:                               #   in Loop: Header=BB9_7 Depth=1
	addi.d	$a1, $sp, 4
	move	$a0, $fp
	pcaddu18i	$ra, %call36(FreeMemory)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 16
	addi.d	$a0, $a0, 1
	b	.LBB9_7
.Lfunc_end9:
	.size	DoAssign, .Lfunc_end9-DoAssign
                                        # -- End function
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0                          # -- Begin function DoAssignIteration
.LCPI10_0:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
	.dword	0                               # 0x0
	.dword	0                               # 0x0
.LCPI10_1:
	.half	0                               # 0x0
	.half	8                               # 0x8
	.half	8                               # 0x8
	.half	8                               # 0x8
	.half	8                               # 0x8
	.half	8                               # 0x8
	.half	8                               # 0x8
	.half	8                               # 0x8
	.half	8                               # 0x8
	.half	8                               # 0x8
	.half	8                               # 0x8
	.half	8                               # 0x8
	.half	8                               # 0x8
	.half	8                               # 0x8
	.half	8                               # 0x8
	.half	8                               # 0x8
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI10_2:
	.half	0                               # 0x0
	.half	8                               # 0x8
	.half	8                               # 0x8
	.half	8                               # 0x8
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.half	65535                           # 0xffff
	.text
	.p2align	5
	.type	DoAssignIteration,@function
DoAssignIteration:                      # @DoAssignIteration
# %bb.0:
	addi.d	$sp, $sp, -2032
	st.d	$ra, $sp, 2024                  # 8-byte Folded Spill
	st.d	$fp, $sp, 2016                  # 8-byte Folded Spill
	st.d	$s0, $sp, 2008                  # 8-byte Folded Spill
	st.d	$s1, $sp, 2000                  # 8-byte Folded Spill
	st.d	$s2, $sp, 1992                  # 8-byte Folded Spill
	st.d	$s3, $sp, 1984                  # 8-byte Folded Spill
	st.d	$s4, $sp, 1976                  # 8-byte Folded Spill
	st.d	$s5, $sp, 1968                  # 8-byte Folded Spill
	st.d	$s6, $sp, 1960                  # 8-byte Folded Spill
	st.d	$s7, $sp, 1952                  # 8-byte Folded Spill
	st.d	$s8, $sp, 1944                  # 8-byte Folded Spill
	lu12i.w	$a2, 4
	ori	$a2, $a2, 2768
	sub.d	$sp, $sp, $a2
	move	$s5, $a1
	move	$s3, $a0
	ori	$a0, $zero, 13
	pcaddu18i	$ra, %call36(randnum)
	jirl	$ra, $ra, 0
	move	$fp, $zero
	lu12i.w	$a0, 1220
	ori	$s1, $a0, 2880
	ori	$s0, $zero, 808
	ori	$s2, $zero, 101
	move	$s6, $s3
	.p2align	4, , 16
.LBB10_1:                               # %.preheader.i.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_2 Depth 2
	move	$s4, $zero
	.p2align	4, , 16
.LBB10_2:                               #   Parent Loop BB10_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a0, $s1
	pcaddu18i	$ra, %call36(abs_randwc)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	stx.d	$a0, $s3, $s4
	addi.d	$s4, $s4, 8
	bne	$s4, $s0, .LBB10_2
# %bb.3:                                #   in Loop: Header=BB10_1 Depth=1
	addi.d	$fp, $fp, 1
	addi.d	$s3, $s3, 808
	bne	$fp, $s2, .LBB10_1
# %bb.4:                                # %LoadAssign.exit.i
	ori	$a0, $zero, 2
	lu12i.w	$a1, 19
	bltu	$s5, $a0, .LBB10_15
# %bb.5:                                # %.preheader.i.preheader
	move	$a0, $zero
	ori	$a1, $a1, 3784
	move	$t7, $s6
	add.d	$a2, $s6, $a1
	ori	$a3, $zero, 1
	ori	$a4, $zero, 64
	ori	$a5, $zero, 808
	ori	$a6, $zero, 101
	move	$a7, $s6
	.p2align	4, , 16
.LBB10_6:                               # %.preheader.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_7 Depth 2
                                        #       Child Loop BB10_11 Depth 3
	move	$t0, $zero
	mul.d	$t1, $a0, $a1
	add.d	$t1, $t1, $a1
	add.d	$a7, $a7, $a1
	move	$t2, $t7
	move	$t3, $a2
	.p2align	4, , 16
.LBB10_7:                               # %vector.memcheck
                                        #   Parent Loop BB10_6 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB10_11 Depth 3
	bgeu	$t1, $a4, .LBB10_9
# %bb.8:                                #   in Loop: Header=BB10_7 Depth=2
	move	$t4, $zero
	b	.LBB10_10
	.p2align	4, , 16
.LBB10_9:                               # %vector.body
                                        #   in Loop: Header=BB10_7 Depth=2
	mul.d	$t4, $t0, $a5
	add.d	$t5, $t7, $t4
	xvldx	$xr0, $t7, $t4
	xvld	$xr1, $t5, 32
	add.d	$t6, $a7, $t4
	xvstx	$xr0, $a7, $t4
	xvst	$xr1, $t6, 32
	xvld	$xr0, $t5, 64
	xvld	$xr1, $t5, 96
	xvst	$xr0, $t6, 64
	xvst	$xr1, $t6, 96
	xvld	$xr0, $t5, 128
	xvld	$xr1, $t5, 160
	xvst	$xr0, $t6, 128
	xvst	$xr1, $t6, 160
	xvld	$xr0, $t5, 192
	xvld	$xr1, $t5, 224
	xvst	$xr0, $t6, 192
	xvst	$xr1, $t6, 224
	xvld	$xr0, $t5, 256
	xvld	$xr1, $t5, 288
	xvst	$xr0, $t6, 256
	xvst	$xr1, $t6, 288
	xvld	$xr0, $t5, 320
	xvld	$xr1, $t5, 352
	xvst	$xr0, $t6, 320
	xvst	$xr1, $t6, 352
	xvld	$xr0, $t5, 384
	xvld	$xr1, $t5, 416
	xvst	$xr0, $t6, 384
	xvst	$xr1, $t6, 416
	xvld	$xr0, $t5, 448
	xvld	$xr1, $t5, 480
	xvst	$xr0, $t6, 448
	xvst	$xr1, $t6, 480
	xvld	$xr0, $t5, 512
	xvld	$xr1, $t5, 544
	xvst	$xr0, $t6, 512
	xvst	$xr1, $t6, 544
	xvld	$xr0, $t5, 576
	xvld	$xr1, $t5, 608
	xvst	$xr0, $t6, 576
	xvst	$xr1, $t6, 608
	xvld	$xr0, $t5, 640
	xvld	$xr1, $t5, 672
	xvst	$xr0, $t6, 640
	xvst	$xr1, $t6, 672
	xvld	$xr0, $t5, 704
	xvld	$xr1, $t5, 736
	xvst	$xr0, $t6, 704
	xvst	$xr1, $t6, 736
	ori	$t4, $zero, 96
.LBB10_10:                              # %scalar.ph.preheader
                                        #   in Loop: Header=BB10_7 Depth=2
	slli.d	$t4, $t4, 3
	.p2align	4, , 16
.LBB10_11:                              # %scalar.ph
                                        #   Parent Loop BB10_6 Depth=1
                                        #     Parent Loop BB10_7 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ldx.d	$t5, $t2, $t4
	stx.d	$t5, $t3, $t4
	addi.d	$t4, $t4, 8
	bne	$t4, $a5, .LBB10_11
# %bb.12:                               # %.loopexit176
                                        #   in Loop: Header=BB10_7 Depth=2
	addi.d	$t0, $t0, 1
	addi.d	$t3, $t3, 808
	addi.d	$t2, $t2, 808
	bne	$t0, $a6, .LBB10_7
# %bb.13:                               # %CopyToAssign.exit.i
                                        #   in Loop: Header=BB10_6 Depth=1
	addi.d	$a3, $a3, 1
	addi.d	$a0, $a0, 1
	add.d	$a2, $a2, $a1
	bne	$a3, $s5, .LBB10_6
# %bb.14:                               # %LoadAssignArrayWithRand.exit.thread
	pcaddu18i	$ra, %call36(StartStopwatch)
	jirl	$ra, $ra, 0
	b	.LBB10_16
.LBB10_15:                              # %LoadAssignArrayWithRand.exit
	pcaddu18i	$ra, %call36(StartStopwatch)
	jirl	$ra, $ra, 0
	beqz	$s5, .LBB10_218
.LBB10_16:                              # %.lr.ph.preheader
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s5, $sp, 16                    # 8-byte Folded Spill
	move	$a1, $zero
	move	$t4, $s6
	addi.d	$a2, $s6, 416
	addi.d	$a0, $s6, 2047
	addi.d	$a6, $a0, 1185
	lu12i.w	$t6, 1
	ori	$a0, $t6, 146
	addi.d	$a3, $sp, 272
	add.d	$a0, $a3, $a0
	st.d	$a0, $sp, 176                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.LCPI10_0)
	xvld	$xr14, $a0, %pc_lo12(.LCPI10_0)
	lu12i.w	$a0, 18
	ori	$a0, $a0, 3840
	st.d	$a0, $sp, 168                   # 8-byte Folded Spill
	ori	$t3, $zero, 101
	lu12i.w	$a0, 4
	ori	$a0, $a0, 4018
	st.d	$a0, $sp, 208                   # 8-byte Folded Spill
	ori	$s4, $zero, 1
	xvrepli.b	$xr0, 0
	xvst	$xr0, $sp, 80                   # 32-byte Folded Spill
	lu12i.w	$a0, -5
	ori	$a0, $a0, 1088
	st.d	$a0, $sp, 184                   # 8-byte Folded Spill
	lu12i.w	$s7, 5
	xvrepli.b	$xr0, -1
	xvst	$xr0, $sp, 48                   # 32-byte Folded Spill
	lu12i.w	$t5, 19
	xvst	$xr14, $sp, 128                 # 32-byte Folded Spill
	b	.LBB10_18
	.p2align	4, , 16
.LBB10_17:                              # %Assignment.exit
                                        #   in Loop: Header=BB10_18 Depth=1
	ori	$a0, $t5, 3784
	add.d	$t4, $t4, $a0
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	addi.d	$a1, $a1, 1
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	add.d	$a2, $a2, $a0
	ld.d	$a6, $sp, 24                    # 8-byte Folded Reload
	add.d	$a6, $a6, $a0
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	beq	$a1, $a0, .LBB10_217
.LBB10_18:                              # %.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_19 Depth 2
                                        #     Child Loop BB10_22 Depth 2
                                        #       Child Loop BB10_23 Depth 3
                                        #       Child Loop BB10_26 Depth 3
                                        #     Child Loop BB10_29 Depth 2
                                        #       Child Loop BB10_31 Depth 3
                                        #         Child Loop BB10_33 Depth 4
                                        #         Child Loop BB10_39 Depth 4
                                        #         Child Loop BB10_46 Depth 4
                                        #           Child Loop BB10_48 Depth 5
                                        #           Child Loop BB10_54 Depth 5
                                        #       Child Loop BB10_62 Depth 3
                                        #         Child Loop BB10_64 Depth 4
                                        #         Child Loop BB10_68 Depth 4
                                        #         Child Loop BB10_73 Depth 4
                                        #       Child Loop BB10_80 Depth 3
                                        #         Child Loop BB10_81 Depth 4
                                        #       Child Loop BB10_85 Depth 3
                                        #         Child Loop BB10_88 Depth 4
                                        #         Child Loop BB10_113 Depth 4
                                        #           Child Loop BB10_116 Depth 5
                                        #       Child Loop BB10_198 Depth 3
                                        #         Child Loop BB10_201 Depth 4
                                        #       Child Loop BB10_205 Depth 3
                                        #         Child Loop BB10_208 Depth 4
                                        #       Child Loop BB10_212 Depth 3
                                        #         Child Loop BB10_215 Depth 4
	st.d	$a1, $sp, 40                    # 8-byte Folded Spill
	ori	$a0, $zero, 101
	st.d	$a2, $sp, 32                    # 8-byte Folded Spill
	move	$a1, $a2
	.p2align	4, , 16
.LBB10_19:                              # %vector.ph163
                                        #   Parent Loop BB10_18 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvld	$xr0, $a1, 288
	xvld	$xr2, $a1, 224
	xvld	$xr3, $a1, 160
	xvld	$xr4, $a1, 96
	xvld	$xr5, $a1, 32
	xvld	$xr6, $a1, -32
	xvld	$xr7, $a1, -96
	xvld	$xr8, $a1, -352
	xvld	$xr1, $a1, -416
	xvld	$xr9, $a1, -288
	xvld	$xr10, $a1, -224
	xvld	$xr11, $a1, -160
	xvmin.d	$xr8, $xr8, $xr1
	xvmin.d	$xr8, $xr9, $xr8
	xvmin.d	$xr8, $xr10, $xr8
	xvmin.d	$xr8, $xr11, $xr8
	xvmin.d	$xr7, $xr7, $xr8
	xvmin.d	$xr6, $xr6, $xr7
	xvmin.d	$xr5, $xr5, $xr6
	xvmin.d	$xr4, $xr4, $xr5
	xvmin.d	$xr3, $xr3, $xr4
	xvmin.d	$xr2, $xr2, $xr3
	xvmin.d	$xr0, $xr0, $xr2
	xvld	$xr3, $a1, 320
	xvld	$xr4, $a1, 256
	xvld	$xr5, $a1, 192
	xvld	$xr6, $a1, 128
	xvld	$xr7, $a1, 64
	xvld	$xr8, $a1, 0
	xvld	$xr9, $a1, -64
	xvld	$xr10, $a1, -320
	xvld	$xr2, $a1, -384
	xvld	$xr11, $a1, -256
	xvld	$xr12, $a1, -192
	xvld	$xr13, $a1, -128
	xvmin.d	$xr10, $xr10, $xr2
	xvmin.d	$xr10, $xr11, $xr10
	xvmin.d	$xr10, $xr12, $xr10
	xvmin.d	$xr10, $xr13, $xr10
	xvmin.d	$xr9, $xr9, $xr10
	xvmin.d	$xr8, $xr8, $xr9
	xvmin.d	$xr7, $xr7, $xr8
	xvmin.d	$xr6, $xr6, $xr7
	xvmin.d	$xr5, $xr5, $xr6
	xvmin.d	$xr4, $xr4, $xr5
	xvmin.d	$xr3, $xr3, $xr4
	xvmin.d	$xr0, $xr0, $xr3
	xvpermi.d	$xr3, $xr0, 78
	xvori.b	$xr4, $xr14, 0
	xvshuf.d	$xr4, $xr0, $xr3
	xvmin.d	$xr0, $xr0, $xr4
	xvpermi.d	$xr3, $xr0, 68
	ld.d	$a2, $a1, 352
	xvrepl128vei.d	$xr3, $xr3, 1
	xvmin.d	$xr0, $xr0, $xr3
	xvpickve2gr.d	$a3, $xr0, 0
	slt	$a4, $a2, $a3
	ld.d	$a5, $a1, 360
	masknez	$a3, $a3, $a4
	maskeqz	$a2, $a2, $a4
	or	$a2, $a2, $a3
	slt	$a3, $a5, $a2
	ld.d	$a4, $a1, 368
	masknez	$a2, $a2, $a3
	maskeqz	$a3, $a5, $a3
	or	$a2, $a3, $a2
	slt	$a3, $a4, $a2
	ld.d	$a5, $a1, 376
	masknez	$a2, $a2, $a3
	maskeqz	$a3, $a4, $a3
	or	$a2, $a3, $a2
	slt	$a3, $a5, $a2
	ld.d	$a4, $a1, 384
	masknez	$a2, $a2, $a3
	maskeqz	$a3, $a5, $a3
	or	$a2, $a3, $a2
	slt	$a3, $a4, $a2
	masknez	$a2, $a2, $a3
	maskeqz	$a3, $a4, $a3
	or	$a2, $a3, $a2
	xvreplgr2vr.d	$xr0, $a2
	xvsub.d	$xr1, $xr1, $xr0
	xvsub.d	$xr2, $xr2, $xr0
	xvld	$xr3, $a1, -352
	xvld	$xr4, $a1, -320
	xvst	$xr1, $a1, -416
	xvst	$xr2, $a1, -384
	xvsub.d	$xr1, $xr3, $xr0
	xvsub.d	$xr2, $xr4, $xr0
	xvld	$xr3, $a1, -288
	xvld	$xr4, $a1, -256
	xvst	$xr1, $a1, -352
	xvst	$xr2, $a1, -320
	xvsub.d	$xr1, $xr3, $xr0
	xvsub.d	$xr2, $xr4, $xr0
	xvld	$xr3, $a1, -224
	xvld	$xr4, $a1, -192
	xvst	$xr1, $a1, -288
	xvst	$xr2, $a1, -256
	xvsub.d	$xr1, $xr3, $xr0
	xvsub.d	$xr2, $xr4, $xr0
	xvld	$xr3, $a1, -160
	xvld	$xr4, $a1, -128
	xvst	$xr1, $a1, -224
	xvst	$xr2, $a1, -192
	xvsub.d	$xr1, $xr3, $xr0
	xvsub.d	$xr2, $xr4, $xr0
	xvld	$xr3, $a1, -96
	xvld	$xr4, $a1, -64
	xvst	$xr1, $a1, -160
	xvst	$xr2, $a1, -128
	xvsub.d	$xr1, $xr3, $xr0
	xvsub.d	$xr2, $xr4, $xr0
	xvld	$xr3, $a1, -32
	xvld	$xr4, $a1, 0
	xvst	$xr1, $a1, -96
	xvst	$xr2, $a1, -64
	xvsub.d	$xr1, $xr3, $xr0
	xvsub.d	$xr2, $xr4, $xr0
	xvld	$xr3, $a1, 32
	xvld	$xr4, $a1, 64
	xvst	$xr1, $a1, -32
	xvst	$xr2, $a1, 0
	xvsub.d	$xr1, $xr3, $xr0
	xvsub.d	$xr2, $xr4, $xr0
	xvld	$xr3, $a1, 96
	xvld	$xr4, $a1, 128
	xvst	$xr1, $a1, 32
	xvst	$xr2, $a1, 64
	xvsub.d	$xr1, $xr3, $xr0
	xvsub.d	$xr2, $xr4, $xr0
	xvld	$xr3, $a1, 160
	xvld	$xr4, $a1, 192
	xvst	$xr1, $a1, 96
	xvst	$xr2, $a1, 128
	xvsub.d	$xr1, $xr3, $xr0
	xvsub.d	$xr2, $xr4, $xr0
	xvld	$xr3, $a1, 224
	xvld	$xr4, $a1, 256
	xvst	$xr1, $a1, 160
	xvst	$xr2, $a1, 192
	xvsub.d	$xr1, $xr3, $xr0
	xvsub.d	$xr2, $xr4, $xr0
	xvst	$xr1, $a1, 224
	xvld	$xr1, $a1, 288
	xvld	$xr3, $a1, 320
	ld.d	$a3, $a1, 352
	xvst	$xr2, $a1, 256
	xvsub.d	$xr1, $xr1, $xr0
	xvsub.d	$xr0, $xr3, $xr0
	sub.d	$a3, $a3, $a2
	ld.d	$a4, $a1, 360
	st.d	$a3, $a1, 352
	ld.d	$a3, $a1, 368
	xvst	$xr1, $a1, 288
	sub.d	$a4, $a4, $a2
	st.d	$a4, $a1, 360
	sub.d	$a3, $a3, $a2
	ld.d	$a4, $a1, 376
	st.d	$a3, $a1, 368
	ld.d	$a3, $a1, 384
	xvst	$xr0, $a1, 320
	sub.d	$a4, $a4, $a2
	st.d	$a4, $a1, 376
	sub.d	$a2, $a3, $a2
	st.d	$a2, $a1, 384
	addi.d	$a0, $a0, -1
	addi.d	$a1, $a1, 808
	bnez	$a0, .LBB10_19
# %bb.20:                               # %vector.ph144.preheader
                                        #   in Loop: Header=BB10_18 Depth=1
	move	$a0, $zero
	move	$a1, $t4
	st.d	$a6, $sp, 24                    # 8-byte Folded Spill
	move	$a2, $a6
	b	.LBB10_22
	.p2align	4, , 16
.LBB10_21:                              # %.loopexit.i.i
                                        #   in Loop: Header=BB10_22 Depth=2
	addi.d	$a0, $a0, 1
	addi.d	$a2, $a2, 8
	addi.d	$a1, $a1, 8
	beq	$a0, $t3, .LBB10_28
.LBB10_22:                              # %vector.ph144
                                        #   Parent Loop BB10_18 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB10_23 Depth 3
                                        #       Child Loop BB10_26 Depth 3
	addi.w	$a3, $zero, -1
	lu52i.d	$t2, $a3, 2047
	xvreplgr2vr.d	$xr0, $t2
	ori	$a3, $zero, 96
	move	$a4, $a2
	xvori.b	$xr1, $xr0, 0
	.p2align	4, , 16
.LBB10_23:                              # %vector.body145
                                        #   Parent Loop BB10_18 Depth=1
                                        #     Parent Loop BB10_22 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ldptr.d	$a5, $a4, -3232
	ldptr.d	$a6, $a4, -2424
	ld.d	$a7, $a4, -1616
	ld.d	$t0, $a4, -808
	xvinsgr2vr.d	$xr2, $a5, 0
	xvinsgr2vr.d	$xr2, $a6, 1
	xvinsgr2vr.d	$xr2, $a7, 2
	xvinsgr2vr.d	$xr2, $t0, 3
	ld.d	$a5, $a4, 0
	ld.d	$a6, $a4, 808
	ld.d	$a7, $a4, 1616
	ldptr.d	$t0, $a4, 2424
	xvinsgr2vr.d	$xr3, $a5, 0
	xvinsgr2vr.d	$xr3, $a6, 1
	xvinsgr2vr.d	$xr3, $a7, 2
	xvinsgr2vr.d	$xr3, $t0, 3
	xvmin.d	$xr0, $xr2, $xr0
	xvmin.d	$xr1, $xr3, $xr1
	addi.d	$a3, $a3, -8
	ori	$s0, $t6, 2368
	add.d	$a4, $a4, $s0
	bnez	$a3, .LBB10_23
# %bb.24:                               # %.loopexit
                                        #   in Loop: Header=BB10_22 Depth=2
	xvmin.d	$xr0, $xr0, $xr1
	xvpermi.d	$xr1, $xr0, 78
	xvori.b	$xr2, $xr14, 0
	xvshuf.d	$xr2, $xr0, $xr1
	xvmin.d	$xr0, $xr0, $xr2
	xvpermi.d	$xr1, $xr0, 68
	alsl.d	$a3, $a0, $t4, 3
	ld.d	$a4, $sp, 168                   # 8-byte Folded Reload
	ldx.d	$a4, $a3, $a4
	xvrepl128vei.d	$xr1, $xr1, 1
	xvmin.d	$xr0, $xr0, $xr1
	xvpickve2gr.d	$a5, $xr0, 0
	slt	$a6, $a4, $a5
	ori	$a7, $t5, 552
	ldx.d	$a7, $a3, $a7
	masknez	$a5, $a5, $a6
	maskeqz	$a4, $a4, $a6
	or	$a4, $a4, $a5
	slt	$a5, $a7, $a4
	ori	$a6, $t5, 1360
	ldx.d	$a6, $a3, $a6
	masknez	$a4, $a4, $a5
	maskeqz	$a5, $a7, $a5
	or	$a4, $a5, $a4
	slt	$a5, $a6, $a4
	ori	$a7, $t5, 2168
	ldx.d	$a7, $a3, $a7
	masknez	$a4, $a4, $a5
	maskeqz	$a5, $a6, $a5
	or	$a5, $a5, $a4
	slt	$a6, $a7, $a5
	ori	$a4, $t5, 2976
	ldx.d	$t0, $a3, $a4
	masknez	$a5, $a5, $a6
	maskeqz	$a6, $a7, $a6
	or	$a5, $a6, $a5
	slt	$a6, $t0, $a5
	masknez	$a5, $a5, $a6
	maskeqz	$a6, $t0, $a6
	or	$a5, $a6, $a5
	beqz	$a5, .LBB10_21
# %bb.25:                               # %vector.body138.preheader
                                        #   in Loop: Header=BB10_22 Depth=2
	ori	$a6, $zero, 100
	move	$a7, $a1
	.p2align	4, , 16
.LBB10_26:                              # %vector.body138
                                        #   Parent Loop BB10_18 Depth=1
                                        #     Parent Loop BB10_22 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$t0, $a7, 0
	ld.d	$t1, $a7, 808
	sub.d	$t0, $t0, $a5
	sub.d	$t1, $t1, $a5
	st.d	$t0, $a7, 0
	st.d	$t1, $a7, 808
	addi.d	$a6, $a6, -2
	addi.d	$a7, $a7, 1616
	bnez	$a6, .LBB10_26
# %bb.27:                               # %.preheader.i.i10
                                        #   in Loop: Header=BB10_22 Depth=2
	ldx.d	$a6, $a3, $a4
	sub.d	$a5, $a6, $a5
	stx.d	$a5, $a3, $a4
	b	.LBB10_21
	.p2align	4, , 16
.LBB10_28:                              # %calc_minimum_costs.exit.i.preheader
                                        #   in Loop: Header=BB10_18 Depth=1
	st.d	$t2, $sp, 120                   # 8-byte Folded Spill
	st.d	$t4, $sp, 192                   # 8-byte Folded Spill
	.p2align	4, , 16
.LBB10_29:                              # %calc_minimum_costs.exit.i
                                        #   Parent Loop BB10_18 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB10_31 Depth 3
                                        #         Child Loop BB10_33 Depth 4
                                        #         Child Loop BB10_39 Depth 4
                                        #         Child Loop BB10_46 Depth 4
                                        #           Child Loop BB10_48 Depth 5
                                        #           Child Loop BB10_54 Depth 5
                                        #       Child Loop BB10_62 Depth 3
                                        #         Child Loop BB10_64 Depth 4
                                        #         Child Loop BB10_68 Depth 4
                                        #         Child Loop BB10_73 Depth 4
                                        #       Child Loop BB10_80 Depth 3
                                        #         Child Loop BB10_81 Depth 4
                                        #       Child Loop BB10_85 Depth 3
                                        #         Child Loop BB10_88 Depth 4
                                        #         Child Loop BB10_113 Depth 4
                                        #           Child Loop BB10_116 Depth 5
                                        #       Child Loop BB10_198 Depth 3
                                        #         Child Loop BB10_201 Depth 4
                                        #       Child Loop BB10_205 Depth 3
                                        #         Child Loop BB10_208 Depth 4
                                        #       Child Loop BB10_212 Depth 3
                                        #         Child Loop BB10_215 Depth 4
	addi.d	$a0, $sp, 272
	move	$a1, $zero
	ld.d	$a2, $sp, 208                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	move	$a3, $zero
	move	$a1, $zero
	move	$a0, $zero
	move	$a2, $zero
	ld.d	$t4, $sp, 192                   # 8-byte Folded Reload
	lu12i.w	$t5, 19
	lu12i.w	$t6, 1
	xvld	$xr14, $sp, 128                 # 32-byte Folded Reload
	ori	$t3, $zero, 101
	ori	$t7, $zero, 202
	ori	$t8, $zero, 808
	ori	$fp, $zero, 2
	b	.LBB10_31
	.p2align	4, , 16
.LBB10_30:                              #   in Loop: Header=BB10_31 Depth=3
	bstrpick.d	$a4, $a2, 15, 0
	move	$a3, $zero
	move	$a2, $zero
	beqz	$a4, .LBB10_58
.LBB10_31:                              # %.preheader156.i.i
                                        #   Parent Loop BB10_18 Depth=1
                                        #     Parent Loop BB10_29 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB10_33 Depth 4
                                        #         Child Loop BB10_39 Depth 4
                                        #         Child Loop BB10_46 Depth 4
                                        #           Child Loop BB10_48 Depth 5
                                        #           Child Loop BB10_54 Depth 5
	move	$a5, $zero
	move	$a7, $zero
	move	$a6, $zero
	mul.d	$a4, $a3, $t7
	addi.d	$t0, $sp, 272
	add.d	$t0, $t0, $a4
	mul.d	$t1, $a3, $t8
	b	.LBB10_33
	.p2align	4, , 16
.LBB10_32:                              #   in Loop: Header=BB10_33 Depth=4
	addi.w	$a7, $a7, 1
	addi.d	$a5, $a5, 2
	addi.d	$t1, $t1, 8
	beq	$a5, $t7, .LBB10_36
.LBB10_33:                              #   Parent Loop BB10_18 Depth=1
                                        #     Parent Loop BB10_29 Depth=2
                                        #       Parent Loop BB10_31 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ldx.d	$t2, $t4, $t1
	bnez	$t2, .LBB10_32
# %bb.34:                               #   in Loop: Header=BB10_33 Depth=4
	ldx.hu	$t2, $t0, $a5
	bnez	$t2, .LBB10_32
# %bb.35:                               #   in Loop: Header=BB10_33 Depth=4
	addi.d	$a6, $a6, 1
	move	$a1, $a7
	b	.LBB10_32
	.p2align	4, , 16
.LBB10_36:                              #   in Loop: Header=BB10_31 Depth=3
	bstrpick.d	$a5, $a6, 15, 0
	bne	$a5, $s4, .LBB10_43
# %bb.37:                               #   in Loop: Header=BB10_31 Depth=3
	move	$a5, $zero
	addi.d	$a6, $sp, 272
	alsl.d	$a6, $a1, $a6, 1
	stx.h	$s4, $a6, $a4
	slli.d	$a4, $a1, 3
	b	.LBB10_39
	.p2align	4, , 16
.LBB10_38:                              #   in Loop: Header=BB10_39 Depth=4
	addi.d	$a5, $a5, 1
	addi.d	$a6, $a6, 202
	addi.d	$a4, $a4, 808
	beq	$a5, $t3, .LBB10_42
.LBB10_39:                              #   Parent Loop BB10_18 Depth=1
                                        #     Parent Loop BB10_29 Depth=2
                                        #       Parent Loop BB10_31 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	beq	$a3, $a5, .LBB10_38
# %bb.40:                               #   in Loop: Header=BB10_39 Depth=4
	ldx.d	$a7, $t4, $a4
	bnez	$a7, .LBB10_38
# %bb.41:                               #   in Loop: Header=BB10_39 Depth=4
	st.h	$fp, $a6, 0
	b	.LBB10_38
	.p2align	4, , 16
.LBB10_42:                              # %.loopexit155.loopexit.i.i
                                        #   in Loop: Header=BB10_31 Depth=3
	addi.d	$a2, $a2, 1
	addi.d	$a0, $a0, 1
.LBB10_43:                              # %.loopexit155.i.i
                                        #   in Loop: Header=BB10_31 Depth=3
	addi.d	$a3, $a3, 1
	bne	$a3, $t3, .LBB10_31
# %bb.44:                               # %.preheader154.i.i.preheader
                                        #   in Loop: Header=BB10_31 Depth=3
	move	$a3, $zero
	addi.d	$a4, $sp, 272
	move	$a5, $t4
	b	.LBB10_46
	.p2align	4, , 16
.LBB10_45:                              # %.loopexit153.loopexit.i.i
                                        #   in Loop: Header=BB10_46 Depth=4
	addi.d	$a2, $a2, 1
	addi.d	$a0, $a0, 1
	addi.d	$a3, $a3, 1
	addi.d	$a4, $a4, 2
	addi.d	$a5, $a5, 8
	beq	$a3, $t3, .LBB10_30
.LBB10_46:                              # %.preheader154.i.i
                                        #   Parent Loop BB10_18 Depth=1
                                        #     Parent Loop BB10_29 Depth=2
                                        #       Parent Loop BB10_31 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB10_48 Depth 5
                                        #           Child Loop BB10_54 Depth 5
	move	$a7, $zero
	move	$a6, $zero
	ori	$t0, $zero, 101
	move	$t1, $a5
	move	$t2, $a4
	b	.LBB10_48
	.p2align	4, , 16
.LBB10_47:                              #   in Loop: Header=BB10_48 Depth=5
	addi.w	$a7, $a7, 1
	addi.d	$t2, $t2, 202
	addi.d	$t0, $t0, -1
	addi.d	$t1, $t1, 808
	beqz	$t0, .LBB10_51
.LBB10_48:                              #   Parent Loop BB10_18 Depth=1
                                        #     Parent Loop BB10_29 Depth=2
                                        #       Parent Loop BB10_31 Depth=3
                                        #         Parent Loop BB10_46 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	ld.d	$t3, $t1, 0
	bnez	$t3, .LBB10_47
# %bb.49:                               #   in Loop: Header=BB10_48 Depth=5
	ld.hu	$t3, $t2, 0
	bnez	$t3, .LBB10_47
# %bb.50:                               #   in Loop: Header=BB10_48 Depth=5
	addi.d	$a6, $a6, 1
	move	$a1, $a7
	b	.LBB10_47
	.p2align	4, , 16
.LBB10_51:                              #   in Loop: Header=BB10_46 Depth=4
	bstrpick.d	$a6, $a6, 15, 0
	bne	$a6, $s4, .LBB10_57
# %bb.52:                               #   in Loop: Header=BB10_46 Depth=4
	move	$a6, $zero
	mul.d	$a7, $a1, $t7
	addi.d	$t0, $sp, 272
	add.d	$a7, $t0, $a7
	slli.d	$t0, $a3, 1
	stx.h	$s4, $a7, $t0
	mul.d	$t0, $a1, $t8
	ori	$t3, $zero, 101
	b	.LBB10_54
	.p2align	4, , 16
.LBB10_53:                              #   in Loop: Header=BB10_54 Depth=5
	addi.d	$a6, $a6, 1
	addi.d	$a7, $a7, 2
	addi.d	$t0, $t0, 8
	beq	$a6, $t3, .LBB10_45
.LBB10_54:                              #   Parent Loop BB10_18 Depth=1
                                        #     Parent Loop BB10_29 Depth=2
                                        #       Parent Loop BB10_31 Depth=3
                                        #         Parent Loop BB10_46 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	beq	$a3, $a6, .LBB10_53
# %bb.55:                               #   in Loop: Header=BB10_54 Depth=5
	ldx.d	$t1, $t4, $t0
	bnez	$t1, .LBB10_53
# %bb.56:                               #   in Loop: Header=BB10_54 Depth=5
	st.h	$fp, $a7, 0
	b	.LBB10_53
	.p2align	4, , 16
.LBB10_57:                              #   in Loop: Header=BB10_46 Depth=4
	ori	$t3, $zero, 101
	addi.d	$a3, $a3, 1
	addi.d	$a4, $a4, 2
	addi.d	$a5, $a5, 8
	bne	$a3, $t3, .LBB10_46
	b	.LBB10_30
	.p2align	4, , 16
.LBB10_58:                              #   in Loop: Header=BB10_29 Depth=2
	bstrpick.d	$a1, $a0, 15, 0
	beq	$a1, $t3, .LBB10_17
# %bb.59:                               # %.preheader150.i.i.preheader
                                        #   in Loop: Header=BB10_29 Depth=2
	move	$a1, $zero
	addi.d	$a2, $sp, 272
	move	$a3, $t4
	b	.LBB10_62
	.p2align	4, , 16
.LBB10_60:                              # %.thread.loopexit.i.i
                                        #   in Loop: Header=BB10_62 Depth=3
	addi.d	$a0, $a0, 1
.LBB10_61:                              # %.thread.i.i
                                        #   in Loop: Header=BB10_62 Depth=3
	addi.d	$a1, $a1, 1
	addi.d	$a2, $a2, 202
	addi.d	$a3, $a3, 808
	beq	$a1, $t3, .LBB10_76
.LBB10_62:                              # %.preheader150.i.i
                                        #   Parent Loop BB10_18 Depth=1
                                        #     Parent Loop BB10_29 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB10_64 Depth 4
                                        #         Child Loop BB10_68 Depth 4
                                        #         Child Loop BB10_73 Depth 4
	move	$a6, $zero
	move	$a4, $t4
	addi.d	$a5, $sp, 272
	b	.LBB10_64
	.p2align	4, , 16
.LBB10_63:                              #   in Loop: Header=BB10_64 Depth=4
	addi.d	$a6, $a6, 1
	addi.d	$a5, $a5, 2
	addi.d	$a4, $a4, 8
	beq	$a6, $t3, .LBB10_61
.LBB10_64:                              #   Parent Loop BB10_18 Depth=1
                                        #     Parent Loop BB10_29 Depth=2
                                        #       Parent Loop BB10_62 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	mul.d	$a7, $a1, $t8
	add.d	$a7, $t4, $a7
	slli.d	$t0, $a6, 3
	ldx.d	$a7, $a7, $t0
	bnez	$a7, .LBB10_63
# %bb.65:                               #   in Loop: Header=BB10_64 Depth=4
	mul.d	$a7, $a1, $t7
	addi.d	$t0, $sp, 272
	add.d	$t0, $t0, $a7
	slli.d	$a7, $a6, 1
	ldx.hu	$a7, $t0, $a7
	bnez	$a7, .LBB10_63
# %bb.66:                               #   in Loop: Header=BB10_62 Depth=3
	move	$a7, $zero
	bstrpick.d	$t1, $a6, 15, 0
	slli.d	$t1, $t1, 1
	stx.h	$s4, $t0, $t1
	move	$t0, $a3
	move	$t1, $a2
	b	.LBB10_68
	.p2align	4, , 16
.LBB10_67:                              #   in Loop: Header=BB10_68 Depth=4
	addi.d	$a7, $a7, 1
	addi.d	$t1, $t1, 2
	addi.d	$t0, $t0, 8
	beq	$a7, $t3, .LBB10_71
.LBB10_68:                              #   Parent Loop BB10_18 Depth=1
                                        #     Parent Loop BB10_29 Depth=2
                                        #       Parent Loop BB10_62 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	beq	$a6, $a7, .LBB10_67
# %bb.69:                               #   in Loop: Header=BB10_68 Depth=4
	ld.d	$t2, $t0, 0
	bnez	$t2, .LBB10_67
# %bb.70:                               #   in Loop: Header=BB10_68 Depth=4
	st.h	$fp, $t1, 0
	b	.LBB10_67
	.p2align	4, , 16
.LBB10_71:                              # %.preheader.i8.i.preheader
                                        #   in Loop: Header=BB10_62 Depth=3
	move	$a6, $zero
	b	.LBB10_73
	.p2align	4, , 16
.LBB10_72:                              #   in Loop: Header=BB10_73 Depth=4
	addi.d	$a6, $a6, 1
	addi.d	$a5, $a5, 202
	addi.d	$a4, $a4, 808
	beq	$a6, $t3, .LBB10_60
.LBB10_73:                              # %.preheader.i8.i
                                        #   Parent Loop BB10_18 Depth=1
                                        #     Parent Loop BB10_29 Depth=2
                                        #       Parent Loop BB10_62 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	beq	$a1, $a6, .LBB10_72
# %bb.74:                               #   in Loop: Header=BB10_73 Depth=4
	ld.d	$a7, $a4, 0
	bnez	$a7, .LBB10_72
# %bb.75:                               #   in Loop: Header=BB10_73 Depth=4
	st.h	$fp, $a5, 0
	b	.LBB10_72
	.p2align	4, , 16
.LBB10_76:                              # %first_assignments.exit.i
                                        #   in Loop: Header=BB10_29 Depth=2
	bstrpick.d	$a0, $a0, 15, 0
	beq	$a0, $t3, .LBB10_17
# %bb.77:                               #   in Loop: Header=BB10_29 Depth=2
	lu12i.w	$a0, 5
	ori	$a0, $a0, 408
	add.d	$a0, $sp, $a0
	ori	$a2, $zero, 202
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 5
	ori	$a0, $a0, 200
	add.d	$a0, $sp, $a0
	ori	$a2, $zero, 202
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ori	$t1, $zero, 202
	ori	$t0, $zero, 101
	move	$a0, $zero
	addi.d	$a1, $sp, 272
	lu12i.w	$a2, 5
	ori	$a2, $a2, 200
	add.d	$t2, $sp, $a2
	xvld	$xr8, $sp, 80                   # 32-byte Folded Reload
	xvld	$xr9, $sp, 48                   # 32-byte Folded Reload
	b	.LBB10_80
	.p2align	4, , 16
.LBB10_78:                              # %.critedge.i.i
                                        #   in Loop: Header=BB10_80 Depth=3
	slli.d	$a2, $a0, 1
	lu12i.w	$a3, 5
	ori	$a3, $a3, 408
	add.d	$a3, $sp, $a3
	stx.h	$s4, $a2, $a3
.LBB10_79:                              # %.loopexit118.i.i
                                        #   in Loop: Header=BB10_80 Depth=3
	addi.d	$a0, $a0, 1
	addi.d	$a1, $a1, 202
	beq	$a0, $t0, .LBB10_83
.LBB10_80:                              # %.preheader117.i.i
                                        #   Parent Loop BB10_18 Depth=1
                                        #     Parent Loop BB10_29 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB10_81 Depth 4
	move	$a2, $zero
	.p2align	4, , 16
.LBB10_81:                              #   Parent Loop BB10_18 Depth=1
                                        #     Parent Loop BB10_29 Depth=2
                                        #       Parent Loop BB10_80 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ldx.hu	$a3, $a1, $a2
	beq	$a3, $s4, .LBB10_79
# %bb.82:                               #   in Loop: Header=BB10_81 Depth=4
	addi.d	$a2, $a2, 2
	bne	$a2, $t1, .LBB10_81
	b	.LBB10_78
	.p2align	4, , 16
.LBB10_83:                              # %.preheader116.i.i.preheader
                                        #   in Loop: Header=BB10_29 Depth=2
	move	$a0, $zero
	ld.d	$a7, $sp, 192                   # 8-byte Folded Reload
	ori	$a5, $zero, 808
	b	.LBB10_85
	.p2align	4, , 16
.LBB10_84:                              #   in Loop: Header=BB10_85 Depth=3
	bstrpick.d	$a1, $a0, 15, 0
	move	$a0, $zero
	beqz	$a1, .LBB10_196
.LBB10_85:                              # %.preheader116.i.i
                                        #   Parent Loop BB10_18 Depth=1
                                        #     Parent Loop BB10_29 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB10_88 Depth 4
                                        #         Child Loop BB10_113 Depth 4
                                        #           Child Loop BB10_116 Depth 5
	slli.d	$a1, $a0, 1
	lu12i.w	$a2, 5
	ori	$a2, $a2, 408
	add.d	$a2, $sp, $a2
	ldx.hu	$a1, $a1, $a2
	bne	$a1, $s4, .LBB10_109
# %bb.86:                               # %vector.body113.preheader
                                        #   in Loop: Header=BB10_85 Depth=3
	mul.d	$a1, $a0, $a5
	add.d	$a1, $a7, $a1
	ori	$a2, $zero, 32
	lu12i.w	$a3, 5
	ori	$a3, $a3, 208
	add.d	$a3, $sp, $a3
	b	.LBB10_88
	.p2align	4, , 16
.LBB10_87:                              # %pred.store.continue132
                                        #   in Loop: Header=BB10_88 Depth=4
	addi.d	$a2, $a2, 64
	addi.d	$a3, $a3, 16
	ori	$a4, $zero, 800
	beq	$a2, $a4, .LBB10_104
.LBB10_88:                              # %vector.body113
                                        #   Parent Loop BB10_18 Depth=1
                                        #     Parent Loop BB10_29 Depth=2
                                        #       Parent Loop BB10_85 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	add.d	$a4, $a1, $a2
	xvld	$xr0, $a4, -32
	xvseqi.d	$xr0, $xr0, 0
	xvpickve2gr.d	$a4, $xr0, 0
	andi	$a4, $a4, 1
	bnez	$a4, .LBB10_97
# %bb.89:                               # %pred.store.continue118
                                        #   in Loop: Header=BB10_88 Depth=4
	xvpickve2gr.d	$a4, $xr0, 1
	andi	$a4, $a4, 1
	bnez	$a4, .LBB10_98
.LBB10_90:                              # %pred.store.continue120
                                        #   in Loop: Header=BB10_88 Depth=4
	xvpickve2gr.d	$a4, $xr0, 2
	andi	$a4, $a4, 1
	bnez	$a4, .LBB10_99
.LBB10_91:                              # %pred.store.continue122
                                        #   in Loop: Header=BB10_88 Depth=4
	xvpickve2gr.d	$a4, $xr0, 3
	andi	$a4, $a4, 1
	beqz	$a4, .LBB10_93
.LBB10_92:                              # %pred.store.if123
                                        #   in Loop: Header=BB10_88 Depth=4
	st.h	$s4, $a3, -2
.LBB10_93:                              # %pred.store.continue124
                                        #   in Loop: Header=BB10_88 Depth=4
	xvldx	$xr0, $a1, $a2
	xvseqi.d	$xr0, $xr0, 0
	xvpickve2gr.d	$a4, $xr0, 0
	andi	$a4, $a4, 1
	bnez	$a4, .LBB10_100
# %bb.94:                               # %pred.store.continue126
                                        #   in Loop: Header=BB10_88 Depth=4
	xvpickve2gr.d	$a4, $xr0, 1
	andi	$a4, $a4, 1
	bnez	$a4, .LBB10_101
.LBB10_95:                              # %pred.store.continue128
                                        #   in Loop: Header=BB10_88 Depth=4
	xvpickve2gr.d	$a4, $xr0, 2
	andi	$a4, $a4, 1
	bnez	$a4, .LBB10_102
.LBB10_96:                              # %pred.store.continue130
                                        #   in Loop: Header=BB10_88 Depth=4
	xvpickve2gr.d	$a4, $xr0, 3
	andi	$a4, $a4, 1
	beqz	$a4, .LBB10_87
	b	.LBB10_103
	.p2align	4, , 16
.LBB10_97:                              # %pred.store.if117
                                        #   in Loop: Header=BB10_88 Depth=4
	st.h	$s4, $a3, -8
	xvpickve2gr.d	$a4, $xr0, 1
	andi	$a4, $a4, 1
	beqz	$a4, .LBB10_90
.LBB10_98:                              # %pred.store.if119
                                        #   in Loop: Header=BB10_88 Depth=4
	st.h	$s4, $a3, -6
	xvpickve2gr.d	$a4, $xr0, 2
	andi	$a4, $a4, 1
	beqz	$a4, .LBB10_91
.LBB10_99:                              # %pred.store.if121
                                        #   in Loop: Header=BB10_88 Depth=4
	st.h	$s4, $a3, -4
	xvpickve2gr.d	$a4, $xr0, 3
	andi	$a4, $a4, 1
	bnez	$a4, .LBB10_92
	b	.LBB10_93
	.p2align	4, , 16
.LBB10_100:                             # %pred.store.if125
                                        #   in Loop: Header=BB10_88 Depth=4
	st.h	$s4, $a3, 0
	xvpickve2gr.d	$a4, $xr0, 1
	andi	$a4, $a4, 1
	beqz	$a4, .LBB10_95
.LBB10_101:                             # %pred.store.if127
                                        #   in Loop: Header=BB10_88 Depth=4
	st.h	$s4, $a3, 2
	xvpickve2gr.d	$a4, $xr0, 2
	andi	$a4, $a4, 1
	beqz	$a4, .LBB10_96
.LBB10_102:                             # %pred.store.if129
                                        #   in Loop: Header=BB10_88 Depth=4
	st.h	$s4, $a3, 4
	xvpickve2gr.d	$a4, $xr0, 3
	andi	$a4, $a4, 1
	beqz	$a4, .LBB10_87
.LBB10_103:                             # %pred.store.if131
                                        #   in Loop: Header=BB10_88 Depth=4
	st.h	$s4, $a3, 6
	b	.LBB10_87
	.p2align	4, , 16
.LBB10_104:                             # %.preheader113.i.i
                                        #   in Loop: Header=BB10_85 Depth=3
	ld.d	$a2, $a1, 768
	beqz	$a2, .LBB10_191
# %bb.105:                              # %.preheader113.i.i.1
                                        #   in Loop: Header=BB10_85 Depth=3
	ld.d	$a2, $a1, 776
	beqz	$a2, .LBB10_192
.LBB10_106:                             # %.preheader113.i.i.2
                                        #   in Loop: Header=BB10_85 Depth=3
	ld.d	$a2, $a1, 784
	beqz	$a2, .LBB10_193
.LBB10_107:                             # %.preheader113.i.i.3
                                        #   in Loop: Header=BB10_85 Depth=3
	ld.d	$a2, $a1, 792
	beqz	$a2, .LBB10_194
.LBB10_108:                             # %.preheader113.i.i.4
                                        #   in Loop: Header=BB10_85 Depth=3
	ld.d	$a1, $a1, 800
	beqz	$a1, .LBB10_195
.LBB10_109:                             # %.loopexit114.i.i
                                        #   in Loop: Header=BB10_85 Depth=3
	addi.d	$a0, $a0, 1
	bne	$a0, $t0, .LBB10_85
.LBB10_110:                             # %.preheader115.i.i.preheader
                                        #   in Loop: Header=BB10_85 Depth=3
	move	$a2, $zero
	move	$a0, $zero
	addi.d	$a1, $sp, 272
	st.d	$a1, $sp, 232                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	st.d	$a1, $sp, 224                   # 8-byte Folded Spill
	b	.LBB10_113
.LBB10_111:                             #   in Loop: Header=BB10_113 Depth=4
	ld.d	$a2, $sp, 200                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB10_112:                             # %.loopexit112.i.i
                                        #   in Loop: Header=BB10_113 Depth=4
	addi.d	$a2, $a2, 1
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	addi.d	$a1, $a1, 2
	st.d	$a1, $sp, 232                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	addi.d	$a1, $a1, 2
	st.d	$a1, $sp, 224                   # 8-byte Folded Spill
	beq	$a2, $t0, .LBB10_84
.LBB10_113:                             # %.preheader115.i.i
                                        #   Parent Loop BB10_18 Depth=1
                                        #     Parent Loop BB10_29 Depth=2
                                        #       Parent Loop BB10_85 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB10_116 Depth 5
	slli.d	$a1, $a2, 1
	ldx.hu	$a1, $a1, $t2
	bne	$a1, $s4, .LBB10_112
# %bb.114:                              # %vector.ph22
                                        #   in Loop: Header=BB10_113 Depth=4
	st.d	$a2, $sp, 200                   # 8-byte Folded Spill
	vinsgr2vr.h	$vr1, $a0, 0
	pcalau12i	$a0, %pc_hi20(.LCPI10_1)
	xvld	$xr0, $a0, %pc_lo12(.LCPI10_1)
	xvpermi.d	$xr1, $xr1, 68
	vinsgr2vr.h	$vr2, $zero, 0
	xvpermi.d	$xr2, $xr2, 68
	xvshuf.h	$xr0, $xr2, $xr1
	lu12i.w	$a0, 5
	ori	$a0, $a0, 440
	add.d	$a4, $sp, $a0
	ld.d	$a5, $sp, 184                   # 8-byte Folded Reload
	xvori.b	$xr1, $xr8, 0
	b	.LBB10_116
	.p2align	4, , 16
.LBB10_115:                             # %pred.store.continue89
                                        #   in Loop: Header=BB10_116 Depth=5
	xvrepli.h	$xr6, 1
	xvand.v	$xr3, $xr3, $xr6
	xvrepli.b	$xr7, 0
	xvbitsel.v	$xr2, $xr7, $xr3, $xr2
	xvadd.h	$xr0, $xr0, $xr2
	xvand.v	$xr2, $xr5, $xr6
	xvbitsel.v	$xr2, $xr7, $xr2, $xr4
	xvadd.h	$xr1, $xr1, $xr2
	add.d	$a5, $a5, $s0
	addi.d	$a4, $a4, 64
	beqz	$a5, .LBB10_180
.LBB10_116:                             # %vector.body23
                                        #   Parent Loop BB10_18 Depth=1
                                        #     Parent Loop BB10_29 Depth=2
                                        #       Parent Loop BB10_85 Depth=3
                                        #         Parent Loop BB10_113 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	add.d	$t2, $a0, $a5
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	add.d	$t3, $a0, $a5
	lu12i.w	$t8, 4
	ori	$a6, $t8, 3008
	ldx.h	$a0, $t2, $a6
	ori	$a7, $t8, 3210
	ldx.h	$a1, $t2, $a7
	ori	$t0, $t8, 3412
	ldx.h	$t5, $t2, $t0
	ori	$t1, $t8, 3614
	ldx.h	$t6, $t2, $t1
	ori	$a2, $t8, 3816
	st.d	$a2, $sp, 216                   # 8-byte Folded Spill
	ldx.h	$t7, $t2, $a2
	vinsgr2vr.h	$vr2, $a0, 0
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	ldx.h	$a0, $t2, $a0
	vinsgr2vr.h	$vr2, $a1, 1
	ori	$t4, $s7, 124
	vinsgr2vr.h	$vr2, $t5, 2
	ldx.h	$a1, $t2, $t4
	vinsgr2vr.h	$vr2, $t6, 3
	ori	$t5, $s7, 326
	ldx.h	$t6, $t2, $t5
	vinsgr2vr.h	$vr2, $t7, 4
	ori	$t5, $s7, 528
	vinsgr2vr.h	$vr2, $a0, 5
	ldx.h	$a0, $t2, $t5
	vinsgr2vr.h	$vr2, $a1, 6
	ori	$a1, $s7, 730
	ldx.h	$a1, $t2, $a1
	vinsgr2vr.h	$vr2, $t6, 7
	ori	$t6, $s7, 932
	xvori.b	$xr3, $xr2, 0
	xvpermi.q	$xr3, $xr2, 1
	vinsgr2vr.h	$vr3, $a0, 0
	xvpermi.q	$xr2, $xr3, 2
	ldx.h	$a0, $t2, $t6
	xvori.b	$xr3, $xr2, 0
	xvpermi.q	$xr3, $xr2, 1
	vinsgr2vr.h	$vr3, $a1, 1
	ori	$a1, $t8, 988
	xvpermi.q	$xr2, $xr3, 2
	ldx.h	$a1, $t3, $a1
	xvori.b	$xr3, $xr2, 0
	xvpermi.q	$xr3, $xr2, 1
	vinsgr2vr.h	$vr3, $a0, 2
	ori	$a0, $s7, 1336
	xvpermi.q	$xr2, $xr3, 2
	ldx.h	$a0, $t2, $a0
	xvori.b	$xr3, $xr2, 0
	xvpermi.q	$xr3, $xr2, 1
	vinsgr2vr.h	$vr3, $a1, 3
	ori	$a1, $s7, 1538
	xvpermi.q	$xr2, $xr3, 2
	ldx.h	$a1, $t2, $a1
	xvori.b	$xr3, $xr2, 0
	xvpermi.q	$xr3, $xr2, 1
	vinsgr2vr.h	$vr3, $a0, 4
	ori	$a0, $s7, 1740
	xvpermi.q	$xr2, $xr3, 2
	ldx.h	$a0, $t2, $a0
	xvori.b	$xr3, $xr2, 0
	xvpermi.q	$xr3, $xr2, 1
	vinsgr2vr.h	$vr3, $a1, 5
	ori	$a1, $s7, 1942
	xvpermi.q	$xr2, $xr3, 2
	ldx.h	$a1, $t2, $a1
	xvori.b	$xr3, $xr2, 0
	xvpermi.q	$xr3, $xr2, 1
	vinsgr2vr.h	$vr3, $a0, 6
	xvpermi.q	$xr2, $xr3, 2
	xvori.b	$xr3, $xr2, 0
	xvpermi.q	$xr3, $xr2, 1
	xvld	$xr4, $a4, -32
	vinsgr2vr.h	$vr3, $a1, 7
	xvpermi.q	$xr2, $xr3, 2
	xvseqi.h	$xr2, $xr2, 1
	xvseqi.h	$xr3, $xr4, 1
	xvxor.v	$xr3, $xr3, $xr9
	xvand.v	$xr5, $xr2, $xr3
	vpickve2gr.h	$a0, $vr5, 0
	andi	$a1, $a0, 1
	beqz	$a1, .LBB10_118
# %bb.117:                              # %pred.store.if
                                        #   in Loop: Header=BB10_116 Depth=5
	st.h	$s4, $a4, -32
.LBB10_118:                             # %pred.store.continue
                                        #   in Loop: Header=BB10_116 Depth=5
	vinsgr2vr.b	$vr4, $a0, 0
	vpickve2gr.h	$a0, $vr5, 1
	vinsgr2vr.b	$vr4, $a0, 1
	vpickve2gr.h	$a0, $vr5, 2
	vinsgr2vr.b	$vr4, $a0, 2
	vpickve2gr.h	$a0, $vr5, 3
	vinsgr2vr.b	$vr4, $a0, 3
	vpickve2gr.h	$a0, $vr5, 4
	vinsgr2vr.b	$vr4, $a0, 4
	vpickve2gr.h	$a0, $vr5, 5
	vinsgr2vr.b	$vr4, $a0, 5
	vpickve2gr.h	$a0, $vr5, 6
	vinsgr2vr.b	$vr4, $a0, 6
	vpickve2gr.h	$a0, $vr5, 7
	vinsgr2vr.b	$vr4, $a0, 7
	xvpermi.d	$xr5, $xr5, 14
	vpickve2gr.h	$a0, $vr5, 0
	vinsgr2vr.b	$vr4, $a0, 8
	vpickve2gr.h	$a0, $vr5, 1
	vinsgr2vr.b	$vr4, $a0, 9
	vpickve2gr.h	$a0, $vr5, 2
	vinsgr2vr.b	$vr4, $a0, 10
	vpickve2gr.h	$a0, $vr5, 3
	vinsgr2vr.b	$vr4, $a0, 11
	vpickve2gr.h	$a0, $vr5, 4
	vinsgr2vr.b	$vr4, $a0, 12
	vpickve2gr.h	$a0, $vr5, 5
	vinsgr2vr.b	$vr4, $a0, 13
	vpickve2gr.h	$a0, $vr5, 6
	vinsgr2vr.b	$vr4, $a0, 14
	vpickve2gr.h	$a0, $vr5, 7
	vinsgr2vr.b	$vr4, $a0, 15
	vpickve2gr.b	$a0, $vr4, 1
	andi	$a0, $a0, 1
	bnez	$a0, .LBB10_151
# %bb.119:                              # %pred.store.continue29
                                        #   in Loop: Header=BB10_116 Depth=5
	vpickve2gr.b	$a0, $vr4, 2
	andi	$a0, $a0, 1
	bnez	$a0, .LBB10_152
.LBB10_120:                             # %pred.store.continue31
                                        #   in Loop: Header=BB10_116 Depth=5
	vpickve2gr.b	$a0, $vr4, 3
	andi	$a0, $a0, 1
	bnez	$a0, .LBB10_153
.LBB10_121:                             # %pred.store.continue33
                                        #   in Loop: Header=BB10_116 Depth=5
	vpickve2gr.b	$a0, $vr4, 4
	andi	$a0, $a0, 1
	bnez	$a0, .LBB10_154
.LBB10_122:                             # %pred.store.continue35
                                        #   in Loop: Header=BB10_116 Depth=5
	vpickve2gr.b	$a0, $vr4, 5
	andi	$a0, $a0, 1
	bnez	$a0, .LBB10_155
.LBB10_123:                             # %pred.store.continue37
                                        #   in Loop: Header=BB10_116 Depth=5
	vpickve2gr.b	$a0, $vr4, 6
	andi	$a0, $a0, 1
	bnez	$a0, .LBB10_156
.LBB10_124:                             # %pred.store.continue39
                                        #   in Loop: Header=BB10_116 Depth=5
	vpickve2gr.b	$a0, $vr4, 7
	andi	$a0, $a0, 1
	bnez	$a0, .LBB10_157
.LBB10_125:                             # %pred.store.continue41
                                        #   in Loop: Header=BB10_116 Depth=5
	vpickve2gr.b	$a0, $vr4, 8
	andi	$a0, $a0, 1
	bnez	$a0, .LBB10_158
.LBB10_126:                             # %pred.store.continue43
                                        #   in Loop: Header=BB10_116 Depth=5
	move	$a3, $s0
	vpickve2gr.b	$a0, $vr4, 9
	andi	$a0, $a0, 1
	beqz	$a0, .LBB10_128
.LBB10_127:                             # %pred.store.if44
                                        #   in Loop: Header=BB10_116 Depth=5
	st.h	$s4, $a4, -14
.LBB10_128:                             # %pred.store.continue45
                                        #   in Loop: Header=BB10_116 Depth=5
	ori	$a0, $s7, 2144
	ldx.h	$a1, $t2, $a0
	ori	$a0, $s7, 2346
	ldx.h	$s5, $t2, $a0
	ori	$a0, $s7, 2548
	ldx.h	$fp, $t2, $a0
	ori	$a0, $s7, 2750
	ldx.h	$a0, $t2, $a0
	ori	$t7, $s7, 2952
	ldx.h	$s8, $t2, $t7
	ldx.h	$s2, $t3, $a6
	ori	$t7, $s7, 3356
	ldx.h	$s0, $t2, $t7
	ori	$t7, $s7, 3558
	ldx.h	$s6, $t2, $t7
	ori	$t7, $s7, 3760
	ldx.h	$s3, $t2, $t7
	ori	$t7, $s7, 3962
	ldx.h	$s1, $t2, $t7
	lu12i.w	$a2, 6
	ori	$t7, $a2, 68
	ldx.h	$ra, $t2, $t7
	ldx.h	$t8, $t3, $t4
	ori	$t4, $a2, 472
	ldx.h	$t7, $t2, $t4
	ldx.h	$t5, $t3, $t5
	ori	$t4, $a2, 876
	ldx.h	$t4, $t2, $t4
	ldx.h	$t2, $t3, $t6
	xvld	$xr5, $a4, 0
	vpickve2gr.b	$t3, $vr4, 10
	andi	$t3, $t3, 1
	bnez	$t3, .LBB10_159
# %bb.129:                              # %pred.store.continue47
                                        #   in Loop: Header=BB10_116 Depth=5
	vpickve2gr.b	$t3, $vr4, 11
	andi	$t3, $t3, 1
	bnez	$t3, .LBB10_160
.LBB10_130:                             # %pred.store.continue49
                                        #   in Loop: Header=BB10_116 Depth=5
	vpickve2gr.b	$t3, $vr4, 12
	andi	$t3, $t3, 1
	bnez	$t3, .LBB10_161
.LBB10_131:                             # %pred.store.continue51
                                        #   in Loop: Header=BB10_116 Depth=5
	vpickve2gr.b	$t3, $vr4, 13
	andi	$t3, $t3, 1
	bnez	$t3, .LBB10_162
.LBB10_132:                             # %pred.store.continue53
                                        #   in Loop: Header=BB10_116 Depth=5
	vpickve2gr.b	$t3, $vr4, 14
	andi	$t3, $t3, 1
	bnez	$t3, .LBB10_163
.LBB10_133:                             # %pred.store.continue55
                                        #   in Loop: Header=BB10_116 Depth=5
	vpickve2gr.b	$t3, $vr4, 15
	andi	$t3, $t3, 1
	beqz	$t3, .LBB10_135
.LBB10_134:                             # %pred.store.if56
                                        #   in Loop: Header=BB10_116 Depth=5
	st.h	$s4, $a4, -2
.LBB10_135:                             # %pred.store.continue57
                                        #   in Loop: Header=BB10_116 Depth=5
	vinsgr2vr.h	$vr4, $a1, 0
	vinsgr2vr.h	$vr4, $s5, 1
	vinsgr2vr.h	$vr4, $fp, 2
	vinsgr2vr.h	$vr4, $a0, 3
	vinsgr2vr.h	$vr4, $s8, 4
	vinsgr2vr.h	$vr4, $s2, 5
	vinsgr2vr.h	$vr4, $s0, 6
	vinsgr2vr.h	$vr4, $s6, 7
	xvori.b	$xr6, $xr4, 0
	xvpermi.q	$xr6, $xr4, 1
	vinsgr2vr.h	$vr6, $s3, 0
	xvpermi.q	$xr4, $xr6, 2
	xvori.b	$xr6, $xr4, 0
	xvpermi.q	$xr6, $xr4, 1
	vinsgr2vr.h	$vr6, $s1, 1
	xvpermi.q	$xr4, $xr6, 2
	xvori.b	$xr6, $xr4, 0
	xvpermi.q	$xr6, $xr4, 1
	vinsgr2vr.h	$vr6, $ra, 2
	xvpermi.q	$xr4, $xr6, 2
	xvori.b	$xr6, $xr4, 0
	xvpermi.q	$xr6, $xr4, 1
	vinsgr2vr.h	$vr6, $t8, 3
	xvpermi.q	$xr4, $xr6, 2
	xvori.b	$xr6, $xr4, 0
	xvpermi.q	$xr6, $xr4, 1
	vinsgr2vr.h	$vr6, $t7, 4
	xvpermi.q	$xr4, $xr6, 2
	xvori.b	$xr6, $xr4, 0
	xvpermi.q	$xr6, $xr4, 1
	vinsgr2vr.h	$vr6, $t5, 5
	xvpermi.q	$xr4, $xr6, 2
	xvori.b	$xr6, $xr4, 0
	xvpermi.q	$xr6, $xr4, 1
	vinsgr2vr.h	$vr6, $t4, 6
	xvpermi.q	$xr4, $xr6, 2
	xvori.b	$xr6, $xr4, 0
	xvpermi.q	$xr6, $xr4, 1
	vinsgr2vr.h	$vr6, $t2, 7
	xvpermi.q	$xr4, $xr6, 2
	xvseqi.h	$xr4, $xr4, 1
	xvseqi.h	$xr5, $xr5, 1
	xvxor.v	$xr5, $xr5, $xr9
	xvand.v	$xr7, $xr4, $xr5
	vpickve2gr.h	$a0, $vr7, 0
	vinsgr2vr.b	$vr6, $a0, 0
	vpickve2gr.h	$a0, $vr7, 1
	vinsgr2vr.b	$vr6, $a0, 1
	vpickve2gr.h	$a0, $vr7, 2
	vinsgr2vr.b	$vr6, $a0, 2
	vpickve2gr.h	$a0, $vr7, 3
	vinsgr2vr.b	$vr6, $a0, 3
	vpickve2gr.h	$a0, $vr7, 4
	vinsgr2vr.b	$vr6, $a0, 4
	vpickve2gr.h	$a0, $vr7, 5
	vinsgr2vr.b	$vr6, $a0, 5
	vpickve2gr.h	$a0, $vr7, 6
	vinsgr2vr.b	$vr6, $a0, 6
	vpickve2gr.h	$a0, $vr7, 7
	vinsgr2vr.b	$vr6, $a0, 7
	xvpermi.d	$xr7, $xr7, 14
	vpickve2gr.h	$a0, $vr7, 0
	vinsgr2vr.b	$vr6, $a0, 8
	vpickve2gr.h	$a0, $vr7, 1
	vinsgr2vr.b	$vr6, $a0, 9
	vpickve2gr.h	$a0, $vr7, 2
	vinsgr2vr.b	$vr6, $a0, 10
	vpickve2gr.h	$a0, $vr7, 3
	vinsgr2vr.b	$vr6, $a0, 11
	vpickve2gr.h	$a0, $vr7, 4
	vinsgr2vr.b	$vr6, $a0, 12
	vpickve2gr.h	$a0, $vr7, 5
	vinsgr2vr.b	$vr6, $a0, 13
	vpickve2gr.h	$a0, $vr7, 6
	vinsgr2vr.b	$vr6, $a0, 14
	vpickve2gr.h	$a0, $vr7, 7
	vinsgr2vr.b	$vr6, $a0, 15
	vpickve2gr.b	$a0, $vr6, 0
	andi	$a0, $a0, 1
	bnez	$a0, .LBB10_164
# %bb.136:                              # %pred.store.continue59
                                        #   in Loop: Header=BB10_116 Depth=5
	vpickve2gr.b	$a0, $vr6, 1
	andi	$a0, $a0, 1
	move	$s0, $a3
	bnez	$a0, .LBB10_165
.LBB10_137:                             # %pred.store.continue61
                                        #   in Loop: Header=BB10_116 Depth=5
	vpickve2gr.b	$a0, $vr6, 2
	andi	$a0, $a0, 1
	bnez	$a0, .LBB10_166
.LBB10_138:                             # %pred.store.continue63
                                        #   in Loop: Header=BB10_116 Depth=5
	vpickve2gr.b	$a0, $vr6, 3
	andi	$a0, $a0, 1
	bnez	$a0, .LBB10_167
.LBB10_139:                             # %pred.store.continue65
                                        #   in Loop: Header=BB10_116 Depth=5
	vpickve2gr.b	$a0, $vr6, 4
	andi	$a0, $a0, 1
	bnez	$a0, .LBB10_168
.LBB10_140:                             # %pred.store.continue67
                                        #   in Loop: Header=BB10_116 Depth=5
	vpickve2gr.b	$a0, $vr6, 5
	andi	$a0, $a0, 1
	bnez	$a0, .LBB10_169
.LBB10_141:                             # %pred.store.continue69
                                        #   in Loop: Header=BB10_116 Depth=5
	vpickve2gr.b	$a0, $vr6, 6
	andi	$a0, $a0, 1
	bnez	$a0, .LBB10_170
.LBB10_142:                             # %pred.store.continue71
                                        #   in Loop: Header=BB10_116 Depth=5
	vpickve2gr.b	$a0, $vr6, 7
	andi	$a0, $a0, 1
	bnez	$a0, .LBB10_171
.LBB10_143:                             # %pred.store.continue73
                                        #   in Loop: Header=BB10_116 Depth=5
	vpickve2gr.b	$a0, $vr6, 8
	andi	$a0, $a0, 1
	bnez	$a0, .LBB10_172
.LBB10_144:                             # %pred.store.continue75
                                        #   in Loop: Header=BB10_116 Depth=5
	vpickve2gr.b	$a0, $vr6, 9
	andi	$a0, $a0, 1
	bnez	$a0, .LBB10_173
.LBB10_145:                             # %pred.store.continue77
                                        #   in Loop: Header=BB10_116 Depth=5
	vpickve2gr.b	$a0, $vr6, 10
	andi	$a0, $a0, 1
	bnez	$a0, .LBB10_174
.LBB10_146:                             # %pred.store.continue79
                                        #   in Loop: Header=BB10_116 Depth=5
	vpickve2gr.b	$a0, $vr6, 11
	andi	$a0, $a0, 1
	bnez	$a0, .LBB10_175
.LBB10_147:                             # %pred.store.continue81
                                        #   in Loop: Header=BB10_116 Depth=5
	vpickve2gr.b	$a0, $vr6, 12
	andi	$a0, $a0, 1
	bnez	$a0, .LBB10_176
.LBB10_148:                             # %pred.store.continue83
                                        #   in Loop: Header=BB10_116 Depth=5
	vpickve2gr.b	$a0, $vr6, 13
	andi	$a0, $a0, 1
	bnez	$a0, .LBB10_177
.LBB10_149:                             # %pred.store.continue85
                                        #   in Loop: Header=BB10_116 Depth=5
	vpickve2gr.b	$a0, $vr6, 14
	andi	$a0, $a0, 1
	bnez	$a0, .LBB10_178
.LBB10_150:                             # %pred.store.continue87
                                        #   in Loop: Header=BB10_116 Depth=5
	vpickve2gr.b	$a0, $vr6, 15
	andi	$a0, $a0, 1
	beqz	$a0, .LBB10_115
	b	.LBB10_179
	.p2align	4, , 16
.LBB10_151:                             # %pred.store.if28
                                        #   in Loop: Header=BB10_116 Depth=5
	st.h	$s4, $a4, -30
	vpickve2gr.b	$a0, $vr4, 2
	andi	$a0, $a0, 1
	beqz	$a0, .LBB10_120
.LBB10_152:                             # %pred.store.if30
                                        #   in Loop: Header=BB10_116 Depth=5
	st.h	$s4, $a4, -28
	vpickve2gr.b	$a0, $vr4, 3
	andi	$a0, $a0, 1
	beqz	$a0, .LBB10_121
.LBB10_153:                             # %pred.store.if32
                                        #   in Loop: Header=BB10_116 Depth=5
	st.h	$s4, $a4, -26
	vpickve2gr.b	$a0, $vr4, 4
	andi	$a0, $a0, 1
	beqz	$a0, .LBB10_122
.LBB10_154:                             # %pred.store.if34
                                        #   in Loop: Header=BB10_116 Depth=5
	st.h	$s4, $a4, -24
	vpickve2gr.b	$a0, $vr4, 5
	andi	$a0, $a0, 1
	beqz	$a0, .LBB10_123
.LBB10_155:                             # %pred.store.if36
                                        #   in Loop: Header=BB10_116 Depth=5
	st.h	$s4, $a4, -22
	vpickve2gr.b	$a0, $vr4, 6
	andi	$a0, $a0, 1
	beqz	$a0, .LBB10_124
.LBB10_156:                             # %pred.store.if38
                                        #   in Loop: Header=BB10_116 Depth=5
	st.h	$s4, $a4, -20
	vpickve2gr.b	$a0, $vr4, 7
	andi	$a0, $a0, 1
	beqz	$a0, .LBB10_125
.LBB10_157:                             # %pred.store.if40
                                        #   in Loop: Header=BB10_116 Depth=5
	st.h	$s4, $a4, -18
	vpickve2gr.b	$a0, $vr4, 8
	andi	$a0, $a0, 1
	beqz	$a0, .LBB10_126
.LBB10_158:                             # %pred.store.if42
                                        #   in Loop: Header=BB10_116 Depth=5
	st.h	$s4, $a4, -16
	move	$a3, $s0
	vpickve2gr.b	$a0, $vr4, 9
	andi	$a0, $a0, 1
	bnez	$a0, .LBB10_127
	b	.LBB10_128
	.p2align	4, , 16
.LBB10_159:                             # %pred.store.if46
                                        #   in Loop: Header=BB10_116 Depth=5
	st.h	$s4, $a4, -12
	vpickve2gr.b	$t3, $vr4, 11
	andi	$t3, $t3, 1
	beqz	$t3, .LBB10_130
.LBB10_160:                             # %pred.store.if48
                                        #   in Loop: Header=BB10_116 Depth=5
	st.h	$s4, $a4, -10
	vpickve2gr.b	$t3, $vr4, 12
	andi	$t3, $t3, 1
	beqz	$t3, .LBB10_131
.LBB10_161:                             # %pred.store.if50
                                        #   in Loop: Header=BB10_116 Depth=5
	st.h	$s4, $a4, -8
	vpickve2gr.b	$t3, $vr4, 13
	andi	$t3, $t3, 1
	beqz	$t3, .LBB10_132
.LBB10_162:                             # %pred.store.if52
                                        #   in Loop: Header=BB10_116 Depth=5
	st.h	$s4, $a4, -6
	vpickve2gr.b	$t3, $vr4, 14
	andi	$t3, $t3, 1
	beqz	$t3, .LBB10_133
.LBB10_163:                             # %pred.store.if54
                                        #   in Loop: Header=BB10_116 Depth=5
	st.h	$s4, $a4, -4
	vpickve2gr.b	$t3, $vr4, 15
	andi	$t3, $t3, 1
	bnez	$t3, .LBB10_134
	b	.LBB10_135
	.p2align	4, , 16
.LBB10_164:                             # %pred.store.if58
                                        #   in Loop: Header=BB10_116 Depth=5
	st.h	$s4, $a4, 0
	vpickve2gr.b	$a0, $vr6, 1
	andi	$a0, $a0, 1
	move	$s0, $a3
	beqz	$a0, .LBB10_137
.LBB10_165:                             # %pred.store.if60
                                        #   in Loop: Header=BB10_116 Depth=5
	st.h	$s4, $a4, 2
	vpickve2gr.b	$a0, $vr6, 2
	andi	$a0, $a0, 1
	beqz	$a0, .LBB10_138
.LBB10_166:                             # %pred.store.if62
                                        #   in Loop: Header=BB10_116 Depth=5
	st.h	$s4, $a4, 4
	vpickve2gr.b	$a0, $vr6, 3
	andi	$a0, $a0, 1
	beqz	$a0, .LBB10_139
.LBB10_167:                             # %pred.store.if64
                                        #   in Loop: Header=BB10_116 Depth=5
	st.h	$s4, $a4, 6
	vpickve2gr.b	$a0, $vr6, 4
	andi	$a0, $a0, 1
	beqz	$a0, .LBB10_140
.LBB10_168:                             # %pred.store.if66
                                        #   in Loop: Header=BB10_116 Depth=5
	st.h	$s4, $a4, 8
	vpickve2gr.b	$a0, $vr6, 5
	andi	$a0, $a0, 1
	beqz	$a0, .LBB10_141
.LBB10_169:                             # %pred.store.if68
                                        #   in Loop: Header=BB10_116 Depth=5
	st.h	$s4, $a4, 10
	vpickve2gr.b	$a0, $vr6, 6
	andi	$a0, $a0, 1
	beqz	$a0, .LBB10_142
.LBB10_170:                             # %pred.store.if70
                                        #   in Loop: Header=BB10_116 Depth=5
	st.h	$s4, $a4, 12
	vpickve2gr.b	$a0, $vr6, 7
	andi	$a0, $a0, 1
	beqz	$a0, .LBB10_143
.LBB10_171:                             # %pred.store.if72
                                        #   in Loop: Header=BB10_116 Depth=5
	st.h	$s4, $a4, 14
	vpickve2gr.b	$a0, $vr6, 8
	andi	$a0, $a0, 1
	beqz	$a0, .LBB10_144
.LBB10_172:                             # %pred.store.if74
                                        #   in Loop: Header=BB10_116 Depth=5
	st.h	$s4, $a4, 16
	vpickve2gr.b	$a0, $vr6, 9
	andi	$a0, $a0, 1
	beqz	$a0, .LBB10_145
.LBB10_173:                             # %pred.store.if76
                                        #   in Loop: Header=BB10_116 Depth=5
	st.h	$s4, $a4, 18
	vpickve2gr.b	$a0, $vr6, 10
	andi	$a0, $a0, 1
	beqz	$a0, .LBB10_146
.LBB10_174:                             # %pred.store.if78
                                        #   in Loop: Header=BB10_116 Depth=5
	st.h	$s4, $a4, 20
	vpickve2gr.b	$a0, $vr6, 11
	andi	$a0, $a0, 1
	beqz	$a0, .LBB10_147
.LBB10_175:                             # %pred.store.if80
                                        #   in Loop: Header=BB10_116 Depth=5
	st.h	$s4, $a4, 22
	vpickve2gr.b	$a0, $vr6, 12
	andi	$a0, $a0, 1
	beqz	$a0, .LBB10_148
.LBB10_176:                             # %pred.store.if82
                                        #   in Loop: Header=BB10_116 Depth=5
	st.h	$s4, $a4, 24
	vpickve2gr.b	$a0, $vr6, 13
	andi	$a0, $a0, 1
	beqz	$a0, .LBB10_149
.LBB10_177:                             # %pred.store.if84
                                        #   in Loop: Header=BB10_116 Depth=5
	st.h	$s4, $a4, 26
	vpickve2gr.b	$a0, $vr6, 14
	andi	$a0, $a0, 1
	beqz	$a0, .LBB10_150
.LBB10_178:                             # %pred.store.if86
                                        #   in Loop: Header=BB10_116 Depth=5
	st.h	$s4, $a4, 28
	vpickve2gr.b	$a0, $vr6, 15
	andi	$a0, $a0, 1
	beqz	$a0, .LBB10_115
.LBB10_179:                             # %pred.store.if88
                                        #   in Loop: Header=BB10_116 Depth=5
	st.h	$s4, $a4, 30
	b	.LBB10_115
	.p2align	4, , 16
.LBB10_180:                             # %vec.epilog.iter.check
                                        #   in Loop: Header=BB10_113 Depth=4
	addi.d	$a0, $sp, 272
	ld.d	$a1, $sp, 200                   # 8-byte Folded Reload
	alsl.d	$a4, $a1, $a0, 1
	ldx.h	$a0, $a4, $t1
	ldx.h	$a1, $a4, $t0
	ldx.h	$a5, $a4, $a7
	ldx.h	$a6, $a4, $a6
	st.h	$a0, $sp, 262
	st.h	$a1, $sp, 260
	st.h	$a5, $sp, 258
	st.h	$a6, $sp, 256
	vld	$vr2, $sp, 256
	lu12i.w	$a0, 5
	ori	$a0, $a0, 600
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	vseqi.h	$vr2, $vr2, 1
	vinsgr2vr.d	$vr3, $a0, 0
	vseqi.h	$vr3, $vr3, 1
	vrepli.b	$vr4, -1
	vxor.v	$vr3, $vr3, $vr4
	vand.v	$vr2, $vr2, $vr3
	vilvl.h	$vr2, $vr2, $vr2
	vslli.w	$vr3, $vr2, 16
	vsrai.w	$vr3, $vr3, 16
	vpickve2gr.w	$a0, $vr3, 0
	andi	$a0, $a0, 1
	bnez	$a0, .LBB10_189
# %bb.181:                              # %pred.store.continue99
                                        #   in Loop: Header=BB10_113 Depth=4
	vpickve2gr.w	$a0, $vr3, 1
	andi	$a0, $a0, 1
	bnez	$a0, .LBB10_190
.LBB10_182:                             # %pred.store.continue101
                                        #   in Loop: Header=BB10_113 Depth=4
	vpickve2gr.w	$a0, $vr3, 2
	andi	$a0, $a0, 1
	ori	$t0, $zero, 101
	beqz	$a0, .LBB10_184
.LBB10_183:                             # %pred.store.if102
                                        #   in Loop: Header=BB10_113 Depth=4
	lu12i.w	$a0, 5
	ori	$a0, $a0, 604
	add.d	$a0, $sp, $a0
	st.h	$s4, $a0, 0
.LBB10_184:                             # %pred.store.continue103
                                        #   in Loop: Header=BB10_113 Depth=4
	vpickve2gr.w	$a0, $vr3, 3
	andi	$a0, $a0, 1
	ld.d	$a7, $sp, 192                   # 8-byte Folded Reload
	ori	$t1, $zero, 202
	ori	$a5, $zero, 808
	lu12i.w	$a1, 5
	ori	$a1, $a1, 200
	add.d	$t2, $sp, $a1
	beqz	$a0, .LBB10_186
# %bb.185:                              # %pred.store.if104
                                        #   in Loop: Header=BB10_113 Depth=4
	lu12i.w	$a0, 5
	ori	$a0, $a0, 606
	add.d	$a0, $sp, $a0
	st.h	$s4, $a0, 0
.LBB10_186:                             # %pred.store.continue105
                                        #   in Loop: Header=BB10_113 Depth=4
	xvadd.h	$xr0, $xr1, $xr0
	xvpermi.d	$xr1, $xr0, 78
	xvshuf4i.h	$xr1, $xr1, 228
	xvadd.h	$xr0, $xr0, $xr1
	xvpermi.d	$xr1, $xr0, 68
	xvbsrl.v	$xr1, $xr1, 8
	xvadd.h	$xr0, $xr0, $xr1
	xvpermi.d	$xr1, $xr0, 68
	xvshuf4i.h	$xr1, $xr1, 14
	xvadd.h	$xr0, $xr0, $xr1
	xvpermi.d	$xr1, $xr0, 68
	xvrepl128vei.h	$xr1, $xr1, 1
	xvadd.h	$xr0, $xr0, $xr1
	pcalau12i	$a0, %pc_hi20(.LCPI10_2)
	vld	$vr1, $a0, %pc_lo12(.LCPI10_2)
	vrepli.w	$vr3, 1
	vand.v	$vr2, $vr2, $vr3
	vpickve2gr.w	$a0, $vr2, 3
	st.h	$a0, $sp, 246
	vpickve2gr.w	$a0, $vr2, 2
	st.h	$a0, $sp, 244
	vpickve2gr.w	$a0, $vr2, 1
	st.h	$a0, $sp, 242
	vpickve2gr.w	$a0, $vr2, 0
	st.h	$a0, $sp, 240
	vpickve2gr.h	$a0, $vr0, 0
	vld	$vr0, $sp, 240
	vinsgr2vr.h	$vr2, $a0, 0
	vinsgr2vr.h	$vr3, $zero, 0
	vshuf.h	$vr1, $vr3, $vr2
	vadd.h	$vr0, $vr1, $vr0
	vshuf4i.h	$vr1, $vr0, 14
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	ldx.hu	$a1, $a4, $a0
	vadd.h	$vr0, $vr0, $vr1
	vreplvei.h	$vr1, $vr0, 1
	vadd.h	$vr0, $vr0, $vr1
	vpickve2gr.h	$a0, $vr0, 0
	bne	$a1, $s4, .LBB10_111
# %bb.187:                              # %pred.store.continue105
                                        #   in Loop: Header=BB10_113 Depth=4
	lu12i.w	$a1, 5
	ori	$a1, $a1, 608
	add.d	$a1, $sp, $a1
	ld.hu	$a1, $a1, 0
	ld.d	$a2, $sp, 200                   # 8-byte Folded Reload
	beq	$a1, $s4, .LBB10_112
# %bb.188:                              #   in Loop: Header=BB10_113 Depth=4
	lu12i.w	$a1, 5
	ori	$a1, $a1, 608
	add.d	$a1, $sp, $a1
	st.h	$s4, $a1, 0
	addi.d	$a0, $a0, 1
	b	.LBB10_112
	.p2align	4, , 16
.LBB10_189:                             # %pred.store.if98
                                        #   in Loop: Header=BB10_113 Depth=4
	lu12i.w	$a0, 5
	ori	$a0, $a0, 600
	add.d	$a0, $sp, $a0
	st.h	$s4, $a0, 0
	vpickve2gr.w	$a0, $vr3, 1
	andi	$a0, $a0, 1
	beqz	$a0, .LBB10_182
.LBB10_190:                             # %pred.store.if100
                                        #   in Loop: Header=BB10_113 Depth=4
	lu12i.w	$a0, 5
	ori	$a0, $a0, 602
	add.d	$a0, $sp, $a0
	st.h	$s4, $a0, 0
	vpickve2gr.w	$a0, $vr3, 2
	andi	$a0, $a0, 1
	ori	$t0, $zero, 101
	bnez	$a0, .LBB10_183
	b	.LBB10_184
.LBB10_191:                             #   in Loop: Header=BB10_85 Depth=3
	lu12i.w	$a2, 5
	ori	$a2, $a2, 392
	add.d	$a2, $sp, $a2
	st.h	$s4, $a2, 0
	ld.d	$a2, $a1, 776
	bnez	$a2, .LBB10_106
.LBB10_192:                             #   in Loop: Header=BB10_85 Depth=3
	lu12i.w	$a2, 5
	ori	$a2, $a2, 394
	add.d	$a2, $sp, $a2
	st.h	$s4, $a2, 0
	ld.d	$a2, $a1, 784
	bnez	$a2, .LBB10_107
.LBB10_193:                             #   in Loop: Header=BB10_85 Depth=3
	lu12i.w	$a2, 5
	ori	$a2, $a2, 396
	add.d	$a2, $sp, $a2
	st.h	$s4, $a2, 0
	ld.d	$a2, $a1, 792
	bnez	$a2, .LBB10_108
.LBB10_194:                             #   in Loop: Header=BB10_85 Depth=3
	lu12i.w	$a2, 5
	ori	$a2, $a2, 398
	add.d	$a2, $sp, $a2
	st.h	$s4, $a2, 0
	ld.d	$a1, $a1, 800
	bnez	$a1, .LBB10_109
.LBB10_195:                             #   in Loop: Header=BB10_85 Depth=3
	lu12i.w	$a1, 5
	ori	$a1, $a1, 400
	add.d	$a1, $sp, $a1
	st.h	$s4, $a1, 0
	addi.d	$a0, $a0, 1
	bne	$a0, $t0, .LBB10_85
	b	.LBB10_110
	.p2align	4, , 16
.LBB10_196:                             # %.preheader110.i.i.preheader
                                        #   in Loop: Header=BB10_29 Depth=2
	move	$a1, $zero
	move	$a2, $a7
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	b	.LBB10_198
	.p2align	4, , 16
.LBB10_197:                             # %.loopexit109.i.i
                                        #   in Loop: Header=BB10_198 Depth=3
	addi.d	$a1, $a1, 1
	addi.d	$a2, $a2, 808
	beq	$a1, $t0, .LBB10_203
.LBB10_198:                             # %.preheader110.i.i
                                        #   Parent Loop BB10_18 Depth=1
                                        #     Parent Loop BB10_29 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB10_201 Depth 4
	slli.d	$a3, $a1, 1
	lu12i.w	$a4, 5
	ori	$a4, $a4, 408
	add.d	$a4, $sp, $a4
	ldx.hu	$a3, $a3, $a4
	beqz	$a3, .LBB10_197
# %bb.199:                              # %.preheader108.i.i.preheader
                                        #   in Loop: Header=BB10_198 Depth=3
	move	$a3, $zero
	move	$a4, $a2
	b	.LBB10_201
	.p2align	4, , 16
.LBB10_200:                             #   in Loop: Header=BB10_201 Depth=4
	addi.d	$a3, $a3, 2
	addi.d	$a4, $a4, 8
	beq	$a3, $t1, .LBB10_197
.LBB10_201:                             # %.preheader108.i.i
                                        #   Parent Loop BB10_18 Depth=1
                                        #     Parent Loop BB10_29 Depth=2
                                        #       Parent Loop BB10_198 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ldx.hu	$a5, $a3, $t2
	beq	$a5, $s4, .LBB10_200
# %bb.202:                              #   in Loop: Header=BB10_201 Depth=4
	ld.d	$a5, $a4, 0
	slt	$a6, $a5, $a0
	masknez	$a0, $a0, $a6
	maskeqz	$a5, $a5, $a6
	or	$a0, $a5, $a0
	b	.LBB10_200
	.p2align	4, , 16
.LBB10_203:                             # %.preheader107.i.i.preheader
                                        #   in Loop: Header=BB10_29 Depth=2
	move	$a1, $zero
	move	$a2, $a7
	b	.LBB10_205
	.p2align	4, , 16
.LBB10_204:                             # %.loopexit106.i.i
                                        #   in Loop: Header=BB10_205 Depth=3
	addi.d	$a1, $a1, 1
	addi.d	$a2, $a2, 808
	beq	$a1, $t0, .LBB10_210
.LBB10_205:                             # %.preheader107.i.i
                                        #   Parent Loop BB10_18 Depth=1
                                        #     Parent Loop BB10_29 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB10_208 Depth 4
	slli.d	$a3, $a1, 1
	lu12i.w	$a4, 5
	ori	$a4, $a4, 408
	add.d	$a4, $sp, $a4
	ldx.hu	$a3, $a3, $a4
	beqz	$a3, .LBB10_204
# %bb.206:                              # %.preheader105.i.i.preheader
                                        #   in Loop: Header=BB10_205 Depth=3
	move	$a3, $zero
	move	$a4, $a2
	b	.LBB10_208
	.p2align	4, , 16
.LBB10_207:                             #   in Loop: Header=BB10_208 Depth=4
	addi.d	$a3, $a3, 2
	addi.d	$a4, $a4, 8
	beq	$a3, $t1, .LBB10_204
.LBB10_208:                             # %.preheader105.i.i
                                        #   Parent Loop BB10_18 Depth=1
                                        #     Parent Loop BB10_29 Depth=2
                                        #       Parent Loop BB10_205 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ldx.hu	$a5, $a3, $t2
	beq	$a5, $s4, .LBB10_207
# %bb.209:                              #   in Loop: Header=BB10_208 Depth=4
	ld.d	$a5, $a4, 0
	sub.d	$a5, $a5, $a0
	st.d	$a5, $a4, 0
	b	.LBB10_207
	.p2align	4, , 16
.LBB10_210:                             # %.preheader104.i.i.preheader
                                        #   in Loop: Header=BB10_29 Depth=2
	move	$a1, $zero
	move	$a2, $a7
	b	.LBB10_212
	.p2align	4, , 16
.LBB10_211:                             # %.loopexit.i14.i
                                        #   in Loop: Header=BB10_212 Depth=3
	addi.d	$a1, $a1, 1
	addi.d	$a2, $a2, 808
	beq	$a1, $t0, .LBB10_29
.LBB10_212:                             # %.preheader104.i.i
                                        #   Parent Loop BB10_18 Depth=1
                                        #     Parent Loop BB10_29 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB10_215 Depth 4
	slli.d	$a3, $a1, 1
	lu12i.w	$a4, 5
	ori	$a4, $a4, 408
	add.d	$a4, $sp, $a4
	ldx.hu	$a3, $a3, $a4
	bnez	$a3, .LBB10_211
# %bb.213:                              # %.preheader.i15.i.preheader
                                        #   in Loop: Header=BB10_212 Depth=3
	move	$a3, $zero
	move	$a4, $a2
	b	.LBB10_215
	.p2align	4, , 16
.LBB10_214:                             #   in Loop: Header=BB10_215 Depth=4
	addi.d	$a3, $a3, 2
	addi.d	$a4, $a4, 8
	beq	$a3, $t1, .LBB10_211
.LBB10_215:                             # %.preheader.i15.i
                                        #   Parent Loop BB10_18 Depth=1
                                        #     Parent Loop BB10_29 Depth=2
                                        #       Parent Loop BB10_212 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ldx.hu	$a5, $a3, $t2
	bne	$a5, $s4, .LBB10_214
# %bb.216:                              #   in Loop: Header=BB10_215 Depth=4
	ld.d	$a5, $a4, 0
	add.d	$a5, $a5, $a0
	st.d	$a5, $a4, 0
	b	.LBB10_214
.LBB10_217:
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
.LBB10_218:                             # %._crit_edge
	lu12i.w	$a1, 4
	ori	$a1, $a1, 2768
	add.d	$sp, $sp, $a1
	ld.d	$s8, $sp, 1944                  # 8-byte Folded Reload
	ld.d	$s7, $sp, 1952                  # 8-byte Folded Reload
	ld.d	$s6, $sp, 1960                  # 8-byte Folded Reload
	ld.d	$s5, $sp, 1968                  # 8-byte Folded Reload
	ld.d	$s4, $sp, 1976                  # 8-byte Folded Reload
	ld.d	$s3, $sp, 1984                  # 8-byte Folded Reload
	ld.d	$s2, $sp, 1992                  # 8-byte Folded Reload
	ld.d	$s1, $sp, 2000                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 2008                  # 8-byte Folded Reload
	ld.d	$fp, $sp, 2016                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 2024                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 2032
	pcaddu18i	$t8, %call36(StopStopwatch)
	jr	$t8
.Lfunc_end10:
	.size	DoAssignIteration, .Lfunc_end10-DoAssignIteration
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function DoIDEA
.LCPI11_0:
	.dword	0x4530000000100000              # double 1.9342813118337666E+25
.LCPI11_1:
	.dword	0x409d4c0000000000              # double 1875
	.text
	.globl	DoIDEA
	.p2align	5
	.type	DoIDEA,@function
DoIDEA:                                 # @DoIDEA
# %bb.0:                                # %.preheader191.preheader
	addi.d	$sp, $sp, -480
	st.d	$ra, $sp, 472                   # 8-byte Folded Spill
	st.d	$fp, $sp, 464                   # 8-byte Folded Spill
	st.d	$s0, $sp, 456                   # 8-byte Folded Spill
	st.d	$s1, $sp, 448                   # 8-byte Folded Spill
	st.d	$s2, $sp, 440                   # 8-byte Folded Spill
	st.d	$s3, $sp, 432                   # 8-byte Folded Spill
	st.d	$s4, $sp, 424                   # 8-byte Folded Spill
	st.d	$s5, $sp, 416                   # 8-byte Folded Spill
	st.d	$s6, $sp, 408                   # 8-byte Folded Spill
	st.d	$s7, $sp, 400                   # 8-byte Folded Spill
	st.d	$s8, $sp, 392                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 384                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 376                  # 8-byte Folded Spill
	fst.d	$fs2, $sp, 368                  # 8-byte Folded Spill
	ori	$a0, $zero, 3
	pcaddu18i	$ra, %call36(randnum)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 14
	ori	$s0, $a0, 2656
	move	$a0, $s0
	pcaddu18i	$ra, %call36(abs_randwc)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(abs_randwc)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(abs_randwc)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(abs_randwc)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(abs_randwc)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(abs_randwc)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(abs_randwc)
	jirl	$ra, $ra, 0
	move	$s6, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(abs_randwc)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	addi.d	$a0, $sp, 176
	ori	$a2, $zero, 88
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	st.h	$fp, $sp, 160
	st.h	$s1, $sp, 162
	st.h	$s2, $sp, 164
	st.h	$s3, $sp, 166
	addi.d	$a3, $sp, 168
	st.h	$s4, $sp, 168
	st.h	$s5, $sp, 170
	st.h	$s6, $sp, 172
	st.h	$s0, $sp, 174
	addi.d	$a1, $sp, 160
	ori	$a2, $zero, 44
	.p2align	4, , 16
.LBB11_1:                               # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$a4, $a0, 1
	addi.d	$a5, $a0, 2
	andi	$a6, $a4, 7
	slli.d	$a7, $a6, 1
	andi	$a5, $a5, 7
	slli.d	$a5, $a5, 1
	ldx.h	$a5, $a1, $a5
	ldx.h	$a7, $a1, $a7
	alsl.d	$a0, $a0, $a1, 1
	bstrpick.d	$a5, $a5, 15, 7
	slli.d	$a7, $a7, 9
	or	$a5, $a7, $a5
	st.h	$a5, $a0, 16
	andi	$a0, $a4, 8
	addi.w	$a2, $a2, -1
	alsl.d	$a1, $a0, $a1, 1
	move	$a0, $a6
	bnez	$a2, .LBB11_1
# %bb.2:                                # %en_key_idea.exit
	ld.hu	$a4, $sp, 160
	ori	$a2, $zero, 2
	lu12i.w	$a0, 16
	bgeu	$a4, $a2, .LBB11_4
# %bb.3:
	move	$a1, $a4
	b	.LBB11_9
.LBB11_4:
	bstrpick.d	$a1, $a4, 15, 0
	ori	$a6, $a0, 1
	div.wu	$a5, $a6, $a1
	mul.d	$a1, $a5, $a1
	sub.w	$a6, $a6, $a1
	ori	$a7, $zero, 1
	beq	$a6, $a7, .LBB11_8
# %bb.5:                                # %.preheader.i.preheader.i
	ori	$a1, $zero, 1
	.p2align	4, , 16
.LBB11_6:                               # %.preheader.i.i
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$t1, $a4, 15, 0
	bstrpick.d	$t0, $a6, 15, 0
	div.du	$t2, $t1, $t0
	mul.d	$t1, $t2, $a6
	sub.d	$a4, $a4, $t1
	bstrpick.d	$t1, $a4, 15, 0
	mul.d	$t2, $a5, $t2
	add.d	$a1, $t2, $a1
	beq	$t1, $a7, .LBB11_9
# %bb.7:                                #   in Loop: Header=BB11_6 Depth=1
	div.du	$t0, $t0, $t1
	mul.d	$t1, $t0, $a4
	sub.d	$a6, $a6, $t1
	bstrpick.d	$t1, $a6, 15, 0
	mul.d	$t0, $a1, $t0
	add.d	$a5, $t0, $a5
	bne	$t1, $a7, .LBB11_6
.LBB11_8:
	ori	$a1, $zero, 1
	sub.d	$a1, $a1, $a5
.LBB11_9:                               # %inv.exit.i
	ld.h	$a4, $sp, 162
	ld.h	$a5, $sp, 164
	ld.hu	$a6, $sp, 166
	sub.d	$a4, $zero, $a4
	sub.d	$a5, $zero, $a5
	bgeu	$a6, $a2, .LBB11_11
# %bb.10:
	move	$a7, $a6
	b	.LBB11_16
.LBB11_11:
	bstrpick.d	$a7, $a6, 15, 0
	ori	$t0, $a0, 1
	div.wu	$a2, $t0, $a7
	mul.d	$a7, $a2, $a7
	sub.w	$t0, $t0, $a7
	ori	$t1, $zero, 1
	beq	$t0, $t1, .LBB11_15
# %bb.12:                               # %.preheader.i53.preheader.i
	ori	$a7, $zero, 1
	.p2align	4, , 16
.LBB11_13:                              # %.preheader.i53.i
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$t3, $a6, 15, 0
	bstrpick.d	$t2, $t0, 15, 0
	div.du	$t4, $t3, $t2
	mul.d	$t3, $t4, $t0
	sub.d	$a6, $a6, $t3
	bstrpick.d	$t3, $a6, 15, 0
	mul.d	$t4, $a2, $t4
	add.d	$a7, $t4, $a7
	beq	$t3, $t1, .LBB11_16
# %bb.14:                               #   in Loop: Header=BB11_13 Depth=1
	div.du	$t2, $t2, $t3
	mul.d	$t3, $t2, $a6
	sub.d	$t0, $t0, $t3
	bstrpick.d	$t3, $t0, 15, 0
	mul.d	$t2, $a7, $t2
	add.d	$a2, $t2, $a2
	bne	$t3, $t1, .LBB11_13
.LBB11_15:
	ori	$a6, $zero, 1
	sub.d	$a7, $a6, $a2
.LBB11_16:                              # %inv.exit66.i
	st.h	$a7, $sp, 366
	st.h	$a5, $sp, 364
	st.h	$a4, $sp, 362
	addi.d	$t1, $sp, 360
	st.h	$a1, $sp, 360
	ori	$a4, $zero, 1
	ori	$a5, $zero, 2
	ori	$a6, $zero, 8
	ori	$a1, $a0, 1
	ori	$a7, $zero, 1
	b	.LBB11_19
	.p2align	4, , 16
.LBB11_17:                              #   in Loop: Header=BB11_19 Depth=1
	move	$t1, $a3
.LBB11_18:                              # %inv.exit94.i
                                        #   in Loop: Header=BB11_19 Depth=1
	ld.h	$a3, $a2, 6
	ld.h	$t2, $a2, 8
	sub.d	$t3, $zero, $a3
	sub.d	$t2, $zero, $t2
	addi.d	$a3, $a2, 12
	st.h	$t1, $a0, -6
	st.h	$t3, $a0, -8
	st.h	$t2, $a0, -10
	addi.d	$t1, $a0, -12
	addi.w	$a7, $a7, 1
	st.h	$t0, $a0, -12
	beq	$a7, $a6, .LBB11_32
.LBB11_19:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_23 Depth 2
                                        #     Child Loop BB11_29 Depth 2
	move	$a2, $a3
	ld.w	$t0, $a3, 0
	ld.hu	$a3, $a3, 4
	move	$a0, $t1
	st.w	$t0, $t1, -4
	bgeu	$a3, $a5, .LBB11_21
# %bb.20:                               #   in Loop: Header=BB11_19 Depth=1
	move	$t0, $a3
	b	.LBB11_26
	.p2align	4, , 16
.LBB11_21:                              #   in Loop: Header=BB11_19 Depth=1
	bstrpick.d	$t0, $a3, 15, 0
	div.wu	$t1, $a1, $t0
	mul.d	$t0, $t1, $t0
	sub.w	$t2, $a1, $t0
	beq	$t2, $a4, .LBB11_25
# %bb.22:                               # %.preheader.i67.preheader.i
                                        #   in Loop: Header=BB11_19 Depth=1
	ori	$t0, $zero, 1
	.p2align	4, , 16
.LBB11_23:                              # %.preheader.i67.i
                                        #   Parent Loop BB11_19 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	bstrpick.d	$t4, $a3, 15, 0
	bstrpick.d	$t3, $t2, 15, 0
	div.du	$t5, $t4, $t3
	mul.d	$t4, $t5, $t2
	sub.d	$a3, $a3, $t4
	bstrpick.d	$t4, $a3, 15, 0
	mul.d	$t5, $t1, $t5
	add.d	$t0, $t5, $t0
	beq	$t4, $a4, .LBB11_26
# %bb.24:                               #   in Loop: Header=BB11_23 Depth=2
	div.du	$t3, $t3, $t4
	mul.d	$t4, $t3, $a3
	sub.d	$t2, $t2, $t4
	bstrpick.d	$t4, $t2, 15, 0
	mul.d	$t3, $t0, $t3
	add.d	$t1, $t3, $t1
	bne	$t4, $a4, .LBB11_23
.LBB11_25:                              #   in Loop: Header=BB11_19 Depth=1
	sub.d	$t0, $a4, $t1
.LBB11_26:                              # %inv.exit80.i
                                        #   in Loop: Header=BB11_19 Depth=1
	ld.hu	$a3, $a2, 10
	bltu	$a3, $a5, .LBB11_17
# %bb.27:                               #   in Loop: Header=BB11_19 Depth=1
	bstrpick.d	$t1, $a3, 15, 0
	div.wu	$t2, $a1, $t1
	mul.d	$t1, $t2, $t1
	sub.w	$t3, $a1, $t1
	beq	$t3, $a4, .LBB11_31
# %bb.28:                               # %.preheader.i81.preheader.i
                                        #   in Loop: Header=BB11_19 Depth=1
	ori	$t1, $zero, 1
	.p2align	4, , 16
.LBB11_29:                              # %.preheader.i81.i
                                        #   Parent Loop BB11_19 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	bstrpick.d	$t5, $a3, 15, 0
	bstrpick.d	$t4, $t3, 15, 0
	div.du	$t6, $t5, $t4
	mul.d	$t5, $t6, $t3
	sub.d	$a3, $a3, $t5
	bstrpick.d	$t5, $a3, 15, 0
	mul.d	$t6, $t2, $t6
	add.d	$t1, $t6, $t1
	beq	$t5, $a4, .LBB11_18
# %bb.30:                               #   in Loop: Header=BB11_29 Depth=2
	div.du	$t4, $t4, $t5
	mul.d	$t5, $t4, $a3
	sub.d	$t3, $t3, $t5
	bstrpick.d	$t5, $t3, 15, 0
	mul.d	$t4, $t1, $t4
	add.d	$t2, $t4, $t2
	bne	$t5, $a4, .LBB11_29
.LBB11_31:                              #   in Loop: Header=BB11_19 Depth=1
	sub.d	$t1, $a4, $t2
	b	.LBB11_18
.LBB11_32:
	ld.w	$a3, $a2, 12
	ld.hu	$a4, $a2, 16
	ori	$a5, $zero, 2
	st.w	$a3, $a0, -16
	bgeu	$a4, $a5, .LBB11_34
# %bb.33:
	move	$a3, $a4
	b	.LBB11_39
.LBB11_34:
	bstrpick.d	$a3, $a4, 15, 0
	div.wu	$a6, $a1, $a3
	mul.d	$a3, $a6, $a3
	sub.w	$a7, $a1, $a3
	ori	$t0, $zero, 1
	beq	$a7, $t0, .LBB11_38
# %bb.35:                               # %.preheader.i95.preheader.i
	ori	$a3, $zero, 1
	.p2align	4, , 16
.LBB11_36:                              # %.preheader.i95.i
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$t2, $a4, 15, 0
	bstrpick.d	$t1, $a7, 15, 0
	div.du	$t3, $t2, $t1
	mul.d	$t2, $t3, $a7
	sub.d	$a4, $a4, $t2
	bstrpick.d	$t2, $a4, 15, 0
	mul.d	$t3, $a6, $t3
	add.d	$a3, $t3, $a3
	beq	$t2, $t0, .LBB11_39
# %bb.37:                               #   in Loop: Header=BB11_36 Depth=1
	div.du	$t1, $t1, $t2
	mul.d	$t2, $t1, $a4
	sub.d	$a7, $a7, $t2
	bstrpick.d	$t2, $a7, 15, 0
	mul.d	$t1, $a3, $t1
	add.d	$a6, $t1, $a6
	bne	$t2, $t0, .LBB11_36
.LBB11_38:
	ori	$a3, $zero, 1
	sub.d	$a3, $a3, $a6
.LBB11_39:                              # %inv.exit108.i
	ld.hu	$a4, $a2, 18
	ld.hu	$a6, $a2, 22
	ld.hu	$a2, $a2, 20
	bgeu	$a6, $a5, .LBB11_41
# %bb.40:
	move	$a1, $a6
	b	.LBB11_46
.LBB11_41:
	bstrpick.d	$a7, $a6, 15, 0
	div.wu	$a5, $a1, $a7
	mul.d	$a7, $a5, $a7
	sub.w	$a7, $a1, $a7
	ori	$t0, $zero, 1
	beq	$a7, $t0, .LBB11_45
# %bb.42:                               # %.preheader.i109.preheader.i
	ori	$a1, $zero, 1
	.p2align	4, , 16
.LBB11_43:                              # %.preheader.i109.i
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$t2, $a6, 15, 0
	bstrpick.d	$t1, $a7, 15, 0
	div.du	$t3, $t2, $t1
	mul.d	$t2, $t3, $a7
	sub.d	$a6, $a6, $t2
	bstrpick.d	$t2, $a6, 15, 0
	mul.d	$t3, $a5, $t3
	add.d	$a1, $t3, $a1
	beq	$t2, $t0, .LBB11_46
# %bb.44:                               #   in Loop: Header=BB11_43 Depth=1
	div.du	$t1, $t1, $t2
	mul.d	$t2, $t1, $a6
	sub.d	$a7, $a7, $t2
	bstrpick.d	$t2, $a7, 15, 0
	mul.d	$t1, $a1, $t1
	add.d	$a5, $t1, $a5
	bne	$t2, $t0, .LBB11_43
.LBB11_45:
	ori	$a1, $zero, 1
	sub.d	$a1, $a1, $a5
.LBB11_46:                              # %de_key_idea.exit
	sub.d	$a2, $zero, $a2
	sub.d	$a4, $zero, $a4
	st.h	$a1, $a0, -18
	st.h	$a2, $a0, -20
	st.h	$a4, $a0, -22
	st.h	$a3, $a0, -24
	xvld	$xr0, $sp, 264
	xvst	$xr0, $sp, 56
	pcalau12i	$a0, %got_pc_hi20(global_ideastruct)
	ld.d	$s2, $a0, %got_pc_lo12(global_ideastruct)
	xvld	$xr0, $sp, 296
	xvld	$xr1, $sp, 328
	ld.d	$a1, $sp, 360
	ld.d	$a0, $s2, 16
	xvst	$xr0, $sp, 88
	xvst	$xr1, $sp, 120
	st.d	$a1, $sp, 152
	addi.d	$a1, $sp, 264
	pcaddu18i	$ra, %call36(AllocateMemory)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 264
	move	$fp, $a0
	beqz	$a1, .LBB11_48
# %bb.47:
	pcalau12i	$a0, %pc_hi20(.L.str.58)
	addi.d	$a0, $a0, %pc_lo12(.L.str.58)
	pcaddu18i	$ra, %call36(ReportError)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(ErrorExit)
	jirl	$ra, $ra, 0
.LBB11_48:
	ld.d	$a0, $s2, 16
	addi.d	$a1, $sp, 264
	pcaddu18i	$ra, %call36(AllocateMemory)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 264
	move	$s0, $a0
	beqz	$a1, .LBB11_50
# %bb.49:
	pcalau12i	$a0, %pc_hi20(.L.str.58)
	addi.d	$a0, $a0, %pc_lo12(.L.str.58)
	pcaddu18i	$ra, %call36(ReportError)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 264
	move	$a0, $fp
	pcaddu18i	$ra, %call36(FreeMemory)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(ErrorExit)
	jirl	$ra, $ra, 0
.LBB11_50:
	ld.d	$a0, $s2, 16
	addi.d	$a1, $sp, 264
	pcaddu18i	$ra, %call36(AllocateMemory)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 264
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	beqz	$a1, .LBB11_52
# %bb.51:
	pcalau12i	$a0, %pc_hi20(.L.str.58)
	addi.d	$a0, $a0, %pc_lo12(.L.str.58)
	pcaddu18i	$ra, %call36(ReportError)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 264
	move	$a0, $fp
	pcaddu18i	$ra, %call36(FreeMemory)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 264
	move	$a0, $s0
	pcaddu18i	$ra, %call36(FreeMemory)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(ErrorExit)
	jirl	$ra, $ra, 0
.LBB11_52:
	ld.d	$a0, $s2, 16
	beqz	$a0, .LBB11_55
# %bb.53:                               # %.lr.ph.preheader
	move	$s1, $zero
	.p2align	4, , 16
.LBB11_54:                              # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ori	$a0, $zero, 255
	pcaddu18i	$ra, %call36(abs_randwc)
	jirl	$ra, $ra, 0
	stx.b	$a0, $fp, $s1
	ld.d	$a0, $s2, 16
	addi.d	$s1, $s1, 1
	bltu	$s1, $a0, .LBB11_54
.LBB11_55:                              # %._crit_edge
	ld.w	$a0, $s2, 0
	move	$a2, $s2
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	bnez	$a0, .LBB11_128
# %bb.56:                               # %.preheader
	ori	$a3, $zero, 100
	ld.hu	$a0, $sp, 152
	st.d	$a3, $a2, 24
	ori	$s3, $zero, 1
	ld.hu	$a1, $sp, 158
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	sub.d	$s4, $s3, $a0
	ld.hu	$s5, $sp, 154
	ld.hu	$s6, $sp, 156
	st.d	$a1, $sp, 16                    # 8-byte Folded Spill
	sub.d	$s7, $s3, $a1
	pcalau12i	$a0, %got_pc_hi20(global_min_ticks)
	ld.d	$a0, $a0, %got_pc_lo12(global_min_ticks)
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	lu12i.w	$a0, 122
	ori	$a0, $a0, 288
	st.d	$a0, $sp, 0                     # 8-byte Folded Spill
	addi.w	$s8, $zero, -8
	ori	$s2, $zero, 0
	lu32i.d	$s2, 1
	.p2align	4, , 16
.LBB11_57:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_61 Depth 2
                                        #       Child Loop BB11_64 Depth 3
                                        #         Child Loop BB11_67 Depth 4
                                        #       Child Loop BB11_97 Depth 3
                                        #         Child Loop BB11_100 Depth 4
	st.d	$a3, $sp, 48                    # 8-byte Folded Spill
	ld.d	$s1, $a2, 16
	pcaddu18i	$ra, %call36(StartStopwatch)
	jirl	$ra, $ra, 0
	ld.d	$ra, $sp, 48                    # 8-byte Folded Reload
	ld.d	$t6, $sp, 32                    # 8-byte Folded Reload
	ld.d	$t7, $sp, 40                    # 8-byte Folded Reload
	ld.d	$t8, $sp, 16                    # 8-byte Folded Reload
	beqz	$ra, .LBB11_126
# %bb.58:                               #   in Loop: Header=BB11_57 Depth=1
	beqz	$s1, .LBB11_126
# %bb.59:                               # %.preheader21.us.us.i.preheader
                                        #   in Loop: Header=BB11_57 Depth=1
	move	$a1, $zero
	b	.LBB11_61
	.p2align	4, , 16
.LBB11_60:                              # %._crit_edge.us.us.i
                                        #   in Loop: Header=BB11_61 Depth=2
	addi.d	$a1, $a1, 1
	beq	$a1, $ra, .LBB11_126
.LBB11_61:                              # %.preheader21.us.us.i
                                        #   Parent Loop BB11_57 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB11_64 Depth 3
                                        #         Child Loop BB11_67 Depth 4
                                        #       Child Loop BB11_97 Depth 3
                                        #         Child Loop BB11_100 Depth 4
	move	$a2, $zero
	b	.LBB11_64
	.p2align	4, , 16
.LBB11_62:                              #   in Loop: Header=BB11_64 Depth=3
	sub.d	$a3, $s3, $a3
.LBB11_63:                              # %cipher_idea.exit
                                        #   in Loop: Header=BB11_64 Depth=3
	addi.d	$a2, $a2, 8
	st.h	$a3, $a4, 6
	bgeu	$a2, $s1, .LBB11_94
.LBB11_64:                              #   Parent Loop BB11_57 Depth=1
                                        #     Parent Loop BB11_61 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB11_67 Depth 4
	add.d	$a4, $fp, $a2
	ldx.hu	$t1, $fp, $a2
	ld.hu	$a3, $a4, 2
	ld.hu	$a7, $a4, 4
	ld.hu	$t0, $a4, 6
	addi.d	$a4, $sp, 160
	move	$a5, $s8
	b	.LBB11_67
	.p2align	4, , 16
.LBB11_65:                              #   in Loop: Header=BB11_67 Depth=4
	sub.d	$t5, $s3, $t0
.LBB11_66:                              # %mul.exit62.i
                                        #   in Loop: Header=BB11_67 Depth=4
	add.d	$t4, $t5, $a7
	xor	$t1, $t5, $t1
	xor	$t0, $t4, $a6
	xor	$a7, $t4, $a3
	xor	$a3, $t5, $t3
	bstrpick.d	$a5, $a5, 31, 0
	addi.d	$a5, $a5, 1
	and	$t3, $a5, $s2
	addi.d	$a4, $a4, 12
	bnez	$t3, .LBB11_85
.LBB11_67:                              #   Parent Loop BB11_57 Depth=1
                                        #     Parent Loop BB11_61 Depth=2
                                        #       Parent Loop BB11_64 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.hu	$a6, $a4, 0
	bstrpick.d	$t2, $t1, 15, 0
	beqz	$t2, .LBB11_70
# %bb.68:                               #   in Loop: Header=BB11_67 Depth=4
	beqz	$a6, .LBB11_73
# %bb.69:                               #   in Loop: Header=BB11_67 Depth=4
	mul.d	$a6, $a6, $t2
	srli.d	$t1, $a6, 16
	bstrpick.d	$t2, $a6, 15, 0
	sub.d	$a6, $a6, $t1
	sltu	$t1, $t2, $t1
	add.w	$t1, $a6, $t1
	ld.hu	$a6, $a4, 6
	bstrpick.d	$t2, $t0, 15, 0
	bnez	$t2, .LBB11_71
	b	.LBB11_74
	.p2align	4, , 16
.LBB11_70:                              #   in Loop: Header=BB11_67 Depth=4
	sub.d	$t1, $s3, $a6
	ld.hu	$a6, $a4, 6
	bstrpick.d	$t2, $t0, 15, 0
	beqz	$t2, .LBB11_74
.LBB11_71:                              #   in Loop: Header=BB11_67 Depth=4
	beqz	$a6, .LBB11_75
# %bb.72:                               #   in Loop: Header=BB11_67 Depth=4
	mul.d	$a6, $a6, $t2
	srli.d	$t0, $a6, 16
	bstrpick.d	$t2, $a6, 15, 0
	sub.d	$a6, $a6, $t0
	sltu	$t0, $t2, $t0
	add.w	$a6, $a6, $t0
	b	.LBB11_76
	.p2align	4, , 16
.LBB11_73:                              #   in Loop: Header=BB11_67 Depth=4
	sub.d	$t1, $s3, $t1
	ld.hu	$a6, $a4, 6
	bstrpick.d	$t2, $t0, 15, 0
	bnez	$t2, .LBB11_71
.LBB11_74:                              #   in Loop: Header=BB11_67 Depth=4
	sub.d	$a6, $s3, $a6
	b	.LBB11_76
	.p2align	4, , 16
.LBB11_75:                              #   in Loop: Header=BB11_67 Depth=4
	sub.d	$a6, $s3, $t0
.LBB11_76:                              # %mul.exit54.i
                                        #   in Loop: Header=BB11_67 Depth=4
	ld.h	$t0, $a4, 4
	add.d	$t3, $t0, $a7
	ld.hu	$a7, $a4, 8
	bstrpick.d	$t0, $t3, 15, 0
	bstrpick.d	$t2, $t1, 15, 0
	bne	$t2, $t0, .LBB11_78
# %bb.77:                               #   in Loop: Header=BB11_67 Depth=4
	sub.d	$a7, $s3, $a7
	b	.LBB11_81
	.p2align	4, , 16
.LBB11_78:                              #   in Loop: Header=BB11_67 Depth=4
	xor	$t0, $t3, $t1
	beqz	$a7, .LBB11_80
# %bb.79:                               #   in Loop: Header=BB11_67 Depth=4
	bstrpick.d	$t0, $t0, 15, 0
	mul.d	$a7, $a7, $t0
	srli.d	$t0, $a7, 16
	bstrpick.d	$t4, $a7, 15, 0
	sub.d	$a7, $a7, $t0
	sltu	$t0, $t4, $t0
	add.w	$a7, $a7, $t0
	b	.LBB11_81
.LBB11_80:                              #   in Loop: Header=BB11_67 Depth=4
	sub.d	$a7, $s3, $t0
	.p2align	4, , 16
.LBB11_81:                              # %mul.exit58.i
                                        #   in Loop: Header=BB11_67 Depth=4
	ld.h	$t0, $a4, 2
	add.d	$a3, $t0, $a3
	xor	$t4, $a6, $a3
	ld.hu	$t0, $a4, 10
	add.d	$t4, $a7, $t4
	bstrpick.d	$t5, $t4, 15, 0
	beqz	$t5, .LBB11_65
# %bb.82:                               #   in Loop: Header=BB11_67 Depth=4
	beqz	$t0, .LBB11_84
# %bb.83:                               #   in Loop: Header=BB11_67 Depth=4
	mul.d	$t0, $t0, $t5
	srli.d	$t4, $t0, 16
	bstrpick.d	$t5, $t0, 15, 0
	sub.d	$t0, $t0, $t4
	sltu	$t4, $t5, $t4
	add.w	$t5, $t0, $t4
	b	.LBB11_66
	.p2align	4, , 16
.LBB11_84:                              #   in Loop: Header=BB11_67 Depth=4
	sub.d	$t5, $s3, $t4
	b	.LBB11_66
	.p2align	4, , 16
.LBB11_85:                              #   in Loop: Header=BB11_64 Depth=3
	ld.hu	$a4, $sp, 256
	bstrpick.d	$a5, $t5, 15, 0
	bne	$t2, $a5, .LBB11_87
# %bb.86:                               #   in Loop: Header=BB11_64 Depth=3
	sub.d	$a5, $s3, $a4
	b	.LBB11_90
	.p2align	4, , 16
.LBB11_87:                              #   in Loop: Header=BB11_64 Depth=3
	beqz	$a4, .LBB11_89
# %bb.88:                               #   in Loop: Header=BB11_64 Depth=3
	bstrpick.d	$a5, $t1, 15, 0
	mul.d	$a4, $a4, $a5
	srli.d	$a5, $a4, 16
	bstrpick.d	$t1, $a4, 15, 0
	sub.d	$a4, $a4, $a5
	sltu	$a5, $t1, $a5
	add.d	$a5, $a4, $a5
	b	.LBB11_90
.LBB11_89:                              #   in Loop: Header=BB11_64 Depth=3
	sub.d	$a5, $s3, $t1
	.p2align	4, , 16
.LBB11_90:                              # %mul.exit66.i
                                        #   in Loop: Header=BB11_64 Depth=3
	add.d	$a4, $s0, $a2
	st.h	$a5, $a4, 0
	ld.h	$a5, $sp, 258
	add.d	$a5, $a5, $a7
	st.h	$a5, $a4, 2
	ld.h	$a5, $sp, 260
	add.d	$a3, $a5, $a3
	st.h	$a3, $a4, 4
	ld.hu	$a3, $sp, 262
	bstrpick.d	$a5, $t4, 15, 0
	bstrpick.d	$a6, $a6, 15, 0
	beq	$a6, $a5, .LBB11_62
# %bb.91:                               #   in Loop: Header=BB11_64 Depth=3
	beqz	$a3, .LBB11_93
# %bb.92:                               #   in Loop: Header=BB11_64 Depth=3
	bstrpick.d	$a5, $t0, 15, 0
	mul.d	$a3, $a3, $a5
	srli.d	$a5, $a3, 16
	bstrpick.d	$a6, $a3, 15, 0
	sub.d	$a3, $a3, $a5
	sltu	$a5, $a6, $a5
	add.d	$a3, $a3, $a5
	b	.LBB11_63
.LBB11_93:                              #   in Loop: Header=BB11_64 Depth=3
	sub.d	$a3, $s3, $t0
	b	.LBB11_63
	.p2align	4, , 16
.LBB11_94:                              # %..preheader_crit_edge.us.us.i.preheader
                                        #   in Loop: Header=BB11_61 Depth=2
	move	$a2, $zero
	b	.LBB11_97
.LBB11_95:                              #   in Loop: Header=BB11_97 Depth=3
	sub.d	$a4, $s3, $t0
	.p2align	4, , 16
.LBB11_96:                              # %cipher_idea.exit103
                                        #   in Loop: Header=BB11_97 Depth=3
	addi.d	$a2, $a2, 8
	st.h	$a4, $a3, 6
	bgeu	$a2, $s1, .LBB11_60
.LBB11_97:                              # %..preheader_crit_edge.us.us.i
                                        #   Parent Loop BB11_57 Depth=1
                                        #     Parent Loop BB11_61 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB11_100 Depth 4
	add.d	$a3, $s0, $a2
	ldx.hu	$t1, $s0, $a2
	ld.hu	$a5, $a3, 2
	ld.hu	$a7, $a3, 4
	ld.hu	$t0, $a3, 6
	addi.d	$a3, $sp, 56
	addi.w	$a4, $zero, -8
	b	.LBB11_100
	.p2align	4, , 16
.LBB11_98:                              #   in Loop: Header=BB11_100 Depth=4
	sub.d	$t5, $s3, $t0
.LBB11_99:                              # %mul.exit62.i92
                                        #   in Loop: Header=BB11_100 Depth=4
	add.d	$t4, $t5, $a7
	xor	$t1, $t5, $t1
	xor	$t0, $t4, $a6
	xor	$a7, $t4, $a5
	xor	$a5, $t5, $t3
	bstrpick.d	$a4, $a4, 31, 0
	addi.d	$a4, $a4, 1
	and	$t3, $a4, $s2
	addi.d	$a3, $a3, 12
	bnez	$t3, .LBB11_119
.LBB11_100:                             #   Parent Loop BB11_57 Depth=1
                                        #     Parent Loop BB11_61 Depth=2
                                        #       Parent Loop BB11_97 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.hu	$a6, $a3, 0
	bstrpick.d	$t2, $t1, 15, 0
	beqz	$t2, .LBB11_103
# %bb.101:                              #   in Loop: Header=BB11_100 Depth=4
	beqz	$a6, .LBB11_104
# %bb.102:                              #   in Loop: Header=BB11_100 Depth=4
	mul.d	$a6, $a6, $t2
	srli.d	$t1, $a6, 16
	bstrpick.d	$t2, $a6, 15, 0
	sub.d	$a6, $a6, $t1
	sltu	$t1, $t2, $t1
	add.w	$t1, $a6, $t1
	b	.LBB11_105
	.p2align	4, , 16
.LBB11_103:                             #   in Loop: Header=BB11_100 Depth=4
	sub.d	$t1, $s3, $a6
	b	.LBB11_105
	.p2align	4, , 16
.LBB11_104:                             #   in Loop: Header=BB11_100 Depth=4
	sub.d	$t1, $s3, $t1
.LBB11_105:                             # %mul.exit.i80
                                        #   in Loop: Header=BB11_100 Depth=4
	ld.h	$t4, $a3, 2
	ld.h	$t2, $a3, 4
	ld.hu	$a6, $a3, 6
	bstrpick.d	$t3, $t0, 15, 0
	beqz	$t3, .LBB11_108
# %bb.106:                              #   in Loop: Header=BB11_100 Depth=4
	beqz	$a6, .LBB11_109
# %bb.107:                              #   in Loop: Header=BB11_100 Depth=4
	mul.d	$a6, $a6, $t3
	srli.d	$t0, $a6, 16
	bstrpick.d	$t3, $a6, 15, 0
	sub.d	$a6, $a6, $t0
	sltu	$t0, $t3, $t0
	add.w	$a6, $a6, $t0
	b	.LBB11_110
	.p2align	4, , 16
.LBB11_108:                             #   in Loop: Header=BB11_100 Depth=4
	sub.d	$a6, $s3, $a6
	b	.LBB11_110
	.p2align	4, , 16
.LBB11_109:                             #   in Loop: Header=BB11_100 Depth=4
	sub.d	$a6, $s3, $t0
.LBB11_110:                             # %mul.exit54.i84
                                        #   in Loop: Header=BB11_100 Depth=4
	add.d	$t3, $t2, $a7
	ld.hu	$a7, $a3, 8
	bstrpick.d	$t0, $t3, 15, 0
	bstrpick.d	$t2, $t1, 15, 0
	bne	$t2, $t0, .LBB11_112
# %bb.111:                              #   in Loop: Header=BB11_100 Depth=4
	sub.d	$a7, $s3, $a7
	b	.LBB11_115
	.p2align	4, , 16
.LBB11_112:                             #   in Loop: Header=BB11_100 Depth=4
	xor	$t0, $t3, $t1
	beqz	$a7, .LBB11_114
# %bb.113:                              #   in Loop: Header=BB11_100 Depth=4
	bstrpick.d	$t0, $t0, 15, 0
	mul.d	$a7, $a7, $t0
	srli.d	$t0, $a7, 16
	bstrpick.d	$t5, $a7, 15, 0
	sub.d	$a7, $a7, $t0
	sltu	$t0, $t5, $t0
	add.w	$a7, $a7, $t0
	b	.LBB11_115
.LBB11_114:                             #   in Loop: Header=BB11_100 Depth=4
	sub.d	$a7, $s3, $t0
	.p2align	4, , 16
.LBB11_115:                             # %mul.exit58.i88
                                        #   in Loop: Header=BB11_100 Depth=4
	add.d	$a5, $t4, $a5
	xor	$t4, $a6, $a5
	ld.hu	$t0, $a3, 10
	add.d	$t4, $a7, $t4
	bstrpick.d	$t5, $t4, 15, 0
	beqz	$t5, .LBB11_98
# %bb.116:                              #   in Loop: Header=BB11_100 Depth=4
	beqz	$t0, .LBB11_118
# %bb.117:                              #   in Loop: Header=BB11_100 Depth=4
	mul.d	$t0, $t0, $t5
	srli.d	$t4, $t0, 16
	bstrpick.d	$t5, $t0, 15, 0
	sub.d	$t0, $t0, $t4
	sltu	$t4, $t5, $t4
	add.w	$t5, $t0, $t4
	b	.LBB11_99
	.p2align	4, , 16
.LBB11_118:                             #   in Loop: Header=BB11_100 Depth=4
	sub.d	$t5, $s3, $t4
	b	.LBB11_99
	.p2align	4, , 16
.LBB11_119:                             #   in Loop: Header=BB11_97 Depth=3
	bstrpick.d	$a3, $t5, 15, 0
	move	$a4, $s4
	beq	$t2, $a3, .LBB11_123
# %bb.120:                              #   in Loop: Header=BB11_97 Depth=3
	beqz	$t7, .LBB11_122
# %bb.121:                              #   in Loop: Header=BB11_97 Depth=3
	bstrpick.d	$a3, $t1, 15, 0
	mul.d	$a3, $t7, $a3
	srli.d	$a4, $a3, 16
	bstrpick.d	$t1, $a3, 15, 0
	sub.d	$a3, $a3, $a4
	sltu	$a4, $t1, $a4
	add.d	$a4, $a3, $a4
	b	.LBB11_123
.LBB11_122:                             #   in Loop: Header=BB11_97 Depth=3
	sub.d	$a4, $s3, $t1
	.p2align	4, , 16
.LBB11_123:                             # %mul.exit66.i98
                                        #   in Loop: Header=BB11_97 Depth=3
	add.d	$a3, $t6, $a2
	st.h	$a4, $a3, 0
	add.d	$a4, $s5, $a7
	st.h	$a4, $a3, 2
	add.d	$a4, $s6, $a5
	bstrpick.d	$a5, $t4, 15, 0
	bstrpick.d	$a6, $a6, 15, 0
	st.h	$a4, $a3, 4
	move	$a4, $s7
	beq	$a6, $a5, .LBB11_96
# %bb.124:                              #   in Loop: Header=BB11_97 Depth=3
	beqz	$t8, .LBB11_95
# %bb.125:                              #   in Loop: Header=BB11_97 Depth=3
	bstrpick.d	$a4, $t0, 15, 0
	mul.d	$a4, $t8, $a4
	srli.d	$a5, $a4, 16
	bstrpick.d	$a6, $a4, 15, 0
	sub.d	$a4, $a4, $a5
	sltu	$a5, $a6, $a5
	add.d	$a4, $a4, $a5
	b	.LBB11_96
	.p2align	4, , 16
.LBB11_126:                             # %DoIDEAIteration.exit
                                        #   in Loop: Header=BB11_57 Depth=1
	pcaddu18i	$ra, %call36(StopStopwatch)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	bltu	$a1, $a0, .LBB11_128
# %bb.127:                              #   in Loop: Header=BB11_57 Depth=1
	ld.d	$a0, $a2, 24
	addi.d	$a3, $a0, 10
	st.d	$a3, $a2, 24
	ld.d	$a0, $sp, 0                     # 8-byte Folded Reload
	bltu	$a3, $a0, .LBB11_57
.LBB11_128:                             # %.loopexit
	st.d	$zero, $sp, 48                  # 8-byte Folded Spill
	ld.hu	$a0, $sp, 152
	ld.d	$a3, $a2, 24
	ori	$s5, $zero, 1
	ld.hu	$a1, $sp, 158
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	sub.d	$s7, $s5, $a0
	ld.hu	$s8, $sp, 154
	ld.hu	$s3, $sp, 156
	st.d	$a1, $sp, 8                     # 8-byte Folded Spill
	sub.d	$s2, $s5, $a1
	movgr2fr.d	$fs0, $zero
	pcalau12i	$a0, %pc_hi20(.LCPI11_0)
	fld.d	$fs1, $a0, %pc_lo12(.LCPI11_0)
	pcalau12i	$a0, %pc_hi20(.LCPI11_1)
	fld.d	$fs2, $a0, %pc_lo12(.LCPI11_1)
	addi.w	$s1, $zero, -8
	ori	$s4, $zero, 0
	lu32i.d	$s4, 1
	move	$s6, $a2
	b	.LBB11_130
	.p2align	4, , 16
.LBB11_129:                             # %DoIDEAIteration.exit67
                                        #   in Loop: Header=BB11_130 Depth=1
	pcaddu18i	$ra, %call36(StopStopwatch)
	jirl	$ra, $ra, 0
	ld.d	$s6, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a3, $s6, 24
	srli.d	$a1, $a3, 32
	lu52i.d	$a2, $zero, 1107
	or	$a1, $a1, $a2
	movgr2fr.d	$fa0, $a1
	fsub.d	$fa0, $fa0, $fs1
	move	$a1, $a3
	lu12i.w	$a2, 275200
	bstrins.d	$a1, $a2, 63, 32
	movgr2fr.d	$fa1, $a1
	fadd.d	$fa0, $fa1, $fa0
	fadd.d	$fs0, $fs0, $fa0
	fcmp.clt.d	$fcc0, $fs0, $fs2
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	add.d	$a1, $a0, $a1
	st.d	$a1, $sp, 48                    # 8-byte Folded Spill
	bceqz	$fcc0, .LBB11_199
.LBB11_130:                             # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_134 Depth 2
                                        #       Child Loop BB11_137 Depth 3
                                        #         Child Loop BB11_140 Depth 4
                                        #       Child Loop BB11_170 Depth 3
                                        #         Child Loop BB11_173 Depth 4
	st.d	$a3, $sp, 40                    # 8-byte Folded Spill
	ld.d	$s6, $s6, 16
	pcaddu18i	$ra, %call36(StartStopwatch)
	jirl	$ra, $ra, 0
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	ld.d	$t6, $sp, 32                    # 8-byte Folded Reload
	ld.d	$t7, $sp, 16                    # 8-byte Folded Reload
	ld.d	$t8, $sp, 8                     # 8-byte Folded Reload
	beqz	$s6, .LBB11_129
# %bb.131:                              #   in Loop: Header=BB11_130 Depth=1
	beqz	$ra, .LBB11_129
# %bb.132:                              # %.preheader21.us.us.i60.preheader
                                        #   in Loop: Header=BB11_130 Depth=1
	move	$a1, $zero
	b	.LBB11_134
	.p2align	4, , 16
.LBB11_133:                             # %._crit_edge.us.us.i65
                                        #   in Loop: Header=BB11_134 Depth=2
	addi.d	$a1, $a1, 1
	beq	$a1, $ra, .LBB11_129
.LBB11_134:                             # %.preheader21.us.us.i60
                                        #   Parent Loop BB11_130 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB11_137 Depth 3
                                        #         Child Loop BB11_140 Depth 4
                                        #       Child Loop BB11_170 Depth 3
                                        #         Child Loop BB11_173 Depth 4
	move	$a2, $zero
	b	.LBB11_137
	.p2align	4, , 16
.LBB11_135:                             #   in Loop: Header=BB11_137 Depth=3
	sub.d	$a3, $s5, $a3
.LBB11_136:                             # %cipher_idea.exit135
                                        #   in Loop: Header=BB11_137 Depth=3
	addi.d	$a2, $a2, 8
	st.h	$a3, $a4, 6
	bgeu	$a2, $s6, .LBB11_167
.LBB11_137:                             #   Parent Loop BB11_130 Depth=1
                                        #     Parent Loop BB11_134 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB11_140 Depth 4
	add.d	$a4, $fp, $a2
	ldx.hu	$t1, $fp, $a2
	ld.hu	$a3, $a4, 2
	ld.hu	$a7, $a4, 4
	ld.hu	$t0, $a4, 6
	addi.d	$a4, $sp, 160
	move	$a5, $s1
	b	.LBB11_140
	.p2align	4, , 16
.LBB11_138:                             #   in Loop: Header=BB11_140 Depth=4
	sub.d	$t5, $s5, $t0
.LBB11_139:                             # %mul.exit62.i124
                                        #   in Loop: Header=BB11_140 Depth=4
	add.d	$t4, $t5, $a7
	xor	$t1, $t5, $t1
	xor	$t0, $t4, $a6
	xor	$a7, $t4, $a3
	xor	$a3, $t5, $t3
	bstrpick.d	$a5, $a5, 31, 0
	addi.d	$a5, $a5, 1
	and	$t3, $a5, $s4
	addi.d	$a4, $a4, 12
	bnez	$t3, .LBB11_158
.LBB11_140:                             #   Parent Loop BB11_130 Depth=1
                                        #     Parent Loop BB11_134 Depth=2
                                        #       Parent Loop BB11_137 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.hu	$a6, $a4, 0
	bstrpick.d	$t2, $t1, 15, 0
	beqz	$t2, .LBB11_143
# %bb.141:                              #   in Loop: Header=BB11_140 Depth=4
	beqz	$a6, .LBB11_146
# %bb.142:                              #   in Loop: Header=BB11_140 Depth=4
	mul.d	$a6, $a6, $t2
	srli.d	$t1, $a6, 16
	bstrpick.d	$t2, $a6, 15, 0
	sub.d	$a6, $a6, $t1
	sltu	$t1, $t2, $t1
	add.w	$t1, $a6, $t1
	ld.hu	$a6, $a4, 6
	bstrpick.d	$t2, $t0, 15, 0
	bnez	$t2, .LBB11_144
	b	.LBB11_147
	.p2align	4, , 16
.LBB11_143:                             #   in Loop: Header=BB11_140 Depth=4
	sub.d	$t1, $s5, $a6
	ld.hu	$a6, $a4, 6
	bstrpick.d	$t2, $t0, 15, 0
	beqz	$t2, .LBB11_147
.LBB11_144:                             #   in Loop: Header=BB11_140 Depth=4
	beqz	$a6, .LBB11_148
# %bb.145:                              #   in Loop: Header=BB11_140 Depth=4
	mul.d	$a6, $a6, $t2
	srli.d	$t0, $a6, 16
	bstrpick.d	$t2, $a6, 15, 0
	sub.d	$a6, $a6, $t0
	sltu	$t0, $t2, $t0
	add.w	$a6, $a6, $t0
	b	.LBB11_149
	.p2align	4, , 16
.LBB11_146:                             #   in Loop: Header=BB11_140 Depth=4
	sub.d	$t1, $s5, $t1
	ld.hu	$a6, $a4, 6
	bstrpick.d	$t2, $t0, 15, 0
	bnez	$t2, .LBB11_144
.LBB11_147:                             #   in Loop: Header=BB11_140 Depth=4
	sub.d	$a6, $s5, $a6
	b	.LBB11_149
	.p2align	4, , 16
.LBB11_148:                             #   in Loop: Header=BB11_140 Depth=4
	sub.d	$a6, $s5, $t0
.LBB11_149:                             # %mul.exit54.i116
                                        #   in Loop: Header=BB11_140 Depth=4
	ld.h	$t0, $a4, 4
	add.d	$t3, $t0, $a7
	ld.hu	$a7, $a4, 8
	bstrpick.d	$t0, $t3, 15, 0
	bstrpick.d	$t2, $t1, 15, 0
	bne	$t2, $t0, .LBB11_151
# %bb.150:                              #   in Loop: Header=BB11_140 Depth=4
	sub.d	$a7, $s5, $a7
	b	.LBB11_154
	.p2align	4, , 16
.LBB11_151:                             #   in Loop: Header=BB11_140 Depth=4
	xor	$t0, $t3, $t1
	beqz	$a7, .LBB11_153
# %bb.152:                              #   in Loop: Header=BB11_140 Depth=4
	bstrpick.d	$t0, $t0, 15, 0
	mul.d	$a7, $a7, $t0
	srli.d	$t0, $a7, 16
	bstrpick.d	$t4, $a7, 15, 0
	sub.d	$a7, $a7, $t0
	sltu	$t0, $t4, $t0
	add.w	$a7, $a7, $t0
	b	.LBB11_154
.LBB11_153:                             #   in Loop: Header=BB11_140 Depth=4
	sub.d	$a7, $s5, $t0
	.p2align	4, , 16
.LBB11_154:                             # %mul.exit58.i120
                                        #   in Loop: Header=BB11_140 Depth=4
	ld.h	$t0, $a4, 2
	add.d	$a3, $t0, $a3
	xor	$t4, $a6, $a3
	ld.hu	$t0, $a4, 10
	add.d	$t4, $a7, $t4
	bstrpick.d	$t5, $t4, 15, 0
	beqz	$t5, .LBB11_138
# %bb.155:                              #   in Loop: Header=BB11_140 Depth=4
	beqz	$t0, .LBB11_157
# %bb.156:                              #   in Loop: Header=BB11_140 Depth=4
	mul.d	$t0, $t0, $t5
	srli.d	$t4, $t0, 16
	bstrpick.d	$t5, $t0, 15, 0
	sub.d	$t0, $t0, $t4
	sltu	$t4, $t5, $t4
	add.w	$t5, $t0, $t4
	b	.LBB11_139
	.p2align	4, , 16
.LBB11_157:                             #   in Loop: Header=BB11_140 Depth=4
	sub.d	$t5, $s5, $t4
	b	.LBB11_139
	.p2align	4, , 16
.LBB11_158:                             #   in Loop: Header=BB11_137 Depth=3
	ld.hu	$a4, $sp, 256
	bstrpick.d	$a5, $t5, 15, 0
	bne	$t2, $a5, .LBB11_160
# %bb.159:                              #   in Loop: Header=BB11_137 Depth=3
	sub.d	$a5, $s5, $a4
	b	.LBB11_163
	.p2align	4, , 16
.LBB11_160:                             #   in Loop: Header=BB11_137 Depth=3
	beqz	$a4, .LBB11_162
# %bb.161:                              #   in Loop: Header=BB11_137 Depth=3
	bstrpick.d	$a5, $t1, 15, 0
	mul.d	$a4, $a4, $a5
	srli.d	$a5, $a4, 16
	bstrpick.d	$t1, $a4, 15, 0
	sub.d	$a4, $a4, $a5
	sltu	$a5, $t1, $a5
	add.d	$a5, $a4, $a5
	b	.LBB11_163
.LBB11_162:                             #   in Loop: Header=BB11_137 Depth=3
	sub.d	$a5, $s5, $t1
	.p2align	4, , 16
.LBB11_163:                             # %mul.exit66.i130
                                        #   in Loop: Header=BB11_137 Depth=3
	add.d	$a4, $s0, $a2
	st.h	$a5, $a4, 0
	ld.h	$a5, $sp, 258
	add.d	$a5, $a5, $a7
	st.h	$a5, $a4, 2
	ld.h	$a5, $sp, 260
	add.d	$a3, $a5, $a3
	st.h	$a3, $a4, 4
	ld.hu	$a3, $sp, 262
	bstrpick.d	$a5, $t4, 15, 0
	bstrpick.d	$a6, $a6, 15, 0
	beq	$a6, $a5, .LBB11_135
# %bb.164:                              #   in Loop: Header=BB11_137 Depth=3
	beqz	$a3, .LBB11_166
# %bb.165:                              #   in Loop: Header=BB11_137 Depth=3
	bstrpick.d	$a5, $t0, 15, 0
	mul.d	$a3, $a3, $a5
	srli.d	$a5, $a3, 16
	bstrpick.d	$a6, $a3, 15, 0
	sub.d	$a3, $a3, $a5
	sltu	$a5, $a6, $a5
	add.d	$a3, $a3, $a5
	b	.LBB11_136
.LBB11_166:                             #   in Loop: Header=BB11_137 Depth=3
	sub.d	$a3, $s5, $t0
	b	.LBB11_136
	.p2align	4, , 16
.LBB11_167:                             # %..preheader_crit_edge.us.us.i63.preheader
                                        #   in Loop: Header=BB11_134 Depth=2
	move	$a2, $zero
	b	.LBB11_170
.LBB11_168:                             #   in Loop: Header=BB11_170 Depth=3
	sub.d	$a4, $s5, $t0
	.p2align	4, , 16
.LBB11_169:                             # %cipher_idea.exit167
                                        #   in Loop: Header=BB11_170 Depth=3
	addi.d	$a2, $a2, 8
	st.h	$a4, $a3, 6
	bgeu	$a2, $s6, .LBB11_133
.LBB11_170:                             # %..preheader_crit_edge.us.us.i63
                                        #   Parent Loop BB11_130 Depth=1
                                        #     Parent Loop BB11_134 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB11_173 Depth 4
	add.d	$a3, $s0, $a2
	ldx.hu	$t1, $s0, $a2
	ld.hu	$a5, $a3, 2
	ld.hu	$a7, $a3, 4
	ld.hu	$t0, $a3, 6
	addi.d	$a3, $sp, 56
	addi.w	$a4, $zero, -8
	b	.LBB11_173
	.p2align	4, , 16
.LBB11_171:                             #   in Loop: Header=BB11_173 Depth=4
	sub.d	$t5, $s5, $t0
.LBB11_172:                             # %mul.exit62.i156
                                        #   in Loop: Header=BB11_173 Depth=4
	add.d	$t4, $t5, $a7
	xor	$t1, $t5, $t1
	xor	$t0, $t4, $a6
	xor	$a7, $t4, $a5
	xor	$a5, $t5, $t3
	bstrpick.d	$a4, $a4, 31, 0
	addi.d	$a4, $a4, 1
	and	$t3, $a4, $s4
	addi.d	$a3, $a3, 12
	bnez	$t3, .LBB11_192
.LBB11_173:                             #   Parent Loop BB11_130 Depth=1
                                        #     Parent Loop BB11_134 Depth=2
                                        #       Parent Loop BB11_170 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.hu	$a6, $a3, 0
	bstrpick.d	$t2, $t1, 15, 0
	beqz	$t2, .LBB11_176
# %bb.174:                              #   in Loop: Header=BB11_173 Depth=4
	beqz	$a6, .LBB11_177
# %bb.175:                              #   in Loop: Header=BB11_173 Depth=4
	mul.d	$a6, $a6, $t2
	srli.d	$t1, $a6, 16
	bstrpick.d	$t2, $a6, 15, 0
	sub.d	$a6, $a6, $t1
	sltu	$t1, $t2, $t1
	add.w	$t1, $a6, $t1
	b	.LBB11_178
	.p2align	4, , 16
.LBB11_176:                             #   in Loop: Header=BB11_173 Depth=4
	sub.d	$t1, $s5, $a6
	b	.LBB11_178
	.p2align	4, , 16
.LBB11_177:                             #   in Loop: Header=BB11_173 Depth=4
	sub.d	$t1, $s5, $t1
.LBB11_178:                             # %mul.exit.i144
                                        #   in Loop: Header=BB11_173 Depth=4
	ld.h	$t4, $a3, 2
	ld.h	$t2, $a3, 4
	ld.hu	$a6, $a3, 6
	bstrpick.d	$t3, $t0, 15, 0
	beqz	$t3, .LBB11_181
# %bb.179:                              #   in Loop: Header=BB11_173 Depth=4
	beqz	$a6, .LBB11_182
# %bb.180:                              #   in Loop: Header=BB11_173 Depth=4
	mul.d	$a6, $a6, $t3
	srli.d	$t0, $a6, 16
	bstrpick.d	$t3, $a6, 15, 0
	sub.d	$a6, $a6, $t0
	sltu	$t0, $t3, $t0
	add.w	$a6, $a6, $t0
	b	.LBB11_183
	.p2align	4, , 16
.LBB11_181:                             #   in Loop: Header=BB11_173 Depth=4
	sub.d	$a6, $s5, $a6
	b	.LBB11_183
	.p2align	4, , 16
.LBB11_182:                             #   in Loop: Header=BB11_173 Depth=4
	sub.d	$a6, $s5, $t0
.LBB11_183:                             # %mul.exit54.i148
                                        #   in Loop: Header=BB11_173 Depth=4
	add.d	$t3, $t2, $a7
	ld.hu	$a7, $a3, 8
	bstrpick.d	$t0, $t3, 15, 0
	bstrpick.d	$t2, $t1, 15, 0
	bne	$t2, $t0, .LBB11_185
# %bb.184:                              #   in Loop: Header=BB11_173 Depth=4
	sub.d	$a7, $s5, $a7
	b	.LBB11_188
	.p2align	4, , 16
.LBB11_185:                             #   in Loop: Header=BB11_173 Depth=4
	xor	$t0, $t3, $t1
	beqz	$a7, .LBB11_187
# %bb.186:                              #   in Loop: Header=BB11_173 Depth=4
	bstrpick.d	$t0, $t0, 15, 0
	mul.d	$a7, $a7, $t0
	srli.d	$t0, $a7, 16
	bstrpick.d	$t5, $a7, 15, 0
	sub.d	$a7, $a7, $t0
	sltu	$t0, $t5, $t0
	add.w	$a7, $a7, $t0
	b	.LBB11_188
.LBB11_187:                             #   in Loop: Header=BB11_173 Depth=4
	sub.d	$a7, $s5, $t0
	.p2align	4, , 16
.LBB11_188:                             # %mul.exit58.i152
                                        #   in Loop: Header=BB11_173 Depth=4
	add.d	$a5, $t4, $a5
	xor	$t4, $a6, $a5
	ld.hu	$t0, $a3, 10
	add.d	$t4, $a7, $t4
	bstrpick.d	$t5, $t4, 15, 0
	beqz	$t5, .LBB11_171
# %bb.189:                              #   in Loop: Header=BB11_173 Depth=4
	beqz	$t0, .LBB11_191
# %bb.190:                              #   in Loop: Header=BB11_173 Depth=4
	mul.d	$t0, $t0, $t5
	srli.d	$t4, $t0, 16
	bstrpick.d	$t5, $t0, 15, 0
	sub.d	$t0, $t0, $t4
	sltu	$t4, $t5, $t4
	add.w	$t5, $t0, $t4
	b	.LBB11_172
	.p2align	4, , 16
.LBB11_191:                             #   in Loop: Header=BB11_173 Depth=4
	sub.d	$t5, $s5, $t4
	b	.LBB11_172
	.p2align	4, , 16
.LBB11_192:                             #   in Loop: Header=BB11_170 Depth=3
	bstrpick.d	$a3, $t5, 15, 0
	move	$a4, $s7
	beq	$t2, $a3, .LBB11_196
# %bb.193:                              #   in Loop: Header=BB11_170 Depth=3
	beqz	$t7, .LBB11_195
# %bb.194:                              #   in Loop: Header=BB11_170 Depth=3
	bstrpick.d	$a3, $t1, 15, 0
	mul.d	$a3, $t7, $a3
	srli.d	$a4, $a3, 16
	bstrpick.d	$t1, $a3, 15, 0
	sub.d	$a3, $a3, $a4
	sltu	$a4, $t1, $a4
	add.d	$a4, $a3, $a4
	b	.LBB11_196
.LBB11_195:                             #   in Loop: Header=BB11_170 Depth=3
	sub.d	$a4, $s5, $t1
	.p2align	4, , 16
.LBB11_196:                             # %mul.exit66.i162
                                        #   in Loop: Header=BB11_170 Depth=3
	add.d	$a3, $t6, $a2
	st.h	$a4, $a3, 0
	add.d	$a4, $s8, $a7
	st.h	$a4, $a3, 2
	add.d	$a4, $s3, $a5
	bstrpick.d	$a5, $t4, 15, 0
	bstrpick.d	$a6, $a6, 15, 0
	st.h	$a4, $a3, 4
	move	$a4, $s2
	beq	$a6, $a5, .LBB11_169
# %bb.197:                              #   in Loop: Header=BB11_170 Depth=3
	beqz	$t8, .LBB11_168
# %bb.198:                              #   in Loop: Header=BB11_170 Depth=3
	bstrpick.d	$a4, $t0, 15, 0
	mul.d	$a4, $t8, $a4
	srli.d	$a5, $a4, 16
	bstrpick.d	$a6, $a4, 15, 0
	sub.d	$a4, $a4, $a5
	sltu	$a5, $a6, $a5
	add.d	$a4, $a4, $a5
	b	.LBB11_169
.LBB11_199:
	addi.d	$a1, $sp, 264
	move	$a0, $fp
	pcaddu18i	$ra, %call36(FreeMemory)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 264
	move	$a0, $s0
	pcaddu18i	$ra, %call36(FreeMemory)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 264
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FreeMemory)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(TicksToFracSecs)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s6, 0
	fdiv.d	$fa0, $fs0, $fa0
	fst.d	$fa0, $s6, 32
	bnez	$a0, .LBB11_201
# %bb.200:
	ori	$a0, $zero, 1
	st.w	$a0, $s6, 0
.LBB11_201:
	fld.d	$fs2, $sp, 368                  # 8-byte Folded Reload
	fld.d	$fs1, $sp, 376                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 384                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 392                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 400                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 408                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 416                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 424                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 432                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 440                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 448                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 456                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 464                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 472                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 480
	ret
.Lfunc_end11:
	.size	DoIDEA, .Lfunc_end11-DoIDEA
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function DoHuffman
.LCPI12_0:
	.dword	0x4530000000100000              # double 1.9342813118337666E+25
.LCPI12_1:
	.dword	0x407f400000000000              # double 500
	.text
	.globl	DoHuffman
	.p2align	5
	.type	DoHuffman,@function
DoHuffman:                              # @DoHuffman
# %bb.0:
	addi.d	$sp, $sp, -208
	st.d	$ra, $sp, 200                   # 8-byte Folded Spill
	st.d	$fp, $sp, 192                   # 8-byte Folded Spill
	st.d	$s0, $sp, 184                   # 8-byte Folded Spill
	st.d	$s1, $sp, 176                   # 8-byte Folded Spill
	st.d	$s2, $sp, 168                   # 8-byte Folded Spill
	st.d	$s3, $sp, 160                   # 8-byte Folded Spill
	st.d	$s4, $sp, 152                   # 8-byte Folded Spill
	st.d	$s5, $sp, 144                   # 8-byte Folded Spill
	st.d	$s6, $sp, 136                   # 8-byte Folded Spill
	st.d	$s7, $sp, 128                   # 8-byte Folded Spill
	st.d	$s8, $sp, 120                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 112                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 104                  # 8-byte Folded Spill
	fst.d	$fs2, $sp, 96                   # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(global_huffstruct)
	ld.d	$fp, $a0, %got_pc_lo12(global_huffstruct)
	ld.d	$a0, $fp, 16
	addi.d	$a1, $sp, 52
	pcaddu18i	$ra, %call36(AllocateMemory)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 52
	move	$s5, $a0
	beqz	$a1, .LBB12_2
# %bb.1:
	pcalau12i	$a0, %pc_hi20(.L.str.59)
	addi.d	$a0, $a0, %pc_lo12(.L.str.59)
	pcaddu18i	$ra, %call36(ReportError)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(ErrorExit)
	jirl	$ra, $ra, 0
.LBB12_2:
	ld.d	$a0, $fp, 16
	addi.d	$a1, $sp, 52
	pcaddu18i	$ra, %call36(AllocateMemory)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 52
	move	$s0, $a0
	beqz	$a1, .LBB12_4
# %bb.3:
	pcalau12i	$a0, %pc_hi20(.L.str.59)
	addi.d	$a0, $a0, %pc_lo12(.L.str.59)
	pcaddu18i	$ra, %call36(ReportError)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 52
	move	$a0, $s5
	pcaddu18i	$ra, %call36(FreeMemory)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(ErrorExit)
	jirl	$ra, $ra, 0
.LBB12_4:
	ld.d	$a0, $fp, 16
	addi.d	$a1, $sp, 52
	pcaddu18i	$ra, %call36(AllocateMemory)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 52
	move	$s1, $a0
	beqz	$a1, .LBB12_6
# %bb.5:
	pcalau12i	$a0, %pc_hi20(.L.str.59)
	addi.d	$a0, $a0, %pc_lo12(.L.str.59)
	pcaddu18i	$ra, %call36(ReportError)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 52
	move	$a0, $s5
	pcaddu18i	$ra, %call36(FreeMemory)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 52
	move	$a0, $s0
	pcaddu18i	$ra, %call36(FreeMemory)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(ErrorExit)
	jirl	$ra, $ra, 0
.LBB12_6:
	lu12i.w	$a0, 2
	ori	$a0, $a0, 2048
	addi.d	$a1, $sp, 52
	pcaddu18i	$ra, %call36(AllocateMemory)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 52
	pcalau12i	$a2, %pc_hi20(hufftree)
	st.d	$a2, $sp, 8                     # 8-byte Folded Spill
	st.d	$a0, $a2, %pc_lo12(hufftree)
	beqz	$a1, .LBB12_8
# %bb.7:
	pcalau12i	$a0, %pc_hi20(.L.str.59)
	addi.d	$a0, $a0, %pc_lo12(.L.str.59)
	pcaddu18i	$ra, %call36(ReportError)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 52
	move	$a0, $s5
	pcaddu18i	$ra, %call36(FreeMemory)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 52
	move	$a0, $s0
	pcaddu18i	$ra, %call36(FreeMemory)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 52
	move	$a0, $s1
	pcaddu18i	$ra, %call36(FreeMemory)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(ErrorExit)
	jirl	$ra, $ra, 0
.LBB12_8:
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	ori	$a0, $zero, 13
	pcaddu18i	$ra, %call36(randnum)
	jirl	$ra, $ra, 0
	st.d	$fp, $sp, 40                    # 8-byte Folded Spill
	ld.d	$a0, $fp, 16
	move	$s6, $zero
	addi.d	$s7, $a0, -1
	ori	$s3, $zero, 2
	pcalau12i	$a0, %pc_hi20(wordcatarray)
	addi.d	$s0, $a0, %pc_lo12(wordcatarray)
	addi.d	$fp, $sp, 56
	ori	$s1, $zero, 32
	ori	$s4, $zero, 10
	st.d	$s5, $sp, 32                    # 8-byte Folded Spill
	b	.LBB12_10
	.p2align	4, , 16
.LBB12_9:                               #   in Loop: Header=BB12_10 Depth=1
	add.d	$s5, $s5, $s8
	add.d	$s6, $s8, $s6
	st.b	$s4, $s5, -1
	bgeu	$s6, $s7, .LBB12_14
.LBB12_10:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB12_12 Depth 2
	ori	$a0, $zero, 494
	pcaddu18i	$ra, %call36(abs_randwc)
	jirl	$ra, $ra, 0
	addi.d	$a0, $a0, 6
	bstrpick.d	$a0, $a0, 31, 0
	add.d	$a1, $s6, $a0
	sltu	$a1, $s7, $a1
	sub.d	$a2, $s7, $s6
	maskeqz	$a2, $a2, $a1
	masknez	$a0, $a0, $a1
	or	$s8, $a2, $a0
	bltu	$s8, $s3, .LBB12_9
# %bb.11:                               #   in Loop: Header=BB12_10 Depth=1
	move	$s4, $zero
	move	$s2, $s5
	.p2align	4, , 16
.LBB12_12:                              #   Parent Loop BB12_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ori	$a0, $zero, 50
	pcaddu18i	$ra, %call36(abs_randwc)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	slli.d	$a0, $a0, 3
	ldx.d	$s3, $s0, $a0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.d	$a2, $a0, 1
	addi.d	$a0, $sp, 56
	move	$a1, $s3
	pcaddu18i	$ra, %call36(MoveMemory)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 56
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.d	$a1, $a0, 1
	stx.b	$s1, $a0, $fp
	add.d	$a0, $a1, $s4
	slt	$a0, $s8, $a0
	sub.d	$a2, $s8, $s4
	maskeqz	$a2, $a2, $a0
	masknez	$a0, $a1, $a0
	or	$s3, $a2, $a0
	addi.d	$a1, $sp, 56
	move	$a0, $s2
	move	$a2, $s3
	pcaddu18i	$ra, %call36(MoveMemory)
	jirl	$ra, $ra, 0
	add.d	$s4, $s3, $s4
	add.d	$s2, $s2, $s3
	blt	$s4, $s8, .LBB12_12
# %bb.13:                               # %create_text_line.exit.i
                                        #   in Loop: Header=BB12_10 Depth=1
	ori	$s3, $zero, 2
	ori	$s4, $zero, 10
	b	.LBB12_9
.LBB12_14:                              # %create_text_block.exit
	ld.d	$s1, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a0, $s1, 16
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	add.d	$a0, $s3, $a0
	st.b	$zero, $a0, -1
	ld.w	$a0, $s1, 0
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 8                     # 8-byte Folded Reload
	bnez	$a0, .LBB12_18
# %bb.15:                               # %.preheader
	ori	$a4, $zero, 100
	pcalau12i	$a0, %got_pc_hi20(global_min_ticks)
	ld.d	$fp, $a0, %got_pc_lo12(global_min_ticks)
	st.d	$a4, $s1, 24
	lu12i.w	$a0, 122
	ori	$s0, $a0, 288
	.p2align	4, , 16
.LBB12_16:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $s1, 16
	ld.d	$a5, $s6, %pc_lo12(hufftree)
	move	$a0, $s3
	move	$a1, $s4
	move	$a2, $s5
	pcaddu18i	$ra, %call36(DoHuffIteration)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 0
	bltu	$a1, $a0, .LBB12_18
# %bb.17:                               #   in Loop: Header=BB12_16 Depth=1
	ld.d	$a0, $s1, 24
	addi.d	$a4, $a0, 10
	st.d	$a4, $s1, 24
	bltu	$a4, $s0, .LBB12_16
.LBB12_18:                              # %.loopexit
	move	$s2, $zero
	ld.d	$a4, $s1, 24
	pcalau12i	$a0, %pc_hi20(.LCPI12_0)
	fld.d	$fs1, $a0, %pc_lo12(.LCPI12_0)
	pcalau12i	$a0, %pc_hi20(.LCPI12_1)
	fld.d	$fs2, $a0, %pc_lo12(.LCPI12_1)
	movgr2fr.d	$fs0, $zero
	lu52i.d	$fp, $zero, 1107
	lu12i.w	$s0, 275200
	.p2align	4, , 16
.LBB12_19:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $s1, 16
	ld.d	$a5, $s6, %pc_lo12(hufftree)
	move	$a0, $s3
	move	$a1, $s4
	move	$a2, $s5
	pcaddu18i	$ra, %call36(DoHuffIteration)
	jirl	$ra, $ra, 0
	ld.d	$a4, $s1, 24
	srli.d	$a1, $a4, 32
	or	$a1, $a1, $fp
	movgr2fr.d	$fa0, $a1
	fsub.d	$fa0, $fa0, $fs1
	move	$a1, $a4
	bstrins.d	$a1, $s0, 63, 32
	movgr2fr.d	$fa1, $a1
	fadd.d	$fa0, $fa1, $fa0
	fadd.d	$fs0, $fs0, $fa0
	fcmp.clt.d	$fcc0, $fs0, $fs2
	add.d	$s2, $a0, $s2
	bcnez	$fcc0, .LBB12_19
# %bb.20:
	addi.d	$a1, $sp, 52
	move	$a0, $s3
	pcaddu18i	$ra, %call36(FreeMemory)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 52
	move	$a0, $s4
	pcaddu18i	$ra, %call36(FreeMemory)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 52
	move	$a0, $s5
	pcaddu18i	$ra, %call36(FreeMemory)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s6, %pc_lo12(hufftree)
	addi.d	$a1, $sp, 52
	pcaddu18i	$ra, %call36(FreeMemory)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(TicksToFracSecs)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s1, 0
	fdiv.d	$fa0, $fs0, $fa0
	fst.d	$fa0, $s1, 32
	bnez	$a0, .LBB12_22
# %bb.21:
	ori	$a0, $zero, 1
	st.w	$a0, $s1, 0
.LBB12_22:
	fld.d	$fs2, $sp, 96                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 104                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 112                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 192                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 200                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 208
	ret
.Lfunc_end12:
	.size	DoHuffman, .Lfunc_end12-DoHuffman
                                        # -- End function
	.p2align	5                               # -- Begin function DoHuffIteration
	.type	DoHuffIteration,@function
DoHuffIteration:                        # @DoHuffIteration
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
	fst.d	$fs0, $sp, 224                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 216                  # 8-byte Folded Spill
	move	$fp, $a5
	move	$s0, $a4
	move	$s1, $a3
	move	$s2, $a2
	move	$s3, $a1
	move	$s4, $a0
	pcaddu18i	$ra, %call36(StartStopwatch)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 0                     # 8-byte Folded Spill
	beqz	$s0, .LBB13_58
# %bb.1:                                # %.preheader154.lr.ph
	move	$t6, $s4
	move	$t5, $s2
	move	$t4, $s1
	move	$a4, $s0
	srli.d	$a0, $s1, 1
	andi	$a1, $s1, 1
	or	$a0, $a1, $a0
	movgr2fr.d	$fa0, $a0
	ffint.s.l	$fa0, $fa0
	fadd.s	$fa0, $fa0, $fa0
	slti	$a0, $s1, 0
	movgr2fr.d	$fa1, $s1
	ffint.s.l	$fa1, $fa1
	movgr2cf	$fcc0, $a0
	fsel	$fs0, $fa1, $fa0, $fcc0
	lu12i.w	$a0, 1
	ori	$s6, $a0, 1024
	add.d	$a1, $fp, $s6
	st.d	$a1, $sp, 144                   # 8-byte Folded Spill
	addi.d	$a1, $fp, 24
	st.d	$a1, $sp, 136                   # 8-byte Folded Spill
	addi.d	$a5, $fp, 84
	addi.d	$t7, $fp, 8
	addi.d	$s8, $sp, 185
	ori	$a3, $zero, 256
	lu12i.w	$a1, -2
	ori	$a1, $a1, 3072
	st.d	$a1, $sp, 112                   # 8-byte Folded Spill
	ori	$a6, $a0, 944
	ori	$a7, $a0, 964
	ori	$t0, $a0, 984
	ori	$t8, $a0, 1004
	ori	$ra, $a0, 1044
	ori	$s7, $a0, 1064
	ori	$s0, $a0, 1084
	xvrepli.b	$xr9, 0
	lu12i.w	$a0, -3
	ori	$a0, $a0, 2048
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 2052
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	lu12i.w	$a0, 7
	ori	$a0, $a0, 3328
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	movgr2fr.w	$fs1, $zero
	addi.w	$s4, $zero, -1
	ori	$s1, $zero, 20
	addi.d	$s2, $sp, 186
	ori	$s5, $zero, 1
	vldi	$vr1, -1168
	st.d	$t4, $sp, 168                   # 8-byte Folded Spill
	st.d	$t5, $sp, 160                   # 8-byte Folded Spill
	st.d	$t6, $sp, 152                   # 8-byte Folded Spill
	st.d	$a5, $sp, 128                   # 8-byte Folded Spill
	st.d	$t7, $sp, 120                   # 8-byte Folded Spill
	st.d	$a6, $sp, 104                   # 8-byte Folded Spill
	st.d	$a7, $sp, 96                    # 8-byte Folded Spill
	st.d	$t0, $sp, 88                    # 8-byte Folded Spill
	st.d	$t8, $sp, 80                    # 8-byte Folded Spill
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	xvst	$xr9, $sp, 32                   # 32-byte Folded Spill
	b	.LBB13_3
	.p2align	4, , 16
.LBB13_2:                               #   in Loop: Header=BB13_3 Depth=1
	ld.d	$a4, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 128                   # 8-byte Folded Reload
	ori	$a3, $zero, 256
	ld.d	$a6, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 96                    # 8-byte Folded Reload
	ld.d	$t0, $sp, 88                    # 8-byte Folded Reload
	beqz	$a4, .LBB13_58
.LBB13_3:                               # %vector.ph243
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB13_4 Depth 2
                                        #     Child Loop BB13_6 Depth 2
                                        #     Child Loop BB13_9 Depth 2
                                        #     Child Loop BB13_27 Depth 2
                                        #     Child Loop BB13_30 Depth 2
                                        #       Child Loop BB13_32 Depth 3
                                        #       Child Loop BB13_38 Depth 3
                                        #     Child Loop BB13_47 Depth 2
                                        #       Child Loop BB13_49 Depth 3
                                        #       Child Loop BB13_50 Depth 3
                                        #     Child Loop BB13_55 Depth 2
                                        #       Child Loop BB13_57 Depth 3
	move	$a0, $zero
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB13_4:                               # %vector.body244
                                        #   Parent Loop BB13_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ori	$a2, $a0, 1
	st.w	$zero, $a1, -20
	st.w	$zero, $a1, 0
	st.b	$a0, $a1, -24
	st.b	$a2, $a1, -4
	addi.d	$a0, $a0, 2
	addi.d	$a1, $a1, 40
	bne	$a0, $a3, .LBB13_4
# %bb.5:                                # %.preheader153
                                        #   in Loop: Header=BB13_3 Depth=1
	move	$a0, $t6
	move	$a1, $t4
	beqz	$t4, .LBB13_7
	.p2align	4, , 16
.LBB13_6:                               # %.lr.ph
                                        #   Parent Loop BB13_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.b	$a2, $a0, 0
	slli.d	$a3, $a2, 4
	alsl.d	$a2, $a2, $a3, 2
	add.d	$a2, $fp, $a2
	fld.s	$fa0, $a2, 4
	fadd.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $a2, 4
	addi.d	$a1, $a1, -1
	addi.d	$a0, $a0, 1
	bnez	$a1, .LBB13_6
.LBB13_7:                               # %vector.body.preheader
                                        #   in Loop: Header=BB13_3 Depth=1
	addi.d	$a4, $a4, -1
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	b	.LBB13_9
	.p2align	4, , 16
.LBB13_8:                               # %pred.store.continue241
                                        #   in Loop: Header=BB13_9 Depth=2
	addi.d	$a0, $a0, 160
	beqz	$a0, .LBB13_25
.LBB13_9:                               # %vector.body
                                        #   Parent Loop BB13_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$a1, $a5, $a0
	fldx.s	$ft0, $a1, $a6
	fldx.s	$fa7, $a1, $a7
	fldx.s	$fa6, $a1, $t0
	fldx.s	$fa4, $a1, $t8
	fldx.s	$fa3, $a1, $s6
	fldx.s	$fa2, $a1, $ra
	fldx.s	$fa1, $a1, $s7
	fldx.s	$fa0, $a1, $s0
	movfr2gr.s	$a2, $ft0
	xvinsgr2vr.w	$xr5, $a2, 0
	movfr2gr.s	$a2, $fa7
	xvinsgr2vr.w	$xr5, $a2, 1
	movfr2gr.s	$a2, $fa6
	xvinsgr2vr.w	$xr5, $a2, 2
	movfr2gr.s	$a2, $fa4
	xvinsgr2vr.w	$xr5, $a2, 3
	movfr2gr.s	$a2, $fa3
	xvinsgr2vr.w	$xr5, $a2, 4
	movfr2gr.s	$a2, $fa2
	xvinsgr2vr.w	$xr5, $a2, 5
	movfr2gr.s	$a2, $fa1
	xvinsgr2vr.w	$xr5, $a2, 6
	movfr2gr.s	$a2, $fa0
	xvinsgr2vr.w	$xr5, $a2, 7
	xvfcmp.cune.s	$xr5, $xr5, $xr9
	xvpickve2gr.w	$a2, $xr5, 0
	andi	$a2, $a2, 1
	bnez	$a2, .LBB13_17
# %bb.10:                               # %pred.store.continue
                                        #   in Loop: Header=BB13_9 Depth=2
	xvpickve2gr.w	$a2, $xr5, 1
	andi	$a2, $a2, 1
	bnez	$a2, .LBB13_18
.LBB13_11:                              # %pred.store.continue229
                                        #   in Loop: Header=BB13_9 Depth=2
	xvpickve2gr.w	$a2, $xr5, 2
	andi	$a2, $a2, 1
	bnez	$a2, .LBB13_19
.LBB13_12:                              # %pred.store.continue231
                                        #   in Loop: Header=BB13_9 Depth=2
	xvpickve2gr.w	$a2, $xr5, 3
	andi	$a2, $a2, 1
	bnez	$a2, .LBB13_20
.LBB13_13:                              # %pred.store.continue233
                                        #   in Loop: Header=BB13_9 Depth=2
	xvpickve2gr.w	$a2, $xr5, 4
	andi	$a2, $a2, 1
	bnez	$a2, .LBB13_21
.LBB13_14:                              # %pred.store.continue235
                                        #   in Loop: Header=BB13_9 Depth=2
	xvpickve2gr.w	$a2, $xr5, 5
	andi	$a2, $a2, 1
	bnez	$a2, .LBB13_22
.LBB13_15:                              # %pred.store.continue237
                                        #   in Loop: Header=BB13_9 Depth=2
	xvpickve2gr.w	$a2, $xr5, 6
	andi	$a2, $a2, 1
	bnez	$a2, .LBB13_23
.LBB13_16:                              # %pred.store.continue239
                                        #   in Loop: Header=BB13_9 Depth=2
	xvpickve2gr.w	$a2, $xr5, 7
	andi	$a2, $a2, 1
	beqz	$a2, .LBB13_8
	b	.LBB13_24
	.p2align	4, , 16
.LBB13_17:                              # %pred.store.if
                                        #   in Loop: Header=BB13_9 Depth=2
	fdiv.s	$ft0, $ft0, $fs0
	fstx.s	$ft0, $a1, $a6
	xvpickve2gr.w	$a2, $xr5, 1
	andi	$a2, $a2, 1
	beqz	$a2, .LBB13_11
.LBB13_18:                              # %pred.store.if228
                                        #   in Loop: Header=BB13_9 Depth=2
	fdiv.s	$fa7, $fa7, $fs0
	fstx.s	$fa7, $a1, $a7
	xvpickve2gr.w	$a2, $xr5, 2
	andi	$a2, $a2, 1
	beqz	$a2, .LBB13_12
.LBB13_19:                              # %pred.store.if230
                                        #   in Loop: Header=BB13_9 Depth=2
	fdiv.s	$fa6, $fa6, $fs0
	fstx.s	$fa6, $a1, $t0
	xvpickve2gr.w	$a2, $xr5, 3
	andi	$a2, $a2, 1
	beqz	$a2, .LBB13_13
.LBB13_20:                              # %pred.store.if232
                                        #   in Loop: Header=BB13_9 Depth=2
	fdiv.s	$fa4, $fa4, $fs0
	fstx.s	$fa4, $a1, $t8
	xvpickve2gr.w	$a2, $xr5, 4
	andi	$a2, $a2, 1
	beqz	$a2, .LBB13_14
.LBB13_21:                              # %pred.store.if234
                                        #   in Loop: Header=BB13_9 Depth=2
	fdiv.s	$fa3, $fa3, $fs0
	fstx.s	$fa3, $a1, $s6
	xvpickve2gr.w	$a2, $xr5, 5
	andi	$a2, $a2, 1
	beqz	$a2, .LBB13_15
.LBB13_22:                              # %pred.store.if236
                                        #   in Loop: Header=BB13_9 Depth=2
	fdiv.s	$fa2, $fa2, $fs0
	fstx.s	$fa2, $a1, $ra
	xvpickve2gr.w	$a2, $xr5, 6
	andi	$a2, $a2, 1
	beqz	$a2, .LBB13_16
.LBB13_23:                              # %pred.store.if238
                                        #   in Loop: Header=BB13_9 Depth=2
	fdiv.s	$fa1, $fa1, $fs0
	fstx.s	$fa1, $a1, $s7
	xvpickve2gr.w	$a2, $xr5, 7
	andi	$a2, $a2, 1
	beqz	$a2, .LBB13_8
.LBB13_24:                              # %pred.store.if240
                                        #   in Loop: Header=BB13_9 Depth=2
	fdiv.s	$fa0, $fa0, $fs0
	fstx.s	$fa0, $a1, $s0
	b	.LBB13_8
	.p2align	4, , 16
.LBB13_25:                              # %middle.block
                                        #   in Loop: Header=BB13_3 Depth=1
	st.d	$a4, $sp, 176                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	move	$a1, $zero
	move	$a2, $s6
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$t7, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a4, $sp, 8                     # 8-byte Folded Reload
	b	.LBB13_27
	.p2align	4, , 16
.LBB13_26:                              #   in Loop: Header=BB13_27 Depth=2
	addi.d	$a0, $a0, 20
	stptr.w	$a2, $a1, 10248
	beqz	$a0, .LBB13_29
.LBB13_27:                              #   Parent Loop BB13_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$a1, $fp, $a0
	fldx.s	$fa0, $a1, $a3
	fcmp.ceq.s	$fcc0, $fa0, $fs1
	move	$a2, $a4
	bcnez	$fcc0, .LBB13_26
# %bb.28:                               #   in Loop: Header=BB13_27 Depth=2
	addi.w	$a2, $zero, -1
	stptr.d	$a2, $a1, 10252
	b	.LBB13_26
	.p2align	4, , 16
.LBB13_29:                              # %.preheader151.preheader
                                        #   in Loop: Header=BB13_3 Depth=1
	ori	$a1, $zero, 256
	ori	$a0, $zero, 255
	ld.d	$t4, $sp, 168                   # 8-byte Folded Reload
	ld.d	$t5, $sp, 160                   # 8-byte Folded Reload
	ld.d	$t6, $sp, 152                   # 8-byte Folded Reload
	ld.d	$t8, $sp, 80                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	xvld	$xr9, $sp, 32                   # 32-byte Folded Reload
	.p2align	4, , 16
.LBB13_30:                              # %.preheader151
                                        #   Parent Loop BB13_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB13_32 Depth 3
                                        #       Child Loop BB13_38 Depth 3
	move	$a3, $zero
	vldi	$vr0, -1280
	move	$a4, $a1
	move	$a5, $t7
	move	$a2, $s4
	b	.LBB13_32
	.p2align	4, , 16
.LBB13_31:                              #   in Loop: Header=BB13_32 Depth=3
	addi.w	$a3, $a3, 1
	addi.d	$a4, $a4, -1
	addi.d	$a5, $a5, 20
	beqz	$a4, .LBB13_35
.LBB13_32:                              #   Parent Loop BB13_3 Depth=1
                                        #     Parent Loop BB13_30 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$a6, $a5, 0
	blt	$s4, $a6, .LBB13_31
# %bb.33:                               #   in Loop: Header=BB13_32 Depth=3
	fld.s	$fa1, $a5, -4
	fcmp.cule.s	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB13_31
# %bb.34:                               #   in Loop: Header=BB13_32 Depth=3
	fmov.s	$fa0, $fa1
	move	$a2, $a3
	b	.LBB13_31
	.p2align	4, , 16
.LBB13_35:                              #   in Loop: Header=BB13_30 Depth=2
	addi.w	$a3, $zero, -1
	beq	$a2, $a3, .LBB13_44
# %bb.36:                               # %.preheader149.preheader
                                        #   in Loop: Header=BB13_30 Depth=2
	move	$a5, $zero
	move	$a6, $zero
	bstrpick.d	$a7, $a2, 31, 0
	vldi	$vr1, -1280
	move	$t0, $t7
	move	$a4, $a3
	b	.LBB13_38
	.p2align	4, , 16
.LBB13_37:                              #   in Loop: Header=BB13_38 Depth=3
	addi.d	$a6, $a6, 1
	addi.w	$a5, $a5, 1
	addi.d	$t0, $t0, 20
	beq	$a1, $a6, .LBB13_42
.LBB13_38:                              # %.preheader149
                                        #   Parent Loop BB13_3 Depth=1
                                        #     Parent Loop BB13_30 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$t1, $t0, 0
	blt	$a3, $t1, .LBB13_37
# %bb.39:                               # %.preheader149
                                        #   in Loop: Header=BB13_38 Depth=3
	beq	$a7, $a6, .LBB13_37
# %bb.40:                               #   in Loop: Header=BB13_38 Depth=3
	fld.s	$fa2, $t0, -4
	fcmp.cule.s	$fcc0, $fa1, $fa2
	bcnez	$fcc0, .LBB13_37
# %bb.41:                               #   in Loop: Header=BB13_38 Depth=3
	fmov.s	$fa1, $fa2
	move	$a4, $a5
	b	.LBB13_37
	.p2align	4, , 16
.LBB13_42:                              #   in Loop: Header=BB13_30 Depth=2
	addi.w	$a3, $zero, -1
	beq	$a4, $a3, .LBB13_44
# %bb.43:                               #   in Loop: Header=BB13_30 Depth=2
	addi.d	$a0, $a0, 1
	mul.d	$a3, $a2, $s1
	add.d	$a3, $fp, $a3
	st.w	$a0, $a3, 8
	mul.d	$a3, $a4, $s1
	add.d	$a3, $fp, $a3
	st.w	$a0, $a3, 8
	fadd.s	$fa0, $fa0, $fa1
	mul.d	$a3, $a0, $s1
	add.d	$a3, $fp, $a3
	fst.s	$fa0, $a3, 4
	st.w	$a2, $a3, 12
	st.w	$a4, $a3, 16
	addi.w	$a2, $zero, -2
	lu32i.d	$a2, 0
	st.w	$a2, $a3, 8
	addi.d	$a1, $a1, 1
	b	.LBB13_30
	.p2align	4, , 16
.LBB13_44:                              #   in Loop: Header=BB13_3 Depth=1
	beqz	$t4, .LBB13_51
# %bb.45:                               # %.lr.ph177.preheader
                                        #   in Loop: Header=BB13_3 Depth=1
	move	$a2, $zero
	move	$a1, $zero
	vldi	$vr1, -1168
	b	.LBB13_47
	.p2align	4, , 16
.LBB13_46:                              # %._crit_edge
                                        #   in Loop: Header=BB13_47 Depth=2
	addi.d	$a2, $a2, 1
	beq	$a2, $t4, .LBB13_52
.LBB13_47:                              # %.lr.ph177
                                        #   Parent Loop BB13_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB13_49 Depth 3
                                        #       Child Loop BB13_50 Depth 3
	ldx.b	$a6, $t6, $a2
	slli.d	$a3, $a6, 4
	alsl.d	$a3, $a6, $a3, 2
	add.d	$a3, $fp, $a3
	ld.w	$a5, $a3, 8
	addi.w	$a4, $zero, -2
	beq	$a5, $a4, .LBB13_46
# %bb.48:                               # %.lr.ph168.preheader
                                        #   in Loop: Header=BB13_47 Depth=2
	move	$a3, $zero
	andi	$a6, $a6, 255
	ext.w.b	$a6, $a6
	.p2align	4, , 16
.LBB13_49:                              # %.lr.ph168
                                        #   Parent Loop BB13_3 Depth=1
                                        #     Parent Loop BB13_47 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	slli.d	$a7, $a5, 4
	alsl.d	$a7, $a5, $a7, 2
	add.d	$a7, $fp, $a7
	ld.w	$t0, $a7, 12
	xor	$t0, $t0, $a6
	move	$a6, $a5
	ld.w	$a5, $a7, 8
	sltui	$a7, $t0, 1
	xori	$a7, $a7, 49
	stx.b	$a7, $a3, $s2
	addi.d	$a3, $a3, 1
	bne	$a5, $a4, .LBB13_49
	.p2align	4, , 16
.LBB13_50:                              # %.lr.ph172
                                        #   Parent Loop BB13_3 Depth=1
                                        #     Parent Loop BB13_47 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ldx.bu	$a4, $s8, $a3
	addi.d	$a5, $a3, -1
	addi.d	$a3, $a4, -49
	bstrpick.d	$a4, $a1, 31, 3
	ldx.b	$a6, $s3, $a4
	sltui	$a3, $a3, 1
	andi	$a7, $a1, 7
	sll.d	$a7, $s5, $a7
	andn	$t0, $a6, $a7
	or	$a6, $a6, $a7
	masknez	$a7, $t0, $a3
	maskeqz	$a3, $a6, $a3
	or	$a3, $a3, $a7
	stx.b	$a3, $s3, $a4
	addi.d	$a1, $a1, 1
	move	$a3, $a5
	bnez	$a5, .LBB13_50
	b	.LBB13_46
	.p2align	4, , 16
.LBB13_51:                              #   in Loop: Header=BB13_3 Depth=1
	move	$a1, $zero
	vldi	$vr1, -1168
.LBB13_52:                              # %.preheader150
                                        #   in Loop: Header=BB13_3 Depth=1
	move	$a5, $zero
	move	$a2, $zero
	bstrpick.d	$a0, $a0, 31, 0
	slli.d	$a3, $a0, 4
	alsl.d	$a3, $a0, $a3, 2
	add.d	$a3, $fp, $a3
	addi.d	$a4, $a3, 12
	b	.LBB13_55
	.p2align	4, , 16
.LBB13_53:                              #   in Loop: Header=BB13_55 Depth=2
	move	$a6, $a5
	move	$t2, $a3
.LBB13_54:                              # %._crit_edge183
                                        #   in Loop: Header=BB13_55 Depth=2
	ld.b	$a5, $t2, 0
	stx.b	$a5, $t5, $a2
	addi.d	$a2, $a2, 1
	move	$a5, $a6
	bge	$a6, $a1, .LBB13_2
.LBB13_55:                              #   Parent Loop BB13_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB13_57 Depth 3
	ld.w	$a6, $a4, 0
	addi.w	$a7, $zero, -1
	beq	$a6, $a7, .LBB13_53
# %bb.56:                               # %.lr.ph182.preheader
                                        #   in Loop: Header=BB13_55 Depth=2
	move	$t1, $a4
	move	$t0, $a0
	move	$a6, $a5
	.p2align	4, , 16
.LBB13_57:                              # %.lr.ph182
                                        #   Parent Loop BB13_3 Depth=1
                                        #     Parent Loop BB13_55 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	bstrpick.d	$t2, $a6, 31, 3
	ldx.bu	$t2, $s3, $t2
	andi	$t3, $a5, 7
	srl.w	$t2, $t2, $t3
	andi	$t2, $t2, 1
	sltui	$t2, $t2, 1
	mul.d	$t0, $t0, $s1
	add.d	$t0, $fp, $t0
	addi.d	$t0, $t0, 16
	masknez	$t0, $t0, $t2
	maskeqz	$t1, $t1, $t2
	or	$t0, $t1, $t0
	ld.w	$t0, $t0, 0
	mul.d	$t1, $t0, $s1
	add.d	$t2, $fp, $t1
	ld.w	$t3, $t2, 12
	addi.d	$a6, $a6, 1
	addi.d	$t1, $t2, 12
	addi.d	$a5, $a5, 1
	bne	$t3, $a7, .LBB13_57
	b	.LBB13_54
.LBB13_58:                              # %._crit_edge187
	ld.d	$a0, $sp, 0                     # 8-byte Folded Reload
	fld.d	$fs1, $sp, 216                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 224                  # 8-byte Folded Reload
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
	pcaddu18i	$t8, %call36(StopStopwatch)
	jr	$t8
.Lfunc_end13:
	.size	DoHuffIteration, .Lfunc_end13-DoHuffIteration
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function DoNNET
.LCPI14_0:
	.dword	0x3feccccccccccccd              # double 0.90000000000000002
.LCPI14_1:
	.dword	0x3fb999999999999a              # double 0.10000000000000001
.LCPI14_2:
	.dword	0x4530000000100000              # double 1.9342813118337666E+25
	.text
	.globl	DoNNET
	.p2align	5
	.type	DoNNET,@function
DoNNET:                                 # @DoNNET
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
	fst.d	$fs0, $sp, 160                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 152                  # 8-byte Folded Spill
	ori	$a0, $zero, 3
	ori	$s0, $zero, 3
	pcaddu18i	$ra, %call36(randnum)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(inpath)
	ld.d	$a0, $a0, %pc_lo12(inpath)
	pcalau12i	$a1, %pc_hi20(.L.str.64)
	addi.d	$a1, $a1, %pc_lo12(.L.str.64)
	pcaddu18i	$ra, %call36(fopen)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB14_5
# %bb.1:
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.66)
	addi.d	$a1, $a0, %pc_lo12(.L.str.66)
	addi.d	$a2, $sp, 148
	addi.d	$a3, $sp, 144
	addi.d	$a4, $sp, 140
	move	$a0, $fp
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	bne	$a0, $s0, .LBB14_6
# %bb.2:
	pcalau12i	$a0, %pc_hi20(.L.str.68)
	addi.d	$a1, $a0, %pc_lo12(.L.str.68)
	pcalau12i	$a0, %pc_hi20(numpats)
	addi.d	$s0, $a0, %pc_lo12(numpats)
	move	$a0, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	ori	$a2, $zero, 1
	bne	$a0, $a2, .LBB14_7
# %bb.3:
	ld.w	$a0, $s0, 0
	ori	$a1, $zero, 11
	blt	$a0, $a1, .LBB14_8
# %bb.4:                                # %.thread79.i
	ori	$a0, $zero, 10
	st.w	$a0, $s0, 0
	b	.LBB14_9
.LBB14_5:
	pcalau12i	$a0, %pc_hi20(.L.str.65)
	addi.d	$a0, $a0, %pc_lo12(.L.str.65)
	b	.LBB14_90
.LBB14_6:
	move	$a1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.67)
	addi.d	$a0, $a0, %pc_lo12(.L.str.67)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	b	.LBB14_91
.LBB14_7:
	move	$a1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.69)
	addi.d	$a0, $a0, %pc_lo12(.L.str.69)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	b	.LBB14_91
.LBB14_8:
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB14_88
.LBB14_9:                               # %.preheader73.i.preheader
	move	$s3, $zero
	pcalau12i	$a0, %pc_hi20(.L.str.70)
	addi.d	$s1, $a0, %pc_lo12(.L.str.70)
	ori	$s5, $zero, 5
	pcalau12i	$a0, %pc_hi20(in_pats)
	addi.d	$s7, $a0, %pc_lo12(in_pats)
	lu12i.w	$a0, -209716
	ori	$a0, $a0, 3277
	lu32i.d	$a0, -209716
	lu52i.d	$a0, $a0, 1022
	xvreplgr2vr.d	$xr0, $a0
	xvst	$xr0, $sp, 64                   # 32-byte Folded Spill
	lu12i.w	$a0, -419431
	ori	$a0, $a0, 2458
	lu32i.d	$a0, -419431
	lu52i.d	$a0, $a0, 1019
	xvreplgr2vr.d	$xr0, $a0
	xvst	$xr0, $sp, 32                   # 32-byte Folded Spill
	pcalau12i	$s8, %pc_hi20(.LCPI14_0)
	pcalau12i	$a0, %pc_hi20(.LCPI14_1)
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.72)
	addi.d	$a0, $a0, %pc_lo12(.L.str.72)
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(out_pats)
	addi.d	$a0, $a0, %pc_lo12(out_pats)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
.LBB14_10:                              # %.preheader73.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB14_12 Depth 2
	ld.w	$a0, $sp, 144
	ori	$a1, $zero, 280
	mul.d	$s2, $s3, $a1
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB14_14
# %bb.11:                               # %.lr.ph.i.preheader
                                        #   in Loop: Header=BB14_10 Depth=1
	move	$s4, $zero
	add.d	$s6, $s7, $s2
	.p2align	4, , 16
.LBB14_12:                              # %.lr.ph.i
                                        #   Parent Loop BB14_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$a2, $sp, 136
	addi.d	$a3, $sp, 132
	addi.d	$a4, $sp, 128
	addi.d	$a5, $sp, 124
	addi.d	$a6, $sp, 120
	move	$a0, $fp
	move	$a1, $s1
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	bne	$a0, $s5, .LBB14_89
# %bb.13:                               #   in Loop: Header=BB14_12 Depth=2
	ld.w	$a0, $sp, 148
	ld.w	$a1, $sp, 136
	mul.w	$a0, $a0, $s4
	movgr2fr.w	$fa0, $a1
	ffint.d.w	$fa0, $fa0
	ld.w	$a1, $sp, 132
	alsl.d	$a2, $a0, $s6, 3
	slli.d	$a0, $a0, 3
	fstx.d	$fa0, $s6, $a0
	movgr2fr.w	$fa0, $a1
	ld.w	$a0, $sp, 128
	ffint.d.w	$fa0, $fa0
	fst.d	$fa0, $a2, 8
	ld.w	$a1, $sp, 124
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa0, $fa0
	fst.d	$fa0, $a2, 16
	movgr2fr.w	$fa0, $a1
	ld.w	$a0, $sp, 120
	ffint.d.w	$fa0, $fa0
	fst.d	$fa0, $a2, 24
	ld.w	$a1, $sp, 144
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa0, $fa0
	addi.w	$s4, $s4, 1
	fst.d	$fa0, $a2, 32
	blt	$s4, $a1, .LBB14_12
.LBB14_14:                              # %vector.body
                                        #   in Loop: Header=BB14_10 Depth=1
	xvldx	$xr0, $s7, $s2
	xvld	$xr3, $sp, 64                   # 32-byte Folded Reload
	xvfcmp.cle.d	$xr1, $xr3, $xr0
	xvld	$xr4, $sp, 32                   # 32-byte Folded Reload
	xvfcmp.cle.d	$xr0, $xr0, $xr4
	xvor.v	$xr2, $xr0, $xr1
	xvpickve2gr.d	$a0, $xr2, 0
	andi	$a1, $a0, 1
	xvbitsel.v	$xr0, $xr4, $xr3, $xr1
	beqz	$a1, .LBB14_16
# %bb.15:                               # %pred.store.if
                                        #   in Loop: Header=BB14_10 Depth=1
	add.d	$a1, $s7, $s2
	xvstelm.d	$xr0, $a1, 0, 0
.LBB14_16:                              # %pred.store.continue
                                        #   in Loop: Header=BB14_10 Depth=1
	vinsgr2vr.w	$vr1, $a0, 0
	xvpickve2gr.d	$a0, $xr2, 1
	vinsgr2vr.w	$vr1, $a0, 1
	xvpickve2gr.d	$a0, $xr2, 2
	vinsgr2vr.w	$vr1, $a0, 2
	xvpickve2gr.d	$a0, $xr2, 3
	vinsgr2vr.w	$vr1, $a0, 3
	vpickve2gr.w	$a0, $vr1, 1
	andi	$a0, $a0, 1
	bnez	$a0, .LBB14_62
# %bb.17:                               # %pred.store.continue23
                                        #   in Loop: Header=BB14_10 Depth=1
	vpickve2gr.w	$a0, $vr1, 2
	andi	$a0, $a0, 1
	bnez	$a0, .LBB14_63
.LBB14_18:                              # %pred.store.continue25
                                        #   in Loop: Header=BB14_10 Depth=1
	vpickve2gr.w	$a0, $vr1, 3
	andi	$a0, $a0, 1
	beqz	$a0, .LBB14_20
.LBB14_19:                              # %pred.store.if26
                                        #   in Loop: Header=BB14_10 Depth=1
	add.d	$a0, $s7, $s2
	xvstelm.d	$xr0, $a0, 24, 3
.LBB14_20:                              # %pred.store.continue27
                                        #   in Loop: Header=BB14_10 Depth=1
	add.d	$a0, $s7, $s2
	xvld	$xr0, $a0, 32
	xvfcmp.cle.d	$xr1, $xr3, $xr0
	xvfcmp.cle.d	$xr0, $xr0, $xr4
	xvor.v	$xr2, $xr0, $xr1
	xvpickve2gr.d	$a1, $xr2, 0
	andi	$a2, $a1, 1
	xvbitsel.v	$xr0, $xr4, $xr3, $xr1
	beqz	$a2, .LBB14_22
# %bb.21:                               # %pred.store.if.1
                                        #   in Loop: Header=BB14_10 Depth=1
	xvstelm.d	$xr0, $a0, 32, 0
.LBB14_22:                              # %pred.store.continue.1
                                        #   in Loop: Header=BB14_10 Depth=1
	vinsgr2vr.w	$vr1, $a1, 0
	xvpickve2gr.d	$a1, $xr2, 1
	vinsgr2vr.w	$vr1, $a1, 1
	xvpickve2gr.d	$a1, $xr2, 2
	vinsgr2vr.w	$vr1, $a1, 2
	xvpickve2gr.d	$a1, $xr2, 3
	vinsgr2vr.w	$vr1, $a1, 3
	vpickve2gr.w	$a1, $vr1, 1
	andi	$a1, $a1, 1
	bnez	$a1, .LBB14_64
# %bb.23:                               # %pred.store.continue23.1
                                        #   in Loop: Header=BB14_10 Depth=1
	vpickve2gr.w	$a1, $vr1, 2
	andi	$a1, $a1, 1
	bnez	$a1, .LBB14_65
.LBB14_24:                              # %pred.store.continue25.1
                                        #   in Loop: Header=BB14_10 Depth=1
	vpickve2gr.w	$a1, $vr1, 3
	andi	$a1, $a1, 1
	beqz	$a1, .LBB14_26
.LBB14_25:                              # %pred.store.if26.1
                                        #   in Loop: Header=BB14_10 Depth=1
	xvstelm.d	$xr0, $a0, 56, 3
.LBB14_26:                              # %pred.store.continue27.1
                                        #   in Loop: Header=BB14_10 Depth=1
	xvld	$xr0, $a0, 64
	xvfcmp.cle.d	$xr1, $xr3, $xr0
	xvfcmp.cle.d	$xr0, $xr0, $xr4
	xvor.v	$xr2, $xr0, $xr1
	xvpickve2gr.d	$a1, $xr2, 0
	andi	$a2, $a1, 1
	xvbitsel.v	$xr0, $xr4, $xr3, $xr1
	beqz	$a2, .LBB14_28
# %bb.27:                               # %pred.store.if.2
                                        #   in Loop: Header=BB14_10 Depth=1
	xvstelm.d	$xr0, $a0, 64, 0
.LBB14_28:                              # %pred.store.continue.2
                                        #   in Loop: Header=BB14_10 Depth=1
	vinsgr2vr.w	$vr1, $a1, 0
	xvpickve2gr.d	$a1, $xr2, 1
	vinsgr2vr.w	$vr1, $a1, 1
	xvpickve2gr.d	$a1, $xr2, 2
	vinsgr2vr.w	$vr1, $a1, 2
	xvpickve2gr.d	$a1, $xr2, 3
	vinsgr2vr.w	$vr1, $a1, 3
	vpickve2gr.w	$a1, $vr1, 1
	andi	$a1, $a1, 1
	bnez	$a1, .LBB14_66
# %bb.29:                               # %pred.store.continue23.2
                                        #   in Loop: Header=BB14_10 Depth=1
	vpickve2gr.w	$a1, $vr1, 2
	andi	$a1, $a1, 1
	bnez	$a1, .LBB14_67
.LBB14_30:                              # %pred.store.continue25.2
                                        #   in Loop: Header=BB14_10 Depth=1
	vpickve2gr.w	$a1, $vr1, 3
	andi	$a1, $a1, 1
	beqz	$a1, .LBB14_32
.LBB14_31:                              # %pred.store.if26.2
                                        #   in Loop: Header=BB14_10 Depth=1
	xvstelm.d	$xr0, $a0, 88, 3
.LBB14_32:                              # %pred.store.continue27.2
                                        #   in Loop: Header=BB14_10 Depth=1
	xvld	$xr0, $a0, 96
	xvfcmp.cle.d	$xr1, $xr3, $xr0
	xvfcmp.cle.d	$xr0, $xr0, $xr4
	xvor.v	$xr2, $xr0, $xr1
	xvpickve2gr.d	$a1, $xr2, 0
	andi	$a2, $a1, 1
	xvbitsel.v	$xr0, $xr4, $xr3, $xr1
	beqz	$a2, .LBB14_34
# %bb.33:                               # %pred.store.if.3
                                        #   in Loop: Header=BB14_10 Depth=1
	xvstelm.d	$xr0, $a0, 96, 0
.LBB14_34:                              # %pred.store.continue.3
                                        #   in Loop: Header=BB14_10 Depth=1
	vinsgr2vr.w	$vr1, $a1, 0
	xvpickve2gr.d	$a1, $xr2, 1
	vinsgr2vr.w	$vr1, $a1, 1
	xvpickve2gr.d	$a1, $xr2, 2
	vinsgr2vr.w	$vr1, $a1, 2
	xvpickve2gr.d	$a1, $xr2, 3
	vinsgr2vr.w	$vr1, $a1, 3
	vpickve2gr.w	$a1, $vr1, 1
	andi	$a1, $a1, 1
	bnez	$a1, .LBB14_68
# %bb.35:                               # %pred.store.continue23.3
                                        #   in Loop: Header=BB14_10 Depth=1
	vpickve2gr.w	$a1, $vr1, 2
	andi	$a1, $a1, 1
	bnez	$a1, .LBB14_69
.LBB14_36:                              # %pred.store.continue25.3
                                        #   in Loop: Header=BB14_10 Depth=1
	vpickve2gr.w	$a1, $vr1, 3
	andi	$a1, $a1, 1
	beqz	$a1, .LBB14_38
.LBB14_37:                              # %pred.store.if26.3
                                        #   in Loop: Header=BB14_10 Depth=1
	xvstelm.d	$xr0, $a0, 120, 3
.LBB14_38:                              # %pred.store.continue27.3
                                        #   in Loop: Header=BB14_10 Depth=1
	xvld	$xr0, $a0, 128
	xvfcmp.cle.d	$xr1, $xr3, $xr0
	xvfcmp.cle.d	$xr0, $xr0, $xr4
	xvor.v	$xr2, $xr0, $xr1
	xvpickve2gr.d	$a1, $xr2, 0
	andi	$a2, $a1, 1
	xvbitsel.v	$xr0, $xr4, $xr3, $xr1
	beqz	$a2, .LBB14_40
# %bb.39:                               # %pred.store.if.4
                                        #   in Loop: Header=BB14_10 Depth=1
	xvstelm.d	$xr0, $a0, 128, 0
.LBB14_40:                              # %pred.store.continue.4
                                        #   in Loop: Header=BB14_10 Depth=1
	vinsgr2vr.w	$vr1, $a1, 0
	xvpickve2gr.d	$a1, $xr2, 1
	vinsgr2vr.w	$vr1, $a1, 1
	xvpickve2gr.d	$a1, $xr2, 2
	vinsgr2vr.w	$vr1, $a1, 2
	xvpickve2gr.d	$a1, $xr2, 3
	vinsgr2vr.w	$vr1, $a1, 3
	vpickve2gr.w	$a1, $vr1, 1
	andi	$a1, $a1, 1
	bnez	$a1, .LBB14_70
# %bb.41:                               # %pred.store.continue23.4
                                        #   in Loop: Header=BB14_10 Depth=1
	vpickve2gr.w	$a1, $vr1, 2
	andi	$a1, $a1, 1
	bnez	$a1, .LBB14_71
.LBB14_42:                              # %pred.store.continue25.4
                                        #   in Loop: Header=BB14_10 Depth=1
	vpickve2gr.w	$a1, $vr1, 3
	andi	$a1, $a1, 1
	beqz	$a1, .LBB14_44
.LBB14_43:                              # %pred.store.if26.4
                                        #   in Loop: Header=BB14_10 Depth=1
	xvstelm.d	$xr0, $a0, 152, 3
.LBB14_44:                              # %pred.store.continue27.4
                                        #   in Loop: Header=BB14_10 Depth=1
	xvld	$xr0, $a0, 160
	xvfcmp.cle.d	$xr1, $xr3, $xr0
	xvfcmp.cle.d	$xr0, $xr0, $xr4
	xvor.v	$xr2, $xr0, $xr1
	xvpickve2gr.d	$a1, $xr2, 0
	andi	$a2, $a1, 1
	xvbitsel.v	$xr0, $xr4, $xr3, $xr1
	beqz	$a2, .LBB14_46
# %bb.45:                               # %pred.store.if.5
                                        #   in Loop: Header=BB14_10 Depth=1
	xvstelm.d	$xr0, $a0, 160, 0
.LBB14_46:                              # %pred.store.continue.5
                                        #   in Loop: Header=BB14_10 Depth=1
	vinsgr2vr.w	$vr1, $a1, 0
	xvpickve2gr.d	$a1, $xr2, 1
	vinsgr2vr.w	$vr1, $a1, 1
	xvpickve2gr.d	$a1, $xr2, 2
	vinsgr2vr.w	$vr1, $a1, 2
	xvpickve2gr.d	$a1, $xr2, 3
	vinsgr2vr.w	$vr1, $a1, 3
	vpickve2gr.w	$a1, $vr1, 1
	andi	$a1, $a1, 1
	bnez	$a1, .LBB14_72
# %bb.47:                               # %pred.store.continue23.5
                                        #   in Loop: Header=BB14_10 Depth=1
	vpickve2gr.w	$a1, $vr1, 2
	andi	$a1, $a1, 1
	bnez	$a1, .LBB14_73
.LBB14_48:                              # %pred.store.continue25.5
                                        #   in Loop: Header=BB14_10 Depth=1
	vpickve2gr.w	$a1, $vr1, 3
	andi	$a1, $a1, 1
	beqz	$a1, .LBB14_50
.LBB14_49:                              # %pred.store.if26.5
                                        #   in Loop: Header=BB14_10 Depth=1
	xvstelm.d	$xr0, $a0, 184, 3
.LBB14_50:                              # %pred.store.continue27.5
                                        #   in Loop: Header=BB14_10 Depth=1
	xvld	$xr0, $a0, 192
	xvfcmp.cle.d	$xr1, $xr3, $xr0
	xvfcmp.cle.d	$xr0, $xr0, $xr4
	xvor.v	$xr2, $xr0, $xr1
	xvpickve2gr.d	$a1, $xr2, 0
	andi	$a2, $a1, 1
	xvbitsel.v	$xr0, $xr4, $xr3, $xr1
	beqz	$a2, .LBB14_52
# %bb.51:                               # %pred.store.if.6
                                        #   in Loop: Header=BB14_10 Depth=1
	xvstelm.d	$xr0, $a0, 192, 0
.LBB14_52:                              # %pred.store.continue.6
                                        #   in Loop: Header=BB14_10 Depth=1
	vinsgr2vr.w	$vr1, $a1, 0
	xvpickve2gr.d	$a1, $xr2, 1
	vinsgr2vr.w	$vr1, $a1, 1
	xvpickve2gr.d	$a1, $xr2, 2
	vinsgr2vr.w	$vr1, $a1, 2
	xvpickve2gr.d	$a1, $xr2, 3
	vinsgr2vr.w	$vr1, $a1, 3
	vpickve2gr.w	$a1, $vr1, 1
	andi	$a1, $a1, 1
	bnez	$a1, .LBB14_74
# %bb.53:                               # %pred.store.continue23.6
                                        #   in Loop: Header=BB14_10 Depth=1
	vpickve2gr.w	$a1, $vr1, 2
	andi	$a1, $a1, 1
	bnez	$a1, .LBB14_75
.LBB14_54:                              # %pred.store.continue25.6
                                        #   in Loop: Header=BB14_10 Depth=1
	vpickve2gr.w	$a1, $vr1, 3
	andi	$a1, $a1, 1
	beqz	$a1, .LBB14_56
.LBB14_55:                              # %pred.store.if26.6
                                        #   in Loop: Header=BB14_10 Depth=1
	xvstelm.d	$xr0, $a0, 216, 3
.LBB14_56:                              # %pred.store.continue27.6
                                        #   in Loop: Header=BB14_10 Depth=1
	xvld	$xr0, $a0, 224
	xvfcmp.cle.d	$xr1, $xr3, $xr0
	xvfcmp.cle.d	$xr0, $xr0, $xr4
	xvor.v	$xr2, $xr0, $xr1
	xvpickve2gr.d	$a1, $xr2, 0
	andi	$a2, $a1, 1
	xvbitsel.v	$xr0, $xr4, $xr3, $xr1
	beqz	$a2, .LBB14_58
# %bb.57:                               # %pred.store.if.7
                                        #   in Loop: Header=BB14_10 Depth=1
	xvstelm.d	$xr0, $a0, 224, 0
.LBB14_58:                              # %pred.store.continue.7
                                        #   in Loop: Header=BB14_10 Depth=1
	vinsgr2vr.w	$vr1, $a1, 0
	xvpickve2gr.d	$a1, $xr2, 1
	vinsgr2vr.w	$vr1, $a1, 1
	xvpickve2gr.d	$a1, $xr2, 2
	vinsgr2vr.w	$vr1, $a1, 2
	xvpickve2gr.d	$a1, $xr2, 3
	vinsgr2vr.w	$vr1, $a1, 3
	vpickve2gr.w	$a1, $vr1, 1
	andi	$a1, $a1, 1
	bnez	$a1, .LBB14_76
# %bb.59:                               # %pred.store.continue23.7
                                        #   in Loop: Header=BB14_10 Depth=1
	vpickve2gr.w	$a1, $vr1, 2
	andi	$a1, $a1, 1
	bnez	$a1, .LBB14_77
.LBB14_60:                              # %pred.store.continue25.7
                                        #   in Loop: Header=BB14_10 Depth=1
	vpickve2gr.w	$a1, $vr1, 3
	andi	$a1, $a1, 1
	bnez	$a1, .LBB14_78
.LBB14_61:                              # %scalar.ph
                                        #   in Loop: Header=BB14_10 Depth=1
	fld.d	$fa1, $a0, 256
	fld.d	$fa0, $s8, %pc_lo12(.LCPI14_0)
	fcmp.cle.d	$fcc0, $fa0, $fa1
	bceqz	$fcc0, .LBB14_79
	b	.LBB14_80
.LBB14_62:                              # %pred.store.if22
                                        #   in Loop: Header=BB14_10 Depth=1
	add.d	$a0, $s7, $s2
	xvstelm.d	$xr0, $a0, 8, 1
	vpickve2gr.w	$a0, $vr1, 2
	andi	$a0, $a0, 1
	beqz	$a0, .LBB14_18
.LBB14_63:                              # %pred.store.if24
                                        #   in Loop: Header=BB14_10 Depth=1
	add.d	$a0, $s7, $s2
	xvstelm.d	$xr0, $a0, 16, 2
	vpickve2gr.w	$a0, $vr1, 3
	andi	$a0, $a0, 1
	bnez	$a0, .LBB14_19
	b	.LBB14_20
.LBB14_64:                              # %pred.store.if22.1
                                        #   in Loop: Header=BB14_10 Depth=1
	xvstelm.d	$xr0, $a0, 40, 1
	vpickve2gr.w	$a1, $vr1, 2
	andi	$a1, $a1, 1
	beqz	$a1, .LBB14_24
.LBB14_65:                              # %pred.store.if24.1
                                        #   in Loop: Header=BB14_10 Depth=1
	xvstelm.d	$xr0, $a0, 48, 2
	vpickve2gr.w	$a1, $vr1, 3
	andi	$a1, $a1, 1
	bnez	$a1, .LBB14_25
	b	.LBB14_26
.LBB14_66:                              # %pred.store.if22.2
                                        #   in Loop: Header=BB14_10 Depth=1
	xvstelm.d	$xr0, $a0, 72, 1
	vpickve2gr.w	$a1, $vr1, 2
	andi	$a1, $a1, 1
	beqz	$a1, .LBB14_30
.LBB14_67:                              # %pred.store.if24.2
                                        #   in Loop: Header=BB14_10 Depth=1
	xvstelm.d	$xr0, $a0, 80, 2
	vpickve2gr.w	$a1, $vr1, 3
	andi	$a1, $a1, 1
	bnez	$a1, .LBB14_31
	b	.LBB14_32
.LBB14_68:                              # %pred.store.if22.3
                                        #   in Loop: Header=BB14_10 Depth=1
	xvstelm.d	$xr0, $a0, 104, 1
	vpickve2gr.w	$a1, $vr1, 2
	andi	$a1, $a1, 1
	beqz	$a1, .LBB14_36
.LBB14_69:                              # %pred.store.if24.3
                                        #   in Loop: Header=BB14_10 Depth=1
	xvstelm.d	$xr0, $a0, 112, 2
	vpickve2gr.w	$a1, $vr1, 3
	andi	$a1, $a1, 1
	bnez	$a1, .LBB14_37
	b	.LBB14_38
.LBB14_70:                              # %pred.store.if22.4
                                        #   in Loop: Header=BB14_10 Depth=1
	xvstelm.d	$xr0, $a0, 136, 1
	vpickve2gr.w	$a1, $vr1, 2
	andi	$a1, $a1, 1
	beqz	$a1, .LBB14_42
.LBB14_71:                              # %pred.store.if24.4
                                        #   in Loop: Header=BB14_10 Depth=1
	xvstelm.d	$xr0, $a0, 144, 2
	vpickve2gr.w	$a1, $vr1, 3
	andi	$a1, $a1, 1
	bnez	$a1, .LBB14_43
	b	.LBB14_44
.LBB14_72:                              # %pred.store.if22.5
                                        #   in Loop: Header=BB14_10 Depth=1
	xvstelm.d	$xr0, $a0, 168, 1
	vpickve2gr.w	$a1, $vr1, 2
	andi	$a1, $a1, 1
	beqz	$a1, .LBB14_48
.LBB14_73:                              # %pred.store.if24.5
                                        #   in Loop: Header=BB14_10 Depth=1
	xvstelm.d	$xr0, $a0, 176, 2
	vpickve2gr.w	$a1, $vr1, 3
	andi	$a1, $a1, 1
	bnez	$a1, .LBB14_49
	b	.LBB14_50
.LBB14_74:                              # %pred.store.if22.6
                                        #   in Loop: Header=BB14_10 Depth=1
	xvstelm.d	$xr0, $a0, 200, 1
	vpickve2gr.w	$a1, $vr1, 2
	andi	$a1, $a1, 1
	beqz	$a1, .LBB14_54
.LBB14_75:                              # %pred.store.if24.6
                                        #   in Loop: Header=BB14_10 Depth=1
	xvstelm.d	$xr0, $a0, 208, 2
	vpickve2gr.w	$a1, $vr1, 3
	andi	$a1, $a1, 1
	bnez	$a1, .LBB14_55
	b	.LBB14_56
.LBB14_76:                              # %pred.store.if22.7
                                        #   in Loop: Header=BB14_10 Depth=1
	xvstelm.d	$xr0, $a0, 232, 1
	vpickve2gr.w	$a1, $vr1, 2
	andi	$a1, $a1, 1
	beqz	$a1, .LBB14_60
.LBB14_77:                              # %pred.store.if24.7
                                        #   in Loop: Header=BB14_10 Depth=1
	xvstelm.d	$xr0, $a0, 240, 2
	vpickve2gr.w	$a1, $vr1, 3
	andi	$a1, $a1, 1
	beqz	$a1, .LBB14_61
.LBB14_78:                              # %pred.store.if26.7
                                        #   in Loop: Header=BB14_10 Depth=1
	xvstelm.d	$xr0, $a0, 248, 3
	fld.d	$fa1, $a0, 256
	fld.d	$fa0, $s8, %pc_lo12(.LCPI14_0)
	fcmp.cle.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB14_80
.LBB14_79:                              #   in Loop: Header=BB14_10 Depth=1
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	fld.d	$fa0, $a1, %pc_lo12(.LCPI14_1)
	fcmp.cult.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB14_81
.LBB14_80:                              # %.sink.split.i
                                        #   in Loop: Header=BB14_10 Depth=1
	addi.d	$a1, $a0, 256
	fst.d	$fa0, $a1, 0
.LBB14_81:                              # %scalar.ph.1
                                        #   in Loop: Header=BB14_10 Depth=1
	fld.d	$fa1, $a0, 264
	fld.d	$fa0, $s8, %pc_lo12(.LCPI14_0)
	fcmp.cle.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB14_83
# %bb.82:                               #   in Loop: Header=BB14_10 Depth=1
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	fld.d	$fa0, $a1, %pc_lo12(.LCPI14_1)
	fcmp.cult.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB14_84
.LBB14_83:                              # %.sink.split.i.1
                                        #   in Loop: Header=BB14_10 Depth=1
	addi.d	$a1, $a0, 264
	fst.d	$fa0, $a1, 0
.LBB14_84:                              # %scalar.ph.2
                                        #   in Loop: Header=BB14_10 Depth=1
	fld.d	$fa1, $a0, 272
	fld.d	$fa0, $s8, %pc_lo12(.LCPI14_0)
	fcmp.cle.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB14_86
# %bb.85:                               #   in Loop: Header=BB14_10 Depth=1
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	fld.d	$fa0, $a1, %pc_lo12(.LCPI14_1)
	fcmp.cult.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB14_87
.LBB14_86:                              # %.sink.split.i.2
                                        #   in Loop: Header=BB14_10 Depth=1
	addi.d	$a0, $a0, 272
	fst.d	$fa0, $a0, 0
.LBB14_87:                              # %.loopexit28
                                        #   in Loop: Header=BB14_10 Depth=1
	addi.d	$a0, $sp, 108
	st.d	$a0, $sp, 8
	addi.d	$a2, $sp, 136
	addi.d	$a3, $sp, 132
	addi.d	$a4, $sp, 128
	addi.d	$a5, $sp, 124
	addi.d	$a6, $sp, 120
	addi.d	$a7, $sp, 116
	addi.d	$a0, $sp, 112
	st.d	$a0, $sp, 0
	move	$a0, $fp
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 136
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa0, $fa0
	slli.d	$a0, $s3, 6
	ld.w	$a1, $sp, 132
	ld.d	$a3, $sp, 16                    # 8-byte Folded Reload
	add.d	$a2, $a3, $a0
	fstx.d	$fa0, $a3, $a0
	ld.w	$a0, $sp, 128
	movgr2fr.w	$fa0, $a1
	ffint.d.w	$fa0, $fa0
	fst.d	$fa0, $a2, 8
	movgr2fr.w	$fa0, $a0
	ld.w	$a0, $sp, 124
	ffint.d.w	$fa0, $fa0
	fst.d	$fa0, $a2, 16
	ld.w	$a1, $sp, 120
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa0, $fa0
	fst.d	$fa0, $a2, 24
	movgr2fr.w	$fa0, $a1
	ld.w	$a0, $sp, 116
	ffint.d.w	$fa0, $fa0
	fst.d	$fa0, $a2, 32
	ld.w	$a1, $sp, 112
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa0, $fa0
	fst.d	$fa0, $a2, 40
	movgr2fr.w	$fa0, $a1
	ld.w	$a0, $sp, 108
	ffint.d.w	$fa0, $fa0
	fst.d	$fa0, $a2, 48
	ld.w	$a1, $s0, 0
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa0, $fa0
	addi.d	$s3, $s3, 1
	fst.d	$fa0, $a2, 56
	blt	$s3, $a1, .LBB14_10
.LBB14_88:                              # %read_data_file.exit
	move	$a0, $fp
	pcaddu18i	$ra, %call36(fclose)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(global_nnetstruct)
	ld.d	$s0, $a0, %got_pc_lo12(global_nnetstruct)
	ld.w	$a0, $s0, 0
	bnez	$a0, .LBB14_95
	b	.LBB14_92
.LBB14_89:
	pcalau12i	$a0, %pc_hi20(.L.str.71)
	addi.d	$a0, $a0, %pc_lo12(.L.str.71)
.LBB14_90:
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB14_91:
	pcaddu18i	$ra, %call36(ErrorExit)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(global_nnetstruct)
	ld.d	$s0, $a0, %got_pc_lo12(global_nnetstruct)
	ld.w	$a0, $s0, 0
	bnez	$a0, .LBB14_95
.LBB14_92:                              # %.preheader
	ori	$a0, $zero, 1
	pcalau12i	$a1, %got_pc_hi20(global_min_ticks)
	ld.d	$fp, $a1, %got_pc_lo12(global_min_ticks)
	st.d	$a0, $s0, 16
	lu12i.w	$a0, 122
	ori	$s1, $a0, 288
	.p2align	4, , 16
.LBB14_93:                              # =>This Inner Loop Header: Depth=1
	ori	$a0, $zero, 3
	pcaddu18i	$ra, %call36(randnum)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 16
	pcaddu18i	$ra, %call36(DoNNetIteration)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 0
	bltu	$a1, $a0, .LBB14_95
# %bb.94:                               #   in Loop: Header=BB14_93 Depth=1
	ld.d	$a0, $s0, 16
	addi.d	$a0, $a0, 1
	st.d	$a0, $s0, 16
	bltu	$a0, $s1, .LBB14_93
.LBB14_95:                              # %.loopexit.preheader
	move	$fp, $zero
	movgr2fr.d	$fs0, $zero
	pcalau12i	$a0, %pc_hi20(.LCPI14_2)
	fld.d	$fs1, $a0, %pc_lo12(.LCPI14_2)
	lu52i.d	$s1, $zero, 1107
	lu12i.w	$s2, 275200
	.p2align	4, , 16
.LBB14_96:                              # %.loopexit
                                        # =>This Inner Loop Header: Depth=1
	ori	$a0, $zero, 3
	pcaddu18i	$ra, %call36(randnum)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 16
	pcaddu18i	$ra, %call36(DoNNetIteration)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, 16
	srli.d	$a2, $a1, 32
	or	$a2, $a2, $s1
	movgr2fr.d	$fa0, $a2
	fsub.d	$fa0, $fa0, $fs1
	bstrins.d	$a1, $s2, 63, 32
	movgr2fr.d	$fa1, $a1
	fadd.d	$fa0, $fa1, $fa0
	fadd.d	$fs0, $fs0, $fa0
	vldi	$vr0, -984
	fcmp.clt.d	$fcc0, $fs0, $fa0
	add.d	$fp, $a0, $fp
	bcnez	$fcc0, .LBB14_96
# %bb.97:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(TicksToFracSecs)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s0, 0
	fdiv.d	$fa0, $fs0, $fa0
	fst.d	$fa0, $s0, 24
	bnez	$a0, .LBB14_99
# %bb.98:
	ori	$a0, $zero, 1
	st.w	$a0, $s0, 0
.LBB14_99:
	fld.d	$fs1, $sp, 152                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 160                  # 8-byte Folded Reload
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
.Lfunc_end14:
	.size	DoNNET, .Lfunc_end14-DoNNET
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function DoNNetIteration
.LCPI15_0:
	.dword	0x40f86a0000000000              # double 1.0E+5
.LCPI15_1:
	.dword	0x40c3880000000000              # double 1.0E+4
.LCPI15_2:
	.dword	0x3fb70a3d70a3d70a              # double 0.089999999999999996
.LCPI15_3:
	.dword	0x3fb999999999999a              # double 0.10000000000000001
	.text
	.p2align	5
	.type	DoNNetIteration,@function
DoNNetIteration:                        # @DoNNetIteration
# %bb.0:
	addi.d	$sp, $sp, -2032
	st.d	$ra, $sp, 2024                  # 8-byte Folded Spill
	st.d	$fp, $sp, 2016                  # 8-byte Folded Spill
	st.d	$s0, $sp, 2008                  # 8-byte Folded Spill
	st.d	$s1, $sp, 2000                  # 8-byte Folded Spill
	st.d	$s2, $sp, 1992                  # 8-byte Folded Spill
	st.d	$s3, $sp, 1984                  # 8-byte Folded Spill
	st.d	$s4, $sp, 1976                  # 8-byte Folded Spill
	st.d	$s5, $sp, 1968                  # 8-byte Folded Spill
	st.d	$s6, $sp, 1960                  # 8-byte Folded Spill
	st.d	$s7, $sp, 1952                  # 8-byte Folded Spill
	st.d	$s8, $sp, 1944                  # 8-byte Folded Spill
	fst.d	$fs0, $sp, 1936                 # 8-byte Folded Spill
	fst.d	$fs1, $sp, 1928                 # 8-byte Folded Spill
	fst.d	$fs2, $sp, 1920                 # 8-byte Folded Spill
	fst.d	$fs3, $sp, 1912                 # 8-byte Folded Spill
	fst.d	$fs4, $sp, 1904                 # 8-byte Folded Spill
	fst.d	$fs5, $sp, 1896                 # 8-byte Folded Spill
	fst.d	$fs6, $sp, 1888                 # 8-byte Folded Spill
	fst.d	$fs7, $sp, 1880                 # 8-byte Folded Spill
	addi.d	$sp, $sp, -976
	move	$s0, $a0
	pcaddu18i	$ra, %call36(StartStopwatch)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	beqz	$s0, .LBB15_95
# %bb.1:
	lu12i.w	$a0, 24
	ori	$s2, $a0, 1696
	pcalau12i	$a0, %pc_hi20(.LCPI15_0)
	fld.d	$fs0, $a0, %pc_lo12(.LCPI15_0)
	pcalau12i	$a0, %pc_hi20(mid_wts)
	addi.d	$s6, $a0, %pc_lo12(mid_wts)
	ori	$s4, $zero, 280
	pcalau12i	$a0, %pc_hi20(.LCPI15_1)
	fld.d	$fs1, $a0, %pc_lo12(.LCPI15_1)
	pcalau12i	$a0, %pc_hi20(out_wts)
	addi.d	$s8, $a0, %pc_lo12(out_wts)
	ori	$s3, $zero, 512
	lu12i.w	$a0, -1
	ori	$a0, $a0, 1856
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	xvrepli.b	$xr6, 0
	ori	$s7, $zero, 2464
	ori	$s1, $zero, 2496
	vrepli.b	$vr7, 0
	lu12i.w	$a0, 461373
	ori	$a0, $a0, 1802
	lu32i.d	$a0, 461373
	lu52i.d	$a0, $a0, 1019
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 48                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 40                   # 8-byte Folded Spill
	xvst	$xr6, $sp, 112                  # 32-byte Folded Spill
	vst	$vr7, $sp, 96                   # 16-byte Folded Spill
	b	.LBB15_5
	.p2align	4, , 16
.LBB15_2:                               # %._crit_edge.thread
                                        #   in Loop: Header=BB15_5 Depth=1
	st.w	$a0, $a3, %pc_lo12(numpasses)
.LBB15_3:                               # %._crit_edge.thread.i
                                        #   in Loop: Header=BB15_5 Depth=1
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	st.d	$zero, $a0, %pc_lo12(worst_error)
	movgr2fr.w	$fa0, $a2
	ffint.d.w	$fa0, $fa0
	movgr2fr.d	$fa1, $zero
	fdiv.d	$fa0, $fa1, $fa0
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	fst.d	$fa0, $a0, %pc_lo12(average_error)
	ori	$a0, $zero, 1
.LBB15_4:                               # %.loopexit
                                        #   in Loop: Header=BB15_5 Depth=1
	ld.d	$s0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ori	$s3, $zero, 512
	addi.d	$s0, $s0, -1
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	st.w	$a0, $a1, %pc_lo12(learned)
	beqz	$s0, .LBB15_95
.LBB15_5:                               # %.preheader23
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB15_6 Depth 2
                                        #     Child Loop BB15_8 Depth 2
                                        #     Child Loop BB15_10 Depth 2
                                        #     Child Loop BB15_12 Depth 2
                                        #     Child Loop BB15_14 Depth 2
                                        #     Child Loop BB15_16 Depth 2
                                        #     Child Loop BB15_18 Depth 2
                                        #     Child Loop BB15_20 Depth 2
                                        #     Child Loop BB15_22 Depth 2
                                        #     Child Loop BB15_25 Depth 2
                                        #       Child Loop BB15_26 Depth 3
                                        #       Child Loop BB15_28 Depth 3
                                        #       Child Loop BB15_74 Depth 3
                                        #       Child Loop BB15_79 Depth 3
                                        #       Child Loop BB15_82 Depth 3
                                        #     Child Loop BB15_90 Depth 2
                                        #     Child Loop BB15_93 Depth 2
	move	$fp, $zero
	.p2align	4, , 16
.LBB15_6:                               #   Parent Loop BB15_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a0, $s2
	pcaddu18i	$ra, %call36(abs_randwc)
	jirl	$ra, $ra, 0
	vldi	$vr1, -800
	bstrpick.d	$a0, $a0, 31, 0
	movgr2fr.d	$fa0, $a0
	ffint.d.l	$fa0, $fa0
	fdiv.d	$fa0, $fa0, $fs0
	fadd.d	$fa0, $fa0, $fa1
	vldi	$vr1, -928
	fmul.d	$fa0, $fa0, $fa1
	fstx.d	$fa0, $s6, $fp
	addi.d	$fp, $fp, 8
	bne	$fp, $s4, .LBB15_6
# %bb.7:                                # %.preheader18.1.i.preheader
                                        #   in Loop: Header=BB15_5 Depth=1
	move	$fp, $zero
	.p2align	4, , 16
.LBB15_8:                               # %.preheader18.1.i
                                        #   Parent Loop BB15_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a0, $s2
	pcaddu18i	$ra, %call36(abs_randwc)
	jirl	$ra, $ra, 0
	vldi	$vr1, -800
	bstrpick.d	$a0, $a0, 31, 0
	movgr2fr.d	$fa0, $a0
	ffint.d.l	$fa0, $fa0
	fdiv.d	$fa0, $fa0, $fs0
	fadd.d	$fa0, $fa0, $fa1
	vldi	$vr1, -928
	fmul.d	$fa0, $fa0, $fa1
	add.d	$a0, $s6, $fp
	addi.d	$fp, $fp, 8
	fst.d	$fa0, $a0, 280
	bne	$fp, $s4, .LBB15_8
# %bb.9:                                # %.preheader18.2.i.preheader
                                        #   in Loop: Header=BB15_5 Depth=1
	move	$fp, $zero
	.p2align	4, , 16
.LBB15_10:                              # %.preheader18.2.i
                                        #   Parent Loop BB15_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a0, $s2
	pcaddu18i	$ra, %call36(abs_randwc)
	jirl	$ra, $ra, 0
	vldi	$vr1, -800
	bstrpick.d	$a0, $a0, 31, 0
	movgr2fr.d	$fa0, $a0
	ffint.d.l	$fa0, $fa0
	fdiv.d	$fa0, $fa0, $fs0
	fadd.d	$fa0, $fa0, $fa1
	vldi	$vr1, -928
	fmul.d	$fa0, $fa0, $fa1
	add.d	$a0, $s6, $fp
	addi.d	$fp, $fp, 8
	fst.d	$fa0, $a0, 560
	bne	$fp, $s4, .LBB15_10
# %bb.11:                               # %.preheader18.3.i.preheader
                                        #   in Loop: Header=BB15_5 Depth=1
	move	$fp, $zero
	.p2align	4, , 16
.LBB15_12:                              # %.preheader18.3.i
                                        #   Parent Loop BB15_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a0, $s2
	pcaddu18i	$ra, %call36(abs_randwc)
	jirl	$ra, $ra, 0
	vldi	$vr1, -800
	bstrpick.d	$a0, $a0, 31, 0
	movgr2fr.d	$fa0, $a0
	ffint.d.l	$fa0, $fa0
	fdiv.d	$fa0, $fa0, $fs0
	fadd.d	$fa0, $fa0, $fa1
	vldi	$vr1, -928
	fmul.d	$fa0, $fa0, $fa1
	add.d	$a0, $s6, $fp
	addi.d	$fp, $fp, 8
	fst.d	$fa0, $a0, 840
	bne	$fp, $s4, .LBB15_12
# %bb.13:                               # %.preheader18.4.i.preheader
                                        #   in Loop: Header=BB15_5 Depth=1
	move	$fp, $zero
	.p2align	4, , 16
.LBB15_14:                              # %.preheader18.4.i
                                        #   Parent Loop BB15_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a0, $s2
	pcaddu18i	$ra, %call36(abs_randwc)
	jirl	$ra, $ra, 0
	vldi	$vr1, -800
	bstrpick.d	$a0, $a0, 31, 0
	movgr2fr.d	$fa0, $a0
	ffint.d.l	$fa0, $fa0
	fdiv.d	$fa0, $fa0, $fs0
	fadd.d	$fa0, $fa0, $fa1
	vldi	$vr1, -928
	fmul.d	$fa0, $fa0, $fa1
	add.d	$a0, $s6, $fp
	addi.d	$fp, $fp, 8
	fst.d	$fa0, $a0, 1120
	bne	$fp, $s4, .LBB15_14
# %bb.15:                               # %.preheader18.5.i.preheader
                                        #   in Loop: Header=BB15_5 Depth=1
	move	$fp, $zero
	.p2align	4, , 16
.LBB15_16:                              # %.preheader18.5.i
                                        #   Parent Loop BB15_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a0, $s2
	pcaddu18i	$ra, %call36(abs_randwc)
	jirl	$ra, $ra, 0
	vldi	$vr1, -800
	bstrpick.d	$a0, $a0, 31, 0
	movgr2fr.d	$fa0, $a0
	ffint.d.l	$fa0, $fa0
	fdiv.d	$fa0, $fa0, $fs0
	fadd.d	$fa0, $fa0, $fa1
	vldi	$vr1, -928
	fmul.d	$fa0, $fa0, $fa1
	add.d	$a0, $s6, $fp
	addi.d	$fp, $fp, 8
	fst.d	$fa0, $a0, 1400
	bne	$fp, $s4, .LBB15_16
# %bb.17:                               # %.preheader18.6.i.preheader
                                        #   in Loop: Header=BB15_5 Depth=1
	move	$fp, $zero
	.p2align	4, , 16
.LBB15_18:                              # %.preheader18.6.i
                                        #   Parent Loop BB15_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a0, $s2
	pcaddu18i	$ra, %call36(abs_randwc)
	jirl	$ra, $ra, 0
	vldi	$vr1, -800
	bstrpick.d	$a0, $a0, 31, 0
	movgr2fr.d	$fa0, $a0
	ffint.d.l	$fa0, $fa0
	fdiv.d	$fa0, $fa0, $fs0
	fadd.d	$fa0, $fa0, $fa1
	vldi	$vr1, -928
	fmul.d	$fa0, $fa0, $fa1
	add.d	$a0, $s6, $fp
	addi.d	$fp, $fp, 8
	fst.d	$fa0, $a0, 1680
	bne	$fp, $s4, .LBB15_18
# %bb.19:                               # %.preheader18.7.i.preheader
                                        #   in Loop: Header=BB15_5 Depth=1
	move	$fp, $zero
	.p2align	4, , 16
.LBB15_20:                              # %.preheader18.7.i
                                        #   Parent Loop BB15_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a0, $s2
	pcaddu18i	$ra, %call36(abs_randwc)
	jirl	$ra, $ra, 0
	vldi	$vr1, -800
	bstrpick.d	$a0, $a0, 31, 0
	movgr2fr.d	$fa0, $a0
	ffint.d.l	$fa0, $fa0
	fdiv.d	$fa0, $fa0, $fs0
	fadd.d	$fa0, $fa0, $fa1
	vldi	$vr1, -928
	fmul.d	$fa0, $fa0, $fa1
	add.d	$a0, $s6, $fp
	addi.d	$fp, $fp, 8
	fst.d	$fa0, $a0, 1960
	bne	$fp, $s4, .LBB15_20
# %bb.21:                               # %.preheader.i.preheader
                                        #   in Loop: Header=BB15_5 Depth=1
	st.d	$s0, $sp, 32                    # 8-byte Folded Spill
	move	$fp, $zero
	.p2align	4, , 16
.LBB15_22:                              # %.preheader.i
                                        #   Parent Loop BB15_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a0, $s2
	pcaddu18i	$ra, %call36(abs_randwc)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	movgr2fr.d	$fa0, $a0
	ffint.d.l	$fa0, $fa0
	fdiv.d	$fa0, $fa0, $fs1
	vldi	$vr1, -800
	fadd.d	$fa0, $fa0, $fa1
	vldi	$vr1, -928
	fmul.d	$fa0, $fa0, $fa1
	add.d	$s0, $s8, $fp
	fstx.d	$fa0, $s8, $fp
	move	$a0, $s2
	pcaddu18i	$ra, %call36(abs_randwc)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	movgr2fr.d	$fa0, $a0
	ffint.d.l	$fa0, $fa0
	fdiv.d	$fa0, $fa0, $fs1
	vldi	$vr1, -800
	fadd.d	$fa0, $fa0, $fa1
	vldi	$vr1, -928
	fmul.d	$fa0, $fa0, $fa1
	fst.d	$fa0, $s0, 8
	move	$a0, $s2
	pcaddu18i	$ra, %call36(abs_randwc)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	movgr2fr.d	$fa0, $a0
	ffint.d.l	$fa0, $fa0
	fdiv.d	$fa0, $fa0, $fs1
	vldi	$vr1, -800
	fadd.d	$fa0, $fa0, $fa1
	vldi	$vr1, -928
	fmul.d	$fa0, $fa0, $fa1
	fst.d	$fa0, $s0, 16
	move	$a0, $s2
	pcaddu18i	$ra, %call36(abs_randwc)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	movgr2fr.d	$fa0, $a0
	ffint.d.l	$fa0, $fa0
	fdiv.d	$fa0, $fa0, $fs1
	vldi	$vr1, -800
	fadd.d	$fa0, $fa0, $fa1
	vldi	$vr1, -928
	fmul.d	$fa0, $fa0, $fa1
	fst.d	$fa0, $s0, 24
	move	$a0, $s2
	pcaddu18i	$ra, %call36(abs_randwc)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	movgr2fr.d	$fa0, $a0
	ffint.d.l	$fa0, $fa0
	fdiv.d	$fa0, $fa0, $fs1
	vldi	$vr1, -800
	fadd.d	$fa0, $fa0, $fa1
	vldi	$vr1, -928
	fmul.d	$fa0, $fa0, $fa1
	fst.d	$fa0, $s0, 32
	move	$a0, $s2
	pcaddu18i	$ra, %call36(abs_randwc)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	movgr2fr.d	$fa0, $a0
	ffint.d.l	$fa0, $fa0
	fdiv.d	$fa0, $fa0, $fs1
	vldi	$vr1, -800
	fadd.d	$fa0, $fa0, $fa1
	vldi	$vr1, -928
	fmul.d	$fa0, $fa0, $fa1
	fst.d	$fa0, $s0, 40
	move	$a0, $s2
	pcaddu18i	$ra, %call36(abs_randwc)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	movgr2fr.d	$fa0, $a0
	ffint.d.l	$fa0, $fa0
	fdiv.d	$fa0, $fa0, $fs1
	vldi	$vr1, -800
	fadd.d	$fa0, $fa0, $fa1
	vldi	$vr1, -928
	fmul.d	$fa0, $fa0, $fa1
	fst.d	$fa0, $s0, 48
	move	$a0, $s2
	pcaddu18i	$ra, %call36(abs_randwc)
	jirl	$ra, $ra, 0
	vldi	$vr1, -800
	bstrpick.d	$a0, $a0, 31, 0
	movgr2fr.d	$fa0, $a0
	ffint.d.l	$fa0, $fa0
	fdiv.d	$fa0, $fa0, $fs1
	fadd.d	$fa0, $fa0, $fa1
	vldi	$vr1, -928
	fmul.d	$fa0, $fa0, $fa1
	addi.d	$fp, $fp, 64
	fst.d	$fa0, $s0, 56
	bne	$fp, $s3, .LBB15_22
# %bb.23:                               # %randomize_wts.exit
                                        #   in Loop: Header=BB15_5 Depth=1
	pcalau12i	$a0, %pc_hi20(mid_wt_change)
	addi.d	$s2, $a0, %pc_lo12(mid_wt_change)
	ori	$a2, $zero, 2240
	move	$a0, $s2
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(mid_wt_cum_change)
	addi.d	$s3, $a0, %pc_lo12(mid_wt_cum_change)
	ori	$a2, $zero, 2240
	move	$a0, $s3
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(out_wt_change)
	addi.d	$a0, $a0, %pc_lo12(out_wt_change)
	ori	$a2, $zero, 512
	st.d	$a0, $sp, 1944                  # 8-byte Folded Spill
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(out_wt_cum_change)
	addi.d	$s5, $a0, %pc_lo12(out_wt_cum_change)
	ori	$a2, $zero, 512
	move	$a0, $s5
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(iteration_count)
	ori	$a0, $zero, 1
	st.d	$a1, $sp, 152                   # 8-byte Folded Spill
	st.w	$a0, $a1, %pc_lo12(iteration_count)
	pcalau12i	$a1, %pc_hi20(learned)
	st.d	$a1, $sp, 72                    # 8-byte Folded Spill
	st.w	$zero, $a1, %pc_lo12(learned)
	pcalau12i	$a1, %pc_hi20(numpats)
	st.d	$a1, $sp, 144                   # 8-byte Folded Spill
	ld.w	$a2, $a1, %pc_lo12(numpats)
	pcalau12i	$a3, %pc_hi20(numpasses)
	st.w	$zero, $a3, %pc_lo12(numpasses)
	pcalau12i	$a1, %pc_hi20(worst_error)
	st.d	$a1, $sp, 160                   # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(average_error)
	st.d	$a1, $sp, 64                    # 8-byte Folded Spill
	blt	$a2, $a0, .LBB15_2
# %bb.24:                               # %.lr.ph.preheader
                                        #   in Loop: Header=BB15_5 Depth=1
	st.d	$a3, $sp, 56                    # 8-byte Folded Spill
	move	$ra, $zero
	ori	$a5, $zero, 2240
	xvld	$xr6, $sp, 112                  # 32-byte Folded Reload
	ori	$a7, $zero, 2272
	ori	$t0, $zero, 2304
	ori	$t1, $zero, 2336
	ori	$t2, $zero, 2368
	ori	$t3, $zero, 2400
	ori	$t4, $zero, 2432
	vld	$vr7, $sp, 96                   # 16-byte Folded Reload
	ori	$t5, $zero, 2512
	.p2align	4, , 16
.LBB15_25:                              # %.lr.ph
                                        #   Parent Loop BB15_5 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB15_26 Depth 3
                                        #       Child Loop BB15_28 Depth 3
                                        #       Child Loop BB15_74 Depth 3
                                        #       Child Loop BB15_79 Depth 3
                                        #       Child Loop BB15_82 Depth 3
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	st.d	$zero, $a0, %pc_lo12(worst_error)
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB15_26:                              # %.preheader23.i
                                        #   Parent Loop BB15_5 Depth=1
                                        #     Parent Loop BB15_25 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$a1, $s3, $a0
	xvldx	$xr0, $a1, $a5
	xvldx	$xr1, $a1, $a7
	xvldx	$xr2, $a1, $t0
	add.d	$a2, $s2, $a0
	xvstx	$xr0, $a2, $a5
	xvstx	$xr1, $a2, $a7
	xvstx	$xr2, $a2, $t0
	xvldx	$xr0, $a1, $t1
	xvldx	$xr1, $a1, $t2
	xvldx	$xr2, $a1, $t3
	xvldx	$xr3, $a1, $t4
	xvstx	$xr0, $a2, $t1
	xvstx	$xr1, $a2, $t2
	xvstx	$xr2, $a2, $t3
	xvstx	$xr3, $a2, $t4
	xvldx	$xr0, $a1, $s7
	xvstx	$xr6, $a1, $a5
	xvstx	$xr6, $a1, $a7
	xvstx	$xr6, $a1, $t0
	xvstx	$xr0, $a2, $s7
	vldx	$vr0, $a1, $s1
	xvstx	$xr6, $a1, $t1
	xvstx	$xr6, $a1, $t2
	xvstx	$xr6, $a1, $t3
	vstx	$vr0, $a2, $s1
	fldx.d	$fa0, $a1, $t5
	xvstx	$xr6, $a1, $t4
	xvstx	$xr6, $a1, $s7
	vstx	$vr7, $a1, $s1
	fstx.d	$fa0, $a2, $t5
	addi.d	$a0, $a0, 280
	stptr.d	$zero, $a1, 2512
	bnez	$a0, .LBB15_26
# %bb.27:                               # %.preheader.i10.preheader
                                        #   in Loop: Header=BB15_25 Depth=2
	xvld	$xr0, $s5, 0
	move	$fp, $zero
	xvld	$xr1, $s5, 32
	ld.d	$a0, $sp, 1944                  # 8-byte Folded Reload
	xvst	$xr0, $a0, 0
	xvst	$xr6, $s5, 0
	xvld	$xr0, $s5, 64
	xvst	$xr1, $a0, 32
	xvst	$xr6, $s5, 32
	xvld	$xr1, $s5, 96
	xvst	$xr0, $a0, 64
	xvst	$xr6, $s5, 64
	xvld	$xr0, $s5, 128
	xvst	$xr1, $a0, 96
	xvst	$xr6, $s5, 96
	xvld	$xr1, $s5, 160
	xvst	$xr0, $a0, 128
	xvst	$xr6, $s5, 128
	xvld	$xr0, $s5, 192
	xvst	$xr1, $a0, 160
	xvst	$xr6, $s5, 160
	xvld	$xr1, $s5, 224
	xvst	$xr0, $a0, 192
	xvst	$xr6, $s5, 192
	xvld	$xr0, $s5, 256
	xvst	$xr1, $a0, 224
	xvst	$xr6, $s5, 224
	xvld	$xr1, $s5, 288
	xvst	$xr0, $a0, 256
	xvst	$xr6, $s5, 256
	xvld	$xr0, $s5, 320
	xvst	$xr1, $a0, 288
	xvst	$xr6, $s5, 288
	xvld	$xr1, $s5, 352
	xvst	$xr0, $a0, 320
	xvld	$xr0, $s5, 384
	xvst	$xr6, $s5, 320
	xvst	$xr1, $a0, 352
	xvst	$xr6, $s5, 352
	xvst	$xr0, $a0, 384
	xvld	$xr0, $s5, 416
	xvst	$xr6, $s5, 384
	xvld	$xr1, $s5, 448
	xvld	$xr2, $s5, 480
	xvst	$xr0, $a0, 416
	xvst	$xr6, $s5, 416
	xvst	$xr1, $a0, 448
	xvst	$xr2, $a0, 480
	st.d	$ra, $sp, 1936                  # 8-byte Folded Spill
	mul.d	$a1, $ra, $s4
	pcalau12i	$a0, %pc_hi20(in_pats)
	addi.d	$a0, $a0, %pc_lo12(in_pats)
	add.d	$s4, $a0, $a1
	fld.d	$fa0, $s4, 136
	ori	$a2, $zero, 2816
	add.d	$a2, $sp, $a2
	fst.d	$fa0, $a2, 0                    # 8-byte Folded Spill
	fld.d	$fa0, $s4, 144
	ori	$a2, $zero, 2784
	add.d	$a2, $sp, $a2
	fst.d	$fa0, $a2, 0                    # 8-byte Folded Spill
	fld.d	$fa0, $s4, 152
	ori	$a2, $zero, 2752
	add.d	$a2, $sp, $a2
	fst.d	$fa0, $a2, 0                    # 8-byte Folded Spill
	st.d	$a1, $sp, 1904                  # 8-byte Folded Spill
	st.d	$a0, $sp, 1872                  # 8-byte Folded Spill
	fldx.d	$fa0, $a0, $a1
	ori	$a0, $zero, 2720
	add.d	$a0, $sp, $a0
	fst.d	$fa0, $a0, 0                    # 8-byte Folded Spill
	fld.d	$fa0, $s4, 8
	ori	$a0, $zero, 2688
	add.d	$a0, $sp, $a0
	fst.d	$fa0, $a0, 0                    # 8-byte Folded Spill
	fld.d	$fa0, $s4, 16
	ori	$a0, $zero, 2656
	add.d	$a0, $sp, $a0
	fst.d	$fa0, $a0, 0                    # 8-byte Folded Spill
	fld.d	$fa0, $s4, 24
	ori	$a0, $zero, 2624
	add.d	$a0, $sp, $a0
	fst.d	$fa0, $a0, 0                    # 8-byte Folded Spill
	fld.d	$fa0, $s4, 32
	ori	$a0, $zero, 2592
	add.d	$a0, $sp, $a0
	fst.d	$fa0, $a0, 0                    # 8-byte Folded Spill
	fld.d	$fa0, $s4, 40
	ori	$a0, $zero, 2560
	add.d	$a0, $sp, $a0
	fst.d	$fa0, $a0, 0                    # 8-byte Folded Spill
	fld.d	$fa0, $s4, 48
	ori	$a0, $zero, 2528
	add.d	$a0, $sp, $a0
	fst.d	$fa0, $a0, 0                    # 8-byte Folded Spill
	fld.d	$fa0, $s4, 56
	ori	$a0, $zero, 2496
	add.d	$a0, $sp, $a0
	fst.d	$fa0, $a0, 0                    # 8-byte Folded Spill
	fld.d	$fa0, $s4, 64
	ori	$a0, $zero, 2464
	add.d	$a0, $sp, $a0
	fst.d	$fa0, $a0, 0                    # 8-byte Folded Spill
	fld.d	$fa0, $s4, 72
	ori	$a0, $zero, 2432
	add.d	$a0, $sp, $a0
	fst.d	$fa0, $a0, 0                    # 8-byte Folded Spill
	fld.d	$fa0, $s4, 80
	ori	$a0, $zero, 2400
	add.d	$a0, $sp, $a0
	fst.d	$fa0, $a0, 0                    # 8-byte Folded Spill
	fld.d	$fa0, $s4, 88
	ori	$a0, $zero, 2368
	add.d	$a0, $sp, $a0
	fst.d	$fa0, $a0, 0                    # 8-byte Folded Spill
	fld.d	$fa0, $s4, 96
	ori	$a0, $zero, 2336
	add.d	$a0, $sp, $a0
	fst.d	$fa0, $a0, 0                    # 8-byte Folded Spill
	fld.d	$fa0, $s4, 104
	ori	$a0, $zero, 2304
	add.d	$a0, $sp, $a0
	fst.d	$fa0, $a0, 0                    # 8-byte Folded Spill
	fld.d	$fa0, $s4, 112
	ori	$a0, $zero, 2272
	add.d	$a0, $sp, $a0
	fst.d	$fa0, $a0, 0                    # 8-byte Folded Spill
	fld.d	$fa0, $s4, 120
	ori	$a0, $zero, 2240
	add.d	$a0, $sp, $a0
	fst.d	$fa0, $a0, 0                    # 8-byte Folded Spill
	fld.d	$fa0, $s4, 128
	ori	$a0, $zero, 2208
	add.d	$a0, $sp, $a0
	fst.d	$fa0, $a0, 0                    # 8-byte Folded Spill
	fld.d	$fa0, $s4, 160
	ori	$a0, $zero, 2176
	add.d	$a0, $sp, $a0
	fst.d	$fa0, $a0, 0                    # 8-byte Folded Spill
	fld.d	$fa0, $s4, 168
	ori	$a0, $zero, 2144
	add.d	$a0, $sp, $a0
	fst.d	$fa0, $a0, 0                    # 8-byte Folded Spill
	fld.d	$fa0, $s4, 176
	ori	$a0, $zero, 2112
	add.d	$a0, $sp, $a0
	fst.d	$fa0, $a0, 0                    # 8-byte Folded Spill
	fld.d	$fa0, $s4, 184
	ori	$a0, $zero, 2080
	add.d	$a0, $sp, $a0
	fst.d	$fa0, $a0, 0                    # 8-byte Folded Spill
	fld.d	$fa0, $s4, 192
	ori	$a0, $zero, 2048
	add.d	$a0, $sp, $a0
	fst.d	$fa0, $a0, 0                    # 8-byte Folded Spill
	fld.d	$fa0, $s4, 200
	fst.d	$fa0, $sp, 2016                 # 8-byte Folded Spill
	fld.d	$fa0, $s4, 208
	fst.d	$fa0, $sp, 1984                 # 8-byte Folded Spill
	fld.d	$fa0, $s4, 216
	fst.d	$fa0, $sp, 1952                 # 8-byte Folded Spill
	fld.d	$fs0, $s4, 224
	fld.d	$fs1, $s4, 232
	fld.d	$fs2, $s4, 240
	fld.d	$fs3, $s4, 248
	fld.d	$fs4, $s4, 256
	fld.d	$fs5, $s4, 264
	fld.d	$fs7, $s4, 272
	xvst	$xr6, $s5, 448
	xvst	$xr6, $s5, 480
	addi.d	$s0, $s6, 136
	ori	$s7, $zero, 64
	.p2align	4, , 16
.LBB15_28:                              # %.preheader.i.i
                                        #   Parent Loop BB15_5 Depth=1
                                        #     Parent Loop BB15_25 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fld.d	$fa0, $s0, -136
	fld.d	$fa1, $s0, -128
	fld.d	$fa2, $s0, -120
	movgr2fr.d	$fs6, $zero
	ori	$a0, $zero, 2720
	add.d	$a0, $sp, $a0
	fld.d	$fa3, $a0, 0                    # 8-byte Folded Reload
	fmadd.d	$fa0, $fa0, $fa3, $fs6
	ori	$a0, $zero, 2688
	add.d	$a0, $sp, $a0
	fld.d	$fa3, $a0, 0                    # 8-byte Folded Reload
	fmadd.d	$fa0, $fa1, $fa3, $fa0
	ori	$a0, $zero, 2656
	add.d	$a0, $sp, $a0
	fld.d	$fa1, $a0, 0                    # 8-byte Folded Reload
	fmadd.d	$fa0, $fa2, $fa1, $fa0
	fld.d	$fa1, $s0, -112
	fld.d	$fa2, $s0, -104
	fld.d	$fa3, $s0, -96
	fld.d	$fa4, $s0, -88
	ori	$a0, $zero, 2624
	add.d	$a0, $sp, $a0
	fld.d	$fa5, $a0, 0                    # 8-byte Folded Reload
	fmadd.d	$fa0, $fa1, $fa5, $fa0
	ori	$a0, $zero, 2592
	add.d	$a0, $sp, $a0
	fld.d	$fa1, $a0, 0                    # 8-byte Folded Reload
	fmadd.d	$fa0, $fa2, $fa1, $fa0
	ori	$a0, $zero, 2560
	add.d	$a0, $sp, $a0
	fld.d	$fa1, $a0, 0                    # 8-byte Folded Reload
	fmadd.d	$fa0, $fa3, $fa1, $fa0
	ori	$a0, $zero, 2528
	add.d	$a0, $sp, $a0
	fld.d	$fa1, $a0, 0                    # 8-byte Folded Reload
	fmadd.d	$fa0, $fa4, $fa1, $fa0
	fld.d	$fa1, $s0, -80
	fld.d	$fa2, $s0, -72
	fld.d	$fa3, $s0, -64
	fld.d	$fa4, $s0, -56
	ori	$a0, $zero, 2496
	add.d	$a0, $sp, $a0
	fld.d	$fa5, $a0, 0                    # 8-byte Folded Reload
	fmadd.d	$fa0, $fa1, $fa5, $fa0
	ori	$a0, $zero, 2464
	add.d	$a0, $sp, $a0
	fld.d	$fa1, $a0, 0                    # 8-byte Folded Reload
	fmadd.d	$fa0, $fa2, $fa1, $fa0
	ori	$a0, $zero, 2432
	add.d	$a0, $sp, $a0
	fld.d	$fa1, $a0, 0                    # 8-byte Folded Reload
	fmadd.d	$fa0, $fa3, $fa1, $fa0
	ori	$a0, $zero, 2400
	add.d	$a0, $sp, $a0
	fld.d	$fa1, $a0, 0                    # 8-byte Folded Reload
	fmadd.d	$fa0, $fa4, $fa1, $fa0
	fld.d	$fa1, $s0, -48
	fld.d	$fa2, $s0, -40
	fld.d	$fa3, $s0, -32
	fld.d	$fa4, $s0, -24
	ori	$a0, $zero, 2368
	add.d	$a0, $sp, $a0
	fld.d	$fa5, $a0, 0                    # 8-byte Folded Reload
	fmadd.d	$fa0, $fa1, $fa5, $fa0
	ori	$a0, $zero, 2336
	add.d	$a0, $sp, $a0
	fld.d	$fa1, $a0, 0                    # 8-byte Folded Reload
	fmadd.d	$fa0, $fa2, $fa1, $fa0
	ori	$a0, $zero, 2304
	add.d	$a0, $sp, $a0
	fld.d	$fa1, $a0, 0                    # 8-byte Folded Reload
	fmadd.d	$fa0, $fa3, $fa1, $fa0
	ori	$a0, $zero, 2272
	add.d	$a0, $sp, $a0
	fld.d	$fa1, $a0, 0                    # 8-byte Folded Reload
	fmadd.d	$fa0, $fa4, $fa1, $fa0
	fld.d	$fa1, $s0, -16
	fld.d	$fa2, $s0, -8
	fld.d	$fa3, $s0, 0
	fld.d	$fa4, $s0, 8
	ori	$a0, $zero, 2240
	add.d	$a0, $sp, $a0
	fld.d	$fa5, $a0, 0                    # 8-byte Folded Reload
	fmadd.d	$fa0, $fa1, $fa5, $fa0
	ori	$a0, $zero, 2208
	add.d	$a0, $sp, $a0
	fld.d	$fa1, $a0, 0                    # 8-byte Folded Reload
	fmadd.d	$fa0, $fa2, $fa1, $fa0
	ori	$a0, $zero, 2816
	add.d	$a0, $sp, $a0
	fld.d	$fa1, $a0, 0                    # 8-byte Folded Reload
	fmadd.d	$fa0, $fa3, $fa1, $fa0
	ori	$a0, $zero, 2784
	add.d	$a0, $sp, $a0
	fld.d	$fa1, $a0, 0                    # 8-byte Folded Reload
	fmadd.d	$fa0, $fa4, $fa1, $fa0
	fld.d	$fa1, $s0, 16
	fld.d	$fa2, $s0, 24
	fld.d	$fa3, $s0, 32
	fld.d	$fa4, $s0, 40
	ori	$a0, $zero, 2752
	add.d	$a0, $sp, $a0
	fld.d	$fa5, $a0, 0                    # 8-byte Folded Reload
	fmadd.d	$fa0, $fa1, $fa5, $fa0
	ori	$a0, $zero, 2176
	add.d	$a0, $sp, $a0
	fld.d	$fa1, $a0, 0                    # 8-byte Folded Reload
	fmadd.d	$fa0, $fa2, $fa1, $fa0
	ori	$a0, $zero, 2144
	add.d	$a0, $sp, $a0
	fld.d	$fa1, $a0, 0                    # 8-byte Folded Reload
	fmadd.d	$fa0, $fa3, $fa1, $fa0
	ori	$a0, $zero, 2112
	add.d	$a0, $sp, $a0
	fld.d	$fa1, $a0, 0                    # 8-byte Folded Reload
	fmadd.d	$fa0, $fa4, $fa1, $fa0
	fld.d	$fa1, $s0, 48
	fld.d	$fa2, $s0, 56
	fld.d	$fa3, $s0, 64
	fld.d	$fa4, $s0, 72
	ori	$a0, $zero, 2080
	add.d	$a0, $sp, $a0
	fld.d	$fa5, $a0, 0                    # 8-byte Folded Reload
	fmadd.d	$fa0, $fa1, $fa5, $fa0
	ori	$a0, $zero, 2048
	add.d	$a0, $sp, $a0
	fld.d	$fa1, $a0, 0                    # 8-byte Folded Reload
	fmadd.d	$fa0, $fa2, $fa1, $fa0
	fld.d	$fa1, $sp, 2016                 # 8-byte Folded Reload
	fmadd.d	$fa0, $fa3, $fa1, $fa0
	fld.d	$fa1, $sp, 1984                 # 8-byte Folded Reload
	fmadd.d	$fa0, $fa4, $fa1, $fa0
	fld.d	$fa1, $s0, 80
	fld.d	$fa2, $s0, 88
	fld.d	$fa3, $s0, 96
	fld.d	$fa4, $s0, 104
	fld.d	$fa5, $sp, 1952                 # 8-byte Folded Reload
	fmadd.d	$fa0, $fa1, $fa5, $fa0
	fmadd.d	$fa0, $fa2, $fs0, $fa0
	fmadd.d	$fa0, $fa3, $fs1, $fa0
	fmadd.d	$fa0, $fa4, $fs2, $fa0
	fld.d	$fa1, $s0, 112
	fld.d	$fa2, $s0, 120
	fld.d	$fa3, $s0, 128
	fld.d	$fa4, $s0, 136
	fmadd.d	$fa0, $fa1, $fs3, $fa0
	fmadd.d	$fa0, $fa2, $fs4, $fa0
	fmadd.d	$fa0, $fa3, $fs5, $fa0
	fnmadd.d	$fa0, $fa4, $fs7, $fa0
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	vldi	$vr1, -912
	fadd.d	$fa0, $fa0, $fa1
	frecip.d	$fa0, $fa0
	pcalau12i	$a0, %pc_hi20(mid_out)
	addi.d	$a0, $a0, %pc_lo12(mid_out)
	fstx.d	$fa0, $a0, $fp
	addi.d	$fp, $fp, 8
	addi.d	$s0, $s0, 280
	bne	$fp, $s7, .LBB15_28
# %bb.29:                               # %do_forward_pass.exit
                                        #   in Loop: Header=BB15_25 Depth=2
	xvld	$xr2, $a0, 0
	xvld	$xr1, $a0, 32
	fld.d	$fa0, $s8, 0
	xvpickve2gr.d	$a0, $xr2, 0
	movgr2fr.d	$fs1, $a0
	fld.d	$fa3, $s8, 8
	ori	$a0, $zero, 2080
	add.d	$a0, $sp, $a0
	fst.d	$fa0, $a0, 0                    # 8-byte Folded Spill
	fmadd.d	$fa0, $fa0, $fs1, $fs6
	xvpickve2gr.d	$a0, $xr2, 1
	movgr2fr.d	$fs0, $a0
	ori	$a0, $zero, 2176
	add.d	$a0, $sp, $a0
	fst.d	$fa3, $a0, 0                    # 8-byte Folded Spill
	fmadd.d	$fa0, $fa3, $fs0, $fa0
	ori	$a0, $zero, 2784
	add.d	$a0, $sp, $a0
	fst.d	$fs0, $a0, 0                    # 8-byte Folded Spill
	fld.d	$fa4, $s8, 16
	xvpickve2gr.d	$a0, $xr2, 2
	movgr2fr.d	$fs3, $a0
	fld.d	$fa3, $s8, 24
	ori	$a0, $zero, 2208
	add.d	$a0, $sp, $a0
	fst.d	$fa4, $a0, 0                    # 8-byte Folded Spill
	fmadd.d	$fa0, $fa4, $fs3, $fa0
	ori	$a0, $zero, 2272
	add.d	$a0, $sp, $a0
	xvst	$xr2, $a0, 0                    # 32-byte Folded Spill
	xvpickve2gr.d	$a0, $xr2, 3
	movgr2fr.d	$fs7, $a0
	ori	$a0, $zero, 2336
	add.d	$a0, $sp, $a0
	fst.d	$fa3, $a0, 0                    # 8-byte Folded Spill
	fmadd.d	$fa0, $fa3, $fs7, $fa0
	fld.d	$fa3, $s8, 32
	xvpickve2gr.d	$a0, $xr1, 0
	movgr2fr.d	$fs5, $a0
	fld.d	$fa2, $s8, 40
	ori	$a0, $zero, 2400
	add.d	$a0, $sp, $a0
	fst.d	$fa3, $a0, 0                    # 8-byte Folded Spill
	fmadd.d	$fa0, $fa3, $fs5, $fa0
	xvpickve2gr.d	$a0, $xr1, 1
	movgr2fr.d	$fa3, $a0
	ori	$a0, $zero, 2752
	add.d	$a0, $sp, $a0
	fst.d	$fa3, $a0, 0                    # 8-byte Folded Spill
	ori	$a0, $zero, 2432
	add.d	$a0, $sp, $a0
	fst.d	$fa2, $a0, 0                    # 8-byte Folded Spill
	fmadd.d	$fa0, $fa2, $fa3, $fa0
	fld.d	$fa3, $s8, 48
	xvpickve2gr.d	$a0, $xr1, 2
	movgr2fr.d	$fs4, $a0
	fld.d	$fa2, $s8, 56
	ori	$a0, $zero, 2464
	add.d	$a0, $sp, $a0
	fst.d	$fa3, $a0, 0                    # 8-byte Folded Spill
	fmadd.d	$fa0, $fa3, $fs4, $fa0
	ori	$a0, $zero, 2816
	add.d	$a0, $sp, $a0
	fst.d	$fs4, $a0, 0                    # 8-byte Folded Spill
	ori	$a0, $zero, 2304
	add.d	$a0, $sp, $a0
	xvst	$xr1, $a0, 0                    # 32-byte Folded Spill
	xvpickve2gr.d	$a0, $xr1, 3
	movgr2fr.d	$fa1, $a0
	ori	$a0, $zero, 2624
	add.d	$a0, $sp, $a0
	fst.d	$fa1, $a0, 0                    # 8-byte Folded Spill
	ori	$a0, $zero, 2496
	add.d	$a0, $sp, $a0
	fst.d	$fa2, $a0, 0                    # 8-byte Folded Spill
	fnmadd.d	$fa0, $fa2, $fa1, $fa0
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2560
	add.d	$a0, $sp, $a0
	fst.d	$fa0, $a0, 0                    # 8-byte Folded Spill
	fld.d	$fa0, $s8, 64
	fld.d	$fa3, $s8, 72
	fld.d	$fa2, $s8, 80
	fld.d	$fa1, $s8, 88
	fst.d	$fa0, $sp, 1704                 # 8-byte Folded Spill
	fmadd.d	$fa0, $fa0, $fs1, $fs6
	fst.d	$fa3, $sp, 1744                 # 8-byte Folded Spill
	fmadd.d	$fa0, $fa3, $fs0, $fa0
	fst.d	$fa2, $sp, 1840                 # 8-byte Folded Spill
	fmadd.d	$fa0, $fa2, $fs3, $fa0
	ori	$a0, $zero, 2688
	add.d	$a0, $sp, $a0
	fst.d	$fs3, $a0, 0                    # 8-byte Folded Spill
	fst.d	$fa1, $sp, 1984                 # 8-byte Folded Spill
	fmadd.d	$fa0, $fa1, $fs7, $fa0
	fmov.d	$fs0, $fs7
	fld.d	$fa4, $s8, 96
	fld.d	$fa3, $s8, 104
	fld.d	$fa2, $s8, 112
	fld.d	$fa1, $s8, 120
	ori	$a0, $zero, 2048
	add.d	$a0, $sp, $a0
	fst.d	$fa4, $a0, 0                    # 8-byte Folded Spill
	fmadd.d	$fa0, $fa4, $fs5, $fa0
	ori	$a0, $zero, 2144
	add.d	$a0, $sp, $a0
	fst.d	$fa3, $a0, 0                    # 8-byte Folded Spill
	ori	$a0, $zero, 2752
	add.d	$a0, $sp, $a0
	fld.d	$fs7, $a0, 0                    # 8-byte Folded Reload
	fmadd.d	$fa0, $fa3, $fs7, $fa0
	ori	$a0, $zero, 2240
	add.d	$a0, $sp, $a0
	fst.d	$fa2, $a0, 0                    # 8-byte Folded Spill
	fmadd.d	$fa0, $fa2, $fs4, $fa0
	ori	$a0, $zero, 2368
	add.d	$a0, $sp, $a0
	fst.d	$fa1, $a0, 0                    # 8-byte Folded Spill
	ori	$a0, $zero, 2624
	add.d	$a0, $sp, $a0
	fld.d	$fs4, $a0, 0                    # 8-byte Folded Reload
	fnmadd.d	$fa0, $fa1, $fs4, $fa0
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2528
	add.d	$a0, $sp, $a0
	fst.d	$fa0, $a0, 0                    # 8-byte Folded Spill
	fld.d	$fa0, $s8, 128
	fld.d	$fa3, $s8, 136
	fld.d	$fa2, $s8, 144
	fld.d	$fa1, $s8, 152
	fst.d	$fa0, $sp, 1440                 # 8-byte Folded Spill
	fmadd.d	$fa0, $fa0, $fs1, $fs6
	ori	$a0, $zero, 2656
	add.d	$a0, $sp, $a0
	fst.d	$fs1, $a0, 0                    # 8-byte Folded Spill
	fst.d	$fa3, $sp, 1536                 # 8-byte Folded Spill
	ori	$a0, $zero, 2784
	add.d	$a0, $sp, $a0
	fld.d	$fs2, $a0, 0                    # 8-byte Folded Reload
	fmadd.d	$fa0, $fa3, $fs2, $fa0
	fst.d	$fa2, $sp, 1600                 # 8-byte Folded Spill
	fmadd.d	$fa0, $fa2, $fs3, $fa0
	fst.d	$fa1, $sp, 1664                 # 8-byte Folded Spill
	fmadd.d	$fa0, $fa1, $fs0, $fa0
	fld.d	$fa4, $s8, 160
	fld.d	$fa3, $s8, 168
	fld.d	$fa2, $s8, 176
	fld.d	$fa1, $s8, 184
	fst.d	$fa4, $sp, 1776                 # 8-byte Folded Spill
	fmadd.d	$fa0, $fa4, $fs5, $fa0
	ori	$a0, $zero, 2720
	add.d	$a0, $sp, $a0
	fst.d	$fs5, $a0, 0                    # 8-byte Folded Spill
	fst.d	$fa3, $sp, 1952                 # 8-byte Folded Spill
	fmadd.d	$fa0, $fa3, $fs7, $fa0
	fst.d	$fa2, $sp, 2016                 # 8-byte Folded Spill
	ori	$a0, $zero, 2816
	add.d	$a0, $sp, $a0
	fld.d	$fs3, $a0, 0                    # 8-byte Folded Reload
	fmadd.d	$fa0, $fa2, $fs3, $fa0
	ori	$a0, $zero, 2112
	add.d	$a0, $sp, $a0
	fst.d	$fa1, $a0, 0                    # 8-byte Folded Spill
	fnmadd.d	$fa0, $fa1, $fs4, $fa0
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fst.d	$fa0, $sp, 1472                 # 8-byte Folded Spill
	fld.d	$fa0, $s8, 192
	fld.d	$fa3, $s8, 200
	fld.d	$fa2, $s8, 208
	fld.d	$fa1, $s8, 216
	fst.d	$fa0, $sp, 1248                 # 8-byte Folded Spill
	fmadd.d	$fa0, $fa0, $fs1, $fs6
	fst.d	$fa3, $sp, 1344                 # 8-byte Folded Spill
	fmadd.d	$fa0, $fa3, $fs2, $fa0
	fst.d	$fa2, $sp, 1408                 # 8-byte Folded Spill
	ori	$a0, $zero, 2688
	add.d	$a0, $sp, $a0
	fld.d	$fs1, $a0, 0                    # 8-byte Folded Reload
	fmadd.d	$fa0, $fa2, $fs1, $fa0
	fst.d	$fa1, $sp, 1504                 # 8-byte Folded Spill
	fmadd.d	$fa0, $fa1, $fs0, $fa0
	fld.d	$fa4, $s8, 224
	fld.d	$fa3, $s8, 232
	fld.d	$fa2, $s8, 240
	fld.d	$fa1, $s8, 248
	fst.d	$fa4, $sp, 1568                 # 8-byte Folded Spill
	fmadd.d	$fa0, $fa4, $fs5, $fa0
	fst.d	$fa3, $sp, 1632                 # 8-byte Folded Spill
	fmadd.d	$fa0, $fa3, $fs7, $fa0
	fst.d	$fa2, $sp, 1712                 # 8-byte Folded Spill
	fmadd.d	$fa0, $fa2, $fs3, $fa0
	fst.d	$fa1, $sp, 1808                 # 8-byte Folded Spill
	fnmadd.d	$fa0, $fa1, $fs4, $fa0
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2560
	add.d	$a0, $sp, $a0
	fld.d	$fa1, $a0, 0                    # 8-byte Folded Reload
	movfr2gr.d	$a0, $fa1
	xvinsgr2vr.d	$xr1, $a0, 0
	ori	$a0, $zero, 2528
	add.d	$a0, $sp, $a0
	fld.d	$fa2, $a0, 0                    # 8-byte Folded Reload
	movfr2gr.d	$a0, $fa2
	xvinsgr2vr.d	$xr1, $a0, 1
	fld.d	$fa2, $sp, 1472                 # 8-byte Folded Reload
	movfr2gr.d	$a0, $fa2
	xvinsgr2vr.d	$xr1, $a0, 2
	movfr2gr.d	$a0, $fa0
	xvinsgr2vr.d	$xr1, $a0, 3
	lu52i.d	$a0, $zero, 1023
	xvreplgr2vr.d	$xr0, $a0
	ori	$a0, $zero, 2560
	add.d	$a0, $sp, $a0
	xvst	$xr0, $a0, 0                    # 32-byte Folded Spill
	xvfadd.d	$xr0, $xr1, $xr0
	xvfrecip.d	$xr0, $xr0
	ori	$a0, $zero, 2528
	add.d	$a0, $sp, $a0
	xvst	$xr0, $a0, 0                    # 32-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(out_out)
	addi.d	$fp, $a0, %pc_lo12(out_out)
	xvst	$xr0, $fp, 0
	fld.d	$fa0, $s8, 256
	fld.d	$fa3, $s8, 264
	fld.d	$fa2, $s8, 272
	fld.d	$fa1, $s8, 280
	fst.d	$fa0, $sp, 912                  # 8-byte Folded Spill
	ori	$a0, $zero, 2656
	add.d	$a0, $sp, $a0
	fld.d	$fs2, $a0, 0                    # 8-byte Folded Reload
	fmadd.d	$fa0, $fa0, $fs2, $fs6
	fst.d	$fa3, $sp, 1144                 # 8-byte Folded Spill
	ori	$a0, $zero, 2784
	add.d	$a0, $sp, $a0
	fld.d	$fs5, $a0, 0                    # 8-byte Folded Reload
	fmadd.d	$fa0, $fa3, $fs5, $fa0
	fst.d	$fa2, $sp, 1072                 # 8-byte Folded Spill
	fmadd.d	$fa0, $fa2, $fs1, $fa0
	fmov.d	$fs7, $fs1
	fst.d	$fa1, $sp, 1152                 # 8-byte Folded Spill
	fmadd.d	$fa0, $fa1, $fs0, $fa0
	fmov.d	$fs3, $fs0
	ori	$a0, $zero, 2592
	add.d	$a0, $sp, $a0
	fst.d	$fs0, $a0, 0                    # 8-byte Folded Spill
	fld.d	$fa4, $s8, 288
	fld.d	$fa3, $s8, 296
	fld.d	$fa2, $s8, 304
	fld.d	$fa1, $s8, 312
	fst.d	$fa4, $sp, 1216                 # 8-byte Folded Spill
	ori	$a0, $zero, 2720
	add.d	$a0, $sp, $a0
	fld.d	$fs1, $a0, 0                    # 8-byte Folded Reload
	fmadd.d	$fa0, $fa4, $fs1, $fa0
	fst.d	$fa3, $sp, 1312                 # 8-byte Folded Spill
	ori	$a0, $zero, 2752
	add.d	$a0, $sp, $a0
	fld.d	$fs0, $a0, 0                    # 8-byte Folded Reload
	fmadd.d	$fa0, $fa3, $fs0, $fa0
	fst.d	$fa2, $sp, 1376                 # 8-byte Folded Spill
	ori	$a0, $zero, 2816
	add.d	$a0, $sp, $a0
	fld.d	$fa3, $a0, 0                    # 8-byte Folded Reload
	fmadd.d	$fa0, $fa2, $fa3, $fa0
	fst.d	$fa1, $sp, 1472                 # 8-byte Folded Spill
	fnmadd.d	$fa0, $fa1, $fs4, $fa0
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fst.d	$fa0, $sp, 448                  # 8-byte Folded Spill
	fld.d	$fa0, $s8, 320
	fld.d	$fa3, $s8, 328
	fld.d	$fa2, $s8, 336
	fld.d	$fa1, $s8, 344
	fst.d	$fa0, $sp, 720                  # 8-byte Folded Spill
	fmadd.d	$fa0, $fa0, $fs2, $fs6
	fst.d	$fa3, $sp, 784                  # 8-byte Folded Spill
	fmov.d	$fs2, $fs5
	fmadd.d	$fa0, $fa3, $fs5, $fa0
	fst.d	$fa2, $sp, 848                  # 8-byte Folded Spill
	fmadd.d	$fa0, $fa2, $fs7, $fa0
	fst.d	$fa1, $sp, 944                  # 8-byte Folded Spill
	fmadd.d	$fa0, $fa1, $fs3, $fa0
	fld.d	$fa4, $s8, 352
	fld.d	$fa3, $s8, 360
	fld.d	$fa2, $s8, 368
	fld.d	$fa1, $s8, 376
	fst.d	$fa4, $sp, 1008                 # 8-byte Folded Spill
	fmadd.d	$fa0, $fa4, $fs1, $fa0
	fst.d	$fa3, $sp, 1104                 # 8-byte Folded Spill
	fmadd.d	$fa0, $fa3, $fs0, $fa0
	fmov.d	$fs7, $fs0
	fst.d	$fa2, $sp, 1184                 # 8-byte Folded Spill
	ori	$a0, $zero, 2816
	add.d	$a0, $sp, $a0
	fld.d	$fs3, $a0, 0                    # 8-byte Folded Reload
	fmadd.d	$fa0, $fa2, $fs3, $fa0
	fst.d	$fa1, $sp, 1280                 # 8-byte Folded Spill
	fnmadd.d	$fa0, $fa1, $fs4, $fa0
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fst.d	$fa0, $sp, 416                  # 8-byte Folded Spill
	fld.d	$fa0, $s8, 384
	fld.d	$fa3, $s8, 392
	fld.d	$fa2, $s8, 400
	fld.d	$fa1, $s8, 408
	fst.d	$fa0, $sp, 616                  # 8-byte Folded Spill
	ori	$a0, $zero, 2656
	add.d	$a0, $sp, $a0
	fld.d	$fs5, $a0, 0                    # 8-byte Folded Reload
	fmadd.d	$fa0, $fa0, $fs5, $fs6
	fst.d	$fa3, $sp, 624                  # 8-byte Folded Spill
	fmadd.d	$fa0, $fa3, $fs2, $fa0
	fst.d	$fa2, $sp, 688                  # 8-byte Folded Spill
	ori	$a0, $zero, 2688
	add.d	$a0, $sp, $a0
	fld.d	$fs1, $a0, 0                    # 8-byte Folded Reload
	fmadd.d	$fa0, $fa2, $fs1, $fa0
	fst.d	$fa1, $sp, 752                  # 8-byte Folded Spill
	ori	$a0, $zero, 2592
	add.d	$a0, $sp, $a0
	fld.d	$fs0, $a0, 0                    # 8-byte Folded Reload
	fmadd.d	$fa0, $fa1, $fs0, $fa0
	fld.d	$fa4, $s8, 416
	fld.d	$fa3, $s8, 424
	fld.d	$fa2, $s8, 432
	fld.d	$fa1, $s8, 440
	fst.d	$fa4, $sp, 816                  # 8-byte Folded Spill
	ori	$a0, $zero, 2720
	add.d	$a0, $sp, $a0
	fld.d	$fs2, $a0, 0                    # 8-byte Folded Reload
	fmadd.d	$fa0, $fa4, $fs2, $fa0
	fst.d	$fa3, $sp, 880                  # 8-byte Folded Spill
	fmadd.d	$fa0, $fa3, $fs7, $fa0
	fst.d	$fa2, $sp, 976                  # 8-byte Folded Spill
	fmadd.d	$fa0, $fa2, $fs3, $fa0
	fst.d	$fa1, $sp, 1040                 # 8-byte Folded Spill
	fnmadd.d	$fa0, $fa1, $fs4, $fa0
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	fst.d	$fa0, $sp, 384                  # 8-byte Folded Spill
	fld.d	$fa0, $s8, 448
	fld.d	$fa3, $s8, 456
	fld.d	$fa2, $s8, 464
	fld.d	$fa1, $s8, 472
	fst.d	$fa0, $sp, 480                  # 8-byte Folded Spill
	fmadd.d	$fa0, $fa0, $fs5, $fs6
	ori	$a0, $zero, 2784
	add.d	$a0, $sp, $a0
	fld.d	$fa4, $a0, 0                    # 8-byte Folded Reload
	fst.d	$fa3, $sp, 512                  # 8-byte Folded Spill
	fmadd.d	$fa0, $fa3, $fa4, $fa0
	fst.d	$fa2, $sp, 544                  # 8-byte Folded Spill
	fmadd.d	$fa0, $fa2, $fs1, $fa0
	fst.d	$fa1, $sp, 576                  # 8-byte Folded Spill
	fmadd.d	$fa0, $fa1, $fs0, $fa0
	fld.d	$fa2, $s8, 480
	fld.d	$fs5, $s8, 488
	fld.d	$fa4, $s8, 496
	fld.d	$fs1, $s8, 504
	fmov.d	$fa3, $fs2
	fmov.d	$fs2, $fa4
	fst.d	$fa2, $sp, 656                  # 8-byte Folded Spill
	fmadd.d	$fa0, $fa2, $fa3, $fa0
	fmadd.d	$fa0, $fs5, $fs7, $fa0
	fmadd.d	$fa0, $fa4, $fs3, $fa0
	fnmadd.d	$fa0, $fs1, $fs4, $fa0
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2528
	add.d	$a0, $sp, $a0
	xvld	$xr9, $a0, 0                    # 32-byte Folded Reload
	fld.d	$fa1, $sp, 448                  # 8-byte Folded Reload
	movfr2gr.d	$a0, $fa1
	xvinsgr2vr.d	$xr1, $a0, 0
	fld.d	$fa2, $sp, 416                  # 8-byte Folded Reload
	movfr2gr.d	$a0, $fa2
	xvinsgr2vr.d	$xr1, $a0, 1
	fld.d	$fa2, $sp, 384                  # 8-byte Folded Reload
	movfr2gr.d	$a0, $fa2
	xvinsgr2vr.d	$xr1, $a0, 2
	movfr2gr.d	$a0, $fa0
	xvinsgr2vr.d	$xr1, $a0, 3
	ori	$a0, $zero, 2560
	add.d	$a0, $sp, $a0
	xvld	$xr0, $a0, 0                    # 32-byte Folded Reload
	xvfadd.d	$xr0, $xr1, $xr0
	xvfrecip.d	$xr5, $xr0
	ld.d	$ra, $sp, 1936                  # 8-byte Folded Reload
	slli.d	$a1, $ra, 6
	pcalau12i	$a0, %pc_hi20(out_pats)
	addi.d	$a2, $a0, %pc_lo12(out_pats)
	fldx.d	$fa0, $a2, $a1
	xvst	$xr5, $fp, 32
	xvpickve2gr.d	$a0, $xr9, 0
	movgr2fr.d	$fa1, $a0
	fsub.d	$fa1, $fa0, $fa1
	pcalau12i	$a0, %pc_hi20(out_error)
	addi.d	$a0, $a0, %pc_lo12(out_error)
	fcmp.cule.d	$fcc0, $fs6, $fa1
	fst.d	$fa1, $a0, 0
	bcnez	$fcc0, .LBB15_31
# %bb.30:                               #   in Loop: Header=BB15_25 Depth=2
	movgr2fr.d	$fa0, $zero
	fsub.d	$fa3, $fa0, $fa1
	fneg.d	$fa0, $fa1
	ori	$a5, $zero, 2240
	ori	$a6, $zero, 1
	ori	$a7, $zero, 2272
	ori	$t0, $zero, 2304
	ori	$t1, $zero, 2336
	ori	$t2, $zero, 2368
	ori	$t3, $zero, 2400
	ori	$t4, $zero, 2432
	ori	$t5, $zero, 2512
	ori	$s7, $zero, 2464
	b	.LBB15_35
	.p2align	4, , 16
.LBB15_31:                              #   in Loop: Header=BB15_25 Depth=2
	fcmp.cule.d	$fcc0, $fa1, $fs6
	fadd.d	$fa3, $fa1, $fs6
	ori	$a5, $zero, 2240
	ori	$a7, $zero, 2272
	ori	$t0, $zero, 2304
	ori	$t1, $zero, 2336
	ori	$t2, $zero, 2368
	ori	$t3, $zero, 2400
	ori	$t4, $zero, 2432
	ori	$t5, $zero, 2512
	ori	$s7, $zero, 2464
	bcnez	$fcc0, .LBB15_33
# %bb.32:                               #   in Loop: Header=BB15_25 Depth=2
	fmov.d	$fa0, $fa1
	b	.LBB15_34
	.p2align	4, , 16
.LBB15_33:                              #   in Loop: Header=BB15_25 Depth=2
	fmov.d	$fa0, $fs6
.LBB15_34:                              #   in Loop: Header=BB15_25 Depth=2
	ori	$a6, $zero, 1
.LBB15_35:                              #   in Loop: Header=BB15_25 Depth=2
	add.d	$a1, $a2, $a1
	fld.d	$fa2, $a1, 8
	xvpickve2gr.d	$a2, $xr9, 1
	movgr2fr.d	$fa4, $a2
	fsub.d	$fa2, $fa2, $fa4
	fcmp.clt.d	$fcc0, $fa2, $fs6
	fst.d	$fa2, $a0, 8
	bceqz	$fcc0, .LBB15_37
# %bb.36:                               #   in Loop: Header=BB15_25 Depth=2
	fneg.d	$fa4, $fa2
	fcmp.cule.d	$fcc0, $fa4, $fa0
	fsub.d	$fa7, $fa3, $fa2
	bcnez	$fcc0, .LBB15_39
	b	.LBB15_40
	.p2align	4, , 16
.LBB15_37:                              #   in Loop: Header=BB15_25 Depth=2
	fcmp.cule.d	$fcc0, $fa2, $fa0
	fadd.d	$fa7, $fa3, $fa2
	bcnez	$fcc0, .LBB15_39
# %bb.38:                               #   in Loop: Header=BB15_25 Depth=2
	fmov.d	$fa4, $fa2
	b	.LBB15_40
	.p2align	4, , 16
.LBB15_39:                              #   in Loop: Header=BB15_25 Depth=2
	fmov.d	$fa4, $fa0
.LBB15_40:                              #   in Loop: Header=BB15_25 Depth=2
	fld.d	$fa0, $a1, 16
	xvpickve2gr.d	$a2, $xr9, 2
	movgr2fr.d	$fa3, $a2
	fsub.d	$fa3, $fa0, $fa3
	movgr2fr.d	$fs0, $zero
	fcmp.clt.d	$fcc0, $fa3, $fs0
	fst.d	$fa3, $a0, 16
	bceqz	$fcc0, .LBB15_42
# %bb.41:                               #   in Loop: Header=BB15_25 Depth=2
	fneg.d	$fa6, $fa3
	fcmp.cule.d	$fcc0, $fa6, $fa4
	fsub.d	$ft0, $fa7, $fa3
	vldi	$vr0, -912
	bcnez	$fcc0, .LBB15_44
	b	.LBB15_45
	.p2align	4, , 16
.LBB15_42:                              #   in Loop: Header=BB15_25 Depth=2
	fcmp.cule.d	$fcc0, $fa3, $fa4
	fadd.d	$ft0, $fa7, $fa3
	vldi	$vr0, -912
	bcnez	$fcc0, .LBB15_44
# %bb.43:                               #   in Loop: Header=BB15_25 Depth=2
	fmov.d	$fa6, $fa3
	b	.LBB15_45
	.p2align	4, , 16
.LBB15_44:                              #   in Loop: Header=BB15_25 Depth=2
	fmov.d	$fa6, $fa4
.LBB15_45:                              #   in Loop: Header=BB15_25 Depth=2
	fld.d	$fa4, $a1, 24
	xvpickve2gr.d	$a2, $xr9, 3
	movgr2fr.d	$fa7, $a2
	fsub.d	$fa4, $fa4, $fa7
	fcmp.clt.d	$fcc0, $fa4, $fs0
	fst.d	$fa4, $a0, 24
	bceqz	$fcc0, .LBB15_47
# %bb.46:                               #   in Loop: Header=BB15_25 Depth=2
	fneg.d	$fa7, $fa4
	fcmp.cule.d	$fcc0, $fa7, $fa6
	fsub.d	$ft1, $ft0, $fa4
	bcnez	$fcc0, .LBB15_49
	b	.LBB15_50
	.p2align	4, , 16
.LBB15_47:                              #   in Loop: Header=BB15_25 Depth=2
	fcmp.cule.d	$fcc0, $fa4, $fa6
	fadd.d	$ft1, $ft0, $fa4
	bcnez	$fcc0, .LBB15_49
# %bb.48:                               #   in Loop: Header=BB15_25 Depth=2
	fmov.d	$fa7, $fa4
	b	.LBB15_50
	.p2align	4, , 16
.LBB15_49:                              #   in Loop: Header=BB15_25 Depth=2
	fmov.d	$fa7, $fa6
.LBB15_50:                              #   in Loop: Header=BB15_25 Depth=2
	fld.d	$fa6, $a1, 32
	xvpickve2gr.d	$a2, $xr5, 0
	movgr2fr.d	$ft0, $a2
	fsub.d	$fa6, $fa6, $ft0
	fcmp.clt.d	$fcc0, $fa6, $fs0
	fst.d	$fa6, $a0, 32
	bceqz	$fcc0, .LBB15_52
# %bb.51:                               #   in Loop: Header=BB15_25 Depth=2
	fneg.d	$ft0, $fa6
	fcmp.cule.d	$fcc0, $ft0, $fa7
	fsub.d	$ft2, $ft1, $fa6
	bcnez	$fcc0, .LBB15_54
	b	.LBB15_55
	.p2align	4, , 16
.LBB15_52:                              #   in Loop: Header=BB15_25 Depth=2
	fcmp.cule.d	$fcc0, $fa6, $fa7
	fadd.d	$ft2, $ft1, $fa6
	bcnez	$fcc0, .LBB15_54
# %bb.53:                               #   in Loop: Header=BB15_25 Depth=2
	fmov.d	$ft0, $fa6
	b	.LBB15_55
	.p2align	4, , 16
.LBB15_54:                              #   in Loop: Header=BB15_25 Depth=2
	fmov.d	$ft0, $fa7
.LBB15_55:                              #   in Loop: Header=BB15_25 Depth=2
	fld.d	$fa7, $a1, 40
	xvpickve2gr.d	$a2, $xr5, 1
	movgr2fr.d	$ft1, $a2
	fsub.d	$fa7, $fa7, $ft1
	fcmp.clt.d	$fcc0, $fa7, $fs0
	fst.d	$fa7, $a0, 40
	bceqz	$fcc0, .LBB15_57
# %bb.56:                               #   in Loop: Header=BB15_25 Depth=2
	fneg.d	$ft1, $fa7
	fcmp.cule.d	$fcc0, $ft1, $ft0
	fsub.d	$ft3, $ft2, $fa7
	bcnez	$fcc0, .LBB15_59
	b	.LBB15_60
	.p2align	4, , 16
.LBB15_57:                              #   in Loop: Header=BB15_25 Depth=2
	fcmp.cule.d	$fcc0, $fa7, $ft0
	fadd.d	$ft3, $ft2, $fa7
	bcnez	$fcc0, .LBB15_59
# %bb.58:                               #   in Loop: Header=BB15_25 Depth=2
	fmov.d	$ft1, $fa7
	b	.LBB15_60
	.p2align	4, , 16
.LBB15_59:                              #   in Loop: Header=BB15_25 Depth=2
	fmov.d	$ft1, $ft0
.LBB15_60:                              #   in Loop: Header=BB15_25 Depth=2
	fld.d	$ft0, $a1, 48
	xvpickve2gr.d	$a2, $xr5, 2
	movgr2fr.d	$ft2, $a2
	fsub.d	$ft0, $ft0, $ft2
	fcmp.clt.d	$fcc0, $ft0, $fs0
	fst.d	$ft0, $a0, 48
	bceqz	$fcc0, .LBB15_62
# %bb.61:                               #   in Loop: Header=BB15_25 Depth=2
	fneg.d	$ft2, $ft0
	fcmp.cule.d	$fcc0, $ft2, $ft1
	fsub.d	$ft3, $ft3, $ft0
	bcnez	$fcc0, .LBB15_64
	b	.LBB15_65
	.p2align	4, , 16
.LBB15_62:                              #   in Loop: Header=BB15_25 Depth=2
	fcmp.cule.d	$fcc0, $ft0, $ft1
	fadd.d	$ft3, $ft3, $ft0
	bcnez	$fcc0, .LBB15_64
# %bb.63:                               #   in Loop: Header=BB15_25 Depth=2
	fmov.d	$ft2, $ft0
	b	.LBB15_65
	.p2align	4, , 16
.LBB15_64:                              #   in Loop: Header=BB15_25 Depth=2
	fmov.d	$ft2, $ft1
.LBB15_65:                              #   in Loop: Header=BB15_25 Depth=2
	fld.d	$ft1, $a1, 56
	xvpickve2gr.d	$a1, $xr5, 3
	movgr2fr.d	$fa5, $a1
	fsub.d	$fa5, $ft1, $fa5
	fcmp.clt.d	$fcc0, $fa5, $fs0
	fst.d	$fa5, $a0, 56
	bceqz	$fcc0, .LBB15_68
# %bb.66:                               #   in Loop: Header=BB15_25 Depth=2
	fneg.d	$ft1, $fa5
	fcmp.cule.d	$fcc0, $ft1, $ft2
	fsub.d	$ft3, $ft3, $fa5
	ori	$a1, $zero, 2560
	add.d	$a1, $sp, $a1
	fst.d	$ft3, $a1, 0                    # 8-byte Folded Spill
	bcnez	$fcc0, .LBB15_70
# %bb.67:                               #   in Loop: Header=BB15_25 Depth=2
	ori	$a1, $zero, 2528
	add.d	$a1, $sp, $a1
	fst.d	$ft1, $a1, 0                    # 8-byte Folded Spill
	b	.LBB15_71
	.p2align	4, , 16
.LBB15_68:                              #   in Loop: Header=BB15_25 Depth=2
	fcmp.cule.d	$fcc0, $fa5, $ft2
	fadd.d	$ft1, $ft3, $fa5
	ori	$a1, $zero, 2560
	add.d	$a1, $sp, $a1
	fst.d	$ft1, $a1, 0                    # 8-byte Folded Spill
	bcnez	$fcc0, .LBB15_70
# %bb.69:                               #   in Loop: Header=BB15_25 Depth=2
	ori	$a1, $zero, 2528
	add.d	$a1, $sp, $a1
	fst.d	$fa5, $a1, 0                    # 8-byte Folded Spill
	b	.LBB15_71
	.p2align	4, , 16
.LBB15_70:                              #   in Loop: Header=BB15_25 Depth=2
	ori	$a1, $zero, 2528
	add.d	$a1, $sp, $a1
	fst.d	$ft2, $a1, 0                    # 8-byte Folded Spill
.LBB15_71:                              # %do_out_error.exit.i
                                        #   in Loop: Header=BB15_25 Depth=2
	ori	$a1, $zero, 2080
	add.d	$a1, $sp, $a1
	fld.d	$ft1, $a1, 0                    # 8-byte Folded Reload
	fmadd.d	$ft1, $ft1, $fa1, $fs0
	fld.d	$ft2, $sp, 1704                 # 8-byte Folded Reload
	fmadd.d	$ft1, $ft2, $fa2, $ft1
	fld.d	$ft2, $sp, 1440                 # 8-byte Folded Reload
	fmadd.d	$ft1, $ft2, $fa3, $ft1
	fld.d	$ft2, $sp, 1248                 # 8-byte Folded Reload
	fmadd.d	$ft1, $ft2, $fa4, $ft1
	fld.d	$ft2, $sp, 912                  # 8-byte Folded Reload
	fmadd.d	$ft1, $ft2, $fa6, $ft1
	fld.d	$ft2, $sp, 720                  # 8-byte Folded Reload
	fmadd.d	$ft1, $ft2, $fa7, $ft1
	fld.d	$ft2, $sp, 616                  # 8-byte Folded Reload
	fmadd.d	$ft1, $ft2, $ft0, $ft1
	fld.d	$ft2, $sp, 480                  # 8-byte Folded Reload
	fmadd.d	$ft1, $ft2, $fa5, $ft1
	ori	$a1, $zero, 2656
	add.d	$a1, $sp, $a1
	fld.d	$ft3, $a1, 0                    # 8-byte Folded Reload
	fsub.d	$ft2, $fa0, $ft3
	fmul.d	$ft2, $ft3, $ft2
	fmul.d	$ft3, $ft2, $ft1
	fst.d	$ft3, $sp, 1704                 # 8-byte Folded Spill
	ori	$a1, $zero, 2176
	add.d	$a1, $sp, $a1
	fld.d	$ft1, $a1, 0                    # 8-byte Folded Reload
	fmadd.d	$ft1, $ft1, $fa1, $fs0
	fld.d	$ft2, $sp, 1744                 # 8-byte Folded Reload
	fmadd.d	$ft1, $ft2, $fa2, $ft1
	fld.d	$ft2, $sp, 1536                 # 8-byte Folded Reload
	fmadd.d	$ft1, $ft2, $fa3, $ft1
	fld.d	$ft2, $sp, 1344                 # 8-byte Folded Reload
	fmadd.d	$ft1, $ft2, $fa4, $ft1
	fld.d	$ft2, $sp, 1144                 # 8-byte Folded Reload
	fmadd.d	$ft1, $ft2, $fa6, $ft1
	fld.d	$ft2, $sp, 784                  # 8-byte Folded Reload
	fmadd.d	$ft1, $ft2, $fa7, $ft1
	fld.d	$ft2, $sp, 624                  # 8-byte Folded Reload
	fmadd.d	$ft1, $ft2, $ft0, $ft1
	fld.d	$ft2, $sp, 512                  # 8-byte Folded Reload
	fmadd.d	$ft1, $ft2, $fa5, $ft1
	ori	$a1, $zero, 2784
	add.d	$a1, $sp, $a1
	fld.d	$ft4, $a1, 0                    # 8-byte Folded Reload
	fsub.d	$ft2, $fa0, $ft4
	fmul.d	$ft2, $ft4, $ft2
	fmul.d	$ft5, $ft2, $ft1
	fst.d	$ft5, $sp, 1144                 # 8-byte Folded Spill
	ori	$a1, $zero, 2208
	add.d	$a1, $sp, $a1
	fld.d	$ft1, $a1, 0                    # 8-byte Folded Reload
	fmadd.d	$ft1, $ft1, $fa1, $fs0
	fld.d	$ft2, $sp, 1840                 # 8-byte Folded Reload
	fmadd.d	$ft1, $ft2, $fa2, $ft1
	fld.d	$ft2, $sp, 1600                 # 8-byte Folded Reload
	fmadd.d	$ft1, $ft2, $fa3, $ft1
	fld.d	$ft2, $sp, 1408                 # 8-byte Folded Reload
	fmadd.d	$ft1, $ft2, $fa4, $ft1
	fld.d	$ft2, $sp, 1072                 # 8-byte Folded Reload
	fmadd.d	$ft1, $ft2, $fa6, $ft1
	fld.d	$ft2, $sp, 848                  # 8-byte Folded Reload
	fmadd.d	$ft1, $ft2, $fa7, $ft1
	fld.d	$ft2, $sp, 688                  # 8-byte Folded Reload
	fmadd.d	$ft1, $ft2, $ft0, $ft1
	fld.d	$ft2, $sp, 544                  # 8-byte Folded Reload
	fmadd.d	$ft1, $ft2, $fa5, $ft1
	ori	$a1, $zero, 2688
	add.d	$a1, $sp, $a1
	fld.d	$ft4, $a1, 0                    # 8-byte Folded Reload
	fsub.d	$ft2, $fa0, $ft4
	fmul.d	$ft2, $ft4, $ft2
	fmul.d	$ft6, $ft2, $ft1
	fst.d	$ft6, $sp, 616                  # 8-byte Folded Spill
	ori	$a1, $zero, 2336
	add.d	$a1, $sp, $a1
	fld.d	$ft1, $a1, 0                    # 8-byte Folded Reload
	fmadd.d	$ft1, $ft1, $fa1, $fs0
	fld.d	$ft2, $sp, 1984                 # 8-byte Folded Reload
	fmadd.d	$ft1, $ft2, $fa2, $ft1
	fld.d	$ft2, $sp, 1664                 # 8-byte Folded Reload
	fmadd.d	$ft1, $ft2, $fa3, $ft1
	fld.d	$ft2, $sp, 1504                 # 8-byte Folded Reload
	fmadd.d	$ft1, $ft2, $fa4, $ft1
	fld.d	$ft2, $sp, 1152                 # 8-byte Folded Reload
	fmadd.d	$ft1, $ft2, $fa6, $ft1
	fld.d	$ft2, $sp, 944                  # 8-byte Folded Reload
	fmadd.d	$ft1, $ft2, $fa7, $ft1
	fld.d	$ft2, $sp, 752                  # 8-byte Folded Reload
	fmadd.d	$ft1, $ft2, $ft0, $ft1
	fld.d	$ft2, $sp, 576                  # 8-byte Folded Reload
	fmadd.d	$ft1, $ft2, $fa5, $ft1
	ori	$a1, $zero, 2592
	add.d	$a1, $sp, $a1
	fld.d	$ft4, $a1, 0                    # 8-byte Folded Reload
	fsub.d	$ft2, $fa0, $ft4
	fmul.d	$ft2, $ft4, $ft2
	fmul.d	$ft7, $ft2, $ft1
	fst.d	$ft7, $sp, 184                  # 8-byte Folded Spill
	ori	$a1, $zero, 2400
	add.d	$a1, $sp, $a1
	fld.d	$ft1, $a1, 0                    # 8-byte Folded Reload
	fmadd.d	$ft1, $ft1, $fa1, $fs0
	ori	$a1, $zero, 2048
	add.d	$a1, $sp, $a1
	fld.d	$ft2, $a1, 0                    # 8-byte Folded Reload
	fmadd.d	$ft1, $ft2, $fa2, $ft1
	fld.d	$ft2, $sp, 1776                 # 8-byte Folded Reload
	fmadd.d	$ft1, $ft2, $fa3, $ft1
	fld.d	$ft2, $sp, 1568                 # 8-byte Folded Reload
	fmadd.d	$ft1, $ft2, $fa4, $ft1
	fld.d	$ft2, $sp, 1216                 # 8-byte Folded Reload
	fmadd.d	$ft1, $ft2, $fa6, $ft1
	fld.d	$ft2, $sp, 1008                 # 8-byte Folded Reload
	fmadd.d	$ft1, $ft2, $fa7, $ft1
	fld.d	$ft2, $sp, 816                  # 8-byte Folded Reload
	fmadd.d	$ft1, $ft2, $ft0, $ft1
	fld.d	$ft2, $sp, 656                  # 8-byte Folded Reload
	fmadd.d	$ft1, $ft2, $fa5, $ft1
	ori	$a1, $zero, 2720
	add.d	$a1, $sp, $a1
	fld.d	$ft4, $a1, 0                    # 8-byte Folded Reload
	fsub.d	$ft2, $fa0, $ft4
	fmul.d	$ft2, $ft4, $ft2
	fmul.d	$ft8, $ft2, $ft1
	fst.d	$ft8, $sp, 176                  # 8-byte Folded Spill
	ori	$a1, $zero, 2432
	add.d	$a1, $sp, $a1
	fld.d	$ft1, $a1, 0                    # 8-byte Folded Reload
	fmadd.d	$ft1, $ft1, $fa1, $fs0
	ori	$a1, $zero, 2144
	add.d	$a1, $sp, $a1
	fld.d	$ft2, $a1, 0                    # 8-byte Folded Reload
	fmadd.d	$ft1, $ft2, $fa2, $ft1
	fld.d	$ft2, $sp, 1952                 # 8-byte Folded Reload
	fmadd.d	$ft1, $ft2, $fa3, $ft1
	fld.d	$ft2, $sp, 1632                 # 8-byte Folded Reload
	fmadd.d	$ft1, $ft2, $fa4, $ft1
	fld.d	$ft2, $sp, 1312                 # 8-byte Folded Reload
	fmadd.d	$ft1, $ft2, $fa6, $ft1
	fld.d	$ft2, $sp, 1104                 # 8-byte Folded Reload
	fmadd.d	$ft1, $ft2, $fa7, $ft1
	fld.d	$ft2, $sp, 880                  # 8-byte Folded Reload
	fmadd.d	$ft1, $ft2, $ft0, $ft1
	fmadd.d	$ft1, $fs5, $fa5, $ft1
	ori	$a1, $zero, 2752
	add.d	$a1, $sp, $a1
	fld.d	$ft4, $a1, 0                    # 8-byte Folded Reload
	fsub.d	$ft2, $fa0, $ft4
	fmul.d	$ft2, $ft4, $ft2
	fmul.d	$ft9, $ft2, $ft1
	fst.d	$ft9, $sp, 168                  # 8-byte Folded Spill
	ori	$a1, $zero, 2464
	add.d	$a1, $sp, $a1
	fld.d	$ft1, $a1, 0                    # 8-byte Folded Reload
	fmadd.d	$ft1, $ft1, $fa1, $fs0
	ori	$a1, $zero, 2240
	add.d	$a1, $sp, $a1
	fld.d	$ft2, $a1, 0                    # 8-byte Folded Reload
	fmadd.d	$ft1, $ft2, $fa2, $ft1
	fld.d	$ft2, $sp, 2016                 # 8-byte Folded Reload
	fmadd.d	$ft1, $ft2, $fa3, $ft1
	fld.d	$ft2, $sp, 1712                 # 8-byte Folded Reload
	fmadd.d	$ft1, $ft2, $fa4, $ft1
	fld.d	$ft2, $sp, 1376                 # 8-byte Folded Reload
	fmadd.d	$ft1, $ft2, $fa6, $ft1
	fld.d	$ft2, $sp, 1184                 # 8-byte Folded Reload
	fmadd.d	$ft1, $ft2, $fa7, $ft1
	fld.d	$ft2, $sp, 976                  # 8-byte Folded Reload
	fmadd.d	$ft1, $ft2, $ft0, $ft1
	fmadd.d	$ft1, $fs2, $fa5, $ft1
	ori	$a1, $zero, 2816
	add.d	$a1, $sp, $a1
	fld.d	$ft4, $a1, 0                    # 8-byte Folded Reload
	fsub.d	$ft2, $fa0, $ft4
	fmul.d	$ft2, $ft4, $ft2
	fmul.d	$ft15, $ft2, $ft1
	ori	$a1, $zero, 2496
	add.d	$a1, $sp, $a1
	fld.d	$ft1, $a1, 0                    # 8-byte Folded Reload
	fmadd.d	$fa1, $ft1, $fa1, $fs0
	ori	$a1, $zero, 2368
	add.d	$a1, $sp, $a1
	fld.d	$ft1, $a1, 0                    # 8-byte Folded Reload
	fmadd.d	$fa1, $ft1, $fa2, $fa1
	ori	$a1, $zero, 2112
	add.d	$a1, $sp, $a1
	fld.d	$fa2, $a1, 0                    # 8-byte Folded Reload
	fmadd.d	$fa1, $fa2, $fa3, $fa1
	fld.d	$fa2, $sp, 1808                 # 8-byte Folded Reload
	fmadd.d	$fa1, $fa2, $fa4, $fa1
	fld.d	$fa2, $sp, 1472                 # 8-byte Folded Reload
	fmadd.d	$fa1, $fa2, $fa6, $fa1
	fld.d	$fa2, $sp, 1280                 # 8-byte Folded Reload
	fmadd.d	$fa1, $fa2, $fa7, $fa1
	fld.d	$fa2, $sp, 1040                 # 8-byte Folded Reload
	fmadd.d	$fa1, $fa2, $ft0, $fa1
	fmadd.d	$fa1, $fs1, $fa5, $fa1
	fld.d	$fa2, $a0, 0
	pcalau12i	$a1, %pc_hi20(.LCPI15_2)
	fld.d	$ft4, $a1, %pc_lo12(.LCPI15_2)
	ori	$a1, $zero, 2624
	add.d	$a1, $sp, $a1
	fld.d	$fa4, $a1, 0                    # 8-byte Folded Reload
	fsub.d	$fa3, $fa0, $fa4
	fmul.d	$fa3, $fa4, $fa3
	fmul.d	$ft14, $fa3, $fa1
	fmul.d	$fa1, $fa2, $ft4
	xvreplve0.d	$xr1, $xr1
	ori	$a1, $zero, 2272
	add.d	$a1, $sp, $a1
	xvld	$xr7, $a1, 0                    # 32-byte Folded Reload
	xvfmul.d	$xr2, $xr7, $xr1
	ld.d	$a2, $sp, 1944                  # 8-byte Folded Reload
	xvld	$xr3, $a2, 0
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	xvreplgr2vr.d	$xr27, $a1
	xvld	$xr4, $a2, 32
	fld.d	$fa5, $a0, 8
	xvfmadd.d	$xr2, $xr3, $xr27, $xr2
	ori	$a1, $zero, 2784
	add.d	$a1, $sp, $a1
	xvst	$xr2, $a1, 0                    # 32-byte Folded Spill
	ori	$a1, $zero, 2304
	add.d	$a1, $sp, $a1
	xvld	$xr6, $a1, 0                    # 32-byte Folded Reload
	xvfmul.d	$xr1, $xr6, $xr1
	xvfmadd.d	$xr1, $xr4, $xr27, $xr1
	ori	$a1, $zero, 2816
	add.d	$a1, $sp, $a1
	xvst	$xr1, $a1, 0                    # 32-byte Folded Spill
	fmul.d	$fa1, $fa5, $ft4
	xvreplve0.d	$xr1, $xr1
	xvld	$xr2, $a2, 64
	xvfmul.d	$xr3, $xr7, $xr1
	xvld	$xr4, $a2, 96
	fld.d	$fa5, $a0, 16
	xvfmadd.d	$xr2, $xr2, $xr27, $xr3
	ori	$a1, $zero, 2720
	add.d	$a1, $sp, $a1
	xvst	$xr2, $a1, 0                    # 32-byte Folded Spill
	xvfmul.d	$xr1, $xr6, $xr1
	xvfmadd.d	$xr1, $xr4, $xr27, $xr1
	ori	$a1, $zero, 2752
	add.d	$a1, $sp, $a1
	xvst	$xr1, $a1, 0                    # 32-byte Folded Spill
	fmul.d	$fa1, $fa5, $ft4
	xvreplve0.d	$xr1, $xr1
	xvld	$xr2, $a2, 128
	xvfmul.d	$xr3, $xr7, $xr1
	xvld	$xr4, $a2, 160
	fld.d	$fa5, $a0, 24
	xvfmadd.d	$xr2, $xr2, $xr27, $xr3
	ori	$a1, $zero, 2656
	add.d	$a1, $sp, $a1
	xvst	$xr2, $a1, 0                    # 32-byte Folded Spill
	xvfmul.d	$xr1, $xr6, $xr1
	xvfmadd.d	$xr1, $xr4, $xr27, $xr1
	ori	$a1, $zero, 2688
	add.d	$a1, $sp, $a1
	xvst	$xr1, $a1, 0                    # 32-byte Folded Spill
	fmul.d	$fa1, $fa5, $ft4
	xvreplve0.d	$xr1, $xr1
	xvld	$xr2, $a2, 192
	xvfmul.d	$xr3, $xr7, $xr1
	xvld	$xr4, $a2, 224
	fld.d	$fa5, $a0, 32
	xvfmadd.d	$xr2, $xr2, $xr27, $xr3
	ori	$a1, $zero, 2592
	add.d	$a1, $sp, $a1
	xvst	$xr2, $a1, 0                    # 32-byte Folded Spill
	xvfmul.d	$xr1, $xr6, $xr1
	xvfmadd.d	$xr1, $xr4, $xr27, $xr1
	ori	$a1, $zero, 2624
	add.d	$a1, $sp, $a1
	xvst	$xr1, $a1, 0                    # 32-byte Folded Spill
	fmul.d	$fa1, $fa5, $ft4
	xvreplve0.d	$xr1, $xr1
	xvld	$xr2, $a2, 256
	xvfmul.d	$xr3, $xr7, $xr1
	xvld	$xr4, $a2, 288
	fld.d	$fa5, $a0, 40
	xvfmadd.d	$xr2, $xr2, $xr27, $xr3
	ori	$a1, $zero, 2464
	add.d	$a1, $sp, $a1
	xvst	$xr2, $a1, 0                    # 32-byte Folded Spill
	xvfmul.d	$xr1, $xr6, $xr1
	xvfmadd.d	$xr1, $xr4, $xr27, $xr1
	ori	$a1, $zero, 2496
	add.d	$a1, $sp, $a1
	xvst	$xr1, $a1, 0                    # 32-byte Folded Spill
	fmul.d	$fa1, $fa5, $ft4
	xvreplve0.d	$xr1, $xr1
	xvld	$xr2, $a2, 320
	xvfmul.d	$xr3, $xr7, $xr1
	xvld	$xr4, $a2, 352
	fld.d	$fa5, $a0, 48
	xvfmadd.d	$xr2, $xr2, $xr27, $xr3
	ori	$a1, $zero, 2400
	add.d	$a1, $sp, $a1
	xvst	$xr2, $a1, 0                    # 32-byte Folded Spill
	xvfmul.d	$xr1, $xr6, $xr1
	xvfmadd.d	$xr1, $xr4, $xr27, $xr1
	ori	$a1, $zero, 2432
	add.d	$a1, $sp, $a1
	xvst	$xr1, $a1, 0                    # 32-byte Folded Spill
	fmul.d	$fa1, $fa5, $ft4
	xvreplve0.d	$xr1, $xr1
	xvld	$xr2, $a2, 384
	xvfmul.d	$xr3, $xr7, $xr1
	xvld	$xr4, $a2, 416
	fld.d	$fa5, $a0, 56
	xvfmadd.d	$xr2, $xr2, $xr27, $xr3
	ori	$a0, $zero, 2336
	add.d	$a0, $sp, $a0
	xvst	$xr2, $a0, 0                    # 32-byte Folded Spill
	xvfmul.d	$xr1, $xr6, $xr1
	xvfmadd.d	$xr1, $xr4, $xr27, $xr1
	ori	$a0, $zero, 2368
	add.d	$a0, $sp, $a0
	xvst	$xr1, $a0, 0                    # 32-byte Folded Spill
	fmul.d	$fa1, $fa5, $ft4
	xvld	$xr2, $a2, 448
	xvreplve0.d	$xr1, $xr1
	xvld	$xr3, $a2, 480
	xvfmul.d	$xr4, $xr7, $xr1
	xvfmadd.d	$xr2, $xr2, $xr27, $xr4
	ori	$a0, $zero, 2272
	add.d	$a0, $sp, $a0
	xvst	$xr2, $a0, 0                    # 32-byte Folded Spill
	xvfmul.d	$xr1, $xr6, $xr1
	xvfmadd.d	$xr1, $xr3, $xr27, $xr1
	ori	$a0, $zero, 2304
	add.d	$a0, $sp, $a0
	xvst	$xr1, $a0, 0                    # 32-byte Folded Spill
	fmul.d	$fa4, $ft3, $ft4
	xvreplve0.d	$xr1, $xr4
	ld.d	$a0, $sp, 1904                  # 8-byte Folded Reload
	ld.d	$a1, $sp, 1872                  # 8-byte Folded Reload
	xvldx	$xr2, $a1, $a0
	xvld	$xr3, $s2, 0
	xvld	$xr5, $s4, 32
	xvld	$xr6, $s2, 32
	xvfmul.d	$xr2, $xr1, $xr2
	xvfmadd.d	$xr2, $xr3, $xr27, $xr2
	ori	$a2, $zero, 2208
	add.d	$a2, $sp, $a2
	xvst	$xr2, $a2, 0                    # 32-byte Folded Spill
	xvfmul.d	$xr2, $xr1, $xr5
	xvfmadd.d	$xr2, $xr6, $xr27, $xr2
	ori	$a2, $zero, 2240
	add.d	$a2, $sp, $a2
	xvst	$xr2, $a2, 0                    # 32-byte Folded Spill
	xvld	$xr2, $s4, 64
	xvld	$xr3, $s2, 64
	xvld	$xr5, $s4, 96
	xvld	$xr6, $s2, 96
	xvfmul.d	$xr2, $xr1, $xr2
	xvfmadd.d	$xr2, $xr3, $xr27, $xr2
	ori	$a2, $zero, 2144
	add.d	$a2, $sp, $a2
	xvst	$xr2, $a2, 0                    # 32-byte Folded Spill
	xvfmul.d	$xr2, $xr1, $xr5
	xvfmadd.d	$xr2, $xr6, $xr27, $xr2
	ori	$a2, $zero, 2176
	add.d	$a2, $sp, $a2
	xvst	$xr2, $a2, 0                    # 32-byte Folded Spill
	xvld	$xr2, $s4, 128
	xvld	$xr3, $s2, 128
	xvld	$xr5, $s4, 160
	xvld	$xr6, $s2, 160
	xvfmul.d	$xr2, $xr1, $xr2
	xvfmadd.d	$xr2, $xr3, $xr27, $xr2
	ori	$a2, $zero, 2080
	add.d	$a2, $sp, $a2
	xvst	$xr2, $a2, 0                    # 32-byte Folded Spill
	xvfmul.d	$xr2, $xr1, $xr5
	xvfmadd.d	$xr2, $xr6, $xr27, $xr2
	ori	$a2, $zero, 2112
	add.d	$a2, $sp, $a2
	xvst	$xr2, $a2, 0                    # 32-byte Folded Spill
	xvld	$xr2, $s4, 192
	xvld	$xr3, $s2, 192
	xvld	$xr5, $s4, 224
	xvld	$xr6, $s2, 224
	xvfmul.d	$xr2, $xr1, $xr2
	xvfmadd.d	$xr2, $xr3, $xr27, $xr2
	xvst	$xr2, $sp, 2016                 # 32-byte Folded Spill
	xvfmul.d	$xr1, $xr1, $xr5
	xvfmadd.d	$xr1, $xr6, $xr27, $xr1
	ori	$a2, $zero, 2048
	add.d	$a2, $sp, $a2
	xvst	$xr1, $a2, 0                    # 32-byte Folded Spill
	fmul.d	$fa7, $ft5, $ft4
	xvreplve0.d	$xr1, $xr7
	xvldx	$xr2, $a1, $a0
	xvld	$xr3, $s2, 280
	xvld	$xr5, $s4, 32
	xvld	$xr6, $s2, 312
	xvfmul.d	$xr2, $xr1, $xr2
	xvfmadd.d	$xr2, $xr3, $xr27, $xr2
	xvst	$xr2, $sp, 1952                 # 32-byte Folded Spill
	xvfmul.d	$xr2, $xr1, $xr5
	xvfmadd.d	$xr2, $xr6, $xr27, $xr2
	xvst	$xr2, $sp, 1984                 # 32-byte Folded Spill
	xvld	$xr2, $s4, 64
	xvld	$xr3, $s2, 344
	xvld	$xr5, $s4, 96
	xvld	$xr6, $s2, 376
	xvfmul.d	$xr2, $xr1, $xr2
	xvfmadd.d	$xr2, $xr3, $xr27, $xr2
	xvst	$xr2, $sp, 1808                 # 32-byte Folded Spill
	xvfmul.d	$xr2, $xr1, $xr5
	xvfmadd.d	$xr2, $xr6, $xr27, $xr2
	xvst	$xr2, $sp, 1840                 # 32-byte Folded Spill
	xvld	$xr2, $s4, 128
	xvld	$xr3, $s2, 408
	xvld	$xr5, $s4, 160
	xvld	$xr6, $s2, 440
	xvfmul.d	$xr2, $xr1, $xr2
	xvfmadd.d	$xr2, $xr3, $xr27, $xr2
	xvst	$xr2, $sp, 1744                 # 32-byte Folded Spill
	xvfmul.d	$xr2, $xr1, $xr5
	xvfmadd.d	$xr2, $xr6, $xr27, $xr2
	xvst	$xr2, $sp, 1776                 # 32-byte Folded Spill
	xvld	$xr2, $s4, 192
	xvld	$xr3, $s2, 472
	xvld	$xr5, $s4, 224
	xvld	$xr6, $s2, 504
	xvfmul.d	$xr2, $xr1, $xr2
	xvfmadd.d	$xr2, $xr3, $xr27, $xr2
	xvst	$xr2, $sp, 1664                 # 32-byte Folded Spill
	xvfmul.d	$xr1, $xr1, $xr5
	xvfmadd.d	$xr1, $xr6, $xr27, $xr1
	xvst	$xr1, $sp, 1712                 # 32-byte Folded Spill
	fmul.d	$fs5, $ft6, $ft4
	xvreplve0.d	$xr1, $xr29
	xvldx	$xr2, $a1, $a0
	xvld	$xr3, $s2, 560
	xvld	$xr5, $s4, 32
	xvld	$xr6, $s2, 592
	xvfmul.d	$xr2, $xr1, $xr2
	xvfmadd.d	$xr2, $xr3, $xr27, $xr2
	xvst	$xr2, $sp, 1600                 # 32-byte Folded Spill
	xvfmul.d	$xr2, $xr1, $xr5
	xvfmadd.d	$xr2, $xr6, $xr27, $xr2
	xvst	$xr2, $sp, 1632                 # 32-byte Folded Spill
	xvld	$xr2, $s4, 64
	xvld	$xr3, $s2, 624
	xvld	$xr5, $s4, 96
	xvld	$xr6, $s2, 656
	xvfmul.d	$xr2, $xr1, $xr2
	xvfmadd.d	$xr2, $xr3, $xr27, $xr2
	xvst	$xr2, $sp, 1536                 # 32-byte Folded Spill
	xvfmul.d	$xr2, $xr1, $xr5
	xvfmadd.d	$xr2, $xr6, $xr27, $xr2
	xvst	$xr2, $sp, 1568                 # 32-byte Folded Spill
	xvld	$xr2, $s4, 128
	xvld	$xr3, $s2, 688
	xvld	$xr5, $s4, 160
	xvld	$xr6, $s2, 720
	xvfmul.d	$xr2, $xr1, $xr2
	xvfmadd.d	$xr2, $xr3, $xr27, $xr2
	xvst	$xr2, $sp, 1472                 # 32-byte Folded Spill
	xvfmul.d	$xr2, $xr1, $xr5
	xvfmadd.d	$xr2, $xr6, $xr27, $xr2
	xvst	$xr2, $sp, 1504                 # 32-byte Folded Spill
	xvld	$xr2, $s4, 192
	xvld	$xr3, $s2, 752
	xvld	$xr5, $s4, 224
	xvld	$xr6, $s2, 784
	xvfmul.d	$xr2, $xr1, $xr2
	xvfmadd.d	$xr2, $xr3, $xr27, $xr2
	xvst	$xr2, $sp, 1408                 # 32-byte Folded Spill
	xvfmul.d	$xr1, $xr1, $xr5
	xvfmadd.d	$xr1, $xr6, $xr27, $xr1
	xvst	$xr1, $sp, 1440                 # 32-byte Folded Spill
	fmul.d	$fs7, $ft7, $ft4
	xvreplve0.d	$xr1, $xr31
	xvldx	$xr2, $a1, $a0
	xvld	$xr3, $s2, 840
	xvld	$xr5, $s4, 32
	xvld	$xr6, $s2, 872
	xvfmul.d	$xr2, $xr1, $xr2
	xvfmadd.d	$xr2, $xr3, $xr27, $xr2
	xvst	$xr2, $sp, 1344                 # 32-byte Folded Spill
	xvfmul.d	$xr2, $xr1, $xr5
	xvfmadd.d	$xr2, $xr6, $xr27, $xr2
	xvst	$xr2, $sp, 1376                 # 32-byte Folded Spill
	xvld	$xr2, $s4, 64
	xvld	$xr3, $s2, 904
	xvld	$xr5, $s4, 96
	xvld	$xr6, $s2, 936
	xvfmul.d	$xr2, $xr1, $xr2
	xvfmadd.d	$xr2, $xr3, $xr27, $xr2
	xvst	$xr2, $sp, 1280                 # 32-byte Folded Spill
	xvfmul.d	$xr2, $xr1, $xr5
	xvfmadd.d	$xr2, $xr6, $xr27, $xr2
	xvst	$xr2, $sp, 1312                 # 32-byte Folded Spill
	xvld	$xr2, $s4, 128
	xvld	$xr3, $s2, 968
	xvld	$xr5, $s4, 160
	xvld	$xr6, $s2, 1000
	xvfmul.d	$xr2, $xr1, $xr2
	xvfmadd.d	$xr2, $xr3, $xr27, $xr2
	xvst	$xr2, $sp, 1216                 # 32-byte Folded Spill
	xvfmul.d	$xr2, $xr1, $xr5
	xvfmadd.d	$xr2, $xr6, $xr27, $xr2
	xvst	$xr2, $sp, 1248                 # 32-byte Folded Spill
	xvld	$xr2, $s4, 192
	xvld	$xr3, $s2, 1032
	xvld	$xr5, $s4, 224
	xvld	$xr6, $s2, 1064
	xvfmul.d	$xr2, $xr1, $xr2
	xvfmadd.d	$xr2, $xr3, $xr27, $xr2
	xvst	$xr2, $sp, 1152                 # 32-byte Folded Spill
	xvfmul.d	$xr1, $xr1, $xr5
	xvfmadd.d	$xr1, $xr6, $xr27, $xr1
	xvst	$xr1, $sp, 1184                 # 32-byte Folded Spill
	fmul.d	$ft10, $ft8, $ft4
	xvreplve0.d	$xr1, $xr18
	xvldx	$xr2, $a1, $a0
	xvld	$xr3, $s2, 1120
	xvld	$xr5, $s4, 32
	xvld	$xr6, $s2, 1152
	xvfmul.d	$xr2, $xr1, $xr2
	xvfmadd.d	$xr2, $xr3, $xr27, $xr2
	xvst	$xr2, $sp, 1072                 # 32-byte Folded Spill
	xvfmul.d	$xr2, $xr1, $xr5
	xvfmadd.d	$xr2, $xr6, $xr27, $xr2
	xvst	$xr2, $sp, 1104                 # 32-byte Folded Spill
	xvld	$xr2, $s4, 64
	xvld	$xr3, $s2, 1184
	xvld	$xr5, $s4, 96
	xvld	$xr6, $s2, 1216
	xvfmul.d	$xr2, $xr1, $xr2
	xvfmadd.d	$xr2, $xr3, $xr27, $xr2
	xvst	$xr2, $sp, 1008                 # 32-byte Folded Spill
	xvfmul.d	$xr2, $xr1, $xr5
	xvfmadd.d	$xr2, $xr6, $xr27, $xr2
	xvst	$xr2, $sp, 1040                 # 32-byte Folded Spill
	xvld	$xr2, $s4, 128
	xvld	$xr3, $s2, 1248
	xvld	$xr5, $s4, 160
	xvld	$xr6, $s2, 1280
	xvfmul.d	$xr2, $xr1, $xr2
	xvfmadd.d	$xr2, $xr3, $xr27, $xr2
	xvst	$xr2, $sp, 944                  # 32-byte Folded Spill
	xvfmul.d	$xr2, $xr1, $xr5
	xvfmadd.d	$xr2, $xr6, $xr27, $xr2
	xvst	$xr2, $sp, 976                  # 32-byte Folded Spill
	xvld	$xr2, $s4, 192
	xvld	$xr3, $s2, 1312
	xvld	$xr5, $s4, 224
	xvld	$xr6, $s2, 1344
	xvfmul.d	$xr2, $xr1, $xr2
	xvfmadd.d	$xr2, $xr3, $xr27, $xr2
	xvst	$xr2, $sp, 880                  # 32-byte Folded Spill
	xvfmul.d	$xr1, $xr1, $xr5
	xvfmadd.d	$xr1, $xr6, $xr27, $xr1
	xvst	$xr1, $sp, 912                  # 32-byte Folded Spill
	fmul.d	$ft1, $ft9, $ft4
	xvreplve0.d	$xr1, $xr9
	xvldx	$xr2, $a1, $a0
	xvld	$xr3, $s2, 1400
	xvld	$xr5, $s4, 32
	xvld	$xr6, $s2, 1432
	xvfmul.d	$xr2, $xr1, $xr2
	xvfmadd.d	$xr2, $xr3, $xr27, $xr2
	xvst	$xr2, $sp, 816                  # 32-byte Folded Spill
	xvfmul.d	$xr2, $xr1, $xr5
	xvfmadd.d	$xr2, $xr6, $xr27, $xr2
	xvst	$xr2, $sp, 848                  # 32-byte Folded Spill
	xvld	$xr2, $s4, 64
	xvld	$xr3, $s2, 1464
	xvld	$xr5, $s4, 96
	xvld	$xr6, $s2, 1496
	xvfmul.d	$xr2, $xr1, $xr2
	xvfmadd.d	$xr2, $xr3, $xr27, $xr2
	xvst	$xr2, $sp, 752                  # 32-byte Folded Spill
	xvfmul.d	$xr2, $xr1, $xr5
	xvfmadd.d	$xr2, $xr6, $xr27, $xr2
	xvst	$xr2, $sp, 784                  # 32-byte Folded Spill
	xvld	$xr2, $s4, 128
	xvld	$xr3, $s2, 1528
	xvld	$xr5, $s4, 160
	xvld	$xr6, $s2, 1560
	xvfmul.d	$xr2, $xr1, $xr2
	xvfmadd.d	$xr2, $xr3, $xr27, $xr2
	xvst	$xr2, $sp, 688                  # 32-byte Folded Spill
	xvfmul.d	$xr2, $xr1, $xr5
	xvfmadd.d	$xr2, $xr6, $xr27, $xr2
	xvst	$xr2, $sp, 720                  # 32-byte Folded Spill
	xvld	$xr2, $s4, 192
	xvld	$xr3, $s2, 1592
	xvld	$xr5, $s4, 224
	xvld	$xr6, $s2, 1624
	xvfmul.d	$xr2, $xr1, $xr2
	xvfmadd.d	$xr2, $xr3, $xr27, $xr2
	xvst	$xr2, $sp, 624                  # 32-byte Folded Spill
	xvfmul.d	$xr1, $xr1, $xr5
	xvfmadd.d	$xr1, $xr6, $xr27, $xr1
	xvst	$xr1, $sp, 656                  # 32-byte Folded Spill
	fmul.d	$ft9, $ft15, $ft4
	xvreplve0.d	$xr1, $xr17
	xvldx	$xr2, $a1, $a0
	xvld	$xr3, $s2, 1680
	xvld	$xr5, $s4, 32
	xvld	$xr6, $s2, 1712
	xvfmul.d	$xr2, $xr1, $xr2
	xvfmadd.d	$xr2, $xr3, $xr27, $xr2
	xvst	$xr2, $sp, 544                  # 32-byte Folded Spill
	xvfmul.d	$xr2, $xr1, $xr5
	xvfmadd.d	$xr2, $xr6, $xr27, $xr2
	xvst	$xr2, $sp, 576                  # 32-byte Folded Spill
	xvld	$xr2, $s4, 64
	xvld	$xr3, $s2, 1744
	xvld	$xr5, $s4, 96
	xvld	$xr6, $s2, 1776
	xvfmul.d	$xr2, $xr1, $xr2
	xvfmadd.d	$xr2, $xr3, $xr27, $xr2
	xvst	$xr2, $sp, 480                  # 32-byte Folded Spill
	xvfmul.d	$xr2, $xr1, $xr5
	xvfmadd.d	$xr2, $xr6, $xr27, $xr2
	xvst	$xr2, $sp, 512                  # 32-byte Folded Spill
	xvld	$xr2, $s4, 128
	xvld	$xr3, $s2, 1808
	xvld	$xr5, $s4, 160
	xvld	$xr6, $s2, 1840
	xvfmul.d	$xr2, $xr1, $xr2
	xvfmadd.d	$xr2, $xr3, $xr27, $xr2
	xvst	$xr2, $sp, 416                  # 32-byte Folded Spill
	xvfmul.d	$xr2, $xr1, $xr5
	xvfmadd.d	$xr2, $xr6, $xr27, $xr2
	xvst	$xr2, $sp, 448                  # 32-byte Folded Spill
	xvld	$xr2, $s4, 192
	xvld	$xr3, $s2, 1872
	xvld	$xr5, $s4, 224
	xvld	$xr6, $s2, 1904
	xvfmul.d	$xr2, $xr1, $xr2
	xvfmadd.d	$xr2, $xr3, $xr27, $xr2
	xvst	$xr2, $sp, 352                  # 32-byte Folded Spill
	xvfmul.d	$xr1, $xr1, $xr5
	xvfmadd.d	$xr1, $xr6, $xr27, $xr1
	xvst	$xr1, $sp, 384                  # 32-byte Folded Spill
	fmul.d	$fa1, $ft14, $ft4
	xvreplve0.d	$xr2, $xr1
	xvldx	$xr3, $a1, $a0
	xvld	$xr5, $s2, 1960
	xvld	$xr6, $s4, 32
	xvld	$xr8, $s2, 1992
	xvfmul.d	$xr3, $xr2, $xr3
	xvfmadd.d	$xr0, $xr5, $xr27, $xr3
	xvst	$xr0, $sp, 1872                 # 32-byte Folded Spill
	xvfmul.d	$xr3, $xr2, $xr6
	xvfmadd.d	$xr0, $xr8, $xr27, $xr3
	xvst	$xr0, $sp, 1904                 # 32-byte Folded Spill
	xvld	$xr3, $s4, 64
	xvld	$xr5, $s2, 2024
	xvld	$xr6, $s4, 96
	ori	$a3, $zero, 2056
	xvldx	$xr8, $s2, $a3
	xvfmul.d	$xr3, $xr2, $xr3
	xvfmadd.d	$xr0, $xr5, $xr27, $xr3
	xvst	$xr0, $sp, 288                  # 32-byte Folded Spill
	xvfmul.d	$xr3, $xr2, $xr6
	xvfmadd.d	$xr0, $xr8, $xr27, $xr3
	xvst	$xr0, $sp, 320                  # 32-byte Folded Spill
	xvld	$xr3, $s4, 128
	ori	$a4, $zero, 2088
	xvldx	$xr5, $s2, $a4
	xvld	$xr6, $s4, 160
	ori	$t6, $zero, 2120
	xvldx	$xr8, $s2, $t6
	xvfmul.d	$xr3, $xr2, $xr3
	xvfmadd.d	$xr0, $xr5, $xr27, $xr3
	xvst	$xr0, $sp, 224                  # 32-byte Folded Spill
	xvfmul.d	$xr3, $xr2, $xr6
	xvfmadd.d	$xr0, $xr8, $xr27, $xr3
	xvst	$xr0, $sp, 256                  # 32-byte Folded Spill
	xvld	$xr3, $s4, 192
	ori	$t7, $zero, 2152
	xvldx	$xr5, $s2, $t7
	xvld	$xr6, $s4, 224
	ori	$t8, $zero, 2184
	xvldx	$xr8, $s2, $t8
	xvfmul.d	$xr3, $xr2, $xr3
	xvfmadd.d	$xr0, $xr5, $xr27, $xr3
	xvst	$xr0, $sp, 192                  # 32-byte Folded Spill
	xvfmul.d	$xr2, $xr2, $xr6
	xvfmadd.d	$xr27, $xr8, $xr27, $xr2
	fld.d	$fa2, $s4, 256
	fld.d	$fa3, $s2, 256
	fld.d	$fa5, $s4, 264
	fld.d	$fa6, $s2, 264
	fmul.d	$fa2, $fa4, $fa2
	fmadd.d	$fa2, $fa3, $ft4, $fa2
	fmul.d	$fa3, $fa4, $fa5
	fmadd.d	$fa3, $fa6, $ft4, $fa3
	fld.d	$fa5, $s4, 272
	fld.d	$fa6, $s2, 272
	fld.d	$ft0, $s4, 256
	fld.d	$ft2, $s2, 536
	fmul.d	$fa4, $fa4, $fa5
	fmadd.d	$fa4, $fa6, $ft4, $fa4
	fmul.d	$fa5, $fa7, $ft0
	fmadd.d	$fa6, $ft2, $ft4, $fa5
	fld.d	$fa5, $s4, 264
	fld.d	$ft0, $s2, 544
	fld.d	$ft2, $s4, 272
	fld.d	$ft3, $s2, 552
	fmul.d	$fa5, $fa7, $fa5
	fmadd.d	$fa5, $ft0, $ft4, $fa5
	fmul.d	$fa7, $fa7, $ft2
	fmadd.d	$fa7, $ft3, $ft4, $fa7
	fld.d	$ft0, $s4, 256
	fld.d	$ft2, $s2, 816
	fld.d	$ft3, $s4, 264
	fld.d	$ft5, $s2, 824
	fmul.d	$ft0, $fs5, $ft0
	fmadd.d	$ft0, $ft2, $ft4, $ft0
	fmul.d	$ft2, $fs5, $ft3
	fmadd.d	$ft3, $ft5, $ft4, $ft2
	fld.d	$ft2, $s4, 272
	fld.d	$ft5, $s2, 832
	fld.d	$ft6, $s4, 256
	fld.d	$ft7, $s2, 1096
	fmul.d	$ft2, $fs5, $ft2
	fmadd.d	$ft2, $ft5, $ft4, $ft2
	fmul.d	$ft5, $fs7, $ft6
	fmadd.d	$ft6, $ft7, $ft4, $ft5
	fld.d	$ft5, $s4, 264
	fld.d	$ft7, $s2, 1104
	fld.d	$ft8, $s4, 272
	fld.d	$ft11, $s2, 1112
	fmul.d	$ft5, $fs7, $ft5
	fmadd.d	$ft5, $ft7, $ft4, $ft5
	fmul.d	$ft7, $fs7, $ft8
	fmadd.d	$ft7, $ft11, $ft4, $ft7
	fld.d	$ft8, $s4, 256
	fld.d	$ft11, $s2, 1376
	fld.d	$ft12, $s4, 264
	fld.d	$ft13, $s2, 1384
	fmul.d	$ft8, $ft10, $ft8
	fmadd.d	$ft8, $ft11, $ft4, $ft8
	fmul.d	$ft11, $ft10, $ft12
	fmadd.d	$ft11, $ft13, $ft4, $ft11
	fld.d	$ft12, $s4, 272
	fld.d	$ft13, $s2, 1392
	fld.d	$fs4, $s4, 256
	fld.d	$fs5, $s2, 1656
	fmul.d	$ft10, $ft10, $ft12
	fmadd.d	$ft10, $ft13, $ft4, $ft10
	fmul.d	$ft12, $ft1, $fs4
	fmadd.d	$ft12, $fs5, $ft4, $ft12
	fld.d	$ft13, $s4, 264
	fld.d	$fs4, $s2, 1664
	fld.d	$fs5, $s4, 272
	fld.d	$fs6, $s2, 1672
	fmul.d	$ft13, $ft1, $ft13
	fmadd.d	$ft13, $fs4, $ft4, $ft13
	fmul.d	$ft1, $ft1, $fs5
	fmadd.d	$ft1, $fs6, $ft4, $ft1
	fld.d	$fs4, $s4, 256
	fld.d	$fs5, $s2, 1936
	fld.d	$fs6, $s4, 264
	fld.d	$fs7, $s2, 1944
	fmul.d	$fs4, $ft9, $fs4
	fmadd.d	$fs4, $fs5, $ft4, $fs4
	fmul.d	$fs5, $ft9, $fs6
	fmadd.d	$fs6, $fs7, $ft4, $fs5
	fld.d	$fs5, $s4, 272
	fld.d	$fs7, $s2, 1952
	fld.d	$fa0, $s4, 256
	ori	$fp, $zero, 2216
	fldx.d	$fs2, $s2, $fp
	fmul.d	$ft9, $ft9, $fs5
	fmadd.d	$fs7, $fs7, $ft4, $ft9
	fmul.d	$fa0, $fa1, $fa0
	fmadd.d	$ft9, $fs2, $ft4, $fa0
	fld.d	$fa0, $s4, 264
	ori	$s0, $zero, 2224
	fldx.d	$fs2, $s2, $s0
	fld.d	$fs5, $s4, 272
	ori	$s4, $zero, 2232
	fldx.d	$fs1, $s2, $s4
	fmul.d	$fa0, $fa1, $fa0
	fmadd.d	$fa0, $fs2, $ft4, $fa0
	fmul.d	$fa1, $fa1, $fs5
	fmadd.d	$ft4, $fs1, $ft4, $fa1
	vldi	$vr1, -960
	st.d	$a3, $sp, 0                     # 8-byte Folded Spill
	ori	$a0, $zero, 2560
	add.d	$a0, $sp, $a0
	fld.d	$fs1, $a0, 0                    # 8-byte Folded Reload
	fmul.d	$fa1, $fs1, $fa1
	slli.d	$a2, $ra, 3
	pcalau12i	$a0, %pc_hi20(avg_out_error)
	addi.d	$a0, $a0, %pc_lo12(avg_out_error)
	fstx.d	$fa1, $a0, $a2
	pcalau12i	$a1, %pc_hi20(tot_out_error)
	addi.d	$a1, $a1, %pc_lo12(tot_out_error)
	ori	$a3, $zero, 2528
	add.d	$a3, $sp, $a3
	fld.d	$fa1, $a3, 0                    # 8-byte Folded Reload
	ld.d	$a3, $sp, 0                     # 8-byte Folded Reload
	fstx.d	$fa1, $a1, $a2
	pcalau12i	$a2, %pc_hi20(mid_error)
	addi.d	$a2, $a2, %pc_lo12(mid_error)
	fld.d	$fa1, $sp, 1704                 # 8-byte Folded Reload
	fst.d	$fa1, $a2, 0
	fld.d	$fa1, $sp, 1144                 # 8-byte Folded Reload
	fst.d	$fa1, $a2, 8
	fld.d	$fa1, $sp, 616                  # 8-byte Folded Reload
	fst.d	$fa1, $a2, 16
	fld.d	$fa1, $sp, 184                  # 8-byte Folded Reload
	fst.d	$fa1, $a2, 24
	fld.d	$fa1, $sp, 176                  # 8-byte Folded Reload
	fst.d	$fa1, $a2, 32
	fld.d	$fa1, $sp, 168                  # 8-byte Folded Reload
	fst.d	$fa1, $a2, 40
	xvld	$xr1, $s8, 0
	fst.d	$ft15, $a2, 48
	fst.d	$ft14, $a2, 56
	xvld	$xr25, $s5, 0
	ori	$a2, $zero, 2784
	add.d	$a2, $sp, $a2
	xvld	$xr22, $a2, 0                   # 32-byte Folded Reload
	xvfadd.d	$xr1, $xr1, $xr22
	xvst	$xr1, $s8, 0
	xvld	$xr1, $s8, 32
	xvfadd.d	$xr25, $xr22, $xr25
	xvst	$xr25, $s5, 0
	xvld	$xr25, $s5, 32
	ori	$a2, $zero, 2816
	add.d	$a2, $sp, $a2
	xvld	$xr22, $a2, 0                   # 32-byte Folded Reload
	xvfadd.d	$xr1, $xr1, $xr22
	xvst	$xr1, $s8, 32
	xvld	$xr1, $s8, 64
	xvfadd.d	$xr25, $xr22, $xr25
	xvst	$xr25, $s5, 32
	xvld	$xr25, $s5, 64
	ori	$a2, $zero, 2720
	add.d	$a2, $sp, $a2
	xvld	$xr22, $a2, 0                   # 32-byte Folded Reload
	xvfadd.d	$xr1, $xr1, $xr22
	xvst	$xr1, $s8, 64
	xvld	$xr1, $s8, 96
	xvfadd.d	$xr25, $xr22, $xr25
	xvst	$xr25, $s5, 64
	xvld	$xr25, $s5, 96
	ori	$a2, $zero, 2752
	add.d	$a2, $sp, $a2
	xvld	$xr22, $a2, 0                   # 32-byte Folded Reload
	xvfadd.d	$xr1, $xr1, $xr22
	xvst	$xr1, $s8, 96
	xvld	$xr1, $s8, 128
	xvfadd.d	$xr25, $xr22, $xr25
	xvst	$xr25, $s5, 96
	xvld	$xr25, $s5, 128
	ori	$a2, $zero, 2656
	add.d	$a2, $sp, $a2
	xvld	$xr22, $a2, 0                   # 32-byte Folded Reload
	xvfadd.d	$xr1, $xr1, $xr22
	xvst	$xr1, $s8, 128
	xvld	$xr1, $s8, 160
	xvfadd.d	$xr25, $xr22, $xr25
	xvst	$xr25, $s5, 128
	xvld	$xr25, $s5, 160
	ori	$a2, $zero, 2688
	add.d	$a2, $sp, $a2
	xvld	$xr22, $a2, 0                   # 32-byte Folded Reload
	xvfadd.d	$xr1, $xr1, $xr22
	xvst	$xr1, $s8, 160
	xvld	$xr1, $s8, 192
	xvfadd.d	$xr25, $xr22, $xr25
	xvst	$xr25, $s5, 160
	xvld	$xr25, $s5, 192
	ori	$a2, $zero, 2592
	add.d	$a2, $sp, $a2
	xvld	$xr22, $a2, 0                   # 32-byte Folded Reload
	xvfadd.d	$xr1, $xr1, $xr22
	xvst	$xr1, $s8, 192
	xvld	$xr1, $s8, 224
	xvfadd.d	$xr25, $xr22, $xr25
	xvst	$xr25, $s5, 192
	xvld	$xr25, $s5, 224
	ori	$a2, $zero, 2624
	add.d	$a2, $sp, $a2
	xvld	$xr22, $a2, 0                   # 32-byte Folded Reload
	xvfadd.d	$xr1, $xr1, $xr22
	xvst	$xr1, $s8, 224
	xvld	$xr1, $s8, 256
	xvfadd.d	$xr25, $xr22, $xr25
	xvst	$xr25, $s5, 224
	xvld	$xr25, $s5, 256
	ori	$a2, $zero, 2464
	add.d	$a2, $sp, $a2
	xvld	$xr22, $a2, 0                   # 32-byte Folded Reload
	xvfadd.d	$xr1, $xr1, $xr22
	xvst	$xr1, $s8, 256
	xvld	$xr1, $s8, 288
	xvfadd.d	$xr25, $xr22, $xr25
	xvst	$xr25, $s5, 256
	xvld	$xr25, $s5, 288
	ori	$a2, $zero, 2496
	add.d	$a2, $sp, $a2
	xvld	$xr22, $a2, 0                   # 32-byte Folded Reload
	xvfadd.d	$xr1, $xr1, $xr22
	xvst	$xr1, $s8, 288
	xvld	$xr1, $s8, 320
	xvfadd.d	$xr25, $xr22, $xr25
	xvst	$xr25, $s5, 288
	xvld	$xr25, $s5, 320
	ori	$a2, $zero, 2400
	add.d	$a2, $sp, $a2
	xvld	$xr22, $a2, 0                   # 32-byte Folded Reload
	xvfadd.d	$xr1, $xr1, $xr22
	xvst	$xr1, $s8, 320
	xvld	$xr1, $s8, 352
	xvfadd.d	$xr25, $xr22, $xr25
	xvst	$xr25, $s5, 320
	xvld	$xr25, $s5, 352
	ori	$a2, $zero, 2432
	add.d	$a2, $sp, $a2
	xvld	$xr22, $a2, 0                   # 32-byte Folded Reload
	xvfadd.d	$xr1, $xr1, $xr22
	xvst	$xr1, $s8, 352
	xvld	$xr1, $s8, 384
	xvfadd.d	$xr25, $xr22, $xr25
	xvst	$xr25, $s5, 352
	xvld	$xr25, $s5, 384
	ori	$a2, $zero, 2336
	add.d	$a2, $sp, $a2
	xvld	$xr22, $a2, 0                   # 32-byte Folded Reload
	xvfadd.d	$xr1, $xr1, $xr22
	xvst	$xr1, $s8, 384
	xvld	$xr1, $s8, 416
	xvfadd.d	$xr25, $xr22, $xr25
	xvst	$xr25, $s5, 384
	xvld	$xr25, $s5, 416
	ori	$a2, $zero, 2368
	add.d	$a2, $sp, $a2
	xvld	$xr22, $a2, 0                   # 32-byte Folded Reload
	xvfadd.d	$xr1, $xr1, $xr22
	xvst	$xr1, $s8, 416
	xvld	$xr1, $s8, 448
	xvfadd.d	$xr25, $xr22, $xr25
	xvst	$xr25, $s5, 416
	xvld	$xr25, $s5, 448
	ori	$a2, $zero, 2272
	add.d	$a2, $sp, $a2
	xvld	$xr22, $a2, 0                   # 32-byte Folded Reload
	xvfadd.d	$xr1, $xr1, $xr22
	xvst	$xr1, $s8, 448
	xvld	$xr1, $s8, 480
	xvfadd.d	$xr25, $xr22, $xr25
	xvst	$xr25, $s5, 448
	xvld	$xr25, $s5, 480
	ori	$a2, $zero, 2304
	add.d	$a2, $sp, $a2
	xvld	$xr22, $a2, 0                   # 32-byte Folded Reload
	xvfadd.d	$xr1, $xr1, $xr22
	xvst	$xr1, $s8, 480
	xvld	$xr1, $s6, 0
	xvfadd.d	$xr25, $xr22, $xr25
	xvst	$xr25, $s5, 480
	xvld	$xr25, $s3, 0
	ori	$a2, $zero, 2208
	add.d	$a2, $sp, $a2
	xvld	$xr22, $a2, 0                   # 32-byte Folded Reload
	xvfadd.d	$xr1, $xr1, $xr22
	xvst	$xr1, $s6, 0
	xvld	$xr1, $s6, 32
	xvfadd.d	$xr25, $xr22, $xr25
	xvst	$xr25, $s3, 0
	xvld	$xr25, $s3, 32
	ori	$a2, $zero, 2240
	add.d	$a2, $sp, $a2
	xvld	$xr22, $a2, 0                   # 32-byte Folded Reload
	xvfadd.d	$xr1, $xr1, $xr22
	xvst	$xr1, $s6, 32
	xvld	$xr1, $s6, 64
	xvfadd.d	$xr25, $xr22, $xr25
	xvst	$xr25, $s3, 32
	xvld	$xr25, $s3, 64
	ori	$a2, $zero, 2144
	add.d	$a2, $sp, $a2
	xvld	$xr22, $a2, 0                   # 32-byte Folded Reload
	xvfadd.d	$xr1, $xr1, $xr22
	xvst	$xr1, $s6, 64
	xvld	$xr1, $s6, 96
	xvfadd.d	$xr25, $xr22, $xr25
	xvst	$xr25, $s3, 64
	xvld	$xr25, $s3, 96
	ori	$a2, $zero, 2176
	add.d	$a2, $sp, $a2
	xvld	$xr22, $a2, 0                   # 32-byte Folded Reload
	xvfadd.d	$xr1, $xr1, $xr22
	xvst	$xr1, $s6, 96
	xvld	$xr1, $s6, 128
	xvfadd.d	$xr25, $xr22, $xr25
	xvst	$xr25, $s3, 96
	xvld	$xr25, $s3, 128
	ori	$a2, $zero, 2080
	add.d	$a2, $sp, $a2
	xvld	$xr22, $a2, 0                   # 32-byte Folded Reload
	xvfadd.d	$xr1, $xr1, $xr22
	xvst	$xr1, $s6, 128
	xvld	$xr1, $s6, 160
	xvfadd.d	$xr25, $xr22, $xr25
	xvst	$xr25, $s3, 128
	xvld	$xr25, $s3, 160
	ori	$a2, $zero, 2112
	add.d	$a2, $sp, $a2
	xvld	$xr22, $a2, 0                   # 32-byte Folded Reload
	xvfadd.d	$xr1, $xr1, $xr22
	xvst	$xr1, $s6, 160
	xvld	$xr1, $s6, 192
	xvfadd.d	$xr25, $xr22, $xr25
	xvst	$xr25, $s3, 160
	xvld	$xr25, $s3, 192
	xvld	$xr22, $sp, 2016                # 32-byte Folded Reload
	xvfadd.d	$xr1, $xr1, $xr22
	xvst	$xr1, $s6, 192
	xvld	$xr1, $s6, 224
	xvfadd.d	$xr25, $xr22, $xr25
	xvst	$xr25, $s3, 192
	xvld	$xr25, $s3, 224
	ori	$a2, $zero, 2048
	add.d	$a2, $sp, $a2
	xvld	$xr22, $a2, 0                   # 32-byte Folded Reload
	xvfadd.d	$xr1, $xr1, $xr22
	xvst	$xr1, $s6, 224
	fld.d	$fa1, $s6, 256
	xvfadd.d	$xr25, $xr22, $xr25
	xvst	$xr25, $s3, 224
	fld.d	$fs1, $s3, 256
	fadd.d	$fa1, $fa1, $fa2
	fst.d	$fa1, $s6, 256
	fld.d	$fa1, $s6, 264
	fadd.d	$fa2, $fa2, $fs1
	fst.d	$fa2, $s3, 256
	fld.d	$fa2, $s3, 264
	fadd.d	$fa1, $fa1, $fa3
	fst.d	$fa1, $s6, 264
	fld.d	$fa1, $s6, 272
	fadd.d	$fa2, $fa3, $fa2
	fst.d	$fa2, $s3, 264
	fld.d	$fa2, $s3, 272
	fadd.d	$fa1, $fa1, $fa4
	fst.d	$fa1, $s6, 272
	xvld	$xr1, $s6, 280
	fadd.d	$fa2, $fa4, $fa2
	fst.d	$fa2, $s3, 272
	xvld	$xr2, $s3, 280
	xvld	$xr3, $sp, 1952                 # 32-byte Folded Reload
	xvfadd.d	$xr1, $xr1, $xr3
	xvst	$xr1, $s6, 280
	xvld	$xr1, $s6, 312
	xvfadd.d	$xr2, $xr3, $xr2
	xvst	$xr2, $s3, 280
	xvld	$xr2, $s3, 312
	xvld	$xr3, $sp, 1984                 # 32-byte Folded Reload
	xvfadd.d	$xr1, $xr1, $xr3
	xvst	$xr1, $s6, 312
	xvld	$xr1, $s6, 344
	xvfadd.d	$xr2, $xr3, $xr2
	xvst	$xr2, $s3, 312
	xvld	$xr2, $s3, 344
	xvld	$xr3, $sp, 1808                 # 32-byte Folded Reload
	xvfadd.d	$xr1, $xr1, $xr3
	xvst	$xr1, $s6, 344
	xvld	$xr1, $s6, 376
	xvfadd.d	$xr2, $xr3, $xr2
	xvst	$xr2, $s3, 344
	xvld	$xr2, $s3, 376
	xvld	$xr3, $sp, 1840                 # 32-byte Folded Reload
	xvfadd.d	$xr1, $xr1, $xr3
	xvst	$xr1, $s6, 376
	xvld	$xr1, $s6, 408
	xvfadd.d	$xr2, $xr3, $xr2
	xvst	$xr2, $s3, 376
	xvld	$xr2, $s3, 408
	xvld	$xr3, $sp, 1744                 # 32-byte Folded Reload
	xvfadd.d	$xr1, $xr1, $xr3
	xvst	$xr1, $s6, 408
	xvld	$xr1, $s6, 440
	xvfadd.d	$xr2, $xr3, $xr2
	xvst	$xr2, $s3, 408
	xvld	$xr2, $s3, 440
	xvld	$xr3, $sp, 1776                 # 32-byte Folded Reload
	xvfadd.d	$xr1, $xr1, $xr3
	xvst	$xr1, $s6, 440
	xvld	$xr1, $s6, 472
	xvfadd.d	$xr2, $xr3, $xr2
	xvst	$xr2, $s3, 440
	xvld	$xr2, $s3, 472
	xvld	$xr3, $sp, 1664                 # 32-byte Folded Reload
	xvfadd.d	$xr1, $xr1, $xr3
	xvst	$xr1, $s6, 472
	xvld	$xr1, $s6, 504
	xvfadd.d	$xr2, $xr3, $xr2
	xvst	$xr2, $s3, 472
	xvld	$xr2, $s3, 504
	xvld	$xr3, $sp, 1712                 # 32-byte Folded Reload
	xvfadd.d	$xr1, $xr1, $xr3
	xvst	$xr1, $s6, 504
	fld.d	$fa1, $s6, 536
	xvfadd.d	$xr2, $xr3, $xr2
	xvst	$xr2, $s3, 504
	fld.d	$fa2, $s3, 536
	fadd.d	$fa1, $fa1, $fa6
	fst.d	$fa1, $s6, 536
	fld.d	$fa1, $s6, 544
	fadd.d	$fa2, $fa6, $fa2
	fst.d	$fa2, $s3, 536
	fld.d	$fa2, $s3, 544
	fadd.d	$fa1, $fa1, $fa5
	fst.d	$fa1, $s6, 544
	fld.d	$fa1, $s6, 552
	fadd.d	$fa2, $fa5, $fa2
	fst.d	$fa2, $s3, 544
	fld.d	$fa2, $s3, 552
	fadd.d	$fa1, $fa1, $fa7
	fst.d	$fa1, $s6, 552
	xvld	$xr1, $s6, 560
	fadd.d	$fa2, $fa7, $fa2
	fst.d	$fa2, $s3, 552
	xvld	$xr2, $s3, 560
	xvld	$xr3, $sp, 1600                 # 32-byte Folded Reload
	xvfadd.d	$xr1, $xr1, $xr3
	xvst	$xr1, $s6, 560
	xvld	$xr1, $s6, 592
	xvfadd.d	$xr2, $xr3, $xr2
	xvst	$xr2, $s3, 560
	xvld	$xr2, $s3, 592
	xvld	$xr3, $sp, 1632                 # 32-byte Folded Reload
	xvfadd.d	$xr1, $xr1, $xr3
	xvst	$xr1, $s6, 592
	xvld	$xr1, $s6, 624
	xvfadd.d	$xr2, $xr3, $xr2
	xvst	$xr2, $s3, 592
	xvld	$xr2, $s3, 624
	xvld	$xr3, $sp, 1536                 # 32-byte Folded Reload
	xvfadd.d	$xr1, $xr1, $xr3
	xvst	$xr1, $s6, 624
	xvld	$xr1, $s6, 656
	xvfadd.d	$xr2, $xr3, $xr2
	xvst	$xr2, $s3, 624
	xvld	$xr2, $s3, 656
	xvld	$xr3, $sp, 1568                 # 32-byte Folded Reload
	xvfadd.d	$xr1, $xr1, $xr3
	xvst	$xr1, $s6, 656
	xvld	$xr1, $s6, 688
	xvfadd.d	$xr2, $xr3, $xr2
	xvst	$xr2, $s3, 656
	xvld	$xr2, $s3, 688
	xvld	$xr3, $sp, 1472                 # 32-byte Folded Reload
	xvfadd.d	$xr1, $xr1, $xr3
	xvst	$xr1, $s6, 688
	xvld	$xr1, $s6, 720
	xvfadd.d	$xr2, $xr3, $xr2
	xvst	$xr2, $s3, 688
	xvld	$xr2, $s3, 720
	xvld	$xr3, $sp, 1504                 # 32-byte Folded Reload
	xvfadd.d	$xr1, $xr1, $xr3
	xvst	$xr1, $s6, 720
	xvld	$xr1, $s6, 752
	xvfadd.d	$xr2, $xr3, $xr2
	xvst	$xr2, $s3, 720
	xvld	$xr2, $s3, 752
	xvld	$xr3, $sp, 1408                 # 32-byte Folded Reload
	xvfadd.d	$xr1, $xr1, $xr3
	xvst	$xr1, $s6, 752
	xvld	$xr1, $s6, 784
	xvfadd.d	$xr2, $xr3, $xr2
	xvst	$xr2, $s3, 752
	xvld	$xr2, $s3, 784
	xvld	$xr3, $sp, 1440                 # 32-byte Folded Reload
	xvfadd.d	$xr1, $xr1, $xr3
	xvst	$xr1, $s6, 784
	fld.d	$fa1, $s6, 816
	xvfadd.d	$xr2, $xr3, $xr2
	xvst	$xr2, $s3, 784
	fld.d	$fa2, $s3, 816
	fadd.d	$fa1, $fa1, $ft0
	fst.d	$fa1, $s6, 816
	fld.d	$fa1, $s6, 824
	fadd.d	$fa2, $ft0, $fa2
	fst.d	$fa2, $s3, 816
	fld.d	$fa2, $s3, 824
	fadd.d	$fa1, $fa1, $ft3
	fst.d	$fa1, $s6, 824
	fld.d	$fa1, $s6, 832
	fadd.d	$fa2, $ft3, $fa2
	fst.d	$fa2, $s3, 824
	fld.d	$fa2, $s3, 832
	fadd.d	$fa1, $fa1, $ft2
	fst.d	$fa1, $s6, 832
	xvld	$xr1, $s6, 840
	fadd.d	$fa2, $ft2, $fa2
	fst.d	$fa2, $s3, 832
	xvld	$xr2, $s3, 840
	xvld	$xr3, $sp, 1344                 # 32-byte Folded Reload
	xvfadd.d	$xr1, $xr1, $xr3
	xvst	$xr1, $s6, 840
	xvld	$xr1, $s6, 872
	xvfadd.d	$xr2, $xr3, $xr2
	xvst	$xr2, $s3, 840
	xvld	$xr2, $s3, 872
	xvld	$xr3, $sp, 1376                 # 32-byte Folded Reload
	xvfadd.d	$xr1, $xr1, $xr3
	xvst	$xr1, $s6, 872
	xvld	$xr1, $s6, 904
	xvfadd.d	$xr2, $xr3, $xr2
	xvst	$xr2, $s3, 872
	xvld	$xr2, $s3, 904
	xvld	$xr3, $sp, 1280                 # 32-byte Folded Reload
	xvfadd.d	$xr1, $xr1, $xr3
	xvst	$xr1, $s6, 904
	xvld	$xr1, $s6, 936
	xvfadd.d	$xr2, $xr3, $xr2
	xvst	$xr2, $s3, 904
	xvld	$xr2, $s3, 936
	xvld	$xr3, $sp, 1312                 # 32-byte Folded Reload
	xvfadd.d	$xr1, $xr1, $xr3
	xvst	$xr1, $s6, 936
	xvld	$xr1, $s6, 968
	xvfadd.d	$xr2, $xr3, $xr2
	xvst	$xr2, $s3, 936
	xvld	$xr2, $s3, 968
	xvld	$xr3, $sp, 1216                 # 32-byte Folded Reload
	xvfadd.d	$xr1, $xr1, $xr3
	xvst	$xr1, $s6, 968
	xvld	$xr1, $s6, 1000
	xvfadd.d	$xr2, $xr3, $xr2
	xvst	$xr2, $s3, 968
	xvld	$xr2, $s3, 1000
	xvld	$xr3, $sp, 1248                 # 32-byte Folded Reload
	xvfadd.d	$xr1, $xr1, $xr3
	xvst	$xr1, $s6, 1000
	xvld	$xr1, $s6, 1032
	xvfadd.d	$xr2, $xr3, $xr2
	xvst	$xr2, $s3, 1000
	xvld	$xr2, $s3, 1032
	xvld	$xr3, $sp, 1152                 # 32-byte Folded Reload
	xvfadd.d	$xr1, $xr1, $xr3
	xvst	$xr1, $s6, 1032
	xvld	$xr1, $s6, 1064
	xvfadd.d	$xr2, $xr3, $xr2
	xvst	$xr2, $s3, 1032
	xvld	$xr2, $s3, 1064
	xvld	$xr3, $sp, 1184                 # 32-byte Folded Reload
	xvfadd.d	$xr1, $xr1, $xr3
	xvst	$xr1, $s6, 1064
	fld.d	$fa1, $s6, 1096
	xvfadd.d	$xr2, $xr3, $xr2
	xvst	$xr2, $s3, 1064
	fld.d	$fa2, $s3, 1096
	fadd.d	$fa1, $fa1, $ft6
	fst.d	$fa1, $s6, 1096
	fld.d	$fa1, $s6, 1104
	fadd.d	$fa2, $ft6, $fa2
	fst.d	$fa2, $s3, 1096
	fld.d	$fa2, $s3, 1104
	fadd.d	$fa1, $fa1, $ft5
	fst.d	$fa1, $s6, 1104
	fld.d	$fa1, $s6, 1112
	fadd.d	$fa2, $ft5, $fa2
	fst.d	$fa2, $s3, 1104
	fld.d	$fa2, $s3, 1112
	fadd.d	$fa1, $fa1, $ft7
	fst.d	$fa1, $s6, 1112
	xvld	$xr1, $s6, 1120
	fadd.d	$fa2, $ft7, $fa2
	fst.d	$fa2, $s3, 1112
	xvld	$xr2, $s3, 1120
	xvld	$xr3, $sp, 1072                 # 32-byte Folded Reload
	xvfadd.d	$xr1, $xr1, $xr3
	xvst	$xr1, $s6, 1120
	xvld	$xr1, $s6, 1152
	xvfadd.d	$xr2, $xr3, $xr2
	xvst	$xr2, $s3, 1120
	xvld	$xr2, $s3, 1152
	xvld	$xr3, $sp, 1104                 # 32-byte Folded Reload
	xvfadd.d	$xr1, $xr1, $xr3
	xvst	$xr1, $s6, 1152
	xvld	$xr1, $s6, 1184
	xvfadd.d	$xr2, $xr3, $xr2
	xvst	$xr2, $s3, 1152
	xvld	$xr2, $s3, 1184
	xvld	$xr3, $sp, 1008                 # 32-byte Folded Reload
	xvfadd.d	$xr1, $xr1, $xr3
	xvst	$xr1, $s6, 1184
	xvld	$xr1, $s6, 1216
	xvfadd.d	$xr2, $xr3, $xr2
	xvst	$xr2, $s3, 1184
	xvld	$xr2, $s3, 1216
	xvld	$xr3, $sp, 1040                 # 32-byte Folded Reload
	xvfadd.d	$xr1, $xr1, $xr3
	xvst	$xr1, $s6, 1216
	xvld	$xr1, $s6, 1248
	xvfadd.d	$xr2, $xr3, $xr2
	xvst	$xr2, $s3, 1216
	xvld	$xr2, $s3, 1248
	xvld	$xr3, $sp, 944                  # 32-byte Folded Reload
	xvfadd.d	$xr1, $xr1, $xr3
	xvst	$xr1, $s6, 1248
	xvld	$xr1, $s6, 1280
	xvfadd.d	$xr2, $xr3, $xr2
	xvst	$xr2, $s3, 1248
	xvld	$xr2, $s3, 1280
	xvld	$xr3, $sp, 976                  # 32-byte Folded Reload
	xvfadd.d	$xr1, $xr1, $xr3
	xvst	$xr1, $s6, 1280
	xvld	$xr1, $s6, 1312
	xvfadd.d	$xr2, $xr3, $xr2
	xvst	$xr2, $s3, 1280
	xvld	$xr2, $s3, 1312
	xvld	$xr3, $sp, 880                  # 32-byte Folded Reload
	xvfadd.d	$xr1, $xr1, $xr3
	xvst	$xr1, $s6, 1312
	xvld	$xr1, $s6, 1344
	xvfadd.d	$xr2, $xr3, $xr2
	xvst	$xr2, $s3, 1312
	xvld	$xr2, $s3, 1344
	xvld	$xr3, $sp, 912                  # 32-byte Folded Reload
	xvfadd.d	$xr1, $xr1, $xr3
	xvst	$xr1, $s6, 1344
	fld.d	$fa1, $s6, 1376
	xvfadd.d	$xr2, $xr3, $xr2
	xvst	$xr2, $s3, 1344
	fld.d	$fa2, $s3, 1376
	fadd.d	$fa1, $fa1, $ft8
	fst.d	$fa1, $s6, 1376
	fld.d	$fa1, $s6, 1384
	fadd.d	$fa2, $ft8, $fa2
	fst.d	$fa2, $s3, 1376
	fld.d	$fa2, $s3, 1384
	fadd.d	$fa1, $fa1, $ft11
	fst.d	$fa1, $s6, 1384
	fld.d	$fa1, $s6, 1392
	fadd.d	$fa2, $ft11, $fa2
	fst.d	$fa2, $s3, 1384
	fld.d	$fa2, $s3, 1392
	fadd.d	$fa1, $fa1, $ft10
	fst.d	$fa1, $s6, 1392
	xvld	$xr1, $s6, 1400
	fadd.d	$fa2, $ft10, $fa2
	fst.d	$fa2, $s3, 1392
	xvld	$xr2, $s3, 1400
	xvld	$xr3, $sp, 816                  # 32-byte Folded Reload
	xvfadd.d	$xr1, $xr1, $xr3
	xvst	$xr1, $s6, 1400
	xvld	$xr1, $s6, 1432
	xvfadd.d	$xr2, $xr3, $xr2
	xvst	$xr2, $s3, 1400
	xvld	$xr2, $s3, 1432
	xvld	$xr3, $sp, 848                  # 32-byte Folded Reload
	xvfadd.d	$xr1, $xr1, $xr3
	xvst	$xr1, $s6, 1432
	xvld	$xr1, $s6, 1464
	xvfadd.d	$xr2, $xr3, $xr2
	xvst	$xr2, $s3, 1432
	xvld	$xr2, $s3, 1464
	xvld	$xr3, $sp, 752                  # 32-byte Folded Reload
	xvfadd.d	$xr1, $xr1, $xr3
	xvst	$xr1, $s6, 1464
	xvld	$xr1, $s6, 1496
	xvfadd.d	$xr2, $xr3, $xr2
	xvst	$xr2, $s3, 1464
	xvld	$xr2, $s3, 1496
	xvld	$xr3, $sp, 784                  # 32-byte Folded Reload
	xvfadd.d	$xr1, $xr1, $xr3
	xvst	$xr1, $s6, 1496
	xvld	$xr1, $s6, 1528
	xvfadd.d	$xr2, $xr3, $xr2
	xvst	$xr2, $s3, 1496
	xvld	$xr2, $s3, 1528
	xvld	$xr3, $sp, 688                  # 32-byte Folded Reload
	xvfadd.d	$xr1, $xr1, $xr3
	xvst	$xr1, $s6, 1528
	xvld	$xr1, $s6, 1560
	xvfadd.d	$xr2, $xr3, $xr2
	xvst	$xr2, $s3, 1528
	xvld	$xr2, $s3, 1560
	xvld	$xr3, $sp, 720                  # 32-byte Folded Reload
	xvfadd.d	$xr1, $xr1, $xr3
	xvst	$xr1, $s6, 1560
	xvld	$xr1, $s6, 1592
	xvfadd.d	$xr2, $xr3, $xr2
	xvst	$xr2, $s3, 1560
	xvld	$xr2, $s3, 1592
	xvld	$xr3, $sp, 624                  # 32-byte Folded Reload
	xvfadd.d	$xr1, $xr1, $xr3
	xvst	$xr1, $s6, 1592
	xvld	$xr1, $s6, 1624
	xvfadd.d	$xr2, $xr3, $xr2
	xvst	$xr2, $s3, 1592
	xvld	$xr2, $s3, 1624
	xvld	$xr3, $sp, 656                  # 32-byte Folded Reload
	xvfadd.d	$xr1, $xr1, $xr3
	xvst	$xr1, $s6, 1624
	fld.d	$fa1, $s6, 1656
	xvfadd.d	$xr2, $xr3, $xr2
	xvst	$xr2, $s3, 1624
	fld.d	$fa2, $s3, 1656
	fadd.d	$fa1, $fa1, $ft12
	fst.d	$fa1, $s6, 1656
	fld.d	$fa1, $s6, 1664
	fadd.d	$fa2, $ft12, $fa2
	fst.d	$fa2, $s3, 1656
	fld.d	$fa2, $s3, 1664
	fadd.d	$fa1, $fa1, $ft13
	fst.d	$fa1, $s6, 1664
	fld.d	$fa1, $s6, 1672
	fadd.d	$fa2, $ft13, $fa2
	fst.d	$fa2, $s3, 1664
	fld.d	$fa2, $s3, 1672
	fadd.d	$fa1, $fa1, $ft1
	fst.d	$fa1, $s6, 1672
	xvld	$xr1, $s6, 1680
	fadd.d	$fa2, $ft1, $fa2
	fst.d	$fa2, $s3, 1672
	xvld	$xr2, $s3, 1680
	xvld	$xr3, $sp, 544                  # 32-byte Folded Reload
	xvfadd.d	$xr1, $xr1, $xr3
	xvst	$xr1, $s6, 1680
	xvld	$xr1, $s6, 1712
	xvfadd.d	$xr2, $xr3, $xr2
	xvst	$xr2, $s3, 1680
	xvld	$xr2, $s3, 1712
	xvld	$xr3, $sp, 576                  # 32-byte Folded Reload
	xvfadd.d	$xr1, $xr1, $xr3
	xvst	$xr1, $s6, 1712
	xvld	$xr1, $s6, 1744
	xvfadd.d	$xr2, $xr3, $xr2
	xvst	$xr2, $s3, 1712
	xvld	$xr2, $s3, 1744
	xvld	$xr3, $sp, 480                  # 32-byte Folded Reload
	xvfadd.d	$xr1, $xr1, $xr3
	xvst	$xr1, $s6, 1744
	xvld	$xr1, $s6, 1776
	xvfadd.d	$xr2, $xr3, $xr2
	xvst	$xr2, $s3, 1744
	xvld	$xr2, $s3, 1776
	xvld	$xr3, $sp, 512                  # 32-byte Folded Reload
	xvfadd.d	$xr1, $xr1, $xr3
	xvst	$xr1, $s6, 1776
	xvld	$xr1, $s6, 1808
	xvfadd.d	$xr2, $xr3, $xr2
	xvst	$xr2, $s3, 1776
	xvld	$xr2, $s3, 1808
	xvld	$xr3, $sp, 416                  # 32-byte Folded Reload
	xvfadd.d	$xr1, $xr1, $xr3
	xvst	$xr1, $s6, 1808
	xvld	$xr1, $s6, 1840
	xvfadd.d	$xr2, $xr3, $xr2
	xvst	$xr2, $s3, 1808
	xvld	$xr2, $s3, 1840
	xvld	$xr3, $sp, 448                  # 32-byte Folded Reload
	xvfadd.d	$xr1, $xr1, $xr3
	xvst	$xr1, $s6, 1840
	xvld	$xr1, $s6, 1872
	xvfadd.d	$xr2, $xr3, $xr2
	xvst	$xr2, $s3, 1840
	xvld	$xr2, $s3, 1872
	xvld	$xr3, $sp, 352                  # 32-byte Folded Reload
	xvfadd.d	$xr1, $xr1, $xr3
	xvst	$xr1, $s6, 1872
	xvld	$xr1, $s6, 1904
	xvfadd.d	$xr2, $xr3, $xr2
	xvst	$xr2, $s3, 1872
	xvld	$xr2, $s3, 1904
	xvld	$xr3, $sp, 384                  # 32-byte Folded Reload
	xvfadd.d	$xr1, $xr1, $xr3
	xvst	$xr1, $s6, 1904
	fld.d	$fa1, $s6, 1936
	xvfadd.d	$xr2, $xr3, $xr2
	xvst	$xr2, $s3, 1904
	fld.d	$fa2, $s3, 1936
	fadd.d	$fa1, $fa1, $fs4
	fst.d	$fa1, $s6, 1936
	fld.d	$fa1, $s6, 1944
	fadd.d	$fa2, $fs4, $fa2
	fst.d	$fa2, $s3, 1936
	fld.d	$fa2, $s3, 1944
	fadd.d	$fa1, $fa1, $fs6
	fst.d	$fa1, $s6, 1944
	fld.d	$fa1, $s6, 1952
	fadd.d	$fa2, $fs6, $fa2
	fst.d	$fa2, $s3, 1944
	fld.d	$fa2, $s3, 1952
	fadd.d	$fa1, $fa1, $fs7
	fst.d	$fa1, $s6, 1952
	xvld	$xr1, $s6, 1960
	fadd.d	$fa2, $fs7, $fa2
	fst.d	$fa2, $s3, 1952
	xvld	$xr2, $s3, 1960
	xvld	$xr3, $sp, 1872                 # 32-byte Folded Reload
	xvfadd.d	$xr1, $xr1, $xr3
	xvst	$xr1, $s6, 1960
	xvld	$xr1, $s6, 1992
	xvfadd.d	$xr2, $xr3, $xr2
	xvst	$xr2, $s3, 1960
	xvld	$xr2, $s3, 1992
	xvld	$xr3, $sp, 1904                 # 32-byte Folded Reload
	xvfadd.d	$xr1, $xr1, $xr3
	xvst	$xr1, $s6, 1992
	xvld	$xr1, $s6, 2024
	xvfadd.d	$xr2, $xr3, $xr2
	xvst	$xr2, $s3, 1992
	xvld	$xr2, $s3, 2024
	xvld	$xr3, $sp, 288                  # 32-byte Folded Reload
	xvfadd.d	$xr1, $xr1, $xr3
	xvst	$xr1, $s6, 2024
	xvldx	$xr1, $s6, $a3
	xvfadd.d	$xr2, $xr3, $xr2
	xvst	$xr2, $s3, 2024
	xvldx	$xr2, $s3, $a3
	xvld	$xr3, $sp, 320                  # 32-byte Folded Reload
	xvfadd.d	$xr1, $xr1, $xr3
	xvstx	$xr1, $s6, $a3
	xvldx	$xr1, $s6, $a4
	xvfadd.d	$xr2, $xr3, $xr2
	xvstx	$xr2, $s3, $a3
	xvldx	$xr2, $s3, $a4
	xvld	$xr3, $sp, 224                  # 32-byte Folded Reload
	xvfadd.d	$xr1, $xr1, $xr3
	xvstx	$xr1, $s6, $a4
	xvldx	$xr1, $s6, $t6
	xvfadd.d	$xr2, $xr3, $xr2
	xvstx	$xr2, $s3, $a4
	xvldx	$xr2, $s3, $t6
	xvld	$xr3, $sp, 256                  # 32-byte Folded Reload
	xvfadd.d	$xr1, $xr1, $xr3
	xvstx	$xr1, $s6, $t6
	xvldx	$xr1, $s6, $t7
	xvfadd.d	$xr2, $xr3, $xr2
	xvstx	$xr2, $s3, $t6
	xvldx	$xr2, $s3, $t7
	xvld	$xr3, $sp, 192                  # 32-byte Folded Reload
	xvfadd.d	$xr1, $xr1, $xr3
	xvstx	$xr1, $s6, $t7
	xvldx	$xr1, $s6, $t8
	xvfadd.d	$xr2, $xr3, $xr2
	xvstx	$xr2, $s3, $t7
	xvldx	$xr2, $s3, $t8
	xvfadd.d	$xr1, $xr1, $xr27
	xvstx	$xr1, $s6, $t8
	fldx.d	$fa1, $s6, $fp
	xvfadd.d	$xr2, $xr27, $xr2
	xvstx	$xr2, $s3, $t8
	fldx.d	$fa2, $s3, $fp
	fadd.d	$fa1, $fa1, $ft9
	fstx.d	$fa1, $s6, $fp
	fldx.d	$fa1, $s6, $s0
	fadd.d	$fa2, $ft9, $fa2
	fstx.d	$fa2, $s3, $fp
	fldx.d	$fa2, $s3, $s0
	fadd.d	$fa1, $fa1, $fa0
	fstx.d	$fa1, $s6, $s0
	fldx.d	$fa1, $s6, $s4
	fadd.d	$fa0, $fa0, $fa2
	fstx.d	$fa0, $s3, $s0
	fldx.d	$fa0, $s3, $s4
	fadd.d	$fa1, $fa1, $ft4
	fstx.d	$fa1, $s6, $s4
	ld.d	$a4, $sp, 152                   # 8-byte Folded Reload
	ld.w	$a3, $a4, %pc_lo12(iteration_count)
	fadd.d	$fa0, $ft4, $fa0
	ld.d	$a2, $sp, 144                   # 8-byte Folded Reload
	ld.w	$a2, $a2, %pc_lo12(numpats)
	fstx.d	$fa0, $s3, $s4
	addi.d	$a3, $a3, 1
	addi.d	$ra, $ra, 1
	st.w	$a3, $a4, %pc_lo12(iteration_count)
	ori	$s4, $zero, 280
	xvld	$xr6, $sp, 112                  # 32-byte Folded Reload
	vld	$vr7, $sp, 96                   # 16-byte Folded Reload
	blt	$ra, $a2, .LBB15_25
# %bb.72:                               # %._crit_edge
                                        #   in Loop: Header=BB15_25 Depth=2
	ld.d	$a4, $sp, 56                    # 8-byte Folded Reload
	ld.w	$a3, $a4, %pc_lo12(numpasses)
	addi.d	$a3, $a3, 1
	st.w	$a3, $a4, %pc_lo12(numpasses)
	fld.d	$fs1, $sp, 40                   # 8-byte Folded Reload
	blt	$a2, $a6, .LBB15_85
# %bb.73:                               # %.lr.ph.preheader.i.i
                                        #   in Loop: Header=BB15_25 Depth=2
	bstrpick.d	$a3, $a2, 31, 0
	move	$a4, $a2
	fmov.d	$fa1, $fs0
	vldi	$vr8, -976
	.p2align	4, , 16
.LBB15_74:                              # %.lr.ph.i.i
                                        #   Parent Loop BB15_5 Depth=1
                                        #     Parent Loop BB15_25 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fld.d	$fa0, $a1, 0
	fld.d	$fa2, $a0, 0
	fcmp.clt.d	$fcc0, $fa1, $fa0
	fsel	$fa1, $fa1, $fa0, $fcc0
	fadd.d	$fs0, $fs0, $fa2
	addi.d	$a4, $a4, -1
	addi.d	$a0, $a0, 8
	addi.d	$a1, $a1, 8
	bnez	$a4, .LBB15_74
# %bb.75:                               # %.lr.ph.i
                                        #   in Loop: Header=BB15_25 Depth=2
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	fst.d	$fa1, $a0, %pc_lo12(worst_error)
	movgr2fr.d	$fa0, $a3
	pcalau12i	$a0, %pc_hi20(.LCPI15_3)
	fld.d	$fa2, $a0, %pc_lo12(.LCPI15_3)
	ffint.d.l	$fa0, $fa0
	fdiv.d	$fa0, $fs0, $fa0
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	fst.d	$fa0, $a0, %pc_lo12(average_error)
	fcmp.cult.d	$fcc0, $fa1, $fa2
	lu52i.d	$a0, $zero, 1027
	xvreplgr2vr.d	$xr0, $a0
	bcnez	$fcc0, .LBB15_86
# %bb.76:                               # %.lr.ph.split.i.preheader
                                        #   in Loop: Header=BB15_25 Depth=2
	fld.d	$fs0, $sp, 48                   # 8-byte Folded Reload
	ori	$a0, $zero, 8
	bgeu	$a2, $a0, .LBB15_78
# %bb.77:                               #   in Loop: Header=BB15_25 Depth=2
	move	$a0, $zero
	move	$a1, $zero
	b	.LBB15_81
	.p2align	4, , 16
.LBB15_78:                              # %vector.ph76
                                        #   in Loop: Header=BB15_25 Depth=2
	pcalau12i	$a1, %pc_hi20(tot_out_error+32)
	bstrpick.d	$a0, $a2, 30, 3
	slli.d	$a0, $a0, 3
	addi.d	$a1, $a1, %pc_lo12(tot_out_error+32)
	move	$a3, $a0
	vori.b	$vr1, $vr7, 0
	vori.b	$vr2, $vr7, 0
	.p2align	4, , 16
.LBB15_79:                              # %vector.body79
                                        #   Parent Loop BB15_5 Depth=1
                                        #     Parent Loop BB15_25 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	xvld	$xr3, $a1, -32
	xvld	$xr4, $a1, 0
	xvfcmp.cle.d	$xr3, $xr0, $xr3
	xvpickve2gr.d	$a4, $xr3, 0
	vinsgr2vr.w	$vr5, $a4, 0
	xvpickve2gr.d	$a4, $xr3, 1
	vinsgr2vr.w	$vr5, $a4, 1
	xvpickve2gr.d	$a4, $xr3, 2
	vinsgr2vr.w	$vr5, $a4, 2
	xvpickve2gr.d	$a4, $xr3, 3
	vinsgr2vr.w	$vr5, $a4, 3
	xvfcmp.cle.d	$xr3, $xr0, $xr4
	xvpickve2gr.d	$a4, $xr3, 0
	vinsgr2vr.w	$vr4, $a4, 0
	xvpickve2gr.d	$a4, $xr3, 1
	vinsgr2vr.w	$vr4, $a4, 1
	xvpickve2gr.d	$a4, $xr3, 2
	vinsgr2vr.w	$vr4, $a4, 2
	xvpickve2gr.d	$a4, $xr3, 3
	vinsgr2vr.w	$vr4, $a4, 3
	vor.v	$vr1, $vr1, $vr5
	vor.v	$vr2, $vr2, $vr4
	addi.d	$a3, $a3, -8
	addi.d	$a1, $a1, 64
	bnez	$a3, .LBB15_79
# %bb.80:                               # %middle.block86
                                        #   in Loop: Header=BB15_25 Depth=2
	vor.v	$vr0, $vr2, $vr1
	vslli.w	$vr0, $vr0, 31
	vmskltz.w	$vr0, $vr0
	vpickve2gr.hu	$a1, $vr0, 0
	sltu	$a1, $zero, $a1
	beq	$a0, $a2, .LBB15_83
.LBB15_81:                              # %.lr.ph.split.i.preheader196
                                        #   in Loop: Header=BB15_25 Depth=2
	sub.d	$a2, $a2, $a0
	pcalau12i	$a3, %pc_hi20(tot_out_error)
	addi.d	$a3, $a3, %pc_lo12(tot_out_error)
	alsl.d	$a0, $a0, $a3, 3
	.p2align	4, , 16
.LBB15_82:                              # %.lr.ph.split.i
                                        #   Parent Loop BB15_5 Depth=1
                                        #     Parent Loop BB15_25 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fld.d	$fa0, $a0, 0
	fcmp.cult.d	$fcc0, $fa0, $ft0
	movcf2gr	$a3, $fcc0
	masknez	$a4, $a6, $a3
	maskeqz	$a1, $a1, $a3
	or	$a1, $a1, $a4
	addi.d	$a2, $a2, -1
	addi.d	$a0, $a0, 8
	bnez	$a2, .LBB15_82
.LBB15_83:                              # %._crit_edge.i
                                        #   in Loop: Header=BB15_25 Depth=2
	bnez	$a1, .LBB15_88
# %bb.84:                               # %check_out_error.exit
                                        #   in Loop: Header=BB15_25 Depth=2
	move	$ra, $zero
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	st.w	$zero, $a0, %pc_lo12(learned)
	b	.LBB15_25
	.p2align	4, , 16
.LBB15_85:                              #   in Loop: Header=BB15_5 Depth=1
	fld.d	$fs0, $sp, 48                   # 8-byte Folded Reload
	b	.LBB15_3
	.p2align	4, , 16
.LBB15_86:                              # %.lr.ph.split.us.i.preheader
                                        #   in Loop: Header=BB15_5 Depth=1
	fld.d	$fs0, $sp, 48                   # 8-byte Folded Reload
	ori	$a0, $zero, 8
	bgeu	$a2, $a0, .LBB15_89
# %bb.87:                               #   in Loop: Header=BB15_5 Depth=1
	move	$a0, $zero
	move	$a1, $zero
	ld.d	$s0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ori	$s3, $zero, 512
	b	.LBB15_92
	.p2align	4, , 16
.LBB15_88:                              #   in Loop: Header=BB15_5 Depth=1
	addi.d	$a0, $zero, -1
	b	.LBB15_4
.LBB15_89:                              # %vector.ph
                                        #   in Loop: Header=BB15_5 Depth=1
	pcalau12i	$a1, %pc_hi20(tot_out_error+32)
	bstrpick.d	$a0, $a2, 30, 3
	slli.d	$a0, $a0, 3
	vrepli.b	$vr1, 0
	addi.d	$a1, $a1, %pc_lo12(tot_out_error+32)
	move	$a4, $a0
	vori.b	$vr2, $vr1, 0
	ld.d	$s0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ori	$s3, $zero, 512
	.p2align	4, , 16
.LBB15_90:                              # %vector.body
                                        #   Parent Loop BB15_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvld	$xr3, $a1, -32
	xvld	$xr4, $a1, 0
	xvfcmp.cle.d	$xr3, $xr0, $xr3
	xvpickve2gr.d	$a5, $xr3, 0
	vinsgr2vr.w	$vr5, $a5, 0
	xvpickve2gr.d	$a5, $xr3, 1
	vinsgr2vr.w	$vr5, $a5, 1
	xvpickve2gr.d	$a5, $xr3, 2
	vinsgr2vr.w	$vr5, $a5, 2
	xvpickve2gr.d	$a5, $xr3, 3
	vinsgr2vr.w	$vr5, $a5, 3
	xvfcmp.cle.d	$xr3, $xr0, $xr4
	xvpickve2gr.d	$a5, $xr3, 0
	vinsgr2vr.w	$vr4, $a5, 0
	xvpickve2gr.d	$a5, $xr3, 1
	vinsgr2vr.w	$vr4, $a5, 1
	xvpickve2gr.d	$a5, $xr3, 2
	vinsgr2vr.w	$vr4, $a5, 2
	xvpickve2gr.d	$a5, $xr3, 3
	vinsgr2vr.w	$vr4, $a5, 3
	vor.v	$vr1, $vr1, $vr5
	vor.v	$vr2, $vr2, $vr4
	addi.d	$a4, $a4, -8
	addi.d	$a1, $a1, 64
	bnez	$a4, .LBB15_90
# %bb.91:                               # %middle.block
                                        #   in Loop: Header=BB15_5 Depth=1
	vor.v	$vr0, $vr2, $vr1
	vslli.w	$vr0, $vr0, 31
	vmskltz.w	$vr0, $vr0
	vpickve2gr.hu	$a1, $vr0, 0
	sltu	$a1, $zero, $a1
	beq	$a0, $a2, .LBB15_94
.LBB15_92:                              # %.lr.ph.split.us.i.preheader197
                                        #   in Loop: Header=BB15_5 Depth=1
	sub.d	$a2, $a3, $a0
	pcalau12i	$a3, %pc_hi20(tot_out_error)
	addi.d	$a3, $a3, %pc_lo12(tot_out_error)
	alsl.d	$a0, $a0, $a3, 3
	.p2align	4, , 16
.LBB15_93:                              # %.lr.ph.split.us.i
                                        #   Parent Loop BB15_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa0, $a0, 0
	fcmp.cult.d	$fcc0, $fa0, $ft0
	movcf2gr	$a3, $fcc0
	masknez	$a4, $a6, $a3
	maskeqz	$a1, $a1, $a3
	or	$a1, $a1, $a4
	addi.d	$a2, $a2, -1
	addi.d	$a0, $a0, 8
	bnez	$a2, .LBB15_93
.LBB15_94:                              # %._crit_edge.i.thread
                                        #   in Loop: Header=BB15_5 Depth=1
	sltu	$a0, $zero, $a1
	sub.d	$a0, $zero, $a0
	ori	$a0, $a0, 1
	addi.d	$s0, $s0, -1
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	st.w	$a0, $a1, %pc_lo12(learned)
	bnez	$s0, .LBB15_5
.LBB15_95:                              # %._crit_edge28
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 976
	fld.d	$fs7, $sp, 1880                 # 8-byte Folded Reload
	fld.d	$fs6, $sp, 1888                 # 8-byte Folded Reload
	fld.d	$fs5, $sp, 1896                 # 8-byte Folded Reload
	fld.d	$fs4, $sp, 1904                 # 8-byte Folded Reload
	fld.d	$fs3, $sp, 1912                 # 8-byte Folded Reload
	fld.d	$fs2, $sp, 1920                 # 8-byte Folded Reload
	fld.d	$fs1, $sp, 1928                 # 8-byte Folded Reload
	fld.d	$fs0, $sp, 1936                 # 8-byte Folded Reload
	ld.d	$s8, $sp, 1944                  # 8-byte Folded Reload
	ld.d	$s7, $sp, 1952                  # 8-byte Folded Reload
	ld.d	$s6, $sp, 1960                  # 8-byte Folded Reload
	ld.d	$s5, $sp, 1968                  # 8-byte Folded Reload
	ld.d	$s4, $sp, 1976                  # 8-byte Folded Reload
	ld.d	$s3, $sp, 1984                  # 8-byte Folded Reload
	ld.d	$s2, $sp, 1992                  # 8-byte Folded Reload
	ld.d	$s1, $sp, 2000                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 2008                  # 8-byte Folded Reload
	ld.d	$fp, $sp, 2016                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 2024                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 2032
	pcaddu18i	$t8, %call36(StopStopwatch)
	jr	$t8
.Lfunc_end15:
	.size	DoNNetIteration, .Lfunc_end15-DoNNetIteration
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function DoLU
.LCPI16_0:
	.dword	0x4530000000100000              # double 1.9342813118337666E+25
.LCPI16_1:
	.dword	0x407f400000000000              # double 500
	.text
	.globl	DoLU
	.p2align	5
	.type	DoLU,@function
DoLU:                                   # @DoLU
# %bb.0:
	addi.d	$sp, $sp, -160
	st.d	$ra, $sp, 152                   # 8-byte Folded Spill
	st.d	$fp, $sp, 144                   # 8-byte Folded Spill
	st.d	$s0, $sp, 136                   # 8-byte Folded Spill
	st.d	$s1, $sp, 128                   # 8-byte Folded Spill
	st.d	$s2, $sp, 120                   # 8-byte Folded Spill
	st.d	$s3, $sp, 112                   # 8-byte Folded Spill
	st.d	$s4, $sp, 104                   # 8-byte Folded Spill
	st.d	$s5, $sp, 96                    # 8-byte Folded Spill
	st.d	$s6, $sp, 88                    # 8-byte Folded Spill
	st.d	$s7, $sp, 80                    # 8-byte Folded Spill
	st.d	$s8, $sp, 72                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 64                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 56                   # 8-byte Folded Spill
	fst.d	$fs2, $sp, 48                   # 8-byte Folded Spill
	lu12i.w	$a0, 19
	ori	$a0, $a0, 3784
	addi.d	$a1, $sp, 40
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(AllocateMemory)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	ori	$a0, $zero, 808
	addi.d	$a1, $sp, 40
	pcaddu18i	$ra, %call36(AllocateMemory)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	ori	$a0, $zero, 808
	addi.d	$a1, $sp, 40
	pcaddu18i	$ra, %call36(AllocateMemory)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(LUtempvv)
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	st.d	$a0, $a1, %pc_lo12(LUtempvv)
	ori	$a0, $zero, 13
	pcaddu18i	$ra, %call36(randnum)
	jirl	$ra, $ra, 0
	move	$s1, $zero
	movgr2fr.d	$fs0, $zero
	ori	$s2, $zero, 101
	move	$s3, $fp
	b	.LBB16_2
	.p2align	4, , 16
.LBB16_1:                               #   in Loop: Header=BB16_2 Depth=1
	addi.d	$s1, $s1, 1
	addi.d	$s3, $s3, 808
	beq	$s1, $s2, .LBB16_6
.LBB16_2:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB16_4 Depth 2
	ori	$a0, $zero, 100
	pcaddu18i	$ra, %call36(abs_randwc)
	jirl	$ra, $ra, 0
	move	$s4, $zero
	addi.d	$a0, $a0, 1
	bstrpick.d	$a0, $a0, 31, 0
	movgr2fr.d	$fa0, $a0
	ffint.d.l	$fa0, $fa0
	slli.d	$a0, $s1, 3
	fstx.d	$fa0, $s0, $a0
	move	$s5, $s3
	b	.LBB16_4
	.p2align	4, , 16
.LBB16_3:                               #   in Loop: Header=BB16_4 Depth=2
	fst.d	$fa0, $s5, 0
	addi.d	$s4, $s4, 1
	addi.d	$s5, $s5, 8
	beq	$s4, $s2, .LBB16_1
.LBB16_4:                               #   Parent Loop BB16_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fmov.d	$fa0, $fs0
	bne	$s1, $s4, .LBB16_3
# %bb.5:                                #   in Loop: Header=BB16_4 Depth=2
	ori	$a0, $zero, 1000
	pcaddu18i	$ra, %call36(abs_randwc)
	jirl	$ra, $ra, 0
	addi.d	$a0, $a0, 1
	bstrpick.d	$a0, $a0, 31, 0
	movgr2fr.d	$fa0, $a0
	ffint.d.l	$fa0, $fa0
	b	.LBB16_3
.LBB16_6:                               # %.preheader.i.preheader
	move	$s3, $zero
	addi.d	$s4, $fp, 808
	ori	$s5, $zero, 808
	b	.LBB16_8
	.p2align	4, , 16
.LBB16_7:                               #   in Loop: Header=BB16_8 Depth=1
	addi.d	$s3, $s3, 1
	beq	$s3, $s5, .LBB16_16
.LBB16_8:                               # %.preheader.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB16_14 Depth 2
	ori	$a0, $zero, 101
	pcaddu18i	$ra, %call36(abs_randwc)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	ori	$a0, $zero, 101
	pcaddu18i	$ra, %call36(abs_randwc)
	jirl	$ra, $ra, 0
	beq	$s2, $a0, .LBB16_7
# %bb.9:                                # %vector.memcheck
                                        #   in Loop: Header=BB16_8 Depth=1
	bstrpick.d	$a1, $s2, 31, 0
	sltu	$a2, $s2, $a0
	bstrpick.d	$a0, $a0, 31, 0
	movgr2cf	$fcc0, $a2
	vldi	$vr0, -912
	vldi	$vr1, -784
	fsel	$fa0, $fa1, $fa0, $fcc0
	mul.d	$a4, $a1, $s5
	add.d	$a2, $fp, $a4
	mul.d	$a5, $a0, $s5
	add.d	$a6, $s4, $a5
	add.d	$a3, $fp, $a5
	bgeu	$a2, $a6, .LBB16_12
# %bb.10:                               # %vector.memcheck
                                        #   in Loop: Header=BB16_8 Depth=1
	add.d	$a6, $s4, $a4
	bgeu	$a3, $a6, .LBB16_12
# %bb.11:                               #   in Loop: Header=BB16_8 Depth=1
	move	$a4, $zero
	b	.LBB16_13
	.p2align	4, , 16
.LBB16_12:                              # %vector.body
                                        #   in Loop: Header=BB16_8 Depth=1
	xvldx	$xr2, $fp, $a5
	xvld	$xr3, $a3, 32
	xvldx	$xr4, $fp, $a4
	xvld	$xr5, $a2, 32
	xvreplve0.d	$xr1, $xr0
	xvfmadd.d	$xr2, $xr2, $xr1, $xr4
	xvfmadd.d	$xr3, $xr3, $xr1, $xr5
	xvld	$xr4, $a3, 64
	xvld	$xr5, $a3, 96
	xvld	$xr6, $a2, 64
	xvld	$xr7, $a2, 96
	xvstx	$xr2, $fp, $a4
	xvst	$xr3, $a2, 32
	xvfmadd.d	$xr2, $xr4, $xr1, $xr6
	xvfmadd.d	$xr3, $xr5, $xr1, $xr7
	xvld	$xr4, $a3, 128
	xvld	$xr5, $a3, 160
	xvld	$xr6, $a2, 128
	xvld	$xr7, $a2, 160
	xvst	$xr2, $a2, 64
	xvst	$xr3, $a2, 96
	xvfmadd.d	$xr2, $xr4, $xr1, $xr6
	xvfmadd.d	$xr3, $xr5, $xr1, $xr7
	xvld	$xr4, $a3, 192
	xvld	$xr5, $a3, 224
	xvld	$xr6, $a2, 192
	xvld	$xr7, $a2, 224
	xvst	$xr2, $a2, 128
	xvst	$xr3, $a2, 160
	xvfmadd.d	$xr2, $xr4, $xr1, $xr6
	xvfmadd.d	$xr3, $xr5, $xr1, $xr7
	xvld	$xr4, $a3, 256
	xvld	$xr5, $a3, 288
	xvld	$xr6, $a2, 256
	xvld	$xr7, $a2, 288
	xvst	$xr2, $a2, 192
	xvst	$xr3, $a2, 224
	xvfmadd.d	$xr2, $xr4, $xr1, $xr6
	xvfmadd.d	$xr3, $xr5, $xr1, $xr7
	xvld	$xr4, $a3, 320
	xvld	$xr5, $a3, 352
	xvld	$xr6, $a2, 320
	xvld	$xr7, $a2, 352
	xvst	$xr2, $a2, 256
	xvst	$xr3, $a2, 288
	xvfmadd.d	$xr2, $xr4, $xr1, $xr6
	xvfmadd.d	$xr3, $xr5, $xr1, $xr7
	xvld	$xr4, $a3, 384
	xvld	$xr5, $a3, 416
	xvld	$xr6, $a2, 384
	xvld	$xr7, $a2, 416
	xvst	$xr2, $a2, 320
	xvst	$xr3, $a2, 352
	xvfmadd.d	$xr2, $xr4, $xr1, $xr6
	xvfmadd.d	$xr3, $xr5, $xr1, $xr7
	xvld	$xr4, $a3, 448
	xvld	$xr5, $a3, 480
	xvld	$xr6, $a2, 448
	xvld	$xr7, $a2, 480
	xvst	$xr2, $a2, 384
	xvst	$xr3, $a2, 416
	xvfmadd.d	$xr2, $xr4, $xr1, $xr6
	xvfmadd.d	$xr3, $xr5, $xr1, $xr7
	xvld	$xr4, $a3, 512
	xvld	$xr5, $a3, 544
	xvld	$xr6, $a2, 512
	xvld	$xr7, $a2, 544
	xvst	$xr2, $a2, 448
	xvst	$xr3, $a2, 480
	xvfmadd.d	$xr2, $xr4, $xr1, $xr6
	xvfmadd.d	$xr3, $xr5, $xr1, $xr7
	xvld	$xr4, $a3, 576
	xvld	$xr5, $a3, 608
	xvld	$xr6, $a2, 576
	xvld	$xr7, $a2, 608
	xvst	$xr2, $a2, 512
	xvst	$xr3, $a2, 544
	xvfmadd.d	$xr2, $xr4, $xr1, $xr6
	xvfmadd.d	$xr3, $xr5, $xr1, $xr7
	xvld	$xr4, $a3, 640
	xvld	$xr5, $a3, 672
	xvld	$xr6, $a2, 640
	xvld	$xr7, $a2, 672
	xvst	$xr2, $a2, 576
	xvst	$xr3, $a2, 608
	xvfmadd.d	$xr2, $xr4, $xr1, $xr6
	xvfmadd.d	$xr3, $xr5, $xr1, $xr7
	xvld	$xr4, $a3, 704
	xvld	$xr5, $a3, 736
	xvld	$xr6, $a2, 704
	xvld	$xr7, $a2, 736
	xvst	$xr2, $a2, 640
	xvst	$xr3, $a2, 672
	xvfmadd.d	$xr2, $xr4, $xr1, $xr6
	xvfmadd.d	$xr1, $xr5, $xr1, $xr7
	xvst	$xr2, $a2, 704
	xvst	$xr1, $a2, 736
	ori	$a4, $zero, 96
.LBB16_13:                              # %scalar.ph.preheader
                                        #   in Loop: Header=BB16_8 Depth=1
	slli.d	$a4, $a4, 3
	.p2align	4, , 16
.LBB16_14:                              # %scalar.ph
                                        #   Parent Loop BB16_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fldx.d	$fa1, $a3, $a4
	fldx.d	$fa2, $a2, $a4
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	fstx.d	$fa1, $a2, $a4
	addi.d	$a4, $a4, 8
	bne	$a4, $s5, .LBB16_14
# %bb.15:                               # %.loopexit
                                        #   in Loop: Header=BB16_8 Depth=1
	slli.d	$a0, $a0, 3
	fldx.d	$fa1, $s0, $a0
	slli.d	$a0, $a1, 3
	fldx.d	$fa2, $s0, $a0
	fmadd.d	$fa0, $fa1, $fa0, $fa2
	fstx.d	$fa0, $s0, $a0
	b	.LBB16_7
.LBB16_16:                              # %build_problem.exit
	pcalau12i	$a0, %got_pc_hi20(global_lustruct)
	ld.d	$s8, $a0, %got_pc_lo12(global_lustruct)
	ld.w	$a0, $s8, 0
	beqz	$a0, .LBB16_24
# %bb.17:
	ld.d	$a0, $s8, 16
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	mul.d	$a0, $a0, $a1
	addi.d	$a1, $sp, 40
	pcaddu18i	$ra, %call36(AllocateMemory)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 40
	move	$s2, $a0
	beqz	$a1, .LBB16_19
# %bb.18:
	pcalau12i	$a0, %pc_hi20(.L.str.61)
	addi.d	$a0, $a0, %pc_lo12(.L.str.61)
	pcaddu18i	$ra, %call36(ReportError)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 44
	move	$a0, $fp
	pcaddu18i	$ra, %call36(FreeMemory)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 44
	move	$a0, $s0
	pcaddu18i	$ra, %call36(FreeMemory)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(LUtempvv)
	addi.d	$a1, $sp, 44
	pcaddu18i	$ra, %call36(FreeMemory)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(ErrorExit)
	jirl	$ra, $ra, 0
.LBB16_19:
	ld.d	$a0, $s8, 16
	ori	$a1, $zero, 808
	mul.d	$a0, $a0, $a1
	addi.d	$a1, $sp, 40
	pcaddu18i	$ra, %call36(AllocateMemory)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 40
	move	$s3, $a0
	beqz	$a1, .LBB16_39
# %bb.20:
	pcalau12i	$a0, %pc_hi20(.L.str.61)
	addi.d	$a0, $a0, %pc_lo12(.L.str.61)
	pcaddu18i	$ra, %call36(ReportError)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 44
	move	$a0, $fp
	pcaddu18i	$ra, %call36(FreeMemory)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 44
	move	$a0, $s0
	pcaddu18i	$ra, %call36(FreeMemory)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(LUtempvv)
	addi.d	$a1, $sp, 44
	pcaddu18i	$ra, %call36(FreeMemory)
	jirl	$ra, $ra, 0
	beqz	$s2, .LBB16_23
# %bb.21:
	addi.d	$a1, $sp, 44
	move	$a0, $s2
.LBB16_22:                              # %LUFreeMem.exit74
	pcaddu18i	$ra, %call36(FreeMemory)
	jirl	$ra, $ra, 0
.LBB16_23:                              # %LUFreeMem.exit74
	pcaddu18i	$ra, %call36(ErrorExit)
	jirl	$ra, $ra, 0
	b	.LBB16_39
.LBB16_24:
	move	$s1, $zero
	st.d	$zero, $s8, 16
	ori	$s4, $zero, 1616
	lu12i.w	$a0, 39
	ori	$s5, $a0, 3472
	pcalau12i	$a0, %got_pc_hi20(global_min_ticks)
	ld.d	$a0, $a0, %got_pc_lo12(global_min_ticks)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 1808
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.61)
	addi.d	$s6, $a0, %pc_lo12(.L.str.61)
	.p2align	4, , 16
.LBB16_25:                              # =>This Inner Loop Header: Depth=1
	addi.d	$a1, $sp, 40
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateMemory)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 40
	move	$s2, $a0
	beqz	$a1, .LBB16_27
# %bb.26:                               #   in Loop: Header=BB16_25 Depth=1
	move	$a0, $s6
	pcaddu18i	$ra, %call36(ReportError)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 44
	move	$a0, $fp
	pcaddu18i	$ra, %call36(FreeMemory)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 44
	move	$a0, $s0
	pcaddu18i	$ra, %call36(FreeMemory)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(LUtempvv)
	addi.d	$a1, $sp, 44
	pcaddu18i	$ra, %call36(FreeMemory)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(ErrorExit)
	jirl	$ra, $ra, 0
.LBB16_27:                              #   in Loop: Header=BB16_25 Depth=1
	addi.d	$a1, $sp, 40
	move	$a0, $s4
	pcaddu18i	$ra, %call36(AllocateMemory)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 40
	move	$s3, $a0
	beqz	$a1, .LBB16_31
# %bb.28:                               #   in Loop: Header=BB16_25 Depth=1
	move	$a0, $s6
	pcaddu18i	$ra, %call36(ReportError)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 44
	move	$a0, $fp
	pcaddu18i	$ra, %call36(FreeMemory)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 44
	move	$a0, $s0
	pcaddu18i	$ra, %call36(FreeMemory)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(LUtempvv)
	addi.d	$a1, $sp, 44
	pcaddu18i	$ra, %call36(FreeMemory)
	jirl	$ra, $ra, 0
	beqz	$s2, .LBB16_30
# %bb.29:                               #   in Loop: Header=BB16_25 Depth=1
	addi.d	$a1, $sp, 44
	move	$a0, $s2
	pcaddu18i	$ra, %call36(FreeMemory)
	jirl	$ra, $ra, 0
.LBB16_30:                              # %LUFreeMem.exit
                                        #   in Loop: Header=BB16_25 Depth=1
	pcaddu18i	$ra, %call36(ErrorExit)
	jirl	$ra, $ra, 0
.LBB16_31:                              #   in Loop: Header=BB16_25 Depth=1
	addi.d	$s7, $s1, 1
	move	$a0, $fp
	move	$a1, $s0
	move	$a2, $s2
	move	$a3, $s3
	move	$a4, $s7
	pcaddu18i	$ra, %call36(DoLUIteration)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	bltu	$a1, $a0, .LBB16_38
# %bb.32:                               #   in Loop: Header=BB16_25 Depth=1
	addi.d	$a1, $sp, 40
	move	$a0, $s2
	pcaddu18i	$ra, %call36(FreeMemory)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 40
	move	$a0, $s3
	pcaddu18i	$ra, %call36(FreeMemory)
	jirl	$ra, $ra, 0
	addi.d	$s4, $s4, 808
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	add.d	$s5, $s5, $a0
	move	$s1, $s7
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	bne	$s7, $a0, .LBB16_25
# %bb.33:
	ld.d	$a0, $s8, 16
	bnez	$a0, .LBB16_39
# %bb.34:
	pcalau12i	$a0, %pc_hi20(.Lstr.2)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.2)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 44
	move	$a0, $fp
	pcaddu18i	$ra, %call36(FreeMemory)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 44
	move	$a0, $s0
	pcaddu18i	$ra, %call36(FreeMemory)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(LUtempvv)
	addi.d	$a1, $sp, 44
	pcaddu18i	$ra, %call36(FreeMemory)
	jirl	$ra, $ra, 0
	beqz	$s2, .LBB16_36
# %bb.35:
	addi.d	$a1, $sp, 44
	move	$a0, $s2
	pcaddu18i	$ra, %call36(FreeMemory)
	jirl	$ra, $ra, 0
.LBB16_36:
	beqz	$s3, .LBB16_23
# %bb.37:
	addi.d	$a1, $sp, 44
	move	$a0, $s3
	b	.LBB16_22
.LBB16_38:                              # %.thread
	addi.d	$a0, $s1, 1
	st.d	$a0, $s8, 16
.LBB16_39:
	move	$s1, $zero
	ld.d	$a4, $s8, 16
	pcalau12i	$a0, %pc_hi20(.LCPI16_0)
	fld.d	$fs1, $a0, %pc_lo12(.LCPI16_0)
	pcalau12i	$a0, %pc_hi20(.LCPI16_1)
	fld.d	$fs2, $a0, %pc_lo12(.LCPI16_1)
	movgr2fr.d	$fs0, $zero
	lu52i.d	$s4, $zero, 1107
	lu12i.w	$s5, 275200
	.p2align	4, , 16
.LBB16_40:                              # =>This Inner Loop Header: Depth=1
	move	$a0, $fp
	move	$a1, $s0
	move	$a2, $s2
	move	$a3, $s3
	pcaddu18i	$ra, %call36(DoLUIteration)
	jirl	$ra, $ra, 0
	ld.d	$a4, $s8, 16
	srli.d	$a1, $a4, 32
	or	$a1, $a1, $s4
	movgr2fr.d	$fa0, $a1
	fsub.d	$fa0, $fa0, $fs1
	move	$a1, $a4
	bstrins.d	$a1, $s5, 63, 32
	movgr2fr.d	$fa1, $a1
	fadd.d	$fa0, $fa1, $fa0
	fadd.d	$fs0, $fs0, $fa0
	fcmp.clt.d	$fcc0, $fs0, $fs2
	add.d	$s1, $a0, $s1
	bcnez	$fcc0, .LBB16_40
# %bb.41:
	move	$a0, $s1
	pcaddu18i	$ra, %call36(TicksToFracSecs)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s8, 0
	fdiv.d	$fa0, $fs0, $fa0
	fst.d	$fa0, $s8, 24
	bnez	$a0, .LBB16_43
# %bb.42:
	ori	$a0, $zero, 1
	st.w	$a0, $s8, 0
.LBB16_43:
	addi.d	$a1, $sp, 44
	move	$a0, $fp
	pcaddu18i	$ra, %call36(FreeMemory)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 44
	move	$a0, $s0
	pcaddu18i	$ra, %call36(FreeMemory)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(LUtempvv)
	addi.d	$a1, $sp, 44
	pcaddu18i	$ra, %call36(FreeMemory)
	jirl	$ra, $ra, 0
	beqz	$s2, .LBB16_45
# %bb.44:
	addi.d	$a1, $sp, 44
	move	$a0, $s2
	pcaddu18i	$ra, %call36(FreeMemory)
	jirl	$ra, $ra, 0
.LBB16_45:
	beqz	$s3, .LBB16_47
# %bb.46:
	addi.d	$a1, $sp, 44
	move	$a0, $s3
	pcaddu18i	$ra, %call36(FreeMemory)
	jirl	$ra, $ra, 0
.LBB16_47:                              # %LUFreeMem.exit77
	fld.d	$fs2, $sp, 48                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 56                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 64                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 136                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 144                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 152                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 160
	ret
.Lfunc_end16:
	.size	DoLU, .Lfunc_end16-DoLU
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function DoLUIteration
.LCPI17_0:
	.dword	0x3bc79ca10c924223              # double 9.9999999999999995E-21
	.text
	.p2align	5
	.type	DoLUIteration,@function
DoLUIteration:                          # @DoLUIteration
# %bb.0:
	addi.d	$sp, $sp, -608
	st.d	$ra, $sp, 600                   # 8-byte Folded Spill
	st.d	$fp, $sp, 592                   # 8-byte Folded Spill
	st.d	$s0, $sp, 584                   # 8-byte Folded Spill
	st.d	$s1, $sp, 576                   # 8-byte Folded Spill
	st.d	$s2, $sp, 568                   # 8-byte Folded Spill
	st.d	$s3, $sp, 560                   # 8-byte Folded Spill
	st.d	$s4, $sp, 552                   # 8-byte Folded Spill
	st.d	$s5, $sp, 544                   # 8-byte Folded Spill
	st.d	$s6, $sp, 536                   # 8-byte Folded Spill
	st.d	$s7, $sp, 528                   # 8-byte Folded Spill
	st.d	$s8, $sp, 520                   # 8-byte Folded Spill
	beqz	$a4, .LBB17_67
# %bb.1:                                # %.lr.ph.preheader
	move	$s0, $a4
	move	$s1, $a3
	move	$s2, $a2
	move	$a2, $zero
	sub.d	$a3, $a3, $a1
	sub.d	$a4, $s2, $a0
	addi.d	$a5, $s2, 32
	addi.d	$a6, $a0, 32
	ori	$a7, $zero, 808
	lu12i.w	$t0, 19
	ori	$s5, $t0, 3784
	ori	$t0, $zero, 64
	lu12i.w	$t1, -3
	ori	$t1, $t1, 2087
	lu12i.w	$t2, 2
	ori	$t2, $t2, 2008
	move	$t3, $s1
	move	$t4, $s2
	.p2align	4, , 16
.LBB17_2:                               # %.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB17_5 Depth 2
                                        #     Child Loop BB17_8 Depth 2
                                        #     Child Loop BB17_13 Depth 2
	mul.d	$t5, $a2, $s5
	add.d	$t5, $a4, $t5
	bgeu	$t5, $t0, .LBB17_4
# %bb.3:                                #   in Loop: Header=BB17_2 Depth=1
	move	$fp, $zero
	b	.LBB17_7
	.p2align	4, , 16
.LBB17_4:                               # %vector.body66.preheader
                                        #   in Loop: Header=BB17_2 Depth=1
	move	$t5, $a6
	move	$t6, $a5
	move	$t7, $t2
	.p2align	4, , 16
.LBB17_5:                               # %vector.body66
                                        #   Parent Loop BB17_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvld	$xr0, $t5, -32
	xvld	$xr1, $t5, 0
	xvst	$xr0, $t6, -32
	xvst	$xr1, $t6, 0
	addi.d	$t7, $t7, -8
	addi.d	$t6, $t6, 64
	addi.d	$t5, $t5, 64
	bnez	$t7, .LBB17_5
# %bb.6:                                #   in Loop: Header=BB17_2 Depth=1
	move	$fp, $t2
.LBB17_7:                               # %scalar.ph64.preheader
                                        #   in Loop: Header=BB17_2 Depth=1
	mul.d	$t5, $a2, $a7
	add.d	$t6, $a3, $t5
	add.d	$t7, $fp, $t1
	alsl.d	$t8, $fp, $t4, 3
	alsl.d	$fp, $fp, $a0, 3
	.p2align	4, , 16
.LBB17_8:                               # %scalar.ph64
                                        #   Parent Loop BB17_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa0, $fp, 0
	fst.d	$fa0, $t8, 0
	addi.d	$t7, $t7, 1
	addi.d	$t8, $t8, 8
	addi.d	$fp, $fp, 8
	bnez	$t7, .LBB17_8
# %bb.9:                                # %.preheader.preheader
                                        #   in Loop: Header=BB17_2 Depth=1
	bgeu	$t6, $t0, .LBB17_11
# %bb.10:                               #   in Loop: Header=BB17_2 Depth=1
	move	$t5, $zero
	b	.LBB17_12
	.p2align	4, , 16
.LBB17_11:                              # %vector.body
                                        #   in Loop: Header=BB17_2 Depth=1
	xvld	$xr0, $a1, 0
	xvld	$xr1, $a1, 32
	add.d	$t5, $s1, $t5
	xvst	$xr0, $t5, 0
	xvst	$xr1, $t5, 32
	xvld	$xr0, $a1, 64
	xvld	$xr1, $a1, 96
	xvst	$xr0, $t5, 64
	xvst	$xr1, $t5, 96
	xvld	$xr0, $a1, 128
	xvld	$xr1, $a1, 160
	xvst	$xr0, $t5, 128
	xvst	$xr1, $t5, 160
	xvld	$xr0, $a1, 192
	xvld	$xr1, $a1, 224
	xvst	$xr0, $t5, 192
	xvst	$xr1, $t5, 224
	xvld	$xr0, $a1, 256
	xvld	$xr1, $a1, 288
	xvst	$xr0, $t5, 256
	xvst	$xr1, $t5, 288
	xvld	$xr0, $a1, 320
	xvld	$xr1, $a1, 352
	xvst	$xr0, $t5, 320
	xvst	$xr1, $t5, 352
	xvld	$xr0, $a1, 384
	xvld	$xr1, $a1, 416
	xvst	$xr0, $t5, 384
	xvst	$xr1, $t5, 416
	xvld	$xr0, $a1, 448
	xvld	$xr1, $a1, 480
	xvst	$xr0, $t5, 448
	xvst	$xr1, $t5, 480
	xvld	$xr0, $a1, 512
	xvld	$xr1, $a1, 544
	xvst	$xr0, $t5, 512
	xvst	$xr1, $t5, 544
	xvld	$xr0, $a1, 576
	xvld	$xr1, $a1, 608
	xvst	$xr0, $t5, 576
	xvst	$xr1, $t5, 608
	xvld	$xr0, $a1, 640
	xvld	$xr1, $a1, 672
	xvst	$xr0, $t5, 640
	xvst	$xr1, $t5, 672
	xvld	$xr0, $a1, 704
	xvld	$xr1, $a1, 736
	xvst	$xr0, $t5, 704
	xvst	$xr1, $t5, 736
	ori	$t5, $zero, 96
.LBB17_12:                              # %.preheader.preheader102
                                        #   in Loop: Header=BB17_2 Depth=1
	slli.d	$t5, $t5, 3
	.p2align	4, , 16
.LBB17_13:                              # %.preheader
                                        #   Parent Loop BB17_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fldx.d	$fa0, $a1, $t5
	fstx.d	$fa0, $t3, $t5
	addi.d	$t5, $t5, 8
	bne	$t5, $a7, .LBB17_13
# %bb.14:                               # %.loopexit97
                                        #   in Loop: Header=BB17_2 Depth=1
	addi.d	$a2, $a2, 1
	add.d	$a5, $a5, $s5
	add.d	$t4, $t4, $s5
	addi.d	$t3, $t3, 808
	bne	$a2, $s0, .LBB17_2
# %bb.15:                               # %.lr.ph42.preheader
	pcaddu18i	$ra, %call36(StartStopwatch)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	move	$t3, $zero
	addi.d	$t5, $s2, 1616
	addi.d	$t7, $s2, 808
	addi.d	$fp, $s1, 808
	add.d	$s6, $s2, $s5
	ori	$a6, $zero, 808
	pcalau12i	$s7, %pc_hi20(LUtempvv)
	movgr2fr.d	$fa0, $zero
	ori	$t0, $zero, 101
	ori	$t1, $zero, 100
	addi.d	$t2, $sp, 116
	lu12i.w	$a0, 51492
	ori	$a0, $a0, 547
	lu32i.d	$a0, 498849
	lu52i.d	$a0, $a0, 956
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	move	$s8, $s1
	move	$t6, $s2
	st.d	$s0, $sp, 48                    # 8-byte Folded Spill
	st.d	$s1, $sp, 40                    # 8-byte Folded Spill
	st.d	$s2, $sp, 32                    # 8-byte Folded Spill
	st.d	$s5, $sp, 24                    # 8-byte Folded Spill
	st.d	$s7, $sp, 16                    # 8-byte Folded Spill
	b	.LBB17_17
	.p2align	4, , 16
.LBB17_16:                              # %lusolve.exit
                                        #   in Loop: Header=BB17_17 Depth=1
	addi.d	$t3, $t3, 1
	add.d	$t6, $t6, $s5
	add.d	$t5, $t5, $s5
	add.d	$t7, $t7, $s5
	addi.d	$s8, $s8, 808
	addi.d	$fp, $fp, 808
	add.d	$s6, $s6, $s5
	beq	$t3, $s0, .LBB17_66
.LBB17_17:                              # %.lr.ph42
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB17_18 Depth 2
                                        #       Child Loop BB17_19 Depth 3
                                        #     Child Loop BB17_24 Depth 2
                                        #       Child Loop BB17_27 Depth 3
                                        #         Child Loop BB17_29 Depth 4
                                        #       Child Loop BB17_32 Depth 3
                                        #         Child Loop BB17_34 Depth 4
                                        #       Child Loop BB17_41 Depth 3
                                        #       Child Loop BB17_48 Depth 3
                                        #       Child Loop BB17_51 Depth 3
                                        #     Child Loop BB17_56 Depth 2
                                        #       Child Loop BB17_59 Depth 3
                                        #     Child Loop BB17_63 Depth 2
                                        #       Child Loop BB17_65 Depth 3
	move	$a0, $zero
	mul.d	$a1, $t3, $s5
	add.d	$t8, $s2, $a1
	addi.d	$a2, $a1, 808
	ld.d	$a1, $s7, %pc_lo12(LUtempvv)
	add.d	$s4, $s2, $a2
	mul.d	$a2, $t3, $a6
	add.d	$s3, $s1, $a2
	move	$a2, $t6
	.p2align	4, , 16
.LBB17_18:                              # %.preheader153.i.i
                                        #   Parent Loop BB17_17 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB17_19 Depth 3
	move	$a3, $zero
	fmov.d	$fa1, $fa0
	.p2align	4, , 16
.LBB17_19:                              #   Parent Loop BB17_17 Depth=1
                                        #     Parent Loop BB17_18 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fldx.d	$fa2, $a2, $a3
	fabs.d	$fa2, $fa2
	fcmp.clt.d	$fcc0, $fa1, $fa2
	addi.d	$a3, $a3, 8
	fsel	$fa1, $fa1, $fa2, $fcc0
	bne	$a3, $a6, .LBB17_19
# %bb.20:                               #   in Loop: Header=BB17_18 Depth=2
	fcmp.ceq.d	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB17_16
# %bb.21:                               #   in Loop: Header=BB17_18 Depth=2
	frecip.d	$fa1, $fa1
	slli.d	$a3, $a0, 3
	fstx.d	$fa1, $a1, $a3
	addi.d	$a0, $a0, 1
	addi.d	$a2, $a2, 808
	bne	$a0, $t0, .LBB17_18
# %bb.22:                               # %.preheader151.i.i
                                        #   in Loop: Header=BB17_17 Depth=1
	st.d	$s8, $sp, 56                    # 8-byte Folded Spill
	st.d	$s6, $sp, 64                    # 8-byte Folded Spill
	st.d	$fp, $sp, 72                    # 8-byte Folded Spill
	st.d	$t3, $sp, 96                    # 8-byte Folded Spill
	ld.d	$s5, $s7, %pc_lo12(LUtempvv)
	move	$s6, $zero
	move	$s7, $zero
	move	$ra, $zero
	ori	$a0, $zero, 100
	st.d	$t7, $sp, 80                    # 8-byte Folded Spill
	move	$a3, $t7
	st.d	$t5, $sp, 88                    # 8-byte Folded Spill
	move	$a2, $t5
	move	$fp, $t6
	move	$s1, $t6
	b	.LBB17_24
	.p2align	4, , 16
.LBB17_23:                              # %.loopexit147.i.i
                                        #   in Loop: Header=BB17_24 Depth=2
	addi.d	$s7, $s7, 1
	addi.d	$s1, $s1, 8
	addi.d	$s6, $s6, 808
	addi.d	$fp, $fp, 808
	addi.d	$a0, $a0, -1
	addi.d	$a2, $a2, 816
	addi.d	$a3, $a3, 8
.LBB17_24:                              #   Parent Loop BB17_17 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB17_27 Depth 3
                                        #         Child Loop BB17_29 Depth 4
                                        #       Child Loop BB17_32 Depth 3
                                        #         Child Loop BB17_34 Depth 4
                                        #       Child Loop BB17_41 Depth 3
                                        #       Child Loop BB17_48 Depth 3
                                        #       Child Loop BB17_51 Depth 3
	slli.d	$a7, $s7, 3
	beqz	$s7, .LBB17_30
# %bb.25:                               # %.preheader149.i.i.preheader
                                        #   in Loop: Header=BB17_24 Depth=2
	move	$a1, $zero
	move	$a4, $t6
	b	.LBB17_27
	.p2align	4, , 16
.LBB17_26:                              # %.loopexit146.i.i
                                        #   in Loop: Header=BB17_27 Depth=3
	alsl.d	$a5, $s7, $a5, 3
	fst.d	$fa1, $a5, 0
	addi.d	$a1, $a1, 1
	addi.d	$a4, $a4, 808
	beq	$a1, $s7, .LBB17_30
.LBB17_27:                              # %.preheader149.i.i
                                        #   Parent Loop BB17_17 Depth=1
                                        #     Parent Loop BB17_24 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB17_29 Depth 4
	mul.d	$a5, $a1, $a6
	add.d	$a5, $t8, $a5
	fldx.d	$fa1, $a5, $a7
	beqz	$a1, .LBB17_26
# %bb.28:                               # %.preheader145.i.i.preheader
                                        #   in Loop: Header=BB17_27 Depth=3
	move	$t4, $a4
	move	$t5, $s1
	move	$s0, $a1
	.p2align	4, , 16
.LBB17_29:                              # %.preheader145.i.i
                                        #   Parent Loop BB17_17 Depth=1
                                        #     Parent Loop BB17_24 Depth=2
                                        #       Parent Loop BB17_27 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	fld.d	$fa2, $t4, 0
	fld.d	$fa3, $t5, 0
	fneg.d	$fa2, $fa2
	fmadd.d	$fa1, $fa2, $fa3, $fa1
	addi.d	$s0, $s0, -1
	addi.d	$t5, $t5, 808
	addi.d	$t4, $t4, 8
	bnez	$s0, .LBB17_29
	b	.LBB17_26
	.p2align	4, , 16
.LBB17_30:                              # %.lr.ph.i.i.preheader
                                        #   in Loop: Header=BB17_24 Depth=2
	move	$s8, $a0
	bstrins.d	$s8, $zero, 1, 0
	mul.d	$t4, $s7, $a6
	add.d	$s0, $t8, $t4
	add.d	$a1, $s4, $t4
	sub.d	$s2, $t1, $s7
	move	$t7, $fp
	move	$a5, $s7
	fmov.d	$fa1, $fa0
	b	.LBB17_32
	.p2align	4, , 16
.LBB17_31:                              # %.loopexit.i.i
                                        #   in Loop: Header=BB17_32 Depth=3
	alsl.d	$a4, $s7, $t5, 3
	fst.d	$fa2, $a4, 0
	slli.d	$a4, $a5, 3
	fldx.d	$fa3, $s5, $a4
	fabs.d	$fa2, $fa2
	fmul.d	$fa2, $fa2, $fa3
	fcmp.cult.d	$fcc0, $fa2, $fa1
	fsel	$fa1, $fa2, $fa1, $fcc0
	movcf2gr	$a4, $fcc0
	masknez	$t3, $a5, $a4
	maskeqz	$a4, $ra, $a4
	or	$ra, $a4, $t3
	addi.d	$a5, $a5, 1
	addi.d	$t7, $t7, 808
	beq	$a5, $t0, .LBB17_35
.LBB17_32:                              # %.lr.ph.i.i
                                        #   Parent Loop BB17_17 Depth=1
                                        #     Parent Loop BB17_24 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB17_34 Depth 4
	mul.d	$a4, $a5, $a6
	add.d	$t5, $t8, $a4
	fldx.d	$fa2, $t5, $a7
	beqz	$s7, .LBB17_31
# %bb.33:                               # %.preheader.i.i.preheader
                                        #   in Loop: Header=BB17_32 Depth=3
	move	$t3, $zero
	move	$a4, $t7
	.p2align	4, , 16
.LBB17_34:                              # %.preheader.i.i
                                        #   Parent Loop BB17_17 Depth=1
                                        #     Parent Loop BB17_24 Depth=2
                                        #       Parent Loop BB17_32 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	fld.d	$fa3, $a4, 0
	fldx.d	$fa4, $s1, $t3
	fneg.d	$fa3, $fa3
	fmadd.d	$fa2, $fa3, $fa4, $fa2
	addi.d	$t3, $t3, 808
	addi.d	$a4, $a4, 8
	bne	$s6, $t3, .LBB17_34
	b	.LBB17_31
	.p2align	4, , 16
.LBB17_35:                              # %._crit_edge.i.i
                                        #   in Loop: Header=BB17_24 Depth=2
	bstrpick.d	$a4, $ra, 31, 0
	beq	$s7, $a4, .LBB17_43
# %bb.36:                               # %vector.memcheck80
                                        #   in Loop: Header=BB17_24 Depth=2
	mul.d	$a5, $a4, $a6
	add.d	$t5, $t8, $a5
	bgeu	$t5, $a1, .LBB17_39
# %bb.37:                               # %vector.memcheck80
                                        #   in Loop: Header=BB17_24 Depth=2
	add.d	$a1, $s4, $a5
	bgeu	$s0, $a1, .LBB17_39
# %bb.38:                               #   in Loop: Header=BB17_24 Depth=2
	move	$a1, $zero
	b	.LBB17_40
	.p2align	4, , 16
.LBB17_39:                              # %vector.body88
                                        #   in Loop: Header=BB17_24 Depth=2
	xvldx	$xr1, $t8, $t4
	xvld	$xr2, $s0, 32
	xvldx	$xr3, $t8, $a5
	xvld	$xr4, $t5, 32
	xvstx	$xr1, $t8, $a5
	xvst	$xr2, $t5, 32
	xvstx	$xr3, $t8, $t4
	xvst	$xr4, $s0, 32
	xvld	$xr1, $s0, 64
	xvld	$xr2, $s0, 96
	xvld	$xr3, $t5, 64
	xvld	$xr4, $t5, 96
	xvst	$xr1, $t5, 64
	xvst	$xr2, $t5, 96
	xvst	$xr3, $s0, 64
	xvst	$xr4, $s0, 96
	xvld	$xr1, $s0, 128
	xvld	$xr2, $s0, 160
	xvld	$xr3, $t5, 128
	xvld	$xr4, $t5, 160
	xvst	$xr1, $t5, 128
	xvst	$xr2, $t5, 160
	xvst	$xr3, $s0, 128
	xvst	$xr4, $s0, 160
	xvld	$xr1, $s0, 192
	xvld	$xr2, $s0, 224
	xvld	$xr3, $t5, 192
	xvld	$xr4, $t5, 224
	xvst	$xr1, $t5, 192
	xvst	$xr2, $t5, 224
	xvst	$xr3, $s0, 192
	xvst	$xr4, $s0, 224
	xvld	$xr1, $s0, 256
	xvld	$xr2, $s0, 288
	xvld	$xr3, $t5, 256
	xvld	$xr4, $t5, 288
	xvst	$xr1, $t5, 256
	xvst	$xr2, $t5, 288
	xvst	$xr3, $s0, 256
	xvst	$xr4, $s0, 288
	xvld	$xr1, $s0, 320
	xvld	$xr2, $s0, 352
	xvld	$xr3, $t5, 320
	xvld	$xr4, $t5, 352
	xvst	$xr1, $t5, 320
	xvst	$xr2, $t5, 352
	xvst	$xr3, $s0, 320
	xvst	$xr4, $s0, 352
	xvld	$xr1, $s0, 384
	xvld	$xr2, $s0, 416
	xvld	$xr3, $t5, 384
	xvld	$xr4, $t5, 416
	xvst	$xr1, $t5, 384
	xvst	$xr2, $t5, 416
	xvst	$xr3, $s0, 384
	xvst	$xr4, $s0, 416
	xvld	$xr1, $s0, 448
	xvld	$xr2, $s0, 480
	xvld	$xr3, $t5, 448
	xvld	$xr4, $t5, 480
	xvst	$xr1, $t5, 448
	xvst	$xr2, $t5, 480
	xvst	$xr3, $s0, 448
	xvst	$xr4, $s0, 480
	xvld	$xr1, $s0, 512
	xvld	$xr2, $s0, 544
	xvld	$xr3, $t5, 512
	xvld	$xr4, $t5, 544
	xvst	$xr1, $t5, 512
	xvst	$xr2, $t5, 544
	xvst	$xr3, $s0, 512
	xvst	$xr4, $s0, 544
	xvld	$xr1, $s0, 576
	xvld	$xr2, $s0, 608
	xvld	$xr3, $t5, 576
	xvld	$xr4, $t5, 608
	xvst	$xr1, $t5, 576
	xvst	$xr2, $t5, 608
	xvst	$xr3, $s0, 576
	xvst	$xr4, $s0, 608
	xvld	$xr1, $s0, 640
	xvld	$xr2, $s0, 672
	xvld	$xr3, $t5, 640
	xvld	$xr4, $t5, 672
	xvst	$xr1, $t5, 640
	xvst	$xr2, $t5, 672
	xvst	$xr3, $s0, 640
	xvst	$xr4, $s0, 672
	xvld	$xr1, $s0, 704
	xvld	$xr2, $s0, 736
	xvld	$xr3, $t5, 704
	xvld	$xr4, $t5, 736
	xvst	$xr1, $t5, 704
	xvst	$xr2, $t5, 736
	xvst	$xr3, $s0, 704
	xvst	$xr4, $s0, 736
	ori	$a1, $zero, 96
.LBB17_40:                              # %.preheader148.i.i.preheader
                                        #   in Loop: Header=BB17_24 Depth=2
	slli.d	$a1, $a1, 3
	add.d	$a5, $t6, $a5
	.p2align	4, , 16
.LBB17_41:                              # %.preheader148.i.i
                                        #   Parent Loop BB17_17 Depth=1
                                        #     Parent Loop BB17_24 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fldx.d	$fa1, $fp, $a1
	fldx.d	$fa2, $a5, $a1
	fstx.d	$fa1, $a5, $a1
	fstx.d	$fa2, $fp, $a1
	addi.d	$a1, $a1, 8
	bne	$a1, $a6, .LBB17_41
# %bb.42:                               # %.loopexit
                                        #   in Loop: Header=BB17_24 Depth=2
	slli.d	$a1, $a4, 3
	fldx.d	$fa1, $s5, $a7
	fldx.d	$fa2, $s5, $a1
	fstx.d	$fa1, $s5, $a1
	fstx.d	$fa2, $s5, $a7
.LBB17_43:                              #   in Loop: Header=BB17_24 Depth=2
	fldx.d	$fa1, $s0, $a7
	slli.d	$a1, $s7, 2
	fcmp.cune.d	$fcc0, $fa1, $fa0
	stx.w	$ra, $a1, $t2
	bcnez	$fcc0, .LBB17_45
# %bb.44:                               #   in Loop: Header=BB17_24 Depth=2
	pcalau12i	$a1, %pc_hi20(.LCPI17_0)
	fld.d	$fa1, $a1, %pc_lo12(.LCPI17_0)
	alsl.d	$a1, $s7, $s0, 3
	ld.d	$a4, $sp, 104                   # 8-byte Folded Reload
	st.d	$a4, $a1, 0
.LBB17_45:                              #   in Loop: Header=BB17_24 Depth=2
	beq	$s7, $t1, .LBB17_52
# %bb.46:                               # %.lr.ph169.preheader.i.i
                                        #   in Loop: Header=BB17_24 Depth=2
	frecip.d	$fa1, $fa1
	move	$a1, $s7
	ori	$a4, $zero, 4
	bltu	$s2, $a4, .LBB17_50
# %bb.47:                               # %vector.ph74
                                        #   in Loop: Header=BB17_24 Depth=2
	move	$a4, $s2
	bstrins.d	$a4, $zero, 1, 0
	add.d	$a1, $s7, $a4
	xvreplve0.d	$xr2, $xr1
	move	$a5, $a2
	.p2align	4, , 16
.LBB17_48:                              # %vector.body75
                                        #   Parent Loop BB17_17 Depth=1
                                        #     Parent Loop BB17_24 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fld.d	$fa3, $a5, -808
	fld.d	$fa4, $a5, 0
	fld.d	$fa5, $a5, 808
	fld.d	$fa6, $a5, 1616
	movfr2gr.d	$a7, $fa3
	xvinsgr2vr.d	$xr3, $a7, 0
	movfr2gr.d	$a7, $fa4
	xvinsgr2vr.d	$xr3, $a7, 1
	movfr2gr.d	$a7, $fa5
	xvinsgr2vr.d	$xr3, $a7, 2
	movfr2gr.d	$a7, $fa6
	xvinsgr2vr.d	$xr3, $a7, 3
	xvfmul.d	$xr3, $xr2, $xr3
	xvstelm.d	$xr3, $a5, -808, 0
	xvstelm.d	$xr3, $a5, 0, 1
	xvstelm.d	$xr3, $a5, 808, 2
	xvpickve2gr.d	$a7, $xr3, 3
	movgr2fr.d	$fa3, $a7
	fst.d	$fa3, $a5, 1616
	addi.d	$s8, $s8, -4
	addi.d	$a5, $a5, 2047
	addi.d	$a5, $a5, 1185
	bnez	$s8, .LBB17_48
# %bb.49:                               # %middle.block78
                                        #   in Loop: Header=BB17_24 Depth=2
	beq	$s2, $a4, .LBB17_23
.LBB17_50:                              # %.lr.ph169.i.i.preheader
                                        #   in Loop: Header=BB17_24 Depth=2
	addi.d	$a4, $a1, -100
	mul.d	$a1, $a1, $a6
	add.d	$a1, $a3, $a1
	.p2align	4, , 16
.LBB17_51:                              # %.lr.ph169.i.i
                                        #   Parent Loop BB17_17 Depth=1
                                        #     Parent Loop BB17_24 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fld.d	$fa2, $a1, 0
	fmul.d	$fa2, $fa1, $fa2
	fst.d	$fa2, $a1, 0
	addi.d	$a4, $a4, 1
	addi.d	$a1, $a1, 808
	bnez	$a4, .LBB17_51
	b	.LBB17_23
	.p2align	4, , 16
.LBB17_52:                              # %ludcmp.exit.i.preheader
                                        #   in Loop: Header=BB17_17 Depth=1
	addi.w	$a0, $zero, -1
	move	$a2, $zero
	move	$a3, $t6
	move	$a4, $a0
	ld.d	$s0, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 24                    # 8-byte Folded Reload
	ld.d	$t3, $sp, 96                    # 8-byte Folded Reload
	ld.d	$t5, $sp, 88                    # 8-byte Folded Reload
	ld.d	$t7, $sp, 80                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 16                    # 8-byte Folded Reload
	ori	$s4, $zero, 99
	ld.d	$s8, $sp, 56                    # 8-byte Folded Reload
	b	.LBB17_56
	.p2align	4, , 16
.LBB17_53:                              #   in Loop: Header=BB17_56 Depth=2
	fcmp.ceq.d	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB17_60
# %bb.54:                               #   in Loop: Header=BB17_56 Depth=2
	move	$a4, $a2
.LBB17_55:                              # %.loopexit61.i.i
                                        #   in Loop: Header=BB17_56 Depth=2
	alsl.d	$a1, $a2, $s3, 3
	fst.d	$fa1, $a1, 0
	addi.d	$a2, $a2, 1
	addi.d	$a3, $a3, 808
	beq	$a2, $t0, .LBB17_61
.LBB17_56:                              # %ludcmp.exit.i
                                        #   Parent Loop BB17_17 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB17_59 Depth 3
	slli.d	$a1, $a2, 2
	ldx.w	$a1, $a1, $t2
	slli.d	$a5, $a1, 3
	slli.d	$a1, $a2, 3
	fldx.d	$fa2, $s3, $a1
	fldx.d	$fa1, $s3, $a5
	addi.w	$a1, $a4, 0
	fstx.d	$fa2, $s3, $a5
	beq	$a1, $a0, .LBB17_53
# %bb.57:                               # %.preheader60.i.i
                                        #   in Loop: Header=BB17_56 Depth=2
	bge	$a1, $a2, .LBB17_55
# %bb.58:                               # %.lr.ph.i7.i.preheader
                                        #   in Loop: Header=BB17_56 Depth=2
	alsl.d	$a5, $a1, $s8, 3
	alsl.d	$a7, $a1, $a3, 3
	.p2align	4, , 16
.LBB17_59:                              # %.lr.ph.i7.i
                                        #   Parent Loop BB17_17 Depth=1
                                        #     Parent Loop BB17_56 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fld.d	$fa2, $a7, 0
	fld.d	$fa3, $a5, 0
	fneg.d	$fa2, $fa2
	fmadd.d	$fa1, $fa2, $fa3, $fa1
	addi.d	$a1, $a1, 1
	addi.d	$a5, $a5, 8
	addi.d	$a7, $a7, 8
	bne	$a2, $a1, .LBB17_59
	b	.LBB17_55
.LBB17_60:                              #   in Loop: Header=BB17_56 Depth=2
	addi.d	$a4, $zero, -1
	b	.LBB17_55
	.p2align	4, , 16
.LBB17_61:                              # %.preheader59.i.i.preheader
                                        #   in Loop: Header=BB17_17 Depth=1
	move	$a0, $zero
	ori	$a4, $zero, 100
	move	$a1, $s6
	move	$a2, $fp
	b	.LBB17_63
	.p2align	4, , 16
.LBB17_62:                              # %.loopexit.i5.i
                                        #   in Loop: Header=BB17_63 Depth=2
	mul.d	$a5, $a3, $a6
	add.d	$a5, $t8, $a5
	fldx.d	$fa2, $a5, $a4
	alsl.d	$a4, $a3, $s3, 3
	fdiv.d	$fa1, $fa1, $fa2
	fst.d	$fa1, $a4, 0
	addi.d	$a4, $a3, -1
	addi.d	$a0, $a0, 1
	addi.d	$a2, $a2, -8
	addi.d	$a1, $a1, -816
	beqz	$a3, .LBB17_16
.LBB17_63:                              # %.preheader59.i.i
                                        #   Parent Loop BB17_17 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB17_65 Depth 3
	move	$a3, $a4
	slli.d	$a4, $a4, 3
	fldx.d	$fa1, $s3, $a4
	bltu	$s4, $a3, .LBB17_62
# %bb.64:                               # %.lr.ph69.i.i.preheader
                                        #   in Loop: Header=BB17_63 Depth=2
	move	$a5, $a1
	move	$a7, $a2
	move	$t4, $a0
	.p2align	4, , 16
.LBB17_65:                              # %.lr.ph69.i.i
                                        #   Parent Loop BB17_17 Depth=1
                                        #     Parent Loop BB17_63 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fld.d	$fa2, $a5, 0
	fld.d	$fa3, $a7, 0
	fneg.d	$fa2, $fa2
	fmadd.d	$fa1, $fa2, $fa3, $fa1
	addi.d	$t4, $t4, -1
	addi.d	$a7, $a7, 8
	addi.d	$a5, $a5, 8
	bnez	$t4, .LBB17_65
	b	.LBB17_62
.LBB17_66:
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	b	.LBB17_68
.LBB17_67:                              # %._crit_edge.thread
	pcaddu18i	$ra, %call36(StartStopwatch)
	jirl	$ra, $ra, 0
.LBB17_68:                              # %._crit_edge43
	ld.d	$s8, $sp, 520                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 528                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 536                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 544                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 552                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 560                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 568                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 576                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 584                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 592                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 600                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 608
	pcaddu18i	$t8, %call36(StopStopwatch)
	jr	$t8
.Lfunc_end17:
	.size	DoLUIteration, .Lfunc_end17-DoLUIteration
                                        # -- End function
	.p2align	5                               # -- Begin function strsift
	.type	strsift,@function
strsift:                                # @strsift
# %bb.0:
	addi.d	$sp, $sp, -208
	st.d	$ra, $sp, 200                   # 8-byte Folded Spill
	st.d	$fp, $sp, 192                   # 8-byte Folded Spill
	st.d	$s0, $sp, 184                   # 8-byte Folded Spill
	st.d	$s1, $sp, 176                   # 8-byte Folded Spill
	st.d	$s2, $sp, 168                   # 8-byte Folded Spill
	st.d	$s3, $sp, 160                   # 8-byte Folded Spill
	st.d	$s4, $sp, 152                   # 8-byte Folded Spill
	st.d	$s5, $sp, 144                   # 8-byte Folded Spill
	st.d	$s6, $sp, 136                   # 8-byte Folded Spill
	st.d	$s7, $sp, 128                   # 8-byte Folded Spill
	st.d	$s8, $sp, 120                   # 8-byte Folded Spill
	slli.d	$s5, $a3, 1
	bgeu	$a4, $s5, .LBB18_2
.LBB18_1:                               # %._crit_edge
	ld.d	$s8, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 192                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 200                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 208
	ret
.LBB18_2:                               # %.lr.ph
	move	$s3, $a3
	move	$fp, $a4
	move	$s0, $a2
	move	$s1, $a1
	move	$s2, $a0
	addi.d	$a0, $a2, -1
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	alsl.d	$a0, $a2, $s2, 3
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	addi.d	$a0, $a4, 1
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	addi.d	$a0, $s2, 40
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	b	.LBB18_6
	.p2align	4, , 16
.LBB18_3:                               # %._crit_edge.i60
                                        #   in Loop: Header=BB18_6 Depth=1
	ld.d	$a0, $s7, 0
	stx.b	$s4, $s1, $a0
.LBB18_4:                               # %stradjust.exit70
                                        #   in Loop: Header=BB18_6 Depth=1
	ld.d	$a0, $s7, 0
	add.d	$a0, $s1, $a0
	addi.d	$a2, $s4, 1
	addi.d	$a1, $sp, 40
	pcaddu18i	$ra, %call36(MoveMemory)
	jirl	$ra, $ra, 0
	move	$a0, $s5
.LBB18_5:                               #   in Loop: Header=BB18_6 Depth=1
	slli.d	$s5, $a0, 1
	move	$s3, $a0
	bltu	$fp, $s5, .LBB18_1
.LBB18_6:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB18_15 Depth 2
                                        #     Child Loop BB18_18 Depth 2
                                        #     Child Loop BB18_21 Depth 2
                                        #     Child Loop BB18_24 Depth 2
                                        #     Child Loop BB18_32 Depth 2
                                        #     Child Loop BB18_35 Depth 2
                                        #     Child Loop BB18_38 Depth 2
                                        #     Child Loop BB18_41 Depth 2
	bgeu	$s5, $fp, .LBB18_8
# %bb.7:                                #   in Loop: Header=BB18_6 Depth=1
	addi.d	$s4, $s5, 1
	slli.d	$a0, $s5, 3
	ldx.d	$a0, $s2, $a0
	slli.d	$a1, $s4, 3
	ldx.d	$a1, $s2, $a1
	ldx.bu	$a2, $s1, $a0
	ldx.bu	$a3, $s1, $a1
	add.d	$a0, $s1, $a0
	add.d	$a1, $s1, $a1
	sltu	$s6, $a3, $a2
	sltu	$a4, $a2, $a3
	masknez	$a3, $a3, $a4
	maskeqz	$a2, $a2, $a4
	or	$a2, $a2, $a3
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	sltui	$a1, $a0, 1
	bstrpick.d	$a0, $a0, 31, 31
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s6, $a1
	or	$a0, $a1, $a0
	sltui	$a0, $a0, 1
	masknez	$a1, $s4, $a0
	maskeqz	$a0, $s5, $a0
	or	$s5, $a0, $a1
.LBB18_8:                               #   in Loop: Header=BB18_6 Depth=1
	slli.d	$a0, $s3, 3
	ldx.d	$a0, $s2, $a0
	slli.d	$a1, $s5, 3
	ldx.d	$a1, $s2, $a1
	ldx.bu	$a2, $s1, $a0
	ldx.bu	$s6, $s1, $a1
	add.d	$a0, $s1, $a0
	add.d	$s4, $s1, $a1
	sltu	$s7, $s6, $a2
	sltu	$a1, $a2, $s6
	masknez	$a3, $s6, $a1
	maskeqz	$a1, $a2, $a1
	or	$a2, $a1, $a3
	move	$a1, $s4
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	sltui	$a1, $a0, 1
	bstrpick.d	$a0, $a0, 31, 31
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s7, $a1
	or	$a1, $a1, $a0
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	beqz	$a1, .LBB18_5
# %bb.9:                                #   in Loop: Header=BB18_6 Depth=1
	alsl.d	$s7, $s3, $s2, 3
	alsl.d	$s8, $s5, $s2, 3
	addi.d	$a2, $s6, 1
	addi.d	$a0, $sp, 40
	move	$a1, $s4
	pcaddu18i	$ra, %call36(MoveMemory)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s7, 0
	ld.d	$a1, $s8, 0
	ldx.bu	$s4, $s1, $a0
	add.d	$a0, $s1, $a1
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	bne	$s5, $a2, .LBB18_11
# %bb.10:                               #   in Loop: Header=BB18_6 Depth=1
	st.b	$s4, $a0, 0
	b	.LBB18_26
	.p2align	4, , 16
.LBB18_11:                              #   in Loop: Header=BB18_6 Depth=1
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a2, $a2, -8
	ldx.bu	$a3, $s1, $a2
	ld.d	$a4, $s8, 8
	ldx.bu	$s6, $s1, $a1
	add.d	$a1, $a2, $a3
	sub.d	$a1, $a1, $a4
	addi.d	$a2, $a1, 1
	add.d	$a0, $a0, $s4
	addi.d	$a0, $a0, 1
	add.d	$a1, $s1, $a4
	pcaddu18i	$ra, %call36(MoveMemory)
	jirl	$ra, $ra, 0
	addi.d	$a1, $s5, 1
	bgeu	$a1, $s0, .LBB18_25
# %bb.12:                               # %.lr.ph.i
                                        #   in Loop: Header=BB18_6 Depth=1
	sub.d	$a3, $s4, $s6
	srai.d	$a0, $a3, 63
	xor	$a2, $a3, $a0
	sub.w	$a0, $a2, $a0
	nor	$a2, $s5, $zero
	add.d	$a2, $s0, $a2
	bltz	$a3, .LBB18_19
# %bb.13:                               # %.lr.ph.split.i.preheader
                                        #   in Loop: Header=BB18_6 Depth=1
	ori	$a3, $zero, 8
	bltu	$a2, $a3, .LBB18_17
# %bb.14:                               # %vector.ph119
                                        #   in Loop: Header=BB18_6 Depth=1
	move	$a3, $a2
	bstrins.d	$a3, $zero, 2, 0
	add.d	$a1, $a1, $a3
	xvreplgr2vr.d	$xr0, $a0
	ld.d	$a4, $sp, 8                     # 8-byte Folded Reload
	alsl.d	$a4, $s5, $a4, 3
	move	$a5, $a3
	.p2align	4, , 16
.LBB18_15:                              # %vector.body124
                                        #   Parent Loop BB18_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvld	$xr1, $a4, -32
	xvld	$xr2, $a4, 0
	xvadd.d	$xr1, $xr1, $xr0
	xvadd.d	$xr2, $xr2, $xr0
	xvst	$xr1, $a4, -32
	xvst	$xr2, $a4, 0
	addi.d	$a5, $a5, -8
	addi.d	$a4, $a4, 64
	bnez	$a5, .LBB18_15
# %bb.16:                               # %middle.block130
                                        #   in Loop: Header=BB18_6 Depth=1
	beq	$a2, $a3, .LBB18_25
.LBB18_17:                              # %.lr.ph.split.i.preheader137
                                        #   in Loop: Header=BB18_6 Depth=1
	sub.d	$a2, $s0, $a1
	alsl.d	$a1, $a1, $s2, 3
	.p2align	4, , 16
.LBB18_18:                              # %.lr.ph.split.i
                                        #   Parent Loop BB18_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a3, $a1, 0
	add.d	$a3, $a3, $a0
	st.d	$a3, $a1, 0
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, 8
	bnez	$a2, .LBB18_18
	b	.LBB18_25
.LBB18_19:                              # %.lr.ph.split.us.i.preheader
                                        #   in Loop: Header=BB18_6 Depth=1
	ori	$a3, $zero, 8
	bltu	$a2, $a3, .LBB18_23
# %bb.20:                               # %vector.ph103
                                        #   in Loop: Header=BB18_6 Depth=1
	move	$a3, $a2
	bstrins.d	$a3, $zero, 2, 0
	add.d	$a1, $a1, $a3
	xvreplgr2vr.d	$xr0, $a0
	ld.d	$a4, $sp, 8                     # 8-byte Folded Reload
	alsl.d	$a4, $s5, $a4, 3
	move	$a5, $a3
	.p2align	4, , 16
.LBB18_21:                              # %vector.body108
                                        #   Parent Loop BB18_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvld	$xr1, $a4, -32
	xvld	$xr2, $a4, 0
	xvsub.d	$xr1, $xr1, $xr0
	xvsub.d	$xr2, $xr2, $xr0
	xvst	$xr1, $a4, -32
	xvst	$xr2, $a4, 0
	addi.d	$a5, $a5, -8
	addi.d	$a4, $a4, 64
	bnez	$a5, .LBB18_21
# %bb.22:                               # %middle.block114
                                        #   in Loop: Header=BB18_6 Depth=1
	beq	$a2, $a3, .LBB18_25
.LBB18_23:                              # %.lr.ph.split.us.i.preheader136
                                        #   in Loop: Header=BB18_6 Depth=1
	sub.d	$a2, $s0, $a1
	alsl.d	$a1, $a1, $s2, 3
	.p2align	4, , 16
.LBB18_24:                              # %.lr.ph.split.us.i
                                        #   Parent Loop BB18_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a3, $a1, 0
	sub.d	$a3, $a3, $a0
	st.d	$a3, $a1, 0
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, 8
	bnez	$a2, .LBB18_24
	.p2align	4, , 16
.LBB18_25:                              # %._crit_edge.i
                                        #   in Loop: Header=BB18_6 Depth=1
	ld.d	$a0, $s8, 0
	stx.b	$s4, $s1, $a0
.LBB18_26:                              # %stradjust.exit
                                        #   in Loop: Header=BB18_6 Depth=1
	ld.d	$a0, $s8, 0
	ld.d	$a1, $s7, 0
	add.d	$a0, $s1, $a0
	add.d	$a1, $s1, $a1
	addi.d	$a2, $s4, 1
	pcaddu18i	$ra, %call36(MoveMemory)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s7, 0
	ld.bu	$s4, $sp, 40
	add.d	$a0, $s1, $a1
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	bne	$s3, $a2, .LBB18_28
# %bb.27:                               #   in Loop: Header=BB18_6 Depth=1
	st.b	$s4, $a0, 0
	b	.LBB18_4
	.p2align	4, , 16
.LBB18_28:                              #   in Loop: Header=BB18_6 Depth=1
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a2, $a2, -8
	ldx.bu	$a3, $s1, $a2
	ld.d	$a4, $s7, 8
	ldx.bu	$s6, $s1, $a1
	add.d	$a1, $a2, $a3
	sub.d	$a1, $a1, $a4
	addi.d	$a2, $a1, 1
	add.d	$a0, $a0, $s4
	addi.d	$a0, $a0, 1
	add.d	$a1, $s1, $a4
	pcaddu18i	$ra, %call36(MoveMemory)
	jirl	$ra, $ra, 0
	addi.d	$a1, $s3, 1
	bgeu	$a1, $s0, .LBB18_3
# %bb.29:                               # %.lr.ph.i61
                                        #   in Loop: Header=BB18_6 Depth=1
	sub.d	$a3, $s4, $s6
	srai.d	$a0, $a3, 63
	xor	$a2, $a3, $a0
	sub.w	$a0, $a2, $a0
	nor	$a2, $s3, $zero
	add.d	$a2, $s0, $a2
	bltz	$a3, .LBB18_36
# %bb.30:                               # %.lr.ph.split.i62.preheader
                                        #   in Loop: Header=BB18_6 Depth=1
	ori	$a3, $zero, 8
	bltu	$a2, $a3, .LBB18_34
# %bb.31:                               # %vector.ph87
                                        #   in Loop: Header=BB18_6 Depth=1
	move	$a3, $a2
	bstrins.d	$a3, $zero, 2, 0
	add.d	$a1, $a1, $a3
	xvreplgr2vr.d	$xr0, $a0
	ld.d	$a4, $sp, 8                     # 8-byte Folded Reload
	alsl.d	$a4, $s3, $a4, 3
	move	$a5, $a3
	.p2align	4, , 16
.LBB18_32:                              # %vector.body92
                                        #   Parent Loop BB18_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvld	$xr1, $a4, -32
	xvld	$xr2, $a4, 0
	xvadd.d	$xr1, $xr1, $xr0
	xvadd.d	$xr2, $xr2, $xr0
	xvst	$xr1, $a4, -32
	xvst	$xr2, $a4, 0
	addi.d	$a5, $a5, -8
	addi.d	$a4, $a4, 64
	bnez	$a5, .LBB18_32
# %bb.33:                               # %middle.block98
                                        #   in Loop: Header=BB18_6 Depth=1
	beq	$a2, $a3, .LBB18_3
.LBB18_34:                              # %.lr.ph.split.i62.preheader134
                                        #   in Loop: Header=BB18_6 Depth=1
	sub.d	$a2, $s0, $a1
	alsl.d	$a1, $a1, $s2, 3
	.p2align	4, , 16
.LBB18_35:                              # %.lr.ph.split.i62
                                        #   Parent Loop BB18_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a3, $a1, 0
	add.d	$a3, $a3, $a0
	st.d	$a3, $a1, 0
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, 8
	bnez	$a2, .LBB18_35
	b	.LBB18_3
.LBB18_36:                              # %.lr.ph.split.us.i66.preheader
                                        #   in Loop: Header=BB18_6 Depth=1
	ori	$a3, $zero, 8
	bltu	$a2, $a3, .LBB18_40
# %bb.37:                               # %vector.ph
                                        #   in Loop: Header=BB18_6 Depth=1
	move	$a3, $a2
	bstrins.d	$a3, $zero, 2, 0
	add.d	$a1, $a1, $a3
	xvreplgr2vr.d	$xr0, $a0
	ld.d	$a4, $sp, 8                     # 8-byte Folded Reload
	alsl.d	$a4, $s3, $a4, 3
	move	$a5, $a3
	.p2align	4, , 16
.LBB18_38:                              # %vector.body
                                        #   Parent Loop BB18_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvld	$xr1, $a4, -32
	xvld	$xr2, $a4, 0
	xvsub.d	$xr1, $xr1, $xr0
	xvsub.d	$xr2, $xr2, $xr0
	xvst	$xr1, $a4, -32
	xvst	$xr2, $a4, 0
	addi.d	$a5, $a5, -8
	addi.d	$a4, $a4, 64
	bnez	$a5, .LBB18_38
# %bb.39:                               # %middle.block
                                        #   in Loop: Header=BB18_6 Depth=1
	beq	$a2, $a3, .LBB18_3
.LBB18_40:                              # %.lr.ph.split.us.i66.preheader133
                                        #   in Loop: Header=BB18_6 Depth=1
	sub.d	$a2, $s0, $a1
	alsl.d	$a1, $a1, $s2, 3
	.p2align	4, , 16
.LBB18_41:                              # %.lr.ph.split.us.i66
                                        #   Parent Loop BB18_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a3, $a1, 0
	sub.d	$a3, $a3, $a0
	st.d	$a3, $a1, 0
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, 8
	bnez	$a2, .LBB18_41
	b	.LBB18_3
.Lfunc_end18:
	.size	strsift, .Lfunc_end18-strsift
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"NNET.DAT"
	.size	.L.str, 9

	.type	inpath,@object                  # @inpath
	.data
	.globl	inpath
	.p2align	3, 0x0
inpath:
	.dword	.L.str
	.size	inpath, 8

	.type	.L.str.1,@object                # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"Hello"
	.size	.L.str.1, 6

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"He"
	.size	.L.str.2, 3

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"Him"
	.size	.L.str.3, 4

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"the"
	.size	.L.str.4, 4

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"this"
	.size	.L.str.5, 5

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"that"
	.size	.L.str.6, 5

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"though"
	.size	.L.str.7, 7

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"rough"
	.size	.L.str.8, 6

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"cough"
	.size	.L.str.9, 6

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"obviously"
	.size	.L.str.10, 10

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"But"
	.size	.L.str.11, 4

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"but"
	.size	.L.str.12, 4

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"bye"
	.size	.L.str.13, 4

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"begin"
	.size	.L.str.14, 6

	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	"beginning"
	.size	.L.str.15, 10

	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	"beginnings"
	.size	.L.str.16, 11

	.type	.L.str.17,@object               # @.str.17
.L.str.17:
	.asciz	"of"
	.size	.L.str.17, 3

	.type	.L.str.18,@object               # @.str.18
.L.str.18:
	.asciz	"our"
	.size	.L.str.18, 4

	.type	.L.str.19,@object               # @.str.19
.L.str.19:
	.asciz	"ourselves"
	.size	.L.str.19, 10

	.type	.L.str.20,@object               # @.str.20
.L.str.20:
	.asciz	"yourselves"
	.size	.L.str.20, 11

	.type	.L.str.21,@object               # @.str.21
.L.str.21:
	.asciz	"to"
	.size	.L.str.21, 3

	.type	.L.str.22,@object               # @.str.22
.L.str.22:
	.asciz	"together"
	.size	.L.str.22, 9

	.type	.L.str.23,@object               # @.str.23
.L.str.23:
	.asciz	"togetherness"
	.size	.L.str.23, 13

	.type	.L.str.24,@object               # @.str.24
.L.str.24:
	.asciz	"from"
	.size	.L.str.24, 5

	.type	.L.str.25,@object               # @.str.25
.L.str.25:
	.asciz	"either"
	.size	.L.str.25, 7

	.type	.L.str.26,@object               # @.str.26
.L.str.26:
	.asciz	"I"
	.size	.L.str.26, 2

	.type	.L.str.27,@object               # @.str.27
.L.str.27:
	.asciz	"A"
	.size	.L.str.27, 2

	.type	.L.str.28,@object               # @.str.28
.L.str.28:
	.asciz	"return"
	.size	.L.str.28, 7

	.type	.L.str.29,@object               # @.str.29
.L.str.29:
	.asciz	"However"
	.size	.L.str.29, 8

	.type	.L.str.30,@object               # @.str.30
.L.str.30:
	.asciz	"example"
	.size	.L.str.30, 8

	.type	.L.str.31,@object               # @.str.31
.L.str.31:
	.asciz	"yet"
	.size	.L.str.31, 4

	.type	.L.str.32,@object               # @.str.32
.L.str.32:
	.asciz	"quickly"
	.size	.L.str.32, 8

	.type	.L.str.33,@object               # @.str.33
.L.str.33:
	.asciz	"all"
	.size	.L.str.33, 4

	.type	.L.str.34,@object               # @.str.34
.L.str.34:
	.asciz	"if"
	.size	.L.str.34, 3

	.type	.L.str.35,@object               # @.str.35
.L.str.35:
	.asciz	"were"
	.size	.L.str.35, 5

	.type	.L.str.36,@object               # @.str.36
.L.str.36:
	.asciz	"includes"
	.size	.L.str.36, 9

	.type	.L.str.37,@object               # @.str.37
.L.str.37:
	.asciz	"always"
	.size	.L.str.37, 7

	.type	.L.str.38,@object               # @.str.38
.L.str.38:
	.asciz	"never"
	.size	.L.str.38, 6

	.type	.L.str.39,@object               # @.str.39
.L.str.39:
	.asciz	"not"
	.size	.L.str.39, 4

	.type	.L.str.40,@object               # @.str.40
.L.str.40:
	.asciz	"small"
	.size	.L.str.40, 6

	.type	.L.str.41,@object               # @.str.41
.L.str.41:
	.asciz	"returns"
	.size	.L.str.41, 8

	.type	.L.str.42,@object               # @.str.42
.L.str.42:
	.asciz	"set"
	.size	.L.str.42, 4

	.type	.L.str.43,@object               # @.str.43
.L.str.43:
	.asciz	"basic"
	.size	.L.str.43, 6

	.type	.L.str.44,@object               # @.str.44
.L.str.44:
	.asciz	"Entered"
	.size	.L.str.44, 8

	.type	.L.str.45,@object               # @.str.45
.L.str.45:
	.asciz	"with"
	.size	.L.str.45, 5

	.type	.L.str.46,@object               # @.str.46
.L.str.46:
	.asciz	"used"
	.size	.L.str.46, 5

	.type	.L.str.47,@object               # @.str.47
.L.str.47:
	.asciz	"shown"
	.size	.L.str.47, 6

	.type	.L.str.48,@object               # @.str.48
.L.str.48:
	.asciz	"you"
	.size	.L.str.48, 4

	.type	.L.str.49,@object               # @.str.49
.L.str.49:
	.asciz	"know"
	.size	.L.str.49, 5

	.type	wordcatarray,@object            # @wordcatarray
	.data
	.globl	wordcatarray
	.p2align	3, 0x0
wordcatarray:
	.dword	.L.str.1
	.dword	.L.str.2
	.dword	.L.str.3
	.dword	.L.str.4
	.dword	.L.str.5
	.dword	.L.str.6
	.dword	.L.str.7
	.dword	.L.str.8
	.dword	.L.str.9
	.dword	.L.str.10
	.dword	.L.str.11
	.dword	.L.str.12
	.dword	.L.str.13
	.dword	.L.str.14
	.dword	.L.str.15
	.dword	.L.str.16
	.dword	.L.str.17
	.dword	.L.str.18
	.dword	.L.str.19
	.dword	.L.str.20
	.dword	.L.str.21
	.dword	.L.str.22
	.dword	.L.str.23
	.dword	.L.str.24
	.dword	.L.str.25
	.dword	.L.str.26
	.dword	.L.str.27
	.dword	.L.str.28
	.dword	.L.str.29
	.dword	.L.str.6
	.dword	.L.str.30
	.dword	.L.str.31
	.dword	.L.str.32
	.dword	.L.str.33
	.dword	.L.str.34
	.dword	.L.str.35
	.dword	.L.str.36
	.dword	.L.str.37
	.dword	.L.str.38
	.dword	.L.str.39
	.dword	.L.str.40
	.dword	.L.str.41
	.dword	.L.str.42
	.dword	.L.str.43
	.dword	.L.str.44
	.dword	.L.str.45
	.dword	.L.str.46
	.dword	.L.str.47
	.dword	.L.str.48
	.dword	.L.str.49
	.size	wordcatarray, 400

	.type	.L.str.50,@object               # @.str.50
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.50:
	.asciz	"CPU:Numeric Sort"
	.size	.L.str.50, 17

	.type	.L.str.52,@object               # @.str.52
.L.str.52:
	.asciz	"CPU:String Sort"
	.size	.L.str.52, 16

	.type	.L.str.53,@object               # @.str.53
.L.str.53:
	.asciz	"CPU:Bitfields"
	.size	.L.str.53, 14

	.type	.L.str.54,@object               # @.str.54
.L.str.54:
	.asciz	"CPU:Floating Emulation"
	.size	.L.str.54, 23

	.type	.L.str.56,@object               # @.str.56
.L.str.56:
	.asciz	"FPU:Transcendental"
	.size	.L.str.56, 19

	.type	.L.str.57,@object               # @.str.57
.L.str.57:
	.asciz	"CPU:Assignment"
	.size	.L.str.57, 15

	.type	.L.str.58,@object               # @.str.58
.L.str.58:
	.asciz	"CPU:IDEA"
	.size	.L.str.58, 9

	.type	.L.str.59,@object               # @.str.59
.L.str.59:
	.asciz	"CPU:Huffman"
	.size	.L.str.59, 12

	.type	hufftree,@object                # @hufftree
	.local	hufftree
	.comm	hufftree,8,8
	.type	.L.str.61,@object               # @.str.61
.L.str.61:
	.asciz	"FPU:LU"
	.size	.L.str.61, 7

	.type	LUtempvv,@object                # @LUtempvv
	.bss
	.globl	LUtempvv
	.p2align	3, 0x0
LUtempvv:
	.dword	0
	.size	LUtempvv, 8

	.type	mid_wts,@object                 # @mid_wts
	.globl	mid_wts
	.p2align	5, 0x0
mid_wts:
	.space	2240
	.size	mid_wts, 2240

	.type	out_wts,@object                 # @out_wts
	.globl	out_wts
	.p2align	5, 0x0
out_wts:
	.space	512
	.size	out_wts, 512

	.type	mid_out,@object                 # @mid_out
	.globl	mid_out
	.p2align	5, 0x0
mid_out:
	.space	64
	.size	mid_out, 64

	.type	out_out,@object                 # @out_out
	.globl	out_out
	.p2align	5, 0x0
out_out:
	.space	64
	.size	out_out, 64

	.type	mid_error,@object               # @mid_error
	.globl	mid_error
	.p2align	3, 0x0
mid_error:
	.space	64
	.size	mid_error, 64

	.type	out_error,@object               # @out_error
	.globl	out_error
	.p2align	3, 0x0
out_error:
	.space	64
	.size	out_error, 64

	.type	mid_wt_change,@object           # @mid_wt_change
	.globl	mid_wt_change
	.p2align	5, 0x0
mid_wt_change:
	.space	2240
	.size	mid_wt_change, 2240

	.type	out_wt_change,@object           # @out_wt_change
	.globl	out_wt_change
	.p2align	5, 0x0
out_wt_change:
	.space	512
	.size	out_wt_change, 512

	.type	in_pats,@object                 # @in_pats
	.globl	in_pats
	.p2align	3, 0x0
in_pats:
	.space	2800
	.size	in_pats, 2800

	.type	out_pats,@object                # @out_pats
	.globl	out_pats
	.p2align	3, 0x0
out_pats:
	.space	640
	.size	out_pats, 640

	.type	tot_out_error,@object           # @tot_out_error
	.globl	tot_out_error
	.p2align	3, 0x0
tot_out_error:
	.space	80
	.size	tot_out_error, 80

	.type	out_wt_cum_change,@object       # @out_wt_cum_change
	.globl	out_wt_cum_change
	.p2align	5, 0x0
out_wt_cum_change:
	.space	512
	.size	out_wt_cum_change, 512

	.type	mid_wt_cum_change,@object       # @mid_wt_cum_change
	.globl	mid_wt_cum_change
	.p2align	5, 0x0
mid_wt_cum_change:
	.space	2240
	.size	mid_wt_cum_change, 2240

	.type	worst_error,@object             # @worst_error
	.globl	worst_error
	.p2align	3, 0x0
worst_error:
	.dword	0x0000000000000000              # double 0
	.size	worst_error, 8

	.type	average_error,@object           # @average_error
	.globl	average_error
	.p2align	3, 0x0
average_error:
	.dword	0x0000000000000000              # double 0
	.size	average_error, 8

	.type	avg_out_error,@object           # @avg_out_error
	.globl	avg_out_error
	.p2align	3, 0x0
avg_out_error:
	.space	80
	.size	avg_out_error, 80

	.type	iteration_count,@object         # @iteration_count
	.globl	iteration_count
	.p2align	2, 0x0
iteration_count:
	.word	0                               # 0x0
	.size	iteration_count, 4

	.type	numpats,@object                 # @numpats
	.globl	numpats
	.p2align	2, 0x0
numpats:
	.word	0                               # 0x0
	.size	numpats, 4

	.type	numpasses,@object               # @numpasses
	.globl	numpasses
	.p2align	2, 0x0
numpasses:
	.word	0                               # 0x0
	.size	numpasses, 4

	.type	learned,@object                 # @learned
	.globl	learned
	.p2align	2, 0x0
learned:
	.word	0                               # 0x0
	.size	learned, 4

	.type	.L.str.63,@object               # @.str.63
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.63:
	.asciz	"CPU:Stringsort"
	.size	.L.str.63, 15

	.type	.L.str.64,@object               # @.str.64
.L.str.64:
	.asciz	"r"
	.size	.L.str.64, 2

	.type	.L.str.65,@object               # @.str.65
.L.str.65:
	.asciz	"\n CPU:NNET--error in opening file!"
	.size	.L.str.65, 35

	.type	.L.str.66,@object               # @.str.66
.L.str.66:
	.asciz	"%d  %d  %d"
	.size	.L.str.66, 11

	.type	.L.str.67,@object               # @.str.67
.L.str.67:
	.asciz	"\n CPU:NNET -- Should read 3 items in line one; did read %d"
	.size	.L.str.67, 59

	.type	.L.str.68,@object               # @.str.68
.L.str.68:
	.asciz	"%d"
	.size	.L.str.68, 3

	.type	.L.str.69,@object               # @.str.69
.L.str.69:
	.asciz	"\n CPU:NNET -- Should read 1 item in line 2; did read %d"
	.size	.L.str.69, 56

	.type	.L.str.70,@object               # @.str.70
.L.str.70:
	.asciz	"%d  %d  %d  %d  %d"
	.size	.L.str.70, 19

	.type	.L.str.71,@object               # @.str.71
.L.str.71:
	.asciz	"\n CPU:NNET -- failure in reading input!"
	.size	.L.str.71, 40

	.type	.L.str.72,@object               # @.str.72
.L.str.72:
	.asciz	"%d  %d  %d  %d  %d  %d  %d  %d"
	.size	.L.str.72, 31

	.type	.Lstr,@object                   # @str
.Lstr:
	.asciz	"CPU:NSORT -- NUMNUMARRAYS hit."
	.size	.Lstr, 31

	.type	.Lstr.1,@object                 # @str.1
.Lstr.1:
	.asciz	"CPU:EMFPU -- CMPUEMFLOATLOOPMAX limit hit"
	.size	.Lstr.1, 42

	.type	.Lstr.2,@object                 # @str.2
.Lstr.2:
	.asciz	"FPU:LU -- Array limit reached"
	.size	.Lstr.2, 30

	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym numpats
