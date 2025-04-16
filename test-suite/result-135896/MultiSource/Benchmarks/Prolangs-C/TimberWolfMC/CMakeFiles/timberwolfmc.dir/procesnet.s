	.file	"procesnet.c"
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function procesnet
.LCPI0_0:
	.word	0                               # 0x0
	.word	4                               # 0x4
	.word	4                               # 0x4
	.word	4                               # 0x4
	.text
	.globl	procesnet
	.p2align	5
	.type	procesnet,@function
procesnet:                              # @procesnet
# %bb.0:
	addi.d	$sp, $sp, -240
	st.d	$ra, $sp, 232                   # 8-byte Folded Spill
	st.d	$fp, $sp, 224                   # 8-byte Folded Spill
	st.d	$s0, $sp, 216                   # 8-byte Folded Spill
	st.d	$s1, $sp, 208                   # 8-byte Folded Spill
	st.d	$s2, $sp, 200                   # 8-byte Folded Spill
	st.d	$s3, $sp, 192                   # 8-byte Folded Spill
	st.d	$s4, $sp, 184                   # 8-byte Folded Spill
	st.d	$s5, $sp, 176                   # 8-byte Folded Spill
	st.d	$s6, $sp, 168                   # 8-byte Folded Spill
	st.d	$s7, $sp, 160                   # 8-byte Folded Spill
	st.d	$s8, $sp, 152                   # 8-byte Folded Spill
	ori	$s5, $zero, 1
	beq	$a1, $s5, .LBB0_77
# %bb.1:
	move	$s0, $a2
	move	$s1, $a1
	move	$s2, $a0
	pcaddu18i	$ra, %call36(grepair)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(prepair)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a1, $s0
	pcaddu18i	$ra, %call36(loadpg)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(shortpath)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(routenet)
	jirl	$ra, $ra, 0
	move	$s1, $zero
	move	$fp, $zero
	pcalau12i	$a0, %pc_hi20(netRoot)
	addi.d	$a0, $a0, %pc_lo12(netRoot)
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(savePaths)
	ld.d	$a0, $a0, %got_pc_lo12(savePaths)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(netSegArray)
	ld.d	$s0, $a0, %got_pc_lo12(netSegArray)
	ori	$s7, $zero, 0
	lu32i.d	$s7, 1
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 80                   # 16-byte Folded Spill
	ori	$s3, $zero, 8
                                        # implicit-def: $r27
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	b	.LBB0_3
	.p2align	4, , 16
.LBB0_2:                                # %._crit_edge403
                                        #   in Loop: Header=BB0_3 Depth=1
	pcalau12i	$a0, %got_pc_hi20(MAXPATHS)
	ld.d	$a0, $a0, %got_pc_lo12(MAXPATHS)
	ld.w	$a0, $a0, 0
	ld.d	$fp, $sp, 56                    # 8-byte Folded Reload
	addi.d	$fp, $fp, 1
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ori	$s3, $zero, 8
	bge	$s1, $a0, .LBB0_76
.LBB0_3:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_7 Depth 2
                                        #     Child Loop BB0_12 Depth 2
                                        #       Child Loop BB0_15 Depth 3
                                        #       Child Loop BB0_18 Depth 3
                                        #     Child Loop BB0_23 Depth 2
                                        #       Child Loop BB0_26 Depth 3
                                        #     Child Loop BB0_31 Depth 2
                                        #       Child Loop BB0_33 Depth 3
                                        #       Child Loop BB0_50 Depth 3
                                        #       Child Loop BB0_43 Depth 3
                                        #         Child Loop BB0_44 Depth 4
                                        #       Child Loop BB0_72 Depth 3
                                        #       Child Loop BB0_61 Depth 3
                                        #       Child Loop BB0_64 Depth 3
	addi.d	$a1, $sp, 136
	addi.d	$a2, $sp, 148
	addi.d	$a3, $sp, 144
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(tpop)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 136
	slli.d	$s6, $s2, 4
	st.d	$s6, $sp, 40                    # 8-byte Folded Spill
	beqz	$a0, .LBB0_75
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=1
	ld.w	$a0, $sp, 144
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	slli.d	$a0, $a0, 3
	ldx.d	$a2, $a1, $a0
	ld.d	$a0, $s0, 0
	ld.h	$a3, $a2, 0
	ld.d	$a1, $a0, 0
	ld.d	$a4, $a0, 8
	st.h	$s5, $a1, 0
	st.h	$zero, $a4, 0
	ori	$a4, $zero, 2
	blt	$a3, $a4, .LBB0_9
# %bb.5:                                # %.lr.ph.preheader
                                        #   in Loop: Header=BB0_3 Depth=1
	addi.d	$a2, $a2, 2
	addi.d	$a3, $a3, -1
	ori	$a4, $zero, 1
	b	.LBB0_7
	.p2align	4, , 16
.LBB0_6:                                #   in Loop: Header=BB0_7 Depth=2
	slli.d	$a6, $a4, 3
	ldx.d	$a6, $a0, $a6
	ld.h	$a7, $a6, 0
	addi.d	$a7, $a7, 1
	st.h	$a7, $a6, 0
	ext.w.h	$a7, $a7
	slli.d	$a7, $a7, 1
	stx.h	$a5, $a6, $a7
	addi.d	$a3, $a3, -1
	addi.d	$a2, $a2, 2
	beqz	$a3, .LBB0_9
.LBB0_7:                                # %.lr.ph
                                        #   Parent Loop BB0_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.hu	$a5, $a2, 0
	bnez	$a5, .LBB0_6
# %bb.8:                                #   in Loop: Header=BB0_7 Depth=2
	addi.w	$a4, $a4, 1
	ld.h	$a5, $a1, 0
	slli.d	$a6, $a4, 3
	ldx.d	$a6, $a0, $a6
	addi.d	$a5, $a5, 1
	st.h	$a5, $a1, 0
	st.h	$zero, $a6, 0
	addi.d	$a3, $a3, -1
	addi.d	$a2, $a2, 2
	bnez	$a3, .LBB0_7
	.p2align	4, , 16
.LBB0_9:                                # %._crit_edge
                                        #   in Loop: Header=BB0_3 Depth=1
	st.d	$fp, $sp, 56                    # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(mergeSeg)
	jirl	$ra, $ra, 0
	ld.d	$s8, $s0, 0
	ld.d	$a0, $s8, 0
	ld.h	$fp, $a0, 0
	addi.d	$t2, $fp, 1
	blt	$fp, $s5, .LBB0_19
# %bb.10:                               # %.preheader324.lr.ph
                                        #   in Loop: Header=BB0_3 Depth=1
	pcalau12i	$a0, %got_pc_hi20(numnodes)
	ld.d	$a0, $a0, %got_pc_lo12(numnodes)
	ld.w	$a0, $a0, 0
	move	$s0, $zero
	vreplgr2vr.w	$vr0, $a0
	ori	$a1, $zero, 1
	b	.LBB0_12
	.p2align	4, , 16
