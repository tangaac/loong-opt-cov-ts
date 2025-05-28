	.file	"orderedDitherKernel.c"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function orderedDitherKernel
.LCPI0_0:
	.dword	0x406fe00000000000              # double 255
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI0_1:
	.dword	2                               # 0x2
	.dword	3                               # 0x3
.LCPI0_2:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
.LCPI0_3:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.text
	.globl	orderedDitherKernel
	.p2align	5
	.type	orderedDitherKernel,@function
orderedDitherKernel:                    # @orderedDitherKernel
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$fp, $sp, 8                     # 8-byte Folded Spill
	st.d	$s0, $sp, 0                     # 8-byte Folded Spill
	ori	$t0, $zero, 1
	bstrpick.d	$a7, $a1, 31, 0
	blt	$a0, $t0, .LBB0_21
# %bb.1:
	blt	$a1, $t0, .LBB0_21
# %bb.2:                                # %.preheader131.us.preheader
	move	$t1, $zero
	mul.d	$t0, $a7, $a0
	alsl.d	$t2, $t0, $a4, 2
	slli.d	$t3, $a0, 11
	slli.d	$t0, $a7, 2
	add.d	$t3, $a2, $t3
	alsl.d	$t3, $a7, $t3, 2
	addi.d	$t3, $t3, -2048
	sltu	$t3, $a4, $t3
	sltu	$t2, $a2, $t2
	and	$t3, $t3, $t2
	bstrpick.d	$t2, $a7, 30, 2
	slli.d	$t2, $t2, 2
	sltui	$t4, $a1, 4
	or	$t3, $t4, $t3
	andi	$t3, $t3, 1
	pcalau12i	$t4, %pc_hi20(.LCPI0_0)
	fld.d	$fa0, $t4, %pc_lo12(.LCPI0_0)
	ori	$t4, $zero, 0
	lu32i.d	$t4, -8192
	lu52i.d	$t4, $t4, 1030
	vreplgr2vr.d	$vr1, $t4
	move	$t4, $a4
	b	.LBB0_4
	.p2align	4, , 16
.LBB0_3:                                # %._crit_edge.us
                                        #   in Loop: Header=BB0_4 Depth=1
	addi.d	$t1, $t1, 1
	add.d	$t4, $t4, $t0
	addi.d	$a2, $a2, 2047
	addi.d	$a2, $a2, 1
	beq	$t1, $a0, .LBB0_11
.LBB0_4:                                # %.preheader131.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_7 Depth 2
                                        #     Child Loop BB0_10 Depth 2
	beqz	$t3, .LBB0_6
# %bb.5:                                #   in Loop: Header=BB0_4 Depth=1
	move	$t6, $zero
	b	.LBB0_9
	.p2align	4, , 16
.LBB0_6:                                # %vector.body.preheader
                                        #   in Loop: Header=BB0_4 Depth=1
	move	$t5, $a2
	move	$t6, $t4
	move	$t7, $t2
	.p2align	4, , 16
