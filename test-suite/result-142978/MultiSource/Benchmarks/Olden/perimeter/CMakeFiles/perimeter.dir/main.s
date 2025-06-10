	.file	"main.c"
	.text
	.globl	CountTree                       # -- Begin function CountTree
	.p2align	5
	.type	CountTree,@function
CountTree:                              # @CountTree
# %bb.0:
	xvld	$xr0, $a0, 8
	xvseqi.d	$xr1, $xr0, 0
	xvrepli.b	$xr2, -1
	xvxor.v	$xr1, $xr1, $xr2
	xvmskltz.d	$xr1, $xr1
	xvpickve2gr.wu	$a0, $xr1, 0
	xvpickve2gr.wu	$a1, $xr1, 4
	bstrins.d	$a0, $a1, 3, 2
	andi	$a0, $a0, 15
	beqz	$a0, .LBB0_4
# %bb.1:                                # %tailrecurse.preheader
	addi.d	$sp, $sp, -80
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
	st.d	$s1, $sp, 48                    # 8-byte Folded Spill
	st.d	$s2, $sp, 40                    # 8-byte Folded Spill
	st.d	$s3, $sp, 32                    # 8-byte Folded Spill
	move	$s3, $zero
	xvpickve2gr.d	$s2, $xr0, 3
	xvpickve2gr.d	$fp, $xr0, 2
	xvpickve2gr.d	$s0, $xr0, 1
	xvpickve2gr.d	$a0, $xr0, 0
	xvst	$xr2, $sp, 0                    # 32-byte Folded Spill
	.p2align	4, , 16
.LBB0_2:                                # %tailrecurse
                                        # =>This Inner Loop Header: Depth=1
	pcaddu18i	$ra, %call36(CountTree)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(CountTree)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(CountTree)
	jirl	$ra, $ra, 0
	xvld	$xr2, $sp, 0                    # 32-byte Folded Reload
	move	$a1, $a0
	add.d	$a0, $s1, $s3
	add.d	$a2, $a0, $s0
	xvld	$xr0, $s2, 8
	ld.d	$fp, $s2, 24
	ld.d	$s0, $s2, 16
	ld.d	$a0, $s2, 8
	ld.d	$s2, $s2, 32
	xvseqi.d	$xr0, $xr0, 0
	xvxor.v	$xr0, $xr0, $xr2
	xvmskltz.d	$xr0, $xr0
	xvpickve2gr.wu	$a3, $xr0, 0
	xvpickve2gr.wu	$a4, $xr0, 4
	bstrins.d	$a3, $a4, 3, 2
	andi	$a3, $a3, 15
	add.d	$s3, $a2, $a1
	bnez	$a3, .LBB0_2
# %bb.3:                                # %tailrecurse._crit_edge.loopexit
	addi.w	$a0, $s3, 1
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.LBB0_4:
	ori	$a0, $zero, 1
	ret
.Lfunc_end0:
	.size	CountTree, .Lfunc_end0-CountTree
                                        # -- End function
	.globl	perimeter                       # -- Begin function perimeter
	.p2align	5
	.type	perimeter,@function
perimeter:                              # @perimeter
# %bb.0:
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	st.d	$s4, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a1
	move	$s0, $a0
	move	$s3, $zero
	ori	$s4, $zero, 2
	ld.w	$a0, $s0, 0
	bne	$a0, $s4, .LBB1_2
	.p2align	4, , 16
.LBB1_1:                                # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s0, 24
	bstrpick.d	$a1, $fp, 31, 31
	add.w	$a1, $fp, $a1
	srai.d	$fp, $a1, 1
	move	$a1, $fp
	pcaddu18i	$ra, %call36(perimeter)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, 32
	move	$s1, $a0
	move	$a0, $a1
	move	$a1, $fp
	pcaddu18i	$ra, %call36(perimeter)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, 16
	move	$s2, $a0
	move	$a0, $a1
	move	$a1, $fp
	pcaddu18i	$ra, %call36(perimeter)
	jirl	$ra, $ra, 0
	ld.d	$s0, $s0, 8
	add.d	$a1, $s1, $s3
	add.d	$a1, $a1, $s2
	add.d	$s3, $a1, $a0
	ld.w	$a0, $s0, 0
	beq	$a0, $s4, .LBB1_1
.LBB1_2:                                # %tailrecurse
	bnez	$a0, .LBB1_10
# %bb.3:
	move	$a0, $s0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gtequal_adj_neighbor)
	jirl	$ra, $ra, 0
	move	$s1, $fp
	beqz	$a0, .LBB1_7
# %bb.4:
	ld.w	$a1, $a0, 0
	ori	$a2, $zero, 1
	move	$s1, $fp
	beq	$a1, $a2, .LBB1_7
# %bb.5:
	ori	$a2, $zero, 2
	bne	$a1, $a2, .LBB1_12
# %bb.6:
	addi.w	$a3, $fp, 0
	ori	$a1, $zero, 3
	ori	$a2, $zero, 2
	pcaddu18i	$ra, %call36(sum_adjacent)
	jirl	$ra, $ra, 0
	move	$s1, $a0
