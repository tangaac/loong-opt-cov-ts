	.file	"reduceg.c"
	.text
	.globl	reduceg                         # -- Begin function reduceg
	.p2align	5
	.type	reduceg,@function
reduceg:                                # @reduceg
# %bb.0:
	addi.d	$sp, $sp, -208
	st.d	$ra, $sp, 200                   # 8-byte Folded Spill
	st.d	$fp, $sp, 192                   # 8-byte Folded Spill
	st.d	$s0, $sp, 184                   # 8-byte Folded Spill
	st.d	$s1, $sp, 176                   # 8-byte Folded Spill
	st.d	$s2, $sp, 168                   # 8-byte Folded Spill
	st.d	$s3, $sp, 160                   # 8-byte Folded Spill
	st.d	$s4, $sp, 152                   # 8-byte Folded Spill
	st.d	$s5, $sp, 144                   # 8-byte Folded Spill
	st.d	$s6, $sp, 136                   # 8-byte Folded Spill
	st.d	$s7, $sp, 128                   # 8-byte Folded Spill
	st.d	$s8, $sp, 120                   # 8-byte Folded Spill
	st.d	$zero, $sp, 96
	ori	$a0, $zero, 808
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	st.w	$zero, $sp, 116
	pcalau12i	$a0, %got_pc_hi20(eNum)
	ld.d	$a0, $a0, %got_pc_lo12(eNum)
	ld.w	$a1, $a0, 0
	blez	$a1, .LBB0_3
# %bb.1:                                # %.lr.ph
	pcalau12i	$a1, %got_pc_hi20(eArray)
	ld.d	$a1, $a1, %got_pc_lo12(eArray)
	ld.d	$a2, $a1, 0
	move	$a1, $zero
	addi.d	$a2, $a2, 100
	.p2align	4, , 16
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	st.w	$zero, $a2, 0
	ld.w	$a3, $a0, 0
	addi.d	$a1, $a1, 1
	addi.d	$a2, $a2, 56
	blt	$a1, $a3, .LBB0_2
.LBB0_3:                                # %.preheader727
	pcalau12i	$a0, %got_pc_hi20(numRects)
	ld.d	$a3, $a0, %got_pc_lo12(numRects)
	ld.w	$a0, $a3, 0
	vrepli.b	$vr1, 0
	blez	$a0, .LBB0_6
# %bb.4:                                # %.lr.ph741
	pcalau12i	$a0, %got_pc_hi20(rectArray)
	ld.d	$a0, $a0, %got_pc_lo12(rectArray)
	ld.d	$a1, $a0, 0
	move	$a0, $zero
	addi.d	$a1, $a1, 84
	.p2align	4, , 16
.LBB0_5:                                # =>This Inner Loop Header: Depth=1
	vst	$vr1, $a1, 0
	ld.w	$a2, $a3, 0
	addi.d	$a0, $a0, 1
	addi.d	$a1, $a1, 52
	blt	$a0, $a2, .LBB0_5
.LBB0_6:                                # %.preheader726
	st.d	$a3, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(numXnodes)
	ld.d	$a0, $a0, %got_pc_lo12(numXnodes)
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	ld.w	$a0, $a0, 0
	lu12i.w	$a2, -251659
	lu12i.w	$a3, 20971
	lu12i.w	$a4, 10485
	blez	$a0, .LBB0_25
# %bb.7:                                # %.lr.ph755.preheader
	ori	$s1, $zero, 1
	pcalau12i	$a1, %got_pc_hi20(xNodeArray)
	ld.d	$a1, $a1, %got_pc_lo12(xNodeArray)
	st.d	$a1, $sp, 24                    # 8-byte Folded Spill
	ori	$a1, $a2, 3113
	st.d	$a1, $sp, 56                    # 8-byte Folded Spill
	ori	$s8, $a3, 2128
	ori	$s2, $a4, 3112
	pcalau12i	$a1, %got_pc_hi20(eArray)
	ld.d	$s3, $a1, %got_pc_lo12(eArray)
	ori	$s4, $zero, 56
	pcalau12i	$a1, %got_pc_hi20(rectArray)
	ld.d	$s5, $a1, %got_pc_lo12(rectArray)
	ori	$s0, $zero, 52
	ori	$a1, $zero, 1
	vst	$vr1, $sp, 64                   # 16-byte Folded Spill
	b	.LBB0_10
	.p2align	4, , 16
.LBB0_8:                                # %._crit_edge751.loopexit
                                        #   in Loop: Header=BB0_10 Depth=1
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
.LBB0_9:                                # %._crit_edge751
                                        #   in Loop: Header=BB0_10 Depth=1
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	addi.d	$a1, $a2, 1
	bge	$a2, $a0, .LBB0_25
.LBB0_10:                               # %.lr.ph755
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_14 Depth 2
                                        #       Child Loop BB0_21 Depth 3
                                        #       Child Loop BB0_24 Depth 3
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a2, $a2, 0
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	slli.d	$a1, $a1, 3
	ldx.d	$s6, $a2, $a1
	bnez	$s6, .LBB0_14
	b	.LBB0_9
.LBB0_11:                               #   in Loop: Header=BB0_14 Depth=2
	move	$a4, $zero
.LBB0_12:                               # %._crit_edge
                                        #   in Loop: Header=BB0_14 Depth=2
	ld.w	$a2, $sp, 116
	addi.w	$a0, $a4, 0
	div.w	$a0, $a0, $s7
	st.w	$a0, $sp, 112
	slli.d	$a1, $a2, 3
	stx.d	$s6, $fp, $a1
	sub.w	$a1, $zero, $a0
	addi.d	$a0, $sp, 96
	pcaddu18i	$ra, %call36(tinsert)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s6, 8
	ld.w	$a1, $a0, 4
	ld.d	$a2, $s3, 0
	mul.d	$a1, $a1, $s4
	add.d	$a3, $a2, $a1
	ld.w	$a3, $a3, 4
	ld.d	$a4, $s5, 0
	ldx.w	$a1, $a2, $a1
	mul.d	$a3, $a3, $s0
	add.d	$a3, $a4, $a3
	st.w	$s1, $a3, 44
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a4, $a1
	st.w	$s1, $a1, 36
	slli.d	$a1, $s7, 2
	ldx.w	$a0, $a0, $a1
	mul.d	$a0, $a0, $s4
	add.d	$a1, $a2, $a0
	ld.w	$a1, $a1, 4
	ldx.w	$a0, $a2, $a0
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a4, $a1
	st.w	$s1, $a1, 40
	mul.d	$a0, $a0, $s0
	add.d	$a0, $a4, $a0
	st.w	$s1, $a0, 32
	vld	$vr1, $sp, 64                   # 16-byte Folded Reload
.LBB0_13:                               #   in Loop: Header=BB0_14 Depth=2
	ld.d	$s6, $s6, 24
	beqz	$s6, .LBB0_8
.LBB0_14:                               # %.lr.ph750
                                        #   Parent Loop BB0_10 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_21 Depth 3
                                        #       Child Loop BB0_24 Depth 3
	ld.w	$a0, $s6, 0
	beq	$a0, $s1, .LBB0_13
# %bb.15:                               #   in Loop: Header=BB0_14 Depth=2
	ld.d	$a1, $s6, 8
	ld.w	$a0, $sp, 116
	ld.w	$s7, $a1, 0
	addi.d	$a1, $a0, 1
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	mul.d	$a2, $a1, $a2
	add.d	$a2, $a2, $s8
	rotri.w	$a2, $a2, 2
	st.w	$a1, $sp, 116
	bgeu	$s2, $a2, .LBB0_17
# %bb.16:                               #   in Loop: Header=BB0_14 Depth=2
	bgtz	$s7, .LBB0_18
	b	.LBB0_11
.LBB0_17:                               #   in Loop: Header=BB0_14 Depth=2
	slli.d	$a0, $a0, 3
	addi.d	$a1, $a0, 808
	move	$a0, $fp
	pcaddu18i	$ra, %call36(realloc)
	jirl	$ra, $ra, 0
	vld	$vr1, $sp, 64                   # 16-byte Folded Reload
	move	$fp, $a0
	blez	$s7, .LBB0_11
.LBB0_18:                               # %.lr.ph744
                                        #   in Loop: Header=BB0_14 Depth=2
	ld.d	$a0, $s3, 0
	ld.d	$a1, $s6, 8
	ori	$a2, $zero, 8
	bgeu	$s7, $a2, .LBB0_20
# %bb.19:                               #   in Loop: Header=BB0_14 Depth=2
	move	$a4, $zero
	ori	$a2, $zero, 1
	b	.LBB0_23
.LBB0_20:                               # %vector.ph
                                        #   in Loop: Header=BB0_14 Depth=2
	bstrpick.d	$a2, $s7, 30, 3
	slli.d	$a3, $a2, 3
	srli.d	$a4, $s7, 3
	ori	$a2, $zero, 1
	bstrins.d	$a2, $a4, 30, 3
	addi.d	$a4, $a1, 20
	move	$a5, $a3
	vori.b	$vr0, $vr1, 0
	.p2align	4, , 16
