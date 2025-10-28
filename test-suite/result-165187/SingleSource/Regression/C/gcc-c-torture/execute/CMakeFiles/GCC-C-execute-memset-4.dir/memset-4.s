	.file	"memset-4.c"
	.text
	.globl	f                               # -- Begin function f
	.p2align	5
	.type	f,@function
f:                                      # @f
# %bb.0:
	st.d	$zero, $a0, 7
	st.d	$zero, $a0, 0
	ret
.Lfunc_end0:
	.size	f, .Lfunc_end0-f
                                        # -- End function
	.globl	main                            # -- Begin function main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	addi.d	$a0, $sp, 9
	pcaddu18i	$ra, %call36(f)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $sp, 9
	bnez	$a0, .LBB1_16
# %bb.1:
	ld.bu	$a0, $sp, 10
	bnez	$a0, .LBB1_16
# %bb.2:
	ld.bu	$a0, $sp, 11
	bnez	$a0, .LBB1_16
# %bb.3:
	ld.bu	$a0, $sp, 12
	bnez	$a0, .LBB1_16
# %bb.4:
	ld.bu	$a0, $sp, 13
	bnez	$a0, .LBB1_16
# %bb.5:
	ld.bu	$a0, $sp, 14
	bnez	$a0, .LBB1_16
# %bb.6:
	ld.bu	$a0, $sp, 15
	bnez	$a0, .LBB1_16
# %bb.7:
	ld.bu	$a0, $sp, 16
	bnez	$a0, .LBB1_16
# %bb.8:
	ld.bu	$a0, $sp, 17
	bnez	$a0, .LBB1_16
# %bb.9:
	ld.bu	$a0, $sp, 18
	bnez	$a0, .LBB1_16
# %bb.10:
	ld.bu	$a0, $sp, 19
	bnez	$a0, .LBB1_16
# %bb.11:
	ld.bu	$a0, $sp, 20
	bnez	$a0, .LBB1_16
# %bb.12:
	ld.bu	$a0, $sp, 21
	bnez	$a0, .LBB1_16
# %bb.13:
	ld.bu	$a0, $sp, 22
	bnez	$a0, .LBB1_16
# %bb.14:
	ld.bu	$a0, $sp, 23
	bnez	$a0, .LBB1_16
# %bb.15:
	move	$a0, $zero
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB1_16:
	pcaddu18i	$ra, %call36(abort)
	jirl	$ra, $ra, 0
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
