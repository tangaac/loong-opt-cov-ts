	.file	"closure.c"
	.text
	.globl	initialize_closure              # -- Begin function initialize_closure
	.p2align	5
	.type	initialize_closure,@function
initialize_closure:                     # @initialize_closure
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	slli.w	$a0, $a0, 1
	pcaddu18i	$ra, %call36(mallocate)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(nrules)
	ld.d	$a1, $a1, %got_pc_lo12(nrules)
	ld.w	$a1, $a1, 0
	pcalau12i	$a2, %pc_hi20(itemset)
	st.d	$a0, $a2, %pc_lo12(itemset)
	addi.w	$a0, $a1, 32
	bstrpick.d	$a1, $a0, 62, 58
	add.w	$a0, $a0, $a1
	srai.d	$a0, $a0, 5
	pcalau12i	$a1, %pc_hi20(rulesetsize)
	st.w	$a0, $a1, %pc_lo12(rulesetsize)
	slli.d	$a0, $a0, 2
	pcaddu18i	$ra, %call36(mallocate)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(ruleset)
	st.d	$a0, $a1, %pc_lo12(ruleset)
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(set_fderives)
	jr	$t8
.Lfunc_end0:
	.size	initialize_closure, .Lfunc_end0-initialize_closure
                                        # -- End function
	.globl	set_fderives                    # -- Begin function set_fderives
	.p2align	5
	.type	set_fderives,@function
set_fderives:                           # @set_fderives
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(nvars)
	ld.d	$a0, $a0, %got_pc_lo12(nvars)
	ld.w	$a0, $a0, 0
	pcalau12i	$s0, %pc_hi20(rulesetsize)
	ld.w	$a1, $s0, %pc_lo12(rulesetsize)
	mul.d	$a0, $a0, $a1
	slli.w	$a0, $a0, 2
	pcaddu18i	$ra, %call36(mallocate)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(ntokens)
	ld.d	$fp, $a1, %got_pc_lo12(ntokens)
	ld.w	$a1, $fp, 0
	ld.w	$a2, $s0, %pc_lo12(rulesetsize)
	mul.w	$a1, $a2, $a1
	slli.d	$a1, $a1, 2
	sub.d	$a0, $a0, $a1
	pcalau12i	$s1, %pc_hi20(fderives)
	st.d	$a0, $s1, %pc_lo12(fderives)
	pcaddu18i	$ra, %call36(set_firsts)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(nsyms)
	ld.d	$a1, $a0, %got_pc_lo12(nsyms)
	ld.w	$a2, $fp, 0
	ld.w	$t0, $a1, 0
	pcalau12i	$a0, %pc_hi20(firsts)
	ld.d	$a0, $a0, %pc_lo12(firsts)
	bge	$a2, $t0, .LBB1_15
# %bb.1:                                # %.lr.ph40.split.preheader
	pcalau12i	$a3, %pc_hi20(varsetsize)
	ld.w	$a3, $a3, %pc_lo12(varsetsize)
	ld.w	$a4, $s0, %pc_lo12(rulesetsize)
	ld.d	$a6, $s1, %pc_lo12(fderives)
	pcalau12i	$a5, %got_pc_hi20(derives)
	ld.d	$a5, $a5, %got_pc_lo12(derives)
	mul.w	$a7, $a4, $a2
	alsl.d	$a6, $a7, $a6, 2
	ori	$a7, $zero, 1
	b	.LBB1_3
	.p2align	4, , 16
.LBB1_2:                                # %._crit_edge
                                        #   in Loop: Header=BB1_3 Depth=1
	addi.w	$a2, $a2, 1
	alsl.d	$a6, $a4, $a6, 2
	bge	$a2, $t0, .LBB1_15
.LBB1_3:                                # %.lr.ph40.split
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_7 Depth 2
                                        #       Child Loop BB1_10 Depth 3
	ld.w	$t1, $fp, 0
	bge	$t1, $t0, .LBB1_2
