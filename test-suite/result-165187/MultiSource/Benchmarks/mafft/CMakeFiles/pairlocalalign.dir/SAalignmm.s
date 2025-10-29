	.file	"SAalignmm.c"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function Aalign
.LCPI0_0:
	.dword	0x3ff199999999999a              # double 1.1000000000000001
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI0_1:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.text
	.globl	Aalign
	.p2align	5
	.type	Aalign,@function
Aalign:                                 # @Aalign
# %bb.0:
	addi.d	$sp, $sp, -272
	st.d	$ra, $sp, 264                   # 8-byte Folded Spill
	st.d	$fp, $sp, 256                   # 8-byte Folded Spill
	st.d	$s0, $sp, 248                   # 8-byte Folded Spill
	st.d	$s1, $sp, 240                   # 8-byte Folded Spill
	st.d	$s2, $sp, 232                   # 8-byte Folded Spill
	st.d	$s3, $sp, 224                   # 8-byte Folded Spill
	st.d	$s4, $sp, 216                   # 8-byte Folded Spill
	st.d	$s5, $sp, 208                   # 8-byte Folded Spill
	st.d	$s6, $sp, 200                   # 8-byte Folded Spill
	st.d	$s7, $sp, 192                   # 8-byte Folded Spill
	st.d	$s8, $sp, 184                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 176                  # 8-byte Folded Spill
	pcalau12i	$s6, %pc_hi20(Aalign.orlgth1)
	ld.w	$s7, $s6, %pc_lo12(Aalign.orlgth1)
	st.d	$a6, $sp, 24                    # 8-byte Folded Spill
	move	$fp, $a5
	move	$s1, $a4
	st.d	$a3, $sp, 80                    # 8-byte Folded Spill
	st.d	$a2, $sp, 48                    # 8-byte Folded Spill
	move	$s0, $a1
	move	$s2, $a0
	pcalau12i	$a0, %pc_hi20(Aalign.mseq1)
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Aalign.mseq2)
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	bnez	$s7, .LBB0_2
# %bb.1:
	pcalau12i	$a0, %got_pc_hi20(njob)
	ld.d	$s3, $a0, %got_pc_lo12(njob)
	ld.w	$a0, $s3, 0
	ori	$a1, $zero, 1
	pcaddu18i	$ra, %call36(AllocateCharMtx)
	jirl	$ra, $ra, 0
	ld.w	$a2, $s3, 0
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Aalign.mseq1)
	ori	$a1, $zero, 1
	move	$a0, $a2
	pcaddu18i	$ra, %call36(AllocateCharMtx)
	jirl	$ra, $ra, 0
	ld.w	$s7, $s6, %pc_lo12(Aalign.orlgth1)
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Aalign.mseq2)
.LBB0_2:
	ld.d	$a0, $s2, 0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, 0
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	addi.w	$s4, $a0, 0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	pcalau12i	$a6, %pc_hi20(Aalign.orlgth2)
	ld.w	$s5, $a6, %pc_lo12(Aalign.orlgth2)
	addi.w	$a0, $a0, 0
	pcalau12i	$a1, %pc_hi20(Aalign.currentw)
	st.d	$a1, $sp, 168                   # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(Aalign.initverticalw)
	st.d	$a1, $sp, 160                   # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(Aalign.lastverticalw)
	st.d	$a1, $sp, 152                   # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(Aalign.m)
	st.d	$a1, $sp, 64                    # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(Aalign.mp)
	st.d	$a1, $sp, 56                    # 8-byte Folded Spill
	pcalau12i	$s8, %pc_hi20(Aalign.mseq)
	pcalau12i	$a1, %pc_hi20(Aalign.cpmx1)
	st.d	$a1, $sp, 144                   # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(Aalign.cpmx2)
	st.d	$a1, $sp, 136                   # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(Aalign.floatwork)
	st.d	$a1, $sp, 128                   # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(Aalign.intwork)
	st.d	$a1, $sp, 120                   # 8-byte Folded Spill
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	st.d	$s3, $sp, 88                    # 8-byte Folded Spill
	st.d	$s4, $sp, 104                   # 8-byte Folded Spill
	blt	$s7, $s4, .LBB0_135
# %bb.3:
	blt	$s5, $a0, .LBB0_135
# %bb.4:
	blez	$s1, .LBB0_12
.LBB0_5:                                # %.lr.ph
	ld.d	$a0, $s8, %pc_lo12(Aalign.mseq)
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(Aalign.mseq1)
	ori	$a3, $zero, 4
	move	$a2, $zero
	bltu	$s1, $a3, .LBB0_10
# %bb.6:                                # %.lr.ph
	sub.d	$a3, $a1, $a0
	ori	$a4, $zero, 32
	bltu	$a3, $a4, .LBB0_10
# %bb.7:                                # %vector.ph
	bstrpick.d	$a2, $s1, 30, 2
	slli.d	$a2, $a2, 2
	addi.d	$a3, $a1, 16
	addi.d	$a4, $a0, 16
	move	$a5, $a2
	.p2align	4, , 16
.LBB0_8:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a4, -16
	vld	$vr1, $a4, 0
	vst	$vr0, $a3, -16
	vst	$vr1, $a3, 0
	addi.d	$a5, $a5, -4
	addi.d	$a3, $a3, 32
	addi.d	$a4, $a4, 32
	bnez	$a5, .LBB0_8
# %bb.9:                                # %middle.block
	beq	$a2, $s1, .LBB0_12
.LBB0_10:                               # %scalar.ph.preheader
	alsl.d	$a1, $a2, $a1, 3
	alsl.d	$a0, $a2, $a0, 3
	sub.d	$a2, $s1, $a2
	.p2align	4, , 16
.LBB0_11:                               # %scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $a0, 0
	st.d	$a3, $a1, 0
	addi.d	$a1, $a1, 8
	addi.d	$a2, $a2, -1
	addi.d	$a0, $a0, 8
	bnez	$a2, .LBB0_11
.LBB0_12:                               # %.preheader177
	blez	$fp, .LBB0_18
# %bb.13:                               # %.lr.ph181
	ld.d	$a0, $s8, %pc_lo12(Aalign.mseq)
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(Aalign.mseq2)
	ori	$a2, $zero, 6
	bltu	$fp, $a2, .LBB0_15
# %bb.14:                               # %vector.memcheck298
	alsl.d	$a2, $s1, $a0, 3
	sub.d	$a2, $a1, $a2
	ori	$a3, $zero, 32
	bgeu	$a2, $a3, .LBB0_132
.LBB0_15:
	move	$a2, $zero
.LBB0_16:                               # %scalar.ph300.preheader
	slli.d	$a3, $a2, 3
	alsl.d	$a3, $s1, $a3, 3
	add.d	$a0, $a0, $a3
	alsl.d	$a1, $a2, $a1, 3
	sub.d	$a2, $fp, $a2
	.p2align	4, , 16
.LBB0_17:                               # %scalar.ph300
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $a0, 0
	st.d	$a3, $a1, 0
	addi.d	$a0, $a0, 8
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, 8
	bnez	$a2, .LBB0_17
.LBB0_18:                               # %._crit_edge
	pcalau12i	$a0, %got_pc_hi20(commonAlloc1)
	ld.d	$s3, $a0, %got_pc_lo12(commonAlloc1)
	ld.w	$a0, $s3, 0
	pcalau12i	$a1, %got_pc_hi20(commonAlloc2)
	ld.d	$s4, $a1, %got_pc_lo12(commonAlloc2)
	ld.w	$a1, $s4, 0
	blt	$a0, $s7, .LBB0_139
# %bb.19:                               # %._crit_edge
	blt	$a1, $s5, .LBB0_139