.LBB0_11:                               # %._crit_edge338
                                        #   in Loop: Header=BB0_12 Depth=2
	addi.d	$a1, $a1, 1
	beq	$a1, $t2, .LBB0_20
.LBB0_12:                               # %.preheader324
                                        #   Parent Loop BB0_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_15 Depth 3
                                        #       Child Loop BB0_18 Depth 3
	slli.d	$a2, $a1, 3
	ldx.d	$a2, $s8, $a2
	ld.h	$a3, $a2, 0
	blt	$a3, $s5, .LBB0_11
# %bb.13:                               # %.lr.ph337.preheader
                                        #   in Loop: Header=BB0_12 Depth=2
	bstrpick.d	$a3, $a3, 15, 0
	ori	$a4, $zero, 1
	bltu	$a3, $s3, .LBB0_17
# %bb.14:                               # %vector.ph
                                        #   in Loop: Header=BB0_12 Depth=2
	bstrpick.d	$a4, $a3, 14, 3
	slli.d	$a5, $a4, 3
	srli.d	$a6, $a3, 3
	ori	$a4, $zero, 1
	pcalau12i	$a7, %pc_hi20(.LCPI0_0)
	vld	$vr1, $a7, %pc_lo12(.LCPI0_0)
	bstrins.d	$a4, $a6, 14, 3
	vinsgr2vr.w	$vr2, $s0, 0
	vinsgr2vr.w	$vr3, $zero, 0
	vshuf.w	$vr1, $vr3, $vr2
	addi.d	$a6, $a2, 10
	move	$a7, $a5
	vld	$vr2, $sp, 80                   # 16-byte Folded Reload
	.p2align	4, , 16
.LBB0_15:                               # %vector.body
                                        #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_12 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$t0, $a6, -8
	ld.d	$t1, $a6, 0
	vinsgr2vr.d	$vr3, $t0, 0
	vinsgr2vr.d	$vr4, $t1, 0
	vilvl.h	$vr3, $vr3, $vr3
	vslli.w	$vr3, $vr3, 16
	vsrai.w	$vr3, $vr3, 16
	vilvl.h	$vr4, $vr4, $vr4
	vslli.w	$vr4, $vr4, 16
	vsrai.w	$vr4, $vr4, 16
	vslt.w	$vr3, $vr0, $vr3
	vslt.w	$vr4, $vr0, $vr4
	vsub.w	$vr1, $vr1, $vr3
	vsub.w	$vr2, $vr2, $vr4
	addi.d	$a7, $a7, -8
	addi.d	$a6, $a6, 16
	bnez	$a7, .LBB0_15
# %bb.16:                               # %middle.block
                                        #   in Loop: Header=BB0_12 Depth=2
	vadd.w	$vr1, $vr2, $vr1
	vshuf4i.w	$vr2, $vr1, 14
	vadd.w	$vr1, $vr1, $vr2
	vreplvei.w	$vr2, $vr1, 1
	vadd.w	$vr1, $vr1, $vr2
	vpickve2gr.w	$s0, $vr1, 0
	beq	$a5, $a3, .LBB0_11
.LBB0_17:                               # %.lr.ph337.preheader448
                                        #   in Loop: Header=BB0_12 Depth=2
	addi.d	$a3, $a3, 1
	alsl.d	$a2, $a4, $a2, 1
	sub.d	$a3, $a3, $a4
	.p2align	4, , 16
.LBB0_18:                               # %.lr.ph337
                                        #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_12 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.h	$a4, $a2, 0
	slt	$a4, $a0, $a4
	add.w	$s0, $s0, $a4
	addi.d	$a3, $a3, -1
	addi.d	$a2, $a2, 2
	bnez	$a3, .LBB0_18
	b	.LBB0_11
	.p2align	4, , 16
.LBB0_19:                               #   in Loop: Header=BB0_3 Depth=1
	move	$s0, $zero
.LBB0_20:                               # %._crit_edge342
                                        #   in Loop: Header=BB0_3 Depth=1
	st.d	$t2, $sp, 120                   # 8-byte Folded Spill
	addi.d	$s1, $s1, 1
	slli.d	$a0, $s0, 2
	addi.d	$a0, $a0, 4
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(netRoutes)
	ld.d	$a1, $a1, %got_pc_lo12(netRoutes)
	ld.d	$a2, $a1, 0
	alsl.d	$a1, $s2, $s6, 3
	st.d	$a2, $sp, 32                    # 8-byte Folded Spill
	ldx.d	$a1, $a2, $a1
	slli.d	$a2, $s1, 3
	ldx.d	$a2, $a1, $a2
	ld.w	$a1, $sp, 148
	st.d	$a0, $a2, 0
	st.d	$a2, $sp, 72                    # 8-byte Folded Spill
	st.w	$a1, $a2, 8
	st.w	$s0, $a0, 0
	st.d	$s1, $sp, 64                    # 8-byte Folded Spill
	blt	$fp, $s5, .LBB0_2
# %bb.21:                               # %.preheader323.lr.ph
                                        #   in Loop: Header=BB0_3 Depth=1
	pcalau12i	$a1, %got_pc_hi20(numnodes)
	ld.d	$a1, $a1, %got_pc_lo12(numnodes)
	ld.w	$a2, $a1, 0
	move	$a3, $zero
	ori	$a4, $zero, 1
	ld.d	$t1, $sp, 120                   # 8-byte Folded Reload
	b	.LBB0_23
	.p2align	4, , 16
.LBB0_22:                               # %._crit_edge350
                                        #   in Loop: Header=BB0_23 Depth=2
	addi.d	$a4, $a4, 1
	beq	$a4, $t1, .LBB0_28
.LBB0_23:                               # %.preheader323
                                        #   Parent Loop BB0_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_26 Depth 3
	slli.d	$a5, $a4, 3
	ldx.d	$a5, $s8, $a5
	ld.h	$a6, $a5, 0
	blt	$a6, $s5, .LBB0_22
# %bb.24:                               # %.lr.ph349.preheader
                                        #   in Loop: Header=BB0_23 Depth=2
	addi.d	$a6, $a6, 1
	bstrpick.d	$a6, $a6, 15, 0
	addi.d	$a5, $a5, 2
	addi.d	$a6, $a6, -1
	b	.LBB0_26
	.p2align	4, , 16
.LBB0_25:                               #   in Loop: Header=BB0_26 Depth=3
	addi.d	$a6, $a6, -1
	addi.d	$a5, $a5, 2
	beqz	$a6, .LBB0_22
