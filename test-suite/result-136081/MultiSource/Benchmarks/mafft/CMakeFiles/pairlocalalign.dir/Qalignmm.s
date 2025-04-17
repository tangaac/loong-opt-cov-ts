	.file	"Qalignmm.c"
	.text
	.globl	imp_match_out_scQ               # -- Begin function imp_match_out_scQ
	.p2align	5
	.type	imp_match_out_scQ,@function
imp_match_out_scQ:                      # @imp_match_out_scQ
# %bb.0:
	pcalau12i	$a2, %pc_hi20(impmtx)
	ld.d	$a2, $a2, %pc_lo12(impmtx)
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $a2, $a0
	slli.d	$a1, $a1, 2
	fldx.s	$fa0, $a0, $a1
	ret
.Lfunc_end0:
	.size	imp_match_out_scQ, .Lfunc_end0-imp_match_out_scQ
                                        # -- End function
	.globl	imp_rnaQ                        # -- Begin function imp_rnaQ
	.p2align	5
	.type	imp_rnaQ,@function
imp_rnaQ:                               # @imp_rnaQ
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
	.size	imp_rnaQ, .Lfunc_end1-imp_rnaQ
                                        # -- End function
	.globl	imp_match_init_strictQ          # -- Begin function imp_match_init_strictQ
	.p2align	5
	.type	imp_match_init_strictQ,@function
imp_match_init_strictQ:                 # @imp_match_init_strictQ
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
	pcalau12i	$s8, %pc_hi20(imp_match_init_strictQ.nocount1)
	pcalau12i	$s7, %pc_hi20(imp_match_init_strictQ.nocount2)
	blt	$a0, $a1, .LBB2_11
# %bb.1:
	addi.w	$a1, $s5, 2
	blt	$a0, $a1, .LBB2_11
# %bb.2:
	ori	$a1, $zero, 1
	blt	$s4, $a1, .LBB2_18
.LBB2_3:                                # %.preheader211.lr.ph
	ld.d	$a0, $s8, %pc_lo12(imp_match_init_strictQ.nocount1)
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
	ld.d	$a0, $s8, %pc_lo12(imp_match_init_strictQ.nocount1)
	beqz	$a0, .LBB2_15
# %bb.14:
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB2_15:
	ld.d	$a0, $s7, %pc_lo12(imp_match_init_strictQ.nocount2)
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
	st.d	$a0, $s8, %pc_lo12(imp_match_init_strictQ.nocount1)
	move	$a0, $a1
	pcaddu18i	$ra, %call36(AllocateCharVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $s7, %pc_lo12(imp_match_init_strictQ.nocount2)
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
	ld.d	$a0, $s7, %pc_lo12(imp_match_init_strictQ.nocount2)
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
	.size	imp_match_init_strictQ, .Lfunc_end2-imp_match_init_strictQ
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function Q__align
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
.LCPI3_3:
	.dword	5                               # 0x5
	.dword	6                               # 0x6
	.dword	7                               # 0x7
	.dword	8                               # 0x8
.LCPI3_4:
	.dword	1                               # 0x1
	.dword	2                               # 0x2
	.dword	3                               # 0x3
	.dword	4                               # 0x4
.LCPI3_7:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	4                               # 0x4
	.word	5                               # 0x5
	.word	6                               # 0x6
	.word	7                               # 0x7
.LCPI3_9:
	.word	0                               # 0x0
	.word	4                               # 0x4
	.word	4                               # 0x4
	.word	4                               # 0x4
	.word	4                               # 0x4
	.word	4                               # 0x4
	.word	4                               # 0x4
	.word	4                               # 0x4
.LCPI3_10:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
	.dword	0                               # 0x0
	.dword	0                               # 0x0
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0
.LCPI3_2:
	.word	0x461c4000                      # float 1.0E+4
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI3_5:
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	4                               # 0x4
.LCPI3_6:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
.LCPI3_8:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.text
	.globl	Q__align
	.p2align	5
	.type	Q__align,@function
Q__align:                               # @Q__align
# %bb.0:
	addi.d	$sp, $sp, -992
	st.d	$ra, $sp, 984                   # 8-byte Folded Spill
	st.d	$fp, $sp, 976                   # 8-byte Folded Spill
	st.d	$s0, $sp, 968                   # 8-byte Folded Spill
	st.d	$s1, $sp, 960                   # 8-byte Folded Spill
	st.d	$s2, $sp, 952                   # 8-byte Folded Spill
	st.d	$s3, $sp, 944                   # 8-byte Folded Spill
	st.d	$s4, $sp, 936                   # 8-byte Folded Spill
	st.d	$s5, $sp, 928                   # 8-byte Folded Spill
	st.d	$s6, $sp, 920                   # 8-byte Folded Spill
	st.d	$s7, $sp, 912                   # 8-byte Folded Spill
	st.d	$s8, $sp, 904                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 896                  # 8-byte Folded Spill
	addi.d	$fp, $sp, 992
	bstrins.d	$sp, $zero, 4, 0
	pcalau12i	$t0, %got_pc_hi20(penalty)
	ld.d	$t0, $t0, %got_pc_lo12(penalty)
	pcalau12i	$t1, %pc_hi20(Q__align.orlgth1)
	st.d	$t1, $sp, 384                   # 8-byte Folded Spill
	ld.w	$s3, $t1, %pc_lo12(Q__align.orlgth1)
	ld.w	$t0, $t0, 0
	st.d	$t0, $sp, 120                   # 8-byte Folded Spill
	st.d	$a7, $sp, 112                   # 8-byte Folded Spill
	st.d	$a6, $sp, 96                    # 8-byte Folded Spill
	move	$s8, $a5
	move	$s4, $a4
	st.d	$a3, $sp, 104                   # 8-byte Folded Spill
	st.d	$a2, $sp, 152                   # 8-byte Folded Spill
	move	$s2, $a1
	move	$s7, $a0
	pcalau12i	$s6, %pc_hi20(Q__align.mseq1)
	pcalau12i	$a0, %pc_hi20(Q__align.mseq2)
	st.d	$a0, $sp, 160                   # 8-byte Folded Spill
	bnez	$s3, .LBB3_2
# %bb.1:
	pcalau12i	$a0, %got_pc_hi20(njob)
	ld.d	$s0, $a0, %got_pc_lo12(njob)
	ld.w	$a0, $s0, 0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(AllocateCharMtx)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s0, 0
	st.d	$a0, $s6, %pc_lo12(Q__align.mseq1)
	move	$a0, $a1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(AllocateCharMtx)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 384                   # 8-byte Folded Reload
	ld.w	$s3, $a1, %pc_lo12(Q__align.orlgth1)
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align.mseq2)
.LBB3_2:
	ld.d	$a0, $s7, 0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s2, 0
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	addi.w	$s0, $a0, 0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(Q__align.orlgth2)
	st.d	$a1, $sp, 88                    # 8-byte Folded Spill
	ld.w	$s5, $a1, %pc_lo12(Q__align.orlgth2)
	st.d	$a0, $sp, 248                   # 8-byte Folded Spill
	addi.w	$a6, $a0, 0
	pcalau12i	$a0, %pc_hi20(Q__align.w1)
	st.d	$a0, $sp, 352                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Q__align.w2)
	st.d	$a0, $sp, 376                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Q__align.initverticalw)
	st.d	$a0, $sp, 368                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Q__align.lastverticalw)
	st.d	$a0, $sp, 168                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Q__align.m)
	st.d	$a0, $sp, 360                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Q__align.mp)
	st.d	$a0, $sp, 224                   # 8-byte Folded Spill
	pcalau12i	$s1, %pc_hi20(Q__align.mseq)
	pcalau12i	$a0, %pc_hi20(Q__align.digf1)
	st.d	$a0, $sp, 472                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Q__align.digf2)
	st.d	$a0, $sp, 456                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Q__align.diaf1)
	st.d	$a0, $sp, 176                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Q__align.diaf2)
	st.d	$a0, $sp, 192                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Q__align.gapz1)
	st.d	$a0, $sp, 480                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Q__align.gapz2)
	st.d	$a0, $sp, 464                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Q__align.gapf1)
	st.d	$a0, $sp, 200                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Q__align.gapf2)
	st.d	$a0, $sp, 240                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Q__align.ogcp1g)
	st.d	$a0, $sp, 504                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Q__align.ogcp2g)
	st.d	$a0, $sp, 488                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Q__align.fgcp1g)
	st.d	$a0, $sp, 496                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Q__align.fgcp2g)
	st.d	$a0, $sp, 448                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Q__align.og_h_dg_n1_p)
	st.d	$a0, $sp, 312                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Q__align.og_h_dg_n2_p)
	st.d	$a0, $sp, 328                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Q__align.fg_h_dg_n1_p)
	st.d	$a0, $sp, 304                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Q__align.fg_h_dg_n2_p)
	st.d	$a0, $sp, 320                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Q__align.og_t_fg_h_dg_n1_p)
	st.d	$a0, $sp, 296                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Q__align.og_t_fg_h_dg_n2_p)
	st.d	$a0, $sp, 272                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Q__align.fg_t_og_h_dg_n1_p)
	st.d	$a0, $sp, 280                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Q__align.fg_t_og_h_dg_n2_p)
	st.d	$a0, $sp, 256                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Q__align.gapz_n1)
	st.d	$a0, $sp, 288                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Q__align.gapz_n2)
	st.d	$a0, $sp, 264                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Q__align.cpmx1)
	st.d	$a0, $sp, 432                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Q__align.cpmx2)
	st.d	$a0, $sp, 424                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Q__align.floatwork)
	st.d	$a0, $sp, 344                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Q__align.intwork)
	st.d	$a0, $sp, 336                   # 8-byte Folded Spill
	st.d	$s2, $sp, 144                   # 8-byte Folded Spill
	st.d	$s4, $sp, 216                   # 8-byte Folded Spill
	st.d	$s7, $sp, 232                   # 8-byte Folded Spill
	st.d	$s6, $sp, 136                   # 8-byte Folded Spill
	st.d	$s0, $sp, 208                   # 8-byte Folded Spill
	st.d	$a6, $sp, 440                   # 8-byte Folded Spill
	blt	$s3, $s0, .LBB3_4
# %bb.3:
	bge	$s5, $a6, .LBB3_9
.LBB3_4:
	ori	$a0, $zero, 1
	pcalau12i	$s0, %pc_hi20(Q__align.match)
	blt	$s3, $a0, .LBB3_7
# %bb.5:
	ld.d	$s2, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 248                   # 8-byte Folded Reload
	blt	$s5, $a0, .LBB3_8
# %bb.6:
	ld.d	$a0, $sp, 352                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.w1)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 376                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.w2)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, %pc_lo12(Q__align.match)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 368                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.initverticalw)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.lastverticalw)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 360                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.m)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.mp)
	pcaddu18i	$ra, %call36(FreeIntVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, %pc_lo12(Q__align.mseq)
	pcaddu18i	$ra, %call36(FreeCharMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 472                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.digf1)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 456                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.digf2)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.diaf1)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.diaf2)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 480                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.gapz1)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 464                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.gapz2)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.gapf1)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.gapf2)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 504                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.ogcp1g)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 488                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.ogcp2g)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 496                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.fgcp1g)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 448                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.fgcp2g)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 312                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.og_h_dg_n1_p)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 328                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.og_h_dg_n2_p)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 304                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.fg_h_dg_n1_p)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 320                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.fg_h_dg_n2_p)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 296                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.og_t_fg_h_dg_n1_p)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.og_t_fg_h_dg_n2_p)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 280                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.fg_t_og_h_dg_n1_p)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.fg_t_og_h_dg_n2_p)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 288                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.gapz_n1)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.gapz_n2)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 432                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.cpmx1)
	pcaddu18i	$ra, %call36(FreeFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 424                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.cpmx2)
	pcaddu18i	$ra, %call36(FreeFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 344                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.floatwork)
	pcaddu18i	$ra, %call36(FreeFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 336                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.intwork)
	pcaddu18i	$ra, %call36(FreeIntMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 384                   # 8-byte Folded Reload
	ld.w	$s3, $a0, %pc_lo12(Q__align.orlgth1)
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ld.w	$s5, $a0, %pc_lo12(Q__align.orlgth2)
	b	.LBB3_8
.LBB3_7:
	ld.d	$s2, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 248                   # 8-byte Folded Reload
.LBB3_8:
	pcalau12i	$a0, %pc_hi20(.LCPI3_0)
	fld.d	$fa0, $a0, %pc_lo12(.LCPI3_0)
	movgr2fr.w	$fa1, $s2
	ffint.d.w	$fa1, $fa1
	fmul.d	$fa1, $fa1, $fa0
	ftintrz.w.d	$fa1, $fa1
	movfr2gr.s	$a0, $fa1
	slt	$a1, $a0, $s3
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s3, $a1
	or	$s3, $a1, $a0
	addi.w	$s2, $s3, 100
	movgr2fr.w	$fa1, $s4
	ffint.d.w	$fa1, $fa1
	fmul.d	$fa0, $fa1, $fa0
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a0, $fa0
	slt	$a1, $a0, $s5
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s5, $a1
	or	$s5, $a1, $a0
	addi.w	$s4, $s5, 100
	addi.w	$s6, $s5, 102
	move	$a0, $s6
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 352                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align.w1)
	move	$a0, $s6
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 376                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align.w2)
	move	$a0, $s6
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $s0, %pc_lo12(Q__align.match)
	addi.w	$s7, $s3, 102
	move	$a0, $s7
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 368                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align.initverticalw)
	move	$a0, $s7
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align.lastverticalw)
	move	$a0, $s6
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 360                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align.m)
	move	$a0, $s6
	pcaddu18i	$ra, %call36(AllocateIntVec)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(njob)
	ld.d	$a1, $a1, %got_pc_lo12(njob)
	ld.w	$a2, $a1, 0
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align.mp)
	add.w	$a1, $s4, $s2
	move	$a0, $a2
	pcaddu18i	$ra, %call36(AllocateCharMtx)
	jirl	$ra, $ra, 0
	st.d	$a0, $s1, %pc_lo12(Q__align.mseq)
	move	$a0, $s7
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 472                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align.digf1)
	move	$a0, $s6
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 456                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align.digf2)
	move	$a0, $s7
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align.diaf1)
	move	$a0, $s6
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 192                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align.diaf2)
	move	$a0, $s7
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 480                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align.gapz1)
	move	$a0, $s6
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 464                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align.gapz2)
	move	$a0, $s7
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 200                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align.gapf1)
	move	$a0, $s6
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 240                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align.gapf2)
	move	$a0, $s7
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 504                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align.ogcp1g)
	move	$a0, $s6
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 488                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align.ogcp2g)
	move	$a0, $s7
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 496                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align.fgcp1g)
	move	$a0, $s6
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 448                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align.fgcp2g)
	move	$a0, $s7
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 312                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align.og_h_dg_n1_p)
	move	$a0, $s6
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 328                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align.og_h_dg_n2_p)
	move	$a0, $s7
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 304                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align.fg_h_dg_n1_p)
	move	$a0, $s6
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 320                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align.fg_h_dg_n2_p)
	move	$a0, $s7
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 296                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align.og_t_fg_h_dg_n1_p)
	move	$a0, $s6
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 272                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align.og_t_fg_h_dg_n2_p)
	move	$a0, $s7
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 280                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align.fg_t_og_h_dg_n1_p)
	move	$a0, $s6
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align.fg_t_og_h_dg_n2_p)
	move	$a0, $s7
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 288                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align.gapz_n1)
	move	$a0, $s6
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 264                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align.gapz_n2)
	ori	$a0, $zero, 26
	move	$a1, $s7
	pcaddu18i	$ra, %call36(AllocateFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 432                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align.cpmx1)
	ori	$a0, $zero, 26
	move	$a1, $s6
	pcaddu18i	$ra, %call36(AllocateFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 424                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align.cpmx2)
	slt	$a0, $s4, $s2
	masknez	$a1, $s4, $a0
	maskeqz	$a0, $s2, $a0
	or	$a0, $a0, $a1
	addi.w	$s4, $a0, 2
	ori	$a1, $zero, 26
	move	$a0, $s4
	pcaddu18i	$ra, %call36(AllocateFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 344                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align.floatwork)
	ori	$a1, $zero, 27
	move	$a0, $s4
	pcaddu18i	$ra, %call36(AllocateIntMtx)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 336                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align.intwork)
	ld.d	$a0, $sp, 384                   # 8-byte Folded Reload
	st.w	$s3, $a0, %pc_lo12(Q__align.orlgth1)
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	st.w	$s5, $a0, %pc_lo12(Q__align.orlgth2)
	ld.d	$s2, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 216                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 232                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 208                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 440                   # 8-byte Folded Reload
.LBB3_9:
	ori	$a0, $zero, 1
	blt	$s4, $a0, .LBB3_12
# %bb.10:                               # %.lr.ph
	ld.d	$a1, $s1, %pc_lo12(Q__align.mseq)
	ld.d	$a2, $s6, %pc_lo12(Q__align.mseq1)
	move	$a3, $s4
	move	$a4, $s7
	.p2align	4, , 16
.LBB3_11:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a5, $a1, 0
	st.d	$a5, $a2, 0
	ld.d	$a5, $a4, 0
	stx.b	$zero, $a5, $s0
	addi.d	$a4, $a4, 8
	addi.d	$a2, $a2, 8
	addi.d	$a3, $a3, -1
	addi.d	$a1, $a1, 8
	bnez	$a3, .LBB3_11
.LBB3_12:                               # %.preheader561
	blt	$s8, $a0, .LBB3_15
# %bb.13:                               # %.lr.ph568
	ld.d	$a1, $s1, %pc_lo12(Q__align.mseq)
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.mseq2)
	alsl.d	$a1, $s4, $a1, 3
	move	$a2, $s8
	move	$a3, $s2
	.p2align	4, , 16
.LBB3_14:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a4, $a1, 0
	st.d	$a4, $a0, 0
	ld.d	$a4, $a3, 0
	stx.b	$zero, $a4, $a6
	addi.d	$a1, $a1, 8
	addi.d	$a3, $a3, 8
	addi.d	$a2, $a2, -1
	addi.d	$a0, $a0, 8
	bnez	$a2, .LBB3_14
.LBB3_15:                               # %._crit_edge
	pcalau12i	$a0, %got_pc_hi20(commonAlloc1)
	ld.d	$s0, $a0, %got_pc_lo12(commonAlloc1)
	pcalau12i	$a0, %got_pc_hi20(commonAlloc2)
	ld.d	$s1, $a0, %got_pc_lo12(commonAlloc2)
	ld.d	$s6, $fp, 8
	ld.w	$a1, $s0, 0
	ld.w	$a0, $s1, 0
	ld.d	$a2, $sp, 120                   # 8-byte Folded Reload
	movgr2fr.w	$fs0, $a2
	blt	$a1, $s3, .LBB3_18
# %bb.16:                               # %._crit_edge
	blt	$a0, $s5, .LBB3_18
# %bb.17:                               # %._crit_edge717
	pcalau12i	$a0, %got_pc_hi20(commonIP)
	ld.d	$a0, $a0, %got_pc_lo12(commonIP)
	ld.d	$a0, $a0, 0
	b	.LBB3_22
.LBB3_18:
	beqz	$a1, .LBB3_21
# %bb.19:
	beqz	$a0, .LBB3_21
# %bb.20:
	pcalau12i	$a0, %got_pc_hi20(commonIP)
	ld.d	$a0, $a0, %got_pc_lo12(commonIP)
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(FreeIntMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 384                   # 8-byte Folded Reload
	ld.w	$s3, $a0, %pc_lo12(Q__align.orlgth1)
	ld.w	$a1, $s0, 0
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ld.w	$s5, $a0, %pc_lo12(Q__align.orlgth2)
	ld.w	$a0, $s1, 0
.LBB3_21:
	slt	$a2, $a1, $s3
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $s3, $a2
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
	ld.d	$s2, $sp, 144                   # 8-byte Folded Reload
.LBB3_22:
	ld.d	$a1, $sp, 432                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(Q__align.cpmx1)
	ffint.s.w	$fa0, $fs0
	xvst	$xr0, $sp, 384                  # 32-byte Folded Spill
	pcalau12i	$a2, %pc_hi20(Q__align.ijp)
	st.d	$a2, $sp, 120                   # 8-byte Folded Spill
	st.d	$a0, $a2, %pc_lo12(Q__align.ijp)
	move	$a0, $s7
	ld.d	$s5, $sp, 152                   # 8-byte Folded Reload
	move	$a2, $s5
	ld.d	$s1, $sp, 208                   # 8-byte Folded Reload
	move	$a3, $s1
	move	$a4, $s4
	pcaddu18i	$ra, %call36(cpmx_calc_new)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 424                   # 8-byte Folded Reload
	ld.d	$a1, $a0, %pc_lo12(Q__align.cpmx2)
	move	$a0, $s2
	ld.d	$s0, $sp, 104                   # 8-byte Folded Reload
	move	$a2, $s0
	ld.d	$s3, $sp, 440                   # 8-byte Folded Reload
	move	$a3, $s3
	move	$a4, $s8
	pcaddu18i	$ra, %call36(cpmx_calc_new)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 504                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.ogcp1g)
	st.d	$s8, $sp, 184                   # 8-byte Folded Spill
	beqz	$s6, .LBB3_24
# %bb.23:
	ld.d	$s4, $fp, 32
	move	$a5, $s6
	st.d	$s6, $sp, 80                    # 8-byte Folded Spill
	ld.d	$s6, $fp, 24
	ld.d	$s7, $fp, 16
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 232                   # 8-byte Folded Reload
	move	$a3, $s5
	move	$a4, $s1
	move	$s5, $s1
	move	$a6, $s6
	pcaddu18i	$ra, %call36(new_OpeningGapCount_zure)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 488                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.ogcp2g)
	move	$a1, $s8
	move	$a2, $s2
	move	$a3, $s0
	move	$a4, $s3
	move	$a5, $s7
	move	$s1, $s7
	st.d	$s7, $sp, 88                    # 8-byte Folded Spill
	move	$a6, $s4
	pcaddu18i	$ra, %call36(new_OpeningGapCount_zure)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 496                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.fgcp1g)
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 232                   # 8-byte Folded Reload
	move	$s8, $s3
	move	$s3, $s0
	ld.d	$s0, $sp, 152                   # 8-byte Folded Reload
	move	$a3, $s0
	move	$a4, $s5
	ld.d	$s7, $sp, 80                    # 8-byte Folded Reload
	move	$a5, $s7
	move	$a6, $s6
	pcaddu18i	$ra, %call36(new_FinalGapCount_zure)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 448                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.fgcp2g)
	ld.d	$a1, $sp, 184                   # 8-byte Folded Reload
	move	$a2, $s2
	move	$a3, $s3
	move	$a4, $s8
	move	$a5, $s1
	move	$a6, $s4
	pcaddu18i	$ra, %call36(new_FinalGapCount_zure)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 472                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.digf1)
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 232                   # 8-byte Folded Reload
	move	$a3, $s0
	move	$s5, $s0
	ld.d	$s1, $sp, 208                   # 8-byte Folded Reload
	move	$a4, $s1
	move	$a5, $s7
	move	$a6, $s6
	move	$s0, $s6
	pcaddu18i	$ra, %call36(getdigapfreq_part)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 456                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.digf2)
	ld.d	$a1, $sp, 184                   # 8-byte Folded Reload
	move	$a2, $s2
	move	$a3, $s3
	move	$a4, $s8
	ld.d	$s6, $sp, 88                    # 8-byte Folded Reload
	move	$a5, $s6
	move	$a6, $s4
	pcaddu18i	$ra, %call36(getdigapfreq_part)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.diaf1)
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 232                   # 8-byte Folded Reload
	move	$a3, $s5
	move	$a4, $s1
	move	$a5, $s7
	move	$a6, $s0
	pcaddu18i	$ra, %call36(getdiaminofreq_part)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.diaf2)
	ld.d	$a1, $sp, 184                   # 8-byte Folded Reload
	move	$a2, $s2
	move	$a3, $s3
	move	$a4, $s8
	move	$a5, $s6
	move	$a6, $s4
	ld.d	$s1, $sp, 232                   # 8-byte Folded Reload
	move	$s4, $s3
	move	$s3, $s8
	ld.d	$s8, $sp, 184                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 216                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(getdiaminofreq_part)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.gapf1)
	move	$a1, $s0
	move	$a2, $s1
	move	$a3, $s5
	ld.d	$a4, $sp, 208                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(getgapfreq)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.gapf2)
	move	$a1, $s8
	move	$a2, $s2
	move	$a3, $s4
	move	$a4, $s3
	pcaddu18i	$ra, %call36(getgapfreq)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 480                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.gapz1)
	move	$a1, $s0
	ld.d	$a3, $sp, 208                   # 8-byte Folded Reload
	move	$a2, $s1
	move	$s1, $a3
	move	$a3, $s5
	move	$a4, $s1
	move	$a5, $s7
	pcaddu18i	$ra, %call36(getgapfreq_zure_part)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 464                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.gapz2)
	move	$a1, $s8
	move	$a2, $s2
	move	$a3, $s4
	move	$a4, $s3
	move	$a5, $s7
	pcaddu18i	$ra, %call36(getgapfreq_zure_part)
	jirl	$ra, $ra, 0
	b	.LBB3_25
.LBB3_24:
	move	$a1, $s4
	move	$a2, $s7
	move	$a3, $s5
	move	$a4, $s1
	pcaddu18i	$ra, %call36(st_OpeningGapCount)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 488                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.ogcp2g)
	move	$a1, $s8
	move	$a2, $s2
	move	$a3, $s0
	move	$a4, $s3
	pcaddu18i	$ra, %call36(st_OpeningGapCount)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 496                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.fgcp1g)
	move	$a1, $s4
	move	$a2, $s7
	move	$a3, $s5
	move	$a4, $s1
	pcaddu18i	$ra, %call36(st_FinalGapCount_zure)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 448                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.fgcp2g)
	move	$a1, $s8
	move	$a2, $s2
	move	$a3, $s0
	move	$a4, $s3
	pcaddu18i	$ra, %call36(st_FinalGapCount_zure)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 472                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.digf1)
	move	$a1, $s4
	move	$a2, $s7
	move	$a3, $s5
	move	$a4, $s1
	pcaddu18i	$ra, %call36(getdigapfreq_st)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 456                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.digf2)
	move	$a1, $s8
	move	$a2, $s2
	move	$a3, $s0
	move	$a4, $s3
	pcaddu18i	$ra, %call36(getdigapfreq_st)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.diaf1)
	move	$a1, $s4
	move	$a2, $s7
	move	$a3, $s5
	move	$a4, $s1
	pcaddu18i	$ra, %call36(getdiaminofreq_x)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.diaf2)
	move	$a1, $s8
	move	$a2, $s2
	move	$a3, $s0
	move	$a4, $s3
	pcaddu18i	$ra, %call36(getdiaminofreq_x)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.gapf1)
	move	$a1, $s4
	move	$a2, $s7
	move	$a3, $s5
	move	$a4, $s1
	pcaddu18i	$ra, %call36(getgapfreq)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.gapf2)
	move	$a1, $s8
	move	$a2, $s2
	move	$a3, $s0
	move	$a4, $s3
	pcaddu18i	$ra, %call36(getgapfreq)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 480                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.gapz1)
	move	$a1, $s4
	move	$a2, $s7
	move	$a3, $s5
	move	$a4, $s1
	pcaddu18i	$ra, %call36(getgapfreq_zure)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 464                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.gapz2)
	move	$a1, $s8
	move	$a2, $s2
	move	$a3, $s0
	move	$a4, $s3
	pcaddu18i	$ra, %call36(getgapfreq_zure)
	jirl	$ra, $ra, 0
.LBB3_25:
	ld.d	$s6, $sp, 128                   # 8-byte Folded Reload
	addi.w	$a0, $zero, -1
	xvld	$xr19, $sp, 384                 # 32-byte Folded Reload
	fcvt.d.s	$fa0, $ft11
	ld.d	$s7, $sp, 248                   # 8-byte Folded Reload
	st.d	$a0, $sp, 200                   # 8-byte Folded Spill
	move	$ra, $s3
	move	$s3, $a0
	blt	$ra, $a0, .LBB3_30
# %bb.26:                               # %.lr.ph571
	ld.d	$a0, $sp, 488                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.ogcp2g)
	ld.d	$a1, $sp, 456                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(Q__align.digf2)
	ld.d	$a2, $sp, 328                   # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(Q__align.og_h_dg_n2_p)
	ld.d	$a3, $sp, 448                   # 8-byte Folded Reload
	ld.d	$a3, $a3, %pc_lo12(Q__align.fgcp2g)
	ld.d	$a4, $sp, 320                   # 8-byte Folded Reload
	ld.d	$a4, $a4, %pc_lo12(Q__align.fg_h_dg_n2_p)
	ld.d	$a5, $sp, 272                   # 8-byte Folded Reload
	ld.d	$a5, $a5, %pc_lo12(Q__align.og_t_fg_h_dg_n2_p)
	ld.d	$a6, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a6, $a6, %pc_lo12(Q__align.fg_t_og_h_dg_n2_p)
	ld.d	$a7, $sp, 464                   # 8-byte Folded Reload
	ld.d	$a7, $a7, %pc_lo12(Q__align.gapz2)
	ld.d	$t0, $sp, 264                   # 8-byte Folded Reload
	ld.d	$t0, $t0, %pc_lo12(Q__align.gapz_n2)
	addi.d	$t3, $s7, 2
	bstrpick.d	$t1, $t3, 31, 0
	ori	$t2, $zero, 24
	bgeu	$t1, $t2, .LBB3_45
# %bb.27:
	move	$t2, $zero
.LBB3_28:                               # %scalar.ph.preheader
	slli.d	$t3, $t2, 2
	sub.d	$t1, $t1, $t2
	vldi	$vr1, -912
	vldi	$vr2, -928
	vldi	$vr3, -1168
	.p2align	4, , 16
.LBB3_29:                               # %scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	fldx.s	$fa4, $a0, $t3
	fldx.s	$fa5, $a1, $t3
	fcvt.d.s	$fa4, $fa4
	fsub.d	$fa4, $fa1, $fa4
	fcvt.d.s	$fa5, $fa5
	fsub.d	$fa4, $fa4, $fa5
	fmul.d	$fa4, $fa4, $fa0
	fmul.d	$fa4, $fa4, $fa2
	fcvt.s.d	$fa4, $fa4
	fstx.s	$fa4, $a2, $t3
	fldx.s	$fa4, $a3, $t3
	fldx.s	$fa5, $a1, $t3
	fcvt.d.s	$fa4, $fa4
	fsub.d	$fa4, $fa1, $fa4
	fcvt.d.s	$fa5, $fa5
	fsub.d	$fa4, $fa4, $fa5
	fmul.d	$fa4, $fa4, $fa0
	fmul.d	$fa4, $fa4, $fa2
	fcvt.s.d	$fa4, $fa4
	fstx.s	$fa4, $a4, $t3
	fldx.s	$fa4, $a0, $t3
	fldx.s	$fa5, $a3, $t3
	fcvt.d.s	$fa4, $fa4
	fldx.s	$fa6, $a1, $t3
	fsub.d	$fa4, $fa1, $fa4
	fcvt.d.s	$fa5, $fa5
	fadd.d	$fa4, $fa4, $fa5
	fcvt.d.s	$fa5, $fa6
	fsub.d	$fa4, $fa4, $fa5
	fmul.d	$fa4, $fa4, $fa2
	fmul.d	$fa4, $fa4, $fa0
	fcvt.s.d	$fa4, $fa4
	fstx.s	$fa4, $a5, $t3
	fldx.s	$fa4, $a3, $t3
	fldx.s	$fa5, $a0, $t3
	fcvt.d.s	$fa4, $fa4
	fldx.s	$fa6, $a1, $t3
	fsub.d	$fa4, $fa1, $fa4
	fcvt.d.s	$fa5, $fa5
	fadd.d	$fa4, $fa4, $fa5
	fcvt.d.s	$fa5, $fa6
	fsub.d	$fa4, $fa4, $fa5
	fmul.d	$fa4, $fa4, $fa2
	fmul.d	$fa4, $fa4, $fa0
	fcvt.s.d	$fa4, $fa4
	fstx.s	$fa4, $a6, $t3
	fldx.s	$fa4, $a7, $t3
	fsub.s	$fa4, $fa3, $fa4
	fstx.s	$fa4, $t0, $t3
	addi.d	$t0, $t0, 4
	addi.d	$a7, $a7, 4
	addi.d	$a6, $a6, 4
	addi.d	$a5, $a5, 4
	addi.d	$a4, $a4, 4
	addi.d	$a3, $a3, 4
	addi.d	$a2, $a2, 4
	addi.d	$a1, $a1, 4
	addi.d	$t1, $t1, -1
	addi.d	$a0, $a0, 4
	bnez	$t1, .LBB3_29
.LBB3_30:                               # %._crit_edge572
	blt	$s1, $s3, .LBB3_35
# %bb.31:                               # %.lr.ph575
	ld.d	$a0, $sp, 504                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.ogcp1g)
	ld.d	$a1, $sp, 472                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(Q__align.digf1)
	ld.d	$a2, $sp, 312                   # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(Q__align.og_h_dg_n1_p)
	ld.d	$a3, $sp, 496                   # 8-byte Folded Reload
	ld.d	$a3, $a3, %pc_lo12(Q__align.fgcp1g)
	ld.d	$a4, $sp, 304                   # 8-byte Folded Reload
	ld.d	$a4, $a4, %pc_lo12(Q__align.fg_h_dg_n1_p)
	ld.d	$a5, $sp, 296                   # 8-byte Folded Reload
	ld.d	$a5, $a5, %pc_lo12(Q__align.og_t_fg_h_dg_n1_p)
	ld.d	$a6, $sp, 280                   # 8-byte Folded Reload
	ld.d	$a6, $a6, %pc_lo12(Q__align.fg_t_og_h_dg_n1_p)
	ld.d	$a7, $sp, 480                   # 8-byte Folded Reload
	ld.d	$a7, $a7, %pc_lo12(Q__align.gapz1)
	ld.d	$t0, $sp, 288                   # 8-byte Folded Reload
	ld.d	$t0, $t0, %pc_lo12(Q__align.gapz_n1)
	addi.d	$t3, $s6, 2
	bstrpick.d	$t1, $t3, 31, 0
	ori	$t2, $zero, 24
	bgeu	$t1, $t2, .LBB3_78
# %bb.32:
	move	$t2, $zero
.LBB3_33:                               # %scalar.ph1006.preheader
	slli.d	$t3, $t2, 2
	sub.d	$t1, $t1, $t2
	vldi	$vr1, -912
	vldi	$vr2, -928
	vldi	$vr3, -1168
	.p2align	4, , 16
.LBB3_34:                               # %scalar.ph1006
                                        # =>This Inner Loop Header: Depth=1
	fldx.s	$fa4, $a0, $t3
	fldx.s	$fa5, $a1, $t3
	fcvt.d.s	$fa4, $fa4
	fsub.d	$fa4, $fa1, $fa4
	fcvt.d.s	$fa5, $fa5
	fsub.d	$fa4, $fa4, $fa5
	fmul.d	$fa4, $fa4, $fa0
	fmul.d	$fa4, $fa4, $fa2
	fcvt.s.d	$fa4, $fa4
	fstx.s	$fa4, $a2, $t3
	fldx.s	$fa4, $a3, $t3
	fldx.s	$fa5, $a1, $t3
	fcvt.d.s	$fa4, $fa4
	fsub.d	$fa4, $fa1, $fa4
	fcvt.d.s	$fa5, $fa5
	fsub.d	$fa4, $fa4, $fa5
	fmul.d	$fa4, $fa4, $fa0
	fmul.d	$fa4, $fa4, $fa2
	fcvt.s.d	$fa4, $fa4
	fstx.s	$fa4, $a4, $t3
	fldx.s	$fa4, $a0, $t3
	fldx.s	$fa5, $a3, $t3
	fcvt.d.s	$fa4, $fa4
	fldx.s	$fa6, $a1, $t3
	fsub.d	$fa4, $fa1, $fa4
	fcvt.d.s	$fa5, $fa5
	fadd.d	$fa4, $fa4, $fa5
	fcvt.d.s	$fa5, $fa6
	fsub.d	$fa4, $fa4, $fa5
	fmul.d	$fa4, $fa4, $fa2
	fmul.d	$fa4, $fa4, $fa0
	fcvt.s.d	$fa4, $fa4
	fstx.s	$fa4, $a5, $t3
	fldx.s	$fa4, $a3, $t3
	fldx.s	$fa5, $a0, $t3
	fcvt.d.s	$fa4, $fa4
	fldx.s	$fa6, $a1, $t3
	fsub.d	$fa4, $fa1, $fa4
	fcvt.d.s	$fa5, $fa5
	fadd.d	$fa4, $fa4, $fa5
	fcvt.d.s	$fa5, $fa6
	fsub.d	$fa4, $fa4, $fa5
	fmul.d	$fa4, $fa4, $fa2
	fmul.d	$fa4, $fa4, $fa0
	fcvt.s.d	$fa4, $fa4
	fstx.s	$fa4, $a6, $t3
	fldx.s	$fa4, $a7, $t3
	fsub.s	$fa4, $fa3, $fa4
	fstx.s	$fa4, $t0, $t3
	addi.d	$t0, $t0, 4
	addi.d	$a7, $a7, 4
	addi.d	$a6, $a6, 4
	addi.d	$a5, $a5, 4
	addi.d	$a4, $a4, 4
	addi.d	$a3, $a3, 4
	addi.d	$a2, $a2, 4
	addi.d	$a1, $a1, 4
	addi.d	$t1, $t1, -1
	addi.d	$a0, $a0, 4
	bnez	$t1, .LBB3_34
.LBB3_35:                               # %._crit_edge576
	move	$s0, $s6
	pcalau12i	$a0, %got_pc_hi20(RNAscoremtx)
	ld.d	$a1, $a0, %got_pc_lo12(RNAscoremtx)
	ld.d	$a0, $sp, 352                   # 8-byte Folded Reload
	ld.d	$t3, $a0, %pc_lo12(Q__align.w1)
	st.d	$a1, $sp, 480                   # 8-byte Folded Spill
	ld.bu	$a0, $a1, 0
	ld.d	$a1, $sp, 376                   # 8-byte Folded Reload
	ld.d	$t4, $a1, %pc_lo12(Q__align.w2)
	ori	$a1, $zero, 114
	pcalau12i	$a2, %pc_hi20(impmtx)
	st.d	$a2, $sp, 192                   # 8-byte Folded Spill
	move	$s5, $t3
	move	$s6, $t4
	bne	$a0, $a1, .LBB3_38
# %bb.36:
	beqz	$s1, .LBB3_111
# %bb.37:                               # %.lr.ph.preheader.i
	ld.d	$a0, $sp, 368                   # 8-byte Folded Reload
	ld.d	$s4, $a0, %pc_lo12(Q__align.initverticalw)
	slli.d	$a0, $s0, 2
	bstrpick.d	$a0, $a0, 33, 2
	slli.d	$a2, $a0, 2
	move	$a0, $s4
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	b	.LBB3_39
.LBB3_38:
	ld.d	$a0, $sp, 368                   # 8-byte Folded Reload
	ld.d	$s4, $a0, %pc_lo12(Q__align.initverticalw)
	ld.d	$a0, $sp, 424                   # 8-byte Folded Reload
	ld.d	$a1, $a0, %pc_lo12(Q__align.cpmx2)
	ld.d	$a0, $sp, 432                   # 8-byte Folded Reload
	ld.d	$a2, $a0, %pc_lo12(Q__align.cpmx1)
	ld.d	$a0, $sp, 344                   # 8-byte Folded Reload
	ld.d	$a5, $a0, %pc_lo12(Q__align.floatwork)
	ld.d	$a0, $sp, 336                   # 8-byte Folded Reload
	ld.d	$a6, $a0, %pc_lo12(Q__align.intwork)
	ori	$a7, $zero, 1
	move	$a0, $s4
	move	$a3, $zero
	move	$a4, $s1
	pcaddu18i	$ra, %call36(match_calc)
	jirl	$ra, $ra, 0
.LBB3_39:                               # %clearvec.exit
	ld.d	$ra, $sp, 440                   # 8-byte Folded Reload
	xvld	$xr19, $sp, 384                 # 32-byte Folded Reload
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	move	$t3, $s5
	move	$t4, $s6
	beqz	$a0, .LBB3_44
# %bb.40:
	ori	$a0, $zero, 1
	blt	$s1, $a0, .LBB3_43
# %bb.41:                               # %.lr.ph.i
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(impmtx)
	bstrpick.d	$a1, $s0, 30, 0
	.p2align	4, , 16
.LBB3_42:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a2, $a0, 0
	fld.s	$fa0, $a2, 0
	fld.s	$fa1, $s4, 0
	fadd.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $s4, 0
	addi.d	$s4, $s4, 4
	addi.d	$a1, $a1, -1
	addi.d	$a0, $a0, 8
	bnez	$a1, .LBB3_42
.LBB3_43:
	st.d	$zero, $sp, 240                 # 8-byte Folded Spill
	b	.LBB3_113
.LBB3_44:
	ori	$a0, $zero, 1
	b	.LBB3_112
.LBB3_45:                               # %vector.memcheck
	move	$t8, $s1
	alsl.d	$s3, $t1, $a2, 2
	alsl.d	$s2, $t1, $a4, 2
	sltu	$t2, $a2, $s2
	sltu	$t4, $a4, $s3
	and	$t4, $t2, $t4
	move	$t2, $zero
	bnez	$t4, .LBB3_328
# %bb.46:                               # %vector.memcheck
	alsl.d	$s1, $t1, $a5, 2
	sltu	$t4, $a2, $s1
	sltu	$t5, $a5, $s3
	and	$t4, $t4, $t5
	bnez	$t4, .LBB3_328
# %bb.47:                               # %vector.memcheck
	alsl.d	$t5, $t1, $a6, 2
	sltu	$t4, $a2, $t5
	sltu	$t6, $a6, $s3
	and	$t4, $t4, $t6
	bnez	$t4, .LBB3_328
# %bb.48:                               # %vector.memcheck
	alsl.d	$t4, $t1, $t0, 2
	sltu	$t6, $a2, $t4
	sltu	$t7, $t0, $s3
	and	$t6, $t6, $t7
	bnez	$t6, .LBB3_328
# %bb.49:                               # %vector.memcheck
	alsl.d	$t6, $t1, $a0, 2
	sltu	$t7, $a2, $t6
	sltu	$t8, $a0, $s3
	and	$t7, $t7, $t8
	bnez	$t7, .LBB3_326
# %bb.50:                               # %vector.memcheck
	alsl.d	$t7, $t1, $a1, 2
	sltu	$t8, $a2, $t7
	sltu	$s0, $a1, $s3
	and	$t8, $t8, $s0
	bnez	$t8, .LBB3_326
# %bb.51:                               # %vector.memcheck
	alsl.d	$t8, $t1, $a3, 2
	sltu	$s0, $a2, $t8
	sltu	$s4, $a3, $s3
	and	$s0, $s0, $s4
	bnez	$s0, .LBB3_326
# %bb.52:                               # %vector.memcheck
	alsl.d	$s0, $t1, $a7, 2
	sltu	$s4, $a2, $s0
	sltu	$s3, $a7, $s3
	and	$s3, $s4, $s3
	bnez	$s3, .LBB3_326
# %bb.53:                               # %vector.memcheck
	sltu	$s3, $a4, $s1
	sltu	$s4, $a5, $s2
	and	$s3, $s3, $s4
	bnez	$s3, .LBB3_326
# %bb.54:                               # %vector.memcheck
	sltu	$s3, $a4, $t5
	sltu	$s4, $a6, $s2
	and	$s3, $s3, $s4
	bnez	$s3, .LBB3_326
# %bb.55:                               # %vector.memcheck
	sltu	$s3, $a4, $t4
	sltu	$s4, $t0, $s2
	and	$s3, $s3, $s4
	bnez	$s3, .LBB3_326
# %bb.56:                               # %vector.memcheck
	sltu	$s3, $a4, $t6
	sltu	$s4, $a0, $s2
	and	$s3, $s3, $s4
	bnez	$s3, .LBB3_326
# %bb.57:                               # %vector.memcheck
	sltu	$s3, $a4, $t7
	sltu	$s4, $a1, $s2
	and	$s3, $s3, $s4
	bnez	$s3, .LBB3_326
# %bb.58:                               # %vector.memcheck
	sltu	$s3, $a4, $t8
	sltu	$s4, $a3, $s2
	and	$s3, $s3, $s4
	bnez	$s3, .LBB3_326
# %bb.59:                               # %vector.memcheck
	sltu	$s3, $a4, $s0
	sltu	$s2, $a7, $s2
	and	$s2, $s3, $s2
	bnez	$s2, .LBB3_326
# %bb.60:                               # %vector.memcheck
	sltu	$s2, $a5, $t5
	sltu	$s3, $a6, $s1
	and	$s2, $s2, $s3
	bnez	$s2, .LBB3_326
# %bb.61:                               # %vector.memcheck
	sltu	$s2, $a5, $t4
	sltu	$s3, $t0, $s1
	and	$s2, $s2, $s3
	bnez	$s2, .LBB3_326
# %bb.62:                               # %vector.memcheck
	sltu	$s2, $a5, $t6
	sltu	$s3, $a0, $s1
	and	$s2, $s2, $s3
	bnez	$s2, .LBB3_326
# %bb.63:                               # %vector.memcheck
	sltu	$s2, $a5, $t7
	sltu	$s3, $a1, $s1
	and	$s2, $s2, $s3
	bnez	$s2, .LBB3_326
# %bb.64:                               # %vector.memcheck
	sltu	$s2, $a5, $t8
	sltu	$s3, $a3, $s1
	and	$s2, $s2, $s3
	bnez	$s2, .LBB3_326
# %bb.65:                               # %vector.memcheck
	sltu	$s2, $a5, $s0
	sltu	$s1, $a7, $s1
	and	$s1, $s2, $s1
	ld.d	$s3, $sp, 200                   # 8-byte Folded Reload
	bnez	$s1, .LBB3_324
# %bb.66:                               # %vector.memcheck
	sltu	$s1, $a6, $t4
	sltu	$s2, $t0, $t5
	and	$s1, $s1, $s2
	bnez	$s1, .LBB3_324
# %bb.67:                               # %vector.memcheck
	sltu	$s1, $a6, $t6
	sltu	$s2, $a0, $t5
	and	$s1, $s1, $s2
	bnez	$s1, .LBB3_324
# %bb.68:                               # %vector.memcheck
	sltu	$s1, $a6, $t7
	sltu	$s2, $a1, $t5
	and	$s1, $s1, $s2
	bnez	$s1, .LBB3_324
# %bb.69:                               # %vector.memcheck
	sltu	$s1, $a6, $t8
	sltu	$s2, $a3, $t5
	and	$s1, $s1, $s2
	bnez	$s1, .LBB3_324
# %bb.70:                               # %vector.memcheck
	sltu	$s1, $a6, $s0
	sltu	$t5, $a7, $t5
	and	$t5, $s1, $t5
	ld.d	$s2, $sp, 144                   # 8-byte Folded Reload
	bnez	$t5, .LBB3_177
# %bb.71:                               # %vector.memcheck
	sltu	$t5, $t0, $t6
	sltu	$t6, $a0, $t4
	and	$t5, $t5, $t6
	bnez	$t5, .LBB3_177
# %bb.72:                               # %vector.memcheck
	sltu	$t5, $t0, $t7
	sltu	$t6, $a1, $t4
	and	$t5, $t5, $t6
	bnez	$t5, .LBB3_177
# %bb.73:                               # %vector.memcheck
	sltu	$t5, $t0, $t8
	sltu	$t6, $a3, $t4
	and	$t5, $t5, $t6
	bnez	$t5, .LBB3_177
# %bb.74:                               # %vector.memcheck
	sltu	$t5, $t0, $s0
	sltu	$t4, $a7, $t4
	and	$t4, $t5, $t4
	ld.d	$s1, $sp, 208                   # 8-byte Folded Reload
	bnez	$t4, .LBB3_28
# %bb.75:                               # %vector.ph
	bstrpick.d	$t2, $t3, 31, 3
	slli.d	$t2, $t2, 3
	xvreplve0.d	$xr1, $xr0
	lu52i.d	$t3, $zero, 1023
	xvreplgr2vr.d	$xr2, $t3
	lu52i.d	$t3, $zero, 1022
	xvreplgr2vr.d	$xr3, $t3
	lu12i.w	$t3, 260096
	xvreplgr2vr.w	$xr4, $t3
	move	$t3, $a0
	move	$t4, $a1
	move	$t5, $a2
	move	$t6, $a3
	move	$t7, $a4
	move	$t8, $a5
	move	$s1, $a6
	move	$s3, $a7
	move	$s4, $t0
	move	$s5, $t2
	.p2align	4, , 16
.LBB3_76:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr5, $t3, 0
	xvst	$xr5, $sp, 800
	vld	$vr6, $sp, 816
	vreplvei.w	$vr5, $vr6, 0
	fcvt.d.s	$fa5, $fa5
	movfr2gr.d	$s0, $fa5
	vreplvei.w	$vr5, $vr6, 1
	fcvt.d.s	$fa7, $fa5
	xvinsgr2vr.d	$xr5, $s0, 0
	movfr2gr.d	$s0, $fa7
	vreplvei.w	$vr7, $vr6, 2
	fcvt.d.s	$fa7, $fa7
	xvinsgr2vr.d	$xr5, $s0, 1
	movfr2gr.d	$s0, $fa7
	vld	$vr7, $sp, 800
	vreplvei.w	$vr6, $vr6, 3
	fcvt.d.s	$fa6, $fa6
	xvinsgr2vr.d	$xr5, $s0, 2
	movfr2gr.d	$s0, $fa6
	vreplvei.w	$vr6, $vr7, 0
	fcvt.d.s	$fa6, $fa6
	xvinsgr2vr.d	$xr5, $s0, 3
	movfr2gr.d	$s0, $fa6
	vreplvei.w	$vr6, $vr7, 1
	fcvt.d.s	$ft0, $fa6
	xvinsgr2vr.d	$xr6, $s0, 0
	movfr2gr.d	$s0, $ft0
	vreplvei.w	$vr8, $vr7, 2
	fcvt.d.s	$ft0, $ft0
	xvld	$xr9, $t4, 0
	xvinsgr2vr.d	$xr6, $s0, 1
	movfr2gr.d	$s0, $ft0
	vreplvei.w	$vr7, $vr7, 3
	fcvt.d.s	$fa7, $fa7
	xvst	$xr9, $sp, 832
	vld	$vr8, $sp, 832
	xvinsgr2vr.d	$xr6, $s0, 2
	movfr2gr.d	$s0, $fa7
	xvinsgr2vr.d	$xr6, $s0, 3
	xvfsub.d	$xr9, $xr2, $xr6
	vreplvei.w	$vr7, $vr8, 0
	fcvt.d.s	$fa7, $fa7
	xvfsub.d	$xr10, $xr2, $xr5
	movfr2gr.d	$s0, $fa7
	vreplvei.w	$vr7, $vr8, 1
	fcvt.d.s	$ft3, $fa7
	xvinsgr2vr.d	$xr7, $s0, 0
	movfr2gr.d	$s0, $ft3
	vreplvei.w	$vr11, $vr8, 2
	fcvt.d.s	$ft3, $ft3
	xvinsgr2vr.d	$xr7, $s0, 1
	movfr2gr.d	$s0, $ft3
	vld	$vr11, $sp, 848
	vreplvei.w	$vr8, $vr8, 3
	fcvt.d.s	$ft0, $ft0
	xvinsgr2vr.d	$xr7, $s0, 2
	movfr2gr.d	$s0, $ft0
	vreplvei.w	$vr8, $vr11, 0
	fcvt.d.s	$ft0, $ft0
	xvinsgr2vr.d	$xr7, $s0, 3
	movfr2gr.d	$s0, $ft0
	vreplvei.w	$vr8, $vr11, 1
	fcvt.d.s	$ft4, $ft0
	xvinsgr2vr.d	$xr8, $s0, 0
	movfr2gr.d	$s0, $ft4
	vreplvei.w	$vr12, $vr11, 2
	fcvt.d.s	$ft4, $ft4
	xvinsgr2vr.d	$xr8, $s0, 1
	movfr2gr.d	$s0, $ft4
	vreplvei.w	$vr11, $vr11, 3
	fcvt.d.s	$ft3, $ft3
	xvinsgr2vr.d	$xr8, $s0, 2
	movfr2gr.d	$s0, $ft3
	xvinsgr2vr.d	$xr8, $s0, 3
	xvfsub.d	$xr11, $xr10, $xr8
	xvfsub.d	$xr12, $xr9, $xr7
	xvfmul.d	$xr12, $xr12, $xr1
	xvfmul.d	$xr11, $xr11, $xr1
	xvfmul.d	$xr11, $xr11, $xr3
	xvfmul.d	$xr12, $xr12, $xr3
	xvpickve2gr.d	$s0, $xr12, 0
	movgr2fr.d	$ft5, $s0
	fcvt.s.d	$ft5, $ft5
	xvpickve2gr.d	$s0, $xr12, 1
	movgr2fr.d	$ft6, $s0
	movfr2gr.s	$s0, $ft5
	fcvt.s.d	$ft5, $ft6
	xvinsgr2vr.w	$xr14, $s0, 0
	movfr2gr.s	$s0, $ft5
	xvinsgr2vr.w	$xr14, $s0, 1
	xvpickve2gr.d	$s0, $xr12, 2
	movgr2fr.d	$ft5, $s0
	fcvt.s.d	$ft5, $ft5
	xvpickve2gr.d	$s0, $xr12, 3
	movgr2fr.d	$ft4, $s0
	movfr2gr.s	$s0, $ft5
	fcvt.s.d	$ft4, $ft4
	xvinsgr2vr.w	$xr14, $s0, 2
	movfr2gr.s	$s0, $ft4
	xvinsgr2vr.w	$xr14, $s0, 3
	xvpickve2gr.d	$s0, $xr11, 0
	movgr2fr.d	$ft4, $s0
	fcvt.s.d	$ft4, $ft4
	xvpickve2gr.d	$s0, $xr11, 1
	movgr2fr.d	$ft5, $s0
	movfr2gr.s	$s0, $ft4
	fcvt.s.d	$ft4, $ft5
	xvinsgr2vr.w	$xr14, $s0, 4
	movfr2gr.s	$s0, $ft4
	xvinsgr2vr.w	$xr14, $s0, 5
	xvpickve2gr.d	$s0, $xr11, 2
	movgr2fr.d	$ft4, $s0
	fcvt.s.d	$ft4, $ft4
	xvpickve2gr.d	$s0, $xr11, 3
	movgr2fr.d	$ft3, $s0
	movfr2gr.s	$s0, $ft4
	fcvt.s.d	$ft3, $ft3
	xvld	$xr12, $t6, 0
	xvinsgr2vr.w	$xr14, $s0, 6
	movfr2gr.s	$s0, $ft3
	xvinsgr2vr.w	$xr14, $s0, 7
	xvst	$xr14, $t5, 0
	xvst	$xr12, $sp, 864
	vld	$vr11, $sp, 880
	vreplvei.w	$vr12, $vr11, 0
	fcvt.d.s	$ft4, $ft4
	movfr2gr.d	$s0, $ft4
	vreplvei.w	$vr12, $vr11, 1
	fcvt.d.s	$ft4, $ft4
	xvinsgr2vr.d	$xr13, $s0, 0
	movfr2gr.d	$s0, $ft4
	vreplvei.w	$vr12, $vr11, 2
	fcvt.d.s	$ft4, $ft4
	xvinsgr2vr.d	$xr13, $s0, 1
	movfr2gr.d	$s0, $ft4
	vreplvei.w	$vr11, $vr11, 3
	fcvt.d.s	$ft3, $ft3
	vld	$vr12, $sp, 864
	xvinsgr2vr.d	$xr13, $s0, 2
	movfr2gr.d	$s0, $ft3
	xvinsgr2vr.d	$xr13, $s0, 3
	xvfsub.d	$xr11, $xr2, $xr13
	vreplvei.w	$vr14, $vr12, 0
	fcvt.d.s	$ft6, $ft6
	xvfsub.d	$xr15, $xr11, $xr8
	movfr2gr.d	$s0, $ft6
	vreplvei.w	$vr14, $vr12, 1
	fcvt.d.s	$ft8, $ft6
	xvinsgr2vr.d	$xr14, $s0, 0
	movfr2gr.d	$s0, $ft8
	vreplvei.w	$vr16, $vr12, 2
	fcvt.d.s	$ft8, $ft8
	xvinsgr2vr.d	$xr14, $s0, 1
	movfr2gr.d	$s0, $ft8
	vreplvei.w	$vr12, $vr12, 3
	fcvt.d.s	$ft4, $ft4
	xvinsgr2vr.d	$xr14, $s0, 2
	movfr2gr.d	$s0, $ft4
	xvinsgr2vr.d	$xr14, $s0, 3
	xvfsub.d	$xr12, $xr2, $xr14
	xvfsub.d	$xr16, $xr12, $xr7
	xvfmul.d	$xr16, $xr16, $xr1
	xvfmul.d	$xr15, $xr15, $xr1
	xvfmul.d	$xr15, $xr15, $xr3
	xvfmul.d	$xr16, $xr16, $xr3
	xvpickve2gr.d	$s0, $xr16, 0
	movgr2fr.d	$ft9, $s0
	fcvt.s.d	$ft9, $ft9
	xvpickve2gr.d	$s0, $xr16, 1
	movgr2fr.d	$ft10, $s0
	movfr2gr.s	$s0, $ft9
	fcvt.s.d	$ft9, $ft10
	xvinsgr2vr.w	$xr18, $s0, 0
	movfr2gr.s	$s0, $ft9
	xvinsgr2vr.w	$xr18, $s0, 1
	xvpickve2gr.d	$s0, $xr16, 2
	movgr2fr.d	$ft9, $s0
	fcvt.s.d	$ft9, $ft9
	xvpickve2gr.d	$s0, $xr16, 3
	movgr2fr.d	$ft8, $s0
	movfr2gr.s	$s0, $ft9
	fcvt.s.d	$ft8, $ft8
	xvinsgr2vr.w	$xr18, $s0, 2
	movfr2gr.s	$s0, $ft8
	xvinsgr2vr.w	$xr18, $s0, 3
	xvpickve2gr.d	$s0, $xr15, 0
	movgr2fr.d	$ft8, $s0
	fcvt.s.d	$ft8, $ft8
	xvpickve2gr.d	$s0, $xr15, 1
	movgr2fr.d	$ft9, $s0
	movfr2gr.s	$s0, $ft8
	fcvt.s.d	$ft8, $ft9
	xvinsgr2vr.w	$xr18, $s0, 4
	movfr2gr.s	$s0, $ft8
	xvinsgr2vr.w	$xr18, $s0, 5
	xvpickve2gr.d	$s0, $xr15, 2
	movgr2fr.d	$ft8, $s0
	fcvt.s.d	$ft8, $ft8
	xvpickve2gr.d	$s0, $xr15, 3
	movgr2fr.d	$ft7, $s0
	movfr2gr.s	$s0, $ft8
	fcvt.s.d	$ft7, $ft7
	xvinsgr2vr.w	$xr18, $s0, 6
	movfr2gr.s	$s0, $ft7
	xvinsgr2vr.w	$xr18, $s0, 7
	xvst	$xr18, $t7, 0
	xvfadd.d	$xr9, $xr9, $xr14
	xvfadd.d	$xr10, $xr10, $xr13
	xvfsub.d	$xr10, $xr10, $xr8
	xvfsub.d	$xr9, $xr9, $xr7
	xvfmul.d	$xr9, $xr9, $xr3
	xvfmul.d	$xr10, $xr10, $xr3
	xvfmul.d	$xr10, $xr10, $xr1
	xvfmul.d	$xr9, $xr9, $xr1
	xvpickve2gr.d	$s0, $xr9, 0
	movgr2fr.d	$ft5, $s0
	fcvt.s.d	$ft5, $ft5
	xvpickve2gr.d	$s0, $xr9, 1
	movgr2fr.d	$ft6, $s0
	movfr2gr.s	$s0, $ft5
	fcvt.s.d	$ft5, $ft6
	xvinsgr2vr.w	$xr14, $s0, 0
	movfr2gr.s	$s0, $ft5
	xvinsgr2vr.w	$xr14, $s0, 1
	xvpickve2gr.d	$s0, $xr9, 2
	movgr2fr.d	$ft5, $s0
	fcvt.s.d	$ft5, $ft5
	xvpickve2gr.d	$s0, $xr9, 3
	movgr2fr.d	$ft1, $s0
	movfr2gr.s	$s0, $ft5
	fcvt.s.d	$ft1, $ft1
	xvinsgr2vr.w	$xr14, $s0, 2
	movfr2gr.s	$s0, $ft1
	xvinsgr2vr.w	$xr14, $s0, 3
	xvpickve2gr.d	$s0, $xr10, 0
	movgr2fr.d	$ft1, $s0
	fcvt.s.d	$ft1, $ft1
	xvpickve2gr.d	$s0, $xr10, 1
	movgr2fr.d	$ft5, $s0
	movfr2gr.s	$s0, $ft1
	fcvt.s.d	$ft1, $ft5
	xvinsgr2vr.w	$xr14, $s0, 4
	movfr2gr.s	$s0, $ft1
	xvinsgr2vr.w	$xr14, $s0, 5
	xvpickve2gr.d	$s0, $xr10, 2
	movgr2fr.d	$ft1, $s0
	fcvt.s.d	$ft1, $ft1
	xvpickve2gr.d	$s0, $xr10, 3
	movgr2fr.d	$ft2, $s0
	movfr2gr.s	$s0, $ft1
	fcvt.s.d	$ft1, $ft2
	xvinsgr2vr.w	$xr14, $s0, 6
	movfr2gr.s	$s0, $ft1
	xvinsgr2vr.w	$xr14, $s0, 7
	xvst	$xr14, $t8, 0
	xvfadd.d	$xr6, $xr12, $xr6
	xvfadd.d	$xr5, $xr11, $xr5
	xvfsub.d	$xr5, $xr5, $xr8
	xvfsub.d	$xr6, $xr6, $xr7
	xvfmul.d	$xr6, $xr6, $xr3
	xvfmul.d	$xr5, $xr5, $xr3
	xvfmul.d	$xr5, $xr5, $xr1
	xvfmul.d	$xr6, $xr6, $xr1
	xvpickve2gr.d	$s0, $xr6, 0
	movgr2fr.d	$fa7, $s0
	fcvt.s.d	$fa7, $fa7
	xvpickve2gr.d	$s0, $xr6, 1
	movgr2fr.d	$ft0, $s0
	movfr2gr.s	$s0, $fa7
	fcvt.s.d	$fa7, $ft0
	xvinsgr2vr.w	$xr8, $s0, 0
	movfr2gr.s	$s0, $fa7
	xvinsgr2vr.w	$xr8, $s0, 1
	xvpickve2gr.d	$s0, $xr6, 2
	movgr2fr.d	$fa7, $s0
	fcvt.s.d	$fa7, $fa7
	xvpickve2gr.d	$s0, $xr6, 3
	movgr2fr.d	$fa6, $s0
	movfr2gr.s	$s0, $fa7
	fcvt.s.d	$fa6, $fa6
	xvinsgr2vr.w	$xr8, $s0, 2
	movfr2gr.s	$s0, $fa6
	xvinsgr2vr.w	$xr8, $s0, 3
	xvpickve2gr.d	$s0, $xr5, 0
	movgr2fr.d	$fa6, $s0
	fcvt.s.d	$fa6, $fa6
	xvpickve2gr.d	$s0, $xr5, 1
	movgr2fr.d	$fa7, $s0
	movfr2gr.s	$s0, $fa6
	fcvt.s.d	$fa6, $fa7
	xvinsgr2vr.w	$xr8, $s0, 4
	movfr2gr.s	$s0, $fa6
	xvinsgr2vr.w	$xr8, $s0, 5
	xvpickve2gr.d	$s0, $xr5, 2
	movgr2fr.d	$fa6, $s0
	fcvt.s.d	$fa6, $fa6
	xvpickve2gr.d	$s0, $xr5, 3
	movgr2fr.d	$fa5, $s0
	movfr2gr.s	$s0, $fa6
	fcvt.s.d	$fa5, $fa5
	xvld	$xr6, $s3, 0
	xvinsgr2vr.w	$xr8, $s0, 6
	movfr2gr.s	$s0, $fa5
	xvinsgr2vr.w	$xr8, $s0, 7
	xvst	$xr8, $s1, 0
	xvfsub.s	$xr5, $xr4, $xr6
	xvst	$xr5, $s4, 0
	addi.d	$s5, $s5, -8
	addi.d	$s4, $s4, 32
	addi.d	$s3, $s3, 32
	addi.d	$s1, $s1, 32
	addi.d	$t8, $t8, 32
	addi.d	$t7, $t7, 32
	addi.d	$t6, $t6, 32
	addi.d	$t5, $t5, 32
	addi.d	$t4, $t4, 32
	addi.d	$t3, $t3, 32
	bnez	$s5, .LBB3_76
# %bb.77:                               # %middle.block
	ld.d	$s1, $sp, 208                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 200                   # 8-byte Folded Reload
	bne	$t1, $t2, .LBB3_28
	b	.LBB3_30
.LBB3_78:                               # %vector.memcheck877
	move	$t8, $s1
	alsl.d	$s3, $t1, $a2, 2
	alsl.d	$s2, $t1, $a4, 2
	sltu	$t2, $a2, $s2
	sltu	$t4, $a4, $s3
	and	$t4, $t2, $t4
	move	$t2, $zero
	bnez	$t4, .LBB3_329
# %bb.79:                               # %vector.memcheck877
	alsl.d	$s1, $t1, $a5, 2
	sltu	$t4, $a2, $s1
	sltu	$t5, $a5, $s3
	and	$t4, $t4, $t5
	bnez	$t4, .LBB3_329
# %bb.80:                               # %vector.memcheck877
	alsl.d	$t5, $t1, $a6, 2
	sltu	$t4, $a2, $t5
	sltu	$t6, $a6, $s3
	and	$t4, $t4, $t6
	bnez	$t4, .LBB3_329
# %bb.81:                               # %vector.memcheck877
	alsl.d	$t4, $t1, $t0, 2
	sltu	$t6, $a2, $t4
	sltu	$t7, $t0, $s3
	and	$t6, $t6, $t7
	bnez	$t6, .LBB3_329
# %bb.82:                               # %vector.memcheck877
	alsl.d	$t6, $t1, $a0, 2
	sltu	$t7, $a2, $t6
	sltu	$t8, $a0, $s3
	and	$t7, $t7, $t8
	bnez	$t7, .LBB3_327
# %bb.83:                               # %vector.memcheck877
	alsl.d	$t7, $t1, $a1, 2
	sltu	$t8, $a2, $t7
	sltu	$s0, $a1, $s3
	and	$t8, $t8, $s0
	bnez	$t8, .LBB3_327
# %bb.84:                               # %vector.memcheck877
	alsl.d	$t8, $t1, $a3, 2
	sltu	$s0, $a2, $t8
	sltu	$s4, $a3, $s3
	and	$s0, $s0, $s4
	bnez	$s0, .LBB3_327
# %bb.85:                               # %vector.memcheck877
	alsl.d	$s0, $t1, $a7, 2
	sltu	$s4, $a2, $s0
	sltu	$s3, $a7, $s3
	and	$s3, $s4, $s3
	bnez	$s3, .LBB3_327
# %bb.86:                               # %vector.memcheck877
	sltu	$s3, $a4, $s1
	sltu	$s4, $a5, $s2
	and	$s3, $s3, $s4
	bnez	$s3, .LBB3_327
# %bb.87:                               # %vector.memcheck877
	sltu	$s3, $a4, $t5
	sltu	$s4, $a6, $s2
	and	$s3, $s3, $s4
	bnez	$s3, .LBB3_327
# %bb.88:                               # %vector.memcheck877
	sltu	$s3, $a4, $t4
	sltu	$s4, $t0, $s2
	and	$s3, $s3, $s4
	bnez	$s3, .LBB3_327
# %bb.89:                               # %vector.memcheck877
	sltu	$s3, $a4, $t6
	sltu	$s4, $a0, $s2
	and	$s3, $s3, $s4
	bnez	$s3, .LBB3_327
# %bb.90:                               # %vector.memcheck877
	sltu	$s3, $a4, $t7
	sltu	$s4, $a1, $s2
	and	$s3, $s3, $s4
	bnez	$s3, .LBB3_327
# %bb.91:                               # %vector.memcheck877
	sltu	$s3, $a4, $t8
	sltu	$s4, $a3, $s2
	and	$s3, $s3, $s4
	bnez	$s3, .LBB3_327
# %bb.92:                               # %vector.memcheck877
	sltu	$s3, $a4, $s0
	sltu	$s2, $a7, $s2
	and	$s2, $s3, $s2
	bnez	$s2, .LBB3_327
# %bb.93:                               # %vector.memcheck877
	sltu	$s2, $a5, $t5
	sltu	$s3, $a6, $s1
	and	$s2, $s2, $s3
	bnez	$s2, .LBB3_327
# %bb.94:                               # %vector.memcheck877
	sltu	$s2, $a5, $t4
	sltu	$s3, $t0, $s1
	and	$s2, $s2, $s3
	bnez	$s2, .LBB3_327
# %bb.95:                               # %vector.memcheck877
	sltu	$s2, $a5, $t6
	sltu	$s3, $a0, $s1
	and	$s2, $s2, $s3
	bnez	$s2, .LBB3_327
# %bb.96:                               # %vector.memcheck877
	sltu	$s2, $a5, $t7
	sltu	$s3, $a1, $s1
	and	$s2, $s2, $s3
	bnez	$s2, .LBB3_327
# %bb.97:                               # %vector.memcheck877
	sltu	$s2, $a5, $t8
	sltu	$s3, $a3, $s1
	and	$s2, $s2, $s3
	bnez	$s2, .LBB3_327
# %bb.98:                               # %vector.memcheck877
	sltu	$s2, $a5, $s0
	sltu	$s1, $a7, $s1
	and	$s1, $s2, $s1
	ld.d	$s3, $sp, 200                   # 8-byte Folded Reload
	bnez	$s1, .LBB3_325
# %bb.99:                               # %vector.memcheck877
	sltu	$s1, $a6, $t4
	sltu	$s2, $t0, $t5
	and	$s1, $s1, $s2
	bnez	$s1, .LBB3_325
# %bb.100:                              # %vector.memcheck877
	sltu	$s1, $a6, $t6
	sltu	$s2, $a0, $t5
	and	$s1, $s1, $s2
	bnez	$s1, .LBB3_325
# %bb.101:                              # %vector.memcheck877
	sltu	$s1, $a6, $t7
	sltu	$s2, $a1, $t5
	and	$s1, $s1, $s2
	bnez	$s1, .LBB3_325
# %bb.102:                              # %vector.memcheck877
	sltu	$s1, $a6, $t8
	sltu	$s2, $a3, $t5
	and	$s1, $s1, $s2
	bnez	$s1, .LBB3_325
# %bb.103:                              # %vector.memcheck877
	sltu	$s1, $a6, $s0
	sltu	$t5, $a7, $t5
	and	$t5, $s1, $t5
	ld.d	$s2, $sp, 144                   # 8-byte Folded Reload
	bnez	$t5, .LBB3_178
# %bb.104:                              # %vector.memcheck877
	sltu	$t5, $t0, $t6
	sltu	$t6, $a0, $t4
	and	$t5, $t5, $t6
	bnez	$t5, .LBB3_178
# %bb.105:                              # %vector.memcheck877
	sltu	$t5, $t0, $t7
	sltu	$t6, $a1, $t4
	and	$t5, $t5, $t6
	bnez	$t5, .LBB3_178
# %bb.106:                              # %vector.memcheck877
	sltu	$t5, $t0, $t8
	sltu	$t6, $a3, $t4
	and	$t5, $t5, $t6
	bnez	$t5, .LBB3_178
# %bb.107:                              # %vector.memcheck877
	sltu	$t5, $t0, $s0
	sltu	$t4, $a7, $t4
	and	$t4, $t5, $t4
	ld.d	$s1, $sp, 208                   # 8-byte Folded Reload
	bnez	$t4, .LBB3_33
# %bb.108:                              # %vector.ph1008
	bstrpick.d	$t2, $t3, 31, 3
	slli.d	$t2, $t2, 3
	xvreplve0.d	$xr1, $xr0
	lu52i.d	$t3, $zero, 1023
	xvreplgr2vr.d	$xr2, $t3
	lu52i.d	$t3, $zero, 1022
	xvreplgr2vr.d	$xr3, $t3
	lu12i.w	$t3, 260096
	xvreplgr2vr.w	$xr4, $t3
	move	$t3, $a0
	move	$t4, $a1
	move	$t5, $a2
	move	$t6, $a3
	move	$t7, $a4
	move	$t8, $a5
	move	$s1, $a6
	move	$s3, $a7
	move	$s4, $t0
	move	$s5, $t2
	.p2align	4, , 16
.LBB3_109:                              # %vector.body1013
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr5, $t3, 0
	xvst	$xr5, $sp, 704
	vld	$vr6, $sp, 720
	vreplvei.w	$vr5, $vr6, 0
	fcvt.d.s	$fa5, $fa5
	movfr2gr.d	$s0, $fa5
	vreplvei.w	$vr5, $vr6, 1
	fcvt.d.s	$fa7, $fa5
	xvinsgr2vr.d	$xr5, $s0, 0
	movfr2gr.d	$s0, $fa7
	vreplvei.w	$vr7, $vr6, 2
	fcvt.d.s	$fa7, $fa7
	xvinsgr2vr.d	$xr5, $s0, 1
	movfr2gr.d	$s0, $fa7
	vld	$vr7, $sp, 704
	vreplvei.w	$vr6, $vr6, 3
	fcvt.d.s	$fa6, $fa6
	xvinsgr2vr.d	$xr5, $s0, 2
	movfr2gr.d	$s0, $fa6
	vreplvei.w	$vr6, $vr7, 0
	fcvt.d.s	$fa6, $fa6
	xvinsgr2vr.d	$xr5, $s0, 3
	movfr2gr.d	$s0, $fa6
	vreplvei.w	$vr6, $vr7, 1
	fcvt.d.s	$ft0, $fa6
	xvinsgr2vr.d	$xr6, $s0, 0
	movfr2gr.d	$s0, $ft0
	vreplvei.w	$vr8, $vr7, 2
	fcvt.d.s	$ft0, $ft0
	xvld	$xr9, $t4, 0
	xvinsgr2vr.d	$xr6, $s0, 1
	movfr2gr.d	$s0, $ft0
	vreplvei.w	$vr7, $vr7, 3
	fcvt.d.s	$fa7, $fa7
	xvst	$xr9, $sp, 736
	vld	$vr8, $sp, 736
	xvinsgr2vr.d	$xr6, $s0, 2
	movfr2gr.d	$s0, $fa7
	xvinsgr2vr.d	$xr6, $s0, 3
	xvfsub.d	$xr9, $xr2, $xr6
	vreplvei.w	$vr7, $vr8, 0
	fcvt.d.s	$fa7, $fa7
	xvfsub.d	$xr10, $xr2, $xr5
	movfr2gr.d	$s0, $fa7
	vreplvei.w	$vr7, $vr8, 1
	fcvt.d.s	$ft3, $fa7
	xvinsgr2vr.d	$xr7, $s0, 0
	movfr2gr.d	$s0, $ft3
	vreplvei.w	$vr11, $vr8, 2
	fcvt.d.s	$ft3, $ft3
	xvinsgr2vr.d	$xr7, $s0, 1
	movfr2gr.d	$s0, $ft3
	vld	$vr11, $sp, 752
	vreplvei.w	$vr8, $vr8, 3
	fcvt.d.s	$ft0, $ft0
	xvinsgr2vr.d	$xr7, $s0, 2
	movfr2gr.d	$s0, $ft0
	vreplvei.w	$vr8, $vr11, 0
	fcvt.d.s	$ft0, $ft0
	xvinsgr2vr.d	$xr7, $s0, 3
	movfr2gr.d	$s0, $ft0
	vreplvei.w	$vr8, $vr11, 1
	fcvt.d.s	$ft4, $ft0
	xvinsgr2vr.d	$xr8, $s0, 0
	movfr2gr.d	$s0, $ft4
	vreplvei.w	$vr12, $vr11, 2
	fcvt.d.s	$ft4, $ft4
	xvinsgr2vr.d	$xr8, $s0, 1
	movfr2gr.d	$s0, $ft4
	vreplvei.w	$vr11, $vr11, 3
	fcvt.d.s	$ft3, $ft3
	xvinsgr2vr.d	$xr8, $s0, 2
	movfr2gr.d	$s0, $ft3
	xvinsgr2vr.d	$xr8, $s0, 3
	xvfsub.d	$xr11, $xr10, $xr8
	xvfsub.d	$xr12, $xr9, $xr7
	xvfmul.d	$xr12, $xr12, $xr1
	xvfmul.d	$xr11, $xr11, $xr1
	xvfmul.d	$xr11, $xr11, $xr3
	xvfmul.d	$xr12, $xr12, $xr3
	xvpickve2gr.d	$s0, $xr12, 0
	movgr2fr.d	$ft5, $s0
	fcvt.s.d	$ft5, $ft5
	xvpickve2gr.d	$s0, $xr12, 1
	movgr2fr.d	$ft6, $s0
	movfr2gr.s	$s0, $ft5
	fcvt.s.d	$ft5, $ft6
	xvinsgr2vr.w	$xr14, $s0, 0
	movfr2gr.s	$s0, $ft5
	xvinsgr2vr.w	$xr14, $s0, 1
	xvpickve2gr.d	$s0, $xr12, 2
	movgr2fr.d	$ft5, $s0
	fcvt.s.d	$ft5, $ft5
	xvpickve2gr.d	$s0, $xr12, 3
	movgr2fr.d	$ft4, $s0
	movfr2gr.s	$s0, $ft5
	fcvt.s.d	$ft4, $ft4
	xvinsgr2vr.w	$xr14, $s0, 2
	movfr2gr.s	$s0, $ft4
	xvinsgr2vr.w	$xr14, $s0, 3
	xvpickve2gr.d	$s0, $xr11, 0
	movgr2fr.d	$ft4, $s0
	fcvt.s.d	$ft4, $ft4
	xvpickve2gr.d	$s0, $xr11, 1
	movgr2fr.d	$ft5, $s0
	movfr2gr.s	$s0, $ft4
	fcvt.s.d	$ft4, $ft5
	xvinsgr2vr.w	$xr14, $s0, 4
	movfr2gr.s	$s0, $ft4
	xvinsgr2vr.w	$xr14, $s0, 5
	xvpickve2gr.d	$s0, $xr11, 2
	movgr2fr.d	$ft4, $s0
	fcvt.s.d	$ft4, $ft4
	xvpickve2gr.d	$s0, $xr11, 3
	movgr2fr.d	$ft3, $s0
	movfr2gr.s	$s0, $ft4
	fcvt.s.d	$ft3, $ft3
	xvld	$xr12, $t6, 0
	xvinsgr2vr.w	$xr14, $s0, 6
	movfr2gr.s	$s0, $ft3
	xvinsgr2vr.w	$xr14, $s0, 7
	xvst	$xr14, $t5, 0
	xvst	$xr12, $sp, 768
	vld	$vr11, $sp, 784
	vreplvei.w	$vr12, $vr11, 0
	fcvt.d.s	$ft4, $ft4
	movfr2gr.d	$s0, $ft4
	vreplvei.w	$vr12, $vr11, 1
	fcvt.d.s	$ft4, $ft4
	xvinsgr2vr.d	$xr13, $s0, 0
	movfr2gr.d	$s0, $ft4
	vreplvei.w	$vr12, $vr11, 2
	fcvt.d.s	$ft4, $ft4
	xvinsgr2vr.d	$xr13, $s0, 1
	movfr2gr.d	$s0, $ft4
	vreplvei.w	$vr11, $vr11, 3
	fcvt.d.s	$ft3, $ft3
	vld	$vr12, $sp, 768
	xvinsgr2vr.d	$xr13, $s0, 2
	movfr2gr.d	$s0, $ft3
	xvinsgr2vr.d	$xr13, $s0, 3
	xvfsub.d	$xr11, $xr2, $xr13
	vreplvei.w	$vr14, $vr12, 0
	fcvt.d.s	$ft6, $ft6
	xvfsub.d	$xr15, $xr11, $xr8
	movfr2gr.d	$s0, $ft6
	vreplvei.w	$vr14, $vr12, 1
	fcvt.d.s	$ft8, $ft6
	xvinsgr2vr.d	$xr14, $s0, 0
	movfr2gr.d	$s0, $ft8
	vreplvei.w	$vr16, $vr12, 2
	fcvt.d.s	$ft8, $ft8
	xvinsgr2vr.d	$xr14, $s0, 1
	movfr2gr.d	$s0, $ft8
	vreplvei.w	$vr12, $vr12, 3
	fcvt.d.s	$ft4, $ft4
	xvinsgr2vr.d	$xr14, $s0, 2
	movfr2gr.d	$s0, $ft4
	xvinsgr2vr.d	$xr14, $s0, 3
	xvfsub.d	$xr12, $xr2, $xr14
	xvfsub.d	$xr16, $xr12, $xr7
	xvfmul.d	$xr16, $xr16, $xr1
	xvfmul.d	$xr15, $xr15, $xr1
	xvfmul.d	$xr15, $xr15, $xr3
	xvfmul.d	$xr16, $xr16, $xr3
	xvpickve2gr.d	$s0, $xr16, 0
	movgr2fr.d	$ft9, $s0
	fcvt.s.d	$ft9, $ft9
	xvpickve2gr.d	$s0, $xr16, 1
	movgr2fr.d	$ft10, $s0
	movfr2gr.s	$s0, $ft9
	fcvt.s.d	$ft9, $ft10
	xvinsgr2vr.w	$xr18, $s0, 0
	movfr2gr.s	$s0, $ft9
	xvinsgr2vr.w	$xr18, $s0, 1
	xvpickve2gr.d	$s0, $xr16, 2
	movgr2fr.d	$ft9, $s0
	fcvt.s.d	$ft9, $ft9
	xvpickve2gr.d	$s0, $xr16, 3
	movgr2fr.d	$ft8, $s0
	movfr2gr.s	$s0, $ft9
	fcvt.s.d	$ft8, $ft8
	xvinsgr2vr.w	$xr18, $s0, 2
	movfr2gr.s	$s0, $ft8
	xvinsgr2vr.w	$xr18, $s0, 3
	xvpickve2gr.d	$s0, $xr15, 0
	movgr2fr.d	$ft8, $s0
	fcvt.s.d	$ft8, $ft8
	xvpickve2gr.d	$s0, $xr15, 1
	movgr2fr.d	$ft9, $s0
	movfr2gr.s	$s0, $ft8
	fcvt.s.d	$ft8, $ft9
	xvinsgr2vr.w	$xr18, $s0, 4
	movfr2gr.s	$s0, $ft8
	xvinsgr2vr.w	$xr18, $s0, 5
	xvpickve2gr.d	$s0, $xr15, 2
	movgr2fr.d	$ft8, $s0
	fcvt.s.d	$ft8, $ft8
	xvpickve2gr.d	$s0, $xr15, 3
	movgr2fr.d	$ft7, $s0
	movfr2gr.s	$s0, $ft8
	fcvt.s.d	$ft7, $ft7
	xvinsgr2vr.w	$xr18, $s0, 6
	movfr2gr.s	$s0, $ft7
	xvinsgr2vr.w	$xr18, $s0, 7
	xvst	$xr18, $t7, 0
	xvfadd.d	$xr9, $xr9, $xr14
	xvfadd.d	$xr10, $xr10, $xr13
	xvfsub.d	$xr10, $xr10, $xr8
	xvfsub.d	$xr9, $xr9, $xr7
	xvfmul.d	$xr9, $xr9, $xr3
	xvfmul.d	$xr10, $xr10, $xr3
	xvfmul.d	$xr10, $xr10, $xr1
	xvfmul.d	$xr9, $xr9, $xr1
	xvpickve2gr.d	$s0, $xr9, 0
	movgr2fr.d	$ft5, $s0
	fcvt.s.d	$ft5, $ft5
	xvpickve2gr.d	$s0, $xr9, 1
	movgr2fr.d	$ft6, $s0
	movfr2gr.s	$s0, $ft5
	fcvt.s.d	$ft5, $ft6
	xvinsgr2vr.w	$xr14, $s0, 0
	movfr2gr.s	$s0, $ft5
	xvinsgr2vr.w	$xr14, $s0, 1
	xvpickve2gr.d	$s0, $xr9, 2
	movgr2fr.d	$ft5, $s0
	fcvt.s.d	$ft5, $ft5
	xvpickve2gr.d	$s0, $xr9, 3
	movgr2fr.d	$ft1, $s0
	movfr2gr.s	$s0, $ft5
	fcvt.s.d	$ft1, $ft1
	xvinsgr2vr.w	$xr14, $s0, 2
	movfr2gr.s	$s0, $ft1
	xvinsgr2vr.w	$xr14, $s0, 3
	xvpickve2gr.d	$s0, $xr10, 0
	movgr2fr.d	$ft1, $s0
	fcvt.s.d	$ft1, $ft1
	xvpickve2gr.d	$s0, $xr10, 1
	movgr2fr.d	$ft5, $s0
	movfr2gr.s	$s0, $ft1
	fcvt.s.d	$ft1, $ft5
	xvinsgr2vr.w	$xr14, $s0, 4
	movfr2gr.s	$s0, $ft1
	xvinsgr2vr.w	$xr14, $s0, 5
	xvpickve2gr.d	$s0, $xr10, 2
	movgr2fr.d	$ft1, $s0
	fcvt.s.d	$ft1, $ft1
	xvpickve2gr.d	$s0, $xr10, 3
	movgr2fr.d	$ft2, $s0
	movfr2gr.s	$s0, $ft1
	fcvt.s.d	$ft1, $ft2
	xvinsgr2vr.w	$xr14, $s0, 6
	movfr2gr.s	$s0, $ft1
	xvinsgr2vr.w	$xr14, $s0, 7
	xvst	$xr14, $t8, 0
	xvfadd.d	$xr6, $xr12, $xr6
	xvfadd.d	$xr5, $xr11, $xr5
	xvfsub.d	$xr5, $xr5, $xr8
	xvfsub.d	$xr6, $xr6, $xr7
	xvfmul.d	$xr6, $xr6, $xr3
	xvfmul.d	$xr5, $xr5, $xr3
	xvfmul.d	$xr5, $xr5, $xr1
	xvfmul.d	$xr6, $xr6, $xr1
	xvpickve2gr.d	$s0, $xr6, 0
	movgr2fr.d	$fa7, $s0
	fcvt.s.d	$fa7, $fa7
	xvpickve2gr.d	$s0, $xr6, 1
	movgr2fr.d	$ft0, $s0
	movfr2gr.s	$s0, $fa7
	fcvt.s.d	$fa7, $ft0
	xvinsgr2vr.w	$xr8, $s0, 0
	movfr2gr.s	$s0, $fa7
	xvinsgr2vr.w	$xr8, $s0, 1
	xvpickve2gr.d	$s0, $xr6, 2
	movgr2fr.d	$fa7, $s0
	fcvt.s.d	$fa7, $fa7
	xvpickve2gr.d	$s0, $xr6, 3
	movgr2fr.d	$fa6, $s0
	movfr2gr.s	$s0, $fa7
	fcvt.s.d	$fa6, $fa6
	xvinsgr2vr.w	$xr8, $s0, 2
	movfr2gr.s	$s0, $fa6
	xvinsgr2vr.w	$xr8, $s0, 3
	xvpickve2gr.d	$s0, $xr5, 0
	movgr2fr.d	$fa6, $s0
	fcvt.s.d	$fa6, $fa6
	xvpickve2gr.d	$s0, $xr5, 1
	movgr2fr.d	$fa7, $s0
	movfr2gr.s	$s0, $fa6
	fcvt.s.d	$fa6, $fa7
	xvinsgr2vr.w	$xr8, $s0, 4
	movfr2gr.s	$s0, $fa6
	xvinsgr2vr.w	$xr8, $s0, 5
	xvpickve2gr.d	$s0, $xr5, 2
	movgr2fr.d	$fa6, $s0
	fcvt.s.d	$fa6, $fa6
	xvpickve2gr.d	$s0, $xr5, 3
	movgr2fr.d	$fa5, $s0
	movfr2gr.s	$s0, $fa6
	fcvt.s.d	$fa5, $fa5
	xvld	$xr6, $s3, 0
	xvinsgr2vr.w	$xr8, $s0, 6
	movfr2gr.s	$s0, $fa5
	xvinsgr2vr.w	$xr8, $s0, 7
	xvst	$xr8, $s1, 0
	xvfsub.s	$xr5, $xr4, $xr6
	xvst	$xr5, $s4, 0
	addi.d	$s5, $s5, -8
	addi.d	$s4, $s4, 32
	addi.d	$s3, $s3, 32
	addi.d	$s1, $s1, 32
	addi.d	$t8, $t8, 32
	addi.d	$t7, $t7, 32
	addi.d	$t6, $t6, 32
	addi.d	$t5, $t5, 32
	addi.d	$t4, $t4, 32
	addi.d	$t3, $t3, 32
	bnez	$s5, .LBB3_109
# %bb.110:                              # %middle.block1027
	ld.d	$s1, $sp, 208                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 200                   # 8-byte Folded Reload
	bne	$t1, $t2, .LBB3_33
	b	.LBB3_35
.LBB3_111:                              # %clearvec.exit.thread
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	sltui	$a0, $a0, 1
.LBB3_112:                              # %imp_match_out_vead_tateQ.exit
	st.d	$a0, $sp, 240                   # 8-byte Folded Spill
.LBB3_113:                              # %imp_match_out_vead_tateQ.exit
	ld.d	$a0, $sp, 480                   # 8-byte Folded Reload
	ld.bu	$a0, $a0, 0
	ori	$a1, $zero, 114
	slli.d	$s4, $s7, 32
	pcalau12i	$a2, %pc_hi20(.LCPI3_2)
	st.d	$a2, $sp, 376                   # 8-byte Folded Spill
	bne	$a0, $a1, .LBB3_116
# %bb.114:
	beqz	$ra, .LBB3_140
# %bb.115:                              # %.lr.ph.preheader.i523
	slli.d	$a0, $s7, 2
	bstrpick.d	$a0, $a0, 33, 2
	slli.d	$a2, $a0, 2
	move	$a0, $t3
	move	$a1, $zero
	move	$s1, $ra
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	b	.LBB3_117
.LBB3_116:
	ld.d	$a0, $sp, 432                   # 8-byte Folded Reload
	ld.d	$a1, $a0, %pc_lo12(Q__align.cpmx1)
	ld.d	$a0, $sp, 424                   # 8-byte Folded Reload
	ld.d	$a2, $a0, %pc_lo12(Q__align.cpmx2)
	ld.d	$a0, $sp, 344                   # 8-byte Folded Reload
	ld.d	$a5, $a0, %pc_lo12(Q__align.floatwork)
	ld.d	$a0, $sp, 336                   # 8-byte Folded Reload
	ld.d	$a6, $a0, %pc_lo12(Q__align.intwork)
	ori	$a7, $zero, 1
	move	$a0, $t3
	move	$a3, $zero
	move	$a4, $ra
	move	$s1, $ra
	pcaddu18i	$ra, %call36(match_calc)
	jirl	$ra, $ra, 0
.LBB3_117:                              # %clearvec.exit524
	sltui	$a0, $s1, 1
	ld.d	$a1, $sp, 240                   # 8-byte Folded Reload
	or	$a0, $a1, $a0
	move	$ra, $s1
	xvld	$xr19, $sp, 384                 # 32-byte Folded Reload
	move	$t3, $s5
	move	$t4, $s6
	move	$t6, $s7
	ld.d	$s1, $sp, 208                   # 8-byte Folded Reload
	bnez	$a0, .LBB3_123
# %bb.118:                              # %iter.check
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(impmtx)
	ld.d	$a1, $a0, 0
	bstrpick.d	$a0, $t6, 31, 0
	ori	$a2, $zero, 4
	bltu	$a0, $a2, .LBB3_121
# %bb.119:                              # %vector.memcheck1030
	addi.w	$a2, $zero, -4
	lu32i.d	$a2, 3
	alsl.d	$a2, $t6, $a2, 2
	bstrpick.d	$a2, $a2, 33, 2
	slli.d	$a2, $a2, 2
	addi.d	$a2, $a2, 4
	add.d	$a3, $a1, $a2
	bgeu	$t3, $a3, .LBB3_168
# %bb.120:                              # %vector.memcheck1030
	add.d	$a2, $t3, $a2
	bgeu	$a1, $a2, .LBB3_168
.LBB3_121:
	move	$a2, $a1
	move	$a3, $t6
	move	$a4, $t3
	.p2align	4, , 16
.LBB3_122:                              # %.lr.ph.i526
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $a2, 0
	fld.s	$fa1, $a4, 0
	addi.w	$a3, $a3, -1
	addi.d	$a2, $a2, 4
	addi.d	$a0, $a4, 4
	fadd.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $a4, 0
	move	$a4, $a0
	bnez	$a3, .LBB3_122
.LBB3_123:                              # %imp_match_out_veadQ.exit
	pcalau12i	$a0, %got_pc_hi20(outgap)
	ld.d	$a0, $a0, %got_pc_lo12(outgap)
	ld.w	$a1, $a0, 0
	ori	$a0, $zero, 1
	bne	$a1, $a0, .LBB3_133
.LBB3_124:
	ld.d	$a0, $sp, 504                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.ogcp1g)
	ld.d	$a1, $sp, 328                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(Q__align.og_h_dg_n2_p)
	ld.d	$a2, $sp, 488                   # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(Q__align.ogcp2g)
	fld.s	$fa0, $a0, 0
	fld.s	$fa1, $a1, 0
	fld.s	$fa2, $a2, 0
	ld.d	$a0, $sp, 312                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.og_h_dg_n1_p)
	ld.d	$a1, $sp, 496                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(Q__align.fgcp1g)
	ld.d	$a2, $sp, 320                   # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(Q__align.fg_h_dg_n2_p)
	ld.d	$a3, $sp, 448                   # 8-byte Folded Reload
	ld.d	$a3, $a3, %pc_lo12(Q__align.fgcp2g)
	fld.s	$fa3, $a0, 0
	fld.s	$fa4, $a1, 0
	fld.s	$fa5, $a2, 0
	fld.s	$fa6, $a3, 0
	ld.d	$a0, $sp, 304                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.fg_h_dg_n1_p)
	ld.d	$a1, $sp, 368                   # 8-byte Folded Reload
	ld.d	$a2, $a1, %pc_lo12(Q__align.initverticalw)
	movgr2fr.w	$fa7, $zero
	fmadd.s	$fa0, $fa0, $fa1, $fa7
	fld.s	$fa1, $a0, 0
	fld.s	$fa7, $a2, 0
	fmadd.s	$fa0, $fa2, $fa3, $fa0
	fmadd.s	$fa0, $fa4, $fa5, $fa0
	fmadd.s	$fa0, $fa6, $fa1, $fa0
	fadd.s	$fa1, $fa0, $fa7
	fst.s	$fa1, $a2, 0
	fld.s	$fa1, $t3, 0
	fadd.s	$fa0, $fa0, $fa1
	ori	$a5, $zero, 1
	fst.s	$fa0, $t3, 0
	blt	$s1, $a5, .LBB3_128
# %bb.125:                              # %.lr.ph586
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.gapz_n2)
	ld.d	$a1, $sp, 296                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(Q__align.og_t_fg_h_dg_n1_p)
	ld.d	$a3, $sp, 280                   # 8-byte Folded Reload
	ld.d	$a3, $a3, %pc_lo12(Q__align.fg_t_og_h_dg_n1_p)
	addi.d	$a4, $s0, 1
	bstrpick.d	$a4, $a4, 31, 0
	addi.d	$a6, $a4, -1
	ori	$a7, $zero, 8
	bgeu	$a6, $a7, .LBB3_156
.LBB3_126:                              # %scalar.ph1119.preheader
	alsl.d	$a3, $a5, $a3, 2
	alsl.d	$a2, $a5, $a2, 2
	sub.d	$a4, $a4, $a5
	.p2align	4, , 16
.LBB3_127:                              # %scalar.ph1119
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $a0, 0
	fld.s	$fa1, $a1, 0
	fld.s	$fa2, $a2, 0
	fmul.s	$fa0, $fa0, $fa1
	fadd.s	$fa0, $fa2, $fa0
	fst.s	$fa0, $a2, 0
	fld.s	$fa1, $a0, 4
	fld.s	$fa2, $a3, 0
	fmul.s	$fa1, $fa1, $fa2
	fadd.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $a2, 0
	addi.d	$a3, $a3, 4
	addi.d	$a4, $a4, -1
	addi.d	$a2, $a2, 4
	bnez	$a4, .LBB3_127
.LBB3_128:                              # %.preheader556
	blez	$ra, .LBB3_153
# %bb.129:                              # %.lr.ph589
	ld.d	$a0, $sp, 288                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.gapz_n1)
	ld.d	$a1, $sp, 272                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(Q__align.og_t_fg_h_dg_n2_p)
	ld.d	$a2, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(Q__align.fg_t_og_h_dg_n2_p)
	addi.d	$a3, $t6, 1
	bstrpick.d	$a3, $a3, 31, 0
	addi.d	$a5, $a3, -1
	ori	$a6, $zero, 8
	ori	$a4, $zero, 1
	bgeu	$a5, $a6, .LBB3_162
.LBB3_130:                              # %scalar.ph1157.preheader
	alsl.d	$a2, $a4, $a2, 2
	alsl.d	$a5, $a4, $t3, 2
	sub.d	$a3, $a3, $a4
	.p2align	4, , 16
.LBB3_131:                              # %scalar.ph1157
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $a0, 0
	fld.s	$fa1, $a1, 0
	fld.s	$fa2, $a5, 0
	fmul.s	$fa0, $fa0, $fa1
	fadd.s	$fa0, $fa2, $fa0
	fst.s	$fa0, $a5, 0
	fld.s	$fa1, $a0, 4
	fld.s	$fa2, $a2, 0
	fmul.s	$fa1, $fa1, $fa2
	fadd.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $a5, 0
	addi.d	$a2, $a2, 4
	addi.d	$a3, $a3, -1
	addi.d	$a5, $a5, 4
	bnez	$a3, .LBB3_131
.LBB3_132:                              # %.loopexit557.thread724
	ld.d	$a0, $sp, 360                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.m)
	st.w	$zero, $a0, 0
	b	.LBB3_149
.LBB3_133:                              # %.preheader560
	blt	$ra, $a0, .LBB3_141
# %bb.134:                              # %.lr.ph579
	pcalau12i	$a0, %got_pc_hi20(offset)
	ld.d	$a0, $a0, %got_pc_lo12(offset)
	ld.w	$a0, $a0, 0
	addi.d	$a1, $t6, 1
	bstrpick.d	$a1, $a1, 31, 0
	addi.d	$a2, $a1, -1
	ori	$a4, $zero, 8
	ori	$a3, $zero, 1
	bltu	$a2, $a4, .LBB3_138
# %bb.135:                              # %vector.ph1071
	move	$a4, $a2
	bstrins.d	$a4, $zero, 2, 0
	ori	$a5, $zero, 1
	move	$a3, $a2
	bstrins.d	$a3, $a5, 2, 0
	xvreplgr2vr.w	$xr0, $a0
	pcalau12i	$a5, %pc_hi20(.LCPI3_1)
	xvld	$xr1, $a5, %pc_lo12(.LCPI3_1)
	addi.d	$a5, $t3, 4
	lu52i.d	$a6, $zero, -1026
	xvreplgr2vr.d	$xr2, $a6
	move	$a6, $a4
	.p2align	4, , 16
.LBB3_136:                              # %vector.body1076
                                        # =>This Inner Loop Header: Depth=1
	xvmul.w	$xr3, $xr0, $xr1
	xvst	$xr3, $sp, 640
	vld	$vr3, $sp, 656
	xvld	$xr4, $a5, 0
	vext2xv.d.w	$xr3, $xr3
	vld	$vr5, $sp, 640
	xvffint.d.l	$xr3, $xr3
	xvst	$xr4, $sp, 672
	vld	$vr4, $sp, 672
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
	vld	$vr6, $sp, 688
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
	bnez	$a6, .LBB3_136
# %bb.137:                              # %middle.block1081
	beq	$a2, $a4, .LBB3_141
.LBB3_138:                              # %scalar.ph1069.preheader
	mul.d	$a2, $a0, $a3
	alsl.d	$a4, $a3, $t3, 2
	sub.d	$a1, $a1, $a3
	vldi	$vr0, -800
	.p2align	4, , 16
.LBB3_139:                              # %scalar.ph1069
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
	bnez	$a1, .LBB3_139
	b	.LBB3_141
.LBB3_140:                              # %imp_match_out_veadQ.exit.thread
	pcalau12i	$a0, %got_pc_hi20(outgap)
	ld.d	$a0, $a0, %got_pc_lo12(outgap)
	ld.w	$a0, $a0, 0
	ori	$a1, $zero, 1
	move	$t6, $s7
	beq	$a0, $a1, .LBB3_124
.LBB3_141:                              # %.preheader558
	ori	$a1, $zero, 1
	blt	$s1, $a1, .LBB3_148
# %bb.142:                              # %.lr.ph582
	pcalau12i	$a0, %got_pc_hi20(offset)
	ld.d	$a0, $a0, %got_pc_lo12(offset)
	ld.w	$a0, $a0, 0
	ld.d	$a2, $sp, 368                   # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(Q__align.initverticalw)
	addi.d	$a3, $s0, 1
	bstrpick.d	$a3, $a3, 31, 0
	addi.d	$a4, $a3, -1
	ori	$a5, $zero, 8
	bltu	$a4, $a5, .LBB3_146
# %bb.143:                              # %vector.ph1086
	move	$a5, $a4
	bstrins.d	$a5, $zero, 2, 0
	ori	$a6, $zero, 1
	move	$a1, $a4
	bstrins.d	$a1, $a6, 2, 0
	xvreplgr2vr.w	$xr0, $a0
	pcalau12i	$a6, %pc_hi20(.LCPI3_1)
	xvld	$xr1, $a6, %pc_lo12(.LCPI3_1)
	addi.d	$a6, $a2, 4
	lu52i.d	$a7, $zero, -1026
	xvreplgr2vr.d	$xr2, $a7
	move	$a7, $a5
	.p2align	4, , 16
.LBB3_144:                              # %vector.body1091
                                        # =>This Inner Loop Header: Depth=1
	xvmul.w	$xr3, $xr0, $xr1
	xvst	$xr3, $sp, 576
	vld	$vr3, $sp, 592
	xvld	$xr4, $a6, 0
	vext2xv.d.w	$xr3, $xr3
	vld	$vr5, $sp, 576
	xvffint.d.l	$xr3, $xr3
	xvst	$xr4, $sp, 608
	vld	$vr4, $sp, 608
	vext2xv.d.w	$xr5, $xr5
	xvffint.d.l	$xr5, $xr5
	xvfmul.d	$xr5, $xr5, $xr2
	vreplvei.w	$vr6, $vr4, 0
	fcvt.d.s	$fa6, $fa6
	xvfmul.d	$xr3, $xr3, $xr2
	movfr2gr.d	$t0, $fa6
	vreplvei.w	$vr6, $vr4, 1
	fcvt.d.s	$fa6, $fa6
	xvinsgr2vr.d	$xr7, $t0, 0
	movfr2gr.d	$t0, $fa6
	vreplvei.w	$vr6, $vr4, 2
	fcvt.d.s	$fa6, $fa6
	xvinsgr2vr.d	$xr7, $t0, 1
	movfr2gr.d	$t0, $fa6
	vld	$vr6, $sp, 624
	vreplvei.w	$vr4, $vr4, 3
	fcvt.d.s	$fa4, $fa4
	xvinsgr2vr.d	$xr7, $t0, 2
	movfr2gr.d	$t0, $fa4
	vreplvei.w	$vr4, $vr6, 0
	fcvt.d.s	$fa4, $fa4
	xvinsgr2vr.d	$xr7, $t0, 3
	movfr2gr.d	$t0, $fa4
	vreplvei.w	$vr4, $vr6, 1
	fcvt.d.s	$fa4, $fa4
	xvinsgr2vr.d	$xr8, $t0, 0
	movfr2gr.d	$t0, $fa4
	vreplvei.w	$vr4, $vr6, 2
	fcvt.d.s	$fa4, $fa4
	xvinsgr2vr.d	$xr8, $t0, 1
	movfr2gr.d	$t0, $fa4
	vreplvei.w	$vr4, $vr6, 3
	fcvt.d.s	$fa4, $fa4
	xvinsgr2vr.d	$xr8, $t0, 2
	movfr2gr.d	$t0, $fa4
	xvinsgr2vr.d	$xr8, $t0, 3
	xvfadd.d	$xr3, $xr8, $xr3
	xvfadd.d	$xr4, $xr7, $xr5
	xvpickve2gr.d	$t0, $xr4, 0
	movgr2fr.d	$fa5, $t0
	fcvt.s.d	$fa5, $fa5
	xvpickve2gr.d	$t0, $xr4, 1
	movgr2fr.d	$fa6, $t0
	movfr2gr.s	$t0, $fa5
	fcvt.s.d	$fa5, $fa6
	xvinsgr2vr.w	$xr6, $t0, 0
	movfr2gr.s	$t0, $fa5
	xvinsgr2vr.w	$xr6, $t0, 1
	xvpickve2gr.d	$t0, $xr4, 2
	movgr2fr.d	$fa5, $t0
	fcvt.s.d	$fa5, $fa5
	xvpickve2gr.d	$t0, $xr4, 3
	movgr2fr.d	$fa4, $t0
	movfr2gr.s	$t0, $fa5
	fcvt.s.d	$fa4, $fa4
	xvinsgr2vr.w	$xr6, $t0, 2
	movfr2gr.s	$t0, $fa4
	xvinsgr2vr.w	$xr6, $t0, 3
	xvpickve2gr.d	$t0, $xr3, 0
	movgr2fr.d	$fa4, $t0
	fcvt.s.d	$fa4, $fa4
	xvpickve2gr.d	$t0, $xr3, 1
	movgr2fr.d	$fa5, $t0
	movfr2gr.s	$t0, $fa4
	fcvt.s.d	$fa4, $fa5
	xvinsgr2vr.w	$xr6, $t0, 4
	movfr2gr.s	$t0, $fa4
	xvinsgr2vr.w	$xr6, $t0, 5
	xvpickve2gr.d	$t0, $xr3, 2
	movgr2fr.d	$fa4, $t0
	fcvt.s.d	$fa4, $fa4
	xvpickve2gr.d	$t0, $xr3, 3
	movgr2fr.d	$fa3, $t0
	movfr2gr.s	$t0, $fa4
	fcvt.s.d	$fa3, $fa3
	xvinsgr2vr.w	$xr6, $t0, 6
	movfr2gr.s	$t0, $fa3
	xvinsgr2vr.w	$xr6, $t0, 7
	xvst	$xr6, $a6, 0
	xvaddi.wu	$xr1, $xr1, 8
	addi.d	$a7, $a7, -8
	addi.d	$a6, $a6, 32
	bnez	$a7, .LBB3_144
# %bb.145:                              # %middle.block1098
	beq	$a4, $a5, .LBB3_148
.LBB3_146:                              # %scalar.ph1084.preheader
	mul.d	$a4, $a0, $a1
	alsl.d	$a2, $a1, $a2, 2
	sub.d	$a1, $a3, $a1
	vldi	$vr0, -800
	.p2align	4, , 16
.LBB3_147:                              # %scalar.ph1084
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa1, $a2, 0
	movgr2fr.w	$fa2, $a4
	ffint.d.w	$fa2, $fa2
	fmul.d	$fa2, $fa2, $fa0
	fcvt.d.s	$fa1, $fa1
	fadd.d	$fa1, $fa1, $fa2
	fcvt.s.d	$fa1, $fa1
	fst.s	$fa1, $a2, 0
	add.w	$a4, $a4, $a0
	addi.d	$a1, $a1, -1
	addi.d	$a2, $a2, 4
	bnez	$a1, .LBB3_147
.LBB3_148:                              # %.loopexit557
	ld.d	$a0, $sp, 360                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.m)
	ori	$a1, $zero, 1
	st.w	$zero, $a0, 0
	blt	$ra, $a1, .LBB3_154
.LBB3_149:                              # %iter.check1181
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(Q__align.mp)
	addi.d	$a2, $t6, 1
	bstrpick.d	$a2, $a2, 31, 0
	addi.d	$a3, $a2, -1
	ori	$a4, $zero, 4
	ori	$a5, $zero, 1
	bltu	$a3, $a4, .LBB3_187
# %bb.150:                              # %vector.memcheck1177
	sub.d	$a4, $a0, $t3
	addi.d	$a4, $a4, 4
	ori	$a6, $zero, 64
	bltu	$a4, $a6, .LBB3_187
# %bb.151:                              # %vector.main.loop.iter.check1183
	ori	$a5, $zero, 16
	lu12i.w	$a4, 287172
	bgeu	$a3, $a5, .LBB3_170
# %bb.152:
	move	$a6, $zero
	b	.LBB3_174
.LBB3_153:                              # %.loopexit557.thread
	ld.d	$a0, $sp, 360                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.m)
	st.w	$zero, $a0, 0
.LBB3_154:                              # %._crit_edge594
	ori	$t2, $zero, 1
	bnez	$ra, .LBB3_190
# %bb.155:
	movgr2fr.w	$fa0, $zero
	ori	$a1, $zero, 1
	st.d	$a1, $sp, 472                   # 8-byte Folded Spill
	b	.LBB3_191
.LBB3_156:                              # %vector.memcheck1101
	addi.d	$a7, $a2, 4
	alsl.d	$t1, $a4, $a2, 2
	addi.d	$t0, $a0, 8
	sltu	$t0, $a7, $t0
	sltu	$t2, $a0, $t1
	and	$t0, $t0, $t2
	bnez	$t0, .LBB3_126
# %bb.157:                              # %vector.memcheck1101
	addi.d	$t0, $a1, 4
	sltu	$t0, $a7, $t0
	sltu	$t2, $a1, $t1
	and	$t0, $t0, $t2
	bnez	$t0, .LBB3_126
# %bb.158:                              # %vector.memcheck1101
	addi.d	$t0, $a3, 4
	alsl.d	$t2, $a4, $a3, 2
	sltu	$t2, $a7, $t2
	sltu	$t1, $t0, $t1
	and	$t1, $t2, $t1
	bnez	$t1, .LBB3_126
# %bb.159:                              # %vector.ph1121
	move	$t1, $a6
	bstrins.d	$t1, $zero, 2, 0
	fld.s	$fa0, $a0, 0
	fld.s	$fa1, $a1, 0
	ori	$t2, $zero, 1
	move	$a5, $a6
	fld.s	$fa2, $a0, 4
	bstrins.d	$a5, $t2, 2, 0
	fmul.s	$fa0, $fa0, $fa1
	xvreplve0.w	$xr0, $xr0
	xvreplve0.w	$xr1, $xr2
	move	$t2, $t1
	.p2align	4, , 16
.LBB3_160:                              # %vector.body1124
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr2, $a7, 0
	xvld	$xr3, $t0, 0
	xvfadd.s	$xr2, $xr2, $xr0
	xvfmul.s	$xr3, $xr1, $xr3
	xvfadd.s	$xr2, $xr2, $xr3
	xvst	$xr2, $a7, 0
	addi.d	$a7, $a7, 32
	addi.d	$t2, $t2, -8
	addi.d	$t0, $t0, 32
	bnez	$t2, .LBB3_160
# %bb.161:                              # %middle.block1136
	bne	$a6, $t1, .LBB3_126
	b	.LBB3_128
.LBB3_162:                              # %vector.memcheck1139
	addi.d	$a6, $t3, 4
	alsl.d	$t0, $a3, $t3, 2
	addi.d	$a7, $a0, 8
	sltu	$a7, $a6, $a7
	sltu	$t1, $a0, $t0
	and	$a7, $a7, $t1
	bnez	$a7, .LBB3_130
# %bb.163:                              # %vector.memcheck1139
	addi.d	$a7, $a1, 4
	sltu	$a7, $a6, $a7
	sltu	$t1, $a1, $t0
	and	$a7, $a7, $t1
	bnez	$a7, .LBB3_130
# %bb.164:                              # %vector.memcheck1139
	addi.d	$a7, $a2, 4
	alsl.d	$t1, $a3, $a2, 2
	sltu	$t1, $a6, $t1
	sltu	$t0, $a7, $t0
	and	$t0, $t1, $t0
	bnez	$t0, .LBB3_130
# %bb.165:                              # %vector.ph1159
	move	$t0, $a5
	bstrins.d	$t0, $zero, 2, 0
	fld.s	$fa0, $a0, 0
	fld.s	$fa1, $a1, 0
	ori	$t1, $zero, 1
	move	$a4, $a5
	fld.s	$fa2, $a0, 4
	bstrins.d	$a4, $t1, 2, 0
	fmul.s	$fa0, $fa0, $fa1
	xvreplve0.w	$xr0, $xr0
	xvreplve0.w	$xr1, $xr2
	move	$t1, $t0
	.p2align	4, , 16
.LBB3_166:                              # %vector.body1162
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr2, $a6, 0
	xvld	$xr3, $a7, 0
	xvfadd.s	$xr2, $xr2, $xr0
	xvfmul.s	$xr3, $xr1, $xr3
	xvfadd.s	$xr2, $xr2, $xr3
	xvst	$xr2, $a6, 0
	addi.d	$a6, $a6, 32
	addi.d	$t1, $t1, -8
	addi.d	$a7, $a7, 32
	bnez	$t1, .LBB3_166
# %bb.167:                              # %middle.block1174
	bne	$a5, $t0, .LBB3_130
	b	.LBB3_132
.LBB3_168:                              # %vector.main.loop.iter.check
	ori	$a2, $zero, 16
	bgeu	$a0, $a2, .LBB3_179
# %bb.169:
	move	$a5, $zero
	b	.LBB3_183
.LBB3_170:                              # %vector.ph1184
	move	$a5, $zero
	move	$a6, $a3
	bstrins.d	$a6, $zero, 3, 0
	xvreplve0.w	$xr0, $xr19
	addi.d	$a7, $a1, 36
	xvrepli.b	$xr1, 0
	xvreplgr2vr.w	$xr2, $a4
	move	$t0, $a6
	.p2align	4, , 16
.LBB3_171:                              # %vector.body1189
                                        # =>This Inner Loop Header: Depth=1
	add.d	$t1, $a7, $a5
	add.d	$t2, $t3, $a5
	xvldx	$xr3, $t3, $a5
	xvld	$xr4, $t2, 32
	xvst	$xr1, $t1, -32
	xvstx	$xr1, $a7, $a5
	xvfmadd.s	$xr3, $xr0, $xr2, $xr3
	xvfmadd.s	$xr4, $xr0, $xr2, $xr4
	add.d	$t1, $a0, $a5
	xvst	$xr3, $t1, 4
	xvst	$xr4, $t1, 36
	addi.d	$t0, $t0, -16
	addi.d	$a5, $a5, 64
	bnez	$t0, .LBB3_171
# %bb.172:                              # %middle.block1194
	beq	$a3, $a6, .LBB3_189
# %bb.173:                              # %vec.epilog.iter.check1199
	andi	$a5, $a3, 12
	beqz	$a5, .LBB3_186
.LBB3_174:                              # %vec.epilog.ph1198
	move	$a7, $a3
	bstrins.d	$a7, $zero, 1, 0
	ori	$t0, $zero, 1
	move	$a5, $a3
	bstrins.d	$a5, $t0, 1, 0
	vreplvei.w	$vr0, $vr19, 0
	slli.d	$t0, $a6, 2
	addi.d	$t1, $a1, 4
	sub.d	$a6, $a6, $a7
	vrepli.b	$vr1, 0
	vreplgr2vr.w	$vr2, $a4
	.p2align	4, , 16
.LBB3_175:                              # %vec.epilog.vector.body1206
                                        # =>This Inner Loop Header: Depth=1
	vldx	$vr3, $t3, $t0
	vstx	$vr1, $t1, $t0
	vfmadd.s	$vr3, $vr0, $vr2, $vr3
	add.d	$a4, $a0, $t0
	vst	$vr3, $a4, 4
	addi.d	$a6, $a6, 4
	addi.d	$t0, $t0, 16
	bnez	$a6, .LBB3_175
# %bb.176:                              # %vec.epilog.middle.block1211
	bne	$a3, $a7, .LBB3_187
	b	.LBB3_189
.LBB3_177:
	ld.d	$s1, $sp, 208                   # 8-byte Folded Reload
	b	.LBB3_28
.LBB3_178:
	ld.d	$s1, $sp, 208                   # 8-byte Folded Reload
	b	.LBB3_33
.LBB3_179:                              # %vector.ph1040
	bstrpick.d	$a2, $t6, 31, 4
	slli.d	$a5, $a2, 4
	addi.d	$a2, $t3, 32
	addi.d	$a3, $a1, 32
	move	$a4, $a5
	.p2align	4, , 16
.LBB3_180:                              # %vector.body1043
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
	bnez	$a4, .LBB3_180
# %bb.181:                              # %middle.block1051
	beq	$a0, $a5, .LBB3_123
# %bb.182:                              # %vec.epilog.iter.check
	andi	$a2, $t6, 12
	beqz	$a2, .LBB3_323
.LBB3_183:                              # %vec.epilog.ph
	bstrpick.d	$a4, $t6, 31, 2
	slli.d	$a6, $a4, 2
	alsl.d	$a2, $a4, $a1, 4
	andi	$a3, $t6, 3
	alsl.d	$a4, $a4, $t3, 4
	alsl.d	$a7, $a5, $t3, 2
	alsl.d	$a1, $a5, $a1, 2
	sub.d	$a5, $a5, $a6
	.p2align	4, , 16
.LBB3_184:                              # %vec.epilog.vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a1, 0
	vld	$vr1, $a7, 0
	vfadd.s	$vr0, $vr0, $vr1
	vst	$vr0, $a7, 0
	addi.d	$a7, $a7, 16
	addi.d	$a5, $a5, 4
	addi.d	$a1, $a1, 16
	bnez	$a5, .LBB3_184
# %bb.185:                              # %vec.epilog.middle.block
	bne	$a0, $a6, .LBB3_122
	b	.LBB3_123
.LBB3_186:
	addi.d	$a5, $a6, 1
.LBB3_187:                              # %vec.epilog.scalar.ph1197.preheader
	ld.d	$a3, $sp, 376                   # 8-byte Folded Reload
	fld.s	$fa0, $a3, %pc_lo12(.LCPI3_2)
	addi.d	$a3, $t3, -4
	slli.d	$a4, $a5, 2
	sub.d	$a2, $a2, $a5
	.p2align	4, , 16
.LBB3_188:                              # %vec.epilog.scalar.ph1197
                                        # =>This Inner Loop Header: Depth=1
	fldx.s	$fa1, $a3, $a4
	stx.w	$zero, $a1, $a4
	fmadd.s	$fa1, $ft11, $fa0, $fa1
	fstx.s	$fa1, $a0, $a4
	addi.d	$a2, $a2, -1
	addi.d	$a4, $a4, 4
	bnez	$a2, .LBB3_188
.LBB3_189:
	move	$t2, $zero
.LBB3_190:                              # %._crit_edge594.thread
	ori	$a1, $zero, 0
	lu32i.d	$a1, -1
	add.d	$a1, $s4, $a1
	srai.d	$a1, $a1, 30
	fldx.s	$fa0, $t3, $a1
	st.d	$t2, $sp, 472                   # 8-byte Folded Spill
	move	$t2, $zero
.LBB3_191:
	pcalau12i	$a1, %got_pc_hi20(outgap)
	ld.d	$s6, $a1, %got_pc_lo12(outgap)
	ld.w	$a1, $s6, 0
	ld.d	$a2, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a3, $a2, %pc_lo12(Q__align.lastverticalw)
	sltu	$a2, $zero, $a1
	add.w	$a4, $a2, $s0
	ori	$a2, $zero, 2
	st.d	$a3, $sp, 464                   # 8-byte Folded Spill
	fst.s	$fa0, $a3, 0
	st.d	$a4, $sp, 456                   # 8-byte Folded Spill
	blt	$a4, $a2, .LBB3_222
# %bb.192:                              # %.lr.ph630
	st.d	$s6, $sp, 56                    # 8-byte Folded Spill
	ld.d	$a1, $sp, 368                   # 8-byte Folded Reload
	ld.d	$t5, $a1, %pc_lo12(Q__align.initverticalw)
	ld.d	$a1, $sp, 432                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(Q__align.cpmx1)
	st.d	$a1, $sp, 360                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 424                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(Q__align.cpmx2)
	st.d	$a1, $sp, 352                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 344                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(Q__align.floatwork)
	st.d	$a1, $sp, 344                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 336                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(Q__align.intwork)
	st.d	$a1, $sp, 336                   # 8-byte Folded Spill
	slli.d	$a1, $t6, 2
	bstrpick.d	$a1, $a1, 33, 2
	slli.d	$a1, $a1, 2
	st.d	$a1, $sp, 176                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(Q__align.mp)
	ld.d	$a2, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(Q__align.fg_t_og_h_dg_n2_p)
	ld.d	$a3, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a3, $a3, %pc_lo12(Q__align.gapz_n2)
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	ld.d	$a4, $a4, %pc_lo12(Q__align.og_t_fg_h_dg_n2_p)
	ld.d	$a5, $sp, 328                   # 8-byte Folded Reload
	ld.d	$a5, $a5, %pc_lo12(Q__align.og_h_dg_n2_p)
	ld.d	$a6, $sp, 320                   # 8-byte Folded Reload
	ld.d	$a6, $a6, %pc_lo12(Q__align.fg_h_dg_n2_p)
	addi.d	$t7, $a3, 8
	ld.d	$a3, $sp, 448                   # 8-byte Folded Reload
	ld.d	$a3, $a3, %pc_lo12(Q__align.fgcp2g)
	ld.d	$a7, $sp, 488                   # 8-byte Folded Reload
	ld.d	$a7, $a7, %pc_lo12(Q__align.ogcp2g)
	ld.d	$t0, $sp, 280                   # 8-byte Folded Reload
	ld.d	$t0, $t0, %pc_lo12(Q__align.fg_t_og_h_dg_n1_p)
	st.d	$t0, $sp, 328                   # 8-byte Folded Spill
	ld.d	$t0, $sp, 296                   # 8-byte Folded Reload
	ld.d	$t0, $t0, %pc_lo12(Q__align.og_t_fg_h_dg_n1_p)
	st.d	$t0, $sp, 320                   # 8-byte Folded Spill
	ld.d	$t0, $sp, 312                   # 8-byte Folded Reload
	ld.d	$t0, $t0, %pc_lo12(Q__align.og_h_dg_n1_p)
	st.d	$t0, $sp, 312                   # 8-byte Folded Spill
	ld.d	$t0, $sp, 304                   # 8-byte Folded Reload
	ld.d	$t0, $t0, %pc_lo12(Q__align.fg_h_dg_n1_p)
	st.d	$t0, $sp, 304                   # 8-byte Folded Spill
	ld.d	$t0, $sp, 288                   # 8-byte Folded Reload
	ld.d	$t0, $t0, %pc_lo12(Q__align.gapz_n1)
	st.d	$t0, $sp, 296                   # 8-byte Folded Spill
	ld.d	$t0, $sp, 496                   # 8-byte Folded Reload
	ld.d	$t0, $t0, %pc_lo12(Q__align.fgcp1g)
	st.d	$t0, $sp, 288                   # 8-byte Folded Spill
	ld.d	$t0, $sp, 504                   # 8-byte Folded Reload
	ld.d	$t0, $t0, %pc_lo12(Q__align.ogcp1g)
	st.d	$t0, $sp, 280                   # 8-byte Folded Spill
	ori	$t0, $zero, 0
	lu32i.d	$t0, -1
	add.d	$t0, $s4, $t0
	srai.d	$t0, $t0, 30
	st.d	$t0, $sp, 448                   # 8-byte Folded Spill
	addi.w	$t0, $t6, -1
	st.d	$t0, $sp, 256                   # 8-byte Folded Spill
	bstrpick.d	$t0, $t0, 31, 0
	slli.d	$t1, $t0, 2
	addi.d	$t1, $t1, 4
	st.d	$t1, $sp, 152                   # 8-byte Folded Spill
	addi.d	$t1, $t0, 1
	bstrpick.d	$t0, $t1, 32, 4
	slli.d	$t8, $t0, 4
	slli.d	$t0, $t0, 6
	st.d	$t0, $sp, 40                    # 8-byte Folded Spill
	bstrpick.d	$t0, $t1, 32, 2
	slli.d	$s7, $t0, 2
	slli.d	$t0, $t0, 4
	st.d	$t0, $sp, 80                    # 8-byte Folded Spill
	addi.d	$s0, $a0, 4
	addi.d	$s5, $a1, 4
	addi.d	$s3, $a2, 4
	addi.d	$s8, $a4, 4
	addi.d	$s2, $a5, 4
	addi.d	$s6, $a6, 4
	addi.d	$s4, $a3, 4
	addi.d	$s1, $a7, 4
	movgr2fr.w	$fs0, $zero
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	st.d	$t2, $sp, 368                   # 8-byte Folded Spill
	or	$a0, $t2, $a0
	st.d	$a0, $sp, 272                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(impmtx)
	st.d	$a0, $sp, 224                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align.ijp)
	st.d	$a0, $sp, 264                   # 8-byte Folded Spill
	st.d	$t8, $sp, 112                   # 8-byte Folded Spill
	sub.d	$a0, $t6, $t8
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	st.d	$t1, $sp, 104                   # 8-byte Folded Spill
	andi	$a0, $t1, 12
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	sub.d	$a0, $t6, $s7
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	st.d	$s7, $sp, 88                    # 8-byte Folded Spill
	sub.d	$a0, $zero, $s7
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	ori	$s7, $zero, 1
	st.d	$t5, $sp, 432                   # 8-byte Folded Spill
	st.d	$t7, $sp, 424                   # 8-byte Folded Spill
	b	.LBB3_194
	.p2align	4, , 16
.LBB3_193:                              # %._crit_edge622
                                        #   in Loop: Header=BB3_194 Depth=1
	ld.d	$a2, $sp, 448                   # 8-byte Folded Reload
	fldx.s	$fa0, $t2, $a2
	ld.d	$a2, $sp, 464                   # 8-byte Folded Reload
	fstx.s	$fa0, $a2, $a1
	move	$s7, $a0
	move	$t3, $t2
	ld.d	$a1, $sp, 456                   # 8-byte Folded Reload
	beq	$a0, $a1, .LBB3_223
.LBB3_194:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_215 Depth 2
                                        #     Child Loop BB3_219 Depth 2
                                        #     Child Loop BB3_202 Depth 2
                                        #     Child Loop BB3_206 Depth 2
	addi.d	$t6, $s7, -1
	slli.d	$a0, $t6, 2
	fldx.s	$fa0, $t5, $a0
	move	$t2, $t4
	move	$t4, $t3
	fst.s	$fa0, $t3, 0
	ld.d	$a0, $sp, 480                   # 8-byte Folded Reload
	ld.bu	$a0, $a0, 0
	ori	$a1, $zero, 114
	bne	$a0, $a1, .LBB3_197
# %bb.195:                              #   in Loop: Header=BB3_194 Depth=1
	ld.d	$a0, $sp, 368                   # 8-byte Folded Reload
	bnez	$a0, .LBB3_203
# %bb.196:                              # %clearvec.exit529.thread
                                        #   in Loop: Header=BB3_194 Depth=1
	move	$a0, $t2
	move	$a1, $zero
	ld.d	$a2, $sp, 176                   # 8-byte Folded Reload
	st.d	$t4, $sp, 504                   # 8-byte Folded Spill
	st.d	$t2, $sp, 496                   # 8-byte Folded Spill
	st.d	$t6, $sp, 488                   # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$t6, $sp, 488                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 496                   # 8-byte Folded Reload
	ld.d	$t7, $sp, 424                   # 8-byte Folded Reload
	ld.d	$t5, $sp, 432                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 504                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 440                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	beqz	$a0, .LBB3_198
	b	.LBB3_203
	.p2align	4, , 16
.LBB3_197:                              # %clearvec.exit529
                                        #   in Loop: Header=BB3_194 Depth=1
	move	$a0, $t2
	ld.d	$a1, $sp, 360                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 352                   # 8-byte Folded Reload
	move	$a3, $s7
	move	$a4, $ra
	ld.d	$a5, $sp, 344                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 336                   # 8-byte Folded Reload
	move	$a7, $zero
	st.d	$t4, $sp, 504                   # 8-byte Folded Spill
	st.d	$t2, $sp, 496                   # 8-byte Folded Spill
	st.d	$t6, $sp, 488                   # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(match_calc)
	jirl	$ra, $ra, 0
	ld.d	$t6, $sp, 488                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 496                   # 8-byte Folded Reload
	ld.d	$t7, $sp, 424                   # 8-byte Folded Reload
	ld.d	$t5, $sp, 432                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 504                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 440                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	bnez	$a0, .LBB3_203
.LBB3_198:                              # %iter.check1224
                                        #   in Loop: Header=BB3_194 Depth=1
	slli.d	$a0, $s7, 3
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	ldx.d	$a2, $a1, $a0
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ori	$a1, $zero, 3
	bltu	$a0, $a1, .LBB3_201
# %bb.199:                              # %vector.memcheck1215
                                        #   in Loop: Header=BB3_194 Depth=1
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	add.d	$a0, $a2, $a1
	bgeu	$t2, $a0, .LBB3_212
# %bb.200:                              # %vector.memcheck1215
                                        #   in Loop: Header=BB3_194 Depth=1
	add.d	$a0, $t2, $a1
	bgeu	$a2, $a0, .LBB3_212
.LBB3_201:                              #   in Loop: Header=BB3_194 Depth=1
	move	$a0, $a2
	ld.d	$a2, $sp, 248                   # 8-byte Folded Reload
	move	$a1, $t2
	.p2align	4, , 16
.LBB3_202:                              # %.lr.ph.i532
                                        #   Parent Loop BB3_194 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.s	$fa0, $a0, 0
	fld.s	$fa1, $a1, 0
	addi.w	$a2, $a2, -1
	addi.d	$a0, $a0, 4
	addi.d	$a3, $a1, 4
	fadd.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $a1, 0
	move	$a1, $a3
	bnez	$a2, .LBB3_202
.LBB3_203:                              # %imp_match_out_veadQ.exit537
                                        #   in Loop: Header=BB3_194 Depth=1
	slli.d	$a1, $s7, 2
	fldx.s	$fa0, $t5, $a1
	fst.s	$fa0, $t2, 0
	addi.d	$a0, $s7, 1
	ld.d	$a2, $sp, 472                   # 8-byte Folded Reload
	bnez	$a2, .LBB3_193
# %bb.204:                              # %.lr.ph621.preheader
                                        #   in Loop: Header=BB3_194 Depth=1
	move	$a2, $zero
	move	$a3, $zero
	move	$a4, $zero
	ld.d	$a5, $sp, 328                   # 8-byte Folded Reload
	fldx.s	$fa0, $a5, $a1
	ld.d	$a5, $sp, 320                   # 8-byte Folded Reload
	fldx.s	$fa1, $a5, $a1
	ld.d	$a5, $sp, 312                   # 8-byte Folded Reload
	fldx.s	$fa2, $a5, $a1
	ld.d	$a5, $sp, 304                   # 8-byte Folded Reload
	fldx.s	$fa3, $a5, $a1
	ld.d	$a6, $sp, 296                   # 8-byte Folded Reload
	fldx.s	$fa4, $a6, $a1
	slli.d	$a5, $a0, 2
	fldx.s	$fa5, $a6, $a5
	ld.d	$a5, $sp, 288                   # 8-byte Folded Reload
	fldx.s	$fa6, $a5, $a1
	fld.s	$ft0, $t4, 0
	ld.d	$a5, $sp, 376                   # 8-byte Folded Reload
	fld.s	$ft1, $a5, %pc_lo12(.LCPI3_2)
	slli.d	$a5, $s7, 3
	ld.d	$a6, $sp, 264                   # 8-byte Folded Reload
	ldx.d	$a6, $a6, $a5
	ld.d	$a5, $sp, 280                   # 8-byte Folded Reload
	fldx.s	$fa7, $a5, $a1
	xvld	$xr10, $sp, 384                 # 32-byte Folded Reload
	fmadd.s	$ft0, $ft2, $ft1, $ft0
	addi.d	$a5, $t2, 4
	addi.d	$a6, $a6, 4
	addi.d	$a7, $zero, -1
	b	.LBB3_206
	.p2align	4, , 16
.LBB3_205:                              #   in Loop: Header=BB3_206 Depth=2
	fmul.s	$ft2, $fa4, $ft2
	fadd.s	$ft1, $ft1, $ft2
	fcmp.cult.s	$fcc0, $ft1, $ft0
	fsel	$ft0, $ft1, $ft0, $fcc0
	movcf2gr	$t0, $fcc0
	fldx.s	$ft1, $a5, $a3
	masknez	$t1, $a2, $t0
	maskeqz	$a4, $a4, $t0
	or	$a4, $a4, $t1
	fadd.s	$ft1, $fs0, $ft1
	fstx.s	$ft1, $a5, $a3
	addi.d	$a3, $a3, 4
	addi.w	$a2, $a2, 1
	addi.d	$a7, $a7, -1
	beq	$ra, $a2, .LBB3_193
.LBB3_206:                              # %.lr.ph621
                                        #   Parent Loop BB3_194 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fldx.s	$ft2, $s2, $a3
	fldx.s	$ft1, $t4, $a3
	fldx.s	$ft3, $s1, $a3
	fmul.s	$ft2, $fa7, $ft2
	fadd.s	$ft2, $ft1, $ft2
	fldx.s	$ft4, $s6, $a3
	fmul.s	$ft3, $fa2, $ft3
	fadd.s	$ft2, $ft2, $ft3
	fldx.s	$ft3, $s4, $a3
	fmul.s	$ft4, $fa6, $ft4
	fldx.s	$ft5, $s3, $a3
	fadd.s	$ft2, $ft2, $ft4
	fmul.s	$ft3, $fa3, $ft3
	fadd.s	$fs0, $ft2, $ft3
	fmul.s	$ft2, $fa5, $ft5
	fadd.s	$ft2, $ft0, $ft2
	fcmp.cule.s	$fcc0, $ft2, $fs0
	stx.w	$zero, $a6, $a3
	bcnez	$fcc0, .LBB3_208
# %bb.207:                              #   in Loop: Header=BB3_206 Depth=2
	add.d	$t0, $a4, $a7
	stx.w	$t0, $a6, $a3
	fmov.s	$fs0, $ft2
.LBB3_208:                              #   in Loop: Header=BB3_206 Depth=2
	add.d	$t0, $t7, $a3
	fld.s	$ft4, $t0, 0
	fldx.s	$ft3, $s0, $a3
	fldx.s	$ft2, $s8, $a3
	fmul.s	$ft4, $fa0, $ft4
	fadd.s	$ft4, $ft3, $ft4
	fcmp.cule.s	$fcc0, $ft4, $fs0
	bcnez	$fcc0, .LBB3_210
# %bb.209:                              #   in Loop: Header=BB3_206 Depth=2
	ldx.w	$t1, $s5, $a3
	sub.d	$t1, $s7, $t1
	stx.w	$t1, $a6, $a3
	fmov.s	$fs0, $ft4
.LBB3_210:                              #   in Loop: Header=BB3_206 Depth=2
	fld.s	$ft4, $t0, -4
	fmul.s	$ft4, $fa1, $ft4
	fadd.s	$ft4, $ft1, $ft4
	fcmp.cult.s	$fcc0, $ft4, $ft3
	bcnez	$fcc0, .LBB3_205
# %bb.211:                              #   in Loop: Header=BB3_206 Depth=2
	fstx.s	$ft4, $s0, $a3
	stx.w	$t6, $s5, $a3
	b	.LBB3_205
.LBB3_212:                              # %vector.main.loop.iter.check1226
                                        #   in Loop: Header=BB3_194 Depth=1
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ori	$a1, $zero, 15
	bgeu	$a0, $a1, .LBB3_214
# %bb.213:                              #   in Loop: Header=BB3_194 Depth=1
	move	$a4, $zero
	b	.LBB3_218
.LBB3_214:                              # %vector.body1230.preheader
                                        #   in Loop: Header=BB3_194 Depth=1
	addi.d	$a0, $t2, 32
	addi.d	$a1, $a2, 32
	ld.d	$a3, $sp, 112                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB3_215:                              # %vector.body1230
                                        #   Parent Loop BB3_194 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvld	$xr0, $a1, -32
	xvld	$xr1, $a1, 0
	xvld	$xr2, $a0, -32
	xvld	$xr3, $a0, 0
	xvfadd.s	$xr0, $xr0, $xr2
	xvfadd.s	$xr1, $xr1, $xr3
	xvst	$xr0, $a0, -32
	xvst	$xr1, $a0, 0
	addi.d	$a0, $a0, 64
	addi.d	$a3, $a3, -16
	addi.d	$a1, $a1, 64
	bnez	$a3, .LBB3_215
# %bb.216:                              # %middle.block1239
                                        #   in Loop: Header=BB3_194 Depth=1
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	beq	$a0, $a1, .LBB3_203
# %bb.217:                              # %vec.epilog.iter.check1244
                                        #   in Loop: Header=BB3_194 Depth=1
	ld.d	$a4, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	beqz	$a0, .LBB3_221
.LBB3_218:                              # %vec.epilog.ph1243
                                        #   in Loop: Header=BB3_194 Depth=1
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	add.d	$a0, $a2, $a1
	add.d	$a1, $t2, $a1
	alsl.d	$a3, $a4, $t2, 2
	alsl.d	$a2, $a4, $a2, 2
	ld.d	$a5, $sp, 64                    # 8-byte Folded Reload
	add.d	$a4, $a5, $a4
	.p2align	4, , 16
.LBB3_219:                              # %vec.epilog.vector.body1250
                                        #   Parent Loop BB3_194 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $a2, 0
	vld	$vr1, $a3, 0
	vfadd.s	$vr0, $vr0, $vr1
	vst	$vr0, $a3, 0
	addi.d	$a3, $a3, 16
	addi.d	$a4, $a4, 4
	addi.d	$a2, $a2, 16
	bnez	$a4, .LBB3_219
# %bb.220:                              # %vec.epilog.middle.block1259
                                        #   in Loop: Header=BB3_194 Depth=1
	ld.d	$a2, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a3, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 88                    # 8-byte Folded Reload
	bne	$a3, $a4, .LBB3_202
	b	.LBB3_203
.LBB3_221:                              #   in Loop: Header=BB3_194 Depth=1
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	add.d	$a0, $a2, $a1
	add.d	$a1, $t2, $a1
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	b	.LBB3_202
.LBB3_222:
	movgr2fr.w	$fs0, $zero
	ld.d	$s1, $sp, 136                   # 8-byte Folded Reload
	bnez	$a1, .LBB3_238
	b	.LBB3_224
.LBB3_223:                              # %._crit_edge631.loopexit
	ld.d	$s6, $sp, 56                    # 8-byte Folded Reload
	ld.w	$a1, $s6, 0
	move	$t3, $t2
	ld.d	$s8, $sp, 184                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 128                   # 8-byte Folded Reload
	ld.d	$t6, $sp, 248                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 200                   # 8-byte Folded Reload
	bnez	$a1, .LBB3_238
.LBB3_224:                              # %.preheader555
	ld.d	$a0, $sp, 472                   # 8-byte Folded Reload
	bnez	$a0, .LBB3_231
# %bb.225:                              # %.lr.ph636
	pcalau12i	$a0, %got_pc_hi20(offset)
	ld.d	$a0, $a0, %got_pc_lo12(offset)
	ld.w	$a0, $a0, 0
	addi.d	$a1, $t6, 1
	bstrpick.d	$a1, $a1, 31, 0
	addi.d	$a2, $a1, -1
	ori	$a4, $zero, 8
	ori	$a3, $zero, 1
	bltu	$a2, $a4, .LBB3_229
# %bb.226:                              # %vector.ph1270
	move	$a4, $a2
	bstrins.d	$a4, $zero, 2, 0
	ori	$a5, $zero, 1
	move	$a3, $a2
	bstrins.d	$a3, $a5, 2, 0
	xvreplgr2vr.w	$xr0, $a0
	xvreplgr2vr.d	$xr1, $t6
	pcalau12i	$a5, %pc_hi20(.LCPI3_3)
	xvld	$xr2, $a5, %pc_lo12(.LCPI3_3)
	pcalau12i	$a5, %pc_hi20(.LCPI3_4)
	xvld	$xr3, $a5, %pc_lo12(.LCPI3_4)
	addi.d	$a5, $t3, 4
	lu52i.d	$a6, $zero, -1026
	xvreplgr2vr.d	$xr4, $a6
	move	$a6, $a4
	.p2align	4, , 16
.LBB3_227:                              # %vector.body1277
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
	xvst	$xr5, $sp, 544
	vld	$vr5, $sp, 560
	xvld	$xr6, $a5, 0
	vext2xv.d.w	$xr5, $xr5
	vld	$vr7, $sp, 544
	xvffint.d.l	$xr5, $xr5
	xvst	$xr6, $sp, 512
	vld	$vr6, $sp, 512
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
	vld	$vr8, $sp, 528
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
	bnez	$a6, .LBB3_227
# %bb.228:                              # %middle.block1284
	beq	$a2, $a4, .LBB3_231
.LBB3_229:                              # %scalar.ph1268.preheader
	sub.w	$a2, $t6, $a3
	mul.d	$a2, $a0, $a2
	alsl.d	$a4, $a3, $t3, 2
	sub.d	$a1, $a1, $a3
	vldi	$vr0, -800
	.p2align	4, , 16
.LBB3_230:                              # %scalar.ph1268
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
	bnez	$a1, .LBB3_230
.LBB3_231:                              # %.preheader554
	ori	$a0, $zero, 1
	ld.d	$a1, $sp, 208                   # 8-byte Folded Reload
	blt	$a1, $a0, .LBB3_238
# %bb.232:                              # %.lr.ph639
	pcalau12i	$a1, %got_pc_hi20(offset)
	ld.d	$a1, $a1, %got_pc_lo12(offset)
	ld.w	$a1, $a1, 0
	bstrpick.d	$a2, $s0, 31, 0
	movgr2fr.w	$fa0, $a1
	ffint.d.w	$fa1, $fa0
	movgr2fr.d	$fa0, $a2
	ffint.d.l	$fa0, $fa0
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(Q__align.lastverticalw)
	addi.d	$a2, $s0, 1
	bstrpick.d	$a2, $a2, 31, 0
	addi.d	$a3, $a2, -1
	ori	$a4, $zero, 4
	fneg.d	$fa1, $fa1
	bltu	$a3, $a4, .LBB3_236
# %bb.233:                              # %vector.ph1289
	move	$a4, $a3
	bstrins.d	$a4, $zero, 1, 0
	ori	$a5, $zero, 1
	move	$a0, $a3
	bstrins.d	$a0, $a5, 1, 0
	xvreplve0.d	$xr2, $xr0
	xvreplve0.d	$xr3, $xr1
	pcalau12i	$a5, %pc_hi20(.LCPI3_5)
	vld	$vr4, $a5, %pc_lo12(.LCPI3_5)
	addi.d	$a5, $a1, 4
	lu52i.d	$a6, $zero, -1026
	xvreplgr2vr.d	$xr5, $a6
	move	$a6, $a4
	.p2align	4, , 16
.LBB3_234:                              # %vector.body1296
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
	bnez	$a6, .LBB3_234
# %bb.235:                              # %middle.block1303
	beq	$a3, $a4, .LBB3_238
.LBB3_236:                              # %scalar.ph1287.preheader
	alsl.d	$a1, $a0, $a1, 2
	sub.d	$a2, $a2, $a0
	vldi	$vr2, -800
	.p2align	4, , 16
.LBB3_237:                              # %scalar.ph1287
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
	bnez	$a2, .LBB3_237
.LBB3_238:                              # %.loopexit
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s4, $a0, %pc_lo12(Q__align.lastverticalw)
	ld.d	$s7, $s1, %pc_lo12(Q__align.mseq1)
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s5, $a0, %pc_lo12(Q__align.mseq2)
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a6, $a0, %pc_lo12(Q__align.ijp)
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	beqz	$a0, .LBB3_240
# %bb.239:
	st.d	$s8, $sp, 0
	move	$a0, $t3
	move	$a1, $s4
	ld.d	$a2, $sp, 232                   # 8-byte Folded Reload
	move	$a3, $s2
	move	$a4, $s7
	move	$a5, $s5
	ld.d	$s3, $sp, 216                   # 8-byte Folded Reload
	move	$a7, $s3
	pcaddu18i	$ra, %call36(Atracking)
	jirl	$ra, $ra, 0
	b	.LBB3_313
.LBB3_240:
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	move	$s0, $t3
	st.d	$a6, $sp, 504                   # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s2, 0
	move	$s8, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	add.w	$a0, $a0, $s8
	st.d	$a0, $sp, 496                   # 8-byte Folded Spill
	addi.w	$s1, $a0, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(AllocateCharVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 488                   # 8-byte Folded Spill
	move	$a0, $s1
	pcaddu18i	$ra, %call36(AllocateCharVec)
	jirl	$ra, $ra, 0
	ld.d	$t1, $sp, 504                   # 8-byte Folded Reload
	ld.w	$a3, $s6, 0
	ori	$a1, $zero, 1
	addi.w	$ra, $s8, 0
	move	$t2, $s2
	addi.w	$a2, $s2, 0
	beq	$a3, $a1, .LBB3_251
# %bb.241:
	move	$a7, $s0
	fld.s	$fa0, $s4, 0
	blt	$ra, $a1, .LBB3_246
# %bb.242:                              # %.lr.ph.i538
	slli.d	$a1, $s8, 3
	bstrpick.d	$a1, $a1, 33, 3
	slli.d	$a1, $a1, 3
	slli.d	$a3, $t2, 32
	srai.d	$a3, $a3, 30
	bstrpick.d	$a4, $s8, 30, 0
	move	$a5, $s8
	b	.LBB3_244
	.p2align	4, , 16
.LBB3_243:                              #   in Loop: Header=BB3_244 Depth=1
	addi.d	$a4, $a4, -1
	addi.d	$a5, $a5, -1
	addi.d	$s4, $s4, 4
	beqz	$a4, .LBB3_246
.LBB3_244:                              # =>This Inner Loop Header: Depth=1
	fld.s	$fa1, $s4, 0
	fcmp.cult.s	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB3_243
# %bb.245:                              #   in Loop: Header=BB3_244 Depth=1
	ldx.d	$a6, $t1, $a1
	stx.w	$a5, $a6, $a3
	fmov.s	$fa0, $fa1
	b	.LBB3_243
.LBB3_246:                              # %.preheader2.i
	ori	$a1, $zero, 1
	blt	$a2, $a1, .LBB3_251
# %bb.247:                              # %.lr.ph7.i
	slli.d	$a1, $s8, 32
	srai.d	$a1, $a1, 29
	slli.d	$a3, $t2, 2
	bstrpick.d	$a3, $a3, 32, 2
	slli.d	$a3, $a3, 2
	bstrpick.d	$a4, $t2, 30, 0
	sub.d	$a5, $zero, $t2
	b	.LBB3_249
	.p2align	4, , 16
.LBB3_248:                              #   in Loop: Header=BB3_249 Depth=1
	addi.d	$a4, $a4, -1
	addi.d	$a5, $a5, 1
	addi.d	$a7, $a7, 4
	beqz	$a4, .LBB3_251
.LBB3_249:                              # =>This Inner Loop Header: Depth=1
	fld.s	$fa1, $a7, 0
	fcmp.cult.s	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB3_248
# %bb.250:                              #   in Loop: Header=BB3_249 Depth=1
	ldx.d	$a6, $t1, $a1
	stx.w	$a5, $a6, $a3
	fmov.s	$fa0, $fa1
	b	.LBB3_248
.LBB3_251:                              # %.loopexit.i
	bltz	$ra, .LBB3_259
# %bb.252:                              # %.lr.ph10.preheader.i
	addi.d	$a3, $s8, 1
	bstrpick.d	$a1, $a3, 31, 0
	ori	$a4, $zero, 4
	bgeu	$a1, $a4, .LBB3_254
# %bb.253:
	move	$a3, $zero
	b	.LBB3_257
.LBB3_254:                              # %vector.ph1308
	pcalau12i	$a4, %pc_hi20(.LCPI3_6)
	vld	$vr0, $a4, %pc_lo12(.LCPI3_6)
	bstrpick.d	$a3, $a3, 31, 2
	slli.d	$a3, $a3, 2
	addi.d	$a4, $t1, 16
	move	$a5, $a3
	.p2align	4, , 16
.LBB3_255:                              # %vector.body1311
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
	bnez	$a5, .LBB3_255
# %bb.256:                              # %middle.block1318
	beq	$a1, $a3, .LBB3_259
.LBB3_257:                              # %.lr.ph10.i.preheader
	alsl.d	$a4, $a3, $t1, 3
	sub.d	$a1, $a1, $a3
	addi.d	$a3, $a3, 1
	.p2align	4, , 16
.LBB3_258:                              # %.lr.ph10.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a5, $a4, 0
	st.w	$a3, $a5, 0
	addi.d	$a4, $a4, 8
	addi.d	$a1, $a1, -1
	addi.d	$a3, $a3, 1
	bnez	$a1, .LBB3_258
.LBB3_259:                              # %.preheader1.i
	ld.d	$a1, $fp, 0
	bltz	$a2, .LBB3_273
# %bb.260:                              # %iter.check1324
	ld.d	$a3, $t1, 0
	addi.d	$a6, $t2, 1
	bstrpick.d	$a4, $a6, 31, 0
	ori	$a5, $zero, 3
	bltu	$a5, $a4, .LBB3_262
# %bb.261:
	move	$a5, $zero
	b	.LBB3_271
.LBB3_262:                              # %vector.main.loop.iter.check1326
	ori	$a5, $zero, 16
	bgeu	$a4, $a5, .LBB3_264
# %bb.263:
	move	$a5, $zero
	b	.LBB3_268
.LBB3_264:                              # %vector.ph1327
	bstrpick.d	$a5, $a6, 31, 4
	slli.d	$a5, $a5, 4
	pcalau12i	$a7, %pc_hi20(.LCPI3_7)
	xvld	$xr0, $a7, %pc_lo12(.LCPI3_7)
	addi.d	$a7, $a3, 32
	xvrepli.b	$xr1, -1
	xvrepli.w	$xr2, -9
	move	$t0, $a5
	.p2align	4, , 16
.LBB3_265:                              # %vector.body1330
                                        # =>This Inner Loop Header: Depth=1
	xvxor.v	$xr3, $xr0, $xr1
	xvsub.w	$xr4, $xr2, $xr0
	xvst	$xr3, $a7, -32
	xvst	$xr4, $a7, 0
	xvaddi.wu	$xr0, $xr0, 16
	addi.d	$t0, $t0, -16
	addi.d	$a7, $a7, 64
	bnez	$t0, .LBB3_265
# %bb.266:                              # %middle.block1336
	beq	$a4, $a5, .LBB3_273
# %bb.267:                              # %vec.epilog.iter.check1341
	andi	$a7, $a6, 12
	beqz	$a7, .LBB3_271
.LBB3_268:                              # %vec.epilog.ph1340
	move	$a7, $a5
	pcalau12i	$a5, %pc_hi20(.LCPI3_8)
	vld	$vr0, $a5, %pc_lo12(.LCPI3_8)
	bstrpick.d	$a5, $a6, 31, 2
	slli.d	$a5, $a5, 2
	vreplgr2vr.w	$vr1, $a7
	vor.v	$vr0, $vr1, $vr0
	sub.d	$a6, $a7, $a5
	alsl.d	$a7, $a7, $a3, 2
	vrepli.b	$vr1, -1
	.p2align	4, , 16
.LBB3_269:                              # %vec.epilog.vector.body1346
                                        # =>This Inner Loop Header: Depth=1
	vxor.v	$vr2, $vr0, $vr1
	vst	$vr2, $a7, 0
	vaddi.wu	$vr0, $vr0, 4
	addi.d	$a6, $a6, 4
	addi.d	$a7, $a7, 16
	bnez	$a6, .LBB3_269
# %bb.270:                              # %vec.epilog.middle.block1351
	beq	$a4, $a5, .LBB3_273
.LBB3_271:                              # %vec.epilog.scalar.ph1339.preheader
	alsl.d	$a3, $a5, $a3, 2
	nor	$a6, $a5, $zero
	sub.d	$a4, $a4, $a5
	.p2align	4, , 16
.LBB3_272:                              # %vec.epilog.scalar.ph1339
                                        # =>This Inner Loop Header: Depth=1
	st.w	$a6, $a3, 0
	addi.d	$a3, $a3, 4
	addi.d	$a4, $a4, -1
	addi.d	$a6, $a6, -1
	bnez	$a4, .LBB3_272
.LBB3_273:                              # %._crit_edge.i
	ld.d	$a3, $sp, 488                   # 8-byte Folded Reload
	add.d	$a3, $a3, $ra
	add.d	$s4, $a3, $a2
	stx.b	$zero, $a3, $a2
	st.d	$a0, $sp, 480                   # 8-byte Folded Spill
	add.d	$a3, $a0, $ra
	add.d	$s6, $a3, $a2
	stx.b	$zero, $a3, $a2
	st.w	$zero, $a1, 0
	ld.d	$a0, $sp, 496                   # 8-byte Folded Reload
	bltz	$a0, .LBB3_305
# %bb.274:                              # %.lr.ph41.i.preheader
	move	$t6, $zero
	ori	$a2, $zero, 1
	ori	$a3, $zero, 111
	ori	$a4, $zero, 45
	ori	$a5, $zero, 16
	xvrepli.b	$xr0, 0
	vrepli.b	$vr1, 45
	vrepli.b	$vr2, 111
	ori	$a6, $zero, 32
	xvrepli.b	$xr3, 111
	xvrepli.b	$xr4, 45
	move	$a0, $t2
	move	$a7, $t2
	.p2align	4, , 16
.LBB3_275:                              # %.lr.ph41.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_281 Depth 2
                                        #     Child Loop BB3_292 Depth 2
                                        #     Child Loop BB3_288 Depth 2
                                        #     Child Loop BB3_297 Depth 2
	addi.w	$t0, $s8, 0
	slli.d	$t4, $t0, 3
	ldx.d	$t1, $t1, $t4
	addi.w	$t2, $a7, 0
	slli.d	$t5, $t2, 2
	ldx.w	$t3, $t1, $t5
	bge	$s3, $t3, .LBB3_283
# %bb.276:                              #   in Loop: Header=BB3_275 Depth=1
	beqz	$t3, .LBB3_304
# %bb.277:                              #   in Loop: Header=BB3_275 Depth=1
	sub.d	$t1, $s8, $t3
	move	$t3, $s3
	nor	$t7, $t1, $zero
	add.w	$t7, $s8, $t7
	beqz	$t7, .LBB3_284
.LBB3_278:                              # %.lr.ph19.preheader.i
                                        #   in Loop: Header=BB3_275 Depth=1
	bltu	$t7, $a6, .LBB3_290
# %bb.279:                              # %.lr.ph19.preheader.i
                                        #   in Loop: Header=BB3_275 Depth=1
	sub.d	$t8, $s4, $s6
	bltu	$t8, $a6, .LBB3_290
# %bb.280:                              # %vector.ph1383
                                        #   in Loop: Header=BB3_275 Depth=1
	bstrpick.d	$s1, $t7, 31, 0
	bstrpick.d	$t8, $s1, 31, 5
	slli.d	$s2, $t8, 5
	sub.d	$t7, $t7, $s2
	sub.d	$t8, $s6, $s2
	sub.d	$s0, $s4, $s2
	addi.d	$s3, $s4, -32
	addi.d	$s4, $s6, -32
	move	$s6, $s2
	.p2align	4, , 16
.LBB3_281:                              # %vector.body1387
                                        #   Parent Loop BB3_275 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvst	$xr3, $s3, 0
	xvst	$xr4, $s4, 0
	addi.d	$s6, $s6, -32
	addi.d	$s3, $s3, -32
	addi.d	$s4, $s4, -32
	bnez	$s6, .LBB3_281
# %bb.282:                              # %middle.block1394
                                        #   in Loop: Header=BB3_275 Depth=1
	ld.d	$s3, $sp, 200                   # 8-byte Folded Reload
	bne	$s2, $s1, .LBB3_291
	b	.LBB3_293
	.p2align	4, , 16
.LBB3_283:                              #   in Loop: Header=BB3_275 Depth=1
	addi.d	$t1, $s8, -1
	nor	$t7, $t1, $zero
	add.w	$t7, $s8, $t7
	bnez	$t7, .LBB3_278
	.p2align	4, , 16
.LBB3_284:                              # %._crit_edge20.i
                                        #   in Loop: Header=BB3_275 Depth=1
	beq	$t3, $s3, .LBB3_294
.LBB3_285:                              # %.lr.ph29.preheader.i
                                        #   in Loop: Header=BB3_275 Depth=1
	addi.w	$t7, $zero, -17
	nor	$s1, $t3, $zero
	bltu	$t7, $t3, .LBB3_295
# %bb.286:                              # %.lr.ph29.preheader.i
                                        #   in Loop: Header=BB3_275 Depth=1
	sub.d	$t7, $s4, $s6
	bltu	$t7, $a5, .LBB3_295
# %bb.287:                              # %vector.ph1360
                                        #   in Loop: Header=BB3_275 Depth=1
	bstrpick.d	$t7, $s1, 30, 4
	slli.d	$s2, $t7, 4
	sub.d	$s0, $s1, $s2
	sub.d	$t7, $s6, $s2
	sub.d	$t8, $s4, $s2
	xvinsgr2vr.w	$xr6, $t6, 0
	pcalau12i	$t6, %pc_hi20(.LCPI3_9)
	xvld	$xr5, $t6, %pc_lo12(.LCPI3_9)
	xvpermi.d	$xr6, $xr6, 68
	xvinsgr2vr.w	$xr7, $zero, 0
	xvpermi.d	$xr7, $xr7, 68
	xvshuf.w	$xr5, $xr7, $xr6
	addi.d	$t6, $s4, -8
	addi.d	$s3, $s6, -8
	move	$s4, $s2
	xvori.b	$xr6, $xr0, 0
	.p2align	4, , 16
.LBB3_288:                              # %vector.body1364
                                        #   Parent Loop BB3_275 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vst	$vr1, $t6, -8
	vst	$vr2, $s3, -8
	xvaddi.wu	$xr5, $xr5, 1
	xvaddi.wu	$xr6, $xr6, 1
	addi.d	$s4, $s4, -16
	addi.d	$t6, $t6, -16
	addi.d	$s3, $s3, -16
	bnez	$s4, .LBB3_288
# %bb.289:                              # %middle.block1372
                                        #   in Loop: Header=BB3_275 Depth=1
	pcalau12i	$t6, %pc_hi20(.LCPI3_10)
	xvld	$xr7, $t6, %pc_lo12(.LCPI3_10)
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
	ld.d	$s3, $sp, 200                   # 8-byte Folded Reload
	bne	$s2, $s1, .LBB3_296
	b	.LBB3_298
	.p2align	4, , 16
.LBB3_290:                              #   in Loop: Header=BB3_275 Depth=1
	move	$t8, $s6
	move	$s0, $s4
.LBB3_291:                              # %.lr.ph19.i.preheader
                                        #   in Loop: Header=BB3_275 Depth=1
	move	$s1, $t8
	move	$s2, $s0
	.p2align	4, , 16
.LBB3_292:                              # %.lr.ph19.i
                                        #   Parent Loop BB3_275 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$s0, $s2, -1
	st.b	$a3, $s2, -1
	addi.d	$t8, $s1, -1
	addi.w	$t7, $t7, -1
	st.b	$a4, $s1, -1
	move	$s1, $t8
	move	$s2, $s0
	bnez	$t7, .LBB3_292
.LBB3_293:                              # %._crit_edge20.loopexit.i
                                        #   in Loop: Header=BB3_275 Depth=1
	addi.d	$t7, $s8, -1
	add.d	$t6, $t7, $t6
	sub.d	$t6, $t6, $t1
	move	$s4, $s0
	move	$s6, $t8
	bne	$t3, $s3, .LBB3_285
.LBB3_294:                              #   in Loop: Header=BB3_275 Depth=1
	move	$t8, $s4
	move	$t7, $s6
	bne	$t0, $ra, .LBB3_299
	b	.LBB3_301
	.p2align	4, , 16
.LBB3_295:                              #   in Loop: Header=BB3_275 Depth=1
	move	$s0, $s1
	move	$t7, $s6
	move	$t8, $s4
.LBB3_296:                              # %.lr.ph29.i.preheader
                                        #   in Loop: Header=BB3_275 Depth=1
	add.d	$t6, $t6, $s0
	.p2align	4, , 16
.LBB3_297:                              # %.lr.ph29.i
                                        #   Parent Loop BB3_275 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.b	$a4, $t8, -1
	addi.d	$t8, $t8, -1
	st.b	$a3, $t7, -1
	addi.w	$s0, $s0, -1
	addi.d	$t7, $t7, -1
	bnez	$s0, .LBB3_297
.LBB3_298:                              # %._crit_edge30.i
                                        #   in Loop: Header=BB3_275 Depth=1
	beq	$t0, $ra, .LBB3_301
.LBB3_299:                              # %._crit_edge30.i
                                        #   in Loop: Header=BB3_275 Depth=1
	addi.w	$s0, $a0, 0
	beq	$t2, $s0, .LBB3_301
# %bb.300:                              #   in Loop: Header=BB3_275 Depth=1
	ld.d	$s0, $sp, 192                   # 8-byte Folded Reload
	ld.d	$s0, $s0, %pc_lo12(impmtx)
	ldx.d	$t4, $s0, $t4
	fldx.s	$fa5, $t4, $t5
	fld.s	$fa6, $a1, 0
	fadd.s	$fa5, $fa5, $fa6
	fst.s	$fa5, $a1, 0
.LBB3_301:                              #   in Loop: Header=BB3_275 Depth=1
	blt	$t0, $a2, .LBB3_306
# %bb.302:                              #   in Loop: Header=BB3_275 Depth=1
	blt	$t2, $a2, .LBB3_306
# %bb.303:                              #   in Loop: Header=BB3_275 Depth=1
	add.d	$a7, $t3, $a7
	addi.d	$s4, $t8, -1
	st.b	$a3, $t8, -1
	addi.d	$s6, $t7, -1
	addi.w	$t6, $t6, 2
	st.b	$a3, $t7, -1
	move	$s8, $t1
	ld.d	$t1, $sp, 504                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 496                   # 8-byte Folded Reload
	bge	$t0, $t6, .LBB3_275
	b	.LBB3_305
	.p2align	4, , 16
.LBB3_304:                              #   in Loop: Header=BB3_275 Depth=1
	addi.d	$t1, $s8, -1
	move	$t3, $s3
	nor	$t7, $t1, $zero
	add.w	$t7, $s8, $t7
	bnez	$t7, .LBB3_278
	b	.LBB3_284
.LBB3_305:                              # %._crit_edge42.i
	ori	$s0, $zero, 1
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	bge	$a0, $s0, .LBB3_307
	b	.LBB3_309
.LBB3_306:
	move	$s4, $t8
	move	$s6, $t7
	ori	$s0, $zero, 1
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	blt	$a0, $s0, .LBB3_309
.LBB3_307:                              # %.lr.ph50.preheader.i
	ld.d	$s1, $sp, 232                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 216                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB3_308:                              # %.lr.ph50.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s7, 0
	ld.d	$a1, $s1, 0
	move	$a2, $s4
	pcaddu18i	$ra, %call36(gapireru)
	jirl	$ra, $ra, 0
	addi.d	$s2, $s2, -1
	addi.d	$s1, $s1, 8
	addi.d	$s7, $s7, 8
	bnez	$s2, .LBB3_308
.LBB3_309:                              # %.preheader.i
	ld.d	$s8, $sp, 184                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 144                   # 8-byte Folded Reload
	blt	$s8, $s0, .LBB3_312
# %bb.310:                              # %.lr.ph52.preheader.i
	move	$s0, $s2
	move	$s1, $s8
	.p2align	4, , 16
.LBB3_311:                              # %.lr.ph52.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s5, 0
	ld.d	$a1, $s0, 0
	move	$a2, $s6
	pcaddu18i	$ra, %call36(gapireru)
	jirl	$ra, $ra, 0
	addi.d	$s1, $s1, -1
	addi.d	$s0, $s0, 8
	addi.d	$s5, $s5, 8
	bnez	$s1, .LBB3_311
.LBB3_312:                              # %Atracking_localhom.exit
	ld.d	$a0, $sp, 488                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 480                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$s3, $sp, 216                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 136                   # 8-byte Folded Reload
.LBB3_313:
	ld.d	$a0, $s1, %pc_lo12(Q__align.mseq1)
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.w	$a3, $a0, 0
	lu12i.w	$a4, 1220
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	blt	$a2, $a3, .LBB3_322
# %bb.314:
	ori	$a0, $a4, 2881
	bge	$a3, $a0, .LBB3_322
# %bb.315:
	ori	$s0, $zero, 1
	ld.d	$s4, $sp, 232                   # 8-byte Folded Reload
	blt	$s3, $s0, .LBB3_318
.LBB3_316:                              # %.lr.ph642
	ld.d	$s1, $s1, %pc_lo12(Q__align.mseq1)
	.p2align	4, , 16
.LBB3_317:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s4, 0
	ld.d	$a1, $s1, 0
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	addi.d	$s1, $s1, 8
	addi.d	$s3, $s3, -1
	addi.d	$s4, $s4, 8
	bnez	$s3, .LBB3_317
.LBB3_318:                              # %.preheader
	blt	$s8, $s0, .LBB3_321
# %bb.319:                              # %.lr.ph644
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s0, $a0, %pc_lo12(Q__align.mseq2)
	.p2align	4, , 16
.LBB3_320:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s2, 0
	ld.d	$a1, $s0, 0
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	addi.d	$s0, $s0, 8
	addi.d	$s8, $s8, -1
	addi.d	$s2, $s2, 8
	bnez	$s8, .LBB3_320
.LBB3_321:                              # %._crit_edge645
	fmov.s	$fa0, $fs0
	addi.d	$sp, $fp, -992
	fld.d	$fs0, $sp, 896                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 904                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 912                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 920                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 928                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 936                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 944                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 952                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 960                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 968                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 976                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 984                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 992
	ret
.LBB3_322:
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
	ld.d	$s4, $sp, 232                   # 8-byte Folded Reload
	bge	$s3, $s0, .LBB3_316
	b	.LBB3_318
.LBB3_323:
	alsl.d	$a2, $a5, $a1, 2
	sub.d	$a3, $t6, $a5
	alsl.d	$a4, $a5, $t3, 2
	b	.LBB3_122
.LBB3_324:
	ld.d	$s2, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 208                   # 8-byte Folded Reload
	b	.LBB3_28
.LBB3_325:
	ld.d	$s2, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 208                   # 8-byte Folded Reload
	b	.LBB3_33
.LBB3_326:
	ld.d	$s2, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 208                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 200                   # 8-byte Folded Reload
	b	.LBB3_28
.LBB3_327:
	ld.d	$s2, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 208                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 200                   # 8-byte Folded Reload
	b	.LBB3_33
.LBB3_328:
	ld.d	$s2, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 200                   # 8-byte Folded Reload
	move	$s1, $t8
	b	.LBB3_28
.LBB3_329:
	ld.d	$s2, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 200                   # 8-byte Folded Reload
	move	$s1, $t8
	b	.LBB3_33
.Lfunc_end3:
	.size	Q__align, .Lfunc_end3-Q__align
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
	.p2align	3, 0x0                          # -- Begin function Q__align_gapmap
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
.LCPI6_3:
	.dword	5                               # 0x5
	.dword	6                               # 0x6
	.dword	7                               # 0x7
	.dword	8                               # 0x8
.LCPI6_4:
	.dword	1                               # 0x1
	.dword	2                               # 0x2
	.dword	3                               # 0x3
	.dword	4                               # 0x4
.LCPI6_7:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	4                               # 0x4
	.word	5                               # 0x5
	.word	6                               # 0x6
	.word	7                               # 0x7
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0
.LCPI6_2:
	.word	0x461c4000                      # float 1.0E+4
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI6_5:
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	4                               # 0x4
.LCPI6_6:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
.LCPI6_8:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.text
	.globl	Q__align_gapmap
	.p2align	5
	.type	Q__align_gapmap,@function
Q__align_gapmap:                        # @Q__align_gapmap
# %bb.0:
	addi.d	$sp, $sp, -960
	st.d	$ra, $sp, 952                   # 8-byte Folded Spill
	st.d	$fp, $sp, 944                   # 8-byte Folded Spill
	st.d	$s0, $sp, 936                   # 8-byte Folded Spill
	st.d	$s1, $sp, 928                   # 8-byte Folded Spill
	st.d	$s2, $sp, 920                   # 8-byte Folded Spill
	st.d	$s3, $sp, 912                   # 8-byte Folded Spill
	st.d	$s4, $sp, 904                   # 8-byte Folded Spill
	st.d	$s5, $sp, 896                   # 8-byte Folded Spill
	st.d	$s6, $sp, 888                   # 8-byte Folded Spill
	st.d	$s7, $sp, 880                   # 8-byte Folded Spill
	st.d	$s8, $sp, 872                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 864                  # 8-byte Folded Spill
	addi.d	$fp, $sp, 960
	bstrins.d	$sp, $zero, 4, 0
	pcalau12i	$t0, %got_pc_hi20(penalty)
	ld.d	$t0, $t0, %got_pc_lo12(penalty)
	pcalau12i	$t1, %pc_hi20(Q__align_gapmap.orlgth1)
	st.d	$t1, $sp, 288                   # 8-byte Folded Spill
	ld.w	$s7, $t1, %pc_lo12(Q__align_gapmap.orlgth1)
	ld.w	$t0, $t0, 0
	st.d	$t0, $sp, 64                    # 8-byte Folded Spill
	st.d	$a7, $sp, 40                    # 8-byte Folded Spill
	st.d	$a6, $sp, 48                    # 8-byte Folded Spill
	move	$s8, $a5
	move	$s2, $a4
	st.d	$a3, $sp, 120                   # 8-byte Folded Spill
	st.d	$a2, $sp, 112                   # 8-byte Folded Spill
	move	$s1, $a1
	move	$s6, $a0
	pcalau12i	$a0, %pc_hi20(Q__align_gapmap.mseq1)
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Q__align_gapmap.mseq2)
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	bnez	$s7, .LBB6_2
# %bb.1:
	pcalau12i	$a0, %got_pc_hi20(njob)
	ld.d	$s0, $a0, %got_pc_lo12(njob)
	ld.w	$a0, $s0, 0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(AllocateCharMtx)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s0, 0
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	st.d	$a0, $a2, %pc_lo12(Q__align_gapmap.mseq1)
	move	$a0, $a1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(AllocateCharMtx)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 288                   # 8-byte Folded Reload
	ld.w	$s7, $a1, %pc_lo12(Q__align_gapmap.orlgth1)
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align_gapmap.mseq2)
.LBB6_2:
	ld.d	$a0, $s6, 0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	st.d	$s1, $sp, 256                   # 8-byte Folded Spill
	ld.d	$a1, $s1, 0
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	addi.w	$s0, $a0, 0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(Q__align_gapmap.orlgth2)
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	ld.w	$s4, $a1, %pc_lo12(Q__align_gapmap.orlgth2)
	st.d	$a0, $sp, 344                   # 8-byte Folded Spill
	addi.w	$a7, $a0, 0
	pcalau12i	$a0, %pc_hi20(Q__align_gapmap.w1)
	st.d	$a0, $sp, 232                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Q__align_gapmap.w2)
	st.d	$a0, $sp, 264                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Q__align_gapmap.initverticalw)
	st.d	$a0, $sp, 352                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Q__align_gapmap.lastverticalw)
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Q__align_gapmap.m)
	st.d	$a0, $sp, 240                   # 8-byte Folded Spill
	pcalau12i	$s5, %pc_hi20(Q__align_gapmap.mp)
	pcalau12i	$s3, %pc_hi20(Q__align_gapmap.mseq)
	pcalau12i	$a0, %pc_hi20(Q__align_gapmap.digf1)
	st.d	$a0, $sp, 400                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Q__align_gapmap.digf2)
	st.d	$a0, $sp, 384                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Q__align_gapmap.diaf1)
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Q__align_gapmap.diaf2)
	st.d	$a0, $sp, 208                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Q__align_gapmap.gapz1)
	st.d	$a0, $sp, 408                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Q__align_gapmap.gapz2)
	st.d	$a0, $sp, 392                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Q__align_gapmap.gapf1)
	st.d	$a0, $sp, 272                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Q__align_gapmap.gapf2)
	st.d	$a0, $sp, 280                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Q__align_gapmap.ogcp1g)
	st.d	$a0, $sp, 448                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Q__align_gapmap.ogcp2g)
	st.d	$a0, $sp, 432                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Q__align_gapmap.fgcp1g)
	st.d	$a0, $sp, 440                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Q__align_gapmap.fgcp2g)
	st.d	$a0, $sp, 424                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Q__align_gapmap.og_h_dg_n1_p)
	st.d	$a0, $sp, 248                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Q__align_gapmap.og_h_dg_n2_p)
	st.d	$a0, $sp, 200                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Q__align_gapmap.fg_h_dg_n1_p)
	st.d	$a0, $sp, 176                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Q__align_gapmap.fg_h_dg_n2_p)
	st.d	$a0, $sp, 192                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Q__align_gapmap.og_t_fg_h_dg_n1_p)
	st.d	$a0, $sp, 184                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Q__align_gapmap.og_t_fg_h_dg_n2_p)
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Q__align_gapmap.fg_t_og_h_dg_n1_p)
	st.d	$a0, $sp, 160                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Q__align_gapmap.fg_t_og_h_dg_n2_p)
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Q__align_gapmap.gapz_n1)
	st.d	$a0, $sp, 168                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Q__align_gapmap.gapz_n2)
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Q__align_gapmap.cpmx1)
	st.d	$a0, $sp, 376                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Q__align_gapmap.cpmx2)
	st.d	$a0, $sp, 360                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Q__align_gapmap.floatwork)
	st.d	$a0, $sp, 224                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(Q__align_gapmap.intwork)
	st.d	$a0, $sp, 216                   # 8-byte Folded Spill
	st.d	$s8, $sp, 464                   # 8-byte Folded Spill
	st.d	$s2, $sp, 472                   # 8-byte Folded Spill
	st.d	$s6, $sp, 456                   # 8-byte Folded Spill
	st.d	$s0, $sp, 128                   # 8-byte Folded Spill
	st.d	$a7, $sp, 416                   # 8-byte Folded Spill
	blt	$s7, $s0, .LBB6_4
# %bb.3:
	bge	$s4, $a7, .LBB6_8
.LBB6_4:
	ori	$a0, $zero, 1
	pcalau12i	$s0, %pc_hi20(Q__align_gapmap.match)
	blt	$s7, $a0, .LBB6_7
# %bb.5:
	blt	$s4, $a0, .LBB6_7
# %bb.6:
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align_gapmap.w1)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align_gapmap.w2)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, %pc_lo12(Q__align_gapmap.match)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 352                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align_gapmap.initverticalw)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align_gapmap.lastverticalw)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align_gapmap.m)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, %pc_lo12(Q__align_gapmap.mp)
	pcaddu18i	$ra, %call36(FreeIntVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, %pc_lo12(Q__align_gapmap.mseq)
	pcaddu18i	$ra, %call36(FreeCharMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 400                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align_gapmap.digf1)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 384                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align_gapmap.digf2)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align_gapmap.diaf1)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align_gapmap.diaf2)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 408                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align_gapmap.gapz1)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 392                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align_gapmap.gapz2)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align_gapmap.gapf1)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 280                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align_gapmap.gapf2)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 448                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align_gapmap.ogcp1g)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 432                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align_gapmap.ogcp2g)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 440                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align_gapmap.fgcp1g)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 424                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align_gapmap.fgcp2g)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 248                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align_gapmap.og_h_dg_n1_p)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align_gapmap.og_h_dg_n2_p)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align_gapmap.fg_h_dg_n1_p)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align_gapmap.fg_h_dg_n2_p)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align_gapmap.og_t_fg_h_dg_n1_p)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align_gapmap.og_t_fg_h_dg_n2_p)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align_gapmap.fg_t_og_h_dg_n1_p)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align_gapmap.fg_t_og_h_dg_n2_p)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align_gapmap.gapz_n1)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align_gapmap.gapz_n2)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 376                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align_gapmap.cpmx1)
	pcaddu18i	$ra, %call36(FreeFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 360                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align_gapmap.cpmx2)
	pcaddu18i	$ra, %call36(FreeFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align_gapmap.floatwork)
	pcaddu18i	$ra, %call36(FreeFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align_gapmap.intwork)
	pcaddu18i	$ra, %call36(FreeIntMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 288                   # 8-byte Folded Reload
	ld.w	$s7, $a0, %pc_lo12(Q__align_gapmap.orlgth1)
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ld.w	$s4, $a0, %pc_lo12(Q__align_gapmap.orlgth2)
.LBB6_7:
	pcalau12i	$a0, %pc_hi20(.LCPI6_0)
	fld.d	$fa0, $a0, %pc_lo12(.LCPI6_0)
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	movgr2fr.w	$fa1, $a0
	ffint.d.w	$fa1, $fa1
	fmul.d	$fa1, $fa1, $fa0
	ftintrz.w.d	$fa1, $fa1
	movfr2gr.s	$a0, $fa1
	slt	$a1, $a0, $s7
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s7, $a1
	or	$s7, $a1, $a0
	addi.w	$s2, $s7, 100
	ld.d	$a0, $sp, 344                   # 8-byte Folded Reload
	movgr2fr.w	$fa1, $a0
	ffint.d.w	$fa1, $fa1
	fmul.d	$fa0, $fa1, $fa0
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a0, $fa0
	slt	$a1, $a0, $s4
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s4, $a1
	or	$s4, $a1, $a0
	addi.w	$s8, $s4, 100
	addi.w	$s1, $s4, 102
	move	$a0, $s1
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align_gapmap.w1)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 264                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align_gapmap.w2)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $s0, %pc_lo12(Q__align_gapmap.match)
	addi.w	$s6, $s7, 102
	move	$a0, $s6
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 352                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align_gapmap.initverticalw)
	move	$a0, $s6
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align_gapmap.lastverticalw)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 240                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align_gapmap.m)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(AllocateIntVec)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(njob)
	ld.d	$a1, $a1, %got_pc_lo12(njob)
	ld.w	$a2, $a1, 0
	st.d	$a0, $s5, %pc_lo12(Q__align_gapmap.mp)
	add.w	$a1, $s8, $s2
	move	$a0, $a2
	pcaddu18i	$ra, %call36(AllocateCharMtx)
	jirl	$ra, $ra, 0
	st.d	$a0, $s3, %pc_lo12(Q__align_gapmap.mseq)
	move	$a0, $s6
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 400                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align_gapmap.digf1)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 384                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align_gapmap.digf2)
	move	$a0, $s6
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align_gapmap.diaf1)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 208                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align_gapmap.diaf2)
	move	$a0, $s6
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 408                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align_gapmap.gapz1)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 392                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align_gapmap.gapz2)
	move	$a0, $s6
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 272                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align_gapmap.gapf1)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 280                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align_gapmap.gapf2)
	move	$a0, $s6
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 448                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align_gapmap.ogcp1g)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 432                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align_gapmap.ogcp2g)
	move	$a0, $s6
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 440                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align_gapmap.fgcp1g)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 424                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align_gapmap.fgcp2g)
	move	$a0, $s6
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align_gapmap.og_h_dg_n1_p)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 200                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align_gapmap.og_h_dg_n2_p)
	move	$a0, $s6
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align_gapmap.fg_h_dg_n1_p)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 192                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align_gapmap.fg_h_dg_n2_p)
	move	$a0, $s6
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 184                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align_gapmap.og_t_fg_h_dg_n1_p)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align_gapmap.og_t_fg_h_dg_n2_p)
	move	$a0, $s6
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align_gapmap.fg_t_og_h_dg_n1_p)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align_gapmap.fg_t_og_h_dg_n2_p)
	move	$a0, $s6
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align_gapmap.gapz_n1)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align_gapmap.gapz_n2)
	ori	$a0, $zero, 26
	move	$a1, $s6
	pcaddu18i	$ra, %call36(AllocateFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 376                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align_gapmap.cpmx1)
	ori	$a0, $zero, 26
	move	$a1, $s1
	pcaddu18i	$ra, %call36(AllocateFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 360                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align_gapmap.cpmx2)
	slt	$a0, $s8, $s2
	masknez	$a1, $s8, $a0
	maskeqz	$a0, $s2, $a0
	or	$a0, $a0, $a1
	addi.w	$s1, $a0, 2
	ori	$a1, $zero, 26
	move	$a0, $s1
	pcaddu18i	$ra, %call36(AllocateFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align_gapmap.floatwork)
	ori	$a1, $zero, 27
	move	$a0, $s1
	pcaddu18i	$ra, %call36(AllocateIntMtx)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(Q__align_gapmap.intwork)
	ld.d	$a0, $sp, 288                   # 8-byte Folded Reload
	st.w	$s7, $a0, %pc_lo12(Q__align_gapmap.orlgth1)
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	st.w	$s4, $a0, %pc_lo12(Q__align_gapmap.orlgth2)
	ld.d	$s8, $sp, 464                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 472                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 456                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 416                   # 8-byte Folded Reload
.LBB6_8:
	ori	$a0, $zero, 1
	ld.d	$a6, $sp, 256                   # 8-byte Folded Reload
	blt	$s2, $a0, .LBB6_11
# %bb.9:                                # %.lr.ph
	ld.d	$a1, $s3, %pc_lo12(Q__align_gapmap.mseq)
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(Q__align_gapmap.mseq1)
	move	$a3, $s2
	.p2align	4, , 16
.LBB6_10:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a5, $a1, 0
	st.d	$a5, $a2, 0
	ld.d	$a5, $s6, 0
	stx.b	$zero, $a5, $s0
	addi.d	$s6, $s6, 8
	addi.d	$a2, $a2, 8
	addi.d	$a3, $a3, -1
	addi.d	$a1, $a1, 8
	bnez	$a3, .LBB6_10
.LBB6_11:                               # %.preheader561
	blt	$s8, $a0, .LBB6_14
# %bb.12:                               # %.lr.ph564
	ld.d	$a1, $s3, %pc_lo12(Q__align_gapmap.mseq)
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align_gapmap.mseq2)
	alsl.d	$a1, $s2, $a1, 3
	move	$a2, $s8
	move	$a3, $a6
	.p2align	4, , 16
.LBB6_13:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a4, $a1, 0
	st.d	$a4, $a0, 0
	ld.d	$a4, $a3, 0
	stx.b	$zero, $a4, $a7
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
	ld.d	$a3, $fp, 8
	ld.w	$a1, $s0, 0
	ld.w	$a0, $s1, 0
	ld.d	$a2, $sp, 64                    # 8-byte Folded Reload
	movgr2fr.w	$fs0, $a2
	st.d	$s5, $sp, 56                    # 8-byte Folded Spill
	st.d	$a3, $sp, 368                   # 8-byte Folded Spill
	blt	$a1, $s7, .LBB6_17
# %bb.15:                               # %._crit_edge
	blt	$a0, $s4, .LBB6_17
# %bb.16:                               # %._crit_edge705
	pcalau12i	$a0, %got_pc_hi20(commonIP)
	ld.d	$a0, $a0, %got_pc_lo12(commonIP)
	ld.d	$a0, $a0, 0
	b	.LBB6_21
.LBB6_17:
	beqz	$a1, .LBB6_20
# %bb.18:
	beqz	$a0, .LBB6_20
# %bb.19:
	pcalau12i	$a0, %got_pc_hi20(commonIP)
	ld.d	$a0, $a0, %got_pc_lo12(commonIP)
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(FreeIntMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 288                   # 8-byte Folded Reload
	ld.w	$s7, $a0, %pc_lo12(Q__align_gapmap.orlgth1)
	ld.w	$a1, $s0, 0
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ld.w	$s4, $a0, %pc_lo12(Q__align_gapmap.orlgth2)
	ld.w	$a0, $s1, 0
.LBB6_20:
	slt	$a2, $a1, $s7
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $s7, $a2
	or	$s2, $a2, $a1
	slt	$a1, $a0, $s4
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s4, $a1
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
	ld.d	$s2, $sp, 472                   # 8-byte Folded Reload
.LBB6_21:
	ld.d	$a1, $sp, 376                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(Q__align_gapmap.cpmx1)
	ffint.s.w	$fa0, $fs0
	xvst	$xr0, $sp, 288                  # 32-byte Folded Spill
	pcalau12i	$a2, %pc_hi20(Q__align_gapmap.ijp)
	st.d	$a2, $sp, 64                    # 8-byte Folded Spill
	st.d	$a0, $a2, %pc_lo12(Q__align_gapmap.ijp)
	ld.d	$a0, $sp, 456                   # 8-byte Folded Reload
	move	$s3, $a0
	ld.d	$s4, $sp, 112                   # 8-byte Folded Reload
	move	$a2, $s4
	ld.d	$s1, $sp, 128                   # 8-byte Folded Reload
	move	$a3, $s1
	move	$a4, $s2
	pcaddu18i	$ra, %call36(cpmx_calc_new)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 360                   # 8-byte Folded Reload
	ld.d	$a1, $a0, %pc_lo12(Q__align_gapmap.cpmx2)
	ld.d	$s0, $sp, 256                   # 8-byte Folded Reload
	move	$a0, $s0
	ld.d	$s6, $sp, 120                   # 8-byte Folded Reload
	move	$a2, $s6
	ld.d	$a3, $sp, 416                   # 8-byte Folded Reload
	move	$a4, $s8
	pcaddu18i	$ra, %call36(cpmx_calc_new)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 448                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align_gapmap.ogcp1g)
	ld.d	$s7, $sp, 368                   # 8-byte Folded Reload
	beqz	$s7, .LBB6_23
# %bb.22:
	ld.d	$a1, $fp, 32
	st.d	$a1, $sp, 24                    # 8-byte Folded Spill
	ld.d	$s5, $fp, 24
	ld.d	$a1, $fp, 16
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	move	$a1, $s2
	move	$s1, $s3
	move	$a2, $s3
	move	$a3, $s4
	ld.d	$a4, $sp, 128                   # 8-byte Folded Reload
	move	$a5, $s7
	move	$a6, $s5
	pcaddu18i	$ra, %call36(new_OpeningGapCount_zure)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 432                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align_gapmap.ogcp2g)
	move	$a1, $s8
	move	$s7, $s0
	move	$a2, $s0
	move	$a3, $s6
	move	$s3, $s6
	ld.d	$a4, $sp, 416                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 32                    # 8-byte Folded Reload
	move	$a5, $s0
	ld.d	$s6, $sp, 24                    # 8-byte Folded Reload
	move	$a6, $s6
	pcaddu18i	$ra, %call36(new_OpeningGapCount_zure)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 440                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align_gapmap.fgcp1g)
	move	$a1, $s2
	move	$a2, $s1
	move	$a3, $s4
	ld.d	$a4, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 368                   # 8-byte Folded Reload
	move	$a6, $s5
	pcaddu18i	$ra, %call36(new_FinalGapCount_zure)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 424                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align_gapmap.fgcp2g)
	move	$a1, $s8
	move	$a2, $s7
	move	$a3, $s3
	ld.d	$a4, $sp, 416                   # 8-byte Folded Reload
	move	$a5, $s0
	move	$s3, $s1
	move	$s4, $s0
	move	$a6, $s6
	move	$s1, $s6
	pcaddu18i	$ra, %call36(new_FinalGapCount_zure)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 400                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align_gapmap.digf1)
	move	$a1, $s2
	move	$a2, $s3
	ld.d	$s3, $sp, 112                   # 8-byte Folded Reload
	move	$a3, $s3
	ld.d	$a4, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 368                   # 8-byte Folded Reload
	move	$a5, $s7
	move	$a6, $s5
	pcaddu18i	$ra, %call36(getdigapfreq_part)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 384                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align_gapmap.digf2)
	move	$a1, $s8
	ld.d	$s0, $sp, 256                   # 8-byte Folded Reload
	move	$a2, $s0
	ld.d	$s6, $sp, 120                   # 8-byte Folded Reload
	move	$a3, $s6
	ld.d	$a4, $sp, 416                   # 8-byte Folded Reload
	move	$a5, $s4
	move	$a6, $s1
	move	$s4, $s1
	pcaddu18i	$ra, %call36(getdigapfreq_part)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align_gapmap.diaf1)
	move	$a1, $s2
	ld.d	$s1, $sp, 456                   # 8-byte Folded Reload
	move	$a2, $s1
	move	$a3, $s3
	ld.d	$a4, $sp, 128                   # 8-byte Folded Reload
	move	$a5, $s7
	move	$a6, $s5
	ld.d	$s5, $sp, 416                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(getdiaminofreq_part)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align_gapmap.diaf2)
	move	$a1, $s8
	move	$a2, $s0
	move	$a3, $s6
	move	$a4, $s5
	ld.d	$a5, $sp, 32                    # 8-byte Folded Reload
	move	$a6, $s4
	ld.d	$s4, $sp, 128                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(getdiaminofreq_part)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align_gapmap.gapf1)
	move	$a1, $s2
	move	$a2, $s1
	move	$a3, $s3
	move	$a4, $s4
	pcaddu18i	$ra, %call36(getgapfreq)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 280                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align_gapmap.gapf2)
	move	$a1, $s8
	move	$a2, $s0
	move	$a3, $s6
	move	$a4, $s5
	pcaddu18i	$ra, %call36(getgapfreq)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 408                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align_gapmap.gapz1)
	move	$a1, $s2
	move	$a2, $s1
	move	$s1, $s4
	move	$a3, $s3
	move	$a4, $s4
	move	$a5, $s7
	pcaddu18i	$ra, %call36(getgapfreq_zure_part)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 392                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align_gapmap.gapz2)
	move	$a1, $s8
	move	$a2, $s0
	move	$a3, $s6
	move	$a4, $s5
	move	$a5, $s7
	pcaddu18i	$ra, %call36(getgapfreq_zure_part)
	jirl	$ra, $ra, 0
	b	.LBB6_24
.LBB6_23:
	move	$a1, $s2
	move	$a2, $s3
	move	$a3, $s4
	move	$a4, $s1
	pcaddu18i	$ra, %call36(st_OpeningGapCount)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 432                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align_gapmap.ogcp2g)
	move	$a1, $s8
	move	$a2, $s0
	move	$a3, $s6
	ld.d	$s5, $sp, 416                   # 8-byte Folded Reload
	move	$a4, $s5
	pcaddu18i	$ra, %call36(st_OpeningGapCount)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 440                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align_gapmap.fgcp1g)
	move	$a1, $s2
	move	$a2, $s3
	move	$a3, $s4
	move	$a4, $s1
	pcaddu18i	$ra, %call36(st_FinalGapCount_zure)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 424                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align_gapmap.fgcp2g)
	move	$a1, $s8
	move	$a2, $s0
	move	$a3, $s6
	move	$a4, $s5
	pcaddu18i	$ra, %call36(st_FinalGapCount_zure)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 400                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align_gapmap.digf1)
	move	$a1, $s2
	move	$a2, $s3
	move	$a3, $s4
	move	$a4, $s1
	pcaddu18i	$ra, %call36(getdigapfreq_st)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 384                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align_gapmap.digf2)
	move	$a1, $s8
	move	$a2, $s0
	move	$a3, $s6
	move	$a4, $s5
	pcaddu18i	$ra, %call36(getdigapfreq_st)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align_gapmap.diaf1)
	move	$a1, $s2
	move	$a2, $s3
	move	$a3, $s4
	move	$a4, $s1
	pcaddu18i	$ra, %call36(getdiaminofreq_x)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align_gapmap.diaf2)
	move	$a1, $s8
	move	$a2, $s0
	move	$a3, $s6
	move	$a4, $s5
	pcaddu18i	$ra, %call36(getdiaminofreq_x)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align_gapmap.gapf1)
	move	$a1, $s2
	move	$a2, $s3
	move	$a3, $s4
	move	$a4, $s1
	pcaddu18i	$ra, %call36(getgapfreq)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 280                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align_gapmap.gapf2)
	move	$a1, $s8
	move	$a2, $s0
	move	$a3, $s6
	move	$a4, $s5
	pcaddu18i	$ra, %call36(getgapfreq)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 408                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align_gapmap.gapz1)
	move	$a1, $s2
	move	$a2, $s3
	move	$a3, $s4
	move	$a4, $s1
	pcaddu18i	$ra, %call36(getgapfreq_zure)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 392                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align_gapmap.gapz2)
	move	$a1, $s8
	move	$a2, $s0
	move	$a3, $s6
	move	$a4, $s5
	pcaddu18i	$ra, %call36(getgapfreq_zure)
	jirl	$ra, $ra, 0
.LBB6_24:
	ld.d	$s6, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 72                    # 8-byte Folded Reload
	addi.w	$a0, $zero, -1
	xvld	$xr19, $sp, 288                 # 32-byte Folded Reload
	fcvt.d.s	$fa0, $ft11
	st.d	$a0, $sp, 368                   # 8-byte Folded Spill
	ld.d	$ra, $sp, 416                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 56                    # 8-byte Folded Reload
	blt	$ra, $a0, .LBB6_29
# %bb.25:                               # %.lr.ph567
	ld.d	$a0, $sp, 432                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align_gapmap.ogcp2g)
	ld.d	$a1, $sp, 384                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(Q__align_gapmap.digf2)
	ld.d	$a2, $sp, 200                   # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(Q__align_gapmap.og_h_dg_n2_p)
	ld.d	$a3, $sp, 424                   # 8-byte Folded Reload
	ld.d	$a3, $a3, %pc_lo12(Q__align_gapmap.fgcp2g)
	ld.d	$a4, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a4, $a4, %pc_lo12(Q__align_gapmap.fg_h_dg_n2_p)
	ld.d	$a5, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a5, $a5, %pc_lo12(Q__align_gapmap.og_t_fg_h_dg_n2_p)
	ld.d	$a6, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a6, $a6, %pc_lo12(Q__align_gapmap.fg_t_og_h_dg_n2_p)
	ld.d	$a7, $sp, 392                   # 8-byte Folded Reload
	ld.d	$a7, $a7, %pc_lo12(Q__align_gapmap.gapz2)
	ld.d	$t0, $sp, 144                   # 8-byte Folded Reload
	ld.d	$t0, $t0, %pc_lo12(Q__align_gapmap.gapz_n2)
	ld.d	$t1, $sp, 344                   # 8-byte Folded Reload
	addi.d	$t3, $t1, 2
	bstrpick.d	$t1, $t3, 31, 0
	ori	$t2, $zero, 24
	bgeu	$t1, $t2, .LBB6_46
# %bb.26:
	move	$t2, $zero
.LBB6_27:                               # %scalar.ph.preheader
	slli.d	$t3, $t2, 2
	sub.d	$t1, $t1, $t2
	vldi	$vr1, -912
	vldi	$vr2, -928
	vldi	$vr3, -1168
	.p2align	4, , 16
.LBB6_28:                               # %scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	fldx.s	$fa4, $a0, $t3
	fldx.s	$fa5, $a1, $t3
	fcvt.d.s	$fa4, $fa4
	fsub.d	$fa4, $fa1, $fa4
	fcvt.d.s	$fa5, $fa5
	fsub.d	$fa4, $fa4, $fa5
	fmul.d	$fa4, $fa4, $fa0
	fmul.d	$fa4, $fa4, $fa2
	fcvt.s.d	$fa4, $fa4
	fstx.s	$fa4, $a2, $t3
	fldx.s	$fa4, $a3, $t3
	fldx.s	$fa5, $a1, $t3
	fcvt.d.s	$fa4, $fa4
	fsub.d	$fa4, $fa1, $fa4
	fcvt.d.s	$fa5, $fa5
	fsub.d	$fa4, $fa4, $fa5
	fmul.d	$fa4, $fa4, $fa0
	fmul.d	$fa4, $fa4, $fa2
	fcvt.s.d	$fa4, $fa4
	fstx.s	$fa4, $a4, $t3
	fldx.s	$fa4, $a0, $t3
	fldx.s	$fa5, $a3, $t3
	fcvt.d.s	$fa4, $fa4
	fldx.s	$fa6, $a1, $t3
	fsub.d	$fa4, $fa1, $fa4
	fcvt.d.s	$fa5, $fa5
	fadd.d	$fa4, $fa4, $fa5
	fcvt.d.s	$fa5, $fa6
	fsub.d	$fa4, $fa4, $fa5
	fmul.d	$fa4, $fa4, $fa2
	fmul.d	$fa4, $fa4, $fa0
	fcvt.s.d	$fa4, $fa4
	fstx.s	$fa4, $a5, $t3
	fldx.s	$fa4, $a3, $t3
	fldx.s	$fa5, $a0, $t3
	fcvt.d.s	$fa4, $fa4
	fldx.s	$fa6, $a1, $t3
	fsub.d	$fa4, $fa1, $fa4
	fcvt.d.s	$fa5, $fa5
	fadd.d	$fa4, $fa4, $fa5
	fcvt.d.s	$fa5, $fa6
	fsub.d	$fa4, $fa4, $fa5
	fmul.d	$fa4, $fa4, $fa2
	fmul.d	$fa4, $fa4, $fa0
	fcvt.s.d	$fa4, $fa4
	fstx.s	$fa4, $a6, $t3
	fldx.s	$fa4, $a7, $t3
	fsub.s	$fa4, $fa3, $fa4
	fstx.s	$fa4, $t0, $t3
	addi.d	$t0, $t0, 4
	addi.d	$a7, $a7, 4
	addi.d	$a6, $a6, 4
	addi.d	$a5, $a5, 4
	addi.d	$a4, $a4, 4
	addi.d	$a3, $a3, 4
	addi.d	$a2, $a2, 4
	addi.d	$a1, $a1, 4
	addi.d	$t1, $t1, -1
	addi.d	$a0, $a0, 4
	bnez	$t1, .LBB6_28
.LBB6_29:                               # %._crit_edge568
	ld.d	$a0, $sp, 368                   # 8-byte Folded Reload
	blt	$s1, $a0, .LBB6_34
# %bb.30:                               # %.lr.ph571
	ld.d	$a0, $sp, 448                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(Q__align_gapmap.ogcp1g)
	ld.d	$a1, $sp, 400                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(Q__align_gapmap.digf1)
	ld.d	$a2, $sp, 248                   # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(Q__align_gapmap.og_h_dg_n1_p)
	ld.d	$a3, $sp, 440                   # 8-byte Folded Reload
	ld.d	$a3, $a3, %pc_lo12(Q__align_gapmap.fgcp1g)
	ld.d	$a4, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a4, $a4, %pc_lo12(Q__align_gapmap.fg_h_dg_n1_p)
	ld.d	$a5, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a5, $a5, %pc_lo12(Q__align_gapmap.og_t_fg_h_dg_n1_p)
	ld.d	$a6, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a6, $a6, %pc_lo12(Q__align_gapmap.fg_t_og_h_dg_n1_p)
	ld.d	$a7, $sp, 408                   # 8-byte Folded Reload
	ld.d	$a7, $a7, %pc_lo12(Q__align_gapmap.gapz1)
	ld.d	$t0, $sp, 168                   # 8-byte Folded Reload
	ld.d	$t0, $t0, %pc_lo12(Q__align_gapmap.gapz_n1)
	addi.d	$t3, $s7, 2
	bstrpick.d	$t1, $t3, 31, 0
	ori	$t2, $zero, 24
	bgeu	$t1, $t2, .LBB6_79
# %bb.31:
	move	$t2, $zero
.LBB6_32:                               # %scalar.ph988.preheader
	slli.d	$t3, $t2, 2
	sub.d	$t1, $t1, $t2
	vldi	$vr1, -912
	vldi	$vr2, -928
	vldi	$vr3, -1168
	.p2align	4, , 16
.LBB6_33:                               # %scalar.ph988
                                        # =>This Inner Loop Header: Depth=1
	fldx.s	$fa4, $a0, $t3
	fldx.s	$fa5, $a1, $t3
	fcvt.d.s	$fa4, $fa4
	fsub.d	$fa4, $fa1, $fa4
	fcvt.d.s	$fa5, $fa5
	fsub.d	$fa4, $fa4, $fa5
	fmul.d	$fa4, $fa4, $fa0
	fmul.d	$fa4, $fa4, $fa2
	fcvt.s.d	$fa4, $fa4
	fstx.s	$fa4, $a2, $t3
	fldx.s	$fa4, $a3, $t3
	fldx.s	$fa5, $a1, $t3
	fcvt.d.s	$fa4, $fa4
	fsub.d	$fa4, $fa1, $fa4
	fcvt.d.s	$fa5, $fa5
	fsub.d	$fa4, $fa4, $fa5
	fmul.d	$fa4, $fa4, $fa0
	fmul.d	$fa4, $fa4, $fa2
	fcvt.s.d	$fa4, $fa4
	fstx.s	$fa4, $a4, $t3
	fldx.s	$fa4, $a0, $t3
	fldx.s	$fa5, $a3, $t3
	fcvt.d.s	$fa4, $fa4
	fldx.s	$fa6, $a1, $t3
	fsub.d	$fa4, $fa1, $fa4
	fcvt.d.s	$fa5, $fa5
	fadd.d	$fa4, $fa4, $fa5
	fcvt.d.s	$fa5, $fa6
	fsub.d	$fa4, $fa4, $fa5
	fmul.d	$fa4, $fa4, $fa2
	fmul.d	$fa4, $fa4, $fa0
	fcvt.s.d	$fa4, $fa4
	fstx.s	$fa4, $a5, $t3
	fldx.s	$fa4, $a3, $t3
	fldx.s	$fa5, $a0, $t3
	fcvt.d.s	$fa4, $fa4
	fldx.s	$fa6, $a1, $t3
	fsub.d	$fa4, $fa1, $fa4
	fcvt.d.s	$fa5, $fa5
	fadd.d	$fa4, $fa4, $fa5
	fcvt.d.s	$fa5, $fa6
	fsub.d	$fa4, $fa4, $fa5
	fmul.d	$fa4, $fa4, $fa2
	fmul.d	$fa4, $fa4, $fa0
	fcvt.s.d	$fa4, $fa4
	fstx.s	$fa4, $a6, $t3
	fldx.s	$fa4, $a7, $t3
	fsub.s	$fa4, $fa3, $fa4
	fstx.s	$fa4, $t0, $t3
	addi.d	$t0, $t0, 4
	addi.d	$a7, $a7, 4
	addi.d	$a6, $a6, 4
	addi.d	$a5, $a5, 4
	addi.d	$a4, $a4, 4
	addi.d	$a3, $a3, 4
	addi.d	$a2, $a2, 4
	addi.d	$a1, $a1, 4
	addi.d	$t1, $t1, -1
	addi.d	$a0, $a0, 4
	bnez	$t1, .LBB6_33
.LBB6_34:                               # %._crit_edge572
	pcalau12i	$a0, %got_pc_hi20(RNAscoremtx)
	ld.d	$a1, $a0, %got_pc_lo12(RNAscoremtx)
	ld.d	$a0, $fp, 48
	st.d	$a0, $sp, 280                   # 8-byte Folded Spill
	ld.d	$a0, $fp, 40
	st.d	$a0, $sp, 272                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	ld.d	$t4, $a0, %pc_lo12(Q__align_gapmap.w1)
	st.d	$a1, $sp, 408                   # 8-byte Folded Spill
	ld.bu	$a0, $a1, 0
	ld.d	$a1, $sp, 264                   # 8-byte Folded Reload
	ld.d	$t5, $a1, %pc_lo12(Q__align_gapmap.w2)
	ori	$a1, $zero, 114
	move	$s0, $t4
	move	$s3, $t5
	bne	$a0, $a1, .LBB6_37
# %bb.35:
	beqz	$s1, .LBB6_112
# %bb.36:                               # %.lr.ph.preheader.i
	ld.d	$a0, $sp, 352                   # 8-byte Folded Reload
	ld.d	$s4, $a0, %pc_lo12(Q__align_gapmap.initverticalw)
	slli.d	$a0, $s7, 2
	bstrpick.d	$a0, $a0, 33, 2
	slli.d	$a2, $a0, 2
	move	$a0, $s4
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	b	.LBB6_38
.LBB6_37:
	ld.d	$a0, $sp, 352                   # 8-byte Folded Reload
	ld.d	$s4, $a0, %pc_lo12(Q__align_gapmap.initverticalw)
	ld.d	$a0, $sp, 360                   # 8-byte Folded Reload
	ld.d	$a1, $a0, %pc_lo12(Q__align_gapmap.cpmx2)
	ld.d	$a0, $sp, 376                   # 8-byte Folded Reload
	ld.d	$a2, $a0, %pc_lo12(Q__align_gapmap.cpmx1)
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	ld.d	$a5, $a0, %pc_lo12(Q__align_gapmap.floatwork)
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	ld.d	$a6, $a0, %pc_lo12(Q__align_gapmap.intwork)
	ori	$a7, $zero, 1
	move	$a0, $s4
	move	$a3, $zero
	move	$a4, $s1
	pcaddu18i	$ra, %call36(match_calc)
	jirl	$ra, $ra, 0
.LBB6_38:                               # %clearvec.exit
	ld.d	$ra, $sp, 416                   # 8-byte Folded Reload
	xvld	$xr19, $sp, 288                 # 32-byte Folded Reload
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	move	$t4, $s0
	move	$t5, $s3
	beqz	$a0, .LBB6_45
# %bb.39:
	beqz	$s1, .LBB6_42
# %bb.40:                               # %.lr.ph.i
	ld.d	$a0, $sp, 280                   # 8-byte Folded Reload
	ld.w	$a1, $a0, 0
	pcalau12i	$a0, %pc_hi20(impmtx)
	ld.d	$a0, $a0, %pc_lo12(impmtx)
	slli.d	$a1, $a1, 2
	ld.d	$a3, $sp, 272                   # 8-byte Folded Reload
	move	$a2, $s7
	.p2align	4, , 16
.LBB6_41:                               # =>This Inner Loop Header: Depth=1
	ld.w	$a4, $a3, 0
	slli.d	$a4, $a4, 3
	ldx.d	$a4, $a0, $a4
	fldx.s	$fa0, $a4, $a1
	fld.s	$fa1, $s4, 0
	addi.w	$a2, $a2, -1
	addi.d	$a3, $a3, 4
	addi.d	$a4, $s4, 4
	fadd.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $s4, 0
	move	$s4, $a4
	bnez	$a2, .LBB6_41
.LBB6_42:
	st.d	$zero, $sp, 136                 # 8-byte Folded Spill
	ld.d	$a0, $sp, 408                   # 8-byte Folded Reload
	ld.bu	$a0, $a0, 0
	ori	$a1, $zero, 114
	bne	$a0, $a1, .LBB6_114
.LBB6_43:
	beqz	$ra, .LBB6_119
# %bb.44:                               # %.lr.ph.preheader.i531
	ld.d	$a0, $sp, 344                   # 8-byte Folded Reload
	slli.d	$a0, $a0, 2
	bstrpick.d	$a0, $a0, 33, 2
	slli.d	$a2, $a0, 2
	move	$a0, $t4
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	b	.LBB6_115
.LBB6_45:
	ori	$a0, $zero, 1
	b	.LBB6_113
.LBB6_46:                               # %vector.memcheck
	alsl.d	$s3, $t1, $a2, 2
	alsl.d	$s2, $t1, $a4, 2
	sltu	$t2, $a2, $s2
	sltu	$t4, $a4, $s3
	and	$t4, $t2, $t4
	move	$t2, $zero
	bnez	$t4, .LBB6_295
# %bb.47:                               # %vector.memcheck
	alsl.d	$s1, $t1, $a5, 2
	sltu	$t4, $a2, $s1
	sltu	$t5, $a5, $s3
	and	$t4, $t4, $t5
	bnez	$t4, .LBB6_295
# %bb.48:                               # %vector.memcheck
	alsl.d	$t5, $t1, $a6, 2
	sltu	$t4, $a2, $t5
	sltu	$t6, $a6, $s3
	and	$t4, $t4, $t6
	bnez	$t4, .LBB6_295
# %bb.49:                               # %vector.memcheck
	alsl.d	$t4, $t1, $t0, 2
	sltu	$t6, $a2, $t4
	sltu	$t7, $t0, $s3
	and	$t6, $t6, $t7
	bnez	$t6, .LBB6_295
# %bb.50:                               # %vector.memcheck
	alsl.d	$t6, $t1, $a0, 2
	sltu	$t7, $a2, $t6
	sltu	$t8, $a0, $s3
	and	$t7, $t7, $t8
	bnez	$t7, .LBB6_295
# %bb.51:                               # %vector.memcheck
	alsl.d	$t7, $t1, $a1, 2
	sltu	$t8, $a2, $t7
	sltu	$s0, $a1, $s3
	and	$t8, $t8, $s0
	bnez	$t8, .LBB6_295
# %bb.52:                               # %vector.memcheck
	alsl.d	$t8, $t1, $a3, 2
	sltu	$s0, $a2, $t8
	sltu	$s4, $a3, $s3
	and	$s0, $s0, $s4
	bnez	$s0, .LBB6_295
# %bb.53:                               # %vector.memcheck
	alsl.d	$s0, $t1, $a7, 2
	sltu	$s4, $a2, $s0
	sltu	$s3, $a7, $s3
	and	$s3, $s4, $s3
	bnez	$s3, .LBB6_295
# %bb.54:                               # %vector.memcheck
	sltu	$s3, $a4, $s1
	sltu	$s4, $a5, $s2
	and	$s3, $s3, $s4
	bnez	$s3, .LBB6_295
# %bb.55:                               # %vector.memcheck
	sltu	$s3, $a4, $t5
	sltu	$s4, $a6, $s2
	and	$s3, $s3, $s4
	bnez	$s3, .LBB6_295
# %bb.56:                               # %vector.memcheck
	sltu	$s3, $a4, $t4
	sltu	$s4, $t0, $s2
	and	$s3, $s3, $s4
	bnez	$s3, .LBB6_295
# %bb.57:                               # %vector.memcheck
	sltu	$s3, $a4, $t6
	sltu	$s4, $a0, $s2
	and	$s3, $s3, $s4
	bnez	$s3, .LBB6_295
# %bb.58:                               # %vector.memcheck
	sltu	$s3, $a4, $t7
	sltu	$s4, $a1, $s2
	and	$s3, $s3, $s4
	bnez	$s3, .LBB6_295
# %bb.59:                               # %vector.memcheck
	sltu	$s3, $a4, $t8
	sltu	$s4, $a3, $s2
	and	$s3, $s3, $s4
	bnez	$s3, .LBB6_295
# %bb.60:                               # %vector.memcheck
	sltu	$s3, $a4, $s0
	sltu	$s2, $a7, $s2
	and	$s2, $s3, $s2
	bnez	$s2, .LBB6_295
# %bb.61:                               # %vector.memcheck
	sltu	$s2, $a5, $t5
	sltu	$s3, $a6, $s1
	and	$s2, $s2, $s3
	bnez	$s2, .LBB6_295
# %bb.62:                               # %vector.memcheck
	sltu	$s2, $a5, $t4
	sltu	$s3, $t0, $s1
	and	$s2, $s2, $s3
	bnez	$s2, .LBB6_295
# %bb.63:                               # %vector.memcheck
	sltu	$s2, $a5, $t6
	sltu	$s3, $a0, $s1
	and	$s2, $s2, $s3
	bnez	$s2, .LBB6_295
# %bb.64:                               # %vector.memcheck
	sltu	$s2, $a5, $t7
	sltu	$s3, $a1, $s1
	and	$s2, $s2, $s3
	bnez	$s2, .LBB6_295
# %bb.65:                               # %vector.memcheck
	sltu	$s2, $a5, $t8
	sltu	$s3, $a3, $s1
	and	$s2, $s2, $s3
	bnez	$s2, .LBB6_295
# %bb.66:                               # %vector.memcheck
	sltu	$s2, $a5, $s0
	sltu	$s1, $a7, $s1
	and	$s1, $s2, $s1
	bnez	$s1, .LBB6_295
# %bb.67:                               # %vector.memcheck
	sltu	$s1, $a6, $t4
	sltu	$s2, $t0, $t5
	and	$s1, $s1, $s2
	bnez	$s1, .LBB6_295
# %bb.68:                               # %vector.memcheck
	sltu	$s1, $a6, $t6
	sltu	$s2, $a0, $t5
	and	$s1, $s1, $s2
	bnez	$s1, .LBB6_295
# %bb.69:                               # %vector.memcheck
	sltu	$s1, $a6, $t7
	sltu	$s2, $a1, $t5
	and	$s1, $s1, $s2
	bnez	$s1, .LBB6_295
# %bb.70:                               # %vector.memcheck
	sltu	$s1, $a6, $t8
	sltu	$s2, $a3, $t5
	and	$s1, $s1, $s2
	bnez	$s1, .LBB6_295
# %bb.71:                               # %vector.memcheck
	sltu	$s1, $a6, $s0
	sltu	$t5, $a7, $t5
	and	$t5, $s1, $t5
	ld.d	$s2, $sp, 472                   # 8-byte Folded Reload
	bnez	$t5, .LBB6_297
# %bb.72:                               # %vector.memcheck
	sltu	$t5, $t0, $t6
	sltu	$t6, $a0, $t4
	and	$t5, $t5, $t6
	ld.d	$s1, $sp, 128                   # 8-byte Folded Reload
	bnez	$t5, .LBB6_27
# %bb.73:                               # %vector.memcheck
	sltu	$t5, $t0, $t7
	sltu	$t6, $a1, $t4
	and	$t5, $t5, $t6
	bnez	$t5, .LBB6_27
# %bb.74:                               # %vector.memcheck
	sltu	$t5, $t0, $t8
	sltu	$t6, $a3, $t4
	and	$t5, $t5, $t6
	bnez	$t5, .LBB6_27
# %bb.75:                               # %vector.memcheck
	sltu	$t5, $t0, $s0
	sltu	$t4, $a7, $t4
	and	$t4, $t5, $t4
	bnez	$t4, .LBB6_27
# %bb.76:                               # %vector.ph
	bstrpick.d	$t2, $t3, 31, 3
	slli.d	$t2, $t2, 3
	xvreplve0.d	$xr1, $xr0
	lu52i.d	$t3, $zero, 1023
	xvreplgr2vr.d	$xr2, $t3
	lu52i.d	$t3, $zero, 1022
	xvreplgr2vr.d	$xr3, $t3
	lu12i.w	$t3, 260096
	xvreplgr2vr.w	$xr4, $t3
	move	$t3, $a0
	move	$t4, $a1
	move	$t5, $a2
	move	$t6, $a3
	move	$t7, $a4
	move	$t8, $a5
	move	$s1, $a6
	move	$s3, $a7
	move	$s4, $t0
	move	$s5, $t2
	.p2align	4, , 16
.LBB6_77:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr5, $t3, 0
	xvst	$xr5, $sp, 768
	vld	$vr6, $sp, 784
	vreplvei.w	$vr5, $vr6, 0
	fcvt.d.s	$fa5, $fa5
	movfr2gr.d	$s0, $fa5
	vreplvei.w	$vr5, $vr6, 1
	fcvt.d.s	$fa7, $fa5
	xvinsgr2vr.d	$xr5, $s0, 0
	movfr2gr.d	$s0, $fa7
	vreplvei.w	$vr7, $vr6, 2
	fcvt.d.s	$fa7, $fa7
	xvinsgr2vr.d	$xr5, $s0, 1
	movfr2gr.d	$s0, $fa7
	vld	$vr7, $sp, 768
	vreplvei.w	$vr6, $vr6, 3
	fcvt.d.s	$fa6, $fa6
	xvinsgr2vr.d	$xr5, $s0, 2
	movfr2gr.d	$s0, $fa6
	vreplvei.w	$vr6, $vr7, 0
	fcvt.d.s	$fa6, $fa6
	xvinsgr2vr.d	$xr5, $s0, 3
	movfr2gr.d	$s0, $fa6
	vreplvei.w	$vr6, $vr7, 1
	fcvt.d.s	$ft0, $fa6
	xvinsgr2vr.d	$xr6, $s0, 0
	movfr2gr.d	$s0, $ft0
	vreplvei.w	$vr8, $vr7, 2
	fcvt.d.s	$ft0, $ft0
	xvld	$xr9, $t4, 0
	xvinsgr2vr.d	$xr6, $s0, 1
	movfr2gr.d	$s0, $ft0
	vreplvei.w	$vr7, $vr7, 3
	fcvt.d.s	$fa7, $fa7
	xvst	$xr9, $sp, 800
	vld	$vr8, $sp, 800
	xvinsgr2vr.d	$xr6, $s0, 2
	movfr2gr.d	$s0, $fa7
	xvinsgr2vr.d	$xr6, $s0, 3
	xvfsub.d	$xr9, $xr2, $xr6
	vreplvei.w	$vr7, $vr8, 0
	fcvt.d.s	$fa7, $fa7
	xvfsub.d	$xr10, $xr2, $xr5
	movfr2gr.d	$s0, $fa7
	vreplvei.w	$vr7, $vr8, 1
	fcvt.d.s	$ft3, $fa7
	xvinsgr2vr.d	$xr7, $s0, 0
	movfr2gr.d	$s0, $ft3
	vreplvei.w	$vr11, $vr8, 2
	fcvt.d.s	$ft3, $ft3
	xvinsgr2vr.d	$xr7, $s0, 1
	movfr2gr.d	$s0, $ft3
	vld	$vr11, $sp, 816
	vreplvei.w	$vr8, $vr8, 3
	fcvt.d.s	$ft0, $ft0
	xvinsgr2vr.d	$xr7, $s0, 2
	movfr2gr.d	$s0, $ft0
	vreplvei.w	$vr8, $vr11, 0
	fcvt.d.s	$ft0, $ft0
	xvinsgr2vr.d	$xr7, $s0, 3
	movfr2gr.d	$s0, $ft0
	vreplvei.w	$vr8, $vr11, 1
	fcvt.d.s	$ft4, $ft0
	xvinsgr2vr.d	$xr8, $s0, 0
	movfr2gr.d	$s0, $ft4
	vreplvei.w	$vr12, $vr11, 2
	fcvt.d.s	$ft4, $ft4
	xvinsgr2vr.d	$xr8, $s0, 1
	movfr2gr.d	$s0, $ft4
	vreplvei.w	$vr11, $vr11, 3
	fcvt.d.s	$ft3, $ft3
	xvinsgr2vr.d	$xr8, $s0, 2
	movfr2gr.d	$s0, $ft3
	xvinsgr2vr.d	$xr8, $s0, 3
	xvfsub.d	$xr11, $xr10, $xr8
	xvfsub.d	$xr12, $xr9, $xr7
	xvfmul.d	$xr12, $xr12, $xr1
	xvfmul.d	$xr11, $xr11, $xr1
	xvfmul.d	$xr11, $xr11, $xr3
	xvfmul.d	$xr12, $xr12, $xr3
	xvpickve2gr.d	$s0, $xr12, 0
	movgr2fr.d	$ft5, $s0
	fcvt.s.d	$ft5, $ft5
	xvpickve2gr.d	$s0, $xr12, 1
	movgr2fr.d	$ft6, $s0
	movfr2gr.s	$s0, $ft5
	fcvt.s.d	$ft5, $ft6
	xvinsgr2vr.w	$xr14, $s0, 0
	movfr2gr.s	$s0, $ft5
	xvinsgr2vr.w	$xr14, $s0, 1
	xvpickve2gr.d	$s0, $xr12, 2
	movgr2fr.d	$ft5, $s0
	fcvt.s.d	$ft5, $ft5
	xvpickve2gr.d	$s0, $xr12, 3
	movgr2fr.d	$ft4, $s0
	movfr2gr.s	$s0, $ft5
	fcvt.s.d	$ft4, $ft4
	xvinsgr2vr.w	$xr14, $s0, 2
	movfr2gr.s	$s0, $ft4
	xvinsgr2vr.w	$xr14, $s0, 3
	xvpickve2gr.d	$s0, $xr11, 0
	movgr2fr.d	$ft4, $s0
	fcvt.s.d	$ft4, $ft4
	xvpickve2gr.d	$s0, $xr11, 1
	movgr2fr.d	$ft5, $s0
	movfr2gr.s	$s0, $ft4
	fcvt.s.d	$ft4, $ft5
	xvinsgr2vr.w	$xr14, $s0, 4
	movfr2gr.s	$s0, $ft4
	xvinsgr2vr.w	$xr14, $s0, 5
	xvpickve2gr.d	$s0, $xr11, 2
	movgr2fr.d	$ft4, $s0
	fcvt.s.d	$ft4, $ft4
	xvpickve2gr.d	$s0, $xr11, 3
	movgr2fr.d	$ft3, $s0
	movfr2gr.s	$s0, $ft4
	fcvt.s.d	$ft3, $ft3
	xvld	$xr12, $t6, 0
	xvinsgr2vr.w	$xr14, $s0, 6
	movfr2gr.s	$s0, $ft3
	xvinsgr2vr.w	$xr14, $s0, 7
	xvst	$xr14, $t5, 0
	xvst	$xr12, $sp, 832
	vld	$vr11, $sp, 848
	vreplvei.w	$vr12, $vr11, 0
	fcvt.d.s	$ft4, $ft4
	movfr2gr.d	$s0, $ft4
	vreplvei.w	$vr12, $vr11, 1
	fcvt.d.s	$ft4, $ft4
	xvinsgr2vr.d	$xr13, $s0, 0
	movfr2gr.d	$s0, $ft4
	vreplvei.w	$vr12, $vr11, 2
	fcvt.d.s	$ft4, $ft4
	xvinsgr2vr.d	$xr13, $s0, 1
	movfr2gr.d	$s0, $ft4
	vreplvei.w	$vr11, $vr11, 3
	fcvt.d.s	$ft3, $ft3
	vld	$vr12, $sp, 832
	xvinsgr2vr.d	$xr13, $s0, 2
	movfr2gr.d	$s0, $ft3
	xvinsgr2vr.d	$xr13, $s0, 3
	xvfsub.d	$xr11, $xr2, $xr13
	vreplvei.w	$vr14, $vr12, 0
	fcvt.d.s	$ft6, $ft6
	xvfsub.d	$xr15, $xr11, $xr8
	movfr2gr.d	$s0, $ft6
	vreplvei.w	$vr14, $vr12, 1
	fcvt.d.s	$ft8, $ft6
	xvinsgr2vr.d	$xr14, $s0, 0
	movfr2gr.d	$s0, $ft8
	vreplvei.w	$vr16, $vr12, 2
	fcvt.d.s	$ft8, $ft8
	xvinsgr2vr.d	$xr14, $s0, 1
	movfr2gr.d	$s0, $ft8
	vreplvei.w	$vr12, $vr12, 3
	fcvt.d.s	$ft4, $ft4
	xvinsgr2vr.d	$xr14, $s0, 2
	movfr2gr.d	$s0, $ft4
	xvinsgr2vr.d	$xr14, $s0, 3
	xvfsub.d	$xr12, $xr2, $xr14
	xvfsub.d	$xr16, $xr12, $xr7
	xvfmul.d	$xr16, $xr16, $xr1
	xvfmul.d	$xr15, $xr15, $xr1
	xvfmul.d	$xr15, $xr15, $xr3
	xvfmul.d	$xr16, $xr16, $xr3
	xvpickve2gr.d	$s0, $xr16, 0
	movgr2fr.d	$ft9, $s0
	fcvt.s.d	$ft9, $ft9
	xvpickve2gr.d	$s0, $xr16, 1
	movgr2fr.d	$ft10, $s0
	movfr2gr.s	$s0, $ft9
	fcvt.s.d	$ft9, $ft10
	xvinsgr2vr.w	$xr18, $s0, 0
	movfr2gr.s	$s0, $ft9
	xvinsgr2vr.w	$xr18, $s0, 1
	xvpickve2gr.d	$s0, $xr16, 2
	movgr2fr.d	$ft9, $s0
	fcvt.s.d	$ft9, $ft9
	xvpickve2gr.d	$s0, $xr16, 3
	movgr2fr.d	$ft8, $s0
	movfr2gr.s	$s0, $ft9
	fcvt.s.d	$ft8, $ft8
	xvinsgr2vr.w	$xr18, $s0, 2
	movfr2gr.s	$s0, $ft8
	xvinsgr2vr.w	$xr18, $s0, 3
	xvpickve2gr.d	$s0, $xr15, 0
	movgr2fr.d	$ft8, $s0
	fcvt.s.d	$ft8, $ft8
	xvpickve2gr.d	$s0, $xr15, 1
	movgr2fr.d	$ft9, $s0
	movfr2gr.s	$s0, $ft8
	fcvt.s.d	$ft8, $ft9
	xvinsgr2vr.w	$xr18, $s0, 4
	movfr2gr.s	$s0, $ft8
	xvinsgr2vr.w	$xr18, $s0, 5
	xvpickve2gr.d	$s0, $xr15, 2
	movgr2fr.d	$ft8, $s0
	fcvt.s.d	$ft8, $ft8
	xvpickve2gr.d	$s0, $xr15, 3
	movgr2fr.d	$ft7, $s0
	movfr2gr.s	$s0, $ft8
	fcvt.s.d	$ft7, $ft7
	xvinsgr2vr.w	$xr18, $s0, 6
	movfr2gr.s	$s0, $ft7
	xvinsgr2vr.w	$xr18, $s0, 7
	xvst	$xr18, $t7, 0
	xvfadd.d	$xr9, $xr9, $xr14
	xvfadd.d	$xr10, $xr10, $xr13
	xvfsub.d	$xr10, $xr10, $xr8
	xvfsub.d	$xr9, $xr9, $xr7
	xvfmul.d	$xr9, $xr9, $xr3
	xvfmul.d	$xr10, $xr10, $xr3
	xvfmul.d	$xr10, $xr10, $xr1
	xvfmul.d	$xr9, $xr9, $xr1
	xvpickve2gr.d	$s0, $xr9, 0
	movgr2fr.d	$ft5, $s0
	fcvt.s.d	$ft5, $ft5
	xvpickve2gr.d	$s0, $xr9, 1
	movgr2fr.d	$ft6, $s0
	movfr2gr.s	$s0, $ft5
	fcvt.s.d	$ft5, $ft6
	xvinsgr2vr.w	$xr14, $s0, 0
	movfr2gr.s	$s0, $ft5
	xvinsgr2vr.w	$xr14, $s0, 1
	xvpickve2gr.d	$s0, $xr9, 2
	movgr2fr.d	$ft5, $s0
	fcvt.s.d	$ft5, $ft5
	xvpickve2gr.d	$s0, $xr9, 3
	movgr2fr.d	$ft1, $s0
	movfr2gr.s	$s0, $ft5
	fcvt.s.d	$ft1, $ft1
	xvinsgr2vr.w	$xr14, $s0, 2
	movfr2gr.s	$s0, $ft1
	xvinsgr2vr.w	$xr14, $s0, 3
	xvpickve2gr.d	$s0, $xr10, 0
	movgr2fr.d	$ft1, $s0
	fcvt.s.d	$ft1, $ft1
	xvpickve2gr.d	$s0, $xr10, 1
	movgr2fr.d	$ft5, $s0
	movfr2gr.s	$s0, $ft1
	fcvt.s.d	$ft1, $ft5
	xvinsgr2vr.w	$xr14, $s0, 4
	movfr2gr.s	$s0, $ft1
	xvinsgr2vr.w	$xr14, $s0, 5
	xvpickve2gr.d	$s0, $xr10, 2
	movgr2fr.d	$ft1, $s0
	fcvt.s.d	$ft1, $ft1
	xvpickve2gr.d	$s0, $xr10, 3
	movgr2fr.d	$ft2, $s0
	movfr2gr.s	$s0, $ft1
	fcvt.s.d	$ft1, $ft2
	xvinsgr2vr.w	$xr14, $s0, 6
	movfr2gr.s	$s0, $ft1
	xvinsgr2vr.w	$xr14, $s0, 7
	xvst	$xr14, $t8, 0
	xvfadd.d	$xr6, $xr12, $xr6
	xvfadd.d	$xr5, $xr11, $xr5
	xvfsub.d	$xr5, $xr5, $xr8
	xvfsub.d	$xr6, $xr6, $xr7
	xvfmul.d	$xr6, $xr6, $xr3
	xvfmul.d	$xr5, $xr5, $xr3
	xvfmul.d	$xr5, $xr5, $xr1
	xvfmul.d	$xr6, $xr6, $xr1
	xvpickve2gr.d	$s0, $xr6, 0
	movgr2fr.d	$fa7, $s0
	fcvt.s.d	$fa7, $fa7
	xvpickve2gr.d	$s0, $xr6, 1
	movgr2fr.d	$ft0, $s0
	movfr2gr.s	$s0, $fa7
	fcvt.s.d	$fa7, $ft0
	xvinsgr2vr.w	$xr8, $s0, 0
	movfr2gr.s	$s0, $fa7
	xvinsgr2vr.w	$xr8, $s0, 1
	xvpickve2gr.d	$s0, $xr6, 2
	movgr2fr.d	$fa7, $s0
	fcvt.s.d	$fa7, $fa7
	xvpickve2gr.d	$s0, $xr6, 3
	movgr2fr.d	$fa6, $s0
	movfr2gr.s	$s0, $fa7
	fcvt.s.d	$fa6, $fa6
	xvinsgr2vr.w	$xr8, $s0, 2
	movfr2gr.s	$s0, $fa6
	xvinsgr2vr.w	$xr8, $s0, 3
	xvpickve2gr.d	$s0, $xr5, 0
	movgr2fr.d	$fa6, $s0
	fcvt.s.d	$fa6, $fa6
	xvpickve2gr.d	$s0, $xr5, 1
	movgr2fr.d	$fa7, $s0
	movfr2gr.s	$s0, $fa6
	fcvt.s.d	$fa6, $fa7
	xvinsgr2vr.w	$xr8, $s0, 4
	movfr2gr.s	$s0, $fa6
	xvinsgr2vr.w	$xr8, $s0, 5
	xvpickve2gr.d	$s0, $xr5, 2
	movgr2fr.d	$fa6, $s0
	fcvt.s.d	$fa6, $fa6
	xvpickve2gr.d	$s0, $xr5, 3
	movgr2fr.d	$fa5, $s0
	movfr2gr.s	$s0, $fa6
	fcvt.s.d	$fa5, $fa5
	xvld	$xr6, $s3, 0
	xvinsgr2vr.w	$xr8, $s0, 6
	movfr2gr.s	$s0, $fa5
	xvinsgr2vr.w	$xr8, $s0, 7
	xvst	$xr8, $s1, 0
	xvfsub.s	$xr5, $xr4, $xr6
	xvst	$xr5, $s4, 0
	addi.d	$s5, $s5, -8
	addi.d	$s4, $s4, 32
	addi.d	$s3, $s3, 32
	addi.d	$s1, $s1, 32
	addi.d	$t8, $t8, 32
	addi.d	$t7, $t7, 32
	addi.d	$t6, $t6, 32
	addi.d	$t5, $t5, 32
	addi.d	$t4, $t4, 32
	addi.d	$t3, $t3, 32
	bnez	$s5, .LBB6_77
# %bb.78:                               # %middle.block
	ld.d	$s1, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 56                    # 8-byte Folded Reload
	bne	$t1, $t2, .LBB6_27
	b	.LBB6_29
.LBB6_79:                               # %vector.memcheck859
	alsl.d	$s3, $t1, $a2, 2
	alsl.d	$s2, $t1, $a4, 2
	sltu	$t2, $a2, $s2
	sltu	$t4, $a4, $s3
	and	$t4, $t2, $t4
	move	$t2, $zero
	bnez	$t4, .LBB6_296
# %bb.80:                               # %vector.memcheck859
	alsl.d	$s1, $t1, $a5, 2
	sltu	$t4, $a2, $s1
	sltu	$t5, $a5, $s3
	and	$t4, $t4, $t5
	bnez	$t4, .LBB6_296
# %bb.81:                               # %vector.memcheck859
	alsl.d	$t5, $t1, $a6, 2
	sltu	$t4, $a2, $t5
	sltu	$t6, $a6, $s3
	and	$t4, $t4, $t6
	bnez	$t4, .LBB6_296
# %bb.82:                               # %vector.memcheck859
	alsl.d	$t4, $t1, $t0, 2
	sltu	$t6, $a2, $t4
	sltu	$t7, $t0, $s3
	and	$t6, $t6, $t7
	bnez	$t6, .LBB6_296
# %bb.83:                               # %vector.memcheck859
	alsl.d	$t6, $t1, $a0, 2
	sltu	$t7, $a2, $t6
	sltu	$t8, $a0, $s3
	and	$t7, $t7, $t8
	bnez	$t7, .LBB6_296
# %bb.84:                               # %vector.memcheck859
	alsl.d	$t7, $t1, $a1, 2
	sltu	$t8, $a2, $t7
	sltu	$s0, $a1, $s3
	and	$t8, $t8, $s0
	bnez	$t8, .LBB6_296
# %bb.85:                               # %vector.memcheck859
	alsl.d	$t8, $t1, $a3, 2
	sltu	$s0, $a2, $t8
	sltu	$s4, $a3, $s3
	and	$s0, $s0, $s4
	bnez	$s0, .LBB6_296
# %bb.86:                               # %vector.memcheck859
	alsl.d	$s0, $t1, $a7, 2
	sltu	$s4, $a2, $s0
	sltu	$s3, $a7, $s3
	and	$s3, $s4, $s3
	bnez	$s3, .LBB6_296
# %bb.87:                               # %vector.memcheck859
	sltu	$s3, $a4, $s1
	sltu	$s4, $a5, $s2
	and	$s3, $s3, $s4
	bnez	$s3, .LBB6_296
# %bb.88:                               # %vector.memcheck859
	sltu	$s3, $a4, $t5
	sltu	$s4, $a6, $s2
	and	$s3, $s3, $s4
	bnez	$s3, .LBB6_296
# %bb.89:                               # %vector.memcheck859
	sltu	$s3, $a4, $t4
	sltu	$s4, $t0, $s2
	and	$s3, $s3, $s4
	bnez	$s3, .LBB6_296
# %bb.90:                               # %vector.memcheck859
	sltu	$s3, $a4, $t6
	sltu	$s4, $a0, $s2
	and	$s3, $s3, $s4
	bnez	$s3, .LBB6_296
# %bb.91:                               # %vector.memcheck859
	sltu	$s3, $a4, $t7
	sltu	$s4, $a1, $s2
	and	$s3, $s3, $s4
	bnez	$s3, .LBB6_296
# %bb.92:                               # %vector.memcheck859
	sltu	$s3, $a4, $t8
	sltu	$s4, $a3, $s2
	and	$s3, $s3, $s4
	bnez	$s3, .LBB6_296
# %bb.93:                               # %vector.memcheck859
	sltu	$s3, $a4, $s0
	sltu	$s2, $a7, $s2
	and	$s2, $s3, $s2
	bnez	$s2, .LBB6_296
# %bb.94:                               # %vector.memcheck859
	sltu	$s2, $a5, $t5
	sltu	$s3, $a6, $s1
	and	$s2, $s2, $s3
	bnez	$s2, .LBB6_296
# %bb.95:                               # %vector.memcheck859
	sltu	$s2, $a5, $t4
	sltu	$s3, $t0, $s1
	and	$s2, $s2, $s3
	bnez	$s2, .LBB6_296
# %bb.96:                               # %vector.memcheck859
	sltu	$s2, $a5, $t6
	sltu	$s3, $a0, $s1
	and	$s2, $s2, $s3
	bnez	$s2, .LBB6_296
# %bb.97:                               # %vector.memcheck859
	sltu	$s2, $a5, $t7
	sltu	$s3, $a1, $s1
	and	$s2, $s2, $s3
	bnez	$s2, .LBB6_296
# %bb.98:                               # %vector.memcheck859
	sltu	$s2, $a5, $t8
	sltu	$s3, $a3, $s1
	and	$s2, $s2, $s3
	bnez	$s2, .LBB6_296
# %bb.99:                               # %vector.memcheck859
	sltu	$s2, $a5, $s0
	sltu	$s1, $a7, $s1
	and	$s1, $s2, $s1
	bnez	$s1, .LBB6_296
# %bb.100:                              # %vector.memcheck859
	sltu	$s1, $a6, $t4
	sltu	$s2, $t0, $t5
	and	$s1, $s1, $s2
	bnez	$s1, .LBB6_296
# %bb.101:                              # %vector.memcheck859
	sltu	$s1, $a6, $t6
	sltu	$s2, $a0, $t5
	and	$s1, $s1, $s2
	bnez	$s1, .LBB6_296
# %bb.102:                              # %vector.memcheck859
	sltu	$s1, $a6, $t7
	sltu	$s2, $a1, $t5
	and	$s1, $s1, $s2
	bnez	$s1, .LBB6_296
# %bb.103:                              # %vector.memcheck859
	sltu	$s1, $a6, $t8
	sltu	$s2, $a3, $t5
	and	$s1, $s1, $s2
	bnez	$s1, .LBB6_296
# %bb.104:                              # %vector.memcheck859
	sltu	$s1, $a6, $s0
	sltu	$t5, $a7, $t5
	and	$t5, $s1, $t5
	ld.d	$s2, $sp, 472                   # 8-byte Folded Reload
	bnez	$t5, .LBB6_298
# %bb.105:                              # %vector.memcheck859
	sltu	$t5, $t0, $t6
	sltu	$t6, $a0, $t4
	and	$t5, $t5, $t6
	ld.d	$s1, $sp, 128                   # 8-byte Folded Reload
	bnez	$t5, .LBB6_32
# %bb.106:                              # %vector.memcheck859
	sltu	$t5, $t0, $t7
	sltu	$t6, $a1, $t4
	and	$t5, $t5, $t6
	bnez	$t5, .LBB6_32
# %bb.107:                              # %vector.memcheck859
	sltu	$t5, $t0, $t8
	sltu	$t6, $a3, $t4
	and	$t5, $t5, $t6
	bnez	$t5, .LBB6_32
# %bb.108:                              # %vector.memcheck859
	sltu	$t5, $t0, $s0
	sltu	$t4, $a7, $t4
	and	$t4, $t5, $t4
	bnez	$t4, .LBB6_32
# %bb.109:                              # %vector.ph990
	bstrpick.d	$t2, $t3, 31, 3
	slli.d	$t2, $t2, 3
	xvreplve0.d	$xr1, $xr0
	lu52i.d	$t3, $zero, 1023
	xvreplgr2vr.d	$xr2, $t3
	lu52i.d	$t3, $zero, 1022
	xvreplgr2vr.d	$xr3, $t3
	lu12i.w	$t3, 260096
	xvreplgr2vr.w	$xr4, $t3
	move	$t3, $a0
	move	$t4, $a1
	move	$t5, $a2
	move	$t6, $a3
	move	$t7, $a4
	move	$t8, $a5
	move	$s1, $a6
	move	$s3, $a7
	move	$s4, $t0
	move	$s5, $t2
	.p2align	4, , 16
.LBB6_110:                              # %vector.body995
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr5, $t3, 0
	xvst	$xr5, $sp, 672
	vld	$vr6, $sp, 688
	vreplvei.w	$vr5, $vr6, 0
	fcvt.d.s	$fa5, $fa5
	movfr2gr.d	$s0, $fa5
	vreplvei.w	$vr5, $vr6, 1
	fcvt.d.s	$fa7, $fa5
	xvinsgr2vr.d	$xr5, $s0, 0
	movfr2gr.d	$s0, $fa7
	vreplvei.w	$vr7, $vr6, 2
	fcvt.d.s	$fa7, $fa7
	xvinsgr2vr.d	$xr5, $s0, 1
	movfr2gr.d	$s0, $fa7
	vld	$vr7, $sp, 672
	vreplvei.w	$vr6, $vr6, 3
	fcvt.d.s	$fa6, $fa6
	xvinsgr2vr.d	$xr5, $s0, 2
	movfr2gr.d	$s0, $fa6
	vreplvei.w	$vr6, $vr7, 0
	fcvt.d.s	$fa6, $fa6
	xvinsgr2vr.d	$xr5, $s0, 3
	movfr2gr.d	$s0, $fa6
	vreplvei.w	$vr6, $vr7, 1
	fcvt.d.s	$ft0, $fa6
	xvinsgr2vr.d	$xr6, $s0, 0
	movfr2gr.d	$s0, $ft0
	vreplvei.w	$vr8, $vr7, 2
	fcvt.d.s	$ft0, $ft0
	xvld	$xr9, $t4, 0
	xvinsgr2vr.d	$xr6, $s0, 1
	movfr2gr.d	$s0, $ft0
	vreplvei.w	$vr7, $vr7, 3
	fcvt.d.s	$fa7, $fa7
	xvst	$xr9, $sp, 704
	vld	$vr8, $sp, 704
	xvinsgr2vr.d	$xr6, $s0, 2
	movfr2gr.d	$s0, $fa7
	xvinsgr2vr.d	$xr6, $s0, 3
	xvfsub.d	$xr9, $xr2, $xr6
	vreplvei.w	$vr7, $vr8, 0
	fcvt.d.s	$fa7, $fa7
	xvfsub.d	$xr10, $xr2, $xr5
	movfr2gr.d	$s0, $fa7
	vreplvei.w	$vr7, $vr8, 1
	fcvt.d.s	$ft3, $fa7
	xvinsgr2vr.d	$xr7, $s0, 0
	movfr2gr.d	$s0, $ft3
	vreplvei.w	$vr11, $vr8, 2
	fcvt.d.s	$ft3, $ft3
	xvinsgr2vr.d	$xr7, $s0, 1
	movfr2gr.d	$s0, $ft3
	vld	$vr11, $sp, 720
	vreplvei.w	$vr8, $vr8, 3
	fcvt.d.s	$ft0, $ft0
	xvinsgr2vr.d	$xr7, $s0, 2
	movfr2gr.d	$s0, $ft0
	vreplvei.w	$vr8, $vr11, 0
	fcvt.d.s	$ft0, $ft0
	xvinsgr2vr.d	$xr7, $s0, 3
	movfr2gr.d	$s0, $ft0
	vreplvei.w	$vr8, $vr11, 1
	fcvt.d.s	$ft4, $ft0
	xvinsgr2vr.d	$xr8, $s0, 0
	movfr2gr.d	$s0, $ft4
	vreplvei.w	$vr12, $vr11, 2
	fcvt.d.s	$ft4, $ft4
	xvinsgr2vr.d	$xr8, $s0, 1
	movfr2gr.d	$s0, $ft4
	vreplvei.w	$vr11, $vr11, 3
	fcvt.d.s	$ft3, $ft3
	xvinsgr2vr.d	$xr8, $s0, 2
	movfr2gr.d	$s0, $ft3
	xvinsgr2vr.d	$xr8, $s0, 3
	xvfsub.d	$xr11, $xr10, $xr8
	xvfsub.d	$xr12, $xr9, $xr7
	xvfmul.d	$xr12, $xr12, $xr1
	xvfmul.d	$xr11, $xr11, $xr1
	xvfmul.d	$xr11, $xr11, $xr3
	xvfmul.d	$xr12, $xr12, $xr3
	xvpickve2gr.d	$s0, $xr12, 0
	movgr2fr.d	$ft5, $s0
	fcvt.s.d	$ft5, $ft5
	xvpickve2gr.d	$s0, $xr12, 1
	movgr2fr.d	$ft6, $s0
	movfr2gr.s	$s0, $ft5
	fcvt.s.d	$ft5, $ft6
	xvinsgr2vr.w	$xr14, $s0, 0
	movfr2gr.s	$s0, $ft5
	xvinsgr2vr.w	$xr14, $s0, 1
	xvpickve2gr.d	$s0, $xr12, 2
	movgr2fr.d	$ft5, $s0
	fcvt.s.d	$ft5, $ft5
	xvpickve2gr.d	$s0, $xr12, 3
	movgr2fr.d	$ft4, $s0
	movfr2gr.s	$s0, $ft5
	fcvt.s.d	$ft4, $ft4
	xvinsgr2vr.w	$xr14, $s0, 2
	movfr2gr.s	$s0, $ft4
	xvinsgr2vr.w	$xr14, $s0, 3
	xvpickve2gr.d	$s0, $xr11, 0
	movgr2fr.d	$ft4, $s0
	fcvt.s.d	$ft4, $ft4
	xvpickve2gr.d	$s0, $xr11, 1
	movgr2fr.d	$ft5, $s0
	movfr2gr.s	$s0, $ft4
	fcvt.s.d	$ft4, $ft5
	xvinsgr2vr.w	$xr14, $s0, 4
	movfr2gr.s	$s0, $ft4
	xvinsgr2vr.w	$xr14, $s0, 5
	xvpickve2gr.d	$s0, $xr11, 2
	movgr2fr.d	$ft4, $s0
	fcvt.s.d	$ft4, $ft4
	xvpickve2gr.d	$s0, $xr11, 3
	movgr2fr.d	$ft3, $s0
	movfr2gr.s	$s0, $ft4
	fcvt.s.d	$ft3, $ft3
	xvld	$xr12, $t6, 0
	xvinsgr2vr.w	$xr14, $s0, 6
	movfr2gr.s	$s0, $ft3
	xvinsgr2vr.w	$xr14, $s0, 7
	xvst	$xr14, $t5, 0
	xvst	$xr12, $sp, 736
	vld	$vr11, $sp, 752
	vreplvei.w	$vr12, $vr11, 0
	fcvt.d.s	$ft4, $ft4
	movfr2gr.d	$s0, $ft4
	vreplvei.w	$vr12, $vr11, 1
	fcvt.d.s	$ft4, $ft4
	xvinsgr2vr.d	$xr13, $s0, 0
	movfr2gr.d	$s0, $ft4
	vreplvei.w	$vr12, $vr11, 2
	fcvt.d.s	$ft4, $ft4
	xvinsgr2vr.d	$xr13, $s0, 1
	movfr2gr.d	$s0, $ft4
	vreplvei.w	$vr11, $vr11, 3
	fcvt.d.s	$ft3, $ft3
	vld	$vr12, $sp, 736
	xvinsgr2vr.d	$xr13, $s0, 2
	movfr2gr.d	$s0, $ft3
	xvinsgr2vr.d	$xr13, $s0, 3
	xvfsub.d	$xr11, $xr2, $xr13
	vreplvei.w	$vr14, $vr12, 0
	fcvt.d.s	$ft6, $ft6
	xvfsub.d	$xr15, $xr11, $xr8
	movfr2gr.d	$s0, $ft6
	vreplvei.w	$vr14, $vr12, 1
	fcvt.d.s	$ft8, $ft6
	xvinsgr2vr.d	$xr14, $s0, 0
	movfr2gr.d	$s0, $ft8
	vreplvei.w	$vr16, $vr12, 2
	fcvt.d.s	$ft8, $ft8
	xvinsgr2vr.d	$xr14, $s0, 1
	movfr2gr.d	$s0, $ft8
	vreplvei.w	$vr12, $vr12, 3
	fcvt.d.s	$ft4, $ft4
	xvinsgr2vr.d	$xr14, $s0, 2
	movfr2gr.d	$s0, $ft4
	xvinsgr2vr.d	$xr14, $s0, 3
	xvfsub.d	$xr12, $xr2, $xr14
	xvfsub.d	$xr16, $xr12, $xr7
	xvfmul.d	$xr16, $xr16, $xr1
	xvfmul.d	$xr15, $xr15, $xr1
	xvfmul.d	$xr15, $xr15, $xr3
	xvfmul.d	$xr16, $xr16, $xr3
	xvpickve2gr.d	$s0, $xr16, 0
	movgr2fr.d	$ft9, $s0
	fcvt.s.d	$ft9, $ft9
	xvpickve2gr.d	$s0, $xr16, 1
	movgr2fr.d	$ft10, $s0
	movfr2gr.s	$s0, $ft9
	fcvt.s.d	$ft9, $ft10
	xvinsgr2vr.w	$xr18, $s0, 0
	movfr2gr.s	$s0, $ft9
	xvinsgr2vr.w	$xr18, $s0, 1
	xvpickve2gr.d	$s0, $xr16, 2
	movgr2fr.d	$ft9, $s0
	fcvt.s.d	$ft9, $ft9
	xvpickve2gr.d	$s0, $xr16, 3
	movgr2fr.d	$ft8, $s0
	movfr2gr.s	$s0, $ft9
	fcvt.s.d	$ft8, $ft8
	xvinsgr2vr.w	$xr18, $s0, 2
	movfr2gr.s	$s0, $ft8
	xvinsgr2vr.w	$xr18, $s0, 3
	xvpickve2gr.d	$s0, $xr15, 0
	movgr2fr.d	$ft8, $s0
	fcvt.s.d	$ft8, $ft8
	xvpickve2gr.d	$s0, $xr15, 1
	movgr2fr.d	$ft9, $s0
	movfr2gr.s	$s0, $ft8
	fcvt.s.d	$ft8, $ft9
	xvinsgr2vr.w	$xr18, $s0, 4
	movfr2gr.s	$s0, $ft8
	xvinsgr2vr.w	$xr18, $s0, 5
	xvpickve2gr.d	$s0, $xr15, 2
	movgr2fr.d	$ft8, $s0
	fcvt.s.d	$ft8, $ft8
	xvpickve2gr.d	$s0, $xr15, 3
	movgr2fr.d	$ft7, $s0
	movfr2gr.s	$s0, $ft8
	fcvt.s.d	$ft7, $ft7
	xvinsgr2vr.w	$xr18, $s0, 6
	movfr2gr.s	$s0, $ft7
	xvinsgr2vr.w	$xr18, $s0, 7
	xvst	$xr18, $t7, 0
	xvfadd.d	$xr9, $xr9, $xr14
	xvfadd.d	$xr10, $xr10, $xr13
	xvfsub.d	$xr10, $xr10, $xr8
	xvfsub.d	$xr9, $xr9, $xr7
	xvfmul.d	$xr9, $xr9, $xr3
	xvfmul.d	$xr10, $xr10, $xr3
	xvfmul.d	$xr10, $xr10, $xr1
	xvfmul.d	$xr9, $xr9, $xr1
	xvpickve2gr.d	$s0, $xr9, 0
	movgr2fr.d	$ft5, $s0
	fcvt.s.d	$ft5, $ft5
	xvpickve2gr.d	$s0, $xr9, 1
	movgr2fr.d	$ft6, $s0
	movfr2gr.s	$s0, $ft5
	fcvt.s.d	$ft5, $ft6
	xvinsgr2vr.w	$xr14, $s0, 0
	movfr2gr.s	$s0, $ft5
	xvinsgr2vr.w	$xr14, $s0, 1
	xvpickve2gr.d	$s0, $xr9, 2
	movgr2fr.d	$ft5, $s0
	fcvt.s.d	$ft5, $ft5
	xvpickve2gr.d	$s0, $xr9, 3
	movgr2fr.d	$ft1, $s0
	movfr2gr.s	$s0, $ft5
	fcvt.s.d	$ft1, $ft1
	xvinsgr2vr.w	$xr14, $s0, 2
	movfr2gr.s	$s0, $ft1
	xvinsgr2vr.w	$xr14, $s0, 3
	xvpickve2gr.d	$s0, $xr10, 0
	movgr2fr.d	$ft1, $s0
	fcvt.s.d	$ft1, $ft1
	xvpickve2gr.d	$s0, $xr10, 1
	movgr2fr.d	$ft5, $s0
	movfr2gr.s	$s0, $ft1
	fcvt.s.d	$ft1, $ft5
	xvinsgr2vr.w	$xr14, $s0, 4
	movfr2gr.s	$s0, $ft1
	xvinsgr2vr.w	$xr14, $s0, 5
	xvpickve2gr.d	$s0, $xr10, 2
	movgr2fr.d	$ft1, $s0
	fcvt.s.d	$ft1, $ft1
	xvpickve2gr.d	$s0, $xr10, 3
	movgr2fr.d	$ft2, $s0
	movfr2gr.s	$s0, $ft1
	fcvt.s.d	$ft1, $ft2
	xvinsgr2vr.w	$xr14, $s0, 6
	movfr2gr.s	$s0, $ft1
	xvinsgr2vr.w	$xr14, $s0, 7
	xvst	$xr14, $t8, 0
	xvfadd.d	$xr6, $xr12, $xr6
	xvfadd.d	$xr5, $xr11, $xr5
	xvfsub.d	$xr5, $xr5, $xr8
	xvfsub.d	$xr6, $xr6, $xr7
	xvfmul.d	$xr6, $xr6, $xr3
	xvfmul.d	$xr5, $xr5, $xr3
	xvfmul.d	$xr5, $xr5, $xr1
	xvfmul.d	$xr6, $xr6, $xr1
	xvpickve2gr.d	$s0, $xr6, 0
	movgr2fr.d	$fa7, $s0
	fcvt.s.d	$fa7, $fa7
	xvpickve2gr.d	$s0, $xr6, 1
	movgr2fr.d	$ft0, $s0
	movfr2gr.s	$s0, $fa7
	fcvt.s.d	$fa7, $ft0
	xvinsgr2vr.w	$xr8, $s0, 0
	movfr2gr.s	$s0, $fa7
	xvinsgr2vr.w	$xr8, $s0, 1
	xvpickve2gr.d	$s0, $xr6, 2
	movgr2fr.d	$fa7, $s0
	fcvt.s.d	$fa7, $fa7
	xvpickve2gr.d	$s0, $xr6, 3
	movgr2fr.d	$fa6, $s0
	movfr2gr.s	$s0, $fa7
	fcvt.s.d	$fa6, $fa6
	xvinsgr2vr.w	$xr8, $s0, 2
	movfr2gr.s	$s0, $fa6
	xvinsgr2vr.w	$xr8, $s0, 3
	xvpickve2gr.d	$s0, $xr5, 0
	movgr2fr.d	$fa6, $s0
	fcvt.s.d	$fa6, $fa6
	xvpickve2gr.d	$s0, $xr5, 1
	movgr2fr.d	$fa7, $s0
	movfr2gr.s	$s0, $fa6
	fcvt.s.d	$fa6, $fa7
	xvinsgr2vr.w	$xr8, $s0, 4
	movfr2gr.s	$s0, $fa6
	xvinsgr2vr.w	$xr8, $s0, 5
	xvpickve2gr.d	$s0, $xr5, 2
	movgr2fr.d	$fa6, $s0
	fcvt.s.d	$fa6, $fa6
	xvpickve2gr.d	$s0, $xr5, 3
	movgr2fr.d	$fa5, $s0
	movfr2gr.s	$s0, $fa6
	fcvt.s.d	$fa5, $fa5
	xvld	$xr6, $s3, 0
	xvinsgr2vr.w	$xr8, $s0, 6
	movfr2gr.s	$s0, $fa5
	xvinsgr2vr.w	$xr8, $s0, 7
	xvst	$xr8, $s1, 0
	xvfsub.s	$xr5, $xr4, $xr6
	xvst	$xr5, $s4, 0
	addi.d	$s5, $s5, -8
	addi.d	$s4, $s4, 32
	addi.d	$s3, $s3, 32
	addi.d	$s1, $s1, 32
	addi.d	$t8, $t8, 32
	addi.d	$t7, $t7, 32
	addi.d	$t6, $t6, 32
	addi.d	$t5, $t5, 32
	addi.d	$t4, $t4, 32
	addi.d	$t3, $t3, 32
	bnez	$s5, .LBB6_110
# %bb.111:                              # %middle.block1009
	ld.d	$s1, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 56                    # 8-byte Folded Reload
	bne	$t1, $t2, .LBB6_32
	b	.LBB6_34
.LBB6_112:                              # %clearvec.exit.thread
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	sltui	$a0, $a0, 1
.LBB6_113:
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 408                   # 8-byte Folded Reload
	ld.bu	$a0, $a0, 0
	ori	$a1, $zero, 114
	beq	$a0, $a1, .LBB6_43
.LBB6_114:
	ld.d	$a0, $sp, 376                   # 8-byte Folded Reload
	ld.d	$a1, $a0, %pc_lo12(Q__align_gapmap.cpmx1)
	ld.d	$a0, $sp, 360                   # 8-byte Folded Reload
	ld.d	$a2, $a0, %pc_lo12(Q__align_gapmap.cpmx2)
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	ld.d	$a5, $a0, %pc_lo12(Q__align_gapmap.floatwork)
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	ld.d	$a6, $a0, %pc_lo12(Q__align_gapmap.intwork)
	ori	$a7, $zero, 1
	move	$a0, $t4
	move	$a3, $zero
	move	$a4, $ra
	pcaddu18i	$ra, %call36(match_calc)
	jirl	$ra, $ra, 0
.LBB6_115:                              # %clearvec.exit532
	ld.d	$ra, $sp, 416                   # 8-byte Folded Reload
	xvld	$xr19, $sp, 288                 # 32-byte Folded Reload
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	move	$t4, $s0
	move	$t5, $s3
	bnez	$a0, .LBB6_119
# %bb.116:
	beqz	$ra, .LBB6_119
# %bb.117:                              # %.lr.ph.i533.preheader
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	pcalau12i	$a1, %pc_hi20(impmtx)
	ld.d	$a1, $a1, %pc_lo12(impmtx)
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $a1, $a0
	ld.d	$a3, $sp, 280                   # 8-byte Folded Reload
	move	$a2, $t4
	ld.d	$a1, $sp, 344                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB6_118:                              # %.lr.ph.i533
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
	bnez	$a1, .LBB6_118
.LBB6_119:                              # %imp_match_out_veadQ_gapmap.exit
	pcalau12i	$a0, %got_pc_hi20(outgap)
	ld.d	$t6, $a0, %got_pc_lo12(outgap)
	ld.w	$a2, $t6, 0
	ori	$a1, $zero, 1
	ld.d	$a0, $sp, 344                   # 8-byte Folded Reload
	slli.d	$a0, $a0, 32
	pcalau12i	$a3, %pc_hi20(.LCPI6_2)
	st.d	$a3, $sp, 264                   # 8-byte Folded Spill
	bne	$a2, $a1, .LBB6_129
# %bb.120:
	ld.d	$a2, $sp, 448                   # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(Q__align_gapmap.ogcp1g)
	ld.d	$a3, $sp, 200                   # 8-byte Folded Reload
	ld.d	$a3, $a3, %pc_lo12(Q__align_gapmap.og_h_dg_n2_p)
	ld.d	$a4, $sp, 432                   # 8-byte Folded Reload
	ld.d	$a4, $a4, %pc_lo12(Q__align_gapmap.ogcp2g)
	fld.s	$fa0, $a2, 0
	fld.s	$fa1, $a3, 0
	fld.s	$fa2, $a4, 0
	ld.d	$a2, $sp, 248                   # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(Q__align_gapmap.og_h_dg_n1_p)
	ld.d	$a3, $sp, 440                   # 8-byte Folded Reload
	ld.d	$a3, $a3, %pc_lo12(Q__align_gapmap.fgcp1g)
	ld.d	$a4, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a4, $a4, %pc_lo12(Q__align_gapmap.fg_h_dg_n2_p)
	ld.d	$a5, $sp, 424                   # 8-byte Folded Reload
	ld.d	$a5, $a5, %pc_lo12(Q__align_gapmap.fgcp2g)
	fld.s	$fa3, $a2, 0
	fld.s	$fa4, $a3, 0
	fld.s	$fa5, $a4, 0
	fld.s	$fa6, $a5, 0
	ld.d	$a2, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(Q__align_gapmap.fg_h_dg_n1_p)
	ld.d	$a3, $sp, 352                   # 8-byte Folded Reload
	ld.d	$a3, $a3, %pc_lo12(Q__align_gapmap.initverticalw)
	movgr2fr.w	$fa7, $zero
	fmadd.s	$fa0, $fa0, $fa1, $fa7
	fld.s	$fa1, $a2, 0
	fld.s	$fa7, $a3, 0
	fmadd.s	$fa0, $fa2, $fa3, $fa0
	fmadd.s	$fa0, $fa4, $fa5, $fa0
	fmadd.s	$fa0, $fa6, $fa1, $fa0
	fadd.s	$fa1, $fa0, $fa7
	fst.s	$fa1, $a3, 0
	fld.s	$fa1, $t4, 0
	fadd.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $t4, 0
	blt	$s1, $a1, .LBB6_124
# %bb.121:                              # %.lr.ph582
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(Q__align_gapmap.gapz_n2)
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(Q__align_gapmap.og_t_fg_h_dg_n1_p)
	ld.d	$a4, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a4, $a4, %pc_lo12(Q__align_gapmap.fg_t_og_h_dg_n1_p)
	addi.d	$a5, $s7, 1
	bstrpick.d	$a5, $a5, 31, 0
	addi.d	$a7, $a5, -1
	ori	$t0, $zero, 8
	ori	$a6, $zero, 1
	bgeu	$a7, $t0, .LBB6_151
.LBB6_122:                              # %scalar.ph1061.preheader
	alsl.d	$a4, $a6, $a4, 2
	alsl.d	$a3, $a6, $a3, 2
	sub.d	$a5, $a5, $a6
	.p2align	4, , 16
.LBB6_123:                              # %scalar.ph1061
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $a1, 0
	fld.s	$fa1, $a2, 0
	fld.s	$fa2, $a3, 0
	fmul.s	$fa0, $fa0, $fa1
	fadd.s	$fa0, $fa2, $fa0
	fst.s	$fa0, $a3, 0
	fld.s	$fa1, $a1, 4
	fld.s	$fa2, $a4, 0
	fmul.s	$fa1, $fa1, $fa2
	fadd.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $a3, 0
	addi.d	$a4, $a4, 4
	addi.d	$a5, $a5, -1
	addi.d	$a3, $a3, 4
	bnez	$a5, .LBB6_123
.LBB6_124:                              # %.preheader556
	blez	$ra, .LBB6_148
# %bb.125:                              # %.lr.ph585
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(Q__align_gapmap.gapz_n1)
	ld.d	$a2, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(Q__align_gapmap.og_t_fg_h_dg_n2_p)
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a3, $a3, %pc_lo12(Q__align_gapmap.fg_t_og_h_dg_n2_p)
	ld.d	$a4, $sp, 344                   # 8-byte Folded Reload
	addi.d	$a4, $a4, 1
	bstrpick.d	$a4, $a4, 31, 0
	addi.d	$a6, $a4, -1
	ori	$a7, $zero, 8
	ori	$a5, $zero, 1
	bgeu	$a6, $a7, .LBB6_157
.LBB6_126:                              # %scalar.ph1099.preheader
	alsl.d	$a3, $a5, $a3, 2
	alsl.d	$a6, $a5, $t4, 2
	sub.d	$a4, $a4, $a5
	.p2align	4, , 16
.LBB6_127:                              # %scalar.ph1099
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $a1, 0
	fld.s	$fa1, $a2, 0
	fld.s	$fa2, $a6, 0
	fmul.s	$fa0, $fa0, $fa1
	fadd.s	$fa0, $fa2, $fa0
	fst.s	$fa0, $a6, 0
	fld.s	$fa1, $a1, 4
	fld.s	$fa2, $a3, 0
	fmul.s	$fa1, $fa1, $fa2
	fadd.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $a6, 0
	addi.d	$a3, $a3, 4
	addi.d	$a4, $a4, -1
	addi.d	$a6, $a6, 4
	bnez	$a4, .LBB6_127
.LBB6_128:                              # %.loopexit557.thread712
	ld.d	$a1, $sp, 240                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(Q__align_gapmap.m)
	st.w	$zero, $a1, 0
	b	.LBB6_144
.LBB6_129:                              # %.preheader560
	blt	$ra, $a1, .LBB6_136
# %bb.130:                              # %.lr.ph575
	pcalau12i	$a1, %got_pc_hi20(offset)
	ld.d	$a1, $a1, %got_pc_lo12(offset)
	ld.w	$a1, $a1, 0
	ld.d	$a2, $sp, 344                   # 8-byte Folded Reload
	addi.d	$a2, $a2, 1
	bstrpick.d	$a2, $a2, 31, 0
	addi.d	$a3, $a2, -1
	ori	$a5, $zero, 8
	ori	$a4, $zero, 1
	bltu	$a3, $a5, .LBB6_134
# %bb.131:                              # %vector.ph1014
	move	$a5, $a3
	bstrins.d	$a5, $zero, 2, 0
	ori	$a6, $zero, 1
	move	$a4, $a3
	bstrins.d	$a4, $a6, 2, 0
	xvreplgr2vr.w	$xr0, $a1
	pcalau12i	$a6, %pc_hi20(.LCPI6_1)
	xvld	$xr1, $a6, %pc_lo12(.LCPI6_1)
	addi.d	$a6, $t4, 4
	lu52i.d	$a7, $zero, -1026
	xvreplgr2vr.d	$xr2, $a7
	move	$a7, $a5
	.p2align	4, , 16
.LBB6_132:                              # %vector.body1019
                                        # =>This Inner Loop Header: Depth=1
	xvmul.w	$xr3, $xr0, $xr1
	xvst	$xr3, $sp, 608
	vld	$vr3, $sp, 624
	xvld	$xr4, $a6, 0
	vext2xv.d.w	$xr3, $xr3
	vld	$vr5, $sp, 608
	xvffint.d.l	$xr3, $xr3
	xvst	$xr4, $sp, 640
	vld	$vr4, $sp, 640
	vext2xv.d.w	$xr5, $xr5
	xvffint.d.l	$xr5, $xr5
	xvfmul.d	$xr5, $xr5, $xr2
	vreplvei.w	$vr6, $vr4, 0
	fcvt.d.s	$fa6, $fa6
	xvfmul.d	$xr3, $xr3, $xr2
	movfr2gr.d	$t0, $fa6
	vreplvei.w	$vr6, $vr4, 1
	fcvt.d.s	$fa6, $fa6
	xvinsgr2vr.d	$xr7, $t0, 0
	movfr2gr.d	$t0, $fa6
	vreplvei.w	$vr6, $vr4, 2
	fcvt.d.s	$fa6, $fa6
	xvinsgr2vr.d	$xr7, $t0, 1
	movfr2gr.d	$t0, $fa6
	vld	$vr6, $sp, 656
	vreplvei.w	$vr4, $vr4, 3
	fcvt.d.s	$fa4, $fa4
	xvinsgr2vr.d	$xr7, $t0, 2
	movfr2gr.d	$t0, $fa4
	vreplvei.w	$vr4, $vr6, 0
	fcvt.d.s	$fa4, $fa4
	xvinsgr2vr.d	$xr7, $t0, 3
	movfr2gr.d	$t0, $fa4
	vreplvei.w	$vr4, $vr6, 1
	fcvt.d.s	$fa4, $fa4
	xvinsgr2vr.d	$xr8, $t0, 0
	movfr2gr.d	$t0, $fa4
	vreplvei.w	$vr4, $vr6, 2
	fcvt.d.s	$fa4, $fa4
	xvinsgr2vr.d	$xr8, $t0, 1
	movfr2gr.d	$t0, $fa4
	vreplvei.w	$vr4, $vr6, 3
	fcvt.d.s	$fa4, $fa4
	xvinsgr2vr.d	$xr8, $t0, 2
	movfr2gr.d	$t0, $fa4
	xvinsgr2vr.d	$xr8, $t0, 3
	xvfadd.d	$xr3, $xr8, $xr3
	xvfadd.d	$xr4, $xr7, $xr5
	xvpickve2gr.d	$t0, $xr4, 0
	movgr2fr.d	$fa5, $t0
	fcvt.s.d	$fa5, $fa5
	xvpickve2gr.d	$t0, $xr4, 1
	movgr2fr.d	$fa6, $t0
	movfr2gr.s	$t0, $fa5
	fcvt.s.d	$fa5, $fa6
	xvinsgr2vr.w	$xr6, $t0, 0
	movfr2gr.s	$t0, $fa5
	xvinsgr2vr.w	$xr6, $t0, 1
	xvpickve2gr.d	$t0, $xr4, 2
	movgr2fr.d	$fa5, $t0
	fcvt.s.d	$fa5, $fa5
	xvpickve2gr.d	$t0, $xr4, 3
	movgr2fr.d	$fa4, $t0
	movfr2gr.s	$t0, $fa5
	fcvt.s.d	$fa4, $fa4
	xvinsgr2vr.w	$xr6, $t0, 2
	movfr2gr.s	$t0, $fa4
	xvinsgr2vr.w	$xr6, $t0, 3
	xvpickve2gr.d	$t0, $xr3, 0
	movgr2fr.d	$fa4, $t0
	fcvt.s.d	$fa4, $fa4
	xvpickve2gr.d	$t0, $xr3, 1
	movgr2fr.d	$fa5, $t0
	movfr2gr.s	$t0, $fa4
	fcvt.s.d	$fa4, $fa5
	xvinsgr2vr.w	$xr6, $t0, 4
	movfr2gr.s	$t0, $fa4
	xvinsgr2vr.w	$xr6, $t0, 5
	xvpickve2gr.d	$t0, $xr3, 2
	movgr2fr.d	$fa4, $t0
	fcvt.s.d	$fa4, $fa4
	xvpickve2gr.d	$t0, $xr3, 3
	movgr2fr.d	$fa3, $t0
	movfr2gr.s	$t0, $fa4
	fcvt.s.d	$fa3, $fa3
	xvinsgr2vr.w	$xr6, $t0, 6
	movfr2gr.s	$t0, $fa3
	xvinsgr2vr.w	$xr6, $t0, 7
	xvst	$xr6, $a6, 0
	xvaddi.wu	$xr1, $xr1, 8
	addi.d	$a7, $a7, -8
	addi.d	$a6, $a6, 32
	bnez	$a7, .LBB6_132
# %bb.133:                              # %middle.block1023
	beq	$a3, $a5, .LBB6_136
.LBB6_134:                              # %scalar.ph1012.preheader
	mul.d	$a3, $a1, $a4
	alsl.d	$a5, $a4, $t4, 2
	sub.d	$a2, $a2, $a4
	vldi	$vr0, -800
	.p2align	4, , 16
.LBB6_135:                              # %scalar.ph1012
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa1, $a5, 0
	movgr2fr.w	$fa2, $a3
	ffint.d.w	$fa2, $fa2
	fmul.d	$fa2, $fa2, $fa0
	fcvt.d.s	$fa1, $fa1
	fadd.d	$fa1, $fa1, $fa2
	fcvt.s.d	$fa1, $fa1
	fst.s	$fa1, $a5, 0
	add.w	$a3, $a3, $a1
	addi.d	$a2, $a2, -1
	addi.d	$a5, $a5, 4
	bnez	$a2, .LBB6_135
.LBB6_136:                              # %.preheader558
	ori	$a2, $zero, 1
	blt	$s1, $a2, .LBB6_143
# %bb.137:                              # %.lr.ph578
	pcalau12i	$a1, %got_pc_hi20(offset)
	ld.d	$a1, $a1, %got_pc_lo12(offset)
	ld.w	$a1, $a1, 0
	ld.d	$a3, $sp, 352                   # 8-byte Folded Reload
	ld.d	$a3, $a3, %pc_lo12(Q__align_gapmap.initverticalw)
	addi.d	$a4, $s7, 1
	bstrpick.d	$a4, $a4, 31, 0
	addi.d	$a5, $a4, -1
	ori	$a6, $zero, 8
	bltu	$a5, $a6, .LBB6_141
# %bb.138:                              # %vector.ph1028
	move	$a6, $a5
	bstrins.d	$a6, $zero, 2, 0
	ori	$a7, $zero, 1
	move	$a2, $a5
	bstrins.d	$a2, $a7, 2, 0
	xvreplgr2vr.w	$xr0, $a1
	pcalau12i	$a7, %pc_hi20(.LCPI6_1)
	xvld	$xr1, $a7, %pc_lo12(.LCPI6_1)
	addi.d	$a7, $a3, 4
	lu52i.d	$t0, $zero, -1026
	xvreplgr2vr.d	$xr2, $t0
	move	$t0, $a6
	.p2align	4, , 16
.LBB6_139:                              # %vector.body1033
                                        # =>This Inner Loop Header: Depth=1
	xvmul.w	$xr3, $xr0, $xr1
	xvst	$xr3, $sp, 544
	vld	$vr3, $sp, 560
	xvld	$xr4, $a7, 0
	vext2xv.d.w	$xr3, $xr3
	vld	$vr5, $sp, 544
	xvffint.d.l	$xr3, $xr3
	xvst	$xr4, $sp, 576
	vld	$vr4, $sp, 576
	vext2xv.d.w	$xr5, $xr5
	xvffint.d.l	$xr5, $xr5
	xvfmul.d	$xr5, $xr5, $xr2
	vreplvei.w	$vr6, $vr4, 0
	fcvt.d.s	$fa6, $fa6
	xvfmul.d	$xr3, $xr3, $xr2
	movfr2gr.d	$t1, $fa6
	vreplvei.w	$vr6, $vr4, 1
	fcvt.d.s	$fa6, $fa6
	xvinsgr2vr.d	$xr7, $t1, 0
	movfr2gr.d	$t1, $fa6
	vreplvei.w	$vr6, $vr4, 2
	fcvt.d.s	$fa6, $fa6
	xvinsgr2vr.d	$xr7, $t1, 1
	movfr2gr.d	$t1, $fa6
	vld	$vr6, $sp, 592
	vreplvei.w	$vr4, $vr4, 3
	fcvt.d.s	$fa4, $fa4
	xvinsgr2vr.d	$xr7, $t1, 2
	movfr2gr.d	$t1, $fa4
	vreplvei.w	$vr4, $vr6, 0
	fcvt.d.s	$fa4, $fa4
	xvinsgr2vr.d	$xr7, $t1, 3
	movfr2gr.d	$t1, $fa4
	vreplvei.w	$vr4, $vr6, 1
	fcvt.d.s	$fa4, $fa4
	xvinsgr2vr.d	$xr8, $t1, 0
	movfr2gr.d	$t1, $fa4
	vreplvei.w	$vr4, $vr6, 2
	fcvt.d.s	$fa4, $fa4
	xvinsgr2vr.d	$xr8, $t1, 1
	movfr2gr.d	$t1, $fa4
	vreplvei.w	$vr4, $vr6, 3
	fcvt.d.s	$fa4, $fa4
	xvinsgr2vr.d	$xr8, $t1, 2
	movfr2gr.d	$t1, $fa4
	xvinsgr2vr.d	$xr8, $t1, 3
	xvfadd.d	$xr3, $xr8, $xr3
	xvfadd.d	$xr4, $xr7, $xr5
	xvpickve2gr.d	$t1, $xr4, 0
	movgr2fr.d	$fa5, $t1
	fcvt.s.d	$fa5, $fa5
	xvpickve2gr.d	$t1, $xr4, 1
	movgr2fr.d	$fa6, $t1
	movfr2gr.s	$t1, $fa5
	fcvt.s.d	$fa5, $fa6
	xvinsgr2vr.w	$xr6, $t1, 0
	movfr2gr.s	$t1, $fa5
	xvinsgr2vr.w	$xr6, $t1, 1
	xvpickve2gr.d	$t1, $xr4, 2
	movgr2fr.d	$fa5, $t1
	fcvt.s.d	$fa5, $fa5
	xvpickve2gr.d	$t1, $xr4, 3
	movgr2fr.d	$fa4, $t1
	movfr2gr.s	$t1, $fa5
	fcvt.s.d	$fa4, $fa4
	xvinsgr2vr.w	$xr6, $t1, 2
	movfr2gr.s	$t1, $fa4
	xvinsgr2vr.w	$xr6, $t1, 3
	xvpickve2gr.d	$t1, $xr3, 0
	movgr2fr.d	$fa4, $t1
	fcvt.s.d	$fa4, $fa4
	xvpickve2gr.d	$t1, $xr3, 1
	movgr2fr.d	$fa5, $t1
	movfr2gr.s	$t1, $fa4
	fcvt.s.d	$fa4, $fa5
	xvinsgr2vr.w	$xr6, $t1, 4
	movfr2gr.s	$t1, $fa4
	xvinsgr2vr.w	$xr6, $t1, 5
	xvpickve2gr.d	$t1, $xr3, 2
	movgr2fr.d	$fa4, $t1
	fcvt.s.d	$fa4, $fa4
	xvpickve2gr.d	$t1, $xr3, 3
	movgr2fr.d	$fa3, $t1
	movfr2gr.s	$t1, $fa4
	fcvt.s.d	$fa3, $fa3
	xvinsgr2vr.w	$xr6, $t1, 6
	movfr2gr.s	$t1, $fa3
	xvinsgr2vr.w	$xr6, $t1, 7
	xvst	$xr6, $a7, 0
	xvaddi.wu	$xr1, $xr1, 8
	addi.d	$t0, $t0, -8
	addi.d	$a7, $a7, 32
	bnez	$t0, .LBB6_139
# %bb.140:                              # %middle.block1040
	beq	$a5, $a6, .LBB6_143
.LBB6_141:                              # %scalar.ph1026.preheader
	mul.d	$a5, $a1, $a2
	alsl.d	$a3, $a2, $a3, 2
	sub.d	$a2, $a4, $a2
	vldi	$vr0, -800
	.p2align	4, , 16
.LBB6_142:                              # %scalar.ph1026
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa1, $a3, 0
	movgr2fr.w	$fa2, $a5
	ffint.d.w	$fa2, $fa2
	fmul.d	$fa2, $fa2, $fa0
	fcvt.d.s	$fa1, $fa1
	fadd.d	$fa1, $fa1, $fa2
	fcvt.s.d	$fa1, $fa1
	fst.s	$fa1, $a3, 0
	add.w	$a5, $a5, $a1
	addi.d	$a2, $a2, -1
	addi.d	$a3, $a3, 4
	bnez	$a2, .LBB6_142
.LBB6_143:                              # %.loopexit557
	ld.d	$a1, $sp, 240                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(Q__align_gapmap.m)
	ori	$a2, $zero, 1
	st.w	$zero, $a1, 0
	blt	$ra, $a2, .LBB6_149
.LBB6_144:                              # %iter.check
	ld.d	$a2, $s5, %pc_lo12(Q__align_gapmap.mp)
	ld.d	$a3, $sp, 344                   # 8-byte Folded Reload
	addi.d	$a3, $a3, 1
	bstrpick.d	$a3, $a3, 31, 0
	addi.d	$a4, $a3, -1
	ori	$a5, $zero, 4
	ori	$a6, $zero, 1
	bltu	$a4, $a5, .LBB6_171
# %bb.145:                              # %vector.memcheck1119
	sub.d	$a5, $a1, $t4
	addi.d	$a5, $a5, 4
	ori	$a7, $zero, 64
	bltu	$a5, $a7, .LBB6_171
# %bb.146:                              # %vector.main.loop.iter.check
	ori	$a6, $zero, 16
	lu12i.w	$a5, 287172
	bgeu	$a4, $a6, .LBB6_163
# %bb.147:
	move	$a7, $zero
	b	.LBB6_167
.LBB6_148:                              # %.loopexit557.thread
	ld.d	$a1, $sp, 240                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(Q__align_gapmap.m)
	st.w	$zero, $a1, 0
.LBB6_149:                              # %._crit_edge590
	ori	$t2, $zero, 1
	bnez	$ra, .LBB6_174
# %bb.150:
	movgr2fr.w	$fa0, $zero
	ori	$a2, $zero, 1
	st.d	$a2, $sp, 400                   # 8-byte Folded Spill
	b	.LBB6_175
.LBB6_151:                              # %vector.memcheck1043
	addi.d	$t0, $a3, 4
	alsl.d	$t2, $a5, $a3, 2
	addi.d	$t1, $a1, 8
	sltu	$t1, $t0, $t1
	sltu	$t3, $a1, $t2
	and	$t1, $t1, $t3
	bnez	$t1, .LBB6_122
# %bb.152:                              # %vector.memcheck1043
	addi.d	$t1, $a2, 4
	sltu	$t1, $t0, $t1
	sltu	$t3, $a2, $t2
	and	$t1, $t1, $t3
	bnez	$t1, .LBB6_122
# %bb.153:                              # %vector.memcheck1043
	addi.d	$t1, $a4, 4
	alsl.d	$t3, $a5, $a4, 2
	sltu	$t3, $t0, $t3
	sltu	$t2, $t1, $t2
	and	$t2, $t3, $t2
	bnez	$t2, .LBB6_122
# %bb.154:                              # %vector.ph1063
	move	$t2, $a7
	bstrins.d	$t2, $zero, 2, 0
	fld.s	$fa0, $a1, 0
	fld.s	$fa1, $a2, 0
	ori	$t3, $zero, 1
	move	$a6, $a7
	fld.s	$fa2, $a1, 4
	bstrins.d	$a6, $t3, 2, 0
	fmul.s	$fa0, $fa0, $fa1
	xvreplve0.w	$xr0, $xr0
	xvreplve0.w	$xr1, $xr2
	move	$t3, $t2
	.p2align	4, , 16
.LBB6_155:                              # %vector.body1066
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr2, $t0, 0
	xvld	$xr3, $t1, 0
	xvfadd.s	$xr2, $xr2, $xr0
	xvfmul.s	$xr3, $xr1, $xr3
	xvfadd.s	$xr2, $xr2, $xr3
	xvst	$xr2, $t0, 0
	addi.d	$t0, $t0, 32
	addi.d	$t3, $t3, -8
	addi.d	$t1, $t1, 32
	bnez	$t3, .LBB6_155
# %bb.156:                              # %middle.block1078
	bne	$a7, $t2, .LBB6_122
	b	.LBB6_124
.LBB6_157:                              # %vector.memcheck1081
	addi.d	$a7, $t4, 4
	alsl.d	$t1, $a4, $t4, 2
	addi.d	$t0, $a1, 8
	sltu	$t0, $a7, $t0
	sltu	$t2, $a1, $t1
	and	$t0, $t0, $t2
	bnez	$t0, .LBB6_126
# %bb.158:                              # %vector.memcheck1081
	addi.d	$t0, $a2, 4
	sltu	$t0, $a7, $t0
	sltu	$t2, $a2, $t1
	and	$t0, $t0, $t2
	bnez	$t0, .LBB6_126
# %bb.159:                              # %vector.memcheck1081
	addi.d	$t0, $a3, 4
	alsl.d	$t2, $a4, $a3, 2
	sltu	$t2, $a7, $t2
	sltu	$t1, $t0, $t1
	and	$t1, $t2, $t1
	bnez	$t1, .LBB6_126
# %bb.160:                              # %vector.ph1101
	move	$t1, $a6
	bstrins.d	$t1, $zero, 2, 0
	fld.s	$fa0, $a1, 0
	fld.s	$fa1, $a2, 0
	ori	$t2, $zero, 1
	move	$a5, $a6
	fld.s	$fa2, $a1, 4
	bstrins.d	$a5, $t2, 2, 0
	fmul.s	$fa0, $fa0, $fa1
	xvreplve0.w	$xr0, $xr0
	xvreplve0.w	$xr1, $xr2
	move	$t2, $t1
	.p2align	4, , 16
.LBB6_161:                              # %vector.body1104
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr2, $a7, 0
	xvld	$xr3, $t0, 0
	xvfadd.s	$xr2, $xr2, $xr0
	xvfmul.s	$xr3, $xr1, $xr3
	xvfadd.s	$xr2, $xr2, $xr3
	xvst	$xr2, $a7, 0
	addi.d	$a7, $a7, 32
	addi.d	$t2, $t2, -8
	addi.d	$t0, $t0, 32
	bnez	$t2, .LBB6_161
# %bb.162:                              # %middle.block1116
	bne	$a6, $t1, .LBB6_126
	b	.LBB6_128
.LBB6_163:                              # %vector.ph1124
	move	$a6, $zero
	move	$a7, $a4
	bstrins.d	$a7, $zero, 3, 0
	xvreplve0.w	$xr0, $xr19
	addi.d	$t0, $a2, 36
	xvrepli.b	$xr1, 0
	xvreplgr2vr.w	$xr2, $a5
	move	$t1, $a7
	.p2align	4, , 16
.LBB6_164:                              # %vector.body1129
                                        # =>This Inner Loop Header: Depth=1
	add.d	$t2, $t0, $a6
	add.d	$t3, $t4, $a6
	xvldx	$xr3, $t4, $a6
	xvld	$xr4, $t3, 32
	xvst	$xr1, $t2, -32
	xvstx	$xr1, $t0, $a6
	xvfmadd.s	$xr3, $xr0, $xr2, $xr3
	xvfmadd.s	$xr4, $xr0, $xr2, $xr4
	add.d	$t2, $a1, $a6
	xvst	$xr3, $t2, 4
	xvst	$xr4, $t2, 36
	addi.d	$t1, $t1, -16
	addi.d	$a6, $a6, 64
	bnez	$t1, .LBB6_164
# %bb.165:                              # %middle.block1134
	beq	$a4, $a7, .LBB6_173
# %bb.166:                              # %vec.epilog.iter.check
	andi	$a6, $a4, 12
	beqz	$a6, .LBB6_170
.LBB6_167:                              # %vec.epilog.ph
	move	$t0, $a4
	bstrins.d	$t0, $zero, 1, 0
	ori	$t1, $zero, 1
	move	$a6, $a4
	bstrins.d	$a6, $t1, 1, 0
	vreplvei.w	$vr0, $vr19, 0
	slli.d	$t1, $a7, 2
	addi.d	$t2, $a2, 4
	sub.d	$a7, $a7, $t0
	vrepli.b	$vr1, 0
	vreplgr2vr.w	$vr2, $a5
	.p2align	4, , 16
.LBB6_168:                              # %vec.epilog.vector.body
                                        # =>This Inner Loop Header: Depth=1
	vldx	$vr3, $t4, $t1
	vstx	$vr1, $t2, $t1
	vfmadd.s	$vr3, $vr0, $vr2, $vr3
	add.d	$a5, $a1, $t1
	vst	$vr3, $a5, 4
	addi.d	$a7, $a7, 4
	addi.d	$t1, $t1, 16
	bnez	$a7, .LBB6_168
# %bb.169:                              # %vec.epilog.middle.block
	bne	$a4, $t0, .LBB6_171
	b	.LBB6_173
.LBB6_170:
	addi.d	$a6, $a7, 1
.LBB6_171:                              # %vec.epilog.scalar.ph.preheader
	ld.d	$a4, $sp, 264                   # 8-byte Folded Reload
	fld.s	$fa0, $a4, %pc_lo12(.LCPI6_2)
	addi.d	$a4, $t4, -4
	slli.d	$a5, $a6, 2
	sub.d	$a3, $a3, $a6
	.p2align	4, , 16
.LBB6_172:                              # %vec.epilog.scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	fldx.s	$fa1, $a4, $a5
	stx.w	$zero, $a2, $a5
	fmadd.s	$fa1, $ft11, $fa0, $fa1
	fstx.s	$fa1, $a1, $a5
	addi.d	$a3, $a3, -1
	addi.d	$a5, $a5, 4
	bnez	$a3, .LBB6_172
.LBB6_173:
	move	$t2, $zero
.LBB6_174:                              # %._crit_edge590.thread
	ori	$a2, $zero, 0
	lu32i.d	$a2, -1
	add.d	$a2, $a0, $a2
	srai.d	$a2, $a2, 30
	fldx.s	$fa0, $t4, $a2
	st.d	$t2, $sp, 400                   # 8-byte Folded Spill
	move	$t2, $zero
.LBB6_175:
	ld.w	$s3, $t6, 0
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a3, $a2, %pc_lo12(Q__align_gapmap.lastverticalw)
	sltu	$a2, $zero, $s3
	add.w	$a4, $a2, $s7
	ori	$a2, $zero, 2
	st.d	$a3, $sp, 392                   # 8-byte Folded Spill
	fst.s	$fa0, $a3, 0
	st.d	$a4, $sp, 384                   # 8-byte Folded Spill
	blt	$a4, $a2, .LBB6_193
# %bb.176:                              # %.lr.ph626
	st.d	$t6, $sp, 40                    # 8-byte Folded Spill
	ld.d	$a2, $sp, 352                   # 8-byte Folded Reload
	ld.d	$t3, $a2, %pc_lo12(Q__align_gapmap.initverticalw)
	ld.d	$a2, $sp, 376                   # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(Q__align_gapmap.cpmx1)
	st.d	$a2, $sp, 240                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 360                   # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(Q__align_gapmap.cpmx2)
	st.d	$a2, $sp, 232                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 224                   # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(Q__align_gapmap.floatwork)
	st.d	$a2, $sp, 224                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 216                   # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(Q__align_gapmap.intwork)
	st.d	$a2, $sp, 216                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 344                   # 8-byte Folded Reload
	slli.d	$a2, $a2, 2
	bstrpick.d	$a2, $a2, 33, 2
	slli.d	$a2, $a2, 2
	st.d	$a2, $sp, 112                   # 8-byte Folded Spill
	pcalau12i	$a2, %pc_hi20(impmtx)
	ld.d	$a2, $a2, %pc_lo12(impmtx)
	st.d	$a2, $sp, 120                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(Q__align_gapmap.ijp)
	st.d	$a2, $sp, 208                   # 8-byte Folded Spill
	ld.d	$a2, $s5, %pc_lo12(Q__align_gapmap.mp)
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a3, $a3, %pc_lo12(Q__align_gapmap.fg_t_og_h_dg_n2_p)
	ld.d	$a4, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a4, $a4, %pc_lo12(Q__align_gapmap.gapz_n2)
	ld.d	$a5, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a5, $a5, %pc_lo12(Q__align_gapmap.og_t_fg_h_dg_n2_p)
	ld.d	$a6, $sp, 200                   # 8-byte Folded Reload
	ld.d	$a6, $a6, %pc_lo12(Q__align_gapmap.og_h_dg_n2_p)
	ld.d	$a7, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a7, $a7, %pc_lo12(Q__align_gapmap.fg_h_dg_n2_p)
	addi.d	$t6, $a4, 8
	ld.d	$a4, $sp, 424                   # 8-byte Folded Reload
	ld.d	$a4, $a4, %pc_lo12(Q__align_gapmap.fgcp2g)
	ld.d	$t0, $sp, 432                   # 8-byte Folded Reload
	ld.d	$t0, $t0, %pc_lo12(Q__align_gapmap.ogcp2g)
	ld.d	$t1, $sp, 160                   # 8-byte Folded Reload
	ld.d	$t1, $t1, %pc_lo12(Q__align_gapmap.fg_t_og_h_dg_n1_p)
	st.d	$t1, $sp, 200                   # 8-byte Folded Spill
	ld.d	$t1, $sp, 184                   # 8-byte Folded Reload
	ld.d	$t1, $t1, %pc_lo12(Q__align_gapmap.og_t_fg_h_dg_n1_p)
	st.d	$t1, $sp, 192                   # 8-byte Folded Spill
	ld.d	$t1, $sp, 248                   # 8-byte Folded Reload
	ld.d	$t1, $t1, %pc_lo12(Q__align_gapmap.og_h_dg_n1_p)
	st.d	$t1, $sp, 184                   # 8-byte Folded Spill
	ld.d	$t1, $sp, 176                   # 8-byte Folded Reload
	ld.d	$t1, $t1, %pc_lo12(Q__align_gapmap.fg_h_dg_n1_p)
	st.d	$t1, $sp, 176                   # 8-byte Folded Spill
	ld.d	$t1, $sp, 168                   # 8-byte Folded Reload
	ld.d	$t1, $t1, %pc_lo12(Q__align_gapmap.gapz_n1)
	st.d	$t1, $sp, 168                   # 8-byte Folded Spill
	ld.d	$t1, $sp, 440                   # 8-byte Folded Reload
	ld.d	$t1, $t1, %pc_lo12(Q__align_gapmap.fgcp1g)
	st.d	$t1, $sp, 160                   # 8-byte Folded Spill
	ld.d	$t1, $sp, 448                   # 8-byte Folded Reload
	ld.d	$t1, $t1, %pc_lo12(Q__align_gapmap.ogcp1g)
	st.d	$t1, $sp, 152                   # 8-byte Folded Spill
	ori	$t1, $zero, 0
	lu32i.d	$t1, -1
	add.d	$a0, $a0, $t1
	srai.d	$a0, $a0, 30
	st.d	$a0, $sp, 376                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	st.d	$t2, $sp, 248                   # 8-byte Folded Spill
	or	$a0, $a0, $t2
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	addi.d	$s3, $a1, 4
	addi.d	$s0, $a2, 4
	addi.d	$s2, $a3, 4
	addi.d	$s8, $a5, 4
	addi.d	$s5, $a6, 4
	addi.d	$s1, $a7, 4
	addi.d	$s4, $a4, 4
	addi.d	$s6, $t0, 4
	movgr2fr.w	$fs0, $zero
	ori	$s7, $zero, 1
	st.d	$t3, $sp, 360                   # 8-byte Folded Spill
	st.d	$t6, $sp, 352                   # 8-byte Folded Spill
	b	.LBB6_178
	.p2align	4, , 16
.LBB6_177:                              # %._crit_edge618
                                        #   in Loop: Header=BB6_178 Depth=1
	ld.d	$a1, $sp, 376                   # 8-byte Folded Reload
	fldx.s	$fa0, $t1, $a1
	ld.d	$a1, $sp, 392                   # 8-byte Folded Reload
	fstx.s	$fa0, $a1, $t4
	move	$s7, $a0
	move	$t4, $t1
	ld.d	$a1, $sp, 384                   # 8-byte Folded Reload
	beq	$a0, $a1, .LBB6_194
.LBB6_178:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_183 Depth 2
                                        #     Child Loop BB6_187 Depth 2
	addi.d	$t2, $s7, -1
	slli.d	$a0, $t2, 2
	fldx.s	$fa0, $t3, $a0
	move	$t1, $t5
	move	$t5, $t4
	fst.s	$fa0, $t4, 0
	ld.d	$a0, $sp, 408                   # 8-byte Folded Reload
	ld.bu	$a0, $a0, 0
	slli.d	$t4, $s7, 2
	ori	$a1, $zero, 114
	bne	$a0, $a1, .LBB6_181
# %bb.179:                              #   in Loop: Header=BB6_178 Depth=1
	ld.d	$a0, $sp, 248                   # 8-byte Folded Reload
	bnez	$a0, .LBB6_184
# %bb.180:                              # %clearvec.exit537.thread
                                        #   in Loop: Header=BB6_178 Depth=1
	move	$a0, $t1
	move	$a1, $zero
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	st.d	$t5, $sp, 448                   # 8-byte Folded Spill
	st.d	$t1, $sp, 440                   # 8-byte Folded Spill
	st.d	$t2, $sp, 432                   # 8-byte Folded Spill
	st.d	$t4, $sp, 424                   # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$t4, $sp, 424                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 432                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 440                   # 8-byte Folded Reload
	ld.d	$t6, $sp, 352                   # 8-byte Folded Reload
	ld.d	$t3, $sp, 360                   # 8-byte Folded Reload
	ld.d	$t5, $sp, 448                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 416                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	beqz	$a0, .LBB6_182
	b	.LBB6_184
	.p2align	4, , 16
.LBB6_181:                              # %clearvec.exit537
                                        #   in Loop: Header=BB6_178 Depth=1
	move	$a0, $t1
	ld.d	$a1, $sp, 240                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 232                   # 8-byte Folded Reload
	move	$a3, $s7
	move	$a4, $ra
	ld.d	$a5, $sp, 224                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 216                   # 8-byte Folded Reload
	move	$a7, $zero
	st.d	$t5, $sp, 448                   # 8-byte Folded Spill
	st.d	$t1, $sp, 440                   # 8-byte Folded Spill
	st.d	$t2, $sp, 432                   # 8-byte Folded Spill
	st.d	$t4, $sp, 424                   # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(match_calc)
	jirl	$ra, $ra, 0
	ld.d	$t4, $sp, 424                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 432                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 440                   # 8-byte Folded Reload
	ld.d	$t6, $sp, 352                   # 8-byte Folded Reload
	ld.d	$t3, $sp, 360                   # 8-byte Folded Reload
	ld.d	$t5, $sp, 448                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 416                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	bnez	$a0, .LBB6_184
.LBB6_182:                              # %.lr.ph.i539.preheader
                                        #   in Loop: Header=BB6_178 Depth=1
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	ldx.w	$a0, $a0, $t4
	slli.d	$a0, $a0, 3
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	ldx.d	$a0, $a1, $a0
	ld.d	$a3, $sp, 280                   # 8-byte Folded Reload
	move	$a2, $t1
	ld.d	$a1, $sp, 344                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB6_183:                              # %.lr.ph.i539
                                        #   Parent Loop BB6_178 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
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
	bnez	$a1, .LBB6_183
.LBB6_184:                              # %imp_match_out_veadQ_gapmap.exit544
                                        #   in Loop: Header=BB6_178 Depth=1
	fldx.s	$fa0, $t3, $t4
	fst.s	$fa0, $t1, 0
	addi.d	$a0, $s7, 1
	ld.d	$a1, $sp, 400                   # 8-byte Folded Reload
	bnez	$a1, .LBB6_177
# %bb.185:                              # %.lr.ph617.preheader
                                        #   in Loop: Header=BB6_178 Depth=1
	move	$a1, $zero
	move	$a2, $zero
	move	$a3, $zero
	ld.d	$a4, $sp, 200                   # 8-byte Folded Reload
	fldx.s	$fa0, $a4, $t4
	ld.d	$a4, $sp, 192                   # 8-byte Folded Reload
	fldx.s	$fa1, $a4, $t4
	ld.d	$a4, $sp, 184                   # 8-byte Folded Reload
	fldx.s	$fa2, $a4, $t4
	ld.d	$a4, $sp, 176                   # 8-byte Folded Reload
	fldx.s	$fa3, $a4, $t4
	ld.d	$a5, $sp, 168                   # 8-byte Folded Reload
	fldx.s	$fa4, $a5, $t4
	slli.d	$a4, $a0, 2
	fldx.s	$fa5, $a5, $a4
	ld.d	$a4, $sp, 160                   # 8-byte Folded Reload
	fldx.s	$fa6, $a4, $t4
	fld.s	$ft0, $t5, 0
	ld.d	$a4, $sp, 264                   # 8-byte Folded Reload
	fld.s	$ft1, $a4, %pc_lo12(.LCPI6_2)
	slli.d	$a4, $s7, 3
	ld.d	$a5, $sp, 208                   # 8-byte Folded Reload
	ldx.d	$a5, $a5, $a4
	ld.d	$a4, $sp, 152                   # 8-byte Folded Reload
	fldx.s	$fa7, $a4, $t4
	xvld	$xr10, $sp, 288                 # 32-byte Folded Reload
	fmadd.s	$ft0, $ft2, $ft1, $ft0
	addi.d	$a4, $t1, 4
	addi.d	$a5, $a5, 4
	addi.d	$a6, $zero, -1
	b	.LBB6_187
	.p2align	4, , 16
.LBB6_186:                              #   in Loop: Header=BB6_187 Depth=2
	fmul.s	$ft2, $fa4, $ft2
	fadd.s	$ft1, $ft1, $ft2
	fcmp.cult.s	$fcc0, $ft1, $ft0
	fsel	$ft0, $ft1, $ft0, $fcc0
	movcf2gr	$a7, $fcc0
	fldx.s	$ft1, $a4, $a2
	masknez	$t0, $a1, $a7
	maskeqz	$a3, $a3, $a7
	or	$a3, $a3, $t0
	fadd.s	$ft1, $fs0, $ft1
	fstx.s	$ft1, $a4, $a2
	addi.d	$a2, $a2, 4
	addi.w	$a1, $a1, 1
	addi.d	$a6, $a6, -1
	beq	$ra, $a1, .LBB6_177
.LBB6_187:                              # %.lr.ph617
                                        #   Parent Loop BB6_178 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fldx.s	$ft2, $s5, $a2
	fldx.s	$ft1, $t5, $a2
	fldx.s	$ft3, $s6, $a2
	fmul.s	$ft2, $fa7, $ft2
	fadd.s	$ft2, $ft1, $ft2
	fldx.s	$ft4, $s1, $a2
	fmul.s	$ft3, $fa2, $ft3
	fadd.s	$ft2, $ft2, $ft3
	fldx.s	$ft3, $s4, $a2
	fmul.s	$ft4, $fa6, $ft4
	fldx.s	$ft5, $s2, $a2
	fadd.s	$ft2, $ft2, $ft4
	fmul.s	$ft3, $fa3, $ft3
	fadd.s	$fs0, $ft2, $ft3
	fmul.s	$ft2, $fa5, $ft5
	fadd.s	$ft2, $ft0, $ft2
	fcmp.cule.s	$fcc0, $ft2, $fs0
	stx.w	$zero, $a5, $a2
	bcnez	$fcc0, .LBB6_189
# %bb.188:                              #   in Loop: Header=BB6_187 Depth=2
	add.d	$a7, $a3, $a6
	stx.w	$a7, $a5, $a2
	fmov.s	$fs0, $ft2
.LBB6_189:                              #   in Loop: Header=BB6_187 Depth=2
	add.d	$a7, $t6, $a2
	fld.s	$ft4, $a7, 0
	fldx.s	$ft3, $s3, $a2
	fldx.s	$ft2, $s8, $a2
	fmul.s	$ft4, $fa0, $ft4
	fadd.s	$ft4, $ft3, $ft4
	fcmp.cule.s	$fcc0, $ft4, $fs0
	bcnez	$fcc0, .LBB6_191
# %bb.190:                              #   in Loop: Header=BB6_187 Depth=2
	ldx.w	$t0, $s0, $a2
	sub.d	$t0, $s7, $t0
	stx.w	$t0, $a5, $a2
	fmov.s	$fs0, $ft4
.LBB6_191:                              #   in Loop: Header=BB6_187 Depth=2
	fld.s	$ft4, $a7, -4
	fmul.s	$ft4, $fa1, $ft4
	fadd.s	$ft4, $ft1, $ft4
	fcmp.cult.s	$fcc0, $ft4, $ft3
	bcnez	$fcc0, .LBB6_186
# %bb.192:                              #   in Loop: Header=BB6_187 Depth=2
	fstx.s	$ft4, $s3, $a2
	stx.w	$t2, $s0, $a2
	b	.LBB6_186
.LBB6_193:
	movgr2fr.w	$fs0, $zero
	bnez	$s3, .LBB6_209
	b	.LBB6_195
.LBB6_194:                              # %._crit_edge627.loopexit
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.w	$s3, $a0, 0
	move	$t4, $t1
	ld.d	$s8, $sp, 464                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 472                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 128                   # 8-byte Folded Reload
	bnez	$s3, .LBB6_209
.LBB6_195:                              # %.preheader555
	ld.d	$a0, $sp, 400                   # 8-byte Folded Reload
	bnez	$a0, .LBB6_202
# %bb.196:                              # %.lr.ph632
	pcalau12i	$a0, %got_pc_hi20(offset)
	ld.d	$a0, $a0, %got_pc_lo12(offset)
	ld.w	$a0, $a0, 0
	ld.d	$a1, $sp, 344                   # 8-byte Folded Reload
	addi.d	$a1, $a1, 1
	bstrpick.d	$a1, $a1, 31, 0
	addi.d	$a2, $a1, -1
	ori	$a4, $zero, 8
	ori	$a3, $zero, 1
	bltu	$a2, $a4, .LBB6_200
# %bb.197:                              # %vector.ph1148
	move	$a4, $a2
	bstrins.d	$a4, $zero, 2, 0
	ori	$a5, $zero, 1
	move	$a3, $a2
	bstrins.d	$a3, $a5, 2, 0
	xvreplgr2vr.w	$xr0, $a0
	ld.d	$a5, $sp, 344                   # 8-byte Folded Reload
	xvreplgr2vr.d	$xr1, $a5
	pcalau12i	$a5, %pc_hi20(.LCPI6_3)
	xvld	$xr2, $a5, %pc_lo12(.LCPI6_3)
	pcalau12i	$a5, %pc_hi20(.LCPI6_4)
	xvld	$xr3, $a5, %pc_lo12(.LCPI6_4)
	addi.d	$a5, $t4, 4
	lu52i.d	$a6, $zero, -1026
	xvreplgr2vr.d	$xr4, $a6
	move	$a6, $a4
	.p2align	4, , 16
.LBB6_198:                              # %vector.body1155
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
	xvst	$xr5, $sp, 512
	vld	$vr5, $sp, 528
	xvld	$xr6, $a5, 0
	vext2xv.d.w	$xr5, $xr5
	vld	$vr7, $sp, 512
	xvffint.d.l	$xr5, $xr5
	xvst	$xr6, $sp, 480
	vld	$vr6, $sp, 480
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
	vld	$vr8, $sp, 496
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
	bnez	$a6, .LBB6_198
# %bb.199:                              # %middle.block1162
	beq	$a2, $a4, .LBB6_202
.LBB6_200:                              # %scalar.ph1146.preheader
	ld.d	$a2, $sp, 344                   # 8-byte Folded Reload
	sub.w	$a2, $a2, $a3
	mul.d	$a2, $a0, $a2
	alsl.d	$a4, $a3, $t4, 2
	sub.d	$a1, $a1, $a3
	vldi	$vr0, -800
	.p2align	4, , 16
.LBB6_201:                              # %scalar.ph1146
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
	bnez	$a1, .LBB6_201
.LBB6_202:                              # %.preheader554
	ori	$a0, $zero, 1
	blt	$s1, $a0, .LBB6_209
# %bb.203:                              # %.lr.ph635
	pcalau12i	$a1, %got_pc_hi20(offset)
	ld.d	$a1, $a1, %got_pc_lo12(offset)
	ld.w	$a1, $a1, 0
	bstrpick.d	$a2, $s7, 31, 0
	movgr2fr.w	$fa0, $a1
	ffint.d.w	$fa1, $fa0
	movgr2fr.d	$fa0, $a2
	ffint.d.l	$fa0, $fa0
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(Q__align_gapmap.lastverticalw)
	addi.d	$a2, $s7, 1
	bstrpick.d	$a2, $a2, 31, 0
	addi.d	$a3, $a2, -1
	ori	$a4, $zero, 4
	fneg.d	$fa1, $fa1
	bltu	$a3, $a4, .LBB6_207
# %bb.204:                              # %vector.ph1167
	move	$a4, $a3
	bstrins.d	$a4, $zero, 1, 0
	ori	$a5, $zero, 1
	move	$a0, $a3
	bstrins.d	$a0, $a5, 1, 0
	xvreplve0.d	$xr2, $xr0
	xvreplve0.d	$xr3, $xr1
	pcalau12i	$a5, %pc_hi20(.LCPI6_5)
	vld	$vr4, $a5, %pc_lo12(.LCPI6_5)
	addi.d	$a5, $a1, 4
	lu52i.d	$a6, $zero, -1026
	xvreplgr2vr.d	$xr5, $a6
	move	$a6, $a4
	.p2align	4, , 16
.LBB6_205:                              # %vector.body1174
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
	bnez	$a6, .LBB6_205
# %bb.206:                              # %middle.block1181
	beq	$a3, $a4, .LBB6_209
.LBB6_207:                              # %scalar.ph1165.preheader
	alsl.d	$a1, $a0, $a1, 2
	sub.d	$a2, $a2, $a0
	vldi	$vr2, -800
	.p2align	4, , 16
.LBB6_208:                              # %scalar.ph1165
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
	bnez	$a2, .LBB6_208
.LBB6_209:                              # %.loopexit
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s4, $a0, %pc_lo12(Q__align_gapmap.lastverticalw)
	ld.d	$s5, $s6, %pc_lo12(Q__align_gapmap.mseq1)
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	move	$s1, $s6
	ld.d	$s6, $a0, %pc_lo12(Q__align_gapmap.mseq2)
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s7, $a0, %pc_lo12(Q__align_gapmap.ijp)
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	beqz	$a0, .LBB6_211
# %bb.210:
	st.d	$s8, $sp, 0
	move	$a0, $t4
	move	$a1, $s4
	ld.d	$a2, $sp, 456                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 256                   # 8-byte Folded Reload
	move	$a4, $s5
	move	$a5, $s6
	move	$a6, $s7
	move	$a7, $s2
	pcaddu18i	$ra, %call36(Atracking)
	jirl	$ra, $ra, 0
	ld.d	$s5, $s1, %pc_lo12(Q__align_gapmap.mseq1)
	b	.LBB6_285
.LBB6_211:
	ld.d	$a0, $sp, 456                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	move	$s0, $t4
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	move	$s8, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ori	$a3, $zero, 1
	addi.w	$a1, $s8, 0
	addi.w	$a2, $a0, 0
	beq	$s3, $a3, .LBB6_222
# %bb.212:
	move	$t0, $s0
	fld.s	$fa0, $s4, 0
	blt	$a1, $a3, .LBB6_217
# %bb.213:                              # %.lr.ph.i545
	slli.d	$a3, $s8, 3
	bstrpick.d	$a3, $a3, 33, 3
	slli.d	$a3, $a3, 3
	slli.d	$a4, $a0, 32
	srai.d	$a4, $a4, 30
	bstrpick.d	$a5, $s8, 30, 0
	move	$a6, $s8
	b	.LBB6_215
	.p2align	4, , 16
.LBB6_214:                              #   in Loop: Header=BB6_215 Depth=1
	addi.d	$a5, $a5, -1
	addi.d	$a6, $a6, -1
	addi.d	$s4, $s4, 4
	beqz	$a5, .LBB6_217
.LBB6_215:                              # =>This Inner Loop Header: Depth=1
	fld.s	$fa1, $s4, 0
	fcmp.cult.s	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB6_214
# %bb.216:                              #   in Loop: Header=BB6_215 Depth=1
	ldx.d	$a7, $s7, $a3
	stx.w	$a6, $a7, $a4
	fmov.s	$fa0, $fa1
	b	.LBB6_214
.LBB6_217:                              # %.preheader9.i
	ori	$a3, $zero, 1
	blt	$a2, $a3, .LBB6_222
# %bb.218:                              # %.lr.ph14.i
	slli.d	$a3, $s8, 32
	srai.d	$a3, $a3, 29
	slli.d	$a4, $a0, 2
	bstrpick.d	$a4, $a4, 32, 2
	slli.d	$a4, $a4, 2
	bstrpick.d	$a5, $a0, 30, 0
	sub.d	$a6, $zero, $a0
	b	.LBB6_220
	.p2align	4, , 16
.LBB6_219:                              #   in Loop: Header=BB6_220 Depth=1
	addi.d	$a5, $a5, -1
	addi.d	$a6, $a6, 1
	addi.d	$t0, $t0, 4
	beqz	$a5, .LBB6_222
.LBB6_220:                              # =>This Inner Loop Header: Depth=1
	fld.s	$fa1, $t0, 0
	fcmp.cult.s	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB6_219
# %bb.221:                              #   in Loop: Header=BB6_220 Depth=1
	ldx.d	$a7, $s7, $a3
	stx.w	$a6, $a7, $a4
	fmov.s	$fa0, $fa1
	b	.LBB6_219
.LBB6_222:                              # %.loopexit.i
	ld.d	$ra, $sp, 256                   # 8-byte Folded Reload
	bltz	$a1, .LBB6_230
# %bb.223:                              # %.lr.ph17.preheader.i
	addi.d	$a4, $s8, 1
	bstrpick.d	$a3, $a4, 31, 0
	ori	$a5, $zero, 4
	bgeu	$a3, $a5, .LBB6_225
# %bb.224:
	move	$a4, $zero
	b	.LBB6_228
.LBB6_225:                              # %vector.ph1186
	pcalau12i	$a5, %pc_hi20(.LCPI6_6)
	vld	$vr0, $a5, %pc_lo12(.LCPI6_6)
	bstrpick.d	$a4, $a4, 31, 2
	slli.d	$a4, $a4, 2
	addi.d	$a5, $s7, 16
	move	$a6, $a4
	.p2align	4, , 16
.LBB6_226:                              # %vector.body1189
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr1, $a5, -16
	vld	$vr2, $a5, 0
	vshuf4i.w	$vr3, $vr0, 8
	vaddi.wu	$vr4, $vr3, 1
	vaddi.wu	$vr3, $vr3, 3
	vpickve2gr.w	$a7, $vr4, 0
	vpickve2gr.d	$t0, $vr1, 0
	st.w	$a7, $t0, 0
	vpickve2gr.w	$a7, $vr4, 1
	vpickve2gr.d	$t0, $vr1, 1
	st.w	$a7, $t0, 0
	vpickve2gr.w	$a7, $vr3, 0
	vpickve2gr.d	$t0, $vr2, 0
	st.w	$a7, $t0, 0
	vpickve2gr.w	$a7, $vr3, 1
	vpickve2gr.d	$t0, $vr2, 1
	st.w	$a7, $t0, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a6, $a6, -4
	addi.d	$a5, $a5, 32
	bnez	$a6, .LBB6_226
# %bb.227:                              # %middle.block1196
	beq	$a3, $a4, .LBB6_230
.LBB6_228:                              # %.lr.ph17.i.preheader
	alsl.d	$a5, $a4, $s7, 3
	sub.d	$a3, $a3, $a4
	addi.d	$a4, $a4, 1
	.p2align	4, , 16
.LBB6_229:                              # %.lr.ph17.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a6, $a5, 0
	st.w	$a4, $a6, 0
	addi.d	$a5, $a5, 8
	addi.d	$a3, $a3, -1
	addi.d	$a4, $a4, 1
	bnez	$a3, .LBB6_229
.LBB6_230:                              # %.preheader8.i
	bltz	$a2, .LBB6_244
# %bb.231:                              # %iter.check1202
	ld.d	$a2, $s7, 0
	addi.d	$a5, $a0, 1
	bstrpick.d	$a3, $a5, 31, 0
	ori	$a4, $zero, 3
	bltu	$a4, $a3, .LBB6_233
# %bb.232:
	move	$a4, $zero
	b	.LBB6_242
.LBB6_233:                              # %vector.main.loop.iter.check1204
	ori	$a4, $zero, 16
	bgeu	$a3, $a4, .LBB6_235
# %bb.234:
	move	$a4, $zero
	b	.LBB6_239
.LBB6_235:                              # %vector.ph1205
	bstrpick.d	$a4, $a5, 31, 4
	slli.d	$a4, $a4, 4
	pcalau12i	$a6, %pc_hi20(.LCPI6_7)
	xvld	$xr0, $a6, %pc_lo12(.LCPI6_7)
	addi.d	$a6, $a2, 32
	xvrepli.b	$xr1, -1
	xvrepli.w	$xr2, -9
	move	$a7, $a4
	.p2align	4, , 16
.LBB6_236:                              # %vector.body1208
                                        # =>This Inner Loop Header: Depth=1
	xvxor.v	$xr3, $xr0, $xr1
	xvsub.w	$xr4, $xr2, $xr0
	xvst	$xr3, $a6, -32
	xvst	$xr4, $a6, 0
	xvaddi.wu	$xr0, $xr0, 16
	addi.d	$a7, $a7, -16
	addi.d	$a6, $a6, 64
	bnez	$a7, .LBB6_236
# %bb.237:                              # %middle.block1214
	beq	$a3, $a4, .LBB6_244
# %bb.238:                              # %vec.epilog.iter.check1219
	andi	$a6, $a5, 12
	beqz	$a6, .LBB6_242
.LBB6_239:                              # %vec.epilog.ph1218
	move	$a6, $a4
	pcalau12i	$a4, %pc_hi20(.LCPI6_8)
	vld	$vr0, $a4, %pc_lo12(.LCPI6_8)
	bstrpick.d	$a4, $a5, 31, 2
	slli.d	$a4, $a4, 2
	vreplgr2vr.w	$vr1, $a6
	vor.v	$vr0, $vr1, $vr0
	sub.d	$a5, $a6, $a4
	alsl.d	$a6, $a6, $a2, 2
	vrepli.b	$vr1, -1
	.p2align	4, , 16
.LBB6_240:                              # %vec.epilog.vector.body1224
                                        # =>This Inner Loop Header: Depth=1
	vxor.v	$vr2, $vr0, $vr1
	vst	$vr2, $a6, 0
	vaddi.wu	$vr0, $vr0, 4
	addi.d	$a5, $a5, 4
	addi.d	$a6, $a6, 16
	bnez	$a5, .LBB6_240
# %bb.241:                              # %vec.epilog.middle.block1229
	beq	$a3, $a4, .LBB6_244
.LBB6_242:                              # %vec.epilog.scalar.ph1217.preheader
	alsl.d	$a2, $a4, $a2, 2
	nor	$a5, $a4, $zero
	sub.d	$a3, $a3, $a4
	.p2align	4, , 16
.LBB6_243:                              # %vec.epilog.scalar.ph1217
                                        # =>This Inner Loop Header: Depth=1
	st.w	$a5, $a2, 0
	addi.d	$a2, $a2, 4
	addi.d	$a3, $a3, -1
	addi.d	$a5, $a5, -1
	bnez	$a3, .LBB6_243
.LBB6_244:                              # %.preheader7.i
	ori	$a4, $zero, 1
	add.w	$a2, $a0, $s8
	blt	$s2, $a4, .LBB6_247
# %bb.245:                              # %.lr.ph22.i
	move	$a3, $s5
	move	$a5, $s2
	.p2align	4, , 16
.LBB6_246:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a6, $a3, 0
	add.d	$a7, $a6, $a2
	st.d	$a7, $a3, 0
	stx.b	$zero, $a6, $a2
	addi.d	$a5, $a5, -1
	addi.d	$a3, $a3, 8
	bnez	$a5, .LBB6_246
.LBB6_247:                              # %.preheader6.i
	ld.d	$a3, $fp, 0
	ld.d	$a5, $sp, 464                   # 8-byte Folded Reload
	blt	$a5, $a4, .LBB6_250
# %bb.248:                              # %.lr.ph24.i
	move	$a4, $s6
	ld.d	$a5, $sp, 464                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB6_249:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a6, $a4, 0
	add.d	$a7, $a6, $a2
	st.d	$a7, $a4, 0
	stx.b	$zero, $a6, $a2
	addi.d	$a5, $a5, -1
	addi.d	$a4, $a4, 8
	bnez	$a5, .LBB6_249
.LBB6_250:                              # %._crit_edge.i
	st.w	$zero, $a3, 0
	bltz	$a2, .LBB6_283
# %bb.251:                              # %.lr.ph53.i
	move	$a4, $zero
	pcalau12i	$a5, %pc_hi20(impmtx)
	ld.d	$a5, $a5, %pc_lo12(impmtx)
	bstrpick.d	$a6, $s2, 31, 0
	ld.d	$a7, $sp, 464                   # 8-byte Folded Reload
	bstrpick.d	$a7, $a7, 31, 0
	ori	$t0, $zero, 1
	ori	$t1, $zero, 45
	move	$t2, $a0
	b	.LBB6_253
	.p2align	4, , 16
.LBB6_252:                              # %._crit_edge47.i
                                        #   in Loop: Header=BB6_253 Depth=1
	addi.w	$a4, $a4, 2
	move	$s8, $t3
	blt	$a2, $a4, .LBB6_283
.LBB6_253:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_258 Depth 2
                                        #       Child Loop BB6_259 Depth 3
                                        #       Child Loop BB6_261 Depth 3
                                        #     Child Loop BB6_267 Depth 2
                                        #       Child Loop BB6_268 Depth 3
                                        #       Child Loop BB6_270 Depth 3
                                        #     Child Loop BB6_278 Depth 2
                                        #     Child Loop BB6_281 Depth 2
	addi.w	$t4, $s8, 0
	slli.d	$t3, $t4, 3
	ldx.d	$t3, $s7, $t3
	addi.w	$t5, $t2, 0
	slli.d	$t6, $t5, 2
	ldx.w	$t7, $t3, $t6
	ld.d	$t3, $sp, 368                   # 8-byte Folded Reload
	bge	$t3, $t7, .LBB6_263
# %bb.254:                              #   in Loop: Header=BB6_253 Depth=1
	beqz	$t7, .LBB6_282
# %bb.255:                              #   in Loop: Header=BB6_253 Depth=1
	sub.w	$t3, $s8, $t7
	ld.d	$t7, $sp, 368                   # 8-byte Folded Reload
	nor	$t8, $t3, $zero
	add.w	$t8, $s8, $t8
	beqz	$t8, .LBB6_264
.LBB6_256:                              # %.preheader3.preheader.i
                                        #   in Loop: Header=BB6_253 Depth=1
	addi.d	$s0, $s8, -1
	b	.LBB6_258
	.p2align	4, , 16
.LBB6_257:                              # %._crit_edge29.i
                                        #   in Loop: Header=BB6_258 Depth=2
	addi.d	$t8, $t8, -1
	beqz	$t8, .LBB6_262
.LBB6_258:                              # %.preheader3.i
                                        #   Parent Loop BB6_253 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB6_259 Depth 3
                                        #       Child Loop BB6_261 Depth 3
	ld.d	$s1, $sp, 456                   # 8-byte Folded Reload
	move	$s2, $s5
	move	$s3, $a6
	ld.d	$s4, $sp, 472                   # 8-byte Folded Reload
	blt	$s4, $t0, .LBB6_260
	.p2align	4, , 16
.LBB6_259:                              # %.lr.ph26.i
                                        #   Parent Loop BB6_253 Depth=1
                                        #     Parent Loop BB6_258 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$s4, $s1, 0
	ld.d	$s8, $s2, 0
	add.d	$s4, $s4, $t8
	ldx.b	$s4, $s4, $t3
	addi.d	$ra, $s8, -1
	st.d	$ra, $s2, 0
	st.b	$s4, $s8, -1
	addi.d	$s3, $s3, -1
	addi.d	$s2, $s2, 8
	addi.d	$s1, $s1, 8
	bnez	$s3, .LBB6_259
.LBB6_260:                              # %.preheader2.i
                                        #   in Loop: Header=BB6_258 Depth=2
	move	$s1, $s6
	move	$s2, $a7
	ld.d	$s3, $sp, 464                   # 8-byte Folded Reload
	blt	$s3, $t0, .LBB6_257
	.p2align	4, , 16
.LBB6_261:                              # %.lr.ph28.i
                                        #   Parent Loop BB6_253 Depth=1
                                        #     Parent Loop BB6_258 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$s3, $s1, 0
	addi.d	$s4, $s3, -1
	st.d	$s4, $s1, 0
	st.b	$t1, $s3, -1
	addi.d	$s2, $s2, -1
	addi.d	$s1, $s1, 8
	bnez	$s2, .LBB6_261
	b	.LBB6_257
	.p2align	4, , 16
.LBB6_262:                              # %._crit_edge32.loopexit.i
                                        #   in Loop: Header=BB6_253 Depth=1
	add.d	$a4, $s0, $a4
	sub.d	$a4, $a4, $t3
	ld.d	$s8, $sp, 464                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 256                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 472                   # 8-byte Folded Reload
	add.w	$t2, $t7, $t2
	ld.d	$t8, $sp, 368                   # 8-byte Folded Reload
	bne	$t7, $t8, .LBB6_265
	b	.LBB6_271
	.p2align	4, , 16
.LBB6_263:                              #   in Loop: Header=BB6_253 Depth=1
	addi.w	$t3, $s8, -1
	nor	$t8, $t3, $zero
	add.w	$t8, $s8, $t8
	bnez	$t8, .LBB6_256
.LBB6_264:                              #   in Loop: Header=BB6_253 Depth=1
	ld.d	$s8, $sp, 464                   # 8-byte Folded Reload
	add.w	$t2, $t7, $t2
	ld.d	$t8, $sp, 368                   # 8-byte Folded Reload
	beq	$t7, $t8, .LBB6_271
.LBB6_265:                              # %.preheader1.preheader.i
                                        #   in Loop: Header=BB6_253 Depth=1
	nor	$t7, $t7, $zero
	b	.LBB6_267
	.p2align	4, , 16
.LBB6_266:                              # %._crit_edge38.i
                                        #   in Loop: Header=BB6_267 Depth=2
	addi.d	$t7, $t7, -1
	addi.d	$a4, $a4, 1
	ld.d	$s2, $sp, 472                   # 8-byte Folded Reload
	beqz	$t7, .LBB6_271
.LBB6_267:                              # %.preheader1.i
                                        #   Parent Loop BB6_253 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB6_268 Depth 3
                                        #       Child Loop BB6_270 Depth 3
	move	$t8, $s5
	move	$s0, $a6
	blt	$s2, $t0, .LBB6_269
	.p2align	4, , 16
.LBB6_268:                              # %.lr.ph35.i
                                        #   Parent Loop BB6_253 Depth=1
                                        #     Parent Loop BB6_267 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$s1, $t8, 0
	addi.d	$s2, $s1, -1
	st.d	$s2, $t8, 0
	st.b	$t1, $s1, -1
	addi.d	$s0, $s0, -1
	addi.d	$t8, $t8, 8
	bnez	$s0, .LBB6_268
.LBB6_269:                              # %.preheader.i
                                        #   in Loop: Header=BB6_267 Depth=2
	move	$t8, $ra
	move	$s0, $s6
	move	$s1, $a7
	blt	$s8, $t0, .LBB6_266
	.p2align	4, , 16
.LBB6_270:                              # %.lr.ph37.i
                                        #   Parent Loop BB6_253 Depth=1
                                        #     Parent Loop BB6_267 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$s2, $t8, 0
	ld.d	$s3, $s0, 0
	add.d	$s2, $s2, $t7
	ldx.b	$s2, $s2, $t2
	addi.d	$s4, $s3, -1
	st.d	$s4, $s0, 0
	st.b	$s2, $s3, -1
	addi.d	$s1, $s1, -1
	addi.d	$s0, $s0, 8
	addi.d	$t8, $t8, 8
	bnez	$s1, .LBB6_270
	b	.LBB6_266
	.p2align	4, , 16
.LBB6_271:                              # %._crit_edge41.i
                                        #   in Loop: Header=BB6_253 Depth=1
	beq	$t4, $a1, .LBB6_274
# %bb.272:                              # %._crit_edge41.i
                                        #   in Loop: Header=BB6_253 Depth=1
	addi.w	$t7, $a0, 0
	beq	$t5, $t7, .LBB6_274
# %bb.273:                              #   in Loop: Header=BB6_253 Depth=1
	slli.d	$t7, $t4, 2
	ld.d	$t8, $sp, 272                   # 8-byte Folded Reload
	ldx.w	$t7, $t8, $t7
	ld.d	$t8, $sp, 280                   # 8-byte Folded Reload
	ldx.w	$t6, $t8, $t6
	slli.d	$t7, $t7, 3
	ldx.d	$t7, $a5, $t7
	slli.d	$t6, $t6, 2
	fldx.s	$fa0, $t7, $t6
	fld.s	$fa1, $a3, 0
	fadd.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $a3, 0
.LBB6_274:                              #   in Loop: Header=BB6_253 Depth=1
	blt	$t4, $t0, .LBB6_284
# %bb.275:                              #   in Loop: Header=BB6_253 Depth=1
	blt	$t5, $t0, .LBB6_284
# %bb.276:                              # %.preheader5.i
                                        #   in Loop: Header=BB6_253 Depth=1
	blt	$s2, $t0, .LBB6_279
# %bb.277:                              # %.lr.ph44.i
                                        #   in Loop: Header=BB6_253 Depth=1
	ld.d	$t4, $sp, 456                   # 8-byte Folded Reload
	move	$t5, $s5
	move	$t6, $a6
	.p2align	4, , 16
.LBB6_278:                              #   Parent Loop BB6_253 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$t7, $t4, 0
	ld.d	$t8, $t5, 0
	ldx.b	$t7, $t7, $t3
	addi.d	$s0, $t8, -1
	st.d	$s0, $t5, 0
	st.b	$t7, $t8, -1
	addi.d	$t6, $t6, -1
	addi.d	$t5, $t5, 8
	addi.d	$t4, $t4, 8
	bnez	$t6, .LBB6_278
.LBB6_279:                              # %.preheader4.i
                                        #   in Loop: Header=BB6_253 Depth=1
	blt	$s8, $t0, .LBB6_252
# %bb.280:                              # %.lr.ph46.i
                                        #   in Loop: Header=BB6_253 Depth=1
	move	$t4, $ra
	move	$t5, $s6
	move	$t6, $a7
	.p2align	4, , 16
.LBB6_281:                              #   Parent Loop BB6_253 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$t7, $t4, 0
	ld.d	$t8, $t5, 0
	ldx.b	$t7, $t7, $t2
	addi.d	$s0, $t8, -1
	st.d	$s0, $t5, 0
	st.b	$t7, $t8, -1
	addi.d	$t6, $t6, -1
	addi.d	$t5, $t5, 8
	addi.d	$t4, $t4, 8
	bnez	$t6, .LBB6_281
	b	.LBB6_252
	.p2align	4, , 16
.LBB6_282:                              #   in Loop: Header=BB6_253 Depth=1
	addi.w	$t3, $s8, -1
	ld.d	$t7, $sp, 368                   # 8-byte Folded Reload
	nor	$t8, $t3, $zero
	add.w	$t8, $s8, $t8
	bnez	$t8, .LBB6_256
	b	.LBB6_264
.LBB6_283:
	ld.d	$s8, $sp, 464                   # 8-byte Folded Reload
.LBB6_284:                              # %Atracking_localhom_gapmap.exit
	ld.d	$s1, $sp, 104                   # 8-byte Folded Reload
.LBB6_285:                              # %Atracking_localhom_gapmap.exit
	ld.d	$a0, $s5, 0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.w	$a3, $a0, 0
	lu12i.w	$a4, 1220
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	blt	$a2, $a3, .LBB6_294
# %bb.286:                              # %Atracking_localhom_gapmap.exit
	ori	$a0, $a4, 2881
	bge	$a3, $a0, .LBB6_294
# %bb.287:
	ori	$s0, $zero, 1
	ld.d	$s3, $sp, 456                   # 8-byte Folded Reload
	blt	$s2, $s0, .LBB6_290
.LBB6_288:                              # %.lr.ph638
	ld.d	$s1, $s1, %pc_lo12(Q__align_gapmap.mseq1)
	.p2align	4, , 16
.LBB6_289:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s3, 0
	ld.d	$a1, $s1, 0
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	addi.d	$s1, $s1, 8
	addi.d	$s2, $s2, -1
	addi.d	$s3, $s3, 8
	bnez	$s2, .LBB6_289
.LBB6_290:                              # %.preheader
	ld.d	$a2, $sp, 256                   # 8-byte Folded Reload
	blt	$s8, $s0, .LBB6_293
# %bb.291:                              # %.lr.ph640
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s0, $a0, %pc_lo12(Q__align_gapmap.mseq2)
	.p2align	4, , 16
.LBB6_292:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $a2, 0
	ld.d	$a1, $s0, 0
	move	$s1, $a2
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	addi.d	$s0, $s0, 8
	addi.d	$s8, $s8, -1
	addi.d	$a2, $s1, 8
	bnez	$s8, .LBB6_292
.LBB6_293:                              # %._crit_edge641
	fmov.s	$fa0, $fs0
	addi.d	$sp, $fp, -960
	fld.d	$fs0, $sp, 864                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 872                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 880                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 888                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 896                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 904                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 912                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 920                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 928                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 936                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 944                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 952                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 960
	ret
.LBB6_294:
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
	ld.d	$s3, $sp, 456                   # 8-byte Folded Reload
	bge	$s2, $s0, .LBB6_288
	b	.LBB6_290
.LBB6_295:
	ld.d	$s2, $sp, 472                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 128                   # 8-byte Folded Reload
	b	.LBB6_27
.LBB6_296:
	ld.d	$s2, $sp, 472                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 128                   # 8-byte Folded Reload
	b	.LBB6_32
.LBB6_297:
	ld.d	$s1, $sp, 128                   # 8-byte Folded Reload
	b	.LBB6_27
.LBB6_298:
	ld.d	$s1, $sp, 128                   # 8-byte Folded Reload
	b	.LBB6_32
.Lfunc_end6:
	.size	Q__align_gapmap, .Lfunc_end6-Q__align_gapmap
                                        # -- End function
	.type	impmtx,@object                  # @impmtx
	.local	impmtx
	.comm	impmtx,8,8
	.type	imp_match_init_strictQ.nocount1,@object # @imp_match_init_strictQ.nocount1
	.local	imp_match_init_strictQ.nocount1
	.comm	imp_match_init_strictQ.nocount1,8,8
	.type	imp_match_init_strictQ.nocount2,@object # @imp_match_init_strictQ.nocount2
	.local	imp_match_init_strictQ.nocount2
	.comm	imp_match_init_strictQ.nocount2,8,8
	.type	impalloclen,@object             # @impalloclen
	.local	impalloclen
	.comm	impalloclen,4,4
	.type	Q__align.m,@object              # @Q__align.m
	.local	Q__align.m
	.comm	Q__align.m,8,8
	.type	Q__align.ijp,@object            # @Q__align.ijp
	.local	Q__align.ijp
	.comm	Q__align.ijp,8,8
	.type	Q__align.mp,@object             # @Q__align.mp
	.local	Q__align.mp
	.comm	Q__align.mp,8,8
	.type	Q__align.w1,@object             # @Q__align.w1
	.local	Q__align.w1
	.comm	Q__align.w1,8,8
	.type	Q__align.w2,@object             # @Q__align.w2
	.local	Q__align.w2
	.comm	Q__align.w2,8,8
	.type	Q__align.match,@object          # @Q__align.match
	.local	Q__align.match
	.comm	Q__align.match,8,8
	.type	Q__align.initverticalw,@object  # @Q__align.initverticalw
	.local	Q__align.initverticalw
	.comm	Q__align.initverticalw,8,8
	.type	Q__align.lastverticalw,@object  # @Q__align.lastverticalw
	.local	Q__align.lastverticalw
	.comm	Q__align.lastverticalw,8,8
	.type	Q__align.mseq1,@object          # @Q__align.mseq1
	.local	Q__align.mseq1
	.comm	Q__align.mseq1,8,8
	.type	Q__align.mseq2,@object          # @Q__align.mseq2
	.local	Q__align.mseq2
	.comm	Q__align.mseq2,8,8
	.type	Q__align.mseq,@object           # @Q__align.mseq
	.local	Q__align.mseq
	.comm	Q__align.mseq,8,8
	.type	Q__align.digf1,@object          # @Q__align.digf1
	.local	Q__align.digf1
	.comm	Q__align.digf1,8,8
	.type	Q__align.digf2,@object          # @Q__align.digf2
	.local	Q__align.digf2
	.comm	Q__align.digf2,8,8
	.type	Q__align.diaf1,@object          # @Q__align.diaf1
	.local	Q__align.diaf1
	.comm	Q__align.diaf1,8,8
	.type	Q__align.diaf2,@object          # @Q__align.diaf2
	.local	Q__align.diaf2
	.comm	Q__align.diaf2,8,8
	.type	Q__align.gapz1,@object          # @Q__align.gapz1
	.local	Q__align.gapz1
	.comm	Q__align.gapz1,8,8
	.type	Q__align.gapz2,@object          # @Q__align.gapz2
	.local	Q__align.gapz2
	.comm	Q__align.gapz2,8,8
	.type	Q__align.gapf1,@object          # @Q__align.gapf1
	.local	Q__align.gapf1
	.comm	Q__align.gapf1,8,8
	.type	Q__align.gapf2,@object          # @Q__align.gapf2
	.local	Q__align.gapf2
	.comm	Q__align.gapf2,8,8
	.type	Q__align.ogcp1g,@object         # @Q__align.ogcp1g
	.local	Q__align.ogcp1g
	.comm	Q__align.ogcp1g,8,8
	.type	Q__align.ogcp2g,@object         # @Q__align.ogcp2g
	.local	Q__align.ogcp2g
	.comm	Q__align.ogcp2g,8,8
	.type	Q__align.fgcp1g,@object         # @Q__align.fgcp1g
	.local	Q__align.fgcp1g
	.comm	Q__align.fgcp1g,8,8
	.type	Q__align.fgcp2g,@object         # @Q__align.fgcp2g
	.local	Q__align.fgcp2g
	.comm	Q__align.fgcp2g,8,8
	.type	Q__align.og_h_dg_n1_p,@object   # @Q__align.og_h_dg_n1_p
	.local	Q__align.og_h_dg_n1_p
	.comm	Q__align.og_h_dg_n1_p,8,8
	.type	Q__align.og_h_dg_n2_p,@object   # @Q__align.og_h_dg_n2_p
	.local	Q__align.og_h_dg_n2_p
	.comm	Q__align.og_h_dg_n2_p,8,8
	.type	Q__align.fg_h_dg_n1_p,@object   # @Q__align.fg_h_dg_n1_p
	.local	Q__align.fg_h_dg_n1_p
	.comm	Q__align.fg_h_dg_n1_p,8,8
	.type	Q__align.fg_h_dg_n2_p,@object   # @Q__align.fg_h_dg_n2_p
	.local	Q__align.fg_h_dg_n2_p
	.comm	Q__align.fg_h_dg_n2_p,8,8
	.type	Q__align.og_t_fg_h_dg_n1_p,@object # @Q__align.og_t_fg_h_dg_n1_p
	.local	Q__align.og_t_fg_h_dg_n1_p
	.comm	Q__align.og_t_fg_h_dg_n1_p,8,8
	.type	Q__align.og_t_fg_h_dg_n2_p,@object # @Q__align.og_t_fg_h_dg_n2_p
	.local	Q__align.og_t_fg_h_dg_n2_p
	.comm	Q__align.og_t_fg_h_dg_n2_p,8,8
	.type	Q__align.fg_t_og_h_dg_n1_p,@object # @Q__align.fg_t_og_h_dg_n1_p
	.local	Q__align.fg_t_og_h_dg_n1_p
	.comm	Q__align.fg_t_og_h_dg_n1_p,8,8
	.type	Q__align.fg_t_og_h_dg_n2_p,@object # @Q__align.fg_t_og_h_dg_n2_p
	.local	Q__align.fg_t_og_h_dg_n2_p
	.comm	Q__align.fg_t_og_h_dg_n2_p,8,8
	.type	Q__align.gapz_n1,@object        # @Q__align.gapz_n1
	.local	Q__align.gapz_n1
	.comm	Q__align.gapz_n1,8,8
	.type	Q__align.gapz_n2,@object        # @Q__align.gapz_n2
	.local	Q__align.gapz_n2
	.comm	Q__align.gapz_n2,8,8
	.type	Q__align.cpmx1,@object          # @Q__align.cpmx1
	.local	Q__align.cpmx1
	.comm	Q__align.cpmx1,8,8
	.type	Q__align.cpmx2,@object          # @Q__align.cpmx2
	.local	Q__align.cpmx2
	.comm	Q__align.cpmx2,8,8
	.type	Q__align.intwork,@object        # @Q__align.intwork
	.local	Q__align.intwork
	.comm	Q__align.intwork,8,8
	.type	Q__align.floatwork,@object      # @Q__align.floatwork
	.local	Q__align.floatwork
	.comm	Q__align.floatwork,8,8
	.type	Q__align.orlgth1,@object        # @Q__align.orlgth1
	.local	Q__align.orlgth1
	.comm	Q__align.orlgth1,4,4
	.type	Q__align.orlgth2,@object        # @Q__align.orlgth2
	.local	Q__align.orlgth2
	.comm	Q__align.orlgth2,4,4
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"alloclen=%d, resultlen=%d, N=%d\n"
	.size	.L.str, 33

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"LENGTH OVER!\n"
	.size	.L.str.1, 14

	.type	Q__align_gapmap.m,@object       # @Q__align_gapmap.m
	.local	Q__align_gapmap.m
	.comm	Q__align_gapmap.m,8,8
	.type	Q__align_gapmap.ijp,@object     # @Q__align_gapmap.ijp
	.local	Q__align_gapmap.ijp
	.comm	Q__align_gapmap.ijp,8,8
	.type	Q__align_gapmap.mp,@object      # @Q__align_gapmap.mp
	.local	Q__align_gapmap.mp
	.comm	Q__align_gapmap.mp,8,8
	.type	Q__align_gapmap.w1,@object      # @Q__align_gapmap.w1
	.local	Q__align_gapmap.w1
	.comm	Q__align_gapmap.w1,8,8
	.type	Q__align_gapmap.w2,@object      # @Q__align_gapmap.w2
	.local	Q__align_gapmap.w2
	.comm	Q__align_gapmap.w2,8,8
	.type	Q__align_gapmap.match,@object   # @Q__align_gapmap.match
	.local	Q__align_gapmap.match
	.comm	Q__align_gapmap.match,8,8
	.type	Q__align_gapmap.initverticalw,@object # @Q__align_gapmap.initverticalw
	.local	Q__align_gapmap.initverticalw
	.comm	Q__align_gapmap.initverticalw,8,8
	.type	Q__align_gapmap.lastverticalw,@object # @Q__align_gapmap.lastverticalw
	.local	Q__align_gapmap.lastverticalw
	.comm	Q__align_gapmap.lastverticalw,8,8
	.type	Q__align_gapmap.mseq1,@object   # @Q__align_gapmap.mseq1
	.local	Q__align_gapmap.mseq1
	.comm	Q__align_gapmap.mseq1,8,8
	.type	Q__align_gapmap.mseq2,@object   # @Q__align_gapmap.mseq2
	.local	Q__align_gapmap.mseq2
	.comm	Q__align_gapmap.mseq2,8,8
	.type	Q__align_gapmap.mseq,@object    # @Q__align_gapmap.mseq
	.local	Q__align_gapmap.mseq
	.comm	Q__align_gapmap.mseq,8,8
	.type	Q__align_gapmap.digf1,@object   # @Q__align_gapmap.digf1
	.local	Q__align_gapmap.digf1
	.comm	Q__align_gapmap.digf1,8,8
	.type	Q__align_gapmap.digf2,@object   # @Q__align_gapmap.digf2
	.local	Q__align_gapmap.digf2
	.comm	Q__align_gapmap.digf2,8,8
	.type	Q__align_gapmap.diaf1,@object   # @Q__align_gapmap.diaf1
	.local	Q__align_gapmap.diaf1
	.comm	Q__align_gapmap.diaf1,8,8
	.type	Q__align_gapmap.diaf2,@object   # @Q__align_gapmap.diaf2
	.local	Q__align_gapmap.diaf2
	.comm	Q__align_gapmap.diaf2,8,8
	.type	Q__align_gapmap.gapz1,@object   # @Q__align_gapmap.gapz1
	.local	Q__align_gapmap.gapz1
	.comm	Q__align_gapmap.gapz1,8,8
	.type	Q__align_gapmap.gapz2,@object   # @Q__align_gapmap.gapz2
	.local	Q__align_gapmap.gapz2
	.comm	Q__align_gapmap.gapz2,8,8
	.type	Q__align_gapmap.gapf1,@object   # @Q__align_gapmap.gapf1
	.local	Q__align_gapmap.gapf1
	.comm	Q__align_gapmap.gapf1,8,8
	.type	Q__align_gapmap.gapf2,@object   # @Q__align_gapmap.gapf2
	.local	Q__align_gapmap.gapf2
	.comm	Q__align_gapmap.gapf2,8,8
	.type	Q__align_gapmap.ogcp1g,@object  # @Q__align_gapmap.ogcp1g
	.local	Q__align_gapmap.ogcp1g
	.comm	Q__align_gapmap.ogcp1g,8,8
	.type	Q__align_gapmap.ogcp2g,@object  # @Q__align_gapmap.ogcp2g
	.local	Q__align_gapmap.ogcp2g
	.comm	Q__align_gapmap.ogcp2g,8,8
	.type	Q__align_gapmap.fgcp1g,@object  # @Q__align_gapmap.fgcp1g
	.local	Q__align_gapmap.fgcp1g
	.comm	Q__align_gapmap.fgcp1g,8,8
	.type	Q__align_gapmap.fgcp2g,@object  # @Q__align_gapmap.fgcp2g
	.local	Q__align_gapmap.fgcp2g
	.comm	Q__align_gapmap.fgcp2g,8,8
	.type	Q__align_gapmap.og_h_dg_n1_p,@object # @Q__align_gapmap.og_h_dg_n1_p
	.local	Q__align_gapmap.og_h_dg_n1_p
	.comm	Q__align_gapmap.og_h_dg_n1_p,8,8
	.type	Q__align_gapmap.og_h_dg_n2_p,@object # @Q__align_gapmap.og_h_dg_n2_p
	.local	Q__align_gapmap.og_h_dg_n2_p
	.comm	Q__align_gapmap.og_h_dg_n2_p,8,8
	.type	Q__align_gapmap.fg_h_dg_n1_p,@object # @Q__align_gapmap.fg_h_dg_n1_p
	.local	Q__align_gapmap.fg_h_dg_n1_p
	.comm	Q__align_gapmap.fg_h_dg_n1_p,8,8
	.type	Q__align_gapmap.fg_h_dg_n2_p,@object # @Q__align_gapmap.fg_h_dg_n2_p
	.local	Q__align_gapmap.fg_h_dg_n2_p
	.comm	Q__align_gapmap.fg_h_dg_n2_p,8,8
	.type	Q__align_gapmap.og_t_fg_h_dg_n1_p,@object # @Q__align_gapmap.og_t_fg_h_dg_n1_p
	.local	Q__align_gapmap.og_t_fg_h_dg_n1_p
	.comm	Q__align_gapmap.og_t_fg_h_dg_n1_p,8,8
	.type	Q__align_gapmap.og_t_fg_h_dg_n2_p,@object # @Q__align_gapmap.og_t_fg_h_dg_n2_p
	.local	Q__align_gapmap.og_t_fg_h_dg_n2_p
	.comm	Q__align_gapmap.og_t_fg_h_dg_n2_p,8,8
	.type	Q__align_gapmap.fg_t_og_h_dg_n1_p,@object # @Q__align_gapmap.fg_t_og_h_dg_n1_p
	.local	Q__align_gapmap.fg_t_og_h_dg_n1_p
	.comm	Q__align_gapmap.fg_t_og_h_dg_n1_p,8,8
	.type	Q__align_gapmap.fg_t_og_h_dg_n2_p,@object # @Q__align_gapmap.fg_t_og_h_dg_n2_p
	.local	Q__align_gapmap.fg_t_og_h_dg_n2_p
	.comm	Q__align_gapmap.fg_t_og_h_dg_n2_p,8,8
	.type	Q__align_gapmap.gapz_n1,@object # @Q__align_gapmap.gapz_n1
	.local	Q__align_gapmap.gapz_n1
	.comm	Q__align_gapmap.gapz_n1,8,8
	.type	Q__align_gapmap.gapz_n2,@object # @Q__align_gapmap.gapz_n2
	.local	Q__align_gapmap.gapz_n2
	.comm	Q__align_gapmap.gapz_n2,8,8
	.type	Q__align_gapmap.cpmx1,@object   # @Q__align_gapmap.cpmx1
	.local	Q__align_gapmap.cpmx1
	.comm	Q__align_gapmap.cpmx1,8,8
	.type	Q__align_gapmap.cpmx2,@object   # @Q__align_gapmap.cpmx2
	.local	Q__align_gapmap.cpmx2
	.comm	Q__align_gapmap.cpmx2,8,8
	.type	Q__align_gapmap.intwork,@object # @Q__align_gapmap.intwork
	.local	Q__align_gapmap.intwork
	.comm	Q__align_gapmap.intwork,8,8
	.type	Q__align_gapmap.floatwork,@object # @Q__align_gapmap.floatwork
	.local	Q__align_gapmap.floatwork
	.comm	Q__align_gapmap.floatwork,8,8
	.type	Q__align_gapmap.orlgth1,@object # @Q__align_gapmap.orlgth1
	.local	Q__align_gapmap.orlgth1
	.comm	Q__align_gapmap.orlgth1,4,4
	.type	Q__align_gapmap.orlgth2,@object # @Q__align_gapmap.orlgth2
	.local	Q__align_gapmap.orlgth2
	.comm	Q__align_gapmap.orlgth2,4,4
	.section	".note.GNU-stack","",@progbits
	.addrsig
