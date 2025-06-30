	.file	"hsfcsort.c"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function hsfc2sort
.LCPI0_0:
	.dword	0x41efffffffe00000              # double 4294967295
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0
.LCPI0_1:
	.word	2                               # 0x2
	.word	5                               # 0x5
	.word	8                               # 0x8
	.word	11                              # 0xb
	.word	14                              # 0xe
	.word	17                              # 0x11
	.word	20                              # 0x14
	.word	23                              # 0x17
	.text
	.globl	hsfc2sort
	.p2align	5
	.type	hsfc2sort,@function
hsfc2sort:                              # @hsfc2sort
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
	fst.d	$fs0, $sp, 96                   # 8-byte Folded Spill
	addi.d	$fp, $sp, 192
	bstrins.d	$sp, $zero, 4, 0
	move	$s0, $a5
	move	$s1, $a4
	move	$s2, $a3
	move	$s5, $a2
	move	$s6, $a1
	move	$s4, $a0
	slli.d	$a0, $a0, 3
	alsl.d	$a0, $s4, $a0, 2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	beqz	$s4, .LBB0_6
# %bb.1:                                # %.lr.ph
	pcalau12i	$a0, %pc_hi20(.LCPI0_0)
	fld.d	$fs0, $a0, %pc_lo12(.LCPI0_0)
	move	$s7, $zero
	move	$s8, $zero
	st.d	$s4, $sp, 24                    # 8-byte Folded Spill
	bstrpick.d	$s4, $s4, 31, 0
	.p2align	4, , 16
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	fld.d	$fa0, $s6, 0
	fld.d	$fa1, $s5, 0
	fmul.d	$fa0, $fa0, $fs0
	ftintrz.l.d	$fa0, $fa0
	movfr2gr.d	$a0, $fa0
	st.w	$a0, $sp, 88
	fmul.d	$fa0, $fa1, $fs0
	ftintrz.l.d	$fa0, $fa0
	movfr2gr.d	$a0, $fa0
	st.w	$a0, $sp, 92
	alsl.d	$a2, $s8, $s3, 2
	addi.d	$a0, $sp, 88
	ori	$a1, $zero, 2
	pcaddu18i	$ra, %call36(hsfc2d)
	jirl	$ra, $ra, 0
	addi.d	$a0, $s8, 2
	bstrpick.d	$a0, $a0, 31, 0
	slli.d	$a0, $a0, 2
	stx.w	$s7, $s3, $a0
	addi.d	$s7, $s7, 1
	addi.w	$s8, $s8, 3
	addi.d	$s5, $s5, 8
	addi.d	$s4, $s4, -1
	addi.d	$s6, $s6, 8
	bnez	$s4, .LBB0_2
# %bb.3:                                # %._crit_edge.thread
	ori	$a0, $zero, 3
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	bltu	$s0, $a0, .LBB0_7
# %bb.4:                                # %.lr.ph82.preheader
	move	$a0, $zero
	ori	$a1, $zero, 1
	move	$a2, $s4
	.p2align	4, , 16
.LBB0_5:                                # %.lr.ph82
                                        # =>This Inner Loop Header: Depth=1
	slli.d	$a3, $a0, 2
	ldx.d	$a3, $s3, $a3
	slli.d	$a4, $a1, 2
	stx.d	$a3, $s1, $a4
	add.w	$a1, $a1, $s0
	addi.w	$a2, $a2, -1
	addi.w	$a0, $a0, 3
	bnez	$a2, .LBB0_5
	b	.LBB0_13
.LBB0_6:                                # %._crit_edge
	ori	$a0, $zero, 2
	bltu	$a0, $s0, .LBB0_14
.LBB0_7:
	ori	$a0, $zero, 2
	bne	$s0, $a0, .LBB0_14
# %bb.8:
	beqz	$s4, .LBB0_14
# %bb.9:                                # %.lr.ph78.preheader
	ori	$a1, $zero, 8
	ori	$a0, $zero, 1
	bgeu	$s4, $a1, .LBB0_26
# %bb.10:
	move	$a2, $zero
	move	$a1, $zero
.LBB0_11:                               # %.lr.ph78.preheader121
	sub.d	$a2, $s4, $a2
	.p2align	4, , 16
