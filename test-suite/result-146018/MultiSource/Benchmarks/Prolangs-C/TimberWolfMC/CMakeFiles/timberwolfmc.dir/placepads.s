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
	ld.d	$a1, $a0, %got_pc_lo12(blockt)
	pcalau12i	$a0, %got_pc_hi20(blockr)
	ld.d	$a0, $a0, %got_pc_lo12(blockr)
	st.d	$a1, $sp, 64                    # 8-byte Folded Spill
	ld.w	$t2, $a1, 0
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	ld.w	$a5, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(blockb)
	ld.d	$a3, $a0, %got_pc_lo12(blockb)
	pcalau12i	$a0, %got_pc_hi20(numcells)
	ld.d	$a0, $a0, %got_pc_lo12(numcells)
	pcalau12i	$a1, %got_pc_hi20(numpads)
	ld.d	$a1, $a1, %got_pc_lo12(numpads)
	pcalau12i	$a2, %got_pc_hi20(blockl)
	ld.d	$a2, $a2, %got_pc_lo12(blockl)
	ld.w	$a0, $a0, 0
	ld.w	$a4, $a1, 0
	st.d	$a3, $sp, 48                    # 8-byte Folded Spill
	st.w	$zero, $a3, 0
	st.d	$a2, $sp, 40                    # 8-byte Folded Spill
	st.w	$zero, $a2, 0
	ori	$a7, $zero, 1
	add.w	$a1, $a4, $a0
	blt	$a4, $a7, .LBB0_119
# %bb.1:                                # %.lr.ph456
	st.d	$a4, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a2, %got_pc_hi20(cellarray)
	ld.d	$a3, $a2, %got_pc_lo12(cellarray)
	pcalau12i	$a2, %got_pc_hi20(fixLRBT)
	ld.d	$ra, $a2, %got_pc_lo12(fixLRBT)
	pcalau12i	$a2, %got_pc_hi20(padspace)
	ld.d	$a2, $a2, %got_pc_lo12(padspace)
	move	$t7, $zero
	st.d	$zero, $sp, 80                  # 8-byte Folded Spill
	move	$t3, $zero
	st.d	$a3, $sp, 32                    # 8-byte Folded Spill
	ld.d	$s3, $a3, 0
	ld.d	$s4, $ra, 0
	st.d	$a2, $sp, 24                    # 8-byte Folded Spill
	ld.d	$s5, $a2, 0
	addi.w	$t4, $a0, 1
	addi.d	$a2, $a1, 1
	slli.d	$a3, $a0, 3
	st.d	$a3, $sp, 16                    # 8-byte Folded Spill
	sub.d	$s6, $s5, $a3
	ori	$s7, $zero, 4
	move	$a7, $t2
                                        # implicit-def: $r18
	move	$s2, $a5
	move	$a3, $a0
	b	.LBB0_4
	.p2align	4, , 16
.LBB0_2:                                #   in Loop: Header=BB0_4 Depth=1
	move	$t3, $t7
	move	$s2, $s8
.LBB0_3:                                # %.loopexit423
                                        #   in Loop: Header=BB0_4 Depth=1
	move	$a3, $a6
	bge	$a6, $a1, .LBB0_30
.LBB0_4:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_7 Depth 2
                                        #     Child Loop BB0_19 Depth 2
                                        #       Child Loop BB0_27 Depth 3
	addi.w	$a6, $a3, 1
	slli.d	$a4, $a6, 3
	ldx.d	$a4, $s3, $a4
	ld.w	$t0, $a4, 80
	bne	$t0, $s7, .LBB0_3
# %bb.5:                                #   in Loop: Header=BB0_4 Depth=1
	ld.d	$a4, $a4, 152
	ld.w	$a6, $a4, 68
	ld.w	$t0, $a4, 64
	ld.w	$t1, $a4, 60
	ld.w	$a4, $a4, 56
	sub.w	$t8, $a6, $t0
	sub.w	$s8, $t1, $a4
	addi.w	$a6, $a3, 2
	ori	$a4, $zero, 2
	blt	$a1, $a6, .LBB0_11
# %bb.6:                                # %.lr.ph.preheader
                                        #   in Loop: Header=BB0_4 Depth=1
	sub.w	$t5, $a1, $a3
	alsl.d	$t7, $a6, $s3, 3
	ori	$a6, $zero, 1
	.p2align	4, , 16
.LBB0_7:                                # %.lr.ph
                                        #   Parent Loop BB0_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a3, $t7, 0
	ld.w	$a4, $a3, 80
	bne	$a4, $s7, .LBB0_10
# %bb.8:                                #   in Loop: Header=BB0_7 Depth=2
	ld.d	$a3, $a3, 152
	ld.w	$a4, $a3, 68
	ld.w	$t0, $a3, 64
	addi.w	$a6, $a6, 1
	sub.w	$a4, $a4, $t0
	slt	$t0, $t8, $a4
	maskeqz	$a4, $a4, $t0
	ld.w	$t1, $a3, 60
	ld.w	$a3, $a3, 56
	masknez	$t0, $t8, $t0
	or	$t8, $a4, $t0
	add.d	$a4, $t1, $s8
	sub.w	$s8, $a4, $a3
	addi.d	$t7, $t7, 8
	bne	$t5, $a6, .LBB0_7
# %bb.9:                                #   in Loop: Header=BB0_4 Depth=1
	move	$a6, $t5
.LBB0_10:                               # %._crit_edge.loopexit
                                        #   in Loop: Header=BB0_4 Depth=1
	addi.w	$a4, $a6, 1
.LBB0_11:                               # %._crit_edge
                                        #   in Loop: Header=BB0_4 Depth=1
	ld.w	$a3, $s4, 8
	beqz	$a3, .LBB0_14
