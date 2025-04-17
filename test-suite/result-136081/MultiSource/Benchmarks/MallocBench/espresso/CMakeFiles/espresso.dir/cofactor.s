	.file	"cofactor.c"
	.text
	.globl	cofactor                        # -- Begin function cofactor
	.p2align	5
	.type	cofactor,@function
cofactor:                               # @cofactor
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
	pcalau12i	$a2, %got_pc_hi20(cube)
	ld.d	$s5, $a2, %got_pc_lo12(cube)
	move	$s1, $a0
	ld.d	$a0, $s5, 80
	ld.d	$a2, $s1, 8
	move	$fp, $a1
	ld.d	$s2, $a0, 0
	sub.d	$a0, $a2, $s1
	slli.d	$a0, $a0, 29
	ori	$a1, $zero, 0
	lu32i.d	$a1, 2
	add.d	$a0, $a0, $a1
	srai.d	$a0, $a0, 29
	bstrins.d	$a0, $zero, 2, 0
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.w	$s3, $s5, 0
	move	$s0, $a0
	ori	$a1, $zero, 33
	ori	$a0, $zero, 8
	blt	$s3, $a1, .LBB0_2
# %bb.1:
	addi.d	$a0, $s3, -1
	srli.d	$a0, $a0, 3
	lu12i.w	$a1, 131071
	ori	$a1, $a1, 4092
	and	$a0, $a0, $a1
	addi.d	$a0, $a0, 8
.LBB0_2:
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$a1, $s3
	pcaddu18i	$ra, %call36(set_clear)
	jirl	$ra, $ra, 0
	ld.d	$s3, $s1, 0
	ld.d	$a1, $s5, 88
	move	$s4, $a0
	move	$a0, $s2
	move	$a2, $fp
	pcaddu18i	$ra, %call36(set_diff)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	move	$a0, $s4
	move	$a1, $s3
	pcaddu18i	$ra, %call36(set_or)
	jirl	$ra, $ra, 0
	ld.d	$a4, $s1, 16
	st.d	$a0, $s0, 0
	addi.d	$a0, $s0, 16
	beqz	$a4, .LBB0_38
# %bb.3:                                # %.lr.ph87
	ld.w	$a5, $s5, 108
	ld.w	$a6, $s5, 8
	ld.w	$a7, $s5, 4
	ld.w	$a2, $s5, 104
	addi.d	$a1, $s1, 24
	alsl.d	$a3, $a5, $fp, 2
	bge	$a6, $a7, .LBB0_20
# %bb.4:                                # %.lr.ph87.split.us.preheader
	ld.d	$t0, $s5, 72
	bstrpick.d	$t2, $a5, 31, 0
	addi.d	$t1, $fp, 4
	addi.d	$t2, $t2, -1
	addi.w	$t3, $zero, -1
	slli.d	$t4, $a5, 2
	ori	$t5, $zero, 2
	lu12i.w	$t6, 349525
	ori	$t6, $t6, 1365
	b	.LBB0_6
	.p2align	4, , 16
.LBB0_5:                                # %.loopexit.us
                                        #   in Loop: Header=BB0_6 Depth=1
	ld.d	$a4, $a1, 0
	addi.d	$a1, $a1, 8
	beqz	$a4, .LBB0_38
.LBB0_6:                                # %.lr.ph87.split.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_11 Depth 2
                                        #     Child Loop BB0_14 Depth 2
                                        #       Child Loop BB0_16 Depth 3
	beq	$a4, $fp, .LBB0_5
# %bb.7:                                #   in Loop: Header=BB0_6 Depth=1
	beq	$a5, $t3, .LBB0_13
# %bb.8:                                #   in Loop: Header=BB0_6 Depth=1
	ldx.w	$t7, $a4, $t4
	ld.w	$t8, $a3, 0
	and	$t7, $t8, $t7
	bstrpick.d	$t8, $t7, 31, 1
	or	$t7, $t8, $t7
	andn	$t7, $a2, $t7
	addi.w	$t7, $t7, 0
	bnez	$t7, .LBB0_5
# %bb.9:                                # %.preheader.us
                                        #   in Loop: Header=BB0_6 Depth=1
	blt	$a5, $t5, .LBB0_13
# %bb.10:                               # %.lr.ph.us.preheader
                                        #   in Loop: Header=BB0_6 Depth=1
	addi.d	$t7, $a4, 4
	move	$t8, $t2
	move	$s1, $t1
	.p2align	4, , 16
.LBB0_11:                               # %.lr.ph.us
                                        #   Parent Loop BB0_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$s2, $t7, 0
	ld.w	$s3, $s1, 0
	and	$s2, $s3, $s2
	srli.d	$s3, $s2, 1
	or	$s2, $s3, $s2
	and	$s2, $s2, $t6
	bne	$s2, $t6, .LBB0_5
# %bb.12:                               #   in Loop: Header=BB0_11 Depth=2
	addi.d	$t7, $t7, 4
	addi.d	$t8, $t8, -1
	addi.d	$s1, $s1, 4
	bnez	$t8, .LBB0_11
	.p2align	4, , 16
.LBB0_13:                               # %.lr.ph82.us
                                        #   in Loop: Header=BB0_6 Depth=1
	ld.d	$t7, $s5, 48
	ld.d	$t8, $s5, 40
	move	$s1, $a6
.LBB0_14:                               #   Parent Loop BB0_6 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_16 Depth 3
	slli.d	$s2, $s1, 2
	ldx.w	$s4, $t7, $s2
	ldx.w	$s6, $t8, $s2
	blt	$s4, $s6, .LBB0_5
# %bb.15:                               # %.lr.ph79.us.preheader
                                        #   in Loop: Header=BB0_14 Depth=2
	slli.d	$s2, $s1, 3
	ldx.d	$s2, $t0, $s2
	slli.d	$s3, $s6, 2
	sub.d	$s4, $s4, $s6
	addi.d	$s4, $s4, 1
	.p2align	4, , 16
.LBB0_16:                               # %.lr.ph79.us
                                        #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_14 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ldx.w	$s6, $a4, $s3
	ldx.w	$s7, $fp, $s3
	ldx.w	$s8, $s2, $s3
	and	$s6, $s7, $s6
	and	$s6, $s6, $s8
	bnez	$s6, .LBB0_18
# %bb.17:                               #   in Loop: Header=BB0_16 Depth=3
	addi.w	$s4, $s4, -1
	addi.d	$s3, $s3, 4
	bnez	$s4, .LBB0_16
	b	.LBB0_5
	.p2align	4, , 16
.LBB0_18:                               #   in Loop: Header=BB0_14 Depth=2
	addi.d	$s1, $s1, 1
	blt	$s1, $a7, .LBB0_14
# %bb.19:                               # %._crit_edge.us
                                        #   in Loop: Header=BB0_6 Depth=1
	addi.d	$t7, $a0, 8
	st.d	$a4, $a0, 0
	move	$a0, $t7
	b	.LBB0_5
.LBB0_20:                               # %.lr.ph87.split
	addi.w	$a6, $zero, -1
	beq	$a5, $a6, .LBB0_24
# %bb.21:                               # %.lr.ph87.split.split
	ori	$a6, $zero, 1
	bge	$a6, $a5, .LBB0_33
# %bb.22:                               # %.lr.ph87.split.split.split.us.preheader
	slli.d	$a5, $a5, 2
	lu12i.w	$a6, 349525
	ori	$a6, $a6, 1365
	b	.LBB0_28
	.p2align	4, , 16
.LBB0_23:                               #   in Loop: Header=BB0_24 Depth=1
	ld.d	$a4, $a1, 0
	addi.d	$a1, $a1, 8
	beqz	$a4, .LBB0_38
.LBB0_24:                               # %.lr.ph87.split.split.us
                                        # =>This Inner Loop Header: Depth=1
	beq	$a4, $fp, .LBB0_23
# %bb.25:                               #   in Loop: Header=BB0_24 Depth=1
	addi.d	$a2, $a0, 8
	st.d	$a4, $a0, 0
	move	$a0, $a2
	b	.LBB0_23
.LBB0_26:                               # %..loopexit74_crit_edge.us106
                                        #   in Loop: Header=BB0_28 Depth=1
	addi.d	$a7, $a0, 8
	st.d	$a4, $a0, 0
	move	$a0, $a7
	.p2align	4, , 16
.LBB0_27:                               # %.loopexit75.us104
                                        #   in Loop: Header=BB0_28 Depth=1
	ld.d	$a4, $a1, 0
	addi.d	$a1, $a1, 8
	beqz	$a4, .LBB0_38
.LBB0_28:                               # %.lr.ph87.split.split.split.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_31 Depth 2
	beq	$a4, $fp, .LBB0_27
# %bb.29:                               #   in Loop: Header=BB0_28 Depth=1
	ldx.w	$a7, $a4, $a5
	ld.w	$t0, $a3, 0
	and	$a7, $t0, $a7
	bstrpick.d	$t0, $a7, 31, 1
	or	$a7, $t0, $a7
	andn	$a7, $a2, $a7
	addi.w	$a7, $a7, 0
	bnez	$a7, .LBB0_27
