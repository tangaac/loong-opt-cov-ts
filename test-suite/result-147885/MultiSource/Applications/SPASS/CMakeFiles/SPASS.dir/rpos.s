	.file	"rpos.c"
	.text
	.globl	rpos_Equal                      # -- Begin function rpos_Equal
	.p2align	5
	.type	rpos_Equal,@function
rpos_Equal:                             # @rpos_Equal
# %bb.0:
	ld.w	$a3, $a0, 0
	ld.w	$a2, $a1, 0
	bne	$a3, $a2, .LBB0_7
# %bb.1:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	ld.d	$fp, $a0, 16
	ori	$a2, $zero, 1
	beqz	$fp, .LBB0_12
# %bb.2:
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
	ld.bu	$a0, $a0, 20
	andi	$a0, $a0, 16
	bnez	$a0, .LBB0_8
# %bb.3:
	addi.d	$s0, $a1, 16
	.p2align	4, , 16
.LBB0_4:                                # =>This Inner Loop Header: Depth=1
	ld.d	$s0, $s0, 0
	ld.d	$a0, $fp, 8
	ld.d	$a1, $s0, 8
	pcaddu18i	$ra, %call36(rpos_Equal)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_11
# %bb.5:                                #   in Loop: Header=BB0_4 Depth=1
	ld.d	$fp, $fp, 0
	bnez	$fp, .LBB0_4
# %bb.6:
	ori	$a2, $zero, 1
	b	.LBB0_12
.LBB0_7:
	move	$a0, $zero
	ret
.LBB0_8:
	move	$a0, $fp
	move	$fp, $a1
	pcaddu18i	$ra, %call36(list_Copy)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 16
	pcalau12i	$a2, %pc_hi20(rpos_Equal)
	addi.d	$a2, $a2, %pc_lo12(rpos_Equal)
	pcaddu18i	$ra, %call36(list_NMultisetDifference)
	jirl	$ra, $ra, 0
	ori	$a2, $zero, 1
	beqz	$a0, .LBB0_12
# %bb.9:                                # %.lr.ph.i.preheader
	pcalau12i	$a1, %got_pc_hi20(memory_ARRAY)
	ld.d	$a1, $a1, %got_pc_lo12(memory_ARRAY)
	pcalau12i	$a2, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$a2, $a2, %got_pc_lo12(memory_FREEDBYTES)
	.p2align	4, , 16
.LBB0_10:                               # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $a1, 128
	ld.w	$a4, $a3, 32
	ld.d	$a5, $a2, 0
	ld.d	$a6, $a0, 0
	add.d	$a4, $a5, $a4
	st.d	$a4, $a2, 0
	ld.d	$a3, $a3, 0
	st.d	$a3, $a0, 0
	ld.d	$a3, $a1, 128
	st.d	$a0, $a3, 0
	move	$a0, $a6
	bnez	$a6, .LBB0_10
.LBB0_11:
	move	$a2, $zero
.LBB0_12:
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	move	$a0, $a2
	ret
.Lfunc_end0:
	.size	rpos_Equal, .Lfunc_end0-rpos_Equal
                                        # -- End function
	.globl	rpos_GreaterEqual               # -- Begin function rpos_GreaterEqual
	.p2align	5
	.type	rpos_GreaterEqual,@function
rpos_GreaterEqual:                      # @rpos_GreaterEqual
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
	st.d	$s7, $sp, 0                     # 8-byte Folded Spill
	move	$s0, $a1
	move	$fp, $a0
	ld.w	$a0, $a0, 0
	ld.w	$a1, $a1, 0
	ori	$a2, $zero, 1
	blt	$a0, $a2, .LBB1_2
# %bb.1:
	xor	$a0, $a0, $a1
	sltui	$a0, $a0, 1
	slli.d	$a0, $a0, 1
	b	.LBB1_4
.LBB1_2:
	blt	$a1, $a2, .LBB1_5
# %bb.3:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(term_ContainsSymbol)
	jirl	$ra, $ra, 0
	sltui	$a0, $a0, 1
	ori	$a1, $zero, 3
	masknez	$a0, $a1, $a0
.LBB1_4:                                # %rpos_MulGreaterEqual.exit
	ld.d	$s7, $sp, 0                     # 8-byte Folded Reload
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
.LBB1_5:
	bne	$a0, $a1, .LBB1_9
# %bb.6:
	pcalau12i	$a1, %got_pc_hi20(symbol_TYPESTATBITS)
	ld.d	$a1, $a1, %got_pc_lo12(symbol_TYPESTATBITS)
	pcalau12i	$a2, %got_pc_hi20(symbol_SIGNATURE)
	ld.d	$s4, $a2, %got_pc_lo12(symbol_SIGNATURE)
	ld.wu	$s3, $a1, 0
	ld.d	$a1, $s4, 0
	sub.d	$a0, $zero, $a0
	srl.w	$a0, $a0, $s3
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $a1, $a0
	ld.wu	$a0, $a0, 20
	andi	$a1, $a0, 16
	bnez	$a1, .LBB1_13
# %bb.7:
	ld.d	$s2, $fp, 16
	andi	$a0, $a0, 8
	bnez	$a0, .LBB1_27
# %bb.8:
	ld.d	$s1, $s0, 16
	b	.LBB1_28
.LBB1_9:
	pcalau12i	$a2, %got_pc_hi20(symbol_TYPESTATBITS)
	ld.d	$a2, $a2, %got_pc_lo12(symbol_TYPESTATBITS)
	pcalau12i	$a3, %got_pc_hi20(ord_PRECEDENCE)
	ld.d	$a3, $a3, %got_pc_lo12(ord_PRECEDENCE)
	ld.wu	$a2, $a2, 0
	ld.d	$a3, $a3, 0
	sub.d	$a0, $zero, $a0
	srl.w	$a0, $a0, $a2
	slli.d	$a0, $a0, 2
	ldx.w	$a0, $a3, $a0
	sub.d	$a1, $zero, $a1
	srl.w	$a1, $a1, $a2
	slli.d	$a1, $a1, 2
	ldx.w	$a1, $a3, $a1
	bge	$a0, $a1, .LBB1_22
# %bb.10:
	addi.d	$s0, $s0, 16
	ori	$s1, $zero, 3
	.p2align	4, , 16