.LBB0_7:                                # %vector.body
                                        #   Parent Loop BB0_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr2, $t5, 0
	vpickve2gr.w	$t8, $vr2, 0
	movgr2fr.w	$fa3, $t8
	ffint.d.w	$fa3, $fa3
	vpickve2gr.w	$t8, $vr2, 1
	movgr2fr.w	$fa4, $t8
	movfr2gr.d	$t8, $fa3
	ffint.d.w	$fa3, $fa4
	vinsgr2vr.d	$vr4, $t8, 0
	movfr2gr.d	$t8, $fa3
	vinsgr2vr.d	$vr4, $t8, 1
	vpickve2gr.w	$t8, $vr2, 2
	movgr2fr.w	$fa3, $t8
	ffint.d.w	$fa3, $fa3
	vpickve2gr.w	$t8, $vr2, 3
	movgr2fr.w	$fa2, $t8
	movfr2gr.d	$t8, $fa3
	ffint.d.w	$fa2, $fa2
	vinsgr2vr.d	$vr3, $t8, 0
	movfr2gr.d	$t8, $fa2
	vinsgr2vr.d	$vr3, $t8, 1
	vfdiv.d	$vr2, $vr3, $vr1
	vfdiv.d	$vr3, $vr4, $vr1
	vfmul.d	$vr3, $vr3, $vr3
	vfmul.d	$vr2, $vr2, $vr2
	vfmul.d	$vr2, $vr2, $vr1
	vfmul.d	$vr3, $vr3, $vr1
	vreplvei.d	$vr4, $vr3, 0
	ftintrz.w.d	$fa4, $fa4
	movfr2gr.s	$t8, $fa4
	vinsgr2vr.w	$vr4, $t8, 0
	vreplvei.d	$vr3, $vr3, 1
	ftintrz.w.d	$fa3, $fa3
	movfr2gr.s	$t8, $fa3
	vinsgr2vr.w	$vr4, $t8, 1
	vreplvei.d	$vr3, $vr2, 0
	ftintrz.w.d	$fa3, $fa3
	movfr2gr.s	$t8, $fa3
	vinsgr2vr.w	$vr4, $t8, 2
	vreplvei.d	$vr2, $vr2, 1
	ftintrz.w.d	$fa2, $fa2
	movfr2gr.s	$t8, $fa2
	vinsgr2vr.w	$vr4, $t8, 3
	vst	$vr4, $t6, 0
	addi.d	$t7, $t7, -4
	addi.d	$t6, $t6, 16
	addi.d	$t5, $t5, 16
	bnez	$t7, .LBB0_7
# %bb.8:                                # %middle.block
                                        #   in Loop: Header=BB0_4 Depth=1
	move	$t6, $t2
	beq	$t2, $a7, .LBB0_3
.LBB0_9:                                # %scalar.ph.preheader
                                        #   in Loop: Header=BB0_4 Depth=1
	slli.d	$t5, $t6, 2
	sub.d	$t6, $a7, $t6
	.p2align	4, , 16
.LBB0_10:                               # %scalar.ph
                                        #   Parent Loop BB0_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.w	$t7, $a2, $t5
	movgr2fr.w	$fa2, $t7
	ffint.d.w	$fa2, $fa2
	fdiv.d	$fa2, $fa2, $fa0
	fmul.d	$fa2, $fa2, $fa2
	fmul.d	$fa2, $fa2, $fa0
	ftintrz.w.d	$fa2, $fa2
	movfr2gr.s	$t7, $fa2
	stx.w	$t7, $t4, $t5
	addi.d	$t6, $t6, -1
	addi.d	$t5, $t5, 4
	bnez	$t6, .LBB0_10
	b	.LBB0_3
.LBB0_11:                               # %._crit_edge134
	ori	$a2, $zero, 1
	blt	$a0, $a2, .LBB0_21
# %bb.12:                               # %.preheader130.us.preheader
	move	$a2, $zero
	ori	$t1, $zero, 256
	div.w	$a5, $t1, $a5
	sub.d	$t1, $a3, $a4
	sltui	$t2, $a1, 8
	sltui	$t1, $t1, 32
	or	$t1, $t2, $t1
	bstrpick.d	$t2, $a7, 30, 3
	slli.d	$t2, $t2, 3
	vreplgr2vr.w	$vr0, $a5
	addi.d	$t3, $a3, 16
	addi.d	$t4, $a4, 16
	move	$t5, $a3
	b	.LBB0_14
	.p2align	4, , 16
.LBB0_13:                               # %._crit_edge.us138
                                        #   in Loop: Header=BB0_14 Depth=1
	addi.d	$a2, $a2, 1
	add.d	$t3, $t3, $t0
	add.d	$t4, $t4, $t0
	add.d	$a4, $a4, $t0
	add.d	$t5, $t5, $t0
	beq	$a2, $a0, .LBB0_21
.LBB0_14:                               # %.preheader130.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_17 Depth 2
                                        #     Child Loop BB0_20 Depth 2
	beqz	$t1, .LBB0_16
