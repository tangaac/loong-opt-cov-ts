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
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI3_1:
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	4                               # 0x4
.LCPI3_2:
	.dword	3                               # 0x3
	.dword	4                               # 0x4
.LCPI3_3:
	.dword	1                               # 0x1
	.dword	2                               # 0x2
.LCPI3_4:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
.LCPI3_5:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
.LCPI3_6:
	.word	0                               # 0x0
	.word	4                               # 0x4
	.word	4                               # 0x4
	.word	4                               # 0x4
	.text
	.globl	A__align
	.p2align	5
	.type	A__align,@function
A__align:                               # @A__align
# %bb.0:
	addi.d	$sp, $sp, -400
	st.d	$ra, $sp, 392                   # 8-byte Folded Spill
	st.d	$fp, $sp, 384                   # 8-byte Folded Spill
	st.d	$s0, $sp, 376                   # 8-byte Folded Spill
	st.d	$s1, $sp, 368                   # 8-byte Folded Spill
	st.d	$s2, $sp, 360                   # 8-byte Folded Spill
	st.d	$s3, $sp, 352                   # 8-byte Folded Spill
	st.d	$s4, $sp, 344                   # 8-byte Folded Spill
	st.d	$s5, $sp, 336                   # 8-byte Folded Spill
	st.d	$s6, $sp, 328                   # 8-byte Folded Spill
	st.d	$s7, $sp, 320                   # 8-byte Folded Spill
	st.d	$s8, $sp, 312                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 304                  # 8-byte Folded Spill
	pcalau12i	$t0, %got_pc_hi20(penalty)
	ld.d	$t0, $t0, %got_pc_lo12(penalty)
	pcalau12i	$t1, %pc_hi20(A__align.orlgth1)
	st.d	$t1, $sp, 232                   # 8-byte Folded Spill
	ld.w	$s4, $t1, %pc_lo12(A__align.orlgth1)
	ld.w	$t0, $t0, 0
	st.d	$t0, $sp, 160                   # 8-byte Folded Spill
	st.d	$a7, $sp, 72                    # 8-byte Folded Spill
	st.d	$a6, $sp, 16                    # 8-byte Folded Spill
	move	$s1, $a5
	move	$s0, $a4
	st.d	$a3, $sp, 176                   # 8-byte Folded Spill
	st.d	$a2, $sp, 168                   # 8-byte Folded Spill
	move	$s6, $a1
	move	$s2, $a0
	pcalau12i	$a0, %pc_hi20(A__align.mseq1)
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(A__align.mseq2)
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	bnez	$s4, .LBB3_2
# %bb.1:
	pcalau12i	$a0, %got_pc_hi20(njob)
	ld.d	$fp, $a0, %got_pc_lo12(njob)
	ld.w	$a0, $fp, 0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(AllocateCharMtx)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 0
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	st.d	$a0, $a2, %pc_lo12(A__align.mseq1)
	move	$a0, $a1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(AllocateCharMtx)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	ld.w	$s4, $a1, %pc_lo12(A__align.orlgth1)
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(A__align.mseq2)
.LBB3_2:
	st.d	$s2, $sp, 152                   # 8-byte Folded Spill
	ld.d	$a0, $s2, 0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s6, 0
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	addi.w	$fp, $a0, 0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	pcalau12i	$s2, %pc_hi20(A__align.orlgth2)
	ld.w	$s3, $s2, %pc_lo12(A__align.orlgth2)
	st.d	$a0, $sp, 240                   # 8-byte Folded Spill
	addi.w	$s8, $a0, 0
	pcalau12i	$a0, %pc_hi20(A__align.w1)
	st.d	$a0, $sp, 280                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(A__align.w2)
	st.d	$a0, $sp, 272                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(A__align.initverticalw)
	st.d	$a0, $sp, 264                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(A__align.lastverticalw)
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(A__align.m)
	st.d	$a0, $sp, 192                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(A__align.mp)
	st.d	$a0, $sp, 184                   # 8-byte Folded Spill
	pcalau12i	$s7, %pc_hi20(A__align.mseq)
	pcalau12i	$a0, %pc_hi20(A__align.ogcp1)
	st.d	$a0, $sp, 224                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(A__align.ogcp2)
	st.d	$a0, $sp, 216                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(A__align.fgcp1)
	st.d	$a0, $sp, 200                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(A__align.fgcp2)
	st.d	$a0, $sp, 208                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(A__align.cpmx1)
	st.d	$a0, $sp, 296                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(A__align.cpmx2)
	st.d	$a0, $sp, 288                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(A__align.floatwork)
	st.d	$a0, $sp, 256                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(A__align.intwork)
	st.d	$a0, $sp, 248                   # 8-byte Folded Spill
	st.d	$s1, $sp, 64                    # 8-byte Folded Spill
	st.d	$s0, $sp, 120                   # 8-byte Folded Spill
	st.d	$fp, $sp, 136                   # 8-byte Folded Spill
	st.d	$s6, $sp, 56                    # 8-byte Folded Spill
	blt	$s4, $fp, .LBB3_4
# %bb.3:
	bge	$s3, $s8, .LBB3_8
.LBB3_4:
	ori	$a0, $zero, 1
	pcalau12i	$fp, %pc_hi20(A__align.match)
	blt	$s4, $a0, .LBB3_7
# %bb.5:
	blt	$s3, $a0, .LBB3_7
# %bb.6:
	ld.d	$a0, $sp, 280                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align.w1)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align.w2)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, %pc_lo12(A__align.match)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align.initverticalw)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align.lastverticalw)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align.m)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align.mp)
	pcaddu18i	$ra, %call36(FreeIntVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s7, %pc_lo12(A__align.mseq)
	pcaddu18i	$ra, %call36(FreeCharMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align.ogcp1)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align.ogcp2)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align.fgcp1)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align.fgcp2)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 296                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align.cpmx1)
	pcaddu18i	$ra, %call36(FreeFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 288                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align.cpmx2)
	pcaddu18i	$ra, %call36(FreeFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align.floatwork)
	pcaddu18i	$ra, %call36(FreeFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 248                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align.intwork)
	pcaddu18i	$ra, %call36(FreeIntMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	ld.w	$s4, $a0, %pc_lo12(A__align.orlgth1)
	ld.w	$s3, $s2, %pc_lo12(A__align.orlgth2)
.LBB3_7:
	pcalau12i	$a0, %pc_hi20(.LCPI3_0)
	fld.d	$fa0, $a0, %pc_lo12(.LCPI3_0)
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	movgr2fr.w	$fa1, $a0
	ffint.d.w	$fa1, $fa1
	fmul.d	$fa1, $fa1, $fa0
	ftintrz.w.d	$fa1, $fa1
	movfr2gr.s	$a0, $fa1
	slt	$a1, $a0, $s4
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s4, $a1
	or	$s4, $a1, $a0
	addi.w	$s0, $s4, 100
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	movgr2fr.w	$fa1, $a0
	ffint.d.w	$fa1, $fa1
	fmul.d	$fa0, $fa1, $fa0
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a0, $fa0
	slt	$a1, $a0, $s3
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s3, $a1
	or	$s3, $a1, $a0
	addi.w	$s1, $s3, 100
	st.d	$s2, $sp, 144                   # 8-byte Folded Spill
	addi.w	$s5, $s3, 102
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 280                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(A__align.w1)
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 272                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(A__align.w2)
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, %pc_lo12(A__align.match)
	addi.w	$s6, $s4, 102
	move	$a0, $s6
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 264                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(A__align.initverticalw)
	move	$a0, $s6
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(A__align.lastverticalw)
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 192                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(A__align.m)
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateIntVec)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(njob)
	ld.d	$a1, $a1, %got_pc_lo12(njob)
	ld.w	$a2, $a1, 0
	ld.d	$a1, $sp, 184                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(A__align.mp)
	add.w	$a1, $s1, $s0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(AllocateCharMtx)
	jirl	$ra, $ra, 0
	st.d	$a0, $s7, %pc_lo12(A__align.mseq)
	move	$a0, $s6
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(A__align.ogcp1)
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(A__align.ogcp2)
	move	$a0, $s6
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 200                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(A__align.fgcp1)
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 208                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(A__align.fgcp2)
	ori	$a0, $zero, 26
	move	$a1, $s6
	pcaddu18i	$ra, %call36(AllocateFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 296                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(A__align.cpmx1)
	ori	$a0, $zero, 26
	move	$a1, $s5
	pcaddu18i	$ra, %call36(AllocateFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 288                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(A__align.cpmx2)
	slt	$a0, $s1, $s0
	masknez	$a1, $s1, $a0
	maskeqz	$a0, $s0, $a0
	or	$a0, $a0, $a1
	addi.w	$s5, $a0, 2
	ori	$a1, $zero, 26
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(A__align.floatwork)
	ori	$a1, $zero, 27
	move	$a0, $s5
	ld.d	$fp, $sp, 232                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 144                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(AllocateIntMtx)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(A__align.intwork)
	st.w	$s4, $fp, %pc_lo12(A__align.orlgth1)
	st.w	$s3, $s2, %pc_lo12(A__align.orlgth2)
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 136                   # 8-byte Folded Reload
.LBB3_8:
	ori	$a0, $zero, 1
	blt	$s0, $a0, .LBB3_11
# %bb.9:                                # %.lr.ph
	ld.d	$a1, $s7, %pc_lo12(A__align.mseq)
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(A__align.mseq1)
	move	$a3, $s0
	ld.d	$a4, $sp, 152                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB3_10:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a5, $a1, 0
	st.d	$a5, $a2, 0
	ld.d	$a5, $a4, 0
	stx.b	$zero, $a5, $fp
	addi.d	$a4, $a4, 8
	addi.d	$a2, $a2, 8
	addi.d	$a3, $a3, -1
	addi.d	$a1, $a1, 8
	bnez	$a3, .LBB3_10
.LBB3_11:                               # %.preheader347
	blt	$s1, $a0, .LBB3_14
# %bb.12:                               # %.lr.ph354
	ld.d	$a1, $s7, %pc_lo12(A__align.mseq)
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align.mseq2)
	alsl.d	$a1, $s0, $a1, 3
	move	$a2, $s1
	move	$a3, $s6
	.p2align	4, , 16
.LBB3_13:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a4, $a1, 0
	st.d	$a4, $a0, 0
	ld.d	$a4, $a3, 0
	stx.b	$zero, $a4, $s8
	addi.d	$a1, $a1, 8
	addi.d	$a3, $a3, 8
	addi.d	$a2, $a2, -1
	addi.d	$a0, $a0, 8
	bnez	$a2, .LBB3_13
.LBB3_14:                               # %._crit_edge
	pcalau12i	$a0, %got_pc_hi20(commonAlloc1)
	ld.d	$fp, $a0, %got_pc_lo12(commonAlloc1)
	pcalau12i	$a0, %got_pc_hi20(commonAlloc2)
	ld.d	$s0, $a0, %got_pc_lo12(commonAlloc2)
	ld.d	$s5, $sp, 408
	ld.w	$a1, $fp, 0
	ld.w	$a0, $s0, 0
	ld.d	$a2, $sp, 160                   # 8-byte Folded Reload
	movgr2fr.w	$fs0, $a2
	blt	$a1, $s4, .LBB3_17
# %bb.15:                               # %._crit_edge
	blt	$a0, $s3, .LBB3_17
# %bb.16:                               # %._crit_edge490
	pcalau12i	$a0, %got_pc_hi20(commonIP)
	ld.d	$a0, $a0, %got_pc_lo12(commonIP)
	ld.d	$a0, $a0, 0
	ld.d	$s7, $sp, 152                   # 8-byte Folded Reload
	b	.LBB3_21
.LBB3_17:
	ld.d	$s7, $sp, 152                   # 8-byte Folded Reload
	beqz	$a1, .LBB3_20
# %bb.18:
	beqz	$a0, .LBB3_20
# %bb.19:
	pcalau12i	$a0, %got_pc_hi20(commonIP)
	ld.d	$a0, $a0, %got_pc_lo12(commonIP)
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(FreeIntMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	ld.w	$s4, $a0, %pc_lo12(A__align.orlgth1)
	ld.w	$a1, $fp, 0
	ld.w	$s3, $s2, %pc_lo12(A__align.orlgth2)
	ld.w	$a0, $s0, 0
.LBB3_20:
	slt	$a2, $a1, $s4
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $s4, $a2
	or	$s1, $a2, $a1
	slt	$a1, $a0, $s3
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s3, $a1
	or	$s2, $a1, $a0
	addi.w	$a0, $s1, 10
	addi.w	$a1, $s2, 10
	pcaddu18i	$ra, %call36(AllocateIntMtx)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(commonIP)
	ld.d	$a1, $a1, %got_pc_lo12(commonIP)
	st.d	$a0, $a1, 0
	st.w	$s1, $fp, 0
	st.w	$s2, $s0, 0
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
.LBB3_21:
	ld.d	$a1, $sp, 296                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(A__align.cpmx1)
	ffint.s.w	$fs0, $fs0
	pcalau12i	$a2, %pc_hi20(A__align.ijp)
	st.d	$a2, $sp, 48                    # 8-byte Folded Spill
	st.d	$a0, $a2, %pc_lo12(A__align.ijp)
	move	$a0, $s7
	ld.d	$s3, $sp, 168                   # 8-byte Folded Reload
	move	$a2, $s3
	ld.d	$s4, $sp, 136                   # 8-byte Folded Reload
	move	$a3, $s4
	ld.d	$s0, $sp, 120                   # 8-byte Folded Reload
	move	$a4, $s0
	pcaddu18i	$ra, %call36(cpmx_calc_new)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 288                   # 8-byte Folded Reload
	ld.d	$a1, $a0, %pc_lo12(A__align.cpmx2)
	move	$a0, $s6
	ld.d	$s2, $sp, 176                   # 8-byte Folded Reload
	move	$a2, $s2
	move	$a3, $s8
	move	$a4, $s1
	pcaddu18i	$ra, %call36(cpmx_calc_new)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align.ogcp1)
	beqz	$s5, .LBB3_23
# %bb.22:
	move	$a5, $s5
	move	$fp, $s6
	ld.d	$s6, $sp, 432
	ld.d	$s7, $sp, 424
	ld.d	$s5, $sp, 416
	move	$a1, $s0
	ld.d	$a2, $sp, 152                   # 8-byte Folded Reload
	move	$a3, $s3
	move	$a4, $s4
	pcaddu18i	$ra, %call36(new_OpeningGapCount)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align.ogcp2)
	move	$a1, $s1
	move	$a2, $fp
	move	$a3, $s2
	move	$a4, $s8
	move	$a5, $s5
	pcaddu18i	$ra, %call36(new_OpeningGapCount)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align.fgcp1)
	move	$a1, $s0
	ld.d	$a2, $sp, 152                   # 8-byte Folded Reload
	move	$a3, $s3
	move	$a4, $s4
	move	$a5, $s7
	ld.d	$s7, $sp, 152                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(new_FinalGapCount)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align.fgcp2)
	move	$a1, $s1
	move	$a2, $fp
	move	$a3, $s2
	move	$a4, $s8
	move	$a5, $s6
	pcaddu18i	$ra, %call36(new_FinalGapCount)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	fcvt.d.s	$fa0, $fs0
	ld.d	$s2, $sp, 96                    # 8-byte Folded Reload
	bge	$s4, $a0, .LBB3_24
	b	.LBB3_30
.LBB3_23:
	move	$a1, $s0
	move	$a2, $s7
	move	$a3, $s3
	move	$a4, $s4
	pcaddu18i	$ra, %call36(st_OpeningGapCount)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align.ogcp2)
	move	$a1, $s1
	move	$a2, $s6
	move	$a3, $s2
	move	$a4, $s8
	pcaddu18i	$ra, %call36(st_OpeningGapCount)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align.fgcp1)
	move	$a1, $s0
	move	$a2, $s7
	move	$a3, $s3
	move	$a4, $s4
	pcaddu18i	$ra, %call36(st_FinalGapCount)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align.fgcp2)
	move	$a1, $s1
	move	$a2, $s6
	move	$a3, $s2
	move	$a4, $s8
	pcaddu18i	$ra, %call36(st_FinalGapCount)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	fcvt.d.s	$fa0, $fs0
	ld.d	$s2, $sp, 96                    # 8-byte Folded Reload
	blt	$s4, $a0, .LBB3_30
.LBB3_24:                               # %.lr.ph357
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(A__align.ogcp1)
	ld.d	$a2, $sp, 200                   # 8-byte Folded Reload
	ld.d	$a3, $a2, %pc_lo12(A__align.fgcp1)
	bstrpick.d	$a2, $s2, 30, 0
	ori	$a4, $zero, 4
	bltu	$a2, $a4, .LBB3_27
# %bb.25:                               # %vector.memcheck
	alsl.d	$a4, $a2, $a3, 2
	bgeu	$a1, $a4, .LBB3_199
# %bb.26:                               # %vector.memcheck
	alsl.d	$a4, $a2, $a1, 2
	bgeu	$a3, $a4, .LBB3_199
.LBB3_27:
	move	$a4, $zero
.LBB3_28:                               # %scalar.ph.preheader
	alsl.d	$a3, $a4, $a3, 2
	alsl.d	$a1, $a4, $a1, 2
	sub.d	$a2, $a2, $a4
	vldi	$vr1, -912
	vldi	$vr2, -928
	.p2align	4, , 16
.LBB3_29:                               # %scalar.ph
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
	bnez	$a2, .LBB3_29
.LBB3_30:                               # %.preheader346
	ld.d	$t0, $sp, 240                   # 8-byte Folded Reload
	blt	$s8, $a0, .LBB3_37
# %bb.31:                               # %.lr.ph359
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align.ogcp2)
	ld.d	$a1, $sp, 208                   # 8-byte Folded Reload
	ld.d	$a2, $a1, %pc_lo12(A__align.fgcp2)
	bstrpick.d	$a1, $t0, 30, 0
	ori	$a3, $zero, 4
	bltu	$a1, $a3, .LBB3_34
# %bb.32:                               # %vector.memcheck519
	alsl.d	$a3, $a1, $a2, 2
	bgeu	$a0, $a3, .LBB3_202
# %bb.33:                               # %vector.memcheck519
	alsl.d	$a3, $a1, $a0, 2
	bgeu	$a2, $a3, .LBB3_202
.LBB3_34:
	move	$a3, $zero
.LBB3_35:                               # %scalar.ph525.preheader
	alsl.d	$a2, $a3, $a2, 2
	alsl.d	$a0, $a3, $a0, 2
	sub.d	$a1, $a1, $a3
	vldi	$vr1, -912
	vldi	$vr2, -928
	.p2align	4, , 16
.LBB3_36:                               # %scalar.ph525
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
	bnez	$a1, .LBB3_36
.LBB3_37:                               # %._crit_edge360
	ld.d	$a0, $sp, 280                   # 8-byte Folded Reload
	ld.d	$s5, $a0, %pc_lo12(A__align.w1)
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	ld.d	$s2, $a0, %pc_lo12(A__align.w2)
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align.initverticalw)
	ld.d	$a1, $sp, 288                   # 8-byte Folded Reload
	ld.d	$s3, $a1, %pc_lo12(A__align.cpmx2)
	ld.d	$a1, $sp, 296                   # 8-byte Folded Reload
	ld.d	$s6, $a1, %pc_lo12(A__align.cpmx1)
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	ld.d	$s4, $a1, %pc_lo12(A__align.floatwork)
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	ld.d	$fp, $a1, %pc_lo12(A__align.intwork)
	ori	$a7, $zero, 1
	st.d	$a0, $sp, 296                   # 8-byte Folded Spill
	move	$a1, $s3
	move	$a2, $s6
	move	$a3, $zero
	ld.d	$s0, $sp, 136                   # 8-byte Folded Reload
	move	$a4, $s0
	move	$a5, $s4
	move	$a6, $fp
	pcaddu18i	$ra, %call36(match_calc)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(impmtx)
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	slli.d	$a0, $a0, 32
	st.d	$a0, $sp, 264                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	st.d	$s3, $sp, 288                   # 8-byte Folded Spill
	st.d	$s6, $sp, 280                   # 8-byte Folded Spill
	beqz	$a0, .LBB3_47
# %bb.38:
	ld.d	$s3, $sp, 96                    # 8-byte Folded Reload
	ori	$a0, $zero, 1
	blt	$s0, $a0, .LBB3_41
# %bb.39:                               # %.lr.ph.i
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(impmtx)
	bstrpick.d	$a1, $s3, 30, 0
	ld.d	$a2, $sp, 296                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB3_40:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $a0, 0
	fld.s	$fa0, $a3, 0
	fld.s	$fa1, $a2, 0
	fadd.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $a2, 0
	addi.d	$a2, $a2, 4
	addi.d	$a1, $a1, -1
	addi.d	$a0, $a0, 8
	bnez	$a1, .LBB3_40
.LBB3_41:                               # %imp_match_out_vead_tate.exit
	ori	$a7, $zero, 1
	ori	$s0, $zero, 1
	move	$a0, $s5
	ld.d	$a1, $sp, 280                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 288                   # 8-byte Folded Reload
	move	$a3, $zero
	move	$a4, $s8
	move	$a5, $s4
	move	$s6, $fp
	move	$a6, $fp
	pcaddu18i	$ra, %call36(match_calc)
	jirl	$ra, $ra, 0
	beqz	$s8, .LBB3_56
# %bb.42:                               # %.lr.ph.preheader.i
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(impmtx)
	ld.d	$a5, $a0, 0
	ld.d	$t3, $sp, 240                   # 8-byte Folded Reload
	bstrpick.d	$a3, $t3, 31, 0
	ori	$a0, $zero, 8
	bltu	$a3, $a0, .LBB3_45
# %bb.43:                               # %vector.memcheck540
	addi.w	$a0, $zero, -4
	lu32i.d	$a0, 3
	alsl.d	$a0, $t3, $a0, 2
	bstrpick.d	$a0, $a0, 33, 2
	slli.d	$a0, $a0, 2
	addi.d	$a0, $a0, 4
	add.d	$a1, $a5, $a0
	bgeu	$s5, $a1, .LBB3_216
# %bb.44:                               # %vector.memcheck540
	add.d	$a0, $s5, $a0
	bgeu	$a5, $a0, .LBB3_216
.LBB3_45:
	move	$a1, $a5
	move	$a0, $t3
	move	$a2, $s5
	.p2align	4, , 16
.LBB3_46:                               # %.lr.ph.i324
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $a1, 0
	fld.s	$fa1, $a2, 0
	addi.w	$a0, $a0, -1
	addi.d	$a1, $a1, 4
	addi.d	$a3, $a2, 4
	fadd.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $a2, 0
	move	$a2, $a3
	bnez	$a0, .LBB3_46
	b	.LBB3_48
.LBB3_47:                               # %.critedge
	ori	$a7, $zero, 1
	move	$a0, $s5
	move	$a1, $s6
	move	$a2, $s3
	move	$a3, $zero
	move	$a4, $s8
	move	$a5, $s4
	move	$a6, $fp
	pcaddu18i	$ra, %call36(match_calc)
	jirl	$ra, $ra, 0
	ld.d	$t3, $sp, 240                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 96                    # 8-byte Folded Reload
	move	$s6, $fp
.LBB3_48:                               # %imp_match_out_vead.exit
	pcalau12i	$a0, %got_pc_hi20(outgap)
	ld.d	$a0, $a0, %got_pc_lo12(outgap)
	ld.w	$a1, $a0, 0
	ori	$a0, $zero, 1
	beq	$a1, $a0, .LBB3_57
# %bb.49:                               # %.preheader345
	blt	$s8, $a0, .LBB3_65
# %bb.50:                               # %.lr.ph363
	pcalau12i	$a0, %got_pc_hi20(offset)
	ld.d	$a0, $a0, %got_pc_lo12(offset)
	ld.w	$a0, $a0, 0
	addi.d	$a1, $t3, 1
	bstrpick.d	$a1, $a1, 31, 0
	addi.d	$a2, $a1, -1
	ori	$a4, $zero, 4
	ori	$a3, $zero, 1
	bltu	$a2, $a4, .LBB3_54
# %bb.51:                               # %vector.ph567
	move	$a4, $a2
	bstrins.d	$a4, $zero, 1, 0
	ori	$a5, $zero, 1
	move	$a3, $a2
	bstrins.d	$a3, $a5, 1, 0
	vreplgr2vr.w	$vr0, $a0
	pcalau12i	$a5, %pc_hi20(.LCPI3_1)
	vld	$vr1, $a5, %pc_lo12(.LCPI3_1)
	addi.d	$a5, $s5, 4
	lu52i.d	$a6, $zero, -1026
	vreplgr2vr.d	$vr2, $a6
	move	$a6, $a4
	.p2align	4, , 16
.LBB3_52:                               # %vector.body572
                                        # =>This Inner Loop Header: Depth=1
	vmul.w	$vr3, $vr0, $vr1
	vpickve2gr.w	$a7, $vr3, 2
	movgr2fr.w	$fa4, $a7
	ffint.d.w	$fa4, $fa4
	vpickve2gr.w	$a7, $vr3, 3
	movgr2fr.w	$fa5, $a7
	movfr2gr.d	$a7, $fa4
	ffint.d.w	$fa4, $fa5
	vinsgr2vr.d	$vr5, $a7, 0
	movfr2gr.d	$a7, $fa4
	vinsgr2vr.d	$vr5, $a7, 1
	vpickve2gr.w	$a7, $vr3, 0
	movgr2fr.w	$fa4, $a7
	ffint.d.w	$fa4, $fa4
	vpickve2gr.w	$a7, $vr3, 1
	movgr2fr.w	$fa3, $a7
	movfr2gr.d	$a7, $fa4
	ffint.d.w	$fa3, $fa3
	vld	$vr4, $a5, 0
	vinsgr2vr.d	$vr6, $a7, 0
	movfr2gr.d	$a7, $fa3
	vinsgr2vr.d	$vr6, $a7, 1
	vfmul.d	$vr3, $vr6, $vr2
	vreplvei.w	$vr6, $vr4, 0
	fcvt.d.s	$fa6, $fa6
	vfmul.d	$vr5, $vr5, $vr2
	movfr2gr.d	$a7, $fa6
	vreplvei.w	$vr6, $vr4, 1
	fcvt.d.s	$fa6, $fa6
	vinsgr2vr.d	$vr7, $a7, 0
	movfr2gr.d	$a7, $fa6
	vreplvei.w	$vr6, $vr4, 2
	fcvt.d.s	$fa6, $fa6
	vinsgr2vr.d	$vr7, $a7, 1
	movfr2gr.d	$a7, $fa6
	vreplvei.w	$vr4, $vr4, 3
	fcvt.d.s	$fa4, $fa4
	vinsgr2vr.d	$vr6, $a7, 0
	movfr2gr.d	$a7, $fa4
	vinsgr2vr.d	$vr6, $a7, 1
	vfadd.d	$vr3, $vr7, $vr3
	vreplvei.d	$vr4, $vr3, 0
	fcvt.s.d	$fa4, $fa4
	vfadd.d	$vr5, $vr6, $vr5
	movfr2gr.s	$a7, $fa4
	vreplvei.d	$vr3, $vr3, 1
	fcvt.s.d	$fa3, $fa3
	vinsgr2vr.w	$vr4, $a7, 0
	movfr2gr.s	$a7, $fa3
	vreplvei.d	$vr3, $vr5, 0
	fcvt.s.d	$fa3, $fa3
	vinsgr2vr.w	$vr4, $a7, 1
	movfr2gr.s	$a7, $fa3
	vreplvei.d	$vr3, $vr5, 1
	fcvt.s.d	$fa3, $fa3
	vinsgr2vr.w	$vr4, $a7, 2
	movfr2gr.s	$a7, $fa3
	vinsgr2vr.w	$vr4, $a7, 3
	vst	$vr4, $a5, 0
	vaddi.wu	$vr1, $vr1, 4
	addi.d	$a6, $a6, -4
	addi.d	$a5, $a5, 16
	bnez	$a6, .LBB3_52