.LBB1_11:                               # =>This Inner Loop Header: Depth=1
	ld.d	$s0, $s0, 0
	beqz	$s0, .LBB1_25
# %bb.12:                               #   in Loop: Header=BB1_11 Depth=1
	ld.d	$a1, $s0, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(rpos_GreaterEqual)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $zero
	beq	$a1, $s1, .LBB1_11
	b	.LBB1_4
.LBB1_13:
	ld.d	$a0, $fp, 16
	pcaddu18i	$ra, %call36(list_Copy)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, 16
	pcalau12i	$a2, %pc_hi20(rpos_Equal)
	addi.d	$a2, $a2, %pc_lo12(rpos_Equal)
	pcaddu18i	$ra, %call36(list_NMultisetDifference)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_36
# %bb.14:
	move	$s1, $a0
	ld.d	$a0, $s0, 16
	pcaddu18i	$ra, %call36(list_Copy)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 16
	pcalau12i	$a2, %pc_hi20(rpos_Equal)
	addi.d	$a2, $a2, %pc_lo12(rpos_Equal)
	pcaddu18i	$ra, %call36(list_NMultisetDifference)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_37
# %bb.15:                               # %.preheader90.preheader
	move	$fp, $a0
	pcalau12i	$a0, %got_pc_hi20(memory_ARRAY)
	ld.d	$s0, $a0, %got_pc_lo12(memory_ARRAY)
	pcalau12i	$a0, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$s2, $a0, %got_pc_lo12(memory_FREEDBYTES)
	ori	$s3, $zero, 3
	.p2align	4, , 16
.LBB1_16:                               # %.preheader90
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_17 Depth 2
	move	$s4, $s1
	.p2align	4, , 16
.LBB1_17:                               #   Parent Loop BB1_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $s4, 8
	ld.d	$a1, $fp, 8
	pcaddu18i	$ra, %call36(rpos_GreaterEqual)
	jirl	$ra, $ra, 0
	ld.d	$s4, $s4, 0
	beqz	$s4, .LBB1_19
# %bb.18:                               #   in Loop: Header=BB1_17 Depth=2
	bne	$a0, $s3, .LBB1_17
.LBB1_19:                               #   in Loop: Header=BB1_16 Depth=1
	ld.d	$a2, $s0, 128
	ld.w	$a3, $a2, 32
	ld.d	$a4, $s2, 0
	ld.d	$a1, $fp, 0
	add.d	$a3, $a4, $a3
	st.d	$a3, $s2, 0
	ld.d	$a2, $a2, 0
	st.d	$a2, $fp, 0
	ld.d	$a2, $s0, 128
	st.d	$fp, $a2, 0
	beqz	$a1, .LBB1_21
# %bb.20:                               #   in Loop: Header=BB1_16 Depth=1
	move	$fp, $a1
	beq	$a0, $s3, .LBB1_16
.LBB1_21:                               # %.lr.ph.i.preheader.loopexit
	addi.d	$a0, $a0, -3
	sltui	$a0, $a0, 1
	ori	$a1, $zero, 3
	maskeqz	$a0, $a1, $a0
	b	.LBB1_38
.LBB1_22:
	addi.d	$fp, $fp, 16
	.p2align	4, , 16
.LBB1_23:                               # =>This Inner Loop Header: Depth=1
	ld.d	$fp, $fp, 0
	beqz	$fp, .LBB1_26
# %bb.24:                               #   in Loop: Header=BB1_23 Depth=1
	ld.d	$a0, $fp, 8
	move	$a1, $s0
	pcaddu18i	$ra, %call36(rpos_GreaterEqual)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	ori	$a0, $zero, 3
	beqz	$a1, .LBB1_23
	b	.LBB1_4
.LBB1_25:
	ori	$a0, $zero, 3
	b	.LBB1_4
.LBB1_26:
	move	$a0, $zero
	b	.LBB1_4
.LBB1_27:
	move	$a0, $s2
	pcaddu18i	$ra, %call36(list_Reverse)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, 16
	move	$s2, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(list_Reverse)
	jirl	$ra, $ra, 0
	move	$s1, $a0
.LBB1_28:
	beqz	$s2, .LBB1_32
# %bb.29:                               # %.lr.ph.preheader
	ori	$s7, $zero, 2
	move	$s5, $s1
	move	$s6, $s2
	.p2align	4, , 16
.LBB1_30:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s6, 8
	ld.d	$a1, $s5, 8
	pcaddu18i	$ra, %call36(rpos_GreaterEqual)
	jirl	$ra, $ra, 0
	bne	$a0, $s7, .LBB1_33
# %bb.31:                               #   in Loop: Header=BB1_30 Depth=1
	ld.d	$s6, $s6, 0
	ld.d	$s5, $s5, 0
	bnez	$s6, .LBB1_30
.LBB1_32:
	ori	$a0, $zero, 2
	b	.LBB1_46
.LBB1_33:                               # %.lr.ph
	ori	$s7, $zero, 3
	bne	$a0, $s7, .LBB1_40
.LBB1_34:                               # %.preheader88
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$s5, $s5, 0
	beqz	$s5, .LBB1_45
# %bb.35:                               #   in Loop: Header=BB1_34 Depth=1
	ld.d	$a1, $s5, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(rpos_GreaterEqual)
	jirl	$ra, $ra, 0
	beq	$a0, $s7, .LBB1_34
	b	.LBB1_44
.LBB1_36:
	ori	$a0, $zero, 2
	b	.LBB1_4
.LBB1_37:
	ori	$a0, $zero, 3
.LBB1_38:                               # %.lr.ph.i.preheader
	pcalau12i	$a1, %got_pc_hi20(memory_ARRAY)
	ld.d	$a1, $a1, %got_pc_lo12(memory_ARRAY)
	pcalau12i	$a2, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$a2, $a2, %got_pc_lo12(memory_FREEDBYTES)
	.p2align	4, , 16
.LBB1_39:                               # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $a1, 128
	ld.w	$a4, $a3, 32
	ld.d	$a5, $a2, 0
	ld.d	$a6, $s1, 0
	add.d	$a4, $a5, $a4
	st.d	$a4, $a2, 0
	ld.d	$a3, $a3, 0
	st.d	$a3, $s1, 0
	ld.d	$a3, $a1, 128
	st.d	$s1, $a3, 0
	move	$s1, $a6
	bnez	$a6, .LBB1_39
	b	.LBB1_4
