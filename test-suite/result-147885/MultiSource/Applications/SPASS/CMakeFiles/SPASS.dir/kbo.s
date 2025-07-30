	.file	"kbo.c"
	.text
	.globl	kbo_Compare                     # -- Begin function kbo_Compare
	.p2align	5
	.type	kbo_Compare,@function
kbo_Compare:                            # @kbo_Compare
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	move	$s0, $a1
	move	$fp, $a0
	addi.d	$a1, $sp, 12
	addi.d	$a3, $sp, 8
	move	$a2, $s0
	pcaddu18i	$ra, %call36(kbo_CompVarCondAndWeight)
	jirl	$ra, $ra, 0
	ld.w	$a2, $sp, 12
	ld.w	$a1, $sp, 8
	move	$s1, $a0
	beqz	$a2, .LBB0_3
# %bb.1:
	bnez	$a1, .LBB0_3
# %bb.2:
	move	$a0, $fp
	move	$a1, $s0
	move	$a2, $s1
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	pcaddu18i	$t8, %call36(kbo_CompareStruc)
	jr	$t8
.LBB0_3:
	bnez	$a2, .LBB0_6
# %bb.4:
	beqz	$a1, .LBB0_6
.LBB0_5:
	sub.w	$a2, $zero, $s1
	move	$a0, $s0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(kbo_CompareStruc)
	jirl	$ra, $ra, 0
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	pcaddu18i	$t8, %call36(ord_Not)
	jr	$t8
.LBB0_6:
	move	$a0, $zero
	beqz	$a2, .LBB0_9
# %bb.7:
	beqz	$a1, .LBB0_9
