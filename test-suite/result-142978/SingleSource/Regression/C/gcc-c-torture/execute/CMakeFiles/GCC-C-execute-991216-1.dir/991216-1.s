	.file	"991216-1.c"
	.text
	.globl	test1                           # -- Begin function test1
	.p2align	5
	.type	test1,@function
test1:                                  # @test1
# %bb.0:
	ori	$a3, $zero, 1
	bne	$a0, $a3, .LBB0_4
# %bb.1:
	lu12i.w	$a0, -484676
	ori	$a0, $a0, 3567
	lu32i.d	$a0, 214375
	lu52i.d	$a0, $a0, 18
	bne	$a1, $a0, .LBB0_4
# %bb.2:
	ori	$a0, $zero, 85
	bne	$a2, $a0, .LBB0_4
# %bb.3:
	ret
.LBB0_4:
	pcaddu18i	$ra, %call36(abort)
	jirl	$ra, $ra, 0
.Lfunc_end0:
	.size	test1, .Lfunc_end0-test1
                                        # -- End function
	.globl	test2                           # -- Begin function test2
	.p2align	5
	.type	test2,@function
test2:                                  # @test2
# %bb.0:
	ori	$a4, $zero, 1
	bne	$a0, $a4, .LBB1_5
# %bb.1:
	ori	$a0, $zero, 2
	bne	$a1, $a0, .LBB1_5
# %bb.2:
	lu12i.w	$a0, -484676
	ori	$a0, $a0, 3567
	lu32i.d	$a0, 214375
	lu52i.d	$a0, $a0, 18
	bne	$a2, $a0, .LBB1_5
# %bb.3:
	ori	$a0, $zero, 85
	bne	$a3, $a0, .LBB1_5
# %bb.4:
	ret
.LBB1_5:
	pcaddu18i	$ra, %call36(abort)
	jirl	$ra, $ra, 0
.Lfunc_end1:
	.size	test2, .Lfunc_end1-test2
                                        # -- End function
	.globl	test3                           # -- Begin function test3
	.p2align	5
	.type	test3,@function
test3:                                  # @test3
# %bb.0:
	ori	$a5, $zero, 1
	bne	$a0, $a5, .LBB2_6
# %bb.1:
	ori	$a0, $zero, 2
	bne	$a1, $a0, .LBB2_6
# %bb.2:
	ori	$a0, $zero, 3
	bne	$a2, $a0, .LBB2_6
# %bb.3:
	lu12i.w	$a0, -484676
	ori	$a0, $a0, 3567
	lu32i.d	$a0, 214375
	lu52i.d	$a0, $a0, 18
	bne	$a3, $a0, .LBB2_6
# %bb.4:
	ori	$a0, $zero, 85
	bne	$a4, $a0, .LBB2_6
# %bb.5:
	ret
.LBB2_6:
	pcaddu18i	$ra, %call36(abort)
	jirl	$ra, $ra, 0
.Lfunc_end2:
	.size	test3, .Lfunc_end2-test3
                                        # -- End function
	.globl	test4                           # -- Begin function test4
	.p2align	5
	.type	test4,@function
test4:                                  # @test4
# %bb.0:
	ori	$a6, $zero, 1
	bne	$a0, $a6, .LBB3_7
# %bb.1:
	ori	$a0, $zero, 2
	bne	$a1, $a0, .LBB3_7
# %bb.2:
	ori	$a0, $zero, 3
	bne	$a2, $a0, .LBB3_7
# %bb.3:
	ori	$a0, $zero, 4
	bne	$a3, $a0, .LBB3_7
# %bb.4:
	lu12i.w	$a0, -484676
	ori	$a0, $a0, 3567
	lu32i.d	$a0, 214375
	lu52i.d	$a0, $a0, 18
	bne	$a4, $a0, .LBB3_7
# %bb.5:
	ori	$a0, $zero, 85
	bne	$a5, $a0, .LBB3_7
# %bb.6:
	ret
.LBB3_7:
	pcaddu18i	$ra, %call36(abort)
	jirl	$ra, $ra, 0
.Lfunc_end3:
	.size	test4, .Lfunc_end3-test4
                                        # -- End function
	.globl	test5                           # -- Begin function test5
	.p2align	5
	.type	test5,@function