.LBB1_40:                               # %.preheader
	ld.d	$s5, $s6, 0
	beqz	$s5, .LBB1_44
.LBB1_41:                               # %.lr.ph110
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s5, 8
	move	$a1, $s0
	pcaddu18i	$ra, %call36(rpos_GreaterEqual)
	jirl	$ra, $ra, 0
	ld.d	$s5, $s5, 0
	beqz	$s5, .LBB1_43
# %bb.42:                               # %.lr.ph110
                                        #   in Loop: Header=BB1_41 Depth=1
	beqz	$a0, .LBB1_41
.LBB1_43:                               # %.critedge2.i.loopexit
	sltu	$a0, $zero, $a0
	ori	$a1, $zero, 3
	maskeqz	$a0, $a1, $a0
	b	.LBB1_46
.LBB1_44:
	move	$a0, $zero
	b	.LBB1_46
.LBB1_45:
	ori	$a0, $zero, 3
.LBB1_46:                               # %.critedge2.i
	ld.w	$a1, $fp, 0
	ld.d	$a2, $s4, 0
	sub.d	$a1, $zero, $a1
	sra.w	$a1, $a1, $s3
	slli.d	$a1, $a1, 3
	ldx.d	$a1, $a2, $a1
	ld.bu	$a1, $a1, 20
	andi	$a1, $a1, 8
	beqz	$a1, .LBB1_4
# %bb.47:
	beqz	$s2, .LBB1_50
# %bb.48:                               # %.lr.ph.i64.preheader
	pcalau12i	$a1, %got_pc_hi20(memory_ARRAY)
	ld.d	$a1, $a1, %got_pc_lo12(memory_ARRAY)
	pcalau12i	$a2, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$a2, $a2, %got_pc_lo12(memory_FREEDBYTES)
	.p2align	4, , 16
.LBB1_49:                               # %.lr.ph.i64
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $a1, 128
	ld.w	$a4, $a3, 32
	ld.d	$a5, $a2, 0
	ld.d	$a6, $s2, 0
	add.d	$a4, $a5, $a4
	st.d	$a4, $a2, 0
	ld.d	$a3, $a3, 0
	st.d	$a3, $s2, 0
	ld.d	$a3, $a1, 128
	st.d	$s2, $a3, 0
	move	$s2, $a6
	bnez	$a6, .LBB1_49
.LBB1_50:                               # %list_Delete.exit68
	beqz	$s1, .LBB1_4
# %bb.51:                               # %.lr.ph.i58.preheader
	pcalau12i	$a1, %got_pc_hi20(memory_ARRAY)
	ld.d	$a1, $a1, %got_pc_lo12(memory_ARRAY)
	pcalau12i	$a2, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$a2, $a2, %got_pc_lo12(memory_FREEDBYTES)
	.p2align	4, , 16
.LBB1_52:                               # %.lr.ph.i58
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $a1, 128
	ld.w	$a4, $a3, 32
	ld.d	$a5, $a2, 0
	ld.d	$a6, $s1, 0
	add.d	$a4, $a5, $a4
	st.d	$a4, $a2, 0
	ld.d	$a3, $a3, 0
	st.d	$a3, $s1, 0
	ld.d	$a3, $a1, 128
	st.d	$s1, $a3, 0
	move	$s1, $a6
	bnez	$a6, .LBB1_52
	b	.LBB1_4
.Lfunc_end1:
	.size	rpos_GreaterEqual, .Lfunc_end1-rpos_GreaterEqual
                                        # -- End function
	.globl	rpos_Compare                    # -- Begin function rpos_Compare
	.p2align	5
	.type	rpos_Compare,@function
rpos_Compare:                           # @rpos_Compare
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$s0, $a1
	move	$fp, $a0
	pcaddu18i	$ra, %call36(rpos_GreaterEqual)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB2_2
# %bb.1:
	move	$a0, $s0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(rpos_GreaterEqual)
	jirl	$ra, $ra, 0
	addi.d	$a0, $a0, -3
	sltui	$a0, $a0, 1
.LBB2_2:
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end2:
	.size	rpos_Compare, .Lfunc_end2-rpos_Compare
                                        # -- End function
	.globl	rpos_ContEqual                  # -- Begin function rpos_ContEqual
	.p2align	5
	.type	rpos_ContEqual,@function
rpos_ContEqual:                         # @rpos_ContEqual
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	ld.w	$a4, $a1, 0
	ori	$a5, $zero, 1
	move	$fp, $a2
	move	$s0, $a0
	blt	$a4, $a5, .LBB3_7
# %bb.1:                                # %.lr.ph.i.preheader
	pcalau12i	$a0, %got_pc_hi20(cont_INSTANCECONTEXT)
	ld.d	$a0, $a0, %got_pc_lo12(cont_INSTANCECONTEXT)
	ld.d	$a0, $a0, 0
	beq	$s0, $a0, .LBB3_7
# %bb.2:                                # %.lr.ph.preheader
	slli.d	$a2, $a4, 5
	add.d	$a2, $s0, $a2
	ld.d	$a6, $a2, 8
	beqz	$a6, .LBB3_7
# %bb.3:
	ori	$a2, $zero, 1
	.p2align	4, , 16
.LBB3_4:                                # %.lr.ph89
                                        # =>This Inner Loop Header: Depth=1
	move	$a1, $a6
	slli.d	$a4, $a4, 5
	add.d	$a6, $s0, $a4
	ld.w	$a4, $a1, 0
	ld.d	$s0, $a6, 16
	blt	$a4, $a2, .LBB3_7
# %bb.5:                                # %.lr.ph89
                                        #   in Loop: Header=BB3_4 Depth=1
	beq	$s0, $a0, .LBB3_7
# %bb.6:                                # %.lr.ph
                                        #   in Loop: Header=BB3_4 Depth=1
	slli.d	$a6, $a4, 5
	add.d	$a6, $s0, $a6
	ld.d	$a6, $a6, 8
	bnez	$a6, .LBB3_4