# %bb.12:                               #   in Loop: Header=BB0_4 Depth=1
	slt	$a3, $s8, $s2
	masknez	$a4, $s8, $a3
	maskeqz	$a3, $s2, $a3
	or	$a6, $a3, $a4
	bge	$s2, $s8, .LBB0_15
.LBB0_13:                               #   in Loop: Header=BB0_4 Depth=1
	sub.d	$a3, $s8, $s2
	bstrpick.d	$a4, $a3, 31, 31
	add.w	$a3, $a3, $a4
	srai.d	$a3, $a3, 1
	st.d	$a3, $sp, 80                    # 8-byte Folded Spill
	b	.LBB0_16
.LBB0_14:                               #   in Loop: Header=BB0_4 Depth=1
	sub.w	$a6, $s2, $s8
	div.w	$a3, $a6, $a4
	srai.d	$a4, $a3, 63
	andn	$t6, $a3, $a4
	blt	$s2, $s8, .LBB0_13
.LBB0_15:                               #   in Loop: Header=BB0_4 Depth=1
	move	$s8, $s2
.LBB0_16:                               # %.lr.ph448
                                        #   in Loop: Header=BB0_4 Depth=1
	pcalau12i	$a3, %pc_hi20(.LCPI0_0)
	fld.d	$fa0, $a3, %pc_lo12(.LCPI0_0)
	sub.d	$a3, $a7, $t3
	movgr2fr.w	$fa1, $a3
	ffint.d.w	$fa1, $fa1
	fmul.d	$fa0, $fa1, $fa0
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a3, $fa0
	add.d	$a3, $t8, $a3
	add.w	$t7, $a3, $t3
	ld.d	$a4, $sp, 48                    # 8-byte Folded Reload
	st.w	$t7, $a4, 0
	add.w	$a7, $a3, $a7
	ld.d	$a3, $sp, 64                    # 8-byte Folded Reload
	st.w	$a7, $a3, 0
	movgr2fr.w	$fa0, $a6
	ffint.d.w	$fa0, $fa0
	move	$a6, $t4
	move	$t3, $a0
	b	.LBB0_19
.LBB0_17:                               #   in Loop: Header=BB0_19 Depth=2
	move	$a6, $a2
	.p2align	4, , 16
.LBB0_18:                               # %.loopexit422
                                        #   in Loop: Header=BB0_19 Depth=2
	move	$t3, $a6
	addi.w	$a3, $a6, 0
	addi.w	$a6, $a6, 1
	bge	$a3, $a1, .LBB0_2
.LBB0_19:                               #   Parent Loop BB0_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_27 Depth 3
	slli.d	$a3, $a6, 3
	ldx.d	$t5, $s3, $a3
	ld.w	$a3, $t5, 80
	bne	$a3, $s7, .LBB0_18
# %bb.20:                               #   in Loop: Header=BB0_19 Depth=2
	ld.d	$a4, $t5, 152
	ld.w	$a3, $a4, 60
	ld.w	$t0, $a4, 56
	ld.w	$t1, $s4, 8
	sub.w	$a3, $a3, $t0
	beqz	$t1, .LBB0_22
# %bb.21:                               #   in Loop: Header=BB0_19 Depth=2
	sub.w	$a6, $a6, $a0
	slli.d	$a6, $a6, 3
	fldx.d	$fa1, $s5, $a6
	fmul.d	$fa1, $fa1, $fa0
	ftintrz.w.d	$fa1, $fa1
	movfr2gr.s	$a6, $fa1
	b	.LBB0_23
.LBB0_22:                               #   in Loop: Header=BB0_19 Depth=2
	bstrpick.d	$a6, $a3, 31, 31
	add.w	$a6, $a3, $a6
	srli.d	$a6, $a6, 1
	add.d	$a6, $a6, $t6
.LBB0_23:                               #   in Loop: Header=BB0_19 Depth=2
	ld.w	$t0, $a4, 68
	ld.w	$a4, $a4, 64
	sub.w	$a4, $t0, $a4
	st.w	$a6, $t5, 12
	bstrpick.d	$a6, $a4, 31, 31
	add.w	$a6, $a4, $a6
	srli.d	$a6, $a6, 1
	sub.d	$a4, $t8, $a4
	add.d	$a4, $a4, $a6
	addi.w	$a6, $t3, 2
	st.w	$a4, $t5, 16
	blt	$a1, $a6, .LBB0_18
# %bb.24:                               # %.lr.ph439.preheader
                                        #   in Loop: Header=BB0_19 Depth=2
	add.d	$s1, $a3, $t6
	sub.d	$t3, $a2, $a6
	alsl.d	$t5, $a6, $s6, 3
	alsl.d	$fp, $a6, $s3, 3
	b	.LBB0_27
	.p2align	4, , 16
.LBB0_25:                               #   in Loop: Header=BB0_27 Depth=3
	fld.d	$fa1, $t5, 0
	fmul.d	$fa1, $fa1, $fa0
	ftintrz.w.d	$fa1, $fa1
	movfr2gr.s	$t0, $fa1
.LBB0_26:                               #   in Loop: Header=BB0_27 Depth=3
	ld.w	$t1, $s2, 68
	ld.w	$s1, $s2, 64
	sub.w	$t1, $t1, $s1
	st.w	$t0, $s0, 12
	bstrpick.d	$t0, $t1, 31, 31
	add.w	$t0, $t1, $t0
	srli.d	$t0, $t0, 1
	sub.d	$t1, $t8, $t1
	add.d	$t0, $t1, $t0
	st.w	$t0, $s0, 16
	add.d	$s1, $a4, $a3
	addi.d	$a6, $a6, 1
	addi.d	$t3, $t3, -1
	addi.d	$t5, $t5, 8
	addi.d	$fp, $fp, 8
	beqz	$t3, .LBB0_17