.LBB0_12:                               # %.lr.ph78
                                        # =>This Inner Loop Header: Depth=1
	slli.d	$a3, $a1, 2
	ldx.w	$a3, $s3, $a3
	slli.d	$a4, $a0, 2
	stx.w	$a3, $s1, $a4
	addi.w	$a0, $a0, 2
	addi.w	$a2, $a2, -1
	addi.w	$a1, $a1, 3
	bnez	$a2, .LBB0_12
.LBB0_13:                               # %.loopexit.thread
	pcalau12i	$a0, %pc_hi20(ui2comp)
	addi.d	$a3, $a0, %pc_lo12(ui2comp)
	ori	$a2, $zero, 12
	move	$a0, $s3
	move	$a1, $s4
	pcaddu18i	$ra, %call36(qsort)
	jirl	$ra, $ra, 0
	b	.LBB0_15
.LBB0_14:                               # %.loopexit
	pcalau12i	$a0, %pc_hi20(ui2comp)
	addi.d	$a3, $a0, %pc_lo12(ui2comp)
	ori	$a2, $zero, 12
	move	$a0, $s3
	move	$a1, $s4
	pcaddu18i	$ra, %call36(qsort)
	jirl	$ra, $ra, 0
	beqz	$s4, .LBB0_19
.LBB0_15:                               # %.lr.ph87.preheader
	ori	$a1, $zero, 16
	ori	$a0, $zero, 2
	bgeu	$s4, $a1, .LBB0_20
# %bb.16:
	move	$a1, $zero
.LBB0_17:                               # %.lr.ph87.preheader120
	sub.d	$a2, $s4, $a1
	.p2align	4, , 16
.LBB0_18:                               # %.lr.ph87
                                        # =>This Inner Loop Header: Depth=1
	slli.d	$a3, $a0, 2
	ldx.w	$a3, $s3, $a3
	add.d	$a3, $a3, $s2
	addi.w	$a4, $a1, 0
	slli.d	$a4, $a4, 2
	stx.w	$a3, $s1, $a4
	add.d	$a1, $a1, $s0
	addi.w	$a2, $a2, -1
	addi.w	$a0, $a0, 3
	bnez	$a2, .LBB0_18
.LBB0_19:                               # %._crit_edge88
	move	$a0, $s3
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	addi.d	$sp, $fp, -192
	fld.d	$fs0, $sp, 96                   # 8-byte Folded Reload
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
.LBB0_20:                               # %vector.scevcheck101
	addi.d	$a1, $s4, -1
	bstrpick.d	$a2, $a1, 31, 0
	alsl.w	$a3, $a2, $a2, 1
	lu12i.w	$a1, 524287
	ori	$a4, $a1, 4093
	move	$a1, $zero
	bltu	$a4, $a3, .LBB0_17
# %bb.21:                               # %vector.scevcheck101
	alsl.d	$a2, $a2, $a2, 1
	srli.d	$a2, $a2, 32
	sltu	$a2, $zero, $a2
	bnez	$a2, .LBB0_17
# %bb.22:                               # %vector.scevcheck101
	ori	$a2, $zero, 1
	bne	$s0, $a2, .LBB0_17
# %bb.23:                               # %vector.ph107
	move	$a2, $zero
	move	$a1, $s4
	bstrins.d	$a1, $zero, 2, 0
	pcalau12i	$a0, %pc_hi20(.LCPI0_1)
	xvld	$xr0, $a0, %pc_lo12(.LCPI0_1)
	alsl.w	$a0, $a1, $a1, 1
	addi.w	$a0, $a0, 2
	xvreplgr2vr.w	$xr1, $s2
	.p2align	4, , 16