# %bb.30:                               # %.preheader.us102.preheader
                                        #   in Loop: Header=BB0_28 Depth=1
	ori	$a7, $zero, 4
	.p2align	4, , 16
.LBB0_31:                               # %.preheader.us102
                                        #   Parent Loop BB0_28 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.w	$t0, $a4, $a7
	ldx.w	$t1, $fp, $a7
	and	$t0, $t1, $t0
	srli.d	$t1, $t0, 1
	or	$t0, $t1, $t0
	and	$t0, $t0, $a6
	bne	$t0, $a6, .LBB0_27
# %bb.32:                               #   in Loop: Header=BB0_31 Depth=2
	addi.d	$a7, $a7, 4
	bne	$a5, $a7, .LBB0_31
	b	.LBB0_26
.LBB0_33:
	slli.d	$a5, $a5, 2
	b	.LBB0_35
	.p2align	4, , 16
.LBB0_34:                               #   in Loop: Header=BB0_35 Depth=1
	ld.d	$a4, $a1, 0
	addi.d	$a1, $a1, 8
	beqz	$a4, .LBB0_38
.LBB0_35:                               # %.lr.ph87.split.split.split
                                        # =>This Inner Loop Header: Depth=1
	beq	$a4, $fp, .LBB0_34
# %bb.36:                               #   in Loop: Header=BB0_35 Depth=1
	ldx.w	$a6, $a4, $a5
	ld.w	$a7, $a3, 0
	and	$a6, $a7, $a6
	bstrpick.d	$a7, $a6, 31, 1
	or	$a6, $a7, $a6
	andn	$a6, $a2, $a6
	addi.w	$a6, $a6, 0
	bnez	$a6, .LBB0_34
# %bb.37:                               # %.preheader
                                        #   in Loop: Header=BB0_35 Depth=1
	addi.d	$a6, $a0, 8
	st.d	$a4, $a0, 0
	move	$a0, $a6
	b	.LBB0_34
.LBB0_38:                               # %._crit_edge88
	addi.d	$a1, $a0, 8
	st.d	$zero, $a0, 0
	st.d	$a1, $s0, 8
	move	$a0, $s0
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
.Lfunc_end0:
	.size	cofactor, .Lfunc_end0-cofactor
                                        # -- End function
	.globl	scofactor                       # -- Begin function scofactor
	.p2align	5
	.type	scofactor,@function
scofactor:                              # @scofactor
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
	pcalau12i	$a3, %got_pc_hi20(cube)
	ld.d	$s8, $a3, %got_pc_lo12(cube)
	ld.d	$a3, $s8, 80
	move	$s3, $a2
	move	$fp, $a1
	move	$s2, $a0
	ld.d	$s0, $a3, 8
	ld.d	$a0, $s8, 40
	ld.d	$a1, $s8, 48
	ld.d	$a2, $s2, 8
	slli.d	$a3, $s3, 2
	ldx.w	$s6, $a0, $a3
	ldx.w	$s7, $a1, $a3
	sub.d	$a0, $a2, $s2
	slli.d	$a0, $a0, 29
	ori	$a1, $zero, 0
	lu32i.d	$a1, 2
	add.d	$a0, $a0, $a1
	srai.d	$a0, $a0, 29
	bstrins.d	$a0, $zero, 2, 0
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.w	$s4, $s8, 0
	move	$s1, $a0
	ori	$a1, $zero, 33
	ori	$a0, $zero, 8
	blt	$s4, $a1, .LBB1_2
# %bb.1:
	addi.d	$a0, $s4, -1
	srli.d	$a0, $a0, 3
	lu12i.w	$a1, 131071
	ori	$a1, $a1, 4092
	and	$a0, $a0, $a1
	addi.d	$a0, $a0, 8
.LBB1_2:
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$a1, $s4
	pcaddu18i	$ra, %call36(set_clear)
	jirl	$ra, $ra, 0
	ld.d	$s4, $s2, 0
	ld.d	$a1, $s8, 88
	move	$s5, $a0
	move	$a0, $s0
	move	$a2, $fp
	pcaddu18i	$ra, %call36(set_diff)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	move	$a0, $s5
	move	$a1, $s4
	pcaddu18i	$ra, %call36(set_or)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s8, 72
	st.d	$a0, $s1, 0
	slli.d	$a0, $s3, 3
	ldx.d	$a1, $a1, $a0
	addi.d	$s3, $s1, 16
	move	$a0, $s0
	move	$a2, $fp
	pcaddu18i	$ra, %call36(set_and)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s2, 16
	beqz	$a3, .LBB1_10
# %bb.3:                                # %.lr.ph.preheader
	addi.d	$a0, $s2, 24
	slt	$a1, $s7, $s6
	masknez	$a2, $s7, $a1
	maskeqz	$a1, $s6, $a1
	or	$a2, $a1, $a2
	slli.d	$a1, $s6, 2
	sub.d	$a2, $a2, $s6
	addi.d	$a2, $a2, 1
	b	.LBB1_6
	.p2align	4, , 16
.LBB1_4:                                #   in Loop: Header=BB1_6 Depth=1
	addi.d	$a4, $s3, 8
	st.d	$a3, $s3, 0
	move	$s3, $a4
.LBB1_5:                                # %.loopexit
                                        #   in Loop: Header=BB1_6 Depth=1
	ld.d	$a3, $a0, 0
	addi.d	$a0, $a0, 8
	beqz	$a3, .LBB1_10
.LBB1_6:                                # %.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_8 Depth 2
	beq	$a3, $fp, .LBB1_5
# %bb.7:                                # %.preheader.preheader
                                        #   in Loop: Header=BB1_6 Depth=1
	move	$a4, $a2
	move	$a5, $a1
	.p2align	4, , 16
.LBB1_8:                                # %.preheader
                                        #   Parent Loop BB1_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.w	$a6, $a3, $a5
	ldx.w	$a7, $s0, $a5
	and	$a6, $a7, $a6
	bnez	$a6, .LBB1_4
# %bb.9:                                #   in Loop: Header=BB1_8 Depth=2
	addi.w	$a4, $a4, -1
	addi.d	$a5, $a5, 4
	bnez	$a4, .LBB1_8
	b	.LBB1_5
.LBB1_10:                               # %._crit_edge
	addi.d	$a0, $s3, 8
	st.d	$zero, $s3, 0
	st.d	$a0, $s1, 8
	move	$a0, $s1
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
.Lfunc_end1:
	.size	scofactor, .Lfunc_end1-scofactor
                                        # -- End function
	.globl	massive_count                   # -- Begin function massive_count
	.p2align	5
	.type	massive_count,@function
massive_count:                          # @massive_count
# %bb.0:
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
	pcalau12i	$a1, %got_pc_hi20(cdata)
	pcalau12i	$a2, %got_pc_hi20(cube)
	ld.d	$a3, $a2, %got_pc_lo12(cube)
	ld.d	$a2, $a1, %got_pc_lo12(cdata)
	st.d	$a3, $sp, 24                    # 8-byte Folded Spill
	ld.w	$a1, $a3, 0
	st.d	$a2, $sp, 8                     # 8-byte Folded Spill
	ld.d	$fp, $a2, 0
	ori	$a2, $zero, 1
	move	$s0, $a0
	blt	$a1, $a2, .LBB2_2
# %bb.1:                                # %.lr.ph.preheader
	slli.d	$a2, $a1, 2
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB2_2:                                # %._crit_edge
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	ld.d	$a1, $s0, 16
	beqz	$a1, .LBB2_77
# %bb.3:                                # %.lr.ph209.preheader
	ld.d	$a0, $s0, 0
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 88
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	addi.d	$a4, $s0, 24
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	addi.d	$a0, $a0, -64
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	ori	$a3, $zero, 1
	lu12i.w	$a5, 4080
	lu12i.w	$a6, 8
	lu12i.w	$a7, 4
	lu12i.w	$t0, 2
	lu12i.w	$t1, 1
	lu12i.w	$t2, 2048
	lu12i.w	$t3, 1024
	lu12i.w	$t4, 512
	lu12i.w	$t5, 256
	lu12i.w	$t6, 128
	lu12i.w	$t7, 64
	lu12i.w	$t8, 32
	lu12i.w	$s0, 16
	lu12i.w	$s5, 65536
	lu12i.w	$s6, 32768
	lu12i.w	$s7, 16384
	lu12i.w	$s8, 8192
	lu12i.w	$ra, 4096
	b	.LBB2_5
	.p2align	4, , 16
.LBB2_4:                                # %.loopexit202
                                        #   in Loop: Header=BB2_5 Depth=1
	ld.d	$a1, $a4, 0
	addi.d	$a4, $a4, 8
	beqz	$a1, .LBB2_77
.LBB2_5:                                # %.lr.ph209
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_8 Depth 2
	ld.wu	$a0, $a1, 0
	andi	$s1, $a0, 1023
	beqz	$s1, .LBB2_4