.LBB0_20:
	pcalau12i	$a0, %got_pc_hi20(commonIP)
	ld.d	$a0, $a0, %got_pc_lo12(commonIP)
	ld.d	$a1, $a0, 0
	ld.d	$s4, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s3, $s4, %pc_lo12(Aalign.cpmx1)
	ld.d	$a0, $s2, 0
	pcalau12i	$a2, %pc_hi20(Aalign.ijp)
	st.d	$a2, $sp, 72                    # 8-byte Folded Spill
	st.d	$a1, $a2, %pc_lo12(Aalign.ijp)
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.w	$a3, $a0, 0
	move	$a0, $s2
	move	$a1, $s3
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	move	$a4, $s1
	pcaddu18i	$ra, %call36(cpmx_calc)
	jirl	$ra, $ra, 0
	ld.d	$s5, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s3, $s5, %pc_lo12(Aalign.cpmx2)
	ld.d	$a0, $s0, 0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.w	$a3, $a0, 0
	move	$a0, $s0
	move	$a1, $s3
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	move	$a4, $fp
	pcaddu18i	$ra, %call36(cpmx_calc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a1, $a0, %pc_lo12(Aalign.initverticalw)
	ld.d	$s5, $s5, %pc_lo12(Aalign.cpmx2)
	ld.d	$s6, $s4, %pc_lo12(Aalign.cpmx1)
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s8, $a0, %pc_lo12(Aalign.floatwork)
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s3, $a0, %pc_lo12(Aalign.intwork)
	ori	$a7, $zero, 1
	st.d	$a1, $sp, 80                    # 8-byte Folded Spill
	move	$a0, $a1
	move	$a1, $s5
	move	$a2, $s6
	move	$a3, $zero
	ld.d	$s4, $sp, 104                   # 8-byte Folded Reload
	move	$a4, $s4
	move	$a5, $s8
	move	$a6, $s3
	pcaddu18i	$ra, %call36(match_calc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s7, $a0, %pc_lo12(Aalign.currentw)
	ori	$a7, $zero, 1
	move	$a0, $s7
	move	$a1, $s6
	move	$a2, $s5
	move	$a3, $zero
	ld.d	$s5, $sp, 112                   # 8-byte Folded Reload
	move	$a4, $s5
	move	$a5, $s8
	move	$a6, $s3
	pcaddu18i	$ra, %call36(match_calc)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(outgap)
	ld.d	$t2, $a0, %got_pc_lo12(outgap)
	ld.w	$a7, $t2, 0
	ld.d	$t1, $sp, 88                    # 8-byte Folded Reload
	addi.d	$a0, $t1, 1
	ld.d	$t0, $sp, 96                    # 8-byte Folded Reload
	ori	$a1, $zero, 1
	bne	$a7, $a1, .LBB0_35
# %bb.21:                               # %.preheader176
	blez	$s4, .LBB0_28
# %bb.22:                               # %.lr.ph184
	pcalau12i	$a1, %got_pc_hi20(penalty)
	ld.d	$a1, $a1, %got_pc_lo12(penalty)
	ld.w	$a1, $a1, 0
	movgr2fr.w	$fa0, $a1
	ffint.d.w	$fa0, $fa0
	addi.d	$a1, $t0, 1
	bstrpick.d	$a1, $a1, 31, 0
	addi.d	$a2, $a1, -1
	ori	$a4, $zero, 4
	ori	$a3, $zero, 1
	bltu	$a2, $a4, .LBB0_26
# %bb.23:                               # %vector.ph315
	move	$a4, $a2
	bstrins.d	$a4, $zero, 1, 0
	ori	$a5, $zero, 1
	move	$a3, $a2
	bstrins.d	$a3, $a5, 1, 0
	vreplvei.d	$vr1, $vr0, 0
	ld.d	$a5, $sp, 80                    # 8-byte Folded Reload
	addi.d	$a5, $a5, 4
	vldi	$vr2, -928
	move	$a6, $a4
	.p2align	4, , 16
.LBB0_24:                               # %vector.body318
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr3, $a5, 0
	vreplvei.w	$vr4, $vr3, 1
	fcvt.d.s	$fa4, $fa4
	vreplvei.w	$vr5, $vr3, 0
	fcvt.d.s	$fa5, $fa5
	vextrins.d	$vr5, $vr4, 16
	vreplvei.w	$vr4, $vr3, 3
	fcvt.d.s	$fa4, $fa4
	vreplvei.w	$vr3, $vr3, 2
	fcvt.d.s	$fa3, $fa3
	vextrins.d	$vr3, $vr4, 16
	vfmadd.d	$vr3, $vr1, $vr2, $vr3
	vfmadd.d	$vr4, $vr1, $vr2, $vr5
	vreplvei.d	$vr5, $vr4, 1
	fcvt.s.d	$fa5, $fa5
	vreplvei.d	$vr4, $vr4, 0
	fcvt.s.d	$fa4, $fa4
	vextrins.w	$vr4, $vr5, 16
	vreplvei.d	$vr5, $vr3, 0
	fcvt.s.d	$fa5, $fa5
	vextrins.w	$vr4, $vr5, 32
	vreplvei.d	$vr3, $vr3, 1
	fcvt.s.d	$fa3, $fa3
	vextrins.w	$vr4, $vr3, 48
	vst	$vr4, $a5, 0
	addi.d	$a6, $a6, -4
	addi.d	$a5, $a5, 16
	bnez	$a6, .LBB0_24
# %bb.25:                               # %middle.block322
	beq	$a2, $a4, .LBB0_28
.LBB0_26:                               # %scalar.ph313.preheader
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	alsl.d	$a2, $a3, $a2, 2
	sub.d	$a1, $a1, $a3
	vldi	$vr1, -928
	.p2align	4, , 16
.LBB0_27:                               # %scalar.ph313
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa2, $a2, 0
	fcvt.d.s	$fa2, $fa2
	fmadd.d	$fa2, $fa0, $fa1, $fa2
	fcvt.s.d	$fa2, $fa2
	fst.s	$fa2, $a2, 0
	addi.d	$a1, $a1, -1
	addi.d	$a2, $a2, 4
	bnez	$a1, .LBB0_27
.LBB0_28:                               # %.preheader175
	blez	$s5, .LBB0_35
# %bb.29:                               # %.lr.ph187
	pcalau12i	$a1, %got_pc_hi20(penalty)
	ld.d	$a1, $a1, %got_pc_lo12(penalty)
	ld.w	$a1, $a1, 0
	movgr2fr.w	$fa0, $a1
	ffint.d.w	$fa0, $fa0
	bstrpick.d	$a1, $a0, 31, 0
	addi.d	$a2, $a1, -1
	ori	$a4, $zero, 4
	ori	$a3, $zero, 1
	bltu	$a2, $a4, .LBB0_33
# %bb.30:                               # %vector.ph327
	move	$a4, $a2
	bstrins.d	$a4, $zero, 1, 0
	ori	$a5, $zero, 1
	move	$a3, $a2
	bstrins.d	$a3, $a5, 1, 0
	vreplvei.d	$vr1, $vr0, 0
	addi.d	$a5, $s7, 4
	vldi	$vr2, -928
	move	$a6, $a4
	.p2align	4, , 16
.LBB0_31:                               # %vector.body332
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr3, $a5, 0
	vreplvei.w	$vr4, $vr3, 1
	fcvt.d.s	$fa4, $fa4
	vreplvei.w	$vr5, $vr3, 0
	fcvt.d.s	$fa5, $fa5
	vextrins.d	$vr5, $vr4, 16
	vreplvei.w	$vr4, $vr3, 3
	fcvt.d.s	$fa4, $fa4
	vreplvei.w	$vr3, $vr3, 2
	fcvt.d.s	$fa3, $fa3
	vextrins.d	$vr3, $vr4, 16
	vfmadd.d	$vr3, $vr1, $vr2, $vr3
	vfmadd.d	$vr4, $vr1, $vr2, $vr5
	vreplvei.d	$vr5, $vr4, 1
	fcvt.s.d	$fa5, $fa5
	vreplvei.d	$vr4, $vr4, 0
	fcvt.s.d	$fa4, $fa4
	vextrins.w	$vr4, $vr5, 16
	vreplvei.d	$vr5, $vr3, 0
	fcvt.s.d	$fa5, $fa5
	vextrins.w	$vr4, $vr5, 32
	vreplvei.d	$vr3, $vr3, 1
	fcvt.s.d	$fa3, $fa3
	vextrins.w	$vr4, $vr3, 48
	vst	$vr4, $a5, 0
	addi.d	$a6, $a6, -4
	addi.d	$a5, $a5, 16
	bnez	$a6, .LBB0_31
# %bb.32:                               # %middle.block337
	beq	$a2, $a4, .LBB0_36
.LBB0_33:                               # %scalar.ph325.preheader
	alsl.d	$a2, $a3, $s7, 2
	sub.d	$a1, $a1, $a3
	vldi	$vr1, -928
	.p2align	4, , 16
.LBB0_34:                               # %scalar.ph325
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa2, $a2, 0
	fcvt.d.s	$fa2, $fa2
	fmadd.d	$fa2, $fa0, $fa1, $fa2
	fcvt.s.d	$fa2, $fa2
	fst.s	$fa2, $a2, 0
	addi.d	$a1, $a1, -1
	addi.d	$a2, $a2, 4
	bnez	$a1, .LBB0_34
	b	.LBB0_36
.LBB0_35:                               # %.loopexit
	bltz	$s5, .LBB0_46
.LBB0_36:                               # %.lr.ph191
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(Aalign.m)
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(Aalign.mp)
	addi.w	$a0, $a0, 0
	ori	$a3, $zero, 7
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	bstrpick.d	$a0, $a0, 31, 0
	bgeu	$s5, $a3, .LBB0_41
# %bb.37:
	move	$a3, $zero
.LBB0_38:                               # %scalar.ph347.preheader
	alsl.d	$a4, $a3, $s7, 2
	addi.d	$a4, $a4, -4
	alsl.d	$a1, $a3, $a1, 2
	alsl.d	$a2, $a3, $a2, 2
	sub.d	$a0, $a0, $a3
	pcalau12i	$a3, %got_pc_hi20(penalty)
	ld.d	$a3, $a3, %got_pc_lo12(penalty)
	vldi	$vr0, -928
	.p2align	4, , 16
.LBB0_39:                               # %scalar.ph347
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa1, $a4, 0
	ld.w	$a5, $a3, 0
	fcvt.d.s	$fa1, $fa1
	movgr2fr.w	$fa2, $a5
	ffint.d.w	$fa2, $fa2
	fmadd.d	$fa1, $fa2, $fa0, $fa1
	fcvt.s.d	$fa1, $fa1
	fst.s	$fa1, $a1, 0
	st.w	$zero, $a2, 0
	addi.d	$a4, $a4, 4
	addi.d	$a1, $a1, 4
	addi.d	$a0, $a0, -1
	addi.d	$a2, $a2, 4
	bnez	$a0, .LBB0_39
.LBB0_40:                               # %._crit_edge192.loopexit
	ld.w	$a7, $t2, 0
	b	.LBB0_47
.LBB0_41:                               # %vector.memcheck340
	alsl.d	$a3, $a0, $a1, 2
	addi.d	$a4, $s7, -4
	alsl.d	$a5, $a0, $a4, 2
	sltu	$a5, $a1, $a5
	sltu	$a3, $a4, $a3
	and	$a5, $a5, $a3
	move	$a3, $zero
	bnez	$a5, .LBB0_38
# %bb.42:                               # %vector.memcheck340
	alsl.d	$a6, $a0, $a2, 2
	pcalau12i	$a5, %got_pc_hi20(penalty)
	ld.d	$a5, $a5, %got_pc_lo12(penalty)
	addi.d	$a7, $a5, 4
	sltu	$a7, $a2, $a7
	sltu	$a6, $a5, $a6
	and	$a6, $a7, $a6
	bnez	$a6, .LBB0_38
# %bb.43:                               # %vector.ph349
	ld.w	$a5, $a5, 0
	bstrpick.d	$a3, $a0, 31, 2
	slli.d	$a3, $a3, 2
	movgr2fr.w	$fa0, $a5
	ffint.d.w	$fa0, $fa0
	vreplvei.d	$vr0, $vr0, 0
	vldi	$vr1, -928
	vrepli.b	$vr2, 0
	move	$a5, $a1
	move	$a6, $a2
	move	$a7, $a3
	.p2align	4, , 16
.LBB0_44:                               # %vector.body352
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr3, $a4, 0
	vreplvei.w	$vr4, $vr3, 1
	fcvt.d.s	$fa4, $fa4
	vreplvei.w	$vr5, $vr3, 0
	fcvt.d.s	$fa5, $fa5
	vextrins.d	$vr5, $vr4, 16
	vreplvei.w	$vr4, $vr3, 3
	fcvt.d.s	$fa4, $fa4
	vreplvei.w	$vr3, $vr3, 2
	fcvt.d.s	$fa3, $fa3
	vextrins.d	$vr3, $vr4, 16
	vfmadd.d	$vr3, $vr0, $vr1, $vr3
	vfmadd.d	$vr4, $vr0, $vr1, $vr5
	vreplvei.d	$vr5, $vr4, 1
	fcvt.s.d	$fa5, $fa5
	vreplvei.d	$vr4, $vr4, 0
	fcvt.s.d	$fa4, $fa4
	vextrins.w	$vr4, $vr5, 16
	vreplvei.d	$vr5, $vr3, 0
	fcvt.s.d	$fa5, $fa5
	vextrins.w	$vr4, $vr5, 32
	vreplvei.d	$vr3, $vr3, 1
	fcvt.s.d	$fa3, $fa3
	vextrins.w	$vr4, $vr3, 48
	vst	$vr4, $a5, 0
	vst	$vr2, $a6, 0
	addi.d	$a7, $a7, -4
	addi.d	$a6, $a6, 16
	addi.d	$a5, $a5, 16
	addi.d	$a4, $a4, 16
	bnez	$a7, .LBB0_44
# %bb.45:                               # %middle.block358
	bne	$a3, $a0, .LBB0_38
	b	.LBB0_40
.LBB0_46:                               # %.loopexit.._crit_edge192_crit_edge
	addi.w	$a0, $a0, 0
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
.LBB0_47:                               # %._crit_edge192
	slli.d	$a0, $t1, 32
	ori	$a1, $zero, 0
	lu32i.d	$a1, -1
	add.d	$a0, $a0, $a1
	srai.d	$a1, $a0, 30
	fldx.s	$fa0, $s7, $a1
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s8, $a1, %pc_lo12(Aalign.lastverticalw)
	sltu	$a1, $zero, $a7
	add.w	$a2, $a1, $t0
	ori	$a1, $zero, 2
	fst.s	$fa0, $s8, 0
	st.d	$a2, $sp, 96                    # 8-byte Folded Spill
	blt	$a2, $a1, .LBB0_59
# %bb.48:                               # %.lr.ph201
	st.d	$t2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s0, $sp, 16                    # 8-byte Folded Spill
	srai.d	$a0, $a0, 32
	pcalau12i	$a1, %pc_hi20(Aalign.previousw)
	st.d	$a1, $sp, 88                    # 8-byte Folded Spill
	ld.d	$s6, $a1, %pc_lo12(Aalign.previousw)
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	bstrpick.d	$a1, $a1, 31, 0
	addi.d	$a1, $a1, -1
	st.d	$a1, $sp, 48                    # 8-byte Folded Spill
	movgr2fr.w	$fs0, $zero
	ori	$s5, $zero, 1
	slli.d	$a0, $a0, 2
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(penalty)
	ld.d	$s3, $a0, %got_pc_lo12(penalty)
	b	.LBB0_50
	.p2align	4, , 16
.LBB0_49:                               # %._crit_edge197
                                        #   in Loop: Header=BB0_50 Depth=1
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	fldx.s	$fa0, $s7, $a1
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s8, $a1, %pc_lo12(Aalign.lastverticalw)
	addi.d	$s5, $s5, 1
	fstx.s	$fa0, $s8, $a0
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	beq	$s5, $a0, .LBB0_60
.LBB0_50:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_53 Depth 2
	move	$a0, $s6
	move	$a1, $s7
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(floatncpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s8, $a0, %pc_lo12(Aalign.initverticalw)
	addi.d	$s4, $s5, -1
	slli.d	$a0, $s4, 2
	fldx.s	$fa0, $s8, $a0
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s6, $a0, %pc_lo12(Aalign.previousw)
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s7, $a0, %pc_lo12(Aalign.currentw)
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a1, $a0, %pc_lo12(Aalign.cpmx1)
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a2, $a0, %pc_lo12(Aalign.cpmx2)
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a5, $a0, %pc_lo12(Aalign.floatwork)
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a6, $a0, %pc_lo12(Aalign.intwork)
	fst.s	$fa0, $s6, 0
	move	$a0, $s7
	move	$a3, $s5
	ld.d	$s0, $sp, 112                   # 8-byte Folded Reload
	move	$a4, $s0
	move	$a7, $zero
	pcaddu18i	$ra, %call36(match_calc)
	jirl	$ra, $ra, 0
	vldi	$vr6, -928
	slli.d	$a0, $s5, 2
	fldx.s	$fa0, $s8, $a0
	fst.s	$fa0, $s7, 0
	blez	$s0, .LBB0_49
# %bb.51:                               # %.lr.ph196
                                        #   in Loop: Header=BB0_50 Depth=1
	ld.w	$a3, $s3, 0
	fld.s	$fa0, $s6, 0
	move	$a1, $zero
	move	$a2, $zero
	movgr2fr.w	$fa1, $a3
	ffint.d.w	$fa1, $fa1
	fcvt.d.s	$fa0, $fa0
	fmadd.d	$fa0, $fa1, $fa6, $fa0
	fcvt.s.d	$fa0, $fa0
	ld.d	$a3, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a3, $a3, %pc_lo12(Aalign.ijp)
	slli.d	$a4, $s5, 3
	ld.d	$a5, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a5, $a5, %pc_lo12(Aalign.mp)
	ld.d	$a6, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a6, $a6, %pc_lo12(Aalign.m)
	ldx.d	$a7, $a3, $a4
	addi.d	$a3, $s7, 4
	addi.d	$a4, $a5, 4
	addi.d	$a5, $a6, 4
	addi.d	$a6, $a7, 4
	ld.d	$a7, $sp, 48                    # 8-byte Folded Reload
	addi.d	$t0, $zero, -1
	move	$t1, $s6
	b	.LBB0_53
	.p2align	4, , 16
.LBB0_52:                               #   in Loop: Header=BB0_53 Depth=2
	fcmp.cult.s	$fcc0, $fa2, $fa0
	fsel	$fa0, $fa2, $fa0, $fcc0
	movcf2gr	$t2, $fcc0
	fld.s	$fa1, $a3, 0
	masknez	$t3, $a1, $t2
	maskeqz	$a2, $a2, $t2
	or	$a2, $a2, $t3
	fadd.s	$fa1, $fs0, $fa1
	fst.s	$fa1, $a3, 0
	addi.d	$t1, $t1, 4
	addi.d	$a1, $a1, 1
	addi.d	$a3, $a3, 4
	addi.d	$a4, $a4, 4
	addi.d	$a5, $a5, 4
	addi.d	$a6, $a6, 4
	addi.d	$a7, $a7, -1
	addi.d	$t0, $t0, -1
	beqz	$a7, .LBB0_49
.LBB0_53:                               #   Parent Loop BB0_50 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.w	$zero, $a6, 0
	ld.w	$t2, $s3, 0
	fld.s	$fa1, $t1, 0
	movgr2fr.w	$fa2, $t2
	ffint.d.w	$fa2, $fa2
	fmul.d	$fa2, $fa2, $fa6
	fcvt.s.d	$fa4, $fa2
	fadd.s	$fa2, $fa0, $fa4
	fcmp.cule.s	$fcc0, $fa2, $fa1
	fmov.s	$fs0, $fa1
	bcnez	$fcc0, .LBB0_55
# %bb.54:                               #   in Loop: Header=BB0_53 Depth=2
	add.d	$t2, $a2, $t0
	st.w	$t2, $a6, 0
	ld.w	$t2, $s3, 0
	movgr2fr.w	$fa3, $t2
	ffint.d.w	$fa3, $fa3
	fmul.d	$fa3, $fa3, $fa6
	fcvt.s.d	$fa4, $fa3
	fmov.s	$fs0, $fa2
.LBB0_55:                               #   in Loop: Header=BB0_53 Depth=2
	fld.s	$fa3, $a5, 0
	fadd.s	$fa2, $fa1, $fa4
	fadd.s	$fa4, $fa3, $fa4
	fcmp.cule.s	$fcc0, $fa4, $fs0
	fmov.s	$fa5, $fa2
	bcnez	$fcc0, .LBB0_57
# %bb.56:                               #   in Loop: Header=BB0_53 Depth=2
	ld.w	$t2, $a4, 0
	sub.d	$t2, $s5, $t2
	st.w	$t2, $a6, 0
	ld.w	$t2, $s3, 0
	movgr2fr.w	$fa5, $t2
	ffint.d.w	$fa5, $fa5
	fmul.d	$fa5, $fa5, $fa6
	fcvt.s.d	$fa5, $fa5
	fadd.s	$fa5, $fa1, $fa5
	fmov.s	$fs0, $fa4
.LBB0_57:                               #   in Loop: Header=BB0_53 Depth=2
	fcmp.cult.s	$fcc0, $fa5, $fa3
	bcnez	$fcc0, .LBB0_52
# %bb.58:                               #   in Loop: Header=BB0_53 Depth=2
	fst.s	$fa5, $a5, 0
	st.w	$s4, $a4, 0
	b	.LBB0_52
.LBB0_59:
	movgr2fr.w	$fs0, $zero
	st.d	$a7, $sp, 168                   # 8-byte Folded Spill
	b	.LBB0_61
.LBB0_60:                               # %._crit_edge202.loopexit
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	st.d	$a0, $sp, 168                   # 8-byte Folded Spill
	ld.d	$s0, $sp, 16                    # 8-byte Folded Reload
.LBB0_61:                               # %._crit_edge202
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s4, $a0, %pc_lo12(Aalign.mseq1)
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s5, $a0, %pc_lo12(Aalign.mseq2)
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s6, $a0, %pc_lo12(Aalign.ijp)
	ld.d	$a0, $s2, 0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, 0
	move	$s3, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ori	$a3, $zero, 1
	addi.w	$a2, $s3, 0
	addi.w	$a1, $a0, 0
	ld.d	$a4, $sp, 168                   # 8-byte Folded Reload
	beq	$a4, $a3, .LBB0_72
# %bb.62:
	fld.s	$fa0, $s8, 0
	blez	$a2, .LBB0_67
# %bb.63:                               # %.lr.ph.i
	slli.d	$a3, $s3, 3
	bstrpick.d	$a3, $a3, 33, 3
	slli.d	$a3, $a3, 3
	slli.d	$a4, $a0, 32
	srai.d	$a4, $a4, 30
	bstrpick.d	$a5, $s3, 30, 0
	move	$a6, $s3
	b	.LBB0_65
	.p2align	4, , 16
.LBB0_64:                               #   in Loop: Header=BB0_65 Depth=1
	addi.d	$a5, $a5, -1
	addi.d	$a6, $a6, -1
	addi.d	$s8, $s8, 4
	beqz	$a5, .LBB0_67
.LBB0_65:                               # =>This Inner Loop Header: Depth=1
	fld.s	$fa1, $s8, 0
	fcmp.cult.s	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB0_64
# %bb.66:                               #   in Loop: Header=BB0_65 Depth=1
	ldx.d	$a7, $s6, $a3
	stx.w	$a6, $a7, $a4
	fmov.s	$fa0, $fa1
	b	.LBB0_64
.LBB0_67:                               # %.preheader10.i
	blez	$a1, .LBB0_72
# %bb.68:                               # %.lr.ph15.i
	slli.d	$a3, $s3, 32
	srai.d	$a3, $a3, 29
	slli.d	$a4, $a0, 2
	bstrpick.d	$a4, $a4, 32, 2
	slli.d	$a4, $a4, 2
	bstrpick.d	$a5, $a0, 30, 0
	sub.d	$a6, $zero, $a0
	b	.LBB0_70
	.p2align	4, , 16
.LBB0_69:                               #   in Loop: Header=BB0_70 Depth=1
	addi.d	$a5, $a5, -1
	addi.d	$a6, $a6, 1
	addi.d	$s7, $s7, 4
	beqz	$a5, .LBB0_72
.LBB0_70:                               # =>This Inner Loop Header: Depth=1
	fld.s	$fa1, $s7, 0
	fcmp.cult.s	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB0_69
# %bb.71:                               #   in Loop: Header=BB0_70 Depth=1
	ldx.d	$a7, $s6, $a3
	stx.w	$a6, $a7, $a4
	fmov.s	$fa0, $fa1
	b	.LBB0_69
.LBB0_72:                               # %.loopexit.i
	bltz	$a2, .LBB0_80
# %bb.73:                               # %.lr.ph18.preheader.i
	addi.d	$a3, $s3, 1
	bstrpick.d	$a2, $a3, 31, 0
	ori	$a4, $zero, 2
	bgeu	$a2, $a4, .LBB0_75
# %bb.74:
	move	$a3, $zero
	b	.LBB0_78
.LBB0_75:                               # %vector.ph363
	bstrpick.d	$a3, $a3, 31, 1
	slli.d	$a3, $a3, 1
	addi.d	$a5, $s6, 8
	move	$a6, $a3
	.p2align	4, , 16
.LBB0_76:                               # %vector.body366
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a7, $a5, -8
	ld.d	$t0, $a5, 0
	addi.d	$t1, $a4, -1
	st.w	$t1, $a7, 0
	st.w	$a4, $t0, 0
	addi.d	$a4, $a4, 2
	addi.d	$a6, $a6, -2
	addi.d	$a5, $a5, 16
	bnez	$a6, .LBB0_76
# %bb.77:                               # %middle.block369
	beq	$a2, $a3, .LBB0_80
.LBB0_78:                               # %.lr.ph18.i.preheader
	alsl.d	$a4, $a3, $s6, 3
	sub.d	$a2, $a2, $a3
	addi.d	$a3, $a3, 1
	.p2align	4, , 16
.LBB0_79:                               # %.lr.ph18.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a5, $a4, 0
	st.w	$a3, $a5, 0
	addi.d	$a4, $a4, 8
	addi.d	$a2, $a2, -1
	addi.d	$a3, $a3, 1
	bnez	$a2, .LBB0_79
.LBB0_80:                               # %.preheader9.i
	bltz	$a1, .LBB0_88
# %bb.81:                               # %.lr.ph21.i
	ld.d	$a1, $s6, 0
	addi.d	$a3, $a0, 1
	bstrpick.d	$a2, $a3, 31, 0
	ori	$a4, $zero, 8
	bgeu	$a2, $a4, .LBB0_83
# %bb.82:
	move	$a3, $zero
	b	.LBB0_86
.LBB0_83:                               # %vector.ph374
	bstrpick.d	$a3, $a3, 31, 3
	slli.d	$a3, $a3, 3
	pcalau12i	$a4, %pc_hi20(.LCPI0_1)
	vld	$vr0, $a4, %pc_lo12(.LCPI0_1)
	addi.d	$a4, $a1, 16
	vrepli.b	$vr1, -1
	vrepli.w	$vr2, -5
	move	$a5, $a3
	.p2align	4, , 16
.LBB0_84:                               # %vector.body377
                                        # =>This Inner Loop Header: Depth=1
	vxor.v	$vr3, $vr0, $vr1
	vsub.w	$vr4, $vr2, $vr0
	vst	$vr3, $a4, -16
	vst	$vr4, $a4, 0
	vaddi.wu	$vr0, $vr0, 8
	addi.d	$a5, $a5, -8
	addi.d	$a4, $a4, 32
	bnez	$a5, .LBB0_84
# %bb.85:                               # %middle.block380
	beq	$a2, $a3, .LBB0_88
.LBB0_86:                               # %scalar.ph372.preheader
	alsl.d	$a1, $a3, $a1, 2
	nor	$a4, $a3, $zero
	sub.d	$a2, $a2, $a3
	.p2align	4, , 16
.LBB0_87:                               # %scalar.ph372
                                        # =>This Inner Loop Header: Depth=1
	st.w	$a4, $a1, 0
	addi.d	$a1, $a1, 4
	addi.d	$a2, $a2, -1
	addi.d	$a4, $a4, -1
	bnez	$a2, .LBB0_87
.LBB0_88:                               # %.preheader8.i
	add.w	$a1, $a0, $s3
	blez	$s1, .LBB0_91
# %bb.89:                               # %.lr.ph23.i
	move	$a2, $s4
	move	$a3, $s1
	.p2align	4, , 16
.LBB0_90:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a4, $a2, 0
	add.d	$a5, $a4, $a1
	st.d	$a5, $a2, 0
	stx.b	$zero, $a4, $a1
	addi.d	$a3, $a3, -1
	addi.d	$a2, $a2, 8
	bnez	$a3, .LBB0_90
.LBB0_91:                               # %.preheader7.i
	blez	$fp, .LBB0_94
# %bb.92:                               # %.lr.ph25.i
	move	$a2, $s5
	move	$a3, $fp
	.p2align	4, , 16
.LBB0_93:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a4, $a2, 0
	add.d	$a5, $a4, $a1
	st.d	$a5, $a2, 0
	stx.b	$zero, $a4, $a1
	addi.d	$a3, $a3, -1
	addi.d	$a2, $a2, 8
	bnez	$a3, .LBB0_93
.LBB0_94:                               # %.preheader6.i
	bltz	$a1, .LBB0_123
# %bb.95:                               # %.lr.ph52.i
	move	$a2, $zero
	bstrpick.d	$a3, $s1, 31, 0
	bstrpick.d	$a4, $fp, 31, 0
	addi.w	$a5, $zero, -1
	ori	$a6, $zero, 45
	b	.LBB0_97
	.p2align	4, , 16
.LBB0_96:                               # %._crit_edge47.i
                                        #   in Loop: Header=BB0_97 Depth=1
	addi.w	$a2, $a2, 2
	move	$s3, $a7
	blt	$a1, $a2, .LBB0_123
.LBB0_97:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_105 Depth 2
                                        #       Child Loop BB0_106 Depth 3
                                        #       Child Loop BB0_108 Depth 3
                                        #     Child Loop BB0_110 Depth 2
                                        #       Child Loop BB0_111 Depth 3
                                        #       Child Loop BB0_113 Depth 3
                                        #     Child Loop BB0_119 Depth 2
                                        #     Child Loop BB0_122 Depth 2
	addi.w	$t0, $s3, 0
	slli.d	$a7, $t0, 3
	ldx.d	$a7, $s6, $a7
	addi.w	$t1, $a0, 0
	slli.d	$t2, $t1, 2
	ldx.w	$t2, $a7, $t2
	bltz	$t2, .LBB0_100
# %bb.98:                               #   in Loop: Header=BB0_97 Depth=1
	beqz	$t2, .LBB0_101
# %bb.99:                               #   in Loop: Header=BB0_97 Depth=1
	sub.w	$a7, $s3, $t2
	move	$t2, $a5
	nor	$t3, $a7, $zero
	add.w	$t3, $s3, $t3
	bnez	$t3, .LBB0_105
	b	.LBB0_102
	.p2align	4, , 16
.LBB0_100:                              #   in Loop: Header=BB0_97 Depth=1
	addi.w	$a7, $s3, -1
	nor	$t3, $a7, $zero
	add.w	$t3, $s3, $t3
	bnez	$t3, .LBB0_105
	b	.LBB0_102
	.p2align	4, , 16
.LBB0_101:                              #   in Loop: Header=BB0_97 Depth=1
	addi.w	$a7, $s3, -1
	move	$t2, $a5
	nor	$t3, $a7, $zero
	add.w	$t3, $s3, $t3
	bnez	$t3, .LBB0_105
	.p2align	4, , 16
.LBB0_102:                              # %._crit_edge32.i
                                        #   in Loop: Header=BB0_97 Depth=1
	add.w	$a0, $t2, $a0
	beq	$t2, $a5, .LBB0_115
# %bb.103:                              # %.preheader1.preheader.i
                                        #   in Loop: Header=BB0_97 Depth=1
	nor	$t2, $t2, $zero
	move	$t3, $t2
	b	.LBB0_110
	.p2align	4, , 16
.LBB0_104:                              # %._crit_edge.i
                                        #   in Loop: Header=BB0_105 Depth=2
	addi.d	$t3, $t3, -1
	addi.d	$a2, $a2, 1
	beqz	$t3, .LBB0_102
.LBB0_105:                              # %.preheader3.i
                                        #   Parent Loop BB0_97 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_106 Depth 3
                                        #       Child Loop BB0_108 Depth 3
	move	$t4, $s2
	move	$t5, $s4
	move	$t6, $a3
	blez	$s1, .LBB0_107
	.p2align	4, , 16
.LBB0_106:                              # %.lr.ph27.i
                                        #   Parent Loop BB0_97 Depth=1
                                        #     Parent Loop BB0_105 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$t7, $t4, 0
	ld.d	$t8, $t5, 0
	add.d	$t7, $t7, $t3
	ldx.b	$t7, $t7, $a7
	addi.d	$s3, $t8, -1
	st.d	$s3, $t5, 0
	st.b	$t7, $t8, -1
	addi.d	$t6, $t6, -1
	addi.d	$t5, $t5, 8
	addi.d	$t4, $t4, 8
	bnez	$t6, .LBB0_106
.LBB0_107:                              # %.preheader2.i
                                        #   in Loop: Header=BB0_105 Depth=2
	move	$t4, $s5
	move	$t5, $a4
	blez	$fp, .LBB0_104
	.p2align	4, , 16
.LBB0_108:                              # %.lr.ph29.i
                                        #   Parent Loop BB0_97 Depth=1
                                        #     Parent Loop BB0_105 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$t6, $t4, 0
	addi.d	$t7, $t6, -1
	st.d	$t7, $t4, 0
	st.b	$a6, $t6, -1
	addi.d	$t5, $t5, -1
	addi.d	$t4, $t4, 8
	bnez	$t5, .LBB0_108
	b	.LBB0_104
	.p2align	4, , 16
.LBB0_109:                              # %._crit_edge38.i
                                        #   in Loop: Header=BB0_110 Depth=2
	addi.d	$t3, $t3, -1
	beqz	$t3, .LBB0_114
.LBB0_110:                              # %.preheader1.i
                                        #   Parent Loop BB0_97 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_111 Depth 3
                                        #       Child Loop BB0_113 Depth 3
	move	$t4, $s4
	move	$t5, $a3
	blez	$s1, .LBB0_112
	.p2align	4, , 16
.LBB0_111:                              # %.lr.ph35.i
                                        #   Parent Loop BB0_97 Depth=1
                                        #     Parent Loop BB0_110 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$t6, $t4, 0
	addi.d	$t7, $t6, -1
	st.d	$t7, $t4, 0
	st.b	$a6, $t6, -1
	addi.d	$t5, $t5, -1
	addi.d	$t4, $t4, 8
	bnez	$t5, .LBB0_111
.LBB0_112:                              # %.preheader.i
                                        #   in Loop: Header=BB0_110 Depth=2
	move	$t4, $s0
	move	$t5, $s5
	move	$t6, $a4
	blez	$fp, .LBB0_109
	.p2align	4, , 16
.LBB0_113:                              # %.lr.ph37.i
                                        #   Parent Loop BB0_97 Depth=1
                                        #     Parent Loop BB0_110 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$t7, $t4, 0
	ld.d	$t8, $t5, 0
	add.d	$t7, $t7, $t3
	ldx.b	$t7, $t7, $a0
	addi.d	$s3, $t8, -1
	st.d	$s3, $t5, 0
	st.b	$t7, $t8, -1
	addi.d	$t6, $t6, -1
	addi.d	$t5, $t5, 8
	addi.d	$t4, $t4, 8
	bnez	$t6, .LBB0_113
	b	.LBB0_109
	.p2align	4, , 16
.LBB0_114:                              # %._crit_edge41.loopexit.i
                                        #   in Loop: Header=BB0_97 Depth=1
	add.d	$a2, $a2, $t2
.LBB0_115:                              # %._crit_edge41.i
                                        #   in Loop: Header=BB0_97 Depth=1
	blez	$t1, .LBB0_123
# %bb.116:                              # %._crit_edge41.i
                                        #   in Loop: Header=BB0_97 Depth=1
	blez	$t0, .LBB0_123
# %bb.117:                              # %.preheader5.i
                                        #   in Loop: Header=BB0_97 Depth=1
	blez	$s1, .LBB0_120
# %bb.118:                              # %.lr.ph44.i
                                        #   in Loop: Header=BB0_97 Depth=1
	move	$t0, $s2
	move	$t1, $s4
	move	$t2, $a3
	.p2align	4, , 16
.LBB0_119:                              #   Parent Loop BB0_97 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$t3, $t0, 0
	ld.d	$t4, $t1, 0
	ldx.b	$t3, $t3, $a7
	addi.d	$t5, $t4, -1
	st.d	$t5, $t1, 0
	st.b	$t3, $t4, -1
	addi.d	$t2, $t2, -1
	addi.d	$t1, $t1, 8
	addi.d	$t0, $t0, 8
	bnez	$t2, .LBB0_119
.LBB0_120:                              # %.preheader4.i
                                        #   in Loop: Header=BB0_97 Depth=1
	blez	$fp, .LBB0_96
# %bb.121:                              # %.lr.ph46.i
                                        #   in Loop: Header=BB0_97 Depth=1
	move	$t0, $s0
	move	$t1, $s5
	move	$t2, $a4
	.p2align	4, , 16
.LBB0_122:                              #   Parent Loop BB0_97 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$t3, $t0, 0
	ld.d	$t4, $t1, 0
	ldx.b	$t3, $t3, $a0
	addi.d	$t5, $t4, -1
	st.d	$t5, $t1, 0
	st.b	$t3, $t4, -1
	addi.d	$t2, $t2, -1
	addi.d	$t1, $t1, 8
	addi.d	$t0, $t0, 8
	bnez	$t2, .LBB0_122
	b	.LBB0_96
.LBB0_123:                              # %Atracking.exit
	ld.d	$a0, $s4, 0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.w	$a3, $a0, 0
	lu12i.w	$a4, 1220
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	blt	$a2, $a3, .LBB0_143
# %bb.124:                              # %Atracking.exit
	ori	$a0, $a4, 2881
	bge	$a3, $a0, .LBB0_143
# %bb.125:
	blez	$s1, .LBB0_128
.LBB0_126:                              # %.lr.ph206
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s3, $a0, %pc_lo12(Aalign.mseq1)
	.p2align	4, , 16
.LBB0_127:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s2, 0
	ld.d	$a1, $s3, 0
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	addi.d	$s3, $s3, 8
	addi.d	$s1, $s1, -1
	addi.d	$s2, $s2, 8
	bnez	$s1, .LBB0_127
.LBB0_128:                              # %.preheader
	blez	$fp, .LBB0_131
# %bb.129:                              # %.lr.ph208
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $a0, %pc_lo12(Aalign.mseq2)
	.p2align	4, , 16
.LBB0_130:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s0, 0
	ld.d	$a1, $s1, 0
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	addi.d	$s1, $s1, 8
	addi.d	$fp, $fp, -1
	addi.d	$s0, $s0, 8
	bnez	$fp, .LBB0_130
.LBB0_131:                              # %._crit_edge209
	fmov.s	$fa0, $fs0
	fld.d	$fs0, $sp, 176                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 184                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 192                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 200                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 208                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 216                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 224                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 232                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 240                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 248                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 256                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 264                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 272
	ret
.LBB0_132:                              # %vector.ph302
	slli.d	$a4, $s1, 3
	bstrpick.d	$a2, $fp, 30, 2
	slli.d	$a2, $a2, 2
	addi.d	$a3, $a1, 16
	add.d	$a4, $a4, $a0
	addi.d	$a4, $a4, 16
	move	$a5, $a2
	.p2align	4, , 16
.LBB0_133:                              # %vector.body305
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a4, -16
	vld	$vr1, $a4, 0
	vst	$vr0, $a3, -16
	vst	$vr1, $a3, 0
	addi.d	$a5, $a5, -4
	addi.d	$a3, $a3, 32
	addi.d	$a4, $a4, 32
	bnez	$a5, .LBB0_133
# %bb.134:                              # %middle.block310
	beq	$a2, $fp, .LBB0_18
	b	.LBB0_16
.LBB0_135:
	pcalau12i	$s4, %pc_hi20(Aalign.match)
	st.d	$a6, $sp, 72                    # 8-byte Folded Spill
	blez	$s7, .LBB0_138
# %bb.136:
	blez	$s5, .LBB0_138
# %bb.137:
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Aalign.currentw)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(Aalign.previousw)
	ld.d	$a0, $a0, %pc_lo12(Aalign.previousw)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s4, %pc_lo12(Aalign.match)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Aalign.initverticalw)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Aalign.lastverticalw)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Aalign.m)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Aalign.mp)
	pcaddu18i	$ra, %call36(FreeIntVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s8, %pc_lo12(Aalign.mseq)
	pcaddu18i	$ra, %call36(FreeCharMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Aalign.cpmx1)
	pcaddu18i	$ra, %call36(FreeFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Aalign.cpmx2)
	pcaddu18i	$ra, %call36(FreeFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Aalign.floatwork)
	pcaddu18i	$ra, %call36(FreeFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Aalign.intwork)
	pcaddu18i	$ra, %call36(FreeIntMtx)
	jirl	$ra, $ra, 0
	ld.w	$s7, $s6, %pc_lo12(Aalign.orlgth1)
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.w	$s5, $a0, %pc_lo12(Aalign.orlgth2)
.LBB0_138:
	pcalau12i	$a0, %pc_hi20(.LCPI0_0)
	fld.d	$fa0, $a0, %pc_lo12(.LCPI0_0)
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	movgr2fr.w	$fa1, $a0
	ffint.d.w	$fa1, $fa1
	fmul.d	$fa1, $fa1, $fa0
	ftintrz.w.d	$fa1, $fa1
	movfr2gr.s	$a0, $fa1
	slt	$a1, $a0, $s7
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s7, $a1
	st.d	$s4, $sp, 8                     # 8-byte Folded Spill
	or	$s4, $a1, $a0
	addi.w	$s7, $s4, 100
	movgr2fr.w	$fa1, $s3
	ffint.d.w	$fa1, $fa1
	fmul.d	$fa0, $fa1, $fa0
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a0, $fa0
	slt	$a1, $a0, $s5
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s5, $a1
	or	$s3, $a1, $a0
	addi.w	$s5, $s3, 100
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	ld.d	$a0, $a0, 0
	pcalau12i	$a1, %pc_hi20(.L.str)
	addi.d	$a1, $a1, %pc_lo12(.L.str)
	move	$a2, $s7
	move	$a3, $s5
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	addi.w	$s3, $s3, 102
	move	$a0, $s3
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Aalign.currentw)
	move	$a0, $s3
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(Aalign.previousw)
	st.d	$a0, $a1, %pc_lo12(Aalign.previousw)
	move	$a0, $s3
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Aalign.match)
	addi.w	$s4, $s4, 102
	move	$a0, $s4
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Aalign.initverticalw)
	move	$a0, $s4
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Aalign.lastverticalw)
	move	$a0, $s3
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Aalign.m)
	move	$a0, $s3
	pcaddu18i	$ra, %call36(AllocateIntVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Aalign.mp)
	pcalau12i	$a0, %got_pc_hi20(njob)
	ld.d	$a0, $a0, %got_pc_lo12(njob)
	ld.w	$a0, $a0, 0
	add.w	$a1, $s5, $s7
	pcaddu18i	$ra, %call36(AllocateCharMtx)
	jirl	$ra, $ra, 0
	st.d	$a0, $s8, %pc_lo12(Aalign.mseq)
	ori	$a0, $zero, 26
	move	$a1, $s4
	pcaddu18i	$ra, %call36(AllocateFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Aalign.cpmx1)
	ori	$a0, $zero, 26
	move	$a1, $s3
	pcaddu18i	$ra, %call36(AllocateFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Aalign.cpmx2)
	slt	$a0, $s5, $s7
	masknez	$a1, $s5, $a0
	maskeqz	$a0, $s7, $a0
	or	$a0, $a0, $a1
	addi.w	$s3, $a0, 2
	ori	$a0, $zero, 26
	move	$a1, $s3
	pcaddu18i	$ra, %call36(AllocateFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Aalign.floatwork)
	ori	$a0, $zero, 26
	move	$a1, $s3
	pcaddu18i	$ra, %call36(AllocateIntMtx)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a3, $a1, 0
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Aalign.intwork)
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	ori	$a1, $zero, 10
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	st.w	$s7, $s6, %pc_lo12(Aalign.orlgth1)
	ld.d	$a6, $sp, 72                    # 8-byte Folded Reload
	st.w	$s5, $a6, %pc_lo12(Aalign.orlgth2)
	bgtz	$s1, .LBB0_5
	b	.LBB0_12