.LBB0_26:                               # %.lr.ph349
                                        #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_23 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.h	$a7, $a5, 0
	bge	$a2, $a7, .LBB0_25
# %bb.27:                               #   in Loop: Header=BB0_26 Depth=3
	sub.d	$a7, $a7, $a2
	addi.w	$a3, $a3, 1
	slli.d	$t0, $a3, 2
	stx.w	$a7, $a0, $t0
	b	.LBB0_25
	.p2align	4, , 16
.LBB0_28:                               # %.preheader.lr.ph
                                        #   in Loop: Header=BB0_3 Depth=1
	pcalau12i	$a0, %got_pc_hi20(gnodeArray)
	ld.d	$a0, $a0, %got_pc_lo12(gnodeArray)
	ld.w	$s0, $a1, 0
	ld.d	$s6, $a0, 0
	st.d	$zero, $sp, 128                 # 8-byte Folded Spill
	ori	$s3, $zero, 1
	st.d	$s8, $sp, 112                   # 8-byte Folded Spill
	b	.LBB0_31
	.p2align	4, , 16
.LBB0_29:                               #   in Loop: Header=BB0_31 Depth=2
	st.d	$a0, $a1, 16
	ld.d	$t1, $sp, 120                   # 8-byte Folded Reload
	st.w	$s5, $a0, 0
	st.w	$s1, $a0, 4
	st.w	$s8, $a0, 8
	ori	$s5, $zero, 1
	ld.d	$s8, $sp, 112                   # 8-byte Folded Reload
.LBB0_30:                               # %.sink.split
                                        #   in Loop: Header=BB0_31 Depth=2
	st.w	$fp, $a0, 12
	st.d	$zero, $a0, 16
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	addi.d	$s3, $s3, 1
	beq	$s3, $t1, .LBB0_2
.LBB0_31:                               # %.preheader
                                        #   Parent Loop BB0_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_33 Depth 3
                                        #       Child Loop BB0_50 Depth 3
                                        #       Child Loop BB0_43 Depth 3
                                        #         Child Loop BB0_44 Depth 4
                                        #       Child Loop BB0_72 Depth 3
                                        #       Child Loop BB0_61 Depth 3
                                        #       Child Loop BB0_64 Depth 3
	slli.d	$a0, $s3, 3
	ldx.d	$s1, $s8, $a0
	ld.h	$s2, $s1, 0
	blt	$s2, $s5, .LBB0_52
# %bb.32:                               # %.lr.ph359.preheader
                                        #   in Loop: Header=BB0_31 Depth=2
	move	$fp, $zero
	addi.d	$a0, $s1, 2
	ori	$a1, $zero, 1
	move	$a2, $s2
	.p2align	4, , 16
.LBB0_33:                               # %.lr.ph359
                                        #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_31 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.h	$a3, $a0, 0
	slt	$a3, $s0, $a3
	sltui	$a4, $fp, 1
	masknez	$a5, $fp, $a4
	maskeqz	$a4, $a1, $a4
	or	$a4, $a4, $a5
	masknez	$a4, $a4, $a3
	maskeqz	$a5, $fp, $a3
	or	$fp, $a5, $a4
	masknez	$a4, $a1, $a3
	maskeqz	$a3, $s4, $a3
	or	$a3, $a3, $a4
	addi.w	$s4, $a3, 0
	addi.d	$a0, $a0, 2
	addi.d	$a2, $a2, -1
	addi.w	$a1, $a1, 1
	bnez	$a2, .LBB0_33
# %bb.34:                               # %._crit_edge360
                                        #   in Loop: Header=BB0_31 Depth=2
	beqz	$fp, .LBB0_52
# %bb.35:                               #   in Loop: Header=BB0_31 Depth=2
	ori	$a0, $zero, 2
	blt	$fp, $a0, .LBB0_42
# %bb.36:                               #   in Loop: Header=BB0_31 Depth=2
	ld.h	$a0, $s1, 2
	slli.d	$a1, $a0, 3
	ldx.d	$a1, $s6, $a1
	ld.d	$a2, $a1, 32
	ld.h	$a3, $s1, 4
	ld.w	$s5, $a2, 0
	bne	$s5, $a3, .LBB0_38
# %bb.37:                               #   in Loop: Header=BB0_31 Depth=2
	ld.w	$s5, $a1, 0
	move	$a2, $a1
.LBB0_38:                               #   in Loop: Header=BB0_31 Depth=2
	ld.w	$s8, $a2, 8
	blt	$s0, $s5, .LBB0_50
.LBB0_39:                               # %._crit_edge371
                                        #   in Loop: Header=BB0_31 Depth=2
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	bnez	$a1, .LBB0_41
# %bb.40:                               #   in Loop: Header=BB0_31 Depth=2
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
.LBB0_41:                               #   in Loop: Header=BB0_31 Depth=2
	st.d	$a0, $a1, 16
	ld.d	$t1, $sp, 120                   # 8-byte Folded Reload
	slli.d	$a1, $fp, 1
	ldx.h	$a1, $s1, $a1
	st.w	$s5, $a0, 0
	st.w	$s8, $a0, 8
	st.w	$a1, $a0, 4
	st.w	$zero, $a0, 12
	st.d	$zero, $a0, 16
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
.LBB0_42:                               #   in Loop: Header=BB0_31 Depth=2
	addi.d	$a3, $s1, 2
	move	$s8, $fp
.LBB0_43:                               #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_31 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_44 Depth 4
	slt	$a0, $s4, $fp
	masknez	$a1, $s4, $a0
	maskeqz	$a0, $fp, $a0
	or	$a0, $a0, $a1
	sub.d	$a0, $a0, $fp
	addi.d	$a0, $a0, 1
	slli.d	$s5, $fp, 32
	alsl.d	$a1, $fp, $a3, 1
	.p2align	4, , 16
.LBB0_44:                               #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_31 Depth=2
                                        #       Parent Loop BB0_43 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	addi.d	$a0, $a0, -1
	beqz	$a0, .LBB0_66
# %bb.45:                               #   in Loop: Header=BB0_44 Depth=4
	ld.h	$a2, $a1, 0
	add.d	$s5, $s5, $s7
	addi.d	$a1, $a1, 2
	addi.w	$s8, $s8, 1
	blt	$s0, $a2, .LBB0_44