# %bb.4:                                # %.lr.ph36
                                        #   in Loop: Header=BB1_3 Depth=1
	sub.d	$t2, $a2, $t1
	mul.w	$t4, $t2, $a3
	slli.d	$t2, $t4, 2
	ldx.w	$t3, $a0, $t2
	ld.d	$t2, $a5, 0
	alsl.d	$t4, $t4, $a0, 2
	addi.d	$t4, $t4, 4
	ori	$t5, $zero, 1
	b	.LBB1_7
.LBB1_5:                                #   in Loop: Header=BB1_7 Depth=2
	ld.w	$t3, $t4, 0
	addi.d	$t4, $t4, 4
	ori	$t5, $zero, 1
	.p2align	4, , 16
.LBB1_6:                                # %.loopexit._crit_edge
                                        #   in Loop: Header=BB1_7 Depth=2
	bge	$t1, $t0, .LBB1_2
.LBB1_7:                                #   Parent Loop BB1_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_10 Depth 3
	and	$t6, $t3, $t5
	beqz	$t6, .LBB1_12
# %bb.8:                                #   in Loop: Header=BB1_7 Depth=2
	slli.d	$t6, $t1, 3
	ldx.d	$t7, $t2, $t6
	ld.h	$t6, $t7, 0
	blt	$t6, $a7, .LBB1_12
# %bb.9:                                # %.lr.ph.preheader
                                        #   in Loop: Header=BB1_7 Depth=2
	bstrpick.d	$t6, $t6, 15, 0
	addi.d	$t0, $t7, 2
	.p2align	4, , 16
.LBB1_10:                               # %.lr.ph
                                        #   Parent Loop BB1_3 Depth=1
                                        #     Parent Loop BB1_7 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	bstrpick.d	$t7, $t6, 31, 5
	slli.d	$t7, $t7, 2
	bstrpick.d	$t7, $t7, 60, 2
	slli.d	$t7, $t7, 2
	ldx.w	$t8, $a6, $t7
	sll.w	$s0, $a7, $t6
	ld.hu	$t6, $t0, 0
	or	$t8, $t8, $s0
	stx.w	$t8, $a6, $t7
	ext.w.h	$t7, $t6
	addi.d	$t0, $t0, 2
	bgtz	$t7, .LBB1_10
# %bb.11:                               # %.loopexit.loopexit
                                        #   in Loop: Header=BB1_7 Depth=2
	ld.w	$t0, $a1, 0
.LBB1_12:                               # %.loopexit
                                        #   in Loop: Header=BB1_7 Depth=2
	slli.w	$t5, $t5, 1
	addi.d	$t1, $t1, 1
	bnez	$t5, .LBB1_6
# %bb.13:                               #   in Loop: Header=BB1_7 Depth=2
	blt	$t1, $t0, .LBB1_5
# %bb.14:                               #   in Loop: Header=BB1_7 Depth=2
	move	$t5, $zero
	b	.LBB1_6
.LBB1_15:                               # %._crit_edge41
	beqz	$a0, .LBB1_17
# %bb.16:
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(free)
	jr	$t8
.LBB1_17:
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end1:
	.size	set_fderives, .Lfunc_end1-set_fderives
                                        # -- End function
	.globl	set_firsts                      # -- Begin function set_firsts
	.p2align	5
	.type	set_firsts,@function
set_firsts:                             # @set_firsts
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(nvars)
	ld.d	$fp, $a0, %got_pc_lo12(nvars)
	ld.w	$a0, $fp, 0
	addi.w	$a1, $a0, 31
	bstrpick.d	$a2, $a1, 62, 58
	add.w	$a1, $a1, $a2
	srai.d	$s0, $a1, 5
	pcalau12i	$a1, %pc_hi20(varsetsize)
	st.w	$s0, $a1, %pc_lo12(varsetsize)
	mul.d	$a0, $a0, $s0
	slli.w	$a0, $a0, 2
	pcaddu18i	$ra, %call36(mallocate)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(ntokens)
	ld.d	$a1, $a1, %got_pc_lo12(ntokens)
	pcalau12i	$a2, %got_pc_hi20(nsyms)
	ld.d	$a2, $a2, %got_pc_lo12(nsyms)
	ld.w	$a3, $a1, 0
	ld.w	$t3, $a2, 0
	pcalau12i	$a4, %pc_hi20(firsts)
	st.d	$a0, $a4, %pc_lo12(firsts)
	bge	$a3, $t3, .LBB2_9