.LBB3_7:                                # %cont_Deref.exit
	ld.w	$a0, $a3, 0
	blt	$a0, $a5, .LBB3_14
# %bb.8:                                # %.lr.ph.i35.preheader
	pcalau12i	$a2, %got_pc_hi20(cont_INSTANCECONTEXT)
	ld.d	$a2, $a2, %got_pc_lo12(cont_INSTANCECONTEXT)
	ld.d	$a2, $a2, 0
	beq	$fp, $a2, .LBB3_14
# %bb.9:                                # %.lr.ph68.preheader
	slli.d	$a5, $a0, 5
	add.d	$a5, $fp, $a5
	ld.d	$a6, $a5, 8
	beqz	$a6, .LBB3_14
# %bb.10:
	ori	$a5, $zero, 1
	.p2align	4, , 16
.LBB3_11:                               # %.lr.ph97
                                        # =>This Inner Loop Header: Depth=1
	move	$a3, $a6
	slli.d	$a0, $a0, 5
	add.d	$a6, $fp, $a0
	ld.w	$a0, $a3, 0
	ld.d	$fp, $a6, 16
	blt	$a0, $a5, .LBB3_14
# %bb.12:                               # %.lr.ph97
                                        #   in Loop: Header=BB3_11 Depth=1
	beq	$fp, $a2, .LBB3_14
# %bb.13:                               # %.lr.ph68
                                        #   in Loop: Header=BB3_11 Depth=1
	slli.d	$a6, $a0, 5
	add.d	$a6, $fp, $a6
	ld.d	$a6, $a6, 8
	bnez	$a6, .LBB3_11
.LBB3_14:                               # %cont_Deref.exit42
	bne	$a4, $a0, .LBB3_24
# %bb.15:
	ld.d	$s1, $a1, 16
	ori	$a2, $zero, 1
	beqz	$s1, .LBB3_25
# %bb.16:
	pcalau12i	$a0, %got_pc_hi20(symbol_TYPESTATBITS)
	ld.d	$a0, $a0, %got_pc_lo12(symbol_TYPESTATBITS)
	pcalau12i	$a2, %got_pc_hi20(symbol_SIGNATURE)
	ld.d	$a2, $a2, %got_pc_lo12(symbol_SIGNATURE)
	ld.wu	$a0, $a0, 0
	ld.d	$a2, $a2, 0
	sub.d	$a4, $zero, $a4
	sra.w	$a0, $a4, $a0
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $a2, $a0
	ld.bu	$a0, $a0, 20
	andi	$a0, $a0, 16
	bnez	$a0, .LBB3_21
# %bb.17:
	addi.d	$s2, $a3, 16
	.p2align	4, , 16
.LBB3_18:                               # =>This Inner Loop Header: Depth=1
	ld.d	$s2, $s2, 0
	ld.d	$a1, $s1, 8
	ld.d	$a3, $s2, 8
	move	$a0, $s0
	move	$a2, $fp
	pcaddu18i	$ra, %call36(rpos_ContEqual)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_24
# %bb.19:                               #   in Loop: Header=BB3_18 Depth=1
	ld.d	$s1, $s1, 0
	bnez	$s1, .LBB3_18
# %bb.20:
	ori	$a2, $zero, 1
	b	.LBB3_25
.LBB3_21:
	move	$a0, $s0
	move	$a2, $fp
	pcaddu18i	$ra, %call36(rpos_ContMultisetDifference)
	jirl	$ra, $ra, 0
	ori	$a2, $zero, 1
	beqz	$a0, .LBB3_25
# %bb.22:                               # %.lr.ph.i43.preheader
	pcalau12i	$a1, %got_pc_hi20(memory_ARRAY)
	ld.d	$a1, $a1, %got_pc_lo12(memory_ARRAY)
	pcalau12i	$a2, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$a2, $a2, %got_pc_lo12(memory_FREEDBYTES)
	.p2align	4, , 16
.LBB3_23:                               # %.lr.ph.i43
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $a1, 128
	ld.w	$a4, $a3, 32
	ld.d	$a5, $a2, 0
	ld.d	$a6, $a0, 0
	add.d	$a4, $a5, $a4
	st.d	$a4, $a2, 0
	ld.d	$a3, $a3, 0
	st.d	$a3, $a0, 0
	ld.d	$a3, $a1, 128
	st.d	$a0, $a3, 0
	move	$a0, $a6
	bnez	$a6, .LBB3_23
.LBB3_24:
	move	$a2, $zero
.LBB3_25:                               # %list_Delete.exit
	move	$a0, $a2
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end3:
	.size	rpos_ContEqual, .Lfunc_end3-rpos_ContEqual
                                        # -- End function
	.p2align	5                               # -- Begin function rpos_ContMultisetDifference
	.type	rpos_ContMultisetDifference,@function
rpos_ContMultisetDifference:            # @rpos_ContMultisetDifference
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	ld.d	$a1, $a1, 16
	move	$s1, $a3
	move	$fp, $a2
	move	$s0, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(list_Copy)
	jirl	$ra, $ra, 0
	ld.d	$s2, $s1, 16
	move	$s1, $a0
	beqz	$s2, .LBB4_2
# %bb.1:
	bnez	$s1, .LBB4_5
.LBB4_2:                                # %._crit_edge
	move	$a0, $s1
	move	$a1, $zero
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	pcaddu18i	$t8, %call36(list_PointerDeleteElement)
	jr	$t8
	.p2align	4, , 16
.LBB4_3:                                #   in Loop: Header=BB4_5 Depth=1
	st.d	$zero, $s3, 8
.LBB4_4:                                # %..loopexit_crit_edge
                                        #   in Loop: Header=BB4_5 Depth=1
	ld.d	$s2, $s2, 0
	beqz	$s2, .LBB4_2
.LBB4_5:                                # %.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_7 Depth 2
	move	$s3, $s1
	b	.LBB4_7
	.p2align	4, , 16
.LBB4_6:                                #   in Loop: Header=BB4_7 Depth=2
	ld.d	$s3, $s3, 0
	beqz	$s3, .LBB4_4
.LBB4_7:                                #   Parent Loop BB4_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a1, $s3, 8
	beqz	$a1, .LBB4_6
