	.file	"me_fullfast.c"
	.text
	.globl	InitializeFastFullIntegerSearch # -- Begin function InitializeFastFullIntegerSearch
	.p2align	5
	.type	InitializeFastFullIntegerSearch,@function
InitializeFastFullIntegerSearch:        # @InitializeFastFullIntegerSearch
# %bb.0:
	addi.d	$sp, $sp, -128
	st.d	$ra, $sp, 120                   # 8-byte Folded Spill
	st.d	$fp, $sp, 112                   # 8-byte Folded Spill
	st.d	$s0, $sp, 104                   # 8-byte Folded Spill
	st.d	$s1, $sp, 96                    # 8-byte Folded Spill
	st.d	$s2, $sp, 88                    # 8-byte Folded Spill
	st.d	$s3, $sp, 80                    # 8-byte Folded Spill
	st.d	$s4, $sp, 72                    # 8-byte Folded Spill
	st.d	$s5, $sp, 64                    # 8-byte Folded Spill
	st.d	$s6, $sp, 56                    # 8-byte Folded Spill
	st.d	$s7, $sp, 48                    # 8-byte Folded Spill
	st.d	$s8, $sp, 40                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(input)
	ld.d	$a0, $a0, %got_pc_lo12(input)
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	ld.d	$a0, $a0, 0
	ld.w	$a0, $a0, 28
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	slli.d	$a0, $a0, 1
	addi.d	$a0, $a0, 1
	mul.w	$fp, $a0, $a0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	pcalau12i	$s6, %pc_hi20(BlockSAD)
	st.d	$a0, $s6, %pc_lo12(BlockSAD)
	bnez	$a0, .LBB0_2
# %bb.1:
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$ra, %call36(no_mem_exit)
	jirl	$ra, $ra, 0
	ld.d	$s1, $s6, %pc_lo12(BlockSAD)
.LBB0_2:
	slli.d	$fp, $fp, 2
	pcalau12i	$a0, %got_pc_hi20(img)
	ld.d	$s5, $a0, %got_pc_lo12(img)
	ld.d	$a0, $s5, 0
	ori	$a2, $zero, 1
	pcalau12i	$a1, %pc_hi20(.L.str)
	addi.d	$s0, $a1, %pc_lo12(.L.str)
	move	$s2, $zero
	ori	$s8, $zero, 64
	st.d	$s5, $sp, 32                    # 8-byte Folded Spill
	b	.LBB0_4
	.p2align	4, , 16
.LBB0_3:                                # %._crit_edge
                                        #   in Loop: Header=BB0_4 Depth=1
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	andi	$a1, $a1, 1
	ori	$s2, $zero, 1
	move	$a2, $zero
	beqz	$a1, .LBB0_47
.LBB0_4:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_9 Depth 2
                                        #       Child Loop BB0_13 Depth 3
	st.d	$a2, $sp, 24                    # 8-byte Folded Spill
	ld.w	$a0, $a0, 32
	slli.d	$a0, $a0, 3
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	slli.d	$s4, $s2, 3
	stx.d	$a0, $s1, $s4
	beqz	$a0, .LBB0_6
# %bb.5:                                #   in Loop: Header=BB0_4 Depth=1
	ld.d	$a0, $s5, 0
	ld.w	$a1, $a0, 32
	bgtz	$a1, .LBB0_7
	b	.LBB0_3
	.p2align	4, , 16
.LBB0_6:                                #   in Loop: Header=BB0_4 Depth=1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(no_mem_exit)
	jirl	$ra, $ra, 0
	ld.d	$s1, $s6, %pc_lo12(BlockSAD)
	ld.d	$a0, $s5, 0
	ld.w	$a1, $a0, 32
	blez	$a1, .LBB0_3
.LBB0_7:                                # %.lr.ph.preheader
                                        #   in Loop: Header=BB0_4 Depth=1
	move	$s3, $zero
	b	.LBB0_9
	.p2align	4, , 16
.LBB0_8:                                #   in Loop: Header=BB0_9 Depth=2
	ld.d	$s5, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a0, $s5, 0
	ld.w	$a1, $a0, 32
	addi.d	$s3, $s3, 1
	bge	$s3, $a1, .LBB0_3
.LBB0_9:                                # %.lr.ph
                                        #   Parent Loop BB0_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_13 Depth 3
	ori	$a0, $zero, 64
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ldx.d	$a1, $s1, $s4
	slli.d	$s7, $s3, 3
	stx.d	$a0, $a1, $s7
	bnez	$a0, .LBB0_11
# %bb.10:                               #   in Loop: Header=BB0_9 Depth=2
	move	$a0, $s0
	pcaddu18i	$ra, %call36(no_mem_exit)
	jirl	$ra, $ra, 0
	ld.d	$s1, $s6, %pc_lo12(BlockSAD)
.LBB0_11:                               # %.preheader
                                        #   in Loop: Header=BB0_9 Depth=2
	ori	$s5, $zero, 8
	b	.LBB0_13
	.p2align	4, , 16
.LBB0_12:                               #   in Loop: Header=BB0_13 Depth=3
	addi.d	$s5, $s5, 8
	beq	$s5, $s8, .LBB0_8
.LBB0_13:                               #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ori	$a0, $zero, 128
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ldx.d	$a1, $s1, $s4
	ldx.d	$a1, $a1, $s7
	move	$s2, $a0
	stx.d	$a0, $a1, $s5
	beqz	$a0, .LBB0_30
# %bb.14:                               #   in Loop: Header=BB0_13 Depth=3
	move	$a0, $fp
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s2, 0
	beqz	$a0, .LBB0_31
.LBB0_15:                               #   in Loop: Header=BB0_13 Depth=3
	move	$a0, $fp
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s2, 8
	beqz	$a0, .LBB0_32
.LBB0_16:                               #   in Loop: Header=BB0_13 Depth=3
	move	$a0, $fp
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s2, 16
	beqz	$a0, .LBB0_33
.LBB0_17:                               #   in Loop: Header=BB0_13 Depth=3
	move	$a0, $fp
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s2, 24
	beqz	$a0, .LBB0_34
.LBB0_18:                               #   in Loop: Header=BB0_13 Depth=3
	move	$a0, $fp
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s2, 32
	beqz	$a0, .LBB0_35
.LBB0_19:                               #   in Loop: Header=BB0_13 Depth=3
	move	$a0, $fp
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s2, 40
	beqz	$a0, .LBB0_36
.LBB0_20:                               #   in Loop: Header=BB0_13 Depth=3
	move	$a0, $fp
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s2, 48
	beqz	$a0, .LBB0_37
.LBB0_21:                               #   in Loop: Header=BB0_13 Depth=3
	move	$a0, $fp
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s2, 56
	beqz	$a0, .LBB0_38
.LBB0_22:                               #   in Loop: Header=BB0_13 Depth=3
	move	$a0, $fp
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s2, 64
	beqz	$a0, .LBB0_39
.LBB0_23:                               #   in Loop: Header=BB0_13 Depth=3
	move	$a0, $fp
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s2, 72
	beqz	$a0, .LBB0_40
.LBB0_24:                               #   in Loop: Header=BB0_13 Depth=3
	move	$a0, $fp
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s2, 80
	beqz	$a0, .LBB0_41
.LBB0_25:                               #   in Loop: Header=BB0_13 Depth=3
	move	$a0, $fp
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s2, 88
	beqz	$a0, .LBB0_42
.LBB0_26:                               #   in Loop: Header=BB0_13 Depth=3
	move	$a0, $fp
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s2, 96
	beqz	$a0, .LBB0_43
.LBB0_27:                               #   in Loop: Header=BB0_13 Depth=3
	move	$a0, $fp
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s2, 104
	beqz	$a0, .LBB0_44
.LBB0_28:                               #   in Loop: Header=BB0_13 Depth=3
	move	$a0, $fp
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s2, 112
	beqz	$a0, .LBB0_45
.LBB0_29:                               #   in Loop: Header=BB0_13 Depth=3
	move	$a0, $fp
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s2, 120
	bnez	$a0, .LBB0_12
	b	.LBB0_46
	.p2align	4, , 16
.LBB0_30:                               #   in Loop: Header=BB0_13 Depth=3
	move	$a0, $s0
	pcaddu18i	$ra, %call36(no_mem_exit)
	jirl	$ra, $ra, 0
	ld.d	$s1, $s6, %pc_lo12(BlockSAD)
	ldx.d	$a0, $s1, $s4
	ldx.d	$a0, $a0, $s7
	ldx.d	$s2, $a0, $s5
	move	$a0, $fp
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s2, 0
	bnez	$a0, .LBB0_15
.LBB0_31:                               #   in Loop: Header=BB0_13 Depth=3
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$ra, %call36(no_mem_exit)
	jirl	$ra, $ra, 0
	ld.d	$s1, $s6, %pc_lo12(BlockSAD)
	ldx.d	$a0, $s1, $s4
	ldx.d	$a0, $a0, $s7
	ldx.d	$s2, $a0, $s5
	move	$a0, $fp
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s2, 8
	bnez	$a0, .LBB0_16
.LBB0_32:                               #   in Loop: Header=BB0_13 Depth=3
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$ra, %call36(no_mem_exit)
	jirl	$ra, $ra, 0
	ld.d	$s1, $s6, %pc_lo12(BlockSAD)
	ldx.d	$a0, $s1, $s4
	ldx.d	$a0, $a0, $s7
	ldx.d	$s2, $a0, $s5
	move	$a0, $fp
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s2, 16
	bnez	$a0, .LBB0_17
.LBB0_33:                               #   in Loop: Header=BB0_13 Depth=3
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$ra, %call36(no_mem_exit)
	jirl	$ra, $ra, 0
	ld.d	$s1, $s6, %pc_lo12(BlockSAD)
	ldx.d	$a0, $s1, $s4
	ldx.d	$a0, $a0, $s7
	ldx.d	$s2, $a0, $s5
	move	$a0, $fp
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s2, 24
	bnez	$a0, .LBB0_18
.LBB0_34:                               #   in Loop: Header=BB0_13 Depth=3
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$ra, %call36(no_mem_exit)
	jirl	$ra, $ra, 0
	ld.d	$s1, $s6, %pc_lo12(BlockSAD)
	ldx.d	$a0, $s1, $s4
	ldx.d	$a0, $a0, $s7
	ldx.d	$s2, $a0, $s5
	move	$a0, $fp
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s2, 32
	bnez	$a0, .LBB0_19
.LBB0_35:                               #   in Loop: Header=BB0_13 Depth=3
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$ra, %call36(no_mem_exit)
	jirl	$ra, $ra, 0
	ld.d	$s1, $s6, %pc_lo12(BlockSAD)
	ldx.d	$a0, $s1, $s4
	ldx.d	$a0, $a0, $s7
	ldx.d	$s2, $a0, $s5
	move	$a0, $fp
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s2, 40
	bnez	$a0, .LBB0_20
.LBB0_36:                               #   in Loop: Header=BB0_13 Depth=3
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$ra, %call36(no_mem_exit)
	jirl	$ra, $ra, 0
	ld.d	$s1, $s6, %pc_lo12(BlockSAD)
	ldx.d	$a0, $s1, $s4
	ldx.d	$a0, $a0, $s7
	ldx.d	$s2, $a0, $s5
	move	$a0, $fp
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s2, 48
	bnez	$a0, .LBB0_21
.LBB0_37:                               #   in Loop: Header=BB0_13 Depth=3
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$ra, %call36(no_mem_exit)
	jirl	$ra, $ra, 0
	ld.d	$s1, $s6, %pc_lo12(BlockSAD)
	ldx.d	$a0, $s1, $s4
	ldx.d	$a0, $a0, $s7
	ldx.d	$s2, $a0, $s5
	move	$a0, $fp
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s2, 56
	bnez	$a0, .LBB0_22
.LBB0_38:                               #   in Loop: Header=BB0_13 Depth=3
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$ra, %call36(no_mem_exit)
	jirl	$ra, $ra, 0
	ld.d	$s1, $s6, %pc_lo12(BlockSAD)
	ldx.d	$a0, $s1, $s4
	ldx.d	$a0, $a0, $s7
	ldx.d	$s2, $a0, $s5
	move	$a0, $fp
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s2, 64
	bnez	$a0, .LBB0_23
.LBB0_39:                               #   in Loop: Header=BB0_13 Depth=3
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$ra, %call36(no_mem_exit)
	jirl	$ra, $ra, 0
	ld.d	$s1, $s6, %pc_lo12(BlockSAD)
	ldx.d	$a0, $s1, $s4
	ldx.d	$a0, $a0, $s7
	ldx.d	$s2, $a0, $s5
	move	$a0, $fp
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s2, 72
	bnez	$a0, .LBB0_24
.LBB0_40:                               #   in Loop: Header=BB0_13 Depth=3
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$ra, %call36(no_mem_exit)
	jirl	$ra, $ra, 0
	ld.d	$s1, $s6, %pc_lo12(BlockSAD)
	ldx.d	$a0, $s1, $s4
	ldx.d	$a0, $a0, $s7
	ldx.d	$s2, $a0, $s5
	move	$a0, $fp
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s2, 80
	bnez	$a0, .LBB0_25
.LBB0_41:                               #   in Loop: Header=BB0_13 Depth=3
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$ra, %call36(no_mem_exit)
	jirl	$ra, $ra, 0
	ld.d	$s1, $s6, %pc_lo12(BlockSAD)
	ldx.d	$a0, $s1, $s4
	ldx.d	$a0, $a0, $s7
	ldx.d	$s2, $a0, $s5
	move	$a0, $fp
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s2, 88
	bnez	$a0, .LBB0_26
.LBB0_42:                               #   in Loop: Header=BB0_13 Depth=3
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$ra, %call36(no_mem_exit)
	jirl	$ra, $ra, 0
	ld.d	$s1, $s6, %pc_lo12(BlockSAD)
	ldx.d	$a0, $s1, $s4
	ldx.d	$a0, $a0, $s7
	ldx.d	$s2, $a0, $s5
	move	$a0, $fp
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s2, 96
	bnez	$a0, .LBB0_27
.LBB0_43:                               #   in Loop: Header=BB0_13 Depth=3
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$ra, %call36(no_mem_exit)
	jirl	$ra, $ra, 0
	ld.d	$s1, $s6, %pc_lo12(BlockSAD)
	ldx.d	$a0, $s1, $s4
	ldx.d	$a0, $a0, $s7
	ldx.d	$s2, $a0, $s5
	move	$a0, $fp
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s2, 104
	bnez	$a0, .LBB0_28
.LBB0_44:                               #   in Loop: Header=BB0_13 Depth=3
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$ra, %call36(no_mem_exit)
	jirl	$ra, $ra, 0
	ld.d	$s1, $s6, %pc_lo12(BlockSAD)
	ldx.d	$a0, $s1, $s4
	ldx.d	$a0, $a0, $s7
	ldx.d	$s2, $a0, $s5
	move	$a0, $fp
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s2, 112
	bnez	$a0, .LBB0_29
.LBB0_45:                               #   in Loop: Header=BB0_13 Depth=3
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$ra, %call36(no_mem_exit)
	jirl	$ra, $ra, 0
	ld.d	$s1, $s6, %pc_lo12(BlockSAD)
	ldx.d	$a0, $s1, $s4
	ldx.d	$a0, $a0, $s7
	ldx.d	$s2, $a0, $s5
	move	$a0, $fp
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s2, 120
	bnez	$a0, .LBB0_12
.LBB0_46:                               #   in Loop: Header=BB0_13 Depth=3
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$ra, %call36(no_mem_exit)
	jirl	$ra, $ra, 0
	ld.d	$s1, $s6, %pc_lo12(BlockSAD)
	b	.LBB0_12
.LBB0_47:
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	pcalau12i	$s4, %pc_hi20(search_setup_done)
	st.d	$a0, $s4, %pc_lo12(search_setup_done)
	bnez	$a0, .LBB0_49
# %bb.48:
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	pcaddu18i	$ra, %call36(no_mem_exit)
	jirl	$ra, $ra, 0
.LBB0_49:
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	pcalau12i	$s3, %pc_hi20(search_center_x)
	st.d	$a0, $s3, %pc_lo12(search_center_x)
	bnez	$a0, .LBB0_51
# %bb.50:
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	pcaddu18i	$ra, %call36(no_mem_exit)
	jirl	$ra, $ra, 0
.LBB0_51:
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	pcalau12i	$s2, %pc_hi20(search_center_y)
	st.d	$a0, $s2, %pc_lo12(search_center_y)
	bnez	$a0, .LBB0_53
# %bb.52:
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
	pcaddu18i	$ra, %call36(no_mem_exit)
	jirl	$ra, $ra, 0
.LBB0_53:
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	pcalau12i	$s1, %pc_hi20(pos_00)
	st.d	$a0, $s1, %pc_lo12(pos_00)
	bnez	$a0, .LBB0_55
# %bb.54:
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a0, $a0, %pc_lo12(.L.str.4)
	pcaddu18i	$ra, %call36(no_mem_exit)
	jirl	$ra, $ra, 0
.LBB0_55:
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	pcalau12i	$s0, %pc_hi20(max_search_range)
	st.d	$a0, $s0, %pc_lo12(max_search_range)
	bnez	$a0, .LBB0_57
# %bb.56:
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a0, $a0, %pc_lo12(.L.str.5)
	pcaddu18i	$ra, %call36(no_mem_exit)
	jirl	$ra, $ra, 0
.LBB0_57:
	ld.d	$a0, $s5, 0
	ld.w	$a0, $a0, 32
	slli.d	$a0, $a0, 2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s4, %pc_lo12(search_setup_done)
	st.d	$a0, $a1, 0
	bnez	$a0, .LBB0_59
# %bb.58:
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	pcaddu18i	$ra, %call36(no_mem_exit)
	jirl	$ra, $ra, 0
.LBB0_59:
	ld.d	$a0, $s5, 0
	ld.w	$a0, $a0, 32
	slli.d	$a0, $a0, 2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s3, %pc_lo12(search_center_x)
	st.d	$a0, $a1, 0
	bnez	$a0, .LBB0_61
# %bb.60:
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	pcaddu18i	$ra, %call36(no_mem_exit)
	jirl	$ra, $ra, 0
.LBB0_61:
	ld.d	$a0, $s5, 0
	ld.w	$a0, $a0, 32
	slli.d	$a0, $a0, 2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s2, %pc_lo12(search_center_y)
	st.d	$a0, $a1, 0
	bnez	$a0, .LBB0_63
# %bb.62:
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
	pcaddu18i	$ra, %call36(no_mem_exit)
	jirl	$ra, $ra, 0
.LBB0_63:
	ld.d	$a0, $s5, 0
	ld.w	$a0, $a0, 32
	slli.d	$a0, $a0, 2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, %pc_lo12(pos_00)
	st.d	$a0, $a1, 0
	bnez	$a0, .LBB0_65
# %bb.64:
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a0, $a0, %pc_lo12(.L.str.4)
	pcaddu18i	$ra, %call36(no_mem_exit)
	jirl	$ra, $ra, 0
.LBB0_65:
	ld.d	$a0, $s5, 0
	ld.w	$a0, $a0, 32
	slli.d	$a0, $a0, 2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, %pc_lo12(max_search_range)
	st.d	$a0, $a1, 0
	bnez	$a0, .LBB0_67
# %bb.66:
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a0, $a0, %pc_lo12(.L.str.5)
	pcaddu18i	$ra, %call36(no_mem_exit)
	jirl	$ra, $ra, 0
.LBB0_67:
	ld.d	$a0, $s5, 0
	ld.w	$a0, $a0, 32
	slli.d	$fp, $a0, 2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s4, %pc_lo12(search_setup_done)
	st.d	$a0, $a1, 8
	bnez	$a0, .LBB0_69
# %bb.68:
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	pcaddu18i	$ra, %call36(no_mem_exit)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, 0
	ld.w	$a0, $a0, 32
	slli.d	$fp, $a0, 2
.LBB0_69:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s3, %pc_lo12(search_center_x)
	st.d	$a0, $a1, 8
	bnez	$a0, .LBB0_71
# %bb.70:
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	pcaddu18i	$ra, %call36(no_mem_exit)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, 0
	ld.w	$a0, $a0, 32
	slli.d	$fp, $a0, 2
.LBB0_71:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s2, %pc_lo12(search_center_y)
	st.d	$a0, $a1, 8
	bnez	$a0, .LBB0_73
# %bb.72:
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
	pcaddu18i	$ra, %call36(no_mem_exit)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, 0
	ld.w	$a0, $a0, 32
	slli.d	$fp, $a0, 2
.LBB0_73:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, %pc_lo12(pos_00)
	st.d	$a0, $a1, 8
	bnez	$a0, .LBB0_75
# %bb.74:
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a0, $a0, %pc_lo12(.L.str.4)
	pcaddu18i	$ra, %call36(no_mem_exit)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, 0
	ld.w	$a0, $a0, 32
	slli.d	$fp, $a0, 2
.LBB0_75:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, %pc_lo12(max_search_range)
	st.d	$a0, $a1, 8
	bnez	$a0, .LBB0_77
# %bb.76:
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a0, $a0, %pc_lo12(.L.str.5)
	pcaddu18i	$ra, %call36(no_mem_exit)
	jirl	$ra, $ra, 0
.LBB0_77:
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ldptr.w	$a0, $a0, 4140
	ori	$a3, $zero, 2
	bne	$a0, $a3, .LBB0_84
# %bb.78:                               # %.preheader49
	ld.d	$a0, $s5, 0
	ld.w	$a1, $a0, 32
	ld.d	$a5, $sp, 16                    # 8-byte Folded Reload
	blez	$a1, .LBB0_90
# %bb.79:                               # %.lr.ph63
	ld.d	$a1, $s0, %pc_lo12(max_search_range)
	ld.d	$a2, $a1, 0
	move	$a3, $zero
	.p2align	4, , 16
.LBB0_80:                               # =>This Inner Loop Header: Depth=1
	st.w	$a5, $a2, 0
	ld.w	$a4, $a0, 32
	addi.d	$a3, $a3, 1
	addi.d	$a2, $a2, 4
	blt	$a3, $a4, .LBB0_80
# %bb.81:                               # %._crit_edge64
	blez	$a4, .LBB0_90
# %bb.82:                               # %.lr.ph63.1
	ld.d	$a1, $a1, 8
	move	$a2, $zero
	.p2align	4, , 16
.LBB0_83:                               # =>This Inner Loop Header: Depth=1
	st.w	$a5, $a1, 0
	ld.w	$a3, $a0, 32
	addi.d	$a2, $a2, 1
	addi.d	$a1, $a1, 4
	blt	$a2, $a3, .LBB0_83
	b	.LBB0_90
.LBB0_84:                               # %.preheader50
	ld.d	$a2, $s0, %pc_lo12(max_search_range)
	ld.d	$a4, $a2, 0
	ld.d	$a0, $s5, 0
	ld.d	$a6, $sp, 16                    # 8-byte Folded Reload
	st.w	$a6, $a4, 0
	ld.w	$a5, $a0, 32
	bstrpick.d	$a1, $a6, 31, 31
	add.w	$a1, $a6, $a1
	srai.d	$a1, $a1, 1
	blt	$a5, $a3, .LBB0_87
# %bb.85:                               # %.lr.ph59.preheader
	addi.d	$a3, $a4, 4
	ori	$a4, $zero, 1
	.p2align	4, , 16
.LBB0_86:                               # %.lr.ph59
                                        # =>This Inner Loop Header: Depth=1
	st.w	$a1, $a3, 0
	ld.w	$a5, $a0, 32
	addi.d	$a4, $a4, 1
	addi.d	$a3, $a3, 4
	blt	$a4, $a5, .LBB0_86
.LBB0_87:                               # %._crit_edge60
	ld.d	$a2, $a2, 8
	st.w	$a6, $a2, 0
	ld.w	$a3, $a0, 32
	ori	$a4, $zero, 2
	blt	$a3, $a4, .LBB0_90
# %bb.88:                               # %.lr.ph59.1.preheader
	addi.d	$a2, $a2, 4
	ori	$a3, $zero, 1
	.p2align	4, , 16
.LBB0_89:                               # %.lr.ph59.1
                                        # =>This Inner Loop Header: Depth=1
	st.w	$a1, $a2, 0
	ld.w	$a4, $a0, 32
	addi.d	$a3, $a3, 1
	addi.d	$a2, $a2, 4
	blt	$a3, $a4, .LBB0_89
.LBB0_90:                               # %.loopexit
	ld.d	$s8, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 112                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 120                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 128
	ret
.Lfunc_end0:
	.size	InitializeFastFullIntegerSearch, .Lfunc_end0-InitializeFastFullIntegerSearch
                                        # -- End function
	.globl	ClearFastFullIntegerSearch      # -- Begin function ClearFastFullIntegerSearch
	.p2align	5
	.type	ClearFastFullIntegerSearch,@function
ClearFastFullIntegerSearch:             # @ClearFastFullIntegerSearch
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
	ori	$s1, $zero, 1
	pcalau12i	$a0, %got_pc_hi20(img)
	ld.d	$s0, $a0, %got_pc_lo12(img)
	move	$s4, $zero
	pcalau12i	$s2, %pc_hi20(BlockSAD)
	ori	$s3, $zero, 64
	b	.LBB1_2
	.p2align	4, , 16
.LBB1_1:                                # %._crit_edge
                                        #   in Loop: Header=BB1_2 Depth=1
	ldx.d	$a0, $fp, $s5
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	andi	$a0, $s1, 1
	ori	$s4, $zero, 1
	move	$s1, $zero
	beqz	$a0, .LBB1_7
.LBB1_2:                                # %.preheader29
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_4 Depth 2
                                        #       Child Loop BB1_5 Depth 3
	ld.d	$a0, $s0, 0
	ld.w	$a0, $a0, 32
	ld.d	$fp, $s2, %pc_lo12(BlockSAD)
	slli.d	$s5, $s4, 3
	blez	$a0, .LBB1_1
# %bb.3:                                # %.preheader28.preheader
                                        #   in Loop: Header=BB1_2 Depth=1
	move	$s6, $zero
	.p2align	4, , 16
