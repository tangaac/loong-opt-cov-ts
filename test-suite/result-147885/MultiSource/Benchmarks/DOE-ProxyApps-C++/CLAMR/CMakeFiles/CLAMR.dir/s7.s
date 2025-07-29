	.file	"s7.c"
	.text
	.globl	S7_Sort                         # -- Begin function S7_Sort
	.p2align	5
	.type	S7_Sort,@function
S7_Sort:                                # @S7_Sort
# %bb.0:
	addi.d	$a2, $a2, -4
	ori	$a3, $zero, 10
	bltu	$a3, $a2, .LBB0_67
# %bb.1:
	slli.d	$a2, $a2, 2
	pcalau12i	$a3, %pc_hi20(.LJTI0_0)
	addi.d	$a3, $a3, %pc_lo12(.LJTI0_0)
	ldx.w	$a2, $a3, $a2
	bstrpick.d	$a4, $a1, 31, 31
	add.w	$a4, $a1, $a4
	add.d	$a3, $a3, $a2
	srai.d	$a2, $a4, 1
	jr	$a3
.LBB0_2:                                # %.preheader288
	ori	$a3, $zero, 1
	b	.LBB0_5
	.p2align	4, , 16
.LBB0_3:                                #   in Loop: Header=BB0_5 Depth=1
	move	$a7, $a5
.LBB0_4:                                # %._crit_edge270
                                        #   in Loop: Header=BB0_5 Depth=1
	addi.w	$a5, $a7, 0
	slli.d	$a5, $a5, 2
	stx.w	$a4, $a0, $a5
.LBB0_5:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_10 Depth 2
	addi.w	$a4, $a2, 0
	blt	$a4, $a3, .LBB0_7
# %bb.6:                                #   in Loop: Header=BB0_5 Depth=1
	addi.w	$a2, $a2, -1
	slli.d	$a4, $a2, 2
	ldx.w	$a4, $a0, $a4
	slli.d	$t0, $a2, 1
	addi.w	$a6, $t0, 1
	move	$a7, $a2
	bge	$a6, $a1, .LBB0_4
	b	.LBB0_9
	.p2align	4, , 16
.LBB0_7:                                #   in Loop: Header=BB0_5 Depth=1
	addi.w	$a1, $a1, -1
	beqz	$a1, .LBB0_66
# %bb.8:                                #   in Loop: Header=BB0_5 Depth=1
	slli.d	$a5, $a1, 2
	ld.w	$a6, $a0, 0
	ldx.w	$a4, $a0, $a5
	stx.w	$a6, $a0, $a5
	slli.d	$t0, $a2, 1
	addi.w	$a6, $t0, 1
	move	$a7, $a2
	bge	$a6, $a1, .LBB0_4
.LBB0_9:                                # %.lr.ph269.preheader
                                        #   in Loop: Header=BB0_5 Depth=1
	move	$a5, $a2
	.p2align	4, , 16
.LBB0_10:                               # %.lr.ph269
                                        #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.w	$a7, $t0, 2
	bge	$a7, $a1, .LBB0_12
# %bb.11:                               #   in Loop: Header=BB0_10 Depth=2
	slli.d	$t0, $a7, 2
	ldx.w	$t0, $a0, $t0
	slli.d	$t1, $a6, 2
	ldx.w	$t1, $a0, $t1
	slt	$t0, $t1, $t0
	masknez	$a6, $a6, $t0
	maskeqz	$a7, $a7, $t0
	or	$a7, $a7, $a6
	slli.d	$a6, $a7, 2
	ldx.w	$t1, $a0, $a6
	blt	$a4, $t1, .LBB0_13
	b	.LBB0_3
	.p2align	4, , 16
.LBB0_12:                               #   in Loop: Header=BB0_10 Depth=2
	move	$a7, $a6
	slli.d	$a6, $a7, 2
	ldx.w	$t1, $a0, $a6
	bge	$a4, $t1, .LBB0_3
.LBB0_13:                               #   in Loop: Header=BB0_10 Depth=2
	addi.w	$a5, $a5, 0
	slli.d	$a5, $a5, 2
	slli.d	$t0, $a7, 1
	addi.w	$a6, $t0, 1
	stx.w	$t1, $a0, $a5
	move	$a5, $a7
	blt	$a6, $a1, .LBB0_10
	b	.LBB0_4
.LBB0_14:                               # %.preheader292
	ori	$a3, $zero, 1
	b	.LBB0_17
	.p2align	4, , 16
.LBB0_15:                               #   in Loop: Header=BB0_17 Depth=1
	move	$a6, $a5
.LBB0_16:                               # %._crit_edge237
                                        #   in Loop: Header=BB0_17 Depth=1
	addi.w	$a4, $a6, 0
	slli.d	$a4, $a4, 2
	fstx.s	$fa0, $a0, $a4
.LBB0_17:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_22 Depth 2
	addi.w	$a4, $a2, 0
	blt	$a4, $a3, .LBB0_19
# %bb.18:                               #   in Loop: Header=BB0_17 Depth=1
	addi.w	$a2, $a2, -1
	slli.d	$a4, $a2, 2
	fldx.s	$fa0, $a0, $a4
	slli.d	$a7, $a2, 1
	addi.w	$a4, $a7, 1
	move	$a6, $a2
	bge	$a4, $a1, .LBB0_16
	b	.LBB0_21
	.p2align	4, , 16
.LBB0_19:                               #   in Loop: Header=BB0_17 Depth=1
	addi.w	$a1, $a1, -1
	beqz	$a1, .LBB0_66
# %bb.20:                               #   in Loop: Header=BB0_17 Depth=1
	slli.d	$a4, $a1, 2
	fld.s	$fa1, $a0, 0
	fldx.s	$fa0, $a0, $a4
	fstx.s	$fa1, $a0, $a4
	slli.d	$a7, $a2, 1
	addi.w	$a4, $a7, 1
	move	$a6, $a2
	bge	$a4, $a1, .LBB0_16
.LBB0_21:                               # %.lr.ph236.preheader
                                        #   in Loop: Header=BB0_17 Depth=1
	move	$a5, $a2
	.p2align	4, , 16
.LBB0_22:                               # %.lr.ph236
                                        #   Parent Loop BB0_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.w	$a7, $a7, 2
	bge	$a7, $a1, .LBB0_25
# %bb.23:                               #   in Loop: Header=BB0_22 Depth=2
	slli.d	$a6, $a7, 2
	fldx.s	$fa1, $a0, $a6
	slli.d	$a6, $a4, 2
	fldx.s	$fa2, $a0, $a6
	fcmp.cule.s	$fcc0, $fa1, $fa2
	move	$a6, $a4
	bcnez	$fcc0, .LBB0_26
# %bb.24:                               #   in Loop: Header=BB0_22 Depth=2
	move	$a4, $a7
	move	$a6, $a7
	b	.LBB0_26
	.p2align	4, , 16
.LBB0_25:                               # %.lr.ph236._crit_edge
                                        #   in Loop: Header=BB0_22 Depth=2
	move	$a6, $a4
.LBB0_26:                               #   in Loop: Header=BB0_22 Depth=2
	slli.d	$a4, $a4, 2
	fldx.s	$fa1, $a0, $a4
	fcmp.cule.s	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB0_15
# %bb.27:                               #   in Loop: Header=BB0_22 Depth=2
	addi.w	$a4, $a5, 0
	slli.d	$a5, $a4, 2
	slli.d	$a7, $a6, 1
	addi.w	$a4, $a7, 1
	fstx.s	$fa1, $a0, $a5
	move	$a5, $a6
	blt	$a4, $a1, .LBB0_22
	b	.LBB0_16
.LBB0_28:                               # %.preheader294
	ori	$a3, $zero, 1
	b	.LBB0_31
	.p2align	4, , 16
.LBB0_29:                               #   in Loop: Header=BB0_31 Depth=1
	move	$a6, $a5
.LBB0_30:                               # %._crit_edge
                                        #   in Loop: Header=BB0_31 Depth=1
	addi.w	$a4, $a6, 0
	slli.d	$a4, $a4, 3
	fstx.d	$fa0, $a0, $a4
.LBB0_31:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_36 Depth 2
	addi.w	$a4, $a2, 0
	blt	$a4, $a3, .LBB0_33
# %bb.32:                               #   in Loop: Header=BB0_31 Depth=1
	addi.w	$a2, $a2, -1
	slli.d	$a4, $a2, 3
	fldx.d	$fa0, $a0, $a4
	slli.d	$a7, $a2, 1
	addi.w	$a4, $a7, 1
	move	$a6, $a2
	bge	$a4, $a1, .LBB0_30
	b	.LBB0_35
	.p2align	4, , 16
.LBB0_33:                               #   in Loop: Header=BB0_31 Depth=1
	addi.w	$a1, $a1, -1
	beqz	$a1, .LBB0_66
# %bb.34:                               #   in Loop: Header=BB0_31 Depth=1
	slli.d	$a4, $a1, 3
	fld.d	$fa1, $a0, 0
	fldx.d	$fa0, $a0, $a4
	fstx.d	$fa1, $a0, $a4
	slli.d	$a7, $a2, 1
	addi.w	$a4, $a7, 1
	move	$a6, $a2
	bge	$a4, $a1, .LBB0_30
.LBB0_35:                               # %.lr.ph.preheader
                                        #   in Loop: Header=BB0_31 Depth=1
	move	$a5, $a2
	.p2align	4, , 16
.LBB0_36:                               # %.lr.ph
                                        #   Parent Loop BB0_31 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.w	$a7, $a7, 2
	bge	$a7, $a1, .LBB0_39
# %bb.37:                               #   in Loop: Header=BB0_36 Depth=2
	slli.d	$a6, $a7, 3
	fldx.d	$fa1, $a0, $a6
	slli.d	$a6, $a4, 3
	fldx.d	$fa2, $a0, $a6
	fcmp.cule.d	$fcc0, $fa1, $fa2
	move	$a6, $a4
	bcnez	$fcc0, .LBB0_40
# %bb.38:                               #   in Loop: Header=BB0_36 Depth=2
	move	$a4, $a7
	move	$a6, $a7
	b	.LBB0_40
	.p2align	4, , 16
