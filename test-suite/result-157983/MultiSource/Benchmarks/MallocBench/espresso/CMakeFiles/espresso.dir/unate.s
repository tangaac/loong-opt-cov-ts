	.file	"unate.c"
	.text
	.globl	map_cover_to_unate              # -- Begin function map_cover_to_unate
	.p2align	5
	.type	map_cover_to_unate,@function
map_cover_to_unate:                     # @map_cover_to_unate
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.d	$a0, $a0, 8
	sub.d	$a0, $a0, $fp
	srai.d	$a0, $a0, 3
	addi.d	$a0, $a0, -3
	pcalau12i	$a1, %got_pc_hi20(cdata)
	ld.d	$s2, $a1, %got_pc_lo12(cdata)
	ld.w	$a1, $s2, 36
	pcaddu18i	$ra, %call36(sf_new)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 8
	move	$s0, $a0
	sub.d	$a0, $a1, $fp
	srli.d	$a0, $a0, 3
	addi.w	$a0, $a0, -3
	st.w	$a0, $s0, 12
	blez	$a0, .LBB0_3
# %bb.1:                                # %.lr.ph
	ld.d	$s1, $s0, 24
	move	$s3, $zero
	.p2align	4, , 16
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	ld.w	$a1, $s0, 4
	move	$a0, $s1
	pcaddu18i	$ra, %call36(set_clear)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s0, 0
	ld.w	$a1, $s0, 12
	addi.w	$s3, $s3, 1
	alsl.d	$s1, $a0, $s1, 2
	blt	$s3, $a1, .LBB0_2
.LBB0_3:                                # %.preheader
	pcalau12i	$a0, %got_pc_hi20(cube)
	ld.d	$a0, $a0, %got_pc_lo12(cube)
	ld.w	$a6, $a0, 0
	blez	$a6, .LBB0_14
# %bb.4:                                # %.lr.ph45
	ld.d	$a1, $s2, 0
	move	$a2, $zero
	move	$a3, $zero
	addi.d	$a4, $fp, 24
	ori	$a5, $zero, 1
	b	.LBB0_8
	.p2align	4, , 16
.LBB0_5:                                # %._crit_edge.loopexit
                                        #   in Loop: Header=BB0_8 Depth=1
	ld.w	$a6, $a0, 0
.LBB0_6:                                # %._crit_edge
                                        #   in Loop: Header=BB0_8 Depth=1
	addi.w	$a3, $a3, 1
.LBB0_7:                                #   in Loop: Header=BB0_8 Depth=1
	addi.d	$a2, $a2, 1
	bge	$a2, $a6, .LBB0_14
.LBB0_8:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_12 Depth 2
	slli.d	$a7, $a2, 2
	ldx.w	$a7, $a1, $a7
	blez	$a7, .LBB0_7
# %bb.9:                                #   in Loop: Header=BB0_8 Depth=1
	ld.d	$t3, $fp, 16
	beqz	$t3, .LBB0_6
# %bb.10:                               # %.lr.ph42
                                        #   in Loop: Header=BB0_8 Depth=1
	sll.w	$a6, $a5, $a2
	sll.w	$a7, $a5, $a3
	ld.d	$t0, $s0, 24
	srli.d	$t1, $a3, 5
	addi.d	$t2, $t1, 1
	bstrpick.d	$t1, $a2, 31, 5
	bstrpick.d	$t2, $t2, 31, 0
	slli.d	$t2, $t2, 2
	move	$t4, $a4
	b	.LBB0_12
	.p2align	4, , 16
.LBB0_11:                               #   in Loop: Header=BB0_12 Depth=2
	ld.w	$t5, $s0, 0
	ld.d	$t3, $t4, 0
	addi.d	$t4, $t4, 8
	alsl.d	$t0, $t5, $t0, 2
	beqz	$t3, .LBB0_5
.LBB0_12:                               #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	alsl.d	$t3, $t1, $t3, 2
	ld.w	$t3, $t3, 4
	and	$t3, $t3, $a6
	bnez	$t3, .LBB0_11
# %bb.13:                               #   in Loop: Header=BB0_12 Depth=2
	ldx.w	$t3, $t0, $t2
	or	$t3, $t3, $a7
	stx.w	$t3, $t0, $t2
	b	.LBB0_11
.LBB0_14:                               # %._crit_edge46
	move	$a0, $s0
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end0:
	.size	map_cover_to_unate, .Lfunc_end0-map_cover_to_unate
                                        # -- End function
	.globl	map_unate_to_cover              # -- Begin function map_unate_to_cover
	.p2align	5
	.type	map_unate_to_cover,@function
map_unate_to_cover:                     # @map_unate_to_cover
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
	move	$fp, $a0
	ld.w	$a0, $a0, 12
	pcalau12i	$a1, %got_pc_hi20(cube)
	ld.d	$s2, $a1, %got_pc_lo12(cube)
	ld.w	$a1, $s2, 0
	pcaddu18i	$ra, %call36(sf_new)
	jirl	$ra, $ra, 0
	ld.w	$s0, $fp, 12
	ld.w	$s3, $s2, 4
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	st.w	$s0, $a0, 12
	slli.d	$a0, $s3, 2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	blez	$s3, .LBB1_5
# %bb.1:                                # %.lr.ph
	pcalau12i	$a0, %got_pc_hi20(cdata)
	ld.d	$a0, $a0, %got_pc_lo12(cdata)
	ld.d	$a0, $a0, 24
	move	$a1, $zero
	move	$s6, $zero
	b	.LBB1_3
	.p2align	4, , 16
.LBB1_2:                                #   in Loop: Header=BB1_3 Depth=1
	addi.d	$a1, $a1, 1
	addi.d	$s3, $s3, -1
	addi.d	$a0, $a0, 4
	beqz	$s3, .LBB1_6
.LBB1_3:                                # =>This Inner Loop Header: Depth=1
	ld.w	$a2, $a0, 0
	beqz	$a2, .LBB1_2
# %bb.4:                                #   in Loop: Header=BB1_3 Depth=1
	slli.d	$a2, $s6, 2
	addi.w	$s6, $s6, 1
	stx.w	$a1, $s1, $a2
	b	.LBB1_2
.LBB1_5:
	move	$s6, $zero
.LBB1_6:                                # %._crit_edge
	ld.w	$a0, $fp, 0
	mul.w	$a0, $a0, $s0
	blez	$a0, .LBB1_24
# %bb.7:                                # %.lr.ph73
	ld.d	$s3, $fp, 24
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s4, $a1, 24
	alsl.d	$s5, $a0, $s3, 2
	blez	$s6, .LBB1_20
# %bb.8:                                # %.lr.ph73.split.us.preheader
	ori	$s7, $zero, 1
	addi.d	$t2, $zero, -1
	ori	$t3, $zero, 2
	pcalau12i	$a0, %got_pc_hi20(cdata)
	ld.d	$s8, $a0, %got_pc_lo12(cdata)
	lu12i.w	$a0, 131071
	ori	$s0, $a0, 4092
	b	.LBB1_10
	.p2align	4, , 16
.LBB1_9:                                # %._crit_edge69.us
                                        #   in Loop: Header=BB1_10 Depth=1
	ld.w	$a0, $fp, 0
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	ld.w	$a1, $a1, 0
	alsl.d	$s3, $a0, $s3, 2
	alsl.d	$s4, $a1, $s4, 2
	bgeu	$s3, $s5, .LBB1_24
