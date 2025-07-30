	.file	"placepads.c"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function placepads
.LCPI0_0:
	.dword	0x3fb999999999999a              # double 0.10000000000000001
	.text
	.globl	placepads
	.p2align	5
	.type	placepads,@function
placepads:                              # @placepads
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
	pcalau12i	$a0, %got_pc_hi20(blockt)
	ld.d	$a0, $a0, %got_pc_lo12(blockt)
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	ld.w	$t1, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(blockr)
	ld.d	$a3, $a0, %got_pc_lo12(blockr)
	pcalau12i	$a0, %got_pc_hi20(blockb)
	ld.d	$a4, $a0, %got_pc_lo12(blockb)
	pcalau12i	$a0, %got_pc_hi20(numcells)
	ld.d	$a0, $a0, %got_pc_lo12(numcells)
	pcalau12i	$a1, %got_pc_hi20(numpads)
	ld.d	$a1, $a1, %got_pc_lo12(numpads)
	pcalau12i	$a2, %got_pc_hi20(blockl)
	ld.d	$a2, $a2, %got_pc_lo12(blockl)
	ld.w	$a0, $a0, 0
	ld.w	$a5, $a1, 0
	st.d	$a3, $sp, 56                    # 8-byte Folded Spill
	ld.w	$a7, $a3, 0
	st.d	$a4, $sp, 48                    # 8-byte Folded Spill
	st.w	$zero, $a4, 0
	st.d	$a2, $sp, 40                    # 8-byte Folded Spill
	st.w	$zero, $a2, 0
	add.w	$a1, $a5, $a0
	blez	$a5, .LBB0_113
# %bb.1:                                # %.lr.ph456
	st.d	$a5, $sp, 0                     # 8-byte Folded Spill
	pcalau12i	$a2, %got_pc_hi20(cellarray)
	ld.d	$a3, $a2, %got_pc_lo12(cellarray)
	pcalau12i	$a2, %got_pc_hi20(fixLRBT)
	ld.d	$a4, $a2, %got_pc_lo12(fixLRBT)
	pcalau12i	$a2, %got_pc_hi20(padspace)
	ld.d	$a2, $a2, %got_pc_lo12(padspace)
	move	$t6, $zero
	st.d	$zero, $sp, 80                  # 8-byte Folded Spill
	move	$s8, $zero
	st.d	$a3, $sp, 32                    # 8-byte Folded Spill
	ld.d	$s2, $a3, 0
	st.d	$a4, $sp, 24                    # 8-byte Folded Spill
	ld.d	$s3, $a4, 0
	st.d	$a2, $sp, 16                    # 8-byte Folded Spill
	ld.d	$s4, $a2, 0
	addi.w	$a2, $a0, 1
	st.d	$a2, $sp, 72                    # 8-byte Folded Spill
	addi.d	$a2, $a1, 1
	slli.d	$a3, $a0, 3
	st.d	$a3, $sp, 8                     # 8-byte Folded Spill
	sub.d	$s5, $s4, $a3
	ori	$s6, $zero, 4
	move	$a5, $t1
                                        # implicit-def: $r17
	move	$s1, $a7
	move	$a3, $a0
	b	.LBB0_4
	.p2align	4, , 16
.LBB0_2:                                #   in Loop: Header=BB0_4 Depth=1
	move	$s8, $t6
	move	$s1, $t2
.LBB0_3:                                # %.loopexit423
                                        #   in Loop: Header=BB0_4 Depth=1
	move	$a3, $t4
	bge	$t4, $a1, .LBB0_28
.LBB0_4:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_7 Depth 2
                                        #     Child Loop BB0_17 Depth 2
                                        #       Child Loop BB0_25 Depth 3
	addi.w	$t4, $a3, 1
	slli.d	$a4, $t4, 3
	ldx.d	$a4, $s2, $a4
	ld.w	$a6, $a4, 80
	bne	$a6, $s6, .LBB0_3
# %bb.5:                                #   in Loop: Header=BB0_4 Depth=1
	ld.d	$a4, $a4, 152
	ld.w	$a6, $a4, 68
	ld.w	$t2, $a4, 64
	ld.w	$t3, $a4, 60
	ld.w	$a4, $a4, 56
	sub.w	$s7, $a6, $t2
	sub.w	$t4, $t3, $a4
	addi.w	$a6, $a3, 2
	ori	$a4, $zero, 2
	blt	$a1, $a6, .LBB0_11
# %bb.6:                                # %.lr.ph.preheader
                                        #   in Loop: Header=BB0_4 Depth=1
	sub.w	$t6, $a1, $a3
	alsl.d	$t7, $a6, $s2, 3
	ori	$t2, $zero, 1
	.p2align	4, , 16
.LBB0_7:                                # %.lr.ph
                                        #   Parent Loop BB0_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a3, $t7, 0
	ld.w	$a4, $a3, 80
	bne	$a4, $s6, .LBB0_10
# %bb.8:                                #   in Loop: Header=BB0_7 Depth=2
	ld.d	$a3, $a3, 152
	ld.w	$a4, $a3, 68
	ld.w	$a6, $a3, 64
	addi.w	$t2, $t2, 1
	sub.w	$a4, $a4, $a6
	slt	$a6, $s7, $a4
	maskeqz	$a4, $a4, $a6
	ld.w	$t3, $a3, 60
	ld.w	$a3, $a3, 56
	masknez	$a6, $s7, $a6
	or	$s7, $a4, $a6
	add.d	$a4, $t3, $t4
	sub.w	$t4, $a4, $a3
	addi.d	$t7, $t7, 8
	bne	$t6, $t2, .LBB0_7
# %bb.9:                                #   in Loop: Header=BB0_4 Depth=1
	move	$t2, $t6
