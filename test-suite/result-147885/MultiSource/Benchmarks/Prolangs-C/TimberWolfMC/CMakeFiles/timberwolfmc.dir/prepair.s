	.file	"prepair.c"
	.text
	.globl	prepair                         # -- Begin function prepair
	.p2align	5
	.type	prepair,@function
prepair:                                # @prepair
# %bb.0:
	blez	$a0, .LBB0_10
# %bb.1:                                # %.lr.ph32.preheader
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	st.d	$s4, $sp, 8                     # 8-byte Folded Spill
	st.d	$s5, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	pcalau12i	$a0, %got_pc_hi20(pnodeArray)
	ld.d	$s0, $a0, %got_pc_lo12(pnodeArray)
	ld.d	$a1, $s0, 0
	pcalau12i	$a0, %got_pc_hi20(numnodes)
	ld.d	$s1, $a0, %got_pc_lo12(numnodes)
	addi.d	$a0, $fp, 1
	bstrpick.d	$s2, $a0, 31, 0
	ori	$s3, $zero, 1
	b	.LBB0_3
	.p2align	4, , 16
.LBB0_2:                                #   in Loop: Header=BB0_3 Depth=1
	addi.d	$s3, $s3, 1
	beq	$s3, $s2, .LBB0_9
.LBB0_3:                                # %.lr.ph32
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_5 Depth 2
                                        #     Child Loop BB0_7 Depth 2
	slli.d	$a0, $s3, 4
	alsl.d	$s4, $s3, $a0, 3
	stx.w	$zero, $a1, $s4
	ld.w	$a0, $s1, 0
	add.w	$a0, $a0, $fp
	blez	$a0, .LBB0_6
# %bb.4:                                # %.lr.ph
                                        #   in Loop: Header=BB0_3 Depth=1
	add.d	$a0, $a1, $s4
	ld.d	$a2, $a0, 8
	move	$a0, $zero
	addi.d	$a2, $a2, 12
	.p2align	4, , 16
.LBB0_5:                                #   Parent Loop BB0_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.w	$zero, $a2, 8
	st.d	$zero, $a2, 0
	ld.w	$a3, $s1, 0
	add.w	$a3, $a3, $fp
	addi.d	$a0, $a0, 1
	addi.d	$a2, $a2, 12
	blt	$a0, $a3, .LBB0_5
.LBB0_6:                                # %._crit_edge
                                        #   in Loop: Header=BB0_3 Depth=1
	add.d	$a0, $a1, $s4
	ld.d	$a0, $a0, 16
	beqz	$a0, .LBB0_2
	.p2align	4, , 16
.LBB0_7:                                # %.preheader
                                        #   Parent Loop BB0_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s5, $a0, 8
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s5
	bnez	$s5, .LBB0_7
# %bb.8:                                #   in Loop: Header=BB0_3 Depth=1
	ld.d	$a1, $s0, 0
	add.d	$a0, $a1, $s4
	st.d	$zero, $a0, 16
	b	.LBB0_2
.LBB0_9:
	ld.d	$s5, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
.LBB0_10:                               # %._crit_edge33
	ret
.Lfunc_end0:
	.size	prepair, .Lfunc_end0-prepair
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
