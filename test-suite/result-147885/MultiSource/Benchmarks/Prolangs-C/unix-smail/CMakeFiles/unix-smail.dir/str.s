	.file	"str.c"
	.text
	.globl	strncmpic                       # -- Begin function strncmpic
	.p2align	5
	.type	strncmpic,@function
strncmpic:                              # @strncmpic
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	ori	$s2, $zero, 1
	blt	$a2, $s2, .LBB0_5
# %bb.1:                                # %.lr.ph.preheader
	move	$s1, $a2
	move	$fp, $a1
	move	$s0, $a0
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	addi.d	$a1, $s1, 1
	.p2align	4, , 16
.LBB0_2:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.b	$a3, $fp, 0
	ld.b	$a4, $s0, 0
	andi	$a6, $a3, 255
	andi	$a5, $a4, 255
	ext.w.b	$a2, $a6
	beqz	$a6, .LBB0_6
# %bb.3:                                #   in Loop: Header=BB0_2 Depth=1
	ld.d	$a6, $a0, 0
	slli.d	$a7, $a4, 1
	ldx.hu	$a7, $a6, $a7
	ext.w.b	$a5, $a5
	slli.d	$t0, $a3, 1
	ldx.hu	$a6, $a6, $t0
	srli.d	$a7, $a7, 3
	andi	$a7, $a7, 32
	add.d	$a7, $a7, $a5
	srli.d	$a6, $a6, 3
	andi	$a6, $a6, 32
	add.d	$a6, $a6, $a2
	bne	$a7, $a6, .LBB0_7
# %bb.4:                                #   in Loop: Header=BB0_2 Depth=1
	addi.d	$fp, $fp, 1
	addi.w	$a1, $a1, -1
	addi.d	$s0, $s0, 1
	blt	$s2, $a1, .LBB0_2
.LBB0_5:
	move	$a0, $zero
	b	.LBB0_8
.LBB0_6:                                # %.lr.ph..critedge_crit_edge
	ext.w.b	$a5, $a5
.LBB0_7:                                # %.critedge
	ld.d	$a0, $a0, 0
	slli.d	$a1, $a4, 1
	ldx.hu	$a1, $a0, $a1
	slli.d	$a3, $a3, 1
	ldx.hu	$a0, $a0, $a3
	srli.d	$a1, $a1, 3
	andi	$a1, $a1, 32
	srli.d	$a0, $a0, 3
	andi	$a0, $a0, 32
	add.d	$a1, $a5, $a1
	add.d	$a0, $a2, $a0
	sub.d	$a0, $a1, $a0
.LBB0_8:                                # %.critedge27
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end0:
	.size	strncmpic, .Lfunc_end0-strncmpic
                                        # -- End function
	.globl	strcmpic                        # -- Begin function strcmpic
	.p2align	5
	.type	strcmpic,@function
strcmpic:                               # @strcmpic
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	move	$s0, $a1
	ld.bu	$s1, $a1, 0
	move	$fp, $a0
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	beqz	$s1, .LBB1_4
# %bb.1:                                # %.lr.ph
	ld.d	$a1, $a0, 0
	addi.d	$a2, $s0, 1
	.p2align	4, , 16
.LBB1_2:                                # =>This Inner Loop Header: Depth=1
	ld.b	$a3, $fp, 0
	slli.d	$a4, $a3, 1
	ldx.hu	$a4, $a1, $a4
	ext.w.b	$a5, $s1
	slli.d	$a6, $a5, 1
	ldx.hu	$a6, $a1, $a6
	srli.d	$a4, $a4, 3
	andi	$a4, $a4, 32
	add.d	$a3, $a4, $a3
	srli.d	$a4, $a6, 3
	andi	$a4, $a4, 32
	add.d	$a4, $a4, $a5
	bne	$a3, $a4, .LBB1_5
# %bb.3:                                #   in Loop: Header=BB1_2 Depth=1
	ld.bu	$s1, $a2, 0
	addi.d	$fp, $fp, 1
	addi.d	$a2, $a2, 1
	bnez	$s1, .LBB1_2
.LBB1_4:
	move	$s1, $zero
.LBB1_5:                                # %._crit_edge
	ld.b	$a1, $fp, 0
	ld.d	$a0, $a0, 0
	slli.d	$a2, $a1, 1
	ldx.hu	$a2, $a0, $a2
	ext.w.b	$a3, $s1
	slli.d	$a4, $a3, 1
	ldx.hu	$a0, $a0, $a4
	srli.d	$a2, $a2, 3
	andi	$a2, $a2, 32
	srli.d	$a0, $a0, 3
	andi	$a0, $a0, 32
	add.d	$a1, $a1, $a2
	add.d	$a0, $a3, $a0
	sub.d	$a0, $a1, $a0
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end1:
	.size	strcmpic, .Lfunc_end1-strcmpic
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