# %bb.1:                                # %.lr.ph20
	pcalau12i	$a4, %got_pc_hi20(derives)
	ld.d	$a4, $a4, %got_pc_lo12(derives)
	pcalau12i	$a5, %got_pc_hi20(ritem)
	ld.d	$a5, $a5, %got_pc_lo12(ritem)
	pcalau12i	$a6, %got_pc_hi20(rrhs)
	ld.d	$a6, $a6, %got_pc_lo12(rrhs)
	ld.d	$a4, $a4, 0
	ld.d	$a5, $a5, 0
	ld.d	$a6, $a6, 0
	addi.w	$a7, $zero, -1
	ori	$t0, $zero, 1
	move	$t2, $a3
	move	$t1, $a0
	b	.LBB2_4
	.p2align	4, , 16
.LBB2_2:                                # %._crit_edge.loopexit
                                        #   in Loop: Header=BB2_4 Depth=1
	ld.w	$t3, $a2, 0
.LBB2_3:                                # %._crit_edge
                                        #   in Loop: Header=BB2_4 Depth=1
	addi.d	$a3, $a3, 1
	alsl.d	$t1, $s0, $t1, 2
	bge	$a3, $t3, .LBB2_9
.LBB2_4:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_7 Depth 2
	slli.d	$t4, $a3, 3
	ldx.d	$t5, $a4, $t4
	ld.h	$t4, $t5, 0
	bltz	$t4, .LBB2_3
# %bb.5:                                # %.lr.ph.preheader
                                        #   in Loop: Header=BB2_4 Depth=1
	bstrpick.d	$t4, $t4, 15, 0
	addi.d	$t3, $t5, 2
	b	.LBB2_7
	.p2align	4, , 16
.LBB2_6:                                #   in Loop: Header=BB2_7 Depth=2
	ld.h	$t5, $t3, 0
	bstrpick.d	$t4, $t5, 15, 0
	addi.d	$t3, $t3, 2
	bge	$a7, $t5, .LBB2_2
.LBB2_7:                                # %.lr.ph
                                        #   Parent Loop BB2_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	slli.d	$t4, $t4, 1
	ldx.h	$t4, $a6, $t4
	slli.d	$t4, $t4, 1
	ldx.h	$t4, $a5, $t4
	blt	$t4, $t2, .LBB2_6
# %bb.8:                                #   in Loop: Header=BB2_7 Depth=2
	sub.w	$t2, $t4, $t2
	srai.d	$t4, $t2, 5
	slli.d	$t4, $t4, 2
	ldx.w	$t5, $t1, $t4
	sll.w	$t2, $t0, $t2
	or	$t2, $t5, $t2
	stx.w	$t2, $t1, $t4
	ld.w	$t2, $a1, 0
	b	.LBB2_6
.LBB2_9:                                # %._crit_edge21
	ld.w	$a1, $fp, 0
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(RTC)
	jr	$t8
.Lfunc_end2:
	.size	set_firsts, .Lfunc_end2-set_firsts
                                        # -- End function
	.globl	closure                         # -- Begin function closure
	.p2align	5
	.type	closure,@function
closure:                                # @closure
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
	pcalau12i	$a2, %pc_hi20(ruleset)
	ld.d	$s0, $a2, %pc_lo12(ruleset)
	pcalau12i	$a2, %pc_hi20(rulesetsize)
	ld.w	$s5, $a2, %pc_lo12(rulesetsize)
	move	$fp, $a0
	alsl.d	$s4, $s5, $s0, 2
	alsl.d	$s3, $a1, $a0, 1
	beqz	$a1, .LBB3_15
# %bb.1:                                # %.preheader60
	blez	$s5, .LBB3_18
