	.file	"reduceg.c"
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function reduceg
.LCPI0_0:
	.word	0                               # 0x0
	.word	4                               # 0x4
	.word	4                               # 0x4
	.word	4                               # 0x4
	.text
	.globl	reduceg
	.p2align	5
	.type	reduceg,@function
reduceg:                                # @reduceg
# %bb.0:
	addi.d	$sp, $sp, -256
	st.d	$ra, $sp, 248                   # 8-byte Folded Spill
	st.d	$fp, $sp, 240                   # 8-byte Folded Spill
	st.d	$s0, $sp, 232                   # 8-byte Folded Spill
	st.d	$s1, $sp, 224                   # 8-byte Folded Spill
	st.d	$s2, $sp, 216                   # 8-byte Folded Spill
	st.d	$s3, $sp, 208                   # 8-byte Folded Spill
	st.d	$s4, $sp, 200                   # 8-byte Folded Spill
	st.d	$s5, $sp, 192                   # 8-byte Folded Spill
	st.d	$s6, $sp, 184                   # 8-byte Folded Spill
	st.d	$s7, $sp, 176                   # 8-byte Folded Spill
	st.d	$s8, $sp, 168                   # 8-byte Folded Spill
	st.d	$zero, $sp, 144
	ori	$a0, $zero, 808
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(eNum)
	ld.d	$a1, $a1, %got_pc_lo12(eNum)
	ld.w	$a2, $a1, 0
	move	$fp, $a0
	ori	$a0, $zero, 1
	st.w	$zero, $sp, 164
	blt	$a2, $a0, .LBB0_3
# %bb.1:                                # %.lr.ph
	pcalau12i	$a2, %got_pc_hi20(eArray)
	ld.d	$a2, $a2, %got_pc_lo12(eArray)
	ld.d	$a3, $a2, 0
	move	$a2, $zero
	addi.d	$a3, $a3, 100
	.p2align	4, , 16
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	st.w	$zero, $a3, 0
	ld.w	$a4, $a1, 0
	addi.d	$a2, $a2, 1
	addi.d	$a3, $a3, 56
	blt	$a2, $a4, .LBB0_2
.LBB0_3:                                # %.preheader727
	pcalau12i	$a1, %got_pc_hi20(numRects)
	ld.d	$a3, $a1, %got_pc_lo12(numRects)
	ld.w	$a1, $a3, 0
	blt	$a1, $a0, .LBB0_6
# %bb.4:                                # %.lr.ph741
	pcalau12i	$a0, %got_pc_hi20(rectArray)
	ld.d	$a0, $a0, %got_pc_lo12(rectArray)
	ld.d	$a1, $a0, 0
	move	$a0, $zero
	addi.d	$a1, $a1, 84
	vrepli.b	$vr0, 0
	.p2align	4, , 16
.LBB0_5:                                # =>This Inner Loop Header: Depth=1
	vst	$vr0, $a1, 0
	ld.w	$a2, $a3, 0
	addi.d	$a0, $a0, 1
	addi.d	$a1, $a1, 52
	blt	$a0, $a2, .LBB0_5
.LBB0_6:                                # %.preheader726
	st.d	$a3, $sp, 0                     # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(numXnodes)
	ld.d	$a0, $a0, %got_pc_lo12(numXnodes)
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	ld.w	$a0, $a0, 0
	ori	$s1, $zero, 1
	lu12i.w	$a2, -251659
	lu12i.w	$a3, 20971
	lu12i.w	$a4, 10485
	pcalau12i	$a1, %pc_hi20(.LCPI0_0)
	st.d	$a1, $sp, 112                   # 8-byte Folded Spill
	blt	$a0, $s1, .LBB0_33
# %bb.7:                                # %.lr.ph755.preheader
	xvrepli.b	$xr0, 0
	xvst	$xr0, $sp, 80                   # 32-byte Folded Spill
	pcalau12i	$a1, %got_pc_hi20(xNodeArray)
	ld.d	$a1, $a1, %got_pc_lo12(xNodeArray)
	st.d	$a1, $sp, 16                    # 8-byte Folded Spill
	ori	$s2, $a2, 3113
	ori	$s3, $a3, 2128
	ori	$s5, $a4, 3112
	pcalau12i	$a1, %got_pc_hi20(eArray)
	ld.d	$s4, $a1, %got_pc_lo12(eArray)
	ori	$s6, $zero, 56
	pcalau12i	$a1, %got_pc_hi20(rectArray)
	ld.d	$a1, $a1, %got_pc_lo12(rectArray)
	st.d	$a1, $sp, 128                   # 8-byte Folded Spill
	ori	$s0, $zero, 52
	ori	$a1, $zero, 1
	st.d	$s2, $sp, 72                    # 8-byte Folded Spill
	st.d	$s3, $sp, 64                    # 8-byte Folded Spill
	st.d	$s5, $sp, 56                    # 8-byte Folded Spill
	b	.LBB0_10
	.p2align	4, , 16
.LBB0_8:                                # %._crit_edge751.loopexit
                                        #   in Loop: Header=BB0_10 Depth=1
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
.LBB0_9:                                # %._crit_edge751
                                        #   in Loop: Header=BB0_10 Depth=1
	ld.d	$a2, $sp, 120                   # 8-byte Folded Reload
	addi.d	$a1, $a2, 1
	bge	$a2, $a0, .LBB0_33
.LBB0_10:                               # %.lr.ph755
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_14 Depth 2
                                        #       Child Loop BB0_23 Depth 3
                                        #       Child Loop BB0_28 Depth 3
                                        #       Child Loop BB0_32 Depth 3
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a2, $a2, 0
	st.d	$a1, $sp, 120                   # 8-byte Folded Spill
	slli.d	$a1, $a1, 3
	ldx.d	$s7, $a2, $a1
	bnez	$s7, .LBB0_14
	b	.LBB0_9
.LBB0_11:                               #   in Loop: Header=BB0_14 Depth=2
	move	$a4, $zero
.LBB0_12:                               # %._crit_edge
                                        #   in Loop: Header=BB0_14 Depth=2
	ld.w	$a2, $sp, 164
	div.w	$a0, $a4, $s8
	st.w	$a0, $sp, 160
	slli.d	$a1, $a2, 3
	stx.d	$s7, $fp, $a1
	sub.w	$a1, $zero, $a0
	addi.d	$a0, $sp, 144
	pcaddu18i	$ra, %call36(tinsert)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s7, 8
	ld.w	$a1, $a0, 4
	ld.d	$a2, $s4, 0
	mul.d	$a1, $a1, $s6
	add.d	$a3, $a2, $a1
	ld.w	$a3, $a3, 4
	ld.d	$a4, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a4, $a4, 0
	ldx.w	$a1, $a2, $a1
	mul.d	$a3, $a3, $s0
	add.d	$a3, $a4, $a3
	st.w	$s1, $a3, 44
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a4, $a1
	st.w	$s1, $a1, 36
	slli.d	$a1, $s8, 2
	ldx.w	$a0, $a0, $a1
	mul.d	$a0, $a0, $s6
	add.d	$a1, $a2, $a0
	ld.w	$a1, $a1, 4
	ldx.w	$a0, $a2, $a0
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a4, $a1
	st.w	$s1, $a1, 40
	mul.d	$a0, $a0, $s0
	add.d	$a0, $a4, $a0
	st.w	$s1, $a0, 32
.LBB0_13:                               #   in Loop: Header=BB0_14 Depth=2
	ld.d	$s7, $s7, 24
	beqz	$s7, .LBB0_8
.LBB0_14:                               # %.lr.ph750
                                        #   Parent Loop BB0_10 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_23 Depth 3
                                        #       Child Loop BB0_28 Depth 3
                                        #       Child Loop BB0_32 Depth 3
	ld.w	$a0, $s7, 0
	beq	$a0, $s1, .LBB0_13
# %bb.15:                               #   in Loop: Header=BB0_14 Depth=2
	ld.d	$a1, $s7, 8
	ld.w	$a0, $sp, 164
	ld.w	$s8, $a1, 0
	addi.d	$a1, $a0, 1
	mul.d	$a2, $a1, $s2
	add.d	$a2, $a2, $s3
	rotri.w	$a2, $a2, 2
	st.w	$a1, $sp, 164
	bgeu	$s5, $a2, .LBB0_17
# %bb.16:                               #   in Loop: Header=BB0_14 Depth=2
	bge	$s8, $s1, .LBB0_18
	b	.LBB0_11
.LBB0_17:                               #   in Loop: Header=BB0_14 Depth=2
	slli.d	$a0, $a0, 3
	addi.d	$a1, $a0, 808
	move	$a0, $fp
	pcaddu18i	$ra, %call36(realloc)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	blt	$s8, $s1, .LBB0_11
.LBB0_18:                               # %iter.check
                                        #   in Loop: Header=BB0_14 Depth=2
	ld.d	$a0, $s4, 0
	ld.d	$a1, $s7, 8
	ori	$a2, $zero, 4
	bgeu	$s8, $a2, .LBB0_20
# %bb.19:                               #   in Loop: Header=BB0_14 Depth=2
	move	$a4, $zero
	ori	$a3, $zero, 1
	b	.LBB0_31
.LBB0_20:                               # %vector.main.loop.iter.check
                                        #   in Loop: Header=BB0_14 Depth=2
	ori	$a2, $zero, 16
	bgeu	$s8, $a2, .LBB0_22
# %bb.21:                               #   in Loop: Header=BB0_14 Depth=2
	move	$a2, $zero
	move	$a4, $zero
	b	.LBB0_27
.LBB0_22:                               # %vector.ph
                                        #   in Loop: Header=BB0_14 Depth=2
	bstrpick.d	$a2, $s8, 30, 4
	slli.d	$a2, $a2, 4
	addi.d	$a3, $a1, 36
	move	$a4, $a2
	xvld	$xr1, $sp, 80                   # 32-byte Folded Reload
	xvori.b	$xr0, $xr1, 0
	.p2align	4, , 16