.LBB0_21:                               # %vector.body
                                        #   Parent Loop BB0_10 Depth=1
                                        #     Parent Loop BB0_14 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	vld	$vr2, $a4, -16
	vld	$vr3, $a4, 0
	vshuf4i.w	$vr4, $vr2, 50
	vslli.d	$vr4, $vr4, 32
	vsrai.d	$vr4, $vr4, 32
	vshuf4i.w	$vr2, $vr2, 16
	vslli.d	$vr2, $vr2, 32
	vsrai.d	$vr2, $vr2, 32
	vpickve2gr.d	$a6, $vr2, 0
	vpickve2gr.d	$a7, $vr2, 1
	vpickve2gr.d	$t0, $vr4, 0
	vpickve2gr.d	$t1, $vr4, 1
	vshuf4i.w	$vr2, $vr3, 50
	vslli.d	$vr2, $vr2, 32
	vsrai.d	$vr2, $vr2, 32
	vshuf4i.w	$vr3, $vr3, 16
	vslli.d	$vr3, $vr3, 32
	vsrai.d	$vr3, $vr3, 32
	vpickve2gr.d	$t2, $vr3, 0
	vpickve2gr.d	$t3, $vr3, 1
	vpickve2gr.d	$t4, $vr2, 0
	vpickve2gr.d	$t5, $vr2, 1
	mul.d	$a6, $a6, $s4
	add.d	$a6, $a0, $a6
	mul.d	$a7, $a7, $s4
	add.d	$a7, $a0, $a7
	mul.d	$t0, $t0, $s4
	add.d	$t0, $a0, $t0
	mul.d	$t1, $t1, $s4
	add.d	$t1, $a0, $t1
	mul.d	$t2, $t2, $s4
	add.d	$t2, $a0, $t2
	mul.d	$t3, $t3, $s4
	add.d	$t3, $a0, $t3
	mul.d	$t4, $t4, $s4
	add.d	$t4, $a0, $t4
	mul.d	$t5, $t5, $s4
	add.d	$t5, $a0, $t5
	ld.w	$a6, $a6, 20
	ld.w	$a7, $a7, 20
	ld.w	$t0, $t0, 20
	ld.w	$t1, $t1, 20
	vinsgr2vr.w	$vr2, $a6, 0
	vinsgr2vr.w	$vr2, $a7, 1
	vinsgr2vr.w	$vr2, $t0, 2
	vinsgr2vr.w	$vr2, $t1, 3
	ld.w	$a6, $t2, 20
	ld.w	$a7, $t3, 20
	ld.w	$t0, $t4, 20
	ld.w	$t1, $t5, 20
	vinsgr2vr.w	$vr3, $a6, 0
	vinsgr2vr.w	$vr3, $a7, 1
	vinsgr2vr.w	$vr3, $t0, 2
	vinsgr2vr.w	$vr3, $t1, 3
	vadd.w	$vr0, $vr0, $vr2
	vadd.w	$vr1, $vr1, $vr3
	addi.d	$a5, $a5, -8
	addi.d	$a4, $a4, 32
	bnez	$a5, .LBB0_21
# %bb.22:                               # %middle.block
                                        #   in Loop: Header=BB0_14 Depth=2
	vadd.w	$vr0, $vr1, $vr0
	vhaddw.d.w	$vr0, $vr0, $vr0
	vhaddw.q.d	$vr0, $vr0, $vr0
	vpickve2gr.d	$a4, $vr0, 0
	beq	$a3, $s7, .LBB0_12
.LBB0_23:                               # %scalar.ph.preheader
                                        #   in Loop: Header=BB0_14 Depth=2
	addi.d	$a3, $s7, 1
	bstrpick.d	$a3, $a3, 31, 0
	alsl.d	$a1, $a2, $a1, 2
	sub.d	$a2, $a3, $a2
	.p2align	4, , 16
.LBB0_24:                               # %scalar.ph
                                        #   Parent Loop BB0_10 Depth=1
                                        #     Parent Loop BB0_14 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$a3, $a1, 0
	mul.d	$a3, $a3, $s4
	add.d	$a3, $a0, $a3
	ld.w	$a3, $a3, 20
	add.d	$a4, $a4, $a3
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, 4
	bnez	$a2, .LBB0_24
	b	.LBB0_12
.LBB0_25:                               # %.preheader725
	pcalau12i	$a0, %got_pc_hi20(numYnodes)
	ld.d	$a0, $a0, %got_pc_lo12(numYnodes)
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	ld.w	$a0, $a0, 0
	blez	$a0, .LBB0_44
# %bb.26:                               # %.lr.ph774.preheader
	ori	$s6, $zero, 1
	pcalau12i	$a1, %got_pc_hi20(yNodeArray)
	ld.d	$a1, $a1, %got_pc_lo12(yNodeArray)
	st.d	$a1, $sp, 16                    # 8-byte Folded Spill
	lu12i.w	$a1, -251659
	ori	$a1, $a1, 3113
	st.d	$a1, $sp, 56                    # 8-byte Folded Spill
	lu12i.w	$a1, 20971
	ori	$s3, $a1, 2128
	lu12i.w	$a1, 10485
	ori	$s5, $a1, 3112
	pcalau12i	$a1, %got_pc_hi20(eArray)
	ld.d	$s8, $a1, %got_pc_lo12(eArray)
	ori	$s4, $zero, 56
	pcalau12i	$a1, %got_pc_hi20(rectArray)
	ld.d	$s7, $a1, %got_pc_lo12(rectArray)
	ori	$s0, $zero, 52
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 32                   # 16-byte Folded Spill
	ori	$a1, $zero, 1
	b	.LBB0_29
	.p2align	4, , 16
.LBB0_27:                               # %._crit_edge769.loopexit
                                        #   in Loop: Header=BB0_29 Depth=1
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
.LBB0_28:                               # %._crit_edge769
                                        #   in Loop: Header=BB0_29 Depth=1
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	addi.d	$a1, $a2, 1
	bge	$a2, $a0, .LBB0_44
.LBB0_29:                               # %.lr.ph774
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_33 Depth 2
                                        #       Child Loop BB0_40 Depth 3
                                        #       Child Loop BB0_43 Depth 3
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a2, $a2, 0
	st.d	$a1, $sp, 24                    # 8-byte Folded Spill
	slli.d	$a1, $a1, 3
	ldx.d	$s1, $a2, $a1
	bnez	$s1, .LBB0_33
	b	.LBB0_28
.LBB0_30:                               #   in Loop: Header=BB0_33 Depth=2
	move	$a4, $zero
.LBB0_31:                               # %._crit_edge762
                                        #   in Loop: Header=BB0_33 Depth=2
	ld.w	$a2, $sp, 116
	addi.w	$a0, $a4, 0
	div.w	$a0, $a0, $s2
	st.w	$a0, $sp, 112
	slli.d	$a1, $a2, 3
	stx.d	$s1, $fp, $a1
	sub.w	$a1, $zero, $a0
	addi.d	$a0, $sp, 96
	pcaddu18i	$ra, %call36(tinsert)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 8
	ld.w	$a1, $a0, 4
	ld.d	$a2, $s8, 0
	mul.d	$a1, $a1, $s4
	add.d	$a3, $a2, $a1
	ld.w	$a3, $a3, 4
	ld.d	$a4, $s7, 0
	ldx.w	$a1, $a2, $a1
	mul.d	$a3, $a3, $s0
	add.d	$a3, $a4, $a3
	st.w	$s6, $a3, 44
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a4, $a1
	st.w	$s6, $a1, 40
	slli.d	$a1, $s2, 2
	ldx.w	$a0, $a0, $a1
	mul.d	$a0, $a0, $s4
	add.d	$a1, $a2, $a0
	ld.w	$a1, $a1, 4
	ldx.w	$a0, $a2, $a0
	mul.d	$a1, $a1, $s0
	add.d	$a1, $a4, $a1
	st.w	$s6, $a1, 36
	mul.d	$a0, $a0, $s0
	add.d	$a0, $a4, $a0
	st.w	$s6, $a0, 32
.LBB0_32:                               #   in Loop: Header=BB0_33 Depth=2
	ld.d	$s1, $s1, 24
	beqz	$s1, .LBB0_27
.LBB0_33:                               # %.lr.ph768
                                        #   Parent Loop BB0_29 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_40 Depth 3
                                        #       Child Loop BB0_43 Depth 3
	ld.w	$a0, $s1, 0
	beq	$a0, $s6, .LBB0_32
# %bb.34:                               #   in Loop: Header=BB0_33 Depth=2
	ld.d	$a1, $s1, 8
	ld.w	$a0, $sp, 116
	ld.w	$s2, $a1, 0
	addi.d	$a1, $a0, 1
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	mul.d	$a2, $a1, $a2
	add.d	$a2, $a2, $s3
	rotri.w	$a2, $a2, 2
	st.w	$a1, $sp, 116
	bgeu	$s5, $a2, .LBB0_36
# %bb.35:                               #   in Loop: Header=BB0_33 Depth=2
	bgtz	$s2, .LBB0_37
	b	.LBB0_30
.LBB0_36:                               #   in Loop: Header=BB0_33 Depth=2
	slli.d	$a0, $a0, 3
	addi.d	$a1, $a0, 808
	move	$a0, $fp
	pcaddu18i	$ra, %call36(realloc)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	blez	$s2, .LBB0_30
.LBB0_37:                               # %.lr.ph761
                                        #   in Loop: Header=BB0_33 Depth=2
	ld.d	$a0, $s8, 0
	ld.d	$a1, $s1, 8
	ori	$a2, $zero, 8
	bgeu	$s2, $a2, .LBB0_39
# %bb.38:                               #   in Loop: Header=BB0_33 Depth=2
	move	$a4, $zero
	ori	$a2, $zero, 1
	b	.LBB0_42
.LBB0_39:                               # %vector.ph1101
                                        #   in Loop: Header=BB0_33 Depth=2
	bstrpick.d	$a2, $s2, 30, 3
	slli.d	$a3, $a2, 3
	srli.d	$a4, $s2, 3
	ori	$a2, $zero, 1
	bstrins.d	$a2, $a4, 30, 3
	addi.d	$a4, $a1, 20
	move	$a5, $a3
	vld	$vr1, $sp, 32                   # 16-byte Folded Reload
	vori.b	$vr0, $vr1, 0
	.p2align	4, , 16