.LBB0_24:                               # %vector.body110
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $sp, 32
	vld	$vr2, $sp, 48
	vpickve2gr.w	$a3, $vr2, 3
	vld	$vr3, $sp, 32
	vpickve2gr.w	$a4, $vr2, 2
	vpickve2gr.w	$a5, $vr2, 1
	vpickve2gr.w	$a6, $vr2, 0
	vpickve2gr.w	$a7, $vr3, 3
	vpickve2gr.w	$t0, $vr3, 2
	vpickve2gr.w	$t1, $vr3, 1
	vpickve2gr.w	$t2, $vr3, 0
	slli.d	$t2, $t2, 2
	slli.d	$t1, $t1, 2
	slli.d	$t0, $t0, 2
	slli.d	$a7, $a7, 2
	slli.d	$a6, $a6, 2
	slli.d	$a5, $a5, 2
	slli.d	$a4, $a4, 2
	slli.d	$a3, $a3, 2
	ldx.w	$t2, $s3, $t2
	ldx.w	$t1, $s3, $t1
	ldx.w	$t0, $s3, $t0
	ldx.w	$a7, $s3, $a7
	ldx.w	$a6, $s3, $a6
	ldx.w	$a5, $s3, $a5
	ldx.w	$a4, $s3, $a4
	ldx.w	$a3, $s3, $a3
	xvinsgr2vr.w	$xr2, $t2, 0
	xvinsgr2vr.w	$xr2, $t1, 1
	xvinsgr2vr.w	$xr2, $t0, 2
	xvinsgr2vr.w	$xr2, $a7, 3
	xvinsgr2vr.w	$xr2, $a6, 4
	xvinsgr2vr.w	$xr2, $a5, 5
	xvinsgr2vr.w	$xr2, $a4, 6
	xvinsgr2vr.w	$xr2, $a3, 7
	xvadd.w	$xr2, $xr2, $xr1
	slli.d	$a3, $a2, 2
	xvstx	$xr2, $s1, $a3
	addi.w	$a2, $a2, 8
	xvaddi.wu	$xr0, $xr0, 24
	bne	$a1, $a2, .LBB0_24
# %bb.25:                               # %middle.block115
	bne	$s4, $a1, .LBB0_17
	b	.LBB0_19
.LBB0_26:                               # %vector.scevcheck
	addi.d	$a1, $s4, -1
	bstrpick.d	$a1, $a1, 31, 0
	alsl.w	$a3, $a1, $a1, 1
	move	$a2, $zero
	bltz	$a3, .LBB0_31
# %bb.27:                               # %vector.scevcheck
	alsl.d	$a1, $a1, $a1, 1
	srli.d	$a1, $a1, 32
	sltu	$a3, $zero, $a1
	move	$a1, $a2
	bnez	$a3, .LBB0_11
# %bb.28:                               # %vector.ph
	move	$a2, $s4
	bstrins.d	$a2, $zero, 0, 0
	alsl.w	$a1, $a2, $a2, 1
	slli.d	$a0, $a2, 1
	ori	$a3, $zero, 1
	lu32i.d	$a3, 3
	vreplgr2vr.d	$vr0, $a3
	ori	$a3, $zero, 0
	lu32i.d	$a3, 3
	vreplgr2vr.d	$vr1, $a3
	addi.w	$a0, $a0, 1
	move	$a3, $a2
	.p2align	4, , 16
.LBB0_29:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr2, $vr1, 16
	vslli.d	$vr2, $vr2, 32
	vsrai.d	$vr2, $vr2, 32
	vpickve2gr.d	$a4, $vr2, 0
	slli.d	$a4, $a4, 2
	vpickve2gr.d	$a5, $vr2, 1
	slli.d	$a5, $a5, 2
	ldx.w	$a4, $s3, $a4
	ldx.w	$a5, $s3, $a5
	vshuf4i.w	$vr2, $vr0, 16
	vslli.d	$vr2, $vr2, 32
	vsrai.d	$vr2, $vr2, 32
	vpickve2gr.d	$a6, $vr2, 0
	slli.d	$a6, $a6, 2
	vpickve2gr.d	$a7, $vr2, 1
	slli.d	$a7, $a7, 2
	stx.w	$a4, $s1, $a6
	stx.w	$a5, $s1, $a7
	vaddi.wu	$vr1, $vr1, 6
	addi.w	$a3, $a3, -2
	vaddi.wu	$vr0, $vr0, 4
	bnez	$a3, .LBB0_29
# %bb.30:                               # %middle.block
	bne	$s4, $a2, .LBB0_11
	b	.LBB0_13
.LBB0_31:
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
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function hsfc3sort
.LCPI2_0:
	.dword	0x41efffffffe00000              # double 4294967295
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0
.LCPI2_1:
	.word	3                               # 0x3
	.word	7                               # 0x7
	.word	11                              # 0xb
	.word	15                              # 0xf
	.word	19                              # 0x13
	.word	23                              # 0x17
	.word	27                              # 0x1b
	.word	31                              # 0x1f
	.text
	.globl	hsfc3sort
	.p2align	5
	.type	hsfc3sort,@function