# %bb.53:                               # %middle.block577
	beq	$a2, $a4, .LBB3_65
.LBB3_54:                               # %scalar.ph565.preheader
	mul.d	$a2, $a0, $a3
	alsl.d	$a4, $a3, $s5, 2
	sub.d	$a1, $a1, $a3
	vldi	$vr0, -800
	.p2align	4, , 16
.LBB3_55:                               # %scalar.ph565
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
	bnez	$a1, .LBB3_55
	b	.LBB3_65
.LBB3_56:                               # %imp_match_out_vead.exit.thread
	pcalau12i	$a0, %got_pc_hi20(outgap)
	ld.d	$a0, $a0, %got_pc_lo12(outgap)
	ld.w	$a0, $a0, 0
	ld.d	$t3, $sp, 240                   # 8-byte Folded Reload
	bne	$a0, $s0, .LBB3_65
.LBB3_57:                               # %.preheader342
	ori	$a1, $zero, 1
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	blt	$a0, $a1, .LBB3_61
# %bb.58:                               # %.lr.ph369
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align.ogcp1)
	ld.d	$a2, $sp, 200                   # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(A__align.fgcp1)
	addi.d	$a3, $s3, 1
	bstrpick.d	$a3, $a3, 31, 0
	addi.d	$a4, $a3, -1
	ori	$a5, $zero, 8
	bgeu	$a4, $a5, .LBB3_205
.LBB3_59:                               # %scalar.ph608.preheader
	ld.d	$a4, $sp, 296                   # 8-byte Folded Reload
	alsl.d	$a4, $a1, $a4, 2
	alsl.d	$a2, $a1, $a2, 2
	addi.d	$a2, $a2, -4
	sub.d	$a1, $a3, $a1
	.p2align	4, , 16
.LBB3_60:                               # %scalar.ph608
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $a0, 0
	fld.s	$fa1, $a2, 0
	fld.s	$fa2, $a4, 0
	fadd.s	$fa0, $fa0, $fa1
	fadd.s	$fa0, $fa2, $fa0
	fst.s	$fa0, $a4, 0
	addi.d	$a4, $a4, 4
	addi.d	$a1, $a1, -1
	addi.d	$a2, $a2, 4
	bnez	$a1, .LBB3_60
.LBB3_61:                               # %.preheader340
	ori	$a1, $zero, 1
	blt	$s8, $a1, .LBB3_77
# %bb.62:                               # %.lr.ph372
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align.ogcp2)
	ld.d	$a2, $sp, 208                   # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(A__align.fgcp2)
	addi.d	$a3, $t3, 1
	bstrpick.d	$a3, $a3, 31, 0
	addi.d	$a4, $a3, -1
	ori	$a5, $zero, 8
	bgeu	$a4, $a5, .LBB3_210
.LBB3_63:                               # %scalar.ph638.preheader
	alsl.d	$a4, $a1, $s5, 2
	alsl.d	$a2, $a1, $a2, 2
	addi.d	$a2, $a2, -4
	sub.d	$a1, $a3, $a1
	.p2align	4, , 16
.LBB3_64:                               # %scalar.ph638
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $a0, 0
	fld.s	$fa1, $a2, 0
	fld.s	$fa2, $a4, 0
	fadd.s	$fa0, $fa0, $fa1
	fadd.s	$fa0, $fa2, $fa0
	fst.s	$fa0, $a4, 0
	addi.d	$a4, $a4, 4
	addi.d	$a1, $a1, -1
	addi.d	$a2, $a2, 4
	bnez	$a1, .LBB3_64
	b	.LBB3_73
.LBB3_65:                               # %.preheader343
	ori	$a1, $zero, 1
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	blt	$a0, $a1, .LBB3_72
# %bb.66:                               # %.lr.ph366
	pcalau12i	$a0, %got_pc_hi20(offset)
	ld.d	$a0, $a0, %got_pc_lo12(offset)
	ld.w	$a0, $a0, 0
	addi.d	$a2, $s3, 1
	bstrpick.d	$a2, $a2, 31, 0
	addi.d	$a3, $a2, -1
	ori	$a4, $zero, 4
	bltu	$a3, $a4, .LBB3_70
# %bb.67:                               # %vector.ph582
	move	$a4, $a3
	bstrins.d	$a4, $zero, 1, 0
	ori	$a5, $zero, 1
	move	$a1, $a3
	bstrins.d	$a1, $a5, 1, 0
	vreplgr2vr.w	$vr0, $a0
	pcalau12i	$a5, %pc_hi20(.LCPI3_1)
	vld	$vr1, $a5, %pc_lo12(.LCPI3_1)
	ld.d	$a5, $sp, 296                   # 8-byte Folded Reload
	addi.d	$a5, $a5, 4
	lu52i.d	$a6, $zero, -1026
	vreplgr2vr.d	$vr2, $a6
	move	$a6, $a4
	.p2align	4, , 16
.LBB3_68:                               # %vector.body587
                                        # =>This Inner Loop Header: Depth=1
	vmul.w	$vr3, $vr0, $vr1
	vpickve2gr.w	$a7, $vr3, 2
	movgr2fr.w	$fa4, $a7
	ffint.d.w	$fa4, $fa4
	vpickve2gr.w	$a7, $vr3, 3
	movgr2fr.w	$fa5, $a7
	movfr2gr.d	$a7, $fa4
	ffint.d.w	$fa4, $fa5
	vinsgr2vr.d	$vr5, $a7, 0
	movfr2gr.d	$a7, $fa4
	vinsgr2vr.d	$vr5, $a7, 1
	vpickve2gr.w	$a7, $vr3, 0
	movgr2fr.w	$fa4, $a7
	ffint.d.w	$fa4, $fa4
	vpickve2gr.w	$a7, $vr3, 1
	movgr2fr.w	$fa3, $a7
	movfr2gr.d	$a7, $fa4
	ffint.d.w	$fa3, $fa3
	vld	$vr4, $a5, 0
	vinsgr2vr.d	$vr6, $a7, 0
	movfr2gr.d	$a7, $fa3
	vinsgr2vr.d	$vr6, $a7, 1
	vfmul.d	$vr3, $vr6, $vr2
	vreplvei.w	$vr6, $vr4, 0
	fcvt.d.s	$fa6, $fa6
	vfmul.d	$vr5, $vr5, $vr2
	movfr2gr.d	$a7, $fa6
	vreplvei.w	$vr6, $vr4, 1
	fcvt.d.s	$fa6, $fa6
	vinsgr2vr.d	$vr7, $a7, 0
	movfr2gr.d	$a7, $fa6
	vreplvei.w	$vr6, $vr4, 2
	fcvt.d.s	$fa6, $fa6
	vinsgr2vr.d	$vr7, $a7, 1
	movfr2gr.d	$a7, $fa6
	vreplvei.w	$vr4, $vr4, 3
	fcvt.d.s	$fa4, $fa4
	vinsgr2vr.d	$vr6, $a7, 0
	movfr2gr.d	$a7, $fa4
	vinsgr2vr.d	$vr6, $a7, 1
	vfadd.d	$vr3, $vr7, $vr3
	vreplvei.d	$vr4, $vr3, 0
	fcvt.s.d	$fa4, $fa4
	vfadd.d	$vr5, $vr6, $vr5
	movfr2gr.s	$a7, $fa4
	vreplvei.d	$vr3, $vr3, 1
	fcvt.s.d	$fa3, $fa3
	vinsgr2vr.w	$vr4, $a7, 0
	movfr2gr.s	$a7, $fa3
	vreplvei.d	$vr3, $vr5, 0
	fcvt.s.d	$fa3, $fa3
	vinsgr2vr.w	$vr4, $a7, 1
	movfr2gr.s	$a7, $fa3
	vreplvei.d	$vr3, $vr5, 1
	fcvt.s.d	$fa3, $fa3
	vinsgr2vr.w	$vr4, $a7, 2
	movfr2gr.s	$a7, $fa3
	vinsgr2vr.w	$vr4, $a7, 3
	vst	$vr4, $a5, 0
	vaddi.wu	$vr1, $vr1, 4
	addi.d	$a6, $a6, -4
	addi.d	$a5, $a5, 16
	bnez	$a6, .LBB3_68
# %bb.69:                               # %middle.block594
	beq	$a3, $a4, .LBB3_72
.LBB3_70:                               # %scalar.ph580.preheader
	mul.d	$a3, $a0, $a1
	ld.d	$a4, $sp, 296                   # 8-byte Folded Reload
	alsl.d	$a4, $a1, $a4, 2
	sub.d	$a1, $a2, $a1
	vldi	$vr0, -800
	.p2align	4, , 16
.LBB3_71:                               # %scalar.ph580
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
	bnez	$a1, .LBB3_71
.LBB3_72:                               # %.loopexit341
	ori	$a0, $zero, 1
	blt	$s8, $a0, .LBB3_77
.LBB3_73:                               # %.lr.ph380
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	ld.d	$a6, $a0, %pc_lo12(A__align.ogcp1)
	addi.d	$a0, $a6, 4
	ld.d	$a1, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a2, $a1, %pc_lo12(A__align.m)
	ld.d	$a1, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a3, $a1, %pc_lo12(A__align.mp)
	addi.d	$a1, $t3, 1
	bstrpick.d	$a1, $a1, 31, 0
	addi.d	$a5, $a1, -1
	ori	$a7, $zero, 12
	ori	$a4, $zero, 1
	bgeu	$a5, $a7, .LBB3_124
.LBB3_74:                               # %scalar.ph668.preheader
	alsl.d	$a2, $a4, $a2, 2
	alsl.d	$a3, $a4, $a3, 2
	alsl.d	$a5, $a4, $s5, 2
	addi.d	$a5, $a5, -4
	sub.d	$a1, $a1, $a4
	.p2align	4, , 16
.LBB3_75:                               # %scalar.ph668
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $a5, 0
	fld.s	$fa1, $a0, 0
	fadd.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $a2, 0
	st.w	$zero, $a3, 0
	addi.d	$a2, $a2, 4
	addi.d	$a3, $a3, 4
	addi.d	$a1, $a1, -1
	addi.d	$a5, $a5, 4
	bnez	$a1, .LBB3_75
.LBB3_76:
	move	$a0, $zero
	b	.LBB3_78
.LBB3_77:                               # %._crit_edge381
	ori	$a0, $zero, 1
	beqz	$s8, .LBB3_215
.LBB3_78:
	ld.d	$a3, $sp, 264                   # 8-byte Folded Reload
	ori	$a1, $zero, 0
	lu32i.d	$a1, -1
	add.d	$a1, $a3, $a1
	srai.d	$a1, $a1, 30
	fldx.s	$fa0, $s5, $a1
	st.d	$a0, $sp, 272                   # 8-byte Folded Spill
	move	$a0, $zero
.LBB3_79:
	pcalau12i	$a1, %got_pc_hi20(outgap)
	ld.d	$a1, $a1, %got_pc_lo12(outgap)
	st.d	$a1, $sp, 8                     # 8-byte Folded Spill
	ld.w	$a1, $a1, 0
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s0, $a2, %pc_lo12(A__align.lastverticalw)
	sltu	$a2, $zero, $a1
	add.w	$fp, $a2, $s3
	ori	$a2, $zero, 2
	fst.s	$fa0, $s0, 0
	blt	$fp, $a2, .LBB3_100
# %bb.80:                               # %.lr.ph405
	st.d	$s6, $sp, 256                   # 8-byte Folded Spill
	st.d	$s4, $sp, 264                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	sltui	$a1, $a1, 1
	or	$a0, $a1, $a0
	st.d	$a0, $sp, 248                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(impmtx)
	st.d	$a0, $sp, 232                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	ld.d	$a4, $a0, %pc_lo12(A__align.ogcp2)
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align.ijp)
	st.d	$a0, $sp, 216                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align.m)
	ld.d	$a1, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(A__align.mp)
	ld.d	$a2, $sp, 208                   # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(A__align.fgcp2)
	st.d	$a2, $sp, 208                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 200                   # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(A__align.fgcp1)
	st.d	$a2, $sp, 200                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 224                   # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(A__align.ogcp1)
	st.d	$a2, $sp, 192                   # 8-byte Folded Spill
	ori	$a2, $zero, 0
	lu32i.d	$a2, -1
	add.d	$a2, $a3, $a2
	srai.d	$s1, $a2, 30
	addi.w	$a2, $t3, -1
	st.d	$a2, $sp, 184                   # 8-byte Folded Spill
	bstrpick.d	$a2, $a2, 31, 0
	slli.d	$a3, $a2, 2
	addi.d	$a3, $a3, 4
	st.d	$a3, $sp, 112                   # 8-byte Folded Spill
	addi.d	$a2, $a2, 1
	st.d	$a2, $sp, 40                    # 8-byte Folded Spill
	bstrpick.d	$a2, $a2, 32, 3
	slli.d	$a3, $a2, 3
	slli.d	$a2, $a2, 5
	st.d	$a2, $sp, 32                    # 8-byte Folded Spill
	st.d	$a3, $sp, 104                   # 8-byte Folded Spill
	sub.d	$a2, $t3, $a3
	st.d	$a2, $sp, 24                    # 8-byte Folded Spill
	addi.d	$a0, $a0, 4
	st.d	$a0, $sp, 176                   # 8-byte Folded Spill
	addi.d	$a0, $a1, 4
	st.d	$a0, $sp, 168                   # 8-byte Folded Spill
	st.d	$a4, $sp, 224                   # 8-byte Folded Spill
	addi.d	$a0, $a4, 4
	st.d	$a0, $sp, 160                   # 8-byte Folded Spill
	movgr2fr.w	$fs0, $zero
	ori	$s7, $zero, 1
	b	.LBB3_82
	.p2align	4, , 16
.LBB3_81:                               # %._crit_edge397
                                        #   in Loop: Header=BB3_82 Depth=1
	fldx.s	$fa0, $s3, $s1
	addi.d	$s7, $s7, 1
	fstx.s	$fa0, $s0, $a0
	move	$s5, $s3
	beq	$s7, $fp, .LBB3_101
.LBB3_82:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_98 Depth 2
                                        #     Child Loop BB3_87 Depth 2
                                        #     Child Loop BB3_91 Depth 2
	addi.d	$s4, $s7, -1
	slli.d	$s6, $s4, 2
	ld.d	$a0, $sp, 296                   # 8-byte Folded Reload
	fldx.s	$fa0, $a0, $s6
	move	$s3, $s2
	move	$s2, $s5
	fst.s	$fa0, $s5, 0
	move	$a0, $s3
	ld.d	$a1, $sp, 280                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 288                   # 8-byte Folded Reload
	move	$a3, $s7
	move	$a4, $s8
	ld.d	$a5, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 256                   # 8-byte Folded Reload
	move	$a7, $zero
	pcaddu18i	$ra, %call36(match_calc)
	jirl	$ra, $ra, 0
	slli.d	$a1, $s7, 3
	ld.d	$a0, $sp, 248                   # 8-byte Folded Reload
	bnez	$a0, .LBB3_88
# %bb.83:                               # %.lr.ph.preheader.i326
                                        #   in Loop: Header=BB3_82 Depth=1
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	ldx.d	$a4, $a0, $a1
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	ori	$a2, $zero, 7
	bltu	$a0, $a2, .LBB3_86
# %bb.84:                               # %vector.memcheck684
                                        #   in Loop: Header=BB3_82 Depth=1
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	add.d	$a0, $a4, $a2
	bgeu	$s3, $a0, .LBB3_97
# %bb.85:                               # %vector.memcheck684
                                        #   in Loop: Header=BB3_82 Depth=1
	add.d	$a0, $s3, $a2
	bgeu	$a4, $a0, .LBB3_97
.LBB3_86:                               #   in Loop: Header=BB3_82 Depth=1
	move	$a0, $a4
	ld.d	$a3, $sp, 240                   # 8-byte Folded Reload
	move	$a2, $s3
	.p2align	4, , 16
.LBB3_87:                               # %.lr.ph.i327
                                        #   Parent Loop BB3_82 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.s	$fa0, $a0, 0
	fld.s	$fa1, $a2, 0
	addi.w	$a3, $a3, -1
	addi.d	$a0, $a0, 4
	addi.d	$a4, $a2, 4
	fadd.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $a2, 0
	move	$a2, $a4
	bnez	$a3, .LBB3_87
.LBB3_88:                               # %imp_match_out_vead.exit332
                                        #   in Loop: Header=BB3_82 Depth=1
	slli.d	$a0, $s7, 2
	ld.d	$a2, $sp, 296                   # 8-byte Folded Reload
	fldx.s	$fa0, $a2, $a0
	fst.s	$fa0, $s3, 0
	ld.d	$a2, $sp, 272                   # 8-byte Folded Reload
	bnez	$a2, .LBB3_81
# %bb.89:                               # %.lr.ph396.preheader
                                        #   in Loop: Header=BB3_82 Depth=1
	move	$a2, $zero
	move	$a3, $zero
	fld.s	$fa2, $s2, 0
	ld.d	$a4, $sp, 224                   # 8-byte Folded Reload
	fld.s	$fa3, $a4, 4
	ld.d	$a4, $sp, 200                   # 8-byte Folded Reload
	fldx.s	$fa0, $a4, $s6
	ld.d	$a4, $sp, 216                   # 8-byte Folded Reload
	ldx.d	$a4, $a4, $a1
	ld.d	$a1, $sp, 192                   # 8-byte Folded Reload
	fldx.s	$fa1, $a1, $a0
	fadd.s	$fa2, $fa2, $fa3
	addi.d	$a1, $s3, 4
	addi.d	$a4, $a4, 4
	addi.d	$a5, $zero, -1
	ld.d	$a6, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 168                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 176                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 208                   # 8-byte Folded Reload
	move	$t2, $s2
	b	.LBB3_91
	.p2align	4, , 16
.LBB3_90:                               #   in Loop: Header=BB3_91 Depth=2
	fadd.s	$fa3, $fa3, $fa4
	fcmp.cult.s	$fcc0, $fa3, $fa2
	fsel	$fa2, $fa3, $fa2, $fcc0
	movcf2gr	$t3, $fcc0
	fld.s	$fa3, $a1, 0
	masknez	$t4, $a2, $t3
	maskeqz	$a3, $a3, $t3
	or	$a3, $a3, $t4
	fadd.s	$fa3, $fs0, $fa3
	fst.s	$fa3, $a1, 0
	addi.d	$t2, $t2, 4
	addi.d	$t1, $t1, 4
	addi.d	$a1, $a1, 4
	addi.d	$a4, $a4, 4
	addi.d	$t0, $t0, 4
	addi.d	$a7, $a7, 4
	addi.d	$a6, $a6, 4
	addi.w	$a2, $a2, 1
	addi.d	$a5, $a5, -1
	beq	$s8, $a2, .LBB3_81
.LBB3_91:                               # %.lr.ph396
                                        #   Parent Loop BB3_82 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.s	$fa4, $t1, 0
	fld.s	$fa3, $t2, 0
	fadd.s	$fa4, $fa2, $fa4
	fcmp.cule.s	$fcc0, $fa4, $fa3
	st.w	$zero, $a4, 0
	fmov.s	$fs0, $fa3
	bcnez	$fcc0, .LBB3_93
# %bb.92:                               #   in Loop: Header=BB3_91 Depth=2
	add.d	$t3, $a3, $a5
	st.w	$t3, $a4, 0
	fmov.s	$fs0, $fa4
.LBB3_93:                               #   in Loop: Header=BB3_91 Depth=2
	fld.s	$fa5, $t0, 0
	fld.s	$fa4, $a6, 0
	fadd.s	$fa6, $fa0, $fa5
	fcmp.cule.s	$fcc0, $fa6, $fs0
	bcnez	$fcc0, .LBB3_95
# %bb.94:                               #   in Loop: Header=BB3_91 Depth=2
	ld.w	$t3, $a7, 0
	sub.d	$t3, $s7, $t3
	st.w	$t3, $a4, 0
	fmov.s	$fs0, $fa6
.LBB3_95:                               #   in Loop: Header=BB3_91 Depth=2
	fadd.s	$fa6, $fa1, $fa3
	fcmp.cult.s	$fcc0, $fa6, $fa5
	bcnez	$fcc0, .LBB3_90
# %bb.96:                               #   in Loop: Header=BB3_91 Depth=2
	fst.s	$fa6, $t0, 0
	st.w	$s4, $a7, 0
	b	.LBB3_90
.LBB3_97:                               # %vector.ph692
                                        #   in Loop: Header=BB3_82 Depth=1
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	add.d	$a0, $a4, $a2
	add.d	$a2, $s3, $a2
	addi.d	$a3, $s3, 16
	addi.d	$a4, $a4, 16
	ld.d	$a5, $sp, 104                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB3_98:                               # %vector.body696
                                        #   Parent Loop BB3_82 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $a4, -16
	vld	$vr1, $a4, 0
	vld	$vr2, $a3, -16
	vld	$vr3, $a3, 0
	vfadd.s	$vr0, $vr0, $vr2
	vfadd.s	$vr1, $vr1, $vr3
	vst	$vr0, $a3, -16
	vst	$vr1, $a3, 0
	addi.d	$a3, $a3, 32
	addi.d	$a5, $a5, -8
	addi.d	$a4, $a4, 32
	bnez	$a5, .LBB3_98
# %bb.99:                               # %middle.block707
                                        #   in Loop: Header=BB3_82 Depth=1
	ld.d	$a3, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a4, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a5, $sp, 104                   # 8-byte Folded Reload
	bne	$a4, $a5, .LBB3_87
	b	.LBB3_88
.LBB3_100:
	movgr2fr.w	$fs0, $zero
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	bnez	$a1, .LBB3_116
	b	.LBB3_102
.LBB3_101:                              # %._crit_edge406.loopexit
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.w	$a1, $s0, 0
	move	$s5, $s3
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 96                    # 8-byte Folded Reload
	ld.d	$t3, $sp, 240                   # 8-byte Folded Reload
	bnez	$a1, .LBB3_116
.LBB3_102:                              # %.preheader339
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	bnez	$a0, .LBB3_109
# %bb.103:                              # %.lr.ph411
	pcalau12i	$a0, %got_pc_hi20(offset)
	ld.d	$a0, $a0, %got_pc_lo12(offset)
	ld.w	$a0, $a0, 0
	addi.d	$a1, $t3, 1
	bstrpick.d	$a1, $a1, 31, 0
	addi.d	$a2, $a1, -1
	ori	$a4, $zero, 4
	ori	$a3, $zero, 1
	bltu	$a2, $a4, .LBB3_107
# %bb.104:                              # %vector.ph714
	move	$a4, $a2
	bstrins.d	$a4, $zero, 1, 0
	ori	$a5, $zero, 1
	move	$a3, $a2
	bstrins.d	$a3, $a5, 1, 0
	vreplgr2vr.w	$vr0, $a0
	vreplgr2vr.d	$vr1, $t3
	pcalau12i	$a5, %pc_hi20(.LCPI3_2)
	vld	$vr2, $a5, %pc_lo12(.LCPI3_2)
	pcalau12i	$a5, %pc_hi20(.LCPI3_3)
	vld	$vr3, $a5, %pc_lo12(.LCPI3_3)
	addi.d	$a5, $s5, 4
	lu52i.d	$a6, $zero, -1026
	vreplgr2vr.d	$vr4, $a6
	move	$a6, $a4
	.p2align	4, , 16
.LBB3_105:                              # %vector.body721
                                        # =>This Inner Loop Header: Depth=1
	vsub.d	$vr5, $vr1, $vr3
	vsub.d	$vr6, $vr1, $vr2
	vpickev.w	$vr5, $vr6, $vr5
	vmul.w	$vr5, $vr0, $vr5
	vpickve2gr.w	$a7, $vr5, 2
	movgr2fr.w	$fa6, $a7
	ffint.d.w	$fa6, $fa6
	vpickve2gr.w	$a7, $vr5, 3
	movgr2fr.w	$fa7, $a7
	movfr2gr.d	$a7, $fa6
	ffint.d.w	$fa6, $fa7
	vinsgr2vr.d	$vr7, $a7, 0
	movfr2gr.d	$a7, $fa6
	vinsgr2vr.d	$vr7, $a7, 1
	vpickve2gr.w	$a7, $vr5, 0
	movgr2fr.w	$fa6, $a7
	ffint.d.w	$fa6, $fa6
	vpickve2gr.w	$a7, $vr5, 1
	movgr2fr.w	$fa5, $a7
	movfr2gr.d	$a7, $fa6
	ffint.d.w	$fa5, $fa5
	vld	$vr6, $a5, 0
	vinsgr2vr.d	$vr8, $a7, 0
	movfr2gr.d	$a7, $fa5
	vinsgr2vr.d	$vr8, $a7, 1
	vfmul.d	$vr5, $vr8, $vr4
	vreplvei.w	$vr8, $vr6, 0
	fcvt.d.s	$ft0, $ft0
	vfmul.d	$vr7, $vr7, $vr4
	movfr2gr.d	$a7, $ft0
	vreplvei.w	$vr8, $vr6, 1
	fcvt.d.s	$ft0, $ft0
	vinsgr2vr.d	$vr9, $a7, 0
	movfr2gr.d	$a7, $ft0
	vreplvei.w	$vr8, $vr6, 2
	fcvt.d.s	$ft0, $ft0
	vinsgr2vr.d	$vr9, $a7, 1
	movfr2gr.d	$a7, $ft0
	vreplvei.w	$vr6, $vr6, 3
	fcvt.d.s	$fa6, $fa6
	vinsgr2vr.d	$vr8, $a7, 0
	movfr2gr.d	$a7, $fa6
	vinsgr2vr.d	$vr8, $a7, 1
	vfadd.d	$vr5, $vr9, $vr5
	vreplvei.d	$vr6, $vr5, 0
	fcvt.s.d	$fa6, $fa6
	vfadd.d	$vr7, $vr8, $vr7
	movfr2gr.s	$a7, $fa6
	vreplvei.d	$vr5, $vr5, 1
	fcvt.s.d	$fa5, $fa5
	vinsgr2vr.w	$vr6, $a7, 0
	movfr2gr.s	$a7, $fa5
	vreplvei.d	$vr5, $vr7, 0
	fcvt.s.d	$fa5, $fa5
	vinsgr2vr.w	$vr6, $a7, 1
	movfr2gr.s	$a7, $fa5
	vreplvei.d	$vr5, $vr7, 1
	fcvt.s.d	$fa5, $fa5
	vinsgr2vr.w	$vr6, $a7, 2
	movfr2gr.s	$a7, $fa5
	vinsgr2vr.w	$vr6, $a7, 3
	vst	$vr6, $a5, 0
	vaddi.du	$vr3, $vr3, 4
	vaddi.du	$vr2, $vr2, 4
	addi.d	$a6, $a6, -4
	addi.d	$a5, $a5, 16
	bnez	$a6, .LBB3_105
# %bb.106:                              # %middle.block728
	beq	$a2, $a4, .LBB3_109
.LBB3_107:                              # %scalar.ph712.preheader
	sub.w	$a2, $t3, $a3
	mul.d	$a2, $a0, $a2
	alsl.d	$a4, $a3, $s5, 2
	sub.d	$a1, $a1, $a3
	vldi	$vr0, -800
	.p2align	4, , 16
.LBB3_108:                              # %scalar.ph712
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
	bnez	$a1, .LBB3_108
.LBB3_109:                              # %.preheader338
	ori	$a0, $zero, 1
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	blt	$a1, $a0, .LBB3_116
# %bb.110:                              # %.lr.ph414
	pcalau12i	$a1, %got_pc_hi20(offset)
	ld.d	$a1, $a1, %got_pc_lo12(offset)
	ld.w	$a1, $a1, 0
	bstrpick.d	$a2, $s3, 31, 0
	movgr2fr.w	$fa0, $a1
	ffint.d.w	$fa1, $fa0
	movgr2fr.d	$fa0, $a2
	ffint.d.l	$fa0, $fa0
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(A__align.lastverticalw)
	addi.d	$a2, $s3, 1
	bstrpick.d	$a2, $a2, 31, 0
	addi.d	$a3, $a2, -1
	ori	$a4, $zero, 2
	fneg.d	$fa1, $fa1
	bltu	$a3, $a4, .LBB3_114