# %bb.46:                               #   in Loop: Header=BB0_43 Depth=3
	st.d	$s2, $sp, 104                   # 8-byte Folded Spill
	move	$s2, $s7
	move	$s7, $a3
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	bnez	$a1, .LBB0_48
# %bb.47:                               #   in Loop: Header=BB0_43 Depth=3
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
.LBB0_48:                               #   in Loop: Header=BB0_43 Depth=3
	st.d	$a0, $a1, 16
	slli.d	$a1, $fp, 1
	ldx.h	$a1, $s1, $a1
	vld	$vr0, $sp, 80                   # 16-byte Folded Reload
	vst	$vr0, $a0, 8
	srai.d	$a2, $s5, 31
	ldx.h	$a2, $s1, $a2
	st.w	$a1, $a0, 0
	st.w	$a2, $a0, 4
	move	$fp, $s8
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	ld.d	$t1, $sp, 120                   # 8-byte Folded Reload
	move	$a3, $s7
	move	$s7, $s2
	ld.d	$s2, $sp, 104                   # 8-byte Folded Reload
	b	.LBB0_43
	.p2align	4, , 16
.LBB0_49:                               #   in Loop: Header=BB0_50 Depth=3
	ld.w	$a1, $a2, 8
	add.d	$s8, $a1, $s8
	bge	$s0, $s5, .LBB0_39
.LBB0_50:                               # %.lr.ph370
                                        #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_31 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	move	$a3, $a0
	move	$a0, $s5
	slli.d	$a1, $s5, 3
	ldx.d	$a1, $s6, $a1
	ld.d	$a2, $a1, 32
	ld.w	$s5, $a2, 0
	bne	$s5, $a3, .LBB0_49
# %bb.51:                               #   in Loop: Header=BB0_50 Depth=3
	ld.w	$s5, $a1, 0
	move	$a2, $a1
	b	.LBB0_49
	.p2align	4, , 16
.LBB0_52:                               # %._crit_edge360.thread
                                        #   in Loop: Header=BB0_31 Depth=2
	ld.h	$a0, $s1, 2
	slli.d	$a1, $a0, 3
	ldx.d	$a1, $s6, $a1
	ld.d	$a2, $a1, 32
	ld.h	$a3, $s1, 4
	ld.w	$s5, $a2, 0
	bne	$s5, $a3, .LBB0_54
# %bb.53:                               #   in Loop: Header=BB0_31 Depth=2
	ld.w	$s5, $a1, 0
	move	$a2, $a1
.LBB0_54:                               #   in Loop: Header=BB0_31 Depth=2
	ld.w	$s8, $a2, 8
	blt	$s0, $s5, .LBB0_61
.LBB0_55:                               # %._crit_edge387
                                        #   in Loop: Header=BB0_31 Depth=2
	slli.d	$a0, $s2, 1
	ldx.h	$a0, $s1, $a0
	slli.d	$a1, $a0, 3
	ldx.d	$a1, $s6, $a1
	ld.d	$a2, $a1, 32
	alsl.d	$a3, $s2, $s1, 1
	ld.h	$a3, $a3, -2
	ld.w	$s1, $a2, 0
	bne	$s1, $a3, .LBB0_57
# %bb.56:                               #   in Loop: Header=BB0_31 Depth=2
	ld.w	$s1, $a1, 0
	move	$a2, $a1
.LBB0_57:                               #   in Loop: Header=BB0_31 Depth=2
	ld.w	$fp, $a2, 8
	blt	$s0, $s1, .LBB0_64
.LBB0_58:                               # %._crit_edge396
                                        #   in Loop: Header=BB0_31 Depth=2
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	bnez	$a1, .LBB0_29
# %bb.59:                               #   in Loop: Header=BB0_31 Depth=2
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	b	.LBB0_29
	.p2align	4, , 16
.LBB0_60:                               #   in Loop: Header=BB0_61 Depth=3
	ld.w	$a1, $a2, 8
	add.d	$s8, $a1, $s8
	bge	$s0, $s5, .LBB0_55
.LBB0_61:                               # %.lr.ph386
                                        #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_31 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	move	$a3, $a0
	move	$a0, $s5
	slli.d	$a1, $s5, 3
	ldx.d	$a1, $s6, $a1
	ld.d	$a2, $a1, 32
	ld.w	$s5, $a2, 0
	bne	$s5, $a3, .LBB0_60
# %bb.62:                               #   in Loop: Header=BB0_61 Depth=3
	ld.w	$s5, $a1, 0
	move	$a2, $a1
	b	.LBB0_60
	.p2align	4, , 16
.LBB0_63:                               #   in Loop: Header=BB0_64 Depth=3
	ld.w	$a1, $a2, 8
	add.d	$fp, $a1, $fp
	bge	$s0, $s1, .LBB0_58
.LBB0_64:                               # %.lr.ph395
                                        #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_31 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	move	$a3, $a0
	move	$a0, $s1
	slli.d	$a1, $s1, 3
	ldx.d	$a1, $s6, $a1
	ld.d	$a2, $a1, 32
	ld.w	$s1, $a2, 0
	bne	$s1, $a3, .LBB0_63
# %bb.65:                               #   in Loop: Header=BB0_64 Depth=3
	ld.w	$s1, $a1, 0
	move	$a2, $a1
	b	.LBB0_63
	.p2align	4, , 16
.LBB0_66:                               #   in Loop: Header=BB0_31 Depth=2
	bge	$s4, $s2, .LBB0_74
# %bb.67:                               #   in Loop: Header=BB0_31 Depth=2
	slli.d	$a0, $s2, 1
	ldx.h	$a0, $s1, $a0
	slli.d	$a1, $a0, 3
	ldx.d	$a1, $s6, $a1
	ld.d	$a2, $a1, 32
	alsl.d	$a3, $s2, $s1, 1
	ld.h	$a3, $a3, -2
	ld.w	$s2, $a2, 0
	ori	$s5, $zero, 1
	ld.d	$s8, $sp, 112                   # 8-byte Folded Reload
	bne	$s2, $a3, .LBB0_69
# %bb.68:                               #   in Loop: Header=BB0_31 Depth=2
	ld.w	$s2, $a1, 0
	move	$a2, $a1
.LBB0_69:                               #   in Loop: Header=BB0_31 Depth=2
	ld.w	$fp, $a2, 8
	blt	$s0, $s2, .LBB0_72
.LBB0_70:                               # %._crit_edge379
                                        #   in Loop: Header=BB0_31 Depth=2
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	slli.d	$a1, $s4, 1
	ldx.h	$a1, $s1, $a1
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	st.d	$a0, $a2, 16
	st.w	$a1, $a0, 0
	st.w	$zero, $a0, 8
	st.w	$s2, $a0, 4
	ld.d	$t1, $sp, 120                   # 8-byte Folded Reload
	b	.LBB0_30
	.p2align	4, , 16
.LBB0_71:                               #   in Loop: Header=BB0_72 Depth=3
	ld.w	$a1, $a2, 8
	add.d	$fp, $a1, $fp
	bge	$s0, $s2, .LBB0_70
