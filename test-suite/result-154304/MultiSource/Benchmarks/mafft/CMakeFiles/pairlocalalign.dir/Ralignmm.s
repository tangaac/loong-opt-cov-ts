	.file	"Ralignmm.c"
	.text
	.globl	imp_match_out_scR               # -- Begin function imp_match_out_scR
	.p2align	5
	.type	imp_match_out_scR,@function
imp_match_out_scR:                      # @imp_match_out_scR
# %bb.0:
	pcalau12i	$a2, %pc_hi20(impmtx)
	ld.d	$a2, $a2, %pc_lo12(impmtx)
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $a2, $a0
	slli.d	$a1, $a1, 2
	fldx.s	$fa0, $a0, $a1
	ret
.Lfunc_end0:
	.size	imp_match_out_scR, .Lfunc_end0-imp_match_out_scR
                                        # -- End function
	.globl	imp_match_init_strictR          # -- Begin function imp_match_init_strictR
	.p2align	5
	.type	imp_match_init_strictR,@function
imp_match_init_strictR:                 # @imp_match_init_strictR
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
	pcalau12i	$s6, %pc_hi20(imp_match_init_strictR.impalloclen)
	ld.w	$a0, $s6, %pc_lo12(imp_match_init_strictR.impalloclen)
	addi.w	$a1, $a3, 2
	pcalau12i	$a2, %pc_hi20(impmtx)
	st.d	$a2, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$s8, %pc_hi20(imp_match_init_strictR.nocount1)
	pcalau12i	$s7, %pc_hi20(imp_match_init_strictR.nocount2)
	blt	$a0, $a1, .LBB1_11
# %bb.1:
	addi.w	$a1, $s5, 2
	blt	$a0, $a1, .LBB1_11
# %bb.2:
	ori	$a1, $zero, 1
	blt	$s4, $a1, .LBB1_18
.LBB1_3:                                # %.preheader211.lr.ph
	ld.d	$a0, $s8, %pc_lo12(imp_match_init_strictR.nocount1)
	blt	$s3, $a1, .LBB1_19
# %bb.4:                                # %.preheader211.us.preheader
	move	$a1, $zero
	ori	$a2, $zero, 45
	b	.LBB1_7
	.p2align	4, , 16
.LBB1_5:                                # %._crit_edge.us.thread
                                        #   in Loop: Header=BB1_7 Depth=1
	move	$a4, $zero
.LBB1_6:                                #   in Loop: Header=BB1_7 Depth=1
	stx.b	$a4, $a0, $a1
	addi.d	$a1, $a1, 1
	beq	$a1, $s4, .LBB1_23
.LBB1_7:                                # %.preheader211.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_8 Depth 2
	move	$a4, $s3
	move	$a5, $s1
	move	$a3, $s3
	.p2align	4, , 16
.LBB1_8:                                #   Parent Loop BB1_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a6, $a5, 0
	ldx.bu	$a6, $a6, $a1
	beq	$a6, $a2, .LBB1_10
# %bb.9:                                #   in Loop: Header=BB1_8 Depth=2
	addi.w	$a3, $a3, -1
	addi.d	$a4, $a4, -1
	addi.d	$a5, $a5, 8
	bnez	$a4, .LBB1_8
	b	.LBB1_5
	.p2align	4, , 16
.LBB1_10:                               # %._crit_edge.us
                                        #   in Loop: Header=BB1_7 Depth=1
	ori	$a4, $zero, 1
	bnez	$a3, .LBB1_6
	b	.LBB1_5
.LBB1_11:
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(impmtx)
	beqz	$a0, .LBB1_13
# %bb.12:
	pcaddu18i	$ra, %call36(FreeFloatMtx)
	jirl	$ra, $ra, 0
.LBB1_13:
	ld.d	$a0, $s8, %pc_lo12(imp_match_init_strictR.nocount1)
	beqz	$a0, .LBB1_15
# %bb.14:
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB1_15:
	ld.d	$a0, $s7, %pc_lo12(imp_match_init_strictR.nocount2)
	beqz	$a0, .LBB1_17