# %bb.111:                              # %vector.ph733
	move	$a5, $a3
	bstrins.d	$a5, $zero, 0, 0
	ori	$a0, $a3, 1
	addi.d	$a6, $a1, 8
	vldi	$vr2, -928
	move	$a7, $a5
	.p2align	4, , 16
.LBB3_112:                              # %vector.body736
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$t0, $a4, 31, 0
	addi.d	$t1, $a4, -1
	bstrpick.d	$t1, $t1, 31, 0
	movgr2fr.d	$fa3, $t1
	ffint.d.l	$fa3, $fa3
	movgr2fr.d	$fa4, $t0
	ffint.d.l	$fa4, $fa4
	fmul.d	$fa3, $fa3, $fa2
	fmul.d	$fa4, $fa4, $fa2
	fld.s	$fa5, $a6, -4
	fld.s	$fa6, $a6, 0
	fsub.d	$fa3, $fa0, $fa3
	fsub.d	$fa4, $fa0, $fa4
	fcvt.d.s	$fa5, $fa5
	fcvt.d.s	$fa6, $fa6
	fmadd.d	$fa3, $fa1, $fa3, $fa5
	fmadd.d	$fa4, $fa1, $fa4, $fa6
	fcvt.s.d	$fa3, $fa3
	fcvt.s.d	$fa4, $fa4
	fst.s	$fa3, $a6, -4
	fst.s	$fa4, $a6, 0
	addi.d	$a6, $a6, 8
	addi.d	$a7, $a7, -2
	addi.w	$a4, $a4, 2
	bnez	$a7, .LBB3_112
# %bb.113:                              # %middle.block741
	beq	$a3, $a5, .LBB3_116
.LBB3_114:                              # %scalar.ph731.preheader
	alsl.d	$a1, $a0, $a1, 2
	sub.d	$a2, $a2, $a0
	vldi	$vr2, -800
	.p2align	4, , 16
.LBB3_115:                              # %scalar.ph731
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
	bnez	$a2, .LBB3_115
.LBB3_116:                              # %.loopexit
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s3, $a0, %pc_lo12(A__align.lastverticalw)
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s6, $a0, %pc_lo12(A__align.mseq1)
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s4, $a0, %pc_lo12(A__align.mseq2)
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a6, $a0, %pc_lo12(A__align.ijp)
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	beqz	$a0, .LBB3_123
# %bb.117:
	ld.d	$a0, $s7, 0
	st.d	$a6, $sp, 288                   # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	move	$s7, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	add.w	$a0, $a0, $s7
	st.d	$a0, $sp, 296                   # 8-byte Folded Spill
	addi.w	$s8, $a0, 1
	move	$a0, $s8
	pcaddu18i	$ra, %call36(AllocateCharVec)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	move	$a0, $s8
	pcaddu18i	$ra, %call36(AllocateCharVec)
	jirl	$ra, $ra, 0
	ld.d	$ra, $sp, 288                   # 8-byte Folded Reload
	ld.w	$a3, $s0, 0
	ori	$a1, $zero, 1
	addi.w	$s8, $s7, 0
	move	$t0, $s1
	addi.w	$a2, $s1, 0
	beq	$a3, $a1, .LBB3_134
# %bb.118:
	fld.s	$fa0, $s3, 0
	blt	$s8, $a1, .LBB3_129
# %bb.119:                              # %.lr.ph.i333
	slli.d	$a1, $s7, 3
	bstrpick.d	$a1, $a1, 33, 3
	slli.d	$a1, $a1, 3
	slli.d	$a3, $t0, 32
	srai.d	$a3, $a3, 30
	bstrpick.d	$a4, $s7, 30, 0
	move	$a5, $s7
	b	.LBB3_121
	.p2align	4, , 16
.LBB3_120:                              #   in Loop: Header=BB3_121 Depth=1
	addi.d	$a4, $a4, -1
	addi.d	$a5, $a5, -1
	addi.d	$s3, $s3, 4
	beqz	$a4, .LBB3_129
.LBB3_121:                              # =>This Inner Loop Header: Depth=1
	fld.s	$fa1, $s3, 0
	fcmp.cult.s	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB3_120
# %bb.122:                              #   in Loop: Header=BB3_121 Depth=1
	ldx.d	$a6, $ra, $a1
	stx.w	$a5, $a6, $a3
	fmov.s	$fa0, $fa1
	b	.LBB3_120
.LBB3_123:
	st.d	$s1, $sp, 0
	move	$a0, $s5
	move	$a1, $s3
	move	$a2, $s7
	ld.d	$a3, $sp, 56                    # 8-byte Folded Reload
	move	$a4, $s6
	move	$s2, $a3
	move	$a5, $s4
	ld.d	$s3, $sp, 120                   # 8-byte Folded Reload
	move	$a7, $s3
	pcaddu18i	$ra, %call36(Atracking)
	jirl	$ra, $ra, 0
	b	.LBB3_190
.LBB3_124:                              # %vector.memcheck656
	addi.d	$a7, $a2, 4
	alsl.d	$t0, $a1, $a2, 2
	alsl.d	$t1, $a1, $s5, 2
	addi.d	$t1, $t1, -4
	sltu	$t1, $a7, $t1
	sltu	$t2, $s5, $t0
	and	$t1, $t1, $t2
	bnez	$t1, .LBB3_74
# %bb.125:                              # %vector.memcheck656
	addi.d	$a6, $a6, 8
	sltu	$a6, $a7, $a6
	sltu	$a7, $a0, $t0
	and	$a6, $a6, $a7
	bnez	$a6, .LBB3_74
# %bb.126:                              # %vector.ph670
	move	$a6, $a5
	bstrins.d	$a6, $zero, 2, 0
	ori	$a7, $zero, 1
	move	$a4, $a5
	bstrins.d	$a4, $a7, 2, 0
	vldrepl.w	$vr0, $a0, 0
	addi.d	$a7, $s5, 16
	addi.d	$t0, $a2, 20
	addi.d	$t1, $a3, 20
	vrepli.b	$vr1, 0
	move	$t2, $a6
	.p2align	4, , 16
.LBB3_127:                              # %vector.body673
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr2, $a7, -16
	vld	$vr3, $a7, 0
	vfadd.s	$vr2, $vr2, $vr0
	vfadd.s	$vr3, $vr3, $vr0
	vst	$vr2, $t0, -16
	vst	$vr3, $t0, 0
	vst	$vr1, $t1, -16
	vst	$vr1, $t1, 0
	addi.d	$t2, $t2, -8
	addi.d	$a7, $a7, 32
	addi.d	$t0, $t0, 32
	addi.d	$t1, $t1, 32
	bnez	$t2, .LBB3_127
# %bb.128:                              # %middle.block681
	bne	$a5, $a6, .LBB3_74
	b	.LBB3_76
.LBB3_129:                              # %.preheader2.i
	ori	$a1, $zero, 1
	blt	$a2, $a1, .LBB3_134
# %bb.130:                              # %.lr.ph7.i
	slli.d	$a1, $s7, 32
	srai.d	$a1, $a1, 29
	slli.d	$a3, $t0, 2
	bstrpick.d	$a3, $a3, 32, 2
	slli.d	$a3, $a3, 2
	bstrpick.d	$a4, $t0, 30, 0
	sub.d	$a5, $zero, $t0
	b	.LBB3_132
	.p2align	4, , 16
.LBB3_131:                              #   in Loop: Header=BB3_132 Depth=1
	addi.d	$a4, $a4, -1
	addi.d	$a5, $a5, 1
	addi.d	$s5, $s5, 4
	beqz	$a4, .LBB3_134
.LBB3_132:                              # =>This Inner Loop Header: Depth=1
	fld.s	$fa1, $s5, 0
	fcmp.cult.s	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB3_131
# %bb.133:                              #   in Loop: Header=BB3_132 Depth=1
	ldx.d	$a6, $ra, $a1
	stx.w	$a5, $a6, $a3
	fmov.s	$fa0, $fa1
	b	.LBB3_131
.LBB3_134:                              # %.loopexit.i
	bltz	$s8, .LBB3_142
# %bb.135:                              # %.lr.ph10.preheader.i
	addi.d	$a3, $s7, 1
	bstrpick.d	$a1, $a3, 31, 0
	ori	$a4, $zero, 4
	bgeu	$a1, $a4, .LBB3_137
# %bb.136:
	move	$a3, $zero
	b	.LBB3_140
.LBB3_137:                              # %vector.ph746
	pcalau12i	$a4, %pc_hi20(.LCPI3_4)
	vld	$vr0, $a4, %pc_lo12(.LCPI3_4)
	bstrpick.d	$a3, $a3, 31, 2
	slli.d	$a3, $a3, 2
	addi.d	$a4, $ra, 16
	move	$a5, $a3
	.p2align	4, , 16
.LBB3_138:                              # %vector.body749
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr1, $a4, -16
	vld	$vr2, $a4, 0
	vshuf4i.w	$vr3, $vr0, 8
	vaddi.wu	$vr4, $vr3, 1
	vaddi.wu	$vr3, $vr3, 3
	vpickve2gr.d	$a6, $vr1, 0
	vstelm.w	$vr4, $a6, 0, 0
	vpickve2gr.d	$a6, $vr1, 1
	vstelm.w	$vr4, $a6, 0, 1
	vpickve2gr.d	$a6, $vr2, 0
	vstelm.w	$vr3, $a6, 0, 0
	vpickve2gr.d	$a6, $vr2, 1
	vstelm.w	$vr3, $a6, 0, 1
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a5, $a5, -4
	addi.d	$a4, $a4, 32
	bnez	$a5, .LBB3_138
# %bb.139:                              # %middle.block756
	beq	$a1, $a3, .LBB3_142
.LBB3_140:                              # %.lr.ph10.i.preheader
	alsl.d	$a4, $a3, $ra, 3
	sub.d	$a1, $a1, $a3
	addi.d	$a3, $a3, 1
	.p2align	4, , 16
.LBB3_141:                              # %.lr.ph10.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a5, $a4, 0
	st.w	$a3, $a5, 0
	addi.d	$a4, $a4, 8
	addi.d	$a1, $a1, -1
	addi.d	$a3, $a3, 1
	bnez	$a1, .LBB3_141
.LBB3_142:                              # %.preheader1.i
	ld.d	$a1, $sp, 400
	bltz	$a2, .LBB3_150
# %bb.143:                              # %.lr.ph13.i
	ld.d	$a3, $ra, 0
	addi.d	$a5, $t0, 1
	bstrpick.d	$a4, $a5, 31, 0
	ori	$a6, $zero, 8
	bgeu	$a4, $a6, .LBB3_145
# %bb.144:
	move	$a5, $zero
	b	.LBB3_148
.LBB3_145:                              # %vector.ph761
	bstrpick.d	$a5, $a5, 31, 3
	slli.d	$a5, $a5, 3
	pcalau12i	$a6, %pc_hi20(.LCPI3_5)
	vld	$vr0, $a6, %pc_lo12(.LCPI3_5)
	addi.d	$a6, $a3, 16
	vrepli.b	$vr1, -1
	vrepli.w	$vr2, -5
	move	$a7, $a5
	.p2align	4, , 16
.LBB3_146:                              # %vector.body764
                                        # =>This Inner Loop Header: Depth=1
	vxor.v	$vr3, $vr0, $vr1
	vsub.w	$vr4, $vr2, $vr0
	vst	$vr3, $a6, -16
	vst	$vr4, $a6, 0
	vaddi.wu	$vr0, $vr0, 8
	addi.d	$a7, $a7, -8
	addi.d	$a6, $a6, 32
	bnez	$a7, .LBB3_146
# %bb.147:                              # %middle.block770
	beq	$a4, $a5, .LBB3_150
.LBB3_148:                              # %scalar.ph759.preheader
	alsl.d	$a3, $a5, $a3, 2
	nor	$a6, $a5, $zero
	sub.d	$a4, $a4, $a5
	.p2align	4, , 16
.LBB3_149:                              # %scalar.ph759
                                        # =>This Inner Loop Header: Depth=1
	st.w	$a6, $a3, 0
	addi.d	$a3, $a3, 4
	addi.d	$a4, $a4, -1
	addi.d	$a6, $a6, -1
	bnez	$a4, .LBB3_149
.LBB3_150:                              # %._crit_edge.i
	add.d	$a3, $fp, $s8
	add.d	$s3, $a3, $a2
	stx.b	$zero, $a3, $a2
	st.d	$a0, $sp, 272                   # 8-byte Folded Spill
	add.d	$a3, $a0, $s8
	add.d	$s5, $a3, $a2
	stx.b	$zero, $a3, $a2
	st.w	$zero, $a1, 0
	ld.d	$a0, $sp, 296                   # 8-byte Folded Reload
	st.d	$fp, $sp, 280                   # 8-byte Folded Spill
	bltz	$a0, .LBB3_182
# %bb.151:                              # %.lr.ph41.i.preheader
	move	$t4, $zero
	addi.w	$a2, $zero, -1
	ori	$a3, $zero, 1
	ori	$a4, $zero, 111
	ori	$a5, $zero, 45
	vrepli.b	$vr0, 0
	vrepli.b	$vr1, 45
	vrepli.b	$vr2, 111
	ori	$a7, $zero, 16
	move	$a0, $t0
	.p2align	4, , 16
.LBB3_152:                              # %.lr.ph41.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_158 Depth 2
                                        #     Child Loop BB3_169 Depth 2
                                        #     Child Loop BB3_165 Depth 2
                                        #     Child Loop BB3_174 Depth 2
	addi.w	$t1, $s7, 0
	slli.d	$t6, $t1, 3
	ldx.d	$t2, $ra, $t6
	addi.w	$t3, $t0, 0
	slli.d	$t7, $t3, 2
	ldx.w	$t5, $t2, $t7
	bge	$a2, $t5, .LBB3_160
# %bb.153:                              #   in Loop: Header=BB3_152 Depth=1
	beqz	$t5, .LBB3_181
# %bb.154:                              #   in Loop: Header=BB3_152 Depth=1
	sub.d	$t2, $s7, $t5
	move	$t5, $a2
	nor	$t8, $t2, $zero
	add.w	$fp, $s7, $t8
	beqz	$fp, .LBB3_161
.LBB3_155:                              # %.lr.ph19.i.preheader
                                        #   in Loop: Header=BB3_152 Depth=1
	move	$a6, $s8
	bltu	$fp, $a7, .LBB3_167
# %bb.156:                              # %.lr.ph19.i.preheader
                                        #   in Loop: Header=BB3_152 Depth=1
	sub.d	$s0, $s3, $s5
	bltu	$s0, $a7, .LBB3_167
# %bb.157:                              # %vector.ph801
                                        #   in Loop: Header=BB3_152 Depth=1
	bstrpick.d	$s2, $fp, 31, 0
	bstrpick.d	$s0, $s2, 31, 4
	slli.d	$s8, $s0, 4
	sub.d	$fp, $fp, $s8
	sub.d	$s0, $s5, $s8
	sub.d	$s1, $s3, $s8
	addi.d	$s3, $s3, -16
	addi.d	$s5, $s5, -16
	move	$ra, $s8
	.p2align	4, , 16
.LBB3_158:                              # %vector.body805
                                        #   Parent Loop BB3_152 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vst	$vr2, $s3, 0
	vst	$vr1, $s5, 0
	addi.d	$ra, $ra, -16
	addi.d	$s3, $s3, -16
	addi.d	$s5, $s5, -16
	bnez	$ra, .LBB3_158
# %bb.159:                              # %middle.block812
                                        #   in Loop: Header=BB3_152 Depth=1
	ld.d	$ra, $sp, 288                   # 8-byte Folded Reload
	bne	$s8, $s2, .LBB3_168
	b	.LBB3_170
	.p2align	4, , 16
.LBB3_160:                              #   in Loop: Header=BB3_152 Depth=1
	addi.d	$t2, $s7, -1
	nor	$t8, $t2, $zero
	add.w	$fp, $s7, $t8
	bnez	$fp, .LBB3_155
	.p2align	4, , 16
.LBB3_161:                              # %._crit_edge20.i
                                        #   in Loop: Header=BB3_152 Depth=1
	beq	$t5, $a2, .LBB3_171
.LBB3_162:                              # %.lr.ph29.preheader.i
                                        #   in Loop: Header=BB3_152 Depth=1
	addi.w	$t8, $zero, -9
	nor	$s1, $t5, $zero
	bltu	$t8, $t5, .LBB3_172
# %bb.163:                              # %.lr.ph29.preheader.i
                                        #   in Loop: Header=BB3_152 Depth=1
	sub.d	$t8, $s3, $s5
	ori	$a6, $zero, 8
	bltu	$t8, $a6, .LBB3_172
# %bb.164:                              # %vector.ph778
                                        #   in Loop: Header=BB3_152 Depth=1
	bstrpick.d	$t8, $s1, 30, 3
	slli.d	$s2, $t8, 3
	sub.d	$s0, $s1, $s2
	sub.d	$t8, $s5, $s2
	pcalau12i	$fp, %pc_hi20(.LCPI3_6)
	vld	$vr3, $fp, %pc_lo12(.LCPI3_6)
	sub.d	$fp, $s3, $s2
	vinsgr2vr.w	$vr4, $t4, 0
	vinsgr2vr.w	$vr5, $zero, 0
	vshuf.w	$vr3, $vr5, $vr4
	addi.d	$t4, $s3, -4
	addi.d	$s3, $s5, -4
	move	$s5, $s2
	vori.b	$vr4, $vr0, 0
	.p2align	4, , 16
.LBB3_165:                              # %vector.body782
                                        #   Parent Loop BB3_152 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vstelm.w	$vr1, $t4, 0, 0
	vstelm.w	$vr1, $t4, -4, 0
	vstelm.w	$vr2, $s3, 0, 0
	vstelm.w	$vr2, $s3, -4, 0
	vaddi.wu	$vr3, $vr3, 1
	vaddi.wu	$vr4, $vr4, 1
	addi.d	$s5, $s5, -8
	addi.d	$t4, $t4, -8
	addi.d	$s3, $s3, -8
	bnez	$s5, .LBB3_165
# %bb.166:                              # %middle.block790
                                        #   in Loop: Header=BB3_152 Depth=1
	vadd.w	$vr3, $vr4, $vr3
	vshuf4i.w	$vr4, $vr3, 14
	vadd.w	$vr3, $vr3, $vr4
	vreplvei.w	$vr4, $vr3, 1
	vadd.w	$vr3, $vr3, $vr4
	vpickve2gr.w	$t4, $vr3, 0
	bne	$s2, $s1, .LBB3_173
	b	.LBB3_175
	.p2align	4, , 16
.LBB3_167:                              #   in Loop: Header=BB3_152 Depth=1
	move	$s0, $s5
	move	$s1, $s3
.LBB3_168:                              # %.lr.ph19.i.preheader819
                                        #   in Loop: Header=BB3_152 Depth=1
	move	$s2, $s0
	move	$s3, $s1
	.p2align	4, , 16
.LBB3_169:                              # %.lr.ph19.i
                                        #   Parent Loop BB3_152 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$s1, $s3, -1
	st.b	$a4, $s3, -1
	addi.d	$s0, $s2, -1
	addi.w	$fp, $fp, -1
	st.b	$a5, $s2, -1
	move	$s2, $s0
	move	$s3, $s1
	bnez	$fp, .LBB3_169
.LBB3_170:                              # %._crit_edge20.loopexit.i
                                        #   in Loop: Header=BB3_152 Depth=1
	add.d	$t4, $s7, $t4
	add.d	$t4, $t8, $t4
	move	$s3, $s1
	move	$s5, $s0
	move	$s8, $a6
	bne	$t5, $a2, .LBB3_162
.LBB3_171:                              #   in Loop: Header=BB3_152 Depth=1
	move	$fp, $s3
	move	$t8, $s5
	bne	$t1, $s8, .LBB3_176
	b	.LBB3_178
	.p2align	4, , 16
.LBB3_172:                              #   in Loop: Header=BB3_152 Depth=1
	move	$s0, $s1
	move	$t8, $s5
	move	$fp, $s3
.LBB3_173:                              # %.lr.ph29.i.preheader
                                        #   in Loop: Header=BB3_152 Depth=1
	add.d	$t4, $t4, $s0
	.p2align	4, , 16
.LBB3_174:                              # %.lr.ph29.i
                                        #   Parent Loop BB3_152 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.b	$a5, $fp, -1
	addi.d	$fp, $fp, -1
	st.b	$a4, $t8, -1
	addi.w	$s0, $s0, -1
	addi.d	$t8, $t8, -1
	bnez	$s0, .LBB3_174
.LBB3_175:                              # %._crit_edge30.i
                                        #   in Loop: Header=BB3_152 Depth=1
	beq	$t1, $s8, .LBB3_178
.LBB3_176:                              # %._crit_edge30.i
                                        #   in Loop: Header=BB3_152 Depth=1
	addi.w	$s0, $a0, 0
	beq	$t3, $s0, .LBB3_178
# %bb.177:                              #   in Loop: Header=BB3_152 Depth=1
	ld.d	$s0, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s0, $s0, %pc_lo12(impmtx)
	ldx.d	$t6, $s0, $t6
	fldx.s	$fa3, $t6, $t7
	fld.s	$fa4, $a1, 0
	fadd.s	$fa3, $fa3, $fa4
	fst.s	$fa3, $a1, 0
.LBB3_178:                              #   in Loop: Header=BB3_152 Depth=1
	blt	$t1, $a3, .LBB3_183
# %bb.179:                              #   in Loop: Header=BB3_152 Depth=1
	blt	$t3, $a3, .LBB3_183
# %bb.180:                              #   in Loop: Header=BB3_152 Depth=1
	add.d	$t0, $t5, $t0
	addi.d	$s3, $fp, -1
	st.b	$a4, $fp, -1
	addi.d	$s5, $t8, -1
	addi.w	$t4, $t4, 2
	st.b	$a4, $t8, -1
	move	$s7, $t2
	ld.d	$t1, $sp, 296                   # 8-byte Folded Reload
	bge	$t1, $t4, .LBB3_152
	b	.LBB3_182
	.p2align	4, , 16
.LBB3_181:                              #   in Loop: Header=BB3_152 Depth=1
	addi.d	$t2, $s7, -1
	move	$t5, $a2
	nor	$t8, $t2, $zero
	add.w	$fp, $s7, $t8
	bnez	$fp, .LBB3_155
	b	.LBB3_161
.LBB3_182:                              # %._crit_edge42.i
	ori	$fp, $zero, 1
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 152                   # 8-byte Folded Reload
	bge	$a0, $fp, .LBB3_184
	b	.LBB3_186
.LBB3_183:
	move	$s3, $fp
	move	$s5, $t8
	ori	$fp, $zero, 1
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 152                   # 8-byte Folded Reload
	blt	$a0, $fp, .LBB3_186
.LBB3_184:                              # %.lr.ph50.preheader.i
	move	$s0, $s7
	ld.d	$s1, $sp, 120                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB3_185:                              # %.lr.ph50.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s6, 0
	ld.d	$a1, $s0, 0
	move	$a2, $s3
	pcaddu18i	$ra, %call36(gapireru)
	jirl	$ra, $ra, 0
	addi.d	$s1, $s1, -1
	addi.d	$s0, $s0, 8
	addi.d	$s6, $s6, 8
	bnez	$s1, .LBB3_185
.LBB3_186:                              # %.preheader.i
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	blt	$s1, $fp, .LBB3_189
# %bb.187:                              # %.lr.ph52.preheader.i
	move	$fp, $s2
	move	$s0, $s1
	.p2align	4, , 16
.LBB3_188:                              # %.lr.ph52.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s4, 0
	ld.d	$a1, $fp, 0
	move	$a2, $s5
	pcaddu18i	$ra, %call36(gapireru)
	jirl	$ra, $ra, 0
	addi.d	$s0, $s0, -1
	addi.d	$fp, $fp, 8
	addi.d	$s4, $s4, 8
	bnez	$s0, .LBB3_188
.LBB3_189:                              # %Atracking_localhom.exit
	ld.d	$a0, $sp, 280                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$s3, $sp, 120                   # 8-byte Folded Reload
.LBB3_190:
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align.mseq1)
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.w	$a3, $a0, 0
	lu12i.w	$a4, 1220
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	blt	$a2, $a3, .LBB3_219
# %bb.191:
	ori	$a0, $a4, 2881
	bge	$a3, $a0, .LBB3_219
# %bb.192:
	ori	$fp, $zero, 1
	blt	$s3, $fp, .LBB3_195
.LBB3_193:                              # %.lr.ph417
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s0, $a0, %pc_lo12(A__align.mseq1)
	.p2align	4, , 16
.LBB3_194:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s7, 0
	ld.d	$a1, $s0, 0
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	addi.d	$s0, $s0, 8
	addi.d	$s3, $s3, -1
	addi.d	$s7, $s7, 8
	bnez	$s3, .LBB3_194
.LBB3_195:                              # %.preheader
	blt	$s1, $fp, .LBB3_198
# %bb.196:                              # %.lr.ph419
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ld.d	$fp, $a0, %pc_lo12(A__align.mseq2)
	.p2align	4, , 16
.LBB3_197:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s2, 0
	ld.d	$a1, $fp, 0
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	addi.d	$fp, $fp, 8
	addi.d	$s1, $s1, -1
	addi.d	$s2, $s2, 8
	bnez	$s1, .LBB3_197
.LBB3_198:                              # %._crit_edge420
	fmov.s	$fa0, $fs0
	fld.d	$fs0, $sp, 304                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 312                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 320                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 328                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 336                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 344                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 352                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 360                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 368                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 376                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 384                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 392                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 400
	ret
.LBB3_199:                              # %vector.ph
	bstrpick.d	$a4, $s2, 30, 2
	slli.d	$a4, $a4, 2
	vreplvei.d	$vr1, $vr0, 0
	lu52i.d	$a5, $zero, 1023
	vreplgr2vr.d	$vr2, $a5
	lu52i.d	$a5, $zero, 1022
	vreplgr2vr.d	$vr3, $a5
	move	$a5, $a1
	move	$a6, $a3
	move	$a7, $a4
	.p2align	4, , 16
