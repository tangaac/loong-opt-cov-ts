	.file	"Salignmm.c"
	.text
	.globl	imp_match_out_sc                # -- Begin function imp_match_out_sc
	.p2align	5
	.type	imp_match_out_sc,@function
imp_match_out_sc:                       # @imp_match_out_sc
# %bb.0:
	pcalau12i	$a2, %pc_hi20(impmtx)
	ld.d	$a2, $a2, %pc_lo12(impmtx)
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $a2, $a0
	slli.d	$a1, $a1, 2
	fldx.s	$fa0, $a0, $a1
	ret
.Lfunc_end0:
	.size	imp_match_out_sc, .Lfunc_end0-imp_match_out_sc
                                        # -- End function
	.globl	imp_rna                         # -- Begin function imp_rna
	.p2align	5
	.type	imp_rna,@function
imp_rna:                                # @imp_rna
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	vld	$vr0, $sp, 48
	ld.d	$t0, $sp, 64
	pcalau12i	$t1, %pc_hi20(impmtx)
	ld.d	$t1, $t1, %pc_lo12(impmtx)
	st.d	$t0, $sp, 24
	vst	$vr0, $sp, 8
	st.d	$t1, $sp, 0
	pcaddu18i	$ra, %call36(foldrna)
	jirl	$ra, $ra, 0
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end1:
	.size	imp_rna, .Lfunc_end1-imp_rna
                                        # -- End function
	.globl	imp_match_init_strict           # -- Begin function imp_match_init_strict
	.p2align	5
	.type	imp_match_init_strict,@function
imp_match_init_strict:                  # @imp_match_init_strict
# %bb.0:
	addi.d	$sp, $sp, -96
	st.d	$ra, $sp, 88                    # 8-byte Folded Spill
	st.d	$fp, $sp, 80                    # 8-byte Folded Spill
	st.d	$s0, $sp, 72                    # 8-byte Folded Spill
	st.d	$s1, $sp, 64                    # 8-byte Folded Spill
	st.d	$s2, $sp, 56                    # 8-byte Folded Spill
	st.d	$s3, $sp, 48                    # 8-byte Folded Spill
	st.d	$s4, $sp, 40                    # 8-byte Folded Spill
	st.d	$s5, $sp, 32                    # 8-byte Folded Spill
	st.d	$s6, $sp, 24                    # 8-byte Folded Spill
	st.d	$s7, $sp, 16                    # 8-byte Folded Spill
	st.d	$s8, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a7
	move	$s0, $a6
	move	$s1, $a5
	move	$s5, $a4
	move	$s4, $a3
	move	$s2, $a2
	move	$s3, $a1
	pcalau12i	$s6, %pc_hi20(impalloclen)
	ld.w	$a0, $s6, %pc_lo12(impalloclen)
	addi.w	$a1, $a3, 2
	pcalau12i	$a2, %pc_hi20(impmtx)
	st.d	$a2, $sp, 0                     # 8-byte Folded Spill
	pcalau12i	$s8, %pc_hi20(imp_match_init_strict.nocount1)
	pcalau12i	$s7, %pc_hi20(imp_match_init_strict.nocount2)
	blt	$a0, $a1, .LBB2_11
# %bb.1:
	addi.w	$a1, $s5, 2
	blt	$a0, $a1, .LBB2_11
# %bb.2:
	ori	$a1, $zero, 1
	blt	$s4, $a1, .LBB2_18
.LBB2_3:                                # %.preheader211.lr.ph
	ld.d	$a0, $s8, %pc_lo12(imp_match_init_strict.nocount1)
	blt	$s3, $a1, .LBB2_19
# %bb.4:                                # %.preheader211.us.preheader
	move	$a1, $zero
	ori	$a2, $zero, 45
	b	.LBB2_7
	.p2align	4, , 16
.LBB2_5:                                # %._crit_edge.us.thread
                                        #   in Loop: Header=BB2_7 Depth=1
	move	$a4, $zero
.LBB2_6:                                #   in Loop: Header=BB2_7 Depth=1
	stx.b	$a4, $a0, $a1
	addi.d	$a1, $a1, 1
	beq	$a1, $s4, .LBB2_23
.LBB2_7:                                # %.preheader211.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_8 Depth 2
	move	$a4, $s3
	move	$a5, $s1
	move	$a3, $s3
	.p2align	4, , 16
.LBB2_8:                                #   Parent Loop BB2_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a6, $a5, 0
	ldx.bu	$a6, $a6, $a1
	beq	$a6, $a2, .LBB2_10
# %bb.9:                                #   in Loop: Header=BB2_8 Depth=2
	addi.w	$a3, $a3, -1
	addi.d	$a4, $a4, -1
	addi.d	$a5, $a5, 8
	bnez	$a4, .LBB2_8
	b	.LBB2_5
	.p2align	4, , 16
.LBB2_10:                               # %._crit_edge.us
                                        #   in Loop: Header=BB2_7 Depth=1
	ori	$a4, $zero, 1
	bnez	$a3, .LBB2_6
	b	.LBB2_5
.LBB2_11:
	ld.d	$a0, $sp, 0                     # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(impmtx)
	beqz	$a0, .LBB2_13
# %bb.12:
	pcaddu18i	$ra, %call36(FreeFloatMtx)
	jirl	$ra, $ra, 0
.LBB2_13:
	ld.d	$a0, $s8, %pc_lo12(imp_match_init_strict.nocount1)
	beqz	$a0, .LBB2_15
# %bb.14:
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB2_15:
	ld.d	$a0, $s7, %pc_lo12(imp_match_init_strict.nocount2)
	beqz	$a0, .LBB2_17
# %bb.16:
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB2_17:
	slt	$a0, $s5, $s4
	masknez	$a1, $s5, $a0
	maskeqz	$a0, $s4, $a0
	or	$a0, $a0, $a1
	addi.w	$a0, $a0, 2
	st.w	$a0, $s6, %pc_lo12(impalloclen)
	move	$a1, $a0
	pcaddu18i	$ra, %call36(AllocateFloatMtx)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s6, %pc_lo12(impalloclen)
	ld.d	$a2, $sp, 0                     # 8-byte Folded Reload
	st.d	$a0, $a2, %pc_lo12(impmtx)
	move	$a0, $a1
	pcaddu18i	$ra, %call36(AllocateCharVec)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s6, %pc_lo12(impalloclen)
	st.d	$a0, $s8, %pc_lo12(imp_match_init_strict.nocount1)
	move	$a0, $a1
	pcaddu18i	$ra, %call36(AllocateCharVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $s7, %pc_lo12(imp_match_init_strict.nocount2)
	ori	$a1, $zero, 1
	bge	$s4, $a1, .LBB2_3
.LBB2_18:                               # %.preheader210.thread
	bge	$s5, $a1, .LBB2_24
	b	.LBB2_39
.LBB2_19:                               # %.preheader211.lr.ph.split
	beqz	$s3, .LBB2_21
# %bb.20:                               # %.preheader211.preheader
	ori	$a1, $zero, 1
	b	.LBB2_22
.LBB2_21:                               # %.preheader211.us216.preheader
	move	$a1, $zero
.LBB2_22:                               # %.preheader210
	move	$a2, $s4
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB2_23:                               # %.preheader210
	blez	$s5, .LBB2_39
.LBB2_24:                               # %.preheader209.lr.ph
	ld.d	$a0, $s7, %pc_lo12(imp_match_init_strict.nocount2)
	ori	$a1, $zero, 1
	blt	$s2, $a1, .LBB2_32
# %bb.25:                               # %.preheader209.us.preheader
	move	$a1, $zero
	ori	$a2, $zero, 45
	b	.LBB2_28
	.p2align	4, , 16
.LBB2_26:                               # %._crit_edge.us222.thread
                                        #   in Loop: Header=BB2_28 Depth=1
	move	$a4, $zero
.LBB2_27:                               #   in Loop: Header=BB2_28 Depth=1
	stx.b	$a4, $a0, $a1
	addi.d	$a1, $a1, 1
	beq	$a1, $s5, .LBB2_36
.LBB2_28:                               # %.preheader209.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_29 Depth 2
	move	$a4, $s2
	move	$a5, $s0
	move	$a3, $s2
	.p2align	4, , 16
.LBB2_29:                               #   Parent Loop BB2_28 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a6, $a5, 0
	ldx.bu	$a6, $a6, $a1
	beq	$a6, $a2, .LBB2_31
# %bb.30:                               #   in Loop: Header=BB2_29 Depth=2
	addi.w	$a3, $a3, -1
	addi.d	$a4, $a4, -1
	addi.d	$a5, $a5, 8
	bnez	$a4, .LBB2_29
	b	.LBB2_26
	.p2align	4, , 16
.LBB2_31:                               # %._crit_edge.us222
                                        #   in Loop: Header=BB2_28 Depth=1
	ori	$a4, $zero, 1
	bnez	$a3, .LBB2_27
	b	.LBB2_26
.LBB2_32:                               # %.preheader209.lr.ph.split
	beqz	$s2, .LBB2_34
# %bb.33:                               # %.preheader209.preheader
	ori	$a1, $zero, 1
	b	.LBB2_35
.LBB2_34:                               # %.preheader209.us224.preheader
	move	$a1, $zero
.LBB2_35:                               # %.preheader208
	move	$a2, $s5
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB2_36:                               # %.preheader208
	ori	$a0, $zero, 1
	blt	$s4, $a0, .LBB2_39
# %bb.37:                               # %.preheader207.lr.ph
	ld.d	$a0, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s6, $a0, %pc_lo12(impmtx)
	slli.d	$s5, $s5, 2
	.p2align	4, , 16
.LBB2_38:                               # %.preheader207.us
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s6, 0
	move	$a1, $zero
	move	$a2, $s5
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	addi.d	$s4, $s4, -1
	addi.d	$s6, $s6, 8
	bnez	$s4, .LBB2_38
.LBB2_39:                               # %._crit_edge228
	ori	$a0, $zero, 1
	blt	$s3, $a0, .LBB2_77
# %bb.40:                               # %.preheader206.lr.ph
	blt	$s2, $a0, .LBB2_77
# %bb.41:                               # %.preheader206.us.preheader
	pcalau12i	$a0, %got_pc_hi20(fastathreshold)
	ld.d	$a2, $a0, %got_pc_lo12(fastathreshold)
	ld.d	$a0, $sp, 104
	ld.d	$a1, $sp, 96
	fld.d	$fa0, $a2, 0
	ld.d	$a2, $sp, 0                     # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(impmtx)
	move	$a3, $zero
	ori	$a4, $zero, 45
	b	.LBB2_43
	.p2align	4, , 16
.LBB2_42:                               # %._crit_edge235.us
                                        #   in Loop: Header=BB2_43 Depth=1
	addi.d	$a3, $a3, 1
	beq	$a3, $s3, .LBB2_77
.LBB2_43:                               # %.preheader206.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_45 Depth 2
                                        #       Child Loop BB2_48 Depth 3
                                        #         Child Loop BB2_49 Depth 4
                                        #         Child Loop BB2_53 Depth 4
                                        #         Child Loop BB2_57 Depth 4
                                        #         Child Loop BB2_61 Depth 4
                                        #         Child Loop BB2_65 Depth 4
	slli.d	$a5, $a3, 3
	fldx.d	$fa1, $fp, $a5
	ldx.d	$a5, $a0, $a5
	move	$a6, $zero
	alsl.d	$a7, $a3, $s1, 3
	b	.LBB2_45
	.p2align	4, , 16
.LBB2_44:                               # %._crit_edge.us238
                                        #   in Loop: Header=BB2_45 Depth=2
	addi.d	$a6, $a6, 1
	beq	$a6, $s2, .LBB2_42
.LBB2_45:                               #   Parent Loop BB2_43 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_48 Depth 3
                                        #         Child Loop BB2_49 Depth 4
                                        #         Child Loop BB2_53 Depth 4
                                        #         Child Loop BB2_57 Depth 4
                                        #         Child Loop BB2_61 Depth 4
                                        #         Child Loop BB2_65 Depth 4
	slli.d	$t2, $a6, 3
	ldx.d	$t0, $a5, $t2
	beqz	$t0, .LBB2_44
# %bb.46:                               # %.lr.ph.us
                                        #   in Loop: Header=BB2_45 Depth=2
	fldx.d	$fa2, $a1, $t2
	fmul.d	$fa2, $fa1, $fa2
	ld.d	$t1, $a7, 0
	ldx.d	$t2, $s0, $t2
	fmul.d	$fa2, $fa0, $fa2
	fcvt.s.d	$fa2, $fa2
	nor	$t3, $t1, $zero
	nor	$t4, $t2, $zero
	b	.LBB2_48
	.p2align	4, , 16
.LBB2_47:                               # %.critedge.us
                                        #   in Loop: Header=BB2_48 Depth=3
	ld.d	$t0, $t0, 8
	beqz	$t0, .LBB2_44
.LBB2_48:                               #   Parent Loop BB2_43 Depth=1
                                        #     Parent Loop BB2_45 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB2_49 Depth 4
                                        #         Child Loop BB2_53 Depth 4
                                        #         Child Loop BB2_57 Depth 4
                                        #         Child Loop BB2_61 Depth 4
                                        #         Child Loop BB2_65 Depth 4
	ld.w	$s4, $t0, 24
	addi.d	$t8, $zero, -1
	move	$t7, $t1
	.p2align	4, , 16
.LBB2_49:                               #   Parent Loop BB2_43 Depth=1
                                        #     Parent Loop BB2_45 Depth=2
                                        #       Parent Loop BB2_48 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.bu	$t5, $t7, 0
	beqz	$t5, .LBB2_52
# %bb.50:                               #   in Loop: Header=BB2_49 Depth=4
	addi.d	$t5, $t5, -45
	sltu	$t5, $zero, $t5
	add.w	$t8, $t8, $t5
	addi.d	$t7, $t7, 1
	bne	$t8, $s4, .LBB2_49
# %bb.51:                               #   in Loop: Header=BB2_48 Depth=3
	move	$t8, $s4
.LBB2_52:                               #   in Loop: Header=BB2_48 Depth=3
	ld.w	$s5, $t0, 28
	add.w	$t5, $t7, $t3
	move	$t6, $t5
	beq	$s4, $s5, .LBB2_56
	.p2align	4, , 16
.LBB2_53:                               # %.preheader205.us
                                        #   Parent Loop BB2_43 Depth=1
                                        #     Parent Loop BB2_45 Depth=2
                                        #       Parent Loop BB2_48 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.bu	$t6, $t7, 0
	beqz	$t6, .LBB2_55
# %bb.54:                               #   in Loop: Header=BB2_53 Depth=4
	addi.d	$t6, $t6, -45
	sltu	$t6, $zero, $t6
	add.w	$t8, $t8, $t6
	addi.d	$t7, $t7, 1
	bne	$t8, $s5, .LBB2_53
.LBB2_55:                               #   in Loop: Header=BB2_48 Depth=3
	add.w	$t6, $t7, $t3
.LBB2_56:                               #   in Loop: Header=BB2_48 Depth=3
	ld.w	$s6, $t0, 32
	addi.d	$s5, $zero, -1
	move	$s4, $t2
	.p2align	4, , 16
.LBB2_57:                               #   Parent Loop BB2_43 Depth=1
                                        #     Parent Loop BB2_45 Depth=2
                                        #       Parent Loop BB2_48 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.bu	$t7, $s4, 0
	beqz	$t7, .LBB2_60
# %bb.58:                               #   in Loop: Header=BB2_57 Depth=4
	addi.d	$t7, $t7, -45
	sltu	$t7, $zero, $t7
	add.w	$s5, $s5, $t7
	addi.d	$s4, $s4, 1
	bne	$s5, $s6, .LBB2_57
# %bb.59:                               #   in Loop: Header=BB2_48 Depth=3
	move	$s5, $s6
.LBB2_60:                               #   in Loop: Header=BB2_48 Depth=3
	ld.w	$s7, $t0, 36
	add.w	$t7, $s4, $t4
	move	$t8, $t7
	beq	$s6, $s7, .LBB2_64
	.p2align	4, , 16
.LBB2_61:                               # %.preheader.us
                                        #   Parent Loop BB2_43 Depth=1
                                        #     Parent Loop BB2_45 Depth=2
                                        #       Parent Loop BB2_48 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.bu	$t8, $s4, 0
	beqz	$t8, .LBB2_63
# %bb.62:                               #   in Loop: Header=BB2_61 Depth=4
	addi.d	$t8, $t8, -45
	sltu	$t8, $zero, $t8
	add.w	$s5, $s5, $t8
	addi.d	$s4, $s4, 1
	bne	$s5, $s7, .LBB2_61
.LBB2_63:                               #   in Loop: Header=BB2_48 Depth=3
	add.w	$t8, $s4, $t4
.LBB2_64:                               #   in Loop: Header=BB2_48 Depth=3
	add.d	$s4, $t1, $t5
	add.d	$s5, $t2, $t7
	.p2align	4, , 16
.LBB2_65:                               #   Parent Loop BB2_43 Depth=1
                                        #     Parent Loop BB2_45 Depth=2
                                        #       Parent Loop BB2_48 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.bu	$s7, $s4, 0
	beqz	$s7, .LBB2_47
# %bb.66:                               #   in Loop: Header=BB2_65 Depth=4
	ld.bu	$s6, $s5, 0
	beqz	$s6, .LBB2_47
# %bb.67:                               #   in Loop: Header=BB2_65 Depth=4
	beq	$s7, $a4, .LBB2_70
# %bb.68:                               #   in Loop: Header=BB2_65 Depth=4
	beq	$s6, $a4, .LBB2_70
# %bb.69:                               #   in Loop: Header=BB2_65 Depth=4
	slli.d	$s6, $t5, 3
	ldx.d	$s6, $a2, $s6
	fld.s	$fa3, $t0, 64
	slli.d	$s7, $t7, 2
	fldx.s	$fa4, $s6, $s7
	fmadd.s	$fa3, $fa3, $fa2, $fa4
	fstx.s	$fa3, $s6, $s7
	addi.w	$t5, $t5, 1
	addi.w	$t7, $t7, 1
	addi.d	$s4, $s4, 1
	b	.LBB2_74
	.p2align	4, , 16
.LBB2_70:                               #   in Loop: Header=BB2_65 Depth=4
	bne	$s7, $a4, .LBB2_72
# %bb.71:                               #   in Loop: Header=BB2_65 Depth=4
	addi.w	$t5, $t5, 1
	addi.d	$s4, $s4, 1
.LBB2_72:                               #   in Loop: Header=BB2_65 Depth=4
	bne	$s6, $a4, .LBB2_75
# %bb.73:                               #   in Loop: Header=BB2_65 Depth=4
	addi.w	$t7, $t7, 1
.LBB2_74:                               #   in Loop: Header=BB2_65 Depth=4
	addi.d	$s5, $s5, 1
.LBB2_75:                               #   in Loop: Header=BB2_65 Depth=4
	blt	$t6, $t5, .LBB2_47
# %bb.76:                               #   in Loop: Header=BB2_65 Depth=4
	bge	$t8, $t7, .LBB2_65
	b	.LBB2_47
.LBB2_77:                               # %._crit_edge237
	ld.d	$s8, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s7, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
	ret
.Lfunc_end2:
	.size	imp_match_init_strict, .Lfunc_end2-imp_match_init_strict
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function A__align
.LCPI3_0:
	.dword	0x3ff4cccccccccccd              # double 1.3
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0
.LCPI3_1:
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	4                               # 0x4
	.word	5                               # 0x5
	.word	6                               # 0x6
	.word	7                               # 0x7
	.word	8                               # 0x8
.LCPI3_2:
	.dword	5                               # 0x5
	.dword	6                               # 0x6
	.dword	7                               # 0x7
	.dword	8                               # 0x8
.LCPI3_3:
	.dword	1                               # 0x1
	.dword	2                               # 0x2
	.dword	3                               # 0x3
	.dword	4                               # 0x4
.LCPI3_6:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	4                               # 0x4
	.word	5                               # 0x5
	.word	6                               # 0x6
	.word	7                               # 0x7
.LCPI3_8:
	.word	0                               # 0x0
	.word	4                               # 0x4
	.word	4                               # 0x4
	.word	4                               # 0x4
	.word	4                               # 0x4
	.word	4                               # 0x4
	.word	4                               # 0x4
	.word	4                               # 0x4
.LCPI3_9:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
	.dword	0                               # 0x0
	.dword	0                               # 0x0
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI3_4:
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	4                               # 0x4
.LCPI3_5:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
.LCPI3_7:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.text
	.globl	A__align
	.p2align	5
	.type	A__align,@function
A__align:                               # @A__align
# %bb.0:
	addi.d	$sp, $sp, -768
	st.d	$ra, $sp, 760                   # 8-byte Folded Spill
	st.d	$fp, $sp, 752                   # 8-byte Folded Spill
	st.d	$s0, $sp, 744                   # 8-byte Folded Spill
	st.d	$s1, $sp, 736                   # 8-byte Folded Spill
	st.d	$s2, $sp, 728                   # 8-byte Folded Spill
	st.d	$s3, $sp, 720                   # 8-byte Folded Spill
	st.d	$s4, $sp, 712                   # 8-byte Folded Spill
	st.d	$s5, $sp, 704                   # 8-byte Folded Spill
	st.d	$s6, $sp, 696                   # 8-byte Folded Spill
	st.d	$s7, $sp, 688                   # 8-byte Folded Spill
	st.d	$s8, $sp, 680                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 672                  # 8-byte Folded Spill
	addi.d	$fp, $sp, 768
	bstrins.d	$sp, $zero, 4, 0
	pcalau12i	$t0, %got_pc_hi20(penalty)
	ld.d	$t0, $t0, %got_pc_lo12(penalty)
	pcalau12i	$t1, %pc_hi20(A__align.orlgth1)
	st.d	$t1, $sp, 288                   # 8-byte Folded Spill
	ld.w	$s0, $t1, %pc_lo12(A__align.orlgth1)
	ld.w	$t0, $t0, 0
	st.d	$t0, $sp, 208                   # 8-byte Folded Spill
	st.d	$a7, $sp, 112                   # 8-byte Folded Spill
	st.d	$a6, $sp, 64                    # 8-byte Folded Spill
	move	$s8, $a5
	move	$s6, $a4
	st.d	$a3, $sp, 264                   # 8-byte Folded Spill
	st.d	$a2, $sp, 216                   # 8-byte Folded Spill
	move	$s1, $a1
	move	$s5, $a0
	pcalau12i	$a0, %pc_hi20(A__align.mseq1)
	st.d	$a0, $sp, 176                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(A__align.mseq2)
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	bnez	$s0, .LBB3_2
# %bb.1:
	pcalau12i	$a0, %got_pc_hi20(njob)
	ld.d	$s0, $a0, %got_pc_lo12(njob)
	ld.w	$a0, $s0, 0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(AllocateCharMtx)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s0, 0
	ld.d	$a2, $sp, 176                   # 8-byte Folded Reload
	st.d	$a0, $a2, %pc_lo12(A__align.mseq1)
	move	$a0, $a1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(AllocateCharMtx)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 288                   # 8-byte Folded Reload
	ld.w	$s0, $a1, %pc_lo12(A__align.orlgth1)
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(A__align.mseq2)
.LBB3_2:
	ld.d	$a0, $s5, 0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	st.d	$s1, $sp, 128                   # 8-byte Folded Spill
	ld.d	$a1, $s1, 0
	move	$s7, $a0
	addi.w	$s1, $a0, 0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$a3, $s1
	pcalau12i	$s1, %pc_hi20(A__align.orlgth2)
	ld.w	$s2, $s1, %pc_lo12(A__align.orlgth2)
	st.d	$a0, $sp, 272                   # 8-byte Folded Spill
	addi.w	$s4, $a0, 0
	pcalau12i	$a0, %pc_hi20(A__align.w1)
	st.d	$a0, $sp, 336                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(A__align.w2)
	st.d	$a0, $sp, 328                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(A__align.initverticalw)
	st.d	$a0, $sp, 320                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(A__align.lastverticalw)
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(A__align.m)
	st.d	$a0, $sp, 232                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(A__align.mp)
	st.d	$a0, $sp, 224                   # 8-byte Folded Spill
	pcalau12i	$s3, %pc_hi20(A__align.mseq)
	pcalau12i	$a0, %pc_hi20(A__align.ogcp1)
	st.d	$a0, $sp, 280                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(A__align.ogcp2)
	st.d	$a0, $sp, 256                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(A__align.fgcp1)
	st.d	$a0, $sp, 240                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(A__align.fgcp2)
	st.d	$a0, $sp, 248                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(A__align.cpmx1)
	st.d	$a0, $sp, 312                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(A__align.cpmx2)
	st.d	$a0, $sp, 344                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(A__align.floatwork)
	st.d	$a0, $sp, 304                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(A__align.intwork)
	st.d	$a0, $sp, 296                   # 8-byte Folded Spill
	st.d	$s8, $sp, 160                   # 8-byte Folded Spill
	st.d	$s6, $sp, 184                   # 8-byte Folded Spill
	st.d	$s5, $sp, 168                   # 8-byte Folded Spill
	st.d	$a3, $sp, 144                   # 8-byte Folded Spill
	st.d	$s7, $sp, 104                   # 8-byte Folded Spill
	blt	$s0, $a3, .LBB3_4
# %bb.3:
	bge	$s2, $s4, .LBB3_9
.LBB3_4:
	ori	$a0, $zero, 1
	pcalau12i	$s8, %pc_hi20(A__align.match)
	blt	$s0, $a0, .LBB3_7
# %bb.5:
	ld.d	$s5, $sp, 272                   # 8-byte Folded Reload
	blt	$s2, $a0, .LBB3_8
# %bb.6:
	ld.d	$a0, $sp, 336                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align.w1)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 328                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align.w2)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s8, %pc_lo12(A__align.match)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 320                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align.initverticalw)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align.lastverticalw)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align.m)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align.mp)
	pcaddu18i	$ra, %call36(FreeIntVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, %pc_lo12(A__align.mseq)
	pcaddu18i	$ra, %call36(FreeCharMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 280                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align.ogcp1)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align.ogcp2)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align.fgcp1)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 248                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align.fgcp2)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 312                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align.cpmx1)
	pcaddu18i	$ra, %call36(FreeFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 344                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align.cpmx2)
	pcaddu18i	$ra, %call36(FreeFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 304                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align.floatwork)
	pcaddu18i	$ra, %call36(FreeFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 296                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align.intwork)
	pcaddu18i	$ra, %call36(FreeIntMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 288                   # 8-byte Folded Reload
	ld.w	$s0, $a0, %pc_lo12(A__align.orlgth1)
	ld.w	$s2, $s1, %pc_lo12(A__align.orlgth2)
	b	.LBB3_8
.LBB3_7:
	ld.d	$s5, $sp, 272                   # 8-byte Folded Reload
.LBB3_8:
	pcalau12i	$a0, %pc_hi20(.LCPI3_0)
	fld.d	$fa0, $a0, %pc_lo12(.LCPI3_0)
	movgr2fr.w	$fa1, $s7
	ffint.d.w	$fa1, $fa1
	fmul.d	$fa1, $fa1, $fa0
	ftintrz.w.d	$fa1, $fa1
	movfr2gr.s	$a0, $fa1
	slt	$a1, $a0, $s0
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s0, $a1
	or	$s0, $a1, $a0
	addi.w	$s6, $s0, 100
	movgr2fr.w	$fa1, $s5
	ffint.d.w	$fa1, $fa1
	fmul.d	$fa0, $fa1, $fa0
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a0, $fa0
	slt	$a1, $a0, $s2
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s2, $a1
	or	$s2, $a1, $a0
	addi.w	$s5, $s2, 100
	addi.w	$s7, $s2, 102
	move	$a0, $s7
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 336                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(A__align.w1)
	move	$a0, $s7
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 328                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(A__align.w2)
	move	$a0, $s7
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $s8, %pc_lo12(A__align.match)
	addi.w	$s8, $s0, 102
	move	$a0, $s8
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 320                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(A__align.initverticalw)
	move	$a0, $s8
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(A__align.lastverticalw)
	move	$a0, $s7
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(A__align.m)
	move	$a0, $s7
	pcaddu18i	$ra, %call36(AllocateIntVec)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(njob)
	ld.d	$a1, $a1, %got_pc_lo12(njob)
	ld.w	$a2, $a1, 0
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(A__align.mp)
	add.w	$a1, $s5, $s6
	move	$a0, $a2
	pcaddu18i	$ra, %call36(AllocateCharMtx)
	jirl	$ra, $ra, 0
	st.d	$a0, $s3, %pc_lo12(A__align.mseq)
	move	$a0, $s8
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 280                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(A__align.ogcp1)
	move	$a0, $s7
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(A__align.ogcp2)
	move	$a0, $s8
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 240                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(A__align.fgcp1)
	move	$a0, $s7
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(A__align.fgcp2)
	ori	$a0, $zero, 26
	move	$a1, $s8
	pcaddu18i	$ra, %call36(AllocateFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 312                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(A__align.cpmx1)
	ori	$a0, $zero, 26
	move	$a1, $s7
	pcaddu18i	$ra, %call36(AllocateFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 344                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(A__align.cpmx2)
	slt	$a0, $s5, $s6
	masknez	$a1, $s5, $a0
	maskeqz	$a0, $s6, $a0
	or	$a0, $a0, $a1
	addi.w	$s7, $a0, 2
	ori	$a1, $zero, 26
	move	$a0, $s7
	pcaddu18i	$ra, %call36(AllocateFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 304                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(A__align.floatwork)
	ori	$a1, $zero, 27
	move	$a0, $s7
	pcaddu18i	$ra, %call36(AllocateIntMtx)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 296                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(A__align.intwork)
	ld.d	$a0, $sp, 288                   # 8-byte Folded Reload
	st.w	$s0, $a0, %pc_lo12(A__align.orlgth1)
	st.w	$s2, $s1, %pc_lo12(A__align.orlgth2)
	ld.d	$s8, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 184                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 144                   # 8-byte Folded Reload
.LBB3_9:
	ori	$a0, $zero, 1
	ld.d	$a7, $sp, 216                   # 8-byte Folded Reload
	blt	$s6, $a0, .LBB3_12
# %bb.10:                               # %.lr.ph
	ld.d	$a1, $s3, %pc_lo12(A__align.mseq)
	ld.d	$a2, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(A__align.mseq1)
	move	$a6, $s6
	.p2align	4, , 16
.LBB3_11:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a5, $a1, 0
	st.d	$a5, $a2, 0
	ld.d	$a5, $s5, 0
	stx.b	$zero, $a5, $a3
	addi.d	$s5, $s5, 8
	addi.d	$a2, $a2, 8
	addi.d	$a6, $a6, -1
	addi.d	$a1, $a1, 8
	bnez	$a6, .LBB3_11
.LBB3_12:                               # %.preheader347
	blt	$s8, $a0, .LBB3_15
# %bb.13:                               # %.lr.ph354
	ld.d	$a1, $s3, %pc_lo12(A__align.mseq)
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align.mseq2)
	alsl.d	$a1, $s6, $a1, 3
	move	$a2, $s8
	ld.d	$a5, $sp, 128                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB3_14:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a4, $a1, 0
	st.d	$a4, $a0, 0
	ld.d	$a4, $a5, 0
	stx.b	$zero, $a4, $s4
	addi.d	$a1, $a1, 8
	addi.d	$a5, $a5, 8
	addi.d	$a2, $a2, -1
	addi.d	$a0, $a0, 8
	bnez	$a2, .LBB3_14
.LBB3_15:                               # %._crit_edge
	pcalau12i	$a0, %got_pc_hi20(commonAlloc1)
	ld.d	$s3, $a0, %got_pc_lo12(commonAlloc1)
	pcalau12i	$a0, %got_pc_hi20(commonAlloc2)
	ld.d	$s5, $a0, %got_pc_lo12(commonAlloc2)
	ld.d	$s7, $fp, 8
	ld.w	$a1, $s3, 0
	ld.w	$a0, $s5, 0
	ld.d	$a2, $sp, 208                   # 8-byte Folded Reload
	movgr2fr.w	$fs0, $a2
	st.d	$s7, $sp, 200                   # 8-byte Folded Spill
	blt	$a1, $s0, .LBB3_18
# %bb.16:                               # %._crit_edge
	blt	$a0, $s2, .LBB3_18
# %bb.17:                               # %._crit_edge490
	pcalau12i	$a0, %got_pc_hi20(commonIP)
	ld.d	$a0, $a0, %got_pc_lo12(commonIP)
	ld.d	$a0, $a0, 0
	b	.LBB3_22
.LBB3_18:
	move	$s7, $a7
	beqz	$a1, .LBB3_21
# %bb.19:
	beqz	$a0, .LBB3_21
# %bb.20:
	pcalau12i	$a0, %got_pc_hi20(commonIP)
	ld.d	$a0, $a0, %got_pc_lo12(commonIP)
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(FreeIntMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 288                   # 8-byte Folded Reload
	ld.w	$s0, $a0, %pc_lo12(A__align.orlgth1)
	ld.w	$a1, $s3, 0
	ld.w	$s2, $s1, %pc_lo12(A__align.orlgth2)
	ld.w	$a0, $s5, 0
.LBB3_21:
	slt	$a2, $a1, $s0
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $s0, $a2
	or	$s0, $a2, $a1
	slt	$a1, $a0, $s2
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s2, $a1
	or	$s1, $a1, $a0
	addi.w	$a0, $s0, 10
	addi.w	$a1, $s1, 10
	pcaddu18i	$ra, %call36(AllocateIntMtx)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(commonIP)
	ld.d	$a1, $a1, %got_pc_lo12(commonIP)
	st.d	$a0, $a1, 0
	st.w	$s0, $s3, 0
	st.w	$s1, $s5, 0
	ld.d	$a3, $sp, 144                   # 8-byte Folded Reload
	move	$a7, $s7
.LBB3_22:
	ld.d	$s1, $sp, 312                   # 8-byte Folded Reload
	ld.d	$a1, $s1, %pc_lo12(A__align.cpmx1)
	ffint.s.w	$fs0, $fs0
	pcalau12i	$a2, %pc_hi20(A__align.ijp)
	st.d	$a2, $sp, 80                    # 8-byte Folded Spill
	st.d	$a0, $a2, %pc_lo12(A__align.ijp)
	ld.d	$s0, $sp, 168                   # 8-byte Folded Reload
	move	$a0, $s0
	move	$a2, $a7
	move	$a4, $s6
	move	$s3, $a3
	move	$s7, $a7
	pcaddu18i	$ra, %call36(cpmx_calc_new)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 344                   # 8-byte Folded Reload
	ld.d	$a1, $a0, %pc_lo12(A__align.cpmx2)
	ld.d	$s2, $sp, 128                   # 8-byte Folded Reload
	move	$a0, $s2
	ld.d	$s5, $sp, 264                   # 8-byte Folded Reload
	move	$a2, $s5
	move	$a3, $s4
	move	$a4, $s8
	pcaddu18i	$ra, %call36(cpmx_calc_new)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 280                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align.ogcp1)
	ld.d	$a5, $sp, 200                   # 8-byte Folded Reload
	beqz	$a5, .LBB3_24
# %bb.23:
	ld.d	$a1, $fp, 32
	st.d	$a1, $sp, 288                   # 8-byte Folded Spill
	move	$s8, $s1
	ld.d	$s1, $fp, 24
	ld.d	$s6, $fp, 16
	ld.d	$a1, $sp, 184                   # 8-byte Folded Reload
	move	$a2, $s0
	move	$a3, $s7
	move	$a4, $s3
	pcaddu18i	$ra, %call36(new_OpeningGapCount)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align.ogcp2)
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	move	$a2, $s2
	move	$a3, $s5
	move	$a4, $s4
	move	$a5, $s6
	pcaddu18i	$ra, %call36(new_OpeningGapCount)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align.fgcp1)
	ld.d	$a1, $sp, 184                   # 8-byte Folded Reload
	move	$a2, $s0
	move	$a3, $s7
	move	$a4, $s3
	move	$a5, $s1
	move	$s1, $s8
	pcaddu18i	$ra, %call36(new_FinalGapCount)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 248                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align.fgcp2)
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	move	$a2, $s2
	move	$a3, $s5
	move	$a4, $s4
	ld.d	$a5, $sp, 288                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 160                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(new_FinalGapCount)
	jirl	$ra, $ra, 0
	b	.LBB3_25
.LBB3_24:
	move	$a1, $s6
	move	$a2, $s0
	move	$a3, $s7
	move	$a4, $s3
	pcaddu18i	$ra, %call36(st_OpeningGapCount)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align.ogcp2)
	move	$a1, $s8
	move	$a2, $s2
	move	$a3, $s5
	move	$a4, $s4
	pcaddu18i	$ra, %call36(st_OpeningGapCount)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align.fgcp1)
	move	$a1, $s6
	move	$a2, $s0
	move	$a3, $s7
	move	$a4, $s3
	pcaddu18i	$ra, %call36(st_FinalGapCount)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 248                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align.fgcp2)
	move	$a1, $s8
	move	$a2, $s2
	move	$a3, $s5
	move	$a4, $s4
	pcaddu18i	$ra, %call36(st_FinalGapCount)
	jirl	$ra, $ra, 0
.LBB3_25:
	ld.d	$t2, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 272                   # 8-byte Folded Reload
	ori	$a0, $zero, 1
	fcvt.d.s	$fa0, $fs0
	move	$a4, $s3
	blt	$s3, $a0, .LBB3_32
# %bb.26:                               # %.lr.ph357
	ld.d	$a1, $sp, 280                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(A__align.ogcp1)
	ld.d	$a2, $sp, 240                   # 8-byte Folded Reload
	ld.d	$a3, $a2, %pc_lo12(A__align.fgcp1)
	bstrpick.d	$a2, $t2, 30, 0
	ori	$a5, $zero, 8
	bltu	$a2, $a5, .LBB3_29
# %bb.27:                               # %vector.memcheck
	alsl.d	$a5, $a2, $a3, 2
	bgeu	$a1, $a5, .LBB3_51
# %bb.28:                               # %vector.memcheck
	alsl.d	$a5, $a2, $a1, 2
	bgeu	$a3, $a5, .LBB3_51
.LBB3_29:
	move	$t1, $zero
.LBB3_30:                               # %scalar.ph.preheader
	alsl.d	$a3, $t1, $a3, 2
	alsl.d	$a1, $t1, $a1, 2
	sub.d	$a2, $a2, $t1
	vldi	$vr1, -912
	vldi	$vr2, -928
	.p2align	4, , 16
.LBB3_31:                               # %scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa3, $a1, 0
	fcvt.d.s	$fa3, $fa3
	fsub.d	$fa3, $fa1, $fa3
	fmul.d	$fa3, $fa3, $fa2
	fmul.d	$fa3, $fa3, $fa0
	fcvt.s.d	$fa3, $fa3
	fst.s	$fa3, $a1, 0
	fld.s	$fa3, $a3, 0
	fcvt.d.s	$fa3, $fa3
	fsub.d	$fa3, $fa1, $fa3
	fmul.d	$fa3, $fa3, $fa2
	fmul.d	$fa3, $fa3, $fa0
	fcvt.s.d	$fa3, $fa3
	fst.s	$fa3, $a3, 0
	addi.d	$a3, $a3, 4
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, 4
	bnez	$a2, .LBB3_31
.LBB3_32:                               # %.preheader346
	blt	$s4, $a0, .LBB3_39
# %bb.33:                               # %.lr.ph359
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align.ogcp2)
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	ld.d	$a2, $a1, %pc_lo12(A__align.fgcp2)
	bstrpick.d	$a1, $s5, 30, 0
	ori	$a3, $zero, 8
	bltu	$a1, $a3, .LBB3_36
# %bb.34:                               # %vector.memcheck519
	alsl.d	$a3, $a1, $a2, 2
	bgeu	$a0, $a3, .LBB3_54
# %bb.35:                               # %vector.memcheck519
	alsl.d	$a3, $a1, $a0, 2
	bgeu	$a2, $a3, .LBB3_54
.LBB3_36:
	move	$a3, $zero
.LBB3_37:                               # %scalar.ph525.preheader
	alsl.d	$a2, $a3, $a2, 2
	alsl.d	$a0, $a3, $a0, 2
	sub.d	$a1, $a1, $a3
	vldi	$vr1, -912
	vldi	$vr2, -928
	.p2align	4, , 16
.LBB3_38:                               # %scalar.ph525
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa3, $a0, 0
	fcvt.d.s	$fa3, $fa3
	fsub.d	$fa3, $fa1, $fa3
	fmul.d	$fa3, $fa3, $fa2
	fmul.d	$fa3, $fa3, $fa0
	fcvt.s.d	$fa3, $fa3
	fst.s	$fa3, $a0, 0
	fld.s	$fa3, $a2, 0
	fcvt.d.s	$fa3, $fa3
	fsub.d	$fa3, $fa1, $fa3
	fmul.d	$fa3, $fa3, $fa2
	fmul.d	$fa3, $fa3, $fa0
	fcvt.s.d	$fa3, $fa3
	fst.s	$fa3, $a2, 0
	addi.d	$a2, $a2, 4
	addi.d	$a1, $a1, -1
	addi.d	$a0, $a0, 4
	bnez	$a1, .LBB3_38
.LBB3_39:                               # %._crit_edge360
	ld.d	$a0, $sp, 336                   # 8-byte Folded Reload
	ld.d	$s6, $a0, %pc_lo12(A__align.w1)
	ld.d	$a0, $sp, 328                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align.w2)
	st.d	$a0, $sp, 336                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 320                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align.initverticalw)
	ld.d	$a1, $sp, 344                   # 8-byte Folded Reload
	ld.d	$s7, $a1, %pc_lo12(A__align.cpmx2)
	ld.d	$s0, $s1, %pc_lo12(A__align.cpmx1)
	ld.d	$a1, $sp, 304                   # 8-byte Folded Reload
	ld.d	$s3, $a1, %pc_lo12(A__align.floatwork)
	ld.d	$a1, $sp, 296                   # 8-byte Folded Reload
	ld.d	$s1, $a1, %pc_lo12(A__align.intwork)
	ori	$a7, $zero, 1
	st.d	$a0, $sp, 344                   # 8-byte Folded Spill
	move	$a1, $s7
	move	$a2, $s0
	move	$a3, $zero
	move	$a5, $s3
	move	$a6, $s1
	pcaddu18i	$ra, %call36(match_calc)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(impmtx)
	st.d	$a0, $sp, 192                   # 8-byte Folded Spill
	slli.d	$s5, $s5, 32
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	st.d	$s7, $sp, 328                   # 8-byte Folded Spill
	st.d	$s0, $sp, 320                   # 8-byte Folded Spill
	st.d	$s3, $sp, 312                   # 8-byte Folded Spill
	st.d	$s1, $sp, 304                   # 8-byte Folded Spill
	beqz	$a0, .LBB3_46
# %bb.40:
	ld.d	$s7, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB3_43
# %bb.41:                               # %.lr.ph.i
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(impmtx)
	bstrpick.d	$a1, $s7, 30, 0
	ld.d	$a2, $sp, 344                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB3_42:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $a0, 0
	fld.s	$fa0, $a3, 0
	fld.s	$fa1, $a2, 0
	fadd.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $a2, 0
	addi.d	$a2, $a2, 4
	addi.d	$a1, $a1, -1
	addi.d	$a0, $a0, 8
	bnez	$a1, .LBB3_42
.LBB3_43:                               # %imp_match_out_vead_tate.exit
	ori	$a7, $zero, 1
	ori	$s0, $zero, 1
	move	$a0, $s6
	ld.d	$a1, $sp, 320                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 328                   # 8-byte Folded Reload
	move	$a3, $zero
	move	$a4, $s4
	ld.d	$a5, $sp, 312                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 304                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(match_calc)
	jirl	$ra, $ra, 0
	beqz	$s4, .LBB3_47
# %bb.44:                               # %iter.check
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(impmtx)
	ld.d	$a1, $a0, 0
	ld.d	$a3, $sp, 272                   # 8-byte Folded Reload
	bstrpick.d	$a0, $a3, 31, 0
	ori	$a2, $zero, 4
	ld.d	$t3, $sp, 144                   # 8-byte Folded Reload
	bgeu	$a0, $a2, .LBB3_48
# %bb.45:
	move	$a2, $a1
	move	$a4, $s6
	b	.LBB3_67
.LBB3_46:                               # %.critedge
	ori	$a7, $zero, 1
	move	$a0, $s6
	move	$a1, $s0
	move	$a2, $s7
	move	$a3, $zero
	move	$a4, $s4
	move	$a5, $s3
	move	$a6, $s1
	pcaddu18i	$ra, %call36(match_calc)
	jirl	$ra, $ra, 0
	ld.d	$t3, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 104                   # 8-byte Folded Reload
	b	.LBB3_68
.LBB3_47:                               # %imp_match_out_vead.exit.thread
	pcalau12i	$a0, %got_pc_hi20(outgap)
	ld.d	$a0, $a0, %got_pc_lo12(outgap)
	ld.w	$a0, $a0, 0
	ld.d	$t3, $sp, 144                   # 8-byte Folded Reload
	beq	$a0, $s0, .LBB3_69
	b	.LBB3_84
.LBB3_48:                               # %vector.memcheck540
	addi.w	$a2, $zero, -4
	lu32i.d	$a2, 3
	alsl.d	$a2, $a3, $a2, 2
	bstrpick.d	$a2, $a2, 33, 2
	slli.d	$a2, $a2, 2
	addi.d	$a2, $a2, 4
	add.d	$a3, $a1, $a2
	bgeu	$s6, $a3, .LBB3_57
# %bb.49:                               # %vector.memcheck540
	add.d	$a2, $s6, $a2
	bgeu	$a1, $a2, .LBB3_57
# %bb.50:
	move	$a2, $a1
	ld.d	$a3, $sp, 272                   # 8-byte Folded Reload
	move	$a4, $s6
	b	.LBB3_67
.LBB3_51:                               # %vector.ph
	bstrpick.d	$a5, $t2, 30, 3
	slli.d	$t1, $a5, 3
	xvreplve0.d	$xr1, $xr0
	lu52i.d	$a5, $zero, 1023
	xvreplgr2vr.d	$xr2, $a5
	lu52i.d	$a5, $zero, 1022
	xvreplgr2vr.d	$xr3, $a5
	move	$a5, $a1
	move	$a6, $a3
	move	$a7, $t1
	.p2align	4, , 16
.LBB3_52:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr4, $a5, 0
	xvst	$xr4, $sp, 608
	vld	$vr4, $sp, 608
	vreplvei.w	$vr5, $vr4, 0
	fcvt.d.s	$fa5, $fa5
	movfr2gr.d	$t0, $fa5
	vreplvei.w	$vr5, $vr4, 1
	fcvt.d.s	$fa5, $fa5
	xvinsgr2vr.d	$xr6, $t0, 0
	movfr2gr.d	$t0, $fa5
	vreplvei.w	$vr5, $vr4, 2
	fcvt.d.s	$fa5, $fa5
	xvinsgr2vr.d	$xr6, $t0, 1
	movfr2gr.d	$t0, $fa5
	vld	$vr5, $sp, 624
	vreplvei.w	$vr4, $vr4, 3
	fcvt.d.s	$fa4, $fa4
	xvinsgr2vr.d	$xr6, $t0, 2
	movfr2gr.d	$t0, $fa4
	vreplvei.w	$vr4, $vr5, 0
	fcvt.d.s	$fa4, $fa4
	xvinsgr2vr.d	$xr6, $t0, 3
	movfr2gr.d	$t0, $fa4
	vreplvei.w	$vr4, $vr5, 1
	fcvt.d.s	$fa4, $fa4
	xvinsgr2vr.d	$xr7, $t0, 0
	movfr2gr.d	$t0, $fa4
	vreplvei.w	$vr4, $vr5, 2
	fcvt.d.s	$fa4, $fa4
	xvinsgr2vr.d	$xr7, $t0, 1
	movfr2gr.d	$t0, $fa4
	vreplvei.w	$vr4, $vr5, 3
	fcvt.d.s	$fa4, $fa4
	xvinsgr2vr.d	$xr7, $t0, 2
	movfr2gr.d	$t0, $fa4
	xvinsgr2vr.d	$xr7, $t0, 3
	xvfsub.d	$xr4, $xr2, $xr7
	xvfsub.d	$xr5, $xr2, $xr6
	xvfmul.d	$xr5, $xr5, $xr3
	xvfmul.d	$xr4, $xr4, $xr3
	xvfmul.d	$xr4, $xr4, $xr1
	xvfmul.d	$xr5, $xr5, $xr1
	xvpickve2gr.d	$t0, $xr5, 0
	movgr2fr.d	$fa6, $t0
	fcvt.s.d	$fa6, $fa6
	xvpickve2gr.d	$t0, $xr5, 1
	movgr2fr.d	$fa7, $t0
	movfr2gr.s	$t0, $fa6
	fcvt.s.d	$fa6, $fa7
	xvinsgr2vr.w	$xr7, $t0, 0
	movfr2gr.s	$t0, $fa6
	xvinsgr2vr.w	$xr7, $t0, 1
	xvpickve2gr.d	$t0, $xr5, 2
	movgr2fr.d	$fa6, $t0
	fcvt.s.d	$fa6, $fa6
	xvpickve2gr.d	$t0, $xr5, 3
	movgr2fr.d	$fa5, $t0
	movfr2gr.s	$t0, $fa6
	fcvt.s.d	$fa5, $fa5
	xvinsgr2vr.w	$xr7, $t0, 2
	movfr2gr.s	$t0, $fa5
	xvinsgr2vr.w	$xr7, $t0, 3
	xvpickve2gr.d	$t0, $xr4, 0
	movgr2fr.d	$fa5, $t0
	fcvt.s.d	$fa5, $fa5
	xvpickve2gr.d	$t0, $xr4, 1
	movgr2fr.d	$fa6, $t0
	movfr2gr.s	$t0, $fa5
	fcvt.s.d	$fa5, $fa6
	xvinsgr2vr.w	$xr7, $t0, 4
	movfr2gr.s	$t0, $fa5
	xvinsgr2vr.w	$xr7, $t0, 5
	xvpickve2gr.d	$t0, $xr4, 2
	movgr2fr.d	$fa5, $t0
	fcvt.s.d	$fa5, $fa5
	xvpickve2gr.d	$t0, $xr4, 3
	movgr2fr.d	$fa4, $t0
	movfr2gr.s	$t0, $fa5
	fcvt.s.d	$fa4, $fa4
	xvld	$xr5, $a6, 0
	xvinsgr2vr.w	$xr7, $t0, 6
	movfr2gr.s	$t0, $fa4
	xvinsgr2vr.w	$xr7, $t0, 7
	xvst	$xr7, $a5, 0
	xvst	$xr5, $sp, 640
	vld	$vr4, $sp, 640
	vreplvei.w	$vr5, $vr4, 0
	fcvt.d.s	$fa5, $fa5
	movfr2gr.d	$t0, $fa5
	vreplvei.w	$vr5, $vr4, 1
	fcvt.d.s	$fa5, $fa5
	xvinsgr2vr.d	$xr6, $t0, 0
	movfr2gr.d	$t0, $fa5
	vreplvei.w	$vr5, $vr4, 2
	fcvt.d.s	$fa5, $fa5
	xvinsgr2vr.d	$xr6, $t0, 1
	movfr2gr.d	$t0, $fa5
	vld	$vr5, $sp, 656
	vreplvei.w	$vr4, $vr4, 3
	fcvt.d.s	$fa4, $fa4
	xvinsgr2vr.d	$xr6, $t0, 2
	movfr2gr.d	$t0, $fa4
	vreplvei.w	$vr4, $vr5, 0
	fcvt.d.s	$fa4, $fa4
	xvinsgr2vr.d	$xr6, $t0, 3
	movfr2gr.d	$t0, $fa4
	vreplvei.w	$vr4, $vr5, 1
	fcvt.d.s	$fa4, $fa4
	xvinsgr2vr.d	$xr7, $t0, 0
	movfr2gr.d	$t0, $fa4
	vreplvei.w	$vr4, $vr5, 2
	fcvt.d.s	$fa4, $fa4
	xvinsgr2vr.d	$xr7, $t0, 1
	movfr2gr.d	$t0, $fa4
	vreplvei.w	$vr4, $vr5, 3
	fcvt.d.s	$fa4, $fa4
	xvinsgr2vr.d	$xr7, $t0, 2
	movfr2gr.d	$t0, $fa4
	xvinsgr2vr.d	$xr7, $t0, 3
	xvfsub.d	$xr4, $xr2, $xr7
	xvfsub.d	$xr5, $xr2, $xr6
	xvfmul.d	$xr5, $xr5, $xr3
	xvfmul.d	$xr4, $xr4, $xr3
	xvfmul.d	$xr4, $xr4, $xr1
	xvfmul.d	$xr5, $xr5, $xr1
	xvpickve2gr.d	$t0, $xr5, 0
	movgr2fr.d	$fa6, $t0
	fcvt.s.d	$fa6, $fa6
	xvpickve2gr.d	$t0, $xr5, 1
	movgr2fr.d	$fa7, $t0
	movfr2gr.s	$t0, $fa6
	fcvt.s.d	$fa6, $fa7
	xvinsgr2vr.w	$xr7, $t0, 0
	movfr2gr.s	$t0, $fa6
	xvinsgr2vr.w	$xr7, $t0, 1
	xvpickve2gr.d	$t0, $xr5, 2
	movgr2fr.d	$fa6, $t0
	fcvt.s.d	$fa6, $fa6
	xvpickve2gr.d	$t0, $xr5, 3
	movgr2fr.d	$fa5, $t0
	movfr2gr.s	$t0, $fa6
	fcvt.s.d	$fa5, $fa5
	xvinsgr2vr.w	$xr7, $t0, 2
	movfr2gr.s	$t0, $fa5
	xvinsgr2vr.w	$xr7, $t0, 3
	xvpickve2gr.d	$t0, $xr4, 0
	movgr2fr.d	$fa5, $t0
	fcvt.s.d	$fa5, $fa5
	xvpickve2gr.d	$t0, $xr4, 1
	movgr2fr.d	$fa6, $t0
	movfr2gr.s	$t0, $fa5
	fcvt.s.d	$fa5, $fa6
	xvinsgr2vr.w	$xr7, $t0, 4
	movfr2gr.s	$t0, $fa5
	xvinsgr2vr.w	$xr7, $t0, 5
	xvpickve2gr.d	$t0, $xr4, 2
	movgr2fr.d	$fa5, $t0
	fcvt.s.d	$fa5, $fa5
	xvpickve2gr.d	$t0, $xr4, 3
	movgr2fr.d	$fa4, $t0
	movfr2gr.s	$t0, $fa5
	fcvt.s.d	$fa4, $fa4
	xvinsgr2vr.w	$xr7, $t0, 6
	movfr2gr.s	$t0, $fa4
	xvinsgr2vr.w	$xr7, $t0, 7
	xvst	$xr7, $a6, 0
	addi.d	$a7, $a7, -8
	addi.d	$a6, $a6, 32
	addi.d	$a5, $a5, 32
	bnez	$a7, .LBB3_52
# %bb.53:                               # %middle.block
	beq	$a2, $t1, .LBB3_32
	b	.LBB3_30
.LBB3_54:                               # %vector.ph527
	bstrpick.d	$a3, $s5, 30, 3
	slli.d	$a3, $a3, 3
	xvreplve0.d	$xr1, $xr0
	lu52i.d	$a5, $zero, 1023
	xvreplgr2vr.d	$xr2, $a5
	lu52i.d	$a5, $zero, 1022
	xvreplgr2vr.d	$xr3, $a5
	move	$t0, $a0
	move	$a5, $a2
	move	$a6, $a3
	.p2align	4, , 16
.LBB3_55:                               # %vector.body532
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr4, $t0, 0
	xvst	$xr4, $sp, 544
	vld	$vr4, $sp, 544
	vreplvei.w	$vr5, $vr4, 0
	fcvt.d.s	$fa5, $fa5
	movfr2gr.d	$a7, $fa5
	vreplvei.w	$vr5, $vr4, 1
	fcvt.d.s	$fa5, $fa5
	xvinsgr2vr.d	$xr6, $a7, 0
	movfr2gr.d	$a7, $fa5
	vreplvei.w	$vr5, $vr4, 2
	fcvt.d.s	$fa5, $fa5
	xvinsgr2vr.d	$xr6, $a7, 1
	movfr2gr.d	$a7, $fa5
	vld	$vr5, $sp, 560
	vreplvei.w	$vr4, $vr4, 3
	fcvt.d.s	$fa4, $fa4
	xvinsgr2vr.d	$xr6, $a7, 2
	movfr2gr.d	$a7, $fa4
	vreplvei.w	$vr4, $vr5, 0
	fcvt.d.s	$fa4, $fa4
	xvinsgr2vr.d	$xr6, $a7, 3
	movfr2gr.d	$a7, $fa4
	vreplvei.w	$vr4, $vr5, 1
	fcvt.d.s	$fa4, $fa4
	xvinsgr2vr.d	$xr7, $a7, 0
	movfr2gr.d	$a7, $fa4
	vreplvei.w	$vr4, $vr5, 2
	fcvt.d.s	$fa4, $fa4
	xvinsgr2vr.d	$xr7, $a7, 1
	movfr2gr.d	$a7, $fa4
	vreplvei.w	$vr4, $vr5, 3
	fcvt.d.s	$fa4, $fa4
	xvinsgr2vr.d	$xr7, $a7, 2
	movfr2gr.d	$a7, $fa4
	xvinsgr2vr.d	$xr7, $a7, 3
	xvfsub.d	$xr4, $xr2, $xr7
	xvfsub.d	$xr5, $xr2, $xr6
	xvfmul.d	$xr5, $xr5, $xr3
	xvfmul.d	$xr4, $xr4, $xr3
	xvfmul.d	$xr4, $xr4, $xr1
	xvfmul.d	$xr5, $xr5, $xr1
	xvpickve2gr.d	$a7, $xr5, 0
	movgr2fr.d	$fa6, $a7
	fcvt.s.d	$fa6, $fa6
	xvpickve2gr.d	$a7, $xr5, 1
	movgr2fr.d	$fa7, $a7
	movfr2gr.s	$a7, $fa6
	fcvt.s.d	$fa6, $fa7
	xvinsgr2vr.w	$xr7, $a7, 0
	movfr2gr.s	$a7, $fa6
	xvinsgr2vr.w	$xr7, $a7, 1
	xvpickve2gr.d	$a7, $xr5, 2
	movgr2fr.d	$fa6, $a7
	fcvt.s.d	$fa6, $fa6
	xvpickve2gr.d	$a7, $xr5, 3
	movgr2fr.d	$fa5, $a7
	movfr2gr.s	$a7, $fa6
	fcvt.s.d	$fa5, $fa5
	xvinsgr2vr.w	$xr7, $a7, 2
	movfr2gr.s	$a7, $fa5
	xvinsgr2vr.w	$xr7, $a7, 3
	xvpickve2gr.d	$a7, $xr4, 0
	movgr2fr.d	$fa5, $a7
	fcvt.s.d	$fa5, $fa5
	xvpickve2gr.d	$a7, $xr4, 1
	movgr2fr.d	$fa6, $a7
	movfr2gr.s	$a7, $fa5
	fcvt.s.d	$fa5, $fa6
	xvinsgr2vr.w	$xr7, $a7, 4
	movfr2gr.s	$a7, $fa5
	xvinsgr2vr.w	$xr7, $a7, 5
	xvpickve2gr.d	$a7, $xr4, 2
	movgr2fr.d	$fa5, $a7
	fcvt.s.d	$fa5, $fa5
	xvpickve2gr.d	$a7, $xr4, 3
	movgr2fr.d	$fa4, $a7
	movfr2gr.s	$a7, $fa5
	fcvt.s.d	$fa4, $fa4
	xvld	$xr5, $a5, 0
	xvinsgr2vr.w	$xr7, $a7, 6
	movfr2gr.s	$a7, $fa4
	xvinsgr2vr.w	$xr7, $a7, 7
	xvst	$xr7, $t0, 0
	xvst	$xr5, $sp, 576
	vld	$vr4, $sp, 576
	vreplvei.w	$vr5, $vr4, 0
	fcvt.d.s	$fa5, $fa5
	movfr2gr.d	$a7, $fa5
	vreplvei.w	$vr5, $vr4, 1
	fcvt.d.s	$fa5, $fa5
	xvinsgr2vr.d	$xr6, $a7, 0
	movfr2gr.d	$a7, $fa5
	vreplvei.w	$vr5, $vr4, 2
	fcvt.d.s	$fa5, $fa5
	xvinsgr2vr.d	$xr6, $a7, 1
	movfr2gr.d	$a7, $fa5
	vld	$vr5, $sp, 592
	vreplvei.w	$vr4, $vr4, 3
	fcvt.d.s	$fa4, $fa4
	xvinsgr2vr.d	$xr6, $a7, 2
	movfr2gr.d	$a7, $fa4
	vreplvei.w	$vr4, $vr5, 0
	fcvt.d.s	$fa4, $fa4
	xvinsgr2vr.d	$xr6, $a7, 3
	movfr2gr.d	$a7, $fa4
	vreplvei.w	$vr4, $vr5, 1
	fcvt.d.s	$fa4, $fa4
	xvinsgr2vr.d	$xr7, $a7, 0
	movfr2gr.d	$a7, $fa4
	vreplvei.w	$vr4, $vr5, 2
	fcvt.d.s	$fa4, $fa4
	xvinsgr2vr.d	$xr7, $a7, 1
	movfr2gr.d	$a7, $fa4
	vreplvei.w	$vr4, $vr5, 3
	fcvt.d.s	$fa4, $fa4
	xvinsgr2vr.d	$xr7, $a7, 2
	movfr2gr.d	$a7, $fa4
	xvinsgr2vr.d	$xr7, $a7, 3
	xvfsub.d	$xr4, $xr2, $xr7
	xvfsub.d	$xr5, $xr2, $xr6
	xvfmul.d	$xr5, $xr5, $xr3
	xvfmul.d	$xr4, $xr4, $xr3
	xvfmul.d	$xr4, $xr4, $xr1
	xvfmul.d	$xr5, $xr5, $xr1
	xvpickve2gr.d	$a7, $xr5, 0
	movgr2fr.d	$fa6, $a7
	fcvt.s.d	$fa6, $fa6
	xvpickve2gr.d	$a7, $xr5, 1
	movgr2fr.d	$fa7, $a7
	movfr2gr.s	$a7, $fa6
	fcvt.s.d	$fa6, $fa7
	xvinsgr2vr.w	$xr7, $a7, 0
	movfr2gr.s	$a7, $fa6
	xvinsgr2vr.w	$xr7, $a7, 1
	xvpickve2gr.d	$a7, $xr5, 2
	movgr2fr.d	$fa6, $a7
	fcvt.s.d	$fa6, $fa6
	xvpickve2gr.d	$a7, $xr5, 3
	movgr2fr.d	$fa5, $a7
	movfr2gr.s	$a7, $fa6
	fcvt.s.d	$fa5, $fa5
	xvinsgr2vr.w	$xr7, $a7, 2
	movfr2gr.s	$a7, $fa5
	xvinsgr2vr.w	$xr7, $a7, 3
	xvpickve2gr.d	$a7, $xr4, 0
	movgr2fr.d	$fa5, $a7
	fcvt.s.d	$fa5, $fa5
	xvpickve2gr.d	$a7, $xr4, 1
	movgr2fr.d	$fa6, $a7
	movfr2gr.s	$a7, $fa5
	fcvt.s.d	$fa5, $fa6
	xvinsgr2vr.w	$xr7, $a7, 4
	movfr2gr.s	$a7, $fa5
	xvinsgr2vr.w	$xr7, $a7, 5
	xvpickve2gr.d	$a7, $xr4, 2
	movgr2fr.d	$fa5, $a7
	fcvt.s.d	$fa5, $fa5
	xvpickve2gr.d	$a7, $xr4, 3
	movgr2fr.d	$fa4, $a7
	movfr2gr.s	$a7, $fa5
	fcvt.s.d	$fa4, $fa4
	xvinsgr2vr.w	$xr7, $a7, 6
	movfr2gr.s	$a7, $fa4
	xvinsgr2vr.w	$xr7, $a7, 7
	xvst	$xr7, $a5, 0
	addi.d	$a6, $a6, -8
	addi.d	$a5, $a5, 32
	addi.d	$t0, $t0, 32
	bnez	$a6, .LBB3_55
# %bb.56:                               # %middle.block537
	beq	$a1, $a3, .LBB3_39
	b	.LBB3_37
.LBB3_57:                               # %vector.main.loop.iter.check
	ori	$a2, $zero, 16
	bgeu	$a0, $a2, .LBB3_59
# %bb.58:
	move	$a5, $zero
	b	.LBB3_63
.LBB3_59:                               # %vector.ph550
	ld.d	$a2, $sp, 272                   # 8-byte Folded Reload
	bstrpick.d	$a2, $a2, 31, 4
	slli.d	$a5, $a2, 4
	addi.d	$a2, $s6, 32
	addi.d	$a3, $a1, 32
	move	$a4, $a5
	.p2align	4, , 16
.LBB3_60:                               # %vector.body553
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr0, $a3, -32
	xvld	$xr1, $a3, 0
	xvld	$xr2, $a2, -32
	xvld	$xr3, $a2, 0
	xvfadd.s	$xr0, $xr0, $xr2
	xvfadd.s	$xr1, $xr1, $xr3
	xvst	$xr0, $a2, -32
	xvst	$xr1, $a2, 0
	addi.d	$a2, $a2, 64
	addi.d	$a4, $a4, -16
	addi.d	$a3, $a3, 64
	bnez	$a4, .LBB3_60
# %bb.61:                               # %middle.block561
	beq	$a0, $a5, .LBB3_68
# %bb.62:                               # %vec.epilog.iter.check
	ld.d	$a3, $sp, 272                   # 8-byte Folded Reload
	andi	$a2, $a3, 12
	beqz	$a2, .LBB3_66
.LBB3_63:                               # %vec.epilog.ph
	ld.d	$a3, $sp, 272                   # 8-byte Folded Reload
	bstrpick.d	$a4, $a3, 31, 2
	slli.d	$a6, $a4, 2
	alsl.d	$a2, $a4, $a1, 4
	andi	$a3, $a3, 3
	alsl.d	$a4, $a4, $s6, 4
	alsl.d	$a7, $a5, $s6, 2
	alsl.d	$a1, $a5, $a1, 2
	sub.d	$a5, $a5, $a6
	.p2align	4, , 16
.LBB3_64:                               # %vec.epilog.vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a1, 0
	vld	$vr1, $a7, 0
	vfadd.s	$vr0, $vr0, $vr1
	vst	$vr0, $a7, 0
	addi.d	$a7, $a7, 16
	addi.d	$a5, $a5, 4
	addi.d	$a1, $a1, 16
	bnez	$a5, .LBB3_64
# %bb.65:                               # %vec.epilog.middle.block
	bne	$a0, $a6, .LBB3_67
	b	.LBB3_68
.LBB3_66:
	alsl.d	$a2, $a5, $a1, 2
	sub.d	$a3, $a3, $a5
	alsl.d	$a4, $a5, $s6, 2
	.p2align	4, , 16
.LBB3_67:                               # %.lr.ph.i324
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $a2, 0
	fld.s	$fa1, $a4, 0
	addi.w	$a3, $a3, -1
	addi.d	$a2, $a2, 4
	addi.d	$a0, $a4, 4
	fadd.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $a4, 0
	move	$a4, $a0
	bnez	$a3, .LBB3_67
.LBB3_68:                               # %imp_match_out_vead.exit
	pcalau12i	$a0, %got_pc_hi20(outgap)
	ld.d	$a0, $a0, %got_pc_lo12(outgap)
	ld.w	$a1, $a0, 0
	ori	$a0, $zero, 1
	bne	$a1, $a0, .LBB3_77
.LBB3_69:                               # %.preheader342
	ori	$a4, $zero, 1
	blt	$t3, $a4, .LBB3_73
# %bb.70:                               # %iter.check625
	ld.d	$a0, $sp, 280                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align.ogcp1)
	ld.d	$a1, $sp, 240                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(A__align.fgcp1)
	addi.d	$a2, $s7, 1
	bstrpick.d	$a2, $a2, 31, 0
	addi.d	$a3, $a2, -1
	ori	$a5, $zero, 3
	bltu	$a5, $a3, .LBB3_172
.LBB3_71:                               # %vec.epilog.scalar.ph643.preheader
	ld.d	$a3, $sp, 344                   # 8-byte Folded Reload
	alsl.d	$a3, $a4, $a3, 2
	alsl.d	$a1, $a4, $a1, 2
	addi.d	$a1, $a1, -4
	sub.d	$a2, $a2, $a4
	.p2align	4, , 16
.LBB3_72:                               # %vec.epilog.scalar.ph643
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $a0, 0
	fld.s	$fa1, $a1, 0
	fld.s	$fa2, $a3, 0
	fadd.s	$fa0, $fa0, $fa1
	fadd.s	$fa0, $fa2, $fa0
	fst.s	$fa0, $a3, 0
	addi.d	$a3, $a3, 4
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, 4
	bnez	$a2, .LBB3_72
.LBB3_73:                               # %.preheader340
	ori	$a4, $zero, 1
	blt	$s4, $a4, .LBB3_96
# %bb.74:                               # %iter.check677
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align.ogcp2)
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(A__align.fgcp2)
	ld.d	$a2, $sp, 272                   # 8-byte Folded Reload
	addi.d	$a2, $a2, 1
	bstrpick.d	$a2, $a2, 31, 0
	addi.d	$a3, $a2, -1
	ori	$a5, $zero, 3
	bltu	$a5, $a3, .LBB3_176
.LBB3_75:                               # %vec.epilog.scalar.ph695.preheader
	alsl.d	$a3, $a4, $s6, 2
	alsl.d	$a1, $a4, $a1, 2
	addi.d	$a1, $a1, -4
	sub.d	$a2, $a2, $a4
	.p2align	4, , 16
.LBB3_76:                               # %vec.epilog.scalar.ph695
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $a0, 0
	fld.s	$fa1, $a1, 0
	fld.s	$fa2, $a3, 0
	fadd.s	$fa0, $fa0, $fa1
	fadd.s	$fa0, $fa2, $fa0
	fst.s	$fa0, $a3, 0
	addi.d	$a3, $a3, 4
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, 4
	bnez	$a2, .LBB3_76
	b	.LBB3_92
.LBB3_77:                               # %.preheader345
	blt	$s4, $a0, .LBB3_84
# %bb.78:                               # %.lr.ph363
	pcalau12i	$a0, %got_pc_hi20(offset)
	ld.d	$a0, $a0, %got_pc_lo12(offset)
	ld.w	$a0, $a0, 0
	ld.d	$a1, $sp, 272                   # 8-byte Folded Reload
	addi.d	$a1, $a1, 1
	bstrpick.d	$a1, $a1, 31, 0
	addi.d	$a2, $a1, -1
	ori	$a4, $zero, 8
	ori	$a3, $zero, 1
	bltu	$a2, $a4, .LBB3_82
# %bb.79:                               # %vector.ph581
	move	$a4, $a2
	bstrins.d	$a4, $zero, 2, 0
	ori	$a5, $zero, 1
	move	$a3, $a2
	bstrins.d	$a3, $a5, 2, 0
	xvreplgr2vr.w	$xr0, $a0
	pcalau12i	$a5, %pc_hi20(.LCPI3_1)
	xvld	$xr1, $a5, %pc_lo12(.LCPI3_1)
	addi.d	$a5, $s6, 4
	lu52i.d	$a6, $zero, -1026
	xvreplgr2vr.d	$xr2, $a6
	move	$a6, $a4
	.p2align	4, , 16
.LBB3_80:                               # %vector.body586
                                        # =>This Inner Loop Header: Depth=1
	xvmul.w	$xr3, $xr0, $xr1
	xvst	$xr3, $sp, 480
	vld	$vr3, $sp, 496
	xvld	$xr4, $a5, 0
	vext2xv.d.w	$xr3, $xr3
	vld	$vr5, $sp, 480
	xvffint.d.l	$xr3, $xr3
	xvst	$xr4, $sp, 512
	vld	$vr4, $sp, 512
	vext2xv.d.w	$xr5, $xr5
	xvffint.d.l	$xr5, $xr5
	xvfmul.d	$xr5, $xr5, $xr2
	vreplvei.w	$vr6, $vr4, 0
	fcvt.d.s	$fa6, $fa6
	xvfmul.d	$xr3, $xr3, $xr2
	movfr2gr.d	$a7, $fa6
	vreplvei.w	$vr6, $vr4, 1
	fcvt.d.s	$fa6, $fa6
	xvinsgr2vr.d	$xr7, $a7, 0
	movfr2gr.d	$a7, $fa6
	vreplvei.w	$vr6, $vr4, 2
	fcvt.d.s	$fa6, $fa6
	xvinsgr2vr.d	$xr7, $a7, 1
	movfr2gr.d	$a7, $fa6
	vld	$vr6, $sp, 528
	vreplvei.w	$vr4, $vr4, 3
	fcvt.d.s	$fa4, $fa4
	xvinsgr2vr.d	$xr7, $a7, 2
	movfr2gr.d	$a7, $fa4
	vreplvei.w	$vr4, $vr6, 0
	fcvt.d.s	$fa4, $fa4
	xvinsgr2vr.d	$xr7, $a7, 3
	movfr2gr.d	$a7, $fa4
	vreplvei.w	$vr4, $vr6, 1
	fcvt.d.s	$fa4, $fa4
	xvinsgr2vr.d	$xr8, $a7, 0
	movfr2gr.d	$a7, $fa4
	vreplvei.w	$vr4, $vr6, 2
	fcvt.d.s	$fa4, $fa4
	xvinsgr2vr.d	$xr8, $a7, 1
	movfr2gr.d	$a7, $fa4
	vreplvei.w	$vr4, $vr6, 3
	fcvt.d.s	$fa4, $fa4
	xvinsgr2vr.d	$xr8, $a7, 2
	movfr2gr.d	$a7, $fa4
	xvinsgr2vr.d	$xr8, $a7, 3
	xvfadd.d	$xr3, $xr8, $xr3
	xvfadd.d	$xr4, $xr7, $xr5
	xvpickve2gr.d	$a7, $xr4, 0
	movgr2fr.d	$fa5, $a7
	fcvt.s.d	$fa5, $fa5
	xvpickve2gr.d	$a7, $xr4, 1
	movgr2fr.d	$fa6, $a7
	movfr2gr.s	$a7, $fa5
	fcvt.s.d	$fa5, $fa6
	xvinsgr2vr.w	$xr6, $a7, 0
	movfr2gr.s	$a7, $fa5
	xvinsgr2vr.w	$xr6, $a7, 1
	xvpickve2gr.d	$a7, $xr4, 2
	movgr2fr.d	$fa5, $a7
	fcvt.s.d	$fa5, $fa5
	xvpickve2gr.d	$a7, $xr4, 3
	movgr2fr.d	$fa4, $a7
	movfr2gr.s	$a7, $fa5
	fcvt.s.d	$fa4, $fa4
	xvinsgr2vr.w	$xr6, $a7, 2
	movfr2gr.s	$a7, $fa4
	xvinsgr2vr.w	$xr6, $a7, 3
	xvpickve2gr.d	$a7, $xr3, 0
	movgr2fr.d	$fa4, $a7
	fcvt.s.d	$fa4, $fa4
	xvpickve2gr.d	$a7, $xr3, 1
	movgr2fr.d	$fa5, $a7
	movfr2gr.s	$a7, $fa4
	fcvt.s.d	$fa4, $fa5
	xvinsgr2vr.w	$xr6, $a7, 4
	movfr2gr.s	$a7, $fa4
	xvinsgr2vr.w	$xr6, $a7, 5
	xvpickve2gr.d	$a7, $xr3, 2
	movgr2fr.d	$fa4, $a7
	fcvt.s.d	$fa4, $fa4
	xvpickve2gr.d	$a7, $xr3, 3
	movgr2fr.d	$fa3, $a7
	movfr2gr.s	$a7, $fa4
	fcvt.s.d	$fa3, $fa3
	xvinsgr2vr.w	$xr6, $a7, 6
	movfr2gr.s	$a7, $fa3
	xvinsgr2vr.w	$xr6, $a7, 7
	xvst	$xr6, $a5, 0
	xvaddi.wu	$xr1, $xr1, 8
	addi.d	$a6, $a6, -8
	addi.d	$a5, $a5, 32
	bnez	$a6, .LBB3_80
# %bb.81:                               # %middle.block591
	beq	$a2, $a4, .LBB3_84
.LBB3_82:                               # %scalar.ph579.preheader
	mul.d	$a2, $a0, $a3
	alsl.d	$a4, $a3, $s6, 2
	sub.d	$a1, $a1, $a3
	vldi	$vr0, -800
	.p2align	4, , 16
.LBB3_83:                               # %scalar.ph579
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa1, $a4, 0
	movgr2fr.w	$fa2, $a2
	ffint.d.w	$fa2, $fa2
	fmul.d	$fa2, $fa2, $fa0
	fcvt.d.s	$fa1, $fa1
	fadd.d	$fa1, $fa1, $fa2
	fcvt.s.d	$fa1, $fa1
	fst.s	$fa1, $a4, 0
	add.w	$a2, $a2, $a0
	addi.d	$a1, $a1, -1
	addi.d	$a4, $a4, 4
	bnez	$a1, .LBB3_83
.LBB3_84:                               # %.preheader343
	ori	$a1, $zero, 1
	blt	$t3, $a1, .LBB3_91
# %bb.85:                               # %.lr.ph366
	pcalau12i	$a0, %got_pc_hi20(offset)
	ld.d	$a0, $a0, %got_pc_lo12(offset)
	ld.w	$a0, $a0, 0
	addi.d	$a2, $s7, 1
	bstrpick.d	$a2, $a2, 31, 0
	addi.d	$a3, $a2, -1
	ori	$a4, $zero, 8
	bltu	$a3, $a4, .LBB3_89
# %bb.86:                               # %vector.ph596
	move	$a4, $a3
	bstrins.d	$a4, $zero, 2, 0
	ori	$a5, $zero, 1
	move	$a1, $a3
	bstrins.d	$a1, $a5, 2, 0
	xvreplgr2vr.w	$xr0, $a0
	pcalau12i	$a5, %pc_hi20(.LCPI3_1)
	xvld	$xr1, $a5, %pc_lo12(.LCPI3_1)
	ld.d	$a5, $sp, 344                   # 8-byte Folded Reload
	addi.d	$a5, $a5, 4
	lu52i.d	$a6, $zero, -1026
	xvreplgr2vr.d	$xr2, $a6
	move	$a6, $a4
	.p2align	4, , 16
.LBB3_87:                               # %vector.body601
                                        # =>This Inner Loop Header: Depth=1
	xvmul.w	$xr3, $xr0, $xr1
	xvst	$xr3, $sp, 416
	vld	$vr3, $sp, 432
	xvld	$xr4, $a5, 0
	vext2xv.d.w	$xr3, $xr3
	vld	$vr5, $sp, 416
	xvffint.d.l	$xr3, $xr3
	xvst	$xr4, $sp, 448
	vld	$vr4, $sp, 448
	vext2xv.d.w	$xr5, $xr5
	xvffint.d.l	$xr5, $xr5
	xvfmul.d	$xr5, $xr5, $xr2
	vreplvei.w	$vr6, $vr4, 0
	fcvt.d.s	$fa6, $fa6
	xvfmul.d	$xr3, $xr3, $xr2
	movfr2gr.d	$a7, $fa6
	vreplvei.w	$vr6, $vr4, 1
	fcvt.d.s	$fa6, $fa6
	xvinsgr2vr.d	$xr7, $a7, 0
	movfr2gr.d	$a7, $fa6
	vreplvei.w	$vr6, $vr4, 2
	fcvt.d.s	$fa6, $fa6
	xvinsgr2vr.d	$xr7, $a7, 1
	movfr2gr.d	$a7, $fa6
	vld	$vr6, $sp, 464
	vreplvei.w	$vr4, $vr4, 3
	fcvt.d.s	$fa4, $fa4
	xvinsgr2vr.d	$xr7, $a7, 2
	movfr2gr.d	$a7, $fa4
	vreplvei.w	$vr4, $vr6, 0
	fcvt.d.s	$fa4, $fa4
	xvinsgr2vr.d	$xr7, $a7, 3
	movfr2gr.d	$a7, $fa4
	vreplvei.w	$vr4, $vr6, 1
	fcvt.d.s	$fa4, $fa4
	xvinsgr2vr.d	$xr8, $a7, 0
	movfr2gr.d	$a7, $fa4
	vreplvei.w	$vr4, $vr6, 2
	fcvt.d.s	$fa4, $fa4
	xvinsgr2vr.d	$xr8, $a7, 1
	movfr2gr.d	$a7, $fa4
	vreplvei.w	$vr4, $vr6, 3
	fcvt.d.s	$fa4, $fa4
	xvinsgr2vr.d	$xr8, $a7, 2
	movfr2gr.d	$a7, $fa4
	xvinsgr2vr.d	$xr8, $a7, 3
	xvfadd.d	$xr3, $xr8, $xr3
	xvfadd.d	$xr4, $xr7, $xr5
	xvpickve2gr.d	$a7, $xr4, 0
	movgr2fr.d	$fa5, $a7
	fcvt.s.d	$fa5, $fa5
	xvpickve2gr.d	$a7, $xr4, 1
	movgr2fr.d	$fa6, $a7
	movfr2gr.s	$a7, $fa5
	fcvt.s.d	$fa5, $fa6
	xvinsgr2vr.w	$xr6, $a7, 0
	movfr2gr.s	$a7, $fa5
	xvinsgr2vr.w	$xr6, $a7, 1
	xvpickve2gr.d	$a7, $xr4, 2
	movgr2fr.d	$fa5, $a7
	fcvt.s.d	$fa5, $fa5
	xvpickve2gr.d	$a7, $xr4, 3
	movgr2fr.d	$fa4, $a7
	movfr2gr.s	$a7, $fa5
	fcvt.s.d	$fa4, $fa4
	xvinsgr2vr.w	$xr6, $a7, 2
	movfr2gr.s	$a7, $fa4
	xvinsgr2vr.w	$xr6, $a7, 3
	xvpickve2gr.d	$a7, $xr3, 0
	movgr2fr.d	$fa4, $a7
	fcvt.s.d	$fa4, $fa4
	xvpickve2gr.d	$a7, $xr3, 1
	movgr2fr.d	$fa5, $a7
	movfr2gr.s	$a7, $fa4
	fcvt.s.d	$fa4, $fa5
	xvinsgr2vr.w	$xr6, $a7, 4
	movfr2gr.s	$a7, $fa4
	xvinsgr2vr.w	$xr6, $a7, 5
	xvpickve2gr.d	$a7, $xr3, 2
	movgr2fr.d	$fa4, $a7
	fcvt.s.d	$fa4, $fa4
	xvpickve2gr.d	$a7, $xr3, 3
	movgr2fr.d	$fa3, $a7
	movfr2gr.s	$a7, $fa4
	fcvt.s.d	$fa3, $fa3
	xvinsgr2vr.w	$xr6, $a7, 6
	movfr2gr.s	$a7, $fa3
	xvinsgr2vr.w	$xr6, $a7, 7
	xvst	$xr6, $a5, 0
	xvaddi.wu	$xr1, $xr1, 8
	addi.d	$a6, $a6, -8
	addi.d	$a5, $a5, 32
	bnez	$a6, .LBB3_87
# %bb.88:                               # %middle.block608
	beq	$a3, $a4, .LBB3_91
.LBB3_89:                               # %scalar.ph594.preheader
	mul.d	$a3, $a0, $a1
	ld.d	$a4, $sp, 344                   # 8-byte Folded Reload
	alsl.d	$a4, $a1, $a4, 2
	sub.d	$a1, $a2, $a1
	vldi	$vr0, -800
	.p2align	4, , 16
.LBB3_90:                               # %scalar.ph594
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa1, $a4, 0
	movgr2fr.w	$fa2, $a3
	ffint.d.w	$fa2, $fa2
	fmul.d	$fa2, $fa2, $fa0
	fcvt.d.s	$fa1, $fa1
	fadd.d	$fa1, $fa1, $fa2
	fcvt.s.d	$fa1, $fa1
	fst.s	$fa1, $a4, 0
	add.w	$a3, $a3, $a0
	addi.d	$a1, $a1, -1
	addi.d	$a4, $a4, 4
	bnez	$a1, .LBB3_90
.LBB3_91:                               # %.loopexit341
	ori	$a0, $zero, 1
	blt	$s4, $a0, .LBB3_96
.LBB3_92:                               # %iter.check729
	ld.d	$a0, $sp, 280                   # 8-byte Folded Reload
	ld.d	$a6, $a0, %pc_lo12(A__align.ogcp1)
	addi.d	$a0, $a6, 4
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	ld.d	$a2, $a1, %pc_lo12(A__align.m)
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	ld.d	$a3, $a1, %pc_lo12(A__align.mp)
	ld.d	$a1, $sp, 272                   # 8-byte Folded Reload
	addi.d	$a1, $a1, 1
	bstrpick.d	$a1, $a1, 31, 0
	addi.d	$a4, $a1, -1
	ori	$a7, $zero, 4
	ori	$a5, $zero, 1
	bgeu	$a4, $a7, .LBB3_150
.LBB3_93:                               # %vec.epilog.scalar.ph745.preheader
	alsl.d	$a2, $a5, $a2, 2
	alsl.d	$a3, $a5, $a3, 2
	alsl.d	$a4, $a5, $s6, 2
	addi.d	$a4, $a4, -4
	sub.d	$a1, $a1, $a5
	.p2align	4, , 16
.LBB3_94:                               # %vec.epilog.scalar.ph745
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $a4, 0
	fld.s	$fa1, $a0, 0
	fadd.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $a2, 0
	st.w	$zero, $a3, 0
	addi.d	$a2, $a2, 4
	addi.d	$a3, $a3, 4
	addi.d	$a1, $a1, -1
	addi.d	$a4, $a4, 4
	bnez	$a1, .LBB3_94
.LBB3_95:
	move	$a0, $zero
	b	.LBB3_97
.LBB3_96:                               # %._crit_edge381
	ori	$a0, $zero, 1
	beqz	$s4, .LBB3_180
.LBB3_97:                               # %._crit_edge381.thread
	ori	$a1, $zero, 0
	lu32i.d	$a1, -1
	add.d	$a1, $s5, $a1
	srai.d	$a1, $a1, 30
	fldx.s	$fa0, $s6, $a1
	st.d	$a0, $sp, 296                   # 8-byte Folded Spill
	move	$a0, $zero
.LBB3_98:
	pcalau12i	$a1, %got_pc_hi20(outgap)
	ld.d	$a1, $a1, %got_pc_lo12(outgap)
	st.d	$a1, $sp, 72                    # 8-byte Folded Spill
	ld.w	$a1, $a1, 0
	ld.d	$a2, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s0, $a2, %pc_lo12(A__align.lastverticalw)
	sltu	$a2, $zero, $a1
	add.w	$s3, $a2, $s7
	ori	$a2, $zero, 2
	fst.s	$fa0, $s0, 0
	blt	$s3, $a2, .LBB3_126
# %bb.99:                               # %.lr.ph405
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	sltui	$a1, $a1, 1
	or	$a0, $a1, $a0
	st.d	$a0, $sp, 288                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(impmtx)
	st.d	$a0, $sp, 264                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a5, $a0, %pc_lo12(A__align.ogcp2)
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align.ijp)
	st.d	$a0, $sp, 256                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align.m)
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(A__align.mp)
	ld.d	$a2, $sp, 248                   # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(A__align.fgcp2)
	st.d	$a2, $sp, 248                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 240                   # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(A__align.fgcp1)
	st.d	$a2, $sp, 240                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 280                   # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(A__align.ogcp1)
	st.d	$a2, $sp, 232                   # 8-byte Folded Spill
	ori	$a2, $zero, 0
	lu32i.d	$a2, -1
	add.d	$a2, $s5, $a2
	srai.d	$a2, $a2, 30
	st.d	$a2, $sp, 280                   # 8-byte Folded Spill
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	addi.w	$a2, $a4, -1
	move	$s1, $a2
	bstrpick.d	$a2, $a2, 31, 0
	slli.d	$a3, $a2, 2
	addi.d	$a3, $a3, 4
	st.d	$a3, $sp, 152                   # 8-byte Folded Spill
	addi.d	$a3, $a2, 1
	bstrpick.d	$a2, $a3, 32, 4
	slli.d	$a6, $a2, 4
	slli.d	$a2, $a2, 6
	st.d	$a2, $sp, 16                    # 8-byte Folded Spill
	st.d	$a6, $sp, 96                    # 8-byte Folded Spill
	sub.d	$a2, $a4, $a6
	st.d	$a2, $sp, 8                     # 8-byte Folded Spill
	andi	$a2, $a3, 12
	st.d	$a2, $sp, 24                    # 8-byte Folded Spill
	st.d	$a3, $sp, 88                    # 8-byte Folded Spill
	bstrpick.d	$a2, $a3, 32, 2
	slli.d	$a3, $a2, 2
	slli.d	$a2, $a2, 4
	st.d	$a2, $sp, 48                    # 8-byte Folded Spill
	sub.d	$a2, $a4, $a3
	st.d	$a2, $sp, 40                    # 8-byte Folded Spill
	st.d	$a3, $sp, 56                    # 8-byte Folded Spill
	sub.d	$a2, $zero, $a3
	st.d	$a2, $sp, 32                    # 8-byte Folded Spill
	addi.d	$a0, $a0, 4
	st.d	$a0, $sp, 216                   # 8-byte Folded Spill
	addi.d	$a0, $a1, 4
	st.d	$a0, $sp, 208                   # 8-byte Folded Spill
	st.d	$a5, $sp, 224                   # 8-byte Folded Spill
	addi.d	$a0, $a5, 4
	st.d	$a0, $sp, 200                   # 8-byte Folded Spill
	movgr2fr.w	$fs0, $zero
	ori	$s8, $zero, 1
	b	.LBB3_101
	.p2align	4, , 16
.LBB3_100:                              # %._crit_edge397
                                        #   in Loop: Header=BB3_101 Depth=1
	st.d	$s6, $sp, 336                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 280                   # 8-byte Folded Reload
	fldx.s	$fa0, $s5, $a0
	addi.d	$s8, $s8, 1
	fstx.s	$fa0, $s0, $a1
	move	$s6, $s5
	beq	$s8, $s3, .LBB3_127
.LBB3_101:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_119 Depth 2
                                        #     Child Loop BB3_123 Depth 2
                                        #     Child Loop BB3_106 Depth 2
                                        #     Child Loop BB3_110 Depth 2
	addi.d	$s7, $s8, -1
	slli.d	$s2, $s7, 2
	ld.d	$a0, $sp, 344                   # 8-byte Folded Reload
	fldx.s	$fa0, $a0, $s2
	ld.d	$s5, $sp, 336                   # 8-byte Folded Reload
	fst.s	$fa0, $s6, 0
	move	$a0, $s5
	ld.d	$a1, $sp, 320                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 328                   # 8-byte Folded Reload
	move	$a3, $s8
	move	$a4, $s4
	ld.d	$a5, $sp, 312                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 304                   # 8-byte Folded Reload
	move	$a7, $zero
	pcaddu18i	$ra, %call36(match_calc)
	jirl	$ra, $ra, 0
	slli.d	$a0, $s8, 3
	ld.d	$a1, $sp, 288                   # 8-byte Folded Reload
	bnez	$a1, .LBB3_107
# %bb.102:                              # %iter.check772
                                        #   in Loop: Header=BB3_101 Depth=1
	ld.d	$a1, $sp, 264                   # 8-byte Folded Reload
	ldx.d	$a3, $a1, $a0
	ori	$a1, $zero, 3
	bltu	$s1, $a1, .LBB3_105
# %bb.103:                              # %vector.memcheck763
                                        #   in Loop: Header=BB3_101 Depth=1
	ld.d	$a2, $sp, 152                   # 8-byte Folded Reload
	add.d	$a1, $a3, $a2
	bgeu	$s5, $a1, .LBB3_116
# %bb.104:                              # %vector.memcheck763
                                        #   in Loop: Header=BB3_101 Depth=1
	add.d	$a1, $s5, $a2
	bgeu	$a3, $a1, .LBB3_116
.LBB3_105:                              #   in Loop: Header=BB3_101 Depth=1
	move	$a1, $a3
	ld.d	$a3, $sp, 272                   # 8-byte Folded Reload
	move	$a2, $s5
	.p2align	4, , 16
.LBB3_106:                              # %.lr.ph.i327
                                        #   Parent Loop BB3_101 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.s	$fa0, $a1, 0
	fld.s	$fa1, $a2, 0
	addi.w	$a3, $a3, -1
	addi.d	$a1, $a1, 4
	addi.d	$a4, $a2, 4
	fadd.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $a2, 0
	move	$a2, $a4
	bnez	$a3, .LBB3_106
.LBB3_107:                              # %imp_match_out_vead.exit332
                                        #   in Loop: Header=BB3_101 Depth=1
	slli.d	$a1, $s8, 2
	ld.d	$a2, $sp, 344                   # 8-byte Folded Reload
	fldx.s	$fa0, $a2, $a1
	fst.s	$fa0, $s5, 0
	ld.d	$a2, $sp, 296                   # 8-byte Folded Reload
	bnez	$a2, .LBB3_100
# %bb.108:                              # %.lr.ph396.preheader
                                        #   in Loop: Header=BB3_101 Depth=1
	move	$a2, $zero
	move	$a3, $zero
	fld.s	$fa2, $s6, 0
	ld.d	$a4, $sp, 224                   # 8-byte Folded Reload
	fld.s	$fa3, $a4, 4
	ld.d	$a4, $sp, 240                   # 8-byte Folded Reload
	fldx.s	$fa0, $a4, $s2
	ld.d	$a4, $sp, 256                   # 8-byte Folded Reload
	ldx.d	$a4, $a4, $a0
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	fldx.s	$fa1, $a0, $a1
	fadd.s	$fa2, $fa2, $fa3
	addi.d	$a0, $s5, 4
	addi.d	$a4, $a4, 4
	addi.d	$a5, $zero, -1
	ld.d	$a6, $sp, 200                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 208                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 216                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 248                   # 8-byte Folded Reload
	move	$t2, $s6
	b	.LBB3_110
	.p2align	4, , 16
.LBB3_109:                              #   in Loop: Header=BB3_110 Depth=2
	fadd.s	$fa3, $fa3, $fa4
	fcmp.cult.s	$fcc0, $fa3, $fa2
	fsel	$fa2, $fa3, $fa2, $fcc0
	movcf2gr	$t3, $fcc0
	fld.s	$fa3, $a0, 0
	masknez	$t4, $a2, $t3
	maskeqz	$a3, $a3, $t3
	or	$a3, $a3, $t4
	fadd.s	$fa3, $fs0, $fa3
	fst.s	$fa3, $a0, 0
	addi.d	$t2, $t2, 4
	addi.d	$t1, $t1, 4
	addi.d	$a0, $a0, 4
	addi.d	$a4, $a4, 4
	addi.d	$t0, $t0, 4
	addi.d	$a7, $a7, 4
	addi.d	$a6, $a6, 4
	addi.w	$a2, $a2, 1
	addi.d	$a5, $a5, -1
	beq	$s4, $a2, .LBB3_100
.LBB3_110:                              # %.lr.ph396
                                        #   Parent Loop BB3_101 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.s	$fa4, $t1, 0
	fld.s	$fa3, $t2, 0
	fadd.s	$fa4, $fa2, $fa4
	fcmp.cule.s	$fcc0, $fa4, $fa3
	st.w	$zero, $a4, 0
	fmov.s	$fs0, $fa3
	bcnez	$fcc0, .LBB3_112
# %bb.111:                              #   in Loop: Header=BB3_110 Depth=2
	add.d	$t3, $a3, $a5
	st.w	$t3, $a4, 0
	fmov.s	$fs0, $fa4
.LBB3_112:                              #   in Loop: Header=BB3_110 Depth=2
	fld.s	$fa5, $t0, 0
	fld.s	$fa4, $a6, 0
	fadd.s	$fa6, $fa0, $fa5
	fcmp.cule.s	$fcc0, $fa6, $fs0
	bcnez	$fcc0, .LBB3_114
# %bb.113:                              #   in Loop: Header=BB3_110 Depth=2
	ld.w	$t3, $a7, 0
	sub.d	$t3, $s8, $t3
	st.w	$t3, $a4, 0
	fmov.s	$fs0, $fa6
.LBB3_114:                              #   in Loop: Header=BB3_110 Depth=2
	fadd.s	$fa6, $fa1, $fa3
	fcmp.cult.s	$fcc0, $fa6, $fa5
	bcnez	$fcc0, .LBB3_109
# %bb.115:                              #   in Loop: Header=BB3_110 Depth=2
	fst.s	$fa6, $t0, 0
	st.w	$s7, $a7, 0
	b	.LBB3_109
.LBB3_116:                              # %vector.main.loop.iter.check774
                                        #   in Loop: Header=BB3_101 Depth=1
	ori	$a1, $zero, 15
	bgeu	$s1, $a1, .LBB3_118
# %bb.117:                              #   in Loop: Header=BB3_101 Depth=1
	move	$a5, $zero
	b	.LBB3_122
.LBB3_118:                              # %vector.body778.preheader
                                        #   in Loop: Header=BB3_101 Depth=1
	addi.d	$a1, $s5, 32
	addi.d	$a2, $a3, 32
	ld.d	$a4, $sp, 96                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB3_119:                              # %vector.body778
                                        #   Parent Loop BB3_101 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvld	$xr0, $a2, -32
	xvld	$xr1, $a2, 0
	xvld	$xr2, $a1, -32
	xvld	$xr3, $a1, 0
	xvfadd.s	$xr0, $xr0, $xr2
	xvfadd.s	$xr1, $xr1, $xr3
	xvst	$xr0, $a1, -32
	xvst	$xr1, $a1, 0
	addi.d	$a1, $a1, 64
	addi.d	$a4, $a4, -16
	addi.d	$a2, $a2, 64
	bnez	$a4, .LBB3_119
# %bb.120:                              # %middle.block787
                                        #   in Loop: Header=BB3_101 Depth=1
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	beq	$a1, $a2, .LBB3_107
# %bb.121:                              # %vec.epilog.iter.check792
                                        #   in Loop: Header=BB3_101 Depth=1
	ld.d	$a5, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	beqz	$a1, .LBB3_125
.LBB3_122:                              # %vec.epilog.ph791
                                        #   in Loop: Header=BB3_101 Depth=1
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	add.d	$a1, $a3, $a2
	add.d	$a2, $s5, $a2
	alsl.d	$a4, $a5, $s5, 2
	alsl.d	$a3, $a5, $a3, 2
	ld.d	$a6, $sp, 32                    # 8-byte Folded Reload
	add.d	$a5, $a6, $a5
	.p2align	4, , 16
.LBB3_123:                              # %vec.epilog.vector.body798
                                        #   Parent Loop BB3_101 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $a3, 0
	vld	$vr1, $a4, 0
	vfadd.s	$vr0, $vr0, $vr1
	vst	$vr0, $a4, 0
	addi.d	$a4, $a4, 16
	addi.d	$a5, $a5, 4
	addi.d	$a3, $a3, 16
	bnez	$a5, .LBB3_123
# %bb.124:                              # %vec.epilog.middle.block807
                                        #   in Loop: Header=BB3_101 Depth=1
	ld.d	$a3, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a4, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a5, $sp, 56                    # 8-byte Folded Reload
	bne	$a4, $a5, .LBB3_106
	b	.LBB3_107
.LBB3_125:                              #   in Loop: Header=BB3_101 Depth=1
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	add.d	$a1, $a3, $a2
	add.d	$a2, $s5, $a2
	ld.d	$a3, $sp, 8                     # 8-byte Folded Reload
	b	.LBB3_106
.LBB3_126:
	movgr2fr.w	$fs0, $zero
	bnez	$a1, .LBB3_142
	b	.LBB3_128
.LBB3_127:                              # %._crit_edge406.loopexit
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.w	$a1, $a0, 0
	move	$s6, $s5
	ld.d	$s8, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 104                   # 8-byte Folded Reload
	ld.d	$t3, $sp, 144                   # 8-byte Folded Reload
	bnez	$a1, .LBB3_142
.LBB3_128:                              # %.preheader339
	ld.d	$t0, $sp, 272                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 296                   # 8-byte Folded Reload
	bnez	$a0, .LBB3_135
# %bb.129:                              # %.lr.ph411
	pcalau12i	$a0, %got_pc_hi20(offset)
	ld.d	$a0, $a0, %got_pc_lo12(offset)
	ld.w	$a0, $a0, 0
	addi.d	$a1, $t0, 1
	bstrpick.d	$a1, $a1, 31, 0
	addi.d	$a2, $a1, -1
	ori	$a4, $zero, 8
	ori	$a3, $zero, 1
	bltu	$a2, $a4, .LBB3_133
# %bb.130:                              # %vector.ph818
	move	$a4, $a2
	bstrins.d	$a4, $zero, 2, 0
	ori	$a5, $zero, 1
	move	$a3, $a2
	bstrins.d	$a3, $a5, 2, 0
	xvreplgr2vr.w	$xr0, $a0
	xvreplgr2vr.d	$xr1, $t0
	pcalau12i	$a5, %pc_hi20(.LCPI3_2)
	xvld	$xr2, $a5, %pc_lo12(.LCPI3_2)
	pcalau12i	$a5, %pc_hi20(.LCPI3_3)
	xvld	$xr3, $a5, %pc_lo12(.LCPI3_3)
	addi.d	$a5, $s6, 4
	lu52i.d	$a6, $zero, -1026
	xvreplgr2vr.d	$xr4, $a6
	move	$a6, $a4
	.p2align	4, , 16
.LBB3_131:                              # %vector.body825
                                        # =>This Inner Loop Header: Depth=1
	xvsub.d	$xr5, $xr1, $xr2
	xvsub.d	$xr6, $xr1, $xr3
	xvpickve2gr.d	$a7, $xr6, 0
	xvinsgr2vr.w	$xr7, $a7, 0
	xvpickve2gr.d	$a7, $xr6, 1
	xvinsgr2vr.w	$xr7, $a7, 1
	xvpickve2gr.d	$a7, $xr6, 2
	xvinsgr2vr.w	$xr7, $a7, 2
	xvpickve2gr.d	$a7, $xr6, 3
	xvinsgr2vr.w	$xr7, $a7, 3
	xvpickve2gr.d	$a7, $xr5, 0
	xvinsgr2vr.w	$xr7, $a7, 4
	xvpickve2gr.d	$a7, $xr5, 1
	xvinsgr2vr.w	$xr7, $a7, 5
	xvpickve2gr.d	$a7, $xr5, 2
	xvinsgr2vr.w	$xr7, $a7, 6
	xvpickve2gr.d	$a7, $xr5, 3
	xvinsgr2vr.w	$xr7, $a7, 7
	xvmul.w	$xr5, $xr0, $xr7
	xvst	$xr5, $sp, 384
	vld	$vr5, $sp, 400
	xvld	$xr6, $a5, 0
	vext2xv.d.w	$xr5, $xr5
	vld	$vr7, $sp, 384
	xvffint.d.l	$xr5, $xr5
	xvst	$xr6, $sp, 352
	vld	$vr6, $sp, 352
	vext2xv.d.w	$xr7, $xr7
	xvffint.d.l	$xr7, $xr7
	xvfmul.d	$xr7, $xr7, $xr4
	vreplvei.w	$vr8, $vr6, 0
	fcvt.d.s	$ft0, $ft0
	xvfmul.d	$xr5, $xr5, $xr4
	movfr2gr.d	$a7, $ft0
	vreplvei.w	$vr8, $vr6, 1
	fcvt.d.s	$ft0, $ft0
	xvinsgr2vr.d	$xr9, $a7, 0
	movfr2gr.d	$a7, $ft0
	vreplvei.w	$vr8, $vr6, 2
	fcvt.d.s	$ft0, $ft0
	xvinsgr2vr.d	$xr9, $a7, 1
	movfr2gr.d	$a7, $ft0
	vld	$vr8, $sp, 368
	vreplvei.w	$vr6, $vr6, 3
	fcvt.d.s	$fa6, $fa6
	xvinsgr2vr.d	$xr9, $a7, 2
	movfr2gr.d	$a7, $fa6
	vreplvei.w	$vr6, $vr8, 0
	fcvt.d.s	$fa6, $fa6
	xvinsgr2vr.d	$xr9, $a7, 3
	movfr2gr.d	$a7, $fa6
	vreplvei.w	$vr6, $vr8, 1
	fcvt.d.s	$fa6, $fa6
	xvinsgr2vr.d	$xr10, $a7, 0
	movfr2gr.d	$a7, $fa6
	vreplvei.w	$vr6, $vr8, 2
	fcvt.d.s	$fa6, $fa6
	xvinsgr2vr.d	$xr10, $a7, 1
	movfr2gr.d	$a7, $fa6
	vreplvei.w	$vr6, $vr8, 3
	fcvt.d.s	$fa6, $fa6
	xvinsgr2vr.d	$xr10, $a7, 2
	movfr2gr.d	$a7, $fa6
	xvinsgr2vr.d	$xr10, $a7, 3
	xvfadd.d	$xr5, $xr10, $xr5
	xvfadd.d	$xr6, $xr9, $xr7
	xvpickve2gr.d	$a7, $xr6, 0
	movgr2fr.d	$fa7, $a7
	fcvt.s.d	$fa7, $fa7
	xvpickve2gr.d	$a7, $xr6, 1
	movgr2fr.d	$ft0, $a7
	movfr2gr.s	$a7, $fa7
	fcvt.s.d	$fa7, $ft0
	xvinsgr2vr.w	$xr8, $a7, 0
	movfr2gr.s	$a7, $fa7
	xvinsgr2vr.w	$xr8, $a7, 1
	xvpickve2gr.d	$a7, $xr6, 2
	movgr2fr.d	$fa7, $a7
	fcvt.s.d	$fa7, $fa7
	xvpickve2gr.d	$a7, $xr6, 3
	movgr2fr.d	$fa6, $a7
	movfr2gr.s	$a7, $fa7
	fcvt.s.d	$fa6, $fa6
	xvinsgr2vr.w	$xr8, $a7, 2
	movfr2gr.s	$a7, $fa6
	xvinsgr2vr.w	$xr8, $a7, 3
	xvpickve2gr.d	$a7, $xr5, 0
	movgr2fr.d	$fa6, $a7
	fcvt.s.d	$fa6, $fa6
	xvpickve2gr.d	$a7, $xr5, 1
	movgr2fr.d	$fa7, $a7
	movfr2gr.s	$a7, $fa6
	fcvt.s.d	$fa6, $fa7
	xvinsgr2vr.w	$xr8, $a7, 4
	movfr2gr.s	$a7, $fa6
	xvinsgr2vr.w	$xr8, $a7, 5
	xvpickve2gr.d	$a7, $xr5, 2
	movgr2fr.d	$fa6, $a7
	fcvt.s.d	$fa6, $fa6
	xvpickve2gr.d	$a7, $xr5, 3
	movgr2fr.d	$fa5, $a7
	movfr2gr.s	$a7, $fa6
	fcvt.s.d	$fa5, $fa5
	xvinsgr2vr.w	$xr8, $a7, 6
	movfr2gr.s	$a7, $fa5
	xvinsgr2vr.w	$xr8, $a7, 7
	xvst	$xr8, $a5, 0
	xvaddi.du	$xr3, $xr3, 8
	xvaddi.du	$xr2, $xr2, 8
	addi.d	$a6, $a6, -8
	addi.d	$a5, $a5, 32
	bnez	$a6, .LBB3_131
# %bb.132:                              # %middle.block832
	beq	$a2, $a4, .LBB3_135
.LBB3_133:                              # %scalar.ph816.preheader
	sub.w	$a2, $t0, $a3
	mul.d	$a2, $a0, $a2
	alsl.d	$a4, $a3, $s6, 2
	sub.d	$a1, $a1, $a3
	vldi	$vr0, -800
	.p2align	4, , 16
.LBB3_134:                              # %scalar.ph816
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa1, $a4, 0
	movgr2fr.w	$fa2, $a2
	ffint.d.w	$fa2, $fa2
	fmul.d	$fa2, $fa2, $fa0
	fcvt.d.s	$fa1, $fa1
	fadd.d	$fa1, $fa1, $fa2
	fcvt.s.d	$fa1, $fa1
	fst.s	$fa1, $a4, 0
	sub.w	$a2, $a2, $a0
	addi.d	$a1, $a1, -1
	addi.d	$a4, $a4, 4
	bnez	$a1, .LBB3_134
.LBB3_135:                              # %.preheader338
	ori	$a0, $zero, 1
	blt	$t3, $a0, .LBB3_142
# %bb.136:                              # %.lr.ph414
	pcalau12i	$a1, %got_pc_hi20(offset)
	ld.d	$a1, $a1, %got_pc_lo12(offset)
	ld.w	$a1, $a1, 0
	bstrpick.d	$a2, $s7, 31, 0
	movgr2fr.w	$fa0, $a1
	ffint.d.w	$fa1, $fa0
	movgr2fr.d	$fa0, $a2
	ffint.d.l	$fa0, $fa0
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(A__align.lastverticalw)
	addi.d	$a2, $s7, 1
	bstrpick.d	$a2, $a2, 31, 0
	addi.d	$a3, $a2, -1
	ori	$a4, $zero, 4
	fneg.d	$fa1, $fa1
	bltu	$a3, $a4, .LBB3_140
# %bb.137:                              # %vector.ph837
	move	$a4, $a3
	bstrins.d	$a4, $zero, 1, 0
	ori	$a5, $zero, 1
	move	$a0, $a3
	bstrins.d	$a0, $a5, 1, 0
	xvreplve0.d	$xr2, $xr0
	xvreplve0.d	$xr3, $xr1
	pcalau12i	$a5, %pc_hi20(.LCPI3_4)
	vld	$vr4, $a5, %pc_lo12(.LCPI3_4)
	addi.d	$a5, $a1, 4
	lu52i.d	$a6, $zero, -1026
	xvreplgr2vr.d	$xr5, $a6
	move	$a6, $a4
	.p2align	4, , 16
.LBB3_138:                              # %vector.body844
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr6, $a5, 0
	vext2xv.du.wu	$xr7, $xr4
	xvffint.d.lu	$xr7, $xr7
	xvfmul.d	$xr7, $xr7, $xr5
	vreplvei.w	$vr8, $vr6, 0
	fcvt.d.s	$ft0, $ft0
	xvfadd.d	$xr7, $xr2, $xr7
	movfr2gr.d	$a7, $ft0
	vreplvei.w	$vr8, $vr6, 1
	fcvt.d.s	$ft0, $ft0
	xvinsgr2vr.d	$xr9, $a7, 0
	movfr2gr.d	$a7, $ft0
	vreplvei.w	$vr8, $vr6, 2
	fcvt.d.s	$ft0, $ft0
	xvinsgr2vr.d	$xr9, $a7, 1
	movfr2gr.d	$a7, $ft0
	vreplvei.w	$vr6, $vr6, 3
	fcvt.d.s	$fa6, $fa6
	xvinsgr2vr.d	$xr9, $a7, 2
	movfr2gr.d	$a7, $fa6
	xvinsgr2vr.d	$xr9, $a7, 3
	xvfmadd.d	$xr6, $xr3, $xr7, $xr9
	xvpickve2gr.d	$a7, $xr6, 0
	movgr2fr.d	$fa7, $a7
	fcvt.s.d	$fa7, $fa7
	xvpickve2gr.d	$a7, $xr6, 1
	movgr2fr.d	$ft0, $a7
	movfr2gr.s	$a7, $fa7
	fcvt.s.d	$fa7, $ft0
	vinsgr2vr.w	$vr8, $a7, 0
	movfr2gr.s	$a7, $fa7
	vinsgr2vr.w	$vr8, $a7, 1
	xvpickve2gr.d	$a7, $xr6, 2
	movgr2fr.d	$fa7, $a7
	fcvt.s.d	$fa7, $fa7
	xvpickve2gr.d	$a7, $xr6, 3
	movgr2fr.d	$fa6, $a7
	movfr2gr.s	$a7, $fa7
	fcvt.s.d	$fa6, $fa6
	vinsgr2vr.w	$vr8, $a7, 2
	movfr2gr.s	$a7, $fa6
	vinsgr2vr.w	$vr8, $a7, 3
	vst	$vr8, $a5, 0
	vaddi.wu	$vr4, $vr4, 4
	addi.d	$a6, $a6, -4
	addi.d	$a5, $a5, 16
	bnez	$a6, .LBB3_138
# %bb.139:                              # %middle.block851
	beq	$a3, $a4, .LBB3_142
.LBB3_140:                              # %scalar.ph835.preheader
	alsl.d	$a1, $a0, $a1, 2
	sub.d	$a2, $a2, $a0
	vldi	$vr2, -800
	.p2align	4, , 16
.LBB3_141:                              # %scalar.ph835
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a3, $a0, 31, 0
	movgr2fr.d	$fa3, $a3
	fld.s	$fa4, $a1, 0
	ffint.d.l	$fa3, $fa3
	fmul.d	$fa3, $fa3, $fa2
	fadd.d	$fa3, $fa0, $fa3
	fcvt.d.s	$fa4, $fa4
	fmadd.d	$fa3, $fa1, $fa3, $fa4
	fcvt.s.d	$fa3, $fa3
	fst.s	$fa3, $a1, 0
	addi.w	$a0, $a0, 1
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, 4
	bnez	$a2, .LBB3_141
.LBB3_142:                              # %.loopexit
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s5, $a0, %pc_lo12(A__align.lastverticalw)
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s7, $a0, %pc_lo12(A__align.mseq1)
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s4, $a0, %pc_lo12(A__align.mseq2)
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a6, $a0, %pc_lo12(A__align.ijp)
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	beqz	$a0, .LBB3_149
# %bb.143:
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	st.d	$a6, $sp, 328                   # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s2, 0
	move	$s8, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	add.w	$a0, $a0, $s8
	st.d	$a0, $sp, 336                   # 8-byte Folded Spill
	addi.w	$s1, $a0, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(AllocateCharVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 320                   # 8-byte Folded Spill
	move	$a0, $s1
	pcaddu18i	$ra, %call36(AllocateCharVec)
	jirl	$ra, $ra, 0
	ld.d	$ra, $sp, 328                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	ld.w	$a3, $a1, 0
	ori	$a1, $zero, 1
	addi.w	$a2, $s8, 0
	st.d	$a2, $sp, 344                   # 8-byte Folded Spill
	move	$t1, $s2
	addi.w	$a2, $s2, 0
	beq	$a3, $a1, .LBB3_159
# %bb.144:
	fld.s	$fa0, $s5, 0
	ld.d	$a3, $sp, 344                   # 8-byte Folded Reload
	blt	$a3, $a1, .LBB3_154
# %bb.145:                              # %.lr.ph.i333
	slli.d	$a1, $s8, 3
	bstrpick.d	$a1, $a1, 33, 3
	slli.d	$a1, $a1, 3
	slli.d	$a3, $t1, 32
	srai.d	$a3, $a3, 30
	bstrpick.d	$a4, $s8, 30, 0
	move	$a5, $s8
	b	.LBB3_147
	.p2align	4, , 16
.LBB3_146:                              #   in Loop: Header=BB3_147 Depth=1
	addi.d	$a4, $a4, -1
	addi.d	$a5, $a5, -1
	addi.d	$s5, $s5, 4
	beqz	$a4, .LBB3_154
.LBB3_147:                              # =>This Inner Loop Header: Depth=1
	fld.s	$fa1, $s5, 0
	fcmp.cult.s	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB3_146
# %bb.148:                              #   in Loop: Header=BB3_147 Depth=1
	ldx.d	$a6, $ra, $a1
	stx.w	$a5, $a6, $a3
	fmov.s	$fa0, $fa1
	b	.LBB3_146
.LBB3_149:
	st.d	$s8, $sp, 0
	move	$a0, $s6
	move	$a1, $s5
	ld.d	$s5, $sp, 168                   # 8-byte Folded Reload
	move	$a2, $s5
	move	$a3, $s2
	move	$a4, $s7
	move	$a5, $s4
	ld.d	$s3, $sp, 184                   # 8-byte Folded Reload
	move	$a7, $s3
	pcaddu18i	$ra, %call36(Atracking)
	jirl	$ra, $ra, 0
	b	.LBB3_230
.LBB3_150:                              # %vector.memcheck714
	addi.d	$a7, $a2, 4
	alsl.d	$t0, $a1, $a2, 2
	alsl.d	$t1, $a1, $s6, 2
	addi.d	$t1, $t1, -4
	sltu	$t1, $a7, $t1
	sltu	$t2, $s6, $t0
	and	$t1, $t1, $t2
	bnez	$t1, .LBB3_93
# %bb.151:                              # %vector.memcheck714
	addi.d	$a6, $a6, 8
	sltu	$a6, $a7, $a6
	sltu	$a7, $a0, $t0
	and	$a6, $a6, $a7
	bnez	$a6, .LBB3_93
# %bb.152:                              # %vector.main.loop.iter.check731
	ori	$a5, $zero, 16
	bgeu	$a4, $a5, .LBB3_239
# %bb.153:
	move	$a6, $zero
	b	.LBB3_243
.LBB3_154:                              # %.preheader2.i
	ori	$a1, $zero, 1
	blt	$a2, $a1, .LBB3_159
# %bb.155:                              # %.lr.ph7.i
	slli.d	$a1, $s8, 32
	srai.d	$a1, $a1, 29
	slli.d	$a3, $t1, 2
	bstrpick.d	$a3, $a3, 32, 2
	slli.d	$a3, $a3, 2
	bstrpick.d	$a4, $t1, 30, 0
	sub.d	$a5, $zero, $t1
	b	.LBB3_157
	.p2align	4, , 16
.LBB3_156:                              #   in Loop: Header=BB3_157 Depth=1
	addi.d	$a4, $a4, -1
	addi.d	$a5, $a5, 1
	addi.d	$s6, $s6, 4
	beqz	$a4, .LBB3_159
.LBB3_157:                              # =>This Inner Loop Header: Depth=1
	fld.s	$fa1, $s6, 0
	fcmp.cult.s	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB3_156
# %bb.158:                              #   in Loop: Header=BB3_157 Depth=1
	ldx.d	$a6, $ra, $a1
	stx.w	$a5, $a6, $a3
	fmov.s	$fa0, $fa1
	b	.LBB3_156
.LBB3_159:                              # %.loopexit.i
	ld.d	$a1, $sp, 344                   # 8-byte Folded Reload
	bltz	$a1, .LBB3_167
# %bb.160:                              # %.lr.ph10.preheader.i
	addi.d	$a3, $s8, 1
	bstrpick.d	$a1, $a3, 31, 0
	ori	$a4, $zero, 4
	bgeu	$a1, $a4, .LBB3_162
# %bb.161:
	move	$a3, $zero
	b	.LBB3_165
.LBB3_162:                              # %vector.ph856
	pcalau12i	$a4, %pc_hi20(.LCPI3_5)
	vld	$vr0, $a4, %pc_lo12(.LCPI3_5)
	bstrpick.d	$a3, $a3, 31, 2
	slli.d	$a3, $a3, 2
	addi.d	$a4, $ra, 16
	move	$a5, $a3
	.p2align	4, , 16
.LBB3_163:                              # %vector.body859
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr1, $a4, -16
	vld	$vr2, $a4, 0
	vshuf4i.w	$vr3, $vr0, 8
	vaddi.wu	$vr4, $vr3, 1
	vaddi.wu	$vr3, $vr3, 3
	vpickve2gr.w	$a6, $vr4, 0
	vpickve2gr.d	$a7, $vr1, 0
	st.w	$a6, $a7, 0
	vpickve2gr.w	$a6, $vr4, 1
	vpickve2gr.d	$a7, $vr1, 1
	st.w	$a6, $a7, 0
	vpickve2gr.w	$a6, $vr3, 0
	vpickve2gr.d	$a7, $vr2, 0
	st.w	$a6, $a7, 0
	vpickve2gr.w	$a6, $vr3, 1
	vpickve2gr.d	$a7, $vr2, 1
	st.w	$a6, $a7, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a5, $a5, -4
	addi.d	$a4, $a4, 32
	bnez	$a5, .LBB3_163
# %bb.164:                              # %middle.block866
	beq	$a1, $a3, .LBB3_167
.LBB3_165:                              # %.lr.ph10.i.preheader
	alsl.d	$a4, $a3, $ra, 3
	sub.d	$a1, $a1, $a3
	addi.d	$a3, $a3, 1
	.p2align	4, , 16
.LBB3_166:                              # %.lr.ph10.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a5, $a4, 0
	st.w	$a3, $a5, 0
	addi.d	$a4, $a4, 8
	addi.d	$a1, $a1, -1
	addi.d	$a3, $a3, 1
	bnez	$a1, .LBB3_166
.LBB3_167:                              # %.preheader1.i
	ld.d	$a1, $fp, 0
	bltz	$a2, .LBB3_190
# %bb.168:                              # %iter.check872
	ld.d	$a3, $ra, 0
	addi.d	$a6, $t1, 1
	bstrpick.d	$a4, $a6, 31, 0
	ori	$a5, $zero, 3
	bltu	$a5, $a4, .LBB3_170
# %bb.169:
	move	$a5, $zero
	b	.LBB3_188
.LBB3_170:                              # %vector.main.loop.iter.check874
	ori	$a5, $zero, 16
	bgeu	$a4, $a5, .LBB3_181
# %bb.171:
	move	$a5, $zero
	b	.LBB3_185
.LBB3_172:                              # %vector.memcheck611
	ld.d	$a6, $sp, 344                   # 8-byte Folded Reload
	addi.d	$a5, $a6, 4
	alsl.d	$a6, $a2, $a6, 2
	addi.d	$a7, $a0, 4
	sltu	$a7, $a5, $a7
	sltu	$t0, $a0, $a6
	and	$a7, $a7, $t0
	bnez	$a7, .LBB3_71
# %bb.173:                              # %vector.memcheck611
	alsl.d	$a7, $a2, $a1, 2
	addi.d	$a7, $a7, -4
	sltu	$a5, $a5, $a7
	sltu	$a6, $a1, $a6
	and	$a5, $a5, $a6
	bnez	$a5, .LBB3_71
# %bb.174:                              # %vector.main.loop.iter.check627
	ori	$a4, $zero, 16
	bgeu	$a3, $a4, .LBB3_247
# %bb.175:
	move	$a5, $zero
	b	.LBB3_251
.LBB3_176:                              # %vector.memcheck662
	addi.d	$a5, $s6, 4
	alsl.d	$a6, $a2, $s6, 2
	addi.d	$a7, $a0, 4
	sltu	$a7, $a5, $a7
	sltu	$t0, $a0, $a6
	and	$a7, $a7, $t0
	bnez	$a7, .LBB3_75
# %bb.177:                              # %vector.memcheck662
	alsl.d	$a7, $a2, $a1, 2
	addi.d	$a7, $a7, -4
	sltu	$a5, $a5, $a7
	sltu	$a6, $a1, $a6
	and	$a5, $a5, $a6
	bnez	$a5, .LBB3_75
# %bb.178:                              # %vector.main.loop.iter.check679
	ori	$a4, $zero, 16
	bgeu	$a3, $a4, .LBB3_254
# %bb.179:
	move	$a5, $zero
	b	.LBB3_258
.LBB3_180:
	movgr2fr.w	$fa0, $zero
	ori	$a1, $zero, 1
	st.d	$a1, $sp, 296                   # 8-byte Folded Spill
	b	.LBB3_98
.LBB3_181:                              # %vector.ph875
	bstrpick.d	$a5, $a6, 31, 4
	slli.d	$a5, $a5, 4
	pcalau12i	$a7, %pc_hi20(.LCPI3_6)
	xvld	$xr0, $a7, %pc_lo12(.LCPI3_6)
	addi.d	$a7, $a3, 32
	xvrepli.b	$xr1, -1
	xvrepli.w	$xr2, -9
	move	$t0, $a5
	.p2align	4, , 16
.LBB3_182:                              # %vector.body878
                                        # =>This Inner Loop Header: Depth=1
	xvxor.v	$xr3, $xr0, $xr1
	xvsub.w	$xr4, $xr2, $xr0
	xvst	$xr3, $a7, -32
	xvst	$xr4, $a7, 0
	xvaddi.wu	$xr0, $xr0, 16
	addi.d	$t0, $t0, -16
	addi.d	$a7, $a7, 64
	bnez	$t0, .LBB3_182
# %bb.183:                              # %middle.block884
	beq	$a4, $a5, .LBB3_190
# %bb.184:                              # %vec.epilog.iter.check889
	andi	$a7, $a6, 12
	beqz	$a7, .LBB3_188
.LBB3_185:                              # %vec.epilog.ph888
	move	$a7, $a5
	pcalau12i	$a5, %pc_hi20(.LCPI3_7)
	vld	$vr0, $a5, %pc_lo12(.LCPI3_7)
	bstrpick.d	$a5, $a6, 31, 2
	slli.d	$a5, $a5, 2
	vreplgr2vr.w	$vr1, $a7
	vor.v	$vr0, $vr1, $vr0
	sub.d	$a6, $a7, $a5
	alsl.d	$a7, $a7, $a3, 2
	vrepli.b	$vr1, -1
	.p2align	4, , 16
.LBB3_186:                              # %vec.epilog.vector.body894
                                        # =>This Inner Loop Header: Depth=1
	vxor.v	$vr2, $vr0, $vr1
	vst	$vr2, $a7, 0
	vaddi.wu	$vr0, $vr0, 4
	addi.d	$a6, $a6, 4
	addi.d	$a7, $a7, 16
	bnez	$a6, .LBB3_186
# %bb.187:                              # %vec.epilog.middle.block899
	beq	$a4, $a5, .LBB3_190
.LBB3_188:                              # %vec.epilog.scalar.ph887.preheader
	alsl.d	$a3, $a5, $a3, 2
	nor	$a6, $a5, $zero
	sub.d	$a4, $a4, $a5
	.p2align	4, , 16
.LBB3_189:                              # %vec.epilog.scalar.ph887
                                        # =>This Inner Loop Header: Depth=1
	st.w	$a6, $a3, 0
	addi.d	$a3, $a3, 4
	addi.d	$a4, $a4, -1
	addi.d	$a6, $a6, -1
	bnez	$a4, .LBB3_189
.LBB3_190:                              # %._crit_edge.i
	ld.d	$a3, $sp, 320                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 344                   # 8-byte Folded Reload
	add.d	$a3, $a3, $a4
	add.d	$s5, $a3, $a2
	stx.b	$zero, $a3, $a2
	st.d	$a0, $sp, 312                   # 8-byte Folded Spill
	add.d	$a3, $a0, $a4
	add.d	$s6, $a3, $a2
	stx.b	$zero, $a3, $a2
	st.w	$zero, $a1, 0
	ld.d	$a0, $sp, 336                   # 8-byte Folded Reload
	bltz	$a0, .LBB3_222
# %bb.191:                              # %.lr.ph41.i.preheader
	move	$t7, $zero
	addi.w	$a2, $zero, -1
	ori	$a3, $zero, 1
	ori	$a4, $zero, 111
	ori	$a5, $zero, 45
	ori	$a6, $zero, 16
	xvrepli.b	$xr0, 0
	vrepli.b	$vr1, 45
	vrepli.b	$vr2, 111
	ori	$a7, $zero, 32
	xvrepli.b	$xr3, 111
	xvrepli.b	$xr4, 45
	move	$a0, $t1
	move	$t0, $t1
	.p2align	4, , 16
.LBB3_192:                              # %.lr.ph41.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_198 Depth 2
                                        #     Child Loop BB3_209 Depth 2
                                        #     Child Loop BB3_205 Depth 2
                                        #     Child Loop BB3_214 Depth 2
	addi.w	$t1, $s8, 0
	slli.d	$t5, $t1, 3
	ldx.d	$t2, $ra, $t5
	addi.w	$t3, $t0, 0
	slli.d	$t6, $t3, 2
	ldx.w	$t4, $t2, $t6
	bge	$a2, $t4, .LBB3_200
# %bb.193:                              #   in Loop: Header=BB3_192 Depth=1
	beqz	$t4, .LBB3_221
# %bb.194:                              #   in Loop: Header=BB3_192 Depth=1
	sub.d	$t2, $s8, $t4
	move	$t4, $a2
	nor	$t8, $t2, $zero
	add.w	$t8, $s8, $t8
	beqz	$t8, .LBB3_201
.LBB3_195:                              # %.lr.ph19.preheader.i
                                        #   in Loop: Header=BB3_192 Depth=1
	bltu	$t8, $a7, .LBB3_207
# %bb.196:                              # %.lr.ph19.preheader.i
                                        #   in Loop: Header=BB3_192 Depth=1
	sub.d	$s0, $s5, $s6
	bltu	$s0, $a7, .LBB3_207
# %bb.197:                              # %vector.ph930
                                        #   in Loop: Header=BB3_192 Depth=1
	bstrpick.d	$s2, $t8, 31, 0
	bstrpick.d	$s0, $s2, 31, 5
	slli.d	$s3, $s0, 5
	sub.d	$t8, $t8, $s3
	sub.d	$s0, $s6, $s3
	sub.d	$s1, $s5, $s3
	addi.d	$s5, $s5, -32
	addi.d	$s6, $s6, -32
	move	$ra, $s3
	.p2align	4, , 16
.LBB3_198:                              # %vector.body934
                                        #   Parent Loop BB3_192 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvst	$xr3, $s5, 0
	xvst	$xr4, $s6, 0
	addi.d	$ra, $ra, -32
	addi.d	$s5, $s5, -32
	addi.d	$s6, $s6, -32
	bnez	$ra, .LBB3_198
# %bb.199:                              # %middle.block941
                                        #   in Loop: Header=BB3_192 Depth=1
	ld.d	$ra, $sp, 328                   # 8-byte Folded Reload
	bne	$s3, $s2, .LBB3_208
	b	.LBB3_210
	.p2align	4, , 16
.LBB3_200:                              #   in Loop: Header=BB3_192 Depth=1
	addi.d	$t2, $s8, -1
	nor	$t8, $t2, $zero
	add.w	$t8, $s8, $t8
	bnez	$t8, .LBB3_195
	.p2align	4, , 16
.LBB3_201:                              # %._crit_edge20.i
                                        #   in Loop: Header=BB3_192 Depth=1
	beq	$t4, $a2, .LBB3_211
.LBB3_202:                              # %.lr.ph29.preheader.i
                                        #   in Loop: Header=BB3_192 Depth=1
	addi.w	$t8, $zero, -17
	nor	$s2, $t4, $zero
	bltu	$t8, $t4, .LBB3_212
# %bb.203:                              # %.lr.ph29.preheader.i
                                        #   in Loop: Header=BB3_192 Depth=1
	sub.d	$t8, $s5, $s6
	bltu	$t8, $a6, .LBB3_212
# %bb.204:                              # %vector.ph907
                                        #   in Loop: Header=BB3_192 Depth=1
	bstrpick.d	$t8, $s2, 30, 4
	slli.d	$s3, $t8, 4
	sub.d	$s1, $s2, $s3
	sub.d	$t8, $s6, $s3
	sub.d	$s0, $s5, $s3
	xvinsgr2vr.w	$xr6, $t7, 0
	pcalau12i	$t7, %pc_hi20(.LCPI3_8)
	xvld	$xr5, $t7, %pc_lo12(.LCPI3_8)
	xvpermi.d	$xr6, $xr6, 68
	xvinsgr2vr.w	$xr7, $zero, 0
	xvpermi.d	$xr7, $xr7, 68
	xvshuf.w	$xr5, $xr7, $xr6
	addi.d	$t7, $s5, -8
	addi.d	$s5, $s6, -8
	move	$s6, $s3
	xvori.b	$xr6, $xr0, 0
	.p2align	4, , 16
.LBB3_205:                              # %vector.body911
                                        #   Parent Loop BB3_192 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vst	$vr1, $t7, -8
	vst	$vr2, $s5, -8
	xvaddi.wu	$xr5, $xr5, 1
	xvaddi.wu	$xr6, $xr6, 1
	addi.d	$s6, $s6, -16
	addi.d	$t7, $t7, -16
	addi.d	$s5, $s5, -16
	bnez	$s6, .LBB3_205
# %bb.206:                              # %middle.block919
                                        #   in Loop: Header=BB3_192 Depth=1
	pcalau12i	$t7, %pc_hi20(.LCPI3_9)
	xvld	$xr7, $t7, %pc_lo12(.LCPI3_9)
	xvadd.w	$xr5, $xr6, $xr5
	xvpermi.d	$xr6, $xr5, 78
	xvshuf.d	$xr7, $xr0, $xr6
	xvadd.w	$xr5, $xr5, $xr7
	xvpermi.d	$xr6, $xr5, 68
	xvrepl128vei.d	$xr6, $xr6, 1
	xvadd.w	$xr5, $xr5, $xr6
	xvpermi.d	$xr6, $xr5, 68
	xvrepl128vei.w	$xr6, $xr6, 1
	xvadd.w	$xr5, $xr5, $xr6
	xvpickve2gr.w	$t7, $xr5, 0
	bne	$s3, $s2, .LBB3_213
	b	.LBB3_215
	.p2align	4, , 16
.LBB3_207:                              #   in Loop: Header=BB3_192 Depth=1
	move	$s0, $s6
	move	$s1, $s5
.LBB3_208:                              # %.lr.ph19.i.preheader
                                        #   in Loop: Header=BB3_192 Depth=1
	move	$s2, $s0
	move	$s3, $s1
	.p2align	4, , 16
.LBB3_209:                              # %.lr.ph19.i
                                        #   Parent Loop BB3_192 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$s1, $s3, -1
	st.b	$a4, $s3, -1
	addi.d	$s0, $s2, -1
	addi.w	$t8, $t8, -1
	st.b	$a5, $s2, -1
	move	$s2, $s0
	move	$s3, $s1
	bnez	$t8, .LBB3_209
.LBB3_210:                              # %._crit_edge20.loopexit.i
                                        #   in Loop: Header=BB3_192 Depth=1
	addi.d	$t8, $s8, -1
	add.d	$t7, $t8, $t7
	sub.d	$t7, $t7, $t2
	move	$s5, $s1
	move	$s6, $s0
	bne	$t4, $a2, .LBB3_202
.LBB3_211:                              #   in Loop: Header=BB3_192 Depth=1
	move	$s0, $s5
	move	$t8, $s6
	ld.d	$s1, $sp, 344                   # 8-byte Folded Reload
	bne	$t1, $s1, .LBB3_216
	b	.LBB3_218
	.p2align	4, , 16
.LBB3_212:                              #   in Loop: Header=BB3_192 Depth=1
	move	$s1, $s2
	move	$t8, $s6
	move	$s0, $s5
.LBB3_213:                              # %.lr.ph29.i.preheader
                                        #   in Loop: Header=BB3_192 Depth=1
	add.d	$t7, $t7, $s1
	.p2align	4, , 16
.LBB3_214:                              # %.lr.ph29.i
                                        #   Parent Loop BB3_192 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.b	$a5, $s0, -1
	addi.d	$s0, $s0, -1
	st.b	$a4, $t8, -1
	addi.w	$s1, $s1, -1
	addi.d	$t8, $t8, -1
	bnez	$s1, .LBB3_214
.LBB3_215:                              # %._crit_edge30.i
                                        #   in Loop: Header=BB3_192 Depth=1
	ld.d	$s1, $sp, 344                   # 8-byte Folded Reload
	beq	$t1, $s1, .LBB3_218
.LBB3_216:                              # %._crit_edge30.i
                                        #   in Loop: Header=BB3_192 Depth=1
	addi.w	$s1, $a0, 0
	beq	$t3, $s1, .LBB3_218
# %bb.217:                              #   in Loop: Header=BB3_192 Depth=1
	ld.d	$s1, $sp, 192                   # 8-byte Folded Reload
	ld.d	$s1, $s1, %pc_lo12(impmtx)
	ldx.d	$t5, $s1, $t5
	fldx.s	$fa5, $t5, $t6
	fld.s	$fa6, $a1, 0
	fadd.s	$fa5, $fa5, $fa6
	fst.s	$fa5, $a1, 0
.LBB3_218:                              #   in Loop: Header=BB3_192 Depth=1
	blt	$t1, $a3, .LBB3_223
# %bb.219:                              #   in Loop: Header=BB3_192 Depth=1
	blt	$t3, $a3, .LBB3_223
# %bb.220:                              #   in Loop: Header=BB3_192 Depth=1
	add.d	$t0, $t4, $t0
	addi.d	$s5, $s0, -1
	st.b	$a4, $s0, -1
	addi.d	$s6, $t8, -1
	addi.w	$t7, $t7, 2
	st.b	$a4, $t8, -1
	move	$s8, $t2
	ld.d	$t1, $sp, 336                   # 8-byte Folded Reload
	bge	$t1, $t7, .LBB3_192
	b	.LBB3_222
	.p2align	4, , 16
.LBB3_221:                              #   in Loop: Header=BB3_192 Depth=1
	addi.d	$t2, $s8, -1
	move	$t4, $a2
	nor	$t8, $t2, $zero
	add.w	$t8, $s8, $t8
	bnez	$t8, .LBB3_195
	b	.LBB3_201
.LBB3_222:                              # %._crit_edge42.i
	ori	$s0, $zero, 1
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	bge	$a0, $s0, .LBB3_224
	b	.LBB3_226
.LBB3_223:
	move	$s5, $s0
	move	$s6, $t8
	ori	$s0, $zero, 1
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	blt	$a0, $s0, .LBB3_226
.LBB3_224:                              # %.lr.ph50.preheader.i
	ld.d	$s1, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 184                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB3_225:                              # %.lr.ph50.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s7, 0
	ld.d	$a1, $s1, 0
	move	$a2, $s5
	pcaddu18i	$ra, %call36(gapireru)
	jirl	$ra, $ra, 0
	addi.d	$s2, $s2, -1
	addi.d	$s1, $s1, 8
	addi.d	$s7, $s7, 8
	bnez	$s2, .LBB3_225
.LBB3_226:                              # %.preheader.i
	ld.d	$s8, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 128                   # 8-byte Folded Reload
	blt	$s8, $s0, .LBB3_229
# %bb.227:                              # %.lr.ph52.preheader.i
	move	$s0, $s2
	move	$s1, $s8
	.p2align	4, , 16
.LBB3_228:                              # %.lr.ph52.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s4, 0
	ld.d	$a1, $s0, 0
	move	$a2, $s6
	pcaddu18i	$ra, %call36(gapireru)
	jirl	$ra, $ra, 0
	addi.d	$s1, $s1, -1
	addi.d	$s0, $s0, 8
	addi.d	$s4, $s4, 8
	bnez	$s1, .LBB3_228
.LBB3_229:                              # %Atracking_localhom.exit
	ld.d	$a0, $sp, 320                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 312                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$s3, $sp, 184                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 168                   # 8-byte Folded Reload
.LBB3_230:
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align.mseq1)
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.w	$a3, $a0, 0
	lu12i.w	$a4, 1220
	ld.d	$a2, $sp, 64                    # 8-byte Folded Reload
	blt	$a2, $a3, .LBB3_246
# %bb.231:
	ori	$a0, $a4, 2881
	bge	$a3, $a0, .LBB3_246
# %bb.232:
	ori	$s0, $zero, 1
	blt	$s3, $s0, .LBB3_235
.LBB3_233:                              # %.lr.ph417
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s1, $a0, %pc_lo12(A__align.mseq1)
	.p2align	4, , 16
.LBB3_234:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s5, 0
	ld.d	$a1, $s1, 0
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	addi.d	$s1, $s1, 8
	addi.d	$s3, $s3, -1
	addi.d	$s5, $s5, 8
	bnez	$s3, .LBB3_234
.LBB3_235:                              # %.preheader
	blt	$s8, $s0, .LBB3_238
# %bb.236:                              # %.lr.ph419
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s0, $a0, %pc_lo12(A__align.mseq2)
	.p2align	4, , 16
.LBB3_237:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s2, 0
	ld.d	$a1, $s0, 0
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	addi.d	$s0, $s0, 8
	addi.d	$s8, $s8, -1
	addi.d	$s2, $s2, 8
	bnez	$s8, .LBB3_237
.LBB3_238:                              # %._crit_edge420
	fmov.s	$fa0, $fs0
	addi.d	$sp, $fp, -768
	fld.d	$fs0, $sp, 672                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 680                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 688                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 696                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 704                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 712                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 720                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 728                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 736                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 744                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 752                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 760                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 768
	ret
.LBB3_239:                              # %vector.ph732
	fld.s	$fa0, $a0, 0
	move	$a6, $a4
	bstrins.d	$a6, $zero, 3, 0
	xvreplve0.w	$xr0, $xr0
	addi.d	$a5, $s6, 32
	addi.d	$a7, $a2, 36
	addi.d	$t0, $a3, 36
	xvrepli.b	$xr1, 0
	move	$t1, $a6
	.p2align	4, , 16
.LBB3_240:                              # %vector.body735
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr2, $a5, -32
	xvld	$xr3, $a5, 0
	xvfadd.s	$xr2, $xr2, $xr0
	xvfadd.s	$xr3, $xr3, $xr0
	xvst	$xr2, $a7, -32
	xvst	$xr3, $a7, 0
	xvst	$xr1, $t0, -32
	xvst	$xr1, $t0, 0
	addi.d	$t1, $t1, -16
	addi.d	$a5, $a5, 64
	addi.d	$a7, $a7, 64
	addi.d	$t0, $t0, 64
	bnez	$t1, .LBB3_240
# %bb.241:                              # %middle.block742
	beq	$a4, $a6, .LBB3_95
# %bb.242:                              # %vec.epilog.iter.check747
	andi	$a5, $a4, 12
	beqz	$a5, .LBB3_261
.LBB3_243:                              # %vec.epilog.ph746
	move	$a7, $a4
	fld.s	$fa0, $a0, 0
	bstrins.d	$a7, $zero, 1, 0
	ori	$t0, $zero, 1
	move	$a5, $a4
	bstrins.d	$a5, $t0, 1, 0
	vreplvei.w	$vr0, $vr0, 0
	slli.d	$t1, $a6, 2
	alsl.d	$t0, $a6, $s6, 2
	addi.d	$t2, $t1, 4
	add.d	$t1, $a2, $t2
	add.d	$t2, $a3, $t2
	sub.d	$a6, $a6, $a7
	vrepli.b	$vr1, 0
	.p2align	4, , 16
.LBB3_244:                              # %vec.epilog.vector.body752
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr2, $t0, 0
	vfadd.s	$vr2, $vr2, $vr0
	vst	$vr2, $t1, 0
	vst	$vr1, $t2, 0
	addi.d	$t0, $t0, 16
	addi.d	$t1, $t1, 16
	addi.d	$a6, $a6, 4
	addi.d	$t2, $t2, 16
	bnez	$a6, .LBB3_244
# %bb.245:                              # %vec.epilog.middle.block759
	bne	$a4, $a7, .LBB3_93
	b	.LBB3_95
.LBB3_246:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	pcalau12i	$a1, %pc_hi20(.L.str)
	addi.d	$a1, $a1, %pc_lo12(.L.str)
	ori	$a4, $a4, 2880
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	pcaddu18i	$ra, %call36(ErrorExit)
	jirl	$ra, $ra, 0
	ori	$s0, $zero, 1
	bge	$s3, $s0, .LBB3_233
	b	.LBB3_235
.LBB3_247:                              # %vector.ph628
	fld.s	$fa0, $a0, 0
	move	$a5, $a3
	bstrins.d	$a5, $zero, 3, 0
	xvreplve0.w	$xr0, $xr0
	ld.d	$a4, $sp, 344                   # 8-byte Folded Reload
	addi.d	$a4, $a4, 36
	addi.d	$a6, $a1, 32
	move	$a7, $a5
	.p2align	4, , 16
.LBB3_248:                              # %vector.body631
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr1, $a6, -32
	xvld	$xr2, $a6, 0
	xvld	$xr3, $a4, -32
	xvld	$xr4, $a4, 0
	xvfadd.s	$xr1, $xr0, $xr1
	xvfadd.s	$xr2, $xr0, $xr2
	xvfadd.s	$xr1, $xr3, $xr1
	xvfadd.s	$xr2, $xr4, $xr2
	xvst	$xr1, $a4, -32
	xvst	$xr2, $a4, 0
	addi.d	$a4, $a4, 64
	addi.d	$a7, $a7, -16
	addi.d	$a6, $a6, 64
	bnez	$a7, .LBB3_248
# %bb.249:                              # %middle.block640
	beq	$a3, $a5, .LBB3_73
# %bb.250:                              # %vec.epilog.iter.check645
	andi	$a4, $a3, 12
	beqz	$a4, .LBB3_262
.LBB3_251:                              # %vec.epilog.ph644
	move	$a6, $a3
	fld.s	$fa0, $a0, 0
	bstrins.d	$a6, $zero, 1, 0
	ori	$a7, $zero, 1
	move	$a4, $a3
	bstrins.d	$a4, $a7, 1, 0
	vreplvei.w	$vr0, $vr0, 0
	ld.d	$a7, $sp, 344                   # 8-byte Folded Reload
	alsl.d	$a7, $a5, $a7, 2
	addi.d	$a7, $a7, 4
	alsl.d	$t0, $a5, $a1, 2
	sub.d	$a5, $a5, $a6
	.p2align	4, , 16
.LBB3_252:                              # %vec.epilog.vector.body650
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr1, $t0, 0
	vld	$vr2, $a7, 0
	vfadd.s	$vr1, $vr0, $vr1
	vfadd.s	$vr1, $vr2, $vr1
	vst	$vr1, $a7, 0
	addi.d	$a7, $a7, 16
	addi.d	$a5, $a5, 4
	addi.d	$t0, $t0, 16
	bnez	$a5, .LBB3_252
# %bb.253:                              # %vec.epilog.middle.block658
	bne	$a3, $a6, .LBB3_71
	b	.LBB3_73
.LBB3_254:                              # %vector.ph680
	fld.s	$fa0, $a0, 0
	move	$a5, $a3
	bstrins.d	$a5, $zero, 3, 0
	xvreplve0.w	$xr0, $xr0
	addi.d	$a4, $s6, 36
	addi.d	$a6, $a1, 32
	move	$a7, $a5
	.p2align	4, , 16
.LBB3_255:                              # %vector.body683
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr1, $a6, -32
	xvld	$xr2, $a6, 0
	xvld	$xr3, $a4, -32
	xvld	$xr4, $a4, 0
	xvfadd.s	$xr1, $xr0, $xr1
	xvfadd.s	$xr2, $xr0, $xr2
	xvfadd.s	$xr1, $xr3, $xr1
	xvfadd.s	$xr2, $xr4, $xr2
	xvst	$xr1, $a4, -32
	xvst	$xr2, $a4, 0
	addi.d	$a4, $a4, 64
	addi.d	$a7, $a7, -16
	addi.d	$a6, $a6, 64
	bnez	$a7, .LBB3_255
# %bb.256:                              # %middle.block692
	beq	$a3, $a5, .LBB3_92
# %bb.257:                              # %vec.epilog.iter.check697
	andi	$a4, $a3, 12
	beqz	$a4, .LBB3_263
.LBB3_258:                              # %vec.epilog.ph696
	move	$a6, $a3
	fld.s	$fa0, $a0, 0
	bstrins.d	$a6, $zero, 1, 0
	ori	$a7, $zero, 1
	move	$a4, $a3
	bstrins.d	$a4, $a7, 1, 0
	vreplvei.w	$vr0, $vr0, 0
	alsl.d	$a7, $a5, $s6, 2
	addi.d	$a7, $a7, 4
	alsl.d	$t0, $a5, $a1, 2
	sub.d	$a5, $a5, $a6
	.p2align	4, , 16
.LBB3_259:                              # %vec.epilog.vector.body702
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr1, $t0, 0
	vld	$vr2, $a7, 0
	vfadd.s	$vr1, $vr0, $vr1
	vfadd.s	$vr1, $vr2, $vr1
	vst	$vr1, $a7, 0
	addi.d	$a7, $a7, 16
	addi.d	$a5, $a5, 4
	addi.d	$t0, $t0, 16
	bnez	$a5, .LBB3_259
# %bb.260:                              # %vec.epilog.middle.block710
	bne	$a3, $a6, .LBB3_75
	b	.LBB3_92
.LBB3_261:
	addi.d	$a5, $a6, 1
	b	.LBB3_93
.LBB3_262:
	addi.d	$a4, $a5, 1
	b	.LBB3_71
.LBB3_263:
	addi.d	$a4, $a5, 1
	b	.LBB3_75
.Lfunc_end3:
	.size	A__align, .Lfunc_end3-A__align
                                        # -- End function
	.p2align	5                               # -- Begin function match_calc
	.type	match_calc,@function
match_calc:                             # @match_calc
# %bb.0:
	addi.d	$sp, $sp, -256
	st.d	$fp, $sp, 248                   # 8-byte Folded Spill
	st.d	$s0, $sp, 240                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 232                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 224                  # 8-byte Folded Spill
	fst.d	$fs2, $sp, 216                  # 8-byte Folded Spill
	fst.d	$fs3, $sp, 208                  # 8-byte Folded Spill
	fst.d	$fs4, $sp, 200                  # 8-byte Folded Spill
	fst.d	$fs5, $sp, 192                  # 8-byte Folded Spill
	fst.d	$fs6, $sp, 184                  # 8-byte Folded Spill
	fst.d	$fs7, $sp, 176                  # 8-byte Folded Spill
	beqz	$a7, .LBB4_8
# %bb.1:
	ori	$a7, $zero, 1
	blt	$a4, $a7, .LBB4_8
# %bb.2:                                # %.preheader60.preheader
	move	$a7, $zero
	movgr2fr.w	$fa0, $zero
	ori	$t0, $zero, 208
	addi.w	$t1, $zero, -1
	lu32i.d	$t1, 0
	b	.LBB4_4
	.p2align	4, , 16
.LBB4_3:                                #   in Loop: Header=BB4_4 Depth=1
	ld.d	$t3, $t5, 0
	slli.d	$t2, $t2, 2
	addi.d	$a7, $a7, 1
	stx.w	$t1, $t3, $t2
	beq	$a7, $a4, .LBB4_8
.LBB4_4:                                # %.preheader60
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_6 Depth 2
	move	$t3, $zero
	move	$t4, $zero
	move	$t2, $zero
	alsl.d	$t6, $a7, $a5, 3
	alsl.d	$t5, $a7, $a6, 3
	slli.d	$t7, $a7, 2
	b	.LBB4_6
	.p2align	4, , 16
.LBB4_5:                                #   in Loop: Header=BB4_6 Depth=2
	addi.d	$t3, $t3, 8
	addi.d	$t4, $t4, 1
	beq	$t3, $t0, .LBB4_3
.LBB4_6:                                #   Parent Loop BB4_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.d	$t8, $a2, $t3
	fldx.s	$fa1, $t8, $t7
	fcmp.ceq.s	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB4_5
# %bb.7:                                #   in Loop: Header=BB4_6 Depth=2
	ld.d	$t8, $t6, 0
	ld.d	$fp, $t5, 0
	slli.d	$s0, $t2, 2
	fstx.s	$fa1, $t8, $s0
	stx.w	$t4, $fp, $s0
	addi.w	$t2, $t2, 1
	b	.LBB4_5
.LBB4_8:                                # %.loopexit
	ld.d	$a2, $a1, 96
	ld.d	$a7, $a1, 104
	slli.d	$a3, $a3, 2
	fldx.s	$fa3, $a2, $a3
	xvst	$xr3, $sp, 32                   # 32-byte Folded Spill
	ld.d	$a2, $a1, 0
	fldx.s	$fa2, $a7, $a3
	ld.d	$a7, $a1, 112
	ld.d	$t0, $a1, 8
	fldx.s	$ft9, $a2, $a3
	ld.d	$a2, $a1, 16
	ld.d	$t1, $a1, 24
	fldx.s	$ft11, $t0, $a3
	ld.d	$t0, $a1, 32
	fldx.s	$ft10, $a2, $a3
	fldx.s	$ft8, $t1, $a3
	ld.d	$a2, $a1, 40
	fldx.s	$ft7, $t0, $a3
	ld.d	$t0, $a1, 48
	ld.d	$t1, $a1, 56
	fldx.s	$ft6, $a2, $a3
	ld.d	$a2, $a1, 64
	fldx.s	$ft5, $t0, $a3
	fldx.s	$ft4, $t1, $a3
	ld.d	$t0, $a1, 72
	fldx.s	$ft3, $a2, $a3
	ld.d	$a2, $a1, 80
	ld.d	$t1, $a1, 88
	fldx.s	$ft1, $t0, $a3
	ld.d	$t0, $a1, 120
	fldx.s	$ft2, $a2, $a3
	fldx.s	$ft0, $t1, $a3
	fldx.s	$fa7, $a7, $a3
	xvst	$xr7, $sp, 0                    # 32-byte Folded Spill
	fldx.s	$fa5, $t0, $a3
	ld.d	$a2, $a1, 128
	ld.d	$a7, $a1, 136
	ld.d	$t0, $a1, 144
	ld.d	$t1, $a1, 152
	fldx.s	$fa6, $a2, $a3
	fldx.s	$fa4, $a7, $a3
	fldx.s	$fa1, $t0, $a3
	fldx.s	$fa0, $t1, $a3
	xvreplve0.w	$xr22, $xr13
	xvreplve0.w	$xr21, $xr14
	xvreplve0.w	$xr23, $xr15
	pcalau12i	$a2, %got_pc_hi20(n_dis_consweight_multi)
	ld.d	$a2, $a2, %got_pc_lo12(n_dis_consweight_multi)
	xvreplve0.w	$xr24, $xr16
	xvreplve0.w	$xr20, $xr18
	xvreplve0.w	$xr25, $xr19
	xvld	$xr28, $a2, 0
	xvreplve0.w	$xr26, $xr17
	xvrepli.b	$xr27, 0
	xvld	$xr29, $a2, 104
	xvfmadd.s	$xr28, $xr28, $xr26, $xr27
	xvld	$xr30, $a2, 208
	xvld	$xr31, $a2, 312
	xvfmadd.s	$xr28, $xr29, $xr25, $xr28
	xvld	$xr29, $a2, 416
	xvfmadd.s	$xr28, $xr30, $xr20, $xr28
	xvfmadd.s	$xr28, $xr31, $xr24, $xr28
	xvld	$xr30, $a2, 520
	xvfmadd.s	$xr29, $xr29, $xr23, $xr28
	xvld	$xr28, $a2, 624
	xvld	$xr31, $a2, 32
	xvfmadd.s	$xr29, $xr30, $xr21, $xr29
	xvld	$xr30, $a2, 64
	xvfmadd.s	$xr28, $xr28, $xr22, $xr29
	xvfmadd.s	$xr29, $xr31, $xr26, $xr27
	xvld	$xr31, $a2, 136
	xvfmadd.s	$xr26, $xr30, $xr26, $xr27
	xvld	$xr27, $a2, 168
	xvreplve0.w	$xr30, $xr11
	xvfmadd.s	$xr29, $xr31, $xr25, $xr29
	xvld	$xr31, $a2, 728
	xvfmadd.s	$xr25, $xr27, $xr25, $xr26
	xvld	$xr26, $a2, 832
	xvreplve0.w	$xr27, $xr12
	xvfmadd.s	$xr28, $xr31, $xr27, $xr28
	xvld	$xr31, $a2, 240
	xvfmadd.s	$xr26, $xr26, $xr30, $xr28
	xvld	$xr28, $a2, 272
	ld.d	$a7, $a1, 160
	xvfmadd.s	$xr29, $xr31, $xr20, $xr29
	xvld	$xr31, $a2, 344
	xvfmadd.s	$xr25, $xr28, $xr20, $xr25
	xvld	$xr28, $a2, 376
	fldx.s	$ft12, $a7, $a3
	xvfmadd.s	$xr29, $xr31, $xr24, $xr29
	xvld	$xr31, $a2, 448
	xvfmadd.s	$xr24, $xr28, $xr24, $xr25
	xvld	$xr25, $a2, 480
	xvreplve0.w	$xr28, $xr10
	xvfmadd.s	$xr29, $xr31, $xr23, $xr29
	xvld	$xr31, $a2, 936
	xvfmadd.s	$xr23, $xr25, $xr23, $xr24
	xvld	$xr24, $a2, 1040
	xvreplve0.w	$xr25, $xr9
	xvfmadd.s	$xr26, $xr31, $xr25, $xr26
	xvld	$xr31, $a2, 552
	xvfmadd.s	$xr24, $xr24, $xr28, $xr26
	xvld	$xr26, $a2, 584
	ld.d	$a7, $a1, 168
	xvfmadd.s	$xr29, $xr31, $xr21, $xr29
	xvld	$xr31, $a2, 656
	xvfmadd.s	$xr23, $xr26, $xr21, $xr23
	xvld	$xr26, $a2, 688
	fldx.s	$ft13, $a7, $a3
	xvfmadd.s	$xr29, $xr31, $xr22, $xr29
	xvld	$xr31, $a2, 760
	xvfmadd.s	$xr22, $xr26, $xr22, $xr23
	xvld	$xr23, $a2, 792
	xvreplve0.w	$xr26, $xr8
	xvfmadd.s	$xr29, $xr31, $xr27, $xr29
	xvld	$xr31, $a2, 1144
	xvfmadd.s	$xr22, $xr23, $xr27, $xr22
	xvld	$xr23, $a2, 1248
	xvreplve0.w	$xr27, $xr3
	xvfmadd.s	$xr24, $xr31, $xr26, $xr24
	xvld	$xr31, $a2, 864
	xvfmadd.s	$xr23, $xr23, $xr27, $xr24
	xvld	$xr24, $a2, 896
	ld.d	$a7, $a1, 176
	xvfmadd.s	$xr29, $xr31, $xr30, $xr29
	xvld	$xr31, $a2, 968
	xvfmadd.s	$xr24, $xr24, $xr30, $xr22
	xvld	$xr30, $a2, 1000
	fldx.s	$ft14, $a7, $a3
	xvfmadd.s	$xr29, $xr31, $xr25, $xr29
	xvld	$xr31, $a2, 1072
	xvfmadd.s	$xr24, $xr30, $xr25, $xr24
	xvld	$xr25, $a2, 1104
	xvreplve0.w	$xr30, $xr7
	xvfmadd.s	$xr29, $xr31, $xr28, $xr29
	xvld	$xr31, $a2, 1352
	xvfmadd.s	$xr24, $xr25, $xr28, $xr24
	xvld	$xr25, $a2, 1456
	xvreplve0.w	$xr28, $xr2
	xvori.b	$xr7, $xr2, 0
	xvfmadd.s	$xr23, $xr31, $xr28, $xr23
	xvld	$xr31, $a2, 1176
	xvfmadd.s	$xr25, $xr25, $xr30, $xr23
	xvld	$xr23, $a2, 1208
	ld.d	$a7, $a1, 184
	xvfmadd.s	$xr29, $xr31, $xr26, $xr29
	xvld	$xr31, $a2, 1280
	xvfmadd.s	$xr24, $xr23, $xr26, $xr24
	xvld	$xr26, $a2, 1312
	fldx.s	$ft15, $a7, $a3
	xvfmadd.s	$xr29, $xr31, $xr27, $xr29
	xvld	$xr31, $a2, 1384
	xvfmadd.s	$xr24, $xr26, $xr27, $xr24
	xvld	$xr26, $a2, 1416
	xvreplve0.w	$xr27, $xr6
	xvfmadd.s	$xr29, $xr31, $xr28, $xr29
	xvld	$xr31, $a2, 1560
	xvfmadd.s	$xr24, $xr26, $xr28, $xr24
	xvld	$xr26, $a2, 1664
	xvreplve0.w	$xr28, $xr5
	xvfmadd.s	$xr25, $xr31, $xr28, $xr25
	xvld	$xr31, $a2, 1488
	xvfmadd.s	$xr25, $xr26, $xr27, $xr25
	xvld	$xr26, $a2, 1520
	ld.d	$a7, $a1, 192
	xvfmadd.s	$xr29, $xr31, $xr30, $xr29
	xvld	$xr31, $a2, 1592
	xvfmadd.s	$xr26, $xr26, $xr30, $xr24
	xvld	$xr30, $a2, 1624
	fldx.s	$fs0, $a7, $a3
	xvfmadd.s	$xr29, $xr31, $xr28, $xr29
	xvld	$xr31, $a2, 1696
	xvfmadd.s	$xr26, $xr30, $xr28, $xr26
	xvld	$xr28, $a2, 1728
	xvreplve0.w	$xr30, $xr1
	xvori.b	$xr3, $xr1, 0
	xvfmadd.s	$xr29, $xr31, $xr27, $xr29
	xvld	$xr31, $a2, 1768
	xvfmadd.s	$xr26, $xr28, $xr27, $xr26
	xvld	$xr27, $a2, 1872
	xvreplve0.w	$xr28, $xr4
	xvfmadd.s	$xr25, $xr31, $xr28, $xr25
	xvld	$xr31, $a2, 1800
	xvfmadd.s	$xr25, $xr27, $xr30, $xr25
	xvld	$xr27, $a2, 1832
	ld.d	$a1, $a1, 200
	xvfmadd.s	$xr29, $xr31, $xr28, $xr29
	xvld	$xr31, $a2, 1904
	xvfmadd.s	$xr26, $xr27, $xr28, $xr26
	xvld	$xr27, $a2, 1936
	xvreplve0.w	$xr28, $xr21
	xvfmadd.s	$xr29, $xr31, $xr30, $xr29
	xvld	$xr31, $a2, 1976
	xvfmadd.s	$xr26, $xr27, $xr30, $xr26
	xvreplve0.w	$xr27, $xr0
	xvori.b	$xr2, $xr0, 0
	xvld	$xr30, $a2, 2008
	xvfmadd.s	$xr25, $xr31, $xr27, $xr25
	xvld	$xr31, $a2, 2040
	ori	$a7, $zero, 2080
	xvfmadd.s	$xr29, $xr30, $xr27, $xr29
	xvldx	$xr30, $a2, $a7
	xvfmadd.s	$xr26, $xr31, $xr27, $xr26
	xvreplve0.w	$xr27, $xr20
	ori	$a7, $zero, 2184
	xvldx	$xr31, $a2, $a7
	xvfmadd.s	$xr25, $xr30, $xr27, $xr25
	ori	$a7, $zero, 2112
	xvldx	$xr30, $a2, $a7
	xvfmadd.s	$xr25, $xr31, $xr28, $xr25
	ori	$a7, $zero, 2144
	xvldx	$xr31, $a2, $a7
	xvfmadd.s	$xr29, $xr30, $xr27, $xr29
	xvreplve0.w	$xr30, $xr23
	ori	$a7, $zero, 2216
	xvfmadd.s	$xr26, $xr31, $xr27, $xr26
	xvldx	$xr27, $a2, $a7
	ori	$a7, $zero, 2248
	xvldx	$xr31, $a2, $a7
	ori	$a7, $zero, 2288
	xvfmadd.s	$xr27, $xr27, $xr28, $xr29
	xvldx	$xr29, $a2, $a7
	xvfmadd.s	$xr28, $xr31, $xr28, $xr26
	xvreplve0.w	$xr31, $xr22
	ori	$a7, $zero, 2392
	xvldx	$xr26, $a2, $a7
	xvfmadd.s	$xr25, $xr29, $xr31, $xr25
	ori	$a7, $zero, 2320
	xvldx	$xr29, $a2, $a7
	xvfmadd.s	$xr25, $xr26, $xr30, $xr25
	ori	$a7, $zero, 2352
	xvldx	$xr0, $a2, $a7
	xvfmadd.s	$xr27, $xr29, $xr31, $xr27
	fldx.s	$fs2, $a1, $a3
	ori	$a1, $zero, 2424
	xvfmadd.s	$xr0, $xr0, $xr31, $xr28
	xvldx	$xr28, $a2, $a1
	ori	$a1, $zero, 2456
	xvldx	$xr29, $a2, $a1
	ori	$a1, $zero, 2496
	xvfmadd.s	$xr27, $xr28, $xr30, $xr27
	xvldx	$xr28, $a2, $a1
	xvfmadd.s	$xr0, $xr29, $xr30, $xr0
	xvreplve0.w	$xr29, $xr24
	ori	$a1, $zero, 2528
	xvldx	$xr30, $a2, $a1
	xvfmadd.s	$xr25, $xr28, $xr29, $xr25
	ori	$a1, $zero, 2560
	xvldx	$xr28, $a2, $a1
	xvfmadd.s	$xr30, $xr30, $xr29, $xr27
	xvreplve0.w	$xr31, $xr26
	ori	$a1, $zero, 2600
	xvfmadd.s	$xr0, $xr28, $xr29, $xr0
	xvldx	$xr27, $a2, $a1
	ori	$a1, $zero, 2632
	xvldx	$xr28, $a2, $a1
	ori	$a1, $zero, 2664
	xvldx	$xr29, $a2, $a1
	xvfmadd.s	$xr27, $xr27, $xr31, $xr25
	xvfmadd.s	$xr28, $xr28, $xr31, $xr30
	fld.s	$fs6, $a2, 96
	xvfmadd.s	$xr29, $xr29, $xr31, $xr0
	fld.s	$fa0, $a2, 200
	movgr2fr.w	$fa1, $zero
	fmadd.s	$fs6, $fs6, $ft9, $fa1
	fld.s	$fs7, $a2, 100
	fmadd.s	$fa0, $fa0, $ft11, $fs6
	fld.s	$fs6, $a2, 204
	fld.s	$fs1, $a2, 304
	fmadd.s	$ft9, $fs7, $ft9, $fa1
	fld.s	$fs7, $a2, 308
	fmadd.s	$ft9, $fs6, $ft11, $ft9
	fmadd.s	$fa0, $fs1, $ft10, $fa0
	fld.s	$ft11, $a2, 408
	fmadd.s	$ft9, $fs7, $ft10, $ft9
	fld.s	$ft10, $a2, 412
	fld.s	$fs1, $a2, 512
	fmadd.s	$fa0, $ft11, $ft8, $fa0
	fld.s	$ft11, $a2, 516
	fmadd.s	$ft8, $ft10, $ft8, $ft9
	fmadd.s	$fa0, $fs1, $ft7, $fa0
	fld.s	$ft9, $a2, 616
	fmadd.s	$ft7, $ft11, $ft7, $ft8
	fld.s	$ft8, $a2, 620
	fld.s	$ft10, $a2, 720
	fmadd.s	$fa0, $ft9, $ft6, $fa0
	fld.s	$ft9, $a2, 724
	fmadd.s	$ft6, $ft8, $ft6, $ft7
	fmadd.s	$fa0, $ft10, $ft5, $fa0
	fld.s	$ft7, $a2, 824
	fmadd.s	$ft5, $ft9, $ft5, $ft6
	fld.s	$ft6, $a2, 828
	fld.s	$ft8, $a2, 928
	fmadd.s	$fa0, $ft7, $ft4, $fa0
	fld.s	$ft7, $a2, 932
	fmadd.s	$ft4, $ft6, $ft4, $ft5
	fmadd.s	$fa0, $ft8, $ft3, $fa0
	fld.s	$ft5, $a2, 1032
	fmadd.s	$ft3, $ft7, $ft3, $ft4
	fld.s	$ft4, $a2, 1036
	fld.s	$ft6, $a2, 1136
	fmadd.s	$fa0, $ft5, $ft1, $fa0
	fld.s	$ft5, $a2, 1140
	fmadd.s	$ft1, $ft4, $ft1, $ft3
	fmadd.s	$fa0, $ft6, $ft2, $fa0
	fld.s	$ft3, $a2, 1240
	fmadd.s	$ft1, $ft5, $ft2, $ft1
	fld.s	$ft2, $a2, 1244
	fld.s	$ft4, $a2, 1344
	fmadd.s	$fa0, $ft3, $ft0, $fa0
	fld.s	$ft3, $a2, 1348
	fmadd.s	$ft0, $ft2, $ft0, $ft1
	xvld	$xr10, $sp, 32                  # 32-byte Folded Reload
	fmadd.s	$fa0, $ft4, $ft2, $fa0
	fld.s	$ft1, $a2, 1448
	fmadd.s	$ft0, $ft3, $ft2, $ft0
	fld.s	$ft2, $a2, 1452
	fld.s	$ft3, $a2, 1552
	fmadd.s	$fa0, $ft1, $fa7, $fa0
	fld.s	$ft1, $a2, 1556
	fmadd.s	$ft0, $ft2, $fa7, $ft0
	xvld	$xr7, $sp, 0                    # 32-byte Folded Reload
	fmadd.s	$fa0, $ft3, $fa7, $fa0
	fld.s	$ft2, $a2, 1656
	fmadd.s	$fa7, $ft1, $fa7, $ft0
	fld.s	$ft0, $a2, 1660
	fld.s	$ft1, $a2, 1760
	fmadd.s	$fa0, $ft2, $fa5, $fa0
	fld.s	$ft2, $a2, 1764
	fmadd.s	$fa5, $ft0, $fa5, $fa7
	fmadd.s	$fa0, $ft1, $fa6, $fa0
	fld.s	$fa7, $a2, 1864
	fmadd.s	$fa5, $ft2, $fa6, $fa5
	fld.s	$fa6, $a2, 1968
	ori	$a1, $zero, 2072
	fldx.s	$ft0, $a2, $a1
	fmadd.s	$fa0, $fa7, $fa4, $fa0
	fmadd.s	$fa0, $fa6, $fa3, $fa0
	fld.s	$fa6, $a2, 1868
	fmadd.s	$fa0, $ft0, $fa2, $fa0
	ori	$a1, $zero, 2176
	fld.s	$fa7, $a2, 1972
	fmadd.s	$fa4, $fa6, $fa4, $fa5
	fldx.s	$fa5, $a2, $a1
	ori	$a1, $zero, 2280
	fmadd.s	$fa3, $fa7, $fa3, $fa4
	ori	$a3, $zero, 2076
	fldx.s	$fa4, $a2, $a3
	fldx.s	$fa6, $a2, $a1
	ori	$a1, $zero, 2180
	fldx.s	$fa7, $a2, $a1
	fmadd.s	$fa2, $fa4, $fa2, $fa3
	fmadd.s	$fa0, $fa5, $ft12, $fa0
	fmadd.s	$fa0, $fa6, $ft13, $fa0
	fmadd.s	$fa2, $fa7, $ft12, $fa2
	ori	$a1, $zero, 2284
	fldx.s	$fa3, $a2, $a1
	ori	$a1, $zero, 2384
	fldx.s	$fa4, $a2, $a1
	ori	$a1, $zero, 2488
	fmadd.s	$fa2, $fa3, $ft13, $fa2
	fldx.s	$fa3, $a2, $a1
	ori	$a1, $zero, 2388
	fldx.s	$fa5, $a2, $a1
	fmadd.s	$fa0, $fa4, $ft14, $fa0
	fmadd.s	$fa0, $fa3, $ft15, $fa0
	ori	$a1, $zero, 2592
	fmadd.s	$fa2, $fa5, $ft14, $fa2
	ori	$a3, $zero, 2492
	fldx.s	$fa3, $a2, $a3
	fldx.s	$fa4, $a2, $a1
	ori	$a1, $zero, 2696
	fldx.s	$fa5, $a2, $a1
	fmadd.s	$fa2, $fa3, $ft15, $fa2
	ori	$a1, $zero, 2596
	fldx.s	$fa3, $a2, $a1
	ori	$a1, $zero, 2700
	fldx.s	$fa6, $a2, $a1
	fmadd.s	$fa0, $fa4, $fs0, $fa0
	fmadd.s	$fa2, $fa3, $fs0, $fa2
	fmadd.s	$fa0, $fa5, $fs2, $fa0
	fmadd.s	$fa2, $fa6, $fs2, $fa2
	xvst	$xr27, $sp, 72
	xvst	$xr28, $sp, 104
	xvst	$xr29, $sp, 136
	fst.s	$fa0, $sp, 168
	fst.s	$fa2, $sp, 172
	beqz	$a4, .LBB4_14
# %bb.9:                                # %.lr.ph73.preheader
	addi.d	$a1, $sp, 72
	addi.w	$a2, $zero, -1
	b	.LBB4_11
	.p2align	4, , 16
.LBB4_10:                               # %._crit_edge
                                        #   in Loop: Header=BB4_11 Depth=1
	addi.w	$a4, $a4, -1
	addi.d	$a6, $a6, 8
	addi.d	$a5, $a5, 8
	addi.d	$a0, $a0, 4
	beqz	$a4, .LBB4_14
.LBB4_11:                               # %.lr.ph73
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_13 Depth 2
	ld.d	$a7, $a6, 0
	ld.wu	$a3, $a7, 0
	addi.w	$t0, $a3, 0
	st.w	$zero, $a0, 0
	bltz	$t0, .LBB4_10
# %bb.12:                               # %.lr.ph
                                        #   in Loop: Header=BB4_11 Depth=1
	ld.d	$t0, $a5, 0
	addi.d	$a7, $a7, 4
	fmov.s	$fa0, $fa1
	.p2align	4, , 16
.LBB4_13:                               #   Parent Loop BB4_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	slli.d	$a3, $a3, 2
	fldx.s	$fa2, $a3, $a1
	fld.s	$fa3, $t0, 0
	ld.wu	$a3, $a7, 0
	addi.d	$t0, $t0, 4
	fmadd.s	$fa0, $fa2, $fa3, $fa0
	fst.s	$fa0, $a0, 0
	addi.w	$t1, $a3, 0
	addi.d	$a7, $a7, 4
	blt	$a2, $t1, .LBB4_13
	b	.LBB4_10
.LBB4_14:                               # %._crit_edge74
	fld.d	$fs7, $sp, 176                  # 8-byte Folded Reload
	fld.d	$fs6, $sp, 184                  # 8-byte Folded Reload
	fld.d	$fs5, $sp, 192                  # 8-byte Folded Reload
	fld.d	$fs4, $sp, 200                  # 8-byte Folded Reload
	fld.d	$fs3, $sp, 208                  # 8-byte Folded Reload
	fld.d	$fs2, $sp, 216                  # 8-byte Folded Reload
	fld.d	$fs1, $sp, 224                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 232                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 240                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 248                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 256
	ret
.Lfunc_end4:
	.size	match_calc, .Lfunc_end4-match_calc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function Atracking
.LCPI5_0:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
.LCPI5_2:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0
.LCPI5_1:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	4                               # 0x4
	.word	5                               # 0x5
	.word	6                               # 0x6
	.word	7                               # 0x7
.LCPI5_3:
	.word	0                               # 0x0
	.word	4                               # 0x4
	.word	4                               # 0x4
	.word	4                               # 0x4
	.word	4                               # 0x4
	.word	4                               # 0x4
	.word	4                               # 0x4
	.word	4                               # 0x4
.LCPI5_4:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
	.dword	0                               # 0x0
	.dword	0                               # 0x0
	.text
	.p2align	5
	.type	Atracking,@function
Atracking:                              # @Atracking
# %bb.0:
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
	move	$s2, $a2
	ld.d	$s6, $sp, 128
	ld.d	$a2, $a2, 0
	move	$s4, $a7
	st.d	$a6, $sp, 24                    # 8-byte Folded Spill
	move	$fp, $a5
	move	$s5, $a4
	move	$s0, $a3
	move	$s3, $a1
	move	$s1, $a0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, 0
	move	$s8, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s7, $a0
	add.w	$a0, $a0, $s8
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	addi.w	$a0, $a0, 1
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(AllocateCharVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(AllocateCharVec)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(outgap)
	ld.d	$a1, $a1, %got_pc_lo12(outgap)
	ld.w	$a3, $a1, 0
	ori	$a2, $zero, 1
	addi.w	$a1, $s8, 0
	addi.w	$t0, $s7, 0
	beq	$a3, $a2, .LBB5_11
# %bb.1:
	fld.s	$fa0, $s3, 0
	blt	$a1, $a2, .LBB5_6
# %bb.2:                                # %.lr.ph
	slli.d	$a2, $s8, 3
	bstrpick.d	$a2, $a2, 33, 3
	slli.d	$a2, $a2, 3
	slli.d	$a3, $s7, 32
	srai.d	$a3, $a3, 30
	bstrpick.d	$a4, $s8, 30, 0
	move	$a5, $s8
	ld.d	$a7, $sp, 24                    # 8-byte Folded Reload
	b	.LBB5_4
	.p2align	4, , 16
.LBB5_3:                                #   in Loop: Header=BB5_4 Depth=1
	addi.d	$a5, $a5, -1
	addi.d	$a4, $a4, -1
	addi.d	$s3, $s3, 4
	beqz	$a4, .LBB5_6
.LBB5_4:                                # =>This Inner Loop Header: Depth=1
	fld.s	$fa1, $s3, 0
	fcmp.cult.s	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB5_3
# %bb.5:                                #   in Loop: Header=BB5_4 Depth=1
	ldx.d	$a6, $a7, $a2
	stx.w	$a5, $a6, $a3
	fmov.s	$fa0, $fa1
	b	.LBB5_3
.LBB5_6:                                # %.preheader2
	ori	$a2, $zero, 1
	blt	$t0, $a2, .LBB5_11
# %bb.7:                                # %.lr.ph7
	slli.d	$a2, $s8, 32
	srai.d	$a2, $a2, 29
	slli.d	$a3, $s7, 2
	bstrpick.d	$a3, $a3, 32, 2
	slli.d	$a3, $a3, 2
	bstrpick.d	$a4, $s7, 30, 0
	sub.d	$a5, $zero, $s7
	b	.LBB5_9
	.p2align	4, , 16
.LBB5_8:                                #   in Loop: Header=BB5_9 Depth=1
	addi.d	$s1, $s1, 4
	addi.d	$a4, $a4, -1
	addi.d	$a5, $a5, 1
	beqz	$a4, .LBB5_11
.LBB5_9:                                # =>This Inner Loop Header: Depth=1
	fld.s	$fa1, $s1, 0
	fcmp.cult.s	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB5_8
# %bb.10:                               #   in Loop: Header=BB5_9 Depth=1
	ld.d	$a6, $sp, 24                    # 8-byte Folded Reload
	ldx.d	$a6, $a6, $a2
	stx.w	$a5, $a6, $a3
	fmov.s	$fa0, $fa1
	b	.LBB5_8
.LBB5_11:                               # %.loopexit
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	bltz	$a1, .LBB5_19
# %bb.12:                               # %.lr.ph10.preheader
	addi.d	$a3, $s8, 1
	bstrpick.d	$a2, $a3, 31, 0
	ori	$a4, $zero, 4
	bgeu	$a2, $a4, .LBB5_14
# %bb.13:
	move	$a3, $zero
	b	.LBB5_17
.LBB5_14:                               # %vector.ph
	pcalau12i	$a4, %pc_hi20(.LCPI5_0)
	vld	$vr0, $a4, %pc_lo12(.LCPI5_0)
	bstrpick.d	$a3, $a3, 31, 2
	slli.d	$a3, $a3, 2
	addi.d	$a4, $ra, 16
	move	$a5, $a3
	.p2align	4, , 16
.LBB5_15:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr1, $a4, -16
	vld	$vr2, $a4, 0
	vshuf4i.w	$vr3, $vr0, 8
	vaddi.wu	$vr4, $vr3, 1
	vaddi.wu	$vr3, $vr3, 3
	vpickve2gr.w	$a6, $vr4, 0
	vpickve2gr.d	$a7, $vr1, 0
	st.w	$a6, $a7, 0
	vpickve2gr.w	$a6, $vr4, 1
	vpickve2gr.d	$a7, $vr1, 1
	st.w	$a6, $a7, 0
	vpickve2gr.w	$a6, $vr3, 0
	vpickve2gr.d	$a7, $vr2, 0
	st.w	$a6, $a7, 0
	vpickve2gr.w	$a6, $vr3, 1
	vpickve2gr.d	$a7, $vr2, 1
	st.w	$a6, $a7, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a5, $a5, -4
	addi.d	$a4, $a4, 32
	bnez	$a5, .LBB5_15
# %bb.16:                               # %middle.block
	beq	$a2, $a3, .LBB5_19
.LBB5_17:                               # %.lr.ph10.preheader82
	alsl.d	$a4, $a3, $ra, 3
	sub.d	$a2, $a2, $a3
	addi.d	$a3, $a3, 1
	.p2align	4, , 16
.LBB5_18:                               # %.lr.ph10
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a5, $a4, 0
	st.w	$a3, $a5, 0
	addi.d	$a4, $a4, 8
	addi.d	$a2, $a2, -1
	addi.d	$a3, $a3, 1
	bnez	$a2, .LBB5_18
.LBB5_19:                               # %.preheader1
	bltz	$t0, .LBB5_33
# %bb.20:                               # %iter.check
	ld.d	$a2, $ra, 0
	addi.d	$a5, $s7, 1
	bstrpick.d	$a3, $a5, 31, 0
	ori	$a4, $zero, 3
	bltu	$a4, $a3, .LBB5_22
# %bb.21:
	move	$a4, $zero
	b	.LBB5_31
.LBB5_22:                               # %vector.main.loop.iter.check
	ori	$a4, $zero, 16
	bgeu	$a3, $a4, .LBB5_24
# %bb.23:
	move	$a4, $zero
	b	.LBB5_28
.LBB5_24:                               # %vector.ph10
	bstrpick.d	$a4, $a5, 31, 4
	slli.d	$a4, $a4, 4
	pcalau12i	$a6, %pc_hi20(.LCPI5_1)
	xvld	$xr0, $a6, %pc_lo12(.LCPI5_1)
	addi.d	$a6, $a2, 32
	xvrepli.b	$xr1, -1
	xvrepli.w	$xr2, -9
	move	$a7, $a4
	.p2align	4, , 16
.LBB5_25:                               # %vector.body13
                                        # =>This Inner Loop Header: Depth=1
	xvxor.v	$xr3, $xr0, $xr1
	xvsub.w	$xr4, $xr2, $xr0
	xvst	$xr3, $a6, -32
	xvst	$xr4, $a6, 0
	xvaddi.wu	$xr0, $xr0, 16
	addi.d	$a7, $a7, -16
	addi.d	$a6, $a6, 64
	bnez	$a7, .LBB5_25
# %bb.26:                               # %middle.block19
	beq	$a3, $a4, .LBB5_33
# %bb.27:                               # %vec.epilog.iter.check
	andi	$a6, $a5, 12
	beqz	$a6, .LBB5_31
.LBB5_28:                               # %vec.epilog.ph
	move	$a6, $a4
	pcalau12i	$a4, %pc_hi20(.LCPI5_2)
	vld	$vr0, $a4, %pc_lo12(.LCPI5_2)
	bstrpick.d	$a4, $a5, 31, 2
	slli.d	$a4, $a4, 2
	vreplgr2vr.w	$vr1, $a6
	vor.v	$vr0, $vr1, $vr0
	sub.d	$a5, $a6, $a4
	alsl.d	$a6, $a6, $a2, 2
	vrepli.b	$vr1, -1
	.p2align	4, , 16
.LBB5_29:                               # %vec.epilog.vector.body
                                        # =>This Inner Loop Header: Depth=1
	vxor.v	$vr2, $vr0, $vr1
	vst	$vr2, $a6, 0
	vaddi.wu	$vr0, $vr0, 4
	addi.d	$a5, $a5, 4
	addi.d	$a6, $a6, 16
	bnez	$a5, .LBB5_29
# %bb.30:                               # %vec.epilog.middle.block
	beq	$a3, $a4, .LBB5_33
.LBB5_31:                               # %vec.epilog.scalar.ph.preheader
	nor	$a5, $a4, $zero
	alsl.d	$a2, $a4, $a2, 2
	sub.d	$a3, $a3, $a4
	.p2align	4, , 16
.LBB5_32:                               # %vec.epilog.scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	st.w	$a5, $a2, 0
	addi.d	$a5, $a5, -1
	addi.d	$a3, $a3, -1
	addi.d	$a2, $a2, 4
	bnez	$a3, .LBB5_32
.LBB5_33:                               # %._crit_edge
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	add.d	$a2, $a2, $a1
	add.d	$s3, $a2, $t0
	stx.b	$zero, $a2, $t0
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	add.d	$a1, $a0, $a1
	add.d	$s1, $a1, $t0
	stx.b	$zero, $a1, $t0
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	bltz	$a0, .LBB5_63
# %bb.34:                               # %.lr.ph41.preheader
	move	$t2, $zero
	addi.w	$a0, $zero, -1
	ori	$a1, $zero, 1
	ori	$a2, $zero, 111
	ori	$a3, $zero, 45
	ori	$a4, $zero, 16
	xvrepli.b	$xr0, 0
	vrepli.b	$vr1, 45
	vrepli.b	$vr2, 111
	ori	$a5, $zero, 32
	xvrepli.b	$xr3, 111
	xvrepli.b	$xr4, 45
	.p2align	4, , 16
.LBB5_35:                               # %.lr.ph41
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_54 Depth 2
                                        #     Child Loop BB5_58 Depth 2
                                        #     Child Loop BB5_43 Depth 2
                                        #     Child Loop BB5_47 Depth 2
	addi.w	$a6, $s8, 0
	slli.d	$a7, $a6, 3
	ldx.d	$a7, $ra, $a7
	addi.w	$t0, $s7, 0
	slli.d	$t1, $t0, 2
	ldx.w	$t1, $a7, $t1
	bge	$a0, $t1, .LBB5_38
# %bb.36:                               #   in Loop: Header=BB5_35 Depth=1
	beqz	$t1, .LBB5_49
# %bb.37:                               #   in Loop: Header=BB5_35 Depth=1
	sub.d	$a7, $s8, $t1
	b	.LBB5_50
	.p2align	4, , 16
.LBB5_38:                               #   in Loop: Header=BB5_35 Depth=1
	addi.d	$a7, $s8, -1
	nor	$t3, $a7, $zero
	add.w	$t3, $s8, $t3
	bnez	$t3, .LBB5_51
	.p2align	4, , 16
.LBB5_39:                               # %._crit_edge20
                                        #   in Loop: Header=BB5_35 Depth=1
	beq	$t1, $a0, .LBB5_60
.LBB5_40:                               # %.lr.ph29.preheader
                                        #   in Loop: Header=BB5_35 Depth=1
	addi.w	$t3, $zero, -17
	nor	$t6, $t1, $zero
	bltu	$t3, $t1, .LBB5_45
# %bb.41:                               # %.lr.ph29.preheader
                                        #   in Loop: Header=BB5_35 Depth=1
	sub.d	$t3, $s3, $s1
	bltu	$t3, $a4, .LBB5_45
# %bb.42:                               # %vector.ph34
                                        #   in Loop: Header=BB5_35 Depth=1
	bstrpick.d	$t3, $t6, 30, 4
	slli.d	$t7, $t3, 4
	sub.d	$t5, $t6, $t7
	sub.d	$t3, $s1, $t7
	sub.d	$t4, $s3, $t7
	xvinsgr2vr.w	$xr6, $t2, 0
	pcalau12i	$t2, %pc_hi20(.LCPI5_3)
	xvld	$xr5, $t2, %pc_lo12(.LCPI5_3)
	xvpermi.d	$xr6, $xr6, 68
	xvinsgr2vr.w	$xr7, $zero, 0
	xvpermi.d	$xr7, $xr7, 68
	xvshuf.w	$xr5, $xr7, $xr6
	addi.d	$t2, $s3, -8
	addi.d	$t8, $s1, -8
	move	$s1, $t7
	xvori.b	$xr6, $xr0, 0
	.p2align	4, , 16
.LBB5_43:                               # %vector.body37
                                        #   Parent Loop BB5_35 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vst	$vr1, $t2, -8
	vst	$vr2, $t8, -8
	xvaddi.wu	$xr5, $xr5, 1
	xvaddi.wu	$xr6, $xr6, 1
	addi.d	$s1, $s1, -16
	addi.d	$t2, $t2, -16
	addi.d	$t8, $t8, -16
	bnez	$s1, .LBB5_43
# %bb.44:                               # %middle.block43
                                        #   in Loop: Header=BB5_35 Depth=1
	pcalau12i	$t2, %pc_hi20(.LCPI5_4)
	xvld	$xr7, $t2, %pc_lo12(.LCPI5_4)
	xvadd.w	$xr5, $xr6, $xr5
	xvpermi.d	$xr6, $xr5, 78
	xvshuf.d	$xr7, $xr0, $xr6
	xvadd.w	$xr5, $xr5, $xr7
	xvpermi.d	$xr6, $xr5, 68
	xvrepl128vei.d	$xr6, $xr6, 1
	xvadd.w	$xr5, $xr5, $xr6
	xvpermi.d	$xr6, $xr5, 68
	xvrepl128vei.w	$xr6, $xr6, 1
	xvadd.w	$xr5, $xr5, $xr6
	xvpickve2gr.w	$t2, $xr5, 0
	bne	$t7, $t6, .LBB5_46
	b	.LBB5_48
	.p2align	4, , 16
.LBB5_45:                               #   in Loop: Header=BB5_35 Depth=1
	move	$t5, $t6
	move	$t3, $s1
	move	$t4, $s3
.LBB5_46:                               # %.lr.ph29.preheader72
                                        #   in Loop: Header=BB5_35 Depth=1
	add.d	$t2, $t2, $t5
	.p2align	4, , 16
.LBB5_47:                               # %.lr.ph29
                                        #   Parent Loop BB5_35 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.b	$a3, $t4, -1
	addi.d	$t4, $t4, -1
	st.b	$a2, $t3, -1
	addi.w	$t5, $t5, -1
	addi.d	$t3, $t3, -1
	bnez	$t5, .LBB5_47
.LBB5_48:                               # %._crit_edge30
                                        #   in Loop: Header=BB5_35 Depth=1
	bge	$a6, $a1, .LBB5_61
	b	.LBB5_68
	.p2align	4, , 16
.LBB5_49:                               #   in Loop: Header=BB5_35 Depth=1
	addi.d	$a7, $s8, -1
.LBB5_50:                               #   in Loop: Header=BB5_35 Depth=1
	move	$t1, $a0
	nor	$t3, $a7, $zero
	add.w	$t3, $s8, $t3
	beqz	$t3, .LBB5_39
.LBB5_51:                               # %.lr.ph19.preheader
                                        #   in Loop: Header=BB5_35 Depth=1
	bltu	$t3, $a5, .LBB5_56
# %bb.52:                               # %.lr.ph19.preheader
                                        #   in Loop: Header=BB5_35 Depth=1
	sub.d	$t4, $s3, $s1
	bltu	$t4, $a5, .LBB5_56
# %bb.53:                               # %vector.ph54
                                        #   in Loop: Header=BB5_35 Depth=1
	bstrpick.d	$t6, $t3, 31, 0
	bstrpick.d	$t4, $t6, 31, 5
	slli.d	$t7, $t4, 5
	sub.d	$t3, $t3, $t7
	sub.d	$t4, $s1, $t7
	sub.d	$t5, $s3, $t7
	addi.d	$t8, $s3, -32
	addi.d	$s1, $s1, -32
	move	$s3, $t7
	.p2align	4, , 16
.LBB5_54:                               # %vector.body58
                                        #   Parent Loop BB5_35 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvst	$xr3, $t8, 0
	xvst	$xr4, $s1, 0
	addi.d	$s3, $s3, -32
	addi.d	$t8, $t8, -32
	addi.d	$s1, $s1, -32
	bnez	$s3, .LBB5_54
# %bb.55:                               # %middle.block65
                                        #   in Loop: Header=BB5_35 Depth=1
	bne	$t7, $t6, .LBB5_57
	b	.LBB5_59
	.p2align	4, , 16
.LBB5_56:                               #   in Loop: Header=BB5_35 Depth=1
	move	$t4, $s1
	move	$t5, $s3
.LBB5_57:                               # %.lr.ph19.preheader73
                                        #   in Loop: Header=BB5_35 Depth=1
	move	$t6, $t4
	move	$t7, $t5
	.p2align	4, , 16
.LBB5_58:                               # %.lr.ph19
                                        #   Parent Loop BB5_35 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$t5, $t7, -1
	st.b	$a2, $t7, -1
	addi.d	$t4, $t6, -1
	addi.w	$t3, $t3, -1
	st.b	$a3, $t6, -1
	move	$t6, $t4
	move	$t7, $t5
	bnez	$t3, .LBB5_58
.LBB5_59:                               # %._crit_edge20.loopexit
                                        #   in Loop: Header=BB5_35 Depth=1
	add.d	$t2, $s8, $t2
	addi.d	$t2, $t2, -1
	sub.d	$t2, $t2, $a7
	move	$s3, $t5
	move	$s1, $t4
	bne	$t1, $a0, .LBB5_40
.LBB5_60:                               #   in Loop: Header=BB5_35 Depth=1
	move	$t4, $s3
	move	$t3, $s1
	blt	$a6, $a1, .LBB5_68
.LBB5_61:                               # %._crit_edge30
                                        #   in Loop: Header=BB5_35 Depth=1
	blt	$t0, $a1, .LBB5_68
# %bb.62:                               #   in Loop: Header=BB5_35 Depth=1
	add.d	$s7, $t1, $s7
	addi.d	$s3, $t4, -1
	st.b	$a2, $t4, -1
	addi.d	$s1, $t3, -1
	addi.w	$t2, $t2, 2
	st.b	$a2, $t3, -1
	move	$s8, $a7
	ld.d	$a6, $sp, 32                    # 8-byte Folded Reload
	bge	$a6, $t2, .LBB5_35
.LBB5_63:                               # %._crit_edge42
	ori	$s7, $zero, 1
	blt	$s4, $s7, .LBB5_65
	.p2align	4, , 16
.LBB5_64:                               # %.lr.ph50
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s5, 0
	ld.d	$a1, $s2, 0
	move	$a2, $s3
	pcaddu18i	$ra, %call36(gapireru)
	jirl	$ra, $ra, 0
	addi.d	$s2, $s2, 8
	addi.d	$s4, $s4, -1
	addi.d	$s5, $s5, 8
	bnez	$s4, .LBB5_64
.LBB5_65:                               # %.preheader
	blt	$s6, $s7, .LBB5_67
	.p2align	4, , 16
.LBB5_66:                               # %.lr.ph52
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 0
	ld.d	$a1, $s0, 0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(gapireru)
	jirl	$ra, $ra, 0
	addi.d	$s0, $s0, 8
	addi.d	$s6, $s6, -1
	addi.d	$fp, $fp, 8
	bnez	$s6, .LBB5_66
.LBB5_67:                               # %._crit_edge53
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
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
	pcaddu18i	$t8, %call36(free)
	jr	$t8
.LBB5_68:
	move	$s3, $t4
	move	$s1, $t3
	ori	$s7, $zero, 1
	bge	$s4, $s7, .LBB5_64
	b	.LBB5_65
.Lfunc_end5:
	.size	Atracking, .Lfunc_end5-Atracking
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function A__align_gapmap
.LCPI6_0:
	.dword	0x3ff4cccccccccccd              # double 1.3
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0
.LCPI6_1:
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	4                               # 0x4
	.word	5                               # 0x5
	.word	6                               # 0x6
	.word	7                               # 0x7
	.word	8                               # 0x8
.LCPI6_2:
	.dword	5                               # 0x5
	.dword	6                               # 0x6
	.dword	7                               # 0x7
	.dword	8                               # 0x8
.LCPI6_3:
	.dword	1                               # 0x1
	.dword	2                               # 0x2
	.dword	3                               # 0x3
	.dword	4                               # 0x4
.LCPI6_6:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	4                               # 0x4
	.word	5                               # 0x5
	.word	6                               # 0x6
	.word	7                               # 0x7
.LCPI6_8:
	.word	0                               # 0x0
	.word	4                               # 0x4
	.word	4                               # 0x4
	.word	4                               # 0x4
	.word	4                               # 0x4
	.word	4                               # 0x4
	.word	4                               # 0x4
	.word	4                               # 0x4
.LCPI6_9:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
	.dword	0                               # 0x0
	.dword	0                               # 0x0
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI6_4:
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	4                               # 0x4
.LCPI6_5:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
.LCPI6_7:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.text
	.globl	A__align_gapmap
	.p2align	5
	.type	A__align_gapmap,@function
A__align_gapmap:                        # @A__align_gapmap
# %bb.0:
	addi.d	$sp, $sp, -704
	st.d	$ra, $sp, 696                   # 8-byte Folded Spill
	st.d	$fp, $sp, 688                   # 8-byte Folded Spill
	st.d	$s0, $sp, 680                   # 8-byte Folded Spill
	st.d	$s1, $sp, 672                   # 8-byte Folded Spill
	st.d	$s2, $sp, 664                   # 8-byte Folded Spill
	st.d	$s3, $sp, 656                   # 8-byte Folded Spill
	st.d	$s4, $sp, 648                   # 8-byte Folded Spill
	st.d	$s5, $sp, 640                   # 8-byte Folded Spill
	st.d	$s6, $sp, 632                   # 8-byte Folded Spill
	st.d	$s7, $sp, 624                   # 8-byte Folded Spill
	st.d	$s8, $sp, 616                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 608                  # 8-byte Folded Spill
	addi.d	$fp, $sp, 704
	bstrins.d	$sp, $zero, 4, 0
	pcalau12i	$t0, %pc_hi20(A__align_gapmap.orlgth1)
	st.d	$t0, $sp, 216                   # 8-byte Folded Spill
	ld.w	$s6, $t0, %pc_lo12(A__align_gapmap.orlgth1)
	st.d	$a7, $sp, 264                   # 8-byte Folded Spill
	st.d	$a6, $sp, 24                    # 8-byte Folded Spill
	move	$s7, $a5
	st.d	$a4, $sp, 120                   # 8-byte Folded Spill
	st.d	$a3, $sp, 200                   # 8-byte Folded Spill
	st.d	$a2, $sp, 192                   # 8-byte Folded Spill
	move	$s1, $a1
	move	$s2, $a0
	pcalau12i	$a0, %pc_hi20(A__align_gapmap.mseq1)
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(A__align_gapmap.mseq2)
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	bnez	$s6, .LBB6_2
# %bb.1:
	pcalau12i	$a0, %got_pc_hi20(njob)
	ld.d	$s0, $a0, %got_pc_lo12(njob)
	ld.w	$a0, $s0, 0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(AllocateCharMtx)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s0, 0
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
	st.d	$a0, $a2, %pc_lo12(A__align_gapmap.mseq1)
	move	$a0, $a1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(AllocateCharMtx)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	ld.w	$s6, $a1, %pc_lo12(A__align_gapmap.orlgth1)
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(A__align_gapmap.mseq2)
.LBB6_2:
	st.d	$s2, $sp, 96                    # 8-byte Folded Spill
	ld.d	$a0, $s2, 0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	st.d	$s1, $sp, 72                    # 8-byte Folded Spill
	ld.d	$a1, $s1, 0
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	addi.w	$s3, $a0, 0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	pcalau12i	$s2, %pc_hi20(A__align_gapmap.orlgth2)
	ld.w	$s5, $s2, %pc_lo12(A__align_gapmap.orlgth2)
	st.d	$a0, $sp, 208                   # 8-byte Folded Spill
	addi.w	$s4, $a0, 0
	pcalau12i	$a0, %pc_hi20(A__align_gapmap.w1)
	st.d	$a0, $sp, 272                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(A__align_gapmap.w2)
	st.d	$a0, $sp, 256                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(A__align_gapmap.initverticalw)
	st.d	$a0, $sp, 248                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(A__align_gapmap.lastverticalw)
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(A__align_gapmap.m)
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(A__align_gapmap.mp)
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	pcalau12i	$s8, %pc_hi20(A__align_gapmap.mseq)
	pcalau12i	$a0, %pc_hi20(A__align_gapmap.ogcp1)
	st.d	$a0, $sp, 184                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(A__align_gapmap.ogcp2)
	st.d	$a0, $sp, 176                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(A__align_gapmap.fgcp1)
	st.d	$a0, $sp, 160                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(A__align_gapmap.fgcp2)
	st.d	$a0, $sp, 168                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(A__align_gapmap.cpmx1)
	st.d	$a0, $sp, 240                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(A__align_gapmap.cpmx2)
	st.d	$a0, $sp, 280                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(A__align_gapmap.floatwork)
	st.d	$a0, $sp, 232                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(A__align_gapmap.intwork)
	st.d	$a0, $sp, 224                   # 8-byte Folded Spill
	st.d	$s7, $sp, 40                    # 8-byte Folded Spill
	st.d	$s3, $sp, 48                    # 8-byte Folded Spill
	blt	$s6, $s3, .LBB6_4
# %bb.3:
	bge	$s5, $s4, .LBB6_8
.LBB6_4:
	ori	$a0, $zero, 1
	pcalau12i	$s1, %pc_hi20(A__align_gapmap.match)
	blt	$s6, $a0, .LBB6_7
# %bb.5:
	blt	$s5, $a0, .LBB6_7
# %bb.6:
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align_gapmap.w1)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align_gapmap.w2)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, %pc_lo12(A__align_gapmap.match)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 248                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align_gapmap.initverticalw)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align_gapmap.lastverticalw)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align_gapmap.m)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align_gapmap.mp)
	pcaddu18i	$ra, %call36(FreeIntVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s8, %pc_lo12(A__align_gapmap.mseq)
	pcaddu18i	$ra, %call36(FreeCharMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align_gapmap.ogcp1)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align_gapmap.ogcp2)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align_gapmap.fgcp1)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align_gapmap.fgcp2)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align_gapmap.cpmx1)
	pcaddu18i	$ra, %call36(FreeFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 280                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align_gapmap.cpmx2)
	pcaddu18i	$ra, %call36(FreeFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align_gapmap.floatwork)
	pcaddu18i	$ra, %call36(FreeFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align_gapmap.intwork)
	pcaddu18i	$ra, %call36(FreeIntMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	ld.w	$s6, $a0, %pc_lo12(A__align_gapmap.orlgth1)
	ld.w	$s5, $s2, %pc_lo12(A__align_gapmap.orlgth2)
.LBB6_7:
	pcalau12i	$a0, %pc_hi20(.LCPI6_0)
	fld.d	$fa0, $a0, %pc_lo12(.LCPI6_0)
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	movgr2fr.w	$fa1, $a0
	ffint.d.w	$fa1, $fa1
	fmul.d	$fa1, $fa1, $fa0
	ftintrz.w.d	$fa1, $fa1
	movfr2gr.s	$a0, $fa1
	slt	$a1, $a0, $s6
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s6, $a1
	or	$s6, $a1, $a0
	st.d	$s2, $sp, 136                   # 8-byte Folded Spill
	addi.w	$s2, $s6, 100
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	movgr2fr.w	$fa1, $a0
	ffint.d.w	$fa1, $fa1
	fmul.d	$fa0, $fa1, $fa0
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a0, $fa0
	slt	$a1, $a0, $s5
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s5, $a1
	or	$s5, $a1, $a0
	addi.w	$s3, $s5, 100
	addi.w	$s0, $s5, 102
	move	$a0, $s0
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 272                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(A__align_gapmap.w1)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(A__align_gapmap.w2)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $s1, %pc_lo12(A__align_gapmap.match)
	addi.w	$s7, $s6, 102
	move	$a0, $s7
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(A__align_gapmap.initverticalw)
	move	$a0, $s7
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(A__align_gapmap.lastverticalw)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(A__align_gapmap.m)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(AllocateIntVec)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(njob)
	ld.d	$a1, $a1, %got_pc_lo12(njob)
	ld.w	$a2, $a1, 0
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(A__align_gapmap.mp)
	add.w	$a1, $s3, $s2
	move	$a0, $a2
	pcaddu18i	$ra, %call36(AllocateCharMtx)
	jirl	$ra, $ra, 0
	st.d	$a0, $s8, %pc_lo12(A__align_gapmap.mseq)
	move	$a0, $s7
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 184                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(A__align_gapmap.ogcp1)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(A__align_gapmap.ogcp2)
	move	$a0, $s7
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(A__align_gapmap.fgcp1)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(A__align_gapmap.fgcp2)
	ori	$a0, $zero, 26
	move	$a1, $s7
	pcaddu18i	$ra, %call36(AllocateFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 240                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(A__align_gapmap.cpmx1)
	ori	$a0, $zero, 26
	move	$a1, $s0
	pcaddu18i	$ra, %call36(AllocateFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 280                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(A__align_gapmap.cpmx2)
	slt	$a0, $s3, $s2
	masknez	$a1, $s3, $a0
	maskeqz	$a0, $s2, $a0
	ld.d	$s2, $sp, 136                   # 8-byte Folded Reload
	or	$a0, $a0, $a1
	addi.w	$s0, $a0, 2
	ori	$a1, $zero, 26
	move	$a0, $s0
	pcaddu18i	$ra, %call36(AllocateFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(A__align_gapmap.floatwork)
	ori	$a1, $zero, 26
	move	$a0, $s0
	pcaddu18i	$ra, %call36(AllocateIntMtx)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(A__align_gapmap.intwork)
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	st.w	$s6, $a0, %pc_lo12(A__align_gapmap.orlgth1)
	st.w	$s5, $s2, %pc_lo12(A__align_gapmap.orlgth2)
	ld.d	$s7, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 48                    # 8-byte Folded Reload
.LBB6_8:
	ori	$a0, $zero, 1
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	blt	$a1, $a0, .LBB6_11
# %bb.9:                                # %.lr.ph
	ld.d	$a1, $s8, %pc_lo12(A__align_gapmap.mseq)
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(A__align_gapmap.mseq1)
	ld.d	$a3, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 96                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB6_10:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a5, $a1, 0
	st.d	$a5, $a2, 0
	ld.d	$a5, $a4, 0
	stx.b	$zero, $a5, $s3
	addi.d	$a4, $a4, 8
	addi.d	$a2, $a2, 8
	addi.d	$a3, $a3, -1
	addi.d	$a1, $a1, 8
	bnez	$a3, .LBB6_10
.LBB6_11:                               # %.preheader328
	blt	$s7, $a0, .LBB6_14
# %bb.12:                               # %.lr.ph335
	ld.d	$a1, $s8, %pc_lo12(A__align_gapmap.mseq)
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align_gapmap.mseq2)
	ld.d	$a2, $sp, 120                   # 8-byte Folded Reload
	alsl.d	$a1, $a2, $a1, 3
	move	$a2, $s7
	ld.d	$a3, $sp, 72                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB6_13:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a4, $a1, 0
	st.d	$a4, $a0, 0
	ld.d	$a4, $a3, 0
	stx.b	$zero, $a4, $s4
	addi.d	$a1, $a1, 8
	addi.d	$a3, $a3, 8
	addi.d	$a2, $a2, -1
	addi.d	$a0, $a0, 8
	bnez	$a2, .LBB6_13
.LBB6_14:                               # %._crit_edge
	pcalau12i	$a0, %got_pc_hi20(commonAlloc1)
	ld.d	$s0, $a0, %got_pc_lo12(commonAlloc1)
	pcalau12i	$a0, %got_pc_hi20(commonAlloc2)
	ld.d	$s1, $a0, %got_pc_lo12(commonAlloc2)
	ld.w	$a1, $s0, 0
	ld.w	$a0, $s1, 0
	blt	$a1, $s6, .LBB6_17
# %bb.15:                               # %._crit_edge
	blt	$a0, $s5, .LBB6_17
# %bb.16:                               # %._crit_edge471
	pcalau12i	$a0, %got_pc_hi20(commonIP)
	ld.d	$a0, $a0, %got_pc_lo12(commonIP)
	ld.d	$a0, $a0, 0
	ld.d	$s8, $sp, 72                    # 8-byte Folded Reload
	b	.LBB6_22
.LBB6_17:
	beqz	$a1, .LBB6_20
# %bb.18:
	ld.d	$s8, $sp, 72                    # 8-byte Folded Reload
	beqz	$a0, .LBB6_21
# %bb.19:
	pcalau12i	$a0, %got_pc_hi20(commonIP)
	ld.d	$a0, $a0, %got_pc_lo12(commonIP)
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(FreeIntMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	ld.w	$s6, $a0, %pc_lo12(A__align_gapmap.orlgth1)
	ld.w	$a1, $s0, 0
	ld.w	$s5, $s2, %pc_lo12(A__align_gapmap.orlgth2)
	ld.w	$a0, $s1, 0
	b	.LBB6_21
.LBB6_20:
	ld.d	$s8, $sp, 72                    # 8-byte Folded Reload
.LBB6_21:
	slt	$a2, $a1, $s6
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $s6, $a2
	or	$s2, $a2, $a1
	slt	$a1, $a0, $s5
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s5, $a1
	or	$s3, $a1, $a0
	addi.w	$a0, $s2, 10
	addi.w	$a1, $s3, 10
	pcaddu18i	$ra, %call36(AllocateIntMtx)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(commonIP)
	ld.d	$a1, $a1, %got_pc_lo12(commonIP)
	st.d	$a0, $a1, 0
	st.w	$s2, $s0, 0
	st.w	$s3, $s1, 0
	ld.d	$s3, $sp, 48                    # 8-byte Folded Reload
.LBB6_22:
	ld.d	$s5, $sp, 240                   # 8-byte Folded Reload
	ld.d	$s0, $s5, %pc_lo12(A__align_gapmap.cpmx1)
	ld.d	$s2, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a1, $s2, 0
	pcalau12i	$a2, %pc_hi20(A__align_gapmap.ijp)
	st.d	$a2, $sp, 32                    # 8-byte Folded Spill
	st.d	$a0, $a2, %pc_lo12(A__align_gapmap.ijp)
	move	$a0, $a1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.w	$a3, $a0, 0
	move	$a0, $s2
	move	$a1, $s0
	ld.d	$s6, $sp, 192                   # 8-byte Folded Reload
	move	$a2, $s6
	ld.d	$s1, $sp, 120                   # 8-byte Folded Reload
	move	$a4, $s1
	pcaddu18i	$ra, %call36(cpmx_calc_new)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 280                   # 8-byte Folded Reload
	ld.d	$s0, $a0, %pc_lo12(A__align_gapmap.cpmx2)
	ld.d	$a0, $s8, 0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.w	$a3, $a0, 0
	move	$a0, $s8
	move	$a1, $s0
	ld.d	$s0, $sp, 200                   # 8-byte Folded Reload
	move	$a2, $s0
	move	$a4, $s7
	pcaddu18i	$ra, %call36(cpmx_calc_new)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align_gapmap.ogcp1)
	move	$a1, $s1
	move	$a2, $s2
	move	$a3, $s6
	move	$a4, $s3
	pcaddu18i	$ra, %call36(st_OpeningGapCount)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align_gapmap.ogcp2)
	move	$a1, $s7
	move	$a2, $s8
	move	$a3, $s0
	move	$a4, $s4
	pcaddu18i	$ra, %call36(st_OpeningGapCount)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align_gapmap.fgcp1)
	move	$a1, $s1
	move	$a2, $s2
	move	$a3, $s6
	move	$a4, $s3
	pcaddu18i	$ra, %call36(st_FinalGapCount)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align_gapmap.fgcp2)
	move	$a1, $s7
	move	$a2, $s8
	move	$a3, $s0
	move	$a4, $s4
	pcaddu18i	$ra, %call36(st_FinalGapCount)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	ld.d	$s6, $sp, 56                    # 8-byte Folded Reload
	blt	$s3, $a0, .LBB6_29
# %bb.23:                               # %.lr.ph338
	ld.d	$a1, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(A__align_gapmap.ogcp1)
	ld.d	$a2, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a3, $a2, %pc_lo12(A__align_gapmap.fgcp1)
	bstrpick.d	$a2, $s6, 30, 0
	ori	$a4, $zero, 8
	bltu	$a2, $a4, .LBB6_26
# %bb.24:                               # %vector.memcheck
	alsl.d	$a4, $a2, $a3, 2
	bgeu	$a1, $a4, .LBB6_137
# %bb.25:                               # %vector.memcheck
	alsl.d	$a4, $a2, $a1, 2
	bgeu	$a3, $a4, .LBB6_137
.LBB6_26:
	move	$a4, $zero
.LBB6_27:                               # %scalar.ph.preheader
	alsl.d	$a3, $a4, $a3, 2
	alsl.d	$a1, $a4, $a1, 2
	sub.d	$a2, $a2, $a4
	vldi	$vr0, -912
	vldi	$vr1, -928
	.p2align	4, , 16
.LBB6_28:                               # %scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa2, $a1, 0
	fcvt.d.s	$fa2, $fa2
	fsub.d	$fa2, $fa0, $fa2
	fmul.d	$fa2, $fa2, $fa1
	fcvt.s.d	$fa2, $fa2
	fst.s	$fa2, $a1, 0
	fld.s	$fa2, $a3, 0
	fcvt.d.s	$fa2, $fa2
	fsub.d	$fa2, $fa0, $fa2
	fmul.d	$fa2, $fa2, $fa1
	fcvt.s.d	$fa2, $fa2
	fst.s	$fa2, $a3, 0
	addi.d	$a3, $a3, 4
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, 4
	bnez	$a2, .LBB6_28
.LBB6_29:                               # %.preheader327
	blt	$s4, $a0, .LBB6_36
# %bb.30:                               # %.lr.ph340
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align_gapmap.ogcp2)
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a2, $a1, %pc_lo12(A__align_gapmap.fgcp2)
	ld.d	$a1, $sp, 208                   # 8-byte Folded Reload
	bstrpick.d	$a1, $a1, 30, 0
	ori	$a3, $zero, 8
	bltu	$a1, $a3, .LBB6_33
# %bb.31:                               # %vector.memcheck501
	alsl.d	$a3, $a1, $a2, 2
	bgeu	$a0, $a3, .LBB6_140
# %bb.32:                               # %vector.memcheck501
	alsl.d	$a3, $a1, $a0, 2
	bgeu	$a2, $a3, .LBB6_140
.LBB6_33:
	move	$a3, $zero
.LBB6_34:                               # %scalar.ph507.preheader
	alsl.d	$a2, $a3, $a2, 2
	alsl.d	$a0, $a3, $a0, 2
	sub.d	$a1, $a1, $a3
	vldi	$vr0, -912
	vldi	$vr1, -928
	.p2align	4, , 16
.LBB6_35:                               # %scalar.ph507
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa2, $a0, 0
	fcvt.d.s	$fa2, $fa2
	fsub.d	$fa2, $fa0, $fa2
	fmul.d	$fa2, $fa2, $fa1
	fcvt.s.d	$fa2, $fa2
	fst.s	$fa2, $a0, 0
	fld.s	$fa2, $a2, 0
	fcvt.d.s	$fa2, $fa2
	fsub.d	$fa2, $fa0, $fa2
	fmul.d	$fa2, $fa2, $fa1
	fcvt.s.d	$fa2, $fa2
	fst.s	$fa2, $a2, 0
	addi.d	$a2, $a2, 4
	addi.d	$a1, $a1, -1
	addi.d	$a0, $a0, 4
	bnez	$a1, .LBB6_35
.LBB6_36:                               # %._crit_edge341
	ld.d	$a0, $fp, 16
	st.d	$a0, $sp, 200                   # 8-byte Folded Spill
	ld.d	$a0, $fp, 8
	st.d	$a0, $sp, 192                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	ld.d	$s0, $a0, %pc_lo12(A__align_gapmap.w1)
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align_gapmap.w2)
	st.d	$a0, $sp, 272                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 248                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align_gapmap.initverticalw)
	ld.d	$a1, $sp, 280                   # 8-byte Folded Reload
	ld.d	$s7, $a1, %pc_lo12(A__align_gapmap.cpmx2)
	ld.d	$s1, $s5, %pc_lo12(A__align_gapmap.cpmx1)
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	ld.d	$s2, $a1, %pc_lo12(A__align_gapmap.floatwork)
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	ld.d	$s5, $a1, %pc_lo12(A__align_gapmap.intwork)
	ori	$a7, $zero, 1
	st.d	$a0, $sp, 280                   # 8-byte Folded Spill
	move	$a1, $s7
	move	$a2, $s1
	move	$a3, $zero
	move	$a4, $s3
	move	$a5, $s2
	move	$a6, $s5
	pcaddu18i	$ra, %call36(match_calc)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(impmtx)
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	slli.d	$a0, $a0, 32
	st.d	$a0, $sp, 232                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	st.d	$a1, $sp, 104                   # 8-byte Folded Spill
	st.d	$s1, $sp, 256                   # 8-byte Folded Spill
	st.d	$s2, $sp, 248                   # 8-byte Folded Spill
	beqz	$a0, .LBB6_43
# %bb.37:
	ld.d	$s1, $a1, %pc_lo12(impmtx)
	beqz	$s3, .LBB6_40
# %bb.38:                               # %.lr.ph.i
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	slli.d	$a0, $a0, 2
	ld.d	$a3, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 280                   # 8-byte Folded Reload
	move	$a1, $s6
	.p2align	4, , 16
.LBB6_39:                               # =>This Inner Loop Header: Depth=1
	ld.w	$a4, $a3, 0
	slli.d	$a4, $a4, 3
	ldx.d	$a4, $s1, $a4
	fldx.s	$fa0, $a4, $a0
	fld.s	$fa1, $a2, 0
	addi.w	$a1, $a1, -1
	addi.d	$a3, $a3, 4
	addi.d	$a4, $a2, 4
	fadd.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $a2, 0
	move	$a2, $a4
	bnez	$a1, .LBB6_39
.LBB6_40:                               # %imp_match_out_vead_tate_gapmap.exit
	ori	$a7, $zero, 1
	ori	$s2, $zero, 1
	move	$a0, $s0
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	move	$a2, $s7
	move	$a3, $zero
	move	$a4, $s4
	ld.d	$a5, $sp, 248                   # 8-byte Folded Reload
	move	$a6, $s5
	pcaddu18i	$ra, %call36(match_calc)
	jirl	$ra, $ra, 0
	beqz	$s4, .LBB6_52
# %bb.41:                               # %.lr.ph.i309.preheader
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $s1, $a0
	ld.d	$a3, $sp, 200                   # 8-byte Folded Reload
	move	$a2, $s0
	ld.d	$a1, $sp, 208                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB6_42:                               # %.lr.ph.i309
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a4, $a3, 0
	slli.d	$a4, $a4, 2
	fldx.s	$fa0, $a0, $a4
	fld.s	$fa1, $a2, 0
	addi.w	$a1, $a1, -1
	addi.d	$a3, $a3, 4
	addi.d	$a4, $a2, 4
	fadd.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $a2, 0
	move	$a2, $a4
	bnez	$a1, .LBB6_42
	b	.LBB6_44
.LBB6_43:                               # %.critedge
	ori	$a7, $zero, 1
	move	$a0, $s0
	move	$a1, $s1
	move	$a2, $s7
	move	$a3, $zero
	move	$a4, $s4
	move	$a5, $s2
	move	$a6, $s5
	pcaddu18i	$ra, %call36(match_calc)
	jirl	$ra, $ra, 0
.LBB6_44:                               # %imp_match_out_vead_gapmap.exit
	pcalau12i	$a0, %got_pc_hi20(outgap)
	ld.d	$a0, $a0, %got_pc_lo12(outgap)
	ld.w	$a1, $a0, 0
	ori	$a0, $zero, 1
	beq	$a1, $a0, .LBB6_53
# %bb.45:                               # %.preheader326
	blt	$s4, $a0, .LBB6_61
# %bb.46:                               # %.lr.ph344
	pcalau12i	$a0, %got_pc_hi20(offset)
	ld.d	$a0, $a0, %got_pc_lo12(offset)
	ld.w	$a0, $a0, 0
	ld.d	$a1, $sp, 208                   # 8-byte Folded Reload
	addi.d	$a1, $a1, 1
	bstrpick.d	$a1, $a1, 31, 0
	addi.d	$a2, $a1, -1
	ori	$a4, $zero, 8
	ori	$a3, $zero, 1
	bltu	$a2, $a4, .LBB6_50
# %bb.47:                               # %vector.ph522
	move	$a4, $a2
	bstrins.d	$a4, $zero, 2, 0
	ori	$a5, $zero, 1
	move	$a3, $a2
	bstrins.d	$a3, $a5, 2, 0
	xvreplgr2vr.w	$xr0, $a0
	pcalau12i	$a5, %pc_hi20(.LCPI6_1)
	xvld	$xr1, $a5, %pc_lo12(.LCPI6_1)
	addi.d	$a5, $s0, 4
	lu52i.d	$a6, $zero, -1026
	xvreplgr2vr.d	$xr2, $a6
	move	$a6, $a4
	.p2align	4, , 16
.LBB6_48:                               # %vector.body525
                                        # =>This Inner Loop Header: Depth=1
	xvmul.w	$xr3, $xr0, $xr1
	xvst	$xr3, $sp, 416
	vld	$vr3, $sp, 432
	xvld	$xr4, $a5, 0
	vext2xv.d.w	$xr3, $xr3
	vld	$vr5, $sp, 416
	xvffint.d.l	$xr3, $xr3
	xvst	$xr4, $sp, 448
	vld	$vr4, $sp, 448
	vext2xv.d.w	$xr5, $xr5
	xvffint.d.l	$xr5, $xr5
	xvfmul.d	$xr5, $xr5, $xr2
	vreplvei.w	$vr6, $vr4, 0
	fcvt.d.s	$fa6, $fa6
	xvfmul.d	$xr3, $xr3, $xr2
	movfr2gr.d	$a7, $fa6
	vreplvei.w	$vr6, $vr4, 1
	fcvt.d.s	$fa6, $fa6
	xvinsgr2vr.d	$xr7, $a7, 0
	movfr2gr.d	$a7, $fa6
	vreplvei.w	$vr6, $vr4, 2
	fcvt.d.s	$fa6, $fa6
	xvinsgr2vr.d	$xr7, $a7, 1
	movfr2gr.d	$a7, $fa6
	vld	$vr6, $sp, 464
	vreplvei.w	$vr4, $vr4, 3
	fcvt.d.s	$fa4, $fa4
	xvinsgr2vr.d	$xr7, $a7, 2
	movfr2gr.d	$a7, $fa4
	vreplvei.w	$vr4, $vr6, 0
	fcvt.d.s	$fa4, $fa4
	xvinsgr2vr.d	$xr7, $a7, 3
	movfr2gr.d	$a7, $fa4
	vreplvei.w	$vr4, $vr6, 1
	fcvt.d.s	$fa4, $fa4
	xvinsgr2vr.d	$xr8, $a7, 0
	movfr2gr.d	$a7, $fa4
	vreplvei.w	$vr4, $vr6, 2
	fcvt.d.s	$fa4, $fa4
	xvinsgr2vr.d	$xr8, $a7, 1
	movfr2gr.d	$a7, $fa4
	vreplvei.w	$vr4, $vr6, 3
	fcvt.d.s	$fa4, $fa4
	xvinsgr2vr.d	$xr8, $a7, 2
	movfr2gr.d	$a7, $fa4
	xvinsgr2vr.d	$xr8, $a7, 3
	xvfadd.d	$xr3, $xr8, $xr3
	xvfadd.d	$xr4, $xr7, $xr5
	xvpickve2gr.d	$a7, $xr4, 0
	movgr2fr.d	$fa5, $a7
	fcvt.s.d	$fa5, $fa5
	xvpickve2gr.d	$a7, $xr4, 1
	movgr2fr.d	$fa6, $a7
	movfr2gr.s	$a7, $fa5
	fcvt.s.d	$fa5, $fa6
	xvinsgr2vr.w	$xr6, $a7, 0
	movfr2gr.s	$a7, $fa5
	xvinsgr2vr.w	$xr6, $a7, 1
	xvpickve2gr.d	$a7, $xr4, 2
	movgr2fr.d	$fa5, $a7
	fcvt.s.d	$fa5, $fa5
	xvpickve2gr.d	$a7, $xr4, 3
	movgr2fr.d	$fa4, $a7
	movfr2gr.s	$a7, $fa5
	fcvt.s.d	$fa4, $fa4
	xvinsgr2vr.w	$xr6, $a7, 2
	movfr2gr.s	$a7, $fa4
	xvinsgr2vr.w	$xr6, $a7, 3
	xvpickve2gr.d	$a7, $xr3, 0
	movgr2fr.d	$fa4, $a7
	fcvt.s.d	$fa4, $fa4
	xvpickve2gr.d	$a7, $xr3, 1
	movgr2fr.d	$fa5, $a7
	movfr2gr.s	$a7, $fa4
	fcvt.s.d	$fa4, $fa5
	xvinsgr2vr.w	$xr6, $a7, 4
	movfr2gr.s	$a7, $fa4
	xvinsgr2vr.w	$xr6, $a7, 5
	xvpickve2gr.d	$a7, $xr3, 2
	movgr2fr.d	$fa4, $a7
	fcvt.s.d	$fa4, $fa4
	xvpickve2gr.d	$a7, $xr3, 3
	movgr2fr.d	$fa3, $a7
	movfr2gr.s	$a7, $fa4
	fcvt.s.d	$fa3, $fa3
	xvinsgr2vr.w	$xr6, $a7, 6
	movfr2gr.s	$a7, $fa3
	xvinsgr2vr.w	$xr6, $a7, 7
	xvst	$xr6, $a5, 0
	xvaddi.wu	$xr1, $xr1, 8
	addi.d	$a6, $a6, -8
	addi.d	$a5, $a5, 32
	bnez	$a6, .LBB6_48
# %bb.49:                               # %middle.block529
	beq	$a2, $a4, .LBB6_61
.LBB6_50:                               # %scalar.ph520.preheader
	mul.d	$a2, $a0, $a3
	alsl.d	$a4, $a3, $s0, 2
	sub.d	$a1, $a1, $a3
	vldi	$vr0, -800
	.p2align	4, , 16
.LBB6_51:                               # %scalar.ph520
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa1, $a4, 0
	movgr2fr.w	$fa2, $a2
	ffint.d.w	$fa2, $fa2
	fmul.d	$fa2, $fa2, $fa0
	fcvt.d.s	$fa1, $fa1
	fadd.d	$fa1, $fa1, $fa2
	fcvt.s.d	$fa1, $fa1
	fst.s	$fa1, $a4, 0
	add.w	$a2, $a2, $a0
	addi.d	$a1, $a1, -1
	addi.d	$a4, $a4, 4
	bnez	$a1, .LBB6_51
	b	.LBB6_61
.LBB6_52:                               # %imp_match_out_vead_gapmap.exit.thread
	pcalau12i	$a0, %got_pc_hi20(outgap)
	ld.d	$a0, $a0, %got_pc_lo12(outgap)
	ld.w	$a0, $a0, 0
	bne	$a0, $s2, .LBB6_61
.LBB6_53:                               # %.preheader323
	ori	$a4, $zero, 1
	blt	$s3, $a4, .LBB6_57
# %bb.54:                               # %iter.check
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align_gapmap.ogcp1)
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(A__align_gapmap.fgcp1)
	addi.d	$a2, $s6, 1
	bstrpick.d	$a2, $a2, 31, 0
	addi.d	$a3, $a2, -1
	ori	$a5, $zero, 3
	bltu	$a5, $a3, .LBB6_143
.LBB6_55:                               # %vec.epilog.scalar.ph.preheader
	ld.d	$a3, $sp, 280                   # 8-byte Folded Reload
	alsl.d	$a3, $a4, $a3, 2
	alsl.d	$a1, $a4, $a1, 2
	addi.d	$a1, $a1, -4
	sub.d	$a2, $a2, $a4
	.p2align	4, , 16
.LBB6_56:                               # %vec.epilog.scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $a0, 0
	fld.s	$fa1, $a1, 0
	fld.s	$fa2, $a3, 0
	fadd.s	$fa0, $fa0, $fa1
	fadd.s	$fa0, $fa2, $fa0
	fst.s	$fa0, $a3, 0
	addi.d	$a3, $a3, 4
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, 4
	bnez	$a2, .LBB6_56
.LBB6_57:                               # %.preheader321
	ori	$a4, $zero, 1
	blt	$s4, $a4, .LBB6_73
# %bb.58:                               # %iter.check604
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align_gapmap.ogcp2)
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(A__align_gapmap.fgcp2)
	ld.d	$a2, $sp, 208                   # 8-byte Folded Reload
	addi.d	$a2, $a2, 1
	bstrpick.d	$a2, $a2, 31, 0
	addi.d	$a3, $a2, -1
	ori	$a5, $zero, 3
	bltu	$a5, $a3, .LBB6_147
.LBB6_59:                               # %vec.epilog.scalar.ph622.preheader
	alsl.d	$a3, $a4, $s0, 2
	alsl.d	$a1, $a4, $a1, 2
	addi.d	$a1, $a1, -4
	sub.d	$a2, $a2, $a4
	.p2align	4, , 16
.LBB6_60:                               # %vec.epilog.scalar.ph622
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $a0, 0
	fld.s	$fa1, $a1, 0
	fld.s	$fa2, $a3, 0
	fadd.s	$fa0, $fa0, $fa1
	fadd.s	$fa0, $fa2, $fa0
	fst.s	$fa0, $a3, 0
	addi.d	$a3, $a3, 4
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, 4
	bnez	$a2, .LBB6_60
	b	.LBB6_69
.LBB6_61:                               # %.preheader324
	ori	$a1, $zero, 1
	blt	$s3, $a1, .LBB6_68
# %bb.62:                               # %.lr.ph347
	pcalau12i	$a0, %got_pc_hi20(offset)
	ld.d	$a0, $a0, %got_pc_lo12(offset)
	ld.w	$a0, $a0, 0
	addi.d	$a2, $s6, 1
	bstrpick.d	$a2, $a2, 31, 0
	addi.d	$a3, $a2, -1
	ori	$a4, $zero, 8
	bltu	$a3, $a4, .LBB6_66
# %bb.63:                               # %vector.ph534
	move	$a4, $a3
	bstrins.d	$a4, $zero, 2, 0
	ori	$a5, $zero, 1
	move	$a1, $a3
	bstrins.d	$a1, $a5, 2, 0
	xvreplgr2vr.w	$xr0, $a0
	pcalau12i	$a5, %pc_hi20(.LCPI6_1)
	xvld	$xr1, $a5, %pc_lo12(.LCPI6_1)
	ld.d	$a5, $sp, 280                   # 8-byte Folded Reload
	addi.d	$a5, $a5, 4
	lu52i.d	$a6, $zero, -1026
	xvreplgr2vr.d	$xr2, $a6
	move	$a6, $a4
	.p2align	4, , 16
.LBB6_64:                               # %vector.body539
                                        # =>This Inner Loop Header: Depth=1
	xvmul.w	$xr3, $xr0, $xr1
	xvst	$xr3, $sp, 352
	vld	$vr3, $sp, 368
	xvld	$xr4, $a5, 0
	vext2xv.d.w	$xr3, $xr3
	vld	$vr5, $sp, 352
	xvffint.d.l	$xr3, $xr3
	xvst	$xr4, $sp, 384
	vld	$vr4, $sp, 384
	vext2xv.d.w	$xr5, $xr5
	xvffint.d.l	$xr5, $xr5
	xvfmul.d	$xr5, $xr5, $xr2
	vreplvei.w	$vr6, $vr4, 0
	fcvt.d.s	$fa6, $fa6
	xvfmul.d	$xr3, $xr3, $xr2
	movfr2gr.d	$a7, $fa6
	vreplvei.w	$vr6, $vr4, 1
	fcvt.d.s	$fa6, $fa6
	xvinsgr2vr.d	$xr7, $a7, 0
	movfr2gr.d	$a7, $fa6
	vreplvei.w	$vr6, $vr4, 2
	fcvt.d.s	$fa6, $fa6
	xvinsgr2vr.d	$xr7, $a7, 1
	movfr2gr.d	$a7, $fa6
	vld	$vr6, $sp, 400
	vreplvei.w	$vr4, $vr4, 3
	fcvt.d.s	$fa4, $fa4
	xvinsgr2vr.d	$xr7, $a7, 2
	movfr2gr.d	$a7, $fa4
	vreplvei.w	$vr4, $vr6, 0
	fcvt.d.s	$fa4, $fa4
	xvinsgr2vr.d	$xr7, $a7, 3
	movfr2gr.d	$a7, $fa4
	vreplvei.w	$vr4, $vr6, 1
	fcvt.d.s	$fa4, $fa4
	xvinsgr2vr.d	$xr8, $a7, 0
	movfr2gr.d	$a7, $fa4
	vreplvei.w	$vr4, $vr6, 2
	fcvt.d.s	$fa4, $fa4
	xvinsgr2vr.d	$xr8, $a7, 1
	movfr2gr.d	$a7, $fa4
	vreplvei.w	$vr4, $vr6, 3
	fcvt.d.s	$fa4, $fa4
	xvinsgr2vr.d	$xr8, $a7, 2
	movfr2gr.d	$a7, $fa4
	xvinsgr2vr.d	$xr8, $a7, 3
	xvfadd.d	$xr3, $xr8, $xr3
	xvfadd.d	$xr4, $xr7, $xr5
	xvpickve2gr.d	$a7, $xr4, 0
	movgr2fr.d	$fa5, $a7
	fcvt.s.d	$fa5, $fa5
	xvpickve2gr.d	$a7, $xr4, 1
	movgr2fr.d	$fa6, $a7
	movfr2gr.s	$a7, $fa5
	fcvt.s.d	$fa5, $fa6
	xvinsgr2vr.w	$xr6, $a7, 0
	movfr2gr.s	$a7, $fa5
	xvinsgr2vr.w	$xr6, $a7, 1
	xvpickve2gr.d	$a7, $xr4, 2
	movgr2fr.d	$fa5, $a7
	fcvt.s.d	$fa5, $fa5
	xvpickve2gr.d	$a7, $xr4, 3
	movgr2fr.d	$fa4, $a7
	movfr2gr.s	$a7, $fa5
	fcvt.s.d	$fa4, $fa4
	xvinsgr2vr.w	$xr6, $a7, 2
	movfr2gr.s	$a7, $fa4
	xvinsgr2vr.w	$xr6, $a7, 3
	xvpickve2gr.d	$a7, $xr3, 0
	movgr2fr.d	$fa4, $a7
	fcvt.s.d	$fa4, $fa4
	xvpickve2gr.d	$a7, $xr3, 1
	movgr2fr.d	$fa5, $a7
	movfr2gr.s	$a7, $fa4
	fcvt.s.d	$fa4, $fa5
	xvinsgr2vr.w	$xr6, $a7, 4
	movfr2gr.s	$a7, $fa4
	xvinsgr2vr.w	$xr6, $a7, 5
	xvpickve2gr.d	$a7, $xr3, 2
	movgr2fr.d	$fa4, $a7
	fcvt.s.d	$fa4, $fa4
	xvpickve2gr.d	$a7, $xr3, 3
	movgr2fr.d	$fa3, $a7
	movfr2gr.s	$a7, $fa4
	fcvt.s.d	$fa3, $fa3
	xvinsgr2vr.w	$xr6, $a7, 6
	movfr2gr.s	$a7, $fa3
	xvinsgr2vr.w	$xr6, $a7, 7
	xvst	$xr6, $a5, 0
	xvaddi.wu	$xr1, $xr1, 8
	addi.d	$a6, $a6, -8
	addi.d	$a5, $a5, 32
	bnez	$a6, .LBB6_64
# %bb.65:                               # %middle.block546
	beq	$a3, $a4, .LBB6_68
.LBB6_66:                               # %scalar.ph532.preheader
	mul.d	$a3, $a0, $a1
	ld.d	$a4, $sp, 280                   # 8-byte Folded Reload
	alsl.d	$a4, $a1, $a4, 2
	sub.d	$a1, $a2, $a1
	vldi	$vr0, -800
	.p2align	4, , 16
.LBB6_67:                               # %scalar.ph532
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa1, $a4, 0
	movgr2fr.w	$fa2, $a3
	ffint.d.w	$fa2, $fa2
	fmul.d	$fa2, $fa2, $fa0
	fcvt.d.s	$fa1, $fa1
	fadd.d	$fa1, $fa1, $fa2
	fcvt.s.d	$fa1, $fa1
	fst.s	$fa1, $a4, 0
	add.w	$a3, $a3, $a0
	addi.d	$a1, $a1, -1
	addi.d	$a4, $a4, 4
	bnez	$a1, .LBB6_67
.LBB6_68:                               # %.loopexit322
	ori	$a0, $zero, 1
	blt	$s4, $a0, .LBB6_73
.LBB6_69:                               # %iter.check656
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a6, $a0, %pc_lo12(A__align_gapmap.ogcp1)
	addi.d	$a0, $a6, 4
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a2, $a1, %pc_lo12(A__align_gapmap.m)
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a3, $a1, %pc_lo12(A__align_gapmap.mp)
	ld.d	$a1, $sp, 208                   # 8-byte Folded Reload
	addi.d	$a1, $a1, 1
	bstrpick.d	$a1, $a1, 31, 0
	addi.d	$a4, $a1, -1
	ori	$a7, $zero, 4
	ori	$a5, $zero, 1
	bgeu	$a4, $a7, .LBB6_115
.LBB6_70:                               # %vec.epilog.scalar.ph672.preheader
	alsl.d	$a2, $a5, $a2, 2
	alsl.d	$a3, $a5, $a3, 2
	alsl.d	$a4, $a5, $s0, 2
	addi.d	$a4, $a4, -4
	sub.d	$a1, $a1, $a5
	.p2align	4, , 16
.LBB6_71:                               # %vec.epilog.scalar.ph672
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $a4, 0
	fld.s	$fa1, $a0, 0
	fadd.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $a2, 0
	st.w	$zero, $a3, 0
	addi.d	$a2, $a2, 4
	addi.d	$a3, $a3, 4
	addi.d	$a1, $a1, -1
	addi.d	$a4, $a4, 4
	bnez	$a1, .LBB6_71
.LBB6_72:
	move	$a2, $zero
	b	.LBB6_74
.LBB6_73:                               # %._crit_edge362
	ori	$a2, $zero, 1
	beqz	$s4, .LBB6_151
.LBB6_74:
	ld.d	$a3, $sp, 232                   # 8-byte Folded Reload
	ori	$a0, $zero, 0
	lu32i.d	$a0, -1
	add.d	$a0, $a3, $a0
	srai.d	$a0, $a0, 30
	fldx.s	$fa0, $s0, $a0
	st.d	$a2, $sp, 240                   # 8-byte Folded Spill
	move	$a2, $zero
.LBB6_75:
	pcalau12i	$a0, %got_pc_hi20(outgap)
	ld.d	$s1, $a0, %got_pc_lo12(outgap)
	ld.w	$a0, $s1, 0
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s3, $a1, %pc_lo12(A__align_gapmap.lastverticalw)
	sltu	$a1, $zero, $a0
	add.w	$s2, $a1, $s6
	ori	$a1, $zero, 2
	fst.s	$fa0, $s3, 0
	blt	$s2, $a1, .LBB6_91
# %bb.76:                               # %.lr.ph386
	st.d	$a2, $sp, 216                   # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s5, $sp, 224                   # 8-byte Folded Spill
	st.d	$s7, $sp, 232                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(impmtx)
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a4, $a0, %pc_lo12(A__align_gapmap.ogcp2)
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align_gapmap.ijp)
	st.d	$a0, $sp, 176                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align_gapmap.m)
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(A__align_gapmap.mp)
	ld.d	$a2, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(A__align_gapmap.fgcp2)
	st.d	$a2, $sp, 168                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(A__align_gapmap.fgcp1)
	st.d	$a2, $sp, 160                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(A__align_gapmap.ogcp1)
	st.d	$a2, $sp, 152                   # 8-byte Folded Spill
	ori	$a2, $zero, 0
	lu32i.d	$a2, -1
	add.d	$a2, $a3, $a2
	srai.d	$s1, $a2, 30
	addi.d	$a0, $a0, 4
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	addi.d	$a0, $a1, 4
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	st.d	$a4, $sp, 184                   # 8-byte Folded Spill
	addi.d	$a0, $a4, 4
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	movgr2fr.w	$fs0, $zero
	ori	$s5, $zero, 1
	b	.LBB6_78
	.p2align	4, , 16
.LBB6_77:                               # %._crit_edge378
                                        #   in Loop: Header=BB6_78 Depth=1
	st.d	$s0, $sp, 272                   # 8-byte Folded Spill
	fldx.s	$fa0, $s6, $s1
	addi.d	$s5, $s5, 1
	fstx.s	$fa0, $s3, $a0
	move	$s0, $s6
	beq	$s5, $s2, .LBB6_92
.LBB6_78:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_81 Depth 2
                                        #     Child Loop BB6_85 Depth 2
	addi.d	$s7, $s5, -1
	slli.d	$s8, $s7, 2
	ld.d	$a0, $sp, 280                   # 8-byte Folded Reload
	fldx.s	$fa0, $a0, $s8
	ld.d	$s6, $sp, 272                   # 8-byte Folded Reload
	fst.s	$fa0, $s0, 0
	move	$a0, $s6
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 232                   # 8-byte Folded Reload
	move	$a3, $s5
	move	$a4, $s4
	ld.d	$a5, $sp, 248                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 224                   # 8-byte Folded Reload
	move	$a7, $zero
	pcaddu18i	$ra, %call36(match_calc)
	jirl	$ra, $ra, 0
	slli.d	$a0, $s5, 2
	ld.d	$a1, $sp, 264                   # 8-byte Folded Reload
	beqz	$a1, .LBB6_82
# %bb.79:                               #   in Loop: Header=BB6_78 Depth=1
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	bnez	$a1, .LBB6_82
# %bb.80:                               # %.lr.ph.i312.preheader
                                        #   in Loop: Header=BB6_78 Depth=1
	ld.d	$a1, $sp, 192                   # 8-byte Folded Reload
	ldx.w	$a1, $a1, $a0
	slli.d	$a1, $a1, 3
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	ldx.d	$a1, $a2, $a1
	ld.d	$a4, $sp, 200                   # 8-byte Folded Reload
	move	$a3, $s6
	ld.d	$a2, $sp, 208                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB6_81:                               # %.lr.ph.i312
                                        #   Parent Loop BB6_78 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a5, $a4, 0
	slli.d	$a5, $a5, 2
	fldx.s	$fa0, $a1, $a5
	fld.s	$fa1, $a3, 0
	addi.w	$a2, $a2, -1
	addi.d	$a4, $a4, 4
	addi.d	$a5, $a3, 4
	fadd.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $a3, 0
	move	$a3, $a5
	bnez	$a2, .LBB6_81
.LBB6_82:                               # %imp_match_out_vead_gapmap.exit317
                                        #   in Loop: Header=BB6_78 Depth=1
	ld.d	$a1, $sp, 280                   # 8-byte Folded Reload
	fldx.s	$fa0, $a1, $a0
	fst.s	$fa0, $s6, 0
	ld.d	$a1, $sp, 240                   # 8-byte Folded Reload
	bnez	$a1, .LBB6_77
# %bb.83:                               # %.lr.ph377.preheader
                                        #   in Loop: Header=BB6_78 Depth=1
	move	$a1, $zero
	move	$a2, $zero
	ld.d	$a3, $sp, 160                   # 8-byte Folded Reload
	fldx.s	$fa0, $a3, $s8
	fld.s	$fa2, $s0, 0
	ld.d	$a3, $sp, 184                   # 8-byte Folded Reload
	fld.s	$fa3, $a3, 4
	slli.d	$a3, $s5, 3
	ld.d	$a4, $sp, 176                   # 8-byte Folded Reload
	ldx.d	$a4, $a4, $a3
	ld.d	$a3, $sp, 152                   # 8-byte Folded Reload
	fldx.s	$fa1, $a3, $a0
	fadd.s	$fa2, $fa2, $fa3
	addi.d	$a3, $s6, 4
	addi.d	$a4, $a4, 4
	addi.d	$a5, $zero, -1
	ld.d	$a6, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 136                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 144                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 168                   # 8-byte Folded Reload
	move	$t2, $s0
	b	.LBB6_85
	.p2align	4, , 16
.LBB6_84:                               #   in Loop: Header=BB6_85 Depth=2
	fadd.s	$fa3, $fa3, $fa4
	fcmp.cult.s	$fcc0, $fa3, $fa2
	fsel	$fa2, $fa3, $fa2, $fcc0
	movcf2gr	$t3, $fcc0
	fld.s	$fa3, $a3, 0
	masknez	$t4, $a1, $t3
	maskeqz	$a2, $a2, $t3
	or	$a2, $a2, $t4
	fadd.s	$fa3, $fs0, $fa3
	fst.s	$fa3, $a3, 0
	addi.d	$t2, $t2, 4
	addi.d	$t1, $t1, 4
	addi.d	$a3, $a3, 4
	addi.d	$a4, $a4, 4
	addi.d	$t0, $t0, 4
	addi.d	$a7, $a7, 4
	addi.d	$a6, $a6, 4
	addi.w	$a1, $a1, 1
	addi.d	$a5, $a5, -1
	beq	$s4, $a1, .LBB6_77
.LBB6_85:                               # %.lr.ph377
                                        #   Parent Loop BB6_78 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.s	$fa4, $t1, 0
	fld.s	$fa3, $t2, 0
	fadd.s	$fa4, $fa2, $fa4
	fcmp.cule.s	$fcc0, $fa4, $fa3
	st.w	$zero, $a4, 0
	fmov.s	$fs0, $fa3
	bcnez	$fcc0, .LBB6_87
# %bb.86:                               #   in Loop: Header=BB6_85 Depth=2
	add.d	$t3, $a2, $a5
	st.w	$t3, $a4, 0
	fmov.s	$fs0, $fa4
.LBB6_87:                               #   in Loop: Header=BB6_85 Depth=2
	fld.s	$fa5, $t0, 0
	fld.s	$fa4, $a6, 0
	fadd.s	$fa6, $fa0, $fa5
	fcmp.cule.s	$fcc0, $fa6, $fs0
	bcnez	$fcc0, .LBB6_89
# %bb.88:                               #   in Loop: Header=BB6_85 Depth=2
	ld.w	$t3, $a7, 0
	sub.d	$t3, $s5, $t3
	st.w	$t3, $a4, 0
	fmov.s	$fs0, $fa6
.LBB6_89:                               #   in Loop: Header=BB6_85 Depth=2
	fadd.s	$fa6, $fa1, $fa3
	fcmp.cult.s	$fcc0, $fa6, $fa5
	bcnez	$fcc0, .LBB6_84
# %bb.90:                               #   in Loop: Header=BB6_85 Depth=2
	fst.s	$fa6, $t0, 0
	st.w	$s7, $a7, 0
	b	.LBB6_84
.LBB6_91:
	movgr2fr.w	$fs0, $zero
	ld.d	$t0, $sp, 48                    # 8-byte Folded Reload
	bnez	$a0, .LBB6_107
	b	.LBB6_93
.LBB6_92:                               # %._crit_edge387.loopexit
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.w	$a0, $s1, 0
	move	$s0, $s6
	ld.d	$s8, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 56                    # 8-byte Folded Reload
	ld.d	$t0, $sp, 48                    # 8-byte Folded Reload
	bnez	$a0, .LBB6_107
.LBB6_93:                               # %.preheader320
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	bnez	$a0, .LBB6_100
# %bb.94:                               # %.lr.ph392
	pcalau12i	$a0, %got_pc_hi20(offset)
	ld.d	$a0, $a0, %got_pc_lo12(offset)
	ld.w	$a0, $a0, 0
	ld.d	$a1, $sp, 208                   # 8-byte Folded Reload
	addi.d	$a1, $a1, 1
	bstrpick.d	$a1, $a1, 31, 0
	addi.d	$a2, $a1, -1
	ori	$a4, $zero, 8
	ori	$a3, $zero, 1
	bltu	$a2, $a4, .LBB6_98
# %bb.95:                               # %vector.ph692
	move	$a4, $a2
	bstrins.d	$a4, $zero, 2, 0
	ori	$a5, $zero, 1
	move	$a3, $a2
	bstrins.d	$a3, $a5, 2, 0
	xvreplgr2vr.w	$xr0, $a0
	ld.d	$a5, $sp, 208                   # 8-byte Folded Reload
	xvreplgr2vr.d	$xr1, $a5
	pcalau12i	$a5, %pc_hi20(.LCPI6_2)
	xvld	$xr2, $a5, %pc_lo12(.LCPI6_2)
	pcalau12i	$a5, %pc_hi20(.LCPI6_3)
	xvld	$xr3, $a5, %pc_lo12(.LCPI6_3)
	addi.d	$a5, $s0, 4
	lu52i.d	$a6, $zero, -1026
	xvreplgr2vr.d	$xr4, $a6
	move	$a6, $a4
	.p2align	4, , 16
.LBB6_96:                               # %vector.body699
                                        # =>This Inner Loop Header: Depth=1
	xvsub.d	$xr5, $xr1, $xr2
	xvsub.d	$xr6, $xr1, $xr3
	xvpickve2gr.d	$a7, $xr6, 0
	xvinsgr2vr.w	$xr7, $a7, 0
	xvpickve2gr.d	$a7, $xr6, 1
	xvinsgr2vr.w	$xr7, $a7, 1
	xvpickve2gr.d	$a7, $xr6, 2
	xvinsgr2vr.w	$xr7, $a7, 2
	xvpickve2gr.d	$a7, $xr6, 3
	xvinsgr2vr.w	$xr7, $a7, 3
	xvpickve2gr.d	$a7, $xr5, 0
	xvinsgr2vr.w	$xr7, $a7, 4
	xvpickve2gr.d	$a7, $xr5, 1
	xvinsgr2vr.w	$xr7, $a7, 5
	xvpickve2gr.d	$a7, $xr5, 2
	xvinsgr2vr.w	$xr7, $a7, 6
	xvpickve2gr.d	$a7, $xr5, 3
	xvinsgr2vr.w	$xr7, $a7, 7
	xvmul.w	$xr5, $xr0, $xr7
	xvst	$xr5, $sp, 320
	vld	$vr5, $sp, 336
	xvld	$xr6, $a5, 0
	vext2xv.d.w	$xr5, $xr5
	vld	$vr7, $sp, 320
	xvffint.d.l	$xr5, $xr5
	xvst	$xr6, $sp, 288
	vld	$vr6, $sp, 288
	vext2xv.d.w	$xr7, $xr7
	xvffint.d.l	$xr7, $xr7
	xvfmul.d	$xr7, $xr7, $xr4
	vreplvei.w	$vr8, $vr6, 0
	fcvt.d.s	$ft0, $ft0
	xvfmul.d	$xr5, $xr5, $xr4
	movfr2gr.d	$a7, $ft0
	vreplvei.w	$vr8, $vr6, 1
	fcvt.d.s	$ft0, $ft0
	xvinsgr2vr.d	$xr9, $a7, 0
	movfr2gr.d	$a7, $ft0
	vreplvei.w	$vr8, $vr6, 2
	fcvt.d.s	$ft0, $ft0
	xvinsgr2vr.d	$xr9, $a7, 1
	movfr2gr.d	$a7, $ft0
	vld	$vr8, $sp, 304
	vreplvei.w	$vr6, $vr6, 3
	fcvt.d.s	$fa6, $fa6
	xvinsgr2vr.d	$xr9, $a7, 2
	movfr2gr.d	$a7, $fa6
	vreplvei.w	$vr6, $vr8, 0
	fcvt.d.s	$fa6, $fa6
	xvinsgr2vr.d	$xr9, $a7, 3
	movfr2gr.d	$a7, $fa6
	vreplvei.w	$vr6, $vr8, 1
	fcvt.d.s	$fa6, $fa6
	xvinsgr2vr.d	$xr10, $a7, 0
	movfr2gr.d	$a7, $fa6
	vreplvei.w	$vr6, $vr8, 2
	fcvt.d.s	$fa6, $fa6
	xvinsgr2vr.d	$xr10, $a7, 1
	movfr2gr.d	$a7, $fa6
	vreplvei.w	$vr6, $vr8, 3
	fcvt.d.s	$fa6, $fa6
	xvinsgr2vr.d	$xr10, $a7, 2
	movfr2gr.d	$a7, $fa6
	xvinsgr2vr.d	$xr10, $a7, 3
	xvfadd.d	$xr5, $xr10, $xr5
	xvfadd.d	$xr6, $xr9, $xr7
	xvpickve2gr.d	$a7, $xr6, 0
	movgr2fr.d	$fa7, $a7
	fcvt.s.d	$fa7, $fa7
	xvpickve2gr.d	$a7, $xr6, 1
	movgr2fr.d	$ft0, $a7
	movfr2gr.s	$a7, $fa7
	fcvt.s.d	$fa7, $ft0
	xvinsgr2vr.w	$xr8, $a7, 0
	movfr2gr.s	$a7, $fa7
	xvinsgr2vr.w	$xr8, $a7, 1
	xvpickve2gr.d	$a7, $xr6, 2
	movgr2fr.d	$fa7, $a7
	fcvt.s.d	$fa7, $fa7
	xvpickve2gr.d	$a7, $xr6, 3
	movgr2fr.d	$fa6, $a7
	movfr2gr.s	$a7, $fa7
	fcvt.s.d	$fa6, $fa6
	xvinsgr2vr.w	$xr8, $a7, 2
	movfr2gr.s	$a7, $fa6
	xvinsgr2vr.w	$xr8, $a7, 3
	xvpickve2gr.d	$a7, $xr5, 0
	movgr2fr.d	$fa6, $a7
	fcvt.s.d	$fa6, $fa6
	xvpickve2gr.d	$a7, $xr5, 1
	movgr2fr.d	$fa7, $a7
	movfr2gr.s	$a7, $fa6
	fcvt.s.d	$fa6, $fa7
	xvinsgr2vr.w	$xr8, $a7, 4
	movfr2gr.s	$a7, $fa6
	xvinsgr2vr.w	$xr8, $a7, 5
	xvpickve2gr.d	$a7, $xr5, 2
	movgr2fr.d	$fa6, $a7
	fcvt.s.d	$fa6, $fa6
	xvpickve2gr.d	$a7, $xr5, 3
	movgr2fr.d	$fa5, $a7
	movfr2gr.s	$a7, $fa6
	fcvt.s.d	$fa5, $fa5
	xvinsgr2vr.w	$xr8, $a7, 6
	movfr2gr.s	$a7, $fa5
	xvinsgr2vr.w	$xr8, $a7, 7
	xvst	$xr8, $a5, 0
	xvaddi.du	$xr3, $xr3, 8
	xvaddi.du	$xr2, $xr2, 8
	addi.d	$a6, $a6, -8
	addi.d	$a5, $a5, 32
	bnez	$a6, .LBB6_96
# %bb.97:                               # %middle.block706
	beq	$a2, $a4, .LBB6_100
.LBB6_98:                               # %scalar.ph690.preheader
	ld.d	$a2, $sp, 208                   # 8-byte Folded Reload
	sub.w	$a2, $a2, $a3
	mul.d	$a2, $a0, $a2
	alsl.d	$a4, $a3, $s0, 2
	sub.d	$a1, $a1, $a3
	vldi	$vr0, -800
	.p2align	4, , 16
.LBB6_99:                               # %scalar.ph690
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa1, $a4, 0
	movgr2fr.w	$fa2, $a2
	ffint.d.w	$fa2, $fa2
	fmul.d	$fa2, $fa2, $fa0
	fcvt.d.s	$fa1, $fa1
	fadd.d	$fa1, $fa1, $fa2
	fcvt.s.d	$fa1, $fa1
	fst.s	$fa1, $a4, 0
	sub.w	$a2, $a2, $a0
	addi.d	$a1, $a1, -1
	addi.d	$a4, $a4, 4
	bnez	$a1, .LBB6_99
.LBB6_100:                              # %.preheader319
	ori	$a0, $zero, 1
	blt	$t0, $a0, .LBB6_107
# %bb.101:                              # %.lr.ph395
	pcalau12i	$a1, %got_pc_hi20(offset)
	ld.d	$a1, $a1, %got_pc_lo12(offset)
	ld.w	$a1, $a1, 0
	bstrpick.d	$a2, $s6, 31, 0
	movgr2fr.w	$fa0, $a1
	ffint.d.w	$fa1, $fa0
	movgr2fr.d	$fa0, $a2
	ffint.d.l	$fa0, $fa0
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(A__align_gapmap.lastverticalw)
	addi.d	$a2, $s6, 1
	bstrpick.d	$a2, $a2, 31, 0
	addi.d	$a3, $a2, -1
	ori	$a4, $zero, 4
	fneg.d	$fa1, $fa1
	bltu	$a3, $a4, .LBB6_105
# %bb.102:                              # %vector.ph711
	move	$a4, $a3
	bstrins.d	$a4, $zero, 1, 0
	ori	$a5, $zero, 1
	move	$a0, $a3
	bstrins.d	$a0, $a5, 1, 0
	xvreplve0.d	$xr2, $xr0
	xvreplve0.d	$xr3, $xr1
	pcalau12i	$a5, %pc_hi20(.LCPI6_4)
	vld	$vr4, $a5, %pc_lo12(.LCPI6_4)
	addi.d	$a5, $a1, 4
	lu52i.d	$a6, $zero, -1026
	xvreplgr2vr.d	$xr5, $a6
	move	$a6, $a4
	.p2align	4, , 16
.LBB6_103:                              # %vector.body718
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr6, $a5, 0
	vext2xv.du.wu	$xr7, $xr4
	xvffint.d.lu	$xr7, $xr7
	xvfmul.d	$xr7, $xr7, $xr5
	vreplvei.w	$vr8, $vr6, 0
	fcvt.d.s	$ft0, $ft0
	xvfadd.d	$xr7, $xr2, $xr7
	movfr2gr.d	$a7, $ft0
	vreplvei.w	$vr8, $vr6, 1
	fcvt.d.s	$ft0, $ft0
	xvinsgr2vr.d	$xr9, $a7, 0
	movfr2gr.d	$a7, $ft0
	vreplvei.w	$vr8, $vr6, 2
	fcvt.d.s	$ft0, $ft0
	xvinsgr2vr.d	$xr9, $a7, 1
	movfr2gr.d	$a7, $ft0
	vreplvei.w	$vr6, $vr6, 3
	fcvt.d.s	$fa6, $fa6
	xvinsgr2vr.d	$xr9, $a7, 2
	movfr2gr.d	$a7, $fa6
	xvinsgr2vr.d	$xr9, $a7, 3
	xvfmadd.d	$xr6, $xr3, $xr7, $xr9
	xvpickve2gr.d	$a7, $xr6, 0
	movgr2fr.d	$fa7, $a7
	fcvt.s.d	$fa7, $fa7
	xvpickve2gr.d	$a7, $xr6, 1
	movgr2fr.d	$ft0, $a7
	movfr2gr.s	$a7, $fa7
	fcvt.s.d	$fa7, $ft0
	vinsgr2vr.w	$vr8, $a7, 0
	movfr2gr.s	$a7, $fa7
	vinsgr2vr.w	$vr8, $a7, 1
	xvpickve2gr.d	$a7, $xr6, 2
	movgr2fr.d	$fa7, $a7
	fcvt.s.d	$fa7, $fa7
	xvpickve2gr.d	$a7, $xr6, 3
	movgr2fr.d	$fa6, $a7
	movfr2gr.s	$a7, $fa7
	fcvt.s.d	$fa6, $fa6
	vinsgr2vr.w	$vr8, $a7, 2
	movfr2gr.s	$a7, $fa6
	vinsgr2vr.w	$vr8, $a7, 3
	vst	$vr8, $a5, 0
	vaddi.wu	$vr4, $vr4, 4
	addi.d	$a6, $a6, -4
	addi.d	$a5, $a5, 16
	bnez	$a6, .LBB6_103
# %bb.104:                              # %middle.block725
	beq	$a3, $a4, .LBB6_107
.LBB6_105:                              # %scalar.ph709.preheader
	alsl.d	$a1, $a0, $a1, 2
	sub.d	$a2, $a2, $a0
	vldi	$vr2, -800
	.p2align	4, , 16
.LBB6_106:                              # %scalar.ph709
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a3, $a0, 31, 0
	movgr2fr.d	$fa3, $a3
	fld.s	$fa4, $a1, 0
	ffint.d.l	$fa3, $fa3
	fmul.d	$fa3, $fa3, $fa2
	fadd.d	$fa3, $fa0, $fa3
	fcvt.d.s	$fa4, $fa4
	fmadd.d	$fa3, $fa1, $fa3, $fa4
	fcvt.s.d	$fa3, $fa3
	fst.s	$fa3, $a1, 0
	addi.w	$a0, $a0, 1
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, 4
	bnez	$a2, .LBB6_106
.LBB6_107:                              # %.loopexit
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s5, $a0, %pc_lo12(A__align_gapmap.lastverticalw)
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s7, $a0, %pc_lo12(A__align_gapmap.mseq1)
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s4, $a0, %pc_lo12(A__align_gapmap.mseq2)
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s3, $a0, %pc_lo12(A__align_gapmap.ijp)
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	beqz	$a0, .LBB6_114
# %bb.108:
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s8, 0
	move	$s8, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	add.w	$a0, $a0, $s8
	st.d	$a0, $sp, 280                   # 8-byte Folded Spill
	addi.w	$s6, $a0, 1
	move	$a0, $s6
	pcaddu18i	$ra, %call36(AllocateCharVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 264                   # 8-byte Folded Spill
	move	$a0, $s6
	pcaddu18i	$ra, %call36(AllocateCharVec)
	jirl	$ra, $ra, 0
	ld.w	$a3, $s1, 0
	ori	$a1, $zero, 1
	addi.w	$ra, $s8, 0
	st.d	$s2, $sp, 272                   # 8-byte Folded Spill
	addi.w	$a2, $s2, 0
	beq	$a3, $a1, .LBB6_124
# %bb.109:
	fld.s	$fa0, $s5, 0
	blt	$ra, $a1, .LBB6_119
# %bb.110:                              # %.lr.ph.i318
	slli.d	$a1, $s8, 3
	bstrpick.d	$a1, $a1, 33, 3
	slli.d	$a1, $a1, 3
	ld.d	$a3, $sp, 272                   # 8-byte Folded Reload
	slli.d	$a3, $a3, 32
	srai.d	$a3, $a3, 30
	bstrpick.d	$a4, $s8, 30, 0
	move	$a5, $s8
	b	.LBB6_112
	.p2align	4, , 16
.LBB6_111:                              #   in Loop: Header=BB6_112 Depth=1
	addi.d	$a4, $a4, -1
	addi.d	$a5, $a5, -1
	addi.d	$s5, $s5, 4
	beqz	$a4, .LBB6_119
.LBB6_112:                              # =>This Inner Loop Header: Depth=1
	fld.s	$fa1, $s5, 0
	fcmp.cult.s	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB6_111
# %bb.113:                              #   in Loop: Header=BB6_112 Depth=1
	ldx.d	$a6, $s3, $a1
	stx.w	$a5, $a6, $a3
	fmov.s	$fa0, $fa1
	b	.LBB6_111
.LBB6_114:
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	st.d	$s2, $sp, 0
	move	$a0, $s0
	move	$a1, $s5
	ld.d	$s5, $sp, 96                    # 8-byte Folded Reload
	move	$a2, $s5
	move	$a3, $s8
	move	$a4, $s7
	move	$a5, $s4
	move	$a6, $s3
	ld.d	$s3, $sp, 120                   # 8-byte Folded Reload
	move	$a7, $s3
	pcaddu18i	$ra, %call36(Atracking)
	jirl	$ra, $ra, 0
	b	.LBB6_201
.LBB6_115:                              # %vector.memcheck641
	addi.d	$a7, $a2, 4
	alsl.d	$t0, $a1, $a2, 2
	alsl.d	$t1, $a1, $s0, 2
	addi.d	$t1, $t1, -4
	sltu	$t1, $a7, $t1
	sltu	$t2, $s0, $t0
	and	$t1, $t1, $t2
	bnez	$t1, .LBB6_70
# %bb.116:                              # %vector.memcheck641
	addi.d	$a6, $a6, 8
	sltu	$a6, $a7, $a6
	sltu	$a7, $a0, $t0
	and	$a6, $a6, $a7
	bnez	$a6, .LBB6_70
# %bb.117:                              # %vector.main.loop.iter.check658
	ori	$a5, $zero, 16
	bgeu	$a4, $a5, .LBB6_210
# %bb.118:
	move	$a6, $zero
	b	.LBB6_214
.LBB6_119:                              # %.preheader2.i
	ori	$a1, $zero, 1
	blt	$a2, $a1, .LBB6_124
# %bb.120:                              # %.lr.ph7.i
	slli.d	$a1, $s8, 32
	srai.d	$a1, $a1, 29
	ld.d	$a5, $sp, 272                   # 8-byte Folded Reload
	slli.d	$a3, $a5, 2
	bstrpick.d	$a3, $a3, 32, 2
	slli.d	$a3, $a3, 2
	bstrpick.d	$a4, $a5, 30, 0
	sub.d	$a5, $zero, $a5
	b	.LBB6_122
	.p2align	4, , 16
.LBB6_121:                              #   in Loop: Header=BB6_122 Depth=1
	addi.d	$a4, $a4, -1
	addi.d	$a5, $a5, 1
	addi.d	$s0, $s0, 4
	beqz	$a4, .LBB6_124
.LBB6_122:                              # =>This Inner Loop Header: Depth=1
	fld.s	$fa1, $s0, 0
	fcmp.cult.s	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB6_121
# %bb.123:                              #   in Loop: Header=BB6_122 Depth=1
	ldx.d	$a6, $s3, $a1
	stx.w	$a5, $a6, $a3
	fmov.s	$fa0, $fa1
	b	.LBB6_121
.LBB6_124:                              # %.loopexit.i
	bltz	$ra, .LBB6_132
# %bb.125:                              # %.lr.ph10.preheader.i
	addi.d	$a3, $s8, 1
	bstrpick.d	$a1, $a3, 31, 0
	ori	$a4, $zero, 4
	bgeu	$a1, $a4, .LBB6_127
# %bb.126:
	move	$a3, $zero
	b	.LBB6_130
.LBB6_127:                              # %vector.ph730
	pcalau12i	$a4, %pc_hi20(.LCPI6_5)
	vld	$vr0, $a4, %pc_lo12(.LCPI6_5)
	bstrpick.d	$a3, $a3, 31, 2
	slli.d	$a3, $a3, 2
	addi.d	$a4, $s3, 16
	move	$a5, $a3
	.p2align	4, , 16
.LBB6_128:                              # %vector.body733
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr1, $a4, -16
	vld	$vr2, $a4, 0
	vshuf4i.w	$vr3, $vr0, 8
	vaddi.wu	$vr4, $vr3, 1
	vaddi.wu	$vr3, $vr3, 3
	vpickve2gr.w	$a6, $vr4, 0
	vpickve2gr.d	$a7, $vr1, 0
	st.w	$a6, $a7, 0
	vpickve2gr.w	$a6, $vr4, 1
	vpickve2gr.d	$a7, $vr1, 1
	st.w	$a6, $a7, 0
	vpickve2gr.w	$a6, $vr3, 0
	vpickve2gr.d	$a7, $vr2, 0
	st.w	$a6, $a7, 0
	vpickve2gr.w	$a6, $vr3, 1
	vpickve2gr.d	$a7, $vr2, 1
	st.w	$a6, $a7, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a5, $a5, -4
	addi.d	$a4, $a4, 32
	bnez	$a5, .LBB6_128
# %bb.129:                              # %middle.block740
	beq	$a1, $a3, .LBB6_132
.LBB6_130:                              # %.lr.ph10.i.preheader
	alsl.d	$a4, $a3, $s3, 3
	sub.d	$a1, $a1, $a3
	addi.d	$a3, $a3, 1
	.p2align	4, , 16
.LBB6_131:                              # %.lr.ph10.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a5, $a4, 0
	st.w	$a3, $a5, 0
	addi.d	$a4, $a4, 8
	addi.d	$a1, $a1, -1
	addi.d	$a3, $a3, 1
	bnez	$a1, .LBB6_131
.LBB6_132:                              # %.preheader1.i
	ld.d	$a1, $fp, 0
	bltz	$a2, .LBB6_161
# %bb.133:                              # %iter.check746
	ld.d	$a3, $s3, 0
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	addi.d	$a6, $a4, 1
	bstrpick.d	$a4, $a6, 31, 0
	ori	$a5, $zero, 3
	bltu	$a5, $a4, .LBB6_135
# %bb.134:
	move	$a5, $zero
	b	.LBB6_159
.LBB6_135:                              # %vector.main.loop.iter.check748
	ori	$a5, $zero, 16
	bgeu	$a4, $a5, .LBB6_152
# %bb.136:
	move	$a5, $zero
	b	.LBB6_156
.LBB6_137:                              # %vector.ph
	bstrpick.d	$a4, $s6, 30, 3
	slli.d	$a4, $a4, 3
	lu52i.d	$a5, $zero, 1023
	xvreplgr2vr.d	$xr0, $a5
	lu52i.d	$a5, $zero, 1022
	xvreplgr2vr.d	$xr1, $a5
	move	$a5, $a1
	move	$a6, $a3
	move	$a7, $a4
	.p2align	4, , 16
.LBB6_138:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr2, $a5, 0
	xvst	$xr2, $sp, 544
	vld	$vr2, $sp, 560
	vreplvei.w	$vr3, $vr2, 0
	fcvt.d.s	$fa3, $fa3
	movfr2gr.d	$t0, $fa3
	vreplvei.w	$vr3, $vr2, 1
	fcvt.d.s	$fa3, $fa3
	xvinsgr2vr.d	$xr4, $t0, 0
	movfr2gr.d	$t0, $fa3
	vreplvei.w	$vr3, $vr2, 2
	fcvt.d.s	$fa3, $fa3
	xvinsgr2vr.d	$xr4, $t0, 1
	movfr2gr.d	$t0, $fa3
	vld	$vr3, $sp, 544
	vreplvei.w	$vr2, $vr2, 3
	fcvt.d.s	$fa2, $fa2
	xvinsgr2vr.d	$xr4, $t0, 2
	movfr2gr.d	$t0, $fa2
	vreplvei.w	$vr2, $vr3, 0
	fcvt.d.s	$fa2, $fa2
	xvinsgr2vr.d	$xr4, $t0, 3
	movfr2gr.d	$t0, $fa2
	vreplvei.w	$vr2, $vr3, 1
	fcvt.d.s	$fa2, $fa2
	xvinsgr2vr.d	$xr5, $t0, 0
	movfr2gr.d	$t0, $fa2
	vreplvei.w	$vr2, $vr3, 2
	fcvt.d.s	$fa2, $fa2
	xvinsgr2vr.d	$xr5, $t0, 1
	movfr2gr.d	$t0, $fa2
	vreplvei.w	$vr2, $vr3, 3
	fcvt.d.s	$fa2, $fa2
	xvinsgr2vr.d	$xr5, $t0, 2
	movfr2gr.d	$t0, $fa2
	xvinsgr2vr.d	$xr5, $t0, 3
	xvfsub.d	$xr2, $xr0, $xr5
	xvfsub.d	$xr3, $xr0, $xr4
	xvfmul.d	$xr3, $xr3, $xr1
	xvfmul.d	$xr2, $xr2, $xr1
	xvpickve2gr.d	$t0, $xr2, 0
	movgr2fr.d	$fa4, $t0
	fcvt.s.d	$fa4, $fa4
	xvpickve2gr.d	$t0, $xr2, 1
	movgr2fr.d	$fa5, $t0
	movfr2gr.s	$t0, $fa4
	fcvt.s.d	$fa4, $fa5
	xvinsgr2vr.w	$xr5, $t0, 0
	movfr2gr.s	$t0, $fa4
	xvinsgr2vr.w	$xr5, $t0, 1
	xvpickve2gr.d	$t0, $xr2, 2
	movgr2fr.d	$fa4, $t0
	fcvt.s.d	$fa4, $fa4
	xvpickve2gr.d	$t0, $xr2, 3
	movgr2fr.d	$fa2, $t0
	movfr2gr.s	$t0, $fa4
	fcvt.s.d	$fa2, $fa2
	xvinsgr2vr.w	$xr5, $t0, 2
	movfr2gr.s	$t0, $fa2
	xvinsgr2vr.w	$xr5, $t0, 3
	xvpickve2gr.d	$t0, $xr3, 0
	movgr2fr.d	$fa2, $t0
	fcvt.s.d	$fa2, $fa2
	xvpickve2gr.d	$t0, $xr3, 1
	movgr2fr.d	$fa4, $t0
	movfr2gr.s	$t0, $fa2
	fcvt.s.d	$fa2, $fa4
	xvinsgr2vr.w	$xr5, $t0, 4
	movfr2gr.s	$t0, $fa2
	xvinsgr2vr.w	$xr5, $t0, 5
	xvpickve2gr.d	$t0, $xr3, 2
	movgr2fr.d	$fa2, $t0
	fcvt.s.d	$fa2, $fa2
	xvpickve2gr.d	$t0, $xr3, 3
	movgr2fr.d	$fa3, $t0
	movfr2gr.s	$t0, $fa2
	fcvt.s.d	$fa2, $fa3
	xvld	$xr3, $a6, 0
	xvinsgr2vr.w	$xr5, $t0, 6
	movfr2gr.s	$t0, $fa2
	xvinsgr2vr.w	$xr5, $t0, 7
	xvst	$xr5, $a5, 0
	xvst	$xr3, $sp, 576
	vld	$vr2, $sp, 592
	vreplvei.w	$vr3, $vr2, 0
	fcvt.d.s	$fa3, $fa3
	movfr2gr.d	$t0, $fa3
	vreplvei.w	$vr3, $vr2, 1
	fcvt.d.s	$fa3, $fa3
	xvinsgr2vr.d	$xr4, $t0, 0
	movfr2gr.d	$t0, $fa3
	vreplvei.w	$vr3, $vr2, 2
	fcvt.d.s	$fa3, $fa3
	xvinsgr2vr.d	$xr4, $t0, 1
	movfr2gr.d	$t0, $fa3
	vld	$vr3, $sp, 576
	vreplvei.w	$vr2, $vr2, 3
	fcvt.d.s	$fa2, $fa2
	xvinsgr2vr.d	$xr4, $t0, 2
	movfr2gr.d	$t0, $fa2
	vreplvei.w	$vr2, $vr3, 0
	fcvt.d.s	$fa2, $fa2
	xvinsgr2vr.d	$xr4, $t0, 3
	movfr2gr.d	$t0, $fa2
	vreplvei.w	$vr2, $vr3, 1
	fcvt.d.s	$fa2, $fa2
	xvinsgr2vr.d	$xr5, $t0, 0
	movfr2gr.d	$t0, $fa2
	vreplvei.w	$vr2, $vr3, 2
	fcvt.d.s	$fa2, $fa2
	xvinsgr2vr.d	$xr5, $t0, 1
	movfr2gr.d	$t0, $fa2
	vreplvei.w	$vr2, $vr3, 3
	fcvt.d.s	$fa2, $fa2
	xvinsgr2vr.d	$xr5, $t0, 2
	movfr2gr.d	$t0, $fa2
	xvinsgr2vr.d	$xr5, $t0, 3
	xvfsub.d	$xr2, $xr0, $xr5
	xvfsub.d	$xr3, $xr0, $xr4
	xvfmul.d	$xr3, $xr3, $xr1
	xvfmul.d	$xr2, $xr2, $xr1
	xvpickve2gr.d	$t0, $xr2, 0
	movgr2fr.d	$fa4, $t0
	fcvt.s.d	$fa4, $fa4
	xvpickve2gr.d	$t0, $xr2, 1
	movgr2fr.d	$fa5, $t0
	movfr2gr.s	$t0, $fa4
	fcvt.s.d	$fa4, $fa5
	xvinsgr2vr.w	$xr5, $t0, 0
	movfr2gr.s	$t0, $fa4
	xvinsgr2vr.w	$xr5, $t0, 1
	xvpickve2gr.d	$t0, $xr2, 2
	movgr2fr.d	$fa4, $t0
	fcvt.s.d	$fa4, $fa4
	xvpickve2gr.d	$t0, $xr2, 3
	movgr2fr.d	$fa2, $t0
	movfr2gr.s	$t0, $fa4
	fcvt.s.d	$fa2, $fa2
	xvinsgr2vr.w	$xr5, $t0, 2
	movfr2gr.s	$t0, $fa2
	xvinsgr2vr.w	$xr5, $t0, 3
	xvpickve2gr.d	$t0, $xr3, 0
	movgr2fr.d	$fa2, $t0
	fcvt.s.d	$fa2, $fa2
	xvpickve2gr.d	$t0, $xr3, 1
	movgr2fr.d	$fa4, $t0
	movfr2gr.s	$t0, $fa2
	fcvt.s.d	$fa2, $fa4
	xvinsgr2vr.w	$xr5, $t0, 4
	movfr2gr.s	$t0, $fa2
	xvinsgr2vr.w	$xr5, $t0, 5
	xvpickve2gr.d	$t0, $xr3, 2
	movgr2fr.d	$fa2, $t0
	fcvt.s.d	$fa2, $fa2
	xvpickve2gr.d	$t0, $xr3, 3
	movgr2fr.d	$fa3, $t0
	movfr2gr.s	$t0, $fa2
	fcvt.s.d	$fa2, $fa3
	xvinsgr2vr.w	$xr5, $t0, 6
	movfr2gr.s	$t0, $fa2
	xvinsgr2vr.w	$xr5, $t0, 7
	xvst	$xr5, $a6, 0
	addi.d	$a7, $a7, -8
	addi.d	$a6, $a6, 32
	addi.d	$a5, $a5, 32
	bnez	$a7, .LBB6_138
# %bb.139:                              # %middle.block
	beq	$a2, $a4, .LBB6_29
	b	.LBB6_27
.LBB6_140:                              # %vector.ph509
	ld.d	$a3, $sp, 208                   # 8-byte Folded Reload
	bstrpick.d	$a3, $a3, 30, 3
	slli.d	$a3, $a3, 3
	lu52i.d	$a4, $zero, 1023
	xvreplgr2vr.d	$xr0, $a4
	lu52i.d	$a4, $zero, 1022
	xvreplgr2vr.d	$xr1, $a4
	move	$a4, $a0
	move	$a5, $a2
	move	$a6, $a3
	.p2align	4, , 16
.LBB6_141:                              # %vector.body512
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr2, $a4, 0
	xvst	$xr2, $sp, 480
	vld	$vr2, $sp, 496
	vreplvei.w	$vr3, $vr2, 0
	fcvt.d.s	$fa3, $fa3
	movfr2gr.d	$a7, $fa3
	vreplvei.w	$vr3, $vr2, 1
	fcvt.d.s	$fa3, $fa3
	xvinsgr2vr.d	$xr4, $a7, 0
	movfr2gr.d	$a7, $fa3
	vreplvei.w	$vr3, $vr2, 2
	fcvt.d.s	$fa3, $fa3
	xvinsgr2vr.d	$xr4, $a7, 1
	movfr2gr.d	$a7, $fa3
	vld	$vr3, $sp, 480
	vreplvei.w	$vr2, $vr2, 3
	fcvt.d.s	$fa2, $fa2
	xvinsgr2vr.d	$xr4, $a7, 2
	movfr2gr.d	$a7, $fa2
	vreplvei.w	$vr2, $vr3, 0
	fcvt.d.s	$fa2, $fa2
	xvinsgr2vr.d	$xr4, $a7, 3
	movfr2gr.d	$a7, $fa2
	vreplvei.w	$vr2, $vr3, 1
	fcvt.d.s	$fa2, $fa2
	xvinsgr2vr.d	$xr5, $a7, 0
	movfr2gr.d	$a7, $fa2
	vreplvei.w	$vr2, $vr3, 2
	fcvt.d.s	$fa2, $fa2
	xvinsgr2vr.d	$xr5, $a7, 1
	movfr2gr.d	$a7, $fa2
	vreplvei.w	$vr2, $vr3, 3
	fcvt.d.s	$fa2, $fa2
	xvinsgr2vr.d	$xr5, $a7, 2
	movfr2gr.d	$a7, $fa2
	xvinsgr2vr.d	$xr5, $a7, 3
	xvfsub.d	$xr2, $xr0, $xr5
	xvfsub.d	$xr3, $xr0, $xr4
	xvfmul.d	$xr3, $xr3, $xr1
	xvfmul.d	$xr2, $xr2, $xr1
	xvpickve2gr.d	$a7, $xr2, 0
	movgr2fr.d	$fa4, $a7
	fcvt.s.d	$fa4, $fa4
	xvpickve2gr.d	$a7, $xr2, 1
	movgr2fr.d	$fa5, $a7
	movfr2gr.s	$a7, $fa4
	fcvt.s.d	$fa4, $fa5
	xvinsgr2vr.w	$xr5, $a7, 0
	movfr2gr.s	$a7, $fa4
	xvinsgr2vr.w	$xr5, $a7, 1
	xvpickve2gr.d	$a7, $xr2, 2
	movgr2fr.d	$fa4, $a7
	fcvt.s.d	$fa4, $fa4
	xvpickve2gr.d	$a7, $xr2, 3
	movgr2fr.d	$fa2, $a7
	movfr2gr.s	$a7, $fa4
	fcvt.s.d	$fa2, $fa2
	xvinsgr2vr.w	$xr5, $a7, 2
	movfr2gr.s	$a7, $fa2
	xvinsgr2vr.w	$xr5, $a7, 3
	xvpickve2gr.d	$a7, $xr3, 0
	movgr2fr.d	$fa2, $a7
	fcvt.s.d	$fa2, $fa2
	xvpickve2gr.d	$a7, $xr3, 1
	movgr2fr.d	$fa4, $a7
	movfr2gr.s	$a7, $fa2
	fcvt.s.d	$fa2, $fa4
	xvinsgr2vr.w	$xr5, $a7, 4
	movfr2gr.s	$a7, $fa2
	xvinsgr2vr.w	$xr5, $a7, 5
	xvpickve2gr.d	$a7, $xr3, 2
	movgr2fr.d	$fa2, $a7
	fcvt.s.d	$fa2, $fa2
	xvpickve2gr.d	$a7, $xr3, 3
	movgr2fr.d	$fa3, $a7
	movfr2gr.s	$a7, $fa2
	fcvt.s.d	$fa2, $fa3
	xvld	$xr3, $a5, 0
	xvinsgr2vr.w	$xr5, $a7, 6
	movfr2gr.s	$a7, $fa2
	xvinsgr2vr.w	$xr5, $a7, 7
	xvst	$xr5, $a4, 0
	xvst	$xr3, $sp, 512
	vld	$vr2, $sp, 528
	vreplvei.w	$vr3, $vr2, 0
	fcvt.d.s	$fa3, $fa3
	movfr2gr.d	$a7, $fa3
	vreplvei.w	$vr3, $vr2, 1
	fcvt.d.s	$fa3, $fa3
	xvinsgr2vr.d	$xr4, $a7, 0
	movfr2gr.d	$a7, $fa3
	vreplvei.w	$vr3, $vr2, 2
	fcvt.d.s	$fa3, $fa3
	xvinsgr2vr.d	$xr4, $a7, 1
	movfr2gr.d	$a7, $fa3
	vld	$vr3, $sp, 512
	vreplvei.w	$vr2, $vr2, 3
	fcvt.d.s	$fa2, $fa2
	xvinsgr2vr.d	$xr4, $a7, 2
	movfr2gr.d	$a7, $fa2
	vreplvei.w	$vr2, $vr3, 0
	fcvt.d.s	$fa2, $fa2
	xvinsgr2vr.d	$xr4, $a7, 3
	movfr2gr.d	$a7, $fa2
	vreplvei.w	$vr2, $vr3, 1
	fcvt.d.s	$fa2, $fa2
	xvinsgr2vr.d	$xr5, $a7, 0
	movfr2gr.d	$a7, $fa2
	vreplvei.w	$vr2, $vr3, 2
	fcvt.d.s	$fa2, $fa2
	xvinsgr2vr.d	$xr5, $a7, 1
	movfr2gr.d	$a7, $fa2
	vreplvei.w	$vr2, $vr3, 3
	fcvt.d.s	$fa2, $fa2
	xvinsgr2vr.d	$xr5, $a7, 2
	movfr2gr.d	$a7, $fa2
	xvinsgr2vr.d	$xr5, $a7, 3
	xvfsub.d	$xr2, $xr0, $xr5
	xvfsub.d	$xr3, $xr0, $xr4
	xvfmul.d	$xr3, $xr3, $xr1
	xvfmul.d	$xr2, $xr2, $xr1
	xvpickve2gr.d	$a7, $xr2, 0
	movgr2fr.d	$fa4, $a7
	fcvt.s.d	$fa4, $fa4
	xvpickve2gr.d	$a7, $xr2, 1
	movgr2fr.d	$fa5, $a7
	movfr2gr.s	$a7, $fa4
	fcvt.s.d	$fa4, $fa5
	xvinsgr2vr.w	$xr5, $a7, 0
	movfr2gr.s	$a7, $fa4
	xvinsgr2vr.w	$xr5, $a7, 1
	xvpickve2gr.d	$a7, $xr2, 2
	movgr2fr.d	$fa4, $a7
	fcvt.s.d	$fa4, $fa4
	xvpickve2gr.d	$a7, $xr2, 3
	movgr2fr.d	$fa2, $a7
	movfr2gr.s	$a7, $fa4
	fcvt.s.d	$fa2, $fa2
	xvinsgr2vr.w	$xr5, $a7, 2
	movfr2gr.s	$a7, $fa2
	xvinsgr2vr.w	$xr5, $a7, 3
	xvpickve2gr.d	$a7, $xr3, 0
	movgr2fr.d	$fa2, $a7
	fcvt.s.d	$fa2, $fa2
	xvpickve2gr.d	$a7, $xr3, 1
	movgr2fr.d	$fa4, $a7
	movfr2gr.s	$a7, $fa2
	fcvt.s.d	$fa2, $fa4
	xvinsgr2vr.w	$xr5, $a7, 4
	movfr2gr.s	$a7, $fa2
	xvinsgr2vr.w	$xr5, $a7, 5
	xvpickve2gr.d	$a7, $xr3, 2
	movgr2fr.d	$fa2, $a7
	fcvt.s.d	$fa2, $fa2
	xvpickve2gr.d	$a7, $xr3, 3
	movgr2fr.d	$fa3, $a7
	movfr2gr.s	$a7, $fa2
	fcvt.s.d	$fa2, $fa3
	xvinsgr2vr.w	$xr5, $a7, 6
	movfr2gr.s	$a7, $fa2
	xvinsgr2vr.w	$xr5, $a7, 7
	xvst	$xr5, $a5, 0
	addi.d	$a6, $a6, -8
	addi.d	$a5, $a5, 32
	addi.d	$a4, $a4, 32
	bnez	$a6, .LBB6_141
# %bb.142:                              # %middle.block517
	beq	$a1, $a3, .LBB6_36
	b	.LBB6_34
.LBB6_143:                              # %vector.memcheck549
	ld.d	$a6, $sp, 280                   # 8-byte Folded Reload
	addi.d	$a5, $a6, 4
	alsl.d	$a6, $a2, $a6, 2
	addi.d	$a7, $a0, 4
	sltu	$a7, $a5, $a7
	sltu	$t0, $a0, $a6
	and	$a7, $a7, $t0
	bnez	$a7, .LBB6_55
# %bb.144:                              # %vector.memcheck549
	alsl.d	$a7, $a2, $a1, 2
	addi.d	$a7, $a7, -4
	sltu	$a5, $a5, $a7
	sltu	$a6, $a1, $a6
	and	$a5, $a5, $a6
	bnez	$a5, .LBB6_55
# %bb.145:                              # %vector.main.loop.iter.check
	ori	$a4, $zero, 16
	bgeu	$a3, $a4, .LBB6_218
# %bb.146:
	move	$a5, $zero
	b	.LBB6_222
.LBB6_147:                              # %vector.memcheck589
	addi.d	$a5, $s0, 4
	alsl.d	$a6, $a2, $s0, 2
	addi.d	$a7, $a0, 4
	sltu	$a7, $a5, $a7
	sltu	$t0, $a0, $a6
	and	$a7, $a7, $t0
	bnez	$a7, .LBB6_59
# %bb.148:                              # %vector.memcheck589
	alsl.d	$a7, $a2, $a1, 2
	addi.d	$a7, $a7, -4
	sltu	$a5, $a5, $a7
	sltu	$a6, $a1, $a6
	and	$a5, $a5, $a6
	bnez	$a5, .LBB6_59
# %bb.149:                              # %vector.main.loop.iter.check606
	ori	$a4, $zero, 16
	bgeu	$a3, $a4, .LBB6_225
# %bb.150:
	move	$a5, $zero
	b	.LBB6_229
.LBB6_151:
	movgr2fr.w	$fa0, $zero
	ori	$a0, $zero, 1
	st.d	$a0, $sp, 240                   # 8-byte Folded Spill
	ld.d	$a3, $sp, 232                   # 8-byte Folded Reload
	b	.LBB6_75
.LBB6_152:                              # %vector.ph749
	bstrpick.d	$a5, $a6, 31, 4
	slli.d	$a5, $a5, 4
	pcalau12i	$a7, %pc_hi20(.LCPI6_6)
	xvld	$xr0, $a7, %pc_lo12(.LCPI6_6)
	addi.d	$a7, $a3, 32
	xvrepli.b	$xr1, -1
	xvrepli.w	$xr2, -9
	move	$t0, $a5
	.p2align	4, , 16
.LBB6_153:                              # %vector.body752
                                        # =>This Inner Loop Header: Depth=1
	xvxor.v	$xr3, $xr0, $xr1
	xvsub.w	$xr4, $xr2, $xr0
	xvst	$xr3, $a7, -32
	xvst	$xr4, $a7, 0
	xvaddi.wu	$xr0, $xr0, 16
	addi.d	$t0, $t0, -16
	addi.d	$a7, $a7, 64
	bnez	$t0, .LBB6_153
# %bb.154:                              # %middle.block758
	beq	$a4, $a5, .LBB6_161
# %bb.155:                              # %vec.epilog.iter.check763
	andi	$a7, $a6, 12
	beqz	$a7, .LBB6_159
.LBB6_156:                              # %vec.epilog.ph762
	move	$a7, $a5
	pcalau12i	$a5, %pc_hi20(.LCPI6_7)
	vld	$vr0, $a5, %pc_lo12(.LCPI6_7)
	bstrpick.d	$a5, $a6, 31, 2
	slli.d	$a5, $a5, 2
	vreplgr2vr.w	$vr1, $a7
	vor.v	$vr0, $vr1, $vr0
	sub.d	$a6, $a7, $a5
	alsl.d	$a7, $a7, $a3, 2
	vrepli.b	$vr1, -1
	.p2align	4, , 16
.LBB6_157:                              # %vec.epilog.vector.body768
                                        # =>This Inner Loop Header: Depth=1
	vxor.v	$vr2, $vr0, $vr1
	vst	$vr2, $a7, 0
	vaddi.wu	$vr0, $vr0, 4
	addi.d	$a6, $a6, 4
	addi.d	$a7, $a7, 16
	bnez	$a6, .LBB6_157
# %bb.158:                              # %vec.epilog.middle.block773
	beq	$a4, $a5, .LBB6_161
.LBB6_159:                              # %vec.epilog.scalar.ph761.preheader
	alsl.d	$a3, $a5, $a3, 2
	nor	$a6, $a5, $zero
	sub.d	$a4, $a4, $a5
	.p2align	4, , 16
.LBB6_160:                              # %vec.epilog.scalar.ph761
                                        # =>This Inner Loop Header: Depth=1
	st.w	$a6, $a3, 0
	addi.d	$a3, $a3, 4
	addi.d	$a4, $a4, -1
	addi.d	$a6, $a6, -1
	bnez	$a4, .LBB6_160
.LBB6_161:                              # %._crit_edge.i
	ld.d	$a3, $sp, 264                   # 8-byte Folded Reload
	add.d	$a3, $a3, $ra
	add.d	$s5, $a3, $a2
	stx.b	$zero, $a3, $a2
	st.d	$a0, $sp, 256                   # 8-byte Folded Spill
	add.d	$a3, $a0, $ra
	add.d	$s6, $a3, $a2
	stx.b	$zero, $a3, $a2
	st.w	$zero, $a1, 0
	ld.d	$a0, $sp, 280                   # 8-byte Folded Reload
	bltz	$a0, .LBB6_193
# %bb.162:                              # %.lr.ph41.i.preheader
	move	$t6, $zero
	addi.w	$a2, $zero, -1
	ori	$a3, $zero, 1
	ori	$a4, $zero, 45
	ori	$a5, $zero, 111
	ori	$a6, $zero, 16
	xvrepli.b	$xr0, 0
	vrepli.b	$vr1, 45
	vrepli.b	$vr2, 111
	ori	$a7, $zero, 32
	xvrepli.b	$xr3, 111
	xvrepli.b	$xr4, 45
	ld.d	$t0, $sp, 272                   # 8-byte Folded Reload
	move	$a0, $s3
	.p2align	4, , 16
.LBB6_163:                              # %.lr.ph41.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_169 Depth 2
                                        #     Child Loop BB6_180 Depth 2
                                        #     Child Loop BB6_176 Depth 2
                                        #     Child Loop BB6_185 Depth 2
	addi.w	$t1, $s8, 0
	slli.d	$t2, $t1, 3
	ldx.d	$t2, $s3, $t2
	addi.w	$t3, $t0, 0
	slli.d	$t5, $t3, 2
	ldx.w	$t4, $t2, $t5
	bge	$a2, $t4, .LBB6_171
# %bb.164:                              #   in Loop: Header=BB6_163 Depth=1
	beqz	$t4, .LBB6_192
# %bb.165:                              #   in Loop: Header=BB6_163 Depth=1
	sub.d	$t2, $s8, $t4
	move	$t4, $a2
	nor	$t7, $t2, $zero
	add.w	$t7, $s8, $t7
	beqz	$t7, .LBB6_172
.LBB6_166:                              # %.lr.ph19.preheader.i
                                        #   in Loop: Header=BB6_163 Depth=1
	bltu	$t7, $a7, .LBB6_178
# %bb.167:                              # %.lr.ph19.preheader.i
                                        #   in Loop: Header=BB6_163 Depth=1
	sub.d	$t8, $s5, $s6
	bltu	$t8, $a7, .LBB6_178
# %bb.168:                              # %vector.ph802
                                        #   in Loop: Header=BB6_163 Depth=1
	bstrpick.d	$s1, $t7, 31, 0
	bstrpick.d	$t8, $s1, 31, 5
	slli.d	$s2, $t8, 5
	sub.d	$t7, $t7, $s2
	sub.d	$t8, $s6, $s2
	sub.d	$s0, $s5, $s2
	addi.d	$s3, $s5, -32
	addi.d	$s5, $s6, -32
	move	$s6, $s2
	.p2align	4, , 16
.LBB6_169:                              # %vector.body806
                                        #   Parent Loop BB6_163 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvst	$xr3, $s3, 0
	xvst	$xr4, $s5, 0
	addi.d	$s6, $s6, -32
	addi.d	$s3, $s3, -32
	addi.d	$s5, $s5, -32
	bnez	$s6, .LBB6_169
# %bb.170:                              # %middle.block813
                                        #   in Loop: Header=BB6_163 Depth=1
	move	$s3, $a0
	bne	$s2, $s1, .LBB6_179
	b	.LBB6_181
	.p2align	4, , 16
.LBB6_171:                              #   in Loop: Header=BB6_163 Depth=1
	addi.d	$t2, $s8, -1
	nor	$t7, $t2, $zero
	add.w	$t7, $s8, $t7
	bnez	$t7, .LBB6_166
	.p2align	4, , 16
.LBB6_172:                              # %._crit_edge20.i
                                        #   in Loop: Header=BB6_163 Depth=1
	beq	$t4, $a2, .LBB6_182
.LBB6_173:                              # %.lr.ph29.preheader.i
                                        #   in Loop: Header=BB6_163 Depth=1
	addi.w	$t7, $zero, -17
	nor	$s1, $t4, $zero
	bltu	$t7, $t4, .LBB6_183
# %bb.174:                              # %.lr.ph29.preheader.i
                                        #   in Loop: Header=BB6_163 Depth=1
	sub.d	$t7, $s5, $s6
	bltu	$t7, $a6, .LBB6_183
# %bb.175:                              # %vector.ph781
                                        #   in Loop: Header=BB6_163 Depth=1
	bstrpick.d	$t7, $s1, 30, 4
	slli.d	$s2, $t7, 4
	sub.d	$s0, $s1, $s2
	sub.d	$t7, $s6, $s2
	sub.d	$t8, $s5, $s2
	xvinsgr2vr.w	$xr6, $t6, 0
	pcalau12i	$t6, %pc_hi20(.LCPI6_8)
	xvld	$xr5, $t6, %pc_lo12(.LCPI6_8)
	xvpermi.d	$xr6, $xr6, 68
	xvinsgr2vr.w	$xr7, $zero, 0
	xvpermi.d	$xr7, $xr7, 68
	xvshuf.w	$xr5, $xr7, $xr6
	addi.d	$t6, $s5, -8
	addi.d	$s3, $s6, -8
	move	$s5, $s2
	xvori.b	$xr6, $xr0, 0
	.p2align	4, , 16
.LBB6_176:                              # %vector.body784
                                        #   Parent Loop BB6_163 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vst	$vr1, $t6, -8
	vst	$vr2, $s3, -8
	xvaddi.wu	$xr5, $xr5, 1
	xvaddi.wu	$xr6, $xr6, 1
	addi.d	$s5, $s5, -16
	addi.d	$t6, $t6, -16
	addi.d	$s3, $s3, -16
	bnez	$s5, .LBB6_176
# %bb.177:                              # %middle.block791
                                        #   in Loop: Header=BB6_163 Depth=1
	pcalau12i	$t6, %pc_hi20(.LCPI6_9)
	xvld	$xr7, $t6, %pc_lo12(.LCPI6_9)
	xvadd.w	$xr5, $xr6, $xr5
	xvpermi.d	$xr6, $xr5, 78
	xvshuf.d	$xr7, $xr0, $xr6
	xvadd.w	$xr5, $xr5, $xr7
	xvpermi.d	$xr6, $xr5, 68
	xvrepl128vei.d	$xr6, $xr6, 1
	xvadd.w	$xr5, $xr5, $xr6
	xvpermi.d	$xr6, $xr5, 68
	xvrepl128vei.w	$xr6, $xr6, 1
	xvadd.w	$xr5, $xr5, $xr6
	xvpickve2gr.w	$t6, $xr5, 0
	move	$s3, $a0
	bne	$s2, $s1, .LBB6_184
	b	.LBB6_186
	.p2align	4, , 16
.LBB6_178:                              #   in Loop: Header=BB6_163 Depth=1
	move	$t8, $s6
	move	$s0, $s5
.LBB6_179:                              # %.lr.ph19.i.preheader
                                        #   in Loop: Header=BB6_163 Depth=1
	move	$s1, $t8
	move	$s2, $s0
	.p2align	4, , 16
.LBB6_180:                              # %.lr.ph19.i
                                        #   Parent Loop BB6_163 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$s0, $s2, -1
	st.b	$a5, $s2, -1
	addi.d	$t8, $s1, -1
	addi.w	$t7, $t7, -1
	st.b	$a4, $s1, -1
	move	$s1, $t8
	move	$s2, $s0
	bnez	$t7, .LBB6_180
.LBB6_181:                              # %._crit_edge20.loopexit.i
                                        #   in Loop: Header=BB6_163 Depth=1
	addi.d	$t7, $s8, -1
	add.d	$t6, $t7, $t6
	sub.d	$t6, $t6, $t2
	move	$s5, $s0
	move	$s6, $t8
	bne	$t4, $a2, .LBB6_173
.LBB6_182:                              #   in Loop: Header=BB6_163 Depth=1
	move	$t8, $s5
	move	$t7, $s6
	bne	$t1, $ra, .LBB6_187
	b	.LBB6_189
	.p2align	4, , 16
.LBB6_183:                              #   in Loop: Header=BB6_163 Depth=1
	move	$s0, $s1
	move	$t7, $s6
	move	$t8, $s5
.LBB6_184:                              # %.lr.ph29.i.preheader
                                        #   in Loop: Header=BB6_163 Depth=1
	add.d	$t6, $t6, $s0
	.p2align	4, , 16
.LBB6_185:                              # %.lr.ph29.i
                                        #   Parent Loop BB6_163 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.b	$a4, $t8, -1
	addi.d	$t8, $t8, -1
	st.b	$a5, $t7, -1
	addi.w	$s0, $s0, -1
	addi.d	$t7, $t7, -1
	bnez	$s0, .LBB6_185
.LBB6_186:                              # %._crit_edge30.i
                                        #   in Loop: Header=BB6_163 Depth=1
	beq	$t1, $ra, .LBB6_189
.LBB6_187:                              # %._crit_edge30.i
                                        #   in Loop: Header=BB6_163 Depth=1
	ld.d	$s0, $sp, 272                   # 8-byte Folded Reload
	addi.w	$s0, $s0, 0
	beq	$t3, $s0, .LBB6_189
# %bb.188:                              #   in Loop: Header=BB6_163 Depth=1
	slli.d	$s0, $t1, 2
	ld.d	$s1, $sp, 192                   # 8-byte Folded Reload
	ldx.w	$s0, $s1, $s0
	ld.d	$s1, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s1, $s1, %pc_lo12(impmtx)
	ld.d	$s2, $sp, 200                   # 8-byte Folded Reload
	ldx.w	$t5, $s2, $t5
	slli.d	$s0, $s0, 3
	ldx.d	$s0, $s1, $s0
	slli.d	$t5, $t5, 2
	fldx.s	$fa5, $s0, $t5
	fld.s	$fa6, $a1, 0
	fadd.s	$fa5, $fa5, $fa6
	fst.s	$fa5, $a1, 0
.LBB6_189:                              #   in Loop: Header=BB6_163 Depth=1
	blt	$t1, $a3, .LBB6_194
# %bb.190:                              #   in Loop: Header=BB6_163 Depth=1
	blt	$t3, $a3, .LBB6_194
# %bb.191:                              #   in Loop: Header=BB6_163 Depth=1
	add.d	$t0, $t4, $t0
	addi.d	$s5, $t8, -1
	st.b	$a4, $t8, -1
	addi.d	$s6, $t7, -1
	addi.w	$t6, $t6, 2
	st.b	$a4, $t7, -1
	move	$s8, $t2
	ld.d	$t1, $sp, 280                   # 8-byte Folded Reload
	bge	$t1, $t6, .LBB6_163
	b	.LBB6_193
	.p2align	4, , 16
.LBB6_192:                              #   in Loop: Header=BB6_163 Depth=1
	addi.d	$t2, $s8, -1
	move	$t4, $a2
	nor	$t7, $t2, $zero
	add.w	$t7, $s8, $t7
	bnez	$t7, .LBB6_166
	b	.LBB6_172
.LBB6_193:                              # %._crit_edge42.i
	ori	$s0, $zero, 1
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	bge	$a0, $s0, .LBB6_195
	b	.LBB6_197
.LBB6_194:
	move	$s5, $t8
	move	$s6, $t7
	ori	$s0, $zero, 1
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	blt	$a0, $s0, .LBB6_197
.LBB6_195:                              # %.lr.ph50.preheader.i
	ld.d	$s1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 120                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB6_196:                              # %.lr.ph50.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s7, 0
	ld.d	$a1, $s1, 0
	move	$a2, $s5
	pcaddu18i	$ra, %call36(gapireru)
	jirl	$ra, $ra, 0
	addi.d	$s2, $s2, -1
	addi.d	$s1, $s1, 8
	addi.d	$s7, $s7, 8
	bnez	$s2, .LBB6_196
.LBB6_197:                              # %.preheader.i
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s8, $sp, 72                    # 8-byte Folded Reload
	blt	$s2, $s0, .LBB6_200
# %bb.198:                              # %.lr.ph52.preheader.i
	move	$s0, $s8
	move	$s1, $s2
	.p2align	4, , 16
.LBB6_199:                              # %.lr.ph52.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s4, 0
	ld.d	$a1, $s0, 0
	move	$a2, $s6
	pcaddu18i	$ra, %call36(gapireru)
	jirl	$ra, $ra, 0
	addi.d	$s1, $s1, -1
	addi.d	$s0, $s0, 8
	addi.d	$s4, $s4, 8
	bnez	$s1, .LBB6_199
.LBB6_200:                              # %Atracking_localhom_gapmap.exit
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$s3, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 96                    # 8-byte Folded Reload
.LBB6_201:
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align_gapmap.mseq1)
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.w	$a3, $a0, 0
	lu12i.w	$a4, 1220
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	blt	$a2, $a3, .LBB6_217
# %bb.202:
	ori	$a0, $a4, 2881
	bge	$a3, $a0, .LBB6_217
# %bb.203:
	ori	$s0, $zero, 1
	blt	$s3, $s0, .LBB6_206
.LBB6_204:                              # %.lr.ph398
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s1, $a0, %pc_lo12(A__align_gapmap.mseq1)
	.p2align	4, , 16
.LBB6_205:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s5, 0
	ld.d	$a1, $s1, 0
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	addi.d	$s1, $s1, 8
	addi.d	$s3, $s3, -1
	addi.d	$s5, $s5, 8
	bnez	$s3, .LBB6_205
.LBB6_206:                              # %.preheader
	blt	$s2, $s0, .LBB6_209
# %bb.207:                              # %.lr.ph400
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s0, $a0, %pc_lo12(A__align_gapmap.mseq2)
	.p2align	4, , 16
.LBB6_208:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s8, 0
	ld.d	$a1, $s0, 0
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	addi.d	$s0, $s0, 8
	addi.d	$s2, $s2, -1
	addi.d	$s8, $s8, 8
	bnez	$s2, .LBB6_208
.LBB6_209:                              # %._crit_edge401
	fmov.s	$fa0, $fs0
	addi.d	$sp, $fp, -704
	fld.d	$fs0, $sp, 608                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 616                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 624                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 632                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 640                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 648                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 656                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 664                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 672                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 680                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 688                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 696                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 704
	ret
.LBB6_210:                              # %vector.ph659
	fld.s	$fa0, $a0, 0
	move	$a6, $a4
	bstrins.d	$a6, $zero, 3, 0
	xvreplve0.w	$xr0, $xr0
	addi.d	$a5, $s0, 32
	addi.d	$a7, $a2, 36
	addi.d	$t0, $a3, 36
	xvrepli.b	$xr1, 0
	move	$t1, $a6
	.p2align	4, , 16
.LBB6_211:                              # %vector.body662
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr2, $a5, -32
	xvld	$xr3, $a5, 0
	xvfadd.s	$xr2, $xr2, $xr0
	xvfadd.s	$xr3, $xr3, $xr0
	xvst	$xr2, $a7, -32
	xvst	$xr3, $a7, 0
	xvst	$xr1, $t0, -32
	xvst	$xr1, $t0, 0
	addi.d	$t1, $t1, -16
	addi.d	$a5, $a5, 64
	addi.d	$a7, $a7, 64
	addi.d	$t0, $t0, 64
	bnez	$t1, .LBB6_211
# %bb.212:                              # %middle.block669
	beq	$a4, $a6, .LBB6_72
# %bb.213:                              # %vec.epilog.iter.check674
	andi	$a5, $a4, 12
	beqz	$a5, .LBB6_232
.LBB6_214:                              # %vec.epilog.ph673
	move	$a7, $a4
	fld.s	$fa0, $a0, 0
	bstrins.d	$a7, $zero, 1, 0
	ori	$t0, $zero, 1
	move	$a5, $a4
	bstrins.d	$a5, $t0, 1, 0
	vreplvei.w	$vr0, $vr0, 0
	slli.d	$t1, $a6, 2
	alsl.d	$t0, $a6, $s0, 2
	addi.d	$t2, $t1, 4
	add.d	$t1, $a2, $t2
	add.d	$t2, $a3, $t2
	sub.d	$a6, $a6, $a7
	vrepli.b	$vr1, 0
	.p2align	4, , 16
.LBB6_215:                              # %vec.epilog.vector.body679
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr2, $t0, 0
	vfadd.s	$vr2, $vr2, $vr0
	vst	$vr2, $t1, 0
	vst	$vr1, $t2, 0
	addi.d	$t0, $t0, 16
	addi.d	$t1, $t1, 16
	addi.d	$a6, $a6, 4
	addi.d	$t2, $t2, 16
	bnez	$a6, .LBB6_215
# %bb.216:                              # %vec.epilog.middle.block686
	bne	$a4, $a7, .LBB6_70
	b	.LBB6_72
.LBB6_217:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	pcalau12i	$a1, %pc_hi20(.L.str)
	addi.d	$a1, $a1, %pc_lo12(.L.str)
	ori	$a4, $a4, 2880
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	pcaddu18i	$ra, %call36(ErrorExit)
	jirl	$ra, $ra, 0
	ori	$s0, $zero, 1
	bge	$s3, $s0, .LBB6_204
	b	.LBB6_206
.LBB6_218:                              # %vector.ph564
	fld.s	$fa0, $a0, 0
	move	$a5, $a3
	bstrins.d	$a5, $zero, 3, 0
	xvreplve0.w	$xr0, $xr0
	ld.d	$a4, $sp, 280                   # 8-byte Folded Reload
	addi.d	$a4, $a4, 36
	addi.d	$a6, $a1, 32
	move	$a7, $a5
	.p2align	4, , 16
.LBB6_219:                              # %vector.body567
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr1, $a6, -32
	xvld	$xr2, $a6, 0
	xvld	$xr3, $a4, -32
	xvld	$xr4, $a4, 0
	xvfadd.s	$xr1, $xr0, $xr1
	xvfadd.s	$xr2, $xr0, $xr2
	xvfadd.s	$xr1, $xr3, $xr1
	xvfadd.s	$xr2, $xr4, $xr2
	xvst	$xr1, $a4, -32
	xvst	$xr2, $a4, 0
	addi.d	$a4, $a4, 64
	addi.d	$a7, $a7, -16
	addi.d	$a6, $a6, 64
	bnez	$a7, .LBB6_219
# %bb.220:                              # %middle.block576
	beq	$a3, $a5, .LBB6_57
# %bb.221:                              # %vec.epilog.iter.check
	andi	$a4, $a3, 12
	beqz	$a4, .LBB6_233
.LBB6_222:                              # %vec.epilog.ph
	move	$a6, $a3
	fld.s	$fa0, $a0, 0
	bstrins.d	$a6, $zero, 1, 0
	ori	$a7, $zero, 1
	move	$a4, $a3
	bstrins.d	$a4, $a7, 1, 0
	vreplvei.w	$vr0, $vr0, 0
	ld.d	$a7, $sp, 280                   # 8-byte Folded Reload
	alsl.d	$a7, $a5, $a7, 2
	addi.d	$a7, $a7, 4
	alsl.d	$t0, $a5, $a1, 2
	sub.d	$a5, $a5, $a6
	.p2align	4, , 16
.LBB6_223:                              # %vec.epilog.vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr1, $t0, 0
	vld	$vr2, $a7, 0
	vfadd.s	$vr1, $vr0, $vr1
	vfadd.s	$vr1, $vr2, $vr1
	vst	$vr1, $a7, 0
	addi.d	$a7, $a7, 16
	addi.d	$a5, $a5, 4
	addi.d	$t0, $t0, 16
	bnez	$a5, .LBB6_223
# %bb.224:                              # %vec.epilog.middle.block
	bne	$a3, $a6, .LBB6_55
	b	.LBB6_57
.LBB6_225:                              # %vector.ph607
	fld.s	$fa0, $a0, 0
	move	$a5, $a3
	bstrins.d	$a5, $zero, 3, 0
	xvreplve0.w	$xr0, $xr0
	addi.d	$a4, $s0, 36
	addi.d	$a6, $a1, 32
	move	$a7, $a5
	.p2align	4, , 16
.LBB6_226:                              # %vector.body610
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr1, $a6, -32
	xvld	$xr2, $a6, 0
	xvld	$xr3, $a4, -32
	xvld	$xr4, $a4, 0
	xvfadd.s	$xr1, $xr0, $xr1
	xvfadd.s	$xr2, $xr0, $xr2
	xvfadd.s	$xr1, $xr3, $xr1
	xvfadd.s	$xr2, $xr4, $xr2
	xvst	$xr1, $a4, -32
	xvst	$xr2, $a4, 0
	addi.d	$a4, $a4, 64
	addi.d	$a7, $a7, -16
	addi.d	$a6, $a6, 64
	bnez	$a7, .LBB6_226
# %bb.227:                              # %middle.block619
	beq	$a3, $a5, .LBB6_69
# %bb.228:                              # %vec.epilog.iter.check624
	andi	$a4, $a3, 12
	beqz	$a4, .LBB6_234
.LBB6_229:                              # %vec.epilog.ph623
	move	$a6, $a3
	fld.s	$fa0, $a0, 0
	bstrins.d	$a6, $zero, 1, 0
	ori	$a7, $zero, 1
	move	$a4, $a3
	bstrins.d	$a4, $a7, 1, 0
	vreplvei.w	$vr0, $vr0, 0
	alsl.d	$a7, $a5, $s0, 2
	addi.d	$a7, $a7, 4
	alsl.d	$t0, $a5, $a1, 2
	sub.d	$a5, $a5, $a6
	.p2align	4, , 16
.LBB6_230:                              # %vec.epilog.vector.body629
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr1, $t0, 0
	vld	$vr2, $a7, 0
	vfadd.s	$vr1, $vr0, $vr1
	vfadd.s	$vr1, $vr2, $vr1
	vst	$vr1, $a7, 0
	addi.d	$a7, $a7, 16
	addi.d	$a5, $a5, 4
	addi.d	$t0, $t0, 16
	bnez	$a5, .LBB6_230
# %bb.231:                              # %vec.epilog.middle.block637
	bne	$a3, $a6, .LBB6_59
	b	.LBB6_69
.LBB6_232:
	addi.d	$a5, $a6, 1
	b	.LBB6_70
.LBB6_233:
	addi.d	$a4, $a5, 1
	b	.LBB6_55
.LBB6_234:
	addi.d	$a4, $a5, 1
	b	.LBB6_59
.Lfunc_end6:
	.size	A__align_gapmap, .Lfunc_end6-A__align_gapmap
                                        # -- End function
	.globl	translate_and_Calign            # -- Begin function translate_and_Calign
	.p2align	5
	.type	translate_and_Calign,@function
translate_and_Calign:                   # @translate_and_Calign
# %bb.0:
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	st.d	$s4, $sp, 8                     # 8-byte Folded Spill
	ori	$a7, $zero, 1
	move	$s1, $a6
	move	$fp, $a1
	bne	$a4, $a7, .LBB7_3
# %bb.1:
	beq	$a5, $a7, .LBB7_3
# %bb.2:
	ld.d	$s0, $a0, 0
	addi.w	$s3, $a5, 1
	b	.LBB7_7
.LBB7_3:
	beq	$a4, $a7, .LBB7_6
# %bb.4:
	ori	$a1, $zero, 1
	bne	$a5, $a1, .LBB7_6
# %bb.5:
	ld.d	$s0, $fp, 0
	addi.w	$s3, $a4, 1
	move	$fp, $a0
	move	$a3, $a2
	b	.LBB7_7
.LBB7_6:
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	pcaddu18i	$ra, %call36(ErrorExit)
	jirl	$ra, $ra, 0
	move	$s0, $zero
	move	$fp, $zero
	move	$a3, $zero
	move	$s3, $zero
.LBB7_7:
	addi.w	$a4, $s3, -2
	addi.d	$a0, $sp, 4
	move	$a1, $fp
	move	$a2, $s0
	move	$a5, $zero
	pcaddu18i	$ra, %call36(Calignm1)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.w	$a3, $a0, 0
	lu12i.w	$a2, 1220
	blt	$s1, $a3, .LBB7_13
# %bb.8:
	ori	$a0, $a2, 2881
	bge	$a3, $a0, .LBB7_13
# %bb.9:
	ori	$a0, $zero, 2
	addi.w	$s1, $s3, -1
	blt	$s3, $a0, .LBB7_12
.LBB7_10:                               # %.lr.ph.preheader
	move	$s3, $s1
	move	$s4, $s2
	.p2align	4, , 16
.LBB7_11:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 0
	ld.d	$a1, $s4, 0
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	addi.d	$s4, $s4, 8
	addi.d	$s3, $s3, -1
	addi.d	$fp, $fp, 8
	bnez	$s3, .LBB7_11
.LBB7_12:                               # %._crit_edge
	slli.d	$a0, $s1, 3
	ldx.d	$a1, $s2, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	movgr2fr.w	$fa0, $zero
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.LBB7_13:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	pcalau12i	$a1, %pc_hi20(.L.str)
	addi.d	$a1, $a1, %pc_lo12(.L.str)
	ori	$a4, $a2, 2880
	move	$a2, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	pcaddu18i	$ra, %call36(ErrorExit)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2
	addi.w	$s1, $s3, -1
	bge	$s3, $a0, .LBB7_10
	b	.LBB7_12
.Lfunc_end7:
	.size	translate_and_Calign, .Lfunc_end7-translate_and_Calign
                                        # -- End function
	.type	impmtx,@object                  # @impmtx
	.local	impmtx
	.comm	impmtx,8,8
	.type	imp_match_init_strict.nocount1,@object # @imp_match_init_strict.nocount1
	.local	imp_match_init_strict.nocount1
	.comm	imp_match_init_strict.nocount1,8,8
	.type	imp_match_init_strict.nocount2,@object # @imp_match_init_strict.nocount2
	.local	imp_match_init_strict.nocount2
	.comm	imp_match_init_strict.nocount2,8,8
	.type	impalloclen,@object             # @impalloclen
	.local	impalloclen
	.comm	impalloclen,4,4
	.type	A__align.m,@object              # @A__align.m
	.local	A__align.m
	.comm	A__align.m,8,8
	.type	A__align.ijp,@object            # @A__align.ijp
	.local	A__align.ijp
	.comm	A__align.ijp,8,8
	.type	A__align.mp,@object             # @A__align.mp
	.local	A__align.mp
	.comm	A__align.mp,8,8
	.type	A__align.w1,@object             # @A__align.w1
	.local	A__align.w1
	.comm	A__align.w1,8,8
	.type	A__align.w2,@object             # @A__align.w2
	.local	A__align.w2
	.comm	A__align.w2,8,8
	.type	A__align.match,@object          # @A__align.match
	.local	A__align.match
	.comm	A__align.match,8,8
	.type	A__align.initverticalw,@object  # @A__align.initverticalw
	.local	A__align.initverticalw
	.comm	A__align.initverticalw,8,8
	.type	A__align.lastverticalw,@object  # @A__align.lastverticalw
	.local	A__align.lastverticalw
	.comm	A__align.lastverticalw,8,8
	.type	A__align.mseq1,@object          # @A__align.mseq1
	.local	A__align.mseq1
	.comm	A__align.mseq1,8,8
	.type	A__align.mseq2,@object          # @A__align.mseq2
	.local	A__align.mseq2
	.comm	A__align.mseq2,8,8
	.type	A__align.mseq,@object           # @A__align.mseq
	.local	A__align.mseq
	.comm	A__align.mseq,8,8
	.type	A__align.ogcp1,@object          # @A__align.ogcp1
	.local	A__align.ogcp1
	.comm	A__align.ogcp1,8,8
	.type	A__align.ogcp2,@object          # @A__align.ogcp2
	.local	A__align.ogcp2
	.comm	A__align.ogcp2,8,8
	.type	A__align.fgcp1,@object          # @A__align.fgcp1
	.local	A__align.fgcp1
	.comm	A__align.fgcp1,8,8
	.type	A__align.fgcp2,@object          # @A__align.fgcp2
	.local	A__align.fgcp2
	.comm	A__align.fgcp2,8,8
	.type	A__align.cpmx1,@object          # @A__align.cpmx1
	.local	A__align.cpmx1
	.comm	A__align.cpmx1,8,8
	.type	A__align.cpmx2,@object          # @A__align.cpmx2
	.local	A__align.cpmx2
	.comm	A__align.cpmx2,8,8
	.type	A__align.intwork,@object        # @A__align.intwork
	.local	A__align.intwork
	.comm	A__align.intwork,8,8
	.type	A__align.floatwork,@object      # @A__align.floatwork
	.local	A__align.floatwork
	.comm	A__align.floatwork,8,8
	.type	A__align.orlgth1,@object        # @A__align.orlgth1
	.local	A__align.orlgth1
	.comm	A__align.orlgth1,4,4
	.type	A__align.orlgth2,@object        # @A__align.orlgth2
	.local	A__align.orlgth2
	.comm	A__align.orlgth2,4,4
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"alloclen=%d, resultlen=%d, N=%d\n"
	.size	.L.str, 33

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"LENGTH OVER!\n"
	.size	.L.str.1, 14

	.type	A__align_gapmap.m,@object       # @A__align_gapmap.m
	.local	A__align_gapmap.m
	.comm	A__align_gapmap.m,8,8
	.type	A__align_gapmap.ijp,@object     # @A__align_gapmap.ijp
	.local	A__align_gapmap.ijp
	.comm	A__align_gapmap.ijp,8,8
	.type	A__align_gapmap.mp,@object      # @A__align_gapmap.mp
	.local	A__align_gapmap.mp
	.comm	A__align_gapmap.mp,8,8
	.type	A__align_gapmap.w1,@object      # @A__align_gapmap.w1
	.local	A__align_gapmap.w1
	.comm	A__align_gapmap.w1,8,8
	.type	A__align_gapmap.w2,@object      # @A__align_gapmap.w2
	.local	A__align_gapmap.w2
	.comm	A__align_gapmap.w2,8,8
	.type	A__align_gapmap.match,@object   # @A__align_gapmap.match
	.local	A__align_gapmap.match
	.comm	A__align_gapmap.match,8,8
	.type	A__align_gapmap.initverticalw,@object # @A__align_gapmap.initverticalw
	.local	A__align_gapmap.initverticalw
	.comm	A__align_gapmap.initverticalw,8,8
	.type	A__align_gapmap.lastverticalw,@object # @A__align_gapmap.lastverticalw
	.local	A__align_gapmap.lastverticalw
	.comm	A__align_gapmap.lastverticalw,8,8
	.type	A__align_gapmap.mseq1,@object   # @A__align_gapmap.mseq1
	.local	A__align_gapmap.mseq1
	.comm	A__align_gapmap.mseq1,8,8
	.type	A__align_gapmap.mseq2,@object   # @A__align_gapmap.mseq2
	.local	A__align_gapmap.mseq2
	.comm	A__align_gapmap.mseq2,8,8
	.type	A__align_gapmap.mseq,@object    # @A__align_gapmap.mseq
	.local	A__align_gapmap.mseq
	.comm	A__align_gapmap.mseq,8,8
	.type	A__align_gapmap.ogcp1,@object   # @A__align_gapmap.ogcp1
	.local	A__align_gapmap.ogcp1
	.comm	A__align_gapmap.ogcp1,8,8
	.type	A__align_gapmap.ogcp2,@object   # @A__align_gapmap.ogcp2
	.local	A__align_gapmap.ogcp2
	.comm	A__align_gapmap.ogcp2,8,8
	.type	A__align_gapmap.fgcp1,@object   # @A__align_gapmap.fgcp1
	.local	A__align_gapmap.fgcp1
	.comm	A__align_gapmap.fgcp1,8,8
	.type	A__align_gapmap.fgcp2,@object   # @A__align_gapmap.fgcp2
	.local	A__align_gapmap.fgcp2
	.comm	A__align_gapmap.fgcp2,8,8
	.type	A__align_gapmap.cpmx1,@object   # @A__align_gapmap.cpmx1
	.local	A__align_gapmap.cpmx1
	.comm	A__align_gapmap.cpmx1,8,8
	.type	A__align_gapmap.cpmx2,@object   # @A__align_gapmap.cpmx2
	.local	A__align_gapmap.cpmx2
	.comm	A__align_gapmap.cpmx2,8,8
	.type	A__align_gapmap.intwork,@object # @A__align_gapmap.intwork
	.local	A__align_gapmap.intwork
	.comm	A__align_gapmap.intwork,8,8
	.type	A__align_gapmap.floatwork,@object # @A__align_gapmap.floatwork
	.local	A__align_gapmap.floatwork
	.comm	A__align_gapmap.floatwork,8,8
	.type	A__align_gapmap.orlgth1,@object # @A__align_gapmap.orlgth1
	.local	A__align_gapmap.orlgth1
	.comm	A__align_gapmap.orlgth1,4,4
	.type	A__align_gapmap.orlgth2,@object # @A__align_gapmap.orlgth2
	.local	A__align_gapmap.orlgth2
	.comm	A__align_gapmap.orlgth2,4,4
	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"ERROR in translate_and_Calign"
	.size	.L.str.2, 30

	.section	".note.GNU-stack","",@progbits
	.addrsig