.LBB1_4:                                # %.preheader28
                                        #   Parent Loop BB1_2 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_5 Depth 3
	ori	$s8, $zero, 8
	slli.d	$s7, $s6, 3
	.p2align	4, , 16
.LBB1_5:                                # %.preheader
                                        #   Parent Loop BB1_2 Depth=1
                                        #     Parent Loop BB1_4 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ldx.d	$a0, $fp, $s5
	ldx.d	$a0, $a0, $s7
	ldx.d	$a0, $a0, $s8
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, %pc_lo12(BlockSAD)
	ldx.d	$a0, $a0, $s5
	ldx.d	$a0, $a0, $s7
	ldx.d	$a0, $a0, $s8
	ld.d	$a0, $a0, 8
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, %pc_lo12(BlockSAD)
	ldx.d	$a0, $a0, $s5
	ldx.d	$a0, $a0, $s7
	ldx.d	$a0, $a0, $s8
	ld.d	$a0, $a0, 16
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, %pc_lo12(BlockSAD)
	ldx.d	$a0, $a0, $s5
	ldx.d	$a0, $a0, $s7
	ldx.d	$a0, $a0, $s8
	ld.d	$a0, $a0, 24
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, %pc_lo12(BlockSAD)
	ldx.d	$a0, $a0, $s5
	ldx.d	$a0, $a0, $s7
	ldx.d	$a0, $a0, $s8
	ld.d	$a0, $a0, 32
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, %pc_lo12(BlockSAD)
	ldx.d	$a0, $a0, $s5
	ldx.d	$a0, $a0, $s7
	ldx.d	$a0, $a0, $s8
	ld.d	$a0, $a0, 40
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, %pc_lo12(BlockSAD)
	ldx.d	$a0, $a0, $s5
	ldx.d	$a0, $a0, $s7
	ldx.d	$a0, $a0, $s8
	ld.d	$a0, $a0, 48
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, %pc_lo12(BlockSAD)
	ldx.d	$a0, $a0, $s5
	ldx.d	$a0, $a0, $s7
	ldx.d	$a0, $a0, $s8
	ld.d	$a0, $a0, 56
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, %pc_lo12(BlockSAD)
	ldx.d	$a0, $a0, $s5
	ldx.d	$a0, $a0, $s7
	ldx.d	$a0, $a0, $s8
	ld.d	$a0, $a0, 64
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, %pc_lo12(BlockSAD)
	ldx.d	$a0, $a0, $s5
	ldx.d	$a0, $a0, $s7
	ldx.d	$a0, $a0, $s8
	ld.d	$a0, $a0, 72
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, %pc_lo12(BlockSAD)
	ldx.d	$a0, $a0, $s5
	ldx.d	$a0, $a0, $s7
	ldx.d	$a0, $a0, $s8
	ld.d	$a0, $a0, 80
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, %pc_lo12(BlockSAD)
	ldx.d	$a0, $a0, $s5
	ldx.d	$a0, $a0, $s7
	ldx.d	$a0, $a0, $s8
	ld.d	$a0, $a0, 88
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, %pc_lo12(BlockSAD)
	ldx.d	$a0, $a0, $s5
	ldx.d	$a0, $a0, $s7
	ldx.d	$a0, $a0, $s8
	ld.d	$a0, $a0, 96
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, %pc_lo12(BlockSAD)
	ldx.d	$a0, $a0, $s5
	ldx.d	$a0, $a0, $s7
	ldx.d	$a0, $a0, $s8
	ld.d	$a0, $a0, 104
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, %pc_lo12(BlockSAD)
	ldx.d	$a0, $a0, $s5
	ldx.d	$a0, $a0, $s7
	ldx.d	$a0, $a0, $s8
	ld.d	$a0, $a0, 112
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, %pc_lo12(BlockSAD)
	ldx.d	$a0, $a0, $s5
	ldx.d	$a0, $a0, $s7
	ldx.d	$a0, $a0, $s8
	ld.d	$a0, $a0, 120
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$fp, $s2, %pc_lo12(BlockSAD)
	ldx.d	$a0, $fp, $s5
	ldx.d	$a0, $a0, $s7
	ldx.d	$a0, $a0, $s8
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	addi.d	$s8, $s8, 8
	bne	$s8, $s3, .LBB1_5
# %bb.6:                                #   in Loop: Header=BB1_4 Depth=2
	alsl.d	$a0, $s4, $fp, 3
	ld.d	$a0, $a0, 0
	ldx.d	$a0, $a0, $s7
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 0
	ld.w	$a0, $a0, 32
	addi.d	$s6, $s6, 1
	blt	$s6, $a0, .LBB1_4
	b	.LBB1_1
.LBB1_7:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(search_setup_done)
	ld.d	$s3, $a0, %pc_lo12(search_setup_done)
	pcalau12i	$a0, %pc_hi20(search_center_x)
	ld.d	$s2, $a0, %pc_lo12(search_center_x)
	pcalau12i	$a0, %pc_hi20(search_center_y)
	ld.d	$s1, $a0, %pc_lo12(search_center_y)
	pcalau12i	$a0, %pc_hi20(pos_00)
	ld.d	$s0, $a0, %pc_lo12(pos_00)
	pcalau12i	$a0, %pc_hi20(max_search_range)
	ld.d	$fp, $a0, %pc_lo12(max_search_range)
	ld.d	$a0, $s3, 0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, 8
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 8
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 8
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 8
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 8
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $fp
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
	pcaddu18i	$t8, %call36(free)
	jr	$t8
.Lfunc_end1:
	.size	ClearFastFullIntegerSearch, .Lfunc_end1-ClearFastFullIntegerSearch
                                        # -- End function
	.globl	ResetFastFullIntegerSearch      # -- Begin function ResetFastFullIntegerSearch
	.p2align	5
	.type	ResetFastFullIntegerSearch,@function
ResetFastFullIntegerSearch:             # @ResetFastFullIntegerSearch
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(search_setup_done)
	ld.d	$fp, $a0, %pc_lo12(search_setup_done)
	ld.d	$a0, $fp, 0
	pcalau12i	$a1, %got_pc_hi20(img)
	ld.d	$s0, $a1, %got_pc_lo12(img)
	ld.d	$a1, $s0, 0
	ld.w	$a1, $a1, 32
	slli.d	$a2, $a1, 2
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 0
	ld.w	$a1, $a0, 32
	ld.d	$a0, $fp, 8
	slli.d	$a2, $a1, 2
	move	$a1, $zero
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(memset)
	jr	$t8
.Lfunc_end2:
	.size	ResetFastFullIntegerSearch, .Lfunc_end2-ResetFastFullIntegerSearch
                                        # -- End function
	.globl	SetupLargerBlocks               # -- Begin function SetupLargerBlocks
	.p2align	5
	.type	SetupLargerBlocks,@function
SetupLargerBlocks:                      # @SetupLargerBlocks
# %bb.0:
	blez	$a2, .LBB3_102
# %bb.1:                                # %.lr.ph.preheader
	addi.d	$sp, $sp, -144
	st.d	$ra, $sp, 136                   # 8-byte Folded Spill
	st.d	$fp, $sp, 128                   # 8-byte Folded Spill
	st.d	$s0, $sp, 120                   # 8-byte Folded Spill
	st.d	$s1, $sp, 112                   # 8-byte Folded Spill
	st.d	$s2, $sp, 104                   # 8-byte Folded Spill
	st.d	$s3, $sp, 96                    # 8-byte Folded Spill
	st.d	$s4, $sp, 88                    # 8-byte Folded Spill
	st.d	$s5, $sp, 80                    # 8-byte Folded Spill
	st.d	$s6, $sp, 72                    # 8-byte Folded Spill
	st.d	$s7, $sp, 64                    # 8-byte Folded Spill
	st.d	$s8, $sp, 56                    # 8-byte Folded Spill
	pcalau12i	$a3, %pc_hi20(BlockSAD)
	ld.d	$a3, $a3, %pc_lo12(BlockSAD)
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $a3, $a0
	slli.d	$a1, $a1, 3
	ldx.d	$a0, $a0, $a1
	ld.d	$t1, $a0, 48
	ld.d	$s1, $a0, 56
	ld.d	$t0, $t1, 0
	ld.d	$t8, $s1, 0
	ld.d	$t2, $s1, 32
	ori	$a1, $zero, 8
	bgeu	$a2, $a1, .LBB3_103
# %bb.2:
	move	$a3, $zero
.LBB3_3:                                # %.lr.ph.preheader1064
	alsl.d	$a1, $a3, $t0, 2
	alsl.d	$a4, $a3, $t2, 2
	alsl.d	$a5, $a3, $t8, 2
	sub.d	$a3, $a2, $a3
	.p2align	4, , 16
.LBB3_4:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a6, $a5, 0
	ld.w	$a7, $a4, 0
	add.d	$a6, $a7, $a6
	st.w	$a6, $a1, 0
	addi.d	$a1, $a1, 4
	addi.d	$a4, $a4, 4
	addi.d	$a3, $a3, -1
	addi.d	$a5, $a5, 4
	bnez	$a3, .LBB3_4
.LBB3_5:                                # %.lr.ph390.preheader
	st.d	$t0, $sp, 48                    # 8-byte Folded Spill
	ld.d	$t0, $t1, 8
	ld.d	$s2, $s1, 8
	ld.d	$t4, $s1, 40
	ori	$a1, $zero, 8
	bgeu	$a2, $a1, .LBB3_108
# %bb.6:
	move	$a4, $zero
.LBB3_7:                                # %.lr.ph390.preheader1063
	alsl.d	$a1, $a4, $t0, 2
	alsl.d	$a3, $a4, $t4, 2
	alsl.d	$a5, $a4, $s2, 2
	sub.d	$a4, $a2, $a4
	.p2align	4, , 16
.LBB3_8:                                # %.lr.ph390
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a6, $a5, 0
	ld.w	$a7, $a3, 0
	add.d	$a6, $a7, $a6
	st.w	$a6, $a1, 0
	addi.d	$a1, $a1, 4
	addi.d	$a3, $a3, 4
	addi.d	$a4, $a4, -1
	addi.d	$a5, $a5, 4
	bnez	$a4, .LBB3_8
.LBB3_9:                                # %.lr.ph394.preheader
	st.d	$t0, $sp, 40                    # 8-byte Folded Spill
	ld.d	$t0, $t1, 16
	ld.d	$s3, $s1, 16
	ld.d	$t5, $s1, 48
	ori	$a1, $zero, 8
	bgeu	$a2, $a1, .LBB3_113
# %bb.10:
	move	$a5, $zero
.LBB3_11:                               # %.lr.ph394.preheader1062
	alsl.d	$a1, $a5, $t0, 2
	alsl.d	$a3, $a5, $t5, 2
	alsl.d	$a4, $a5, $s3, 2
	sub.d	$a5, $a2, $a5
	.p2align	4, , 16
.LBB3_12:                               # %.lr.ph394
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a6, $a4, 0
	ld.w	$a7, $a3, 0
	add.d	$a6, $a7, $a6
	st.w	$a6, $a1, 0
	addi.d	$a1, $a1, 4
	addi.d	$a3, $a3, 4
	addi.d	$a5, $a5, -1
	addi.d	$a4, $a4, 4
	bnez	$a5, .LBB3_12
.LBB3_13:                               # %.lr.ph398.preheader
	ld.d	$t7, $t1, 24
	ld.d	$s7, $s1, 24
	ld.d	$fp, $s1, 56
	ori	$a1, $zero, 8
	bgeu	$a2, $a1, .LBB3_118
# %bb.14:
	move	$a6, $zero
.LBB3_15:                               # %.lr.ph398.preheader1061
	alsl.d	$a1, $a6, $t7, 2
	alsl.d	$a3, $a6, $fp, 2
	alsl.d	$a4, $a6, $s7, 2
	sub.d	$a5, $a2, $a6
	.p2align	4, , 16
.LBB3_16:                               # %.lr.ph398
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a6, $a4, 0
	ld.w	$a7, $a3, 0
	add.d	$a6, $a7, $a6
	st.w	$a6, $a1, 0
	addi.d	$a1, $a1, 4
	addi.d	$a3, $a3, 4
	addi.d	$a5, $a5, -1
	addi.d	$a4, $a4, 4
	bnez	$a5, .LBB3_16
.LBB3_17:                               # %.lr.ph402.preheader
	ld.d	$t6, $t1, 64
	ld.d	$s0, $s1, 64
	ld.d	$t3, $s1, 96
	ori	$a1, $zero, 8
	bgeu	$a2, $a1, .LBB3_123
# %bb.18:
	move	$a7, $zero
.LBB3_19:                               # %.lr.ph402.preheader1060
	alsl.d	$a1, $a7, $t6, 2
	alsl.d	$a3, $a7, $t3, 2
	alsl.d	$a4, $a7, $s0, 2
	sub.d	$a5, $a2, $a7
	.p2align	4, , 16
.LBB3_20:                               # %.lr.ph402
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a6, $a4, 0
	ld.w	$a7, $a3, 0
	add.d	$a6, $a7, $a6
	st.w	$a6, $a1, 0
	addi.d	$a1, $a1, 4
	addi.d	$a3, $a3, 4
	addi.d	$a5, $a5, -1
	addi.d	$a4, $a4, 4
	bnez	$a5, .LBB3_20
.LBB3_21:                               # %.lr.ph406.preheader
	st.d	$t6, $sp, 16                    # 8-byte Folded Spill
	st.d	$t0, $sp, 32                    # 8-byte Folded Spill
	ld.d	$a7, $t1, 72
	ld.d	$s4, $s1, 72
	ld.d	$t6, $s1, 104
	ori	$a1, $zero, 8
	bgeu	$a2, $a1, .LBB3_128
# %bb.22:
	move	$t0, $zero
.LBB3_23:                               # %.lr.ph406.preheader1059
	alsl.d	$a1, $t0, $a7, 2
	alsl.d	$a3, $t0, $t6, 2
	alsl.d	$a4, $t0, $s4, 2
	sub.d	$a5, $a2, $t0
	.p2align	4, , 16
.LBB3_24:                               # %.lr.ph406
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a6, $a4, 0
	ld.w	$t0, $a3, 0
	add.d	$a6, $t0, $a6
	st.w	$a6, $a1, 0
	addi.d	$a1, $a1, 4
	addi.d	$a3, $a3, 4
	addi.d	$a5, $a5, -1
	addi.d	$a4, $a4, 4
	bnez	$a5, .LBB3_24
.LBB3_25:                               # %.lr.ph410.preheader
	st.d	$t7, $sp, 24                    # 8-byte Folded Spill
	ld.d	$t0, $t1, 80
	ld.d	$s5, $s1, 80
	ld.d	$t7, $s1, 112
	ori	$a1, $zero, 8
	bgeu	$a2, $a1, .LBB3_133
# %bb.26:
	move	$s6, $zero
.LBB3_27:                               # %.lr.ph410.preheader1058
	alsl.d	$a1, $s6, $t0, 2
	alsl.d	$a3, $s6, $t7, 2
	alsl.d	$a4, $s6, $s5, 2
	sub.d	$a5, $a2, $s6
	.p2align	4, , 16
.LBB3_28:                               # %.lr.ph410
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a6, $a4, 0
	ld.w	$s6, $a3, 0
	add.d	$a6, $s6, $a6
	st.w	$a6, $a1, 0
	addi.d	$a1, $a1, 4
	addi.d	$a3, $a3, 4
	addi.d	$a5, $a5, -1
	addi.d	$a4, $a4, 4
	bnez	$a5, .LBB3_28
.LBB3_29:                               # %.lr.ph414.preheader
	ld.d	$t1, $t1, 88
	ld.d	$s8, $s1, 88
	ld.d	$s1, $s1, 120
	ori	$a1, $zero, 8
	bgeu	$a2, $a1, .LBB3_138
# %bb.30:
	move	$s6, $zero
.LBB3_31:                               # %.lr.ph414.preheader1057
	alsl.d	$a1, $s6, $t1, 2
	alsl.d	$a3, $s6, $s1, 2
	alsl.d	$a4, $s6, $s8, 2
	sub.d	$a5, $a2, $s6
	.p2align	4, , 16
.LBB3_32:                               # %.lr.ph414
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a6, $a4, 0
	ld.w	$s6, $a3, 0
	add.d	$a6, $s6, $a6
	st.w	$a6, $a1, 0
	addi.d	$a1, $a1, 4
	addi.d	$a3, $a3, 4
	addi.d	$a5, $a5, -1
	addi.d	$a4, $a4, 4
	bnez	$a5, .LBB3_32
.LBB3_33:                               # %.lr.ph418.preheader
	ld.d	$s6, $a0, 40
	ld.d	$ra, $s6, 0
	ori	$a1, $zero, 8
	bgeu	$a2, $a1, .LBB3_143
# %bb.34:
	move	$a6, $zero
.LBB3_35:                               # %.lr.ph418.preheader1056
	alsl.d	$a3, $a6, $ra, 2
	alsl.d	$a4, $a6, $s2, 2
	alsl.d	$a5, $a6, $t8, 2
	sub.d	$a1, $a2, $a6
	.p2align	4, , 16
.LBB3_36:                               # %.lr.ph418
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a6, $a5, 0
	ld.w	$t8, $a4, 0
	add.d	$a6, $t8, $a6
	st.w	$a6, $a3, 0
	addi.d	$a3, $a3, 4
	addi.d	$a4, $a4, 4
	addi.d	$a1, $a1, -1
	addi.d	$a5, $a5, 4
	bnez	$a1, .LBB3_36
.LBB3_37:                               # %.lr.ph422.preheader
	ld.d	$t8, $s6, 16
	ori	$a1, $zero, 8
	bgeu	$a2, $a1, .LBB3_148
# %bb.38:
	move	$a1, $zero
.LBB3_39:                               # %.lr.ph422.preheader1055
	alsl.d	$a3, $a1, $t8, 2
	alsl.d	$a4, $a1, $s7, 2
	alsl.d	$a5, $a1, $s3, 2
	sub.d	$a1, $a2, $a1
	.p2align	4, , 16
.LBB3_40:                               # %.lr.ph422
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a6, $a5, 0
	ld.w	$t8, $a4, 0
	add.d	$a6, $t8, $a6
	st.w	$a6, $a3, 0
	addi.d	$a3, $a3, 4
	addi.d	$a4, $a4, 4
	addi.d	$a1, $a1, -1
	addi.d	$a5, $a5, 4
	bnez	$a1, .LBB3_40
.LBB3_41:                               # %.lr.ph426.preheader
	ld.d	$t8, $s6, 32
	ori	$a1, $zero, 8
	bgeu	$a2, $a1, .LBB3_153
# %bb.42:
	move	$a1, $zero
.LBB3_43:                               # %.lr.ph426.preheader1054
	alsl.d	$a3, $a1, $t8, 2
	alsl.d	$a4, $a1, $t4, 2
	alsl.d	$a5, $a1, $t2, 2
	sub.d	$a1, $a2, $a1
	.p2align	4, , 16
.LBB3_44:                               # %.lr.ph426
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a6, $a5, 0
	ld.w	$t2, $a4, 0
	add.d	$a6, $t2, $a6
	st.w	$a6, $a3, 0
	addi.d	$a3, $a3, 4
	addi.d	$a4, $a4, 4
	addi.d	$a1, $a1, -1
	addi.d	$a5, $a5, 4
	bnez	$a1, .LBB3_44
.LBB3_45:                               # %.lr.ph430.preheader
	ld.d	$t2, $s6, 48
	ori	$a1, $zero, 8
	bgeu	$a2, $a1, .LBB3_158
# %bb.46:
	move	$a1, $zero
	ld.d	$t4, $sp, 48                    # 8-byte Folded Reload
.LBB3_47:                               # %.lr.ph430.preheader1053
	alsl.d	$a3, $a1, $t2, 2
	alsl.d	$a4, $a1, $fp, 2
	alsl.d	$a5, $a1, $t5, 2
	sub.d	$a1, $a2, $a1
	.p2align	4, , 16
.LBB3_48:                               # %.lr.ph430
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a6, $a5, 0
	ld.w	$t2, $a4, 0
	add.d	$a6, $t2, $a6
	st.w	$a6, $a3, 0
	addi.d	$a3, $a3, 4
	addi.d	$a4, $a4, 4
	addi.d	$a1, $a1, -1
	addi.d	$a5, $a5, 4
	bnez	$a1, .LBB3_48
.LBB3_49:                               # %.lr.ph434.preheader
	ld.d	$t2, $s6, 64
	ori	$a1, $zero, 8
	bgeu	$a2, $a1, .LBB3_163
# %bb.50:
	move	$a1, $zero
	ld.d	$t5, $sp, 40                    # 8-byte Folded Reload
.LBB3_51:                               # %.lr.ph434.preheader1052
	alsl.d	$a3, $a1, $t2, 2
	alsl.d	$a4, $a1, $s4, 2
	alsl.d	$a5, $a1, $s0, 2
	sub.d	$a1, $a2, $a1
	.p2align	4, , 16
.LBB3_52:                               # %.lr.ph434
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a6, $a5, 0
	ld.w	$t2, $a4, 0
	add.d	$a6, $t2, $a6
	st.w	$a6, $a3, 0
	addi.d	$a3, $a3, 4
	addi.d	$a4, $a4, 4
	addi.d	$a1, $a1, -1
	addi.d	$a5, $a5, 4
	bnez	$a1, .LBB3_52
.LBB3_53:                               # %.lr.ph438.preheader
	ld.d	$t2, $s6, 80
	ori	$a1, $zero, 8
	bgeu	$a2, $a1, .LBB3_168
# %bb.54:
	move	$a1, $zero
.LBB3_55:                               # %.lr.ph438.preheader1051
	alsl.d	$a3, $a1, $t2, 2
	alsl.d	$a4, $a1, $s8, 2
	alsl.d	$a5, $a1, $s5, 2
	sub.d	$a1, $a2, $a1
	.p2align	4, , 16
.LBB3_56:                               # %.lr.ph438
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a6, $a5, 0
	ld.w	$t2, $a4, 0
	add.d	$a6, $t2, $a6
	st.w	$a6, $a3, 0
	addi.d	$a3, $a3, 4
	addi.d	$a4, $a4, 4
	addi.d	$a1, $a1, -1
	addi.d	$a5, $a5, 4
	bnez	$a1, .LBB3_56
.LBB3_57:                               # %.lr.ph442.preheader
	ld.d	$t2, $s6, 96
	ori	$a1, $zero, 8
	bgeu	$a2, $a1, .LBB3_173
# %bb.58:
	move	$a1, $zero
.LBB3_59:                               # %.lr.ph442.preheader1050
	alsl.d	$a3, $a1, $t2, 2
	alsl.d	$a4, $a1, $t6, 2
	alsl.d	$a5, $a1, $t3, 2
	sub.d	$a1, $a2, $a1
	.p2align	4, , 16
.LBB3_60:                               # %.lr.ph442
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a6, $a5, 0
	ld.w	$t2, $a4, 0
	add.d	$a6, $t2, $a6
	st.w	$a6, $a3, 0
	addi.d	$a3, $a3, 4
	addi.d	$a4, $a4, 4
	addi.d	$a1, $a1, -1
	addi.d	$a5, $a5, 4
	bnez	$a1, .LBB3_60
.LBB3_61:                               # %.lr.ph446.preheader
	ld.d	$t2, $s6, 112
	ori	$a1, $zero, 8
	bgeu	$a2, $a1, .LBB3_178
# %bb.62:
	move	$a1, $zero
	ld.d	$t6, $sp, 32                    # 8-byte Folded Reload
.LBB3_63:                               # %.lr.ph446.preheader1049
	alsl.d	$a3, $a1, $t2, 2
	alsl.d	$a4, $a1, $s1, 2
	alsl.d	$a5, $a1, $t7, 2
	sub.d	$a1, $a2, $a1
	.p2align	4, , 16
.LBB3_64:                               # %.lr.ph446
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a6, $a5, 0
	ld.w	$t2, $a4, 0
	add.d	$a6, $t2, $a6
	st.w	$a6, $a3, 0
	addi.d	$a3, $a3, 4
	addi.d	$a4, $a4, 4
	addi.d	$a1, $a1, -1
	addi.d	$a5, $a5, 4
	bnez	$a1, .LBB3_64
.LBB3_65:                               # %.lr.ph450.preheader
	ld.d	$t3, $a0, 32
	ld.d	$t2, $t3, 0
	ori	$a1, $zero, 8
	bgeu	$a2, $a1, .LBB3_183
# %bb.66:
	move	$a1, $zero
	ld.d	$t7, $sp, 24                    # 8-byte Folded Reload
.LBB3_67:                               # %.lr.ph450.preheader1048
	alsl.d	$a3, $a1, $t2, 2
	alsl.d	$a4, $a1, $t5, 2
	alsl.d	$a5, $a1, $t4, 2
	sub.d	$a1, $a2, $a1
	.p2align	4, , 16
.LBB3_68:                               # %.lr.ph450
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a6, $a5, 0
	ld.w	$t4, $a4, 0
	add.d	$a6, $t4, $a6
	st.w	$a6, $a3, 0
	addi.d	$a3, $a3, 4
	addi.d	$a4, $a4, 4
	addi.d	$a1, $a1, -1
	addi.d	$a5, $a5, 4
	bnez	$a1, .LBB3_68
.LBB3_69:                               # %.lr.ph454.preheader
	ld.d	$a3, $t3, 16
	ori	$a1, $zero, 8
	bgeu	$a2, $a1, .LBB3_188
# %bb.70:
	move	$a1, $zero
.LBB3_71:                               # %.lr.ph454.preheader1047
	alsl.d	$a4, $a1, $a3, 2
	alsl.d	$a5, $a1, $t7, 2
	alsl.d	$t4, $a1, $t6, 2
	sub.d	$a1, $a2, $a1
	.p2align	4, , 16
.LBB3_72:                               # %.lr.ph454
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a6, $t4, 0
	ld.w	$t5, $a5, 0
	add.d	$a6, $t5, $a6
	st.w	$a6, $a4, 0
	addi.d	$a4, $a4, 4
	addi.d	$a5, $a5, 4
	addi.d	$a1, $a1, -1
	addi.d	$t4, $t4, 4
	bnez	$a1, .LBB3_72