# %bb.6:                                # %.lr.ph206.preheader
                                        #   in Loop: Header=BB2_5 Depth=1
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	alsl.d	$a0, $s1, $a0, 2
	alsl.d	$a1, $s1, $a1, 2
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	alsl.d	$a2, $s1, $a2, 2
	addi.d	$fp, $s1, 1
	slli.d	$s1, $s1, 7
	ld.d	$s2, $sp, 32                    # 8-byte Folded Reload
	add.d	$s2, $s2, $s1
	b	.LBB2_8
	.p2align	4, , 16
.LBB2_7:                                #   in Loop: Header=BB2_8 Depth=2
	addi.d	$a0, $a0, -4
	addi.d	$a1, $a1, -4
	addi.d	$a2, $a2, -4
	addi.d	$fp, $fp, -1
	addi.d	$s2, $s2, -128
	bge	$a3, $fp, .LBB2_4
.LBB2_8:                                # %.lr.ph206
                                        #   Parent Loop BB2_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$s1, $a1, 0
	ld.w	$s3, $a2, 0
	ld.w	$s4, $a0, 0
	or	$s1, $s3, $s1
	andn	$s1, $s4, $s1
	beqz	$s1, .LBB2_7
# %bb.9:                                #   in Loop: Header=BB2_8 Depth=2
	bstrpick.d	$s3, $s1, 31, 24
	beqz	$s3, .LBB2_19
# %bb.10:                               #   in Loop: Header=BB2_8 Depth=2
	addi.w	$s3, $zero, -1
	bge	$s3, $s1, .LBB2_70
# %bb.11:                               #   in Loop: Header=BB2_8 Depth=2
	lu12i.w	$s3, 262144
	and	$s3, $s1, $s3
	bnez	$s3, .LBB2_71
.LBB2_12:                               #   in Loop: Header=BB2_8 Depth=2
	lu12i.w	$s3, 131072
	and	$s3, $s1, $s3
	bnez	$s3, .LBB2_72
.LBB2_13:                               #   in Loop: Header=BB2_8 Depth=2
	and	$s3, $s1, $s5
	bnez	$s3, .LBB2_73
.LBB2_14:                               #   in Loop: Header=BB2_8 Depth=2
	and	$s3, $s1, $s6
	bnez	$s3, .LBB2_74
.LBB2_15:                               #   in Loop: Header=BB2_8 Depth=2
	and	$s3, $s1, $s7
	bnez	$s3, .LBB2_75
.LBB2_16:                               #   in Loop: Header=BB2_8 Depth=2
	and	$s3, $s1, $s8
	bnez	$s3, .LBB2_76
.LBB2_17:                               #   in Loop: Header=BB2_8 Depth=2
	and	$s3, $s1, $ra
	beqz	$s3, .LBB2_19
.LBB2_18:                               #   in Loop: Header=BB2_8 Depth=2
	ld.w	$s3, $s2, 32
	addi.d	$s3, $s3, 1
	st.w	$s3, $s2, 32
.LBB2_19:                               #   in Loop: Header=BB2_8 Depth=2
	and	$s3, $s1, $a5
	beqz	$s3, .LBB2_29
# %bb.20:                               #   in Loop: Header=BB2_8 Depth=2
	and	$s3, $s1, $t2
	bnez	$s3, .LBB2_48
# %bb.21:                               #   in Loop: Header=BB2_8 Depth=2
	and	$s3, $s1, $t3
	bnez	$s3, .LBB2_49
.LBB2_22:                               #   in Loop: Header=BB2_8 Depth=2
	and	$s3, $s1, $t4
	bnez	$s3, .LBB2_50
.LBB2_23:                               #   in Loop: Header=BB2_8 Depth=2
	and	$s3, $s1, $t5
	bnez	$s3, .LBB2_51
.LBB2_24:                               #   in Loop: Header=BB2_8 Depth=2
	and	$s3, $s1, $t6
	bnez	$s3, .LBB2_52
.LBB2_25:                               #   in Loop: Header=BB2_8 Depth=2
	and	$s3, $s1, $t7
	bnez	$s3, .LBB2_53
.LBB2_26:                               #   in Loop: Header=BB2_8 Depth=2
	and	$s3, $s1, $t8
	bnez	$s3, .LBB2_54
.LBB2_27:                               #   in Loop: Header=BB2_8 Depth=2
	and	$s3, $s1, $s0
	beqz	$s3, .LBB2_29
.LBB2_28:                               #   in Loop: Header=BB2_8 Depth=2
	ld.w	$s3, $s2, 0
	addi.d	$s3, $s3, 1
	st.w	$s3, $s2, 0
.LBB2_29:                               #   in Loop: Header=BB2_8 Depth=2
	bstrpick.d	$s3, $s1, 15, 8
	slli.d	$s3, $s3, 8
	beqz	$s3, .LBB2_39
# %bb.30:                               #   in Loop: Header=BB2_8 Depth=2
	and	$s3, $s1, $a6
	bnez	$s3, .LBB2_55
# %bb.31:                               #   in Loop: Header=BB2_8 Depth=2
	and	$s3, $s1, $a7
	bnez	$s3, .LBB2_56
.LBB2_32:                               #   in Loop: Header=BB2_8 Depth=2
	and	$s3, $s1, $t0
	bnez	$s3, .LBB2_57
.LBB2_33:                               #   in Loop: Header=BB2_8 Depth=2
	and	$s3, $s1, $t1
	bnez	$s3, .LBB2_58
.LBB2_34:                               #   in Loop: Header=BB2_8 Depth=2
	andi	$s3, $s1, 2048
	bnez	$s3, .LBB2_59
.LBB2_35:                               #   in Loop: Header=BB2_8 Depth=2
	andi	$s3, $s1, 1024
	bnez	$s3, .LBB2_60
.LBB2_36:                               #   in Loop: Header=BB2_8 Depth=2
	andi	$s3, $s1, 512
	bnez	$s3, .LBB2_61
.LBB2_37:                               #   in Loop: Header=BB2_8 Depth=2
	andi	$s3, $s1, 256
	beqz	$s3, .LBB2_39
.LBB2_38:                               #   in Loop: Header=BB2_8 Depth=2
	ld.w	$s3, $s2, -32
	addi.d	$s3, $s3, 1
	st.w	$s3, $s2, -32
.LBB2_39:                               #   in Loop: Header=BB2_8 Depth=2
	andi	$s3, $s1, 255
	beqz	$s3, .LBB2_7
# %bb.40:                               #   in Loop: Header=BB2_8 Depth=2
	andi	$s3, $s1, 128
	bnez	$s3, .LBB2_62
# %bb.41:                               #   in Loop: Header=BB2_8 Depth=2
	andi	$s3, $s1, 64
	bnez	$s3, .LBB2_63
.LBB2_42:                               #   in Loop: Header=BB2_8 Depth=2
	andi	$s3, $s1, 32
	bnez	$s3, .LBB2_64
.LBB2_43:                               #   in Loop: Header=BB2_8 Depth=2
	andi	$s3, $s1, 16
	bnez	$s3, .LBB2_65
.LBB2_44:                               #   in Loop: Header=BB2_8 Depth=2
	andi	$s3, $s1, 8
	bnez	$s3, .LBB2_66
.LBB2_45:                               #   in Loop: Header=BB2_8 Depth=2
	andi	$s3, $s1, 4
	bnez	$s3, .LBB2_67
.LBB2_46:                               #   in Loop: Header=BB2_8 Depth=2
	andi	$s3, $s1, 2
	bnez	$s3, .LBB2_68
.LBB2_47:                               #   in Loop: Header=BB2_8 Depth=2
	andi	$s1, $s1, 1
	beqz	$s1, .LBB2_7
	b	.LBB2_69
.LBB2_48:                               #   in Loop: Header=BB2_8 Depth=2
	ld.w	$s3, $s2, 28
	addi.d	$s3, $s3, 1
	st.w	$s3, $s2, 28
	and	$s3, $s1, $t3
	beqz	$s3, .LBB2_22
.LBB2_49:                               #   in Loop: Header=BB2_8 Depth=2
	ld.w	$s3, $s2, 24
	addi.d	$s3, $s3, 1
	st.w	$s3, $s2, 24
	and	$s3, $s1, $t4
	beqz	$s3, .LBB2_23
.LBB2_50:                               #   in Loop: Header=BB2_8 Depth=2
	ld.w	$s3, $s2, 20
	addi.d	$s3, $s3, 1
	st.w	$s3, $s2, 20
	and	$s3, $s1, $t5
	beqz	$s3, .LBB2_24
.LBB2_51:                               #   in Loop: Header=BB2_8 Depth=2
	ld.w	$s3, $s2, 16
	addi.d	$s3, $s3, 1
	st.w	$s3, $s2, 16
	and	$s3, $s1, $t6
	beqz	$s3, .LBB2_25
.LBB2_52:                               #   in Loop: Header=BB2_8 Depth=2
	ld.w	$s3, $s2, 12
	addi.d	$s3, $s3, 1
	st.w	$s3, $s2, 12
	and	$s3, $s1, $t7
	beqz	$s3, .LBB2_26