.LBB0_23:                               # %vector.body
                                        #   Parent Loop BB0_10 Depth=1
                                        #     Parent Loop BB0_14 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	xvld	$xr2, $a3, -32
	xvld	$xr3, $a3, 0
	xvpermi.q	$xr4, $xr2, 1
	vpickve2gr.w	$a5, $vr4, 3
	vpickve2gr.w	$a6, $vr4, 2
	vpickve2gr.w	$a7, $vr4, 1
	vpickve2gr.w	$t0, $vr4, 0
	vpickve2gr.w	$t1, $vr2, 3
	vpickve2gr.w	$t2, $vr2, 2
	vpickve2gr.w	$t3, $vr2, 1
	vpickve2gr.w	$t4, $vr2, 0
	xvpermi.q	$xr2, $xr3, 1
	vpickve2gr.w	$t5, $vr2, 3
	vpickve2gr.w	$t6, $vr2, 2
	vpickve2gr.w	$t7, $vr2, 1
	vpickve2gr.w	$t8, $vr2, 0
	vpickve2gr.w	$ra, $vr3, 3
	vpickve2gr.w	$s3, $vr3, 2
	vpickve2gr.w	$s5, $vr3, 1
	vpickve2gr.w	$s2, $vr3, 0
	mul.d	$t4, $t4, $s6
	add.d	$t4, $a0, $t4
	mul.d	$t3, $t3, $s6
	add.d	$t3, $a0, $t3
	mul.d	$t2, $t2, $s6
	add.d	$t2, $a0, $t2
	mul.d	$t1, $t1, $s6
	add.d	$t1, $a0, $t1
	mul.d	$t0, $t0, $s6
	add.d	$t0, $a0, $t0
	mul.d	$a7, $a7, $s6
	add.d	$a7, $a0, $a7
	mul.d	$a6, $a6, $s6
	add.d	$a6, $a0, $a6
	mul.d	$a5, $a5, $s6
	add.d	$a5, $a0, $a5
	mul.d	$s2, $s2, $s6
	add.d	$s2, $a0, $s2
	mul.d	$s5, $s5, $s6
	add.d	$s5, $a0, $s5
	mul.d	$s3, $s3, $s6
	add.d	$s3, $a0, $s3
	mul.d	$ra, $ra, $s6
	add.d	$ra, $a0, $ra
	mul.d	$t8, $t8, $s6
	add.d	$t8, $a0, $t8
	mul.d	$t7, $t7, $s6
	add.d	$t7, $a0, $t7
	mul.d	$t6, $t6, $s6
	add.d	$t6, $a0, $t6
	mul.d	$t5, $t5, $s6
	add.d	$t5, $a0, $t5
	ld.w	$t4, $t4, 20
	ld.w	$t3, $t3, 20
	ld.w	$t2, $t2, 20
	ld.w	$t1, $t1, 20
	ld.w	$t0, $t0, 20
	ld.w	$a7, $a7, 20
	ld.w	$a6, $a6, 20
	ld.w	$a5, $a5, 20
	xvinsgr2vr.w	$xr2, $t4, 0
	xvinsgr2vr.w	$xr2, $t3, 1
	xvinsgr2vr.w	$xr2, $t2, 2
	xvinsgr2vr.w	$xr2, $t1, 3
	xvinsgr2vr.w	$xr2, $t0, 4
	xvinsgr2vr.w	$xr2, $a7, 5
	xvinsgr2vr.w	$xr2, $a6, 6
	xvinsgr2vr.w	$xr2, $a5, 7
	ld.w	$a5, $s2, 20
	ld.w	$a6, $s5, 20
	ld.w	$a7, $s3, 20
	ld.w	$t0, $ra, 20
	ld.w	$t1, $t8, 20
	ld.w	$t2, $t7, 20
	ld.w	$t3, $t6, 20
	ld.w	$t4, $t5, 20
	xvinsgr2vr.w	$xr3, $a5, 0
	xvinsgr2vr.w	$xr3, $a6, 1
	xvinsgr2vr.w	$xr3, $a7, 2
	xvinsgr2vr.w	$xr3, $t0, 3
	xvinsgr2vr.w	$xr3, $t1, 4
	xvinsgr2vr.w	$xr3, $t2, 5
	xvinsgr2vr.w	$xr3, $t3, 6
	xvinsgr2vr.w	$xr3, $t4, 7
	xvadd.w	$xr0, $xr0, $xr2
	xvadd.w	$xr1, $xr1, $xr3
	addi.d	$a4, $a4, -16
	addi.d	$a3, $a3, 64
	bnez	$a4, .LBB0_23
# %bb.24:                               # %middle.block
                                        #   in Loop: Header=BB0_14 Depth=2
	xvadd.w	$xr0, $xr1, $xr0
	xvpermi.d	$xr1, $xr0, 78
	xvshuf4i.w	$xr1, $xr1, 228
	xvadd.w	$xr0, $xr0, $xr1
	xvpermi.d	$xr1, $xr0, 68
	xvshuf4i.w	$xr1, $xr1, 14
	xvadd.w	$xr0, $xr0, $xr1
	xvpermi.d	$xr1, $xr0, 68
	xvrepl128vei.w	$xr1, $xr1, 1
	xvadd.w	$xr0, $xr0, $xr1
	xvpickve2gr.w	$a4, $xr0, 0
	bne	$a2, $s8, .LBB0_26
# %bb.25:                               #   in Loop: Header=BB0_14 Depth=2
	ld.d	$s2, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 56                    # 8-byte Folded Reload
	b	.LBB0_12
.LBB0_26:                               # %vec.epilog.iter.check
                                        #   in Loop: Header=BB0_14 Depth=2
	andi	$a3, $s8, 12
	ld.d	$s2, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 56                    # 8-byte Folded Reload
	beqz	$a3, .LBB0_30
.LBB0_27:                               # %vec.epilog.ph
                                        #   in Loop: Header=BB0_14 Depth=2
	bstrpick.d	$a3, $s8, 30, 2
	slli.d	$a5, $a3, 2
	srli.d	$a6, $s8, 2
	ori	$a3, $zero, 1
	ld.d	$a7, $sp, 112                   # 8-byte Folded Reload
	vld	$vr0, $a7, %pc_lo12(.LCPI0_0)
	bstrins.d	$a3, $a6, 30, 2
	vinsgr2vr.w	$vr1, $a4, 0
	vinsgr2vr.w	$vr2, $zero, 0
	vshuf.w	$vr0, $vr2, $vr1
	alsl.d	$a4, $a2, $a1, 2
	addi.d	$a4, $a4, 4
	sub.d	$a2, $a2, $a5
	.p2align	4, , 16
.LBB0_28:                               # %vec.epilog.vector.body
                                        #   Parent Loop BB0_10 Depth=1
                                        #     Parent Loop BB0_14 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	vld	$vr1, $a4, 0
	vpickve2gr.w	$a6, $vr1, 3
	vpickve2gr.w	$a7, $vr1, 2
	vpickve2gr.w	$t0, $vr1, 1
	vpickve2gr.w	$t1, $vr1, 0
	mul.d	$t1, $t1, $s6
	add.d	$t1, $a0, $t1
	mul.d	$t0, $t0, $s6
	add.d	$t0, $a0, $t0
	mul.d	$a7, $a7, $s6
	add.d	$a7, $a0, $a7
	mul.d	$a6, $a6, $s6
	add.d	$a6, $a0, $a6
	ld.w	$t1, $t1, 20
	ld.w	$t0, $t0, 20
	ld.w	$a7, $a7, 20
	ld.w	$a6, $a6, 20
	vinsgr2vr.w	$vr1, $t1, 0
	vinsgr2vr.w	$vr1, $t0, 1
	vinsgr2vr.w	$vr1, $a7, 2
	vinsgr2vr.w	$vr1, $a6, 3
	vadd.w	$vr0, $vr0, $vr1
	addi.d	$a2, $a2, 4
	addi.d	$a4, $a4, 16
	bnez	$a2, .LBB0_28
# %bb.29:                               # %vec.epilog.middle.block
                                        #   in Loop: Header=BB0_14 Depth=2
	vshuf4i.w	$vr1, $vr0, 14
	vadd.w	$vr0, $vr0, $vr1
	vreplvei.w	$vr1, $vr0, 1
	vadd.w	$vr0, $vr0, $vr1
	vpickve2gr.w	$a4, $vr0, 0
	beq	$a5, $s8, .LBB0_12
	b	.LBB0_31
.LBB0_30:                               #   in Loop: Header=BB0_14 Depth=2
	addi.d	$a3, $a2, 1
	.p2align	4, , 16
.LBB0_31:                               # %vec.epilog.scalar.ph.preheader
                                        #   in Loop: Header=BB0_14 Depth=2
	addi.d	$a2, $s8, 1
	bstrpick.d	$a2, $a2, 31, 0
	alsl.d	$a1, $a3, $a1, 2
	sub.d	$a2, $a2, $a3
	.p2align	4, , 16
.LBB0_32:                               # %vec.epilog.scalar.ph
                                        #   Parent Loop BB0_10 Depth=1
                                        #     Parent Loop BB0_14 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$a3, $a1, 0
	mul.d	$a3, $a3, $s6
	add.d	$a3, $a0, $a3
	ld.w	$a3, $a3, 20
	add.w	$a4, $a4, $a3
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, 4
	bnez	$a2, .LBB0_32
	b	.LBB0_12
.LBB0_33:                               # %.preheader725
	pcalau12i	$a0, %got_pc_hi20(numYnodes)
	ld.d	$a0, $a0, %got_pc_lo12(numYnodes)
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	ld.w	$a0, $a0, 0
	ori	$s7, $zero, 1
	blt	$a0, $s7, .LBB0_60
# %bb.34:                               # %.lr.ph774.preheader
	pcalau12i	$a1, %got_pc_hi20(yNodeArray)
	ld.d	$a1, $a1, %got_pc_lo12(yNodeArray)
	st.d	$a1, $sp, 8                     # 8-byte Folded Spill
	lu12i.w	$a1, -251659
	ori	$s2, $a1, 3113
	lu12i.w	$a1, 20971
	ori	$s5, $a1, 2128
	lu12i.w	$a1, 10485
	ori	$s6, $a1, 3112
	pcalau12i	$a1, %got_pc_hi20(eArray)
	ld.d	$s4, $a1, %got_pc_lo12(eArray)
	ori	$s8, $zero, 56
	pcalau12i	$a1, %got_pc_hi20(rectArray)
	ld.d	$a1, $a1, %got_pc_lo12(rectArray)
	st.d	$a1, $sp, 120                   # 8-byte Folded Spill
	ori	$s0, $zero, 52
	xvrepli.b	$xr0, 0
	xvst	$xr0, $sp, 16                   # 32-byte Folded Spill
	ori	$a1, $zero, 1
	st.d	$s2, $sp, 72                    # 8-byte Folded Spill
	st.d	$s5, $sp, 64                    # 8-byte Folded Spill
	st.d	$s6, $sp, 56                    # 8-byte Folded Spill
	b	.LBB0_37
	.p2align	4, , 16
.LBB0_35:                               # %._crit_edge769.loopexit
                                        #   in Loop: Header=BB0_37 Depth=1
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
.LBB0_36:                               # %._crit_edge769
                                        #   in Loop: Header=BB0_37 Depth=1
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	addi.d	$a1, $a2, 1
	bge	$a2, $a0, .LBB0_60
.LBB0_37:                               # %.lr.ph774
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_41 Depth 2
                                        #       Child Loop BB0_50 Depth 3
                                        #       Child Loop BB0_55 Depth 3
                                        #       Child Loop BB0_59 Depth 3
	ld.d	$a2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$a2, $a2, 0
	st.d	$a1, $sp, 80                    # 8-byte Folded Spill
	slli.d	$a1, $a1, 3
	ldx.d	$s1, $a2, $a1
	bnez	$s1, .LBB0_41
	b	.LBB0_36
.LBB0_38:                               #   in Loop: Header=BB0_41 Depth=2
	move	$a4, $zero
.LBB0_39:                               # %._crit_edge762
                                        #   in Loop: Header=BB0_41 Depth=2
	ld.w	$a2, $sp, 164
	div.w	$a0, $a4, $s3
	st.w	$a0, $sp, 160
	slli.d	$a1, $a2, 3
	stx.d	$s1, $fp, $a1
	sub.w	$a1, $zero, $a0
	addi.d	$a0, $sp, 144
	pcaddu18i	$ra, %call36(tinsert)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 8
	ld.w	$a1, $a0, 4
	ld.d	$a2, $s4, 0
	mul.d	$a1, $a1, $s8
	add.d	$a3, $a2, $a1
	ld.w	$a3, $a3, 4
	ld.d	$a4, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a4, $a4, 0
	ldx.w	$a1, $a2, $a1
	mul.d	$a3, $a3, $s0
	add.d	$a3, $a4, $a3
	st.w	$s7, $a3, 44
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a4, $a1
	st.w	$s7, $a1, 40
	slli.d	$a1, $s3, 2
	ldx.w	$a0, $a0, $a1
	mul.d	$a0, $a0, $s8
	add.d	$a1, $a2, $a0
	ld.w	$a1, $a1, 4
	ldx.w	$a0, $a2, $a0
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a4, $a1
	st.w	$s7, $a1, 36
	mul.d	$a0, $a0, $s0
	add.d	$a0, $a4, $a0
	st.w	$s7, $a0, 32
.LBB0_40:                               #   in Loop: Header=BB0_41 Depth=2
	ld.d	$s1, $s1, 24
	beqz	$s1, .LBB0_35
.LBB0_41:                               # %.lr.ph768
                                        #   Parent Loop BB0_37 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_50 Depth 3
                                        #       Child Loop BB0_55 Depth 3
                                        #       Child Loop BB0_59 Depth 3
	ld.w	$a0, $s1, 0
	beq	$a0, $s7, .LBB0_40
# %bb.42:                               #   in Loop: Header=BB0_41 Depth=2
	ld.d	$a1, $s1, 8
	ld.w	$a0, $sp, 164
	ld.w	$s3, $a1, 0
	addi.d	$a1, $a0, 1
	mul.d	$a2, $a1, $s2
	add.d	$a2, $a2, $s5
	rotri.w	$a2, $a2, 2
	st.w	$a1, $sp, 164
	bgeu	$s6, $a2, .LBB0_44
