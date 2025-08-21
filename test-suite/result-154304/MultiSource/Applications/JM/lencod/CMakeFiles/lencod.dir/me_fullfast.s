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
	pcalau12i	$a0, %got_pc_hi20(img)
	ld.d	$s5, $a0, %got_pc_lo12(img)
	move	$s2, $zero
	slli.d	$fp, $fp, 2
	ld.d	$a0, $s5, 0
	pcalau12i	$a1, %pc_hi20(.L.str)
	addi.d	$s0, $a1, %pc_lo12(.L.str)
	ori	$s8, $zero, 64
	ori	$a2, $zero, 1
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
	slli.d	$s3, $s2, 3
	stx.d	$a0, $s1, $s3
	beqz	$a0, .LBB0_6
# %bb.5:                                #   in Loop: Header=BB0_4 Depth=1
	ld.d	$a0, $s5, 0
	ld.w	$a1, $a0, 32
	ori	$a2, $zero, 1
	bge	$a1, $a2, .LBB0_7
	b	.LBB0_3
	.p2align	4, , 16
.LBB0_6:                                #   in Loop: Header=BB0_4 Depth=1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(no_mem_exit)
	jirl	$ra, $ra, 0
	ld.d	$s1, $s6, %pc_lo12(BlockSAD)
	ld.d	$a0, $s5, 0
	ld.w	$a1, $a0, 32
	ori	$a2, $zero, 1
	blt	$a1, $a2, .LBB0_3
.LBB0_7:                                # %.lr.ph.preheader
                                        #   in Loop: Header=BB0_4 Depth=1
	move	$s7, $zero
	b	.LBB0_9
	.p2align	4, , 16
.LBB0_8:                                #   in Loop: Header=BB0_9 Depth=2
	ld.d	$s5, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a0, $s5, 0
	ld.w	$a1, $a0, 32
	addi.d	$s7, $s7, 1
	bge	$s7, $a1, .LBB0_3
.LBB0_9:                                # %.lr.ph
                                        #   Parent Loop BB0_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_13 Depth 3
	ori	$a0, $zero, 64
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ldx.d	$a1, $s1, $s3
	slli.d	$s4, $s7, 3
	stx.d	$a0, $a1, $s4
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
	ldx.d	$a1, $s1, $s3
	ldx.d	$a1, $a1, $s4
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
	ldx.d	$a0, $s1, $s3
	ldx.d	$a0, $a0, $s4
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
	ldx.d	$a0, $s1, $s3
	ldx.d	$a0, $a0, $s4
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
	ldx.d	$a0, $s1, $s3
	ldx.d	$a0, $a0, $s4
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
	ldx.d	$a0, $s1, $s3
	ldx.d	$a0, $a0, $s4
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
	ldx.d	$a0, $s1, $s3
	ldx.d	$a0, $a0, $s4
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
	ldx.d	$a0, $s1, $s3
	ldx.d	$a0, $a0, $s4
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
	ldx.d	$a0, $s1, $s3
	ldx.d	$a0, $a0, $s4
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
	ldx.d	$a0, $s1, $s3
	ldx.d	$a0, $a0, $s4
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
	ldx.d	$a0, $s1, $s3
	ldx.d	$a0, $a0, $s4
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
	ldx.d	$a0, $s1, $s3
	ldx.d	$a0, $a0, $s4
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
	ldx.d	$a0, $s1, $s3
	ldx.d	$a0, $a0, $s4
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
	ldx.d	$a0, $s1, $s3
	ldx.d	$a0, $a0, $s4
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
	ldx.d	$a0, $s1, $s3
	ldx.d	$a0, $a0, $s4
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
	ldx.d	$a0, $s1, $s3
	ldx.d	$a0, $a0, $s4
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
	ldx.d	$a0, $s1, $s3
	ldx.d	$a0, $a0, $s4
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
	ldx.d	$a0, $s1, $s3
	ldx.d	$a0, $a0, $s4
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
	ori	$a2, $zero, 1
	ld.d	$a5, $sp, 16                    # 8-byte Folded Reload
	blt	$a1, $a2, .LBB0_90
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
	ori	$a2, $zero, 1
	blt	$a4, $a2, .LBB0_90
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
	move	$s5, $zero
	pcalau12i	$a0, %got_pc_hi20(img)
	ld.d	$s1, $a0, %got_pc_lo12(img)
	pcalau12i	$s2, %pc_hi20(BlockSAD)
	ori	$s3, $zero, 64
	ori	$s4, $zero, 1
	b	.LBB1_2
	.p2align	4, , 16
.LBB1_1:                                # %._crit_edge
                                        #   in Loop: Header=BB1_2 Depth=1
	ldx.d	$a0, $fp, $s6
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	andi	$a0, $s4, 1
	ori	$s5, $zero, 1
	move	$s4, $zero
	beqz	$a0, .LBB1_7
.LBB1_2:                                # %.preheader29
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_4 Depth 2
                                        #       Child Loop BB1_5 Depth 3
	ld.d	$a0, $s1, 0
	ld.w	$a0, $a0, 32
	ld.d	$fp, $s2, %pc_lo12(BlockSAD)
	slli.d	$s6, $s5, 3
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB1_1
# %bb.3:                                # %.preheader28.preheader
                                        #   in Loop: Header=BB1_2 Depth=1
	move	$s7, $zero
	.p2align	4, , 16
.LBB1_4:                                # %.preheader28
                                        #   Parent Loop BB1_2 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_5 Depth 3
	ori	$s0, $zero, 8
	slli.d	$s8, $s7, 3
	.p2align	4, , 16
.LBB1_5:                                # %.preheader
                                        #   Parent Loop BB1_2 Depth=1
                                        #     Parent Loop BB1_4 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ldx.d	$a0, $fp, $s6
	ldx.d	$a0, $a0, $s8
	ldx.d	$a0, $a0, $s0
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, %pc_lo12(BlockSAD)
	ldx.d	$a0, $a0, $s6
	ldx.d	$a0, $a0, $s8
	ldx.d	$a0, $a0, $s0
	ld.d	$a0, $a0, 8
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, %pc_lo12(BlockSAD)
	ldx.d	$a0, $a0, $s6
	ldx.d	$a0, $a0, $s8
	ldx.d	$a0, $a0, $s0
	ld.d	$a0, $a0, 16
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, %pc_lo12(BlockSAD)
	ldx.d	$a0, $a0, $s6
	ldx.d	$a0, $a0, $s8
	ldx.d	$a0, $a0, $s0
	ld.d	$a0, $a0, 24
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, %pc_lo12(BlockSAD)
	ldx.d	$a0, $a0, $s6
	ldx.d	$a0, $a0, $s8
	ldx.d	$a0, $a0, $s0
	ld.d	$a0, $a0, 32
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, %pc_lo12(BlockSAD)
	ldx.d	$a0, $a0, $s6
	ldx.d	$a0, $a0, $s8
	ldx.d	$a0, $a0, $s0
	ld.d	$a0, $a0, 40
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, %pc_lo12(BlockSAD)
	ldx.d	$a0, $a0, $s6
	ldx.d	$a0, $a0, $s8
	ldx.d	$a0, $a0, $s0
	ld.d	$a0, $a0, 48
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, %pc_lo12(BlockSAD)
	ldx.d	$a0, $a0, $s6
	ldx.d	$a0, $a0, $s8
	ldx.d	$a0, $a0, $s0
	ld.d	$a0, $a0, 56
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, %pc_lo12(BlockSAD)
	ldx.d	$a0, $a0, $s6
	ldx.d	$a0, $a0, $s8
	ldx.d	$a0, $a0, $s0
	ld.d	$a0, $a0, 64
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, %pc_lo12(BlockSAD)
	ldx.d	$a0, $a0, $s6
	ldx.d	$a0, $a0, $s8
	ldx.d	$a0, $a0, $s0
	ld.d	$a0, $a0, 72
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, %pc_lo12(BlockSAD)
	ldx.d	$a0, $a0, $s6
	ldx.d	$a0, $a0, $s8
	ldx.d	$a0, $a0, $s0
	ld.d	$a0, $a0, 80
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, %pc_lo12(BlockSAD)
	ldx.d	$a0, $a0, $s6
	ldx.d	$a0, $a0, $s8
	ldx.d	$a0, $a0, $s0
	ld.d	$a0, $a0, 88
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, %pc_lo12(BlockSAD)
	ldx.d	$a0, $a0, $s6
	ldx.d	$a0, $a0, $s8
	ldx.d	$a0, $a0, $s0
	ld.d	$a0, $a0, 96
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, %pc_lo12(BlockSAD)
	ldx.d	$a0, $a0, $s6
	ldx.d	$a0, $a0, $s8
	ldx.d	$a0, $a0, $s0
	ld.d	$a0, $a0, 104
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, %pc_lo12(BlockSAD)
	ldx.d	$a0, $a0, $s6
	ldx.d	$a0, $a0, $s8
	ldx.d	$a0, $a0, $s0
	ld.d	$a0, $a0, 112
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, %pc_lo12(BlockSAD)
	ldx.d	$a0, $a0, $s6
	ldx.d	$a0, $a0, $s8
	ldx.d	$a0, $a0, $s0
	ld.d	$a0, $a0, 120
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$fp, $s2, %pc_lo12(BlockSAD)
	ldx.d	$a0, $fp, $s6
	ldx.d	$a0, $a0, $s8
	ldx.d	$a0, $a0, $s0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	addi.d	$s0, $s0, 8
	bne	$s0, $s3, .LBB1_5
# %bb.6:                                #   in Loop: Header=BB1_4 Depth=2
	alsl.d	$a0, $s5, $fp, 3
	ld.d	$a0, $a0, 0
	ldx.d	$a0, $a0, $s8
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	ld.w	$a0, $a0, 32
	addi.d	$s7, $s7, 1
	blt	$s7, $a0, .LBB1_4
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
	pcalau12i	$a0, %got_pc_hi20(img)
	ld.d	$fp, $a0, %got_pc_lo12(img)
	pcalau12i	$a0, %pc_hi20(search_setup_done)
	ld.d	$a1, $fp, 0
	ld.d	$s0, $a0, %pc_lo12(search_setup_done)
	ld.w	$a1, $a1, 32
	ld.d	$a0, $s0, 0
	slli.d	$a2, $a1, 2
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	ld.w	$a1, $a0, 32
	ld.d	$a0, $s0, 8
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
	ori	$a3, $zero, 1
	blt	$a2, $a3, .LBB3_102
# %bb.1:                                # %iter.check
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
	ori	$a1, $zero, 4
	bgeu	$a2, $a1, .LBB3_103
# %bb.2:
	move	$a3, $zero
.LBB3_3:                                # %.lr.ph.preheader
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
.LBB3_5:                                # %iter.check598
	st.d	$t0, $sp, 48                    # 8-byte Folded Spill
	ld.d	$t0, $t1, 8
	ld.d	$s2, $s1, 8
	ld.d	$t4, $s1, 40
	ori	$a1, $zero, 4
	bgeu	$a2, $a1, .LBB3_107
# %bb.6:
	move	$a4, $zero
.LBB3_7:                                # %.lr.ph390.preheader
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
.LBB3_9:                                # %iter.check635
	st.d	$t0, $sp, 40                    # 8-byte Folded Spill
	ld.d	$t0, $t1, 16
	ld.d	$s3, $s1, 16
	ld.d	$t5, $s1, 48
	ori	$a1, $zero, 4
	bgeu	$a2, $a1, .LBB3_111
# %bb.10:
	move	$a5, $zero
.LBB3_11:                               # %.lr.ph394.preheader
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
.LBB3_13:                               # %iter.check672
	ld.d	$t7, $t1, 24
	ld.d	$s7, $s1, 24
	ld.d	$fp, $s1, 56
	ori	$a1, $zero, 4
	bgeu	$a2, $a1, .LBB3_115
# %bb.14:
	move	$a6, $zero
.LBB3_15:                               # %.lr.ph398.preheader
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
.LBB3_17:                               # %iter.check709
	ld.d	$t6, $t1, 64
	ld.d	$s0, $s1, 64
	ld.d	$t3, $s1, 96
	ori	$a1, $zero, 4
	bgeu	$a2, $a1, .LBB3_119
# %bb.18:
	move	$a7, $zero
.LBB3_19:                               # %.lr.ph402.preheader
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
.LBB3_21:                               # %iter.check746
	st.d	$t6, $sp, 16                    # 8-byte Folded Spill
	st.d	$t0, $sp, 32                    # 8-byte Folded Spill
	ld.d	$a7, $t1, 72
	ld.d	$s4, $s1, 72
	ld.d	$t6, $s1, 104
	ori	$a1, $zero, 4
	bgeu	$a2, $a1, .LBB3_123
# %bb.22:
	move	$t0, $zero
.LBB3_23:                               # %.lr.ph406.preheader
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
.LBB3_25:                               # %iter.check783
	st.d	$t7, $sp, 24                    # 8-byte Folded Spill
	ld.d	$t0, $t1, 80
	ld.d	$s5, $s1, 80
	ld.d	$t7, $s1, 112
	ori	$a1, $zero, 4
	bgeu	$a2, $a1, .LBB3_127
# %bb.26:
	move	$s6, $zero
.LBB3_27:                               # %.lr.ph410.preheader
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
.LBB3_29:                               # %iter.check820
	ld.d	$t1, $t1, 88
	ld.d	$s8, $s1, 88
	ld.d	$s1, $s1, 120
	ori	$a1, $zero, 4
	bgeu	$a2, $a1, .LBB3_131
# %bb.30:
	move	$s6, $zero
.LBB3_31:                               # %.lr.ph414.preheader
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
.LBB3_33:                               # %iter.check857
	ld.d	$s6, $a0, 40
	ld.d	$ra, $s6, 0
	ori	$a1, $zero, 4
	bgeu	$a2, $a1, .LBB3_135
# %bb.34:
	move	$a6, $zero
.LBB3_35:                               # %.lr.ph418.preheader
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
.LBB3_37:                               # %iter.check894
	ld.d	$t8, $s6, 16
	ori	$a1, $zero, 4
	bgeu	$a2, $a1, .LBB3_139
# %bb.38:
	move	$a1, $zero
.LBB3_39:                               # %.lr.ph422.preheader
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
.LBB3_41:                               # %iter.check931
	ld.d	$t8, $s6, 32
	ori	$a1, $zero, 4
	bgeu	$a2, $a1, .LBB3_143
# %bb.42:
	move	$a1, $zero
.LBB3_43:                               # %.lr.ph426.preheader
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
.LBB3_45:                               # %iter.check968
	ld.d	$t2, $s6, 48
	ori	$a1, $zero, 4
	bgeu	$a2, $a1, .LBB3_147
# %bb.46:
	move	$a1, $zero
	ld.d	$t4, $sp, 48                    # 8-byte Folded Reload
.LBB3_47:                               # %.lr.ph430.preheader
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
.LBB3_49:                               # %iter.check1005
	ld.d	$t2, $s6, 64
	ori	$a1, $zero, 4
	bgeu	$a2, $a1, .LBB3_151
# %bb.50:
	move	$a1, $zero
	ld.d	$t5, $sp, 40                    # 8-byte Folded Reload
.LBB3_51:                               # %.lr.ph434.preheader
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
.LBB3_53:                               # %iter.check1042
	ld.d	$t2, $s6, 80
	ori	$a1, $zero, 4
	bgeu	$a2, $a1, .LBB3_155
# %bb.54:
	move	$a1, $zero
.LBB3_55:                               # %.lr.ph438.preheader
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
.LBB3_57:                               # %iter.check1079
	ld.d	$t2, $s6, 96
	ori	$a1, $zero, 4
	bgeu	$a2, $a1, .LBB3_159
# %bb.58:
	move	$a1, $zero
.LBB3_59:                               # %.lr.ph442.preheader
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
.LBB3_61:                               # %iter.check1116
	ld.d	$t2, $s6, 112
	ori	$a1, $zero, 4
	bgeu	$a2, $a1, .LBB3_163
# %bb.62:
	move	$a1, $zero
	ld.d	$t6, $sp, 32                    # 8-byte Folded Reload
.LBB3_63:                               # %.lr.ph446.preheader
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
.LBB3_65:                               # %iter.check1153
	ld.d	$t3, $a0, 32
	ld.d	$t2, $t3, 0
	ori	$a1, $zero, 4
	bgeu	$a2, $a1, .LBB3_167
# %bb.66:
	move	$a1, $zero
	ld.d	$t7, $sp, 24                    # 8-byte Folded Reload
.LBB3_67:                               # %.lr.ph450.preheader
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
.LBB3_69:                               # %iter.check1190
	ld.d	$a3, $t3, 16
	ori	$a1, $zero, 4
	bgeu	$a2, $a1, .LBB3_171
# %bb.70:
	move	$a1, $zero
.LBB3_71:                               # %.lr.ph454.preheader
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
.LBB3_73:                               # %iter.check1227
	ld.d	$a1, $t3, 64
	ori	$a4, $zero, 4
	bgeu	$a2, $a4, .LBB3_175
# %bb.74:
	move	$a4, $zero
	ld.d	$t6, $sp, 16                    # 8-byte Folded Reload
.LBB3_75:                               # %.lr.ph458.preheader
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
.LBB3_77:                               # %iter.check1264
	ld.d	$a5, $t3, 80
	ori	$a4, $zero, 4
	bgeu	$a2, $a4, .LBB3_179
# %bb.78:
	move	$a4, $zero
.LBB3_79:                               # %.lr.ph462.preheader
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
.LBB3_81:                               # %iter.check1301
	ld.d	$a6, $a0, 24
	ld.d	$a4, $a6, 0
	ori	$a7, $zero, 4
	bgeu	$a2, $a7, .LBB3_183
# %bb.82:
	move	$a7, $zero
.LBB3_83:                               # %.lr.ph466.preheader
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
.LBB3_85:                               # %iter.check1338
	ld.d	$a6, $a6, 16
	ori	$a7, $zero, 4
	bgeu	$a2, $a7, .LBB3_187
# %bb.86:
	move	$a7, $zero
.LBB3_87:                               # %.lr.ph470.preheader
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
.LBB3_89:                               # %iter.check1375
	ld.d	$a7, $a0, 16
	ld.d	$t0, $a7, 0
	ori	$t1, $zero, 4
	bgeu	$a2, $t1, .LBB3_191
# %bb.90:
	move	$t1, $zero
.LBB3_91:                               # %.lr.ph474.preheader
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
.LBB3_93:                               # %iter.check1412
	ld.d	$a3, $a7, 64
	ori	$a7, $zero, 4
	bgeu	$a2, $a7, .LBB3_195
# %bb.94:
	move	$a7, $zero
.LBB3_95:                               # %.lr.ph478.preheader
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
.LBB3_97:                               # %iter.check1449
	ld.d	$a0, $a0, 8
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 4
	bgeu	$a2, $a1, .LBB3_199
# %bb.98:
	move	$a1, $zero
.LBB3_99:                               # %.lr.ph482.preheader
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
	ori	$a1, $zero, 64
	move	$a3, $zero
	bltu	$a4, $a1, .LBB3_3
# %bb.104:                              # %vector.memcheck
	sub.d	$a4, $t0, $t2
	bltu	$a4, $a1, .LBB3_3
# %bb.105:                              # %vector.main.loop.iter.check
	ori	$a1, $zero, 16
	bgeu	$a2, $a1, .LBB3_203
# %bb.106:
	move	$a3, $zero
	b	.LBB3_207
.LBB3_107:                              # %vector.memcheck592
	sub.d	$a3, $t0, $s2
	ori	$a1, $zero, 64
	move	$a4, $zero
	bltu	$a3, $a1, .LBB3_7
# %bb.108:                              # %vector.memcheck592
	sub.d	$a3, $t0, $t4
	bltu	$a3, $a1, .LBB3_7
# %bb.109:                              # %vector.main.loop.iter.check600
	ori	$a1, $zero, 16
	bgeu	$a2, $a1, .LBB3_210
# %bb.110:
	move	$a4, $zero
	b	.LBB3_214
.LBB3_111:                              # %vector.memcheck629
	sub.d	$a3, $t0, $s3
	ori	$a1, $zero, 64
	move	$a5, $zero
	bltu	$a3, $a1, .LBB3_11
# %bb.112:                              # %vector.memcheck629
	sub.d	$a3, $t0, $t5
	bltu	$a3, $a1, .LBB3_11
# %bb.113:                              # %vector.main.loop.iter.check637
	ori	$a1, $zero, 16
	bgeu	$a2, $a1, .LBB3_217
# %bb.114:
	move	$a5, $zero
	b	.LBB3_221
.LBB3_115:                              # %vector.memcheck666
	sub.d	$a3, $t7, $s7
	ori	$a1, $zero, 64
	move	$a6, $zero
	bltu	$a3, $a1, .LBB3_15
# %bb.116:                              # %vector.memcheck666
	sub.d	$a3, $t7, $fp
	bltu	$a3, $a1, .LBB3_15
# %bb.117:                              # %vector.main.loop.iter.check674
	ori	$a1, $zero, 16
	bgeu	$a2, $a1, .LBB3_224
# %bb.118:
	move	$a6, $zero
	b	.LBB3_228
.LBB3_119:                              # %vector.memcheck703
	sub.d	$a3, $t6, $s0
	ori	$a1, $zero, 64
	move	$a7, $zero
	bltu	$a3, $a1, .LBB3_19
# %bb.120:                              # %vector.memcheck703
	sub.d	$a3, $t6, $t3
	bltu	$a3, $a1, .LBB3_19
# %bb.121:                              # %vector.main.loop.iter.check711
	ori	$a1, $zero, 16
	bgeu	$a2, $a1, .LBB3_231
# %bb.122:
	move	$a7, $zero
	b	.LBB3_235
.LBB3_123:                              # %vector.memcheck740
	sub.d	$a3, $a7, $s4
	ori	$a1, $zero, 64
	move	$t0, $zero
	bltu	$a3, $a1, .LBB3_23
# %bb.124:                              # %vector.memcheck740
	sub.d	$a3, $a7, $t6
	bltu	$a3, $a1, .LBB3_23
# %bb.125:                              # %vector.main.loop.iter.check748
	ori	$a1, $zero, 16
	bgeu	$a2, $a1, .LBB3_238
# %bb.126:
	move	$t0, $zero
	b	.LBB3_242
.LBB3_127:                              # %vector.memcheck777
	sub.d	$a3, $t0, $s5
	ori	$a1, $zero, 64
	move	$s6, $zero
	bltu	$a3, $a1, .LBB3_27
# %bb.128:                              # %vector.memcheck777
	sub.d	$a3, $t0, $t7
	bltu	$a3, $a1, .LBB3_27
# %bb.129:                              # %vector.main.loop.iter.check785
	ori	$a1, $zero, 16
	bgeu	$a2, $a1, .LBB3_245
# %bb.130:
	move	$s6, $zero
	b	.LBB3_249
.LBB3_131:                              # %vector.memcheck814
	sub.d	$a3, $t1, $s8
	ori	$a1, $zero, 64
	move	$s6, $zero
	bltu	$a3, $a1, .LBB3_31
# %bb.132:                              # %vector.memcheck814
	sub.d	$a3, $t1, $s1
	bltu	$a3, $a1, .LBB3_31
# %bb.133:                              # %vector.main.loop.iter.check822
	ori	$a1, $zero, 16
	bgeu	$a2, $a1, .LBB3_252
# %bb.134:
	move	$s6, $zero
	b	.LBB3_256
.LBB3_135:                              # %vector.memcheck851
	sub.d	$a3, $ra, $t8
	ori	$a1, $zero, 64
	move	$a6, $zero
	bltu	$a3, $a1, .LBB3_35
# %bb.136:                              # %vector.memcheck851
	sub.d	$a3, $ra, $s2
	bltu	$a3, $a1, .LBB3_35
# %bb.137:                              # %vector.main.loop.iter.check859
	ori	$a1, $zero, 16
	bgeu	$a2, $a1, .LBB3_259
# %bb.138:
	move	$a6, $zero
	b	.LBB3_263
.LBB3_139:                              # %vector.memcheck888
	sub.d	$a4, $t8, $s3
	ori	$a3, $zero, 64
	move	$a1, $zero
	bltu	$a4, $a3, .LBB3_39
# %bb.140:                              # %vector.memcheck888
	sub.d	$a4, $t8, $s7
	bltu	$a4, $a3, .LBB3_39
# %bb.141:                              # %vector.main.loop.iter.check896
	ori	$a1, $zero, 16
	bgeu	$a2, $a1, .LBB3_266
# %bb.142:
	move	$a1, $zero
	b	.LBB3_270
.LBB3_143:                              # %vector.memcheck925
	sub.d	$a4, $t8, $t2
	ori	$a3, $zero, 64
	move	$a1, $zero
	bltu	$a4, $a3, .LBB3_43
# %bb.144:                              # %vector.memcheck925
	sub.d	$a4, $t8, $t4
	bltu	$a4, $a3, .LBB3_43
# %bb.145:                              # %vector.main.loop.iter.check933
	ori	$a1, $zero, 16
	bgeu	$a2, $a1, .LBB3_273
# %bb.146:
	move	$a1, $zero
	b	.LBB3_277
.LBB3_147:                              # %vector.memcheck962
	sub.d	$a4, $t2, $t5
	ori	$a3, $zero, 64
	move	$a1, $zero
	ld.d	$t4, $sp, 48                    # 8-byte Folded Reload
	bltu	$a4, $a3, .LBB3_47
# %bb.148:                              # %vector.memcheck962
	sub.d	$a4, $t2, $fp
	bltu	$a4, $a3, .LBB3_47
# %bb.149:                              # %vector.main.loop.iter.check970
	ori	$a1, $zero, 16
	bgeu	$a2, $a1, .LBB3_280
# %bb.150:
	move	$a1, $zero
	b	.LBB3_284
.LBB3_151:                              # %vector.memcheck999
	sub.d	$a4, $t2, $s0
	ori	$a3, $zero, 64
	move	$a1, $zero
	ld.d	$t5, $sp, 40                    # 8-byte Folded Reload
	bltu	$a4, $a3, .LBB3_51
# %bb.152:                              # %vector.memcheck999
	sub.d	$a4, $t2, $s4
	bltu	$a4, $a3, .LBB3_51
# %bb.153:                              # %vector.main.loop.iter.check1007
	ori	$a1, $zero, 16
	bgeu	$a2, $a1, .LBB3_287
# %bb.154:
	move	$a1, $zero
	b	.LBB3_291
.LBB3_155:                              # %vector.memcheck1036
	sub.d	$a4, $t2, $s5
	ori	$a3, $zero, 64
	move	$a1, $zero
	bltu	$a4, $a3, .LBB3_55
# %bb.156:                              # %vector.memcheck1036
	sub.d	$a4, $t2, $s8
	bltu	$a4, $a3, .LBB3_55
# %bb.157:                              # %vector.main.loop.iter.check1044
	ori	$a1, $zero, 16
	bgeu	$a2, $a1, .LBB3_294
# %bb.158:
	move	$a1, $zero
	b	.LBB3_298
.LBB3_159:                              # %vector.memcheck1073
	sub.d	$a4, $t2, $t3
	ori	$a3, $zero, 64
	move	$a1, $zero
	bltu	$a4, $a3, .LBB3_59
# %bb.160:                              # %vector.memcheck1073
	sub.d	$a4, $t2, $t6
	bltu	$a4, $a3, .LBB3_59
# %bb.161:                              # %vector.main.loop.iter.check1081
	ori	$a1, $zero, 16
	bgeu	$a2, $a1, .LBB3_301
# %bb.162:
	move	$a1, $zero
	b	.LBB3_305
.LBB3_163:                              # %vector.memcheck1110
	sub.d	$a4, $t2, $t7
	ori	$a3, $zero, 64
	move	$a1, $zero
	ld.d	$t6, $sp, 32                    # 8-byte Folded Reload
	bltu	$a4, $a3, .LBB3_63
# %bb.164:                              # %vector.memcheck1110
	sub.d	$a4, $t2, $s1
	bltu	$a4, $a3, .LBB3_63
# %bb.165:                              # %vector.main.loop.iter.check1118
	ori	$a1, $zero, 16
	bgeu	$a2, $a1, .LBB3_308
# %bb.166:
	move	$a1, $zero
	b	.LBB3_312
.LBB3_167:                              # %vector.memcheck1147
	sub.d	$a4, $t2, $t4
	ori	$a3, $zero, 64
	move	$a1, $zero
	ld.d	$t7, $sp, 24                    # 8-byte Folded Reload
	bltu	$a4, $a3, .LBB3_67
# %bb.168:                              # %vector.memcheck1147
	sub.d	$a4, $t2, $t5
	bltu	$a4, $a3, .LBB3_67
# %bb.169:                              # %vector.main.loop.iter.check1155
	ori	$a1, $zero, 16
	bgeu	$a2, $a1, .LBB3_315
# %bb.170:
	move	$a1, $zero
	b	.LBB3_319
.LBB3_171:                              # %vector.memcheck1184
	sub.d	$a5, $a3, $t6
	ori	$a4, $zero, 64
	move	$a1, $zero
	bltu	$a5, $a4, .LBB3_71
# %bb.172:                              # %vector.memcheck1184
	sub.d	$a5, $a3, $t7
	bltu	$a5, $a4, .LBB3_71
# %bb.173:                              # %vector.main.loop.iter.check1192
	ori	$a1, $zero, 16
	bgeu	$a2, $a1, .LBB3_322
# %bb.174:
	move	$a1, $zero
	b	.LBB3_326
.LBB3_175:                              # %vector.memcheck1221
	ld.d	$t6, $sp, 16                    # 8-byte Folded Reload
	sub.d	$a6, $a1, $t6
	ori	$a5, $zero, 64
	move	$a4, $zero
	bltu	$a6, $a5, .LBB3_75
# %bb.176:                              # %vector.memcheck1221
	sub.d	$a6, $a1, $a7
	bltu	$a6, $a5, .LBB3_75
# %bb.177:                              # %vector.main.loop.iter.check1229
	ori	$a4, $zero, 16
	bgeu	$a2, $a4, .LBB3_329
# %bb.178:
	move	$a4, $zero
	b	.LBB3_333
.LBB3_179:                              # %vector.memcheck1258
	sub.d	$a7, $a5, $t0
	ori	$a6, $zero, 64
	move	$a4, $zero
	bltu	$a7, $a6, .LBB3_79
# %bb.180:                              # %vector.memcheck1258
	sub.d	$a7, $a5, $t1
	bltu	$a7, $a6, .LBB3_79
# %bb.181:                              # %vector.main.loop.iter.check1266
	ori	$a4, $zero, 16
	bgeu	$a2, $a4, .LBB3_336
# %bb.182:
	move	$a4, $zero
	b	.LBB3_340
.LBB3_183:                              # %vector.memcheck1295
	sub.d	$t1, $a4, $t2
	ori	$t0, $zero, 64
	move	$a7, $zero
	bltu	$t1, $t0, .LBB3_83
# %bb.184:                              # %vector.memcheck1295
	sub.d	$t1, $a4, $a1
	bltu	$t1, $t0, .LBB3_83
# %bb.185:                              # %vector.main.loop.iter.check1303
	ori	$a7, $zero, 16
	bgeu	$a2, $a7, .LBB3_343
# %bb.186:
	move	$a7, $zero
	b	.LBB3_347
.LBB3_187:                              # %vector.memcheck1332
	sub.d	$t1, $a6, $a3
	ori	$t0, $zero, 64
	move	$a7, $zero
	bltu	$t1, $t0, .LBB3_87
# %bb.188:                              # %vector.memcheck1332
	sub.d	$t1, $a6, $a5
	bltu	$t1, $t0, .LBB3_87
# %bb.189:                              # %vector.main.loop.iter.check1340
	ori	$a7, $zero, 16
	bgeu	$a2, $a7, .LBB3_350
# %bb.190:
	move	$a7, $zero
	b	.LBB3_354
.LBB3_191:                              # %vector.memcheck1369
	sub.d	$t4, $t0, $t2
	ori	$t3, $zero, 64
	move	$t1, $zero
	bltu	$t4, $t3, .LBB3_91
# %bb.192:                              # %vector.memcheck1369
	sub.d	$t4, $t0, $a3
	bltu	$t4, $t3, .LBB3_91
# %bb.193:                              # %vector.main.loop.iter.check1377
	ori	$t1, $zero, 16
	bgeu	$a2, $t1, .LBB3_357
# %bb.194:
	move	$t1, $zero
	b	.LBB3_361
.LBB3_195:                              # %vector.memcheck1406
	sub.d	$t1, $a3, $a1
	ori	$t0, $zero, 64
	move	$a7, $zero
	bltu	$t1, $t0, .LBB3_95
# %bb.196:                              # %vector.memcheck1406
	sub.d	$t1, $a3, $a5
	bltu	$t1, $t0, .LBB3_95
# %bb.197:                              # %vector.main.loop.iter.check1414
	ori	$a7, $zero, 16
	bgeu	$a2, $a7, .LBB3_364
# %bb.198:
	move	$a7, $zero
	b	.LBB3_368
.LBB3_199:                              # %vector.memcheck1443
	sub.d	$a5, $a0, $a4
	ori	$a3, $zero, 64
	move	$a1, $zero
	bltu	$a5, $a3, .LBB3_99
# %bb.200:                              # %vector.memcheck1443
	sub.d	$a5, $a0, $a6
	bltu	$a5, $a3, .LBB3_99
# %bb.201:                              # %vector.main.loop.iter.check1451
	ori	$a1, $zero, 16
	bgeu	$a2, $a1, .LBB3_371
# %bb.202:
	move	$a1, $zero
	b	.LBB3_375
.LBB3_203:                              # %vector.ph
	bstrpick.d	$a1, $a2, 30, 4
	slli.d	$a3, $a1, 4
	addi.d	$a1, $t0, 32
	addi.d	$a4, $t2, 32
	addi.d	$a5, $t8, 32
	move	$a6, $a3
	.p2align	4, , 16
.LBB3_204:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr0, $a5, -32
	xvld	$xr1, $a5, 0
	xvld	$xr2, $a4, -32
	xvld	$xr3, $a4, 0
	xvadd.w	$xr0, $xr2, $xr0
	xvadd.w	$xr1, $xr3, $xr1
	xvst	$xr0, $a1, -32
	xvst	$xr1, $a1, 0
	addi.d	$a6, $a6, -16
	addi.d	$a1, $a1, 64
	addi.d	$a4, $a4, 64
	addi.d	$a5, $a5, 64
	bnez	$a6, .LBB3_204
# %bb.205:                              # %middle.block
	beq	$a3, $a2, .LBB3_5
# %bb.206:                              # %vec.epilog.iter.check
	andi	$a1, $a2, 12
	beqz	$a1, .LBB3_3
.LBB3_207:                              # %vec.epilog.ph
	move	$a6, $a3
	bstrpick.d	$a1, $a2, 30, 2
	slli.d	$a3, $a1, 2
	sub.d	$a1, $a6, $a3
	alsl.d	$a4, $a6, $t0, 2
	alsl.d	$a5, $a6, $t2, 2
	alsl.d	$a6, $a6, $t8, 2
	.p2align	4, , 16
.LBB3_208:                              # %vec.epilog.vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a6, 0
	vld	$vr1, $a5, 0
	vadd.w	$vr0, $vr1, $vr0
	vst	$vr0, $a4, 0
	addi.d	$a1, $a1, 4
	addi.d	$a4, $a4, 16
	addi.d	$a5, $a5, 16
	addi.d	$a6, $a6, 16
	bnez	$a1, .LBB3_208
# %bb.209:                              # %vec.epilog.middle.block
	bne	$a3, $a2, .LBB3_3
	b	.LBB3_5
.LBB3_210:                              # %vector.ph601
	bstrpick.d	$a1, $a2, 30, 4
	slli.d	$a4, $a1, 4
	addi.d	$a1, $t0, 32
	addi.d	$a3, $t4, 32
	addi.d	$a5, $s2, 32
	move	$a6, $a4
	.p2align	4, , 16
.LBB3_211:                              # %vector.body604
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr0, $a5, -32
	xvld	$xr1, $a5, 0
	xvld	$xr2, $a3, -32
	xvld	$xr3, $a3, 0
	xvadd.w	$xr0, $xr2, $xr0
	xvadd.w	$xr1, $xr3, $xr1
	xvst	$xr0, $a1, -32
	xvst	$xr1, $a1, 0
	addi.d	$a6, $a6, -16
	addi.d	$a1, $a1, 64
	addi.d	$a3, $a3, 64
	addi.d	$a5, $a5, 64
	bnez	$a6, .LBB3_211
# %bb.212:                              # %middle.block611
	beq	$a4, $a2, .LBB3_9
# %bb.213:                              # %vec.epilog.iter.check616
	andi	$a1, $a2, 12
	beqz	$a1, .LBB3_7
.LBB3_214:                              # %vec.epilog.ph615
	move	$a6, $a4
	bstrpick.d	$a1, $a2, 30, 2
	slli.d	$a4, $a1, 2
	sub.d	$a1, $a6, $a4
	alsl.d	$a3, $a6, $t0, 2
	alsl.d	$a5, $a6, $t4, 2
	alsl.d	$a6, $a6, $s2, 2
	.p2align	4, , 16
.LBB3_215:                              # %vec.epilog.vector.body621
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a6, 0
	vld	$vr1, $a5, 0
	vadd.w	$vr0, $vr1, $vr0
	vst	$vr0, $a3, 0
	addi.d	$a1, $a1, 4
	addi.d	$a3, $a3, 16
	addi.d	$a5, $a5, 16
	addi.d	$a6, $a6, 16
	bnez	$a1, .LBB3_215