.LBB0_139:
	beqz	$a0, .LBB0_142
# %bb.140:
	beqz	$a1, .LBB0_142
# %bb.141:
	pcalau12i	$a0, %got_pc_hi20(commonIP)
	ld.d	$a0, $a0, %got_pc_lo12(commonIP)
	ld.d	$a0, $a0, 0
	move	$s5, $a6
	pcaddu18i	$ra, %call36(FreeIntMtx)
	jirl	$ra, $ra, 0
	ld.w	$s7, $s6, %pc_lo12(Aalign.orlgth1)
	ld.w	$a0, $s3, 0
	ld.w	$s5, $s5, %pc_lo12(Aalign.orlgth2)
	ld.w	$a1, $s4, 0
.LBB0_142:
	slt	$a2, $a0, $s7
	masknez	$a0, $a0, $a2
	maskeqz	$a2, $s7, $a2
	or	$s6, $a2, $a0
	slt	$a0, $a1, $s5
	masknez	$a1, $a1, $a0
	maskeqz	$a0, $s5, $a0
	or	$s5, $a0, $a1
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$s7, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $s7, 0
	addi.w	$a2, $s6, 1
	addi.w	$a3, $s5, 1
	pcalau12i	$a1, %pc_hi20(.L.str.2)
	addi.d	$a1, $a1, %pc_lo12(.L.str.2)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	addi.w	$a0, $s6, 10
	addi.w	$a1, $s5, 10
	pcaddu18i	$ra, %call36(AllocateIntMtx)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(commonIP)
	ld.d	$a1, $a1, %got_pc_lo12(commonIP)
	ld.d	$a3, $s7, 0
	st.d	$a0, $a1, 0
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
	ori	$a1, $zero, 11
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	st.w	$s6, $s3, 0
	st.w	$s5, $s4, 0
	b	.LBB0_20
