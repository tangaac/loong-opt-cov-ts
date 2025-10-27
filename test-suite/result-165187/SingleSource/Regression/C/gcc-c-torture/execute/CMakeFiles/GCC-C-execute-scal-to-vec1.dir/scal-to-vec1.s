	.file	"scal-to-vec1.c"
	.text
	.globl	main                            # -- Begin function main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:
	pcalau12i	$a0, %pc_hi20(one)
	ld.w	$a2, $a0, %pc_lo12(one)
	slli.d	$a0, $a2, 16
	addu16i.d	$a1, $a0, 2
	addi.w	$a1, $a1, 0
	srai.d	$a3, $a1, 16
	ext.w.h	$a1, $a2
	addi.d	$a4, $a1, 2
	bne	$a4, $a3, .LBB0_7
# %bb.1:
	lu12i.w	$a3, 32
	sub.w	$a3, $a3, $a0
	srai.d	$a3, $a3, 16
	ori	$a4, $zero, 2
	sub.d	$a4, $a4, $a1
	bne	$a4, $a3, .LBB0_7
# %bb.2:
	slli.d	$a3, $a2, 1
	ext.w.h	$a3, $a3
	addi.w	$a4, $a0, 0
	srai.d	$a4, $a4, 15
	bne	$a4, $a3, .LBB0_7
# %bb.3:
	ori	$a3, $zero, 2
	sll.d	$a4, $a3, $a2
	ext.w.h	$a4, $a4
	sll.w	$a5, $a3, $a2
	bne	$a5, $a4, .LBB0_7
# %bb.4:
	bstrpick.d	$a4, $a2, 15, 0
	srl.d	$a2, $a3, $a2
	srl.w	$a3, $a3, $a4
	bne	$a3, $a2, .LBB0_7
# %bb.5:
	addu16i.d	$a0, $a0, -2
	addi.w	$a0, $a0, 0
	srai.d	$a0, $a0, 16
	addi.d	$a1, $a1, -2
	bne	$a1, $a0, .LBB0_7
# %bb.6:
	move	$a0, $zero
	ret
.LBB0_7:
	pcaddu18i	$ra, %call36(abort)
	jirl	$ra, $ra, 0
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
                                        # -- End function
	.type	one,@object                     # @one
	.data
	.globl	one
	.p2align	2, 0x0
one:
	.word	1                               # 0x1
	.size	one, 4

	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym one