.LBB0_72:                               # %.lr.ph378
                                        #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_31 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	move	$a3, $a0
	move	$a0, $s2
	slli.d	$a1, $s2, 3
	ldx.d	$a1, $s6, $a1
	ld.d	$a2, $a1, 32
	ld.w	$s2, $a2, 0
	bne	$s2, $a3, .LBB0_71
# %bb.73:                               #   in Loop: Header=BB0_72 Depth=3
	ld.w	$s2, $a1, 0
	move	$a2, $a1
	b	.LBB0_71
.LBB0_74:                               #   in Loop: Header=BB0_31 Depth=2
	ori	$s5, $zero, 1
	ld.d	$s8, $sp, 112                   # 8-byte Folded Reload
	addi.d	$s3, $s3, 1
	bne	$s3, $t1, .LBB0_31
	b	.LBB0_2
.LBB0_75:                               # %._crit_edge434
	pcalau12i	$a0, %got_pc_hi20(netRoutes)
	ld.d	$a0, $a0, %got_pc_lo12(netRoutes)
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	move	$fp, $s1
.LBB0_76:                               # %split
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	alsl.d	$a0, $s2, $a0, 3
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	add.d	$a0, $a1, $a0
	st.w	$fp, $a0, 8
.LBB0_77:
	ld.d	$s8, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 184                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 192                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 200                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 208                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 216                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 224                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 232                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 240
	ret
.Lfunc_end0:
	.size	procesnet, .Lfunc_end0-procesnet
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function mergeSeg
.LCPI1_0:
	.half	7                               # 0x7
	.half	6                               # 0x6
	.half	5                               # 0x5
	.half	4                               # 0x4
	.half	3                               # 0x3
	.half	2                               # 0x2
	.half	1                               # 0x1
	.half	0                               # 0x0
	.text
	.globl	mergeSeg
	.p2align	5
	.type	mergeSeg,@function
mergeSeg:                               # @mergeSeg
# %bb.0:
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	st.d	$s4, $sp, 8                     # 8-byte Folded Spill
	st.d	$s5, $sp, 0                     # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(netSegArray)
	ld.d	$s1, $a0, %got_pc_lo12(netSegArray)
	ld.d	$a0, $s1, 0
	ld.d	$a1, $a0, 0
	ld.h	$a4, $a1, 0
	ori	$s2, $zero, 2
	blt	$a4, $s2, .LBB1_44
# %bb.1:                                # %.lr.ph.preheader
	ori	$fp, $zero, 1
	pcalau12i	$a2, %got_pc_hi20(numnodes)
	ld.d	$s3, $a2, %got_pc_lo12(numnodes)
	addi.w	$s0, $zero, -1
	ori	$s4, $zero, 9
	ori	$s5, $zero, 0
	lu32i.d	$s5, 1
	move	$a6, $a4
	b	.LBB1_5
	.p2align	4, , 16
.LBB1_2:                                # %joinSeg.exit57
                                        #   in Loop: Header=BB1_5 Depth=1
	addi.d	$a4, $a4, -1
	st.h	$a4, $a1, 0
.LBB1_3:                                # %.loopexit
                                        #   in Loop: Header=BB1_5 Depth=1
	addi.d	$fp, $fp, -1
.LBB1_4:                                # %.loopexit
                                        #   in Loop: Header=BB1_5 Depth=1
	addi.w	$fp, $fp, 1
	ext.w.h	$a6, $a4
	bge	$fp, $a6, .LBB1_44
.LBB1_5:                                # %.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_7 Depth 2
                                        #     Child Loop BB1_13 Depth 2
                                        #     Child Loop BB1_18 Depth 2
                                        #     Child Loop BB1_22 Depth 2
                                        #       Child Loop BB1_24 Depth 3
                                        #     Child Loop BB1_33 Depth 2
                                        #     Child Loop BB1_36 Depth 2
                                        #     Child Loop BB1_40 Depth 2
                                        #       Child Loop BB1_42 Depth 3
	slli.d	$a3, $fp, 3
	ldx.d	$a2, $a0, $a3
	ld.h	$a7, $a2, 2
	ld.w	$a5, $s3, 0
	bge	$a5, $a7, .LBB1_11
# %bb.6:                                # %.preheader58.preheader
                                        #   in Loop: Header=BB1_5 Depth=1
	bstrpick.d	$a7, $a7, 15, 0
	slt	$t0, $fp, $a6
	masknez	$t1, $fp, $t0
	maskeqz	$a6, $a6, $t0
	or	$a6, $a6, $t1
	sub.d	$a6, $a6, $fp
	alsl.d	$t0, $fp, $a0, 3
	addi.d	$t0, $t0, 8
	bstrpick.d	$t1, $a7, 15, 0
	move	$t2, $s0
	.p2align	4, , 16
.LBB1_7:                                # %.preheader58
                                        #   Parent Loop BB1_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beqz	$a6, .LBB1_11
# %bb.8:                                #   in Loop: Header=BB1_7 Depth=2
	move	$a7, $t2
	ld.d	$t2, $t0, 0
	ld.hu	$t3, $t2, 2
	beq	$t1, $t3, .LBB1_26
# %bb.9:                                #   in Loop: Header=BB1_7 Depth=2
	ld.h	$t3, $t2, 0
	slli.d	$t3, $t3, 1
	ldx.hu	$t3, $t2, $t3
	addi.d	$a6, $a6, -1
	addi.d	$t2, $a7, -1
	addi.d	$t0, $t0, 8
	bne	$t1, $t3, .LBB1_7
# %bb.10:                               #   in Loop: Header=BB1_5 Depth=1
	ori	$a3, $zero, 1
	b	.LBB1_27
	.p2align	4, , 16
.LBB1_11:                               # %.critedge
                                        #   in Loop: Header=BB1_5 Depth=1
	ld.h	$a7, $a2, 0
	slli.d	$a6, $a7, 1
	ldx.h	$a6, $a2, $a6
	bge	$a5, $a6, .LBB1_4
# %bb.12:                               # %.preheader
                                        #   in Loop: Header=BB1_5 Depth=1
	bstrpick.d	$t0, $a7, 15, 0
	bstrpick.d	$t1, $a6, 15, 0
	ext.w.h	$a5, $a4
	slt	$a6, $a5, $fp
	masknez	$a5, $a5, $a6
	maskeqz	$a6, $fp, $a6
	or	$t2, $a6, $a5
	addi.d	$t3, $a3, 8
	move	$a3, $fp
	.p2align	4, , 16
.LBB1_13:                               #   Parent Loop BB1_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$t2, $a3, .LBB1_4
# %bb.14:                               #   in Loop: Header=BB1_13 Depth=2
	ldx.d	$a5, $a0, $t3
	ld.h	$a6, $a5, 0
	slli.d	$t4, $a6, 1
	ldx.hu	$t5, $a5, $t4
	bstrpick.d	$t4, $t1, 15, 0
	beq	$t4, $t5, .LBB1_28
