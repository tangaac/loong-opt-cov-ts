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
	addi.d	$sp, $sp, -112
	st.d	$ra, $sp, 104                   # 8-byte Folded Spill
	st.d	$fp, $sp, 96                    # 8-byte Folded Spill
	st.d	$s0, $sp, 88                    # 8-byte Folded Spill
	st.d	$s1, $sp, 80                    # 8-byte Folded Spill
	st.d	$s2, $sp, 72                    # 8-byte Folded Spill
	st.d	$s3, $sp, 64                    # 8-byte Folded Spill
	st.d	$s4, $sp, 56                    # 8-byte Folded Spill
	st.d	$s5, $sp, 48                    # 8-byte Folded Spill
	st.d	$s6, $sp, 40                    # 8-byte Folded Spill
	st.d	$s7, $sp, 32                    # 8-byte Folded Spill
	st.d	$s8, $sp, 24                    # 8-byte Folded Spill
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
	st.d	$a2, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$s8, %pc_hi20(imp_match_init_strict.nocount1)
	pcalau12i	$s7, %pc_hi20(imp_match_init_strict.nocount2)
	blt	$a0, $a1, .LBB2_2
# %bb.1:
	addi.w	$a1, $s5, 2
	bge	$a0, $a1, .LBB2_9
.LBB2_2:
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(impmtx)
	beqz	$a0, .LBB2_4
# %bb.3:
	pcaddu18i	$ra, %call36(FreeFloatMtx)
	jirl	$ra, $ra, 0
.LBB2_4:
	ld.d	$a0, $s8, %pc_lo12(imp_match_init_strict.nocount1)
	beqz	$a0, .LBB2_6
# %bb.5:
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB2_6:
	ld.d	$a0, $s7, %pc_lo12(imp_match_init_strict.nocount2)
	beqz	$a0, .LBB2_8
# %bb.7:
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB2_8:
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
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
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
.LBB2_9:
	blez	$s4, .LBB2_22
# %bb.10:                               # %.preheader211.lr.ph
	ld.d	$a0, $s8, %pc_lo12(imp_match_init_strict.nocount1)
	blez	$s3, .LBB2_18
# %bb.11:                               # %.preheader211.us.preheader
	move	$a1, $zero
	ori	$a2, $zero, 45
	b	.LBB2_14
	.p2align	4, , 16
.LBB2_12:                               # %._crit_edge.us.thread
                                        #   in Loop: Header=BB2_14 Depth=1
	move	$a4, $zero
.LBB2_13:                               #   in Loop: Header=BB2_14 Depth=1
	stx.b	$a4, $a0, $a1
	addi.d	$a1, $a1, 1
	beq	$a1, $s4, .LBB2_22
.LBB2_14:                               # %.preheader211.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_15 Depth 2
	move	$a4, $s3
	move	$a5, $s1
	move	$a3, $s3
	.p2align	4, , 16
.LBB2_15:                               #   Parent Loop BB2_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a6, $a5, 0
	ldx.bu	$a6, $a6, $a1
	beq	$a6, $a2, .LBB2_17
# %bb.16:                               #   in Loop: Header=BB2_15 Depth=2
	addi.w	$a3, $a3, -1
	addi.d	$a4, $a4, -1
	addi.d	$a5, $a5, 8
	bnez	$a4, .LBB2_15
	b	.LBB2_12
	.p2align	4, , 16
.LBB2_17:                               # %._crit_edge.us
                                        #   in Loop: Header=BB2_14 Depth=1
	ori	$a4, $zero, 1
	bnez	$a3, .LBB2_13
	b	.LBB2_12
.LBB2_18:                               # %.preheader211.lr.ph.split
	beqz	$s3, .LBB2_20
# %bb.19:                               # %.preheader211.preheader
	ori	$a1, $zero, 1
	b	.LBB2_21
.LBB2_20:                               # %.preheader211.us216.preheader
	move	$a1, $zero
.LBB2_21:                               # %.preheader210
	move	$a2, $s4
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB2_22:                               # %.preheader210.thread
	blez	$s5, .LBB2_38
# %bb.23:                               # %.preheader209.lr.ph
	ld.d	$a0, $s7, %pc_lo12(imp_match_init_strict.nocount2)
	blez	$s2, .LBB2_31
# %bb.24:                               # %.preheader209.us.preheader
	move	$a1, $zero
	ori	$a2, $zero, 45
	b	.LBB2_27
	.p2align	4, , 16
.LBB2_25:                               # %._crit_edge.us222.thread
                                        #   in Loop: Header=BB2_27 Depth=1
	move	$a4, $zero
.LBB2_26:                               #   in Loop: Header=BB2_27 Depth=1
	stx.b	$a4, $a0, $a1
	addi.d	$a1, $a1, 1
	beq	$a1, $s5, .LBB2_35
.LBB2_27:                               # %.preheader209.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_28 Depth 2
	move	$a4, $s2
	move	$a5, $s0
	move	$a3, $s2
	.p2align	4, , 16
.LBB2_28:                               #   Parent Loop BB2_27 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a6, $a5, 0
	ldx.bu	$a6, $a6, $a1
	beq	$a6, $a2, .LBB2_30
# %bb.29:                               #   in Loop: Header=BB2_28 Depth=2
	addi.w	$a3, $a3, -1
	addi.d	$a4, $a4, -1
	addi.d	$a5, $a5, 8
	bnez	$a4, .LBB2_28
	b	.LBB2_25
	.p2align	4, , 16
.LBB2_30:                               # %._crit_edge.us222
                                        #   in Loop: Header=BB2_27 Depth=1
	ori	$a4, $zero, 1
	bnez	$a3, .LBB2_26
	b	.LBB2_25
.LBB2_31:                               # %.preheader209.lr.ph.split
	beqz	$s2, .LBB2_33
# %bb.32:                               # %.preheader209.preheader
	ori	$a1, $zero, 1
	b	.LBB2_34
.LBB2_33:                               # %.preheader209.us224.preheader
	move	$a1, $zero
.LBB2_34:                               # %.preheader208
	move	$a2, $s5
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB2_35:                               # %.preheader208
	blez	$s4, .LBB2_38
# %bb.36:                               # %.preheader207.lr.ph
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s6, $a0, %pc_lo12(impmtx)
	slli.d	$s5, $s5, 2
	.p2align	4, , 16
.LBB2_37:                               # %.preheader207.us
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s6, 0
	move	$a1, $zero
	move	$a2, $s5
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	addi.d	$s4, $s4, -1
	addi.d	$s6, $s6, 8
	bnez	$s4, .LBB2_37
.LBB2_38:                               # %._crit_edge228
	blez	$s3, .LBB2_76
# %bb.39:                               # %.preheader206.lr.ph
	blez	$s2, .LBB2_76
# %bb.40:                               # %.preheader206.us.preheader
	ld.d	$a0, $sp, 120
	ld.d	$a1, $sp, 112
	pcalau12i	$a2, %got_pc_hi20(fastathreshold)
	ld.d	$a2, $a2, %got_pc_lo12(fastathreshold)
	fld.d	$fa0, $a2, 0
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(impmtx)
	move	$a3, $zero
	ori	$a4, $zero, 45
	b	.LBB2_42
	.p2align	4, , 16
.LBB2_41:                               # %._crit_edge235.us
                                        #   in Loop: Header=BB2_42 Depth=1
	addi.d	$a3, $a3, 1
	beq	$a3, $s3, .LBB2_76
.LBB2_42:                               # %.preheader206.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_44 Depth 2
                                        #       Child Loop BB2_47 Depth 3
                                        #         Child Loop BB2_48 Depth 4
                                        #         Child Loop BB2_52 Depth 4
                                        #         Child Loop BB2_56 Depth 4
                                        #         Child Loop BB2_60 Depth 4
                                        #         Child Loop BB2_64 Depth 4
	slli.d	$a5, $a3, 3
	fldx.d	$fa1, $fp, $a5
	ldx.d	$a5, $a0, $a5
	move	$a6, $zero
	alsl.d	$a7, $a3, $s1, 3
	b	.LBB2_44
	.p2align	4, , 16
.LBB2_43:                               # %._crit_edge.us238
                                        #   in Loop: Header=BB2_44 Depth=2
	addi.d	$a6, $a6, 1
	beq	$a6, $s2, .LBB2_41
.LBB2_44:                               #   Parent Loop BB2_42 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_47 Depth 3
                                        #         Child Loop BB2_48 Depth 4
                                        #         Child Loop BB2_52 Depth 4
                                        #         Child Loop BB2_56 Depth 4
                                        #         Child Loop BB2_60 Depth 4
                                        #         Child Loop BB2_64 Depth 4
	slli.d	$t2, $a6, 3
	ldx.d	$t0, $a5, $t2
	beqz	$t0, .LBB2_43
# %bb.45:                               # %.lr.ph.us
                                        #   in Loop: Header=BB2_44 Depth=2
	fldx.d	$fa2, $a1, $t2
	fmul.d	$fa2, $fa1, $fa2
	ld.d	$t1, $a7, 0
	ldx.d	$t2, $s0, $t2
	fmul.d	$fa2, $fa0, $fa2
	fcvt.s.d	$fa2, $fa2
	nor	$t3, $t1, $zero
	nor	$t4, $t2, $zero
	b	.LBB2_47
	.p2align	4, , 16
.LBB2_46:                               # %.critedge.us
                                        #   in Loop: Header=BB2_47 Depth=3
	ld.d	$t0, $t0, 8
	beqz	$t0, .LBB2_43
.LBB2_47:                               #   Parent Loop BB2_42 Depth=1
                                        #     Parent Loop BB2_44 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB2_48 Depth 4
                                        #         Child Loop BB2_52 Depth 4
                                        #         Child Loop BB2_56 Depth 4
                                        #         Child Loop BB2_60 Depth 4
                                        #         Child Loop BB2_64 Depth 4
	ld.w	$s4, $t0, 24
	addi.d	$t8, $zero, -1
	move	$t7, $t1
	.p2align	4, , 16
.LBB2_48:                               #   Parent Loop BB2_42 Depth=1
                                        #     Parent Loop BB2_44 Depth=2
                                        #       Parent Loop BB2_47 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.bu	$t5, $t7, 0
	beqz	$t5, .LBB2_51
# %bb.49:                               #   in Loop: Header=BB2_48 Depth=4
	addi.d	$t5, $t5, -45
	sltu	$t5, $zero, $t5
	add.w	$t8, $t8, $t5
	addi.d	$t7, $t7, 1
	bne	$t8, $s4, .LBB2_48
# %bb.50:                               #   in Loop: Header=BB2_47 Depth=3
	move	$t8, $s4
.LBB2_51:                               #   in Loop: Header=BB2_47 Depth=3
	ld.w	$s5, $t0, 28
	add.w	$t5, $t7, $t3
	move	$t6, $t5
	beq	$s4, $s5, .LBB2_55
	.p2align	4, , 16
.LBB2_52:                               # %.preheader205.us
                                        #   Parent Loop BB2_42 Depth=1
                                        #     Parent Loop BB2_44 Depth=2
                                        #       Parent Loop BB2_47 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.bu	$t6, $t7, 0
	beqz	$t6, .LBB2_54
# %bb.53:                               #   in Loop: Header=BB2_52 Depth=4
	addi.d	$t6, $t6, -45
	sltu	$t6, $zero, $t6
	add.w	$t8, $t8, $t6
	addi.d	$t7, $t7, 1
	bne	$t8, $s5, .LBB2_52
.LBB2_54:                               #   in Loop: Header=BB2_47 Depth=3
	add.w	$t6, $t7, $t3
.LBB2_55:                               #   in Loop: Header=BB2_47 Depth=3
	ld.w	$s6, $t0, 32
	addi.d	$s5, $zero, -1
	move	$s4, $t2
	.p2align	4, , 16
.LBB2_56:                               #   Parent Loop BB2_42 Depth=1
                                        #     Parent Loop BB2_44 Depth=2
                                        #       Parent Loop BB2_47 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.bu	$t7, $s4, 0
	beqz	$t7, .LBB2_59
# %bb.57:                               #   in Loop: Header=BB2_56 Depth=4
	addi.d	$t7, $t7, -45
	sltu	$t7, $zero, $t7
	add.w	$s5, $s5, $t7
	addi.d	$s4, $s4, 1
	bne	$s5, $s6, .LBB2_56
# %bb.58:                               #   in Loop: Header=BB2_47 Depth=3
	move	$s5, $s6
.LBB2_59:                               #   in Loop: Header=BB2_47 Depth=3
	ld.w	$s7, $t0, 36
	add.w	$t7, $s4, $t4
	move	$t8, $t7
	beq	$s6, $s7, .LBB2_63
	.p2align	4, , 16
.LBB2_60:                               # %.preheader.us
                                        #   Parent Loop BB2_42 Depth=1
                                        #     Parent Loop BB2_44 Depth=2
                                        #       Parent Loop BB2_47 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.bu	$t8, $s4, 0
	beqz	$t8, .LBB2_62
# %bb.61:                               #   in Loop: Header=BB2_60 Depth=4
	addi.d	$t8, $t8, -45
	sltu	$t8, $zero, $t8
	add.w	$s5, $s5, $t8
	addi.d	$s4, $s4, 1
	bne	$s5, $s7, .LBB2_60
.LBB2_62:                               #   in Loop: Header=BB2_47 Depth=3
	add.w	$t8, $s4, $t4
.LBB2_63:                               #   in Loop: Header=BB2_47 Depth=3
	add.d	$s4, $t1, $t5
	add.d	$s5, $t2, $t7
	.p2align	4, , 16
.LBB2_64:                               #   Parent Loop BB2_42 Depth=1
                                        #     Parent Loop BB2_44 Depth=2
                                        #       Parent Loop BB2_47 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.bu	$s7, $s4, 0
	beqz	$s7, .LBB2_46
# %bb.65:                               #   in Loop: Header=BB2_64 Depth=4
	ld.bu	$s6, $s5, 0
	beqz	$s6, .LBB2_46
# %bb.66:                               #   in Loop: Header=BB2_64 Depth=4
	beq	$s7, $a4, .LBB2_69
# %bb.67:                               #   in Loop: Header=BB2_64 Depth=4
	beq	$s6, $a4, .LBB2_69
# %bb.68:                               #   in Loop: Header=BB2_64 Depth=4
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
	b	.LBB2_73
	.p2align	4, , 16
.LBB2_69:                               #   in Loop: Header=BB2_64 Depth=4
	bne	$s7, $a4, .LBB2_71
# %bb.70:                               #   in Loop: Header=BB2_64 Depth=4
	addi.w	$t5, $t5, 1
	addi.d	$s4, $s4, 1
.LBB2_71:                               #   in Loop: Header=BB2_64 Depth=4
	bne	$s6, $a4, .LBB2_74
# %bb.72:                               #   in Loop: Header=BB2_64 Depth=4
	addi.w	$t7, $t7, 1
.LBB2_73:                               #   in Loop: Header=BB2_64 Depth=4
	addi.d	$s5, $s5, 1
.LBB2_74:                               #   in Loop: Header=BB2_64 Depth=4
	blt	$t6, $t5, .LBB2_46
# %bb.75:                               #   in Loop: Header=BB2_64 Depth=4
	bge	$t8, $t7, .LBB2_64
	b	.LBB2_46
.LBB2_76:                               # %._crit_edge237
	ld.d	$s8, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 96                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 104                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 112
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
	addi.d	$sp, $sp, -416
	st.d	$ra, $sp, 408                   # 8-byte Folded Spill
	st.d	$fp, $sp, 400                   # 8-byte Folded Spill
	st.d	$s0, $sp, 392                   # 8-byte Folded Spill
	st.d	$s1, $sp, 384                   # 8-byte Folded Spill
	st.d	$s2, $sp, 376                   # 8-byte Folded Spill
	st.d	$s3, $sp, 368                   # 8-byte Folded Spill
	st.d	$s4, $sp, 360                   # 8-byte Folded Spill
	st.d	$s5, $sp, 352                   # 8-byte Folded Spill
	st.d	$s6, $sp, 344                   # 8-byte Folded Spill
	st.d	$s7, $sp, 336                   # 8-byte Folded Spill
	st.d	$s8, $sp, 328                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 320                  # 8-byte Folded Spill
	st.d	$a7, $sp, 104                   # 8-byte Folded Spill
	st.d	$a6, $sp, 32                    # 8-byte Folded Spill
	move	$s2, $a5
	move	$s6, $a4
	st.d	$a3, $sp, 192                   # 8-byte Folded Spill
	st.d	$a2, $sp, 184                   # 8-byte Folded Spill
	move	$s1, $a1
	move	$s0, $a0
	pcalau12i	$a0, %got_pc_hi20(penalty)
	ld.d	$a0, $a0, %got_pc_lo12(penalty)
	pcalau12i	$a1, %pc_hi20(A__align.orlgth1)
	st.d	$a1, $sp, 248                   # 8-byte Folded Spill
	ld.w	$s4, $a1, %pc_lo12(A__align.orlgth1)
	ld.w	$a0, $a0, 0
	st.d	$a0, $sp, 176                   # 8-byte Folded Spill
	pcalau12i	$s3, %pc_hi20(A__align.mseq1)
	pcalau12i	$a0, %pc_hi20(A__align.mseq2)
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	bnez	$s4, .LBB3_2
# %bb.1:
	pcalau12i	$a0, %got_pc_hi20(njob)
	ld.d	$fp, $a0, %got_pc_lo12(njob)
	ld.w	$a0, $fp, 0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(AllocateCharMtx)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 0
	st.d	$a0, $s3, %pc_lo12(A__align.mseq1)
	move	$a0, $a1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(AllocateCharMtx)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	ld.w	$s4, $a1, %pc_lo12(A__align.orlgth1)
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(A__align.mseq2)
.LBB3_2:
	st.d	$s3, $sp, 96                    # 8-byte Folded Spill
	st.d	$s0, $sp, 160                   # 8-byte Folded Spill
	ld.d	$a0, $s0, 0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	addi.w	$fp, $a0, 0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(A__align.orlgth2)
	st.d	$a1, $sp, 152                   # 8-byte Folded Spill
	ld.w	$s7, $a1, %pc_lo12(A__align.orlgth2)
	st.d	$a0, $sp, 256                   # 8-byte Folded Spill
	addi.w	$s8, $a0, 0
	pcalau12i	$a0, %pc_hi20(A__align.w1)
	st.d	$a0, $sp, 296                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(A__align.w2)
	st.d	$a0, $sp, 288                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(A__align.initverticalw)
	st.d	$a0, $sp, 280                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(A__align.lastverticalw)
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(A__align.m)
	st.d	$a0, $sp, 208                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(A__align.mp)
	st.d	$a0, $sp, 200                   # 8-byte Folded Spill
	pcalau12i	$s3, %pc_hi20(A__align.mseq)
	pcalau12i	$a0, %pc_hi20(A__align.ogcp1)
	st.d	$a0, $sp, 240                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(A__align.ogcp2)
	st.d	$a0, $sp, 232                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(A__align.fgcp1)
	st.d	$a0, $sp, 216                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(A__align.fgcp2)
	st.d	$a0, $sp, 224                   # 8-byte Folded Spill
	pcalau12i	$s0, %pc_hi20(A__align.cpmx1)
	pcalau12i	$a0, %pc_hi20(A__align.cpmx2)
	st.d	$a0, $sp, 312                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(A__align.floatwork)
	st.d	$a0, $sp, 272                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(A__align.intwork)
	st.d	$a0, $sp, 264                   # 8-byte Folded Spill
	st.d	$s1, $sp, 80                    # 8-byte Folded Spill
	st.d	$fp, $sp, 168                   # 8-byte Folded Spill
	st.d	$s6, $sp, 112                   # 8-byte Folded Spill
	st.d	$s0, $sp, 304                   # 8-byte Folded Spill
	blt	$s4, $fp, .LBB3_4
# %bb.3:
	bge	$s7, $s8, .LBB3_8
.LBB3_4:
	pcalau12i	$fp, %pc_hi20(A__align.match)
	blez	$s4, .LBB3_7
# %bb.5:
	blez	$s7, .LBB3_7