.LBB3_73:                               # %.lr.ph458.preheader
	ld.d	$a1, $t3, 64
	ori	$a4, $zero, 8
	bgeu	$a2, $a4, .LBB3_193
# %bb.74:
	move	$a4, $zero
	ld.d	$t6, $sp, 16                    # 8-byte Folded Reload
.LBB3_75:                               # %.lr.ph458.preheader1046
	alsl.d	$a5, $a4, $a1, 2
	alsl.d	$a7, $a4, $a7, 2
	alsl.d	$a6, $a4, $t6, 2
	sub.d	$a4, $a2, $a4
	.p2align	4, , 16
.LBB3_76:                               # %.lr.ph458
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$t4, $a6, 0
	ld.w	$t5, $a7, 0
	add.d	$t4, $t5, $t4
	st.w	$t4, $a5, 0
	addi.d	$a5, $a5, 4
	addi.d	$a7, $a7, 4
	addi.d	$a4, $a4, -1
	addi.d	$a6, $a6, 4
	bnez	$a4, .LBB3_76
.LBB3_77:                               # %.lr.ph462.preheader
	ld.d	$a5, $t3, 80
	ori	$a4, $zero, 8
	bgeu	$a2, $a4, .LBB3_198
# %bb.78:
	move	$a4, $zero
.LBB3_79:                               # %.lr.ph462.preheader1045
	alsl.d	$a6, $a4, $a5, 2
	alsl.d	$a7, $a4, $t1, 2
	alsl.d	$t0, $a4, $t0, 2
	sub.d	$a4, $a2, $a4
	.p2align	4, , 16
.LBB3_80:                               # %.lr.ph462
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$t1, $t0, 0
	ld.w	$t3, $a7, 0
	add.d	$t1, $t3, $t1
	st.w	$t1, $a6, 0
	addi.d	$a6, $a6, 4
	addi.d	$a7, $a7, 4
	addi.d	$a4, $a4, -1
	addi.d	$t0, $t0, 4
	bnez	$a4, .LBB3_80
.LBB3_81:                               # %.lr.ph466.preheader
	ld.d	$a6, $a0, 24
	ld.d	$a4, $a6, 0
	ori	$a7, $zero, 8
	bgeu	$a2, $a7, .LBB3_203
# %bb.82:
	move	$a7, $zero
.LBB3_83:                               # %.lr.ph466.preheader1044
	alsl.d	$t0, $a7, $a4, 2
	alsl.d	$t1, $a7, $a1, 2
	alsl.d	$t3, $a7, $t2, 2
	sub.d	$a7, $a2, $a7
	.p2align	4, , 16
.LBB3_84:                               # %.lr.ph466
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$t4, $t3, 0
	ld.w	$t5, $t1, 0
	add.d	$t4, $t5, $t4
	st.w	$t4, $t0, 0
	addi.d	$t0, $t0, 4
	addi.d	$t1, $t1, 4
	addi.d	$a7, $a7, -1
	addi.d	$t3, $t3, 4
	bnez	$a7, .LBB3_84
.LBB3_85:                               # %.lr.ph470.preheader
	ld.d	$a6, $a6, 16
	ori	$a7, $zero, 8
	bgeu	$a2, $a7, .LBB3_208
# %bb.86:
	move	$a7, $zero
.LBB3_87:                               # %.lr.ph470.preheader1043
	alsl.d	$t0, $a7, $a6, 2
	alsl.d	$t1, $a7, $a5, 2
	alsl.d	$t3, $a7, $a3, 2
	sub.d	$a7, $a2, $a7
	.p2align	4, , 16
.LBB3_88:                               # %.lr.ph470
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$t4, $t3, 0
	ld.w	$t5, $t1, 0
	add.d	$t4, $t5, $t4
	st.w	$t4, $t0, 0
	addi.d	$t0, $t0, 4
	addi.d	$t1, $t1, 4
	addi.d	$a7, $a7, -1
	addi.d	$t3, $t3, 4
	bnez	$a7, .LBB3_88
.LBB3_89:                               # %.lr.ph474.preheader
	ld.d	$a7, $a0, 16
	ld.d	$t0, $a7, 0
	ori	$t1, $zero, 8
	bgeu	$a2, $t1, .LBB3_213
# %bb.90:
	move	$t1, $zero
.LBB3_91:                               # %.lr.ph474.preheader1042
	alsl.d	$t0, $t1, $t0, 2
	alsl.d	$a3, $t1, $a3, 2
	alsl.d	$t2, $t1, $t2, 2
	sub.d	$t1, $a2, $t1
	.p2align	4, , 16
.LBB3_92:                               # %.lr.ph474
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$t3, $t2, 0
	ld.w	$t4, $a3, 0
	add.d	$t3, $t4, $t3
	st.w	$t3, $t0, 0
	addi.d	$t0, $t0, 4
	addi.d	$a3, $a3, 4
	addi.d	$t1, $t1, -1
	addi.d	$t2, $t2, 4
	bnez	$t1, .LBB3_92
.LBB3_93:                               # %.lr.ph478.preheader
	ld.d	$a3, $a7, 64
	ori	$a7, $zero, 8
	bgeu	$a2, $a7, .LBB3_218
# %bb.94:
	move	$a7, $zero
.LBB3_95:                               # %.lr.ph478.preheader1041
	alsl.d	$a3, $a7, $a3, 2
	alsl.d	$a5, $a7, $a5, 2
	alsl.d	$a1, $a7, $a1, 2
	sub.d	$a7, $a2, $a7
	.p2align	4, , 16
.LBB3_96:                               # %.lr.ph478
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$t0, $a1, 0
	ld.w	$t1, $a5, 0
	add.d	$t0, $t1, $t0
	st.w	$t0, $a3, 0
	addi.d	$a3, $a3, 4
	addi.d	$a5, $a5, 4
	addi.d	$a7, $a7, -1
	addi.d	$a1, $a1, 4
	bnez	$a7, .LBB3_96
.LBB3_97:                               # %.lr.ph482.preheader
	ld.d	$a0, $a0, 8
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 8
	bgeu	$a2, $a1, .LBB3_223
# %bb.98:
	move	$a1, $zero
.LBB3_99:                               # %.lr.ph482.preheader1040
	alsl.d	$a0, $a1, $a0, 2
	alsl.d	$a3, $a1, $a6, 2
	alsl.d	$a4, $a1, $a4, 2
	sub.d	$a1, $a2, $a1
	.p2align	4, , 16
.LBB3_100:                              # %.lr.ph482
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a2, $a4, 0
	ld.w	$a5, $a3, 0
	add.d	$a2, $a5, $a2
	st.w	$a2, $a0, 0
	addi.d	$a0, $a0, 4
	addi.d	$a3, $a3, 4
	addi.d	$a1, $a1, -1
	addi.d	$a4, $a4, 4
	bnez	$a1, .LBB3_100
.LBB3_101:
	ld.d	$s8, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 128                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 136                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 144
.LBB3_102:                              # %._crit_edge483
	ret
.LBB3_103:                              # %vector.memcheck
	sub.d	$a4, $t0, $t8
	ori	$a1, $zero, 32
	move	$a3, $zero
	bltu	$a4, $a1, .LBB3_3
# %bb.104:                              # %vector.memcheck
	sub.d	$a4, $t0, $t2
	bltu	$a4, $a1, .LBB3_3
# %bb.105:                              # %vector.ph
	bstrpick.d	$a1, $a2, 30, 3
	slli.d	$a3, $a1, 3
	addi.d	$a1, $t0, 16
	addi.d	$a4, $t2, 16
	addi.d	$a5, $t8, 16
	move	$a6, $a3
	.p2align	4, , 16
.LBB3_106:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a5, -16
	vld	$vr1, $a5, 0
	vld	$vr2, $a4, -16
	vld	$vr3, $a4, 0
	vadd.w	$vr0, $vr2, $vr0
	vadd.w	$vr1, $vr3, $vr1
	vst	$vr0, $a1, -16
	vst	$vr1, $a1, 0
	addi.d	$a6, $a6, -8
	addi.d	$a1, $a1, 32
	addi.d	$a4, $a4, 32
	addi.d	$a5, $a5, 32
	bnez	$a6, .LBB3_106
# %bb.107:                              # %middle.block
	bne	$a3, $a2, .LBB3_3
	b	.LBB3_5
.LBB3_108:                              # %vector.memcheck584
	sub.d	$a3, $t0, $s2
	ori	$a1, $zero, 32
	move	$a4, $zero
	bltu	$a3, $a1, .LBB3_7
# %bb.109:                              # %vector.memcheck584
	sub.d	$a3, $t0, $t4
	bltu	$a3, $a1, .LBB3_7
# %bb.110:                              # %vector.ph590
	bstrpick.d	$a1, $a2, 30, 3
	slli.d	$a4, $a1, 3
	addi.d	$a1, $t0, 16
	addi.d	$a3, $t4, 16
	addi.d	$a5, $s2, 16
	move	$a6, $a4
	.p2align	4, , 16
.LBB3_111:                              # %vector.body593
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a5, -16
	vld	$vr1, $a5, 0
	vld	$vr2, $a3, -16
	vld	$vr3, $a3, 0
	vadd.w	$vr0, $vr2, $vr0
	vadd.w	$vr1, $vr3, $vr1
	vst	$vr0, $a1, -16
	vst	$vr1, $a1, 0
	addi.d	$a6, $a6, -8
	addi.d	$a1, $a1, 32
	addi.d	$a3, $a3, 32
	addi.d	$a5, $a5, 32
	bnez	$a6, .LBB3_111
# %bb.112:                              # %middle.block600
	bne	$a4, $a2, .LBB3_7
	b	.LBB3_9
.LBB3_113:                              # %vector.memcheck603
	sub.d	$a3, $t0, $s3
	ori	$a1, $zero, 32
	move	$a5, $zero
	bltu	$a3, $a1, .LBB3_11
# %bb.114:                              # %vector.memcheck603
	sub.d	$a3, $t0, $t5
	bltu	$a3, $a1, .LBB3_11
# %bb.115:                              # %vector.ph609
	bstrpick.d	$a1, $a2, 30, 3
	slli.d	$a5, $a1, 3
	addi.d	$a1, $t0, 16
	addi.d	$a3, $t5, 16
	addi.d	$a4, $s3, 16
	move	$a6, $a5
	.p2align	4, , 16
.LBB3_116:                              # %vector.body612
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a4, -16
	vld	$vr1, $a4, 0
	vld	$vr2, $a3, -16
	vld	$vr3, $a3, 0
	vadd.w	$vr0, $vr2, $vr0
	vadd.w	$vr1, $vr3, $vr1
	vst	$vr0, $a1, -16
	vst	$vr1, $a1, 0
	addi.d	$a6, $a6, -8
	addi.d	$a1, $a1, 32
	addi.d	$a3, $a3, 32
	addi.d	$a4, $a4, 32
	bnez	$a6, .LBB3_116
# %bb.117:                              # %middle.block619
	bne	$a5, $a2, .LBB3_11
	b	.LBB3_13
.LBB3_118:                              # %vector.memcheck622
	sub.d	$a3, $t7, $s7
	ori	$a1, $zero, 32
	move	$a6, $zero
	bltu	$a3, $a1, .LBB3_15
# %bb.119:                              # %vector.memcheck622
	sub.d	$a3, $t7, $fp
	bltu	$a3, $a1, .LBB3_15
# %bb.120:                              # %vector.ph628
	bstrpick.d	$a1, $a2, 30, 3
	slli.d	$a6, $a1, 3
	addi.d	$a1, $t7, 16
	addi.d	$a3, $fp, 16
	addi.d	$a4, $s7, 16
	move	$a5, $a6
	.p2align	4, , 16
.LBB3_121:                              # %vector.body631
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a4, -16
	vld	$vr1, $a4, 0
	vld	$vr2, $a3, -16
	vld	$vr3, $a3, 0
	vadd.w	$vr0, $vr2, $vr0
	vadd.w	$vr1, $vr3, $vr1
	vst	$vr0, $a1, -16
	vst	$vr1, $a1, 0
	addi.d	$a5, $a5, -8
	addi.d	$a1, $a1, 32
	addi.d	$a3, $a3, 32
	addi.d	$a4, $a4, 32
	bnez	$a5, .LBB3_121
# %bb.122:                              # %middle.block638
	bne	$a6, $a2, .LBB3_15
	b	.LBB3_17
.LBB3_123:                              # %vector.memcheck641
	sub.d	$a3, $t6, $s0
	ori	$a1, $zero, 32
	move	$a7, $zero
	bltu	$a3, $a1, .LBB3_19
# %bb.124:                              # %vector.memcheck641
	sub.d	$a3, $t6, $t3
	bltu	$a3, $a1, .LBB3_19
# %bb.125:                              # %vector.ph647
	bstrpick.d	$a1, $a2, 30, 3
	slli.d	$a7, $a1, 3
	addi.d	$a1, $t6, 16
	addi.d	$a3, $t3, 16
	addi.d	$a4, $s0, 16
	move	$a5, $a7
	.p2align	4, , 16
.LBB3_126:                              # %vector.body650
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a4, -16
	vld	$vr1, $a4, 0
	vld	$vr2, $a3, -16
	vld	$vr3, $a3, 0
	vadd.w	$vr0, $vr2, $vr0
	vadd.w	$vr1, $vr3, $vr1
	vst	$vr0, $a1, -16
	vst	$vr1, $a1, 0
	addi.d	$a5, $a5, -8
	addi.d	$a1, $a1, 32
	addi.d	$a3, $a3, 32
	addi.d	$a4, $a4, 32
	bnez	$a5, .LBB3_126
# %bb.127:                              # %middle.block657
	bne	$a7, $a2, .LBB3_19
	b	.LBB3_21
.LBB3_128:                              # %vector.memcheck660
	sub.d	$a3, $a7, $s4
	ori	$a1, $zero, 32
	move	$t0, $zero
	bltu	$a3, $a1, .LBB3_23
# %bb.129:                              # %vector.memcheck660
	sub.d	$a3, $a7, $t6
	bltu	$a3, $a1, .LBB3_23
# %bb.130:                              # %vector.ph666
	bstrpick.d	$a1, $a2, 30, 3
	slli.d	$t0, $a1, 3
	addi.d	$a1, $a7, 16
	addi.d	$a3, $t6, 16
	addi.d	$a4, $s4, 16
	move	$a5, $t0
	.p2align	4, , 16
.LBB3_131:                              # %vector.body669
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a4, -16
	vld	$vr1, $a4, 0
	vld	$vr2, $a3, -16
	vld	$vr3, $a3, 0
	vadd.w	$vr0, $vr2, $vr0
	vadd.w	$vr1, $vr3, $vr1
	vst	$vr0, $a1, -16
	vst	$vr1, $a1, 0
	addi.d	$a5, $a5, -8
	addi.d	$a1, $a1, 32
	addi.d	$a3, $a3, 32
	addi.d	$a4, $a4, 32
	bnez	$a5, .LBB3_131
# %bb.132:                              # %middle.block676
	bne	$t0, $a2, .LBB3_23
	b	.LBB3_25
.LBB3_133:                              # %vector.memcheck679
	sub.d	$a3, $t0, $s5
	ori	$a1, $zero, 32
	move	$s6, $zero
	bltu	$a3, $a1, .LBB3_27
# %bb.134:                              # %vector.memcheck679
	sub.d	$a3, $t0, $t7
	bltu	$a3, $a1, .LBB3_27
# %bb.135:                              # %vector.ph685
	bstrpick.d	$a1, $a2, 30, 3
	slli.d	$s6, $a1, 3
	addi.d	$a1, $t0, 16
	addi.d	$a3, $t7, 16
	addi.d	$a4, $s5, 16
	move	$a5, $s6
	.p2align	4, , 16
.LBB3_136:                              # %vector.body688
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a4, -16
	vld	$vr1, $a4, 0
	vld	$vr2, $a3, -16
	vld	$vr3, $a3, 0
	vadd.w	$vr0, $vr2, $vr0
	vadd.w	$vr1, $vr3, $vr1
	vst	$vr0, $a1, -16
	vst	$vr1, $a1, 0
	addi.d	$a5, $a5, -8
	addi.d	$a1, $a1, 32
	addi.d	$a3, $a3, 32
	addi.d	$a4, $a4, 32
	bnez	$a5, .LBB3_136
# %bb.137:                              # %middle.block695
	bne	$s6, $a2, .LBB3_27
	b	.LBB3_29
.LBB3_138:                              # %vector.memcheck698
	sub.d	$a3, $t1, $s8
	ori	$a1, $zero, 32
	move	$s6, $zero
	bltu	$a3, $a1, .LBB3_31
# %bb.139:                              # %vector.memcheck698
	sub.d	$a3, $t1, $s1
	bltu	$a3, $a1, .LBB3_31
# %bb.140:                              # %vector.ph704
	bstrpick.d	$a1, $a2, 30, 3
	slli.d	$s6, $a1, 3
	addi.d	$a1, $t1, 16
	addi.d	$a3, $s1, 16
	addi.d	$a4, $s8, 16
	move	$a5, $s6
	.p2align	4, , 16
.LBB3_141:                              # %vector.body707
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a4, -16
	vld	$vr1, $a4, 0
	vld	$vr2, $a3, -16
	vld	$vr3, $a3, 0
	vadd.w	$vr0, $vr2, $vr0
	vadd.w	$vr1, $vr3, $vr1
	vst	$vr0, $a1, -16
	vst	$vr1, $a1, 0
	addi.d	$a5, $a5, -8
	addi.d	$a1, $a1, 32
	addi.d	$a3, $a3, 32
	addi.d	$a4, $a4, 32
	bnez	$a5, .LBB3_141
# %bb.142:                              # %middle.block714
	bne	$s6, $a2, .LBB3_31
	b	.LBB3_33
.LBB3_143:                              # %vector.memcheck717
	sub.d	$a3, $ra, $t8
	ori	$a1, $zero, 32
	move	$a6, $zero
	bltu	$a3, $a1, .LBB3_35
# %bb.144:                              # %vector.memcheck717
	sub.d	$a3, $ra, $s2
	bltu	$a3, $a1, .LBB3_35
# %bb.145:                              # %vector.ph723
	bstrpick.d	$a1, $a2, 30, 3
	slli.d	$a6, $a1, 3
	addi.d	$a3, $ra, 16
	addi.d	$a4, $s2, 16
	addi.d	$a5, $t8, 16
	move	$a1, $a6
	.p2align	4, , 16
.LBB3_146:                              # %vector.body726
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a5, -16
	vld	$vr1, $a5, 0
	vld	$vr2, $a4, -16
	vld	$vr3, $a4, 0
	vadd.w	$vr0, $vr2, $vr0
	vadd.w	$vr1, $vr3, $vr1
	vst	$vr0, $a3, -16
	vst	$vr1, $a3, 0
	addi.d	$a1, $a1, -8
	addi.d	$a3, $a3, 32
	addi.d	$a4, $a4, 32
	addi.d	$a5, $a5, 32
	bnez	$a1, .LBB3_146
# %bb.147:                              # %middle.block733
	bne	$a6, $a2, .LBB3_35
	b	.LBB3_37
.LBB3_148:                              # %vector.memcheck736
	sub.d	$a4, $t8, $s3
	ori	$a3, $zero, 32
	move	$a1, $zero
	bltu	$a4, $a3, .LBB3_39
# %bb.149:                              # %vector.memcheck736
	sub.d	$a4, $t8, $s7
	bltu	$a4, $a3, .LBB3_39
# %bb.150:                              # %vector.ph742
	bstrpick.d	$a1, $a2, 30, 3
	slli.d	$a1, $a1, 3
	addi.d	$a3, $t8, 16
	addi.d	$a4, $s7, 16
	addi.d	$a5, $s3, 16
	move	$a6, $a1
	.p2align	4, , 16
.LBB3_151:                              # %vector.body745
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a5, -16
	vld	$vr1, $a5, 0
	vld	$vr2, $a4, -16
	vld	$vr3, $a4, 0
	vadd.w	$vr0, $vr2, $vr0
	vadd.w	$vr1, $vr3, $vr1
	vst	$vr0, $a3, -16
	vst	$vr1, $a3, 0
	addi.d	$a6, $a6, -8
	addi.d	$a3, $a3, 32
	addi.d	$a4, $a4, 32
	addi.d	$a5, $a5, 32
	bnez	$a6, .LBB3_151
# %bb.152:                              # %middle.block752
	bne	$a1, $a2, .LBB3_39
	b	.LBB3_41
.LBB3_153:                              # %vector.memcheck755
	sub.d	$a4, $t8, $t2
	ori	$a3, $zero, 32
	move	$a1, $zero
	bltu	$a4, $a3, .LBB3_43
# %bb.154:                              # %vector.memcheck755
	sub.d	$a4, $t8, $t4
	bltu	$a4, $a3, .LBB3_43
# %bb.155:                              # %vector.ph761
	bstrpick.d	$a1, $a2, 30, 3
	slli.d	$a1, $a1, 3
	addi.d	$a3, $t8, 16
	addi.d	$a4, $t4, 16
	addi.d	$a5, $t2, 16
	move	$a6, $a1
	.p2align	4, , 16
.LBB3_156:                              # %vector.body764
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a5, -16
	vld	$vr1, $a5, 0
	vld	$vr2, $a4, -16
	vld	$vr3, $a4, 0
	vadd.w	$vr0, $vr2, $vr0
	vadd.w	$vr1, $vr3, $vr1
	vst	$vr0, $a3, -16
	vst	$vr1, $a3, 0
	addi.d	$a6, $a6, -8
	addi.d	$a3, $a3, 32
	addi.d	$a4, $a4, 32
	addi.d	$a5, $a5, 32
	bnez	$a6, .LBB3_156
# %bb.157:                              # %middle.block771
	bne	$a1, $a2, .LBB3_43
	b	.LBB3_45
.LBB3_158:                              # %vector.memcheck774
	sub.d	$a4, $t2, $t5
	ori	$a3, $zero, 32
	move	$a1, $zero
	ld.d	$t4, $sp, 48                    # 8-byte Folded Reload
	bltu	$a4, $a3, .LBB3_47
# %bb.159:                              # %vector.memcheck774
	sub.d	$a4, $t2, $fp
	bltu	$a4, $a3, .LBB3_47
# %bb.160:                              # %vector.ph780
	bstrpick.d	$a1, $a2, 30, 3
	slli.d	$a1, $a1, 3
	addi.d	$a3, $t2, 16
	addi.d	$a4, $fp, 16
	addi.d	$a5, $t5, 16
	move	$a6, $a1
	.p2align	4, , 16
.LBB3_161:                              # %vector.body783
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a5, -16
	vld	$vr1, $a5, 0
	vld	$vr2, $a4, -16
	vld	$vr3, $a4, 0
	vadd.w	$vr0, $vr2, $vr0
	vadd.w	$vr1, $vr3, $vr1
	vst	$vr0, $a3, -16
	vst	$vr1, $a3, 0
	addi.d	$a6, $a6, -8
	addi.d	$a3, $a3, 32
	addi.d	$a4, $a4, 32
	addi.d	$a5, $a5, 32
	bnez	$a6, .LBB3_161
# %bb.162:                              # %middle.block790
	bne	$a1, $a2, .LBB3_47
	b	.LBB3_49
.LBB3_163:                              # %vector.memcheck793
	sub.d	$a4, $t2, $s0
	ori	$a3, $zero, 32
	move	$a1, $zero
	ld.d	$t5, $sp, 40                    # 8-byte Folded Reload
	bltu	$a4, $a3, .LBB3_51
# %bb.164:                              # %vector.memcheck793
	sub.d	$a4, $t2, $s4
	bltu	$a4, $a3, .LBB3_51
# %bb.165:                              # %vector.ph799
	bstrpick.d	$a1, $a2, 30, 3
	slli.d	$a1, $a1, 3
	addi.d	$a3, $t2, 16
	addi.d	$a4, $s4, 16
	addi.d	$a5, $s0, 16
	move	$a6, $a1
	.p2align	4, , 16
.LBB3_166:                              # %vector.body802
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a5, -16
	vld	$vr1, $a5, 0
	vld	$vr2, $a4, -16
	vld	$vr3, $a4, 0
	vadd.w	$vr0, $vr2, $vr0
	vadd.w	$vr1, $vr3, $vr1
	vst	$vr0, $a3, -16
	vst	$vr1, $a3, 0
	addi.d	$a6, $a6, -8
	addi.d	$a3, $a3, 32
	addi.d	$a4, $a4, 32
	addi.d	$a5, $a5, 32
	bnez	$a6, .LBB3_166
# %bb.167:                              # %middle.block809
	bne	$a1, $a2, .LBB3_51
	b	.LBB3_53
.LBB3_168:                              # %vector.memcheck812
	sub.d	$a4, $t2, $s5
	ori	$a3, $zero, 32
	move	$a1, $zero
	bltu	$a4, $a3, .LBB3_55
# %bb.169:                              # %vector.memcheck812
	sub.d	$a4, $t2, $s8
	bltu	$a4, $a3, .LBB3_55
# %bb.170:                              # %vector.ph818
	bstrpick.d	$a1, $a2, 30, 3
	slli.d	$a1, $a1, 3
	addi.d	$a3, $t2, 16
	addi.d	$a4, $s8, 16
	addi.d	$a5, $s5, 16
	move	$a6, $a1
	.p2align	4, , 16
.LBB3_171:                              # %vector.body821
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a5, -16
	vld	$vr1, $a5, 0
	vld	$vr2, $a4, -16
	vld	$vr3, $a4, 0
	vadd.w	$vr0, $vr2, $vr0
	vadd.w	$vr1, $vr3, $vr1
	vst	$vr0, $a3, -16
	vst	$vr1, $a3, 0
	addi.d	$a6, $a6, -8
	addi.d	$a3, $a3, 32
	addi.d	$a4, $a4, 32
	addi.d	$a5, $a5, 32
	bnez	$a6, .LBB3_171