.LBB0_10:                               # %._crit_edge.loopexit
                                        #   in Loop: Header=BB0_4 Depth=1
	addi.w	$a4, $t2, 1
.LBB0_11:                               # %._crit_edge
                                        #   in Loop: Header=BB0_4 Depth=1
	ld.w	$a3, $s3, 8
	beqz	$a3, .LBB0_13
# %bb.12:                               #   in Loop: Header=BB0_4 Depth=1
	slt	$a3, $t4, $s1
	masknez	$a4, $t4, $a3
	maskeqz	$a3, $s1, $a3
	or	$t2, $a3, $a4
	move	$t7, $t2
	b	.LBB0_14
.LBB0_13:                               #   in Loop: Header=BB0_4 Depth=1
	sub.w	$t7, $s1, $t4
	div.w	$a3, $t7, $a4
	srai.d	$a4, $a3, 63
	andn	$t5, $a3, $a4
	slt	$a3, $s1, $t4
	masknez	$a4, $s1, $a3
	maskeqz	$a3, $t4, $a3
	or	$t2, $a3, $a4
.LBB0_14:                               # %.lr.ph448
                                        #   in Loop: Header=BB0_4 Depth=1
	slt	$a3, $s1, $t4
	sub.d	$a4, $t4, $s1
	bstrpick.d	$a4, $a4, 31, 1
	maskeqz	$a4, $a4, $a3
	ld.d	$a6, $sp, 80                    # 8-byte Folded Reload
	masknez	$a3, $a6, $a3
	or	$a3, $a4, $a3
	st.d	$a3, $sp, 80                    # 8-byte Folded Spill
	pcalau12i	$a3, %pc_hi20(.LCPI0_0)
	fld.d	$fa0, $a3, %pc_lo12(.LCPI0_0)
	sub.d	$a3, $a5, $s8
	movgr2fr.w	$fa1, $a3
	ffint.d.w	$fa1, $fa1
	fmul.d	$fa0, $fa1, $fa0
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a3, $fa0
	add.d	$a3, $s7, $a3
	add.w	$t6, $a3, $s8
	ld.d	$a4, $sp, 48                    # 8-byte Folded Reload
	st.w	$t6, $a4, 0
	add.w	$a5, $a3, $a5
	ld.d	$a3, $sp, 64                    # 8-byte Folded Reload
	st.w	$a5, $a3, 0
	movgr2fr.w	$fa0, $t7
	ffint.d.w	$fa0, $fa0
	ld.d	$t4, $sp, 72                    # 8-byte Folded Reload
	move	$t7, $a0
	b	.LBB0_17
.LBB0_15:                               #   in Loop: Header=BB0_17 Depth=2
	move	$t4, $a2
	.p2align	4, , 16
.LBB0_16:                               # %.loopexit422
                                        #   in Loop: Header=BB0_17 Depth=2
	move	$t7, $t4
	addi.w	$a3, $t4, 0
	addi.w	$t4, $t4, 1
	bge	$a3, $a1, .LBB0_2
.LBB0_17:                               #   Parent Loop BB0_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_25 Depth 3
	slli.d	$a3, $t4, 3
	ldx.d	$t8, $s2, $a3
	ld.w	$a3, $t8, 80
	bne	$a3, $s6, .LBB0_16
# %bb.18:                               #   in Loop: Header=BB0_17 Depth=2
	ld.d	$a4, $t8, 152
	ld.w	$a3, $a4, 60
	ld.w	$a6, $a4, 56
	ld.w	$t3, $s3, 8
	sub.w	$a3, $a3, $a6
	beqz	$t3, .LBB0_20
# %bb.19:                               #   in Loop: Header=BB0_17 Depth=2
	sub.w	$a6, $t4, $a0
	slli.d	$a6, $a6, 3
	fldx.d	$fa1, $s4, $a6
	fmul.d	$fa1, $fa1, $fa0
	ftintrz.w.d	$fa1, $fa1
	movfr2gr.s	$a6, $fa1
	b	.LBB0_21
.LBB0_20:                               #   in Loop: Header=BB0_17 Depth=2
	bstrpick.d	$a6, $a3, 31, 31
	add.w	$a6, $a3, $a6
	srli.d	$a6, $a6, 1
	add.d	$a6, $a6, $t5
.LBB0_21:                               #   in Loop: Header=BB0_17 Depth=2
	ld.w	$t3, $a4, 68
	ld.w	$a4, $a4, 64
	sub.w	$a4, $t3, $a4
	st.w	$a6, $t8, 12
	bstrpick.d	$a6, $a4, 31, 31
	add.w	$a6, $a4, $a6
	srli.d	$a6, $a6, 1
	sub.d	$a4, $s7, $a4
	add.d	$a4, $a4, $a6
	addi.w	$t4, $t7, 2
	st.w	$a4, $t8, 16
	blt	$a1, $t4, .LBB0_16
# %bb.22:                               # %.lr.ph439.preheader
                                        #   in Loop: Header=BB0_17 Depth=2
	add.d	$s0, $a3, $t5
	sub.d	$t7, $a2, $t4
	alsl.d	$s1, $t4, $s5, 3
	alsl.d	$t8, $t4, $s2, 3
	b	.LBB0_25
	.p2align	4, , 16
.LBB0_23:                               #   in Loop: Header=BB0_25 Depth=3
	fld.d	$fa1, $s1, 0
	fmul.d	$fa1, $fa1, $fa0
	ftintrz.w.d	$fa1, $fa1
	movfr2gr.s	$a6, $fa1
