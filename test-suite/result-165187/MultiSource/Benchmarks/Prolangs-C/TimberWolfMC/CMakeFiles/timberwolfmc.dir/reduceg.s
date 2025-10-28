	.file	"reduceg.c"
	.text
	.globl	reduceg                         # -- Begin function reduceg
	.p2align	5
	.type	reduceg,@function
reduceg:                                # @reduceg
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
	st.d	$zero, $sp, 64
	ori	$a0, $zero, 808
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	st.w	$zero, $sp, 84
	pcalau12i	$a0, %got_pc_hi20(eNum)
	ld.d	$a0, $a0, %got_pc_lo12(eNum)
	ld.w	$a1, $a0, 0
	blez	$a1, .LBB0_3
# %bb.1:                                # %.lr.ph
	pcalau12i	$a1, %got_pc_hi20(eArray)
	ld.d	$a1, $a1, %got_pc_lo12(eArray)
	ld.d	$a2, $a1, 0
	move	$a1, $zero
	addi.d	$a2, $a2, 100
	.p2align	4, , 16
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	st.w	$zero, $a2, 0
	ld.w	$a3, $a0, 0
	addi.d	$a1, $a1, 1
	addi.d	$a2, $a2, 56
	blt	$a1, $a3, .LBB0_2
.LBB0_3:                                # %.preheader727
	pcalau12i	$a0, %got_pc_hi20(numRects)
	ld.d	$a3, $a0, %got_pc_lo12(numRects)
	ld.w	$a0, $a3, 0
	blez	$a0, .LBB0_6
# %bb.4:                                # %.lr.ph741
	pcalau12i	$a0, %got_pc_hi20(rectArray)
	ld.d	$a0, $a0, %got_pc_lo12(rectArray)
	ld.d	$a1, $a0, 0
	move	$a0, $zero
	addi.d	$a1, $a1, 84
	vrepli.b	$vr0, 0
	.p2align	4, , 16
.LBB0_5:                                # =>This Inner Loop Header: Depth=1
	vst	$vr0, $a1, 0
	ld.w	$a2, $a3, 0
	addi.d	$a0, $a0, 1
	addi.d	$a1, $a1, 52
	blt	$a0, $a2, .LBB0_5
.LBB0_6:                                # %.preheader726
	st.d	$a3, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(numXnodes)
	ld.d	$a0, $a0, %got_pc_lo12(numXnodes)
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	ld.w	$a0, $a0, 0
	lu12i.w	$a3, -251659
	lu12i.w	$a2, 20971
	lu12i.w	$a4, 10485
	blez	$a0, .LBB0_24
# %bb.7:                                # %.lr.ph755.preheader
	ori	$s1, $zero, 1
	pcalau12i	$a1, %got_pc_hi20(xNodeArray)
	ld.d	$a1, $a1, %got_pc_lo12(xNodeArray)
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	ori	$a1, $a3, 3113
	st.d	$a1, $sp, 40                    # 8-byte Folded Spill
	ori	$s8, $a2, 2128
	ori	$s2, $a4, 3112
	pcalau12i	$a1, %got_pc_hi20(eArray)
	ld.d	$s3, $a1, %got_pc_lo12(eArray)
	ori	$s5, $zero, 56
	pcalau12i	$a1, %got_pc_hi20(rectArray)
	ld.d	$s4, $a1, %got_pc_lo12(rectArray)
	ori	$s6, $zero, 52
	ori	$a1, $zero, 1
	b	.LBB0_10
	.p2align	4, , 16
.LBB0_8:                                # %._crit_edge751.loopexit
                                        #   in Loop: Header=BB0_10 Depth=1
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
.LBB0_9:                                # %._crit_edge751
                                        #   in Loop: Header=BB0_10 Depth=1
	addi.d	$a1, $fp, 1
	bge	$fp, $a0, .LBB0_24
.LBB0_10:                               # %.lr.ph755
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_14 Depth 2
                                        #       Child Loop BB0_20 Depth 3
                                        #       Child Loop BB0_23 Depth 3
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a2, $a2, 0
	move	$fp, $a1
	slli.d	$a1, $a1, 3
	ldx.d	$s0, $a2, $a1
	bnez	$s0, .LBB0_14
	b	.LBB0_9
.LBB0_11:                               #   in Loop: Header=BB0_14 Depth=2
	move	$a3, $zero
.LBB0_12:                               # %._crit_edge
                                        #   in Loop: Header=BB0_14 Depth=2
	ld.w	$a2, $sp, 84
	div.w	$a0, $a3, $s7
	st.w	$a0, $sp, 80
	slli.d	$a1, $a2, 3
	ld.d	$a3, $sp, 56                    # 8-byte Folded Reload
	stx.d	$s0, $a3, $a1
	sub.w	$a1, $zero, $a0
	addi.d	$a0, $sp, 64
	pcaddu18i	$ra, %call36(tinsert)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 8
	ld.w	$a1, $a0, 4
	ld.d	$a2, $s3, 0
	mul.d	$a1, $a1, $s5
	add.d	$a3, $a2, $a1
	ld.w	$a3, $a3, 4
	ld.d	$a4, $s4, 0
	ldx.w	$a1, $a2, $a1
	mul.d	$a3, $a3, $s6
	add.d	$a3, $a4, $a3
	st.w	$s1, $a3, 44
	mul.d	$a1, $a1, $s6
	add.d	$a1, $a4, $a1
	st.w	$s1, $a1, 36
	slli.d	$a1, $s7, 2
	ldx.w	$a0, $a0, $a1
	mul.d	$a0, $a0, $s5
	add.d	$a1, $a2, $a0
	ld.w	$a1, $a1, 4
	ldx.w	$a0, $a2, $a0
	mul.d	$a1, $a1, $s6
	add.d	$a1, $a4, $a1
	st.w	$s1, $a1, 40
	mul.d	$a0, $a0, $s6
	add.d	$a0, $a4, $a0
	st.w	$s1, $a0, 32
.LBB0_13:                               #   in Loop: Header=BB0_14 Depth=2
	ld.d	$s0, $s0, 24
	beqz	$s0, .LBB0_8
.LBB0_14:                               # %.lr.ph750
                                        #   Parent Loop BB0_10 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_20 Depth 3
                                        #       Child Loop BB0_23 Depth 3
	ld.w	$a0, $s0, 0
	beq	$a0, $s1, .LBB0_13
# %bb.15:                               #   in Loop: Header=BB0_14 Depth=2
	ld.d	$a1, $s0, 8
	ld.w	$a0, $sp, 84
	ld.w	$s7, $a1, 0
	addi.d	$a1, $a0, 1
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	mul.d	$a2, $a1, $a2
	add.d	$a2, $a2, $s8
	rotri.w	$a2, $a2, 2
	st.w	$a1, $sp, 84
	bgeu	$s2, $a2, .LBB0_17
# %bb.16:                               #   in Loop: Header=BB0_14 Depth=2
	bgtz	$s7, .LBB0_18
	b	.LBB0_11
