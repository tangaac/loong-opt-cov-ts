	.file	"20000412-4.c"
	.text
	.globl	f                               # -- Begin function f
	.p2align	5
	.type	f,@function
f:                                      # @f
# %bb.0:
	sub.w	$a5, $a0, $a2
	ori	$a4, $zero, 2
	blt	$a4, $a5, .LBB0_4
# %bb.1:                                # %.lr.ph
	srai.d	$a6, $a5, 63
	andn	$a6, $a5, $a6
	addi.d	$a5, $a6, -1
	add.d	$a6, $a2, $a6
	nor	$a0, $a0, $zero
	add.d	$a0, $a0, $a6
	mul.d	$a0, $a3, $a0
	add.d	$a0, $a2, $a0
	sub.d	$a0, $a0, $a1
	.p2align	4, , 16
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	add.w	$a0, $a0, $a3
	bltz	$a0, .LBB0_5
# %bb.3:                                #   in Loop: Header=BB0_2 Depth=1
	addi.w	$a5, $a5, 1
	bltu	$a5, $a4, .LBB0_2
.LBB0_4:                                # %.preheader
	ret
.LBB0_5:
	pcaddu18i	$ra, %call36(abort)
	jirl	$ra, $ra, 0
.Lfunc_end0:
	.size	f, .Lfunc_end0-f
                                        # -- End function
	.globl	main                            # -- Begin function main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:                                # %f.exit.2
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	move	$a0, $zero
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