.LBB0_24:                               #   in Loop: Header=BB0_25 Depth=3
	ld.w	$t3, $s8, 68
	ld.w	$s0, $s8, 64
	sub.w	$t3, $t3, $s0
	st.w	$a6, $fp, 12
	bstrpick.d	$a6, $t3, 31, 31
	add.w	$a6, $t3, $a6
	srli.d	$a6, $a6, 1
	sub.d	$t3, $s7, $t3
	add.d	$a6, $t3, $a6
	st.w	$a6, $fp, 16
	add.d	$s0, $a4, $a3
	addi.d	$t4, $t4, 1
	addi.d	$t7, $t7, -1
	addi.d	$s1, $s1, 8
	addi.d	$t8, $t8, 8
	beqz	$t7, .LBB0_15
.LBB0_25:                               # %.lr.ph439
                                        #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_17 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$fp, $t8, 0
	ld.w	$a3, $fp, 80
	bne	$a3, $s6, .LBB0_16
# %bb.26:                               #   in Loop: Header=BB0_25 Depth=3
	ld.d	$s8, $fp, 152
	ld.w	$a3, $s8, 60
	ld.w	$a4, $s8, 56
	ld.w	$a6, $s3, 8
	sub.w	$a3, $a3, $a4
	add.d	$a4, $s0, $t5
	bnez	$a6, .LBB0_23
# %bb.27:                               #   in Loop: Header=BB0_25 Depth=3
	bstrpick.d	$a6, $a3, 31, 31
	add.w	$a6, $a3, $a6
	srli.d	$a6, $a6, 1
	add.d	$a6, $a4, $a6
	b	.LBB0_24
.LBB0_28:                               # %.lr.ph492
	ld.d	$a3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $a3, 0
	ld.d	$a3, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s3, $a3, 0
	ld.d	$a3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s4, $a3, 0
	movgr2fr.w	$fa0, $a5
	ffint.d.w	$fa1, $fa0
	pcalau12i	$a3, %pc_hi20(.LCPI0_0)
	fld.d	$fa0, $a3, %pc_lo12(.LCPI0_0)
	sub.d	$a3, $a5, $t6
	movgr2fr.w	$fa2, $a3
	ffint.d.w	$fa2, $fa2
	fmadd.d	$fa1, $fa2, $fa0, $fa1
	ld.d	$a3, $sp, 8                     # 8-byte Folded Reload
	sub.d	$s5, $s4, $a3
	ori	$s6, $zero, 2
	move	$a3, $a0
	b	.LBB0_30
	.p2align	4, , 16
.LBB0_29:                               # %.loopexit420
                                        #   in Loop: Header=BB0_30 Depth=1
	move	$a3, $t2
	bge	$t2, $a1, .LBB0_54
.LBB0_30:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_33 Depth 2
                                        #     Child Loop BB0_43 Depth 2
                                        #       Child Loop BB0_51 Depth 3
	addi.w	$t2, $a3, 1
	slli.d	$a4, $t2, 3
	ldx.d	$a4, $s2, $a4
	ld.w	$a6, $a4, 80
	bne	$a6, $s6, .LBB0_29
# %bb.31:                               #   in Loop: Header=BB0_30 Depth=1
	ld.d	$a4, $a4, 152
	ld.w	$a6, $a4, 60
	ld.w	$a4, $a4, 56
	sub.w	$t2, $a6, $a4
	addi.w	$a6, $a3, 2
	ori	$a4, $zero, 2
	blt	$a1, $a6, .LBB0_37
# %bb.32:                               # %.lr.ph466.preheader
                                        #   in Loop: Header=BB0_30 Depth=1
	sub.w	$a4, $a1, $a3
	alsl.d	$a6, $a6, $s2, 3
	ori	$a3, $zero, 1
	.p2align	4, , 16
.LBB0_33:                               # %.lr.ph466
                                        #   Parent Loop BB0_30 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$t3, $a6, 0
	ld.w	$t4, $t3, 80
	bne	$t4, $s6, .LBB0_36
# %bb.34:                               #   in Loop: Header=BB0_33 Depth=2
	ld.d	$t3, $t3, 152
	ld.w	$t4, $t3, 60
	ld.w	$t3, $t3, 56
	addi.w	$a3, $a3, 1
	add.d	$t2, $t4, $t2
	sub.w	$t2, $t2, $t3
	addi.d	$a6, $a6, 8
	bne	$a4, $a3, .LBB0_33
# %bb.35:                               #   in Loop: Header=BB0_30 Depth=1
	move	$a3, $a4
.LBB0_36:                               # %._crit_edge467.loopexit
                                        #   in Loop: Header=BB0_30 Depth=1
	addi.w	$a4, $a3, 1
.LBB0_37:                               # %._crit_edge467
                                        #   in Loop: Header=BB0_30 Depth=1
	ld.w	$a3, $s3, 12
	beqz	$a3, .LBB0_39
# %bb.38:                               #   in Loop: Header=BB0_30 Depth=1
	slt	$a3, $t2, $s1
	masknez	$a4, $t2, $a3
	maskeqz	$a3, $s1, $a3
	or	$a3, $a3, $a4
	b	.LBB0_40
.LBB0_39:                               #   in Loop: Header=BB0_30 Depth=1
	sub.w	$a3, $s1, $t2
	div.w	$a4, $a3, $a4
	srai.d	$a6, $a4, 63
	andn	$t5, $a4, $a6
.LBB0_40:                               # %.lr.ph486
                                        #   in Loop: Header=BB0_30 Depth=1
	slt	$a4, $s1, $t2
	sub.d	$a6, $t2, $s1
	bstrpick.d	$a6, $a6, 31, 1
	maskeqz	$a4, $a6, $a4
	ld.d	$a6, $sp, 80                    # 8-byte Folded Reload
	add.d	$a6, $a4, $a6
	st.d	$a6, $sp, 80                    # 8-byte Folded Spill
	movgr2fr.w	$fa2, $a3
	ffint.d.w	$fa2, $fa2
	ld.d	$t2, $sp, 72                    # 8-byte Folded Reload
	move	$t4, $a0
	b	.LBB0_43