# %bb.8:                                #   in Loop: Header=BB4_7 Depth=2
	ld.d	$a3, $s2, 8
	move	$a0, $s0
	move	$a2, $fp
	pcaddu18i	$ra, %call36(rpos_ContEqual)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB4_6
	b	.LBB4_3
.Lfunc_end4:
	.size	rpos_ContMultisetDifference, .Lfunc_end4-rpos_ContMultisetDifference
                                        # -- End function
	.globl	rpos_ContGreaterEqual           # -- Begin function rpos_ContGreaterEqual
	.p2align	5
	.type	rpos_ContGreaterEqual,@function
rpos_ContGreaterEqual:                  # @rpos_ContGreaterEqual
# %bb.0:
	addi.d	$sp, $sp, -96
	st.d	$ra, $sp, 88                    # 8-byte Folded Spill
	st.d	$fp, $sp, 80                    # 8-byte Folded Spill
	st.d	$s0, $sp, 72                    # 8-byte Folded Spill
	st.d	$s1, $sp, 64                    # 8-byte Folded Spill
	st.d	$s2, $sp, 56                    # 8-byte Folded Spill
	st.d	$s3, $sp, 48                    # 8-byte Folded Spill
	st.d	$s4, $sp, 40                    # 8-byte Folded Spill
	st.d	$s5, $sp, 32                    # 8-byte Folded Spill
	st.d	$s6, $sp, 24                    # 8-byte Folded Spill
	st.d	$s7, $sp, 16                    # 8-byte Folded Spill
	st.d	$s8, $sp, 8                     # 8-byte Folded Spill
	move	$s1, $a1
	ld.w	$a1, $a1, 0
	ori	$a4, $zero, 1
	move	$s2, $a3
	move	$s0, $a2
	move	$fp, $a0
	blt	$a1, $a4, .LBB5_7
# %bb.1:                                # %.lr.ph.i.preheader
	pcalau12i	$a0, %got_pc_hi20(cont_INSTANCECONTEXT)
	ld.d	$a0, $a0, %got_pc_lo12(cont_INSTANCECONTEXT)
	ld.d	$a0, $a0, 0
	beq	$fp, $a0, .LBB5_7
# %bb.2:                                # %.lr.ph.preheader
	slli.d	$a2, $a1, 5
	add.d	$a2, $fp, $a2
	ld.d	$a3, $a2, 8
	beqz	$a3, .LBB5_7
# %bb.3:
	ori	$a2, $zero, 1
	.p2align	4, , 16
.LBB5_4:                                # %.lr.ph232
                                        # =>This Inner Loop Header: Depth=1
	move	$s1, $a3
	slli.d	$a1, $a1, 5
	add.d	$a3, $fp, $a1
	ld.w	$a1, $s1, 0
	ld.d	$fp, $a3, 16
	blt	$a1, $a2, .LBB5_7
# %bb.5:                                # %.lr.ph232
                                        #   in Loop: Header=BB5_4 Depth=1
	beq	$fp, $a0, .LBB5_7
# %bb.6:                                # %.lr.ph
                                        #   in Loop: Header=BB5_4 Depth=1
	slli.d	$a3, $a1, 5
	add.d	$a3, $fp, $a3
	ld.d	$a3, $a3, 8
	bnez	$a3, .LBB5_4
.LBB5_7:                                # %cont_Deref.exit
	ld.w	$a2, $s2, 0
	blt	$a2, $a4, .LBB5_14
# %bb.8:                                # %.lr.ph.i54.preheader
	pcalau12i	$a0, %got_pc_hi20(cont_INSTANCECONTEXT)
	ld.d	$a0, $a0, %got_pc_lo12(cont_INSTANCECONTEXT)
	ld.d	$a0, $a0, 0
	beq	$s0, $a0, .LBB5_14
# %bb.9:                                # %.lr.ph139.preheader
	slli.d	$a3, $a2, 5
	add.d	$a3, $s0, $a3
	ld.d	$a4, $a3, 8
	beqz	$a4, .LBB5_14
# %bb.10:
	ori	$a3, $zero, 1
	.p2align	4, , 16
.LBB5_11:                               # %.lr.ph240
                                        # =>This Inner Loop Header: Depth=1
	move	$s2, $a4
	slli.d	$a2, $a2, 5
	add.d	$a4, $s0, $a2
	ld.w	$a2, $s2, 0
	ld.d	$s0, $a4, 16
	blt	$a2, $a3, .LBB5_14
# %bb.12:                               # %.lr.ph240
                                        #   in Loop: Header=BB5_11 Depth=1
	beq	$s0, $a0, .LBB5_14
# %bb.13:                               # %.lr.ph139
                                        #   in Loop: Header=BB5_11 Depth=1
	slli.d	$a4, $a2, 5
	add.d	$a4, $s0, $a4
	ld.d	$a4, $a4, 8
	bnez	$a4, .LBB5_11
.LBB5_14:                               # %cont_Deref.exit61
	ori	$a0, $zero, 1
	blt	$a1, $a0, .LBB5_16
# %bb.15:
	xor	$a0, $a1, $a2
	sltui	$a0, $a0, 1
	slli.d	$a0, $a0, 1
	b	.LBB5_18
.LBB5_16:
	blt	$a2, $a0, .LBB5_19
# %bb.17:
	move	$a0, $fp
	move	$a1, $s1
	pcaddu18i	$ra, %call36(cont_TermContainsSymbol)
	jirl	$ra, $ra, 0
	sltui	$a0, $a0, 1
	ori	$a1, $zero, 3
	masknez	$a0, $a1, $a0
.LBB5_18:                               # %rpos_ContMulGreaterEqual.exit
	ld.d	$s8, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s7, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
	ret
.LBB5_19:
	pcalau12i	$a0, %got_pc_hi20(symbol_TYPESTATBITS)
	ld.d	$a0, $a0, %got_pc_lo12(symbol_TYPESTATBITS)
	bne	$a1, $a2, .LBB5_23
# %bb.20:
	pcalau12i	$a2, %got_pc_hi20(symbol_SIGNATURE)
	ld.d	$s6, $a2, %got_pc_lo12(symbol_SIGNATURE)
	ld.wu	$s5, $a0, 0
	ld.d	$a0, $s6, 0
	sub.d	$a1, $zero, $a1
	srl.w	$a1, $a1, $s5
	slli.d	$a1, $a1, 3
	ldx.d	$a0, $a0, $a1
	ld.wu	$a0, $a0, 20
	andi	$a1, $a0, 16
	bnez	$a1, .LBB5_27