.LBB2_53:                               #   in Loop: Header=BB2_8 Depth=2
	ld.w	$s3, $s2, 8
	addi.d	$s3, $s3, 1
	st.w	$s3, $s2, 8
	and	$s3, $s1, $t8
	beqz	$s3, .LBB2_27
.LBB2_54:                               #   in Loop: Header=BB2_8 Depth=2
	ld.w	$s3, $s2, 4
	addi.d	$s3, $s3, 1
	st.w	$s3, $s2, 4
	and	$s3, $s1, $s0
	bnez	$s3, .LBB2_28
	b	.LBB2_29
.LBB2_55:                               #   in Loop: Header=BB2_8 Depth=2
	ld.w	$s3, $s2, -4
	addi.d	$s3, $s3, 1
	st.w	$s3, $s2, -4
	and	$s3, $s1, $a7
	beqz	$s3, .LBB2_32
.LBB2_56:                               #   in Loop: Header=BB2_8 Depth=2
	ld.w	$s3, $s2, -8
	addi.d	$s3, $s3, 1
	st.w	$s3, $s2, -8
	and	$s3, $s1, $t0
	beqz	$s3, .LBB2_33
.LBB2_57:                               #   in Loop: Header=BB2_8 Depth=2
	ld.w	$s3, $s2, -12
	addi.d	$s3, $s3, 1
	st.w	$s3, $s2, -12
	and	$s3, $s1, $t1
	beqz	$s3, .LBB2_34
.LBB2_58:                               #   in Loop: Header=BB2_8 Depth=2
	ld.w	$s3, $s2, -16
	addi.d	$s3, $s3, 1
	st.w	$s3, $s2, -16
	andi	$s3, $s1, 2048
	beqz	$s3, .LBB2_35
.LBB2_59:                               #   in Loop: Header=BB2_8 Depth=2
	ld.w	$s3, $s2, -20
	addi.d	$s3, $s3, 1
	st.w	$s3, $s2, -20
	andi	$s3, $s1, 1024
	beqz	$s3, .LBB2_36
.LBB2_60:                               #   in Loop: Header=BB2_8 Depth=2
	ld.w	$s3, $s2, -24
	addi.d	$s3, $s3, 1
	st.w	$s3, $s2, -24
	andi	$s3, $s1, 512
	beqz	$s3, .LBB2_37
.LBB2_61:                               #   in Loop: Header=BB2_8 Depth=2
	ld.w	$s3, $s2, -28
	addi.d	$s3, $s3, 1
	st.w	$s3, $s2, -28
	andi	$s3, $s1, 256
	bnez	$s3, .LBB2_38
	b	.LBB2_39
.LBB2_62:                               #   in Loop: Header=BB2_8 Depth=2
	ld.w	$s3, $s2, -36
	addi.d	$s3, $s3, 1
	st.w	$s3, $s2, -36
	andi	$s3, $s1, 64
	beqz	$s3, .LBB2_42
.LBB2_63:                               #   in Loop: Header=BB2_8 Depth=2
	ld.w	$s3, $s2, -40
	addi.d	$s3, $s3, 1
	st.w	$s3, $s2, -40
	andi	$s3, $s1, 32
	beqz	$s3, .LBB2_43
.LBB2_64:                               #   in Loop: Header=BB2_8 Depth=2
	ld.w	$s3, $s2, -44
	addi.d	$s3, $s3, 1
	st.w	$s3, $s2, -44
	andi	$s3, $s1, 16
	beqz	$s3, .LBB2_44
.LBB2_65:                               #   in Loop: Header=BB2_8 Depth=2
	ld.w	$s3, $s2, -48
	addi.d	$s3, $s3, 1
	st.w	$s3, $s2, -48
	andi	$s3, $s1, 8
	beqz	$s3, .LBB2_45
.LBB2_66:                               #   in Loop: Header=BB2_8 Depth=2
	ld.w	$s3, $s2, -52
	addi.d	$s3, $s3, 1
	st.w	$s3, $s2, -52
	andi	$s3, $s1, 4
	beqz	$s3, .LBB2_46
.LBB2_67:                               #   in Loop: Header=BB2_8 Depth=2
	ld.w	$s3, $s2, -56
	addi.d	$s3, $s3, 1
	st.w	$s3, $s2, -56
	andi	$s3, $s1, 2
	beqz	$s3, .LBB2_47
.LBB2_68:                               #   in Loop: Header=BB2_8 Depth=2
	ld.w	$s3, $s2, -60
	addi.d	$s3, $s3, 1
	st.w	$s3, $s2, -60
	andi	$s1, $s1, 1
	beqz	$s1, .LBB2_7
.LBB2_69:                               #   in Loop: Header=BB2_8 Depth=2
	ld.w	$s1, $s2, -64
	addi.d	$s1, $s1, 1
	st.w	$s1, $s2, -64
	b	.LBB2_7
.LBB2_70:                               #   in Loop: Header=BB2_8 Depth=2
	ld.w	$s3, $s2, 60
	addi.d	$s3, $s3, 1
	st.w	$s3, $s2, 60
	lu12i.w	$s3, 262144
	and	$s3, $s1, $s3
	beqz	$s3, .LBB2_12
.LBB2_71:                               #   in Loop: Header=BB2_8 Depth=2
	ld.w	$s3, $s2, 56
	addi.d	$s3, $s3, 1
	st.w	$s3, $s2, 56
	lu12i.w	$s3, 131072
	and	$s3, $s1, $s3
	beqz	$s3, .LBB2_13
.LBB2_72:                               #   in Loop: Header=BB2_8 Depth=2
	ld.w	$s3, $s2, 52
	addi.d	$s3, $s3, 1
	st.w	$s3, $s2, 52
	and	$s3, $s1, $s5
	beqz	$s3, .LBB2_14
.LBB2_73:                               #   in Loop: Header=BB2_8 Depth=2
	ld.w	$s3, $s2, 48
	addi.d	$s3, $s3, 1
	st.w	$s3, $s2, 48
	and	$s3, $s1, $s6
	beqz	$s3, .LBB2_15
.LBB2_74:                               #   in Loop: Header=BB2_8 Depth=2
	ld.w	$s3, $s2, 44
	addi.d	$s3, $s3, 1
	st.w	$s3, $s2, 44
	and	$s3, $s1, $s7
	beqz	$s3, .LBB2_16
.LBB2_75:                               #   in Loop: Header=BB2_8 Depth=2
	ld.w	$s3, $s2, 40
	addi.d	$s3, $s3, 1
	st.w	$s3, $s2, 40
	and	$s3, $s1, $s8
	beqz	$s3, .LBB2_17
.LBB2_76:                               #   in Loop: Header=BB2_8 Depth=2
	ld.w	$s3, $s2, 36
	addi.d	$s3, $s3, 1
	st.w	$s3, $s2, 36
	and	$s3, $s1, $ra
	bnez	$s3, .LBB2_18
	b	.LBB2_19
.LBB2_77:                               # %._crit_edge210
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.w	$a0, $s2, 4
	ori	$a1, $zero, 1
	ld.d	$s1, $sp, 8                     # 8-byte Folded Reload
	st.d	$zero, $s1, 32
	blt	$a0, $a1, .LBB2_92
# %bb.78:                               # %.lr.ph224
	move	$a0, $zero
	move	$t1, $zero
	move	$a4, $zero
	ld.d	$a1, $s1, 8
	ld.d	$a2, $s2, 24
	ld.d	$a3, $s2, 16
	ld.d	$a5, $s1, 16
	ld.d	$a6, $s1, 24
	addi.d	$a7, $zero, -1
	lu12i.w	$t0, 7
	ori	$t2, $t0, 3328
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	b	.LBB2_81
	.p2align	4, , 16
.LBB2_79:                               #   in Loop: Header=BB2_81 Depth=1
	move	$a7, $a0
	move	$a4, $t5
.LBB2_80:                               #   in Loop: Header=BB2_81 Depth=1
	stx.w	$t5, $a5, $t0
	addi.d	$t1, $t5, -1
	sltui	$t1, $t1, 1
	stx.w	$t1, $a6, $t0
	ld.w	$t0, $s1, 32
	slt	$t2, $zero, $t5
	ld.w	$t5, $s1, 36
	add.d	$t0, $t0, $t2
	ld.w	$t6, $s2, 4
	st.w	$t0, $s1, 32
	add.d	$t0, $t5, $t1
	addi.d	$a0, $a0, 1
	st.w	$t0, $s1, 36
	move	$t2, $t4
	move	$t1, $t3
	bge	$a0, $t6, .LBB2_93
.LBB2_81:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_85 Depth 2
	ld.w	$t3, $s2, 8
	slli.d	$t0, $a0, 2
	bge	$a0, $t3, .LBB2_83
# %bb.82:                               #   in Loop: Header=BB2_81 Depth=1
	slli.d	$t3, $a0, 3
	alsl.d	$t4, $a0, $s3, 3
	ldx.w	$t6, $s3, $t3
	ld.w	$t4, $t4, 4
	slt	$t3, $zero, $t6
	slt	$t5, $zero, $t4
	add.d	$t5, $t5, $t3
	add.w	$t3, $t4, $t6
	stx.w	$t3, $a1, $t0
	slt	$t7, $t4, $t6
	masknez	$t4, $t4, $t7
	maskeqz	$t6, $t6, $t7
	or	$t4, $t6, $t4
	b	.LBB2_86
	.p2align	4, , 16