.LBB0_39:                               # %.lr.ph._crit_edge
                                        #   in Loop: Header=BB0_36 Depth=2
	move	$a6, $a4
.LBB0_40:                               #   in Loop: Header=BB0_36 Depth=2
	slli.d	$a4, $a4, 3
	fldx.d	$fa1, $a0, $a4
	fcmp.cule.d	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB0_29
# %bb.41:                               #   in Loop: Header=BB0_36 Depth=2
	addi.w	$a4, $a5, 0
	slli.d	$a5, $a4, 3
	slli.d	$a7, $a6, 1
	addi.w	$a4, $a7, 1
	fstx.d	$fa1, $a0, $a5
	move	$a5, $a6
	blt	$a4, $a1, .LBB0_36
	b	.LBB0_30
.LBB0_42:                               # %.preheader290
	ori	$a3, $zero, 1
	b	.LBB0_45
	.p2align	4, , 16
.LBB0_43:                               #   in Loop: Header=BB0_45 Depth=1
	move	$a7, $a5
.LBB0_44:                               # %._crit_edge248
                                        #   in Loop: Header=BB0_45 Depth=1
	addi.w	$a5, $a7, 0
	slli.d	$a5, $a5, 3
	stx.d	$a4, $a0, $a5
.LBB0_45:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_50 Depth 2
	addi.w	$a4, $a2, 0
	blt	$a4, $a3, .LBB0_47
# %bb.46:                               #   in Loop: Header=BB0_45 Depth=1
	addi.w	$a2, $a2, -1
	slli.d	$a4, $a2, 3
	ldx.d	$a4, $a0, $a4
	slli.d	$t0, $a2, 1
	addi.w	$a6, $t0, 1
	move	$a7, $a2
	bge	$a6, $a1, .LBB0_44
	b	.LBB0_49
	.p2align	4, , 16
.LBB0_47:                               #   in Loop: Header=BB0_45 Depth=1
	addi.w	$a1, $a1, -1
	beqz	$a1, .LBB0_66
# %bb.48:                               #   in Loop: Header=BB0_45 Depth=1
	slli.d	$a5, $a1, 3
	ld.d	$a6, $a0, 0
	ldx.d	$a4, $a0, $a5
	stx.d	$a6, $a0, $a5
	slli.d	$t0, $a2, 1
	addi.w	$a6, $t0, 1
	move	$a7, $a2
	bge	$a6, $a1, .LBB0_44
.LBB0_49:                               # %.lr.ph247.preheader
                                        #   in Loop: Header=BB0_45 Depth=1
	move	$a5, $a2
	.p2align	4, , 16
.LBB0_50:                               # %.lr.ph247
                                        #   Parent Loop BB0_45 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.w	$a7, $t0, 2
	bge	$a7, $a1, .LBB0_52
# %bb.51:                               #   in Loop: Header=BB0_50 Depth=2
	slli.d	$t0, $a7, 3
	ldx.d	$t0, $a0, $t0
	slli.d	$t1, $a6, 3
	ldx.d	$t1, $a0, $t1
	slt	$t0, $t1, $t0
	masknez	$a6, $a6, $t0
	maskeqz	$a7, $a7, $t0
	or	$a7, $a7, $a6
	slli.d	$a6, $a7, 3
	ldx.d	$t1, $a0, $a6
	blt	$a4, $t1, .LBB0_53
	b	.LBB0_43
	.p2align	4, , 16
.LBB0_52:                               #   in Loop: Header=BB0_50 Depth=2
	move	$a7, $a6
	slli.d	$a6, $a7, 3
	ldx.d	$t1, $a0, $a6
	bge	$a4, $t1, .LBB0_43
.LBB0_53:                               #   in Loop: Header=BB0_50 Depth=2
	addi.w	$a5, $a5, 0
	slli.d	$a5, $a5, 3
	slli.d	$t0, $a7, 1
	addi.w	$a6, $t0, 1
	stx.d	$t1, $a0, $a5
	move	$a5, $a7
	blt	$a6, $a1, .LBB0_50
	b	.LBB0_44
.LBB0_54:                               # %.preheader.preheader
	ori	$a3, $zero, 1
	b	.LBB0_57
	.p2align	4, , 16
.LBB0_55:                               #   in Loop: Header=BB0_57 Depth=1
	move	$a7, $a5
.LBB0_56:                               # %._crit_edge259
                                        #   in Loop: Header=BB0_57 Depth=1
	addi.w	$a5, $a7, 0
	slli.d	$a5, $a5, 3
	stx.d	$a4, $a0, $a5
.LBB0_57:                               # %.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_62 Depth 2
	addi.w	$a4, $a2, 0
	blt	$a4, $a3, .LBB0_59
# %bb.58:                               #   in Loop: Header=BB0_57 Depth=1
	addi.w	$a2, $a2, -1
	slli.d	$a4, $a2, 3
	ldx.d	$a4, $a0, $a4
	slli.d	$t0, $a2, 1
	addi.w	$a6, $t0, 1
	move	$a7, $a2
	bge	$a6, $a1, .LBB0_56
	b	.LBB0_61
	.p2align	4, , 16
.LBB0_59:                               #   in Loop: Header=BB0_57 Depth=1
	addi.w	$a1, $a1, -1
	beqz	$a1, .LBB0_66
# %bb.60:                               #   in Loop: Header=BB0_57 Depth=1
	slli.d	$a5, $a1, 3
	ld.d	$a6, $a0, 0
	ldx.d	$a4, $a0, $a5
	stx.d	$a6, $a0, $a5
	slli.d	$t0, $a2, 1
	addi.w	$a6, $t0, 1
	move	$a7, $a2
	bge	$a6, $a1, .LBB0_56
.LBB0_61:                               # %.lr.ph258.preheader
                                        #   in Loop: Header=BB0_57 Depth=1
	move	$a5, $a2
	.p2align	4, , 16
.LBB0_62:                               # %.lr.ph258
                                        #   Parent Loop BB0_57 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.w	$a7, $t0, 2
	bge	$a7, $a1, .LBB0_64
# %bb.63:                               #   in Loop: Header=BB0_62 Depth=2
	slli.d	$t0, $a7, 3
	ldx.d	$t0, $a0, $t0
	slli.d	$t1, $a6, 3
	ldx.d	$t1, $a0, $t1
	slt	$t0, $t1, $t0
	masknez	$a6, $a6, $t0
	maskeqz	$a7, $a7, $t0
	or	$a7, $a7, $a6
	slli.d	$a6, $a7, 3
	ldx.d	$t1, $a0, $a6
	blt	$a4, $t1, .LBB0_65
	b	.LBB0_55
	.p2align	4, , 16
.LBB0_64:                               #   in Loop: Header=BB0_62 Depth=2
	move	$a7, $a6
	slli.d	$a6, $a7, 3
	ldx.d	$t1, $a0, $a6
	bge	$a4, $t1, .LBB0_55
.LBB0_65:                               #   in Loop: Header=BB0_62 Depth=2
	addi.w	$a5, $a5, 0
	slli.d	$a5, $a5, 3
	slli.d	$t0, $a7, 1
	addi.w	$a6, $t0, 1
	stx.d	$t1, $a0, $a5
	move	$a5, $a7
	blt	$a6, $a1, .LBB0_62
	b	.LBB0_56
.LBB0_66:                               # %.loopexit
	ret
.LBB0_67:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.Lstr.1)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.1)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end0:
	.size	S7_Sort, .Lfunc_end0-S7_Sort
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI0_0:
	.word	.LBB0_2-.LJTI0_0
	.word	.LBB0_54-.LJTI0_0
	.word	.LBB0_42-.LJTI0_0
	.word	.LBB0_14-.LJTI0_0
	.word	.LBB0_28-.LJTI0_0
	.word	.LBB0_67-.LJTI0_0
	.word	.LBB0_67-.LJTI0_0
	.word	.LBB0_2-.LJTI0_0
	.word	.LBB0_42-.LJTI0_0
	.word	.LBB0_14-.LJTI0_0
	.word	.LBB0_28-.LJTI0_0
                                        # -- End function
	.text
	.globl	S7_Sort_2Arrays                 # -- Begin function S7_Sort_2Arrays
	.p2align	5
	.type	S7_Sort_2Arrays,@function
S7_Sort_2Arrays:                        # @S7_Sort_2Arrays
# %bb.0:
	addi.d	$a3, $a3, -4
	ori	$a4, $zero, 10
	bltu	$a4, $a3, .LBB1_67
# %bb.1:
	slli.d	$a3, $a3, 2
	pcalau12i	$a4, %pc_hi20(.LJTI1_0)
	addi.d	$a4, $a4, %pc_lo12(.LJTI1_0)
	ldx.w	$a3, $a4, $a3
	bstrpick.d	$a5, $a2, 31, 31
	add.w	$a5, $a2, $a5
	add.d	$a4, $a4, $a3
	srai.d	$a3, $a5, 1
	jr	$a4
.LBB1_2:                                # %.preheader368
	ori	$a4, $zero, 1
	b	.LBB1_5
	.p2align	4, , 16
.LBB1_3:                                #   in Loop: Header=BB1_5 Depth=1
	move	$t0, $a7
.LBB1_4:                                # %._crit_edge350
                                        #   in Loop: Header=BB1_5 Depth=1
	addi.w	$a7, $t0, 0
	slli.d	$a7, $a7, 2
	stx.w	$a5, $a0, $a7
	stx.w	$a6, $a1, $a7
.LBB1_5:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_10 Depth 2
	addi.w	$a5, $a3, 0
	blt	$a5, $a4, .LBB1_7
# %bb.6:                                #   in Loop: Header=BB1_5 Depth=1
	addi.w	$a3, $a3, -1
	slli.d	$a6, $a3, 2
	ldx.w	$a5, $a0, $a6
	ldx.w	$a6, $a1, $a6
	slli.d	$t2, $a3, 1
	addi.w	$t1, $t2, 1
	move	$t0, $a3
	bge	$t1, $a2, .LBB1_4
	b	.LBB1_9
	.p2align	4, , 16
.LBB1_7:                                #   in Loop: Header=BB1_5 Depth=1
	addi.w	$a2, $a2, -1
	beqz	$a2, .LBB1_66