# %bb.21:
	ld.d	$s4, $s1, 16
	andi	$a0, $a0, 8
	bnez	$a0, .LBB5_57
# %bb.22:
	ld.d	$s3, $s2, 16
	b	.LBB5_58
.LBB5_23:
	pcalau12i	$a3, %got_pc_hi20(ord_PRECEDENCE)
	ld.d	$a3, $a3, %got_pc_lo12(ord_PRECEDENCE)
	ld.wu	$a0, $a0, 0
	ld.d	$a3, $a3, 0
	sub.d	$a1, $zero, $a1
	srl.w	$a1, $a1, $a0
	slli.d	$a1, $a1, 2
	ldx.w	$a1, $a3, $a1
	sub.d	$a2, $zero, $a2
	srl.w	$a0, $a2, $a0
	slli.d	$a0, $a0, 2
	ldx.w	$a0, $a3, $a0
	bge	$a1, $a0, .LBB5_52
# %bb.24:
	addi.d	$s2, $s2, 16
	ori	$s3, $zero, 3
	.p2align	4, , 16
.LBB5_25:                               # =>This Inner Loop Header: Depth=1
	ld.d	$s2, $s2, 0
	beqz	$s2, .LBB5_55
# %bb.26:                               #   in Loop: Header=BB5_25 Depth=1
	ld.d	$a3, $s2, 8
	move	$a0, $fp
	move	$a1, $s1
	move	$a2, $s0
	pcaddu18i	$ra, %call36(rpos_ContGreaterEqual)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $zero
	beq	$a1, $s3, .LBB5_25
	b	.LBB5_18
.LBB5_27:
	ld.d	$a0, $s1, 16
	pcaddu18i	$ra, %call36(list_Copy)
	jirl	$ra, $ra, 0
	ld.d	$s4, $s2, 16
	move	$s3, $a0
	beqz	$s4, .LBB5_29
# %bb.28:
	bnez	$s3, .LBB5_42
.LBB5_29:                               # %rpos_ContMultisetDifference.exit
	move	$a0, $s3
	move	$a1, $zero
	pcaddu18i	$ra, %call36(list_PointerDeleteElement)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_67
# %bb.30:
	move	$s3, $a0
	ld.d	$a0, $s2, 16
	pcaddu18i	$ra, %call36(list_Copy)
	jirl	$ra, $ra, 0
	ld.d	$s2, $s1, 16
	move	$s1, $a0
	beqz	$s2, .LBB5_32
# %bb.31:
	bnez	$s1, .LBB5_48
.LBB5_32:                               # %rpos_ContMultisetDifference.exit214
	move	$a0, $s1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(list_PointerDeleteElement)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_69
# %bb.33:                               # %.preheader119.preheader
	move	$s1, $a0
	pcalau12i	$a0, %got_pc_hi20(memory_ARRAY)
	ld.d	$s2, $a0, %got_pc_lo12(memory_ARRAY)
	pcalau12i	$a0, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$s4, $a0, %got_pc_lo12(memory_FREEDBYTES)
	ori	$s5, $zero, 3
	.p2align	4, , 16
.LBB5_34:                               # %.preheader119
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_35 Depth 2
	move	$s6, $s3
	.p2align	4, , 16
.LBB5_35:                               #   Parent Loop BB5_34 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a1, $s6, 8
	ld.d	$a3, $s1, 8
	move	$a0, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(rpos_ContGreaterEqual)
	jirl	$ra, $ra, 0
	ld.d	$s6, $s6, 0
	beqz	$s6, .LBB5_37
# %bb.36:                               #   in Loop: Header=BB5_35 Depth=2
	bne	$a0, $s5, .LBB5_35
.LBB5_37:                               #   in Loop: Header=BB5_34 Depth=1
	ld.d	$a2, $s2, 128
	ld.w	$a3, $a2, 32
	ld.d	$a4, $s4, 0
	ld.d	$a1, $s1, 0
	add.d	$a3, $a4, $a3
	st.d	$a3, $s4, 0
	ld.d	$a2, $a2, 0
	st.d	$a2, $s1, 0
	ld.d	$a2, $s2, 128
	st.d	$s1, $a2, 0
	beqz	$a1, .LBB5_39
# %bb.38:                               #   in Loop: Header=BB5_34 Depth=1
	move	$s1, $a1
	beq	$a0, $s5, .LBB5_34
.LBB5_39:                               # %.lr.ph.i66.preheader.loopexit
	addi.d	$a0, $a0, -3
	sltui	$a0, $a0, 1
	ori	$a1, $zero, 3
	maskeqz	$a0, $a1, $a0
	b	.LBB5_70
	.p2align	4, , 16
.LBB5_40:                               #   in Loop: Header=BB5_42 Depth=1
	st.d	$zero, $s5, 8
.LBB5_41:                               # %..loopexit_crit_edge.i
                                        #   in Loop: Header=BB5_42 Depth=1
	ld.d	$s4, $s4, 0
	beqz	$s4, .LBB5_29
.LBB5_42:                               # %.preheader.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_44 Depth 2
	move	$s5, $s3
	b	.LBB5_44
	.p2align	4, , 16
.LBB5_43:                               #   in Loop: Header=BB5_44 Depth=2
	ld.d	$s5, $s5, 0
	beqz	$s5, .LBB5_41
.LBB5_44:                               #   Parent Loop BB5_42 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a1, $s5, 8
	beqz	$a1, .LBB5_43
# %bb.45:                               #   in Loop: Header=BB5_44 Depth=2
	ld.d	$a3, $s4, 8
	move	$a0, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(rpos_ContEqual)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_43
	b	.LBB5_40
.LBB5_46:                               #   in Loop: Header=BB5_48 Depth=1
	st.d	$zero, $s4, 8
.LBB5_47:                               # %..loopexit_crit_edge.i210
                                        #   in Loop: Header=BB5_48 Depth=1
	ld.d	$s2, $s2, 0
	beqz	$s2, .LBB5_32
.LBB5_48:                               # %.preheader.i203
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_50 Depth 2
	move	$s4, $s1
	b	.LBB5_50
	.p2align	4, , 16
