	.file	"toggle_move.c"
	.text
	.globl	update_safe                     # -- Begin function update_safe
	.p2align	5
	.type	update_safe,@function
update_safe:                            # @update_safe
# %bb.0:
	pcalau12i	$a2, %got_pc_hi20(g_board)
	ld.d	$a2, $a2, %got_pc_lo12(g_board)
	slli.d	$a3, $a0, 7
	add.d	$a2, $a2, $a3
	alsl.d	$a3, $a1, $a2, 2
	ld.w	$a4, $a3, -4
	ld.w	$a3, $a3, 4
	slli.d	$a5, $a1, 2
	ldx.w	$a2, $a2, $a5
	and	$a3, $a3, $a4
	slli.d	$a4, $a2, 1
	or	$a2, $a4, $a2
	slli.d	$a4, $a3, 1
	andn	$a2, $a4, $a2
	and	$a2, $a2, $a3
	lu12i.w	$a3, -16
	lu32i.d	$a3, 0
	pcalau12i	$a4, %got_pc_hi20(move_table16)
	ld.d	$a4, $a4, %got_pc_lo12(move_table16)
	and	$a3, $a2, $a3
	bstrpick.d	$a2, $a2, 15, 1
	slli.d	$a2, $a2, 3
	ldx.wu	$a2, $a4, $a2
	srli.d	$a3, $a3, 14
	ldx.w	$a3, $a4, $a3
	srli.d	$a4, $a2, 28
	sltui	$a4, $a4, 1
	add.d	$a2, $a3, $a2
	lu12i.w	$a3, 15
	ori	$a3, $a3, 4094
	ori	$a5, $zero, 12
	mul.d	$a1, $a1, $a5
	alsl.d	$a6, $a0, $a0, 1
	pcalau12i	$a7, %got_pc_hi20(g_info)
	ld.d	$a7, $a7, %got_pc_lo12(g_info)
	slli.d	$a6, $a6, 7
	pcalau12i	$t0, %got_pc_hi20(g_info_totals)
	ld.d	$t0, $t0, %got_pc_lo12(g_info_totals)
	add.d	$a6, $a7, $a6
	ldx.w	$a7, $a6, $a1
	mul.d	$a0, $a0, $a5
	ldx.w	$a5, $t0, $a0
	or	$a3, $a4, $a3
	and	$a2, $a2, $a3
	sub.d	$a3, $a2, $a7
	add.d	$a3, $a3, $a5
	stx.w	$a3, $t0, $a0
	stx.w	$a2, $a6, $a1
	ret
.Lfunc_end0:
	.size	update_safe, .Lfunc_end0-update_safe
                                        # -- End function
	.globl	update_real                     # -- Begin function update_real
	.p2align	5
	.type	update_real,@function
update_real:                            # @update_real
# %bb.0:
	pcalau12i	$a2, %got_pc_hi20(g_board)
	ld.d	$a2, $a2, %got_pc_lo12(g_board)
	slli.d	$a3, $a0, 7
	add.d	$a2, $a2, $a3
	slli.d	$a3, $a1, 2
	ldx.w	$a2, $a2, $a3
	slli.d	$a3, $a2, 1
	or	$a4, $a3, $a2
	lu12i.w	$a5, -16
	lu32i.d	$a5, 0
	andn	$a4, $a5, $a4
	pcalau12i	$a5, %got_pc_hi20(move_table16)
	ld.d	$a5, $a5, %got_pc_lo12(move_table16)
	nor	$a2, $a3, $a2
	bstrpick.d	$a2, $a2, 15, 0
	slli.d	$a2, $a2, 2
	ldx.wu	$a2, $a5, $a2
	srli.d	$a3, $a4, 14
	ldx.w	$a3, $a5, $a3
	srli.d	$a4, $a2, 28
	sltui	$a4, $a4, 1
	add.d	$a2, $a3, $a2
	pcalau12i	$a3, %got_pc_hi20(g_info)
	ld.d	$a3, $a3, %got_pc_lo12(g_info)
	lu12i.w	$a5, 15
	alsl.d	$a6, $a0, $a0, 1
	slli.d	$a6, $a6, 7
	add.d	$a3, $a3, $a6
	ori	$a6, $zero, 12
	mul.d	$a1, $a1, $a6
	add.d	$a1, $a3, $a1
	pcalau12i	$a3, %got_pc_hi20(g_info_totals)
	ld.d	$a3, $a3, %got_pc_lo12(g_info_totals)
	ori	$a5, $a5, 4094
	mul.d	$a0, $a0, $a6
	ld.w	$a6, $a1, 4
	add.d	$a0, $a3, $a0
	ld.w	$a3, $a0, 4
	or	$a4, $a4, $a5
	and	$a2, $a2, $a4
	sub.d	$a4, $a2, $a6
	add.d	$a3, $a4, $a3
	st.w	$a3, $a0, 4
	st.w	$a2, $a1, 4
	ret
.Lfunc_end1:
	.size	update_real, .Lfunc_end1-update_real
                                        # -- End function
	.globl	toggle_move                     # -- Begin function toggle_move
	.p2align	5
	.type	toggle_move,@function
