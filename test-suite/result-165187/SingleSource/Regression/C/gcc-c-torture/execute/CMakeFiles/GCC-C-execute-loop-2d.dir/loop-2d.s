	.file	"loop-2d.c"
	.text
	.globl	f                               # -- Begin function f
	.p2align	5
	.type	f,@function
f:                                      # @f
# %bb.0:
	beqz	$a0, .LBB0_8
# %bb.1:                                # %.lr.ph.preheader
	pcalau12i	$a1, %pc_hi20(a)
	addi.d	$a2, $a1, %pc_lo12(a)
	ori	$a1, $zero, 1
	alsl.d	$a3, $a0, $a2, 2
	bne	$a0, $a1, .LBB0_3
# %bb.2:
	move	$a1, $a0
	b	.LBB0_6
.LBB0_3:                                # %vector.ph
	bstrpick.d	$a4, $a0, 31, 0
	bstrpick.d	$a1, $a4, 31, 1
	slli.d	$a5, $a1, 1
	slli.d	$a1, $a1, 3
	sub.d	$a3, $a3, $a1
	sub.w	$a1, $a0, $a5
	alsl.d	$a6, $a0, $a0, 1
	add.d	$a6, $a6, $a2
	addi.d	$a6, $a6, -6
	alsl.d	$a0, $a0, $a2, 2
	addi.d	$a0, $a0, -4
	move	$a7, $a5
	.p2align	4, , 16
.LBB0_4:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$t0, $a6, 3
	st.w	$t0, $a0, 0
	st.w	$a6, $a0, -4
	addi.d	$a7, $a7, -2
	addi.d	$a6, $a6, -6
	addi.d	$a0, $a0, -8
	bnez	$a7, .LBB0_4
# %bb.5:                                # %middle.block
	beq	$a5, $a4, .LBB0_8
.LBB0_6:                                # %.lr.ph.preheader14
	addi.d	$a0, $a3, -4
	alsl.d	$a3, $a1, $a1, 1
	add.d	$a2, $a3, $a2
	addi.d	$a2, $a2, -3
	.p2align	4, , 16
.LBB0_7:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	addi.w	$a1, $a1, -1
	st.w	$a2, $a0, 0
	addi.d	$a0, $a0, -4
	addi.d	$a2, $a2, -3
	bnez	$a1, .LBB0_7
.LBB0_8:                                # %._crit_edge
	move	$a0, $zero
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
	pcalau12i	$a0, %pc_hi20(a)
	addi.d	$a0, $a0, %pc_lo12(a)
	addi.d	$a1, $a0, 3
	st.w	$a1, $a0, 4
	st.w	$a0, $a0, 0
	move	$a0, $zero
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
                                        # -- End function
	.type	a,@object                       # @a
	.bss
	.globl	a
	.p2align	2, 0x0
a:
	.space	8
	.size	a, 8

	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym a
