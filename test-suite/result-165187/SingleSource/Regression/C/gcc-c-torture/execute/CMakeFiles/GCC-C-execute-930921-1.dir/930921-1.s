	.file	"930921-1.c"
	.text
	.globl	f                               # -- Begin function f
	.p2align	5
	.type	f,@function
f:                                      # @f
# %bb.0:
	bstrpick.d	$a0, $a0, 31, 0
	lu12i.w	$a1, -349526
	ori	$a1, $a1, 2731
	lu32i.d	$a1, 0
	mul.d	$a0, $a0, $a1
	srli.d	$a0, $a0, 33
	ret
.Lfunc_end0:
	.size	f, .Lfunc_end0-f
                                        # -- End function
	.globl	main                            # -- Begin function main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	move	$a0, $zero
	lu12i.w	$a1, -349526
	ori	$a1, $a1, 2731
	lu32i.d	$a1, 0
	lu12i.w	$a2, 10
	ori	$a2, $a2, 2731
	lu12i.w	$a3, 2
	ori	$a3, $a3, 1808
	.p2align	4, , 16
.LBB1_1:                                # =>This Inner Loop Header: Depth=1
	mul.d	$a4, $a0, $a1
	srli.d	$a4, $a4, 33
	bstrpick.d	$a5, $a0, 15, 0
	mul.d	$a5, $a5, $a2
	srli.d	$a5, $a5, 17
	bne	$a4, $a5, .LBB1_4
# %bb.2:                                #   in Loop: Header=BB1_1 Depth=1
	addi.d	$a0, $a0, 1
	bne	$a0, $a3, .LBB1_1
# %bb.3:
	move	$a0, $zero
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB1_4:
	pcaddu18i	$ra, %call36(abort)
	jirl	$ra, $ra, 0
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