# %bb.172:                              # %middle.block828
	bne	$a1, $a2, .LBB3_55
	b	.LBB3_57
.LBB3_173:                              # %vector.memcheck831
	sub.d	$a4, $t2, $t3
	ori	$a3, $zero, 32
	move	$a1, $zero
	bltu	$a4, $a3, .LBB3_59
# %bb.174:                              # %vector.memcheck831
	sub.d	$a4, $t2, $t6
	bltu	$a4, $a3, .LBB3_59
# %bb.175:                              # %vector.ph837
	bstrpick.d	$a1, $a2, 30, 3
	slli.d	$a1, $a1, 3
	addi.d	$a3, $t2, 16
	addi.d	$a4, $t6, 16
	addi.d	$a5, $t3, 16
	move	$a6, $a1
	.p2align	4, , 16
.LBB3_176:                              # %vector.body840
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a5, -16
	vld	$vr1, $a5, 0
	vld	$vr2, $a4, -16
	vld	$vr3, $a4, 0
	vadd.w	$vr0, $vr2, $vr0
	vadd.w	$vr1, $vr3, $vr1
	vst	$vr0, $a3, -16
	vst	$vr1, $a3, 0
	addi.d	$a6, $a6, -8
	addi.d	$a3, $a3, 32
	addi.d	$a4, $a4, 32
	addi.d	$a5, $a5, 32
	bnez	$a6, .LBB3_176
# %bb.177:                              # %middle.block847
	bne	$a1, $a2, .LBB3_59
	b	.LBB3_61
.LBB3_178:                              # %vector.memcheck850
	sub.d	$a4, $t2, $t7
	ori	$a3, $zero, 32
	move	$a1, $zero
	ld.d	$t6, $sp, 32                    # 8-byte Folded Reload
	bltu	$a4, $a3, .LBB3_63
# %bb.179:                              # %vector.memcheck850
	sub.d	$a4, $t2, $s1
	bltu	$a4, $a3, .LBB3_63
# %bb.180:                              # %vector.ph856
	bstrpick.d	$a1, $a2, 30, 3
	slli.d	$a1, $a1, 3
	addi.d	$a3, $t2, 16
	addi.d	$a4, $s1, 16
	addi.d	$a5, $t7, 16
	move	$a6, $a1
	.p2align	4, , 16
.LBB3_181:                              # %vector.body859
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a5, -16
	vld	$vr1, $a5, 0
	vld	$vr2, $a4, -16
	vld	$vr3, $a4, 0
	vadd.w	$vr0, $vr2, $vr0
	vadd.w	$vr1, $vr3, $vr1
	vst	$vr0, $a3, -16
	vst	$vr1, $a3, 0
	addi.d	$a6, $a6, -8
	addi.d	$a3, $a3, 32
	addi.d	$a4, $a4, 32
	addi.d	$a5, $a5, 32
	bnez	$a6, .LBB3_181
# %bb.182:                              # %middle.block866
	bne	$a1, $a2, .LBB3_63
	b	.LBB3_65
.LBB3_183:                              # %vector.memcheck869
	sub.d	$a4, $t2, $t4
	ori	$a3, $zero, 32
	move	$a1, $zero
	ld.d	$t7, $sp, 24                    # 8-byte Folded Reload
	bltu	$a4, $a3, .LBB3_67
# %bb.184:                              # %vector.memcheck869
	sub.d	$a4, $t2, $t5
	bltu	$a4, $a3, .LBB3_67
# %bb.185:                              # %vector.ph875
	bstrpick.d	$a1, $a2, 30, 3
	slli.d	$a1, $a1, 3
	addi.d	$a3, $t2, 16
	addi.d	$a4, $t5, 16
	addi.d	$a5, $t4, 16
	move	$a6, $a1
	.p2align	4, , 16
.LBB3_186:                              # %vector.body878
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a5, -16
	vld	$vr1, $a5, 0
	vld	$vr2, $a4, -16
	vld	$vr3, $a4, 0
	vadd.w	$vr0, $vr2, $vr0
	vadd.w	$vr1, $vr3, $vr1
	vst	$vr0, $a3, -16
	vst	$vr1, $a3, 0
	addi.d	$a6, $a6, -8
	addi.d	$a3, $a3, 32
	addi.d	$a4, $a4, 32
	addi.d	$a5, $a5, 32
	bnez	$a6, .LBB3_186
# %bb.187:                              # %middle.block885
	bne	$a1, $a2, .LBB3_67
	b	.LBB3_69
.LBB3_188:                              # %vector.memcheck888
	sub.d	$a5, $a3, $t6
	ori	$a4, $zero, 32
	move	$a1, $zero
	bltu	$a5, $a4, .LBB3_71
# %bb.189:                              # %vector.memcheck888
	sub.d	$a5, $a3, $t7
	bltu	$a5, $a4, .LBB3_71
# %bb.190:                              # %vector.ph894
	bstrpick.d	$a1, $a2, 30, 3
	slli.d	$a1, $a1, 3
	addi.d	$t4, $a3, 16
	addi.d	$a4, $t7, 16
	addi.d	$a5, $t6, 16
	move	$a6, $a1
	.p2align	4, , 16
.LBB3_191:                              # %vector.body897
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a5, -16
	vld	$vr1, $a5, 0
	vld	$vr2, $a4, -16
	vld	$vr3, $a4, 0
	vadd.w	$vr0, $vr2, $vr0
	vadd.w	$vr1, $vr3, $vr1
	vst	$vr0, $t4, -16
	vst	$vr1, $t4, 0
	addi.d	$a6, $a6, -8
	addi.d	$t4, $t4, 32
	addi.d	$a4, $a4, 32
	addi.d	$a5, $a5, 32
	bnez	$a6, .LBB3_191
# %bb.192:                              # %middle.block904
	bne	$a1, $a2, .LBB3_71
	b	.LBB3_73
.LBB3_193:                              # %vector.memcheck907
	ld.d	$t6, $sp, 16                    # 8-byte Folded Reload
	sub.d	$a6, $a1, $t6
	ori	$a5, $zero, 32
	move	$a4, $zero
	bltu	$a6, $a5, .LBB3_75
# %bb.194:                              # %vector.memcheck907
	sub.d	$a6, $a1, $a7
	bltu	$a6, $a5, .LBB3_75
# %bb.195:                              # %vector.ph913
	bstrpick.d	$a4, $a2, 30, 3
	slli.d	$a4, $a4, 3
	addi.d	$a5, $a1, 16
	addi.d	$t4, $a7, 16
	addi.d	$t5, $t6, 16
	move	$a6, $a4
	.p2align	4, , 16
.LBB3_196:                              # %vector.body916
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $t5, -16
	vld	$vr1, $t5, 0
	vld	$vr2, $t4, -16
	vld	$vr3, $t4, 0
	vadd.w	$vr0, $vr2, $vr0
	vadd.w	$vr1, $vr3, $vr1
	vst	$vr0, $a5, -16
	vst	$vr1, $a5, 0
	addi.d	$a6, $a6, -8
	addi.d	$a5, $a5, 32
	addi.d	$t4, $t4, 32
	addi.d	$t5, $t5, 32
	bnez	$a6, .LBB3_196
# %bb.197:                              # %middle.block923
	bne	$a4, $a2, .LBB3_75
	b	.LBB3_77
.LBB3_198:                              # %vector.memcheck926
	sub.d	$a7, $a5, $t0
	ori	$a6, $zero, 32
	move	$a4, $zero
	bltu	$a7, $a6, .LBB3_79
# %bb.199:                              # %vector.memcheck926
	sub.d	$a7, $a5, $t1
	bltu	$a7, $a6, .LBB3_79
# %bb.200:                              # %vector.ph932
	bstrpick.d	$a4, $a2, 30, 3
	slli.d	$a4, $a4, 3
	addi.d	$a6, $a5, 16
	addi.d	$a7, $t1, 16
	addi.d	$t3, $t0, 16
	move	$t4, $a4
	.p2align	4, , 16
.LBB3_201:                              # %vector.body935
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $t3, -16
	vld	$vr1, $t3, 0
	vld	$vr2, $a7, -16
	vld	$vr3, $a7, 0
	vadd.w	$vr0, $vr2, $vr0
	vadd.w	$vr1, $vr3, $vr1
	vst	$vr0, $a6, -16
	vst	$vr1, $a6, 0
	addi.d	$t4, $t4, -8
	addi.d	$a6, $a6, 32
	addi.d	$a7, $a7, 32
	addi.d	$t3, $t3, 32
	bnez	$t4, .LBB3_201
# %bb.202:                              # %middle.block942
	bne	$a4, $a2, .LBB3_79
	b	.LBB3_81
.LBB3_203:                              # %vector.memcheck945
	sub.d	$t1, $a4, $t2
	ori	$t0, $zero, 32
	move	$a7, $zero
	bltu	$t1, $t0, .LBB3_83
# %bb.204:                              # %vector.memcheck945
	sub.d	$t1, $a4, $a1
	bltu	$t1, $t0, .LBB3_83
# %bb.205:                              # %vector.ph951
	bstrpick.d	$a7, $a2, 30, 3
	slli.d	$a7, $a7, 3
	addi.d	$t0, $a4, 16
	addi.d	$t1, $a1, 16
	addi.d	$t3, $t2, 16
	move	$t4, $a7
	.p2align	4, , 16
.LBB3_206:                              # %vector.body954
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $t3, -16
	vld	$vr1, $t3, 0
	vld	$vr2, $t1, -16
	vld	$vr3, $t1, 0
	vadd.w	$vr0, $vr2, $vr0
	vadd.w	$vr1, $vr3, $vr1
	vst	$vr0, $t0, -16
	vst	$vr1, $t0, 0
	addi.d	$t4, $t4, -8
	addi.d	$t0, $t0, 32
	addi.d	$t1, $t1, 32
	addi.d	$t3, $t3, 32
	bnez	$t4, .LBB3_206
# %bb.207:                              # %middle.block961
	bne	$a7, $a2, .LBB3_83
	b	.LBB3_85
.LBB3_208:                              # %vector.memcheck964
	sub.d	$t1, $a6, $a3
	ori	$t0, $zero, 32
	move	$a7, $zero
	bltu	$t1, $t0, .LBB3_87
# %bb.209:                              # %vector.memcheck964
	sub.d	$t1, $a6, $a5
	bltu	$t1, $t0, .LBB3_87
# %bb.210:                              # %vector.ph970
	bstrpick.d	$a7, $a2, 30, 3
	slli.d	$a7, $a7, 3
	addi.d	$t0, $a6, 16
	addi.d	$t1, $a5, 16
	addi.d	$t3, $a3, 16
	move	$t4, $a7
	.p2align	4, , 16
.LBB3_211:                              # %vector.body973
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $t3, -16
	vld	$vr1, $t3, 0
	vld	$vr2, $t1, -16
	vld	$vr3, $t1, 0
	vadd.w	$vr0, $vr2, $vr0
	vadd.w	$vr1, $vr3, $vr1
	vst	$vr0, $t0, -16
	vst	$vr1, $t0, 0
	addi.d	$t4, $t4, -8
	addi.d	$t0, $t0, 32
	addi.d	$t1, $t1, 32
	addi.d	$t3, $t3, 32
	bnez	$t4, .LBB3_211
# %bb.212:                              # %middle.block980
	bne	$a7, $a2, .LBB3_87
	b	.LBB3_89
.LBB3_213:                              # %vector.memcheck983
	sub.d	$t4, $t0, $t2
	ori	$t3, $zero, 32
	move	$t1, $zero
	bltu	$t4, $t3, .LBB3_91
# %bb.214:                              # %vector.memcheck983
	sub.d	$t4, $t0, $a3
	bltu	$t4, $t3, .LBB3_91
# %bb.215:                              # %vector.ph989
	bstrpick.d	$t1, $a2, 30, 3
	slli.d	$t1, $t1, 3
	addi.d	$t3, $t0, 16
	addi.d	$t4, $a3, 16
	addi.d	$t5, $t2, 16
	move	$t6, $t1
	.p2align	4, , 16
.LBB3_216:                              # %vector.body992
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $t5, -16
	vld	$vr1, $t5, 0
	vld	$vr2, $t4, -16
	vld	$vr3, $t4, 0
	vadd.w	$vr0, $vr2, $vr0
	vadd.w	$vr1, $vr3, $vr1
	vst	$vr0, $t3, -16
	vst	$vr1, $t3, 0
	addi.d	$t6, $t6, -8
	addi.d	$t3, $t3, 32
	addi.d	$t4, $t4, 32
	addi.d	$t5, $t5, 32
	bnez	$t6, .LBB3_216
# %bb.217:                              # %middle.block999
	bne	$t1, $a2, .LBB3_91
	b	.LBB3_93
.LBB3_218:                              # %vector.memcheck1002
	sub.d	$t1, $a3, $a1
	ori	$t0, $zero, 32
	move	$a7, $zero
	bltu	$t1, $t0, .LBB3_95
# %bb.219:                              # %vector.memcheck1002
	sub.d	$t1, $a3, $a5
	bltu	$t1, $t0, .LBB3_95
# %bb.220:                              # %vector.ph1008
	bstrpick.d	$a7, $a2, 30, 3
	slli.d	$a7, $a7, 3
	addi.d	$t0, $a3, 16
	addi.d	$t1, $a5, 16
	addi.d	$t2, $a1, 16
	move	$t3, $a7
	.p2align	4, , 16
.LBB3_221:                              # %vector.body1011
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $t2, -16
	vld	$vr1, $t2, 0
	vld	$vr2, $t1, -16
	vld	$vr3, $t1, 0
	vadd.w	$vr0, $vr2, $vr0
	vadd.w	$vr1, $vr3, $vr1
	vst	$vr0, $t0, -16
	vst	$vr1, $t0, 0
	addi.d	$t3, $t3, -8
	addi.d	$t0, $t0, 32
	addi.d	$t1, $t1, 32
	addi.d	$t2, $t2, 32
	bnez	$t3, .LBB3_221
# %bb.222:                              # %middle.block1018
	bne	$a7, $a2, .LBB3_95
	b	.LBB3_97
.LBB3_223:                              # %vector.memcheck1021
	sub.d	$a5, $a0, $a4
	ori	$a3, $zero, 32
	move	$a1, $zero
	bltu	$a5, $a3, .LBB3_99
# %bb.224:                              # %vector.memcheck1021
	sub.d	$a5, $a0, $a6
	bltu	$a5, $a3, .LBB3_99
# %bb.225:                              # %vector.ph1027
	bstrpick.d	$a1, $a2, 30, 3
	slli.d	$a1, $a1, 3
	addi.d	$a3, $a0, 16
	addi.d	$a5, $a6, 16
	addi.d	$a7, $a4, 16
	move	$t0, $a1
	.p2align	4, , 16
.LBB3_226:                              # %vector.body1030
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a7, -16
	vld	$vr1, $a7, 0
	vld	$vr2, $a5, -16
	vld	$vr3, $a5, 0
	vadd.w	$vr0, $vr2, $vr0
	vadd.w	$vr1, $vr3, $vr1
	vst	$vr0, $a3, -16
	vst	$vr1, $a3, 0
	addi.d	$t0, $t0, -8
	addi.d	$a3, $a3, 32
	addi.d	$a5, $a5, 32
	addi.d	$a7, $a7, 32
	bnez	$t0, .LBB3_226
# %bb.227:                              # %middle.block1037
	bne	$a1, $a2, .LBB3_99
	b	.LBB3_101
.Lfunc_end3:
	.size	SetupLargerBlocks, .Lfunc_end3-SetupLargerBlocks
                                        # -- End function
	.globl	SetupFastFullPelSearch          # -- Begin function SetupFastFullPelSearch
	.p2align	5
	.type	SetupFastFullPelSearch,@function
SetupFastFullPelSearch:                 # @SetupFastFullPelSearch
# %bb.0:
	addi.d	$sp, $sp, -368
	st.d	$ra, $sp, 360                   # 8-byte Folded Spill
	st.d	$fp, $sp, 352                   # 8-byte Folded Spill
	st.d	$s0, $sp, 344                   # 8-byte Folded Spill
	st.d	$s1, $sp, 336                   # 8-byte Folded Spill
	st.d	$s2, $sp, 328                   # 8-byte Folded Spill
	st.d	$s3, $sp, 320                   # 8-byte Folded Spill
	st.d	$s4, $sp, 312                   # 8-byte Folded Spill
	st.d	$s5, $sp, 304                   # 8-byte Folded Spill
	st.d	$s6, $sp, 296                   # 8-byte Folded Spill
	st.d	$s7, $sp, 288                   # 8-byte Folded Spill
	st.d	$s8, $sp, 280                   # 8-byte Folded Spill
	move	$s0, $a1
	pcalau12i	$a1, %pc_hi20(BlockSAD)
	ld.d	$a1, $a1, %pc_lo12(BlockSAD)
	pcalau12i	$a2, %pc_hi20(max_search_range)
	ld.d	$a2, $a2, %pc_lo12(max_search_range)
	slli.d	$a3, $s0, 3
	ldx.d	$a1, $a1, $a3
	st.d	$a3, $sp, 40                    # 8-byte Folded Spill
	ldx.d	$a3, $a2, $a3
	slli.d	$t2, $a0, 3
	ldx.d	$a2, $a1, $t2
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	slli.d	$a1, $a0, 2
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	ldx.w	$fp, $a3, $a1
	pcalau12i	$a1, %got_pc_hi20(img)
	ld.d	$a0, $a1, %got_pc_lo12(img)
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	ld.d	$a1, $a0, 0
	ldptr.d	$a3, $a1, 14224
	ld.w	$a5, $a1, 12
	pcalau12i	$a4, %pc_hi20(active_pps)
	ld.d	$a4, $a4, %pc_lo12(active_pps)
	ori	$a6, $zero, 536
	mul.d	$a5, $a5, $a6
	add.d	$a3, $a3, $a5
	ld.w	$a5, $a4, 192
	ld.w	$a3, $a3, 432
	beqz	$a5, .LBB4_3
# %bb.1:
	ld.w	$a5, $a1, 20
	beqz	$a5, .LBB4_5
# %bb.2:
	ori	$a6, $zero, 3
	beq	$a5, $a6, .LBB4_5
.LBB4_3:
	ld.w	$a4, $a4, 196
	beqz	$a4, .LBB4_6
# %bb.4:
	ld.w	$a4, $a1, 20
	ori	$a5, $zero, 1
	bne	$a4, $a5, .LBB4_6
.LBB4_5:
	pcalau12i	$a4, %got_pc_hi20(input)
	ld.d	$a4, $a4, %got_pc_lo12(input)
	ld.d	$a4, $a4, 0
	ldptr.w	$a4, $a4, 2936
	sltu	$t3, $zero, $a4
	b	.LBB4_7
.LBB4_6:
	move	$t3, $zero
.LBB4_7:
	ld.d	$s8, $a2, 56
	slli.d	$a4, $fp, 1
	pcalau12i	$a2, %got_pc_hi20(input)
	ld.d	$s3, $a2, %got_pc_lo12(input)
	ld.d	$a2, $s3, 0
	ldptr.w	$a2, $a2, 5780
	sltui	$a2, $a2, 1
	lu12i.w	$a0, 3
	ori	$a5, $a0, 1944
	add.d	$a1, $a1, $a5
	masknez	$a1, $a1, $a2
	pcalau12i	$a5, %got_pc_hi20(byte_abs)
	ld.d	$a5, $a5, %got_pc_lo12(byte_abs)
	maskeqz	$a2, $a5, $a2
	or	$a1, $a2, $a1
	ld.d	$s5, $a1, 0
	add.w	$a1, $a3, $s0
	slli.d	$a1, $a1, 3
	pcalau12i	$a2, %got_pc_hi20(listX)
	ld.d	$a2, $a2, %got_pc_lo12(listX)
	ldx.d	$a2, $a2, $a1
	ldx.d	$a5, $a2, $t2
	pcalau12i	$a2, %got_pc_hi20(ref_access_method)
	ld.d	$a0, $a2, %got_pc_lo12(ref_access_method)
	ldptr.d	$a2, $a5, 6448
	st.d	$a0, $sp, 192                   # 8-byte Folded Spill
	st.w	$zero, $a0, 0
	pcalau12i	$a3, %got_pc_hi20(ref_pic_sub)
	ld.d	$a0, $a3, %got_pc_lo12(ref_pic_sub)
	st.d	$a0, $sp, 184                   # 8-byte Folded Spill
	st.d	$a2, $a0, 0
	lu12i.w	$a6, 1
	ori	$a2, $a6, 2296
	ldx.w	$a2, $a5, $a2
	ori	$a3, $a6, 2300
	ldx.w	$a3, $a5, $a3
	ori	$a7, $a6, 2312
	ldx.w	$a7, $a5, $a7
	ori	$t0, $a6, 2316
	ldx.w	$t0, $a5, $t0
	pcalau12i	$t1, %pc_hi20(width_pad)
	st.w	$a7, $t1, %pc_lo12(width_pad)
	pcalau12i	$a7, %pc_hi20(height_pad)
	st.w	$t0, $a7, %pc_lo12(height_pad)
	beqz	$t3, .LBB4_9
# %bb.8:
	pcalau12i	$a7, %pc_hi20(wp_weight)
	ld.d	$a7, $a7, %pc_lo12(wp_weight)
	ldx.d	$a7, $a7, $a1
	ldx.d	$a7, $a7, $t2
	ld.w	$a7, $a7, 0
	pcalau12i	$t0, %got_pc_hi20(weight_luma)
	ld.d	$t0, $t0, %got_pc_lo12(weight_luma)
	pcalau12i	$t1, %pc_hi20(wp_offset)
	ld.d	$t1, $t1, %pc_lo12(wp_offset)
	ldx.d	$t1, $t1, $a1
	ldx.d	$t1, $t1, $t2
	st.w	$a7, $t0, 0
	ld.w	$a7, $t1, 0
	pcalau12i	$t0, %got_pc_hi20(offset_luma)
	ld.d	$t0, $t0, %got_pc_lo12(offset_luma)
	st.w	$a7, $t0, 0
.LBB4_9:
	addi.d	$a4, $a4, 1
	pcalau12i	$a7, %got_pc_hi20(ChromaMEEnable)
	ld.d	$a0, $a7, %got_pc_lo12(ChromaMEEnable)
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	ld.w	$a7, $a0, 0
	beqz	$a7, .LBB4_12
# %bb.10:
	ldptr.d	$a7, $a5, 6464
	ld.d	$t0, $a7, 0
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	st.d	$t0, $a0, 8
	ld.d	$a7, $a7, 8
	st.d	$a7, $a0, 16
	ori	$a7, $a6, 2320
	ldx.w	$a7, $a5, $a7
	ori	$a6, $a6, 2324
	ldx.w	$a5, $a5, $a6
	pcalau12i	$a6, %pc_hi20(width_pad_cr)
	st.w	$a7, $a6, %pc_lo12(width_pad_cr)
	pcalau12i	$a6, %pc_hi20(height_pad_cr)
	st.w	$a5, $a6, %pc_lo12(height_pad_cr)
	beqz	$t3, .LBB4_12
# %bb.11:
	pcalau12i	$a5, %pc_hi20(wp_weight)
	ld.d	$a5, $a5, %pc_lo12(wp_weight)
	ldx.d	$a5, $a5, $a1
	ldx.d	$a5, $a5, $t2
	ld.d	$a5, $a5, 4
	pcalau12i	$a6, %got_pc_hi20(weight_cr)
	ld.d	$a6, $a6, %got_pc_lo12(weight_cr)
	pcalau12i	$a7, %pc_hi20(wp_offset)
	ld.d	$a7, $a7, %pc_lo12(wp_offset)
	st.d	$a5, $a6, 0
	ldx.d	$a1, $a7, $a1
	ldx.d	$a0, $a1, $t2
	ld.w	$a1, $a0, 4
	pcalau12i	$a5, %got_pc_hi20(offset_cr)
	ld.d	$a5, $a5, %got_pc_lo12(offset_cr)
	ld.w	$a0, $a0, 8
	st.w	$a1, $a5, 0
	st.w	$a0, $a5, 4
.LBB4_12:
	st.d	$t3, $sp, 120                   # 8-byte Folded Spill
	mul.w	$a0, $a4, $a4
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	addi.w	$a0, $a2, -17
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	addi.w	$a0, $a3, -17
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(enc_picture)
	ld.d	$a0, $a0, %got_pc_lo12(enc_picture)
	ld.d	$a0, $a0, 0
	ldptr.d	$a1, $a0, 6488
	ldptr.d	$a0, $a0, 6512
	ld.d	$s1, $sp, 40                    # 8-byte Folded Reload
	ldx.d	$a1, $a1, $s1
	ldx.d	$a2, $a0, $s1
	ori	$a3, $zero, 16
	addi.d	$a0, $sp, 276
	ori	$a7, $zero, 16
	st.d	$a3, $sp, 0
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	move	$a3, $s2
	move	$a4, $s0
	move	$a5, $zero
	move	$a6, $zero
	pcaddu18i	$ra, %call36(SetMotionVectorPredictor)
	jirl	$ra, $ra, 0
	ld.h	$a0, $sp, 276
	bstrpick.d	$a1, $a0, 30, 29
	pcalau12i	$a2, %pc_hi20(search_center_x)
	ld.d	$a2, $a2, %pc_lo12(search_center_x)
	add.d	$a0, $a0, $a1
	ext.w.h	$a0, $a0
	srli.d	$a0, $a0, 2
	ldx.d	$a2, $a2, $s1
	ld.h	$a1, $sp, 278
	pcalau12i	$a3, %pc_hi20(search_center_y)
	ld.d	$a3, $a3, %pc_lo12(search_center_y)
	ld.d	$a4, $sp, 32                    # 8-byte Folded Reload
	stx.w	$a0, $a2, $a4
	bstrpick.d	$a0, $a1, 30, 29
	add.d	$a0, $a1, $a0
	ldx.d	$a3, $a3, $s1
	ld.d	$a1, $s3, 0
	ext.w.h	$a0, $a0
	srli.d	$a0, $a0, 2
	stx.w	$a0, $a3, $a4
	ldptr.w	$a0, $a1, 4168
	alsl.d	$a2, $s2, $a2, 2
	alsl.d	$a3, $s2, $a3, 2
	bnez	$a0, .LBB4_14
