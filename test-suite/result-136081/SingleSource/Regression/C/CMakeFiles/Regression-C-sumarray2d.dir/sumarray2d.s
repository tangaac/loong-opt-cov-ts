	.file	"sumarray2d.c"
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function SumArray
.LCPI0_0:
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
	beqz	$a1, .LBB0_11
# %bb.1:
	beqz	$a2, .LBB0_11
# %bb.2:                                # %.preheader.us.preheader
	move	$a4, $zero
	move	$a3, $zero
	bstrpick.d	$a1, $a1, 31, 0
	bstrpick.d	$a5, $a2, 31, 0
	bstrpick.d	$a6, $a2, 31, 3
	slli.d	$a6, $a6, 3
	addi.d	$a7, $a0, 16
	pcalau12i	$t0, %pc_hi20(.LCPI0_0)
	vld	$vr0, $t0, %pc_lo12(.LCPI0_0)
	ori	$t0, $zero, 8
	vinsgr2vr.w	$vr1, $zero, 0
	vrepli.b	$vr2, 0
	b	.LBB0_4
	.p2align	4, , 16
.LBB0_3:                                # %._crit_edge.us
                                        #   in Loop: Header=BB0_4 Depth=1
	addi.d	$a4, $a4, 1
	addi.d	$a7, $a7, 400
	addi.d	$a0, $a0, 400
	beq	$a4, $a1, .LBB0_11
.LBB0_4:                                # %.preheader.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_7 Depth 2
                                        #     Child Loop BB0_10 Depth 2
	bgeu	$a2, $t0, .LBB0_6
# %bb.5:                                #   in Loop: Header=BB0_4 Depth=1
	move	$t2, $zero
	b	.LBB0_9
	.p2align	4, , 16
.LBB0_6:                                # %vector.ph
                                        #   in Loop: Header=BB0_4 Depth=1
	vinsgr2vr.w	$vr4, $a3, 0
	vori.b	$vr3, $vr0, 0
	vshuf.w	$vr3, $vr1, $vr4
	move	$a3, $a7
	move	$t1, $a6
	vori.b	$vr4, $vr2, 0
	.p2align	4, , 16
.LBB0_7:                                # %vector.body
                                        #   Parent Loop BB0_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr5, $a3, -16
	vld	$vr6, $a3, 0
	vadd.w	$vr3, $vr5, $vr3
	vadd.w	$vr4, $vr6, $vr4
	addi.d	$t1, $t1, -8
	addi.d	$a3, $a3, 32
	bnez	$t1, .LBB0_7
# %bb.8:                                # %middle.block
                                        #   in Loop: Header=BB0_4 Depth=1
	vadd.w	$vr3, $vr4, $vr3
	vshuf4i.w	$vr4, $vr3, 14
	vadd.w	$vr3, $vr3, $vr4
	vreplvei.w	$vr4, $vr3, 1
	vadd.w	$vr3, $vr3, $vr4
	vpickve2gr.w	$a3, $vr3, 0
	move	$t2, $a6
	beq	$a6, $a5, .LBB0_3
.LBB0_9:                                # %scalar.ph.preheader
                                        #   in Loop: Header=BB0_4 Depth=1
	alsl.d	$t1, $t2, $a0, 2
	sub.d	$t2, $a5, $t2
	.p2align	4, , 16
.LBB0_10:                               # %scalar.ph
                                        #   Parent Loop BB0_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t3, $t1, 0
	add.w	$a3, $t3, $a3
	addi.d	$t2, $t2, -1
	addi.d	$t1, $t1, 4
	bnez	$t2, .LBB0_10
	b	.LBB0_3
.LBB0_11:                               # %._crit_edge16
	move	$a0, $a3
	ret
.Lfunc_end0:
	.size	SumArray, .Lfunc_end0-SumArray
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function main
.LCPI1_0:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
.LCPI1_1:
	.dword	2                               # 0x2
	.dword	3                               # 0x3
.LCPI1_2:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
.LCPI1_3:
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
	ori	$a1, $a0, 1920
	addi.d	$a0, $sp, 8
	add.d	$a2, $a0, $a1
	pcalau12i	$a1, %pc_hi20(.LCPI1_0)
	vld	$vr0, $a1, %pc_lo12(.LCPI1_0)
	ori	$a1, $zero, 96
	ori	$a3, $zero, 1616
	vrepli.w	$vr1, -4
	.p2align	4, , 16
