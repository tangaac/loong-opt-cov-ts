	.file	"hsfcsort.c"
	.text
	.globl	hsfc2sort                       # -- Begin function hsfc2sort
	.p2align	5
	.type	hsfc2sort,@function
hsfc2sort:                              # @hsfc2sort
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
	fst.d	$fs0, $sp, 16                   # 8-byte Folded Spill
	move	$fp, $a5
	move	$s0, $a4
	move	$s1, $a3
	move	$s4, $a2
	move	$s5, $a1
	move	$s3, $a0
	slli.d	$a0, $a0, 3
	alsl.d	$a0, $s3, $a0, 2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	beqz	$s3, .LBB0_6
# %bb.1:                                # %.lr.ph
	move	$s6, $zero
	move	$s7, $zero
	bstrpick.d	$s8, $s3, 31, 0
	lu12i.w	$a0, -512
	lu52i.d	$a0, $a0, 1054
	movgr2fr.d	$fs0, $a0
	.p2align	4, , 16
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	fld.d	$fa0, $s5, 0
	fld.d	$fa1, $s4, 0
	fmul.d	$fa0, $fa0, $fs0
	ftintrz.l.d	$fa0, $fa0
	movfr2gr.d	$a0, $fa0
	st.w	$a0, $sp, 8
	fmul.d	$fa0, $fa1, $fs0
	ftintrz.l.d	$fa0, $fa0
	movfr2gr.d	$a0, $fa0
	st.w	$a0, $sp, 12
	alsl.d	$a2, $s7, $s2, 2
	addi.d	$a0, $sp, 8
	ori	$a1, $zero, 2
	pcaddu18i	$ra, %call36(hsfc2d)
	jirl	$ra, $ra, 0
	addi.d	$a0, $s7, 2
	bstrpick.d	$a0, $a0, 31, 0
	slli.d	$a0, $a0, 2
	stx.w	$s6, $s2, $a0
	addi.d	$s6, $s6, 1
	addi.w	$s7, $s7, 3
	addi.d	$s4, $s4, 8
	addi.d	$s8, $s8, -1
	addi.d	$s5, $s5, 8
	bnez	$s8, .LBB0_2
# %bb.3:                                # %._crit_edge.thread
	ori	$a0, $zero, 3
	bltu	$fp, $a0, .LBB0_7
# %bb.4:                                # %.lr.ph82.preheader
	move	$a0, $zero
	ori	$a1, $zero, 1
	move	$a2, $s3
	.p2align	4, , 16
.LBB0_5:                                # %.lr.ph82
                                        # =>This Inner Loop Header: Depth=1
	slli.d	$a3, $a0, 2
	ldx.d	$a3, $s2, $a3
	slli.d	$a4, $a1, 2
	stx.d	$a3, $s0, $a4
	add.w	$a1, $a1, $fp
	addi.w	$a2, $a2, -1
	addi.w	$a0, $a0, 3
	bnez	$a2, .LBB0_5
	b	.LBB0_13
.LBB0_6:                                # %._crit_edge
	ori	$a0, $zero, 2
	bltu	$a0, $fp, .LBB0_14
.LBB0_7:
	ori	$a0, $zero, 2
	bne	$fp, $a0, .LBB0_14
# %bb.8:
	beqz	$s3, .LBB0_14
# %bb.9:                                # %.lr.ph78.preheader
	ori	$a1, $zero, 2
	ori	$a0, $zero, 1
	bgeu	$s3, $a1, .LBB0_25
# %bb.10:
	move	$a2, $zero
	move	$a1, $zero
.LBB0_11:                               # %.lr.ph78.preheader120
	sub.d	$a2, $s3, $a2
	.p2align	4, , 16
.LBB0_12:                               # %.lr.ph78
                                        # =>This Inner Loop Header: Depth=1
	slli.d	$a3, $a1, 2
	ldx.w	$a3, $s2, $a3
	slli.d	$a4, $a0, 2
	stx.w	$a3, $s0, $a4
	addi.w	$a0, $a0, 2
	addi.w	$a2, $a2, -1
	addi.w	$a1, $a1, 3
	bnez	$a2, .LBB0_12
