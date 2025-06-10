	.file	"pr66233.c"
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0                          # -- Begin function foo
.LCPI0_0:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	4                               # 0x4
	.word	5                               # 0x5
	.word	6                               # 0x6
	.word	7                               # 0x7
	.text
	.globl	foo
	.p2align	5
	.type	foo,@function
foo:                                    # @foo
# %bb.0:
	pcalau12i	$a0, %pc_hi20(.LCPI0_0)
	xvld	$xr0, $a0, %pc_lo12(.LCPI0_0)
	pcalau12i	$a0, %pc_hi20(v)
	xvst	$xr0, $a0, %pc_lo12(v)
	ret
.Lfunc_end0:
	.size	foo, .Lfunc_end0-foo
                                        # -- End function
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0                          # -- Begin function main
.LCPI1_0:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	4                               # 0x4
	.word	5                               # 0x5
	.word	6                               # 0x6
	.word	7                               # 0x7
	.text
	.globl	main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(foo)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(v)
	xvld	$xr0, $a0, %pc_lo12(v)
	pcalau12i	$a0, %pc_hi20(.LCPI1_0)
	xvld	$xr1, $a0, %pc_lo12(.LCPI1_0)
	xvseq.w	$xr0, $xr0, $xr1
	xvrepli.b	$xr1, -1
	xvxor.v	$xr0, $xr0, $xr1
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
	bnez	$a0, .LBB1_2
# %bb.1:
	move	$a0, $zero
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB1_2:
	pcaddu18i	$ra, %call36(abort)
	jirl	$ra, $ra, 0
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
                                        # -- End function
	.type	v,@object                       # @v
	.bss
	.globl	v
	.p2align	5, 0x0
v:
	.space	32
	.size	v, 32

	.section	".note.GNU-stack","",@progbits
	.addrsig