.LBB2_83:                               #   in Loop: Header=BB2_81 Depth=1
	stx.w	$zero, $a1, $t0
	ldx.w	$t8, $a2, $t0
	ldx.w	$fp, $a3, $t0
	move	$t3, $zero
	move	$t5, $zero
	move	$t4, $zero
	blt	$t8, $fp, .LBB2_86
# %bb.84:                               # %.lr.ph216
                                        #   in Loop: Header=BB2_81 Depth=1
	move	$t3, $zero
	move	$t4, $zero
	move	$t5, $zero
	alsl.d	$t6, $a0, $a1, 2
	alsl.d	$t7, $fp, $s3, 2
	sub.d	$t8, $t8, $fp
	addi.d	$t8, $t8, 1
	.p2align	4, , 16
.LBB2_85:                               #   Parent Loop BB2_81 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$fp, $t7, 0
	add.w	$t3, $t3, $fp
	st.w	$t3, $t6, 0
	ld.w	$fp, $t7, 0
	slt	$fp, $zero, $fp
	add.w	$t5, $t5, $fp
	slt	$fp, $t4, $t5
	maskeqz	$s0, $t5, $fp
	masknez	$t4, $t4, $fp
	or	$t4, $s0, $t4
	addi.w	$t8, $t8, -1
	addi.d	$t7, $t7, 4
	bnez	$t8, .LBB2_85
.LBB2_86:                               # %.loopexit
                                        #   in Loop: Header=BB2_81 Depth=1
	addi.w	$t6, $a4, 0
	blt	$t6, $t5, .LBB2_79
# %bb.87:                               #   in Loop: Header=BB2_81 Depth=1
	bne	$t5, $t6, .LBB2_90
# %bb.88:                               #   in Loop: Header=BB2_81 Depth=1
	bge	$t1, $t3, .LBB2_91
# %bb.89:                               #   in Loop: Header=BB2_81 Depth=1
	move	$a7, $a0
	b	.LBB2_80
	.p2align	4, , 16
.LBB2_90:                               #   in Loop: Header=BB2_81 Depth=1
	move	$t3, $t1
	move	$t4, $t2
	b	.LBB2_80
.LBB2_91:                               #   in Loop: Header=BB2_81 Depth=1
	xor	$t3, $t3, $t1
	sltui	$t3, $t3, 1
	slt	$t6, $t4, $t2
	and	$t3, $t3, $t6
	masknez	$a7, $a7, $t3
	maskeqz	$t6, $a0, $t3
	or	$a7, $t6, $a7
	masknez	$t2, $t2, $t3
	maskeqz	$t3, $t4, $t3
	or	$t4, $t3, $t2
	move	$t3, $t1
	b	.LBB2_80
.LBB2_92:
	addi.d	$a7, $zero, -1
.LBB2_93:                               # %._crit_edge225
	st.w	$a7, $s1, 40
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
	ret
.Lfunc_end2:
	.size	massive_count, .Lfunc_end2-massive_count
                                        # -- End function
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0                          # -- Begin function binate_split_select
.LCPI3_0:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	4                               # 0x4
	.word	5                               # 0x5
	.word	6                               # 0x6
	.word	7                               # 0x7
.LCPI3_1:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
	.dword	0                               # 0x0
	.dword	0                               # 0x0
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI3_2:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
.LCPI3_3:
	.word	0                               # 0x0
	.word	4                               # 0x4
	.word	4                               # 0x4
	.word	4                               # 0x4
	.text
	.globl	binate_split_select
	.p2align	5
	.type	binate_split_select,@function
binate_split_select:                    # @binate_split_select
# %bb.0:
	addi.d	$sp, $sp, -192
	st.d	$ra, $sp, 184                   # 8-byte Folded Spill
	st.d	$fp, $sp, 176                   # 8-byte Folded Spill
	st.d	$s0, $sp, 168                   # 8-byte Folded Spill
	st.d	$s1, $sp, 160                   # 8-byte Folded Spill
	st.d	$s2, $sp, 152                   # 8-byte Folded Spill
	st.d	$s3, $sp, 144                   # 8-byte Folded Spill
	st.d	$s4, $sp, 136                   # 8-byte Folded Spill
	st.d	$s5, $sp, 128                   # 8-byte Folded Spill
	st.d	$s6, $sp, 120                   # 8-byte Folded Spill
	st.d	$s7, $sp, 112                   # 8-byte Folded Spill
	st.d	$s8, $sp, 104                   # 8-byte Folded Spill
	addi.d	$fp, $sp, 192
	bstrins.d	$sp, $zero, 4, 0
	pcalau12i	$a4, %got_pc_hi20(cdata)
	ld.d	$a4, $a4, %got_pc_lo12(cdata)
	pcalau12i	$a5, %got_pc_hi20(cube)
	ld.d	$s6, $a5, %got_pc_lo12(cube)
	ld.w	$s0, $a4, 40
	ld.d	$a4, $s6, 24
	slli.d	$s7, $s0, 2
	ldx.w	$s5, $a4, $s7
	ld.d	$a5, $s6, 72
	ld.d	$s4, $a0, 0
	ld.d	$a4, $s6, 88
	slli.d	$s8, $s0, 3
	ldx.d	$a5, $a5, $s8
	move	$s3, $a3
	move	$s1, $a2
	move	$s2, $a1
	move	$a0, $a1
	move	$a1, $a4
	move	$a2, $a5
	pcaddu18i	$ra, %call36(set_diff)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s6, 72
	ld.d	$a1, $s6, 88
	ldx.d	$a2, $a0, $s8
	move	$a0, $s1
	pcaddu18i	$ra, %call36(set_diff)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s6, 16
	ldx.w	$a0, $a0, $s7
	addi.w	$a1, $s5, 1
	blt	$s5, $a0, .LBB3_15
# %bb.1:                                # %iter.check
	sub.w	$a4, $a1, $a0
	ori	$a3, $zero, 4
	addi.d	$a2, $s4, 4
	bgeu	$a4, $a3, .LBB3_3
# %bb.2:
	move	$a6, $zero
	move	$a3, $a0
	b	.LBB3_13
.LBB3_3:                                # %vector.main.loop.iter.check
	ori	$a3, $zero, 16
	bgeu	$a4, $a3, .LBB3_5
# %bb.4:
	move	$t0, $zero
	move	$a6, $zero
	move	$a3, $a0
	b	.LBB3_10
.LBB3_5:                                # %vector.ph
	st.d	$s3, $sp, 24                    # 8-byte Folded Spill
	move	$a6, $a4
	pcalau12i	$a3, %pc_hi20(.LCPI3_0)
	xvld	$xr0, $a3, %pc_lo12(.LCPI3_0)
	bstrins.d	$a6, $zero, 3, 0
	add.w	$a3, $a0, $a6
	xvreplgr2vr.w	$xr1, $a0
	xvadd.w	$xr1, $xr1, $xr0
	xvrepli.b	$xr0, 0
	xvrepli.b	$xr3, -1
	xvrepli.w	$xr4, 1
	st.d	$a6, $sp, 16                    # 8-byte Folded Spill
	xvori.b	$xr2, $xr0, 0
	.p2align	4, , 16
