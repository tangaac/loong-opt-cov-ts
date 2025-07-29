	.file	"pathfinderKernel.c"
	.text
	.globl	pathFinderKernel                # -- Begin function pathFinderKernel
	.p2align	5
	.type	pathFinderKernel,@function
pathFinderKernel:                       # @pathFinderKernel
# %bb.0:
	ori	$a5, $zero, 2
	blt	$a0, $a5, .LBB0_18
# %bb.1:                                # %.preheader88.lr.ph
	ori	$a5, $zero, 1
	blt	$a1, $a5, .LBB0_18
# %bb.2:                                # %.preheader88.us.preheader
	addi.d	$sp, $sp, -128
	st.d	$ra, $sp, 120                   # 8-byte Folded Spill
	st.d	$fp, $sp, 112                   # 8-byte Folded Spill
	st.d	$s0, $sp, 104                   # 8-byte Folded Spill
	st.d	$s1, $sp, 96                    # 8-byte Folded Spill
	st.d	$s2, $sp, 88                    # 8-byte Folded Spill
	st.d	$s3, $sp, 80                    # 8-byte Folded Spill
	st.d	$s4, $sp, 72                    # 8-byte Folded Spill
	st.d	$s5, $sp, 64                    # 8-byte Folded Spill
	st.d	$s6, $sp, 56                    # 8-byte Folded Spill
	st.d	$s7, $sp, 48                    # 8-byte Folded Spill
	st.d	$s8, $sp, 40                    # 8-byte Folded Spill
	move	$a6, $zero
	bstrpick.d	$a7, $a1, 31, 0
	addi.w	$a0, $a0, -1
	alsl.d	$t0, $a1, $a4, 2
	addi.d	$t0, $t0, -8
	addi.d	$t1, $a1, -1
	bstrpick.d	$t1, $t1, 31, 0
	alsl.d	$t2, $t1, $a4, 2
	alsl.d	$t3, $t1, $a3, 2
	sub.d	$t4, $a4, $a3
	sltui	$t5, $a1, 8
	sltui	$t4, $t4, 32
	or	$t4, $t5, $t4
	bstrpick.d	$t5, $a7, 30, 3
	slli.d	$t5, $t5, 3
	addi.d	$a5, $a4, 16
	st.d	$a5, $sp, 32                    # 8-byte Folded Spill
	addi.d	$a5, $a3, 16
	st.d	$a5, $sp, 24                    # 8-byte Folded Spill
	slli.d	$t8, $a7, 2
	alsl.d	$fp, $a7, $a2, 2
	addi.d	$fp, $fp, 4
	addi.d	$a5, $a4, 8
	st.d	$a5, $sp, 16                    # 8-byte Folded Spill
	addi.d	$a5, $a3, 4
	st.d	$a5, $sp, 8                     # 8-byte Folded Spill
	addi.d	$s2, $t1, -1
	addi.d	$s3, $a7, -1
	b	.LBB0_4
	.p2align	4, , 16
.LBB0_3:                                # %._crit_edge.us
                                        #   in Loop: Header=BB0_4 Depth=1
	add.d	$fp, $fp, $t8
	beq	$a6, $a0, .LBB0_17
.LBB0_4:                                # %.lr.ph.us.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_7 Depth 2
                                        #     Child Loop BB0_10 Depth 2
                                        #     Child Loop BB0_15 Depth 2
	beqz	$t4, .LBB0_6
# %bb.5:                                #   in Loop: Header=BB0_4 Depth=1
	move	$s6, $zero
	b	.LBB0_9
	.p2align	4, , 16
.LBB0_6:                                # %vector.body.preheader
                                        #   in Loop: Header=BB0_4 Depth=1
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 32                    # 8-byte Folded Reload
	move	$s6, $t5
	.p2align	4, , 16
.LBB0_7:                                # %vector.body
                                        #   Parent Loop BB0_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $s4, -16
	vld	$vr1, $s4, 0
	vst	$vr0, $s5, -16
	vst	$vr1, $s5, 0
	addi.d	$s6, $s6, -8
	addi.d	$s5, $s5, 32
	addi.d	$s4, $s4, 32
	bnez	$s6, .LBB0_7