# %bb.16:
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB1_17:
	slt	$a0, $s5, $s4
	masknez	$a1, $s5, $a0
	maskeqz	$a0, $s4, $a0
	or	$a0, $a0, $a1
	addi.w	$a0, $a0, 2
	st.w	$a0, $s6, %pc_lo12(imp_match_init_strictR.impalloclen)
	move	$a1, $a0
	pcaddu18i	$ra, %call36(AllocateFloatMtx)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s6, %pc_lo12(imp_match_init_strictR.impalloclen)
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	st.d	$a0, $a2, %pc_lo12(impmtx)
	move	$a0, $a1
	pcaddu18i	$ra, %call36(AllocateCharVec)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s6, %pc_lo12(imp_match_init_strictR.impalloclen)
	st.d	$a0, $s8, %pc_lo12(imp_match_init_strictR.nocount1)
	move	$a0, $a1
	pcaddu18i	$ra, %call36(AllocateCharVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $s7, %pc_lo12(imp_match_init_strictR.nocount2)
	ori	$a1, $zero, 1
	bge	$s4, $a1, .LBB1_3
.LBB1_18:                               # %.preheader210.thread
	bge	$s5, $a1, .LBB1_24
	b	.LBB1_39
.LBB1_19:                               # %.preheader211.lr.ph.split
	beqz	$s3, .LBB1_21
# %bb.20:                               # %.preheader211.preheader
	ori	$a1, $zero, 1
	b	.LBB1_22
.LBB1_21:                               # %.preheader211.us216.preheader
	move	$a1, $zero
.LBB1_22:                               # %.preheader210
	move	$a2, $s4
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB1_23:                               # %.preheader210
	blez	$s5, .LBB1_39
.LBB1_24:                               # %.preheader209.lr.ph
	ld.d	$a0, $s7, %pc_lo12(imp_match_init_strictR.nocount2)
	ori	$a1, $zero, 1
	blt	$s2, $a1, .LBB1_32
# %bb.25:                               # %.preheader209.us.preheader
	move	$a1, $zero
	ori	$a2, $zero, 45
	b	.LBB1_28
	.p2align	4, , 16
.LBB1_26:                               # %._crit_edge.us222.thread
                                        #   in Loop: Header=BB1_28 Depth=1
	move	$a4, $zero
.LBB1_27:                               #   in Loop: Header=BB1_28 Depth=1
	stx.b	$a4, $a0, $a1
	addi.d	$a1, $a1, 1
	beq	$a1, $s5, .LBB1_36
.LBB1_28:                               # %.preheader209.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_29 Depth 2
	move	$a4, $s2
	move	$a5, $s0
	move	$a3, $s2
	.p2align	4, , 16
.LBB1_29:                               #   Parent Loop BB1_28 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a6, $a5, 0
	ldx.bu	$a6, $a6, $a1
	beq	$a6, $a2, .LBB1_31
# %bb.30:                               #   in Loop: Header=BB1_29 Depth=2
	addi.w	$a3, $a3, -1
	addi.d	$a4, $a4, -1
	addi.d	$a5, $a5, 8
	bnez	$a4, .LBB1_29
	b	.LBB1_26
	.p2align	4, , 16
.LBB1_31:                               # %._crit_edge.us222
                                        #   in Loop: Header=BB1_28 Depth=1
	ori	$a4, $zero, 1
	bnez	$a3, .LBB1_27
	b	.LBB1_26
.LBB1_32:                               # %.preheader209.lr.ph.split
	beqz	$s2, .LBB1_34
# %bb.33:                               # %.preheader209.preheader
	ori	$a1, $zero, 1
	b	.LBB1_35
.LBB1_34:                               # %.preheader209.us224.preheader
	move	$a1, $zero
.LBB1_35:                               # %.preheader208
	move	$a2, $s5
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB1_36:                               # %.preheader208
	ori	$a0, $zero, 1
	blt	$s4, $a0, .LBB1_39
# %bb.37:                               # %.preheader207.lr.ph
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s6, $a0, %pc_lo12(impmtx)
	slli.d	$s5, $s5, 2
	.p2align	4, , 16
.LBB1_38:                               # %.preheader207.us
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s6, 0
	move	$a1, $zero
	move	$a2, $s5
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	addi.d	$s4, $s4, -1
	addi.d	$s6, $s6, 8
	bnez	$s4, .LBB1_38
.LBB1_39:                               # %._crit_edge228
	ori	$a0, $zero, 1
	blt	$s3, $a0, .LBB1_77
# %bb.40:                               # %.preheader206.lr.ph
	blt	$s2, $a0, .LBB1_77
# %bb.41:                               # %.preheader206.us.preheader
	pcalau12i	$a0, %got_pc_hi20(fastathreshold)
	ld.d	$a2, $a0, %got_pc_lo12(fastathreshold)
	ld.d	$a0, $sp, 120
	ld.d	$a1, $sp, 112
	fld.d	$fa0, $a2, 0
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(impmtx)
	move	$a3, $zero
	ori	$a4, $zero, 45
	b	.LBB1_43
	.p2align	4, , 16
.LBB1_42:                               # %._crit_edge235.us
                                        #   in Loop: Header=BB1_43 Depth=1
	addi.d	$a3, $a3, 1
	beq	$a3, $s3, .LBB1_77
.LBB1_43:                               # %.preheader206.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_45 Depth 2
                                        #       Child Loop BB1_48 Depth 3
                                        #         Child Loop BB1_49 Depth 4
                                        #         Child Loop BB1_53 Depth 4
                                        #         Child Loop BB1_57 Depth 4
                                        #         Child Loop BB1_61 Depth 4
                                        #         Child Loop BB1_65 Depth 4
	slli.d	$a5, $a3, 3
	fldx.d	$fa1, $fp, $a5
	ldx.d	$a5, $a0, $a5
	move	$a6, $zero
	alsl.d	$a7, $a3, $s1, 3
	b	.LBB1_45
	.p2align	4, , 16
.LBB1_44:                               # %._crit_edge.us238
                                        #   in Loop: Header=BB1_45 Depth=2
	addi.d	$a6, $a6, 1
	beq	$a6, $s2, .LBB1_42
.LBB1_45:                               #   Parent Loop BB1_43 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_48 Depth 3
                                        #         Child Loop BB1_49 Depth 4
                                        #         Child Loop BB1_53 Depth 4
                                        #         Child Loop BB1_57 Depth 4
                                        #         Child Loop BB1_61 Depth 4
                                        #         Child Loop BB1_65 Depth 4
	slli.d	$t2, $a6, 3
	ldx.d	$t0, $a5, $t2
	beqz	$t0, .LBB1_44
# %bb.46:                               # %.lr.ph.us
                                        #   in Loop: Header=BB1_45 Depth=2
	fldx.d	$fa2, $a1, $t2
	fmul.d	$fa2, $fa1, $fa2
	ld.d	$t1, $a7, 0
	ldx.d	$t2, $s0, $t2
	fmul.d	$fa2, $fa0, $fa2
	fcvt.s.d	$fa2, $fa2
	nor	$t3, $t1, $zero
	nor	$t4, $t2, $zero
	b	.LBB1_48
	.p2align	4, , 16
.LBB1_47:                               # %.critedge.us
                                        #   in Loop: Header=BB1_48 Depth=3
	ld.d	$t0, $t0, 8
	beqz	$t0, .LBB1_44
.LBB1_48:                               #   Parent Loop BB1_43 Depth=1
                                        #     Parent Loop BB1_45 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB1_49 Depth 4
                                        #         Child Loop BB1_53 Depth 4
                                        #         Child Loop BB1_57 Depth 4
                                        #         Child Loop BB1_61 Depth 4
                                        #         Child Loop BB1_65 Depth 4
	ld.w	$s4, $t0, 24
	addi.d	$t8, $zero, -1
	move	$t7, $t1
	.p2align	4, , 16
.LBB1_49:                               #   Parent Loop BB1_43 Depth=1
                                        #     Parent Loop BB1_45 Depth=2
                                        #       Parent Loop BB1_48 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.bu	$t5, $t7, 0
	beqz	$t5, .LBB1_52
# %bb.50:                               #   in Loop: Header=BB1_49 Depth=4
	addi.d	$t5, $t5, -45
	sltu	$t5, $zero, $t5
	add.w	$t8, $t8, $t5
	addi.d	$t7, $t7, 1
	bne	$t8, $s4, .LBB1_49
# %bb.51:                               #   in Loop: Header=BB1_48 Depth=3
	move	$t8, $s4
.LBB1_52:                               #   in Loop: Header=BB1_48 Depth=3
	ld.w	$s5, $t0, 28
	add.w	$t5, $t7, $t3
	move	$t6, $t5
	beq	$s4, $s5, .LBB1_56
	.p2align	4, , 16
.LBB1_53:                               # %.preheader205.us
                                        #   Parent Loop BB1_43 Depth=1
                                        #     Parent Loop BB1_45 Depth=2
                                        #       Parent Loop BB1_48 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.bu	$t6, $t7, 0
	beqz	$t6, .LBB1_55
# %bb.54:                               #   in Loop: Header=BB1_53 Depth=4
	addi.d	$t6, $t6, -45
	sltu	$t6, $zero, $t6
	add.w	$t8, $t8, $t6
	addi.d	$t7, $t7, 1
	bne	$t8, $s5, .LBB1_53
.LBB1_55:                               #   in Loop: Header=BB1_48 Depth=3
	add.w	$t6, $t7, $t3
.LBB1_56:                               #   in Loop: Header=BB1_48 Depth=3
	ld.w	$s6, $t0, 32
	addi.d	$s5, $zero, -1
	move	$s4, $t2
	.p2align	4, , 16
.LBB1_57:                               #   Parent Loop BB1_43 Depth=1
                                        #     Parent Loop BB1_45 Depth=2
                                        #       Parent Loop BB1_48 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.bu	$t7, $s4, 0
	beqz	$t7, .LBB1_60
# %bb.58:                               #   in Loop: Header=BB1_57 Depth=4
	addi.d	$t7, $t7, -45
	sltu	$t7, $zero, $t7
	add.w	$s5, $s5, $t7
	addi.d	$s4, $s4, 1
	bne	$s5, $s6, .LBB1_57
# %bb.59:                               #   in Loop: Header=BB1_48 Depth=3
	move	$s5, $s6
.LBB1_60:                               #   in Loop: Header=BB1_48 Depth=3
	ld.w	$s7, $t0, 36
	add.w	$t7, $s4, $t4
	move	$t8, $t7
	beq	$s6, $s7, .LBB1_64
	.p2align	4, , 16
.LBB1_61:                               # %.preheader.us
                                        #   Parent Loop BB1_43 Depth=1
                                        #     Parent Loop BB1_45 Depth=2
                                        #       Parent Loop BB1_48 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.bu	$t8, $s4, 0
	beqz	$t8, .LBB1_63
# %bb.62:                               #   in Loop: Header=BB1_61 Depth=4
	addi.d	$t8, $t8, -45
	sltu	$t8, $zero, $t8
	add.w	$s5, $s5, $t8
	addi.d	$s4, $s4, 1
	bne	$s5, $s7, .LBB1_61
.LBB1_63:                               #   in Loop: Header=BB1_48 Depth=3
	add.w	$t8, $s4, $t4
.LBB1_64:                               #   in Loop: Header=BB1_48 Depth=3
	add.d	$s4, $t1, $t5
	add.d	$s5, $t2, $t7
	.p2align	4, , 16
.LBB1_65:                               #   Parent Loop BB1_43 Depth=1
                                        #     Parent Loop BB1_45 Depth=2
                                        #       Parent Loop BB1_48 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.bu	$s7, $s4, 0
	beqz	$s7, .LBB1_47
# %bb.66:                               #   in Loop: Header=BB1_65 Depth=4
	ld.bu	$s6, $s5, 0
	beqz	$s6, .LBB1_47
# %bb.67:                               #   in Loop: Header=BB1_65 Depth=4
	beq	$s7, $a4, .LBB1_70
# %bb.68:                               #   in Loop: Header=BB1_65 Depth=4
	beq	$s6, $a4, .LBB1_70
# %bb.69:                               #   in Loop: Header=BB1_65 Depth=4
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
	b	.LBB1_74
	.p2align	4, , 16
.LBB1_70:                               #   in Loop: Header=BB1_65 Depth=4
	bne	$s7, $a4, .LBB1_72
# %bb.71:                               #   in Loop: Header=BB1_65 Depth=4
	addi.w	$t5, $t5, 1
	addi.d	$s4, $s4, 1
.LBB1_72:                               #   in Loop: Header=BB1_65 Depth=4
	bne	$s6, $a4, .LBB1_75
# %bb.73:                               #   in Loop: Header=BB1_65 Depth=4
	addi.w	$t7, $t7, 1
.LBB1_74:                               #   in Loop: Header=BB1_65 Depth=4
	addi.d	$s5, $s5, 1
.LBB1_75:                               #   in Loop: Header=BB1_65 Depth=4
	blt	$t6, $t5, .LBB1_47
# %bb.76:                               #   in Loop: Header=BB1_65 Depth=4
	bge	$t8, $t7, .LBB1_65
	b	.LBB1_47
.LBB1_77:                               # %._crit_edge237
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
.Lfunc_end1:
	.size	imp_match_init_strictR, .Lfunc_end1-imp_match_init_strictR
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function R__align
.LCPI2_0:
	.dword	0x3ff4cccccccccccd              # double 1.3
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0
.LCPI2_1:
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	4                               # 0x4
	.word	5                               # 0x5
	.word	6                               # 0x6
	.word	7                               # 0x7
	.word	8                               # 0x8
.LCPI2_3:
	.dword	5                               # 0x5
	.dword	6                               # 0x6
	.dword	7                               # 0x7
	.dword	8                               # 0x8
.LCPI2_4:
	.dword	1                               # 0x1
	.dword	2                               # 0x2
	.dword	3                               # 0x3
	.dword	4                               # 0x4
.LCPI2_7:
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
.LCPI2_2:
	.word	0x461c4000                      # float 1.0E+4
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI2_5:
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	4                               # 0x4
.LCPI2_6:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
.LCPI2_8:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.text
	.globl	R__align
	.p2align	5
	.type	R__align,@function
R__align:                               # @R__align
# %bb.0:
	addi.d	$sp, $sp, -592
	st.d	$ra, $sp, 584                   # 8-byte Folded Spill
	st.d	$fp, $sp, 576                   # 8-byte Folded Spill
	st.d	$s0, $sp, 568                   # 8-byte Folded Spill
	st.d	$s1, $sp, 560                   # 8-byte Folded Spill
	st.d	$s2, $sp, 552                   # 8-byte Folded Spill
	st.d	$s3, $sp, 544                   # 8-byte Folded Spill
	st.d	$s4, $sp, 536                   # 8-byte Folded Spill
	st.d	$s5, $sp, 528                   # 8-byte Folded Spill
	st.d	$s6, $sp, 520                   # 8-byte Folded Spill
	st.d	$s7, $sp, 512                   # 8-byte Folded Spill
	st.d	$s8, $sp, 504                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 496                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 488                  # 8-byte Folded Spill
	pcalau12i	$t0, %got_pc_hi20(penalty)
	ld.d	$t0, $t0, %got_pc_lo12(penalty)
	pcalau12i	$s4, %pc_hi20(R__align.orlgth1)
	ld.w	$s2, $s4, %pc_lo12(R__align.orlgth1)
	ld.w	$fp, $t0, 0
	st.d	$a7, $sp, 80                    # 8-byte Folded Spill
	st.d	$a6, $sp, 16                    # 8-byte Folded Spill
	move	$s6, $a5
	move	$s3, $a4
	st.d	$a3, $sp, 312                   # 8-byte Folded Spill
	st.d	$a2, $sp, 304                   # 8-byte Folded Spill
	move	$s7, $a1
	move	$s1, $a0
	pcalau12i	$a0, %pc_hi20(R__align.mseq1)
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(R__align.mseq2)
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	bnez	$s2, .LBB2_2
# %bb.1:
	pcalau12i	$a0, %got_pc_hi20(njob)
	ld.d	$s0, $a0, %got_pc_lo12(njob)
	ld.w	$a0, $s0, 0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(AllocateCharMtx)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s0, 0
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	st.d	$a0, $a2, %pc_lo12(R__align.mseq1)
	move	$a0, $a1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(AllocateCharMtx)
	jirl	$ra, $ra, 0
	ld.w	$s2, $s4, %pc_lo12(R__align.orlgth1)
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(R__align.mseq2)
.LBB2_2:
	st.d	$s4, $sp, 328                   # 8-byte Folded Spill
	st.d	$s1, $sp, 128                   # 8-byte Folded Spill
	ld.d	$a0, $s1, 0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s7, 0
	move	$s5, $a0
	addi.w	$s4, $a0, 0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(R__align.orlgth2)
	st.d	$a1, $sp, 256                   # 8-byte Folded Spill
	ld.w	$s0, $a1, %pc_lo12(R__align.orlgth2)
	st.d	$a0, $sp, 216                   # 8-byte Folded Spill
	addi.w	$a7, $a0, 0
	pcalau12i	$a0, %pc_hi20(R__align.w1)
	st.d	$a0, $sp, 448                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(R__align.w2)
	st.d	$a0, $sp, 416                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(R__align.initverticalw)
	st.d	$a0, $sp, 400                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(R__align.lastverticalw)
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(R__align.m)
	st.d	$a0, $sp, 408                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(R__align.mp)
	st.d	$a0, $sp, 264                   # 8-byte Folded Spill
	pcalau12i	$s1, %pc_hi20(R__align.mseq)
	pcalau12i	$a0, %pc_hi20(R__align.digf1)
	st.d	$a0, $sp, 336                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(R__align.digf2)
	st.d	$a0, $sp, 296                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(R__align.diaf1)
	st.d	$a0, $sp, 320                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(R__align.diaf2)
	st.d	$a0, $sp, 288                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(R__align.gapz1)
	st.d	$a0, $sp, 272                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(R__align.gapz2)
	st.d	$a0, $sp, 280                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(R__align.gapf1)
	st.d	$a0, $sp, 368                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(R__align.gapf2)
	st.d	$a0, $sp, 376                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(R__align.ogcp1g)
	st.d	$a0, $sp, 352                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(R__align.ogcp2g)
	st.d	$a0, $sp, 344                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(R__align.fgcp1g)
	st.d	$a0, $sp, 480                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(R__align.fgcp2g)
	st.d	$a0, $sp, 360                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(R__align.cpmx1)
	st.d	$a0, $sp, 464                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(R__align.cpmx2)
	st.d	$a0, $sp, 456                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(R__align.floatwork)
	st.d	$a0, $sp, 392                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(R__align.intwork)
	st.d	$a0, $sp, 384                   # 8-byte Folded Spill
	st.d	$s6, $sp, 48                    # 8-byte Folded Spill
	st.d	$s7, $sp, 120                   # 8-byte Folded Spill
	st.d	$s3, $sp, 112                   # 8-byte Folded Spill
	st.d	$s4, $sp, 72                    # 8-byte Folded Spill
	st.d	$a7, $sp, 472                   # 8-byte Folded Spill
	st.d	$s5, $sp, 40                    # 8-byte Folded Spill
	blt	$s2, $s4, .LBB2_5
# %bb.3:
	blt	$s0, $a7, .LBB2_5
# %bb.4:
	move	$s4, $fp
	ld.d	$fp, $sp, 328                   # 8-byte Folded Reload
	ori	$a0, $zero, 1
	ld.d	$a6, $sp, 72                    # 8-byte Folded Reload
	bge	$s3, $a0, .LBB2_9
	b	.LBB2_11
.LBB2_5:
	ori	$a0, $zero, 1
	pcalau12i	$s6, %pc_hi20(R__align.match)
	pcalau12i	$s7, %pc_hi20(R__align.ogcp1)
	pcalau12i	$s4, %pc_hi20(R__align.ogcp2)
	pcalau12i	$s3, %pc_hi20(R__align.fgcp1)
	pcalau12i	$a1, %pc_hi20(R__align.fgcp2)
	st.d	$fp, $sp, 248                   # 8-byte Folded Spill
	move	$fp, $a1
	blt	$s2, $a0, .LBB2_8
# %bb.6:
	blt	$s0, $a0, .LBB2_8
# %bb.7:
	ld.d	$a0, $sp, 448                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(R__align.w1)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 416                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(R__align.w2)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s6, %pc_lo12(R__align.match)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 400                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(R__align.initverticalw)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(R__align.lastverticalw)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 408                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(R__align.m)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(R__align.mp)
	pcaddu18i	$ra, %call36(FreeIntVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, %pc_lo12(R__align.mseq)
	pcaddu18i	$ra, %call36(FreeCharMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 336                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(R__align.digf1)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 296                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(R__align.digf2)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 320                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(R__align.diaf1)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 288                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(R__align.diaf2)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(R__align.gapz1)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 280                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(R__align.gapz2)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 368                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(R__align.gapf1)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 376                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(R__align.gapf2)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s7, %pc_lo12(R__align.ogcp1)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s4, %pc_lo12(R__align.ogcp2)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, %pc_lo12(R__align.fgcp1)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, %pc_lo12(R__align.fgcp2)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 352                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(R__align.ogcp1g)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 344                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(R__align.ogcp2g)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 480                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(R__align.fgcp1g)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 360                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(R__align.fgcp2g)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 464                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(R__align.cpmx1)
	pcaddu18i	$ra, %call36(FreeFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 456                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(R__align.cpmx2)
	pcaddu18i	$ra, %call36(FreeFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 392                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(R__align.floatwork)
	pcaddu18i	$ra, %call36(FreeFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 384                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(R__align.intwork)
	pcaddu18i	$ra, %call36(FreeIntMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 328                   # 8-byte Folded Reload
	ld.w	$s2, $a0, %pc_lo12(R__align.orlgth1)
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.w	$s0, $a0, %pc_lo12(R__align.orlgth2)
.LBB2_8:
	st.d	$fp, $sp, 240                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.LCPI2_0)
	fld.d	$fa0, $a0, %pc_lo12(.LCPI2_0)
	movgr2fr.w	$fa1, $s5
	ffint.d.w	$fa1, $fa1
	fmul.d	$fa1, $fa1, $fa0
	ftintrz.w.d	$fa1, $fa1
	movfr2gr.s	$a0, $fa1
	slt	$a1, $a0, $s2
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s2, $a1
	or	$s2, $a1, $a0
	move	$fp, $s3
	addi.w	$s3, $s2, 100
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	movgr2fr.w	$fa1, $a0
	ffint.d.w	$fa1, $fa1
	fmul.d	$fa0, $fa1, $fa0
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a0, $fa0
	slt	$a1, $a0, $s0
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s0, $a1
	or	$s0, $a1, $a0
	addi.w	$s8, $s0, 100
	addi.w	$s5, $s0, 102
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 448                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(R__align.w1)
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 416                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(R__align.w2)
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $s6, %pc_lo12(R__align.match)
	addi.w	$s6, $s2, 102
	move	$a0, $s6
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 400                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(R__align.initverticalw)
	move	$a0, $s6
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(R__align.lastverticalw)
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 408                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(R__align.m)
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateIntVec)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(njob)
	ld.d	$a1, $a1, %got_pc_lo12(njob)
	ld.w	$a2, $a1, 0
	ld.d	$a1, $sp, 264                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(R__align.mp)
	add.w	$a1, $s8, $s3
	move	$a0, $a2
	pcaddu18i	$ra, %call36(AllocateCharMtx)
	jirl	$ra, $ra, 0
	st.d	$a0, $s1, %pc_lo12(R__align.mseq)
	move	$a0, $s6
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 336                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(R__align.digf1)
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 296                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(R__align.digf2)
	move	$a0, $s6
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 320                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(R__align.diaf1)
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 288                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(R__align.diaf2)
	move	$a0, $s6
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 272                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(R__align.gapz1)
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 280                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(R__align.gapz2)
	move	$a0, $s6
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 368                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(R__align.gapf1)
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 376                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(R__align.gapf2)
	move	$a0, $s6
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $s7, %pc_lo12(R__align.ogcp1)
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $s4, %pc_lo12(R__align.ogcp2)
	move	$a0, $s6
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, %pc_lo12(R__align.fgcp1)
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 240                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(R__align.fgcp2)
	ld.d	$s4, $sp, 256                   # 8-byte Folded Reload
	move	$a0, $s6
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 352                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(R__align.ogcp1g)
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 344                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(R__align.ogcp2g)
	move	$a0, $s6
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 480                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(R__align.fgcp1g)
	move	$a0, $s5
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 360                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(R__align.fgcp2g)
	ori	$a0, $zero, 26
	move	$a1, $s6
	pcaddu18i	$ra, %call36(AllocateFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 464                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(R__align.cpmx1)
	ori	$a0, $zero, 26
	move	$a1, $s5
	pcaddu18i	$ra, %call36(AllocateFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 456                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(R__align.cpmx2)
	slt	$a0, $s8, $s3
	masknez	$a1, $s8, $a0
	maskeqz	$a0, $s3, $a0
	or	$a0, $a0, $a1
	addi.w	$s3, $a0, 2
	ori	$a1, $zero, 26
	move	$a0, $s3
	pcaddu18i	$ra, %call36(AllocateFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 392                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(R__align.floatwork)
	ori	$a1, $zero, 27
	move	$a0, $s3
	pcaddu18i	$ra, %call36(AllocateIntMtx)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 384                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(R__align.intwork)
	ld.d	$fp, $sp, 328                   # 8-byte Folded Reload
	st.w	$s2, $fp, %pc_lo12(R__align.orlgth1)
	st.w	$s0, $s4, %pc_lo12(R__align.orlgth2)
	ld.d	$s6, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 472                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 248                   # 8-byte Folded Reload
	ori	$a0, $zero, 1
	ld.d	$a6, $sp, 72                    # 8-byte Folded Reload
	blt	$s3, $a0, .LBB2_11
.LBB2_9:                                # %.lr.ph
	ld.d	$a1, $s1, %pc_lo12(R__align.mseq)
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(R__align.mseq1)
	move	$a3, $s3
	ld.d	$a4, $sp, 128                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB2_10:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a5, $a1, 0
	st.d	$a5, $a2, 0
	ld.d	$a5, $a4, 0
	stx.b	$zero, $a5, $a6
	addi.d	$a4, $a4, 8
	addi.d	$a2, $a2, 8
	addi.d	$a3, $a3, -1
	addi.d	$a1, $a1, 8
	bnez	$a3, .LBB2_10
.LBB2_11:                               # %.preheader580
	blt	$s6, $a0, .LBB2_14
# %bb.12:                               # %.lr.ph592
	ld.d	$a1, $s1, %pc_lo12(R__align.mseq)
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(R__align.mseq2)
	alsl.d	$a1, $s3, $a1, 3
	move	$a2, $s6
	move	$a3, $s7
	.p2align	4, , 16
.LBB2_13:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a4, $a1, 0
	st.d	$a4, $a0, 0
	ld.d	$a4, $a3, 0
	stx.b	$zero, $a4, $a7
	addi.d	$a1, $a1, 8
	addi.d	$a3, $a3, 8
	addi.d	$a2, $a2, -1
	addi.d	$a0, $a0, 8
	bnez	$a2, .LBB2_13
.LBB2_14:                               # %._crit_edge
	pcalau12i	$a0, %got_pc_hi20(commonAlloc1)
	ld.d	$s1, $a0, %got_pc_lo12(commonAlloc1)
	pcalau12i	$a0, %got_pc_hi20(commonAlloc2)
	ld.d	$s3, $a0, %got_pc_lo12(commonAlloc2)
	ld.d	$s8, $sp, 600
	ld.w	$a1, $s1, 0
	ld.w	$a0, $s3, 0
	blt	$a1, $s2, .LBB2_17
# %bb.15:                               # %._crit_edge
	blt	$a0, $s0, .LBB2_17
# %bb.16:                               # %._crit_edge725
	pcalau12i	$a0, %got_pc_hi20(commonIP)
	ld.d	$a0, $a0, %got_pc_lo12(commonIP)
	ld.d	$a0, $a0, 0
	b	.LBB2_21
.LBB2_17:
	beqz	$a1, .LBB2_20
# %bb.18:
	beqz	$a0, .LBB2_20
# %bb.19:
	pcalau12i	$a0, %got_pc_hi20(commonIP)
	ld.d	$a0, $a0, %got_pc_lo12(commonIP)
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(FreeIntMtx)
	jirl	$ra, $ra, 0
	ld.w	$s2, $fp, %pc_lo12(R__align.orlgth1)
	ld.w	$a1, $s1, 0
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	ld.w	$s0, $a0, %pc_lo12(R__align.orlgth2)
	ld.w	$a0, $s3, 0
.LBB2_20:
	slt	$a2, $a1, $s2
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $s2, $a2
	or	$fp, $a2, $a1
	slt	$a1, $a0, $s0
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s0, $a1
	or	$s0, $a1, $a0
	addi.w	$a0, $fp, 10
	addi.w	$a1, $s0, 10
	pcaddu18i	$ra, %call36(AllocateIntMtx)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(commonIP)
	ld.d	$a1, $a1, %got_pc_lo12(commonIP)
	st.d	$a0, $a1, 0
	st.w	$fp, $s1, 0
	st.w	$s0, $s3, 0
.LBB2_21:
	ld.d	$a1, $sp, 464                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(R__align.cpmx1)
	movgr2fr.w	$fs0, $s4
	pcalau12i	$s1, %pc_hi20(R__align.ijp)
	st.d	$a0, $s1, %pc_lo12(R__align.ijp)
	ld.d	$s0, $sp, 128                   # 8-byte Folded Reload
	move	$a0, $s0
	ld.d	$s3, $sp, 304                   # 8-byte Folded Reload
	move	$a2, $s3
	ld.d	$s4, $sp, 72                    # 8-byte Folded Reload
	move	$a3, $s4
	ld.d	$fp, $sp, 112                   # 8-byte Folded Reload
	move	$a4, $fp
	pcaddu18i	$ra, %call36(cpmx_calc_new)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 456                   # 8-byte Folded Reload
	ld.d	$a1, $a0, %pc_lo12(R__align.cpmx2)
	move	$a0, $s7
	ld.d	$s5, $sp, 312                   # 8-byte Folded Reload
	move	$a2, $s5
	ld.d	$s2, $sp, 472                   # 8-byte Folded Reload
	move	$a3, $s2
	move	$a4, $s6
	pcaddu18i	$ra, %call36(cpmx_calc_new)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 352                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(R__align.ogcp1g)
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	bnez	$s8, .LBB2_23
# %bb.22:
	move	$a1, $fp
	move	$a2, $s0
	move	$a3, $s3
	move	$a4, $s4
	pcaddu18i	$ra, %call36(st_OpeningGapCount)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 344                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(R__align.ogcp2g)
	move	$a1, $s6
	move	$a2, $s7
	move	$a3, $s5
	move	$a4, $s2
	pcaddu18i	$ra, %call36(st_OpeningGapCount)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 480                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(R__align.fgcp1g)
	move	$a1, $fp
	move	$a2, $s0
	move	$a3, $s3
	move	$a4, $s4
	pcaddu18i	$ra, %call36(st_FinalGapCount_zure)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 360                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(R__align.fgcp2g)
	move	$a1, $s6
	move	$a2, $s7
	move	$a3, $s5
	move	$a4, $s2
	pcaddu18i	$ra, %call36(st_FinalGapCount_zure)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 336                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(R__align.digf1)
	move	$a1, $fp
	move	$a2, $s0
	move	$a3, $s3
	move	$a4, $s4
	pcaddu18i	$ra, %call36(getdigapfreq_st)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 296                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(R__align.digf2)
	move	$a1, $s6
	move	$a2, $s7
	move	$a3, $s5
	move	$a4, $s2
	pcaddu18i	$ra, %call36(getdigapfreq_st)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 320                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(R__align.diaf1)
	move	$a1, $fp
	move	$a2, $s0
	move	$a3, $s3
	move	$a4, $s4
	pcaddu18i	$ra, %call36(getdiaminofreq_x)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 288                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(R__align.diaf2)
	move	$a1, $s6
	move	$a2, $s7
	move	$a3, $s5
	move	$a4, $s2
	pcaddu18i	$ra, %call36(getdiaminofreq_x)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 368                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(R__align.gapf1)
	move	$a1, $fp
	move	$a2, $s0
	move	$a3, $s3
	move	$a4, $s4
	pcaddu18i	$ra, %call36(getgapfreq)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 376                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(R__align.gapf2)
	move	$a1, $s6
	move	$a2, $s7
	move	$a3, $s5
	move	$a4, $s2
	pcaddu18i	$ra, %call36(getgapfreq)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(R__align.gapz1)
	move	$a1, $fp
	move	$a2, $s0
	move	$a3, $s3
	move	$a4, $s4
	pcaddu18i	$ra, %call36(getgapfreq_zure)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 280                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(R__align.gapz2)
	move	$a1, $s6
	move	$a2, $s7
	move	$a3, $s5
	move	$a4, $s2
	pcaddu18i	$ra, %call36(getgapfreq_zure)
	jirl	$ra, $ra, 0
	b	.LBB2_24
.LBB2_23:
	ld.d	$a1, $sp, 624
	st.d	$a1, $sp, 328                   # 8-byte Folded Spill
	ld.d	$s0, $sp, 616
	ld.d	$s7, $sp, 608
	move	$a1, $fp
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	move	$a3, $s3
	move	$a4, $s4
	move	$a5, $s8
	move	$a6, $s0
	pcaddu18i	$ra, %call36(new_OpeningGapCount_zure)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 344                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(R__align.ogcp2g)
	move	$a1, $s6
	ld.d	$a2, $sp, 120                   # 8-byte Folded Reload
	move	$a3, $s5
	move	$a4, $s2
	move	$a5, $s7
	ld.d	$s1, $sp, 328                   # 8-byte Folded Reload
	move	$a6, $s1
	pcaddu18i	$ra, %call36(new_OpeningGapCount_zure)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 480                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(R__align.fgcp1g)
	move	$a1, $fp
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	move	$a3, $s3
	move	$a4, $s4
	move	$a5, $s8
	move	$a6, $s0
	pcaddu18i	$ra, %call36(new_FinalGapCount_zure)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 360                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(R__align.fgcp2g)
	move	$a1, $s6
	ld.d	$a2, $sp, 120                   # 8-byte Folded Reload
	move	$a3, $s5
	move	$a4, $s2
	move	$a5, $s7
	move	$a6, $s1
	pcaddu18i	$ra, %call36(new_FinalGapCount_zure)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 336                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(R__align.digf1)
	move	$a1, $fp
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	move	$a3, $s3
	move	$a4, $s4
	move	$a5, $s8
	move	$a6, $s0
	pcaddu18i	$ra, %call36(getdigapfreq_part)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 296                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(R__align.digf2)
	move	$a1, $s6
	ld.d	$a2, $sp, 120                   # 8-byte Folded Reload
	move	$a3, $s5
	move	$a4, $s2
	move	$a5, $s7
	move	$a6, $s1
	pcaddu18i	$ra, %call36(getdigapfreq_part)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 320                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(R__align.diaf1)
	move	$a1, $fp
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	move	$a3, $s3
	move	$a4, $s4
	move	$a5, $s8
	move	$a6, $s0
	pcaddu18i	$ra, %call36(getdiaminofreq_part)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 288                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(R__align.diaf2)
	move	$a1, $s6
	ld.d	$a2, $sp, 120                   # 8-byte Folded Reload
	move	$a3, $s5
	move	$a4, $s2
	move	$a5, $s7
	ld.d	$s0, $sp, 128                   # 8-byte Folded Reload
	move	$a6, $s1
	ld.d	$s1, $sp, 120                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(getdiaminofreq_part)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 368                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(R__align.gapf1)
	move	$a1, $fp
	move	$a2, $s0
	move	$a3, $s3
	move	$a4, $s4
	pcaddu18i	$ra, %call36(getgapfreq)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 376                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(R__align.gapf2)
	move	$a1, $s6
	move	$a2, $s1
	move	$a3, $s5
	move	$a4, $s2
	pcaddu18i	$ra, %call36(getgapfreq)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(R__align.gapz1)
	move	$a1, $fp
	move	$a2, $s0
	move	$a3, $s3
	move	$a4, $s4
	move	$a5, $s8
	pcaddu18i	$ra, %call36(getgapfreq_zure_part)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 280                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(R__align.gapz2)
	move	$a1, $s6
	move	$a2, $s1
	move	$a3, $s5
	move	$a4, $s2
	move	$a5, $s8
	pcaddu18i	$ra, %call36(getgapfreq_zure_part)
	jirl	$ra, $ra, 0
.LBB2_24:
	ld.d	$s5, $sp, 40                    # 8-byte Folded Reload
	move	$s0, $s4
	ld.d	$s6, $sp, 216                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 448                   # 8-byte Folded Reload
	ld.d	$s8, $a0, %pc_lo12(R__align.w1)
	ld.d	$a0, $sp, 416                   # 8-byte Folded Reload
	ld.d	$s3, $a0, %pc_lo12(R__align.w2)
	ld.d	$a0, $sp, 400                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(R__align.initverticalw)
	ld.d	$a1, $sp, 456                   # 8-byte Folded Reload
	ld.d	$s1, $a1, %pc_lo12(R__align.cpmx2)
	ld.d	$a1, $sp, 464                   # 8-byte Folded Reload
	ld.d	$s2, $a1, %pc_lo12(R__align.cpmx1)
	ld.d	$a1, $sp, 392                   # 8-byte Folded Reload
	ld.d	$s4, $a1, %pc_lo12(R__align.floatwork)
	ld.d	$a1, $sp, 384                   # 8-byte Folded Reload
	ld.d	$s7, $a1, %pc_lo12(R__align.intwork)
	ffint.s.w	$fa0, $fs0
	xvst	$xr0, $sp, 416                  # 32-byte Folded Spill
	ori	$a7, $zero, 1
	ori	$fp, $zero, 1
	st.d	$a0, $sp, 448                   # 8-byte Folded Spill
	move	$a1, $s1
	move	$a2, $s2
	move	$a3, $zero
	move	$a4, $s0
	move	$a5, $s4
	move	$a6, $s7
	pcaddu18i	$ra, %call36(match_calc)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(impmtx)
	st.d	$a0, $sp, 176                   # 8-byte Folded Spill
	slli.d	$a1, $s6, 32
	pcalau12i	$a0, %pc_hi20(.LCPI2_2)
	st.d	$a0, $sp, 328                   # 8-byte Folded Spill
	st.d	$s1, $sp, 464                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	st.d	$s2, $sp, 456                   # 8-byte Folded Spill
	st.d	$a1, $sp, 256                   # 8-byte Folded Spill
	bnez	$a0, .LBB2_26
# %bb.25:                               # %.critedge
	ori	$a7, $zero, 1
	move	$a0, $s8
	move	$a1, $s2
	move	$a2, $s1
	move	$a3, $zero
	ld.d	$fp, $sp, 472                   # 8-byte Folded Reload
	move	$a4, $fp
	move	$a5, $s4
	move	$a6, $s7
	pcaddu18i	$ra, %call36(match_calc)
	jirl	$ra, $ra, 0
	move	$t1, $fp
	move	$t3, $s8
	ld.d	$t7, $sp, 448                   # 8-byte Folded Reload
	move	$t8, $s3
	ld.d	$s1, $sp, 80                    # 8-byte Folded Reload
	move	$s2, $s4
	xvld	$xr10, $sp, 416                 # 32-byte Folded Reload
	move	$s4, $s5
	move	$t4, $s0
	ld.d	$s0, $sp, 120                   # 8-byte Folded Reload
	b	.LBB2_47
.LBB2_26:
	move	$s2, $s4
	ld.d	$a4, $sp, 472                   # 8-byte Folded Reload
	move	$s4, $s5
	move	$s5, $s0
	blt	$s0, $fp, .LBB2_29
# %bb.27:                               # %.lr.ph.i
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(impmtx)
	bstrpick.d	$a1, $s4, 30, 0
	ld.d	$a2, $sp, 448                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB2_28:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $a0, 0
	fld.s	$fa0, $a3, 0
	fld.s	$fa1, $a2, 0
	fadd.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $a2, 0
	addi.d	$a2, $a2, 4
	addi.d	$a1, $a1, -1
	addi.d	$a0, $a0, 8
	bnez	$a1, .LBB2_28
.LBB2_29:                               # %imp_match_out_vead_tateR.exit
	ori	$a7, $zero, 1
	ori	$fp, $zero, 1
	move	$a0, $s8
	ld.d	$a1, $sp, 456                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 464                   # 8-byte Folded Reload
	move	$a3, $zero
	move	$a5, $s2
	move	$a6, $s7
	pcaddu18i	$ra, %call36(match_calc)
	jirl	$ra, $ra, 0
	ld.d	$t1, $sp, 472                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 120                   # 8-byte Folded Reload
	bnez	$t1, .LBB2_31
# %bb.30:                               # %imp_match_out_veadR.exit.thread
	pcalau12i	$a0, %got_pc_hi20(outgap)
	ld.d	$a0, $a0, %got_pc_lo12(outgap)
	ld.w	$a0, $a0, 0
	move	$t3, $s8
	ld.d	$t7, $sp, 448                   # 8-byte Folded Reload
	move	$t8, $s3
	xvld	$xr10, $sp, 416                 # 32-byte Folded Reload
	move	$t4, $s5
	move	$s1, $a5
	beq	$a0, $fp, .LBB2_48
	b	.LBB2_60
.LBB2_31:                               # %iter.check
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(impmtx)
	ld.d	$a1, $a0, 0
	bstrpick.d	$a0, $s6, 31, 0
	ori	$a2, $zero, 4
	ld.d	$t7, $sp, 448                   # 8-byte Folded Reload
	move	$t8, $s3
	xvld	$xr10, $sp, 416                 # 32-byte Folded Reload
	move	$t4, $s5
	bgeu	$a0, $a2, .LBB2_33
# %bb.32:
	move	$a2, $a1
	move	$a3, $s6
	move	$t3, $s8
	move	$a4, $s8
	move	$s1, $a5
	b	.LBB2_46
.LBB2_33:                               # %vector.memcheck
	addi.w	$a2, $zero, -4
	lu32i.d	$a2, 3
	alsl.d	$a2, $s6, $a2, 2
	bstrpick.d	$a2, $a2, 33, 2
	slli.d	$a2, $a2, 2
	addi.d	$a2, $a2, 4
	add.d	$a3, $a1, $a2
	move	$t3, $s8
	move	$s1, $a5
	bgeu	$s8, $a3, .LBB2_36
# %bb.34:                               # %vector.memcheck
	add.d	$a2, $t3, $a2
	bgeu	$a1, $a2, .LBB2_36
# %bb.35:
	move	$a2, $a1
	move	$a3, $s6
	move	$a4, $t3
	b	.LBB2_46
.LBB2_36:                               # %vector.main.loop.iter.check
	ori	$a2, $zero, 16
	bgeu	$a0, $a2, .LBB2_41
# %bb.37:
	move	$a5, $zero
.LBB2_38:                               # %vec.epilog.ph
	bstrpick.d	$a4, $s6, 31, 2
	slli.d	$a6, $a4, 2
	alsl.d	$a2, $a4, $a1, 4
	andi	$a3, $s6, 3
	alsl.d	$a4, $a4, $t3, 4
	alsl.d	$a7, $a5, $t3, 2
	alsl.d	$a1, $a5, $a1, 2
	sub.d	$a5, $a5, $a6
	.p2align	4, , 16
.LBB2_39:                               # %vec.epilog.vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a1, 0
	vld	$vr1, $a7, 0
	vfadd.s	$vr0, $vr0, $vr1
	vst	$vr0, $a7, 0
	addi.d	$a7, $a7, 16
	addi.d	$a5, $a5, 4
	addi.d	$a1, $a1, 16
	bnez	$a5, .LBB2_39
# %bb.40:                               # %vec.epilog.middle.block
	bne	$a0, $a6, .LBB2_46
	b	.LBB2_47
.LBB2_41:                               # %vector.ph
	bstrpick.d	$a2, $s6, 31, 4
	slli.d	$a5, $a2, 4
	addi.d	$a2, $t3, 32
	addi.d	$a3, $a1, 32
	move	$a4, $a5
	.p2align	4, , 16
.LBB2_42:                               # %vector.body
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
	bnez	$a4, .LBB2_42
# %bb.43:                               # %middle.block
	beq	$a0, $a5, .LBB2_47
# %bb.44:                               # %vec.epilog.iter.check
	andi	$a2, $s6, 12
	bnez	$a2, .LBB2_38
# %bb.45:
	alsl.d	$a2, $a5, $a1, 2
	sub.d	$a3, $s6, $a5
	alsl.d	$a4, $a5, $t3, 2
	.p2align	4, , 16
.LBB2_46:                               # %.lr.ph.i506
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $a2, 0
	fld.s	$fa1, $a4, 0
	addi.w	$a3, $a3, -1
	addi.d	$a2, $a2, 4
	addi.d	$a0, $a4, 4
	fadd.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $a4, 0
	move	$a4, $a0
	bnez	$a3, .LBB2_46
.LBB2_47:                               # %imp_match_out_veadR.exit
	pcalau12i	$a0, %got_pc_hi20(outgap)
	ld.d	$a0, $a0, %got_pc_lo12(outgap)
	ld.w	$a1, $a0, 0
	ori	$a0, $zero, 1
	bne	$a1, $a0, .LBB2_53
.LBB2_48:
	ld.d	$a0, $sp, 352                   # 8-byte Folded Reload
	ld.d	$a2, $a0, %pc_lo12(R__align.ogcp1g)
	ld.d	$a0, $sp, 344                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(R__align.ogcp2g)
	fld.s	$fa0, $a2, 0
	fld.s	$fa1, $a0, 0
	fcvt.d.s	$fa2, $fa0
	fcvt.d.s	$fa1, $fa1
	vldi	$vr3, -912
	fsub.d	$fa0, $fa3, $fa1
	fmul.d	$fa4, $fa0, $fa2
	fcvt.d.s	$fa0, $ft2
	fmul.d	$fa4, $fa4, $fa0
	vldi	$vr5, -928
	movgr2fr.d	$fa6, $zero
	fmadd.d	$fa4, $fa4, $fa5, $fa6
	fcvt.s.d	$fa4, $fa4
	fsub.d	$fa2, $fa3, $fa2
	fmul.d	$fa1, $fa2, $fa1
	ld.d	$a1, $sp, 480                   # 8-byte Folded Reload
	ld.d	$a3, $a1, %pc_lo12(R__align.fgcp1g)
	ld.d	$a1, $sp, 360                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(R__align.fgcp2g)
	fmul.d	$fa1, $fa1, $fa0
	fcvt.d.s	$fa2, $fa4
	fld.s	$fa4, $a3, 0
	fld.s	$fa6, $a1, 0
	fmadd.d	$fa1, $fa1, $fa5, $fa2
	fcvt.s.d	$fa1, $fa1
	fcvt.d.s	$fa2, $fa4
	fcvt.d.s	$fa4, $fa6
	fsub.d	$fa6, $fa3, $fa4
	fmul.d	$fa6, $fa6, $fa2
	fmul.d	$fa6, $fa6, $fa0
	fcvt.d.s	$fa1, $fa1
	fmadd.d	$fa1, $fa6, $fa5, $fa1
	fcvt.s.d	$fa1, $fa1
	fsub.d	$fa2, $fa3, $fa2
	fmul.d	$fa2, $fa2, $fa4
	fmul.d	$fa2, $fa2, $fa0
	fld.s	$fa3, $t7, 0
	fcvt.d.s	$fa1, $fa1
	fmadd.d	$fa1, $fa2, $fa5, $fa1
	fcvt.s.d	$fa1, $fa1
	fadd.s	$fa2, $fa3, $fa1
	fst.s	$fa2, $t7, 0
	fld.s	$fa2, $t3, 0
	fadd.s	$fa1, $fa2, $fa1
	ori	$a4, $zero, 1
	fst.s	$fa1, $t3, 0
	blt	$t4, $a4, .LBB2_51
# %bb.49:                               # %.lr.ph603
	ld.d	$a4, $sp, 280                   # 8-byte Folded Reload
	ld.d	$a4, $a4, %pc_lo12(R__align.gapz2)
	ld.d	$a5, $sp, 336                   # 8-byte Folded Reload
	ld.d	$a5, $a5, %pc_lo12(R__align.digf1)
	ld.d	$a6, $sp, 320                   # 8-byte Folded Reload
	ld.d	$a6, $a6, %pc_lo12(R__align.diaf1)
	addi.d	$a7, $s4, 1
	bstrpick.d	$a7, $a7, 31, 0
	addi.d	$a7, $a7, -1
	movgr2fr.w	$fa2, $zero
	ori	$t0, $zero, 4
	vldi	$vr1, -912
	vldi	$vr3, -928
	.p2align	4, , 16
.LBB2_50:                               # =>This Inner Loop Header: Depth=1
	fld.s	$fa4, $a4, 0
	fld.s	$fa5, $a2, 0
	fcvt.d.s	$fa4, $fa4
	fsub.d	$fa6, $fa1, $fa4
	fld.s	$fa7, $a5, 0
	fcvt.d.s	$fa5, $fa5
	fld.s	$ft0, $a6, 0
	fsub.d	$fa5, $fa1, $fa5
	fcvt.d.s	$fa7, $fa7
	fsub.d	$fa7, $fa1, $fa7
	fcvt.d.s	$ft0, $ft0
	fsub.d	$fa7, $fa7, $ft0
	fmul.d	$fa4, $fa7, $fa4
	fmadd.d	$fa4, $fa6, $fa5, $fa4
	fldx.s	$fa5, $t7, $t0
	fmul.d	$fa4, $fa4, $fa3
	fmul.d	$fa4, $fa4, $fa0
	fcvt.s.d	$fa4, $fa4
	fadd.s	$fa4, $fa5, $fa4
	fstx.s	$fa4, $t7, $t0
	fld.s	$fa5, $a4, 4
	fldx.s	$fa6, $a3, $t0
	fldx.s	$fa7, $a2, $t0
	fcvt.d.s	$fa5, $fa5
	fcvt.d.s	$fa6, $fa6
	fsub.d	$fa6, $fa1, $fa6
	fcvt.d.s	$fa7, $fa7
	fldx.s	$ft0, $a5, $t0
	fadd.d	$fa6, $fa6, $fa7
	fldx.s	$fa7, $a6, $t0
	fsub.d	$ft1, $fa1, $fa5
	fcvt.d.s	$ft0, $ft0
	fsub.d	$ft0, $fa1, $ft0
	fcvt.d.s	$fa7, $fa7
	fsub.d	$fa7, $ft0, $fa7
	fmul.d	$fa5, $fa7, $fa5
	fmadd.d	$fa5, $ft1, $fa6, $fa5
	fmul.d	$fa5, $fa5, $fa3
	fmul.d	$fa5, $fa5, $fa0
	fcvt.s.d	$fa5, $fa5
	fadd.s	$fa4, $fa4, $fa5
	fstx.s	$fa4, $t7, $t0
	fldx.s	$fa5, $a2, $t0
	fldx.s	$fa6, $a3, $t0
	fadd.s	$fa5, $fa5, $fa6
	fmul.s	$fa5, $fa5, $ft2
	fcvt.d.s	$fa5, $fa5
	fcvt.d.s	$fa2, $fa2
	fmadd.d	$fa2, $fa5, $fa3, $fa2
	fcvt.s.d	$fa2, $fa2
	fcvt.d.s	$fa5, $fa2
	fmul.s	$fa6, $fa6, $ft2
	fcvt.d.s	$fa6, $fa6
	fneg.d	$fa6, $fa6
	fmadd.d	$fa5, $fa6, $fa3, $fa5
	fcvt.d.s	$fa4, $fa4
	fadd.d	$fa4, $fa5, $fa4
	fcvt.s.d	$fa4, $fa4
	fstx.s	$fa4, $t7, $t0
	addi.d	$a7, $a7, -1
	addi.d	$t0, $t0, 4
	bnez	$a7, .LBB2_50
.LBB2_51:                               # %.preheader575
	bgtz	$t1, .LBB2_70
# %bb.52:                               # %.loopexit576.thread
	move	$a4, $t1
	ld.d	$a0, $sp, 408                   # 8-byte Folded Reload
	ld.d	$a7, $a0, %pc_lo12(R__align.m)
	st.w	$zero, $a7, 0
	b	.LBB2_68
.LBB2_53:                               # %.preheader579
	blt	$t1, $a0, .LBB2_60
# %bb.54:                               # %.lr.ph595
	pcalau12i	$a0, %got_pc_hi20(offset)
	ld.d	$a0, $a0, %got_pc_lo12(offset)
	ld.w	$a0, $a0, 0
	addi.d	$a1, $s6, 1
	bstrpick.d	$a1, $a1, 31, 0
	addi.d	$a2, $a1, -1
	ori	$a4, $zero, 8
	ori	$a3, $zero, 1
	bltu	$a2, $a4, .LBB2_58
# %bb.55:                               # %vector.ph823
	move	$a4, $a2
	bstrins.d	$a4, $zero, 2, 0
	ori	$a5, $zero, 1
	move	$a3, $a2
	bstrins.d	$a3, $a5, 2, 0
	xvreplgr2vr.w	$xr0, $a0
	pcalau12i	$a5, %pc_hi20(.LCPI2_1)
	xvld	$xr1, $a5, %pc_lo12(.LCPI2_1)
	addi.d	$a5, $t3, 4
	lu52i.d	$a6, $zero, -1026
	xvreplgr2vr.d	$xr2, $a6
	move	$a6, $a4
	.p2align	4, , 16
.LBB2_56:                               # %vector.body826
                                        # =>This Inner Loop Header: Depth=1
	xvmul.w	$xr3, $xr0, $xr1
	xvpermi.q	$xr4, $xr3, 1
	vext2xv.d.w	$xr4, $xr4
	xvffint.d.l	$xr4, $xr4
	vext2xv.d.w	$xr3, $xr3
	xvld	$xr5, $a5, 0
	xvffint.d.l	$xr3, $xr3
	xvfmul.d	$xr3, $xr3, $xr2
	xvfmul.d	$xr4, $xr4, $xr2
	xvpermi.q	$xr6, $xr5, 1
	vreplvei.w	$vr7, $vr6, 1
	fcvt.d.s	$fa7, $fa7
	vreplvei.w	$vr8, $vr6, 0
	fcvt.d.s	$ft0, $ft0
	xvinsve0.d	$xr8, $xr7, 1
	vreplvei.w	$vr7, $vr6, 2
	fcvt.d.s	$fa7, $fa7
	xvinsve0.d	$xr8, $xr7, 2
	vreplvei.w	$vr6, $vr6, 3
	fcvt.d.s	$fa6, $fa6
	xvinsve0.d	$xr8, $xr6, 3
	vreplvei.w	$vr6, $vr5, 1
	fcvt.d.s	$fa6, $fa6
	vreplvei.w	$vr7, $vr5, 0
	fcvt.d.s	$fa7, $fa7
	xvinsve0.d	$xr7, $xr6, 1
	vreplvei.w	$vr6, $vr5, 2
	fcvt.d.s	$fa6, $fa6
	xvinsve0.d	$xr7, $xr6, 2
	vreplvei.w	$vr5, $vr5, 3
	fcvt.d.s	$fa5, $fa5
	xvinsve0.d	$xr7, $xr5, 3
	xvfadd.d	$xr4, $xr8, $xr4
	xvfadd.d	$xr3, $xr7, $xr3
	xvpickve.d	$xr5, $xr3, 1
	fcvt.s.d	$fa5, $fa5
	xvpickve.d	$xr6, $xr3, 0
	fcvt.s.d	$fa6, $fa6
	xvinsve0.w	$xr6, $xr5, 1
	xvpickve.d	$xr5, $xr3, 2
	fcvt.s.d	$fa5, $fa5
	xvinsve0.w	$xr6, $xr5, 2
	xvpickve.d	$xr3, $xr3, 3
	fcvt.s.d	$fa3, $fa3
	xvinsve0.w	$xr6, $xr3, 3
	xvpickve.d	$xr3, $xr4, 0
	fcvt.s.d	$fa3, $fa3
	xvinsve0.w	$xr6, $xr3, 4
	xvpickve.d	$xr3, $xr4, 1
	fcvt.s.d	$fa3, $fa3
	xvinsve0.w	$xr6, $xr3, 5
	xvpickve.d	$xr3, $xr4, 2
	fcvt.s.d	$fa3, $fa3
	xvinsve0.w	$xr6, $xr3, 6
	xvpickve.d	$xr3, $xr4, 3
	fcvt.s.d	$fa3, $fa3
	xvinsve0.w	$xr6, $xr3, 7
	xvst	$xr6, $a5, 0
	xvaddi.wu	$xr1, $xr1, 8
	addi.d	$a6, $a6, -8
	addi.d	$a5, $a5, 32
	bnez	$a6, .LBB2_56
# %bb.57:                               # %middle.block831
	beq	$a2, $a4, .LBB2_60
.LBB2_58:                               # %scalar.ph.preheader
	mul.d	$a2, $a0, $a3
	alsl.d	$a4, $a3, $t3, 2
	sub.d	$a1, $a1, $a3
	vldi	$vr0, -800
	.p2align	4, , 16
.LBB2_59:                               # %scalar.ph
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
	bnez	$a1, .LBB2_59
.LBB2_60:                               # %.preheader577
	ori	$a1, $zero, 1
	blt	$t4, $a1, .LBB2_67
# %bb.61:                               # %.lr.ph598
	pcalau12i	$a0, %got_pc_hi20(offset)
	ld.d	$a0, $a0, %got_pc_lo12(offset)
	ld.w	$a0, $a0, 0
	addi.d	$a2, $s4, 1
	bstrpick.d	$a2, $a2, 31, 0
	addi.d	$a3, $a2, -1
	ori	$a4, $zero, 8
	bltu	$a3, $a4, .LBB2_65
# %bb.62:                               # %vector.ph836
	move	$a4, $a3
	bstrins.d	$a4, $zero, 2, 0
	ori	$a5, $zero, 1
	move	$a1, $a3
	bstrins.d	$a1, $a5, 2, 0
	xvreplgr2vr.w	$xr0, $a0
	pcalau12i	$a5, %pc_hi20(.LCPI2_1)
	xvld	$xr1, $a5, %pc_lo12(.LCPI2_1)
	addi.d	$a5, $t7, 4
	lu52i.d	$a6, $zero, -1026
	xvreplgr2vr.d	$xr2, $a6
	move	$a6, $a4
	.p2align	4, , 16
.LBB2_63:                               # %vector.body841
                                        # =>This Inner Loop Header: Depth=1
	xvmul.w	$xr3, $xr0, $xr1
	xvpermi.q	$xr4, $xr3, 1
	vext2xv.d.w	$xr4, $xr4
	xvffint.d.l	$xr4, $xr4
	vext2xv.d.w	$xr3, $xr3
	xvld	$xr5, $a5, 0
	xvffint.d.l	$xr3, $xr3
	xvfmul.d	$xr3, $xr3, $xr2
	xvfmul.d	$xr4, $xr4, $xr2
	xvpermi.q	$xr6, $xr5, 1
	vreplvei.w	$vr7, $vr6, 1
	fcvt.d.s	$fa7, $fa7
	vreplvei.w	$vr8, $vr6, 0
	fcvt.d.s	$ft0, $ft0
	xvinsve0.d	$xr8, $xr7, 1
	vreplvei.w	$vr7, $vr6, 2
	fcvt.d.s	$fa7, $fa7
	xvinsve0.d	$xr8, $xr7, 2
	vreplvei.w	$vr6, $vr6, 3
	fcvt.d.s	$fa6, $fa6
	xvinsve0.d	$xr8, $xr6, 3
	vreplvei.w	$vr6, $vr5, 1
	fcvt.d.s	$fa6, $fa6
	vreplvei.w	$vr7, $vr5, 0
	fcvt.d.s	$fa7, $fa7
	xvinsve0.d	$xr7, $xr6, 1
	vreplvei.w	$vr6, $vr5, 2
	fcvt.d.s	$fa6, $fa6
	xvinsve0.d	$xr7, $xr6, 2
	vreplvei.w	$vr5, $vr5, 3
	fcvt.d.s	$fa5, $fa5
	xvinsve0.d	$xr7, $xr5, 3
	xvfadd.d	$xr4, $xr8, $xr4
	xvfadd.d	$xr3, $xr7, $xr3
	xvpickve.d	$xr5, $xr3, 1
	fcvt.s.d	$fa5, $fa5
	xvpickve.d	$xr6, $xr3, 0
	fcvt.s.d	$fa6, $fa6
	xvinsve0.w	$xr6, $xr5, 1
	xvpickve.d	$xr5, $xr3, 2
	fcvt.s.d	$fa5, $fa5
	xvinsve0.w	$xr6, $xr5, 2
	xvpickve.d	$xr3, $xr3, 3
	fcvt.s.d	$fa3, $fa3
	xvinsve0.w	$xr6, $xr3, 3
	xvpickve.d	$xr3, $xr4, 0
	fcvt.s.d	$fa3, $fa3
	xvinsve0.w	$xr6, $xr3, 4
	xvpickve.d	$xr3, $xr4, 1
	fcvt.s.d	$fa3, $fa3
	xvinsve0.w	$xr6, $xr3, 5
	xvpickve.d	$xr3, $xr4, 2
	fcvt.s.d	$fa3, $fa3
	xvinsve0.w	$xr6, $xr3, 6
	xvpickve.d	$xr3, $xr4, 3
	fcvt.s.d	$fa3, $fa3
	xvinsve0.w	$xr6, $xr3, 7
	xvst	$xr6, $a5, 0
	xvaddi.wu	$xr1, $xr1, 8
	addi.d	$a6, $a6, -8
	addi.d	$a5, $a5, 32
	bnez	$a6, .LBB2_63
# %bb.64:                               # %middle.block848
	beq	$a3, $a4, .LBB2_67
.LBB2_65:                               # %scalar.ph834.preheader
	mul.d	$a3, $a0, $a1
	alsl.d	$a4, $a1, $t7, 2
	sub.d	$a1, $a2, $a1
	vldi	$vr0, -800
	.p2align	4, , 16
.LBB2_66:                               # %scalar.ph834
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
	bnez	$a1, .LBB2_66
.LBB2_67:                               # %.loopexit576
	ld.d	$a0, $sp, 408                   # 8-byte Folded Reload
	ld.d	$a7, $a0, %pc_lo12(R__align.m)
	ori	$a0, $zero, 1
	st.w	$zero, $a7, 0
	move	$a4, $t1
	bge	$t1, $a0, .LBB2_73
.LBB2_68:                               # %._crit_edge612
	ori	$a0, $zero, 1
	bnez	$a4, .LBB2_89
# %bb.69:
	movgr2fr.w	$fa0, $zero
	ori	$a1, $zero, 1
	st.d	$a1, $sp, 408                   # 8-byte Folded Spill
	ld.d	$a3, $sp, 464                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 456                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 256                   # 8-byte Folded Reload
	b	.LBB2_91
.LBB2_70:                               # %.lr.ph607
	ld.d	$a2, $sp, 272                   # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(R__align.gapz1)
	ld.d	$a3, $sp, 296                   # 8-byte Folded Reload
	ld.d	$a3, $a3, %pc_lo12(R__align.digf2)
	ld.d	$a4, $sp, 288                   # 8-byte Folded Reload
	ld.d	$a4, $a4, %pc_lo12(R__align.diaf2)
	addi.d	$a5, $s6, 1
	bstrpick.d	$a5, $a5, 31, 0
	addi.d	$a5, $a5, -1
	movgr2fr.w	$fa2, $zero
	ori	$a6, $zero, 4
	vldi	$vr1, -912
	vldi	$vr3, -928
	.p2align	4, , 16
.LBB2_71:                               # =>This Inner Loop Header: Depth=1
	fld.s	$fa4, $a2, 0
	fld.s	$fa5, $a0, 0
	fcvt.d.s	$fa4, $fa4
	fsub.d	$fa6, $fa1, $fa4
	fldx.s	$fa7, $a3, $a6
	fcvt.d.s	$fa5, $fa5
	fldx.s	$ft0, $a4, $a6
	fsub.d	$fa5, $fa1, $fa5
	fcvt.d.s	$fa7, $fa7
	fsub.d	$fa7, $fa1, $fa7
	fcvt.d.s	$ft0, $ft0
	fsub.d	$fa7, $fa7, $ft0
	fmul.d	$fa4, $fa7, $fa4
	fmadd.d	$fa4, $fa6, $fa5, $fa4
	fldx.s	$fa5, $t3, $a6
	fmul.d	$fa4, $fa4, $fa3
	fmul.d	$fa4, $fa4, $fa0
	fcvt.s.d	$fa4, $fa4
	fadd.s	$fa4, $fa5, $fa4
	fstx.s	$fa4, $t3, $a6
	fld.s	$fa5, $a2, 4
	fldx.s	$fa6, $a1, $a6
	fldx.s	$fa7, $a0, $a6
	fcvt.d.s	$fa5, $fa5
	fcvt.d.s	$fa6, $fa6
	fsub.d	$fa6, $fa1, $fa6
	fcvt.d.s	$fa7, $fa7
	fldx.s	$ft0, $a3, $a6
	fadd.d	$fa6, $fa6, $fa7
	fldx.s	$fa7, $a4, $a6
	fsub.d	$ft1, $fa1, $fa5
	fcvt.d.s	$ft0, $ft0
	fsub.d	$ft0, $fa1, $ft0
	fcvt.d.s	$fa7, $fa7
	fsub.d	$fa7, $ft0, $fa7
	fmul.d	$fa5, $fa7, $fa5
	fmadd.d	$fa5, $ft1, $fa6, $fa5
	fmul.d	$fa5, $fa5, $fa3
	fmul.d	$fa5, $fa5, $fa0
	fcvt.s.d	$fa5, $fa5
	fadd.s	$fa4, $fa4, $fa5
	fstx.s	$fa4, $t3, $a6
	fldx.s	$fa5, $a0, $a6
	fldx.s	$fa6, $a1, $a6
	fadd.s	$fa5, $fa5, $fa6
	fmul.s	$fa5, $fa5, $ft2
	fcvt.d.s	$fa5, $fa5
	fcvt.d.s	$fa2, $fa2
	fmadd.d	$fa2, $fa5, $fa3, $fa2
	fcvt.s.d	$fa2, $fa2
	fcvt.d.s	$fa5, $fa2
	fmul.s	$fa6, $fa6, $ft2
	fcvt.d.s	$fa6, $fa6
	fneg.d	$fa6, $fa6
	fmadd.d	$fa5, $fa6, $fa3, $fa5
	fcvt.d.s	$fa4, $fa4
	fadd.d	$fa4, $fa5, $fa4
	fcvt.s.d	$fa4, $fa4
	fstx.s	$fa4, $t3, $a6
	addi.d	$a5, $a5, -1
	addi.d	$a6, $a6, 4
	bnez	$a5, .LBB2_71
# %bb.72:                               # %.loopexit576.thread774
	ld.d	$a0, $sp, 408                   # 8-byte Folded Reload
	ld.d	$a7, $a0, %pc_lo12(R__align.m)
	st.w	$zero, $a7, 0
	move	$a4, $t1
.LBB2_73:                               # %iter.check855
	move	$t2, $a4
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(R__align.mp)
	addi.d	$a1, $s6, 1
	bstrpick.d	$a1, $a1, 31, 0
	addi.d	$a2, $a1, -1
	ori	$a3, $zero, 4
	ori	$a4, $zero, 1
	bltu	$a2, $a3, .LBB2_86
# %bb.74:                               # %vector.memcheck851
	sub.d	$a3, $a7, $t3
	addi.d	$a3, $a3, 4
	ori	$a5, $zero, 64
	bltu	$a3, $a5, .LBB2_86
# %bb.75:                               # %vector.main.loop.iter.check857
	ori	$a4, $zero, 16
	lu12i.w	$a3, 287172
	move	$t6, $a7
	bgeu	$a2, $a4, .LBB2_80
# %bb.76:
	move	$a5, $zero
.LBB2_77:                               # %vec.epilog.ph872
	move	$a6, $a2
	bstrins.d	$a6, $zero, 1, 0
	ori	$a7, $zero, 1
	move	$a4, $a2
	bstrins.d	$a4, $a7, 1, 0
	vreplvei.w	$vr0, $vr10, 0
	addi.d	$a7, $a0, 4
	slli.d	$t0, $a5, 2
	sub.d	$a5, $a5, $a6
	vrepli.b	$vr1, 0
	vreplgr2vr.w	$vr2, $a3
	.p2align	4, , 16
.LBB2_78:                               # %vec.epilog.vector.body880
                                        # =>This Inner Loop Header: Depth=1
	vldx	$vr3, $t3, $t0
	vstx	$vr1, $a7, $t0
	vfmadd.s	$vr3, $vr0, $vr2, $vr3
	add.d	$a3, $t6, $t0
	vst	$vr3, $a3, 4
	addi.d	$a5, $a5, 4
	addi.d	$t0, $t0, 16
	bnez	$a5, .LBB2_78
# %bb.79:                               # %vec.epilog.middle.block885
	move	$a7, $t6
	bne	$a2, $a6, .LBB2_86
	b	.LBB2_88
.LBB2_80:                               # %vector.ph858
	move	$a4, $zero
	move	$a5, $a2
	bstrins.d	$a5, $zero, 3, 0
	xvreplve0.w	$xr0, $xr10
	addi.d	$a6, $a0, 36
	xvrepli.b	$xr1, 0
	xvreplgr2vr.w	$xr2, $a3
	move	$fp, $a7
	move	$a7, $a5
	.p2align	4, , 16
.LBB2_81:                               # %vector.body863
                                        # =>This Inner Loop Header: Depth=1
	add.d	$t0, $a6, $a4
	add.d	$t1, $t3, $a4
	xvldx	$xr3, $t3, $a4
	xvld	$xr4, $t1, 32
	xvst	$xr1, $t0, -32
	xvstx	$xr1, $a6, $a4
	xvfmadd.s	$xr3, $xr0, $xr2, $xr3
	xvfmadd.s	$xr4, $xr0, $xr2, $xr4
	add.d	$t0, $fp, $a4
	xvst	$xr3, $t0, 4
	xvst	$xr4, $t0, 36
	addi.d	$a7, $a7, -16
	addi.d	$a4, $a4, 64
	bnez	$a7, .LBB2_81
# %bb.82:                               # %middle.block868
	bne	$a2, $a5, .LBB2_84
# %bb.83:
	move	$a0, $zero
	move	$a4, $t2
	ld.d	$a3, $sp, 464                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 456                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 256                   # 8-byte Folded Reload
	move	$a7, $t6
	b	.LBB2_90
.LBB2_84:                               # %vec.epilog.iter.check873
	andi	$a4, $a2, 12
	bnez	$a4, .LBB2_77
# %bb.85:
	move	$a7, $t6
	addi.d	$a4, $a5, 1
.LBB2_86:                               # %vec.epilog.scalar.ph871.preheader
	ld.d	$a2, $sp, 328                   # 8-byte Folded Reload
	fld.s	$fa0, $a2, %pc_lo12(.LCPI2_2)
	slli.d	$a2, $a4, 2
	addi.d	$a3, $t3, -4
	sub.d	$a1, $a1, $a4
	.p2align	4, , 16
.LBB2_87:                               # %vec.epilog.scalar.ph871
                                        # =>This Inner Loop Header: Depth=1
	fldx.s	$fa1, $a3, $a2
	stx.w	$zero, $a0, $a2
	fmadd.s	$fa1, $ft2, $fa0, $fa1
	fstx.s	$fa1, $a7, $a2
	addi.d	$a1, $a1, -1
	addi.d	$a2, $a2, 4
	bnez	$a1, .LBB2_87
.LBB2_88:
	move	$a0, $zero
	move	$a4, $t2
.LBB2_89:
	ld.d	$a3, $sp, 464                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 456                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 256                   # 8-byte Folded Reload
.LBB2_90:                               # %._crit_edge612.thread
	ori	$a2, $zero, 0
	lu32i.d	$a2, -1
	add.d	$a2, $a6, $a2
	srai.d	$a2, $a2, 30
	fldx.s	$fa0, $t3, $a2
	st.d	$a0, $sp, 408                   # 8-byte Folded Spill
	move	$a0, $zero
.LBB2_91:
	pcalau12i	$a2, %got_pc_hi20(outgap)
	ld.d	$a2, $a2, %got_pc_lo12(outgap)
	st.d	$a2, $sp, 24                    # 8-byte Folded Spill
	ld.w	$a5, $a2, 0
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	ld.d	$t0, $a2, %pc_lo12(R__align.lastverticalw)
	sltu	$a2, $zero, $a5
	add.w	$t1, $a2, $s4
	ori	$a2, $zero, 2
	st.d	$t0, $sp, 400                   # 8-byte Folded Spill
	fst.s	$fa0, $t0, 0
	st.d	$t1, $sp, 392                   # 8-byte Folded Spill
	blt	$t1, $a2, .LBB2_132
# %bb.92:                               # %.lr.ph633
	st.d	$s7, $sp, 376                   # 8-byte Folded Spill
	st.d	$s2, $sp, 384                   # 8-byte Folded Spill
	sltui	$a2, $s1, 1
	or	$a0, $a2, $a0
	st.d	$a0, $sp, 368                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(impmtx)
	st.d	$a0, $sp, 312                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(R__align.ijp)
	st.d	$a0, $sp, 304                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	ld.d	$t0, $a0, %pc_lo12(R__align.mp)
	ld.d	$a0, $sp, 352                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(R__align.ogcp1g)
	st.d	$a0, $sp, 352                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 344                   # 8-byte Folded Reload
	ld.d	$t1, $a0, %pc_lo12(R__align.ogcp2g)
	fcvt.d.s	$fs1, $ft2
	ld.d	$a0, $sp, 480                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(R__align.fgcp1g)
	st.d	$a0, $sp, 344                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 360                   # 8-byte Folded Reload
	ld.d	$t2, $a0, %pc_lo12(R__align.fgcp2g)
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(R__align.gapz1)
	st.d	$a0, $sp, 272                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 296                   # 8-byte Folded Reload
	ld.d	$t4, $a0, %pc_lo12(R__align.digf2)
	ld.d	$a0, $sp, 288                   # 8-byte Folded Reload
	ld.d	$t6, $a0, %pc_lo12(R__align.diaf2)
	ld.d	$a0, $sp, 280                   # 8-byte Folded Reload
	ld.d	$s3, $a0, %pc_lo12(R__align.gapz2)
	ld.d	$a0, $sp, 336                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(R__align.digf1)
	st.d	$a0, $sp, 240                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 320                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(R__align.diaf1)
	st.d	$a0, $sp, 232                   # 8-byte Folded Spill
	ori	$a0, $zero, 0
	lu32i.d	$a0, -1
	add.d	$a0, $a6, $a0
	srai.d	$a0, $a0, 30
	st.d	$a0, $sp, 360                   # 8-byte Folded Spill
	addi.d	$a0, $s6, 1
	bstrpick.d	$a0, $a0, 31, 0
	bstrpick.d	$a2, $s6, 30, 0
	st.d	$a2, $sp, 224                   # 8-byte Folded Spill
	addi.w	$a2, $s6, -1
	st.d	$a2, $sp, 336                   # 8-byte Folded Spill
	bstrpick.d	$a5, $a2, 31, 0
	slli.d	$a2, $a5, 2
	addi.d	$a2, $a2, 4
	st.d	$a2, $sp, 208                   # 8-byte Folded Spill
	addi.d	$a5, $a5, 1
	bstrpick.d	$a2, $a5, 32, 4
	slli.d	$a6, $a2, 4
	slli.d	$a2, $a2, 6
	st.d	$a2, $sp, 64                    # 8-byte Folded Spill
	st.d	$a6, $sp, 192                   # 8-byte Folded Spill
	sub.d	$a2, $s6, $a6
	st.d	$a2, $sp, 56                    # 8-byte Folded Spill
	andi	$a2, $a5, 12
	st.d	$a2, $sp, 136                   # 8-byte Folded Spill
	st.d	$a5, $sp, 184                   # 8-byte Folded Spill
	bstrpick.d	$a2, $a5, 32, 2
	slli.d	$a5, $a2, 2
	slli.d	$a2, $a2, 4
	st.d	$a2, $sp, 160                   # 8-byte Folded Spill
	sub.d	$a2, $s6, $a5
	st.d	$a2, $sp, 152                   # 8-byte Folded Spill
	st.d	$a5, $sp, 168                   # 8-byte Folded Spill
	sub.d	$a2, $zero, $a5
	st.d	$a2, $sp, 144                   # 8-byte Folded Spill
	addi.d	$a0, $a0, -2
	st.d	$a0, $sp, 200                   # 8-byte Folded Spill
	movgr2fr.w	$fs0, $zero
	st.d	$a7, $sp, 320                   # 8-byte Folded Spill
	addi.d	$fp, $a7, 8
	st.d	$t6, $sp, 256                   # 8-byte Folded Spill
	addi.d	$s0, $t6, 8
	st.d	$t4, $sp, 264                   # 8-byte Folded Spill
	addi.d	$s1, $t4, 8
	st.d	$t2, $sp, 280                   # 8-byte Folded Spill
	addi.d	$s2, $t2, 8
	st.d	$t1, $sp, 288                   # 8-byte Folded Spill
	addi.d	$s6, $t1, 8
	st.d	$s3, $sp, 248                   # 8-byte Folded Spill
	addi.d	$s4, $s3, 12
	st.d	$t0, $sp, 296                   # 8-byte Folded Spill
	addi.d	$s8, $t0, 8
	ori	$s7, $zero, 1
	move	$a2, $a3
	b	.LBB2_94
	.p2align	4, , 16
.LBB2_93:                               # %._crit_edge625
                                        #   in Loop: Header=BB2_94 Depth=1
	ld.d	$a1, $sp, 360                   # 8-byte Folded Reload
	fldx.s	$fa0, $s3, $a1
	addi.d	$s7, $s7, 1
	ld.d	$a1, $sp, 400                   # 8-byte Folded Reload
	fstx.s	$fa0, $a1, $a0
	move	$t3, $s3
	ld.d	$a4, $sp, 472                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 464                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 456                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 392                   # 8-byte Folded Reload
	beq	$s7, $a0, .LBB2_133
.LBB2_94:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_125 Depth 2
                                        #     Child Loop BB2_129 Depth 2
                                        #     Child Loop BB2_99 Depth 2
                                        #     Child Loop BB2_113 Depth 2
	addi.d	$a0, $s7, -1
	st.d	$a0, $sp, 480                   # 8-byte Folded Spill
	slli.d	$a0, $a0, 2
	fldx.s	$fa0, $t7, $a0
	move	$s3, $t8
	move	$s5, $t3
	fst.s	$fa0, $t3, 0
	move	$a0, $t8
	move	$a3, $s7
	ld.d	$a5, $sp, 384                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 376                   # 8-byte Folded Reload
	move	$a7, $zero
	pcaddu18i	$ra, %call36(match_calc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 368                   # 8-byte Folded Reload
	bnez	$a0, .LBB2_100
# %bb.95:                               # %iter.check898
                                        #   in Loop: Header=BB2_94 Depth=1
	slli.d	$a0, $s7, 3
	ld.d	$a1, $sp, 312                   # 8-byte Folded Reload
	ldx.d	$a2, $a1, $a0
	ld.d	$a0, $sp, 336                   # 8-byte Folded Reload
	ori	$a1, $zero, 3
	bltu	$a0, $a1, .LBB2_98
# %bb.96:                               # %vector.memcheck889
                                        #   in Loop: Header=BB2_94 Depth=1
	ld.d	$a1, $sp, 208                   # 8-byte Folded Reload
	add.d	$a0, $a2, $a1
	bgeu	$s3, $a0, .LBB2_122
# %bb.97:                               # %vector.memcheck889
                                        #   in Loop: Header=BB2_94 Depth=1
	add.d	$a0, $s3, $a1
	bgeu	$a2, $a0, .LBB2_122
.LBB2_98:                               #   in Loop: Header=BB2_94 Depth=1
	move	$a0, $a2
	ld.d	$a2, $sp, 216                   # 8-byte Folded Reload
	move	$a1, $s3
	.p2align	4, , 16
.LBB2_99:                               # %.lr.ph.i509
                                        #   Parent Loop BB2_94 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.s	$fa0, $a0, 0
	fld.s	$fa1, $a1, 0
	addi.w	$a2, $a2, -1
	addi.d	$a0, $a0, 4
	addi.d	$a3, $a1, 4
	fadd.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $a1, 0
	move	$a1, $a3
	bnez	$a2, .LBB2_99
.LBB2_100:                              # %imp_match_out_veadR.exit514
                                        #   in Loop: Header=BB2_94 Depth=1
	slli.d	$a0, $s7, 2
	ld.d	$t7, $sp, 448                   # 8-byte Folded Reload
	fldx.s	$fa0, $t7, $a0
	fst.s	$fa0, $s3, 0
	move	$t8, $s5
	xvld	$xr17, $sp, 416                 # 32-byte Folded Reload
	ld.d	$a1, $sp, 408                   # 8-byte Folded Reload
	vldi	$vr18, -912
	vldi	$vr19, -928
	ori	$s5, $zero, 1
	ld.d	$ra, $sp, 480                   # 8-byte Folded Reload
	bnez	$a1, .LBB2_93
# %bb.101:                              # %.lr.ph624
                                        #   in Loop: Header=BB2_94 Depth=1
	fld.s	$fa0, $t8, 0
	ld.d	$a1, $sp, 328                   # 8-byte Folded Reload
	fld.s	$fa1, $a1, %pc_lo12(.LCPI2_2)
	fmadd.s	$fa1, $ft9, $fa1, $fa0
	slli.d	$a1, $s7, 3
	ld.d	$a2, $sp, 352                   # 8-byte Folded Reload
	fldx.s	$fa4, $a2, $a0
	ld.d	$a2, $sp, 288                   # 8-byte Folded Reload
	fld.s	$fa2, $a2, 4
	ld.d	$a2, $sp, 304                   # 8-byte Folded Reload
	ldx.d	$t1, $a2, $a1
	ld.d	$a1, $sp, 272                   # 8-byte Folded Reload
	alsl.d	$a1, $s7, $a1, 2
	fcvt.d.s	$ft2, $fa4
	fcvt.d.s	$fa5, $fa2
	fsub.d	$fa2, $ft10, $fa5
	fmul.d	$fa3, $fa2, $ft2
	fmul.d	$fa3, $fa3, $fs1
	fmul.d	$fa3, $fa3, $ft11
	fcvt.s.d	$fa3, $fa3
	fadd.s	$fa3, $fa0, $fa3
	fsub.d	$fa7, $ft10, $ft2
	fmul.d	$fa6, $fa7, $fa5
	fmul.d	$fa6, $fa6, $fs1
	fmul.d	$ft0, $fa6, $ft11
	ld.d	$a2, $sp, 344                   # 8-byte Folded Reload
	fldx.s	$fa6, $a2, $a0
	ld.d	$a2, $sp, 280                   # 8-byte Folded Reload
	fld.s	$ft3, $a2, 4
	fcvt.s.d	$ft0, $ft0
	fadd.s	$ft0, $fa3, $ft0
	fcvt.d.s	$ft1, $fa6
	fcvt.d.s	$fa3, $ft3
	fsub.d	$ft4, $ft10, $fa3
	fmul.d	$ft3, $ft4, $ft1
	fmul.d	$ft3, $ft3, $fs1
	fmul.d	$ft3, $ft3, $ft11
	fcvt.s.d	$ft3, $ft3
	fadd.s	$ft0, $ft0, $ft3
	fsub.d	$ft3, $ft10, $ft1
	fmul.d	$ft5, $ft3, $fa3
	fmul.d	$ft5, $ft5, $fs1
	fld.s	$ft6, $a1, 4
	fmul.d	$ft5, $ft5, $ft11
	fcvt.s.d	$ft5, $ft5
	fadd.s	$fs0, $ft0, $ft5
	fcvt.d.s	$ft0, $ft6
	ld.d	$a2, $sp, 264                   # 8-byte Folded Reload
	fld.s	$ft5, $a2, 4
	fadd.d	$ft4, $ft4, $fa5
	ld.d	$a2, $sp, 256                   # 8-byte Folded Reload
	fld.s	$fa5, $a2, 4
	fsub.d	$ft6, $ft10, $ft0
	fcvt.d.s	$ft5, $ft5
	fsub.d	$ft5, $ft10, $ft5
	fcvt.d.s	$fa5, $fa5
	fsub.d	$fa5, $ft5, $fa5
	fmul.d	$ft0, $fa5, $ft0
	fmadd.d	$ft0, $ft6, $ft4, $ft0
	fmul.d	$ft0, $ft0, $ft11
	fmul.d	$ft0, $ft0, $fs1
	fcvt.s.d	$ft0, $ft0
	fadd.s	$ft0, $fa1, $ft0
	fcmp.cule.s	$fcc0, $ft0, $fs0
	st.w	$zero, $t1, 4
	bcnez	$fcc0, .LBB2_103
# %bb.102:                              #   in Loop: Header=BB2_94 Depth=1
	addi.w	$a2, $zero, -1
	lu32i.d	$a2, 0
	st.w	$a2, $t1, 4
	fmov.s	$fs0, $ft0
.LBB2_103:                              #   in Loop: Header=BB2_94 Depth=1
	ld.d	$a6, $sp, 248                   # 8-byte Folded Reload
	fld.s	$ft4, $a6, 8
	ld.d	$a2, $sp, 240                   # 8-byte Folded Reload
	alsl.d	$a2, $s7, $a2, 2
	ld.d	$a3, $sp, 232                   # 8-byte Folded Reload
	alsl.d	$a3, $s7, $a3, 2
	fld.s	$ft0, $a1, 0
	fcvt.d.s	$ft4, $ft4
	fld.s	$ft5, $a2, 0
	fadd.d	$ft2, $ft3, $ft2
	fld.s	$ft3, $a3, 0
	fsub.d	$ft6, $ft10, $ft4
	fcvt.d.s	$ft5, $ft5
	fsub.d	$ft5, $ft10, $ft5
	fcvt.d.s	$ft3, $ft3
	fsub.d	$ft3, $ft5, $ft3
	fmul.d	$ft4, $ft3, $ft4
	fmadd.d	$ft4, $ft6, $ft2, $ft4
	ld.d	$a5, $sp, 320                   # 8-byte Folded Reload
	fld.s	$ft2, $a5, 4
	fmul.d	$ft4, $ft4, $ft11
	fmul.d	$ft4, $ft4, $fs1
	fcvt.s.d	$ft4, $ft4
	fadd.s	$ft4, $ft2, $ft4
	fcmp.cule.s	$fcc0, $ft4, $fs0
	bcnez	$fcc0, .LBB2_105
# %bb.104:                              #   in Loop: Header=BB2_94 Depth=1
	ld.d	$a4, $sp, 296                   # 8-byte Folded Reload
	ld.w	$a4, $a4, 4
	sub.d	$a4, $s7, $a4
	st.w	$a4, $t1, 4
	fmov.s	$fs0, $ft4
.LBB2_105:                              #   in Loop: Header=BB2_94 Depth=1
	fld.s	$ft4, $a6, 4
	fcvt.d.s	$ft4, $ft4
	fsub.d	$ft5, $ft10, $ft4
	fadd.d	$fa7, $fa7, $ft1
	fmul.d	$ft1, $ft3, $ft4
	fmadd.d	$fa7, $ft5, $fa7, $ft1
	fmul.d	$fa7, $fa7, $ft11
	fmul.d	$fa7, $fa7, $fs1
	fcvt.s.d	$fa7, $fa7
	fadd.s	$fa7, $fa0, $fa7
	fcmp.cult.s	$fcc0, $fa7, $ft2
	bceqz	$fcc0, .LBB2_108
# %bb.106:                              #   in Loop: Header=BB2_94 Depth=1
	beq	$s7, $s5, .LBB2_109
# %bb.107:                              #   in Loop: Header=BB2_94 Depth=1
	fadd.s	$fa4, $fa4, $fa6
	fmul.s	$fa4, $fa4, $ft9
	fcvt.d.s	$fa4, $fa4
	fcvt.d.s	$fa6, $ft2
	fmadd.d	$fa4, $fa4, $ft11, $fa6
	fcvt.s.d	$fa4, $fa4
	fst.s	$fa4, $a5, 4
	b	.LBB2_109
	.p2align	4, , 16
.LBB2_108:                              #   in Loop: Header=BB2_94 Depth=1
	fst.s	$fa7, $a5, 4
	ld.d	$a4, $sp, 296                   # 8-byte Folded Reload
	st.w	$ra, $a4, 4
.LBB2_109:                              #   in Loop: Header=BB2_94 Depth=1
	fld.s	$fa4, $s3, 4
	fadd.s	$fa4, $fs0, $fa4
	fst.s	$fa4, $s3, 4
	ld.d	$a4, $sp, 224                   # 8-byte Folded Reload
	beq	$a4, $s5, .LBB2_93
# %bb.110:                              # %.peel.next
                                        #   in Loop: Header=BB2_94 Depth=1
	move	$a4, $zero
	move	$t5, $zero
	ld.d	$a5, $sp, 352                   # 8-byte Folded Reload
	alsl.d	$a5, $s7, $a5, 2
	ld.d	$a6, $sp, 344                   # 8-byte Folded Reload
	alsl.d	$a6, $s7, $a6, 2
	fcvt.d.s	$fa4, $ft0
	fsub.d	$fa6, $ft10, $fa4
	fadd.d	$fa2, $fa2, $fa3
	fmul.d	$fa3, $fa5, $fa4
	fmadd.d	$fa2, $fa6, $fa2, $fa3
	fmul.d	$fa2, $fa2, $ft11
	fmul.d	$fa2, $fa2, $fs1
	fcvt.s.d	$fa2, $fa2
	fadd.s	$fa0, $fa0, $fa2
	fcmp.cle.s	$fcc0, $fa1, $fa0
	fsel	$fa0, $fa1, $fa0, $fcc0
	addi.d	$a7, $t8, 4
	addi.d	$t0, $s3, 8
	addi.d	$t1, $t1, 8
	ori	$t2, $zero, 1
	addi.d	$t3, $zero, -2
	ld.d	$t4, $sp, 200                   # 8-byte Folded Reload
	b	.LBB2_113
	.p2align	4, , 16
.LBB2_111:                              #   in Loop: Header=BB2_113 Depth=2
	fstx.s	$fa2, $fp, $a4
	stx.w	$ra, $s8, $a4
.LBB2_112:                              #   in Loop: Header=BB2_113 Depth=2
	fldx.s	$fa1, $t0, $a4
	fadd.s	$fa1, $fs0, $fa1
	fstx.s	$fa1, $t0, $a4
	addi.d	$t2, $t2, 1
	addi.d	$a4, $a4, 4
	addi.d	$t4, $t4, -1
	addi.d	$t3, $t3, -1
	beqz	$t4, .LBB2_93
.LBB2_113:                              #   Parent Loop BB2_94 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.s	$fa1, $a5, 0
	fldx.s	$fa7, $s6, $a4
	fldx.s	$fa2, $a7, $a4
	fcvt.d.s	$fa6, $fa1
	fcvt.d.s	$ft4, $fa7
	fsub.d	$ft1, $ft10, $ft4
	fmul.d	$fa3, $ft1, $fa6
	fmul.d	$fa3, $fa3, $fs1
	fmul.d	$fa3, $fa3, $ft11
	fcvt.s.d	$fa3, $fa3
	fadd.s	$fa5, $fa2, $fa3
	fsub.d	$fa4, $ft10, $fa6
	fmul.d	$fa3, $fa4, $ft4
	fmul.d	$fa3, $fa3, $fs1
	fmul.d	$ft0, $fa3, $ft11
	fld.s	$fa3, $a6, 0
	fldx.s	$ft2, $s2, $a4
	fcvt.s.d	$ft0, $ft0
	fadd.s	$ft0, $fa5, $ft0
	fcvt.d.s	$fa5, $fa3
	fcvt.d.s	$ft3, $ft2
	fsub.d	$ft5, $ft10, $ft3
	fmul.d	$ft6, $ft5, $fa5
	fmul.d	$ft6, $ft6, $fs1
	fmul.d	$ft6, $ft6, $ft11
	fcvt.s.d	$ft6, $ft6
	fadd.s	$ft6, $ft0, $ft6
	fsub.d	$ft0, $ft10, $fa5
	fmul.d	$ft7, $ft0, $ft3
	fmul.d	$ft7, $ft7, $fs1
	fld.s	$ft8, $a1, 4
	fmul.d	$ft7, $ft7, $ft11
	fcvt.s.d	$ft7, $ft7
	fadd.s	$fs0, $ft6, $ft7
	fcvt.d.s	$ft6, $ft8
	fldx.s	$ft7, $s1, $a4
	fadd.d	$ft5, $ft5, $ft4
	fldx.s	$ft4, $s0, $a4
	fsub.d	$ft8, $ft10, $ft6
	fcvt.d.s	$ft7, $ft7
	fsub.d	$ft7, $ft10, $ft7
	fcvt.d.s	$ft4, $ft4
	fsub.d	$ft4, $ft7, $ft4
	fmul.d	$ft6, $ft4, $ft6
	fmadd.d	$ft5, $ft8, $ft5, $ft6
	fmul.d	$ft5, $ft5, $ft11
	fmul.d	$ft5, $ft5, $fs1
	fcvt.s.d	$ft5, $ft5
	fadd.s	$ft5, $fa0, $ft5
	fcmp.cule.s	$fcc0, $ft5, $fs0
	stx.w	$zero, $t1, $a4
	bcnez	$fcc0, .LBB2_115
# %bb.114:                              #   in Loop: Header=BB2_113 Depth=2
	add.d	$t6, $t5, $t3
	stx.w	$t6, $t1, $a4
	fmov.s	$fs0, $ft5
.LBB2_115:                              #   in Loop: Header=BB2_113 Depth=2
	fld.s	$ft5, $a1, 0
	fcvt.d.s	$ft5, $ft5
	fsub.d	$ft6, $ft10, $ft5
	fadd.d	$ft1, $ft1, $ft3
	fmul.d	$ft3, $ft4, $ft5
	fmadd.d	$ft1, $ft6, $ft1, $ft3
	fmul.d	$ft1, $ft1, $ft11
	fmul.d	$ft1, $ft1, $fs1
	fcvt.s.d	$ft1, $ft1
	fadd.s	$ft1, $fa2, $ft1
	fcmp.cle.s	$fcc0, $fa0, $ft1
	move	$t6, $t2
	bcnez	$fcc0, .LBB2_117
# %bb.116:                              #   in Loop: Header=BB2_113 Depth=2
	fadd.s	$fa7, $fa7, $ft2
	fmul.s	$fa7, $fa7, $ft9
	fcvt.d.s	$fa7, $fa7
	fcvt.d.s	$fa0, $fa0
	fmadd.d	$fa0, $fa7, $ft11, $fa0
	fcvt.s.d	$ft1, $fa0
	move	$t6, $t5
.LBB2_117:                              #   in Loop: Header=BB2_113 Depth=2
	fldx.s	$fa0, $s4, $a4
	fcvt.d.s	$fa0, $fa0
	fld.s	$fa7, $a2, 0
	fadd.d	$ft0, $ft0, $fa6
	fld.s	$fa6, $a3, 0
	fsub.d	$ft2, $ft10, $fa0
	fcvt.d.s	$fa7, $fa7
	fsub.d	$fa7, $ft10, $fa7
	fcvt.d.s	$fa6, $fa6
	fsub.d	$fa6, $fa7, $fa6
	fmul.d	$fa0, $fa6, $fa0
	fmadd.d	$fa0, $ft2, $ft0, $fa0
	fldx.s	$fa7, $fp, $a4
	fmul.d	$fa0, $fa0, $ft11
	fmul.d	$fa0, $fa0, $fs1
	fcvt.s.d	$fa0, $fa0
	fadd.s	$ft0, $fa7, $fa0
	fcmp.cule.s	$fcc0, $ft0, $fs0
	fmov.s	$fa0, $ft1
	move	$t5, $t6
	bcnez	$fcc0, .LBB2_119
# %bb.118:                              #   in Loop: Header=BB2_113 Depth=2
	ldx.w	$t6, $s8, $a4
	sub.d	$t6, $s7, $t6
	stx.w	$t6, $t1, $a4
	fmov.s	$fs0, $ft0
.LBB2_119:                              #   in Loop: Header=BB2_113 Depth=2
	add.d	$t6, $s4, $a4
	fld.s	$ft0, $t6, -4
	fcvt.d.s	$ft0, $ft0
	fsub.d	$ft1, $ft10, $ft0
	fadd.d	$fa4, $fa4, $fa5
	fmul.d	$fa5, $fa6, $ft0
	fmadd.d	$fa4, $ft1, $fa4, $fa5
	fmul.d	$fa4, $fa4, $ft11
	fmul.d	$fa4, $fa4, $fs1
	fcvt.s.d	$fa4, $fa4
	fadd.s	$fa2, $fa2, $fa4
	fcmp.cult.s	$fcc0, $fa2, $fa7
	bceqz	$fcc0, .LBB2_111
# %bb.120:                              #   in Loop: Header=BB2_113 Depth=2
	beq	$s7, $s5, .LBB2_112
# %bb.121:                              #   in Loop: Header=BB2_113 Depth=2
	fldx.s	$fa2, $fp, $a4
	fadd.s	$fa1, $fa1, $fa3
	fmul.s	$fa1, $fa1, $ft9
	fcvt.d.s	$fa1, $fa1
	fcvt.d.s	$fa2, $fa2
	fmadd.d	$fa1, $fa1, $ft11, $fa2
	fcvt.s.d	$fa1, $fa1
	fstx.s	$fa1, $fp, $a4
	b	.LBB2_112
.LBB2_122:                              # %vector.main.loop.iter.check900
                                        #   in Loop: Header=BB2_94 Depth=1
	ld.d	$a0, $sp, 336                   # 8-byte Folded Reload
	ori	$a1, $zero, 15
	bgeu	$a0, $a1, .LBB2_124
# %bb.123:                              #   in Loop: Header=BB2_94 Depth=1
	move	$a4, $zero
	b	.LBB2_128
.LBB2_124:                              # %vector.body904.preheader
                                        #   in Loop: Header=BB2_94 Depth=1
	addi.d	$a0, $s3, 32
	addi.d	$a1, $a2, 32
	ld.d	$a3, $sp, 192                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB2_125:                              # %vector.body904
                                        #   Parent Loop BB2_94 Depth=1
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
	bnez	$a3, .LBB2_125
# %bb.126:                              # %middle.block913
                                        #   in Loop: Header=BB2_94 Depth=1
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 192                   # 8-byte Folded Reload
	beq	$a0, $a1, .LBB2_100
# %bb.127:                              # %vec.epilog.iter.check918
                                        #   in Loop: Header=BB2_94 Depth=1
	ld.d	$a4, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	beqz	$a0, .LBB2_131
.LBB2_128:                              # %vec.epilog.ph917
                                        #   in Loop: Header=BB2_94 Depth=1
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	add.d	$a0, $a2, $a1
	add.d	$a1, $s3, $a1
	alsl.d	$a3, $a4, $s3, 2
	alsl.d	$a2, $a4, $a2, 2
	ld.d	$a5, $sp, 144                   # 8-byte Folded Reload
	add.d	$a4, $a5, $a4
	.p2align	4, , 16
.LBB2_129:                              # %vec.epilog.vector.body924
                                        #   Parent Loop BB2_94 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $a2, 0
	vld	$vr1, $a3, 0
	vfadd.s	$vr0, $vr0, $vr1
	vst	$vr0, $a3, 0
	addi.d	$a3, $a3, 16
	addi.d	$a4, $a4, 4
	addi.d	$a2, $a2, 16
	bnez	$a4, .LBB2_129
# %bb.130:                              # %vec.epilog.middle.block933
                                        #   in Loop: Header=BB2_94 Depth=1
	ld.d	$a2, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 168                   # 8-byte Folded Reload
	bne	$a3, $a4, .LBB2_99
	b	.LBB2_100
.LBB2_131:                              #   in Loop: Header=BB2_94 Depth=1
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	add.d	$a0, $a2, $a1
	add.d	$a1, $s3, $a1
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	b	.LBB2_99
.LBB2_132:
	movgr2fr.w	$fs0, $zero
	ld.d	$t0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$t1, $sp, 128                   # 8-byte Folded Reload
	beqz	$a5, .LBB2_134
	b	.LBB2_148
.LBB2_133:                              # %._crit_edge634.loopexit
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	ld.w	$a5, $a0, 0
	move	$t3, $s3
	ld.d	$s0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 40                    # 8-byte Folded Reload
	ld.d	$t4, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 216                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 32                    # 8-byte Folded Reload
	bnez	$a5, .LBB2_148
.LBB2_134:                              # %.preheader574
	ld.d	$a0, $sp, 408                   # 8-byte Folded Reload
	bnez	$a0, .LBB2_141
# %bb.135:                              # %.lr.ph639
	pcalau12i	$a0, %got_pc_hi20(offset)
	ld.d	$a0, $a0, %got_pc_lo12(offset)
	ld.w	$a0, $a0, 0
	addi.d	$a1, $s6, 1
	bstrpick.d	$a1, $a1, 31, 0
	addi.d	$a2, $a1, -1
	ori	$a4, $zero, 8
	ori	$a3, $zero, 1
	bltu	$a2, $a4, .LBB2_139
# %bb.136:                              # %vector.ph944
	move	$a4, $a2
	bstrins.d	$a4, $zero, 2, 0
	ori	$a5, $zero, 1
	move	$a3, $a2
	bstrins.d	$a3, $a5, 2, 0
	xvreplgr2vr.w	$xr0, $a0
	xvreplgr2vr.d	$xr1, $s6
	pcalau12i	$a5, %pc_hi20(.LCPI2_3)
	xvld	$xr2, $a5, %pc_lo12(.LCPI2_3)
	pcalau12i	$a5, %pc_hi20(.LCPI2_4)
	xvld	$xr3, $a5, %pc_lo12(.LCPI2_4)
	addi.d	$a5, $t3, 4
	lu52i.d	$a6, $zero, -1026
	xvreplgr2vr.d	$xr4, $a6
	move	$a6, $a4
	.p2align	4, , 16
.LBB2_137:                              # %vector.body951
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
	xvpermi.q	$xr6, $xr5, 1
	vext2xv.d.w	$xr6, $xr6
	xvffint.d.l	$xr6, $xr6
	vext2xv.d.w	$xr5, $xr5
	xvld	$xr7, $a5, 0
	xvffint.d.l	$xr5, $xr5
	xvfmul.d	$xr5, $xr5, $xr4
	xvfmul.d	$xr6, $xr6, $xr4
	xvpermi.q	$xr8, $xr7, 1
	vreplvei.w	$vr9, $vr8, 1
	fcvt.d.s	$ft1, $ft1
	vreplvei.w	$vr10, $vr8, 0
	fcvt.d.s	$ft2, $ft2
	xvinsve0.d	$xr10, $xr9, 1
	vreplvei.w	$vr9, $vr8, 2
	fcvt.d.s	$ft1, $ft1
	xvinsve0.d	$xr10, $xr9, 2
	vreplvei.w	$vr8, $vr8, 3
	fcvt.d.s	$ft0, $ft0
	xvinsve0.d	$xr10, $xr8, 3
	vreplvei.w	$vr8, $vr7, 1
	fcvt.d.s	$ft0, $ft0
	vreplvei.w	$vr9, $vr7, 0
	fcvt.d.s	$ft1, $ft1
	xvinsve0.d	$xr9, $xr8, 1
	vreplvei.w	$vr8, $vr7, 2
	fcvt.d.s	$ft0, $ft0
	xvinsve0.d	$xr9, $xr8, 2
	vreplvei.w	$vr7, $vr7, 3
	fcvt.d.s	$fa7, $fa7
	xvinsve0.d	$xr9, $xr7, 3
	xvfadd.d	$xr6, $xr10, $xr6
	xvfadd.d	$xr5, $xr9, $xr5
	xvpickve.d	$xr7, $xr5, 1
	fcvt.s.d	$fa7, $fa7
	xvpickve.d	$xr8, $xr5, 0
	fcvt.s.d	$ft0, $ft0
	xvinsve0.w	$xr8, $xr7, 1
	xvpickve.d	$xr7, $xr5, 2
	fcvt.s.d	$fa7, $fa7
	xvinsve0.w	$xr8, $xr7, 2
	xvpickve.d	$xr5, $xr5, 3
	fcvt.s.d	$fa5, $fa5
	xvinsve0.w	$xr8, $xr5, 3
	xvpickve.d	$xr5, $xr6, 0
	fcvt.s.d	$fa5, $fa5
	xvinsve0.w	$xr8, $xr5, 4
	xvpickve.d	$xr5, $xr6, 1
	fcvt.s.d	$fa5, $fa5
	xvinsve0.w	$xr8, $xr5, 5
	xvpickve.d	$xr5, $xr6, 2
	fcvt.s.d	$fa5, $fa5
	xvinsve0.w	$xr8, $xr5, 6
	xvpickve.d	$xr5, $xr6, 3
	fcvt.s.d	$fa5, $fa5
	xvinsve0.w	$xr8, $xr5, 7
	xvst	$xr8, $a5, 0
	xvaddi.du	$xr3, $xr3, 8
	xvaddi.du	$xr2, $xr2, 8
	addi.d	$a6, $a6, -8
	addi.d	$a5, $a5, 32
	bnez	$a6, .LBB2_137
# %bb.138:                              # %middle.block958
	beq	$a2, $a4, .LBB2_141
.LBB2_139:                              # %scalar.ph942.preheader
	sub.w	$a2, $s6, $a3
	mul.d	$a2, $a0, $a2
	alsl.d	$a4, $a3, $t3, 2
	sub.d	$a1, $a1, $a3
	vldi	$vr0, -800
	.p2align	4, , 16
.LBB2_140:                              # %scalar.ph942
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
	bnez	$a1, .LBB2_140
.LBB2_141:                              # %.preheader573
	ori	$a0, $zero, 1
	blt	$t4, $a0, .LBB2_148
# %bb.142:                              # %.lr.ph642
	pcalau12i	$a1, %got_pc_hi20(offset)
	ld.d	$a1, $a1, %got_pc_lo12(offset)
	ld.w	$a1, $a1, 0
	bstrpick.d	$a2, $s4, 31, 0
	movgr2fr.w	$fa0, $a1
	ffint.d.w	$fa1, $fa0
	movgr2fr.d	$fa0, $a2
	ffint.d.l	$fa0, $fa0
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(R__align.lastverticalw)
	addi.d	$a2, $s4, 1
	bstrpick.d	$a2, $a2, 31, 0
	addi.d	$a3, $a2, -1
	ori	$a4, $zero, 4
	fneg.d	$fa1, $fa1
	bltu	$a3, $a4, .LBB2_146
# %bb.143:                              # %vector.ph963
	move	$a4, $a3
	bstrins.d	$a4, $zero, 1, 0
	ori	$a5, $zero, 1
	move	$a0, $a3
	bstrins.d	$a0, $a5, 1, 0
	xvreplve0.d	$xr2, $xr0
	xvreplve0.d	$xr3, $xr1
	pcalau12i	$a5, %pc_hi20(.LCPI2_5)
	vld	$vr4, $a5, %pc_lo12(.LCPI2_5)
	addi.d	$a5, $a1, 4
	lu52i.d	$a6, $zero, -1026
	xvreplgr2vr.d	$xr5, $a6
	move	$a6, $a4
	.p2align	4, , 16
.LBB2_144:                              # %vector.body970
                                        # =>This Inner Loop Header: Depth=1
	vext2xv.du.wu	$xr6, $xr4
	vld	$vr7, $a5, 0
	xvffint.d.lu	$xr6, $xr6
	xvfmul.d	$xr6, $xr6, $xr5
	xvfadd.d	$xr6, $xr2, $xr6
	vreplvei.w	$vr8, $vr7, 1
	fcvt.d.s	$ft0, $ft0
	vreplvei.w	$vr9, $vr7, 0
	fcvt.d.s	$ft1, $ft1
	xvinsve0.d	$xr9, $xr8, 1
	vreplvei.w	$vr8, $vr7, 2
	fcvt.d.s	$ft0, $ft0
	xvinsve0.d	$xr9, $xr8, 2
	vreplvei.w	$vr7, $vr7, 3
	fcvt.d.s	$fa7, $fa7
	xvinsve0.d	$xr9, $xr7, 3
	xvfmadd.d	$xr6, $xr3, $xr6, $xr9
	xvpickve.d	$xr7, $xr6, 1
	fcvt.s.d	$fa7, $fa7
	xvpickve.d	$xr8, $xr6, 0
	fcvt.s.d	$ft0, $ft0
	vextrins.w	$vr8, $vr7, 16
	xvpickve.d	$xr7, $xr6, 2
	fcvt.s.d	$fa7, $fa7
	vextrins.w	$vr8, $vr7, 32
	xvpickve.d	$xr6, $xr6, 3
	fcvt.s.d	$fa6, $fa6
	vextrins.w	$vr8, $vr6, 48
	vst	$vr8, $a5, 0
	vaddi.wu	$vr4, $vr4, 4
	addi.d	$a6, $a6, -4
	addi.d	$a5, $a5, 16
	bnez	$a6, .LBB2_144
# %bb.145:                              # %middle.block977
	beq	$a3, $a4, .LBB2_148
.LBB2_146:                              # %scalar.ph961.preheader
	alsl.d	$a1, $a0, $a1, 2
	sub.d	$a2, $a2, $a0
	vldi	$vr2, -800
	.p2align	4, , 16
.LBB2_147:                              # %scalar.ph961
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
	bnez	$a2, .LBB2_147
.LBB2_148:                              # %.loopexit
	move	$s2, $t3
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.d	$fp, $a0, %pc_lo12(R__align.lastverticalw)
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s3, $a0, %pc_lo12(R__align.mseq1)
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s4, $a0, %pc_lo12(R__align.mseq2)
	ld.d	$a0, $t0, %pc_lo12(R__align.ijp)
	st.d	$a0, $sp, 464                   # 8-byte Folded Spill
	ld.d	$a0, $t1, 0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, 0
	move	$s7, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s6, $a0
	add.w	$a0, $a0, $s7
	st.d	$a0, $sp, 480                   # 8-byte Folded Spill
	addi.w	$s8, $a0, 1
	move	$a0, $s8
	pcaddu18i	$ra, %call36(AllocateCharVec)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	move	$a0, $s8
	pcaddu18i	$ra, %call36(AllocateCharVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	ld.w	$a1, $a1, 0
	st.d	$s0, $sp, 456                   # 8-byte Folded Spill
	st.d	$a0, $sp, 448                   # 8-byte Folded Spill
	bnez	$s1, .LBB2_155
# %bb.149:
	ori	$a2, $zero, 1
	move	$a5, $s2
	ld.d	$s2, $sp, 464                   # 8-byte Folded Reload
	beq	$a1, $a2, .LBB2_166
# %bb.150:
	fld.s	$fa0, $fp, 0
	addi.w	$a1, $s7, 0
	blt	$a1, $a2, .LBB2_161
# %bb.151:                              # %.lr.ph.i568
	slli.d	$a1, $s7, 3
	bstrpick.d	$a1, $a1, 33, 3
	slli.d	$a6, $a1, 3
	slli.d	$a1, $s6, 32
	srai.d	$a1, $a1, 30
	bstrpick.d	$a2, $s7, 30, 0
	move	$a3, $s7
	b	.LBB2_153
	.p2align	4, , 16
.LBB2_152:                              #   in Loop: Header=BB2_153 Depth=1
	addi.d	$a2, $a2, -1
	addi.d	$a3, $a3, -1
	addi.d	$fp, $fp, 4
	beqz	$a2, .LBB2_161
.LBB2_153:                              # =>This Inner Loop Header: Depth=1
	fld.s	$fa1, $fp, 0
	fcmp.cult.s	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB2_152
# %bb.154:                              #   in Loop: Header=BB2_153 Depth=1
	ldx.d	$a4, $s2, $a6
	stx.w	$a3, $a4, $a1
	fmov.s	$fa0, $fa1
	b	.LBB2_152
.LBB2_155:
	ori	$a3, $zero, 1
	addi.w	$a2, $s7, 0
	st.d	$a2, $sp, 472                   # 8-byte Folded Spill
	addi.w	$a2, $s6, 0
	ld.d	$ra, $sp, 464                   # 8-byte Folded Reload
	beq	$a1, $a3, .LBB2_174
# %bb.156:
	move	$a7, $s2
	fld.s	$fa0, $fp, 0
	ld.d	$a1, $sp, 472                   # 8-byte Folded Reload
	blt	$a1, $a3, .LBB2_169
# %bb.157:                              # %.lr.ph.i515
	slli.d	$a1, $s7, 3
	bstrpick.d	$a1, $a1, 33, 3
	slli.d	$a1, $a1, 3
	slli.d	$a3, $s6, 32
	srai.d	$a3, $a3, 30
	bstrpick.d	$a4, $s7, 30, 0
	move	$a5, $s7
	b	.LBB2_159
	.p2align	4, , 16
.LBB2_158:                              #   in Loop: Header=BB2_159 Depth=1
	addi.d	$a4, $a4, -1
	addi.d	$a5, $a5, -1
	addi.d	$fp, $fp, 4
	beqz	$a4, .LBB2_169
.LBB2_159:                              # =>This Inner Loop Header: Depth=1
	fld.s	$fa1, $fp, 0
	fcmp.cult.s	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB2_158
# %bb.160:                              #   in Loop: Header=BB2_159 Depth=1
	ldx.d	$a6, $ra, $a1
	stx.w	$a5, $a6, $a3
	fmov.s	$fa0, $fa1
	b	.LBB2_158
.LBB2_161:                              # %.preheader2.i520
	addi.w	$a2, $s6, 0
	ori	$a1, $zero, 1
	blt	$a2, $a1, .LBB2_166
# %bb.162:                              # %.lr.ph7.i562
	slli.d	$a1, $s7, 32
	srai.d	$a6, $a1, 29
	slli.d	$a1, $s6, 2
	bstrpick.d	$a1, $a1, 32, 2
	slli.d	$a1, $a1, 2
	bstrpick.d	$a2, $s6, 30, 0
	sub.d	$a3, $zero, $s6
	b	.LBB2_164
	.p2align	4, , 16
.LBB2_163:                              #   in Loop: Header=BB2_164 Depth=1
	addi.d	$a2, $a2, -1
	addi.d	$a3, $a3, 1
	addi.d	$a5, $a5, 4
	beqz	$a2, .LBB2_166
.LBB2_164:                              # =>This Inner Loop Header: Depth=1
	fld.s	$fa1, $a5, 0
	fcmp.cult.s	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB2_163
# %bb.165:                              #   in Loop: Header=BB2_164 Depth=1
	ldx.d	$a4, $s2, $a6
	stx.w	$a3, $a4, $a1
	fmov.s	$fa0, $fa1
	b	.LBB2_163
.LBB2_166:                              # %.loopexit.i521
	addi.w	$t0, $s7, 0
	bltz	$t0, .LBB2_182
# %bb.167:                              # %.lr.ph10.preheader.i523
	addi.d	$a2, $s7, 1
	bstrpick.d	$a1, $a2, 31, 0
	ori	$a3, $zero, 4
	bgeu	$a1, $a3, .LBB2_177
# %bb.168:
	move	$a2, $zero
	b	.LBB2_180
.LBB2_169:                              # %.preheader2.i
	ori	$a1, $zero, 1
	blt	$a2, $a1, .LBB2_174
# %bb.170:                              # %.lr.ph7.i
	slli.d	$a1, $s7, 32
	srai.d	$a1, $a1, 29
	slli.d	$a3, $s6, 2
	bstrpick.d	$a3, $a3, 32, 2
	slli.d	$a3, $a3, 2
	bstrpick.d	$a4, $s6, 30, 0
	sub.d	$a5, $zero, $s6
	b	.LBB2_172
	.p2align	4, , 16
.LBB2_171:                              #   in Loop: Header=BB2_172 Depth=1
	addi.d	$a4, $a4, -1
	addi.d	$a5, $a5, 1
	addi.d	$a7, $a7, 4
	beqz	$a4, .LBB2_174
.LBB2_172:                              # =>This Inner Loop Header: Depth=1
	fld.s	$fa1, $a7, 0
	fcmp.cult.s	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB2_171
# %bb.173:                              #   in Loop: Header=BB2_172 Depth=1
	ldx.d	$a6, $ra, $a1
	stx.w	$a5, $a6, $a3
	fmov.s	$fa0, $fa1
	b	.LBB2_171
.LBB2_174:                              # %.loopexit.i
	ld.d	$a1, $sp, 472                   # 8-byte Folded Reload
	bltz	$a1, .LBB2_190
# %bb.175:                              # %.lr.ph10.preheader.i
	addi.d	$a3, $s7, 1
	bstrpick.d	$a1, $a3, 31, 0
	ori	$a4, $zero, 4
	bgeu	$a1, $a4, .LBB2_185
# %bb.176:
	move	$a3, $zero
	b	.LBB2_188
.LBB2_177:                              # %vector.ph1077
	pcalau12i	$a3, %pc_hi20(.LCPI2_6)
	vld	$vr0, $a3, %pc_lo12(.LCPI2_6)
	bstrpick.d	$a2, $a2, 31, 2
	slli.d	$a2, $a2, 2
	addi.d	$a3, $s2, 16
	move	$a4, $a2
	.p2align	4, , 16
.LBB2_178:                              # %vector.body1080
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr1, $a3, -16
	vld	$vr2, $a3, 0
	vshuf4i.w	$vr3, $vr0, 8
	vaddi.wu	$vr4, $vr3, 1
	vaddi.wu	$vr3, $vr3, 3
	vpickve2gr.d	$a5, $vr1, 0
	vstelm.w	$vr4, $a5, 0, 0
	vpickve2gr.d	$a5, $vr1, 1
	vstelm.w	$vr4, $a5, 0, 1
	vpickve2gr.d	$a5, $vr2, 0
	vstelm.w	$vr3, $a5, 0, 0
	vpickve2gr.d	$a5, $vr2, 1
	vstelm.w	$vr3, $a5, 0, 1
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a4, $a4, -4
	addi.d	$a3, $a3, 32
	bnez	$a4, .LBB2_178
# %bb.179:                              # %middle.block1088
	beq	$a1, $a2, .LBB2_182
.LBB2_180:                              # %.lr.ph10.i525.preheader
	alsl.d	$a3, $a2, $s2, 3
	sub.d	$a1, $a1, $a2
	addi.d	$a2, $a2, 1
	.p2align	4, , 16
.LBB2_181:                              # %.lr.ph10.i525
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a4, $a3, 0
	st.w	$a2, $a4, 0
	addi.d	$a3, $a3, 8
	addi.d	$a1, $a1, -1
	addi.d	$a2, $a2, 1
	bnez	$a1, .LBB2_181
.LBB2_182:                              # %.preheader1.i529
	addi.w	$a1, $s6, 0
	bltz	$a1, .LBB2_209
# %bb.183:                              # %iter.check1094
	ld.d	$a2, $s2, 0
	addi.d	$a5, $s6, 1
	bstrpick.d	$a3, $a5, 31, 0
	ori	$a4, $zero, 3
	bltu	$a4, $a3, .LBB2_193
# %bb.184:
	move	$a4, $zero
	b	.LBB2_207
.LBB2_185:                              # %vector.ph982
	pcalau12i	$a4, %pc_hi20(.LCPI2_6)
	vld	$vr0, $a4, %pc_lo12(.LCPI2_6)
	bstrpick.d	$a3, $a3, 31, 2
	slli.d	$a3, $a3, 2
	addi.d	$a4, $ra, 16
	move	$a5, $a3
	.p2align	4, , 16
.LBB2_186:                              # %vector.body985
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
	bnez	$a5, .LBB2_186
# %bb.187:                              # %middle.block992
	beq	$a1, $a3, .LBB2_190
.LBB2_188:                              # %.lr.ph10.i.preheader
	alsl.d	$a4, $a3, $ra, 3
	sub.d	$a1, $a1, $a3
	addi.d	$a3, $a3, 1
	.p2align	4, , 16
.LBB2_189:                              # %.lr.ph10.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a5, $a4, 0
	st.w	$a3, $a5, 0
	addi.d	$a4, $a4, 8
	addi.d	$a1, $a1, -1
	addi.d	$a3, $a3, 1
	bnez	$a1, .LBB2_189
.LBB2_190:                              # %.preheader1.i
	ld.d	$a1, $sp, 592
	bltz	$a2, .LBB2_252
# %bb.191:                              # %iter.check998
	ld.d	$a3, $ra, 0
	addi.d	$a6, $s6, 1
	bstrpick.d	$a4, $a6, 31, 0
	ori	$a5, $zero, 3
	bltu	$a5, $a4, .LBB2_198
# %bb.192:
	move	$a5, $zero
	b	.LBB2_250
.LBB2_193:                              # %vector.main.loop.iter.check1096
	ori	$a4, $zero, 16
	bgeu	$a3, $a4, .LBB2_203
# %bb.194:
	move	$a4, $zero
.LBB2_195:                              # %vec.epilog.ph1110
	move	$a6, $a4
	pcalau12i	$a4, %pc_hi20(.LCPI2_8)
	vld	$vr0, $a4, %pc_lo12(.LCPI2_8)
	bstrpick.d	$a4, $a5, 31, 2
	slli.d	$a4, $a4, 2
	vreplgr2vr.w	$vr1, $a6
	vor.v	$vr0, $vr1, $vr0
	sub.d	$a5, $a6, $a4
	alsl.d	$a6, $a6, $a2, 2
	vrepli.b	$vr1, -1
	.p2align	4, , 16
.LBB2_196:                              # %vec.epilog.vector.body1119
                                        # =>This Inner Loop Header: Depth=1
	vxor.v	$vr2, $vr0, $vr1
	vst	$vr2, $a6, 0
	vaddi.wu	$vr0, $vr0, 4
	addi.d	$a5, $a5, 4
	addi.d	$a6, $a6, 16
	bnez	$a5, .LBB2_196
# %bb.197:                              # %vec.epilog.middle.block1124
	bne	$a3, $a4, .LBB2_207
	b	.LBB2_209
.LBB2_198:                              # %vector.main.loop.iter.check1000
	ori	$a5, $zero, 16
	bgeu	$a4, $a5, .LBB2_246
# %bb.199:
	move	$a5, $zero
.LBB2_200:                              # %vec.epilog.ph1014
	move	$a7, $a5
	pcalau12i	$a5, %pc_hi20(.LCPI2_8)
	vld	$vr0, $a5, %pc_lo12(.LCPI2_8)
	bstrpick.d	$a5, $a6, 31, 2
	slli.d	$a5, $a5, 2
	vreplgr2vr.w	$vr1, $a7
	vor.v	$vr0, $vr1, $vr0
	sub.d	$a6, $a7, $a5
	alsl.d	$a7, $a7, $a3, 2
	vrepli.b	$vr1, -1
	.p2align	4, , 16
.LBB2_201:                              # %vec.epilog.vector.body1022
                                        # =>This Inner Loop Header: Depth=1
	vxor.v	$vr2, $vr0, $vr1
	vst	$vr2, $a7, 0
	vaddi.wu	$vr0, $vr0, 4
	addi.d	$a6, $a6, 4
	addi.d	$a7, $a7, 16
	bnez	$a6, .LBB2_201
# %bb.202:                              # %vec.epilog.middle.block1027
	bne	$a4, $a5, .LBB2_250
	b	.LBB2_252
.LBB2_203:                              # %vector.ph1097
	bstrpick.d	$a4, $a5, 31, 4
	slli.d	$a4, $a4, 4
	pcalau12i	$a6, %pc_hi20(.LCPI2_7)
	xvld	$xr0, $a6, %pc_lo12(.LCPI2_7)
	addi.d	$a6, $a2, 32
	xvrepli.b	$xr1, -1
	xvrepli.w	$xr2, -9
	move	$a7, $a4
	.p2align	4, , 16
.LBB2_204:                              # %vector.body1100
                                        # =>This Inner Loop Header: Depth=1
	xvxor.v	$xr3, $xr0, $xr1
	xvsub.w	$xr4, $xr2, $xr0
	xvst	$xr3, $a6, -32
	xvst	$xr4, $a6, 0
	xvaddi.wu	$xr0, $xr0, 16
	addi.d	$a7, $a7, -16
	addi.d	$a6, $a6, 64
	bnez	$a7, .LBB2_204
# %bb.205:                              # %middle.block1106
	beq	$a3, $a4, .LBB2_209
# %bb.206:                              # %vec.epilog.iter.check1111
	andi	$a6, $a5, 12
	bnez	$a6, .LBB2_195
.LBB2_207:                              # %vec.epilog.scalar.ph1109.preheader
	alsl.d	$a2, $a4, $a2, 2
	nor	$a5, $a4, $zero
	sub.d	$a3, $a3, $a4
	.p2align	4, , 16
.LBB2_208:                              # %vec.epilog.scalar.ph1109
                                        # =>This Inner Loop Header: Depth=1
	st.w	$a5, $a2, 0
	addi.d	$a2, $a2, 4
	addi.d	$a3, $a3, -1
	addi.d	$a5, $a5, -1
	bnez	$a3, .LBB2_208
.LBB2_209:                              # %._crit_edge.i535
	add.d	$a2, $s0, $t0
	add.d	$s8, $a2, $a1
	stx.b	$zero, $a2, $a1
	add.d	$a0, $a0, $t0
	add.d	$s5, $a0, $a1
	stx.b	$zero, $a0, $a1
	ld.d	$a0, $sp, 480                   # 8-byte Folded Reload
	bltz	$a0, .LBB2_239
# %bb.210:                              # %.lr.ph41.i536.preheader
	move	$a7, $zero
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
.LBB2_211:                              # %.lr.ph41.i536
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_230 Depth 2
                                        #     Child Loop BB2_234 Depth 2
                                        #     Child Loop BB2_219 Depth 2
                                        #     Child Loop BB2_223 Depth 2
	addi.w	$a6, $s7, 0
	slli.d	$t0, $a6, 3
	ldx.d	$t0, $s2, $t0
	addi.w	$t1, $s6, 0
	slli.d	$t2, $t1, 2
	ldx.w	$t2, $t0, $t2
	bge	$a0, $t2, .LBB2_214
# %bb.212:                              #   in Loop: Header=BB2_211 Depth=1
	beqz	$t2, .LBB2_225
# %bb.213:                              #   in Loop: Header=BB2_211 Depth=1
	sub.d	$t0, $s7, $t2
	b	.LBB2_226
	.p2align	4, , 16
.LBB2_214:                              #   in Loop: Header=BB2_211 Depth=1
	addi.d	$t0, $s7, -1
	nor	$t3, $t0, $zero
	add.w	$t4, $s7, $t3
	bnez	$t4, .LBB2_227
	.p2align	4, , 16
.LBB2_215:                              # %._crit_edge20.i540
                                        #   in Loop: Header=BB2_211 Depth=1
	beq	$t2, $a0, .LBB2_236
.LBB2_216:                              # %.lr.ph29.preheader.i542
                                        #   in Loop: Header=BB2_211 Depth=1
	addi.w	$t3, $zero, -17
	nor	$t6, $t2, $zero
	bltu	$t3, $t2, .LBB2_221
# %bb.217:                              # %.lr.ph29.preheader.i542
                                        #   in Loop: Header=BB2_211 Depth=1
	sub.d	$t3, $s8, $s5
	bltu	$t3, $a4, .LBB2_221
# %bb.218:                              # %vector.ph1133
                                        #   in Loop: Header=BB2_211 Depth=1
	bstrpick.d	$t3, $t6, 30, 4
	slli.d	$t7, $t3, 4
	sub.d	$t5, $t6, $t7
	sub.d	$t3, $s5, $t7
	sub.d	$t4, $s8, $t7
	xvori.b	$xr5, $xr0, 0
	xvinsgr2vr.w	$xr5, $a7, 0
	addi.d	$a7, $s8, -8
	addi.d	$t8, $s5, -8
	move	$fp, $t7
	xvori.b	$xr6, $xr0, 0
	.p2align	4, , 16
.LBB2_219:                              # %vector.body1137
                                        #   Parent Loop BB2_211 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vst	$vr1, $a7, -8
	vst	$vr2, $t8, -8
	xvaddi.wu	$xr5, $xr5, 1
	xvaddi.wu	$xr6, $xr6, 1
	addi.d	$fp, $fp, -16
	addi.d	$a7, $a7, -16
	addi.d	$t8, $t8, -16
	bnez	$fp, .LBB2_219
# %bb.220:                              # %middle.block1146
                                        #   in Loop: Header=BB2_211 Depth=1
	xvadd.w	$xr5, $xr6, $xr5
	xvpermi.d	$xr6, $xr5, 78
	xvshuf4i.w	$xr6, $xr6, 228
	xvadd.w	$xr5, $xr5, $xr6
	xvpermi.d	$xr6, $xr5, 68
	xvshuf4i.w	$xr6, $xr6, 14
	xvadd.w	$xr5, $xr5, $xr6
	xvpermi.d	$xr6, $xr5, 68
	xvrepl128vei.w	$xr6, $xr6, 1
	xvadd.w	$xr5, $xr5, $xr6
	xvpickve2gr.w	$a7, $xr5, 0
	bne	$t7, $t6, .LBB2_222
	b	.LBB2_224
	.p2align	4, , 16
.LBB2_221:                              #   in Loop: Header=BB2_211 Depth=1
	move	$t5, $t6
	move	$t3, $s5
	move	$t4, $s8
.LBB2_222:                              # %.lr.ph29.i543.preheader
                                        #   in Loop: Header=BB2_211 Depth=1
	add.d	$a7, $a7, $t5
	.p2align	4, , 16
.LBB2_223:                              # %.lr.ph29.i543
                                        #   Parent Loop BB2_211 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.b	$a3, $t4, -1
	addi.d	$t4, $t4, -1
	st.b	$a2, $t3, -1
	addi.w	$t5, $t5, -1
	addi.d	$t3, $t3, -1
	bnez	$t5, .LBB2_223
.LBB2_224:                              # %._crit_edge30.i544
                                        #   in Loop: Header=BB2_211 Depth=1
	bge	$a6, $a1, .LBB2_237
	b	.LBB2_240
	.p2align	4, , 16
.LBB2_225:                              #   in Loop: Header=BB2_211 Depth=1
	addi.d	$t0, $s7, -1
.LBB2_226:                              #   in Loop: Header=BB2_211 Depth=1
	move	$t2, $a0
	nor	$t3, $t0, $zero
	add.w	$t4, $s7, $t3
	beqz	$t4, .LBB2_215
.LBB2_227:                              # %.lr.ph19.i538.preheader
                                        #   in Loop: Header=BB2_211 Depth=1
	bltu	$t4, $a5, .LBB2_232
# %bb.228:                              # %.lr.ph19.i538.preheader
                                        #   in Loop: Header=BB2_211 Depth=1
	sub.d	$t5, $s8, $s5
	bltu	$t5, $a5, .LBB2_232
# %bb.229:                              # %vector.ph1159
                                        #   in Loop: Header=BB2_211 Depth=1
	bstrpick.d	$t7, $t4, 31, 0
	bstrpick.d	$t5, $t7, 31, 5
	slli.d	$t8, $t5, 5
	sub.d	$t4, $t4, $t8
	sub.d	$t5, $s5, $t8
	sub.d	$t6, $s8, $t8
	addi.d	$fp, $s8, -32
	addi.d	$s0, $s5, -32
	move	$s1, $t8
	.p2align	4, , 16
.LBB2_230:                              # %vector.body1163
                                        #   Parent Loop BB2_211 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvst	$xr3, $fp, 0
	xvst	$xr4, $s0, 0
	addi.d	$s1, $s1, -32
	addi.d	$fp, $fp, -32
	addi.d	$s0, $s0, -32
	bnez	$s1, .LBB2_230
# %bb.231:                              # %middle.block1170
                                        #   in Loop: Header=BB2_211 Depth=1
	bne	$t8, $t7, .LBB2_233
	b	.LBB2_235
	.p2align	4, , 16
.LBB2_232:                              #   in Loop: Header=BB2_211 Depth=1
	move	$t5, $s5
	move	$t6, $s8
.LBB2_233:                              # %.lr.ph19.i538.preheader1180
                                        #   in Loop: Header=BB2_211 Depth=1
	move	$t7, $t5
	move	$t8, $t6
	.p2align	4, , 16
.LBB2_234:                              # %.lr.ph19.i538
                                        #   Parent Loop BB2_211 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$t6, $t8, -1
	st.b	$a2, $t8, -1
	addi.d	$t5, $t7, -1
	addi.w	$t4, $t4, -1
	st.b	$a3, $t7, -1
	move	$t7, $t5
	move	$t8, $t6
	bnez	$t4, .LBB2_234
.LBB2_235:                              # %._crit_edge20.loopexit.i539
                                        #   in Loop: Header=BB2_211 Depth=1
	add.d	$a7, $s7, $a7
	add.d	$a7, $t3, $a7
	move	$s8, $t6
	move	$s5, $t5
	bne	$t2, $a0, .LBB2_216
.LBB2_236:                              #   in Loop: Header=BB2_211 Depth=1
	move	$t4, $s8
	move	$t3, $s5
	blt	$a6, $a1, .LBB2_240
.LBB2_237:                              # %._crit_edge30.i544
                                        #   in Loop: Header=BB2_211 Depth=1
	blt	$t1, $a1, .LBB2_240
# %bb.238:                              #   in Loop: Header=BB2_211 Depth=1
	add.d	$s6, $t2, $s6
	addi.d	$s8, $t4, -1
	st.b	$a2, $t4, -1
	addi.d	$s5, $t3, -1
	addi.w	$a7, $a7, 2
	st.b	$a2, $t3, -1
	move	$s7, $t0
	ld.d	$a6, $sp, 480                   # 8-byte Folded Reload
	bge	$a6, $a7, .LBB2_211
.LBB2_239:                              # %._crit_edge42.i547
	ori	$fp, $zero, 1
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 128                   # 8-byte Folded Reload
	bge	$a0, $fp, .LBB2_241
	b	.LBB2_243
.LBB2_240:
	move	$s8, $t4
	move	$s5, $t3
	ori	$fp, $zero, 1
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 128                   # 8-byte Folded Reload
	blt	$a0, $fp, .LBB2_243
.LBB2_241:                              # %.lr.ph50.preheader.i556
	move	$s0, $s6
	ld.d	$s1, $sp, 112                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB2_242:                              # %.lr.ph50.i558
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s3, 0
	ld.d	$a1, $s0, 0
	move	$a2, $s8
	pcaddu18i	$ra, %call36(gapireru)
	jirl	$ra, $ra, 0
	addi.d	$s1, $s1, -1
	addi.d	$s0, $s0, 8
	addi.d	$s3, $s3, 8
	bnez	$s1, .LBB2_242
.LBB2_243:                              # %.preheader.i549
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 16                    # 8-byte Folded Reload
	blt	$s1, $fp, .LBB2_292
# %bb.244:                              # %.lr.ph52.preheader.i550
	move	$fp, $s2
	move	$s0, $s1
	.p2align	4, , 16
.LBB2_245:                              # %.lr.ph52.i552
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s4, 0
	ld.d	$a1, $fp, 0
	move	$a2, $s5
	pcaddu18i	$ra, %call36(gapireru)
	jirl	$ra, $ra, 0
	addi.d	$s0, $s0, -1
	addi.d	$fp, $fp, 8
	addi.d	$s4, $s4, 8
	bnez	$s0, .LBB2_245
	b	.LBB2_292
.LBB2_246:                              # %vector.ph1001
	bstrpick.d	$a5, $a6, 31, 4
	slli.d	$a5, $a5, 4
	pcalau12i	$a7, %pc_hi20(.LCPI2_7)
	xvld	$xr0, $a7, %pc_lo12(.LCPI2_7)
	addi.d	$a7, $a3, 32
	xvrepli.b	$xr1, -1
	xvrepli.w	$xr2, -9
	move	$t0, $a5
	.p2align	4, , 16
.LBB2_247:                              # %vector.body1004
                                        # =>This Inner Loop Header: Depth=1
	xvxor.v	$xr3, $xr0, $xr1
	xvsub.w	$xr4, $xr2, $xr0
	xvst	$xr3, $a7, -32
	xvst	$xr4, $a7, 0
	xvaddi.wu	$xr0, $xr0, 16
	addi.d	$t0, $t0, -16
	addi.d	$a7, $a7, 64
	bnez	$t0, .LBB2_247
# %bb.248:                              # %middle.block1010
	beq	$a4, $a5, .LBB2_252
# %bb.249:                              # %vec.epilog.iter.check1015
	andi	$a7, $a6, 12
	bnez	$a7, .LBB2_200
.LBB2_250:                              # %vec.epilog.scalar.ph1013.preheader
	alsl.d	$a3, $a5, $a3, 2
	nor	$a6, $a5, $zero
	sub.d	$a4, $a4, $a5
	.p2align	4, , 16
.LBB2_251:                              # %vec.epilog.scalar.ph1013
                                        # =>This Inner Loop Header: Depth=1
	st.w	$a6, $a3, 0
	addi.d	$a3, $a3, 4
	addi.d	$a4, $a4, -1
	addi.d	$a6, $a6, -1
	bnez	$a4, .LBB2_251
.LBB2_252:                              # %._crit_edge.i
	ld.d	$a4, $sp, 472                   # 8-byte Folded Reload
	add.d	$a3, $s0, $a4
	add.d	$s8, $a3, $a2
	stx.b	$zero, $a3, $a2
	add.d	$a3, $a0, $a4
	add.d	$s5, $a3, $a2
	stx.b	$zero, $a3, $a2
	st.w	$zero, $a1, 0
	ld.d	$a0, $sp, 480                   # 8-byte Folded Reload
	bltz	$a0, .LBB2_285
# %bb.253:                              # %.lr.ph41.i.preheader
	move	$t2, $zero
	addi.w	$a2, $zero, -1
	ori	$a3, $zero, 1
	ori	$a4, $zero, 111
	ori	$a5, $zero, 45
	xvrepli.b	$xr0, 0
	vrepli.b	$vr1, 45
	vrepli.b	$vr2, 111
	ori	$a7, $zero, 32
	xvrepli.b	$xr3, 111
	xvrepli.b	$xr4, 45
	move	$t0, $s6
	.p2align	4, , 16
.LBB2_254:                              # %.lr.ph41.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_273 Depth 2
                                        #     Child Loop BB2_277 Depth 2
                                        #     Child Loop BB2_262 Depth 2
                                        #     Child Loop BB2_266 Depth 2
	addi.w	$t1, $s7, 0
	slli.d	$t6, $t1, 3
	ldx.d	$a6, $ra, $t6
	addi.w	$t4, $t0, 0
	slli.d	$t7, $t4, 2
	ldx.w	$t5, $a6, $t7
	bge	$a2, $t5, .LBB2_257
# %bb.255:                              #   in Loop: Header=BB2_254 Depth=1
	beqz	$t5, .LBB2_268
# %bb.256:                              #   in Loop: Header=BB2_254 Depth=1
	sub.d	$t3, $s7, $t5
	b	.LBB2_269
	.p2align	4, , 16
.LBB2_257:                              #   in Loop: Header=BB2_254 Depth=1
	addi.d	$t3, $s7, -1
	nor	$t8, $t3, $zero
	add.w	$fp, $s7, $t8
	bnez	$fp, .LBB2_270
	.p2align	4, , 16
.LBB2_258:                              # %._crit_edge20.i
                                        #   in Loop: Header=BB2_254 Depth=1
	beq	$t5, $a2, .LBB2_279
.LBB2_259:                              # %.lr.ph29.preheader.i
                                        #   in Loop: Header=BB2_254 Depth=1
	addi.w	$a6, $zero, -17
	nor	$s1, $t5, $zero
	bltu	$a6, $t5, .LBB2_264
# %bb.260:                              # %.lr.ph29.preheader.i
                                        #   in Loop: Header=BB2_254 Depth=1
	sub.d	$a6, $s8, $s5
	ori	$a0, $zero, 16
	bltu	$a6, $a0, .LBB2_264
# %bb.261:                              # %vector.ph1036
                                        #   in Loop: Header=BB2_254 Depth=1
	bstrpick.d	$a6, $s1, 30, 4
	slli.d	$s2, $a6, 4
	sub.d	$s0, $s1, $s2
	sub.d	$t8, $s5, $s2
	sub.d	$fp, $s8, $s2
	xvori.b	$xr5, $xr0, 0
	xvinsgr2vr.w	$xr5, $t2, 0
	addi.d	$t2, $s8, -8
	addi.d	$s5, $s5, -8
	move	$s7, $s2
	xvori.b	$xr6, $xr0, 0
	.p2align	4, , 16
.LBB2_262:                              # %vector.body1040
                                        #   Parent Loop BB2_254 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vst	$vr1, $t2, -8
	vst	$vr2, $s5, -8
	xvaddi.wu	$xr5, $xr5, 1
	xvaddi.wu	$xr6, $xr6, 1
	addi.d	$s7, $s7, -16
	addi.d	$t2, $t2, -16
	addi.d	$s5, $s5, -16
	bnez	$s7, .LBB2_262
# %bb.263:                              # %middle.block1048
                                        #   in Loop: Header=BB2_254 Depth=1
	xvadd.w	$xr5, $xr6, $xr5
	xvpermi.d	$xr6, $xr5, 78
	xvshuf4i.w	$xr6, $xr6, 228
	xvadd.w	$xr5, $xr5, $xr6
	xvpermi.d	$xr6, $xr5, 68
	xvshuf4i.w	$xr6, $xr6, 14
	xvadd.w	$xr5, $xr5, $xr6
	xvpermi.d	$xr6, $xr5, 68
	xvrepl128vei.w	$xr6, $xr6, 1
	xvadd.w	$xr5, $xr5, $xr6
	xvpickve2gr.w	$t2, $xr5, 0
	bne	$s2, $s1, .LBB2_265
	b	.LBB2_267
	.p2align	4, , 16
.LBB2_264:                              #   in Loop: Header=BB2_254 Depth=1
	move	$s0, $s1
	move	$t8, $s5
	move	$fp, $s8
.LBB2_265:                              # %.lr.ph29.i.preheader
                                        #   in Loop: Header=BB2_254 Depth=1
	add.d	$t2, $t2, $s0
	.p2align	4, , 16
.LBB2_266:                              # %.lr.ph29.i
                                        #   Parent Loop BB2_254 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.b	$a5, $fp, -1
	addi.d	$fp, $fp, -1
	st.b	$a4, $t8, -1
	addi.w	$s0, $s0, -1
	addi.d	$t8, $t8, -1
	bnez	$s0, .LBB2_266
.LBB2_267:                              # %._crit_edge30.i
                                        #   in Loop: Header=BB2_254 Depth=1
	ld.d	$a0, $sp, 472                   # 8-byte Folded Reload
	bne	$t1, $a0, .LBB2_280
	b	.LBB2_282
	.p2align	4, , 16
.LBB2_268:                              #   in Loop: Header=BB2_254 Depth=1
	addi.d	$t3, $s7, -1
.LBB2_269:                              #   in Loop: Header=BB2_254 Depth=1
	move	$t5, $a2
	nor	$t8, $t3, $zero
	add.w	$fp, $s7, $t8
	beqz	$fp, .LBB2_258
.LBB2_270:                              # %.lr.ph19.i.preheader
                                        #   in Loop: Header=BB2_254 Depth=1
	bltu	$fp, $a7, .LBB2_275
# %bb.271:                              # %.lr.ph19.i.preheader
                                        #   in Loop: Header=BB2_254 Depth=1
	sub.d	$a6, $s8, $s5
	bltu	$a6, $a7, .LBB2_275
# %bb.272:                              # %vector.ph1059
                                        #   in Loop: Header=BB2_254 Depth=1
	bstrpick.d	$s2, $fp, 31, 0
	bstrpick.d	$a6, $s2, 31, 5
	slli.d	$a6, $a6, 5
	sub.d	$fp, $fp, $a6
	sub.d	$s0, $s5, $a6
	sub.d	$s1, $s8, $a6
	addi.d	$s8, $s8, -32
	addi.d	$s5, $s5, -32
	move	$ra, $a6
	.p2align	4, , 16
.LBB2_273:                              # %vector.body1063
                                        #   Parent Loop BB2_254 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvst	$xr3, $s8, 0
	xvst	$xr4, $s5, 0
	addi.d	$ra, $ra, -32
	addi.d	$s8, $s8, -32
	addi.d	$s5, $s5, -32
	bnez	$ra, .LBB2_273
# %bb.274:                              # %middle.block1070
                                        #   in Loop: Header=BB2_254 Depth=1
	ld.d	$ra, $sp, 464                   # 8-byte Folded Reload
	bne	$a6, $s2, .LBB2_276
	b	.LBB2_278
	.p2align	4, , 16
.LBB2_275:                              #   in Loop: Header=BB2_254 Depth=1
	move	$s0, $s5
	move	$s1, $s8
.LBB2_276:                              # %.lr.ph19.i.preheader1191
                                        #   in Loop: Header=BB2_254 Depth=1
	move	$s2, $s0
	move	$a6, $s1
	.p2align	4, , 16
.LBB2_277:                              # %.lr.ph19.i
                                        #   Parent Loop BB2_254 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$s1, $a6, -1
	st.b	$a4, $a6, -1
	addi.d	$s0, $s2, -1
	addi.w	$fp, $fp, -1
	st.b	$a5, $s2, -1
	move	$s2, $s0
	move	$a6, $s1
	bnez	$fp, .LBB2_277
.LBB2_278:                              # %._crit_edge20.loopexit.i
                                        #   in Loop: Header=BB2_254 Depth=1
	add.d	$a6, $s7, $t2
	add.d	$t2, $t8, $a6
	move	$s8, $s1
	move	$s5, $s0
	bne	$t5, $a2, .LBB2_259
.LBB2_279:                              #   in Loop: Header=BB2_254 Depth=1
	move	$fp, $s8
	move	$t8, $s5
	ld.d	$a0, $sp, 472                   # 8-byte Folded Reload
	beq	$t1, $a0, .LBB2_282
.LBB2_280:                              # %._crit_edge30.i
                                        #   in Loop: Header=BB2_254 Depth=1
	addi.w	$a6, $s6, 0
	beq	$t4, $a6, .LBB2_282
# %bb.281:                              #   in Loop: Header=BB2_254 Depth=1
	ld.d	$a6, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a6, $a6, %pc_lo12(impmtx)
	ldx.d	$a6, $a6, $t6
	fldx.s	$fa5, $a6, $t7
	fld.s	$fa6, $a1, 0
	fadd.s	$fa5, $fa5, $fa6
	fst.s	$fa5, $a1, 0
.LBB2_282:                              #   in Loop: Header=BB2_254 Depth=1
	blt	$t1, $a3, .LBB2_286
# %bb.283:                              #   in Loop: Header=BB2_254 Depth=1
	blt	$t4, $a3, .LBB2_286
# %bb.284:                              #   in Loop: Header=BB2_254 Depth=1
	add.d	$t0, $t5, $t0
	addi.d	$s8, $fp, -1
	st.b	$a4, $fp, -1
	addi.d	$s5, $t8, -1
	addi.w	$t2, $t2, 2
	st.b	$a4, $t8, -1
	move	$s7, $t3
	ld.d	$a0, $sp, 480                   # 8-byte Folded Reload
	bge	$a0, $t2, .LBB2_254
.LBB2_285:                              # %._crit_edge42.i
	ori	$fp, $zero, 1
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 128                   # 8-byte Folded Reload
	bge	$a0, $fp, .LBB2_287
	b	.LBB2_289
.LBB2_286:
	move	$s8, $fp
	move	$s5, $t8
	ori	$fp, $zero, 1
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 128                   # 8-byte Folded Reload
	blt	$a0, $fp, .LBB2_289
.LBB2_287:                              # %.lr.ph50.preheader.i
	move	$s0, $s6
	ld.d	$s1, $sp, 112                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB2_288:                              # %.lr.ph50.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s3, 0
	ld.d	$a1, $s0, 0
	move	$a2, $s8
	pcaddu18i	$ra, %call36(gapireru)
	jirl	$ra, $ra, 0
	addi.d	$s1, $s1, -1
	addi.d	$s0, $s0, 8
	addi.d	$s3, $s3, 8
	bnez	$s1, .LBB2_288
.LBB2_289:                              # %.preheader.i
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 16                    # 8-byte Folded Reload
	blt	$s1, $fp, .LBB2_292
# %bb.290:                              # %.lr.ph52.preheader.i
	move	$fp, $s2
	move	$s0, $s1
	.p2align	4, , 16
.LBB2_291:                              # %.lr.ph52.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s4, 0
	ld.d	$a1, $fp, 0
	move	$a2, $s5
	pcaddu18i	$ra, %call36(gapireru)
	jirl	$ra, $ra, 0
	addi.d	$s0, $s0, -1
	addi.d	$fp, $fp, 8
	addi.d	$s4, $s4, 8
	bnez	$s0, .LBB2_291
.LBB2_292:                              # %Atracking_localhom.exit
	ld.d	$a0, $sp, 456                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 448                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(R__align.mseq1)
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.w	$a3, $a0, 0
	lu12i.w	$a2, 1220
	ld.d	$s3, $sp, 112                   # 8-byte Folded Reload
	blt	$s7, $a3, .LBB2_294
# %bb.293:                              # %Atracking_localhom.exit
	ori	$a0, $a2, 2881
	blt	$a3, $a0, .LBB2_295
.LBB2_294:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	pcalau12i	$a1, %pc_hi20(.L.str)
	addi.d	$a1, $a1, %pc_lo12(.L.str)
	ori	$a4, $a2, 2880
	move	$a2, $s7
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	pcaddu18i	$ra, %call36(ErrorExit)
	jirl	$ra, $ra, 0
.LBB2_295:
	ori	$fp, $zero, 1
	blt	$s3, $fp, .LBB2_298
# %bb.296:                              # %.lr.ph645
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s0, $a0, %pc_lo12(R__align.mseq1)
	.p2align	4, , 16
.LBB2_297:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s6, 0
	ld.d	$a1, $s0, 0
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	addi.d	$s0, $s0, 8
	addi.d	$s3, $s3, -1
	addi.d	$s6, $s6, 8
	bnez	$s3, .LBB2_297
.LBB2_298:                              # %.preheader
	blt	$s1, $fp, .LBB2_301
# %bb.299:                              # %.lr.ph647
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$fp, $a0, %pc_lo12(R__align.mseq2)
	.p2align	4, , 16
.LBB2_300:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s2, 0
	ld.d	$a1, $fp, 0
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	addi.d	$fp, $fp, 8
	addi.d	$s1, $s1, -1
	addi.d	$s2, $s2, 8
	bnez	$s1, .LBB2_300
.LBB2_301:                              # %._crit_edge648
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	fcvt.d.s	$fa0, $fs0
	movfr2gr.d	$a2, $fa0
	pcalau12i	$a1, %pc_hi20(.L.str.2)
	addi.d	$a1, $a1, %pc_lo12(.L.str.2)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	fmov.s	$fa0, $fs0
	fld.d	$fs1, $sp, 488                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 496                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 504                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 512                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 520                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 528                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 536                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 544                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 552                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 560                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 568                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 576                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 584                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 592
	ret
.Lfunc_end2:
	.size	R__align, .Lfunc_end2-R__align
                                        # -- End function
	.p2align	5                               # -- Begin function match_calc
	.type	match_calc,@function
match_calc:                             # @match_calc
# %bb.0:
	addi.d	$sp, $sp, -176
	st.d	$fp, $sp, 168                   # 8-byte Folded Spill
	st.d	$s0, $sp, 160                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 152                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 144                  # 8-byte Folded Spill
	fst.d	$fs2, $sp, 136                  # 8-byte Folded Spill
	fst.d	$fs3, $sp, 128                  # 8-byte Folded Spill
	fst.d	$fs4, $sp, 120                  # 8-byte Folded Spill
	beqz	$a7, .LBB3_8
# %bb.1:
	ori	$a7, $zero, 1
	blt	$a4, $a7, .LBB3_8
# %bb.2:                                # %.preheader60.preheader
	move	$a7, $zero
	movgr2fr.w	$fa0, $zero
	ori	$t0, $zero, 208
	addi.w	$t1, $zero, -1
	lu32i.d	$t1, 0
	b	.LBB3_4
	.p2align	4, , 16
.LBB3_3:                                #   in Loop: Header=BB3_4 Depth=1
	ld.d	$t3, $t5, 0
	slli.d	$t2, $t2, 2
	addi.d	$a7, $a7, 1
	stx.w	$t1, $t3, $t2
	beq	$a7, $a4, .LBB3_8
.LBB3_4:                                # %.preheader60
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_6 Depth 2
	move	$t3, $zero
	move	$t4, $zero
	move	$t2, $zero
	alsl.d	$t6, $a7, $a5, 3
	alsl.d	$t5, $a7, $a6, 3
	slli.d	$t7, $a7, 2
	b	.LBB3_6
	.p2align	4, , 16
.LBB3_5:                                #   in Loop: Header=BB3_6 Depth=2
	addi.d	$t3, $t3, 8
	addi.d	$t4, $t4, 1
	beq	$t3, $t0, .LBB3_3
.LBB3_6:                                #   Parent Loop BB3_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.d	$t8, $a2, $t3
	fldx.s	$fa1, $t8, $t7
	fcmp.ceq.s	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB3_5
# %bb.7:                                #   in Loop: Header=BB3_6 Depth=2
	ld.d	$t8, $t6, 0
	ld.d	$fp, $t5, 0
	slli.d	$s0, $t2, 2
	fstx.s	$fa1, $t8, $s0
	stx.w	$t4, $fp, $s0
	addi.w	$t2, $t2, 1
	b	.LBB3_5
.LBB3_8:                                # %.loopexit
	ld.d	$a7, $a1, 0
	ld.d	$t0, $a1, 8
	move	$a2, $zero
	slli.d	$a3, $a3, 2
	fldx.s	$fa1, $a7, $a3
	fldx.s	$fa2, $t0, $a3
	ld.d	$a7, $a1, 16
	ld.d	$t0, $a1, 24
	ld.d	$t1, $a1, 32
	ld.d	$t2, $a1, 40
	fldx.s	$fa3, $a7, $a3
	fldx.s	$fa4, $t0, $a3
	fldx.s	$fa5, $t1, $a3
	fldx.s	$fa6, $t2, $a3
	ld.d	$a7, $a1, 48
	ld.d	$t0, $a1, 56
	ld.d	$t1, $a1, 64
	ld.d	$t2, $a1, 72
	fldx.s	$fa7, $a7, $a3
	fldx.s	$ft0, $t0, $a3
	fldx.s	$ft1, $t1, $a3
	fldx.s	$ft2, $t2, $a3
	ld.d	$a7, $a1, 80
	ld.d	$t0, $a1, 88
	ld.d	$t1, $a1, 96
	ld.d	$t2, $a1, 104
	fldx.s	$ft3, $a7, $a3
	fldx.s	$ft4, $t0, $a3
	fldx.s	$ft5, $t1, $a3
	fldx.s	$ft6, $t2, $a3
	ld.d	$a7, $a1, 112
	ld.d	$t0, $a1, 120
	ld.d	$t1, $a1, 128
	ld.d	$t2, $a1, 136
	fldx.s	$ft7, $a7, $a3
	fldx.s	$ft8, $t0, $a3
	fldx.s	$ft9, $t1, $a3
	fldx.s	$ft10, $t2, $a3
	ld.d	$a7, $a1, 144
	ld.d	$t0, $a1, 152
	ld.d	$t1, $a1, 160
	ld.d	$t2, $a1, 168
	fldx.s	$ft11, $a7, $a3
	fldx.s	$ft12, $t0, $a3
	fldx.s	$ft13, $t1, $a3
	fldx.s	$ft14, $t2, $a3
	ld.d	$a7, $a1, 176
	ld.d	$t0, $a1, 184
	ld.d	$t1, $a1, 192
	ld.d	$a1, $a1, 200
	fldx.s	$ft15, $a7, $a3
	fldx.s	$fs0, $t0, $a3
	fldx.s	$fs1, $t1, $a3
	fldx.s	$fs2, $a1, $a3
	pcalau12i	$a1, %got_pc_hi20(n_dis)
	ld.d	$a1, $a1, %got_pc_lo12(n_dis)
	movgr2fr.w	$fa0, $zero
	addi.d	$a3, $sp, 16
	ori	$a7, $zero, 104
	.p2align	4, , 16
.LBB3_9:                                # =>This Inner Loop Header: Depth=1
	ldx.w	$t1, $a1, $a2
	add.d	$t0, $a1, $a2
	ld.w	$t2, $t0, 104
	movgr2fr.w	$fs3, $t1
	ffint.s.w	$fs3, $fs3
	fmadd.s	$fs3, $fs3, $fa1, $fa0
	movgr2fr.w	$fs4, $t2
	ld.w	$t1, $t0, 208
	ffint.s.w	$fs4, $fs4
	fmadd.s	$fs3, $fs4, $fa2, $fs3
	ld.w	$t2, $t0, 312
	movgr2fr.w	$fs4, $t1
	ffint.s.w	$fs4, $fs4
	fmadd.s	$fs3, $fs4, $fa3, $fs3
	movgr2fr.w	$fs4, $t2
	ld.w	$t1, $t0, 416
	ffint.s.w	$fs4, $fs4
	fmadd.s	$fs3, $fs4, $fa4, $fs3
	ld.w	$t2, $t0, 520
	movgr2fr.w	$fs4, $t1
	ffint.s.w	$fs4, $fs4
	fmadd.s	$fs3, $fs4, $fa5, $fs3
	movgr2fr.w	$fs4, $t2
	ld.w	$t1, $t0, 624
	ffint.s.w	$fs4, $fs4
	fmadd.s	$fs3, $fs4, $fa6, $fs3
	ld.w	$t2, $t0, 728
	movgr2fr.w	$fs4, $t1
	ffint.s.w	$fs4, $fs4
	fmadd.s	$fs3, $fs4, $fa7, $fs3
	movgr2fr.w	$fs4, $t2
	ld.w	$t1, $t0, 832
	ffint.s.w	$fs4, $fs4
	fmadd.s	$fs3, $fs4, $ft0, $fs3
	ld.w	$t2, $t0, 936
	movgr2fr.w	$fs4, $t1
	ffint.s.w	$fs4, $fs4
	fmadd.s	$fs3, $fs4, $ft1, $fs3
	movgr2fr.w	$fs4, $t2
	ld.w	$t1, $t0, 1040
	ffint.s.w	$fs4, $fs4
	fmadd.s	$fs3, $fs4, $ft2, $fs3
	ld.w	$t2, $t0, 1144
	movgr2fr.w	$fs4, $t1
	ffint.s.w	$fs4, $fs4
	fmadd.s	$fs3, $fs4, $ft3, $fs3
	movgr2fr.w	$fs4, $t2
	ld.w	$t1, $t0, 1248
	ffint.s.w	$fs4, $fs4
	fmadd.s	$fs3, $fs4, $ft4, $fs3
	ld.w	$t2, $t0, 1352
	movgr2fr.w	$fs4, $t1
	ffint.s.w	$fs4, $fs4
	fmadd.s	$fs3, $fs4, $ft5, $fs3
	movgr2fr.w	$fs4, $t2
	ld.w	$t1, $t0, 1456
	ffint.s.w	$fs4, $fs4
	fmadd.s	$fs3, $fs4, $ft6, $fs3
	ld.w	$t2, $t0, 1560
	movgr2fr.w	$fs4, $t1
	ffint.s.w	$fs4, $fs4
	fmadd.s	$fs3, $fs4, $ft7, $fs3
	movgr2fr.w	$fs4, $t2
	ld.w	$t1, $t0, 1664
	ffint.s.w	$fs4, $fs4
	fmadd.s	$fs3, $fs4, $ft8, $fs3
	ld.w	$t2, $t0, 1768
	movgr2fr.w	$fs4, $t1
	ffint.s.w	$fs4, $fs4
	fmadd.s	$fs3, $fs4, $ft9, $fs3
	movgr2fr.w	$fs4, $t2
	ld.w	$t1, $t0, 1872
	ffint.s.w	$fs4, $fs4
	fmadd.s	$fs3, $fs4, $ft10, $fs3
	ld.w	$t2, $t0, 1976
	movgr2fr.w	$fs4, $t1
	ffint.s.w	$fs4, $fs4
	fmadd.s	$fs3, $fs4, $ft11, $fs3
	movgr2fr.w	$fs4, $t2
	ldptr.w	$t1, $t0, 2080
	ffint.s.w	$fs4, $fs4
	fmadd.s	$fs3, $fs4, $ft12, $fs3
	ldptr.w	$t2, $t0, 2184
	movgr2fr.w	$fs4, $t1
	ffint.s.w	$fs4, $fs4
	fmadd.s	$fs3, $fs4, $ft13, $fs3
	movgr2fr.w	$fs4, $t2
	ldptr.w	$t1, $t0, 2288
	ffint.s.w	$fs4, $fs4
	fmadd.s	$fs3, $fs4, $ft14, $fs3
	ldptr.w	$t2, $t0, 2392
	movgr2fr.w	$fs4, $t1
	ffint.s.w	$fs4, $fs4
	fmadd.s	$fs3, $fs4, $ft15, $fs3
	movgr2fr.w	$fs4, $t2
	ldptr.w	$t1, $t0, 2496
	ffint.s.w	$fs4, $fs4
	fmadd.s	$fs3, $fs4, $fs0, $fs3
	ldptr.w	$t0, $t0, 2600
	movgr2fr.w	$fs4, $t1
	ffint.s.w	$fs4, $fs4
	fmadd.s	$fs3, $fs4, $fs1, $fs3
	movgr2fr.w	$fs4, $t0
	ffint.s.w	$fs4, $fs4
	fmadd.s	$fs3, $fs4, $fs2, $fs3
	fstx.s	$fs3, $a2, $a3
	addi.d	$a2, $a2, 4
	bne	$a2, $a7, .LBB3_9
# %bb.10:                               # %.preheader
	beqz	$a4, .LBB3_16
# %bb.11:
	addi.d	$a1, $sp, 16
	addi.w	$a2, $zero, -1
	b	.LBB3_13
	.p2align	4, , 16
.LBB3_12:                               # %._crit_edge
                                        #   in Loop: Header=BB3_13 Depth=1
	addi.w	$a4, $a4, -1
	addi.d	$a6, $a6, 8
	addi.d	$a5, $a5, 8
	addi.d	$a0, $a0, 4
	beqz	$a4, .LBB3_16
.LBB3_13:                               # %.lr.ph73
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_15 Depth 2
	ld.d	$a7, $a6, 0
	ld.wu	$a3, $a7, 0
	addi.w	$t0, $a3, 0
	st.w	$zero, $a0, 0
	bltz	$t0, .LBB3_12
# %bb.14:                               # %.lr.ph
                                        #   in Loop: Header=BB3_13 Depth=1
	ld.d	$t0, $a5, 0
	addi.d	$a7, $a7, 4
	fmov.s	$fa1, $fa0
	.p2align	4, , 16
.LBB3_15:                               #   Parent Loop BB3_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	slli.d	$a3, $a3, 2
	fldx.s	$fa2, $a3, $a1
	fld.s	$fa3, $t0, 0
	ld.wu	$a3, $a7, 0
	addi.d	$t0, $t0, 4
	fmadd.s	$fa1, $fa2, $fa3, $fa1
	fst.s	$fa1, $a0, 0
	addi.w	$t1, $a3, 0
	addi.d	$a7, $a7, 4
	blt	$a2, $t1, .LBB3_15
	b	.LBB3_12
.LBB3_16:                               # %._crit_edge74
	fld.d	$fs4, $sp, 120                  # 8-byte Folded Reload
	fld.d	$fs3, $sp, 128                  # 8-byte Folded Reload
	fld.d	$fs2, $sp, 136                  # 8-byte Folded Reload
	fld.d	$fs1, $sp, 144                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 152                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 160                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 168                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 176
	ret
.Lfunc_end3:
	.size	match_calc, .Lfunc_end3-match_calc
                                        # -- End function
	.type	impmtx,@object                  # @impmtx
	.local	impmtx
	.comm	impmtx,8,8
	.type	imp_match_init_strictR.impalloclen,@object # @imp_match_init_strictR.impalloclen
	.local	imp_match_init_strictR.impalloclen
	.comm	imp_match_init_strictR.impalloclen,4,4
	.type	imp_match_init_strictR.nocount1,@object # @imp_match_init_strictR.nocount1
	.local	imp_match_init_strictR.nocount1
	.comm	imp_match_init_strictR.nocount1,8,8
	.type	imp_match_init_strictR.nocount2,@object # @imp_match_init_strictR.nocount2
	.local	imp_match_init_strictR.nocount2
	.comm	imp_match_init_strictR.nocount2,8,8
	.type	R__align.m,@object              # @R__align.m
	.local	R__align.m
	.comm	R__align.m,8,8
	.type	R__align.ijp,@object            # @R__align.ijp
	.local	R__align.ijp
	.comm	R__align.ijp,8,8
	.type	R__align.mp,@object             # @R__align.mp
	.local	R__align.mp
	.comm	R__align.mp,8,8
	.type	R__align.w1,@object             # @R__align.w1
	.local	R__align.w1
	.comm	R__align.w1,8,8
	.type	R__align.w2,@object             # @R__align.w2
	.local	R__align.w2
	.comm	R__align.w2,8,8
	.type	R__align.match,@object          # @R__align.match
	.local	R__align.match
	.comm	R__align.match,8,8
	.type	R__align.initverticalw,@object  # @R__align.initverticalw
	.local	R__align.initverticalw
	.comm	R__align.initverticalw,8,8
	.type	R__align.lastverticalw,@object  # @R__align.lastverticalw
	.local	R__align.lastverticalw
	.comm	R__align.lastverticalw,8,8
	.type	R__align.mseq1,@object          # @R__align.mseq1
	.local	R__align.mseq1
	.comm	R__align.mseq1,8,8
	.type	R__align.mseq2,@object          # @R__align.mseq2
	.local	R__align.mseq2
	.comm	R__align.mseq2,8,8
	.type	R__align.mseq,@object           # @R__align.mseq
	.local	R__align.mseq
	.comm	R__align.mseq,8,8
	.type	R__align.digf1,@object          # @R__align.digf1
	.local	R__align.digf1
	.comm	R__align.digf1,8,8
	.type	R__align.digf2,@object          # @R__align.digf2
	.local	R__align.digf2
	.comm	R__align.digf2,8,8
	.type	R__align.diaf1,@object          # @R__align.diaf1
	.local	R__align.diaf1
	.comm	R__align.diaf1,8,8
	.type	R__align.diaf2,@object          # @R__align.diaf2
	.local	R__align.diaf2
	.comm	R__align.diaf2,8,8
	.type	R__align.gapz1,@object          # @R__align.gapz1
	.local	R__align.gapz1
	.comm	R__align.gapz1,8,8
	.type	R__align.gapz2,@object          # @R__align.gapz2
	.local	R__align.gapz2
	.comm	R__align.gapz2,8,8
	.type	R__align.gapf1,@object          # @R__align.gapf1
	.local	R__align.gapf1
	.comm	R__align.gapf1,8,8
	.type	R__align.gapf2,@object          # @R__align.gapf2
	.local	R__align.gapf2
	.comm	R__align.gapf2,8,8
	.type	R__align.ogcp1g,@object         # @R__align.ogcp1g
	.local	R__align.ogcp1g
	.comm	R__align.ogcp1g,8,8
	.type	R__align.ogcp2g,@object         # @R__align.ogcp2g
	.local	R__align.ogcp2g
	.comm	R__align.ogcp2g,8,8
	.type	R__align.fgcp1g,@object         # @R__align.fgcp1g
	.local	R__align.fgcp1g
	.comm	R__align.fgcp1g,8,8
	.type	R__align.fgcp2g,@object         # @R__align.fgcp2g
	.local	R__align.fgcp2g
	.comm	R__align.fgcp2g,8,8
	.type	R__align.ogcp1,@object          # @R__align.ogcp1
	.local	R__align.ogcp1
	.comm	R__align.ogcp1,8,8
	.type	R__align.ogcp2,@object          # @R__align.ogcp2
	.local	R__align.ogcp2
	.comm	R__align.ogcp2,8,8
	.type	R__align.fgcp1,@object          # @R__align.fgcp1
	.local	R__align.fgcp1
	.comm	R__align.fgcp1,8,8
	.type	R__align.fgcp2,@object          # @R__align.fgcp2
	.local	R__align.fgcp2
	.comm	R__align.fgcp2,8,8
	.type	R__align.cpmx1,@object          # @R__align.cpmx1
	.local	R__align.cpmx1
	.comm	R__align.cpmx1,8,8
	.type	R__align.cpmx2,@object          # @R__align.cpmx2
	.local	R__align.cpmx2
	.comm	R__align.cpmx2,8,8
	.type	R__align.intwork,@object        # @R__align.intwork
	.local	R__align.intwork
	.comm	R__align.intwork,8,8
	.type	R__align.floatwork,@object      # @R__align.floatwork
	.local	R__align.floatwork
	.comm	R__align.floatwork,8,8
	.type	R__align.orlgth1,@object        # @R__align.orlgth1
	.local	R__align.orlgth1
	.comm	R__align.orlgth1,4,4
	.type	R__align.orlgth2,@object        # @R__align.orlgth2
	.local	R__align.orlgth2
	.comm	R__align.orlgth2,4,4
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"alloclen=%d, resultlen=%d, N=%d\n"
	.size	.L.str, 33

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"LENGTH OVER!\n"
	.size	.L.str.1, 14

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"wm = %f\n"
	.size	.L.str.2, 9

	.section	".note.GNU-stack","",@progbits
	.addrsig