.LBB0_40:                               # %vector.body1104
                                        #   Parent Loop BB0_29 Depth=1
                                        #     Parent Loop BB0_33 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	vld	$vr2, $a4, -16
	vld	$vr3, $a4, 0
	vshuf4i.w	$vr4, $vr2, 50
	vslli.d	$vr4, $vr4, 32
	vsrai.d	$vr4, $vr4, 32
	vshuf4i.w	$vr2, $vr2, 16
	vslli.d	$vr2, $vr2, 32
	vsrai.d	$vr2, $vr2, 32
	vpickve2gr.d	$a6, $vr2, 0
	vpickve2gr.d	$a7, $vr2, 1
	vpickve2gr.d	$t0, $vr4, 0
	vpickve2gr.d	$t1, $vr4, 1
	vshuf4i.w	$vr2, $vr3, 50
	vslli.d	$vr2, $vr2, 32
	vsrai.d	$vr2, $vr2, 32
	vshuf4i.w	$vr3, $vr3, 16
	vslli.d	$vr3, $vr3, 32
	vsrai.d	$vr3, $vr3, 32
	vpickve2gr.d	$t2, $vr3, 0
	vpickve2gr.d	$t3, $vr3, 1
	vpickve2gr.d	$t4, $vr2, 0
	vpickve2gr.d	$t5, $vr2, 1
	mul.d	$a6, $a6, $s4
	add.d	$a6, $a0, $a6
	mul.d	$a7, $a7, $s4
	add.d	$a7, $a0, $a7
	mul.d	$t0, $t0, $s4
	add.d	$t0, $a0, $t0
	mul.d	$t1, $t1, $s4
	add.d	$t1, $a0, $t1
	mul.d	$t2, $t2, $s4
	add.d	$t2, $a0, $t2
	mul.d	$t3, $t3, $s4
	add.d	$t3, $a0, $t3
	mul.d	$t4, $t4, $s4
	add.d	$t4, $a0, $t4
	mul.d	$t5, $t5, $s4
	add.d	$t5, $a0, $t5
	ld.w	$a6, $a6, 20
	ld.w	$a7, $a7, 20
	ld.w	$t0, $t0, 20
	ld.w	$t1, $t1, 20
	vinsgr2vr.w	$vr2, $a6, 0
	vinsgr2vr.w	$vr2, $a7, 1
	vinsgr2vr.w	$vr2, $t0, 2
	vinsgr2vr.w	$vr2, $t1, 3
	ld.w	$a6, $t2, 20
	ld.w	$a7, $t3, 20
	ld.w	$t0, $t4, 20
	ld.w	$t1, $t5, 20
	vinsgr2vr.w	$vr3, $a6, 0
	vinsgr2vr.w	$vr3, $a7, 1
	vinsgr2vr.w	$vr3, $t0, 2
	vinsgr2vr.w	$vr3, $t1, 3
	vadd.w	$vr0, $vr0, $vr2
	vadd.w	$vr1, $vr1, $vr3
	addi.d	$a5, $a5, -8
	addi.d	$a4, $a4, 32
	bnez	$a5, .LBB0_40
# %bb.41:                               # %middle.block1112
                                        #   in Loop: Header=BB0_33 Depth=2
	vadd.w	$vr0, $vr1, $vr0
	vhaddw.d.w	$vr0, $vr0, $vr0
	vhaddw.q.d	$vr0, $vr0, $vr0
	vpickve2gr.d	$a4, $vr0, 0
	beq	$a3, $s2, .LBB0_31
.LBB0_42:                               # %scalar.ph1099.preheader
                                        #   in Loop: Header=BB0_33 Depth=2
	addi.d	$a3, $s2, 1
	bstrpick.d	$a3, $a3, 31, 0
	alsl.d	$a1, $a2, $a1, 2
	sub.d	$a2, $a3, $a2
	.p2align	4, , 16
.LBB0_43:                               # %scalar.ph1099
                                        #   Parent Loop BB0_29 Depth=1
                                        #     Parent Loop BB0_33 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$a3, $a1, 0
	mul.d	$a3, $a3, $s4
	add.d	$a3, $a0, $a3
	ld.w	$a3, $a3, 20
	add.d	$a4, $a4, $a3
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, 4
	bnez	$a2, .LBB0_43
	b	.LBB0_31
.LBB0_44:                               # %.preheader724
	ori	$s5, $zero, 1
	pcalau12i	$a0, %got_pc_hi20(edgeTransition)
	ld.d	$a0, $a0, %got_pc_lo12(edgeTransition)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(eArray)
	ld.d	$s2, $a0, %got_pc_lo12(eArray)
	pcalau12i	$a0, %got_pc_hi20(rectArray)
	ld.d	$s3, $a0, %got_pc_lo12(rectArray)
	ori	$s7, $zero, 56
	ori	$s8, $zero, 52
	lu12i.w	$a0, 2441
	ori	$a0, $a0, 1664
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
                                        # implicit-def: $r29
	.p2align	4, , 16
.LBB0_45:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_51 Depth 2
                                        #       Child Loop BB0_58 Depth 3
                                        #       Child Loop BB0_55 Depth 3
                                        #       Child Loop BB0_72 Depth 3
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 104
	addi.d	$a2, $sp, 112
	addi.d	$a3, $sp, 116
	pcaddu18i	$ra, %call36(tpop)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 104
	beqz	$a0, .LBB0_79
# %bb.46:                               #   in Loop: Header=BB0_45 Depth=1
	ld.w	$a0, $sp, 116
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $fp, $a0
	ld.d	$a0, $a0, 8
	ld.w	$a1, $a0, 0
	beq	$a1, $s5, .LBB0_45
# %bb.47:                               #   in Loop: Header=BB0_45 Depth=1
	ld.w	$ra, $a0, 4
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	ld.w	$a3, $a2, 0
	move	$a4, $zero
	slt	$t0, $a3, $ra
	ld.d	$a6, $s2, 0
	ld.d	$a7, $s3, 0
	ori	$a2, $zero, 36
	masknez	$t1, $a2, $t0
	ori	$a2, $zero, 40
	maskeqz	$t0, $a2, $t0
	or	$t0, $t0, $t1
	add.d	$a2, $a7, $t0
	st.d	$a2, $sp, 24                    # 8-byte Folded Spill
	ori	$t1, $zero, 1
	ori	$t3, $zero, 1
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	b	.LBB0_51
.LBB0_48:                               # %._crit_edge793.sink.split
                                        #   in Loop: Header=BB0_51 Depth=2
	mul.d	$a2, $s4, $s8
	add.d	$a2, $a7, $a2
	mul.d	$a5, $s1, $s8
	ld.d	$t0, $sp, 24                    # 8-byte Folded Reload
	stx.w	$s5, $t0, $a5
	st.w	$s5, $a2, 44
	.p2align	4, , 16
.LBB0_49:                               # %._crit_edge793
                                        #   in Loop: Header=BB0_51 Depth=2
	move	$t1, $t2
.LBB0_50:                               #   in Loop: Header=BB0_51 Depth=2
	addi.d	$a4, $a4, 1
	move	$t3, $t2
	blt	$a1, $t2, .LBB0_45
.LBB0_51:                               #   Parent Loop BB0_45 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_58 Depth 3
                                        #       Child Loop BB0_55 Depth 3
                                        #       Child Loop BB0_72 Depth 3
	slli.d	$t2, $t3, 2
	ldx.w	$t2, $a0, $t2
	mul.d	$t4, $t2, $s7
	ldx.w	$t2, $a6, $t4
	mul.d	$t2, $t2, $s8
	add.d	$t2, $a7, $t2
	ld.w	$t5, $t2, 32
	addi.w	$t2, $t3, 1
	beqz	$t5, .LBB0_50
# %bb.52:                               #   in Loop: Header=BB0_51 Depth=2
	slli.d	$t5, $t1, 2
	ldx.w	$t5, $a0, $t5
	add.d	$t4, $a6, $t4
	ld.w	$t6, $t4, 16
	mul.d	$t4, $t5, $s7
	add.d	$t5, $a6, $t4
	ld.w	$t7, $t5, 12
	alsl.d	$t4, $t1, $a0, 2
	add.d	$t7, $t7, $t6
	bstrpick.d	$t8, $t7, 31, 31
	add.w	$t7, $t7, $t8
	srai.d	$t7, $t7, 1
	bge	$a3, $ra, .LBB0_56
# %bb.53:                               # %.preheader719
                                        #   in Loop: Header=BB0_51 Depth=2
	blt	$t3, $t1, .LBB0_59
# %bb.54:                               # %.lr.ph786.preheader
                                        #   in Loop: Header=BB0_51 Depth=2
	addi.d	$t8, $t1, -1
	alsl.d	$s0, $t1, $a0, 2
	move	$s1, $t1
	ld.d	$s4, $sp, 32                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_55:                               # %.lr.ph786
                                        #   Parent Loop BB0_45 Depth=1
                                        #     Parent Loop BB0_51 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$a2, $s0, 0
	mul.d	$a2, $a2, $s7
	ldx.w	$a5, $a6, $a2
	mul.d	$a5, $a5, $s8
	add.d	$a5, $a7, $a5
	ld.w	$a5, $a5, 4
	add.d	$a2, $a6, $a2
	ld.w	$a2, $a2, 4
	sub.w	$a5, $a5, $t7
	srai.d	$t0, $a5, 31
	xor	$a5, $a5, $t0
	sub.w	$a5, $a5, $t0
	slt	$t0, $a5, $s4
	mul.d	$a2, $a2, $s8
	add.d	$a2, $a7, $a2
	ld.w	$a2, $a2, 4
	maskeqz	$a5, $a5, $t0
	masknez	$s4, $s4, $t0
	or	$a5, $a5, $s4
	sub.w	$a2, $a2, $t7
	srai.d	$s4, $a2, 31
	xor	$a2, $a2, $s4
	sub.w	$a2, $a2, $s4
	slt	$s4, $a2, $a5
	masknez	$s6, $s6, $s4
	maskeqz	$ra, $s1, $s4
	or	$s6, $ra, $s6
	masknez	$s6, $s6, $t0
	maskeqz	$t0, $s1, $t0
	or	$s6, $t0, $s6
	masknez	$a5, $a5, $s4
	maskeqz	$a2, $a2, $s4
	or	$s4, $a2, $a5
	addi.d	$t8, $t8, 1
	addi.d	$s0, $s0, 4
	addi.d	$s1, $s1, 1
	blt	$t8, $t3, .LBB0_55
	b	.LBB0_59
	.p2align	4, , 16
.LBB0_56:                               # %.preheader721
                                        #   in Loop: Header=BB0_51 Depth=2
	blt	$t3, $t1, .LBB0_59
# %bb.57:                               # %.lr.ph780.preheader
                                        #   in Loop: Header=BB0_51 Depth=2
	addi.d	$t8, $t1, -1
	lu12i.w	$a2, 2441
	ori	$s4, $a2, 1664
	move	$s0, $t1
	move	$s1, $t4
	.p2align	4, , 16
