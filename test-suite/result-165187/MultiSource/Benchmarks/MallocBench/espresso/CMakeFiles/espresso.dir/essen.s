	.file	"essen.c"
	.text
	.globl	essential                       # -- Begin function essential
	.p2align	5
	.type	essential,@function
essential:                              # @essential
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
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	ld.d	$s2, $a0, 0
	st.d	$a1, $sp, 24                    # 8-byte Folded Spill
	ld.d	$s0, $a1, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(sf_active)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(cube)
	ld.d	$a0, $a0, %got_pc_lo12(cube)
	ld.w	$a1, $a0, 0
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(sf_new)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s2, 12
	ld.w	$a2, $s2, 0
	mul.w	$a1, $a2, $a1
	move	$s3, $a0
	blez	$a1, .LBB0_10
# %bb.1:                                # %.lr.ph
	ld.d	$s4, $s2, 24
	alsl.d	$fp, $a1, $s4, 2
	lu12i.w	$a0, 4
	ori	$s1, $a0, 1024
	ori	$s5, $zero, 1024
	pcalau12i	$a0, %got_pc_hi20(debug)
	ld.d	$a0, $a0, %got_pc_lo12(debug)
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	lu12i.w	$a0, -3
	ori	$a0, $a0, 4095
	lu32i.d	$a0, 0
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	b	.LBB0_4
.LBB0_2:                                #   in Loop: Header=BB0_4 Depth=1
	move	$a0, $s3
	move	$a1, $s4
	pcaddu18i	$ra, %call36(sf_addset)
	jirl	$ra, $ra, 0
	ld.wu	$a1, $s4, 0
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	and	$a1, $a1, $a2
	st.w	$a1, $s4, 0
	ld.w	$a1, $s2, 16
	move	$s3, $a0
	addi.d	$a0, $a1, -1
	st.w	$a0, $s2, 16
	.p2align	4, , 16
.LBB0_3:                                #   in Loop: Header=BB0_4 Depth=1
	ld.w	$a0, $s2, 0
	alsl.d	$s4, $a0, $s4, 2
	bgeu	$s4, $fp, .LBB0_10
.LBB0_4:                                # =>This Inner Loop Header: Depth=1
	ld.wu	$a0, $s4, 0
	and	$a0, $a0, $s1
	bne	$a0, $s5, .LBB0_3
# %bb.5:                                #   in Loop: Header=BB0_4 Depth=1
	move	$a0, $s2
	move	$a1, $s0
	pcaddu18i	$ra, %call36(sf_join)
	jirl	$ra, $ra, 0
	move	$s7, $a0
	move	$a1, $s4
	pcaddu18i	$ra, %call36(cb_consensus)
	jirl	$ra, $ra, 0
	move	$s6, $a0
	move	$a0, $s7
	pcaddu18i	$ra, %call36(sf_free)
	jirl	$ra, $ra, 0
	move	$a0, $s6
	move	$a1, $s0
	pcaddu18i	$ra, %call36(cube2list)
	jirl	$ra, $ra, 0
	move	$s7, $a0
	move	$a1, $s4
	pcaddu18i	$ra, %call36(cube_is_covered)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s7, 0
	move	$s8, $a0
	beqz	$a1, .LBB0_7
# %bb.6:                                #   in Loop: Header=BB0_4 Depth=1
	move	$a0, $a1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB0_7:                                # %essen_cube.exit
                                        #   in Loop: Header=BB0_4 Depth=1
	move	$a0, $s7
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s6
	pcaddu18i	$ra, %call36(sf_free)
	jirl	$ra, $ra, 0
	bnez	$s8, .LBB0_3
# %bb.8:                                #   in Loop: Header=BB0_4 Depth=1
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.bu	$a0, $a0, 0
	andi	$a0, $a0, 2
	beqz	$a0, .LBB0_2
# %bb.9:                                #   in Loop: Header=BB0_4 Depth=1
	move	$a0, $s4
	pcaddu18i	$ra, %call36(pc1)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	b	.LBB0_2
.LBB0_10:                               # %._crit_edge
	move	$a0, $s2
	pcaddu18i	$ra, %call36(sf_inactive)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	st.d	$a0, $a1, 0
	move	$a0, $s0
	move	$a1, $s3
	pcaddu18i	$ra, %call36(sf_join)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	st.d	$a0, $a1, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(sf_free)
	jirl	$ra, $ra, 0
	move	$a0, $s3
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
.Lfunc_end0:
	.size	essential, .Lfunc_end0-essential
                                        # -- End function
	.globl	essen_cube                      # -- Begin function essen_cube
	.p2align	5
	.type	essen_cube,@function
essen_cube:                             # @essen_cube
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	move	$s1, $a2
	move	$s0, $a1
	pcaddu18i	$ra, %call36(sf_join)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(cb_consensus)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(sf_free)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(cube2list)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(cube_is_covered)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, 0
	move	$s1, $a0
	beqz	$a1, .LBB1_2
# %bb.1:
	move	$a0, $a1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB1_2:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	sltui	$s0, $s1, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(sf_free)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end1:
	.size	essen_cube, .Lfunc_end1-essen_cube
                                        # -- End function
	.globl	cb_consensus                    # -- Begin function cb_consensus
	.p2align	5
	.type	cb_consensus,@function