# %bb.216:                              # %vec.epilog.middle.block626
	bne	$a4, $a2, .LBB3_7
	b	.LBB3_9
.LBB3_217:                              # %vector.ph638
	bstrpick.d	$a1, $a2, 30, 4
	slli.d	$a5, $a1, 4
	addi.d	$a1, $t0, 32
	addi.d	$a3, $t5, 32
	addi.d	$a4, $s3, 32
	move	$a6, $a5
	.p2align	4, , 16
.LBB3_218:                              # %vector.body641
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr0, $a4, -32
	xvld	$xr1, $a4, 0
	xvld	$xr2, $a3, -32
	xvld	$xr3, $a3, 0
	xvadd.w	$xr0, $xr2, $xr0
	xvadd.w	$xr1, $xr3, $xr1
	xvst	$xr0, $a1, -32
	xvst	$xr1, $a1, 0
	addi.d	$a6, $a6, -16
	addi.d	$a1, $a1, 64
	addi.d	$a3, $a3, 64
	addi.d	$a4, $a4, 64
	bnez	$a6, .LBB3_218
# %bb.219:                              # %middle.block648
	beq	$a5, $a2, .LBB3_13
# %bb.220:                              # %vec.epilog.iter.check653
	andi	$a1, $a2, 12
	beqz	$a1, .LBB3_11
.LBB3_221:                              # %vec.epilog.ph652
	move	$a6, $a5
	bstrpick.d	$a1, $a2, 30, 2
	slli.d	$a5, $a1, 2
	sub.d	$a1, $a6, $a5
	alsl.d	$a3, $a6, $t0, 2
	alsl.d	$a4, $a6, $t5, 2
	alsl.d	$a6, $a6, $s3, 2
	.p2align	4, , 16
.LBB3_222:                              # %vec.epilog.vector.body658
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a6, 0
	vld	$vr1, $a4, 0
	vadd.w	$vr0, $vr1, $vr0
	vst	$vr0, $a3, 0
	addi.d	$a1, $a1, 4
	addi.d	$a3, $a3, 16
	addi.d	$a4, $a4, 16
	addi.d	$a6, $a6, 16
	bnez	$a1, .LBB3_222
# %bb.223:                              # %vec.epilog.middle.block663
	bne	$a5, $a2, .LBB3_11
	b	.LBB3_13
.LBB3_224:                              # %vector.ph675
	bstrpick.d	$a1, $a2, 30, 4
	slli.d	$a6, $a1, 4
	addi.d	$a1, $t7, 32
	addi.d	$a3, $fp, 32
	addi.d	$a4, $s7, 32
	move	$a5, $a6
	.p2align	4, , 16
.LBB3_225:                              # %vector.body678
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr0, $a4, -32
	xvld	$xr1, $a4, 0
	xvld	$xr2, $a3, -32
	xvld	$xr3, $a3, 0
	xvadd.w	$xr0, $xr2, $xr0
	xvadd.w	$xr1, $xr3, $xr1
	xvst	$xr0, $a1, -32
	xvst	$xr1, $a1, 0
	addi.d	$a5, $a5, -16
	addi.d	$a1, $a1, 64
	addi.d	$a3, $a3, 64
	addi.d	$a4, $a4, 64
	bnez	$a5, .LBB3_225
# %bb.226:                              # %middle.block685
	beq	$a6, $a2, .LBB3_17
# %bb.227:                              # %vec.epilog.iter.check690
	andi	$a1, $a2, 12
	beqz	$a1, .LBB3_15
.LBB3_228:                              # %vec.epilog.ph689
	move	$a5, $a6
	bstrpick.d	$a1, $a2, 30, 2
	slli.d	$a6, $a1, 2
	sub.d	$a1, $a5, $a6
	alsl.d	$a3, $a5, $t7, 2
	alsl.d	$a4, $a5, $fp, 2
	alsl.d	$a5, $a5, $s7, 2
	.p2align	4, , 16
.LBB3_229:                              # %vec.epilog.vector.body695
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a5, 0
	vld	$vr1, $a4, 0
	vadd.w	$vr0, $vr1, $vr0
	vst	$vr0, $a3, 0
	addi.d	$a1, $a1, 4
	addi.d	$a3, $a3, 16
	addi.d	$a4, $a4, 16
	addi.d	$a5, $a5, 16
	bnez	$a1, .LBB3_229
# %bb.230:                              # %vec.epilog.middle.block700
	bne	$a6, $a2, .LBB3_15
	b	.LBB3_17
.LBB3_231:                              # %vector.ph712
	bstrpick.d	$a1, $a2, 30, 4
	slli.d	$a7, $a1, 4
	addi.d	$a1, $t6, 32
	addi.d	$a3, $t3, 32
	addi.d	$a4, $s0, 32
	move	$a5, $a7
	.p2align	4, , 16
.LBB3_232:                              # %vector.body715
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr0, $a4, -32
	xvld	$xr1, $a4, 0
	xvld	$xr2, $a3, -32
	xvld	$xr3, $a3, 0
	xvadd.w	$xr0, $xr2, $xr0
	xvadd.w	$xr1, $xr3, $xr1
	xvst	$xr0, $a1, -32
	xvst	$xr1, $a1, 0
	addi.d	$a5, $a5, -16
	addi.d	$a1, $a1, 64
	addi.d	$a3, $a3, 64
	addi.d	$a4, $a4, 64
	bnez	$a5, .LBB3_232
# %bb.233:                              # %middle.block722
	beq	$a7, $a2, .LBB3_21
# %bb.234:                              # %vec.epilog.iter.check727
	andi	$a1, $a2, 12
	beqz	$a1, .LBB3_19
.LBB3_235:                              # %vec.epilog.ph726
	move	$a5, $a7
	bstrpick.d	$a1, $a2, 30, 2
	slli.d	$a7, $a1, 2
	sub.d	$a1, $a5, $a7
	alsl.d	$a3, $a5, $t6, 2
	alsl.d	$a4, $a5, $t3, 2
	alsl.d	$a5, $a5, $s0, 2
	.p2align	4, , 16
.LBB3_236:                              # %vec.epilog.vector.body732
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a5, 0
	vld	$vr1, $a4, 0
	vadd.w	$vr0, $vr1, $vr0
	vst	$vr0, $a3, 0
	addi.d	$a1, $a1, 4
	addi.d	$a3, $a3, 16
	addi.d	$a4, $a4, 16
	addi.d	$a5, $a5, 16
	bnez	$a1, .LBB3_236
# %bb.237:                              # %vec.epilog.middle.block737
	bne	$a7, $a2, .LBB3_19
	b	.LBB3_21
.LBB3_238:                              # %vector.ph749
	bstrpick.d	$a1, $a2, 30, 4
	slli.d	$t0, $a1, 4
	addi.d	$a1, $a7, 32
	addi.d	$a3, $t6, 32
	addi.d	$a4, $s4, 32
	move	$a5, $t0
	.p2align	4, , 16
.LBB3_239:                              # %vector.body752
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr0, $a4, -32
	xvld	$xr1, $a4, 0
	xvld	$xr2, $a3, -32
	xvld	$xr3, $a3, 0
	xvadd.w	$xr0, $xr2, $xr0
	xvadd.w	$xr1, $xr3, $xr1
	xvst	$xr0, $a1, -32
	xvst	$xr1, $a1, 0
	addi.d	$a5, $a5, -16
	addi.d	$a1, $a1, 64
	addi.d	$a3, $a3, 64
	addi.d	$a4, $a4, 64
	bnez	$a5, .LBB3_239
# %bb.240:                              # %middle.block759
	beq	$t0, $a2, .LBB3_25
# %bb.241:                              # %vec.epilog.iter.check764
	andi	$a1, $a2, 12
	beqz	$a1, .LBB3_23
.LBB3_242:                              # %vec.epilog.ph763
	move	$a5, $t0
	bstrpick.d	$a1, $a2, 30, 2
	slli.d	$t0, $a1, 2
	sub.d	$a1, $a5, $t0
	alsl.d	$a3, $a5, $a7, 2
	alsl.d	$a4, $a5, $t6, 2
	alsl.d	$a5, $a5, $s4, 2
	.p2align	4, , 16
.LBB3_243:                              # %vec.epilog.vector.body769
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a5, 0
	vld	$vr1, $a4, 0
	vadd.w	$vr0, $vr1, $vr0
	vst	$vr0, $a3, 0
	addi.d	$a1, $a1, 4
	addi.d	$a3, $a3, 16
	addi.d	$a4, $a4, 16
	addi.d	$a5, $a5, 16
	bnez	$a1, .LBB3_243
# %bb.244:                              # %vec.epilog.middle.block774
	bne	$t0, $a2, .LBB3_23
	b	.LBB3_25
.LBB3_245:                              # %vector.ph786
	bstrpick.d	$a1, $a2, 30, 4
	slli.d	$s6, $a1, 4
	addi.d	$a1, $t0, 32
	addi.d	$a3, $t7, 32
	addi.d	$a4, $s5, 32
	move	$a5, $s6
	.p2align	4, , 16
.LBB3_246:                              # %vector.body789
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr0, $a4, -32
	xvld	$xr1, $a4, 0
	xvld	$xr2, $a3, -32
	xvld	$xr3, $a3, 0
	xvadd.w	$xr0, $xr2, $xr0
	xvadd.w	$xr1, $xr3, $xr1
	xvst	$xr0, $a1, -32
	xvst	$xr1, $a1, 0
	addi.d	$a5, $a5, -16
	addi.d	$a1, $a1, 64
	addi.d	$a3, $a3, 64
	addi.d	$a4, $a4, 64
	bnez	$a5, .LBB3_246
# %bb.247:                              # %middle.block796
	beq	$s6, $a2, .LBB3_29
# %bb.248:                              # %vec.epilog.iter.check801
	andi	$a1, $a2, 12
	beqz	$a1, .LBB3_27
.LBB3_249:                              # %vec.epilog.ph800
	move	$a5, $s6
	bstrpick.d	$a1, $a2, 30, 2
	slli.d	$s6, $a1, 2
	sub.d	$a1, $a5, $s6
	alsl.d	$a3, $a5, $t0, 2
	alsl.d	$a4, $a5, $t7, 2
	alsl.d	$a5, $a5, $s5, 2
	.p2align	4, , 16
.LBB3_250:                              # %vec.epilog.vector.body806
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a5, 0
	vld	$vr1, $a4, 0
	vadd.w	$vr0, $vr1, $vr0
	vst	$vr0, $a3, 0
	addi.d	$a1, $a1, 4
	addi.d	$a3, $a3, 16
	addi.d	$a4, $a4, 16
	addi.d	$a5, $a5, 16
	bnez	$a1, .LBB3_250
# %bb.251:                              # %vec.epilog.middle.block811
	bne	$s6, $a2, .LBB3_27
	b	.LBB3_29
.LBB3_252:                              # %vector.ph823
	bstrpick.d	$a1, $a2, 30, 4
	slli.d	$s6, $a1, 4
	addi.d	$a1, $t1, 32
	addi.d	$a3, $s1, 32
	addi.d	$a4, $s8, 32
	move	$a5, $s6
	.p2align	4, , 16
.LBB3_253:                              # %vector.body826
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr0, $a4, -32
	xvld	$xr1, $a4, 0
	xvld	$xr2, $a3, -32
	xvld	$xr3, $a3, 0
	xvadd.w	$xr0, $xr2, $xr0
	xvadd.w	$xr1, $xr3, $xr1
	xvst	$xr0, $a1, -32
	xvst	$xr1, $a1, 0
	addi.d	$a5, $a5, -16
	addi.d	$a1, $a1, 64
	addi.d	$a3, $a3, 64
	addi.d	$a4, $a4, 64
	bnez	$a5, .LBB3_253
# %bb.254:                              # %middle.block833
	beq	$s6, $a2, .LBB3_33
# %bb.255:                              # %vec.epilog.iter.check838
	andi	$a1, $a2, 12
	beqz	$a1, .LBB3_31
.LBB3_256:                              # %vec.epilog.ph837
	move	$a5, $s6
	bstrpick.d	$a1, $a2, 30, 2
	slli.d	$s6, $a1, 2
	sub.d	$a1, $a5, $s6
	alsl.d	$a3, $a5, $t1, 2
	alsl.d	$a4, $a5, $s1, 2
	alsl.d	$a5, $a5, $s8, 2
	.p2align	4, , 16
.LBB3_257:                              # %vec.epilog.vector.body843
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a5, 0
	vld	$vr1, $a4, 0
	vadd.w	$vr0, $vr1, $vr0
	vst	$vr0, $a3, 0
	addi.d	$a1, $a1, 4
	addi.d	$a3, $a3, 16
	addi.d	$a4, $a4, 16
	addi.d	$a5, $a5, 16
	bnez	$a1, .LBB3_257
# %bb.258:                              # %vec.epilog.middle.block848
	bne	$s6, $a2, .LBB3_31
	b	.LBB3_33
.LBB3_259:                              # %vector.ph860
	bstrpick.d	$a1, $a2, 30, 4
	slli.d	$a6, $a1, 4
	addi.d	$a3, $ra, 32
	addi.d	$a4, $s2, 32
	addi.d	$a5, $t8, 32
	move	$a1, $a6
	.p2align	4, , 16
.LBB3_260:                              # %vector.body863
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr0, $a5, -32
	xvld	$xr1, $a5, 0
	xvld	$xr2, $a4, -32
	xvld	$xr3, $a4, 0
	xvadd.w	$xr0, $xr2, $xr0
	xvadd.w	$xr1, $xr3, $xr1
	xvst	$xr0, $a3, -32
	xvst	$xr1, $a3, 0
	addi.d	$a1, $a1, -16
	addi.d	$a3, $a3, 64
	addi.d	$a4, $a4, 64
	addi.d	$a5, $a5, 64
	bnez	$a1, .LBB3_260
# %bb.261:                              # %middle.block870
	beq	$a6, $a2, .LBB3_37
# %bb.262:                              # %vec.epilog.iter.check875
	andi	$a1, $a2, 12
	beqz	$a1, .LBB3_35
.LBB3_263:                              # %vec.epilog.ph874
	move	$a1, $a6
	bstrpick.d	$a3, $a2, 30, 2
	slli.d	$a6, $a3, 2
	sub.d	$a3, $a1, $a6
	alsl.d	$a4, $a1, $ra, 2
	alsl.d	$a5, $a1, $s2, 2
	alsl.d	$a1, $a1, $t8, 2
	.p2align	4, , 16
.LBB3_264:                              # %vec.epilog.vector.body880
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a1, 0
	vld	$vr1, $a5, 0
	vadd.w	$vr0, $vr1, $vr0
	vst	$vr0, $a4, 0
	addi.d	$a3, $a3, 4
	addi.d	$a4, $a4, 16
	addi.d	$a5, $a5, 16
	addi.d	$a1, $a1, 16
	bnez	$a3, .LBB3_264
# %bb.265:                              # %vec.epilog.middle.block885
	bne	$a6, $a2, .LBB3_35
	b	.LBB3_37
.LBB3_266:                              # %vector.ph897
	bstrpick.d	$a1, $a2, 30, 4
	slli.d	$a1, $a1, 4
	addi.d	$a3, $t8, 32
	addi.d	$a4, $s7, 32
	addi.d	$a5, $s3, 32
	move	$a6, $a1
	.p2align	4, , 16
.LBB3_267:                              # %vector.body900
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr0, $a5, -32
	xvld	$xr1, $a5, 0
	xvld	$xr2, $a4, -32
	xvld	$xr3, $a4, 0
	xvadd.w	$xr0, $xr2, $xr0
	xvadd.w	$xr1, $xr3, $xr1
	xvst	$xr0, $a3, -32
	xvst	$xr1, $a3, 0
	addi.d	$a6, $a6, -16
	addi.d	$a3, $a3, 64
	addi.d	$a4, $a4, 64
	addi.d	$a5, $a5, 64
	bnez	$a6, .LBB3_267
# %bb.268:                              # %middle.block907
	beq	$a1, $a2, .LBB3_41
# %bb.269:                              # %vec.epilog.iter.check912
	andi	$a3, $a2, 12
	beqz	$a3, .LBB3_39
.LBB3_270:                              # %vec.epilog.ph911
	move	$a6, $a1
	bstrpick.d	$a1, $a2, 30, 2
	slli.d	$a1, $a1, 2
	sub.d	$a3, $a6, $a1
	alsl.d	$a4, $a6, $t8, 2
	alsl.d	$a5, $a6, $s7, 2
	alsl.d	$a6, $a6, $s3, 2
	.p2align	4, , 16
.LBB3_271:                              # %vec.epilog.vector.body917
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a6, 0
	vld	$vr1, $a5, 0
	vadd.w	$vr0, $vr1, $vr0
	vst	$vr0, $a4, 0
	addi.d	$a3, $a3, 4
	addi.d	$a4, $a4, 16
	addi.d	$a5, $a5, 16
	addi.d	$a6, $a6, 16
	bnez	$a3, .LBB3_271
# %bb.272:                              # %vec.epilog.middle.block922
	bne	$a1, $a2, .LBB3_39
	b	.LBB3_41
.LBB3_273:                              # %vector.ph934
	bstrpick.d	$a1, $a2, 30, 4
	slli.d	$a1, $a1, 4
	addi.d	$a3, $t8, 32
	addi.d	$a4, $t4, 32
	addi.d	$a5, $t2, 32
	move	$a6, $a1
	.p2align	4, , 16
.LBB3_274:                              # %vector.body937
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr0, $a5, -32
	xvld	$xr1, $a5, 0
	xvld	$xr2, $a4, -32
	xvld	$xr3, $a4, 0
	xvadd.w	$xr0, $xr2, $xr0
	xvadd.w	$xr1, $xr3, $xr1
	xvst	$xr0, $a3, -32
	xvst	$xr1, $a3, 0
	addi.d	$a6, $a6, -16
	addi.d	$a3, $a3, 64
	addi.d	$a4, $a4, 64
	addi.d	$a5, $a5, 64
	bnez	$a6, .LBB3_274
# %bb.275:                              # %middle.block944
	beq	$a1, $a2, .LBB3_45
# %bb.276:                              # %vec.epilog.iter.check949
	andi	$a3, $a2, 12
	beqz	$a3, .LBB3_43
.LBB3_277:                              # %vec.epilog.ph948
	move	$a6, $a1
	bstrpick.d	$a1, $a2, 30, 2
	slli.d	$a1, $a1, 2
	sub.d	$a3, $a6, $a1
	alsl.d	$a4, $a6, $t8, 2
	alsl.d	$a5, $a6, $t4, 2
	alsl.d	$a6, $a6, $t2, 2
	.p2align	4, , 16
.LBB3_278:                              # %vec.epilog.vector.body954
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a6, 0
	vld	$vr1, $a5, 0
	vadd.w	$vr0, $vr1, $vr0
	vst	$vr0, $a4, 0
	addi.d	$a3, $a3, 4
	addi.d	$a4, $a4, 16
	addi.d	$a5, $a5, 16
	addi.d	$a6, $a6, 16
	bnez	$a3, .LBB3_278
# %bb.279:                              # %vec.epilog.middle.block959
	bne	$a1, $a2, .LBB3_43
	b	.LBB3_45
.LBB3_280:                              # %vector.ph971
	bstrpick.d	$a1, $a2, 30, 4
	slli.d	$a1, $a1, 4
	addi.d	$a3, $t2, 32
	addi.d	$a4, $fp, 32
	addi.d	$a5, $t5, 32
	move	$a6, $a1
	.p2align	4, , 16
.LBB3_281:                              # %vector.body974
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr0, $a5, -32
	xvld	$xr1, $a5, 0
	xvld	$xr2, $a4, -32
	xvld	$xr3, $a4, 0
	xvadd.w	$xr0, $xr2, $xr0
	xvadd.w	$xr1, $xr3, $xr1
	xvst	$xr0, $a3, -32
	xvst	$xr1, $a3, 0
	addi.d	$a6, $a6, -16
	addi.d	$a3, $a3, 64
	addi.d	$a4, $a4, 64
	addi.d	$a5, $a5, 64
	bnez	$a6, .LBB3_281
# %bb.282:                              # %middle.block981
	beq	$a1, $a2, .LBB3_49
# %bb.283:                              # %vec.epilog.iter.check986
	andi	$a3, $a2, 12
	beqz	$a3, .LBB3_47
.LBB3_284:                              # %vec.epilog.ph985
	move	$a6, $a1
	bstrpick.d	$a1, $a2, 30, 2
	slli.d	$a1, $a1, 2
	sub.d	$a3, $a6, $a1
	alsl.d	$a4, $a6, $t2, 2
	alsl.d	$a5, $a6, $fp, 2
	alsl.d	$a6, $a6, $t5, 2
	.p2align	4, , 16
.LBB3_285:                              # %vec.epilog.vector.body991
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a6, 0
	vld	$vr1, $a5, 0
	vadd.w	$vr0, $vr1, $vr0
	vst	$vr0, $a4, 0
	addi.d	$a3, $a3, 4
	addi.d	$a4, $a4, 16
	addi.d	$a5, $a5, 16
	addi.d	$a6, $a6, 16
	bnez	$a3, .LBB3_285
# %bb.286:                              # %vec.epilog.middle.block996
	bne	$a1, $a2, .LBB3_47
	b	.LBB3_49
.LBB3_287:                              # %vector.ph1008
	bstrpick.d	$a1, $a2, 30, 4
	slli.d	$a1, $a1, 4
	addi.d	$a3, $t2, 32
	addi.d	$a4, $s4, 32
	addi.d	$a5, $s0, 32
	move	$a6, $a1
	.p2align	4, , 16
.LBB3_288:                              # %vector.body1011
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr0, $a5, -32
	xvld	$xr1, $a5, 0
	xvld	$xr2, $a4, -32
	xvld	$xr3, $a4, 0
	xvadd.w	$xr0, $xr2, $xr0
	xvadd.w	$xr1, $xr3, $xr1
	xvst	$xr0, $a3, -32
	xvst	$xr1, $a3, 0
	addi.d	$a6, $a6, -16
	addi.d	$a3, $a3, 64
	addi.d	$a4, $a4, 64
	addi.d	$a5, $a5, 64
	bnez	$a6, .LBB3_288
# %bb.289:                              # %middle.block1018
	beq	$a1, $a2, .LBB3_53
# %bb.290:                              # %vec.epilog.iter.check1023
	andi	$a3, $a2, 12
	beqz	$a3, .LBB3_51
.LBB3_291:                              # %vec.epilog.ph1022
	move	$a6, $a1
	bstrpick.d	$a1, $a2, 30, 2
	slli.d	$a1, $a1, 2
	sub.d	$a3, $a6, $a1
	alsl.d	$a4, $a6, $t2, 2
	alsl.d	$a5, $a6, $s4, 2
	alsl.d	$a6, $a6, $s0, 2
	.p2align	4, , 16
.LBB3_292:                              # %vec.epilog.vector.body1028
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a6, 0
	vld	$vr1, $a5, 0
	vadd.w	$vr0, $vr1, $vr0
	vst	$vr0, $a4, 0
	addi.d	$a3, $a3, 4
	addi.d	$a4, $a4, 16
	addi.d	$a5, $a5, 16
	addi.d	$a6, $a6, 16
	bnez	$a3, .LBB3_292
# %bb.293:                              # %vec.epilog.middle.block1033
	bne	$a1, $a2, .LBB3_51
	b	.LBB3_53
.LBB3_294:                              # %vector.ph1045
	bstrpick.d	$a1, $a2, 30, 4
	slli.d	$a1, $a1, 4
	addi.d	$a3, $t2, 32
	addi.d	$a4, $s8, 32
	addi.d	$a5, $s5, 32
	move	$a6, $a1
	.p2align	4, , 16
.LBB3_295:                              # %vector.body1048
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr0, $a5, -32
	xvld	$xr1, $a5, 0
	xvld	$xr2, $a4, -32
	xvld	$xr3, $a4, 0
	xvadd.w	$xr0, $xr2, $xr0
	xvadd.w	$xr1, $xr3, $xr1
	xvst	$xr0, $a3, -32
	xvst	$xr1, $a3, 0
	addi.d	$a6, $a6, -16
	addi.d	$a3, $a3, 64
	addi.d	$a4, $a4, 64
	addi.d	$a5, $a5, 64
	bnez	$a6, .LBB3_295
# %bb.296:                              # %middle.block1055
	beq	$a1, $a2, .LBB3_57
# %bb.297:                              # %vec.epilog.iter.check1060
	andi	$a3, $a2, 12
	beqz	$a3, .LBB3_55
.LBB3_298:                              # %vec.epilog.ph1059
	move	$a6, $a1
	bstrpick.d	$a1, $a2, 30, 2
	slli.d	$a1, $a1, 2
	sub.d	$a3, $a6, $a1
	alsl.d	$a4, $a6, $t2, 2
	alsl.d	$a5, $a6, $s8, 2
	alsl.d	$a6, $a6, $s5, 2
	.p2align	4, , 16
.LBB3_299:                              # %vec.epilog.vector.body1065
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a6, 0
	vld	$vr1, $a5, 0
	vadd.w	$vr0, $vr1, $vr0
	vst	$vr0, $a4, 0
	addi.d	$a3, $a3, 4
	addi.d	$a4, $a4, 16
	addi.d	$a5, $a5, 16
	addi.d	$a6, $a6, 16
	bnez	$a3, .LBB3_299
# %bb.300:                              # %vec.epilog.middle.block1070
	bne	$a1, $a2, .LBB3_55
	b	.LBB3_57
.LBB3_301:                              # %vector.ph1082
	bstrpick.d	$a1, $a2, 30, 4
	slli.d	$a1, $a1, 4
	addi.d	$a3, $t2, 32
	addi.d	$a4, $t6, 32
	addi.d	$a5, $t3, 32
	move	$a6, $a1
	.p2align	4, , 16
.LBB3_302:                              # %vector.body1085
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr0, $a5, -32
	xvld	$xr1, $a5, 0
	xvld	$xr2, $a4, -32
	xvld	$xr3, $a4, 0
	xvadd.w	$xr0, $xr2, $xr0
	xvadd.w	$xr1, $xr3, $xr1
	xvst	$xr0, $a3, -32
	xvst	$xr1, $a3, 0
	addi.d	$a6, $a6, -16
	addi.d	$a3, $a3, 64
	addi.d	$a4, $a4, 64
	addi.d	$a5, $a5, 64
	bnez	$a6, .LBB3_302
# %bb.303:                              # %middle.block1092
	beq	$a1, $a2, .LBB3_61
# %bb.304:                              # %vec.epilog.iter.check1097
	andi	$a3, $a2, 12
	beqz	$a3, .LBB3_59
.LBB3_305:                              # %vec.epilog.ph1096
	move	$a6, $a1
	bstrpick.d	$a1, $a2, 30, 2
	slli.d	$a1, $a1, 2
	sub.d	$a3, $a6, $a1
	alsl.d	$a4, $a6, $t2, 2
	alsl.d	$a5, $a6, $t6, 2
	alsl.d	$a6, $a6, $t3, 2
	.p2align	4, , 16
.LBB3_306:                              # %vec.epilog.vector.body1102
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a6, 0
	vld	$vr1, $a5, 0
	vadd.w	$vr0, $vr1, $vr0
	vst	$vr0, $a4, 0
	addi.d	$a3, $a3, 4
	addi.d	$a4, $a4, 16
	addi.d	$a5, $a5, 16
	addi.d	$a6, $a6, 16
	bnez	$a3, .LBB3_306
# %bb.307:                              # %vec.epilog.middle.block1107
	bne	$a1, $a2, .LBB3_59
	b	.LBB3_61
.LBB3_308:                              # %vector.ph1119
	bstrpick.d	$a1, $a2, 30, 4
	slli.d	$a1, $a1, 4
	addi.d	$a3, $t2, 32
	addi.d	$a4, $s1, 32
	addi.d	$a5, $t7, 32
	move	$a6, $a1
	.p2align	4, , 16
.LBB3_309:                              # %vector.body1122
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr0, $a5, -32
	xvld	$xr1, $a5, 0
	xvld	$xr2, $a4, -32
	xvld	$xr3, $a4, 0
	xvadd.w	$xr0, $xr2, $xr0
	xvadd.w	$xr1, $xr3, $xr1
	xvst	$xr0, $a3, -32
	xvst	$xr1, $a3, 0
	addi.d	$a6, $a6, -16
	addi.d	$a3, $a3, 64
	addi.d	$a4, $a4, 64
	addi.d	$a5, $a5, 64
	bnez	$a6, .LBB3_309
# %bb.310:                              # %middle.block1129
	beq	$a1, $a2, .LBB3_65
# %bb.311:                              # %vec.epilog.iter.check1134
	andi	$a3, $a2, 12
	beqz	$a3, .LBB3_63
.LBB3_312:                              # %vec.epilog.ph1133
	move	$a6, $a1
	bstrpick.d	$a1, $a2, 30, 2
	slli.d	$a1, $a1, 2
	sub.d	$a3, $a6, $a1
	alsl.d	$a4, $a6, $t2, 2
	alsl.d	$a5, $a6, $s1, 2
	alsl.d	$a6, $a6, $t7, 2
	.p2align	4, , 16
.LBB3_313:                              # %vec.epilog.vector.body1139
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a6, 0
	vld	$vr1, $a5, 0
	vadd.w	$vr0, $vr1, $vr0
	vst	$vr0, $a4, 0
	addi.d	$a3, $a3, 4
	addi.d	$a4, $a4, 16
	addi.d	$a5, $a5, 16
	addi.d	$a6, $a6, 16
	bnez	$a3, .LBB3_313
# %bb.314:                              # %vec.epilog.middle.block1144
	bne	$a1, $a2, .LBB3_63
	b	.LBB3_65
.LBB3_315:                              # %vector.ph1156
	bstrpick.d	$a1, $a2, 30, 4
	slli.d	$a1, $a1, 4
	addi.d	$a3, $t2, 32
	addi.d	$a4, $t5, 32
	addi.d	$a5, $t4, 32
	move	$a6, $a1
	.p2align	4, , 16
.LBB3_316:                              # %vector.body1159
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr0, $a5, -32
	xvld	$xr1, $a5, 0
	xvld	$xr2, $a4, -32
	xvld	$xr3, $a4, 0
	xvadd.w	$xr0, $xr2, $xr0
	xvadd.w	$xr1, $xr3, $xr1
	xvst	$xr0, $a3, -32
	xvst	$xr1, $a3, 0
	addi.d	$a6, $a6, -16
	addi.d	$a3, $a3, 64
	addi.d	$a4, $a4, 64
	addi.d	$a5, $a5, 64
	bnez	$a6, .LBB3_316
# %bb.317:                              # %middle.block1166
	beq	$a1, $a2, .LBB3_69
# %bb.318:                              # %vec.epilog.iter.check1171
	andi	$a3, $a2, 12
	beqz	$a3, .LBB3_67
.LBB3_319:                              # %vec.epilog.ph1170
	move	$a6, $a1
	bstrpick.d	$a1, $a2, 30, 2
	slli.d	$a1, $a1, 2
	sub.d	$a3, $a6, $a1
	alsl.d	$a4, $a6, $t2, 2
	alsl.d	$a5, $a6, $t5, 2
	alsl.d	$a6, $a6, $t4, 2
	.p2align	4, , 16
.LBB3_320:                              # %vec.epilog.vector.body1176
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a6, 0
	vld	$vr1, $a5, 0
	vadd.w	$vr0, $vr1, $vr0
	vst	$vr0, $a4, 0
	addi.d	$a3, $a3, 4
	addi.d	$a4, $a4, 16
	addi.d	$a5, $a5, 16
	addi.d	$a6, $a6, 16
	bnez	$a3, .LBB3_320
# %bb.321:                              # %vec.epilog.middle.block1181
	bne	$a1, $a2, .LBB3_67
	b	.LBB3_69
.LBB3_322:                              # %vector.ph1193
	bstrpick.d	$a1, $a2, 30, 4
	slli.d	$a1, $a1, 4
	addi.d	$t4, $a3, 32
	addi.d	$a4, $t7, 32
	addi.d	$a5, $t6, 32
	move	$a6, $a1
	.p2align	4, , 16
.LBB3_323:                              # %vector.body1196
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr0, $a5, -32
	xvld	$xr1, $a5, 0
	xvld	$xr2, $a4, -32
	xvld	$xr3, $a4, 0
	xvadd.w	$xr0, $xr2, $xr0
	xvadd.w	$xr1, $xr3, $xr1
	xvst	$xr0, $t4, -32
	xvst	$xr1, $t4, 0
	addi.d	$a6, $a6, -16
	addi.d	$t4, $t4, 64
	addi.d	$a4, $a4, 64
	addi.d	$a5, $a5, 64
	bnez	$a6, .LBB3_323
# %bb.324:                              # %middle.block1203
	beq	$a1, $a2, .LBB3_73
# %bb.325:                              # %vec.epilog.iter.check1208
	andi	$a4, $a2, 12
	beqz	$a4, .LBB3_71
.LBB3_326:                              # %vec.epilog.ph1207
	move	$a6, $a1
	bstrpick.d	$a1, $a2, 30, 2
	slli.d	$a1, $a1, 2
	sub.d	$a4, $a6, $a1
	alsl.d	$a5, $a6, $a3, 2
	alsl.d	$t4, $a6, $t7, 2
	alsl.d	$a6, $a6, $t6, 2
	.p2align	4, , 16
.LBB3_327:                              # %vec.epilog.vector.body1213
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a6, 0
	vld	$vr1, $t4, 0
	vadd.w	$vr0, $vr1, $vr0
	vst	$vr0, $a5, 0
	addi.d	$a4, $a4, 4
	addi.d	$a5, $a5, 16
	addi.d	$t4, $t4, 16
	addi.d	$a6, $a6, 16
	bnez	$a4, .LBB3_327
# %bb.328:                              # %vec.epilog.middle.block1218
	bne	$a1, $a2, .LBB3_71
	b	.LBB3_73
.LBB3_329:                              # %vector.ph1230
	bstrpick.d	$a4, $a2, 30, 4
	slli.d	$a4, $a4, 4
	addi.d	$a5, $a1, 32
	addi.d	$t4, $a7, 32
	addi.d	$t5, $t6, 32
	move	$a6, $a4
	.p2align	4, , 16
.LBB3_330:                              # %vector.body1233
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr0, $t5, -32
	xvld	$xr1, $t5, 0
	xvld	$xr2, $t4, -32
	xvld	$xr3, $t4, 0
	xvadd.w	$xr0, $xr2, $xr0
	xvadd.w	$xr1, $xr3, $xr1
	xvst	$xr0, $a5, -32
	xvst	$xr1, $a5, 0
	addi.d	$a6, $a6, -16
	addi.d	$a5, $a5, 64
	addi.d	$t4, $t4, 64
	addi.d	$t5, $t5, 64
	bnez	$a6, .LBB3_330
# %bb.331:                              # %middle.block1240
	beq	$a4, $a2, .LBB3_77
# %bb.332:                              # %vec.epilog.iter.check1245
	andi	$a5, $a2, 12
	beqz	$a5, .LBB3_75
.LBB3_333:                              # %vec.epilog.ph1244
	move	$a6, $a4
	bstrpick.d	$a4, $a2, 30, 2
	slli.d	$a4, $a4, 2
	sub.d	$a5, $a6, $a4
	alsl.d	$t4, $a6, $a1, 2
	alsl.d	$t5, $a6, $a7, 2
	alsl.d	$a6, $a6, $t6, 2
	.p2align	4, , 16
.LBB3_334:                              # %vec.epilog.vector.body1250
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a6, 0
	vld	$vr1, $t5, 0
	vadd.w	$vr0, $vr1, $vr0
	vst	$vr0, $t4, 0
	addi.d	$a5, $a5, 4
	addi.d	$t4, $t4, 16
	addi.d	$t5, $t5, 16
	addi.d	$a6, $a6, 16
	bnez	$a5, .LBB3_334
# %bb.335:                              # %vec.epilog.middle.block1255
	bne	$a4, $a2, .LBB3_75
	b	.LBB3_77
.LBB3_336:                              # %vector.ph1267
	bstrpick.d	$a4, $a2, 30, 4
	slli.d	$a4, $a4, 4
	addi.d	$a6, $a5, 32
	addi.d	$a7, $t1, 32
	addi.d	$t3, $t0, 32
	move	$t4, $a4
	.p2align	4, , 16
.LBB3_337:                              # %vector.body1270
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr0, $t3, -32
	xvld	$xr1, $t3, 0
	xvld	$xr2, $a7, -32
	xvld	$xr3, $a7, 0
	xvadd.w	$xr0, $xr2, $xr0
	xvadd.w	$xr1, $xr3, $xr1
	xvst	$xr0, $a6, -32
	xvst	$xr1, $a6, 0
	addi.d	$t4, $t4, -16
	addi.d	$a6, $a6, 64
	addi.d	$a7, $a7, 64
	addi.d	$t3, $t3, 64
	bnez	$t4, .LBB3_337
# %bb.338:                              # %middle.block1277
	beq	$a4, $a2, .LBB3_81
# %bb.339:                              # %vec.epilog.iter.check1282
	andi	$a6, $a2, 12
	beqz	$a6, .LBB3_79
.LBB3_340:                              # %vec.epilog.ph1281
	move	$t4, $a4
	bstrpick.d	$a4, $a2, 30, 2
	slli.d	$a4, $a4, 2
	sub.d	$a6, $t4, $a4
	alsl.d	$a7, $t4, $a5, 2
	alsl.d	$t3, $t4, $t1, 2
	alsl.d	$t4, $t4, $t0, 2
	.p2align	4, , 16