.LBB0_17:                               #   in Loop: Header=BB0_14 Depth=2
	slli.d	$a0, $a0, 3
	addi.d	$a1, $a0, 808
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(realloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	blez	$s7, .LBB0_11
.LBB0_18:                               # %.lr.ph744
                                        #   in Loop: Header=BB0_14 Depth=2
	ld.d	$a0, $s3, 0
	ld.d	$a1, $s0, 8
	move	$a3, $zero
	ori	$a2, $zero, 1
	beq	$s7, $a2, .LBB0_22
# %bb.19:                               # %vector.ph
                                        #   in Loop: Header=BB0_14 Depth=2
	move	$a5, $zero
	bstrpick.d	$a2, $s7, 30, 1
	slli.d	$a4, $a2, 1
	ori	$a2, $s7, 1
	addi.d	$a6, $a1, 8
	move	$a7, $a4
	.p2align	4, , 16
.LBB0_20:                               # %vector.body
                                        #   Parent Loop BB0_10 Depth=1
                                        #     Parent Loop BB0_14 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$t0, $a6, -4
	ld.w	$t1, $a6, 0
	mul.d	$t0, $t0, $s5
	add.d	$t0, $a0, $t0
	mul.d	$t1, $t1, $s5
	add.d	$t1, $a0, $t1
	ld.w	$t0, $t0, 20
	ld.w	$t1, $t1, 20
	add.d	$a3, $a3, $t0
	add.d	$a5, $a5, $t1
	addi.d	$a7, $a7, -2
	addi.d	$a6, $a6, 8
	bnez	$a7, .LBB0_20
# %bb.21:                               # %middle.block
                                        #   in Loop: Header=BB0_14 Depth=2
	add.w	$a3, $a5, $a3
	beq	$a4, $s7, .LBB0_12
.LBB0_22:                               # %scalar.ph.preheader
                                        #   in Loop: Header=BB0_14 Depth=2
	addi.d	$a4, $s7, 1
	bstrpick.d	$a4, $a4, 31, 0
	alsl.d	$a1, $a2, $a1, 2
	sub.d	$a2, $a4, $a2
	.p2align	4, , 16
.LBB0_23:                               # %scalar.ph
                                        #   Parent Loop BB0_10 Depth=1
                                        #     Parent Loop BB0_14 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$a4, $a1, 0
	mul.d	$a4, $a4, $s5
	add.d	$a4, $a0, $a4
	ld.w	$a4, $a4, 20
	add.w	$a3, $a3, $a4
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, 4
	bnez	$a2, .LBB0_23
	b	.LBB0_12
.LBB0_24:                               # %.preheader725
	pcalau12i	$a0, %got_pc_hi20(numYnodes)
	ld.d	$a0, $a0, %got_pc_lo12(numYnodes)
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	ld.w	$a0, $a0, 0
	blez	$a0, .LBB0_42
# %bb.25:                               # %.lr.ph774.preheader
	ori	$s6, $zero, 1
	pcalau12i	$a1, %got_pc_hi20(yNodeArray)
	ld.d	$a1, $a1, %got_pc_lo12(yNodeArray)
	st.d	$a1, $sp, 24                    # 8-byte Folded Spill
	lu12i.w	$a1, -251659
	ori	$s2, $a1, 3113
	lu12i.w	$a1, 20971
	ori	$s3, $a1, 2128
	lu12i.w	$a1, 10485
	ori	$s5, $a1, 3112
	pcalau12i	$a1, %got_pc_hi20(eArray)
	ld.d	$s8, $a1, %got_pc_lo12(eArray)
	ori	$s4, $zero, 56
	pcalau12i	$a1, %got_pc_hi20(rectArray)
	ld.d	$s7, $a1, %got_pc_lo12(rectArray)
	ori	$s0, $zero, 52
	ori	$a1, $zero, 1
	b	.LBB0_28
	.p2align	4, , 16
.LBB0_26:                               # %._crit_edge769.loopexit
                                        #   in Loop: Header=BB0_28 Depth=1
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
.LBB0_27:                               # %._crit_edge769
                                        #   in Loop: Header=BB0_28 Depth=1
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	addi.d	$a1, $a2, 1
	bge	$a2, $a0, .LBB0_42
.LBB0_28:                               # %.lr.ph774
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_32 Depth 2
                                        #       Child Loop BB0_38 Depth 3
                                        #       Child Loop BB0_41 Depth 3
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a2, $a2, 0
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	slli.d	$a1, $a1, 3
	ldx.d	$s1, $a2, $a1
	bnez	$s1, .LBB0_32
	b	.LBB0_27
.LBB0_29:                               #   in Loop: Header=BB0_32 Depth=2
	move	$a3, $zero
.LBB0_30:                               # %._crit_edge762
                                        #   in Loop: Header=BB0_32 Depth=2
	ld.w	$a2, $sp, 84
	div.w	$a0, $a3, $fp
	st.w	$a0, $sp, 80
	slli.d	$a1, $a2, 3
	ld.d	$a3, $sp, 56                    # 8-byte Folded Reload
	stx.d	$s1, $a3, $a1
	sub.w	$a1, $zero, $a0
	addi.d	$a0, $sp, 64
	pcaddu18i	$ra, %call36(tinsert)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 8
	ld.w	$a1, $a0, 4
	ld.d	$a2, $s8, 0
	mul.d	$a1, $a1, $s4
	add.d	$a3, $a2, $a1
	ld.w	$a3, $a3, 4
	ld.d	$a4, $s7, 0
	ldx.w	$a1, $a2, $a1
	mul.d	$a3, $a3, $s0
	add.d	$a3, $a4, $a3
	st.w	$s6, $a3, 44
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a4, $a1
	st.w	$s6, $a1, 40
	slli.d	$a1, $fp, 2
	ldx.w	$a0, $a0, $a1
	mul.d	$a0, $a0, $s4
	add.d	$a1, $a2, $a0
	ld.w	$a1, $a1, 4
	ldx.w	$a0, $a2, $a0
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a4, $a1
	st.w	$s6, $a1, 36
	mul.d	$a0, $a0, $s0
	add.d	$a0, $a4, $a0
	st.w	$s6, $a0, 32
.LBB0_31:                               #   in Loop: Header=BB0_32 Depth=2
	ld.d	$s1, $s1, 24
	beqz	$s1, .LBB0_26
.LBB0_32:                               # %.lr.ph768
                                        #   Parent Loop BB0_28 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_38 Depth 3
                                        #       Child Loop BB0_41 Depth 3
	ld.w	$a0, $s1, 0
	beq	$a0, $s6, .LBB0_31
# %bb.33:                               #   in Loop: Header=BB0_32 Depth=2
	ld.d	$a1, $s1, 8
	ld.w	$a0, $sp, 84
	ld.w	$fp, $a1, 0
	addi.d	$a1, $a0, 1
	mul.d	$a2, $a1, $s2
	add.d	$a2, $a2, $s3
	rotri.w	$a2, $a2, 2
	st.w	$a1, $sp, 84
	bgeu	$s5, $a2, .LBB0_35
# %bb.34:                               #   in Loop: Header=BB0_32 Depth=2
	bgtz	$fp, .LBB0_36
	b	.LBB0_29
.LBB0_35:                               #   in Loop: Header=BB0_32 Depth=2
	slli.d	$a0, $a0, 3
	addi.d	$a1, $a0, 808
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(realloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	blez	$fp, .LBB0_29
.LBB0_36:                               # %.lr.ph761
                                        #   in Loop: Header=BB0_32 Depth=2
	ld.d	$a0, $s8, 0
	ld.d	$a1, $s1, 8
	move	$a3, $zero
	ori	$a2, $zero, 1
	beq	$fp, $a2, .LBB0_40
# %bb.37:                               # %vector.ph1100
                                        #   in Loop: Header=BB0_32 Depth=2
	move	$a5, $zero
	bstrpick.d	$a2, $fp, 30, 1
	slli.d	$a4, $a2, 1
	ori	$a2, $fp, 1
	addi.d	$a6, $a1, 8
	move	$a7, $a4
	.p2align	4, , 16
.LBB0_38:                               # %vector.body1103
                                        #   Parent Loop BB0_28 Depth=1
                                        #     Parent Loop BB0_32 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$t0, $a6, -4
	ld.w	$t1, $a6, 0
	mul.d	$t0, $t0, $s4
	add.d	$t0, $a0, $t0
	mul.d	$t1, $t1, $s4
	add.d	$t1, $a0, $t1
	ld.w	$t0, $t0, 20
	ld.w	$t1, $t1, 20
	add.d	$a3, $a3, $t0
	add.d	$a5, $a5, $t1
	addi.d	$a7, $a7, -2
	addi.d	$a6, $a6, 8
	bnez	$a7, .LBB0_38
# %bb.39:                               # %middle.block1109
                                        #   in Loop: Header=BB0_32 Depth=2
	add.w	$a3, $a5, $a3
	beq	$a4, $fp, .LBB0_30
.LBB0_40:                               # %scalar.ph1098.preheader
                                        #   in Loop: Header=BB0_32 Depth=2
	addi.d	$a4, $fp, 1
	bstrpick.d	$a4, $a4, 31, 0
	alsl.d	$a1, $a2, $a1, 2
	sub.d	$a2, $a4, $a2
	.p2align	4, , 16
.LBB0_41:                               # %scalar.ph1098
                                        #   Parent Loop BB0_28 Depth=1
                                        #     Parent Loop BB0_32 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$a4, $a1, 0
	mul.d	$a4, $a4, $s4
	add.d	$a4, $a0, $a4
	ld.w	$a4, $a4, 20
	add.w	$a3, $a3, $a4
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, 4
	bnez	$a2, .LBB0_41
	b	.LBB0_30
.LBB0_42:                               # %.preheader724
	ori	$s5, $zero, 1
	pcalau12i	$a0, %got_pc_hi20(edgeTransition)
	ld.d	$a0, $a0, %got_pc_lo12(edgeTransition)
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(eArray)
	ld.d	$s2, $a0, %got_pc_lo12(eArray)
	pcalau12i	$a0, %got_pc_hi20(rectArray)
	ld.d	$s3, $a0, %got_pc_lo12(rectArray)
	ori	$s7, $zero, 56
	ori	$s8, $zero, 52
	lu12i.w	$a0, 2441
	ori	$a0, $a0, 1664
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
                                        # implicit-def: $r29
	.p2align	4, , 16
.LBB0_43:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_49 Depth 2
                                        #       Child Loop BB0_56 Depth 3
                                        #       Child Loop BB0_53 Depth 3
                                        #       Child Loop BB0_70 Depth 3
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 72
	addi.d	$a2, $sp, 80
	addi.d	$a3, $sp, 84
	pcaddu18i	$ra, %call36(tpop)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 72
	beqz	$a0, .LBB0_77
# %bb.44:                               #   in Loop: Header=BB0_43 Depth=1
	ld.w	$a0, $sp, 84
	slli.d	$a0, $a0, 3
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	ldx.d	$a0, $a1, $a0
	ld.d	$a0, $a0, 8
	ld.w	$a1, $a0, 0
	beq	$a1, $s5, .LBB0_43
# %bb.45:                               #   in Loop: Header=BB0_43 Depth=1
	ld.w	$a2, $a0, 4
	ld.d	$a3, $sp, 8                     # 8-byte Folded Reload
	ld.w	$a3, $a3, 0
	move	$a4, $zero
	slt	$t0, $a3, $a2
	ld.d	$a6, $s2, 0
	ld.d	$a7, $s3, 0
	ori	$a5, $zero, 36
	masknez	$t1, $a5, $t0
	ori	$a5, $zero, 40
	maskeqz	$t0, $a5, $t0
	or	$t0, $t0, $t1
	add.d	$a5, $a7, $t0
	st.d	$a5, $sp, 24                    # 8-byte Folded Spill
	ori	$t1, $zero, 1
	ori	$t3, $zero, 1
	b	.LBB0_49
.LBB0_46:                               # %._crit_edge793.sink.split
                                        #   in Loop: Header=BB0_49 Depth=2
	mul.d	$a5, $s1, $s8
	add.d	$a5, $a7, $a5
	mul.d	$t0, $s0, $s8
	ld.d	$t1, $sp, 24                    # 8-byte Folded Reload
	stx.w	$s5, $t1, $t0
	st.w	$s5, $a5, 44
	.p2align	4, , 16
.LBB0_47:                               # %._crit_edge793
                                        #   in Loop: Header=BB0_49 Depth=2
	move	$t1, $t2
.LBB0_48:                               #   in Loop: Header=BB0_49 Depth=2
	addi.d	$a4, $a4, 1
	move	$t3, $t2
	blt	$a1, $t2, .LBB0_43
.LBB0_49:                               #   Parent Loop BB0_43 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_56 Depth 3
                                        #       Child Loop BB0_53 Depth 3
                                        #       Child Loop BB0_70 Depth 3
	slli.d	$t2, $t3, 2
	ldx.w	$t2, $a0, $t2
	mul.d	$t4, $t2, $s7
	ldx.w	$t2, $a6, $t4
	mul.d	$t2, $t2, $s8
	add.d	$t2, $a7, $t2
	ld.w	$t5, $t2, 32
	addi.w	$t2, $t3, 1
	beqz	$t5, .LBB0_48
# %bb.50:                               #   in Loop: Header=BB0_49 Depth=2
	slli.d	$t5, $t1, 2
	ldx.w	$t5, $a0, $t5
	add.d	$t4, $a6, $t4
	ld.w	$t6, $t4, 16
	mul.d	$t4, $t5, $s7
	add.d	$t5, $a6, $t4
	ld.w	$t7, $t5, 12
	alsl.d	$t4, $t1, $a0, 2
	add.d	$t7, $t7, $t6
	bstrpick.d	$t8, $t7, 31, 31
	add.w	$t7, $t7, $t8
	srai.d	$t7, $t7, 1
	bge	$a3, $a2, .LBB0_54
# %bb.51:                               # %.preheader719
                                        #   in Loop: Header=BB0_49 Depth=2
	blt	$t3, $t1, .LBB0_57
# %bb.52:                               # %.lr.ph786.preheader
                                        #   in Loop: Header=BB0_49 Depth=2
	addi.d	$t8, $t1, -1
	alsl.d	$fp, $t1, $a0, 2
	move	$s0, $t1
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_53:                               # %.lr.ph786
                                        #   Parent Loop BB0_43 Depth=1
                                        #     Parent Loop BB0_49 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$a5, $fp, 0
	mul.d	$a5, $a5, $s7
	ldx.w	$t0, $a6, $a5
	mul.d	$t0, $t0, $s8
	add.d	$t0, $a7, $t0
	ld.w	$t0, $t0, 4
	add.d	$a5, $a6, $a5
	ld.w	$a5, $a5, 4
	sub.w	$t0, $t0, $t7
	srai.d	$s4, $t0, 31
	xor	$t0, $t0, $s4
	sub.w	$t0, $t0, $s4
	slt	$s4, $t0, $s1
	mul.d	$a5, $a5, $s8
	add.d	$a5, $a7, $a5
	ld.w	$a5, $a5, 4
	maskeqz	$t0, $t0, $s4
	masknez	$s1, $s1, $s4
	or	$t0, $t0, $s1
	sub.w	$a5, $a5, $t7
	srai.d	$s1, $a5, 31
	xor	$a5, $a5, $s1
	sub.w	$a5, $a5, $s1
	slt	$s1, $a5, $t0
	masknez	$s6, $s6, $s1
	maskeqz	$ra, $s0, $s1
	or	$s6, $ra, $s6
	masknez	$s6, $s6, $s4
	maskeqz	$s4, $s0, $s4
	or	$s6, $s4, $s6
	masknez	$t0, $t0, $s1
	maskeqz	$a5, $a5, $s1
	or	$s1, $a5, $t0
	addi.d	$t8, $t8, 1
	addi.d	$fp, $fp, 4
	addi.d	$s0, $s0, 1
	blt	$t8, $t3, .LBB0_53
	b	.LBB0_57
	.p2align	4, , 16
.LBB0_54:                               # %.preheader721
                                        #   in Loop: Header=BB0_49 Depth=2
	blt	$t3, $t1, .LBB0_57
# %bb.55:                               # %.lr.ph780.preheader
                                        #   in Loop: Header=BB0_49 Depth=2
	addi.d	$t8, $t1, -1
	lu12i.w	$a5, 2441
	ori	$s1, $a5, 1664
	move	$fp, $t1
	move	$s0, $t4
	.p2align	4, , 16
.LBB0_56:                               # %.lr.ph780
                                        #   Parent Loop BB0_43 Depth=1
                                        #     Parent Loop BB0_49 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$s4, $s0, 0
	mul.d	$s4, $s4, $s7
	ldx.w	$ra, $a6, $s4
	mul.d	$ra, $ra, $s8
	ldx.w	$ra, $a7, $ra
	add.d	$s4, $a6, $s4
	ld.w	$s4, $s4, 4
	sub.w	$ra, $ra, $t7
	srai.d	$a5, $ra, 31
	xor	$ra, $ra, $a5
	sub.w	$a5, $ra, $a5
	slt	$ra, $a5, $s1
	mul.d	$s4, $s4, $s8
	ldx.w	$s4, $a7, $s4
	maskeqz	$a5, $a5, $ra
	masknez	$s1, $s1, $ra
	or	$a5, $a5, $s1
	sub.w	$s1, $s4, $t7
	srai.d	$s4, $s1, 31
	xor	$s1, $s1, $s4
	sub.w	$s1, $s1, $s4
	slt	$s4, $s1, $a5
	masknez	$s6, $s6, $s4
	maskeqz	$t0, $fp, $s4
	or	$t0, $t0, $s6
	masknez	$t0, $t0, $ra
	maskeqz	$s6, $fp, $ra
	or	$s6, $s6, $t0
	masknez	$a5, $a5, $s4
	maskeqz	$t0, $s1, $s4
	or	$s1, $t0, $a5
	addi.d	$t8, $t8, 1
	addi.d	$s0, $s0, 4
	addi.d	$fp, $fp, 1
	blt	$t8, $t3, .LBB0_56
.LBB0_57:                               # %.loopexit720
                                        #   in Loop: Header=BB0_49 Depth=2
	blt	$t3, $t1, .LBB0_47
# %bb.58:                               # %.lr.ph792.preheader
                                        #   in Loop: Header=BB0_49 Depth=2
	addi.w	$t7, $s6, 0
	bne	$t1, $t7, .LBB0_60
# %bb.59:                               #   in Loop: Header=BB0_49 Depth=2
	st.w	$t6, $t5, 16
	b	.LBB0_61
.LBB0_60:                               #   in Loop: Header=BB0_49 Depth=2
	st.w	$s5, $t5, 44
.LBB0_61:                               #   in Loop: Header=BB0_49 Depth=2
	ld.w	$a5, $t5, 0
	ld.w	$t0, $t5, 4
	mul.d	$a5, $a5, $s8
	add.d	$t5, $a7, $a5
	st.w	$s5, $t5, 32
	mul.d	$a5, $t0, $s8
	add.d	$t6, $a7, $a5
	bge	$a3, $a2, .LBB0_63
# %bb.62:                               # %.thread694.peel
                                        #   in Loop: Header=BB0_49 Depth=2
	st.w	$s5, $t6, 36
	ori	$t8, $zero, 40
	beq	$t1, $t3, .LBB0_64
	b	.LBB0_65
.LBB0_63:                               # %.thread.peel
                                        #   in Loop: Header=BB0_49 Depth=2
	st.w	$s5, $t6, 40
	ori	$t8, $zero, 36
	bne	$t1, $t3, .LBB0_65
.LBB0_64:                               # %.sink.split
                                        #   in Loop: Header=BB0_49 Depth=2
	stx.w	$s5, $t5, $t8
	st.w	$s5, $t6, 44
.LBB0_65:                               #   in Loop: Header=BB0_49 Depth=2
	bge	$t1, $t3, .LBB0_47
# %bb.66:                               # %.lr.ph792.preheader1167
                                        #   in Loop: Header=BB0_49 Depth=2
	alsl.d	$t5, $t3, $a0, 2
	addi.d	$a5, $a0, 4
	alsl.d	$t6, $t1, $a5, 2
	addi.d	$t7, $t7, -1
	move	$t8, $t1
	b	.LBB0_70
	.p2align	4, , 16
.LBB0_67:                               #   in Loop: Header=BB0_70 Depth=3
	st.w	$s5, $s0, 32
	st.w	$s5, $s0, 40
	st.w	$s5, $t8, 36
	st.w	$s5, $t8, 44
.LBB0_68:                               #   in Loop: Header=BB0_70 Depth=3
	bge	$fp, $t3, .LBB0_47
.LBB0_69:                               # %.lr.ph792.backedge
                                        #   in Loop: Header=BB0_70 Depth=3
	addi.d	$t6, $t6, 4
	move	$t8, $fp
.LBB0_70:                               # %.lr.ph792
                                        #   Parent Loop BB0_43 Depth=1
                                        #     Parent Loop BB0_49 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$a5, $t6, 0
	mul.d	$s0, $a5, $s7
	add.d	$fp, $a6, $s0
	bne	$t7, $t8, .LBB0_72
# %bb.71:                               #   in Loop: Header=BB0_70 Depth=3
	ld.w	$a5, $t5, 0
	mul.d	$a5, $a5, $s7
	add.d	$a5, $a6, $a5
	ld.w	$a5, $a5, 16
	st.w	$a5, $fp, 16
	ld.w	$a5, $t4, 0
	mul.d	$a5, $a5, $s7
	ld.w	$t0, $t6, 0
	add.d	$a5, $a6, $a5
	ld.w	$a5, $a5, 12
	mul.d	$t0, $t0, $s7
	add.d	$t0, $a6, $t0
	st.w	$a5, $t0, 12
	ldx.w	$s0, $a6, $s0
	ld.w	$s1, $fp, 4
	bne	$a4, $t8, .LBB0_73
	b	.LBB0_46
	.p2align	4, , 16
.LBB0_72:                               #   in Loop: Header=BB0_70 Depth=3
	st.w	$s5, $fp, 44
	ldx.w	$s0, $a6, $s0
	ld.w	$s1, $fp, 4
	beq	$a4, $t8, .LBB0_46
.LBB0_73:                               #   in Loop: Header=BB0_70 Depth=3
	addi.d	$fp, $t8, 1
	blt	$t8, $t1, .LBB0_68
# %bb.74:                               #   in Loop: Header=BB0_70 Depth=3
	bge	$fp, $t3, .LBB0_68
# %bb.75:                               #   in Loop: Header=BB0_70 Depth=3
	mul.d	$a5, $s0, $s8
	add.d	$s0, $a7, $a5
	mul.d	$a5, $s1, $s8
	add.d	$t8, $a7, $a5
	blt	$a3, $a2, .LBB0_67
# %bb.76:                               #   in Loop: Header=BB0_70 Depth=3
	ori	$a5, $zero, 1
	lu32i.d	$a5, 1
	st.d	$a5, $s0, 32
	st.d	$a5, $t8, 40
	blt	$fp, $t3, .LBB0_69
	b	.LBB0_47
.LBB0_77:                               # %.preheader718
	ld.d	$a3, $sp, 16                    # 8-byte Folded Reload
	ld.w	$a0, $a3, 0
	blez	$a0, .LBB0_80
# %bb.78:                               # %.lr.ph796
	ld.d	$a1, $s3, 0
	move	$a0, $zero
	addi.d	$a1, $a1, 100
	.p2align	4, , 16
.LBB0_79:                               # =>This Inner Loop Header: Depth=1
	st.w	$zero, $a1, 0
	ld.w	$a2, $a3, 0
	addi.d	$a0, $a0, 1
	addi.d	$a1, $a1, 52
	blt	$a0, $a2, .LBB0_79
.LBB0_80:                               # %.preheader717
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.w	$a6, $a0, 0
	blez	$a6, .LBB0_93
# %bb.81:                               # %.lr.ph809
	pcalau12i	$a0, %got_pc_hi20(xNodeArray)
	ld.d	$a0, $a0, %got_pc_lo12(xNodeArray)
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 1
	ori	$a2, $zero, 56
	ori	$a3, $zero, 52
	ori	$a5, $zero, 1
	b	.LBB0_84
	.p2align	4, , 16
.LBB0_82:                               # %._crit_edge806.loopexit
                                        #   in Loop: Header=BB0_84 Depth=1
	ld.d	$a5, $sp, 48                    # 8-byte Folded Reload
	ld.w	$a6, $a5, 0
.LBB0_83:                               # %._crit_edge806
                                        #   in Loop: Header=BB0_84 Depth=1
	addi.d	$a5, $a4, 1
	bge	$a4, $a6, .LBB0_93
.LBB0_84:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_87 Depth 2
                                        #       Child Loop BB0_91 Depth 3
	move	$a4, $a5
	slli.d	$a5, $a5, 3
	ldx.d	$a5, $a0, $a5
	beqz	$a5, .LBB0_83
# %bb.85:                               # %.lr.ph805
                                        #   in Loop: Header=BB0_84 Depth=1
	ld.d	$a6, $s2, 0
	b	.LBB0_87
	.p2align	4, , 16
.LBB0_86:                               # %.loopexit716
                                        #   in Loop: Header=BB0_87 Depth=2
	ld.d	$a5, $a5, 24
	beqz	$a5, .LBB0_82
.LBB0_87:                               #   Parent Loop BB0_84 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_91 Depth 3
	ld.w	$a7, $a5, 0
	beq	$a7, $a1, .LBB0_86
# %bb.88:                               #   in Loop: Header=BB0_87 Depth=2
	ld.d	$t0, $a5, 8
	ld.w	$t1, $t0, 0
	blez	$t1, .LBB0_86
# %bb.89:                               # %.lr.ph800
                                        #   in Loop: Header=BB0_87 Depth=2
	ld.d	$a7, $s3, 0
	addi.d	$t1, $t1, 1
	bstrpick.d	$t1, $t1, 31, 0
	addi.d	$t0, $t0, 4
	addi.d	$t1, $t1, -1
	b	.LBB0_91
	.p2align	4, , 16
.LBB0_90:                               #   in Loop: Header=BB0_91 Depth=3
	addi.d	$t1, $t1, -1
	addi.d	$t0, $t0, 4
	beqz	$t1, .LBB0_86
.LBB0_91:                               #   Parent Loop BB0_84 Depth=1
                                        #     Parent Loop BB0_87 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$t2, $t0, 0
	mul.d	$t2, $t2, $a2
	add.d	$t2, $a6, $t2
	ld.w	$t3, $t2, 44
	beq	$t3, $a1, .LBB0_90
# %bb.92:                               #   in Loop: Header=BB0_91 Depth=3
	ld.w	$t3, $t2, 4
	mul.d	$t3, $t3, $a3
	add.d	$t3, $a7, $t3
	ld.w	$t4, $t3, 48
	ld.w	$t2, $t2, 0
	addi.d	$t4, $t4, 1
	st.w	$t4, $t3, 48
	mul.d	$t2, $t2, $a3
	add.d	$t2, $a7, $t2
	ld.w	$t3, $t2, 48
	addi.d	$t3, $t3, 1
	st.w	$t3, $t2, 48
	b	.LBB0_90
.LBB0_93:                               # %.preheader715
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.w	$t2, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(yNodeArray)
	ld.d	$a0, $a0, %got_pc_lo12(yNodeArray)
	ld.d	$a1, $a0, 0
	blez	$t2, .LBB0_107
# %bb.94:                               # %.lr.ph822.preheader
	ori	$a2, $zero, 1
	ori	$a3, $zero, 56
	ori	$a4, $zero, 52
	ori	$a6, $zero, 1
	b	.LBB0_97
	.p2align	4, , 16
.LBB0_95:                               # %._crit_edge819.loopexit
                                        #   in Loop: Header=BB0_97 Depth=1
	ld.d	$a6, $sp, 40                    # 8-byte Folded Reload
	ld.w	$t2, $a6, 0
.LBB0_96:                               # %._crit_edge819
                                        #   in Loop: Header=BB0_97 Depth=1
	addi.d	$a6, $a5, 1
	bge	$a5, $t2, .LBB0_106
.LBB0_97:                               # %.lr.ph822
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_100 Depth 2
                                        #       Child Loop BB0_104 Depth 3
	move	$a5, $a6
	slli.d	$a6, $a6, 3
	ldx.d	$a6, $a1, $a6
	beqz	$a6, .LBB0_96
# %bb.98:                               # %.lr.ph818
                                        #   in Loop: Header=BB0_97 Depth=1
	ld.d	$a7, $s2, 0
	b	.LBB0_100
	.p2align	4, , 16
.LBB0_99:                               # %.loopexit714
                                        #   in Loop: Header=BB0_100 Depth=2
	ld.d	$a6, $a6, 24
	beqz	$a6, .LBB0_95
.LBB0_100:                              #   Parent Loop BB0_97 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_104 Depth 3
	ld.w	$t0, $a6, 0
	beq	$t0, $a2, .LBB0_99
# %bb.101:                              #   in Loop: Header=BB0_100 Depth=2
	ld.d	$t1, $a6, 8
	ld.w	$t2, $t1, 0
	blez	$t2, .LBB0_99
# %bb.102:                              # %.lr.ph813
                                        #   in Loop: Header=BB0_100 Depth=2
	ld.d	$t0, $s3, 0
	addi.d	$t2, $t2, 1
	bstrpick.d	$t2, $t2, 31, 0
	addi.d	$t1, $t1, 4
	addi.d	$t2, $t2, -1
	b	.LBB0_104
	.p2align	4, , 16
.LBB0_103:                              #   in Loop: Header=BB0_104 Depth=3
	addi.d	$t2, $t2, -1
	addi.d	$t1, $t1, 4
	beqz	$t2, .LBB0_99
.LBB0_104:                              #   Parent Loop BB0_97 Depth=1
                                        #     Parent Loop BB0_100 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$t3, $t1, 0
	mul.d	$t3, $t3, $a3
	add.d	$t3, $a7, $t3
	ld.w	$t4, $t3, 44
	beq	$t4, $a2, .LBB0_103
# %bb.105:                              #   in Loop: Header=BB0_104 Depth=3
	ld.w	$t4, $t3, 4
	mul.d	$t4, $t4, $a4
	add.d	$t4, $t0, $t4
	ld.w	$t5, $t4, 48
	ld.w	$t3, $t3, 0
	addi.d	$t5, $t5, 1
	st.w	$t5, $t4, 48
	mul.d	$t3, $t3, $a4
	add.d	$t3, $t0, $t3
	ld.w	$t4, $t3, 48
	addi.d	$t4, $t4, 1
	st.w	$t4, $t3, 48
	b	.LBB0_103
.LBB0_106:                              # %.preheader713.loopexit
	ld.d	$a1, $a0, 0
.LBB0_107:                              # %.preheader713
	pcalau12i	$a2, %got_pc_hi20(xNodeArray)
	ld.d	$a2, $a2, %got_pc_lo12(xNodeArray)
	ld.d	$a3, $a2, 0
	ori	$a4, $zero, 1
	ori	$a5, $zero, 56
	ori	$a6, $zero, 52
	b	.LBB0_109
	.p2align	4, , 16
.LBB0_108:                              # %.loopexit711
                                        #   in Loop: Header=BB0_109 Depth=1
	beqz	$a7, .LBB0_156
.LBB0_109:                              # %.preheader712
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_113 Depth 2
                                        #       Child Loop BB0_116 Depth 3
                                        #         Child Loop BB0_122 Depth 4
                                        #           Child Loop BB0_127 Depth 5
                                        #     Child Loop BB0_137 Depth 2
                                        #       Child Loop BB0_140 Depth 3
                                        #         Child Loop BB0_146 Depth 4
                                        #           Child Loop BB0_151 Depth 5
	ld.d	$a7, $sp, 48                    # 8-byte Folded Reload
	ld.w	$t3, $a7, 0
	blez	$t3, .LBB0_133
# %bb.110:                              # %.lr.ph840.preheader
                                        #   in Loop: Header=BB0_109 Depth=1
	move	$a7, $zero
	ori	$t1, $zero, 1
	b	.LBB0_113
	.p2align	4, , 16
.LBB0_111:                              # %._crit_edge835.loopexit
                                        #   in Loop: Header=BB0_113 Depth=2
	ld.d	$t1, $sp, 48                    # 8-byte Folded Reload
	ld.w	$t3, $t1, 0
.LBB0_112:                              # %._crit_edge835
                                        #   in Loop: Header=BB0_113 Depth=2
	addi.d	$t1, $t0, 1
	bge	$t0, $t3, .LBB0_132
.LBB0_113:                              # %.lr.ph840
                                        #   Parent Loop BB0_109 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_116 Depth 3
                                        #         Child Loop BB0_122 Depth 4
                                        #           Child Loop BB0_127 Depth 5
	move	$t0, $t1
	slli.d	$t1, $t1, 3
	ldx.d	$t1, $a3, $t1
	beqz	$t1, .LBB0_112
# %bb.114:                              # %.lr.ph834
                                        #   in Loop: Header=BB0_113 Depth=2
	ld.d	$t2, $s2, 0
	b	.LBB0_116
	.p2align	4, , 16
.LBB0_115:                              # %.loopexit709
                                        #   in Loop: Header=BB0_116 Depth=3
	ld.d	$t1, $t1, 24
	beqz	$t1, .LBB0_111
.LBB0_116:                              #   Parent Loop BB0_109 Depth=1
                                        #     Parent Loop BB0_113 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_122 Depth 4
                                        #           Child Loop BB0_127 Depth 5
	ld.w	$t3, $t1, 0
	beq	$t3, $a4, .LBB0_115
# %bb.117:                              #   in Loop: Header=BB0_116 Depth=3
	ld.d	$t3, $t1, 8
	ld.w	$t4, $t3, 0
	blez	$t4, .LBB0_115
# %bb.118:                              # %.lr.ph827
                                        #   in Loop: Header=BB0_116 Depth=3
	move	$t5, $zero
	ld.d	$t6, $s3, 0
	addi.d	$t7, $t4, 1
	bstrpick.d	$t7, $t7, 31, 0
	addi.d	$t8, $t3, 8
	ori	$fp, $zero, 1
	ori	$s0, $zero, 2
	move	$s1, $t3
	b	.LBB0_122
.LBB0_119:                              # %.critedge
                                        #   in Loop: Header=BB0_122 Depth=4
	ld.w	$a7, $a7, 0
	mul.d	$a7, $a7, $a5
	add.d	$a7, $t2, $a7
	ld.w	$s4, $a7, 16
	ld.w	$a7, $a7, 12
	ld.w	$s5, $s8, 12
	sub.d	$a7, $a7, $s4
	add.d	$a7, $a7, $s5
	st.w	$a7, $s8, 12
.LBB0_120:                              #   in Loop: Header=BB0_122 Depth=4
	ori	$a7, $zero, 1
.LBB0_121:                              #   in Loop: Header=BB0_122 Depth=4
	addi.d	$fp, $fp, 1
	addi.d	$s1, $s1, 4
	addi.d	$t5, $t5, 1
	addi.d	$t8, $t8, 4
	addi.w	$s0, $s0, 1
	beq	$fp, $t7, .LBB0_115
.LBB0_122:                              #   Parent Loop BB0_109 Depth=1
                                        #     Parent Loop BB0_113 Depth=2
                                        #       Parent Loop BB0_116 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB0_127 Depth 5
	slli.d	$s4, $fp, 2
	ldx.w	$s4, $t3, $s4
	mul.d	$s4, $s4, $a5
	add.d	$s4, $t2, $s4
	ld.w	$s5, $s4, 44
	beq	$s5, $a4, .LBB0_121
# %bb.123:                              #   in Loop: Header=BB0_122 Depth=4
	ld.w	$s5, $s4, 4
	ld.w	$s6, $s4, 0
	mul.d	$s5, $s5, $a6
	add.d	$s5, $t6, $s5
	ld.w	$s7, $s5, 48
	mul.d	$s6, $s6, $a6
	beq	$s7, $a4, .LBB0_125
# %bb.124:                              #   in Loop: Header=BB0_122 Depth=4
	add.d	$s8, $t6, $s6
	ld.w	$s8, $s8, 48
	bne	$s8, $a4, .LBB0_121
.LBB0_125:                              # %._crit_edge992
                                        #   in Loop: Header=BB0_122 Depth=4
	addi.d	$a7, $s7, -1
	st.w	$a7, $s5, 48
	add.d	$s5, $t6, $s6
	ld.w	$s6, $s5, 48
	alsl.d	$a7, $fp, $t3, 2
	st.w	$a4, $s4, 44
	addi.d	$s4, $s6, -1
	st.w	$s4, $s5, 48
	move	$s4, $s0
	move	$s5, $t8
	move	$s6, $t5
	move	$s7, $s1
	b	.LBB0_127
	.p2align	4, , 16
.LBB0_126:                              #   in Loop: Header=BB0_127 Depth=5
	addi.d	$s7, $s7, -4
	addi.d	$s6, $s6, -1
	addi.d	$s5, $s5, 4
	addi.w	$s4, $s4, 1
.LBB0_127:                              #   Parent Loop BB0_109 Depth=1
                                        #     Parent Loop BB0_113 Depth=2
                                        #       Parent Loop BB0_116 Depth=3
                                        #         Parent Loop BB0_122 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	blt	$t4, $s4, .LBB0_129
# %bb.128:                              #   in Loop: Header=BB0_127 Depth=5
	ld.w	$s8, $s5, 0
	mul.d	$s8, $s8, $a5
	add.d	$s8, $t2, $s8
	ld.w	$ra, $s8, 44
	beqz	$ra, .LBB0_119
.LBB0_129:                              #   in Loop: Header=BB0_127 Depth=5
	blez	$s6, .LBB0_126
# %bb.130:                              #   in Loop: Header=BB0_127 Depth=5
	ld.w	$s8, $s7, 0
	mul.d	$s8, $s8, $a5
	add.d	$s8, $t2, $s8
	ld.w	$ra, $s8, 44
	bnez	$ra, .LBB0_126
# %bb.131:                              # %.critedge688
                                        #   in Loop: Header=BB0_122 Depth=4
	ld.w	$a7, $a7, 0
	mul.d	$a7, $a7, $a5
	add.d	$a7, $t2, $a7
	ld.w	$s4, $a7, 16
	ld.w	$a7, $a7, 12
	ld.w	$s5, $s8, 16
	sub.d	$a7, $s4, $a7
	add.d	$a7, $a7, $s5
	st.w	$a7, $s8, 16
	b	.LBB0_120
	.p2align	4, , 16
.LBB0_132:                              # %.preheader710.loopexit
                                        #   in Loop: Header=BB0_109 Depth=1
	ld.d	$t0, $sp, 40                    # 8-byte Folded Reload
	ld.w	$t2, $t0, 0
	bgtz	$t2, .LBB0_134
	b	.LBB0_108
	.p2align	4, , 16
.LBB0_133:                              #   in Loop: Header=BB0_109 Depth=1
	move	$a7, $zero
	blez	$t2, .LBB0_108
.LBB0_134:                              # %.lr.ph859.preheader
                                        #   in Loop: Header=BB0_109 Depth=1
	ori	$t1, $zero, 1
	b	.LBB0_137
	.p2align	4, , 16
.LBB0_135:                              # %._crit_edge854.loopexit
                                        #   in Loop: Header=BB0_137 Depth=2
	ld.d	$t1, $sp, 40                    # 8-byte Folded Reload
	ld.w	$t2, $t1, 0
.LBB0_136:                              # %._crit_edge854
                                        #   in Loop: Header=BB0_137 Depth=2
	addi.d	$t1, $t0, 1
	bge	$t0, $t2, .LBB0_108
.LBB0_137:                              # %.lr.ph859
                                        #   Parent Loop BB0_109 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_140 Depth 3
                                        #         Child Loop BB0_146 Depth 4
                                        #           Child Loop BB0_151 Depth 5
	move	$t0, $t1
	slli.d	$t1, $t1, 3
	ldx.d	$t1, $a1, $t1
	beqz	$t1, .LBB0_136
# %bb.138:                              # %.lr.ph853
                                        #   in Loop: Header=BB0_137 Depth=2
	ld.d	$t2, $s2, 0
	b	.LBB0_140
	.p2align	4, , 16
.LBB0_139:                              # %.loopexit708
                                        #   in Loop: Header=BB0_140 Depth=3
	ld.d	$t1, $t1, 24
	beqz	$t1, .LBB0_135
.LBB0_140:                              #   Parent Loop BB0_109 Depth=1
                                        #     Parent Loop BB0_137 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_146 Depth 4
                                        #           Child Loop BB0_151 Depth 5
	ld.w	$t3, $t1, 0
	beq	$t3, $a4, .LBB0_139
# %bb.141:                              #   in Loop: Header=BB0_140 Depth=3
	ld.d	$t3, $t1, 8
	ld.w	$t4, $t3, 0
	blez	$t4, .LBB0_139
# %bb.142:                              # %.lr.ph846
                                        #   in Loop: Header=BB0_140 Depth=3
	move	$t5, $zero
	ld.d	$t6, $s3, 0
	addi.d	$t7, $t4, 1
	bstrpick.d	$t7, $t7, 31, 0
	addi.d	$t8, $t3, 8
	ori	$fp, $zero, 1
	ori	$s0, $zero, 2
	move	$s1, $t3
	b	.LBB0_146
.LBB0_143:                              # %.critedge690
                                        #   in Loop: Header=BB0_146 Depth=4
	ld.w	$a7, $a7, 0
	mul.d	$a7, $a7, $a5
	add.d	$a7, $t2, $a7
	ld.w	$s4, $a7, 16
	ld.w	$a7, $a7, 12
	ld.w	$s5, $s8, 12
	sub.d	$a7, $a7, $s4
	add.d	$a7, $a7, $s5
	st.w	$a7, $s8, 12
.LBB0_144:                              #   in Loop: Header=BB0_146 Depth=4
	ori	$a7, $zero, 1
.LBB0_145:                              #   in Loop: Header=BB0_146 Depth=4
	addi.d	$fp, $fp, 1
	addi.d	$s1, $s1, 4
	addi.d	$t5, $t5, 1
	addi.d	$t8, $t8, 4
	addi.w	$s0, $s0, 1
	beq	$fp, $t7, .LBB0_139
.LBB0_146:                              #   Parent Loop BB0_109 Depth=1
                                        #     Parent Loop BB0_137 Depth=2
                                        #       Parent Loop BB0_140 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB0_151 Depth 5
	slli.d	$s4, $fp, 2
	ldx.w	$s4, $t3, $s4
	mul.d	$s4, $s4, $a5
	add.d	$s4, $t2, $s4
	ld.w	$s5, $s4, 44
	beq	$s5, $a4, .LBB0_145
# %bb.147:                              #   in Loop: Header=BB0_146 Depth=4
	ld.w	$s5, $s4, 4
	ld.w	$s6, $s4, 0
	mul.d	$s5, $s5, $a6
	add.d	$s5, $t6, $s5
	ld.w	$s7, $s5, 48
	mul.d	$s6, $s6, $a6
	beq	$s7, $a4, .LBB0_149
# %bb.148:                              #   in Loop: Header=BB0_146 Depth=4
	add.d	$s8, $t6, $s6
	ld.w	$s8, $s8, 48
	bne	$s8, $a4, .LBB0_145
.LBB0_149:                              # %._crit_edge993
                                        #   in Loop: Header=BB0_146 Depth=4
	addi.d	$a7, $s7, -1
	st.w	$a7, $s5, 48
	add.d	$s5, $t6, $s6
	ld.w	$s6, $s5, 48
	alsl.d	$a7, $fp, $t3, 2
	st.w	$a4, $s4, 44
	addi.d	$s4, $s6, -1
	st.w	$s4, $s5, 48
	move	$s4, $s0
	move	$s5, $t8
	move	$s6, $t5
	move	$s7, $s1
	b	.LBB0_151
	.p2align	4, , 16
.LBB0_150:                              #   in Loop: Header=BB0_151 Depth=5
	addi.d	$s7, $s7, -4
	addi.d	$s6, $s6, -1
	addi.d	$s5, $s5, 4
	addi.w	$s4, $s4, 1
.LBB0_151:                              #   Parent Loop BB0_109 Depth=1
                                        #     Parent Loop BB0_137 Depth=2
                                        #       Parent Loop BB0_140 Depth=3
                                        #         Parent Loop BB0_146 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	blt	$t4, $s4, .LBB0_153
# %bb.152:                              #   in Loop: Header=BB0_151 Depth=5
	ld.w	$s8, $s5, 0
	mul.d	$s8, $s8, $a5
	add.d	$s8, $t2, $s8
	ld.w	$ra, $s8, 44
	beqz	$ra, .LBB0_143
.LBB0_153:                              #   in Loop: Header=BB0_151 Depth=5
	blez	$s6, .LBB0_150
# %bb.154:                              #   in Loop: Header=BB0_151 Depth=5
	ld.w	$s8, $s7, 0
	mul.d	$s8, $s8, $a5
	add.d	$s8, $t2, $s8
	ld.w	$ra, $s8, 44
	bnez	$ra, .LBB0_150
# %bb.155:                              # %.critedge692
                                        #   in Loop: Header=BB0_146 Depth=4
	ld.w	$a7, $a7, 0
	mul.d	$a7, $a7, $a5
	add.d	$a7, $t2, $a7
	ld.w	$s4, $a7, 16
	ld.w	$a7, $a7, 12
	ld.w	$s5, $s8, 16
	sub.d	$a7, $s4, $a7
	add.d	$a7, $a7, $s5
	st.w	$a7, $s8, 16
	b	.LBB0_144
.LBB0_156:                              # %.preheader707
	ld.d	$a1, $a2, 0
	ld.d	$a0, $a0, 0
	pcalau12i	$a2, %got_pc_hi20(edgeList)
	ld.d	$a2, $a2, %got_pc_lo12(edgeList)
	move	$a6, $zero
	ori	$a3, $zero, 1
	ori	$a4, $zero, 2
	ori	$a5, $zero, 56
	ori	$a7, $zero, 52
	b	.LBB0_158
	.p2align	4, , 16
.LBB0_157:                              # %._crit_edge887
                                        #   in Loop: Header=BB0_158 Depth=1
	andi	$t0, $a6, 1
	ori	$a6, $zero, 1
	bnez	$t0, .LBB0_241
.LBB0_158:                              # %.preheader706
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_162 Depth 2
                                        #       Child Loop BB0_166 Depth 3
                                        #         Child Loop BB0_170 Depth 4
                                        #         Child Loop BB0_186 Depth 4
                                        #     Child Loop BB0_204 Depth 2
                                        #       Child Loop BB0_208 Depth 3
                                        #         Child Loop BB0_212 Depth 4
                                        #         Child Loop BB0_228 Depth 4
	ld.d	$t0, $sp, 48                    # 8-byte Folded Reload
	ld.w	$t3, $t0, 0
	blez	$t3, .LBB0_200
# %bb.159:                              # %.lr.ph873.preheader
                                        #   in Loop: Header=BB0_158 Depth=1
	ori	$t1, $zero, 1
	b	.LBB0_162
	.p2align	4, , 16
.LBB0_160:                              # %._crit_edge870.loopexit
                                        #   in Loop: Header=BB0_162 Depth=2
	ld.d	$t1, $sp, 48                    # 8-byte Folded Reload
	ld.w	$t3, $t1, 0
.LBB0_161:                              # %._crit_edge870
                                        #   in Loop: Header=BB0_162 Depth=2
	addi.d	$t1, $t0, 1
	bge	$t0, $t3, .LBB0_199
.LBB0_162:                              # %.lr.ph873
                                        #   Parent Loop BB0_158 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_166 Depth 3
                                        #         Child Loop BB0_170 Depth 4
                                        #         Child Loop BB0_186 Depth 4
	move	$t0, $t1
	slli.d	$t1, $t1, 3
	ldx.d	$t1, $a1, $t1
	beqz	$t1, .LBB0_161
# %bb.163:                              # %.lr.ph869
                                        #   in Loop: Header=BB0_162 Depth=2
	ld.d	$t2, $s2, 0
	ld.d	$t3, $a2, 0
	ld.d	$t4, $s3, 0
	b	.LBB0_166
.LBB0_164:                              #   in Loop: Header=BB0_166 Depth=3
	st.w	$fp, $t5, 4
	st.w	$a3, $t5, 12
	.p2align	4, , 16
.LBB0_165:                              # %.loopexit704
                                        #   in Loop: Header=BB0_166 Depth=3
	ld.d	$t1, $t1, 24
	beqz	$t1, .LBB0_160
.LBB0_166:                              #   Parent Loop BB0_158 Depth=1
                                        #     Parent Loop BB0_162 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_170 Depth 4
                                        #         Child Loop BB0_186 Depth 4
	ld.w	$t5, $t1, 0
	beq	$t5, $a3, .LBB0_165
# %bb.167:                              #   in Loop: Header=BB0_166 Depth=3
	ld.d	$t5, $t1, 8
	ld.w	$t6, $t5, 0
	blt	$t6, $a4, .LBB0_165
# %bb.168:                              #   in Loop: Header=BB0_166 Depth=3
	ld.w	$t7, $t5, 4
	mul.d	$t7, $t7, $a5
	add.d	$t7, $t2, $t7
	ld.w	$t8, $t7, 44
	bne	$t8, $a3, .LBB0_184
# %bb.169:                              # %.lr.ph864.preheader
                                        #   in Loop: Header=BB0_166 Depth=3
	ld.w	$t8, $t7, 32
	ld.w	$s0, $t7, 4
	ld.w	$s4, $t7, 0
	slli.d	$t7, $t8, 5
	alsl.d	$t7, $t8, $t7, 3
	add.d	$t8, $t3, $t7
	ld.w	$t7, $t8, 4
	ld.w	$fp, $t8, 8
	mul.d	$t8, $s0, $a7
	add.d	$s0, $t4, $t8
	ld.w	$s1, $s0, 4
	mul.d	$t8, $s4, $a7
	add.d	$t8, $t4, $t8
	ld.w	$t8, $t8, 4
	addi.d	$s4, $t6, 1
	bstrpick.d	$s5, $s4, 31, 0
	addi.d	$s4, $t5, 8
	addi.d	$s5, $s5, -2
	.p2align	4, , 16
.LBB0_170:                              # %.lr.ph864
                                        #   Parent Loop BB0_158 Depth=1
                                        #     Parent Loop BB0_162 Depth=2
                                        #       Parent Loop BB0_166 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.w	$s6, $s4, 0
	mul.d	$s6, $s6, $a5
	add.d	$s7, $t2, $s6
	ld.w	$s6, $s7, 44
	beqz	$s6, .LBB0_172
# %bb.171:                              #   in Loop: Header=BB0_170 Depth=4
	addi.d	$s5, $s5, -1
	addi.d	$s4, $s4, 4
	bnez	$s5, .LBB0_170
	b	.LBB0_184
.LBB0_172:                              #   in Loop: Header=BB0_166 Depth=3
	ld.w	$s4, $s7, 4
	mul.d	$s4, $s4, $a7
	add.d	$s5, $t4, $s4
	ld.w	$s6, $s5, 4
	ld.w	$s4, $s7, 0
	bge	$s6, $s1, .LBB0_177
# %bb.173:                              #   in Loop: Header=BB0_166 Depth=3
	ld.w	$s1, $s0, 28
	bge	$s1, $fp, .LBB0_175
# %bb.174:                              #   in Loop: Header=BB0_166 Depth=3
	ld.w	$s1, $s0, 12
	beqz	$s1, .LBB0_182
.LBB0_175:                              #   in Loop: Header=BB0_166 Depth=3
	bge	$s6, $fp, .LBB0_177
# %bb.176:                              #   in Loop: Header=BB0_166 Depth=3
	st.w	$fp, $s5, 4
.LBB0_177:                              #   in Loop: Header=BB0_166 Depth=3
	mul.d	$fp, $s4, $a7
	add.d	$fp, $t4, $fp
	ld.w	$s0, $fp, 4
	bge	$t8, $s0, .LBB0_184
.LBB0_178:                              #   in Loop: Header=BB0_166 Depth=3
	ld.w	$t8, $t5, 4
	mul.d	$t8, $t8, $a5
	ldx.w	$t8, $t2, $t8
	mul.d	$t8, $t8, $a7
	add.d	$t8, $t4, $t8
	ld.w	$s1, $t8, 24
	bge	$t7, $s1, .LBB0_180
# %bb.179:                              #   in Loop: Header=BB0_166 Depth=3
	ld.w	$s1, $t8, 12
	beqz	$s1, .LBB0_183
.LBB0_180:                              #   in Loop: Header=BB0_166 Depth=3
	bge	$t7, $s0, .LBB0_184
# %bb.181:                              #   in Loop: Header=BB0_166 Depth=3
	st.w	$t7, $fp, 4
	b	.LBB0_184
.LBB0_182:                              #   in Loop: Header=BB0_166 Depth=3
	st.w	$s6, $s0, 4
	st.w	$a3, $s0, 12
	mul.d	$fp, $s4, $a7
	add.d	$fp, $t4, $fp
	ld.w	$s0, $fp, 4
	blt	$t8, $s0, .LBB0_178
	b	.LBB0_184
.LBB0_183:                              #   in Loop: Header=BB0_166 Depth=3
	st.w	$s0, $t8, 4
	st.w	$a3, $t8, 12
	.p2align	4, , 16
.LBB0_184:                              # %.loopexit705
                                        #   in Loop: Header=BB0_166 Depth=3
	slli.d	$t7, $t6, 2
	ldx.w	$t7, $t5, $t7
	mul.d	$t7, $t7, $a5
	add.d	$t7, $t2, $t7
	ld.w	$t8, $t7, 44
	bne	$t8, $a3, .LBB0_165
# %bb.185:                              #   in Loop: Header=BB0_166 Depth=3
	ld.w	$t8, $t7, 36
	ld.w	$s0, $t7, 4
	ld.w	$s4, $t7, 0
	slli.d	$t7, $t8, 5
	alsl.d	$t7, $t8, $t7, 3
	add.d	$t8, $t3, $t7
	ld.w	$t7, $t8, 4
	ld.w	$fp, $t8, 8
	mul.d	$t8, $s0, $a7
	add.d	$s0, $t4, $t8
	ld.w	$s1, $s0, 4
	mul.d	$t8, $s4, $a7
	add.d	$t8, $t4, $t8
	ld.w	$t8, $t8, 4
	alsl.d	$t5, $t6, $t5, 2
	addi.d	$t6, $t6, 1
	addi.d	$s4, $t5, -4
	.p2align	4, , 16
.LBB0_186:                              #   Parent Loop BB0_158 Depth=1
                                        #     Parent Loop BB0_162 Depth=2
                                        #       Parent Loop BB0_166 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	addi.w	$t6, $t6, -1
	blt	$t6, $a4, .LBB0_165
# %bb.187:                              #   in Loop: Header=BB0_186 Depth=4
	ld.w	$s5, $s4, 0
	mul.d	$s5, $s5, $a5
	add.d	$s6, $t2, $s5
	ld.w	$s5, $s6, 44
	addi.d	$s4, $s4, -4
	bnez	$s5, .LBB0_186
# %bb.188:                              #   in Loop: Header=BB0_166 Depth=3
	ld.w	$t6, $s6, 4
	mul.d	$t6, $t6, $a7
	add.d	$s4, $t4, $t6
	ld.w	$s5, $s4, 4
	ld.w	$t6, $s6, 0
	bge	$s5, $s1, .LBB0_193
# %bb.189:                              #   in Loop: Header=BB0_166 Depth=3
	ld.w	$s1, $s0, 28
	bge	$s1, $fp, .LBB0_191
# %bb.190:                              #   in Loop: Header=BB0_166 Depth=3
	ld.w	$s1, $s0, 12
	beqz	$s1, .LBB0_198
.LBB0_191:                              #   in Loop: Header=BB0_166 Depth=3
	bge	$s5, $fp, .LBB0_193
# %bb.192:                              #   in Loop: Header=BB0_166 Depth=3
	st.w	$fp, $s4, 4
.LBB0_193:                              #   in Loop: Header=BB0_166 Depth=3
	mul.d	$t6, $t6, $a7
	add.d	$t6, $t4, $t6
	ld.w	$fp, $t6, 4
	bge	$t8, $fp, .LBB0_165
.LBB0_194:                              #   in Loop: Header=BB0_166 Depth=3
	ld.w	$t5, $t5, 0
	mul.d	$t5, $t5, $a5
	ldx.w	$t5, $t2, $t5
	mul.d	$t5, $t5, $a7
	add.d	$t5, $t4, $t5
	ld.w	$t8, $t5, 24
	bge	$t7, $t8, .LBB0_196
# %bb.195:                              #   in Loop: Header=BB0_166 Depth=3
	ld.w	$t8, $t5, 12
	beqz	$t8, .LBB0_164
.LBB0_196:                              #   in Loop: Header=BB0_166 Depth=3
	bge	$t7, $fp, .LBB0_165
# %bb.197:                              #   in Loop: Header=BB0_166 Depth=3
	st.w	$t7, $t6, 4
	b	.LBB0_165
.LBB0_198:                              #   in Loop: Header=BB0_166 Depth=3
	st.w	$s5, $s0, 4
	st.w	$a3, $s0, 12
	mul.d	$t6, $t6, $a7
	add.d	$t6, $t4, $t6
	ld.w	$fp, $t6, 4
	bge	$t8, $fp, .LBB0_165
	b	.LBB0_194
	.p2align	4, , 16
.LBB0_199:                              # %.preheader.loopexit
                                        #   in Loop: Header=BB0_158 Depth=1
	ld.d	$t0, $sp, 40                    # 8-byte Folded Reload
	ld.w	$t2, $t0, 0
.LBB0_200:                              # %.preheader
                                        #   in Loop: Header=BB0_158 Depth=1
	blez	$t2, .LBB0_157
# %bb.201:                              # %.lr.ph886.preheader
                                        #   in Loop: Header=BB0_158 Depth=1
	ori	$t1, $zero, 1
	b	.LBB0_204
	.p2align	4, , 16
.LBB0_202:                              # %._crit_edge883.loopexit
                                        #   in Loop: Header=BB0_204 Depth=2
	ld.d	$t1, $sp, 40                    # 8-byte Folded Reload
	ld.w	$t2, $t1, 0
.LBB0_203:                              # %._crit_edge883
                                        #   in Loop: Header=BB0_204 Depth=2
	addi.d	$t1, $t0, 1
	bge	$t0, $t2, .LBB0_157
.LBB0_204:                              # %.lr.ph886
                                        #   Parent Loop BB0_158 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_208 Depth 3
                                        #         Child Loop BB0_212 Depth 4
                                        #         Child Loop BB0_228 Depth 4
	move	$t0, $t1
	slli.d	$t1, $t1, 3
	ldx.d	$t1, $a0, $t1
	beqz	$t1, .LBB0_203
# %bb.205:                              # %.lr.ph882
                                        #   in Loop: Header=BB0_204 Depth=2
	ld.d	$t2, $s2, 0
	ld.d	$t3, $a2, 0
	ld.d	$t4, $s3, 0
	b	.LBB0_208
.LBB0_206:                              #   in Loop: Header=BB0_208 Depth=3
	st.w	$fp, $t7, 0
	st.w	$a3, $t7, 8
	.p2align	4, , 16
.LBB0_207:                              # %.loopexit
                                        #   in Loop: Header=BB0_208 Depth=3
	ld.d	$t1, $t1, 24
	beqz	$t1, .LBB0_202
.LBB0_208:                              #   Parent Loop BB0_158 Depth=1
                                        #     Parent Loop BB0_204 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_212 Depth 4
                                        #         Child Loop BB0_228 Depth 4
	ld.w	$t5, $t1, 0
	beq	$t5, $a3, .LBB0_207
# %bb.209:                              #   in Loop: Header=BB0_208 Depth=3
	ld.d	$t6, $t1, 8
	ld.w	$t5, $t6, 0
	blt	$t5, $a4, .LBB0_207
# %bb.210:                              #   in Loop: Header=BB0_208 Depth=3
	ld.w	$t7, $t6, 4
	mul.d	$t7, $t7, $a5
	add.d	$t7, $t2, $t7
	ld.w	$t8, $t7, 44
	bne	$t8, $a3, .LBB0_226
# %bb.211:                              # %.lr.ph877.preheader
                                        #   in Loop: Header=BB0_208 Depth=3
	ld.w	$t8, $t7, 32
	ld.w	$s0, $t7, 4
	ld.w	$s4, $t7, 0
	slli.d	$t7, $t8, 5
	alsl.d	$t7, $t8, $t7, 3
	add.d	$t8, $t3, $t7
	ld.w	$t7, $t8, 4
	ld.w	$fp, $t8, 8
	mul.d	$t8, $s0, $a7
	add.d	$s0, $t4, $t8
	ldx.w	$s1, $t4, $t8
	mul.d	$t8, $s4, $a7
	ldx.w	$t8, $t4, $t8
	addi.d	$s4, $t5, 1
	bstrpick.d	$s5, $s4, 31, 0
	addi.d	$s4, $t6, 8
	addi.d	$s5, $s5, -2
	.p2align	4, , 16
.LBB0_212:                              # %.lr.ph877
                                        #   Parent Loop BB0_158 Depth=1
                                        #     Parent Loop BB0_204 Depth=2
                                        #       Parent Loop BB0_208 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.w	$s6, $s4, 0
	mul.d	$s6, $s6, $a5
	add.d	$s7, $t2, $s6
	ld.w	$s6, $s7, 44
	beqz	$s6, .LBB0_214
# %bb.213:                              #   in Loop: Header=BB0_212 Depth=4
	addi.d	$s5, $s5, -1
	addi.d	$s4, $s4, 4
	bnez	$s5, .LBB0_212
	b	.LBB0_226
.LBB0_214:                              #   in Loop: Header=BB0_208 Depth=3
	ld.w	$s4, $s7, 4
	mul.d	$s5, $s4, $a7
	ldx.w	$s6, $t4, $s5
	ld.w	$s4, $s7, 0
	bge	$s6, $s1, .LBB0_219
# %bb.215:                              #   in Loop: Header=BB0_208 Depth=3
	ld.w	$s1, $s0, 20
	bge	$s1, $fp, .LBB0_217
# %bb.216:                              #   in Loop: Header=BB0_208 Depth=3
	ld.w	$s1, $s0, 8
	beqz	$s1, .LBB0_224
.LBB0_217:                              #   in Loop: Header=BB0_208 Depth=3
	bge	$s6, $fp, .LBB0_219
# %bb.218:                              #   in Loop: Header=BB0_208 Depth=3
	add.d	$s0, $t4, $s5
	st.w	$fp, $s0, 0
.LBB0_219:                              #   in Loop: Header=BB0_208 Depth=3
	mul.d	$fp, $s4, $a7
	ldx.w	$s0, $t4, $fp
	bge	$t8, $s0, .LBB0_226
.LBB0_220:                              #   in Loop: Header=BB0_208 Depth=3
	ld.w	$t8, $t6, 4
	mul.d	$t8, $t8, $a5
	ldx.w	$t8, $t2, $t8
	mul.d	$t8, $t8, $a7
	add.d	$t8, $t4, $t8
	ld.w	$s1, $t8, 16
	bge	$t7, $s1, .LBB0_222
# %bb.221:                              #   in Loop: Header=BB0_208 Depth=3
	ld.w	$s1, $t8, 8
	beqz	$s1, .LBB0_225
.LBB0_222:                              #   in Loop: Header=BB0_208 Depth=3
	bge	$t7, $s0, .LBB0_226
# %bb.223:                              #   in Loop: Header=BB0_208 Depth=3
	add.d	$t8, $t4, $fp
	st.w	$t7, $t8, 0
	b	.LBB0_226
.LBB0_224:                              #   in Loop: Header=BB0_208 Depth=3
	st.w	$s6, $s0, 0
	st.w	$a3, $s0, 8
	mul.d	$fp, $s4, $a7
	ldx.w	$s0, $t4, $fp
	blt	$t8, $s0, .LBB0_220
	b	.LBB0_226
.LBB0_225:                              #   in Loop: Header=BB0_208 Depth=3
	st.w	$s0, $t8, 0
	st.w	$a3, $t8, 8
	.p2align	4, , 16
.LBB0_226:                              # %.loopexit703
                                        #   in Loop: Header=BB0_208 Depth=3
	slli.d	$t7, $t5, 2
	ldx.w	$t7, $t6, $t7
	mul.d	$t7, $t7, $a5
	add.d	$t8, $t2, $t7
	ld.w	$t7, $t8, 44
	bne	$t7, $a3, .LBB0_207
# %bb.227:                              #   in Loop: Header=BB0_208 Depth=3
	ld.w	$fp, $t8, 36
	alsl.d	$t7, $t5, $t6, 2
	ld.w	$s0, $t8, 4
	ld.w	$t8, $t8, 0
	slli.d	$t6, $fp, 5
	alsl.d	$t6, $fp, $t6, 3
	add.d	$fp, $t3, $t6
	ld.w	$t6, $fp, 4
	ld.w	$fp, $fp, 8
	mul.d	$s0, $s0, $a7
	ldx.w	$s1, $t4, $s0
	mul.d	$t8, $t8, $a7
	ldx.w	$t8, $t4, $t8
	add.d	$s0, $t4, $s0
	addi.d	$t5, $t5, 1
	addi.d	$s4, $t7, -4
	.p2align	4, , 16
.LBB0_228:                              #   Parent Loop BB0_158 Depth=1
                                        #     Parent Loop BB0_204 Depth=2
                                        #       Parent Loop BB0_208 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	addi.w	$t5, $t5, -1
	blt	$t5, $a4, .LBB0_207
# %bb.229:                              #   in Loop: Header=BB0_228 Depth=4
	ld.w	$s5, $s4, 0
	mul.d	$s5, $s5, $a5
	add.d	$s6, $t2, $s5
	ld.w	$s5, $s6, 44
	addi.d	$s4, $s4, -4
	bnez	$s5, .LBB0_228
# %bb.230:                              #   in Loop: Header=BB0_208 Depth=3
	ld.w	$t5, $s6, 4
	mul.d	$s4, $t5, $a7
	ldx.w	$s5, $t4, $s4
	ld.w	$t5, $s6, 0
	bge	$s5, $s1, .LBB0_235
# %bb.231:                              #   in Loop: Header=BB0_208 Depth=3
	ld.w	$s1, $s0, 20
	bge	$s1, $fp, .LBB0_233
# %bb.232:                              #   in Loop: Header=BB0_208 Depth=3
	ld.w	$s1, $s0, 8
	beqz	$s1, .LBB0_240
.LBB0_233:                              #   in Loop: Header=BB0_208 Depth=3
	bge	$s5, $fp, .LBB0_235
# %bb.234:                              #   in Loop: Header=BB0_208 Depth=3
	add.d	$s0, $t4, $s4
	st.w	$fp, $s0, 0
.LBB0_235:                              #   in Loop: Header=BB0_208 Depth=3
	mul.d	$t5, $t5, $a7
	ldx.w	$fp, $t4, $t5
	bge	$t8, $fp, .LBB0_207
.LBB0_236:                              #   in Loop: Header=BB0_208 Depth=3
	ld.w	$t7, $t7, 0
	mul.d	$t7, $t7, $a5
	ldx.w	$t7, $t2, $t7
	mul.d	$t7, $t7, $a7
	add.d	$t7, $t4, $t7
	ld.w	$t8, $t7, 16
	bge	$t6, $t8, .LBB0_238
# %bb.237:                              #   in Loop: Header=BB0_208 Depth=3
	ld.w	$t8, $t7, 8
	beqz	$t8, .LBB0_206
.LBB0_238:                              #   in Loop: Header=BB0_208 Depth=3
	bge	$t6, $fp, .LBB0_207
# %bb.239:                              #   in Loop: Header=BB0_208 Depth=3
	add.d	$t5, $t4, $t5
	st.w	$t6, $t5, 0
	b	.LBB0_207
.LBB0_240:                              #   in Loop: Header=BB0_208 Depth=3
	st.w	$s5, $s0, 0
	st.w	$a3, $s0, 8
	mul.d	$t5, $t5, $a7
	ldx.w	$fp, $t4, $t5
	bge	$t8, $fp, .LBB0_207
	b	.LBB0_236
.LBB0_241:
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
	.size	reduceg, .Lfunc_end0-reduceg
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
