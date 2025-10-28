	.file	"pr52760.c"
	.text
	.globl	foo                             # -- Begin function foo
	.p2align	5
	.type	foo,@function
foo:                                    # @foo
# %bb.0:
	blez	$a0, .LBB0_3
# %bb.1:                                # %.lr.ph.preheader
	addi.d	$a1, $a1, 4
	.p2align	4, , 16
.LBB0_2:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.h	$a2, $a1, -4
	ld.h	$a3, $a1, -2
	revb.2h	$a2, $a2
	st.h	$a2, $a1, -4
	ld.h	$a2, $a1, 0
	revb.2h	$a3, $a3
	ld.h	$a4, $a1, 2
	st.h	$a3, $a1, -2
	revb.2h	$a2, $a2
	st.h	$a2, $a1, 0
	revb.2h	$a2, $a4
	st.h	$a2, $a1, 2
	addi.d	$a0, $a0, -1
	addi.d	$a1, $a1, 8
	bnez	$a0, .LBB0_2
.LBB0_3:                                # %._crit_edge
	ret
.Lfunc_end0:
	.size	foo, .Lfunc_end0-foo
                                        # -- End function
	.globl	main                            # -- Begin function main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	lu12i.w	$a0, 8240
	ori	$a0, $a0, 1
	lu32i.d	$a0, 459781
	lu52i.d	$a0, $a0, 96
	st.d	$a0, $sp, 0
	ori	$a0, $zero, 1
	addi.d	$a1, $sp, 0
	pcaddu18i	$ra, %call36(foo)
	jirl	$ra, $ra, 0
	ld.hu	$a0, $sp, 0
	ori	$a1, $zero, 256
	bne	$a0, $a1, .LBB1_5
# %bb.1:
	ld.hu	$a0, $sp, 2
	ori	$a1, $zero, 770
	bne	$a0, $a1, .LBB1_5
# %bb.2:
	ld.hu	$a0, $sp, 4
	ori	$a1, $zero, 1284
	bne	$a0, $a1, .LBB1_5
# %bb.3:
	ld.hu	$a0, $sp, 6
	ori	$a1, $zero, 1798
	bne	$a0, $a1, .LBB1_5
# %bb.4:
	move	$a0, $zero
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB1_5:
	pcaddu18i	$ra, %call36(abort)
	jirl	$ra, $ra, 0
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