.LBB0_13:                               # %.loopexit.thread
	pcalau12i	$a0, %pc_hi20(ui2comp)
	addi.d	$a3, $a0, %pc_lo12(ui2comp)
	ori	$a2, $zero, 12
	move	$a0, $s2
	move	$a1, $s3
	pcaddu18i	$ra, %call36(qsort)
	jirl	$ra, $ra, 0
	b	.LBB0_15
.LBB0_14:                               # %.loopexit
	pcalau12i	$a0, %pc_hi20(ui2comp)
	addi.d	$a3, $a0, %pc_lo12(ui2comp)
	ori	$a2, $zero, 12
	move	$a0, $s2
	move	$a1, $s3
	pcaddu18i	$ra, %call36(qsort)
	jirl	$ra, $ra, 0
	beqz	$s3, .LBB0_19
.LBB0_15:                               # %.lr.ph87.preheader
	ori	$a0, $zero, 2
	bgeu	$s3, $a0, .LBB0_20
# %bb.16:
	move	$a1, $zero
.LBB0_17:                               # %.lr.ph87.preheader119
	sub.d	$a2, $s3, $a1
	.p2align	4, , 16
.LBB0_18:                               # %.lr.ph87
                                        # =>This Inner Loop Header: Depth=1
	slli.d	$a3, $a0, 2
	ldx.w	$a3, $s2, $a3
	add.d	$a3, $a3, $s1
	slli.d	$a4, $a1, 2
	stx.w	$a3, $s0, $a4
	add.w	$a1, $a1, $fp
	addi.w	$a2, $a2, -1
	addi.w	$a0, $a0, 3
	bnez	$a2, .LBB0_18
.LBB0_19:                               # %._crit_edge88
	move	$a0, $s2
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	fld.d	$fs0, $sp, 16                   # 8-byte Folded Reload
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
.LBB0_20:                               # %vector.scevcheck102
	lu12i.w	$a1, -174763
	ori	$a2, $a1, 1365
	add.w	$a2, $s3, $a2
	ori	$a3, $a1, 1366
	move	$a1, $zero
	bltu	$a2, $a3, .LBB0_17
# %bb.21:                               # %vector.scevcheck102
	ori	$a2, $zero, 1
	bne	$fp, $a2, .LBB0_17
# %bb.22:                               # %vector.ph108
	bstrpick.d	$a0, $s3, 29, 1
	slli.w	$a1, $a0, 1
	slli.d	$a2, $a0, 2
	alsl.d	$a0, $a0, $a2, 1
	addi.w	$a0, $a0, 2
	addi.d	$a2, $s0, 4
	addi.d	$a3, $s2, 20
	move	$a4, $a1
	.p2align	4, , 16
.LBB0_23:                               # %vector.body111
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a5, $a3, -12
	ld.w	$a6, $a3, 0
	add.d	$a5, $a5, $s1
	add.d	$a6, $a6, $s1
	st.w	$a5, $a2, -4
	st.w	$a6, $a2, 0
	addi.d	$a2, $a2, 8
	addi.w	$a4, $a4, -2
	addi.d	$a3, $a3, 24
	bnez	$a4, .LBB0_23
# %bb.24:                               # %middle.block115
	bne	$s3, $a1, .LBB0_17
	b	.LBB0_19
.LBB0_25:                               # %vector.scevcheck
	addi.d	$a1, $s3, -1
	bstrpick.d	$a1, $a1, 31, 0
	alsl.w	$a3, $a1, $a1, 1
	move	$a2, $zero
	bltz	$a3, .LBB0_30
# %bb.26:                               # %vector.scevcheck
	alsl.d	$a1, $a1, $a1, 1
	srli.d	$a1, $a1, 32
	sltu	$a3, $zero, $a1
	move	$a1, $a2
	bnez	$a3, .LBB0_11
# %bb.27:                               # %vector.ph
	move	$a3, $zero
	move	$a4, $zero
	move	$a2, $s3
	bstrins.d	$a2, $zero, 0, 0
	alsl.w	$a1, $a2, $a2, 1
	slli.d	$a0, $a2, 1
	addi.w	$a0, $a0, 1
	move	$a5, $a2
	.p2align	4, , 16