# %bb.2:                                # %.preheader58
	move	$s1, $a1
	addi.d	$a0, $s0, 4
	sltu	$a1, $a0, $s4
	maskeqz	$a2, $s4, $a1
	masknez	$a0, $a0, $a1
	or	$a0, $a2, $a0
	nor	$a1, $s0, $zero
	add.d	$s6, $a0, $a1
	move	$a0, $s6
	bstrins.d	$a0, $zero, 1, 0
	addi.d	$s2, $a0, 4
	move	$a0, $s0
	move	$a1, $zero
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	blt	$s1, $a0, .LBB3_25
# %bb.3:                                # %.lr.ph66.split.us.preheader
	pcalau12i	$a0, %got_pc_hi20(ritem)
	ld.d	$a1, $a0, %got_pc_lo12(ritem)
	pcalau12i	$a0, %pc_hi20(fderives)
	ld.d	$a0, $a0, %pc_lo12(fderives)
	ld.d	$a1, $a1, 0
	add.d	$a2, $s0, $s2
	add.d	$a3, $a0, $s2
	srli.d	$a4, $s6, 2
	addi.d	$a4, $a4, 1
	bstrpick.d	$a6, $a4, 62, 3
	slli.d	$a5, $a6, 3
	slli.d	$a6, $a6, 5
	add.d	$a7, $s0, $a6
	pcalau12i	$t0, %got_pc_hi20(ntokens)
	ld.d	$t0, $t0, %got_pc_lo12(ntokens)
	addi.d	$t1, $s0, 16
	addi.d	$t2, $a0, 16
	ori	$t3, $zero, 28
	move	$t4, $fp
	b	.LBB3_5
	.p2align	4, , 16
.LBB3_4:                                # %..loopexit57_crit_edge.us
                                        #   in Loop: Header=BB3_5 Depth=1
	addi.d	$t4, $t4, 2
	bgeu	$t4, $s3, .LBB3_25
.LBB3_5:                                # %.lr.ph66.split.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_12 Depth 2
                                        #     Child Loop BB3_14 Depth 2
	ld.h	$t5, $t4, 0
	slli.d	$t5, $t5, 1
	ldx.h	$t5, $a1, $t5
	ld.w	$t6, $t0, 0
	blt	$t5, $t6, .LBB3_4
# %bb.6:                                # %.lr.ph64.us
                                        #   in Loop: Header=BB3_5 Depth=1
	mul.w	$t6, $s5, $t5
	alsl.d	$t5, $t6, $a0, 2
	bgeu	$s6, $t3, .LBB3_8
# %bb.7:                                #   in Loop: Header=BB3_5 Depth=1
	move	$t6, $s0
	b	.LBB3_14
	.p2align	4, , 16
.LBB3_8:                                # %vector.memcheck
                                        #   in Loop: Header=BB3_5 Depth=1
	alsl.d	$t7, $t6, $a3, 2
	bgeu	$s0, $t7, .LBB3_11
# %bb.9:                                # %vector.memcheck
                                        #   in Loop: Header=BB3_5 Depth=1
	bgeu	$t5, $a2, .LBB3_11
# %bb.10:                               #   in Loop: Header=BB3_5 Depth=1
	move	$t6, $s0
	b	.LBB3_14
.LBB3_11:                               # %vector.ph
                                        #   in Loop: Header=BB3_5 Depth=1
	add.d	$t5, $t5, $a6
	alsl.d	$t6, $t6, $t2, 2
	move	$t7, $a5
	move	$t8, $t1
	.p2align	4, , 16
.LBB3_12:                               # %vector.body
                                        #   Parent Loop BB3_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $t6, -16
	vld	$vr1, $t6, 0
	vld	$vr2, $t8, -16
	vld	$vr3, $t8, 0
	vor.v	$vr0, $vr2, $vr0
	vor.v	$vr1, $vr3, $vr1
	vst	$vr0, $t8, -16
	vst	$vr1, $t8, 0
	addi.d	$t8, $t8, 32
	addi.d	$t7, $t7, -8
	addi.d	$t6, $t6, 32
	bnez	$t7, .LBB3_12