.LBB5_49:                               #   in Loop: Header=BB5_50 Depth=2
	ld.d	$s4, $s4, 0
	beqz	$s4, .LBB5_47
.LBB5_50:                               #   Parent Loop BB5_48 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a1, $s4, 8
	beqz	$a1, .LBB5_49
# %bb.51:                               #   in Loop: Header=BB5_50 Depth=2
	ld.d	$a3, $s2, 8
	move	$a0, $s0
	move	$a2, $fp
	pcaddu18i	$ra, %call36(rpos_ContEqual)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_49
	b	.LBB5_46
.LBB5_52:
	addi.d	$s1, $s1, 16
	.p2align	4, , 16
.LBB5_53:                               # =>This Inner Loop Header: Depth=1
	ld.d	$s1, $s1, 0
	beqz	$s1, .LBB5_56
# %bb.54:                               #   in Loop: Header=BB5_53 Depth=1
	ld.d	$a1, $s1, 8
	move	$a0, $fp
	move	$a2, $s0
	move	$a3, $s2
	pcaddu18i	$ra, %call36(rpos_ContGreaterEqual)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	ori	$a0, $zero, 3
	beqz	$a1, .LBB5_53
	b	.LBB5_18
.LBB5_55:
	ori	$a0, $zero, 3
	b	.LBB5_18
.LBB5_56:
	move	$a0, $zero
	b	.LBB5_18
.LBB5_57:
	move	$a0, $s4
	pcaddu18i	$ra, %call36(list_Reverse)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s2, 16
	move	$s4, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(list_Reverse)
	jirl	$ra, $ra, 0
	move	$s3, $a0
.LBB5_58:
	beqz	$s4, .LBB5_68
# %bb.59:                               # %.lr.ph153.preheader
	st.d	$s5, $sp, 0                     # 8-byte Folded Spill
	ori	$s5, $zero, 2
	move	$s7, $s3
	move	$s8, $s4
	.p2align	4, , 16
.LBB5_60:                               # %.lr.ph153
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s8, 8
	ld.d	$a3, $s7, 8
	move	$a0, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(rpos_ContGreaterEqual)
	jirl	$ra, $ra, 0
	bne	$a0, $s5, .LBB5_63
# %bb.61:                               #   in Loop: Header=BB5_60 Depth=1
	ld.d	$s8, $s8, 0
	ld.d	$s7, $s7, 0
	bnez	$s8, .LBB5_60
# %bb.62:
	ori	$a0, $zero, 2
	ld.d	$s5, $sp, 0                     # 8-byte Folded Reload
	b	.LBB5_78
.LBB5_63:                               # %.lr.ph153
	ori	$s5, $zero, 3
	bne	$a0, $s5, .LBB5_72
.LBB5_64:                               # %.preheader117
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$s7, $s7, 0
	beqz	$s7, .LBB5_76
# %bb.65:                               #   in Loop: Header=BB5_64 Depth=1
	ld.d	$a3, $s7, 8
	move	$a0, $fp
	move	$a1, $s1
	move	$a2, $s0
	pcaddu18i	$ra, %call36(rpos_ContGreaterEqual)
	jirl	$ra, $ra, 0
	beq	$a0, $s5, .LBB5_64
# %bb.66:
	move	$a0, $zero
	ld.d	$s5, $sp, 0                     # 8-byte Folded Reload
	b	.LBB5_78
.LBB5_67:
	ori	$a0, $zero, 2
	b	.LBB5_18
.LBB5_68:
	ori	$a0, $zero, 2
	b	.LBB5_78
.LBB5_69:
	ori	$a0, $zero, 3
.LBB5_70:                               # %.lr.ph.i66.preheader
	pcalau12i	$a1, %got_pc_hi20(memory_ARRAY)
	ld.d	$a1, $a1, %got_pc_lo12(memory_ARRAY)
	pcalau12i	$a2, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$a2, $a2, %got_pc_lo12(memory_FREEDBYTES)
	.p2align	4, , 16
.LBB5_71:                               # %.lr.ph.i66
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $a1, 128
	ld.w	$a4, $a3, 32
	ld.d	$a5, $a2, 0
	ld.d	$a6, $s3, 0
	add.d	$a4, $a5, $a4
	st.d	$a4, $a2, 0
	ld.d	$a3, $a3, 0
	st.d	$a3, $s3, 0
	ld.d	$a3, $a1, 128
	st.d	$s3, $a3, 0
	move	$s3, $a6
	bnez	$a6, .LBB5_71
	b	.LBB5_18
.LBB5_72:                               # %.preheader
	ld.d	$s7, $s8, 0
	ld.d	$s5, $sp, 0                     # 8-byte Folded Reload
	beqz	$s7, .LBB5_77
.LBB5_73:                               # %.lr.ph165
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s7, 8
	move	$a0, $fp
	move	$a2, $s0
	move	$a3, $s2
	pcaddu18i	$ra, %call36(rpos_ContGreaterEqual)
	jirl	$ra, $ra, 0
	ld.d	$s7, $s7, 0
	beqz	$s7, .LBB5_75
# %bb.74:                               # %.lr.ph165
                                        #   in Loop: Header=BB5_73 Depth=1
	beqz	$a0, .LBB5_73
.LBB5_75:                               # %.critedge2.i.loopexit
	sltu	$a0, $zero, $a0
	ori	$a1, $zero, 3
	maskeqz	$a0, $a1, $a0
	b	.LBB5_78
.LBB5_76:
	ori	$a0, $zero, 3
	ld.d	$s5, $sp, 0                     # 8-byte Folded Reload
	b	.LBB5_78
.LBB5_77:
	move	$a0, $zero
.LBB5_78:                               # %.critedge2.i
	ld.w	$a1, $s1, 0
	ld.d	$a2, $s6, 0
	sub.d	$a1, $zero, $a1
	sra.w	$a1, $a1, $s5
	slli.d	$a1, $a1, 3
	ldx.d	$a1, $a2, $a1
	ld.bu	$a1, $a1, 20
	andi	$a1, $a1, 8
	beqz	$a1, .LBB5_18
# %bb.79:
	beqz	$s4, .LBB5_82