# %bb.43:                               #   in Loop: Header=BB0_41 Depth=2
	bge	$s3, $s7, .LBB0_45
	b	.LBB0_38
.LBB0_44:                               #   in Loop: Header=BB0_41 Depth=2
	slli.d	$a0, $a0, 3
	addi.d	$a1, $a0, 808
	move	$a0, $fp
	pcaddu18i	$ra, %call36(realloc)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	blt	$s3, $s7, .LBB0_38
.LBB0_45:                               # %iter.check1070
                                        #   in Loop: Header=BB0_41 Depth=2
	ld.d	$a0, $s4, 0
	ld.d	$a1, $s1, 8
	ori	$a2, $zero, 4
	bgeu	$s3, $a2, .LBB0_47
# %bb.46:                               #   in Loop: Header=BB0_41 Depth=2
	move	$a4, $zero
	ori	$a3, $zero, 1
	b	.LBB0_58
.LBB0_47:                               # %vector.main.loop.iter.check1072
                                        #   in Loop: Header=BB0_41 Depth=2
	ori	$a2, $zero, 16
	bgeu	$s3, $a2, .LBB0_49
# %bb.48:                               #   in Loop: Header=BB0_41 Depth=2
	move	$a2, $zero
	move	$a4, $zero
	b	.LBB0_54
.LBB0_49:                               # %vector.ph1073
                                        #   in Loop: Header=BB0_41 Depth=2
	bstrpick.d	$a2, $s3, 30, 4
	slli.d	$a2, $a2, 4
	addi.d	$a3, $a1, 36
	move	$a4, $a2
	xvld	$xr1, $sp, 16                   # 32-byte Folded Reload
	xvori.b	$xr0, $xr1, 0
	.p2align	4, , 16
.LBB0_50:                               # %vector.body1076
                                        #   Parent Loop BB0_37 Depth=1
                                        #     Parent Loop BB0_41 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	xvld	$xr2, $a3, -32
	xvld	$xr3, $a3, 0
	xvpermi.q	$xr4, $xr2, 1
	vpickve2gr.w	$a5, $vr4, 3
	vpickve2gr.w	$a6, $vr4, 2
	vpickve2gr.w	$a7, $vr4, 1
	vpickve2gr.w	$t0, $vr4, 0
	vpickve2gr.w	$t1, $vr2, 3
	vpickve2gr.w	$t2, $vr2, 2
	vpickve2gr.w	$t3, $vr2, 1
	vpickve2gr.w	$t4, $vr2, 0
	xvpermi.q	$xr2, $xr3, 1
	vpickve2gr.w	$t5, $vr2, 3
	vpickve2gr.w	$t6, $vr2, 2
	vpickve2gr.w	$t7, $vr2, 1
	vpickve2gr.w	$t8, $vr2, 0
	vpickve2gr.w	$ra, $vr3, 3
	vpickve2gr.w	$s5, $vr3, 2
	vpickve2gr.w	$s6, $vr3, 1
	vpickve2gr.w	$s2, $vr3, 0
	mul.d	$t4, $t4, $s8
	add.d	$t4, $a0, $t4
	mul.d	$t3, $t3, $s8
	add.d	$t3, $a0, $t3
	mul.d	$t2, $t2, $s8
	add.d	$t2, $a0, $t2
	mul.d	$t1, $t1, $s8
	add.d	$t1, $a0, $t1
	mul.d	$t0, $t0, $s8
	add.d	$t0, $a0, $t0
	mul.d	$a7, $a7, $s8
	add.d	$a7, $a0, $a7
	mul.d	$a6, $a6, $s8
	add.d	$a6, $a0, $a6
	mul.d	$a5, $a5, $s8
	add.d	$a5, $a0, $a5
	mul.d	$s2, $s2, $s8
	add.d	$s2, $a0, $s2
	mul.d	$s6, $s6, $s8
	add.d	$s6, $a0, $s6
	mul.d	$s5, $s5, $s8
	add.d	$s5, $a0, $s5
	mul.d	$ra, $ra, $s8
	add.d	$ra, $a0, $ra
	mul.d	$t8, $t8, $s8
	add.d	$t8, $a0, $t8
	mul.d	$t7, $t7, $s8
	add.d	$t7, $a0, $t7
	mul.d	$t6, $t6, $s8
	add.d	$t6, $a0, $t6
	mul.d	$t5, $t5, $s8
	add.d	$t5, $a0, $t5
	ld.w	$t4, $t4, 20
	ld.w	$t3, $t3, 20
	ld.w	$t2, $t2, 20
	ld.w	$t1, $t1, 20
	ld.w	$t0, $t0, 20
	ld.w	$a7, $a7, 20
	ld.w	$a6, $a6, 20
	ld.w	$a5, $a5, 20
	xvinsgr2vr.w	$xr2, $t4, 0
	xvinsgr2vr.w	$xr2, $t3, 1
	xvinsgr2vr.w	$xr2, $t2, 2
	xvinsgr2vr.w	$xr2, $t1, 3
	xvinsgr2vr.w	$xr2, $t0, 4
	xvinsgr2vr.w	$xr2, $a7, 5
	xvinsgr2vr.w	$xr2, $a6, 6
	xvinsgr2vr.w	$xr2, $a5, 7
	ld.w	$a5, $s2, 20
	ld.w	$a6, $s6, 20
	ld.w	$a7, $s5, 20
	ld.w	$t0, $ra, 20
	ld.w	$t1, $t8, 20
	ld.w	$t2, $t7, 20
	ld.w	$t3, $t6, 20
	ld.w	$t4, $t5, 20
	xvinsgr2vr.w	$xr3, $a5, 0
	xvinsgr2vr.w	$xr3, $a6, 1
	xvinsgr2vr.w	$xr3, $a7, 2
	xvinsgr2vr.w	$xr3, $t0, 3
	xvinsgr2vr.w	$xr3, $t1, 4
	xvinsgr2vr.w	$xr3, $t2, 5
	xvinsgr2vr.w	$xr3, $t3, 6
	xvinsgr2vr.w	$xr3, $t4, 7
	xvadd.w	$xr0, $xr0, $xr2
	xvadd.w	$xr1, $xr1, $xr3
	addi.d	$a4, $a4, -16
	addi.d	$a3, $a3, 64
	bnez	$a4, .LBB0_50
# %bb.51:                               # %middle.block1083
                                        #   in Loop: Header=BB0_41 Depth=2
	xvadd.w	$xr0, $xr1, $xr0
	xvpermi.d	$xr1, $xr0, 78
	xvshuf4i.w	$xr1, $xr1, 228
	xvadd.w	$xr0, $xr0, $xr1
	xvpermi.d	$xr1, $xr0, 68
	xvshuf4i.w	$xr1, $xr1, 14
	xvadd.w	$xr0, $xr0, $xr1
	xvpermi.d	$xr1, $xr0, 68
	xvrepl128vei.w	$xr1, $xr1, 1
	xvadd.w	$xr0, $xr0, $xr1
	xvpickve2gr.w	$a4, $xr0, 0
	bne	$a2, $s3, .LBB0_53
# %bb.52:                               #   in Loop: Header=BB0_41 Depth=2
	ld.d	$s2, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 56                    # 8-byte Folded Reload
	b	.LBB0_39
.LBB0_53:                               # %vec.epilog.iter.check1090
                                        #   in Loop: Header=BB0_41 Depth=2
	andi	$a3, $s3, 12
	ld.d	$s2, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 56                    # 8-byte Folded Reload
	beqz	$a3, .LBB0_57
.LBB0_54:                               # %vec.epilog.ph1089
                                        #   in Loop: Header=BB0_41 Depth=2
	bstrpick.d	$a3, $s3, 30, 2
	slli.d	$a5, $a3, 2
	srli.d	$a6, $s3, 2
	ori	$a3, $zero, 1
	ld.d	$a7, $sp, 112                   # 8-byte Folded Reload
	vld	$vr0, $a7, %pc_lo12(.LCPI0_0)
	bstrins.d	$a3, $a6, 30, 2
	vinsgr2vr.w	$vr1, $a4, 0
	vinsgr2vr.w	$vr2, $zero, 0
	vshuf.w	$vr0, $vr2, $vr1
	alsl.d	$a4, $a2, $a1, 2
	addi.d	$a4, $a4, 4
	sub.d	$a2, $a2, $a5
	.p2align	4, , 16
.LBB0_55:                               # %vec.epilog.vector.body1095
                                        #   Parent Loop BB0_37 Depth=1
                                        #     Parent Loop BB0_41 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	vld	$vr1, $a4, 0
	vpickve2gr.w	$a6, $vr1, 3
	vpickve2gr.w	$a7, $vr1, 2
	vpickve2gr.w	$t0, $vr1, 1
	vpickve2gr.w	$t1, $vr1, 0
	mul.d	$t1, $t1, $s8
	add.d	$t1, $a0, $t1
	mul.d	$t0, $t0, $s8
	add.d	$t0, $a0, $t0
	mul.d	$a7, $a7, $s8
	add.d	$a7, $a0, $a7
	mul.d	$a6, $a6, $s8
	add.d	$a6, $a0, $a6
	ld.w	$t1, $t1, 20
	ld.w	$t0, $t0, 20
	ld.w	$a7, $a7, 20
	ld.w	$a6, $a6, 20
	vinsgr2vr.w	$vr1, $t1, 0
	vinsgr2vr.w	$vr1, $t0, 1
	vinsgr2vr.w	$vr1, $a7, 2
	vinsgr2vr.w	$vr1, $a6, 3
	vadd.w	$vr0, $vr0, $vr1
	addi.d	$a2, $a2, 4
	addi.d	$a4, $a4, 16
	bnez	$a2, .LBB0_55
# %bb.56:                               # %vec.epilog.middle.block1101
                                        #   in Loop: Header=BB0_41 Depth=2
	vshuf4i.w	$vr1, $vr0, 14
	vadd.w	$vr0, $vr0, $vr1
	vreplvei.w	$vr1, $vr0, 1
	vadd.w	$vr0, $vr0, $vr1
	vpickve2gr.w	$a4, $vr0, 0
	beq	$a5, $s3, .LBB0_39
	b	.LBB0_58
.LBB0_57:                               #   in Loop: Header=BB0_41 Depth=2
	addi.d	$a3, $a2, 1
	.p2align	4, , 16
.LBB0_58:                               # %vec.epilog.scalar.ph1088.preheader
                                        #   in Loop: Header=BB0_41 Depth=2
	addi.d	$a2, $s3, 1
	bstrpick.d	$a2, $a2, 31, 0
	alsl.d	$a1, $a3, $a1, 2
	sub.d	$a2, $a2, $a3
	.p2align	4, , 16
.LBB0_59:                               # %vec.epilog.scalar.ph1088
                                        #   Parent Loop BB0_37 Depth=1
                                        #     Parent Loop BB0_41 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$a3, $a1, 0
	mul.d	$a3, $a3, $s8
	add.d	$a3, $a0, $a3
	ld.w	$a3, $a3, 20
	add.w	$a4, $a4, $a3
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, 4
	bnez	$a2, .LBB0_59
	b	.LBB0_39
.LBB0_60:                               # %.preheader724
	ori	$s0, $zero, 1
	pcalau12i	$a0, %got_pc_hi20(edgeTransition)
	ld.d	$a0, $a0, %got_pc_lo12(edgeTransition)
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(eArray)
	ld.d	$s2, $a0, %got_pc_lo12(eArray)
	pcalau12i	$a0, %got_pc_hi20(rectArray)
	ld.d	$s3, $a0, %got_pc_lo12(rectArray)
	ori	$s5, $zero, 56
	ori	$s6, $zero, 52
	lu12i.w	$a0, 2441
	ori	$a0, $a0, 1664
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
                                        # implicit-def: $r24
	.p2align	4, , 16