.LBB0_143:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	pcalau12i	$a1, %pc_hi20(.L.str.4)
	addi.d	$a1, $a1, %pc_lo12(.L.str.4)
	ori	$a4, $a4, 2880
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a0, $a0, %pc_lo12(.L.str.5)
	pcaddu18i	$ra, %call36(ErrorExit)
	jirl	$ra, $ra, 0
	bgtz	$s1, .LBB0_126
	b	.LBB0_128
.Lfunc_end0:
	.size	Aalign, .Lfunc_end0-Aalign
                                        # -- End function
	.p2align	5                               # -- Begin function match_calc
	.type	match_calc,@function
match_calc:                             # @match_calc
# %bb.0:
	addi.d	$sp, $sp, -576
	fst.d	$fs0, $sp, 568                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 560                  # 8-byte Folded Spill
	fst.d	$fs2, $sp, 552                  # 8-byte Folded Spill
	fst.d	$fs3, $sp, 544                  # 8-byte Folded Spill
	fst.d	$fs4, $sp, 536                  # 8-byte Folded Spill
	fst.d	$fs5, $sp, 528                  # 8-byte Folded Spill
	fst.d	$fs6, $sp, 520                  # 8-byte Folded Spill
	fst.d	$fs7, $sp, 512                  # 8-byte Folded Spill
	beqz	$a7, .LBB1_8
