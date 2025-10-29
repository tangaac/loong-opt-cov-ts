	.file	"traits.c"
	.text
	.globl	write_node_info                 # -- Begin function write_node_info
	.p2align	5
	.type	write_node_info,@function
write_node_info:                        # @write_node_info
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
	pcalau12i	$s2, %pc_hi20(trait_file)
	ld.d	$s0, $s2, %pc_lo12(trait_file)
	move	$fp, $a1
	bnez	$s0, .LBB0_2
# %bb.1:
	pcalau12i	$a1, %pc_hi20(.L.str)
	addi.d	$a2, $a1, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.1)
	addi.d	$a1, $a1, %pc_lo12(.L.str.1)
	move	$s1, $a0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(fopen)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	move	$a0, $s1
	st.d	$s0, $s2, %pc_lo12(trait_file)
	beqz	$s0, .LBB0_33
.LBB0_2:
	addi.d	$a1, $fp, -1
	sltui	$s1, $a1, 1
	pcaddu18i	$ra, %call36(u64bit_to_string)
	jirl	$ra, $ra, 0
	move	$a3, $a0
	ori	$a0, $zero, 72
	masknez	$a0, $a0, $s1
	ori	$a1, $zero, 86
	maskeqz	$a1, $a1, $s1
	or	$a2, $a1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a1, $a0, %pc_lo12(.L.str.3)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(g_board_size)
	ld.d	$s6, $a0, %got_pc_lo12(g_board_size)
	slli.d	$a0, $fp, 2
	ldx.w	$a0, $s6, $a0
	slli.d	$s4, $fp, 7
	lu12i.w	$s3, 31
	blez	$a0, .LBB0_5
# %bb.3:                                # %.lr.ph.i
	pcalau12i	$a1, %got_pc_hi20(g_board)
	ld.d	$a2, $a1, %got_pc_lo12(g_board)
	ldx.w	$a1, $a2, $s4
	add.d	$a2, $a2, $s4
	addi.d	$a3, $a2, 8
	pcalau12i	$a2, %got_pc_hi20(countbits16)
	ld.d	$a4, $a2, %got_pc_lo12(countbits16)
	move	$a2, $zero
	ori	$a5, $s3, 4092
	.p2align	4, , 16
.LBB0_4:                                # =>This Inner Loop Header: Depth=1
	ld.w	$a6, $a3, 0
	and	$a6, $a6, $a1
	ld.w	$a1, $a3, -4
	nor	$a7, $a1, $zero
	bstrpick.d	$t0, $a6, 31, 1
	and	$a6, $t0, $a6
	bstrpick.d	$a7, $a7, 31, 1
	or	$a6, $a6, $a1
	andn	$a6, $a7, $a6
	bstrpick.d	$a7, $a6, 15, 0
	slli.d	$a7, $a7, 2
	ldx.w	$a7, $a4, $a7
	srli.d	$a6, $a6, 14
	and	$a6, $a6, $a5
	ldx.w	$a6, $a4, $a6
	add.d	$a2, $a7, $a2
	add.w	$a2, $a2, $a6
	addi.d	$a0, $a0, -1
	addi.d	$a3, $a3, 4
	bnez	$a0, .LBB0_4
	b	.LBB0_6
.LBB0_5:
	move	$a2, $zero
.LBB0_6:                                # %tr_total_non_safe_moves.exit
	ld.d	$a0, $s2, %pc_lo12(trait_file)
	pcalau12i	$a1, %pc_hi20(.L.str.4)
	addi.d	$a1, $a1, %pc_lo12(.L.str.4)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	xori	$s0, $fp, 1
	slli.d	$a0, $s0, 2
	ldx.w	$a0, $s6, $a0
	blez	$a0, .LBB0_9