# %bb.6:
	ld.d	$a0, $sp, 296                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align.w1)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 288                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align.w2)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, %pc_lo12(A__align.match)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 280                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align.initverticalw)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align.lastverticalw)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align.m)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align.mp)
	pcaddu18i	$ra, %call36(FreeIntVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, %pc_lo12(A__align.mseq)
	pcaddu18i	$ra, %call36(FreeCharMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align.ogcp1)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align.ogcp2)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align.fgcp1)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align.fgcp2)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, %pc_lo12(A__align.cpmx1)
	pcaddu18i	$ra, %call36(FreeFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 312                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align.cpmx2)
	pcaddu18i	$ra, %call36(FreeFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align.floatwork)
	pcaddu18i	$ra, %call36(FreeFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align.intwork)
	pcaddu18i	$ra, %call36(FreeIntMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 248                   # 8-byte Folded Reload
	ld.w	$s4, $a0, %pc_lo12(A__align.orlgth1)
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	ld.w	$s7, $a0, %pc_lo12(A__align.orlgth2)
.LBB3_7:
	pcalau12i	$a0, %pc_hi20(.LCPI3_0)
	fld.d	$fa0, $a0, %pc_lo12(.LCPI3_0)
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	movgr2fr.w	$fa1, $a0
	ffint.d.w	$fa1, $fa1
	fmul.d	$fa1, $fa1, $fa0
	ftintrz.w.d	$fa1, $fa1
	movfr2gr.s	$a0, $fa1
	slt	$a1, $a0, $s4
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s4, $a1
	or	$s4, $a1, $a0
	move	$s6, $fp
	move	$fp, $s0
	addi.w	$s0, $s4, 100
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	movgr2fr.w	$fa1, $a0
	ffint.d.w	$fa1, $fa1
	fmul.d	$fa0, $fa1, $fa0
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a0, $fa0
	slt	$a1, $a0, $s7
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s7, $a1
	or	$s7, $a1, $a0
	addi.w	$s1, $s7, 100
	addi.w	$s5, $s7, 102
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 296                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(A__align.w1)
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 288                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(A__align.w2)
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $s6, %pc_lo12(A__align.match)
	addi.w	$s6, $s4, 102
	move	$a0, $s6
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 280                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(A__align.initverticalw)
	move	$a0, $s6
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(A__align.lastverticalw)
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 208                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(A__align.m)
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateIntVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 200                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(A__align.mp)
	pcalau12i	$a0, %got_pc_hi20(njob)
	ld.d	$a0, $a0, %got_pc_lo12(njob)
	ld.w	$a0, $a0, 0
	add.w	$a1, $s1, $s0
	pcaddu18i	$ra, %call36(AllocateCharMtx)
	jirl	$ra, $ra, 0
	st.d	$a0, $s3, %pc_lo12(A__align.mseq)
	move	$a0, $s6
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 240                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(A__align.ogcp1)
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(A__align.ogcp2)
	move	$a0, $s6
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(A__align.fgcp1)
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(A__align.fgcp2)
	ori	$a0, $zero, 26
	move	$a1, $s6
	pcaddu18i	$ra, %call36(AllocateFloatMtx)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, %pc_lo12(A__align.cpmx1)
	ori	$a0, $zero, 26
	move	$a1, $s5
	pcaddu18i	$ra, %call36(AllocateFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 312                   # 8-byte Folded Reload
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
	ld.d	$a1, $sp, 272                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(A__align.floatwork)
	ori	$a1, $zero, 27
	move	$a0, $s5
	ld.d	$fp, $sp, 248                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(AllocateIntMtx)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 264                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(A__align.intwork)
	st.w	$s4, $fp, %pc_lo12(A__align.orlgth1)
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	st.w	$s7, $a0, %pc_lo12(A__align.orlgth2)
	ld.d	$s1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 112                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 168                   # 8-byte Folded Reload
.LBB3_8:
	blez	$s6, .LBB3_11
# %bb.9:                                # %.lr.ph
	ld.d	$a0, $s3, %pc_lo12(A__align.mseq)
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(A__align.mseq1)
	move	$a2, $s6
	ld.d	$a3, $sp, 160                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB3_10:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a4, $a0, 0
	st.d	$a4, $a1, 0
	ld.d	$a4, $a3, 0
	stx.b	$zero, $a4, $fp
	addi.d	$a3, $a3, 8
	addi.d	$a1, $a1, 8
	addi.d	$a2, $a2, -1
	addi.d	$a0, $a0, 8
	bnez	$a2, .LBB3_10
.LBB3_11:                               # %.preheader347
	blez	$s2, .LBB3_14
# %bb.12:                               # %.lr.ph354
	ld.d	$a1, $s3, %pc_lo12(A__align.mseq)
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align.mseq2)
	alsl.d	$a1, $s6, $a1, 3
	move	$a2, $s2
	move	$a3, $s1
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
	ld.d	$s5, $sp, 424
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	movgr2fr.w	$fs0, $a0
	pcalau12i	$a0, %got_pc_hi20(commonAlloc1)
	ld.d	$fp, $a0, %got_pc_lo12(commonAlloc1)
	ld.w	$a0, $fp, 0
	pcalau12i	$a1, %got_pc_hi20(commonAlloc2)
	ld.d	$s0, $a1, %got_pc_lo12(commonAlloc2)
	ld.w	$a1, $s0, 0
	blt	$a0, $s4, .LBB3_17
# %bb.15:                               # %._crit_edge
	blt	$a1, $s7, .LBB3_17
# %bb.16:                               # %._crit_edge486
	pcalau12i	$a0, %got_pc_hi20(commonIP)
	ld.d	$a0, $a0, %got_pc_lo12(commonIP)
	ld.d	$a0, $a0, 0
	b	.LBB3_21
.LBB3_17:
	move	$s3, $s2
	beqz	$a0, .LBB3_20
# %bb.18:
	beqz	$a1, .LBB3_20
# %bb.19:
	pcalau12i	$a0, %got_pc_hi20(commonIP)
	ld.d	$a0, $a0, %got_pc_lo12(commonIP)
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(FreeIntMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 248                   # 8-byte Folded Reload
	ld.w	$s4, $a0, %pc_lo12(A__align.orlgth1)
	ld.w	$a0, $fp, 0
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	ld.w	$s7, $a1, %pc_lo12(A__align.orlgth2)
	ld.w	$a1, $s0, 0
.LBB3_20:
	slt	$a2, $a0, $s4
	masknez	$a0, $a0, $a2
	maskeqz	$a2, $s4, $a2
	or	$s1, $a2, $a0
	slt	$a0, $a1, $s7
	masknez	$a1, $a1, $a0
	maskeqz	$a0, $s7, $a0
	or	$s2, $a0, $a1
	addi.w	$a0, $s1, 10
	addi.w	$a1, $s2, 10
	pcaddu18i	$ra, %call36(AllocateIntMtx)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(commonIP)
	ld.d	$a1, $a1, %got_pc_lo12(commonIP)
	st.d	$a0, $a1, 0
	st.w	$s1, $fp, 0
	st.w	$s2, $s0, 0
	move	$s2, $s3
	ld.d	$s1, $sp, 80                    # 8-byte Folded Reload
.LBB3_21:
	ld.d	$s3, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 304                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(A__align.cpmx1)
	ffint.s.w	$fs0, $fs0
	pcalau12i	$a2, %pc_hi20(A__align.ijp)
	st.d	$a2, $sp, 72                    # 8-byte Folded Spill
	st.d	$a0, $a2, %pc_lo12(A__align.ijp)
	ld.d	$s7, $sp, 160                   # 8-byte Folded Reload
	move	$a0, $s7
	ld.d	$s4, $sp, 184                   # 8-byte Folded Reload
	move	$a2, $s4
	ld.d	$fp, $sp, 168                   # 8-byte Folded Reload
	move	$a3, $fp
	move	$a4, $s6
	pcaddu18i	$ra, %call36(cpmx_calc_new)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 312                   # 8-byte Folded Reload
	ld.d	$a1, $a0, %pc_lo12(A__align.cpmx2)
	move	$a0, $s1
	move	$a2, $s3
	move	$a3, $s8
	move	$a4, $s2
	pcaddu18i	$ra, %call36(cpmx_calc_new)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align.ogcp1)
	ld.d	$s0, $sp, 136                   # 8-byte Folded Reload
	beqz	$s5, .LBB3_23
# %bb.22:
	move	$a5, $s5
	move	$fp, $s6
	ld.d	$s5, $sp, 448
	ld.d	$s7, $sp, 440
	move	$s6, $s0
	ld.d	$s0, $sp, 432
	move	$a1, $fp
	ld.d	$a2, $sp, 160                   # 8-byte Folded Reload
	move	$a3, $s4
	ld.d	$a4, $sp, 168                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(new_OpeningGapCount)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align.ogcp2)
	move	$a1, $s2
	move	$a2, $s1
	move	$a3, $s3
	move	$a4, $s8
	move	$a5, $s0
	move	$s0, $s6
	pcaddu18i	$ra, %call36(new_OpeningGapCount)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align.fgcp1)
	move	$a1, $fp
	ld.d	$fp, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 160                   # 8-byte Folded Reload
	move	$a3, $s4
	move	$a4, $fp
	move	$a5, $s7
	ld.d	$s7, $sp, 160                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(new_FinalGapCount)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align.fgcp2)
	move	$a1, $s2
	move	$a2, $s1
	move	$a3, $s3
	move	$a4, $s8
	move	$a5, $s5
	pcaddu18i	$ra, %call36(new_FinalGapCount)
	jirl	$ra, $ra, 0
	ld.d	$a7, $sp, 256                   # 8-byte Folded Reload
	fcvt.d.s	$fa0, $fs0
	bgtz	$fp, .LBB3_24
	b	.LBB3_30
.LBB3_23:
	move	$a1, $s6
	move	$a2, $s7
	move	$a3, $s4
	move	$a4, $fp
	pcaddu18i	$ra, %call36(st_OpeningGapCount)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align.ogcp2)
	move	$a1, $s2
	move	$a2, $s1
	move	$a3, $s3
	move	$a4, $s8
	pcaddu18i	$ra, %call36(st_OpeningGapCount)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align.fgcp1)
	move	$a1, $s6
	move	$a2, $s7
	move	$a3, $s4
	move	$a4, $fp
	pcaddu18i	$ra, %call36(st_FinalGapCount)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align.fgcp2)
	move	$a1, $s2
	move	$a2, $s1
	move	$a3, $s3
	move	$a4, $s8
	pcaddu18i	$ra, %call36(st_FinalGapCount)
	jirl	$ra, $ra, 0
	ld.d	$a7, $sp, 256                   # 8-byte Folded Reload
	fcvt.d.s	$fa0, $fs0
	blez	$fp, .LBB3_30
.LBB3_24:                               # %.lr.ph357
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align.ogcp1)
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	ld.d	$a2, $a1, %pc_lo12(A__align.fgcp1)
	bstrpick.d	$a1, $s0, 30, 0
	ori	$a3, $zero, 4
	bltu	$a1, $a3, .LBB3_27
# %bb.25:                               # %vector.memcheck
	alsl.d	$a3, $a1, $a2, 2
	bgeu	$a0, $a3, .LBB3_187
# %bb.26:                               # %vector.memcheck
	alsl.d	$a3, $a1, $a0, 2
	bgeu	$a2, $a3, .LBB3_187
.LBB3_27:
	move	$a3, $zero
.LBB3_28:                               # %scalar.ph.preheader
	alsl.d	$a2, $a3, $a2, 2
	alsl.d	$a0, $a3, $a0, 2
	sub.d	$a1, $a1, $a3
	vldi	$vr1, -912
	vldi	$vr2, -928
	.p2align	4, , 16
.LBB3_29:                               # %scalar.ph
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
	bnez	$a1, .LBB3_29
.LBB3_30:                               # %.preheader346
	blez	$s8, .LBB3_37
# %bb.31:                               # %.lr.ph359
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align.ogcp2)
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	ld.d	$a2, $a1, %pc_lo12(A__align.fgcp2)
	bstrpick.d	$a1, $a7, 30, 0
	ori	$a3, $zero, 4
	bltu	$a1, $a3, .LBB3_34
# %bb.32:                               # %vector.memcheck538
	alsl.d	$a3, $a1, $a2, 2
	bgeu	$a0, $a3, .LBB3_190
# %bb.33:                               # %vector.memcheck538
	alsl.d	$a3, $a1, $a0, 2
	bgeu	$a2, $a3, .LBB3_190
.LBB3_34:
	move	$a3, $zero
.LBB3_35:                               # %scalar.ph544.preheader
	alsl.d	$a2, $a3, $a2, 2
	alsl.d	$a0, $a3, $a0, 2
	sub.d	$a1, $a1, $a3
	vldi	$vr1, -912
	vldi	$vr2, -928
	.p2align	4, , 16
.LBB3_36:                               # %scalar.ph544
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
	ld.d	$a0, $sp, 296                   # 8-byte Folded Reload
	ld.d	$s5, $a0, %pc_lo12(A__align.w1)
	ld.d	$a0, $sp, 288                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align.w2)
	st.d	$a0, $sp, 248                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 280                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align.initverticalw)
	ld.d	$a1, $sp, 312                   # 8-byte Folded Reload
	ld.d	$s4, $a1, %pc_lo12(A__align.cpmx2)
	ld.d	$a1, $sp, 304                   # 8-byte Folded Reload
	ld.d	$s6, $a1, %pc_lo12(A__align.cpmx1)
	ld.d	$a1, $sp, 272                   # 8-byte Folded Reload
	ld.d	$a5, $a1, %pc_lo12(A__align.floatwork)
	ld.d	$a1, $sp, 264                   # 8-byte Folded Reload
	ld.d	$s3, $a1, %pc_lo12(A__align.intwork)
	move	$fp, $a7
	ori	$a7, $zero, 1
	st.d	$a0, $sp, 312                   # 8-byte Folded Spill
	move	$a1, $s4
	move	$a2, $s6
	move	$a3, $zero
	ld.d	$s0, $sp, 168                   # 8-byte Folded Reload
	move	$a4, $s0
	st.d	$a5, $sp, 304                   # 8-byte Folded Spill
	move	$a6, $s3
	pcaddu18i	$ra, %call36(match_calc)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(impmtx)
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	slli.d	$a0, $fp, 32
	st.d	$a0, $sp, 264                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	st.d	$s4, $sp, 296                   # 8-byte Folded Spill
	st.d	$s6, $sp, 288                   # 8-byte Folded Spill
	st.d	$s3, $sp, 280                   # 8-byte Folded Spill
	beqz	$a0, .LBB3_47
# %bb.38:
	ld.d	$s4, $sp, 304                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 136                   # 8-byte Folded Reload
	blez	$s0, .LBB3_41
# %bb.39:                               # %.lr.ph.i
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(impmtx)
	bstrpick.d	$a1, $s3, 30, 0
	ld.d	$a2, $sp, 312                   # 8-byte Folded Reload
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
	ori	$fp, $zero, 1
	move	$a0, $s5
	ld.d	$a1, $sp, 288                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 296                   # 8-byte Folded Reload
	move	$a3, $zero
	move	$a4, $s8
	move	$a5, $s4
	ld.d	$a6, $sp, 280                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(match_calc)
	jirl	$ra, $ra, 0
	ld.d	$s6, $sp, 248                   # 8-byte Folded Reload
	beqz	$s8, .LBB3_56
# %bb.42:                               # %.lr.ph.preheader.i
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(impmtx)
	ld.d	$a5, $a0, 0
	ld.d	$a6, $sp, 256                   # 8-byte Folded Reload
	bstrpick.d	$a3, $a6, 31, 0
	ori	$a0, $zero, 8
	bltu	$a3, $a0, .LBB3_45
# %bb.43:                               # %vector.memcheck559
	addi.w	$a0, $zero, -4
	lu32i.d	$a0, 3
	alsl.d	$a0, $a6, $a0, 2
	bstrpick.d	$a0, $a0, 33, 2
	slli.d	$a0, $a0, 2
	addi.d	$a0, $a0, 4
	add.d	$a1, $a5, $a0
	bgeu	$s5, $a1, .LBB3_204
# %bb.44:                               # %vector.memcheck559
	add.d	$a0, $s5, $a0
	bgeu	$a5, $a0, .LBB3_204
.LBB3_45:
	move	$a1, $a5
	move	$a0, $a6
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
	move	$a2, $s4
	move	$a3, $zero
	move	$a4, $s8
	ld.d	$a5, $sp, 304                   # 8-byte Folded Reload
	move	$a6, $s3
	pcaddu18i	$ra, %call36(match_calc)
	jirl	$ra, $ra, 0
	ld.d	$s3, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 248                   # 8-byte Folded Reload
.LBB3_48:                               # %imp_match_out_vead.exit
	pcalau12i	$a0, %got_pc_hi20(outgap)
	ld.d	$a0, $a0, %got_pc_lo12(outgap)
	ld.w	$a0, $a0, 0
	ori	$a1, $zero, 1
	beq	$a0, $a1, .LBB3_57
# %bb.49:                               # %.preheader345
	blez	$s8, .LBB3_65
# %bb.50:                               # %.lr.ph363
	pcalau12i	$a0, %got_pc_hi20(offset)
	ld.d	$a0, $a0, %got_pc_lo12(offset)
	ld.w	$a0, $a0, 0
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	addi.d	$a1, $a1, 1
	bstrpick.d	$a1, $a1, 31, 0
	addi.d	$a2, $a1, -1
	ori	$a4, $zero, 4
	ori	$a3, $zero, 1
	bltu	$a2, $a4, .LBB3_54
# %bb.51:                               # %vector.ph586
	move	$a4, $a2
	bstrins.d	$a4, $zero, 1, 0
	ori	$a5, $zero, 1
	move	$a3, $a2
	bstrins.d	$a3, $a5, 1, 0
	pcalau12i	$a5, %pc_hi20(.LCPI3_1)
	vld	$vr0, $a5, %pc_lo12(.LCPI3_1)
	vreplgr2vr.w	$vr1, $a0
	addi.d	$a5, $s5, 4
	vldi	$vr2, -800
	move	$a6, $a4
	.p2align	4, , 16
.LBB3_52:                               # %vector.body591
                                        # =>This Inner Loop Header: Depth=1
	vmul.w	$vr3, $vr1, $vr0
	vpickve2gr.w	$a7, $vr3, 3
	movgr2fr.w	$fa4, $a7
	ffint.d.w	$fa4, $fa4
	vpickve2gr.w	$a7, $vr3, 2
	movgr2fr.w	$fa5, $a7
	ffint.d.w	$fa5, $fa5
	vextrins.d	$vr5, $vr4, 16
	vpickve2gr.w	$a7, $vr3, 1
	movgr2fr.w	$fa4, $a7
	ffint.d.w	$fa4, $fa4
	vpickve2gr.w	$a7, $vr3, 0
	movgr2fr.w	$fa3, $a7
	ffint.d.w	$fa3, $fa3
	vld	$vr6, $a5, 0
	vextrins.d	$vr3, $vr4, 16
	vfmul.d	$vr3, $vr3, $vr2
	vfmul.d	$vr4, $vr5, $vr2
	vreplvei.w	$vr5, $vr6, 1
	fcvt.d.s	$fa5, $fa5
	vreplvei.w	$vr7, $vr6, 0
	fcvt.d.s	$fa7, $fa7
	vextrins.d	$vr7, $vr5, 16
	vreplvei.w	$vr5, $vr6, 3
	fcvt.d.s	$fa5, $fa5
	vreplvei.w	$vr6, $vr6, 2
	fcvt.d.s	$fa6, $fa6
	vextrins.d	$vr6, $vr5, 16
	vfadd.d	$vr4, $vr6, $vr4
	vfadd.d	$vr3, $vr7, $vr3
	vreplvei.d	$vr5, $vr3, 1
	fcvt.s.d	$fa5, $fa5
	vreplvei.d	$vr3, $vr3, 0
	fcvt.s.d	$fa3, $fa3
	vextrins.w	$vr3, $vr5, 16
	vreplvei.d	$vr5, $vr4, 0
	fcvt.s.d	$fa5, $fa5
	vextrins.w	$vr3, $vr5, 32
	vreplvei.d	$vr4, $vr4, 1
	fcvt.s.d	$fa4, $fa4
	vextrins.w	$vr3, $vr4, 48
	vst	$vr3, $a5, 0
	vaddi.wu	$vr0, $vr0, 4
	addi.d	$a6, $a6, -4
	addi.d	$a5, $a5, 16
	bnez	$a6, .LBB3_52
# %bb.53:                               # %middle.block596
	beq	$a2, $a4, .LBB3_65
.LBB3_54:                               # %scalar.ph584.preheader
	mul.d	$a2, $a0, $a3
	alsl.d	$a4, $a3, $s5, 2
	sub.d	$a1, $a1, $a3
	vldi	$vr0, -800
	.p2align	4, , 16
.LBB3_55:                               # %scalar.ph584
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
	bne	$a0, $fp, .LBB3_65
.LBB3_57:                               # %.preheader342
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	blez	$a0, .LBB3_61
# %bb.58:                               # %.lr.ph369
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align.ogcp1)
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	ld.d	$a2, $a1, %pc_lo12(A__align.fgcp1)
	addi.d	$a1, $s3, 1
	bstrpick.d	$a1, $a1, 31, 0
	addi.d	$a4, $a1, -1
	ori	$a5, $zero, 12
	ori	$a3, $zero, 1
	bgeu	$a4, $a5, .LBB3_193
.LBB3_59:                               # %scalar.ph627.preheader
	alsl.d	$a2, $a3, $a2, 2
	addi.d	$a2, $a2, -4
	ld.d	$a4, $sp, 312                   # 8-byte Folded Reload
	alsl.d	$a4, $a3, $a4, 2
	sub.d	$a1, $a1, $a3
	.p2align	4, , 16
.LBB3_60:                               # %scalar.ph627
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $a0, 0
	fld.s	$fa1, $a2, 0
	fld.s	$fa2, $a4, 0
	fadd.s	$fa0, $fa0, $fa1
	fadd.s	$fa0, $fa2, $fa0
	fst.s	$fa0, $a4, 0
	addi.d	$a2, $a2, 4
	addi.d	$a1, $a1, -1
	addi.d	$a4, $a4, 4
	bnez	$a1, .LBB3_60
.LBB3_61:                               # %.preheader340
	ld.d	$t1, $sp, 256                   # 8-byte Folded Reload
	blez	$s8, .LBB3_77
# %bb.62:                               # %.lr.ph372
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align.ogcp2)
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	ld.d	$a2, $a1, %pc_lo12(A__align.fgcp2)
	addi.d	$a1, $t1, 1
	bstrpick.d	$a1, $a1, 31, 0
	addi.d	$a4, $a1, -1
	ori	$a5, $zero, 12
	ori	$a3, $zero, 1
	bgeu	$a4, $a5, .LBB3_198
.LBB3_63:                               # %scalar.ph657.preheader
	alsl.d	$a2, $a3, $a2, 2
	addi.d	$a2, $a2, -4
	alsl.d	$a4, $a3, $s5, 2
	sub.d	$a1, $a1, $a3
	.p2align	4, , 16
.LBB3_64:                               # %scalar.ph657
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $a0, 0
	fld.s	$fa1, $a2, 0
	fld.s	$fa2, $a4, 0
	fadd.s	$fa0, $fa0, $fa1
	fadd.s	$fa0, $fa2, $fa0
	fst.s	$fa0, $a4, 0
	addi.d	$a2, $a2, 4
	addi.d	$a1, $a1, -1
	addi.d	$a4, $a4, 4
	bnez	$a1, .LBB3_64
	b	.LBB3_73
.LBB3_65:                               # %.preheader343
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	blez	$a0, .LBB3_72
# %bb.66:                               # %.lr.ph366
	pcalau12i	$a0, %got_pc_hi20(offset)
	ld.d	$a0, $a0, %got_pc_lo12(offset)
	ld.w	$a0, $a0, 0
	addi.d	$a1, $s3, 1
	bstrpick.d	$a1, $a1, 31, 0
	addi.d	$a2, $a1, -1
	ori	$a4, $zero, 4
	ori	$a3, $zero, 1
	bltu	$a2, $a4, .LBB3_70
# %bb.67:                               # %vector.ph601
	move	$a4, $a2
	bstrins.d	$a4, $zero, 1, 0
	ori	$a5, $zero, 1
	move	$a3, $a2
	bstrins.d	$a3, $a5, 1, 0
	pcalau12i	$a5, %pc_hi20(.LCPI3_1)
	vld	$vr0, $a5, %pc_lo12(.LCPI3_1)
	vreplgr2vr.w	$vr1, $a0
	ld.d	$a5, $sp, 312                   # 8-byte Folded Reload
	addi.d	$a5, $a5, 4
	vldi	$vr2, -800
	move	$a6, $a4
	.p2align	4, , 16
.LBB3_68:                               # %vector.body606
                                        # =>This Inner Loop Header: Depth=1
	vmul.w	$vr3, $vr1, $vr0
	vpickve2gr.w	$a7, $vr3, 3
	movgr2fr.w	$fa4, $a7
	ffint.d.w	$fa4, $fa4
	vpickve2gr.w	$a7, $vr3, 2
	movgr2fr.w	$fa5, $a7
	ffint.d.w	$fa5, $fa5
	vextrins.d	$vr5, $vr4, 16
	vpickve2gr.w	$a7, $vr3, 1
	movgr2fr.w	$fa4, $a7
	ffint.d.w	$fa4, $fa4
	vpickve2gr.w	$a7, $vr3, 0
	movgr2fr.w	$fa3, $a7
	ffint.d.w	$fa3, $fa3
	vld	$vr6, $a5, 0
	vextrins.d	$vr3, $vr4, 16
	vfmul.d	$vr3, $vr3, $vr2
	vfmul.d	$vr4, $vr5, $vr2
	vreplvei.w	$vr5, $vr6, 1
	fcvt.d.s	$fa5, $fa5
	vreplvei.w	$vr7, $vr6, 0
	fcvt.d.s	$fa7, $fa7
	vextrins.d	$vr7, $vr5, 16
	vreplvei.w	$vr5, $vr6, 3
	fcvt.d.s	$fa5, $fa5
	vreplvei.w	$vr6, $vr6, 2
	fcvt.d.s	$fa6, $fa6
	vextrins.d	$vr6, $vr5, 16
	vfadd.d	$vr4, $vr6, $vr4
	vfadd.d	$vr3, $vr7, $vr3
	vreplvei.d	$vr5, $vr3, 1
	fcvt.s.d	$fa5, $fa5
	vreplvei.d	$vr3, $vr3, 0
	fcvt.s.d	$fa3, $fa3
	vextrins.w	$vr3, $vr5, 16
	vreplvei.d	$vr5, $vr4, 0
	fcvt.s.d	$fa5, $fa5
	vextrins.w	$vr3, $vr5, 32
	vreplvei.d	$vr4, $vr4, 1
	fcvt.s.d	$fa4, $fa4
	vextrins.w	$vr3, $vr4, 48
	vst	$vr3, $a5, 0
	vaddi.wu	$vr0, $vr0, 4
	addi.d	$a6, $a6, -4
	addi.d	$a5, $a5, 16
	bnez	$a6, .LBB3_68
