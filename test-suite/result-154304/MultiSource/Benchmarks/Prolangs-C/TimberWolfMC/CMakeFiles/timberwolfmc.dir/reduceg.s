	.file	"reduceg.c"
	.text
	.globl	reduceg                         # -- Begin function reduceg
	.p2align	5
	.type	reduceg,@function
reduceg:                                # @reduceg
# %bb.0:
	addi.d	$sp, $sp, -224
	st.d	$ra, $sp, 216                   # 8-byte Folded Spill
	st.d	$fp, $sp, 208                   # 8-byte Folded Spill
	st.d	$s0, $sp, 200                   # 8-byte Folded Spill
	st.d	$s1, $sp, 192                   # 8-byte Folded Spill
	st.d	$s2, $sp, 184                   # 8-byte Folded Spill
	st.d	$s3, $sp, 176                   # 8-byte Folded Spill
	st.d	$s4, $sp, 168                   # 8-byte Folded Spill
	st.d	$s5, $sp, 160                   # 8-byte Folded Spill
	st.d	$s6, $sp, 152                   # 8-byte Folded Spill
	st.d	$s7, $sp, 144                   # 8-byte Folded Spill
	st.d	$s8, $sp, 136                   # 8-byte Folded Spill
	st.d	$zero, $sp, 112
	ori	$a0, $zero, 808
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(eNum)
	ld.d	$a1, $a1, %got_pc_lo12(eNum)
	ld.w	$a2, $a1, 0
	move	$fp, $a0
	ori	$a0, $zero, 1
	st.w	$zero, $sp, 132
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
	vrepli.b	$vr1, 0
	blt	$a1, $a0, .LBB0_6
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
	pcalau12i	$a0, %got_pc_hi20(numXnodes)
	ld.d	$a0, $a0, %got_pc_lo12(numXnodes)
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	ld.w	$a0, $a0, 0
	ori	$s1, $zero, 1
	lu12i.w	$a2, -251659
	lu12i.w	$a4, 20971
	lu12i.w	$a5, 10485
	st.d	$a3, $sp, 24                    # 8-byte Folded Spill
	blt	$a0, $s1, .LBB0_25
# %bb.7:                                # %.lr.ph755.preheader
	pcalau12i	$a1, %got_pc_hi20(xNodeArray)
	ld.d	$a1, $a1, %got_pc_lo12(xNodeArray)
	st.d	$a1, $sp, 40                    # 8-byte Folded Spill
	ori	$a1, $a2, 3113
	st.d	$a1, $sp, 72                    # 8-byte Folded Spill
	ori	$s8, $a4, 2128
	ori	$s2, $a5, 3112
	pcalau12i	$a1, %got_pc_hi20(eArray)
	ld.d	$s3, $a1, %got_pc_lo12(eArray)
	ori	$s4, $zero, 56
	pcalau12i	$a1, %got_pc_hi20(rectArray)
	ld.d	$s5, $a1, %got_pc_lo12(rectArray)
	ori	$s0, $zero, 52
	ori	$a1, $zero, 1
	vst	$vr1, $sp, 80                   # 16-byte Folded Spill
	b	.LBB0_10
	.p2align	4, , 16
.LBB0_8:                                # %._crit_edge751.loopexit
                                        #   in Loop: Header=BB0_10 Depth=1
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
.LBB0_9:                                # %._crit_edge751
                                        #   in Loop: Header=BB0_10 Depth=1
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	addi.d	$a1, $a2, 1
	bge	$a2, $a0, .LBB0_25
.LBB0_10:                               # %.lr.ph755
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_14 Depth 2
                                        #       Child Loop BB0_21 Depth 3
                                        #       Child Loop BB0_24 Depth 3
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a2, $a2, 0
	st.d	$a1, $sp, 48                    # 8-byte Folded Spill
	slli.d	$a1, $a1, 3
	ldx.d	$s6, $a2, $a1
	bnez	$s6, .LBB0_14
	b	.LBB0_9
.LBB0_11:                               #   in Loop: Header=BB0_14 Depth=2
	move	$a4, $zero
.LBB0_12:                               # %._crit_edge
                                        #   in Loop: Header=BB0_14 Depth=2
	ld.w	$a2, $sp, 132
	addi.w	$a0, $a4, 0
	div.w	$a0, $a0, $s7
	st.w	$a0, $sp, 128
	slli.d	$a1, $a2, 3
	stx.d	$s6, $fp, $a1
	sub.w	$a1, $zero, $a0
	addi.d	$a0, $sp, 112
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
	vld	$vr1, $sp, 80                   # 16-byte Folded Reload
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
	ld.w	$a0, $sp, 132
	ld.w	$s7, $a1, 0
	addi.d	$a1, $a0, 1
	ld.d	$a2, $sp, 72                    # 8-byte Folded Reload
	mul.d	$a2, $a1, $a2
	add.d	$a2, $a2, $s8
	rotri.w	$a2, $a2, 2
	st.w	$a1, $sp, 132
	bgeu	$s2, $a2, .LBB0_17
# %bb.16:                               #   in Loop: Header=BB0_14 Depth=2
	bge	$s7, $s1, .LBB0_18
	b	.LBB0_11
.LBB0_17:                               #   in Loop: Header=BB0_14 Depth=2
	slli.d	$a0, $a0, 3
	addi.d	$a1, $a0, 808
	move	$a0, $fp
	pcaddu18i	$ra, %call36(realloc)
	jirl	$ra, $ra, 0
	vld	$vr1, $sp, 80                   # 16-byte Folded Reload
	move	$fp, $a0
	blt	$s7, $s1, .LBB0_11
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
	vshuf4i.w	$vr5, $vr3, 50
	vslli.d	$vr5, $vr5, 32
	vsrai.d	$vr5, $vr5, 32
	vshuf4i.w	$vr3, $vr3, 16
	vslli.d	$vr3, $vr3, 32
	vsrai.d	$vr3, $vr3, 32
	vpickve2gr.d	$a6, $vr2, 0
	mul.d	$a6, $a6, $s4
	add.d	$a6, $a0, $a6
	vpickve2gr.d	$a7, $vr2, 1
	mul.d	$a7, $a7, $s4
	add.d	$a7, $a0, $a7
	vpickve2gr.d	$t0, $vr4, 0
	mul.d	$t0, $t0, $s4
	add.d	$t0, $a0, $t0
	vpickve2gr.d	$t1, $vr4, 1
	mul.d	$t1, $t1, $s4
	add.d	$t1, $a0, $t1
	vpickve2gr.d	$t2, $vr3, 0
	mul.d	$t2, $t2, $s4
	add.d	$t2, $a0, $t2
	vpickve2gr.d	$t3, $vr3, 1
	mul.d	$t3, $t3, $s4
	add.d	$t3, $a0, $t3
	vpickve2gr.d	$t4, $vr5, 0
	mul.d	$t4, $t4, $s4
	add.d	$t4, $a0, $t4
	vpickve2gr.d	$t5, $vr5, 1
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
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	ld.w	$a0, $a0, 0
	ori	$s6, $zero, 1
	blt	$a0, $s6, .LBB0_44
# %bb.26:                               # %.lr.ph774.preheader
	pcalau12i	$a1, %got_pc_hi20(yNodeArray)
	ld.d	$a1, $a1, %got_pc_lo12(yNodeArray)
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	lu12i.w	$a1, -251659
	ori	$a1, $a1, 3113
	st.d	$a1, $sp, 72                    # 8-byte Folded Spill
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
	vst	$vr0, $sp, 48                   # 16-byte Folded Spill
	ori	$a1, $zero, 1
	b	.LBB0_29
	.p2align	4, , 16
.LBB0_27:                               # %._crit_edge769.loopexit
                                        #   in Loop: Header=BB0_29 Depth=1
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
.LBB0_28:                               # %._crit_edge769
                                        #   in Loop: Header=BB0_29 Depth=1
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	addi.d	$a1, $a2, 1
	bge	$a2, $a0, .LBB0_44
.LBB0_29:                               # %.lr.ph774
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_33 Depth 2
                                        #       Child Loop BB0_40 Depth 3
                                        #       Child Loop BB0_43 Depth 3
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a2, $a2, 0
	st.d	$a1, $sp, 40                    # 8-byte Folded Spill
	slli.d	$a1, $a1, 3
	ldx.d	$s1, $a2, $a1
	bnez	$s1, .LBB0_33
	b	.LBB0_28
.LBB0_30:                               #   in Loop: Header=BB0_33 Depth=2
	move	$a4, $zero