# %bb.8:                                #   in Loop: Header=BB1_5 Depth=1
	ld.w	$a7, $a0, 0
	slli.d	$t0, $a2, 2
	ldx.w	$a5, $a0, $t0
	ldx.w	$a6, $a1, $t0
	stx.w	$a7, $a0, $t0
	ld.w	$a7, $a1, 0
	stx.w	$a7, $a1, $t0
	slli.d	$t2, $a3, 1
	addi.w	$t1, $t2, 1
	move	$t0, $a3
	bge	$t1, $a2, .LBB1_4
.LBB1_9:                                # %.lr.ph349.preheader
                                        #   in Loop: Header=BB1_5 Depth=1
	move	$a7, $a3
	.p2align	4, , 16
.LBB1_10:                               # %.lr.ph349
                                        #   Parent Loop BB1_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.w	$t0, $t2, 2
	bge	$t0, $a2, .LBB1_12
# %bb.11:                               #   in Loop: Header=BB1_10 Depth=2
	slli.d	$t2, $t0, 2
	ldx.w	$t2, $a0, $t2
	slli.d	$t3, $t1, 2
	ldx.w	$t3, $a0, $t3
	slt	$t2, $t3, $t2
	masknez	$t1, $t1, $t2
	maskeqz	$t0, $t0, $t2
	or	$t0, $t0, $t1
	slli.d	$t1, $t0, 2
	ldx.w	$t2, $a0, $t1
	blt	$a5, $t2, .LBB1_13
	b	.LBB1_3
	.p2align	4, , 16
.LBB1_12:                               #   in Loop: Header=BB1_10 Depth=2
	move	$t0, $t1
	slli.d	$t1, $t0, 2
	ldx.w	$t2, $a0, $t1
	bge	$a5, $t2, .LBB1_3
.LBB1_13:                               #   in Loop: Header=BB1_10 Depth=2
	addi.w	$a7, $a7, 0
	slli.d	$a7, $a7, 2
	stx.w	$t2, $a0, $a7
	ldx.w	$t3, $a1, $t1
	slli.d	$t2, $t0, 1
	addi.w	$t1, $t2, 1
	stx.w	$t3, $a1, $a7
	move	$a7, $t0
	blt	$t1, $a2, .LBB1_10
	b	.LBB1_4
.LBB1_14:                               # %.preheader372
	ori	$a4, $zero, 1
	b	.LBB1_17
	.p2align	4, , 16
.LBB1_15:                               #   in Loop: Header=BB1_17 Depth=1
	move	$a7, $a6
.LBB1_16:                               # %._crit_edge317
                                        #   in Loop: Header=BB1_17 Depth=1
	addi.w	$a5, $a7, 0
	slli.d	$a5, $a5, 2
	fstx.s	$fa0, $a0, $a5
	fstx.s	$fa1, $a1, $a5
.LBB1_17:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_22 Depth 2
	addi.w	$a5, $a3, 0
	blt	$a5, $a4, .LBB1_19
# %bb.18:                               #   in Loop: Header=BB1_17 Depth=1
	addi.w	$a3, $a3, -1
	slli.d	$a5, $a3, 2
	fldx.s	$fa0, $a0, $a5
	fldx.s	$fa1, $a1, $a5
	slli.d	$t0, $a3, 1
	addi.w	$a5, $t0, 1
	move	$a7, $a3
	bge	$a5, $a2, .LBB1_16
	b	.LBB1_21
	.p2align	4, , 16
.LBB1_19:                               #   in Loop: Header=BB1_17 Depth=1
	addi.w	$a2, $a2, -1
	beqz	$a2, .LBB1_66
# %bb.20:                               #   in Loop: Header=BB1_17 Depth=1
	fld.s	$fa2, $a0, 0
	slli.d	$a5, $a2, 2
	fldx.s	$fa0, $a0, $a5
	fldx.s	$fa1, $a1, $a5
	fstx.s	$fa2, $a0, $a5
	fld.s	$fa2, $a1, 0
	fstx.s	$fa2, $a1, $a5
	slli.d	$t0, $a3, 1
	addi.w	$a5, $t0, 1
	move	$a7, $a3
	bge	$a5, $a2, .LBB1_16
.LBB1_21:                               # %.lr.ph316.preheader
                                        #   in Loop: Header=BB1_17 Depth=1
	move	$a6, $a3
	.p2align	4, , 16
.LBB1_22:                               # %.lr.ph316
                                        #   Parent Loop BB1_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.w	$t0, $t0, 2
	bge	$t0, $a2, .LBB1_25
# %bb.23:                               #   in Loop: Header=BB1_22 Depth=2
	slli.d	$a7, $t0, 2
	fldx.s	$fa2, $a0, $a7
	slli.d	$a7, $a5, 2
	fldx.s	$fa3, $a0, $a7
	fcmp.cule.s	$fcc0, $fa2, $fa3
	move	$a7, $a5
	bcnez	$fcc0, .LBB1_26
# %bb.24:                               #   in Loop: Header=BB1_22 Depth=2
	move	$a5, $t0
	move	$a7, $t0
	b	.LBB1_26
	.p2align	4, , 16
.LBB1_25:                               # %.lr.ph316._crit_edge
                                        #   in Loop: Header=BB1_22 Depth=2
	move	$a7, $a5
.LBB1_26:                               #   in Loop: Header=BB1_22 Depth=2
	slli.d	$a5, $a5, 2
	fldx.s	$fa2, $a0, $a5
	fcmp.cule.s	$fcc0, $fa2, $fa0
	bcnez	$fcc0, .LBB1_15
# %bb.27:                               #   in Loop: Header=BB1_22 Depth=2
	addi.w	$a6, $a6, 0
	slli.d	$a6, $a6, 2
	fstx.s	$fa2, $a0, $a6
	fldx.s	$fa2, $a1, $a5
	slli.d	$t0, $a7, 1
	addi.w	$a5, $t0, 1
	fstx.s	$fa2, $a1, $a6
	move	$a6, $a7
	blt	$a5, $a2, .LBB1_22
	b	.LBB1_16
.LBB1_28:                               # %.preheader374
	ori	$a4, $zero, 1
	b	.LBB1_31
	.p2align	4, , 16
.LBB1_29:                               #   in Loop: Header=BB1_31 Depth=1
	move	$a7, $a6
.LBB1_30:                               # %._crit_edge
                                        #   in Loop: Header=BB1_31 Depth=1
	addi.w	$a5, $a7, 0
	slli.d	$a5, $a5, 3
	fstx.d	$fa0, $a0, $a5
	fstx.d	$fa1, $a1, $a5
.LBB1_31:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_36 Depth 2
	addi.w	$a5, $a3, 0
	blt	$a5, $a4, .LBB1_33
# %bb.32:                               #   in Loop: Header=BB1_31 Depth=1
	addi.w	$a3, $a3, -1
	slli.d	$a5, $a3, 3
	fldx.d	$fa0, $a0, $a5
	fldx.d	$fa1, $a1, $a5
	slli.d	$t0, $a3, 1
	addi.w	$a5, $t0, 1
	move	$a7, $a3
	bge	$a5, $a2, .LBB1_30
	b	.LBB1_35
	.p2align	4, , 16
.LBB1_33:                               #   in Loop: Header=BB1_31 Depth=1
	addi.w	$a2, $a2, -1
	beqz	$a2, .LBB1_66
# %bb.34:                               #   in Loop: Header=BB1_31 Depth=1
	fld.d	$fa2, $a0, 0
	slli.d	$a5, $a2, 3
	fldx.d	$fa0, $a0, $a5
	fldx.d	$fa1, $a1, $a5
	fstx.d	$fa2, $a0, $a5
	fld.d	$fa2, $a1, 0
	fstx.d	$fa2, $a1, $a5
	slli.d	$t0, $a3, 1
	addi.w	$a5, $t0, 1
	move	$a7, $a3
	bge	$a5, $a2, .LBB1_30
.LBB1_35:                               # %.lr.ph.preheader
                                        #   in Loop: Header=BB1_31 Depth=1
	move	$a6, $a3
	.p2align	4, , 16
.LBB1_36:                               # %.lr.ph
                                        #   Parent Loop BB1_31 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.w	$t0, $t0, 2
	bge	$t0, $a2, .LBB1_39
# %bb.37:                               #   in Loop: Header=BB1_36 Depth=2
	slli.d	$a7, $t0, 3
	fldx.d	$fa2, $a0, $a7
	slli.d	$a7, $a5, 3
	fldx.d	$fa3, $a0, $a7
	fcmp.cule.d	$fcc0, $fa2, $fa3
	move	$a7, $a5
	bcnez	$fcc0, .LBB1_40
# %bb.38:                               #   in Loop: Header=BB1_36 Depth=2
	move	$a5, $t0
	move	$a7, $t0
	b	.LBB1_40
	.p2align	4, , 16
.LBB1_39:                               # %.lr.ph._crit_edge
                                        #   in Loop: Header=BB1_36 Depth=2
	move	$a7, $a5
.LBB1_40:                               #   in Loop: Header=BB1_36 Depth=2
	slli.d	$a5, $a5, 3
	fldx.d	$fa2, $a0, $a5
	fcmp.cule.d	$fcc0, $fa2, $fa0
	bcnez	$fcc0, .LBB1_29
# %bb.41:                               #   in Loop: Header=BB1_36 Depth=2
	addi.w	$a6, $a6, 0
	slli.d	$a6, $a6, 3
	fstx.d	$fa2, $a0, $a6
	fldx.d	$fa2, $a1, $a5
	slli.d	$t0, $a7, 1
	addi.w	$a5, $t0, 1
	fstx.d	$fa2, $a1, $a6
	move	$a6, $a7
	blt	$a5, $a2, .LBB1_36
	b	.LBB1_30
.LBB1_42:                               # %.preheader370
	ori	$a4, $zero, 1
	b	.LBB1_45
	.p2align	4, , 16
.LBB1_43:                               #   in Loop: Header=BB1_45 Depth=1
	move	$t0, $a7
.LBB1_44:                               # %._crit_edge328
                                        #   in Loop: Header=BB1_45 Depth=1
	addi.w	$a7, $t0, 0
	slli.d	$a7, $a7, 3
	stx.d	$a5, $a0, $a7
	stx.d	$a6, $a1, $a7
