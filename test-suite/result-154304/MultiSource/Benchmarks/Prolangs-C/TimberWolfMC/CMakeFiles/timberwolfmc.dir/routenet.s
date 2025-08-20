	.file	"routenet.c"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function routenet
.LCPI0_0:
	.dword	0x4054000000000000              # double 80
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI0_1:
	.word	5                               # 0x5
	.word	6                               # 0x6
	.word	7                               # 0x7
	.word	8                               # 0x8
.LCPI0_2:
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	4                               # 0x4
.LCPI0_3:
	.word	4                               # 0x4
	.word	5                               # 0x5
	.word	6                               # 0x6
	.word	7                               # 0x7
.LCPI0_4:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.text
	.globl	routenet
	.p2align	5
	.type	routenet,@function
routenet:                               # @routenet
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
	fst.d	$fs0, $sp, 40                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 32                   # 8-byte Folded Spill
	ori	$a2, $zero, 3
	move	$fp, $a1
	move	$s0, $a0
	blt	$a0, $a2, .LBB0_7
# %bb.1:
	pcalau12i	$a0, %got_pc_hi20(MAXPATHS)
	ld.d	$s1, $a0, %got_pc_lo12(MAXPATHS)
	ld.w	$a0, $s1, 0
	addi.w	$a1, $s0, -1
	div.w	$a0, $a0, $a1
	st.w	$a0, $sp, 28
	ori	$s2, $zero, 1
	slt	$a2, $s2, $a0
	maskeqz	$a0, $a0, $a2
	masknez	$a2, $s2, $a2
	or	$a0, $a0, $a2
	pcalau12i	$a2, %pc_hi20(.LCPI0_0)
	fld.d	$fs1, $a2, %pc_lo12(.LCPI0_0)
	pcalau12i	$a2, %got_pc_hi20(Mpaths)
	ld.d	$s3, $a2, %got_pc_lo12(Mpaths)
	bstrpick.d	$a1, $a1, 31, 0
	movgr2fr.d	$fa0, $a1
	ffint.d.l	$fs0, $fa0
	.p2align	4, , 16
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	st.w	$a0, $s3, 0
	bstrpick.d	$a0, $a0, 31, 0
	movgr2fr.d	$fa0, $a0
	ffint.d.l	$fa0, $fa0
	fmov.d	$fa1, $fs0
	pcaddu18i	$ra, %call36(pow)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s1, 0
	movgr2fr.w	$fa1, $a0
	ffint.d.w	$fa1, $fa1
	ld.w	$a1, $s3, 0
	fmul.d	$fa1, $fa1, $fs1
	fcmp.cule.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB0_4
# %bb.3:                                #   in Loop: Header=BB0_2 Depth=1
	addi.w	$a0, $a1, -1
	blt	$s2, $a1, .LBB0_2
.LBB0_4:                                # %.loopexit121
	ori	$a0, $zero, 20
	move	$s2, $zero
	bltu	$s0, $a0, .LBB0_9
# %bb.5:                                # %.loopexit121
	ori	$a0, $zero, 1
	bne	$a1, $a0, .LBB0_9
# %bb.6:                                # %.loopexit121
	pcalau12i	$a0, %got_pc_hi20(bareMinimum)
	ld.d	$a0, $a0, %got_pc_lo12(bareMinimum)
	ld.w	$a1, $a0, 0
	beqz	$a1, .LBB0_8
	b	.LBB0_9
.LBB0_7:
	pcalau12i	$a0, %got_pc_hi20(Mpaths)
	ld.d	$a0, $a0, %got_pc_lo12(Mpaths)
.LBB0_8:                                # %.sink.split
	ori	$a1, $zero, 2
	slt	$s2, $a1, $s0
	ori	$a1, $zero, 1
	st.w	$a1, $a0, 0
.LBB0_9:
	pcalau12i	$a0, %got_pc_hi20(MAXPATHS)
	ld.d	$s4, $a0, %got_pc_lo12(MAXPATHS)
	pcalau12i	$s3, %pc_hi20(indexRoot)
	ld.w	$a0, $s4, 0
	st.d	$zero, $s3, %pc_lo12(indexRoot)
	pcalau12i	$a1, %pc_hi20(treeSize)
	ori	$s5, $zero, 1
	st.w	$zero, $a1, %pc_lo12(treeSize)
	blt	$a0, $s5, .LBB0_12
# %bb.10:                               # %.lr.ph.preheader
	move	$s0, $zero
	pcalau12i	$a0, %pc_hi20(indexRoot)
	addi.d	$s1, $a0, %pc_lo12(indexRoot)
	.p2align	4, , 16
.LBB0_11:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	addi.w	$s0, $s0, 1
	move	$a0, $s1
	move	$a1, $s0
	move	$a2, $zero
	pcaddu18i	$ra, %call36(tinsert)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s4, 0
	slli.w	$a0, $a0, 1
	blt	$s0, $a0, .LBB0_11
.LBB0_12:                               # %.preheader120
	pcalau12i	$a0, %got_pc_hi20(numnodes)
	ld.d	$a0, $a0, %got_pc_lo12(numnodes)
	ld.w	$a0, $a0, 0
	blt	$fp, $s5, .LBB0_27
# %bb.13:                               # %iter.check
	pcalau12i	$a1, %got_pc_hi20(sourceList)
	ld.d	$a1, $a1, %got_pc_lo12(sourceList)
	pcalau12i	$a2, %got_pc_hi20(delSourceList)
	ld.d	$a2, $a2, %got_pc_lo12(delSourceList)
	ld.d	$a1, $a1, 0
	ld.d	$a2, $a2, 0
	ori	$a4, $zero, 8
	ori	$a3, $zero, 1
	bltu	$fp, $a4, .LBB0_25
# %bb.14:                               # %iter.check
	sub.d	$a4, $a2, $a1
	ori	$a5, $zero, 31
	bgeu	$a5, $a4, .LBB0_25
# %bb.15:                               # %vector.main.loop.iter.check
	ori	$a3, $zero, 1
	ori	$a4, $zero, 16
	vreplgr2vr.w	$vr0, $a0
	vrepli.b	$vr1, 0
	bgeu	$fp, $a4, .LBB0_20
# %bb.16:
	move	$a4, $zero
	ori	$a5, $zero, 1
.LBB0_17:                               # %vec.epilog.ph
	bstrpick.d	$a6, $fp, 30, 3
	slli.d	$a6, $a6, 3
	pcalau12i	$a7, %pc_hi20(.LCPI0_3)
	vld	$vr2, $a7, %pc_lo12(.LCPI0_3)
	pcalau12i	$a7, %pc_hi20(.LCPI0_4)
	vld	$vr3, $a7, %pc_lo12(.LCPI0_4)
	srli.d	$a7, $fp, 3
	bstrins.d	$a3, $a7, 30, 3
	vreplgr2vr.w	$vr4, $a5
	vadd.w	$vr2, $vr4, $vr2
	vadd.w	$vr3, $vr4, $vr3
	slli.d	$a5, $a4, 1
	addi.d	$a7, $a5, 2
	add.d	$a5, $a1, $a7
	add.d	$a7, $a2, $a7
	sub.d	$a4, $a4, $a6
	.p2align	4, , 16
.LBB0_18:                               # %vec.epilog.vector.body
                                        # =>This Inner Loop Header: Depth=1
	vadd.w	$vr4, $vr0, $vr3
	vadd.w	$vr5, $vr0, $vr2
	vpickev.h	$vr4, $vr5, $vr4
	vst	$vr4, $a5, 0
	vst	$vr1, $a7, 0
	vaddi.wu	$vr3, $vr3, 8
	vaddi.wu	$vr2, $vr2, 8
	addi.d	$a5, $a5, 16
	addi.d	$a4, $a4, 8
	addi.d	$a7, $a7, 16
	bnez	$a4, .LBB0_18
# %bb.19:                               # %vec.epilog.middle.block
	bne	$a6, $fp, .LBB0_25
	b	.LBB0_27
.LBB0_20:                               # %vector.ph
	bstrpick.d	$a4, $fp, 30, 4
	slli.d	$a4, $a4, 4
	srli.d	$a6, $fp, 4
	ori	$a5, $zero, 1
	bstrins.d	$a5, $a6, 30, 4
	pcalau12i	$a6, %pc_hi20(.LCPI0_1)
	vld	$vr2, $a6, %pc_lo12(.LCPI0_1)
	pcalau12i	$a6, %pc_hi20(.LCPI0_2)
	vld	$vr3, $a6, %pc_lo12(.LCPI0_2)
	vaddi.wu	$vr4, $vr0, 8
	addi.d	$a6, $a1, 18
	addi.d	$a7, $a2, 18
	move	$t0, $a4
	.p2align	4, , 16
.LBB0_21:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vadd.w	$vr5, $vr0, $vr3
	vadd.w	$vr6, $vr0, $vr2
	vadd.w	$vr7, $vr3, $vr4
	vadd.w	$vr8, $vr2, $vr4
	vpickev.h	$vr5, $vr6, $vr5
	vpickev.h	$vr6, $vr8, $vr7
	vst	$vr5, $a6, -16
	vst	$vr6, $a6, 0
	vst	$vr1, $a7, -16
	vst	$vr1, $a7, 0
	vaddi.wu	$vr3, $vr3, 16
	vaddi.wu	$vr2, $vr2, 16
	addi.d	$a6, $a6, 32
	addi.d	$t0, $t0, -16
	addi.d	$a7, $a7, 32
	bnez	$t0, .LBB0_21
# %bb.22:                               # %middle.block
	beq	$a4, $fp, .LBB0_27
# %bb.23:                               # %vec.epilog.iter.check
	andi	$a6, $fp, 8
	bnez	$a6, .LBB0_17
# %bb.24:
	addi.d	$a3, $a4, 1
.LBB0_25:                               # %vec.epilog.scalar.ph.preheader
	addi.d	$a4, $fp, 1
	bstrpick.d	$a5, $a4, 31, 0
	add.d	$a4, $a0, $a3
	alsl.d	$a2, $a3, $a2, 1
	alsl.d	$a1, $a3, $a1, 1
	sub.d	$a3, $a5, $a3
	.p2align	4, , 16
.LBB0_26:                               # %vec.epilog.scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	st.h	$a4, $a1, 0
	st.h	$zero, $a2, 0
	addi.d	$a4, $a4, 1
	addi.d	$a2, $a2, 2
	addi.d	$a3, $a3, -1
	addi.d	$a1, $a1, 2
	bnez	$a3, .LBB0_26