# %bb.8:
	move	$a0, $fp
	move	$a1, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(kbo_CompareStruc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_5
.LBB0_9:
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end0:
	.size	kbo_Compare, .Lfunc_end0-kbo_Compare
                                        # -- End function
	.p2align	5                               # -- Begin function kbo_CompVarCondAndWeight
	.type	kbo_CompVarCondAndWeight,@function
kbo_CompVarCondAndWeight:               # @kbo_CompVarCondAndWeight
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
	move	$fp, $a3
	move	$s1, $a2
	move	$s0, $a1
	move	$s2, $a0
	ori	$a0, $zero, 1
	st.w	$a0, $a3, 0
	st.w	$a0, $a1, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(term_MaxVar)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(term_MaxVar)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(stack_POINTER)
	ld.d	$s4, $a1, %got_pc_lo12(stack_POINTER)
	ld.wu	$s5, $s4, 0
	slt	$a1, $a0, $s3
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s3, $a1
	or	$s3, $a1, $a0
	bltz	$s3, .LBB1_2
# %bb.1:                                # %.lr.ph.preheader
	addi.d	$a0, $s3, 1
	bstrpick.d	$a0, $a0, 31, 0
	slli.d	$a2, $a0, 3
	pcalau12i	$a0, %got_pc_hi20(ord_VARCOUNT)
	ld.d	$a0, $a0, %got_pc_lo12(ord_VARCOUNT)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB1_2:                                # %._crit_edge
	ld.w	$a0, $s2, 0
	addi.w	$a3, $a0, -2001
	addi.w	$a1, $zero, -2000
	addi.w	$a2, $s5, 0
	bgeu	$a3, $a1, .LBB1_15
# %bb.3:
	pcalau12i	$a3, %got_pc_hi20(symbol_TYPESTATBITS)
	ld.d	$a5, $a3, %got_pc_lo12(symbol_TYPESTATBITS)
	pcalau12i	$a3, %got_pc_hi20(symbol_SIGNATURE)
	ld.d	$a6, $a3, %got_pc_lo12(symbol_SIGNATURE)
	ld.wu	$a3, $a5, 0
	ld.d	$a4, $a6, 0
	sub.d	$a0, $zero, $a0
	sra.w	$a0, $a0, $a3
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $a4, $a0
	ld.d	$t0, $s2, 16
	ld.w	$a0, $a0, 12
	beqz	$t0, .LBB1_17
# %bb.4:                                # %.lr.ph140
	addi.w	$a3, $s5, 1
	pcalau12i	$a4, %got_pc_hi20(stack_STACK)
	ld.d	$a4, $a4, %got_pc_lo12(stack_STACK)
	ld.w	$a5, $a5, 0
	ld.d	$a6, $a6, 0
	pcalau12i	$a7, %got_pc_hi20(ord_VARCOUNT)
	ld.d	$a7, $a7, %got_pc_lo12(ord_VARCOUNT)
	st.w	$a3, $s4, 0
	slli.d	$t1, $s5, 3
	stx.d	$t0, $a4, $t1
.LBB1_5:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_6 Depth 2
                                        #     Child Loop BB1_12 Depth 2
	move	$t0, $a3
.LBB1_6:                                #   Parent Loop BB1_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$t1, $t0, -1
	bstrpick.d	$t1, $t1, 31, 0
	slli.d	$t2, $t1, 3
	ldx.d	$t1, $a4, $t2
	ld.d	$t3, $t1, 0
	ld.d	$t1, $t1, 8
	stx.d	$t3, $a4, $t2
	ld.w	$t2, $t1, 0
	addi.w	$t3, $t2, -2001
	bgeu	$t3, $a1, .LBB1_9
# %bb.7:                                #   in Loop: Header=BB1_6 Depth=2
	sub.d	$t2, $zero, $t2
	sra.w	$t2, $t2, $a5
	slli.d	$t2, $t2, 3
	ldx.d	$t2, $a6, $t2
	ld.w	$t2, $t2, 12
	ld.d	$t1, $t1, 16
	add.d	$a0, $t2, $a0
	beqz	$t1, .LBB1_10
# %bb.8:                                #   in Loop: Header=BB1_6 Depth=2
	addi.w	$a3, $t0, 1
	st.w	$a3, $s4, 0
	bstrpick.d	$t0, $t0, 31, 0
	slli.d	$t0, $t0, 3
	stx.d	$t1, $a4, $t0
	move	$t0, $a3
	b	.LBB1_10
	.p2align	4, , 16
.LBB1_9:                                #   in Loop: Header=BB1_6 Depth=2
	slli.d	$t1, $t2, 3
	ldx.w	$t2, $a7, $t1
	addi.d	$a0, $a0, 1
	addi.d	$t2, $t2, 1
	stx.w	$t2, $a7, $t1
.LBB1_10:                               #   in Loop: Header=BB1_6 Depth=2
	beq	$t0, $a2, .LBB1_18
# %bb.11:                               # %.lr.ph126.preheader
                                        #   in Loop: Header=BB1_6 Depth=2
	addi.w	$t1, $t0, -1
	bstrpick.d	$t2, $t1, 31, 0
	slli.d	$t2, $t2, 3
	ldx.d	$t2, $a4, $t2
	bnez	$t2, .LBB1_6
	.p2align	4, , 16
.LBB1_12:                               # %.lr.ph
                                        #   Parent Loop BB1_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$a2, $t1, .LBB1_16
# %bb.13:                               # %.lr.ph126
                                        #   in Loop: Header=BB1_12 Depth=2
	addi.w	$t1, $t1, -1
	bstrpick.d	$a3, $t1, 31, 0
	slli.d	$a3, $a3, 3
	ldx.d	$a3, $a4, $a3
	beqz	$a3, .LBB1_12
# %bb.14:                               # %.critedge.loopexit
                                        #   in Loop: Header=BB1_5 Depth=1
	addi.w	$a3, $t1, 1
	st.w	$a3, $s4, 0
	b	.LBB1_5
.LBB1_15:
	pcalau12i	$a3, %got_pc_hi20(ord_VARCOUNT)
	ld.d	$a3, $a3, %got_pc_lo12(ord_VARCOUNT)
	slli.d	$a0, $a0, 3
	ldx.w	$a4, $a3, $a0
	addi.d	$a4, $a4, 1
	stx.w	$a4, $a3, $a0
	ori	$a0, $zero, 1
	b	.LBB1_17
.LBB1_16:                               # %._crit_edge141.loopexit
	st.w	$t1, $s4, 0
.LBB1_17:                               # %._crit_edge141
	move	$a3, $s5
.LBB1_18:                               # %._crit_edge141
	ld.w	$a4, $s1, 0
	addi.w	$a5, $a4, -2001
	bgeu	$a5, $a1, .LBB1_21
# %bb.19:
	pcalau12i	$a5, %got_pc_hi20(symbol_TYPESTATBITS)
	ld.d	$a5, $a5, %got_pc_lo12(symbol_TYPESTATBITS)
	pcalau12i	$a6, %got_pc_hi20(symbol_SIGNATURE)
	ld.d	$a6, $a6, %got_pc_lo12(symbol_SIGNATURE)
	ld.wu	$a5, $a5, 0
	ld.d	$a6, $a6, 0
	sub.d	$a4, $zero, $a4
	sra.w	$a4, $a4, $a5
	slli.d	$a4, $a4, 3
	ldx.d	$a4, $a6, $a4
	ld.w	$a5, $a4, 12
	ld.d	$a4, $s1, 16
	sub.w	$a0, $a0, $a5
	beqz	$a4, .LBB1_22
# %bb.20:                               # %.thread184
	pcalau12i	$a3, %got_pc_hi20(stack_STACK)
	ld.d	$a5, $a3, %got_pc_lo12(stack_STACK)
	addi.w	$a3, $s5, 1
	st.w	$a3, $s4, 0
	slli.d	$a6, $s5, 3
	stx.d	$a4, $a5, $a6
	b	.LBB1_32
.LBB1_21:
	pcalau12i	$a5, %got_pc_hi20(ord_VARCOUNT)
	ld.d	$a5, $a5, %got_pc_lo12(ord_VARCOUNT)
	alsl.d	$a4, $a4, $a5, 3
	ld.w	$a5, $a4, 4
	addi.w	$a0, $a0, -1
	addi.d	$a5, $a5, 1
	st.w	$a5, $a4, 4
.LBB1_22:
	addi.w	$a4, $a3, 0
	bne	$a4, $a2, .LBB1_32
.LBB1_23:                               # %.preheader
	bltz	$s3, .LBB1_31
# %bb.24:                               # %.lr.ph163.preheader
	pcalau12i	$a1, %got_pc_hi20(ord_VARCOUNT)
	ld.d	$a2, $a1, %got_pc_lo12(ord_VARCOUNT)
	move	$a1, $zero
	addi.d	$a2, $a2, 4
	ld.w	$a3, $a2, -4
	ld.w	$a4, $a2, 0
	bgeu	$a3, $a4, .LBB1_27
	.p2align	4, , 16
.LBB1_25:
	st.w	$zero, $s0, 0
	ld.w	$a3, $fp, 0
	beqz	$a3, .LBB1_31
# %bb.26:                               # %._crit_edge175
	ld.w	$a3, $a2, -4
	ld.w	$a4, $a2, 0
.LBB1_27:                               # =>This Inner Loop Header: Depth=1
	bgeu	$a4, $a3, .LBB1_29
# %bb.28:                               #   in Loop: Header=BB1_27 Depth=1
	st.w	$zero, $fp, 0
	ld.w	$a3, $s0, 0
	beqz	$a3, .LBB1_31
.LBB1_29:                               #   in Loop: Header=BB1_27 Depth=1
	bge	$a1, $s3, .LBB1_31
# %bb.30:                               # %.lr.ph163.backedge
                                        #   in Loop: Header=BB1_27 Depth=1
	addi.w	$a1, $a1, 1
	addi.d	$a2, $a2, 8
	ld.w	$a3, $a2, -4
	ld.w	$a4, $a2, 0
	bltu	$a3, $a4, .LBB1_25
	b	.LBB1_27
.LBB1_31:                               # %._crit_edge164
	ld.d	$s5, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.LBB1_32:                               # %.lr.ph159
	pcalau12i	$a4, %got_pc_hi20(symbol_TYPESTATBITS)
	ld.d	$a4, $a4, %got_pc_lo12(symbol_TYPESTATBITS)
	pcalau12i	$a5, %got_pc_hi20(symbol_SIGNATURE)
	ld.d	$a5, $a5, %got_pc_lo12(symbol_SIGNATURE)
	ld.w	$a4, $a4, 0
	ld.d	$a5, $a5, 0
	pcalau12i	$a6, %got_pc_hi20(stack_STACK)
	ld.d	$a6, $a6, %got_pc_lo12(stack_STACK)
	pcalau12i	$a7, %got_pc_hi20(ord_VARCOUNT)
	ld.d	$a7, $a7, %got_pc_lo12(ord_VARCOUNT)
.LBB1_33:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_38 Depth 2
	addi.d	$t0, $a3, -1
	bstrpick.d	$t0, $t0, 31, 0
	slli.d	$t1, $t0, 3
	ldx.d	$t0, $a6, $t1
	ld.d	$t2, $t0, 0
	ld.d	$t0, $t0, 8
	stx.d	$t2, $a6, $t1
	ld.w	$t1, $t0, 0
	addi.w	$t2, $t1, -2001
	bgeu	$t2, $a1, .LBB1_36
# %bb.34:                               #   in Loop: Header=BB1_33 Depth=1
	sub.d	$t1, $zero, $t1
	sra.w	$t1, $t1, $a4
	slli.d	$t1, $t1, 3
	ldx.d	$t1, $a5, $t1
	ld.w	$t1, $t1, 12
	ld.d	$t0, $t0, 16
	sub.w	$a0, $a0, $t1
	beqz	$t0, .LBB1_37
# %bb.35:                               #   in Loop: Header=BB1_33 Depth=1
	bstrpick.d	$t1, $a3, 31, 0
	addi.w	$a3, $a3, 1
	st.w	$a3, $s4, 0
	slli.d	$t1, $t1, 3
	stx.d	$t0, $a6, $t1
	b	.LBB1_37
	.p2align	4, , 16
.LBB1_36:                               #   in Loop: Header=BB1_33 Depth=1
	alsl.d	$t0, $t1, $a7, 3
	ld.w	$t1, $t0, 4
	addi.w	$a0, $a0, -1
	addi.d	$t1, $t1, 1
	st.w	$t1, $t0, 4
.LBB1_37:                               #   in Loop: Header=BB1_33 Depth=1
	addi.w	$t0, $a3, 0
	beq	$t0, $a2, .LBB1_23
	.p2align	4, , 16
.LBB1_38:                               # %.lr.ph145
                                        #   Parent Loop BB1_33 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.w	$t0, $a3, -1
	bstrpick.d	$t1, $t0, 31, 0
	slli.d	$t1, $t1, 3
	ldx.d	$t1, $a6, $t1
	bnez	$t1, .LBB1_40
# %bb.39:                               #   in Loop: Header=BB1_38 Depth=2
	st.w	$t0, $s4, 0
	move	$a3, $t0
	bne	$a2, $t0, .LBB1_38
	b	.LBB1_23
	.p2align	4, , 16
.LBB1_40:                               # %.critedge2
                                        #   in Loop: Header=BB1_33 Depth=1
	addi.w	$t0, $a3, 0
	bne	$a2, $t0, .LBB1_33
	b	.LBB1_23
.Lfunc_end1:
	.size	kbo_CompVarCondAndWeight, .Lfunc_end1-kbo_CompVarCondAndWeight
                                        # -- End function
	.p2align	5                               # -- Begin function kbo_CompareStruc
	.type	kbo_CompareStruc,@function
kbo_CompareStruc:                       # @kbo_CompareStruc
# %bb.0:
	move	$a3, $a0
	ori	$a0, $zero, 3
	blez	$a2, .LBB2_2
.LBB2_1:
	ret
.LBB2_2:
	beqz	$a2, .LBB2_4
.LBB2_3:
	move	$a0, $zero
	ret
.LBB2_4:
	ld.w	$a2, $a3, 0
	ld.w	$a4, $a1, 0
	addi.w	$a6, $a2, -2001
	addi.w	$a7, $zero, -2000
	addi.w	$a5, $a4, -2001
	bgeu	$a6, $a7, .LBB2_12
# %bb.5:
	addi.w	$a6, $zero, -2001
	bltu	$a6, $a5, .LBB2_1
# %bb.6:
	pcalau12i	$a5, %got_pc_hi20(symbol_TYPESTATBITS)
	ld.d	$a5, $a5, %got_pc_lo12(symbol_TYPESTATBITS)
	pcalau12i	$a6, %got_pc_hi20(ord_PRECEDENCE)
	ld.d	$a6, $a6, %got_pc_lo12(ord_PRECEDENCE)
	ld.wu	$a7, $a5, 0
	ld.d	$a6, $a6, 0
	sub.d	$a5, $zero, $a2
	sra.w	$a5, $a5, $a7
	slli.d	$t0, $a5, 2
	ldx.w	$t0, $a6, $t0
	sub.d	$t1, $zero, $a4
	sra.w	$a7, $t1, $a7
	slli.d	$a7, $a7, 2
	ldx.w	$a6, $a6, $a7
	blt	$t0, $a6, .LBB2_1
# %bb.7:
	bne	$a2, $a4, .LBB2_3
# %bb.8:
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(symbol_SIGNATURE)
	ld.d	$a0, $a0, %got_pc_lo12(symbol_SIGNATURE)
	ld.d	$a0, $a0, 0
	slli.d	$a2, $a5, 3
	ldx.d	$a0, $a0, $a2
	ld.bu	$a2, $a0, 20
	ld.d	$s0, $a3, 16
	ld.d	$fp, $a1, 16
	andi	$a1, $a2, 8
	bnez	$a1, .LBB2_13
# %bb.9:                                # %.preheader
	ori	$a0, $zero, 2
	beqz	$s0, .LBB2_23
.LBB2_10:                               # %.lr.ph82
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s0, 8
	ld.d	$a1, $fp, 8
	pcaddu18i	$ra, %call36(term_Equal)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB2_18
# %bb.11:                               #   in Loop: Header=BB2_10 Depth=1
	ld.d	$s0, $s0, 0
	ld.d	$fp, $fp, 0
	bnez	$s0, .LBB2_10
	b	.LBB2_17
.LBB2_12:
	addi.w	$a0, $zero, -2001
	sltu	$a0, $a0, $a5
	slli.d	$a0, $a0, 1
	ret
.LBB2_13:
	ld.w	$a1, $a0, 16
	ori	$a0, $zero, 2
	blez	$a1, .LBB2_23
# %bb.14:                               # %.lr.ph.preheader
	ori	$s3, $zero, 1
.LBB2_15:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	move	$s1, $a1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(list_NthElement)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	move	$a0, $fp
	move	$a1, $s1
	pcaddu18i	$ra, %call36(list_NthElement)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(term_Equal)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB2_19
# %bb.16:                               #   in Loop: Header=BB2_15 Depth=1
	addi.w	$a1, $s1, -1
	blt	$s3, $s1, .LBB2_15
.LBB2_17:
	ori	$a0, $zero, 2
	b	.LBB2_23
.LBB2_18:
	ld.d	$s0, $s0, 8
	ld.d	$fp, $fp, 8
	b	.LBB2_20
.LBB2_19:                               # %.critedge63.thread
	move	$a0, $s0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(list_NthElement)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	move	$a0, $fp
	move	$a1, $s1
	pcaddu18i	$ra, %call36(list_NthElement)
	jirl	$ra, $ra, 0
	move	$fp, $a0
.LBB2_20:
	addi.d	$a1, $sp, 12
	addi.d	$a3, $sp, 8
	move	$a0, $s0
	move	$a2, $fp
	pcaddu18i	$ra, %call36(kbo_CompVarCondAndWeight)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	move	$a0, $zero
	bltz	$a2, .LBB2_23
# %bb.21:
	ld.w	$a1, $sp, 12
	beqz	$a1, .LBB2_23
# %bb.22:
	move	$a0, $s0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(kbo_CompareStruc)
	jirl	$ra, $ra, 0
.LBB2_23:                               # %.critedge63
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.Lfunc_end2:
	.size	kbo_CompareStruc, .Lfunc_end2-kbo_CompareStruc
                                        # -- End function
	.globl	kbo_ContCompare                 # -- Begin function kbo_ContCompare
	.p2align	5
	.type	kbo_ContCompare,@function
kbo_ContCompare:                        # @kbo_ContCompare
# %bb.0:
	addi.d	$sp, $sp, -80
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
	st.d	$s1, $sp, 48                    # 8-byte Folded Spill
	st.d	$s2, $sp, 40                    # 8-byte Folded Spill
	st.d	$s3, $sp, 32                    # 8-byte Folded Spill
	st.d	$s4, $sp, 24                    # 8-byte Folded Spill
	st.d	$s5, $sp, 16                    # 8-byte Folded Spill
	st.d	$s6, $sp, 8                     # 8-byte Folded Spill
	move	$s0, $a3
	move	$s2, $a2
	move	$fp, $a1
	move	$s1, $a0
	pcaddu18i	$ra, %call36(cont_TermMaxVar)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	move	$a0, $s2
	move	$a1, $s0
	pcaddu18i	$ra, %call36(cont_TermMaxVar)
	jirl	$ra, $ra, 0
	slt	$a1, $a0, $s3
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s3, $a1
	or	$s4, $a1, $a0
	addi.d	$s5, $s4, 1
	bltz	$s4, .LBB3_2
# %bb.1:                                # %.lr.ph.preheader.i
	bstrpick.d	$a0, $s5, 31, 0
	slli.d	$a2, $a0, 3
	pcalau12i	$a0, %got_pc_hi20(ord_VARCOUNT)
	ld.d	$a0, $a0, %got_pc_lo12(ord_VARCOUNT)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB3_2:                                # %._crit_edge.i
	move	$a0, $s1
	move	$a1, $fp
	move	$a2, $zero
	pcaddu18i	$ra, %call36(kbo_ContCompVarCondAndWeightIntern)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	ori	$a2, $zero, 1
	ori	$s6, $zero, 1
	move	$a0, $s2
	move	$a1, $s0
	pcaddu18i	$ra, %call36(kbo_ContCompVarCondAndWeightIntern)
	jirl	$ra, $ra, 0
	bltz	$s4, .LBB3_9
# %bb.3:                                # %.lr.ph47.preheader.i
	pcalau12i	$a1, %got_pc_hi20(ord_VARCOUNT)
	ld.d	$a1, $a1, %got_pc_lo12(ord_VARCOUNT)
	addi.d	$a2, $a1, 4
	bstrpick.d	$a3, $s5, 31, 0
	ori	$a1, $zero, 1
	ori	$a4, $zero, 1
	b	.LBB3_6
	.p2align	4, , 16
.LBB3_4:                                #   in Loop: Header=BB3_6 Depth=1
	move	$a1, $zero
	move	$s6, $zero
	beqz	$a4, .LBB3_9
.LBB3_5:                                #   in Loop: Header=BB3_6 Depth=1
	addi.d	$a3, $a3, -1
	addi.d	$a2, $a2, 8
	beqz	$a3, .LBB3_15
.LBB3_6:                                # %.lr.ph47.i
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a5, $a2, -4
	ld.w	$a6, $a2, 0
	bltu	$a5, $a6, .LBB3_4
# %bb.7:                                #   in Loop: Header=BB3_6 Depth=1
	bgeu	$a6, $a5, .LBB3_5
# %bb.8:                                #   in Loop: Header=BB3_6 Depth=1
	move	$a4, $zero
	move	$s6, $zero
	bnez	$a1, .LBB3_5
.LBB3_9:                                # %kbo_ContCompVarCondAndWeight.exit.thread
	addi.w	$a1, $zero, -1
	slt	$a3, $a1, $s4
	slti	$a2, $s4, 0
	sub.w	$s3, $s3, $a0
	move	$a1, $s6
.LBB3_10:
	beqz	$a3, .LBB3_13
# %bb.11:
	beqz	$a2, .LBB3_13
.LBB3_12:
	sub.w	$a4, $zero, $s3
	move	$a0, $s2
	move	$a1, $s0
	move	$a2, $s1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(kbo_ContCompareStruc)
	jirl	$ra, $ra, 0
	ld.d	$s6, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s5, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	pcaddu18i	$t8, %call36(ord_Not)
	jr	$t8
.LBB3_13:
	sltu	$a0, $zero, $a1
	and	$a0, $a0, $a2
	beqz	$a0, .LBB3_18
# %bb.14:
	move	$a0, $s1
	move	$a1, $fp
	move	$a2, $s2
	move	$a3, $s0
	move	$a4, $s3
	pcaddu18i	$ra, %call36(kbo_ContCompareStruc)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB3_19
	b	.LBB3_12
.LBB3_15:                               # %kbo_ContCompVarCondAndWeight.exit
	sub.w	$s3, $s3, $a0
	sltui	$a3, $a1, 1
	sltu	$a2, $zero, $a4
	beqz	$a1, .LBB3_10
# %bb.16:                               # %kbo_ContCompVarCondAndWeight.exit
	bnez	$a4, .LBB3_10
# %bb.17:
	move	$a0, $s1
	move	$a1, $fp
	move	$a2, $s2
	move	$a3, $s0
	move	$a4, $s3
	ld.d	$s6, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s5, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	pcaddu18i	$t8, %call36(kbo_ContCompareStruc)
	jr	$t8
.LBB3_18:
	move	$a0, $zero
.LBB3_19:
	ld.d	$s6, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s5, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.Lfunc_end3:
	.size	kbo_ContCompare, .Lfunc_end3-kbo_ContCompare
                                        # -- End function
	.p2align	5                               # -- Begin function kbo_ContCompVarCondAndWeight
	.type	kbo_ContCompVarCondAndWeight,@function
kbo_ContCompVarCondAndWeight:           # @kbo_ContCompVarCondAndWeight
# %bb.0:
	addi.d	$sp, $sp, -80
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
	st.d	$s1, $sp, 48                    # 8-byte Folded Spill
	st.d	$s2, $sp, 40                    # 8-byte Folded Spill
	st.d	$s3, $sp, 32                    # 8-byte Folded Spill
	st.d	$s4, $sp, 24                    # 8-byte Folded Spill
	st.d	$s5, $sp, 16                    # 8-byte Folded Spill
	st.d	$s6, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a5
	move	$s1, $a4
	move	$s2, $a3
	move	$s0, $a2
	move	$s3, $a1
	move	$s4, $a0
	ori	$a0, $zero, 1
	st.w	$a0, $a5, 0
	st.w	$a0, $a2, 0
	move	$a0, $s4
	pcaddu18i	$ra, %call36(cont_TermMaxVar)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	move	$a0, $s2
	move	$a1, $s1
	pcaddu18i	$ra, %call36(cont_TermMaxVar)
	jirl	$ra, $ra, 0
	slt	$a1, $a0, $s5
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s5, $a1
	or	$s6, $a1, $a0
	addi.d	$s5, $s6, 1
	bltz	$s6, .LBB4_2
# %bb.1:                                # %.lr.ph.preheader
	bstrpick.d	$a0, $s5, 31, 0
	slli.d	$a2, $a0, 3
	pcalau12i	$a0, %got_pc_hi20(ord_VARCOUNT)
	ld.d	$a0, $a0, %got_pc_lo12(ord_VARCOUNT)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB4_2:                                # %._crit_edge
	move	$a0, $s4
	move	$a1, $s3
	move	$a2, $zero
	pcaddu18i	$ra, %call36(kbo_ContCompVarCondAndWeightIntern)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	ori	$a2, $zero, 1
	move	$a0, $s2
	move	$a1, $s1
	pcaddu18i	$ra, %call36(kbo_ContCompVarCondAndWeightIntern)
	jirl	$ra, $ra, 0
	bltz	$s6, .LBB4_9
# %bb.3:                                # %.lr.ph47.preheader
	pcalau12i	$a1, %got_pc_hi20(ord_VARCOUNT)
	ld.d	$a1, $a1, %got_pc_lo12(ord_VARCOUNT)
	addi.d	$a1, $a1, 4
	bstrpick.d	$a2, $s5, 31, 0
	b	.LBB4_6
	.p2align	4, , 16
.LBB4_4:                                #   in Loop: Header=BB4_6 Depth=1
	st.w	$zero, $s0, 0
	ld.w	$a3, $fp, 0
	beqz	$a3, .LBB4_9
.LBB4_5:                                #   in Loop: Header=BB4_6 Depth=1
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, 8
	beqz	$a2, .LBB4_9
.LBB4_6:                                # %.lr.ph47
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a3, $a1, -4
	ld.w	$a4, $a1, 0
	bltu	$a3, $a4, .LBB4_4
# %bb.7:                                #   in Loop: Header=BB4_6 Depth=1
	bgeu	$a4, $a3, .LBB4_5
# %bb.8:                                #   in Loop: Header=BB4_6 Depth=1
	st.w	$zero, $fp, 0
	ld.w	$a3, $s0, 0
	bnez	$a3, .LBB4_5
.LBB4_9:                                # %._crit_edge48
	sub.w	$a0, $s3, $a0
	ld.d	$s6, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s5, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.Lfunc_end4:
	.size	kbo_ContCompVarCondAndWeight, .Lfunc_end4-kbo_ContCompVarCondAndWeight
                                        # -- End function
	.p2align	5                               # -- Begin function kbo_ContCompareStruc
	.type	kbo_ContCompareStruc,@function
kbo_ContCompareStruc:                   # @kbo_ContCompareStruc
# %bb.0:
	addi.d	$sp, $sp, -80
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
	st.d	$s1, $sp, 48                    # 8-byte Folded Spill
	st.d	$s2, $sp, 40                    # 8-byte Folded Spill
	st.d	$s3, $sp, 32                    # 8-byte Folded Spill
	st.d	$s4, $sp, 24                    # 8-byte Folded Spill
	st.d	$s5, $sp, 16                    # 8-byte Folded Spill
	st.d	$s6, $sp, 8                     # 8-byte Folded Spill
	ld.w	$a5, $a1, 0
	blez	$a5, .LBB5_5
# %bb.1:                                # %.lr.ph.i.preheader
	pcalau12i	$a6, %got_pc_hi20(cont_INSTANCECONTEXT)
	ld.d	$a6, $a6, %got_pc_lo12(cont_INSTANCECONTEXT)
	ld.d	$a6, $a6, 0
	beq	$a0, $a6, .LBB5_5
	.p2align	4, , 16
.LBB5_2:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	slli.d	$a7, $a5, 5
	add.d	$a7, $a0, $a7
	ld.d	$a7, $a7, 8
	beqz	$a7, .LBB5_5
# %bb.3:                                # %.lr.ph268
                                        #   in Loop: Header=BB5_2 Depth=1
	move	$a1, $a7
	slli.d	$a5, $a5, 5
	add.d	$a0, $a0, $a5
	ld.w	$a5, $a7, 0
	ld.d	$a0, $a0, 16
	blez	$a5, .LBB5_5
# %bb.4:                                # %.lr.ph268
                                        #   in Loop: Header=BB5_2 Depth=1
	bne	$a0, $a6, .LBB5_2
.LBB5_5:                                # %cont_Deref.exit
	ld.w	$a6, $a3, 0
	blez	$a6, .LBB5_10
# %bb.6:                                # %.lr.ph.i76.preheader
	pcalau12i	$a7, %got_pc_hi20(cont_INSTANCECONTEXT)
	ld.d	$a7, $a7, %got_pc_lo12(cont_INSTANCECONTEXT)
	ld.d	$a7, $a7, 0
	beq	$a2, $a7, .LBB5_10
	.p2align	4, , 16
.LBB5_7:                                # %.lr.ph172
                                        # =>This Inner Loop Header: Depth=1
	slli.d	$t0, $a6, 5
	add.d	$t0, $a2, $t0
	ld.d	$t0, $t0, 8
	beqz	$t0, .LBB5_10
# %bb.8:                                # %.lr.ph276
                                        #   in Loop: Header=BB5_7 Depth=1
	move	$a3, $t0
	slli.d	$a6, $a6, 5
	add.d	$a2, $a2, $a6
	ld.w	$a6, $t0, 0
	ld.d	$a2, $a2, 16
	blez	$a6, .LBB5_10
# %bb.9:                                # %.lr.ph276
                                        #   in Loop: Header=BB5_7 Depth=1
	bne	$a2, $a7, .LBB5_7
.LBB5_10:                               # %cont_Deref.exit83
	ori	$s2, $zero, 3
	bgtz	$a4, .LBB5_22
# %bb.11:
	beqz	$a4, .LBB5_13
.LBB5_12:
	move	$s2, $zero
	b	.LBB5_22
.LBB5_13:
	addi.w	$a7, $a5, -2001
	addi.w	$t0, $zero, -2000
	addi.w	$a4, $a6, -2001
	bgeu	$a7, $t0, .LBB5_21
# %bb.14:
	addi.w	$a7, $zero, -2001
	bltu	$a7, $a4, .LBB5_22
# %bb.15:
	pcalau12i	$a4, %got_pc_hi20(symbol_TYPESTATBITS)
	ld.d	$a4, $a4, %got_pc_lo12(symbol_TYPESTATBITS)
	pcalau12i	$a7, %got_pc_hi20(ord_PRECEDENCE)
	ld.d	$a7, $a7, %got_pc_lo12(ord_PRECEDENCE)
	ld.wu	$t0, $a4, 0
	ld.d	$a7, $a7, 0
	sub.d	$a4, $zero, $a5
	sra.w	$a4, $a4, $t0
	slli.d	$t1, $a4, 2
	ldx.w	$t1, $a7, $t1
	sub.d	$t2, $zero, $a6
	sra.w	$t0, $t2, $t0
	slli.d	$t0, $t0, 2
	ldx.w	$a7, $a7, $t0
	blt	$t1, $a7, .LBB5_22
# %bb.16:
	bne	$a5, $a6, .LBB5_12
# %bb.17:
	pcalau12i	$a5, %got_pc_hi20(symbol_SIGNATURE)
	ld.d	$a5, $a5, %got_pc_lo12(symbol_SIGNATURE)
	ld.d	$a5, $a5, 0
	slli.d	$a4, $a4, 3
	ldx.d	$a4, $a5, $a4
	ld.bu	$a5, $a4, 20
	ld.d	$s0, $a1, 16
	ld.d	$s1, $a3, 16
	andi	$a1, $a5, 8
	bnez	$a1, .LBB5_23
# %bb.18:                               # %.preheader
	ori	$s2, $zero, 2
	beqz	$s0, .LBB5_22
.LBB5_19:                               # %.lr.ph209
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s0, 8
	ld.d	$a3, $s1, 8
	move	$s3, $a0
	move	$fp, $a2
	pcaddu18i	$ra, %call36(cont_TermEqual)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_27
# %bb.20:                               #   in Loop: Header=BB5_19 Depth=1
	ld.d	$s0, $s0, 0
	ld.d	$s1, $s1, 0
	move	$a2, $fp
	move	$a0, $s3
	bnez	$s0, .LBB5_19
	b	.LBB5_22
.LBB5_21:
	addi.w	$a0, $zero, -2001
	sltu	$a0, $a0, $a4
	slli.d	$s2, $a0, 1
.LBB5_22:
	move	$a0, $s2
	ld.d	$s6, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s5, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.LBB5_23:
	ld.w	$a1, $a4, 16
	ori	$s2, $zero, 2
	blez	$a1, .LBB5_22
# %bb.24:                               # %.lr.ph181.preheader
	move	$s4, $a0
	move	$fp, $a2
	ori	$s6, $zero, 1
.LBB5_25:                               # %.lr.ph181
                                        # =>This Inner Loop Header: Depth=1
	move	$s3, $a1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(list_NthElement)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	move	$a0, $s1
	move	$a1, $s3
	pcaddu18i	$ra, %call36(list_NthElement)
	jirl	$ra, $ra, 0
	move	$a3, $a0
	move	$a0, $s4
	move	$a1, $s5
	move	$a2, $fp
	pcaddu18i	$ra, %call36(cont_TermEqual)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_32
# %bb.26:                               #   in Loop: Header=BB5_25 Depth=1
	addi.w	$a1, $s3, -1
	blt	$s6, $s3, .LBB5_25
	b	.LBB5_22
.LBB5_27:
	ld.d	$s0, $s0, 8
	ld.w	$a2, $s0, 0
	move	$a1, $fp
	blez	$a2, .LBB5_44
# %bb.28:                               # %.lr.ph.i109.preheader
	pcalau12i	$a0, %got_pc_hi20(cont_INSTANCECONTEXT)
	ld.d	$a0, $a0, %got_pc_lo12(cont_INSTANCECONTEXT)
	ld.d	$a3, $a0, 0
	move	$a0, $s3
	beq	$s3, $a3, .LBB5_45
.LBB5_29:                               # %.lr.ph214
                                        # =>This Inner Loop Header: Depth=1
	slli.d	$a4, $a2, 5
	add.d	$a4, $a0, $a4
	ld.d	$a4, $a4, 8
	beqz	$a4, .LBB5_45
# %bb.30:                               # %.lr.ph299
                                        #   in Loop: Header=BB5_29 Depth=1
	move	$s0, $a4
	slli.d	$a2, $a2, 5
	add.d	$a0, $a0, $a2
	ld.w	$a2, $a4, 0
	ld.d	$a0, $a0, 16
	blez	$a2, .LBB5_45
# %bb.31:                               # %.lr.ph299
                                        #   in Loop: Header=BB5_29 Depth=1
	bne	$a0, $a3, .LBB5_29
	b	.LBB5_45
.LBB5_32:                               # %.critedge
	move	$a0, $s0
	move	$a1, $s3
	pcaddu18i	$ra, %call36(list_NthElement)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	ld.w	$a0, $a0, 0
	blez	$a0, .LBB5_37
# %bb.33:                               # %.lr.ph.i87.preheader
	pcalau12i	$a1, %got_pc_hi20(cont_INSTANCECONTEXT)
	ld.d	$a1, $a1, %got_pc_lo12(cont_INSTANCECONTEXT)
	ld.d	$a1, $a1, 0
	beq	$s4, $a1, .LBB5_37
.LBB5_34:                               # %.lr.ph186
                                        # =>This Inner Loop Header: Depth=1
	slli.d	$a2, $a0, 5
	add.d	$a2, $s4, $a2
	ld.d	$a2, $a2, 8
	beqz	$a2, .LBB5_37
# %bb.35:                               # %.lr.ph285
                                        #   in Loop: Header=BB5_34 Depth=1
	move	$s0, $a2
	slli.d	$a0, $a0, 5
	add.d	$a2, $s4, $a0
	ld.w	$a0, $s0, 0
	ld.d	$s4, $a2, 16
	blez	$a0, .LBB5_37
# %bb.36:                               # %.lr.ph285
                                        #   in Loop: Header=BB5_34 Depth=1
	bne	$s4, $a1, .LBB5_34
.LBB5_37:                               # %cont_Deref.exit94
	move	$a0, $s1
	move	$a1, $s3
	pcaddu18i	$ra, %call36(list_NthElement)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	ld.w	$a1, $a0, 0
	blez	$a1, .LBB5_52
# %bb.38:                               # %.lr.ph.i98.preheader
	pcalau12i	$a0, %got_pc_hi20(cont_INSTANCECONTEXT)
	ld.d	$a0, $a0, %got_pc_lo12(cont_INSTANCECONTEXT)
	ld.d	$a2, $a0, 0
	move	$a0, $s4
	beq	$fp, $a2, .LBB5_53
# %bb.39:                               # %.lr.ph198.preheader
	move	$a3, $fp
	slli.d	$a4, $a1, 5
	add.d	$a4, $fp, $a4
	ld.d	$a4, $a4, 8
	beqz	$a4, .LBB5_53
.LBB5_40:                               # %.lr.ph292
                                        # =>This Inner Loop Header: Depth=1
	move	$s1, $a4
	slli.d	$a1, $a1, 5
	add.d	$a3, $a3, $a1
	ld.w	$a1, $a4, 0
	ld.d	$a3, $a3, 16
	blez	$a1, .LBB5_43
# %bb.41:                               # %.lr.ph292
                                        #   in Loop: Header=BB5_40 Depth=1
	beq	$a3, $a2, .LBB5_43
# %bb.42:                               # %.lr.ph198
                                        #   in Loop: Header=BB5_40 Depth=1
	slli.d	$a4, $a1, 5
	add.d	$a4, $a3, $a4
	ld.d	$a4, $a4, 8
	bnez	$a4, .LBB5_40
.LBB5_43:
	move	$fp, $a3
	b	.LBB5_53
.LBB5_44:
	move	$a0, $s3
.LBB5_45:                               # %cont_Deref.exit116
	ld.d	$s1, $s1, 8
	ld.w	$a2, $s1, 0
	blez	$a2, .LBB5_53
# %bb.46:                               # %.lr.ph.i120.preheader
	pcalau12i	$a3, %got_pc_hi20(cont_INSTANCECONTEXT)
	ld.d	$a3, $a3, %got_pc_lo12(cont_INSTANCECONTEXT)
	ld.d	$a3, $a3, 0
	beq	$a1, $a3, .LBB5_53
# %bb.47:                               # %.lr.ph226.preheader
	slli.d	$a4, $a2, 5
	add.d	$a4, $a1, $a4
	ld.d	$a4, $a4, 8
	beqz	$a4, .LBB5_53
.LBB5_48:                               # %.lr.ph306
                                        # =>This Inner Loop Header: Depth=1
	move	$s1, $a4
	slli.d	$a2, $a2, 5
	add.d	$a1, $a1, $a2
	ld.w	$a2, $a4, 0
	ld.d	$a1, $a1, 16
	blez	$a2, .LBB5_51
# %bb.49:                               # %.lr.ph306
                                        #   in Loop: Header=BB5_48 Depth=1
	beq	$a1, $a3, .LBB5_51
# %bb.50:                               # %.lr.ph226
                                        #   in Loop: Header=BB5_48 Depth=1
	slli.d	$a4, $a2, 5
	add.d	$a4, $a1, $a4
	ld.d	$a4, $a4, 8
	bnez	$a4, .LBB5_48
.LBB5_51:
	move	$fp, $a1
	b	.LBB5_53
.LBB5_52:
	move	$a0, $s4
.LBB5_53:                               # %cont_Deref.exit127
	addi.d	$a2, $sp, 4
	addi.d	$a5, $sp, 0
	move	$s3, $a0
	move	$a1, $s0
	move	$a3, $fp
	move	$a4, $s1
	pcaddu18i	$ra, %call36(kbo_ContCompVarCondAndWeight)
	jirl	$ra, $ra, 0
	move	$s2, $zero
	bltz	$a0, .LBB5_22
# %bb.54:                               # %cont_Deref.exit127
	move	$a4, $a0
	ld.w	$a0, $sp, 4
	beqz	$a0, .LBB5_22
# %bb.55:
	move	$a0, $s3
	move	$a1, $s0
	move	$a2, $fp
	move	$a3, $s1
	pcaddu18i	$ra, %call36(kbo_ContCompareStruc)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	b	.LBB5_22
.Lfunc_end5:
	.size	kbo_ContCompareStruc, .Lfunc_end5-kbo_ContCompareStruc
                                        # -- End function
	.globl	kbo_ContGreater                 # -- Begin function kbo_ContGreater
	.p2align	5
	.type	kbo_ContGreater,@function
kbo_ContGreater:                        # @kbo_ContGreater
# %bb.0:
	addi.d	$sp, $sp, -80
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
	st.d	$s1, $sp, 48                    # 8-byte Folded Spill
	st.d	$s2, $sp, 40                    # 8-byte Folded Spill
	st.d	$s3, $sp, 32                    # 8-byte Folded Spill
	st.d	$s4, $sp, 24                    # 8-byte Folded Spill
	st.d	$s5, $sp, 16                    # 8-byte Folded Spill
	st.d	$s6, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a3
	move	$s0, $a2
	move	$s1, $a1
	move	$s2, $a0
	pcaddu18i	$ra, %call36(cont_TermMaxVar)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	move	$a0, $s0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(cont_TermMaxVar)
	jirl	$ra, $ra, 0
	slt	$a1, $a0, $s3
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s3, $a1
	or	$s6, $a1, $a0
	addi.d	$s4, $s6, 1
	bltz	$s6, .LBB6_2
# %bb.1:                                # %.lr.ph.preheader.i
	bstrpick.d	$a0, $s4, 31, 0
	slli.d	$a2, $a0, 3
	pcalau12i	$a0, %got_pc_hi20(ord_VARCOUNT)
	ld.d	$a0, $a0, %got_pc_lo12(ord_VARCOUNT)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB6_2:                                # %._crit_edge.i
	move	$a0, $s2
	move	$a1, $s1
	move	$a2, $zero
	pcaddu18i	$ra, %call36(kbo_ContCompVarCondAndWeightIntern)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	ori	$a2, $zero, 1
	ori	$s5, $zero, 1
	move	$a0, $s0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(kbo_ContCompVarCondAndWeightIntern)
	jirl	$ra, $ra, 0
	bltz	$s6, .LBB6_11
# %bb.3:                                # %.lr.ph47.preheader.i
	move	$a6, $zero
	move	$t1, $zero
	pcalau12i	$a1, %got_pc_hi20(ord_VARCOUNT)
	ld.d	$a2, $a1, %got_pc_lo12(ord_VARCOUNT)
	bstrpick.d	$a3, $s4, 31, 0
	addi.d	$a4, $a3, -1
	ori	$a5, $zero, 1
.LBB6_4:                                # %.lr.ph47.i.outer
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_5 Depth 2
	alsl.d	$a1, $t1, $a2, 3
	addi.d	$a1, $a1, 4
	xori	$t0, $s5, 1
	move	$a7, $t1
	.p2align	4, , 16
.LBB6_5:                                # %.lr.ph47.i
                                        #   Parent Loop BB6_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t1, $a1, -4
	ld.w	$t2, $a1, 0
	bltu	$t1, $t2, .LBB6_8
# %bb.6:                                #   in Loop: Header=BB6_5 Depth=2
	sltu	$t1, $t2, $t1
	and	$t2, $t1, $t0
	bnez	$t2, .LBB6_14
# %bb.7:                                #   in Loop: Header=BB6_5 Depth=2
	xori	$t1, $t1, 1
	maskeqz	$a5, $a5, $t1
	addi.d	$a7, $a7, 1
	addi.d	$a1, $a1, 8
	bne	$a3, $a7, .LBB6_5
	b	.LBB6_10
	.p2align	4, , 16
.LBB6_8:                                #   in Loop: Header=BB6_4 Depth=1
	beqz	$a5, .LBB6_14
# %bb.9:                                #   in Loop: Header=BB6_4 Depth=1
	move	$s5, $zero
	move	$a1, $zero
	addi.d	$t1, $a7, 1
	ori	$a6, $zero, 1
	bne	$a4, $a7, .LBB6_4
	b	.LBB6_15
.LBB6_10:                               # %kbo_ContCompVarCondAndWeight.exit
	andi	$a1, $a6, 1
	bnez	$a1, .LBB6_14
.LBB6_11:                               # %kbo_ContCompVarCondAndWeight.exit.thread18
	ori	$a1, $zero, 1
	blt	$a0, $s3, .LBB6_15
# %bb.12:
	bne	$s3, $a0, .LBB6_14
# %bb.13:
	move	$a0, $s2
	move	$a1, $s1
	move	$a2, $s0
	move	$a3, $fp
	ld.d	$s6, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s5, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	pcaddu18i	$t8, %call36(kbo_ContGreaterCompareStruc)
	jr	$t8
.LBB6_14:
	move	$a1, $zero
.LBB6_15:                               # %kbo_ContCompVarCondAndWeight.exit.thread
	move	$a0, $a1
	ld.d	$s6, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s5, $sp, 16                    # 8-byte Folded Reload
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
	.size	kbo_ContGreater, .Lfunc_end6-kbo_ContGreater
                                        # -- End function
	.p2align	5                               # -- Begin function kbo_ContGreaterCompareStruc
	.type	kbo_ContGreaterCompareStruc,@function
kbo_ContGreaterCompareStruc:            # @kbo_ContGreaterCompareStruc
# %bb.0:
	addi.d	$sp, $sp, -80
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
	st.d	$s1, $sp, 48                    # 8-byte Folded Spill
	st.d	$s2, $sp, 40                    # 8-byte Folded Spill
	st.d	$s3, $sp, 32                    # 8-byte Folded Spill
	st.d	$s4, $sp, 24                    # 8-byte Folded Spill
	st.d	$s5, $sp, 16                    # 8-byte Folded Spill
	ld.w	$a4, $a1, 0
	move	$fp, $a2
	move	$s0, $a0
	blez	$a4, .LBB7_5
# %bb.1:                                # %.lr.ph.i.preheader
	pcalau12i	$a0, %got_pc_hi20(cont_INSTANCECONTEXT)
	ld.d	$a0, $a0, %got_pc_lo12(cont_INSTANCECONTEXT)
	ld.d	$a0, $a0, 0
	beq	$s0, $a0, .LBB7_5
	.p2align	4, , 16
.LBB7_2:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	slli.d	$a2, $a4, 5
	add.d	$a2, $s0, $a2
	ld.d	$a2, $a2, 8
	beqz	$a2, .LBB7_5
# %bb.3:                                # %.lr.ph270
                                        #   in Loop: Header=BB7_2 Depth=1
	move	$a1, $a2
	slli.d	$a2, $a4, 5
	add.d	$a2, $s0, $a2
	ld.w	$a4, $a1, 0
	ld.d	$s0, $a2, 16
	blez	$a4, .LBB7_5
# %bb.4:                                # %.lr.ph270
                                        #   in Loop: Header=BB7_2 Depth=1
	bne	$s0, $a0, .LBB7_2
.LBB7_5:                                # %cont_Deref.exit
	ld.w	$a2, $a3, 0
	blez	$a2, .LBB7_10
# %bb.6:                                # %.lr.ph.i75.preheader
	pcalau12i	$a0, %got_pc_hi20(cont_INSTANCECONTEXT)
	ld.d	$a0, $a0, %got_pc_lo12(cont_INSTANCECONTEXT)
	ld.d	$a0, $a0, 0
	beq	$fp, $a0, .LBB7_10
	.p2align	4, , 16
.LBB7_7:                                # %.lr.ph175
                                        # =>This Inner Loop Header: Depth=1
	slli.d	$a5, $a2, 5
	add.d	$a5, $fp, $a5
	ld.d	$a5, $a5, 8
	beqz	$a5, .LBB7_10
# %bb.8:                                # %.lr.ph278
                                        #   in Loop: Header=BB7_7 Depth=1
	move	$a3, $a5
	slli.d	$a2, $a2, 5
	add.d	$a5, $fp, $a2
	ld.w	$a2, $a3, 0
	ld.d	$fp, $a5, 16
	blez	$a2, .LBB7_10
# %bb.9:                                # %.lr.ph278
                                        #   in Loop: Header=BB7_7 Depth=1
	bne	$fp, $a0, .LBB7_7
.LBB7_10:                               # %cont_Deref.exit82
	addi.w	$a0, $a4, -2001
	addi.w	$a5, $zero, -2001
	bltu	$a5, $a0, .LBB7_45
# %bb.11:
	addi.w	$a6, $a2, -2001
	ori	$a0, $zero, 1
	bltu	$a5, $a6, .LBB7_46
# %bb.12:
	pcalau12i	$a5, %got_pc_hi20(symbol_TYPESTATBITS)
	ld.d	$a5, $a5, %got_pc_lo12(symbol_TYPESTATBITS)
	pcalau12i	$a6, %got_pc_hi20(ord_PRECEDENCE)
	ld.d	$a6, $a6, %got_pc_lo12(ord_PRECEDENCE)
	ld.wu	$a7, $a5, 0
	ld.d	$a6, $a6, 0
	sub.d	$a5, $zero, $a4
	sra.w	$a5, $a5, $a7
	slli.d	$t0, $a5, 2
	ldx.w	$t0, $a6, $t0
	sub.d	$t1, $zero, $a2
	sra.w	$a7, $t1, $a7
	slli.d	$a7, $a7, 2
	ldx.w	$a6, $a6, $a7
	blt	$t0, $a6, .LBB7_46
# %bb.13:
	bne	$a4, $a2, .LBB7_45
# %bb.14:
	pcalau12i	$a0, %got_pc_hi20(symbol_SIGNATURE)
	ld.d	$a0, $a0, %got_pc_lo12(symbol_SIGNATURE)
	ld.d	$a0, $a0, 0
	slli.d	$a2, $a5, 3
	ldx.d	$a0, $a0, $a2
	ld.bu	$a2, $a0, 20
	ld.d	$s1, $a1, 16
	ld.d	$s2, $a3, 16
	andi	$a1, $a2, 8
	bnez	$a1, .LBB7_18
# %bb.15:                               # %.preheader
	beqz	$s1, .LBB7_45
	.p2align	4, , 16
.LBB7_16:                               # %.lr.ph212
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s1, 8
	ld.d	$a3, $s2, 8
	move	$a0, $s0
	move	$a2, $fp
	pcaddu18i	$ra, %call36(cont_TermEqual)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB7_22
# %bb.17:                               #   in Loop: Header=BB7_16 Depth=1
	ld.d	$s1, $s1, 0
	ld.d	$s2, $s2, 0
	bnez	$s1, .LBB7_16
	b	.LBB7_45
.LBB7_18:
	ld.w	$a0, $a0, 16
	blez	$a0, .LBB7_45
# %bb.19:                               # %.lr.ph184.preheader
	ori	$s5, $zero, 1
	.p2align	4, , 16
.LBB7_20:                               # %.lr.ph184
                                        # =>This Inner Loop Header: Depth=1
	move	$s3, $a0
	move	$a0, $s1
	move	$a1, $s3
	pcaddu18i	$ra, %call36(list_NthElement)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	move	$a0, $s2
	move	$a1, $s3
	pcaddu18i	$ra, %call36(list_NthElement)
	jirl	$ra, $ra, 0
	move	$a3, $a0
	move	$a0, $s0
	move	$a1, $s4
	move	$a2, $fp
	pcaddu18i	$ra, %call36(cont_TermEqual)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB7_32
# %bb.21:                               #   in Loop: Header=BB7_20 Depth=1
	addi.w	$a0, $s3, -1
	blt	$s5, $s3, .LBB7_20
	b	.LBB7_45
.LBB7_22:
	ld.d	$s1, $s1, 8
	ld.w	$a0, $s1, 0
	blez	$a0, .LBB7_27
# %bb.23:                               # %.lr.ph.i108.preheader
	pcalau12i	$a1, %got_pc_hi20(cont_INSTANCECONTEXT)
	ld.d	$a1, $a1, %got_pc_lo12(cont_INSTANCECONTEXT)
	ld.d	$a1, $a1, 0
	beq	$s0, $a1, .LBB7_27
.LBB7_24:                               # %.lr.ph217
                                        # =>This Inner Loop Header: Depth=1
	slli.d	$a2, $a0, 5
	add.d	$a2, $s0, $a2
	ld.d	$a2, $a2, 8
	beqz	$a2, .LBB7_27
# %bb.25:                               # %.lr.ph301
                                        #   in Loop: Header=BB7_24 Depth=1
	move	$s1, $a2
	slli.d	$a0, $a0, 5
	add.d	$a2, $s0, $a0
	ld.w	$a0, $s1, 0
	ld.d	$s0, $a2, 16
	blez	$a0, .LBB7_27
# %bb.26:                               # %.lr.ph301
                                        #   in Loop: Header=BB7_24 Depth=1
	bne	$s0, $a1, .LBB7_24
.LBB7_27:                               # %cont_Deref.exit115
	ld.d	$s2, $s2, 8
	ld.w	$a0, $s2, 0
	blez	$a0, .LBB7_42
# %bb.28:                               # %.lr.ph.i119.preheader
	pcalau12i	$a1, %got_pc_hi20(cont_INSTANCECONTEXT)
	ld.d	$a1, $a1, %got_pc_lo12(cont_INSTANCECONTEXT)
	ld.d	$a1, $a1, 0
	beq	$fp, $a1, .LBB7_42
.LBB7_29:                               # %.lr.ph229
                                        # =>This Inner Loop Header: Depth=1
	slli.d	$a2, $a0, 5
	add.d	$a2, $fp, $a2
	ld.d	$a2, $a2, 8
	beqz	$a2, .LBB7_42
# %bb.30:                               # %.lr.ph308
                                        #   in Loop: Header=BB7_29 Depth=1
	move	$s2, $a2
	slli.d	$a0, $a0, 5
	add.d	$a2, $fp, $a0
	ld.w	$a0, $s2, 0
	ld.d	$fp, $a2, 16
	blez	$a0, .LBB7_42
# %bb.31:                               # %.lr.ph308
                                        #   in Loop: Header=BB7_29 Depth=1
	bne	$fp, $a1, .LBB7_29
	b	.LBB7_42
.LBB7_32:                               # %.critedge
	move	$a0, $s1
	move	$a1, $s3
	pcaddu18i	$ra, %call36(list_NthElement)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	ld.w	$a0, $a0, 0
	blez	$a0, .LBB7_37
# %bb.33:                               # %.lr.ph.i86.preheader
	pcalau12i	$a1, %got_pc_hi20(cont_INSTANCECONTEXT)
	ld.d	$a1, $a1, %got_pc_lo12(cont_INSTANCECONTEXT)
	ld.d	$a1, $a1, 0
	beq	$s0, $a1, .LBB7_37
.LBB7_34:                               # %.lr.ph189
                                        # =>This Inner Loop Header: Depth=1
	slli.d	$a2, $a0, 5
	add.d	$a2, $s0, $a2
	ld.d	$a2, $a2, 8
	beqz	$a2, .LBB7_37
# %bb.35:                               # %.lr.ph287
                                        #   in Loop: Header=BB7_34 Depth=1
	move	$s1, $a2
	slli.d	$a0, $a0, 5
	add.d	$a2, $s0, $a0
	ld.w	$a0, $s1, 0
	ld.d	$s0, $a2, 16
	blez	$a0, .LBB7_37
# %bb.36:                               # %.lr.ph287
                                        #   in Loop: Header=BB7_34 Depth=1
	bne	$s0, $a1, .LBB7_34
.LBB7_37:                               # %cont_Deref.exit93
	move	$a0, $s2
	move	$a1, $s3
	pcaddu18i	$ra, %call36(list_NthElement)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	ld.w	$a0, $a0, 0
	blez	$a0, .LBB7_42
# %bb.38:                               # %.lr.ph.i97.preheader
	pcalau12i	$a1, %got_pc_hi20(cont_INSTANCECONTEXT)
	ld.d	$a1, $a1, %got_pc_lo12(cont_INSTANCECONTEXT)
	ld.d	$a1, $a1, 0
	beq	$fp, $a1, .LBB7_42
.LBB7_39:                               # %.lr.ph201
                                        # =>This Inner Loop Header: Depth=1
	slli.d	$a2, $a0, 5
	add.d	$a2, $fp, $a2
	ld.d	$a2, $a2, 8
	beqz	$a2, .LBB7_42
# %bb.40:                               # %.lr.ph294
                                        #   in Loop: Header=BB7_39 Depth=1
	move	$s2, $a2
	slli.d	$a0, $a0, 5
	add.d	$a2, $fp, $a0
	ld.w	$a0, $s2, 0
	ld.d	$fp, $a2, 16
	blez	$a0, .LBB7_42
# %bb.41:                               # %.lr.ph294
                                        #   in Loop: Header=BB7_39 Depth=1
	bne	$fp, $a1, .LBB7_39
.LBB7_42:                               # %cont_Deref.exit126
	addi.d	$a2, $sp, 12
	addi.d	$a5, $sp, 8
	move	$a0, $s0
	move	$a1, $s1
	move	$a3, $fp
	move	$a4, $s2
	pcaddu18i	$ra, %call36(kbo_ContCompVarCondAndWeight)
	jirl	$ra, $ra, 0
	ld.w	$a2, $sp, 12
	beqz	$a2, .LBB7_45
# %bb.43:
	move	$a1, $a0
	ori	$a0, $zero, 1
	bgtz	$a1, .LBB7_46
# %bb.44:
	beqz	$a1, .LBB7_47
.LBB7_45:
	move	$a0, $zero
.LBB7_46:
	ld.d	$s5, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.LBB7_47:
	move	$a0, $s0
	move	$a1, $s1
	move	$a2, $fp
	move	$a3, $s2
	pcaddu18i	$ra, %call36(kbo_ContGreaterCompareStruc)
	jirl	$ra, $ra, 0
	b	.LBB7_46
.Lfunc_end7:
	.size	kbo_ContGreaterCompareStruc, .Lfunc_end7-kbo_ContGreaterCompareStruc
                                        # -- End function
	.p2align	5                               # -- Begin function kbo_ContCompVarCondAndWeightIntern
	.type	kbo_ContCompVarCondAndWeightIntern,@function
kbo_ContCompVarCondAndWeightIntern:     # @kbo_ContCompVarCondAndWeightIntern
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	ld.w	$a3, $a1, 0
	move	$fp, $a2
	move	$s0, $a0
	blez	$a3, .LBB8_5
# %bb.1:                                # %.lr.ph.i.preheader
	pcalau12i	$a0, %got_pc_hi20(cont_INSTANCECONTEXT)
	ld.d	$a0, $a0, %got_pc_lo12(cont_INSTANCECONTEXT)
	ld.d	$a0, $a0, 0
	beq	$s0, $a0, .LBB8_5
	.p2align	4, , 16
.LBB8_2:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	slli.d	$a2, $a3, 5
	add.d	$a2, $s0, $a2
	ld.d	$a2, $a2, 8
	beqz	$a2, .LBB8_5
# %bb.3:                                # %.lr.ph41
                                        #   in Loop: Header=BB8_2 Depth=1
	move	$a1, $a2
	slli.d	$a2, $a3, 5
	add.d	$a2, $s0, $a2
	ld.w	$a3, $a1, 0
	ld.d	$s0, $a2, 16
	blez	$a3, .LBB8_5
# %bb.4:                                # %.lr.ph41
                                        #   in Loop: Header=BB8_2 Depth=1
	bne	$s0, $a0, .LBB8_2
.LBB8_5:                                # %cont_Deref.exit
	addi.w	$a0, $a3, -2001
	addi.w	$a2, $zero, -2000
	bgeu	$a0, $a2, .LBB8_8
# %bb.6:
	pcalau12i	$a0, %got_pc_hi20(symbol_TYPESTATBITS)
	ld.d	$a0, $a0, %got_pc_lo12(symbol_TYPESTATBITS)
	pcalau12i	$a2, %got_pc_hi20(symbol_SIGNATURE)
	ld.d	$a2, $a2, %got_pc_lo12(symbol_SIGNATURE)
	ld.wu	$a0, $a0, 0
	ld.d	$a2, $a2, 0
	sub.d	$a3, $zero, $a3
	sra.w	$a0, $a3, $a0
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $a2, $a0
	ld.d	$s2, $a1, 16
	ld.w	$s1, $a0, 12
	beqz	$s2, .LBB8_9
	.p2align	4, , 16
.LBB8_7:                                # %.lr.ph35
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s2, 8
	move	$a0, $s0
	move	$a2, $fp
	pcaddu18i	$ra, %call36(kbo_ContCompVarCondAndWeightIntern)
	jirl	$ra, $ra, 0
	ld.d	$s2, $s2, 0
	add.w	$s1, $a0, $s1
	bnez	$s2, .LBB8_7
	b	.LBB8_9
.LBB8_8:
	pcalau12i	$a0, %got_pc_hi20(ord_VARCOUNT)
	ld.d	$a0, $a0, %got_pc_lo12(ord_VARCOUNT)
	alsl.d	$a0, $a3, $a0, 3
	slli.d	$a1, $fp, 2
	ldx.w	$a2, $a0, $a1
	addi.d	$a2, $a2, 1
	stx.w	$a2, $a0, $a1
	ori	$s1, $zero, 1
.LBB8_9:                                # %.loopexit
	move	$a0, $s1
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end8:
	.size	kbo_ContCompVarCondAndWeightIntern, .Lfunc_end8-kbo_ContCompVarCondAndWeightIntern
                                        # -- End function
	.type	kbo_MINWEIGHT,@object           # @kbo_MINWEIGHT
	.section	.rodata,"a",@progbits
	.globl	kbo_MINWEIGHT
	.p2align	2, 0x0
kbo_MINWEIGHT:
	.word	1                               # 0x1
	.size	kbo_MINWEIGHT, 4

	.section	".note.GNU-stack","",@progbits
	.addrsig