# %bb.15:                               #   in Loop: Header=BB0_14 Depth=1
	move	$t8, $zero
	b	.LBB0_19
	.p2align	4, , 16
.LBB0_16:                               # %vector.body223.preheader
                                        #   in Loop: Header=BB0_14 Depth=1
	move	$t6, $t4
	move	$t7, $t3
	move	$t8, $t2
	.p2align	4, , 16
.LBB0_17:                               # %vector.body223
                                        #   Parent Loop BB0_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr1, $t6, -16
	vld	$vr2, $t6, 0
	vdiv.w	$vr1, $vr1, $vr0
	vdiv.w	$vr2, $vr2, $vr0
	vst	$vr1, $t7, -16
	vst	$vr2, $t7, 0
	addi.d	$t8, $t8, -8
	addi.d	$t7, $t7, 32
	addi.d	$t6, $t6, 32
	bnez	$t8, .LBB0_17
# %bb.18:                               # %middle.block228
                                        #   in Loop: Header=BB0_14 Depth=1
	move	$t8, $t2
	beq	$t2, $a7, .LBB0_13
.LBB0_19:                               # %scalar.ph218.preheader
                                        #   in Loop: Header=BB0_14 Depth=1
	alsl.d	$t6, $t8, $a4, 2
	alsl.d	$t7, $t8, $t5, 2
	sub.d	$t8, $a7, $t8
	.p2align	4, , 16
.LBB0_20:                               # %scalar.ph218
                                        #   Parent Loop BB0_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$fp, $t6, 0
	div.w	$fp, $fp, $a5
	st.w	$fp, $t7, 0
	addi.d	$t6, $t6, 4
	addi.d	$t8, $t8, -1
	addi.d	$t7, $t7, 4
	bnez	$t8, .LBB0_20
	b	.LBB0_13
.LBB0_21:                               # %._crit_edge137
	addi.d	$a2, $a6, -2
	ori	$a4, $zero, 6
	bltu	$a4, $a2, .LBB0_62
# %bb.22:                               # %._crit_edge137
	slli.d	$a2, $a2, 2
	pcalau12i	$a4, %pc_hi20(.LJTI0_0)
	addi.d	$a4, $a4, %pc_lo12(.LJTI0_0)
	ldx.w	$a2, $a4, $a2
	add.d	$a2, $a4, $a2
	jr	$a2
.LBB0_23:                               # %.preheader120
	ori	$a2, $zero, 1
	blt	$a0, $a2, .LBB0_62
# %bb.24:                               # %.preheader120
	blt	$a1, $a2, .LBB0_62
# %bb.25:                               # %.preheader.us.preheader
	move	$a1, $zero
	slli.d	$a2, $a7, 2
	pcalau12i	$a4, %pc_hi20(.L__const.orderedDitherKernel.dither)
	addi.d	$a4, $a4, %pc_lo12(.L__const.orderedDitherKernel.dither)
	ori	$a5, $zero, 255
	.p2align	4, , 16
.LBB0_26:                               # %.preheader.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_27 Depth 2
	move	$a6, $zero
	andi	$t0, $a1, 1
	slli.d	$t0, $t0, 2
	move	$t1, $a3
	.p2align	4, , 16
.LBB0_27:                               #   Parent Loop BB0_26 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	andi	$t2, $a6, 1
	ld.w	$t3, $t1, 0
	alsl.d	$t2, $t2, $a4, 3
	ldx.w	$t2, $t2, $t0
	slt	$t2, $t2, $t3
	maskeqz	$t2, $a5, $t2
	st.w	$t2, $t1, 0
	addi.d	$a6, $a6, 1
	addi.d	$t1, $t1, 4
	bne	$a7, $a6, .LBB0_27
# %bb.28:                               # %._crit_edge.us150
                                        #   in Loop: Header=BB0_26 Depth=1
	addi.d	$a1, $a1, 1
	add.d	$a3, $a3, $a2
	bne	$a1, $a0, .LBB0_26
	b	.LBB0_62