.LBB0_61:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_66 Depth 2
                                        #       Child Loop BB0_73 Depth 3
                                        #       Child Loop BB0_70 Depth 3
                                        #       Child Loop BB0_89 Depth 3
	addi.d	$a0, $sp, 144
	addi.d	$a1, $sp, 152
	addi.d	$a2, $sp, 160
	addi.d	$a3, $sp, 164
	pcaddu18i	$ra, %call36(tpop)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 152
	beqz	$a0, .LBB0_99
# %bb.62:                               #   in Loop: Header=BB0_61 Depth=1
	ld.w	$a0, $sp, 164
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $fp, $a0
	ld.d	$a0, $a0, 8
	ld.w	$a7, $a0, 0
	beq	$a7, $s0, .LBB0_61
# %bb.63:                               #   in Loop: Header=BB0_61 Depth=1
	move	$a1, $zero
	addi.d	$a2, $a0, 4
	st.d	$a2, $sp, 72                    # 8-byte Folded Spill
	ld.w	$a3, $a0, 4
	ld.d	$a2, $sp, 64                    # 8-byte Folded Reload
	ld.w	$a4, $a2, 0
	ld.d	$a5, $s2, 0
	ld.d	$a6, $s3, 0
	ori	$t1, $zero, 1
	slt	$t0, $t1, $a7
	masknez	$t2, $t1, $t0
	maskeqz	$a7, $a7, $t0
	or	$a7, $a7, $t2
	addi.w	$a2, $a7, 1
	st.d	$a2, $sp, 120                   # 8-byte Folded Spill
	ori	$t0, $zero, 2
	ori	$t3, $zero, 1
	b	.LBB0_66
	.p2align	4, , 16
.LBB0_64:                               # %._crit_edge793
                                        #   in Loop: Header=BB0_66 Depth=2
	move	$t3, $s4
.LBB0_65:                               #   in Loop: Header=BB0_66 Depth=2
	addi.w	$t0, $t2, 1
	addi.d	$a1, $a1, 1
	move	$t1, $s4
	ld.d	$a2, $sp, 120                   # 8-byte Folded Reload
	beq	$t2, $a2, .LBB0_61
.LBB0_66:                               #   Parent Loop BB0_61 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_73 Depth 3
                                        #       Child Loop BB0_70 Depth 3
                                        #       Child Loop BB0_89 Depth 3
	slli.d	$t2, $t1, 2
	ldx.w	$t2, $a0, $t2
	mul.d	$t4, $t2, $s5
	ldx.w	$t2, $a5, $t4
	mul.d	$t2, $t2, $s6
	add.d	$t2, $a6, $t2
	ld.w	$t5, $t2, 32
	move	$t2, $t0
	addi.w	$s4, $t1, 1
	beqz	$t5, .LBB0_65
# %bb.67:                               #   in Loop: Header=BB0_66 Depth=2
	slli.d	$t0, $t3, 2
	ldx.w	$t0, $a0, $t0
	add.d	$t4, $a5, $t4
	ld.w	$a2, $t4, 16
	mul.d	$t5, $t0, $s5
	add.d	$t6, $a5, $t5
	ld.w	$t0, $t6, 12
	alsl.d	$t4, $t3, $a0, 2
	st.d	$a2, $sp, 112                   # 8-byte Folded Spill
	add.d	$t0, $t0, $a2
	bstrpick.d	$t8, $t0, 31, 31
	add.w	$t0, $t0, $t8
	srai.d	$t8, $t0, 1
	bge	$a4, $a3, .LBB0_71
# %bb.68:                               # %.preheader719
                                        #   in Loop: Header=BB0_66 Depth=2
	blt	$t1, $t3, .LBB0_74
# %bb.69:                               # %.lr.ph786.preheader
                                        #   in Loop: Header=BB0_66 Depth=2
	alsl.d	$ra, $t3, $a0, 2
	move	$t0, $t3
	ld.d	$s7, $sp, 80                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_70:                               # %.lr.ph786
                                        #   Parent Loop BB0_61 Depth=1
                                        #     Parent Loop BB0_66 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$a2, $ra, 0
	mul.d	$a2, $a2, $s5
	ldx.w	$a7, $a5, $a2
	mul.d	$a7, $a7, $s6
	add.d	$a7, $a6, $a7
	ld.w	$a7, $a7, 4
	add.d	$a2, $a5, $a2
	ld.w	$a2, $a2, 4
	sub.w	$a7, $a7, $t8
	srai.d	$t7, $a7, 31
	xor	$a7, $a7, $t7
	sub.w	$a7, $a7, $t7
	slt	$t7, $a7, $s7
	mul.d	$a2, $a2, $s6
	add.d	$a2, $a6, $a2
	ld.w	$a2, $a2, 4
	maskeqz	$a7, $a7, $t7
	masknez	$s7, $s7, $t7
	or	$a7, $a7, $s7
	sub.w	$a2, $a2, $t8
	srai.d	$s7, $a2, 31
	xor	$a2, $a2, $s7
	sub.w	$a2, $a2, $s7
	slt	$s7, $a2, $a7
	masknez	$s1, $s1, $s7
	maskeqz	$s8, $t0, $s7
	or	$s1, $s8, $s1
	masknez	$s1, $s1, $t7
	maskeqz	$t7, $t0, $t7
	or	$s1, $t7, $s1
	masknez	$a7, $a7, $s7
	maskeqz	$a2, $a2, $s7
	or	$s7, $a2, $a7
	addi.w	$t0, $t0, 1
	addi.d	$ra, $ra, 4
	bne	$t2, $t0, .LBB0_70
	b	.LBB0_74
	.p2align	4, , 16
.LBB0_71:                               # %.preheader721
                                        #   in Loop: Header=BB0_66 Depth=2
	blt	$t1, $t3, .LBB0_74
# %bb.72:                               # %.lr.ph780.preheader
                                        #   in Loop: Header=BB0_66 Depth=2
	lu12i.w	$a2, 2441
	ori	$s7, $a2, 1664
	move	$t0, $t3
	move	$ra, $t4
	.p2align	4, , 16
.LBB0_73:                               # %.lr.ph780
                                        #   Parent Loop BB0_61 Depth=1
                                        #     Parent Loop BB0_66 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$s8, $ra, 0
	mul.d	$s8, $s8, $s5
	ldx.w	$a2, $a5, $s8
	mul.d	$a2, $a2, $s6
	ldx.w	$a2, $a6, $a2
	add.d	$s8, $a5, $s8
	ld.w	$s8, $s8, 4
	sub.w	$a2, $a2, $t8
	srai.d	$a7, $a2, 31
	xor	$a2, $a2, $a7
	sub.w	$a2, $a2, $a7
	slt	$a7, $a2, $s7
	mul.d	$s8, $s8, $s6
	ldx.w	$s8, $a6, $s8
	maskeqz	$a2, $a2, $a7
	masknez	$s7, $s7, $a7
	or	$a2, $a2, $s7
	sub.w	$s7, $s8, $t8
	srai.d	$s8, $s7, 31
	xor	$s7, $s7, $s8
	sub.w	$s7, $s7, $s8
	slt	$s8, $s7, $a2
	masknez	$s1, $s1, $s8
	maskeqz	$t7, $t0, $s8
	or	$t7, $t7, $s1
	masknez	$t7, $t7, $a7
	maskeqz	$a7, $t0, $a7
	or	$s1, $a7, $t7
	masknez	$a2, $a2, $s8
	maskeqz	$a7, $s7, $s8
	or	$s7, $a7, $a2
	addi.w	$t0, $t0, 1
	addi.d	$ra, $ra, 4
	bne	$t2, $t0, .LBB0_73
.LBB0_74:                               # %.loopexit720
                                        #   in Loop: Header=BB0_66 Depth=2
	blt	$t1, $t3, .LBB0_64
# %bb.75:                               # %.lr.ph792.preheader
                                        #   in Loop: Header=BB0_66 Depth=2
	addi.w	$t0, $s1, 0
	bne	$t3, $t0, .LBB0_77
# %bb.76:                               #   in Loop: Header=BB0_66 Depth=2
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	st.w	$a2, $t6, 16
	b	.LBB0_78
.LBB0_77:                               #   in Loop: Header=BB0_66 Depth=2
	st.w	$s0, $t6, 44
.LBB0_78:                               #   in Loop: Header=BB0_66 Depth=2
	ldx.w	$a2, $a5, $t5
	ld.w	$a7, $t6, 4
	mul.d	$a2, $a2, $s6
	add.d	$t6, $a6, $a2
	st.w	$s0, $t6, 32
	mul.d	$t5, $a7, $s6
	add.d	$a2, $a6, $t5
	bge	$a4, $a3, .LBB0_81
# %bb.79:                               # %.thread694.peel
                                        #   in Loop: Header=BB0_66 Depth=2
	st.w	$s0, $a2, 36
	bne	$t3, $t1, .LBB0_84
# %bb.80:                               # %.thread695.peel
                                        #   in Loop: Header=BB0_66 Depth=2
	st.w	$s0, $t6, 40
	b	.LBB0_83
.LBB0_81:                               # %.thread.peel
                                        #   in Loop: Header=BB0_66 Depth=2
	st.w	$s0, $a2, 40
	bne	$t3, $t1, .LBB0_84
# %bb.82:                               # %.thread693.peel
                                        #   in Loop: Header=BB0_66 Depth=2
	st.w	$s0, $t6, 36
.LBB0_83:                               # %.sink.split
                                        #   in Loop: Header=BB0_66 Depth=2
	add.d	$a2, $a6, $t5
	st.w	$s0, $a2, 44
.LBB0_84:                               #   in Loop: Header=BB0_66 Depth=2
	addi.w	$a2, $t3, 1
	beq	$t2, $a2, .LBB0_64
# %bb.85:                               # %.lr.ph792.preheader1157
                                        #   in Loop: Header=BB0_66 Depth=2
	alsl.d	$t5, $t1, $a0, 2
	addi.d	$t6, $t0, -1
	ld.d	$a2, $sp, 72                    # 8-byte Folded Reload
	alsl.d	$t7, $t3, $a2, 2
	move	$t8, $t3
	move	$ra, $t3
	b	.LBB0_89
	.p2align	4, , 16
.LBB0_86:                               # %.thread
                                        #   in Loop: Header=BB0_89 Depth=3
	st.w	$s0, $a2, 36
.LBB0_87:                               #   in Loop: Header=BB0_89 Depth=3
	st.w	$s0, $t0, 0
.LBB0_88:                               #   in Loop: Header=BB0_89 Depth=3
	addi.w	$t8, $t8, 1
	addi.d	$t7, $t7, 4
	beq	$t1, $t8, .LBB0_64
.LBB0_89:                               # %.lr.ph792
                                        #   Parent Loop BB0_61 Depth=1
                                        #     Parent Loop BB0_66 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$a2, $t7, 0
	move	$t0, $ra
	mul.d	$ra, $a2, $s5
	add.d	$s7, $a5, $ra
	bne	$t6, $t0, .LBB0_95
# %bb.90:                               #   in Loop: Header=BB0_89 Depth=3
	ld.w	$a2, $t5, 0
	mul.d	$a2, $a2, $s5
	add.d	$a2, $a5, $a2
	ld.w	$a2, $a2, 16
	st.w	$a2, $s7, 16
	ld.w	$a2, $t4, 0
	mul.d	$a2, $a2, $s5
	ld.w	$a7, $t7, 0
	add.d	$a2, $a5, $a2
	ld.w	$a2, $a2, 12
	mul.d	$a7, $a7, $s5
	add.d	$a7, $a5, $a7
	st.w	$a2, $a7, 12
	ldx.w	$s8, $a5, $ra
	ld.w	$s7, $s7, 4
	addi.d	$ra, $t0, 1
	beq	$a1, $t0, .LBB0_96
.LBB0_91:                               #   in Loop: Header=BB0_89 Depth=3
	bge	$t3, $ra, .LBB0_88
# %bb.92:                               #   in Loop: Header=BB0_89 Depth=3
	bge	$ra, $t1, .LBB0_88
# %bb.93:                               #   in Loop: Header=BB0_89 Depth=3
	mul.d	$s8, $s8, $s6
	mul.d	$t0, $s7, $s6
	add.d	$a2, $a6, $s8
	bge	$a4, $a3, .LBB0_98