# %bb.15:                               #   in Loop: Header=BB1_13 Depth=2
	ld.hu	$t5, $a5, 2
	addi.d	$t3, $t3, 8
	addi.d	$a3, $a3, 1
	bne	$t4, $t5, .LBB1_13
# %bb.16:                               #   in Loop: Header=BB1_5 Depth=1
	blt	$a6, $s2, .LBB1_20
# %bb.17:                               # %.lr.ph71.i
                                        #   in Loop: Header=BB1_5 Depth=1
	addi.d	$a4, $a2, -2
	ori	$a6, $zero, 1
	ori	$a7, $zero, 4
	.p2align	4, , 16
.LBB1_18:                               #   Parent Loop BB1_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.h	$t0, $a2, 0
	ldx.h	$t1, $a5, $a7
	add.d	$t0, $a6, $t0
	slli.d	$t0, $t0, 32
	add.d	$t0, $t0, $s5
	srai.d	$t0, $t0, 31
	stx.h	$t1, $a4, $t0
	ld.h	$t1, $a5, 0
	addi.d	$a6, $a6, 1
	addi.d	$a7, $a7, 2
	blt	$a6, $t1, .LBB1_18
# %bb.19:                               # %.loopexit60.i42.loopexit
                                        #   in Loop: Header=BB1_5 Depth=1
	ld.hu	$t0, $a2, 0
	bstrpick.d	$a6, $t1, 15, 0
.LBB1_20:                               # %.loopexit60.i42
                                        #   in Loop: Header=BB1_5 Depth=1
	add.d	$a4, $a6, $t0
	addi.d	$a4, $a4, -1
	st.h	$a4, $a2, 0
	ld.h	$a2, $a1, 0
	bstrpick.d	$a4, $a2, 15, 0
	blt	$a3, $a2, .LBB1_22
	b	.LBB1_2
	.p2align	4, , 16
.LBB1_21:                               # %.loopexit.i55
                                        #   in Loop: Header=BB1_22 Depth=2
	ext.w.h	$a2, $a4
	bge	$a3, $a2, .LBB1_2
.LBB1_22:                               # %.preheader.i45
                                        #   Parent Loop BB1_5 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_24 Depth 3
	move	$a5, $a3
	addi.d	$a3, $a3, 1
	slli.d	$a2, $a3, 3
	ldx.d	$a2, $a0, $a2
	ld.h	$a6, $a2, 0
	bltz	$a6, .LBB1_21
# %bb.23:                               # %.lr.ph84.i49
                                        #   in Loop: Header=BB1_22 Depth=2
	slli.d	$a4, $a5, 3
	ldx.d	$a4, $a0, $a4
	move	$a5, $zero
	addi.w	$a6, $zero, -1
	.p2align	4, , 16
.LBB1_24:                               #   Parent Loop BB1_5 Depth=1
                                        #     Parent Loop BB1_22 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ldx.h	$a7, $a2, $a5
	stx.h	$a7, $a4, $a5
	ld.h	$a7, $a2, 0
	addi.d	$a6, $a6, 1
	addi.d	$a5, $a5, 2
	blt	$a6, $a7, .LBB1_24
# %bb.25:                               # %.loopexit.loopexit.i53
                                        #   in Loop: Header=BB1_22 Depth=2
	ld.hu	$a4, $a1, 0
	b	.LBB1_21
.LBB1_26:                               #   in Loop: Header=BB1_5 Depth=1
	move	$a3, $s0
.LBB1_27:                               #   in Loop: Header=BB1_5 Depth=1
	sub.w	$a2, $fp, $a7
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(joinSeg)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	ld.d	$a1, $a0, 0
	ld.hu	$a4, $a1, 0
	b	.LBB1_3
.LBB1_28:                               #   in Loop: Header=BB1_5 Depth=1
	blt	$a6, $s2, .LBB1_38
# %bb.29:                               # %.lr.ph.preheader.i
                                        #   in Loop: Header=BB1_5 Depth=1
	bltu	$a6, $s4, .LBB1_35
# %bb.30:                               # %vector.memcheck
                                        #   in Loop: Header=BB1_5 Depth=1
	alsl.d	$t0, $a7, $a2, 1
	addi.d	$a4, $t0, 2
	alsl.d	$t2, $a6, $a5, 1
	bgeu	$a4, $t2, .LBB1_32
# %bb.31:                               # %vector.memcheck
                                        #   in Loop: Header=BB1_5 Depth=1
	alsl.d	$t0, $a6, $t0, 1
	addi.d	$t1, $a5, 2
	bltu	$t1, $t0, .LBB1_35
.LBB1_32:                               # %vector.ph
                                        #   in Loop: Header=BB1_5 Depth=1
	addi.d	$t0, $a6, -1
	move	$t1, $t0
	bstrins.d	$t1, $zero, 2, 0
	add.d	$a7, $t1, $a7
	sub.d	$a6, $a6, $t1
	addi.d	$t2, $t2, -16
	move	$t3, $t1
	.p2align	4, , 16
.LBB1_33:                               # %vector.body
                                        #   Parent Loop BB1_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $t2, 0
	pcalau12i	$t4, %pc_hi20(.LCPI1_0)
	vld	$vr1, $t4, %pc_lo12(.LCPI1_0)
	vshuf.h	$vr1, $vr0, $vr0
	vst	$vr1, $a4, 0
	addi.d	$a4, $a4, 16
	addi.d	$t3, $t3, -8
	addi.d	$t2, $t2, -16
	bnez	$t3, .LBB1_33
# %bb.34:                               # %middle.block
                                        #   in Loop: Header=BB1_5 Depth=1
	beq	$t0, $t1, .LBB1_37
.LBB1_35:                               # %.lr.ph.i.preheader
                                        #   in Loop: Header=BB1_5 Depth=1
	alsl.d	$a4, $a7, $a2, 1
	addi.d	$a4, $a4, 2
	addi.d	$a7, $a6, 1
	alsl.d	$a6, $a6, $a5, 1
	addi.d	$a6, $a6, -2
	.p2align	4, , 16
.LBB1_36:                               # %.lr.ph.i
                                        #   Parent Loop BB1_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.h	$t0, $a6, 0
	st.h	$t0, $a4, 0
	addi.d	$a4, $a4, 2
	addi.d	$a7, $a7, -1
	addi.d	$a6, $a6, -2
	bltu	$s2, $a7, .LBB1_36
.LBB1_37:                               # %.loopexit60.i.loopexit
                                        #   in Loop: Header=BB1_5 Depth=1
	ld.hu	$a6, $a5, 0
	ld.hu	$t0, $a2, 0