.LBB1_45:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_50 Depth 2
	addi.w	$a5, $a3, 0
	blt	$a5, $a4, .LBB1_47
# %bb.46:                               #   in Loop: Header=BB1_45 Depth=1
	addi.w	$a3, $a3, -1
	slli.d	$a6, $a3, 3
	ldx.d	$a5, $a0, $a6
	ldx.d	$a6, $a1, $a6
	slli.d	$t2, $a3, 1
	addi.w	$t1, $t2, 1
	move	$t0, $a3
	bge	$t1, $a2, .LBB1_44
	b	.LBB1_49
	.p2align	4, , 16
.LBB1_47:                               #   in Loop: Header=BB1_45 Depth=1
	addi.w	$a2, $a2, -1
	beqz	$a2, .LBB1_66
# %bb.48:                               #   in Loop: Header=BB1_45 Depth=1
	ld.d	$a7, $a0, 0
	slli.d	$t0, $a2, 3
	ldx.d	$a5, $a0, $t0
	ldx.d	$a6, $a1, $t0
	stx.d	$a7, $a0, $t0
	ld.d	$a7, $a1, 0
	stx.d	$a7, $a1, $t0
	slli.d	$t2, $a3, 1
	addi.w	$t1, $t2, 1
	move	$t0, $a3
	bge	$t1, $a2, .LBB1_44
.LBB1_49:                               # %.lr.ph327.preheader
                                        #   in Loop: Header=BB1_45 Depth=1
	move	$a7, $a3
	.p2align	4, , 16
.LBB1_50:                               # %.lr.ph327
                                        #   Parent Loop BB1_45 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.w	$t0, $t2, 2
	bge	$t0, $a2, .LBB1_52
# %bb.51:                               #   in Loop: Header=BB1_50 Depth=2
	slli.d	$t2, $t0, 3
	ldx.d	$t2, $a0, $t2
	slli.d	$t3, $t1, 3
	ldx.d	$t3, $a0, $t3
	slt	$t2, $t3, $t2
	masknez	$t1, $t1, $t2
	maskeqz	$t0, $t0, $t2
	or	$t0, $t0, $t1
	slli.d	$t1, $t0, 3
	ldx.d	$t2, $a0, $t1
	blt	$a5, $t2, .LBB1_53
	b	.LBB1_43
	.p2align	4, , 16
.LBB1_52:                               #   in Loop: Header=BB1_50 Depth=2
	move	$t0, $t1
	slli.d	$t1, $t0, 3
	ldx.d	$t2, $a0, $t1
	bge	$a5, $t2, .LBB1_43
.LBB1_53:                               #   in Loop: Header=BB1_50 Depth=2
	addi.w	$a7, $a7, 0
	slli.d	$a7, $a7, 3
	stx.d	$t2, $a0, $a7
	ldx.d	$t3, $a1, $t1
	slli.d	$t2, $t0, 1
	addi.w	$t1, $t2, 1
	stx.d	$t3, $a1, $a7
	move	$a7, $t0
	blt	$t1, $a2, .LBB1_50
	b	.LBB1_44
.LBB1_54:                               # %.preheader.preheader
	ori	$a4, $zero, 1
	b	.LBB1_57
	.p2align	4, , 16
.LBB1_55:                               #   in Loop: Header=BB1_57 Depth=1
	move	$t0, $a7
.LBB1_56:                               # %._crit_edge339
                                        #   in Loop: Header=BB1_57 Depth=1
	addi.w	$a7, $t0, 0
	slli.d	$a7, $a7, 3
	stx.d	$a5, $a0, $a7
	stx.d	$a6, $a1, $a7
.LBB1_57:                               # %.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_62 Depth 2
	addi.w	$a5, $a3, 0
	blt	$a5, $a4, .LBB1_59
# %bb.58:                               #   in Loop: Header=BB1_57 Depth=1
	addi.w	$a3, $a3, -1
	slli.d	$a6, $a3, 3
	ldx.d	$a5, $a0, $a6
	ldx.d	$a6, $a1, $a6
	slli.d	$t2, $a3, 1
	addi.w	$t1, $t2, 1
	move	$t0, $a3
	bge	$t1, $a2, .LBB1_56
	b	.LBB1_61
	.p2align	4, , 16
.LBB1_59:                               #   in Loop: Header=BB1_57 Depth=1
	addi.w	$a2, $a2, -1
	beqz	$a2, .LBB1_66
# %bb.60:                               #   in Loop: Header=BB1_57 Depth=1
	ld.d	$a7, $a0, 0
	slli.d	$t0, $a2, 3
	ldx.d	$a5, $a0, $t0
	ldx.d	$a6, $a1, $t0
	stx.d	$a7, $a0, $t0
	ld.d	$a7, $a1, 0
	stx.d	$a7, $a1, $t0
	slli.d	$t2, $a3, 1
	addi.w	$t1, $t2, 1
	move	$t0, $a3
	bge	$t1, $a2, .LBB1_56
.LBB1_61:                               # %.lr.ph338.preheader
                                        #   in Loop: Header=BB1_57 Depth=1
	move	$a7, $a3
	.p2align	4, , 16
.LBB1_62:                               # %.lr.ph338
                                        #   Parent Loop BB1_57 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.w	$t0, $t2, 2
	bge	$t0, $a2, .LBB1_64
# %bb.63:                               #   in Loop: Header=BB1_62 Depth=2
	slli.d	$t2, $t0, 3
	ldx.d	$t2, $a0, $t2
	slli.d	$t3, $t1, 3
	ldx.d	$t3, $a0, $t3
	slt	$t2, $t3, $t2
	masknez	$t1, $t1, $t2
	maskeqz	$t0, $t0, $t2
	or	$t0, $t0, $t1
	slli.d	$t1, $t0, 3
	ldx.d	$t2, $a0, $t1
	blt	$a5, $t2, .LBB1_65
	b	.LBB1_55
	.p2align	4, , 16
.LBB1_64:                               #   in Loop: Header=BB1_62 Depth=2
	move	$t0, $t1
	slli.d	$t1, $t0, 3
	ldx.d	$t2, $a0, $t1
	bge	$a5, $t2, .LBB1_55
.LBB1_65:                               #   in Loop: Header=BB1_62 Depth=2
	addi.w	$a7, $a7, 0
	slli.d	$a7, $a7, 3
	stx.d	$t2, $a0, $a7
	ldx.d	$t3, $a1, $t1
	slli.d	$t2, $t0, 1
	addi.w	$t1, $t2, 1
	stx.d	$t3, $a1, $a7
	move	$a7, $t0
	blt	$t1, $a2, .LBB1_62
	b	.LBB1_56
.LBB1_66:                               # %.loopexit
	ret
.LBB1_67:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.Lstr.1)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.1)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end1:
	.size	S7_Sort_2Arrays, .Lfunc_end1-S7_Sort_2Arrays
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI1_0:
	.word	.LBB1_2-.LJTI1_0
	.word	.LBB1_54-.LJTI1_0
	.word	.LBB1_42-.LJTI1_0
	.word	.LBB1_14-.LJTI1_0
	.word	.LBB1_28-.LJTI1_0
	.word	.LBB1_67-.LJTI1_0
	.word	.LBB1_67-.LJTI1_0
	.word	.LBB1_2-.LJTI1_0
	.word	.LBB1_42-.LJTI1_0
	.word	.LBB1_14-.LJTI1_0
	.word	.LBB1_28-.LJTI1_0
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function S7_Index_Sort
.LCPI2_0:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.text
	.globl	S7_Index_Sort
	.p2align	5
	.type	S7_Index_Sort,@function
S7_Index_Sort:                          # @S7_Index_Sort
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	ori	$a4, $zero, 1
	blt	$a1, $a4, .LBB2_8
# %bb.1:                                # %.lr.ph.preheader
	ori	$a4, $zero, 8
	bgeu	$a1, $a4, .LBB2_3
# %bb.2:
	move	$a4, $zero
	b	.LBB2_6
.LBB2_3:                                # %vector.ph
	pcalau12i	$a4, %pc_hi20(.LCPI2_0)
	vld	$vr0, $a4, %pc_lo12(.LCPI2_0)
	bstrpick.d	$a4, $a1, 30, 3
	slli.d	$a4, $a4, 3
	addi.d	$a5, $a3, 16
	move	$a6, $a4
	.p2align	4, , 16
.LBB2_4:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vaddi.wu	$vr1, $vr0, 4
	vst	$vr0, $a5, -16
	vst	$vr1, $a5, 0
	vaddi.wu	$vr0, $vr0, 8
	addi.d	$a6, $a6, -8
	addi.d	$a5, $a5, 32
	bnez	$a6, .LBB2_4
# %bb.5:                                # %middle.block
	beq	$a4, $a1, .LBB2_8
.LBB2_6:                                # %.lr.ph.preheader343
	alsl.d	$a5, $a4, $a3, 2
	sub.d	$a6, $a1, $a4
	.p2align	4, , 16
.LBB2_7:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	st.w	$a4, $a5, 0
	addi.d	$a4, $a4, 1
	addi.d	$a6, $a6, -1
	addi.d	$a5, $a5, 4
	bnez	$a6, .LBB2_7
.LBB2_8:                                # %._crit_edge
	addi.d	$a2, $a2, -4
	ori	$a4, $zero, 10
	bltu	$a4, $a2, .LBB2_78
# %bb.9:                                # %._crit_edge
	slli.d	$a2, $a2, 2
	pcalau12i	$a4, %pc_hi20(.LJTI2_0)
	addi.d	$a4, $a4, %pc_lo12(.LJTI2_0)
	ldx.w	$a2, $a4, $a2
	bstrpick.d	$a5, $a1, 31, 31
	add.w	$a5, $a1, $a5
	add.d	$a4, $a4, $a2
	srai.d	$a2, $a5, 1
	jr	$a4
.LBB2_10:                               # %.preheader335
	ori	$a4, $zero, 1
	b	.LBB2_13
	.p2align	4, , 16
.LBB2_11:                               #   in Loop: Header=BB2_13 Depth=1
	move	$t1, $a7
.LBB2_12:                               # %._crit_edge317
                                        #   in Loop: Header=BB2_13 Depth=1
	addi.w	$a6, $t1, 0
	slli.d	$a6, $a6, 2
	stx.w	$a5, $a3, $a6