.LBB3_200:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr4, $a5, 0
	vreplvei.w	$vr5, $vr4, 0
	fcvt.d.s	$fa5, $fa5
	movfr2gr.d	$t0, $fa5
	vreplvei.w	$vr5, $vr4, 1
	fcvt.d.s	$fa5, $fa5
	vinsgr2vr.d	$vr6, $t0, 0
	movfr2gr.d	$t0, $fa5
	vreplvei.w	$vr5, $vr4, 2
	fcvt.d.s	$fa5, $fa5
	vinsgr2vr.d	$vr6, $t0, 1
	movfr2gr.d	$t0, $fa5
	vreplvei.w	$vr4, $vr4, 3
	fcvt.d.s	$fa4, $fa4
	vinsgr2vr.d	$vr5, $t0, 0
	movfr2gr.d	$t0, $fa4
	vinsgr2vr.d	$vr5, $t0, 1
	vfsub.d	$vr4, $vr2, $vr5
	vfsub.d	$vr5, $vr2, $vr6
	vfmul.d	$vr5, $vr5, $vr3
	vfmul.d	$vr4, $vr4, $vr3
	vfmul.d	$vr5, $vr5, $vr1
	vreplvei.d	$vr6, $vr5, 0
	fcvt.s.d	$fa6, $fa6
	vfmul.d	$vr4, $vr4, $vr1
	movfr2gr.s	$t0, $fa6
	vreplvei.d	$vr5, $vr5, 1
	fcvt.s.d	$fa5, $fa5
	vinsgr2vr.w	$vr6, $t0, 0
	movfr2gr.s	$t0, $fa5
	vreplvei.d	$vr5, $vr4, 0
	fcvt.s.d	$fa5, $fa5
	vinsgr2vr.w	$vr6, $t0, 1
	movfr2gr.s	$t0, $fa5
	vreplvei.d	$vr4, $vr4, 1
	vld	$vr5, $a6, 0
	fcvt.s.d	$fa4, $fa4
	vinsgr2vr.w	$vr6, $t0, 2
	movfr2gr.s	$t0, $fa4
	vinsgr2vr.w	$vr6, $t0, 3
	vreplvei.w	$vr4, $vr5, 0
	fcvt.d.s	$fa4, $fa4
	vst	$vr6, $a5, 0
	movfr2gr.d	$t0, $fa4
	vreplvei.w	$vr4, $vr5, 1
	fcvt.d.s	$fa4, $fa4
	vinsgr2vr.d	$vr6, $t0, 0
	movfr2gr.d	$t0, $fa4
	vreplvei.w	$vr4, $vr5, 2
	fcvt.d.s	$fa4, $fa4
	vinsgr2vr.d	$vr6, $t0, 1
	movfr2gr.d	$t0, $fa4
	vreplvei.w	$vr4, $vr5, 3
	fcvt.d.s	$fa4, $fa4
	vinsgr2vr.d	$vr5, $t0, 0
	movfr2gr.d	$t0, $fa4
	vinsgr2vr.d	$vr5, $t0, 1
	vfsub.d	$vr4, $vr2, $vr5
	vfsub.d	$vr5, $vr2, $vr6
	vfmul.d	$vr5, $vr5, $vr3
	vfmul.d	$vr4, $vr4, $vr3
	vfmul.d	$vr5, $vr5, $vr1
	vreplvei.d	$vr6, $vr5, 0
	fcvt.s.d	$fa6, $fa6
	vfmul.d	$vr4, $vr4, $vr1
	movfr2gr.s	$t0, $fa6
	vreplvei.d	$vr5, $vr5, 1
	fcvt.s.d	$fa5, $fa5
	vinsgr2vr.w	$vr6, $t0, 0
	movfr2gr.s	$t0, $fa5
	vreplvei.d	$vr5, $vr4, 0
	fcvt.s.d	$fa5, $fa5
	vinsgr2vr.w	$vr6, $t0, 1
	movfr2gr.s	$t0, $fa5
	vreplvei.d	$vr4, $vr4, 1
	fcvt.s.d	$fa4, $fa4
	vinsgr2vr.w	$vr6, $t0, 2
	movfr2gr.s	$t0, $fa4
	vinsgr2vr.w	$vr6, $t0, 3
	vst	$vr6, $a6, 0
	addi.d	$a7, $a7, -4
	addi.d	$a6, $a6, 16
	addi.d	$a5, $a5, 16
	bnez	$a7, .LBB3_200
# %bb.201:                              # %middle.block
	beq	$a2, $a4, .LBB3_30
	b	.LBB3_28
.LBB3_202:                              # %vector.ph527
	bstrpick.d	$a3, $t0, 30, 2
	slli.d	$a3, $a3, 2
	vreplvei.d	$vr1, $vr0, 0
	lu52i.d	$a4, $zero, 1023
	vreplgr2vr.d	$vr2, $a4
	lu52i.d	$a4, $zero, 1022
	vreplgr2vr.d	$vr3, $a4
	move	$a4, $a0
	move	$a5, $a2
	move	$a6, $a3
	.p2align	4, , 16
.LBB3_203:                              # %vector.body532
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr4, $a4, 0
	vreplvei.w	$vr5, $vr4, 0
	fcvt.d.s	$fa5, $fa5
	movfr2gr.d	$a7, $fa5
	vreplvei.w	$vr5, $vr4, 1
	fcvt.d.s	$fa5, $fa5
	vinsgr2vr.d	$vr6, $a7, 0
	movfr2gr.d	$a7, $fa5
	vreplvei.w	$vr5, $vr4, 2
	fcvt.d.s	$fa5, $fa5
	vinsgr2vr.d	$vr6, $a7, 1
	movfr2gr.d	$a7, $fa5
	vreplvei.w	$vr4, $vr4, 3
	fcvt.d.s	$fa4, $fa4
	vinsgr2vr.d	$vr5, $a7, 0
	movfr2gr.d	$a7, $fa4
	vinsgr2vr.d	$vr5, $a7, 1
	vfsub.d	$vr4, $vr2, $vr5
	vfsub.d	$vr5, $vr2, $vr6
	vfmul.d	$vr5, $vr5, $vr3
	vfmul.d	$vr4, $vr4, $vr3
	vfmul.d	$vr5, $vr5, $vr1
	vreplvei.d	$vr6, $vr5, 0
	fcvt.s.d	$fa6, $fa6
	vfmul.d	$vr4, $vr4, $vr1
	movfr2gr.s	$a7, $fa6
	vreplvei.d	$vr5, $vr5, 1
	fcvt.s.d	$fa5, $fa5
	vinsgr2vr.w	$vr6, $a7, 0
	movfr2gr.s	$a7, $fa5
	vreplvei.d	$vr5, $vr4, 0
	fcvt.s.d	$fa5, $fa5
	vinsgr2vr.w	$vr6, $a7, 1
	movfr2gr.s	$a7, $fa5
	vreplvei.d	$vr4, $vr4, 1
	vld	$vr5, $a5, 0
	fcvt.s.d	$fa4, $fa4
	vinsgr2vr.w	$vr6, $a7, 2
	movfr2gr.s	$a7, $fa4
	vinsgr2vr.w	$vr6, $a7, 3
	vreplvei.w	$vr4, $vr5, 0
	fcvt.d.s	$fa4, $fa4
	vst	$vr6, $a4, 0
	movfr2gr.d	$a7, $fa4
	vreplvei.w	$vr4, $vr5, 1
	fcvt.d.s	$fa4, $fa4
	vinsgr2vr.d	$vr6, $a7, 0
	movfr2gr.d	$a7, $fa4
	vreplvei.w	$vr4, $vr5, 2
	fcvt.d.s	$fa4, $fa4
	vinsgr2vr.d	$vr6, $a7, 1
	movfr2gr.d	$a7, $fa4
	vreplvei.w	$vr4, $vr5, 3
	fcvt.d.s	$fa4, $fa4
	vinsgr2vr.d	$vr5, $a7, 0
	movfr2gr.d	$a7, $fa4
	vinsgr2vr.d	$vr5, $a7, 1
	vfsub.d	$vr4, $vr2, $vr5
	vfsub.d	$vr5, $vr2, $vr6
	vfmul.d	$vr5, $vr5, $vr3
	vfmul.d	$vr4, $vr4, $vr3
	vfmul.d	$vr5, $vr5, $vr1
	vreplvei.d	$vr6, $vr5, 0
	fcvt.s.d	$fa6, $fa6
	vfmul.d	$vr4, $vr4, $vr1
	movfr2gr.s	$a7, $fa6
	vreplvei.d	$vr5, $vr5, 1
	fcvt.s.d	$fa5, $fa5
	vinsgr2vr.w	$vr6, $a7, 0
	movfr2gr.s	$a7, $fa5
	vreplvei.d	$vr5, $vr4, 0
	fcvt.s.d	$fa5, $fa5
	vinsgr2vr.w	$vr6, $a7, 1
	movfr2gr.s	$a7, $fa5
	vreplvei.d	$vr4, $vr4, 1
	fcvt.s.d	$fa4, $fa4
	vinsgr2vr.w	$vr6, $a7, 2
	movfr2gr.s	$a7, $fa4
	vinsgr2vr.w	$vr6, $a7, 3
	vst	$vr6, $a5, 0
	addi.d	$a6, $a6, -4
	addi.d	$a5, $a5, 16
	addi.d	$a4, $a4, 16
	bnez	$a6, .LBB3_203
# %bb.204:                              # %middle.block537
	beq	$a1, $a3, .LBB3_37
	b	.LBB3_35
.LBB3_205:                              # %vector.memcheck597
	ld.d	$a6, $sp, 296                   # 8-byte Folded Reload
	addi.d	$a5, $a6, 4
	alsl.d	$a6, $a3, $a6, 2
	addi.d	$a7, $a0, 4
	sltu	$a7, $a5, $a7
	sltu	$t0, $a0, $a6
	and	$a7, $a7, $t0
	bnez	$a7, .LBB3_59
# %bb.206:                              # %vector.memcheck597
	alsl.d	$a7, $a3, $a2, 2
	addi.d	$a7, $a7, -4
	sltu	$a5, $a5, $a7
	sltu	$a6, $a2, $a6
	and	$a5, $a5, $a6
	bnez	$a5, .LBB3_59
# %bb.207:                              # %vector.ph610
	move	$a5, $a4
	bstrins.d	$a5, $zero, 2, 0
	ori	$a6, $zero, 1
	move	$a1, $a4
	vldrepl.w	$vr0, $a0, 0
	bstrins.d	$a1, $a6, 2, 0
	ld.d	$a6, $sp, 296                   # 8-byte Folded Reload
	addi.d	$a6, $a6, 20
	addi.d	$a7, $a2, 16
	move	$t0, $a5
	.p2align	4, , 16
.LBB3_208:                              # %vector.body613
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr1, $a7, -16
	vld	$vr2, $a7, 0
	vld	$vr3, $a6, -16
	vld	$vr4, $a6, 0
	vfadd.s	$vr1, $vr0, $vr1
	vfadd.s	$vr2, $vr0, $vr2
	vfadd.s	$vr1, $vr3, $vr1
	vfadd.s	$vr2, $vr4, $vr2
	vst	$vr1, $a6, -16
	vst	$vr2, $a6, 0
	addi.d	$a6, $a6, 32
	addi.d	$t0, $t0, -8
	addi.d	$a7, $a7, 32
	bnez	$t0, .LBB3_208
# %bb.209:                              # %middle.block623
	bne	$a4, $a5, .LBB3_59
	b	.LBB3_61
.LBB3_210:                              # %vector.memcheck626
	addi.d	$a5, $s5, 4
	alsl.d	$a6, $a3, $s5, 2
	addi.d	$a7, $a0, 4
	sltu	$a7, $a5, $a7
	sltu	$t0, $a0, $a6
	and	$a7, $a7, $t0
	bnez	$a7, .LBB3_63
# %bb.211:                              # %vector.memcheck626
	alsl.d	$a7, $a3, $a2, 2
	addi.d	$a7, $a7, -4
	sltu	$a5, $a5, $a7
	sltu	$a6, $a2, $a6
	and	$a5, $a5, $a6
	bnez	$a5, .LBB3_63
# %bb.212:                              # %vector.ph640
	move	$a5, $a4
	bstrins.d	$a5, $zero, 2, 0
	ori	$a6, $zero, 1
	move	$a1, $a4
	vldrepl.w	$vr0, $a0, 0
	bstrins.d	$a1, $a6, 2, 0
	addi.d	$a6, $s5, 20
	addi.d	$a7, $a2, 16
	move	$t0, $a5
	.p2align	4, , 16
.LBB3_213:                              # %vector.body643
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr1, $a7, -16
	vld	$vr2, $a7, 0
	vld	$vr3, $a6, -16
	vld	$vr4, $a6, 0
	vfadd.s	$vr1, $vr0, $vr1
	vfadd.s	$vr2, $vr0, $vr2
	vfadd.s	$vr1, $vr3, $vr1
	vfadd.s	$vr2, $vr4, $vr2
	vst	$vr1, $a6, -16
	vst	$vr2, $a6, 0
	addi.d	$a6, $a6, 32
	addi.d	$t0, $t0, -8
	addi.d	$a7, $a7, 32
	bnez	$t0, .LBB3_213
# %bb.214:                              # %middle.block653
	bne	$a4, $a5, .LBB3_63
	b	.LBB3_73
.LBB3_215:
	movgr2fr.w	$fa0, $zero
	ori	$a1, $zero, 1
	st.d	$a1, $sp, 272                   # 8-byte Folded Spill
	ld.d	$a3, $sp, 264                   # 8-byte Folded Reload
	b	.LBB3_79
.LBB3_216:                              # %vector.ph548
	bstrpick.d	$a0, $t3, 31, 3
	slli.d	$a4, $a0, 3
	slli.d	$a2, $a0, 5
	add.d	$a1, $a5, $a2
	andi	$a0, $t3, 7
	add.d	$a2, $s5, $a2
	addi.d	$a6, $s5, 16
	addi.d	$a5, $a5, 16
	move	$a7, $a4
	.p2align	4, , 16
.LBB3_217:                              # %vector.body551
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a5, -16
	vld	$vr1, $a5, 0
	vld	$vr2, $a6, -16
	vld	$vr3, $a6, 0
	vfadd.s	$vr0, $vr0, $vr2
	vfadd.s	$vr1, $vr1, $vr3
	vst	$vr0, $a6, -16
	vst	$vr1, $a6, 0
	addi.d	$a6, $a6, 32
	addi.d	$a7, $a7, -8
	addi.d	$a5, $a5, 32
	bnez	$a7, .LBB3_217
# %bb.218:                              # %middle.block560
	bne	$a3, $a4, .LBB3_46
	b	.LBB3_48
.LBB3_219:
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
	ori	$fp, $zero, 1
	bge	$s3, $fp, .LBB3_193
	b	.LBB3_195
.Lfunc_end3:
	.size	A__align, .Lfunc_end3-A__align
                                        # -- End function
	.p2align	5                               # -- Begin function match_calc
	.type	match_calc,@function
match_calc:                             # @match_calc
# %bb.0:
	addi.d	$sp, $sp, -592
	st.d	$fp, $sp, 584                   # 8-byte Folded Spill
	st.d	$s0, $sp, 576                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 568                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 560                  # 8-byte Folded Spill
	fst.d	$fs2, $sp, 552                  # 8-byte Folded Spill
	fst.d	$fs3, $sp, 544                  # 8-byte Folded Spill
	fst.d	$fs4, $sp, 536                  # 8-byte Folded Spill
	fst.d	$fs5, $sp, 528                  # 8-byte Folded Spill
	fst.d	$fs6, $sp, 520                  # 8-byte Folded Spill
	fst.d	$fs7, $sp, 512                  # 8-byte Folded Spill
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
	ld.d	$a7, $a1, 96
	ld.d	$t0, $a1, 104
	move	$a2, $zero
	slli.d	$a3, $a3, 2
	fldx.s	$fa0, $a7, $a3
	fldx.s	$fa1, $t0, $a3
	ld.d	$a7, $a1, 112
	ld.d	$t0, $a1, 0
	ld.d	$t1, $a1, 8
	ld.d	$t2, $a1, 16
	ld.d	$t3, $a1, 24
	fldx.s	$fs1, $t0, $a3
	fldx.s	$fs0, $t1, $a3
	fldx.s	$ft15, $t2, $a3
	fldx.s	$fa4, $t3, $a3
	ld.d	$t0, $a1, 32
	ld.d	$t1, $a1, 40
	ld.d	$t2, $a1, 48
	ld.d	$t3, $a1, 56
	fldx.s	$ft13, $t0, $a3
	fldx.s	$ft14, $t1, $a3
	fldx.s	$fa2, $t2, $a3
	fldx.s	$fa3, $t3, $a3
	ld.d	$t0, $a1, 64
	ld.d	$t1, $a1, 72
	ld.d	$t2, $a1, 80
	ld.d	$t3, $a1, 88
	fldx.s	$fa5, $t0, $a3
	fldx.s	$ft12, $t1, $a3
	fldx.s	$fa6, $t2, $a3
	fldx.s	$fa7, $t3, $a3
	ld.d	$t0, $a1, 120
	ld.d	$t1, $a1, 128
	ld.d	$t2, $a1, 136
	fldx.s	$ft0, $a7, $a3
	fldx.s	$ft1, $t0, $a3
	fldx.s	$ft2, $t1, $a3
	fldx.s	$ft3, $t2, $a3
	ld.d	$a7, $a1, 144
	ld.d	$t0, $a1, 152
	ld.d	$t1, $a1, 160
	ld.d	$t2, $a1, 168
	fldx.s	$ft4, $a7, $a3
	fldx.s	$ft5, $t0, $a3
	fldx.s	$ft6, $t1, $a3
	fldx.s	$ft7, $t2, $a3
	ld.d	$a7, $a1, 176
	ld.d	$t0, $a1, 184
	ld.d	$t1, $a1, 192
	ld.d	$a1, $a1, 200
	fldx.s	$ft8, $a7, $a3
	fldx.s	$ft9, $t0, $a3
	fldx.s	$ft10, $t1, $a3
	fldx.s	$ft11, $a1, $a3
	vst	$vr0, $sp, 384                  # 16-byte Folded Spill
	vreplvei.w	$vr26, $vr0, 0
	vst	$vr1, $sp, 368                  # 16-byte Folded Spill
	vreplvei.w	$vr27, $vr1, 0
	vreplvei.w	$vr28, $vr25, 0
	vst	$vr24, $sp, 0                   # 16-byte Folded Spill
	vreplvei.w	$vr29, $vr24, 0
	vst	$vr23, $sp, 16                  # 16-byte Folded Spill
	vreplvei.w	$vr30, $vr23, 0
	vst	$vr4, $sp, 96                   # 16-byte Folded Spill
	vreplvei.w	$vr31, $vr4, 0
	pcalau12i	$a1, %got_pc_hi20(n_dis_consweight_multi)
	ld.d	$a1, $a1, %got_pc_lo12(n_dis_consweight_multi)
	ori	$a3, $zero, 2080
	ori	$a7, $zero, 2184
	ori	$t0, $zero, 2288
	ori	$t1, $zero, 2392
	ori	$t2, $zero, 2496
	ori	$t3, $zero, 2600
	addi.d	$t4, $sp, 408
	ori	$t5, $zero, 96
	vst	$vr21, $sp, 48                  # 16-byte Folded Spill
	vreplvei.w	$vr0, $vr21, 0
	vst	$vr22, $sp, 32                  # 16-byte Folded Spill
	vreplvei.w	$vr1, $vr22, 0
	vst	$vr2, $sp, 128                  # 16-byte Folded Spill
	vreplvei.w	$vr2, $vr2, 0
	vst	$vr3, $sp, 112                  # 16-byte Folded Spill
	vreplvei.w	$vr3, $vr3, 0
	vst	$vr5, $sp, 80                   # 16-byte Folded Spill
	vreplvei.w	$vr4, $vr5, 0
	vst	$vr20, $sp, 64                  # 16-byte Folded Spill
	vreplvei.w	$vr5, $vr20, 0
	vst	$vr6, $sp, 160                  # 16-byte Folded Spill
	vreplvei.w	$vr6, $vr6, 0
	vst	$vr7, $sp, 144                  # 16-byte Folded Spill
	vreplvei.w	$vr7, $vr7, 0
	vst	$vr8, $sp, 224                  # 16-byte Folded Spill
	vreplvei.w	$vr8, $vr8, 0
	vst	$vr9, $sp, 208                  # 16-byte Folded Spill
	vreplvei.w	$vr9, $vr9, 0
	vst	$vr10, $sp, 192                 # 16-byte Folded Spill
	vreplvei.w	$vr10, $vr10, 0
	vst	$vr11, $sp, 176                 # 16-byte Folded Spill
	vreplvei.w	$vr11, $vr11, 0
	vst	$vr12, $sp, 288                 # 16-byte Folded Spill
	vreplvei.w	$vr12, $vr12, 0
	vst	$vr13, $sp, 272                 # 16-byte Folded Spill
	vreplvei.w	$vr13, $vr13, 0
	vst	$vr14, $sp, 256                 # 16-byte Folded Spill
	vreplvei.w	$vr14, $vr14, 0
	vst	$vr15, $sp, 240                 # 16-byte Folded Spill
	vreplvei.w	$vr15, $vr15, 0
	vst	$vr16, $sp, 352                 # 16-byte Folded Spill
	vreplvei.w	$vr16, $vr16, 0
	vst	$vr17, $sp, 336                 # 16-byte Folded Spill
	vreplvei.w	$vr17, $vr17, 0
	vst	$vr18, $sp, 320                 # 16-byte Folded Spill
	vreplvei.w	$vr18, $vr18, 0
	vst	$vr19, $sp, 304                 # 16-byte Folded Spill
	vreplvei.w	$vr19, $vr19, 0
	.p2align	4, , 16
.LBB4_9:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	add.d	$t6, $a1, $a2
	vldx	$vr20, $a1, $a2
	vld	$vr21, $t6, 104
	vrepli.b	$vr22, 0
	vfmadd.s	$vr20, $vr20, $vr28, $vr22
	vfmadd.s	$vr20, $vr21, $vr29, $vr20
	vld	$vr21, $t6, 208
	vld	$vr22, $t6, 312
	vld	$vr23, $t6, 416
	vld	$vr24, $t6, 520
	vfmadd.s	$vr20, $vr21, $vr30, $vr20
	vfmadd.s	$vr20, $vr22, $vr31, $vr20
	vfmadd.s	$vr20, $vr23, $vr0, $vr20
	vfmadd.s	$vr20, $vr24, $vr1, $vr20
	vld	$vr21, $t6, 624
	vld	$vr22, $t6, 728
	vld	$vr23, $t6, 832
	vld	$vr24, $t6, 936
	vfmadd.s	$vr20, $vr21, $vr2, $vr20
	vfmadd.s	$vr20, $vr22, $vr3, $vr20
	vfmadd.s	$vr20, $vr23, $vr4, $vr20
	vfmadd.s	$vr20, $vr24, $vr5, $vr20
	vld	$vr21, $t6, 1040
	vld	$vr22, $t6, 1144
	vld	$vr23, $t6, 1248
	vld	$vr24, $t6, 1352
	vfmadd.s	$vr20, $vr21, $vr6, $vr20
	vfmadd.s	$vr20, $vr22, $vr7, $vr20
	vfmadd.s	$vr20, $vr23, $vr26, $vr20
	vfmadd.s	$vr20, $vr24, $vr27, $vr20
	vld	$vr21, $t6, 1456
	vld	$vr22, $t6, 1560
	vld	$vr23, $t6, 1664
	vld	$vr24, $t6, 1768
	vfmadd.s	$vr20, $vr21, $vr8, $vr20
	vfmadd.s	$vr20, $vr22, $vr9, $vr20
	vfmadd.s	$vr20, $vr23, $vr10, $vr20
	vfmadd.s	$vr20, $vr24, $vr11, $vr20
	vld	$vr21, $t6, 1872
	vld	$vr22, $t6, 1976
	vldx	$vr23, $t6, $a3
	vldx	$vr24, $t6, $a7
	vfmadd.s	$vr20, $vr21, $vr12, $vr20
	vfmadd.s	$vr20, $vr22, $vr13, $vr20
	vfmadd.s	$vr20, $vr23, $vr14, $vr20
	vfmadd.s	$vr20, $vr24, $vr15, $vr20
	vldx	$vr21, $t6, $t0
	vldx	$vr22, $t6, $t1
	vldx	$vr23, $t6, $t2
	vldx	$vr24, $t6, $t3
	vfmadd.s	$vr20, $vr21, $vr16, $vr20
	vfmadd.s	$vr20, $vr22, $vr17, $vr20
	vfmadd.s	$vr20, $vr23, $vr18, $vr20
	vfmadd.s	$vr20, $vr24, $vr19, $vr20
	vstx	$vr20, $a2, $t4
	addi.d	$a2, $a2, 16
	bne	$a2, $t5, .LBB4_9
# %bb.10:                               # %scalar.ph
	fld.s	$fa0, $a1, 96
	fld.s	$fa1, $a1, 200
	fld.s	$fa2, $a1, 304
	movgr2fr.w	$fs2, $zero
	fmadd.s	$fa0, $fa0, $fs1, $fs2
	vld	$vr5, $sp, 0                    # 16-byte Folded Reload
	fmadd.s	$fa0, $fa1, $fa5, $fa0
	vld	$vr31, $sp, 16                  # 16-byte Folded Reload
	fmadd.s	$fa0, $fa2, $fs7, $fa0
	fld.s	$fa1, $a1, 408
	fld.s	$fa2, $a1, 512
	fld.s	$fa3, $a1, 616
	fld.s	$fa4, $a1, 720
	vld	$vr24, $sp, 96                  # 16-byte Folded Reload
	fmadd.s	$fa0, $fa1, $fs0, $fa0
	vld	$vr29, $sp, 48                  # 16-byte Folded Reload
	fmadd.s	$fa0, $fa2, $fs5, $fa0
	vld	$vr30, $sp, 32                  # 16-byte Folded Reload
	fmadd.s	$fa0, $fa3, $fs6, $fa0
	vld	$vr22, $sp, 128                 # 16-byte Folded Reload
	fmadd.s	$fa0, $fa4, $ft14, $fa0
	fld.s	$fa1, $a1, 824
	fld.s	$fa2, $a1, 928
	fld.s	$fa3, $a1, 1032
	fld.s	$fa4, $a1, 1136
	vld	$vr23, $sp, 112                 # 16-byte Folded Reload
	fmadd.s	$fa0, $fa1, $ft15, $fa0
	vld	$vr27, $sp, 80                  # 16-byte Folded Reload
	fmadd.s	$fa0, $fa2, $fs3, $fa0
	vld	$vr28, $sp, 64                  # 16-byte Folded Reload
	fmadd.s	$fa0, $fa3, $fs4, $fa0
	vld	$vr20, $sp, 160                 # 16-byte Folded Reload
	fmadd.s	$fa0, $fa4, $ft12, $fa0
	fld.s	$fa1, $a1, 1240
	fld.s	$fa2, $a1, 1344
	fld.s	$fa3, $a1, 1448
	fld.s	$fa4, $a1, 1552
	vld	$vr21, $sp, 144                 # 16-byte Folded Reload
	fmadd.s	$fa0, $fa1, $ft13, $fa0
	vld	$vr6, $sp, 384                  # 16-byte Folded Reload
	fmadd.s	$fa0, $fa2, $fa6, $fa0
	vld	$vr7, $sp, 368                  # 16-byte Folded Reload
	fmadd.s	$fa0, $fa3, $fa7, $fa0
	vld	$vr16, $sp, 224                 # 16-byte Folded Reload
	fmadd.s	$fa0, $fa4, $ft8, $fa0
	fld.s	$fa1, $a1, 1656
	fld.s	$fa2, $a1, 1760
	fld.s	$fa3, $a1, 1864
	fld.s	$fa4, $a1, 1968
	vld	$vr17, $sp, 208                 # 16-byte Folded Reload
	fmadd.s	$fa0, $fa1, $ft9, $fa0
	vld	$vr18, $sp, 192                 # 16-byte Folded Reload
	fmadd.s	$fa0, $fa2, $ft10, $fa0
	vld	$vr19, $sp, 176                 # 16-byte Folded Reload
	fmadd.s	$fa0, $fa3, $ft11, $fa0
	vld	$vr12, $sp, 288                 # 16-byte Folded Reload
	fmadd.s	$fa0, $fa4, $ft4, $fa0
	ori	$a2, $zero, 2072
	fldx.s	$fa1, $a1, $a2
	ori	$a2, $zero, 2176
	fldx.s	$fa2, $a1, $a2
	ori	$a2, $zero, 2280
	fldx.s	$fa3, $a1, $a2
	ori	$a2, $zero, 2384
	fldx.s	$fa4, $a1, $a2
	vld	$vr13, $sp, 272                 # 16-byte Folded Reload
	fmadd.s	$fa0, $fa1, $ft5, $fa0
	vld	$vr14, $sp, 256                 # 16-byte Folded Reload
	fmadd.s	$fa0, $fa2, $ft6, $fa0
	vld	$vr15, $sp, 240                 # 16-byte Folded Reload
	fmadd.s	$fa0, $fa3, $ft7, $fa0
	vld	$vr8, $sp, 352                  # 16-byte Folded Reload
	fmadd.s	$fa0, $fa4, $ft0, $fa0
	ori	$a2, $zero, 2488
	fld.s	$fa1, $a1, 100
	fldx.s	$fa2, $a1, $a2
	ori	$a2, $zero, 2592
	fld.s	$fa3, $a1, 204
	fmadd.s	$fa1, $fa1, $fs1, $fs2
	fldx.s	$fa4, $a1, $a2
	ori	$a2, $zero, 2696
	fmadd.s	$fa1, $fa3, $fa5, $fa1
	fldx.s	$fa3, $a1, $a2
	fld.s	$fa5, $a1, 308
	vld	$vr9, $sp, 336                  # 16-byte Folded Reload
	fmadd.s	$fa0, $fa2, $ft1, $fa0
	vld	$vr10, $sp, 320                 # 16-byte Folded Reload
	fmadd.s	$fa0, $fa4, $ft2, $fa0
	vld	$vr11, $sp, 304                 # 16-byte Folded Reload
	fmadd.s	$fa0, $fa3, $ft3, $fa0
	fmadd.s	$fa1, $fa5, $fs7, $fa1
	fld.s	$fa2, $a1, 412
	fld.s	$fa3, $a1, 516
	fld.s	$fa4, $a1, 620
	fst.s	$fa0, $sp, 504
	fmadd.s	$fa0, $fa2, $fs0, $fa1
	fmadd.s	$fa0, $fa3, $fs5, $fa0
	fmadd.s	$fa0, $fa4, $fs6, $fa0
	fld.s	$fa1, $a1, 724
	fld.s	$fa2, $a1, 828
	fld.s	$fa3, $a1, 932
	fld.s	$fa4, $a1, 1036
	fmadd.s	$fa0, $fa1, $ft14, $fa0
	fmadd.s	$fa0, $fa2, $ft15, $fa0
	fmadd.s	$fa0, $fa3, $fs3, $fa0
	fmadd.s	$fa0, $fa4, $fs4, $fa0
	fld.s	$fa1, $a1, 1140
	fld.s	$fa2, $a1, 1244
	fld.s	$fa3, $a1, 1348
	fld.s	$fa4, $a1, 1452
	fmadd.s	$fa0, $fa1, $ft12, $fa0
	fmadd.s	$fa0, $fa2, $ft13, $fa0
	fmadd.s	$fa0, $fa3, $fa6, $fa0
	fmadd.s	$fa0, $fa4, $fa7, $fa0
	fld.s	$fa1, $a1, 1556
	fld.s	$fa2, $a1, 1660
	fld.s	$fa3, $a1, 1764
	fld.s	$fa4, $a1, 1868
	fmadd.s	$fa0, $fa1, $ft8, $fa0
	fmadd.s	$fa0, $fa2, $ft9, $fa0
	fmadd.s	$fa0, $fa3, $ft10, $fa0
	fmadd.s	$fa0, $fa4, $ft11, $fa0
	fld.s	$fa1, $a1, 1972
	ori	$a2, $zero, 2076
	fldx.s	$fa2, $a1, $a2
	ori	$a2, $zero, 2180
	fldx.s	$fa3, $a1, $a2
	ori	$a2, $zero, 2284
	fldx.s	$fa4, $a1, $a2
	fmadd.s	$fa0, $fa1, $ft4, $fa0
	fmadd.s	$fa0, $fa2, $ft5, $fa0
	fmadd.s	$fa0, $fa3, $ft6, $fa0
	fmadd.s	$fa0, $fa4, $ft7, $fa0
	ori	$a2, $zero, 2388
	fldx.s	$fa1, $a1, $a2
	ori	$a2, $zero, 2492
	fldx.s	$fa2, $a1, $a2
	ori	$a2, $zero, 2596
	fldx.s	$fa3, $a1, $a2
	ori	$a2, $zero, 2700
	fldx.s	$fa4, $a1, $a2
	fmadd.s	$fa0, $fa1, $ft0, $fa0
	fmadd.s	$fa0, $fa2, $ft1, $fa0
	fmadd.s	$fa0, $fa3, $ft2, $fa0
	fmadd.s	$fa0, $fa4, $ft3, $fa0
	fst.s	$fa0, $sp, 508
	beqz	$a4, .LBB4_16