# %bb.1:
	blez	$a4, .LBB1_8
# %bb.2:                                # %.preheader60.preheader
	move	$a7, $zero
	movgr2fr.w	$fa0, $zero
	ori	$t0, $zero, 208
	addi.w	$t1, $zero, -1
	lu32i.d	$t1, 0
	b	.LBB1_4
	.p2align	4, , 16
.LBB1_3:                                #   in Loop: Header=BB1_4 Depth=1
	slli.d	$t3, $t4, 3
	ldx.d	$t3, $a6, $t3
	addi.d	$a7, $a7, 1
	stx.w	$t1, $t3, $t2
	beq	$a7, $a4, .LBB1_8
.LBB1_4:                                # %.preheader60
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_6 Depth 2
	move	$t3, $zero
	move	$t5, $zero
	move	$t4, $zero
	slli.d	$t2, $a7, 2
	b	.LBB1_6
	.p2align	4, , 16
.LBB1_5:                                #   in Loop: Header=BB1_6 Depth=2
	addi.d	$t3, $t3, 8
	addi.d	$t5, $t5, 1
	beq	$t3, $t0, .LBB1_3
.LBB1_6:                                #   Parent Loop BB1_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.d	$t6, $a2, $t3
	fldx.s	$fa1, $t6, $t2
	fcmp.ceq.s	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB1_5