.LBB1_10:                               # %.lr.ph73.split.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_14 Depth 2
                                        #       Child Loop BB1_18 Depth 3
	ld.w	$a0, $s2, 0
	slti	$a1, $a0, 33
	addi.w	$a0, $a0, -1
	srli.d	$a0, $a0, 5
	addi.w	$a0, $a0, 1
	maskeqz	$a2, $s7, $a1
	masknez	$a0, $a0, $a1
	or	$a1, $a2, $a0
	st.w	$a1, $s4, 0
	ld.w	$a0, $s2, 0
	slli.d	$a2, $a1, 5
	sub.d	$a0, $a2, $a0
	srl.w	$a2, $t2, $a0
	slli.d	$a0, $a1, 2
	stx.w	$a2, $s4, $a0
	blt	$a1, $t3, .LBB1_12
# %bb.11:                               # %.lr.ph62.us.preheader
                                        #   in Loop: Header=BB1_10 Depth=1
	addi.d	$a2, $a0, -4
	addi.d	$a0, $s4, 4
	ori	$a1, $zero, 255
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ori	$t3, $zero, 2
	addi.d	$t2, $zero, -1
.LBB1_12:                               # %.preheader.us
                                        #   in Loop: Header=BB1_10 Depth=1
	ld.d	$a0, $s2, 24
	ld.d	$a1, $s2, 16
	ld.d	$a2, $s8, 0
	move	$a3, $zero
	b	.LBB1_14
	.p2align	4, , 16
.LBB1_13:                               # %.loopexit.us
                                        #   in Loop: Header=BB1_14 Depth=2
	addi.d	$a3, $a3, 1
	beq	$a3, $s6, .LBB1_9
.LBB1_14:                               #   Parent Loop BB1_10 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_18 Depth 3
	srli.d	$a4, $a3, 3
	and	$a4, $a4, $s0
	add.d	$a4, $s3, $a4
	ld.w	$a4, $a4, 4
	srl.w	$a4, $a4, $a3
	andi	$a4, $a4, 1
	beqz	$a4, .LBB1_13
# %bb.15:                               #   in Loop: Header=BB1_14 Depth=2
	slli.d	$a4, $a3, 2
	ldx.w	$a4, $s1, $a4
	slli.d	$a4, $a4, 2
	ldx.w	$a5, $a0, $a4
	ldx.w	$a4, $a1, $a4
	blt	$a5, $a4, .LBB1_13
# %bb.16:                               # %.lr.ph66.us.preheader
                                        #   in Loop: Header=BB1_14 Depth=2
	addi.w	$a5, $a5, 1
	alsl.d	$a6, $a4, $a2, 2
	b	.LBB1_18
	.p2align	4, , 16
.LBB1_17:                               #   in Loop: Header=BB1_18 Depth=3
	addi.w	$a4, $a4, 1
	addi.d	$a6, $a6, 4
	beq	$a5, $a4, .LBB1_13
.LBB1_18:                               # %.lr.ph66.us
                                        #   Parent Loop BB1_10 Depth=1
                                        #     Parent Loop BB1_14 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$a7, $a6, 0
	bnez	$a7, .LBB1_17
# %bb.19:                               #   in Loop: Header=BB1_18 Depth=3
	srai.d	$a7, $a4, 5
	alsl.d	$a7, $a7, $s4, 2
	ld.w	$t0, $a7, 4
	sll.w	$t1, $s7, $a4
	andn	$t0, $t0, $t1
	st.w	$t0, $a7, 4
	b	.LBB1_17
.LBB1_20:
	ori	$s0, $zero, 1
	addi.d	$s6, $zero, -1
	ori	$s7, $zero, 2
	b	.LBB1_22
	.p2align	4, , 16
.LBB1_21:                               # %.preheader
                                        #   in Loop: Header=BB1_22 Depth=1
	ld.w	$a0, $fp, 0
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	ld.w	$a1, $a1, 0
	alsl.d	$s3, $a0, $s3, 2
	alsl.d	$s4, $a1, $s4, 2
	bgeu	$s3, $s5, .LBB1_24
.LBB1_22:                               # %.lr.ph73.split
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $s2, 0
	slti	$a1, $a0, 33
	addi.w	$a0, $a0, -1
	srli.d	$a0, $a0, 5
	addi.w	$a0, $a0, 1
	maskeqz	$a2, $s0, $a1
	masknez	$a0, $a0, $a1
	or	$a1, $a2, $a0
	st.w	$a1, $s4, 0
	ld.w	$a0, $s2, 0
	slli.d	$a2, $a1, 5
	sub.d	$a0, $a2, $a0
	srl.w	$a2, $s6, $a0
	slli.d	$a0, $a1, 2
	stx.w	$a2, $s4, $a0
	blt	$a1, $s7, .LBB1_21
# %bb.23:                               # %.lr.ph62.preheader
                                        #   in Loop: Header=BB1_22 Depth=1
	addi.d	$a2, $a0, -4
	addi.d	$a0, $s4, 4
	ori	$a1, $zero, 255
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	b	.LBB1_21
.LBB1_24:                               # %._crit_edge74
	beqz	$s1, .LBB1_26
# %bb.25:
	move	$a0, $s1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB1_26:
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
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
.Lfunc_end1:
	.size	map_unate_to_cover, .Lfunc_end1-map_unate_to_cover
                                        # -- End function
	.globl	unate_compl                     # -- Begin function unate_compl
	.p2align	5
	.type	unate_compl,@function
unate_compl:                            # @unate_compl
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.w	$a0, $a0, 12
	ld.w	$a1, $fp, 0
	mul.w	$a0, $a1, $a0
	blez	$a0, .LBB2_3
# %bb.1:                                # %.lr.ph.preheader
	ld.d	$s0, $fp, 24
	alsl.d	$s1, $a0, $s0, 2
	.p2align	4, , 16
.LBB2_2:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.hu	$a0, $s0, 0
	st.w	$a0, $s0, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(set_ord)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s0, 0
	slli.d	$a0, $a0, 16
	or	$a0, $a1, $a0
	st.w	$a0, $s0, 0
	ld.w	$a0, $fp, 0
	alsl.d	$s0, $a0, $s0, 2
	bltu	$s0, $s1, .LBB2_2
.LBB2_3:                                # %._crit_edge
	move	$a0, $fp
	pcaddu18i	$ra, %call36(unate_complement)
	jirl	$ra, $ra, 0
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(sf_rev_contain)
	jr	$t8
.Lfunc_end2:
	.size	unate_compl, .Lfunc_end2-unate_compl
                                        # -- End function
	.globl	unate_complement                # -- Begin function unate_complement
	.p2align	5
	.type	unate_complement,@function
unate_complement:                       # @unate_complement
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
	move	$fp, $a0
	ld.w	$a0, $a0, 12
	ori	$a1, $zero, 1
	beq	$a0, $a1, .LBB3_3
# %bb.1:
	bnez	$a0, .LBB3_9
# %bb.2:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(sf_free)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 4
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(sf_new)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	ld.w	$a0, $a0, 12
	ld.d	$a2, $s0, 24
	ld.w	$a3, $s0, 0
	addi.d	$a4, $a0, 1
	ld.w	$a1, $fp, 4
	st.w	$a4, $s0, 12
	mul.w	$a0, $a0, $a3
	alsl.d	$a0, $a0, $a2, 2
	pcaddu18i	$ra, %call36(set_clear)
	jirl	$ra, $ra, 0
	b	.LBB3_40
.LBB3_3:
	ld.d	$s1, $fp, 24
	ld.w	$a0, $fp, 4
	move	$a1, $a0
	pcaddu18i	$ra, %call36(sf_new)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 4
	move	$s0, $a0
	blez	$a1, .LBB3_8