.LBB0_29:                               # %.preheader125
	ori	$a2, $zero, 1
	blt	$a0, $a2, .LBB0_62
# %bb.30:                               # %.preheader125
	blt	$a1, $a2, .LBB0_62
# %bb.31:                               # %.preheader124.us.preheader
	move	$a2, $zero
	sltui	$a1, $a1, 5
	addi.d	$a4, $a7, -5
	sltui	$a4, $a4, -4
	or	$a1, $a1, $a4
	andi	$a4, $a7, 3
	sltui	$a5, $a4, 1
	masknez	$a4, $a4, $a5
	ori	$a6, $zero, 4
	maskeqz	$a5, $a6, $a5
	or	$a4, $a5, $a4
	sub.d	$a4, $a7, $a4
	slli.d	$a5, $a7, 2
	pcalau12i	$a6, %pc_hi20(.L__const.orderedDitherKernel.dither.2)
	addi.d	$a6, $a6, %pc_lo12(.L__const.orderedDitherKernel.dither.2)
	pcalau12i	$t0, %pc_hi20(.LCPI0_1)
	vld	$vr0, $t0, %pc_lo12(.LCPI0_1)
	pcalau12i	$t0, %pc_hi20(.LCPI0_2)
	vld	$vr1, $t0, %pc_lo12(.LCPI0_2)
	ori	$t0, $zero, 255
	vrepli.d	$vr2, 3
	vrepli.w	$vr3, 255
	vrepli.b	$vr4, 0
	.p2align	4, , 16
.LBB0_32:                               # %.preheader124.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_35 Depth 2
                                        #     Child Loop BB0_38 Depth 2
	andi	$t1, $a2, 3
	slli.d	$t1, $t1, 2
	beqz	$a1, .LBB0_34
# %bb.33:                               #   in Loop: Header=BB0_32 Depth=1
	move	$t2, $zero
	b	.LBB0_37
	.p2align	4, , 16
.LBB0_34:                               # %vector.body248.preheader
                                        #   in Loop: Header=BB0_32 Depth=1
	move	$t2, $a3
	move	$t3, $a4
	vori.b	$vr5, $vr1, 0
	vori.b	$vr6, $vr0, 0
	.p2align	4, , 16
.LBB0_35:                               # %vector.body248
                                        #   Parent Loop BB0_32 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vand.v	$vr7, $vr6, $vr2
	vand.v	$vr8, $vr5, $vr2
	vld	$vr9, $t2, 0
	vpickve2gr.d	$t4, $vr8, 0
	alsl.d	$t4, $t4, $a6, 4
	vpickve2gr.d	$t5, $vr8, 1
	alsl.d	$t5, $t5, $a6, 4
	vpickve2gr.d	$t6, $vr7, 0
	alsl.d	$t6, $t6, $a6, 4
	vpickve2gr.d	$t7, $vr7, 1
	alsl.d	$t7, $t7, $a6, 4
	ldx.w	$t4, $t4, $t1
	ldx.w	$t5, $t5, $t1
	ldx.w	$t6, $t6, $t1
	ldx.w	$t7, $t7, $t1
	vinsgr2vr.w	$vr7, $t4, 0
	vinsgr2vr.w	$vr7, $t5, 1
	vinsgr2vr.w	$vr7, $t6, 2
	vinsgr2vr.w	$vr7, $t7, 3
	vslt.w	$vr7, $vr7, $vr9
	vbitsel.v	$vr7, $vr4, $vr3, $vr7
	vst	$vr7, $t2, 0
	vaddi.du	$vr5, $vr5, 4
	vaddi.du	$vr6, $vr6, 4
	addi.d	$t3, $t3, -4
	addi.d	$t2, $t2, 16
	bnez	$t3, .LBB0_35
# %bb.36:                               #   in Loop: Header=BB0_32 Depth=1
	move	$t2, $a4
.LBB0_37:                               # %scalar.ph243.preheader
                                        #   in Loop: Header=BB0_32 Depth=1
	slli.d	$t3, $t2, 2
	.p2align	4, , 16