.LBB0_41:                               #   in Loop: Header=BB0_43 Depth=2
	move	$t2, $a2
	.p2align	4, , 16
.LBB0_42:                               # %.loopexit419
                                        #   in Loop: Header=BB0_43 Depth=2
	move	$t4, $t2
	addi.w	$a3, $t2, 0
	addi.w	$t2, $t2, 1
	bge	$a3, $a1, .LBB0_29
.LBB0_43:                               #   Parent Loop BB0_30 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_51 Depth 3
	slli.d	$a3, $t2, 3
	ldx.d	$t7, $s2, $a3
	ld.w	$a3, $t7, 80
	bne	$a3, $s6, .LBB0_42
# %bb.44:                               #   in Loop: Header=BB0_43 Depth=2
	ld.d	$a3, $t7, 152
	ld.w	$a4, $a3, 60
	ld.w	$a6, $a3, 56
	ld.w	$t3, $s3, 12
	sub.w	$t8, $a4, $a6
	beqz	$t3, .LBB0_46
# %bb.45:                               #   in Loop: Header=BB0_43 Depth=2
	sub.w	$a4, $t2, $a0
	slli.d	$a4, $a4, 3
	fldx.d	$fa3, $s4, $a4
	fmul.d	$fa3, $fa3, $fa2
	ftintrz.w.d	$fa3, $fa3
	movfr2gr.s	$a4, $fa3
	b	.LBB0_47
.LBB0_46:                               #   in Loop: Header=BB0_43 Depth=2
	bstrpick.d	$a4, $t8, 31, 31
	add.w	$a4, $t8, $a4
	srli.d	$a4, $a4, 1
	add.d	$a4, $a4, $t5
.LBB0_47:                               #   in Loop: Header=BB0_43 Depth=2
	ld.w	$a6, $a3, 68
	ld.w	$a3, $a3, 64
	sub.w	$a3, $a6, $a3
	st.w	$a4, $t7, 12
	bstrpick.d	$a4, $a3, 31, 31
	add.w	$a3, $a3, $a4
	srai.d	$a3, $a3, 1
	movgr2fr.w	$fa3, $a3
	ffint.d.w	$fa3, $fa3
	fadd.d	$fa3, $fa1, $fa3
	ftintrz.w.d	$fa3, $fa3
	movfr2gr.s	$a3, $fa3
	addi.w	$t2, $t4, 2
	st.w	$a3, $t7, 16
	blt	$a1, $t2, .LBB0_42
# %bb.48:                               # %.lr.ph477.preheader
                                        #   in Loop: Header=BB0_43 Depth=2
	add.d	$fp, $t8, $t5
	sub.d	$t4, $a2, $t2
	alsl.d	$t7, $t2, $s5, 3
	alsl.d	$s7, $t2, $s2, 3
	b	.LBB0_51
	.p2align	4, , 16
.LBB0_49:                               #   in Loop: Header=BB0_51 Depth=3
	fld.d	$fa3, $t7, 0
	fmul.d	$fa3, $fa3, $fa2
	ftintrz.w.d	$fa3, $fa3
	movfr2gr.s	$a6, $fa3
.LBB0_50:                               #   in Loop: Header=BB0_51 Depth=3
	ld.w	$t3, $a4, 68
	ld.w	$a4, $a4, 64
	sub.w	$a4, $t3, $a4
	st.w	$a6, $t8, 12
	bstrpick.d	$a6, $a4, 31, 31
	add.w	$a4, $a4, $a6
	srai.d	$a4, $a4, 1
	movgr2fr.w	$fa3, $a4
	ffint.d.w	$fa3, $fa3
	fadd.d	$fa3, $fa1, $fa3
	ftintrz.w.d	$fa3, $fa3
	movfr2gr.s	$a4, $fa3
	st.w	$a4, $t8, 16
	add.d	$fp, $fp, $a3
	addi.d	$t2, $t2, 1
	addi.d	$t4, $t4, -1
	addi.d	$t7, $t7, 8
	addi.d	$s7, $s7, 8
	beqz	$t4, .LBB0_41
.LBB0_51:                               # %.lr.ph477
                                        #   Parent Loop BB0_30 Depth=1
                                        #     Parent Loop BB0_43 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$t8, $s7, 0
	ld.w	$a3, $t8, 80
	bne	$a3, $s6, .LBB0_42
# %bb.52:                               #   in Loop: Header=BB0_51 Depth=3
	ld.d	$a4, $t8, 152
	ld.w	$a3, $a4, 60
	ld.w	$a6, $a4, 56
	ld.w	$t3, $s3, 12
	sub.w	$a3, $a3, $a6
	add.d	$fp, $fp, $t5
	bnez	$t3, .LBB0_49
# %bb.53:                               #   in Loop: Header=BB0_51 Depth=3
	bstrpick.d	$a6, $a3, 31, 31
	add.w	$a6, $a3, $a6
	srli.d	$a6, $a6, 1
	add.d	$a6, $fp, $a6
	b	.LBB0_50
.LBB0_54:                               # %.lr.ph533
	move	$t2, $zero
	move	$s3, $zero
	move	$s1, $zero
	move	$s2, $zero
	ld.d	$a3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s4, $a3, 0
	ld.d	$a3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s5, $a3, 0
	ld.d	$a3, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s6, $a3, 0
	movgr2fr.w	$fa1, $t6
	ffint.d.w	$fa1, $fa1
	ld.d	$a3, $sp, 8                     # 8-byte Folded Reload
	sub.d	$s7, $s5, $a3
	ori	$s8, $zero, 1
	move	$t7, $a0
	b	.LBB0_57
	.p2align	4, , 16
.LBB0_55:                               #   in Loop: Header=BB0_57 Depth=1
	move	$s2, $t2
	move	$t1, $t7