.LBB2_13:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_18 Depth 2
	addi.w	$a5, $a2, 0
	blt	$a5, $a4, .LBB2_15
# %bb.14:                               #   in Loop: Header=BB2_13 Depth=1
	addi.w	$a2, $a2, -1
	slli.d	$a5, $a2, 2
	ldx.w	$a5, $a3, $a5
	slli.d	$a6, $a5, 2
	ldx.w	$a6, $a0, $a6
	slli.d	$t2, $a2, 1
	addi.w	$t0, $t2, 1
	move	$t1, $a2
	bge	$t0, $a1, .LBB2_12
	b	.LBB2_17
	.p2align	4, , 16
.LBB2_15:                               #   in Loop: Header=BB2_13 Depth=1
	addi.w	$a1, $a1, -1
	beqz	$a1, .LBB2_77
# %bb.16:                               #   in Loop: Header=BB2_13 Depth=1
	slli.d	$a7, $a1, 2
	ldx.w	$a5, $a3, $a7
	slli.d	$a6, $a5, 2
	ld.w	$t0, $a3, 0
	ldx.w	$a6, $a0, $a6
	stx.w	$t0, $a3, $a7
	slli.d	$t2, $a2, 1
	addi.w	$t0, $t2, 1
	move	$t1, $a2
	bge	$t0, $a1, .LBB2_12
.LBB2_17:                               # %.lr.ph316.preheader
                                        #   in Loop: Header=BB2_13 Depth=1
	move	$a7, $a2
	.p2align	4, , 16
.LBB2_18:                               # %.lr.ph316
                                        #   Parent Loop BB2_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.w	$t1, $t2, 2
	bge	$t1, $a1, .LBB2_20
# %bb.19:                               #   in Loop: Header=BB2_18 Depth=2
	slli.d	$t2, $t1, 2
	ldx.w	$t2, $a3, $t2
	slli.d	$t3, $t0, 2
	ldx.w	$t3, $a3, $t3
	slli.d	$t2, $t2, 2
	ldx.w	$t2, $a0, $t2
	slli.d	$t3, $t3, 2
	ldx.w	$t3, $a0, $t3
	slt	$t2, $t3, $t2
	masknez	$t0, $t0, $t2
	maskeqz	$t1, $t1, $t2
	or	$t1, $t1, $t0
	b	.LBB2_21
	.p2align	4, , 16
.LBB2_20:                               #   in Loop: Header=BB2_18 Depth=2
	move	$t1, $t0
.LBB2_21:                               #   in Loop: Header=BB2_18 Depth=2
	slli.d	$t0, $t1, 2
	ldx.w	$t3, $a3, $t0
	slli.d	$t0, $t3, 2
	ldx.w	$t0, $a0, $t0
	bge	$a6, $t0, .LBB2_11
# %bb.22:                               #   in Loop: Header=BB2_18 Depth=2
	addi.w	$a7, $a7, 0
	slli.d	$a7, $a7, 2
	slli.d	$t2, $t1, 1
	addi.w	$t0, $t2, 1
	stx.w	$t3, $a3, $a7
	move	$a7, $t1
	blt	$t0, $a1, .LBB2_18
	b	.LBB2_12
.LBB2_23:                               # %.preheader339
	ori	$a4, $zero, 1
	b	.LBB2_26
	.p2align	4, , 16
.LBB2_24:                               #   in Loop: Header=BB2_26 Depth=1
	move	$t0, $a7
.LBB2_25:                               # %._crit_edge284
                                        #   in Loop: Header=BB2_26 Depth=1
	addi.w	$a6, $t0, 0
	slli.d	$a6, $a6, 2
	stx.w	$a5, $a3, $a6
.LBB2_26:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_31 Depth 2
	addi.w	$a5, $a2, 0
	blt	$a5, $a4, .LBB2_28
# %bb.27:                               #   in Loop: Header=BB2_26 Depth=1
	addi.w	$a2, $a2, -1
	slli.d	$a5, $a2, 2
	ldx.w	$a5, $a3, $a5
	slli.d	$a6, $a5, 2
	fldx.s	$fa0, $a0, $a6
	slli.d	$t1, $a2, 1
	addi.w	$a6, $t1, 1
	move	$t0, $a2
	bge	$a6, $a1, .LBB2_25
	b	.LBB2_30
	.p2align	4, , 16
.LBB2_28:                               #   in Loop: Header=BB2_26 Depth=1
	addi.w	$a1, $a1, -1
	beqz	$a1, .LBB2_77
# %bb.29:                               #   in Loop: Header=BB2_26 Depth=1
	slli.d	$a6, $a1, 2
	ldx.w	$a5, $a3, $a6
	slli.d	$a7, $a5, 2
	ld.w	$t0, $a3, 0
	fldx.s	$fa0, $a0, $a7
	stx.w	$t0, $a3, $a6
	slli.d	$t1, $a2, 1
	addi.w	$a6, $t1, 1
	move	$t0, $a2
	bge	$a6, $a1, .LBB2_25
.LBB2_30:                               # %.lr.ph283.preheader
                                        #   in Loop: Header=BB2_26 Depth=1
	move	$a7, $a2
	.p2align	4, , 16
.LBB2_31:                               # %.lr.ph283
                                        #   Parent Loop BB2_26 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.w	$t1, $t1, 2
	bge	$t1, $a1, .LBB2_34
# %bb.32:                               #   in Loop: Header=BB2_31 Depth=2
	slli.d	$t0, $t1, 2
	ldx.w	$t0, $a3, $t0
	slli.d	$t2, $a6, 2
	ldx.w	$t2, $a3, $t2
	slli.d	$t0, $t0, 2
	fldx.s	$fa1, $a0, $t0
	slli.d	$t0, $t2, 2
	fldx.s	$fa2, $a0, $t0
	fcmp.cule.s	$fcc0, $fa1, $fa2
	move	$t0, $a6
	bcnez	$fcc0, .LBB2_35
# %bb.33:                               #   in Loop: Header=BB2_31 Depth=2
	move	$a6, $t1
	move	$t0, $t1
	b	.LBB2_35
	.p2align	4, , 16
.LBB2_34:                               # %.lr.ph283._crit_edge
                                        #   in Loop: Header=BB2_31 Depth=2
	move	$t0, $a6
.LBB2_35:                               #   in Loop: Header=BB2_31 Depth=2
	slli.d	$a6, $a6, 2
	ldx.w	$t2, $a3, $a6
	slli.d	$a6, $t2, 2
	fldx.s	$fa1, $a0, $a6
	fcmp.cule.s	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB2_24
# %bb.36:                               #   in Loop: Header=BB2_31 Depth=2
	addi.w	$a6, $a7, 0
	slli.d	$a7, $a6, 2
	slli.d	$t1, $t0, 1
	addi.w	$a6, $t1, 1
	stx.w	$t2, $a3, $a7
	move	$a7, $t0
	blt	$a6, $a1, .LBB2_31
	b	.LBB2_25
.LBB2_37:                               # %.preheader341
	ori	$a4, $zero, 1
	b	.LBB2_40
	.p2align	4, , 16
.LBB2_38:                               #   in Loop: Header=BB2_40 Depth=1
	move	$t0, $a7
.LBB2_39:                               # %._crit_edge274
                                        #   in Loop: Header=BB2_40 Depth=1
	addi.w	$a6, $t0, 0
	slli.d	$a6, $a6, 2
	stx.w	$a5, $a3, $a6
.LBB2_40:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_45 Depth 2
	addi.w	$a5, $a2, 0
	blt	$a5, $a4, .LBB2_42
# %bb.41:                               #   in Loop: Header=BB2_40 Depth=1
	addi.w	$a2, $a2, -1
	slli.d	$a5, $a2, 2
	ldx.w	$a5, $a3, $a5
	slli.d	$a6, $a5, 3
	fldx.d	$fa0, $a0, $a6
	slli.d	$t1, $a2, 1
	addi.w	$a6, $t1, 1
	move	$t0, $a2
	bge	$a6, $a1, .LBB2_39
	b	.LBB2_44
	.p2align	4, , 16
.LBB2_42:                               #   in Loop: Header=BB2_40 Depth=1
	addi.w	$a1, $a1, -1
	beqz	$a1, .LBB2_77
# %bb.43:                               #   in Loop: Header=BB2_40 Depth=1
	slli.d	$a6, $a1, 2
	ldx.w	$a5, $a3, $a6
	slli.d	$a7, $a5, 3
	ld.w	$t0, $a3, 0
	fldx.d	$fa0, $a0, $a7
	stx.w	$t0, $a3, $a6
	slli.d	$t1, $a2, 1
	addi.w	$a6, $t1, 1
	move	$t0, $a2
	bge	$a6, $a1, .LBB2_39
.LBB2_44:                               # %.lr.ph273.preheader
                                        #   in Loop: Header=BB2_40 Depth=1
	move	$a7, $a2
	.p2align	4, , 16
.LBB2_45:                               # %.lr.ph273
                                        #   Parent Loop BB2_40 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.w	$t1, $t1, 2
	bge	$t1, $a1, .LBB2_48
# %bb.46:                               #   in Loop: Header=BB2_45 Depth=2
	slli.d	$t0, $t1, 2
	ldx.w	$t0, $a3, $t0
	slli.d	$t2, $a6, 2
	ldx.w	$t2, $a3, $t2
	slli.d	$t0, $t0, 3
	fldx.d	$fa1, $a0, $t0
	slli.d	$t0, $t2, 3
	fldx.d	$fa2, $a0, $t0
	fcmp.cule.d	$fcc0, $fa1, $fa2
	move	$t0, $a6
	bcnez	$fcc0, .LBB2_49
# %bb.47:                               #   in Loop: Header=BB2_45 Depth=2
	move	$a6, $t1
	move	$t0, $t1
	b	.LBB2_49
	.p2align	4, , 16
.LBB2_48:                               # %.lr.ph273._crit_edge
                                        #   in Loop: Header=BB2_45 Depth=2
	move	$t0, $a6
.LBB2_49:                               #   in Loop: Header=BB2_45 Depth=2
	slli.d	$a6, $a6, 2
	ldx.w	$t2, $a3, $a6
	slli.d	$a6, $t2, 3
	fldx.d	$fa1, $a0, $a6
	fcmp.cule.d	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB2_38