hsfc3sort:                              # @hsfc3sort
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
	fst.d	$fs0, $sp, 96                   # 8-byte Folded Spill
	addi.d	$fp, $sp, 192
	bstrins.d	$sp, $zero, 4, 0
	move	$s0, $a6
	move	$s1, $a5
	move	$s2, $a4
	move	$s5, $a3
	move	$s6, $a2
	move	$s7, $a1
	move	$s4, $a0
	slli.d	$a0, $a0, 4
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	beqz	$s4, .LBB2_6
# %bb.1:                                # %.lr.ph
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.LCPI2_0)
	fld.d	$fs0, $a0, %pc_lo12(.LCPI2_0)
	move	$s8, $zero
	move	$a0, $s4
	move	$s4, $zero
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	bstrpick.d	$s2, $a0, 31, 0
	.p2align	4, , 16
.LBB2_2:                                # =>This Inner Loop Header: Depth=1
	fld.d	$fa0, $s7, 0
	fld.d	$fa1, $s6, 0
	fld.d	$fa2, $s5, 0
	fmul.d	$fa0, $fa0, $fs0
	ftintrz.l.d	$fa0, $fa0
	movfr2gr.d	$a0, $fa0
	st.w	$a0, $sp, 84
	fmul.d	$fa0, $fa1, $fs0
	ftintrz.l.d	$fa0, $fa0
	movfr2gr.d	$a0, $fa0
	st.w	$a0, $sp, 88
	fmul.d	$fa0, $fa2, $fs0
	ftintrz.l.d	$fa0, $fa0
	movfr2gr.d	$a0, $fa0
	st.w	$a0, $sp, 92
	alsl.d	$a2, $s4, $s3, 2
	addi.d	$a0, $sp, 84
	ori	$a1, $zero, 3
	pcaddu18i	$ra, %call36(hsfc3d)
	jirl	$ra, $ra, 0
	addi.d	$a0, $s4, 3
	bstrpick.d	$a0, $a0, 31, 0
	slli.d	$a0, $a0, 2
	stx.w	$s8, $s3, $a0
	addi.d	$s8, $s8, 1
	addi.w	$s4, $s4, 4
	addi.d	$s5, $s5, 8
	addi.d	$s6, $s6, 8
	addi.d	$s2, $s2, -1
	addi.d	$s7, $s7, 8
	bnez	$s2, .LBB2_2
# %bb.3:                                # %._crit_edge.thread
	ori	$a0, $zero, 4
	bltu	$s0, $a0, .LBB2_7
# %bb.4:                                # %.lr.ph114.preheader
	move	$a0, $zero
	ori	$a1, $zero, 1
	ld.d	$s4, $sp, 16                    # 8-byte Folded Reload
	move	$a2, $s4
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB2_5:                                # %.lr.ph114
                                        # =>This Inner Loop Header: Depth=1
	alsl.d	$a3, $a0, $s3, 2
	slli.d	$a4, $a0, 2
	ldx.w	$a4, $s3, $a4
	ld.d	$a3, $a3, 4
	alsl.d	$a5, $a1, $s1, 2
	slli.d	$a6, $a1, 2
	stx.w	$a4, $s1, $a6
	st.d	$a3, $a5, 4
	add.w	$a1, $a1, $s0
	addi.w	$a2, $a2, -1
	addi.w	$a0, $a0, 4
	bnez	$a2, .LBB2_5
	b	.LBB2_25
.LBB2_6:                                # %._crit_edge
	ori	$a0, $zero, 2
	bgeu	$a0, $s0, .LBB2_10
	b	.LBB2_16
.LBB2_7:                                # %.thread
	ori	$a0, $zero, 3
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 16                    # 8-byte Folded Reload
	bne	$s0, $a0, .LBB2_10
# %bb.8:                                # %.lr.ph110.preheader
	move	$a0, $zero
	ori	$a1, $zero, 1
	move	$a2, $s4
	.p2align	4, , 16