# %bb.69:                               # %middle.block613
	beq	$a2, $a4, .LBB3_72
.LBB3_70:                               # %scalar.ph599.preheader
	mul.d	$a2, $a0, $a3
	ld.d	$a4, $sp, 312                   # 8-byte Folded Reload
	alsl.d	$a4, $a3, $a4, 2
	sub.d	$a1, $a1, $a3
	vldi	$vr0, -800
	.p2align	4, , 16
.LBB3_71:                               # %scalar.ph599
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
	bnez	$a1, .LBB3_71
.LBB3_72:                               # %.loopexit341
	ld.d	$t1, $sp, 256                   # 8-byte Folded Reload
	blez	$s8, .LBB3_77
.LBB3_73:                               # %.lr.ph376
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	ld.d	$a6, $a0, %pc_lo12(A__align.ogcp1)
	addi.d	$a0, $a6, 4
	ld.d	$a1, $sp, 208                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(A__align.m)
	ld.d	$a2, $sp, 200                   # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(A__align.mp)
	addi.d	$a3, $t1, 1
	bstrpick.d	$a3, $a3, 31, 0
	addi.d	$a5, $a3, -1
	ori	$a7, $zero, 12
	ori	$a4, $zero, 1
	bgeu	$a5, $a7, .LBB3_124
.LBB3_74:                               # %scalar.ph687.preheader
	alsl.d	$a5, $a4, $s5, 2
	addi.d	$a5, $a5, -4
	alsl.d	$a1, $a4, $a1, 2
	alsl.d	$a2, $a4, $a2, 2
	sub.d	$a3, $a3, $a4
	.p2align	4, , 16
.LBB3_75:                               # %scalar.ph687
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $a5, 0
	fld.s	$fa1, $a0, 0
	fadd.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $a1, 0
	st.w	$zero, $a2, 0
	addi.d	$a5, $a5, 4
	addi.d	$a1, $a1, 4
	addi.d	$a3, $a3, -1
	addi.d	$a2, $a2, 4
	bnez	$a3, .LBB3_75
.LBB3_76:
	move	$a0, $zero
	b	.LBB3_78
.LBB3_77:                               # %._crit_edge377
	ori	$a0, $zero, 1
	beqz	$s8, .LBB3_203
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
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s0, $a1, %pc_lo12(A__align.lastverticalw)
	fst.s	$fa0, $s0, 0
	pcalau12i	$a1, %got_pc_hi20(outgap)
	ld.d	$a1, $a1, %got_pc_lo12(outgap)
	st.d	$a1, $sp, 40                    # 8-byte Folded Spill
	ld.w	$a1, $a1, 0
	sltu	$a2, $zero, $a1
	add.w	$fp, $a2, $s3
	ori	$a2, $zero, 2
	blt	$fp, $a2, .LBB3_100
# %bb.80:                               # %.lr.ph401
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	sltui	$a1, $a1, 1
	or	$a0, $a1, $a0
	st.d	$a0, $sp, 264                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(impmtx)
	st.d	$a0, $sp, 248                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	ld.d	$a5, $a0, %pc_lo12(A__align.ogcp2)
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align.ijp)
	st.d	$a0, $sp, 232                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align.m)
	ld.d	$a1, $sp, 200                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(A__align.mp)
	ld.d	$a2, $sp, 224                   # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(A__align.fgcp2)
	st.d	$a2, $sp, 224                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 216                   # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(A__align.fgcp1)
	st.d	$a2, $sp, 216                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 240                   # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(A__align.ogcp1)
	st.d	$a2, $sp, 208                   # 8-byte Folded Spill
	ori	$a2, $zero, 0
	lu32i.d	$a2, -1
	add.d	$a2, $a3, $a2
	srai.d	$s1, $a2, 30
	ld.d	$a4, $sp, 256                   # 8-byte Folded Reload
	addi.w	$a2, $a4, -1
	st.d	$a2, $sp, 200                   # 8-byte Folded Spill
	bstrpick.d	$a2, $a2, 31, 0
	slli.d	$a3, $a2, 2
	addi.d	$a3, $a3, 4
	st.d	$a3, $sp, 152                   # 8-byte Folded Spill
	addi.d	$a2, $a2, 1
	st.d	$a2, $sp, 64                    # 8-byte Folded Spill
	bstrpick.d	$a2, $a2, 32, 3
	slli.d	$a3, $a2, 3
	slli.d	$a2, $a2, 5
	st.d	$a2, $sp, 56                    # 8-byte Folded Spill
	st.d	$a3, $sp, 144                   # 8-byte Folded Spill
	sub.d	$a2, $a4, $a3
	st.d	$a2, $sp, 48                    # 8-byte Folded Spill
	addi.d	$a0, $a0, 4
	st.d	$a0, $sp, 192                   # 8-byte Folded Spill
	addi.d	$a0, $a1, 4
	st.d	$a0, $sp, 184                   # 8-byte Folded Spill
	st.d	$a5, $sp, 240                   # 8-byte Folded Spill
	addi.d	$a0, $a5, 4
	st.d	$a0, $sp, 176                   # 8-byte Folded Spill
	movgr2fr.w	$fs0, $zero
	ori	$s7, $zero, 1
	b	.LBB3_82
	.p2align	4, , 16
.LBB3_81:                               # %._crit_edge393
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
	slli.d	$s2, $s4, 2
	ld.d	$a0, $sp, 312                   # 8-byte Folded Reload
	fldx.s	$fa0, $a0, $s2
	move	$s3, $s6
	move	$s6, $s5
	fst.s	$fa0, $s5, 0
	move	$a0, $s3
	ld.d	$a1, $sp, 288                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 296                   # 8-byte Folded Reload
	move	$a3, $s7
	move	$a4, $s8
	ld.d	$a5, $sp, 304                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 280                   # 8-byte Folded Reload
	move	$a7, $zero
	pcaddu18i	$ra, %call36(match_calc)
	jirl	$ra, $ra, 0
	slli.d	$a1, $s7, 3
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	bnez	$a0, .LBB3_88
# %bb.83:                               # %.lr.ph.preheader.i326
                                        #   in Loop: Header=BB3_82 Depth=1
	ld.d	$a0, $sp, 248                   # 8-byte Folded Reload
	ldx.d	$a4, $a0, $a1
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	ori	$a2, $zero, 7
	bltu	$a0, $a2, .LBB3_86
# %bb.84:                               # %vector.memcheck703
                                        #   in Loop: Header=BB3_82 Depth=1
	ld.d	$a2, $sp, 152                   # 8-byte Folded Reload
	add.d	$a0, $a4, $a2
	bgeu	$s3, $a0, .LBB3_97
# %bb.85:                               # %vector.memcheck703
                                        #   in Loop: Header=BB3_82 Depth=1
	add.d	$a0, $s3, $a2
	bgeu	$a4, $a0, .LBB3_97
.LBB3_86:                               #   in Loop: Header=BB3_82 Depth=1
	move	$a0, $a4
	ld.d	$a3, $sp, 256                   # 8-byte Folded Reload
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
	ld.d	$a2, $sp, 312                   # 8-byte Folded Reload
	fldx.s	$fa0, $a2, $a0
	fst.s	$fa0, $s3, 0
	ld.d	$a2, $sp, 272                   # 8-byte Folded Reload
	bnez	$a2, .LBB3_81
# %bb.89:                               # %.lr.ph392.preheader
                                        #   in Loop: Header=BB3_82 Depth=1
	move	$a2, $zero
	move	$a3, $zero
	fld.s	$fa2, $s6, 0
	ld.d	$a4, $sp, 240                   # 8-byte Folded Reload
	fld.s	$fa3, $a4, 4
	ld.d	$a4, $sp, 216                   # 8-byte Folded Reload
	fldx.s	$fa0, $a4, $s2
	ld.d	$a4, $sp, 232                   # 8-byte Folded Reload
	ldx.d	$a4, $a4, $a1
	ld.d	$a1, $sp, 208                   # 8-byte Folded Reload
	fldx.s	$fa1, $a1, $a0
	fadd.s	$fa2, $fa2, $fa3
	addi.d	$a1, $s3, 4
	addi.d	$a4, $a4, 4
	addi.d	$a5, $zero, -1
	ld.d	$a6, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 184                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 192                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 224                   # 8-byte Folded Reload
	move	$t2, $s6
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
.LBB3_91:                               # %.lr.ph392
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
.LBB3_97:                               # %vector.ph711
                                        #   in Loop: Header=BB3_82 Depth=1
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	add.d	$a0, $a4, $a2
	add.d	$a2, $s3, $a2
	addi.d	$a3, $s3, 16
	addi.d	$a4, $a4, 16
	ld.d	$a5, $sp, 144                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB3_98:                               # %vector.body715
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
# %bb.99:                               # %middle.block726
                                        #   in Loop: Header=BB3_82 Depth=1
	ld.d	$a3, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a4, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a5, $sp, 144                   # 8-byte Folded Reload
	bne	$a4, $a5, .LBB3_87
	b	.LBB3_88
.LBB3_100:
	movgr2fr.w	$fs0, $zero
	ld.d	$s8, $sp, 96                    # 8-byte Folded Reload
	ld.d	$t0, $sp, 168                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 256                   # 8-byte Folded Reload
	bnez	$a1, .LBB3_116
	b	.LBB3_102
.LBB3_101:                              # %._crit_edge402.loopexit
	ld.d	$t2, $sp, 40                    # 8-byte Folded Reload
	ld.w	$a1, $t2, 0
	move	$s5, $s3
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 96                    # 8-byte Folded Reload
	ld.d	$t0, $sp, 168                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 256                   # 8-byte Folded Reload
	bnez	$a1, .LBB3_116
.LBB3_102:                              # %.preheader339
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	bnez	$a0, .LBB3_109
# %bb.103:                              # %.lr.ph407
	pcalau12i	$a0, %got_pc_hi20(offset)
	ld.d	$a0, $a0, %got_pc_lo12(offset)
	ld.w	$a0, $a0, 0
	addi.d	$a1, $t1, 1
	bstrpick.d	$a1, $a1, 31, 0
	addi.d	$a2, $a1, -1
	ori	$a4, $zero, 4
	ori	$a3, $zero, 1
	bltu	$a2, $a4, .LBB3_107
# %bb.104:                              # %vector.ph733
	move	$a4, $a2
	bstrins.d	$a4, $zero, 1, 0
	ori	$a5, $zero, 1
	move	$a3, $a2
	bstrins.d	$a3, $a5, 1, 0
	vreplgr2vr.w	$vr0, $a0
	pcalau12i	$a5, %pc_hi20(.LCPI3_2)
	vld	$vr1, $a5, %pc_lo12(.LCPI3_2)
	pcalau12i	$a5, %pc_hi20(.LCPI3_3)
	vld	$vr2, $a5, %pc_lo12(.LCPI3_3)
	vreplgr2vr.d	$vr3, $t1
	addi.d	$a5, $s5, 4
	vldi	$vr4, -800
	move	$a6, $a4
	.p2align	4, , 16
.LBB3_105:                              # %vector.body740
                                        # =>This Inner Loop Header: Depth=1
	vsub.d	$vr5, $vr3, $vr2
	vsub.d	$vr6, $vr3, $vr1
	vpickev.w	$vr5, $vr6, $vr5
	vmul.w	$vr5, $vr0, $vr5
	vpickve2gr.w	$a7, $vr5, 3
	movgr2fr.w	$fa6, $a7
	ffint.d.w	$fa6, $fa6
	vpickve2gr.w	$a7, $vr5, 2
	movgr2fr.w	$fa7, $a7
	ffint.d.w	$fa7, $fa7
	vextrins.d	$vr7, $vr6, 16
	vpickve2gr.w	$a7, $vr5, 1
	movgr2fr.w	$fa6, $a7
	ffint.d.w	$fa6, $fa6
	vpickve2gr.w	$a7, $vr5, 0
	movgr2fr.w	$fa5, $a7
	ffint.d.w	$fa5, $fa5
	vld	$vr8, $a5, 0
	vextrins.d	$vr5, $vr6, 16
	vfmul.d	$vr5, $vr5, $vr4
	vfmul.d	$vr6, $vr7, $vr4
	vreplvei.w	$vr7, $vr8, 1
	fcvt.d.s	$fa7, $fa7
	vreplvei.w	$vr9, $vr8, 0
	fcvt.d.s	$ft1, $ft1
	vextrins.d	$vr9, $vr7, 16
	vreplvei.w	$vr7, $vr8, 3
	fcvt.d.s	$fa7, $fa7
	vreplvei.w	$vr8, $vr8, 2
	fcvt.d.s	$ft0, $ft0
	vextrins.d	$vr8, $vr7, 16
	vfadd.d	$vr6, $vr8, $vr6
	vfadd.d	$vr5, $vr9, $vr5
	vreplvei.d	$vr7, $vr5, 1
	fcvt.s.d	$fa7, $fa7
	vreplvei.d	$vr5, $vr5, 0
	fcvt.s.d	$fa5, $fa5
	vextrins.w	$vr5, $vr7, 16
	vreplvei.d	$vr7, $vr6, 0
	fcvt.s.d	$fa7, $fa7
	vextrins.w	$vr5, $vr7, 32
	vreplvei.d	$vr6, $vr6, 1
	fcvt.s.d	$fa6, $fa6
	vextrins.w	$vr5, $vr6, 48
	vst	$vr5, $a5, 0
	vaddi.du	$vr2, $vr2, 4
	vaddi.du	$vr1, $vr1, 4
	addi.d	$a6, $a6, -4
	addi.d	$a5, $a5, 16
	bnez	$a6, .LBB3_105
# %bb.106:                              # %middle.block747
	beq	$a2, $a4, .LBB3_109
.LBB3_107:                              # %scalar.ph731.preheader
	sub.w	$a2, $t1, $a3
	mul.d	$a2, $a0, $a2
	alsl.d	$a4, $a3, $s5, 2
	sub.d	$a1, $a1, $a3
	vldi	$vr0, -800
	.p2align	4, , 16
.LBB3_108:                              # %scalar.ph731
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
	blez	$t0, .LBB3_116
# %bb.110:                              # %.lr.ph410
	bstrpick.d	$a0, $s3, 31, 0
	pcalau12i	$a1, %got_pc_hi20(offset)
	ld.d	$a1, $a1, %got_pc_lo12(offset)
	ld.w	$a1, $a1, 0
	movgr2fr.w	$fa0, $a1
	ffint.d.w	$fa1, $fa0
	movgr2fr.d	$fa0, $a0
	ffint.d.l	$fa0, $fa0
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a1, $a0, %pc_lo12(A__align.lastverticalw)
	fneg.d	$fa1, $fa1
	addi.d	$a0, $s3, 1
	bstrpick.d	$a2, $a0, 31, 0
	addi.d	$a3, $a2, -1
	ori	$a4, $zero, 2
	ori	$a0, $zero, 1
	bltu	$a3, $a4, .LBB3_114
# %bb.111:                              # %vector.ph752
	move	$a5, $a3
	bstrins.d	$a5, $zero, 0, 0
	ori	$a0, $a3, 1
	addi.d	$a6, $a1, 8
	vldi	$vr2, -928
	move	$a7, $a5
	.p2align	4, , 16
.LBB3_112:                              # %vector.body755
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
# %bb.113:                              # %middle.block760
	beq	$a3, $a5, .LBB3_116
.LBB3_114:                              # %scalar.ph750.preheader
	alsl.d	$a1, $a0, $a1, 2
	sub.d	$a2, $a2, $a0
	vldi	$vr2, -800
	.p2align	4, , 16