# %bb.13:
	ld.w	$a0, $a2, 0
	sub.w	$a4, $zero, $fp
	slt	$a5, $a4, $a0
	masknez	$a6, $a4, $a5
	maskeqz	$a0, $a0, $a5
	or	$a0, $a0, $a6
	slt	$a5, $a0, $fp
	maskeqz	$a0, $a0, $a5
	masknez	$a5, $fp, $a5
	or	$a0, $a0, $a5
	st.w	$a0, $a2, 0
	ld.w	$a0, $a3, 0
	slt	$a5, $a4, $a0
	masknez	$a4, $a4, $a5
	maskeqz	$a0, $a0, $a5
	or	$a0, $a0, $a4
	slt	$a4, $a0, $fp
	maskeqz	$a0, $a0, $a4
	masknez	$a4, $fp, $a4
	or	$a0, $a0, $a4
	st.w	$a0, $a3, 0
.LBB4_14:                               # %.lr.ph
	ld.w	$a0, $a2, 0
	addi.w	$a4, $fp, -2047
	ori	$a5, $zero, 2047
	sub.w	$a5, $a5, $fp
	slt	$a6, $a4, $a0
	masknez	$a4, $a4, $a6
	maskeqz	$a0, $a0, $a6
	or	$a0, $a0, $a4
	slt	$a4, $a0, $a5
	maskeqz	$a6, $a0, $a4
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	masknez	$a4, $a5, $a4
	or	$a4, $a6, $a4
	st.w	$a4, $a2, 0
	ld.w	$a4, $a0, 8
	slli.d	$a5, $a4, 4
	alsl.d	$a4, $a4, $a5, 3
	pcalau12i	$a5, %got_pc_hi20(LEVELMVLIMIT)
	ld.d	$a5, $a5, %got_pc_lo12(LEVELMVLIMIT)
	add.d	$a6, $a5, $a4
	ldx.w	$a4, $a5, $a4
	ld.w	$a5, $a6, 4
	ld.w	$a6, $a3, 0
	add.w	$a4, $a4, $fp
	sub.w	$a5, $a5, $fp
	slt	$a7, $a4, $a6
	masknez	$a4, $a4, $a7
	maskeqz	$a6, $a6, $a7
	or	$a4, $a6, $a4
	slt	$a6, $a4, $a5
	maskeqz	$a4, $a4, $a6
	masknez	$a5, $a5, $a6
	or	$a4, $a4, $a5
	st.w	$a4, $a3, 0
	ld.w	$a4, $a0, 192
	ld.w	$a5, $a2, 0
	add.d	$a4, $a5, $a4
	st.w	$a4, $a2, 0
	ld.w	$a4, $a0, 196
	ld.w	$a5, $a3, 0
	add.w	$t1, $a5, $a4
	st.w	$t1, $a3, 0
	ld.w	$a3, $a0, 196
	pcalau12i	$a4, %pc_hi20(imgY_org)
	ld.d	$a4, $a4, %pc_lo12(imgY_org)
	ld.w	$t2, $a2, 0
	addi.d	$a2, $a3, -1
	alsl.d	$a3, $a3, $a4, 3
	pcalau12i	$a4, %pc_hi20(SetupFastFullPelSearch.orig_pels)
	addi.d	$s2, $a4, %pc_lo12(SetupFastFullPelSearch.orig_pels)
	.p2align	4, , 16
.LBB4_15:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a4, $a3, 0
	ld.w	$a5, $a0, 192
	alsl.d	$a6, $a5, $a4, 1
	vld	$vr0, $a6, 16
	slli.d	$a5, $a5, 1
	vst	$vr0, $s2, 16
	vldx	$vr0, $a4, $a5
	vst	$vr0, $s2, 0
	ld.w	$a4, $a0, 196
	addi.d	$s2, $s2, 32
	addi.w	$a4, $a4, 15
	addi.d	$a2, $a2, 1
	addi.d	$a3, $a3, 8
	blt	$a2, $a4, .LBB4_15
# %bb.16:                               # %._crit_edge
	ld.d	$a2, $sp, 136                   # 8-byte Folded Reload
	ld.w	$a2, $a2, 0
	st.d	$s0, $sp, 16                    # 8-byte Folded Spill
	st.d	$t2, $sp, 128                   # 8-byte Folded Spill
	beqz	$a2, .LBB4_25
# %bb.17:                               # %.preheader554.preheader
	st.d	$s3, $sp, 264                   # 8-byte Folded Spill
	ldptr.w	$a1, $a0, 15548
	blez	$a1, .LBB4_23
# %bb.18:                               # %.lr.ph563
	move	$s7, $t1
	ld.w	$s4, $a0, 204
	lu12i.w	$a1, 3
	ori	$s3, $a1, 3256
	ldx.w	$a2, $a0, $s3
	slli.d	$s6, $s4, 3
	pcalau12i	$s1, %pc_hi20(imgUV_org)
	ld.d	$s0, $sp, 152                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB4_19:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s1, %pc_lo12(imgUV_org)
	ld.d	$a1, $a1, 0
	ldx.d	$a1, $a1, $s6
	ld.w	$a0, $a0, 200
	alsl.d	$a1, $a0, $a1, 1
	slli.d	$a2, $a2, 1
	move	$a0, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 0
	ldptr.w	$a2, $a0, 15544
	ld.w	$a3, $a0, 204
	ldptr.w	$a1, $a0, 15548
	alsl.d	$s2, $a2, $s2, 1
	addi.d	$s4, $s4, 1
	add.w	$a3, $a1, $a3
	addi.d	$s6, $s6, 8
	blt	$s4, $a3, .LBB4_19
# %bb.20:                               # %._crit_edge564
	blez	$a1, .LBB4_24
# %bb.21:                               # %.lr.ph563.1
	ld.w	$s4, $a0, 204
	ldx.w	$a2, $a0, $s3
	slli.d	$s3, $s4, 3
	lu12i.w	$a1, 3
	ori	$s6, $a1, 3260
	ld.d	$s0, $sp, 152                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB4_22:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s1, %pc_lo12(imgUV_org)
	ld.d	$a1, $a1, 8
	ldx.d	$a1, $a1, $s3
	ld.w	$a0, $a0, 200
	alsl.d	$a1, $a0, $a1, 1
	slli.d	$a2, $a2, 1
	move	$a0, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 0
	ldptr.w	$a2, $a0, 15544
	ld.w	$a1, $a0, 204
	ldx.w	$a3, $a0, $s6
	alsl.d	$s2, $a2, $s2, 1
	addi.d	$s4, $s4, 1
	add.w	$a1, $a3, $a1
	addi.d	$s3, $s3, 8
	blt	$s4, $a1, .LBB4_22
	b	.LBB4_24
.LBB4_23:
	move	$s7, $t1
.LBB4_24:                               # %._crit_edge564.1
	ld.d	$a1, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	move	$t1, $s7
	ld.d	$t2, $sp, 128                   # 8-byte Folded Reload
.LBB4_25:                               # %.loopexit555
	slt	$a2, $t2, $fp
	xori	$a2, $a2, 1
	ld.d	$a3, $sp, 48                    # 8-byte Folded Reload
	sub.w	$a3, $a3, $fp
	slt	$a3, $a3, $t2
	xori	$a3, $a3, 1
	slt	$a4, $t1, $fp
	xori	$a4, $a4, 1
	and	$a2, $a2, $a4
	ldptr.w	$a4, $a1, 4168
	and	$a1, $a2, $a3
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	sub.w	$a2, $a2, $fp
	slt	$a2, $a2, $t1
	xori	$a2, $a2, 1
	beqz	$a4, .LBB4_152
.LBB4_26:                               # %.loopexit553
	and	$a0, $a1, $a2
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(spiral_search_y)
	ld.d	$a0, $a0, %got_pc_lo12(spiral_search_y)
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(spiral_search_x)
	ld.d	$a0, $a0, %got_pc_lo12(spiral_search_x)
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(get_line)
	ld.d	$a0, $a0, %got_pc_lo12(get_line)
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(SetupFastFullPelSearch.orig_pels)
	addi.d	$a0, $a0, %pc_lo12(SetupFastFullPelSearch.orig_pels)
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	lu12i.w	$a0, 3
	ori	$a0, $a0, 3232
	st.d	$a0, $sp, 232                   # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(weight_luma)
	ld.d	$a0, $a0, %got_pc_lo12(weight_luma)
	st.d	$a0, $sp, 224                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(wp_luma_round)
	st.d	$a0, $sp, 216                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(luma_log_weight_denom)
	st.d	$a0, $sp, 208                   # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(offset_luma)
	ld.d	$a0, $a0, %got_pc_lo12(offset_luma)
	st.d	$a0, $sp, 200                   # 8-byte Folded Spill
	move	$fp, $zero
	pcalau12i	$a0, %pc_hi20(img_padded_size_x)
	st.d	$a0, $sp, 264                   # 8-byte Folded Spill
	ori	$s7, $zero, 5
	st.d	$t1, $sp, 112                   # 8-byte Folded Spill
	b	.LBB4_28
	.p2align	4, , 16
.LBB4_27:                               # %.loopexit
                                        #   in Loop: Header=BB4_28 Depth=1
	ld.d	$fp, $sp, 160                   # 8-byte Folded Reload
	addi.d	$fp, $fp, 1
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 112                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 128                   # 8-byte Folded Reload
	bgeu	$fp, $a0, .LBB4_151
.LBB4_28:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_58 Depth 2
                                        #       Child Loop BB4_59 Depth 3
                                        #     Child Loop BB4_65 Depth 2
                                        #       Child Loop BB4_98 Depth 3
                                        #       Child Loop BB4_69 Depth 3
                                        #         Child Loop BB4_72 Depth 4
                                        #         Child Loop BB4_75 Depth 4
                                        #         Child Loop BB4_79 Depth 4
                                        #         Child Loop BB4_82 Depth 4
                                        #         Child Loop BB4_86 Depth 4
                                        #         Child Loop BB4_89 Depth 4
                                        #         Child Loop BB4_93 Depth 4
                                        #         Child Loop BB4_96 Depth 4
                                        #     Child Loop BB4_117 Depth 2
                                        #       Child Loop BB4_150 Depth 3
                                        #       Child Loop BB4_121 Depth 3
                                        #         Child Loop BB4_124 Depth 4
                                        #         Child Loop BB4_127 Depth 4
                                        #         Child Loop BB4_131 Depth 4
                                        #         Child Loop BB4_134 Depth 4
                                        #         Child Loop BB4_138 Depth 4
                                        #         Child Loop BB4_141 Depth 4
                                        #         Child Loop BB4_145 Depth 4
                                        #         Child Loop BB4_148 Depth 4
                                        #     Child Loop BB4_38 Depth 2
                                        #       Child Loop BB4_39 Depth 3
                                        #     Child Loop BB4_45 Depth 2
                                        #       Child Loop BB4_48 Depth 3
                                        #         Child Loop BB4_50 Depth 4
                                        #         Child Loop BB4_52 Depth 4
                                        #         Child Loop BB4_54 Depth 4
                                        #         Child Loop BB4_56 Depth 4
                                        #     Child Loop BB4_102 Depth 2
                                        #       Child Loop BB4_105 Depth 3
                                        #         Child Loop BB4_107 Depth 4
                                        #         Child Loop BB4_109 Depth 4
                                        #         Child Loop BB4_111 Depth 4
                                        #         Child Loop BB4_113 Depth 4
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	slli.d	$a2, $fp, 1
	ldx.h	$a0, $a0, $a2
	ldx.h	$a2, $a1, $a2
	add.w	$a1, $t1, $a0
	add.w	$a2, $t2, $a2
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	bnez	$a0, .LBB4_36
# %bb.29:                               #   in Loop: Header=BB4_28 Depth=1
	bltz	$a1, .LBB4_34
# %bb.30:                               #   in Loop: Header=BB4_28 Depth=1
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	blt	$a0, $a1, .LBB4_34
# %bb.31:                               #   in Loop: Header=BB4_28 Depth=1
	bltz	$a2, .LBB4_34
# %bb.32:                               #   in Loop: Header=BB4_28 Depth=1
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	blt	$a0, $a2, .LBB4_34
# %bb.33:                               #   in Loop: Header=BB4_28 Depth=1
	move	$a0, $zero
	b	.LBB4_35
	.p2align	4, , 16
.LBB4_34:                               #   in Loop: Header=BB4_28 Depth=1
	ori	$a0, $zero, 1
.LBB4_35:                               # %.sink.split
                                        #   in Loop: Header=BB4_28 Depth=1
	ld.d	$a3, $sp, 192                   # 8-byte Folded Reload
	st.w	$a0, $a3, 0
.LBB4_36:                               #   in Loop: Header=BB4_28 Depth=1
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	slli.d	$a0, $a0, 3
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
	ldx.d	$a3, $a3, $a0
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ori	$a4, $zero, 80
	alsl.w	$a1, $a1, $a4, 2
	alsl.w	$a2, $a2, $a4, 2
	st.d	$a1, $sp, 168                   # 8-byte Folded Spill
	st.d	$a2, $sp, 176                   # 8-byte Folded Spill
	jirl	$ra, $a3, 0
	st.d	$fp, $sp, 160                   # 8-byte Folded Spill
	slli.d	$fp, $fp, 2
	pcalau12i	$a1, %pc_hi20(img_cr_padded_size_x)
	st.d	$a1, $sp, 256                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	beqz	$a1, .LBB4_57
# %bb.37:                               #   in Loop: Header=BB4_28 Depth=1
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	st.d	$a1, $sp, 248                   # 8-byte Folded Spill
	move	$a2, $zero
	move	$a3, $zero
	ld.d	$s4, $sp, 64                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB4_38:                               # %.preheader548
                                        #   Parent Loop BB4_28 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_39 Depth 3
	move	$t8, $zero
	move	$s0, $zero
	move	$a4, $zero
	move	$t7, $zero
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 248                   # 8-byte Folded Reload
	ldx.w	$a6, $a5, $a1
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	ld.w	$a7, $a1, 0
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	ld.w	$t0, $a1, %pc_lo12(wp_luma_round)
	ld.d	$a1, $sp, 264                   # 8-byte Folded Reload
	ld.w	$a5, $a1, %pc_lo12(img_padded_size_x)
	ld.d	$a1, $sp, 208                   # 8-byte Folded Reload
	ld.w	$t1, $a1, %pc_lo12(luma_log_weight_denom)
	ld.d	$a1, $sp, 200                   # 8-byte Folded Reload
	ld.w	$t2, $a1, 0
	addi.d	$t3, $a0, 16
	slli.d	$t4, $a5, 1
	ori	$t5, $zero, 4
	move	$t6, $s4
	.p2align	4, , 16
.LBB4_39:                               #   Parent Loop BB4_28 Depth=1
                                        #     Parent Loop BB4_38 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.hu	$s1, $t3, -16
	mul.d	$s1, $a7, $s1
	add.d	$s1, $s1, $t0
	sra.w	$s1, $s1, $t1
	add.w	$s1, $s1, $t2
	srai.d	$s2, $s1, 63
	andn	$s1, $s1, $s2
	slt	$s2, $s1, $a6
	maskeqz	$s1, $s1, $s2
	ld.hu	$s6, $t6, 0
	masknez	$s2, $a6, $s2
	or	$s1, $s1, $s2
	ld.hu	$s2, $t3, -14
	sub.w	$s1, $s1, $s6
	slli.d	$s1, $s1, 2
	ldx.w	$s1, $s5, $s1
	mul.d	$s2, $a7, $s2
	add.d	$s2, $s2, $t0
	sra.w	$s2, $s2, $t1
	add.w	$s2, $s2, $t2
	srai.d	$s6, $s2, 63
	andn	$s2, $s2, $s6
	slt	$s6, $s2, $a6
	maskeqz	$s2, $s2, $s6
	ld.hu	$ra, $t6, 2
	masknez	$s6, $a6, $s6
	or	$s2, $s2, $s6
	ld.hu	$s6, $t3, -12
	sub.w	$s2, $s2, $ra
	slli.d	$s2, $s2, 2
	ldx.w	$s2, $s5, $s2
	mul.d	$s6, $a7, $s6
	add.d	$s6, $s6, $t0
	sra.w	$s6, $s6, $t1
	add.w	$s6, $s6, $t2
	srai.d	$ra, $s6, 63
	andn	$s6, $s6, $ra
	slt	$ra, $s6, $a6
	ld.hu	$s3, $t6, 4
	maskeqz	$s6, $s6, $ra
	masknez	$ra, $a6, $ra
	or	$s6, $s6, $ra
	sub.w	$s3, $s6, $s3
	slli.d	$s3, $s3, 2
	ldx.w	$s3, $s5, $s3
	ld.hu	$s6, $t3, -10
	add.d	$t8, $s1, $t8
	add.d	$t8, $t8, $s2
	add.d	$t8, $t8, $s3
	mul.d	$s1, $a7, $s6
	add.d	$s1, $s1, $t0
	sra.w	$s1, $s1, $t1
	add.w	$s1, $s1, $t2
	srai.d	$s2, $s1, 63
	andn	$s1, $s1, $s2
	slt	$s2, $s1, $a6
	maskeqz	$s1, $s1, $s2
	ld.hu	$s3, $t6, 6
	masknez	$s2, $a6, $s2
	or	$s1, $s1, $s2
	ld.hu	$s2, $t3, -8
	sub.w	$s1, $s1, $s3
	slli.d	$s1, $s1, 2
	ldx.w	$s1, $s5, $s1
	mul.d	$s2, $a7, $s2
	add.d	$s2, $s2, $t0
	sra.w	$s2, $s2, $t1
	add.w	$s2, $s2, $t2
	srai.d	$s3, $s2, 63
	andn	$s2, $s2, $s3
	slt	$s3, $s2, $a6
	maskeqz	$s2, $s2, $s3
	ld.hu	$s6, $t6, 8
	masknez	$s3, $a6, $s3
	or	$s2, $s2, $s3
	ld.hu	$s3, $t3, -6
	sub.w	$s2, $s2, $s6
	slli.d	$s2, $s2, 2
	ldx.w	$s2, $s5, $s2
	mul.d	$s3, $a7, $s3
	add.d	$s3, $s3, $t0
	sra.w	$s3, $s3, $t1
	add.w	$s3, $s3, $t2
	srai.d	$s6, $s3, 63
	andn	$s3, $s3, $s6
	slt	$s6, $s3, $a6
	ld.hu	$ra, $t6, 10
	maskeqz	$s3, $s3, $s6
	masknez	$s6, $a6, $s6
	or	$s3, $s3, $s6
	sub.w	$s3, $s3, $ra
	slli.d	$s3, $s3, 2
	ldx.w	$s3, $s5, $s3
	ld.hu	$s6, $t3, -4
	add.d	$t8, $t8, $s1
	add.d	$s0, $s2, $s0
	add.d	$s0, $s0, $s3
	mul.d	$s1, $a7, $s6
	add.d	$s1, $s1, $t0
	sra.w	$s1, $s1, $t1
	add.w	$s1, $s1, $t2
	srai.d	$s2, $s1, 63
	andn	$s1, $s1, $s2
	slt	$s2, $s1, $a6
	maskeqz	$s1, $s1, $s2
	ld.hu	$s3, $t6, 12
	masknez	$s2, $a6, $s2
	or	$s1, $s1, $s2
	ld.hu	$s2, $t3, -2
	sub.w	$s1, $s1, $s3
	slli.d	$s1, $s1, 2
	ldx.w	$s1, $s5, $s1
	mul.d	$s2, $a7, $s2
	add.d	$s2, $s2, $t0
	sra.w	$s2, $s2, $t1
	add.w	$s2, $s2, $t2
	srai.d	$s3, $s2, 63
	andn	$s2, $s2, $s3
	slt	$s3, $s2, $a6
	maskeqz	$s2, $s2, $s3
	ld.hu	$s6, $t6, 14
	masknez	$s3, $a6, $s3
	or	$s2, $s2, $s3
	ld.hu	$s3, $t3, 0
	sub.w	$s2, $s2, $s6
	slli.d	$s2, $s2, 2
	ldx.w	$s2, $s5, $s2
	mul.d	$s3, $a7, $s3
	add.d	$s3, $s3, $t0
	sra.w	$s3, $s3, $t1
	add.w	$s3, $s3, $t2
	srai.d	$s6, $s3, 63
	andn	$s3, $s3, $s6
	slt	$s6, $s3, $a6
	ld.hu	$ra, $t6, 16
	maskeqz	$s3, $s3, $s6
	masknez	$s6, $a6, $s6
	or	$s3, $s3, $s6
	sub.w	$s3, $s3, $ra
	slli.d	$s3, $s3, 2
	ldx.w	$s3, $s5, $s3
	ld.hu	$s6, $t3, 2
	add.d	$s0, $s0, $s1
	add.d	$s0, $s0, $s2
	add.d	$t7, $s3, $t7
	mul.d	$s1, $a7, $s6
	add.d	$s1, $s1, $t0
	sra.w	$s1, $s1, $t1
	add.w	$s1, $s1, $t2
	srai.d	$s2, $s1, 63
	andn	$s1, $s1, $s2
	slt	$s2, $s1, $a6
	maskeqz	$s1, $s1, $s2
	ld.hu	$s3, $t6, 18
	masknez	$s2, $a6, $s2
	or	$s1, $s1, $s2
	ld.hu	$s2, $t3, 4
	sub.w	$s1, $s1, $s3
	slli.d	$s1, $s1, 2
	ldx.w	$s1, $s5, $s1
	mul.d	$s2, $a7, $s2
	add.d	$s2, $s2, $t0
	sra.w	$s2, $s2, $t1
	add.w	$s2, $s2, $t2
	srai.d	$s3, $s2, 63
	andn	$s2, $s2, $s3
	slt	$s3, $s2, $a6
	maskeqz	$s2, $s2, $s3
	ld.hu	$s6, $t6, 20
	masknez	$s3, $a6, $s3
	or	$s2, $s2, $s3
	ld.hu	$s3, $t3, 6
	sub.w	$s2, $s2, $s6
	slli.d	$s2, $s2, 2
	ldx.w	$s2, $s5, $s2
	mul.d	$s3, $a7, $s3
	add.d	$s3, $s3, $t0
	sra.w	$s3, $s3, $t1
	add.w	$s3, $s3, $t2
	srai.d	$s6, $s3, 63
	andn	$s3, $s3, $s6
	slt	$s6, $s3, $a6
	ld.hu	$ra, $t6, 22
	maskeqz	$s3, $s3, $s6
	masknez	$s6, $a6, $s6
	or	$s3, $s3, $s6
	sub.w	$s3, $s3, $ra
	slli.d	$s3, $s3, 2
	ldx.w	$s3, $s5, $s3
	ld.hu	$s6, $t3, 8
	add.d	$t7, $t7, $s1
	add.d	$t7, $t7, $s2
	add.d	$t7, $t7, $s3
	mul.d	$s1, $a7, $s6
	add.d	$s1, $s1, $t0
	sra.w	$s1, $s1, $t1
	add.w	$s1, $s1, $t2
	srai.d	$s2, $s1, 63
	andn	$s1, $s1, $s2
	slt	$s2, $s1, $a6
	maskeqz	$s1, $s1, $s2
	ld.hu	$s3, $t6, 24
	ld.hu	$s6, $t3, 10
	masknez	$s2, $a6, $s2
	or	$s1, $s1, $s2
	sub.w	$s1, $s1, $s3
	mul.d	$s2, $a7, $s6
	add.d	$s2, $s2, $t0
	sra.w	$s2, $s2, $t1
	add.w	$s2, $s2, $t2
	srai.d	$s3, $s2, 63
	andn	$s2, $s2, $s3
	slt	$s3, $s2, $a6
	maskeqz	$s2, $s2, $s3
	ld.hu	$s6, $t6, 26
	ld.hu	$ra, $t3, 12
	masknez	$s3, $a6, $s3
	or	$s2, $s2, $s3
	sub.w	$s2, $s2, $s6
	mul.d	$s3, $a7, $ra
	add.d	$s3, $s3, $t0
	sra.w	$s3, $s3, $t1
	add.w	$s3, $s3, $t2
	srai.d	$s6, $s3, 63
	andn	$s3, $s3, $s6
	slt	$s6, $s3, $a6
	maskeqz	$s3, $s3, $s6
	ld.hu	$ra, $t6, 28
	ld.hu	$a1, $t3, 14
	masknez	$s6, $a6, $s6
	or	$s3, $s3, $s6
	sub.w	$s3, $s3, $ra
	mul.d	$a1, $a7, $a1
	add.d	$a1, $a1, $t0
	sra.w	$a1, $a1, $t1
	add.w	$a1, $a1, $t2
	srai.d	$s6, $a1, 63
	andn	$a1, $a1, $s6
	slt	$s6, $a1, $a6
	ld.hu	$ra, $t6, 30
	maskeqz	$a1, $a1, $s6
	masknez	$s6, $a6, $s6
	or	$a1, $a1, $s6
	sub.w	$a1, $a1, $ra
	slli.d	$s1, $s1, 2
	ldx.w	$s1, $s5, $s1
	slli.d	$s2, $s2, 2
	ldx.w	$s2, $s5, $s2
	slli.d	$s3, $s3, 2
	ldx.w	$s3, $s5, $s3
	slli.d	$a1, $a1, 2
	ldx.w	$a1, $s5, $a1
	add.d	$a4, $s1, $a4
	add.d	$a4, $a4, $s2
	add.d	$a4, $a4, $s3
	add.d	$a4, $a4, $a1
	addi.w	$t5, $t5, -1
	add.d	$t3, $t3, $t4
	addi.d	$t6, $t6, 32
	bnez	$t5, .LBB4_39