.LBB0_38:                               # %scalar.ph243
                                        #   Parent Loop BB0_32 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	andi	$t4, $t2, 3
	ldx.w	$t5, $a3, $t3
	alsl.d	$t4, $t4, $a6, 4
	ldx.w	$t4, $t4, $t1
	slt	$t4, $t4, $t5
	maskeqz	$t4, $t0, $t4
	stx.w	$t4, $a3, $t3
	addi.d	$t2, $t2, 1
	addi.d	$t3, $t3, 4
	bne	$a7, $t2, .LBB0_38
# %bb.39:                               # %._crit_edge.us144
                                        #   in Loop: Header=BB0_32 Depth=1
	addi.d	$a2, $a2, 1
	add.d	$a3, $a3, $a5
	bne	$a2, $a0, .LBB0_32
	b	.LBB0_62
.LBB0_40:                               # %.preheader122
	ori	$a2, $zero, 1
	blt	$a0, $a2, .LBB0_62
# %bb.41:                               # %.preheader122
	blt	$a1, $a2, .LBB0_62
# %bb.42:                               # %.preheader121.us.preheader
	move	$a2, $zero
	bstrpick.d	$a4, $a7, 30, 2
	slli.d	$a4, $a4, 2
	slli.d	$a5, $a7, 2
	lu12i.w	$a6, -349526
	ori	$a6, $a6, 2731
	ori	$t0, $zero, 4
	pcalau12i	$t1, %pc_hi20(.L__const.orderedDitherKernel.dither.1)
	addi.d	$t1, $t1, %pc_lo12(.L__const.orderedDitherKernel.dither.1)
	ori	$t2, $zero, 255
	pcalau12i	$t3, %pc_hi20(.LCPI0_3)
	vld	$vr0, $t3, %pc_lo12(.LCPI0_3)
	vreplgr2vr.w	$vr1, $a6
	lu32i.d	$a6, 0
	vrepli.w	$vr2, 3
	vrepli.b	$vr3, 0
	ori	$t3, $zero, 12
	vrepli.w	$vr4, 255
	b	.LBB0_44
	.p2align	4, , 16
.LBB0_43:                               # %._crit_edge.us147
                                        #   in Loop: Header=BB0_44 Depth=1
	addi.d	$a2, $a2, 1
	add.d	$a3, $a3, $a5
	beq	$a2, $a0, .LBB0_62
.LBB0_44:                               # %.preheader121.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_47 Depth 2
                                        #     Child Loop BB0_50 Depth 2
	mul.d	$t4, $a2, $a6
	srli.d	$t4, $t4, 33
	alsl.d	$t4, $t4, $t4, 1
	sub.w	$t4, $a2, $t4
	slli.d	$t4, $t4, 2
	bgeu	$a1, $t0, .LBB0_46
# %bb.45:                               #   in Loop: Header=BB0_44 Depth=1
	move	$t5, $zero
	b	.LBB0_49
	.p2align	4, , 16
.LBB0_46:                               # %vector.body261.preheader
                                        #   in Loop: Header=BB0_44 Depth=1
	move	$t5, $a3
	move	$t6, $a4
	vori.b	$vr5, $vr0, 0
	.p2align	4, , 16