.LBB3_6:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	xvsrai.w	$xr5, $xr1, 5
	xvst	$xr5, $sp, 32
	vld	$vr6, $sp, 48
	xvaddi.wu	$xr5, $xr1, 8
	vpickve2gr.w	$a7, $vr6, 3
	vpickve2gr.w	$t0, $vr6, 2
	vld	$vr7, $sp, 32
	vpickve2gr.w	$t1, $vr6, 1
	vpickve2gr.w	$t2, $vr6, 0
	xvsrai.w	$xr6, $xr5, 5
	vpickve2gr.w	$t3, $vr7, 3
	xvst	$xr6, $sp, 64
	vld	$vr6, $sp, 80
	vpickve2gr.w	$t4, $vr7, 2
	vpickve2gr.w	$t5, $vr7, 1
	vpickve2gr.w	$t6, $vr7, 0
	vpickve2gr.w	$t7, $vr6, 3
	vld	$vr7, $sp, 64
	vpickve2gr.w	$t8, $vr6, 2
	vpickve2gr.w	$s6, $vr6, 1
	vpickve2gr.w	$s7, $vr6, 0
	vpickve2gr.w	$s8, $vr7, 3
	vpickve2gr.w	$ra, $vr7, 2
	vpickve2gr.w	$s3, $vr7, 1
	vpickve2gr.w	$a5, $vr7, 0
	slli.d	$t6, $t6, 2
	slli.d	$t5, $t5, 2
	slli.d	$t4, $t4, 2
	slli.d	$t3, $t3, 2
	slli.d	$t2, $t2, 2
	slli.d	$t1, $t1, 2
	slli.d	$t0, $t0, 2
	slli.d	$a7, $a7, 2
	slli.d	$a5, $a5, 2
	slli.d	$s3, $s3, 2
	slli.d	$ra, $ra, 2
	slli.d	$s8, $s8, 2
	slli.d	$s7, $s7, 2
	slli.d	$s6, $s6, 2
	slli.d	$t8, $t8, 2
	slli.d	$t7, $t7, 2
	ldx.w	$t6, $a2, $t6
	ldx.w	$t5, $a2, $t5
	ldx.w	$t4, $a2, $t4
	ldx.w	$t3, $a2, $t3
	ldx.w	$t2, $a2, $t2
	ldx.w	$t1, $a2, $t1
	ldx.w	$t0, $a2, $t0
	ldx.w	$a7, $a2, $a7
	xvinsgr2vr.w	$xr6, $t6, 0
	xvinsgr2vr.w	$xr6, $t5, 1
	xvinsgr2vr.w	$xr6, $t4, 2
	xvinsgr2vr.w	$xr6, $t3, 3
	xvinsgr2vr.w	$xr6, $t2, 4
	xvinsgr2vr.w	$xr6, $t1, 5
	xvinsgr2vr.w	$xr6, $t0, 6
	xvinsgr2vr.w	$xr6, $a7, 7
	ldx.w	$a5, $a2, $a5
	ldx.w	$a7, $a2, $s3
	ldx.w	$t0, $a2, $ra
	ldx.w	$t1, $a2, $s8
	ldx.w	$t2, $a2, $s7
	ldx.w	$t3, $a2, $s6
	ldx.w	$t4, $a2, $t8
	ldx.w	$t5, $a2, $t7
	xvinsgr2vr.w	$xr7, $a5, 0
	xvinsgr2vr.w	$xr7, $a7, 1
	xvinsgr2vr.w	$xr7, $t0, 2
	xvinsgr2vr.w	$xr7, $t1, 3
	xvinsgr2vr.w	$xr7, $t2, 4
	xvinsgr2vr.w	$xr7, $t3, 5
	xvinsgr2vr.w	$xr7, $t4, 6
	xvinsgr2vr.w	$xr7, $t5, 7
	xvxor.v	$xr6, $xr6, $xr3
	xvxor.v	$xr7, $xr7, $xr3
	xvsrl.w	$xr6, $xr6, $xr1
	xvsrl.w	$xr5, $xr7, $xr5
	xvand.v	$xr6, $xr6, $xr4
	xvand.v	$xr5, $xr5, $xr4
	xvadd.w	$xr0, $xr6, $xr0
	xvadd.w	$xr2, $xr5, $xr2
	addi.w	$a6, $a6, -16
	xvaddi.wu	$xr1, $xr1, 16
	bnez	$a6, .LBB3_6
# %bb.7:                                # %middle.block
	pcalau12i	$a5, %pc_hi20(.LCPI3_1)
	xvld	$xr1, $a5, %pc_lo12(.LCPI3_1)
	xvadd.w	$xr0, $xr2, $xr0
	xvpermi.d	$xr2, $xr0, 78
	xvshuf.d	$xr1, $xr0, $xr2
	xvadd.w	$xr0, $xr0, $xr1
	xvpermi.d	$xr1, $xr0, 68
	xvrepl128vei.d	$xr1, $xr1, 1
	xvadd.w	$xr0, $xr0, $xr1
	xvpermi.d	$xr1, $xr0, 68
	xvrepl128vei.w	$xr1, $xr1, 1
	xvadd.w	$xr0, $xr0, $xr1
	xvpickve2gr.w	$a6, $xr0, 0
	ld.d	$t0, $sp, 16                    # 8-byte Folded Reload
	bne	$a4, $t0, .LBB3_9
# %bb.8:
	ld.d	$s3, $sp, 24                    # 8-byte Folded Reload
	b	.LBB3_14
.LBB3_9:                                # %vec.epilog.iter.check
	andi	$a5, $a4, 12
	ld.d	$s3, $sp, 24                    # 8-byte Folded Reload
	beqz	$a5, .LBB3_13
.LBB3_10:                               # %vec.epilog.ph
	move	$a7, $a4
	bstrins.d	$a7, $zero, 1, 0
	vreplgr2vr.w	$vr1, $a3
	pcalau12i	$a3, %pc_hi20(.LCPI3_2)
	vld	$vr2, $a3, %pc_lo12(.LCPI3_2)
	add.w	$a3, $a0, $a7
	pcalau12i	$a5, %pc_hi20(.LCPI3_3)
	vld	$vr0, $a5, %pc_lo12(.LCPI3_3)
	vadd.w	$vr1, $vr1, $vr2
	vinsgr2vr.w	$vr2, $a6, 0
	vinsgr2vr.w	$vr3, $zero, 0
	vshuf.w	$vr0, $vr3, $vr2
	sub.d	$a5, $t0, $a7
	vrepli.b	$vr2, -1
	vrepli.w	$vr3, 1
	.p2align	4, , 16
.LBB3_11:                               # %vec.epilog.vector.body
                                        # =>This Inner Loop Header: Depth=1
	vsrai.w	$vr4, $vr1, 5
	vpickve2gr.w	$a6, $vr4, 3
	vpickve2gr.w	$t0, $vr4, 2
	vpickve2gr.w	$t1, $vr4, 1
	vpickve2gr.w	$t2, $vr4, 0
	slli.d	$t2, $t2, 2
	slli.d	$t1, $t1, 2
	slli.d	$t0, $t0, 2
	slli.d	$a6, $a6, 2
	ldx.w	$t2, $a2, $t2
	ldx.w	$t1, $a2, $t1
	ldx.w	$t0, $a2, $t0
	ldx.w	$a6, $a2, $a6
	vinsgr2vr.w	$vr4, $t2, 0
	vinsgr2vr.w	$vr4, $t1, 1
	vinsgr2vr.w	$vr4, $t0, 2
	vinsgr2vr.w	$vr4, $a6, 3
	vxor.v	$vr4, $vr4, $vr2
	vsrl.w	$vr4, $vr4, $vr1
	vand.v	$vr4, $vr4, $vr3
	vadd.w	$vr0, $vr4, $vr0
	addi.w	$a5, $a5, 4
	vaddi.wu	$vr1, $vr1, 4
	bnez	$a5, .LBB3_11
# %bb.12:                               # %vec.epilog.middle.block
	vreplvei.d	$vr1, $vr0, 1
	vadd.w	$vr0, $vr0, $vr1
	vreplvei.w	$vr1, $vr0, 1
	vadd.w	$vr0, $vr0, $vr1
	vpickve2gr.w	$a6, $vr0, 0
	beq	$a4, $a7, .LBB3_14
	.p2align	4, , 16
.LBB3_13:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	srai.d	$a4, $a3, 5
	slli.d	$a4, $a4, 2
	ldx.w	$a4, $a2, $a4
	nor	$a4, $a4, $zero
	srl.w	$a4, $a4, $a3
	andi	$a4, $a4, 1
	addi.w	$a3, $a3, 1
	add.w	$a6, $a4, $a6
	bne	$a1, $a3, .LBB3_13
.LBB3_14:                               # %._crit_edge
	ori	$a2, $zero, 2
	bgeu	$a6, $a2, .LBB3_24
.LBB3_15:                               # %.preheader
	bge	$s5, $a0, .LBB3_20
.LBB3_16:                               # %._crit_edge59
	pcalau12i	$a0, %got_pc_hi20(debug)
	ld.d	$a0, $a0, %got_pc_lo12(debug)
	ld.w	$a0, $a0, 0
	and	$a0, $a0, $s3
	beqz	$a0, .LBB3_19
# %bb.17:
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	move	$a1, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(verbose_debug)
	ld.d	$a0, $a0, %got_pc_lo12(verbose_debug)
	ld.w	$a0, $a0, 0
	beqz	$a0, .LBB3_19
# %bb.18:
	move	$a0, $s2
	pcaddu18i	$ra, %call36(pc1)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(pc2)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	move	$a1, $s2
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB3_19:
	move	$a0, $s0
	addi.d	$sp, $fp, -192
	ld.d	$s8, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 168                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 176                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 184                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 192
	ret
.LBB3_20:                               # %.lr.ph58.preheader
	ori	$a2, $zero, 1
	b	.LBB3_22
	.p2align	4, , 16
.LBB3_21:                               #   in Loop: Header=BB3_22 Depth=1
	addi.w	$a0, $a0, 1
	beq	$a1, $a0, .LBB3_16
.LBB3_22:                               # %.lr.ph58
                                        # =>This Inner Loop Header: Depth=1
	srai.d	$a3, $a0, 5
	addi.d	$a3, $a3, 1
	slli.d	$a3, $a3, 2
	ldx.w	$a5, $s4, $a3
	sll.w	$a4, $a2, $a0
	and	$a5, $a5, $a4
	bnez	$a5, .LBB3_21
# %bb.23:                               #   in Loop: Header=BB3_22 Depth=1
	ldx.w	$a5, $s1, $a3
	or	$a4, $a5, $a4
	stx.w	$a4, $s1, $a3
	b	.LBB3_21