.LBB0_28:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	addi.w	$a6, $a3, 3
	slli.d	$a7, $a3, 2
	slli.d	$a6, $a6, 2
	ldx.w	$a7, $s2, $a7
	ldx.w	$a6, $s2, $a6
	alsl.d	$t0, $a4, $s0, 2
	st.w	$a7, $t0, 4
	st.w	$a6, $t0, 12
	addi.w	$a4, $a4, 4
	addi.w	$a5, $a5, -2
	addi.w	$a3, $a3, 6
	bnez	$a5, .LBB0_28
# %bb.29:                               # %middle.block
	bne	$s3, $a2, .LBB0_11
	b	.LBB0_13
.LBB0_30:
	move	$a1, $a2
	b	.LBB0_11
.Lfunc_end0:
	.size	hsfc2sort, .Lfunc_end0-hsfc2sort
                                        # -- End function
	.p2align	5                               # -- Begin function ui2comp
	.type	ui2comp,@function
ui2comp:                                # @ui2comp
# %bb.0:
	ld.w	$a2, $a0, 0
	ld.w	$a3, $a1, 0
	bne	$a2, $a3, .LBB1_3
# %bb.1:
	ld.w	$a0, $a0, 4
	ld.w	$a1, $a1, 4
	bne	$a0, $a1, .LBB1_4
# %bb.2:
	move	$a0, $zero
	ret
.LBB1_3:
	sltu	$a0, $a2, $a3
	sub.d	$a0, $zero, $a0
	ori	$a0, $a0, 1
	ret
.LBB1_4:
	sltu	$a0, $a0, $a1
	sub.d	$a0, $zero, $a0
	ori	$a0, $a0, 1
	ret
.Lfunc_end1:
	.size	ui2comp, .Lfunc_end1-ui2comp
                                        # -- End function
	.globl	hsfc3sort                       # -- Begin function hsfc3sort
	.p2align	5
	.type	hsfc3sort,@function
hsfc3sort:                              # @hsfc3sort
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
	st.d	$s8, $sp, 40                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 32                   # 8-byte Folded Spill
	move	$fp, $a6
	move	$s0, $a5
	move	$s1, $a4
	move	$s4, $a3
	move	$s5, $a2
	move	$s6, $a1
	move	$s3, $a0
	slli.d	$a0, $a0, 4
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	beqz	$s3, .LBB2_6
# %bb.1:                                # %.lr.ph
	move	$s7, $zero
	move	$s8, $zero
	st.d	$s3, $sp, 8                     # 8-byte Folded Spill
	bstrpick.d	$s3, $s3, 31, 0
	lu12i.w	$a0, -512
	lu52i.d	$a0, $a0, 1054
	movgr2fr.d	$fs0, $a0
	.p2align	4, , 16
.LBB2_2:                                # =>This Inner Loop Header: Depth=1
	fld.d	$fa0, $s6, 0
	fld.d	$fa1, $s5, 0
	fld.d	$fa2, $s4, 0
	fmul.d	$fa0, $fa0, $fs0
	ftintrz.l.d	$fa0, $fa0
	movfr2gr.d	$a0, $fa0
	st.w	$a0, $sp, 20
	fmul.d	$fa0, $fa1, $fs0
	ftintrz.l.d	$fa0, $fa0
	movfr2gr.d	$a0, $fa0
	st.w	$a0, $sp, 24
	fmul.d	$fa0, $fa2, $fs0
	ftintrz.l.d	$fa0, $fa0
	movfr2gr.d	$a0, $fa0
	st.w	$a0, $sp, 28
	alsl.d	$a2, $s8, $s2, 2
	addi.d	$a0, $sp, 20
	ori	$a1, $zero, 3
	pcaddu18i	$ra, %call36(hsfc3d)
	jirl	$ra, $ra, 0
	addi.d	$a0, $s8, 3
	bstrpick.d	$a0, $a0, 31, 0
	slli.d	$a0, $a0, 2
	stx.w	$s7, $s2, $a0
	addi.d	$s7, $s7, 1
	addi.w	$s8, $s8, 4
	addi.d	$s4, $s4, 8
	addi.d	$s5, $s5, 8
	addi.d	$s3, $s3, -1
	addi.d	$s6, $s6, 8
	bnez	$s3, .LBB2_2
# %bb.3:                                # %._crit_edge.thread
	ori	$a0, $zero, 4
	bltu	$fp, $a0, .LBB2_7