.LBB0_47:                               # %vector.body261
                                        #   Parent Loop BB0_44 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vmuh.wu	$vr6, $vr5, $vr1
	vsrli.w	$vr6, $vr6, 1
	vori.b	$vr7, $vr5, 0
	vmsub.w	$vr7, $vr6, $vr2
	vld	$vr6, $t5, 0
	vilvh.w	$vr8, $vr3, $vr7
	vilvl.w	$vr7, $vr3, $vr7
	vpickve2gr.d	$t7, $vr7, 0
	mul.d	$t7, $t7, $t3
	add.d	$t7, $t1, $t7
	vpickve2gr.d	$t8, $vr7, 1
	mul.d	$t8, $t8, $t3
	add.d	$t8, $t1, $t8
	vpickve2gr.d	$fp, $vr8, 0
	mul.d	$fp, $fp, $t3
	add.d	$fp, $t1, $fp
	vpickve2gr.d	$s0, $vr8, 1
	mul.d	$s0, $s0, $t3
	add.d	$s0, $t1, $s0
	ldx.w	$t7, $t7, $t4
	ldx.w	$t8, $t8, $t4
	ldx.w	$fp, $fp, $t4
	ldx.w	$s0, $s0, $t4
	vinsgr2vr.w	$vr7, $t7, 0
	vinsgr2vr.w	$vr7, $t8, 1
	vinsgr2vr.w	$vr7, $fp, 2
	vinsgr2vr.w	$vr7, $s0, 3
	vslt.w	$vr6, $vr7, $vr6
	vbitsel.v	$vr6, $vr3, $vr4, $vr6
	vst	$vr6, $t5, 0
	vaddi.wu	$vr5, $vr5, 4
	addi.d	$t6, $t6, -4
	addi.d	$t5, $t5, 16
	bnez	$t6, .LBB0_47
# %bb.48:                               # %middle.block267
                                        #   in Loop: Header=BB0_44 Depth=1
	move	$t5, $a4
	beq	$a4, $a7, .LBB0_43
.LBB0_49:                               # %scalar.ph256.preheader
                                        #   in Loop: Header=BB0_44 Depth=1
	slli.d	$t6, $t5, 2
	sub.d	$t7, $a7, $t5
	.p2align	4, , 16
.LBB0_50:                               # %scalar.ph256
                                        #   Parent Loop BB0_44 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	bstrpick.d	$t8, $t5, 31, 0
	mul.d	$t8, $t8, $a6
	srli.d	$t8, $t8, 33
	alsl.d	$t8, $t8, $t8, 1
	sub.d	$t8, $t5, $t8
	ldx.w	$fp, $a3, $t6
	bstrpick.d	$t8, $t8, 31, 0
	slli.d	$s0, $t8, 3
	alsl.d	$t8, $t8, $s0, 2
	add.d	$t8, $t1, $t8
	ldx.w	$t8, $t8, $t4
	slt	$t8, $t8, $fp
	maskeqz	$t8, $t2, $t8
	stx.w	$t8, $a3, $t6
	addi.d	$t6, $t6, 4
	addi.d	$t7, $t7, -1
	addi.w	$t5, $t5, 1
	bnez	$t7, .LBB0_50
	b	.LBB0_43
.LBB0_51:                               # %.preheader128
	ori	$a2, $zero, 1
	blt	$a0, $a2, .LBB0_62
# %bb.52:                               # %.preheader128
	blt	$a1, $a2, .LBB0_62
# %bb.53:                               # %.preheader127.us.preheader
	move	$a2, $zero
	sltui	$a1, $a1, 5
	addi.d	$a4, $a7, -9
	sltui	$a4, $a4, -8
	or	$a1, $a1, $a4
	andi	$a4, $a7, 3
	sltui	$a5, $a4, 1
	masknez	$a4, $a4, $a5
	ori	$a6, $zero, 4
	maskeqz	$a5, $a6, $a5
	or	$a4, $a5, $a4
	sub.d	$a4, $a7, $a4
	slli.d	$a5, $a7, 2
	pcalau12i	$a6, %pc_hi20(.L__const.orderedDitherKernel.dither.3)
	addi.d	$a6, $a6, %pc_lo12(.L__const.orderedDitherKernel.dither.3)
	pcalau12i	$t0, %pc_hi20(.LCPI0_1)
	vld	$vr0, $t0, %pc_lo12(.LCPI0_1)
	pcalau12i	$t0, %pc_hi20(.LCPI0_2)
	vld	$vr1, $t0, %pc_lo12(.LCPI0_2)
	ori	$t0, $zero, 255
	vrepli.d	$vr2, 7
	vrepli.w	$vr3, 255
	vrepli.b	$vr4, 0
	.p2align	4, , 16