.LBB0_56:                               # %.loopexit417
                                        #   in Loop: Header=BB0_57 Depth=1
	move	$t7, $t4
	bge	$t4, $a1, .LBB0_81
.LBB0_57:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_60 Depth 2
                                        #     Child Loop BB0_70 Depth 2
                                        #       Child Loop BB0_78 Depth 3
	addi.w	$t4, $t7, 1
	slli.d	$a3, $t4, 3
	ldx.d	$a3, $s4, $a3
	ld.w	$a4, $a3, 80
	bne	$a4, $s8, .LBB0_56
# %bb.58:                               #   in Loop: Header=BB0_57 Depth=1
	ld.d	$a3, $a3, 152
	ld.w	$a4, $a3, 68
	ld.w	$a6, $a3, 64
	ld.w	$t3, $a3, 60
	ld.w	$a3, $a3, 56
	sub.w	$t2, $a4, $a6
	sub.w	$ra, $t3, $a3
	addi.w	$a3, $t7, 2
	ori	$a4, $zero, 2
	blt	$a1, $a3, .LBB0_64
# %bb.59:                               # %.lr.ph501.preheader
                                        #   in Loop: Header=BB0_57 Depth=1
	sub.w	$t7, $a1, $t7
	alsl.d	$t8, $a3, $s4, 3
	ori	$t4, $zero, 1
	.p2align	4, , 16
.LBB0_60:                               # %.lr.ph501
                                        #   Parent Loop BB0_57 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a3, $t8, 0
	ld.w	$a4, $a3, 80
	bne	$a4, $s8, .LBB0_63
# %bb.61:                               #   in Loop: Header=BB0_60 Depth=2
	ld.d	$a3, $a3, 152
	ld.w	$a4, $a3, 60
	ld.w	$a6, $a3, 56
	addi.w	$t4, $t4, 1
	sub.w	$a4, $a4, $a6
	slt	$a6, $ra, $a4
	maskeqz	$a4, $a4, $a6
	ld.w	$t3, $a3, 68
	ld.w	$a3, $a3, 64
	masknez	$a6, $ra, $a6
	or	$ra, $a4, $a6
	add.d	$a4, $t3, $t2
	sub.w	$t2, $a4, $a3
	addi.d	$t8, $t8, 8
	bne	$t7, $t4, .LBB0_60
# %bb.62:                               #   in Loop: Header=BB0_57 Depth=1
	move	$t4, $t7
.LBB0_63:                               # %._crit_edge502.loopexit
                                        #   in Loop: Header=BB0_57 Depth=1
	addi.w	$a4, $t4, 1
.LBB0_64:                               # %._crit_edge502
                                        #   in Loop: Header=BB0_57 Depth=1
	ld.w	$a3, $s6, 0
	beqz	$a3, .LBB0_66
# %bb.65:                               #   in Loop: Header=BB0_57 Depth=1
	slt	$a3, $t2, $t1
	masknez	$a4, $t2, $a3
	maskeqz	$a3, $t1, $a3
	or	$t7, $a3, $a4
	move	$a3, $t7
	b	.LBB0_67
.LBB0_66:                               #   in Loop: Header=BB0_57 Depth=1
	sub.w	$a3, $t1, $t2
	div.w	$a4, $a3, $a4
	srai.d	$a6, $a4, 63
	andn	$t5, $a4, $a6
	slt	$a4, $t1, $t2
	masknez	$a6, $t1, $a4
	maskeqz	$a4, $t2, $a4
	or	$t7, $a4, $a6
.LBB0_67:                               # %.lr.ph523
                                        #   in Loop: Header=BB0_57 Depth=1
	slt	$a4, $t1, $t2
	sub.d	$a6, $t2, $t1
	bstrpick.d	$a6, $a6, 31, 1
	maskeqz	$a6, $a6, $a4
	masknez	$a4, $s1, $a4
	or	$s1, $a6, $a4
	sub.d	$a4, $a7, $s2
	movgr2fr.w	$fa2, $a4
	ffint.d.w	$fa2, $fa2
	fmul.d	$fa2, $fa2, $fa0
	ftintrz.w.d	$fa2, $fa2
	movfr2gr.s	$a4, $fa2
	add.d	$s3, $ra, $a4
	add.w	$a7, $s3, $a7
	ld.d	$a4, $sp, 56                    # 8-byte Folded Reload
	st.w	$a7, $a4, 0
	add.w	$t2, $s3, $s2
	ld.d	$a4, $sp, 40                    # 8-byte Folded Reload
	st.w	$t2, $a4, 0
	movgr2fr.w	$fa2, $a3
	ffint.d.w	$fa2, $fa2
	add.d	$t1, $t5, $t6
	ld.d	$t4, $sp, 72                    # 8-byte Folded Reload
	move	$t8, $a0
	b	.LBB0_70
.LBB0_68:                               #   in Loop: Header=BB0_70 Depth=2
	move	$t4, $a2
	.p2align	4, , 16
.LBB0_69:                               # %.loopexit416
                                        #   in Loop: Header=BB0_70 Depth=2
	move	$t8, $t4
	addi.w	$a3, $t4, 0
	addi.w	$t4, $t4, 1
	bge	$a3, $a1, .LBB0_55
.LBB0_70:                               #   Parent Loop BB0_57 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_78 Depth 3
	slli.d	$a3, $t4, 3
	ldx.d	$fp, $s4, $a3
	ld.w	$a3, $fp, 80
	bne	$a3, $s8, .LBB0_69
# %bb.71:                               #   in Loop: Header=BB0_70 Depth=2
	ld.d	$a4, $fp, 152
	ld.w	$a3, $a4, 68
	ld.w	$a6, $a4, 64
	ld.w	$t3, $s6, 0
	sub.w	$a3, $a3, $a6
	beqz	$t3, .LBB0_73