# %bb.4:                                # %.lr.ph114.preheader
	move	$a0, $zero
	ori	$a1, $zero, 1
	ld.d	$s3, $sp, 8                     # 8-byte Folded Reload
	move	$a2, $s3
	.p2align	4, , 16
.LBB2_5:                                # %.lr.ph114
                                        # =>This Inner Loop Header: Depth=1
	alsl.d	$a3, $a0, $s2, 2
	slli.d	$a4, $a0, 2
	ldx.w	$a4, $s2, $a4
	ld.d	$a3, $a3, 4
	alsl.d	$a5, $a1, $s0, 2
	slli.d	$a6, $a1, 2
	stx.w	$a4, $s0, $a6
	st.d	$a3, $a5, 4
	add.w	$a1, $a1, $fp
	addi.w	$a2, $a2, -1
	addi.w	$a0, $a0, 4
	bnez	$a2, .LBB2_5
	b	.LBB2_25
.LBB2_6:                                # %._crit_edge
	ori	$a0, $zero, 2
	bgeu	$a0, $fp, .LBB2_10
	b	.LBB2_16
.LBB2_7:                                # %.thread
	ori	$a0, $zero, 3
	ld.d	$s3, $sp, 8                     # 8-byte Folded Reload
	bne	$fp, $a0, .LBB2_10
# %bb.8:                                # %.lr.ph110.preheader
	move	$a0, $zero
	ori	$a1, $zero, 1
	move	$a2, $s3
	.p2align	4, , 16
.LBB2_9:                                # %.lr.ph110
                                        # =>This Inner Loop Header: Depth=1
	slli.d	$a3, $a0, 2
	ldx.d	$a3, $s2, $a3
	slli.d	$a4, $a1, 2
	stx.d	$a3, $s0, $a4
	addi.w	$a1, $a1, 3
	addi.w	$a2, $a2, -1
	addi.w	$a0, $a0, 4
	bnez	$a2, .LBB2_9
	b	.LBB2_25
.LBB2_10:
	ori	$a0, $zero, 2
	bltu	$fp, $a0, .LBB2_16
# %bb.11:
	beqz	$s3, .LBB2_16
# %bb.12:                               # %.lr.ph106.preheader
	addi.w	$a0, $s3, -2
	lu12i.w	$a1, 131071
	ori	$a1, $a1, 4094
	bltu	$a1, $a0, .LBB2_22
# %bb.13:                               # %vector.ph
	bstrpick.d	$a1, $s3, 29, 1
	slli.w	$a2, $a1, 1
	slli.w	$a0, $a1, 3
	slli.d	$a1, $a1, 2
	addi.w	$a1, $a1, 1
	addi.d	$a3, $s0, 12
	addi.d	$a4, $s2, 16
	move	$a5, $a2
	.p2align	4, , 16
.LBB2_14:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a6, $a4, -16
	ld.w	$a7, $a4, 0
	st.w	$a6, $a3, -8
	st.w	$a7, $a3, 0
	addi.d	$a3, $a3, 16
	addi.w	$a5, $a5, -2
	addi.d	$a4, $a4, 32
	bnez	$a5, .LBB2_14
# %bb.15:                               # %middle.block
	bne	$s3, $a2, .LBB2_23
	b	.LBB2_25
.LBB2_16:                               # %.loopexit
	pcalau12i	$a0, %pc_hi20(ui3comp)
	addi.d	$a3, $a0, %pc_lo12(ui3comp)
	ori	$a2, $zero, 16
	move	$a0, $s2
	move	$a1, $s3
	pcaddu18i	$ra, %call36(qsort)
	jirl	$ra, $ra, 0
	beqz	$s3, .LBB2_21
# %bb.17:                               # %.lr.ph119.preheader
	ori	$a1, $zero, 2
	ori	$a0, $zero, 3
	bgeu	$s3, $a1, .LBB2_26
.LBB2_18:
	move	$a1, $zero
.LBB2_19:                               # %.lr.ph119.preheader159
	sub.d	$a2, $s3, $a1
	.p2align	4, , 16