test5:                                  # @test5
# %bb.0:
	ori	$a7, $zero, 1
	bne	$a0, $a7, .LBB4_8
# %bb.1:
	ori	$a0, $zero, 2
	bne	$a1, $a0, .LBB4_8
# %bb.2:
	ori	$a0, $zero, 3
	bne	$a2, $a0, .LBB4_8
# %bb.3:
	ori	$a0, $zero, 4
	bne	$a3, $a0, .LBB4_8
# %bb.4:
	ori	$a0, $zero, 5
	bne	$a4, $a0, .LBB4_8
# %bb.5:
	lu12i.w	$a0, -484676
	ori	$a0, $a0, 3567
	lu32i.d	$a0, 214375
	lu52i.d	$a0, $a0, 18
	bne	$a5, $a0, .LBB4_8
# %bb.6:
	ori	$a0, $zero, 85
	bne	$a6, $a0, .LBB4_8
# %bb.7:
	ret
.LBB4_8:
	pcaddu18i	$ra, %call36(abort)
	jirl	$ra, $ra, 0
.Lfunc_end4:
	.size	test5, .Lfunc_end4-test5
                                        # -- End function
	.globl	test6                           # -- Begin function test6
	.p2align	5
	.type	test6,@function
test6:                                  # @test6
# %bb.0:
	ori	$t0, $zero, 1
	bne	$a0, $t0, .LBB5_9
# %bb.1:
	ori	$a0, $zero, 2
	bne	$a1, $a0, .LBB5_9
# %bb.2:
	ori	$a0, $zero, 3
	bne	$a2, $a0, .LBB5_9
# %bb.3:
	ori	$a0, $zero, 4
	bne	$a3, $a0, .LBB5_9
# %bb.4:
	ori	$a0, $zero, 5
	bne	$a4, $a0, .LBB5_9
# %bb.5:
	ori	$a0, $zero, 6
	bne	$a5, $a0, .LBB5_9
# %bb.6:
	lu12i.w	$a0, -484676
	ori	$a0, $a0, 3567
	lu32i.d	$a0, 214375
	lu52i.d	$a0, $a0, 18
	bne	$a6, $a0, .LBB5_9
# %bb.7:
	ori	$a0, $zero, 85
	bne	$a7, $a0, .LBB5_9
# %bb.8:
	ret
.LBB5_9:
	pcaddu18i	$ra, %call36(abort)
	jirl	$ra, $ra, 0
.Lfunc_end5:
	.size	test6, .Lfunc_end5-test6
                                        # -- End function
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0                          # -- Begin function test7
.LCPI6_0:
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	4                               # 0x4
	.word	5                               # 0x5
	.word	6                               # 0x6
	.word	7                               # 0x7
	.word	85                              # 0x55
	.text
	.globl	test7
	.p2align	5
	.type	test7,@function
test7:                                  # @test7
# %bb.0:
	addi.d	$sp, $sp, -16
	ld.d	$t0, $sp, 16
	xvinsgr2vr.w	$xr0, $a0, 0
	xvinsgr2vr.w	$xr0, $a1, 1
	xvinsgr2vr.w	$xr0, $a2, 2
	xvinsgr2vr.w	$xr0, $a3, 3
	xvinsgr2vr.w	$xr0, $a4, 4
	pcalau12i	$a0, %pc_hi20(.LCPI6_0)
	xvld	$xr1, $a0, %pc_lo12(.LCPI6_0)
	xvinsgr2vr.w	$xr0, $a5, 5
	xvinsgr2vr.w	$xr0, $a6, 6
	xvinsgr2vr.w	$xr0, $t0, 7
	xvseq.w	$xr0, $xr0, $xr1
	xvrepli.b	$xr1, -1
	xvxor.v	$xr0, $xr0, $xr1
	xvpickve2gr.w	$a0, $xr0, 0
	xvpickve2gr.w	$a1, $xr0, 1
	andi	$a1, $a1, 1
	bstrins.d	$a0, $a1, 63, 1
	xvpickve2gr.w	$a1, $xr0, 2
	bstrins.d	$a0, $a1, 2, 2
	xvpickve2gr.w	$a1, $xr0, 3
	bstrins.d	$a0, $a1, 3, 3
	xvpickve2gr.w	$a1, $xr0, 4
	bstrins.d	$a0, $a1, 4, 4
	xvpickve2gr.w	$a1, $xr0, 5
	bstrins.d	$a0, $a1, 5, 5
	xvpickve2gr.w	$a1, $xr0, 6
	andi	$a1, $a1, 1
	slli.d	$a1, $a1, 6
	or	$a0, $a0, $a1
	xvpickve2gr.w	$a1, $xr0, 7
	slli.d	$a1, $a1, 7
	or	$a0, $a0, $a1
	andi	$a0, $a0, 255
	bnez	$a0, .LBB6_3