.LBB0_31:                               # %._crit_edge762
                                        #   in Loop: Header=BB0_33 Depth=2
	ld.w	$a2, $sp, 132
	addi.w	$a0, $a4, 0
	div.w	$a0, $a0, $s2
	st.w	$a0, $sp, 128
	slli.d	$a1, $a2, 3
	stx.d	$s1, $fp, $a1
	sub.w	$a1, $zero, $a0
	addi.d	$a0, $sp, 112
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
	ld.w	$a0, $sp, 132
	ld.w	$s2, $a1, 0
	addi.d	$a1, $a0, 1
	ld.d	$a2, $sp, 72                    # 8-byte Folded Reload
	mul.d	$a2, $a1, $a2
	add.d	$a2, $a2, $s3
	rotri.w	$a2, $a2, 2
	st.w	$a1, $sp, 132
	bgeu	$s5, $a2, .LBB0_36
# %bb.35:                               #   in Loop: Header=BB0_33 Depth=2
	bge	$s2, $s6, .LBB0_37
	b	.LBB0_30
.LBB0_36:                               #   in Loop: Header=BB0_33 Depth=2
	slli.d	$a0, $a0, 3
	addi.d	$a1, $a0, 808
	move	$a0, $fp
	pcaddu18i	$ra, %call36(realloc)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	blt	$s2, $s6, .LBB0_30
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
.LBB0_39:                               # %vector.ph1096
                                        #   in Loop: Header=BB0_33 Depth=2
	bstrpick.d	$a2, $s2, 30, 3
	slli.d	$a3, $a2, 3
	srli.d	$a4, $s2, 3
	ori	$a2, $zero, 1
	bstrins.d	$a2, $a4, 30, 3
	addi.d	$a4, $a1, 20
	move	$a5, $a3
	vld	$vr1, $sp, 48                   # 16-byte Folded Reload
	vori.b	$vr0, $vr1, 0
	.p2align	4, , 16
.LBB0_40:                               # %vector.body1099
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
	vshuf4i.w	$vr5, $vr3, 50
	vslli.d	$vr5, $vr5, 32
	vsrai.d	$vr5, $vr5, 32
	vshuf4i.w	$vr3, $vr3, 16
	vslli.d	$vr3, $vr3, 32
	vsrai.d	$vr3, $vr3, 32
	vpickve2gr.d	$a6, $vr2, 0
	mul.d	$a6, $a6, $s4
	add.d	$a6, $a0, $a6
	vpickve2gr.d	$a7, $vr2, 1
	mul.d	$a7, $a7, $s4
	add.d	$a7, $a0, $a7
	vpickve2gr.d	$t0, $vr4, 0
	mul.d	$t0, $t0, $s4
	add.d	$t0, $a0, $t0
	vpickve2gr.d	$t1, $vr4, 1
	mul.d	$t1, $t1, $s4
	add.d	$t1, $a0, $t1
	vpickve2gr.d	$t2, $vr3, 0
	mul.d	$t2, $t2, $s4
	add.d	$t2, $a0, $t2
	vpickve2gr.d	$t3, $vr3, 1
	mul.d	$t3, $t3, $s4
	add.d	$t3, $a0, $t3
	vpickve2gr.d	$t4, $vr5, 0
	mul.d	$t4, $t4, $s4
	add.d	$t4, $a0, $t4
	vpickve2gr.d	$t5, $vr5, 1
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
# %bb.41:                               # %middle.block1107
                                        #   in Loop: Header=BB0_33 Depth=2
	vadd.w	$vr0, $vr1, $vr0
	vhaddw.d.w	$vr0, $vr0, $vr0
	vhaddw.q.d	$vr0, $vr0, $vr0
	vpickve2gr.d	$a4, $vr0, 0
	beq	$a3, $s2, .LBB0_31
.LBB0_42:                               # %scalar.ph1094.preheader
                                        #   in Loop: Header=BB0_33 Depth=2
	addi.d	$a3, $s2, 1
	bstrpick.d	$a3, $a3, 31, 0
	alsl.d	$a1, $a2, $a1, 2
	sub.d	$a2, $a3, $a2
	.p2align	4, , 16
.LBB0_43:                               # %scalar.ph1094
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
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
                                        # implicit-def: $r29
	.p2align	4, , 16
.LBB0_45:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_50 Depth 2
                                        #       Child Loop BB0_57 Depth 3
                                        #       Child Loop BB0_54 Depth 3
                                        #       Child Loop BB0_73 Depth 3
	addi.d	$a0, $sp, 112
	addi.d	$a1, $sp, 120
	addi.d	$a2, $sp, 128
	addi.d	$a3, $sp, 132
	pcaddu18i	$ra, %call36(tpop)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 120
	beqz	$a0, .LBB0_83
# %bb.46:                               #   in Loop: Header=BB0_45 Depth=1
	ld.w	$a0, $sp, 132
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $fp, $a0
	ld.d	$a0, $a0, 8
	ld.w	$a7, $a0, 0
	beq	$a7, $s5, .LBB0_45
# %bb.47:                               #   in Loop: Header=BB0_45 Depth=1
	move	$a1, $zero
	addi.d	$a2, $a0, 4
	st.d	$a2, $sp, 32                    # 8-byte Folded Spill
	ld.w	$a3, $a0, 4
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	ld.w	$a4, $a2, 0
	ld.d	$a5, $s2, 0
	ld.d	$a6, $s3, 0
	ori	$t1, $zero, 1
	slt	$t0, $t1, $a7
	masknez	$t2, $t1, $t0
	maskeqz	$a7, $a7, $t0
	or	$a7, $a7, $t2
	addi.w	$a2, $a7, 1
	st.d	$a2, $sp, 72                    # 8-byte Folded Spill
	ori	$t4, $zero, 2
	ori	$t0, $zero, 1
	b	.LBB0_50
	.p2align	4, , 16
.LBB0_48:                               # %._crit_edge793
                                        #   in Loop: Header=BB0_50 Depth=2
	move	$t0, $t3
.LBB0_49:                               #   in Loop: Header=BB0_50 Depth=2
	addi.w	$t4, $t2, 1
	addi.d	$a1, $a1, 1
	move	$t1, $t3
	ld.d	$a2, $sp, 72                    # 8-byte Folded Reload
	beq	$t2, $a2, .LBB0_45
.LBB0_50:                               #   Parent Loop BB0_45 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_57 Depth 3
                                        #       Child Loop BB0_54 Depth 3
                                        #       Child Loop BB0_73 Depth 3
	slli.d	$t2, $t1, 2
	ldx.w	$t2, $a0, $t2
	mul.d	$t5, $t2, $s7
	ldx.w	$t2, $a5, $t5
	mul.d	$t2, $t2, $s8
	add.d	$t2, $a6, $t2
	ld.w	$t6, $t2, 32
	move	$t2, $t4
	addi.w	$t3, $t1, 1
	beqz	$t6, .LBB0_49
# %bb.51:                               #   in Loop: Header=BB0_50 Depth=2
	slli.d	$t4, $t0, 2
	ldx.w	$t4, $a0, $t4
	add.d	$t5, $a5, $t5
	ld.w	$a2, $t5, 16
	mul.d	$t5, $t4, $s7
	add.d	$t6, $a5, $t5
	ld.w	$t8, $t6, 12
	alsl.d	$t4, $t0, $a0, 2
	st.d	$a2, $sp, 48                    # 8-byte Folded Spill
	add.d	$t8, $t8, $a2
	bstrpick.d	$s0, $t8, 31, 31
	add.w	$t8, $t8, $s0
	srai.d	$t8, $t8, 1
	bge	$a4, $a3, .LBB0_55
# %bb.52:                               # %.preheader719
                                        #   in Loop: Header=BB0_50 Depth=2
	blt	$t1, $t0, .LBB0_58