.LBB0_58:                               # %.lr.ph780
                                        #   Parent Loop BB0_45 Depth=1
                                        #     Parent Loop BB0_51 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$ra, $s1, 0
	mul.d	$ra, $ra, $s7
	ldx.w	$a5, $a6, $ra
	mul.d	$a5, $a5, $s8
	ldx.w	$a5, $a7, $a5
	add.d	$ra, $a6, $ra
	ld.w	$ra, $ra, 4
	sub.w	$a5, $a5, $t7
	srai.d	$t0, $a5, 31
	xor	$a5, $a5, $t0
	sub.w	$a5, $a5, $t0
	slt	$t0, $a5, $s4
	mul.d	$ra, $ra, $s8
	ldx.w	$ra, $a7, $ra
	maskeqz	$a5, $a5, $t0
	masknez	$s4, $s4, $t0
	or	$a5, $a5, $s4
	sub.w	$s4, $ra, $t7
	srai.d	$ra, $s4, 31
	xor	$s4, $s4, $ra
	sub.w	$s4, $s4, $ra
	slt	$ra, $s4, $a5
	masknez	$s6, $s6, $ra
	maskeqz	$a2, $s0, $ra
	or	$a2, $a2, $s6
	masknez	$a2, $a2, $t0
	maskeqz	$t0, $s0, $t0
	or	$s6, $t0, $a2
	masknez	$a2, $a5, $ra
	maskeqz	$a5, $s4, $ra
	or	$s4, $a5, $a2
	addi.d	$t8, $t8, 1
	addi.d	$s1, $s1, 4
	addi.d	$s0, $s0, 1
	blt	$t8, $t3, .LBB0_58
.LBB0_59:                               # %.loopexit720
                                        #   in Loop: Header=BB0_51 Depth=2
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	blt	$t3, $t1, .LBB0_49
# %bb.60:                               # %.lr.ph792.preheader
                                        #   in Loop: Header=BB0_51 Depth=2
	addi.w	$t7, $s6, 0
	bne	$t1, $t7, .LBB0_62
# %bb.61:                               #   in Loop: Header=BB0_51 Depth=2
	st.w	$t6, $t5, 16
	b	.LBB0_63
.LBB0_62:                               #   in Loop: Header=BB0_51 Depth=2
	st.w	$s5, $t5, 44
.LBB0_63:                               #   in Loop: Header=BB0_51 Depth=2
	ld.w	$a2, $t5, 0
	ld.w	$a5, $t5, 4
	mul.d	$a2, $a2, $s8
	add.d	$t5, $a7, $a2
	st.w	$s5, $t5, 32
	mul.d	$a2, $a5, $s8
	add.d	$t6, $a7, $a2
	bge	$a3, $ra, .LBB0_65
# %bb.64:                               # %.thread694.peel
                                        #   in Loop: Header=BB0_51 Depth=2
	st.w	$s5, $t6, 36
	ori	$t8, $zero, 40
	beq	$t1, $t3, .LBB0_66
	b	.LBB0_67
.LBB0_65:                               # %.thread.peel
                                        #   in Loop: Header=BB0_51 Depth=2
	st.w	$s5, $t6, 40
	ori	$t8, $zero, 36
	bne	$t1, $t3, .LBB0_67
.LBB0_66:                               # %.sink.split
                                        #   in Loop: Header=BB0_51 Depth=2
	stx.w	$s5, $t5, $t8
	st.w	$s5, $t6, 44
.LBB0_67:                               #   in Loop: Header=BB0_51 Depth=2
	bge	$t1, $t3, .LBB0_49
# %bb.68:                               # %.lr.ph792.preheader1170
                                        #   in Loop: Header=BB0_51 Depth=2
	alsl.d	$t5, $t3, $a0, 2
	addi.d	$a2, $a0, 4
	alsl.d	$t6, $t1, $a2, 2
	addi.d	$t7, $t7, -1
	move	$t8, $t1
	b	.LBB0_72
	.p2align	4, , 16
.LBB0_69:                               #   in Loop: Header=BB0_72 Depth=3
	st.w	$s5, $s1, 32
	st.w	$s5, $s1, 40
	st.w	$s5, $t8, 36
	st.w	$s5, $t8, 44
.LBB0_70:                               #   in Loop: Header=BB0_72 Depth=3
	bge	$s0, $t3, .LBB0_49
.LBB0_71:                               # %.lr.ph792.backedge
                                        #   in Loop: Header=BB0_72 Depth=3
	addi.d	$t6, $t6, 4
	move	$t8, $s0
.LBB0_72:                               # %.lr.ph792
                                        #   Parent Loop BB0_45 Depth=1
                                        #     Parent Loop BB0_51 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$a2, $t6, 0
	mul.d	$s1, $a2, $s7
	add.d	$s0, $a6, $s1
	bne	$t7, $t8, .LBB0_74
# %bb.73:                               #   in Loop: Header=BB0_72 Depth=3
	ld.w	$a2, $t5, 0
	mul.d	$a2, $a2, $s7
	add.d	$a2, $a6, $a2
	ld.w	$a2, $a2, 16
	st.w	$a2, $s0, 16
	ld.w	$a2, $t4, 0
	mul.d	$a2, $a2, $s7
	ld.w	$a5, $t6, 0
	add.d	$a2, $a6, $a2
	ld.w	$a2, $a2, 12
	mul.d	$a5, $a5, $s7
	add.d	$a5, $a6, $a5
	st.w	$a2, $a5, 12
	ldx.w	$s1, $a6, $s1
	ld.w	$s4, $s0, 4
	bne	$a4, $t8, .LBB0_75
	b	.LBB0_48
	.p2align	4, , 16
.LBB0_74:                               #   in Loop: Header=BB0_72 Depth=3
	st.w	$s5, $s0, 44
	ldx.w	$s1, $a6, $s1
	ld.w	$s4, $s0, 4
	beq	$a4, $t8, .LBB0_48
.LBB0_75:                               #   in Loop: Header=BB0_72 Depth=3
	addi.d	$s0, $t8, 1
	blt	$t8, $t1, .LBB0_70
# %bb.76:                               #   in Loop: Header=BB0_72 Depth=3
	bge	$s0, $t3, .LBB0_70
# %bb.77:                               #   in Loop: Header=BB0_72 Depth=3
	mul.d	$a2, $s1, $s8
	add.d	$s1, $a7, $a2
	mul.d	$a2, $s4, $s8
	add.d	$t8, $a7, $a2
	blt	$a3, $ra, .LBB0_69
# %bb.78:                               #   in Loop: Header=BB0_72 Depth=3
	ori	$a2, $zero, 1
	lu32i.d	$a2, 1
	st.d	$a2, $s1, 32
	st.d	$a2, $t8, 40
	blt	$s0, $t3, .LBB0_71
	b	.LBB0_49
.LBB0_79:                               # %.preheader718
	ld.d	$a3, $sp, 8                     # 8-byte Folded Reload
	ld.w	$a0, $a3, 0
	blez	$a0, .LBB0_82
# %bb.80:                               # %.lr.ph796
	ld.d	$a1, $s3, 0
	move	$a0, $zero
	addi.d	$a1, $a1, 100
	.p2align	4, , 16
.LBB0_81:                               # =>This Inner Loop Header: Depth=1
	st.w	$zero, $a1, 0
	ld.w	$a2, $a3, 0
	addi.d	$a0, $a0, 1
	addi.d	$a1, $a1, 52
	blt	$a0, $a2, .LBB0_81
.LBB0_82:                               # %.preheader717
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ld.w	$a6, $a0, 0
	blez	$a6, .LBB0_95
# %bb.83:                               # %.lr.ph809
	pcalau12i	$a0, %got_pc_hi20(xNodeArray)
	ld.d	$a0, $a0, %got_pc_lo12(xNodeArray)
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 1
	ori	$a2, $zero, 56
	ori	$a3, $zero, 52
	ori	$a5, $zero, 1
	b	.LBB0_86
	.p2align	4, , 16
.LBB0_84:                               # %._crit_edge806.loopexit
                                        #   in Loop: Header=BB0_86 Depth=1
	ld.d	$a5, $sp, 88                    # 8-byte Folded Reload
	ld.w	$a6, $a5, 0
.LBB0_85:                               # %._crit_edge806
                                        #   in Loop: Header=BB0_86 Depth=1
	addi.d	$a5, $a4, 1
	bge	$a4, $a6, .LBB0_95
.LBB0_86:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_89 Depth 2
                                        #       Child Loop BB0_93 Depth 3
	move	$a4, $a5
	slli.d	$a5, $a5, 3
	ldx.d	$a5, $a0, $a5
	beqz	$a5, .LBB0_85
# %bb.87:                               # %.lr.ph805
                                        #   in Loop: Header=BB0_86 Depth=1
	ld.d	$a6, $s2, 0
	b	.LBB0_89
	.p2align	4, , 16
.LBB0_88:                               # %.loopexit716
                                        #   in Loop: Header=BB0_89 Depth=2
	ld.d	$a5, $a5, 24
	beqz	$a5, .LBB0_84
.LBB0_89:                               #   Parent Loop BB0_86 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_93 Depth 3
	ld.w	$a7, $a5, 0
	beq	$a7, $a1, .LBB0_88
# %bb.90:                               #   in Loop: Header=BB0_89 Depth=2
	ld.d	$t0, $a5, 8
	ld.w	$t1, $t0, 0
	blez	$t1, .LBB0_88
# %bb.91:                               # %.lr.ph800
                                        #   in Loop: Header=BB0_89 Depth=2
	ld.d	$a7, $s3, 0
	addi.d	$t1, $t1, 1
	bstrpick.d	$t1, $t1, 31, 0
	addi.d	$t0, $t0, 4
	addi.d	$t1, $t1, -1
	b	.LBB0_93
	.p2align	4, , 16
.LBB0_92:                               #   in Loop: Header=BB0_93 Depth=3
	addi.d	$t1, $t1, -1
	addi.d	$t0, $t0, 4
	beqz	$t1, .LBB0_88
.LBB0_93:                               #   Parent Loop BB0_86 Depth=1
                                        #     Parent Loop BB0_89 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$t2, $t0, 0
	mul.d	$t2, $t2, $a2
	add.d	$t2, $a6, $t2
	ld.w	$t3, $t2, 44
	beq	$t3, $a1, .LBB0_92
# %bb.94:                               #   in Loop: Header=BB0_93 Depth=3
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
	b	.LBB0_92
.LBB0_95:                               # %.preheader715
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	ld.w	$t2, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(yNodeArray)
	ld.d	$a0, $a0, %got_pc_lo12(yNodeArray)
	ld.d	$a1, $a0, 0
	blez	$t2, .LBB0_109
# %bb.96:                               # %.lr.ph822.preheader
	ori	$a2, $zero, 1
	ori	$a3, $zero, 56
	ori	$a4, $zero, 52
	ori	$a6, $zero, 1
	b	.LBB0_99
	.p2align	4, , 16