# %bb.4:                                # %.lr.ph
	move	$s2, $zero
	ori	$s3, $zero, 1
	b	.LBB3_6
	.p2align	4, , 16
.LBB3_5:                                #   in Loop: Header=BB3_6 Depth=1
	addi.w	$s2, $s2, 1
	bge	$s2, $a1, .LBB3_8
.LBB3_6:                                # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a0, $s2, 31, 5
	addi.d	$a0, $a0, 1
	slli.d	$s4, $a0, 2
	ldx.w	$a0, $s1, $s4
	sll.w	$s5, $s3, $s2
	and	$a0, $a0, $s5
	beqz	$a0, .LBB3_5
# %bb.7:                                #   in Loop: Header=BB3_6 Depth=1
	ld.w	$a0, $s0, 12
	ld.w	$a2, $s0, 0
	ld.d	$a3, $s0, 24
	addi.d	$a4, $a0, 1
	st.w	$a4, $s0, 12
	mul.w	$a0, $a0, $a2
	alsl.d	$a0, $a0, $a3, 2
	pcaddu18i	$ra, %call36(set_clear)
	jirl	$ra, $ra, 0
	ldx.w	$a1, $a0, $s4
	or	$a1, $a1, $s5
	stx.w	$a1, $a0, $s4
	ld.w	$a1, $fp, 4
	b	.LBB3_5
.LBB3_8:                                # %._crit_edge
	move	$a0, $fp
	pcaddu18i	$ra, %call36(sf_free)
	jirl	$ra, $ra, 0
	b	.LBB3_40
.LBB3_9:
	ld.w	$s0, $fp, 4
	ori	$a1, $zero, 33
	ori	$a0, $zero, 8
	blt	$s0, $a1, .LBB3_11
# %bb.10:
	addi.d	$a0, $s0, -1
	srli.d	$a0, $a0, 3
	lu12i.w	$a1, 131071
	ori	$a1, $a1, 4092
	and	$a0, $a0, $a1
	addi.d	$a0, $a0, 8
.LBB3_11:
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$a1, $s0
	pcaddu18i	$ra, %call36(set_clear)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 4
	ld.w	$a2, $fp, 12
	move	$s0, $a0
	addi.w	$s2, $a1, 1
	blez	$a2, .LBB3_18
# %bb.12:                               # %.lr.ph124.preheader
	ld.d	$s1, $fp, 24
	move	$s3, $zero
	b	.LBB3_15
	.p2align	4, , 16
.LBB3_13:                               #   in Loop: Header=BB3_15 Depth=1
	move	$a0, $s0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(set_copy)
	jirl	$ra, $ra, 0
	ld.hu	$s2, $s1, 2
.LBB3_14:                               #   in Loop: Header=BB3_15 Depth=1
	ld.w	$a0, $fp, 0
	ld.w	$a2, $fp, 12
	addi.w	$s3, $s3, 1
	alsl.d	$s1, $a0, $s1, 2
	bge	$s3, $a2, .LBB3_18
.LBB3_15:                               # %.lr.ph124
                                        # =>This Inner Loop Header: Depth=1
	ld.hu	$a0, $s1, 2
	bltu	$a0, $s2, .LBB3_13
# %bb.16:                               #   in Loop: Header=BB3_15 Depth=1
	bne	$a0, $s2, .LBB3_14
# %bb.17:                               #   in Loop: Header=BB3_15 Depth=1
	move	$a0, $s0
	move	$a1, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(set_or)
	jirl	$ra, $ra, 0
	b	.LBB3_14
.LBB3_18:                               # %._crit_edge125
	ori	$a0, $zero, 1
	beq	$s2, $a0, .LBB3_21
# %bb.19:                               # %._crit_edge125
	bnez	$s2, .LBB3_41
# %bb.20:
	st.w	$zero, $fp, 12
	bnez	$s0, .LBB3_38
	b	.LBB3_39
.LBB3_21:
	ld.w	$a1, $fp, 4
	move	$a0, $a2
	pcaddu18i	$ra, %call36(sf_new)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 12
	ld.w	$a2, $fp, 0
	mul.w	$a1, $a2, $a1
	move	$s1, $a0
	blez	$a1, .LBB3_34
# %bb.22:                               # %.lr.ph.i
	ld.d	$s2, $fp, 24
	ld.d	$s3, $s1, 24
	alsl.d	$s4, $a1, $s2, 2
	ori	$s5, $zero, 3
	ori	$s6, $zero, 16
	b	.LBB3_25
	.p2align	4, , 16
.LBB3_23:                               # %.loopexit182
                                        #   in Loop: Header=BB3_25 Depth=1
	ld.w	$a0, $s1, 12
	ld.w	$a1, $s1, 0
	addi.d	$a0, $a0, 1
	st.w	$a0, $s1, 12
	alsl.d	$s3, $a1, $s3, 2
.LBB3_24:                               #   in Loop: Header=BB3_25 Depth=1
	ld.w	$a0, $fp, 0
	alsl.d	$s2, $a0, $s2, 2
	bgeu	$s2, $s4, .LBB3_34
.LBB3_25:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_29 Depth 2
                                        #     Child Loop BB3_33 Depth 2
	move	$a0, $s2
	move	$a1, $s0
	pcaddu18i	$ra, %call36(setp_disjoint)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_24
# %bb.26:                               #   in Loop: Header=BB3_25 Depth=1
	ld.wu	$a0, $s2, 0
	andi	$a4, $a0, 1023
	bltu	$a4, $s5, .LBB3_31
# %bb.27:                               #   in Loop: Header=BB3_25 Depth=1
	sub.d	$a0, $s2, $s3
	bltu	$a0, $s6, .LBB3_31
# %bb.28:                               # %vector.ph
                                        #   in Loop: Header=BB3_25 Depth=1
	addi.d	$a1, $a4, 1
	andi	$a2, $a1, 2044
	sub.d	$a0, $a4, $a2
	alsl.d	$a3, $a4, $s3, 2
	addi.d	$a3, $a3, -12
	alsl.d	$a4, $a4, $s2, 2
	addi.d	$a4, $a4, -12
	move	$a5, $a2
	.p2align	4, , 16
.LBB3_29:                               # %vector.body
                                        #   Parent Loop BB3_25 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $a4, 0
	vst	$vr0, $a3, 0
	addi.d	$a5, $a5, -4
	addi.d	$a3, $a3, -16
	addi.d	$a4, $a4, -16
	bnez	$a5, .LBB3_29
# %bb.30:                               # %middle.block
                                        #   in Loop: Header=BB3_25 Depth=1
	beq	$a1, $a2, .LBB3_23
	b	.LBB3_32
	.p2align	4, , 16
.LBB3_31:                               #   in Loop: Header=BB3_25 Depth=1
	move	$a0, $a4
.LBB3_32:                               # %scalar.ph.preheader
                                        #   in Loop: Header=BB3_25 Depth=1
	addi.d	$a1, $a0, 1
	alsl.d	$a2, $a0, $s3, 2
	alsl.d	$a0, $a0, $s2, 2
	.p2align	4, , 16
.LBB3_33:                               # %scalar.ph
                                        #   Parent Loop BB3_25 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a3, $a0, 0
	st.w	$a3, $a2, 0
	addi.d	$a1, $a1, -1
	addi.d	$a2, $a2, -4
	addi.d	$a0, $a0, -4
	bnez	$a1, .LBB3_33
	b	.LBB3_23