# %bb.53:                               # %.lr.ph786.preheader
                                        #   in Loop: Header=BB0_50 Depth=2
	alsl.d	$s0, $t0, $a0, 2
	move	$s1, $t0
	ld.d	$s4, $sp, 40                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_54:                               # %.lr.ph786
                                        #   Parent Loop BB0_45 Depth=1
                                        #     Parent Loop BB0_50 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$a2, $s0, 0
	mul.d	$a2, $a2, $s7
	ldx.w	$a7, $a5, $a2
	mul.d	$a7, $a7, $s8
	add.d	$a7, $a6, $a7
	ld.w	$a7, $a7, 4
	add.d	$a2, $a5, $a2
	ld.w	$a2, $a2, 4
	sub.w	$a7, $a7, $t8
	srai.d	$t7, $a7, 31
	xor	$a7, $a7, $t7
	sub.w	$a7, $a7, $t7
	slt	$t7, $a7, $s4
	mul.d	$a2, $a2, $s8
	add.d	$a2, $a6, $a2
	ld.w	$a2, $a2, 4
	maskeqz	$a7, $a7, $t7
	masknez	$s4, $s4, $t7
	or	$a7, $a7, $s4
	sub.w	$a2, $a2, $t8
	srai.d	$s4, $a2, 31
	xor	$a2, $a2, $s4
	sub.w	$a2, $a2, $s4
	slt	$s4, $a2, $a7
	masknez	$s6, $s6, $s4
	maskeqz	$ra, $s1, $s4
	or	$s6, $ra, $s6
	masknez	$s6, $s6, $t7
	maskeqz	$t7, $s1, $t7
	or	$s6, $t7, $s6
	masknez	$a7, $a7, $s4
	maskeqz	$a2, $a2, $s4
	or	$s4, $a2, $a7
	addi.w	$s1, $s1, 1
	addi.d	$s0, $s0, 4
	bne	$t2, $s1, .LBB0_54
	b	.LBB0_58
	.p2align	4, , 16
.LBB0_55:                               # %.preheader721
                                        #   in Loop: Header=BB0_50 Depth=2
	blt	$t1, $t0, .LBB0_58
# %bb.56:                               # %.lr.ph780.preheader
                                        #   in Loop: Header=BB0_50 Depth=2
	lu12i.w	$a2, 2441
	ori	$s4, $a2, 1664
	move	$s0, $t0
	move	$s1, $t4
	.p2align	4, , 16
.LBB0_57:                               # %.lr.ph780
                                        #   Parent Loop BB0_45 Depth=1
                                        #     Parent Loop BB0_50 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$ra, $s1, 0
	mul.d	$ra, $ra, $s7
	ldx.w	$a2, $a5, $ra
	mul.d	$a2, $a2, $s8
	ldx.w	$a2, $a6, $a2
	add.d	$ra, $a5, $ra
	ld.w	$ra, $ra, 4
	sub.w	$a2, $a2, $t8
	srai.d	$a7, $a2, 31
	xor	$a2, $a2, $a7
	sub.w	$a2, $a2, $a7
	slt	$a7, $a2, $s4
	mul.d	$ra, $ra, $s8
	ldx.w	$ra, $a6, $ra
	maskeqz	$a2, $a2, $a7
	masknez	$s4, $s4, $a7
	or	$a2, $a2, $s4
	sub.w	$s4, $ra, $t8
	srai.d	$ra, $s4, 31
	xor	$s4, $s4, $ra
	sub.w	$s4, $s4, $ra
	slt	$ra, $s4, $a2
	masknez	$s6, $s6, $ra
	maskeqz	$t7, $s0, $ra
	or	$t7, $t7, $s6
	masknez	$t7, $t7, $a7
	maskeqz	$a7, $s0, $a7
	or	$s6, $a7, $t7
	masknez	$a2, $a2, $ra
	maskeqz	$a7, $s4, $ra
	or	$s4, $a7, $a2
	addi.w	$s0, $s0, 1
	addi.d	$s1, $s1, 4
	bne	$t2, $s0, .LBB0_57
.LBB0_58:                               # %.loopexit720
                                        #   in Loop: Header=BB0_50 Depth=2
	blt	$t1, $t0, .LBB0_48
# %bb.59:                               # %.lr.ph792.preheader
                                        #   in Loop: Header=BB0_50 Depth=2
	addi.w	$t8, $s6, 0
	bne	$t0, $t8, .LBB0_61
# %bb.60:                               #   in Loop: Header=BB0_50 Depth=2
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	st.w	$a2, $t6, 16
	b	.LBB0_62
.LBB0_61:                               #   in Loop: Header=BB0_50 Depth=2
	st.w	$s5, $t6, 44
.LBB0_62:                               #   in Loop: Header=BB0_50 Depth=2
	ldx.w	$a2, $a5, $t5
	ld.w	$a7, $t6, 4
	mul.d	$a2, $a2, $s8
	add.d	$t6, $a6, $a2
	st.w	$s5, $t6, 32
	mul.d	$t5, $a7, $s8
	add.d	$a2, $a6, $t5
	bge	$a4, $a3, .LBB0_65
# %bb.63:                               # %.thread694.peel
                                        #   in Loop: Header=BB0_50 Depth=2
	st.w	$s5, $a2, 36
	bne	$t0, $t1, .LBB0_68
# %bb.64:                               # %.thread695.peel
                                        #   in Loop: Header=BB0_50 Depth=2
	st.w	$s5, $t6, 40
	b	.LBB0_67
.LBB0_65:                               # %.thread.peel
                                        #   in Loop: Header=BB0_50 Depth=2
	st.w	$s5, $a2, 40
	bne	$t0, $t1, .LBB0_68
# %bb.66:                               # %.thread693.peel
                                        #   in Loop: Header=BB0_50 Depth=2
	st.w	$s5, $t6, 36
.LBB0_67:                               # %.sink.split
                                        #   in Loop: Header=BB0_50 Depth=2
	add.d	$a2, $a6, $t5
	st.w	$s5, $a2, 44
.LBB0_68:                               #   in Loop: Header=BB0_50 Depth=2
	addi.w	$a2, $t0, 1
	beq	$t2, $a2, .LBB0_48
# %bb.69:                               # %.lr.ph792.preheader1157
                                        #   in Loop: Header=BB0_50 Depth=2
	alsl.d	$t5, $t1, $a0, 2
	addi.d	$t6, $t8, -1
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	alsl.d	$t7, $t0, $a2, 2
	move	$t8, $t0
	move	$s0, $t0
	b	.LBB0_73
	.p2align	4, , 16
.LBB0_70:                               # %.thread
                                        #   in Loop: Header=BB0_73 Depth=3
	st.w	$s5, $a2, 36
.LBB0_71:                               #   in Loop: Header=BB0_73 Depth=3
	st.w	$s5, $s1, 0
.LBB0_72:                               #   in Loop: Header=BB0_73 Depth=3
	addi.w	$t8, $t8, 1
	addi.d	$t7, $t7, 4
	beq	$t1, $t8, .LBB0_48
.LBB0_73:                               # %.lr.ph792
                                        #   Parent Loop BB0_45 Depth=1
                                        #     Parent Loop BB0_50 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$a2, $t7, 0
	move	$s1, $s0
	mul.d	$s4, $a2, $s7
	add.d	$s0, $a5, $s4
	bne	$t6, $s1, .LBB0_79
# %bb.74:                               #   in Loop: Header=BB0_73 Depth=3
	ld.w	$a2, $t5, 0
	mul.d	$a2, $a2, $s7
	add.d	$a2, $a5, $a2
	ld.w	$a2, $a2, 16
	st.w	$a2, $s0, 16
	ld.w	$a2, $t4, 0
	mul.d	$a2, $a2, $s7
	ld.w	$a7, $t7, 0
	add.d	$a2, $a5, $a2
	ld.w	$a2, $a2, 12
	mul.d	$a7, $a7, $s7
	add.d	$a7, $a5, $a7
	st.w	$a2, $a7, 12
	ldx.w	$s4, $a5, $s4
	ld.w	$ra, $s0, 4
	addi.d	$s0, $s1, 1
	beq	$a1, $s1, .LBB0_80
.LBB0_75:                               #   in Loop: Header=BB0_73 Depth=3
	bge	$t0, $s0, .LBB0_72
# %bb.76:                               #   in Loop: Header=BB0_73 Depth=3
	bge	$s0, $t1, .LBB0_72
# %bb.77:                               #   in Loop: Header=BB0_73 Depth=3
	mul.d	$s4, $s4, $s8
	mul.d	$s1, $ra, $s8
	add.d	$a2, $a6, $s4
	bge	$a4, $a3, .LBB0_82
# %bb.78:                               #   in Loop: Header=BB0_73 Depth=3
	st.w	$s5, $a2, 32
	st.w	$s5, $a2, 40
	add.d	$a2, $a6, $s1
	st.w	$s5, $a2, 36
	st.w	$s5, $a2, 44
	b	.LBB0_72
	.p2align	4, , 16
.LBB0_79:                               #   in Loop: Header=BB0_73 Depth=3
	st.w	$s5, $s0, 44
	ldx.w	$s4, $a5, $s4
	ld.w	$ra, $s0, 4
	addi.d	$s0, $s1, 1
	bne	$a1, $s1, .LBB0_75