# %bb.13:                               # %middle.block
                                        #   in Loop: Header=BB3_5 Depth=1
	move	$t6, $a7
	beq	$a4, $a5, .LBB3_4
	.p2align	4, , 16
.LBB3_14:                               # %scalar.ph
                                        #   Parent Loop BB3_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t7, $t5, 0
	ld.w	$t8, $t6, 0
	addi.d	$t5, $t5, 4
	addi.d	$s1, $t6, 4
	or	$t7, $t8, $t7
	st.w	$t7, $t6, 0
	move	$t6, $s1
	bltu	$s1, $s4, .LBB3_14
	b	.LBB3_4
.LBB3_15:
	ori	$a0, $zero, 1
	blt	$s5, $a0, .LBB3_18
# %bb.16:                               # %.lr.ph69.preheader
	pcalau12i	$a0, %got_pc_hi20(start_symbol)
	ld.d	$a0, $a0, %got_pc_lo12(start_symbol)
	ld.w	$a0, $a0, 0
	pcalau12i	$a1, %pc_hi20(fderives)
	ld.d	$a4, $a1, %pc_lo12(fderives)
	mul.w	$a1, $a0, $s5
	addi.d	$a0, $s0, 4
	sltu	$a2, $a0, $s4
	maskeqz	$a3, $s4, $a2
	masknez	$a0, $a0, $a2
	or	$a0, $a3, $a0
	nor	$a2, $s0, $zero
	add.d	$a2, $a0, $a2
	ori	$a3, $zero, 28
	alsl.d	$a0, $a1, $a4, 2
	bgeu	$a2, $a3, .LBB3_19
# %bb.17:
	move	$a1, $s0
	b	.LBB3_24
.LBB3_18:                               # %.loopexit56.thread
	pcalau12i	$a0, %pc_hi20(itemset)
	ld.d	$a2, $a0, %pc_lo12(itemset)
	pcalau12i	$a0, %pc_hi20(itemsetend)
	st.d	$a2, $a0, %pc_lo12(itemsetend)
	bltu	$fp, $s3, .LBB3_39
	b	.LBB3_48
.LBB3_19:                               # %vector.memcheck101
	alsl.d	$a3, $a1, $a4, 2
	sub.d	$a3, $s0, $a3
	ori	$a5, $zero, 32
	bgeu	$a3, $a5, .LBB3_21
# %bb.20:
	move	$a1, $s0
	b	.LBB3_24
.LBB3_21:                               # %vector.ph105
	srli.d	$a2, $a2, 2
	addi.d	$a2, $a2, 1
	slli.d	$a6, $a1, 2
	bstrpick.d	$a1, $a2, 62, 3
	slli.d	$a3, $a1, 3
	slli.d	$a1, $a1, 5
	add.d	$a0, $a0, $a1
	add.d	$a1, $s0, $a1
	addi.d	$a5, $s0, 16
	add.d	$a4, $a6, $a4
	addi.d	$a4, $a4, 16
	move	$a6, $a3
	.p2align	4, , 16
.LBB3_22:                               # %vector.body108
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a4, -16
	vld	$vr1, $a4, 0
	vst	$vr0, $a5, -16
	vst	$vr1, $a5, 0
	addi.d	$a5, $a5, 32
	addi.d	$a6, $a6, -8
	addi.d	$a4, $a4, 32
	bnez	$a6, .LBB3_22
# %bb.23:                               # %middle.block117
	beq	$a2, $a3, .LBB3_25
	.p2align	4, , 16
.LBB3_24:                               # %.lr.ph69
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a2, $a0, 0
	addi.d	$a0, $a0, 4
	addi.d	$a3, $a1, 4
	st.w	$a2, $a1, 0
	move	$a1, $a3
	bltu	$a3, $s4, .LBB3_24