.LBB3_341:                              # %vec.epilog.vector.body1287
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $t4, 0
	vld	$vr1, $t3, 0
	vadd.w	$vr0, $vr1, $vr0
	vst	$vr0, $a7, 0
	addi.d	$a6, $a6, 4
	addi.d	$a7, $a7, 16
	addi.d	$t3, $t3, 16
	addi.d	$t4, $t4, 16
	bnez	$a6, .LBB3_341
# %bb.342:                              # %vec.epilog.middle.block1292
	bne	$a4, $a2, .LBB3_79
	b	.LBB3_81
.LBB3_343:                              # %vector.ph1304
	bstrpick.d	$a7, $a2, 30, 4
	slli.d	$a7, $a7, 4
	addi.d	$t0, $a4, 32
	addi.d	$t1, $a1, 32
	addi.d	$t3, $t2, 32
	move	$t4, $a7
	.p2align	4, , 16
.LBB3_344:                              # %vector.body1307
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr0, $t3, -32
	xvld	$xr1, $t3, 0
	xvld	$xr2, $t1, -32
	xvld	$xr3, $t1, 0
	xvadd.w	$xr0, $xr2, $xr0
	xvadd.w	$xr1, $xr3, $xr1
	xvst	$xr0, $t0, -32
	xvst	$xr1, $t0, 0
	addi.d	$t4, $t4, -16
	addi.d	$t0, $t0, 64
	addi.d	$t1, $t1, 64
	addi.d	$t3, $t3, 64
	bnez	$t4, .LBB3_344
# %bb.345:                              # %middle.block1314
	beq	$a7, $a2, .LBB3_85
# %bb.346:                              # %vec.epilog.iter.check1319
	andi	$t0, $a2, 12
	beqz	$t0, .LBB3_83
.LBB3_347:                              # %vec.epilog.ph1318
	move	$t4, $a7
	bstrpick.d	$a7, $a2, 30, 2
	slli.d	$a7, $a7, 2
	sub.d	$t0, $t4, $a7
	alsl.d	$t1, $t4, $a4, 2
	alsl.d	$t3, $t4, $a1, 2
	alsl.d	$t4, $t4, $t2, 2
	.p2align	4, , 16
.LBB3_348:                              # %vec.epilog.vector.body1324
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $t4, 0
	vld	$vr1, $t3, 0
	vadd.w	$vr0, $vr1, $vr0
	vst	$vr0, $t1, 0
	addi.d	$t0, $t0, 4
	addi.d	$t1, $t1, 16
	addi.d	$t3, $t3, 16
	addi.d	$t4, $t4, 16
	bnez	$t0, .LBB3_348
# %bb.349:                              # %vec.epilog.middle.block1329
	bne	$a7, $a2, .LBB3_83
	b	.LBB3_85
.LBB3_350:                              # %vector.ph1341
	bstrpick.d	$a7, $a2, 30, 4
	slli.d	$a7, $a7, 4
	addi.d	$t0, $a6, 32
	addi.d	$t1, $a5, 32
	addi.d	$t3, $a3, 32
	move	$t4, $a7
	.p2align	4, , 16
.LBB3_351:                              # %vector.body1344
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr0, $t3, -32
	xvld	$xr1, $t3, 0
	xvld	$xr2, $t1, -32
	xvld	$xr3, $t1, 0
	xvadd.w	$xr0, $xr2, $xr0
	xvadd.w	$xr1, $xr3, $xr1
	xvst	$xr0, $t0, -32
	xvst	$xr1, $t0, 0
	addi.d	$t4, $t4, -16
	addi.d	$t0, $t0, 64
	addi.d	$t1, $t1, 64
	addi.d	$t3, $t3, 64
	bnez	$t4, .LBB3_351
# %bb.352:                              # %middle.block1351
	beq	$a7, $a2, .LBB3_89
# %bb.353:                              # %vec.epilog.iter.check1356
	andi	$t0, $a2, 12
	beqz	$t0, .LBB3_87
.LBB3_354:                              # %vec.epilog.ph1355
	move	$t4, $a7
	bstrpick.d	$a7, $a2, 30, 2
	slli.d	$a7, $a7, 2
	sub.d	$t0, $t4, $a7
	alsl.d	$t1, $t4, $a6, 2
	alsl.d	$t3, $t4, $a5, 2
	alsl.d	$t4, $t4, $a3, 2
	.p2align	4, , 16
.LBB3_355:                              # %vec.epilog.vector.body1361
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $t4, 0
	vld	$vr1, $t3, 0
	vadd.w	$vr0, $vr1, $vr0
	vst	$vr0, $t1, 0
	addi.d	$t0, $t0, 4
	addi.d	$t1, $t1, 16
	addi.d	$t3, $t3, 16
	addi.d	$t4, $t4, 16
	bnez	$t0, .LBB3_355
# %bb.356:                              # %vec.epilog.middle.block1366
	bne	$a7, $a2, .LBB3_87
	b	.LBB3_89
.LBB3_357:                              # %vector.ph1378
	bstrpick.d	$t1, $a2, 30, 4
	slli.d	$t1, $t1, 4
	addi.d	$t3, $t0, 32
	addi.d	$t4, $a3, 32
	addi.d	$t5, $t2, 32
	move	$t6, $t1
	.p2align	4, , 16
.LBB3_358:                              # %vector.body1381
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr0, $t5, -32
	xvld	$xr1, $t5, 0
	xvld	$xr2, $t4, -32
	xvld	$xr3, $t4, 0
	xvadd.w	$xr0, $xr2, $xr0
	xvadd.w	$xr1, $xr3, $xr1
	xvst	$xr0, $t3, -32
	xvst	$xr1, $t3, 0
	addi.d	$t6, $t6, -16
	addi.d	$t3, $t3, 64
	addi.d	$t4, $t4, 64
	addi.d	$t5, $t5, 64
	bnez	$t6, .LBB3_358
# %bb.359:                              # %middle.block1388
	beq	$t1, $a2, .LBB3_93
# %bb.360:                              # %vec.epilog.iter.check1393
	andi	$t3, $a2, 12
	beqz	$t3, .LBB3_91
.LBB3_361:                              # %vec.epilog.ph1392
	move	$t6, $t1
	bstrpick.d	$t1, $a2, 30, 2
	slli.d	$t1, $t1, 2
	sub.d	$t3, $t6, $t1
	alsl.d	$t4, $t6, $t0, 2
	alsl.d	$t5, $t6, $a3, 2
	alsl.d	$t6, $t6, $t2, 2
	.p2align	4, , 16
.LBB3_362:                              # %vec.epilog.vector.body1398
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $t6, 0
	vld	$vr1, $t5, 0
	vadd.w	$vr0, $vr1, $vr0
	vst	$vr0, $t4, 0
	addi.d	$t3, $t3, 4
	addi.d	$t4, $t4, 16
	addi.d	$t5, $t5, 16
	addi.d	$t6, $t6, 16
	bnez	$t3, .LBB3_362
# %bb.363:                              # %vec.epilog.middle.block1403
	bne	$t1, $a2, .LBB3_91
	b	.LBB3_93
.LBB3_364:                              # %vector.ph1415
	bstrpick.d	$a7, $a2, 30, 4
	slli.d	$a7, $a7, 4
	addi.d	$t0, $a3, 32
	addi.d	$t1, $a5, 32
	addi.d	$t2, $a1, 32
	move	$t3, $a7
	.p2align	4, , 16
.LBB3_365:                              # %vector.body1418
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr0, $t2, -32
	xvld	$xr1, $t2, 0
	xvld	$xr2, $t1, -32
	xvld	$xr3, $t1, 0
	xvadd.w	$xr0, $xr2, $xr0
	xvadd.w	$xr1, $xr3, $xr1
	xvst	$xr0, $t0, -32
	xvst	$xr1, $t0, 0
	addi.d	$t3, $t3, -16
	addi.d	$t0, $t0, 64
	addi.d	$t1, $t1, 64
	addi.d	$t2, $t2, 64
	bnez	$t3, .LBB3_365
# %bb.366:                              # %middle.block1425
	beq	$a7, $a2, .LBB3_97
# %bb.367:                              # %vec.epilog.iter.check1430
	andi	$t0, $a2, 12
	beqz	$t0, .LBB3_95
.LBB3_368:                              # %vec.epilog.ph1429
	move	$t3, $a7
	bstrpick.d	$a7, $a2, 30, 2
	slli.d	$a7, $a7, 2
	sub.d	$t0, $t3, $a7
	alsl.d	$t1, $t3, $a3, 2
	alsl.d	$t2, $t3, $a5, 2
	alsl.d	$t3, $t3, $a1, 2
	.p2align	4, , 16
.LBB3_369:                              # %vec.epilog.vector.body1435
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $t3, 0
	vld	$vr1, $t2, 0
	vadd.w	$vr0, $vr1, $vr0
	vst	$vr0, $t1, 0
	addi.d	$t0, $t0, 4
	addi.d	$t1, $t1, 16
	addi.d	$t2, $t2, 16
	addi.d	$t3, $t3, 16
	bnez	$t0, .LBB3_369
# %bb.370:                              # %vec.epilog.middle.block1440
	bne	$a7, $a2, .LBB3_95
	b	.LBB3_97
.LBB3_371:                              # %vector.ph1452
	bstrpick.d	$a1, $a2, 30, 4
	slli.d	$a1, $a1, 4
	addi.d	$a3, $a0, 32
	addi.d	$a5, $a6, 32
	addi.d	$a7, $a4, 32
	move	$t0, $a1
	.p2align	4, , 16
.LBB3_372:                              # %vector.body1455
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr0, $a7, -32
	xvld	$xr1, $a7, 0
	xvld	$xr2, $a5, -32
	xvld	$xr3, $a5, 0
	xvadd.w	$xr0, $xr2, $xr0
	xvadd.w	$xr1, $xr3, $xr1
	xvst	$xr0, $a3, -32
	xvst	$xr1, $a3, 0
	addi.d	$t0, $t0, -16
	addi.d	$a3, $a3, 64
	addi.d	$a5, $a5, 64
	addi.d	$a7, $a7, 64
	bnez	$t0, .LBB3_372
# %bb.373:                              # %middle.block1462
	beq	$a1, $a2, .LBB3_101
# %bb.374:                              # %vec.epilog.iter.check1467
	andi	$a3, $a2, 12
	beqz	$a3, .LBB3_99
.LBB3_375:                              # %vec.epilog.ph1466
	move	$t0, $a1
	bstrpick.d	$a1, $a2, 30, 2
	slli.d	$a1, $a1, 2
	sub.d	$a3, $t0, $a1
	alsl.d	$a5, $t0, $a0, 2
	alsl.d	$a7, $t0, $a6, 2
	alsl.d	$t0, $t0, $a4, 2
	.p2align	4, , 16
.LBB3_376:                              # %vec.epilog.vector.body1472
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $t0, 0
	vld	$vr1, $a7, 0
	vadd.w	$vr0, $vr1, $vr0
	vst	$vr0, $a5, 0
	addi.d	$a3, $a3, 4
	addi.d	$a5, $a5, 16
	addi.d	$a7, $a7, 16
	addi.d	$t0, $t0, 16
	bnez	$a3, .LBB3_376
# %bb.377:                              # %vec.epilog.middle.block1477
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
	addi.d	$sp, $sp, -544
	st.d	$ra, $sp, 536                   # 8-byte Folded Spill
	st.d	$fp, $sp, 528                   # 8-byte Folded Spill
	st.d	$s0, $sp, 520                   # 8-byte Folded Spill
	st.d	$s1, $sp, 512                   # 8-byte Folded Spill
	st.d	$s2, $sp, 504                   # 8-byte Folded Spill
	st.d	$s3, $sp, 496                   # 8-byte Folded Spill
	st.d	$s4, $sp, 488                   # 8-byte Folded Spill
	st.d	$s5, $sp, 480                   # 8-byte Folded Spill
	st.d	$s6, $sp, 472                   # 8-byte Folded Spill
	st.d	$s7, $sp, 464                   # 8-byte Folded Spill
	st.d	$s8, $sp, 456                   # 8-byte Folded Spill
	pcalau12i	$a2, %pc_hi20(BlockSAD)
	ld.d	$a2, $a2, %pc_lo12(BlockSAD)
	pcalau12i	$a3, %got_pc_hi20(img)
	ld.d	$a4, $a3, %got_pc_lo12(img)
	st.d	$a4, $sp, 200                   # 8-byte Folded Spill
	st.d	$a1, $sp, 48                    # 8-byte Folded Spill
	slli.d	$a5, $a1, 3
	ldx.d	$a2, $a2, $a5
	pcalau12i	$a3, %pc_hi20(max_search_range)
	ld.d	$a1, $a4, 0
	ld.d	$a3, $a3, %pc_lo12(max_search_range)
	slli.d	$t2, $a0, 3
	ldx.d	$a4, $a2, $t2
	ld.w	$a2, $a1, 12
	st.d	$a5, $sp, 40                    # 8-byte Folded Spill
	ldx.d	$a3, $a3, $a5
	ldptr.d	$a5, $a1, 14224
	ori	$a6, $zero, 536
	mul.d	$a6, $a2, $a6
	pcalau12i	$a2, %pc_hi20(active_pps)
	ld.d	$a2, $a2, %pc_lo12(active_pps)
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	slli.d	$a0, $a0, 2
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	ldx.w	$s1, $a3, $a0
	add.d	$a3, $a5, $a6
	ld.w	$a5, $a2, 192
	ld.w	$a3, $a3, 432
	beqz	$a5, .LBB4_3
# %bb.1:
	ld.w	$a5, $a1, 20
	beqz	$a5, .LBB4_5
# %bb.2:
	ori	$a6, $zero, 3
	beq	$a5, $a6, .LBB4_5
.LBB4_3:
	ld.w	$a2, $a2, 196
	beqz	$a2, .LBB4_6
# %bb.4:
	ld.w	$a2, $a1, 20
	ori	$a5, $zero, 1
	bne	$a2, $a5, .LBB4_6
.LBB4_5:
	pcalau12i	$a2, %got_pc_hi20(input)
	ld.d	$a2, $a2, %got_pc_lo12(input)
	ld.d	$a2, $a2, 0
	ldptr.w	$a2, $a2, 2936
	sltu	$t3, $zero, $a2
	b	.LBB4_7
.LBB4_6:
	move	$t3, $zero
.LBB4_7:
	pcalau12i	$a2, %got_pc_hi20(input)
	ld.d	$s3, $a2, %got_pc_lo12(input)
	ld.d	$a2, $s3, 0
	ldptr.w	$a5, $a2, 5780
	slli.d	$a2, $s1, 1
	ld.d	$a0, $a4, 56
	st.d	$a0, $sp, 304                   # 8-byte Folded Spill
	sltui	$a4, $a5, 1
	lu12i.w	$a0, 3
	ori	$a5, $a0, 1944
	add.d	$a1, $a1, $a5
	masknez	$a6, $a1, $a4
	pcalau12i	$a1, %got_pc_hi20(byte_abs)
	pcalau12i	$a5, %got_pc_hi20(listX)
	ld.d	$a5, $a5, %got_pc_lo12(listX)
	ld.d	$a7, $a1, %got_pc_lo12(byte_abs)
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	add.w	$a1, $a3, $a0
	slli.d	$a1, $a1, 3
	ldx.d	$a3, $a5, $a1
	maskeqz	$a4, $a7, $a4
	pcalau12i	$a5, %got_pc_hi20(ref_access_method)
	ld.d	$a0, $a5, %got_pc_lo12(ref_access_method)
	ldx.d	$a5, $a3, $t2
	or	$a3, $a4, $a6
	ld.d	$fp, $a3, 0
	st.d	$a0, $sp, 232                   # 8-byte Folded Spill
	st.w	$zero, $a0, 0
	ldptr.d	$a7, $a5, 6448
	pcalau12i	$a3, %got_pc_hi20(ref_pic_sub)
	ld.d	$a0, $a3, %got_pc_lo12(ref_pic_sub)
	lu12i.w	$a6, 1
	ori	$a3, $a6, 2312
	ldx.w	$a4, $a5, $a3
	ori	$a3, $a6, 2296
	ldx.w	$a3, $a5, $a3
	pcalau12i	$t0, %pc_hi20(width_pad)
	st.w	$a4, $t0, %pc_lo12(width_pad)
	ori	$a4, $a6, 2300
	ori	$t0, $a6, 2316
	ldx.w	$t0, $a5, $t0
	ldx.w	$a4, $a5, $a4
	st.d	$a0, $sp, 224                   # 8-byte Folded Spill
	st.d	$a7, $a0, 0
	pcalau12i	$a7, %pc_hi20(height_pad)
	st.w	$t0, $a7, %pc_lo12(height_pad)
	beqz	$t3, .LBB4_9
# %bb.8:
	pcalau12i	$a7, %pc_hi20(wp_weight)
	ld.d	$a7, $a7, %pc_lo12(wp_weight)
	ldx.d	$a7, $a7, $a1
	pcalau12i	$t0, %pc_hi20(wp_offset)
	ld.d	$t0, $t0, %pc_lo12(wp_offset)
	ldx.d	$a7, $a7, $t2
	ldx.d	$t0, $t0, $a1
	ld.w	$a7, $a7, 0
	pcalau12i	$t1, %got_pc_hi20(weight_luma)
	ld.d	$t1, $t1, %got_pc_lo12(weight_luma)
	ldx.d	$t0, $t0, $t2
	st.w	$a7, $t1, 0
	ld.w	$a7, $t0, 0
	pcalau12i	$t0, %got_pc_hi20(offset_luma)
	ld.d	$t0, $t0, %got_pc_lo12(offset_luma)
	st.w	$a7, $t0, 0
.LBB4_9:
	pcalau12i	$a7, %got_pc_hi20(ChromaMEEnable)
	ld.d	$a0, $a7, %got_pc_lo12(ChromaMEEnable)
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	ld.w	$t0, $a0, 0
	addi.d	$a7, $a2, 1
	beqz	$t0, .LBB4_12
# %bb.10:
	ldptr.d	$a2, $a5, 6464
	ld.d	$t0, $a2, 0
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	st.d	$t0, $a0, 8
	ld.d	$a2, $a2, 8
	st.d	$a2, $a0, 16
	ori	$a2, $a6, 2320
	ldx.w	$a2, $a5, $a2
	ori	$a6, $a6, 2324
	ldx.w	$a5, $a5, $a6
	pcalau12i	$a6, %pc_hi20(width_pad_cr)
	st.w	$a2, $a6, %pc_lo12(width_pad_cr)
	pcalau12i	$a2, %pc_hi20(height_pad_cr)
	st.w	$a5, $a2, %pc_lo12(height_pad_cr)
	beqz	$t3, .LBB4_12
# %bb.11:
	pcalau12i	$a2, %pc_hi20(wp_weight)
	ld.d	$a2, $a2, %pc_lo12(wp_weight)
	ldx.d	$a2, $a2, $a1
	ldx.d	$a2, $a2, $t2
	ld.d	$a2, $a2, 4
	pcalau12i	$a5, %got_pc_hi20(weight_cr)
	ld.d	$a5, $a5, %got_pc_lo12(weight_cr)
	pcalau12i	$a6, %pc_hi20(wp_offset)
	ld.d	$a6, $a6, %pc_lo12(wp_offset)
	st.d	$a2, $a5, 0
	ldx.d	$a1, $a6, $a1
	ldx.d	$a0, $a1, $t2
	ld.w	$a1, $a0, 4
	pcalau12i	$a2, %got_pc_hi20(offset_cr)
	ld.d	$a2, $a2, %got_pc_lo12(offset_cr)
	ld.w	$a0, $a0, 8
	st.w	$a1, $a2, 0
	st.w	$a0, $a2, 4
.LBB4_12:
	st.d	$t3, $sp, 128                   # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(enc_picture)
	ld.d	$a0, $a0, %got_pc_lo12(enc_picture)
	ld.d	$a0, $a0, 0
	ldptr.d	$a1, $a0, 6488
	ldptr.d	$a0, $a0, 6512
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ldx.d	$a1, $a1, $s2
	ldx.d	$a2, $a0, $s2
	mul.w	$a0, $a7, $a7
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	addi.w	$a0, $a3, -17
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	addi.w	$a0, $a4, -17
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	ori	$a3, $zero, 16
	addi.d	$a0, $sp, 452
	ori	$a7, $zero, 16
	st.d	$a3, $sp, 0
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	move	$a3, $s0
	ld.d	$a4, $sp, 48                    # 8-byte Folded Reload
	move	$a5, $zero
	move	$a6, $zero
	pcaddu18i	$ra, %call36(SetMotionVectorPredictor)
	jirl	$ra, $ra, 0
	ld.h	$a0, $sp, 452
	bstrpick.d	$a1, $a0, 30, 29
	pcalau12i	$a2, %pc_hi20(search_center_x)
	ld.d	$a2, $a2, %pc_lo12(search_center_x)
	add.d	$a0, $a0, $a1
	ext.w.h	$a0, $a0
	srli.d	$a0, $a0, 2
	ldx.d	$a2, $a2, $s2
	ld.h	$a1, $sp, 454
	pcalau12i	$a3, %pc_hi20(search_center_y)
	ld.d	$a3, $a3, %pc_lo12(search_center_y)
	ld.d	$a4, $sp, 32                    # 8-byte Folded Reload
	stx.w	$a0, $a2, $a4
	bstrpick.d	$a0, $a1, 30, 29
	add.d	$a0, $a1, $a0
	ldx.d	$a3, $a3, $s2
	ld.d	$a1, $s3, 0
	ext.w.h	$a0, $a0
	srli.d	$a0, $a0, 2
	stx.w	$a0, $a3, $a4
	ldptr.w	$a0, $a1, 4168
	alsl.d	$a2, $s0, $a2, 2
	alsl.d	$a3, $s0, $a3, 2
	bnez	$a0, .LBB4_14
# %bb.13:
	ld.w	$a0, $a2, 0
	sub.w	$a4, $zero, $s1
	slt	$a5, $a4, $a0
	masknez	$a6, $a4, $a5
	maskeqz	$a0, $a0, $a5
	or	$a0, $a0, $a6
	slt	$a5, $a0, $s1
	maskeqz	$a0, $a0, $a5
	masknez	$a5, $s1, $a5
	or	$a0, $a0, $a5
	st.w	$a0, $a2, 0
	ld.w	$a0, $a3, 0
	slt	$a5, $a4, $a0
	masknez	$a4, $a4, $a5
	maskeqz	$a0, $a0, $a5
	or	$a0, $a0, $a4
	slt	$a4, $a0, $s1
	maskeqz	$a0, $a0, $a4
	masknez	$a4, $s1, $a4
	or	$a0, $a0, $a4
	st.w	$a0, $a3, 0
.LBB4_14:                               # %.lr.ph
	ld.w	$a0, $a2, 0
	addi.w	$a4, $s1, -2047
	ori	$a5, $zero, 2047
	sub.w	$a5, $a5, $s1
	slt	$a6, $a4, $a0
	masknez	$a4, $a4, $a6
	maskeqz	$a0, $a0, $a6
	or	$a0, $a0, $a4
	slt	$a4, $a0, $a5
	maskeqz	$a6, $a0, $a4
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	masknez	$a4, $a5, $a4
	or	$a4, $a6, $a4
	st.w	$a4, $a2, 0
	ld.w	$a4, $a0, 8
	pcalau12i	$a5, %got_pc_hi20(LEVELMVLIMIT)
	ld.d	$a5, $a5, %got_pc_lo12(LEVELMVLIMIT)
	slli.d	$a6, $a4, 4
	alsl.d	$a4, $a4, $a6, 3
	add.d	$a6, $a5, $a4
	ldx.w	$a4, $a5, $a4
	ld.w	$a5, $a6, 4
	ld.w	$a6, $a3, 0
	add.w	$a4, $a4, $s1
	sub.w	$a5, $a5, $s1
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
	ld.w	$a4, $a0, 192
	ld.d	$a5, $a3, 0
	slli.d	$a4, $a4, 1
	xvldx	$xr0, $a5, $a4
	xvst	$xr0, $s2, 0
	ld.w	$a4, $a0, 196
	addi.d	$s2, $s2, 32
	addi.w	$a4, $a4, 15
	addi.d	$a2, $a2, 1
	addi.d	$a3, $a3, 8
	blt	$a2, $a4, .LBB4_15
# %bb.16:                               # %._crit_edge
	ld.d	$a2, $sp, 136                   # 8-byte Folded Reload
	ld.w	$a2, $a2, 0
	beqz	$a2, .LBB4_24
# %bb.17:                               # %.preheader554.preheader
	st.d	$s3, $sp, 440                   # 8-byte Folded Spill
	ldptr.w	$a1, $a0, 15548
	move	$s3, $t2
	move	$s8, $t1
	ori	$a2, $zero, 1
	blt	$a1, $a2, .LBB4_23
# %bb.18:                               # %.lr.ph563
	ld.w	$s5, $a0, 204
	lu12i.w	$a1, 3
	ori	$s4, $a1, 3256
	ldx.w	$a2, $a0, $s4
	slli.d	$s6, $s5, 3
	pcalau12i	$s0, %pc_hi20(imgUV_org)
	ld.d	$s7, $sp, 200                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB4_19:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s0, %pc_lo12(imgUV_org)
	ld.d	$a1, $a1, 0
	ldx.d	$a1, $a1, $s6
	ld.w	$a0, $a0, 200
	alsl.d	$a1, $a0, $a1, 1
	slli.d	$a2, $a2, 1
	move	$a0, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s7, 0
	ldptr.w	$a2, $a0, 15544
	ld.w	$a3, $a0, 204
	ldptr.w	$a1, $a0, 15548
	alsl.d	$s2, $a2, $s2, 1
	addi.d	$s5, $s5, 1
	add.w	$a3, $a1, $a3
	addi.d	$s6, $s6, 8
	blt	$s5, $a3, .LBB4_19
# %bb.20:                               # %._crit_edge564
	ori	$a2, $zero, 1
	blt	$a1, $a2, .LBB4_23
# %bb.21:                               # %.lr.ph563.1
	ld.w	$s5, $a0, 204
	ldx.w	$a2, $a0, $s4
	slli.d	$s4, $s5, 3
	lu12i.w	$a1, 3
	ori	$s6, $a1, 3260
	ld.d	$s7, $sp, 200                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB4_22:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s0, %pc_lo12(imgUV_org)
	ld.d	$a1, $a1, 8
	ldx.d	$a1, $a1, $s4
	ld.w	$a0, $a0, 200
	alsl.d	$a1, $a0, $a1, 1
	slli.d	$a2, $a2, 1
	move	$a0, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s7, 0
	ldptr.w	$a2, $a0, 15544
	ld.w	$a1, $a0, 204
	ldx.w	$a3, $a0, $s6
	alsl.d	$s2, $a2, $s2, 1
	addi.d	$s5, $s5, 1
	add.w	$a1, $a3, $a1
	addi.d	$s4, $s4, 8
	blt	$s5, $a1, .LBB4_22
.LBB4_23:                               # %._crit_edge564.1
	ld.d	$a1, $sp, 440                   # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	move	$t1, $s8
	move	$t2, $s3
.LBB4_24:                               # %.loopexit555
	slt	$a2, $t2, $s1
	xori	$a2, $a2, 1
	ld.d	$a3, $sp, 56                    # 8-byte Folded Reload
	sub.w	$a3, $a3, $s1
	slt	$a3, $a3, $t2
	xori	$a3, $a3, 1
	slt	$a4, $t1, $s1
	xori	$a4, $a4, 1
	and	$a2, $a2, $a4
	ldptr.w	$a4, $a1, 4168
	and	$a1, $a2, $a3
	ld.d	$a2, $sp, 64                    # 8-byte Folded Reload
	sub.w	$a2, $a2, $s1
	slt	$a2, $a2, $t1
	xori	$a2, $a2, 1
	beqz	$a4, .LBB4_158
.LBB4_25:                               # %.loopexit553
	move	$s0, $zero
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
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	lu12i.w	$a0, 3
	ori	$a0, $a0, 3232
	st.d	$a0, $sp, 272                   # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(weight_luma)
	ld.d	$a0, $a0, %got_pc_lo12(weight_luma)
	st.d	$a0, $sp, 264                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(wp_luma_round)
	st.d	$a0, $sp, 256                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(luma_log_weight_denom)
	st.d	$a0, $sp, 248                   # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(offset_luma)
	ld.d	$a0, $a0, %got_pc_lo12(offset_luma)
	st.d	$a0, $sp, 240                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(img_padded_size_x)
	st.d	$a0, $sp, 288                   # 8-byte Folded Spill
	xvrepli.b	$xr12, 0
	st.d	$t1, $sp, 120                   # 8-byte Folded Spill
	st.d	$t2, $sp, 112                   # 8-byte Folded Spill
	xvst	$xr12, $sp, 160                 # 32-byte Folded Spill
	b	.LBB4_27
	.p2align	4, , 16
.LBB4_26:                               # %.loopexit
                                        #   in Loop: Header=BB4_27 Depth=1
	ld.d	$s0, $sp, 152                   # 8-byte Folded Reload
	addi.d	$s0, $s0, 1
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 120                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 112                   # 8-byte Folded Reload
	bgeu	$s0, $a0, .LBB4_157
.LBB4_27:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_79 Depth 2
                                        #       Child Loop BB4_80 Depth 3
                                        #     Child Loop BB4_86 Depth 2
                                        #       Child Loop BB4_119 Depth 3
                                        #       Child Loop BB4_90 Depth 3
                                        #         Child Loop BB4_93 Depth 4
                                        #         Child Loop BB4_96 Depth 4
                                        #         Child Loop BB4_100 Depth 4
                                        #         Child Loop BB4_103 Depth 4
                                        #         Child Loop BB4_107 Depth 4
                                        #         Child Loop BB4_110 Depth 4
                                        #         Child Loop BB4_114 Depth 4
                                        #         Child Loop BB4_117 Depth 4
                                        #     Child Loop BB4_123 Depth 2
                                        #       Child Loop BB4_156 Depth 3
                                        #       Child Loop BB4_127 Depth 3
                                        #         Child Loop BB4_130 Depth 4
                                        #         Child Loop BB4_133 Depth 4
                                        #         Child Loop BB4_137 Depth 4
                                        #         Child Loop BB4_140 Depth 4
                                        #         Child Loop BB4_144 Depth 4
                                        #         Child Loop BB4_147 Depth 4
                                        #         Child Loop BB4_151 Depth 4
                                        #         Child Loop BB4_154 Depth 4
                                        #     Child Loop BB4_37 Depth 2
                                        #       Child Loop BB4_38 Depth 3
                                        #     Child Loop BB4_43 Depth 2
                                        #       Child Loop BB4_46 Depth 3
                                        #         Child Loop BB4_50 Depth 4
                                        #           Child Loop BB4_54 Depth 5
                                        #           Child Loop BB4_57 Depth 5
                                        #           Child Loop BB4_61 Depth 5
                                        #           Child Loop BB4_64 Depth 5
                                        #           Child Loop BB4_68 Depth 5
                                        #           Child Loop BB4_71 Depth 5
                                        #           Child Loop BB4_75 Depth 5
                                        #           Child Loop BB4_77 Depth 5
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	slli.d	$a2, $s0, 1
	ldx.h	$a0, $a0, $a2
	ldx.h	$a2, $a1, $a2
	add.w	$a1, $t1, $a0
	add.w	$a2, $t2, $a2
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	bnez	$a0, .LBB4_35
# %bb.28:                               #   in Loop: Header=BB4_27 Depth=1
	bltz	$a1, .LBB4_33
# %bb.29:                               #   in Loop: Header=BB4_27 Depth=1
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	blt	$a0, $a1, .LBB4_33
# %bb.30:                               #   in Loop: Header=BB4_27 Depth=1
	bltz	$a2, .LBB4_33
# %bb.31:                               #   in Loop: Header=BB4_27 Depth=1
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	blt	$a0, $a2, .LBB4_33
# %bb.32:                               #   in Loop: Header=BB4_27 Depth=1
	move	$a0, $zero
	b	.LBB4_34
	.p2align	4, , 16
.LBB4_33:                               #   in Loop: Header=BB4_27 Depth=1
	ori	$a0, $zero, 1
.LBB4_34:                               # %.sink.split
                                        #   in Loop: Header=BB4_27 Depth=1
	ld.d	$a3, $sp, 232                   # 8-byte Folded Reload
	st.w	$a0, $a3, 0
.LBB4_35:                               #   in Loop: Header=BB4_27 Depth=1
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	slli.d	$a0, $a0, 3
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
	ldx.d	$a3, $a3, $a0
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ori	$a4, $zero, 80
	alsl.w	$a1, $a1, $a4, 2
	alsl.w	$a2, $a2, $a4, 2
	st.d	$a1, $sp, 216                   # 8-byte Folded Spill
	st.d	$a2, $sp, 208                   # 8-byte Folded Spill
	jirl	$ra, $a3, 0
	slli.d	$a1, $s0, 2
	st.d	$a1, $sp, 312                   # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(img_cr_padded_size_x)
	st.d	$a1, $sp, 296                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	st.d	$s0, $sp, 152                   # 8-byte Folded Spill
	beqz	$a1, .LBB4_78
# %bb.36:                               #   in Loop: Header=BB4_27 Depth=1
	ld.d	$a1, $sp, 200                   # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	move	$a2, $zero
	move	$a3, $zero
	ld.d	$s6, $sp, 72                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB4_37:                               # %.preheader548
                                        #   Parent Loop BB4_27 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_38 Depth 3
	move	$t8, $zero
	move	$s0, $zero
	move	$a4, $zero
	move	$t7, $zero
	ld.d	$a5, $sp, 272                   # 8-byte Folded Reload
	ldx.w	$a6, $a1, $a5
	ld.d	$a5, $sp, 264                   # 8-byte Folded Reload
	ld.w	$a7, $a5, 0
	ld.d	$a5, $sp, 256                   # 8-byte Folded Reload
	ld.w	$t0, $a5, %pc_lo12(wp_luma_round)
	ld.d	$a5, $sp, 288                   # 8-byte Folded Reload
	ld.w	$a5, $a5, %pc_lo12(img_padded_size_x)
	ld.d	$t1, $sp, 248                   # 8-byte Folded Reload
	ld.w	$t1, $t1, %pc_lo12(luma_log_weight_denom)
	ld.d	$t2, $sp, 240                   # 8-byte Folded Reload
	ld.w	$t2, $t2, 0
	addi.d	$t3, $a0, 16
	slli.d	$t4, $a5, 1
	ori	$t5, $zero, 4
	move	$t6, $s6
	.p2align	4, , 16