.LBB0_27:                               # %.lr.ph439
                                        #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_19 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$s0, $fp, 0
	ld.w	$a3, $s0, 80
	bne	$a3, $s7, .LBB0_18
# %bb.28:                               #   in Loop: Header=BB0_27 Depth=3
	ld.d	$s2, $s0, 152
	ld.w	$a3, $s2, 60
	ld.w	$a4, $s2, 56
	ld.w	$t0, $s4, 8
	sub.w	$a3, $a3, $a4
	add.d	$a4, $s1, $t6
	bnez	$t0, .LBB0_25
# %bb.29:                               #   in Loop: Header=BB0_27 Depth=3
	bstrpick.d	$t0, $a3, 31, 31
	add.w	$t0, $a3, $t0
	srli.d	$t0, $t0, 1
	add.d	$t0, $a4, $t0
	b	.LBB0_26
.LBB0_30:                               # %.lr.ph492
	ld.d	$a3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s3, $a3, 0
	ld.d	$s4, $ra, 0
	ld.d	$a3, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s5, $a3, 0
	movgr2fr.w	$fa0, $a7
	ffint.d.w	$fa1, $fa0
	pcalau12i	$a3, %pc_hi20(.LCPI0_0)
	fld.d	$fa0, $a3, %pc_lo12(.LCPI0_0)
	sub.d	$a3, $a7, $t7
	movgr2fr.w	$fa2, $a3
	ffint.d.w	$fa2, $fa2
	fmadd.d	$fa1, $fa2, $fa0, $fa1
	ld.d	$a3, $sp, 16                    # 8-byte Folded Reload
	sub.d	$s6, $s5, $a3
	ori	$s7, $zero, 2
	move	$a3, $a0
	b	.LBB0_32
	.p2align	4, , 16
.LBB0_31:                               # %.loopexit420
                                        #   in Loop: Header=BB0_32 Depth=1
	move	$a3, $a6
	bge	$a6, $a1, .LBB0_57
.LBB0_32:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_35 Depth 2
                                        #     Child Loop BB0_45 Depth 2
                                        #       Child Loop BB0_53 Depth 3
	addi.w	$a6, $a3, 1
	slli.d	$a4, $a6, 3
	ldx.d	$a4, $s3, $a4
	ld.w	$t0, $a4, 80
	bne	$t0, $s7, .LBB0_31
# %bb.33:                               #   in Loop: Header=BB0_32 Depth=1
	ld.d	$a4, $a4, 152
	ld.w	$a6, $a4, 60
	ld.w	$a4, $a4, 56
	sub.w	$a6, $a6, $a4
	addi.w	$t0, $a3, 2
	ori	$a4, $zero, 2
	blt	$a1, $t0, .LBB0_39
# %bb.34:                               # %.lr.ph466.preheader
                                        #   in Loop: Header=BB0_32 Depth=1
	sub.w	$a4, $a1, $a3
	alsl.d	$t0, $t0, $s3, 3
	ori	$a3, $zero, 1
	.p2align	4, , 16
.LBB0_35:                               # %.lr.ph466
                                        #   Parent Loop BB0_32 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$t1, $t0, 0
	ld.w	$t3, $t1, 80
	bne	$t3, $s7, .LBB0_38
# %bb.36:                               #   in Loop: Header=BB0_35 Depth=2
	ld.d	$t1, $t1, 152
	ld.w	$t3, $t1, 60
	ld.w	$t1, $t1, 56
	addi.w	$a3, $a3, 1
	add.d	$a6, $t3, $a6
	sub.w	$a6, $a6, $t1
	addi.d	$t0, $t0, 8
	bne	$a4, $a3, .LBB0_35
# %bb.37:                               #   in Loop: Header=BB0_32 Depth=1
	move	$a3, $a4
.LBB0_38:                               # %._crit_edge467.loopexit
                                        #   in Loop: Header=BB0_32 Depth=1
	addi.w	$a4, $a3, 1
.LBB0_39:                               # %._crit_edge467
                                        #   in Loop: Header=BB0_32 Depth=1
	ld.w	$a3, $s4, 12
	beqz	$a3, .LBB0_56
# %bb.40:                               #   in Loop: Header=BB0_32 Depth=1
	slt	$a3, $a6, $s2
	masknez	$a4, $a6, $a3
	maskeqz	$a3, $s2, $a3
	or	$a3, $a3, $a4
	bge	$s2, $a6, .LBB0_42
.LBB0_41:                               #   in Loop: Header=BB0_32 Depth=1
	sub.d	$a4, $a6, $s2
	bstrpick.d	$a6, $a4, 31, 31
	add.w	$a4, $a4, $a6
	srli.d	$a4, $a4, 1
	ld.d	$a6, $sp, 80                    # 8-byte Folded Reload
	add.d	$a6, $a4, $a6
	st.d	$a6, $sp, 80                    # 8-byte Folded Spill
.LBB0_42:                               # %.lr.ph486
                                        #   in Loop: Header=BB0_32 Depth=1
	movgr2fr.w	$fa2, $a3
	ffint.d.w	$fa2, $fa2
	move	$a6, $t4
	move	$t3, $a0
	b	.LBB0_45
.LBB0_43:                               #   in Loop: Header=BB0_45 Depth=2
	move	$a6, $a2
	.p2align	4, , 16
.LBB0_44:                               # %.loopexit419
                                        #   in Loop: Header=BB0_45 Depth=2
	move	$t3, $a6
	addi.w	$a3, $a6, 0
	addi.w	$a6, $a6, 1
	bge	$a3, $a1, .LBB0_31
.LBB0_45:                               #   Parent Loop BB0_32 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_53 Depth 3
	slli.d	$a3, $a6, 3
	ldx.d	$t5, $s3, $a3
	ld.w	$a3, $t5, 80
	bne	$a3, $s7, .LBB0_44