# %bb.7:                                # %.lr.ph.i20
	slli.d	$a2, $s0, 7
	pcalau12i	$a1, %got_pc_hi20(g_board)
	ld.d	$a3, $a1, %got_pc_lo12(g_board)
	ldx.w	$a1, $a3, $a2
	add.d	$a2, $a3, $a2
	addi.d	$a3, $a2, 8
	pcalau12i	$a2, %got_pc_hi20(countbits16)
	ld.d	$a4, $a2, %got_pc_lo12(countbits16)
	move	$a2, $zero
	ori	$a5, $s3, 4092
	.p2align	4, , 16
.LBB0_8:                                # =>This Inner Loop Header: Depth=1
	ld.w	$a6, $a3, 0
	and	$a6, $a6, $a1
	ld.w	$a1, $a3, -4
	nor	$a7, $a1, $zero
	bstrpick.d	$t0, $a6, 31, 1
	and	$a6, $t0, $a6
	bstrpick.d	$a7, $a7, 31, 1
	or	$a6, $a6, $a1
	andn	$a6, $a7, $a6
	bstrpick.d	$a7, $a6, 15, 0
	slli.d	$a7, $a7, 2
	ldx.w	$a7, $a4, $a7
	srli.d	$a6, $a6, 14
	and	$a6, $a6, $a5
	ldx.w	$a6, $a4, $a6
	add.d	$a2, $a7, $a2
	add.w	$a2, $a2, $a6
	addi.d	$a0, $a0, -1
	addi.d	$a3, $a3, 4
	bnez	$a0, .LBB0_8
	b	.LBB0_10
.LBB0_9:
	move	$a2, $zero
.LBB0_10:                               # %tr_total_non_safe_moves.exit27
	ld.d	$a0, $s2, %pc_lo12(trait_file)
	alsl.d	$s5, $fp, $s6, 2
	pcalau12i	$a1, %pc_hi20(.L.str.5)
	addi.d	$s1, $a1, %pc_lo12(.L.str.5)
	move	$a1, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(tr_non_safe_moves_a_little_touchy)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s2, %pc_lo12(trait_file)
	move	$a2, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$fp, $a0, %pc_lo12(.L.str.4)
	move	$a0, $a1
	move	$a1, $fp
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(tr_non_safe_moves_a_little_touchy)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s2, %pc_lo12(trait_file)
	move	$a2, $a0
	move	$a0, $a1
	move	$a1, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, %pc_lo12(trait_file)
	ori	$a2, $zero, 1
	ori	$s0, $zero, 1
	move	$a1, $fp
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, %pc_lo12(trait_file)
	ori	$a2, $zero, 1
	move	$a1, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s6, 0
	lu12i.w	$fp, -16
	blez	$a0, .LBB0_13
# %bb.11:                               # %.lr.ph.preheader.i
	bne	$a0, $s0, .LBB0_14
# %bb.12:
	move	$a1, $zero
	move	$a2, $zero
	b	.LBB0_17
.LBB0_13:
	move	$a2, $zero
	b	.LBB0_19
.LBB0_14:                               # %vector.ph
	pcalau12i	$a1, %got_pc_hi20(g_board)
	ld.d	$a1, $a1, %got_pc_lo12(g_board)
	addi.d	$a2, $a1, 8
	bstrpick.d	$a1, $a0, 30, 1
	slli.d	$a1, $a1, 1
	move	$a3, $fp
	lu32i.d	$a3, 0
	pcalau12i	$a4, %got_pc_hi20(countbits16)
	ld.d	$a4, $a4, %got_pc_lo12(countbits16)
	move	$a5, $zero
	move	$a6, $zero
	move	$a7, $a1
	.p2align	4, , 16