.LBB3_24:                               # %.lr.ph54.preheader
	bstrpick.d	$a2, $a6, 31, 1
	ori	$a3, $zero, 1
	b	.LBB3_26
	.p2align	4, , 16
.LBB3_25:                               #   in Loop: Header=BB3_26 Depth=1
	addi.w	$a4, $a2, 0
	addi.w	$a0, $a0, 1
	blez	$a4, .LBB3_15
.LBB3_26:                               # %.lr.ph54
                                        # =>This Inner Loop Header: Depth=1
	srai.d	$a4, $a0, 5
	addi.d	$a4, $a4, 1
	slli.d	$a4, $a4, 2
	ldx.w	$a6, $s4, $a4
	sll.w	$a5, $a3, $a0
	and	$a6, $a6, $a5
	bnez	$a6, .LBB3_25
# %bb.27:                               #   in Loop: Header=BB3_26 Depth=1
	ldx.w	$a6, $s2, $a4
	addi.d	$a2, $a2, -1
	or	$a5, $a6, $a5
	stx.w	$a5, $s2, $a4
	b	.LBB3_25
.Lfunc_end3:
	.size	binate_split_select, .Lfunc_end3-binate_split_select
                                        # -- End function
	.globl	cube1list                       # -- Begin function cube1list
	.p2align	5
	.type	cube1list,@function
cube1list:                              # @cube1list
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	move	$s0, $a0
	ld.w	$a0, $a0, 12
	slli.d	$a0, $a0, 3
	addi.d	$a0, $a0, 24
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(cube)
	ld.d	$a1, $a1, %got_pc_lo12(cube)
	ld.w	$s1, $a1, 0
	move	$fp, $a0
	ori	$a1, $zero, 33
	ori	$a0, $zero, 8
	blt	$s1, $a1, .LBB4_2
# %bb.1:
	addi.d	$a0, $s1, -1
	srli.d	$a0, $a0, 3
	lu12i.w	$a1, 131071
	ori	$a1, $a1, 4092
	and	$a0, $a0, $a1
	addi.d	$a0, $a0, 8
.LBB4_2:
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(set_clear)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s0, 12
	ld.w	$a3, $s0, 0
	st.d	$a0, $fp, 0
	mul.w	$a2, $a3, $a1
	ori	$a1, $zero, 1
	addi.d	$a0, $fp, 16
	blt	$a2, $a1, .LBB4_5
# %bb.3:                                # %.lr.ph
	ld.d	$a1, $s0, 24
	alsl.d	$a2, $a2, $a1, 2
	slli.d	$a3, $a3, 2
	.p2align	4, , 16
.LBB4_4:                                # =>This Inner Loop Header: Depth=1
	addi.d	$a4, $a0, 8
	st.d	$a1, $a0, 0
	add.d	$a1, $a1, $a3
	move	$a0, $a4
	bltu	$a1, $a2, .LBB4_4
	b	.LBB4_6
.LBB4_5:
	move	$a4, $a0
.LBB4_6:                                # %._crit_edge
	addi.d	$a0, $a4, 8
	st.d	$zero, $a4, 0
	st.d	$a0, $fp, 8
	move	$a0, $fp
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end4:
	.size	cube1list, .Lfunc_end4-cube1list
                                        # -- End function
	.globl	cube2list                       # -- Begin function cube2list
	.p2align	5
	.type	cube2list,@function
cube2list:                              # @cube2list
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	move	$s0, $a1
	move	$s1, $a0
	ld.w	$a0, $a0, 12
	ld.w	$a1, $a1, 12
	add.d	$a0, $a0, $a1
	addi.w	$a0, $a0, 3
	slli.d	$a0, $a0, 3
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(cube)
	ld.d	$a1, $a1, %got_pc_lo12(cube)
	ld.w	$s2, $a1, 0
	move	$fp, $a0
	ori	$a1, $zero, 33
	ori	$a0, $zero, 8
	blt	$s2, $a1, .LBB5_2
# %bb.1:
	addi.d	$a0, $s2, -1
	srli.d	$a0, $a0, 3
	lu12i.w	$a1, 131071
	ori	$a1, $a1, 4092
	and	$a0, $a0, $a1
	addi.d	$a0, $a0, 8
.LBB5_2:
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$a1, $s2
	pcaddu18i	$ra, %call36(set_clear)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s1, 12
	ld.w	$a5, $s1, 0
	st.d	$a0, $fp, 0
	mul.w	$a0, $a5, $a1
	ori	$a1, $zero, 1
	addi.d	$a2, $fp, 16
	blt	$a0, $a1, .LBB5_8
# %bb.3:                                # %.lr.ph
	ld.d	$a3, $s1, 24
	alsl.d	$a4, $a0, $a3, 2
	slli.d	$a5, $a5, 2
	.p2align	4, , 16
.LBB5_4:                                # =>This Inner Loop Header: Depth=1
	addi.d	$a0, $a2, 8
	st.d	$a3, $a2, 0
	add.d	$a3, $a3, $a5
	move	$a2, $a0
	bltu	$a3, $a4, .LBB5_4
# %bb.5:                                # %._crit_edge
	ld.w	$a2, $s0, 12
	ld.w	$a3, $s0, 0
	mul.w	$a2, $a3, $a2
	blt	$a2, $a1, .LBB5_9
.LBB5_6:                                # %.lr.ph36
	ld.d	$a1, $s0, 24
	alsl.d	$a2, $a2, $a1, 2
	slli.d	$a3, $a3, 2
	.p2align	4, , 16
.LBB5_7:                                # =>This Inner Loop Header: Depth=1
	addi.d	$a4, $a0, 8
	st.d	$a1, $a0, 0
	add.d	$a1, $a1, $a3
	move	$a0, $a4
	bltu	$a1, $a2, .LBB5_7
	b	.LBB5_10
.LBB5_8:
	move	$a0, $a2
	ld.w	$a2, $s0, 12
	ld.w	$a3, $s0, 0
	mul.w	$a2, $a3, $a2
	bge	$a2, $a1, .LBB5_6
.LBB5_9:
	move	$a4, $a0
.LBB5_10:                               # %._crit_edge37
	addi.d	$a0, $a4, 8
	st.d	$zero, $a4, 0
	st.d	$a0, $fp, 8
	move	$a0, $fp
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end5:
	.size	cube2list, .Lfunc_end5-cube2list
                                        # -- End function
	.globl	cube3list                       # -- Begin function cube3list
	.p2align	5
	.type	cube3list,@function
cube3list:                              # @cube3list
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	move	$s0, $a2
	move	$s1, $a1
	move	$s2, $a0
	ld.w	$a0, $a0, 12
	ld.w	$a1, $a1, 12
	ld.w	$a2, $a2, 12
	add.d	$a0, $a0, $a1
	add.d	$a0, $a0, $a2
	addi.w	$a0, $a0, 3
	slli.d	$a0, $a0, 3
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(cube)
	ld.d	$a1, $a1, %got_pc_lo12(cube)
	ld.w	$s3, $a1, 0
	move	$fp, $a0
	ori	$a1, $zero, 33
	ori	$a0, $zero, 8
	blt	$s3, $a1, .LBB6_2
# %bb.1:
	addi.d	$a0, $s3, -1
	srli.d	$a0, $a0, 3
	lu12i.w	$a1, 131071
	ori	$a1, $a1, 4092
	and	$a0, $a0, $a1
	addi.d	$a0, $a0, 8
.LBB6_2:
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$a1, $s3
	pcaddu18i	$ra, %call36(set_clear)
	jirl	$ra, $ra, 0
	ld.w	$a2, $s2, 12
	ld.w	$a1, $s2, 0
	st.d	$a0, $fp, 0
	mul.w	$a4, $a1, $a2
	ori	$a0, $zero, 1
	addi.d	$a2, $fp, 16
	blt	$a4, $a0, .LBB6_8
# %bb.3:                                # %.lr.ph
	ld.d	$a3, $s2, 24
	alsl.d	$a4, $a4, $a3, 2
	slli.d	$a5, $a1, 2
	.p2align	4, , 16
.LBB6_4:                                # =>This Inner Loop Header: Depth=1
	addi.d	$a1, $a2, 8
	st.d	$a3, $a2, 0
	add.d	$a3, $a3, $a5
	move	$a2, $a1
	bltu	$a3, $a4, .LBB6_4
# %bb.5:                                # %._crit_edge
	ld.w	$a2, $s1, 12
	ld.w	$a4, $s1, 0
	mul.w	$a3, $a4, $a2
	blt	$a3, $a0, .LBB6_9
.LBB6_6:                                # %.lr.ph49
	ld.d	$a2, $s1, 24
	alsl.d	$a3, $a3, $a2, 2
	slli.d	$a4, $a4, 2
	.p2align	4, , 16
.LBB6_7:                                # =>This Inner Loop Header: Depth=1
	addi.d	$a0, $a1, 8
	st.d	$a2, $a1, 0
	add.d	$a2, $a2, $a4
	move	$a1, $a0
	bltu	$a2, $a3, .LBB6_7
	b	.LBB6_10
