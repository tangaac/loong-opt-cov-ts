	.file	"931004-6.c"
	.text
	.globl	f                               # -- Begin function f
	.p2align	5
	.type	f,@function
f:                                      # @f
# %bb.0:
	addi.d	$sp, $sp, -80
	st.d	$a7, $sp, 72
	st.d	$a6, $sp, 64
	st.d	$a5, $sp, 56
	st.d	$a4, $sp, 48
	st.d	$a3, $sp, 40
	st.d	$a2, $sp, 32
	st.d	$a1, $sp, 24
	addi.d	$a1, $sp, 24
	ori	$a2, $zero, 1
	st.d	$a1, $sp, 8
	blt	$a0, $a2, .LBB0_5
# %bb.1:                                # %.lr.ph.preheader
	move	$a2, $zero
	.p2align	4, , 16
.LBB0_2:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$a3, $a1, 8
	st.d	$a3, $sp, 8
	ld.h	$a4, $a1, 0
	addi.w	$a5, $a2, 10
	bne	$a5, $a4, .LBB0_8
# %bb.3:                                #   in Loop: Header=BB0_2 Depth=1
	ld.h	$a1, $a1, 2
	addi.w	$a4, $a2, 20
	bne	$a4, $a1, .LBB0_8
# %bb.4:                                #   in Loop: Header=BB0_2 Depth=1
	addi.w	$a2, $a2, 1
	move	$a1, $a3
	bne	$a0, $a2, .LBB0_2
	b	.LBB0_6
.LBB0_5:
	addi.d	$a3, $sp, 24
.LBB0_6:                                # %._crit_edge
	addi.d	$a0, $a3, 8
	st.d	$a0, $sp, 8
	ld.d	$a0, $a3, 0
	ori	$a1, $zero, 123
	bne	$a0, $a1, .LBB0_8
# %bb.7:
	move	$a0, $zero
	addi.d	$sp, $sp, 80
	ret
.LBB0_8:
	pcaddu18i	$ra, %call36(abort)
	jirl	$ra, $ra, 0
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
	lu12i.w	$a0, 320
	ori	$a1, $a0, 10
	lu12i.w	$a0, 336
	ori	$a2, $a0, 11
	lu12i.w	$a0, 352
	ori	$a3, $a0, 12
	ori	$a0, $zero, 3
	ori	$a4, $zero, 123
	pcaddu18i	$ra, %call36(f)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
