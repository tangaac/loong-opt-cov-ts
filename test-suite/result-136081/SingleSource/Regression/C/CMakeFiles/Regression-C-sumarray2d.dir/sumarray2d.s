	.file	"sumarray2d.c"
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0                          # -- Begin function SumArray
.LCPI0_0:
	.word	0                               # 0x0
	.word	4                               # 0x4
	.word	4                               # 0x4
	.word	4                               # 0x4
	.word	4                               # 0x4
	.word	4                               # 0x4
	.word	4                               # 0x4
	.word	4                               # 0x4
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI0_1:
	.word	0                               # 0x0
	.word	4                               # 0x4
	.word	4                               # 0x4
	.word	4                               # 0x4
	.text
	.globl	SumArray
	.p2align	5
	.type	SumArray,@function
SumArray:                               # @SumArray
# %bb.0:
	move	$a3, $zero
	beqz	$a1, .LBB0_17
# %bb.1:
	beqz	$a2, .LBB0_17
# %bb.2:                                # %.preheader.us.preheader
	move	$a4, $zero
	move	$a3, $zero
	bstrpick.d	$a1, $a1, 31, 0
	bstrpick.d	$a5, $a2, 31, 0
	bstrpick.d	$a6, $a2, 31, 4
	slli.d	$a6, $a6, 4
	andi	$a7, $a2, 12
	bstrpick.d	$t0, $a2, 31, 2
	slli.d	$t0, $t0, 2
	addi.d	$t1, $a0, 32
	sub.d	$t2, $zero, $t0
	ori	$t3, $zero, 4
	pcalau12i	$t4, %pc_hi20(.LCPI0_1)
	vld	$vr0, $t4, %pc_lo12(.LCPI0_1)
	ori	$t4, $zero, 16
	vinsgr2vr.w	$vr1, $zero, 0
	xvrepli.b	$xr2, 0
	b	.LBB0_4
	.p2align	4, , 16
.LBB0_3:                                # %._crit_edge.us
                                        #   in Loop: Header=BB0_4 Depth=1
	addi.d	$a4, $a4, 1
	addi.d	$t1, $t1, 400
	addi.d	$a0, $a0, 400
	beq	$a4, $a1, .LBB0_17
.LBB0_4:                                # %iter.check
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_9 Depth 2
                                        #     Child Loop BB0_13 Depth 2
                                        #     Child Loop BB0_16 Depth 2
	bgeu	$a2, $t3, .LBB0_6
# %bb.5:                                #   in Loop: Header=BB0_4 Depth=1
	move	$t6, $zero
	b	.LBB0_15
	.p2align	4, , 16
.LBB0_6:                                # %vector.main.loop.iter.check
                                        #   in Loop: Header=BB0_4 Depth=1
	bgeu	$a2, $t4, .LBB0_8
# %bb.7:                                #   in Loop: Header=BB0_4 Depth=1
	move	$t5, $zero
	b	.LBB0_12
	.p2align	4, , 16
.LBB0_8:                                # %vector.ph
                                        #   in Loop: Header=BB0_4 Depth=1
	xvinsgr2vr.w	$xr4, $a3, 0
	pcalau12i	$a3, %pc_hi20(.LCPI0_0)
	xvld	$xr3, $a3, %pc_lo12(.LCPI0_0)
	xvpermi.d	$xr4, $xr4, 68
	xvinsgr2vr.w	$xr5, $zero, 0
	xvpermi.d	$xr5, $xr5, 68
	xvshuf.w	$xr3, $xr5, $xr4
	move	$a3, $t1
	move	$t5, $a6
	xvori.b	$xr4, $xr2, 0
	.p2align	4, , 16
.LBB0_9:                                # %vector.body
                                        #   Parent Loop BB0_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvld	$xr5, $a3, -32
	xvld	$xr6, $a3, 0
	xvadd.w	$xr3, $xr5, $xr3
	xvadd.w	$xr4, $xr6, $xr4
	addi.d	$t5, $t5, -16
	addi.d	$a3, $a3, 64
	bnez	$t5, .LBB0_9