# %bb.46:                               #   in Loop: Header=BB0_45 Depth=2
	ld.d	$a3, $t5, 152
	ld.w	$a4, $a3, 60
	ld.w	$t0, $a3, 56
	ld.w	$t1, $s4, 12
	sub.w	$t8, $a4, $t0
	beqz	$t1, .LBB0_48
# %bb.47:                               #   in Loop: Header=BB0_45 Depth=2
	sub.w	$a4, $a6, $a0
	slli.d	$a4, $a4, 3
	fldx.d	$fa3, $s5, $a4
	fmul.d	$fa3, $fa3, $fa2
	ftintrz.w.d	$fa3, $fa3
	movfr2gr.s	$a4, $fa3
	b	.LBB0_49
.LBB0_48:                               #   in Loop: Header=BB0_45 Depth=2
	bstrpick.d	$a4, $t8, 31, 31
	add.w	$a4, $t8, $a4
	srli.d	$a4, $a4, 1
	add.d	$a4, $a4, $t6
.LBB0_49:                               #   in Loop: Header=BB0_45 Depth=2
	ld.w	$a6, $a3, 68
	ld.w	$a3, $a3, 64
	sub.w	$a3, $a6, $a3
	st.w	$a4, $t5, 12
	bstrpick.d	$a4, $a3, 31, 31
	add.w	$a3, $a3, $a4
	srai.d	$a3, $a3, 1
	movgr2fr.w	$fa3, $a3
	ffint.d.w	$fa3, $fa3
	fadd.d	$fa3, $fa1, $fa3
	ftintrz.w.d	$fa3, $fa3
	movfr2gr.s	$a3, $fa3
	addi.w	$a6, $t3, 2
	st.w	$a3, $t5, 16
	blt	$a1, $a6, .LBB0_44
# %bb.50:                               # %.lr.ph477.preheader
                                        #   in Loop: Header=BB0_45 Depth=2
	add.d	$s0, $t8, $t6
	sub.d	$t3, $a2, $a6
	alsl.d	$t5, $a6, $s6, 3
	alsl.d	$t8, $a6, $s3, 3
	b	.LBB0_53
	.p2align	4, , 16
.LBB0_51:                               #   in Loop: Header=BB0_53 Depth=3
	fld.d	$fa3, $t5, 0
	fmul.d	$fa3, $fa3, $fa2
	ftintrz.w.d	$fa3, $fa3
	movfr2gr.s	$t0, $fa3
.LBB0_52:                               #   in Loop: Header=BB0_53 Depth=3
	ld.w	$t1, $a4, 68
	ld.w	$a4, $a4, 64
	sub.w	$a4, $t1, $a4
	st.w	$t0, $fp, 12
	bstrpick.d	$t0, $a4, 31, 31
	add.w	$a4, $a4, $t0
	srai.d	$a4, $a4, 1
	movgr2fr.w	$fa3, $a4
	ffint.d.w	$fa3, $fa3
	fadd.d	$fa3, $fa1, $fa3
	ftintrz.w.d	$fa3, $fa3
	movfr2gr.s	$a4, $fa3
	st.w	$a4, $fp, 16
	add.d	$s0, $s0, $a3
	addi.d	$a6, $a6, 1
	addi.d	$t3, $t3, -1
	addi.d	$t5, $t5, 8
	addi.d	$t8, $t8, 8
	beqz	$t3, .LBB0_43
.LBB0_53:                               # %.lr.ph477
                                        #   Parent Loop BB0_32 Depth=1
                                        #     Parent Loop BB0_45 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$fp, $t8, 0
	ld.w	$a3, $fp, 80
	bne	$a3, $s7, .LBB0_44
# %bb.54:                               #   in Loop: Header=BB0_53 Depth=3
	ld.d	$a4, $fp, 152
	ld.w	$a3, $a4, 60
	ld.w	$t0, $a4, 56
	ld.w	$t1, $s4, 12
	sub.w	$a3, $a3, $t0
	add.d	$s0, $s0, $t6
	bnez	$t1, .LBB0_51
# %bb.55:                               #   in Loop: Header=BB0_53 Depth=3
	bstrpick.d	$t0, $a3, 31, 31
	add.w	$t0, $a3, $t0
	srli.d	$t0, $t0, 1
	add.d	$t0, $s0, $t0
	b	.LBB0_52
.LBB0_56:                               #   in Loop: Header=BB0_32 Depth=1
	sub.w	$a3, $s2, $a6
	div.w	$a4, $a3, $a4
	srai.d	$t0, $a4, 63
	andn	$t6, $a4, $t0
	blt	$s2, $a6, .LBB0_41
	b	.LBB0_42
.LBB0_57:                               # %.lr.ph533
	move	$a6, $zero
	move	$s4, $zero
	st.d	$zero, $sp, 72                  # 8-byte Folded Spill
	move	$s3, $zero
	ld.d	$a3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s5, $a3, 0
	ld.d	$a3, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s6, $a3, 0
	st.d	$ra, $sp, 0                     # 8-byte Folded Spill
	ld.d	$s7, $ra, 0
	movgr2fr.w	$fa1, $t7
	ffint.d.w	$fa1, $fa1
	ld.d	$a3, $sp, 16                    # 8-byte Folded Reload
	sub.d	$s8, $s6, $a3
	ori	$ra, $zero, 1
	move	$fp, $a0
	b	.LBB0_60
	.p2align	4, , 16
.LBB0_58:                               #   in Loop: Header=BB0_60 Depth=1
	move	$s3, $a6
	move	$t2, $t8
.LBB0_59:                               # %.loopexit417
                                        #   in Loop: Header=BB0_60 Depth=1
	move	$fp, $t5
	bge	$t5, $a1, .LBB0_86
