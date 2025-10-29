	.file	"950714-1.c"
	.text
	.globl	main                            # -- Begin function main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:                                # %.preheader
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(array)
	addi.d	$t0, $a0, %pc_lo12(array)
	ld.w	$a0, $t0, 0
	beqz	$a0, .LBB0_18
# %bb.1:
	ld.w	$a1, $t0, 4
	beqz	$a1, .LBB0_18
# %bb.2:
	ld.w	$a2, $t0, 8
	beqz	$a2, .LBB0_18
# %bb.3:
	ld.w	$a3, $t0, 12
	beqz	$a3, .LBB0_18
# %bb.4:
	ld.w	$a4, $t0, 16
	beqz	$a4, .LBB0_18
# %bb.5:
	ld.w	$a5, $t0, 20
	beqz	$a5, .LBB0_18
# %bb.6:
	ld.w	$a6, $t0, 24
	beqz	$a6, .LBB0_18
# %bb.7:
	ld.w	$a7, $t0, 28
	beqz	$a7, .LBB0_18
# %bb.8:
	ld.w	$t0, $t0, 32
	beqz	$t0, .LBB0_18
# %bb.9:                                # %.preheader.1
	ori	$t1, $zero, 1
	beq	$a0, $t1, .LBB0_19
# %bb.10:                               # %.preheader.1
	beq	$a1, $t1, .LBB0_19
# %bb.11:                               # %.preheader.1
	ori	$a0, $zero, 1
	beq	$a2, $a0, .LBB0_19
# %bb.12:                               # %.preheader.1
	beq	$a3, $a0, .LBB0_19
# %bb.13:                               # %.preheader.1
	ori	$a0, $zero, 1
	beq	$a4, $a0, .LBB0_19
# %bb.14:                               # %.preheader.1
	beq	$a5, $a0, .LBB0_19
# %bb.15:                               # %.preheader.1
	ori	$a0, $zero, 1
	beq	$a6, $a0, .LBB0_19
# %bb.16:                               # %.preheader.1
	beq	$a7, $a0, .LBB0_19
# %bb.17:                               # %.preheader.1
	ori	$a0, $zero, 1
	beq	$t0, $a0, .LBB0_19
.LBB0_18:                               # %.thread
	pcaddu18i	$ra, %call36(abort)
	jirl	$ra, $ra, 0
.LBB0_19:
	move	$a0, $zero
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
                                        # -- End function
	.type	array,@object                   # @array
	.data
	.globl	array
	.p2align	2, 0x0
array:
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.size	array, 40

	.section	".note.GNU-stack","",@progbits
	.addrsig