toggle_move:                            # @toggle_move
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
	srli.d	$t3, $a0, 32
	pcalau12i	$a1, %got_pc_hi20(g_board)
	ld.d	$t1, $a1, %got_pc_lo12(g_board)
	andi	$a6, $a2, 1
	addi.w	$a7, $a0, 0
	slli.d	$t5, $a6, 7
	add.d	$t7, $t1, $t5
	slli.d	$a1, $a7, 2
	ldx.w	$a3, $t7, $a1
	xori	$a2, $a2, 1
	ori	$a4, $zero, 3
	sll.w	$a4, $a4, $t3
	xor	$a3, $a3, $a4
	stx.w	$a3, $t7, $a1
	srai.d	$a3, $a0, 32
	slli.d	$a1, $a2, 7
	add.d	$t0, $t1, $a1
	slli.d	$a1, $a3, 2
	ldx.w	$a4, $t0, $a1
	ori	$a5, $zero, 1
	sll.w	$a5, $a5, $a0
	xor	$a4, $a4, $a5
	stx.w	$a4, $t0, $a1
	addi.w	$a1, $t3, 1
	st.d	$a1, $sp, 0                     # 8-byte Folded Spill
	slli.d	$t2, $a1, 2
	ldx.w	$a4, $t0, $t2
	slli.d	$t8, $a0, 32
	alsl.d	$fp, $a7, $t7, 2
	xor	$a4, $a4, $a5
	stx.w	$a4, $t0, $t2
	addi.w	$t4, $a0, -1
	lu12i.w	$a5, -16
	lu12i.w	$t2, 15
	alsl.d	$t6, $a6, $a6, 1
	slli.d	$s0, $a6, 2
	beqz	$t4, .LBB2_2
# %bb.1:
	ori	$t1, $zero, 0
	lu32i.d	$t1, -2
	add.d	$t1, $t8, $t1
	srai.d	$t1, $t1, 30
	ldx.w	$s1, $t7, $t1
	ld.w	$t5, $fp, 0
	slli.d	$t1, $t4, 2
	ldx.w	$t1, $t7, $t1
	and	$fp, $t5, $s1
	slli.d	$s1, $t1, 1
	or	$s1, $s1, $t1
	slli.d	$s2, $fp, 1
	andn	$s1, $s2, $s1
	and	$fp, $s1, $fp
	move	$s1, $a5
	lu32i.d	$s1, 0
	pcalau12i	$s2, %got_pc_hi20(move_table16)
	ld.d	$s2, $s2, %got_pc_lo12(move_table16)
	and	$s1, $fp, $s1
	bstrpick.d	$fp, $fp, 15, 1
	slli.d	$fp, $fp, 3
	ldx.wu	$fp, $s2, $fp
	srli.d	$s1, $s1, 14
	ldx.w	$s1, $s2, $s1
	srli.d	$s2, $fp, 28
	sltui	$s2, $s2, 1
	add.d	$fp, $s1, $fp
	ori	$s1, $zero, 12
	mul.d	$t4, $t4, $s1
	pcalau12i	$s3, %got_pc_hi20(g_info)
	ld.d	$s3, $s3, %got_pc_lo12(g_info)
	slli.d	$s4, $t6, 7
	pcalau12i	$s5, %got_pc_hi20(g_info_totals)
	ld.d	$s5, $s5, %got_pc_lo12(g_info_totals)
	add.d	$s4, $s3, $s4
	ldx.w	$s3, $s4, $t4
	mul.d	$s1, $a6, $s1
	ldx.w	$s1, $s5, $s1
	ori	$s5, $t2, 4094
	or	$s2, $s2, $s5
	and	$fp, $fp, $s2
	sub.d	$s2, $fp, $s3
	add.d	$s3, $s2, $s1
	stx.w	$fp, $s4, $t4
	b	.LBB2_3
.LBB2_2:                                # %._crit_edge
	ldx.w	$t1, $t1, $t5
	pcalau12i	$t4, %got_pc_hi20(g_info_totals)
	ld.d	$t4, $t4, %got_pc_lo12(g_info_totals)
	ld.w	$t5, $fp, 0
	slli.d	$fp, $a6, 3
	or	$fp, $fp, $s0
	ldx.w	$s3, $t4, $fp