.LBB3_115:                              # %scalar.ph750
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
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s3, $a0, %pc_lo12(A__align.lastverticalw)
	ld.d	$s6, $s8, %pc_lo12(A__align.mseq1)
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s4, $a0, %pc_lo12(A__align.mseq2)
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s0, $a0, %pc_lo12(A__align.ijp)
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	beqz	$a0, .LBB3_123
# %bb.117:
	ld.d	$a0, $s7, 0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	move	$s7, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	add.w	$a0, $a0, $s7
	st.d	$a0, $sp, 312                   # 8-byte Folded Spill
	addi.w	$s8, $a0, 1
	move	$a0, $s8
	pcaddu18i	$ra, %call36(AllocateCharVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 304                   # 8-byte Folded Spill
	move	$a0, $s8
	pcaddu18i	$ra, %call36(AllocateCharVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	ld.w	$a1, $a1, 0
	ori	$a3, $zero, 1
	addi.w	$ra, $s7, 0
	move	$s8, $fp
	addi.w	$a2, $fp, 0
	beq	$a1, $a3, .LBB3_134
# %bb.118:
	fld.s	$fa0, $s3, 0
	blez	$ra, .LBB3_129
# %bb.119:                              # %.lr.ph.i333
	slli.d	$a1, $s7, 3
	bstrpick.d	$a1, $a1, 33, 3
	slli.d	$a1, $a1, 3
	slli.d	$a3, $s8, 32
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
	ldx.d	$a6, $s0, $a1
	stx.w	$a5, $a6, $a3
	fmov.s	$fa0, $fa1
	b	.LBB3_120
.LBB3_123:
	st.d	$s2, $sp, 0
	move	$a0, $s5
	move	$a1, $s3
	move	$a2, $s7
	move	$a3, $s1
	move	$a4, $s6
	move	$a5, $s4
	move	$a6, $s0
	ld.d	$s0, $sp, 112                   # 8-byte Folded Reload
	move	$a7, $s0
	pcaddu18i	$ra, %call36(Atracking)
	jirl	$ra, $ra, 0
	b	.LBB3_178
.LBB3_124:                              # %vector.memcheck675
	addi.d	$a7, $a1, 4
	alsl.d	$t0, $a3, $a1, 2
	alsl.d	$t1, $a3, $s5, 2
	addi.d	$t1, $t1, -4
	sltu	$t1, $a7, $t1
	sltu	$t2, $s5, $t0
	and	$t1, $t1, $t2
	bnez	$t1, .LBB3_74
# %bb.125:                              # %vector.memcheck675
	addi.d	$a6, $a6, 8
	sltu	$a6, $a7, $a6
	sltu	$a7, $a0, $t0
	and	$a6, $a6, $a7
	bnez	$a6, .LBB3_74
# %bb.126:                              # %vector.ph689
	move	$a6, $a5
	bstrins.d	$a6, $zero, 2, 0
	ori	$a7, $zero, 1
	move	$a4, $a5
	bstrins.d	$a4, $a7, 2, 0
	vldrepl.w	$vr0, $a0, 0
	addi.d	$a7, $s5, 16
	addi.d	$t0, $a1, 20
	addi.d	$t1, $a2, 20
	vrepli.b	$vr1, 0
	move	$t2, $a6
	.p2align	4, , 16
.LBB3_127:                              # %vector.body692
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
# %bb.128:                              # %middle.block700
	bne	$a5, $a6, .LBB3_74
	b	.LBB3_76
.LBB3_129:                              # %.preheader2.i
	blez	$a2, .LBB3_134
# %bb.130:                              # %.lr.ph7.i
	slli.d	$a1, $s7, 32
	srai.d	$a1, $a1, 29
	slli.d	$a3, $s8, 2
	bstrpick.d	$a3, $a3, 32, 2
	slli.d	$a3, $a3, 2
	bstrpick.d	$a4, $s8, 30, 0
	sub.d	$a5, $zero, $s8
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
	ldx.d	$a6, $s0, $a1
	stx.w	$a5, $a6, $a3
	fmov.s	$fa0, $fa1
	b	.LBB3_131
.LBB3_134:                              # %.loopexit.i
	bltz	$ra, .LBB3_142
# %bb.135:                              # %.lr.ph10.preheader.i
	addi.d	$a3, $s7, 1
	bstrpick.d	$a1, $a3, 31, 0
	ori	$a4, $zero, 2
	bgeu	$a1, $a4, .LBB3_137
# %bb.136:
	move	$a3, $zero
	b	.LBB3_140
.LBB3_137:                              # %vector.ph765
	bstrpick.d	$a3, $a3, 31, 1
	slli.d	$a3, $a3, 1
	addi.d	$a5, $s0, 8
	move	$a6, $a3
	.p2align	4, , 16
.LBB3_138:                              # %vector.body768
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a7, $a5, -8
	ld.d	$t0, $a5, 0
	addi.d	$t1, $a4, -1
	st.w	$t1, $a7, 0
	st.w	$a4, $t0, 0
	addi.d	$a4, $a4, 2
	addi.d	$a6, $a6, -2
	addi.d	$a5, $a5, 16
	bnez	$a6, .LBB3_138
# %bb.139:                              # %middle.block771
	beq	$a1, $a3, .LBB3_142
.LBB3_140:                              # %.lr.ph10.i.preheader
	alsl.d	$a4, $a3, $s0, 3
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
	ld.d	$a1, $sp, 416
	bltz	$a2, .LBB3_150
# %bb.143:                              # %.lr.ph13.i
	ld.d	$a3, $s0, 0
	addi.d	$a5, $s8, 1
	bstrpick.d	$a4, $a5, 31, 0
	ori	$a6, $zero, 8
	bgeu	$a4, $a6, .LBB3_145
# %bb.144:
	move	$a5, $zero
	b	.LBB3_148
.LBB3_145:                              # %vector.ph776
	bstrpick.d	$a5, $a5, 31, 3
	slli.d	$a5, $a5, 3
	pcalau12i	$a6, %pc_hi20(.LCPI3_4)
	vld	$vr0, $a6, %pc_lo12(.LCPI3_4)
	addi.d	$a6, $a3, 16
	vrepli.b	$vr1, -1
	vrepli.w	$vr2, -5
	move	$a7, $a5
	.p2align	4, , 16
.LBB3_146:                              # %vector.body779
                                        # =>This Inner Loop Header: Depth=1
	vxor.v	$vr3, $vr0, $vr1
	vsub.w	$vr4, $vr2, $vr0
	vst	$vr3, $a6, -16
	vst	$vr4, $a6, 0
	vaddi.wu	$vr0, $vr0, 8
	addi.d	$a7, $a7, -8
	addi.d	$a6, $a6, 32
	bnez	$a7, .LBB3_146
# %bb.147:                              # %middle.block784
	beq	$a4, $a5, .LBB3_150
.LBB3_148:                              # %scalar.ph774.preheader
	alsl.d	$a3, $a5, $a3, 2
	nor	$a6, $a5, $zero
	sub.d	$a4, $a4, $a5
	.p2align	4, , 16
.LBB3_149:                              # %scalar.ph774
                                        # =>This Inner Loop Header: Depth=1
	st.w	$a6, $a3, 0
	addi.d	$a3, $a3, 4
	addi.d	$a4, $a4, -1
	addi.d	$a6, $a6, -1
	bnez	$a4, .LBB3_149
.LBB3_150:                              # %._crit_edge.i
	ld.d	$a3, $sp, 304                   # 8-byte Folded Reload
	add.d	$a3, $a3, $ra
	add.d	$s3, $a3, $a2
	stx.b	$zero, $a3, $a2
	st.d	$a0, $sp, 296                   # 8-byte Folded Spill
	add.d	$a3, $a0, $ra
	add.d	$s5, $a3, $a2
	stx.b	$zero, $a3, $a2
	st.w	$zero, $a1, 0
	ld.d	$a0, $sp, 312                   # 8-byte Folded Reload
	bltz	$a0, .LBB3_170
# %bb.151:                              # %.lr.ph41.i.preheader
	move	$a2, $zero
	addi.w	$a3, $zero, -1
	ori	$a4, $zero, 111
	ori	$a5, $zero, 45
	move	$a6, $s8
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB3_152:                              # %.lr.ph41.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_156 Depth 2
                                        #     Child Loop BB3_162 Depth 2
	addi.w	$t0, $s7, 0
	slli.d	$t3, $t0, 3
	ldx.d	$a7, $s0, $t3
	addi.w	$t1, $a6, 0
	slli.d	$t4, $t1, 2
	ldx.w	$t2, $a7, $t4
	bltz	$t2, .LBB3_159
# %bb.153:                              #   in Loop: Header=BB3_152 Depth=1
	beqz	$t2, .LBB3_169
# %bb.154:                              #   in Loop: Header=BB3_152 Depth=1
	sub.d	$a7, $s7, $t2
	move	$t2, $a3
	nor	$t5, $a7, $zero
	add.w	$t5, $s7, $t5
	beqz	$t5, .LBB3_160
.LBB3_155:                              # %.lr.ph19.i.preheader
                                        #   in Loop: Header=BB3_152 Depth=1
	sub.d	$t5, $a7, $s7
	addi.w	$t7, $t5, 1
	.p2align	4, , 16
.LBB3_156:                              # %.lr.ph19.i
                                        #   Parent Loop BB3_152 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$t5, $s3, -1
	st.b	$a4, $s3, -1
	addi.d	$t6, $s5, -1
	st.b	$a5, $s5, -1
	bstrpick.d	$t7, $t7, 31, 0
	addi.d	$t7, $t7, 1
	slli.d	$t8, $t7, 31
	addi.d	$a2, $a2, 1
	move	$s5, $t6
	move	$s3, $t5
	bgez	$t8, .LBB3_156
# %bb.157:                              # %._crit_edge20.i
                                        #   in Loop: Header=BB3_152 Depth=1
	bne	$t2, $a3, .LBB3_161
.LBB3_158:                              # %._crit_edge30.i
                                        #   in Loop: Header=BB3_152 Depth=1
	bne	$t0, $ra, .LBB3_164
	b	.LBB3_166
	.p2align	4, , 16
.LBB3_159:                              #   in Loop: Header=BB3_152 Depth=1
	addi.d	$a7, $s7, -1
	nor	$t5, $a7, $zero
	add.w	$t5, $s7, $t5
	bnez	$t5, .LBB3_155
.LBB3_160:                              #   in Loop: Header=BB3_152 Depth=1
	move	$t5, $s3
	move	$t6, $s5
	beq	$t2, $a3, .LBB3_158
.LBB3_161:                              # %.lr.ph29.preheader.i
                                        #   in Loop: Header=BB3_152 Depth=1
	nor	$t7, $t2, $zero
	addi.w	$t8, $t2, 1
	.p2align	4, , 16
.LBB3_162:                              # %.lr.ph29.i
                                        #   Parent Loop BB3_152 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.b	$a5, $t5, -1
	addi.d	$t5, $t5, -1
	st.b	$a4, $t6, -1
	bstrpick.d	$t8, $t8, 31, 0
	addi.d	$t8, $t8, 1
	slli.d	$fp, $t8, 31
	addi.d	$t6, $t6, -1
	bgez	$fp, .LBB3_162
# %bb.163:                              # %._crit_edge30.loopexit.i
                                        #   in Loop: Header=BB3_152 Depth=1
	add.d	$a2, $a2, $t7
	beq	$t0, $ra, .LBB3_166
.LBB3_164:                              # %._crit_edge30.i
                                        #   in Loop: Header=BB3_152 Depth=1
	addi.w	$t7, $s8, 0
	beq	$t1, $t7, .LBB3_166
# %bb.165:                              #   in Loop: Header=BB3_152 Depth=1
	ld.d	$t7, $a0, %pc_lo12(impmtx)
	ldx.d	$t3, $t7, $t3
	fldx.s	$fa0, $t3, $t4
	fld.s	$fa1, $a1, 0
	fadd.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $a1, 0
.LBB3_166:                              #   in Loop: Header=BB3_152 Depth=1
	blez	$t0, .LBB3_171
# %bb.167:                              #   in Loop: Header=BB3_152 Depth=1
	blez	$t1, .LBB3_171
# %bb.168:                              #   in Loop: Header=BB3_152 Depth=1
	add.d	$a6, $t2, $a6
	addi.d	$s3, $t5, -1
	st.b	$a4, $t5, -1
	addi.d	$s5, $t6, -1
	addi.w	$a2, $a2, 2
	st.b	$a4, $t6, -1
	move	$s7, $a7
	ld.d	$a7, $sp, 312                   # 8-byte Folded Reload
	bge	$a7, $a2, .LBB3_152
	b	.LBB3_170
	.p2align	4, , 16
.LBB3_169:                              #   in Loop: Header=BB3_152 Depth=1
	addi.d	$a7, $s7, -1
	move	$t2, $a3
	nor	$t5, $a7, $zero
	add.w	$t5, $s7, $t5
	bnez	$t5, .LBB3_155
	b	.LBB3_160
.LBB3_170:                              # %._crit_edge42.i
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 160                   # 8-byte Folded Reload
	bgtz	$a0, .LBB3_172
	b	.LBB3_174
.LBB3_171:
	move	$s3, $t5
	move	$s5, $t6
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 160                   # 8-byte Folded Reload
	blez	$a0, .LBB3_174
.LBB3_172:                              # %.lr.ph50.preheader.i
	move	$fp, $s7
	ld.d	$s0, $sp, 112                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB3_173:                              # %.lr.ph50.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s6, 0
	ld.d	$a1, $fp, 0
	move	$a2, $s3
	pcaddu18i	$ra, %call36(gapireru)
	jirl	$ra, $ra, 0
	addi.d	$s0, $s0, -1
	addi.d	$fp, $fp, 8
	addi.d	$s6, $s6, 8
	bnez	$s0, .LBB3_173
.LBB3_174:                              # %.preheader.i
	ld.d	$s8, $sp, 96                    # 8-byte Folded Reload
	blez	$s2, .LBB3_177
# %bb.175:                              # %.lr.ph52.preheader.i
	move	$fp, $s1
	move	$s0, $s2
	.p2align	4, , 16
.LBB3_176:                              # %.lr.ph52.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s4, 0
	ld.d	$a1, $fp, 0
	move	$a2, $s5
	pcaddu18i	$ra, %call36(gapireru)
	jirl	$ra, $ra, 0
	addi.d	$s0, $s0, -1
	addi.d	$fp, $fp, 8
	addi.d	$s4, $s4, 8
	bnez	$s0, .LBB3_176
.LBB3_177:                              # %Atracking_localhom.exit
	ld.d	$a0, $sp, 304                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 296                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$s0, $sp, 112                   # 8-byte Folded Reload
.LBB3_178:
	ld.d	$a0, $s8, %pc_lo12(A__align.mseq1)
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.w	$a3, $a0, 0
	lu12i.w	$a4, 1220
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	blt	$a2, $a3, .LBB3_207
# %bb.179:
	ori	$a0, $a4, 2881
	bge	$a3, $a0, .LBB3_207
# %bb.180:
	blez	$s0, .LBB3_183
.LBB3_181:                              # %.lr.ph413
	ld.d	$fp, $s8, %pc_lo12(A__align.mseq1)
	.p2align	4, , 16
.LBB3_182:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s7, 0
	ld.d	$a1, $fp, 0
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	addi.d	$fp, $fp, 8
	addi.d	$s0, $s0, -1
	addi.d	$s7, $s7, 8
	bnez	$s0, .LBB3_182
.LBB3_183:                              # %.preheader
	blez	$s2, .LBB3_186
# %bb.184:                              # %.lr.ph415
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$fp, $a0, %pc_lo12(A__align.mseq2)
	.p2align	4, , 16
.LBB3_185:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s1, 0
	ld.d	$a1, $fp, 0
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	addi.d	$fp, $fp, 8
	addi.d	$s2, $s2, -1
	addi.d	$s1, $s1, 8
	bnez	$s2, .LBB3_185
.LBB3_186:                              # %._crit_edge416
	fmov.s	$fa0, $fs0
	fld.d	$fs0, $sp, 320                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 328                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 336                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 344                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 352                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 360                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 368                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 376                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 384                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 392                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 400                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 408                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 416
	ret
.LBB3_187:                              # %vector.ph
	bstrpick.d	$a3, $s0, 30, 2
	slli.d	$a3, $a3, 2
	vreplvei.d	$vr1, $vr0, 0
	vldi	$vr2, -912
	vldi	$vr3, -928
	move	$a4, $a0
	move	$a5, $a2
	move	$a6, $a3
	.p2align	4, , 16
.LBB3_188:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr4, $a4, 0
	vreplvei.w	$vr5, $vr4, 1
	fcvt.d.s	$fa5, $fa5
	vreplvei.w	$vr6, $vr4, 0
	fcvt.d.s	$fa6, $fa6
	vextrins.d	$vr6, $vr5, 16
	vreplvei.w	$vr5, $vr4, 3
	fcvt.d.s	$fa5, $fa5
	vreplvei.w	$vr4, $vr4, 2
	fcvt.d.s	$fa4, $fa4
	vextrins.d	$vr4, $vr5, 16
	vfsub.d	$vr4, $vr2, $vr4
	vfsub.d	$vr5, $vr2, $vr6
	vfmul.d	$vr5, $vr5, $vr3
	vfmul.d	$vr4, $vr4, $vr3
	vfmul.d	$vr4, $vr4, $vr1
	vfmul.d	$vr5, $vr5, $vr1
	vreplvei.d	$vr6, $vr5, 1
	fcvt.s.d	$fa6, $fa6
	vreplvei.d	$vr5, $vr5, 0
	fcvt.s.d	$fa5, $fa5
	vextrins.w	$vr5, $vr6, 16
	vreplvei.d	$vr6, $vr4, 0
	fcvt.s.d	$fa6, $fa6
	vextrins.w	$vr5, $vr6, 32
	vreplvei.d	$vr4, $vr4, 1
	vld	$vr6, $a5, 0
	fcvt.s.d	$fa4, $fa4
	vextrins.w	$vr5, $vr4, 48
	vst	$vr5, $a4, 0
	vreplvei.w	$vr4, $vr6, 1
	fcvt.d.s	$fa4, $fa4
	vreplvei.w	$vr5, $vr6, 0
	fcvt.d.s	$fa5, $fa5
	vextrins.d	$vr5, $vr4, 16
	vreplvei.w	$vr4, $vr6, 3
	fcvt.d.s	$fa4, $fa4
	vreplvei.w	$vr6, $vr6, 2
	fcvt.d.s	$fa6, $fa6
	vextrins.d	$vr6, $vr4, 16
	vfsub.d	$vr4, $vr2, $vr6
	vfsub.d	$vr5, $vr2, $vr5
	vfmul.d	$vr5, $vr5, $vr3
	vfmul.d	$vr4, $vr4, $vr3
	vfmul.d	$vr4, $vr4, $vr1
	vfmul.d	$vr5, $vr5, $vr1
	vreplvei.d	$vr6, $vr5, 1
	fcvt.s.d	$fa6, $fa6
	vreplvei.d	$vr5, $vr5, 0
	fcvt.s.d	$fa5, $fa5
	vextrins.w	$vr5, $vr6, 16
	vreplvei.d	$vr6, $vr4, 0
	fcvt.s.d	$fa6, $fa6
	vextrins.w	$vr5, $vr6, 32
	vreplvei.d	$vr4, $vr4, 1
	fcvt.s.d	$fa4, $fa4
	vextrins.w	$vr5, $vr4, 48
	vst	$vr5, $a5, 0
	addi.d	$a6, $a6, -4
	addi.d	$a5, $a5, 16
	addi.d	$a4, $a4, 16
	bnez	$a6, .LBB3_188
# %bb.189:                              # %middle.block
	beq	$a1, $a3, .LBB3_30
	b	.LBB3_28
.LBB3_190:                              # %vector.ph546
	bstrpick.d	$a3, $a7, 30, 2
	slli.d	$a3, $a3, 2
	vreplvei.d	$vr1, $vr0, 0
	vldi	$vr2, -912
	vldi	$vr3, -928
	move	$a4, $a0
	move	$a5, $a2
	move	$a6, $a3
	.p2align	4, , 16
.LBB3_191:                              # %vector.body551
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr4, $a4, 0
	vreplvei.w	$vr5, $vr4, 1
	fcvt.d.s	$fa5, $fa5
	vreplvei.w	$vr6, $vr4, 0
	fcvt.d.s	$fa6, $fa6
	vextrins.d	$vr6, $vr5, 16
	vreplvei.w	$vr5, $vr4, 3
	fcvt.d.s	$fa5, $fa5
	vreplvei.w	$vr4, $vr4, 2
	fcvt.d.s	$fa4, $fa4
	vextrins.d	$vr4, $vr5, 16
	vfsub.d	$vr4, $vr2, $vr4
	vfsub.d	$vr5, $vr2, $vr6
	vfmul.d	$vr5, $vr5, $vr3
	vfmul.d	$vr4, $vr4, $vr3
	vfmul.d	$vr4, $vr4, $vr1
	vfmul.d	$vr5, $vr5, $vr1
	vreplvei.d	$vr6, $vr5, 1
	fcvt.s.d	$fa6, $fa6
	vreplvei.d	$vr5, $vr5, 0
	fcvt.s.d	$fa5, $fa5
	vextrins.w	$vr5, $vr6, 16
	vreplvei.d	$vr6, $vr4, 0
	fcvt.s.d	$fa6, $fa6
	vextrins.w	$vr5, $vr6, 32
	vreplvei.d	$vr4, $vr4, 1
	vld	$vr6, $a5, 0
	fcvt.s.d	$fa4, $fa4
	vextrins.w	$vr5, $vr4, 48
	vst	$vr5, $a4, 0
	vreplvei.w	$vr4, $vr6, 1
	fcvt.d.s	$fa4, $fa4
	vreplvei.w	$vr5, $vr6, 0
	fcvt.d.s	$fa5, $fa5
	vextrins.d	$vr5, $vr4, 16
	vreplvei.w	$vr4, $vr6, 3
	fcvt.d.s	$fa4, $fa4
	vreplvei.w	$vr6, $vr6, 2
	fcvt.d.s	$fa6, $fa6
	vextrins.d	$vr6, $vr4, 16
	vfsub.d	$vr4, $vr2, $vr6
	vfsub.d	$vr5, $vr2, $vr5
	vfmul.d	$vr5, $vr5, $vr3
	vfmul.d	$vr4, $vr4, $vr3
	vfmul.d	$vr4, $vr4, $vr1
	vfmul.d	$vr5, $vr5, $vr1
	vreplvei.d	$vr6, $vr5, 1
	fcvt.s.d	$fa6, $fa6
	vreplvei.d	$vr5, $vr5, 0
	fcvt.s.d	$fa5, $fa5
	vextrins.w	$vr5, $vr6, 16
	vreplvei.d	$vr6, $vr4, 0
	fcvt.s.d	$fa6, $fa6
	vextrins.w	$vr5, $vr6, 32
	vreplvei.d	$vr4, $vr4, 1
	fcvt.s.d	$fa4, $fa4
	vextrins.w	$vr5, $vr4, 48
	vst	$vr5, $a5, 0
	addi.d	$a6, $a6, -4
	addi.d	$a5, $a5, 16
	addi.d	$a4, $a4, 16
	bnez	$a6, .LBB3_191
# %bb.192:                              # %middle.block556
	beq	$a1, $a3, .LBB3_37
	b	.LBB3_35
.LBB3_193:                              # %vector.memcheck616
	ld.d	$a6, $sp, 312                   # 8-byte Folded Reload
	addi.d	$a5, $a6, 4
	alsl.d	$a6, $a1, $a6, 2
	addi.d	$a7, $a0, 4
	sltu	$a7, $a5, $a7
	sltu	$t0, $a0, $a6
	and	$a7, $a7, $t0
	bnez	$a7, .LBB3_59
# %bb.194:                              # %vector.memcheck616
	alsl.d	$a7, $a1, $a2, 2
	addi.d	$a7, $a7, -4
	sltu	$a5, $a5, $a7
	sltu	$a6, $a2, $a6
	and	$a5, $a5, $a6
	bnez	$a5, .LBB3_59
# %bb.195:                              # %vector.ph629
	move	$a5, $a4
	bstrins.d	$a5, $zero, 2, 0
	ori	$a6, $zero, 1
	move	$a3, $a4
	vldrepl.w	$vr0, $a0, 0
	bstrins.d	$a3, $a6, 2, 0
	addi.d	$a6, $a2, 16
	ld.d	$a7, $sp, 312                   # 8-byte Folded Reload
	addi.d	$a7, $a7, 20
	move	$t0, $a5
	.p2align	4, , 16
.LBB3_196:                              # %vector.body632
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr1, $a6, -16
	vld	$vr2, $a6, 0
	vld	$vr3, $a7, -16
	vld	$vr4, $a7, 0
	vfadd.s	$vr1, $vr0, $vr1
	vfadd.s	$vr2, $vr0, $vr2
	vfadd.s	$vr1, $vr3, $vr1
	vfadd.s	$vr2, $vr4, $vr2
	vst	$vr1, $a7, -16
	vst	$vr2, $a7, 0
	addi.d	$a6, $a6, 32
	addi.d	$t0, $t0, -8
	addi.d	$a7, $a7, 32
	bnez	$t0, .LBB3_196
# %bb.197:                              # %middle.block642
	bne	$a4, $a5, .LBB3_59
	b	.LBB3_61
.LBB3_198:                              # %vector.memcheck645
	addi.d	$a5, $s5, 4
	alsl.d	$a6, $a1, $s5, 2
	addi.d	$a7, $a0, 4
	sltu	$a7, $a5, $a7
	sltu	$t0, $a0, $a6
	and	$a7, $a7, $t0
	bnez	$a7, .LBB3_63
# %bb.199:                              # %vector.memcheck645
	alsl.d	$a7, $a1, $a2, 2
	addi.d	$a7, $a7, -4
	sltu	$a5, $a5, $a7
	sltu	$a6, $a2, $a6
	and	$a5, $a5, $a6
	bnez	$a5, .LBB3_63
# %bb.200:                              # %vector.ph659
	move	$a5, $a4
	bstrins.d	$a5, $zero, 2, 0
	ori	$a6, $zero, 1
	move	$a3, $a4
	vldrepl.w	$vr0, $a0, 0
	bstrins.d	$a3, $a6, 2, 0
	addi.d	$a6, $a2, 16
	addi.d	$a7, $s5, 20
	move	$t0, $a5
	.p2align	4, , 16
.LBB3_201:                              # %vector.body662
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr1, $a6, -16
	vld	$vr2, $a6, 0
	vld	$vr3, $a7, -16
	vld	$vr4, $a7, 0
	vfadd.s	$vr1, $vr0, $vr1
	vfadd.s	$vr2, $vr0, $vr2
	vfadd.s	$vr1, $vr3, $vr1
	vfadd.s	$vr2, $vr4, $vr2
	vst	$vr1, $a7, -16
	vst	$vr2, $a7, 0
	addi.d	$a6, $a6, 32
	addi.d	$t0, $t0, -8
	addi.d	$a7, $a7, 32
	bnez	$t0, .LBB3_201
# %bb.202:                              # %middle.block672
	bne	$a4, $a5, .LBB3_63
	b	.LBB3_73
.LBB3_203:
	movgr2fr.w	$fa0, $zero
	ori	$a1, $zero, 1
	st.d	$a1, $sp, 272                   # 8-byte Folded Spill
	ld.d	$a3, $sp, 264                   # 8-byte Folded Reload
	b	.LBB3_79
.LBB3_204:                              # %vector.ph567
	bstrpick.d	$a0, $a6, 31, 3
	slli.d	$a4, $a0, 3
	slli.d	$a2, $a0, 5
	add.d	$a1, $a5, $a2
	andi	$a0, $a6, 7
	add.d	$a2, $s5, $a2
	addi.d	$a6, $s5, 16
	addi.d	$a5, $a5, 16
	move	$a7, $a4
	.p2align	4, , 16
.LBB3_205:                              # %vector.body570
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
	bnez	$a7, .LBB3_205
# %bb.206:                              # %middle.block579
	bne	$a3, $a4, .LBB3_46
	b	.LBB3_48
.LBB3_207:
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
	bgtz	$s0, .LBB3_181
	b	.LBB3_183
.Lfunc_end3:
	.size	A__align, .Lfunc_end3-A__align
                                        # -- End function
	.p2align	5                               # -- Begin function match_calc
	.type	match_calc,@function
match_calc:                             # @match_calc
# %bb.0:
	addi.d	$sp, $sp, -608
	st.d	$fp, $sp, 600                   # 8-byte Folded Spill
	st.d	$s0, $sp, 592                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 584                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 576                  # 8-byte Folded Spill
	fst.d	$fs2, $sp, 568                  # 8-byte Folded Spill
	fst.d	$fs3, $sp, 560                  # 8-byte Folded Spill
	fst.d	$fs4, $sp, 552                  # 8-byte Folded Spill
	fst.d	$fs5, $sp, 544                  # 8-byte Folded Spill
	fst.d	$fs6, $sp, 536                  # 8-byte Folded Spill
	fst.d	$fs7, $sp, 528                  # 8-byte Folded Spill
	beqz	$a7, .LBB4_8
# %bb.1:
	blez	$a4, .LBB4_8
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
	ld.d	$t1, $a1, 0
	slli.d	$a2, $a3, 2
	fldx.s	$fa0, $a7, $a2
	fldx.s	$fa1, $t0, $a2
	fldx.s	$ft13, $t1, $a2
	ld.d	$a3, $a1, 8
	ld.d	$a7, $a1, 16
	ld.d	$t0, $a1, 24
	ld.d	$t1, $a1, 32
	fldx.s	$fs1, $a3, $a2
	fldx.s	$ft14, $a7, $a2
	fldx.s	$fa2, $t0, $a2
	fldx.s	$fa3, $t1, $a2
	ld.d	$a3, $a1, 40
	ld.d	$a7, $a1, 48
	ld.d	$t0, $a1, 56
	ld.d	$t1, $a1, 64
	fldx.s	$fs0, $a3, $a2
	fldx.s	$fa4, $a7, $a2
	fldx.s	$fa5, $t0, $a2
	fldx.s	$ft12, $t1, $a2
	ld.d	$a3, $a1, 72
	ld.d	$a7, $a1, 80
	ld.d	$t0, $a1, 88
	ld.d	$t1, $a1, 112
	fldx.s	$ft15, $a3, $a2
	fldx.s	$fa6, $a7, $a2
	fldx.s	$fa7, $t0, $a2
	ld.d	$a3, $a1, 120
	ld.d	$a7, $a1, 128
	ld.d	$t0, $a1, 136
	fldx.s	$ft0, $t1, $a2
	fldx.s	$ft1, $a3, $a2
	fldx.s	$ft2, $a7, $a2
	fldx.s	$ft3, $t0, $a2
	ld.d	$a3, $a1, 144
	ld.d	$a7, $a1, 152
	ld.d	$t0, $a1, 160
	ld.d	$t1, $a1, 168
	fldx.s	$ft4, $a3, $a2
	fldx.s	$ft5, $a7, $a2
	fldx.s	$ft6, $t0, $a2
	fldx.s	$ft7, $t1, $a2
	ld.d	$a3, $a1, 176
	ld.d	$a7, $a1, 184
	ld.d	$t0, $a1, 192
	ld.d	$a1, $a1, 200
	fldx.s	$ft8, $a3, $a2
	fldx.s	$ft9, $a7, $a2
	fldx.s	$ft10, $t0, $a2
	fldx.s	$ft11, $a1, $a2
	vst	$vr0, $sp, 400                  # 16-byte Folded Spill
	vreplvei.w	$vr26, $vr0, 0
	vst	$vr1, $sp, 384                  # 16-byte Folded Spill
	vreplvei.w	$vr27, $vr1, 0
	vst	$vr21, $sp, 64                  # 16-byte Folded Spill
	vreplvei.w	$vr28, $vr21, 0
	vreplvei.w	$vr29, $vr25, 0
	vst	$vr22, $sp, 48                  # 16-byte Folded Spill
	vreplvei.w	$vr30, $vr22, 0
	vst	$vr2, $sp, 144                  # 16-byte Folded Spill
	vreplvei.w	$vr31, $vr2, 0
	vst	$vr3, $sp, 128                  # 16-byte Folded Spill
	vreplvei.w	$vr0, $vr3, 0
	vst	$vr24, $sp, 16                  # 16-byte Folded Spill
	vreplvei.w	$vr1, $vr24, 0
	vst	$vr4, $sp, 112                  # 16-byte Folded Spill
	vreplvei.w	$vr2, $vr4, 0
	vst	$vr5, $sp, 96                   # 16-byte Folded Spill
	vreplvei.w	$vr3, $vr5, 0
	vst	$vr20, $sp, 80                  # 16-byte Folded Spill
	vreplvei.w	$vr4, $vr20, 0
	vst	$vr23, $sp, 32                  # 16-byte Folded Spill
	vreplvei.w	$vr5, $vr23, 0
	vst	$vr6, $sp, 176                  # 16-byte Folded Spill
	vreplvei.w	$vr6, $vr6, 0
	vst	$vr7, $sp, 160                  # 16-byte Folded Spill
	vreplvei.w	$vr7, $vr7, 0
	vst	$vr8, $sp, 240                  # 16-byte Folded Spill
	vreplvei.w	$vr8, $vr8, 0
	vst	$vr9, $sp, 224                  # 16-byte Folded Spill
	vreplvei.w	$vr9, $vr9, 0
	vst	$vr10, $sp, 208                 # 16-byte Folded Spill
	vreplvei.w	$vr10, $vr10, 0
	vst	$vr11, $sp, 192                 # 16-byte Folded Spill
	vreplvei.w	$vr11, $vr11, 0
	vst	$vr12, $sp, 304                 # 16-byte Folded Spill
	vreplvei.w	$vr12, $vr12, 0
	vst	$vr13, $sp, 288                 # 16-byte Folded Spill
	vreplvei.w	$vr13, $vr13, 0
	vst	$vr14, $sp, 272                 # 16-byte Folded Spill
	vreplvei.w	$vr14, $vr14, 0
	vst	$vr15, $sp, 256                 # 16-byte Folded Spill
	vreplvei.w	$vr15, $vr15, 0
	vst	$vr16, $sp, 368                 # 16-byte Folded Spill
	vreplvei.w	$vr16, $vr16, 0
	vst	$vr17, $sp, 352                 # 16-byte Folded Spill
	vreplvei.w	$vr17, $vr17, 0
	vst	$vr18, $sp, 336                 # 16-byte Folded Spill
	vreplvei.w	$vr18, $vr18, 0
	vst	$vr19, $sp, 320                 # 16-byte Folded Spill
	vreplvei.w	$vr19, $vr19, 0
	pcalau12i	$a1, %got_pc_hi20(n_dis_consweight_multi)
	ld.d	$a1, $a1, %got_pc_lo12(n_dis_consweight_multi)
	move	$a2, $zero
	ori	$a3, $zero, 2080
	ori	$a7, $zero, 2184
	ori	$t0, $zero, 2288
	ori	$t1, $zero, 2392
	ori	$t2, $zero, 2496
	ori	$t3, $zero, 2600
	addi.d	$t4, $sp, 424
	ori	$t5, $zero, 96
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
	vld	$vr5, $sp, 64                   # 16-byte Folded Reload
	fmadd.s	$fa0, $fa0, $fa5, $fs2
	fmadd.s	$fa0, $fa1, $fs1, $fa0
	vld	$vr29, $sp, 48                  # 16-byte Folded Reload
	fmadd.s	$fa0, $fa2, $fs5, $fa0
	fld.s	$fa1, $a1, 408
	fld.s	$fa2, $a1, 512
	fld.s	$fa3, $a1, 616
	fld.s	$fa4, $a1, 720
	vld	$vr22, $sp, 144                 # 16-byte Folded Reload
	fmadd.s	$fa0, $fa1, $ft14, $fa0
	vld	$vr23, $sp, 128                 # 16-byte Folded Reload
	fmadd.s	$fa0, $fa2, $ft15, $fa0
	vld	$vr31, $sp, 16                  # 16-byte Folded Reload
	fmadd.s	$fa0, $fa3, $fs7, $fa0
	vld	$vr24, $sp, 112                 # 16-byte Folded Reload
	fmadd.s	$fa0, $fa4, $fs0, $fa0
	fld.s	$fa1, $a1, 824
	fld.s	$fa2, $a1, 928
	fld.s	$fa3, $a1, 1032
	fld.s	$fa4, $a1, 1136
	vld	$vr27, $sp, 96                  # 16-byte Folded Reload
	fmadd.s	$fa0, $fa1, $fs3, $fa0
	vld	$vr28, $sp, 80                  # 16-byte Folded Reload
	fmadd.s	$fa0, $fa2, $fs4, $fa0
	vld	$vr30, $sp, 32                  # 16-byte Folded Reload
	fmadd.s	$fa0, $fa3, $fs6, $fa0
	vld	$vr20, $sp, 176                 # 16-byte Folded Reload
	fmadd.s	$fa0, $fa4, $ft12, $fa0
	fld.s	$fa1, $a1, 1240
	fld.s	$fa2, $a1, 1344
	fld.s	$fa3, $a1, 1448
	fld.s	$fa4, $a1, 1552
	vld	$vr21, $sp, 160                 # 16-byte Folded Reload
	fmadd.s	$fa0, $fa1, $ft13, $fa0
	vld	$vr6, $sp, 400                  # 16-byte Folded Reload
	fmadd.s	$fa0, $fa2, $fa6, $fa0
	vld	$vr7, $sp, 384                  # 16-byte Folded Reload
	fmadd.s	$fa0, $fa3, $fa7, $fa0
	vld	$vr16, $sp, 240                 # 16-byte Folded Reload
	fmadd.s	$fa0, $fa4, $ft8, $fa0
	fld.s	$fa1, $a1, 1656
	fld.s	$fa2, $a1, 1760
	fld.s	$fa3, $a1, 1864
	fld.s	$fa4, $a1, 1968
	vld	$vr17, $sp, 224                 # 16-byte Folded Reload
	fmadd.s	$fa0, $fa1, $ft9, $fa0
	vld	$vr18, $sp, 208                 # 16-byte Folded Reload
	fmadd.s	$fa0, $fa2, $ft10, $fa0
	vld	$vr19, $sp, 192                 # 16-byte Folded Reload
	fmadd.s	$fa0, $fa3, $ft11, $fa0
	vld	$vr12, $sp, 304                 # 16-byte Folded Reload
	fmadd.s	$fa0, $fa4, $ft4, $fa0
	ori	$a2, $zero, 2072
	fldx.s	$fa1, $a1, $a2
	ori	$a2, $zero, 2176
	fldx.s	$fa2, $a1, $a2
	ori	$a2, $zero, 2280
	fldx.s	$fa3, $a1, $a2
	ori	$a2, $zero, 2384
	fldx.s	$fa4, $a1, $a2
	vld	$vr13, $sp, 288                 # 16-byte Folded Reload
	fmadd.s	$fa0, $fa1, $ft5, $fa0
	vld	$vr14, $sp, 272                 # 16-byte Folded Reload
	fmadd.s	$fa0, $fa2, $ft6, $fa0
	vld	$vr15, $sp, 256                 # 16-byte Folded Reload
	fmadd.s	$fa0, $fa3, $ft7, $fa0
	vld	$vr8, $sp, 368                  # 16-byte Folded Reload
	fmadd.s	$fa0, $fa4, $ft0, $fa0
	ori	$a2, $zero, 2488
	fld.s	$fa1, $a1, 100
	fldx.s	$fa2, $a1, $a2
	ori	$a2, $zero, 2592
	fld.s	$fa3, $a1, 204
	fmadd.s	$fa1, $fa1, $fa5, $fs2
	fldx.s	$fa4, $a1, $a2
	ori	$a2, $zero, 2696
	fmadd.s	$fa1, $fa3, $fs1, $fa1
	fldx.s	$fa3, $a1, $a2
	fld.s	$fa5, $a1, 308
	vld	$vr9, $sp, 352                  # 16-byte Folded Reload
	fmadd.s	$fa0, $fa2, $ft1, $fa0
	vld	$vr10, $sp, 336                 # 16-byte Folded Reload
	fmadd.s	$fa0, $fa4, $ft2, $fa0
	vld	$vr11, $sp, 320                 # 16-byte Folded Reload
	fmadd.s	$fa0, $fa3, $ft3, $fa0
	fmadd.s	$fa1, $fa5, $fs5, $fa1
	fld.s	$fa2, $a1, 412
	fld.s	$fa3, $a1, 516
	fld.s	$fa4, $a1, 620
	fst.s	$fa0, $sp, 520
	fmadd.s	$fa0, $fa2, $ft14, $fa1
	fmadd.s	$fa0, $fa3, $ft15, $fa0
	fmadd.s	$fa0, $fa4, $fs7, $fa0
	fld.s	$fa1, $a1, 724
	fld.s	$fa2, $a1, 828
	fld.s	$fa3, $a1, 932
	fld.s	$fa4, $a1, 1036
	fmadd.s	$fa0, $fa1, $fs0, $fa0
	fmadd.s	$fa0, $fa2, $fs3, $fa0
	fmadd.s	$fa0, $fa3, $fs4, $fa0
	fmadd.s	$fa0, $fa4, $fs6, $fa0
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
	fst.s	$fa0, $sp, 524
	beqz	$a4, .LBB4_16
# %bb.11:                               # %.lr.ph73.preheader
	addi.d	$a1, $sp, 424
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
	ld.d	$a3, $a6, 0
	ld.wu	$a2, $a3, 0
	addi.w	$a7, $a2, 0
	st.w	$zero, $a0, 0
	bltz	$a7, .LBB4_12
# %bb.14:                               # %.lr.ph
                                        #   in Loop: Header=BB4_13 Depth=1
	ld.d	$a7, $a5, 0
	addi.d	$a3, $a3, 4
	fmov.s	$fa0, $fs2
	.p2align	4, , 16
.LBB4_15:                               #   Parent Loop BB4_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	slli.d	$a2, $a2, 2
	fldx.s	$fa1, $a2, $a1
	fld.s	$fa2, $a7, 0
	ld.wu	$a2, $a3, 0
	addi.d	$a7, $a7, 4
	fmadd.s	$fa0, $fa1, $fa2, $fa0
	fst.s	$fa0, $a0, 0
	addi.w	$t0, $a2, 0
	addi.d	$a3, $a3, 4
	bgez	$t0, .LBB4_15
	b	.LBB4_12
.LBB4_16:                               # %._crit_edge74
	fld.d	$fs7, $sp, 528                  # 8-byte Folded Reload
	fld.d	$fs6, $sp, 536                  # 8-byte Folded Reload
	fld.d	$fs5, $sp, 544                  # 8-byte Folded Reload
	fld.d	$fs4, $sp, 552                  # 8-byte Folded Reload
	fld.d	$fs3, $sp, 560                  # 8-byte Folded Reload
	fld.d	$fs2, $sp, 568                  # 8-byte Folded Reload
	fld.d	$fs1, $sp, 576                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 584                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 592                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 600                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 608
	ret
.Lfunc_end4:
	.size	match_calc, .Lfunc_end4-match_calc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function Atracking
.LCPI5_0:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
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
	move	$s3, $a2
	ld.d	$s6, $sp, 128
	ld.d	$a2, $a2, 0
	move	$s4, $a7
	st.d	$a6, $sp, 32                    # 8-byte Folded Spill
	move	$fp, $a5
	move	$s5, $a4
	move	$s0, $a3
	move	$s2, $a1
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
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	addi.w	$a0, $a0, 1
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(AllocateCharVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(AllocateCharVec)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(outgap)
	ld.d	$a1, $a1, %got_pc_lo12(outgap)
	ld.w	$a2, $a1, 0
	ori	$a3, $zero, 1
	addi.w	$a1, $s8, 0
	addi.w	$t2, $s7, 0
	beq	$a2, $a3, .LBB5_11
# %bb.1:
	fld.s	$fa0, $s2, 0
	blez	$a1, .LBB5_6
# %bb.2:                                # %.lr.ph
	slli.d	$a2, $s8, 3
	bstrpick.d	$a2, $a2, 33, 3
	slli.d	$a2, $a2, 3
	slli.d	$a3, $s7, 32
	srai.d	$a3, $a3, 30
	bstrpick.d	$a4, $s8, 30, 0
	move	$a5, $s8
	ld.d	$a7, $sp, 32                    # 8-byte Folded Reload
	b	.LBB5_4
	.p2align	4, , 16
.LBB5_3:                                #   in Loop: Header=BB5_4 Depth=1
	addi.d	$a5, $a5, -1
	addi.d	$a4, $a4, -1
	addi.d	$s2, $s2, 4
	beqz	$a4, .LBB5_6
.LBB5_4:                                # =>This Inner Loop Header: Depth=1
	fld.s	$fa1, $s2, 0
	fcmp.cult.s	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB5_3
# %bb.5:                                #   in Loop: Header=BB5_4 Depth=1
	ldx.d	$a6, $a7, $a2
	stx.w	$a5, $a6, $a3
	fmov.s	$fa0, $fa1
	b	.LBB5_3
.LBB5_6:                                # %.preheader2
	blez	$t2, .LBB5_11
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
	ld.d	$a6, $sp, 32                    # 8-byte Folded Reload
	ldx.d	$a6, $a6, $a2
	stx.w	$a5, $a6, $a3
	fmov.s	$fa0, $fa1
	b	.LBB5_8
.LBB5_11:                               # %.loopexit
	ld.d	$t5, $sp, 32                    # 8-byte Folded Reload
	ld.d	$t6, $sp, 16                    # 8-byte Folded Reload
	bltz	$a1, .LBB5_19
# %bb.12:                               # %.lr.ph10.preheader
	addi.d	$a3, $s8, 1
	bstrpick.d	$a2, $a3, 31, 0
	ori	$a4, $zero, 2
	bgeu	$a2, $a4, .LBB5_14
# %bb.13:
	move	$a3, $zero
	b	.LBB5_17
.LBB5_14:                               # %vector.ph
	bstrpick.d	$a3, $a3, 31, 1
	slli.d	$a3, $a3, 1
	addi.d	$a5, $t5, 8
	move	$a6, $a3
	.p2align	4, , 16
.LBB5_15:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a7, $a5, -8
	ld.d	$t0, $a5, 0
	addi.d	$t1, $a4, -1
	st.w	$t1, $a7, 0
	st.w	$a4, $t0, 0
	addi.d	$a4, $a4, 2
	addi.d	$a6, $a6, -2
	addi.d	$a5, $a5, 16
	bnez	$a6, .LBB5_15
# %bb.16:                               # %middle.block
	beq	$a2, $a3, .LBB5_19
.LBB5_17:                               # %.lr.ph10.preheader20
	alsl.d	$a4, $a3, $t5, 3
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
	bltz	$t2, .LBB5_27
# %bb.20:                               # %.lr.ph13
	ld.d	$a2, $t5, 0
	addi.d	$a4, $s7, 1
	bstrpick.d	$a3, $a4, 31, 0
	ori	$a5, $zero, 8
	bgeu	$a3, $a5, .LBB5_22
# %bb.21:
	move	$a4, $zero
	b	.LBB5_25
.LBB5_22:                               # %vector.ph7
	bstrpick.d	$a4, $a4, 31, 3
	slli.d	$a4, $a4, 3
	pcalau12i	$a5, %pc_hi20(.LCPI5_0)
	vld	$vr0, $a5, %pc_lo12(.LCPI5_0)
	addi.d	$a5, $a2, 16
	vrepli.b	$vr1, -1
	vrepli.w	$vr2, -5
	move	$a6, $a4
	.p2align	4, , 16
.LBB5_23:                               # %vector.body10
                                        # =>This Inner Loop Header: Depth=1
	vxor.v	$vr3, $vr0, $vr1
	vsub.w	$vr4, $vr2, $vr0
	vst	$vr3, $a5, -16
	vst	$vr4, $a5, 0
	vaddi.wu	$vr0, $vr0, 8
	addi.d	$a6, $a6, -8
	addi.d	$a5, $a5, 32
	bnez	$a6, .LBB5_23
# %bb.24:                               # %middle.block13
	beq	$a3, $a4, .LBB5_27
.LBB5_25:                               # %scalar.ph5.preheader
	nor	$a5, $a4, $zero
	alsl.d	$a2, $a4, $a2, 2
	sub.d	$a3, $a3, $a4
	.p2align	4, , 16
.LBB5_26:                               # %scalar.ph5
                                        # =>This Inner Loop Header: Depth=1
	st.w	$a5, $a2, 0
	addi.d	$a5, $a5, -1
	addi.d	$a3, $a3, -1
	addi.d	$a2, $a2, 4
	bnez	$a3, .LBB5_26
.LBB5_27:                               # %._crit_edge
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	add.d	$a2, $a2, $a1
	add.d	$s2, $a2, $t2
	stx.b	$zero, $a2, $t2
	add.d	$a1, $a0, $a1
	add.d	$s1, $a1, $t2
	stx.b	$zero, $a1, $t2
	bltz	$t6, .LBB5_45
# %bb.28:                               # %.lr.ph41.preheader
	move	$t4, $zero
	addi.w	$a1, $zero, -1
	ori	$a2, $zero, 111
	ori	$a3, $zero, 45
	.p2align	4, , 16
.LBB5_29:                               # %.lr.ph41
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_37 Depth 2
                                        #     Child Loop BB5_40 Depth 2
	addi.w	$a5, $s8, 0
	slli.d	$a4, $a5, 3
	ldx.d	$a4, $t5, $a4
	addi.w	$a6, $s7, 0
	slli.d	$a7, $a6, 2
	ldx.w	$a7, $a4, $a7
	bltz	$a7, .LBB5_32
# %bb.30:                               #   in Loop: Header=BB5_29 Depth=1
	beqz	$a7, .LBB5_34
# %bb.31:                               #   in Loop: Header=BB5_29 Depth=1
	sub.d	$a4, $s8, $a7
	b	.LBB5_35
	.p2align	4, , 16
.LBB5_32:                               #   in Loop: Header=BB5_29 Depth=1
	addi.d	$a4, $s8, -1
	nor	$t0, $a4, $zero
	add.w	$t0, $s8, $t0
	bnez	$t0, .LBB5_36
.LBB5_33:                               #   in Loop: Header=BB5_29 Depth=1
	move	$t0, $s2
	move	$t1, $s1
	b	.LBB5_38
	.p2align	4, , 16
.LBB5_34:                               #   in Loop: Header=BB5_29 Depth=1
	addi.d	$a4, $s8, -1
.LBB5_35:                               #   in Loop: Header=BB5_29 Depth=1
	move	$a7, $a1
	nor	$t0, $a4, $zero
	add.w	$t0, $s8, $t0
	beqz	$t0, .LBB5_33
.LBB5_36:                               # %.lr.ph19.preheader
                                        #   in Loop: Header=BB5_29 Depth=1
	sub.d	$t0, $a4, $s8
	addi.w	$t2, $t0, 1
	.p2align	4, , 16
.LBB5_37:                               # %.lr.ph19
                                        #   Parent Loop BB5_29 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$t0, $s2, -1
	st.b	$a2, $s2, -1
	addi.d	$t1, $s1, -1
	st.b	$a3, $s1, -1
	bstrpick.d	$t2, $t2, 31, 0
	addi.d	$t2, $t2, 1
	slli.d	$t3, $t2, 31
	addi.d	$t4, $t4, 1
	move	$s1, $t1
	move	$s2, $t0
	bgez	$t3, .LBB5_37
.LBB5_38:                               # %._crit_edge20
                                        #   in Loop: Header=BB5_29 Depth=1
	beq	$a7, $a1, .LBB5_42
# %bb.39:                               # %.lr.ph29.preheader
                                        #   in Loop: Header=BB5_29 Depth=1
	addi.w	$t2, $a7, 1
	.p2align	4, , 16
.LBB5_40:                               # %.lr.ph29
                                        #   Parent Loop BB5_29 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.b	$a3, $t0, -1
	addi.d	$t0, $t0, -1
	st.b	$a2, $t1, -1
	bstrpick.d	$t2, $t2, 31, 0
	addi.d	$t2, $t2, 1
	slli.d	$t3, $t2, 31
	addi.d	$t1, $t1, -1
	bgez	$t3, .LBB5_40
# %bb.41:                               # %._crit_edge30.loopexit
                                        #   in Loop: Header=BB5_29 Depth=1
	nor	$t2, $a7, $zero
	add.d	$t4, $t4, $t2
.LBB5_42:                               # %._crit_edge30
                                        #   in Loop: Header=BB5_29 Depth=1
	blez	$a5, .LBB5_50
# %bb.43:                               # %._crit_edge30
                                        #   in Loop: Header=BB5_29 Depth=1
	blez	$a6, .LBB5_50
# %bb.44:                               #   in Loop: Header=BB5_29 Depth=1
	add.d	$s7, $a7, $s7
	addi.d	$s2, $t0, -1
	st.b	$a2, $t0, -1
	addi.d	$s1, $t1, -1
	addi.w	$t4, $t4, 2
	st.b	$a2, $t1, -1
	move	$s8, $a4
	bge	$t6, $t4, .LBB5_29
.LBB5_45:                               # %._crit_edge42
	move	$s7, $a0
	blez	$s4, .LBB5_47
	.p2align	4, , 16
.LBB5_46:                               # %.lr.ph50
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s5, 0
	ld.d	$a1, $s3, 0
	move	$a2, $s2
	pcaddu18i	$ra, %call36(gapireru)
	jirl	$ra, $ra, 0
	addi.d	$s3, $s3, 8
	addi.d	$s4, $s4, -1
	addi.d	$s5, $s5, 8
	bnez	$s4, .LBB5_46
.LBB5_47:                               # %.preheader
	blez	$s6, .LBB5_49
	.p2align	4, , 16
.LBB5_48:                               # %.lr.ph52
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 0
	ld.d	$a1, $s0, 0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(gapireru)
	jirl	$ra, $ra, 0
	addi.d	$s0, $s0, 8
	addi.d	$s6, $s6, -1
	addi.d	$fp, $fp, 8
	bnez	$s6, .LBB5_48
.LBB5_49:                               # %._crit_edge53
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s7
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
.LBB5_50:
	move	$s2, $t0
	move	$s1, $t1
	move	$s7, $a0
	bgtz	$s4, .LBB5_46
	b	.LBB5_47
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
	addi.d	$sp, $sp, -384
	st.d	$ra, $sp, 376                   # 8-byte Folded Spill
	st.d	$fp, $sp, 368                   # 8-byte Folded Spill
	st.d	$s0, $sp, 360                   # 8-byte Folded Spill
	st.d	$s1, $sp, 352                   # 8-byte Folded Spill
	st.d	$s2, $sp, 344                   # 8-byte Folded Spill
	st.d	$s3, $sp, 336                   # 8-byte Folded Spill
	st.d	$s4, $sp, 328                   # 8-byte Folded Spill
	st.d	$s5, $sp, 320                   # 8-byte Folded Spill
	st.d	$s6, $sp, 312                   # 8-byte Folded Spill
	st.d	$s7, $sp, 304                   # 8-byte Folded Spill
	st.d	$s8, $sp, 296                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 288                  # 8-byte Folded Spill
	pcalau12i	$s5, %pc_hi20(A__align_gapmap.orlgth1)
	ld.w	$s4, $s5, %pc_lo12(A__align_gapmap.orlgth1)
	st.d	$a7, $sp, 272                   # 8-byte Folded Spill
	st.d	$a6, $sp, 32                    # 8-byte Folded Spill
	move	$s2, $a5
	move	$s6, $a4
	st.d	$a3, $sp, 208                   # 8-byte Folded Spill
	st.d	$a2, $sp, 200                   # 8-byte Folded Spill
	move	$s1, $a1
	move	$s0, $a0
	pcalau12i	$s3, %pc_hi20(A__align_gapmap.mseq1)
	pcalau12i	$a0, %pc_hi20(A__align_gapmap.mseq2)
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	bnez	$s4, .LBB6_2
# %bb.1:
	pcalau12i	$a0, %got_pc_hi20(njob)
	ld.d	$fp, $a0, %got_pc_lo12(njob)
	ld.w	$a0, $fp, 0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(AllocateCharMtx)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 0
	st.d	$a0, $s3, %pc_lo12(A__align_gapmap.mseq1)
	move	$a0, $a1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(AllocateCharMtx)
	jirl	$ra, $ra, 0
	ld.w	$s4, $s5, %pc_lo12(A__align_gapmap.orlgth1)
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(A__align_gapmap.mseq2)
.LBB6_2:
	st.d	$s3, $sp, 72                    # 8-byte Folded Spill
	st.d	$s0, $sp, 96                    # 8-byte Folded Spill
	ld.d	$a0, $s0, 0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	addi.w	$fp, $a0, 0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(A__align_gapmap.orlgth2)
	st.d	$a1, $sp, 144                   # 8-byte Folded Spill
	ld.w	$s3, $a1, %pc_lo12(A__align_gapmap.orlgth2)
	st.d	$a0, $sp, 216                   # 8-byte Folded Spill
	addi.w	$s8, $a0, 0
	pcalau12i	$a0, %pc_hi20(A__align_gapmap.w1)
	st.d	$a0, $sp, 280                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(A__align_gapmap.w2)
	st.d	$a0, $sp, 264                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(A__align_gapmap.initverticalw)
	st.d	$a0, $sp, 256                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(A__align_gapmap.lastverticalw)
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(A__align_gapmap.m)
	st.d	$a0, $sp, 160                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(A__align_gapmap.mp)
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	pcalau12i	$s7, %pc_hi20(A__align_gapmap.mseq)
	pcalau12i	$a0, %pc_hi20(A__align_gapmap.ogcp1)
	st.d	$a0, $sp, 192                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(A__align_gapmap.ogcp2)
	st.d	$a0, $sp, 184                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(A__align_gapmap.fgcp1)
	st.d	$a0, $sp, 168                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(A__align_gapmap.fgcp2)
	st.d	$a0, $sp, 176                   # 8-byte Folded Spill
	pcalau12i	$s0, %pc_hi20(A__align_gapmap.cpmx1)
	pcalau12i	$a0, %pc_hi20(A__align_gapmap.cpmx2)
	st.d	$a0, $sp, 232                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(A__align_gapmap.floatwork)
	st.d	$a0, $sp, 248                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(A__align_gapmap.intwork)
	st.d	$a0, $sp, 240                   # 8-byte Folded Spill
	st.d	$s1, $sp, 64                    # 8-byte Folded Spill
	st.d	$s6, $sp, 80                    # 8-byte Folded Spill
	st.d	$fp, $sp, 120                   # 8-byte Folded Spill
	st.d	$s0, $sp, 224                   # 8-byte Folded Spill
	blt	$s4, $fp, .LBB6_4
# %bb.3:
	bge	$s3, $s8, .LBB6_8
.LBB6_4:
	pcalau12i	$s6, %pc_hi20(A__align_gapmap.match)
	blez	$s4, .LBB6_7
# %bb.5:
	blez	$s3, .LBB6_7
# %bb.6:
	ld.d	$a0, $sp, 280                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align_gapmap.w1)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align_gapmap.w2)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s6, %pc_lo12(A__align_gapmap.match)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align_gapmap.initverticalw)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align_gapmap.lastverticalw)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align_gapmap.m)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align_gapmap.mp)
	pcaddu18i	$ra, %call36(FreeIntVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s7, %pc_lo12(A__align_gapmap.mseq)
	pcaddu18i	$ra, %call36(FreeCharMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align_gapmap.ogcp1)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align_gapmap.ogcp2)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align_gapmap.fgcp1)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align_gapmap.fgcp2)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, %pc_lo12(A__align_gapmap.cpmx1)
	pcaddu18i	$ra, %call36(FreeFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align_gapmap.cpmx2)
	pcaddu18i	$ra, %call36(FreeFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 248                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align_gapmap.floatwork)
	pcaddu18i	$ra, %call36(FreeFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align_gapmap.intwork)
	pcaddu18i	$ra, %call36(FreeIntMtx)
	jirl	$ra, $ra, 0
	ld.w	$s4, $s5, %pc_lo12(A__align_gapmap.orlgth1)
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	ld.w	$s3, $a0, %pc_lo12(A__align_gapmap.orlgth2)
.LBB6_7:
	pcalau12i	$a0, %pc_hi20(.LCPI6_0)
	fld.d	$fa0, $a0, %pc_lo12(.LCPI6_0)
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	movgr2fr.w	$fa1, $a0
	ffint.d.w	$fa1, $fa1
	fmul.d	$fa1, $fa1, $fa0
	ftintrz.w.d	$fa1, $fa1
	movfr2gr.s	$a0, $fa1
	slt	$a1, $a0, $s4
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s4, $a1
	or	$s4, $a1, $a0
	move	$fp, $s0
	addi.w	$s0, $s4, 100
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
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
	st.d	$s5, $sp, 136                   # 8-byte Folded Spill
	addi.w	$s5, $s3, 102
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 280                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(A__align_gapmap.w1)
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 264                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(A__align_gapmap.w2)
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $s6, %pc_lo12(A__align_gapmap.match)
	addi.w	$s6, $s4, 102
	move	$a0, $s6
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(A__align_gapmap.initverticalw)
	move	$a0, $s6
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(A__align_gapmap.lastverticalw)
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(A__align_gapmap.m)
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateIntVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(A__align_gapmap.mp)
	pcalau12i	$a0, %got_pc_hi20(njob)
	ld.d	$a0, $a0, %got_pc_lo12(njob)
	ld.w	$a0, $a0, 0
	add.w	$a1, $s1, $s0
	pcaddu18i	$ra, %call36(AllocateCharMtx)
	jirl	$ra, $ra, 0
	st.d	$a0, $s7, %pc_lo12(A__align_gapmap.mseq)
	move	$a0, $s6
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 192                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(A__align_gapmap.ogcp1)
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 184                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(A__align_gapmap.ogcp2)
	move	$a0, $s6
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(A__align_gapmap.fgcp1)
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(A__align_gapmap.fgcp2)
	ori	$a0, $zero, 26
	move	$a1, $s6
	pcaddu18i	$ra, %call36(AllocateFloatMtx)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, %pc_lo12(A__align_gapmap.cpmx1)
	ori	$a0, $zero, 26
	move	$a1, $s5
	pcaddu18i	$ra, %call36(AllocateFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
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
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(A__align_gapmap.floatwork)
	ori	$a1, $zero, 26
	move	$a0, $s5
	ld.d	$s5, $sp, 136                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(AllocateIntMtx)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 240                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(A__align_gapmap.intwork)
	st.w	$s4, $s5, %pc_lo12(A__align_gapmap.orlgth1)
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	st.w	$s3, $a0, %pc_lo12(A__align_gapmap.orlgth2)
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 80                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 120                   # 8-byte Folded Reload
.LBB6_8:
	blez	$s6, .LBB6_11
# %bb.9:                                # %.lr.ph
	ld.d	$a0, $s7, %pc_lo12(A__align_gapmap.mseq)
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(A__align_gapmap.mseq1)
	move	$a2, $s6
	ld.d	$a3, $sp, 96                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB6_10:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a4, $a0, 0
	st.d	$a4, $a1, 0
	ld.d	$a4, $a3, 0
	stx.b	$zero, $a4, $fp
	addi.d	$a3, $a3, 8
	addi.d	$a1, $a1, 8
	addi.d	$a2, $a2, -1
	addi.d	$a0, $a0, 8
	bnez	$a2, .LBB6_10
.LBB6_11:                               # %.preheader328
	blez	$s2, .LBB6_14
# %bb.12:                               # %.lr.ph335
	ld.d	$a1, $s7, %pc_lo12(A__align_gapmap.mseq)
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align_gapmap.mseq2)
	alsl.d	$a1, $s6, $a1, 3
	move	$a2, $s2
	move	$a3, $s1
	.p2align	4, , 16