# %bb.7:                                #   in Loop: Header=BB1_6 Depth=2
	slli.d	$t6, $t4, 3
	ldx.d	$t7, $a5, $t6
	ldx.d	$t6, $a6, $t6
	fstx.s	$fa1, $t7, $t2
	stx.w	$t5, $t6, $t2
	addi.w	$t4, $t4, 1
	b	.LBB1_5
.LBB1_8:                                # %.loopexit
	ld.d	$a7, $a1, 0
	ld.d	$t0, $a1, 8
	slli.d	$a2, $a3, 2
	fldx.s	$fs1, $a7, $a2
	fldx.s	$ft15, $t0, $a2
	ld.d	$a3, $a1, 16
	ld.d	$a7, $a1, 24
	ld.d	$t0, $a1, 32
	ld.d	$t1, $a1, 40
	fldx.s	$fs0, $a3, $a2
	fldx.s	$ft14, $a7, $a2
	fldx.s	$ft13, $t0, $a2
	fldx.s	$ft12, $t1, $a2
	ld.d	$a3, $a1, 48
	ld.d	$a7, $a1, 56
	ld.d	$t0, $a1, 64
	ld.d	$t1, $a1, 72
	fldx.s	$fa0, $a3, $a2
	fldx.s	$fa1, $a7, $a2
	fldx.s	$fa2, $t0, $a2
	fldx.s	$fa3, $t1, $a2
	ld.d	$a3, $a1, 80
	ld.d	$a7, $a1, 88
	ld.d	$t0, $a1, 96
	ld.d	$t1, $a1, 104
	fldx.s	$fa4, $a3, $a2
	fldx.s	$fa5, $a7, $a2
	fldx.s	$fa6, $t0, $a2
	fldx.s	$fa7, $t1, $a2
	ld.d	$a3, $a1, 112
	ld.d	$a7, $a1, 120
	ld.d	$t0, $a1, 128
	ld.d	$t1, $a1, 136
	fldx.s	$ft0, $a3, $a2
	fldx.s	$ft1, $a7, $a2
	fldx.s	$ft2, $t0, $a2
	fldx.s	$ft3, $t1, $a2
	ld.d	$a3, $a1, 144
	ld.d	$a7, $a1, 152
	ld.d	$t0, $a1, 160
	ld.d	$t1, $a1, 168
	fldx.s	$ft4, $a3, $a2
	fldx.s	$ft5, $a7, $a2
	fldx.s	$ft6, $t0, $a2
	fldx.s	$ft7, $t1, $a2
	ld.d	$a3, $a1, 176
	ld.d	$a7, $a1, 184
	ld.d	$t0, $a1, 192
	ld.d	$a1, $a1, 200
	fldx.s	$ft8, $a3, $a2
	fldx.s	$ft9, $a7, $a2
	fldx.s	$ft10, $t0, $a2
	fldx.s	$ft11, $a1, $a2
	vreplvei.w	$vr26, $vr25, 0
	vst	$vr23, $sp, 16                  # 16-byte Folded Spill
	vreplvei.w	$vr27, $vr23, 0
	vreplvei.w	$vr28, $vr24, 0
	vst	$vr22, $sp, 32                  # 16-byte Folded Spill
	vreplvei.w	$vr29, $vr22, 0
	vst	$vr21, $sp, 48                  # 16-byte Folded Spill
	vreplvei.w	$vr30, $vr21, 0
	vst	$vr20, $sp, 64                  # 16-byte Folded Spill
	vreplvei.w	$vr31, $vr20, 0
	vst	$vr0, $sp, 80                   # 16-byte Folded Spill
	vreplvei.w	$vr0, $vr0, 0
	vst	$vr1, $sp, 96                   # 16-byte Folded Spill
	vreplvei.w	$vr1, $vr1, 0
	vst	$vr2, $sp, 128                  # 16-byte Folded Spill
	vreplvei.w	$vr2, $vr2, 0
	vst	$vr3, $sp, 160                  # 16-byte Folded Spill
	vreplvei.w	$vr3, $vr3, 0
	vst	$vr4, $sp, 112                  # 16-byte Folded Spill
	vreplvei.w	$vr4, $vr4, 0
	vst	$vr5, $sp, 144                  # 16-byte Folded Spill
	vreplvei.w	$vr5, $vr5, 0
	vst	$vr6, $sp, 192                  # 16-byte Folded Spill
	vreplvei.w	$vr6, $vr6, 0
	vst	$vr7, $sp, 208                  # 16-byte Folded Spill
	vreplvei.w	$vr7, $vr7, 0
	vst	$vr8, $sp, 176                  # 16-byte Folded Spill
	vreplvei.w	$vr8, $vr8, 0
	vst	$vr9, $sp, 224                  # 16-byte Folded Spill
	vreplvei.w	$vr9, $vr9, 0
	vst	$vr10, $sp, 240                 # 16-byte Folded Spill
	vreplvei.w	$vr10, $vr10, 0
	vst	$vr11, $sp, 288                 # 16-byte Folded Spill
	vreplvei.w	$vr11, $vr11, 0
	vst	$vr12, $sp, 256                 # 16-byte Folded Spill
	vreplvei.w	$vr12, $vr12, 0
	vst	$vr13, $sp, 272                 # 16-byte Folded Spill
	vreplvei.w	$vr13, $vr13, 0
	vst	$vr14, $sp, 320                 # 16-byte Folded Spill
	vreplvei.w	$vr14, $vr14, 0
	vst	$vr15, $sp, 352                 # 16-byte Folded Spill
	vreplvei.w	$vr15, $vr15, 0
	vst	$vr16, $sp, 304                 # 16-byte Folded Spill
	vreplvei.w	$vr16, $vr16, 0
	vst	$vr17, $sp, 336                 # 16-byte Folded Spill
	vreplvei.w	$vr17, $vr17, 0
	vst	$vr18, $sp, 368                 # 16-byte Folded Spill
	vreplvei.w	$vr18, $vr18, 0
	vst	$vr19, $sp, 384                 # 16-byte Folded Spill
	vreplvei.w	$vr19, $vr19, 0
	pcalau12i	$a1, %got_pc_hi20(n_dis)
	ld.d	$a1, $a1, %got_pc_lo12(n_dis)
	move	$a2, $zero
	ori	$a3, $zero, 2080
	ori	$a7, $zero, 2184
	ori	$t0, $zero, 2288
	ori	$t1, $zero, 2392
	ori	$t2, $zero, 2496
	ori	$t3, $zero, 2600
	addi.d	$t4, $sp, 408
	ori	$t5, $zero, 96
	.p2align	4, , 16