.LBB4_38:                               #   Parent Loop BB4_27 Depth=1
                                        #     Parent Loop BB4_37 Depth=2
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
	ld.hu	$s3, $t6, 0
	masknez	$s2, $a6, $s2
	or	$s1, $s1, $s2
	ld.hu	$s2, $t3, -14
	sub.w	$s1, $s1, $s3
	slli.d	$s1, $s1, 2
	ldx.w	$s1, $fp, $s1
	mul.d	$s2, $a7, $s2
	add.d	$s2, $s2, $t0
	sra.w	$s2, $s2, $t1
	add.w	$s2, $s2, $t2
	srai.d	$s3, $s2, 63
	andn	$s2, $s2, $s3
	slt	$s3, $s2, $a6
	maskeqz	$s2, $s2, $s3
	ld.hu	$s4, $t6, 2
	masknez	$s3, $a6, $s3
	or	$s2, $s2, $s3
	ld.hu	$s3, $t3, -12
	sub.w	$s2, $s2, $s4
	slli.d	$s2, $s2, 2
	ldx.w	$s2, $fp, $s2
	mul.d	$s3, $a7, $s3
	add.d	$s3, $s3, $t0
	sra.w	$s3, $s3, $t1
	add.w	$s3, $s3, $t2
	srai.d	$s4, $s3, 63
	andn	$s3, $s3, $s4
	slt	$s4, $s3, $a6
	ld.hu	$s5, $t6, 4
	maskeqz	$s3, $s3, $s4
	masknez	$s4, $a6, $s4
	or	$s3, $s3, $s4
	sub.w	$s3, $s3, $s5
	slli.d	$s3, $s3, 2
	ldx.w	$s3, $fp, $s3
	ld.hu	$s4, $t3, -10
	add.d	$t8, $s1, $t8
	add.d	$t8, $t8, $s2
	add.d	$t8, $t8, $s3
	mul.d	$s1, $a7, $s4
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
	ldx.w	$s1, $fp, $s1
	mul.d	$s2, $a7, $s2
	add.d	$s2, $s2, $t0
	sra.w	$s2, $s2, $t1
	add.w	$s2, $s2, $t2
	srai.d	$s3, $s2, 63
	andn	$s2, $s2, $s3
	slt	$s3, $s2, $a6
	maskeqz	$s2, $s2, $s3
	ld.hu	$s4, $t6, 8
	masknez	$s3, $a6, $s3
	or	$s2, $s2, $s3
	ld.hu	$s3, $t3, -6
	sub.w	$s2, $s2, $s4
	slli.d	$s2, $s2, 2
	ldx.w	$s2, $fp, $s2
	mul.d	$s3, $a7, $s3
	add.d	$s3, $s3, $t0
	sra.w	$s3, $s3, $t1
	add.w	$s3, $s3, $t2
	srai.d	$s4, $s3, 63
	andn	$s3, $s3, $s4
	slt	$s4, $s3, $a6
	ld.hu	$s5, $t6, 10
	maskeqz	$s3, $s3, $s4
	masknez	$s4, $a6, $s4
	or	$s3, $s3, $s4
	sub.w	$s3, $s3, $s5
	slli.d	$s3, $s3, 2
	ldx.w	$s3, $fp, $s3
	ld.hu	$s4, $t3, -4
	add.d	$t8, $t8, $s1
	add.d	$s0, $s2, $s0
	add.d	$s0, $s0, $s3
	mul.d	$s1, $a7, $s4
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
	ldx.w	$s1, $fp, $s1
	mul.d	$s2, $a7, $s2
	add.d	$s2, $s2, $t0
	sra.w	$s2, $s2, $t1
	add.w	$s2, $s2, $t2
	srai.d	$s3, $s2, 63
	andn	$s2, $s2, $s3
	slt	$s3, $s2, $a6
	maskeqz	$s2, $s2, $s3
	ld.hu	$s4, $t6, 14
	masknez	$s3, $a6, $s3
	or	$s2, $s2, $s3
	ld.hu	$s3, $t3, 0
	sub.w	$s2, $s2, $s4
	slli.d	$s2, $s2, 2
	ldx.w	$s2, $fp, $s2
	mul.d	$s3, $a7, $s3
	add.d	$s3, $s3, $t0
	sra.w	$s3, $s3, $t1
	add.w	$s3, $s3, $t2
	srai.d	$s4, $s3, 63
	andn	$s3, $s3, $s4
	slt	$s4, $s3, $a6
	ld.hu	$s5, $t6, 16
	maskeqz	$s3, $s3, $s4
	masknez	$s4, $a6, $s4
	or	$s3, $s3, $s4
	sub.w	$s3, $s3, $s5
	slli.d	$s3, $s3, 2
	ldx.w	$s3, $fp, $s3
	ld.hu	$s4, $t3, 2
	add.d	$s0, $s0, $s1
	add.d	$s0, $s0, $s2
	add.d	$t7, $s3, $t7
	mul.d	$s1, $a7, $s4
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
	ldx.w	$s1, $fp, $s1
	mul.d	$s2, $a7, $s2
	add.d	$s2, $s2, $t0
	sra.w	$s2, $s2, $t1
	add.w	$s2, $s2, $t2
	srai.d	$s3, $s2, 63
	andn	$s2, $s2, $s3
	slt	$s3, $s2, $a6
	maskeqz	$s2, $s2, $s3
	ld.hu	$s4, $t6, 20
	masknez	$s3, $a6, $s3
	or	$s2, $s2, $s3
	ld.hu	$s3, $t3, 6
	sub.w	$s2, $s2, $s4
	slli.d	$s2, $s2, 2
	ldx.w	$s2, $fp, $s2
	mul.d	$s3, $a7, $s3
	add.d	$s3, $s3, $t0
	sra.w	$s3, $s3, $t1
	add.w	$s3, $s3, $t2
	srai.d	$s4, $s3, 63
	andn	$s3, $s3, $s4
	slt	$s4, $s3, $a6
	ld.hu	$s5, $t6, 22
	maskeqz	$s3, $s3, $s4
	masknez	$s4, $a6, $s4
	or	$s3, $s3, $s4
	sub.w	$s3, $s3, $s5
	slli.d	$s3, $s3, 2
	ldx.w	$s3, $fp, $s3
	ld.hu	$s4, $t3, 8
	add.d	$t7, $t7, $s1
	add.d	$t7, $t7, $s2
	add.d	$t7, $t7, $s3
	mul.d	$s1, $a7, $s4
	add.d	$s1, $s1, $t0
	sra.w	$s1, $s1, $t1
	add.w	$s1, $s1, $t2
	srai.d	$s2, $s1, 63
	andn	$s1, $s1, $s2
	slt	$s2, $s1, $a6
	maskeqz	$s1, $s1, $s2
	ld.hu	$s3, $t6, 24
	ld.hu	$s4, $t3, 10
	masknez	$s2, $a6, $s2
	or	$s1, $s1, $s2
	sub.w	$s1, $s1, $s3
	mul.d	$s2, $a7, $s4
	add.d	$s2, $s2, $t0
	sra.w	$s2, $s2, $t1
	add.w	$s2, $s2, $t2
	srai.d	$s3, $s2, 63
	andn	$s2, $s2, $s3
	slt	$s3, $s2, $a6
	maskeqz	$s2, $s2, $s3
	ld.hu	$s4, $t6, 26
	ld.hu	$s5, $t3, 12
	masknez	$s3, $a6, $s3
	or	$s2, $s2, $s3
	sub.w	$s2, $s2, $s4
	mul.d	$s3, $a7, $s5
	add.d	$s3, $s3, $t0
	sra.w	$s3, $s3, $t1
	add.w	$s3, $s3, $t2
	srai.d	$s4, $s3, 63
	andn	$s3, $s3, $s4
	slt	$s4, $s3, $a6
	maskeqz	$s3, $s3, $s4
	ld.hu	$s5, $t6, 28
	ld.hu	$s7, $t3, 14
	masknez	$s4, $a6, $s4
	or	$s3, $s3, $s4
	sub.w	$s3, $s3, $s5
	mul.d	$s4, $a7, $s7
	add.d	$s4, $s4, $t0
	sra.w	$s4, $s4, $t1
	add.w	$s4, $s4, $t2
	srai.d	$s5, $s4, 63
	andn	$s4, $s4, $s5
	slt	$s5, $s4, $a6
	ld.hu	$s7, $t6, 30
	maskeqz	$s4, $s4, $s5
	masknez	$s5, $a6, $s5
	or	$s4, $s4, $s5
	sub.w	$s4, $s4, $s7
	slli.d	$s1, $s1, 2
	ldx.w	$s1, $fp, $s1
	slli.d	$s2, $s2, 2
	ldx.w	$s2, $fp, $s2
	slli.d	$s3, $s3, 2
	ldx.w	$s3, $fp, $s3
	slli.d	$s4, $s4, 2
	ldx.w	$s4, $fp, $s4
	add.d	$a4, $s1, $a4
	add.d	$a4, $a4, $s2
	add.d	$a4, $a4, $s3
	add.d	$a4, $a4, $s4
	addi.w	$t5, $t5, -1
	add.d	$t3, $t3, $t4
	addi.d	$t6, $t6, 32
	bnez	$t5, .LBB4_38
# %bb.39:                               #   in Loop: Header=BB4_37 Depth=2
	addi.d	$s6, $s6, 128
	ld.d	$t0, $sp, 304                   # 8-byte Folded Reload
	alsl.d	$a6, $a2, $t0, 3
	slli.d	$a7, $a2, 3
	ldx.d	$a7, $t0, $a7
	ld.d	$t0, $a6, 8
	alsl.d	$a0, $a5, $a0, 3
	ld.d	$a5, $a6, 16
	ld.d	$t1, $sp, 312                   # 8-byte Folded Reload
	stx.w	$t8, $a7, $t1
	stx.w	$s0, $t0, $t1
	ld.d	$a6, $a6, 24
	stx.w	$t7, $a5, $t1
	addi.d	$a2, $a2, 4
	addi.w	$a3, $a3, 1
	stx.w	$a4, $a6, $t1
	ori	$a4, $zero, 4
	bne	$a3, $a4, .LBB4_37
# %bb.40:                               #   in Loop: Header=BB4_27 Depth=1
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	beqz	$a0, .LBB4_26
# %bb.41:                               # %.preheader550.preheader
                                        #   in Loop: Header=BB4_27 Depth=1
	move	$s0, $zero
	ori	$a1, $zero, 1
	b	.LBB4_43
	.p2align	4, , 16
.LBB4_42:                               #   in Loop: Header=BB4_43 Depth=2
	ld.d	$a0, $sp, 280                   # 8-byte Folded Reload
	andi	$a0, $a0, 1
	ori	$s0, $zero, 1
	move	$a1, $zero
	beqz	$a0, .LBB4_26
.LBB4_43:                               # %.preheader550
                                        #   Parent Loop BB4_27 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_46 Depth 3
                                        #         Child Loop BB4_50 Depth 4
                                        #           Child Loop BB4_54 Depth 5
                                        #           Child Loop BB4_57 Depth 5
                                        #           Child Loop BB4_61 Depth 5
                                        #           Child Loop BB4_64 Depth 5
                                        #           Child Loop BB4_68 Depth 5
                                        #           Child Loop BB4_71 Depth 5
                                        #           Child Loop BB4_75 Depth 5
                                        #           Child Loop BB4_77 Depth 5
	st.d	$a1, $sp, 280                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	pcalau12i	$a1, %got_pc_hi20(get_crline)
	ld.d	$a1, $a1, %got_pc_lo12(get_crline)
	slli.d	$a0, $a0, 3
	ldx.d	$a3, $a1, $a0
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	alsl.d	$a0, $s0, $a0, 3
	ld.d	$a0, $a0, 8
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 208                   # 8-byte Folded Reload
	jirl	$ra, $a3, 0
	xvld	$xr12, $sp, 160                 # 32-byte Folded Reload
	pcalau12i	$a1, %got_pc_hi20(weight_cr)
	ld.d	$a3, $a1, %got_pc_lo12(weight_cr)
	pcalau12i	$a1, %got_pc_hi20(offset_cr)
	ld.d	$a5, $a1, %got_pc_lo12(offset_cr)
	ld.d	$a1, $sp, 200                   # 8-byte Folded Reload
	ld.d	$a6, $a1, 0
	move	$s4, $a0
	st.d	$zero, $sp, 328                 # 8-byte Folded Spill
	move	$a1, $zero
	alsl.d	$a7, $s0, $a3, 2
	alsl.d	$t0, $s0, $a5, 2
	st.d	$a6, $sp, 376                   # 8-byte Folded Spill
	st.d	$a7, $sp, 368                   # 8-byte Folded Spill
	st.d	$t0, $sp, 360                   # 8-byte Folded Spill
	b	.LBB4_46
	.p2align	4, , 16
.LBB4_44:                               #   in Loop: Header=BB4_46 Depth=3
	move	$ra, $zero
	move	$t8, $zero
	move	$s1, $zero
	move	$s3, $zero
.LBB4_45:                               # %._crit_edge691
                                        #   in Loop: Header=BB4_46 Depth=3
	ld.d	$a5, $sp, 328                   # 8-byte Folded Reload
	slli.d	$a0, $a5, 3
	ld.d	$a2, $sp, 304                   # 8-byte Folded Reload
	ldx.d	$a0, $a2, $a0
	ld.d	$a4, $sp, 312                   # 8-byte Folded Reload
	ldx.w	$a1, $a0, $a4
	alsl.d	$a2, $a5, $a2, 3
	ld.d	$a3, $a2, 8
	add.d	$a1, $a1, $s3
	stx.w	$a1, $a0, $a4
	ldx.w	$a0, $a3, $a4
	ld.d	$a1, $a2, 16
	add.d	$a0, $a0, $s1
	stx.w	$a0, $a3, $a4
	ldx.w	$a0, $a1, $a4
	ld.d	$a2, $a2, 24
	add.d	$a0, $a0, $ra
	stx.w	$a0, $a1, $a4
	ldx.w	$a0, $a2, $a4
	addi.d	$a5, $a5, 4
	st.d	$a5, $sp, 328                   # 8-byte Folded Spill
	add.d	$a0, $a0, $t8
	ld.d	$a1, $sp, 320                   # 8-byte Folded Reload
	addi.w	$a1, $a1, 1
	stx.w	$a0, $a2, $a4
	ori	$a0, $zero, 4
	beq	$a1, $a0, .LBB4_42
.LBB4_46:                               # %.preheader546
                                        #   Parent Loop BB4_27 Depth=1
                                        #     Parent Loop BB4_43 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB4_50 Depth 4
                                        #           Child Loop BB4_54 Depth 5
                                        #           Child Loop BB4_57 Depth 5
                                        #           Child Loop BB4_61 Depth 5
                                        #           Child Loop BB4_64 Depth 5
                                        #           Child Loop BB4_68 Depth 5
                                        #           Child Loop BB4_71 Depth 5
                                        #           Child Loop BB4_75 Depth 5
                                        #           Child Loop BB4_77 Depth 5
	st.d	$a1, $sp, 320                   # 8-byte Folded Spill
	ldptr.w	$a1, $a6, 15548
	ori	$a0, $zero, 1
	st.d	$a1, $sp, 344                   # 8-byte Folded Spill
	blt	$a1, $a0, .LBB4_44
# %bb.47:                               # %.preheader541.lr.ph
                                        #   in Loop: Header=BB4_46 Depth=3
	move	$a2, $zero
	move	$s3, $zero
	move	$s1, $zero
	move	$t8, $zero
	move	$ra, $zero
	ldptr.w	$a5, $a6, 15544
	pcalau12i	$a0, %pc_hi20(wp_chroma_round)
	ld.d	$a1, $sp, 296                   # 8-byte Folded Reload
	ld.w	$a3, $a1, %pc_lo12(img_cr_padded_size_x)
	ld.w	$t1, $a0, %pc_lo12(wp_chroma_round)
	pcalau12i	$a0, %pc_hi20(chroma_log_weight_denom)
	ld.w	$t2, $a0, %pc_lo12(chroma_log_weight_denom)
	sub.w	$a0, $a3, $a5
	st.d	$a0, $sp, 336                   # 8-byte Folded Spill
	addi.d	$a0, $a5, -1
	bstrpick.d	$a0, $a0, 31, 2
	addi.d	$a0, $a0, 1
	st.d	$a0, $sp, 408                   # 8-byte Folded Spill
	bstrpick.d	$a0, $a0, 30, 4
	slli.d	$t3, $a0, 4
	slli.d	$a1, $a0, 5
	st.d	$a1, $sp, 392                   # 8-byte Folded Spill
	slli.d	$a0, $a0, 6
	st.d	$a0, $sp, 384                   # 8-byte Folded Spill
	xvreplgr2vr.w	$xr0, $t1
	xvreplgr2vr.w	$xr1, $t2
	st.d	$a5, $sp, 432                   # 8-byte Folded Spill
	st.d	$t1, $sp, 424                   # 8-byte Folded Spill
	st.d	$t2, $sp, 416                   # 8-byte Folded Spill
	st.d	$t3, $sp, 400                   # 8-byte Folded Spill
	b	.LBB4_50
	.p2align	4, , 16
.LBB4_48:                               #   in Loop: Header=BB4_50 Depth=4
	ld.d	$a2, $sp, 352                   # 8-byte Folded Reload
.LBB4_49:                               # %._crit_edge680
                                        #   in Loop: Header=BB4_50 Depth=4
	addi.w	$a2, $a2, 4
	ld.d	$a0, $sp, 336                   # 8-byte Folded Reload
	alsl.d	$s4, $a0, $s4, 1
	ld.d	$a0, $sp, 344                   # 8-byte Folded Reload
	bge	$a2, $a0, .LBB4_45
.LBB4_50:                               # %.preheader541
                                        #   Parent Loop BB4_27 Depth=1
                                        #     Parent Loop BB4_43 Depth=2
                                        #       Parent Loop BB4_46 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB4_54 Depth 5
                                        #           Child Loop BB4_57 Depth 5
                                        #           Child Loop BB4_61 Depth 5
                                        #           Child Loop BB4_64 Depth 5
                                        #           Child Loop BB4_68 Depth 5
                                        #           Child Loop BB4_71 Depth 5
                                        #           Child Loop BB4_75 Depth 5
                                        #           Child Loop BB4_77 Depth 5
	ori	$a0, $zero, 1
	blt	$a5, $a0, .LBB4_49
# %bb.51:                               # %.lr.ph654
                                        #   in Loop: Header=BB4_50 Depth=4
	st.d	$a2, $sp, 352                   # 8-byte Folded Spill
	lu12i.w	$a0, 3
	ori	$t4, $a0, 3236
	ldx.w	$s8, $a6, $t4
	ld.w	$s0, $a7, 0
	ld.w	$a3, $t0, 0
	ori	$a0, $zero, 61
	st.d	$t4, $sp, 440                   # 8-byte Folded Spill
	bgeu	$a5, $a0, .LBB4_53
# %bb.52:                               #   in Loop: Header=BB4_50 Depth=4
	move	$s5, $zero
	move	$s2, $s6
	move	$a0, $s4
	b	.LBB4_56
	.p2align	4, , 16
.LBB4_53:                               # %vector.ph1042
                                        #   in Loop: Header=BB4_50 Depth=4
	ld.d	$a0, $sp, 392                   # 8-byte Folded Reload
	add.d	$s2, $s6, $a0
	xvrepli.b	$xr2, 0
	add.d	$a0, $s4, $a0
	xvori.b	$xr3, $xr2, 0
	xvinsgr2vr.w	$xr3, $s3, 0
	xvreplgr2vr.w	$xr4, $s8
	xvreplgr2vr.w	$xr5, $s0
	xvreplgr2vr.w	$xr6, $a3
	addi.d	$s3, $s4, 16
	addi.d	$s4, $s6, 16
	move	$s5, $t3
	.p2align	4, , 16
.LBB4_54:                               # %vector.body1056
                                        #   Parent Loop BB4_27 Depth=1
                                        #     Parent Loop BB4_43 Depth=2
                                        #       Parent Loop BB4_46 Depth=3
                                        #         Parent Loop BB4_50 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	vld	$vr7, $s3, -16
	vld	$vr8, $s3, 0
	vpickve2gr.h	$s6, $vr7, 0
	bstrpick.d	$s6, $s6, 15, 0
	xvinsgr2vr.w	$xr9, $s6, 0
	vpickve2gr.h	$s6, $vr7, 1
	bstrpick.d	$s6, $s6, 15, 0
	xvinsgr2vr.w	$xr9, $s6, 1
	vpickve2gr.h	$s6, $vr7, 2
	bstrpick.d	$s6, $s6, 15, 0
	xvinsgr2vr.w	$xr9, $s6, 2
	vpickve2gr.h	$s6, $vr7, 3
	bstrpick.d	$s6, $s6, 15, 0
	xvinsgr2vr.w	$xr9, $s6, 3
	vpickve2gr.h	$s6, $vr7, 4
	bstrpick.d	$s6, $s6, 15, 0
	xvinsgr2vr.w	$xr9, $s6, 4
	vpickve2gr.h	$s6, $vr7, 5
	bstrpick.d	$s6, $s6, 15, 0
	xvinsgr2vr.w	$xr9, $s6, 5
	vpickve2gr.h	$s6, $vr7, 6
	bstrpick.d	$s6, $s6, 15, 0
	xvinsgr2vr.w	$xr9, $s6, 6
	vpickve2gr.h	$s6, $vr7, 7
	bstrpick.d	$s6, $s6, 15, 0
	xvinsgr2vr.w	$xr9, $s6, 7
	vpickve2gr.h	$s6, $vr8, 0
	bstrpick.d	$s6, $s6, 15, 0
	xvinsgr2vr.w	$xr7, $s6, 0
	vpickve2gr.h	$s6, $vr8, 1
	bstrpick.d	$s6, $s6, 15, 0
	xvinsgr2vr.w	$xr7, $s6, 1
	vpickve2gr.h	$s6, $vr8, 2
	bstrpick.d	$s6, $s6, 15, 0
	xvinsgr2vr.w	$xr7, $s6, 2
	vpickve2gr.h	$s6, $vr8, 3
	bstrpick.d	$s6, $s6, 15, 0
	xvinsgr2vr.w	$xr7, $s6, 3
	vpickve2gr.h	$s6, $vr8, 4
	bstrpick.d	$s6, $s6, 15, 0
	xvinsgr2vr.w	$xr7, $s6, 4
	vpickve2gr.h	$s6, $vr8, 5
	bstrpick.d	$s6, $s6, 15, 0
	xvinsgr2vr.w	$xr7, $s6, 5
	vpickve2gr.h	$s6, $vr8, 6
	bstrpick.d	$s6, $s6, 15, 0
	xvinsgr2vr.w	$xr7, $s6, 6
	vpickve2gr.h	$s6, $vr8, 7
	bstrpick.d	$s6, $s6, 15, 0
	xvinsgr2vr.w	$xr7, $s6, 7
	xvori.b	$xr8, $xr0, 0
	xvmadd.w	$xr8, $xr5, $xr9
	xvori.b	$xr9, $xr0, 0
	xvmadd.w	$xr9, $xr5, $xr7
	xvsra.w	$xr7, $xr8, $xr1
	xvsra.w	$xr8, $xr9, $xr1
	xvadd.w	$xr7, $xr7, $xr6
	xvadd.w	$xr8, $xr8, $xr6
	xvmaxi.w	$xr7, $xr7, 0
	xvmaxi.w	$xr8, $xr8, 0
	vld	$vr9, $s4, -16
	xvmin.w	$xr7, $xr7, $xr4
	xvmin.w	$xr8, $xr8, $xr4
	vld	$vr10, $s4, 0
	vpickve2gr.h	$s6, $vr9, 0
	bstrpick.d	$s6, $s6, 15, 0
	xvinsgr2vr.w	$xr11, $s6, 0
	vpickve2gr.h	$s6, $vr9, 1
	bstrpick.d	$s6, $s6, 15, 0
	xvinsgr2vr.w	$xr11, $s6, 1
	vpickve2gr.h	$s6, $vr9, 2
	bstrpick.d	$s6, $s6, 15, 0
	xvinsgr2vr.w	$xr11, $s6, 2
	vpickve2gr.h	$s6, $vr9, 3
	bstrpick.d	$s6, $s6, 15, 0
	xvinsgr2vr.w	$xr11, $s6, 3
	vpickve2gr.h	$s6, $vr9, 4
	bstrpick.d	$s6, $s6, 15, 0
	xvinsgr2vr.w	$xr11, $s6, 4
	vpickve2gr.h	$s6, $vr9, 5
	bstrpick.d	$s6, $s6, 15, 0
	xvinsgr2vr.w	$xr11, $s6, 5
	vpickve2gr.h	$s6, $vr9, 6
	bstrpick.d	$s6, $s6, 15, 0
	xvinsgr2vr.w	$xr11, $s6, 6
	vpickve2gr.h	$s6, $vr9, 7
	bstrpick.d	$s6, $s6, 15, 0
	xvinsgr2vr.w	$xr11, $s6, 7
	vpickve2gr.h	$s6, $vr10, 0
	bstrpick.d	$s6, $s6, 15, 0
	xvinsgr2vr.w	$xr9, $s6, 0
	vpickve2gr.h	$s6, $vr10, 1
	bstrpick.d	$s6, $s6, 15, 0
	xvinsgr2vr.w	$xr9, $s6, 1
	vpickve2gr.h	$s6, $vr10, 2
	bstrpick.d	$s6, $s6, 15, 0
	xvinsgr2vr.w	$xr9, $s6, 2
	vpickve2gr.h	$s6, $vr10, 3
	bstrpick.d	$s6, $s6, 15, 0
	xvinsgr2vr.w	$xr9, $s6, 3
	vpickve2gr.h	$s6, $vr10, 4
	bstrpick.d	$s6, $s6, 15, 0
	xvinsgr2vr.w	$xr9, $s6, 4
	vpickve2gr.h	$s6, $vr10, 5
	bstrpick.d	$s6, $s6, 15, 0
	xvinsgr2vr.w	$xr9, $s6, 5
	vpickve2gr.h	$s6, $vr10, 6
	bstrpick.d	$s6, $s6, 15, 0
	xvinsgr2vr.w	$xr9, $s6, 6
	vpickve2gr.h	$s6, $vr10, 7
	bstrpick.d	$s6, $s6, 15, 0
	xvinsgr2vr.w	$xr9, $s6, 7
	xvsub.w	$xr7, $xr7, $xr11
	xvsub.w	$xr8, $xr8, $xr9
	xvpermi.q	$xr9, $xr7, 1
	vpickve2gr.w	$s6, $vr9, 3
	vpickve2gr.w	$a2, $vr9, 2
	vpickve2gr.w	$t3, $vr9, 1
	vpickve2gr.w	$a6, $vr9, 0
	vpickve2gr.w	$t7, $vr7, 3
	vpickve2gr.w	$t4, $vr7, 2
	vpickve2gr.w	$a4, $vr7, 1
	vpickve2gr.w	$a5, $vr7, 0
	xvpermi.q	$xr7, $xr8, 1
	vpickve2gr.w	$a1, $vr7, 3
	vpickve2gr.w	$t6, $vr7, 2
	vpickve2gr.w	$t5, $vr7, 1
	vpickve2gr.w	$s7, $vr7, 0
	vpickve2gr.w	$a7, $vr8, 3
	vpickve2gr.w	$t1, $vr8, 2
	vpickve2gr.w	$t2, $vr8, 1
	vpickve2gr.w	$t0, $vr8, 0
	slli.d	$a5, $a5, 2
	slli.d	$a4, $a4, 2
	slli.d	$t4, $t4, 2
	slli.d	$t7, $t7, 2
	slli.d	$a6, $a6, 2
	slli.d	$t3, $t3, 2
	slli.d	$a2, $a2, 2
	slli.d	$s6, $s6, 2
	slli.d	$t0, $t0, 2
	slli.d	$t2, $t2, 2
	slli.d	$t1, $t1, 2
	slli.d	$a7, $a7, 2
	slli.d	$s7, $s7, 2
	slli.d	$t5, $t5, 2
	slli.d	$t6, $t6, 2
	slli.d	$a1, $a1, 2
	ldx.w	$a5, $fp, $a5
	ldx.w	$a4, $fp, $a4
	ldx.w	$t4, $fp, $t4
	ldx.w	$t7, $fp, $t7
	ldx.w	$a6, $fp, $a6
	ldx.w	$t3, $fp, $t3
	ldx.w	$a2, $fp, $a2
	ldx.w	$s6, $fp, $s6
	xvinsgr2vr.w	$xr7, $a5, 0
	xvinsgr2vr.w	$xr7, $a4, 1
	xvinsgr2vr.w	$xr7, $t4, 2
	xvinsgr2vr.w	$xr7, $t7, 3
	xvinsgr2vr.w	$xr7, $a6, 4
	xvinsgr2vr.w	$xr7, $t3, 5
	xvinsgr2vr.w	$xr7, $a2, 6
	xvinsgr2vr.w	$xr7, $s6, 7
	ldx.w	$a2, $fp, $t0
	ldx.w	$a4, $fp, $t2
	ldx.w	$a5, $fp, $t1
	ldx.w	$a6, $fp, $a7
	ldx.w	$a7, $fp, $s7
	ldx.w	$t0, $fp, $t5
	ldx.w	$t1, $fp, $t6
	ldx.w	$a1, $fp, $a1
	xvinsgr2vr.w	$xr8, $a2, 0
	xvinsgr2vr.w	$xr8, $a4, 1
	xvinsgr2vr.w	$xr8, $a5, 2
	xvinsgr2vr.w	$xr8, $a6, 3
	xvinsgr2vr.w	$xr8, $a7, 4
	xvinsgr2vr.w	$xr8, $t0, 5
	xvinsgr2vr.w	$xr8, $t1, 6
	xvinsgr2vr.w	$xr8, $a1, 7
	xvadd.w	$xr3, $xr7, $xr3
	xvadd.w	$xr2, $xr8, $xr2
	addi.d	$s3, $s3, 32
	addi.d	$s5, $s5, -16
	addi.d	$s4, $s4, 32
	bnez	$s5, .LBB4_54
# %bb.55:                               # %middle.block1069
                                        #   in Loop: Header=BB4_50 Depth=4
	xvadd.w	$xr2, $xr2, $xr3
	xvpermi.d	$xr3, $xr2, 78
	xvshuf4i.w	$xr3, $xr3, 228
	xvadd.w	$xr2, $xr2, $xr3
	xvpermi.d	$xr3, $xr2, 68
	xvshuf4i.w	$xr3, $xr3, 14
	xvadd.w	$xr2, $xr2, $xr3
	xvpermi.d	$xr3, $xr2, 68
	xvrepl128vei.w	$xr3, $xr3, 1
	xvadd.w	$xr2, $xr2, $xr3
	xvpickve2gr.w	$s3, $xr2, 0
	ld.d	$s5, $sp, 384                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 376                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 368                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 360                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 432                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 424                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 416                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 408                   # 8-byte Folded Reload
	ld.d	$t3, $sp, 400                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 440                   # 8-byte Folded Reload
	beq	$t3, $a1, .LBB4_58
.LBB4_56:                               # %scalar.ph1040.preheader
                                        #   in Loop: Header=BB4_50 Depth=4
	move	$s4, $s2
	move	$s6, $a0
	.p2align	4, , 16
.LBB4_57:                               # %scalar.ph1040
                                        #   Parent Loop BB4_27 Depth=1
                                        #     Parent Loop BB4_43 Depth=2
                                        #       Parent Loop BB4_46 Depth=3
                                        #         Parent Loop BB4_50 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	ld.hu	$a0, $s6, 0
	mul.d	$a0, $s0, $a0
	add.d	$a0, $a0, $t1
	sra.w	$a0, $a0, $t2
	add.w	$a0, $a0, $a3
	srai.d	$a1, $a0, 63
	andn	$a0, $a0, $a1
	slt	$a1, $a0, $s8
	ld.hu	$a2, $s4, 0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s8, $a1
	or	$a0, $a0, $a1
	sub.w	$a0, $a0, $a2
	slli.d	$a0, $a0, 2
	ldx.w	$a1, $fp, $a0
	addi.d	$a0, $s6, 2
	addi.d	$s2, $s4, 2
	addi.w	$s5, $s5, 4
	add.d	$s3, $a1, $s3
	move	$s4, $s2
	move	$s6, $a0
	blt	$s5, $a5, .LBB4_57
.LBB4_58:                               # %.lr.ph663
                                        #   in Loop: Header=BB4_50 Depth=4
	ldx.w	$a3, $a6, $t4
	ld.w	$s0, $a7, 0
	ld.w	$s5, $t0, 0
	ori	$a1, $zero, 61
	bgeu	$a5, $a1, .LBB4_60
# %bb.59:                               #   in Loop: Header=BB4_50 Depth=4
	move	$s4, $zero
	move	$s6, $s2
	move	$s8, $a0
	b	.LBB4_63
	.p2align	4, , 16
.LBB4_60:                               # %vector.ph1006
                                        #   in Loop: Header=BB4_50 Depth=4
	ld.d	$a1, $sp, 392                   # 8-byte Folded Reload
	add.d	$s6, $s2, $a1
	xvrepli.b	$xr2, 0
	add.d	$s8, $a0, $a1
	xvori.b	$xr3, $xr2, 0
	xvinsgr2vr.w	$xr3, $s1, 0
	xvreplgr2vr.w	$xr4, $a3
	xvreplgr2vr.w	$xr5, $s0
	xvreplgr2vr.w	$xr6, $s5
	addi.d	$a0, $a0, 16
	addi.d	$s1, $s2, 16
	move	$s2, $t3
	.p2align	4, , 16
.LBB4_61:                               # %vector.body1020
                                        #   Parent Loop BB4_27 Depth=1
                                        #     Parent Loop BB4_43 Depth=2
                                        #       Parent Loop BB4_46 Depth=3
                                        #         Parent Loop BB4_50 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	vld	$vr7, $a0, -16
	vld	$vr8, $a0, 0
	vpickve2gr.h	$a1, $vr7, 0
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.w	$xr9, $a1, 0
	vpickve2gr.h	$a1, $vr7, 1
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.w	$xr9, $a1, 1
	vpickve2gr.h	$a1, $vr7, 2
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.w	$xr9, $a1, 2
	vpickve2gr.h	$a1, $vr7, 3
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.w	$xr9, $a1, 3
	vpickve2gr.h	$a1, $vr7, 4
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.w	$xr9, $a1, 4
	vpickve2gr.h	$a1, $vr7, 5
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.w	$xr9, $a1, 5
	vpickve2gr.h	$a1, $vr7, 6
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.w	$xr9, $a1, 6
	vpickve2gr.h	$a1, $vr7, 7
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.w	$xr9, $a1, 7
	vpickve2gr.h	$a1, $vr8, 0
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.w	$xr7, $a1, 0
	vpickve2gr.h	$a1, $vr8, 1
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.w	$xr7, $a1, 1
	vpickve2gr.h	$a1, $vr8, 2
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.w	$xr7, $a1, 2
	vpickve2gr.h	$a1, $vr8, 3
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.w	$xr7, $a1, 3
	vpickve2gr.h	$a1, $vr8, 4
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.w	$xr7, $a1, 4
	vpickve2gr.h	$a1, $vr8, 5
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.w	$xr7, $a1, 5
	vpickve2gr.h	$a1, $vr8, 6
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.w	$xr7, $a1, 6
	vpickve2gr.h	$a1, $vr8, 7
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.w	$xr7, $a1, 7
	xvori.b	$xr8, $xr0, 0
	xvmadd.w	$xr8, $xr5, $xr9
	xvori.b	$xr9, $xr0, 0
	xvmadd.w	$xr9, $xr5, $xr7
	xvsra.w	$xr7, $xr8, $xr1
	xvsra.w	$xr8, $xr9, $xr1
	xvadd.w	$xr7, $xr7, $xr6
	xvadd.w	$xr8, $xr8, $xr6
	xvmaxi.w	$xr7, $xr7, 0
	xvmaxi.w	$xr8, $xr8, 0
	vld	$vr9, $s1, -16
	xvmin.w	$xr7, $xr7, $xr4
	xvmin.w	$xr8, $xr8, $xr4
	vld	$vr10, $s1, 0
	vpickve2gr.h	$a1, $vr9, 0
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.w	$xr11, $a1, 0
	vpickve2gr.h	$a1, $vr9, 1
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.w	$xr11, $a1, 1
	vpickve2gr.h	$a1, $vr9, 2
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.w	$xr11, $a1, 2
	vpickve2gr.h	$a1, $vr9, 3
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.w	$xr11, $a1, 3
	vpickve2gr.h	$a1, $vr9, 4
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.w	$xr11, $a1, 4
	vpickve2gr.h	$a1, $vr9, 5
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.w	$xr11, $a1, 5
	vpickve2gr.h	$a1, $vr9, 6
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.w	$xr11, $a1, 6
	vpickve2gr.h	$a1, $vr9, 7
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.w	$xr11, $a1, 7
	vpickve2gr.h	$a1, $vr10, 0
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.w	$xr9, $a1, 0
	vpickve2gr.h	$a1, $vr10, 1
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.w	$xr9, $a1, 1
	vpickve2gr.h	$a1, $vr10, 2
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.w	$xr9, $a1, 2
	vpickve2gr.h	$a1, $vr10, 3
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.w	$xr9, $a1, 3
	vpickve2gr.h	$a1, $vr10, 4
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.w	$xr9, $a1, 4
	vpickve2gr.h	$a1, $vr10, 5
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.w	$xr9, $a1, 5
	vpickve2gr.h	$a1, $vr10, 6
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.w	$xr9, $a1, 6
	vpickve2gr.h	$a1, $vr10, 7
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.w	$xr9, $a1, 7
	xvsub.w	$xr7, $xr7, $xr11
	xvsub.w	$xr8, $xr8, $xr9
	xvpermi.q	$xr9, $xr7, 1
	vpickve2gr.w	$a1, $vr9, 3
	vpickve2gr.w	$a2, $vr9, 2
	vpickve2gr.w	$a4, $vr9, 1
	vpickve2gr.w	$a5, $vr9, 0
	vpickve2gr.w	$a6, $vr7, 3
	vpickve2gr.w	$a7, $vr7, 2
	vpickve2gr.w	$t0, $vr7, 1
	vpickve2gr.w	$t1, $vr7, 0
	xvpermi.q	$xr7, $xr8, 1
	vpickve2gr.w	$t2, $vr7, 3
	vpickve2gr.w	$t3, $vr7, 2
	vpickve2gr.w	$t4, $vr7, 1
	vpickve2gr.w	$t5, $vr7, 0
	vpickve2gr.w	$t6, $vr8, 3
	vpickve2gr.w	$t7, $vr8, 2
	vpickve2gr.w	$s4, $vr8, 1
	vpickve2gr.w	$s7, $vr8, 0
	slli.d	$t1, $t1, 2
	slli.d	$t0, $t0, 2
	slli.d	$a7, $a7, 2
	slli.d	$a6, $a6, 2
	slli.d	$a5, $a5, 2
	slli.d	$a4, $a4, 2
	slli.d	$a2, $a2, 2
	slli.d	$a1, $a1, 2
	slli.d	$s7, $s7, 2
	slli.d	$s4, $s4, 2
	slli.d	$t7, $t7, 2
	slli.d	$t6, $t6, 2
	slli.d	$t5, $t5, 2
	slli.d	$t4, $t4, 2
	slli.d	$t3, $t3, 2
	slli.d	$t2, $t2, 2
	ldx.w	$t1, $fp, $t1
	ldx.w	$t0, $fp, $t0
	ldx.w	$a7, $fp, $a7
	ldx.w	$a6, $fp, $a6
	ldx.w	$a5, $fp, $a5
	ldx.w	$a4, $fp, $a4
	ldx.w	$a2, $fp, $a2
	ldx.w	$a1, $fp, $a1
	xvinsgr2vr.w	$xr7, $t1, 0
	xvinsgr2vr.w	$xr7, $t0, 1
	xvinsgr2vr.w	$xr7, $a7, 2
	xvinsgr2vr.w	$xr7, $a6, 3
	xvinsgr2vr.w	$xr7, $a5, 4
	xvinsgr2vr.w	$xr7, $a4, 5
	xvinsgr2vr.w	$xr7, $a2, 6
	xvinsgr2vr.w	$xr7, $a1, 7
	ldx.w	$a1, $fp, $s7
	ldx.w	$a2, $fp, $s4
	ldx.w	$a4, $fp, $t7
	ldx.w	$a5, $fp, $t6
	ldx.w	$a6, $fp, $t5
	ldx.w	$a7, $fp, $t4
	ldx.w	$t0, $fp, $t3
	ldx.w	$t1, $fp, $t2
	xvinsgr2vr.w	$xr8, $a1, 0
	xvinsgr2vr.w	$xr8, $a2, 1
	xvinsgr2vr.w	$xr8, $a4, 2
	xvinsgr2vr.w	$xr8, $a5, 3
	xvinsgr2vr.w	$xr8, $a6, 4
	xvinsgr2vr.w	$xr8, $a7, 5
	xvinsgr2vr.w	$xr8, $t0, 6
	xvinsgr2vr.w	$xr8, $t1, 7
	xvadd.w	$xr3, $xr7, $xr3
	xvadd.w	$xr2, $xr8, $xr2
	addi.d	$a0, $a0, 32
	addi.d	$s2, $s2, -16
	addi.d	$s1, $s1, 32
	bnez	$s2, .LBB4_61
