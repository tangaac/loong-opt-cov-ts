	.file	"scal-to-vec1.c"
	.text
	.globl	main                            # -- Begin function main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:
	addi.d	$sp, $sp, -16
	pcalau12i	$a0, %pc_hi20(one)
	ld.w	$a0, $a0, %pc_lo12(one)
	ori	$a1, $zero, 7
	st.h	$a1, $sp, 14
	lu12i.w	$a1, 96
	ori	$a1, $a1, 5
	st.w	$a1, $sp, 10
	lu12i.w	$a3, 32
	ori	$a1, $a3, 1
	lu32i.d	$a1, 262147
	st.d	$a1, $sp, 2
	slli.d	$a1, $a0, 16
	addu16i.d	$a2, $a1, 2
	addi.w	$a2, $a2, 0
	srai.d	$a4, $a2, 16
	ext.w.h	$a2, $a0
	addi.d	$a5, $a2, 2
	st.h	$a0, $sp, 0
	bne	$a5, $a4, .LBB0_20
# %bb.1:
	sub.w	$a3, $a3, $a1
	srai.d	$a3, $a3, 16
	ori	$a4, $zero, 2
	sub.d	$a4, $a4, $a2
	bne	$a4, $a3, .LBB0_20
# %bb.2:
	slli.d	$a3, $a0, 1
	ext.w.h	$a3, $a3
	addi.w	$a4, $a1, 0
	srai.d	$a4, $a4, 15
	bne	$a4, $a3, .LBB0_20
# %bb.3:
	vld	$vr0, $sp, 0
	vrepli.h	$vr1, 2
	vdiv.h	$vr2, $vr1, $vr0
	vpickve2gr.h	$a3, $vr2, 0
	bstrpick.d	$a5, $a3, 15, 0
	ori	$a4, $zero, 2
	div.d	$a3, $a4, $a2
	bstrpick.d	$a6, $a3, 15, 0
	bne	$a6, $a5, .LBB0_20
# %bb.4:
	vpickve2gr.h	$a5, $vr2, 1
	bstrpick.d	$a5, $a5, 15, 0
	bne	$a5, $a4, .LBB0_20
# %bb.5:
	vmsub.h	$vr1, $vr2, $vr0
	vpickve2gr.h	$a4, $vr1, 0
	bstrpick.d	$a4, $a4, 15, 0
	mul.d	$a5, $a3, $a0
	ori	$a3, $zero, 2
	sub.d	$a5, $a3, $a5
	bstrpick.d	$a5, $a5, 15, 0
	bne	$a5, $a4, .LBB0_20
# %bb.6:
	vpickve2gr.h	$a4, $vr1, 3
	bstrpick.d	$a4, $a4, 15, 0
	bne	$a4, $a3, .LBB0_20
# %bb.7:
	vpickve2gr.h	$a3, $vr1, 5
	bstrpick.d	$a3, $a3, 15, 0
	ori	$a4, $zero, 2
	bne	$a3, $a4, .LBB0_20
# %bb.8:
	vpickve2gr.h	$a3, $vr1, 6
	bstrpick.d	$a3, $a3, 15, 0
	beqz	$a3, .LBB0_20
# %bb.9:
	vpickve2gr.h	$a3, $vr1, 7
	bstrpick.d	$a4, $a3, 15, 0
	ori	$a3, $zero, 2
	bne	$a4, $a3, .LBB0_20
# %bb.10:
	sll.d	$a4, $a3, $a0
	ext.w.h	$a4, $a4
	sll.w	$a3, $a3, $a0
	bne	$a3, $a4, .LBB0_20
# %bb.11:
	bstrpick.d	$a3, $a0, 15, 0
	ori	$a4, $zero, 2
	srl.d	$a5, $a4, $a0
	srl.w	$a3, $a4, $a3
	bne	$a3, $a5, .LBB0_20
# %bb.12:
	addu16i.d	$a1, $a1, -2
	addi.w	$a1, $a1, 0
	srai.d	$a1, $a1, 16
	addi.d	$a2, $a2, -2
	bne	$a2, $a1, .LBB0_20
# %bb.13:
	vsrli.h	$vr1, $vr0, 15
	vadd.h	$vr0, $vr0, $vr1
	vsrai.h	$vr0, $vr0, 1
	vpickve2gr.h	$a1, $vr0, 0
	bstrpick.d	$a3, $a1, 15, 0
	bstrpick.d	$a1, $a0, 15, 15
	add.d	$a1, $a0, $a1
	ext.w.h	$a2, $a1
	bstrpick.d	$a4, $a2, 16, 1
	bne	$a3, $a4, .LBB0_20
# %bb.14:
	vpickve2gr.h	$a3, $vr0, 4
	bstrpick.d	$a4, $a3, 15, 0
	ori	$a3, $zero, 2
	bne	$a4, $a3, .LBB0_20
# %bb.15:
	vpickve2gr.h	$a4, $vr0, 5
	bstrpick.d	$a4, $a4, 15, 0
	bne	$a4, $a3, .LBB0_20
# %bb.16:
	vpickve2gr.h	$a3, $vr0, 6
	bstrpick.d	$a4, $a3, 15, 0
	ori	$a3, $zero, 3
	bne	$a4, $a3, .LBB0_20
# %bb.17:
	vpickve2gr.h	$a4, $vr0, 7
	bstrpick.d	$a4, $a4, 15, 0
	bne	$a4, $a3, .LBB0_20
# %bb.18:
	srai.d	$a2, $a2, 1
	bstrpick.d	$a1, $a1, 15, 1
	slli.d	$a1, $a1, 1
	sub.d	$a1, $a0, $a1
	bstrpick.d	$a1, $a1, 15, 0
	slli.d	$a2, $a2, 1
	sub.d	$a0, $a0, $a2
	bstrpick.d	$a0, $a0, 15, 0
	bne	$a0, $a1, .LBB0_20
# %bb.19:
	move	$a0, $zero
	addi.d	$sp, $sp, 16
	ret
.LBB0_20:
	pcaddu18i	$ra, %call36(abort)
	jirl	$ra, $ra, 0
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
                                        # -- End function
	.type	one,@object                     # @one
	.data
	.globl	one
	.p2align	2, 0x0
one:
	.word	1                               # 0x1
	.size	one, 4

	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym one