# %bb.10:                               # %middle.block
                                        #   in Loop: Header=BB0_4 Depth=1
	xvadd.w	$xr3, $xr4, $xr3
	xvpermi.d	$xr4, $xr3, 78
	xvshuf4i.w	$xr4, $xr4, 228
	xvadd.w	$xr3, $xr3, $xr4
	xvpermi.d	$xr4, $xr3, 68
	xvshuf4i.w	$xr4, $xr4, 14
	xvadd.w	$xr3, $xr3, $xr4
	xvpermi.d	$xr4, $xr3, 68
	xvrepl128vei.w	$xr4, $xr4, 1
	xvadd.w	$xr3, $xr3, $xr4
	xvpickve2gr.w	$a3, $xr3, 0
	beq	$a6, $a5, .LBB0_3
# %bb.11:                               # %vec.epilog.iter.check
                                        #   in Loop: Header=BB0_4 Depth=1
	move	$t5, $a6
	move	$t6, $a6
	beqz	$a7, .LBB0_15
.LBB0_12:                               # %vec.epilog.ph
                                        #   in Loop: Header=BB0_4 Depth=1
	vinsgr2vr.w	$vr4, $a3, 0
	vori.b	$vr3, $vr0, 0
	vshuf.w	$vr3, $vr1, $vr4
	add.d	$a3, $t2, $t5
	alsl.d	$t5, $t5, $a0, 2
	.p2align	4, , 16
.LBB0_13:                               # %vec.epilog.vector.body
                                        #   Parent Loop BB0_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr4, $t5, 0
	vadd.w	$vr3, $vr4, $vr3
	addi.d	$a3, $a3, 4
	addi.d	$t5, $t5, 16
	bnez	$a3, .LBB0_13
# %bb.14:                               # %vec.epilog.middle.block
                                        #   in Loop: Header=BB0_4 Depth=1
	vshuf4i.w	$vr4, $vr3, 14
	vadd.w	$vr3, $vr3, $vr4
	vreplvei.w	$vr4, $vr3, 1
	vadd.w	$vr3, $vr3, $vr4
	vpickve2gr.w	$a3, $vr3, 0
	move	$t6, $t0
	beq	$t0, $a5, .LBB0_3
.LBB0_15:                               # %vec.epilog.scalar.ph.preheader
                                        #   in Loop: Header=BB0_4 Depth=1
	slli.d	$t5, $t6, 2
	sub.d	$t6, $a5, $t6
	.p2align	4, , 16
.LBB0_16:                               # %vec.epilog.scalar.ph
                                        #   Parent Loop BB0_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.w	$t7, $a0, $t5
	add.w	$a3, $t7, $a3
	addi.d	$t6, $t6, -1
	addi.d	$t5, $t5, 4
	bnez	$t6, .LBB0_16
	b	.LBB0_3
.LBB0_17:                               # %._crit_edge16
	move	$a0, $a3
	ret
.Lfunc_end0:
	.size	SumArray, .Lfunc_end0-SumArray
                                        # -- End function
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0                          # -- Begin function main
.LCPI1_0:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	4                               # 0x4
	.word	5                               # 0x5
	.word	6                               # 0x6
	.word	7                               # 0x7
.LCPI1_1:
	.dword	4                               # 0x4
	.dword	5                               # 0x5
	.dword	6                               # 0x6
	.dword	7                               # 0x7
.LCPI1_2:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
	.dword	2                               # 0x2
	.dword	3                               # 0x3
.LCPI1_3:
	.word	0                               # 0x0
	.word	4                               # 0x4
	.word	4                               # 0x4
	.word	4                               # 0x4
	.word	4                               # 0x4
	.word	4                               # 0x4
	.word	4                               # 0x4
	.word	4                               # 0x4
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI1_4:
	.word	0                               # 0x0
	.word	4                               # 0x4
	.word	4                               # 0x4
	.word	4                               # 0x4
	.text
	.globl	main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:                                # %vector.ph
	addi.d	$sp, $sp, -2032
	st.d	$ra, $sp, 2024                  # 8-byte Folded Spill
	lu12i.w	$a0, 9
	ori	$a0, $a0, 1120
	sub.d	$sp, $sp, $a0
	lu12i.w	$a0, 9
	ori	$a0, $a0, 1920
	addi.d	$a1, $sp, 8
	pcalau12i	$a2, %pc_hi20(.LCPI1_0)
	xvld	$xr0, $a2, %pc_lo12(.LCPI1_0)
	add.d	$a1, $a1, $a0
	ori	$a0, $zero, 96
	addi.d	$a2, $sp, 1624
	.p2align	4, , 16