.LBB0_80:                               #   in Loop: Header=BB0_73 Depth=3
	mul.d	$a2, $ra, $s8
	add.d	$a2, $a6, $a2
	addi.d	$s1, $a2, 44
	mul.d	$s4, $s4, $s8
	add.d	$a2, $a6, $s4
	bge	$a4, $a3, .LBB0_70
# %bb.81:                               # %.thread1052
                                        #   in Loop: Header=BB0_73 Depth=3
	st.w	$s5, $a2, 40
	b	.LBB0_71
.LBB0_82:                               #   in Loop: Header=BB0_73 Depth=3
	ori	$a7, $zero, 1
	lu32i.d	$a7, 1
	st.d	$a7, $a2, 32
	add.d	$a2, $a6, $s1
	st.d	$a7, $a2, 40
	b	.LBB0_72
.LBB0_83:                               # %.preheader718
	ld.d	$a4, $sp, 24                    # 8-byte Folded Reload
	ld.w	$a1, $a4, 0
	ori	$a0, $zero, 1
	blt	$a1, $a0, .LBB0_86
# %bb.84:                               # %.lr.ph796
	ld.d	$a2, $s3, 0
	move	$a1, $zero
	addi.d	$a2, $a2, 100
	.p2align	4, , 16
.LBB0_85:                               # =>This Inner Loop Header: Depth=1
	st.w	$zero, $a2, 0
	ld.w	$a3, $a4, 0
	addi.d	$a1, $a1, 1
	addi.d	$a2, $a2, 52
	blt	$a1, $a3, .LBB0_85
.LBB0_86:                               # %.preheader717
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	ld.w	$a6, $a1, 0
	blt	$a6, $a0, .LBB0_99
# %bb.87:                               # %.lr.ph809
	pcalau12i	$a0, %got_pc_hi20(xNodeArray)
	ld.d	$a0, $a0, %got_pc_lo12(xNodeArray)
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 1
	ori	$a2, $zero, 56
	ori	$a3, $zero, 52
	ori	$a5, $zero, 1
	b	.LBB0_90
	.p2align	4, , 16
.LBB0_88:                               # %._crit_edge806.loopexit
                                        #   in Loop: Header=BB0_90 Depth=1
	ld.d	$a5, $sp, 104                   # 8-byte Folded Reload
	ld.w	$a6, $a5, 0
.LBB0_89:                               # %._crit_edge806
                                        #   in Loop: Header=BB0_90 Depth=1
	addi.d	$a5, $a4, 1
	bge	$a4, $a6, .LBB0_99
.LBB0_90:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_93 Depth 2
                                        #       Child Loop BB0_97 Depth 3
	move	$a4, $a5
	slli.d	$a5, $a5, 3
	ldx.d	$a5, $a0, $a5
	beqz	$a5, .LBB0_89
# %bb.91:                               # %.lr.ph805
                                        #   in Loop: Header=BB0_90 Depth=1
	ld.d	$a6, $s2, 0
	b	.LBB0_93
	.p2align	4, , 16
.LBB0_92:                               # %.loopexit716
                                        #   in Loop: Header=BB0_93 Depth=2
	ld.d	$a5, $a5, 24
	beqz	$a5, .LBB0_88
.LBB0_93:                               #   Parent Loop BB0_90 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_97 Depth 3
	ld.w	$a7, $a5, 0
	beq	$a7, $a1, .LBB0_92
# %bb.94:                               #   in Loop: Header=BB0_93 Depth=2
	ld.d	$t0, $a5, 8
	ld.w	$t1, $t0, 0
	blt	$t1, $a1, .LBB0_92
# %bb.95:                               # %.lr.ph800
                                        #   in Loop: Header=BB0_93 Depth=2
	ld.d	$a7, $s3, 0
	addi.d	$t1, $t1, 1
	bstrpick.d	$t1, $t1, 31, 0
	addi.d	$t0, $t0, 4
	addi.d	$t1, $t1, -1
	b	.LBB0_97
	.p2align	4, , 16
.LBB0_96:                               #   in Loop: Header=BB0_97 Depth=3
	addi.d	$t1, $t1, -1
	addi.d	$t0, $t0, 4
	beqz	$t1, .LBB0_92
.LBB0_97:                               #   Parent Loop BB0_90 Depth=1
                                        #     Parent Loop BB0_93 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$t2, $t0, 0
	mul.d	$t2, $t2, $a2
	add.d	$t2, $a6, $t2
	ld.w	$t3, $t2, 44
	beq	$t3, $a1, .LBB0_96
# %bb.98:                               #   in Loop: Header=BB0_97 Depth=3
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
	b	.LBB0_96
.LBB0_99:                               # %.preheader715
	pcalau12i	$a0, %got_pc_hi20(yNodeArray)
	ld.d	$a0, $a0, %got_pc_lo12(yNodeArray)
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	ld.w	$t2, $a1, 0
	ld.d	$a1, $a0, 0
	ori	$a2, $zero, 1
	blt	$t2, $a2, .LBB0_113
# %bb.100:                              # %.lr.ph822.preheader
	ori	$a3, $zero, 56
	ori	$a4, $zero, 52
	ori	$a6, $zero, 1
	b	.LBB0_103
	.p2align	4, , 16
.LBB0_101:                              # %._crit_edge819.loopexit
                                        #   in Loop: Header=BB0_103 Depth=1
	ld.d	$a6, $sp, 80                    # 8-byte Folded Reload
	ld.w	$t2, $a6, 0
.LBB0_102:                              # %._crit_edge819
                                        #   in Loop: Header=BB0_103 Depth=1
	addi.d	$a6, $a5, 1
	bge	$a5, $t2, .LBB0_112
.LBB0_103:                              # %.lr.ph822
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_106 Depth 2
                                        #       Child Loop BB0_110 Depth 3
	move	$a5, $a6
	slli.d	$a6, $a6, 3
	ldx.d	$a6, $a1, $a6
	beqz	$a6, .LBB0_102
# %bb.104:                              # %.lr.ph818
                                        #   in Loop: Header=BB0_103 Depth=1
	ld.d	$a7, $s2, 0
	b	.LBB0_106
	.p2align	4, , 16
.LBB0_105:                              # %.loopexit714
                                        #   in Loop: Header=BB0_106 Depth=2
	ld.d	$a6, $a6, 24
	beqz	$a6, .LBB0_101
.LBB0_106:                              #   Parent Loop BB0_103 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_110 Depth 3
	ld.w	$t0, $a6, 0
	beq	$t0, $a2, .LBB0_105
# %bb.107:                              #   in Loop: Header=BB0_106 Depth=2
	ld.d	$t1, $a6, 8
	ld.w	$t2, $t1, 0
	blt	$t2, $a2, .LBB0_105
# %bb.108:                              # %.lr.ph813
                                        #   in Loop: Header=BB0_106 Depth=2
	ld.d	$t0, $s3, 0
	addi.d	$t2, $t2, 1
	bstrpick.d	$t2, $t2, 31, 0
	addi.d	$t1, $t1, 4
	addi.d	$t2, $t2, -1
	b	.LBB0_110
	.p2align	4, , 16
.LBB0_109:                              #   in Loop: Header=BB0_110 Depth=3
	addi.d	$t2, $t2, -1
	addi.d	$t1, $t1, 4
	beqz	$t2, .LBB0_105
.LBB0_110:                              #   Parent Loop BB0_103 Depth=1
                                        #     Parent Loop BB0_106 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$t3, $t1, 0
	mul.d	$t3, $t3, $a3
	add.d	$t3, $a7, $t3
	ld.w	$t4, $t3, 44
	beq	$t4, $a2, .LBB0_109
# %bb.111:                              #   in Loop: Header=BB0_110 Depth=3
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
	b	.LBB0_109
.LBB0_112:                              # %.preheader713.loopexit
	ld.d	$a1, $a0, 0
.LBB0_113:                              # %.preheader713
	pcalau12i	$a2, %got_pc_hi20(xNodeArray)
	ld.d	$a2, $a2, %got_pc_lo12(xNodeArray)
	ld.d	$a3, $a2, 0
	ori	$a4, $zero, 1
	ori	$a5, $zero, 56
	ori	$a6, $zero, 52
	b	.LBB0_115
	.p2align	4, , 16
.LBB0_114:                              # %.loopexit711
                                        #   in Loop: Header=BB0_115 Depth=1
	beqz	$a7, .LBB0_162