# %bb.50:                               #   in Loop: Header=BB2_45 Depth=2
	addi.w	$a6, $a7, 0
	slli.d	$a7, $a6, 2
	slli.d	$t1, $t0, 1
	addi.w	$a6, $t1, 1
	stx.w	$t2, $a3, $a7
	move	$a7, $t0
	blt	$a6, $a1, .LBB2_45
	b	.LBB2_39
.LBB2_51:                               # %.preheader337
	ori	$a4, $zero, 1
	b	.LBB2_54
	.p2align	4, , 16
.LBB2_52:                               #   in Loop: Header=BB2_54 Depth=1
	move	$t1, $a7
.LBB2_53:                               # %._crit_edge295
                                        #   in Loop: Header=BB2_54 Depth=1
	addi.w	$a6, $t1, 0
	slli.d	$a6, $a6, 2
	stx.w	$a5, $a3, $a6
.LBB2_54:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_59 Depth 2
	addi.w	$a5, $a2, 0
	blt	$a5, $a4, .LBB2_56
# %bb.55:                               #   in Loop: Header=BB2_54 Depth=1
	addi.w	$a2, $a2, -1
	slli.d	$a5, $a2, 2
	ldx.w	$a5, $a3, $a5
	slli.d	$a6, $a5, 3
	ldx.d	$a6, $a0, $a6
	slli.d	$t2, $a2, 1
	addi.w	$t0, $t2, 1
	move	$t1, $a2
	bge	$t0, $a1, .LBB2_53
	b	.LBB2_58
	.p2align	4, , 16
.LBB2_56:                               #   in Loop: Header=BB2_54 Depth=1
	addi.w	$a1, $a1, -1
	beqz	$a1, .LBB2_77
# %bb.57:                               #   in Loop: Header=BB2_54 Depth=1
	slli.d	$a7, $a1, 2
	ldx.w	$a5, $a3, $a7
	slli.d	$a6, $a5, 3
	ld.w	$t0, $a3, 0
	ldx.d	$a6, $a0, $a6
	stx.w	$t0, $a3, $a7
	slli.d	$t2, $a2, 1
	addi.w	$t0, $t2, 1
	move	$t1, $a2
	bge	$t0, $a1, .LBB2_53
.LBB2_58:                               # %.lr.ph294.preheader
                                        #   in Loop: Header=BB2_54 Depth=1
	move	$a7, $a2
	.p2align	4, , 16
.LBB2_59:                               # %.lr.ph294
                                        #   Parent Loop BB2_54 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.w	$t1, $t2, 2
	bge	$t1, $a1, .LBB2_61
# %bb.60:                               #   in Loop: Header=BB2_59 Depth=2
	slli.d	$t2, $t1, 2
	ldx.w	$t2, $a3, $t2
	slli.d	$t3, $t0, 2
	ldx.w	$t3, $a3, $t3
	slli.d	$t2, $t2, 3
	ldx.d	$t2, $a0, $t2
	slli.d	$t3, $t3, 3
	ldx.d	$t3, $a0, $t3
	slt	$t2, $t3, $t2
	masknez	$t0, $t0, $t2
	maskeqz	$t1, $t1, $t2
	or	$t1, $t1, $t0
	b	.LBB2_62
	.p2align	4, , 16
.LBB2_61:                               #   in Loop: Header=BB2_59 Depth=2
	move	$t1, $t0
.LBB2_62:                               #   in Loop: Header=BB2_59 Depth=2
	slli.d	$t0, $t1, 2
	ldx.w	$t3, $a3, $t0
	slli.d	$t0, $t3, 3
	ldx.d	$t0, $a0, $t0
	bge	$a6, $t0, .LBB2_52
# %bb.63:                               #   in Loop: Header=BB2_59 Depth=2
	addi.w	$a7, $a7, 0
	slli.d	$a7, $a7, 2
	slli.d	$t2, $t1, 1
	addi.w	$t0, $t2, 1
	stx.w	$t3, $a3, $a7
	move	$a7, $t1
	blt	$t0, $a1, .LBB2_59
	b	.LBB2_53
.LBB2_64:                               # %.preheader.preheader
	ori	$a4, $zero, 1
	b	.LBB2_67
	.p2align	4, , 16
.LBB2_65:                               #   in Loop: Header=BB2_67 Depth=1
	move	$t1, $a7
.LBB2_66:                               # %._crit_edge306
                                        #   in Loop: Header=BB2_67 Depth=1
	addi.w	$a6, $t1, 0
	slli.d	$a6, $a6, 2
	stx.w	$a5, $a3, $a6
.LBB2_67:                               # %.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_72 Depth 2
	addi.w	$a5, $a2, 0
	blt	$a5, $a4, .LBB2_69
# %bb.68:                               #   in Loop: Header=BB2_67 Depth=1
	addi.w	$a2, $a2, -1
	slli.d	$a5, $a2, 2
	ldx.w	$a5, $a3, $a5
	slli.d	$a6, $a5, 3
	ldx.d	$a6, $a0, $a6
	slli.d	$t2, $a2, 1
	addi.w	$t0, $t2, 1
	move	$t1, $a2
	bge	$t0, $a1, .LBB2_66
	b	.LBB2_71
	.p2align	4, , 16
.LBB2_69:                               #   in Loop: Header=BB2_67 Depth=1
	addi.w	$a1, $a1, -1
	beqz	$a1, .LBB2_77
# %bb.70:                               #   in Loop: Header=BB2_67 Depth=1
	slli.d	$a7, $a1, 2
	ldx.w	$a5, $a3, $a7
	slli.d	$a6, $a5, 3
	ld.w	$t0, $a3, 0
	ldx.d	$a6, $a0, $a6
	stx.w	$t0, $a3, $a7
	slli.d	$t2, $a2, 1
	addi.w	$t0, $t2, 1
	move	$t1, $a2
	bge	$t0, $a1, .LBB2_66
.LBB2_71:                               # %.lr.ph305.preheader
                                        #   in Loop: Header=BB2_67 Depth=1
	move	$a7, $a2
	.p2align	4, , 16
.LBB2_72:                               # %.lr.ph305
                                        #   Parent Loop BB2_67 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.w	$t1, $t2, 2
	bge	$t1, $a1, .LBB2_74
# %bb.73:                               #   in Loop: Header=BB2_72 Depth=2
	slli.d	$t2, $t1, 2
	ldx.w	$t2, $a3, $t2
	slli.d	$t3, $t0, 2
	ldx.w	$t3, $a3, $t3
	slli.d	$t2, $t2, 3
	ldx.d	$t2, $a0, $t2
	slli.d	$t3, $t3, 3
	ldx.d	$t3, $a0, $t3
	slt	$t2, $t3, $t2
	masknez	$t0, $t0, $t2
	maskeqz	$t1, $t1, $t2
	or	$t1, $t1, $t0
	b	.LBB2_75
	.p2align	4, , 16
.LBB2_74:                               #   in Loop: Header=BB2_72 Depth=2
	move	$t1, $t0
.LBB2_75:                               #   in Loop: Header=BB2_72 Depth=2
	slli.d	$t0, $t1, 2
	ldx.w	$t3, $a3, $t0
	slli.d	$t0, $t3, 3
	ldx.d	$t0, $a0, $t0
	bge	$a6, $t0, .LBB2_65
# %bb.76:                               #   in Loop: Header=BB2_72 Depth=2
	addi.w	$a7, $a7, 0
	slli.d	$a7, $a7, 2
	slli.d	$t2, $t1, 1
	addi.w	$t0, $t2, 1
	stx.w	$t3, $a3, $a7
	move	$a7, $t1
	blt	$t0, $a1, .LBB2_72
	b	.LBB2_66
.LBB2_77:                               # %.loopexit
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB2_78:
	pcalau12i	$a0, %pc_hi20(.Lstr.2)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.2)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end2:
	.size	S7_Index_Sort, .Lfunc_end2-S7_Index_Sort
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI2_0:
	.word	.LBB2_10-.LJTI2_0
	.word	.LBB2_64-.LJTI2_0
	.word	.LBB2_51-.LJTI2_0
	.word	.LBB2_23-.LJTI2_0
	.word	.LBB2_37-.LJTI2_0
	.word	.LBB2_78-.LJTI2_0
	.word	.LBB2_78-.LJTI2_0
	.word	.LBB2_10-.LJTI2_0
	.word	.LBB2_51-.LJTI2_0
	.word	.LBB2_23-.LJTI2_0
	.word	.LBB2_37-.LJTI2_0
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function S7_Indexi8_Sort
.LCPI3_0:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
	.text
	.globl	S7_Indexi8_Sort
	.p2align	5
	.type	S7_Indexi8_Sort,@function
S7_Indexi8_Sort:                        # @S7_Indexi8_Sort
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	ori	$a4, $zero, 1
	blt	$a1, $a4, .LBB3_8
# %bb.1:                                # %.lr.ph.preheader
	ori	$a4, $zero, 4
	bgeu	$a1, $a4, .LBB3_3
# %bb.2:
	move	$a4, $zero
	b	.LBB3_6
.LBB3_3:                                # %vector.ph
	pcalau12i	$a4, %pc_hi20(.LCPI3_0)
	vld	$vr0, $a4, %pc_lo12(.LCPI3_0)
	bstrpick.d	$a4, $a1, 30, 2
	slli.d	$a4, $a4, 2
	addi.d	$a5, $a3, 16
	move	$a6, $a4
	.p2align	4, , 16
.LBB3_4:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vaddi.du	$vr1, $vr0, 2
	vst	$vr0, $a5, -16
	vst	$vr1, $a5, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a6, $a6, -4
	addi.d	$a5, $a5, 32
	bnez	$a6, .LBB3_4
# %bb.5:                                # %middle.block
	beq	$a4, $a1, .LBB3_8
.LBB3_6:                                # %.lr.ph.preheader343
	alsl.d	$a5, $a4, $a3, 3
	.p2align	4, , 16
.LBB3_7:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	st.d	$a4, $a5, 0
	addi.d	$a4, $a4, 1
	addi.d	$a5, $a5, 8
	bne	$a1, $a4, .LBB3_7
.LBB3_8:                                # %._crit_edge
	addi.d	$a2, $a2, -4
	ori	$a4, $zero, 10
	bltu	$a4, $a2, .LBB3_78
