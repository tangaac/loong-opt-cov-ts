	.file	"pr24716.c"
	.text
	.globl	f                               # -- Begin function f
	.p2align	5
	.type	f,@function
f:                                      # @f
# %bb.0:
	move	$a2, $a0
	move	$a0, $zero
	pcalau12i	$a3, %pc_hi20(W)
	addi.d	$a3, $a3, %pc_lo12(W)
	ori	$a4, $zero, 2
	addi.w	$a5, $zero, -1
	b	.LBB0_2
	.p2align	4, , 16
.LBB0_1:                                # %.preheader
                                        #   in Loop: Header=BB0_2 Depth=1
	move	$a1, $zero
	move	$a6, $a0
	slt	$a0, $a4, $a0
	add.w	$a0, $a6, $a0
	move	$a2, $a5
	bge	$a4, $a6, .LBB0_15
.LBB0_2:                                # %.preheader40
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_4 Depth 2
	bge	$a1, $a0, .LBB0_5
# %bb.3:                                # %.lr.ph
                                        #   in Loop: Header=BB0_2 Depth=1
	sltui	$a6, $a1, 1
	add.w	$a7, $a0, $a6
	.p2align	4, , 16
.LBB0_4:                                #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.w	$a0, $a0, $a6
	blt	$a1, $a7, .LBB0_4
.LBB0_5:                                # %.preheader39
                                        #   in Loop: Header=BB0_2 Depth=1
	slli.d	$a6, $a2, 2
	ldx.w	$a7, $a3, $a6
	alsl.d	$a6, $a2, $a3, 2
	blez	$a1, .LBB0_9
# %bb.6:                                # %.preheader39.split
                                        #   in Loop: Header=BB0_2 Depth=1
	bgtz	$a2, .LBB0_12
# %bb.7:                                # %.preheader39.split.split
                                        #   in Loop: Header=BB0_2 Depth=1
	beqz	$a7, .LBB0_1
# %bb.8:                                #   in Loop: Header=BB0_2 Depth=1
	st.w	$zero, $a6, 0
	ori	$a0, $zero, 1
	b	.LBB0_1
.LBB0_9:                                # %.preheader39.split.us
	beqz	$a7, .LBB0_11
# %bb.10:
	st.w	$zero, $a6, 0
	.p2align	4, , 16
.LBB0_11:                               # %.peel.next
                                        # =>This Inner Loop Header: Depth=1
	b	.LBB0_11
.LBB0_12:                               # %.preheader39.split.split.us
	beqz	$a7, .LBB0_14
# %bb.13:
	st.w	$zero, $a6, 0
	.p2align	4, , 16
.LBB0_14:                               # %.critedge
                                        # =>This Inner Loop Header: Depth=1
	b	.LBB0_14
.LBB0_15:
	ret
.Lfunc_end0:
	.size	f, .Lfunc_end0-f
                                        # -- End function
	.globl	main                            # -- Begin function main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:                                # %.preheader39.split.i
	pcalau12i	$a0, %pc_hi20(W)
	ld.w	$a1, $a0, %pc_lo12(W)
	beqz	$a1, .LBB1_2
# %bb.1:
	st.w	$zero, $a0, %pc_lo12(W)
	move	$a0, $zero
	ret
.LBB1_2:                                # %.preheader.i
	pcaddu18i	$ra, %call36(abort)
	jirl	$ra, $ra, 0
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
                                        # -- End function
	.type	Link,@object                    # @Link
	.data
	.globl	Link
	.p2align	2, 0x0
Link:
	.space	4,255
	.size	Link, 4

	.type	W,@object                       # @W
	.globl	W
	.p2align	2, 0x0
W:
	.word	2                               # 0x2
	.size	W, 4

	.section	".note.GNU-stack","",@progbits
	.addrsig