.LBB0_115:                              # %.preheader712
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_119 Depth 2
                                        #       Child Loop BB0_122 Depth 3
                                        #         Child Loop BB0_128 Depth 4
                                        #           Child Loop BB0_133 Depth 5
                                        #     Child Loop BB0_143 Depth 2
                                        #       Child Loop BB0_146 Depth 3
                                        #         Child Loop BB0_152 Depth 4
                                        #           Child Loop BB0_157 Depth 5
	ld.d	$a7, $sp, 104                   # 8-byte Folded Reload
	ld.w	$t3, $a7, 0
	blt	$t3, $a4, .LBB0_139
# %bb.116:                              # %.lr.ph840.preheader
                                        #   in Loop: Header=BB0_115 Depth=1
	move	$a7, $zero
	ori	$t1, $zero, 1
	b	.LBB0_119
	.p2align	4, , 16
.LBB0_117:                              # %._crit_edge835.loopexit
                                        #   in Loop: Header=BB0_119 Depth=2
	ld.d	$t1, $sp, 104                   # 8-byte Folded Reload
	ld.w	$t3, $t1, 0
.LBB0_118:                              # %._crit_edge835
                                        #   in Loop: Header=BB0_119 Depth=2
	addi.d	$t1, $t0, 1
	bge	$t0, $t3, .LBB0_138
.LBB0_119:                              # %.lr.ph840
                                        #   Parent Loop BB0_115 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_122 Depth 3
                                        #         Child Loop BB0_128 Depth 4
                                        #           Child Loop BB0_133 Depth 5
	move	$t0, $t1
	slli.d	$t1, $t1, 3
	ldx.d	$t1, $a3, $t1
	beqz	$t1, .LBB0_118
# %bb.120:                              # %.lr.ph834
                                        #   in Loop: Header=BB0_119 Depth=2
	ld.d	$t2, $s2, 0
	b	.LBB0_122
	.p2align	4, , 16
.LBB0_121:                              # %.loopexit709
                                        #   in Loop: Header=BB0_122 Depth=3
	ld.d	$t1, $t1, 24
	beqz	$t1, .LBB0_117
.LBB0_122:                              #   Parent Loop BB0_115 Depth=1
                                        #     Parent Loop BB0_119 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_128 Depth 4
                                        #           Child Loop BB0_133 Depth 5
	ld.w	$t3, $t1, 0
	beq	$t3, $a4, .LBB0_121
# %bb.123:                              #   in Loop: Header=BB0_122 Depth=3
	ld.d	$t3, $t1, 8
	ld.w	$t4, $t3, 0
	blt	$t4, $a4, .LBB0_121
# %bb.124:                              # %.lr.ph827
                                        #   in Loop: Header=BB0_122 Depth=3
	move	$t5, $zero
	ld.d	$t6, $s3, 0
	addi.d	$t7, $t4, 1
	bstrpick.d	$t7, $t7, 31, 0
	addi.d	$t8, $t3, 8
	ori	$fp, $zero, 1
	ori	$s0, $zero, 2
	move	$s1, $t3
	b	.LBB0_128
.LBB0_125:                              # %.critedge
                                        #   in Loop: Header=BB0_128 Depth=4
	ld.w	$a7, $a7, 0
	mul.d	$a7, $a7, $a5
	add.d	$a7, $t2, $a7
	ld.w	$s4, $a7, 16
	ld.w	$a7, $a7, 12
	ld.w	$s5, $s8, 12
	sub.d	$a7, $a7, $s4
	add.d	$a7, $a7, $s5
	st.w	$a7, $s8, 12
.LBB0_126:                              #   in Loop: Header=BB0_128 Depth=4
	ori	$a7, $zero, 1
.LBB0_127:                              #   in Loop: Header=BB0_128 Depth=4
	addi.d	$fp, $fp, 1
	addi.d	$s1, $s1, 4
	addi.d	$t5, $t5, 1
	addi.d	$t8, $t8, 4
	addi.w	$s0, $s0, 1
	beq	$fp, $t7, .LBB0_121
.LBB0_128:                              #   Parent Loop BB0_115 Depth=1
                                        #     Parent Loop BB0_119 Depth=2
                                        #       Parent Loop BB0_122 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB0_133 Depth 5
	slli.d	$s4, $fp, 2
	ldx.w	$s4, $t3, $s4
	mul.d	$s4, $s4, $a5
	add.d	$s4, $t2, $s4
	ld.w	$s5, $s4, 44
	beq	$s5, $a4, .LBB0_127
# %bb.129:                              #   in Loop: Header=BB0_128 Depth=4
	ld.w	$s5, $s4, 4
	ld.w	$s8, $s4, 0
	mul.d	$s5, $s5, $a6
	add.d	$s7, $t6, $s5
	ld.w	$s6, $s7, 48
	mul.d	$s5, $s8, $a6
	beq	$s6, $a4, .LBB0_131
# %bb.130:                              #   in Loop: Header=BB0_128 Depth=4
	add.d	$s8, $t6, $s5
	ld.w	$s8, $s8, 48
	bne	$s8, $a4, .LBB0_127
.LBB0_131:                              # %._crit_edge1001
                                        #   in Loop: Header=BB0_128 Depth=4
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
	move	$s6, $t5
	move	$s7, $s1
	b	.LBB0_133
	.p2align	4, , 16
.LBB0_132:                              #   in Loop: Header=BB0_133 Depth=5
	addi.d	$s7, $s7, -4
	addi.d	$s6, $s6, -1
	addi.d	$s5, $s5, 4
	addi.w	$s4, $s4, 1
.LBB0_133:                              #   Parent Loop BB0_115 Depth=1
                                        #     Parent Loop BB0_119 Depth=2
                                        #       Parent Loop BB0_122 Depth=3
                                        #         Parent Loop BB0_128 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	blt	$t4, $s4, .LBB0_135
# %bb.134:                              #   in Loop: Header=BB0_133 Depth=5
	ld.w	$s8, $s5, 0
	mul.d	$s8, $s8, $a5
	add.d	$s8, $t2, $s8
	ld.w	$ra, $s8, 44
	beqz	$ra, .LBB0_125
.LBB0_135:                              #   in Loop: Header=BB0_133 Depth=5
	blt	$s6, $a4, .LBB0_132
# %bb.136:                              #   in Loop: Header=BB0_133 Depth=5
	ld.w	$s8, $s7, 0
	mul.d	$s8, $s8, $a5
	add.d	$s8, $t2, $s8
	ld.w	$ra, $s8, 44
	bnez	$ra, .LBB0_132
# %bb.137:                              # %.critedge688
                                        #   in Loop: Header=BB0_128 Depth=4
	ld.w	$a7, $a7, 0
	mul.d	$a7, $a7, $a5
	add.d	$a7, $t2, $a7
	ld.w	$s4, $a7, 16
	ld.w	$a7, $a7, 12
	ld.w	$s5, $s8, 16
	sub.d	$a7, $s4, $a7
	add.d	$a7, $a7, $s5
	st.w	$a7, $s8, 16
	b	.LBB0_126
	.p2align	4, , 16
.LBB0_138:                              # %.preheader710.loopexit
                                        #   in Loop: Header=BB0_115 Depth=1
	ld.d	$t0, $sp, 80                    # 8-byte Folded Reload
	ld.w	$t2, $t0, 0
	bge	$t2, $a4, .LBB0_140
	b	.LBB0_114
	.p2align	4, , 16
.LBB0_139:                              #   in Loop: Header=BB0_115 Depth=1
	move	$a7, $zero
	blt	$t2, $a4, .LBB0_114
.LBB0_140:                              # %.lr.ph859.preheader
                                        #   in Loop: Header=BB0_115 Depth=1
	ori	$t1, $zero, 1
	b	.LBB0_143
	.p2align	4, , 16
.LBB0_141:                              # %._crit_edge854.loopexit
                                        #   in Loop: Header=BB0_143 Depth=2
	ld.d	$t1, $sp, 80                    # 8-byte Folded Reload
	ld.w	$t2, $t1, 0
.LBB0_142:                              # %._crit_edge854
                                        #   in Loop: Header=BB0_143 Depth=2
	addi.d	$t1, $t0, 1
	bge	$t0, $t2, .LBB0_114
.LBB0_143:                              # %.lr.ph859
                                        #   Parent Loop BB0_115 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_146 Depth 3
                                        #         Child Loop BB0_152 Depth 4
                                        #           Child Loop BB0_157 Depth 5
	move	$t0, $t1
	slli.d	$t1, $t1, 3
	ldx.d	$t1, $a1, $t1
	beqz	$t1, .LBB0_142
# %bb.144:                              # %.lr.ph853
                                        #   in Loop: Header=BB0_143 Depth=2
	ld.d	$t2, $s2, 0
	b	.LBB0_146
	.p2align	4, , 16