# %bb.40:                               #   in Loop: Header=BB4_38 Depth=2
	addi.d	$s4, $s4, 128
	alsl.d	$a1, $a2, $s8, 3
	slli.d	$a6, $a2, 3
	ldx.d	$a6, $s8, $a6
	ld.d	$a7, $a1, 8
	alsl.d	$a0, $a5, $a0, 3
	ld.d	$a5, $a1, 16
	stx.w	$t8, $a6, $fp
	stx.w	$s0, $a7, $fp
	ld.d	$a1, $a1, 24
	stx.w	$t7, $a5, $fp
	addi.d	$a2, $a2, 4
	addi.w	$a3, $a3, 1
	stx.w	$a4, $a1, $fp
	ori	$a1, $zero, 4
	bne	$a3, $a1, .LBB4_38
# %bb.41:                               #   in Loop: Header=BB4_28 Depth=1
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	beqz	$a0, .LBB4_27
# %bb.42:                               # %.preheader550
                                        #   in Loop: Header=BB4_28 Depth=1
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	slli.d	$a0, $a0, 3
	pcalau12i	$a1, %got_pc_hi20(get_crline)
	ld.d	$a1, $a1, %got_pc_lo12(get_crline)
	st.d	$a1, $sp, 72                    # 8-byte Folded Spill
	ldx.d	$a3, $a1, $a0
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 8
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 176                   # 8-byte Folded Reload
	jirl	$ra, $a3, 0
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	move	$a2, $zero
	move	$a3, $zero
	b	.LBB4_45
	.p2align	4, , 16
.LBB4_43:                               #   in Loop: Header=BB4_45 Depth=2
	move	$a5, $zero
	move	$a4, $zero
	move	$a6, $zero
	move	$t0, $zero
.LBB4_44:                               # %._crit_edge691
                                        #   in Loop: Header=BB4_45 Depth=2
	slli.d	$a7, $a2, 3
	ldx.d	$a7, $s8, $a7
	ldx.w	$t1, $a7, $fp
	alsl.d	$t2, $a2, $s8, 3
	ld.d	$t3, $t2, 8
	add.d	$t0, $t1, $t0
	stx.w	$t0, $a7, $fp
	ldx.w	$a7, $t3, $fp
	ld.d	$t0, $t2, 16
	add.d	$a6, $a7, $a6
	stx.w	$a6, $t3, $fp
	ldx.w	$a6, $t0, $fp
	ld.d	$a7, $t2, 24
	add.d	$a5, $a6, $a5
	stx.w	$a5, $t0, $fp
	ldx.w	$a5, $a7, $fp
	addi.d	$a2, $a2, 4
	add.d	$a4, $a5, $a4
	addi.w	$a3, $a3, 1
	stx.w	$a4, $a7, $fp
	ori	$a4, $zero, 4
	beq	$a3, $a4, .LBB4_99
.LBB4_45:                               # %.preheader546
                                        #   Parent Loop BB4_28 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_48 Depth 3
                                        #         Child Loop BB4_50 Depth 4
                                        #         Child Loop BB4_52 Depth 4
                                        #         Child Loop BB4_54 Depth 4
                                        #         Child Loop BB4_56 Depth 4
	ldptr.w	$a7, $a1, 15548
	pcalau12i	$a5, %pc_hi20(wp_chroma_round)
	pcalau12i	$a6, %pc_hi20(chroma_log_weight_denom)
	lu12i.w	$a4, 3
	ori	$s1, $a4, 3236
	st.d	$a5, $sp, 248                   # 8-byte Folded Spill
	st.d	$a6, $sp, 240                   # 8-byte Folded Spill
	blez	$a7, .LBB4_43
# %bb.46:                               # %.preheader541.lr.ph
                                        #   in Loop: Header=BB4_45 Depth=2
	ldptr.w	$t1, $a1, 15544
	ld.w	$t2, $a5, %pc_lo12(wp_chroma_round)
	ld.d	$a4, $sp, 256                   # 8-byte Folded Reload
	ld.w	$a4, $a4, %pc_lo12(img_cr_padded_size_x)
	ld.w	$t3, $a6, %pc_lo12(chroma_log_weight_denom)
	sub.w	$t4, $a4, $t1
	pcalau12i	$a4, %got_pc_hi20(weight_cr)
	ld.d	$a4, $a4, %got_pc_lo12(weight_cr)
	ld.w	$t5, $a4, 0
	pcalau12i	$a4, %got_pc_hi20(offset_cr)
	ld.d	$a4, $a4, %got_pc_lo12(offset_cr)
	ld.w	$t6, $a4, 0
	move	$t7, $zero
	move	$t0, $zero
	move	$a6, $zero
	move	$a4, $zero
	move	$a5, $zero
	b	.LBB4_48
	.p2align	4, , 16
.LBB4_47:                               # %._crit_edge680
                                        #   in Loop: Header=BB4_48 Depth=3
	addi.w	$t7, $t7, 4
	alsl.d	$a0, $t4, $a0, 1
	bge	$t7, $a7, .LBB4_44
.LBB4_48:                               # %.preheader541
                                        #   Parent Loop BB4_28 Depth=1
                                        #     Parent Loop BB4_45 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB4_50 Depth 4
                                        #         Child Loop BB4_52 Depth 4
                                        #         Child Loop BB4_54 Depth 4
                                        #         Child Loop BB4_56 Depth 4
	blez	$t1, .LBB4_47
# %bb.49:                               # %.lr.ph654
                                        #   in Loop: Header=BB4_48 Depth=3
	ldx.w	$t8, $a1, $s1
	move	$s2, $zero
	.p2align	4, , 16
.LBB4_50:                               #   Parent Loop BB4_28 Depth=1
                                        #     Parent Loop BB4_45 Depth=2
                                        #       Parent Loop BB4_48 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.hu	$s3, $a0, 0
	mul.d	$s3, $t5, $s3
	add.d	$s3, $s3, $t2
	sra.w	$s3, $s3, $t3
	add.w	$s3, $s3, $t6
	srai.d	$ra, $s3, 63
	andn	$s3, $s3, $ra
	slt	$ra, $s3, $t8
	ld.hu	$s6, $s4, 0
	maskeqz	$s3, $s3, $ra
	masknez	$ra, $t8, $ra
	or	$s3, $s3, $ra
	sub.w	$s3, $s3, $s6
	slli.d	$s3, $s3, 2
	ldx.w	$s3, $s5, $s3
	addi.d	$a0, $a0, 2
	addi.d	$s4, $s4, 2
	addi.w	$s2, $s2, 4
	add.d	$t0, $s3, $t0
	blt	$s2, $t1, .LBB4_50
# %bb.51:                               # %.lr.ph663
                                        #   in Loop: Header=BB4_48 Depth=3
	ldx.w	$t8, $a1, $s1
	move	$ra, $zero
	move	$s2, $zero
	.p2align	4, , 16
.LBB4_52:                               #   Parent Loop BB4_28 Depth=1
                                        #     Parent Loop BB4_45 Depth=2
                                        #       Parent Loop BB4_48 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ldx.hu	$s3, $a0, $ra
	mul.d	$s3, $t5, $s3
	add.d	$s3, $s3, $t2
	sra.w	$s3, $s3, $t3
	add.w	$s3, $s3, $t6
	srai.d	$s6, $s3, 63
	andn	$s3, $s3, $s6
	slt	$s6, $s3, $t8
	ldx.hu	$s0, $s4, $ra
	maskeqz	$s3, $s3, $s6
	masknez	$s6, $t8, $s6
	or	$s3, $s3, $s6
	sub.w	$s0, $s3, $s0
	slli.d	$s0, $s0, 2
	ldx.w	$s0, $s5, $s0
	add.d	$a6, $s0, $a6
	addi.w	$s2, $s2, 4
	addi.d	$ra, $ra, 2
	blt	$s2, $t1, .LBB4_52
# %bb.53:                               # %.lr.ph671
                                        #   in Loop: Header=BB4_48 Depth=3
	ldx.w	$t8, $a1, $s1
	move	$s2, $zero
	add.d	$s4, $s4, $ra
	add.d	$a0, $a0, $ra
	.p2align	4, , 16
.LBB4_54:                               #   Parent Loop BB4_28 Depth=1
                                        #     Parent Loop BB4_45 Depth=2
                                        #       Parent Loop BB4_48 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.hu	$s0, $a0, 0
	mul.d	$s0, $t5, $s0
	add.d	$s0, $s0, $t2
	sra.w	$s0, $s0, $t3
	add.w	$s0, $s0, $t6
	srai.d	$s3, $s0, 63
	andn	$s0, $s0, $s3
	slt	$s3, $s0, $t8
	ld.hu	$s6, $s4, 0
	maskeqz	$s0, $s0, $s3
	masknez	$s3, $t8, $s3
	or	$s0, $s0, $s3
	sub.w	$s0, $s0, $s6
	slli.d	$s0, $s0, 2
	ldx.w	$s0, $s5, $s0
	addi.d	$a0, $a0, 2
	addi.d	$s4, $s4, 2
	addi.w	$s2, $s2, 4
	add.d	$a5, $s0, $a5
	blt	$s2, $t1, .LBB4_54
# %bb.55:                               # %.lr.ph679
                                        #   in Loop: Header=BB4_48 Depth=3
	ldx.w	$t8, $a1, $s1
	move	$s2, $zero
	.p2align	4, , 16
.LBB4_56:                               #   Parent Loop BB4_28 Depth=1
                                        #     Parent Loop BB4_45 Depth=2
                                        #       Parent Loop BB4_48 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.hu	$s0, $a0, 0
	mul.d	$s0, $t5, $s0
	add.d	$s0, $s0, $t2
	sra.w	$s0, $s0, $t3
	add.w	$s0, $s0, $t6
	srai.d	$s3, $s0, 63
	andn	$s0, $s0, $s3
	slt	$s3, $s0, $t8
	ld.hu	$s6, $s4, 0
	maskeqz	$s0, $s0, $s3
	masknez	$s3, $t8, $s3
	or	$s0, $s0, $s3
	sub.w	$s0, $s0, $s6
	slli.d	$s0, $s0, 2
	ldx.w	$s0, $s5, $s0
	addi.d	$a0, $a0, 2
	addi.d	$s4, $s4, 2
	addi.w	$s2, $s2, 4
	add.d	$a4, $s0, $a4
	blt	$s2, $t1, .LBB4_56
	b	.LBB4_47
	.p2align	4, , 16
.LBB4_57:                               # %.preheader549.preheader
                                        #   in Loop: Header=BB4_28 Depth=1
	pcalau12i	$a1, %pc_hi20(SetupFastFullPelSearch.orig_pels)
	addi.d	$s4, $a1, %pc_lo12(SetupFastFullPelSearch.orig_pels)
	move	$a1, $zero
	move	$a2, $zero
	.p2align	4, , 16
.LBB4_58:                               # %.preheader549
                                        #   Parent Loop BB4_28 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_59 Depth 3
	ld.d	$a3, $sp, 264                   # 8-byte Folded Reload
	ld.w	$a3, $a3, %pc_lo12(img_padded_size_x)
	move	$t2, $zero
	move	$t3, $zero
	move	$a4, $zero
	move	$a5, $zero
	addi.d	$a6, $a0, 16
	slli.d	$a7, $a3, 1
	ori	$t0, $zero, 4
	move	$t1, $s4
	.p2align	4, , 16
.LBB4_59:                               #   Parent Loop BB4_28 Depth=1
                                        #     Parent Loop BB4_58 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.hu	$t4, $a6, -16
	ld.hu	$t5, $t1, 0
	ld.hu	$t6, $a6, -14
	ld.hu	$t7, $t1, 2
	sub.d	$t4, $t4, $t5
	slli.d	$t4, $t4, 2
	ldx.w	$t4, $s5, $t4
	sub.d	$t5, $t6, $t7
	slli.d	$t5, $t5, 2
	ldx.w	$t5, $s5, $t5
	add.d	$t2, $t4, $t2
	ld.hu	$t4, $a6, -12
	ld.hu	$t6, $t1, 4
	add.d	$t2, $t2, $t5
	ld.hu	$t5, $a6, -10
	ld.hu	$t7, $t1, 6
	sub.d	$t4, $t4, $t6
	slli.d	$t4, $t4, 2
	ldx.w	$t4, $s5, $t4
	sub.d	$t5, $t5, $t7
	slli.d	$t5, $t5, 2
	ldx.w	$t5, $s5, $t5
	add.d	$t2, $t2, $t4
	ld.hu	$t4, $a6, -8
	ld.hu	$t6, $t1, 8
	add.d	$t2, $t2, $t5
	ld.hu	$t5, $a6, -6
	ld.hu	$t7, $t1, 10
	sub.d	$t4, $t4, $t6
	slli.d	$t4, $t4, 2
	ldx.w	$t4, $s5, $t4
	sub.d	$t5, $t5, $t7
	slli.d	$t5, $t5, 2
	ldx.w	$t5, $s5, $t5
	add.d	$t3, $t4, $t3
	ld.hu	$t4, $a6, -4
	ld.hu	$t6, $t1, 12
	add.d	$t3, $t3, $t5
	ld.hu	$t5, $a6, -2
	ld.hu	$t7, $t1, 14
	sub.d	$t4, $t4, $t6
	slli.d	$t4, $t4, 2
	ldx.w	$t4, $s5, $t4
	sub.d	$t5, $t5, $t7
	slli.d	$t5, $t5, 2
	ldx.w	$t5, $s5, $t5
	add.d	$t3, $t3, $t4
	ld.hu	$t4, $a6, 0
	ld.hu	$t6, $t1, 16
	add.d	$t3, $t3, $t5
	ld.hu	$t5, $a6, 2
	ld.hu	$t7, $t1, 18
	sub.d	$t4, $t4, $t6
	slli.d	$t4, $t4, 2
	ldx.w	$t4, $s5, $t4
	sub.d	$t5, $t5, $t7
	slli.d	$t5, $t5, 2
	ld.hu	$t6, $a6, 4
	ld.hu	$t7, $t1, 20
	ldx.w	$t5, $s5, $t5
	ld.hu	$t8, $a6, 6
	ld.hu	$s0, $t1, 22
	sub.d	$t6, $t6, $t7
	slli.d	$t6, $t6, 2
	ldx.w	$t6, $s5, $t6
	sub.d	$t7, $t8, $s0
	slli.d	$t7, $t7, 2
	ldx.w	$t7, $s5, $t7
	add.d	$a5, $t4, $a5
	add.d	$a5, $a5, $t5
	add.d	$a5, $a5, $t6
	add.d	$a5, $a5, $t7
	ld.hu	$t4, $a6, 8
	ld.hu	$t5, $t1, 24
	ld.hu	$t6, $a6, 10
	ld.hu	$t7, $t1, 26
	ld.hu	$t8, $a6, 12
	ld.hu	$s0, $t1, 28
	ld.hu	$s1, $a6, 14
	ld.hu	$s2, $t1, 30
	sub.d	$t4, $t4, $t5
	sub.d	$t5, $t6, $t7
	sub.d	$t6, $t8, $s0
	sub.d	$t7, $s1, $s2
	slli.d	$t4, $t4, 2
	ldx.w	$t4, $s5, $t4
	slli.d	$t5, $t5, 2
	ldx.w	$t5, $s5, $t5
	slli.d	$t6, $t6, 2
	ldx.w	$t6, $s5, $t6
	slli.d	$t7, $t7, 2
	ldx.w	$t7, $s5, $t7
	add.d	$a4, $t4, $a4
	add.d	$a4, $a4, $t5
	add.d	$a4, $a4, $t6
	add.d	$a4, $a4, $t7
	addi.w	$t0, $t0, -1
	add.d	$a6, $a6, $a7
	addi.d	$t1, $t1, 32
	bnez	$t0, .LBB4_59
# %bb.60:                               #   in Loop: Header=BB4_58 Depth=2
	addi.d	$s4, $s4, 128
	alsl.d	$a6, $a1, $s8, 3
	slli.d	$a7, $a1, 3
	ldx.d	$a7, $s8, $a7
	ld.d	$t0, $a6, 8
	alsl.d	$a0, $a3, $a0, 3
	ld.d	$a3, $a6, 16
	stx.w	$t2, $a7, $fp
	stx.w	$t3, $t0, $fp
	ld.d	$a6, $a6, 24
	stx.w	$a5, $a3, $fp
	addi.d	$a1, $a1, 4
	addi.w	$a2, $a2, 1
	stx.w	$a4, $a6, $fp
	ori	$a3, $zero, 4
	bne	$a2, $a3, .LBB4_58
# %bb.61:                               #   in Loop: Header=BB4_28 Depth=1
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	beqz	$a0, .LBB4_27
# %bb.62:                               # %.preheader551.preheader
                                        #   in Loop: Header=BB4_28 Depth=1
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	slli.d	$a0, $a0, 3
	pcalau12i	$a1, %got_pc_hi20(get_crline)
	ld.d	$a1, $a1, %got_pc_lo12(get_crline)
	st.d	$a1, $sp, 240                   # 8-byte Folded Spill
	ldx.d	$a3, $a1, $a0
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 8
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 176                   # 8-byte Folded Reload
	jirl	$ra, $a3, 0
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a5, $a1, 0
	move	$a2, $zero
	move	$a3, $zero
	st.d	$a5, $sp, 248                   # 8-byte Folded Spill
	b	.LBB4_65
	.p2align	4, , 16
.LBB4_63:                               #   in Loop: Header=BB4_65 Depth=2
	move	$a6, $zero
	move	$a5, $zero
	move	$t0, $zero
	move	$t1, $zero
.LBB4_64:                               # %._crit_edge621
                                        #   in Loop: Header=BB4_65 Depth=2
	slli.d	$a1, $a2, 3
	ldx.d	$a1, $s8, $a1
	ldx.w	$a4, $a1, $fp
	alsl.d	$a7, $a2, $s8, 3
	ld.d	$t2, $a7, 8
	add.d	$a4, $a4, $t1
	stx.w	$a4, $a1, $fp
	ldx.w	$a1, $t2, $fp
	ld.d	$a4, $a7, 16
	add.d	$a1, $a1, $t0
	stx.w	$a1, $t2, $fp
	ldx.w	$a1, $a4, $fp
	ld.d	$a7, $a7, 24
	add.d	$a1, $a1, $a6
	stx.w	$a1, $a4, $fp
	ldx.w	$a1, $a7, $fp
	addi.d	$a2, $a2, 4
	add.d	$a1, $a1, $a5
	addi.w	$a3, $a3, 1
	stx.w	$a1, $a7, $fp
	ori	$a1, $zero, 4
	ld.d	$a5, $sp, 248                   # 8-byte Folded Reload
	beq	$a3, $a1, .LBB4_114
.LBB4_65:                               # %.preheader547
                                        #   Parent Loop BB4_28 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_98 Depth 3
                                        #       Child Loop BB4_69 Depth 3
                                        #         Child Loop BB4_72 Depth 4
                                        #         Child Loop BB4_75 Depth 4
                                        #         Child Loop BB4_79 Depth 4
                                        #         Child Loop BB4_82 Depth 4
                                        #         Child Loop BB4_86 Depth 4
                                        #         Child Loop BB4_89 Depth 4
                                        #         Child Loop BB4_93 Depth 4
                                        #         Child Loop BB4_96 Depth 4
	ldptr.w	$a4, $a5, 15548
	blez	$a4, .LBB4_63
# %bb.66:                               # %.preheader545.lr.ph
                                        #   in Loop: Header=BB4_65 Depth=2
	ldptr.w	$a7, $a5, 15544
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	ld.w	$t3, $a1, %pc_lo12(img_cr_padded_size_x)
	blez	$a7, .LBB4_97
# %bb.67:                               # %.preheader545.us.preheader
                                        #   in Loop: Header=BB4_65 Depth=2
	move	$t2, $zero
	move	$t1, $zero
	move	$t0, $zero
	move	$a5, $zero
	move	$a6, $zero
	sub.w	$t3, $t3, $a7
	addi.d	$t4, $a7, -1
	bstrpick.d	$t4, $t4, 31, 2
	addi.d	$t4, $t4, 1
	bstrpick.d	$t7, $t4, 30, 1
	slli.d	$t5, $t7, 1
	slli.d	$t6, $t7, 2
	slli.d	$t7, $t7, 3
	b	.LBB4_69
	.p2align	4, , 16
.LBB4_68:                               # %._crit_edge610.us
                                        #   in Loop: Header=BB4_69 Depth=3
	addi.w	$t2, $t2, 4
	alsl.d	$a0, $t3, $s1, 1
	bge	$t2, $a4, .LBB4_64
.LBB4_69:                               # %.preheader545.us
                                        #   Parent Loop BB4_28 Depth=1
                                        #     Parent Loop BB4_65 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB4_72 Depth 4
                                        #         Child Loop BB4_75 Depth 4
                                        #         Child Loop BB4_79 Depth 4
                                        #         Child Loop BB4_82 Depth 4
                                        #         Child Loop BB4_86 Depth 4
                                        #         Child Loop BB4_89 Depth 4
                                        #         Child Loop BB4_93 Depth 4
                                        #         Child Loop BB4_96 Depth 4
	move	$s1, $zero
	bgeu	$a7, $s7, .LBB4_71
# %bb.70:                               #   in Loop: Header=BB4_69 Depth=3
	move	$s6, $s4
	move	$t8, $a0
	b	.LBB4_74
	.p2align	4, , 16
.LBB4_71:                               # %vector.ph1105
                                        #   in Loop: Header=BB4_69 Depth=3
	add.d	$s6, $s4, $t6
	add.d	$t8, $a0, $t6
	addi.d	$a0, $a0, 2
	addi.d	$s2, $s4, 2
	move	$s4, $t5
	.p2align	4, , 16
.LBB4_72:                               # %vector.body1109
                                        #   Parent Loop BB4_28 Depth=1
                                        #     Parent Loop BB4_65 Depth=2
                                        #       Parent Loop BB4_69 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.hu	$s3, $a0, -2
	ld.hu	$ra, $a0, 0
	ld.hu	$s0, $s2, -2
	ld.hu	$a1, $s2, 0
	sub.d	$s0, $s3, $s0
	sub.d	$a1, $ra, $a1
	slli.d	$s0, $s0, 2
	slli.d	$a1, $a1, 2
	ldx.w	$s0, $s5, $s0
	ldx.w	$a1, $s5, $a1
	add.d	$t1, $s0, $t1
	add.d	$s1, $a1, $s1
	addi.d	$a0, $a0, 4
	addi.d	$s4, $s4, -2
	addi.d	$s2, $s2, 4
	bnez	$s4, .LBB4_72
# %bb.73:                               # %middle.block1120
                                        #   in Loop: Header=BB4_69 Depth=3
	add.d	$t1, $s1, $t1
	move	$s1, $t7
	beq	$t5, $t4, .LBB4_76
.LBB4_74:                               # %scalar.ph1103.preheader
                                        #   in Loop: Header=BB4_69 Depth=3
	move	$a0, $s6
	move	$s2, $t8
	.p2align	4, , 16
.LBB4_75:                               # %scalar.ph1103
                                        #   Parent Loop BB4_28 Depth=1
                                        #     Parent Loop BB4_65 Depth=2
                                        #       Parent Loop BB4_69 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.hu	$a1, $s2, 0
	ld.hu	$t8, $a0, 0
	sub.d	$a1, $a1, $t8
	slli.d	$a1, $a1, 2
	ldx.w	$a1, $s5, $a1
	addi.d	$t8, $s2, 2
	addi.d	$s6, $a0, 2
	addi.w	$s1, $s1, 4
	add.d	$t1, $a1, $t1
	move	$a0, $s6
	move	$s2, $t8
	blt	$s1, $a7, .LBB4_75
.LBB4_76:                               # %.lr.ph593.us.preheader
                                        #   in Loop: Header=BB4_69 Depth=3
	move	$a0, $zero
	bgeu	$a7, $s7, .LBB4_78
# %bb.77:                               #   in Loop: Header=BB4_69 Depth=3
	move	$s4, $s6
	move	$s1, $t8
	b	.LBB4_81
	.p2align	4, , 16
.LBB4_78:                               # %vector.ph1081
                                        #   in Loop: Header=BB4_69 Depth=3
	add.d	$s4, $s6, $t6
	add.d	$s1, $t8, $t6
	addi.d	$t8, $t8, 2
	addi.d	$s2, $s6, 2
	move	$s6, $t5
	.p2align	4, , 16
.LBB4_79:                               # %vector.body1085
                                        #   Parent Loop BB4_28 Depth=1
                                        #     Parent Loop BB4_65 Depth=2
                                        #       Parent Loop BB4_69 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.hu	$a1, $t8, -2
	ld.hu	$s0, $t8, 0
	ld.hu	$s3, $s2, -2
	ld.hu	$ra, $s2, 0
	sub.d	$a1, $a1, $s3
	sub.d	$s0, $s0, $ra
	slli.d	$a1, $a1, 2
	slli.d	$s0, $s0, 2
	ldx.w	$a1, $s5, $a1
	ldx.w	$s0, $s5, $s0
	add.d	$t0, $a1, $t0
	add.d	$a0, $s0, $a0
	addi.d	$t8, $t8, 4
	addi.d	$s6, $s6, -2
	addi.d	$s2, $s2, 4
	bnez	$s6, .LBB4_79
# %bb.80:                               # %middle.block1096
                                        #   in Loop: Header=BB4_69 Depth=3
	add.d	$t0, $a0, $t0
	move	$a0, $t7
	beq	$t5, $t4, .LBB4_83
.LBB4_81:                               # %.lr.ph593.us.preheader1130
                                        #   in Loop: Header=BB4_69 Depth=3
	move	$t8, $s4
	move	$s2, $s1
	.p2align	4, , 16
.LBB4_82:                               # %.lr.ph593.us
                                        #   Parent Loop BB4_28 Depth=1
                                        #     Parent Loop BB4_65 Depth=2
                                        #       Parent Loop BB4_69 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.hu	$a1, $s2, 0
	ld.hu	$s0, $t8, 0
	sub.d	$a1, $a1, $s0
	slli.d	$a1, $a1, 2
	ldx.w	$a1, $s5, $a1
	addi.d	$s1, $s2, 2
	addi.d	$s4, $t8, 2
	addi.w	$a0, $a0, 4
	add.d	$t0, $a1, $t0
	move	$t8, $s4
	move	$s2, $s1
	blt	$a0, $a7, .LBB4_82