.LBB0_15:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$t0, $a2, -4
	ld.w	$t1, $a2, 0
	andn	$t2, $a3, $t0
	nor	$t0, $t0, $zero
	andn	$t3, $a3, $t1
	nor	$t1, $t1, $zero
	bstrpick.d	$t0, $t0, 15, 0
	bstrpick.d	$t1, $t1, 15, 0
	slli.d	$t0, $t0, 2
	slli.d	$t1, $t1, 2
	ldx.w	$t0, $a4, $t0
	ldx.w	$t1, $a4, $t1
	srli.d	$t2, $t2, 14
	srli.d	$t3, $t3, 14
	ldx.w	$t2, $a4, $t2
	ldx.w	$t3, $a4, $t3
	add.d	$a5, $t0, $a5
	add.d	$a6, $t1, $a6
	add.d	$a5, $a5, $t2
	add.d	$a6, $a6, $t3
	addi.d	$a7, $a7, -2
	addi.d	$a2, $a2, 8
	bnez	$a7, .LBB0_15
# %bb.16:                               # %middle.block
	add.w	$a2, $a6, $a5
	beq	$a1, $a0, .LBB0_19
.LBB0_17:                               # %.lr.ph.i29.preheader
	sub.d	$a0, $a0, $a1
	pcalau12i	$a3, %got_pc_hi20(g_board)
	ld.d	$a3, $a3, %got_pc_lo12(g_board)
	alsl.d	$a1, $a1, $a3, 2
	addi.d	$a1, $a1, 4
	move	$a3, $fp
	lu32i.d	$a3, 0
	pcalau12i	$a4, %got_pc_hi20(countbits16)
	ld.d	$a4, $a4, %got_pc_lo12(countbits16)
	.p2align	4, , 16
.LBB0_18:                               # %.lr.ph.i29
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a5, $a1, 0
	andn	$a6, $a3, $a5
	nor	$a5, $a5, $zero
	bstrpick.d	$a5, $a5, 15, 0
	slli.d	$a5, $a5, 2
	ldx.w	$a5, $a4, $a5
	srli.d	$a6, $a6, 14
	ldx.w	$a6, $a4, $a6
	add.d	$a2, $a5, $a2
	add.w	$a2, $a2, $a6
	addi.d	$a0, $a0, -1
	addi.d	$a1, $a1, 4
	bnez	$a0, .LBB0_18
.LBB0_19:                               # %tr_total_empty_squares.exit
	ld.d	$a0, $s2, %pc_lo12(trait_file)
	pcalau12i	$a1, %pc_hi20(.L.str.5)
	addi.d	$a1, $a1, %pc_lo12(.L.str.5)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a2, $s5, 0
	bltz	$a2, .LBB0_24
# %bb.20:                               # %.lr.ph.i33
	pcalau12i	$a0, %got_pc_hi20(g_board)
	ld.d	$a1, $a0, %got_pc_lo12(g_board)
	ldx.w	$a0, $a1, $s4
	addi.d	$a3, $a2, 1
	bstrpick.d	$a3, $a3, 31, 0
	beqz	$a2, .LBB0_25
# %bb.21:                               # %vector.ph69
	bstrpick.d	$a2, $a3, 31, 1
	slli.d	$a4, $a2, 1
	add.d	$a2, $s4, $a1
	addi.d	$a2, $a2, 8
	move	$a5, $fp
	lu32i.d	$a5, 0
	pcalau12i	$a6, %got_pc_hi20(countbits16)
	ld.d	$a6, $a6, %got_pc_lo12(countbits16)
	move	$a7, $zero
	move	$t0, $zero
	move	$t1, $a4
	.p2align	4, , 16
.LBB0_22:                               # %vector.body72
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$t2, $a2, -4
	move	$t3, $a0
	ld.w	$a0, $a2, 0
	xor	$t3, $t2, $t3
	and	$t4, $t3, $a5
	xor	$t2, $a0, $t2
	and	$t5, $t2, $a5
	bstrpick.d	$t3, $t3, 15, 0
	bstrpick.d	$t2, $t2, 15, 0
	slli.d	$t3, $t3, 2
	slli.d	$t2, $t2, 2
	ldx.w	$t3, $a6, $t3
	ldx.w	$t2, $a6, $t2
	srli.d	$t4, $t4, 14
	srli.d	$t5, $t5, 14
	ldx.w	$t4, $a6, $t4
	ldx.w	$t5, $a6, $t5
	add.d	$a7, $t3, $a7
	add.d	$t0, $t2, $t0
	add.d	$a7, $a7, $t4
	add.d	$t0, $t0, $t5
	addi.d	$t1, $t1, -2
	addi.d	$a2, $a2, 8
	bnez	$t1, .LBB0_22