# %bb.62:                               # %middle.block1033
                                        #   in Loop: Header=BB4_50 Depth=4
	xvadd.w	$xr2, $xr2, $xr3
	xvpermi.d	$xr3, $xr2, 78
	xvshuf4i.w	$xr3, $xr3, 228
	xvadd.w	$xr2, $xr2, $xr3
	xvpermi.d	$xr3, $xr2, 68
	xvshuf4i.w	$xr3, $xr3, 14
	xvadd.w	$xr2, $xr2, $xr3
	xvpermi.d	$xr3, $xr2, 68
	xvrepl128vei.w	$xr3, $xr3, 1
	xvadd.w	$xr2, $xr2, $xr3
	xvpickve2gr.w	$s1, $xr2, 0
	ld.d	$s4, $sp, 384                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 376                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 368                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 360                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 432                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 424                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 416                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 408                   # 8-byte Folded Reload
	ld.d	$t3, $sp, 400                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 440                   # 8-byte Folded Reload
	beq	$t3, $a0, .LBB4_65
.LBB4_63:                               # %scalar.ph1004.preheader
                                        #   in Loop: Header=BB4_50 Depth=4
	move	$a0, $s6
	move	$s2, $s8
	.p2align	4, , 16
.LBB4_64:                               # %scalar.ph1004
                                        #   Parent Loop BB4_27 Depth=1
                                        #     Parent Loop BB4_43 Depth=2
                                        #       Parent Loop BB4_46 Depth=3
                                        #         Parent Loop BB4_50 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	ld.hu	$a1, $s2, 0
	mul.d	$a1, $s0, $a1
	add.d	$a1, $a1, $t1
	sra.w	$a1, $a1, $t2
	add.w	$a1, $a1, $s5
	srai.d	$a2, $a1, 63
	andn	$a1, $a1, $a2
	slt	$a2, $a1, $a3
	ld.hu	$a4, $a0, 0
	maskeqz	$a1, $a1, $a2
	masknez	$a2, $a3, $a2
	or	$a1, $a1, $a2
	sub.w	$a1, $a1, $a4
	slli.d	$a1, $a1, 2
	ldx.w	$a1, $fp, $a1
	addi.d	$s8, $s2, 2
	addi.d	$s6, $a0, 2
	addi.w	$s4, $s4, 4
	add.d	$s1, $a1, $s1
	move	$a0, $s6
	move	$s2, $s8
	blt	$s4, $a5, .LBB4_64
.LBB4_65:                               # %.lr.ph671
                                        #   in Loop: Header=BB4_50 Depth=4
	ldx.w	$a0, $a6, $t4
	ld.w	$s0, $a7, 0
	ld.w	$s2, $t0, 0
	ori	$a1, $zero, 61
	bgeu	$a5, $a1, .LBB4_67
# %bb.66:                               #   in Loop: Header=BB4_50 Depth=4
	move	$s4, $zero
	move	$s5, $s6
	move	$a3, $s8
	b	.LBB4_70
	.p2align	4, , 16
.LBB4_67:                               # %vector.ph970
                                        #   in Loop: Header=BB4_50 Depth=4
	ld.d	$a1, $sp, 392                   # 8-byte Folded Reload
	add.d	$s5, $s6, $a1
	add.d	$a3, $s8, $a1
	xvori.b	$xr2, $xr12, 0
	xvinsgr2vr.w	$xr2, $ra, 0
	xvreplgr2vr.w	$xr3, $a0
	xvreplgr2vr.w	$xr4, $s0
	xvreplgr2vr.w	$xr5, $s2
	addi.d	$s4, $s8, 16
	addi.d	$s6, $s6, 16
	move	$s8, $t3
	xvori.b	$xr6, $xr12, 0
	.p2align	4, , 16
.LBB4_68:                               # %vector.body984
                                        #   Parent Loop BB4_27 Depth=1
                                        #     Parent Loop BB4_43 Depth=2
                                        #       Parent Loop BB4_46 Depth=3
                                        #         Parent Loop BB4_50 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	vld	$vr7, $s4, -16
	vld	$vr8, $s4, 0
	vpickve2gr.h	$a1, $vr7, 0
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.w	$xr9, $a1, 0
	vpickve2gr.h	$a1, $vr7, 1
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.w	$xr9, $a1, 1
	vpickve2gr.h	$a1, $vr7, 2
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.w	$xr9, $a1, 2
	vpickve2gr.h	$a1, $vr7, 3
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.w	$xr9, $a1, 3
	vpickve2gr.h	$a1, $vr7, 4
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.w	$xr9, $a1, 4
	vpickve2gr.h	$a1, $vr7, 5
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.w	$xr9, $a1, 5
	vpickve2gr.h	$a1, $vr7, 6
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.w	$xr9, $a1, 6
	vpickve2gr.h	$a1, $vr7, 7
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.w	$xr9, $a1, 7
	vpickve2gr.h	$a1, $vr8, 0
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.w	$xr7, $a1, 0
	vpickve2gr.h	$a1, $vr8, 1
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.w	$xr7, $a1, 1
	vpickve2gr.h	$a1, $vr8, 2
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.w	$xr7, $a1, 2
	vpickve2gr.h	$a1, $vr8, 3
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.w	$xr7, $a1, 3
	vpickve2gr.h	$a1, $vr8, 4
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.w	$xr7, $a1, 4
	vpickve2gr.h	$a1, $vr8, 5
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.w	$xr7, $a1, 5
	vpickve2gr.h	$a1, $vr8, 6
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.w	$xr7, $a1, 6
	vpickve2gr.h	$a1, $vr8, 7
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.w	$xr7, $a1, 7
	xvori.b	$xr8, $xr0, 0
	xvmadd.w	$xr8, $xr4, $xr9
	xvori.b	$xr9, $xr0, 0
	xvmadd.w	$xr9, $xr4, $xr7
	xvsra.w	$xr7, $xr8, $xr1
	xvsra.w	$xr8, $xr9, $xr1
	xvadd.w	$xr7, $xr7, $xr5
	xvadd.w	$xr8, $xr8, $xr5
	xvmaxi.w	$xr7, $xr7, 0
	xvmaxi.w	$xr8, $xr8, 0
	vld	$vr9, $s6, -16
	xvmin.w	$xr7, $xr7, $xr3
	xvmin.w	$xr8, $xr8, $xr3
	vld	$vr10, $s6, 0
	vpickve2gr.h	$a1, $vr9, 0
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.w	$xr11, $a1, 0
	vpickve2gr.h	$a1, $vr9, 1
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.w	$xr11, $a1, 1
	vpickve2gr.h	$a1, $vr9, 2
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.w	$xr11, $a1, 2
	vpickve2gr.h	$a1, $vr9, 3
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.w	$xr11, $a1, 3
	vpickve2gr.h	$a1, $vr9, 4
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.w	$xr11, $a1, 4
	vpickve2gr.h	$a1, $vr9, 5
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.w	$xr11, $a1, 5
	vpickve2gr.h	$a1, $vr9, 6
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.w	$xr11, $a1, 6
	vpickve2gr.h	$a1, $vr9, 7
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.w	$xr11, $a1, 7
	vpickve2gr.h	$a1, $vr10, 0
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.w	$xr9, $a1, 0
	vpickve2gr.h	$a1, $vr10, 1
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.w	$xr9, $a1, 1
	vpickve2gr.h	$a1, $vr10, 2
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.w	$xr9, $a1, 2
	vpickve2gr.h	$a1, $vr10, 3
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.w	$xr9, $a1, 3
	vpickve2gr.h	$a1, $vr10, 4
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.w	$xr9, $a1, 4
	vpickve2gr.h	$a1, $vr10, 5
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.w	$xr9, $a1, 5
	vpickve2gr.h	$a1, $vr10, 6
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.w	$xr9, $a1, 6
	vpickve2gr.h	$a1, $vr10, 7
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.w	$xr9, $a1, 7
	xvsub.w	$xr7, $xr7, $xr11
	xvsub.w	$xr8, $xr8, $xr9
	xvpermi.q	$xr9, $xr7, 1
	vpickve2gr.w	$a1, $vr9, 3
	vpickve2gr.w	$a2, $vr9, 2
	vpickve2gr.w	$a4, $vr9, 1
	vpickve2gr.w	$a5, $vr9, 0
	vpickve2gr.w	$a6, $vr7, 3
	vpickve2gr.w	$a7, $vr7, 2
	vpickve2gr.w	$t0, $vr7, 1
	vpickve2gr.w	$t1, $vr7, 0
	xvpermi.q	$xr7, $xr8, 1
	vpickve2gr.w	$t2, $vr7, 3
	vpickve2gr.w	$t3, $vr7, 2
	vpickve2gr.w	$t4, $vr7, 1
	vpickve2gr.w	$t5, $vr7, 0
	vpickve2gr.w	$t6, $vr8, 3
	vpickve2gr.w	$t7, $vr8, 2
	vpickve2gr.w	$s7, $vr8, 1
	vpickve2gr.w	$ra, $vr8, 0
	slli.d	$t1, $t1, 2
	slli.d	$t0, $t0, 2
	slli.d	$a7, $a7, 2
	slli.d	$a6, $a6, 2
	slli.d	$a5, $a5, 2
	slli.d	$a4, $a4, 2
	slli.d	$a2, $a2, 2
	slli.d	$a1, $a1, 2
	slli.d	$ra, $ra, 2
	slli.d	$s7, $s7, 2
	slli.d	$t7, $t7, 2
	slli.d	$t6, $t6, 2
	slli.d	$t5, $t5, 2
	slli.d	$t4, $t4, 2
	slli.d	$t3, $t3, 2
	slli.d	$t2, $t2, 2
	ldx.w	$t1, $fp, $t1
	ldx.w	$t0, $fp, $t0
	ldx.w	$a7, $fp, $a7
	ldx.w	$a6, $fp, $a6
	ldx.w	$a5, $fp, $a5
	ldx.w	$a4, $fp, $a4
	ldx.w	$a2, $fp, $a2
	ldx.w	$a1, $fp, $a1
	xvinsgr2vr.w	$xr7, $t1, 0
	xvinsgr2vr.w	$xr7, $t0, 1
	xvinsgr2vr.w	$xr7, $a7, 2
	xvinsgr2vr.w	$xr7, $a6, 3
	xvinsgr2vr.w	$xr7, $a5, 4
	xvinsgr2vr.w	$xr7, $a4, 5
	xvinsgr2vr.w	$xr7, $a2, 6
	xvinsgr2vr.w	$xr7, $a1, 7
	ldx.w	$a1, $fp, $ra
	ldx.w	$a2, $fp, $s7
	ldx.w	$a4, $fp, $t7
	ldx.w	$a5, $fp, $t6
	ldx.w	$a6, $fp, $t5
	ldx.w	$a7, $fp, $t4
	ldx.w	$t0, $fp, $t3
	ldx.w	$t1, $fp, $t2
	xvinsgr2vr.w	$xr8, $a1, 0
	xvinsgr2vr.w	$xr8, $a2, 1
	xvinsgr2vr.w	$xr8, $a4, 2
	xvinsgr2vr.w	$xr8, $a5, 3
	xvinsgr2vr.w	$xr8, $a6, 4
	xvinsgr2vr.w	$xr8, $a7, 5
	xvinsgr2vr.w	$xr8, $t0, 6
	xvinsgr2vr.w	$xr8, $t1, 7
	xvadd.w	$xr2, $xr7, $xr2
	xvadd.w	$xr6, $xr8, $xr6
	addi.d	$s4, $s4, 32
	addi.d	$s8, $s8, -16
	addi.d	$s6, $s6, 32
	bnez	$s8, .LBB4_68
# %bb.69:                               # %middle.block997
                                        #   in Loop: Header=BB4_50 Depth=4
	xvadd.w	$xr2, $xr6, $xr2
	xvpermi.d	$xr3, $xr2, 78
	xvshuf4i.w	$xr3, $xr3, 228
	xvadd.w	$xr2, $xr2, $xr3
	xvpermi.d	$xr3, $xr2, 68
	xvshuf4i.w	$xr3, $xr3, 14
	xvadd.w	$xr2, $xr2, $xr3
	xvpermi.d	$xr3, $xr2, 68
	xvrepl128vei.w	$xr3, $xr3, 1
	xvadd.w	$xr2, $xr2, $xr3
	xvpickve2gr.w	$ra, $xr2, 0
	ld.d	$s4, $sp, 384                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 376                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 368                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 360                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 432                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 424                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 416                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 408                   # 8-byte Folded Reload
	ld.d	$t3, $sp, 400                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 440                   # 8-byte Folded Reload
	beq	$t3, $a1, .LBB4_72
.LBB4_70:                               # %scalar.ph968.preheader
                                        #   in Loop: Header=BB4_50 Depth=4
	move	$s6, $s5
	move	$s8, $a3
	.p2align	4, , 16
.LBB4_71:                               # %scalar.ph968
                                        #   Parent Loop BB4_27 Depth=1
                                        #     Parent Loop BB4_43 Depth=2
                                        #       Parent Loop BB4_46 Depth=3
                                        #         Parent Loop BB4_50 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	ld.hu	$a1, $s8, 0
	mul.d	$a1, $s0, $a1
	add.d	$a1, $a1, $t1
	sra.w	$a1, $a1, $t2
	add.w	$a1, $a1, $s2
	srai.d	$a2, $a1, 63
	andn	$a1, $a1, $a2
	slt	$a2, $a1, $a0
	ld.hu	$a3, $s6, 0
	maskeqz	$a1, $a1, $a2
	masknez	$a2, $a0, $a2
	or	$a1, $a1, $a2
	sub.w	$a1, $a1, $a3
	slli.d	$a1, $a1, 2
	ldx.w	$a1, $fp, $a1
	addi.d	$a3, $s8, 2
	addi.d	$s5, $s6, 2
	addi.w	$s4, $s4, 4
	add.d	$ra, $a1, $ra
	move	$s6, $s5
	move	$s8, $a3
	blt	$s4, $a5, .LBB4_71
.LBB4_72:                               # %.lr.ph679
                                        #   in Loop: Header=BB4_50 Depth=4
	ldx.w	$s0, $a6, $t4
	ld.w	$a0, $a7, 0
	ld.w	$s7, $t0, 0
	ori	$a1, $zero, 61
	bgeu	$a5, $a1, .LBB4_74
# %bb.73:                               #   in Loop: Header=BB4_50 Depth=4
	move	$s2, $zero
	move	$s6, $s5
	move	$s4, $a3
	b	.LBB4_77
	.p2align	4, , 16
.LBB4_74:                               # %vector.ph
                                        #   in Loop: Header=BB4_50 Depth=4
	ld.d	$a1, $sp, 392                   # 8-byte Folded Reload
	add.d	$s6, $s5, $a1
	add.d	$s4, $a3, $a1
	xvori.b	$xr2, $xr12, 0
	xvinsgr2vr.w	$xr2, $t8, 0
	xvreplgr2vr.w	$xr3, $s0
	xvreplgr2vr.w	$xr4, $a0
	xvreplgr2vr.w	$xr5, $s7
	addi.d	$a3, $a3, 16
	addi.d	$t8, $s5, 16
	move	$s2, $t3
	xvori.b	$xr6, $xr12, 0
	.p2align	4, , 16
.LBB4_75:                               # %vector.body
                                        #   Parent Loop BB4_27 Depth=1
                                        #     Parent Loop BB4_43 Depth=2
                                        #       Parent Loop BB4_46 Depth=3
                                        #         Parent Loop BB4_50 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	vld	$vr7, $a3, -16
	vld	$vr8, $a3, 0
	vpickve2gr.h	$a1, $vr7, 0
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.w	$xr9, $a1, 0
	vpickve2gr.h	$a1, $vr7, 1
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.w	$xr9, $a1, 1
	vpickve2gr.h	$a1, $vr7, 2
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.w	$xr9, $a1, 2
	vpickve2gr.h	$a1, $vr7, 3
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.w	$xr9, $a1, 3
	vpickve2gr.h	$a1, $vr7, 4
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.w	$xr9, $a1, 4
	vpickve2gr.h	$a1, $vr7, 5
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.w	$xr9, $a1, 5
	vpickve2gr.h	$a1, $vr7, 6
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.w	$xr9, $a1, 6
	vpickve2gr.h	$a1, $vr7, 7
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.w	$xr9, $a1, 7
	vpickve2gr.h	$a1, $vr8, 0
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.w	$xr7, $a1, 0
	vpickve2gr.h	$a1, $vr8, 1
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.w	$xr7, $a1, 1
	vpickve2gr.h	$a1, $vr8, 2
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.w	$xr7, $a1, 2
	vpickve2gr.h	$a1, $vr8, 3
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.w	$xr7, $a1, 3
	vpickve2gr.h	$a1, $vr8, 4
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.w	$xr7, $a1, 4
	vpickve2gr.h	$a1, $vr8, 5
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.w	$xr7, $a1, 5
	vpickve2gr.h	$a1, $vr8, 6
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.w	$xr7, $a1, 6
	vpickve2gr.h	$a1, $vr8, 7
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.w	$xr7, $a1, 7
	xvori.b	$xr8, $xr0, 0
	xvmadd.w	$xr8, $xr4, $xr9
	xvori.b	$xr9, $xr0, 0
	xvmadd.w	$xr9, $xr4, $xr7
	xvsra.w	$xr7, $xr8, $xr1
	xvsra.w	$xr8, $xr9, $xr1
	xvadd.w	$xr7, $xr7, $xr5
	xvadd.w	$xr8, $xr8, $xr5
	xvmaxi.w	$xr7, $xr7, 0
	xvmaxi.w	$xr8, $xr8, 0
	vld	$vr9, $t8, -16
	xvmin.w	$xr7, $xr7, $xr3
	xvmin.w	$xr8, $xr8, $xr3
	vld	$vr10, $t8, 0
	vpickve2gr.h	$a1, $vr9, 0
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.w	$xr11, $a1, 0
	vpickve2gr.h	$a1, $vr9, 1
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.w	$xr11, $a1, 1
	vpickve2gr.h	$a1, $vr9, 2
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.w	$xr11, $a1, 2
	vpickve2gr.h	$a1, $vr9, 3
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.w	$xr11, $a1, 3
	vpickve2gr.h	$a1, $vr9, 4
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.w	$xr11, $a1, 4
	vpickve2gr.h	$a1, $vr9, 5
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.w	$xr11, $a1, 5
	vpickve2gr.h	$a1, $vr9, 6
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.w	$xr11, $a1, 6
	vpickve2gr.h	$a1, $vr9, 7
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.w	$xr11, $a1, 7
	vpickve2gr.h	$a1, $vr10, 0
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.w	$xr9, $a1, 0
	vpickve2gr.h	$a1, $vr10, 1
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.w	$xr9, $a1, 1
	vpickve2gr.h	$a1, $vr10, 2
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.w	$xr9, $a1, 2
	vpickve2gr.h	$a1, $vr10, 3
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.w	$xr9, $a1, 3
	vpickve2gr.h	$a1, $vr10, 4
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.w	$xr9, $a1, 4
	vpickve2gr.h	$a1, $vr10, 5
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.w	$xr9, $a1, 5
	vpickve2gr.h	$a1, $vr10, 6
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.w	$xr9, $a1, 6
	vpickve2gr.h	$a1, $vr10, 7
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.w	$xr9, $a1, 7
	xvsub.w	$xr7, $xr7, $xr11
	xvsub.w	$xr8, $xr8, $xr9
	xvpermi.q	$xr9, $xr7, 1
	vpickve2gr.w	$a1, $vr9, 3
	vpickve2gr.w	$a2, $vr9, 2
	vpickve2gr.w	$a4, $vr9, 1
	vpickve2gr.w	$a5, $vr9, 0
	vpickve2gr.w	$a6, $vr7, 3
	vpickve2gr.w	$a7, $vr7, 2
	vpickve2gr.w	$t0, $vr7, 1
	vpickve2gr.w	$t1, $vr7, 0
	xvpermi.q	$xr7, $xr8, 1
	vpickve2gr.w	$t2, $vr7, 3
	vpickve2gr.w	$t3, $vr7, 2
	vpickve2gr.w	$t4, $vr7, 1
	vpickve2gr.w	$t5, $vr7, 0
	vpickve2gr.w	$t6, $vr8, 3
	vpickve2gr.w	$t7, $vr8, 2
	vpickve2gr.w	$s5, $vr8, 1
	vpickve2gr.w	$s8, $vr8, 0
	slli.d	$t1, $t1, 2
	slli.d	$t0, $t0, 2
	slli.d	$a7, $a7, 2
	slli.d	$a6, $a6, 2
	slli.d	$a5, $a5, 2
	slli.d	$a4, $a4, 2
	slli.d	$a2, $a2, 2
	slli.d	$a1, $a1, 2
	slli.d	$s8, $s8, 2
	slli.d	$s5, $s5, 2
	slli.d	$t7, $t7, 2
	slli.d	$t6, $t6, 2
	slli.d	$t5, $t5, 2
	slli.d	$t4, $t4, 2
	slli.d	$t3, $t3, 2
	slli.d	$t2, $t2, 2
	ldx.w	$t1, $fp, $t1
	ldx.w	$t0, $fp, $t0
	ldx.w	$a7, $fp, $a7
	ldx.w	$a6, $fp, $a6
	ldx.w	$a5, $fp, $a5
	ldx.w	$a4, $fp, $a4
	ldx.w	$a2, $fp, $a2
	ldx.w	$a1, $fp, $a1
	xvinsgr2vr.w	$xr7, $t1, 0
	xvinsgr2vr.w	$xr7, $t0, 1
	xvinsgr2vr.w	$xr7, $a7, 2
	xvinsgr2vr.w	$xr7, $a6, 3
	xvinsgr2vr.w	$xr7, $a5, 4
	xvinsgr2vr.w	$xr7, $a4, 5
	xvinsgr2vr.w	$xr7, $a2, 6
	xvinsgr2vr.w	$xr7, $a1, 7
	ldx.w	$a1, $fp, $s8
	ldx.w	$a2, $fp, $s5
	ldx.w	$a4, $fp, $t7
	ldx.w	$a5, $fp, $t6
	ldx.w	$a6, $fp, $t5
	ldx.w	$a7, $fp, $t4
	ldx.w	$t0, $fp, $t3
	ldx.w	$t1, $fp, $t2
	xvinsgr2vr.w	$xr8, $a1, 0
	xvinsgr2vr.w	$xr8, $a2, 1
	xvinsgr2vr.w	$xr8, $a4, 2
	xvinsgr2vr.w	$xr8, $a5, 3
	xvinsgr2vr.w	$xr8, $a6, 4
	xvinsgr2vr.w	$xr8, $a7, 5
	xvinsgr2vr.w	$xr8, $t0, 6
	xvinsgr2vr.w	$xr8, $t1, 7
	xvadd.w	$xr2, $xr7, $xr2
	xvadd.w	$xr6, $xr8, $xr6
	addi.d	$a3, $a3, 32
	addi.d	$s2, $s2, -16
	addi.d	$t8, $t8, 32
	bnez	$s2, .LBB4_75
# %bb.76:                               # %middle.block
                                        #   in Loop: Header=BB4_50 Depth=4
	xvadd.w	$xr2, $xr6, $xr2
	xvpermi.d	$xr3, $xr2, 78
	xvshuf4i.w	$xr3, $xr3, 228
	xvadd.w	$xr2, $xr2, $xr3
	xvpermi.d	$xr3, $xr2, 68
	xvshuf4i.w	$xr3, $xr3, 14
	xvadd.w	$xr2, $xr2, $xr3
	xvpermi.d	$xr3, $xr2, 68
	xvrepl128vei.w	$xr3, $xr3, 1
	xvadd.w	$xr2, $xr2, $xr3
	xvpickve2gr.w	$t8, $xr2, 0
	ld.d	$s2, $sp, 384                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 376                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 368                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 360                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 432                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 424                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 416                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 408                   # 8-byte Folded Reload
	ld.d	$t3, $sp, 400                   # 8-byte Folded Reload
	beq	$t3, $a1, .LBB4_48
	.p2align	4, , 16
.LBB4_77:                               # %scalar.ph
                                        #   Parent Loop BB4_27 Depth=1
                                        #     Parent Loop BB4_43 Depth=2
                                        #       Parent Loop BB4_46 Depth=3
                                        #         Parent Loop BB4_50 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	ld.hu	$a1, $s4, 0
	mul.d	$a1, $a0, $a1
	add.d	$a1, $a1, $t1
	sra.w	$a1, $a1, $t2
	add.w	$a1, $a1, $s7
	srai.d	$a2, $a1, 63
	andn	$a1, $a1, $a2
	slt	$a2, $a1, $s0
	ld.hu	$a3, $s6, 0
	maskeqz	$a1, $a1, $a2
	masknez	$a2, $s0, $a2
	or	$a1, $a1, $a2
	sub.w	$a1, $a1, $a3
	slli.d	$a1, $a1, 2
	ldx.w	$a1, $fp, $a1
	addi.d	$s4, $s4, 2
	addi.d	$s6, $s6, 2
	addi.w	$s2, $s2, 4
	add.d	$t8, $a1, $t8
	blt	$s2, $a5, .LBB4_77
	b	.LBB4_48
	.p2align	4, , 16
.LBB4_78:                               # %.preheader549.preheader
                                        #   in Loop: Header=BB4_27 Depth=1
	move	$a1, $zero
	move	$a2, $zero
	pcalau12i	$a3, %pc_hi20(SetupFastFullPelSearch.orig_pels)
	addi.d	$s1, $a3, %pc_lo12(SetupFastFullPelSearch.orig_pels)
	.p2align	4, , 16
.LBB4_79:                               # %.preheader549
                                        #   Parent Loop BB4_27 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_80 Depth 3
	ld.d	$a3, $sp, 288                   # 8-byte Folded Reload
	ld.w	$a3, $a3, %pc_lo12(img_padded_size_x)
	move	$t2, $zero
	move	$t3, $zero
	move	$a4, $zero
	move	$a5, $zero
	addi.d	$a6, $a0, 16
	slli.d	$a7, $a3, 1
	ori	$t0, $zero, 4
	move	$t1, $s1
	.p2align	4, , 16
.LBB4_80:                               #   Parent Loop BB4_27 Depth=1
                                        #     Parent Loop BB4_79 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.hu	$t4, $a6, -16
	ld.hu	$t5, $t1, 0
	ld.hu	$t6, $a6, -14
	ld.hu	$t7, $t1, 2
	sub.d	$t4, $t4, $t5
	slli.d	$t4, $t4, 2
	ldx.w	$t4, $fp, $t4
	sub.d	$t5, $t6, $t7
	slli.d	$t5, $t5, 2
	ldx.w	$t5, $fp, $t5
	add.d	$t2, $t4, $t2
	ld.hu	$t4, $a6, -12
	ld.hu	$t6, $t1, 4
	add.d	$t2, $t2, $t5
	ld.hu	$t5, $a6, -10
	ld.hu	$t7, $t1, 6
	sub.d	$t4, $t4, $t6
	slli.d	$t4, $t4, 2
	ldx.w	$t4, $fp, $t4
	sub.d	$t5, $t5, $t7
	slli.d	$t5, $t5, 2
	ldx.w	$t5, $fp, $t5
	add.d	$t2, $t2, $t4
	ld.hu	$t4, $a6, -8
	ld.hu	$t6, $t1, 8
	add.d	$t2, $t2, $t5
	ld.hu	$t5, $a6, -6
	ld.hu	$t7, $t1, 10
	sub.d	$t4, $t4, $t6
	slli.d	$t4, $t4, 2
	ldx.w	$t4, $fp, $t4
	sub.d	$t5, $t5, $t7
	slli.d	$t5, $t5, 2
	ldx.w	$t5, $fp, $t5
	add.d	$t3, $t4, $t3
	ld.hu	$t4, $a6, -4
	ld.hu	$t6, $t1, 12
	add.d	$t3, $t3, $t5
	ld.hu	$t5, $a6, -2
	ld.hu	$t7, $t1, 14
	sub.d	$t4, $t4, $t6
	slli.d	$t4, $t4, 2
	ldx.w	$t4, $fp, $t4
	sub.d	$t5, $t5, $t7
	slli.d	$t5, $t5, 2
	ldx.w	$t5, $fp, $t5
	add.d	$t3, $t3, $t4
	ld.hu	$t4, $a6, 0
	ld.hu	$t6, $t1, 16
	add.d	$t3, $t3, $t5
	ld.hu	$t5, $a6, 2
	ld.hu	$t7, $t1, 18
	sub.d	$t4, $t4, $t6
	slli.d	$t4, $t4, 2
	ldx.w	$t4, $fp, $t4
	sub.d	$t5, $t5, $t7
	slli.d	$t5, $t5, 2
	ld.hu	$t6, $a6, 4
	ld.hu	$t7, $t1, 20
	ldx.w	$t5, $fp, $t5
	ld.hu	$t8, $a6, 6
	ld.hu	$s0, $t1, 22
	sub.d	$t6, $t6, $t7
	slli.d	$t6, $t6, 2
	ldx.w	$t6, $fp, $t6
	sub.d	$t7, $t8, $s0
	slli.d	$t7, $t7, 2
	ldx.w	$t7, $fp, $t7
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
	ld.hu	$s2, $a6, 14
	ld.hu	$s3, $t1, 30
	sub.d	$t4, $t4, $t5
	sub.d	$t5, $t6, $t7
	sub.d	$t6, $t8, $s0
	sub.d	$t7, $s2, $s3
	slli.d	$t4, $t4, 2
	ldx.w	$t4, $fp, $t4
	slli.d	$t5, $t5, 2
	ldx.w	$t5, $fp, $t5
	slli.d	$t6, $t6, 2
	ldx.w	$t6, $fp, $t6
	slli.d	$t7, $t7, 2
	ldx.w	$t7, $fp, $t7
	add.d	$a4, $t4, $a4
	add.d	$a4, $a4, $t5
	add.d	$a4, $a4, $t6
	add.d	$a4, $a4, $t7
	addi.w	$t0, $t0, -1
	add.d	$a6, $a6, $a7
	addi.d	$t1, $t1, 32
	bnez	$t0, .LBB4_80
# %bb.81:                               #   in Loop: Header=BB4_79 Depth=2
	addi.d	$s1, $s1, 128
	ld.d	$t0, $sp, 304                   # 8-byte Folded Reload
	alsl.d	$a6, $a1, $t0, 3
	slli.d	$a7, $a1, 3
	ldx.d	$a7, $t0, $a7
	ld.d	$t0, $a6, 8
	alsl.d	$a0, $a3, $a0, 3
	ld.d	$a3, $a6, 16
	ld.d	$t1, $sp, 312                   # 8-byte Folded Reload
	stx.w	$t2, $a7, $t1
	stx.w	$t3, $t0, $t1
	ld.d	$a6, $a6, 24
	stx.w	$a5, $a3, $t1
	addi.d	$a1, $a1, 4
	addi.w	$a2, $a2, 1
	stx.w	$a4, $a6, $t1
	ori	$a3, $zero, 4
	bne	$a2, $a3, .LBB4_79
# %bb.82:                               #   in Loop: Header=BB4_27 Depth=1
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	beqz	$a0, .LBB4_26
# %bb.83:                               # %.preheader551.preheader
                                        #   in Loop: Header=BB4_27 Depth=1
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	pcalau12i	$a1, %got_pc_hi20(get_crline)
	ld.d	$a1, $a1, %got_pc_lo12(get_crline)
	slli.d	$a0, $a0, 3
	st.d	$a1, $sp, 376                   # 8-byte Folded Spill
	ldx.d	$a3, $a1, $a0
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 8
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 208                   # 8-byte Folded Reload
	jirl	$ra, $a3, 0
	ld.d	$a1, $sp, 200                   # 8-byte Folded Reload
	ld.d	$a2, $a1, 0
	move	$a6, $zero
	move	$a4, $zero
	st.d	$a2, $sp, 384                   # 8-byte Folded Spill
	b	.LBB4_86
	.p2align	4, , 16
.LBB4_84:                               #   in Loop: Header=BB4_86 Depth=2
	move	$t5, $zero
	move	$t4, $zero
	move	$t6, $zero
	move	$t7, $zero
.LBB4_85:                               # %._crit_edge621
                                        #   in Loop: Header=BB4_86 Depth=2
	ld.d	$a6, $sp, 400                   # 8-byte Folded Reload
	slli.d	$a1, $a6, 3
	ld.d	$a3, $sp, 304                   # 8-byte Folded Reload
	ldx.d	$a1, $a3, $a1
	ld.d	$a5, $sp, 312                   # 8-byte Folded Reload
	ldx.w	$a2, $a1, $a5
	alsl.d	$a3, $a6, $a3, 3
	ld.d	$a4, $a3, 8
	add.d	$a2, $a2, $t7
	stx.w	$a2, $a1, $a5
	ldx.w	$a1, $a4, $a5
	ld.d	$a2, $a3, 16
	add.d	$a1, $a1, $t6
	stx.w	$a1, $a4, $a5
	ldx.w	$a1, $a2, $a5
	ld.d	$a3, $a3, 24
	add.d	$a1, $a1, $t5
	stx.w	$a1, $a2, $a5
	ldx.w	$a1, $a3, $a5
	addi.d	$a6, $a6, 4
	add.d	$a1, $a1, $t4
	ld.d	$a4, $sp, 392                   # 8-byte Folded Reload
	addi.w	$a4, $a4, 1
	stx.w	$a1, $a3, $a5
	ori	$a1, $zero, 4
	ld.d	$a2, $sp, 384                   # 8-byte Folded Reload
	beq	$a4, $a1, .LBB4_120
.LBB4_86:                               # %.preheader547
                                        #   Parent Loop BB4_27 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_119 Depth 3
                                        #       Child Loop BB4_90 Depth 3
                                        #         Child Loop BB4_93 Depth 4
                                        #         Child Loop BB4_96 Depth 4
                                        #         Child Loop BB4_100 Depth 4
                                        #         Child Loop BB4_103 Depth 4
                                        #         Child Loop BB4_107 Depth 4
                                        #         Child Loop BB4_110 Depth 4
                                        #         Child Loop BB4_114 Depth 4
                                        #         Child Loop BB4_117 Depth 4
	ldptr.w	$a3, $a2, 15548
	ori	$a1, $zero, 1
	st.d	$a6, $sp, 400                   # 8-byte Folded Spill
	st.d	$a4, $sp, 392                   # 8-byte Folded Spill
	blt	$a3, $a1, .LBB4_84
# %bb.87:                               # %.preheader545.lr.ph
                                        #   in Loop: Header=BB4_86 Depth=2
	ldptr.w	$a5, $a2, 15544
	ld.d	$a1, $sp, 296                   # 8-byte Folded Reload
	ld.w	$a7, $a1, %pc_lo12(img_cr_padded_size_x)
	move	$a6, $zero
	blez	$a5, .LBB4_118
# %bb.88:                               # %.preheader545.us.preheader
                                        #   in Loop: Header=BB4_86 Depth=2
	move	$t7, $zero
	move	$t6, $zero
	move	$t4, $zero
	move	$t5, $zero
	sub.w	$a1, $a7, $a5
	st.d	$a1, $sp, 408                   # 8-byte Folded Spill
	addi.d	$t0, $a5, -1
	bstrpick.d	$t0, $t0, 31, 2
	addi.d	$a1, $t0, 1
	st.d	$a1, $sp, 440                   # 8-byte Folded Spill
	bstrpick.d	$t3, $a1, 30, 4
	slli.d	$t1, $t3, 4
	slli.d	$a1, $t3, 5
	st.d	$a1, $sp, 432                   # 8-byte Folded Spill
	slli.d	$a1, $t3, 6
	st.d	$a1, $sp, 424                   # 8-byte Folded Spill
	st.d	$a3, $sp, 416                   # 8-byte Folded Spill
	b	.LBB4_90
	.p2align	4, , 16
.LBB4_89:                               # %._crit_edge610.us
                                        #   in Loop: Header=BB4_90 Depth=3
	addi.w	$a6, $a6, 4
	ld.d	$a0, $sp, 408                   # 8-byte Folded Reload
	alsl.d	$a0, $a0, $t8, 1
	ld.d	$a3, $sp, 416                   # 8-byte Folded Reload
	bge	$a6, $a3, .LBB4_85
.LBB4_90:                               # %.preheader545.us
                                        #   Parent Loop BB4_27 Depth=1
                                        #     Parent Loop BB4_86 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB4_93 Depth 4
                                        #         Child Loop BB4_96 Depth 4
                                        #         Child Loop BB4_100 Depth 4
                                        #         Child Loop BB4_103 Depth 4
                                        #         Child Loop BB4_107 Depth 4
                                        #         Child Loop BB4_110 Depth 4
                                        #         Child Loop BB4_114 Depth 4
                                        #         Child Loop BB4_117 Depth 4
	ori	$a1, $zero, 61
	bgeu	$a5, $a1, .LBB4_92
# %bb.91:                               #   in Loop: Header=BB4_90 Depth=3
	move	$t8, $zero
	move	$s0, $s1
	move	$s2, $a0
	b	.LBB4_95
	.p2align	4, , 16