.LBB1_7:
	ori	$a1, $zero, 1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(gtequal_adj_neighbor)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_13
.LBB1_8:
	ld.w	$a1, $a0, 0
	ori	$a2, $zero, 2
	beq	$a1, $a2, .LBB1_11
# %bb.9:
	ori	$a0, $zero, 1
	beq	$a1, $a0, .LBB1_13
	b	.LBB1_14
.LBB1_10:                               # %.loopexit.loopexit
	move	$s1, $zero
	b	.LBB1_24
.LBB1_11:
	addi.w	$a3, $fp, 0
	ori	$a1, $zero, 2
	move	$a2, $zero
	pcaddu18i	$ra, %call36(sum_adjacent)
	jirl	$ra, $ra, 0
	add.d	$s1, $a0, $s1
	b	.LBB1_14
.LBB1_12:                               # %.fold.split
	move	$s1, $zero
	ori	$a1, $zero, 1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(gtequal_adj_neighbor)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB1_8
.LBB1_13:
	add.d	$s1, $s1, $fp
.LBB1_14:
	ori	$a1, $zero, 2
	ori	$s2, $zero, 2
	move	$a0, $s0
	pcaddu18i	$ra, %call36(gtequal_adj_neighbor)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_17
# %bb.15:
	ld.w	$a1, $a0, 0
	beq	$a1, $s2, .LBB1_21
# %bb.16:
	ori	$a0, $zero, 1
	bne	$a1, $a0, .LBB1_18
.LBB1_17:
	add.d	$s1, $s1, $fp
.LBB1_18:
	ori	$a1, $zero, 3
	move	$a0, $s0
	pcaddu18i	$ra, %call36(gtequal_adj_neighbor)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_22
.LBB1_19:
	ld.w	$a1, $a0, 0
	ori	$a2, $zero, 2
	beq	$a1, $a2, .LBB1_23
# %bb.20:
	ori	$a0, $zero, 1
	beq	$a1, $a0, .LBB1_22
	b	.LBB1_24
.LBB1_21:
	addi.w	$a3, $fp, 0
	ori	$a2, $zero, 1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(sum_adjacent)
	jirl	$ra, $ra, 0
	add.d	$s1, $a0, $s1
	ori	$a1, $zero, 3
	move	$a0, $s0
	pcaddu18i	$ra, %call36(gtequal_adj_neighbor)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB1_19
.LBB1_22:
	add.d	$s1, $s1, $fp
	b	.LBB1_24
.LBB1_23:
	addi.w	$a3, $fp, 0
	ori	$a1, $zero, 1
	ori	$a2, $zero, 3
	pcaddu18i	$ra, %call36(sum_adjacent)
	jirl	$ra, $ra, 0
	add.d	$s1, $a0, $s1
.LBB1_24:                               # %.loopexit
	add.w	$a0, $s1, $s3
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.Lfunc_end1:
	.size	perimeter, .Lfunc_end1-perimeter
                                        # -- End function
	.p2align	5                               # -- Begin function gtequal_adj_neighbor
	.type	gtequal_adj_neighbor,@function
gtequal_adj_neighbor:                   # @gtequal_adj_neighbor
# %bb.0:
	move	$a2, $a0
	ld.d	$a0, $a0, 40
	beqz	$a0, .LBB2_3
# %bb.1:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a1
	slli.d	$a1, $a1, 2
	pcalau12i	$a3, %pc_hi20(.LJTI2_0)
	addi.d	$a3, $a3, %pc_lo12(.LJTI2_0)
	ldx.w	$a1, $a3, $a1
	ld.w	$s0, $a2, 4
	add.d	$a1, $a3, $a1
	jr	$a1
.LBB2_2:
	ori	$a1, $zero, 2
	bltu	$s0, $a1, .LBB2_7
	b	.LBB2_8
.LBB2_3:
	move	$a0, $zero
	ret
.LBB2_4:
	bstrpick.d	$a1, $s0, 31, 1
	slli.w	$a1, $a1, 1
	ori	$a2, $zero, 2
	beq	$a1, $a2, .LBB2_7
	b	.LBB2_8
.LBB2_5:                                # %adj.exit
	addi.w	$a1, $zero, -3
	lu32i.d	$a1, 0
	and	$a1, $s0, $a1
	addi.w	$a1, $a1, 0
	bnez	$a1, .LBB2_8
	b	.LBB2_7
.LBB2_6:
	addi.w	$a1, $zero, -3
	lu32i.d	$a1, 0
	and	$a1, $s0, $a1
	addi.w	$a1, $a1, 0
	ori	$a2, $zero, 1
	bne	$a1, $a2, .LBB2_8
.LBB2_7:
	move	$a1, $fp
	pcaddu18i	$ra, %call36(gtequal_adj_neighbor)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB2_13
.LBB2_8:                                # %.thread22
	ld.w	$a1, $a0, 0
	ori	$a3, $zero, 2
	bne	$a1, $a3, .LBB2_14