# %bb.23:                               # %middle.block77
	add.w	$a2, $t0, $a7
	bne	$a4, $a3, .LBB0_26
	b	.LBB0_28
.LBB0_24:
	move	$a2, $zero
	b	.LBB0_28
.LBB0_25:
	move	$a4, $zero
	move	$a2, $zero
.LBB0_26:                               # %scalar.ph67.preheader
	sub.d	$a3, $a3, $a4
	alsl.d	$a4, $a4, $s4, 2
	add.d	$a1, $a4, $a1
	addi.d	$a1, $a1, 4
	lu32i.d	$fp, 0
	pcalau12i	$a4, %got_pc_hi20(countbits16)
	ld.d	$a4, $a4, %got_pc_lo12(countbits16)
	.p2align	4, , 16
.LBB0_27:                               # %scalar.ph67
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a5, $a1, 0
	xor	$a0, $a5, $a0
	and	$a6, $a0, $fp
	bstrpick.d	$a0, $a0, 15, 0
	slli.d	$a0, $a0, 2
	ldx.w	$a0, $a4, $a0
	srli.d	$a6, $a6, 14
	ldx.w	$a6, $a4, $a6
	add.d	$a0, $a0, $a2
	add.w	$a2, $a0, $a6
	addi.d	$a3, $a3, -1
	addi.d	$a1, $a1, 4
	move	$a0, $a5
	bnez	$a3, .LBB0_27
.LBB0_28:                               # %tr_border_length_col.exit
	ld.d	$a0, $s2, %pc_lo12(trait_file)
	pcalau12i	$a1, %pc_hi20(.L.str.4)
	addi.d	$a1, $a1, %pc_lo12(.L.str.4)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, 0
	bltz	$a0, .LBB0_31
# %bb.29:                               # %.lr.ph.i39
	addi.d	$a0, $a0, 1
	bstrpick.d	$a0, $a0, 31, 0
	pcalau12i	$a1, %got_pc_hi20(g_board)
	ld.d	$a1, $a1, %got_pc_lo12(g_board)
	add.d	$a1, $s4, $a1
	addi.d	$a1, $a1, 4
	pcalau12i	$a2, %got_pc_hi20(countbits16)
	ld.d	$a3, $a2, %got_pc_lo12(countbits16)
	move	$a2, $zero
	ori	$a4, $s3, 4092
	.p2align	4, , 16
.LBB0_30:                               # =>This Inner Loop Header: Depth=1
	ld.wu	$a5, $a1, 0
	srli.d	$a6, $a5, 1
	bstrpick.d	$a5, $a5, 30, 0
	xor	$a5, $a6, $a5
	bstrpick.d	$a6, $a5, 15, 0
	slli.d	$a6, $a6, 2
	ldx.w	$a6, $a3, $a6
	srli.d	$a5, $a5, 14
	and	$a5, $a5, $a4
	ldx.w	$a5, $a3, $a5
	add.d	$a2, $a6, $a2
	add.w	$a2, $a2, $a5
	addi.d	$a0, $a0, -1
	addi.d	$a1, $a1, 4
	bnez	$a0, .LBB0_30
	b	.LBB0_32
.LBB0_31:
	move	$a2, $zero
.LBB0_32:                               # %tr_border_length_row.exit
	ld.d	$a0, $s2, %pc_lo12(trait_file)
	pcalau12i	$a1, %pc_hi20(.L.str.4)
	addi.d	$a1, $a1, %pc_lo12(.L.str.4)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s2, %pc_lo12(trait_file)
	ori	$a0, $zero, 10
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
	pcaddu18i	$t8, %call36(fputc)
	jr	$t8