.LBB4_92:                               # %vector.ph1260
                                        #   in Loop: Header=BB4_90 Depth=3
	ld.d	$a1, $sp, 432                   # 8-byte Folded Reload
	add.d	$s0, $s1, $a1
	xvrepli.b	$xr0, 0
	add.d	$s2, $a0, $a1
	xvori.b	$xr1, $xr0, 0
	xvinsgr2vr.w	$xr1, $t7, 0
	addi.d	$a0, $a0, 16
	addi.d	$t7, $s1, 16
	move	$t8, $t1
	.p2align	4, , 16
.LBB4_93:                               # %vector.body1264
                                        #   Parent Loop BB4_27 Depth=1
                                        #     Parent Loop BB4_86 Depth=2
                                        #       Parent Loop BB4_90 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	vld	$vr4, $a0, -16
	vld	$vr6, $a0, 0
	vpickve2gr.h	$s1, $vr4, 0
	bstrpick.d	$s1, $s1, 15, 0
	bstrpick.d	$s1, $s1, 15, 0
	xvinsgr2vr.d	$xr2, $s1, 0
	vpickve2gr.h	$s1, $vr4, 1
	bstrpick.d	$s1, $s1, 15, 0
	bstrpick.d	$s1, $s1, 15, 0
	xvinsgr2vr.d	$xr2, $s1, 1
	vpickve2gr.h	$s1, $vr4, 2
	bstrpick.d	$s1, $s1, 15, 0
	bstrpick.d	$s1, $s1, 15, 0
	xvinsgr2vr.d	$xr2, $s1, 2
	vpickve2gr.h	$s1, $vr4, 3
	bstrpick.d	$s1, $s1, 15, 0
	bstrpick.d	$s1, $s1, 15, 0
	xvinsgr2vr.d	$xr2, $s1, 3
	vpickve2gr.h	$s1, $vr4, 4
	bstrpick.d	$s1, $s1, 15, 0
	bstrpick.d	$s1, $s1, 15, 0
	xvinsgr2vr.d	$xr3, $s1, 0
	vpickve2gr.h	$s1, $vr4, 5
	bstrpick.d	$s1, $s1, 15, 0
	bstrpick.d	$s1, $s1, 15, 0
	xvinsgr2vr.d	$xr3, $s1, 1
	vpickve2gr.h	$s1, $vr4, 6
	bstrpick.d	$s1, $s1, 15, 0
	bstrpick.d	$s1, $s1, 15, 0
	xvinsgr2vr.d	$xr3, $s1, 2
	vpickve2gr.h	$s1, $vr4, 7
	bstrpick.d	$s1, $s1, 15, 0
	bstrpick.d	$s1, $s1, 15, 0
	xvinsgr2vr.d	$xr3, $s1, 3
	vpickve2gr.h	$s1, $vr6, 0
	bstrpick.d	$s1, $s1, 15, 0
	bstrpick.d	$s1, $s1, 15, 0
	xvinsgr2vr.d	$xr4, $s1, 0
	vpickve2gr.h	$s1, $vr6, 1
	bstrpick.d	$s1, $s1, 15, 0
	bstrpick.d	$s1, $s1, 15, 0
	xvinsgr2vr.d	$xr4, $s1, 1
	vpickve2gr.h	$s1, $vr6, 2
	bstrpick.d	$s1, $s1, 15, 0
	bstrpick.d	$s1, $s1, 15, 0
	xvinsgr2vr.d	$xr4, $s1, 2
	vpickve2gr.h	$s1, $vr6, 3
	bstrpick.d	$s1, $s1, 15, 0
	bstrpick.d	$s1, $s1, 15, 0
	xvinsgr2vr.d	$xr4, $s1, 3
	vpickve2gr.h	$s1, $vr6, 4
	bstrpick.d	$s1, $s1, 15, 0
	bstrpick.d	$s1, $s1, 15, 0
	xvinsgr2vr.d	$xr5, $s1, 0
	vpickve2gr.h	$s1, $vr6, 5
	bstrpick.d	$s1, $s1, 15, 0
	bstrpick.d	$s1, $s1, 15, 0
	xvinsgr2vr.d	$xr5, $s1, 1
	vpickve2gr.h	$s1, $vr6, 6
	bstrpick.d	$s1, $s1, 15, 0
	bstrpick.d	$s1, $s1, 15, 0
	xvinsgr2vr.d	$xr5, $s1, 2
	vpickve2gr.h	$s1, $vr6, 7
	bstrpick.d	$s1, $s1, 15, 0
	vld	$vr8, $t7, -16
	bstrpick.d	$s1, $s1, 15, 0
	xvinsgr2vr.d	$xr5, $s1, 3
	vld	$vr7, $t7, 0
	vpickve2gr.h	$s1, $vr8, 0
	bstrpick.d	$s1, $s1, 15, 0
	bstrpick.d	$s1, $s1, 15, 0
	xvinsgr2vr.d	$xr6, $s1, 0
	vpickve2gr.h	$s1, $vr8, 1
	bstrpick.d	$s1, $s1, 15, 0
	bstrpick.d	$s1, $s1, 15, 0
	xvinsgr2vr.d	$xr6, $s1, 1
	vpickve2gr.h	$s1, $vr8, 2
	bstrpick.d	$s1, $s1, 15, 0
	bstrpick.d	$s1, $s1, 15, 0
	xvinsgr2vr.d	$xr6, $s1, 2
	vpickve2gr.h	$s1, $vr8, 3
	bstrpick.d	$s1, $s1, 15, 0
	bstrpick.d	$s1, $s1, 15, 0
	xvinsgr2vr.d	$xr6, $s1, 3
	vpickve2gr.h	$s1, $vr8, 4
	bstrpick.d	$s1, $s1, 15, 0
	bstrpick.d	$s1, $s1, 15, 0
	xvinsgr2vr.d	$xr9, $s1, 0
	vpickve2gr.h	$s1, $vr8, 5
	bstrpick.d	$s1, $s1, 15, 0
	bstrpick.d	$s1, $s1, 15, 0
	xvinsgr2vr.d	$xr9, $s1, 1
	vpickve2gr.h	$s1, $vr8, 6
	bstrpick.d	$s1, $s1, 15, 0
	bstrpick.d	$s1, $s1, 15, 0
	xvinsgr2vr.d	$xr9, $s1, 2
	vpickve2gr.h	$s1, $vr8, 7
	bstrpick.d	$s1, $s1, 15, 0
	bstrpick.d	$s1, $s1, 15, 0
	xvinsgr2vr.d	$xr9, $s1, 3
	vpickve2gr.h	$s1, $vr7, 0
	bstrpick.d	$s1, $s1, 15, 0
	bstrpick.d	$s1, $s1, 15, 0
	xvinsgr2vr.d	$xr8, $s1, 0
	vpickve2gr.h	$s1, $vr7, 1
	bstrpick.d	$s1, $s1, 15, 0
	bstrpick.d	$s1, $s1, 15, 0
	xvinsgr2vr.d	$xr8, $s1, 1
	vpickve2gr.h	$s1, $vr7, 2
	bstrpick.d	$s1, $s1, 15, 0
	bstrpick.d	$s1, $s1, 15, 0
	xvinsgr2vr.d	$xr8, $s1, 2
	vpickve2gr.h	$s1, $vr7, 3
	bstrpick.d	$s1, $s1, 15, 0
	bstrpick.d	$s1, $s1, 15, 0
	xvinsgr2vr.d	$xr8, $s1, 3
	vpickve2gr.h	$s1, $vr7, 4
	bstrpick.d	$s1, $s1, 15, 0
	bstrpick.d	$s1, $s1, 15, 0
	xvinsgr2vr.d	$xr10, $s1, 0
	vpickve2gr.h	$s1, $vr7, 5
	bstrpick.d	$s1, $s1, 15, 0
	bstrpick.d	$s1, $s1, 15, 0
	xvinsgr2vr.d	$xr10, $s1, 1
	vpickve2gr.h	$s1, $vr7, 6
	bstrpick.d	$s1, $s1, 15, 0
	bstrpick.d	$s1, $s1, 15, 0
	xvinsgr2vr.d	$xr10, $s1, 2
	vpickve2gr.h	$s1, $vr7, 7
	bstrpick.d	$s1, $s1, 15, 0
	bstrpick.d	$s1, $s1, 15, 0
	xvinsgr2vr.d	$xr10, $s1, 3
	xvsub.d	$xr3, $xr3, $xr9
	xvsub.d	$xr2, $xr2, $xr6
	xvsub.d	$xr5, $xr5, $xr10
	xvsub.d	$xr4, $xr4, $xr8
	xvpickve2gr.d	$s1, $xr2, 0
	slli.d	$s1, $s1, 2
	xvpickve2gr.d	$s4, $xr2, 1
	slli.d	$s4, $s4, 2
	xvpickve2gr.d	$s5, $xr2, 2
	slli.d	$s5, $s5, 2
	xvpickve2gr.d	$s6, $xr2, 3
	slli.d	$s6, $s6, 2
	xvpickve2gr.d	$s7, $xr3, 0
	slli.d	$s7, $s7, 2
	xvpickve2gr.d	$s8, $xr3, 1
	slli.d	$s8, $s8, 2
	xvpickve2gr.d	$ra, $xr3, 2
	slli.d	$ra, $ra, 2
	xvpickve2gr.d	$s3, $xr3, 3
	slli.d	$s3, $s3, 2
	xvpickve2gr.d	$a1, $xr4, 0
	slli.d	$a1, $a1, 2
	xvpickve2gr.d	$a3, $xr4, 1
	slli.d	$a3, $a3, 2
	xvpickve2gr.d	$a2, $xr4, 2
	slli.d	$a2, $a2, 2
	xvpickve2gr.d	$a7, $xr4, 3
	slli.d	$a7, $a7, 2
	xvpickve2gr.d	$a4, $xr5, 0
	slli.d	$a4, $a4, 2
	xvpickve2gr.d	$t3, $xr5, 1
	slli.d	$t3, $t3, 2
	xvpickve2gr.d	$t0, $xr5, 2
	slli.d	$t0, $t0, 2
	xvpickve2gr.d	$t2, $xr5, 3
	slli.d	$t2, $t2, 2
	ldx.w	$s1, $fp, $s1
	ldx.w	$s4, $fp, $s4
	ldx.w	$s5, $fp, $s5
	ldx.w	$s6, $fp, $s6
	ldx.w	$s7, $fp, $s7
	ldx.w	$s8, $fp, $s8
	ldx.w	$ra, $fp, $ra
	ldx.w	$s3, $fp, $s3
	xvinsgr2vr.w	$xr2, $s1, 0
	xvinsgr2vr.w	$xr2, $s4, 1
	xvinsgr2vr.w	$xr2, $s5, 2
	xvinsgr2vr.w	$xr2, $s6, 3
	xvinsgr2vr.w	$xr2, $s7, 4
	xvinsgr2vr.w	$xr2, $s8, 5
	xvinsgr2vr.w	$xr2, $ra, 6
	xvinsgr2vr.w	$xr2, $s3, 7
	ldx.w	$a1, $fp, $a1
	ldx.w	$a3, $fp, $a3
	ldx.w	$a2, $fp, $a2
	ldx.w	$a7, $fp, $a7
	ldx.w	$a4, $fp, $a4
	ldx.w	$t3, $fp, $t3
	ldx.w	$t0, $fp, $t0
	ldx.w	$t2, $fp, $t2
	xvinsgr2vr.w	$xr3, $a1, 0
	xvinsgr2vr.w	$xr3, $a3, 1
	xvinsgr2vr.w	$xr3, $a2, 2
	xvinsgr2vr.w	$xr3, $a7, 3
	xvinsgr2vr.w	$xr3, $a4, 4
	xvinsgr2vr.w	$xr3, $t3, 5
	xvinsgr2vr.w	$xr3, $t0, 6
	xvinsgr2vr.w	$xr3, $t2, 7
	xvadd.w	$xr1, $xr2, $xr1
	xvadd.w	$xr0, $xr3, $xr0
	addi.d	$a0, $a0, 32
	addi.d	$t8, $t8, -16
	addi.d	$t7, $t7, 32
	bnez	$t8, .LBB4_93
# %bb.94:                               # %middle.block1277
                                        #   in Loop: Header=BB4_90 Depth=3
	xvadd.w	$xr0, $xr0, $xr1
	xvpermi.d	$xr1, $xr0, 78
	xvshuf4i.w	$xr1, $xr1, 228
	xvadd.w	$xr0, $xr0, $xr1
	xvpermi.d	$xr1, $xr0, 68
	xvshuf4i.w	$xr1, $xr1, 14
	xvadd.w	$xr0, $xr0, $xr1
	xvpermi.d	$xr1, $xr0, 68
	xvrepl128vei.w	$xr1, $xr1, 1
	xvadd.w	$xr0, $xr0, $xr1
	xvpickve2gr.w	$t7, $xr0, 0
	ld.d	$t8, $sp, 424                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 440                   # 8-byte Folded Reload
	beq	$t1, $a0, .LBB4_97
.LBB4_95:                               # %scalar.ph1258.preheader
                                        #   in Loop: Header=BB4_90 Depth=3
	move	$a0, $s0
	move	$s1, $s2
	.p2align	4, , 16
.LBB4_96:                               # %scalar.ph1258
                                        #   Parent Loop BB4_27 Depth=1
                                        #     Parent Loop BB4_86 Depth=2
                                        #       Parent Loop BB4_90 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.hu	$a1, $s1, 0
	ld.hu	$a2, $a0, 0
	sub.d	$a1, $a1, $a2
	slli.d	$a1, $a1, 2
	ldx.w	$a1, $fp, $a1
	addi.d	$s2, $s1, 2
	addi.d	$s0, $a0, 2
	addi.w	$t8, $t8, 4
	add.d	$t7, $a1, $t7
	move	$a0, $s0
	move	$s1, $s2
	blt	$t8, $a5, .LBB4_96
.LBB4_97:                               # %.lr.ph593.us.preheader
                                        #   in Loop: Header=BB4_90 Depth=3
	ori	$a0, $zero, 61
	bgeu	$a5, $a0, .LBB4_99
# %bb.98:                               #   in Loop: Header=BB4_90 Depth=3
	move	$a0, $zero
	move	$t8, $s0
	move	$s1, $s2
	b	.LBB4_102
	.p2align	4, , 16
.LBB4_99:                               # %vector.ph1234
                                        #   in Loop: Header=BB4_90 Depth=3
	ld.d	$a0, $sp, 432                   # 8-byte Folded Reload
	add.d	$t8, $s0, $a0
	xvrepli.b	$xr0, 0
	add.d	$s1, $s2, $a0
	xvori.b	$xr1, $xr0, 0
	xvinsgr2vr.w	$xr1, $t6, 0
	addi.d	$a0, $s2, 16
	addi.d	$t6, $s0, 16
	move	$s0, $t1
	.p2align	4, , 16
.LBB4_100:                              # %vector.body1238
                                        #   Parent Loop BB4_27 Depth=1
                                        #     Parent Loop BB4_86 Depth=2
                                        #       Parent Loop BB4_90 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	vld	$vr4, $a0, -16
	vld	$vr6, $a0, 0
	vpickve2gr.h	$a1, $vr4, 0
	bstrpick.d	$a1, $a1, 15, 0
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.d	$xr2, $a1, 0
	vpickve2gr.h	$a1, $vr4, 1
	bstrpick.d	$a1, $a1, 15, 0
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.d	$xr2, $a1, 1
	vpickve2gr.h	$a1, $vr4, 2
	bstrpick.d	$a1, $a1, 15, 0
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.d	$xr2, $a1, 2
	vpickve2gr.h	$a1, $vr4, 3
	bstrpick.d	$a1, $a1, 15, 0
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.d	$xr2, $a1, 3
	vpickve2gr.h	$a1, $vr4, 4
	bstrpick.d	$a1, $a1, 15, 0
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.d	$xr3, $a1, 0
	vpickve2gr.h	$a1, $vr4, 5
	bstrpick.d	$a1, $a1, 15, 0
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.d	$xr3, $a1, 1
	vpickve2gr.h	$a1, $vr4, 6
	bstrpick.d	$a1, $a1, 15, 0
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.d	$xr3, $a1, 2
	vpickve2gr.h	$a1, $vr4, 7
	bstrpick.d	$a1, $a1, 15, 0
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.d	$xr3, $a1, 3
	vpickve2gr.h	$a1, $vr6, 0
	bstrpick.d	$a1, $a1, 15, 0
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.d	$xr4, $a1, 0
	vpickve2gr.h	$a1, $vr6, 1
	bstrpick.d	$a1, $a1, 15, 0
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.d	$xr4, $a1, 1
	vpickve2gr.h	$a1, $vr6, 2
	bstrpick.d	$a1, $a1, 15, 0
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.d	$xr4, $a1, 2
	vpickve2gr.h	$a1, $vr6, 3
	bstrpick.d	$a1, $a1, 15, 0
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.d	$xr4, $a1, 3
	vpickve2gr.h	$a1, $vr6, 4
	bstrpick.d	$a1, $a1, 15, 0
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.d	$xr5, $a1, 0
	vpickve2gr.h	$a1, $vr6, 5
	bstrpick.d	$a1, $a1, 15, 0
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.d	$xr5, $a1, 1
	vpickve2gr.h	$a1, $vr6, 6
	bstrpick.d	$a1, $a1, 15, 0
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.d	$xr5, $a1, 2
	vpickve2gr.h	$a1, $vr6, 7
	bstrpick.d	$a1, $a1, 15, 0
	vld	$vr8, $t6, -16
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.d	$xr5, $a1, 3
	vld	$vr7, $t6, 0
	vpickve2gr.h	$a1, $vr8, 0
	bstrpick.d	$a1, $a1, 15, 0
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.d	$xr6, $a1, 0
	vpickve2gr.h	$a1, $vr8, 1
	bstrpick.d	$a1, $a1, 15, 0
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.d	$xr6, $a1, 1
	vpickve2gr.h	$a1, $vr8, 2
	bstrpick.d	$a1, $a1, 15, 0
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.d	$xr6, $a1, 2
	vpickve2gr.h	$a1, $vr8, 3
	bstrpick.d	$a1, $a1, 15, 0
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.d	$xr6, $a1, 3
	vpickve2gr.h	$a1, $vr8, 4
	bstrpick.d	$a1, $a1, 15, 0
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.d	$xr9, $a1, 0
	vpickve2gr.h	$a1, $vr8, 5
	bstrpick.d	$a1, $a1, 15, 0
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.d	$xr9, $a1, 1
	vpickve2gr.h	$a1, $vr8, 6
	bstrpick.d	$a1, $a1, 15, 0
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.d	$xr9, $a1, 2
	vpickve2gr.h	$a1, $vr8, 7
	bstrpick.d	$a1, $a1, 15, 0
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.d	$xr9, $a1, 3
	vpickve2gr.h	$a1, $vr7, 0
	bstrpick.d	$a1, $a1, 15, 0
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.d	$xr8, $a1, 0
	vpickve2gr.h	$a1, $vr7, 1
	bstrpick.d	$a1, $a1, 15, 0
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.d	$xr8, $a1, 1
	vpickve2gr.h	$a1, $vr7, 2
	bstrpick.d	$a1, $a1, 15, 0
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.d	$xr8, $a1, 2
	vpickve2gr.h	$a1, $vr7, 3
	bstrpick.d	$a1, $a1, 15, 0
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.d	$xr8, $a1, 3
	vpickve2gr.h	$a1, $vr7, 4
	bstrpick.d	$a1, $a1, 15, 0
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.d	$xr10, $a1, 0
	vpickve2gr.h	$a1, $vr7, 5
	bstrpick.d	$a1, $a1, 15, 0
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.d	$xr10, $a1, 1
	vpickve2gr.h	$a1, $vr7, 6
	bstrpick.d	$a1, $a1, 15, 0
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.d	$xr10, $a1, 2
	vpickve2gr.h	$a1, $vr7, 7
	bstrpick.d	$a1, $a1, 15, 0
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.d	$xr10, $a1, 3
	xvsub.d	$xr3, $xr3, $xr9
	xvsub.d	$xr2, $xr2, $xr6
	xvsub.d	$xr5, $xr5, $xr10
	xvsub.d	$xr4, $xr4, $xr8
	xvpickve2gr.d	$a1, $xr2, 0
	slli.d	$a1, $a1, 2
	xvpickve2gr.d	$a2, $xr2, 1
	slli.d	$a2, $a2, 2
	xvpickve2gr.d	$a3, $xr2, 2
	slli.d	$a3, $a3, 2
	xvpickve2gr.d	$a4, $xr2, 3
	slli.d	$a4, $a4, 2
	xvpickve2gr.d	$a7, $xr3, 0
	slli.d	$a7, $a7, 2
	xvpickve2gr.d	$t0, $xr3, 1
	slli.d	$t0, $t0, 2
	xvpickve2gr.d	$t2, $xr3, 2
	slli.d	$t2, $t2, 2
	xvpickve2gr.d	$t3, $xr3, 3
	slli.d	$t3, $t3, 2
	xvpickve2gr.d	$s2, $xr4, 0
	slli.d	$s2, $s2, 2
	xvpickve2gr.d	$s3, $xr4, 1
	slli.d	$s3, $s3, 2
	xvpickve2gr.d	$s4, $xr4, 2
	slli.d	$s4, $s4, 2
	xvpickve2gr.d	$s5, $xr4, 3
	slli.d	$s5, $s5, 2
	xvpickve2gr.d	$s6, $xr5, 0
	slli.d	$s6, $s6, 2
	xvpickve2gr.d	$s7, $xr5, 1
	slli.d	$s7, $s7, 2
	xvpickve2gr.d	$s8, $xr5, 2
	slli.d	$s8, $s8, 2
	xvpickve2gr.d	$ra, $xr5, 3
	slli.d	$ra, $ra, 2
	ldx.w	$a1, $fp, $a1
	ldx.w	$a2, $fp, $a2
	ldx.w	$a3, $fp, $a3
	ldx.w	$a4, $fp, $a4
	ldx.w	$a7, $fp, $a7
	ldx.w	$t0, $fp, $t0
	ldx.w	$t2, $fp, $t2
	ldx.w	$t3, $fp, $t3
	xvinsgr2vr.w	$xr2, $a1, 0
	xvinsgr2vr.w	$xr2, $a2, 1
	xvinsgr2vr.w	$xr2, $a3, 2
	xvinsgr2vr.w	$xr2, $a4, 3
	xvinsgr2vr.w	$xr2, $a7, 4
	xvinsgr2vr.w	$xr2, $t0, 5
	xvinsgr2vr.w	$xr2, $t2, 6
	xvinsgr2vr.w	$xr2, $t3, 7
	ldx.w	$a1, $fp, $s2
	ldx.w	$a2, $fp, $s3
	ldx.w	$a3, $fp, $s4
	ldx.w	$a4, $fp, $s5
	ldx.w	$a7, $fp, $s6
	ldx.w	$t0, $fp, $s7
	ldx.w	$t2, $fp, $s8
	ldx.w	$t3, $fp, $ra
	xvinsgr2vr.w	$xr3, $a1, 0
	xvinsgr2vr.w	$xr3, $a2, 1
	xvinsgr2vr.w	$xr3, $a3, 2
	xvinsgr2vr.w	$xr3, $a4, 3
	xvinsgr2vr.w	$xr3, $a7, 4
	xvinsgr2vr.w	$xr3, $t0, 5
	xvinsgr2vr.w	$xr3, $t2, 6
	xvinsgr2vr.w	$xr3, $t3, 7
	xvadd.w	$xr1, $xr2, $xr1
	xvadd.w	$xr0, $xr3, $xr0
	addi.d	$a0, $a0, 32
	addi.d	$s0, $s0, -16
	addi.d	$t6, $t6, 32
	bnez	$s0, .LBB4_100
# %bb.101:                              # %middle.block1251
                                        #   in Loop: Header=BB4_90 Depth=3
	xvadd.w	$xr0, $xr0, $xr1
	xvpermi.d	$xr1, $xr0, 78
	xvshuf4i.w	$xr1, $xr1, 228
	xvadd.w	$xr0, $xr0, $xr1
	xvpermi.d	$xr1, $xr0, 68
	xvshuf4i.w	$xr1, $xr1, 14
	xvadd.w	$xr0, $xr0, $xr1
	xvpermi.d	$xr1, $xr0, 68
	xvrepl128vei.w	$xr1, $xr1, 1
	xvadd.w	$xr0, $xr0, $xr1
	xvpickve2gr.w	$t6, $xr0, 0
	ld.d	$a0, $sp, 424                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 440                   # 8-byte Folded Reload
	beq	$t1, $a1, .LBB4_104
.LBB4_102:                              # %.lr.ph593.us.preheader1288
                                        #   in Loop: Header=BB4_90 Depth=3
	move	$s0, $t8
	move	$s2, $s1
	.p2align	4, , 16
.LBB4_103:                              # %.lr.ph593.us
                                        #   Parent Loop BB4_27 Depth=1
                                        #     Parent Loop BB4_86 Depth=2
                                        #       Parent Loop BB4_90 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.hu	$a1, $s2, 0
	ld.hu	$a2, $s0, 0
	sub.d	$a1, $a1, $a2
	slli.d	$a1, $a1, 2
	ldx.w	$a1, $fp, $a1
	addi.d	$s1, $s2, 2
	addi.d	$t8, $s0, 2
	addi.w	$a0, $a0, 4
	add.d	$t6, $a1, $t6
	move	$s0, $t8
	move	$s2, $s1
	blt	$a0, $a5, .LBB4_103
.LBB4_104:                              # %.lr.ph601.us.preheader
                                        #   in Loop: Header=BB4_90 Depth=3
	ori	$a0, $zero, 61
	bgeu	$a5, $a0, .LBB4_106
# %bb.105:                              #   in Loop: Header=BB4_90 Depth=3
	move	$s2, $zero
	move	$a0, $t8
	move	$s0, $s1
	b	.LBB4_109
	.p2align	4, , 16
.LBB4_106:                              # %vector.ph1208
                                        #   in Loop: Header=BB4_90 Depth=3
	ld.d	$a1, $sp, 432                   # 8-byte Folded Reload
	add.d	$a0, $t8, $a1
	xvrepli.b	$xr0, 0
	add.d	$s0, $s1, $a1
	xvori.b	$xr1, $xr0, 0
	xvinsgr2vr.w	$xr1, $t5, 0
	addi.d	$t5, $s1, 16
	addi.d	$t8, $t8, 16
	move	$s1, $t1
	.p2align	4, , 16
.LBB4_107:                              # %vector.body1212
                                        #   Parent Loop BB4_27 Depth=1
                                        #     Parent Loop BB4_86 Depth=2
                                        #       Parent Loop BB4_90 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	vld	$vr4, $t5, -16
	vld	$vr6, $t5, 0
	vpickve2gr.h	$a1, $vr4, 0
	bstrpick.d	$a1, $a1, 15, 0
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.d	$xr2, $a1, 0
	vpickve2gr.h	$a1, $vr4, 1
	bstrpick.d	$a1, $a1, 15, 0
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.d	$xr2, $a1, 1
	vpickve2gr.h	$a1, $vr4, 2
	bstrpick.d	$a1, $a1, 15, 0
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.d	$xr2, $a1, 2
	vpickve2gr.h	$a1, $vr4, 3
	bstrpick.d	$a1, $a1, 15, 0
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.d	$xr2, $a1, 3
	vpickve2gr.h	$a1, $vr4, 4
	bstrpick.d	$a1, $a1, 15, 0
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.d	$xr3, $a1, 0
	vpickve2gr.h	$a1, $vr4, 5
	bstrpick.d	$a1, $a1, 15, 0
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.d	$xr3, $a1, 1
	vpickve2gr.h	$a1, $vr4, 6
	bstrpick.d	$a1, $a1, 15, 0
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.d	$xr3, $a1, 2
	vpickve2gr.h	$a1, $vr4, 7
	bstrpick.d	$a1, $a1, 15, 0
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.d	$xr3, $a1, 3
	vpickve2gr.h	$a1, $vr6, 0
	bstrpick.d	$a1, $a1, 15, 0
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.d	$xr4, $a1, 0
	vpickve2gr.h	$a1, $vr6, 1
	bstrpick.d	$a1, $a1, 15, 0
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.d	$xr4, $a1, 1
	vpickve2gr.h	$a1, $vr6, 2
	bstrpick.d	$a1, $a1, 15, 0
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.d	$xr4, $a1, 2
	vpickve2gr.h	$a1, $vr6, 3
	bstrpick.d	$a1, $a1, 15, 0
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.d	$xr4, $a1, 3
	vpickve2gr.h	$a1, $vr6, 4
	bstrpick.d	$a1, $a1, 15, 0
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.d	$xr5, $a1, 0
	vpickve2gr.h	$a1, $vr6, 5
	bstrpick.d	$a1, $a1, 15, 0
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.d	$xr5, $a1, 1
	vpickve2gr.h	$a1, $vr6, 6
	bstrpick.d	$a1, $a1, 15, 0
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.d	$xr5, $a1, 2
	vpickve2gr.h	$a1, $vr6, 7
	bstrpick.d	$a1, $a1, 15, 0
	vld	$vr8, $t8, -16
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.d	$xr5, $a1, 3
	vld	$vr7, $t8, 0
	vpickve2gr.h	$a1, $vr8, 0
	bstrpick.d	$a1, $a1, 15, 0
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.d	$xr6, $a1, 0
	vpickve2gr.h	$a1, $vr8, 1
	bstrpick.d	$a1, $a1, 15, 0
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.d	$xr6, $a1, 1
	vpickve2gr.h	$a1, $vr8, 2
	bstrpick.d	$a1, $a1, 15, 0
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.d	$xr6, $a1, 2
	vpickve2gr.h	$a1, $vr8, 3
	bstrpick.d	$a1, $a1, 15, 0
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.d	$xr6, $a1, 3
	vpickve2gr.h	$a1, $vr8, 4
	bstrpick.d	$a1, $a1, 15, 0
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.d	$xr9, $a1, 0
	vpickve2gr.h	$a1, $vr8, 5
	bstrpick.d	$a1, $a1, 15, 0
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.d	$xr9, $a1, 1
	vpickve2gr.h	$a1, $vr8, 6
	bstrpick.d	$a1, $a1, 15, 0
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.d	$xr9, $a1, 2
	vpickve2gr.h	$a1, $vr8, 7
	bstrpick.d	$a1, $a1, 15, 0
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.d	$xr9, $a1, 3
	vpickve2gr.h	$a1, $vr7, 0
	bstrpick.d	$a1, $a1, 15, 0
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.d	$xr8, $a1, 0
	vpickve2gr.h	$a1, $vr7, 1
	bstrpick.d	$a1, $a1, 15, 0
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.d	$xr8, $a1, 1
	vpickve2gr.h	$a1, $vr7, 2
	bstrpick.d	$a1, $a1, 15, 0
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.d	$xr8, $a1, 2
	vpickve2gr.h	$a1, $vr7, 3
	bstrpick.d	$a1, $a1, 15, 0
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.d	$xr8, $a1, 3
	vpickve2gr.h	$a1, $vr7, 4
	bstrpick.d	$a1, $a1, 15, 0
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.d	$xr10, $a1, 0
	vpickve2gr.h	$a1, $vr7, 5
	bstrpick.d	$a1, $a1, 15, 0
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.d	$xr10, $a1, 1
	vpickve2gr.h	$a1, $vr7, 6
	bstrpick.d	$a1, $a1, 15, 0
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.d	$xr10, $a1, 2
	vpickve2gr.h	$a1, $vr7, 7
	bstrpick.d	$a1, $a1, 15, 0
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.d	$xr10, $a1, 3
	xvsub.d	$xr3, $xr3, $xr9
	xvsub.d	$xr2, $xr2, $xr6
	xvsub.d	$xr5, $xr5, $xr10
	xvsub.d	$xr4, $xr4, $xr8
	xvpickve2gr.d	$a1, $xr2, 0
	slli.d	$a1, $a1, 2
	xvpickve2gr.d	$a2, $xr2, 1
	slli.d	$a2, $a2, 2
	xvpickve2gr.d	$a3, $xr2, 2
	slli.d	$a3, $a3, 2
	xvpickve2gr.d	$a4, $xr2, 3
	slli.d	$a4, $a4, 2
	xvpickve2gr.d	$a7, $xr3, 0
	slli.d	$a7, $a7, 2
	xvpickve2gr.d	$t0, $xr3, 1
	slli.d	$t0, $t0, 2
	xvpickve2gr.d	$t2, $xr3, 2
	slli.d	$t2, $t2, 2
	xvpickve2gr.d	$t3, $xr3, 3
	slli.d	$t3, $t3, 2
	xvpickve2gr.d	$s2, $xr4, 0
	slli.d	$s2, $s2, 2
	xvpickve2gr.d	$s3, $xr4, 1
	slli.d	$s3, $s3, 2
	xvpickve2gr.d	$s4, $xr4, 2
	slli.d	$s4, $s4, 2
	xvpickve2gr.d	$s5, $xr4, 3
	slli.d	$s5, $s5, 2
	xvpickve2gr.d	$s6, $xr5, 0
	slli.d	$s6, $s6, 2
	xvpickve2gr.d	$s7, $xr5, 1
	slli.d	$s7, $s7, 2
	xvpickve2gr.d	$s8, $xr5, 2
	slli.d	$s8, $s8, 2
	xvpickve2gr.d	$ra, $xr5, 3
	slli.d	$ra, $ra, 2
	ldx.w	$a1, $fp, $a1
	ldx.w	$a2, $fp, $a2
	ldx.w	$a3, $fp, $a3
	ldx.w	$a4, $fp, $a4
	ldx.w	$a7, $fp, $a7
	ldx.w	$t0, $fp, $t0
	ldx.w	$t2, $fp, $t2
	ldx.w	$t3, $fp, $t3
	xvinsgr2vr.w	$xr2, $a1, 0
	xvinsgr2vr.w	$xr2, $a2, 1
	xvinsgr2vr.w	$xr2, $a3, 2
	xvinsgr2vr.w	$xr2, $a4, 3
	xvinsgr2vr.w	$xr2, $a7, 4
	xvinsgr2vr.w	$xr2, $t0, 5
	xvinsgr2vr.w	$xr2, $t2, 6
	xvinsgr2vr.w	$xr2, $t3, 7
	ldx.w	$a1, $fp, $s2
	ldx.w	$a2, $fp, $s3
	ldx.w	$a3, $fp, $s4
	ldx.w	$a4, $fp, $s5
	ldx.w	$a7, $fp, $s6
	ldx.w	$t0, $fp, $s7
	ldx.w	$t2, $fp, $s8
	ldx.w	$t3, $fp, $ra
	xvinsgr2vr.w	$xr3, $a1, 0
	xvinsgr2vr.w	$xr3, $a2, 1
	xvinsgr2vr.w	$xr3, $a3, 2
	xvinsgr2vr.w	$xr3, $a4, 3
	xvinsgr2vr.w	$xr3, $a7, 4
	xvinsgr2vr.w	$xr3, $t0, 5
	xvinsgr2vr.w	$xr3, $t2, 6
	xvinsgr2vr.w	$xr3, $t3, 7
	xvadd.w	$xr1, $xr2, $xr1
	xvadd.w	$xr0, $xr3, $xr0
	addi.d	$t5, $t5, 32
	addi.d	$s1, $s1, -16
	addi.d	$t8, $t8, 32
	bnez	$s1, .LBB4_107
# %bb.108:                              # %middle.block1225
                                        #   in Loop: Header=BB4_90 Depth=3
	xvadd.w	$xr0, $xr0, $xr1
	xvpermi.d	$xr1, $xr0, 78
	xvshuf4i.w	$xr1, $xr1, 228
	xvadd.w	$xr0, $xr0, $xr1
	xvpermi.d	$xr1, $xr0, 68
	xvshuf4i.w	$xr1, $xr1, 14
	xvadd.w	$xr0, $xr0, $xr1
	xvpermi.d	$xr1, $xr0, 68
	xvrepl128vei.w	$xr1, $xr1, 1
	xvadd.w	$xr0, $xr0, $xr1
	xvpickve2gr.w	$t5, $xr0, 0
	ld.d	$s2, $sp, 424                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 440                   # 8-byte Folded Reload
	beq	$t1, $a1, .LBB4_111
.LBB4_109:                              # %.lr.ph601.us.preheader1287
                                        #   in Loop: Header=BB4_90 Depth=3
	move	$t8, $a0
	move	$s1, $s0
	.p2align	4, , 16
.LBB4_110:                              # %.lr.ph601.us
                                        #   Parent Loop BB4_27 Depth=1
                                        #     Parent Loop BB4_86 Depth=2
                                        #       Parent Loop BB4_90 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.hu	$a0, $s1, 0
	ld.hu	$a1, $t8, 0
	sub.d	$a0, $a0, $a1
	slli.d	$a0, $a0, 2
	ldx.w	$a1, $fp, $a0
	addi.d	$s0, $s1, 2
	addi.d	$a0, $t8, 2
	addi.w	$s2, $s2, 4
	add.d	$t5, $a1, $t5
	move	$t8, $a0
	move	$s1, $s0
	blt	$s2, $a5, .LBB4_110
.LBB4_111:                              # %.lr.ph609.us.preheader
                                        #   in Loop: Header=BB4_90 Depth=3
	ori	$a1, $zero, 61
	bgeu	$a5, $a1, .LBB4_113
# %bb.112:                              #   in Loop: Header=BB4_90 Depth=3
	move	$s2, $zero
	move	$s1, $a0
	move	$t8, $s0
	b	.LBB4_116
	.p2align	4, , 16