# %bb.11:                               # %.lr.ph73.preheader
	addi.d	$a1, $sp, 408
	addi.w	$a2, $zero, -1
	b	.LBB4_13
	.p2align	4, , 16
.LBB4_12:                               # %._crit_edge
                                        #   in Loop: Header=BB4_13 Depth=1
	addi.w	$a4, $a4, -1
	addi.d	$a6, $a6, 8
	addi.d	$a5, $a5, 8
	addi.d	$a0, $a0, 4
	beqz	$a4, .LBB4_16
.LBB4_13:                               # %.lr.ph73
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_15 Depth 2
	ld.d	$a7, $a6, 0
	ld.wu	$a3, $a7, 0
	addi.w	$t0, $a3, 0
	st.w	$zero, $a0, 0
	bltz	$t0, .LBB4_12
# %bb.14:                               # %.lr.ph
                                        #   in Loop: Header=BB4_13 Depth=1
	ld.d	$t0, $a5, 0
	addi.d	$a7, $a7, 4
	fmov.s	$fa0, $fs2
	.p2align	4, , 16
.LBB4_15:                               #   Parent Loop BB4_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	slli.d	$a3, $a3, 2
	fldx.s	$fa1, $a3, $a1
	fld.s	$fa2, $t0, 0
	ld.wu	$a3, $a7, 0
	addi.d	$t0, $t0, 4
	fmadd.s	$fa0, $fa1, $fa2, $fa0
	fst.s	$fa0, $a0, 0
	addi.w	$t1, $a3, 0
	addi.d	$a7, $a7, 4
	blt	$a2, $t1, .LBB4_15
	b	.LBB4_12
.LBB4_16:                               # %._crit_edge74
	fld.d	$fs7, $sp, 512                  # 8-byte Folded Reload
	fld.d	$fs6, $sp, 520                  # 8-byte Folded Reload
	fld.d	$fs5, $sp, 528                  # 8-byte Folded Reload
	fld.d	$fs4, $sp, 536                  # 8-byte Folded Reload
	fld.d	$fs3, $sp, 544                  # 8-byte Folded Reload
	fld.d	$fs2, $sp, 552                  # 8-byte Folded Reload
	fld.d	$fs1, $sp, 560                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 568                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 576                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 584                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 592
	ret
.Lfunc_end4:
	.size	match_calc, .Lfunc_end4-match_calc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function Atracking
.LCPI5_0:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
.LCPI5_1:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
.LCPI5_2:
	.word	0                               # 0x0
	.word	4                               # 0x4
	.word	4                               # 0x4
	.word	4                               # 0x4
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
	addi.w	$a7, $s7, 0
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
	ld.d	$t0, $sp, 24                    # 8-byte Folded Reload
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
	ldx.d	$a6, $t0, $a2
	stx.w	$a5, $a6, $a3
	fmov.s	$fa0, $fa1
	b	.LBB5_3
.LBB5_6:                                # %.preheader2
	ori	$a2, $zero, 1
	blt	$a7, $a2, .LBB5_11
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
	vpickve2gr.d	$a6, $vr1, 0
	vstelm.w	$vr4, $a6, 0, 0
	vpickve2gr.d	$a6, $vr1, 1
	vstelm.w	$vr4, $a6, 0, 1
	vpickve2gr.d	$a6, $vr2, 0
	vstelm.w	$vr3, $a6, 0, 0
	vpickve2gr.d	$a6, $vr2, 1
	vstelm.w	$vr3, $a6, 0, 1
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a5, $a5, -4
	addi.d	$a4, $a4, 32
	bnez	$a5, .LBB5_15
# %bb.16:                               # %middle.block
	beq	$a2, $a3, .LBB5_19
.LBB5_17:                               # %.lr.ph10.preheader72
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
	bltz	$a7, .LBB5_27
# %bb.20:                               # %.lr.ph13
	ld.d	$a2, $ra, 0
	addi.d	$a4, $s7, 1
	bstrpick.d	$a3, $a4, 31, 0
	ori	$a5, $zero, 8
	bgeu	$a3, $a5, .LBB5_22
# %bb.21:
	move	$a4, $zero
	b	.LBB5_25
.LBB5_22:                               # %vector.ph8
	bstrpick.d	$a4, $a4, 31, 3
	slli.d	$a4, $a4, 3
	pcalau12i	$a5, %pc_hi20(.LCPI5_1)
	vld	$vr0, $a5, %pc_lo12(.LCPI5_1)
	addi.d	$a5, $a2, 16
	vrepli.b	$vr1, -1
	vrepli.w	$vr2, -5
	move	$a6, $a4
	.p2align	4, , 16
.LBB5_23:                               # %vector.body11
                                        # =>This Inner Loop Header: Depth=1
	vxor.v	$vr3, $vr0, $vr1
	vsub.w	$vr4, $vr2, $vr0
	vst	$vr3, $a5, -16
	vst	$vr4, $a5, 0
	vaddi.wu	$vr0, $vr0, 8
	addi.d	$a6, $a6, -8
	addi.d	$a5, $a5, 32
	bnez	$a6, .LBB5_23
# %bb.24:                               # %middle.block17
	beq	$a3, $a4, .LBB5_27
.LBB5_25:                               # %scalar.ph6.preheader
	nor	$a5, $a4, $zero
	alsl.d	$a2, $a4, $a2, 2
	sub.d	$a3, $a3, $a4
	.p2align	4, , 16
.LBB5_26:                               # %scalar.ph6
                                        # =>This Inner Loop Header: Depth=1
	st.w	$a5, $a2, 0
	addi.d	$a5, $a5, -1
	addi.d	$a3, $a3, -1
	addi.d	$a2, $a2, 4
	bnez	$a3, .LBB5_26
.LBB5_27:                               # %._crit_edge
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	add.d	$a2, $a2, $a1
	add.d	$s3, $a2, $a7
	stx.b	$zero, $a2, $a7
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	add.d	$a1, $a0, $a1
	add.d	$s1, $a1, $a7
	stx.b	$zero, $a1, $a7
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	bltz	$a0, .LBB5_57
# %bb.28:                               # %.lr.ph41.preheader
	move	$t1, $zero
	addi.w	$a0, $zero, -1
	ori	$a1, $zero, 1
	ori	$a2, $zero, 111
	ori	$a3, $zero, 45
	ori	$a4, $zero, 8
	vrepli.b	$vr0, 0
	vrepli.b	$vr1, 45
	vrepli.b	$vr2, 111
	ori	$a5, $zero, 16
	.p2align	4, , 16
.LBB5_29:                               # %.lr.ph41
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_48 Depth 2
                                        #     Child Loop BB5_52 Depth 2
                                        #     Child Loop BB5_37 Depth 2
                                        #     Child Loop BB5_41 Depth 2
	addi.w	$a6, $s8, 0
	slli.d	$a7, $a6, 3
	ldx.d	$a7, $ra, $a7
	addi.w	$t0, $s7, 0
	slli.d	$t2, $t0, 2
	ldx.w	$t2, $a7, $t2
	bge	$a0, $t2, .LBB5_32
# %bb.30:                               #   in Loop: Header=BB5_29 Depth=1
	beqz	$t2, .LBB5_43
# %bb.31:                               #   in Loop: Header=BB5_29 Depth=1
	sub.d	$a7, $s8, $t2
	b	.LBB5_44
	.p2align	4, , 16
.LBB5_32:                               #   in Loop: Header=BB5_29 Depth=1
	addi.d	$a7, $s8, -1
	nor	$t3, $a7, $zero
	add.w	$t4, $s8, $t3
	bnez	$t4, .LBB5_45
	.p2align	4, , 16
.LBB5_33:                               # %._crit_edge20
                                        #   in Loop: Header=BB5_29 Depth=1
	beq	$t2, $a0, .LBB5_54
.LBB5_34:                               # %.lr.ph29.preheader
                                        #   in Loop: Header=BB5_29 Depth=1
	addi.w	$t3, $zero, -9
	nor	$t6, $t2, $zero
	bltu	$t3, $t2, .LBB5_39
# %bb.35:                               # %.lr.ph29.preheader
                                        #   in Loop: Header=BB5_29 Depth=1
	sub.d	$t3, $s3, $s1
	bltu	$t3, $a4, .LBB5_39
# %bb.36:                               # %vector.ph24
                                        #   in Loop: Header=BB5_29 Depth=1
	bstrpick.d	$t3, $t6, 30, 3
	slli.d	$t7, $t3, 3
	sub.d	$t5, $t6, $t7
	sub.d	$t3, $s1, $t7
	pcalau12i	$t4, %pc_hi20(.LCPI5_2)
	vld	$vr3, $t4, %pc_lo12(.LCPI5_2)
	sub.d	$t4, $s3, $t7
	vinsgr2vr.w	$vr4, $t1, 0
	vinsgr2vr.w	$vr5, $zero, 0
	vshuf.w	$vr3, $vr5, $vr4
	addi.d	$t1, $s3, -4
	addi.d	$t8, $s1, -4
	move	$s1, $t7
	vori.b	$vr4, $vr0, 0
	.p2align	4, , 16
.LBB5_37:                               # %vector.body27
                                        #   Parent Loop BB5_29 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vstelm.w	$vr1, $t1, 0, 0
	vstelm.w	$vr1, $t1, -4, 0
	vstelm.w	$vr2, $t8, 0, 0
	vstelm.w	$vr2, $t8, -4, 0
	vaddi.wu	$vr3, $vr3, 1
	vaddi.wu	$vr4, $vr4, 1
	addi.d	$s1, $s1, -8
	addi.d	$t1, $t1, -8
	addi.d	$t8, $t8, -8
	bnez	$s1, .LBB5_37
# %bb.38:                               # %middle.block33
                                        #   in Loop: Header=BB5_29 Depth=1
	vadd.w	$vr3, $vr4, $vr3
	vshuf4i.w	$vr4, $vr3, 14
	vadd.w	$vr3, $vr3, $vr4
	vreplvei.w	$vr4, $vr3, 1
	vadd.w	$vr3, $vr3, $vr4
	vpickve2gr.w	$t1, $vr3, 0
	bne	$t7, $t6, .LBB5_40
	b	.LBB5_42
	.p2align	4, , 16
.LBB5_39:                               #   in Loop: Header=BB5_29 Depth=1
	move	$t5, $t6
	move	$t3, $s1
	move	$t4, $s3
.LBB5_40:                               # %.lr.ph29.preheader62
                                        #   in Loop: Header=BB5_29 Depth=1
	add.d	$t1, $t1, $t5
	.p2align	4, , 16
.LBB5_41:                               # %.lr.ph29
                                        #   Parent Loop BB5_29 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.b	$a3, $t4, -1
	addi.d	$t4, $t4, -1
	st.b	$a2, $t3, -1
	addi.w	$t5, $t5, -1
	addi.d	$t3, $t3, -1
	bnez	$t5, .LBB5_41
.LBB5_42:                               # %._crit_edge30
                                        #   in Loop: Header=BB5_29 Depth=1
	bge	$a6, $a1, .LBB5_55
	b	.LBB5_62
	.p2align	4, , 16
.LBB5_43:                               #   in Loop: Header=BB5_29 Depth=1
	addi.d	$a7, $s8, -1
.LBB5_44:                               #   in Loop: Header=BB5_29 Depth=1
	move	$t2, $a0
	nor	$t3, $a7, $zero
	add.w	$t4, $s8, $t3
	beqz	$t4, .LBB5_33
.LBB5_45:                               # %.lr.ph19.preheader
                                        #   in Loop: Header=BB5_29 Depth=1
	bltu	$t4, $a5, .LBB5_50
# %bb.46:                               # %.lr.ph19.preheader
                                        #   in Loop: Header=BB5_29 Depth=1
	sub.d	$t5, $s3, $s1
	bltu	$t5, $a5, .LBB5_50
# %bb.47:                               # %vector.ph44
                                        #   in Loop: Header=BB5_29 Depth=1
	bstrpick.d	$t7, $t4, 31, 0
	bstrpick.d	$t5, $t7, 31, 4
	slli.d	$t8, $t5, 4
	sub.d	$t4, $t4, $t8
	sub.d	$t5, $s1, $t8
	sub.d	$t6, $s3, $t8
	addi.d	$s3, $s3, -16
	addi.d	$s1, $s1, -16
	move	$ra, $t8
	.p2align	4, , 16
.LBB5_48:                               # %vector.body48
                                        #   Parent Loop BB5_29 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vst	$vr2, $s3, 0
	vst	$vr1, $s1, 0
	addi.d	$ra, $ra, -16
	addi.d	$s3, $s3, -16
	addi.d	$s1, $s1, -16
	bnez	$ra, .LBB5_48
# %bb.49:                               # %middle.block55
                                        #   in Loop: Header=BB5_29 Depth=1
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	bne	$t8, $t7, .LBB5_51
	b	.LBB5_53
	.p2align	4, , 16
.LBB5_50:                               #   in Loop: Header=BB5_29 Depth=1
	move	$t5, $s1
	move	$t6, $s3
.LBB5_51:                               # %.lr.ph19.preheader63
                                        #   in Loop: Header=BB5_29 Depth=1
	move	$t7, $t5
	move	$t8, $t6
	.p2align	4, , 16
.LBB5_52:                               # %.lr.ph19
                                        #   Parent Loop BB5_29 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$t6, $t8, -1
	st.b	$a2, $t8, -1
	addi.d	$t5, $t7, -1
	addi.w	$t4, $t4, -1
	st.b	$a3, $t7, -1
	move	$t7, $t5
	move	$t8, $t6
	bnez	$t4, .LBB5_52
.LBB5_53:                               # %._crit_edge20.loopexit
                                        #   in Loop: Header=BB5_29 Depth=1
	add.d	$t1, $s8, $t1
	add.d	$t1, $t3, $t1
	move	$s3, $t6
	move	$s1, $t5
	bne	$t2, $a0, .LBB5_34
.LBB5_54:                               #   in Loop: Header=BB5_29 Depth=1
	move	$t4, $s3
	move	$t3, $s1
	blt	$a6, $a1, .LBB5_62
.LBB5_55:                               # %._crit_edge30
                                        #   in Loop: Header=BB5_29 Depth=1
	blt	$t0, $a1, .LBB5_62
# %bb.56:                               #   in Loop: Header=BB5_29 Depth=1
	add.d	$s7, $t2, $s7
	addi.d	$s3, $t4, -1
	st.b	$a2, $t4, -1
	addi.d	$s1, $t3, -1
	addi.w	$t1, $t1, 2
	st.b	$a2, $t3, -1
	move	$s8, $a7
	ld.d	$a6, $sp, 32                    # 8-byte Folded Reload
	bge	$a6, $t1, .LBB5_29
.LBB5_57:                               # %._crit_edge42
	ori	$s7, $zero, 1
	blt	$s4, $s7, .LBB5_59
	.p2align	4, , 16
.LBB5_58:                               # %.lr.ph50
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s5, 0
	ld.d	$a1, $s2, 0
	move	$a2, $s3
	pcaddu18i	$ra, %call36(gapireru)
	jirl	$ra, $ra, 0
	addi.d	$s2, $s2, 8
	addi.d	$s4, $s4, -1
	addi.d	$s5, $s5, 8
	bnez	$s4, .LBB5_58
.LBB5_59:                               # %.preheader
	blt	$s6, $s7, .LBB5_61
	.p2align	4, , 16
.LBB5_60:                               # %.lr.ph52
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 0
	ld.d	$a1, $s0, 0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(gapireru)
	jirl	$ra, $ra, 0
	addi.d	$s0, $s0, 8
	addi.d	$s6, $s6, -1
	addi.d	$fp, $fp, 8
	bnez	$s6, .LBB5_60
.LBB5_61:                               # %._crit_edge53
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
.LBB5_62:
	move	$s3, $t4
	move	$s1, $t3
	ori	$s7, $zero, 1
	bge	$s4, $s7, .LBB5_58
	b	.LBB5_59
.Lfunc_end5:
	.size	Atracking, .Lfunc_end5-Atracking
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function A__align_gapmap
.LCPI6_0:
	.dword	0x3ff4cccccccccccd              # double 1.3
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI6_1:
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	4                               # 0x4
.LCPI6_2:
	.dword	3                               # 0x3
	.dword	4                               # 0x4
.LCPI6_3:
	.dword	1                               # 0x1
	.dword	2                               # 0x2
.LCPI6_4:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
.LCPI6_5:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
.LCPI6_6:
	.word	0                               # 0x0
	.word	4                               # 0x4
	.word	4                               # 0x4
	.word	4                               # 0x4
	.text
	.globl	A__align_gapmap
	.p2align	5
	.type	A__align_gapmap,@function
A__align_gapmap:                        # @A__align_gapmap
# %bb.0:
	addi.d	$sp, $sp, -368
	st.d	$ra, $sp, 360                   # 8-byte Folded Spill
	st.d	$fp, $sp, 352                   # 8-byte Folded Spill
	st.d	$s0, $sp, 344                   # 8-byte Folded Spill
	st.d	$s1, $sp, 336                   # 8-byte Folded Spill
	st.d	$s2, $sp, 328                   # 8-byte Folded Spill
	st.d	$s3, $sp, 320                   # 8-byte Folded Spill
	st.d	$s4, $sp, 312                   # 8-byte Folded Spill
	st.d	$s5, $sp, 304                   # 8-byte Folded Spill
	st.d	$s6, $sp, 296                   # 8-byte Folded Spill
	st.d	$s7, $sp, 288                   # 8-byte Folded Spill
	st.d	$s8, $sp, 280                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 272                  # 8-byte Folded Spill
	pcalau12i	$s5, %pc_hi20(A__align_gapmap.orlgth1)
	ld.w	$s4, $s5, %pc_lo12(A__align_gapmap.orlgth1)
	st.d	$a7, $sp, 256                   # 8-byte Folded Spill
	st.d	$a6, $sp, 16                    # 8-byte Folded Spill
	move	$s6, $a5
	move	$s1, $a4
	st.d	$a3, $sp, 192                   # 8-byte Folded Spill
	st.d	$a2, $sp, 184                   # 8-byte Folded Spill
	move	$s0, $a1
	move	$s2, $a0
	pcalau12i	$a0, %pc_hi20(A__align_gapmap.mseq1)
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(A__align_gapmap.mseq2)
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	bnez	$s4, .LBB6_2
# %bb.1:
	pcalau12i	$a0, %got_pc_hi20(njob)
	ld.d	$fp, $a0, %got_pc_lo12(njob)
	ld.w	$a0, $fp, 0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(AllocateCharMtx)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 0
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	st.d	$a0, $a2, %pc_lo12(A__align_gapmap.mseq1)
	move	$a0, $a1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(AllocateCharMtx)
	jirl	$ra, $ra, 0
	ld.w	$s4, $s5, %pc_lo12(A__align_gapmap.orlgth1)
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(A__align_gapmap.mseq2)
.LBB6_2:
	st.d	$s2, $sp, 104                   # 8-byte Folded Spill
	ld.d	$a0, $s2, 0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	st.d	$s0, $sp, 64                    # 8-byte Folded Spill
	ld.d	$a1, $s0, 0
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	addi.w	$fp, $a0, 0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(A__align_gapmap.orlgth2)
	st.d	$a1, $sp, 128                   # 8-byte Folded Spill
	ld.w	$s3, $a1, %pc_lo12(A__align_gapmap.orlgth2)
	st.d	$a0, $sp, 200                   # 8-byte Folded Spill
	addi.w	$s8, $a0, 0
	pcalau12i	$a0, %pc_hi20(A__align_gapmap.w1)
	st.d	$a0, $sp, 240                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(A__align_gapmap.w2)
	st.d	$a0, $sp, 232                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(A__align_gapmap.initverticalw)
	st.d	$a0, $sp, 224                   # 8-byte Folded Spill
	pcalau12i	$s2, %pc_hi20(A__align_gapmap.lastverticalw)
	pcalau12i	$a0, %pc_hi20(A__align_gapmap.m)
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(A__align_gapmap.mp)
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	pcalau12i	$s7, %pc_hi20(A__align_gapmap.mseq)
	pcalau12i	$a0, %pc_hi20(A__align_gapmap.ogcp1)
	st.d	$a0, $sp, 176                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(A__align_gapmap.ogcp2)
	st.d	$a0, $sp, 168                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(A__align_gapmap.fgcp1)
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(A__align_gapmap.fgcp2)
	st.d	$a0, $sp, 160                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(A__align_gapmap.cpmx1)
	st.d	$a0, $sp, 264                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(A__align_gapmap.cpmx2)
	st.d	$a0, $sp, 248                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(A__align_gapmap.floatwork)
	st.d	$a0, $sp, 216                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(A__align_gapmap.intwork)
	st.d	$a0, $sp, 208                   # 8-byte Folded Spill
	st.d	$s6, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 88                    # 8-byte Folded Spill
	st.d	$fp, $sp, 80                    # 8-byte Folded Spill
	blt	$s4, $fp, .LBB6_4
# %bb.3:
	bge	$s3, $s8, .LBB6_9
.LBB6_4:
	ori	$a0, $zero, 1
	pcalau12i	$fp, %pc_hi20(A__align_gapmap.match)
	blt	$s4, $a0, .LBB6_7
# %bb.5:
	ld.d	$s0, $sp, 48                    # 8-byte Folded Reload
	blt	$s3, $a0, .LBB6_8
# %bb.6:
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align_gapmap.w1)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align_gapmap.w2)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, %pc_lo12(A__align_gapmap.match)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align_gapmap.initverticalw)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, %pc_lo12(A__align_gapmap.lastverticalw)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align_gapmap.m)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align_gapmap.mp)
	pcaddu18i	$ra, %call36(FreeIntVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s7, %pc_lo12(A__align_gapmap.mseq)
	pcaddu18i	$ra, %call36(FreeCharMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align_gapmap.ogcp1)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align_gapmap.ogcp2)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align_gapmap.fgcp1)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align_gapmap.fgcp2)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align_gapmap.cpmx1)
	pcaddu18i	$ra, %call36(FreeFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 248                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align_gapmap.cpmx2)
	pcaddu18i	$ra, %call36(FreeFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align_gapmap.floatwork)
	pcaddu18i	$ra, %call36(FreeFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align_gapmap.intwork)
	pcaddu18i	$ra, %call36(FreeIntMtx)
	jirl	$ra, $ra, 0
	ld.w	$s4, $s5, %pc_lo12(A__align_gapmap.orlgth1)
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	ld.w	$s3, $a0, %pc_lo12(A__align_gapmap.orlgth2)
	b	.LBB6_8
.LBB6_7:
	ld.d	$s0, $sp, 48                    # 8-byte Folded Reload