.LBB0_27:                               # %._crit_edge
	pcalau12i	$a1, %got_pc_hi20(sourcePtr)
	ld.d	$a2, $a1, %got_pc_lo12(sourcePtr)
	add.w	$a1, $a0, $fp
	ori	$a4, $zero, 1
	st.w	$fp, $a2, 0
	blt	$a1, $a4, .LBB0_42
# %bb.28:                               # %iter.check273
	pcalau12i	$a2, %got_pc_hi20(targetList)
	ld.d	$a2, $a2, %got_pc_lo12(targetList)
	pcalau12i	$a3, %got_pc_hi20(addTargetList)
	ld.d	$a3, $a3, %got_pc_lo12(addTargetList)
	ld.d	$a2, $a2, 0
	ld.d	$a3, $a3, 0
	ori	$a5, $zero, 8
	bltu	$a1, $a5, .LBB0_40
# %bb.29:                               # %iter.check273
	sub.d	$a5, $a3, $a2
	ori	$a6, $zero, 32
	bltu	$a5, $a6, .LBB0_40
# %bb.30:                               # %vector.main.loop.iter.check275
	ori	$a4, $zero, 16
	bgeu	$a1, $a4, .LBB0_35
# %bb.31:
	move	$a5, $zero
.LBB0_32:                               # %vec.epilog.ph286
	bstrpick.d	$a4, $a1, 30, 3
	slli.d	$a6, $a4, 3
	srli.d	$a7, $a1, 3
	ori	$a4, $zero, 1
	bstrins.d	$a4, $a7, 30, 3
	slli.d	$a7, $a5, 1
	addi.d	$t0, $a7, 2
	add.d	$a7, $a2, $t0
	add.d	$t0, $a3, $t0
	sub.d	$a5, $a5, $a6
	vrepli.b	$vr0, 0
	.p2align	4, , 16
.LBB0_33:                               # %vec.epilog.vector.body292
                                        # =>This Inner Loop Header: Depth=1
	vst	$vr0, $a7, 0
	vst	$vr0, $t0, 0
	addi.d	$a7, $a7, 16
	addi.d	$a5, $a5, 8
	addi.d	$t0, $t0, 16
	bnez	$a5, .LBB0_33
# %bb.34:                               # %vec.epilog.middle.block296
	bne	$a6, $a1, .LBB0_40
	b	.LBB0_42
.LBB0_35:                               # %vector.ph276
	bstrpick.d	$a4, $a1, 30, 4
	slli.d	$a5, $a4, 4
	addi.d	$a4, $a2, 18
	addi.d	$a6, $a3, 18
	vrepli.b	$vr0, 0
	move	$a7, $a5
	.p2align	4, , 16
.LBB0_36:                               # %vector.body279
                                        # =>This Inner Loop Header: Depth=1
	vst	$vr0, $a4, -16
	vst	$vr0, $a4, 0
	vst	$vr0, $a6, -16
	vst	$vr0, $a6, 0
	addi.d	$a4, $a4, 32
	addi.d	$a7, $a7, -16
	addi.d	$a6, $a6, 32
	bnez	$a7, .LBB0_36
# %bb.37:                               # %middle.block282
	beq	$a5, $a1, .LBB0_42
# %bb.38:                               # %vec.epilog.iter.check287
	andi	$a4, $a1, 8
	bnez	$a4, .LBB0_32
# %bb.39:
	addi.d	$a4, $a5, 1
.LBB0_40:                               # %vec.epilog.scalar.ph285.preheader
	addi.d	$a5, $a1, 1
	bstrpick.d	$a5, $a5, 31, 0
	alsl.d	$a3, $a4, $a3, 1
	alsl.d	$a2, $a4, $a2, 1
	sub.d	$a4, $a5, $a4
	.p2align	4, , 16
.LBB0_41:                               # %vec.epilog.scalar.ph285
                                        # =>This Inner Loop Header: Depth=1
	st.h	$zero, $a2, 0
	st.h	$zero, $a3, 0
	addi.d	$a3, $a3, 2
	addi.d	$a4, $a4, -1
	addi.d	$a2, $a2, 2
	bnez	$a4, .LBB0_41
.LBB0_42:                               # %._crit_edge136
	pcalau12i	$a2, %got_pc_hi20(targetPtr)
	ld.d	$a2, $a2, %got_pc_lo12(targetPtr)
	pcalau12i	$a3, %got_pc_hi20(segPtr)
	pcalau12i	$a4, %got_pc_hi20(pnodeArray)
	ld.d	$a4, $a4, %got_pc_lo12(pnodeArray)
	ld.d	$a3, $a3, %got_pc_lo12(segPtr)
	st.w	$zero, $a2, 0
	ld.d	$a2, $a4, 0
	st.w	$zero, $a3, 0
	addi.w	$a3, $a0, 1
	st.w	$a3, $sp, 28
                                        # implicit-def: $r8
	bge	$a0, $a1, .LBB0_56
# %bb.43:                               # %.lr.ph158
	move	$a5, $zero
	slt	$a4, $a1, $a3
	masknez	$a6, $a1, $a4
	maskeqz	$a4, $a3, $a4
	or	$a6, $a4, $a6
	addi.d	$a7, $a3, -1
	ori	$a4, $zero, 24
	mul.d	$t0, $a3, $a4
	mul.d	$a4, $a0, $a4
	sub.d	$a4, $t0, $a4
	add.d	$t0, $a2, $a4
	slli.d	$a4, $a3, 3
	alsl.d	$a4, $a3, $a4, 2
	addi.d	$t1, $a4, 4
	addi.d	$t2, $a0, 2
	lu12i.w	$a4, 244140
	ori	$t4, $a4, 2560
	ori	$t3, $zero, 1
	move	$t6, $a3
                                        # implicit-def: $r8
	b	.LBB0_45
	.p2align	4, , 16
.LBB0_44:                               # %.loopexit119
                                        #   in Loop: Header=BB0_45 Depth=1
	addi.w	$t6, $t5, 1
	st.w	$t6, $sp, 28
	addi.w	$a5, $a5, 1
	beq	$t5, $a6, .LBB0_56
.LBB0_45:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_49 Depth 2
	move	$t5, $t6
	sub.w	$t6, $t6, $a0
	slli.d	$t7, $t6, 4
	alsl.d	$t7, $t6, $t7, 3
	add.d	$t7, $a2, $t7
	ld.d	$t8, $t7, 8
	st.w	$a3, $sp, 24
	blt	$fp, $t3, .LBB0_44
# %bb.46:                               # %.lr.ph147
                                        #   in Loop: Header=BB0_45 Depth=1
	move	$s1, $zero
	add.d	$t8, $t8, $t1
	move	$s0, $t0
	move	$s4, $a7
	b	.LBB0_49
	.p2align	4, , 16
.LBB0_47:                               #   in Loop: Header=BB0_49 Depth=2
	ld.w	$s6, $t8, 0
	slt	$s7, $s6, $t4
	masknez	$t4, $t4, $s7
	maskeqz	$s6, $s6, $s7
	or	$t4, $s6, $t4
	masknez	$a4, $a4, $s7
	maskeqz	$s6, $t5, $s7
	or	$a4, $s6, $a4
.LBB0_48:                               #   in Loop: Header=BB0_49 Depth=2
	add.d	$s5, $t2, $s5
	st.w	$s5, $sp, 24
	addi.d	$s4, $s4, 1
	addi.d	$s0, $s0, 24
	addi.d	$t8, $t8, 12
	bge	$s4, $a1, .LBB0_44
.LBB0_49:                               #   Parent Loop BB0_45 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$s5, $s1
	addi.w	$s1, $s1, 1
	beq	$a5, $s5, .LBB0_48
# %bb.50:                               #   in Loop: Header=BB0_49 Depth=2
	ld.w	$s7, $t7, 0
	ld.w	$s6, $s0, 0
	beqz	$s7, .LBB0_53
# %bb.51:                               #   in Loop: Header=BB0_49 Depth=2
	beqz	$s6, .LBB0_55
# %bb.52:                               #   in Loop: Header=BB0_49 Depth=2
	bne	$s7, $s6, .LBB0_47
	b	.LBB0_48
.LBB0_53:                               #   in Loop: Header=BB0_49 Depth=2
	beqz	$s6, .LBB0_47
# %bb.54:                               #   in Loop: Header=BB0_49 Depth=2
	beq	$s6, $t6, .LBB0_48
	b	.LBB0_47
.LBB0_55:                               #   in Loop: Header=BB0_49 Depth=2
	bne	$s1, $s7, .LBB0_47
	b	.LBB0_48
.LBB0_56:                               # %._crit_edge159
	pcalau12i	$a1, %got_pc_hi20(pathLength)
	ld.d	$a1, $a1, %got_pc_lo12(pathLength)
	st.w	$zero, $a1, 0
	pcalau12i	$a1, %got_pc_hi20(delSourceList)
	ld.d	$a1, $a1, %got_pc_lo12(delSourceList)
	pcalau12i	$a3, %got_pc_hi20(addTargetList)
	ld.d	$fp, $a3, %got_pc_lo12(addTargetList)
	pcalau12i	$a3, %pc_hi20(pathIndex)
	st.w	$zero, $a3, %pc_lo12(pathIndex)
	ld.d	$a3, $a1, 0
	ld.d	$a1, $fp, 0
	sub.w	$a5, $a4, $a0
	slli.d	$a6, $a5, 4
	alsl.d	$a5, $a5, $a6, 3
	ldx.w	$a6, $a2, $a5
	st.h	$a4, $a3, 2
	st.h	$a4, $a1, 2
	beqz	$a6, .LBB0_63
# %bb.57:
	slli.d	$a5, $a6, 4
	alsl.d	$a5, $a6, $a5, 3
	add.d	$a2, $a2, $a5
	ld.d	$a5, $a2, 16
	add.d	$a2, $a6, $a0
	st.h	$a2, $a3, 4
	st.h	$a2, $a1, 4
	ori	$a2, $zero, 1
	beqz	$a5, .LBB0_67
# %bb.58:                               # %.lr.ph165.preheader
	addi.w	$a4, $a4, 0
	.p2align	4, , 16
.LBB0_59:                               # =>This Inner Loop Header: Depth=1
	ld.w	$a6, $a5, 0
	add.w	$a7, $a6, $a0
	bne	$a7, $a4, .LBB0_61
# %bb.60:                               #   in Loop: Header=BB0_59 Depth=1
	ld.d	$a5, $a5, 8
	bnez	$a5, .LBB0_59
	b	.LBB0_67