.LBB6_13:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a4, $a1, 0
	st.d	$a4, $a0, 0
	ld.d	$a4, $a3, 0
	stx.b	$zero, $a4, $s8
	addi.d	$a1, $a1, 8
	addi.d	$a3, $a3, 8
	addi.d	$a2, $a2, -1
	addi.d	$a0, $a0, 8
	bnez	$a2, .LBB6_13
.LBB6_14:                               # %._crit_edge
	pcalau12i	$a0, %got_pc_hi20(commonAlloc1)
	ld.d	$fp, $a0, %got_pc_lo12(commonAlloc1)
	ld.w	$a0, $fp, 0
	pcalau12i	$a1, %got_pc_hi20(commonAlloc2)
	ld.d	$s0, $a1, %got_pc_lo12(commonAlloc2)
	ld.w	$a1, $s0, 0
	blt	$a0, $s4, .LBB6_17
# %bb.15:                               # %._crit_edge
	blt	$a1, $s3, .LBB6_17
# %bb.16:                               # %._crit_edge467
	pcalau12i	$a0, %got_pc_hi20(commonIP)
	ld.d	$a0, $a0, %got_pc_lo12(commonIP)
	ld.d	$a0, $a0, 0
	ld.d	$s7, $sp, 96                    # 8-byte Folded Reload
	b	.LBB6_22