.LBB1_38:                               # %.loopexit60.i
                                        #   in Loop: Header=BB1_5 Depth=1
	add.d	$a4, $a6, $t0
	addi.d	$a4, $a4, -1
	st.h	$a4, $a2, 0
	ld.h	$a5, $a1, 0
	addi.d	$a2, $a3, 1
	bstrpick.d	$a4, $a5, 15, 0
	blt	$a2, $a5, .LBB1_40
	b	.LBB1_2
	.p2align	4, , 16
.LBB1_39:                               # %.loopexit.i
                                        #   in Loop: Header=BB1_40 Depth=2
	ext.w.h	$a3, $a4
	bge	$a2, $a3, .LBB1_2
.LBB1_40:                               # %.preheader.i
                                        #   Parent Loop BB1_5 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_42 Depth 3
	move	$a5, $a2
	addi.d	$a2, $a2, 1
	slli.d	$a3, $a2, 3
	ldx.d	$a3, $a0, $a3
	ld.h	$a6, $a3, 0
	bltz	$a6, .LBB1_39
# %bb.41:                               # %.lr.ph84.i
                                        #   in Loop: Header=BB1_40 Depth=2
	slli.d	$a4, $a5, 3
	ldx.d	$a4, $a0, $a4
	move	$a5, $zero
	addi.w	$a6, $zero, -1
	.p2align	4, , 16
.LBB1_42:                               #   Parent Loop BB1_5 Depth=1
                                        #     Parent Loop BB1_40 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ldx.h	$a7, $a3, $a5
	stx.h	$a7, $a4, $a5
	ld.h	$a7, $a3, 0
	addi.d	$a6, $a6, 1
	addi.d	$a5, $a5, 2
	blt	$a6, $a7, .LBB1_42
# %bb.43:                               # %.loopexit.loopexit.i
                                        #   in Loop: Header=BB1_40 Depth=2
	ld.hu	$a4, $a1, 0
	b	.LBB1_39
.LBB1_44:                               # %._crit_edge
	ld.d	$s5, $sp, 0                     # 8-byte Folded Reload
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
	.size	mergeSeg, .Lfunc_end1-mergeSeg
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function joinSeg
.LCPI2_0:
	.half	7                               # 0x7
	.half	6                               # 0x6
	.half	5                               # 0x5
	.half	4                               # 0x4
	.half	3                               # 0x3
	.half	2                               # 0x2
	.half	1                               # 0x1
	.half	0                               # 0x0
	.text
	.globl	joinSeg
	.p2align	5
	.type	joinSeg,@function
joinSeg:                                # @joinSeg
# %bb.0:
	addi.w	$a4, $zero, -1
	slli.d	$a5, $a0, 3
	bge	$a4, $a1, .LBB2_9
# %bb.1:
	pcalau12i	$a1, %got_pc_hi20(netSegArray)
	ld.d	$a1, $a1, %got_pc_lo12(netSegArray)
	ld.d	$a1, $a1, 0
	bge	$a4, $a3, .LBB2_16
# %bb.2:
	slli.d	$a0, $a2, 3
	ldx.d	$a6, $a1, $a0
	ld.h	$a3, $a6, 0
	ori	$a0, $zero, 2
	blt	$a3, $a0, .LBB2_32
# %bb.3:                                # %.lr.ph.preheader
	ldx.d	$a0, $a1, $a5
	bstrpick.d	$t3, $a3, 15, 0
	ld.h	$a3, $a0, 0
	bstrpick.d	$a7, $t3, 15, 0
	ori	$t0, $zero, 25
	bltu	$a7, $t0, .LBB2_6
# %bb.4:                                # %vector.memcheck
	alsl.d	$t0, $a3, $a0, 1
	addi.d	$a7, $t0, 2
	alsl.d	$t1, $t3, $a6, 1
	bgeu	$a7, $t1, .LBB2_22
# %bb.5:                                # %vector.memcheck
	alsl.d	$t0, $t3, $t0, 1
	addi.d	$t1, $a6, 2
	bgeu	$t1, $t0, .LBB2_22
.LBB2_6:
	move	$t0, $t3
.LBB2_7:                                # %.lr.ph.preheader156
	alsl.d	$a0, $a3, $a0, 1
	addi.d	$a0, $a0, 2
	addi.d	$a3, $t0, 1
	slli.d	$a7, $t0, 1
	addi.d	$a7, $a7, -2
	ori	$t0, $zero, 2
	.p2align	4, , 16
.LBB2_8:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ldx.h	$t1, $a6, $a7
	st.h	$t1, $a0, 0
	addi.d	$a0, $a0, 2
	addi.d	$a3, $a3, -1
	addi.d	$a7, $a7, -2
	bltu	$t0, $a3, .LBB2_8
	b	.LBB2_32
.LBB2_9:
	pcalau12i	$a0, %got_pc_hi20(netSegArray)
	ld.d	$a0, $a0, %got_pc_lo12(netSegArray)
	ld.d	$a1, $a0, 0
	ldx.d	$a0, $a1, $a5
	ld.h	$a7, $a0, 0
	ori	$a6, $zero, 1
	blt	$a7, $a6, .LBB2_12
# %bb.10:                               # %.lr.ph75
	slli.d	$t0, $a2, 3
	ldx.d	$t0, $a1, $t0
	addi.d	$t1, $a0, -2
	alsl.d	$t2, $a7, $a0, 1
	.p2align	4, , 16
.LBB2_11:                               # =>This Inner Loop Header: Depth=1
	ld.h	$t3, $t0, 0
	move	$t4, $a7
	ld.h	$a7, $t2, 0
	add.d	$t3, $t4, $t3
	slli.d	$t3, $t3, 32
	srai.d	$t3, $t3, 31
	stx.h	$a7, $t1, $t3
	addi.d	$a7, $t4, -1
	addi.d	$t2, $t2, -2
	bltu	$a6, $t4, .LBB2_11
.LBB2_12:                               # %._crit_edge
	slli.d	$a6, $a2, 3
	ldx.d	$a6, $a1, $a6
	ld.h	$a7, $a6, 0
	bltz	$a3, .LBB2_19
# %bb.13:                               # %.preheader61
	ori	$a3, $zero, 2
	blt	$a7, $a3, .LBB2_32
# %bb.14:                               # %.lr.ph77.preheader
	ori	$a7, $zero, 1
	.p2align	4, , 16
.LBB2_15:                               # %.lr.ph77
                                        # =>This Inner Loop Header: Depth=1
	ldx.h	$t0, $a6, $a3
	stx.h	$t0, $a0, $a3
	ld.h	$t0, $a6, 0
	addi.d	$a7, $a7, 1
	addi.d	$a3, $a3, 2
	blt	$a7, $t0, .LBB2_15
	b	.LBB2_32