.LBB0_145:                              # %.loopexit708
                                        #   in Loop: Header=BB0_146 Depth=3
	ld.d	$t1, $t1, 24
	beqz	$t1, .LBB0_141
.LBB0_146:                              #   Parent Loop BB0_115 Depth=1
                                        #     Parent Loop BB0_143 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_152 Depth 4
                                        #           Child Loop BB0_157 Depth 5
	ld.w	$t3, $t1, 0
	beq	$t3, $a4, .LBB0_145
# %bb.147:                              #   in Loop: Header=BB0_146 Depth=3
	ld.d	$t3, $t1, 8
	ld.w	$t4, $t3, 0
	blt	$t4, $a4, .LBB0_145
# %bb.148:                              # %.lr.ph846
                                        #   in Loop: Header=BB0_146 Depth=3
	move	$t5, $zero
	ld.d	$t6, $s3, 0
	addi.d	$t7, $t4, 1
	bstrpick.d	$t7, $t7, 31, 0
	addi.d	$t8, $t3, 8
	ori	$fp, $zero, 1
	ori	$s0, $zero, 2
	move	$s1, $t3
	b	.LBB0_152
.LBB0_149:                              # %.critedge690
                                        #   in Loop: Header=BB0_152 Depth=4
	ld.w	$a7, $a7, 0
	mul.d	$a7, $a7, $a5
	add.d	$a7, $t2, $a7
	ld.w	$s4, $a7, 16
	ld.w	$a7, $a7, 12
	ld.w	$s5, $s8, 12
	sub.d	$a7, $a7, $s4
	add.d	$a7, $a7, $s5
	st.w	$a7, $s8, 12
.LBB0_150:                              #   in Loop: Header=BB0_152 Depth=4
	ori	$a7, $zero, 1
.LBB0_151:                              #   in Loop: Header=BB0_152 Depth=4
	addi.d	$fp, $fp, 1
	addi.d	$s1, $s1, 4
	addi.d	$t5, $t5, 1
	addi.d	$t8, $t8, 4
	addi.w	$s0, $s0, 1
	beq	$fp, $t7, .LBB0_145
.LBB0_152:                              #   Parent Loop BB0_115 Depth=1
                                        #     Parent Loop BB0_143 Depth=2
                                        #       Parent Loop BB0_146 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB0_157 Depth 5
	slli.d	$s4, $fp, 2
	ldx.w	$s4, $t3, $s4
	mul.d	$s4, $s4, $a5
	add.d	$s4, $t2, $s4
	ld.w	$s5, $s4, 44
	beq	$s5, $a4, .LBB0_151
# %bb.153:                              #   in Loop: Header=BB0_152 Depth=4
	ld.w	$s5, $s4, 4
	ld.w	$s8, $s4, 0
	mul.d	$s5, $s5, $a6
	add.d	$s7, $t6, $s5
	ld.w	$s6, $s7, 48
	mul.d	$s5, $s8, $a6
	beq	$s6, $a4, .LBB0_155
# %bb.154:                              #   in Loop: Header=BB0_152 Depth=4
	add.d	$s8, $t6, $s5
	ld.w	$s8, $s8, 48
	bne	$s8, $a4, .LBB0_151
.LBB0_155:                              # %._crit_edge1002
                                        #   in Loop: Header=BB0_152 Depth=4
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
	move	$s6, $t5
	move	$s7, $s1
	b	.LBB0_157
	.p2align	4, , 16
.LBB0_156:                              #   in Loop: Header=BB0_157 Depth=5
	addi.d	$s7, $s7, -4
	addi.d	$s6, $s6, -1
	addi.d	$s5, $s5, 4
	addi.w	$s4, $s4, 1
.LBB0_157:                              #   Parent Loop BB0_115 Depth=1
                                        #     Parent Loop BB0_143 Depth=2
                                        #       Parent Loop BB0_146 Depth=3
                                        #         Parent Loop BB0_152 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	blt	$t4, $s4, .LBB0_159
# %bb.158:                              #   in Loop: Header=BB0_157 Depth=5
	ld.w	$s8, $s5, 0
	mul.d	$s8, $s8, $a5
	add.d	$s8, $t2, $s8
	ld.w	$ra, $s8, 44
	beqz	$ra, .LBB0_149
.LBB0_159:                              #   in Loop: Header=BB0_157 Depth=5
	blt	$s6, $a4, .LBB0_156
# %bb.160:                              #   in Loop: Header=BB0_157 Depth=5
	ld.w	$s8, $s7, 0
	mul.d	$s8, $s8, $a5
	add.d	$s8, $t2, $s8
	ld.w	$ra, $s8, 44
	bnez	$ra, .LBB0_156
# %bb.161:                              # %.critedge692
                                        #   in Loop: Header=BB0_152 Depth=4
	ld.w	$a7, $a7, 0
	mul.d	$a7, $a7, $a5
	add.d	$a7, $t2, $a7
	ld.w	$s4, $a7, 16
	ld.w	$a7, $a7, 12
	ld.w	$s5, $s8, 16
	sub.d	$a7, $s4, $a7
	add.d	$a7, $a7, $s5
	st.w	$a7, $s8, 16
	b	.LBB0_150
.LBB0_162:                              # %.preheader707
	move	$a3, $zero
	ld.d	$a1, $a2, 0
	ld.d	$a0, $a0, 0
	ori	$a2, $zero, 1
	pcalau12i	$a4, %got_pc_hi20(edgeList)
	ld.d	$a4, $a4, %got_pc_lo12(edgeList)
	ori	$a5, $zero, 2
	ori	$a6, $zero, 56
	ori	$a7, $zero, 52
	b	.LBB0_164
	.p2align	4, , 16
.LBB0_163:                              # %._crit_edge887
                                        #   in Loop: Header=BB0_164 Depth=1
	andi	$t0, $a3, 1
	ori	$a3, $zero, 1
	bnez	$t0, .LBB0_247
.LBB0_164:                              # %.preheader706
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_168 Depth 2
                                        #       Child Loop BB0_172 Depth 3
                                        #         Child Loop BB0_176 Depth 4
                                        #         Child Loop BB0_192 Depth 4
                                        #     Child Loop BB0_210 Depth 2
                                        #       Child Loop BB0_214 Depth 3
                                        #         Child Loop BB0_218 Depth 4
                                        #         Child Loop BB0_234 Depth 4
	ld.d	$t0, $sp, 104                   # 8-byte Folded Reload
	ld.w	$t3, $t0, 0
	blt	$t3, $a2, .LBB0_206
# %bb.165:                              # %.lr.ph873.preheader
                                        #   in Loop: Header=BB0_164 Depth=1
	ori	$t1, $zero, 1
	b	.LBB0_168
	.p2align	4, , 16
.LBB0_166:                              # %._crit_edge870.loopexit
                                        #   in Loop: Header=BB0_168 Depth=2
	ld.d	$t1, $sp, 104                   # 8-byte Folded Reload
	ld.w	$t3, $t1, 0
.LBB0_167:                              # %._crit_edge870
                                        #   in Loop: Header=BB0_168 Depth=2
	addi.d	$t1, $t0, 1
	bge	$t0, $t3, .LBB0_205
.LBB0_168:                              # %.lr.ph873
                                        #   Parent Loop BB0_164 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_172 Depth 3
                                        #         Child Loop BB0_176 Depth 4
                                        #         Child Loop BB0_192 Depth 4
	move	$t0, $t1
	slli.d	$t1, $t1, 3
	ldx.d	$t1, $a1, $t1
	beqz	$t1, .LBB0_167
# %bb.169:                              # %.lr.ph869
                                        #   in Loop: Header=BB0_168 Depth=2
	ld.d	$t2, $s2, 0
	ld.d	$t3, $a4, 0
	ld.d	$t4, $s3, 0
	b	.LBB0_172
.LBB0_170:                              #   in Loop: Header=BB0_172 Depth=3
	st.w	$fp, $t5, 4
	st.w	$a2, $t5, 12
	.p2align	4, , 16
.LBB0_171:                              # %.loopexit704
                                        #   in Loop: Header=BB0_172 Depth=3
	ld.d	$t1, $t1, 24
	beqz	$t1, .LBB0_166
.LBB0_172:                              #   Parent Loop BB0_164 Depth=1
                                        #     Parent Loop BB0_168 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_176 Depth 4
                                        #         Child Loop BB0_192 Depth 4
	ld.w	$t5, $t1, 0
	beq	$t5, $a2, .LBB0_171