.LBB0_33:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	ori	$a1, $zero, 28
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	ld.d	$s0, $s2, %pc_lo12(trait_file)
	b	.LBB0_2
.Lfunc_end0:
	.size	write_node_info, .Lfunc_end0-write_node_info
                                        # -- End function
	.p2align	5                               # -- Begin function tr_non_safe_moves_a_little_touchy
	.type	tr_non_safe_moves_a_little_touchy,@function
tr_non_safe_moves_a_little_touchy:      # @tr_non_safe_moves_a_little_touchy
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	slli.d	$a1, $a0, 2
	pcalau12i	$a2, %got_pc_hi20(g_board_size)
	ld.d	$a2, $a2, %got_pc_lo12(g_board_size)
	ldx.w	$a2, $a2, $a1
	blez	$a2, .LBB1_5
# %bb.1:                                # %.lr.ph
	slli.d	$a1, $a0, 7
	pcalau12i	$a3, %got_pc_hi20(g_board)
	ld.d	$a3, $a3, %got_pc_lo12(g_board)
	add.d	$a5, $a3, $a1
	ldx.w	$a4, $a3, $a1
	addi.d	$a3, $a5, 8
	lu12i.w	$a5, -16
	lu32i.d	$a5, 0
	pcalau12i	$a1, %got_pc_hi20(countbits16)
	ld.d	$a6, $a1, %got_pc_lo12(countbits16)
	move	$a1, $zero
	.p2align	4, , 16
.LBB1_2:                                # =>This Inner Loop Header: Depth=1
	ld.w	$a7, $a3, 0
	or	$a7, $a7, $a4
	ld.wu	$a4, $a3, -4
	srli.d	$t0, $a4, 1
	or	$a7, $a7, $a4
	slli.d	$t1, $a7, 1
	slli.d	$t2, $a4, 2
	or	$t0, $t0, $t2
	or	$t0, $t0, $t1
	or	$t1, $a7, $t0
	andn	$t1, $a5, $t1
	nor	$a7, $a7, $t0
	bstrpick.d	$a7, $a7, 15, 0
	slli.d	$a7, $a7, 2
	ldx.w	$a7, $a6, $a7
	srli.d	$t0, $t1, 14
	ldx.w	$t0, $a6, $t0
	add.d	$a1, $a7, $a1
	add.w	$a1, $a1, $t0
	addi.d	$a2, $a2, -1
	addi.d	$a3, $a3, 4
	bnez	$a2, .LBB1_2
# %bb.3:                                # %._crit_edge
	addi.w	$a2, $zero, -1
	bne	$a1, $a2, .LBB1_6
# %bb.4:
	move	$fp, $a0
	pcaddu18i	$ra, %call36(print_board)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a0, $a0, %pc_lo12(.L.str.7)
	addi.w	$a2, $zero, -1
	move	$a1, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB1_5:
	move	$a1, $zero
.LBB1_6:                                # %._crit_edge.thread
	move	$a0, $a1
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end1:
	.size	tr_non_safe_moves_a_little_touchy, .Lfunc_end1-tr_non_safe_moves_a_little_touchy
                                        # -- End function
	.type	trait_file,@object              # @trait_file
	.local	trait_file
	.comm	trait_file,8,8
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"trait_file"
	.size	.L.str, 11

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"w"
	.size	.L.str.1, 2

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"Couldn't open \"trait_file\".\n"
	.size	.L.str.2, 29

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"%c %15s :"
	.size	.L.str.3, 10

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	" %2d"
	.size	.L.str.4, 5

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	" %2d :"
	.size	.L.str.5, 7

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"%d %d\n"
	.size	.L.str.7, 7

	.section	".note.GNU-stack","",@progbits
	.addrsig