.LBB1_1:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a4, $a0, $a3
	vneg.w	$vr2, $vr0
	vsub.w	$vr3, $vr1, $vr0
	vpickve2gr.w	$a5, $vr2, 0
	st.w	$a5, $a4, -1616
	vpickve2gr.w	$a5, $vr2, 1
	st.w	$a5, $a4, -1212
	vpickve2gr.w	$a5, $vr2, 2
	st.w	$a5, $a4, -808
	vpickve2gr.w	$a5, $vr2, 3
	st.w	$a5, $a4, -404
	vpickve2gr.w	$a5, $vr3, 0
	stx.w	$a5, $a3, $a0
	vpickve2gr.w	$a5, $vr3, 1
	st.w	$a5, $a4, 404
	vpickve2gr.w	$a5, $vr3, 2
	st.w	$a5, $a4, 808
	vpickve2gr.w	$a5, $vr3, 3
	st.w	$a5, $a4, 1212
	vaddi.wu	$vr0, $vr0, 8
	addi.d	$a1, $a1, -8
	addi.d	$a3, $a3, 2047
	addi.d	$a3, $a3, 1185
	bnez	$a1, .LBB1_1
# %bb.2:                                # %scalar.ph
	move	$a0, $zero
	move	$a1, $zero
	addi.w	$a3, $zero, -96
	lu32i.d	$a3, 0
	st.w	$a3, $a2, 0
	addi.w	$a3, $zero, -97
	lu32i.d	$a3, 0
	st.w	$a3, $a2, 404
	addi.w	$a3, $zero, -98
	lu32i.d	$a3, 0
	st.w	$a3, $a2, 808
	addi.w	$a3, $zero, -99
	lu32i.d	$a3, 0
	st.w	$a3, $a2, 1212
	ori	$a2, $zero, 3
	addi.d	$a3, $sp, 8
	pcalau12i	$a4, %pc_hi20(.LCPI1_1)
	vld	$vr0, $a4, %pc_lo12(.LCPI1_1)
	pcalau12i	$a4, %pc_hi20(.LCPI1_2)
	vld	$vr1, $a4, %pc_lo12(.LCPI1_2)
	vrepli.b	$vr2, -1
	ori	$a4, $zero, 400
	ori	$a5, $zero, 100
	b	.LBB1_4
	.p2align	4, , 16
.LBB1_3:                                # %middle.block39
                                        #   in Loop: Header=BB1_4 Depth=1
	addi.d	$a1, $a1, 1
	addi.d	$a2, $a2, 1
	addi.d	$a0, $a0, 400
	beq	$a1, $a5, .LBB1_14
.LBB1_4:                                # %vector.ph27
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_6 Depth 2
	move	$a6, $zero
	vreplgr2vr.d	$vr3, $a1
	add.d	$a7, $a3, $a0
	move	$t0, $a2
	vori.b	$vr4, $vr1, 0
	vori.b	$vr5, $vr0, 0
	b	.LBB1_6
	.p2align	4, , 16
.LBB1_5:                                # %pred.store.continue37
                                        #   in Loop: Header=BB1_6 Depth=2
	vaddi.du	$vr4, $vr4, 4
	vaddi.du	$vr5, $vr5, 4
	addi.d	$a6, $a6, 16
	addi.d	$t0, $t0, 4
	beq	$a6, $a4, .LBB1_3
.LBB1_6:                                # %vector.body28
                                        #   Parent Loop BB1_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vseq.d	$vr6, $vr4, $vr3
	vxor.v	$vr6, $vr6, $vr2
	vpickve2gr.w	$t1, $vr6, 0
	andi	$t1, $t1, 1
	beqz	$t1, .LBB1_8
# %bb.7:                                # %pred.store.if
                                        #   in Loop: Header=BB1_6 Depth=2
	addi.d	$t1, $t0, -3
	stx.w	$t1, $a7, $a6
.LBB1_8:                                # %pred.store.continue
                                        #   in Loop: Header=BB1_6 Depth=2
	vpickve2gr.w	$t1, $vr6, 2
	andi	$t1, $t1, 1
	beqz	$t1, .LBB1_10
# %bb.9:                                # %pred.store.if32
                                        #   in Loop: Header=BB1_6 Depth=2
	add.d	$t1, $a7, $a6
	addi.d	$t2, $t0, -2
	st.w	$t2, $t1, 4
.LBB1_10:                               # %pred.store.continue33
                                        #   in Loop: Header=BB1_6 Depth=2
	vseq.d	$vr6, $vr5, $vr3
	vxor.v	$vr6, $vr6, $vr2
	vpickve2gr.w	$t1, $vr6, 0
	andi	$t1, $t1, 1
	beqz	$t1, .LBB1_12