.LBB1_1:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	xvneg.w	$xr1, $xr0
	xvpickve2gr.w	$a3, $xr1, 0
	st.w	$a3, $a2, -1616
	xvpickve2gr.w	$a3, $xr1, 1
	st.w	$a3, $a2, -1212
	xvpickve2gr.w	$a3, $xr1, 2
	st.w	$a3, $a2, -808
	xvpickve2gr.w	$a3, $xr1, 3
	st.w	$a3, $a2, -404
	xvpickve2gr.w	$a3, $xr1, 4
	st.w	$a3, $a2, 0
	xvpickve2gr.w	$a3, $xr1, 5
	st.w	$a3, $a2, 404
	xvpickve2gr.w	$a3, $xr1, 6
	st.w	$a3, $a2, 808
	xvpickve2gr.w	$a3, $xr1, 7
	st.w	$a3, $a2, 1212
	xvaddi.wu	$xr0, $xr0, 8
	addi.d	$a0, $a0, -8
	addi.d	$a2, $a2, 2047
	addi.d	$a2, $a2, 1185
	bnez	$a0, .LBB1_1
# %bb.2:                                # %scalar.ph
	move	$a0, $zero
	addi.w	$a2, $zero, -96
	lu32i.d	$a2, 0
	st.w	$a2, $a1, 0
	addi.w	$a2, $zero, -97
	lu32i.d	$a2, 0
	st.w	$a2, $a1, 404
	addi.w	$a2, $zero, -98
	lu32i.d	$a2, 0
	st.w	$a2, $a1, 808
	addi.w	$a2, $zero, -99
	lu32i.d	$a2, 0
	st.w	$a2, $a1, 1212
	ori	$a1, $zero, 7
	addi.d	$a2, $sp, 24
	pcalau12i	$a3, %pc_hi20(.LCPI1_1)
	xvld	$xr0, $a3, %pc_lo12(.LCPI1_1)
	pcalau12i	$a3, %pc_hi20(.LCPI1_2)
	xvld	$xr1, $a3, %pc_lo12(.LCPI1_2)
	xvrepli.b	$xr2, -1
	ori	$a3, $zero, 384
	ori	$a4, $zero, 96
	ori	$a5, $zero, 400
	addi.d	$a6, $sp, 8
	ori	$a7, $zero, 98
	ori	$t0, $zero, 100
	ori	$t1, $zero, 99
	ori	$t2, $zero, 97
	b	.LBB1_5
	.p2align	4, , 16
.LBB1_3:                                #   in Loop: Header=BB1_5 Depth=1
	add.d	$t3, $a6, $t3
	addi.d	$t4, $a0, 99
	st.w	$t4, $t3, 396
.LBB1_4:                                # %.loopexit
                                        #   in Loop: Header=BB1_5 Depth=1
	addi.d	$a0, $a0, 1
	addi.d	$a1, $a1, 1
	addi.d	$a2, $a2, 400
	beq	$a0, $t0, .LBB1_27
.LBB1_5:                                # %vector.ph27
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_7 Depth 2
	move	$t3, $zero
	xvreplgr2vr.d	$xr3, $a0
	move	$t4, $a1
	xvori.b	$xr4, $xr1, 0
	xvori.b	$xr5, $xr0, 0
	b	.LBB1_7
	.p2align	4, , 16
.LBB1_6:                                # %pred.store.continue45
                                        #   in Loop: Header=BB1_7 Depth=2
	xvaddi.du	$xr4, $xr4, 8
	xvaddi.du	$xr5, $xr5, 8
	addi.d	$t3, $t3, 32
	addi.d	$t4, $t4, 8
	beq	$t3, $a3, .LBB1_23
.LBB1_7:                                # %vector.body28
                                        #   Parent Loop BB1_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvseq.d	$xr6, $xr4, $xr3
	xvxor.v	$xr6, $xr6, $xr2
	xvpickve2gr.d	$t5, $xr6, 0
	andi	$t6, $t5, 1
	add.d	$t5, $a2, $t3
	bnez	$t6, .LBB1_16
# %bb.8:                                # %pred.store.continue
                                        #   in Loop: Header=BB1_7 Depth=2
	xvpickve2gr.d	$t6, $xr6, 1
	andi	$t6, $t6, 1
	bnez	$t6, .LBB1_17
.LBB1_9:                                # %pred.store.continue33
                                        #   in Loop: Header=BB1_7 Depth=2
	xvpickve2gr.d	$t6, $xr6, 2
	andi	$t6, $t6, 1
	bnez	$t6, .LBB1_18