.LBB3_34:                               # %abs_covered_many.exit
	move	$a0, $s1
	pcaddu18i	$ra, %call36(unate_complement)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(sf_free)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s1, 12
	blez	$a0, .LBB3_37
# %bb.35:                               # %.lr.ph129.preheader
	ld.d	$fp, $s1, 24
	move	$s2, $zero
	.p2align	4, , 16
.LBB3_36:                               # %.lr.ph129
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $fp
	move	$a1, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(set_or)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s1, 0
	ld.w	$a1, $s1, 12
	addi.w	$s2, $s2, 1
	alsl.d	$fp, $a0, $fp, 2
	blt	$s2, $a1, .LBB3_36
.LBB3_37:
	move	$fp, $s1
	beqz	$s0, .LBB3_39
.LBB3_38:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB3_39:
	move	$s0, $fp
.LBB3_40:
	move	$a0, $s0
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
.LBB3_41:
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(sf_count_restricted)
	jirl	$ra, $ra, 0
	ld.w	$a3, $fp, 4
	blez	$a3, .LBB3_45
# %bb.42:                               # %.lr.ph.preheader.i
	move	$a1, $zero
	move	$a2, $zero
	move	$a4, $zero
	slli.d	$a3, $a3, 2
	addi.w	$s2, $zero, -1
	.p2align	4, , 16
.LBB3_43:                               # %.lr.ph.i109
                                        # =>This Inner Loop Header: Depth=1
	ldx.w	$a5, $a0, $a2
	slt	$a6, $a4, $a5
	masknez	$a7, $s2, $a6
	maskeqz	$t0, $a1, $a6
	or	$s2, $t0, $a7
	maskeqz	$a5, $a5, $a6
	masknez	$a4, $a4, $a6
	or	$a4, $a5, $a4
	addi.d	$a2, $a2, 4
	addi.w	$a1, $a1, 1
	bne	$a3, $a2, .LBB3_43
# %bb.44:
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -1
	bne	$s2, $a0, .LBB3_48
	b	.LBB3_47
.LBB3_45:                               # %._crit_edge.i
	beqz	$a0, .LBB3_47
# %bb.46:                               # %.thread31.i
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB3_47:                               # %.thread.i
	addi.w	$s2, $zero, -1
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	pcaddu18i	$ra, %call36(fatal)
	jirl	$ra, $ra, 0
.LBB3_48:                               # %abs_select_restricted.exit
	ld.w	$a0, $fp, 12
	ld.w	$a1, $fp, 4
	pcaddu18i	$ra, %call36(sf_new)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 12
	ld.w	$t0, $fp, 0
	mul.w	$a2, $t0, $a1
	blez	$a2, .LBB3_61
# %bb.49:                               # %.lr.ph.i114
	ld.d	$a1, $fp, 24
	alsl.d	$a2, $a2, $a1, 2
	ld.d	$a3, $a0, 24
	srai.d	$a4, $s2, 5
	ori	$a5, $zero, 1
	sll.w	$a5, $a5, $s2
	ori	$a6, $zero, 3
	ori	$a7, $zero, 16
	b	.LBB3_52
	.p2align	4, , 16
.LBB3_50:                               # %.loopexit181
                                        #   in Loop: Header=BB3_52 Depth=1
	ld.w	$t1, $a0, 12
	ld.w	$t2, $a0, 0
	ld.w	$t0, $fp, 0
	addi.d	$t1, $t1, 1
	st.w	$t1, $a0, 12
	alsl.d	$a3, $t2, $a3, 2
.LBB3_51:                               #   in Loop: Header=BB3_52 Depth=1
	alsl.d	$a1, $t0, $a1, 2
	bgeu	$a1, $a2, .LBB3_61
.LBB3_52:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_56 Depth 2
                                        #     Child Loop BB3_60 Depth 2
	alsl.d	$t1, $a4, $a1, 2
	ld.w	$t1, $t1, 4
	and	$t1, $t1, $a5
	bnez	$t1, .LBB3_51
# %bb.53:                               #   in Loop: Header=BB3_52 Depth=1
	ld.wu	$t0, $a1, 0
	andi	$t4, $t0, 1023
	bltu	$t4, $a6, .LBB3_58
# %bb.54:                               #   in Loop: Header=BB3_52 Depth=1
	sub.d	$t0, $a1, $a3
	bltu	$t0, $a7, .LBB3_58
# %bb.55:                               # %vector.ph168
                                        #   in Loop: Header=BB3_52 Depth=1
	addi.d	$t1, $t4, 1
	andi	$t2, $t1, 2044
	sub.d	$t0, $t4, $t2
	alsl.d	$t3, $t4, $a3, 2
	addi.d	$t3, $t3, -12
	alsl.d	$t4, $t4, $a1, 2
	addi.d	$t4, $t4, -12
	move	$t5, $t2
	.p2align	4, , 16
.LBB3_56:                               # %vector.body171
                                        #   Parent Loop BB3_52 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $t4, 0
	vst	$vr0, $t3, 0
	addi.d	$t5, $t5, -4
	addi.d	$t3, $t3, -16
	addi.d	$t4, $t4, -16
	bnez	$t5, .LBB3_56
# %bb.57:                               # %middle.block178
                                        #   in Loop: Header=BB3_52 Depth=1
	beq	$t1, $t2, .LBB3_50
	b	.LBB3_59
.LBB3_58:                               #   in Loop: Header=BB3_52 Depth=1
	move	$t0, $t4
.LBB3_59:                               # %scalar.ph166.preheader
                                        #   in Loop: Header=BB3_52 Depth=1
	addi.d	$t1, $t0, 1
	alsl.d	$t2, $t0, $a3, 2
	alsl.d	$t0, $t0, $a1, 2
	.p2align	4, , 16
.LBB3_60:                               # %scalar.ph166
                                        #   Parent Loop BB3_52 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t3, $t0, 0
	st.w	$t3, $t2, 0
	addi.d	$t1, $t1, -1
	addi.d	$t2, $t2, -4
	addi.d	$t0, $t0, -4
	bnez	$t1, .LBB3_60
	b	.LBB3_50
.LBB3_61:                               # %abs_covered.exit
	pcaddu18i	$ra, %call36(unate_complement)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	ld.w	$a0, $a0, 12
	blez	$a0, .LBB3_64
# %bb.62:                               # %.lr.ph132
	move	$a0, $zero
	ld.d	$a1, $s1, 24
	ori	$a2, $zero, 1
	sll.w	$a2, $a2, $s2
	srai.d	$a3, $s2, 5
	.p2align	4, , 16
.LBB3_63:                               # =>This Inner Loop Header: Depth=1
	alsl.d	$a4, $a3, $a1, 2
	ld.w	$a5, $a4, 4
	or	$a5, $a5, $a2
	st.w	$a5, $a4, 4
	ld.w	$a4, $s1, 0
	ld.w	$a5, $s1, 12
	addi.w	$a0, $a0, 1
	alsl.d	$a1, $a4, $a1, 2
	blt	$a0, $a5, .LBB3_63
.LBB3_64:                               # %._crit_edge133
	ld.w	$a0, $fp, 12
	blez	$a0, .LBB3_69
# %bb.65:                               # %.lr.ph137
	move	$a1, $zero
	ld.d	$a2, $fp, 24
	srai.d	$a3, $s2, 5
	ori	$a4, $zero, 1
	sll.w	$a4, $a4, $s2
	nor	$a5, $a4, $zero
	b	.LBB3_67
	.p2align	4, , 16