.LBB6_17:
	ld.d	$s7, $sp, 96                    # 8-byte Folded Reload
	beqz	$a0, .LBB6_20
# %bb.18:
	move	$s1, $s5
	move	$s5, $s2
	beqz	$a1, .LBB6_21
# %bb.19:
	pcalau12i	$a0, %got_pc_hi20(commonIP)
	ld.d	$a0, $a0, %got_pc_lo12(commonIP)
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(FreeIntMtx)
	jirl	$ra, $ra, 0
	ld.w	$s4, $s1, %pc_lo12(A__align_gapmap.orlgth1)
	ld.w	$a0, $fp, 0
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	ld.w	$s3, $a1, %pc_lo12(A__align_gapmap.orlgth2)
	ld.w	$a1, $s0, 0
	b	.LBB6_21
.LBB6_20:
	move	$s5, $s2
.LBB6_21:
	slt	$a2, $a0, $s4
	masknez	$a0, $a0, $a2
	maskeqz	$a2, $s4, $a2
	or	$s1, $a2, $a0
	slt	$a0, $a1, $s3
	masknez	$a1, $a1, $a0
	maskeqz	$a0, $s3, $a0
	or	$s2, $a0, $a1
	addi.w	$a0, $s1, 10
	addi.w	$a1, $s2, 10
	pcaddu18i	$ra, %call36(AllocateIntMtx)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(commonIP)
	ld.d	$a1, $a1, %got_pc_lo12(commonIP)
	st.d	$a0, $a1, 0
	st.w	$s1, $fp, 0
	st.w	$s2, $s0, 0
	move	$s2, $s5
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
.LBB6_22:
	ld.d	$s0, $sp, 224                   # 8-byte Folded Reload
	ld.d	$s5, $s0, %pc_lo12(A__align_gapmap.cpmx1)
	ld.d	$a1, $s7, 0
	pcalau12i	$a2, %pc_hi20(A__align_gapmap.ijp)
	st.d	$a2, $sp, 56                    # 8-byte Folded Spill
	st.d	$a0, $a2, %pc_lo12(A__align_gapmap.ijp)
	move	$a0, $a1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.w	$a3, $a0, 0
	move	$a0, $s7
	move	$a1, $s5
	ld.d	$s4, $sp, 200                   # 8-byte Folded Reload
	move	$a2, $s4
	move	$a4, $s6
	pcaddu18i	$ra, %call36(cpmx_calc_new)
	jirl	$ra, $ra, 0
	ld.d	$fp, $sp, 232                   # 8-byte Folded Reload
	ld.d	$s5, $fp, %pc_lo12(A__align_gapmap.cpmx2)
	ld.d	$a0, $s1, 0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.w	$a3, $a0, 0
	move	$a0, $s1
	move	$a1, $s5
	ld.d	$s3, $sp, 208                   # 8-byte Folded Reload
	move	$a2, $s3
	move	$a4, $s2
	pcaddu18i	$ra, %call36(cpmx_calc_new)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align_gapmap.ogcp1)
	move	$a1, $s6
	move	$a2, $s7
	move	$a3, $s4
	ld.d	$s5, $sp, 120                   # 8-byte Folded Reload
	move	$a4, $s5
	pcaddu18i	$ra, %call36(st_OpeningGapCount)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align_gapmap.ogcp2)
	move	$a1, $s2
	move	$a2, $s1
	move	$a3, $s3
	move	$a4, $s8
	pcaddu18i	$ra, %call36(st_OpeningGapCount)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align_gapmap.fgcp1)
	move	$a1, $s6
	move	$a2, $s7
	move	$a3, $s4
	move	$a4, $s5
	pcaddu18i	$ra, %call36(st_FinalGapCount)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align_gapmap.fgcp2)
	move	$a1, $s2
	move	$a2, $s1
	move	$a3, $s3
	move	$a4, $s8
	pcaddu18i	$ra, %call36(st_FinalGapCount)
	jirl	$ra, $ra, 0
	move	$s4, $s5
	ld.d	$a3, $sp, 112                   # 8-byte Folded Reload
	blez	$s5, .LBB6_25
# %bb.23:                               # %.lr.ph338
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align_gapmap.ogcp1)
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(A__align_gapmap.fgcp1)
	bstrpick.d	$a2, $a3, 30, 0
	vldi	$vr0, -912
	vldi	$vr1, -928
	.p2align	4, , 16
.LBB6_24:                               # =>This Inner Loop Header: Depth=1
	fld.s	$fa2, $a0, 0
	fcvt.d.s	$fa2, $fa2
	fsub.d	$fa2, $fa0, $fa2
	fmul.d	$fa2, $fa2, $fa1
	fcvt.s.d	$fa2, $fa2
	fst.s	$fa2, $a0, 0
	fld.s	$fa2, $a1, 0
	fcvt.d.s	$fa2, $fa2
	fsub.d	$fa2, $fa0, $fa2
	fmul.d	$fa2, $fa2, $fa1
	fcvt.s.d	$fa2, $fa2
	fst.s	$fa2, $a1, 0
	addi.d	$a1, $a1, 4
	addi.d	$a2, $a2, -1
	addi.d	$a0, $a0, 4
	bnez	$a2, .LBB6_24
.LBB6_25:                               # %.preheader327
	blez	$s8, .LBB6_28
# %bb.26:                               # %.lr.ph340
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align_gapmap.ogcp2)
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(A__align_gapmap.fgcp2)
	ld.d	$a2, $sp, 216                   # 8-byte Folded Reload
	bstrpick.d	$a2, $a2, 30, 0
	vldi	$vr0, -912
	vldi	$vr1, -928
	.p2align	4, , 16
.LBB6_27:                               # =>This Inner Loop Header: Depth=1
	fld.s	$fa2, $a0, 0
	fcvt.d.s	$fa2, $fa2
	fsub.d	$fa2, $fa0, $fa2
	fmul.d	$fa2, $fa2, $fa1
	fcvt.s.d	$fa2, $fa2
	fst.s	$fa2, $a0, 0
	fld.s	$fa2, $a1, 0
	fcvt.d.s	$fa2, $fa2
	fsub.d	$fa2, $fa0, $fa2
	fmul.d	$fa2, $fa2, $fa1
	fcvt.s.d	$fa2, $fa2
	fst.s	$fa2, $a1, 0
	addi.d	$a1, $a1, 4
	addi.d	$a2, $a2, -1
	addi.d	$a0, $a0, 4
	bnez	$a2, .LBB6_27
.LBB6_28:                               # %._crit_edge341
	ld.d	$a0, $sp, 400
	st.d	$a0, $sp, 208                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 392
	st.d	$a0, $sp, 200                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 280                   # 8-byte Folded Reload
	ld.d	$s5, $a0, %pc_lo12(A__align_gapmap.w1)
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	ld.d	$s6, $a0, %pc_lo12(A__align_gapmap.w2)
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align_gapmap.initverticalw)
	ld.d	$fp, $fp, %pc_lo12(A__align_gapmap.cpmx2)
	ld.d	$s3, $s0, %pc_lo12(A__align_gapmap.cpmx1)
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	ld.d	$a5, $a1, %pc_lo12(A__align_gapmap.floatwork)
	ld.d	$a1, $sp, 240                   # 8-byte Folded Reload
	ld.d	$s0, $a1, %pc_lo12(A__align_gapmap.intwork)
	ori	$a7, $zero, 1
	st.d	$a0, $sp, 280                   # 8-byte Folded Spill
	move	$a1, $fp
	move	$a2, $s3
	move	$a3, $zero
	move	$a4, $s4
	st.d	$a5, $sp, 264                   # 8-byte Folded Spill
	move	$a6, $s0
	pcaddu18i	$ra, %call36(match_calc)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(impmtx)
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	slli.d	$a0, $a0, 32
	st.d	$a0, $sp, 224                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	st.d	$a1, $sp, 48                    # 8-byte Folded Spill
	st.d	$fp, $sp, 256                   # 8-byte Folded Spill
	st.d	$s3, $sp, 248                   # 8-byte Folded Spill
	st.d	$s0, $sp, 240                   # 8-byte Folded Spill
	beqz	$a0, .LBB6_35
# %bb.29:
	ld.d	$s3, $sp, 264                   # 8-byte Folded Reload
	ld.d	$fp, $a1, %pc_lo12(impmtx)
	ld.d	$a5, $sp, 112                   # 8-byte Folded Reload
	beqz	$s4, .LBB6_32
# %bb.30:                               # %.lr.ph.i
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	slli.d	$a0, $a0, 2
	ld.d	$a3, $sp, 200                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 280                   # 8-byte Folded Reload
	move	$a1, $a5
	.p2align	4, , 16
.LBB6_31:                               # =>This Inner Loop Header: Depth=1
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
	bnez	$a1, .LBB6_31
.LBB6_32:                               # %imp_match_out_vead_tate_gapmap.exit
	move	$s4, $a5
	ori	$a7, $zero, 1
	ori	$s0, $zero, 1
	move	$a0, $s5
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 256                   # 8-byte Folded Reload
	move	$a3, $zero
	move	$a4, $s8
	move	$a5, $s3
	ld.d	$a6, $sp, 240                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(match_calc)
	jirl	$ra, $ra, 0
	beqz	$s8, .LBB6_44
# %bb.33:                               # %.lr.ph.i309.preheader
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $fp, $a0
	ld.d	$a3, $sp, 208                   # 8-byte Folded Reload
	move	$a2, $s5
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	move	$t4, $s4
	.p2align	4, , 16
.LBB6_34:                               # %.lr.ph.i309
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
	bnez	$a1, .LBB6_34
	b	.LBB6_36
.LBB6_35:                               # %.critedge
	ori	$a7, $zero, 1
	move	$a0, $s5
	move	$a1, $s3
	move	$a2, $fp
	move	$a3, $zero
	move	$a4, $s8
	ld.d	$a5, $sp, 264                   # 8-byte Folded Reload
	move	$a6, $s0
	pcaddu18i	$ra, %call36(match_calc)
	jirl	$ra, $ra, 0
	ld.d	$t4, $sp, 112                   # 8-byte Folded Reload
.LBB6_36:                               # %imp_match_out_vead_gapmap.exit
	pcalau12i	$a0, %got_pc_hi20(outgap)
	ld.d	$a0, $a0, %got_pc_lo12(outgap)
	ld.w	$a0, $a0, 0
	ori	$a1, $zero, 1
	beq	$a0, $a1, .LBB6_45
# %bb.37:                               # %.preheader326
	blez	$s8, .LBB6_53
# %bb.38:                               # %.lr.ph344
	pcalau12i	$a0, %got_pc_hi20(offset)
	ld.d	$a0, $a0, %got_pc_lo12(offset)
	ld.w	$a0, $a0, 0
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	addi.d	$a1, $a1, 1
	bstrpick.d	$a1, $a1, 31, 0
	addi.d	$a2, $a1, -1
	ori	$a4, $zero, 4
	ori	$a3, $zero, 1
	bltu	$a2, $a4, .LBB6_42
# %bb.39:                               # %vector.ph
	move	$a4, $a2
	bstrins.d	$a4, $zero, 1, 0
	ori	$a5, $zero, 1
	move	$a3, $a2
	bstrins.d	$a3, $a5, 1, 0
	pcalau12i	$a5, %pc_hi20(.LCPI6_1)
	vld	$vr0, $a5, %pc_lo12(.LCPI6_1)
	vreplgr2vr.w	$vr1, $a0
	addi.d	$a5, $s5, 4
	vldi	$vr2, -800
	move	$a6, $a4
	.p2align	4, , 16
.LBB6_40:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vmul.w	$vr3, $vr1, $vr0
	vpickve2gr.w	$a7, $vr3, 3
	movgr2fr.w	$fa4, $a7
	ffint.d.w	$fa4, $fa4
	vpickve2gr.w	$a7, $vr3, 2
	movgr2fr.w	$fa5, $a7
	ffint.d.w	$fa5, $fa5
	vextrins.d	$vr5, $vr4, 16
	vpickve2gr.w	$a7, $vr3, 1
	movgr2fr.w	$fa4, $a7
	ffint.d.w	$fa4, $fa4
	vpickve2gr.w	$a7, $vr3, 0
	movgr2fr.w	$fa3, $a7
	ffint.d.w	$fa3, $fa3
	vld	$vr6, $a5, 0
	vextrins.d	$vr3, $vr4, 16
	vfmul.d	$vr3, $vr3, $vr2
	vfmul.d	$vr4, $vr5, $vr2
	vreplvei.w	$vr5, $vr6, 1
	fcvt.d.s	$fa5, $fa5
	vreplvei.w	$vr7, $vr6, 0
	fcvt.d.s	$fa7, $fa7
	vextrins.d	$vr7, $vr5, 16
	vreplvei.w	$vr5, $vr6, 3
	fcvt.d.s	$fa5, $fa5
	vreplvei.w	$vr6, $vr6, 2
	fcvt.d.s	$fa6, $fa6
	vextrins.d	$vr6, $vr5, 16
	vfadd.d	$vr4, $vr6, $vr4
	vfadd.d	$vr3, $vr7, $vr3
	vreplvei.d	$vr5, $vr3, 1
	fcvt.s.d	$fa5, $fa5
	vreplvei.d	$vr3, $vr3, 0
	fcvt.s.d	$fa3, $fa3
	vextrins.w	$vr3, $vr5, 16
	vreplvei.d	$vr5, $vr4, 0
	fcvt.s.d	$fa5, $fa5
	vextrins.w	$vr3, $vr5, 32
	vreplvei.d	$vr4, $vr4, 1
	fcvt.s.d	$fa4, $fa4
	vextrins.w	$vr3, $vr4, 48
	vst	$vr3, $a5, 0
	vaddi.wu	$vr0, $vr0, 4
	addi.d	$a6, $a6, -4
	addi.d	$a5, $a5, 16
	bnez	$a6, .LBB6_40