.LBB4_83:                               # %.lr.ph601.us.preheader
                                        #   in Loop: Header=BB4_69 Depth=3
	bgeu	$a7, $s7, .LBB4_85
# %bb.84:                               #   in Loop: Header=BB4_69 Depth=3
	move	$s6, $zero
	move	$t8, $s4
	move	$a0, $s1
	b	.LBB4_88
	.p2align	4, , 16
.LBB4_85:                               # %vector.ph1057
                                        #   in Loop: Header=BB4_69 Depth=3
	move	$s2, $zero
	add.d	$t8, $s4, $t6
	add.d	$a0, $s1, $t6
	addi.d	$s1, $s1, 2
	addi.d	$s4, $s4, 2
	move	$s6, $t5
	.p2align	4, , 16
.LBB4_86:                               # %vector.body1061
                                        #   Parent Loop BB4_28 Depth=1
                                        #     Parent Loop BB4_65 Depth=2
                                        #       Parent Loop BB4_69 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.hu	$a1, $s1, -2
	ld.hu	$s0, $s1, 0
	ld.hu	$s3, $s4, -2
	ld.hu	$ra, $s4, 0
	sub.d	$a1, $a1, $s3
	sub.d	$s0, $s0, $ra
	slli.d	$a1, $a1, 2
	slli.d	$s0, $s0, 2
	ldx.w	$a1, $s5, $a1
	ldx.w	$s0, $s5, $s0
	add.d	$a6, $a1, $a6
	add.d	$s2, $s0, $s2
	addi.d	$s1, $s1, 4
	addi.d	$s6, $s6, -2
	addi.d	$s4, $s4, 4
	bnez	$s6, .LBB4_86
# %bb.87:                               # %middle.block1072
                                        #   in Loop: Header=BB4_69 Depth=3
	add.d	$a6, $s2, $a6
	move	$s6, $t7
	beq	$t5, $t4, .LBB4_90
.LBB4_88:                               # %.lr.ph601.us.preheader1129
                                        #   in Loop: Header=BB4_69 Depth=3
	move	$s1, $t8
	move	$s2, $a0
	.p2align	4, , 16
.LBB4_89:                               # %.lr.ph601.us
                                        #   Parent Loop BB4_28 Depth=1
                                        #     Parent Loop BB4_65 Depth=2
                                        #       Parent Loop BB4_69 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.hu	$a0, $s2, 0
	ld.hu	$a1, $s1, 0
	sub.d	$a0, $a0, $a1
	slli.d	$a0, $a0, 2
	ldx.w	$a1, $s5, $a0
	addi.d	$a0, $s2, 2
	addi.d	$t8, $s1, 2
	addi.w	$s6, $s6, 4
	add.d	$a6, $a1, $a6
	move	$s1, $t8
	move	$s2, $a0
	blt	$s6, $a7, .LBB4_89
.LBB4_90:                               # %.lr.ph609.us.preheader
                                        #   in Loop: Header=BB4_69 Depth=3
	bgeu	$a7, $s7, .LBB4_92
# %bb.91:                               #   in Loop: Header=BB4_69 Depth=3
	move	$s6, $zero
	move	$s4, $t8
	move	$s1, $a0
	b	.LBB4_95
	.p2align	4, , 16
.LBB4_92:                               # %vector.ph1033
                                        #   in Loop: Header=BB4_69 Depth=3
	move	$s2, $zero
	add.d	$s4, $t8, $t6
	add.d	$s1, $a0, $t6
	addi.d	$a0, $a0, 2
	addi.d	$t8, $t8, 2
	move	$s6, $t5
	.p2align	4, , 16
.LBB4_93:                               # %vector.body1037
                                        #   Parent Loop BB4_28 Depth=1
                                        #     Parent Loop BB4_65 Depth=2
                                        #       Parent Loop BB4_69 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.hu	$a1, $a0, -2
	ld.hu	$s0, $a0, 0
	ld.hu	$s3, $t8, -2
	ld.hu	$ra, $t8, 0
	sub.d	$a1, $a1, $s3
	sub.d	$s0, $s0, $ra
	slli.d	$a1, $a1, 2
	slli.d	$s0, $s0, 2
	ldx.w	$a1, $s5, $a1
	ldx.w	$s0, $s5, $s0
	add.d	$a5, $a1, $a5
	add.d	$s2, $s0, $s2
	addi.d	$a0, $a0, 4
	addi.d	$s6, $s6, -2
	addi.d	$t8, $t8, 4
	bnez	$s6, .LBB4_93
# %bb.94:                               # %middle.block1048
                                        #   in Loop: Header=BB4_69 Depth=3
	add.d	$a5, $s2, $a5
	move	$s6, $t7
	beq	$t5, $t4, .LBB4_68
.LBB4_95:                               # %.lr.ph609.us.preheader1128
                                        #   in Loop: Header=BB4_69 Depth=3
	move	$a0, $s4
	move	$t8, $s1
	.p2align	4, , 16
.LBB4_96:                               # %.lr.ph609.us
                                        #   Parent Loop BB4_28 Depth=1
                                        #     Parent Loop BB4_65 Depth=2
                                        #       Parent Loop BB4_69 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.hu	$a1, $t8, 0
	ld.hu	$s0, $a0, 0
	sub.d	$a1, $a1, $s0
	slli.d	$a1, $a1, 2
	ldx.w	$a1, $s5, $a1
	addi.d	$s1, $t8, 2
	addi.d	$s4, $a0, 2
	addi.w	$s6, $s6, 4
	add.d	$a5, $a1, $a5
	move	$a0, $s4
	move	$t8, $s1
	blt	$s6, $a7, .LBB4_96
	b	.LBB4_68
	.p2align	4, , 16
.LBB4_97:                               # %._crit_edge610.preheader
                                        #   in Loop: Header=BB4_65 Depth=2
	move	$a5, $zero
	slli.d	$a6, $t3, 1
	slli.d	$a7, $a7, 1
	sub.d	$a6, $a6, $a7
	.p2align	4, , 16
.LBB4_98:                               # %._crit_edge610
                                        #   Parent Loop BB4_28 Depth=1
                                        #     Parent Loop BB4_65 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	addi.w	$a5, $a5, 4
	add.d	$a0, $a0, $a6
	blt	$a5, $a4, .LBB4_98
	b	.LBB4_63
	.p2align	4, , 16
.LBB4_99:                               # %.preheader550.1
                                        #   in Loop: Header=BB4_28 Depth=1
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	slli.d	$a0, $a0, 3
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	ldx.d	$a3, $a1, $a0
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 16
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 176                   # 8-byte Folded Reload
	jirl	$ra, $a3, 0
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	move	$a2, $zero
	move	$a3, $zero
	b	.LBB4_102
	.p2align	4, , 16
.LBB4_100:                              #   in Loop: Header=BB4_102 Depth=2
	move	$a5, $zero
	move	$a4, $zero
	move	$a6, $zero
	move	$t0, $zero
.LBB4_101:                              # %._crit_edge691.1
                                        #   in Loop: Header=BB4_102 Depth=2
	slli.d	$a7, $a2, 3
	ldx.d	$a7, $s8, $a7
	ldx.w	$t1, $a7, $fp
	alsl.d	$t2, $a2, $s8, 3
	ld.d	$t3, $t2, 8
	add.d	$t0, $t1, $t0
	stx.w	$t0, $a7, $fp
	ldx.w	$a7, $t3, $fp
	ld.d	$t0, $t2, 16
	add.d	$a6, $a7, $a6
	stx.w	$a6, $t3, $fp
	ldx.w	$a6, $t0, $fp
	ld.d	$a7, $t2, 24
	add.d	$a5, $a6, $a5
	stx.w	$a5, $t0, $fp
	ldx.w	$a5, $a7, $fp
	addi.d	$a2, $a2, 4
	add.d	$a4, $a5, $a4
	addi.w	$a3, $a3, 1
	stx.w	$a4, $a7, $fp
	ori	$a4, $zero, 4
	beq	$a3, $a4, .LBB4_27
.LBB4_102:                              # %.preheader546.1
                                        #   Parent Loop BB4_28 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_105 Depth 3
                                        #         Child Loop BB4_107 Depth 4
                                        #         Child Loop BB4_109 Depth 4
                                        #         Child Loop BB4_111 Depth 4
                                        #         Child Loop BB4_113 Depth 4
	ldptr.w	$a7, $a1, 15548
	blez	$a7, .LBB4_100
# %bb.103:                              # %.preheader541.lr.ph.1
                                        #   in Loop: Header=BB4_102 Depth=2
	ldptr.w	$t1, $a1, 15544
	ld.d	$a4, $sp, 248                   # 8-byte Folded Reload
	ld.w	$t2, $a4, %pc_lo12(wp_chroma_round)
	ld.d	$a4, $sp, 256                   # 8-byte Folded Reload
	ld.w	$a4, $a4, %pc_lo12(img_cr_padded_size_x)
	ld.d	$a5, $sp, 240                   # 8-byte Folded Reload
	ld.w	$t3, $a5, %pc_lo12(chroma_log_weight_denom)
	sub.w	$t4, $a4, $t1
	pcalau12i	$a4, %got_pc_hi20(weight_cr)
	ld.d	$a4, $a4, %got_pc_lo12(weight_cr)
	ld.w	$t5, $a4, 4
	pcalau12i	$a4, %got_pc_hi20(offset_cr)
	ld.d	$a4, $a4, %got_pc_lo12(offset_cr)
	ld.w	$t6, $a4, 4
	move	$t7, $zero
	move	$t0, $zero
	move	$a6, $zero
	move	$a4, $zero
	move	$a5, $zero
	b	.LBB4_105
	.p2align	4, , 16
.LBB4_104:                              # %._crit_edge680.1
                                        #   in Loop: Header=BB4_105 Depth=3
	addi.w	$t7, $t7, 4
	alsl.d	$a0, $t4, $a0, 1
	bge	$t7, $a7, .LBB4_101
.LBB4_105:                              # %.preheader541.1
                                        #   Parent Loop BB4_28 Depth=1
                                        #     Parent Loop BB4_102 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB4_107 Depth 4
                                        #         Child Loop BB4_109 Depth 4
                                        #         Child Loop BB4_111 Depth 4
                                        #         Child Loop BB4_113 Depth 4
	blez	$t1, .LBB4_104
# %bb.106:                              # %.lr.ph654.1
                                        #   in Loop: Header=BB4_105 Depth=3
	ldx.w	$t8, $a1, $s1
	move	$s2, $zero
	.p2align	4, , 16
.LBB4_107:                              #   Parent Loop BB4_28 Depth=1
                                        #     Parent Loop BB4_102 Depth=2
                                        #       Parent Loop BB4_105 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.hu	$s0, $a0, 0
	mul.d	$s0, $t5, $s0
	add.d	$s0, $s0, $t2
	sra.w	$s0, $s0, $t3
	add.w	$s0, $s0, $t6
	srai.d	$s3, $s0, 63
	andn	$s0, $s0, $s3
	slt	$s3, $s0, $t8
	ld.hu	$s6, $s4, 0
	maskeqz	$s0, $s0, $s3
	masknez	$s3, $t8, $s3
	or	$s0, $s0, $s3
	sub.w	$s0, $s0, $s6
	slli.d	$s0, $s0, 2
	ldx.w	$s0, $s5, $s0
	addi.d	$a0, $a0, 2
	addi.d	$s4, $s4, 2
	addi.w	$s2, $s2, 4
	add.d	$t0, $s0, $t0
	blt	$s2, $t1, .LBB4_107
# %bb.108:                              # %.lr.ph663.1
                                        #   in Loop: Header=BB4_105 Depth=3
	ldx.w	$t8, $a1, $s1
	move	$ra, $zero
	move	$s2, $zero
	.p2align	4, , 16
.LBB4_109:                              #   Parent Loop BB4_28 Depth=1
                                        #     Parent Loop BB4_102 Depth=2
                                        #       Parent Loop BB4_105 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ldx.hu	$s0, $a0, $ra
	mul.d	$s0, $t5, $s0
	add.d	$s0, $s0, $t2
	sra.w	$s0, $s0, $t3
	add.w	$s0, $s0, $t6
	srai.d	$s3, $s0, 63
	andn	$s0, $s0, $s3
	slt	$s3, $s0, $t8
	ldx.hu	$s6, $s4, $ra
	maskeqz	$s0, $s0, $s3
	masknez	$s3, $t8, $s3
	or	$s0, $s0, $s3
	sub.w	$s0, $s0, $s6
	slli.d	$s0, $s0, 2
	ldx.w	$s0, $s5, $s0
	add.d	$a6, $s0, $a6
	addi.w	$s2, $s2, 4
	addi.d	$ra, $ra, 2
	blt	$s2, $t1, .LBB4_109
# %bb.110:                              # %.lr.ph671.1
                                        #   in Loop: Header=BB4_105 Depth=3
	ldx.w	$t8, $a1, $s1
	move	$s2, $zero
	add.d	$s4, $s4, $ra
	add.d	$a0, $a0, $ra
	.p2align	4, , 16
.LBB4_111:                              #   Parent Loop BB4_28 Depth=1
                                        #     Parent Loop BB4_102 Depth=2
                                        #       Parent Loop BB4_105 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.hu	$s0, $a0, 0
	mul.d	$s0, $t5, $s0
	add.d	$s0, $s0, $t2
	sra.w	$s0, $s0, $t3
	add.w	$s0, $s0, $t6
	srai.d	$s3, $s0, 63
	andn	$s0, $s0, $s3
	slt	$s3, $s0, $t8
	ld.hu	$s6, $s4, 0
	maskeqz	$s0, $s0, $s3
	masknez	$s3, $t8, $s3
	or	$s0, $s0, $s3
	sub.w	$s0, $s0, $s6
	slli.d	$s0, $s0, 2
	ldx.w	$s0, $s5, $s0
	addi.d	$a0, $a0, 2
	addi.d	$s4, $s4, 2
	addi.w	$s2, $s2, 4
	add.d	$a5, $s0, $a5
	blt	$s2, $t1, .LBB4_111
# %bb.112:                              # %.lr.ph679.1
                                        #   in Loop: Header=BB4_105 Depth=3
	ldx.w	$t8, $a1, $s1
	move	$s2, $zero
	.p2align	4, , 16
.LBB4_113:                              #   Parent Loop BB4_28 Depth=1
                                        #     Parent Loop BB4_102 Depth=2
                                        #       Parent Loop BB4_105 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.hu	$s0, $a0, 0
	mul.d	$s0, $t5, $s0
	add.d	$s0, $s0, $t2
	sra.w	$s0, $s0, $t3
	add.w	$s0, $s0, $t6
	srai.d	$s3, $s0, 63
	andn	$s0, $s0, $s3
	slt	$s3, $s0, $t8
	ld.hu	$s6, $s4, 0
	maskeqz	$s0, $s0, $s3
	masknez	$s3, $t8, $s3
	or	$s0, $s0, $s3
	sub.w	$s0, $s0, $s6
	slli.d	$s0, $s0, 2
	ldx.w	$s0, $s5, $s0
	addi.d	$a0, $a0, 2
	addi.d	$s4, $s4, 2
	addi.w	$s2, $s2, 4
	add.d	$a4, $s0, $a4
	blt	$s2, $t1, .LBB4_113
	b	.LBB4_104
	.p2align	4, , 16
.LBB4_114:                              # %.preheader551.1
                                        #   in Loop: Header=BB4_28 Depth=1
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	slli.d	$a0, $a0, 3
	ld.d	$a1, $sp, 240                   # 8-byte Folded Reload
	ldx.d	$a3, $a1, $a0
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 16
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 176                   # 8-byte Folded Reload
	jirl	$ra, $a3, 0
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a5, $a1, 0
	move	$a2, $zero
	move	$a3, $zero
	st.d	$a5, $sp, 248                   # 8-byte Folded Spill
	b	.LBB4_117
	.p2align	4, , 16
.LBB4_115:                              #   in Loop: Header=BB4_117 Depth=2
	move	$a6, $zero
	move	$a5, $zero
	move	$t0, $zero
	move	$t1, $zero
.LBB4_116:                              # %._crit_edge621.1
                                        #   in Loop: Header=BB4_117 Depth=2
	slli.d	$a1, $a2, 3
	ldx.d	$a1, $s8, $a1
	ldx.w	$a4, $a1, $fp
	alsl.d	$a7, $a2, $s8, 3
	ld.d	$t2, $a7, 8
	add.d	$a4, $a4, $t1
	stx.w	$a4, $a1, $fp
	ldx.w	$a1, $t2, $fp
	ld.d	$a4, $a7, 16
	add.d	$a1, $a1, $t0
	stx.w	$a1, $t2, $fp
	ldx.w	$a1, $a4, $fp
	ld.d	$a7, $a7, 24
	add.d	$a1, $a1, $a6
	stx.w	$a1, $a4, $fp
	ldx.w	$a1, $a7, $fp
	addi.d	$a2, $a2, 4
	add.d	$a1, $a1, $a5
	addi.w	$a3, $a3, 1
	stx.w	$a1, $a7, $fp
	ori	$a1, $zero, 4
	ld.d	$a5, $sp, 248                   # 8-byte Folded Reload
	beq	$a3, $a1, .LBB4_27
.LBB4_117:                              # %.preheader547.1
                                        #   Parent Loop BB4_28 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_150 Depth 3
                                        #       Child Loop BB4_121 Depth 3
                                        #         Child Loop BB4_124 Depth 4
                                        #         Child Loop BB4_127 Depth 4
                                        #         Child Loop BB4_131 Depth 4
                                        #         Child Loop BB4_134 Depth 4
                                        #         Child Loop BB4_138 Depth 4
                                        #         Child Loop BB4_141 Depth 4
                                        #         Child Loop BB4_145 Depth 4
                                        #         Child Loop BB4_148 Depth 4
	ldptr.w	$a4, $a5, 15548
	blez	$a4, .LBB4_115
# %bb.118:                              # %.preheader545.lr.ph.1
                                        #   in Loop: Header=BB4_117 Depth=2
	ldptr.w	$a7, $a5, 15544
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	ld.w	$t3, $a1, %pc_lo12(img_cr_padded_size_x)
	blez	$a7, .LBB4_149
# %bb.119:                              # %.preheader545.us.1.preheader
                                        #   in Loop: Header=BB4_117 Depth=2
	move	$t2, $zero
	move	$t1, $zero
	move	$t0, $zero
	move	$a5, $zero
	move	$a6, $zero
	sub.w	$t3, $t3, $a7
	addi.d	$t4, $a7, -1
	bstrpick.d	$t4, $t4, 31, 2
	addi.d	$t4, $t4, 1
	bstrpick.d	$t7, $t4, 30, 1
	slli.d	$t5, $t7, 1
	slli.d	$t6, $t7, 2
	slli.d	$t7, $t7, 3
	b	.LBB4_121
	.p2align	4, , 16
.LBB4_120:                              # %._crit_edge610.us.1
                                        #   in Loop: Header=BB4_121 Depth=3
	addi.w	$t2, $t2, 4
	alsl.d	$a0, $t3, $a0, 1
	bge	$t2, $a4, .LBB4_116
.LBB4_121:                              # %.preheader545.us.1
                                        #   Parent Loop BB4_28 Depth=1
                                        #     Parent Loop BB4_117 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB4_124 Depth 4
                                        #         Child Loop BB4_127 Depth 4
                                        #         Child Loop BB4_131 Depth 4
                                        #         Child Loop BB4_134 Depth 4
                                        #         Child Loop BB4_138 Depth 4
                                        #         Child Loop BB4_141 Depth 4
                                        #         Child Loop BB4_145 Depth 4
                                        #         Child Loop BB4_148 Depth 4
	move	$s1, $zero
	bgeu	$a7, $s7, .LBB4_123
# %bb.122:                              #   in Loop: Header=BB4_121 Depth=3
	move	$s0, $s4
	move	$t8, $a0
	b	.LBB4_126
	.p2align	4, , 16
.LBB4_123:                              # %vector.ph1009
                                        #   in Loop: Header=BB4_121 Depth=3
	add.d	$s0, $s4, $t6
	add.d	$t8, $a0, $t6
	addi.d	$a0, $a0, 2
	addi.d	$s2, $s4, 2
	move	$s4, $t5
	.p2align	4, , 16
.LBB4_124:                              # %vector.body1013
                                        #   Parent Loop BB4_28 Depth=1
                                        #     Parent Loop BB4_117 Depth=2
                                        #       Parent Loop BB4_121 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.hu	$s3, $a0, -2
	ld.hu	$s6, $a0, 0
	ld.hu	$ra, $s2, -2
	ld.hu	$a1, $s2, 0
	sub.d	$s3, $s3, $ra
	sub.d	$a1, $s6, $a1
	slli.d	$s3, $s3, 2
	slli.d	$a1, $a1, 2
	ldx.w	$s3, $s5, $s3
	ldx.w	$a1, $s5, $a1
	add.d	$t1, $s3, $t1
	add.d	$s1, $a1, $s1
	addi.d	$a0, $a0, 4
	addi.d	$s4, $s4, -2
	addi.d	$s2, $s2, 4
	bnez	$s4, .LBB4_124
# %bb.125:                              # %middle.block1024
                                        #   in Loop: Header=BB4_121 Depth=3
	add.d	$t1, $s1, $t1
	move	$s1, $t7
	beq	$t5, $t4, .LBB4_128
.LBB4_126:                              # %scalar.ph1007.preheader
                                        #   in Loop: Header=BB4_121 Depth=3
	move	$a0, $s0
	move	$s2, $t8
	.p2align	4, , 16
.LBB4_127:                              # %scalar.ph1007
                                        #   Parent Loop BB4_28 Depth=1
                                        #     Parent Loop BB4_117 Depth=2
                                        #       Parent Loop BB4_121 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.hu	$a1, $s2, 0
	ld.hu	$t8, $a0, 0
	sub.d	$a1, $a1, $t8
	slli.d	$a1, $a1, 2
	ldx.w	$a1, $s5, $a1
	addi.d	$t8, $s2, 2
	addi.d	$s0, $a0, 2
	addi.w	$s1, $s1, 4
	add.d	$t1, $a1, $t1
	move	$a0, $s0
	move	$s2, $t8
	blt	$s1, $a7, .LBB4_127
.LBB4_128:                              # %.lr.ph593.us.preheader.1
                                        #   in Loop: Header=BB4_121 Depth=3
	bgeu	$a7, $s7, .LBB4_130
# %bb.129:                              #   in Loop: Header=BB4_121 Depth=3
	move	$s4, $zero
	move	$s1, $s0
	move	$a0, $t8
	b	.LBB4_133
	.p2align	4, , 16
.LBB4_130:                              # %vector.ph985
                                        #   in Loop: Header=BB4_121 Depth=3
	move	$s2, $zero
	add.d	$s1, $s0, $t6
	add.d	$a0, $t8, $t6
	addi.d	$t8, $t8, 2
	addi.d	$s0, $s0, 2
	move	$s4, $t5
	.p2align	4, , 16
.LBB4_131:                              # %vector.body989
                                        #   Parent Loop BB4_28 Depth=1
                                        #     Parent Loop BB4_117 Depth=2
                                        #       Parent Loop BB4_121 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.hu	$a1, $t8, -2
	ld.hu	$s3, $t8, 0
	ld.hu	$s6, $s0, -2
	ld.hu	$ra, $s0, 0
	sub.d	$a1, $a1, $s6
	sub.d	$s3, $s3, $ra
	slli.d	$a1, $a1, 2
	slli.d	$s3, $s3, 2
	ldx.w	$a1, $s5, $a1
	ldx.w	$s3, $s5, $s3
	add.d	$t0, $a1, $t0
	add.d	$s2, $s3, $s2
	addi.d	$t8, $t8, 4
	addi.d	$s4, $s4, -2
	addi.d	$s0, $s0, 4
	bnez	$s4, .LBB4_131
# %bb.132:                              # %middle.block1000
                                        #   in Loop: Header=BB4_121 Depth=3
	add.d	$t0, $s2, $t0
	move	$s4, $t7
	beq	$t5, $t4, .LBB4_135
.LBB4_133:                              # %.lr.ph593.us.1.preheader
                                        #   in Loop: Header=BB4_121 Depth=3
	move	$t8, $s1
	move	$s0, $a0
	.p2align	4, , 16
.LBB4_134:                              # %.lr.ph593.us.1
                                        #   Parent Loop BB4_28 Depth=1
                                        #     Parent Loop BB4_117 Depth=2
                                        #       Parent Loop BB4_121 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.hu	$a0, $s0, 0
	ld.hu	$a1, $t8, 0
	sub.d	$a0, $a0, $a1
	slli.d	$a0, $a0, 2
	ldx.w	$a1, $s5, $a0
	addi.d	$a0, $s0, 2
	addi.d	$s1, $t8, 2
	addi.w	$s4, $s4, 4
	add.d	$t0, $a1, $t0
	move	$t8, $s1
	move	$s0, $a0
	blt	$s4, $a7, .LBB4_134
.LBB4_135:                              # %.lr.ph601.us.preheader.1
                                        #   in Loop: Header=BB4_121 Depth=3
	bgeu	$a7, $s7, .LBB4_137
# %bb.136:                              #   in Loop: Header=BB4_121 Depth=3
	move	$s4, $zero
	move	$s0, $s1
	move	$t8, $a0
	b	.LBB4_140
	.p2align	4, , 16
.LBB4_137:                              # %vector.ph961
                                        #   in Loop: Header=BB4_121 Depth=3
	move	$s2, $zero
	add.d	$s0, $s1, $t6
	add.d	$t8, $a0, $t6
	addi.d	$a0, $a0, 2
	addi.d	$s1, $s1, 2
	move	$s4, $t5
	.p2align	4, , 16