.LBB0_54:                               # %.preheader127.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_57 Depth 2
                                        #     Child Loop BB0_60 Depth 2
	andi	$t1, $a2, 7
	slli.d	$t1, $t1, 2
	beqz	$a1, .LBB0_56
# %bb.55:                               #   in Loop: Header=BB0_54 Depth=1
	move	$t2, $zero
	b	.LBB0_59
	.p2align	4, , 16
.LBB0_56:                               # %vector.body236.preheader
                                        #   in Loop: Header=BB0_54 Depth=1
	move	$t2, $a3
	move	$t3, $a4
	vori.b	$vr5, $vr1, 0
	vori.b	$vr6, $vr0, 0
	.p2align	4, , 16
.LBB0_57:                               # %vector.body236
                                        #   Parent Loop BB0_54 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vand.v	$vr7, $vr6, $vr2
	vand.v	$vr8, $vr5, $vr2
	vld	$vr9, $t2, 0
	vpickve2gr.d	$t4, $vr8, 0
	slli.d	$t4, $t4, 5
	add.d	$t4, $a6, $t4
	vpickve2gr.d	$t5, $vr8, 1
	slli.d	$t5, $t5, 5
	add.d	$t5, $a6, $t5
	vpickve2gr.d	$t6, $vr7, 0
	slli.d	$t6, $t6, 5
	add.d	$t6, $a6, $t6
	vpickve2gr.d	$t7, $vr7, 1
	slli.d	$t7, $t7, 5
	add.d	$t7, $a6, $t7
	ldx.w	$t4, $t4, $t1
	ldx.w	$t5, $t5, $t1
	ldx.w	$t6, $t6, $t1
	ldx.w	$t7, $t7, $t1
	vinsgr2vr.w	$vr7, $t4, 0
	vinsgr2vr.w	$vr7, $t5, 1
	vinsgr2vr.w	$vr7, $t6, 2
	vinsgr2vr.w	$vr7, $t7, 3
	vslt.w	$vr7, $vr7, $vr9
	vbitsel.v	$vr7, $vr4, $vr3, $vr7
	vst	$vr7, $t2, 0
	vaddi.du	$vr5, $vr5, 4
	vaddi.du	$vr6, $vr6, 4
	addi.d	$t3, $t3, -4
	addi.d	$t2, $t2, 16
	bnez	$t3, .LBB0_57
# %bb.58:                               #   in Loop: Header=BB0_54 Depth=1
	move	$t2, $a4
.LBB0_59:                               # %scalar.ph231.preheader
                                        #   in Loop: Header=BB0_54 Depth=1
	slli.d	$t3, $t2, 2
	.p2align	4, , 16
.LBB0_60:                               # %scalar.ph231
                                        #   Parent Loop BB0_54 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	andi	$t4, $t2, 7
	ldx.w	$t5, $a3, $t3
	slli.d	$t4, $t4, 5
	add.d	$t4, $a6, $t4
	ldx.w	$t4, $t4, $t1
	slt	$t4, $t4, $t5
	maskeqz	$t4, $t0, $t4
	stx.w	$t4, $a3, $t3
	addi.d	$t2, $t2, 1
	addi.d	$t3, $t3, 4
	bne	$a7, $t2, .LBB0_60
# %bb.61:                               # %._crit_edge.us141
                                        #   in Loop: Header=BB0_54 Depth=1
	addi.d	$a2, $a2, 1
	add.d	$a3, $a3, $a5
	bne	$a2, $a0, .LBB0_54