.LBB0_60:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_63 Depth 2
                                        #     Child Loop BB0_75 Depth 2
                                        #       Child Loop BB0_83 Depth 3
	addi.w	$t5, $fp, 1
	slli.d	$a3, $t5, 3
	ldx.d	$a3, $s5, $a3
	ld.w	$a4, $a3, 80
	bne	$a4, $ra, .LBB0_59
# %bb.61:                               #   in Loop: Header=BB0_60 Depth=1
	ld.d	$a3, $a3, 152
	ld.w	$a4, $a3, 68
	ld.w	$a6, $a3, 64
	ld.w	$t0, $a3, 60
	ld.w	$a3, $a3, 56
	sub.w	$t8, $a4, $a6
	sub.w	$t3, $t0, $a3
	addi.w	$a4, $fp, 2
	ori	$a3, $zero, 2
	blt	$a1, $a4, .LBB0_67
# %bb.62:                               # %.lr.ph501.preheader
                                        #   in Loop: Header=BB0_60 Depth=1
	sub.w	$t5, $a1, $fp
	alsl.d	$fp, $a4, $s5, 3
	ori	$a6, $zero, 1
	.p2align	4, , 16
.LBB0_63:                               # %.lr.ph501
                                        #   Parent Loop BB0_60 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a3, $fp, 0
	ld.w	$a4, $a3, 80
	bne	$a4, $ra, .LBB0_66
# %bb.64:                               #   in Loop: Header=BB0_63 Depth=2
	ld.d	$a3, $a3, 152
	ld.w	$a4, $a3, 60
	ld.w	$t0, $a3, 56
	addi.w	$a6, $a6, 1
	sub.w	$a4, $a4, $t0
	slt	$t0, $t3, $a4
	maskeqz	$a4, $a4, $t0
	ld.w	$t1, $a3, 68
	ld.w	$a3, $a3, 64
	masknez	$t0, $t3, $t0
	or	$t3, $a4, $t0
	add.d	$a4, $t1, $t8
	sub.w	$t8, $a4, $a3
	addi.d	$fp, $fp, 8
	bne	$t5, $a6, .LBB0_63
# %bb.65:                               #   in Loop: Header=BB0_60 Depth=1
	move	$a6, $t5
.LBB0_66:                               # %._crit_edge502.loopexit
                                        #   in Loop: Header=BB0_60 Depth=1
	addi.w	$a3, $a6, 1
.LBB0_67:                               # %._crit_edge502
                                        #   in Loop: Header=BB0_60 Depth=1
	ld.w	$a4, $s7, 0
	beqz	$a4, .LBB0_70
# %bb.68:                               #   in Loop: Header=BB0_60 Depth=1
	slt	$a3, $t8, $t2
	masknez	$a4, $t8, $a3
	maskeqz	$a3, $t2, $a3
	or	$t5, $a3, $a4
	bge	$t2, $t8, .LBB0_71
.LBB0_69:                               #   in Loop: Header=BB0_60 Depth=1
	sub.d	$a3, $t8, $t2
	bstrpick.d	$a4, $a3, 31, 31
	add.w	$a3, $a3, $a4
	srai.d	$a3, $a3, 1
	st.d	$a3, $sp, 72                    # 8-byte Folded Spill
	b	.LBB0_72
.LBB0_70:                               #   in Loop: Header=BB0_60 Depth=1
	sub.w	$t5, $t2, $t8
	div.w	$a3, $t5, $a3
	srai.d	$a4, $a3, 63
	andn	$t6, $a3, $a4
	blt	$t2, $t8, .LBB0_69
.LBB0_71:                               #   in Loop: Header=BB0_60 Depth=1
	move	$t8, $t2
.LBB0_72:                               # %.lr.ph523
                                        #   in Loop: Header=BB0_60 Depth=1
	sub.d	$a3, $a5, $s3
	movgr2fr.w	$fa2, $a3
	ffint.d.w	$fa2, $fa2
	fmul.d	$fa2, $fa2, $fa0
	ftintrz.w.d	$fa2, $fa2
	movfr2gr.s	$a3, $fa2
	add.d	$s4, $t3, $a3
	add.w	$a5, $s4, $a5
	ld.d	$a3, $sp, 56                    # 8-byte Folded Reload
	st.w	$a5, $a3, 0
	add.w	$a6, $s4, $s3
	ld.d	$a3, $sp, 40                    # 8-byte Folded Reload
	st.w	$a6, $a3, 0
	movgr2fr.w	$fa2, $t5
	ffint.d.w	$fa2, $fa2
	add.d	$t2, $t6, $t7
	move	$t5, $t4
	move	$fp, $a0
	b	.LBB0_75
.LBB0_73:                               #   in Loop: Header=BB0_75 Depth=2
	move	$t5, $a2
	.p2align	4, , 16
.LBB0_74:                               # %.loopexit416
                                        #   in Loop: Header=BB0_75 Depth=2
	move	$fp, $t5
	addi.w	$a3, $t5, 0
	addi.w	$t5, $t5, 1
	bge	$a3, $a1, .LBB0_58
.LBB0_75:                               #   Parent Loop BB0_60 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_83 Depth 3
	slli.d	$a3, $t5, 3
	ldx.d	$s0, $s5, $a3
	ld.w	$a3, $s0, 80
	bne	$a3, $ra, .LBB0_74
# %bb.76:                               #   in Loop: Header=BB0_75 Depth=2
	ld.d	$a4, $s0, 152
	ld.w	$a3, $a4, 68
	ld.w	$t0, $a4, 64
	ld.w	$t1, $s7, 0
	sub.w	$a3, $a3, $t0
	beqz	$t1, .LBB0_78
# %bb.77:                               #   in Loop: Header=BB0_75 Depth=2
	sub.w	$t0, $t5, $a0
	slli.d	$t0, $t0, 3
	fldx.d	$fa3, $s6, $t0
	fmadd.d	$fa3, $fa3, $fa2, $fa1
	ftintrz.w.d	$fa3, $fa3
	movfr2gr.s	$t0, $fa3
	b	.LBB0_79