.LBB0_97:                               # %._crit_edge819.loopexit
                                        #   in Loop: Header=BB0_99 Depth=1
	ld.d	$a6, $sp, 64                    # 8-byte Folded Reload
	ld.w	$t2, $a6, 0
.LBB0_98:                               # %._crit_edge819
                                        #   in Loop: Header=BB0_99 Depth=1
	addi.d	$a6, $a5, 1
	bge	$a5, $t2, .LBB0_108
.LBB0_99:                               # %.lr.ph822
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_102 Depth 2
                                        #       Child Loop BB0_106 Depth 3
	move	$a5, $a6
	slli.d	$a6, $a6, 3
	ldx.d	$a6, $a1, $a6
	beqz	$a6, .LBB0_98
# %bb.100:                              # %.lr.ph818
                                        #   in Loop: Header=BB0_99 Depth=1
	ld.d	$a7, $s2, 0
	b	.LBB0_102
	.p2align	4, , 16
.LBB0_101:                              # %.loopexit714
                                        #   in Loop: Header=BB0_102 Depth=2
	ld.d	$a6, $a6, 24
	beqz	$a6, .LBB0_97
.LBB0_102:                              #   Parent Loop BB0_99 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_106 Depth 3
	ld.w	$t0, $a6, 0
	beq	$t0, $a2, .LBB0_101
# %bb.103:                              #   in Loop: Header=BB0_102 Depth=2
	ld.d	$t1, $a6, 8
	ld.w	$t2, $t1, 0
	blez	$t2, .LBB0_101
# %bb.104:                              # %.lr.ph813
                                        #   in Loop: Header=BB0_102 Depth=2
	ld.d	$t0, $s3, 0
	addi.d	$t2, $t2, 1
	bstrpick.d	$t2, $t2, 31, 0
	addi.d	$t1, $t1, 4
	addi.d	$t2, $t2, -1
	b	.LBB0_106
	.p2align	4, , 16
.LBB0_105:                              #   in Loop: Header=BB0_106 Depth=3
	addi.d	$t2, $t2, -1
	addi.d	$t1, $t1, 4
	beqz	$t2, .LBB0_101
.LBB0_106:                              #   Parent Loop BB0_99 Depth=1
                                        #     Parent Loop BB0_102 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$t3, $t1, 0
	mul.d	$t3, $t3, $a3
	add.d	$t3, $a7, $t3
	ld.w	$t4, $t3, 44
	beq	$t4, $a2, .LBB0_105
# %bb.107:                              #   in Loop: Header=BB0_106 Depth=3
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
	b	.LBB0_105
.LBB0_108:                              # %.preheader713.loopexit
	ld.d	$a1, $a0, 0
.LBB0_109:                              # %.preheader713
	pcalau12i	$a2, %got_pc_hi20(xNodeArray)
	ld.d	$a2, $a2, %got_pc_lo12(xNodeArray)
	ld.d	$a3, $a2, 0
	ori	$a4, $zero, 1
	ori	$a5, $zero, 56
	ori	$a6, $zero, 52
	b	.LBB0_111
	.p2align	4, , 16
.LBB0_110:                              # %.loopexit711
                                        #   in Loop: Header=BB0_111 Depth=1
	beqz	$a7, .LBB0_158
.LBB0_111:                              # %.preheader712
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_115 Depth 2
                                        #       Child Loop BB0_118 Depth 3
                                        #         Child Loop BB0_124 Depth 4
                                        #           Child Loop BB0_129 Depth 5
                                        #     Child Loop BB0_139 Depth 2
                                        #       Child Loop BB0_142 Depth 3
                                        #         Child Loop BB0_148 Depth 4
                                        #           Child Loop BB0_153 Depth 5
	ld.d	$a7, $sp, 88                    # 8-byte Folded Reload
	ld.w	$t3, $a7, 0
	blez	$t3, .LBB0_135
# %bb.112:                              # %.lr.ph840.preheader
                                        #   in Loop: Header=BB0_111 Depth=1
	move	$a7, $zero
	ori	$t1, $zero, 1
	b	.LBB0_115
	.p2align	4, , 16
.LBB0_113:                              # %._crit_edge835.loopexit
                                        #   in Loop: Header=BB0_115 Depth=2
	ld.d	$t1, $sp, 88                    # 8-byte Folded Reload
	ld.w	$t3, $t1, 0
.LBB0_114:                              # %._crit_edge835
                                        #   in Loop: Header=BB0_115 Depth=2
	addi.d	$t1, $t0, 1
	bge	$t0, $t3, .LBB0_134
.LBB0_115:                              # %.lr.ph840
                                        #   Parent Loop BB0_111 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_118 Depth 3
                                        #         Child Loop BB0_124 Depth 4
                                        #           Child Loop BB0_129 Depth 5
	move	$t0, $t1
	slli.d	$t1, $t1, 3
	ldx.d	$t1, $a3, $t1
	beqz	$t1, .LBB0_114
# %bb.116:                              # %.lr.ph834
                                        #   in Loop: Header=BB0_115 Depth=2
	ld.d	$t2, $s2, 0
	b	.LBB0_118
	.p2align	4, , 16
.LBB0_117:                              # %.loopexit709
                                        #   in Loop: Header=BB0_118 Depth=3
	ld.d	$t1, $t1, 24
	beqz	$t1, .LBB0_113
.LBB0_118:                              #   Parent Loop BB0_111 Depth=1
                                        #     Parent Loop BB0_115 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_124 Depth 4
                                        #           Child Loop BB0_129 Depth 5
	ld.w	$t3, $t1, 0
	beq	$t3, $a4, .LBB0_117
# %bb.119:                              #   in Loop: Header=BB0_118 Depth=3
	ld.d	$t3, $t1, 8
	ld.w	$t4, $t3, 0
	blez	$t4, .LBB0_117
# %bb.120:                              # %.lr.ph827
                                        #   in Loop: Header=BB0_118 Depth=3
	move	$t5, $zero
	ld.d	$t6, $s3, 0
	addi.d	$t7, $t4, 1
	bstrpick.d	$t7, $t7, 31, 0
	addi.d	$t8, $t3, 8
	ori	$fp, $zero, 1
	ori	$s0, $zero, 2
	move	$s1, $t3
	b	.LBB0_124
.LBB0_121:                              # %.critedge
                                        #   in Loop: Header=BB0_124 Depth=4
	ld.w	$a7, $a7, 0
	mul.d	$a7, $a7, $a5
	add.d	$a7, $t2, $a7
	ld.w	$s4, $a7, 16
	ld.w	$a7, $a7, 12
	ld.w	$s5, $s8, 12
	sub.d	$a7, $a7, $s4
	add.d	$a7, $a7, $s5
	st.w	$a7, $s8, 12
.LBB0_122:                              #   in Loop: Header=BB0_124 Depth=4
	ori	$a7, $zero, 1
.LBB0_123:                              #   in Loop: Header=BB0_124 Depth=4
	addi.d	$fp, $fp, 1
	addi.d	$s1, $s1, 4
	addi.d	$t5, $t5, 1
	addi.d	$t8, $t8, 4
	addi.w	$s0, $s0, 1
	beq	$fp, $t7, .LBB0_117
.LBB0_124:                              #   Parent Loop BB0_111 Depth=1
                                        #     Parent Loop BB0_115 Depth=2
                                        #       Parent Loop BB0_118 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB0_129 Depth 5
	slli.d	$s4, $fp, 2
	ldx.w	$s4, $t3, $s4
	mul.d	$s4, $s4, $a5
	add.d	$s4, $t2, $s4
	ld.w	$s5, $s4, 44
	beq	$s5, $a4, .LBB0_123
# %bb.125:                              #   in Loop: Header=BB0_124 Depth=4
	ld.w	$s5, $s4, 4
	ld.w	$s6, $s4, 0
	mul.d	$s5, $s5, $a6
	add.d	$s5, $t6, $s5
	ld.w	$s7, $s5, 48
	mul.d	$s6, $s6, $a6
	beq	$s7, $a4, .LBB0_127
# %bb.126:                              #   in Loop: Header=BB0_124 Depth=4
	add.d	$s8, $t6, $s6
	ld.w	$s8, $s8, 48
	bne	$s8, $a4, .LBB0_123
.LBB0_127:                              # %._crit_edge992
                                        #   in Loop: Header=BB0_124 Depth=4
	addi.d	$a7, $s7, -1
	st.w	$a7, $s5, 48
	add.d	$s5, $t6, $s6
	ld.w	$s6, $s5, 48
	alsl.d	$a7, $fp, $t3, 2
	st.w	$a4, $s4, 44
	addi.d	$s4, $s6, -1
	st.w	$s4, $s5, 48
	move	$s4, $s0
	move	$s5, $t8
	move	$s6, $t5
	move	$s7, $s1
	b	.LBB0_129
	.p2align	4, , 16
.LBB0_128:                              #   in Loop: Header=BB0_129 Depth=5
	addi.d	$s7, $s7, -4
	addi.d	$s6, $s6, -1
	addi.d	$s5, $s5, 4
	addi.w	$s4, $s4, 1
.LBB0_129:                              #   Parent Loop BB0_111 Depth=1
                                        #     Parent Loop BB0_115 Depth=2
                                        #       Parent Loop BB0_118 Depth=3
                                        #         Parent Loop BB0_124 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	blt	$t4, $s4, .LBB0_131
# %bb.130:                              #   in Loop: Header=BB0_129 Depth=5
	ld.w	$s8, $s5, 0
	mul.d	$s8, $s8, $a5
	add.d	$s8, $t2, $s8
	ld.w	$ra, $s8, 44
	beqz	$ra, .LBB0_121
.LBB0_131:                              #   in Loop: Header=BB0_129 Depth=5
	blez	$s6, .LBB0_128
# %bb.132:                              #   in Loop: Header=BB0_129 Depth=5
	ld.w	$s8, $s7, 0
	mul.d	$s8, $s8, $a5
	add.d	$s8, $t2, $s8
	ld.w	$ra, $s8, 44
	bnez	$ra, .LBB0_128