# %bb.9:                                # %._crit_edge
	slli.d	$a2, $a2, 2
	pcalau12i	$a4, %pc_hi20(.LJTI3_0)
	addi.d	$a4, $a4, %pc_lo12(.LJTI3_0)
	ldx.w	$a2, $a4, $a2
	bstrpick.d	$a5, $a1, 31, 31
	add.w	$a5, $a1, $a5
	add.d	$a4, $a4, $a2
	srai.d	$a2, $a5, 1
	jr	$a4
.LBB3_10:                               # %.preheader335
	ori	$a4, $zero, 1
	b	.LBB3_13
	.p2align	4, , 16
.LBB3_11:                               #   in Loop: Header=BB3_13 Depth=1
	move	$t1, $a7
.LBB3_12:                               # %._crit_edge317
                                        #   in Loop: Header=BB3_13 Depth=1
	addi.w	$a6, $t1, 0
	slli.d	$a6, $a6, 3
	stx.d	$a5, $a3, $a6
.LBB3_13:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_18 Depth 2
	addi.w	$a5, $a2, 0
	blt	$a5, $a4, .LBB3_15
# %bb.14:                               #   in Loop: Header=BB3_13 Depth=1
	addi.w	$a2, $a2, -1
	slli.d	$a5, $a2, 3
	ldx.d	$a5, $a3, $a5
	slli.d	$a6, $a5, 2
	ldx.w	$a6, $a0, $a6
	slli.d	$t2, $a2, 1
	addi.w	$t0, $t2, 1
	move	$t1, $a2
	bge	$t0, $a1, .LBB3_12
	b	.LBB3_17
	.p2align	4, , 16
.LBB3_15:                               #   in Loop: Header=BB3_13 Depth=1
	addi.w	$a1, $a1, -1
	beqz	$a1, .LBB3_77
# %bb.16:                               #   in Loop: Header=BB3_13 Depth=1
	slli.d	$a7, $a1, 3
	ldx.d	$a5, $a3, $a7
	slli.d	$a6, $a5, 2
	ld.d	$t0, $a3, 0
	ldx.w	$a6, $a0, $a6
	stx.d	$t0, $a3, $a7
	slli.d	$t2, $a2, 1
	addi.w	$t0, $t2, 1
	move	$t1, $a2
	bge	$t0, $a1, .LBB3_12
.LBB3_17:                               # %.lr.ph316.preheader
                                        #   in Loop: Header=BB3_13 Depth=1
	move	$a7, $a2
	.p2align	4, , 16
.LBB3_18:                               # %.lr.ph316
                                        #   Parent Loop BB3_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.w	$t1, $t2, 2
	bge	$t1, $a1, .LBB3_20
# %bb.19:                               #   in Loop: Header=BB3_18 Depth=2
	slli.d	$t2, $t1, 3
	ldx.d	$t2, $a3, $t2
	slli.d	$t3, $t0, 3
	ldx.d	$t3, $a3, $t3
	slli.d	$t2, $t2, 2
	ldx.w	$t2, $a0, $t2
	slli.d	$t3, $t3, 2
	ldx.w	$t3, $a0, $t3
	slt	$t2, $t3, $t2
	masknez	$t0, $t0, $t2
	maskeqz	$t1, $t1, $t2
	or	$t1, $t1, $t0
	b	.LBB3_21
	.p2align	4, , 16
.LBB3_20:                               #   in Loop: Header=BB3_18 Depth=2
	move	$t1, $t0
.LBB3_21:                               #   in Loop: Header=BB3_18 Depth=2
	slli.d	$t0, $t1, 3
	ldx.d	$t3, $a3, $t0
	slli.d	$t0, $t3, 2
	ldx.w	$t0, $a0, $t0
	bge	$a6, $t0, .LBB3_11
# %bb.22:                               #   in Loop: Header=BB3_18 Depth=2
	addi.w	$a7, $a7, 0
	slli.d	$a7, $a7, 3
	slli.d	$t2, $t1, 1
	addi.w	$t0, $t2, 1
	stx.d	$t3, $a3, $a7
	move	$a7, $t1
	blt	$t0, $a1, .LBB3_18
	b	.LBB3_12
.LBB3_23:                               # %.preheader339
	ori	$a4, $zero, 1
	b	.LBB3_26
	.p2align	4, , 16
.LBB3_24:                               #   in Loop: Header=BB3_26 Depth=1
	move	$t0, $a7
.LBB3_25:                               # %._crit_edge284
                                        #   in Loop: Header=BB3_26 Depth=1
	addi.w	$a6, $t0, 0
	slli.d	$a6, $a6, 3
	stx.d	$a5, $a3, $a6
.LBB3_26:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_31 Depth 2
	addi.w	$a5, $a2, 0
	blt	$a5, $a4, .LBB3_28
# %bb.27:                               #   in Loop: Header=BB3_26 Depth=1
	addi.w	$a2, $a2, -1
	slli.d	$a5, $a2, 3
	ldx.d	$a5, $a3, $a5
	slli.d	$a6, $a5, 2
	fldx.s	$fa0, $a0, $a6
	slli.d	$t1, $a2, 1
	addi.w	$a6, $t1, 1
	move	$t0, $a2
	bge	$a6, $a1, .LBB3_25
	b	.LBB3_30
	.p2align	4, , 16
.LBB3_28:                               #   in Loop: Header=BB3_26 Depth=1
	addi.w	$a1, $a1, -1
	beqz	$a1, .LBB3_77
# %bb.29:                               #   in Loop: Header=BB3_26 Depth=1
	slli.d	$a6, $a1, 3
	ldx.d	$a5, $a3, $a6
	slli.d	$a7, $a5, 2
	ld.d	$t0, $a3, 0
	fldx.s	$fa0, $a0, $a7
	stx.d	$t0, $a3, $a6
	slli.d	$t1, $a2, 1
	addi.w	$a6, $t1, 1
	move	$t0, $a2
	bge	$a6, $a1, .LBB3_25
.LBB3_30:                               # %.lr.ph283.preheader
                                        #   in Loop: Header=BB3_26 Depth=1
	move	$a7, $a2
	.p2align	4, , 16
.LBB3_31:                               # %.lr.ph283
                                        #   Parent Loop BB3_26 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.w	$t1, $t1, 2
	bge	$t1, $a1, .LBB3_34
# %bb.32:                               #   in Loop: Header=BB3_31 Depth=2
	slli.d	$t0, $t1, 3
	ldx.d	$t0, $a3, $t0
	slli.d	$t2, $a6, 3
	ldx.d	$t2, $a3, $t2
	slli.d	$t0, $t0, 2
	fldx.s	$fa1, $a0, $t0
	slli.d	$t0, $t2, 2
	fldx.s	$fa2, $a0, $t0
	fcmp.cule.s	$fcc0, $fa1, $fa2
	move	$t0, $a6
	bcnez	$fcc0, .LBB3_35
# %bb.33:                               #   in Loop: Header=BB3_31 Depth=2
	move	$a6, $t1
	move	$t0, $t1
	b	.LBB3_35
	.p2align	4, , 16
.LBB3_34:                               # %.lr.ph283._crit_edge
                                        #   in Loop: Header=BB3_31 Depth=2
	move	$t0, $a6
.LBB3_35:                               #   in Loop: Header=BB3_31 Depth=2
	slli.d	$a6, $a6, 3
	ldx.d	$t2, $a3, $a6
	slli.d	$a6, $t2, 2
	fldx.s	$fa1, $a0, $a6
	fcmp.cule.s	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB3_24
# %bb.36:                               #   in Loop: Header=BB3_31 Depth=2
	addi.w	$a6, $a7, 0
	slli.d	$a7, $a6, 3
	slli.d	$t1, $t0, 1
	addi.w	$a6, $t1, 1
	stx.d	$t2, $a3, $a7
	move	$a7, $t0
	blt	$a6, $a1, .LBB3_31
	b	.LBB3_25
.LBB3_37:                               # %.preheader341
	ori	$a4, $zero, 1
	b	.LBB3_40
	.p2align	4, , 16
.LBB3_38:                               #   in Loop: Header=BB3_40 Depth=1
	move	$t0, $a7
.LBB3_39:                               # %._crit_edge274
                                        #   in Loop: Header=BB3_40 Depth=1
	addi.w	$a6, $t0, 0
	slli.d	$a6, $a6, 3
	stx.d	$a5, $a3, $a6
.LBB3_40:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_45 Depth 2
	addi.w	$a5, $a2, 0
	blt	$a5, $a4, .LBB3_42
# %bb.41:                               #   in Loop: Header=BB3_40 Depth=1
	addi.w	$a2, $a2, -1
	slli.d	$a5, $a2, 3
	ldx.d	$a5, $a3, $a5
	slli.d	$a6, $a5, 3
	fldx.d	$fa0, $a0, $a6
	slli.d	$t1, $a2, 1
	addi.w	$a6, $t1, 1
	move	$t0, $a2
	bge	$a6, $a1, .LBB3_39
	b	.LBB3_44
	.p2align	4, , 16
.LBB3_42:                               #   in Loop: Header=BB3_40 Depth=1
	addi.w	$a1, $a1, -1
	beqz	$a1, .LBB3_77
# %bb.43:                               #   in Loop: Header=BB3_40 Depth=1
	slli.d	$a6, $a1, 3
	ldx.d	$a5, $a3, $a6
	slli.d	$a7, $a5, 3
	ld.d	$t0, $a3, 0
	fldx.d	$fa0, $a0, $a7
	stx.d	$t0, $a3, $a6
	slli.d	$t1, $a2, 1
	addi.w	$a6, $t1, 1
	move	$t0, $a2
	bge	$a6, $a1, .LBB3_39
.LBB3_44:                               # %.lr.ph273.preheader
                                        #   in Loop: Header=BB3_40 Depth=1
	move	$a7, $a2
	.p2align	4, , 16
.LBB3_45:                               # %.lr.ph273
                                        #   Parent Loop BB3_40 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.w	$t1, $t1, 2
	bge	$t1, $a1, .LBB3_48