.LBB0_61:                               # %.outer
                                        #   in Loop: Header=BB0_59 Depth=1
	addi.d	$a6, $a2, 1
	ld.d	$a5, $a5, 8
	slli.d	$a2, $a2, 1
	addi.d	$a2, $a2, 4
	stx.h	$a7, $a3, $a2
	stx.h	$a7, $a1, $a2
	move	$a2, $a6
	bnez	$a5, .LBB0_59
# %bb.62:                               # %.loopexit117.loopexit204
	move	$a2, $a6
	b	.LBB0_67
.LBB0_63:
	add.d	$a2, $a2, $a5
	ld.d	$a4, $a2, 16
	beqz	$a4, .LBB0_66
# %bb.64:                               # %.lr.ph178.preheader
	move	$a2, $zero
	addi.d	$a5, $a1, 4
	addi.d	$a3, $a3, 4
	.p2align	4, , 16
.LBB0_65:                               # %.lr.ph178
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a6, $a4, 0
	add.d	$a6, $a6, $a0
	st.h	$a6, $a3, 0
	ld.d	$a4, $a4, 8
	st.h	$a6, $a5, 0
	addi.d	$a5, $a5, 2
	addi.d	$a3, $a3, 2
	addi.d	$a2, $a2, 1
	bnez	$a4, .LBB0_65
	b	.LBB0_67
.LBB0_66:
	move	$a2, $zero
.LBB0_67:                               # %.lr.ph189
	pcalau12i	$a0, %got_pc_hi20(gnodeArray)
	ld.d	$s1, $a0, %got_pc_lo12(gnodeArray)
	addi.w	$a0, $a2, 1
	addi.w	$a3, $a2, 0
	ld.d	$a2, $s1, 0
	srai.d	$a4, $a3, 63
	andn	$a3, $a3, $a4
	addi.d	$s0, $a3, 2
	ori	$a3, $zero, 1
	ori	$a4, $zero, 1
	b	.LBB0_69
	.p2align	4, , 16
.LBB0_68:                               # %._crit_edge185
                                        #   in Loop: Header=BB0_69 Depth=1
	addi.d	$a4, $a4, 1
	beq	$a4, $s0, .LBB0_73
.LBB0_69:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_70 Depth 2
                                        #       Child Loop BB0_71 Depth 3
	slli.d	$a5, $a4, 1
	ldx.h	$a5, $a1, $a5
	slli.d	$a6, $a5, 3
	ldx.d	$a6, $a2, $a6
	beqz	$a6, .LBB0_68
	.p2align	4, , 16
.LBB0_70:                               # %.lr.ph184
                                        #   Parent Loop BB0_69 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_71 Depth 3
	ld.w	$a7, $a6, 0
	alsl.d	$t0, $a7, $a2, 3
	.p2align	4, , 16
.LBB0_71:                               #   Parent Loop BB0_69 Depth=1
                                        #     Parent Loop BB0_70 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a7, $t0, 0
	ld.w	$t1, $a7, 0
	addi.d	$t0, $a7, 32
	bne	$t1, $a5, .LBB0_71
# %bb.72:                               #   in Loop: Header=BB0_70 Depth=2
	ld.d	$a6, $a6, 32
	st.w	$a3, $a7, 24
	bnez	$a6, .LBB0_70
	b	.LBB0_68
.LBB0_73:                               # %.lr.ph201
	move	$a1, $zero
	move	$a2, $zero
	move	$a3, $a0
	pcaddu18i	$ra, %call36(recursePath)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	ld.d	$a1, $s1, 0
	ori	$a2, $zero, 1
	b	.LBB0_75
	.p2align	4, , 16
.LBB0_74:                               # %._crit_edge197
                                        #   in Loop: Header=BB0_75 Depth=1
	addi.d	$a2, $a2, 1
	st.w	$a2, $sp, 28
	beq	$a2, $s0, .LBB0_79
.LBB0_75:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_76 Depth 2
                                        #       Child Loop BB0_77 Depth 3
	slli.d	$a3, $a2, 1
	ldx.h	$a3, $a0, $a3
	slli.d	$a4, $a3, 3
	ldx.d	$a4, $a1, $a4
	beqz	$a4, .LBB0_74
	.p2align	4, , 16
.LBB0_76:                               # %.lr.ph196
                                        #   Parent Loop BB0_75 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_77 Depth 3
	ld.w	$a5, $a4, 0
	alsl.d	$a6, $a5, $a1, 3
	.p2align	4, , 16
.LBB0_77:                               #   Parent Loop BB0_75 Depth=1
                                        #     Parent Loop BB0_76 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a5, $a6, 0
	ld.w	$a7, $a5, 0
	addi.d	$a6, $a5, 32
	bne	$a7, $a3, .LBB0_77
# %bb.78:                               #   in Loop: Header=BB0_76 Depth=2
	ld.d	$a4, $a4, 32
	st.w	$zero, $a5, 24
	bnez	$a4, .LBB0_76
	b	.LBB0_74
.LBB0_79:                               # %._crit_edge202
	ld.d	$a0, $s3, %pc_lo12(indexRoot)
	beqz	$a0, .LBB0_82
# %bb.80:                               # %.preheader.preheader
	pcalau12i	$a0, %pc_hi20(indexRoot)
	addi.d	$fp, $a0, %pc_lo12(indexRoot)
	.p2align	4, , 16
.LBB0_81:                               # %.preheader
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$a1, $sp, 16
	addi.d	$a2, $sp, 28
	addi.d	$a3, $sp, 24
	move	$a0, $fp
	pcaddu18i	$ra, %call36(tpop)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 16
	bnez	$a0, .LBB0_81
.LBB0_82:                               # %.loopexit
	beqz	$s2, .LBB0_84
# %bb.83:
	pcalau12i	$a0, %got_pc_hi20(bareMinimum)
	ld.d	$a0, $a0, %got_pc_lo12(bareMinimum)
	st.w	$zero, $a0, 0
.LBB0_84:
	fld.d	$fs1, $sp, 32                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 40                   # 8-byte Folded Reload
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
	.size	routenet, .Lfunc_end0-routenet
                                        # -- End function
	.globl	recursePath                     # -- Begin function recursePath
	.p2align	5
	.type	recursePath,@function
recursePath:                            # @recursePath
# %bb.0:
	addi.d	$sp, $sp, -336
	st.d	$ra, $sp, 328                   # 8-byte Folded Spill
	st.d	$fp, $sp, 320                   # 8-byte Folded Spill
	st.d	$s0, $sp, 312                   # 8-byte Folded Spill
	st.d	$s1, $sp, 304                   # 8-byte Folded Spill
	st.d	$s2, $sp, 296                   # 8-byte Folded Spill
	st.d	$s3, $sp, 288                   # 8-byte Folded Spill
	st.d	$s4, $sp, 280                   # 8-byte Folded Spill
	st.d	$s5, $sp, 272                   # 8-byte Folded Spill
	st.d	$s6, $sp, 264                   # 8-byte Folded Spill
	st.d	$s7, $sp, 256                   # 8-byte Folded Spill
	st.d	$s8, $sp, 248                   # 8-byte Folded Spill
	pcalau12i	$a4, %got_pc_hi20(sourcePtr)
	ld.d	$a4, $a4, %got_pc_lo12(sourcePtr)
	ld.w	$s0, $a4, 0
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	bne	$s0, $a0, .LBB1_9
# %bb.1:
	pcalau12i	$a0, %pc_hi20(indexRoot)
	addi.d	$a0, $a0, %pc_lo12(indexRoot)
	pcalau12i	$a1, %pc_hi20(pathIndex)
	addi.d	$fp, $a1, %pc_lo12(pathIndex)
	addi.d	$a1, $sp, 224
	addi.d	$a3, $sp, 240
	move	$a2, $fp
	pcaddu18i	$ra, %call36(tpop)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(savePaths)
	ld.d	$a0, $a0, %got_pc_lo12(savePaths)
	pcalau12i	$a1, %got_pc_hi20(segPtr)
	ld.d	$a1, $a1, %got_pc_lo12(segPtr)
	ld.w	$a2, $fp, 0
	ld.d	$a3, $a0, 0
	ld.w	$a0, $a1, 0
	slli.d	$a1, $a2, 3
	ldx.d	$a1, $a3, $a1
	ori	$a4, $zero, 1
	st.h	$a0, $a1, 0
	blt	$a0, $a4, .LBB1_173
# %bb.2:                                # %iter.check
	pcalau12i	$a3, %got_pc_hi20(segList)
	ld.d	$a3, $a3, %got_pc_lo12(segList)
	ld.d	$a3, $a3, 0
	ori	$a5, $zero, 8
	bltu	$a0, $a5, .LBB1_171
# %bb.3:                                # %iter.check
	sub.d	$a5, $a1, $a3
	ori	$a6, $zero, 32
	bltu	$a5, $a6, .LBB1_171
# %bb.4:                                # %vector.main.loop.iter.check
	ori	$a4, $zero, 16
	bgeu	$a0, $a4, .LBB1_166
# %bb.5:
	move	$a5, $zero
.LBB1_6:                                # %vec.epilog.ph
	bstrpick.d	$a4, $a0, 30, 3
	slli.d	$a6, $a4, 3
	srli.d	$a7, $a0, 3
	ori	$a4, $zero, 1
	bstrins.d	$a4, $a7, 30, 3
	slli.d	$a7, $a5, 1
	addi.d	$t0, $a7, 2
	add.d	$a7, $a3, $t0
	add.d	$t0, $a1, $t0
	sub.d	$a5, $a5, $a6
	.p2align	4, , 16
.LBB1_7:                                # %vec.epilog.vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a7, 0
	vst	$vr0, $t0, 0
	addi.d	$a7, $a7, 16
	addi.d	$a5, $a5, 8
	addi.d	$t0, $t0, 16
	bnez	$a5, .LBB1_7
# %bb.8:                                # %vec.epilog.middle.block
	bne	$a6, $a0, .LBB1_171
	b	.LBB1_173
.LBB1_9:
	move	$s5, $a3
	move	$s6, $a2
	move	$s7, $a1
	st.d	$a4, $sp, 168                   # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(EXTRASOURCES)
	ld.d	$s4, $a0, %got_pc_lo12(EXTRASOURCES)
	ld.w	$s2, $s4, 0
	st.d	$zero, $sp, 216
	slli.d	$a0, $s2, 2
	addi.d	$a0, $a0, 4
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(MAXPATHS)
	ld.d	$a1, $a1, %got_pc_lo12(MAXPATHS)
	st.d	$a1, $sp, 40                    # 8-byte Folded Spill
	ld.w	$a1, $a1, 0
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	mul.w	$s1, $a1, $s2
	addi.w	$s3, $s1, 1
	slli.d	$a0, $s3, 3
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ori	$fp, $zero, 1
	st.d	$a0, $sp, 192                   # 8-byte Folded Spill
	blt	$s1, $fp, .LBB1_13