# %bb.94:                               #   in Loop: Header=BB0_89 Depth=3
	st.w	$s0, $a2, 32
	st.w	$s0, $a2, 40
	add.d	$a2, $a6, $t0
	st.w	$s0, $a2, 36
	st.w	$s0, $a2, 44
	b	.LBB0_88
	.p2align	4, , 16
.LBB0_95:                               #   in Loop: Header=BB0_89 Depth=3
	st.w	$s0, $s7, 44
	ldx.w	$s8, $a5, $ra
	ld.w	$s7, $s7, 4
	addi.d	$ra, $t0, 1
	bne	$a1, $t0, .LBB0_91
.LBB0_96:                               #   in Loop: Header=BB0_89 Depth=3
	mul.d	$a2, $s7, $s6
	add.d	$a2, $a6, $a2
	addi.d	$t0, $a2, 44
	mul.d	$s7, $s8, $s6
	add.d	$a2, $a6, $s7
	bge	$a4, $a3, .LBB0_86
# %bb.97:                               # %.thread1017
                                        #   in Loop: Header=BB0_89 Depth=3
	st.w	$s0, $a2, 40
	b	.LBB0_87
.LBB0_98:                               #   in Loop: Header=BB0_89 Depth=3
	ori	$a7, $zero, 1
	lu32i.d	$a7, 1
	st.d	$a7, $a2, 32
	add.d	$a2, $a6, $t0
	st.d	$a7, $a2, 40
	b	.LBB0_88
.LBB0_99:                               # %.preheader718
	ld.d	$a4, $sp, 0                     # 8-byte Folded Reload
	ld.w	$a1, $a4, 0
	ori	$a0, $zero, 1
	blt	$a1, $a0, .LBB0_102
# %bb.100:                              # %.lr.ph796
	ld.d	$a2, $s3, 0
	move	$a1, $zero
	addi.d	$a2, $a2, 100
	.p2align	4, , 16
.LBB0_101:                              # =>This Inner Loop Header: Depth=1
	st.w	$zero, $a2, 0
	ld.w	$a3, $a4, 0
	addi.d	$a1, $a1, 1
	addi.d	$a2, $a2, 52
	blt	$a1, $a3, .LBB0_101
.LBB0_102:                              # %.preheader717
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	ld.w	$a6, $a1, 0
	blt	$a6, $a0, .LBB0_115
# %bb.103:                              # %.lr.ph809
	pcalau12i	$a0, %got_pc_hi20(xNodeArray)
	ld.d	$a0, $a0, %got_pc_lo12(xNodeArray)
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 1
	ori	$a2, $zero, 56
	ori	$a3, $zero, 52
	ori	$a5, $zero, 1
	b	.LBB0_106
	.p2align	4, , 16
.LBB0_104:                              # %._crit_edge806.loopexit
                                        #   in Loop: Header=BB0_106 Depth=1
	ld.d	$a5, $sp, 136                   # 8-byte Folded Reload
	ld.w	$a6, $a5, 0
.LBB0_105:                              # %._crit_edge806
                                        #   in Loop: Header=BB0_106 Depth=1
	addi.d	$a5, $a4, 1
	bge	$a4, $a6, .LBB0_115
.LBB0_106:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_109 Depth 2
                                        #       Child Loop BB0_113 Depth 3
	move	$a4, $a5
	slli.d	$a5, $a5, 3
	ldx.d	$a5, $a0, $a5
	beqz	$a5, .LBB0_105
# %bb.107:                              # %.lr.ph805
                                        #   in Loop: Header=BB0_106 Depth=1
	ld.d	$a6, $s2, 0
	b	.LBB0_109
	.p2align	4, , 16
.LBB0_108:                              # %.loopexit716
                                        #   in Loop: Header=BB0_109 Depth=2
	ld.d	$a5, $a5, 24
	beqz	$a5, .LBB0_104
.LBB0_109:                              #   Parent Loop BB0_106 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_113 Depth 3
	ld.w	$a7, $a5, 0
	beq	$a7, $a1, .LBB0_108
# %bb.110:                              #   in Loop: Header=BB0_109 Depth=2
	ld.d	$t0, $a5, 8
	ld.w	$t1, $t0, 0
	blt	$t1, $a1, .LBB0_108
# %bb.111:                              # %.lr.ph800
                                        #   in Loop: Header=BB0_109 Depth=2
	ld.d	$a7, $s3, 0
	addi.d	$t1, $t1, 1
	bstrpick.d	$t1, $t1, 31, 0
	addi.d	$t0, $t0, 4
	addi.d	$t1, $t1, -1
	b	.LBB0_113
	.p2align	4, , 16
.LBB0_112:                              #   in Loop: Header=BB0_113 Depth=3
	addi.d	$t1, $t1, -1
	addi.d	$t0, $t0, 4
	beqz	$t1, .LBB0_108
.LBB0_113:                              #   Parent Loop BB0_106 Depth=1
                                        #     Parent Loop BB0_109 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$t2, $t0, 0
	mul.d	$t2, $t2, $a2
	add.d	$t2, $a6, $t2
	ld.w	$t3, $t2, 44
	beq	$t3, $a1, .LBB0_112
# %bb.114:                              #   in Loop: Header=BB0_113 Depth=3
	ld.w	$t3, $t2, 4
	mul.d	$t3, $t3, $a3
	add.d	$t3, $a7, $t3
	ld.w	$t4, $t3, 48
	ld.w	$t2, $t2, 0
	addi.d	$t4, $t4, 1
	st.w	$t4, $t3, 48
	mul.d	$t2, $t2, $a3
	add.d	$t2, $a7, $t2
	ld.w	$t3, $t2, 48
	addi.d	$t3, $t3, 1
	st.w	$t3, $t2, 48
	b	.LBB0_112
.LBB0_115:                              # %.preheader715
	pcalau12i	$a0, %got_pc_hi20(yNodeArray)
	ld.d	$a0, $a0, %got_pc_lo12(yNodeArray)
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	ld.w	$t3, $a1, 0
	ld.d	$a1, $a0, 0
	ori	$a2, $zero, 1
	blt	$t3, $a2, .LBB0_129
# %bb.116:                              # %.lr.ph822.preheader
	ori	$a3, $zero, 56
	ori	$a4, $zero, 52
	ori	$a6, $zero, 1
	b	.LBB0_119
	.p2align	4, , 16
.LBB0_117:                              # %._crit_edge819.loopexit
                                        #   in Loop: Header=BB0_119 Depth=1
	ld.d	$a6, $sp, 128                   # 8-byte Folded Reload
	ld.w	$t3, $a6, 0
.LBB0_118:                              # %._crit_edge819
                                        #   in Loop: Header=BB0_119 Depth=1
	addi.d	$a6, $a5, 1
	bge	$a5, $t3, .LBB0_128
.LBB0_119:                              # %.lr.ph822
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_122 Depth 2
                                        #       Child Loop BB0_126 Depth 3
	move	$a5, $a6
	slli.d	$a6, $a6, 3
	ldx.d	$a6, $a1, $a6
	beqz	$a6, .LBB0_118
# %bb.120:                              # %.lr.ph818
                                        #   in Loop: Header=BB0_119 Depth=1
	ld.d	$a7, $s2, 0
	b	.LBB0_122
	.p2align	4, , 16
.LBB0_121:                              # %.loopexit714
                                        #   in Loop: Header=BB0_122 Depth=2
	ld.d	$a6, $a6, 24
	beqz	$a6, .LBB0_117
.LBB0_122:                              #   Parent Loop BB0_119 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_126 Depth 3
	ld.w	$t0, $a6, 0
	beq	$t0, $a2, .LBB0_121
# %bb.123:                              #   in Loop: Header=BB0_122 Depth=2
	ld.d	$t1, $a6, 8
	ld.w	$t2, $t1, 0
	blt	$t2, $a2, .LBB0_121
# %bb.124:                              # %.lr.ph813
                                        #   in Loop: Header=BB0_122 Depth=2
	ld.d	$t0, $s3, 0
	addi.d	$t2, $t2, 1
	bstrpick.d	$t2, $t2, 31, 0
	addi.d	$t1, $t1, 4
	addi.d	$t2, $t2, -1
	b	.LBB0_126
	.p2align	4, , 16
.LBB0_125:                              #   in Loop: Header=BB0_126 Depth=3
	addi.d	$t2, $t2, -1
	addi.d	$t1, $t1, 4
	beqz	$t2, .LBB0_121
.LBB0_126:                              #   Parent Loop BB0_119 Depth=1
                                        #     Parent Loop BB0_122 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$t3, $t1, 0
	mul.d	$t3, $t3, $a3
	add.d	$t3, $a7, $t3
	ld.w	$t4, $t3, 44
	beq	$t4, $a2, .LBB0_125
# %bb.127:                              #   in Loop: Header=BB0_126 Depth=3
	ld.w	$t4, $t3, 4
	mul.d	$t4, $t4, $a4
	add.d	$t4, $t0, $t4
	ld.w	$t5, $t4, 48
	ld.w	$t3, $t3, 0
	addi.d	$t5, $t5, 1
	st.w	$t5, $t4, 48
	mul.d	$t3, $t3, $a4
	add.d	$t3, $t0, $t3
	ld.w	$t4, $t3, 48
	addi.d	$t4, $t4, 1
	st.w	$t4, $t3, 48
	b	.LBB0_125
.LBB0_128:                              # %.preheader713.loopexit
	ld.d	$a1, $a0, 0
.LBB0_129:                              # %.preheader713
	pcalau12i	$a2, %got_pc_hi20(xNodeArray)
	ld.d	$a2, $a2, %got_pc_lo12(xNodeArray)
	ld.d	$a3, $a2, 0
	ori	$a4, $zero, 1
	ori	$a5, $zero, 56
	ori	$a6, $zero, 52
	b	.LBB0_131
	.p2align	4, , 16
.LBB0_130:                              # %.loopexit711
                                        #   in Loop: Header=BB0_131 Depth=1
	beqz	$a7, .LBB0_178
.LBB0_131:                              # %.preheader712
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_135 Depth 2
                                        #       Child Loop BB0_138 Depth 3
                                        #         Child Loop BB0_144 Depth 4
                                        #           Child Loop BB0_149 Depth 5
                                        #     Child Loop BB0_159 Depth 2
                                        #       Child Loop BB0_162 Depth 3
                                        #         Child Loop BB0_168 Depth 4
                                        #           Child Loop BB0_173 Depth 5
	ld.d	$a7, $sp, 136                   # 8-byte Folded Reload
	ld.w	$t2, $a7, 0
	blt	$t2, $a4, .LBB0_155
# %bb.132:                              # %.lr.ph840.preheader
                                        #   in Loop: Header=BB0_131 Depth=1
	move	$a7, $zero
	ori	$t1, $zero, 1
	b	.LBB0_135
	.p2align	4, , 16
.LBB0_133:                              # %._crit_edge835.loopexit
                                        #   in Loop: Header=BB0_135 Depth=2
	ld.d	$t1, $sp, 136                   # 8-byte Folded Reload
	ld.w	$t2, $t1, 0
.LBB0_134:                              # %._crit_edge835
                                        #   in Loop: Header=BB0_135 Depth=2
	addi.d	$t1, $t0, 1
	bge	$t0, $t2, .LBB0_154
.LBB0_135:                              # %.lr.ph840
                                        #   Parent Loop BB0_131 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_138 Depth 3
                                        #         Child Loop BB0_144 Depth 4
                                        #           Child Loop BB0_149 Depth 5
	move	$t0, $t1
	slli.d	$t1, $t1, 3
	ldx.d	$t1, $a3, $t1
	beqz	$t1, .LBB0_134
# %bb.136:                              # %.lr.ph834
                                        #   in Loop: Header=BB0_135 Depth=2
	ld.d	$t2, $s2, 0
	b	.LBB0_138
	.p2align	4, , 16
.LBB0_137:                              # %.loopexit709
                                        #   in Loop: Header=BB0_138 Depth=3
	ld.d	$t1, $t1, 24
	beqz	$t1, .LBB0_133