.LBB4_113:                              # %vector.ph1182
                                        #   in Loop: Header=BB4_90 Depth=3
	ld.d	$a1, $sp, 432                   # 8-byte Folded Reload
	add.d	$s1, $a0, $a1
	xvrepli.b	$xr0, 0
	add.d	$t8, $s0, $a1
	xvori.b	$xr1, $xr0, 0
	xvinsgr2vr.w	$xr1, $t4, 0
	addi.d	$t4, $s0, 16
	addi.d	$a0, $a0, 16
	move	$s0, $t1
	.p2align	4, , 16
.LBB4_114:                              # %vector.body1186
                                        #   Parent Loop BB4_27 Depth=1
                                        #     Parent Loop BB4_86 Depth=2
                                        #       Parent Loop BB4_90 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	vld	$vr4, $t4, -16
	vld	$vr6, $t4, 0
	vpickve2gr.h	$a1, $vr4, 0
	bstrpick.d	$a1, $a1, 15, 0
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.d	$xr2, $a1, 0
	vpickve2gr.h	$a1, $vr4, 1
	bstrpick.d	$a1, $a1, 15, 0
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.d	$xr2, $a1, 1
	vpickve2gr.h	$a1, $vr4, 2
	bstrpick.d	$a1, $a1, 15, 0
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.d	$xr2, $a1, 2
	vpickve2gr.h	$a1, $vr4, 3
	bstrpick.d	$a1, $a1, 15, 0
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.d	$xr2, $a1, 3
	vpickve2gr.h	$a1, $vr4, 4
	bstrpick.d	$a1, $a1, 15, 0
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.d	$xr3, $a1, 0
	vpickve2gr.h	$a1, $vr4, 5
	bstrpick.d	$a1, $a1, 15, 0
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.d	$xr3, $a1, 1
	vpickve2gr.h	$a1, $vr4, 6
	bstrpick.d	$a1, $a1, 15, 0
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.d	$xr3, $a1, 2
	vpickve2gr.h	$a1, $vr4, 7
	bstrpick.d	$a1, $a1, 15, 0
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.d	$xr3, $a1, 3
	vpickve2gr.h	$a1, $vr6, 0
	bstrpick.d	$a1, $a1, 15, 0
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.d	$xr4, $a1, 0
	vpickve2gr.h	$a1, $vr6, 1
	bstrpick.d	$a1, $a1, 15, 0
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.d	$xr4, $a1, 1
	vpickve2gr.h	$a1, $vr6, 2
	bstrpick.d	$a1, $a1, 15, 0
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.d	$xr4, $a1, 2
	vpickve2gr.h	$a1, $vr6, 3
	bstrpick.d	$a1, $a1, 15, 0
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.d	$xr4, $a1, 3
	vpickve2gr.h	$a1, $vr6, 4
	bstrpick.d	$a1, $a1, 15, 0
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.d	$xr5, $a1, 0
	vpickve2gr.h	$a1, $vr6, 5
	bstrpick.d	$a1, $a1, 15, 0
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.d	$xr5, $a1, 1
	vpickve2gr.h	$a1, $vr6, 6
	bstrpick.d	$a1, $a1, 15, 0
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.d	$xr5, $a1, 2
	vpickve2gr.h	$a1, $vr6, 7
	bstrpick.d	$a1, $a1, 15, 0
	vld	$vr8, $a0, -16
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.d	$xr5, $a1, 3
	vld	$vr7, $a0, 0
	vpickve2gr.h	$a1, $vr8, 0
	bstrpick.d	$a1, $a1, 15, 0
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.d	$xr6, $a1, 0
	vpickve2gr.h	$a1, $vr8, 1
	bstrpick.d	$a1, $a1, 15, 0
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.d	$xr6, $a1, 1
	vpickve2gr.h	$a1, $vr8, 2
	bstrpick.d	$a1, $a1, 15, 0
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.d	$xr6, $a1, 2
	vpickve2gr.h	$a1, $vr8, 3
	bstrpick.d	$a1, $a1, 15, 0
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.d	$xr6, $a1, 3
	vpickve2gr.h	$a1, $vr8, 4
	bstrpick.d	$a1, $a1, 15, 0
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.d	$xr9, $a1, 0
	vpickve2gr.h	$a1, $vr8, 5
	bstrpick.d	$a1, $a1, 15, 0
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.d	$xr9, $a1, 1
	vpickve2gr.h	$a1, $vr8, 6
	bstrpick.d	$a1, $a1, 15, 0
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.d	$xr9, $a1, 2
	vpickve2gr.h	$a1, $vr8, 7
	bstrpick.d	$a1, $a1, 15, 0
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.d	$xr9, $a1, 3
	vpickve2gr.h	$a1, $vr7, 0
	bstrpick.d	$a1, $a1, 15, 0
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.d	$xr8, $a1, 0
	vpickve2gr.h	$a1, $vr7, 1
	bstrpick.d	$a1, $a1, 15, 0
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.d	$xr8, $a1, 1
	vpickve2gr.h	$a1, $vr7, 2
	bstrpick.d	$a1, $a1, 15, 0
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.d	$xr8, $a1, 2
	vpickve2gr.h	$a1, $vr7, 3
	bstrpick.d	$a1, $a1, 15, 0
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.d	$xr8, $a1, 3
	vpickve2gr.h	$a1, $vr7, 4
	bstrpick.d	$a1, $a1, 15, 0
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.d	$xr10, $a1, 0
	vpickve2gr.h	$a1, $vr7, 5
	bstrpick.d	$a1, $a1, 15, 0
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.d	$xr10, $a1, 1
	vpickve2gr.h	$a1, $vr7, 6
	bstrpick.d	$a1, $a1, 15, 0
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.d	$xr10, $a1, 2
	vpickve2gr.h	$a1, $vr7, 7
	bstrpick.d	$a1, $a1, 15, 0
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.d	$xr10, $a1, 3
	xvsub.d	$xr3, $xr3, $xr9
	xvsub.d	$xr2, $xr2, $xr6
	xvsub.d	$xr5, $xr5, $xr10
	xvsub.d	$xr4, $xr4, $xr8
	xvpickve2gr.d	$a1, $xr2, 0
	slli.d	$a1, $a1, 2
	xvpickve2gr.d	$a2, $xr2, 1
	slli.d	$a2, $a2, 2
	xvpickve2gr.d	$a3, $xr2, 2
	slli.d	$a3, $a3, 2
	xvpickve2gr.d	$a4, $xr2, 3
	slli.d	$a4, $a4, 2
	xvpickve2gr.d	$a7, $xr3, 0
	slli.d	$a7, $a7, 2
	xvpickve2gr.d	$t0, $xr3, 1
	slli.d	$t0, $t0, 2
	xvpickve2gr.d	$t2, $xr3, 2
	slli.d	$t2, $t2, 2
	xvpickve2gr.d	$t3, $xr3, 3
	slli.d	$t3, $t3, 2
	xvpickve2gr.d	$s2, $xr4, 0
	slli.d	$s2, $s2, 2
	xvpickve2gr.d	$s3, $xr4, 1
	slli.d	$s3, $s3, 2
	xvpickve2gr.d	$s4, $xr4, 2
	slli.d	$s4, $s4, 2
	xvpickve2gr.d	$s5, $xr4, 3
	slli.d	$s5, $s5, 2
	xvpickve2gr.d	$s6, $xr5, 0
	slli.d	$s6, $s6, 2
	xvpickve2gr.d	$s7, $xr5, 1
	slli.d	$s7, $s7, 2
	xvpickve2gr.d	$s8, $xr5, 2
	slli.d	$s8, $s8, 2
	xvpickve2gr.d	$ra, $xr5, 3
	slli.d	$ra, $ra, 2
	ldx.w	$a1, $fp, $a1
	ldx.w	$a2, $fp, $a2
	ldx.w	$a3, $fp, $a3
	ldx.w	$a4, $fp, $a4
	ldx.w	$a7, $fp, $a7
	ldx.w	$t0, $fp, $t0
	ldx.w	$t2, $fp, $t2
	ldx.w	$t3, $fp, $t3
	xvinsgr2vr.w	$xr2, $a1, 0
	xvinsgr2vr.w	$xr2, $a2, 1
	xvinsgr2vr.w	$xr2, $a3, 2
	xvinsgr2vr.w	$xr2, $a4, 3
	xvinsgr2vr.w	$xr2, $a7, 4
	xvinsgr2vr.w	$xr2, $t0, 5
	xvinsgr2vr.w	$xr2, $t2, 6
	xvinsgr2vr.w	$xr2, $t3, 7
	ldx.w	$a1, $fp, $s2
	ldx.w	$a2, $fp, $s3
	ldx.w	$a3, $fp, $s4
	ldx.w	$a4, $fp, $s5
	ldx.w	$a7, $fp, $s6
	ldx.w	$t0, $fp, $s7
	ldx.w	$t2, $fp, $s8
	ldx.w	$t3, $fp, $ra
	xvinsgr2vr.w	$xr3, $a1, 0
	xvinsgr2vr.w	$xr3, $a2, 1
	xvinsgr2vr.w	$xr3, $a3, 2
	xvinsgr2vr.w	$xr3, $a4, 3
	xvinsgr2vr.w	$xr3, $a7, 4
	xvinsgr2vr.w	$xr3, $t0, 5
	xvinsgr2vr.w	$xr3, $t2, 6
	xvinsgr2vr.w	$xr3, $t3, 7
	xvadd.w	$xr1, $xr2, $xr1
	xvadd.w	$xr0, $xr3, $xr0
	addi.d	$t4, $t4, 32
	addi.d	$s0, $s0, -16
	addi.d	$a0, $a0, 32
	bnez	$s0, .LBB4_114
# %bb.115:                              # %middle.block1199
                                        #   in Loop: Header=BB4_90 Depth=3
	xvadd.w	$xr0, $xr0, $xr1
	xvpermi.d	$xr1, $xr0, 78
	xvshuf4i.w	$xr1, $xr1, 228
	xvadd.w	$xr0, $xr0, $xr1
	xvpermi.d	$xr1, $xr0, 68
	xvshuf4i.w	$xr1, $xr1, 14
	xvadd.w	$xr0, $xr0, $xr1
	xvpermi.d	$xr1, $xr0, 68
	xvrepl128vei.w	$xr1, $xr1, 1
	xvadd.w	$xr0, $xr0, $xr1
	xvpickve2gr.w	$t4, $xr0, 0
	ld.d	$s2, $sp, 424                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 440                   # 8-byte Folded Reload
	beq	$t1, $a0, .LBB4_89
.LBB4_116:                              # %.lr.ph609.us.preheader1286
                                        #   in Loop: Header=BB4_90 Depth=3
	move	$a0, $s1
	move	$s0, $t8
	.p2align	4, , 16
.LBB4_117:                              # %.lr.ph609.us
                                        #   Parent Loop BB4_27 Depth=1
                                        #     Parent Loop BB4_86 Depth=2
                                        #       Parent Loop BB4_90 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.hu	$a1, $s0, 0
	ld.hu	$a2, $a0, 0
	sub.d	$a1, $a1, $a2
	slli.d	$a1, $a1, 2
	ldx.w	$a1, $fp, $a1
	addi.d	$t8, $s0, 2
	addi.d	$s1, $a0, 2
	addi.w	$s2, $s2, 4
	add.d	$t4, $a1, $t4
	move	$a0, $s1
	move	$s0, $t8
	blt	$s2, $a5, .LBB4_117
	b	.LBB4_89
	.p2align	4, , 16
.LBB4_118:                              # %._crit_edge610.preheader
                                        #   in Loop: Header=BB4_86 Depth=2
	slli.d	$a7, $a7, 1
	slli.d	$a5, $a5, 1
	sub.d	$a5, $a7, $a5
	.p2align	4, , 16
.LBB4_119:                              # %._crit_edge610
                                        #   Parent Loop BB4_27 Depth=1
                                        #     Parent Loop BB4_86 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	addi.w	$a6, $a6, 4
	add.d	$a0, $a0, $a5
	blt	$a6, $a3, .LBB4_119
	b	.LBB4_84
	.p2align	4, , 16
.LBB4_120:                              # %.preheader551.1
                                        #   in Loop: Header=BB4_27 Depth=1
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	slli.d	$a0, $a0, 3
	ld.d	$a1, $sp, 376                   # 8-byte Folded Reload
	ldx.d	$a3, $a1, $a0
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 16
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 208                   # 8-byte Folded Reload
	jirl	$ra, $a3, 0
	ld.d	$a1, $sp, 200                   # 8-byte Folded Reload
	ld.d	$a2, $a1, 0
	move	$a6, $zero
	move	$a4, $zero
	st.d	$a2, $sp, 384                   # 8-byte Folded Spill
	b	.LBB4_123
	.p2align	4, , 16
.LBB4_121:                              #   in Loop: Header=BB4_123 Depth=2
	move	$t5, $zero
	move	$t4, $zero
	move	$t6, $zero
	move	$t7, $zero
.LBB4_122:                              # %._crit_edge621.1
                                        #   in Loop: Header=BB4_123 Depth=2
	ld.d	$a6, $sp, 400                   # 8-byte Folded Reload
	slli.d	$a1, $a6, 3
	ld.d	$a3, $sp, 304                   # 8-byte Folded Reload
	ldx.d	$a1, $a3, $a1
	ld.d	$a5, $sp, 312                   # 8-byte Folded Reload
	ldx.w	$a2, $a1, $a5
	alsl.d	$a3, $a6, $a3, 3
	ld.d	$a4, $a3, 8
	add.d	$a2, $a2, $t7
	stx.w	$a2, $a1, $a5
	ldx.w	$a1, $a4, $a5
	ld.d	$a2, $a3, 16
	add.d	$a1, $a1, $t6
	stx.w	$a1, $a4, $a5
	ldx.w	$a1, $a2, $a5
	ld.d	$a3, $a3, 24
	add.d	$a1, $a1, $t5
	stx.w	$a1, $a2, $a5
	ldx.w	$a1, $a3, $a5
	addi.d	$a6, $a6, 4
	add.d	$a1, $a1, $t4
	ld.d	$a4, $sp, 392                   # 8-byte Folded Reload
	addi.w	$a4, $a4, 1
	stx.w	$a1, $a3, $a5
	ori	$a1, $zero, 4
	ld.d	$a2, $sp, 384                   # 8-byte Folded Reload
	beq	$a4, $a1, .LBB4_26
.LBB4_123:                              # %.preheader547.1
                                        #   Parent Loop BB4_27 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_156 Depth 3
                                        #       Child Loop BB4_127 Depth 3
                                        #         Child Loop BB4_130 Depth 4
                                        #         Child Loop BB4_133 Depth 4
                                        #         Child Loop BB4_137 Depth 4
                                        #         Child Loop BB4_140 Depth 4
                                        #         Child Loop BB4_144 Depth 4
                                        #         Child Loop BB4_147 Depth 4
                                        #         Child Loop BB4_151 Depth 4
                                        #         Child Loop BB4_154 Depth 4
	ldptr.w	$a3, $a2, 15548
	ori	$a1, $zero, 1
	st.d	$a6, $sp, 400                   # 8-byte Folded Spill
	st.d	$a4, $sp, 392                   # 8-byte Folded Spill
	blt	$a3, $a1, .LBB4_121
# %bb.124:                              # %.preheader545.lr.ph.1
                                        #   in Loop: Header=BB4_123 Depth=2
	ldptr.w	$a5, $a2, 15544
	ld.d	$a1, $sp, 296                   # 8-byte Folded Reload
	ld.w	$a7, $a1, %pc_lo12(img_cr_padded_size_x)
	move	$a6, $zero
	blez	$a5, .LBB4_155
# %bb.125:                              # %.preheader545.us.1.preheader
                                        #   in Loop: Header=BB4_123 Depth=2
	move	$t7, $zero
	move	$t6, $zero
	move	$t4, $zero
	move	$t5, $zero
	sub.w	$a1, $a7, $a5
	st.d	$a1, $sp, 408                   # 8-byte Folded Spill
	addi.d	$t0, $a5, -1
	bstrpick.d	$t0, $t0, 31, 2
	addi.d	$a1, $t0, 1
	st.d	$a1, $sp, 440                   # 8-byte Folded Spill
	bstrpick.d	$t3, $a1, 30, 4
	slli.d	$t1, $t3, 4
	slli.d	$a1, $t3, 5
	st.d	$a1, $sp, 432                   # 8-byte Folded Spill
	slli.d	$a1, $t3, 6
	st.d	$a1, $sp, 424                   # 8-byte Folded Spill
	st.d	$a3, $sp, 416                   # 8-byte Folded Spill
	b	.LBB4_127
	.p2align	4, , 16
.LBB4_126:                              # %._crit_edge610.us.1
                                        #   in Loop: Header=BB4_127 Depth=3
	addi.w	$a6, $a6, 4
	ld.d	$a1, $sp, 408                   # 8-byte Folded Reload
	alsl.d	$a0, $a1, $a0, 1
	ld.d	$a3, $sp, 416                   # 8-byte Folded Reload
	bge	$a6, $a3, .LBB4_122
.LBB4_127:                              # %.preheader545.us.1
                                        #   Parent Loop BB4_27 Depth=1
                                        #     Parent Loop BB4_123 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB4_130 Depth 4
                                        #         Child Loop BB4_133 Depth 4
                                        #         Child Loop BB4_137 Depth 4
                                        #         Child Loop BB4_140 Depth 4
                                        #         Child Loop BB4_144 Depth 4
                                        #         Child Loop BB4_147 Depth 4
                                        #         Child Loop BB4_151 Depth 4
                                        #         Child Loop BB4_154 Depth 4
	ori	$a1, $zero, 61
	bgeu	$a5, $a1, .LBB4_129
# %bb.128:                              #   in Loop: Header=BB4_127 Depth=3
	move	$s2, $zero
	move	$t8, $s1
	move	$s0, $a0
	b	.LBB4_132
	.p2align	4, , 16
.LBB4_129:                              # %vector.ph1156
                                        #   in Loop: Header=BB4_127 Depth=3
	ld.d	$a1, $sp, 432                   # 8-byte Folded Reload
	add.d	$t8, $s1, $a1
	xvrepli.b	$xr0, 0
	add.d	$s0, $a0, $a1
	xvori.b	$xr1, $xr0, 0
	xvinsgr2vr.w	$xr1, $t7, 0
	addi.d	$a0, $a0, 16
	addi.d	$t7, $s1, 16
	move	$s1, $t1
	.p2align	4, , 16
.LBB4_130:                              # %vector.body1160
                                        #   Parent Loop BB4_27 Depth=1
                                        #     Parent Loop BB4_123 Depth=2
                                        #       Parent Loop BB4_127 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	vld	$vr4, $a0, -16
	vld	$vr6, $a0, 0
	vpickve2gr.h	$s2, $vr4, 0
	bstrpick.d	$s2, $s2, 15, 0
	bstrpick.d	$s2, $s2, 15, 0
	xvinsgr2vr.d	$xr2, $s2, 0
	vpickve2gr.h	$s2, $vr4, 1
	bstrpick.d	$s2, $s2, 15, 0
	bstrpick.d	$s2, $s2, 15, 0
	xvinsgr2vr.d	$xr2, $s2, 1
	vpickve2gr.h	$s2, $vr4, 2
	bstrpick.d	$s2, $s2, 15, 0
	bstrpick.d	$s2, $s2, 15, 0
	xvinsgr2vr.d	$xr2, $s2, 2
	vpickve2gr.h	$s2, $vr4, 3
	bstrpick.d	$s2, $s2, 15, 0
	bstrpick.d	$s2, $s2, 15, 0
	xvinsgr2vr.d	$xr2, $s2, 3
	vpickve2gr.h	$s2, $vr4, 4
	bstrpick.d	$s2, $s2, 15, 0
	bstrpick.d	$s2, $s2, 15, 0
	xvinsgr2vr.d	$xr3, $s2, 0
	vpickve2gr.h	$s2, $vr4, 5
	bstrpick.d	$s2, $s2, 15, 0
	bstrpick.d	$s2, $s2, 15, 0
	xvinsgr2vr.d	$xr3, $s2, 1
	vpickve2gr.h	$s2, $vr4, 6
	bstrpick.d	$s2, $s2, 15, 0
	bstrpick.d	$s2, $s2, 15, 0
	xvinsgr2vr.d	$xr3, $s2, 2
	vpickve2gr.h	$s2, $vr4, 7
	bstrpick.d	$s2, $s2, 15, 0
	bstrpick.d	$s2, $s2, 15, 0
	xvinsgr2vr.d	$xr3, $s2, 3
	vpickve2gr.h	$s2, $vr6, 0
	bstrpick.d	$s2, $s2, 15, 0
	bstrpick.d	$s2, $s2, 15, 0
	xvinsgr2vr.d	$xr4, $s2, 0
	vpickve2gr.h	$s2, $vr6, 1
	bstrpick.d	$s2, $s2, 15, 0
	bstrpick.d	$s2, $s2, 15, 0
	xvinsgr2vr.d	$xr4, $s2, 1
	vpickve2gr.h	$s2, $vr6, 2
	bstrpick.d	$s2, $s2, 15, 0
	bstrpick.d	$s2, $s2, 15, 0
	xvinsgr2vr.d	$xr4, $s2, 2
	vpickve2gr.h	$s2, $vr6, 3
	bstrpick.d	$s2, $s2, 15, 0
	bstrpick.d	$s2, $s2, 15, 0
	xvinsgr2vr.d	$xr4, $s2, 3
	vpickve2gr.h	$s2, $vr6, 4
	bstrpick.d	$s2, $s2, 15, 0
	bstrpick.d	$s2, $s2, 15, 0
	xvinsgr2vr.d	$xr5, $s2, 0
	vpickve2gr.h	$s2, $vr6, 5
	bstrpick.d	$s2, $s2, 15, 0
	bstrpick.d	$s2, $s2, 15, 0
	xvinsgr2vr.d	$xr5, $s2, 1
	vpickve2gr.h	$s2, $vr6, 6
	bstrpick.d	$s2, $s2, 15, 0
	bstrpick.d	$s2, $s2, 15, 0
	xvinsgr2vr.d	$xr5, $s2, 2
	vpickve2gr.h	$s2, $vr6, 7
	bstrpick.d	$s2, $s2, 15, 0
	vld	$vr8, $t7, -16
	bstrpick.d	$s2, $s2, 15, 0
	xvinsgr2vr.d	$xr5, $s2, 3
	vld	$vr7, $t7, 0
	vpickve2gr.h	$s2, $vr8, 0
	bstrpick.d	$s2, $s2, 15, 0
	bstrpick.d	$s2, $s2, 15, 0
	xvinsgr2vr.d	$xr6, $s2, 0
	vpickve2gr.h	$s2, $vr8, 1
	bstrpick.d	$s2, $s2, 15, 0
	bstrpick.d	$s2, $s2, 15, 0
	xvinsgr2vr.d	$xr6, $s2, 1
	vpickve2gr.h	$s2, $vr8, 2
	bstrpick.d	$s2, $s2, 15, 0
	bstrpick.d	$s2, $s2, 15, 0
	xvinsgr2vr.d	$xr6, $s2, 2
	vpickve2gr.h	$s2, $vr8, 3
	bstrpick.d	$s2, $s2, 15, 0
	bstrpick.d	$s2, $s2, 15, 0
	xvinsgr2vr.d	$xr6, $s2, 3
	vpickve2gr.h	$s2, $vr8, 4
	bstrpick.d	$s2, $s2, 15, 0
	bstrpick.d	$s2, $s2, 15, 0
	xvinsgr2vr.d	$xr9, $s2, 0
	vpickve2gr.h	$s2, $vr8, 5
	bstrpick.d	$s2, $s2, 15, 0
	bstrpick.d	$s2, $s2, 15, 0
	xvinsgr2vr.d	$xr9, $s2, 1
	vpickve2gr.h	$s2, $vr8, 6
	bstrpick.d	$s2, $s2, 15, 0
	bstrpick.d	$s2, $s2, 15, 0
	xvinsgr2vr.d	$xr9, $s2, 2
	vpickve2gr.h	$s2, $vr8, 7
	bstrpick.d	$s2, $s2, 15, 0
	bstrpick.d	$s2, $s2, 15, 0
	xvinsgr2vr.d	$xr9, $s2, 3
	vpickve2gr.h	$s2, $vr7, 0
	bstrpick.d	$s2, $s2, 15, 0
	bstrpick.d	$s2, $s2, 15, 0
	xvinsgr2vr.d	$xr8, $s2, 0
	vpickve2gr.h	$s2, $vr7, 1
	bstrpick.d	$s2, $s2, 15, 0
	bstrpick.d	$s2, $s2, 15, 0
	xvinsgr2vr.d	$xr8, $s2, 1
	vpickve2gr.h	$s2, $vr7, 2
	bstrpick.d	$s2, $s2, 15, 0
	bstrpick.d	$s2, $s2, 15, 0
	xvinsgr2vr.d	$xr8, $s2, 2
	vpickve2gr.h	$s2, $vr7, 3
	bstrpick.d	$s2, $s2, 15, 0
	bstrpick.d	$s2, $s2, 15, 0
	xvinsgr2vr.d	$xr8, $s2, 3
	vpickve2gr.h	$s2, $vr7, 4
	bstrpick.d	$s2, $s2, 15, 0
	bstrpick.d	$s2, $s2, 15, 0
	xvinsgr2vr.d	$xr10, $s2, 0
	vpickve2gr.h	$s2, $vr7, 5
	bstrpick.d	$s2, $s2, 15, 0
	bstrpick.d	$s2, $s2, 15, 0
	xvinsgr2vr.d	$xr10, $s2, 1
	vpickve2gr.h	$s2, $vr7, 6
	bstrpick.d	$s2, $s2, 15, 0
	bstrpick.d	$s2, $s2, 15, 0
	xvinsgr2vr.d	$xr10, $s2, 2
	vpickve2gr.h	$s2, $vr7, 7
	bstrpick.d	$s2, $s2, 15, 0
	bstrpick.d	$s2, $s2, 15, 0
	xvinsgr2vr.d	$xr10, $s2, 3
	xvsub.d	$xr3, $xr3, $xr9
	xvsub.d	$xr2, $xr2, $xr6
	xvsub.d	$xr5, $xr5, $xr10
	xvsub.d	$xr4, $xr4, $xr8
	xvpickve2gr.d	$s2, $xr2, 0
	slli.d	$s2, $s2, 2
	xvpickve2gr.d	$s3, $xr2, 1
	slli.d	$s3, $s3, 2
	xvpickve2gr.d	$s4, $xr2, 2
	slli.d	$s4, $s4, 2
	xvpickve2gr.d	$s5, $xr2, 3
	slli.d	$s5, $s5, 2
	xvpickve2gr.d	$s6, $xr3, 0
	slli.d	$s6, $s6, 2
	xvpickve2gr.d	$s7, $xr3, 1
	slli.d	$s7, $s7, 2
	xvpickve2gr.d	$s8, $xr3, 2
	slli.d	$s8, $s8, 2
	xvpickve2gr.d	$ra, $xr3, 3
	slli.d	$ra, $ra, 2
	xvpickve2gr.d	$a1, $xr4, 0
	slli.d	$a1, $a1, 2
	xvpickve2gr.d	$a3, $xr4, 1
	slli.d	$a3, $a3, 2
	xvpickve2gr.d	$a2, $xr4, 2
	slli.d	$a2, $a2, 2
	xvpickve2gr.d	$a7, $xr4, 3
	slli.d	$a7, $a7, 2
	xvpickve2gr.d	$a4, $xr5, 0
	slli.d	$a4, $a4, 2
	xvpickve2gr.d	$t3, $xr5, 1
	slli.d	$t3, $t3, 2
	xvpickve2gr.d	$t0, $xr5, 2
	slli.d	$t0, $t0, 2
	xvpickve2gr.d	$t2, $xr5, 3
	slli.d	$t2, $t2, 2
	ldx.w	$s2, $fp, $s2
	ldx.w	$s3, $fp, $s3
	ldx.w	$s4, $fp, $s4
	ldx.w	$s5, $fp, $s5
	ldx.w	$s6, $fp, $s6
	ldx.w	$s7, $fp, $s7
	ldx.w	$s8, $fp, $s8
	ldx.w	$ra, $fp, $ra
	xvinsgr2vr.w	$xr2, $s2, 0
	xvinsgr2vr.w	$xr2, $s3, 1
	xvinsgr2vr.w	$xr2, $s4, 2
	xvinsgr2vr.w	$xr2, $s5, 3
	xvinsgr2vr.w	$xr2, $s6, 4
	xvinsgr2vr.w	$xr2, $s7, 5
	xvinsgr2vr.w	$xr2, $s8, 6
	xvinsgr2vr.w	$xr2, $ra, 7
	ldx.w	$a1, $fp, $a1
	ldx.w	$a3, $fp, $a3
	ldx.w	$a2, $fp, $a2
	ldx.w	$a7, $fp, $a7
	ldx.w	$a4, $fp, $a4
	ldx.w	$t3, $fp, $t3
	ldx.w	$t0, $fp, $t0
	ldx.w	$t2, $fp, $t2
	xvinsgr2vr.w	$xr3, $a1, 0
	xvinsgr2vr.w	$xr3, $a3, 1
	xvinsgr2vr.w	$xr3, $a2, 2
	xvinsgr2vr.w	$xr3, $a7, 3
	xvinsgr2vr.w	$xr3, $a4, 4
	xvinsgr2vr.w	$xr3, $t3, 5
	xvinsgr2vr.w	$xr3, $t0, 6
	xvinsgr2vr.w	$xr3, $t2, 7
	xvadd.w	$xr1, $xr2, $xr1
	xvadd.w	$xr0, $xr3, $xr0
	addi.d	$a0, $a0, 32
	addi.d	$s1, $s1, -16
	addi.d	$t7, $t7, 32
	bnez	$s1, .LBB4_130
# %bb.131:                              # %middle.block1173
                                        #   in Loop: Header=BB4_127 Depth=3
	xvadd.w	$xr0, $xr0, $xr1
	xvpermi.d	$xr1, $xr0, 78
	xvshuf4i.w	$xr1, $xr1, 228
	xvadd.w	$xr0, $xr0, $xr1
	xvpermi.d	$xr1, $xr0, 68
	xvshuf4i.w	$xr1, $xr1, 14
	xvadd.w	$xr0, $xr0, $xr1
	xvpermi.d	$xr1, $xr0, 68
	xvrepl128vei.w	$xr1, $xr1, 1
	xvadd.w	$xr0, $xr0, $xr1
	xvpickve2gr.w	$t7, $xr0, 0
	ld.d	$s2, $sp, 424                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 440                   # 8-byte Folded Reload
	beq	$t1, $a0, .LBB4_134
.LBB4_132:                              # %scalar.ph1154.preheader
                                        #   in Loop: Header=BB4_127 Depth=3
	move	$a0, $t8
	move	$s1, $s0
	.p2align	4, , 16
.LBB4_133:                              # %scalar.ph1154
                                        #   Parent Loop BB4_27 Depth=1
                                        #     Parent Loop BB4_123 Depth=2
                                        #       Parent Loop BB4_127 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.hu	$a1, $s1, 0
	ld.hu	$a2, $a0, 0
	sub.d	$a1, $a1, $a2
	slli.d	$a1, $a1, 2
	ldx.w	$a1, $fp, $a1
	addi.d	$s0, $s1, 2
	addi.d	$t8, $a0, 2
	addi.w	$s2, $s2, 4
	add.d	$t7, $a1, $t7
	move	$a0, $t8
	move	$s1, $s0
	blt	$s2, $a5, .LBB4_133
.LBB4_134:                              # %.lr.ph593.us.preheader.1
                                        #   in Loop: Header=BB4_127 Depth=3
	ori	$a0, $zero, 61
	bgeu	$a5, $a0, .LBB4_136
# %bb.135:                              #   in Loop: Header=BB4_127 Depth=3
	move	$s2, $zero
	move	$a0, $t8
	move	$s1, $s0
	b	.LBB4_139
	.p2align	4, , 16
.LBB4_136:                              # %vector.ph1130
                                        #   in Loop: Header=BB4_127 Depth=3
	ld.d	$a1, $sp, 432                   # 8-byte Folded Reload
	add.d	$a0, $t8, $a1
	xvrepli.b	$xr0, 0
	add.d	$s1, $s0, $a1
	xvori.b	$xr1, $xr0, 0
	xvinsgr2vr.w	$xr1, $t6, 0
	addi.d	$t6, $s0, 16
	addi.d	$t8, $t8, 16
	move	$s0, $t1
	.p2align	4, , 16
.LBB4_137:                              # %vector.body1134
                                        #   Parent Loop BB4_27 Depth=1
                                        #     Parent Loop BB4_123 Depth=2
                                        #       Parent Loop BB4_127 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	vld	$vr4, $t6, -16
	vld	$vr6, $t6, 0
	vpickve2gr.h	$a1, $vr4, 0
	bstrpick.d	$a1, $a1, 15, 0
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.d	$xr2, $a1, 0
	vpickve2gr.h	$a1, $vr4, 1
	bstrpick.d	$a1, $a1, 15, 0
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.d	$xr2, $a1, 1
	vpickve2gr.h	$a1, $vr4, 2
	bstrpick.d	$a1, $a1, 15, 0
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.d	$xr2, $a1, 2
	vpickve2gr.h	$a1, $vr4, 3
	bstrpick.d	$a1, $a1, 15, 0
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.d	$xr2, $a1, 3
	vpickve2gr.h	$a1, $vr4, 4
	bstrpick.d	$a1, $a1, 15, 0
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.d	$xr3, $a1, 0
	vpickve2gr.h	$a1, $vr4, 5
	bstrpick.d	$a1, $a1, 15, 0
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.d	$xr3, $a1, 1
	vpickve2gr.h	$a1, $vr4, 6
	bstrpick.d	$a1, $a1, 15, 0
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.d	$xr3, $a1, 2
	vpickve2gr.h	$a1, $vr4, 7
	bstrpick.d	$a1, $a1, 15, 0
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.d	$xr3, $a1, 3
	vpickve2gr.h	$a1, $vr6, 0
	bstrpick.d	$a1, $a1, 15, 0
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.d	$xr4, $a1, 0
	vpickve2gr.h	$a1, $vr6, 1
	bstrpick.d	$a1, $a1, 15, 0
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.d	$xr4, $a1, 1
	vpickve2gr.h	$a1, $vr6, 2
	bstrpick.d	$a1, $a1, 15, 0
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.d	$xr4, $a1, 2
	vpickve2gr.h	$a1, $vr6, 3
	bstrpick.d	$a1, $a1, 15, 0
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.d	$xr4, $a1, 3
	vpickve2gr.h	$a1, $vr6, 4
	bstrpick.d	$a1, $a1, 15, 0
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.d	$xr5, $a1, 0
	vpickve2gr.h	$a1, $vr6, 5
	bstrpick.d	$a1, $a1, 15, 0
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.d	$xr5, $a1, 1
	vpickve2gr.h	$a1, $vr6, 6
	bstrpick.d	$a1, $a1, 15, 0
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.d	$xr5, $a1, 2
	vpickve2gr.h	$a1, $vr6, 7
	bstrpick.d	$a1, $a1, 15, 0
	vld	$vr8, $t8, -16
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.d	$xr5, $a1, 3
	vld	$vr7, $t8, 0
	vpickve2gr.h	$a1, $vr8, 0
	bstrpick.d	$a1, $a1, 15, 0
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.d	$xr6, $a1, 0
	vpickve2gr.h	$a1, $vr8, 1
	bstrpick.d	$a1, $a1, 15, 0
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.d	$xr6, $a1, 1
	vpickve2gr.h	$a1, $vr8, 2
	bstrpick.d	$a1, $a1, 15, 0
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.d	$xr6, $a1, 2
	vpickve2gr.h	$a1, $vr8, 3
	bstrpick.d	$a1, $a1, 15, 0
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.d	$xr6, $a1, 3
	vpickve2gr.h	$a1, $vr8, 4
	bstrpick.d	$a1, $a1, 15, 0
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.d	$xr9, $a1, 0
	vpickve2gr.h	$a1, $vr8, 5
	bstrpick.d	$a1, $a1, 15, 0
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.d	$xr9, $a1, 1
	vpickve2gr.h	$a1, $vr8, 6
	bstrpick.d	$a1, $a1, 15, 0
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.d	$xr9, $a1, 2
	vpickve2gr.h	$a1, $vr8, 7
	bstrpick.d	$a1, $a1, 15, 0
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.d	$xr9, $a1, 3
	vpickve2gr.h	$a1, $vr7, 0
	bstrpick.d	$a1, $a1, 15, 0
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.d	$xr8, $a1, 0
	vpickve2gr.h	$a1, $vr7, 1
	bstrpick.d	$a1, $a1, 15, 0
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.d	$xr8, $a1, 1
	vpickve2gr.h	$a1, $vr7, 2
	bstrpick.d	$a1, $a1, 15, 0
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.d	$xr8, $a1, 2
	vpickve2gr.h	$a1, $vr7, 3
	bstrpick.d	$a1, $a1, 15, 0
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.d	$xr8, $a1, 3
	vpickve2gr.h	$a1, $vr7, 4
	bstrpick.d	$a1, $a1, 15, 0
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.d	$xr10, $a1, 0
	vpickve2gr.h	$a1, $vr7, 5
	bstrpick.d	$a1, $a1, 15, 0
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.d	$xr10, $a1, 1
	vpickve2gr.h	$a1, $vr7, 6
	bstrpick.d	$a1, $a1, 15, 0
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.d	$xr10, $a1, 2
	vpickve2gr.h	$a1, $vr7, 7
	bstrpick.d	$a1, $a1, 15, 0
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.d	$xr10, $a1, 3
	xvsub.d	$xr3, $xr3, $xr9
	xvsub.d	$xr2, $xr2, $xr6
	xvsub.d	$xr5, $xr5, $xr10
	xvsub.d	$xr4, $xr4, $xr8
	xvpickve2gr.d	$a1, $xr2, 0
	slli.d	$a1, $a1, 2
	xvpickve2gr.d	$a2, $xr2, 1
	slli.d	$a2, $a2, 2
	xvpickve2gr.d	$a3, $xr2, 2
	slli.d	$a3, $a3, 2
	xvpickve2gr.d	$a4, $xr2, 3
	slli.d	$a4, $a4, 2
	xvpickve2gr.d	$a7, $xr3, 0
	slli.d	$a7, $a7, 2
	xvpickve2gr.d	$t0, $xr3, 1
	slli.d	$t0, $t0, 2
	xvpickve2gr.d	$t2, $xr3, 2
	slli.d	$t2, $t2, 2
	xvpickve2gr.d	$t3, $xr3, 3
	slli.d	$t3, $t3, 2
	xvpickve2gr.d	$s2, $xr4, 0
	slli.d	$s2, $s2, 2
	xvpickve2gr.d	$s3, $xr4, 1
	slli.d	$s3, $s3, 2
	xvpickve2gr.d	$s4, $xr4, 2
	slli.d	$s4, $s4, 2
	xvpickve2gr.d	$s5, $xr4, 3
	slli.d	$s5, $s5, 2
	xvpickve2gr.d	$s6, $xr5, 0
	slli.d	$s6, $s6, 2
	xvpickve2gr.d	$s7, $xr5, 1
	slli.d	$s7, $s7, 2
	xvpickve2gr.d	$s8, $xr5, 2
	slli.d	$s8, $s8, 2
	xvpickve2gr.d	$ra, $xr5, 3
	slli.d	$ra, $ra, 2
	ldx.w	$a1, $fp, $a1
	ldx.w	$a2, $fp, $a2
	ldx.w	$a3, $fp, $a3
	ldx.w	$a4, $fp, $a4
	ldx.w	$a7, $fp, $a7
	ldx.w	$t0, $fp, $t0
	ldx.w	$t2, $fp, $t2
	ldx.w	$t3, $fp, $t3
	xvinsgr2vr.w	$xr2, $a1, 0
	xvinsgr2vr.w	$xr2, $a2, 1
	xvinsgr2vr.w	$xr2, $a3, 2
	xvinsgr2vr.w	$xr2, $a4, 3
	xvinsgr2vr.w	$xr2, $a7, 4
	xvinsgr2vr.w	$xr2, $t0, 5
	xvinsgr2vr.w	$xr2, $t2, 6
	xvinsgr2vr.w	$xr2, $t3, 7
	ldx.w	$a1, $fp, $s2
	ldx.w	$a2, $fp, $s3
	ldx.w	$a3, $fp, $s4
	ldx.w	$a4, $fp, $s5
	ldx.w	$a7, $fp, $s6
	ldx.w	$t0, $fp, $s7
	ldx.w	$t2, $fp, $s8
	ldx.w	$t3, $fp, $ra
	xvinsgr2vr.w	$xr3, $a1, 0
	xvinsgr2vr.w	$xr3, $a2, 1
	xvinsgr2vr.w	$xr3, $a3, 2
	xvinsgr2vr.w	$xr3, $a4, 3
	xvinsgr2vr.w	$xr3, $a7, 4
	xvinsgr2vr.w	$xr3, $t0, 5
	xvinsgr2vr.w	$xr3, $t2, 6
	xvinsgr2vr.w	$xr3, $t3, 7
	xvadd.w	$xr1, $xr2, $xr1
	xvadd.w	$xr0, $xr3, $xr0
	addi.d	$t6, $t6, 32
	addi.d	$s0, $s0, -16
	addi.d	$t8, $t8, 32
	bnez	$s0, .LBB4_137