.LBB2_3:
	ori	$t4, $zero, 0
	lu32i.d	$t4, 1
	add.d	$s2, $t8, $t4
	srai.d	$t4, $s2, 30
	ldx.w	$s4, $t7, $t4
	and	$t1, $s4, $t1
	slli.d	$fp, $t5, 1
	or	$t4, $fp, $t5
	slli.d	$s1, $t1, 1
	and	$t1, $s1, $t1
	andn	$t4, $t1, $t4
	lu32i.d	$a5, 0
	pcalau12i	$t1, %got_pc_hi20(move_table16)
	ld.d	$t1, $t1, %got_pc_lo12(move_table16)
	and	$s1, $t4, $a5
	bstrpick.d	$t4, $t4, 15, 1
	slli.d	$t4, $t4, 3
	ldx.wu	$t4, $t1, $t4
	srli.d	$s1, $s1, 14
	ldx.w	$s1, $t1, $s1
	srli.d	$s5, $t4, 28
	sltui	$s6, $s5, 1
	add.d	$s1, $s1, $t4
	pcalau12i	$t4, %got_pc_hi20(g_info)
	ld.d	$t4, $t4, %got_pc_lo12(g_info)
	ori	$s7, $zero, 12
	mul.d	$s8, $a7, $s7
	slli.d	$t6, $t6, 7
	add.d	$s5, $t4, $t6
	ldx.w	$t6, $s5, $s8
	ori	$t2, $t2, 4094
	or	$s6, $s6, $t2
	and	$ra, $s1, $s6
	sub.d	$s6, $ra, $t6
	pcalau12i	$t6, %got_pc_hi20(g_board_size)
	ld.d	$s1, $t6, %got_pc_lo12(g_board_size)
	pcalau12i	$t6, %got_pc_hi20(g_info_totals)
	ld.d	$t6, $t6, %got_pc_lo12(g_info_totals)
	add.d	$s3, $s6, $s3
	ldx.w	$a1, $s1, $s0
	ori	$s6, $zero, 0
	mul.d	$s0, $a6, $s7
	stx.w	$s3, $t6, $s0
	stx.w	$ra, $s5, $s8
	beq	$a1, $a7, .LBB2_5
# %bb.4:
	lu32i.d	$s6, 2
	add.d	$a1, $t8, $s6
	srai.d	$a1, $a1, 30
	ldx.w	$a1, $t7, $a1
	and	$a1, $a1, $t5
	slli.d	$t7, $s4, 1
	or	$t7, $t7, $s4
	slli.d	$t8, $a1, 1
	andn	$t7, $t8, $t7
	and	$a1, $t7, $a1
	bstrpick.d	$t7, $a1, 15, 1
	slli.d	$t7, $t7, 3
	ldx.wu	$t7, $t1, $t7
	srai.d	$t8, $s2, 32
	add.d	$s0, $t6, $s0
	and	$a1, $a1, $a5
	srli.d	$s2, $t7, 28
	sltui	$s2, $s2, 1
	srli.d	$a1, $a1, 14
	ldx.w	$a1, $t1, $a1
	slli.d	$s4, $t8, 3
	alsl.d	$t8, $t8, $s4, 2
	ldx.w	$s4, $s5, $t8
	add.d	$a1, $a1, $t7
	or	$t7, $s2, $t2
	and	$a1, $a1, $t7
	sub.d	$t7, $s3, $s4
	add.d	$t7, $t7, $a1
	st.w	$t7, $s0, 0
	stx.w	$a1, $s5, $t8
.LBB2_5:
	alsl.d	$t7, $a3, $t0, 2
	addi.w	$t8, $t3, -1
	alsl.d	$t3, $a2, $a2, 1
	beqz	$t8, .LBB2_7
# %bb.6:
	ori	$a1, $zero, 0
	lu32i.d	$a1, -2
	add.d	$a1, $a0, $a1
	srai.d	$a1, $a1, 32
	slli.d	$a1, $a1, 2
	ldx.w	$a1, $t0, $a1
	ld.w	$s0, $t7, 0
	slli.d	$s2, $t8, 2
	ldx.w	$s2, $t0, $s2
	and	$a1, $s0, $a1
	slli.d	$s0, $s2, 1
	or	$s0, $s0, $s2
	slli.d	$s2, $a1, 1
	andn	$s0, $s2, $s0
	and	$a1, $s0, $a1
	and	$s0, $a1, $a5
	bstrpick.d	$a1, $a1, 15, 1
	slli.d	$a1, $a1, 3
	ldx.wu	$a1, $t1, $a1
	srli.d	$s0, $s0, 14
	ldx.w	$s0, $t1, $s0
	srli.d	$s2, $a1, 28
	sltui	$s2, $s2, 1
	add.d	$a1, $s0, $a1
	ori	$s0, $zero, 12
	mul.d	$t8, $t8, $s0
	slli.d	$s3, $t3, 7
	add.d	$s3, $t4, $s3
	ldx.w	$s4, $s3, $t8
	mul.d	$s0, $a2, $s0
	ldx.w	$s5, $t6, $s0
	or	$s2, $s2, $t2
	and	$a1, $a1, $s2
	sub.d	$s2, $a1, $s4
	add.d	$s2, $s2, $s5
	stx.w	$s2, $t6, $s0
	stx.w	$a1, $s3, $t8