# %bb.10:                               # %.lr.ph.preheader
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	addi.d	$s1, $a0, 8
	bstrpick.d	$a0, $s3, 31, 0
	addi.d	$s3, $a0, -1
	.p2align	4, , 16
.LBB1_11:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ori	$a0, $zero, 1
	ori	$a1, $zero, 84
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s1, 0
	addi.d	$s3, $s3, -1
	addi.d	$s1, $s1, 8
	bnez	$s3, .LBB1_11
# %bb.12:                               # %._crit_edge
	ori	$a0, $zero, 21
	st.w	$a0, $sp, 244
.LBB1_13:
	st.d	$s6, $sp, 64                    # 8-byte Folded Spill
	st.d	$s4, $sp, 160                   # 8-byte Folded Spill
	ld.d	$s1, $sp, 88                    # 8-byte Folded Reload
	addi.w	$a0, $s1, 1
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	slli.d	$a0, $a0, 1
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	addi.d	$s4, $a0, 2
	slli.d	$s6, $s1, 1
	blt	$s1, $fp, .LBB1_15
# %bb.14:                               # %.lr.ph417
	pcalau12i	$a0, %got_pc_hi20(delSourceList)
	ld.d	$a0, $a0, %got_pc_lo12(delSourceList)
	ld.d	$a0, $a0, 0
	addi.d	$a1, $a0, 2
	bstrpick.d	$a0, $s6, 31, 1
	slli.d	$a2, $a0, 1
	move	$a0, $s4
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB1_15:                               # %._crit_edge418
	st.d	$s6, $sp, 8                     # 8-byte Folded Spill
	st.d	$s4, $sp, 16                    # 8-byte Folded Spill
	st.d	$s7, $sp, 56                    # 8-byte Folded Spill
	add.w	$s5, $s5, $s7
	addi.w	$s1, $s5, 1
	slli.d	$a0, $s1, 1
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s6, $a0
	ori	$fp, $zero, 1
	addi.d	$s7, $a0, 2
	slli.d	$s4, $s5, 1
	st.d	$s5, $sp, 72                    # 8-byte Folded Spill
	blt	$s5, $fp, .LBB1_17
# %bb.16:                               # %.lr.ph422
	pcalau12i	$a0, %got_pc_hi20(addTargetList)
	ld.d	$a0, $a0, %got_pc_lo12(addTargetList)
	ld.d	$a0, $a0, 0
	addi.d	$a1, $a0, 2
	bstrpick.d	$a0, $s4, 31, 1
	slli.d	$a2, $a0, 1
	move	$a0, $s7
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB1_17:                               # %.preheader403
	ld.d	$t4, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	blt	$a0, $fp, .LBB1_25
# %bb.18:                               # %.lr.ph429
	pcalau12i	$a0, %got_pc_hi20(sourceList)
	ld.d	$a0, $a0, %got_pc_lo12(sourceList)
	ld.d	$a0, $a0, 0
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	bstrpick.d	$a1, $a1, 31, 0
	addi.d	$a2, $a0, 2
	ori	$a3, $zero, 1
	ori	$a4, $zero, 1
	b	.LBB1_21
	.p2align	4, , 16
.LBB1_19:                               #   in Loop: Header=BB1_21 Depth=1
	slli.d	$a6, $s0, 1
	ldx.h	$a6, $a0, $a6
	addi.w	$s0, $s0, -1
	st.w	$s0, $t4, 0
	st.h	$a6, $a5, 0
.LBB1_20:                               # %.loopexit402
                                        #   in Loop: Header=BB1_21 Depth=1
	addi.d	$a4, $a4, 1
	beq	$a4, $a1, .LBB1_25
.LBB1_21:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_23 Depth 2
	blt	$s0, $a3, .LBB1_20
# %bb.22:                               # %.lr.ph426.preheader
                                        #   in Loop: Header=BB1_21 Depth=1
	slli.d	$a5, $a4, 1
	ldx.hu	$a6, $s3, $a5
	addi.d	$a5, $s0, 1
	bstrpick.d	$a5, $a5, 31, 0
	addi.d	$a7, $a5, -1
	move	$a5, $a2
	.p2align	4, , 16
.LBB1_23:                               # %.lr.ph426
                                        #   Parent Loop BB1_21 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.hu	$t0, $a5, 0
	beq	$t0, $a6, .LBB1_19
# %bb.24:                               #   in Loop: Header=BB1_23 Depth=2
	addi.d	$a7, $a7, -1
	addi.d	$a5, $a5, 2
	bnez	$a7, .LBB1_23
	b	.LBB1_20
.LBB1_25:                               # %.preheader401
	st.d	$s3, $sp, 32                    # 8-byte Folded Spill
	ori	$s3, $zero, 1
	ori	$a0, $zero, 1
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	blt	$a1, $s3, .LBB1_34
# %bb.26:                               # %.lr.ph433
	pcalau12i	$a0, %got_pc_hi20(targetPtr)
	ld.d	$s0, $a0, %got_pc_lo12(targetPtr)
	pcalau12i	$a0, %got_pc_hi20(targetList)
	ld.d	$a0, $a0, %got_pc_lo12(targetList)
	ld.w	$s5, $s0, 0
	ld.d	$a0, $a0, 0
	alsl.d	$a0, $s5, $a0, 1
	addi.d	$a0, $a0, 2
	bstrpick.d	$a1, $s4, 31, 1
	slli.d	$a2, $a1, 1
	move	$a1, $s7
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $s1, 31, 0
	ori	$a2, $zero, 5
	ori	$a1, $zero, 1
	bgeu	$s1, $a2, .LBB1_28
# %bb.27:
	ld.d	$t4, $sp, 168                   # 8-byte Folded Reload
	b	.LBB1_31
.LBB1_28:                               # %vector.ph
	addi.d	$a2, $a0, -1
	move	$a3, $a2
	bstrins.d	$a3, $zero, 1, 0
	ori	$a4, $zero, 1
	move	$a1, $a2
	vrepli.b	$vr0, 0
	bstrins.d	$a1, $a4, 1, 0
	vori.b	$vr1, $vr0, 0
	vinsgr2vr.d	$vr1, $s5, 0
	move	$a4, $a3
	.p2align	4, , 16
.LBB1_29:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vaddi.du	$vr1, $vr1, 1
	addi.d	$a4, $a4, -4
	vaddi.du	$vr0, $vr0, 1
	bnez	$a4, .LBB1_29
# %bb.30:                               # %middle.block
	vadd.d	$vr0, $vr0, $vr1
	vreplvei.d	$vr1, $vr0, 1
	vadd.d	$vr0, $vr0, $vr1
	vpickve2gr.d	$s5, $vr0, 0
	ld.d	$t4, $sp, 168                   # 8-byte Folded Reload
	beq	$a2, $a3, .LBB1_33
.LBB1_31:                               # %scalar.ph.preheader
	sub.d	$a2, $a0, $a1
	add.d	$a0, $s5, $a0
	sub.d	$s5, $a0, $a1
	.p2align	4, , 16
.LBB1_32:                               # %scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$a2, $a2, -1
	bnez	$a2, .LBB1_32
.LBB1_33:                               # %._crit_edge434
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	addi.d	$a0, $a0, 1
	st.w	$s5, $s0, 0
.LBB1_34:
	st.w	$a0, $sp, 244
	lu12i.w	$s0, 244140
	ld.d	$t1, $sp, 160                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 64                    # 8-byte Folded Reload
	ld.d	$t3, $sp, 56                    # 8-byte Folded Reload
	blt	$t2, $s3, .LBB1_48
# %bb.35:                               # %.preheader399
	ori	$a0, $zero, 1
	st.w	$a0, $sp, 244
	blt	$t3, $a0, .LBB1_48
# %bb.36:                               # %.lr.ph448
	pcalau12i	$a1, %got_pc_hi20(gnodeArray)
	ld.d	$a1, $a1, %got_pc_lo12(gnodeArray)
	ld.d	$a1, $a1, 0
	addi.d	$a2, $t3, 1
	bstrpick.d	$a2, $a2, 31, 0
	ori	$a3, $s0, 2560
	b	.LBB1_39
	.p2align	4, , 16
.LBB1_37:                               #   in Loop: Header=BB1_39 Depth=1
	st.w	$a3, $a5, 12
.LBB1_38:                               # %.loopexit397
                                        #   in Loop: Header=BB1_39 Depth=1
	addi.d	$a0, $a0, 1
	st.w	$a0, $sp, 244
	beq	$a0, $a2, .LBB1_48
.LBB1_39:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_42 Depth 2
                                        #     Child Loop BB1_46 Depth 2
	move	$a6, $t2
	beq	$a0, $t3, .LBB1_41
# %bb.40:                               #   in Loop: Header=BB1_39 Depth=1
	alsl.d	$a4, $a0, $s6, 1
	ld.h	$a6, $a4, 2
.LBB1_41:                               #   in Loop: Header=BB1_39 Depth=1
	slli.d	$a4, $a0, 1
	ldx.h	$a4, $s6, $a4
	slli.d	$a5, $a4, 3
	slli.d	$t0, $a6, 3
	ldx.d	$a7, $a1, $a5
	ldx.d	$a5, $a1, $t0
	beqz	$a7, .LBB1_44
	.p2align	4, , 16
.LBB1_42:                               # %.lr.ph441
                                        #   Parent Loop BB1_39 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t0, $a7, 0
	beq	$t0, $a6, .LBB1_45
# %bb.43:                               #   in Loop: Header=BB1_42 Depth=2
	ld.d	$a7, $a7, 32
	bnez	$a7, .LBB1_42
.LBB1_44:                               # %.loopexit398
                                        #   in Loop: Header=BB1_39 Depth=1
	bnez	$a5, .LBB1_46
	b	.LBB1_38
	.p2align	4, , 16
.LBB1_45:                               #   in Loop: Header=BB1_39 Depth=1
	st.w	$a3, $a7, 12
	beqz	$a5, .LBB1_38
	.p2align	4, , 16
.LBB1_46:                               # %.lr.ph445
                                        #   Parent Loop BB1_39 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a6, $a5, 0
	beq	$a6, $a4, .LBB1_37
# %bb.47:                               #   in Loop: Header=BB1_46 Depth=2
	ld.d	$a5, $a5, 32
	bnez	$a5, .LBB1_46
	b	.LBB1_38