# %bb.138:                              # %middle.block1147
                                        #   in Loop: Header=BB4_127 Depth=3
	xvadd.w	$xr0, $xr0, $xr1
	xvpermi.d	$xr1, $xr0, 78
	xvshuf4i.w	$xr1, $xr1, 228
	xvadd.w	$xr0, $xr0, $xr1
	xvpermi.d	$xr1, $xr0, 68
	xvshuf4i.w	$xr1, $xr1, 14
	xvadd.w	$xr0, $xr0, $xr1
	xvpermi.d	$xr1, $xr0, 68
	xvrepl128vei.w	$xr1, $xr1, 1
	xvadd.w	$xr0, $xr0, $xr1
	xvpickve2gr.w	$t6, $xr0, 0
	ld.d	$s2, $sp, 424                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 440                   # 8-byte Folded Reload
	beq	$t1, $a1, .LBB4_141
.LBB4_139:                              # %.lr.ph593.us.1.preheader
                                        #   in Loop: Header=BB4_127 Depth=3
	move	$t8, $a0
	move	$s0, $s1
	.p2align	4, , 16
.LBB4_140:                              # %.lr.ph593.us.1
                                        #   Parent Loop BB4_27 Depth=1
                                        #     Parent Loop BB4_123 Depth=2
                                        #       Parent Loop BB4_127 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.hu	$a0, $s0, 0
	ld.hu	$a1, $t8, 0
	sub.d	$a0, $a0, $a1
	slli.d	$a0, $a0, 2
	ldx.w	$a1, $fp, $a0
	addi.d	$s1, $s0, 2
	addi.d	$a0, $t8, 2
	addi.w	$s2, $s2, 4
	add.d	$t6, $a1, $t6
	move	$t8, $a0
	move	$s0, $s1
	blt	$s2, $a5, .LBB4_140
.LBB4_141:                              # %.lr.ph601.us.preheader.1
                                        #   in Loop: Header=BB4_127 Depth=3
	ori	$a1, $zero, 61
	bgeu	$a5, $a1, .LBB4_143
# %bb.142:                              #   in Loop: Header=BB4_127 Depth=3
	move	$s2, $zero
	move	$t8, $a0
	move	$s0, $s1
	b	.LBB4_146
	.p2align	4, , 16
.LBB4_143:                              # %vector.ph1104
                                        #   in Loop: Header=BB4_127 Depth=3
	ld.d	$a1, $sp, 432                   # 8-byte Folded Reload
	add.d	$t8, $a0, $a1
	xvrepli.b	$xr0, 0
	add.d	$s0, $s1, $a1
	xvori.b	$xr1, $xr0, 0
	xvinsgr2vr.w	$xr1, $t5, 0
	addi.d	$t5, $s1, 16
	addi.d	$a0, $a0, 16
	move	$s1, $t1
	.p2align	4, , 16
.LBB4_144:                              # %vector.body1108
                                        #   Parent Loop BB4_27 Depth=1
                                        #     Parent Loop BB4_123 Depth=2
                                        #       Parent Loop BB4_127 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	vld	$vr4, $t5, -16
	vld	$vr6, $t5, 0
	vpickve2gr.h	$a1, $vr4, 0
	bstrpick.d	$a1, $a1, 15, 0
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.d	$xr2, $a1, 0
	vpickve2gr.h	$a1, $vr4, 1
	bstrpick.d	$a1, $a1, 15, 0
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.d	$xr2, $a1, 1
	vpickve2gr.h	$a1, $vr4, 2
	bstrpick.d	$a1, $a1, 15, 0
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.d	$xr2, $a1, 2
	vpickve2gr.h	$a1, $vr4, 3
	bstrpick.d	$a1, $a1, 15, 0
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.d	$xr2, $a1, 3
	vpickve2gr.h	$a1, $vr4, 4
	bstrpick.d	$a1, $a1, 15, 0
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.d	$xr3, $a1, 0
	vpickve2gr.h	$a1, $vr4, 5
	bstrpick.d	$a1, $a1, 15, 0
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.d	$xr3, $a1, 1
	vpickve2gr.h	$a1, $vr4, 6
	bstrpick.d	$a1, $a1, 15, 0
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.d	$xr3, $a1, 2
	vpickve2gr.h	$a1, $vr4, 7
	bstrpick.d	$a1, $a1, 15, 0
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.d	$xr3, $a1, 3
	vpickve2gr.h	$a1, $vr6, 0
	bstrpick.d	$a1, $a1, 15, 0
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.d	$xr4, $a1, 0
	vpickve2gr.h	$a1, $vr6, 1
	bstrpick.d	$a1, $a1, 15, 0
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.d	$xr4, $a1, 1
	vpickve2gr.h	$a1, $vr6, 2
	bstrpick.d	$a1, $a1, 15, 0
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.d	$xr4, $a1, 2
	vpickve2gr.h	$a1, $vr6, 3
	bstrpick.d	$a1, $a1, 15, 0
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.d	$xr4, $a1, 3
	vpickve2gr.h	$a1, $vr6, 4
	bstrpick.d	$a1, $a1, 15, 0
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.d	$xr5, $a1, 0
	vpickve2gr.h	$a1, $vr6, 5
	bstrpick.d	$a1, $a1, 15, 0
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.d	$xr5, $a1, 1
	vpickve2gr.h	$a1, $vr6, 6
	bstrpick.d	$a1, $a1, 15, 0
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.d	$xr5, $a1, 2
	vpickve2gr.h	$a1, $vr6, 7
	bstrpick.d	$a1, $a1, 15, 0
	vld	$vr8, $a0, -16
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.d	$xr5, $a1, 3
	vld	$vr7, $a0, 0
	vpickve2gr.h	$a1, $vr8, 0
	bstrpick.d	$a1, $a1, 15, 0
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.d	$xr6, $a1, 0
	vpickve2gr.h	$a1, $vr8, 1
	bstrpick.d	$a1, $a1, 15, 0
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.d	$xr6, $a1, 1
	vpickve2gr.h	$a1, $vr8, 2
	bstrpick.d	$a1, $a1, 15, 0
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.d	$xr6, $a1, 2
	vpickve2gr.h	$a1, $vr8, 3
	bstrpick.d	$a1, $a1, 15, 0
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.d	$xr6, $a1, 3
	vpickve2gr.h	$a1, $vr8, 4
	bstrpick.d	$a1, $a1, 15, 0
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.d	$xr9, $a1, 0
	vpickve2gr.h	$a1, $vr8, 5
	bstrpick.d	$a1, $a1, 15, 0
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.d	$xr9, $a1, 1
	vpickve2gr.h	$a1, $vr8, 6
	bstrpick.d	$a1, $a1, 15, 0
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.d	$xr9, $a1, 2
	vpickve2gr.h	$a1, $vr8, 7
	bstrpick.d	$a1, $a1, 15, 0
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.d	$xr9, $a1, 3
	vpickve2gr.h	$a1, $vr7, 0
	bstrpick.d	$a1, $a1, 15, 0
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.d	$xr8, $a1, 0
	vpickve2gr.h	$a1, $vr7, 1
	bstrpick.d	$a1, $a1, 15, 0
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.d	$xr8, $a1, 1
	vpickve2gr.h	$a1, $vr7, 2
	bstrpick.d	$a1, $a1, 15, 0
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.d	$xr8, $a1, 2
	vpickve2gr.h	$a1, $vr7, 3
	bstrpick.d	$a1, $a1, 15, 0
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.d	$xr8, $a1, 3
	vpickve2gr.h	$a1, $vr7, 4
	bstrpick.d	$a1, $a1, 15, 0
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.d	$xr10, $a1, 0
	vpickve2gr.h	$a1, $vr7, 5
	bstrpick.d	$a1, $a1, 15, 0
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.d	$xr10, $a1, 1
	vpickve2gr.h	$a1, $vr7, 6
	bstrpick.d	$a1, $a1, 15, 0
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.d	$xr10, $a1, 2
	vpickve2gr.h	$a1, $vr7, 7
	bstrpick.d	$a1, $a1, 15, 0
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.d	$xr10, $a1, 3
	xvsub.d	$xr3, $xr3, $xr9
	xvsub.d	$xr2, $xr2, $xr6
	xvsub.d	$xr5, $xr5, $xr10
	xvsub.d	$xr4, $xr4, $xr8
	xvpickve2gr.d	$a1, $xr2, 0
	slli.d	$a1, $a1, 2
	xvpickve2gr.d	$a2, $xr2, 1
	slli.d	$a2, $a2, 2
	xvpickve2gr.d	$a3, $xr2, 2
	slli.d	$a3, $a3, 2
	xvpickve2gr.d	$a4, $xr2, 3
	slli.d	$a4, $a4, 2
	xvpickve2gr.d	$a7, $xr3, 0
	slli.d	$a7, $a7, 2
	xvpickve2gr.d	$t0, $xr3, 1
	slli.d	$t0, $t0, 2
	xvpickve2gr.d	$t2, $xr3, 2
	slli.d	$t2, $t2, 2
	xvpickve2gr.d	$t3, $xr3, 3
	slli.d	$t3, $t3, 2
	xvpickve2gr.d	$s2, $xr4, 0
	slli.d	$s2, $s2, 2
	xvpickve2gr.d	$s3, $xr4, 1
	slli.d	$s3, $s3, 2
	xvpickve2gr.d	$s4, $xr4, 2
	slli.d	$s4, $s4, 2
	xvpickve2gr.d	$s5, $xr4, 3
	slli.d	$s5, $s5, 2
	xvpickve2gr.d	$s6, $xr5, 0
	slli.d	$s6, $s6, 2
	xvpickve2gr.d	$s7, $xr5, 1
	slli.d	$s7, $s7, 2
	xvpickve2gr.d	$s8, $xr5, 2
	slli.d	$s8, $s8, 2
	xvpickve2gr.d	$ra, $xr5, 3
	slli.d	$ra, $ra, 2
	ldx.w	$a1, $fp, $a1
	ldx.w	$a2, $fp, $a2
	ldx.w	$a3, $fp, $a3
	ldx.w	$a4, $fp, $a4
	ldx.w	$a7, $fp, $a7
	ldx.w	$t0, $fp, $t0
	ldx.w	$t2, $fp, $t2
	ldx.w	$t3, $fp, $t3
	xvinsgr2vr.w	$xr2, $a1, 0
	xvinsgr2vr.w	$xr2, $a2, 1
	xvinsgr2vr.w	$xr2, $a3, 2
	xvinsgr2vr.w	$xr2, $a4, 3
	xvinsgr2vr.w	$xr2, $a7, 4
	xvinsgr2vr.w	$xr2, $t0, 5
	xvinsgr2vr.w	$xr2, $t2, 6
	xvinsgr2vr.w	$xr2, $t3, 7
	ldx.w	$a1, $fp, $s2
	ldx.w	$a2, $fp, $s3
	ldx.w	$a3, $fp, $s4
	ldx.w	$a4, $fp, $s5
	ldx.w	$a7, $fp, $s6
	ldx.w	$t0, $fp, $s7
	ldx.w	$t2, $fp, $s8
	ldx.w	$t3, $fp, $ra
	xvinsgr2vr.w	$xr3, $a1, 0
	xvinsgr2vr.w	$xr3, $a2, 1
	xvinsgr2vr.w	$xr3, $a3, 2
	xvinsgr2vr.w	$xr3, $a4, 3
	xvinsgr2vr.w	$xr3, $a7, 4
	xvinsgr2vr.w	$xr3, $t0, 5
	xvinsgr2vr.w	$xr3, $t2, 6
	xvinsgr2vr.w	$xr3, $t3, 7
	xvadd.w	$xr1, $xr2, $xr1
	xvadd.w	$xr0, $xr3, $xr0
	addi.d	$t5, $t5, 32
	addi.d	$s1, $s1, -16
	addi.d	$a0, $a0, 32
	bnez	$s1, .LBB4_144
# %bb.145:                              # %middle.block1121
                                        #   in Loop: Header=BB4_127 Depth=3
	xvadd.w	$xr0, $xr0, $xr1
	xvpermi.d	$xr1, $xr0, 78
	xvshuf4i.w	$xr1, $xr1, 228
	xvadd.w	$xr0, $xr0, $xr1
	xvpermi.d	$xr1, $xr0, 68
	xvshuf4i.w	$xr1, $xr1, 14
	xvadd.w	$xr0, $xr0, $xr1
	xvpermi.d	$xr1, $xr0, 68
	xvrepl128vei.w	$xr1, $xr1, 1
	xvadd.w	$xr0, $xr0, $xr1
	xvpickve2gr.w	$t5, $xr0, 0
	ld.d	$s2, $sp, 424                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 440                   # 8-byte Folded Reload
	beq	$t1, $a0, .LBB4_148
.LBB4_146:                              # %.lr.ph601.us.1.preheader
                                        #   in Loop: Header=BB4_127 Depth=3
	move	$a0, $t8
	move	$s1, $s0
	.p2align	4, , 16
.LBB4_147:                              # %.lr.ph601.us.1
                                        #   Parent Loop BB4_27 Depth=1
                                        #     Parent Loop BB4_123 Depth=2
                                        #       Parent Loop BB4_127 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.hu	$a1, $s1, 0
	ld.hu	$a2, $a0, 0
	sub.d	$a1, $a1, $a2
	slli.d	$a1, $a1, 2
	ldx.w	$a1, $fp, $a1
	addi.d	$s0, $s1, 2
	addi.d	$t8, $a0, 2
	addi.w	$s2, $s2, 4
	add.d	$t5, $a1, $t5
	move	$a0, $t8
	move	$s1, $s0
	blt	$s2, $a5, .LBB4_147
.LBB4_148:                              # %.lr.ph609.us.preheader.1
                                        #   in Loop: Header=BB4_127 Depth=3
	ori	$a0, $zero, 61
	bgeu	$a5, $a0, .LBB4_150
# %bb.149:                              #   in Loop: Header=BB4_127 Depth=3
	move	$s2, $zero
	move	$s1, $t8
	move	$a0, $s0
	b	.LBB4_153
	.p2align	4, , 16
.LBB4_150:                              # %vector.ph1078
                                        #   in Loop: Header=BB4_127 Depth=3
	ld.d	$a0, $sp, 432                   # 8-byte Folded Reload
	add.d	$s1, $t8, $a0
	xvrepli.b	$xr0, 0
	add.d	$a0, $s0, $a0
	xvori.b	$xr1, $xr0, 0
	xvinsgr2vr.w	$xr1, $t4, 0
	addi.d	$t4, $s0, 16
	addi.d	$t8, $t8, 16
	move	$s0, $t1
	.p2align	4, , 16
.LBB4_151:                              # %vector.body1082
                                        #   Parent Loop BB4_27 Depth=1
                                        #     Parent Loop BB4_123 Depth=2
                                        #       Parent Loop BB4_127 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	vld	$vr4, $t4, -16
	vld	$vr6, $t4, 0
	vpickve2gr.h	$a1, $vr4, 0
	bstrpick.d	$a1, $a1, 15, 0
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.d	$xr2, $a1, 0
	vpickve2gr.h	$a1, $vr4, 1
	bstrpick.d	$a1, $a1, 15, 0
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.d	$xr2, $a1, 1
	vpickve2gr.h	$a1, $vr4, 2
	bstrpick.d	$a1, $a1, 15, 0
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.d	$xr2, $a1, 2
	vpickve2gr.h	$a1, $vr4, 3
	bstrpick.d	$a1, $a1, 15, 0
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.d	$xr2, $a1, 3
	vpickve2gr.h	$a1, $vr4, 4
	bstrpick.d	$a1, $a1, 15, 0
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.d	$xr3, $a1, 0
	vpickve2gr.h	$a1, $vr4, 5
	bstrpick.d	$a1, $a1, 15, 0
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.d	$xr3, $a1, 1
	vpickve2gr.h	$a1, $vr4, 6
	bstrpick.d	$a1, $a1, 15, 0
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.d	$xr3, $a1, 2
	vpickve2gr.h	$a1, $vr4, 7
	bstrpick.d	$a1, $a1, 15, 0
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.d	$xr3, $a1, 3
	vpickve2gr.h	$a1, $vr6, 0
	bstrpick.d	$a1, $a1, 15, 0
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.d	$xr4, $a1, 0
	vpickve2gr.h	$a1, $vr6, 1
	bstrpick.d	$a1, $a1, 15, 0
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.d	$xr4, $a1, 1
	vpickve2gr.h	$a1, $vr6, 2
	bstrpick.d	$a1, $a1, 15, 0
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.d	$xr4, $a1, 2
	vpickve2gr.h	$a1, $vr6, 3
	bstrpick.d	$a1, $a1, 15, 0
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.d	$xr4, $a1, 3
	vpickve2gr.h	$a1, $vr6, 4
	bstrpick.d	$a1, $a1, 15, 0
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.d	$xr5, $a1, 0
	vpickve2gr.h	$a1, $vr6, 5
	bstrpick.d	$a1, $a1, 15, 0
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.d	$xr5, $a1, 1
	vpickve2gr.h	$a1, $vr6, 6
	bstrpick.d	$a1, $a1, 15, 0
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.d	$xr5, $a1, 2
	vpickve2gr.h	$a1, $vr6, 7
	bstrpick.d	$a1, $a1, 15, 0
	vld	$vr8, $t8, -16
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.d	$xr5, $a1, 3
	vld	$vr7, $t8, 0
	vpickve2gr.h	$a1, $vr8, 0
	bstrpick.d	$a1, $a1, 15, 0
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.d	$xr6, $a1, 0
	vpickve2gr.h	$a1, $vr8, 1
	bstrpick.d	$a1, $a1, 15, 0
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.d	$xr6, $a1, 1
	vpickve2gr.h	$a1, $vr8, 2
	bstrpick.d	$a1, $a1, 15, 0
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.d	$xr6, $a1, 2
	vpickve2gr.h	$a1, $vr8, 3
	bstrpick.d	$a1, $a1, 15, 0
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.d	$xr6, $a1, 3
	vpickve2gr.h	$a1, $vr8, 4
	bstrpick.d	$a1, $a1, 15, 0
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.d	$xr9, $a1, 0
	vpickve2gr.h	$a1, $vr8, 5
	bstrpick.d	$a1, $a1, 15, 0
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.d	$xr9, $a1, 1
	vpickve2gr.h	$a1, $vr8, 6
	bstrpick.d	$a1, $a1, 15, 0
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.d	$xr9, $a1, 2
	vpickve2gr.h	$a1, $vr8, 7
	bstrpick.d	$a1, $a1, 15, 0
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.d	$xr9, $a1, 3
	vpickve2gr.h	$a1, $vr7, 0
	bstrpick.d	$a1, $a1, 15, 0
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.d	$xr8, $a1, 0
	vpickve2gr.h	$a1, $vr7, 1
	bstrpick.d	$a1, $a1, 15, 0
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.d	$xr8, $a1, 1
	vpickve2gr.h	$a1, $vr7, 2
	bstrpick.d	$a1, $a1, 15, 0
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.d	$xr8, $a1, 2
	vpickve2gr.h	$a1, $vr7, 3
	bstrpick.d	$a1, $a1, 15, 0
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.d	$xr8, $a1, 3
	vpickve2gr.h	$a1, $vr7, 4
	bstrpick.d	$a1, $a1, 15, 0
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.d	$xr10, $a1, 0
	vpickve2gr.h	$a1, $vr7, 5
	bstrpick.d	$a1, $a1, 15, 0
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.d	$xr10, $a1, 1
	vpickve2gr.h	$a1, $vr7, 6
	bstrpick.d	$a1, $a1, 15, 0
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.d	$xr10, $a1, 2
	vpickve2gr.h	$a1, $vr7, 7
	bstrpick.d	$a1, $a1, 15, 0
	bstrpick.d	$a1, $a1, 15, 0
	xvinsgr2vr.d	$xr10, $a1, 3
	xvsub.d	$xr3, $xr3, $xr9
	xvsub.d	$xr2, $xr2, $xr6
	xvsub.d	$xr5, $xr5, $xr10
	xvsub.d	$xr4, $xr4, $xr8
	xvpickve2gr.d	$a1, $xr2, 0
	slli.d	$a1, $a1, 2
	xvpickve2gr.d	$a2, $xr2, 1
	slli.d	$a2, $a2, 2
	xvpickve2gr.d	$a3, $xr2, 2
	slli.d	$a3, $a3, 2
	xvpickve2gr.d	$a4, $xr2, 3
	slli.d	$a4, $a4, 2
	xvpickve2gr.d	$a7, $xr3, 0
	slli.d	$a7, $a7, 2
	xvpickve2gr.d	$t0, $xr3, 1
	slli.d	$t0, $t0, 2
	xvpickve2gr.d	$t2, $xr3, 2
	slli.d	$t2, $t2, 2
	xvpickve2gr.d	$t3, $xr3, 3
	slli.d	$t3, $t3, 2
	xvpickve2gr.d	$s2, $xr4, 0
	slli.d	$s2, $s2, 2
	xvpickve2gr.d	$s3, $xr4, 1
	slli.d	$s3, $s3, 2
	xvpickve2gr.d	$s4, $xr4, 2
	slli.d	$s4, $s4, 2
	xvpickve2gr.d	$s5, $xr4, 3
	slli.d	$s5, $s5, 2
	xvpickve2gr.d	$s6, $xr5, 0
	slli.d	$s6, $s6, 2
	xvpickve2gr.d	$s7, $xr5, 1
	slli.d	$s7, $s7, 2
	xvpickve2gr.d	$s8, $xr5, 2
	slli.d	$s8, $s8, 2
	xvpickve2gr.d	$ra, $xr5, 3
	slli.d	$ra, $ra, 2
	ldx.w	$a1, $fp, $a1
	ldx.w	$a2, $fp, $a2
	ldx.w	$a3, $fp, $a3
	ldx.w	$a4, $fp, $a4
	ldx.w	$a7, $fp, $a7
	ldx.w	$t0, $fp, $t0
	ldx.w	$t2, $fp, $t2
	ldx.w	$t3, $fp, $t3
	xvinsgr2vr.w	$xr2, $a1, 0
	xvinsgr2vr.w	$xr2, $a2, 1
	xvinsgr2vr.w	$xr2, $a3, 2
	xvinsgr2vr.w	$xr2, $a4, 3
	xvinsgr2vr.w	$xr2, $a7, 4
	xvinsgr2vr.w	$xr2, $t0, 5
	xvinsgr2vr.w	$xr2, $t2, 6
	xvinsgr2vr.w	$xr2, $t3, 7
	ldx.w	$a1, $fp, $s2
	ldx.w	$a2, $fp, $s3
	ldx.w	$a3, $fp, $s4
	ldx.w	$a4, $fp, $s5
	ldx.w	$a7, $fp, $s6
	ldx.w	$t0, $fp, $s7
	ldx.w	$t2, $fp, $s8
	ldx.w	$t3, $fp, $ra
	xvinsgr2vr.w	$xr3, $a1, 0
	xvinsgr2vr.w	$xr3, $a2, 1
	xvinsgr2vr.w	$xr3, $a3, 2
	xvinsgr2vr.w	$xr3, $a4, 3
	xvinsgr2vr.w	$xr3, $a7, 4
	xvinsgr2vr.w	$xr3, $t0, 5
	xvinsgr2vr.w	$xr3, $t2, 6
	xvinsgr2vr.w	$xr3, $t3, 7
	xvadd.w	$xr1, $xr2, $xr1
	xvadd.w	$xr0, $xr3, $xr0
	addi.d	$t4, $t4, 32
	addi.d	$s0, $s0, -16
	addi.d	$t8, $t8, 32
	bnez	$s0, .LBB4_151
# %bb.152:                              # %middle.block1095
                                        #   in Loop: Header=BB4_127 Depth=3
	xvadd.w	$xr0, $xr0, $xr1
	xvpermi.d	$xr1, $xr0, 78
	xvshuf4i.w	$xr1, $xr1, 228
	xvadd.w	$xr0, $xr0, $xr1
	xvpermi.d	$xr1, $xr0, 68
	xvshuf4i.w	$xr1, $xr1, 14
	xvadd.w	$xr0, $xr0, $xr1
	xvpermi.d	$xr1, $xr0, 68
	xvrepl128vei.w	$xr1, $xr1, 1
	xvadd.w	$xr0, $xr0, $xr1
	xvpickve2gr.w	$t4, $xr0, 0
	ld.d	$s2, $sp, 424                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 440                   # 8-byte Folded Reload
	beq	$t1, $a1, .LBB4_126
.LBB4_153:                              # %.lr.ph609.us.1.preheader
                                        #   in Loop: Header=BB4_127 Depth=3
	move	$t8, $s1
	move	$s0, $a0
	.p2align	4, , 16
.LBB4_154:                              # %.lr.ph609.us.1
                                        #   Parent Loop BB4_27 Depth=1
                                        #     Parent Loop BB4_123 Depth=2
                                        #       Parent Loop BB4_127 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.hu	$a0, $s0, 0
	ld.hu	$a1, $t8, 0
	sub.d	$a0, $a0, $a1
	slli.d	$a0, $a0, 2
	ldx.w	$a1, $fp, $a0
	addi.d	$a0, $s0, 2
	addi.d	$s1, $t8, 2
	addi.w	$s2, $s2, 4
	add.d	$t4, $a1, $t4
	move	$t8, $s1
	move	$s0, $a0
	blt	$s2, $a5, .LBB4_154
	b	.LBB4_126
	.p2align	4, , 16
.LBB4_155:                              # %._crit_edge610.1.preheader
                                        #   in Loop: Header=BB4_123 Depth=2
	slli.d	$a7, $a7, 1
	slli.d	$a5, $a5, 1
	sub.d	$a5, $a7, $a5
	.p2align	4, , 16
.LBB4_156:                              # %._crit_edge610.1
                                        #   Parent Loop BB4_27 Depth=1
                                        #     Parent Loop BB4_123 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	addi.w	$a6, $a6, 4
	add.d	$a0, $a0, $a5
	blt	$a6, $a3, .LBB4_156
	b	.LBB4_121
.LBB4_157:
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
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
	ld.d	$s8, $sp, 456                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 464                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 472                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 480                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 488                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 496                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 504                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 512                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 520                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 528                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 536                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 544
	ret
.LBB4_158:
	pcalau12i	$a3, %got_pc_hi20(spiral_search_x)
	ld.d	$a3, $a3, %got_pc_lo12(spiral_search_x)
	pcalau12i	$a4, %got_pc_hi20(spiral_search_y)
	ld.d	$a4, $a4, %got_pc_lo12(spiral_search_y)
	ld.w	$a6, $a0, 192
	ld.w	$a7, $a0, 196
	ld.d	$a0, $a3, 0
	ld.d	$a3, $a4, 0
	move	$a4, $zero
	move	$a5, $zero
	sub.w	$a6, $a6, $t2
	sub.w	$a7, $a7, $t1
	b	.LBB4_160
	.p2align	4, , 16
.LBB4_159:                              #   in Loop: Header=BB4_160 Depth=1
	addi.d	$a5, $a5, 1
	addi.d	$a4, $a4, 1
	addi.d	$a3, $a3, 2
	addi.d	$a0, $a0, 2
	ld.d	$t0, $sp, 144                   # 8-byte Folded Reload
	bgeu	$a5, $t0, .LBB4_25
.LBB4_160:                              # =>This Inner Loop Header: Depth=1
	ld.h	$t0, $a0, 0
	bne	$a6, $t0, .LBB4_159
# %bb.161:                              #   in Loop: Header=BB4_160 Depth=1
	ld.h	$t0, $a3, 0
	bne	$a7, $t0, .LBB4_159
# %bb.162:
	pcalau12i	$a0, %pc_hi20(pos_00)
	ld.d	$a0, $a0, %pc_lo12(pos_00)
	ld.d	$a3, $sp, 40                    # 8-byte Folded Reload
	ldx.d	$a0, $a0, $a3
	ld.d	$a3, $sp, 32                    # 8-byte Folded Reload
	stx.w	$a4, $a0, $a3
	b	.LBB4_25
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
	pcalau12i	$a0, %got_pc_hi20(img)
	ld.d	$s4, $a0, %got_pc_lo12(img)
	ld.d	$a0, $s4, 0
	ld.w	$t0, $a0, 196
	ld.w	$t1, $a0, 192
	sub.d	$a0, $a4, $t0
	sub.w	$a3, $a3, $t1
	pcalau12i	$a4, %pc_hi20(BlockSAD)
	ld.d	$a4, $a4, %pc_lo12(BlockSAD)
	srli.d	$a3, $a3, 2
	add.w	$a0, $a0, $a3
	slli.d	$s2, $a2, 3
	ldx.d	$a3, $a4, $s2
	slli.d	$a4, $a1, 3
	pcalau12i	$t2, %pc_hi20(search_setup_done)
	ld.d	$t2, $t2, %pc_lo12(search_setup_done)
	ldx.d	$a3, $a3, $a4
	ld.d	$a4, $sp, 96
	slli.d	$a5, $a5, 3
	ldx.d	$t2, $t2, $s2
	ldx.d	$a3, $a3, $a5
	slli.d	$a0, $a0, 3
	slli.d	$s3, $a1, 2
	ldx.w	$a5, $t2, $s3
	ldx.d	$s1, $a3, $a0
	move	$fp, $a7
	move	$s0, $a6
	slli.d	$a0, $a4, 1
	addi.d	$s5, $a0, 1
	bnez	$a5, .LBB5_2
# %bb.1:
	move	$a0, $a1
	move	$a1, $a2
	pcaddu18i	$ra, %call36(SetupFastFullPelSearch)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s4, 0
	ld.w	$t1, $a0, 192
	ld.w	$t0, $a0, 196
.LBB5_2:
	ld.d	$a0, $sp, 112
	pcalau12i	$a1, %pc_hi20(search_center_x)
	ld.d	$a1, $a1, %pc_lo12(search_center_x)
	pcalau12i	$a2, %pc_hi20(search_center_y)
	ld.d	$a2, $a2, %pc_lo12(search_center_y)
	pcalau12i	$a3, %got_pc_hi20(input)
	ld.d	$a3, $a3, %got_pc_lo12(input)
	ld.d	$a5, $sp, 104
	ldx.d	$a1, $a1, $s2
	ldx.d	$a2, $a2, $s2
	ld.d	$a3, $a3, 0
	pcalau12i	$a4, %got_pc_hi20(mvbits)
	ld.d	$a4, $a4, %got_pc_lo12(mvbits)
	ldx.w	$a1, $a1, $s3
	ldx.w	$a6, $a2, $s3
	ldptr.w	$a7, $a3, 4168
	ld.d	$a3, $a4, 0
	sub.d	$a2, $a1, $t1
	sub.d	$a1, $a6, $t0
	mul.w	$a4, $s5, $s5
	beqz	$a7, .LBB5_4
# %bb.3:
	move	$a6, $zero
	b	.LBB5_5
.LBB5_4:
	pcalau12i	$a6, %pc_hi20(pos_00)
	ld.d	$a6, $a6, %pc_lo12(pos_00)
	ldx.d	$a6, $a6, $s2
	ldx.w	$a6, $a6, $s3
	slli.d	$a7, $s0, 2
	sub.d	$a7, $a3, $a7
	ld.w	$a7, $a7, 0
	slli.d	$t0, $fp, 2
	sub.d	$t0, $a3, $t0
	ld.w	$t0, $t0, 0
	slli.d	$t1, $a6, 2
	ldx.w	$t1, $s1, $t1
	add.d	$a7, $t0, $a7
	mul.w	$a7, $a7, $a0
	srli.d	$a7, $a7, 16
	add.w	$a7, $a7, $t1
	slt	$t0, $a7, $a5
	maskeqz	$a6, $a6, $t0
	maskeqz	$a7, $a7, $t0
	masknez	$a5, $a5, $t0
	or	$a5, $a7, $a5
.LBB5_5:
	pcalau12i	$a7, %got_pc_hi20(spiral_search_x)
	ld.d	$t0, $a7, %got_pc_lo12(spiral_search_x)
	pcalau12i	$a7, %got_pc_hi20(spiral_search_y)
	ld.d	$t2, $a7, %got_pc_lo12(spiral_search_y)
	ld.d	$a7, $sp, 88
	ld.d	$t1, $t0, 0
	ld.d	$t0, $t2, 0
	ld.d	$t2, $sp, 80
	move	$t3, $zero
	move	$t4, $zero
	move	$t5, $t1
	move	$t6, $t0
	b	.LBB5_7
	.p2align	4, , 16
.LBB5_6:                                #   in Loop: Header=BB5_7 Depth=1
	addi.d	$t4, $t4, 1
	addi.d	$s1, $s1, 4
	addi.d	$t6, $t6, 2
	addi.d	$t5, $t5, 2
	addi.w	$t3, $t3, 1
	bgeu	$t4, $a4, .LBB5_9
.LBB5_7:                                # =>This Inner Loop Header: Depth=1
	ld.w	$t8, $s1, 0
	addi.w	$t7, $a5, 0
	bge	$t8, $t7, .LBB5_6
# %bb.8:                                #   in Loop: Header=BB5_7 Depth=1
	ld.h	$a5, $t5, 0
	ld.h	$s2, $t6, 0
	add.d	$a5, $a2, $a5
	slli.d	$a5, $a5, 2
	add.d	$s2, $a1, $s2
	slli.d	$s2, $s2, 2
	sub.w	$a5, $a5, $s0
	slli.d	$a5, $a5, 2
	ldx.w	$a5, $a3, $a5
	sub.w	$s2, $s2, $fp
	slli.d	$s2, $s2, 2
	ldx.w	$s2, $a3, $s2
	add.d	$a5, $s2, $a5
	mul.w	$a5, $a5, $a0
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
	slli.d	$a0, $a6, 1
	ldx.h	$a3, $t1, $a0
	add.d	$a2, $a3, $a2
	st.h	$a2, $t2, 0
	ldx.h	$a0, $t0, $a0
	add.d	$a1, $a0, $a1
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