# %bb.8:                                # %middle.block
                                        #   in Loop: Header=BB0_4 Depth=1
	move	$s6, $t5
	beq	$t5, $a7, .LBB0_11
.LBB0_9:                                # %.lr.ph.us.preheader111
                                        #   in Loop: Header=BB0_4 Depth=1
	alsl.d	$s4, $s6, $a3, 2
	alsl.d	$s5, $s6, $a4, 2
	sub.d	$s6, $a7, $s6
	.p2align	4, , 16
.LBB0_10:                               # %.lr.ph.us
                                        #   Parent Loop BB0_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a5, $s4, 0
	st.w	$a5, $s5, 0
	addi.d	$s4, $s4, 4
	addi.d	$s6, $s6, -1
	addi.d	$s5, $s5, 4
	bnez	$s6, .LBB0_10
.LBB0_11:                               # %.loopexit
                                        #   in Loop: Header=BB0_4 Depth=1
	addi.d	$a6, $a6, 1
	ld.w	$a5, $a4, 0
	ld.w	$t6, $a4, 4
	mul.d	$s4, $a6, $a7
	slli.d	$t7, $s4, 2
	ldx.w	$t7, $a2, $t7
	slt	$s0, $a5, $t6
	masknez	$t6, $t6, $s0
	maskeqz	$a5, $a5, $s0
	or	$a5, $a5, $t6
	add.d	$a5, $a5, $t7
	st.w	$a5, $a3, 0
	ori	$a5, $zero, 1
	beq	$a1, $a5, .LBB0_3
# %bb.12:                               # %.peel.next
                                        #   in Loop: Header=BB0_4 Depth=1
	alsl.d	$a5, $s4, $a2, 2
	alsl.d	$s4, $t1, $a5, 2
	move	$s5, $s3
	move	$s6, $s2
	ld.d	$s7, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s8, $sp, 16                    # 8-byte Folded Reload
	move	$ra, $fp
	b	.LBB0_15
	.p2align	4, , 16
.LBB0_13:                               #   in Loop: Header=BB0_15 Depth=2
	ld.w	$a5, $t2, 0
	ld.w	$t6, $t0, 0
	ld.w	$t7, $s4, 0
	slt	$s0, $a5, $t6
	masknez	$t6, $t6, $s0
	maskeqz	$a5, $a5, $s0
	or	$a5, $a5, $t6
	add.d	$a5, $a5, $t7
	st.w	$a5, $t3, 0
.LBB0_14:                               #   in Loop: Header=BB0_15 Depth=2
	addi.d	$ra, $ra, 4
	addi.d	$s8, $s8, 4
	addi.d	$s7, $s7, 4
	addi.d	$s5, $s5, -1
	addi.d	$s6, $s6, -1
	beqz	$s5, .LBB0_3
.LBB0_15:                               #   Parent Loop BB0_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beqz	$s6, .LBB0_13
# %bb.16:                               #   in Loop: Header=BB0_15 Depth=2
	ld.w	$a5, $s8, -8
	ld.w	$t6, $s8, 0
	ld.w	$t7, $ra, 0
	ld.w	$s0, $s8, -4
	slt	$s1, $a5, $t6
	masknez	$t6, $t6, $s1
	maskeqz	$a5, $a5, $s1
	or	$a5, $a5, $t6
	slt	$t6, $s0, $a5
	masknez	$a5, $a5, $t6
	maskeqz	$t6, $s0, $t6
	or	$a5, $t6, $a5
	add.d	$a5, $a5, $t7
	st.w	$a5, $s7, 0
	b	.LBB0_14
.LBB0_17:
	ld.d	$s8, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 112                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 120                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 128
.LBB0_18:                               # %._crit_edge93
	ret
.Lfunc_end0:
	.size	pathFinderKernel, .Lfunc_end0-pathFinderKernel
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