.LBB1_48:                               # %.loopexit400
	st.d	$s6, $sp, 24                    # 8-byte Folded Spill
	ori	$ra, $zero, 1
	blt	$s2, $ra, .LBB1_87
# %bb.49:                               # %.lr.ph496.preheader
	move	$s8, $zero
	move	$s7, $zero
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	addi.d	$a0, $a0, 4
	st.d	$a0, $sp, 200                   # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(bareMinimum)
	ld.d	$a0, $a0, %got_pc_lo12(bareMinimum)
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(sourceList)
	ld.d	$a0, $a0, %got_pc_lo12(sourceList)
	st.d	$a0, $sp, 176                   # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(numnodes)
	ld.d	$a0, $a0, %got_pc_lo12(numnodes)
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(pnodeArray)
	ld.d	$a0, $a0, %got_pc_lo12(pnodeArray)
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(targetPtr)
	ld.d	$a0, $a0, %got_pc_lo12(targetPtr)
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(targetList)
	ld.d	$a0, $a0, %got_pc_lo12(targetList)
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(gnodeArray)
	ld.d	$a0, $a0, %got_pc_lo12(gnodeArray)
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	ori	$a0, $s0, 2560
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
                                        # implicit-def: $r29
	ori	$a0, $zero, 1
                                        # implicit-def: $r5
                                        # kill: killed $r5
	b	.LBB1_54
.LBB1_50:                               #   in Loop: Header=BB1_54 Depth=1
	move	$s7, $s4
.LBB1_51:                               #   in Loop: Header=BB1_54 Depth=1
	ld.d	$t1, $sp, 160                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 168                   # 8-byte Folded Reload
.LBB1_52:                               # %.loopexit395
                                        #   in Loop: Header=BB1_54 Depth=1
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
.LBB1_53:                               # %.loopexit395
                                        #   in Loop: Header=BB1_54 Depth=1
	ld.w	$a1, $t1, 0
	addi.w	$a0, $a2, 1
	bge	$a2, $a1, .LBB1_88
.LBB1_54:                               # %.lr.ph496
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_60 Depth 2
                                        #       Child Loop BB1_61 Depth 3
                                        #       Child Loop BB1_66 Depth 3
                                        #         Child Loop BB1_70 Depth 4
                                        #           Child Loop BB1_72 Depth 5
                                        #     Child Loop BB1_81 Depth 2
                                        #       Child Loop BB1_85 Depth 3
	move	$a2, $a0
	ori	$a0, $zero, 2
	bltu	$a2, $a0, .LBB1_56
# %bb.55:                               # %.lr.ph496
                                        #   in Loop: Header=BB1_54 Depth=1
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	bnez	$a0, .LBB1_88
.LBB1_56:                               # %.preheader396
                                        #   in Loop: Header=BB1_54 Depth=1
	ld.w	$a7, $t4, 0
	blt	$a7, $ra, .LBB1_53
# %bb.57:                               # %.preheader393.lr.ph
                                        #   in Loop: Header=BB1_54 Depth=1
	st.d	$a2, $sp, 184                   # 8-byte Folded Spill
	move	$t6, $zero
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	ld.w	$a1, $a1, 0
	ld.d	$a2, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a2, $a2, 0
	ld.d	$a3, $sp, 136                   # 8-byte Folded Reload
	ld.w	$a4, $a3, 0
	ld.d	$a3, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a5, $a3, 0
	ld.d	$a3, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a6, $a3, 0
	addi.d	$a3, $s8, 1
	addi.d	$t0, $a4, 1
	addi.d	$a7, $a7, 1
	bstrpick.d	$a7, $a7, 31, 0
	bstrpick.d	$t1, $a3, 31, 0
	bstrpick.d	$t0, $t0, 31, 0
	addi.d	$t1, $t1, -1
	ori	$t2, $zero, 1
	ld.d	$t3, $sp, 112                   # 8-byte Folded Reload
	b	.LBB1_60
	.p2align	4, , 16
.LBB1_58:                               #   in Loop: Header=BB1_60 Depth=2
	ori	$t6, $zero, 1
.LBB1_59:                               # %.loopexit392
                                        #   in Loop: Header=BB1_60 Depth=2
	addi.d	$t2, $t2, 1
	beq	$t2, $a7, .LBB1_77
.LBB1_60:                               # %.preheader393
                                        #   Parent Loop BB1_54 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_61 Depth 3
                                        #       Child Loop BB1_66 Depth 3
                                        #         Child Loop BB1_70 Depth 4
                                        #           Child Loop BB1_72 Depth 5
	slli.d	$t4, $t2, 1
	ldx.h	$t4, $a0, $t4
	move	$t5, $t1
	ld.d	$t7, $sp, 200                   # 8-byte Folded Reload
	blt	$s8, $ra, .LBB1_63
	.p2align	4, , 16
.LBB1_61:                               # %.lr.ph451
                                        #   Parent Loop BB1_54 Depth=1
                                        #     Parent Loop BB1_60 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$t8, $t7, 0
	beq	$t8, $t4, .LBB1_59
# %bb.62:                               #   in Loop: Header=BB1_61 Depth=3
	addi.d	$t5, $t5, -1
	addi.d	$t7, $t7, 4
	bnez	$t5, .LBB1_61
.LBB1_63:                               # %.critedge
                                        #   in Loop: Header=BB1_60 Depth=2
	sub.w	$t5, $t4, $a1
	slli.d	$t6, $t5, 4
	alsl.d	$t5, $t5, $t6, 3
	add.d	$t5, $a2, $t5
	ld.d	$t5, $t5, 8
	ori	$t6, $zero, 1
	st.w	$t6, $sp, 244
	blt	$a4, $t6, .LBB1_59
# %bb.64:                               # %.lr.ph463.preheader
                                        #   in Loop: Header=BB1_60 Depth=2
	ori	$t6, $zero, 1
	b	.LBB1_66
	.p2align	4, , 16
.LBB1_65:                               # %.critedge594
                                        #   in Loop: Header=BB1_66 Depth=3
	addi.d	$t6, $t6, 1
	st.w	$t6, $sp, 244
	beq	$t6, $t0, .LBB1_58
.LBB1_66:                               # %.lr.ph463
                                        #   Parent Loop BB1_54 Depth=1
                                        #     Parent Loop BB1_60 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB1_70 Depth 4
                                        #           Child Loop BB1_72 Depth 5
	slli.d	$t7, $t6, 1
	ldx.h	$t8, $a5, $t7
	slli.d	$fp, $t8, 3
	alsl.d	$t7, $t8, $fp, 2
	add.d	$s1, $t5, $t7
	ld.w	$t7, $s1, 4
	bge	$t7, $t3, .LBB1_65
# %bb.67:                               #   in Loop: Header=BB1_66 Depth=3
	ldx.d	$fp, $a6, $fp
	beqz	$fp, .LBB1_65
# %bb.68:                               # %.lr.ph455.preheader
                                        #   in Loop: Header=BB1_66 Depth=3
	ld.h	$s4, $s1, 8
	alsl.d	$s5, $s4, $a6, 3
	b	.LBB1_70
	.p2align	4, , 16
.LBB1_69:                               # %.thread
                                        #   in Loop: Header=BB1_70 Depth=4
	ld.d	$fp, $fp, 32
	beqz	$fp, .LBB1_65
.LBB1_70:                               # %.lr.ph455
                                        #   Parent Loop BB1_54 Depth=1
                                        #     Parent Loop BB1_60 Depth=2
                                        #       Parent Loop BB1_66 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB1_72 Depth 5
	ld.w	$s1, $fp, 0
	bne	$s1, $s4, .LBB1_69
# %bb.71:                               # %.preheader759.preheader
                                        #   in Loop: Header=BB1_70 Depth=4
	move	$s2, $s5
	.p2align	4, , 16
.LBB1_72:                               # %.preheader759
                                        #   Parent Loop BB1_54 Depth=1
                                        #     Parent Loop BB1_60 Depth=2
                                        #       Parent Loop BB1_66 Depth=3
                                        #         Parent Loop BB1_70 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	ld.d	$s1, $s2, 0
	ld.w	$s3, $s1, 0
	addi.d	$s2, $s1, 32
	bne	$s3, $t8, .LBB1_72
# %bb.73:                               #   in Loop: Header=BB1_70 Depth=4
	ld.w	$s1, $s1, 12
	ori	$s2, $s0, 2560
	blt	$s1, $s2, .LBB1_75
# %bb.74:                               #   in Loop: Header=BB1_70 Depth=4
	ld.d	$fp, $fp, 32
	bnez	$fp, .LBB1_70
.LBB1_75:                               # %._crit_edge456
                                        #   in Loop: Header=BB1_66 Depth=3
	ori	$t8, $s0, 2559
	blt	$t8, $s1, .LBB1_65
# %bb.76:                               #   in Loop: Header=BB1_66 Depth=3
	st.d	$t6, $sp, 208                   # 8-byte Folded Spill
	move	$s6, $t4
	move	$t3, $t7
	b	.LBB1_65
	.p2align	4, , 16
.LBB1_77:                               # %._crit_edge473
                                        #   in Loop: Header=BB1_54 Depth=1
	beqz	$t6, .LBB1_51
# %bb.78:                               #   in Loop: Header=BB1_54 Depth=1
	addi.w	$s8, $a3, 0
	slli.d	$a0, $s8, 2
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	stx.w	$s6, $a1, $a0
	addi.w	$a0, $s6, 0
	ld.d	$a1, $sp, 208                   # 8-byte Folded Reload
	addi.w	$a1, $a1, 0
	pcaddu18i	$ra, %call36(mshortest)
	jirl	$ra, $ra, 0
	ori	$ra, $zero, 1
	add.w	$s4, $a0, $s7
	blt	$a0, $ra, .LBB1_50
# %bb.79:                               # %.lr.ph488.preheader
                                        #   in Loop: Header=BB1_54 Depth=1
	st.d	$s8, $sp, 80                    # 8-byte Folded Spill
	ori	$s5, $zero, 1
	b	.LBB1_81
	.p2align	4, , 16
.LBB1_80:                               # %._crit_edge481
                                        #   in Loop: Header=BB1_81 Depth=2
	alsl.d	$a0, $a1, $a0, 2
	ld.w	$a1, $a0, -4
	addi.d	$a0, $sp, 216
	move	$a2, $s7
	pcaddu18i	$ra, %call36(tinsert)
	jirl	$ra, $ra, 0
	addi.d	$s5, $s5, 1
	bge	$s7, $s4, .LBB1_86