# %bb.9:
	andi	$a1, $fp, 1
	addi.w	$a2, $s0, -1
	sltui	$a1, $a1, 1
	bltu	$a3, $a2, .LBB2_11
# %bb.10:                               # %child.exit.sink.split
	pcalau12i	$a3, %pc_hi20(.Lswitch.table.gtequal_adj_neighbor)
	addi.d	$a3, $a3, %pc_lo12(.Lswitch.table.gtequal_adj_neighbor)
	masknez	$a3, $a3, $a1
	pcalau12i	$a4, %pc_hi20(.Lswitch.table.gtequal_adj_neighbor.1)
	addi.d	$a4, $a4, %pc_lo12(.Lswitch.table.gtequal_adj_neighbor.1)
	maskeqz	$a1, $a4, $a1
	or	$a1, $a1, $a3
	slli.d	$a2, $a2, 3
	ldx.d	$a1, $a1, $a2
	b	.LBB2_12
.LBB2_11:
	ori	$a2, $zero, 16
	masknez	$a2, $a2, $a1
	ori	$a3, $zero, 24
	maskeqz	$a1, $a3, $a1
	or	$a1, $a1, $a2
.LBB2_12:                               # %child.exit
	ldx.d	$a0, $a0, $a1
	b	.LBB2_14
.LBB2_13:
	move	$a0, $zero
.LBB2_14:
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end2:
	.size	gtequal_adj_neighbor, .Lfunc_end2-gtequal_adj_neighbor
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI2_0:
	.word	.LBB2_2-.LJTI2_0
	.word	.LBB2_6-.LJTI2_0
	.word	.LBB2_4-.LJTI2_0
	.word	.LBB2_5-.LJTI2_0
                                        # -- End function
	.text
	.p2align	5                               # -- Begin function sum_adjacent
	.type	sum_adjacent,@function
sum_adjacent:                           # @sum_adjacent
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
	move	$s3, $zero
	slli.w	$s4, $a1, 3
	slli.w	$s5, $a2, 3
	ori	$s6, $zero, 2
	ld.w	$a0, $s2, 0
	bne	$a0, $s6, .LBB3_2
	.p2align	4, , 16
.LBB3_1:                                # %switch.lookup
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a0, $s2, $s4
	ld.d	$a0, $a0, 8
	bstrpick.d	$a1, $fp, 31, 31
	add.w	$a1, $fp, $a1
	srai.d	$fp, $a1, 1
	move	$a1, $s1
	move	$a2, $s0
	move	$a3, $fp
	pcaddu18i	$ra, %call36(sum_adjacent)
	jirl	$ra, $ra, 0
	add.d	$a1, $s2, $s5
	ld.d	$s2, $a1, 8
	add.d	$s3, $a0, $s3
	ld.w	$a0, $s2, 0
	beq	$a0, $s6, .LBB3_1
.LBB3_2:                                # %tailrecurse
	ori	$a1, $zero, 1
	beq	$a0, $a1, .LBB3_4
# %bb.3:                                # %.loopexit.loopexit59
	move	$fp, $zero
.LBB3_4:                                # %.loopexit
	add.w	$a0, $fp, $s3
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
	.size	sum_adjacent, .Lfunc_end3-sum_adjacent
                                        # -- End function
	.globl	main                            # -- Begin function main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(dealwithargs)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(NumNodes)
	ld.d	$s0, $a1, %got_pc_lo12(NumNodes)
	ld.w	$a2, $s0, 0
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s0, 0
	addi.w	$a4, $a0, -1
	lu12i.w	$a0, 512
	ori	$a6, $zero, 3
	move	$a1, $zero
	move	$a2, $zero
	move	$a3, $zero
	move	$a5, $zero
	move	$a7, $fp
	pcaddu18i	$ra, %call36(MakeTree)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	pcaddu18i	$ra, %call36(CountTree)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	lu12i.w	$a1, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(perimeter)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end4:
	.size	main, .Lfunc_end4-main
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Perimeter with %d levels on %d processors\n"
	.size	.L.str, 43

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"# of leaves is %d\n"
	.size	.L.str.1, 19

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"perimeter is %d\n"
	.size	.L.str.2, 17

	.type	.Lswitch.table.gtequal_adj_neighbor,@object # @switch.table.gtequal_adj_neighbor
	.section	.rodata,"a",@progbits
	.p2align	3, 0x0
.Lswitch.table.gtequal_adj_neighbor:
	.dword	8                               # 0x8
	.dword	32                              # 0x20
	.dword	24                              # 0x18
	.size	.Lswitch.table.gtequal_adj_neighbor, 24

	.type	.Lswitch.table.gtequal_adj_neighbor.1,@object # @switch.table.gtequal_adj_neighbor.1
	.p2align	3, 0x0
.Lswitch.table.gtequal_adj_neighbor.1:
	.dword	32                              # 0x20
	.dword	8                               # 0x8
	.dword	16                              # 0x10
	.size	.Lswitch.table.gtequal_adj_neighbor.1, 24

	.section	".note.GNU-stack","",@progbits
	.addrsig