# %bb.72:                               #   in Loop: Header=BB0_70 Depth=2
	sub.w	$a6, $t4, $a0
	slli.d	$a6, $a6, 3
	fldx.d	$fa3, $s5, $a6
	fmadd.d	$fa3, $fa3, $fa2, $fa1
	ftintrz.w.d	$fa3, $fa3
	movfr2gr.s	$a6, $fa3
	b	.LBB0_74
.LBB0_73:                               #   in Loop: Header=BB0_70 Depth=2
	bstrpick.d	$a6, $a3, 31, 31
	add.w	$a6, $a3, $a6
	srli.d	$a6, $a6, 1
	add.d	$a6, $a6, $t1
.LBB0_74:                               #   in Loop: Header=BB0_70 Depth=2
	ld.w	$t3, $a4, 60
	ld.w	$a4, $a4, 56
	sub.w	$a4, $t3, $a4
	st.w	$a6, $fp, 16
	bstrpick.d	$a6, $a4, 31, 31
	add.w	$a6, $a4, $a6
	srli.d	$a6, $a6, 1
	sub.d	$a4, $ra, $a4
	add.d	$a4, $a4, $a6
	addi.w	$t4, $t8, 2
	st.w	$a4, $fp, 12
	blt	$a1, $t4, .LBB0_69
# %bb.75:                               # %.lr.ph514.preheader
                                        #   in Loop: Header=BB0_70 Depth=2
	add.d	$a3, $a3, $t1
	sub.d	$s2, $a2, $t4
	alsl.d	$t8, $t4, $s7, 3
	alsl.d	$fp, $t4, $s4, 3
	b	.LBB0_78
	.p2align	4, , 16
.LBB0_76:                               #   in Loop: Header=BB0_78 Depth=3
	fld.d	$fa3, $t8, 0
	fmadd.d	$fa3, $fa3, $fa2, $fa1
	ftintrz.w.d	$fa3, $fa3
	movfr2gr.s	$t3, $fa3
.LBB0_77:                               #   in Loop: Header=BB0_78 Depth=3
	ld.w	$t0, $a6, 60
	ld.w	$a6, $a6, 56
	sub.w	$a6, $t0, $a6
	st.w	$t3, $s0, 16
	bstrpick.d	$t0, $a6, 31, 31
	add.w	$t0, $a6, $t0
	srli.d	$t0, $t0, 1
	sub.d	$a6, $ra, $a6
	add.d	$a6, $a6, $t0
	st.w	$a6, $s0, 12
	add.d	$a3, $a3, $a4
	addi.d	$t4, $t4, 1
	addi.d	$s2, $s2, -1
	addi.d	$t8, $t8, 8
	addi.d	$fp, $fp, 8
	beqz	$s2, .LBB0_68
.LBB0_78:                               # %.lr.ph514
                                        #   Parent Loop BB0_57 Depth=1
                                        #     Parent Loop BB0_70 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$s0, $fp, 0
	ld.w	$a4, $s0, 80
	bne	$a4, $s8, .LBB0_69
# %bb.79:                               #   in Loop: Header=BB0_78 Depth=3
	ld.d	$a6, $s0, 152
	ld.w	$a4, $a6, 68
	ld.w	$t3, $a6, 64
	ld.w	$t0, $s6, 0
	sub.w	$a4, $a4, $t3
	add.d	$a3, $a3, $t5
	bnez	$t0, .LBB0_76
# %bb.80:                               #   in Loop: Header=BB0_78 Depth=3
	bstrpick.d	$t0, $a4, 31, 31
	add.w	$t0, $a4, $t0
	srli.d	$t0, $t0, 1
	add.d	$t3, $a3, $t0
	b	.LBB0_77
.LBB0_81:                               # %.lr.ph573
	ld.d	$a3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s4, $a3, 0
	ld.d	$a3, $sp, 24                    # 8-byte Folded Reload
	ld.d	$t8, $a3, 0
	ld.d	$a3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$fp, $a3, 0
	movgr2fr.w	$fa2, $a7
	ffint.d.w	$fa2, $fa2
	sub.d	$a3, $a7, $t2
	movgr2fr.w	$fa3, $a3
	ffint.d.w	$fa3, $fa3
	fmadd.d	$fa0, $fa3, $fa0, $fa2
	ld.d	$a3, $sp, 8                     # 8-byte Folded Reload
	sub.d	$s0, $fp, $a3
	ori	$s5, $zero, 3
	move	$a3, $a0
	b	.LBB0_83
	.p2align	4, , 16
.LBB0_82:                               # %.loopexit414
                                        #   in Loop: Header=BB0_83 Depth=1
	move	$a3, $t7
	bge	$t7, $a1, .LBB0_107
.LBB0_83:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_86 Depth 2
                                        #     Child Loop BB0_96 Depth 2
                                        #       Child Loop BB0_104 Depth 3
	addi.w	$t7, $a3, 1
	slli.d	$a4, $t7, 3
	ldx.d	$a4, $s4, $a4
	ld.w	$a6, $a4, 80
	bne	$a6, $s5, .LBB0_82
# %bb.84:                               #   in Loop: Header=BB0_83 Depth=1
	ld.d	$a4, $a4, 152
	ld.w	$a6, $a4, 68
	ld.w	$a4, $a4, 64
	sub.w	$t4, $a6, $a4
	addi.w	$a6, $a3, 2
	ori	$a4, $zero, 2
	blt	$a1, $a6, .LBB0_90
# %bb.85:                               # %.lr.ph543.preheader
                                        #   in Loop: Header=BB0_83 Depth=1
	sub.w	$a4, $a1, $a3
	alsl.d	$a6, $a6, $s4, 3
	ori	$a3, $zero, 1
	.p2align	4, , 16