.LBB1_81:                               # %.lr.ph488
                                        #   Parent Loop BB1_54 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_85 Depth 3
	pcalau12i	$a0, %got_pc_hi20(pathList)
	ld.d	$s3, $a0, %got_pc_lo12(pathList)
	ld.d	$a0, $s3, 0
	slli.d	$s2, $s5, 3
	ldx.d	$fp, $a0, $s2
	ld.w	$a0, $fp, 0
	addi.d	$s7, $s7, 1
	slli.d	$s1, $s7, 3
	ori	$a1, $zero, 20
	blt	$a0, $a1, .LBB1_83
# %bb.82:                               #   in Loop: Header=BB1_81 Depth=2
	ld.d	$s8, $sp, 192                   # 8-byte Folded Reload
	ldx.d	$a0, $s8, $s1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, 0
	ldx.d	$fp, $a0, $s2
	ld.w	$a0, $fp, 0
	slli.d	$a0, $a0, 2
	addi.d	$a0, $a0, 8
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	stx.d	$a0, $s8, $s1
.LBB1_83:                               #   in Loop: Header=BB1_81 Depth=2
	st.w	$zero, $sp, 244
	ld.w	$a2, $fp, 0
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	ldx.d	$a0, $a0, $s1
	addi.w	$a3, $zero, -1
	move	$a1, $zero
	blt	$a2, $a3, .LBB1_80
# %bb.84:                               # %.lr.ph480.preheader
                                        #   in Loop: Header=BB1_81 Depth=2
	move	$a1, $zero
	.p2align	4, , 16
.LBB1_85:                               # %.lr.ph480
                                        #   Parent Loop BB1_54 Depth=1
                                        #     Parent Loop BB1_81 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	slli.d	$a1, $a1, 2
	ldx.w	$a2, $fp, $a1
	stx.w	$a2, $a0, $a1
	ld.w	$a2, $sp, 244
	addi.w	$a1, $a2, 1
	st.w	$a1, $sp, 244
	ld.w	$a3, $fp, 0
	bge	$a3, $a2, .LBB1_85
	b	.LBB1_80
	.p2align	4, , 16
.LBB1_86:                               #   in Loop: Header=BB1_54 Depth=1
	move	$s7, $s4
	ld.d	$t1, $sp, 160                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 168                   # 8-byte Folded Reload
	ori	$ra, $zero, 1
	ld.d	$s8, $sp, 80                    # 8-byte Folded Reload
	b	.LBB1_52
.LBB1_87:
	move	$s7, $zero
.LBB1_88:                               # %._crit_edge497
	pcalau12i	$a0, %got_pc_hi20(Mpaths)
	ld.d	$a0, $a0, %got_pc_lo12(Mpaths)
	ld.w	$a0, $a0, 0
	slt	$a1, $s7, $a0
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s7, $a1
	or	$a0, $a1, $a0
	ori	$s3, $zero, 1
	st.d	$a0, $sp, 208                   # 8-byte Folded Spill
	blt	$a0, $s3, .LBB1_144
# %bb.89:                               # %.lr.ph565.preheader
	pcalau12i	$a0, %got_pc_hi20(addTargetList)
	ld.d	$s4, $a0, %got_pc_lo12(addTargetList)
	pcalau12i	$a0, %got_pc_hi20(numnodes)
	ld.d	$a0, $a0, %got_pc_lo12(numnodes)
	st.d	$a0, $sp, 184                   # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(delSourceList)
	ld.d	$a0, $a0, %got_pc_lo12(delSourceList)
	st.d	$a0, $sp, 176                   # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(pathLength)
	ld.d	$s1, $a0, %got_pc_lo12(pathLength)
	pcalau12i	$a0, %got_pc_hi20(segList)
	ld.d	$a0, $a0, %got_pc_lo12(segList)
	st.d	$a0, $sp, 200                   # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(segPtr)
	ld.d	$s5, $a0, %got_pc_lo12(segPtr)
	ori	$a0, $zero, 1
	b	.LBB1_91
	.p2align	4, , 16
.LBB1_90:                               # %._crit_edge561
                                        #   in Loop: Header=BB1_91 Depth=1
	addi.w	$a0, $fp, 1
	ld.d	$a1, $sp, 208                   # 8-byte Folded Reload
	beq	$fp, $a1, .LBB1_144
.LBB1_91:                               # %.lr.ph565
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_94 Depth 2
                                        #     Child Loop BB1_97 Depth 2
                                        #     Child Loop BB1_100 Depth 2
                                        #     Child Loop BB1_106 Depth 2
                                        #       Child Loop BB1_109 Depth 3
                                        #       Child Loop BB1_117 Depth 3
                                        #         Child Loop BB1_119 Depth 4
                                        #     Child Loop BB1_125 Depth 2
                                        #     Child Loop BB1_128 Depth 2
                                        #     Child Loop BB1_140 Depth 2
                                        #       Child Loop BB1_141 Depth 3
                                        #         Child Loop BB1_142 Depth 4
                                        #     Child Loop BB1_134 Depth 2
                                        #       Child Loop BB1_135 Depth 3
                                        #         Child Loop BB1_136 Depth 4
	move	$fp, $a0
	addi.d	$a0, $sp, 216
	addi.d	$a1, $sp, 224
	addi.d	$a2, $sp, 240
	addi.d	$a3, $sp, 244
	pcaddu18i	$ra, %call36(tpop)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 244
	slli.d	$a0, $a0, 3
	ld.d	$a1, $sp, 192                   # 8-byte Folded Reload
	ldx.d	$a0, $a1, $a0
	ld.w	$s0, $a0, 0
	ori	$a1, $zero, 2
	blt	$s0, $a1, .LBB1_102
# %bb.92:                               # %.lr.ph503
                                        #   in Loop: Header=BB1_91 Depth=1
	ld.d	$a2, $s4, 0
	addi.d	$a1, $s0, -1
	ori	$a3, $zero, 1
	ori	$a4, $zero, 9
	bltu	$s0, $a4, .LBB1_96
# %bb.93:                               # %vector.ph782
                                        #   in Loop: Header=BB1_91 Depth=1
	move	$a4, $a1
	bstrins.d	$a4, $zero, 2, 0
	move	$a3, $a1
	bstrins.d	$a3, $s3, 2, 0
	addi.d	$a5, $a0, 20
	addi.d	$a6, $a2, 10
	move	$a7, $a4
	.p2align	4, , 16
.LBB1_94:                               # %vector.body785
                                        #   Parent Loop BB1_91 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $a5, -16
	vld	$vr1, $a5, 0
	vpickev.h	$vr0, $vr0, $vr0
	vpickev.h	$vr1, $vr1, $vr1
	vpackev.d	$vr0, $vr1, $vr0
	vst	$vr0, $a6, -8
	addi.d	$a5, $a5, 32
	addi.d	$a7, $a7, -8
	addi.d	$a6, $a6, 16
	bnez	$a7, .LBB1_94
# %bb.95:                               # %middle.block791
                                        #   in Loop: Header=BB1_91 Depth=1
	beq	$a1, $a4, .LBB1_98
.LBB1_96:                               # %scalar.ph780.preheader
                                        #   in Loop: Header=BB1_91 Depth=1
	alsl.d	$a2, $a3, $a2, 1
	alsl.d	$a4, $a3, $a0, 2
	sub.d	$a3, $s0, $a3
	.p2align	4, , 16
.LBB1_97:                               # %scalar.ph780
                                        #   Parent Loop BB1_91 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.h	$a5, $a4, 0
	st.h	$a5, $a2, 0
	addi.d	$a2, $a2, 2
	addi.d	$a3, $a3, -1
	addi.d	$a4, $a4, 4
	bnez	$a3, .LBB1_97
.LBB1_98:                               # %.lr.ph508
                                        #   in Loop: Header=BB1_91 Depth=1
	ld.d	$a5, $s4, 0
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	ld.w	$a2, $a2, 0
	ld.d	$a3, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a4, $a3, 0
	move	$a3, $zero
	addi.d	$a5, $a5, 2
	b	.LBB1_100
	.p2align	4, , 16
.LBB1_99:                               #   in Loop: Header=BB1_100 Depth=2
	addi.d	$a1, $a1, -1
	addi.d	$a5, $a5, 2
	beqz	$a1, .LBB1_103
.LBB1_100:                              #   Parent Loop BB1_91 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.h	$a6, $a5, 0
	bge	$a2, $a6, .LBB1_99
# %bb.101:                              #   in Loop: Header=BB1_100 Depth=2
	bstrpick.d	$a6, $a6, 15, 0
	addi.w	$a3, $a3, 1
	slli.d	$a7, $a3, 1
	stx.h	$a6, $a4, $a7
	b	.LBB1_99
	.p2align	4, , 16
.LBB1_102:                              #   in Loop: Header=BB1_91 Depth=1
	move	$a3, $zero
	b	.LBB1_121
	.p2align	4, , 16
.LBB1_103:                              # %.preheader391
                                        #   in Loop: Header=BB1_91 Depth=1
	blt	$a3, $s3, .LBB1_121
# %bb.104:                              # %.lr.ph531
                                        #   in Loop: Header=BB1_91 Depth=1
	pcalau12i	$a1, %got_pc_hi20(pnodeArray)
	ld.d	$a2, $a1, %got_pc_lo12(pnodeArray)
	move	$s7, $zero
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	ld.d	$a2, $a2, 0
	ld.d	$a4, $sp, 184                   # 8-byte Folded Reload
	ld.w	$a4, $a4, 0
	ld.d	$a5, $s4, 0
	addi.w	$a6, $a3, 1
	bstrpick.d	$a7, $a6, 31, 0
	addi.d	$t0, $a1, 2
	ori	$t1, $zero, 1
	b	.LBB1_106
	.p2align	4, , 16
.LBB1_105:                              # %._crit_edge526
                                        #   in Loop: Header=BB1_106 Depth=2
	addi.d	$t1, $t1, 1
	beq	$t1, $a7, .LBB1_122
.LBB1_106:                              #   Parent Loop BB1_91 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_109 Depth 3
                                        #       Child Loop BB1_117 Depth 3
                                        #         Child Loop BB1_119 Depth 4
	slli.d	$t2, $t1, 1
	ldx.h	$t2, $a1, $t2
	sub.w	$t2, $t2, $a4
	slli.d	$t3, $t2, 4
	alsl.d	$t3, $t2, $t3, 3
	ldx.w	$t2, $a2, $t3
	beqz	$t2, .LBB1_113
# %bb.107:                              #   in Loop: Header=BB1_106 Depth=2
	add.w	$t4, $s7, $a3
	add.w	$t3, $t2, $a4
	blt	$t4, $s3, .LBB1_111
