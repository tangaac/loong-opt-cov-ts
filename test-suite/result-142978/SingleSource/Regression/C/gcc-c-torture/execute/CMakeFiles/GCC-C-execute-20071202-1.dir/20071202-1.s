	.file	"20071202-1.c"
	.text
	.globl	foo                             # -- Begin function foo
	.p2align	5
	.type	foo,@function
foo:                                    # @foo
# %bb.0:
	ld.d	$a1, $a0, 0
	rotri.d	$a1, $a1, 32
	st.d	$a1, $a0, 0
	st.d	$zero, $a0, 8
	vrepli.b	$vr0, 0
	vst	$vr0, $a0, 16
	ret
.Lfunc_end0:
	.size	foo, .Lfunc_end0-foo
                                        # -- End function
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0                          # -- Begin function main
.LCPI1_0:
	.word	12                              # 0xc
	.word	6                               # 0x6
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
.LCPI1_1:
	.word	7                               # 0x7
	.word	8                               # 0x8
	.word	9                               # 0x9
	.word	10                              # 0xa
	.word	11                              # 0xb
	.word	12                              # 0xc
	.word	13                              # 0xd
	.word	14                              # 0xe
	.text
	.globl	main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:
	addi.d	$sp, $sp, -96
	st.d	$ra, $sp, 88                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L__const.main.s)
	addi.d	$a1, $a0, %pc_lo12(.L__const.main.s)
	addi.d	$a0, $sp, 16
	ori	$a2, $zero, 68
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(foo)
	jirl	$ra, $ra, 0
	xvld	$xr0, $sp, 16
	pcalau12i	$a0, %pc_hi20(.LCPI1_0)
	xvld	$xr1, $a0, %pc_lo12(.LCPI1_0)
	xvseq.w	$xr1, $xr0, $xr1
	xvrepli.b	$xr0, -1
	xvxor.v	$xr1, $xr1, $xr0
	xvpickve2gr.w	$a0, $xr1, 0
	xvpickve2gr.w	$a1, $xr1, 1
	andi	$a1, $a1, 1
	bstrins.d	$a0, $a1, 63, 1
	xvpickve2gr.w	$a1, $xr1, 2
	bstrins.d	$a0, $a1, 2, 2
	xvpickve2gr.w	$a1, $xr1, 3
	bstrins.d	$a0, $a1, 3, 3
	xvpickve2gr.w	$a1, $xr1, 4
	bstrins.d	$a0, $a1, 4, 4
	xvpickve2gr.w	$a1, $xr1, 5
	bstrins.d	$a0, $a1, 5, 5
	xvpickve2gr.w	$a1, $xr1, 6
	andi	$a1, $a1, 1
	slli.d	$a1, $a1, 6
	or	$a0, $a0, $a1
	xvpickve2gr.w	$a1, $xr1, 7
	slli.d	$a1, $a1, 7
	or	$a0, $a0, $a1
	andi	$a0, $a0, 255
	bnez	$a0, .LBB1_4
# %bb.1:
	xvld	$xr1, $sp, 48
	pcalau12i	$a0, %pc_hi20(.LCPI1_1)
	xvld	$xr2, $a0, %pc_lo12(.LCPI1_1)
	xvseq.w	$xr1, $xr1, $xr2
	xvxor.v	$xr0, $xr1, $xr0
	xvpickve2gr.w	$a0, $xr0, 0
	xvpickve2gr.w	$a1, $xr0, 1
	andi	$a1, $a1, 1
	bstrins.d	$a0, $a1, 63, 1
	xvpickve2gr.w	$a1, $xr0, 2
	bstrins.d	$a0, $a1, 2, 2
	xvpickve2gr.w	$a1, $xr0, 3
	bstrins.d	$a0, $a1, 3, 3
	xvpickve2gr.w	$a1, $xr0, 4
	bstrins.d	$a0, $a1, 4, 4
	xvpickve2gr.w	$a1, $xr0, 5
	bstrins.d	$a0, $a1, 5, 5
	xvpickve2gr.w	$a1, $xr0, 6
	andi	$a1, $a1, 1
	slli.d	$a1, $a1, 6
	or	$a0, $a0, $a1
	xvpickve2gr.w	$a1, $xr0, 7
	slli.d	$a1, $a1, 7
	or	$a0, $a0, $a1
	andi	$a0, $a0, 255
	bnez	$a0, .LBB1_4
# %bb.2:
	ld.w	$a0, $sp, 80
	ori	$a1, $zero, 15
	bne	$a0, $a1, .LBB1_4
# %bb.3:
	move	$a0, $zero
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
	ret
.LBB1_4:
	pcaddu18i	$ra, %call36(abort)
	jirl	$ra, $ra, 0
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
                                        # -- End function
	.type	.L__const.main.s,@object        # @__const.main.s
	.section	.rodata,"a",@progbits
	.p2align	3, 0x0
.L__const.main.s:
	.word	6                               # 0x6
	.word	12                              # 0xc
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	4                               # 0x4
	.word	5                               # 0x5
	.word	6                               # 0x6
	.word	7                               # 0x7
	.word	8                               # 0x8
	.word	9                               # 0x9
	.word	10                              # 0xa
	.word	11                              # 0xb
	.word	12                              # 0xc
	.word	13                              # 0xd
	.word	14                              # 0xe
	.word	15                              # 0xf
	.size	.L__const.main.s, 68

	.section	".note.GNU-stack","",@progbits
	.addrsig
