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
	addi.d	$a0, $a0, %pc_lo12(array)
	ld.w	$a1, $a0, 0
	beqz	$a1, .LBB0_11
# %bb.1:
	ld.w	$a2, $a0, 4
	beqz	$a2, .LBB0_11
# %bb.2:
	ld.w	$a3, $a0, 8
	beqz	$a3, .LBB0_11
# %bb.3:
	ld.w	$a4, $a0, 12
	beqz	$a4, .LBB0_11
# %bb.4:
	ld.w	$a5, $a0, 16
	beqz	$a5, .LBB0_11
# %bb.5:
	ld.w	$a6, $a0, 20
	beqz	$a6, .LBB0_11
# %bb.6:
	ld.w	$a7, $a0, 24
	beqz	$a7, .LBB0_11
# %bb.7:
	ld.w	$t0, $a0, 28
	beqz	$t0, .LBB0_11
# %bb.8:
	ld.w	$a0, $a0, 32
	beqz	$a0, .LBB0_11
# %bb.9:                                # %.preheader.1
	xvinsgr2vr.w	$xr0, $a1, 0
	xvinsgr2vr.w	$xr0, $a2, 1
	xvinsgr2vr.w	$xr0, $a3, 2
	xvinsgr2vr.w	$xr0, $a4, 3
	xvinsgr2vr.w	$xr0, $a5, 4
	xvinsgr2vr.w	$xr0, $a6, 5
	xvinsgr2vr.w	$xr0, $a7, 6
	xvinsgr2vr.w	$xr0, $t0, 7
	xvseqi.w	$xr0, $xr0, 1
	xvpickve2gr.w	$a1, $xr0, 0
	xvpickve2gr.w	$a2, $xr0, 1
	andi	$a2, $a2, 1
	bstrins.d	$a1, $a2, 63, 1
	xvpickve2gr.w	$a2, $xr0, 2
	bstrins.d	$a1, $a2, 2, 2
	xvpickve2gr.w	$a2, $xr0, 3
	bstrins.d	$a1, $a2, 3, 3
	xvpickve2gr.w	$a2, $xr0, 4
	bstrins.d	$a1, $a2, 4, 4
	xvpickve2gr.w	$a2, $xr0, 5
	bstrins.d	$a1, $a2, 5, 5
	xvpickve2gr.w	$a2, $xr0, 6
	andi	$a2, $a2, 1
	slli.d	$a2, $a2, 6
	or	$a1, $a1, $a2
	xvpickve2gr.w	$a2, $xr0, 7
	slli.d	$a2, $a2, 7
	or	$a1, $a1, $a2
	andi	$a1, $a1, 255
	bnez	$a1, .LBB0_12
# %bb.10:                               # %.preheader.1
	ori	$a1, $zero, 1
	beq	$a0, $a1, .LBB0_12
.LBB0_11:                               # %.thread
	pcaddu18i	$ra, %call36(abort)
	jirl	$ra, $ra, 0
.LBB0_12:
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