.LBB0_138:                              #   Parent Loop BB0_131 Depth=1
                                        #     Parent Loop BB0_135 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_144 Depth 4
                                        #           Child Loop BB0_149 Depth 5
	ld.w	$t3, $t1, 0
	beq	$t3, $a4, .LBB0_137
# %bb.139:                              #   in Loop: Header=BB0_138 Depth=3
	ld.d	$t3, $t1, 8
	ld.w	$t4, $t3, 0
	blt	$t4, $a4, .LBB0_137
# %bb.140:                              # %.lr.ph827
                                        #   in Loop: Header=BB0_138 Depth=3
	move	$t5, $zero
	ld.d	$t6, $s3, 0
	addi.d	$t7, $t4, 1
	bstrpick.d	$t7, $t7, 31, 0
	addi.d	$t8, $t3, 8
	ori	$fp, $zero, 1
	ori	$s0, $zero, 2
	move	$s1, $t3
	b	.LBB0_144
.LBB0_141:                              # %.critedge
                                        #   in Loop: Header=BB0_144 Depth=4
	ld.w	$a7, $a7, 0
	mul.d	$a7, $a7, $a5
	add.d	$a7, $t2, $a7
	ld.w	$s4, $a7, 16
	ld.w	$a7, $a7, 12
	ld.w	$s5, $s8, 12
	sub.d	$a7, $a7, $s4
	add.d	$a7, $a7, $s5
	st.w	$a7, $s8, 12
.LBB0_142:                              #   in Loop: Header=BB0_144 Depth=4
	ori	$a7, $zero, 1
.LBB0_143:                              #   in Loop: Header=BB0_144 Depth=4
	addi.d	$fp, $fp, 1
	addi.d	$t5, $t5, 1
	addi.d	$s1, $s1, 4
	addi.d	$t8, $t8, 4
	addi.w	$s0, $s0, 1
	beq	$fp, $t7, .LBB0_137
.LBB0_144:                              #   Parent Loop BB0_131 Depth=1
                                        #     Parent Loop BB0_135 Depth=2
                                        #       Parent Loop BB0_138 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB0_149 Depth 5
	slli.d	$s4, $fp, 2
	ldx.w	$s4, $t3, $s4
	mul.d	$s4, $s4, $a5
	add.d	$s4, $t2, $s4
	ld.w	$s5, $s4, 44
	beq	$s5, $a4, .LBB0_143
# %bb.145:                              #   in Loop: Header=BB0_144 Depth=4
	ld.w	$s5, $s4, 4
	ld.w	$s8, $s4, 0
	mul.d	$s5, $s5, $a6
	add.d	$s7, $t6, $s5
	ld.w	$s6, $s7, 48
	mul.d	$s5, $s8, $a6
	beq	$s6, $a4, .LBB0_147
# %bb.146:                              #   in Loop: Header=BB0_144 Depth=4
	add.d	$s8, $t6, $s5
	ld.w	$s8, $s8, 48
	bne	$s8, $a4, .LBB0_143
.LBB0_147:                              # %._crit_edge1001
                                        #   in Loop: Header=BB0_144 Depth=4
	addi.d	$a7, $s7, 48
	addi.d	$s6, $s6, -1
	st.w	$s6, $a7, 0
	add.d	$s5, $t6, $s5
	ld.w	$s6, $s5, 48
	alsl.d	$a7, $fp, $t3, 2
	st.w	$a4, $s4, 44
	addi.d	$s4, $s6, -1
	st.w	$s4, $s5, 48
	move	$s4, $s0
	move	$s5, $t8
	move	$s6, $s1
	move	$s7, $t5
	b	.LBB0_149
	.p2align	4, , 16
.LBB0_148:                              #   in Loop: Header=BB0_149 Depth=5
	addi.d	$s7, $s7, -1
	addi.d	$s6, $s6, -4
	addi.d	$s5, $s5, 4
	addi.w	$s4, $s4, 1
.LBB0_149:                              #   Parent Loop BB0_131 Depth=1
                                        #     Parent Loop BB0_135 Depth=2
                                        #       Parent Loop BB0_138 Depth=3
                                        #         Parent Loop BB0_144 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	blt	$t4, $s4, .LBB0_151
# %bb.150:                              #   in Loop: Header=BB0_149 Depth=5
	ld.w	$s8, $s5, 0
	mul.d	$s8, $s8, $a5
	add.d	$s8, $t2, $s8
	ld.w	$ra, $s8, 44
	beqz	$ra, .LBB0_141
.LBB0_151:                              #   in Loop: Header=BB0_149 Depth=5
	blt	$s7, $a4, .LBB0_148
# %bb.152:                              #   in Loop: Header=BB0_149 Depth=5
	ld.w	$s8, $s6, 0
	mul.d	$s8, $s8, $a5
	add.d	$s8, $t2, $s8
	ld.w	$ra, $s8, 44
	bnez	$ra, .LBB0_148
# %bb.153:                              # %.critedge688
                                        #   in Loop: Header=BB0_144 Depth=4
	ld.w	$a7, $a7, 0
	mul.d	$a7, $a7, $a5
	add.d	$a7, $t2, $a7
	ld.w	$s4, $a7, 16
	ld.w	$a7, $a7, 12
	ld.w	$s5, $s8, 16
	sub.d	$a7, $s4, $a7
	add.d	$a7, $a7, $s5
	st.w	$a7, $s8, 16
	b	.LBB0_142
	.p2align	4, , 16
.LBB0_154:                              # %.preheader710.loopexit
                                        #   in Loop: Header=BB0_131 Depth=1
	ld.d	$t0, $sp, 128                   # 8-byte Folded Reload
	ld.w	$t3, $t0, 0
	bge	$t3, $a4, .LBB0_156
	b	.LBB0_130
	.p2align	4, , 16
.LBB0_155:                              #   in Loop: Header=BB0_131 Depth=1
	move	$a7, $zero
	blt	$t3, $a4, .LBB0_130
.LBB0_156:                              # %.lr.ph859.preheader
                                        #   in Loop: Header=BB0_131 Depth=1
	ori	$t1, $zero, 1
	b	.LBB0_159
	.p2align	4, , 16
.LBB0_157:                              # %._crit_edge854.loopexit
                                        #   in Loop: Header=BB0_159 Depth=2
	ld.d	$t1, $sp, 128                   # 8-byte Folded Reload
	ld.w	$t3, $t1, 0
.LBB0_158:                              # %._crit_edge854
                                        #   in Loop: Header=BB0_159 Depth=2
	addi.d	$t1, $t0, 1
	bge	$t0, $t3, .LBB0_130
.LBB0_159:                              # %.lr.ph859
                                        #   Parent Loop BB0_131 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_162 Depth 3
                                        #         Child Loop BB0_168 Depth 4
                                        #           Child Loop BB0_173 Depth 5
	move	$t0, $t1
	slli.d	$t1, $t1, 3
	ldx.d	$t1, $a1, $t1
	beqz	$t1, .LBB0_158
# %bb.160:                              # %.lr.ph853
                                        #   in Loop: Header=BB0_159 Depth=2
	ld.d	$t2, $s2, 0
	b	.LBB0_162
	.p2align	4, , 16
.LBB0_161:                              # %.loopexit708
                                        #   in Loop: Header=BB0_162 Depth=3
	ld.d	$t1, $t1, 24
	beqz	$t1, .LBB0_157
.LBB0_162:                              #   Parent Loop BB0_131 Depth=1
                                        #     Parent Loop BB0_159 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_168 Depth 4
                                        #           Child Loop BB0_173 Depth 5
	ld.w	$t3, $t1, 0
	beq	$t3, $a4, .LBB0_161
# %bb.163:                              #   in Loop: Header=BB0_162 Depth=3
	ld.d	$t3, $t1, 8
	ld.w	$t4, $t3, 0
	blt	$t4, $a4, .LBB0_161
# %bb.164:                              # %.lr.ph846
                                        #   in Loop: Header=BB0_162 Depth=3
	move	$t5, $zero
	ld.d	$t6, $s3, 0
	addi.d	$t7, $t4, 1
	bstrpick.d	$t7, $t7, 31, 0
	addi.d	$t8, $t3, 8
	ori	$fp, $zero, 1
	ori	$s0, $zero, 2
	move	$s1, $t3
	b	.LBB0_168
.LBB0_165:                              # %.critedge690
                                        #   in Loop: Header=BB0_168 Depth=4
	ld.w	$a7, $a7, 0
	mul.d	$a7, $a7, $a5
	add.d	$a7, $t2, $a7
	ld.w	$s4, $a7, 16
	ld.w	$a7, $a7, 12
	ld.w	$s5, $s8, 12
	sub.d	$a7, $a7, $s4
	add.d	$a7, $a7, $s5
	st.w	$a7, $s8, 12
.LBB0_166:                              #   in Loop: Header=BB0_168 Depth=4
	ori	$a7, $zero, 1
.LBB0_167:                              #   in Loop: Header=BB0_168 Depth=4
	addi.d	$fp, $fp, 1
	addi.d	$t5, $t5, 1
	addi.d	$s1, $s1, 4
	addi.d	$t8, $t8, 4
	addi.w	$s0, $s0, 1
	beq	$fp, $t7, .LBB0_161
.LBB0_168:                              #   Parent Loop BB0_131 Depth=1
                                        #     Parent Loop BB0_159 Depth=2
                                        #       Parent Loop BB0_162 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB0_173 Depth 5
	slli.d	$s4, $fp, 2
	ldx.w	$s4, $t3, $s4
	mul.d	$s4, $s4, $a5
	add.d	$s4, $t2, $s4
	ld.w	$s5, $s4, 44
	beq	$s5, $a4, .LBB0_167
# %bb.169:                              #   in Loop: Header=BB0_168 Depth=4
	ld.w	$s5, $s4, 4
	ld.w	$s8, $s4, 0
	mul.d	$s5, $s5, $a6
	add.d	$s7, $t6, $s5
	ld.w	$s6, $s7, 48
	mul.d	$s5, $s8, $a6
	beq	$s6, $a4, .LBB0_171
# %bb.170:                              #   in Loop: Header=BB0_168 Depth=4
	add.d	$s8, $t6, $s5
	ld.w	$s8, $s8, 48
	bne	$s8, $a4, .LBB0_167
.LBB0_171:                              # %._crit_edge1002
                                        #   in Loop: Header=BB0_168 Depth=4
	addi.d	$a7, $s7, 48
	addi.d	$s6, $s6, -1
	st.w	$s6, $a7, 0
	add.d	$s5, $t6, $s5
	ld.w	$s6, $s5, 48
	alsl.d	$a7, $fp, $t3, 2
	st.w	$a4, $s4, 44
	addi.d	$s4, $s6, -1
	st.w	$s4, $s5, 48
	move	$s4, $s0
	move	$s5, $t8
	move	$s6, $s1
	move	$s7, $t5
	b	.LBB0_173
	.p2align	4, , 16
.LBB0_172:                              #   in Loop: Header=BB0_173 Depth=5
	addi.d	$s7, $s7, -1
	addi.d	$s6, $s6, -4
	addi.d	$s5, $s5, 4
	addi.w	$s4, $s4, 1
.LBB0_173:                              #   Parent Loop BB0_131 Depth=1
                                        #     Parent Loop BB0_159 Depth=2
                                        #       Parent Loop BB0_162 Depth=3
                                        #         Parent Loop BB0_168 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	blt	$t4, $s4, .LBB0_175
# %bb.174:                              #   in Loop: Header=BB0_173 Depth=5
	ld.w	$s8, $s5, 0
	mul.d	$s8, $s8, $a5
	add.d	$s8, $t2, $s8
	ld.w	$ra, $s8, 44
	beqz	$ra, .LBB0_165
.LBB0_175:                              #   in Loop: Header=BB0_173 Depth=5
	blt	$s7, $a4, .LBB0_172
# %bb.176:                              #   in Loop: Header=BB0_173 Depth=5
	ld.w	$s8, $s6, 0
	mul.d	$s8, $s8, $a5
	add.d	$s8, $t2, $s8
	ld.w	$ra, $s8, 44
	bnez	$ra, .LBB0_172