.LBB3_25:                               # %.lr.ph80.preheader
	pcalau12i	$a0, %pc_hi20(itemset)
	ld.d	$a3, $a0, %pc_lo12(itemset)
	pcalau12i	$a0, %got_pc_hi20(rrhs)
	ld.d	$a1, $a0, %got_pc_lo12(rrhs)
	move	$a2, $zero
	pcalau12i	$a0, %pc_hi20(itemsetend)
	st.d	$a3, $a0, %pc_lo12(itemsetend)
	b	.LBB3_27
	.p2align	4, , 16
.LBB3_26:                               # %.loopexit.loopexit
                                        #   in Loop: Header=BB3_27 Depth=1
	bgeu	$s0, $s4, .LBB3_38
.LBB3_27:                               # %.lr.ph80
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_32 Depth 2
                                        #       Child Loop BB3_35 Depth 3
	ld.w	$a3, $s0, 0
	addi.d	$s0, $s0, 4
	beqz	$a3, .LBB3_37
# %bb.28:                               # %.preheader55
                                        #   in Loop: Header=BB3_27 Depth=1
	ld.d	$a4, $a1, 0
	addi.w	$a2, $a2, 0
	ori	$a5, $zero, 1
	b	.LBB3_32
	.p2align	4, , 16
.LBB3_29:                               # %.critedge.loopexit
                                        #   in Loop: Header=BB3_32 Depth=2
	ld.d	$a7, $a0, %pc_lo12(itemsetend)
.LBB3_30:                               # %.critedge
                                        #   in Loop: Header=BB3_32 Depth=2
	addi.d	$t0, $a7, 2
	st.d	$t0, $a0, %pc_lo12(itemsetend)
	st.h	$a6, $a7, 0
.LBB3_31:                               #   in Loop: Header=BB3_32 Depth=2
	slli.w	$a5, $a5, 1
	addi.d	$a2, $a2, 1
	beqz	$a5, .LBB3_26
.LBB3_32:                               #   Parent Loop BB3_27 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB3_35 Depth 3
	and	$a6, $a5, $a3
	beqz	$a6, .LBB3_31
# %bb.33:                               #   in Loop: Header=BB3_32 Depth=2
	slli.d	$a6, $a2, 1
	ldx.h	$a6, $a4, $a6
	ld.d	$a7, $a0, %pc_lo12(itemsetend)
	bgeu	$fp, $s3, .LBB3_30
# %bb.34:                               # %.lr.ph71.preheader
                                        #   in Loop: Header=BB3_32 Depth=2
	addi.d	$a7, $a7, 2
	.p2align	4, , 16
.LBB3_35:                               # %.lr.ph71
                                        #   Parent Loop BB3_27 Depth=1
                                        #     Parent Loop BB3_32 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.h	$t0, $fp, 0
	bge	$t0, $a6, .LBB3_29
# %bb.36:                               #   in Loop: Header=BB3_35 Depth=3
	addi.d	$fp, $fp, 2
	st.d	$a7, $a0, %pc_lo12(itemsetend)
	st.h	$t0, $a7, -2
	addi.d	$a7, $a7, 2
	bltu	$fp, $s3, .LBB3_35
	b	.LBB3_29
	.p2align	4, , 16
.LBB3_37:                               #   in Loop: Header=BB3_27 Depth=1
	addi.d	$a2, $a2, 32
	bltu	$s0, $s4, .LBB3_27
.LBB3_38:                               # %.preheader.loopexit
	ld.d	$a2, $a0, %pc_lo12(itemsetend)
	bgeu	$fp, $s3, .LBB3_48
.LBB3_39:                               # %.lr.ph84.preheader
	addi.d	$a0, $fp, 2
	sltu	$a1, $a0, $s3
	maskeqz	$a3, $s3, $a1
	masknez	$a0, $a0, $a1
	or	$a0, $a3, $a0
	nor	$a1, $fp, $zero
	add.d	$a0, $a0, $a1
	ori	$a1, $zero, 30
	bltu	$a0, $a1, .LBB3_44
# %bb.40:                               # %.lr.ph84.preheader
	sub.d	$a1, $a2, $fp
	ori	$a3, $zero, 32
	bltu	$a1, $a3, .LBB3_44