# %bb.173:                              #   in Loop: Header=BB0_172 Depth=3
	ld.d	$t5, $t1, 8
	ld.w	$t6, $t5, 0
	blt	$t6, $a5, .LBB0_171
# %bb.174:                              #   in Loop: Header=BB0_172 Depth=3
	ld.w	$t7, $t5, 4
	mul.d	$t7, $t7, $a6
	add.d	$t7, $t2, $t7
	ld.w	$t8, $t7, 44
	bne	$t8, $a2, .LBB0_190
# %bb.175:                              # %.lr.ph864.preheader
                                        #   in Loop: Header=BB0_172 Depth=3
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
.LBB0_176:                              # %.lr.ph864
                                        #   Parent Loop BB0_164 Depth=1
                                        #     Parent Loop BB0_168 Depth=2
                                        #       Parent Loop BB0_172 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.w	$s6, $s4, 0
	mul.d	$s6, $s6, $a6
	add.d	$s7, $t2, $s6
	ld.w	$s6, $s7, 44
	beqz	$s6, .LBB0_178
# %bb.177:                              #   in Loop: Header=BB0_176 Depth=4
	addi.d	$s5, $s5, -1
	addi.d	$s4, $s4, 4
	bnez	$s5, .LBB0_176
	b	.LBB0_190
.LBB0_178:                              #   in Loop: Header=BB0_172 Depth=3
	ld.w	$s4, $s7, 4
	mul.d	$s4, $s4, $a7
	add.d	$s5, $t4, $s4
	ld.w	$s6, $s5, 4
	ld.w	$s4, $s7, 0
	bge	$s6, $s1, .LBB0_183
# %bb.179:                              #   in Loop: Header=BB0_172 Depth=3
	ld.w	$s1, $s0, 28
	bge	$s1, $fp, .LBB0_181
# %bb.180:                              #   in Loop: Header=BB0_172 Depth=3
	ld.w	$s1, $s0, 12
	beqz	$s1, .LBB0_188
.LBB0_181:                              #   in Loop: Header=BB0_172 Depth=3
	bge	$s6, $fp, .LBB0_183
# %bb.182:                              #   in Loop: Header=BB0_172 Depth=3
	addi.d	$s0, $s5, 4
	st.w	$fp, $s0, 0
.LBB0_183:                              #   in Loop: Header=BB0_172 Depth=3
	mul.d	$fp, $s4, $a7
	add.d	$fp, $t4, $fp
	ld.w	$s0, $fp, 4
	bge	$t8, $s0, .LBB0_190
.LBB0_184:                              #   in Loop: Header=BB0_172 Depth=3
	ld.w	$t8, $t5, 4
	mul.d	$t8, $t8, $a6
	ldx.w	$t8, $t2, $t8
	mul.d	$t8, $t8, $a7
	add.d	$t8, $t4, $t8
	ld.w	$s1, $t8, 24
	bge	$t7, $s1, .LBB0_186
# %bb.185:                              #   in Loop: Header=BB0_172 Depth=3
	ld.w	$s1, $t8, 12
	beqz	$s1, .LBB0_189
.LBB0_186:                              #   in Loop: Header=BB0_172 Depth=3
	bge	$t7, $s0, .LBB0_190
# %bb.187:                              #   in Loop: Header=BB0_172 Depth=3
	addi.d	$t8, $fp, 4
	st.w	$t7, $t8, 0
	b	.LBB0_190
.LBB0_188:                              #   in Loop: Header=BB0_172 Depth=3
	st.w	$s6, $s0, 4
	st.w	$a2, $s0, 12
	mul.d	$fp, $s4, $a7
	add.d	$fp, $t4, $fp
	ld.w	$s0, $fp, 4
	blt	$t8, $s0, .LBB0_184
	b	.LBB0_190
.LBB0_189:                              #   in Loop: Header=BB0_172 Depth=3
	st.w	$s0, $t8, 4
	st.w	$a2, $t8, 12
	.p2align	4, , 16
.LBB0_190:                              # %.loopexit705
                                        #   in Loop: Header=BB0_172 Depth=3
	slli.d	$t7, $t6, 2
	ldx.w	$t7, $t5, $t7
	mul.d	$t7, $t7, $a6
	add.d	$t7, $t2, $t7
	ld.w	$t8, $t7, 44
	bne	$t8, $a2, .LBB0_171
# %bb.191:                              #   in Loop: Header=BB0_172 Depth=3
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
.LBB0_192:                              #   Parent Loop BB0_164 Depth=1
                                        #     Parent Loop BB0_168 Depth=2
                                        #       Parent Loop BB0_172 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	addi.w	$t6, $t6, -1
	blt	$t6, $a5, .LBB0_171
# %bb.193:                              #   in Loop: Header=BB0_192 Depth=4
	ld.w	$s5, $s4, 0
	mul.d	$s5, $s5, $a6
	add.d	$s6, $t2, $s5
	ld.w	$s5, $s6, 44
	addi.d	$s4, $s4, -4
	bnez	$s5, .LBB0_192
# %bb.194:                              #   in Loop: Header=BB0_172 Depth=3
	ld.w	$t6, $s6, 4
	mul.d	$t6, $t6, $a7
	add.d	$s4, $t4, $t6
	ld.w	$s5, $s4, 4
	ld.w	$t6, $s6, 0
	bge	$s5, $s1, .LBB0_199
# %bb.195:                              #   in Loop: Header=BB0_172 Depth=3
	ld.w	$s1, $s0, 28
	bge	$s1, $fp, .LBB0_197
# %bb.196:                              #   in Loop: Header=BB0_172 Depth=3
	ld.w	$s1, $s0, 12
	beqz	$s1, .LBB0_204
.LBB0_197:                              #   in Loop: Header=BB0_172 Depth=3
	bge	$s5, $fp, .LBB0_199
# %bb.198:                              #   in Loop: Header=BB0_172 Depth=3
	addi.d	$s0, $s4, 4
	st.w	$fp, $s0, 0
.LBB0_199:                              #   in Loop: Header=BB0_172 Depth=3
	mul.d	$t6, $t6, $a7
	add.d	$t6, $t4, $t6
	ld.w	$fp, $t6, 4
	bge	$t8, $fp, .LBB0_171
.LBB0_200:                              #   in Loop: Header=BB0_172 Depth=3
	ld.w	$t5, $t5, 0
	mul.d	$t5, $t5, $a6
	ldx.w	$t5, $t2, $t5
	mul.d	$t5, $t5, $a7
	add.d	$t5, $t4, $t5
	ld.w	$t8, $t5, 24
	bge	$t7, $t8, .LBB0_202
# %bb.201:                              #   in Loop: Header=BB0_172 Depth=3
	ld.w	$t8, $t5, 12
	beqz	$t8, .LBB0_170
.LBB0_202:                              #   in Loop: Header=BB0_172 Depth=3
	bge	$t7, $fp, .LBB0_171
# %bb.203:                              #   in Loop: Header=BB0_172 Depth=3
	addi.d	$t5, $t6, 4
	st.w	$t7, $t5, 0
	b	.LBB0_171
.LBB0_204:                              #   in Loop: Header=BB0_172 Depth=3
	st.w	$s5, $s0, 4
	st.w	$a2, $s0, 12
	mul.d	$t6, $t6, $a7
	add.d	$t6, $t4, $t6
	ld.w	$fp, $t6, 4
	bge	$t8, $fp, .LBB0_171
	b	.LBB0_200
	.p2align	4, , 16
.LBB0_205:                              # %.preheader.loopexit
                                        #   in Loop: Header=BB0_164 Depth=1
	ld.d	$t0, $sp, 80                    # 8-byte Folded Reload
	ld.w	$t2, $t0, 0
.LBB0_206:                              # %.preheader
                                        #   in Loop: Header=BB0_164 Depth=1
	blt	$t2, $a2, .LBB0_163
# %bb.207:                              # %.lr.ph886.preheader
                                        #   in Loop: Header=BB0_164 Depth=1
	ori	$t1, $zero, 1
	b	.LBB0_210
	.p2align	4, , 16
.LBB0_208:                              # %._crit_edge883.loopexit
                                        #   in Loop: Header=BB0_210 Depth=2
	ld.d	$t1, $sp, 80                    # 8-byte Folded Reload
	ld.w	$t2, $t1, 0
.LBB0_209:                              # %._crit_edge883
                                        #   in Loop: Header=BB0_210 Depth=2
	addi.d	$t1, $t0, 1
	bge	$t0, $t2, .LBB0_163