.LBB6_8:
	move	$a1, $a2
	ld.w	$a2, $s1, 12
	ld.w	$a4, $s1, 0
	mul.w	$a3, $a4, $a2
	bge	$a3, $a0, .LBB6_6
.LBB6_9:
	move	$a0, $a1
.LBB6_10:                               # %._crit_edge50
	ld.w	$a1, $s0, 12
	ld.w	$a3, $s0, 0
	mul.w	$a2, $a3, $a1
	ori	$a1, $zero, 1
	blt	$a2, $a1, .LBB6_13
# %bb.11:                               # %.lr.ph55
	ld.d	$a1, $s0, 24
	alsl.d	$a2, $a2, $a1, 2
	slli.d	$a3, $a3, 2
	.p2align	4, , 16
.LBB6_12:                               # =>This Inner Loop Header: Depth=1
	addi.d	$a4, $a0, 8
	st.d	$a1, $a0, 0
	add.d	$a1, $a1, $a3
	move	$a0, $a4
	bltu	$a1, $a2, .LBB6_12
	b	.LBB6_14
.LBB6_13:
	move	$a4, $a0
.LBB6_14:                               # %._crit_edge56
	addi.d	$a0, $a4, 8
	st.d	$zero, $a4, 0
	st.d	$a0, $fp, 8
	move	$a0, $fp
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end6:
	.size	cube3list, .Lfunc_end6-cube3list
                                        # -- End function
	.globl	cubeunlist                      # -- Begin function cubeunlist
	.p2align	5
	.type	cubeunlist,@function
cubeunlist:                             # @cubeunlist
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
	pcalau12i	$a0, %got_pc_hi20(cube)
	ld.d	$a0, $a0, %got_pc_lo12(cube)
	ld.d	$a2, $fp, 8
	ld.d	$s0, $fp, 0
	ld.w	$a1, $a0, 0
	sub.d	$a0, $a2, $fp
	srai.d	$a0, $a0, 3
	addi.d	$a0, $a0, -3
	pcaddu18i	$ra, %call36(sf_new)
	jirl	$ra, $ra, 0
	ld.d	$t2, $fp, 16
	beqz	$t2, .LBB7_12
# %bb.1:                                # %.lr.ph
	ld.d	$a1, $a0, 24
	move	$a2, $zero
	move	$a3, $zero
	addi.d	$a4, $a1, -28
	addi.d	$a5, $s0, -28
	ori	$a6, $zero, 2
	ori	$a7, $zero, 8
	ori	$t0, $zero, 1
	ori	$t1, $zero, 32
	b	.LBB7_3
	.p2align	4, , 16
.LBB7_2:                                # %.loopexit
                                        #   in Loop: Header=BB7_3 Depth=1
	addi.d	$a6, $a6, 1
	slli.d	$t2, $a6, 3
	ldx.d	$t2, $fp, $t2
	addi.d	$a3, $a3, 1
	addi.d	$a2, $a2, 4
	beqz	$t2, .LBB7_12
.LBB7_3:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_10 Depth 2
                                        #     Child Loop BB7_6 Depth 2
	ld.w	$t5, $a0, 0
	addi.d	$t3, $a6, -2
	mul.d	$t3, $t3, $t5
	slli.d	$t3, $t3, 2
	ldx.wu	$t4, $a1, $t3
	ld.wu	$t6, $t2, 0
	srli.d	$t4, $t4, 10
	andi	$t7, $t6, 1023
	bstrins.d	$t6, $t4, 63, 10
	stx.w	$t6, $a1, $t3
	sltu	$t3, $zero, $t7
	sub.d	$t3, $t7, $t3
	addi.d	$t4, $t3, 1
	mul.d	$t3, $a2, $t5
	bgeu	$t4, $a7, .LBB7_7
.LBB7_4:                                #   in Loop: Header=BB7_3 Depth=1
	move	$t5, $t7
.LBB7_5:                                # %scalar.ph.preheader
                                        #   in Loop: Header=BB7_3 Depth=1
	addi.d	$t4, $t5, 1
	alsl.d	$t3, $t5, $t3, 2
	add.d	$t3, $a1, $t3
	alsl.d	$t6, $t5, $s0, 2
	alsl.d	$t2, $t5, $t2, 2
	.p2align	4, , 16
.LBB7_6:                                # %scalar.ph
                                        #   Parent Loop BB7_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t5, $t2, 0
	ld.w	$t7, $t6, 0
	or	$t5, $t7, $t5
	st.w	$t5, $t3, 0
	addi.d	$t4, $t4, -1
	addi.d	$t3, $t3, -4
	addi.d	$t6, $t6, -4
	addi.d	$t2, $t2, -4
	bltu	$t0, $t4, .LBB7_6
	b	.LBB7_2
	.p2align	4, , 16
.LBB7_7:                                # %vector.memcheck
                                        #   in Loop: Header=BB7_3 Depth=1
	mul.d	$t5, $a3, $t5
	alsl.d	$t5, $t5, $a1, 2
	sub.d	$t6, $t2, $t5
	bltu	$t6, $t1, .LBB7_4
# %bb.8:                                # %vector.memcheck
                                        #   in Loop: Header=BB7_3 Depth=1
	sub.d	$t5, $s0, $t5
	bltu	$t5, $t1, .LBB7_4
# %bb.9:                                # %vector.ph
                                        #   in Loop: Header=BB7_3 Depth=1
	move	$t6, $t4
	bstrins.d	$t6, $zero, 2, 0
	sub.d	$t5, $t7, $t6
	alsl.d	$t8, $t7, $t3, 2
	add.d	$t8, $a4, $t8
	alsl.d	$s1, $t7, $a5, 2
	alsl.d	$t7, $t7, $t2, 2
	addi.d	$t7, $t7, -28
	move	$s2, $t6
	.p2align	4, , 16
.LBB7_10:                               # %vector.body
                                        #   Parent Loop BB7_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvld	$xr0, $t7, 0
	xvld	$xr1, $s1, 0
	xvor.v	$xr0, $xr1, $xr0
	xvst	$xr0, $t8, 0
	addi.d	$s2, $s2, -8
	addi.d	$t8, $t8, -32
	addi.d	$s1, $s1, -32
	addi.d	$t7, $t7, -32
	bnez	$s2, .LBB7_10
# %bb.11:                               # %middle.block
                                        #   in Loop: Header=BB7_3 Depth=1
	beq	$t4, $t6, .LBB7_2
	b	.LBB7_5
.LBB7_12:                               # %._crit_edge
	ld.d	$a1, $fp, 8
	sub.d	$a1, $a1, $fp
	srli.d	$a1, $a1, 3
	addi.d	$a1, $a1, -3
	st.w	$a1, $a0, 12
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end7:
	.size	cubeunlist, .Lfunc_end7-cubeunlist
                                        # -- End function
	.globl	simplify_cubelist               # -- Begin function simplify_cubelist
	.p2align	5
	.type	simplify_cubelist,@function
simplify_cubelist:                      # @simplify_cubelist
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	pcalau12i	$a1, %got_pc_hi20(cube)
	ld.d	$a1, $a1, %got_pc_lo12(cube)
	ld.d	$a1, $a1, 80
	move	$s0, $a0
	ld.d	$a0, $a1, 0
	ld.d	$a1, $s0, 0
	pcaddu18i	$ra, %call36(set_copy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 8
	sub.d	$a0, $a0, $s0
	srli.d	$a0, $a0, 3
	addi.w	$s1, $a0, -3
	addi.d	$fp, $s0, 16
	pcalau12i	$a0, %got_pc_hi20(d1_order)
	ld.d	$a3, $a0, %got_pc_lo12(d1_order)
	ori	$a2, $zero, 8
	move	$a0, $fp
	move	$a1, $s1
	pcaddu18i	$ra, %call36(qsort)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 4
	blt	$s1, $a0, .LBB8_5
# %bb.1:                                # %.lr.ph.preheader
	addi.d	$s0, $s0, 24
	addi.d	$s1, $s1, -3
	b	.LBB8_3
	.p2align	4, , 16
.LBB8_2:                                #   in Loop: Header=BB8_3 Depth=1
	addi.d	$s1, $s1, -1
	addi.d	$s0, $s0, 8
	beqz	$s1, .LBB8_5
.LBB8_3:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$a0, $s0, -8
	move	$a1, $s0
	pcaddu18i	$ra, %call36(d1_order)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB8_2
# %bb.4:                                #   in Loop: Header=BB8_3 Depth=1
	ld.d	$a0, $s0, 0
	addi.d	$a1, $fp, 8
	st.d	$a0, $fp, 0
	move	$fp, $a1
	b	.LBB8_2
.LBB8_5:                                # %._crit_edge
	addi.d	$a0, $fp, 8
	st.d	$zero, $fp, 0
	st.d	$a0, $fp, 16
	move	$a0, $zero
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end8:
	.size	simplify_cubelist, .Lfunc_end8-simplify_cubelist
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"BINATE_SPLIT_SELECT: split against %d\n"
	.size	.L.str, 39

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"cl=%s\ncr=%s\n"
	.size	.L.str.1, 13

	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym d1_order