# %bb.133:                              # %.critedge688
                                        #   in Loop: Header=BB0_124 Depth=4
	ld.w	$a7, $a7, 0
	mul.d	$a7, $a7, $a5
	add.d	$a7, $t2, $a7
	ld.w	$s4, $a7, 16
	ld.w	$a7, $a7, 12
	ld.w	$s5, $s8, 16
	sub.d	$a7, $s4, $a7
	add.d	$a7, $a7, $s5
	st.w	$a7, $s8, 16
	b	.LBB0_122
	.p2align	4, , 16
.LBB0_134:                              # %.preheader710.loopexit
                                        #   in Loop: Header=BB0_111 Depth=1
	ld.d	$t0, $sp, 64                    # 8-byte Folded Reload
	ld.w	$t2, $t0, 0
	bgtz	$t2, .LBB0_136
	b	.LBB0_110
	.p2align	4, , 16
.LBB0_135:                              #   in Loop: Header=BB0_111 Depth=1
	move	$a7, $zero
	blez	$t2, .LBB0_110
.LBB0_136:                              # %.lr.ph859.preheader
                                        #   in Loop: Header=BB0_111 Depth=1
	ori	$t1, $zero, 1
	b	.LBB0_139
	.p2align	4, , 16
.LBB0_137:                              # %._crit_edge854.loopexit
                                        #   in Loop: Header=BB0_139 Depth=2
	ld.d	$t1, $sp, 64                    # 8-byte Folded Reload
	ld.w	$t2, $t1, 0
.LBB0_138:                              # %._crit_edge854
                                        #   in Loop: Header=BB0_139 Depth=2
	addi.d	$t1, $t0, 1
	bge	$t0, $t2, .LBB0_110
.LBB0_139:                              # %.lr.ph859
                                        #   Parent Loop BB0_111 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_142 Depth 3
                                        #         Child Loop BB0_148 Depth 4
                                        #           Child Loop BB0_153 Depth 5
	move	$t0, $t1
	slli.d	$t1, $t1, 3
	ldx.d	$t1, $a1, $t1
	beqz	$t1, .LBB0_138
# %bb.140:                              # %.lr.ph853
                                        #   in Loop: Header=BB0_139 Depth=2
	ld.d	$t2, $s2, 0
	b	.LBB0_142
	.p2align	4, , 16
.LBB0_141:                              # %.loopexit708
                                        #   in Loop: Header=BB0_142 Depth=3
	ld.d	$t1, $t1, 24
	beqz	$t1, .LBB0_137
.LBB0_142:                              #   Parent Loop BB0_111 Depth=1
                                        #     Parent Loop BB0_139 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_148 Depth 4
                                        #           Child Loop BB0_153 Depth 5
	ld.w	$t3, $t1, 0
	beq	$t3, $a4, .LBB0_141
# %bb.143:                              #   in Loop: Header=BB0_142 Depth=3
	ld.d	$t3, $t1, 8
	ld.w	$t4, $t3, 0
	blez	$t4, .LBB0_141
# %bb.144:                              # %.lr.ph846
                                        #   in Loop: Header=BB0_142 Depth=3
	move	$t5, $zero
	ld.d	$t6, $s3, 0
	addi.d	$t7, $t4, 1
	bstrpick.d	$t7, $t7, 31, 0
	addi.d	$t8, $t3, 8
	ori	$fp, $zero, 1
	ori	$s0, $zero, 2
	move	$s1, $t3
	b	.LBB0_148
.LBB0_145:                              # %.critedge690
                                        #   in Loop: Header=BB0_148 Depth=4
	ld.w	$a7, $a7, 0
	mul.d	$a7, $a7, $a5
	add.d	$a7, $t2, $a7
	ld.w	$s4, $a7, 16
	ld.w	$a7, $a7, 12
	ld.w	$s5, $s8, 12
	sub.d	$a7, $a7, $s4
	add.d	$a7, $a7, $s5
	st.w	$a7, $s8, 12
.LBB0_146:                              #   in Loop: Header=BB0_148 Depth=4
	ori	$a7, $zero, 1
.LBB0_147:                              #   in Loop: Header=BB0_148 Depth=4
	addi.d	$fp, $fp, 1
	addi.d	$s1, $s1, 4
	addi.d	$t5, $t5, 1
	addi.d	$t8, $t8, 4
	addi.w	$s0, $s0, 1
	beq	$fp, $t7, .LBB0_141
.LBB0_148:                              #   Parent Loop BB0_111 Depth=1
                                        #     Parent Loop BB0_139 Depth=2
                                        #       Parent Loop BB0_142 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB0_153 Depth 5
	slli.d	$s4, $fp, 2
	ldx.w	$s4, $t3, $s4
	mul.d	$s4, $s4, $a5
	add.d	$s4, $t2, $s4
	ld.w	$s5, $s4, 44
	beq	$s5, $a4, .LBB0_147
# %bb.149:                              #   in Loop: Header=BB0_148 Depth=4
	ld.w	$s5, $s4, 4
	ld.w	$s6, $s4, 0
	mul.d	$s5, $s5, $a6
	add.d	$s5, $t6, $s5
	ld.w	$s7, $s5, 48
	mul.d	$s6, $s6, $a6
	beq	$s7, $a4, .LBB0_151
# %bb.150:                              #   in Loop: Header=BB0_148 Depth=4
	add.d	$s8, $t6, $s6
	ld.w	$s8, $s8, 48
	bne	$s8, $a4, .LBB0_147
.LBB0_151:                              # %._crit_edge993
                                        #   in Loop: Header=BB0_148 Depth=4
	addi.d	$a7, $s7, -1
	st.w	$a7, $s5, 48
	add.d	$s5, $t6, $s6
	ld.w	$s6, $s5, 48
	alsl.d	$a7, $fp, $t3, 2
	st.w	$a4, $s4, 44
	addi.d	$s4, $s6, -1
	st.w	$s4, $s5, 48
	move	$s4, $s0
	move	$s5, $t8
	move	$s6, $t5
	move	$s7, $s1
	b	.LBB0_153
	.p2align	4, , 16
.LBB0_152:                              #   in Loop: Header=BB0_153 Depth=5
	addi.d	$s7, $s7, -4
	addi.d	$s6, $s6, -1
	addi.d	$s5, $s5, 4
	addi.w	$s4, $s4, 1
.LBB0_153:                              #   Parent Loop BB0_111 Depth=1
                                        #     Parent Loop BB0_139 Depth=2
                                        #       Parent Loop BB0_142 Depth=3
                                        #         Parent Loop BB0_148 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	blt	$t4, $s4, .LBB0_155
# %bb.154:                              #   in Loop: Header=BB0_153 Depth=5
	ld.w	$s8, $s5, 0
	mul.d	$s8, $s8, $a5
	add.d	$s8, $t2, $s8
	ld.w	$ra, $s8, 44
	beqz	$ra, .LBB0_145
.LBB0_155:                              #   in Loop: Header=BB0_153 Depth=5
	blez	$s6, .LBB0_152
# %bb.156:                              #   in Loop: Header=BB0_153 Depth=5
	ld.w	$s8, $s7, 0
	mul.d	$s8, $s8, $a5
	add.d	$s8, $t2, $s8
	ld.w	$ra, $s8, 44
	bnez	$ra, .LBB0_152
# %bb.157:                              # %.critedge692
                                        #   in Loop: Header=BB0_148 Depth=4
	ld.w	$a7, $a7, 0
	mul.d	$a7, $a7, $a5
	add.d	$a7, $t2, $a7
	ld.w	$s4, $a7, 16
	ld.w	$a7, $a7, 12
	ld.w	$s5, $s8, 16
	sub.d	$a7, $s4, $a7
	add.d	$a7, $a7, $s5
	st.w	$a7, $s8, 16
	b	.LBB0_146
.LBB0_158:                              # %.preheader707
	ld.d	$a1, $a2, 0
	ld.d	$a0, $a0, 0
	pcalau12i	$a2, %got_pc_hi20(edgeList)
	ld.d	$a2, $a2, %got_pc_lo12(edgeList)
	move	$a6, $zero
	ori	$a3, $zero, 1
	ori	$a4, $zero, 2
	ori	$a5, $zero, 56
	ori	$a7, $zero, 52
	b	.LBB0_160
	.p2align	4, , 16
.LBB0_159:                              # %._crit_edge887
                                        #   in Loop: Header=BB0_160 Depth=1
	andi	$t0, $a6, 1
	ori	$a6, $zero, 1
	bnez	$t0, .LBB0_243
.LBB0_160:                              # %.preheader706
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_164 Depth 2
                                        #       Child Loop BB0_168 Depth 3
                                        #         Child Loop BB0_172 Depth 4
                                        #         Child Loop BB0_188 Depth 4
                                        #     Child Loop BB0_206 Depth 2
                                        #       Child Loop BB0_210 Depth 3
                                        #         Child Loop BB0_214 Depth 4
                                        #         Child Loop BB0_230 Depth 4
	ld.d	$t0, $sp, 88                    # 8-byte Folded Reload
	ld.w	$t3, $t0, 0
	blez	$t3, .LBB0_202
# %bb.161:                              # %.lr.ph873.preheader
                                        #   in Loop: Header=BB0_160 Depth=1
	ori	$t1, $zero, 1
	b	.LBB0_164
	.p2align	4, , 16
.LBB0_162:                              # %._crit_edge870.loopexit
                                        #   in Loop: Header=BB0_164 Depth=2
	ld.d	$t1, $sp, 88                    # 8-byte Folded Reload
	ld.w	$t3, $t1, 0
.LBB0_163:                              # %._crit_edge870
                                        #   in Loop: Header=BB0_164 Depth=2
	addi.d	$t1, $t0, 1
	bge	$t0, $t3, .LBB0_201
.LBB0_164:                              # %.lr.ph873
                                        #   Parent Loop BB0_160 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_168 Depth 3
                                        #         Child Loop BB0_172 Depth 4
                                        #         Child Loop BB0_188 Depth 4
	move	$t0, $t1
	slli.d	$t1, $t1, 3
	ldx.d	$t1, $a1, $t1
	beqz	$t1, .LBB0_163
# %bb.165:                              # %.lr.ph869
                                        #   in Loop: Header=BB0_164 Depth=2
	ld.d	$t2, $s2, 0
	ld.d	$t3, $a2, 0
	ld.d	$t4, $s3, 0
	b	.LBB0_168