.LBB6_8:
	pcalau12i	$a0, %pc_hi20(.LCPI6_0)
	fld.d	$fa0, $a0, %pc_lo12(.LCPI6_0)
	movgr2fr.w	$fa1, $s0
	ffint.d.w	$fa1, $fa1
	fmul.d	$fa1, $fa1, $fa0
	ftintrz.w.d	$fa1, $fa1
	movfr2gr.s	$a0, $fa1
	slt	$a1, $a0, $s4
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s4, $a1
	or	$s4, $a1, $a0
	addi.w	$s0, $s4, 100
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	movgr2fr.w	$fa1, $a0
	ffint.d.w	$fa1, $fa1
	fmul.d	$fa0, $fa1, $fa0
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a0, $fa0
	slt	$a1, $a0, $s3
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s3, $a1
	or	$s3, $a1, $a0
	addi.w	$s1, $s3, 100
	st.d	$s5, $sp, 120                   # 8-byte Folded Spill
	addi.w	$s5, $s3, 102
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 240                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(A__align_gapmap.w1)
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(A__align_gapmap.w2)
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, %pc_lo12(A__align_gapmap.match)
	addi.w	$s6, $s4, 102
	move	$a0, $s6
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(A__align_gapmap.initverticalw)
	move	$a0, $s6
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $s2, %pc_lo12(A__align_gapmap.lastverticalw)
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(A__align_gapmap.m)
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateIntVec)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(njob)
	ld.d	$a1, $a1, %got_pc_lo12(njob)
	ld.w	$a2, $a1, 0
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(A__align_gapmap.mp)
	add.w	$a1, $s1, $s0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(AllocateCharMtx)
	jirl	$ra, $ra, 0
	st.d	$a0, $s7, %pc_lo12(A__align_gapmap.mseq)
	move	$a0, $s6
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(A__align_gapmap.ogcp1)
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(A__align_gapmap.ogcp2)
	move	$a0, $s6
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(A__align_gapmap.fgcp1)
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(A__align_gapmap.fgcp2)
	ori	$a0, $zero, 26
	move	$a1, $s6
	pcaddu18i	$ra, %call36(AllocateFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 264                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(A__align_gapmap.cpmx1)
	ori	$a0, $zero, 26
	move	$a1, $s5
	pcaddu18i	$ra, %call36(AllocateFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(A__align_gapmap.cpmx2)
	slt	$a0, $s1, $s0
	masknez	$a1, $s1, $a0
	maskeqz	$a0, $s0, $a0
	or	$a0, $a0, $a1
	addi.w	$s5, $a0, 2
	ori	$a1, $zero, 26
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(A__align_gapmap.floatwork)
	ori	$a1, $zero, 26
	move	$a0, $s5
	ld.d	$s5, $sp, 120                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(AllocateIntMtx)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 208                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(A__align_gapmap.intwork)
	st.w	$s4, $s5, %pc_lo12(A__align_gapmap.orlgth1)
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	st.w	$s3, $a0, %pc_lo12(A__align_gapmap.orlgth2)
	ld.d	$s6, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 88                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
.LBB6_9:
	ori	$a0, $zero, 1
	blt	$s1, $a0, .LBB6_12
# %bb.10:                               # %.lr.ph
	ld.d	$a1, $s7, %pc_lo12(A__align_gapmap.mseq)
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(A__align_gapmap.mseq1)
	move	$a3, $s1
	ld.d	$a4, $sp, 104                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB6_11:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a5, $a1, 0
	st.d	$a5, $a2, 0
	ld.d	$a5, $a4, 0
	stx.b	$zero, $a5, $fp
	addi.d	$a4, $a4, 8
	addi.d	$a2, $a2, 8
	addi.d	$a3, $a3, -1
	addi.d	$a1, $a1, 8
	bnez	$a3, .LBB6_11
.LBB6_12:                               # %.preheader328
	blt	$s6, $a0, .LBB6_15
# %bb.13:                               # %.lr.ph335
	ld.d	$a1, $s7, %pc_lo12(A__align_gapmap.mseq)
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align_gapmap.mseq2)
	alsl.d	$a1, $s1, $a1, 3
	move	$a2, $s6
	ld.d	$a3, $sp, 64                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB6_14:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a4, $a1, 0
	st.d	$a4, $a0, 0
	ld.d	$a4, $a3, 0
	stx.b	$zero, $a4, $s8
	addi.d	$a1, $a1, 8
	addi.d	$a3, $a3, 8
	addi.d	$a2, $a2, -1
	addi.d	$a0, $a0, 8
	bnez	$a2, .LBB6_14
.LBB6_15:                               # %._crit_edge
	pcalau12i	$a0, %got_pc_hi20(commonAlloc1)
	ld.d	$fp, $a0, %got_pc_lo12(commonAlloc1)
	pcalau12i	$a0, %got_pc_hi20(commonAlloc2)
	ld.d	$s0, $a0, %got_pc_lo12(commonAlloc2)
	ld.w	$a1, $fp, 0
	ld.w	$a0, $s0, 0
	blt	$a1, $s4, .LBB6_18
# %bb.16:                               # %._crit_edge
	blt	$a0, $s3, .LBB6_18
# %bb.17:                               # %._crit_edge471
	move	$s4, $s2
	pcalau12i	$a0, %got_pc_hi20(commonIP)
	ld.d	$a0, $a0, %got_pc_lo12(commonIP)
	ld.d	$a0, $a0, 0
	ld.d	$s7, $sp, 64                    # 8-byte Folded Reload
	b	.LBB6_23
.LBB6_18:
	beqz	$a1, .LBB6_21
# %bb.19:
	move	$s1, $s5
	move	$s5, $s2
	ld.d	$s7, $sp, 64                    # 8-byte Folded Reload
	beqz	$a0, .LBB6_22
# %bb.20:
	pcalau12i	$a0, %got_pc_hi20(commonIP)
	ld.d	$a0, $a0, %got_pc_lo12(commonIP)
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(FreeIntMtx)
	jirl	$ra, $ra, 0
	ld.w	$s4, $s1, %pc_lo12(A__align_gapmap.orlgth1)
	ld.w	$a1, $fp, 0
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	ld.w	$s3, $a0, %pc_lo12(A__align_gapmap.orlgth2)
	ld.w	$a0, $s0, 0
	b	.LBB6_22
.LBB6_21:
	move	$s5, $s2
	ld.d	$s7, $sp, 64                    # 8-byte Folded Reload
.LBB6_22:
	slt	$a2, $a1, $s4
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $s4, $a2
	or	$s1, $a2, $a1
	slt	$a1, $a0, $s3
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s3, $a1
	or	$s2, $a1, $a0
	addi.w	$a0, $s1, 10
	addi.w	$a1, $s2, 10
	pcaddu18i	$ra, %call36(AllocateIntMtx)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(commonIP)
	ld.d	$a1, $a1, %got_pc_lo12(commonIP)
	st.d	$a0, $a1, 0
	st.w	$s1, $fp, 0
	st.w	$s2, $s0, 0
	move	$s4, $s5
.LBB6_23:
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 264                   # 8-byte Folded Reload
	ld.d	$s5, $a1, %pc_lo12(A__align_gapmap.cpmx1)
	ld.d	$s0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a1, $s0, 0
	pcalau12i	$a2, %pc_hi20(A__align_gapmap.ijp)
	st.d	$a2, $sp, 24                    # 8-byte Folded Spill
	st.d	$a0, $a2, %pc_lo12(A__align_gapmap.ijp)
	move	$a0, $a1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.w	$a3, $a0, 0
	move	$a0, $s0
	move	$a1, $s5
	ld.d	$s2, $sp, 184                   # 8-byte Folded Reload
	move	$a2, $s2
	ld.d	$fp, $sp, 88                    # 8-byte Folded Reload
	move	$a4, $fp
	pcaddu18i	$ra, %call36(cpmx_calc_new)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 248                   # 8-byte Folded Reload
	ld.d	$s5, $a0, %pc_lo12(A__align_gapmap.cpmx2)
	ld.d	$a0, $s7, 0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.w	$a3, $a0, 0
	move	$a0, $s7
	move	$a1, $s5
	ld.d	$s5, $sp, 192                   # 8-byte Folded Reload
	move	$a2, $s5
	move	$a4, $s6
	pcaddu18i	$ra, %call36(cpmx_calc_new)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align_gapmap.ogcp1)
	move	$a1, $fp
	move	$a2, $s0
	move	$a3, $s2
	ld.d	$s3, $sp, 80                    # 8-byte Folded Reload
	move	$a4, $s3
	pcaddu18i	$ra, %call36(st_OpeningGapCount)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align_gapmap.ogcp2)
	move	$a1, $s6
	move	$a2, $s7
	move	$a3, $s5
	move	$a4, $s8
	pcaddu18i	$ra, %call36(st_OpeningGapCount)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align_gapmap.fgcp1)
	move	$a1, $fp
	move	$a2, $s0
	move	$s0, $s3
	move	$a3, $s2
	move	$a4, $s3
	pcaddu18i	$ra, %call36(st_FinalGapCount)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align_gapmap.fgcp2)
	move	$a1, $s6
	move	$a2, $s7
	move	$a3, $s5
	move	$a4, $s8
	pcaddu18i	$ra, %call36(st_FinalGapCount)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	blt	$s3, $a0, .LBB6_30
# %bb.24:                               # %.lr.ph338
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(A__align_gapmap.ogcp1)
	ld.d	$a2, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a3, $a2, %pc_lo12(A__align_gapmap.fgcp1)
	bstrpick.d	$a2, $s1, 30, 0
	ori	$a5, $zero, 4
	bltu	$a2, $a5, .LBB6_27
# %bb.25:                               # %vector.memcheck
	alsl.d	$a5, $a2, $a3, 2
	bgeu	$a1, $a5, .LBB6_191
# %bb.26:                               # %vector.memcheck
	alsl.d	$a5, $a2, $a1, 2
	bgeu	$a3, $a5, .LBB6_191
.LBB6_27:
	move	$t1, $zero
.LBB6_28:                               # %scalar.ph.preheader
	alsl.d	$a3, $t1, $a3, 2
	alsl.d	$a1, $t1, $a1, 2
	sub.d	$a2, $a2, $t1
	vldi	$vr0, -912
	vldi	$vr1, -928
	.p2align	4, , 16
.LBB6_29:                               # %scalar.ph
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
	bnez	$a2, .LBB6_29
.LBB6_30:                               # %.preheader327
	blt	$s8, $a0, .LBB6_37
# %bb.31:                               # %.lr.ph340
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align_gapmap.ogcp2)
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a2, $a1, %pc_lo12(A__align_gapmap.fgcp2)
	ld.d	$a1, $sp, 200                   # 8-byte Folded Reload
	bstrpick.d	$a1, $a1, 30, 0
	ori	$a3, $zero, 4
	bltu	$a1, $a3, .LBB6_34
# %bb.32:                               # %vector.memcheck501
	alsl.d	$a3, $a1, $a2, 2
	bgeu	$a0, $a3, .LBB6_194
# %bb.33:                               # %vector.memcheck501
	alsl.d	$a3, $a1, $a0, 2
	bgeu	$a2, $a3, .LBB6_194
.LBB6_34:
	move	$a3, $zero
.LBB6_35:                               # %scalar.ph507.preheader
	alsl.d	$a2, $a3, $a2, 2
	alsl.d	$a0, $a3, $a0, 2
	sub.d	$a1, $a1, $a3
	vldi	$vr0, -912
	vldi	$vr1, -928
	.p2align	4, , 16
.LBB6_36:                               # %scalar.ph507
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
	bnez	$a1, .LBB6_36
.LBB6_37:                               # %._crit_edge341
	st.d	$s4, $sp, 32                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 384
	st.d	$a0, $sp, 192                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 376
	st.d	$a0, $sp, 184                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	ld.d	$s5, $a0, %pc_lo12(A__align_gapmap.w1)
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	ld.d	$s6, $a0, %pc_lo12(A__align_gapmap.w2)
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align_gapmap.initverticalw)
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	ld.d	$fp, $a1, %pc_lo12(A__align_gapmap.cpmx2)
	ld.d	$a1, $sp, 264                   # 8-byte Folded Reload
	ld.d	$s4, $a1, %pc_lo12(A__align_gapmap.cpmx1)
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	ld.d	$s3, $a1, %pc_lo12(A__align_gapmap.floatwork)
	ld.d	$a1, $sp, 208                   # 8-byte Folded Reload
	ld.d	$s2, $a1, %pc_lo12(A__align_gapmap.intwork)
	ori	$a7, $zero, 1
	st.d	$a0, $sp, 264                   # 8-byte Folded Spill
	move	$a1, $fp
	move	$a2, $s4
	move	$a3, $zero
	move	$a4, $s0
	move	$a5, $s3
	move	$a6, $s2
	pcaddu18i	$ra, %call36(match_calc)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(impmtx)
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	slli.d	$a0, $a0, 32
	st.d	$a0, $sp, 216                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	st.d	$a1, $sp, 72                    # 8-byte Folded Spill
	st.d	$fp, $sp, 248                   # 8-byte Folded Spill
	st.d	$s4, $sp, 240                   # 8-byte Folded Spill
	st.d	$s2, $sp, 232                   # 8-byte Folded Spill
	beqz	$a0, .LBB6_44
# %bb.38:
	ld.d	$fp, $a1, %pc_lo12(impmtx)
	beqz	$s0, .LBB6_41
# %bb.39:                               # %.lr.ph.i
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	slli.d	$a0, $a0, 2
	ld.d	$a3, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 264                   # 8-byte Folded Reload
	move	$a1, $s1
	.p2align	4, , 16
.LBB6_40:                               # =>This Inner Loop Header: Depth=1
	ld.w	$a4, $a3, 0
	slli.d	$a4, $a4, 3
	ldx.d	$a4, $fp, $a4
	fldx.s	$fa0, $a4, $a0
	fld.s	$fa1, $a2, 0
	addi.w	$a1, $a1, -1
	addi.d	$a3, $a3, 4
	addi.d	$a4, $a2, 4
	fadd.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $a2, 0
	move	$a2, $a4
	bnez	$a1, .LBB6_40
.LBB6_41:                               # %imp_match_out_vead_tate_gapmap.exit
	ori	$a7, $zero, 1
	ori	$s2, $zero, 1
	move	$a0, $s5
	ld.d	$a1, $sp, 240                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 248                   # 8-byte Folded Reload
	move	$a3, $zero
	move	$a4, $s8
	move	$a5, $s3
	ld.d	$a6, $sp, 232                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(match_calc)
	jirl	$ra, $ra, 0
	ld.d	$t3, $sp, 32                    # 8-byte Folded Reload
	beqz	$s8, .LBB6_53
# %bb.42:                               # %.lr.ph.i309.preheader
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $fp, $a0
	ld.d	$a3, $sp, 192                   # 8-byte Folded Reload
	move	$a2, $s5
	ld.d	$a1, $sp, 200                   # 8-byte Folded Reload
	move	$t4, $s1
	.p2align	4, , 16
.LBB6_43:                               # %.lr.ph.i309
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
	bnez	$a1, .LBB6_43
	b	.LBB6_45
.LBB6_44:                               # %.critedge
	ori	$a7, $zero, 1
	move	$a0, $s5
	move	$a1, $s4
	move	$a2, $fp
	move	$a3, $zero
	move	$a4, $s8
	move	$a5, $s3
	move	$a6, $s2
	pcaddu18i	$ra, %call36(match_calc)
	jirl	$ra, $ra, 0
	ld.d	$t3, $sp, 32                    # 8-byte Folded Reload
	move	$t4, $s1
.LBB6_45:                               # %imp_match_out_vead_gapmap.exit
	pcalau12i	$a0, %got_pc_hi20(outgap)
	ld.d	$a0, $a0, %got_pc_lo12(outgap)
	ld.w	$a1, $a0, 0
	ori	$a0, $zero, 1
	beq	$a1, $a0, .LBB6_54
# %bb.46:                               # %.preheader326
	blt	$s8, $a0, .LBB6_62
# %bb.47:                               # %.lr.ph344
	pcalau12i	$a0, %got_pc_hi20(offset)
	ld.d	$a0, $a0, %got_pc_lo12(offset)
	ld.w	$a0, $a0, 0
	ld.d	$a1, $sp, 200                   # 8-byte Folded Reload
	addi.d	$a1, $a1, 1
	bstrpick.d	$a1, $a1, 31, 0
	addi.d	$a2, $a1, -1
	ori	$a4, $zero, 4
	ori	$a3, $zero, 1
	bltu	$a2, $a4, .LBB6_51
# %bb.48:                               # %vector.ph522
	move	$a4, $a2
	bstrins.d	$a4, $zero, 1, 0
	ori	$a5, $zero, 1
	move	$a3, $a2
	bstrins.d	$a3, $a5, 1, 0
	vreplgr2vr.w	$vr0, $a0
	pcalau12i	$a5, %pc_hi20(.LCPI6_1)
	vld	$vr1, $a5, %pc_lo12(.LCPI6_1)
	addi.d	$a5, $s5, 4
	lu52i.d	$a6, $zero, -1026
	vreplgr2vr.d	$vr2, $a6
	move	$a6, $a4
	.p2align	4, , 16
.LBB6_49:                               # %vector.body525
                                        # =>This Inner Loop Header: Depth=1
	vmul.w	$vr3, $vr0, $vr1
	vpickve2gr.w	$a7, $vr3, 2
	movgr2fr.w	$fa4, $a7
	ffint.d.w	$fa4, $fa4
	vpickve2gr.w	$a7, $vr3, 3
	movgr2fr.w	$fa5, $a7
	movfr2gr.d	$a7, $fa4
	ffint.d.w	$fa4, $fa5
	vinsgr2vr.d	$vr5, $a7, 0
	movfr2gr.d	$a7, $fa4
	vinsgr2vr.d	$vr5, $a7, 1
	vpickve2gr.w	$a7, $vr3, 0
	movgr2fr.w	$fa4, $a7
	ffint.d.w	$fa4, $fa4
	vpickve2gr.w	$a7, $vr3, 1
	movgr2fr.w	$fa3, $a7
	movfr2gr.d	$a7, $fa4
	ffint.d.w	$fa3, $fa3
	vld	$vr4, $a5, 0
	vinsgr2vr.d	$vr6, $a7, 0
	movfr2gr.d	$a7, $fa3
	vinsgr2vr.d	$vr6, $a7, 1
	vfmul.d	$vr3, $vr6, $vr2
	vreplvei.w	$vr6, $vr4, 0
	fcvt.d.s	$fa6, $fa6
	vfmul.d	$vr5, $vr5, $vr2
	movfr2gr.d	$a7, $fa6
	vreplvei.w	$vr6, $vr4, 1
	fcvt.d.s	$fa6, $fa6
	vinsgr2vr.d	$vr7, $a7, 0
	movfr2gr.d	$a7, $fa6
	vreplvei.w	$vr6, $vr4, 2
	fcvt.d.s	$fa6, $fa6
	vinsgr2vr.d	$vr7, $a7, 1
	movfr2gr.d	$a7, $fa6
	vreplvei.w	$vr4, $vr4, 3
	fcvt.d.s	$fa4, $fa4
	vinsgr2vr.d	$vr6, $a7, 0
	movfr2gr.d	$a7, $fa4
	vinsgr2vr.d	$vr6, $a7, 1
	vfadd.d	$vr3, $vr7, $vr3
	vreplvei.d	$vr4, $vr3, 0
	fcvt.s.d	$fa4, $fa4
	vfadd.d	$vr5, $vr6, $vr5
	movfr2gr.s	$a7, $fa4
	vreplvei.d	$vr3, $vr3, 1
	fcvt.s.d	$fa3, $fa3
	vinsgr2vr.w	$vr4, $a7, 0
	movfr2gr.s	$a7, $fa3
	vreplvei.d	$vr3, $vr5, 0
	fcvt.s.d	$fa3, $fa3
	vinsgr2vr.w	$vr4, $a7, 1
	movfr2gr.s	$a7, $fa3
	vreplvei.d	$vr3, $vr5, 1
	fcvt.s.d	$fa3, $fa3
	vinsgr2vr.w	$vr4, $a7, 2
	movfr2gr.s	$a7, $fa3
	vinsgr2vr.w	$vr4, $a7, 3
	vst	$vr4, $a5, 0
	vaddi.wu	$vr1, $vr1, 4
	addi.d	$a6, $a6, -4
	addi.d	$a5, $a5, 16
	bnez	$a6, .LBB6_49
# %bb.50:                               # %middle.block529
	beq	$a2, $a4, .LBB6_62
.LBB6_51:                               # %scalar.ph520.preheader
	mul.d	$a2, $a0, $a3
	alsl.d	$a4, $a3, $s5, 2
	sub.d	$a1, $a1, $a3
	vldi	$vr0, -800
	.p2align	4, , 16
.LBB6_52:                               # %scalar.ph520
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
	bnez	$a1, .LBB6_52
	b	.LBB6_62
.LBB6_53:                               # %imp_match_out_vead_gapmap.exit.thread
	pcalau12i	$a0, %got_pc_hi20(outgap)
	ld.d	$a0, $a0, %got_pc_lo12(outgap)
	ld.w	$a0, $a0, 0
	move	$t4, $s1
	bne	$a0, $s2, .LBB6_62
.LBB6_54:                               # %.preheader323
	ori	$a1, $zero, 1
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	blt	$a0, $a1, .LBB6_58
# %bb.55:                               # %.lr.ph350
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align_gapmap.ogcp1)
	ld.d	$a2, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(A__align_gapmap.fgcp1)
	addi.d	$a3, $t4, 1
	bstrpick.d	$a3, $a3, 31, 0
	addi.d	$a4, $a3, -1
	ori	$a5, $zero, 8
	bgeu	$a4, $a5, .LBB6_197
.LBB6_56:                               # %scalar.ph560.preheader
	ld.d	$a4, $sp, 264                   # 8-byte Folded Reload
	alsl.d	$a4, $a1, $a4, 2
	alsl.d	$a2, $a1, $a2, 2
	addi.d	$a2, $a2, -4
	sub.d	$a1, $a3, $a1
	.p2align	4, , 16
.LBB6_57:                               # %scalar.ph560
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $a0, 0
	fld.s	$fa1, $a2, 0
	fld.s	$fa2, $a4, 0
	fadd.s	$fa0, $fa0, $fa1
	fadd.s	$fa0, $fa2, $fa0
	fst.s	$fa0, $a4, 0
	addi.d	$a4, $a4, 4
	addi.d	$a1, $a1, -1
	addi.d	$a2, $a2, 4
	bnez	$a1, .LBB6_57
.LBB6_58:                               # %.preheader321
	ori	$a1, $zero, 1
	blt	$s8, $a1, .LBB6_74
# %bb.59:                               # %.lr.ph353
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align_gapmap.ogcp2)
	ld.d	$a2, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(A__align_gapmap.fgcp2)
	ld.d	$a3, $sp, 200                   # 8-byte Folded Reload
	addi.d	$a3, $a3, 1
	bstrpick.d	$a3, $a3, 31, 0
	addi.d	$a4, $a3, -1
	ori	$a5, $zero, 8
	bgeu	$a4, $a5, .LBB6_202
.LBB6_60:                               # %scalar.ph590.preheader
	alsl.d	$a4, $a1, $s5, 2
	alsl.d	$a2, $a1, $a2, 2
	addi.d	$a2, $a2, -4
	sub.d	$a1, $a3, $a1
	.p2align	4, , 16
.LBB6_61:                               # %scalar.ph590
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $a0, 0
	fld.s	$fa1, $a2, 0
	fld.s	$fa2, $a4, 0
	fadd.s	$fa0, $fa0, $fa1
	fadd.s	$fa0, $fa2, $fa0
	fst.s	$fa0, $a4, 0
	addi.d	$a4, $a4, 4
	addi.d	$a1, $a1, -1
	addi.d	$a2, $a2, 4
	bnez	$a1, .LBB6_61
	b	.LBB6_70
.LBB6_62:                               # %.preheader324
	ori	$a1, $zero, 1
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	blt	$a0, $a1, .LBB6_69
# %bb.63:                               # %.lr.ph347
	pcalau12i	$a0, %got_pc_hi20(offset)
	ld.d	$a0, $a0, %got_pc_lo12(offset)
	ld.w	$a0, $a0, 0
	addi.d	$a2, $t4, 1
	bstrpick.d	$a2, $a2, 31, 0
	addi.d	$a3, $a2, -1
	ori	$a4, $zero, 4
	bltu	$a3, $a4, .LBB6_67
# %bb.64:                               # %vector.ph534
	move	$a4, $a3
	bstrins.d	$a4, $zero, 1, 0
	ori	$a5, $zero, 1
	move	$a1, $a3
	bstrins.d	$a1, $a5, 1, 0
	vreplgr2vr.w	$vr0, $a0
	pcalau12i	$a5, %pc_hi20(.LCPI6_1)
	vld	$vr1, $a5, %pc_lo12(.LCPI6_1)
	ld.d	$a5, $sp, 264                   # 8-byte Folded Reload
	addi.d	$a5, $a5, 4
	lu52i.d	$a6, $zero, -1026
	vreplgr2vr.d	$vr2, $a6
	move	$a6, $a4
	.p2align	4, , 16
.LBB6_65:                               # %vector.body539
                                        # =>This Inner Loop Header: Depth=1
	vmul.w	$vr3, $vr0, $vr1
	vpickve2gr.w	$a7, $vr3, 2
	movgr2fr.w	$fa4, $a7
	ffint.d.w	$fa4, $fa4
	vpickve2gr.w	$a7, $vr3, 3
	movgr2fr.w	$fa5, $a7
	movfr2gr.d	$a7, $fa4
	ffint.d.w	$fa4, $fa5
	vinsgr2vr.d	$vr5, $a7, 0
	movfr2gr.d	$a7, $fa4
	vinsgr2vr.d	$vr5, $a7, 1
	vpickve2gr.w	$a7, $vr3, 0
	movgr2fr.w	$fa4, $a7
	ffint.d.w	$fa4, $fa4
	vpickve2gr.w	$a7, $vr3, 1
	movgr2fr.w	$fa3, $a7
	movfr2gr.d	$a7, $fa4
	ffint.d.w	$fa3, $fa3
	vld	$vr4, $a5, 0
	vinsgr2vr.d	$vr6, $a7, 0
	movfr2gr.d	$a7, $fa3
	vinsgr2vr.d	$vr6, $a7, 1
	vfmul.d	$vr3, $vr6, $vr2
	vreplvei.w	$vr6, $vr4, 0
	fcvt.d.s	$fa6, $fa6
	vfmul.d	$vr5, $vr5, $vr2
	movfr2gr.d	$a7, $fa6
	vreplvei.w	$vr6, $vr4, 1
	fcvt.d.s	$fa6, $fa6
	vinsgr2vr.d	$vr7, $a7, 0
	movfr2gr.d	$a7, $fa6
	vreplvei.w	$vr6, $vr4, 2
	fcvt.d.s	$fa6, $fa6
	vinsgr2vr.d	$vr7, $a7, 1
	movfr2gr.d	$a7, $fa6
	vreplvei.w	$vr4, $vr4, 3
	fcvt.d.s	$fa4, $fa4
	vinsgr2vr.d	$vr6, $a7, 0
	movfr2gr.d	$a7, $fa4
	vinsgr2vr.d	$vr6, $a7, 1
	vfadd.d	$vr3, $vr7, $vr3
	vreplvei.d	$vr4, $vr3, 0
	fcvt.s.d	$fa4, $fa4
	vfadd.d	$vr5, $vr6, $vr5
	movfr2gr.s	$a7, $fa4
	vreplvei.d	$vr3, $vr3, 1
	fcvt.s.d	$fa3, $fa3
	vinsgr2vr.w	$vr4, $a7, 0
	movfr2gr.s	$a7, $fa3
	vreplvei.d	$vr3, $vr5, 0
	fcvt.s.d	$fa3, $fa3
	vinsgr2vr.w	$vr4, $a7, 1
	movfr2gr.s	$a7, $fa3
	vreplvei.d	$vr3, $vr5, 1
	fcvt.s.d	$fa3, $fa3
	vinsgr2vr.w	$vr4, $a7, 2
	movfr2gr.s	$a7, $fa3
	vinsgr2vr.w	$vr4, $a7, 3
	vst	$vr4, $a5, 0
	vaddi.wu	$vr1, $vr1, 4
	addi.d	$a6, $a6, -4
	addi.d	$a5, $a5, 16
	bnez	$a6, .LBB6_65
# %bb.66:                               # %middle.block546
	beq	$a3, $a4, .LBB6_69
.LBB6_67:                               # %scalar.ph532.preheader
	mul.d	$a3, $a0, $a1
	ld.d	$a4, $sp, 264                   # 8-byte Folded Reload
	alsl.d	$a4, $a1, $a4, 2
	sub.d	$a1, $a2, $a1
	vldi	$vr0, -800
	.p2align	4, , 16
.LBB6_68:                               # %scalar.ph532
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
	bnez	$a1, .LBB6_68
.LBB6_69:                               # %.loopexit322
	ori	$a0, $zero, 1
	blt	$s8, $a0, .LBB6_74
