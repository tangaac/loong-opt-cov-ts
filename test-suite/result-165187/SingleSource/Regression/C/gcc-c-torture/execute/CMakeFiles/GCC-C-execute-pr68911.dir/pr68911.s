	.file	"pr68911.c"
	.text
	.globl	main                            # -- Begin function main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:
	pcalau12i	$a0, %pc_hi20(c)
	ld.w	$a1, $a0, %pc_lo12(c)
	ori	$a2, $zero, 1
	blt	$a2, $a1, .LBB0_6
# %bb.1:                                # %.lr.ph
	pcalau12i	$a2, %pc_hi20(b)
	ld.w	$a2, $a2, %pc_lo12(b)
	pcalau12i	$a3, %pc_hi20(d)
	ld.h	$a3, $a3, %pc_lo12(d)
	sltu	$a2, $zero, $a2
	bstrpick.d	$a3, $a3, 15, 0
	sltu	$a3, $zero, $a3
	and	$a2, $a2, $a3
	nor	$a2, $a2, $zero
	ori	$a3, $zero, 2
	addi.w	$a4, $zero, -8
	pcalau12i	$a5, %pc_hi20(a)
	ori	$a6, $zero, 2
	b	.LBB0_3
	.p2align	4, , 16
.LBB0_2:                                #   in Loop: Header=BB0_3 Depth=1
	addi.w	$a1, $a1, 1
	beq	$a1, $a3, .LBB0_5
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	addi.w	$a7, $a6, 0
	bltu	$a4, $a7, .LBB0_2
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=1
	st.b	$a2, $a5, %pc_lo12(a)
	move	$a6, $a2
	b	.LBB0_2
.LBB0_5:                                # %._crit_edge.loopexit
	st.w	$a1, $a0, %pc_lo12(c)
.LBB0_6:                                # %._crit_edge
	move	$a0, $zero
	ret
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
                                        # -- End function
	.type	c,@object                       # @c
	.bss
	.globl	c
	.p2align	2, 0x0
c:
	.word	0                               # 0x0
	.size	c, 4

	.type	b,@object                       # @b
	.globl	b
	.p2align	2, 0x0
b:
	.word	0                               # 0x0
	.size	b, 4

	.type	d,@object                       # @d
	.globl	d
	.p2align	1, 0x0
d:
	.half	0                               # 0x0
	.size	d, 2

	.type	a,@object                       # @a
	.globl	a
a:
	.byte	0                               # 0x0
	.size	a, 1

	.section	".note.GNU-stack","",@progbits
	.addrsig