# %bb.11:                               # %pred.store.if34
                                        #   in Loop: Header=BB1_6 Depth=2
	add.d	$t1, $a7, $a6
	addi.d	$t2, $t0, -1
	st.w	$t2, $t1, 8
.LBB1_12:                               # %pred.store.continue35
                                        #   in Loop: Header=BB1_6 Depth=2
	vpickve2gr.w	$t1, $vr6, 2
	andi	$t1, $t1, 1
	beqz	$t1, .LBB1_5
# %bb.13:                               # %pred.store.if36
                                        #   in Loop: Header=BB1_6 Depth=2
	add.d	$t1, $a7, $a6
	st.w	$t0, $t1, 12
	b	.LBB1_5
.LBB1_14:                               # %vector.ph42.preheader
	move	$a3, $zero
	pcalau12i	$a0, %pc_hi20(.LCPI1_3)
	vld	$vr0, $a0, %pc_lo12(.LCPI1_3)
	ori	$a0, $zero, 100
	addi.d	$a1, $sp, 216
	vinsgr2vr.w	$vr1, $zero, 0
	.p2align	4, , 16
.LBB1_15:                               # %vector.ph42
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr2, $a1, 160
	vld	$vr3, $a1, 128
	vld	$vr4, $a1, 96
	vld	$vr5, $a1, 64
	vld	$vr6, $a1, 32
	vld	$vr7, $a1, 0
	vld	$vr8, $a1, -32
	vld	$vr9, $a1, -160
	vld	$vr10, $a1, -192
	vld	$vr11, $a1, -128
	vld	$vr12, $a1, -96
	vld	$vr13, $a1, -64
	vadd.w	$vr9, $vr9, $vr10
	vadd.w	$vr9, $vr11, $vr9
	vadd.w	$vr9, $vr12, $vr9
	vadd.w	$vr9, $vr13, $vr9
	vadd.w	$vr8, $vr8, $vr9
	vadd.w	$vr7, $vr7, $vr8
	vadd.w	$vr6, $vr6, $vr7
	vadd.w	$vr5, $vr5, $vr6
	vadd.w	$vr4, $vr4, $vr5
	vadd.w	$vr3, $vr3, $vr4
	vadd.w	$vr2, $vr2, $vr3
	vld	$vr3, $a1, 144
	vld	$vr4, $a1, 112
	vld	$vr5, $a1, 80
	vld	$vr6, $a1, 48
	vld	$vr7, $a1, 16
	vld	$vr8, $a1, -16
	vld	$vr9, $a1, -48
	vld	$vr10, $a1, -80
	vld	$vr11, $a1, -112
	vld	$vr12, $a1, -144
	vld	$vr13, $a1, -208
	vld	$vr14, $a1, -176
	vinsgr2vr.w	$vr15, $a3, 0
	vori.b	$vr16, $vr0, 0
	vshuf.w	$vr16, $vr1, $vr15
	vadd.w	$vr13, $vr13, $vr16
	vadd.w	$vr13, $vr14, $vr13
	vadd.w	$vr12, $vr12, $vr13
	vadd.w	$vr11, $vr11, $vr12
	vadd.w	$vr10, $vr10, $vr11
	vadd.w	$vr9, $vr9, $vr10
	vadd.w	$vr8, $vr8, $vr9
	vadd.w	$vr7, $vr7, $vr8
	vadd.w	$vr6, $vr6, $vr7
	vadd.w	$vr5, $vr5, $vr6
	vadd.w	$vr4, $vr4, $vr5
	vadd.w	$vr3, $vr3, $vr4
	vadd.w	$vr2, $vr2, $vr3
	vshuf4i.w	$vr3, $vr2, 14
	vadd.w	$vr2, $vr2, $vr3
	vreplvei.w	$vr3, $vr2, 1
	vadd.w	$vr2, $vr2, $vr3
	vpickve2gr.w	$a2, $vr2, 0
	ld.w	$a3, $a1, 176
	ld.w	$a4, $a1, 180
	ld.w	$a5, $a1, 184
	ld.w	$a6, $a1, 188
	add.d	$a2, $a3, $a2
	add.d	$a2, $a4, $a2
	add.d	$a2, $a5, $a2
	add.w	$a3, $a6, $a2
	addi.d	$a0, $a0, -1
	addi.d	$a1, $a1, 400
	bnez	$a0, .LBB1_15
# %bb.16:                               # %SumArray.exit
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