.LBB2_20:                               # %.lr.ph119
                                        # =>This Inner Loop Header: Depth=1
	slli.d	$a3, $a0, 2
	ldx.w	$a3, $s2, $a3
	add.d	$a3, $a3, $s1
	slli.d	$a4, $a1, 2
	stx.w	$a3, $s0, $a4
	add.w	$a1, $a1, $fp
	addi.w	$a2, $a2, -1
	addi.w	$a0, $a0, 4
	bnez	$a2, .LBB2_20
.LBB2_21:                               # %._crit_edge120
	move	$a0, $s2
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	fld.d	$fs0, $sp, 32                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 40                    # 8-byte Folded Reload
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
.LBB2_22:
	move	$a2, $zero
	move	$a0, $zero
	ori	$a1, $zero, 1
.LBB2_23:                               # %.lr.ph106.preheader160
	sub.d	$a2, $s3, $a2
	.p2align	4, , 16
.LBB2_24:                               # %.lr.ph106
                                        # =>This Inner Loop Header: Depth=1
	slli.d	$a3, $a0, 2
	ldx.w	$a3, $s2, $a3
	slli.d	$a4, $a1, 2
	stx.w	$a3, $s0, $a4
	addi.w	$a1, $a1, 2
	addi.w	$a2, $a2, -1
	addi.w	$a0, $a0, 4
	bnez	$a2, .LBB2_24
.LBB2_25:                               # %.loopexit.thread
	pcalau12i	$a0, %pc_hi20(ui3comp)
	addi.d	$a3, $a0, %pc_lo12(ui3comp)
	ori	$a2, $zero, 16
	move	$a0, $s2
	move	$a1, $s3
	pcaddu18i	$ra, %call36(qsort)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 2
	ori	$a0, $zero, 3
	bltu	$s3, $a1, .LBB2_18
.LBB2_26:                               # %vector.scevcheck140
	addu16i.d	$a1, $s3, -8192
	addi.d	$a1, $a1, -1
	bstrpick.d	$a2, $a1, 31, 29
	ori	$a3, $zero, 7
	move	$a1, $zero
	bltu	$a2, $a3, .LBB2_19
# %bb.27:                               # %vector.scevcheck140
	ori	$a2, $zero, 1
	bne	$fp, $a2, .LBB2_19
# %bb.28:                               # %vector.ph146
	bstrpick.d	$a0, $s3, 29, 1
	slli.w	$a1, $a0, 1
	slli.d	$a0, $a0, 3
	addi.w	$a0, $a0, 3
	addi.d	$a2, $s0, 4
	addi.d	$a3, $s2, 28
	move	$a4, $a1
	.p2align	4, , 16
.LBB2_29:                               # %vector.body149
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a5, $a3, -16
	ld.w	$a6, $a3, 0
	add.d	$a5, $a5, $s1
	add.d	$a6, $a6, $s1
	st.w	$a5, $a2, -4
	st.w	$a6, $a2, 0
	addi.d	$a2, $a2, 8
	addi.w	$a4, $a4, -2
	addi.d	$a3, $a3, 32
	bnez	$a4, .LBB2_29
# %bb.30:                               # %middle.block153
	bne	$s3, $a1, .LBB2_19
	b	.LBB2_21
.Lfunc_end2:
	.size	hsfc3sort, .Lfunc_end2-hsfc3sort
                                        # -- End function
	.p2align	5                               # -- Begin function ui3comp
	.type	ui3comp,@function
ui3comp:                                # @ui3comp
# %bb.0:
	ld.w	$a2, $a0, 0
	ld.w	$a3, $a1, 0
	bne	$a2, $a3, .LBB3_4
# %bb.1:
	ld.w	$a2, $a0, 4
	ld.w	$a3, $a1, 4
	bne	$a2, $a3, .LBB3_4
# %bb.2:
	ld.w	$a0, $a0, 8
	ld.w	$a1, $a1, 8
	bne	$a0, $a1, .LBB3_5
# %bb.3:
	move	$a0, $zero
	ret
.LBB3_4:
	sltu	$a0, $a2, $a3
	sub.d	$a0, $zero, $a0
	ori	$a0, $a0, 1
	ret
.LBB3_5:
	sltu	$a0, $a0, $a1
	sub.d	$a0, $zero, $a0
	ori	$a0, $a0, 1
	ret
.Lfunc_end3:
	.size	ui3comp, .Lfunc_end3-ui3comp
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym ui2comp
	.addrsig_sym ui3comp