.LBB0_78:                               #   in Loop: Header=BB0_75 Depth=2
	bstrpick.d	$t0, $a3, 31, 31
	add.w	$t0, $a3, $t0
	srli.d	$t0, $t0, 1
	add.d	$t0, $t0, $t2
.LBB0_79:                               #   in Loop: Header=BB0_75 Depth=2
	ld.w	$t1, $a4, 60
	ld.w	$a4, $a4, 56
	sub.w	$a4, $t1, $a4
	st.w	$t0, $s0, 16
	bstrpick.d	$t0, $a4, 31, 31
	add.w	$t0, $a4, $t0
	srli.d	$t0, $t0, 1
	sub.d	$a4, $t3, $a4
	add.d	$a4, $a4, $t0
	addi.w	$t5, $fp, 2
	st.w	$a4, $s0, 12
	blt	$a1, $t5, .LBB0_74
# %bb.80:                               # %.lr.ph514.preheader
                                        #   in Loop: Header=BB0_75 Depth=2
	add.d	$a3, $a3, $t2
	sub.d	$s3, $a2, $t5
	alsl.d	$fp, $t5, $s8, 3
	alsl.d	$s0, $t5, $s5, 3
	b	.LBB0_83
	.p2align	4, , 16
.LBB0_81:                               #   in Loop: Header=BB0_83 Depth=3
	fld.d	$fa3, $fp, 0
	fmadd.d	$fa3, $fa3, $fa2, $fa1
	ftintrz.w.d	$fa3, $fa3
	movfr2gr.s	$t1, $fa3
.LBB0_82:                               #   in Loop: Header=BB0_83 Depth=3
	ld.w	$s2, $t0, 60
	ld.w	$t0, $t0, 56
	sub.w	$t0, $s2, $t0
	st.w	$t1, $s1, 16
	bstrpick.d	$t1, $t0, 31, 31
	add.w	$t1, $t0, $t1
	srli.d	$t1, $t1, 1
	sub.d	$t0, $t3, $t0
	add.d	$t0, $t0, $t1
	st.w	$t0, $s1, 12
	add.d	$a3, $a3, $a4
	addi.d	$t5, $t5, 1
	addi.d	$s3, $s3, -1
	addi.d	$fp, $fp, 8
	addi.d	$s0, $s0, 8
	beqz	$s3, .LBB0_73
.LBB0_83:                               # %.lr.ph514
                                        #   Parent Loop BB0_60 Depth=1
                                        #     Parent Loop BB0_75 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$s1, $s0, 0
	ld.w	$a4, $s1, 80
	bne	$a4, $ra, .LBB0_74
# %bb.84:                               #   in Loop: Header=BB0_83 Depth=3
	ld.d	$t0, $s1, 152
	ld.w	$a4, $t0, 68
	ld.w	$t1, $t0, 64
	ld.w	$s2, $s7, 0
	sub.w	$a4, $a4, $t1
	add.d	$a3, $a3, $t6
	bnez	$s2, .LBB0_81
# %bb.85:                               #   in Loop: Header=BB0_83 Depth=3
	bstrpick.d	$t1, $a4, 31, 31
	add.w	$t1, $a4, $t1
	srli.d	$t1, $t1, 1
	add.d	$t1, $a3, $t1
	b	.LBB0_82
.LBB0_86:                               # %.lr.ph573
	ld.d	$a3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s5, $a3, 0
	ld.d	$a3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$fp, $a3, 0
	ld.d	$a3, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s0, $a3, 0
	movgr2fr.w	$fa2, $a5
	ffint.d.w	$fa2, $fa2
	sub.d	$a3, $a5, $a6
	movgr2fr.w	$fa3, $a3
	ffint.d.w	$fa3, $fa3
	fmadd.d	$fa0, $fa3, $fa0, $fa2
	ld.d	$a3, $sp, 16                    # 8-byte Folded Reload
	sub.d	$s1, $s0, $a3
	ori	$s6, $zero, 3
	move	$a3, $a0
	b	.LBB0_88
	.p2align	4, , 16
.LBB0_87:                               # %.loopexit414
                                        #   in Loop: Header=BB0_88 Depth=1
	move	$a3, $t5
	bge	$t5, $a1, .LBB0_113
.LBB0_88:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_91 Depth 2
                                        #     Child Loop BB0_101 Depth 2
                                        #       Child Loop BB0_109 Depth 3
	addi.w	$t5, $a3, 1
	slli.d	$a4, $t5, 3
	ldx.d	$a4, $s5, $a4
	ld.w	$t0, $a4, 80
	bne	$t0, $s6, .LBB0_87
# %bb.89:                               #   in Loop: Header=BB0_88 Depth=1
	ld.d	$a4, $a4, 152
	ld.w	$t0, $a4, 68
	ld.w	$a4, $a4, 64
	sub.w	$t3, $t0, $a4
	addi.w	$t0, $a3, 2
	ori	$a4, $zero, 2
	blt	$a1, $t0, .LBB0_95
# %bb.90:                               # %.lr.ph543.preheader
                                        #   in Loop: Header=BB0_88 Depth=1
	sub.w	$a4, $a1, $a3
	alsl.d	$t0, $t0, $s5, 3
	ori	$a3, $zero, 1
	.p2align	4, , 16
.LBB0_91:                               # %.lr.ph543
                                        #   Parent Loop BB0_88 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$t1, $t0, 0
	ld.w	$t5, $t1, 80
	bne	$t5, $s6, .LBB0_94