.LBB2_16:                               # %.preheader63
	slli.d	$a3, $a2, 3
	ldx.d	$a6, $a1, $a3
	ld.h	$a3, $a6, 0
	ori	$t0, $zero, 2
	blt	$a3, $t0, .LBB2_32
# %bb.17:                               # %.lr.ph71
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $a1, $a0
	addi.d	$a3, $a0, -2
	ori	$a7, $zero, 4
	.p2align	4, , 16
.LBB2_18:                               # =>This Inner Loop Header: Depth=1
	ld.h	$t1, $a0, 0
	move	$t2, $t0
	ldx.h	$t0, $a6, $a7
	add.d	$t1, $t2, $t1
	slli.d	$t1, $t1, 32
	srai.d	$t1, $t1, 31
	stx.h	$t0, $a3, $t1
	ld.h	$t1, $a6, 0
	addi.d	$t0, $t2, 1
	addi.d	$a7, $a7, 2
	blt	$t2, $t1, .LBB2_18
	b	.LBB2_32
.LBB2_19:
	ori	$a3, $zero, 2
	blt	$a7, $a3, .LBB2_32
# %bb.20:                               # %.lr.ph81.preheader
	ori	$t0, $zero, 9
	ori	$a3, $zero, 1
	bgeu	$a7, $t0, .LBB2_25
# %bb.21:
	move	$t2, $a7
	b	.LBB2_30
.LBB2_22:                               # %vector.ph
	addi.d	$t1, $t3, -1
	move	$t2, $t1
	bstrins.d	$t2, $zero, 2, 0
	add.d	$a3, $t2, $a3
	pcalau12i	$t0, %pc_hi20(.LCPI2_0)
	vld	$vr0, $t0, %pc_lo12(.LCPI2_0)
	sub.d	$t0, $t3, $t2
	slli.d	$t3, $t3, 1
	addi.d	$t3, $t3, -16
	move	$t4, $t2
	.p2align	4, , 16
.LBB2_23:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vldx	$vr1, $a6, $t3
	vori.b	$vr2, $vr0, 0
	vshuf.h	$vr2, $vr0, $vr1
	vst	$vr2, $a7, 0
	addi.d	$a7, $a7, 16
	addi.d	$t4, $t4, -8
	addi.d	$t3, $t3, -16
	bnez	$t4, .LBB2_23
# %bb.24:                               # %middle.block
	beq	$t1, $t2, .LBB2_32
	b	.LBB2_7
.LBB2_25:                               # %vector.memcheck128
	addi.d	$t0, $a0, 2
	alsl.d	$t1, $a7, $a6, 1
	addi.d	$t1, $t1, 2
	bgeu	$t0, $t1, .LBB2_27
# %bb.26:                               # %vector.memcheck128
	alsl.d	$t1, $a7, $a0, 1
	addi.d	$t3, $a6, 4
	move	$t2, $a7
	bltu	$t3, $t1, .LBB2_30
.LBB2_27:                               # %vector.ph138
	addi.d	$t1, $a7, -1
	slli.d	$t4, $a7, 1
	move	$t3, $t1
	bstrins.d	$t3, $zero, 2, 0
	ori	$t2, $zero, 1
	move	$a3, $t1
	pcalau12i	$t5, %pc_hi20(.LCPI2_0)
	vld	$vr0, $t5, %pc_lo12(.LCPI2_0)
	bstrins.d	$a3, $t2, 2, 0
	sub.d	$t2, $a7, $t3
	addi.d	$t4, $t4, -14
	move	$t5, $t3
	.p2align	4, , 16
.LBB2_28:                               # %vector.body141
                                        # =>This Inner Loop Header: Depth=1
	vldx	$vr1, $a6, $t4
	vori.b	$vr2, $vr0, 0
	vshuf.h	$vr2, $vr0, $vr1
	vst	$vr2, $t0, 0
	addi.d	$t0, $t0, 16
	addi.d	$t5, $t5, -8
	addi.d	$t4, $t4, -16
	bnez	$t5, .LBB2_28
# %bb.29:                               # %middle.block148
	beq	$t1, $t3, .LBB2_32
.LBB2_30:                               # %.lr.ph81.preheader153
	alsl.d	$a0, $a3, $a0, 1
	sub.d	$a3, $a7, $a3
	slli.d	$a7, $t2, 1
	.p2align	4, , 16
.LBB2_31:                               # %.lr.ph81
                                        # =>This Inner Loop Header: Depth=1
	ldx.h	$t0, $a6, $a7
	st.h	$t0, $a0, 0
	addi.d	$a0, $a0, 2
	addi.d	$a3, $a3, -1
	addi.d	$a7, $a7, -2
	bnez	$a3, .LBB2_31
.LBB2_32:                               # %.loopexit60
	ldx.d	$a3, $a1, $a5
	ld.h	$a5, $a6, 0
	ld.h	$a6, $a3, 0
	ld.d	$a0, $a1, 0
	add.d	$a5, $a5, $a6
	addi.d	$a5, $a5, -1
	st.h	$a5, $a3, 0
	.p2align	4, , 16
.LBB2_33:                               # %.loopexit60
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_34 Depth 2
                                        #     Child Loop BB2_37 Depth 2
	ld.hu	$a3, $a0, 0
.LBB2_34:                               # %.loopexit60
                                        #   Parent Loop BB2_33 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ext.w.h	$a5, $a3
	bge	$a2, $a5, .LBB2_38
# %bb.35:                               # %.preheader
                                        #   in Loop: Header=BB2_34 Depth=2
	move	$a6, $a2
	addi.d	$a2, $a2, 1
	slli.d	$a5, $a2, 3
	ldx.d	$a5, $a1, $a5
	ld.h	$a7, $a5, 0
	bltz	$a7, .LBB2_34
# %bb.36:                               # %.lr.ph84
                                        #   in Loop: Header=BB2_33 Depth=1
	slli.d	$a3, $a6, 3
	ldx.d	$a3, $a1, $a3
	move	$a6, $zero
	move	$a7, $a4
	.p2align	4, , 16
.LBB2_37:                               #   Parent Loop BB2_33 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.h	$t0, $a5, $a6
	stx.h	$t0, $a3, $a6
	ld.h	$t0, $a5, 0
	addi.d	$a7, $a7, 1
	addi.d	$a6, $a6, 2
	blt	$a7, $t0, .LBB2_37
	b	.LBB2_33
.LBB2_38:                               # %._crit_edge89
	addi.d	$a1, $a3, -1
	st.h	$a1, $a0, 0
	ret
.Lfunc_end2:
	.size	joinSeg, .Lfunc_end2-joinSeg
                                        # -- End function
	.type	netRoot,@object                 # @netRoot
	.comm	netRoot,8,8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym netRoot