.LBB2_7:
	slli.d	$a1, $a2, 2
	ldx.w	$a1, $s1, $a1
	nor	$t5, $fp, $t5
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	beq	$s1, $a1, .LBB2_9
# %bb.8:
	ori	$a1, $zero, 0
	ori	$t8, $zero, 0
	lu32i.d	$t8, 1
	add.d	$t8, $a0, $t8
	srai.d	$t8, $t8, 32
	slli.d	$t8, $t8, 2
	ldx.w	$t8, $t0, $t8
	ori	$fp, $zero, 0
	lu32i.d	$fp, 3
	add.d	$fp, $a0, $fp
	srai.d	$fp, $fp, 32
	slli.d	$fp, $fp, 2
	ldx.w	$fp, $t0, $fp
	lu32i.d	$a1, 2
	add.d	$a0, $a0, $a1
	srai.d	$a0, $a0, 32
	slli.d	$a1, $a0, 2
	ldx.w	$a1, $t0, $a1
	and	$t0, $fp, $t8
	slli.d	$t8, $a1, 1
	or	$a1, $t8, $a1
	slli.d	$t8, $t0, 1
	andn	$a1, $t8, $a1
	and	$a1, $a1, $t0
	and	$t0, $a1, $a5
	bstrpick.d	$a1, $a1, 15, 1
	slli.d	$a1, $a1, 3
	ldx.wu	$a1, $t1, $a1
	srli.d	$t0, $t0, 14
	ldx.w	$t0, $t1, $t0
	srli.d	$t8, $a1, 28
	sltui	$t8, $t8, 1
	add.d	$a1, $t0, $a1
	slli.d	$t0, $t3, 7
	add.d	$t0, $t4, $t0
	ori	$t3, $zero, 12
	mul.d	$a0, $a0, $t3
	ldx.w	$fp, $t0, $a0
	mul.d	$t3, $a2, $t3
	ldx.w	$s0, $t6, $t3
	or	$t8, $t8, $t2
	and	$a1, $a1, $t8
	sub.d	$t8, $a1, $fp
	add.d	$t8, $t8, $s0
	stx.w	$t8, $t6, $t3
	stx.w	$a1, $t0, $a0
.LBB2_9:
	and	$a0, $t5, $a5
	bstrpick.d	$a1, $t5, 15, 0
	slli.d	$a1, $a1, 2
	ldx.wu	$a1, $t1, $a1
	srli.d	$a0, $a0, 14
	ldx.w	$a0, $t1, $a0
	srli.d	$t0, $a1, 28
	sltui	$t0, $t0, 1
	add.d	$a1, $a0, $a1
	or	$t0, $t0, $t2
	ori	$a0, $zero, 12
	mul.d	$a7, $a7, $a0
	ori	$t3, $zero, 384
	mul.d	$t5, $a6, $t3
	add.d	$t5, $t4, $t5
	add.d	$a7, $t5, $a7
	ld.w	$t5, $a7, 4
	mul.d	$a6, $a6, $a0
	add.d	$a6, $t6, $a6
	ld.w	$t8, $a6, 4
	and	$a1, $a1, $t0
	ld.w	$t0, $t7, 0
	sub.d	$t5, $a1, $t5
	add.d	$t5, $t5, $t8
	st.w	$t5, $a6, 4
	slli.d	$a6, $t0, 1
	or	$t5, $a6, $t0
	andn	$t5, $a5, $t5
	nor	$a6, $a6, $t0
	bstrpick.d	$a6, $a6, 15, 0
	slli.d	$a6, $a6, 2
	ldx.wu	$a6, $t1, $a6
	srli.d	$t0, $t5, 14
	ldx.w	$t0, $t1, $t0
	st.w	$a1, $a7, 4
	srli.d	$a1, $a6, 28
	sltui	$a1, $a1, 1
	add.d	$a6, $t0, $a6
	or	$a1, $a1, $t2
	and	$a1, $a6, $a1
	mul.d	$a3, $a3, $a0
	mul.d	$a6, $a2, $t3
	add.d	$a6, $t4, $a6
	add.d	$a3, $a6, $a3
	ld.w	$a7, $a3, 4
	mul.d	$a2, $a2, $a0
	add.d	$a2, $t6, $a2
	ld.w	$t0, $a2, 4
	slli.d	$t3, $a4, 1
	or	$t4, $t3, $a4
	andn	$a5, $a5, $t4
	nor	$a4, $t3, $a4
	bstrpick.d	$a4, $a4, 15, 0
	slli.d	$a4, $a4, 2
	ldx.wu	$a4, $t1, $a4
	srli.d	$a5, $a5, 14
	ldx.w	$a5, $t1, $a5
	st.w	$a1, $a3, 4
	srli.d	$a3, $a4, 28
	sltui	$a3, $a3, 1
	add.d	$a4, $a5, $a4
	mul.d	$a0, $s1, $a0
	add.d	$a0, $a6, $a0
	ld.w	$a5, $a0, 4
	or	$a3, $a3, $t2
	and	$a3, $a4, $a3
	add.d	$a1, $a1, $t0
	add.d	$a4, $a7, $a5
	sub.d	$a1, $a1, $a4
	add.d	$a1, $a1, $a3
	st.w	$a1, $a2, 4
	st.w	$a3, $a0, 4
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
.Lfunc_end2:
	.size	toggle_move, .Lfunc_end2-toggle_move
                                        # -- End function
	.globl	score_and_get_first             # -- Begin function score_and_get_first
	.p2align	5
	.type	score_and_get_first,@function