# %bb.177:                              # %.critedge692
                                        #   in Loop: Header=BB0_168 Depth=4
	ld.w	$a7, $a7, 0
	mul.d	$a7, $a7, $a5
	add.d	$a7, $t2, $a7
	ld.w	$s4, $a7, 16
	ld.w	$a7, $a7, 12
	ld.w	$s5, $s8, 16
	sub.d	$a7, $s4, $a7
	add.d	$a7, $a7, $s5
	st.w	$a7, $s8, 16
	b	.LBB0_166
.LBB0_178:                              # %.preheader707
	ld.d	$a1, $a2, 0
	ld.d	$a0, $a0, 0
	ori	$a2, $zero, 1
	ori	$a3, $zero, 3
	pcalau12i	$a4, %got_pc_hi20(edgeList)
	ld.d	$a4, $a4, %got_pc_lo12(edgeList)
	ori	$a5, $zero, 2
	ori	$a6, $zero, 56
	ori	$a7, $zero, 52
	ori	$t0, $zero, 1
	b	.LBB0_180
	.p2align	4, , 16
.LBB0_179:                              # %._crit_edge887
                                        #   in Loop: Header=BB0_180 Depth=1
	addi.w	$t0, $t0, 1
	beq	$t0, $a3, .LBB0_263
.LBB0_180:                              # %.preheader706
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_184 Depth 2
                                        #       Child Loop BB0_188 Depth 3
                                        #         Child Loop BB0_192 Depth 4
                                        #         Child Loop BB0_208 Depth 4
                                        #     Child Loop BB0_226 Depth 2
                                        #       Child Loop BB0_230 Depth 3
                                        #         Child Loop BB0_234 Depth 4
                                        #         Child Loop BB0_250 Depth 4
	ld.d	$t1, $sp, 136                   # 8-byte Folded Reload
	ld.w	$t4, $t1, 0
	blt	$t4, $a2, .LBB0_222
# %bb.181:                              # %.lr.ph873.preheader
                                        #   in Loop: Header=BB0_180 Depth=1
	ori	$t2, $zero, 1
	b	.LBB0_184
	.p2align	4, , 16
.LBB0_182:                              # %._crit_edge870.loopexit
                                        #   in Loop: Header=BB0_184 Depth=2
	ld.d	$t2, $sp, 136                   # 8-byte Folded Reload
	ld.w	$t4, $t2, 0
.LBB0_183:                              # %._crit_edge870
                                        #   in Loop: Header=BB0_184 Depth=2
	addi.d	$t2, $t1, 1
	bge	$t1, $t4, .LBB0_221
.LBB0_184:                              # %.lr.ph873
                                        #   Parent Loop BB0_180 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_188 Depth 3
                                        #         Child Loop BB0_192 Depth 4
                                        #         Child Loop BB0_208 Depth 4
	move	$t1, $t2
	slli.d	$t2, $t2, 3
	ldx.d	$t2, $a1, $t2
	beqz	$t2, .LBB0_183
# %bb.185:                              # %.lr.ph869
                                        #   in Loop: Header=BB0_184 Depth=2
	ld.d	$t3, $s2, 0
	ld.d	$t4, $a4, 0
	ld.d	$t5, $s3, 0
	b	.LBB0_188
.LBB0_186:                              #   in Loop: Header=BB0_188 Depth=3
	st.w	$s0, $t6, 4
	st.w	$a2, $t6, 12
	.p2align	4, , 16
.LBB0_187:                              # %.loopexit704
                                        #   in Loop: Header=BB0_188 Depth=3
	ld.d	$t2, $t2, 24
	beqz	$t2, .LBB0_182
.LBB0_188:                              #   Parent Loop BB0_180 Depth=1
                                        #     Parent Loop BB0_184 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_192 Depth 4
                                        #         Child Loop BB0_208 Depth 4
	ld.w	$t6, $t2, 0
	beq	$t6, $a2, .LBB0_187
# %bb.189:                              #   in Loop: Header=BB0_188 Depth=3
	ld.d	$t6, $t2, 8
	ld.w	$t7, $t6, 0
	blt	$t7, $a5, .LBB0_187
# %bb.190:                              #   in Loop: Header=BB0_188 Depth=3
	ld.w	$t8, $t6, 4
	mul.d	$t8, $t8, $a6
	add.d	$t8, $t3, $t8
	ld.w	$fp, $t8, 44
	bne	$fp, $a2, .LBB0_206
# %bb.191:                              # %.lr.ph864.preheader
                                        #   in Loop: Header=BB0_188 Depth=3
	ld.w	$fp, $t8, 32
	ld.w	$s1, $t8, 4
	ld.w	$s5, $t8, 0
	slli.d	$t8, $fp, 5
	alsl.d	$t8, $fp, $t8, 3
	add.d	$fp, $t4, $t8
	ld.w	$t8, $fp, 4
	ld.w	$s0, $fp, 8
	mul.d	$fp, $s1, $a7
	add.d	$s1, $t5, $fp
	ld.w	$s4, $s1, 4
	mul.d	$fp, $s5, $a7
	add.d	$fp, $t5, $fp
	ld.w	$fp, $fp, 4
	addi.d	$s5, $t7, 1
	bstrpick.d	$s6, $s5, 31, 0
	addi.d	$s5, $t6, 8
	addi.d	$s6, $s6, -2
	.p2align	4, , 16
.LBB0_192:                              # %.lr.ph864
                                        #   Parent Loop BB0_180 Depth=1
                                        #     Parent Loop BB0_184 Depth=2
                                        #       Parent Loop BB0_188 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.w	$s7, $s5, 0
	mul.d	$s7, $s7, $a6
	add.d	$s8, $t3, $s7
	ld.w	$s7, $s8, 44
	beqz	$s7, .LBB0_194
# %bb.193:                              #   in Loop: Header=BB0_192 Depth=4
	addi.d	$s6, $s6, -1
	addi.d	$s5, $s5, 4
	bnez	$s6, .LBB0_192
	b	.LBB0_206
.LBB0_194:                              #   in Loop: Header=BB0_188 Depth=3
	ld.w	$s5, $s8, 4
	mul.d	$s5, $s5, $a7
	add.d	$s6, $t5, $s5
	ld.w	$s7, $s6, 4
	ld.w	$s5, $s8, 0
	bge	$s7, $s4, .LBB0_199
# %bb.195:                              #   in Loop: Header=BB0_188 Depth=3
	ld.w	$s4, $s1, 28
	bge	$s4, $s0, .LBB0_197
# %bb.196:                              #   in Loop: Header=BB0_188 Depth=3
	ld.w	$s4, $s1, 12
	beqz	$s4, .LBB0_204
.LBB0_197:                              #   in Loop: Header=BB0_188 Depth=3
	bge	$s7, $s0, .LBB0_199
# %bb.198:                              #   in Loop: Header=BB0_188 Depth=3
	addi.d	$s1, $s6, 4
	st.w	$s0, $s1, 0
.LBB0_199:                              #   in Loop: Header=BB0_188 Depth=3
	mul.d	$s0, $s5, $a7
	add.d	$s0, $t5, $s0
	ld.w	$s1, $s0, 4
	bge	$fp, $s1, .LBB0_206
.LBB0_200:                              #   in Loop: Header=BB0_188 Depth=3
	ld.w	$fp, $t6, 4
	mul.d	$fp, $fp, $a6
	ldx.w	$fp, $t3, $fp
	mul.d	$fp, $fp, $a7
	add.d	$fp, $t5, $fp
	ld.w	$s4, $fp, 24
	bge	$t8, $s4, .LBB0_202
# %bb.201:                              #   in Loop: Header=BB0_188 Depth=3
	ld.w	$s4, $fp, 12
	beqz	$s4, .LBB0_205
.LBB0_202:                              #   in Loop: Header=BB0_188 Depth=3
	bge	$t8, $s1, .LBB0_206
# %bb.203:                              #   in Loop: Header=BB0_188 Depth=3
	addi.d	$fp, $s0, 4
	st.w	$t8, $fp, 0
	b	.LBB0_206
.LBB0_204:                              #   in Loop: Header=BB0_188 Depth=3
	st.w	$s7, $s1, 4
	st.w	$a2, $s1, 12
	mul.d	$s0, $s5, $a7
	add.d	$s0, $t5, $s0
	ld.w	$s1, $s0, 4
	blt	$fp, $s1, .LBB0_200
	b	.LBB0_206
.LBB0_205:                              #   in Loop: Header=BB0_188 Depth=3
	st.w	$s1, $fp, 4
	st.w	$a2, $fp, 12
	.p2align	4, , 16
.LBB0_206:                              # %.loopexit705
                                        #   in Loop: Header=BB0_188 Depth=3
	slli.d	$t8, $t7, 2
	ldx.w	$t8, $t6, $t8
	mul.d	$t8, $t8, $a6
	add.d	$t8, $t3, $t8
	ld.w	$fp, $t8, 44
	bne	$fp, $a2, .LBB0_187
# %bb.207:                              #   in Loop: Header=BB0_188 Depth=3
	ld.w	$fp, $t8, 36
	ld.w	$s1, $t8, 4
	ld.w	$s5, $t8, 0
	slli.d	$t8, $fp, 5
	alsl.d	$t8, $fp, $t8, 3
	add.d	$fp, $t4, $t8
	ld.w	$t8, $fp, 4
	ld.w	$s0, $fp, 8
	mul.d	$fp, $s1, $a7
	add.d	$s1, $t5, $fp
	ld.w	$s4, $s1, 4
	mul.d	$fp, $s5, $a7
	add.d	$fp, $t5, $fp
	ld.w	$fp, $fp, 4
	alsl.d	$t6, $t7, $t6, 2
	addi.d	$t7, $t7, 1
	addi.d	$s5, $t6, -4
	.p2align	4, , 16
.LBB0_208:                              #   Parent Loop BB0_180 Depth=1
                                        #     Parent Loop BB0_184 Depth=2
                                        #       Parent Loop BB0_188 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	addi.w	$t7, $t7, -1
	blt	$t7, $a5, .LBB0_187
# %bb.209:                              #   in Loop: Header=BB0_208 Depth=4
	ld.w	$s6, $s5, 0
	mul.d	$s6, $s6, $a6
	add.d	$s7, $t3, $s6
	ld.w	$s6, $s7, 44
	addi.d	$s5, $s5, -4
	bnez	$s6, .LBB0_208
# %bb.210:                              #   in Loop: Header=BB0_188 Depth=3
	ld.w	$t7, $s7, 4
	mul.d	$t7, $t7, $a7
	add.d	$s5, $t5, $t7
	ld.w	$s6, $s5, 4
	ld.w	$t7, $s7, 0
	bge	$s6, $s4, .LBB0_215
# %bb.211:                              #   in Loop: Header=BB0_188 Depth=3
	ld.w	$s4, $s1, 28
	bge	$s4, $s0, .LBB0_213
# %bb.212:                              #   in Loop: Header=BB0_188 Depth=3
	ld.w	$s4, $s1, 12
	beqz	$s4, .LBB0_220
.LBB0_213:                              #   in Loop: Header=BB0_188 Depth=3
	bge	$s6, $s0, .LBB0_215
# %bb.214:                              #   in Loop: Header=BB0_188 Depth=3
	addi.d	$s1, $s5, 4
	st.w	$s0, $s1, 0
.LBB0_215:                              #   in Loop: Header=BB0_188 Depth=3
	mul.d	$t7, $t7, $a7
	add.d	$t7, $t5, $t7
	ld.w	$s0, $t7, 4
	bge	$fp, $s0, .LBB0_187
.LBB0_216:                              #   in Loop: Header=BB0_188 Depth=3
	ld.w	$t6, $t6, 0
	mul.d	$t6, $t6, $a6
	ldx.w	$t6, $t3, $t6
	mul.d	$t6, $t6, $a7
	add.d	$t6, $t5, $t6
	ld.w	$fp, $t6, 24
	bge	$t8, $fp, .LBB0_218