.LBB0_86:                               # %.lr.ph543
                                        #   Parent Loop BB0_83 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$t3, $a6, 0
	ld.w	$t0, $t3, 80
	bne	$t0, $s5, .LBB0_89
# %bb.87:                               #   in Loop: Header=BB0_86 Depth=2
	ld.d	$t0, $t3, 152
	ld.w	$t3, $t0, 68
	ld.w	$t0, $t0, 64
	addi.w	$a3, $a3, 1
	add.d	$t3, $t3, $t4
	sub.w	$t4, $t3, $t0
	addi.d	$a6, $a6, 8
	bne	$a4, $a3, .LBB0_86
# %bb.88:                               #   in Loop: Header=BB0_83 Depth=1
	move	$a3, $a4
.LBB0_89:                               # %._crit_edge544.loopexit
                                        #   in Loop: Header=BB0_83 Depth=1
	addi.w	$a4, $a3, 1
.LBB0_90:                               # %._crit_edge544
                                        #   in Loop: Header=BB0_83 Depth=1
	ld.w	$a3, $t8, 4
	beqz	$a3, .LBB0_92
# %bb.91:                               #   in Loop: Header=BB0_83 Depth=1
	slt	$a3, $t4, $t1
	masknez	$a4, $t4, $a3
	maskeqz	$a3, $t1, $a3
	or	$a3, $a3, $a4
	b	.LBB0_93
.LBB0_92:                               #   in Loop: Header=BB0_83 Depth=1
	sub.w	$a3, $t1, $t4
	div.w	$a4, $a3, $a4
	srai.d	$a6, $a4, 63
	andn	$t5, $a4, $a6
.LBB0_93:                               # %.lr.ph563
                                        #   in Loop: Header=BB0_83 Depth=1
	slt	$a4, $t1, $t4
	sub.d	$a6, $t4, $t1
	bstrpick.d	$a6, $a6, 31, 1
	maskeqz	$a4, $a6, $a4
	add.d	$s1, $a4, $s1
	movgr2fr.w	$fa2, $a3
	ffint.d.w	$fa2, $fa2
	add.d	$t4, $t5, $t6
	ld.d	$t7, $sp, 72                    # 8-byte Folded Reload
	move	$s2, $a0
	b	.LBB0_96
.LBB0_94:                               #   in Loop: Header=BB0_96 Depth=2
	move	$t7, $a2
	.p2align	4, , 16
.LBB0_95:                               # %.loopexit
                                        #   in Loop: Header=BB0_96 Depth=2
	move	$s2, $t7
	addi.w	$a3, $t7, 0
	addi.w	$t7, $t7, 1
	bge	$a3, $a1, .LBB0_82
.LBB0_96:                               #   Parent Loop BB0_83 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_104 Depth 3
	slli.d	$a3, $t7, 3
	ldx.d	$s6, $s4, $a3
	ld.w	$a3, $s6, 80
	bne	$a3, $s5, .LBB0_95
# %bb.97:                               #   in Loop: Header=BB0_96 Depth=2
	ld.d	$a3, $s6, 152
	ld.w	$a4, $a3, 68
	ld.w	$a6, $a3, 64
	ld.w	$t0, $t8, 4
	sub.w	$s7, $a4, $a6
	beqz	$t0, .LBB0_99
# %bb.98:                               #   in Loop: Header=BB0_96 Depth=2
	sub.w	$a4, $t7, $a0
	slli.d	$a4, $a4, 3
	fldx.d	$fa3, $fp, $a4
	fmadd.d	$fa3, $fa3, $fa2, $fa1
	ftintrz.w.d	$fa3, $fa3
	movfr2gr.s	$a4, $fa3
	b	.LBB0_100
.LBB0_99:                               #   in Loop: Header=BB0_96 Depth=2
	bstrpick.d	$a4, $s7, 31, 31
	add.w	$a4, $s7, $a4
	srli.d	$a4, $a4, 1
	add.d	$a4, $a4, $t4
.LBB0_100:                              #   in Loop: Header=BB0_96 Depth=2
	ld.w	$a6, $a3, 60
	ld.w	$a3, $a3, 56
	sub.w	$a3, $a6, $a3
	st.w	$a4, $s6, 16
	bstrpick.d	$a4, $a3, 31, 31
	add.w	$a3, $a3, $a4
	srai.d	$a3, $a3, 1
	movgr2fr.w	$fa3, $a3
	ffint.d.w	$fa3, $fa3
	fadd.d	$fa3, $fa0, $fa3
	ftintrz.w.d	$fa3, $fa3
	movfr2gr.s	$a3, $fa3
	addi.w	$t7, $s2, 2
	st.w	$a3, $s6, 12
	blt	$a1, $t7, .LBB0_95
# %bb.101:                              # %.lr.ph554.preheader
                                        #   in Loop: Header=BB0_96 Depth=2
	add.d	$a3, $s7, $t4
	sub.d	$s2, $a2, $t7
	alsl.d	$s6, $t7, $s0, 3
	alsl.d	$s7, $t7, $s4, 3
	b	.LBB0_104
	.p2align	4, , 16
.LBB0_102:                              #   in Loop: Header=BB0_104 Depth=3
	fld.d	$fa3, $s6, 0
	fmadd.d	$fa3, $fa3, $fa2, $fa1
	ftintrz.w.d	$fa3, $fa3
	movfr2gr.s	$a6, $fa3