score_and_get_first:                    # @score_and_get_first
# %bb.0:
	addi.d	$sp, $sp, -112
	st.d	$ra, $sp, 104                   # 8-byte Folded Spill
	st.d	$fp, $sp, 96                    # 8-byte Folded Spill
	st.d	$s0, $sp, 88                    # 8-byte Folded Spill
	st.d	$s1, $sp, 80                    # 8-byte Folded Spill
	st.d	$s2, $sp, 72                    # 8-byte Folded Spill
	st.d	$s3, $sp, 64                    # 8-byte Folded Spill
	st.d	$s4, $sp, 56                    # 8-byte Folded Spill
	st.d	$s5, $sp, 48                    # 8-byte Folded Spill
	st.d	$s6, $sp, 40                    # 8-byte Folded Spill
	st.d	$s7, $sp, 32                    # 8-byte Folded Spill
	st.d	$s8, $sp, 24                    # 8-byte Folded Spill
	addi.w	$s4, $a3, 0
	addi.w	$s3, $zero, -1
	move	$s1, $a2
	move	$fp, $a1
	move	$s2, $a0
	beq	$s4, $s3, .LBB3_7
# %bb.1:                                # %.preheader55
	blez	$fp, .LBB3_11
# %bb.2:                                # %.lr.ph.preheader
	move	$s5, $zero
	srli.d	$a0, $a3, 32
	st.d	$s2, $sp, 0                     # 8-byte Folded Spill
	addi.d	$s6, $s2, 8
	addi.w	$s7, $a0, 0
	lu12i.w	$a0, 109
	ori	$s8, $a0, 3536
	move	$s0, $fp
                                        # implicit-def: $r5
	b	.LBB3_4
	.p2align	4, , 16
.LBB3_3:                                #   in Loop: Header=BB3_4 Depth=1
	ld.wu	$s2, $s6, 0
	ld.d	$a0, $s6, -8
	srli.d	$a1, $a1, 32
	bstrins.d	$s2, $a1, 63, 32
	move	$a1, $s2
	move	$a2, $s1
	pcaddu18i	$ra, %call36(score_move)
	jirl	$ra, $ra, 0
	st.w	$a0, $s6, 0
	move	$a1, $s2
	addi.w	$s5, $s5, 1
	addi.d	$s0, $s0, -1
	addi.d	$s6, $s6, 12
	beqz	$s0, .LBB3_10
.LBB3_4:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $s6, -8
	bne	$a0, $s4, .LBB3_3
# %bb.5:                                #   in Loop: Header=BB3_4 Depth=1
	ld.w	$a0, $s6, -4
	bne	$a0, $s7, .LBB3_3
# %bb.6:                                #   in Loop: Header=BB3_4 Depth=1
	st.w	$s8, $s6, 0
	move	$s3, $s5
	addi.w	$s5, $s5, 1
	addi.d	$s0, $s0, -1
	addi.d	$s6, $s6, 12
	bnez	$s0, .LBB3_4
	b	.LBB3_10
.LBB3_7:                                # %.preheader
	blez	$fp, .LBB3_11
# %bb.8:                                # %.lr.ph65.preheader
	move	$s0, $zero
	st.d	$s2, $sp, 0                     # 8-byte Folded Spill
	addi.d	$s4, $s2, 8
	addi.w	$s3, $zero, -1
	lu12i.w	$a0, -13
	ori	$s6, $a0, 3248
	move	$s5, $fp
                                        # implicit-def: $r5
	.p2align	4, , 16
.LBB3_9:                                # %.lr.ph65
                                        # =>This Inner Loop Header: Depth=1
	ld.wu	$s2, $s4, 0
	ld.d	$a0, $s4, -8
	srli.d	$a1, $a1, 32
	bstrins.d	$s2, $a1, 63, 32
	move	$a1, $s2
	move	$a2, $s1
	pcaddu18i	$ra, %call36(score_move)
	jirl	$ra, $ra, 0
	st.w	$a0, $s4, 0
	slt	$a1, $s6, $a0
	masknez	$a2, $s3, $a1
	maskeqz	$a3, $s0, $a1
	or	$s3, $a3, $a2
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s6, $a1
	or	$s6, $a0, $a1
	addi.d	$s4, $s4, 12
	addi.d	$s5, $s5, -1
	addi.w	$s0, $s0, 1
	move	$a1, $s2
	bnez	$s5, .LBB3_9
.LBB3_10:                               # %.loopexit
	addi.w	$a0, $zero, -1
	ld.d	$s2, $sp, 0                     # 8-byte Folded Reload
	bne	$s3, $a0, .LBB3_12
.LBB3_11:                               # %.loopexit.thread
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.1)
	addi.d	$a3, $a1, %pc_lo12(.L.str.1)
	ori	$a1, $zero, 180
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(_fatal_error_aux)
	jirl	$ra, $ra, 0
	addi.w	$s3, $zero, -1
.LBB3_12:
	ori	$a0, $zero, 2
	blt	$fp, $a0, .LBB3_17
# %bb.13:
	slli.d	$a0, $s3, 3
	alsl.d	$a1, $s3, $a0, 2
	add.d	$a0, $s2, $a1
	ldx.d	$a1, $s2, $a1
	ld.w	$a2, $a0, 8
	st.d	$a1, $sp, 8
	st.w	$a2, $sp, 16
	blez	$s3, .LBB3_16
# %bb.14:                               # %.lr.ph68.preheader
	addi.d	$a1, $s3, 1
	ori	$a2, $zero, 1
	.p2align	4, , 16
