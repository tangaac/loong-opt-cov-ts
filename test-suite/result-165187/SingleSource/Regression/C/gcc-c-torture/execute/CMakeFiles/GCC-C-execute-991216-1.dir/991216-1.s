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
	.globl	test7                           # -- Begin function test7
	.p2align	5
	.type	test7,@function
test7:                                  # @test7
# %bb.0:
	ori	$t0, $zero, 1
	bne	$a0, $t0, .LBB6_10
# %bb.1:
	ori	$a0, $zero, 2
	bne	$a1, $a0, .LBB6_10
# %bb.2:
	ori	$a0, $zero, 3
	bne	$a2, $a0, .LBB6_10
# %bb.3:
	ori	$a0, $zero, 4
	bne	$a3, $a0, .LBB6_10
# %bb.4:
	ori	$a0, $zero, 5
	bne	$a4, $a0, .LBB6_10
# %bb.5:
	ori	$a0, $zero, 6
	bne	$a5, $a0, .LBB6_10
# %bb.6:
	ori	$a0, $zero, 7
	bne	$a6, $a0, .LBB6_10
# %bb.7:
	lu12i.w	$a0, -484676
	ori	$a0, $a0, 3567
	lu32i.d	$a0, 214375
	lu52i.d	$a0, $a0, 18
	bne	$a7, $a0, .LBB6_10
# %bb.8:
	ld.d	$a0, $sp, 0
	ori	$a1, $zero, 85
	bne	$a0, $a1, .LBB6_10
# %bb.9:
	ret
.LBB6_10:
	pcaddu18i	$ra, %call36(abort)
	jirl	$ra, $ra, 0
.Lfunc_end6:
	.size	test7, .Lfunc_end6-test7
                                        # -- End function
	.globl	test8                           # -- Begin function test8
	.p2align	5
	.type	test8,@function
test8:                                  # @test8
# %bb.0:
	ori	$t0, $zero, 1
	bne	$a0, $t0, .LBB7_11
# %bb.1:
	ori	$a0, $zero, 2
	bne	$a1, $a0, .LBB7_11
# %bb.2:
	ori	$a0, $zero, 3
	bne	$a2, $a0, .LBB7_11
# %bb.3:
	ori	$a0, $zero, 4
	bne	$a3, $a0, .LBB7_11
# %bb.4:
	ori	$a0, $zero, 5
	bne	$a4, $a0, .LBB7_11
# %bb.5:
	ori	$a0, $zero, 6
	bne	$a5, $a0, .LBB7_11
# %bb.6:
	ori	$a0, $zero, 7
	bne	$a6, $a0, .LBB7_11
# %bb.7:
	ori	$a0, $zero, 8
	bne	$a7, $a0, .LBB7_11
# %bb.8:
	ld.d	$a0, $sp, 0
	lu12i.w	$a1, -484676
	ori	$a1, $a1, 3567
	lu32i.d	$a1, 214375
	lu52i.d	$a1, $a1, 18
	bne	$a0, $a1, .LBB7_11
# %bb.9:
	ld.d	$a0, $sp, 8
	ori	$a1, $zero, 85
	bne	$a0, $a1, .LBB7_11
# %bb.10:
	ret
.LBB7_11:
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