.LBB2_9:                                # %.lr.ph110
                                        # =>This Inner Loop Header: Depth=1
	slli.d	$a3, $a0, 2
	ldx.d	$a3, $s3, $a3
	slli.d	$a4, $a1, 2
	stx.d	$a3, $s1, $a4
	addi.w	$a1, $a1, 3
	addi.w	$a2, $a2, -1
	addi.w	$a0, $a0, 4
	bnez	$a2, .LBB2_9
	b	.LBB2_25
.LBB2_10:
	ori	$a0, $zero, 2
	bltu	$s0, $a0, .LBB2_16
# %bb.11:
	beqz	$s4, .LBB2_16
# %bb.12:                               # %.lr.ph106.preheader
	addi.w	$a0, $s4, -8
	lu12i.w	$a1, 131071
	ori	$a1, $a1, 4088
	bltu	$a1, $a0, .LBB2_22
# %bb.13:                               # %vector.ph
	bstrpick.d	$a1, $s4, 29, 1
	slli.w	$a2, $a1, 1
	slli.w	$a0, $a1, 3
	slli.d	$a1, $a1, 2
	ori	$a3, $zero, 1
	lu32i.d	$a3, 3
	vreplgr2vr.d	$vr0, $a3
	ori	$a3, $zero, 0
	lu32i.d	$a3, 4
	vreplgr2vr.d	$vr1, $a3
	addi.w	$a1, $a1, 1
	move	$a3, $a2
	.p2align	4, , 16
.LBB2_14:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vshuf4i.w	$vr2, $vr1, 16
	vslli.d	$vr2, $vr2, 32
	vsrai.d	$vr2, $vr2, 32
	vpickve2gr.d	$a4, $vr2, 0
	slli.d	$a4, $a4, 2
	vpickve2gr.d	$a5, $vr2, 1
	slli.d	$a5, $a5, 2
	ldx.w	$a4, $s3, $a4
	ldx.w	$a5, $s3, $a5
	vshuf4i.w	$vr2, $vr0, 16
	vslli.d	$vr2, $vr2, 32
	vsrai.d	$vr2, $vr2, 32
	vpickve2gr.d	$a6, $vr2, 0
	slli.d	$a6, $a6, 2
	vpickve2gr.d	$a7, $vr2, 1
	slli.d	$a7, $a7, 2
	stx.w	$a4, $s1, $a6
	stx.w	$a5, $s1, $a7
	vaddi.wu	$vr1, $vr1, 8
	addi.w	$a3, $a3, -2
	vaddi.wu	$vr0, $vr0, 4
	bnez	$a3, .LBB2_14
# %bb.15:                               # %middle.block
	bne	$s4, $a2, .LBB2_23
	b	.LBB2_25
.LBB2_16:                               # %.loopexit
	pcalau12i	$a0, %pc_hi20(ui3comp)
	addi.d	$a3, $a0, %pc_lo12(ui3comp)
	ori	$a2, $zero, 16
	move	$a0, $s3
	move	$a1, $s4
	pcaddu18i	$ra, %call36(qsort)
	jirl	$ra, $ra, 0
	beqz	$s4, .LBB2_21
# %bb.17:                               # %.lr.ph119.preheader
	ori	$a1, $zero, 8
	ori	$a0, $zero, 3
	bgeu	$s4, $a1, .LBB2_26
.LBB2_18:
	move	$a1, $zero
.LBB2_19:                               # %.lr.ph119.preheader160
	sub.d	$a2, $s4, $a1
	.p2align	4, , 16
.LBB2_20:                               # %.lr.ph119
                                        # =>This Inner Loop Header: Depth=1
	slli.d	$a3, $a0, 2
	ldx.w	$a3, $s3, $a3
	add.d	$a3, $a3, $s2
	slli.d	$a4, $a1, 2
	stx.w	$a3, $s1, $a4
	add.w	$a1, $a1, $s0
	addi.w	$a2, $a2, -1
	addi.w	$a0, $a0, 4
	bnez	$a2, .LBB2_20
.LBB2_21:                               # %._crit_edge120
	move	$a0, $s3
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	addi.d	$sp, $fp, -192
	fld.d	$fs0, $sp, 96                   # 8-byte Folded Reload
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
.LBB2_22:
	move	$a2, $zero
	move	$a0, $zero
	ori	$a1, $zero, 1