# %bb.217:                              #   in Loop: Header=BB0_188 Depth=3
	ld.w	$fp, $t6, 12
	beqz	$fp, .LBB0_186
.LBB0_218:                              #   in Loop: Header=BB0_188 Depth=3
	bge	$t8, $s0, .LBB0_187
# %bb.219:                              #   in Loop: Header=BB0_188 Depth=3
	addi.d	$t6, $t7, 4
	st.w	$t8, $t6, 0
	b	.LBB0_187
.LBB0_220:                              #   in Loop: Header=BB0_188 Depth=3
	st.w	$s6, $s1, 4
	st.w	$a2, $s1, 12
	mul.d	$t7, $t7, $a7
	add.d	$t7, $t5, $t7
	ld.w	$s0, $t7, 4
	bge	$fp, $s0, .LBB0_187
	b	.LBB0_216
	.p2align	4, , 16
.LBB0_221:                              # %.preheader.loopexit
                                        #   in Loop: Header=BB0_180 Depth=1
	ld.d	$t1, $sp, 128                   # 8-byte Folded Reload
	ld.w	$t3, $t1, 0
.LBB0_222:                              # %.preheader
                                        #   in Loop: Header=BB0_180 Depth=1
	blt	$t3, $a2, .LBB0_179
# %bb.223:                              # %.lr.ph886.preheader
                                        #   in Loop: Header=BB0_180 Depth=1
	ori	$t2, $zero, 1
	b	.LBB0_226
	.p2align	4, , 16
.LBB0_224:                              # %._crit_edge883.loopexit
                                        #   in Loop: Header=BB0_226 Depth=2
	ld.d	$t2, $sp, 128                   # 8-byte Folded Reload
	ld.w	$t3, $t2, 0
.LBB0_225:                              # %._crit_edge883
                                        #   in Loop: Header=BB0_226 Depth=2
	addi.d	$t2, $t1, 1
	bge	$t1, $t3, .LBB0_179
.LBB0_226:                              # %.lr.ph886
                                        #   Parent Loop BB0_180 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_230 Depth 3
                                        #         Child Loop BB0_234 Depth 4
                                        #         Child Loop BB0_250 Depth 4
	move	$t1, $t2
	slli.d	$t2, $t2, 3
	ldx.d	$t2, $a0, $t2
	beqz	$t2, .LBB0_225
# %bb.227:                              # %.lr.ph882
                                        #   in Loop: Header=BB0_226 Depth=2
	ld.d	$t3, $s2, 0
	ld.d	$t4, $a4, 0
	ld.d	$t5, $s3, 0
	b	.LBB0_230
.LBB0_228:                              #   in Loop: Header=BB0_230 Depth=3
	st.w	$s0, $t8, 0
	st.w	$a2, $t8, 8
	.p2align	4, , 16
.LBB0_229:                              # %.loopexit
                                        #   in Loop: Header=BB0_230 Depth=3
	ld.d	$t2, $t2, 24
	beqz	$t2, .LBB0_224
.LBB0_230:                              #   Parent Loop BB0_180 Depth=1
                                        #     Parent Loop BB0_226 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_234 Depth 4
                                        #         Child Loop BB0_250 Depth 4
	ld.w	$t6, $t2, 0
	beq	$t6, $a2, .LBB0_229
# %bb.231:                              #   in Loop: Header=BB0_230 Depth=3
	ld.d	$t7, $t2, 8
	ld.w	$t6, $t7, 0
	blt	$t6, $a5, .LBB0_229
# %bb.232:                              #   in Loop: Header=BB0_230 Depth=3
	ld.w	$t8, $t7, 4
	mul.d	$t8, $t8, $a6
	add.d	$t8, $t3, $t8
	ld.w	$fp, $t8, 44
	bne	$fp, $a2, .LBB0_248
# %bb.233:                              # %.lr.ph877.preheader
                                        #   in Loop: Header=BB0_230 Depth=3
	ld.w	$fp, $t8, 32
	ld.w	$s1, $t8, 4
	ld.w	$s5, $t8, 0
	slli.d	$t8, $fp, 5
	alsl.d	$t8, $fp, $t8, 3
	add.d	$fp, $t4, $t8
	ld.w	$t8, $fp, 4
	ld.w	$s0, $fp, 8
	mul.d	$fp, $s1, $a7
	add.d	$s1, $t5, $fp
	ldx.w	$s4, $t5, $fp
	mul.d	$fp, $s5, $a7
	ldx.w	$fp, $t5, $fp
	addi.d	$s5, $t6, 1
	bstrpick.d	$s6, $s5, 31, 0
	addi.d	$s5, $t7, 8
	addi.d	$s6, $s6, -2
	.p2align	4, , 16
.LBB0_234:                              # %.lr.ph877
                                        #   Parent Loop BB0_180 Depth=1
                                        #     Parent Loop BB0_226 Depth=2
                                        #       Parent Loop BB0_230 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.w	$s7, $s5, 0
	mul.d	$s7, $s7, $a6
	add.d	$s8, $t3, $s7
	ld.w	$s7, $s8, 44
	beqz	$s7, .LBB0_236
# %bb.235:                              #   in Loop: Header=BB0_234 Depth=4
	addi.d	$s6, $s6, -1
	addi.d	$s5, $s5, 4
	bnez	$s6, .LBB0_234
	b	.LBB0_248
.LBB0_236:                              #   in Loop: Header=BB0_230 Depth=3
	ld.w	$s5, $s8, 4
	mul.d	$s6, $s5, $a7
	ldx.w	$s7, $t5, $s6
	ld.w	$s5, $s8, 0
	bge	$s7, $s4, .LBB0_241
# %bb.237:                              #   in Loop: Header=BB0_230 Depth=3
	ld.w	$s4, $s1, 20
	bge	$s4, $s0, .LBB0_239
# %bb.238:                              #   in Loop: Header=BB0_230 Depth=3
	ld.w	$s4, $s1, 8
	beqz	$s4, .LBB0_246
.LBB0_239:                              #   in Loop: Header=BB0_230 Depth=3
	bge	$s7, $s0, .LBB0_241
# %bb.240:                              #   in Loop: Header=BB0_230 Depth=3
	add.d	$s1, $t5, $s6
	st.w	$s0, $s1, 0
.LBB0_241:                              #   in Loop: Header=BB0_230 Depth=3
	mul.d	$s0, $s5, $a7
	ldx.w	$s1, $t5, $s0
	bge	$fp, $s1, .LBB0_248
.LBB0_242:                              #   in Loop: Header=BB0_230 Depth=3
	ld.w	$fp, $t7, 4
	mul.d	$fp, $fp, $a6
	ldx.w	$fp, $t3, $fp
	mul.d	$fp, $fp, $a7
	add.d	$fp, $t5, $fp
	ld.w	$s4, $fp, 16
	bge	$t8, $s4, .LBB0_244
# %bb.243:                              #   in Loop: Header=BB0_230 Depth=3
	ld.w	$s4, $fp, 8
	beqz	$s4, .LBB0_247
.LBB0_244:                              #   in Loop: Header=BB0_230 Depth=3
	bge	$t8, $s1, .LBB0_248
# %bb.245:                              #   in Loop: Header=BB0_230 Depth=3
	add.d	$fp, $t5, $s0
	st.w	$t8, $fp, 0
	b	.LBB0_248
.LBB0_246:                              #   in Loop: Header=BB0_230 Depth=3
	st.w	$s7, $s1, 0
	st.w	$a2, $s1, 8
	mul.d	$s0, $s5, $a7
	ldx.w	$s1, $t5, $s0
	blt	$fp, $s1, .LBB0_242
	b	.LBB0_248
.LBB0_247:                              #   in Loop: Header=BB0_230 Depth=3
	st.w	$s1, $fp, 0
	st.w	$a2, $fp, 8
	.p2align	4, , 16
.LBB0_248:                              # %.loopexit703
                                        #   in Loop: Header=BB0_230 Depth=3
	slli.d	$t8, $t6, 2
	ldx.w	$t8, $t7, $t8
	mul.d	$t8, $t8, $a6
	add.d	$fp, $t3, $t8
	ld.w	$t8, $fp, 44
	bne	$t8, $a2, .LBB0_229
# %bb.249:                              #   in Loop: Header=BB0_230 Depth=3
	ld.w	$s0, $fp, 36
	alsl.d	$t8, $t6, $t7, 2
	ld.w	$s1, $fp, 4
	ld.w	$fp, $fp, 0
	slli.d	$t7, $s0, 5
	alsl.d	$t7, $s0, $t7, 3
	add.d	$s0, $t4, $t7
	ld.w	$t7, $s0, 4
	ld.w	$s0, $s0, 8
	mul.d	$s1, $s1, $a7
	ldx.w	$s4, $t5, $s1
	mul.d	$fp, $fp, $a7
	ldx.w	$fp, $t5, $fp
	add.d	$s1, $t5, $s1
	addi.d	$t6, $t6, 1
	addi.d	$s5, $t8, -4
	.p2align	4, , 16
.LBB0_250:                              #   Parent Loop BB0_180 Depth=1
                                        #     Parent Loop BB0_226 Depth=2
                                        #       Parent Loop BB0_230 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	addi.w	$t6, $t6, -1
	blt	$t6, $a5, .LBB0_229
# %bb.251:                              #   in Loop: Header=BB0_250 Depth=4
	ld.w	$s6, $s5, 0
	mul.d	$s6, $s6, $a6
	add.d	$s7, $t3, $s6
	ld.w	$s6, $s7, 44
	addi.d	$s5, $s5, -4
	bnez	$s6, .LBB0_250
# %bb.252:                              #   in Loop: Header=BB0_230 Depth=3
	ld.w	$t6, $s7, 4
	mul.d	$s5, $t6, $a7
	ldx.w	$s6, $t5, $s5
	ld.w	$t6, $s7, 0
	bge	$s6, $s4, .LBB0_257
# %bb.253:                              #   in Loop: Header=BB0_230 Depth=3
	ld.w	$s4, $s1, 20
	bge	$s4, $s0, .LBB0_255
# %bb.254:                              #   in Loop: Header=BB0_230 Depth=3
	ld.w	$s4, $s1, 8
	beqz	$s4, .LBB0_262
.LBB0_255:                              #   in Loop: Header=BB0_230 Depth=3
	bge	$s6, $s0, .LBB0_257
# %bb.256:                              #   in Loop: Header=BB0_230 Depth=3
	add.d	$s1, $t5, $s5
	st.w	$s0, $s1, 0
.LBB0_257:                              #   in Loop: Header=BB0_230 Depth=3
	mul.d	$t6, $t6, $a7
	ldx.w	$s0, $t5, $t6
	bge	$fp, $s0, .LBB0_229
.LBB0_258:                              #   in Loop: Header=BB0_230 Depth=3
	ld.w	$t8, $t8, 0
	mul.d	$t8, $t8, $a6
	ldx.w	$t8, $t3, $t8
	mul.d	$t8, $t8, $a7
	add.d	$t8, $t5, $t8
	ld.w	$fp, $t8, 16
	bge	$t7, $fp, .LBB0_260
# %bb.259:                              #   in Loop: Header=BB0_230 Depth=3
	ld.w	$fp, $t8, 8
	beqz	$fp, .LBB0_228
.LBB0_260:                              #   in Loop: Header=BB0_230 Depth=3
	bge	$t7, $s0, .LBB0_229
# %bb.261:                              #   in Loop: Header=BB0_230 Depth=3
	add.d	$t6, $t5, $t6
	st.w	$t7, $t6, 0
	b	.LBB0_229
.LBB0_262:                              #   in Loop: Header=BB0_230 Depth=3
	st.w	$s6, $s1, 0
	st.w	$a2, $s1, 8
	mul.d	$t6, $t6, $a7
	ldx.w	$s0, $t5, $t6
	bge	$fp, $s0, .LBB0_229
	b	.LBB0_258
.LBB0_263:
	ld.d	$s8, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 184                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 192                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 200                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 208                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 216                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 224                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 232                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 240                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 248                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 256
	ret
.Lfunc_end0:
	.size	reduceg, .Lfunc_end0-reduceg
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