.LBB3_15:                               # %.lr.ph68
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a3, $a0, -4
	ld.d	$a4, $a0, -12
	st.w	$a3, $a0, 8
	addi.d	$a3, $a0, -12
	addi.d	$a1, $a1, -1
	st.d	$a4, $a0, 0
	move	$a0, $a3
	bltu	$a2, $a1, .LBB3_15
.LBB3_16:                               # %._crit_edge
	ld.w	$a0, $sp, 16
	ld.d	$a1, $sp, 8
	st.w	$a0, $s2, 8
	st.d	$a1, $s2, 0
.LBB3_17:
	ld.d	$s8, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 96                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 104                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 112
	ret
.Lfunc_end3:
	.size	score_and_get_first, .Lfunc_end3-score_and_get_first
                                        # -- End function
	.p2align	5                               # -- Begin function score_move
	.type	score_move,@function
score_move:                             # @score_move
# %bb.0:
	addi.d	$sp, $sp, -112
	st.d	$ra, $sp, 104                   # 8-byte Folded Spill
	st.d	$fp, $sp, 96                    # 8-byte Folded Spill
	st.d	$s0, $sp, 88                    # 8-byte Folded Spill
	st.d	$s1, $sp, 80                    # 8-byte Folded Spill
	st.d	$s2, $sp, 72                    # 8-byte Folded Spill
	st.d	$s3, $sp, 64                    # 8-byte Folded Spill
	st.d	$s4, $sp, 56                    # 8-byte Folded Spill
	st.d	$s5, $sp, 48                    # 8-byte Folded Spill
	st.d	$s6, $sp, 40                    # 8-byte Folded Spill
	st.d	$s7, $sp, 32                    # 8-byte Folded Spill
	st.d	$s8, $sp, 24                    # 8-byte Folded Spill
	srli.d	$t8, $a0, 32
	pcalau12i	$a1, %got_pc_hi20(g_board)
	ld.d	$s2, $a1, %got_pc_lo12(g_board)
	andi	$s0, $a2, 1
	addi.w	$a1, $a0, 0
	slli.d	$s4, $s0, 7
	add.d	$t3, $s2, $s4
	slli.d	$a6, $a1, 2
	ldx.w	$a3, $t3, $a6
	st.d	$a2, $sp, 16                    # 8-byte Folded Spill
	xori	$t4, $a2, 1
	ori	$a4, $zero, 3
	sll.w	$a2, $a4, $t8
	st.d	$a2, $sp, 8                     # 8-byte Folded Spill
	xor	$a3, $a3, $a2
	stx.w	$a3, $t3, $a6
	srai.d	$a2, $a0, 32
	slli.d	$a3, $t4, 7
	add.d	$a7, $s2, $a3
	slli.d	$a3, $a2, 2
	ldx.w	$t0, $a7, $a3
	ori	$a4, $zero, 1
	sll.w	$a4, $a4, $a0
	xor	$t0, $t0, $a4
	stx.w	$t0, $a7, $a3
	addi.w	$t7, $t8, 1
	slli.d	$t0, $t7, 2
	ldx.w	$t1, $a7, $t0
	xor	$s5, $t1, $a4
	stx.w	$s5, $a7, $t0
	ldx.w	$a6, $t3, $a6
	slli.d	$t2, $a6, 1
	or	$t1, $t2, $a6
	lu12i.w	$t0, -16
	lu32i.d	$t0, 0
	andn	$t6, $t0, $t1
	pcalau12i	$t1, %got_pc_hi20(move_table16)
	ld.d	$t1, $t1, %got_pc_lo12(move_table16)
	nor	$s1, $t2, $a6
	bstrpick.d	$t2, $s1, 15, 0
	slli.d	$t2, $t2, 2
	ldx.wu	$t2, $t1, $t2
	srli.d	$t6, $t6, 14
	ldx.w	$t6, $t1, $t6
	srli.d	$fp, $t2, 28
	sltui	$fp, $fp, 1
	add.d	$t6, $t6, $t2
	lu12i.w	$t2, 15
	ori	$t2, $t2, 4094
	or	$fp, $fp, $t2
	and	$s6, $t6, $fp
	pcalau12i	$t6, %got_pc_hi20(g_info)
	ld.d	$t6, $t6, %got_pc_lo12(g_info)
	ldx.w	$fp, $a7, $a3
	ori	$s7, $zero, 384
	mul.d	$s3, $s0, $s7
	add.d	$s3, $t6, $s3
	slli.d	$s8, $fp, 1
	or	$ra, $s8, $fp
	andn	$ra, $t0, $ra
	nor	$s8, $s8, $fp
	bstrpick.d	$s8, $s8, 15, 0
	slli.d	$s8, $s8, 2
	ldx.wu	$s8, $t1, $s8
	srli.d	$ra, $ra, 14
	ldx.w	$ra, $t1, $ra
	ori	$a5, $zero, 12
	mul.d	$t5, $a1, $a5
	add.d	$s3, $s3, $t5
	add.d	$t5, $ra, $s8
	srli.d	$s8, $s8, 28
	sltui	$s8, $s8, 1
	or	$s8, $s8, $t2
	and	$t5, $t5, $s8
	slli.d	$s8, $s5, 1
	or	$ra, $s8, $s5
	nor	$s5, $s8, $s5
	mul.d	$s7, $t4, $s7
	add.d	$s7, $t6, $s7
	mul.d	$s8, $a2, $a5
	add.d	$s8, $s7, $s8
	andn	$ra, $t0, $ra
	bstrpick.d	$s5, $s5, 15, 0
	slli.d	$s5, $s5, 2
	ldx.wu	$s5, $t1, $s5
	srli.d	$ra, $ra, 14
	ldx.w	$ra, $t1, $ra
	mul.d	$a5, $t7, $a5
	add.d	$a5, $s7, $a5
	ld.w	$s7, $s8, 4
	add.d	$s8, $ra, $s5
	srli.d	$s5, $s5, 28
	sltui	$s5, $s5, 1
	ld.w	$a5, $a5, 4
	or	$s5, $s5, $t2
	ld.w	$ra, $s3, 4
	and	$s5, $s8, $s5
	sub.d	$a5, $a5, $s5
	add.d	$s5, $s6, $s7
	add.d	$t5, $ra, $t5
	slli.d	$s6, $a0, 32
	sub.d	$t5, $s5, $t5
	add.d	$s7, $t5, $a5
	addi.w	$s8, $a0, -1
	alsl.d	$s5, $s0, $s0, 1
	beqz	$s8, .LBB4_2