# %bb.1:
	lu12i.w	$a0, -484676
	ori	$a0, $a0, 3567
	lu32i.d	$a0, 214375
	lu52i.d	$a0, $a0, 18
	bne	$a7, $a0, .LBB6_3
# %bb.2:
	addi.d	$sp, $sp, 16
	ret
.LBB6_3:
	pcaddu18i	$ra, %call36(abort)
	jirl	$ra, $ra, 0
.Lfunc_end6:
	.size	test7, .Lfunc_end6-test7
                                        # -- End function
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0                          # -- Begin function test8
.LCPI7_0:
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	4                               # 0x4
	.word	5                               # 0x5
	.word	6                               # 0x6
	.word	7                               # 0x7
	.word	8                               # 0x8
	.text
	.globl	test8
	.p2align	5
	.type	test8,@function
test8:                                  # @test8
# %bb.0:
	addi.d	$sp, $sp, -16
	xvinsgr2vr.w	$xr0, $a0, 0
	xvinsgr2vr.w	$xr0, $a1, 1
	xvinsgr2vr.w	$xr0, $a2, 2
	xvinsgr2vr.w	$xr0, $a3, 3
	xvinsgr2vr.w	$xr0, $a4, 4
	pcalau12i	$a0, %pc_hi20(.LCPI7_0)
	xvld	$xr1, $a0, %pc_lo12(.LCPI7_0)
	xvinsgr2vr.w	$xr0, $a5, 5
	xvinsgr2vr.w	$xr0, $a6, 6
	xvinsgr2vr.w	$xr0, $a7, 7
	xvseq.w	$xr0, $xr0, $xr1
	xvrepli.b	$xr1, -1
	xvxor.v	$xr0, $xr0, $xr1
	xvpickve2gr.w	$a0, $xr0, 0
	xvpickve2gr.w	$a1, $xr0, 1
	andi	$a1, $a1, 1
	bstrins.d	$a0, $a1, 63, 1
	xvpickve2gr.w	$a1, $xr0, 2
	bstrins.d	$a0, $a1, 2, 2
	xvpickve2gr.w	$a1, $xr0, 3
	bstrins.d	$a0, $a1, 3, 3
	xvpickve2gr.w	$a1, $xr0, 4
	bstrins.d	$a0, $a1, 4, 4
	xvpickve2gr.w	$a1, $xr0, 5
	bstrins.d	$a0, $a1, 5, 5
	xvpickve2gr.w	$a1, $xr0, 6
	andi	$a1, $a1, 1
	slli.d	$a1, $a1, 6
	or	$a0, $a0, $a1
	xvpickve2gr.w	$a1, $xr0, 7
	slli.d	$a1, $a1, 7
	or	$a0, $a0, $a1
	andi	$a0, $a0, 255
	bnez	$a0, .LBB7_4
# %bb.1:
	ld.d	$a0, $sp, 24
	ori	$a1, $zero, 85
	bne	$a0, $a1, .LBB7_4
# %bb.2:
	ld.d	$a0, $sp, 16
	lu12i.w	$a1, -484676
	ori	$a1, $a1, 3567
	lu32i.d	$a1, 214375
	lu52i.d	$a1, $a1, 18
	bne	$a0, $a1, .LBB7_4
# %bb.3:
	addi.d	$sp, $sp, 16
	ret
.LBB7_4:
	pcaddu18i	$ra, %call36(abort)
	jirl	$ra, $ra, 0
.Lfunc_end7:
	.size	test8, .Lfunc_end7-test8
                                        # -- End function
	.globl	main                            # -- Begin function main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	move	$a0, $zero
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end8:
	.size	main, .Lfunc_end8-main
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