.LBB1_9:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vldx	$vr20, $a1, $a2
	add.d	$t6, $a1, $a2
	vffint.s.w	$vr20, $vr20
	vld	$vr21, $t6, 104
	vrepli.b	$vr22, 0
	vfmadd.s	$vr20, $vr20, $vr26, $vr22
	vld	$vr22, $t6, 208
	vffint.s.w	$vr21, $vr21
	vfmadd.s	$vr20, $vr21, $vr27, $vr20
	vld	$vr21, $t6, 312
	vffint.s.w	$vr22, $vr22
	vfmadd.s	$vr20, $vr22, $vr28, $vr20
	vld	$vr22, $t6, 416
	vffint.s.w	$vr21, $vr21
	vfmadd.s	$vr20, $vr21, $vr29, $vr20
	vld	$vr21, $t6, 520
	vffint.s.w	$vr22, $vr22
	vfmadd.s	$vr20, $vr22, $vr30, $vr20
	vld	$vr22, $t6, 624
	vffint.s.w	$vr21, $vr21
	vfmadd.s	$vr20, $vr21, $vr31, $vr20
	vld	$vr21, $t6, 728
	vffint.s.w	$vr22, $vr22
	vfmadd.s	$vr20, $vr22, $vr0, $vr20
	vld	$vr22, $t6, 832
	vffint.s.w	$vr21, $vr21
	vfmadd.s	$vr20, $vr21, $vr1, $vr20
	vld	$vr21, $t6, 936
	vffint.s.w	$vr22, $vr22
	vfmadd.s	$vr20, $vr22, $vr2, $vr20
	vld	$vr22, $t6, 1040
	vffint.s.w	$vr21, $vr21
	vfmadd.s	$vr20, $vr21, $vr3, $vr20
	vld	$vr21, $t6, 1144
	vffint.s.w	$vr22, $vr22
	vfmadd.s	$vr20, $vr22, $vr4, $vr20
	vld	$vr22, $t6, 1248
	vffint.s.w	$vr21, $vr21
	vfmadd.s	$vr20, $vr21, $vr5, $vr20
	vld	$vr21, $t6, 1352
	vffint.s.w	$vr22, $vr22
	vfmadd.s	$vr20, $vr22, $vr6, $vr20
	vld	$vr22, $t6, 1456
	vffint.s.w	$vr21, $vr21
	vfmadd.s	$vr20, $vr21, $vr7, $vr20
	vld	$vr21, $t6, 1560
	vffint.s.w	$vr22, $vr22
	vfmadd.s	$vr20, $vr22, $vr8, $vr20
	vld	$vr22, $t6, 1664
	vffint.s.w	$vr21, $vr21
	vfmadd.s	$vr20, $vr21, $vr9, $vr20
	vld	$vr21, $t6, 1768
	vffint.s.w	$vr22, $vr22
	vfmadd.s	$vr20, $vr22, $vr10, $vr20
	vld	$vr22, $t6, 1872
	vffint.s.w	$vr21, $vr21
	vfmadd.s	$vr20, $vr21, $vr11, $vr20
	vld	$vr21, $t6, 1976
	vffint.s.w	$vr22, $vr22
	vfmadd.s	$vr20, $vr22, $vr12, $vr20
	vldx	$vr22, $t6, $a3
	vffint.s.w	$vr21, $vr21
	vfmadd.s	$vr20, $vr21, $vr13, $vr20
	vldx	$vr21, $t6, $a7
	vffint.s.w	$vr22, $vr22
	vfmadd.s	$vr20, $vr22, $vr14, $vr20
	vldx	$vr22, $t6, $t0
	vffint.s.w	$vr21, $vr21
	vfmadd.s	$vr20, $vr21, $vr15, $vr20
	vldx	$vr21, $t6, $t1
	vffint.s.w	$vr22, $vr22
	vfmadd.s	$vr20, $vr22, $vr16, $vr20
	vldx	$vr22, $t6, $t2
	vffint.s.w	$vr21, $vr21
	vldx	$vr23, $t6, $t3
	vfmadd.s	$vr20, $vr21, $vr17, $vr20
	vffint.s.w	$vr21, $vr22
	vfmadd.s	$vr20, $vr21, $vr18, $vr20
	vffint.s.w	$vr21, $vr23
	vfmadd.s	$vr20, $vr21, $vr19, $vr20
	vstx	$vr20, $a2, $t4
	addi.d	$a2, $a2, 16
	bne	$a2, $t5, .LBB1_9
# %bb.10:                               # %scalar.ph
	ld.w	$a2, $a1, 96
	movgr2fr.w	$fa0, $a2
	ld.w	$a2, $a1, 200
	ffint.s.w	$fa0, $fa0
	movgr2fr.w	$fs2, $zero
	fmadd.s	$fa0, $fa0, $fs1, $fs2
	movgr2fr.w	$fa1, $a2
	ld.w	$a2, $a1, 304
	ffint.s.w	$fa1, $fa1
	vld	$vr5, $sp, 16                   # 16-byte Folded Reload
	fmadd.s	$fa0, $fa1, $fa5, $fa0
	ld.w	$a3, $a1, 408
	movgr2fr.w	$fa1, $a2
	ffint.s.w	$fa1, $fa1
	fmadd.s	$fa0, $fa1, $fs0, $fa0
	movgr2fr.w	$fa1, $a3
	ld.w	$a2, $a1, 512
	ffint.s.w	$fa1, $fa1
	vld	$vr3, $sp, 32                   # 16-byte Folded Reload
	fmadd.s	$fa0, $fa1, $fa3, $fa0
	ld.w	$a3, $a1, 616
	movgr2fr.w	$fa1, $a2
	ffint.s.w	$fa1, $fa1
	vld	$vr4, $sp, 48                   # 16-byte Folded Reload
	fmadd.s	$fa0, $fa1, $fa4, $fa0
	movgr2fr.w	$fa1, $a3
	ld.w	$a2, $a1, 720
	ffint.s.w	$fa1, $fa1
	vld	$vr7, $sp, 64                   # 16-byte Folded Reload
	fmadd.s	$fa0, $fa1, $fa7, $fa0
	ld.w	$a3, $a1, 824
	movgr2fr.w	$fa1, $a2
	ffint.s.w	$fa1, $fa1
	vld	$vr30, $sp, 80                  # 16-byte Folded Reload
	fmadd.s	$fa0, $fa1, $fs6, $fa0
	movgr2fr.w	$fa1, $a3
	ld.w	$a2, $a1, 928
	ffint.s.w	$fa1, $fa1
	vld	$vr29, $sp, 96                  # 16-byte Folded Reload
	fmadd.s	$fa0, $fa1, $fs5, $fa0
	ld.w	$a3, $a1, 1032
	movgr2fr.w	$fa1, $a2
	ffint.s.w	$fa1, $fa1
	vld	$vr27, $sp, 128                 # 16-byte Folded Reload
	fmadd.s	$fa0, $fa1, $fs3, $fa0
	movgr2fr.w	$fa1, $a3
	ld.w	$a2, $a1, 1136
	ffint.s.w	$fa1, $fa1
	vld	$vr22, $sp, 160                 # 16-byte Folded Reload
	fmadd.s	$fa0, $fa1, $ft14, $fa0
	ld.w	$a3, $a1, 1240
	movgr2fr.w	$fa1, $a2
	ffint.s.w	$fa1, $fa1
	vld	$vr28, $sp, 112                 # 16-byte Folded Reload
	fmadd.s	$fa0, $fa1, $fs4, $fa0
	movgr2fr.w	$fa1, $a3
	ld.w	$a2, $a1, 1344
	ffint.s.w	$fa1, $fa1
	vld	$vr23, $sp, 144                 # 16-byte Folded Reload
	fmadd.s	$fa0, $fa1, $ft15, $fa0
	ld.w	$a3, $a1, 1448
	movgr2fr.w	$fa1, $a2
	ffint.s.w	$fa1, $fa1
	vld	$vr20, $sp, 192                 # 16-byte Folded Reload
	fmadd.s	$fa0, $fa1, $ft12, $fa0
	movgr2fr.w	$fa1, $a3
	ld.w	$a2, $a1, 1552
	ffint.s.w	$fa1, $fa1
	vld	$vr19, $sp, 208                 # 16-byte Folded Reload
	fmadd.s	$fa0, $fa1, $ft11, $fa0
	ld.w	$a3, $a1, 1656
	movgr2fr.w	$fa1, $a2
	ffint.s.w	$fa1, $fa1
	vld	$vr21, $sp, 176                 # 16-byte Folded Reload
	fmadd.s	$fa0, $fa1, $ft13, $fa0
	movgr2fr.w	$fa1, $a3
	ld.w	$a2, $a1, 1760
	ffint.s.w	$fa1, $fa1
	vld	$vr18, $sp, 224                 # 16-byte Folded Reload
	fmadd.s	$fa0, $fa1, $ft10, $fa0
	ld.w	$a3, $a1, 1864
	movgr2fr.w	$fa1, $a2
	ffint.s.w	$fa1, $fa1
	vld	$vr17, $sp, 240                 # 16-byte Folded Reload
	fmadd.s	$fa0, $fa1, $ft9, $fa0
	movgr2fr.w	$fa1, $a3
	ld.w	$a2, $a1, 1968
	ffint.s.w	$fa1, $fa1
	vld	$vr14, $sp, 288                 # 16-byte Folded Reload
	fmadd.s	$fa0, $fa1, $ft6, $fa0
	ldptr.w	$a3, $a1, 2072
	movgr2fr.w	$fa1, $a2
	ffint.s.w	$fa1, $fa1
	vld	$vr16, $sp, 256                 # 16-byte Folded Reload
	fmadd.s	$fa0, $fa1, $ft8, $fa0
	movgr2fr.w	$fa1, $a3
	ldptr.w	$a2, $a1, 2176
	ffint.s.w	$fa1, $fa1
	vld	$vr15, $sp, 272                 # 16-byte Folded Reload
	fmadd.s	$fa0, $fa1, $ft7, $fa0
	ldptr.w	$a3, $a1, 2280
	movgr2fr.w	$fa1, $a2
	ffint.s.w	$fa1, $fa1
	vld	$vr12, $sp, 320                 # 16-byte Folded Reload
	fmadd.s	$fa0, $fa1, $ft4, $fa0
	movgr2fr.w	$fa1, $a3
	ldptr.w	$a2, $a1, 2384
	ffint.s.w	$fa1, $fa1
	vld	$vr10, $sp, 352                 # 16-byte Folded Reload
	fmadd.s	$fa0, $fa1, $ft2, $fa0
	ldptr.w	$a3, $a1, 2488
	movgr2fr.w	$fa1, $a2
	ffint.s.w	$fa1, $fa1
	vld	$vr13, $sp, 304                 # 16-byte Folded Reload
	fmadd.s	$fa0, $fa1, $ft5, $fa0
	movgr2fr.w	$fa1, $a3
	ldptr.w	$a2, $a1, 2592
	ffint.s.w	$fa1, $fa1
	vld	$vr11, $sp, 336                 # 16-byte Folded Reload
	fmadd.s	$fa0, $fa1, $ft3, $fa0
	ldptr.w	$a3, $a1, 2696
	movgr2fr.w	$fa1, $a2
	ffint.s.w	$fa1, $fa1
	vld	$vr9, $sp, 368                  # 16-byte Folded Reload
	fmadd.s	$fa0, $fa1, $ft1, $fa0
	movgr2fr.w	$fa1, $a3
	ld.w	$a2, $a1, 100
	ffint.s.w	$fa1, $fa1
	vld	$vr8, $sp, 384                  # 16-byte Folded Reload
	fmadd.s	$fa0, $fa1, $ft0, $fa0
	ld.w	$a3, $a1, 204
	movgr2fr.w	$fa1, $a2
	ffint.s.w	$fa1, $fa1
	fmadd.s	$fa1, $fa1, $fs1, $fs2
	movgr2fr.w	$fa2, $a3
	ld.w	$a2, $a1, 308
	ffint.s.w	$fa2, $fa2
	fmadd.s	$fa1, $fa2, $fa5, $fa1
	ld.w	$a3, $a1, 412
	movgr2fr.w	$fa2, $a2
	ffint.s.w	$fa2, $fa2
	fmadd.s	$fa1, $fa2, $fs0, $fa1
	movgr2fr.w	$fa2, $a3
	ld.w	$a2, $a1, 516
	ffint.s.w	$fa2, $fa2
	fmadd.s	$fa1, $fa2, $fa3, $fa1
	ld.w	$a3, $a1, 620
	movgr2fr.w	$fa2, $a2
	ffint.s.w	$fa2, $fa2
	ld.w	$a2, $a1, 724
	movgr2fr.w	$fa3, $a3
	ld.w	$a3, $a1, 828
	fmadd.s	$fa1, $fa2, $fa4, $fa1
	movgr2fr.w	$fa2, $a2
	ld.w	$a2, $a1, 932
	movgr2fr.w	$fa4, $a3
	ld.w	$a3, $a1, 1036
	ffint.s.w	$fa3, $fa3
	movgr2fr.w	$fa5, $a2
	ld.w	$a2, $a1, 1140
	movgr2fr.w	$fa6, $a3
	ld.w	$a3, $a1, 1244
	fmadd.s	$fa1, $fa3, $fa7, $fa1
	movgr2fr.w	$fa3, $a2
	ld.w	$a2, $a1, 1348
	movgr2fr.w	$fa7, $a3
	fst.s	$fa0, $sp, 504
	ffint.s.w	$fa0, $fa2
	movgr2fr.w	$fa2, $a2
	ld.w	$a2, $a1, 1452
	fmadd.s	$fa0, $fa0, $fs6, $fa1
	ffint.s.w	$fa1, $fa4
	fmadd.s	$fa0, $fa1, $fs5, $fa0
	movgr2fr.w	$fa1, $a2
	ld.w	$a2, $a1, 1556
	ffint.s.w	$fa4, $fa5
	fmadd.s	$fa0, $fa4, $fs3, $fa0
	ffint.s.w	$fa4, $fa6
	movgr2fr.w	$fa5, $a2
	ld.w	$a2, $a1, 1660
	fmadd.s	$fa0, $fa4, $ft14, $fa0
	ffint.s.w	$fa3, $fa3
	fmadd.s	$fa0, $fa3, $fs4, $fa0
	movgr2fr.w	$fa3, $a2
	ld.w	$a2, $a1, 1764
	ffint.s.w	$fa4, $fa7
	fmadd.s	$fa0, $fa4, $ft15, $fa0
	ffint.s.w	$fa2, $fa2
	movgr2fr.w	$fa4, $a2
	ld.w	$a2, $a1, 1868
	fmadd.s	$fa0, $fa2, $ft12, $fa0
	ffint.s.w	$fa1, $fa1
	fmadd.s	$fa0, $fa1, $ft11, $fa0
	movgr2fr.w	$fa1, $a2
	ld.w	$a2, $a1, 1972
	ffint.s.w	$fa2, $fa5
	fmadd.s	$fa0, $fa2, $ft13, $fa0
	ffint.s.w	$fa2, $fa3
	movgr2fr.w	$fa3, $a2
	ldptr.w	$a2, $a1, 2076
	fmadd.s	$fa0, $fa2, $ft10, $fa0
	ffint.s.w	$fa2, $fa4
	fmadd.s	$fa0, $fa2, $ft9, $fa0
	movgr2fr.w	$fa2, $a2
	ldptr.w	$a2, $a1, 2180
	ffint.s.w	$fa1, $fa1
	fmadd.s	$fa0, $fa1, $ft6, $fa0
	ffint.s.w	$fa1, $fa3
	movgr2fr.w	$fa3, $a2
	ldptr.w	$a2, $a1, 2284
	fmadd.s	$fa0, $fa1, $ft8, $fa0
	ffint.s.w	$fa1, $fa2
	fmadd.s	$fa0, $fa1, $ft7, $fa0
	movgr2fr.w	$fa1, $a2
	ldptr.w	$a2, $a1, 2388
	ffint.s.w	$fa2, $fa3
	fmadd.s	$fa0, $fa2, $ft4, $fa0
	ffint.s.w	$fa1, $fa1
	movgr2fr.w	$fa2, $a2
	ldptr.w	$a2, $a1, 2492
	fmadd.s	$fa0, $fa1, $ft2, $fa0
	ffint.s.w	$fa1, $fa2
	fmadd.s	$fa0, $fa1, $ft5, $fa0
	movgr2fr.w	$fa1, $a2
	ldptr.w	$a2, $a1, 2596
	ffint.s.w	$fa1, $fa1
	fmadd.s	$fa0, $fa1, $ft3, $fa0
	ldptr.w	$a1, $a1, 2700
	movgr2fr.w	$fa1, $a2
	ffint.s.w	$fa1, $fa1
	fmadd.s	$fa0, $fa1, $ft1, $fa0
	movgr2fr.w	$fa1, $a1
	ffint.s.w	$fa1, $fa1
	fmadd.s	$fa0, $fa1, $ft0, $fa0
	fst.s	$fa0, $sp, 508
	blez	$a4, .LBB1_16