.LBB0_103:                              #   in Loop: Header=BB0_104 Depth=3
	ld.w	$t0, $a4, 60
	ld.w	$a4, $a4, 56
	sub.w	$a4, $t0, $a4
	st.w	$a6, $s8, 16
	bstrpick.d	$a6, $a4, 31, 31
	add.w	$a4, $a4, $a6
	srai.d	$a4, $a4, 1
	movgr2fr.w	$fa3, $a4
	ffint.d.w	$fa3, $fa3
	fadd.d	$fa3, $fa0, $fa3
	ftintrz.w.d	$fa3, $fa3
	movfr2gr.s	$a4, $fa3
	st.w	$a4, $s8, 12
	add.d	$a3, $a3, $ra
	addi.d	$t7, $t7, 1
	addi.d	$s2, $s2, -1
	addi.d	$s6, $s6, 8
	addi.d	$s7, $s7, 8
	beqz	$s2, .LBB0_94
.LBB0_104:                              # %.lr.ph554
                                        #   Parent Loop BB0_83 Depth=1
                                        #     Parent Loop BB0_96 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$s8, $s7, 0
	ld.w	$a4, $s8, 80
	bne	$a4, $s5, .LBB0_95
# %bb.105:                              #   in Loop: Header=BB0_104 Depth=3
	ld.d	$a4, $s8, 152
	ld.w	$a6, $a4, 68
	ld.w	$t0, $a4, 64
	ld.w	$t3, $t8, 4
	sub.w	$ra, $a6, $t0
	add.d	$a3, $a3, $t5
	bnez	$t3, .LBB0_102
# %bb.106:                              #   in Loop: Header=BB0_104 Depth=3
	bstrpick.d	$a6, $ra, 31, 31
	add.w	$a6, $ra, $a6
	srli.d	$a6, $a6, 1
	add.d	$a6, $a3, $a6
	b	.LBB0_103
.LBB0_107:                              # %.lr.ph578
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a2, $a2, 0
	alsl.d	$a2, $a0, $a2, 3
	addi.d	$a2, $a2, 8
	ori	$a3, $zero, 4
	ori	$a4, $zero, 2
	move	$a6, $a0
	ld.d	$t4, $sp, 80                    # 8-byte Folded Reload
	b	.LBB0_110
	.p2align	4, , 16
.LBB0_108:                              #   in Loop: Header=BB0_110 Depth=1
	ld.w	$t0, $t1, 12
	add.d	$t0, $t0, $s3
	st.w	$t0, $t1, 12
.LBB0_109:                              #   in Loop: Header=BB0_110 Depth=1
	addi.d	$a6, $a6, 1
	addi.d	$a2, $a2, 8
	bge	$a6, $a1, .LBB0_112
.LBB0_110:                              # =>This Inner Loop Header: Depth=1
	ld.d	$t1, $a2, 0
	ld.w	$t3, $t1, 80
	beq	$t3, $a3, .LBB0_108
# %bb.111:                              #   in Loop: Header=BB0_110 Depth=1
	beq	$t3, $a4, .LBB0_108
	b	.LBB0_109
.LBB0_112:
	move	$t1, $a5
	ld.d	$a5, $sp, 0                     # 8-byte Folded Reload
	b	.LBB0_114
.LBB0_113:
	move	$s1, $zero
	move	$t4, $zero
	move	$t6, $zero
	move	$t2, $zero
.LBB0_114:                              # %._crit_edge579
	add.d	$a2, $t2, $t4
	ld.d	$a3, $sp, 40                    # 8-byte Folded Reload
	st.w	$a2, $a3, 0
	add.d	$a2, $a7, $t4
	ld.d	$a3, $sp, 56                    # 8-byte Folded Reload
	st.w	$a2, $a3, 0
	add.d	$a2, $t6, $s1
	ld.d	$a3, $sp, 48                    # 8-byte Folded Reload
	st.w	$a2, $a3, 0
	add.d	$a2, $t1, $s1
	ld.d	$a3, $sp, 64                    # 8-byte Folded Reload
	st.w	$a2, $a3, 0
	blez	$a5, .LBB0_123
# %bb.115:                              # %.lr.ph584
	pcalau12i	$a2, %got_pc_hi20(cellarray)
	ld.d	$a2, $a2, %got_pc_lo12(cellarray)
	ld.d	$a4, $a2, 0
	slli.d	$a3, $t4, 1
	alsl.d	$a4, $a0, $a4, 3
	addi.d	$a4, $a4, 8
	ori	$a5, $zero, 3
	move	$a6, $a0
	b	.LBB0_117
	.p2align	4, , 16
.LBB0_116:                              #   in Loop: Header=BB0_117 Depth=1
	addi.d	$a6, $a6, 1
	addi.d	$a4, $a4, 8
	bge	$a6, $a1, .LBB0_119
.LBB0_117:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a7, $a4, 0
	ld.w	$t0, $a7, 80
	bne	$t0, $a5, .LBB0_116
# %bb.118:                              #   in Loop: Header=BB0_117 Depth=1
	ld.w	$t0, $a7, 12
	add.d	$t0, $t0, $a3
	st.w	$t0, $a7, 12
	b	.LBB0_116
.LBB0_119:                              # %.lr.ph588
	ld.d	$a3, $a2, 0
	slli.d	$a2, $s1, 1
	alsl.d	$a3, $a0, $a3, 3
	addi.d	$a3, $a3, 8
	ori	$a4, $zero, 2
	b	.LBB0_121
	.p2align	4, , 16
.LBB0_120:                              #   in Loop: Header=BB0_121 Depth=1
	addi.d	$a0, $a0, 1
	addi.d	$a3, $a3, 8
	bge	$a0, $a1, .LBB0_123
.LBB0_121:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a5, $a3, 0
	ld.w	$a6, $a5, 80
	bne	$a6, $a4, .LBB0_120
# %bb.122:                              #   in Loop: Header=BB0_121 Depth=1
	ld.w	$a6, $a5, 16
	add.d	$a6, $a6, $a2
	st.w	$a6, $a5, 16
	b	.LBB0_120
.LBB0_123:                              # %._crit_edge589
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
.Lfunc_end0:
	.size	placepads, .Lfunc_end0-placepads
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