# %bb.1:
	ori	$a5, $zero, 0
	lu32i.d	$a5, -2
	add.d	$a5, $s6, $a5
	srai.d	$a5, $a5, 30
	ldx.w	$a5, $t3, $a5
	slli.d	$t5, $s8, 2
	ldx.w	$s2, $t3, $t5
	and	$a5, $a5, $a6
	slli.d	$t5, $s2, 1
	or	$t5, $t5, $s2
	slli.d	$s4, $a5, 1
	andn	$t5, $s4, $t5
	and	$a5, $t5, $a5
	and	$t5, $a5, $t0
	bstrpick.d	$a5, $a5, 15, 1
	slli.d	$a5, $a5, 3
	ldx.wu	$a5, $t1, $a5
	srli.d	$t5, $t5, 14
	ldx.w	$t5, $t1, $t5
	slli.d	$s4, $s8, 3
	alsl.d	$s4, $s8, $s4, 2
	slli.d	$s8, $s5, 7
	add.d	$s8, $t6, $s8
	ldx.w	$s4, $s8, $s4
	srli.d	$s8, $a5, 28
	sltui	$s8, $s8, 1
	add.d	$a5, $t5, $a5
	or	$t5, $s8, $t2
	and	$a5, $a5, $t5
	sub.d	$t5, $s7, $s4
	add.d	$s7, $t5, $a5
	b	.LBB4_3
.LBB4_2:                                # %._crit_edge
	ldx.w	$s2, $s2, $s4
.LBB4_3:
	ori	$a5, $zero, 0
	lu32i.d	$a5, 1
	add.d	$s8, $s6, $a5
	srai.d	$a5, $s8, 30
	ldx.w	$s4, $t3, $a5
	and	$a5, $s4, $s2
	slli.d	$t5, $a5, 1
	and	$t5, $t5, $s1
	and	$a5, $t5, $a5
	and	$t5, $a5, $t0
	bstrpick.d	$a5, $a5, 15, 1
	slli.d	$a5, $a5, 3
	ldx.wu	$a5, $t1, $a5
	srli.d	$t5, $t5, 14
	ldx.w	$t5, $t1, $t5
	ori	$s2, $zero, 0
	srli.d	$ra, $a5, 28
	add.d	$a5, $t5, $a5
	pcalau12i	$t5, %got_pc_hi20(g_board_size)
	ld.d	$s1, $t5, %got_pc_lo12(g_board_size)
	sltui	$t5, $ra, 1
	ld.w	$s3, $s3, 0
	slli.d	$s0, $s0, 2
	ldx.w	$ra, $s1, $s0
	or	$t5, $t5, $t2
	and	$a5, $a5, $t5
	sub.d	$a5, $a5, $s3
	add.d	$s0, $a5, $s7
	beq	$ra, $a1, .LBB4_5
# %bb.4:
	lu32i.d	$s2, 2
	add.d	$a5, $s6, $s2
	srai.d	$a5, $a5, 30
	ldx.w	$a5, $t3, $a5
	srai.d	$t5, $s8, 32
	and	$a5, $a5, $a6
	slli.d	$s2, $s4, 1
	or	$s2, $s2, $s4
	slli.d	$s3, $a5, 1
	andn	$s2, $s3, $s2
	and	$a5, $s2, $a5
	bstrpick.d	$s2, $a5, 15, 1
	slli.d	$s2, $s2, 3
	ldx.wu	$s2, $t1, $s2
	and	$a5, $a5, $t0
	slli.d	$s3, $t5, 3
	alsl.d	$t5, $t5, $s3, 2
	srli.d	$s3, $s2, 28
	sltui	$s3, $s3, 1
	srli.d	$a5, $a5, 14
	ldx.w	$a5, $t1, $a5
	slli.d	$s4, $s5, 7
	add.d	$s4, $t6, $s4
	ldx.w	$t5, $s4, $t5
	add.d	$a5, $a5, $s2
	or	$s2, $s3, $t2
	and	$a5, $a5, $s2
	sub.d	$t5, $s0, $t5
	add.d	$s0, $t5, $a5
