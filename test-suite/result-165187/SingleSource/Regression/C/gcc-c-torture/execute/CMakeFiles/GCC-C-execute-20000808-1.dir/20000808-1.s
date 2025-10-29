	.file	"20000808-1.c"
	.text
	.globl	bar                             # -- Begin function bar
	.p2align	5
	.type	bar,@function
bar:                                    # @bar
# %bb.0:
	ret
.Lfunc_end0:
	.size	bar, .Lfunc_end0-bar
                                        # -- End function
	.globl	f                               # -- Begin function f
	.p2align	5
	.type	f,@function
f:                                      # @f
# %bb.0:
	bnez	$a0, .LBB1_13
# %bb.1:
	ori	$a0, $zero, 1
	bne	$a1, $a0, .LBB1_13
# %bb.2:
	addi.w	$a0, $zero, -1
	bne	$a2, $a0, .LBB1_13
# %bb.3:
	bnez	$a3, .LBB1_13
# %bb.4:
	ori	$a1, $zero, 1
	bne	$a4, $a1, .LBB1_13
# %bb.5:
	bne	$a5, $a0, .LBB1_13
# %bb.6:
	bne	$a6, $a0, .LBB1_13
# %bb.7:
	ori	$a1, $zero, 1
	bne	$a7, $a1, .LBB1_13
# %bb.8:
	ld.d	$a1, $sp, 0
	bnez	$a1, .LBB1_13
# %bb.9:
	ld.d	$a1, $sp, 8
	bne	$a1, $a0, .LBB1_13
# %bb.10:
	ld.d	$a0, $sp, 16
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB1_13
# %bb.11:
	ld.d	$a0, $sp, 24
	bnez	$a0, .LBB1_13
# %bb.12:
	ret
.LBB1_13:
	pcaddu18i	$ra, %call36(abort)
	jirl	$ra, $ra, 0
.Lfunc_end1:
	.size	f, .Lfunc_end1-f
                                        # -- End function
	.globl	foo                             # -- Begin function foo
	.p2align	5
	.type	foo,@function
foo:                                    # @foo
# %bb.0:
	ret
.Lfunc_end2:
	.size	foo, .Lfunc_end2-foo
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
.Lfunc_end3:
	.size	main, .Lfunc_end3-main
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