.LBB0_166:                              #   in Loop: Header=BB0_168 Depth=3
	st.w	$fp, $t5, 4
	st.w	$a3, $t5, 12
	.p2align	4, , 16
.LBB0_167:                              # %.loopexit704
                                        #   in Loop: Header=BB0_168 Depth=3
	ld.d	$t1, $t1, 24
	beqz	$t1, .LBB0_162
.LBB0_168:                              #   Parent Loop BB0_160 Depth=1
                                        #     Parent Loop BB0_164 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_172 Depth 4
                                        #         Child Loop BB0_188 Depth 4
	ld.w	$t5, $t1, 0
	beq	$t5, $a3, .LBB0_167
# %bb.169:                              #   in Loop: Header=BB0_168 Depth=3
	ld.d	$t5, $t1, 8
	ld.w	$t6, $t5, 0
	blt	$t6, $a4, .LBB0_167
# %bb.170:                              #   in Loop: Header=BB0_168 Depth=3
	ld.w	$t7, $t5, 4
	mul.d	$t7, $t7, $a5
	add.d	$t7, $t2, $t7
	ld.w	$t8, $t7, 44
	bne	$t8, $a3, .LBB0_186
# %bb.171:                              # %.lr.ph864.preheader
                                        #   in Loop: Header=BB0_168 Depth=3
	ld.w	$t8, $t7, 32
	ld.w	$s0, $t7, 4
	ld.w	$s4, $t7, 0
	slli.d	$t7, $t8, 5
	alsl.d	$t7, $t8, $t7, 3
	add.d	$t8, $t3, $t7
	ld.w	$t7, $t8, 4
	ld.w	$fp, $t8, 8
	mul.d	$t8, $s0, $a7
	add.d	$s0, $t4, $t8
	ld.w	$s1, $s0, 4
	mul.d	$t8, $s4, $a7
	add.d	$t8, $t4, $t8
	ld.w	$t8, $t8, 4
	addi.d	$s4, $t6, 1
	bstrpick.d	$s5, $s4, 31, 0
	addi.d	$s4, $t5, 8
	addi.d	$s5, $s5, -2
	.p2align	4, , 16
.LBB0_172:                              # %.lr.ph864
                                        #   Parent Loop BB0_160 Depth=1
                                        #     Parent Loop BB0_164 Depth=2
                                        #       Parent Loop BB0_168 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.w	$s6, $s4, 0
	mul.d	$s6, $s6, $a5
	add.d	$s7, $t2, $s6
	ld.w	$s6, $s7, 44
	beqz	$s6, .LBB0_174
# %bb.173:                              #   in Loop: Header=BB0_172 Depth=4
	addi.d	$s5, $s5, -1
	addi.d	$s4, $s4, 4
	bnez	$s5, .LBB0_172
	b	.LBB0_186
.LBB0_174:                              #   in Loop: Header=BB0_168 Depth=3
	ld.w	$s4, $s7, 4
	mul.d	$s4, $s4, $a7
	add.d	$s5, $t4, $s4
	ld.w	$s6, $s5, 4
	ld.w	$s4, $s7, 0
	bge	$s6, $s1, .LBB0_179
# %bb.175:                              #   in Loop: Header=BB0_168 Depth=3
	ld.w	$s1, $s0, 28
	bge	$s1, $fp, .LBB0_177
# %bb.176:                              #   in Loop: Header=BB0_168 Depth=3
	ld.w	$s1, $s0, 12
	beqz	$s1, .LBB0_184
.LBB0_177:                              #   in Loop: Header=BB0_168 Depth=3
	bge	$s6, $fp, .LBB0_179
# %bb.178:                              #   in Loop: Header=BB0_168 Depth=3
	st.w	$fp, $s5, 4
.LBB0_179:                              #   in Loop: Header=BB0_168 Depth=3
	mul.d	$fp, $s4, $a7
	add.d	$fp, $t4, $fp
	ld.w	$s0, $fp, 4
	bge	$t8, $s0, .LBB0_186
.LBB0_180:                              #   in Loop: Header=BB0_168 Depth=3
	ld.w	$t8, $t5, 4
	mul.d	$t8, $t8, $a5
	ldx.w	$t8, $t2, $t8
	mul.d	$t8, $t8, $a7
	add.d	$t8, $t4, $t8
	ld.w	$s1, $t8, 24
	bge	$t7, $s1, .LBB0_182
# %bb.181:                              #   in Loop: Header=BB0_168 Depth=3
	ld.w	$s1, $t8, 12
	beqz	$s1, .LBB0_185
.LBB0_182:                              #   in Loop: Header=BB0_168 Depth=3
	bge	$t7, $s0, .LBB0_186
# %bb.183:                              #   in Loop: Header=BB0_168 Depth=3
	st.w	$t7, $fp, 4
	b	.LBB0_186
.LBB0_184:                              #   in Loop: Header=BB0_168 Depth=3
	st.w	$s6, $s0, 4
	st.w	$a3, $s0, 12
	mul.d	$fp, $s4, $a7
	add.d	$fp, $t4, $fp
	ld.w	$s0, $fp, 4
	blt	$t8, $s0, .LBB0_180
	b	.LBB0_186
.LBB0_185:                              #   in Loop: Header=BB0_168 Depth=3
	st.w	$s0, $t8, 4
	st.w	$a3, $t8, 12
	.p2align	4, , 16
.LBB0_186:                              # %.loopexit705
                                        #   in Loop: Header=BB0_168 Depth=3
	slli.d	$t7, $t6, 2
	ldx.w	$t7, $t5, $t7
	mul.d	$t7, $t7, $a5
	add.d	$t7, $t2, $t7
	ld.w	$t8, $t7, 44
	bne	$t8, $a3, .LBB0_167
# %bb.187:                              #   in Loop: Header=BB0_168 Depth=3
	ld.w	$t8, $t7, 36
	ld.w	$s0, $t7, 4
	ld.w	$s4, $t7, 0
	slli.d	$t7, $t8, 5
	alsl.d	$t7, $t8, $t7, 3
	add.d	$t8, $t3, $t7
	ld.w	$t7, $t8, 4
	ld.w	$fp, $t8, 8
	mul.d	$t8, $s0, $a7
	add.d	$s0, $t4, $t8
	ld.w	$s1, $s0, 4
	mul.d	$t8, $s4, $a7
	add.d	$t8, $t4, $t8
	ld.w	$t8, $t8, 4
	alsl.d	$t5, $t6, $t5, 2
	addi.d	$t6, $t6, 1
	addi.d	$s4, $t5, -4
	.p2align	4, , 16
.LBB0_188:                              #   Parent Loop BB0_160 Depth=1
                                        #     Parent Loop BB0_164 Depth=2
                                        #       Parent Loop BB0_168 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	addi.w	$t6, $t6, -1
	blt	$t6, $a4, .LBB0_167
# %bb.189:                              #   in Loop: Header=BB0_188 Depth=4
	ld.w	$s5, $s4, 0
	mul.d	$s5, $s5, $a5
	add.d	$s6, $t2, $s5
	ld.w	$s5, $s6, 44
	addi.d	$s4, $s4, -4
	bnez	$s5, .LBB0_188
# %bb.190:                              #   in Loop: Header=BB0_168 Depth=3
	ld.w	$t6, $s6, 4
	mul.d	$t6, $t6, $a7
	add.d	$s4, $t4, $t6
	ld.w	$s5, $s4, 4
	ld.w	$t6, $s6, 0
	bge	$s5, $s1, .LBB0_195
# %bb.191:                              #   in Loop: Header=BB0_168 Depth=3
	ld.w	$s1, $s0, 28
	bge	$s1, $fp, .LBB0_193
# %bb.192:                              #   in Loop: Header=BB0_168 Depth=3
	ld.w	$s1, $s0, 12
	beqz	$s1, .LBB0_200
.LBB0_193:                              #   in Loop: Header=BB0_168 Depth=3
	bge	$s5, $fp, .LBB0_195
# %bb.194:                              #   in Loop: Header=BB0_168 Depth=3
	st.w	$fp, $s4, 4
.LBB0_195:                              #   in Loop: Header=BB0_168 Depth=3
	mul.d	$t6, $t6, $a7
	add.d	$t6, $t4, $t6
	ld.w	$fp, $t6, 4
	bge	$t8, $fp, .LBB0_167
.LBB0_196:                              #   in Loop: Header=BB0_168 Depth=3
	ld.w	$t5, $t5, 0
	mul.d	$t5, $t5, $a5
	ldx.w	$t5, $t2, $t5
	mul.d	$t5, $t5, $a7
	add.d	$t5, $t4, $t5
	ld.w	$t8, $t5, 24
	bge	$t7, $t8, .LBB0_198
# %bb.197:                              #   in Loop: Header=BB0_168 Depth=3
	ld.w	$t8, $t5, 12
	beqz	$t8, .LBB0_166
.LBB0_198:                              #   in Loop: Header=BB0_168 Depth=3
	bge	$t7, $fp, .LBB0_167
# %bb.199:                              #   in Loop: Header=BB0_168 Depth=3
	st.w	$t7, $t6, 4
	b	.LBB0_167
.LBB0_200:                              #   in Loop: Header=BB0_168 Depth=3
	st.w	$s5, $s0, 4
	st.w	$a3, $s0, 12
	mul.d	$t6, $t6, $a7
	add.d	$t6, $t4, $t6
	ld.w	$fp, $t6, 4
	bge	$t8, $fp, .LBB0_167
	b	.LBB0_196
	.p2align	4, , 16
.LBB0_201:                              # %.preheader.loopexit
                                        #   in Loop: Header=BB0_160 Depth=1
	ld.d	$t0, $sp, 64                    # 8-byte Folded Reload
	ld.w	$t2, $t0, 0
.LBB0_202:                              # %.preheader
                                        #   in Loop: Header=BB0_160 Depth=1
	blez	$t2, .LBB0_159
# %bb.203:                              # %.lr.ph886.preheader
                                        #   in Loop: Header=BB0_160 Depth=1
	ori	$t1, $zero, 1
	b	.LBB0_206
	.p2align	4, , 16
.LBB0_204:                              # %._crit_edge883.loopexit
                                        #   in Loop: Header=BB0_206 Depth=2
	ld.d	$t1, $sp, 64                    # 8-byte Folded Reload
	ld.w	$t2, $t1, 0
