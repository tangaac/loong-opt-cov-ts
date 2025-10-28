	.file	"loop-5.c"
	.text
	.globl	main                            # -- Begin function main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(t)
	ld.wu	$a3, $a1, %pc_lo12(t)
	addi.w	$a2, $a3, 0
	ori	$a0, $zero, 4
	bge	$a2, $a0, .LBB0_9
# %bb.1:                                # %ap.exit.i
	addi.d	$a4, $a3, 1
	addi.w	$a5, $a4, 0
	st.w	$a4, $a1, %pc_lo12(t)
	slli.d	$a7, $a3, 2
	pcalau12i	$a0, %pc_hi20(a)
	addi.d	$a0, $a0, %pc_lo12(a)
	ori	$a6, $zero, 3
	stx.w	$zero, $a0, $a7
	blt	$a6, $a5, .LBB0_9
# %bb.2:                                # %ap.exit.1.i
	addi.d	$a5, $a3, 2
	addi.w	$a7, $a5, 0
	st.w	$a5, $a1, %pc_lo12(t)
	slli.d	$a4, $a4, 2
	stx.w	$a6, $a0, $a4
	blt	$a6, $a7, .LBB0_9
# %bb.3:                                # %ap.exit.2.i
	addi.d	$a3, $a3, 3
	addi.w	$a4, $a3, 0
	st.w	$a3, $a1, %pc_lo12(t)
	slli.d	$a5, $a5, 2
	ori	$a6, $zero, 2
	ori	$a7, $zero, 3
	stx.w	$a6, $a0, $a5
	blt	$a7, $a4, .LBB0_9
# %bb.4:                                # %testit.exit
	addi.d	$a2, $a2, 4
	ld.w	$a4, $a0, 0
	st.w	$a2, $a1, %pc_lo12(t)
	slli.d	$a1, $a3, 2
	ori	$a2, $zero, 1
	stx.w	$a2, $a0, $a1
	bnez	$a4, .LBB0_9
# %bb.5:
	ld.w	$a1, $a0, 4
	ori	$a2, $zero, 3
	bne	$a1, $a2, .LBB0_9
# %bb.6:
	ld.w	$a1, $a0, 8
	ori	$a2, $zero, 2
	bne	$a1, $a2, .LBB0_9
# %bb.7:
	ld.w	$a0, $a0, 12
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB0_9
# %bb.8:
	move	$a0, $zero
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB0_9:
	pcaddu18i	$ra, %call36(abort)
	jirl	$ra, $ra, 0
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
                                        # -- End function
	.type	a,@object                       # @a
	.local	a
	.comm	a,16,4
	.type	t,@object                       # @t
	.local	t
	.comm	t,4,4
	.section	".note.GNU-stack","",@progbits
	.addrsig