cb_consensus:                           # @cb_consensus
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
	move	$fp, $a0
	ld.w	$a0, $a0, 12
	move	$s0, $a1
	slli.w	$a0, $a0, 1
	pcalau12i	$a1, %got_pc_hi20(cube)
	ld.d	$s1, $a1, %got_pc_lo12(cube)
	ld.w	$a1, $s1, 0
	pcaddu18i	$ra, %call36(sf_new)
	jirl	$ra, $ra, 0
	ld.w	$s2, $s1, 0
	move	$s1, $a0
	ori	$a1, $zero, 33
	ori	$a0, $zero, 8
	blt	$s2, $a1, .LBB2_2
# %bb.1:
	addi.d	$a0, $s2, -1
	srli.d	$a0, $a0, 3
	lu12i.w	$a1, 131071
	ori	$a1, $a1, 4092
	and	$a0, $a0, $a1
	addi.d	$a0, $a0, 8
.LBB2_2:
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$a1, $s2
	pcaddu18i	$ra, %call36(set_clear)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 12
	ld.w	$a2, $fp, 0
	mul.w	$a1, $a2, $a1
	move	$s2, $a0
	blez	$a1, .LBB2_11
# %bb.3:                                # %.lr.ph.preheader
	ld.d	$s3, $fp, 24
	alsl.d	$s4, $a1, $s3, 2
	ori	$s5, $zero, 1
	b	.LBB2_7
	.p2align	4, , 16
.LBB2_4:                                #   in Loop: Header=BB2_7 Depth=1
	move	$a0, $s2
	move	$a1, $s3
	move	$a2, $s0
	pcaddu18i	$ra, %call36(consensus)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	move	$a1, $s2
	pcaddu18i	$ra, %call36(sf_addset)
	jirl	$ra, $ra, 0
.LBB2_5:                                #   in Loop: Header=BB2_7 Depth=1
	move	$s1, $a0
.LBB2_6:                                #   in Loop: Header=BB2_7 Depth=1
	ld.w	$a0, $fp, 0
	alsl.d	$s3, $a0, $s3, 2
	bgeu	$s3, $s4, .LBB2_11
.LBB2_7:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	beq	$s3, $s0, .LBB2_6
# %bb.8:                                #   in Loop: Header=BB2_7 Depth=1
	move	$a0, $s3
	move	$a1, $s0
	pcaddu18i	$ra, %call36(cdist01)
	jirl	$ra, $ra, 0
	beq	$a0, $s5, .LBB2_4
# %bb.9:                                #   in Loop: Header=BB2_7 Depth=1
	bnez	$a0, .LBB2_6
# %bb.10:                               #   in Loop: Header=BB2_7 Depth=1
	move	$a0, $s1
	move	$a1, $s3
	move	$a2, $s0
	pcaddu18i	$ra, %call36(cb_consensus_dist0)
	jirl	$ra, $ra, 0
	b	.LBB2_5
.LBB2_11:                               # %._crit_edge
	beqz	$s2, .LBB2_13
# %bb.12:
	move	$a0, $s2
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB2_13:
	move	$a0, $s1
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
.Lfunc_end2:
	.size	cb_consensus, .Lfunc_end2-cb_consensus
                                        # -- End function
	.globl	cb_consensus_dist0              # -- Begin function cb_consensus_dist0
	.p2align	5
	.type	cb_consensus_dist0,@function
cb_consensus_dist0:                     # @cb_consensus_dist0
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
	move	$s0, $a2
	move	$s1, $a1
	move	$fp, $a0
	pcalau12i	$a0, %got_pc_hi20(cube)
	ld.d	$s5, $a0, %got_pc_lo12(cube)
	ld.d	$a0, $s5, 80
	ld.d	$s3, $a0, 0
	ld.d	$s6, $a0, 8
	move	$a0, $a1
	move	$a1, $a2
	pcaddu18i	$ra, %call36(setp_implies)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB3_22
# %bb.1:
	ld.w	$s2, $s5, 0
	ori	$a1, $zero, 33
	ori	$a0, $zero, 8
	blt	$s2, $a1, .LBB3_3
# %bb.2:
	addi.d	$a0, $s2, -1
	srli.d	$a0, $a0, 3
	lu12i.w	$a1, 131071
	ori	$a1, $a1, 4092
	and	$a0, $a0, $a1
	addi.d	$a0, $a0, 8
.LBB3_3:
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$a1, $s2
	pcaddu18i	$ra, %call36(set_clear)
	jirl	$ra, $ra, 0
	ld.wu	$a1, $s3, 0
	ld.wu	$a2, $s1, 0
	move	$s2, $a0
	srli.d	$a0, $a1, 10
	andi	$a1, $a2, 1023
	bstrins.d	$a2, $a0, 63, 10
	st.w	$a2, $s3, 0
	addi.d	$a0, $a1, 1
	slli.d	$a1, $a1, 2
	ori	$a2, $zero, 1
	.p2align	4, , 16