.LBB4_5:
	addi.w	$s2, $t8, -1
	alsl.d	$t8, $t4, $t4, 1
	beqz	$s2, .LBB4_7
# %bb.6:
	ori	$a5, $zero, 0
	lu32i.d	$a5, -2
	add.d	$a5, $a0, $a5
	srai.d	$a5, $a5, 32
	slli.d	$a5, $a5, 2
	ldx.w	$a5, $a7, $a5
	slli.d	$t5, $s2, 2
	ldx.w	$t5, $a7, $t5
	and	$a5, $a5, $fp
	slli.d	$fp, $t5, 1
	or	$t5, $fp, $t5
	slli.d	$fp, $a5, 1
	andn	$t5, $fp, $t5
	and	$a5, $t5, $a5
	and	$t5, $a5, $t0
	bstrpick.d	$a5, $a5, 15, 1
	slli.d	$a5, $a5, 3
	ldx.wu	$a5, $t1, $a5
	srli.d	$t5, $t5, 14
	ldx.w	$t5, $t1, $t5
	slli.d	$fp, $s2, 3
	alsl.d	$fp, $s2, $fp, 2
	slli.d	$s2, $t8, 7
	add.d	$s2, $t6, $s2
	ldx.w	$fp, $s2, $fp
	srli.d	$s2, $a5, 28
	sltui	$s2, $s2, 1
	add.d	$a5, $t5, $a5
	or	$t5, $s2, $t2
	and	$a5, $a5, $t5
	add.d	$t5, $fp, $s0
	sub.d	$s0, $t5, $a5
.LBB4_7:
	slli.d	$a5, $t4, 2
	ldx.w	$a5, $s1, $a5
	alsl.d	$fp, $a1, $t3, 2
	alsl.d	$t4, $a2, $a7, 2
	alsl.d	$t3, $t7, $a7, 2
	beq	$t7, $a5, .LBB4_9
# %bb.8:
	ori	$a2, $zero, 0
	ori	$a5, $zero, 0
	lu32i.d	$a5, 1
	add.d	$a5, $a0, $a5
	srai.d	$a5, $a5, 32
	slli.d	$a5, $a5, 2
	ldx.w	$a5, $a7, $a5
	ori	$t5, $zero, 0
	lu32i.d	$t5, 3
	add.d	$t5, $a0, $t5
	srai.d	$t5, $t5, 32
	slli.d	$t5, $t5, 2
	ldx.w	$t5, $a7, $t5
	lu32i.d	$a2, 2
	add.d	$a0, $a0, $a2
	srai.d	$a0, $a0, 32
	slli.d	$a2, $a0, 2
	ldx.w	$a2, $a7, $a2
	and	$a5, $t5, $a5
	slli.d	$a7, $a2, 1
	or	$a2, $a7, $a2
	slli.d	$a7, $a5, 1
	andn	$a2, $a7, $a2
	and	$a2, $a2, $a5
	bstrpick.d	$a5, $a2, 15, 1
	slli.d	$a5, $a5, 3
	ldx.wu	$a5, $t1, $a5
	and	$a2, $a2, $t0
	srli.d	$a7, $a5, 28
	sltui	$a7, $a7, 1
	srli.d	$a2, $a2, 14
	ldx.w	$a2, $t1, $a2
	slli.d	$t0, $a0, 3
	alsl.d	$a0, $a0, $t0, 2
	slli.d	$t0, $t8, 7
	add.d	$t0, $t6, $t0
	ldx.w	$a0, $t0, $a0
	add.d	$a2, $a2, $a5
	or	$a5, $a7, $t2
	and	$a2, $a2, $a5
	add.d	$a0, $a0, $s0
	sub.d	$s0, $a0, $a2
.LBB4_9:
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	xor	$a0, $a6, $a0
	st.w	$a0, $fp, 0
	ld.w	$a0, $t4, 0
	xor	$a0, $a0, $a4
	pcalau12i	$a2, %got_pc_hi20(g_first_move)
	ld.d	$a2, $a2, %got_pc_lo12(g_first_move)
	st.w	$a0, $t4, 0
	ld.w	$a0, $t3, 0
	ld.d	$a5, $sp, 16                    # 8-byte Folded Reload
	slli.d	$a5, $a5, 12
	add.d	$a2, $a2, $a5
	slli.d	$a1, $a1, 7
	add.d	$a1, $a2, $a1
	ldx.w	$a1, $a1, $a3
	xor	$a2, $a0, $a4
	slli.d	$a0, $s0, 7
	add.w	$a0, $a1, $a0
	st.w	$a2, $t3, 0
	ld.d	$s8, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 96                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 104                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 112
	ret
.Lfunc_end4:
	.size	score_move, .Lfunc_end4-score_move
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"/home/tangyan/code/auto-tests/loong-opt-cov-ts/test-suite/llvm-test-suite/MultiSource/Applications/obsequi/toggle_move.c"
	.size	.L.str, 121

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"No maximum\n"
	.size	.L.str.1, 12

	.section	".note.GNU-stack","",@progbits
	.addrsig