.LBB3_66:                               #   in Loop: Header=BB3_67 Depth=1
	ld.w	$a6, $fp, 0
	addi.w	$a1, $a1, 1
	alsl.d	$a2, $a6, $a2, 2
	bge	$a1, $a0, .LBB3_69
.LBB3_67:                               # =>This Inner Loop Header: Depth=1
	alsl.d	$a6, $a3, $a2, 2
	ld.w	$a7, $a6, 4
	and	$t0, $a7, $a4
	beqz	$t0, .LBB3_66
# %bb.68:                               #   in Loop: Header=BB3_67 Depth=1
	and	$a0, $a7, $a5
	st.w	$a0, $a6, 4
	ld.hu	$a0, $a2, 2
	slli.d	$a0, $a0, 16
	addu16i.d	$a0, $a0, -1
	srli.d	$a0, $a0, 16
	st.h	$a0, $a2, 2
	ld.w	$a0, $fp, 12
	b	.LBB3_66
.LBB3_69:                               # %._crit_edge138
	move	$a0, $fp
	pcaddu18i	$ra, %call36(unate_complement)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(sf_append)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	bnez	$s0, .LBB3_38
	b	.LBB3_39
.Lfunc_end3:
	.size	unate_complement, .Lfunc_end3-unate_complement
                                        # -- End function
	.globl	exact_minimum_cover             # -- Begin function exact_minimum_cover
	.p2align	5
	.type	exact_minimum_cover,@function
exact_minimum_cover:                    # @exact_minimum_cover
# %bb.0:
	addi.d	$sp, $sp, -688
	st.d	$ra, $sp, 680                   # 8-byte Folded Spill
	st.d	$fp, $sp, 672                   # 8-byte Folded Spill
	st.d	$s0, $sp, 664                   # 8-byte Folded Spill
	st.d	$s1, $sp, 656                   # 8-byte Folded Spill
	st.d	$s2, $sp, 648                   # 8-byte Folded Spill
	st.d	$s3, $sp, 640                   # 8-byte Folded Spill
	st.d	$s4, $sp, 632                   # 8-byte Folded Spill
	st.d	$s5, $sp, 624                   # 8-byte Folded Spill
	st.d	$s6, $sp, 616                   # 8-byte Folded Spill
	st.d	$s7, $sp, 608                   # 8-byte Folded Spill
	st.d	$s8, $sp, 600                   # 8-byte Folded Spill
	move	$fp, $a0
	pcaddu18i	$ra, %call36(util_cpu_time)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 12
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	blez	$a1, .LBB4_51
# %bb.1:                                # %.preheader.preheader
	move	$s0, $zero
	ori	$a0, $zero, 1
	.p2align	4, , 16
.LBB4_2:                                # %.preheader
                                        # =>This Inner Loop Header: Depth=1
	addi.w	$a2, $a1, 0
	bstrpick.d	$a1, $a1, 31, 1
	addi.d	$s0, $s0, 1
	bltu	$a0, $a2, .LBB4_2
# %bb.3:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(sf_save)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(lex_sort)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	ld.w	$a1, $a0, 4
	ori	$a0, $zero, 1
	ori	$s5, $zero, 1
	pcaddu18i	$ra, %call36(sf_new)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	st.d	$a0, $sp, 88
	ld.w	$a0, $a0, 12
	st.d	$s0, $sp, 16                    # 8-byte Folded Spill
	st.w	$s0, $sp, 96
	ld.d	$a2, $s1, 24
	ld.w	$a3, $s1, 0
	addi.d	$a4, $a0, 1
	ld.w	$a1, $s4, 4
	st.w	$a4, $s1, 12
	mul.w	$a0, $a0, $a3
	alsl.d	$a0, $a0, $a2, 2
	pcaddu18i	$ra, %call36(set_fill)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s4, 0
	ld.w	$a2, $s4, 12
	mul.w	$a1, $a2, $a0
	blez	$a1, .LBB4_38
# %bb.4:                                # %.lr.ph119.preheader
	ld.d	$s6, $s4, 24
	addi.d	$a2, $a2, -1
	mul.w	$a0, $a2, $a0
	alsl.d	$a0, $a0, $s6, 2
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	alsl.d	$a0, $a1, $s6, 2
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	ori	$fp, $zero, 1
	st.d	$s4, $sp, 40                    # 8-byte Folded Spill
	b	.LBB4_7
	.p2align	4, , 16
.LBB4_5:                                #   in Loop: Header=BB4_7 Depth=1
	move	$a0, $fp
.LBB4_6:                                # %.critedge
                                        #   in Loop: Header=BB4_7 Depth=1
	ld.w	$a1, $s4, 0
	alsl.d	$s6, $a1, $s6, 2
	move	$fp, $a0
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	bgeu	$s6, $a0, .LBB4_37
.LBB4_7:                                # %.lr.ph119
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_10 Depth 2
                                        #     Child Loop BB4_15 Depth 2
                                        #       Child Loop BB4_21 Depth 3
                                        #         Child Loop BB4_25 Depth 4
	move	$a0, $s6
	pcaddu18i	$ra, %call36(set_ord)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s4, 4
	pcaddu18i	$ra, %call36(sf_new)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s4, 4
	move	$s2, $a0
	blez	$a1, .LBB4_12
# %bb.8:                                # %.lr.ph
                                        #   in Loop: Header=BB4_7 Depth=1
	move	$s0, $zero
	b	.LBB4_10
	.p2align	4, , 16
.LBB4_9:                                #   in Loop: Header=BB4_10 Depth=2
	addi.w	$s0, $s0, 1
	bge	$s0, $a1, .LBB4_12
.LBB4_10:                               #   Parent Loop BB4_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	bstrpick.d	$a0, $s0, 31, 5
	addi.d	$a0, $a0, 1
	slli.d	$s1, $a0, 2
	ldx.w	$a0, $s6, $s1
	sll.w	$s3, $s5, $s0
	and	$a0, $a0, $s3
	beqz	$a0, .LBB4_9
# %bb.11:                               #   in Loop: Header=BB4_10 Depth=2
	ld.w	$a0, $s2, 12
	ld.w	$a2, $s2, 0
	ld.d	$a3, $s2, 24
	addi.d	$a4, $a0, 1
	st.w	$a4, $s2, 12
	mul.w	$a0, $a0, $a2
	alsl.d	$a0, $a0, $a3, 2
	pcaddu18i	$ra, %call36(set_fill)
	jirl	$ra, $ra, 0
	ldx.w	$a1, $a0, $s1
	andn	$a1, $a1, $s3
	stx.w	$a1, $a0, $s1
	ld.w	$a1, $s4, 4
	b	.LBB4_9
	.p2align	4, , 16
.LBB4_12:                               # %._crit_edge
                                        #   in Loop: Header=BB4_7 Depth=1
	addi.d	$a2, $sp, 88
	alsl.d	$a1, $fp, $a2, 4
	slli.d	$a0, $fp, 4
	stx.d	$s2, $a0, $a2
	addi.w	$a0, $fp, 1
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	st.w	$a2, $a1, 8
	blez	$fp, .LBB4_6
# %bb.13:                               # %.lr.ph113
                                        #   in Loop: Header=BB4_7 Depth=1
	st.d	$s6, $sp, 48                    # 8-byte Folded Spill
	b	.LBB4_15
	.p2align	4, , 16
