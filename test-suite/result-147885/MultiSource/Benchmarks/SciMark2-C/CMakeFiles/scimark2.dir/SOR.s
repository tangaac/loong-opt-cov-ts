	.file	"SOR.c"
	.text
	.globl	SOR_num_flops                   # -- Begin function SOR_num_flops
	.p2align	5
	.type	SOR_num_flops,@function
SOR_num_flops:                          # @SOR_num_flops
# %bb.0:
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa0, $fa0
	movgr2fr.w	$fa1, $a1
	ffint.d.w	$fa1, $fa1
	movgr2fr.w	$fa2, $a2
	ffint.d.w	$fa2, $fa2
	vldi	$vr3, -784
	fadd.d	$fa0, $fa0, $fa3
	fadd.d	$fa1, $fa1, $fa3
	fmul.d	$fa0, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fa2
	vldi	$vr1, -1000
	fmul.d	$fa0, $fa0, $fa1
	ret
.Lfunc_end0:
	.size	SOR_num_flops, .Lfunc_end0-SOR_num_flops
                                        # -- End function
	.globl	SOR_execute                     # -- Begin function SOR_execute
	.p2align	5
	.type	SOR_execute,@function
SOR_execute:                            # @SOR_execute
# %bb.0:
	blez	$a3, .LBB1_9
# %bb.1:
	ori	$a4, $zero, 3
	blt	$a0, $a4, .LBB1_9
# %bb.2:
	blt	$a1, $a4, .LBB1_9
# %bb.3:                                # %.preheader.us.us.preheader
	move	$a4, $zero
	vldi	$vr1, -944
	fmul.d	$fa1, $fa0, $fa1
	vldi	$vr2, -912
	fsub.d	$fa0, $fa2, $fa0
	addi.d	$a6, $a1, -1
	addi.d	$a1, $a0, -1
	ld.d	$a0, $a2, 8
	bstrpick.d	$a1, $a1, 31, 0
	addi.d	$a5, $a2, -8
	bstrpick.d	$a6, $a6, 31, 0
	slli.d	$a6, $a6, 3
	addi.d	$a6, $a6, -8
	.p2align	4, , 16
.LBB1_4:                                # %.preheader.us.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_5 Depth 2
                                        #       Child Loop BB1_6 Depth 3
	ori	$a7, $zero, 1
	move	$t0, $a0
	.p2align	4, , 16
.LBB1_5:                                # %.lr.ph.us.us.us
                                        #   Parent Loop BB1_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_6 Depth 3
	slli.d	$t1, $a7, 3
	ldx.d	$t3, $a5, $t1
	addi.d	$a7, $a7, 1
	slli.d	$t1, $a7, 3
	ldx.d	$t1, $a2, $t1
	fld.d	$fa3, $t0, 8
	fld.d	$fa2, $t0, 0
	move	$t2, $zero
	addi.d	$t3, $t3, 8
	.p2align	4, , 16
.LBB1_6:                                #   Parent Loop BB1_4 Depth=1
                                        #     Parent Loop BB1_5 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fldx.d	$fa4, $t3, $t2
	add.d	$t4, $t1, $t2
	fld.d	$fa5, $t4, 8
	add.d	$t4, $t0, $t2
	fld.d	$fa6, $t4, 16
	fmul.d	$fa3, $fa0, $fa3
	fadd.d	$fa4, $fa4, $fa5
	fadd.d	$fa2, $fa4, $fa2
	fadd.d	$fa2, $fa2, $fa6
	fmadd.d	$fa2, $fa1, $fa2, $fa3
	addi.d	$t2, $t2, 8
	fst.d	$fa2, $t4, 8
	fmov.d	$fa3, $fa6
	bne	$a6, $t2, .LBB1_6
# %bb.7:                                # %..loopexit_crit_edge.us.us.us
                                        #   in Loop: Header=BB1_5 Depth=2
	move	$t0, $t1
	bne	$a7, $a1, .LBB1_5
# %bb.8:                                # %._crit_edge.split.us.us.us
                                        #   in Loop: Header=BB1_4 Depth=1
	addi.w	$a4, $a4, 1
	bne	$a4, $a3, .LBB1_4
.LBB1_9:                                # %._crit_edge38
	ret
.Lfunc_end1:
	.size	SOR_execute, .Lfunc_end1-SOR_execute
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