.LBB4_138:                              # %vector.body965
                                        #   Parent Loop BB4_28 Depth=1
                                        #     Parent Loop BB4_117 Depth=2
                                        #       Parent Loop BB4_121 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.hu	$a1, $a0, -2
	ld.hu	$s3, $a0, 0
	ld.hu	$s6, $s1, -2
	ld.hu	$ra, $s1, 0
	sub.d	$a1, $a1, $s6
	sub.d	$s3, $s3, $ra
	slli.d	$a1, $a1, 2
	slli.d	$s3, $s3, 2
	ldx.w	$a1, $s5, $a1
	ldx.w	$s3, $s5, $s3
	add.d	$a6, $a1, $a6
	add.d	$s2, $s3, $s2
	addi.d	$a0, $a0, 4
	addi.d	$s4, $s4, -2
	addi.d	$s1, $s1, 4
	bnez	$s4, .LBB4_138
# %bb.139:                              # %middle.block976
                                        #   in Loop: Header=BB4_121 Depth=3
	add.d	$a6, $s2, $a6
	move	$s4, $t7
	beq	$t5, $t4, .LBB4_142
.LBB4_140:                              # %.lr.ph601.us.1.preheader
                                        #   in Loop: Header=BB4_121 Depth=3
	move	$a0, $s0
	move	$s1, $t8
	.p2align	4, , 16
.LBB4_141:                              # %.lr.ph601.us.1
                                        #   Parent Loop BB4_28 Depth=1
                                        #     Parent Loop BB4_117 Depth=2
                                        #       Parent Loop BB4_121 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.hu	$a1, $s1, 0
	ld.hu	$t8, $a0, 0
	sub.d	$a1, $a1, $t8
	slli.d	$a1, $a1, 2
	ldx.w	$a1, $s5, $a1
	addi.d	$t8, $s1, 2
	addi.d	$s0, $a0, 2
	addi.w	$s4, $s4, 4
	add.d	$a6, $a1, $a6
	move	$a0, $s0
	move	$s1, $t8
	blt	$s4, $a7, .LBB4_141
.LBB4_142:                              # %.lr.ph609.us.preheader.1
                                        #   in Loop: Header=BB4_121 Depth=3
	move	$s1, $zero
	bgeu	$a7, $s7, .LBB4_144
# %bb.143:                              #   in Loop: Header=BB4_121 Depth=3
	move	$s4, $s0
	move	$a0, $t8
	b	.LBB4_147
	.p2align	4, , 16
.LBB4_144:                              # %vector.ph
                                        #   in Loop: Header=BB4_121 Depth=3
	add.d	$s4, $s0, $t6
	add.d	$a0, $t8, $t6
	addi.d	$t8, $t8, 2
	addi.d	$s0, $s0, 2
	move	$s2, $t5
	.p2align	4, , 16
.LBB4_145:                              # %vector.body
                                        #   Parent Loop BB4_28 Depth=1
                                        #     Parent Loop BB4_117 Depth=2
                                        #       Parent Loop BB4_121 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.hu	$a1, $t8, -2
	ld.hu	$s3, $t8, 0
	ld.hu	$s6, $s0, -2
	ld.hu	$ra, $s0, 0
	sub.d	$a1, $a1, $s6
	sub.d	$s3, $s3, $ra
	slli.d	$a1, $a1, 2
	slli.d	$s3, $s3, 2
	ldx.w	$a1, $s5, $a1
	ldx.w	$s3, $s5, $s3
	add.d	$a5, $a1, $a5
	add.d	$s1, $s3, $s1
	addi.d	$t8, $t8, 4
	addi.d	$s2, $s2, -2
	addi.d	$s0, $s0, 4
	bnez	$s2, .LBB4_145
# %bb.146:                              # %middle.block
                                        #   in Loop: Header=BB4_121 Depth=3
	add.d	$a5, $s1, $a5
	move	$s1, $t7
	beq	$t5, $t4, .LBB4_120
.LBB4_147:                              # %.lr.ph609.us.1.preheader
                                        #   in Loop: Header=BB4_121 Depth=3
	move	$t8, $s4
	move	$s0, $a0
	.p2align	4, , 16
.LBB4_148:                              # %.lr.ph609.us.1
                                        #   Parent Loop BB4_28 Depth=1
                                        #     Parent Loop BB4_117 Depth=2
                                        #       Parent Loop BB4_121 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.hu	$a0, $s0, 0
	ld.hu	$a1, $t8, 0
	sub.d	$a0, $a0, $a1
	slli.d	$a0, $a0, 2
	ldx.w	$a1, $s5, $a0
	addi.d	$a0, $s0, 2
	addi.d	$s4, $t8, 2
	addi.w	$s1, $s1, 4
	add.d	$a5, $a1, $a5
	move	$t8, $s4
	move	$s0, $a0
	blt	$s1, $a7, .LBB4_148
	b	.LBB4_120
	.p2align	4, , 16
.LBB4_149:                              # %._crit_edge610.1.preheader
                                        #   in Loop: Header=BB4_117 Depth=2
	move	$a5, $zero
	slli.d	$a6, $t3, 1
	slli.d	$a7, $a7, 1
	sub.d	$a6, $a6, $a7
	.p2align	4, , 16
.LBB4_150:                              # %._crit_edge610.1
                                        #   Parent Loop BB4_28 Depth=1
                                        #     Parent Loop BB4_117 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	addi.w	$a5, $a5, 4
	add.d	$a0, $a0, $a6
	blt	$a5, $a4, .LBB4_150
	b	.LBB4_115
.LBB4_151:
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 144                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(SetupLargerBlocks)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(search_setup_done)
	ld.d	$a0, $a0, %pc_lo12(search_setup_done)
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	ldx.d	$a0, $a0, $a1
	ori	$a1, $zero, 1
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	stx.w	$a1, $a0, $a2
	ld.d	$s8, $sp, 280                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 288                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 296                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 304                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 312                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 320                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 328                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 336                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 344                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 352                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 360                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 368
	ret
.LBB4_152:
	ld.w	$a3, $a0, 192
	ld.w	$a4, $a0, 196
	sub.w	$a0, $a3, $t2
	sub.w	$a3, $a4, $t1
	pcalau12i	$a4, %got_pc_hi20(spiral_search_x)
	ld.d	$a4, $a4, %got_pc_lo12(spiral_search_x)
	ld.d	$a4, $a4, 0
	pcalau12i	$a5, %got_pc_hi20(spiral_search_y)
	ld.d	$a5, $a5, %got_pc_lo12(spiral_search_y)
	ld.d	$a5, $a5, 0
	move	$a6, $zero
	move	$a7, $zero
	b	.LBB4_154
	.p2align	4, , 16
.LBB4_153:                              #   in Loop: Header=BB4_154 Depth=1
	addi.d	$a7, $a7, 1
	addi.d	$a6, $a6, 1
	addi.d	$a5, $a5, 2
	addi.d	$a4, $a4, 2
	ld.d	$t0, $sp, 144                   # 8-byte Folded Reload
	bgeu	$a7, $t0, .LBB4_26
.LBB4_154:                              # =>This Inner Loop Header: Depth=1
	ld.h	$t0, $a4, 0
	bne	$a0, $t0, .LBB4_153
# %bb.155:                              #   in Loop: Header=BB4_154 Depth=1
	ld.h	$t0, $a5, 0
	bne	$a3, $t0, .LBB4_153
# %bb.156:
	pcalau12i	$a0, %pc_hi20(pos_00)
	ld.d	$a0, $a0, %pc_lo12(pos_00)
	ld.d	$a3, $sp, 40                    # 8-byte Folded Reload
	ldx.d	$a0, $a0, $a3
	ld.d	$a3, $sp, 32                    # 8-byte Folded Reload
	stx.w	$a6, $a0, $a3
	b	.LBB4_26
.Lfunc_end4:
	.size	SetupFastFullPelSearch, .Lfunc_end4-SetupFastFullPelSearch
                                        # -- End function
	.globl	FastFullPelBlockMotionSearch    # -- Begin function FastFullPelBlockMotionSearch
	.p2align	5
	.type	FastFullPelBlockMotionSearch,@function
FastFullPelBlockMotionSearch:           # @FastFullPelBlockMotionSearch
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
	ld.d	$a0, $sp, 96
	move	$fp, $a7
	move	$s0, $a6
	slli.d	$a0, $a0, 1
	addi.d	$s2, $a0, 1
	pcalau12i	$a0, %got_pc_hi20(img)
	ld.d	$s5, $a0, %got_pc_lo12(img)
	ld.d	$a6, $s5, 0
	pcalau12i	$a0, %pc_hi20(BlockSAD)
	ld.d	$a7, $a0, %pc_lo12(BlockSAD)
	ld.w	$a0, $a6, 196
	ld.w	$a6, $a6, 192
	slli.d	$s3, $a2, 3
	ldx.d	$a7, $a7, $s3
	sub.d	$a4, $a4, $a0
	sub.w	$a3, $a3, $a6
	slli.d	$t0, $a1, 3
	ldx.d	$a7, $a7, $t0
	pcalau12i	$t0, %pc_hi20(search_setup_done)
	ld.d	$t0, $t0, %pc_lo12(search_setup_done)
	srli.d	$a3, $a3, 2
	add.w	$a3, $a4, $a3
	slli.d	$a4, $a5, 3
	ldx.d	$a5, $t0, $s3
	ldx.d	$a4, $a7, $a4
	slli.d	$a3, $a3, 3
	slli.d	$s4, $a1, 2
	ldx.w	$a5, $a5, $s4
	ldx.d	$s1, $a4, $a3
	bnez	$a5, .LBB5_2
# %bb.1:
	move	$a0, $a1
	move	$a1, $a2
	pcaddu18i	$ra, %call36(SetupFastFullPelSearch)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, 0
	ld.w	$a6, $a0, 192
	ld.w	$a0, $a0, 196
.LBB5_2:
	pcalau12i	$a1, %pc_hi20(search_center_x)
	ld.d	$a1, $a1, %pc_lo12(search_center_x)
	pcalau12i	$a2, %pc_hi20(search_center_y)
	ld.d	$a2, $a2, %pc_lo12(search_center_y)
	ldx.d	$a3, $a1, $s3
	ldx.d	$a2, $a2, $s3
	ld.d	$a1, $sp, 112
	ldx.w	$a4, $a3, $s4
	ldx.w	$a7, $a2, $s4
	ld.d	$a5, $sp, 104
	mul.w	$a3, $s2, $s2
	sub.d	$a2, $a4, $a6
	sub.d	$a0, $a7, $a0
	pcalau12i	$a4, %got_pc_hi20(input)
	ld.d	$a4, $a4, %got_pc_lo12(input)
	ld.d	$a4, $a4, 0
	ldptr.w	$a6, $a4, 4168
	pcalau12i	$a4, %got_pc_hi20(mvbits)
	ld.d	$a4, $a4, %got_pc_lo12(mvbits)
	ld.d	$a4, $a4, 0
	beqz	$a6, .LBB5_4
# %bb.3:
	move	$a6, $zero
	b	.LBB5_5
.LBB5_4:
	pcalau12i	$a6, %pc_hi20(pos_00)
	ld.d	$a6, $a6, %pc_lo12(pos_00)
	ldx.d	$a6, $a6, $s3
	ldx.w	$a6, $a6, $s4
	slli.d	$a7, $s0, 2
	sub.d	$a7, $a4, $a7
	ld.w	$a7, $a7, 0
	slli.d	$t0, $fp, 2
	sub.d	$t0, $a4, $t0
	ld.w	$t0, $t0, 0
	slli.d	$t1, $a6, 2
	ldx.w	$t1, $s1, $t1
	add.d	$a7, $t0, $a7
	mul.w	$a7, $a7, $a1
	srli.d	$a7, $a7, 16
	add.w	$a7, $a7, $t1
	slt	$t0, $a7, $a5
	maskeqz	$a6, $a6, $t0
	maskeqz	$a7, $a7, $t0
	masknez	$a5, $a5, $t0
	or	$a5, $a7, $a5
.LBB5_5:
	ld.d	$a7, $sp, 88
	ld.d	$t0, $sp, 80
	pcalau12i	$t1, %got_pc_hi20(spiral_search_x)
	ld.d	$t1, $t1, %got_pc_lo12(spiral_search_x)
	ld.d	$t1, $t1, 0
	pcalau12i	$t2, %got_pc_hi20(spiral_search_y)
	ld.d	$t2, $t2, %got_pc_lo12(spiral_search_y)
	ld.d	$t2, $t2, 0
	move	$t3, $zero
	move	$t4, $zero
	move	$t5, $t1
	move	$t6, $t2
	b	.LBB5_7
	.p2align	4, , 16
.LBB5_6:                                #   in Loop: Header=BB5_7 Depth=1
	addi.d	$t4, $t4, 1
	addi.d	$s1, $s1, 4
	addi.d	$t6, $t6, 2
	addi.d	$t5, $t5, 2
	addi.w	$t3, $t3, 1
	bgeu	$t4, $a3, .LBB5_9
.LBB5_7:                                # =>This Inner Loop Header: Depth=1
	ld.w	$t8, $s1, 0
	addi.w	$t7, $a5, 0
	bge	$t8, $t7, .LBB5_6
# %bb.8:                                #   in Loop: Header=BB5_7 Depth=1
	ld.h	$a5, $t5, 0
	ld.h	$s2, $t6, 0
	add.d	$a5, $a2, $a5
	slli.d	$a5, $a5, 2
	add.d	$s2, $a0, $s2
	slli.d	$s2, $s2, 2
	sub.w	$a5, $a5, $s0
	slli.d	$a5, $a5, 2
	ldx.w	$a5, $a4, $a5
	sub.w	$s2, $s2, $fp
	slli.d	$s2, $s2, 2
	ldx.w	$s2, $a4, $s2
	add.d	$a5, $s2, $a5
	mul.w	$a5, $a5, $a1
	srli.d	$a5, $a5, 16
	add.w	$a5, $a5, $t8
	slt	$t8, $a5, $t7
	masknez	$a6, $a6, $t8
	maskeqz	$s2, $t3, $t8
	or	$a6, $s2, $a6
	maskeqz	$a5, $a5, $t8
	masknez	$t7, $t7, $t8
	or	$a5, $a5, $t7
	b	.LBB5_6
.LBB5_9:
	slli.d	$a1, $a6, 1
	ldx.h	$a3, $t1, $a1
	add.d	$a2, $a3, $a2
	st.h	$a2, $t0, 0
	ldx.h	$a1, $t2, $a1
	add.d	$a1, $a1, $a0
	addi.w	$a0, $a5, 0
	st.h	$a1, $a7, 0
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
.Lfunc_end5:
	.size	FastFullPelBlockMotionSearch, .Lfunc_end5-FastFullPelBlockMotionSearch
                                        # -- End function
	.type	BlockSAD,@object                # @BlockSAD
	.local	BlockSAD
	.comm	BlockSAD,8,8
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"InitializeFastFullIntegerSearch: BlockSAD"
	.size	.L.str, 42

	.type	search_setup_done,@object       # @search_setup_done
	.local	search_setup_done
	.comm	search_setup_done,8,8
	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"InitializeFastFullIntegerSearch: search_setup_done"
	.size	.L.str.1, 51

	.type	search_center_x,@object         # @search_center_x
	.local	search_center_x
	.comm	search_center_x,8,8
	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"InitializeFastFullIntegerSearch: search_center_x"
	.size	.L.str.2, 49

	.type	search_center_y,@object         # @search_center_y
	.local	search_center_y
	.comm	search_center_y,8,8
	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"InitializeFastFullIntegerSearch: search_center_y"
	.size	.L.str.3, 49

	.type	pos_00,@object                  # @pos_00
	.local	pos_00
	.comm	pos_00,8,8
	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"InitializeFastFullIntegerSearch: pos_00"
	.size	.L.str.4, 40

	.type	max_search_range,@object        # @max_search_range
	.local	max_search_range
	.comm	max_search_range,8,8
	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"InitializeFastFullIntegerSearch: max_search_range"
	.size	.L.str.5, 50

	.type	SetupFastFullPelSearch.orig_pels,@object # @SetupFastFullPelSearch.orig_pels
	.local	SetupFastFullPelSearch.orig_pels
	.comm	SetupFastFullPelSearch.orig_pels,1536,2
	.type	active_pps,@object              # @active_pps
	.comm	active_pps,8,8
	.type	width_pad,@object               # @width_pad
	.comm	width_pad,4,4
	.type	height_pad,@object              # @height_pad
	.comm	height_pad,4,4
	.type	wp_weight,@object               # @wp_weight
	.comm	wp_weight,8,8
	.type	wp_offset,@object               # @wp_offset
	.comm	wp_offset,8,8
	.type	width_pad_cr,@object            # @width_pad_cr
	.comm	width_pad_cr,4,4
	.type	height_pad_cr,@object           # @height_pad_cr
	.comm	height_pad_cr,4,4
	.type	imgY_org,@object                # @imgY_org
	.comm	imgY_org,8,8
	.type	imgUV_org,@object               # @imgUV_org
	.comm	imgUV_org,8,8
	.type	wp_luma_round,@object           # @wp_luma_round
	.comm	wp_luma_round,4,4
	.type	luma_log_weight_denom,@object   # @luma_log_weight_denom
	.comm	luma_log_weight_denom,4,4
	.type	img_padded_size_x,@object       # @img_padded_size_x
	.comm	img_padded_size_x,4,4
	.type	wp_chroma_round,@object         # @wp_chroma_round
	.comm	wp_chroma_round,4,4
	.type	chroma_log_weight_denom,@object # @chroma_log_weight_denom
	.comm	chroma_log_weight_denom,4,4
	.type	img_cr_padded_size_x,@object    # @img_cr_padded_size_x
	.comm	img_cr_padded_size_x,4,4
	.type	color_formats,@object           # @color_formats
	.comm	color_formats,4,4
	.type	top_pic,@object                 # @top_pic
	.comm	top_pic,8,8
	.type	bottom_pic,@object              # @bottom_pic
	.comm	bottom_pic,8,8
	.type	frame_pic,@object               # @frame_pic
	.comm	frame_pic,8,8
	.type	frame_pic_1,@object             # @frame_pic_1
	.comm	frame_pic_1,8,8
	.type	frame_pic_2,@object             # @frame_pic_2
	.comm	frame_pic_2,8,8
	.type	frame_pic_3,@object             # @frame_pic_3
	.comm	frame_pic_3,8,8
	.type	frame_pic_si,@object            # @frame_pic_si
	.comm	frame_pic_si,8,8
	.type	Bit_Buffer,@object              # @Bit_Buffer
	.comm	Bit_Buffer,8,8
	.type	imgY_sub_tmp,@object            # @imgY_sub_tmp
	.comm	imgY_sub_tmp,8,8
	.type	PicPos,@object                  # @PicPos
	.comm	PicPos,8,8
	.type	log2_max_frame_num_minus4,@object # @log2_max_frame_num_minus4
	.comm	log2_max_frame_num_minus4,4,4
	.type	log2_max_pic_order_cnt_lsb_minus4,@object # @log2_max_pic_order_cnt_lsb_minus4
	.comm	log2_max_pic_order_cnt_lsb_minus4,4,4
	.type	me_tot_time,@object             # @me_tot_time
	.comm	me_tot_time,8,8
	.type	me_time,@object                 # @me_time
	.comm	me_time,8,8
	.type	active_sps,@object              # @active_sps
	.comm	active_sps,8,8
	.type	dsr_new_search_range,@object    # @dsr_new_search_range
	.comm	dsr_new_search_range,4,4
	.type	mb_adaptive,@object             # @mb_adaptive
	.comm	mb_adaptive,4,4
	.type	MBPairIsField,@object           # @MBPairIsField
	.comm	MBPairIsField,4,4
	.type	wbp_weight,@object              # @wbp_weight
	.comm	wbp_weight,8,8
	.type	imgY_org_top,@object            # @imgY_org_top
	.comm	imgY_org_top,8,8
	.type	imgY_org_bot,@object            # @imgY_org_bot
	.comm	imgY_org_bot,8,8
	.type	imgUV_org_top,@object           # @imgUV_org_top
	.comm	imgUV_org_top,8,8
	.type	imgUV_org_bot,@object           # @imgUV_org_bot
	.comm	imgUV_org_bot,8,8
	.type	imgY_org_frm,@object            # @imgY_org_frm
	.comm	imgY_org_frm,8,8
	.type	imgUV_org_frm,@object           # @imgUV_org_frm
	.comm	imgUV_org_frm,8,8
	.type	imgY_com,@object                # @imgY_com
	.comm	imgY_com,8,8
	.type	imgUV_com,@object               # @imgUV_com
	.comm	imgUV_com,8,8
	.type	direct_ref_idx,@object          # @direct_ref_idx
	.comm	direct_ref_idx,8,8
	.type	direct_pdir,@object             # @direct_pdir
	.comm	direct_pdir,8,8
	.type	pixel_map,@object               # @pixel_map
	.comm	pixel_map,8,8
	.type	refresh_map,@object             # @refresh_map
	.comm	refresh_map,8,8
	.type	intras,@object                  # @intras
	.comm	intras,4,4
	.type	frame_ctr,@object               # @frame_ctr
	.comm	frame_ctr,20,4
	.type	frame_no,@object                # @frame_no
	.comm	frame_no,4,4
	.type	nextP_tr_fld,@object            # @nextP_tr_fld
	.comm	nextP_tr_fld,4,4
	.type	nextP_tr_frm,@object            # @nextP_tr_frm
	.comm	nextP_tr_frm,4,4
	.type	tot_time,@object                # @tot_time
	.comm	tot_time,8,8
	.type	errortext,@object               # @errortext
	.comm	errortext,300,1
	.type	b8_ipredmode8x8,@object         # @b8_ipredmode8x8
	.comm	b8_ipredmode8x8,16,1
	.type	b8_intra_pred_modes8x8,@object  # @b8_intra_pred_modes8x8
	.comm	b8_intra_pred_modes8x8,16,1
	.type	gop_structure,@object           # @gop_structure
	.comm	gop_structure,8,8
	.type	rdopt,@object                   # @rdopt
	.comm	rdopt,8,8
	.type	rddata_top_frame_mb,@object     # @rddata_top_frame_mb
	.comm	rddata_top_frame_mb,1752,8
	.type	rddata_bot_frame_mb,@object     # @rddata_bot_frame_mb
	.comm	rddata_bot_frame_mb,1752,8
	.type	rddata_top_field_mb,@object     # @rddata_top_field_mb
	.comm	rddata_top_field_mb,1752,8
	.type	rddata_bot_field_mb,@object     # @rddata_bot_field_mb
	.comm	rddata_bot_field_mb,1752,8
	.type	p_stat,@object                  # @p_stat
	.comm	p_stat,8,8
	.type	p_log,@object                   # @p_log
	.comm	p_log,8,8
	.type	p_trace,@object                 # @p_trace
	.comm	p_trace,8,8
	.type	p_in,@object                    # @p_in
	.comm	p_in,4,4
	.type	p_dec,@object                   # @p_dec
	.comm	p_dec,4,4
	.type	mb16x16_cost_frame,@object      # @mb16x16_cost_frame
	.comm	mb16x16_cost_frame,8,8
	.type	Bytes_After_Header,@object      # @Bytes_After_Header
	.comm	Bytes_After_Header,4,4
	.type	encode_one_macroblock,@object   # @encode_one_macroblock
	.comm	encode_one_macroblock,8,8
	.type	lrec,@object                    # @lrec
	.comm	lrec,8,8
	.type	lrec_uv,@object                 # @lrec_uv
	.comm	lrec_uv,8,8
	.type	si_frame_indicator,@object      # @si_frame_indicator
	.comm	si_frame_indicator,4,4
	.type	sp2_frame_indicator,@object     # @sp2_frame_indicator
	.comm	sp2_frame_indicator,4,4
	.type	number_sp2_frames,@object       # @number_sp2_frames
	.comm	number_sp2_frames,4,4
	.type	giRDOpt_B8OnlyFlag,@object      # @giRDOpt_B8OnlyFlag
	.comm	giRDOpt_B8OnlyFlag,4,4
	.type	imgY_tmp,@object                # @imgY_tmp
	.comm	imgY_tmp,8,8
	.type	imgUV_tmp,@object               # @imgUV_tmp
	.comm	imgUV_tmp,16,8
	.type	frameNuminGOP,@object           # @frameNuminGOP
	.comm	frameNuminGOP,4,4
	.type	redundant_coding,@object        # @redundant_coding
	.comm	redundant_coding,4,4
	.type	key_frame,@object               # @key_frame
	.comm	key_frame,4,4
	.type	redundant_ref_idx,@object       # @redundant_ref_idx
	.comm	redundant_ref_idx,4,4
	.type	img_pad_size_uv_x,@object       # @img_pad_size_uv_x
	.comm	img_pad_size_uv_x,4,4
	.type	img_pad_size_uv_y,@object       # @img_pad_size_uv_y
	.comm	img_pad_size_uv_y,4,4
	.type	chroma_mask_mv_y,@object        # @chroma_mask_mv_y
	.comm	chroma_mask_mv_y,1,1
	.type	chroma_mask_mv_x,@object        # @chroma_mask_mv_x
	.comm	chroma_mask_mv_x,1,1
	.type	chroma_shift_y,@object          # @chroma_shift_y
	.comm	chroma_shift_y,4,4
	.type	chroma_shift_x,@object          # @chroma_shift_x
	.comm	chroma_shift_x,4,4
	.type	shift_cr_x,@object              # @shift_cr_x
	.comm	shift_cr_x,4,4
	.type	shift_cr_y,@object              # @shift_cr_y
	.comm	shift_cr_y,4,4
	.type	start_me_refinement_hp,@object  # @start_me_refinement_hp
	.comm	start_me_refinement_hp,4,4
	.type	start_me_refinement_qp,@object  # @start_me_refinement_qp
	.comm	start_me_refinement_qp,4,4
	.type	getNeighbour,@object            # @getNeighbour
	.comm	getNeighbour,8,8
	.type	get_mb_block_pos,@object        # @get_mb_block_pos
	.comm	get_mb_block_pos,8,8
	.section	".note.GNU-stack","",@progbits
	.addrsig