.LBB4_14:                               #   in Loop: Header=BB4_15 Depth=2
	move	$a0, $s3
	pcaddu18i	$ra, %call36(sf_free)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(sf_free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	st.d	$s4, $a0, -32
	st.w	$s5, $a0, -24
	addi.w	$a0, $fp, -1
	ld.d	$s4, $sp, 40                    # 8-byte Folded Reload
	ori	$s5, $zero, 1
	ori	$a1, $zero, 2
	bge	$a1, $fp, .LBB4_6
.LBB4_15:                               #   Parent Loop BB4_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_21 Depth 3
                                        #         Child Loop BB4_25 Depth 4
	move	$fp, $a0
	addi.d	$a0, $sp, 88
	alsl.d	$a1, $fp, $a0, 4
	ld.w	$s0, $a1, -8
	ld.w	$s1, $a1, -24
	beq	$s0, $s1, .LBB4_17
# %bb.16:                               #   in Loop: Header=BB4_15 Depth=2
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	bne	$s6, $a0, .LBB4_5
.LBB4_17:                               #   in Loop: Header=BB4_15 Depth=2
	ld.d	$s2, $a1, -16
	st.d	$a1, $sp, 80                    # 8-byte Folded Spill
	ld.d	$s3, $a1, -32
	ld.w	$a1, $s2, 4
	ori	$a0, $zero, 500
	pcaddu18i	$ra, %call36(sf_new)
	jirl	$ra, $ra, 0
	ld.w	$a2, $s2, 12
	ld.w	$a1, $s2, 0
	mul.w	$a2, $a1, $a2
	move	$s5, $a0
	blez	$a2, .LBB4_33
# %bb.18:                               # %.lr.ph104.i
                                        #   in Loop: Header=BB4_15 Depth=2
	st.d	$s1, $sp, 56                    # 8-byte Folded Spill
	st.d	$s0, $sp, 64                    # 8-byte Folded Spill
	st.d	$fp, $sp, 72                    # 8-byte Folded Spill
	ld.d	$s4, $s2, 24
	ld.d	$s7, $s5, 24
	ld.w	$a0, $s3, 0
	move	$s0, $zero
	alsl.d	$fp, $a2, $s4, 2
	b	.LBB4_21
	.p2align	4, , 16
.LBB4_19:                               # %._crit_edge.split.us.loopexit.i
                                        #   in Loop: Header=BB4_21 Depth=3
	ld.w	$a1, $s2, 0
.LBB4_20:                               # %._crit_edge.split.us.i
                                        #   in Loop: Header=BB4_21 Depth=3
	alsl.d	$s4, $a1, $s4, 2
	bgeu	$s4, $fp, .LBB4_30
.LBB4_21:                               # %.lr.ph104.split.i
                                        #   Parent Loop BB4_7 Depth=1
                                        #     Parent Loop BB4_15 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB4_25 Depth 4
	ld.w	$a2, $s3, 12
	mul.w	$a2, $a2, $a0
	blez	$a2, .LBB4_20
# %bb.22:                               # %.lr.ph.i.preheader
                                        #   in Loop: Header=BB4_21 Depth=3
	ld.d	$s8, $s3, 24
	alsl.d	$s1, $a2, $s8, 2
	b	.LBB4_25
	.p2align	4, , 16
.LBB4_23:                               #   in Loop: Header=BB4_25 Depth=4
	ld.w	$a0, $s5, 0
	alsl.d	$s7, $a0, $s7, 2
.LBB4_24:                               # %.thread80.us.i
                                        #   in Loop: Header=BB4_25 Depth=4
	ld.w	$a0, $s3, 0
	alsl.d	$s8, $a0, $s8, 2
	bgeu	$s8, $s1, .LBB4_19
.LBB4_25:                               # %.lr.ph.i
                                        #   Parent Loop BB4_7 Depth=1
                                        #     Parent Loop BB4_15 Depth=2
                                        #       Parent Loop BB4_21 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	move	$a0, $s7
	move	$a1, $s4
	move	$a2, $s8
	pcaddu18i	$ra, %call36(set_andp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB4_24
# %bb.26:                               # %.thread.us.i
                                        #   in Loop: Header=BB4_25 Depth=4
	ld.w	$a0, $s5, 12
	ld.w	$a1, $s5, 8
	addi.w	$a0, $a0, 1
	st.w	$a0, $s5, 12
	blt	$a0, $a1, .LBB4_23
# %bb.27:                               #   in Loop: Header=BB4_25 Depth=4
	move	$a0, $s5
	pcaddu18i	$ra, %call36(sf_contain)
	jirl	$ra, $ra, 0
	move	$s6, $a0
	beqz	$s0, .LBB4_29
# %bb.28:                               #   in Loop: Header=BB4_25 Depth=4
	move	$a0, $s0
	move	$a1, $s6
	pcaddu18i	$ra, %call36(sf_union)
	jirl	$ra, $ra, 0
	move	$s6, $a0
.LBB4_29:                               #   in Loop: Header=BB4_25 Depth=4
	ld.w	$a1, $s2, 4
	ori	$a0, $zero, 500
	pcaddu18i	$ra, %call36(sf_new)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	ld.d	$s7, $a0, 24
	move	$s0, $s6
	b	.LBB4_24
	.p2align	4, , 16
.LBB4_30:                               # %._crit_edge105.i
                                        #   in Loop: Header=BB4_15 Depth=2
	move	$a0, $s5
	pcaddu18i	$ra, %call36(sf_contain)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	ld.d	$s1, $sp, 56                    # 8-byte Folded Reload
	beqz	$s0, .LBB4_32
# %bb.31:                               #   in Loop: Header=BB4_15 Depth=2
	move	$a0, $s0
	move	$a1, $s4
	pcaddu18i	$ra, %call36(sf_union)
	jirl	$ra, $ra, 0
	move	$s4, $a0
.LBB4_32:                               # %unate_intersect.exit
                                        #   in Loop: Header=BB4_15 Depth=2
	ld.d	$s6, $sp, 48                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 64                    # 8-byte Folded Reload
	b	.LBB4_34
	.p2align	4, , 16
.LBB4_33:                               # %._crit_edge105.thread.i
                                        #   in Loop: Header=BB4_15 Depth=2
	move	$a0, $s5
	pcaddu18i	$ra, %call36(sf_contain)
	jirl	$ra, $ra, 0
	move	$s4, $a0
.LBB4_34:                               # %unate_intersect.exit
                                        #   in Loop: Header=BB4_15 Depth=2
	slt	$a0, $s0, $s1
	masknez	$a1, $s1, $a0
	maskeqz	$a0, $s0, $a0
	or	$a0, $a0, $a1
	addi.w	$s5, $a0, -1
	ori	$a1, $zero, 10
	blt	$a1, $a0, .LBB4_14
# %bb.35:                               # %unate_intersect.exit
                                        #   in Loop: Header=BB4_15 Depth=2
	pcalau12i	$a0, %got_pc_hi20(debug)
	ld.d	$a0, $a0, %got_pc_lo12(debug)
	ld.wu	$a0, $a0, 0
	andi	$a0, $a0, 2048
	beqz	$a0, .LBB4_14
# %bb.36:                               #   in Loop: Header=BB4_15 Depth=2
	ld.w	$s0, $s4, 12
	ld.w	$s6, $s2, 12
	ld.w	$s7, $s3, 12
	pcaddu18i	$ra, %call36(util_cpu_time)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	sub.d	$a0, $a0, $a1
	pcaddu18i	$ra, %call36(util_print_time)
	jirl	$ra, $ra, 0
	move	$a5, $a0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	move	$a1, $s5
	move	$a2, $s0
	move	$a3, $s6
	move	$a4, $s7
	ld.d	$s6, $sp, 48                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$a0, $a0, %got_pc_lo12(stdout)
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(fflush)
	jirl	$ra, $ra, 0
	b	.LBB4_14
.LBB4_37:                               # %._crit_edge120.loopexit
	ld.d	$s1, $sp, 88
.LBB4_38:                               # %._crit_edge120
	ld.w	$s0, $s4, 4
	ori	$a1, $zero, 33
	ori	$a0, $zero, 8
	blt	$s0, $a1, .LBB4_40
# %bb.39:
	addi.d	$a0, $s0, -1
	srli.d	$a0, $a0, 3
	lu12i.w	$a1, 131071
	ori	$a1, $a1, 4092
	and	$a0, $a0, $a1
	addi.d	$a0, $a0, 8
.LBB4_40:
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$a1, $s0
	pcaddu18i	$ra, %call36(set_clear)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s4, 4
	pcaddu18i	$ra, %call36(set_fill)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s1, 12
	ld.w	$a2, $s1, 0
	mul.w	$a2, $a2, $a1
	blez	$a2, .LBB4_52
# %bb.41:                               # %.lr.ph123.preheader
	ld.d	$a1, $s1, 24
	alsl.d	$a2, $a2, $a1, 2
	addi.d	$a3, $a0, 4
	addi.d	$a4, $a0, -12
	ori	$a5, $zero, 4
	ori	$a6, $zero, 1
	vrepli.b	$vr0, -1
	b	.LBB4_43
	.p2align	4, , 16
.LBB4_42:                               # %.loopexit
                                        #   in Loop: Header=BB4_43 Depth=1
	ld.w	$a7, $s1, 0
	alsl.d	$a1, $a7, $a1, 2
	bgeu	$a1, $a2, .LBB4_53
.LBB4_43:                               # %.lr.ph123
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_47 Depth 2
                                        #     Child Loop BB4_50 Depth 2
	ld.wu	$a7, $a1, 0
	ld.wu	$t2, $a0, 0
	srli.d	$a7, $a7, 10
	andi	$t0, $t2, 1023
	bstrins.d	$t2, $a7, 63, 10
	sltu	$t1, $zero, $t0
	sub.d	$a7, $t0, $t1
	addi.d	$a7, $a7, 1
	st.w	$t2, $a1, 0
	bltu	$a7, $a5, .LBB4_49
# %bb.44:                               # %vector.memcheck
                                        #   in Loop: Header=BB4_43 Depth=1
	alsl.d	$t2, $t1, $a1, 2
	alsl.d	$t4, $t0, $a3, 2
	alsl.d	$t3, $t0, $a1, 2
	bgeu	$t2, $t4, .LBB4_46
# %bb.45:                               # %vector.memcheck
                                        #   in Loop: Header=BB4_43 Depth=1
	addi.d	$t2, $t3, 4
	alsl.d	$t1, $t1, $a0, 2
	bltu	$t1, $t2, .LBB4_49
.LBB4_46:                               # %vector.ph
                                        #   in Loop: Header=BB4_43 Depth=1
	move	$t1, $a7
	bstrins.d	$t1, $zero, 1, 0
	sub.d	$t2, $t0, $t1
	addi.d	$t3, $t3, -12
	alsl.d	$t0, $t0, $a4, 2
	move	$t4, $t1
	.p2align	4, , 16
.LBB4_47:                               # %vector.body
                                        #   Parent Loop BB4_43 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr1, $t3, 0
	vld	$vr2, $t0, 0
	vxor.v	$vr1, $vr1, $vr0
	vand.v	$vr1, $vr2, $vr1
	vst	$vr1, $t3, 0
	addi.d	$t4, $t4, -4
	addi.d	$t3, $t3, -16
	addi.d	$t0, $t0, -16
	bnez	$t4, .LBB4_47
# %bb.48:                               # %middle.block
                                        #   in Loop: Header=BB4_43 Depth=1
	move	$t0, $t2
	beq	$a7, $t1, .LBB4_42
	.p2align	4, , 16
.LBB4_49:                               # %scalar.ph.preheader
                                        #   in Loop: Header=BB4_43 Depth=1
	addi.d	$a7, $t0, 1
	alsl.d	$t1, $t0, $a1, 2
	alsl.d	$t0, $t0, $a0, 2
	.p2align	4, , 16
.LBB4_50:                               # %scalar.ph
                                        #   Parent Loop BB4_43 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t2, $t0, 0
	ld.w	$t3, $t1, 0
	andn	$t2, $t2, $t3
	st.w	$t2, $t1, 0
	addi.d	$a7, $a7, -1
	addi.d	$t1, $t1, -4
	addi.d	$t0, $t0, -4
	bltu	$a6, $a7, .LBB4_50
	b	.LBB4_42
.LBB4_51:
	ld.w	$a1, $fp, 4
	ori	$a0, $zero, 1
	ld.d	$s8, $sp, 600                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 608                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 616                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 624                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 632                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 640                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 648                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 656                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 664                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 672                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 680                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 688
	pcaddu18i	$t8, %call36(sf_new)
	jr	$t8
.LBB4_52:                               # %._crit_edge124
	beqz	$a0, .LBB4_54
.LBB4_53:                               # %._crit_edge124.thread
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB4_54:
	pcalau12i	$a0, %got_pc_hi20(debug)
	ld.d	$a0, $a0, %got_pc_lo12(debug)
	ld.bu	$a0, $a0, 1
	andi	$a0, $a0, 16
	beqz	$a0, .LBB4_56
# %bb.55:
	pcalau12i	$a0, %pc_hi20(.Lstr)
	addi.d	$a0, $a0, %pc_lo12(.Lstr)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(sf_print)
	jirl	$ra, $ra, 0
.LBB4_56:
	move	$a0, $s4
	pcaddu18i	$ra, %call36(sf_free)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	ld.d	$s8, $sp, 600                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 608                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 616                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 624                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 632                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 640                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 648                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 656                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 664                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 672                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 680                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 688
	ret
.Lfunc_end4:
	.size	exact_minimum_cover, .Lfunc_end4-exact_minimum_cover
                                        # -- End function
	.globl	unate_intersect                 # -- Begin function unate_intersect
	.p2align	5
	.type	unate_intersect,@function
unate_intersect:                        # @unate_intersect
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
	move	$fp, $a0
	ld.w	$a3, $a0, 4
	move	$s4, $a2
	move	$s0, $a1
	ori	$a0, $zero, 500
	move	$a1, $a3
	pcaddu18i	$ra, %call36(sf_new)
	jirl	$ra, $ra, 0
	ld.w	$a2, $fp, 12
	ld.w	$a1, $fp, 0
	mul.w	$a2, $a1, $a2
	move	$s2, $a0
	blez	$a2, .LBB5_19
# %bb.1:                                # %.lr.ph104
	ld.d	$s1, $fp, 24
	ld.d	$s3, $s2, 24
	ld.w	$a0, $s0, 0
	alsl.d	$a2, $a2, $s1, 2
	st.d	$a2, $sp, 16                    # 8-byte Folded Spill
	beqz	$s4, .LBB5_20
# %bb.2:                                # %.lr.ph104.split.us.preheader
	move	$s8, $zero
	move	$s4, $zero
	b	.LBB5_5
	.p2align	4, , 16
.LBB5_3:                                # %._crit_edge.split.us118.loopexit
                                        #   in Loop: Header=BB5_5 Depth=1
	ld.w	$a1, $fp, 0
.LBB5_4:                                # %._crit_edge.split.us118
                                        #   in Loop: Header=BB5_5 Depth=1
	alsl.d	$s1, $a1, $s1, 2
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	bgeu	$s1, $a2, .LBB5_32
.LBB5_5:                                # %.lr.ph104.split.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_9 Depth 2
	ld.w	$a2, $s0, 12
	mul.w	$a2, $a0, $a2
	blez	$a2, .LBB5_4
# %bb.6:                                #   in Loop: Header=BB5_5 Depth=1
	ld.d	$s5, $s0, 24
	alsl.d	$s7, $a2, $s5, 2
	b	.LBB5_9
	.p2align	4, , 16
.LBB5_7:                                #   in Loop: Header=BB5_9 Depth=2
	ld.w	$a0, $s2, 0
	alsl.d	$s3, $a0, $s3, 2
.LBB5_8:                                # %.thread80.us114
                                        #   in Loop: Header=BB5_9 Depth=2
	ld.w	$a0, $s0, 0
	alsl.d	$s5, $a0, $s5, 2
	bgeu	$s5, $s7, .LBB5_3
.LBB5_9:                                # %.lr.ph.us
                                        #   Parent Loop BB5_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a0, $s3
	move	$a1, $s1
	move	$a2, $s5
	pcaddu18i	$ra, %call36(set_andp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_8
# %bb.10:                               #   in Loop: Header=BB5_9 Depth=2
	move	$a0, $s3
	pcaddu18i	$ra, %call36(set_ord)
	jirl	$ra, $ra, 0
	move	$s6, $a0
	bge	$s8, $a0, .LBB5_14
# %bb.11:                               #   in Loop: Header=BB5_9 Depth=2
	beqz	$s4, .LBB5_13
# %bb.12:                               #   in Loop: Header=BB5_9 Depth=2
	move	$a0, $s4
	pcaddu18i	$ra, %call36(sf_free)
	jirl	$ra, $ra, 0
.LBB5_13:                               #   in Loop: Header=BB5_9 Depth=2
	ld.d	$s3, $s2, 24
	st.w	$zero, $s2, 12
	move	$a0, $s3
	move	$a1, $s1
	move	$a2, $s5
	pcaddu18i	$ra, %call36(set_and)
	jirl	$ra, $ra, 0
	move	$s4, $zero
	move	$s8, $s6
	b	.LBB5_15
	.p2align	4, , 16
.LBB5_14:                               #   in Loop: Header=BB5_9 Depth=2
	blt	$s6, $s8, .LBB5_8
.LBB5_15:                               # %.thread.us112
                                        #   in Loop: Header=BB5_9 Depth=2
	ld.w	$a0, $s2, 12
	ld.w	$a1, $s2, 8
	addi.w	$a0, $a0, 1
	st.w	$a0, $s2, 12
	blt	$a0, $a1, .LBB5_7
# %bb.16:                               #   in Loop: Header=BB5_9 Depth=2
	move	$a0, $s2
	pcaddu18i	$ra, %call36(sf_contain)
	jirl	$ra, $ra, 0
	move	$s6, $a0
	beqz	$s4, .LBB5_18
# %bb.17:                               #   in Loop: Header=BB5_9 Depth=2
	move	$a0, $s4
	move	$a1, $s6
	pcaddu18i	$ra, %call36(sf_union)
	jirl	$ra, $ra, 0
	move	$s6, $a0
.LBB5_18:                               #   in Loop: Header=BB5_9 Depth=2
	ld.w	$a1, $fp, 4
	ori	$a0, $zero, 500
	pcaddu18i	$ra, %call36(sf_new)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	ld.d	$s3, $a0, 24
	move	$s4, $s6
	b	.LBB5_8
.LBB5_19:                               # %._crit_edge105.thread
	move	$a0, $s2
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
	pcaddu18i	$t8, %call36(sf_contain)
	jr	$t8
.LBB5_20:                               # %.lr.ph104.split.preheader
	move	$s4, $zero
	b	.LBB5_23
	.p2align	4, , 16
.LBB5_21:                               # %._crit_edge.split.us.loopexit
                                        #   in Loop: Header=BB5_23 Depth=1
	ld.w	$a1, $fp, 0
.LBB5_22:                               # %._crit_edge.split.us
                                        #   in Loop: Header=BB5_23 Depth=1
	alsl.d	$s1, $a1, $s1, 2
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	bgeu	$s1, $a2, .LBB5_32
.LBB5_23:                               # %.lr.ph104.split
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_27 Depth 2
	ld.w	$a2, $s0, 12
	mul.w	$a2, $a0, $a2
	blez	$a2, .LBB5_22
# %bb.24:                               # %.lr.ph.preheader
                                        #   in Loop: Header=BB5_23 Depth=1
	ld.d	$s5, $s0, 24
	alsl.d	$s7, $a2, $s5, 2
	b	.LBB5_27
	.p2align	4, , 16
.LBB5_25:                               #   in Loop: Header=BB5_27 Depth=2
	ld.w	$a0, $s2, 0
	alsl.d	$s3, $a0, $s3, 2
.LBB5_26:                               # %.thread80.us
                                        #   in Loop: Header=BB5_27 Depth=2
	ld.w	$a0, $s0, 0
	alsl.d	$s5, $a0, $s5, 2
	bgeu	$s5, $s7, .LBB5_21
.LBB5_27:                               # %.lr.ph
                                        #   Parent Loop BB5_23 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a0, $s3
	move	$a1, $s1
	move	$a2, $s5
	pcaddu18i	$ra, %call36(set_andp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_26
# %bb.28:                               # %.thread.us
                                        #   in Loop: Header=BB5_27 Depth=2
	ld.w	$a0, $s2, 12
	ld.w	$a1, $s2, 8
	addi.w	$a0, $a0, 1
	st.w	$a0, $s2, 12
	blt	$a0, $a1, .LBB5_25
# %bb.29:                               #   in Loop: Header=BB5_27 Depth=2
	move	$a0, $s2
	pcaddu18i	$ra, %call36(sf_contain)
	jirl	$ra, $ra, 0
	move	$s6, $a0
	beqz	$s4, .LBB5_31
# %bb.30:                               #   in Loop: Header=BB5_27 Depth=2
	move	$a0, $s4
	move	$a1, $s6
	pcaddu18i	$ra, %call36(sf_union)
	jirl	$ra, $ra, 0
	move	$s6, $a0
.LBB5_31:                               #   in Loop: Header=BB5_27 Depth=2
	ld.w	$a1, $fp, 4
	ori	$a0, $zero, 500
	pcaddu18i	$ra, %call36(sf_new)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	ld.d	$s3, $a0, 24
	move	$s4, $s6
	b	.LBB5_26
.LBB5_32:                               # %._crit_edge105
	move	$a0, $s2
	pcaddu18i	$ra, %call36(sf_contain)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	beqz	$s4, .LBB5_34
# %bb.33:
	move	$a0, $s4
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
	pcaddu18i	$t8, %call36(sf_union)
	jr	$t8
.LBB5_34:
	move	$a0, $a1
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
.Lfunc_end5:
	.size	unate_intersect, .Lfunc_end5-unate_intersect
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"# EXACT_MINCOV[%d]: %4d = %4d x %4d, time = %s\n"
	.size	.L.str, 48

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"abs_select_restricted: should not have best_var == -1"
	.size	.L.str.2, 54

	.type	.Lstr,@object                   # @str
.Lstr:
	.asciz	"MINCOV: family of all minimal coverings is"
	.size	.Lstr, 43

	.section	".note.GNU-stack","",@progbits
	.addrsig