.LBB0_210:                              # %.lr.ph886
                                        #   Parent Loop BB0_164 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_214 Depth 3
                                        #         Child Loop BB0_218 Depth 4
                                        #         Child Loop BB0_234 Depth 4
	move	$t0, $t1
	slli.d	$t1, $t1, 3
	ldx.d	$t1, $a0, $t1
	beqz	$t1, .LBB0_209
# %bb.211:                              # %.lr.ph882
                                        #   in Loop: Header=BB0_210 Depth=2
	ld.d	$t2, $s2, 0
	ld.d	$t3, $a4, 0
	ld.d	$t4, $s3, 0
	b	.LBB0_214
.LBB0_212:                              #   in Loop: Header=BB0_214 Depth=3
	st.w	$fp, $t7, 0
	st.w	$a2, $t7, 8
	.p2align	4, , 16
.LBB0_213:                              # %.loopexit
                                        #   in Loop: Header=BB0_214 Depth=3
	ld.d	$t1, $t1, 24
	beqz	$t1, .LBB0_208
.LBB0_214:                              #   Parent Loop BB0_164 Depth=1
                                        #     Parent Loop BB0_210 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_218 Depth 4
                                        #         Child Loop BB0_234 Depth 4
	ld.w	$t5, $t1, 0
	beq	$t5, $a2, .LBB0_213
# %bb.215:                              #   in Loop: Header=BB0_214 Depth=3
	ld.d	$t6, $t1, 8
	ld.w	$t5, $t6, 0
	blt	$t5, $a5, .LBB0_213
# %bb.216:                              #   in Loop: Header=BB0_214 Depth=3
	ld.w	$t7, $t6, 4
	mul.d	$t7, $t7, $a6
	add.d	$t7, $t2, $t7
	ld.w	$t8, $t7, 44
	bne	$t8, $a2, .LBB0_232
# %bb.217:                              # %.lr.ph877.preheader
                                        #   in Loop: Header=BB0_214 Depth=3
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
.LBB0_218:                              # %.lr.ph877
                                        #   Parent Loop BB0_164 Depth=1
                                        #     Parent Loop BB0_210 Depth=2
                                        #       Parent Loop BB0_214 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.w	$s6, $s4, 0
	mul.d	$s6, $s6, $a6
	add.d	$s7, $t2, $s6
	ld.w	$s6, $s7, 44
	beqz	$s6, .LBB0_220
# %bb.219:                              #   in Loop: Header=BB0_218 Depth=4
	addi.d	$s5, $s5, -1
	addi.d	$s4, $s4, 4
	bnez	$s5, .LBB0_218
	b	.LBB0_232
.LBB0_220:                              #   in Loop: Header=BB0_214 Depth=3
	ld.w	$s4, $s7, 4
	mul.d	$s5, $s4, $a7
	ldx.w	$s6, $t4, $s5
	ld.w	$s4, $s7, 0
	bge	$s6, $s1, .LBB0_225
# %bb.221:                              #   in Loop: Header=BB0_214 Depth=3
	ld.w	$s1, $s0, 20
	bge	$s1, $fp, .LBB0_223
# %bb.222:                              #   in Loop: Header=BB0_214 Depth=3
	ld.w	$s1, $s0, 8
	beqz	$s1, .LBB0_230
.LBB0_223:                              #   in Loop: Header=BB0_214 Depth=3
	bge	$s6, $fp, .LBB0_225
# %bb.224:                              #   in Loop: Header=BB0_214 Depth=3
	add.d	$s0, $t4, $s5
	st.w	$fp, $s0, 0
.LBB0_225:                              #   in Loop: Header=BB0_214 Depth=3
	mul.d	$fp, $s4, $a7
	ldx.w	$s0, $t4, $fp
	bge	$t8, $s0, .LBB0_232
.LBB0_226:                              #   in Loop: Header=BB0_214 Depth=3
	ld.w	$t8, $t6, 4
	mul.d	$t8, $t8, $a6
	ldx.w	$t8, $t2, $t8
	mul.d	$t8, $t8, $a7
	add.d	$t8, $t4, $t8
	ld.w	$s1, $t8, 16
	bge	$t7, $s1, .LBB0_228
# %bb.227:                              #   in Loop: Header=BB0_214 Depth=3
	ld.w	$s1, $t8, 8
	beqz	$s1, .LBB0_231
.LBB0_228:                              #   in Loop: Header=BB0_214 Depth=3
	bge	$t7, $s0, .LBB0_232
# %bb.229:                              #   in Loop: Header=BB0_214 Depth=3
	add.d	$t8, $t4, $fp
	st.w	$t7, $t8, 0
	b	.LBB0_232
.LBB0_230:                              #   in Loop: Header=BB0_214 Depth=3
	st.w	$s6, $s0, 0
	st.w	$a2, $s0, 8
	mul.d	$fp, $s4, $a7
	ldx.w	$s0, $t4, $fp
	blt	$t8, $s0, .LBB0_226
	b	.LBB0_232
.LBB0_231:                              #   in Loop: Header=BB0_214 Depth=3
	st.w	$s0, $t8, 0
	st.w	$a2, $t8, 8
	.p2align	4, , 16
.LBB0_232:                              # %.loopexit703
                                        #   in Loop: Header=BB0_214 Depth=3
	slli.d	$t7, $t5, 2
	ldx.w	$t7, $t6, $t7
	mul.d	$t7, $t7, $a6
	add.d	$t8, $t2, $t7
	ld.w	$t7, $t8, 44
	bne	$t7, $a2, .LBB0_213
# %bb.233:                              #   in Loop: Header=BB0_214 Depth=3
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
.LBB0_234:                              #   Parent Loop BB0_164 Depth=1
                                        #     Parent Loop BB0_210 Depth=2
                                        #       Parent Loop BB0_214 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	addi.w	$t5, $t5, -1
	blt	$t5, $a5, .LBB0_213
# %bb.235:                              #   in Loop: Header=BB0_234 Depth=4
	ld.w	$s5, $s4, 0
	mul.d	$s5, $s5, $a6
	add.d	$s6, $t2, $s5
	ld.w	$s5, $s6, 44
	addi.d	$s4, $s4, -4
	bnez	$s5, .LBB0_234
# %bb.236:                              #   in Loop: Header=BB0_214 Depth=3
	ld.w	$t5, $s6, 4
	mul.d	$s4, $t5, $a7
	ldx.w	$s5, $t4, $s4
	ld.w	$t5, $s6, 0
	bge	$s5, $s1, .LBB0_241
# %bb.237:                              #   in Loop: Header=BB0_214 Depth=3
	ld.w	$s1, $s0, 20
	bge	$s1, $fp, .LBB0_239
# %bb.238:                              #   in Loop: Header=BB0_214 Depth=3
	ld.w	$s1, $s0, 8
	beqz	$s1, .LBB0_246
.LBB0_239:                              #   in Loop: Header=BB0_214 Depth=3
	bge	$s5, $fp, .LBB0_241
# %bb.240:                              #   in Loop: Header=BB0_214 Depth=3
	add.d	$s0, $t4, $s4
	st.w	$fp, $s0, 0
.LBB0_241:                              #   in Loop: Header=BB0_214 Depth=3
	mul.d	$t5, $t5, $a7
	ldx.w	$fp, $t4, $t5
	bge	$t8, $fp, .LBB0_213
.LBB0_242:                              #   in Loop: Header=BB0_214 Depth=3
	ld.w	$t7, $t7, 0
	mul.d	$t7, $t7, $a6
	ldx.w	$t7, $t2, $t7
	mul.d	$t7, $t7, $a7
	add.d	$t7, $t4, $t7
	ld.w	$t8, $t7, 16
	bge	$t6, $t8, .LBB0_244
# %bb.243:                              #   in Loop: Header=BB0_214 Depth=3
	ld.w	$t8, $t7, 8
	beqz	$t8, .LBB0_212
.LBB0_244:                              #   in Loop: Header=BB0_214 Depth=3
	bge	$t6, $fp, .LBB0_213
# %bb.245:                              #   in Loop: Header=BB0_214 Depth=3
	add.d	$t5, $t4, $t5
	st.w	$t6, $t5, 0
	b	.LBB0_213
.LBB0_246:                              #   in Loop: Header=BB0_214 Depth=3
	st.w	$s5, $s0, 0
	st.w	$a2, $s0, 8
	mul.d	$t5, $t5, $a7
	ldx.w	$fp, $t4, $t5
	bge	$t8, $fp, .LBB0_213
	b	.LBB0_242
.LBB0_247:
	ld.d	$s8, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 184                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 192                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 200                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 208                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 216                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 224
	ret
.Lfunc_end0:
	.size	reduceg, .Lfunc_end0-reduceg
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