.LBB1_10:                               # %pred.store.continue35
                                        #   in Loop: Header=BB1_7 Depth=2
	xvpickve2gr.d	$t6, $xr6, 3
	andi	$t6, $t6, 1
	beqz	$t6, .LBB1_12
.LBB1_11:                               # %pred.store.if36
                                        #   in Loop: Header=BB1_7 Depth=2
	addi.d	$t6, $t4, -4
	st.w	$t6, $t5, -4
.LBB1_12:                               # %pred.store.continue37
                                        #   in Loop: Header=BB1_7 Depth=2
	xvseq.d	$xr6, $xr5, $xr3
	xvxor.v	$xr6, $xr6, $xr2
	xvpickve2gr.d	$t6, $xr6, 0
	andi	$t6, $t6, 1
	bnez	$t6, .LBB1_19
# %bb.13:                               # %pred.store.continue39
                                        #   in Loop: Header=BB1_7 Depth=2
	xvpickve2gr.d	$t6, $xr6, 1
	andi	$t6, $t6, 1
	bnez	$t6, .LBB1_20
.LBB1_14:                               # %pred.store.continue41
                                        #   in Loop: Header=BB1_7 Depth=2
	xvpickve2gr.d	$t6, $xr6, 2
	andi	$t6, $t6, 1
	bnez	$t6, .LBB1_21
.LBB1_15:                               # %pred.store.continue43
                                        #   in Loop: Header=BB1_7 Depth=2
	xvpickve2gr.d	$t6, $xr6, 3
	andi	$t6, $t6, 1
	beqz	$t6, .LBB1_6
	b	.LBB1_22
	.p2align	4, , 16
.LBB1_16:                               # %pred.store.if
                                        #   in Loop: Header=BB1_7 Depth=2
	addi.d	$t6, $t4, -7
	st.w	$t6, $t5, -16
	xvpickve2gr.d	$t6, $xr6, 1
	andi	$t6, $t6, 1
	beqz	$t6, .LBB1_9
.LBB1_17:                               # %pred.store.if32
                                        #   in Loop: Header=BB1_7 Depth=2
	addi.d	$t6, $t4, -6
	st.w	$t6, $t5, -12
	xvpickve2gr.d	$t6, $xr6, 2
	andi	$t6, $t6, 1
	beqz	$t6, .LBB1_10
.LBB1_18:                               # %pred.store.if34
                                        #   in Loop: Header=BB1_7 Depth=2
	addi.d	$t6, $t4, -5
	st.w	$t6, $t5, -8
	xvpickve2gr.d	$t6, $xr6, 3
	andi	$t6, $t6, 1
	bnez	$t6, .LBB1_11
	b	.LBB1_12
	.p2align	4, , 16
.LBB1_19:                               # %pred.store.if38
                                        #   in Loop: Header=BB1_7 Depth=2
	addi.d	$t6, $t4, -3
	stx.w	$t6, $a2, $t3
	xvpickve2gr.d	$t6, $xr6, 1
	andi	$t6, $t6, 1
	beqz	$t6, .LBB1_14
.LBB1_20:                               # %pred.store.if40
                                        #   in Loop: Header=BB1_7 Depth=2
	addi.d	$t6, $t4, -2
	st.w	$t6, $t5, 4
	xvpickve2gr.d	$t6, $xr6, 2
	andi	$t6, $t6, 1
	beqz	$t6, .LBB1_15
.LBB1_21:                               # %pred.store.if42
                                        #   in Loop: Header=BB1_7 Depth=2
	addi.d	$t6, $t4, -1
	st.w	$t6, $t5, 8
	xvpickve2gr.d	$t6, $xr6, 3
	andi	$t6, $t6, 1
	beqz	$t6, .LBB1_6
.LBB1_22:                               # %pred.store.if44
                                        #   in Loop: Header=BB1_7 Depth=2
	st.w	$t4, $t5, 12
	b	.LBB1_6
	.p2align	4, , 16
.LBB1_23:                               # %scalar.ph26
                                        #   in Loop: Header=BB1_5 Depth=1
	mul.d	$t3, $a0, $a5
	beq	$a0, $a4, .LBB1_25
# %bb.24:                               # %scalar.ph26.1
                                        #   in Loop: Header=BB1_5 Depth=1
	add.d	$t4, $a6, $t3
	addi.d	$t5, $a0, 96
	st.w	$t5, $t4, 384
	beq	$a0, $t2, .LBB1_26