# %bb.11:                               # %.lr.ph70
	ld.d	$a1, $a6, 0
	move	$a2, $zero
	addi.d	$a3, $a6, 8
	addi.d	$a6, $sp, 408
	b	.LBB1_13
	.p2align	4, , 16
.LBB1_12:                               # %._crit_edge
                                        #   in Loop: Header=BB1_13 Depth=1
	addi.d	$a2, $a2, 1
	beq	$a2, $a4, .LBB1_16
.LBB1_13:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_15 Depth 2
	slli.d	$a7, $a2, 2
	ldx.wu	$t2, $a1, $a7
	addi.w	$t0, $t2, 0
	stx.w	$zero, $a0, $a7
	bltz	$t0, .LBB1_12
# %bb.14:                               # %.lr.ph.preheader
                                        #   in Loop: Header=BB1_13 Depth=1
	alsl.d	$t0, $a2, $a0, 2
	move	$t1, $a3
	move	$t3, $a5
	fmov.s	$fa0, $fs2
	.p2align	4, , 16
.LBB1_15:                               # %.lr.ph
                                        #   Parent Loop BB1_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$t4, $t3, 0
	slli.d	$t2, $t2, 2
	ld.d	$t5, $t1, 0
	fldx.s	$fa1, $t2, $a6
	fldx.s	$fa2, $t4, $a7
	ldx.wu	$t2, $t5, $a7
	fmadd.s	$fa0, $fa1, $fa2, $fa0
	fst.s	$fa0, $t0, 0
	addi.w	$t4, $t2, 0
	addi.d	$t3, $t3, 8
	addi.d	$t1, $t1, 8
	bgez	$t4, .LBB1_15
	b	.LBB1_12
.LBB1_16:                               # %._crit_edge71
	fld.d	$fs7, $sp, 512                  # 8-byte Folded Reload
	fld.d	$fs6, $sp, 520                  # 8-byte Folded Reload
	fld.d	$fs5, $sp, 528                  # 8-byte Folded Reload
	fld.d	$fs4, $sp, 536                  # 8-byte Folded Reload
	fld.d	$fs3, $sp, 544                  # 8-byte Folded Reload
	fld.d	$fs2, $sp, 552                  # 8-byte Folded Reload
	fld.d	$fs1, $sp, 560                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 568                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 576
	ret
.Lfunc_end1:
	.size	match_calc, .Lfunc_end1-match_calc
                                        # -- End function
	.type	Aalign.m,@object                # @Aalign.m
	.local	Aalign.m
	.comm	Aalign.m,8,8
	.type	Aalign.ijp,@object              # @Aalign.ijp
	.local	Aalign.ijp
	.comm	Aalign.ijp,8,8
	.type	Aalign.mp,@object               # @Aalign.mp
	.local	Aalign.mp
	.comm	Aalign.mp,8,8
	.type	Aalign.currentw,@object         # @Aalign.currentw
	.local	Aalign.currentw
	.comm	Aalign.currentw,8,8
	.type	Aalign.previousw,@object        # @Aalign.previousw
	.local	Aalign.previousw
	.comm	Aalign.previousw,8,8
	.type	Aalign.match,@object            # @Aalign.match
	.local	Aalign.match
	.comm	Aalign.match,8,8
	.type	Aalign.initverticalw,@object    # @Aalign.initverticalw
	.local	Aalign.initverticalw
	.comm	Aalign.initverticalw,8,8
	.type	Aalign.lastverticalw,@object    # @Aalign.lastverticalw
	.local	Aalign.lastverticalw
	.comm	Aalign.lastverticalw,8,8
	.type	Aalign.mseq1,@object            # @Aalign.mseq1
	.local	Aalign.mseq1
	.comm	Aalign.mseq1,8,8
	.type	Aalign.mseq2,@object            # @Aalign.mseq2
	.local	Aalign.mseq2
	.comm	Aalign.mseq2,8,8
	.type	Aalign.mseq,@object             # @Aalign.mseq
	.local	Aalign.mseq
	.comm	Aalign.mseq,8,8
	.type	Aalign.cpmx1,@object            # @Aalign.cpmx1
	.local	Aalign.cpmx1
	.comm	Aalign.cpmx1,8,8
	.type	Aalign.cpmx2,@object            # @Aalign.cpmx2
	.local	Aalign.cpmx2
	.comm	Aalign.cpmx2,8,8
	.type	Aalign.intwork,@object          # @Aalign.intwork
	.local	Aalign.intwork
	.comm	Aalign.intwork,8,8
	.type	Aalign.floatwork,@object        # @Aalign.floatwork
	.local	Aalign.floatwork
	.comm	Aalign.floatwork,8,8
	.type	Aalign.orlgth1,@object          # @Aalign.orlgth1
	.local	Aalign.orlgth1
	.comm	Aalign.orlgth1,4,4
	.type	Aalign.orlgth2,@object          # @Aalign.orlgth2
	.local	Aalign.orlgth2
	.comm	Aalign.orlgth2,4,4
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"\ntrying to allocate (%d+%d)xn matrices ... "
	.size	.L.str, 44

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"succeeded\n"
	.size	.L.str.1, 11

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"\n\ntrying to allocate %dx%d matrices ... "
	.size	.L.str.2, 41

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"succeeded\n\n"
	.size	.L.str.3, 12

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"alloclen=%d, resultlen=%d, N=%d\n"
	.size	.L.str.4, 33

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"LENGTH OVER!\n"
	.size	.L.str.5, 14

	.section	".note.GNU-stack","",@progbits
	.addrsig