# %bb.41:                               # %middle.block
	beq	$a2, $a4, .LBB6_53
.LBB6_42:                               # %scalar.ph.preheader
	mul.d	$a2, $a0, $a3
	alsl.d	$a4, $a3, $s5, 2
	sub.d	$a1, $a1, $a3
	vldi	$vr0, -800
	.p2align	4, , 16
.LBB6_43:                               # %scalar.ph
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
	bnez	$a1, .LBB6_43
	b	.LBB6_53
.LBB6_44:                               # %imp_match_out_vead_gapmap.exit.thread
	pcalau12i	$a0, %got_pc_hi20(outgap)
	ld.d	$a0, $a0, %got_pc_lo12(outgap)
	ld.w	$a0, $a0, 0
	move	$t4, $s4
	bne	$a0, $s0, .LBB6_53
.LBB6_45:                               # %.preheader323
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	blez	$a0, .LBB6_49
# %bb.46:                               # %.lr.ph350
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align_gapmap.ogcp1)
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a2, $a1, %pc_lo12(A__align_gapmap.fgcp1)
	addi.d	$a1, $t4, 1
	bstrpick.d	$a1, $a1, 31, 0
	addi.d	$a4, $a1, -1
	ori	$a5, $zero, 12
	ori	$a3, $zero, 1
	bgeu	$a4, $a5, .LBB6_171
.LBB6_47:                               # %scalar.ph541.preheader
	alsl.d	$a2, $a3, $a2, 2
	addi.d	$a2, $a2, -4
	ld.d	$a4, $sp, 280                   # 8-byte Folded Reload
	alsl.d	$a4, $a3, $a4, 2
	sub.d	$a1, $a1, $a3
	.p2align	4, , 16
.LBB6_48:                               # %scalar.ph541
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $a0, 0
	fld.s	$fa1, $a2, 0
	fld.s	$fa2, $a4, 0
	fadd.s	$fa0, $fa0, $fa1
	fadd.s	$fa0, $fa2, $fa0
	fst.s	$fa0, $a4, 0
	addi.d	$a2, $a2, 4
	addi.d	$a1, $a1, -1
	addi.d	$a4, $a4, 4
	bnez	$a1, .LBB6_48
.LBB6_49:                               # %.preheader321
	blez	$s8, .LBB6_65
# %bb.50:                               # %.lr.ph353
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align_gapmap.ogcp2)
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a2, $a1, %pc_lo12(A__align_gapmap.fgcp2)
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	addi.d	$a1, $a1, 1
	bstrpick.d	$a1, $a1, 31, 0
	addi.d	$a4, $a1, -1
	ori	$a5, $zero, 12
	ori	$a3, $zero, 1
	bgeu	$a4, $a5, .LBB6_176
.LBB6_51:                               # %scalar.ph571.preheader
	alsl.d	$a2, $a3, $a2, 2
	addi.d	$a2, $a2, -4
	alsl.d	$a4, $a3, $s5, 2
	sub.d	$a1, $a1, $a3
	.p2align	4, , 16
.LBB6_52:                               # %scalar.ph571
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $a0, 0
	fld.s	$fa1, $a2, 0
	fld.s	$fa2, $a4, 0
	fadd.s	$fa0, $fa0, $fa1
	fadd.s	$fa0, $fa2, $fa0
	fst.s	$fa0, $a4, 0
	addi.d	$a2, $a2, 4
	addi.d	$a1, $a1, -1
	addi.d	$a4, $a4, 4
	bnez	$a1, .LBB6_52
	b	.LBB6_61
.LBB6_53:                               # %.preheader324
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	blez	$a0, .LBB6_60
# %bb.54:                               # %.lr.ph347
	pcalau12i	$a0, %got_pc_hi20(offset)
	ld.d	$a0, $a0, %got_pc_lo12(offset)
	ld.w	$a0, $a0, 0
	addi.d	$a1, $t4, 1
	bstrpick.d	$a1, $a1, 31, 0
	addi.d	$a2, $a1, -1
	ori	$a4, $zero, 4
	ori	$a3, $zero, 1
	bltu	$a2, $a4, .LBB6_58
# %bb.55:                               # %vector.ph520
	move	$a4, $a2
	bstrins.d	$a4, $zero, 1, 0
	ori	$a5, $zero, 1
	move	$a3, $a2
	bstrins.d	$a3, $a5, 1, 0
	pcalau12i	$a5, %pc_hi20(.LCPI6_1)
	vld	$vr0, $a5, %pc_lo12(.LCPI6_1)
	vreplgr2vr.w	$vr1, $a0
	ld.d	$a5, $sp, 280                   # 8-byte Folded Reload
	addi.d	$a5, $a5, 4
	vldi	$vr2, -800
	move	$a6, $a4
	.p2align	4, , 16
.LBB6_56:                               # %vector.body525
                                        # =>This Inner Loop Header: Depth=1
	vmul.w	$vr3, $vr1, $vr0
	vpickve2gr.w	$a7, $vr3, 3
	movgr2fr.w	$fa4, $a7
	ffint.d.w	$fa4, $fa4
	vpickve2gr.w	$a7, $vr3, 2
	movgr2fr.w	$fa5, $a7
	ffint.d.w	$fa5, $fa5
	vextrins.d	$vr5, $vr4, 16
	vpickve2gr.w	$a7, $vr3, 1
	movgr2fr.w	$fa4, $a7
	ffint.d.w	$fa4, $fa4
	vpickve2gr.w	$a7, $vr3, 0
	movgr2fr.w	$fa3, $a7
	ffint.d.w	$fa3, $fa3
	vld	$vr6, $a5, 0
	vextrins.d	$vr3, $vr4, 16
	vfmul.d	$vr3, $vr3, $vr2
	vfmul.d	$vr4, $vr5, $vr2
	vreplvei.w	$vr5, $vr6, 1
	fcvt.d.s	$fa5, $fa5
	vreplvei.w	$vr7, $vr6, 0
	fcvt.d.s	$fa7, $fa7
	vextrins.d	$vr7, $vr5, 16
	vreplvei.w	$vr5, $vr6, 3
	fcvt.d.s	$fa5, $fa5
	vreplvei.w	$vr6, $vr6, 2
	fcvt.d.s	$fa6, $fa6
	vextrins.d	$vr6, $vr5, 16
	vfadd.d	$vr4, $vr6, $vr4
	vfadd.d	$vr3, $vr7, $vr3
	vreplvei.d	$vr5, $vr3, 1
	fcvt.s.d	$fa5, $fa5
	vreplvei.d	$vr3, $vr3, 0
	fcvt.s.d	$fa3, $fa3
	vextrins.w	$vr3, $vr5, 16
	vreplvei.d	$vr5, $vr4, 0
	fcvt.s.d	$fa5, $fa5
	vextrins.w	$vr3, $vr5, 32
	vreplvei.d	$vr4, $vr4, 1
	fcvt.s.d	$fa4, $fa4
	vextrins.w	$vr3, $vr4, 48
	vst	$vr3, $a5, 0
	vaddi.wu	$vr0, $vr0, 4
	addi.d	$a6, $a6, -4
	addi.d	$a5, $a5, 16
	bnez	$a6, .LBB6_56
# %bb.57:                               # %middle.block532
	beq	$a2, $a4, .LBB6_60
.LBB6_58:                               # %scalar.ph518.preheader
	mul.d	$a2, $a0, $a3
	ld.d	$a4, $sp, 280                   # 8-byte Folded Reload
	alsl.d	$a4, $a3, $a4, 2
	sub.d	$a1, $a1, $a3
	vldi	$vr0, -800
	.p2align	4, , 16
.LBB6_59:                               # %scalar.ph518
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
	bnez	$a1, .LBB6_59
.LBB6_60:                               # %.loopexit322
	blez	$s8, .LBB6_65
.LBB6_61:                               # %.lr.ph357
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a6, $a0, %pc_lo12(A__align_gapmap.ogcp1)
	addi.d	$a0, $a6, 4
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(A__align_gapmap.m)
	ld.d	$a2, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(A__align_gapmap.mp)
	ld.d	$a3, $sp, 216                   # 8-byte Folded Reload
	addi.d	$a3, $a3, 1
	bstrpick.d	$a3, $a3, 31, 0
	addi.d	$a5, $a3, -1
	ori	$a7, $zero, 12
	ori	$a4, $zero, 1
	bgeu	$a5, $a7, .LBB6_107
.LBB6_62:                               # %scalar.ph601.preheader
	alsl.d	$a5, $a4, $s5, 2
	addi.d	$a5, $a5, -4
	alsl.d	$a1, $a4, $a1, 2
	alsl.d	$a2, $a4, $a2, 2
	sub.d	$a3, $a3, $a4
	.p2align	4, , 16
.LBB6_63:                               # %scalar.ph601
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $a5, 0
	fld.s	$fa1, $a0, 0
	fadd.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $a1, 0
	st.w	$zero, $a2, 0
	addi.d	$a5, $a5, 4
	addi.d	$a1, $a1, 4
	addi.d	$a3, $a3, -1
	addi.d	$a2, $a2, 4
	bnez	$a3, .LBB6_63
.LBB6_64:
	move	$a2, $zero
	b	.LBB6_66
.LBB6_65:                               # %._crit_edge358
	ori	$a2, $zero, 1
	beqz	$s8, .LBB6_181
.LBB6_66:
	ld.d	$a3, $sp, 224                   # 8-byte Folded Reload
	ori	$a0, $zero, 0
	lu32i.d	$a0, -1
	add.d	$a0, $a3, $a0
	srai.d	$a0, $a0, 30
	fldx.s	$fa0, $s5, $a0
	st.d	$a2, $sp, 232                   # 8-byte Folded Spill
	move	$a2, $zero
.LBB6_67:
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$fp, $a0, %pc_lo12(A__align_gapmap.lastverticalw)
	fst.s	$fa0, $fp, 0
	pcalau12i	$a0, %got_pc_hi20(outgap)
	ld.d	$a0, $a0, %got_pc_lo12(outgap)
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	ld.w	$a0, $a0, 0
	sltu	$a1, $zero, $a0
	add.w	$s0, $a1, $t4
	ori	$a1, $zero, 2
	blt	$s0, $a1, .LBB6_83
# %bb.68:                               # %.lr.ph382
	st.d	$a2, $sp, 224                   # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(impmtx)
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a4, $a0, %pc_lo12(A__align_gapmap.ogcp2)
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align_gapmap.ijp)
	st.d	$a0, $sp, 184                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(A__align_gapmap.m)
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(A__align_gapmap.mp)
	ld.d	$a2, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(A__align_gapmap.fgcp2)
	st.d	$a2, $sp, 176                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(A__align_gapmap.fgcp1)
	st.d	$a2, $sp, 168                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(A__align_gapmap.ogcp1)
	st.d	$a2, $sp, 160                   # 8-byte Folded Spill
	ori	$a2, $zero, 0
	lu32i.d	$a2, -1
	add.d	$a2, $a3, $a2
	srai.d	$s2, $a2, 30
	addi.d	$a0, $a0, 4
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	addi.d	$a0, $a1, 4
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	st.d	$a4, $sp, 192                   # 8-byte Folded Spill
	addi.d	$a0, $a4, 4
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	movgr2fr.w	$fs0, $zero
	ori	$s4, $zero, 1
	b	.LBB6_70
	.p2align	4, , 16
.LBB6_69:                               # %._crit_edge374
                                        #   in Loop: Header=BB6_70 Depth=1
	fldx.s	$fa0, $s3, $s2
	addi.d	$s4, $s4, 1
	fstx.s	$fa0, $fp, $a0
	move	$s5, $s3
	beq	$s4, $s0, .LBB6_84
.LBB6_70:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_73 Depth 2
                                        #     Child Loop BB6_77 Depth 2
	addi.d	$s1, $s4, -1
	slli.d	$s7, $s1, 2
	ld.d	$a0, $sp, 280                   # 8-byte Folded Reload
	fldx.s	$fa0, $a0, $s7
	move	$s3, $s6
	move	$s6, $s5
	fst.s	$fa0, $s5, 0
	move	$a0, $s3
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 256                   # 8-byte Folded Reload
	move	$a3, $s4
	move	$a4, $s8
	ld.d	$a5, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 240                   # 8-byte Folded Reload
	move	$a7, $zero
	pcaddu18i	$ra, %call36(match_calc)
	jirl	$ra, $ra, 0
	slli.d	$a0, $s4, 2
	ld.d	$a1, $sp, 272                   # 8-byte Folded Reload
	beqz	$a1, .LBB6_74
# %bb.71:                               #   in Loop: Header=BB6_70 Depth=1
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	bnez	$a1, .LBB6_74
# %bb.72:                               # %.lr.ph.i312.preheader
                                        #   in Loop: Header=BB6_70 Depth=1
	ld.d	$a1, $sp, 200                   # 8-byte Folded Reload
	ldx.w	$a1, $a1, $a0
	slli.d	$a1, $a1, 3
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	ldx.d	$a1, $a2, $a1
	ld.d	$a4, $sp, 208                   # 8-byte Folded Reload
	move	$a3, $s3
	ld.d	$a2, $sp, 216                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB6_73:                               # %.lr.ph.i312
                                        #   Parent Loop BB6_70 Depth=1
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
	bnez	$a2, .LBB6_73
.LBB6_74:                               # %imp_match_out_vead_gapmap.exit317
                                        #   in Loop: Header=BB6_70 Depth=1
	ld.d	$a1, $sp, 280                   # 8-byte Folded Reload
	fldx.s	$fa0, $a1, $a0
	fst.s	$fa0, $s3, 0
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	bnez	$a1, .LBB6_69
# %bb.75:                               # %.lr.ph373.preheader
                                        #   in Loop: Header=BB6_70 Depth=1
	move	$a1, $zero
	move	$a2, $zero
	ld.d	$a3, $sp, 168                   # 8-byte Folded Reload
	fldx.s	$fa0, $a3, $s7
	fld.s	$fa2, $s6, 0
	ld.d	$a3, $sp, 192                   # 8-byte Folded Reload
	fld.s	$fa3, $a3, 4
	slli.d	$a3, $s4, 3
	ld.d	$a4, $sp, 184                   # 8-byte Folded Reload
	ldx.d	$a4, $a4, $a3
	ld.d	$a3, $sp, 160                   # 8-byte Folded Reload
	fldx.s	$fa1, $a3, $a0
	fadd.s	$fa2, $fa2, $fa3
	addi.d	$a3, $s3, 4
	addi.d	$a4, $a4, 4
	addi.d	$a5, $zero, -1
	ld.d	$a6, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 144                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 176                   # 8-byte Folded Reload
	move	$t2, $s6
	b	.LBB6_77
	.p2align	4, , 16
.LBB6_76:                               #   in Loop: Header=BB6_77 Depth=2
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
	beq	$s8, $a1, .LBB6_69
.LBB6_77:                               # %.lr.ph373
                                        #   Parent Loop BB6_70 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.s	$fa4, $t1, 0
	fld.s	$fa3, $t2, 0
	fadd.s	$fa4, $fa2, $fa4
	fcmp.cule.s	$fcc0, $fa4, $fa3
	st.w	$zero, $a4, 0
	fmov.s	$fs0, $fa3
	bcnez	$fcc0, .LBB6_79
# %bb.78:                               #   in Loop: Header=BB6_77 Depth=2
	add.d	$t3, $a2, $a5
	st.w	$t3, $a4, 0
	fmov.s	$fs0, $fa4
.LBB6_79:                               #   in Loop: Header=BB6_77 Depth=2
	fld.s	$fa5, $t0, 0
	fld.s	$fa4, $a6, 0
	fadd.s	$fa6, $fa0, $fa5
	fcmp.cule.s	$fcc0, $fa6, $fs0
	bcnez	$fcc0, .LBB6_81
# %bb.80:                               #   in Loop: Header=BB6_77 Depth=2
	ld.w	$t3, $a7, 0
	sub.d	$t3, $s4, $t3
	st.w	$t3, $a4, 0
	fmov.s	$fs0, $fa6
.LBB6_81:                               #   in Loop: Header=BB6_77 Depth=2
	fadd.s	$fa6, $fa1, $fa3
	fcmp.cult.s	$fcc0, $fa6, $fa5
	bcnez	$fcc0, .LBB6_76
# %bb.82:                               #   in Loop: Header=BB6_77 Depth=2
	fst.s	$fa6, $t0, 0
	st.w	$s1, $a7, 0
	b	.LBB6_76
.LBB6_83:
	movgr2fr.w	$fs0, $zero
	ld.d	$fp, $sp, 72                    # 8-byte Folded Reload
	ld.d	$t0, $sp, 120                   # 8-byte Folded Reload
	bnez	$a0, .LBB6_99
	b	.LBB6_85
.LBB6_84:                               # %._crit_edge383.loopexit
	ld.d	$t3, $sp, 40                    # 8-byte Folded Reload
	ld.w	$a0, $t3, 0
	move	$s5, $s3
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 96                    # 8-byte Folded Reload
	ld.d	$t4, $sp, 112                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 72                    # 8-byte Folded Reload
	ld.d	$t0, $sp, 120                   # 8-byte Folded Reload
	bnez	$a0, .LBB6_99
.LBB6_85:                               # %.preheader320
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	bnez	$a0, .LBB6_92
# %bb.86:                               # %.lr.ph388
	pcalau12i	$a0, %got_pc_hi20(offset)
	ld.d	$a0, $a0, %got_pc_lo12(offset)
	ld.w	$a0, $a0, 0
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	addi.d	$a1, $a1, 1
	bstrpick.d	$a1, $a1, 31, 0
	addi.d	$a2, $a1, -1
	ori	$a4, $zero, 4
	ori	$a3, $zero, 1
	bltu	$a2, $a4, .LBB6_90
# %bb.87:                               # %vector.ph619
	move	$a4, $a2
	bstrins.d	$a4, $zero, 1, 0
	ori	$a5, $zero, 1
	move	$a3, $a2
	bstrins.d	$a3, $a5, 1, 0
	vreplgr2vr.w	$vr0, $a0
	pcalau12i	$a5, %pc_hi20(.LCPI6_2)
	vld	$vr1, $a5, %pc_lo12(.LCPI6_2)
	pcalau12i	$a5, %pc_hi20(.LCPI6_3)
	vld	$vr2, $a5, %pc_lo12(.LCPI6_3)
	ld.d	$a5, $sp, 216                   # 8-byte Folded Reload
	vreplgr2vr.d	$vr3, $a5
	addi.d	$a5, $s5, 4
	vldi	$vr4, -800
	move	$a6, $a4
	.p2align	4, , 16
.LBB6_88:                               # %vector.body626
                                        # =>This Inner Loop Header: Depth=1
	vsub.d	$vr5, $vr3, $vr2
	vsub.d	$vr6, $vr3, $vr1
	vpickev.w	$vr5, $vr6, $vr5
	vmul.w	$vr5, $vr0, $vr5
	vpickve2gr.w	$a7, $vr5, 3
	movgr2fr.w	$fa6, $a7
	ffint.d.w	$fa6, $fa6
	vpickve2gr.w	$a7, $vr5, 2
	movgr2fr.w	$fa7, $a7
	ffint.d.w	$fa7, $fa7
	vextrins.d	$vr7, $vr6, 16
	vpickve2gr.w	$a7, $vr5, 1
	movgr2fr.w	$fa6, $a7
	ffint.d.w	$fa6, $fa6
	vpickve2gr.w	$a7, $vr5, 0
	movgr2fr.w	$fa5, $a7
	ffint.d.w	$fa5, $fa5
	vld	$vr8, $a5, 0
	vextrins.d	$vr5, $vr6, 16
	vfmul.d	$vr5, $vr5, $vr4
	vfmul.d	$vr6, $vr7, $vr4
	vreplvei.w	$vr7, $vr8, 1
	fcvt.d.s	$fa7, $fa7
	vreplvei.w	$vr9, $vr8, 0
	fcvt.d.s	$ft1, $ft1
	vextrins.d	$vr9, $vr7, 16
	vreplvei.w	$vr7, $vr8, 3
	fcvt.d.s	$fa7, $fa7
	vreplvei.w	$vr8, $vr8, 2
	fcvt.d.s	$ft0, $ft0
	vextrins.d	$vr8, $vr7, 16
	vfadd.d	$vr6, $vr8, $vr6
	vfadd.d	$vr5, $vr9, $vr5
	vreplvei.d	$vr7, $vr5, 1
	fcvt.s.d	$fa7, $fa7
	vreplvei.d	$vr5, $vr5, 0
	fcvt.s.d	$fa5, $fa5
	vextrins.w	$vr5, $vr7, 16
	vreplvei.d	$vr7, $vr6, 0
	fcvt.s.d	$fa7, $fa7
	vextrins.w	$vr5, $vr7, 32
	vreplvei.d	$vr6, $vr6, 1
	fcvt.s.d	$fa6, $fa6
	vextrins.w	$vr5, $vr6, 48
	vst	$vr5, $a5, 0
	vaddi.du	$vr2, $vr2, 4
	vaddi.du	$vr1, $vr1, 4
	addi.d	$a6, $a6, -4
	addi.d	$a5, $a5, 16
	bnez	$a6, .LBB6_88
# %bb.89:                               # %middle.block633
	beq	$a2, $a4, .LBB6_92
.LBB6_90:                               # %scalar.ph617.preheader
	ld.d	$a2, $sp, 216                   # 8-byte Folded Reload
	sub.w	$a2, $a2, $a3
	mul.d	$a2, $a0, $a2
	alsl.d	$a4, $a3, $s5, 2
	sub.d	$a1, $a1, $a3
	vldi	$vr0, -800
	.p2align	4, , 16
.LBB6_91:                               # %scalar.ph617
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
	bnez	$a1, .LBB6_91
.LBB6_92:                               # %.preheader319
	blez	$t0, .LBB6_99
# %bb.93:                               # %.lr.ph391
	bstrpick.d	$a0, $t4, 31, 0
	pcalau12i	$a1, %got_pc_hi20(offset)
	ld.d	$a1, $a1, %got_pc_lo12(offset)
	ld.w	$a1, $a1, 0
	movgr2fr.w	$fa0, $a1
	ffint.d.w	$fa1, $fa0
	movgr2fr.d	$fa0, $a0
	ffint.d.l	$fa0, $fa0
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a1, $a0, %pc_lo12(A__align_gapmap.lastverticalw)
	fneg.d	$fa1, $fa1
	addi.d	$a0, $t4, 1
	bstrpick.d	$a2, $a0, 31, 0
	addi.d	$a3, $a2, -1
	ori	$a4, $zero, 2
	ori	$a0, $zero, 1
	bltu	$a3, $a4, .LBB6_97
# %bb.94:                               # %vector.ph638
	move	$a5, $a3
	bstrins.d	$a5, $zero, 0, 0
	ori	$a0, $a3, 1
	addi.d	$a6, $a1, 8
	vldi	$vr2, -928
	move	$a7, $a5
	.p2align	4, , 16