# %bb.41:                               # %vector.ph129
	srli.d	$a0, $a0, 1
	addi.d	$a3, $a0, 1
	move	$a4, $a3
	bstrins.d	$a4, $zero, 3, 0
	alsl.d	$a0, $a4, $fp, 1
	alsl.d	$a1, $a4, $a2, 1
	addi.d	$a2, $a2, 16
	addi.d	$a5, $fp, 16
	move	$a6, $a4
	.p2align	4, , 16
.LBB3_42:                               # %vector.body132
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a5, -16
	vld	$vr1, $a5, 0
	vst	$vr0, $a2, -16
	vst	$vr1, $a2, 0
	addi.d	$a2, $a2, 32
	addi.d	$a6, $a6, -16
	addi.d	$a5, $a5, 32
	bnez	$a6, .LBB3_42
# %bb.43:                               # %middle.block141
	bne	$a3, $a4, .LBB3_45
	b	.LBB3_47
.LBB3_44:
	move	$a0, $fp
	move	$a1, $a2
.LBB3_45:                               # %.lr.ph84.preheader145
	move	$a2, $a1
	.p2align	4, , 16
.LBB3_46:                               # %.lr.ph84
                                        # =>This Inner Loop Header: Depth=1
	ld.h	$a3, $a0, 0
	addi.d	$a4, $a0, 2
	addi.d	$a1, $a2, 2
	st.h	$a3, $a2, 0
	move	$a0, $a4
	move	$a2, $a1
	bltu	$a4, $s3, .LBB3_46
.LBB3_47:                               # %._crit_edge
	pcalau12i	$a0, %pc_hi20(itemsetend)
	st.d	$a1, $a0, %pc_lo12(itemsetend)
.LBB3_48:
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
	.size	closure, .Lfunc_end3-closure
                                        # -- End function
	.globl	finalize_closure                # -- Begin function finalize_closure
	.p2align	5
	.type	finalize_closure,@function
finalize_closure:                       # @finalize_closure
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(itemset)
	ld.d	$a0, $a0, %pc_lo12(itemset)
	beqz	$a0, .LBB4_2
# %bb.1:
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB4_2:
	pcalau12i	$a0, %pc_hi20(ruleset)
	ld.d	$a0, $a0, %pc_lo12(ruleset)
	beqz	$a0, .LBB4_4
# %bb.3:
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB4_4:
	pcalau12i	$a0, %pc_hi20(fderives)
	ld.d	$a0, $a0, %pc_lo12(fderives)
	beqz	$a0, .LBB4_6
# %bb.5:
	pcalau12i	$a1, %got_pc_hi20(ntokens)
	ld.d	$a1, $a1, %got_pc_lo12(ntokens)
	ld.w	$a1, $a1, 0
	pcalau12i	$a2, %pc_hi20(rulesetsize)
	ld.w	$a2, $a2, %pc_lo12(rulesetsize)
	mul.w	$a1, $a2, $a1
	alsl.d	$a0, $a1, $a0, 2
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(free)
	jr	$t8
.LBB4_6:
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end4:
	.size	finalize_closure, .Lfunc_end4-finalize_closure
                                        # -- End function
	.type	itemset,@object                 # @itemset
	.bss
	.globl	itemset
	.p2align	3, 0x0
itemset:
	.dword	0
	.size	itemset, 8

	.type	rulesetsize,@object             # @rulesetsize
	.local	rulesetsize
	.comm	rulesetsize,4,4
	.type	ruleset,@object                 # @ruleset
	.local	ruleset
	.comm	ruleset,8,8
	.type	fderives,@object                # @fderives
	.local	fderives
	.comm	fderives,8,8
	.type	firsts,@object                  # @firsts
	.local	firsts
	.comm	firsts,8,8
	.type	varsetsize,@object              # @varsetsize
	.local	varsetsize
	.comm	varsetsize,4,4
	.type	itemsetend,@object              # @itemsetend
	.globl	itemsetend
	.p2align	3, 0x0
itemsetend:
	.dword	0
	.size	itemsetend, 8

	.section	".note.GNU-stack","",@progbits
	.addrsig