# %bb.92:                               #   in Loop: Header=BB0_91 Depth=2
	ld.d	$t1, $t1, 152
	ld.w	$t5, $t1, 68
	ld.w	$t1, $t1, 64
	addi.w	$a3, $a3, 1
	add.d	$t3, $t5, $t3
	sub.w	$t3, $t3, $t1
	addi.d	$t0, $t0, 8
	bne	$a4, $a3, .LBB0_91
# %bb.93:                               #   in Loop: Header=BB0_88 Depth=1
	move	$a3, $a4
.LBB0_94:                               # %._crit_edge544.loopexit
                                        #   in Loop: Header=BB0_88 Depth=1
	addi.w	$a4, $a3, 1
.LBB0_95:                               # %._crit_edge544
                                        #   in Loop: Header=BB0_88 Depth=1
	ld.w	$a3, $fp, 4
	beqz	$a3, .LBB0_112
# %bb.96:                               #   in Loop: Header=BB0_88 Depth=1
	slt	$a3, $t3, $t2
	masknez	$a4, $t3, $a3
	maskeqz	$a3, $t2, $a3
	or	$a3, $a3, $a4
	bge	$t2, $t3, .LBB0_98
.LBB0_97:                               #   in Loop: Header=BB0_88 Depth=1
	sub.d	$a4, $t3, $t2
	bstrpick.d	$t0, $a4, 31, 31
	add.w	$a4, $a4, $t0
	srli.d	$a4, $a4, 1
	ld.d	$t0, $sp, 72                    # 8-byte Folded Reload
	add.d	$t0, $a4, $t0
	st.d	$t0, $sp, 72                    # 8-byte Folded Spill
.LBB0_98:                               # %.lr.ph563
                                        #   in Loop: Header=BB0_88 Depth=1
	movgr2fr.w	$fa2, $a3
	ffint.d.w	$fa2, $fa2
	add.d	$t3, $t6, $t7
	move	$t5, $t4
	move	$t8, $a0
	b	.LBB0_101
.LBB0_99:                               #   in Loop: Header=BB0_101 Depth=2
	move	$t5, $a2
	.p2align	4, , 16
.LBB0_100:                              # %.loopexit
                                        #   in Loop: Header=BB0_101 Depth=2
	move	$t8, $t5
	addi.w	$a3, $t5, 0
	addi.w	$t5, $t5, 1
	bge	$a3, $a1, .LBB0_87
.LBB0_101:                              #   Parent Loop BB0_88 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_109 Depth 3
	slli.d	$a3, $t5, 3
	ldx.d	$s3, $s5, $a3
	ld.w	$a3, $s3, 80
	bne	$a3, $s6, .LBB0_100
# %bb.102:                              #   in Loop: Header=BB0_101 Depth=2
	ld.d	$a3, $s3, 152
	ld.w	$a4, $a3, 68
	ld.w	$t0, $a3, 64
	ld.w	$t1, $fp, 4
	sub.w	$s7, $a4, $t0
	beqz	$t1, .LBB0_104
# %bb.103:                              #   in Loop: Header=BB0_101 Depth=2
	sub.w	$a4, $t5, $a0
	slli.d	$a4, $a4, 3
	fldx.d	$fa3, $s0, $a4
	fmadd.d	$fa3, $fa3, $fa2, $fa1
	ftintrz.w.d	$fa3, $fa3
	movfr2gr.s	$a4, $fa3
	b	.LBB0_105
.LBB0_104:                              #   in Loop: Header=BB0_101 Depth=2
	bstrpick.d	$a4, $s7, 31, 31
	add.w	$a4, $s7, $a4
	srli.d	$a4, $a4, 1
	add.d	$a4, $a4, $t3
.LBB0_105:                              #   in Loop: Header=BB0_101 Depth=2
	ld.w	$t0, $a3, 60
	ld.w	$a3, $a3, 56
	sub.w	$a3, $t0, $a3
	st.w	$a4, $s3, 16
	bstrpick.d	$a4, $a3, 31, 31
	add.w	$a3, $a3, $a4
	srai.d	$a3, $a3, 1
	movgr2fr.w	$fa3, $a3
	ffint.d.w	$fa3, $fa3
	fadd.d	$fa3, $fa0, $fa3
	ftintrz.w.d	$fa3, $fa3
	movfr2gr.s	$a3, $fa3
	addi.w	$t5, $t8, 2
	st.w	$a3, $s3, 12
	blt	$a1, $t5, .LBB0_100
# %bb.106:                              # %.lr.ph554.preheader
                                        #   in Loop: Header=BB0_101 Depth=2
	add.d	$a3, $s7, $t3
	sub.d	$t8, $a2, $t5
	alsl.d	$s3, $t5, $s1, 3
	alsl.d	$s7, $t5, $s5, 3
	b	.LBB0_109
	.p2align	4, , 16
.LBB0_107:                              #   in Loop: Header=BB0_109 Depth=3
	fld.d	$fa3, $s3, 0
	fmadd.d	$fa3, $fa3, $fa2, $fa1
	ftintrz.w.d	$fa3, $fa3
	movfr2gr.s	$t0, $fa3
.LBB0_108:                              #   in Loop: Header=BB0_109 Depth=3
	ld.w	$t1, $a4, 60
	ld.w	$a4, $a4, 56
	sub.w	$a4, $t1, $a4
	st.w	$t0, $s8, 16
	bstrpick.d	$t0, $a4, 31, 31
	add.w	$a4, $a4, $t0
	srai.d	$a4, $a4, 1
	movgr2fr.w	$fa3, $a4
	ffint.d.w	$fa3, $fa3
	fadd.d	$fa3, $fa0, $fa3
	ftintrz.w.d	$fa3, $fa3
	movfr2gr.s	$a4, $fa3
	st.w	$a4, $s8, 12
	add.d	$a3, $a3, $ra
	addi.d	$t5, $t5, 1
	addi.d	$t8, $t8, -1
	addi.d	$s3, $s3, 8
	addi.d	$s7, $s7, 8
	beqz	$t8, .LBB0_99