.LBB6_70:                               # %.lr.ph361
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a6, $a0, %pc_lo12(A__align_gapmap.ogcp1)
	addi.d	$a0, $a6, 4
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a2, $a1, %pc_lo12(A__align_gapmap.m)
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a3, $a1, %pc_lo12(A__align_gapmap.mp)
	ld.d	$a1, $sp, 200                   # 8-byte Folded Reload
	addi.d	$a1, $a1, 1
	bstrpick.d	$a1, $a1, 31, 0
	addi.d	$a5, $a1, -1
	ori	$a7, $zero, 12
	ori	$a4, $zero, 1
	bgeu	$a5, $a7, .LBB6_116
.LBB6_71:                               # %scalar.ph620.preheader
	alsl.d	$a2, $a4, $a2, 2
	alsl.d	$a3, $a4, $a3, 2
	alsl.d	$a5, $a4, $s5, 2
	addi.d	$a5, $a5, -4
	sub.d	$a1, $a1, $a4
	.p2align	4, , 16
.LBB6_72:                               # %scalar.ph620
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $a5, 0
	fld.s	$fa1, $a0, 0
	fadd.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $a2, 0
	st.w	$zero, $a3, 0
	addi.d	$a2, $a2, 4
	addi.d	$a3, $a3, 4
	addi.d	$a1, $a1, -1
	addi.d	$a5, $a5, 4
	bnez	$a1, .LBB6_72
.LBB6_73:
	move	$a2, $zero
	b	.LBB6_75
.LBB6_74:                               # %._crit_edge362
	ori	$a2, $zero, 1
	beqz	$s8, .LBB6_207
.LBB6_75:
	ld.d	$a3, $sp, 216                   # 8-byte Folded Reload
	ori	$a0, $zero, 0
	lu32i.d	$a0, -1
	add.d	$a0, $a3, $a0
	srai.d	$a0, $a0, 30
	fldx.s	$fa0, $s5, $a0
	st.d	$a2, $sp, 224                   # 8-byte Folded Spill
	move	$a2, $zero
.LBB6_76:
	pcalau12i	$a0, %got_pc_hi20(outgap)
	ld.d	$s1, $a0, %got_pc_lo12(outgap)
	ld.w	$a0, $s1, 0
	ld.d	$fp, $t3, %pc_lo12(A__align_gapmap.lastverticalw)
	sltu	$a1, $zero, $a0
	add.w	$s0, $a1, $t4
	ori	$a1, $zero, 2
	fst.s	$fa0, $fp, 0
	blt	$s0, $a1, .LBB6_92
# %bb.77:                               # %.lr.ph386
	st.d	$a2, $sp, 208                   # 8-byte Folded Spill
	st.d	$s1, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 216                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(impmtx)
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a4, $a0, %pc_lo12(A__align_gapmap.ogcp2)
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align_gapmap.ijp)
	st.d	$a0, $sp, 168                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align_gapmap.m)
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(A__align_gapmap.mp)
	ld.d	$a2, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(A__align_gapmap.fgcp2)
	st.d	$a2, $sp, 160                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(A__align_gapmap.fgcp1)
	st.d	$a2, $sp, 152                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(A__align_gapmap.ogcp1)
	st.d	$a2, $sp, 144                   # 8-byte Folded Spill
	ori	$a2, $zero, 0
	lu32i.d	$a2, -1
	add.d	$a2, $a3, $a2
	srai.d	$s2, $a2, 30
	addi.d	$a0, $a0, 4
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	addi.d	$a0, $a1, 4
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	st.d	$a4, $sp, 176                   # 8-byte Folded Spill
	addi.d	$a0, $a4, 4
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	movgr2fr.w	$fs0, $zero
	ori	$s4, $zero, 1
	b	.LBB6_79
	.p2align	4, , 16
.LBB6_78:                               # %._crit_edge378
                                        #   in Loop: Header=BB6_79 Depth=1
	fldx.s	$fa0, $s3, $s2
	addi.d	$s4, $s4, 1
	fstx.s	$fa0, $fp, $a0
	move	$s5, $s3
	beq	$s4, $s0, .LBB6_93
.LBB6_79:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_82 Depth 2
                                        #     Child Loop BB6_86 Depth 2
	addi.d	$s1, $s4, -1
	slli.d	$s7, $s1, 2
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	fldx.s	$fa0, $a0, $s7
	move	$s3, $s6
	move	$s6, $s5
	fst.s	$fa0, $s5, 0
	move	$a0, $s3
	ld.d	$a1, $sp, 240                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 248                   # 8-byte Folded Reload
	move	$a3, $s4
	move	$a4, $s8
	ld.d	$a5, $sp, 216                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 232                   # 8-byte Folded Reload
	move	$a7, $zero
	pcaddu18i	$ra, %call36(match_calc)
	jirl	$ra, $ra, 0
	slli.d	$a0, $s4, 2
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	beqz	$a1, .LBB6_83
# %bb.80:                               #   in Loop: Header=BB6_79 Depth=1
	ld.d	$a1, $sp, 208                   # 8-byte Folded Reload
	bnez	$a1, .LBB6_83
# %bb.81:                               # %.lr.ph.i312.preheader
                                        #   in Loop: Header=BB6_79 Depth=1
	ld.d	$a1, $sp, 184                   # 8-byte Folded Reload
	ldx.w	$a1, $a1, $a0
	slli.d	$a1, $a1, 3
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	ldx.d	$a1, $a2, $a1
	ld.d	$a4, $sp, 192                   # 8-byte Folded Reload
	move	$a3, $s3
	ld.d	$a2, $sp, 200                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB6_82:                               # %.lr.ph.i312
                                        #   Parent Loop BB6_79 Depth=1
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
	bnez	$a2, .LBB6_82
.LBB6_83:                               # %imp_match_out_vead_gapmap.exit317
                                        #   in Loop: Header=BB6_79 Depth=1
	ld.d	$a1, $sp, 264                   # 8-byte Folded Reload
	fldx.s	$fa0, $a1, $a0
	fst.s	$fa0, $s3, 0
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	bnez	$a1, .LBB6_78
# %bb.84:                               # %.lr.ph377.preheader
                                        #   in Loop: Header=BB6_79 Depth=1
	move	$a1, $zero
	move	$a2, $zero
	ld.d	$a3, $sp, 152                   # 8-byte Folded Reload
	fldx.s	$fa0, $a3, $s7
	fld.s	$fa2, $s6, 0
	ld.d	$a3, $sp, 176                   # 8-byte Folded Reload
	fld.s	$fa3, $a3, 4
	slli.d	$a3, $s4, 3
	ld.d	$a4, $sp, 168                   # 8-byte Folded Reload
	ldx.d	$a4, $a4, $a3
	ld.d	$a3, $sp, 144                   # 8-byte Folded Reload
	fldx.s	$fa1, $a3, $a0
	fadd.s	$fa2, $fa2, $fa3
	addi.d	$a3, $s3, 4
	addi.d	$a4, $a4, 4
	addi.d	$a5, $zero, -1
	ld.d	$a6, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 128                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 136                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 160                   # 8-byte Folded Reload
	move	$t2, $s6
	b	.LBB6_86
	.p2align	4, , 16
.LBB6_85:                               #   in Loop: Header=BB6_86 Depth=2
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
	beq	$s8, $a1, .LBB6_78
.LBB6_86:                               # %.lr.ph377
                                        #   Parent Loop BB6_79 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.s	$fa4, $t1, 0
	fld.s	$fa3, $t2, 0
	fadd.s	$fa4, $fa2, $fa4
	fcmp.cule.s	$fcc0, $fa4, $fa3
	st.w	$zero, $a4, 0
	fmov.s	$fs0, $fa3
	bcnez	$fcc0, .LBB6_88
# %bb.87:                               #   in Loop: Header=BB6_86 Depth=2
	add.d	$t3, $a2, $a5
	st.w	$t3, $a4, 0
	fmov.s	$fs0, $fa4
.LBB6_88:                               #   in Loop: Header=BB6_86 Depth=2
	fld.s	$fa5, $t0, 0
	fld.s	$fa4, $a6, 0
	fadd.s	$fa6, $fa0, $fa5
	fcmp.cule.s	$fcc0, $fa6, $fs0
	bcnez	$fcc0, .LBB6_90
# %bb.89:                               #   in Loop: Header=BB6_86 Depth=2
	ld.w	$t3, $a7, 0
	sub.d	$t3, $s4, $t3
	st.w	$t3, $a4, 0
	fmov.s	$fs0, $fa6
.LBB6_90:                               #   in Loop: Header=BB6_86 Depth=2
	fadd.s	$fa6, $fa1, $fa3
	fcmp.cult.s	$fcc0, $fa6, $fa5
	bcnez	$fcc0, .LBB6_85
# %bb.91:                               #   in Loop: Header=BB6_86 Depth=2
	fst.s	$fa6, $t0, 0
	st.w	$s1, $a7, 0
	b	.LBB6_85
.LBB6_92:
	movgr2fr.w	$fs0, $zero
	ld.d	$t0, $sp, 80                    # 8-byte Folded Reload
	bnez	$a0, .LBB6_108
	b	.LBB6_94
.LBB6_93:                               # %._crit_edge387.loopexit
	ld.d	$s1, $sp, 8                     # 8-byte Folded Reload
	ld.w	$a0, $s1, 0
	move	$s5, $s3
	ld.d	$s7, $sp, 64                    # 8-byte Folded Reload
	ld.d	$t3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$t4, $sp, 48                    # 8-byte Folded Reload
	ld.d	$t0, $sp, 80                    # 8-byte Folded Reload
	bnez	$a0, .LBB6_108
.LBB6_94:                               # %.preheader320
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	bnez	$a0, .LBB6_101
# %bb.95:                               # %.lr.ph392
	pcalau12i	$a0, %got_pc_hi20(offset)
	ld.d	$a0, $a0, %got_pc_lo12(offset)
	ld.w	$a0, $a0, 0
	ld.d	$a1, $sp, 200                   # 8-byte Folded Reload
	addi.d	$a1, $a1, 1
	bstrpick.d	$a1, $a1, 31, 0
	addi.d	$a2, $a1, -1
	ori	$a4, $zero, 4
	ori	$a3, $zero, 1
	bltu	$a2, $a4, .LBB6_99
# %bb.96:                               # %vector.ph638
	move	$a4, $a2
	bstrins.d	$a4, $zero, 1, 0
	ori	$a5, $zero, 1
	move	$a3, $a2
	bstrins.d	$a3, $a5, 1, 0
	vreplgr2vr.w	$vr0, $a0
	ld.d	$a5, $sp, 200                   # 8-byte Folded Reload
	vreplgr2vr.d	$vr1, $a5
	pcalau12i	$a5, %pc_hi20(.LCPI6_2)
	vld	$vr2, $a5, %pc_lo12(.LCPI6_2)
	pcalau12i	$a5, %pc_hi20(.LCPI6_3)
	vld	$vr3, $a5, %pc_lo12(.LCPI6_3)
	addi.d	$a5, $s5, 4
	lu52i.d	$a6, $zero, -1026
	vreplgr2vr.d	$vr4, $a6
	move	$a6, $a4
	.p2align	4, , 16
.LBB6_97:                               # %vector.body645
                                        # =>This Inner Loop Header: Depth=1
	vsub.d	$vr5, $vr1, $vr3
	vsub.d	$vr6, $vr1, $vr2
	vpickev.w	$vr5, $vr6, $vr5
	vmul.w	$vr5, $vr0, $vr5
	vpickve2gr.w	$a7, $vr5, 2
	movgr2fr.w	$fa6, $a7
	ffint.d.w	$fa6, $fa6
	vpickve2gr.w	$a7, $vr5, 3
	movgr2fr.w	$fa7, $a7
	movfr2gr.d	$a7, $fa6
	ffint.d.w	$fa6, $fa7
	vinsgr2vr.d	$vr7, $a7, 0
	movfr2gr.d	$a7, $fa6
	vinsgr2vr.d	$vr7, $a7, 1
	vpickve2gr.w	$a7, $vr5, 0
	movgr2fr.w	$fa6, $a7
	ffint.d.w	$fa6, $fa6
	vpickve2gr.w	$a7, $vr5, 1
	movgr2fr.w	$fa5, $a7
	movfr2gr.d	$a7, $fa6
	ffint.d.w	$fa5, $fa5
	vld	$vr6, $a5, 0
	vinsgr2vr.d	$vr8, $a7, 0
	movfr2gr.d	$a7, $fa5
	vinsgr2vr.d	$vr8, $a7, 1
	vfmul.d	$vr5, $vr8, $vr4
	vreplvei.w	$vr8, $vr6, 0
	fcvt.d.s	$ft0, $ft0
	vfmul.d	$vr7, $vr7, $vr4
	movfr2gr.d	$a7, $ft0
	vreplvei.w	$vr8, $vr6, 1
	fcvt.d.s	$ft0, $ft0
	vinsgr2vr.d	$vr9, $a7, 0
	movfr2gr.d	$a7, $ft0
	vreplvei.w	$vr8, $vr6, 2
	fcvt.d.s	$ft0, $ft0
	vinsgr2vr.d	$vr9, $a7, 1
	movfr2gr.d	$a7, $ft0
	vreplvei.w	$vr6, $vr6, 3
	fcvt.d.s	$fa6, $fa6
	vinsgr2vr.d	$vr8, $a7, 0
	movfr2gr.d	$a7, $fa6
	vinsgr2vr.d	$vr8, $a7, 1
	vfadd.d	$vr5, $vr9, $vr5
	vreplvei.d	$vr6, $vr5, 0
	fcvt.s.d	$fa6, $fa6
	vfadd.d	$vr7, $vr8, $vr7
	movfr2gr.s	$a7, $fa6
	vreplvei.d	$vr5, $vr5, 1
	fcvt.s.d	$fa5, $fa5
	vinsgr2vr.w	$vr6, $a7, 0
	movfr2gr.s	$a7, $fa5
	vreplvei.d	$vr5, $vr7, 0
	fcvt.s.d	$fa5, $fa5
	vinsgr2vr.w	$vr6, $a7, 1
	movfr2gr.s	$a7, $fa5
	vreplvei.d	$vr5, $vr7, 1
	fcvt.s.d	$fa5, $fa5
	vinsgr2vr.w	$vr6, $a7, 2
	movfr2gr.s	$a7, $fa5
	vinsgr2vr.w	$vr6, $a7, 3
	vst	$vr6, $a5, 0
	vaddi.du	$vr3, $vr3, 4
	vaddi.du	$vr2, $vr2, 4
	addi.d	$a6, $a6, -4
	addi.d	$a5, $a5, 16
	bnez	$a6, .LBB6_97
# %bb.98:                               # %middle.block652
	beq	$a2, $a4, .LBB6_101
.LBB6_99:                               # %scalar.ph636.preheader
	ld.d	$a2, $sp, 200                   # 8-byte Folded Reload
	sub.w	$a2, $a2, $a3
	mul.d	$a2, $a0, $a2
	alsl.d	$a4, $a3, $s5, 2
	sub.d	$a1, $a1, $a3
	vldi	$vr0, -800
	.p2align	4, , 16
.LBB6_100:                              # %scalar.ph636
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
	bnez	$a1, .LBB6_100
.LBB6_101:                              # %.preheader319
	ori	$a0, $zero, 1
	blt	$t0, $a0, .LBB6_108
# %bb.102:                              # %.lr.ph395
	pcalau12i	$a1, %got_pc_hi20(offset)
	ld.d	$a1, $a1, %got_pc_lo12(offset)
	ld.w	$a1, $a1, 0
	bstrpick.d	$a2, $t4, 31, 0
	movgr2fr.w	$fa0, $a1
	ffint.d.w	$fa1, $fa0
	movgr2fr.d	$fa0, $a2
	ffint.d.l	$fa0, $fa0
	ld.d	$a1, $t3, %pc_lo12(A__align_gapmap.lastverticalw)
	addi.d	$a2, $t4, 1
	bstrpick.d	$a2, $a2, 31, 0
	addi.d	$a3, $a2, -1
	ori	$a4, $zero, 2
	fneg.d	$fa1, $fa1
	bltu	$a3, $a4, .LBB6_106
# %bb.103:                              # %vector.ph657
	move	$a5, $a3
	bstrins.d	$a5, $zero, 0, 0
	ori	$a0, $a3, 1
	addi.d	$a6, $a1, 8
	vldi	$vr2, -928
	move	$a7, $a5
	.p2align	4, , 16
.LBB6_104:                              # %vector.body660
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$t0, $a4, 31, 0
	addi.d	$t1, $a4, -1
	bstrpick.d	$t1, $t1, 31, 0
	movgr2fr.d	$fa3, $t1
	ffint.d.l	$fa3, $fa3
	movgr2fr.d	$fa4, $t0
	ffint.d.l	$fa4, $fa4
	fmul.d	$fa3, $fa3, $fa2
	fmul.d	$fa4, $fa4, $fa2
	fld.s	$fa5, $a6, -4
	fld.s	$fa6, $a6, 0
	fsub.d	$fa3, $fa0, $fa3
	fsub.d	$fa4, $fa0, $fa4
	fcvt.d.s	$fa5, $fa5
	fcvt.d.s	$fa6, $fa6
	fmadd.d	$fa3, $fa1, $fa3, $fa5
	fmadd.d	$fa4, $fa1, $fa4, $fa6
	fcvt.s.d	$fa3, $fa3
	fcvt.s.d	$fa4, $fa4
	fst.s	$fa3, $a6, -4
	fst.s	$fa4, $a6, 0
	addi.d	$a6, $a6, 8
	addi.d	$a7, $a7, -2
	addi.w	$a4, $a4, 2
	bnez	$a7, .LBB6_104
# %bb.105:                              # %middle.block665
	beq	$a3, $a5, .LBB6_108
.LBB6_106:                              # %scalar.ph655.preheader
	alsl.d	$a1, $a0, $a1, 2
	sub.d	$a2, $a2, $a0
	vldi	$vr2, -800
	.p2align	4, , 16
.LBB6_107:                              # %scalar.ph655
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
	bnez	$a2, .LBB6_107