# %bb.80:                               # %.lr.ph.i81.preheader
	pcalau12i	$a1, %got_pc_hi20(memory_ARRAY)
	ld.d	$a1, $a1, %got_pc_lo12(memory_ARRAY)
	pcalau12i	$a2, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$a2, $a2, %got_pc_lo12(memory_FREEDBYTES)
	.p2align	4, , 16
.LBB5_81:                               # %.lr.ph.i81
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $a1, 128
	ld.w	$a4, $a3, 32
	ld.d	$a5, $a2, 0
	ld.d	$a6, $s4, 0
	add.d	$a4, $a5, $a4
	st.d	$a4, $a2, 0
	ld.d	$a3, $a3, 0
	st.d	$a3, $s4, 0
	ld.d	$a3, $a1, 128
	st.d	$s4, $a3, 0
	move	$s4, $a6
	bnez	$a6, .LBB5_81
.LBB5_82:                               # %list_Delete.exit85
	beqz	$s3, .LBB5_18
# %bb.83:                               # %.lr.ph.i75.preheader
	pcalau12i	$a1, %got_pc_hi20(memory_ARRAY)
	ld.d	$a1, $a1, %got_pc_lo12(memory_ARRAY)
	pcalau12i	$a2, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$a2, $a2, %got_pc_lo12(memory_FREEDBYTES)
	.p2align	4, , 16
.LBB5_84:                               # %.lr.ph.i75
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $a1, 128
	ld.w	$a4, $a3, 32
	ld.d	$a5, $a2, 0
	ld.d	$a6, $s3, 0
	add.d	$a4, $a5, $a4
	st.d	$a4, $a2, 0
	ld.d	$a3, $a3, 0
	st.d	$a3, $s3, 0
	ld.d	$a3, $a1, 128
	st.d	$s3, $a3, 0
	move	$s3, $a6
	bnez	$a6, .LBB5_84
	b	.LBB5_18
.Lfunc_end5:
	.size	rpos_ContGreaterEqual, .Lfunc_end5-rpos_ContGreaterEqual
                                        # -- End function
	.globl	rpos_ContCompare                # -- Begin function rpos_ContCompare
	.p2align	5
	.type	rpos_ContCompare,@function
rpos_ContCompare:                       # @rpos_ContCompare
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a1
	ld.w	$a4, $a1, 0
	ori	$a1, $zero, 1
	move	$s2, $a3
	move	$s1, $a2
	move	$s0, $a0
	blt	$a4, $a1, .LBB6_7
# %bb.1:                                # %.lr.ph.i.preheader
	pcalau12i	$a0, %got_pc_hi20(cont_INSTANCECONTEXT)
	ld.d	$a0, $a0, %got_pc_lo12(cont_INSTANCECONTEXT)
	ld.d	$a0, $a0, 0
	beq	$s0, $a0, .LBB6_7
# %bb.2:                                # %.lr.ph.preheader
	slli.d	$a2, $a4, 5
	add.d	$a2, $s0, $a2
	ld.d	$a3, $a2, 8
	beqz	$a3, .LBB6_7
# %bb.3:
	ori	$a2, $zero, 1
	.p2align	4, , 16
.LBB6_4:                                # %.lr.ph52
                                        # =>This Inner Loop Header: Depth=1
	move	$fp, $a3
	slli.d	$a3, $a4, 5
	add.d	$a3, $s0, $a3
	ld.w	$a4, $fp, 0
	ld.d	$s0, $a3, 16
	blt	$a4, $a2, .LBB6_7
# %bb.5:                                # %.lr.ph52
                                        #   in Loop: Header=BB6_4 Depth=1
	beq	$s0, $a0, .LBB6_7
# %bb.6:                                # %.lr.ph
                                        #   in Loop: Header=BB6_4 Depth=1
	slli.d	$a3, $a4, 5
	add.d	$a3, $s0, $a3
	ld.d	$a3, $a3, 8
	bnez	$a3, .LBB6_4
.LBB6_7:                                # %cont_Deref.exit
	ld.w	$a0, $s2, 0
	blt	$a0, $a1, .LBB6_14
# %bb.8:                                # %.lr.ph.i12.preheader
	pcalau12i	$a1, %got_pc_hi20(cont_INSTANCECONTEXT)
	ld.d	$a1, $a1, %got_pc_lo12(cont_INSTANCECONTEXT)
	ld.d	$a1, $a1, 0
	beq	$s1, $a1, .LBB6_14
# %bb.9:                                # %.lr.ph41.preheader
	slli.d	$a2, $a0, 5
	add.d	$a2, $s1, $a2
	ld.d	$a3, $a2, 8
	beqz	$a3, .LBB6_14
# %bb.10:
	ori	$a2, $zero, 1
	.p2align	4, , 16
.LBB6_11:                               # %.lr.ph58
                                        # =>This Inner Loop Header: Depth=1
	move	$s2, $a3
	slli.d	$a0, $a0, 5
	add.d	$a3, $s1, $a0
	ld.w	$a0, $s2, 0
	ld.d	$s1, $a3, 16
	blt	$a0, $a2, .LBB6_14
# %bb.12:                               # %.lr.ph58
                                        #   in Loop: Header=BB6_11 Depth=1
	beq	$s1, $a1, .LBB6_14
# %bb.13:                               # %.lr.ph41
                                        #   in Loop: Header=BB6_11 Depth=1
	slli.d	$a3, $a0, 5
	add.d	$a3, $s1, $a3
	ld.d	$a3, $a3, 8
	bnez	$a3, .LBB6_11
.LBB6_14:                               # %cont_Deref.exit19
	move	$a0, $s0
	move	$a1, $fp
	move	$a2, $s1
	move	$a3, $s2
	pcaddu18i	$ra, %call36(rpos_ContGreaterEqual)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB6_16
# %bb.15:
	move	$a0, $s1
	move	$a1, $s2
	move	$a2, $s0
	move	$a3, $fp
	pcaddu18i	$ra, %call36(rpos_ContGreaterEqual)
	jirl	$ra, $ra, 0
	addi.d	$a0, $a0, -3
	sltui	$a0, $a0, 1
.LBB6_16:
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end6:
	.size	rpos_ContCompare, .Lfunc_end6-rpos_ContCompare
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym rpos_Equal