.LBB0_109:                              # %.lr.ph554
                                        #   Parent Loop BB0_88 Depth=1
                                        #     Parent Loop BB0_101 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$s8, $s7, 0
	ld.w	$a4, $s8, 80
	bne	$a4, $s6, .LBB0_100
# %bb.110:                              #   in Loop: Header=BB0_109 Depth=3
	ld.d	$a4, $s8, 152
	ld.w	$t0, $a4, 68
	ld.w	$t1, $a4, 64
	ld.w	$s2, $fp, 4
	sub.w	$ra, $t0, $t1
	add.d	$a3, $a3, $t6
	bnez	$s2, .LBB0_107
# %bb.111:                              #   in Loop: Header=BB0_109 Depth=3
	bstrpick.d	$t0, $ra, 31, 31
	add.w	$t0, $ra, $t0
	srli.d	$t0, $t0, 1
	add.d	$t0, $a3, $t0
	b	.LBB0_108
.LBB0_112:                              #   in Loop: Header=BB0_88 Depth=1
	sub.w	$a3, $t2, $t3
	div.w	$a4, $a3, $a4
	srai.d	$t0, $a4, 63
	andn	$t6, $a4, $t0
	blt	$t2, $t3, .LBB0_97
	b	.LBB0_98
.LBB0_113:                              # %.lr.ph578
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a2, $a2, 0
	alsl.d	$a2, $a0, $a2, 3
	addi.d	$a2, $a2, 8
	ori	$a3, $zero, 4
	ori	$a4, $zero, 2
	move	$t0, $a0
	ld.d	$t3, $sp, 80                    # 8-byte Folded Reload
	ld.d	$t4, $sp, 72                    # 8-byte Folded Reload
	b	.LBB0_116
	.p2align	4, , 16
.LBB0_114:                              #   in Loop: Header=BB0_116 Depth=1
	ld.w	$t2, $t1, 12
	add.d	$t2, $t2, $s4
	st.w	$t2, $t1, 12
.LBB0_115:                              #   in Loop: Header=BB0_116 Depth=1
	addi.d	$t0, $t0, 1
	addi.d	$a2, $a2, 8
	bge	$t0, $a1, .LBB0_118
.LBB0_116:                              # =>This Inner Loop Header: Depth=1
	ld.d	$t1, $a2, 0
	ld.w	$t2, $t1, 80
	beq	$t2, $a3, .LBB0_114
# %bb.117:                              #   in Loop: Header=BB0_116 Depth=1
	beq	$t2, $a4, .LBB0_114
	b	.LBB0_115
.LBB0_118:
	move	$t2, $a7
	ld.d	$a4, $sp, 8                     # 8-byte Folded Reload
	ori	$a7, $zero, 1
	b	.LBB0_120
.LBB0_119:
	move	$t4, $zero
	move	$t3, $zero
	move	$t7, $zero
	move	$a6, $zero
.LBB0_120:                              # %._crit_edge579
	add.d	$a2, $a6, $t3
	ld.d	$a3, $sp, 40                    # 8-byte Folded Reload
	st.w	$a2, $a3, 0
	add.d	$a2, $a5, $t3
	ld.d	$a3, $sp, 56                    # 8-byte Folded Reload
	st.w	$a2, $a3, 0
	add.d	$a2, $t7, $t4
	ld.d	$a3, $sp, 48                    # 8-byte Folded Reload
	st.w	$a2, $a3, 0
	add.d	$a2, $t2, $t4
	ld.d	$a3, $sp, 64                    # 8-byte Folded Reload
	st.w	$a2, $a3, 0
	blt	$a4, $a7, .LBB0_129
# %bb.121:                              # %.lr.ph584
	pcalau12i	$a2, %got_pc_hi20(cellarray)
	ld.d	$a2, $a2, %got_pc_lo12(cellarray)
	ld.d	$a4, $a2, 0
	slli.d	$a3, $t3, 1
	alsl.d	$a4, $a0, $a4, 3
	addi.d	$a4, $a4, 8
	ori	$a5, $zero, 3
	move	$a6, $a0
	b	.LBB0_123
	.p2align	4, , 16
.LBB0_122:                              #   in Loop: Header=BB0_123 Depth=1
	addi.d	$a6, $a6, 1
	addi.d	$a4, $a4, 8
	bge	$a6, $a1, .LBB0_125
.LBB0_123:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a7, $a4, 0
	ld.w	$t0, $a7, 80
	bne	$t0, $a5, .LBB0_122
# %bb.124:                              #   in Loop: Header=BB0_123 Depth=1
	ld.w	$t0, $a7, 12
	add.d	$t0, $t0, $a3
	st.w	$t0, $a7, 12
	b	.LBB0_122
.LBB0_125:                              # %.lr.ph588
	ld.d	$a3, $a2, 0
	slli.d	$a2, $t4, 1
	alsl.d	$a3, $a0, $a3, 3
	addi.d	$a3, $a3, 8
	ori	$a4, $zero, 2
	b	.LBB0_127
	.p2align	4, , 16
.LBB0_126:                              #   in Loop: Header=BB0_127 Depth=1
	addi.d	$a0, $a0, 1
	addi.d	$a3, $a3, 8
	bge	$a0, $a1, .LBB0_129
.LBB0_127:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a5, $a3, 0
	ld.w	$a6, $a5, 80
	bne	$a6, $a4, .LBB0_126
# %bb.128:                              #   in Loop: Header=BB0_127 Depth=1
	ld.w	$a6, $a5, 16
	add.d	$a6, $a6, $a2
	st.w	$a6, $a5, 16
	b	.LBB0_126
.LBB0_129:                              # %._crit_edge589
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
