	.file	"perimeter.c"
	.text
	.globl	perimeter                       # -- Begin function perimeter
	.p2align	5
	.type	perimeter,@function
perimeter:                              # @perimeter
# %bb.0:
	pcalau12i	$a0, %got_pc_hi20(A)
	ld.d	$a0, $a0, %got_pc_lo12(A)
	ld.d	$a1, $a0, 0
	ld.w	$a5, $a1, 0
	move	$a0, $zero
	ori	$a2, $zero, 1
	blt	$a5, $a2, .LBB0_6
# %bb.1:                                # %.lr.ph
	addi.d	$a3, $a5, 1
	bstrpick.d	$a4, $a3, 31, 0
	alsl.d	$a3, $a5, $a1, 3
	addi.d	$a4, $a4, -1
	addi.d	$a5, $a5, -1
	addi.d	$a6, $a1, 20
	b	.LBB0_4
	.p2align	4, , 16
.LBB0_2:                                #   in Loop: Header=BB0_4 Depth=1
	ld.w	$a7, $a6, -4
	ld.w	$t0, $a6, -12
	sub.w	$a7, $a7, $t0
	ld.w	$t0, $a6, 0
	ld.w	$t1, $a6, -8
	srai.d	$t2, $a7, 31
	xor	$a7, $a7, $t2
	sub.d	$a7, $a7, $t2
	sub.w	$t0, $t0, $t1
	srai.d	$t1, $t0, 31
	xor	$t0, $t0, $t1
	sub.d	$t0, $t0, $t1
.LBB0_3:                                #   in Loop: Header=BB0_4 Depth=1
	add.d	$a7, $t0, $a7
	add.w	$a0, $a7, $a0
	addi.d	$a4, $a4, -1
	addi.d	$a5, $a5, -1
	addi.d	$a6, $a6, 8
	beqz	$a4, .LBB0_6
.LBB0_4:                                # =>This Inner Loop Header: Depth=1
	addi.d	$a2, $a2, 1
	bnez	$a5, .LBB0_2
# %bb.5:                                #   in Loop: Header=BB0_4 Depth=1
	ld.d	$a7, $a1, 8
	ld.d	$t0, $a3, 0
	vinsgr2vr.d	$vr0, $a7, 0
	vinsgr2vr.d	$vr1, $t0, 0
	vabsd.w	$vr0, $vr0, $vr1
	vpickve2gr.w	$a7, $vr0, 0
	vpickve2gr.w	$t0, $vr0, 1
	b	.LBB0_3
.LBB0_6:                                # %._crit_edge
	ret
.Lfunc_end0:
	.size	perimeter, .Lfunc_end0-perimeter
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