.LBB2_23:                               # %.lr.ph106.preheader161
	sub.d	$a2, $s4, $a2
	.p2align	4, , 16
.LBB2_24:                               # %.lr.ph106
                                        # =>This Inner Loop Header: Depth=1
	slli.d	$a3, $a0, 2
	ldx.w	$a3, $s3, $a3
	slli.d	$a4, $a1, 2
	stx.w	$a3, $s1, $a4
	addi.w	$a1, $a1, 2
	addi.w	$a2, $a2, -1
	addi.w	$a0, $a0, 4
	bnez	$a2, .LBB2_24
.LBB2_25:                               # %.loopexit.thread
	pcalau12i	$a0, %pc_hi20(ui3comp)
	addi.d	$a3, $a0, %pc_lo12(ui3comp)
	ori	$a2, $zero, 16
	move	$a0, $s3
	move	$a1, $s4
	pcaddu18i	$ra, %call36(qsort)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 8
	ori	$a0, $zero, 3
	bltu	$s4, $a1, .LBB2_18
.LBB2_26:                               # %vector.scevcheck139
	addu16i.d	$a1, $s4, -8192
	addi.d	$a1, $a1, -1
	bstrpick.d	$a2, $a1, 31, 29
	ori	$a3, $zero, 7
	move	$a1, $zero
	bltu	$a2, $a3, .LBB2_19
# %bb.27:                               # %vector.scevcheck139
	ori	$a2, $zero, 1
	bne	$s0, $a2, .LBB2_19
# %bb.28:                               # %vector.ph145
	bstrpick.d	$a0, $s4, 29, 3
	slli.w	$a1, $a0, 3
	slli.d	$a0, $a0, 5
	pcalau12i	$a2, %pc_hi20(.LCPI2_1)
	xvld	$xr0, $a2, %pc_lo12(.LCPI2_1)
	addi.w	$a0, $a0, 3
	xvreplgr2vr.w	$xr1, $s2
	xvrepli.w	$xr2, 32
	move	$a2, $s1
	move	$a3, $a1
	.p2align	4, , 16
.LBB2_29:                               # %vector.body148
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $sp, 32
	vld	$vr3, $sp, 48
	vpickve2gr.w	$a4, $vr3, 3
	vld	$vr4, $sp, 32
	vpickve2gr.w	$a5, $vr3, 2
	vpickve2gr.w	$a6, $vr3, 1
	vpickve2gr.w	$a7, $vr3, 0
	vpickve2gr.w	$t0, $vr4, 3
	vpickve2gr.w	$t1, $vr4, 2
	vpickve2gr.w	$t2, $vr4, 1
	vpickve2gr.w	$t3, $vr4, 0
	slli.d	$t3, $t3, 2
	slli.d	$t2, $t2, 2
	slli.d	$t1, $t1, 2
	slli.d	$t0, $t0, 2
	slli.d	$a7, $a7, 2
	slli.d	$a6, $a6, 2
	slli.d	$a5, $a5, 2
	slli.d	$a4, $a4, 2
	ldx.w	$t3, $s3, $t3
	ldx.w	$t2, $s3, $t2
	ldx.w	$t1, $s3, $t1
	ldx.w	$t0, $s3, $t0
	ldx.w	$a7, $s3, $a7
	ldx.w	$a6, $s3, $a6
	ldx.w	$a5, $s3, $a5
	ldx.w	$a4, $s3, $a4
	xvinsgr2vr.w	$xr3, $t3, 0
	xvinsgr2vr.w	$xr3, $t2, 1
	xvinsgr2vr.w	$xr3, $t1, 2
	xvinsgr2vr.w	$xr3, $t0, 3
	xvinsgr2vr.w	$xr3, $a7, 4
	xvinsgr2vr.w	$xr3, $a6, 5
	xvinsgr2vr.w	$xr3, $a5, 6
	xvinsgr2vr.w	$xr3, $a4, 7
	xvadd.w	$xr3, $xr3, $xr1
	xvst	$xr3, $a2, 0
	xvadd.w	$xr0, $xr0, $xr2
	addi.w	$a3, $a3, -8
	addi.d	$a2, $a2, 32
	bnez	$a3, .LBB2_29
# %bb.30:                               # %middle.block153
	bne	$s4, $a1, .LBB2_19
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