.LBB3_4:                                # =>This Inner Loop Header: Depth=1
	ldx.w	$a3, $s1, $a1
	ldx.w	$a4, $s0, $a1
	andn	$a3, $a3, $a4
	stx.w	$a3, $s3, $a1
	addi.d	$a0, $a0, -1
	addi.d	$a1, $a1, -4
	bltu	$a2, $a0, .LBB3_4
# %bb.5:
	ld.wu	$a0, $s6, 0
	ld.wu	$a1, $s1, 0
	srli.d	$a0, $a0, 10
	andi	$a2, $a1, 1023
	bstrins.d	$a1, $a0, 63, 10
	st.w	$a1, $s6, 0
	addi.d	$a0, $a2, 1
	slli.d	$a1, $a2, 2
	ori	$a2, $zero, 1
	.p2align	4, , 16
.LBB3_6:                                # =>This Inner Loop Header: Depth=1
	ldx.w	$a3, $s1, $a1
	ldx.w	$a4, $s0, $a1
	and	$a3, $a4, $a3
	stx.w	$a3, $s6, $a1
	addi.d	$a0, $a0, -1
	addi.d	$a1, $a1, -4
	bltu	$a2, $a0, .LBB3_6
# %bb.7:
	ld.w	$s7, $s5, 8
	ld.w	$a0, $s5, 4
	bge	$s7, $a0, .LBB3_14
# %bb.8:                                # %.lr.ph.preheader
	st.d	$zero, $sp, 16                  # 8-byte Folded Spill
	ori	$s8, $zero, 1
	b	.LBB3_10
	.p2align	4, , 16
.LBB3_9:                                #   in Loop: Header=BB3_10 Depth=1
	ld.w	$a0, $s5, 4
	addi.d	$s7, $s7, 1
	bge	$s7, $a0, .LBB3_15
.LBB3_10:                               # %.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_12 Depth 2
	ld.d	$a0, $s5, 72
	slli.d	$a1, $s7, 3
	ldx.d	$s4, $a0, $a1
	move	$a0, $s3
	move	$a1, $s4
	pcaddu18i	$ra, %call36(setp_disjoint)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB3_9
# %bb.11:                               #   in Loop: Header=BB3_10 Depth=1
	ld.wu	$a0, $s2, 0
	ld.wu	$a1, $s0, 0
	srli.d	$a0, $a0, 10
	andi	$a2, $a1, 1023
	bstrins.d	$a1, $a0, 63, 10
	st.w	$a1, $s2, 0
	addi.d	$a0, $a2, 1
	slli.d	$a1, $a2, 2
	.p2align	4, , 16
.LBB3_12:                               #   Parent Loop BB3_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.w	$a2, $s0, $a1
	ldx.w	$a3, $s4, $a1
	ldx.w	$a4, $s6, $a1
	and	$a2, $a3, $a2
	andn	$a3, $a4, $a3
	or	$a2, $a3, $a2
	stx.w	$a2, $s2, $a1
	addi.d	$a0, $a0, -1
	addi.d	$a1, $a1, -4
	bltu	$s8, $a0, .LBB3_12
# %bb.13:                               #   in Loop: Header=BB3_10 Depth=1
	move	$a0, $fp
	move	$a1, $s2
	pcaddu18i	$ra, %call36(sf_addset)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	ori	$a0, $zero, 1
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	b	.LBB3_9
.LBB3_14:
	ori	$a0, $zero, 1
	bnez	$a0, .LBB3_16
	b	.LBB3_20
.LBB3_15:                               # %._crit_edge.loopexit
	ld.w	$s7, $s5, 8
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	sltui	$a0, $a0, 1
	beqz	$a0, .LBB3_20
.LBB3_16:                               # %._crit_edge
	blez	$s7, .LBB3_20
# %bb.17:
	ld.wu	$a0, $s2, 0
	ld.wu	$a1, $s1, 0
	srli.d	$a0, $a0, 10
	andi	$a2, $a1, 1023
	bstrins.d	$a1, $a0, 63, 10
	st.w	$a1, $s2, 0
	addi.d	$a0, $a2, 1
	slli.d	$a1, $a2, 2
	ori	$a2, $zero, 1
	.p2align	4, , 16
.LBB3_18:                               # =>This Inner Loop Header: Depth=1
	ldx.w	$a3, $s1, $a1
	ldx.w	$a4, $s0, $a1
	and	$a3, $a4, $a3
	stx.w	$a3, $s2, $a1
	addi.d	$a0, $a0, -1
	addi.d	$a1, $a1, -4
	bltu	$a2, $a0, .LBB3_18
# %bb.19:                               # %.thread
	move	$a0, $fp
	move	$a1, $s2
	pcaddu18i	$ra, %call36(sf_addset)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	b	.LBB3_21
.LBB3_20:
	beqz	$s2, .LBB3_22
.LBB3_21:
	move	$a0, $s2
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB3_22:
	move	$a0, $fp
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
	.size	cb_consensus_dist0, .Lfunc_end3-cb_consensus_dist0
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"ESSENTIAL: %s\n"
	.size	.L.str, 15

	.section	".note.GNU-stack","",@progbits
	.addrsig