# %bb.108:                              # %.lr.ph513.preheader
                                        #   in Loop: Header=BB1_106 Depth=2
	add.d	$t4, $a6, $s7
	bstrpick.d	$t4, $t4, 31, 0
	addi.d	$t4, $t4, -1
	move	$t5, $t0
	.p2align	4, , 16
.LBB1_109:                              # %.lr.ph513
                                        #   Parent Loop BB1_91 Depth=1
                                        #     Parent Loop BB1_106 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.h	$t6, $t5, 0
	beq	$t3, $t6, .LBB1_112
# %bb.110:                              #   in Loop: Header=BB1_109 Depth=3
	addi.d	$t4, $t4, -1
	addi.d	$t5, $t5, 2
	bnez	$t4, .LBB1_109
.LBB1_111:                              # %._crit_edge514
                                        #   in Loop: Header=BB1_106 Depth=2
	add.w	$t4, $s7, $s0
	addi.w	$s7, $s7, 1
	add.w	$t5, $s7, $a3
	slli.d	$t5, $t5, 1
	stx.h	$t3, $a1, $t5
	slli.d	$t4, $t4, 1
	stx.h	$t3, $a5, $t4
.LBB1_112:                              # %.loopexit390
                                        #   in Loop: Header=BB1_106 Depth=2
	slli.d	$t3, $t2, 4
	alsl.d	$t2, $t2, $t3, 3
	add.d	$t2, $a2, $t2
	addi.d	$t2, $t2, 16
	ld.d	$t2, $t2, 0
	bnez	$t2, .LBB1_114
	b	.LBB1_105
	.p2align	4, , 16
.LBB1_113:                              #   in Loop: Header=BB1_106 Depth=2
	add.d	$t2, $a2, $t3
	addi.d	$t2, $t2, 16
	ld.d	$t2, $t2, 0
	beqz	$t2, .LBB1_105
.LBB1_114:                              # %.lr.ph525
                                        #   in Loop: Header=BB1_106 Depth=2
	ld.d	$t3, $s4, 0
	b	.LBB1_117
	.p2align	4, , 16
.LBB1_115:                              # %._crit_edge519
                                        #   in Loop: Header=BB1_117 Depth=3
	add.w	$t5, $s7, $s0
	addi.w	$s7, $s7, 1
	add.w	$t6, $s7, $a3
	slli.d	$t6, $t6, 1
	stx.h	$t4, $a1, $t6
	slli.d	$t5, $t5, 1
	stx.h	$t4, $t3, $t5
.LBB1_116:                              # %.loopexit389
                                        #   in Loop: Header=BB1_117 Depth=3
	ld.d	$t2, $t2, 8
	beqz	$t2, .LBB1_105
.LBB1_117:                              #   Parent Loop BB1_91 Depth=1
                                        #     Parent Loop BB1_106 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB1_119 Depth 4
	ld.w	$t4, $t2, 0
	add.w	$t5, $s7, $a3
	add.w	$t4, $t4, $a4
	blt	$t5, $s3, .LBB1_115
# %bb.118:                              # %.lr.ph518.preheader
                                        #   in Loop: Header=BB1_117 Depth=3
	add.d	$t5, $a6, $s7
	bstrpick.d	$t5, $t5, 31, 0
	addi.d	$t5, $t5, -1
	move	$t6, $t0
	.p2align	4, , 16
.LBB1_119:                              # %.lr.ph518
                                        #   Parent Loop BB1_91 Depth=1
                                        #     Parent Loop BB1_106 Depth=2
                                        #       Parent Loop BB1_117 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.h	$t7, $t6, 0
	beq	$t4, $t7, .LBB1_116
# %bb.120:                              #   in Loop: Header=BB1_119 Depth=4
	addi.d	$t5, $t5, -1
	addi.d	$t6, $t6, 2
	bnez	$t5, .LBB1_119
	b	.LBB1_115
	.p2align	4, , 16
.LBB1_121:                              #   in Loop: Header=BB1_91 Depth=1
	move	$s7, $zero
.LBB1_122:                              # %._crit_edge532
                                        #   in Loop: Header=BB1_91 Depth=1
	addi.w	$s8, $s0, 1
	slli.d	$s6, $s8, 2
	ldx.w	$a1, $a0, $s6
	ld.w	$a5, $s1, 0
	ld.d	$a2, $sp, 200                   # 8-byte Folded Reload
	ld.d	$a2, $a2, 0
	ld.w	$a4, $s5, 0
	add.d	$a1, $a5, $a1
	ori	$a5, $zero, 1
	st.w	$a1, $s1, 0
	blt	$s0, $a5, .LBB1_130
# %bb.123:                              # %.lr.ph537
                                        #   in Loop: Header=BB1_91 Depth=1
	bstrpick.d	$a1, $s8, 31, 0
	ori	$a5, $zero, 1
	ori	$a6, $zero, 9
	bltu	$s8, $a6, .LBB1_127
# %bb.124:                              # %vector.ph770
                                        #   in Loop: Header=BB1_91 Depth=1
	addi.d	$a6, $a1, -1
	move	$a7, $a6
	bstrins.d	$a7, $zero, 2, 0
	move	$a5, $a6
	bstrins.d	$a5, $s3, 2, 0
	addi.d	$t0, $a0, 20
	alsl.d	$t1, $a4, $a2, 1
	addi.d	$t1, $t1, 10
	move	$t2, $a7
	.p2align	4, , 16
.LBB1_125:                              # %vector.body773
                                        #   Parent Loop BB1_91 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $t0, -16
	vld	$vr1, $t0, 0
	vpickev.h	$vr0, $vr0, $vr0
	vpickev.h	$vr1, $vr1, $vr1
	vpackev.d	$vr0, $vr1, $vr0
	vst	$vr0, $t1, -8
	addi.d	$t0, $t0, 32
	addi.d	$t2, $t2, -8
	addi.d	$t1, $t1, 16
	bnez	$t2, .LBB1_125
# %bb.126:                              # %middle.block777
                                        #   in Loop: Header=BB1_91 Depth=1
	beq	$a6, $a7, .LBB1_129
.LBB1_127:                              # %scalar.ph768.preheader
                                        #   in Loop: Header=BB1_91 Depth=1
	slli.d	$a6, $a5, 1
	alsl.d	$a6, $a4, $a6, 1
	add.d	$a6, $a2, $a6
	alsl.d	$a7, $a5, $a0, 2
	sub.d	$a1, $a1, $a5
	.p2align	4, , 16
.LBB1_128:                              # %scalar.ph768
                                        #   Parent Loop BB1_91 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.h	$a5, $a7, 0
	st.h	$a5, $a6, 0
	addi.d	$a6, $a6, 2
	addi.d	$a1, $a1, -1
	addi.d	$a7, $a7, 4
	bnez	$a1, .LBB1_128
.LBB1_129:                              #   in Loop: Header=BB1_91 Depth=1
	move	$a5, $s8
.LBB1_130:                              # %._crit_edge538
                                        #   in Loop: Header=BB1_91 Depth=1
	addi.w	$a1, $s0, -1
	add.w	$s2, $s7, $a1
	add.w	$a5, $a4, $a5
	slli.d	$a5, $a5, 1
	stx.h	$zero, $a2, $a5
	add.d	$a2, $a4, $s8
	st.w	$a2, $s5, 0
	bge	$s2, $s0, .LBB1_138
.LBB1_131:                              # %._crit_edge550
                                        #   in Loop: Header=BB1_91 Depth=1
	slli.d	$a2, $s0, 2
	ldx.w	$a2, $a0, $a2
	add.w	$a0, $s7, $a3
	move	$a3, $s7
	pcaddu18i	$ra, %call36(recursePath)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 244
	ld.w	$a1, $s5, 0
	slli.d	$a0, $a0, 3
	ld.d	$a2, $sp, 192                   # 8-byte Folded Reload
	ldx.d	$a0, $a2, $a0
	sub.d	$a1, $a1, $s8
	st.w	$a1, $s5, 0
	ldx.w	$a0, $a0, $s6
	ld.w	$a1, $s1, 0
	sub.d	$a0, $a1, $a0
	st.w	$a0, $s1, 0
	blt	$s2, $s0, .LBB1_90
# %bb.132:                              # %.lr.ph560
                                        #   in Loop: Header=BB1_91 Depth=1
	pcalau12i	$a0, %got_pc_hi20(gnodeArray)
	ld.d	$a1, $a0, %got_pc_lo12(gnodeArray)
	ld.d	$a0, $s4, 0
	ld.d	$a1, $a1, 0
	add.w	$a2, $s7, $s0
	b	.LBB1_134
	.p2align	4, , 16
.LBB1_133:                              # %._crit_edge556
                                        #   in Loop: Header=BB1_134 Depth=2
	addi.d	$s0, $s0, 1
	addi.w	$a3, $s0, 0
	beq	$a2, $a3, .LBB1_90
.LBB1_134:                              #   Parent Loop BB1_91 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_135 Depth 3
                                        #         Child Loop BB1_136 Depth 4
	slli.d	$a3, $s0, 1
	ldx.h	$a3, $a0, $a3
	slli.d	$a4, $a3, 3
	ldx.d	$a4, $a1, $a4
	beqz	$a4, .LBB1_133
	.p2align	4, , 16
.LBB1_135:                              # %.lr.ph555
                                        #   Parent Loop BB1_91 Depth=1
                                        #     Parent Loop BB1_134 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB1_136 Depth 4
	ld.w	$a5, $a4, 0
	alsl.d	$a6, $a5, $a1, 3
	.p2align	4, , 16
.LBB1_136:                              #   Parent Loop BB1_91 Depth=1
                                        #     Parent Loop BB1_134 Depth=2
                                        #       Parent Loop BB1_135 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.d	$a5, $a6, 0
	ld.w	$a7, $a5, 0
	addi.d	$a6, $a5, 32
	bne	$a7, $a3, .LBB1_136
# %bb.137:                              #   in Loop: Header=BB1_135 Depth=3
	ld.d	$a4, $a4, 32
	st.w	$zero, $a5, 24
	bnez	$a4, .LBB1_135
	b	.LBB1_133
	.p2align	4, , 16
.LBB1_138:                              # %.lr.ph549
                                        #   in Loop: Header=BB1_91 Depth=1
	pcalau12i	$a2, %got_pc_hi20(gnodeArray)
	ld.d	$a4, $a2, %got_pc_lo12(gnodeArray)
	ld.d	$a2, $s4, 0
	ld.d	$a4, $a4, 0
	add.w	$a5, $s7, $s0
	move	$a6, $s0
	b	.LBB1_140
	.p2align	4, , 16