.LBB0_62:                               # %.loopexit
	ld.d	$s0, $sp, 0                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end0:
	.size	orderedDitherKernel, .Lfunc_end0-orderedDitherKernel
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI0_0:
	.word	.LBB0_23-.LJTI0_0
	.word	.LBB0_40-.LJTI0_0
	.word	.LBB0_29-.LJTI0_0
	.word	.LBB0_62-.LJTI0_0
	.word	.LBB0_62-.LJTI0_0
	.word	.LBB0_62-.LJTI0_0
	.word	.LBB0_51-.LJTI0_0
                                        # -- End function
	.type	.L__const.orderedDitherKernel.dither,@object # @__const.orderedDitherKernel.dither
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	2, 0x0
.L__const.orderedDitherKernel.dither:
	.word	0                               # 0x0
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	1                               # 0x1
	.size	.L__const.orderedDitherKernel.dither, 16

	.type	.L__const.orderedDitherKernel.dither.1,@object # @__const.orderedDitherKernel.dither.1
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.L__const.orderedDitherKernel.dither.1:
	.word	6                               # 0x6
	.word	8                               # 0x8
	.word	4                               # 0x4
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	3                               # 0x3
	.word	5                               # 0x5
	.word	2                               # 0x2
	.word	7                               # 0x7
	.size	.L__const.orderedDitherKernel.dither.1, 36

	.type	.L__const.orderedDitherKernel.dither.2,@object # @__const.orderedDitherKernel.dither.2
	.p2align	2, 0x0
.L__const.orderedDitherKernel.dither.2:
	.word	0                               # 0x0
	.word	8                               # 0x8
	.word	2                               # 0x2
	.word	10                              # 0xa
	.word	12                              # 0xc
	.word	4                               # 0x4
	.word	14                              # 0xe
	.word	6                               # 0x6
	.word	3                               # 0x3
	.word	11                              # 0xb
	.word	1                               # 0x1
	.word	9                               # 0x9
	.word	15                              # 0xf
	.word	7                               # 0x7
	.word	13                              # 0xd
	.word	5                               # 0x5
	.size	.L__const.orderedDitherKernel.dither.2, 64

	.type	.L__const.orderedDitherKernel.dither.3,@object # @__const.orderedDitherKernel.dither.3
	.p2align	2, 0x0
.L__const.orderedDitherKernel.dither.3:
	.word	0                               # 0x0
	.word	48                              # 0x30
	.word	12                              # 0xc
	.word	60                              # 0x3c
	.word	3                               # 0x3
	.word	51                              # 0x33
	.word	15                              # 0xf
	.word	63                              # 0x3f
	.word	32                              # 0x20
	.word	16                              # 0x10
	.word	44                              # 0x2c
	.word	28                              # 0x1c
	.word	35                              # 0x23
	.word	19                              # 0x13
	.word	47                              # 0x2f
	.word	31                              # 0x1f
	.word	8                               # 0x8
	.word	56                              # 0x38
	.word	4                               # 0x4
	.word	52                              # 0x34
	.word	11                              # 0xb
	.word	59                              # 0x3b
	.word	7                               # 0x7
	.word	55                              # 0x37
	.word	40                              # 0x28
	.word	24                              # 0x18
	.word	36                              # 0x24
	.word	20                              # 0x14
	.word	43                              # 0x2b
	.word	27                              # 0x1b
	.word	39                              # 0x27
	.word	23                              # 0x17
	.word	2                               # 0x2
	.word	50                              # 0x32
	.word	14                              # 0xe
	.word	62                              # 0x3e
	.word	1                               # 0x1
	.word	49                              # 0x31
	.word	13                              # 0xd
	.word	61                              # 0x3d
	.word	34                              # 0x22
	.word	18                              # 0x12
	.word	46                              # 0x2e
	.word	30                              # 0x1e
	.word	33                              # 0x21
	.word	17                              # 0x11
	.word	45                              # 0x2d
	.word	29                              # 0x1d
	.word	10                              # 0xa
	.word	58                              # 0x3a
	.word	6                               # 0x6
	.word	54                              # 0x36
	.word	9                               # 0x9
	.word	57                              # 0x39
	.word	5                               # 0x5
	.word	53                              # 0x35
	.word	42                              # 0x2a
	.word	26                              # 0x1a
	.word	38                              # 0x26
	.word	22                              # 0x16
	.word	41                              # 0x29
	.word	25                              # 0x19
	.word	37                              # 0x25
	.word	21                              # 0x15
	.size	.L__const.orderedDitherKernel.dither.3, 256

	.section	".note.GNU-stack","",@progbits
	.addrsig