.LBB0_205:                              # %._crit_edge883
                                        #   in Loop: Header=BB0_206 Depth=2
	addi.d	$t1, $t0, 1
	bge	$t0, $t2, .LBB0_159
.LBB0_206:                              # %.lr.ph886
                                        #   Parent Loop BB0_160 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_210 Depth 3
                                        #         Child Loop BB0_214 Depth 4
                                        #         Child Loop BB0_230 Depth 4
	move	$t0, $t1
	slli.d	$t1, $t1, 3
	ldx.d	$t1, $a0, $t1
	beqz	$t1, .LBB0_205
# %bb.207:                              # %.lr.ph882
                                        #   in Loop: Header=BB0_206 Depth=2
	ld.d	$t2, $s2, 0
	ld.d	$t3, $a2, 0
	ld.d	$t4, $s3, 0
	b	.LBB0_210
.LBB0_208:                              #   in Loop: Header=BB0_210 Depth=3
	st.w	$fp, $t7, 0
	st.w	$a3, $t7, 8
	.p2align	4, , 16
.LBB0_209:                              # %.loopexit
                                        #   in Loop: Header=BB0_210 Depth=3
	ld.d	$t1, $t1, 24
	beqz	$t1, .LBB0_204
.LBB0_210:                              #   Parent Loop BB0_160 Depth=1
                                        #     Parent Loop BB0_206 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_214 Depth 4
                                        #         Child Loop BB0_230 Depth 4
	ld.w	$t5, $t1, 0
	beq	$t5, $a3, .LBB0_209
# %bb.211:                              #   in Loop: Header=BB0_210 Depth=3
	ld.d	$t6, $t1, 8
	ld.w	$t5, $t6, 0
	blt	$t5, $a4, .LBB0_209
# %bb.212:                              #   in Loop: Header=BB0_210 Depth=3
	ld.w	$t7, $t6, 4
	mul.d	$t7, $t7, $a5
	add.d	$t7, $t2, $t7
	ld.w	$t8, $t7, 44
	bne	$t8, $a3, .LBB0_228
# %bb.213:                              # %.lr.ph877.preheader
                                        #   in Loop: Header=BB0_210 Depth=3
	ld.w	$t8, $t7, 32
	ld.w	$s0, $t7, 4
	ld.w	$s4, $t7, 0
	slli.d	$t7, $t8, 5
	alsl.d	$t7, $t8, $t7, 3
	add.d	$t8, $t3, $t7
	ld.w	$t7, $t8, 4
	ld.w	$fp, $t8, 8
	mul.d	$t8, $s0, $a7
	add.d	$s0, $t4, $t8
	ldx.w	$s1, $t4, $t8
	mul.d	$t8, $s4, $a7
	ldx.w	$t8, $t4, $t8
	addi.d	$s4, $t5, 1
	bstrpick.d	$s5, $s4, 31, 0
	addi.d	$s4, $t6, 8
	addi.d	$s5, $s5, -2
	.p2align	4, , 16
.LBB0_214:                              # %.lr.ph877
                                        #   Parent Loop BB0_160 Depth=1
                                        #     Parent Loop BB0_206 Depth=2
                                        #       Parent Loop BB0_210 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.w	$s6, $s4, 0
	mul.d	$s6, $s6, $a5
	add.d	$s7, $t2, $s6
	ld.w	$s6, $s7, 44
	beqz	$s6, .LBB0_216
# %bb.215:                              #   in Loop: Header=BB0_214 Depth=4
	addi.d	$s5, $s5, -1
	addi.d	$s4, $s4, 4
	bnez	$s5, .LBB0_214
	b	.LBB0_228
.LBB0_216:                              #   in Loop: Header=BB0_210 Depth=3
	ld.w	$s4, $s7, 4
	mul.d	$s5, $s4, $a7
	ldx.w	$s6, $t4, $s5
	ld.w	$s4, $s7, 0
	bge	$s6, $s1, .LBB0_221
# %bb.217:                              #   in Loop: Header=BB0_210 Depth=3
	ld.w	$s1, $s0, 20
	bge	$s1, $fp, .LBB0_219
# %bb.218:                              #   in Loop: Header=BB0_210 Depth=3
	ld.w	$s1, $s0, 8
	beqz	$s1, .LBB0_226
.LBB0_219:                              #   in Loop: Header=BB0_210 Depth=3
	bge	$s6, $fp, .LBB0_221
# %bb.220:                              #   in Loop: Header=BB0_210 Depth=3
	add.d	$s0, $t4, $s5
	st.w	$fp, $s0, 0
.LBB0_221:                              #   in Loop: Header=BB0_210 Depth=3
	mul.d	$fp, $s4, $a7
	ldx.w	$s0, $t4, $fp
	bge	$t8, $s0, .LBB0_228
.LBB0_222:                              #   in Loop: Header=BB0_210 Depth=3
	ld.w	$t8, $t6, 4
	mul.d	$t8, $t8, $a5
	ldx.w	$t8, $t2, $t8
	mul.d	$t8, $t8, $a7
	add.d	$t8, $t4, $t8
	ld.w	$s1, $t8, 16
	bge	$t7, $s1, .LBB0_224
# %bb.223:                              #   in Loop: Header=BB0_210 Depth=3
	ld.w	$s1, $t8, 8
	beqz	$s1, .LBB0_227
.LBB0_224:                              #   in Loop: Header=BB0_210 Depth=3
	bge	$t7, $s0, .LBB0_228
# %bb.225:                              #   in Loop: Header=BB0_210 Depth=3
	add.d	$t8, $t4, $fp
	st.w	$t7, $t8, 0
	b	.LBB0_228
.LBB0_226:                              #   in Loop: Header=BB0_210 Depth=3
	st.w	$s6, $s0, 0
	st.w	$a3, $s0, 8
	mul.d	$fp, $s4, $a7
	ldx.w	$s0, $t4, $fp
	blt	$t8, $s0, .LBB0_222
	b	.LBB0_228
.LBB0_227:                              #   in Loop: Header=BB0_210 Depth=3
	st.w	$s0, $t8, 0
	st.w	$a3, $t8, 8
	.p2align	4, , 16
.LBB0_228:                              # %.loopexit703
                                        #   in Loop: Header=BB0_210 Depth=3
	slli.d	$t7, $t5, 2
	ldx.w	$t7, $t6, $t7
	mul.d	$t7, $t7, $a5
	add.d	$t8, $t2, $t7
	ld.w	$t7, $t8, 44
	bne	$t7, $a3, .LBB0_209
# %bb.229:                              #   in Loop: Header=BB0_210 Depth=3
	ld.w	$fp, $t8, 36
	alsl.d	$t7, $t5, $t6, 2
	ld.w	$s0, $t8, 4
	ld.w	$t8, $t8, 0
	slli.d	$t6, $fp, 5
	alsl.d	$t6, $fp, $t6, 3
	add.d	$fp, $t3, $t6
	ld.w	$t6, $fp, 4
	ld.w	$fp, $fp, 8
	mul.d	$s0, $s0, $a7
	ldx.w	$s1, $t4, $s0
	mul.d	$t8, $t8, $a7
	ldx.w	$t8, $t4, $t8
	add.d	$s0, $t4, $s0
	addi.d	$t5, $t5, 1
	addi.d	$s4, $t7, -4
	.p2align	4, , 16
.LBB0_230:                              #   Parent Loop BB0_160 Depth=1
                                        #     Parent Loop BB0_206 Depth=2
                                        #       Parent Loop BB0_210 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	addi.w	$t5, $t5, -1
	blt	$t5, $a4, .LBB0_209
# %bb.231:                              #   in Loop: Header=BB0_230 Depth=4
	ld.w	$s5, $s4, 0
	mul.d	$s5, $s5, $a5
	add.d	$s6, $t2, $s5
	ld.w	$s5, $s6, 44
	addi.d	$s4, $s4, -4
	bnez	$s5, .LBB0_230
# %bb.232:                              #   in Loop: Header=BB0_210 Depth=3
	ld.w	$t5, $s6, 4
	mul.d	$s4, $t5, $a7
	ldx.w	$s5, $t4, $s4
	ld.w	$t5, $s6, 0
	bge	$s5, $s1, .LBB0_237
# %bb.233:                              #   in Loop: Header=BB0_210 Depth=3
	ld.w	$s1, $s0, 20
	bge	$s1, $fp, .LBB0_235
# %bb.234:                              #   in Loop: Header=BB0_210 Depth=3
	ld.w	$s1, $s0, 8
	beqz	$s1, .LBB0_242
.LBB0_235:                              #   in Loop: Header=BB0_210 Depth=3
	bge	$s5, $fp, .LBB0_237
# %bb.236:                              #   in Loop: Header=BB0_210 Depth=3
	add.d	$s0, $t4, $s4
	st.w	$fp, $s0, 0
.LBB0_237:                              #   in Loop: Header=BB0_210 Depth=3
	mul.d	$t5, $t5, $a7
	ldx.w	$fp, $t4, $t5
	bge	$t8, $fp, .LBB0_209
.LBB0_238:                              #   in Loop: Header=BB0_210 Depth=3
	ld.w	$t7, $t7, 0
	mul.d	$t7, $t7, $a5
	ldx.w	$t7, $t2, $t7
	mul.d	$t7, $t7, $a7
	add.d	$t7, $t4, $t7
	ld.w	$t8, $t7, 16
	bge	$t6, $t8, .LBB0_240
# %bb.239:                              #   in Loop: Header=BB0_210 Depth=3
	ld.w	$t8, $t7, 8
	beqz	$t8, .LBB0_208
.LBB0_240:                              #   in Loop: Header=BB0_210 Depth=3
	bge	$t6, $fp, .LBB0_209
# %bb.241:                              #   in Loop: Header=BB0_210 Depth=3
	add.d	$t5, $t4, $t5
	st.w	$t6, $t5, 0
	b	.LBB0_209
.LBB0_242:                              #   in Loop: Header=BB0_210 Depth=3
	st.w	$s5, $s0, 0
	st.w	$a3, $s0, 8
	mul.d	$t5, $t5, $a7
	ldx.w	$fp, $t4, $t5
	bge	$t8, $fp, .LBB0_209
	b	.LBB0_238
.LBB0_243:
	ld.d	$s8, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 192                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 200                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 208
	ret
.Lfunc_end0:
	.size	reduceg, .Lfunc_end0-reduceg
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