.LBB6_95:                               # %vector.body641
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
	bnez	$a7, .LBB6_95
# %bb.96:                               # %middle.block646
	beq	$a3, $a5, .LBB6_99
.LBB6_97:                               # %scalar.ph636.preheader
	alsl.d	$a1, $a0, $a1, 2
	sub.d	$a2, $a2, $a0
	vldi	$vr2, -800
	.p2align	4, , 16
.LBB6_98:                               # %scalar.ph636
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
	bnez	$a2, .LBB6_98
.LBB6_99:                               # %.loopexit
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s3, $a0, %pc_lo12(A__align_gapmap.lastverticalw)
	ld.d	$s6, $fp, %pc_lo12(A__align_gapmap.mseq1)
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s4, $a0, %pc_lo12(A__align_gapmap.mseq2)
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a6, $a0, %pc_lo12(A__align_gapmap.ijp)
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	beqz	$a0, .LBB6_106
# %bb.100:
	ld.d	$a0, $s7, 0
	move	$fp, $a6
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	move	$s7, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	add.w	$a0, $a0, $s7
	st.d	$a0, $sp, 264                   # 8-byte Folded Spill
	addi.w	$s8, $a0, 1
	move	$a0, $s8
	pcaddu18i	$ra, %call36(AllocateCharVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 280                   # 8-byte Folded Spill
	move	$a0, $s8
	pcaddu18i	$ra, %call36(AllocateCharVec)
	jirl	$ra, $ra, 0
	move	$ra, $fp
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	ld.w	$a1, $a1, 0
	ori	$a3, $zero, 1
	addi.w	$s8, $s7, 0
	move	$t2, $s0
	addi.w	$a2, $s0, 0
	beq	$a1, $a3, .LBB6_117
# %bb.101:
	fld.s	$fa0, $s3, 0
	blez	$s8, .LBB6_112
# %bb.102:                              # %.lr.ph.i318
	slli.d	$a1, $s7, 3
	bstrpick.d	$a1, $a1, 33, 3
	slli.d	$a1, $a1, 3
	slli.d	$a3, $t2, 32
	srai.d	$a3, $a3, 30
	bstrpick.d	$a4, $s7, 30, 0
	move	$a5, $s7
	b	.LBB6_104
	.p2align	4, , 16
.LBB6_103:                              #   in Loop: Header=BB6_104 Depth=1
	addi.d	$a4, $a4, -1
	addi.d	$a5, $a5, -1
	addi.d	$s3, $s3, 4
	beqz	$a4, .LBB6_112
.LBB6_104:                              # =>This Inner Loop Header: Depth=1
	fld.s	$fa1, $s3, 0
	fcmp.cult.s	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB6_103
# %bb.105:                              #   in Loop: Header=BB6_104 Depth=1
	ldx.d	$a6, $ra, $a1
	stx.w	$a5, $a6, $a3
	fmov.s	$fa0, $fa1
	b	.LBB6_103
.LBB6_106:
	st.d	$s2, $sp, 0
	move	$a0, $s5
	move	$a1, $s3
	move	$a2, $s7
	move	$a3, $s1
	move	$a4, $s6
	move	$a5, $s4
	ld.d	$s0, $sp, 80                    # 8-byte Folded Reload
	move	$a7, $s0
	pcaddu18i	$ra, %call36(Atracking)
	jirl	$ra, $ra, 0
	b	.LBB6_162
.LBB6_107:                              # %vector.memcheck589
	addi.d	$a7, $a1, 4
	alsl.d	$t0, $a3, $a1, 2
	alsl.d	$t1, $a3, $s5, 2
	addi.d	$t1, $t1, -4
	sltu	$t1, $a7, $t1
	sltu	$t2, $s5, $t0
	and	$t1, $t1, $t2
	bnez	$t1, .LBB6_62
# %bb.108:                              # %vector.memcheck589
	addi.d	$a6, $a6, 8
	sltu	$a6, $a7, $a6
	sltu	$a7, $a0, $t0
	and	$a6, $a6, $a7
	bnez	$a6, .LBB6_62
# %bb.109:                              # %vector.ph603
	move	$a6, $a5
	bstrins.d	$a6, $zero, 2, 0
	ori	$a7, $zero, 1
	move	$a4, $a5
	bstrins.d	$a4, $a7, 2, 0
	vldrepl.w	$vr0, $a0, 0
	addi.d	$a7, $s5, 16
	addi.d	$t0, $a1, 20
	addi.d	$t1, $a2, 20
	vrepli.b	$vr1, 0
	move	$t2, $a6
	.p2align	4, , 16
.LBB6_110:                              # %vector.body606
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
	bnez	$t2, .LBB6_110
# %bb.111:                              # %middle.block614
	bne	$a5, $a6, .LBB6_62
	b	.LBB6_64
.LBB6_112:                              # %.preheader2.i
	blez	$a2, .LBB6_117
# %bb.113:                              # %.lr.ph7.i
	slli.d	$a1, $s7, 32
	srai.d	$a1, $a1, 29
	slli.d	$a3, $t2, 2
	bstrpick.d	$a3, $a3, 32, 2
	slli.d	$a3, $a3, 2
	bstrpick.d	$a4, $t2, 30, 0
	sub.d	$a5, $zero, $t2
	b	.LBB6_115
	.p2align	4, , 16
.LBB6_114:                              #   in Loop: Header=BB6_115 Depth=1
	addi.d	$a4, $a4, -1
	addi.d	$a5, $a5, 1
	addi.d	$s5, $s5, 4
	beqz	$a4, .LBB6_117
.LBB6_115:                              # =>This Inner Loop Header: Depth=1
	fld.s	$fa1, $s5, 0
	fcmp.cult.s	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB6_114
# %bb.116:                              #   in Loop: Header=BB6_115 Depth=1
	ldx.d	$a6, $ra, $a1
	stx.w	$a5, $a6, $a3
	fmov.s	$fa0, $fa1
	b	.LBB6_114
.LBB6_117:                              # %.loopexit.i
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 264                   # 8-byte Folded Reload
	bltz	$s8, .LBB6_125
# %bb.118:                              # %.lr.ph10.preheader.i
	addi.d	$a3, $s7, 1
	bstrpick.d	$a1, $a3, 31, 0
	ori	$a4, $zero, 2
	bgeu	$a1, $a4, .LBB6_120
# %bb.119:
	move	$a3, $zero
	b	.LBB6_123
.LBB6_120:                              # %vector.ph651
	bstrpick.d	$a3, $a3, 31, 1
	slli.d	$a3, $a3, 1
	addi.d	$a5, $ra, 8
	move	$a6, $a3
	.p2align	4, , 16
.LBB6_121:                              # %vector.body654
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a7, $a5, -8
	ld.d	$t0, $a5, 0
	addi.d	$t1, $a4, -1
	st.w	$t1, $a7, 0
	st.w	$a4, $t0, 0
	addi.d	$a4, $a4, 2
	addi.d	$a6, $a6, -2
	addi.d	$a5, $a5, 16
	bnez	$a6, .LBB6_121
# %bb.122:                              # %middle.block657
	beq	$a1, $a3, .LBB6_125
.LBB6_123:                              # %.lr.ph10.i.preheader
	alsl.d	$a4, $a3, $ra, 3
	sub.d	$a1, $a1, $a3
	addi.d	$a3, $a3, 1
	.p2align	4, , 16
.LBB6_124:                              # %.lr.ph10.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a5, $a4, 0
	st.w	$a3, $a5, 0
	addi.d	$a4, $a4, 8
	addi.d	$a1, $a1, -1
	addi.d	$a3, $a3, 1
	bnez	$a1, .LBB6_124
.LBB6_125:                              # %.preheader1.i
	ld.d	$a1, $sp, 384
	bltz	$a2, .LBB6_133
# %bb.126:                              # %.lr.ph13.i
	ld.d	$a3, $ra, 0
	addi.d	$a5, $t2, 1
	bstrpick.d	$a4, $a5, 31, 0
	ori	$a6, $zero, 8
	bgeu	$a4, $a6, .LBB6_128
# %bb.127:
	move	$a5, $zero
	b	.LBB6_131
.LBB6_128:                              # %vector.ph662
	bstrpick.d	$a5, $a5, 31, 3
	slli.d	$a5, $a5, 3
	pcalau12i	$a6, %pc_hi20(.LCPI6_4)
	vld	$vr0, $a6, %pc_lo12(.LCPI6_4)
	addi.d	$a6, $a3, 16
	vrepli.b	$vr1, -1
	vrepli.w	$vr2, -5
	move	$a7, $a5
	.p2align	4, , 16
.LBB6_129:                              # %vector.body665
                                        # =>This Inner Loop Header: Depth=1
	vxor.v	$vr3, $vr0, $vr1
	vsub.w	$vr4, $vr2, $vr0
	vst	$vr3, $a6, -16
	vst	$vr4, $a6, 0
	vaddi.wu	$vr0, $vr0, 8
	addi.d	$a7, $a7, -8
	addi.d	$a6, $a6, 32
	bnez	$a7, .LBB6_129
# %bb.130:                              # %middle.block670
	beq	$a4, $a5, .LBB6_133
.LBB6_131:                              # %scalar.ph660.preheader
	alsl.d	$a3, $a5, $a3, 2
	nor	$a6, $a5, $zero
	sub.d	$a4, $a4, $a5
	.p2align	4, , 16
.LBB6_132:                              # %scalar.ph660
                                        # =>This Inner Loop Header: Depth=1
	st.w	$a6, $a3, 0
	addi.d	$a3, $a3, 4
	addi.d	$a4, $a4, -1
	addi.d	$a6, $a6, -1
	bnez	$a4, .LBB6_132
.LBB6_133:                              # %._crit_edge.i
	ld.d	$a3, $sp, 280                   # 8-byte Folded Reload
	add.d	$a3, $a3, $s8
	add.d	$s3, $a3, $a2
	stx.b	$zero, $a3, $a2
	st.d	$a0, $sp, 272                   # 8-byte Folded Spill
	add.d	$a3, $a0, $s8
	add.d	$s5, $a3, $a2
	stx.b	$zero, $a3, $a2
	st.w	$zero, $a1, 0
	bltz	$s0, .LBB6_154
# %bb.134:                              # %.lr.ph41.i.preheader
	move	$a2, $zero
	addi.w	$a3, $zero, -1
	ori	$a4, $zero, 45
	ori	$a5, $zero, 111
	move	$a0, $t2
	move	$a6, $t2
	.p2align	4, , 16
.LBB6_135:                              # %.lr.ph41.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_143 Depth 2
                                        #     Child Loop BB6_146 Depth 2
	addi.w	$t0, $s7, 0
	slli.d	$a7, $t0, 3
	ldx.d	$a7, $ra, $a7
	addi.w	$t1, $a6, 0
	slli.d	$t3, $t1, 2
	ldx.w	$t2, $a7, $t3
	bltz	$t2, .LBB6_138
# %bb.136:                              #   in Loop: Header=BB6_135 Depth=1
	beqz	$t2, .LBB6_140
# %bb.137:                              #   in Loop: Header=BB6_135 Depth=1
	sub.d	$a7, $s7, $t2
	b	.LBB6_141
	.p2align	4, , 16
.LBB6_138:                              #   in Loop: Header=BB6_135 Depth=1
	addi.d	$a7, $s7, -1
	nor	$t4, $a7, $zero
	add.w	$t4, $s7, $t4
	bnez	$t4, .LBB6_142
.LBB6_139:                              #   in Loop: Header=BB6_135 Depth=1
	move	$t4, $s3
	move	$t5, $s5
	b	.LBB6_144
	.p2align	4, , 16
.LBB6_140:                              #   in Loop: Header=BB6_135 Depth=1
	addi.d	$a7, $s7, -1
.LBB6_141:                              #   in Loop: Header=BB6_135 Depth=1
	move	$t2, $a3
	nor	$t4, $a7, $zero
	add.w	$t4, $s7, $t4
	beqz	$t4, .LBB6_139
.LBB6_142:                              # %.lr.ph19.i.preheader
                                        #   in Loop: Header=BB6_135 Depth=1
	sub.d	$t4, $a7, $s7
	addi.w	$t6, $t4, 1
	.p2align	4, , 16
.LBB6_143:                              # %.lr.ph19.i
                                        #   Parent Loop BB6_135 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$t4, $s3, -1
	st.b	$a5, $s3, -1
	addi.d	$t5, $s5, -1
	st.b	$a4, $s5, -1
	bstrpick.d	$t6, $t6, 31, 0
	addi.d	$t6, $t6, 1
	slli.d	$t7, $t6, 31
	addi.d	$a2, $a2, 1
	move	$s5, $t5
	move	$s3, $t4
	bgez	$t7, .LBB6_143
.LBB6_144:                              # %._crit_edge20.i
                                        #   in Loop: Header=BB6_135 Depth=1
	beq	$t2, $a3, .LBB6_148
# %bb.145:                              # %.lr.ph29.preheader.i
                                        #   in Loop: Header=BB6_135 Depth=1
	nor	$t6, $t2, $zero
	addi.w	$t7, $t2, 1
	.p2align	4, , 16
.LBB6_146:                              # %.lr.ph29.i
                                        #   Parent Loop BB6_135 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.b	$a4, $t4, -1
	addi.d	$t4, $t4, -1
	st.b	$a5, $t5, -1
	bstrpick.d	$t7, $t7, 31, 0
	addi.d	$t7, $t7, 1
	slli.d	$t8, $t7, 31
	addi.d	$t5, $t5, -1
	bgez	$t8, .LBB6_146
# %bb.147:                              # %._crit_edge30.loopexit.i
                                        #   in Loop: Header=BB6_135 Depth=1
	add.d	$a2, $a2, $t6
.LBB6_148:                              # %._crit_edge30.i
                                        #   in Loop: Header=BB6_135 Depth=1
	beq	$t0, $s8, .LBB6_151
# %bb.149:                              # %._crit_edge30.i
                                        #   in Loop: Header=BB6_135 Depth=1
	addi.w	$t6, $a0, 0
	beq	$t1, $t6, .LBB6_151
# %bb.150:                              #   in Loop: Header=BB6_135 Depth=1
	slli.d	$t6, $t0, 2
	ld.d	$t7, $sp, 200                   # 8-byte Folded Reload
	ldx.w	$t6, $t7, $t6
	ld.d	$t7, $fp, %pc_lo12(impmtx)
	ld.d	$t8, $sp, 208                   # 8-byte Folded Reload
	ldx.w	$t3, $t8, $t3
	slli.d	$t6, $t6, 3
	ldx.d	$t6, $t7, $t6
	slli.d	$t3, $t3, 2
	fldx.s	$fa0, $t6, $t3
	fld.s	$fa1, $a1, 0
	fadd.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $a1, 0
.LBB6_151:                              #   in Loop: Header=BB6_135 Depth=1
	blez	$t0, .LBB6_155
# %bb.152:                              #   in Loop: Header=BB6_135 Depth=1
	blez	$t1, .LBB6_155
# %bb.153:                              #   in Loop: Header=BB6_135 Depth=1
	add.d	$a6, $t2, $a6
	addi.d	$s3, $t4, -1
	st.b	$a4, $t4, -1
	addi.d	$s5, $t5, -1
	addi.w	$a2, $a2, 2
	st.b	$a4, $t5, -1
	move	$s7, $a7
	bge	$s0, $a2, .LBB6_135
.LBB6_154:                              # %._crit_edge42.i
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 96                    # 8-byte Folded Reload
	bgtz	$a0, .LBB6_156
	b	.LBB6_158
.LBB6_155:
	move	$s3, $t4
	move	$s5, $t5
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 96                    # 8-byte Folded Reload
	blez	$a0, .LBB6_158
.LBB6_156:                              # %.lr.ph50.preheader.i
	move	$fp, $s7
	ld.d	$s0, $sp, 80                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB6_157:                              # %.lr.ph50.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s6, 0
	ld.d	$a1, $fp, 0
	move	$a2, $s3
	pcaddu18i	$ra, %call36(gapireru)
	jirl	$ra, $ra, 0
	addi.d	$s0, $s0, -1
	addi.d	$fp, $fp, 8
	addi.d	$s6, $s6, 8
	bnez	$s0, .LBB6_157
.LBB6_158:                              # %.preheader.i
	blez	$s2, .LBB6_161
# %bb.159:                              # %.lr.ph52.preheader.i
	move	$fp, $s1
	move	$s0, $s2
	.p2align	4, , 16
.LBB6_160:                              # %.lr.ph52.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s4, 0
	ld.d	$a1, $fp, 0
	move	$a2, $s5
	pcaddu18i	$ra, %call36(gapireru)
	jirl	$ra, $ra, 0
	addi.d	$s0, $s0, -1
	addi.d	$fp, $fp, 8
	addi.d	$s4, $s4, 8
	bnez	$s0, .LBB6_160
.LBB6_161:                              # %Atracking_localhom_gapmap.exit
	ld.d	$a0, $sp, 280                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$s0, $sp, 80                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 72                    # 8-byte Folded Reload
.LBB6_162:
	ld.d	$a0, $fp, %pc_lo12(A__align_gapmap.mseq1)
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.w	$a3, $a0, 0
	lu12i.w	$a4, 1220
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	blt	$a2, $a3, .LBB6_182
# %bb.163:
	ori	$a0, $a4, 2881
	bge	$a3, $a0, .LBB6_182
# %bb.164:
	blez	$s0, .LBB6_167
.LBB6_165:                              # %.lr.ph394
	ld.d	$fp, $fp, %pc_lo12(A__align_gapmap.mseq1)
	.p2align	4, , 16
.LBB6_166:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s7, 0
	ld.d	$a1, $fp, 0
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	addi.d	$fp, $fp, 8
	addi.d	$s0, $s0, -1
	addi.d	$s7, $s7, 8
	bnez	$s0, .LBB6_166
.LBB6_167:                              # %.preheader
	blez	$s2, .LBB6_170
# %bb.168:                              # %.lr.ph396
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$fp, $a0, %pc_lo12(A__align_gapmap.mseq2)
	.p2align	4, , 16
.LBB6_169:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s1, 0
	ld.d	$a1, $fp, 0
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	addi.d	$fp, $fp, 8
	addi.d	$s2, $s2, -1
	addi.d	$s1, $s1, 8
	bnez	$s2, .LBB6_169
.LBB6_170:                              # %._crit_edge397
	fmov.s	$fa0, $fs0
	fld.d	$fs0, $sp, 288                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 296                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 304                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 312                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 320                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 328                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 336                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 344                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 352                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 360                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 368                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 376                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 384
	ret
.LBB6_171:                              # %vector.memcheck
	ld.d	$a6, $sp, 280                   # 8-byte Folded Reload
	addi.d	$a5, $a6, 4
	alsl.d	$a6, $a1, $a6, 2
	addi.d	$a7, $a0, 4
	sltu	$a7, $a5, $a7
	sltu	$t0, $a0, $a6
	and	$a7, $a7, $t0
	bnez	$a7, .LBB6_47
# %bb.172:                              # %vector.memcheck
	alsl.d	$a7, $a1, $a2, 2
	addi.d	$a7, $a7, -4
	sltu	$a5, $a5, $a7
	sltu	$a6, $a2, $a6
	and	$a5, $a5, $a6
	bnez	$a5, .LBB6_47
# %bb.173:                              # %vector.ph543
	move	$a5, $a4
	bstrins.d	$a5, $zero, 2, 0
	ori	$a6, $zero, 1
	move	$a3, $a4
	vldrepl.w	$vr0, $a0, 0
	bstrins.d	$a3, $a6, 2, 0
	addi.d	$a6, $a2, 16
	ld.d	$a7, $sp, 280                   # 8-byte Folded Reload
	addi.d	$a7, $a7, 20
	move	$t0, $a5
	.p2align	4, , 16
.LBB6_174:                              # %vector.body546
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr1, $a6, -16
	vld	$vr2, $a6, 0
	vld	$vr3, $a7, -16
	vld	$vr4, $a7, 0
	vfadd.s	$vr1, $vr0, $vr1
	vfadd.s	$vr2, $vr0, $vr2
	vfadd.s	$vr1, $vr3, $vr1
	vfadd.s	$vr2, $vr4, $vr2
	vst	$vr1, $a7, -16
	vst	$vr2, $a7, 0
	addi.d	$a6, $a6, 32
	addi.d	$t0, $t0, -8
	addi.d	$a7, $a7, 32
	bnez	$t0, .LBB6_174
# %bb.175:                              # %middle.block556
	bne	$a4, $a5, .LBB6_47
	b	.LBB6_49
.LBB6_176:                              # %vector.memcheck559
	addi.d	$a5, $s5, 4
	alsl.d	$a6, $a1, $s5, 2
	addi.d	$a7, $a0, 4
	sltu	$a7, $a5, $a7
	sltu	$t0, $a0, $a6
	and	$a7, $a7, $t0
	bnez	$a7, .LBB6_51
# %bb.177:                              # %vector.memcheck559
	alsl.d	$a7, $a1, $a2, 2
	addi.d	$a7, $a7, -4
	sltu	$a5, $a5, $a7
	sltu	$a6, $a2, $a6
	and	$a5, $a5, $a6
	bnez	$a5, .LBB6_51
# %bb.178:                              # %vector.ph573
	move	$a5, $a4
	bstrins.d	$a5, $zero, 2, 0
	ori	$a6, $zero, 1
	move	$a3, $a4
	vldrepl.w	$vr0, $a0, 0
	bstrins.d	$a3, $a6, 2, 0
	addi.d	$a6, $a2, 16
	addi.d	$a7, $s5, 20
	move	$t0, $a5
	.p2align	4, , 16
.LBB6_179:                              # %vector.body576
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr1, $a6, -16
	vld	$vr2, $a6, 0
	vld	$vr3, $a7, -16
	vld	$vr4, $a7, 0
	vfadd.s	$vr1, $vr0, $vr1
	vfadd.s	$vr2, $vr0, $vr2
	vfadd.s	$vr1, $vr3, $vr1
	vfadd.s	$vr2, $vr4, $vr2
	vst	$vr1, $a7, -16
	vst	$vr2, $a7, 0
	addi.d	$a6, $a6, 32
	addi.d	$t0, $t0, -8
	addi.d	$a7, $a7, 32
	bnez	$t0, .LBB6_179
# %bb.180:                              # %middle.block586
	bne	$a4, $a5, .LBB6_51
	b	.LBB6_61
.LBB6_181:
	movgr2fr.w	$fa0, $zero
	ori	$a0, $zero, 1
	st.d	$a0, $sp, 232                   # 8-byte Folded Spill
	ld.d	$a3, $sp, 224                   # 8-byte Folded Reload
	b	.LBB6_67
.LBB6_182:
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
	bgtz	$s0, .LBB6_165
	b	.LBB6_167
.Lfunc_end6:
	.size	A__align_gapmap, .Lfunc_end6-A__align_gapmap
                                        # -- End function
	.globl	translate_and_Calign            # -- Begin function translate_and_Calign
	.p2align	5
	.type	translate_and_Calign,@function
translate_and_Calign:                   # @translate_and_Calign
# %bb.0:
	addi.d	$sp, $sp, -80
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
	st.d	$s1, $sp, 48                    # 8-byte Folded Spill
	st.d	$s2, $sp, 40                    # 8-byte Folded Spill
	st.d	$s3, $sp, 32                    # 8-byte Folded Spill
	st.d	$s4, $sp, 24                    # 8-byte Folded Spill
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
	addi.d	$a0, $sp, 20
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
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
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