.LBB6_108:                              # %.loopexit
	ld.d	$s3, $t3, %pc_lo12(A__align_gapmap.lastverticalw)
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s6, $a0, %pc_lo12(A__align_gapmap.mseq1)
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s4, $a0, %pc_lo12(A__align_gapmap.mseq2)
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s2, $a0, %pc_lo12(A__align_gapmap.ijp)
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	beqz	$a0, .LBB6_115
# %bb.109:
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s7, 0
	move	$s7, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	add.w	$a0, $a0, $s7
	st.d	$a0, $sp, 264                   # 8-byte Folded Spill
	addi.w	$s8, $a0, 1
	move	$a0, $s8
	pcaddu18i	$ra, %call36(AllocateCharVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 248                   # 8-byte Folded Spill
	move	$a0, $s8
	pcaddu18i	$ra, %call36(AllocateCharVec)
	jirl	$ra, $ra, 0
	ld.w	$a3, $s1, 0
	ori	$a1, $zero, 1
	addi.w	$ra, $s7, 0
	st.d	$fp, $sp, 256                   # 8-byte Folded Spill
	addi.w	$a2, $fp, 0
	ld.d	$s8, $sp, 72                    # 8-byte Folded Reload
	beq	$a3, $a1, .LBB6_126
# %bb.110:
	fld.s	$fa0, $s3, 0
	blt	$ra, $a1, .LBB6_121
# %bb.111:                              # %.lr.ph.i318
	slli.d	$a1, $s7, 3
	bstrpick.d	$a1, $a1, 33, 3
	slli.d	$a1, $a1, 3
	ld.d	$a3, $sp, 256                   # 8-byte Folded Reload
	slli.d	$a3, $a3, 32
	srai.d	$a3, $a3, 30
	bstrpick.d	$a4, $s7, 30, 0
	move	$a5, $s7
	b	.LBB6_113
	.p2align	4, , 16
.LBB6_112:                              #   in Loop: Header=BB6_113 Depth=1
	addi.d	$a4, $a4, -1
	addi.d	$a5, $a5, -1
	addi.d	$s3, $s3, 4
	beqz	$a4, .LBB6_121
.LBB6_113:                              # =>This Inner Loop Header: Depth=1
	fld.s	$fa1, $s3, 0
	fcmp.cult.s	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB6_112
# %bb.114:                              #   in Loop: Header=BB6_113 Depth=1
	ldx.d	$a6, $s2, $a1
	stx.w	$a5, $a6, $a3
	fmov.s	$fa0, $fa1
	b	.LBB6_112
.LBB6_115:
	ld.d	$s1, $sp, 40                    # 8-byte Folded Reload
	st.d	$s1, $sp, 0
	move	$a0, $s5
	move	$a1, $s3
	ld.d	$s3, $sp, 104                   # 8-byte Folded Reload
	move	$a2, $s3
	move	$a3, $s7
	move	$a4, $s6
	move	$a5, $s4
	move	$a6, $s2
	ld.d	$s2, $sp, 88                    # 8-byte Folded Reload
	move	$a7, $s2
	pcaddu18i	$ra, %call36(Atracking)
	jirl	$ra, $ra, 0
	b	.LBB6_182
.LBB6_116:                              # %vector.memcheck608
	addi.d	$a7, $a2, 4
	alsl.d	$t0, $a1, $a2, 2
	alsl.d	$t1, $a1, $s5, 2
	addi.d	$t1, $t1, -4
	sltu	$t1, $a7, $t1
	sltu	$t2, $s5, $t0
	and	$t1, $t1, $t2
	bnez	$t1, .LBB6_71
# %bb.117:                              # %vector.memcheck608
	addi.d	$a6, $a6, 8
	sltu	$a6, $a7, $a6
	sltu	$a7, $a0, $t0
	and	$a6, $a6, $a7
	bnez	$a6, .LBB6_71
# %bb.118:                              # %vector.ph622
	move	$a6, $a5
	bstrins.d	$a6, $zero, 2, 0
	ori	$a7, $zero, 1
	move	$a4, $a5
	bstrins.d	$a4, $a7, 2, 0
	vldrepl.w	$vr0, $a0, 0
	addi.d	$a7, $s5, 16
	addi.d	$t0, $a2, 20
	addi.d	$t1, $a3, 20
	vrepli.b	$vr1, 0
	move	$t2, $a6
	.p2align	4, , 16
.LBB6_119:                              # %vector.body625
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr2, $a7, -16
	vld	$vr3, $a7, 0
	vfadd.s	$vr2, $vr2, $vr0
	vfadd.s	$vr3, $vr3, $vr0
	vst	$vr2, $t0, -16
	vst	$vr3, $t0, 0
	vst	$vr1, $t1, -16
	vst	$vr1, $t1, 0
	addi.d	$t2, $t2, -8
	addi.d	$a7, $a7, 32
	addi.d	$t0, $t0, 32
	addi.d	$t1, $t1, 32
	bnez	$t2, .LBB6_119
# %bb.120:                              # %middle.block633
	bne	$a5, $a6, .LBB6_71
	b	.LBB6_73
.LBB6_121:                              # %.preheader2.i
	ori	$a1, $zero, 1
	blt	$a2, $a1, .LBB6_126
# %bb.122:                              # %.lr.ph7.i
	slli.d	$a1, $s7, 32
	srai.d	$a1, $a1, 29
	ld.d	$a5, $sp, 256                   # 8-byte Folded Reload
	slli.d	$a3, $a5, 2
	bstrpick.d	$a3, $a3, 32, 2
	slli.d	$a3, $a3, 2
	bstrpick.d	$a4, $a5, 30, 0
	sub.d	$a5, $zero, $a5
	b	.LBB6_124
	.p2align	4, , 16
.LBB6_123:                              #   in Loop: Header=BB6_124 Depth=1
	addi.d	$a4, $a4, -1
	addi.d	$a5, $a5, 1
	addi.d	$s5, $s5, 4
	beqz	$a4, .LBB6_126
.LBB6_124:                              # =>This Inner Loop Header: Depth=1
	fld.s	$fa1, $s5, 0
	fcmp.cult.s	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB6_123
# %bb.125:                              #   in Loop: Header=BB6_124 Depth=1
	ldx.d	$a6, $s2, $a1
	stx.w	$a5, $a6, $a3
	fmov.s	$fa0, $fa1
	b	.LBB6_123
.LBB6_126:                              # %.loopexit.i
	bltz	$ra, .LBB6_134
# %bb.127:                              # %.lr.ph10.preheader.i
	addi.d	$a3, $s7, 1
	bstrpick.d	$a1, $a3, 31, 0
	ori	$a4, $zero, 4
	bgeu	$a1, $a4, .LBB6_129
# %bb.128:
	move	$a3, $zero
	b	.LBB6_132
.LBB6_129:                              # %vector.ph670
	pcalau12i	$a4, %pc_hi20(.LCPI6_4)
	vld	$vr0, $a4, %pc_lo12(.LCPI6_4)
	bstrpick.d	$a3, $a3, 31, 2
	slli.d	$a3, $a3, 2
	addi.d	$a4, $s2, 16
	move	$a5, $a3
	.p2align	4, , 16
.LBB6_130:                              # %vector.body673
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr1, $a4, -16
	vld	$vr2, $a4, 0
	vshuf4i.w	$vr3, $vr0, 8
	vaddi.wu	$vr4, $vr3, 1
	vaddi.wu	$vr3, $vr3, 3
	vpickve2gr.d	$a6, $vr1, 0
	vstelm.w	$vr4, $a6, 0, 0
	vpickve2gr.d	$a6, $vr1, 1
	vstelm.w	$vr4, $a6, 0, 1
	vpickve2gr.d	$a6, $vr2, 0
	vstelm.w	$vr3, $a6, 0, 0
	vpickve2gr.d	$a6, $vr2, 1
	vstelm.w	$vr3, $a6, 0, 1
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a5, $a5, -4
	addi.d	$a4, $a4, 32
	bnez	$a5, .LBB6_130
# %bb.131:                              # %middle.block680
	beq	$a1, $a3, .LBB6_134
.LBB6_132:                              # %.lr.ph10.i.preheader
	alsl.d	$a4, $a3, $s2, 3
	sub.d	$a1, $a1, $a3
	addi.d	$a3, $a3, 1
	.p2align	4, , 16
.LBB6_133:                              # %.lr.ph10.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a5, $a4, 0
	st.w	$a3, $a5, 0
	addi.d	$a4, $a4, 8
	addi.d	$a1, $a1, -1
	addi.d	$a3, $a3, 1
	bnez	$a1, .LBB6_133
.LBB6_134:                              # %.preheader1.i
	ld.d	$a1, $sp, 368
	bltz	$a2, .LBB6_142
# %bb.135:                              # %.lr.ph13.i
	ld.d	$a3, $s2, 0
	ld.d	$a4, $sp, 256                   # 8-byte Folded Reload
	addi.d	$a5, $a4, 1
	bstrpick.d	$a4, $a5, 31, 0
	ori	$a6, $zero, 8
	bgeu	$a4, $a6, .LBB6_137
# %bb.136:
	move	$a5, $zero
	b	.LBB6_140
.LBB6_137:                              # %vector.ph685
	bstrpick.d	$a5, $a5, 31, 3
	slli.d	$a5, $a5, 3
	pcalau12i	$a6, %pc_hi20(.LCPI6_5)
	vld	$vr0, $a6, %pc_lo12(.LCPI6_5)
	addi.d	$a6, $a3, 16
	vrepli.b	$vr1, -1
	vrepli.w	$vr2, -5
	move	$a7, $a5
	.p2align	4, , 16
.LBB6_138:                              # %vector.body688
                                        # =>This Inner Loop Header: Depth=1
	vxor.v	$vr3, $vr0, $vr1
	vsub.w	$vr4, $vr2, $vr0
	vst	$vr3, $a6, -16
	vst	$vr4, $a6, 0
	vaddi.wu	$vr0, $vr0, 8
	addi.d	$a7, $a7, -8
	addi.d	$a6, $a6, 32
	bnez	$a7, .LBB6_138
# %bb.139:                              # %middle.block694
	beq	$a4, $a5, .LBB6_142
.LBB6_140:                              # %scalar.ph683.preheader
	alsl.d	$a3, $a5, $a3, 2
	nor	$a6, $a5, $zero
	sub.d	$a4, $a4, $a5
	.p2align	4, , 16
.LBB6_141:                              # %scalar.ph683
                                        # =>This Inner Loop Header: Depth=1
	st.w	$a6, $a3, 0
	addi.d	$a3, $a3, 4
	addi.d	$a4, $a4, -1
	addi.d	$a6, $a6, -1
	bnez	$a4, .LBB6_141
.LBB6_142:                              # %._crit_edge.i
	ld.d	$a3, $sp, 248                   # 8-byte Folded Reload
	add.d	$a3, $a3, $ra
	add.d	$s5, $a3, $a2
	stx.b	$zero, $a3, $a2
	st.d	$a0, $sp, 240                   # 8-byte Folded Spill
	add.d	$a3, $a0, $ra
	add.d	$s3, $a3, $a2
	stx.b	$zero, $a3, $a2
	st.w	$zero, $a1, 0
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	bltz	$a0, .LBB6_174
# %bb.143:                              # %.lr.ph41.i.preheader
	move	$t4, $zero
	addi.w	$a2, $zero, -1
	ori	$a3, $zero, 1
	ori	$a4, $zero, 45
	ori	$a5, $zero, 111
	ori	$a6, $zero, 8
	vrepli.b	$vr0, 0
	vrepli.b	$vr1, 45
	vrepli.b	$vr2, 111
	ori	$a7, $zero, 16
	ld.d	$t0, $sp, 256                   # 8-byte Folded Reload
	move	$a0, $s2
	.p2align	4, , 16
.LBB6_144:                              # %.lr.ph41.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_150 Depth 2
                                        #     Child Loop BB6_161 Depth 2
                                        #     Child Loop BB6_157 Depth 2
                                        #     Child Loop BB6_166 Depth 2
	addi.w	$t1, $s7, 0
	slli.d	$t2, $t1, 3
	ldx.d	$t2, $s2, $t2
	addi.w	$t3, $t0, 0
	slli.d	$t6, $t3, 2
	ldx.w	$t5, $t2, $t6
	bge	$a2, $t5, .LBB6_152
# %bb.145:                              #   in Loop: Header=BB6_144 Depth=1
	beqz	$t5, .LBB6_173
# %bb.146:                              #   in Loop: Header=BB6_144 Depth=1
	sub.d	$t2, $s7, $t5
	move	$t5, $a2
	nor	$t7, $t2, $zero
	add.w	$t8, $s7, $t7
	beqz	$t8, .LBB6_153
.LBB6_147:                              # %.lr.ph19.i.preheader
                                        #   in Loop: Header=BB6_144 Depth=1
	bltu	$t8, $a7, .LBB6_159
# %bb.148:                              # %.lr.ph19.i.preheader
                                        #   in Loop: Header=BB6_144 Depth=1
	sub.d	$fp, $s5, $s3
	bltu	$fp, $a7, .LBB6_159
# %bb.149:                              # %vector.ph723
                                        #   in Loop: Header=BB6_144 Depth=1
	bstrpick.d	$s1, $t8, 31, 0
	bstrpick.d	$fp, $s1, 31, 4
	slli.d	$s2, $fp, 4
	sub.d	$t8, $t8, $s2
	sub.d	$fp, $s3, $s2
	sub.d	$s0, $s5, $s2
	addi.d	$s5, $s5, -16
	addi.d	$s3, $s3, -16
	move	$s8, $s2
	.p2align	4, , 16
.LBB6_150:                              # %vector.body727
                                        #   Parent Loop BB6_144 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vst	$vr2, $s5, 0
	vst	$vr1, $s3, 0
	addi.d	$s8, $s8, -16
	addi.d	$s5, $s5, -16
	addi.d	$s3, $s3, -16
	bnez	$s8, .LBB6_150
# %bb.151:                              # %middle.block734
                                        #   in Loop: Header=BB6_144 Depth=1
	ld.d	$s8, $sp, 72                    # 8-byte Folded Reload
	bne	$s2, $s1, .LBB6_160
	b	.LBB6_162
	.p2align	4, , 16
.LBB6_152:                              #   in Loop: Header=BB6_144 Depth=1
	addi.d	$t2, $s7, -1
	nor	$t7, $t2, $zero
	add.w	$t8, $s7, $t7
	bnez	$t8, .LBB6_147
	.p2align	4, , 16
.LBB6_153:                              # %._crit_edge20.i
                                        #   in Loop: Header=BB6_144 Depth=1
	beq	$t5, $a2, .LBB6_163
.LBB6_154:                              # %.lr.ph29.preheader.i
                                        #   in Loop: Header=BB6_144 Depth=1
	addi.w	$t7, $zero, -9
	nor	$s0, $t5, $zero
	bltu	$t7, $t5, .LBB6_164
# %bb.155:                              # %.lr.ph29.preheader.i
                                        #   in Loop: Header=BB6_144 Depth=1
	sub.d	$t7, $s5, $s3
	bltu	$t7, $a6, .LBB6_164
# %bb.156:                              # %vector.ph702
                                        #   in Loop: Header=BB6_144 Depth=1
	bstrpick.d	$t7, $s0, 30, 3
	slli.d	$s1, $t7, 3
	sub.d	$fp, $s0, $s1
	sub.d	$t7, $s3, $s1
	pcalau12i	$t8, %pc_hi20(.LCPI6_6)
	vld	$vr3, $t8, %pc_lo12(.LCPI6_6)
	sub.d	$t8, $s5, $s1
	vinsgr2vr.w	$vr4, $t4, 0
	vinsgr2vr.w	$vr5, $zero, 0
	vshuf.w	$vr3, $vr5, $vr4
	addi.d	$t4, $s5, -4
	addi.d	$s2, $s3, -4
	move	$s3, $s1
	vori.b	$vr4, $vr0, 0
	.p2align	4, , 16
.LBB6_157:                              # %vector.body705
                                        #   Parent Loop BB6_144 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vstelm.w	$vr1, $t4, 0, 0
	vstelm.w	$vr1, $t4, -4, 0
	vstelm.w	$vr2, $s2, 0, 0
	vstelm.w	$vr2, $s2, -4, 0
	vaddi.wu	$vr3, $vr3, 1
	vaddi.wu	$vr4, $vr4, 1
	addi.d	$s3, $s3, -8
	addi.d	$t4, $t4, -8
	addi.d	$s2, $s2, -8
	bnez	$s3, .LBB6_157
# %bb.158:                              # %middle.block712
                                        #   in Loop: Header=BB6_144 Depth=1
	vadd.w	$vr3, $vr4, $vr3
	vshuf4i.w	$vr4, $vr3, 14
	vadd.w	$vr3, $vr3, $vr4
	vreplvei.w	$vr4, $vr3, 1
	vadd.w	$vr3, $vr3, $vr4
	vpickve2gr.w	$t4, $vr3, 0
	move	$s2, $a0
	bne	$s1, $s0, .LBB6_165
	b	.LBB6_167
	.p2align	4, , 16
.LBB6_159:                              #   in Loop: Header=BB6_144 Depth=1
	move	$fp, $s3
	move	$s0, $s5
.LBB6_160:                              # %.lr.ph19.i.preheader741
                                        #   in Loop: Header=BB6_144 Depth=1
	move	$s1, $fp
	move	$s2, $s0
	.p2align	4, , 16
.LBB6_161:                              # %.lr.ph19.i
                                        #   Parent Loop BB6_144 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$s0, $s2, -1
	st.b	$a5, $s2, -1
	addi.d	$fp, $s1, -1
	addi.w	$t8, $t8, -1
	st.b	$a4, $s1, -1
	move	$s1, $fp
	move	$s2, $s0
	bnez	$t8, .LBB6_161
.LBB6_162:                              # %._crit_edge20.loopexit.i
                                        #   in Loop: Header=BB6_144 Depth=1
	add.d	$t4, $s7, $t4
	add.d	$t4, $t7, $t4
	move	$s5, $s0
	move	$s3, $fp
	move	$s2, $a0
	bne	$t5, $a2, .LBB6_154
.LBB6_163:                              #   in Loop: Header=BB6_144 Depth=1
	move	$t8, $s5
	move	$t7, $s3
	bne	$t1, $ra, .LBB6_168
	b	.LBB6_170
	.p2align	4, , 16
.LBB6_164:                              #   in Loop: Header=BB6_144 Depth=1
	move	$fp, $s0
	move	$t7, $s3
	move	$t8, $s5
.LBB6_165:                              # %.lr.ph29.i.preheader
                                        #   in Loop: Header=BB6_144 Depth=1
	add.d	$t4, $t4, $fp
	.p2align	4, , 16
.LBB6_166:                              # %.lr.ph29.i
                                        #   Parent Loop BB6_144 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.b	$a4, $t8, -1
	addi.d	$t8, $t8, -1
	st.b	$a5, $t7, -1
	addi.w	$fp, $fp, -1
	addi.d	$t7, $t7, -1
	bnez	$fp, .LBB6_166
.LBB6_167:                              # %._crit_edge30.i
                                        #   in Loop: Header=BB6_144 Depth=1
	beq	$t1, $ra, .LBB6_170
.LBB6_168:                              # %._crit_edge30.i
                                        #   in Loop: Header=BB6_144 Depth=1
	ld.d	$fp, $sp, 256                   # 8-byte Folded Reload
	addi.w	$fp, $fp, 0
	beq	$t3, $fp, .LBB6_170
# %bb.169:                              #   in Loop: Header=BB6_144 Depth=1
	slli.d	$fp, $t1, 2
	ld.d	$s0, $sp, 184                   # 8-byte Folded Reload
	ldx.w	$fp, $s0, $fp
	ld.d	$s0, $s8, %pc_lo12(impmtx)
	ld.d	$s1, $sp, 192                   # 8-byte Folded Reload
	ldx.w	$t6, $s1, $t6
	slli.d	$fp, $fp, 3
	ldx.d	$fp, $s0, $fp
	slli.d	$t6, $t6, 2
	fldx.s	$fa3, $fp, $t6
	fld.s	$fa4, $a1, 0
	fadd.s	$fa3, $fa3, $fa4
	fst.s	$fa3, $a1, 0
.LBB6_170:                              #   in Loop: Header=BB6_144 Depth=1
	blt	$t1, $a3, .LBB6_175
# %bb.171:                              #   in Loop: Header=BB6_144 Depth=1
	blt	$t3, $a3, .LBB6_175
# %bb.172:                              #   in Loop: Header=BB6_144 Depth=1
	add.d	$t0, $t5, $t0
	addi.d	$s5, $t8, -1
	st.b	$a4, $t8, -1
	addi.d	$s3, $t7, -1
	addi.w	$t4, $t4, 2
	st.b	$a4, $t7, -1
	move	$s7, $t2
	ld.d	$t1, $sp, 264                   # 8-byte Folded Reload
	bge	$t1, $t4, .LBB6_144
	b	.LBB6_174
	.p2align	4, , 16
.LBB6_173:                              #   in Loop: Header=BB6_144 Depth=1
	addi.d	$t2, $s7, -1
	move	$t5, $a2
	nor	$t7, $t2, $zero
	add.w	$t8, $s7, $t7
	bnez	$t8, .LBB6_147
	b	.LBB6_153
.LBB6_174:                              # %._crit_edge42.i
	ori	$fp, $zero, 1
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	bge	$a0, $fp, .LBB6_176
	b	.LBB6_178
.LBB6_175:
	move	$s5, $t8
	move	$s3, $t7
	ori	$fp, $zero, 1
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	blt	$a0, $fp, .LBB6_178
.LBB6_176:                              # %.lr.ph50.preheader.i
	ld.d	$s0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 88                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB6_177:                              # %.lr.ph50.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s6, 0
	ld.d	$a1, $s0, 0
	move	$a2, $s5
	pcaddu18i	$ra, %call36(gapireru)
	jirl	$ra, $ra, 0
	addi.d	$s1, $s1, -1
	addi.d	$s0, $s0, 8
	addi.d	$s6, $s6, 8
	bnez	$s1, .LBB6_177
.LBB6_178:                              # %.preheader.i
	ld.d	$s1, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 64                    # 8-byte Folded Reload
	blt	$s1, $fp, .LBB6_181
# %bb.179:                              # %.lr.ph52.preheader.i
	move	$fp, $s7
	move	$s0, $s1
	.p2align	4, , 16
.LBB6_180:                              # %.lr.ph52.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s4, 0
	ld.d	$a1, $fp, 0
	move	$a2, $s3
	pcaddu18i	$ra, %call36(gapireru)
	jirl	$ra, $ra, 0
	addi.d	$s0, $s0, -1
	addi.d	$fp, $fp, 8
	addi.d	$s4, $s4, 8
	bnez	$s0, .LBB6_180
.LBB6_181:                              # %Atracking_localhom_gapmap.exit
	ld.d	$a0, $sp, 248                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$s2, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 104                   # 8-byte Folded Reload
.LBB6_182:
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align_gapmap.mseq1)
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.w	$a3, $a0, 0
	lu12i.w	$a4, 1220
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	blt	$a2, $a3, .LBB6_208
# %bb.183:
	ori	$a0, $a4, 2881
	bge	$a3, $a0, .LBB6_208
# %bb.184:
	ori	$fp, $zero, 1
	blt	$s2, $fp, .LBB6_187
.LBB6_185:                              # %.lr.ph398
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s0, $a0, %pc_lo12(A__align_gapmap.mseq1)
	.p2align	4, , 16
.LBB6_186:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s3, 0
	ld.d	$a1, $s0, 0
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	addi.d	$s0, $s0, 8
	addi.d	$s2, $s2, -1
	addi.d	$s3, $s3, 8
	bnez	$s2, .LBB6_186
.LBB6_187:                              # %.preheader
	blt	$s1, $fp, .LBB6_190
# %bb.188:                              # %.lr.ph400
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $a0, %pc_lo12(A__align_gapmap.mseq2)
	.p2align	4, , 16
.LBB6_189:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s7, 0
	ld.d	$a1, $fp, 0
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	addi.d	$fp, $fp, 8
	addi.d	$s1, $s1, -1
	addi.d	$s7, $s7, 8
	bnez	$s1, .LBB6_189
.LBB6_190:                              # %._crit_edge401
	fmov.s	$fa0, $fs0
	fld.d	$fs0, $sp, 272                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 280                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 288                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 296                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 304                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 312                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 320                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 328                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 336                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 344                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 352                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 360                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 368
	ret
.LBB6_191:                              # %vector.ph
	bstrpick.d	$a5, $s1, 30, 2
	slli.d	$t1, $a5, 2
	lu52i.d	$a5, $zero, 1023
	vreplgr2vr.d	$vr0, $a5
	lu52i.d	$a5, $zero, 1022
	vreplgr2vr.d	$vr1, $a5
	move	$a5, $a1
	move	$a6, $a3
	move	$a7, $t1
	.p2align	4, , 16
.LBB6_192:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr2, $a5, 0
	vreplvei.w	$vr3, $vr2, 2
	fcvt.d.s	$fa3, $fa3
	movfr2gr.d	$t0, $fa3
	vreplvei.w	$vr3, $vr2, 3
	fcvt.d.s	$fa3, $fa3
	vinsgr2vr.d	$vr4, $t0, 0
	movfr2gr.d	$t0, $fa3
	vreplvei.w	$vr3, $vr2, 0
	fcvt.d.s	$fa3, $fa3
	vinsgr2vr.d	$vr4, $t0, 1
	movfr2gr.d	$t0, $fa3
	vreplvei.w	$vr2, $vr2, 1
	fcvt.d.s	$fa2, $fa2
	vinsgr2vr.d	$vr3, $t0, 0
	movfr2gr.d	$t0, $fa2
	vinsgr2vr.d	$vr3, $t0, 1
	vfsub.d	$vr2, $vr0, $vr3
	vfsub.d	$vr3, $vr0, $vr4
	vfmul.d	$vr2, $vr2, $vr1
	vreplvei.d	$vr4, $vr2, 0
	fcvt.s.d	$fa4, $fa4
	vfmul.d	$vr3, $vr3, $vr1
	movfr2gr.s	$t0, $fa4
	vreplvei.d	$vr2, $vr2, 1
	fcvt.s.d	$fa2, $fa2
	vinsgr2vr.w	$vr4, $t0, 0
	movfr2gr.s	$t0, $fa2
	vreplvei.d	$vr2, $vr3, 0
	fcvt.s.d	$fa2, $fa2
	vinsgr2vr.w	$vr4, $t0, 1
	movfr2gr.s	$t0, $fa2
	vreplvei.d	$vr2, $vr3, 1
	vld	$vr3, $a6, 0
	fcvt.s.d	$fa2, $fa2
	vinsgr2vr.w	$vr4, $t0, 2
	movfr2gr.s	$t0, $fa2
	vinsgr2vr.w	$vr4, $t0, 3
	vreplvei.w	$vr2, $vr3, 2
	fcvt.d.s	$fa2, $fa2
	vst	$vr4, $a5, 0
	movfr2gr.d	$t0, $fa2
	vreplvei.w	$vr2, $vr3, 3
	fcvt.d.s	$fa2, $fa2
	vinsgr2vr.d	$vr4, $t0, 0
	movfr2gr.d	$t0, $fa2
	vreplvei.w	$vr2, $vr3, 0
	fcvt.d.s	$fa2, $fa2
	vinsgr2vr.d	$vr4, $t0, 1
	movfr2gr.d	$t0, $fa2
	vreplvei.w	$vr2, $vr3, 1
	fcvt.d.s	$fa2, $fa2
	vinsgr2vr.d	$vr3, $t0, 0
	movfr2gr.d	$t0, $fa2
	vinsgr2vr.d	$vr3, $t0, 1
	vfsub.d	$vr2, $vr0, $vr3
	vfsub.d	$vr3, $vr0, $vr4
	vfmul.d	$vr2, $vr2, $vr1
	vreplvei.d	$vr4, $vr2, 0
	fcvt.s.d	$fa4, $fa4
	vfmul.d	$vr3, $vr3, $vr1
	movfr2gr.s	$t0, $fa4
	vreplvei.d	$vr2, $vr2, 1
	fcvt.s.d	$fa2, $fa2
	vinsgr2vr.w	$vr4, $t0, 0
	movfr2gr.s	$t0, $fa2
	vreplvei.d	$vr2, $vr3, 0
	fcvt.s.d	$fa2, $fa2
	vinsgr2vr.w	$vr4, $t0, 1
	movfr2gr.s	$t0, $fa2
	vreplvei.d	$vr2, $vr3, 1
	fcvt.s.d	$fa2, $fa2
	vinsgr2vr.w	$vr4, $t0, 2
	movfr2gr.s	$t0, $fa2
	vinsgr2vr.w	$vr4, $t0, 3
	vst	$vr4, $a6, 0
	addi.d	$a7, $a7, -4
	addi.d	$a6, $a6, 16
	addi.d	$a5, $a5, 16
	bnez	$a7, .LBB6_192
# %bb.193:                              # %middle.block
	beq	$a2, $t1, .LBB6_30
	b	.LBB6_28
.LBB6_194:                              # %vector.ph509
	ld.d	$a3, $sp, 200                   # 8-byte Folded Reload
	bstrpick.d	$a3, $a3, 30, 2
	slli.d	$a3, $a3, 2
	lu52i.d	$a5, $zero, 1023
	vreplgr2vr.d	$vr0, $a5
	lu52i.d	$a5, $zero, 1022
	vreplgr2vr.d	$vr1, $a5
	move	$t0, $a0
	move	$a5, $a2
	move	$a6, $a3
	.p2align	4, , 16
.LBB6_195:                              # %vector.body512
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr2, $t0, 0
	vreplvei.w	$vr3, $vr2, 2
	fcvt.d.s	$fa3, $fa3
	movfr2gr.d	$a7, $fa3
	vreplvei.w	$vr3, $vr2, 3
	fcvt.d.s	$fa3, $fa3
	vinsgr2vr.d	$vr4, $a7, 0
	movfr2gr.d	$a7, $fa3
	vreplvei.w	$vr3, $vr2, 0
	fcvt.d.s	$fa3, $fa3
	vinsgr2vr.d	$vr4, $a7, 1
	movfr2gr.d	$a7, $fa3
	vreplvei.w	$vr2, $vr2, 1
	fcvt.d.s	$fa2, $fa2
	vinsgr2vr.d	$vr3, $a7, 0
	movfr2gr.d	$a7, $fa2
	vinsgr2vr.d	$vr3, $a7, 1
	vfsub.d	$vr2, $vr0, $vr3
	vfsub.d	$vr3, $vr0, $vr4
	vfmul.d	$vr2, $vr2, $vr1
	vreplvei.d	$vr4, $vr2, 0
	fcvt.s.d	$fa4, $fa4
	vfmul.d	$vr3, $vr3, $vr1
	movfr2gr.s	$a7, $fa4
	vreplvei.d	$vr2, $vr2, 1
	fcvt.s.d	$fa2, $fa2
	vinsgr2vr.w	$vr4, $a7, 0
	movfr2gr.s	$a7, $fa2
	vreplvei.d	$vr2, $vr3, 0
	fcvt.s.d	$fa2, $fa2
	vinsgr2vr.w	$vr4, $a7, 1
	movfr2gr.s	$a7, $fa2
	vreplvei.d	$vr2, $vr3, 1
	vld	$vr3, $a5, 0
	fcvt.s.d	$fa2, $fa2
	vinsgr2vr.w	$vr4, $a7, 2
	movfr2gr.s	$a7, $fa2
	vinsgr2vr.w	$vr4, $a7, 3
	vreplvei.w	$vr2, $vr3, 2
	fcvt.d.s	$fa2, $fa2
	vst	$vr4, $t0, 0
	movfr2gr.d	$a7, $fa2
	vreplvei.w	$vr2, $vr3, 3
	fcvt.d.s	$fa2, $fa2
	vinsgr2vr.d	$vr4, $a7, 0
	movfr2gr.d	$a7, $fa2
	vreplvei.w	$vr2, $vr3, 0
	fcvt.d.s	$fa2, $fa2
	vinsgr2vr.d	$vr4, $a7, 1
	movfr2gr.d	$a7, $fa2
	vreplvei.w	$vr2, $vr3, 1
	fcvt.d.s	$fa2, $fa2
	vinsgr2vr.d	$vr3, $a7, 0
	movfr2gr.d	$a7, $fa2
	vinsgr2vr.d	$vr3, $a7, 1
	vfsub.d	$vr2, $vr0, $vr3
	vfsub.d	$vr3, $vr0, $vr4
	vfmul.d	$vr2, $vr2, $vr1
	vreplvei.d	$vr4, $vr2, 0
	fcvt.s.d	$fa4, $fa4
	vfmul.d	$vr3, $vr3, $vr1
	movfr2gr.s	$a7, $fa4
	vreplvei.d	$vr2, $vr2, 1
	fcvt.s.d	$fa2, $fa2
	vinsgr2vr.w	$vr4, $a7, 0
	movfr2gr.s	$a7, $fa2
	vreplvei.d	$vr2, $vr3, 0
	fcvt.s.d	$fa2, $fa2
	vinsgr2vr.w	$vr4, $a7, 1
	movfr2gr.s	$a7, $fa2
	vreplvei.d	$vr2, $vr3, 1
	fcvt.s.d	$fa2, $fa2
	vinsgr2vr.w	$vr4, $a7, 2
	movfr2gr.s	$a7, $fa2
	vinsgr2vr.w	$vr4, $a7, 3
	vst	$vr4, $a5, 0
	addi.d	$a6, $a6, -4
	addi.d	$a5, $a5, 16
	addi.d	$t0, $t0, 16
	bnez	$a6, .LBB6_195
# %bb.196:                              # %middle.block517
	beq	$a1, $a3, .LBB6_37
	b	.LBB6_35
.LBB6_197:                              # %vector.memcheck549
	ld.d	$a6, $sp, 264                   # 8-byte Folded Reload
	addi.d	$a5, $a6, 4
	alsl.d	$a6, $a3, $a6, 2
	addi.d	$a7, $a0, 4
	sltu	$a7, $a5, $a7
	sltu	$t0, $a0, $a6
	and	$a7, $a7, $t0
	bnez	$a7, .LBB6_56
# %bb.198:                              # %vector.memcheck549
	alsl.d	$a7, $a3, $a2, 2
	addi.d	$a7, $a7, -4
	sltu	$a5, $a5, $a7
	sltu	$a6, $a2, $a6
	and	$a5, $a5, $a6
	bnez	$a5, .LBB6_56
# %bb.199:                              # %vector.ph562
	move	$a5, $a4
	bstrins.d	$a5, $zero, 2, 0
	ori	$a6, $zero, 1
	move	$a1, $a4
	vldrepl.w	$vr0, $a0, 0
	bstrins.d	$a1, $a6, 2, 0
	ld.d	$a6, $sp, 264                   # 8-byte Folded Reload
	addi.d	$a6, $a6, 20
	addi.d	$a7, $a2, 16
	move	$t0, $a5
	.p2align	4, , 16
.LBB6_200:                              # %vector.body565
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr1, $a7, -16
	vld	$vr2, $a7, 0
	vld	$vr3, $a6, -16
	vld	$vr4, $a6, 0
	vfadd.s	$vr1, $vr0, $vr1
	vfadd.s	$vr2, $vr0, $vr2
	vfadd.s	$vr1, $vr3, $vr1
	vfadd.s	$vr2, $vr4, $vr2
	vst	$vr1, $a6, -16
	vst	$vr2, $a6, 0
	addi.d	$a6, $a6, 32
	addi.d	$t0, $t0, -8
	addi.d	$a7, $a7, 32
	bnez	$t0, .LBB6_200
# %bb.201:                              # %middle.block575
	bne	$a4, $a5, .LBB6_56
	b	.LBB6_58
.LBB6_202:                              # %vector.memcheck578
	addi.d	$a5, $s5, 4
	alsl.d	$a6, $a3, $s5, 2
	addi.d	$a7, $a0, 4
	sltu	$a7, $a5, $a7
	sltu	$t0, $a0, $a6
	and	$a7, $a7, $t0
	bnez	$a7, .LBB6_60
# %bb.203:                              # %vector.memcheck578
	alsl.d	$a7, $a3, $a2, 2
	addi.d	$a7, $a7, -4
	sltu	$a5, $a5, $a7
	sltu	$a6, $a2, $a6
	and	$a5, $a5, $a6
	bnez	$a5, .LBB6_60
# %bb.204:                              # %vector.ph592
	move	$a5, $a4
	bstrins.d	$a5, $zero, 2, 0
	ori	$a6, $zero, 1
	move	$a1, $a4
	vldrepl.w	$vr0, $a0, 0
	bstrins.d	$a1, $a6, 2, 0
	addi.d	$a6, $s5, 20
	addi.d	$a7, $a2, 16
	move	$t0, $a5
	.p2align	4, , 16
.LBB6_205:                              # %vector.body595
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr1, $a7, -16
	vld	$vr2, $a7, 0
	vld	$vr3, $a6, -16
	vld	$vr4, $a6, 0
	vfadd.s	$vr1, $vr0, $vr1
	vfadd.s	$vr2, $vr0, $vr2
	vfadd.s	$vr1, $vr3, $vr1
	vfadd.s	$vr2, $vr4, $vr2
	vst	$vr1, $a6, -16
	vst	$vr2, $a6, 0
	addi.d	$a6, $a6, 32
	addi.d	$t0, $t0, -8
	addi.d	$a7, $a7, 32
	bnez	$t0, .LBB6_205
# %bb.206:                              # %middle.block605
	bne	$a4, $a5, .LBB6_60
	b	.LBB6_70
.LBB6_207:
	movgr2fr.w	$fa0, $zero
	ori	$a0, $zero, 1
	st.d	$a0, $sp, 224                   # 8-byte Folded Spill
	ld.d	$a3, $sp, 216                   # 8-byte Folded Reload
	b	.LBB6_76
.LBB6_208:
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
	ori	$fp, $zero, 1
	bge	$s2, $fp, .LBB6_185
	b	.LBB6_187
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