.LBB1_139:                              # %._crit_edge545
                                        #   in Loop: Header=BB1_140 Depth=2
	addi.d	$a6, $a6, 1
	addi.w	$a7, $a6, 0
	beq	$a5, $a7, .LBB1_131
.LBB1_140:                              #   Parent Loop BB1_91 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_141 Depth 3
                                        #         Child Loop BB1_142 Depth 4
	slli.d	$a7, $a6, 1
	ldx.h	$a7, $a2, $a7
	slli.d	$t0, $a7, 3
	ldx.d	$t0, $a4, $t0
	beqz	$t0, .LBB1_139
	.p2align	4, , 16
.LBB1_141:                              # %.lr.ph544
                                        #   Parent Loop BB1_91 Depth=1
                                        #     Parent Loop BB1_140 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB1_142 Depth 4
	ld.w	$t1, $t0, 0
	alsl.d	$t2, $t1, $a4, 3
	.p2align	4, , 16
.LBB1_142:                              #   Parent Loop BB1_91 Depth=1
                                        #     Parent Loop BB1_140 Depth=2
                                        #       Parent Loop BB1_141 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.d	$t1, $t2, 0
	ld.w	$t3, $t1, 0
	addi.d	$t2, $t1, 32
	bne	$t3, $a7, .LBB1_142
# %bb.143:                              #   in Loop: Header=BB1_141 Depth=3
	ld.d	$t0, $t0, 32
	st.w	$s3, $t1, 24
	bnez	$t0, .LBB1_141
	b	.LBB1_139
.LBB1_144:                              # %._crit_edge566
	pcalau12i	$s0, %pc_hi20(treeSize)
	ld.w	$a0, $s0, %pc_lo12(treeSize)
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.w	$a1, $s2, 0
	sub.w	$s1, $a0, $a1
	ori	$a0, $zero, 1
	blt	$s1, $a0, .LBB1_148
# %bb.145:                              # %.preheader388.preheader
	pcalau12i	$a0, %got_pc_hi20(netRoot)
	ld.d	$s7, $a0, %got_pc_lo12(netRoot)
	pcalau12i	$a0, %pc_hi20(indexRoot)
	addi.d	$s8, $a0, %pc_lo12(indexRoot)
	move	$fp, $s1
	.p2align	4, , 16
.LBB1_146:                              # %.preheader388
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$a1, $sp, 224
	addi.d	$a2, $sp, 236
	addi.d	$a3, $sp, 232
	move	$a0, $s7
	pcaddu18i	$ra, %call36(tmax)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 236
	ld.w	$a2, $sp, 232
	move	$a0, $s7
	pcaddu18i	$ra, %call36(tdelete)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 232
	move	$a0, $s8
	move	$a2, $zero
	pcaddu18i	$ra, %call36(tinsert)
	jirl	$ra, $ra, 0
	addi.w	$fp, $fp, -1
	bnez	$fp, .LBB1_146
# %bb.147:
	ld.w	$a0, $s0, %pc_lo12(treeSize)
	sub.d	$a0, $a0, $s1
	st.w	$a0, $s0, %pc_lo12(treeSize)
.LBB1_148:
	ld.d	$a0, $sp, 216
	beqz	$a0, .LBB1_150
	.p2align	4, , 16
.LBB1_149:                              # %.preheader386
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$a0, $sp, 216
	addi.d	$a1, $sp, 224
	addi.d	$a2, $sp, 240
	addi.d	$a3, $sp, 244
	pcaddu18i	$ra, %call36(tpop)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 224
	bnez	$a0, .LBB1_149
.LBB1_150:                              # %.loopexit387
	ori	$fp, $zero, 1
	ori	$a0, $zero, 1
	ld.d	$s1, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 88                    # 8-byte Folded Reload
	blt	$s6, $fp, .LBB1_152
# %bb.151:                              # %.lr.ph572
	pcalau12i	$a0, %got_pc_hi20(sourceList)
	ld.d	$a0, $a0, %got_pc_lo12(sourceList)
	ld.d	$a0, $a0, 0
	ld.d	$s5, $sp, 168                   # 8-byte Folded Reload
	ld.w	$s0, $s5, 0
	alsl.d	$a0, $s0, $a0, 1
	addi.d	$a0, $a0, 2
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	bstrpick.d	$a1, $a1, 31, 1
	slli.d	$a2, $a1, 1
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	add.d	$a0, $s0, $s6
	st.w	$a0, $s5, 0
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
.LBB1_152:
	pcalau12i	$a1, %got_pc_hi20(targetPtr)
	ld.d	$a1, $a1, %got_pc_lo12(targetPtr)
	ld.w	$a2, $a1, 0
	st.w	$a0, $sp, 244
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	sub.d	$a0, $a2, $a0
	st.w	$a0, $a1, 0
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	blt	$s3, $fp, .LBB1_162
# %bb.153:                              # %.preheader
	ori	$t1, $zero, 1
	st.w	$t1, $sp, 244
	blt	$s4, $t1, .LBB1_162
# %bb.154:                              # %.lr.ph583
	pcalau12i	$a1, %got_pc_hi20(gnodeArray)
	ld.d	$a1, $a1, %got_pc_lo12(gnodeArray)
	ld.d	$a1, $a1, 0
	addi.d	$a2, $s4, 1
	bstrpick.d	$a2, $a2, 31, 0
	b	.LBB1_156
	.p2align	4, , 16
.LBB1_155:                              # %._crit_edge579
                                        #   in Loop: Header=BB1_156 Depth=1
	ld.w	$a3, $a4, 8
	st.w	$a3, $a4, 12
	addi.d	$t1, $t1, 1
	st.w	$t1, $sp, 244
	beq	$t1, $a2, .LBB1_162
.LBB1_156:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_159 Depth 2
                                        #     Child Loop BB1_161 Depth 2
	move	$a5, $s3
	beq	$t1, $s4, .LBB1_158
# %bb.157:                              #   in Loop: Header=BB1_156 Depth=1
	alsl.d	$a3, $t1, $a0, 1
	ld.h	$a5, $a3, 2
.LBB1_158:                              #   in Loop: Header=BB1_156 Depth=1
	slli.d	$a3, $t1, 1
	ldx.h	$a3, $a0, $a3
	slli.d	$a4, $a5, 3
	ldx.d	$a4, $a1, $a4
	alsl.d	$a7, $a3, $a1, 3
	.p2align	4, , 16
.LBB1_159:                              #   Parent Loop BB1_156 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a6, $a7, 0
	ld.w	$t0, $a6, 0
	addi.d	$a7, $a6, 32
	bne	$t0, $a5, .LBB1_159
# %bb.160:                              #   in Loop: Header=BB1_156 Depth=1
	ld.w	$a5, $a6, 8
	ld.w	$a7, $a4, 0
	st.w	$a5, $a6, 12
	beq	$a7, $a3, .LBB1_155
	.p2align	4, , 16
.LBB1_161:                              # %.lr.ph578
                                        #   Parent Loop BB1_156 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a4, $a4, 32
	ld.w	$a5, $a4, 0
	bne	$a5, $a3, .LBB1_161
	b	.LBB1_155
.LBB1_162:                              # %.loopexit
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s1, 0
	ld.w	$a1, $s2, 0
	mul.w	$a0, $a1, $a0
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB1_165
# %bb.163:                              # %.lr.ph587.preheader
	move	$fp, $zero
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	addi.d	$s0, $a0, 8
	.p2align	4, , 16
.LBB1_164:                              # %.lr.ph587
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s0, 0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s1, 0
	ld.w	$a1, $s2, 0
	mul.w	$a0, $a1, $a0
	addi.d	$fp, $fp, 1
	addi.d	$s0, $s0, 8
	blt	$fp, $a0, .LBB1_164
.LBB1_165:                              # %._crit_edge588
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	b	.LBB1_174
.LBB1_166:                              # %vector.ph798
	bstrpick.d	$a4, $a0, 30, 4
	slli.d	$a5, $a4, 4
	addi.d	$a4, $a3, 18
	addi.d	$a6, $a1, 18
	move	$a7, $a5
	.p2align	4, , 16
.LBB1_167:                              # %vector.body801
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a4, -16
	vld	$vr1, $a4, 0
	vst	$vr0, $a6, -16
	vst	$vr1, $a6, 0
	addi.d	$a4, $a4, 32
	addi.d	$a7, $a7, -16
	addi.d	$a6, $a6, 32
	bnez	$a7, .LBB1_167
# %bb.168:                              # %middle.block806
	beq	$a5, $a0, .LBB1_173
# %bb.169:                              # %vec.epilog.iter.check
	andi	$a4, $a0, 8
	bnez	$a4, .LBB1_6
# %bb.170:
	addi.d	$a4, $a5, 1
.LBB1_171:                              # %vec.epilog.scalar.ph.preheader
	addi.d	$a0, $a0, 1
	bstrpick.d	$a5, $a0, 31, 0
	alsl.d	$a0, $a4, $a1, 1
	alsl.d	$a1, $a4, $a3, 1
	sub.d	$a3, $a5, $a4
	.p2align	4, , 16
.LBB1_172:                              # %vec.epilog.scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.h	$a4, $a1, 0
	st.h	$a4, $a0, 0
	addi.d	$a0, $a0, 2
	addi.d	$a3, $a3, -1
	addi.d	$a1, $a1, 2
	bnez	$a3, .LBB1_172
.LBB1_173:                              # %._crit_edge593
	pcalau12i	$a0, %got_pc_hi20(pathLength)
	ld.d	$a0, $a0, %got_pc_lo12(pathLength)
	ld.w	$a1, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(netRoot)
	ld.d	$a0, $a0, %got_pc_lo12(netRoot)
	pcaddu18i	$ra, %call36(tinsert)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(treeSize)
	ld.w	$a1, $a0, %pc_lo12(treeSize)
	addi.d	$a1, $a1, 1
	st.w	$a1, $a0, %pc_lo12(treeSize)
.LBB1_174:
	ld.d	$s8, $sp, 248                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 256                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 264                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 272                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 280                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 288                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 296                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 304                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 312                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 320                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 328                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 336
	ret
.Lfunc_end1:
	.size	recursePath, .Lfunc_end1-recursePath
                                        # -- End function
	.type	indexRoot,@object               # @indexRoot
	.comm	indexRoot,8,8
	.type	treeSize,@object                # @treeSize
	.comm	treeSize,4,4
	.type	pathIndex,@object               # @pathIndex
	.comm	pathIndex,4,4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym indexRoot
	.addrsig_sym pathIndex
	.addrsig_sym netRoot