# %bb.46:                               #   in Loop: Header=BB3_45 Depth=2
	slli.d	$t0, $t1, 3
	ldx.d	$t0, $a3, $t0
	slli.d	$t2, $a6, 3
	ldx.d	$t2, $a3, $t2
	slli.d	$t0, $t0, 3
	fldx.d	$fa1, $a0, $t0
	slli.d	$t0, $t2, 3
	fldx.d	$fa2, $a0, $t0
	fcmp.cule.d	$fcc0, $fa1, $fa2
	move	$t0, $a6
	bcnez	$fcc0, .LBB3_49
# %bb.47:                               #   in Loop: Header=BB3_45 Depth=2
	move	$a6, $t1
	move	$t0, $t1
	b	.LBB3_49
	.p2align	4, , 16
.LBB3_48:                               # %.lr.ph273._crit_edge
                                        #   in Loop: Header=BB3_45 Depth=2
	move	$t0, $a6
.LBB3_49:                               #   in Loop: Header=BB3_45 Depth=2
	slli.d	$a6, $a6, 3
	ldx.d	$t2, $a3, $a6
	slli.d	$a6, $t2, 3
	fldx.d	$fa1, $a0, $a6
	fcmp.cule.d	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB3_38
# %bb.50:                               #   in Loop: Header=BB3_45 Depth=2
	addi.w	$a6, $a7, 0
	slli.d	$a7, $a6, 3
	slli.d	$t1, $t0, 1
	addi.w	$a6, $t1, 1
	stx.d	$t2, $a3, $a7
	move	$a7, $t0
	blt	$a6, $a1, .LBB3_45
	b	.LBB3_39
.LBB3_51:                               # %.preheader337
	ori	$a4, $zero, 1
	b	.LBB3_54
	.p2align	4, , 16
.LBB3_52:                               #   in Loop: Header=BB3_54 Depth=1
	move	$t1, $a7
.LBB3_53:                               # %._crit_edge295
                                        #   in Loop: Header=BB3_54 Depth=1
	addi.w	$a6, $t1, 0
	slli.d	$a6, $a6, 3
	stx.d	$a5, $a3, $a6
.LBB3_54:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_59 Depth 2
	addi.w	$a5, $a2, 0
	blt	$a5, $a4, .LBB3_56
# %bb.55:                               #   in Loop: Header=BB3_54 Depth=1
	addi.w	$a2, $a2, -1
	slli.d	$a5, $a2, 3
	ldx.d	$a5, $a3, $a5
	slli.d	$a6, $a5, 3
	ldx.d	$a6, $a0, $a6
	slli.d	$t2, $a2, 1
	addi.w	$t0, $t2, 1
	move	$t1, $a2
	bge	$t0, $a1, .LBB3_53
	b	.LBB3_58
	.p2align	4, , 16
.LBB3_56:                               #   in Loop: Header=BB3_54 Depth=1
	addi.w	$a1, $a1, -1
	beqz	$a1, .LBB3_77
# %bb.57:                               #   in Loop: Header=BB3_54 Depth=1
	slli.d	$a7, $a1, 3
	ldx.d	$a5, $a3, $a7
	slli.d	$a6, $a5, 3
	ld.d	$t0, $a3, 0
	ldx.d	$a6, $a0, $a6
	stx.d	$t0, $a3, $a7
	slli.d	$t2, $a2, 1
	addi.w	$t0, $t2, 1
	move	$t1, $a2
	bge	$t0, $a1, .LBB3_53
.LBB3_58:                               # %.lr.ph294.preheader
                                        #   in Loop: Header=BB3_54 Depth=1
	move	$a7, $a2
	.p2align	4, , 16
.LBB3_59:                               # %.lr.ph294
                                        #   Parent Loop BB3_54 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.w	$t1, $t2, 2
	bge	$t1, $a1, .LBB3_61
# %bb.60:                               #   in Loop: Header=BB3_59 Depth=2
	slli.d	$t2, $t1, 3
	ldx.d	$t2, $a3, $t2
	slli.d	$t3, $t0, 3
	ldx.d	$t3, $a3, $t3
	slli.d	$t2, $t2, 3
	ldx.d	$t2, $a0, $t2
	slli.d	$t3, $t3, 3
	ldx.d	$t3, $a0, $t3
	slt	$t2, $t3, $t2
	masknez	$t0, $t0, $t2
	maskeqz	$t1, $t1, $t2
	or	$t1, $t1, $t0
	b	.LBB3_62
	.p2align	4, , 16
.LBB3_61:                               #   in Loop: Header=BB3_59 Depth=2
	move	$t1, $t0
.LBB3_62:                               #   in Loop: Header=BB3_59 Depth=2
	slli.d	$t0, $t1, 3
	ldx.d	$t3, $a3, $t0
	slli.d	$t0, $t3, 3
	ldx.d	$t0, $a0, $t0
	bge	$a6, $t0, .LBB3_52
# %bb.63:                               #   in Loop: Header=BB3_59 Depth=2
	addi.w	$a7, $a7, 0
	slli.d	$a7, $a7, 3
	slli.d	$t2, $t1, 1
	addi.w	$t0, $t2, 1
	stx.d	$t3, $a3, $a7
	move	$a7, $t1
	blt	$t0, $a1, .LBB3_59
	b	.LBB3_53
.LBB3_64:                               # %.preheader.preheader
	ori	$a4, $zero, 1
	b	.LBB3_67
	.p2align	4, , 16
.LBB3_65:                               #   in Loop: Header=BB3_67 Depth=1
	move	$t1, $a7
.LBB3_66:                               # %._crit_edge306
                                        #   in Loop: Header=BB3_67 Depth=1
	addi.w	$a6, $t1, 0
	slli.d	$a6, $a6, 3
	stx.d	$a5, $a3, $a6
.LBB3_67:                               # %.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_72 Depth 2
	addi.w	$a5, $a2, 0
	blt	$a5, $a4, .LBB3_69
# %bb.68:                               #   in Loop: Header=BB3_67 Depth=1
	addi.w	$a2, $a2, -1
	slli.d	$a5, $a2, 3
	ldx.d	$a5, $a3, $a5
	slli.d	$a6, $a5, 3
	ldx.d	$a6, $a0, $a6
	slli.d	$t2, $a2, 1
	addi.w	$t0, $t2, 1
	move	$t1, $a2
	bge	$t0, $a1, .LBB3_66
	b	.LBB3_71
	.p2align	4, , 16
.LBB3_69:                               #   in Loop: Header=BB3_67 Depth=1
	addi.w	$a1, $a1, -1
	beqz	$a1, .LBB3_77
# %bb.70:                               #   in Loop: Header=BB3_67 Depth=1
	slli.d	$a7, $a1, 3
	ldx.d	$a5, $a3, $a7
	slli.d	$a6, $a5, 3
	ld.d	$t0, $a3, 0
	ldx.d	$a6, $a0, $a6
	stx.d	$t0, $a3, $a7
	slli.d	$t2, $a2, 1
	addi.w	$t0, $t2, 1
	move	$t1, $a2
	bge	$t0, $a1, .LBB3_66
.LBB3_71:                               # %.lr.ph305.preheader
                                        #   in Loop: Header=BB3_67 Depth=1
	move	$a7, $a2
	.p2align	4, , 16
.LBB3_72:                               # %.lr.ph305
                                        #   Parent Loop BB3_67 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.w	$t1, $t2, 2
	bge	$t1, $a1, .LBB3_74
# %bb.73:                               #   in Loop: Header=BB3_72 Depth=2
	slli.d	$t2, $t1, 3
	ldx.d	$t2, $a3, $t2
	slli.d	$t3, $t0, 3
	ldx.d	$t3, $a3, $t3
	slli.d	$t2, $t2, 3
	ldx.d	$t2, $a0, $t2
	slli.d	$t3, $t3, 3
	ldx.d	$t3, $a0, $t3
	slt	$t2, $t3, $t2
	masknez	$t0, $t0, $t2
	maskeqz	$t1, $t1, $t2
	or	$t1, $t1, $t0
	b	.LBB3_75
	.p2align	4, , 16
.LBB3_74:                               #   in Loop: Header=BB3_72 Depth=2
	move	$t1, $t0
.LBB3_75:                               #   in Loop: Header=BB3_72 Depth=2
	slli.d	$t0, $t1, 3
	ldx.d	$t3, $a3, $t0
	slli.d	$t0, $t3, 3
	ldx.d	$t0, $a0, $t0
	bge	$a6, $t0, .LBB3_65
# %bb.76:                               #   in Loop: Header=BB3_72 Depth=2
	addi.w	$a7, $a7, 0
	slli.d	$a7, $a7, 3
	slli.d	$t2, $t1, 1
	addi.w	$t0, $t2, 1
	stx.d	$t3, $a3, $a7
	move	$a7, $t1
	blt	$t0, $a1, .LBB3_72
	b	.LBB3_66
.LBB3_77:                               # %.loopexit
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB3_78:
	pcalau12i	$a0, %pc_hi20(.Lstr.3)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.3)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end3:
	.size	S7_Indexi8_Sort, .Lfunc_end3-S7_Indexi8_Sort
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI3_0:
	.word	.LBB3_10-.LJTI3_0
	.word	.LBB3_64-.LJTI3_0
	.word	.LBB3_51-.LJTI3_0
	.word	.LBB3_23-.LJTI3_0
	.word	.LBB3_37-.LJTI3_0
	.word	.LBB3_78-.LJTI3_0
	.word	.LBB3_78-.LJTI3_0
	.word	.LBB3_10-.LJTI3_0
	.word	.LBB3_51-.LJTI3_0
	.word	.LBB3_23-.LJTI3_0
	.word	.LBB3_37-.LJTI3_0
                                        # -- End function
	.type	.Lstr.1,@object                 # @str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lstr.1:
	.asciz	"Error -- S7_Datatype not supported in S7_Sort"
	.size	.Lstr.1, 46

	.type	.Lstr.2,@object                 # @str.2
.Lstr.2:
	.asciz	"Error -- S7_Datatype not supported in S7_Index_Sort"
	.size	.Lstr.2, 52

	.type	.Lstr.3,@object                 # @str.3
.Lstr.3:
	.asciz	"Error -- S7_Datatype not supported in S7_Indexi8_Sort"
	.size	.Lstr.3, 54

	.section	".note.GNU-stack","",@progbits
	.addrsig