.LBB1_25:                               # %scalar.ph26.2
                                        #   in Loop: Header=BB1_5 Depth=1
	add.d	$t4, $a6, $t3
	addi.d	$t5, $a0, 97
	st.w	$t5, $t4, 388
	beq	$a0, $a7, .LBB1_3
.LBB1_26:                               # %scalar.ph26.3
                                        #   in Loop: Header=BB1_5 Depth=1
	add.d	$t4, $a6, $t3
	addi.d	$t5, $a0, 98
	st.w	$t5, $t4, 392
	bne	$a0, $t1, .LBB1_3
	b	.LBB1_4
.LBB1_27:                               # %vector.ph51.preheader
	move	$a3, $zero
	ori	$a0, $zero, 100
	addi.d	$a1, $sp, 200
	pcalau12i	$a2, %pc_hi20(.LCPI1_3)
	xvld	$xr0, $a2, %pc_lo12(.LCPI1_3)
	pcalau12i	$a2, %pc_hi20(.LCPI1_4)
	vld	$vr1, $a2, %pc_lo12(.LCPI1_4)
	xvinsgr2vr.w	$xr2, $zero, 0
	xvpermi.d	$xr2, $xr2, 68
	vinsgr2vr.w	$vr3, $zero, 0
	.p2align	4, , 16
.LBB1_28:                               # %vector.ph51
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr4, $a1, 160
	xvld	$xr5, $a1, -96
	xvld	$xr6, $a1, -160
	xvld	$xr7, $a1, -32
	xvld	$xr8, $a1, 32
	xvld	$xr9, $a1, 96
	xvadd.w	$xr5, $xr5, $xr6
	xvadd.w	$xr5, $xr7, $xr5
	xvadd.w	$xr5, $xr8, $xr5
	xvadd.w	$xr5, $xr9, $xr5
	xvadd.w	$xr4, $xr4, $xr5
	xvld	$xr5, $a1, 128
	xvld	$xr6, $a1, 64
	xvld	$xr7, $a1, 0
	xvld	$xr8, $a1, -64
	xvld	$xr9, $a1, -128
	xvld	$xr10, $a1, -192
	xvinsgr2vr.w	$xr11, $a3, 0
	xvpermi.d	$xr11, $xr11, 68
	xvori.b	$xr12, $xr0, 0
	xvshuf.w	$xr12, $xr2, $xr11
	xvadd.w	$xr10, $xr10, $xr12
	xvadd.w	$xr9, $xr9, $xr10
	xvadd.w	$xr8, $xr8, $xr9
	xvadd.w	$xr7, $xr7, $xr8
	xvadd.w	$xr6, $xr6, $xr7
	xvadd.w	$xr5, $xr5, $xr6
	xvadd.w	$xr4, $xr4, $xr5
	xvpermi.d	$xr5, $xr4, 78
	xvshuf4i.w	$xr5, $xr5, 228
	xvadd.w	$xr4, $xr4, $xr5
	xvpermi.d	$xr5, $xr4, 68
	xvshuf4i.w	$xr5, $xr5, 14
	xvadd.w	$xr4, $xr4, $xr5
	xvpermi.d	$xr5, $xr4, 68
	xvrepl128vei.w	$xr5, $xr5, 1
	xvadd.w	$xr4, $xr4, $xr5
	vld	$vr5, $a1, 192
	xvpickve2gr.w	$a2, $xr4, 0
	vinsgr2vr.w	$vr4, $a2, 0
	vori.b	$vr6, $vr1, 0
	vshuf.w	$vr6, $vr3, $vr4
	vadd.w	$vr4, $vr5, $vr6
	vshuf4i.w	$vr5, $vr4, 14
	vadd.w	$vr4, $vr4, $vr5
	vreplvei.w	$vr5, $vr4, 1
	vadd.w	$vr4, $vr4, $vr5
	vpickve2gr.w	$a3, $vr4, 0
	addi.d	$a0, $a0, -1
	addi.d	$a1, $a1, 400
	bnez	$a0, .LBB1_28
# %bb.29:                               # %SumArray.exit
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	ori	$a1, $zero, 100
	ori	$a2, $zero, 100
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	lu12i.w	$a1, 9
	ori	$a1, $a1, 1120
	add.d	$sp, $sp, $a1
	ld.d	$ra, $sp, 2024                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 2032
	ret
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Sum(Array[%d,%d] = %d\n"
	.size	.L.str, 23

	.section	".note.GNU-stack","",@progbits
	.addrsig
