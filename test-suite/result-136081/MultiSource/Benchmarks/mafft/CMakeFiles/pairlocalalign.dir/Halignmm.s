	.file	"Halignmm.c"
	.text
	.globl	imp_match_out_scH               # -- Begin function imp_match_out_scH
	.p2align	5
	.type	imp_match_out_scH,@function
imp_match_out_scH:                      # @imp_match_out_scH
# %bb.0:
	pcalau12i	$a2, %pc_hi20(impmtx)
	ld.d	$a2, $a2, %pc_lo12(impmtx)
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $a2, $a0
	slli.d	$a1, $a1, 2
	fldx.s	$fa0, $a0, $a1
	ret
.Lfunc_end0:
	.size	imp_match_out_scH, .Lfunc_end0-imp_match_out_scH
                                        # -- End function
	.globl	imp_match_init_strictH          # -- Begin function imp_match_init_strictH
	.p2align	5
	.type	imp_match_init_strictH,@function
imp_match_init_strictH:                 # @imp_match_init_strictH
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
	pcalau12i	$s6, %pc_hi20(imp_match_init_strictH.impalloclen)
	ld.w	$a0, $s6, %pc_lo12(imp_match_init_strictH.impalloclen)
	addi.w	$a1, $a3, 2
	pcalau12i	$a2, %pc_hi20(impmtx)
	st.d	$a2, $sp, 0                     # 8-byte Folded Spill
	pcalau12i	$s8, %pc_hi20(imp_match_init_strictH.nocount1)
	pcalau12i	$s7, %pc_hi20(imp_match_init_strictH.nocount2)
	blt	$a0, $a1, .LBB1_11
# %bb.1:
	addi.w	$a1, $s5, 2
	blt	$a0, $a1, .LBB1_11
# %bb.2:
	ori	$a1, $zero, 1
	blt	$s4, $a1, .LBB1_18
.LBB1_3:                                # %.preheader211.lr.ph
	ld.d	$a0, $s8, %pc_lo12(imp_match_init_strictH.nocount1)
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
	ld.d	$a0, $sp, 0                     # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(impmtx)
	beqz	$a0, .LBB1_13
# %bb.12:
	pcaddu18i	$ra, %call36(FreeFloatMtx)
	jirl	$ra, $ra, 0
.LBB1_13:
	ld.d	$a0, $s8, %pc_lo12(imp_match_init_strictH.nocount1)
	beqz	$a0, .LBB1_15
# %bb.14:
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB1_15:
	ld.d	$a0, $s7, %pc_lo12(imp_match_init_strictH.nocount2)
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
	st.w	$a0, $s6, %pc_lo12(imp_match_init_strictH.impalloclen)
	move	$a1, $a0
	pcaddu18i	$ra, %call36(AllocateFloatMtx)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s6, %pc_lo12(imp_match_init_strictH.impalloclen)
	ld.d	$a2, $sp, 0                     # 8-byte Folded Reload
	st.d	$a0, $a2, %pc_lo12(impmtx)
	move	$a0, $a1
	pcaddu18i	$ra, %call36(AllocateCharVec)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s6, %pc_lo12(imp_match_init_strictH.impalloclen)
	st.d	$a0, $s8, %pc_lo12(imp_match_init_strictH.nocount1)
	move	$a0, $a1
	pcaddu18i	$ra, %call36(AllocateCharVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $s7, %pc_lo12(imp_match_init_strictH.nocount2)
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
	ld.d	$a0, $s7, %pc_lo12(imp_match_init_strictH.nocount2)
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
	ld.d	$a0, $sp, 0                     # 8-byte Folded Reload
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
	ld.d	$a0, $sp, 104
	ld.d	$a1, $sp, 96
	fld.d	$fa0, $a2, 0
	ld.d	$a2, $sp, 0                     # 8-byte Folded Reload
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
.Lfunc_end1:
	.size	imp_match_init_strictH, .Lfunc_end1-imp_match_init_strictH
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function H__align
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
.LCPI2_9:
	.word	0                               # 0x0
	.word	4                               # 0x4
	.word	4                               # 0x4
	.word	4                               # 0x4
	.word	4                               # 0x4
	.word	4                               # 0x4
	.word	4                               # 0x4
	.word	4                               # 0x4
.LCPI2_10:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
	.dword	0                               # 0x0
	.dword	0                               # 0x0
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
	.globl	H__align
	.p2align	5
	.type	H__align,@function
H__align:                               # @H__align
# %bb.0:
	addi.d	$sp, $sp, -800
	st.d	$ra, $sp, 792                   # 8-byte Folded Spill
	st.d	$fp, $sp, 784                   # 8-byte Folded Spill
	st.d	$s0, $sp, 776                   # 8-byte Folded Spill
	st.d	$s1, $sp, 768                   # 8-byte Folded Spill
	st.d	$s2, $sp, 760                   # 8-byte Folded Spill
	st.d	$s3, $sp, 752                   # 8-byte Folded Spill
	st.d	$s4, $sp, 744                   # 8-byte Folded Spill
	st.d	$s5, $sp, 736                   # 8-byte Folded Spill
	st.d	$s6, $sp, 728                   # 8-byte Folded Spill
	st.d	$s7, $sp, 720                   # 8-byte Folded Spill
	st.d	$s8, $sp, 712                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 704                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 696                  # 8-byte Folded Spill
	fst.d	$fs2, $sp, 688                  # 8-byte Folded Spill
	addi.d	$fp, $sp, 800
	bstrins.d	$sp, $zero, 4, 0
	pcalau12i	$t0, %got_pc_hi20(penalty)
	ld.d	$t0, $t0, %got_pc_lo12(penalty)
	pcalau12i	$s8, %pc_hi20(H__align.orlgth1)
	ld.w	$s7, $s8, %pc_lo12(H__align.orlgth1)
	ld.w	$t0, $t0, 0
	st.d	$t0, $sp, 248                   # 8-byte Folded Spill
	st.d	$a7, $sp, 64                    # 8-byte Folded Spill
	st.d	$a6, $sp, 24                    # 8-byte Folded Spill
	move	$s3, $a5
	st.d	$a4, $sp, 128                   # 8-byte Folded Spill
	st.d	$a3, $sp, 256                   # 8-byte Folded Spill
	st.d	$a2, $sp, 472                   # 8-byte Folded Spill
	move	$s5, $a1
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(H__align.mseq1)
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(H__align.mseq2)
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	bnez	$s7, .LBB2_2
# %bb.1:
	pcalau12i	$a0, %got_pc_hi20(njob)
	ld.d	$s0, $a0, %got_pc_lo12(njob)
	ld.w	$a0, $s0, 0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(AllocateCharMtx)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s0, 0
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	st.d	$a0, $a2, %pc_lo12(H__align.mseq1)
	move	$a0, $a1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(AllocateCharMtx)
	jirl	$ra, $ra, 0
	ld.w	$s7, $s8, %pc_lo12(H__align.orlgth1)
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(H__align.mseq2)
.LBB2_2:
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s5, 0
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	addi.w	$s2, $a0, 0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	pcalau12i	$a0, %pc_hi20(H__align.orlgth2)
	st.d	$a0, $sp, 240                   # 8-byte Folded Spill
	ld.w	$s0, $a0, %pc_lo12(H__align.orlgth2)
	addi.w	$a0, $s4, 0
	pcalau12i	$a1, %pc_hi20(H__align.w1)
	st.d	$a1, $sp, 456                   # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(H__align.w2)
	st.d	$a1, $sp, 416                   # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(H__align.initverticalw)
	st.d	$a1, $sp, 408                   # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(H__align.lastverticalw)
	st.d	$a1, $sp, 96                    # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(H__align.m)
	st.d	$a1, $sp, 344                   # 8-byte Folded Spill
	pcalau12i	$s1, %pc_hi20(H__align.mseq)
	pcalau12i	$a1, %pc_hi20(H__align.digf1)
	st.d	$a1, $sp, 312                   # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(H__align.digf2)
	st.d	$a1, $sp, 352                   # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(H__align.diaf1)
	st.d	$a1, $sp, 464                   # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(H__align.diaf2)
	st.d	$a1, $sp, 448                   # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(H__align.gappat1)
	st.d	$a1, $sp, 80                    # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(H__align.gappat2)
	st.d	$a1, $sp, 88                    # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(H__align.gapz1)
	st.d	$a1, $sp, 320                   # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(H__align.gapz2)
	st.d	$a1, $sp, 328                   # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(H__align.gapf1)
	st.d	$a1, $sp, 296                   # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(H__align.gapf2)
	st.d	$a1, $sp, 304                   # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(H__align.ogcp1g)
	st.d	$a1, $sp, 264                   # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(H__align.ogcp2g)
	st.d	$a1, $sp, 272                   # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(H__align.fgcp1g)
	st.d	$a1, $sp, 280                   # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(H__align.fgcp2g)
	st.d	$a1, $sp, 288                   # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(H__align.cpmx1)
	st.d	$a1, $sp, 440                   # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(H__align.cpmx2)
	st.d	$a1, $sp, 432                   # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(H__align.floatwork)
	st.d	$a1, $sp, 400                   # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(H__align.intwork)
	st.d	$a1, $sp, 336                   # 8-byte Folded Spill
	st.d	$s3, $sp, 136                   # 8-byte Folded Spill
	st.d	$s5, $sp, 152                   # 8-byte Folded Spill
	st.d	$s4, $sp, 232                   # 8-byte Folded Spill
	st.d	$a0, $sp, 424                   # 8-byte Folded Spill
	st.d	$s2, $sp, 120                   # 8-byte Folded Spill
	blt	$s7, $s2, .LBB2_4
# %bb.3:
	bge	$s0, $a0, .LBB2_8
.LBB2_4:
	ori	$a0, $zero, 1
	pcalau12i	$s6, %pc_hi20(H__align.match)
	pcalau12i	$a1, %pc_hi20(H__align.ogcp1)
	st.d	$a1, $sp, 216                   # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(H__align.ogcp2)
	st.d	$a1, $sp, 224                   # 8-byte Folded Spill
	pcalau12i	$s5, %pc_hi20(H__align.fgcp1)
	pcalau12i	$s3, %pc_hi20(H__align.fgcp2)
	blt	$s7, $a0, .LBB2_7
# %bb.5:
	blt	$s0, $a0, .LBB2_7
# %bb.6:
	ld.d	$a0, $sp, 456                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.w1)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 416                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.w2)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s6, %pc_lo12(H__align.match)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 408                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.initverticalw)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.lastverticalw)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 344                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.m)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(H__align.mp)
	ld.d	$a0, $a0, %pc_lo12(H__align.mp)
	pcaddu18i	$ra, %call36(FreeIntVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, %pc_lo12(H__align.mseq)
	pcaddu18i	$ra, %call36(FreeCharMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.gappat1)
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.gappat2)
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 312                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.digf1)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 352                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.digf2)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 464                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.diaf1)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 448                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.diaf2)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 320                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.gapz1)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 328                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.gapz2)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 296                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.gapf1)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 304                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.gapf2)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.ogcp1)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.ogcp2)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, %pc_lo12(H__align.fgcp1)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, %pc_lo12(H__align.fgcp2)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.ogcp1g)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.ogcp2g)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 280                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.fgcp1g)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 288                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.fgcp2g)
	pcaddu18i	$ra, %call36(FreeFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 440                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.cpmx1)
	pcaddu18i	$ra, %call36(FreeFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 432                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.cpmx2)
	pcaddu18i	$ra, %call36(FreeFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 400                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.floatwork)
	pcaddu18i	$ra, %call36(FreeFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 336                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.intwork)
	pcaddu18i	$ra, %call36(FreeIntMtx)
	jirl	$ra, $ra, 0
	ld.w	$s7, $s8, %pc_lo12(H__align.orlgth1)
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	ld.w	$s0, $a0, %pc_lo12(H__align.orlgth2)
.LBB2_7:
	pcalau12i	$a0, %pc_hi20(.LCPI2_0)
	fld.d	$fa0, $a0, %pc_lo12(.LCPI2_0)
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	movgr2fr.w	$fa1, $a0
	ffint.d.w	$fa1, $fa1
	fmul.d	$fa1, $fa1, $fa0
	ftintrz.w.d	$fa1, $fa1
	movfr2gr.s	$a0, $fa1
	slt	$a1, $a0, $s7
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s7, $a1
	or	$s7, $a1, $a0
	st.d	$s8, $sp, 208                   # 8-byte Folded Spill
	addi.w	$s2, $s7, 100
	movgr2fr.w	$fa1, $s4
	ffint.d.w	$fa1, $fa1
	fmul.d	$fa0, $fa1, $fa0
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a0, $fa0
	slt	$a1, $a0, $s0
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s0, $a1
	or	$s0, $a1, $a0
	move	$s8, $s5
	addi.w	$s5, $s0, 100
	addi.w	$s4, $s0, 102
	move	$a0, $s4
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 456                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(H__align.w1)
	move	$a0, $s4
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 416                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(H__align.w2)
	move	$a0, $s4
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $s6, %pc_lo12(H__align.match)
	addi.w	$s6, $s7, 102
	move	$a0, $s6
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 408                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(H__align.initverticalw)
	move	$a0, $s6
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(H__align.lastverticalw)
	move	$a0, $s4
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 344                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(H__align.m)
	move	$a0, $s4
	pcaddu18i	$ra, %call36(AllocateIntVec)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(njob)
	ld.d	$a1, $a1, %got_pc_lo12(njob)
	ld.w	$a2, $a1, 0
	pcalau12i	$a1, %pc_hi20(H__align.mp)
	st.d	$a0, $a1, %pc_lo12(H__align.mp)
	add.w	$a1, $s5, $s2
	move	$a0, $a2
	pcaddu18i	$ra, %call36(AllocateCharMtx)
	jirl	$ra, $ra, 0
	st.d	$a0, $s1, %pc_lo12(H__align.mseq)
	move	$a0, $s6
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 312                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(H__align.digf1)
	move	$a0, $s4
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 352                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(H__align.digf2)
	move	$a0, $s6
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 464                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(H__align.diaf1)
	move	$a0, $s4
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 448                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(H__align.diaf2)
	ori	$a1, $zero, 8
	move	$a0, $s6
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(H__align.gappat1)
	ori	$a1, $zero, 8
	move	$a0, $s4
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(H__align.gappat2)
	move	$a0, $s6
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 320                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(H__align.gapz1)
	move	$a0, $s4
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 328                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(H__align.gapz2)
	move	$a0, $s6
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 296                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(H__align.gapf1)
	move	$a0, $s4
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 304                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(H__align.gapf2)
	move	$a0, $s6
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(H__align.ogcp1)
	move	$a0, $s4
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(H__align.ogcp2)
	move	$a0, $s6
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $s8, %pc_lo12(H__align.fgcp1)
	move	$a0, $s4
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	st.d	$a0, $s3, %pc_lo12(H__align.fgcp2)
	ld.d	$s8, $sp, 208                   # 8-byte Folded Reload
	move	$a0, $s6
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 264                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(H__align.ogcp1g)
	move	$a0, $s4
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 272                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(H__align.ogcp2g)
	move	$a0, $s6
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 280                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(H__align.fgcp1g)
	move	$a0, $s4
	pcaddu18i	$ra, %call36(AllocateFloatVec)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 288                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(H__align.fgcp2g)
	ori	$a0, $zero, 26
	move	$a1, $s6
	pcaddu18i	$ra, %call36(AllocateFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 440                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(H__align.cpmx1)
	ori	$a0, $zero, 26
	move	$a1, $s4
	pcaddu18i	$ra, %call36(AllocateFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 432                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(H__align.cpmx2)
	slt	$a0, $s5, $s2
	masknez	$a1, $s5, $a0
	maskeqz	$a0, $s2, $a0
	or	$a0, $a0, $a1
	addi.w	$s2, $a0, 2
	ori	$a1, $zero, 26
	move	$a0, $s2
	pcaddu18i	$ra, %call36(AllocateFloatMtx)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 400                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(H__align.floatwork)
	ori	$a1, $zero, 27
	move	$a0, $s2
	pcaddu18i	$ra, %call36(AllocateIntMtx)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 336                   # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(H__align.intwork)
	st.w	$s7, $s8, %pc_lo12(H__align.orlgth1)
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	st.w	$s0, $a0, %pc_lo12(H__align.orlgth2)
	ld.d	$s3, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 152                   # 8-byte Folded Reload
.LBB2_8:
	ori	$a0, $zero, 1
	ld.d	$a6, $sp, 424                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 120                   # 8-byte Folded Reload
	blt	$a1, $a0, .LBB2_11
# %bb.9:                                # %.lr.ph
	ld.d	$a1, $s1, %pc_lo12(H__align.mseq)
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(H__align.mseq1)
	ld.d	$a3, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 144                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB2_10:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a5, $a1, 0
	st.d	$a5, $a2, 0
	ld.d	$a5, $a4, 0
	stx.b	$zero, $a5, $a7
	addi.d	$a4, $a4, 8
	addi.d	$a2, $a2, 8
	addi.d	$a3, $a3, -1
	addi.d	$a1, $a1, 8
	bnez	$a3, .LBB2_10
.LBB2_11:                               # %.preheader654
	blt	$s3, $a0, .LBB2_14
# %bb.12:                               # %.lr.ph666
	ld.d	$a1, $s1, %pc_lo12(H__align.mseq)
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.mseq2)
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	alsl.d	$a1, $a2, $a1, 3
	move	$a2, $s3
	move	$a3, $s5
	.p2align	4, , 16
.LBB2_13:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a4, $a1, 0
	st.d	$a4, $a0, 0
	ld.d	$a4, $a3, 0
	stx.b	$zero, $a4, $a6
	addi.d	$a1, $a1, 8
	addi.d	$a3, $a3, 8
	addi.d	$a2, $a2, -1
	addi.d	$a0, $a0, 8
	bnez	$a2, .LBB2_13
.LBB2_14:                               # %._crit_edge
	pcalau12i	$a0, %got_pc_hi20(commonAlloc1)
	ld.d	$s1, $a0, %got_pc_lo12(commonAlloc1)
	pcalau12i	$a0, %got_pc_hi20(commonAlloc2)
	ld.d	$s2, $a0, %got_pc_lo12(commonAlloc2)
	ld.d	$s4, $fp, 8
	ld.w	$a1, $s1, 0
	ld.w	$a0, $s2, 0
	blt	$a1, $s7, .LBB2_17
# %bb.15:                               # %._crit_edge
	blt	$a0, $s0, .LBB2_17
# %bb.16:                               # %._crit_edge813
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
	ld.w	$s7, $s8, %pc_lo12(H__align.orlgth1)
	ld.w	$a1, $s1, 0
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	ld.w	$s0, $a0, %pc_lo12(H__align.orlgth2)
	ld.w	$a0, $s2, 0
.LBB2_20:
	slt	$a2, $a1, $s7
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $s7, $a2
	or	$s5, $a2, $a1
	slt	$a1, $a0, $s0
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s0, $a1
	or	$s0, $a1, $a0
	addi.w	$a0, $s5, 10
	addi.w	$a1, $s0, 10
	pcaddu18i	$ra, %call36(AllocateIntMtx)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(commonIP)
	ld.d	$a1, $a1, %got_pc_lo12(commonIP)
	st.d	$a0, $a1, 0
	st.w	$s5, $s1, 0
	st.w	$s0, $s2, 0
.LBB2_21:
	ld.d	$a1, $sp, 440                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(H__align.cpmx1)
	ld.d	$a2, $sp, 248                   # 8-byte Folded Reload
	movgr2fr.w	$fs0, $a2
	pcalau12i	$a2, %pc_hi20(H__align.ijp)
	st.d	$a2, $sp, 40                    # 8-byte Folded Spill
	st.d	$a0, $a2, %pc_lo12(H__align.ijp)
	ld.d	$s5, $sp, 144                   # 8-byte Folded Reload
	move	$a0, $s5
	ld.d	$s8, $sp, 472                   # 8-byte Folded Reload
	move	$a2, $s8
	ld.d	$s7, $sp, 120                   # 8-byte Folded Reload
	move	$a3, $s7
	ld.d	$s0, $sp, 128                   # 8-byte Folded Reload
	move	$a4, $s0
	pcaddu18i	$ra, %call36(cpmx_calc_new)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 432                   # 8-byte Folded Reload
	ld.d	$a1, $a0, %pc_lo12(H__align.cpmx2)
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 256                   # 8-byte Folded Reload
	move	$a2, $s6
	ld.d	$s1, $sp, 424                   # 8-byte Folded Reload
	move	$a3, $s1
	move	$a4, $s3
	pcaddu18i	$ra, %call36(cpmx_calc_new)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.ogcp1g)
	bnez	$s4, .LBB2_23
# %bb.22:
	move	$a1, $s0
	move	$a2, $s5
	move	$a3, $s8
	move	$a4, $s7
	pcaddu18i	$ra, %call36(st_OpeningGapCount)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.ogcp2g)
	move	$a1, $s3
	ld.d	$s4, $sp, 152                   # 8-byte Folded Reload
	move	$a2, $s4
	move	$a3, $s6
	move	$a4, $s1
	pcaddu18i	$ra, %call36(st_OpeningGapCount)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 280                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.fgcp1g)
	move	$a1, $s0
	move	$a2, $s5
	move	$a3, $s8
	move	$a4, $s7
	pcaddu18i	$ra, %call36(st_FinalGapCount_zure)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 288                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.fgcp2g)
	move	$a1, $s3
	move	$a2, $s4
	move	$a3, $s6
	move	$a4, $s1
	pcaddu18i	$ra, %call36(st_FinalGapCount_zure)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.gappat1)
	move	$a1, $s0
	move	$a2, $s5
	move	$a3, $s8
	move	$a4, $s7
	pcaddu18i	$ra, %call36(st_getGapPattern)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.gappat2)
	move	$a1, $s3
	move	$a2, $s4
	move	$a3, $s6
	move	$a4, $s1
	pcaddu18i	$ra, %call36(st_getGapPattern)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 312                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.digf1)
	move	$a1, $s0
	move	$a2, $s5
	move	$a3, $s8
	move	$a4, $s7
	pcaddu18i	$ra, %call36(getdigapfreq_st)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 352                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.digf2)
	move	$a1, $s3
	move	$a2, $s4
	move	$a3, $s6
	move	$a4, $s1
	pcaddu18i	$ra, %call36(getdigapfreq_st)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 464                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.diaf1)
	move	$a1, $s0
	move	$a2, $s5
	move	$a3, $s8
	move	$a4, $s7
	pcaddu18i	$ra, %call36(getdiaminofreq_x)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 448                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.diaf2)
	move	$a1, $s3
	move	$a2, $s4
	move	$a3, $s6
	move	$a4, $s1
	pcaddu18i	$ra, %call36(getdiaminofreq_x)
	jirl	$ra, $ra, 0
	b	.LBB2_24
.LBB2_23:
	ld.d	$a1, $fp, 32
	st.d	$a1, $sp, 248                   # 8-byte Folded Spill
	ld.d	$s8, $fp, 24
	ld.d	$s2, $fp, 16
	st.d	$s2, $sp, 264                   # 8-byte Folded Spill
	move	$a1, $s0
	move	$a2, $s5
	ld.d	$a3, $sp, 472                   # 8-byte Folded Reload
	move	$a4, $s7
	move	$a5, $s4
	move	$a6, $s8
	pcaddu18i	$ra, %call36(new_OpeningGapCount_zure)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.ogcp2g)
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 152                   # 8-byte Folded Reload
	move	$a2, $s3
	move	$a3, $s6
	move	$a4, $s1
	move	$a5, $s2
	move	$a6, $s8
	pcaddu18i	$ra, %call36(new_OpeningGapCount_zure)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 280                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.fgcp1g)
	move	$a1, $s0
	move	$a2, $s5
	ld.d	$a3, $sp, 472                   # 8-byte Folded Reload
	move	$a4, $s7
	move	$a5, $s4
	move	$a6, $s8
	pcaddu18i	$ra, %call36(new_FinalGapCount_zure)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 288                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.fgcp2g)
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	move	$a2, $s3
	move	$a3, $s6
	move	$a4, $s1
	move	$a5, $s4
	ld.d	$s2, $sp, 248                   # 8-byte Folded Reload
	move	$a6, $s2
	pcaddu18i	$ra, %call36(new_FinalGapCount_zure)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 312                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.digf1)
	move	$a1, $s0
	move	$a2, $s5
	ld.d	$a3, $sp, 472                   # 8-byte Folded Reload
	move	$a4, $s7
	move	$a5, $s4
	move	$a6, $s8
	pcaddu18i	$ra, %call36(getdigapfreq_part)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 352                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.digf2)
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	move	$a2, $s3
	move	$a3, $s6
	move	$a4, $s1
	ld.d	$a5, $sp, 264                   # 8-byte Folded Reload
	move	$a6, $s2
	pcaddu18i	$ra, %call36(getdigapfreq_part)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 464                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.diaf1)
	move	$a1, $s0
	move	$a2, $s5
	ld.d	$a3, $sp, 472                   # 8-byte Folded Reload
	move	$a4, $s7
	move	$a5, $s4
	move	$a6, $s8
	ld.d	$s8, $sp, 472                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(getdiaminofreq_part)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 448                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.diaf2)
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	move	$a2, $s3
	move	$a3, $s6
	move	$a4, $s1
	move	$a5, $s4
	move	$a6, $s2
	ld.d	$s3, $sp, 136                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(getdiaminofreq_part)
	jirl	$ra, $ra, 0
.LBB2_24:
	ld.d	$a0, $sp, 296                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.gapf1)
	ffint.s.w	$fa0, $fs0
	xvst	$xr0, $sp, 352                  # 32-byte Folded Spill
	move	$a1, $s0
	move	$a2, $s5
	move	$a3, $s8
	move	$a4, $s7
	pcaddu18i	$ra, %call36(getgapfreq)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 304                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.gapf2)
	move	$a1, $s3
	ld.d	$s2, $sp, 152                   # 8-byte Folded Reload
	move	$a2, $s2
	move	$a3, $s6
	move	$a4, $s1
	pcaddu18i	$ra, %call36(getgapfreq)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 320                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.gapz1)
	move	$a1, $s0
	move	$a2, $s5
	move	$a3, $s8
	move	$a4, $s7
	pcaddu18i	$ra, %call36(getgapfreq_zure)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 328                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.gapz2)
	move	$a1, $s3
	move	$a2, $s2
	move	$a3, $s6
	move	$a4, $s1
	pcaddu18i	$ra, %call36(getgapfreq_zure)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 456                   # 8-byte Folded Reload
	ld.d	$s3, $a0, %pc_lo12(H__align.w1)
	ld.d	$a0, $sp, 416                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.w2)
	st.d	$a0, $sp, 456                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 408                   # 8-byte Folded Reload
	ld.d	$s5, $a0, %pc_lo12(H__align.initverticalw)
	move	$s0, $s1
	ld.d	$a0, $sp, 432                   # 8-byte Folded Reload
	ld.d	$s8, $a0, %pc_lo12(H__align.cpmx2)
	ld.d	$a0, $sp, 440                   # 8-byte Folded Reload
	ld.d	$s6, $a0, %pc_lo12(H__align.cpmx1)
	move	$s1, $s7
	ld.d	$a0, $sp, 400                   # 8-byte Folded Reload
	ld.d	$s7, $a0, %pc_lo12(H__align.floatwork)
	ld.d	$a0, $sp, 336                   # 8-byte Folded Reload
	ld.d	$s4, $a0, %pc_lo12(H__align.intwork)
	ori	$a7, $zero, 1
	move	$a0, $s5
	move	$a1, $s8
	move	$a2, $s6
	move	$a3, $zero
	move	$a4, $s1
	move	$a5, $s7
	move	$a6, $s4
	pcaddu18i	$ra, %call36(match_calc)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(impmtx)
	st.d	$a0, $sp, 200                   # 8-byte Folded Spill
	ld.d	$t0, $sp, 232                   # 8-byte Folded Reload
	slli.d	$a1, $t0, 32
	pcalau12i	$a0, %pc_hi20(.LCPI2_2)
	st.d	$a0, $sp, 288                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	st.d	$s8, $sp, 408                   # 8-byte Folded Spill
	st.d	$s6, $sp, 400                   # 8-byte Folded Spill
	st.d	$s4, $sp, 416                   # 8-byte Folded Spill
	st.d	$a1, $sp, 432                   # 8-byte Folded Spill
	bnez	$a0, .LBB2_26
# %bb.25:                               # %.critedge
	ori	$a7, $zero, 1
	move	$a0, $s3
	move	$a1, $s6
	move	$a2, $s8
	move	$a3, $zero
	move	$s2, $s0
	move	$a4, $s0
	move	$a5, $s7
	move	$a6, $s4
	move	$s0, $t0
	pcaddu18i	$ra, %call36(match_calc)
	jirl	$ra, $ra, 0
	move	$t7, $s0
	xvld	$xr10, $sp, 352                 # 32-byte Folded Reload
	move	$s6, $s7
	move	$s7, $s2
	b	.LBB2_36
.LBB2_26:
	move	$s2, $s0
	move	$s4, $t0
	move	$s6, $s7
	ori	$a0, $zero, 1
	blt	$s1, $a0, .LBB2_29
# %bb.27:                               # %.lr.ph.i
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(impmtx)
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	bstrpick.d	$a1, $a1, 30, 0
	move	$a2, $s5
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
.LBB2_29:                               # %imp_match_out_vead_tateH.exit
	ori	$a7, $zero, 1
	ori	$s0, $zero, 1
	move	$a0, $s3
	ld.d	$a1, $sp, 400                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 408                   # 8-byte Folded Reload
	move	$a3, $zero
	move	$s7, $s2
	move	$a4, $s2
	move	$a5, $s6
	ld.d	$a6, $sp, 416                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(match_calc)
	jirl	$ra, $ra, 0
	bnez	$s2, .LBB2_31
# %bb.30:                               # %imp_match_out_veadH.exit.thread
	pcalau12i	$a0, %got_pc_hi20(outgap)
	ld.d	$a0, $a0, %got_pc_lo12(outgap)
	ld.w	$a0, $a0, 0
	xvld	$xr10, $sp, 352                 # 32-byte Folded Reload
	move	$t7, $s4
	beq	$a0, $s0, .LBB2_37
	b	.LBB2_47
.LBB2_31:                               # %iter.check
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(impmtx)
	ld.d	$a1, $a0, 0
	move	$t7, $s4
	bstrpick.d	$a0, $s4, 31, 0
	ori	$a2, $zero, 4
	xvld	$xr10, $sp, 352                 # 32-byte Folded Reload
	bltu	$a0, $a2, .LBB2_34
# %bb.32:                               # %vector.memcheck
	addi.w	$a2, $zero, -4
	lu32i.d	$a2, 3
	alsl.d	$a2, $t7, $a2, 2
	bstrpick.d	$a2, $a2, 33, 2
	slli.d	$a2, $a2, 2
	addi.d	$a2, $a2, 4
	add.d	$a3, $a1, $a2
	bgeu	$s3, $a3, .LBB2_96
# %bb.33:                               # %vector.memcheck
	add.d	$a2, $s3, $a2
	bgeu	$a1, $a2, .LBB2_96
.LBB2_34:
	move	$a2, $a1
	move	$a3, $t7
	move	$a4, $s3
	.p2align	4, , 16
.LBB2_35:                               # %.lr.ph.i507
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $a2, 0
	fld.s	$fa1, $a4, 0
	addi.w	$a3, $a3, -1
	addi.d	$a2, $a2, 4
	addi.d	$a0, $a4, 4
	fadd.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $a4, 0
	move	$a4, $a0
	bnez	$a3, .LBB2_35
.LBB2_36:                               # %imp_match_out_veadH.exit
	pcalau12i	$a0, %got_pc_hi20(outgap)
	ld.d	$a0, $a0, %got_pc_lo12(outgap)
	ld.w	$a1, $a0, 0
	ori	$a0, $zero, 1
	bne	$a1, $a0, .LBB2_40
.LBB2_37:                               # %.preheader650
	ori	$a0, $zero, 1
	bge	$s1, $a0, .LBB2_64
.LBB2_38:                               # %.preheader648
	bgtz	$s7, .LBB2_80
# %bb.39:                               # %.loopexit649.thread
	ld.d	$a0, $sp, 344                   # 8-byte Folded Reload
	ld.d	$t4, $a0, %pc_lo12(H__align.m)
	st.w	$zero, $t4, 0
	b	.LBB2_55
.LBB2_40:                               # %.preheader653
	blt	$s7, $a0, .LBB2_47
# %bb.41:                               # %.lr.ph669
	pcalau12i	$a0, %got_pc_hi20(offset)
	ld.d	$a0, $a0, %got_pc_lo12(offset)
	ld.w	$a0, $a0, 0
	addi.d	$a1, $t7, 1
	bstrpick.d	$a1, $a1, 31, 0
	addi.d	$a2, $a1, -1
	ori	$a4, $zero, 8
	ori	$a3, $zero, 1
	bltu	$a2, $a4, .LBB2_45
# %bb.42:                               # %vector.ph872
	move	$a4, $a2
	bstrins.d	$a4, $zero, 2, 0
	ori	$a5, $zero, 1
	move	$a3, $a2
	bstrins.d	$a3, $a5, 2, 0
	xvreplgr2vr.w	$xr0, $a0
	pcalau12i	$a5, %pc_hi20(.LCPI2_1)
	xvld	$xr1, $a5, %pc_lo12(.LCPI2_1)
	addi.d	$a5, $s3, 4
	lu52i.d	$a6, $zero, -1026
	xvreplgr2vr.d	$xr2, $a6
	move	$a6, $a4
	.p2align	4, , 16
.LBB2_43:                               # %vector.body875
                                        # =>This Inner Loop Header: Depth=1
	xvmul.w	$xr3, $xr0, $xr1
	xvst	$xr3, $sp, 608
	vld	$vr3, $sp, 624
	xvld	$xr4, $a5, 0
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
	movfr2gr.d	$a7, $fa6
	vreplvei.w	$vr6, $vr4, 1
	fcvt.d.s	$fa6, $fa6
	xvinsgr2vr.d	$xr7, $a7, 0
	movfr2gr.d	$a7, $fa6
	vreplvei.w	$vr6, $vr4, 2
	fcvt.d.s	$fa6, $fa6
	xvinsgr2vr.d	$xr7, $a7, 1
	movfr2gr.d	$a7, $fa6
	vld	$vr6, $sp, 656
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
	bnez	$a6, .LBB2_43
# %bb.44:                               # %middle.block880
	beq	$a2, $a4, .LBB2_47
.LBB2_45:                               # %scalar.ph.preheader
	mul.d	$a2, $a0, $a3
	alsl.d	$a4, $a3, $s3, 2
	sub.d	$a1, $a1, $a3
	vldi	$vr0, -800
	.p2align	4, , 16
.LBB2_46:                               # %scalar.ph
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
	bnez	$a1, .LBB2_46
.LBB2_47:                               # %.preheader651
	ori	$a1, $zero, 1
	blt	$s1, $a1, .LBB2_54
# %bb.48:                               # %.lr.ph672
	pcalau12i	$a0, %got_pc_hi20(offset)
	ld.d	$a0, $a0, %got_pc_lo12(offset)
	ld.w	$a0, $a0, 0
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	addi.d	$a2, $a2, 1
	bstrpick.d	$a2, $a2, 31, 0
	addi.d	$a3, $a2, -1
	ori	$a4, $zero, 8
	bltu	$a3, $a4, .LBB2_52
# %bb.49:                               # %vector.ph885
	move	$a4, $a3
	bstrins.d	$a4, $zero, 2, 0
	ori	$a5, $zero, 1
	move	$a1, $a3
	bstrins.d	$a1, $a5, 2, 0
	xvreplgr2vr.w	$xr0, $a0
	pcalau12i	$a5, %pc_hi20(.LCPI2_1)
	xvld	$xr1, $a5, %pc_lo12(.LCPI2_1)
	addi.d	$a5, $s5, 4
	lu52i.d	$a6, $zero, -1026
	xvreplgr2vr.d	$xr2, $a6
	move	$a6, $a4
	.p2align	4, , 16
.LBB2_50:                               # %vector.body890
                                        # =>This Inner Loop Header: Depth=1
	xvmul.w	$xr3, $xr0, $xr1
	xvst	$xr3, $sp, 544
	vld	$vr3, $sp, 560
	xvld	$xr4, $a5, 0
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
	movfr2gr.d	$a7, $fa6
	vreplvei.w	$vr6, $vr4, 1
	fcvt.d.s	$fa6, $fa6
	xvinsgr2vr.d	$xr7, $a7, 0
	movfr2gr.d	$a7, $fa6
	vreplvei.w	$vr6, $vr4, 2
	fcvt.d.s	$fa6, $fa6
	xvinsgr2vr.d	$xr7, $a7, 1
	movfr2gr.d	$a7, $fa6
	vld	$vr6, $sp, 592
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
	bnez	$a6, .LBB2_50
# %bb.51:                               # %middle.block897
	beq	$a3, $a4, .LBB2_54
.LBB2_52:                               # %scalar.ph883.preheader
	mul.d	$a3, $a0, $a1
	alsl.d	$a4, $a1, $s5, 2
	sub.d	$a1, $a2, $a1
	vldi	$vr0, -800
	.p2align	4, , 16
.LBB2_53:                               # %scalar.ph883
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
	bnez	$a1, .LBB2_53
.LBB2_54:                               # %.loopexit649
	ld.d	$a0, $sp, 344                   # 8-byte Folded Reload
	ld.d	$t4, $a0, %pc_lo12(H__align.m)
	ori	$a4, $zero, 1
	st.w	$zero, $t4, 0
	bge	$s7, $a4, .LBB2_57
.LBB2_55:
	ld.d	$t1, $sp, 408                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 400                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 416                   # 8-byte Folded Reload
	ori	$a0, $zero, 1
	ld.d	$s2, $sp, 432                   # 8-byte Folded Reload
	bnez	$s7, .LBB2_116
# %bb.56:
	movgr2fr.w	$fa0, $zero
	ori	$a1, $zero, 1
	st.d	$a1, $sp, 344                   # 8-byte Folded Spill
	b	.LBB2_117
.LBB2_57:                               # %iter.check904
	pcalau12i	$a0, %pc_hi20(H__align.mp)
	ld.d	$a0, $a0, %pc_lo12(H__align.mp)
	addi.d	$a1, $t7, 1
	bstrpick.d	$a1, $a1, 31, 0
	addi.d	$a2, $a1, -1
	ori	$a3, $zero, 4
	ld.d	$t1, $sp, 408                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 400                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 416                   # 8-byte Folded Reload
	bltu	$a2, $a3, .LBB2_112
# %bb.58:                               # %vector.memcheck900
	sub.d	$a3, $t4, $s3
	addi.d	$a3, $a3, 4
	ori	$a5, $zero, 64
	bltu	$a3, $a5, .LBB2_112
# %bb.59:                               # %vector.main.loop.iter.check906
	ori	$a4, $zero, 16
	lu12i.w	$a3, 287172
	bgeu	$a2, $a4, .LBB2_101
# %bb.60:
	move	$a5, $zero
.LBB2_61:                               # %vec.epilog.ph921
	move	$t3, $a2
	bstrins.d	$t3, $zero, 1, 0
	ori	$a7, $zero, 1
	move	$a4, $a2
	bstrins.d	$a4, $a7, 1, 0
	vreplvei.w	$vr0, $vr10, 0
	slli.d	$a7, $a5, 2
	addi.d	$t0, $a0, 4
	sub.d	$a5, $a5, $t3
	vrepli.b	$vr1, 0
	vreplgr2vr.w	$vr2, $a3
	.p2align	4, , 16
.LBB2_62:                               # %vec.epilog.vector.body929
                                        # =>This Inner Loop Header: Depth=1
	vldx	$vr3, $s3, $a7
	vstx	$vr1, $t0, $a7
	vfadd.s	$vr3, $vr3, $vr1
	vfmadd.s	$vr3, $vr0, $vr2, $vr3
	add.d	$a3, $t4, $a7
	vst	$vr3, $a3, 4
	addi.d	$a5, $a5, 4
	addi.d	$a7, $a7, 16
	bnez	$a5, .LBB2_62
# %bb.63:                               # %vec.epilog.middle.block934
	ld.d	$a6, $sp, 416                   # 8-byte Folded Reload
	bne	$a2, $t3, .LBB2_112
	b	.LBB2_114
.LBB2_64:                               # %.lr.ph676
	ld.d	$a1, $sp, 464                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(H__align.diaf1)
	ld.d	$a2, $sp, 304                   # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(H__align.gapf2)
	fcvt.d.s	$fa0, $ft2
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a3, $a3, %pc_lo12(H__align.gappat1)
	ld.d	$a4, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a4, $a4, %pc_lo12(H__align.gappat2)
	ld.d	$a5, $sp, 448                   # 8-byte Folded Reload
	ld.d	$a5, $a5, %pc_lo12(H__align.diaf2)
	ld.d	$a6, $sp, 104                   # 8-byte Folded Reload
	addi.d	$a6, $a6, 1
	bstrpick.d	$a6, $a6, 31, 0
	movgr2fr.w	$fa1, $zero
	vldi	$vr2, -912
	ori	$a7, $zero, 1
	b	.LBB2_67
	.p2align	4, , 16
.LBB2_65:                               # %countnocountx.exit
                                        #   in Loop: Header=BB2_67 Depth=1
	fcvt.d.s	$fa6, $fa6
	fmul.d	$fa5, $fa5, $fa6
	fcvt.d.s	$fa4, $fa4
	fmadd.d	$fa4, $fa5, $fa0, $fa4
	fcvt.s.d	$fa4, $fa4
	fneg.s	$fa5, $fa7
	fmadd.s	$fa4, $fa5, $ft2, $fa4
.LBB2_66:                               #   in Loop: Header=BB2_67 Depth=1
	alsl.d	$t0, $a0, $s5, 2
	fadd.s	$fa3, $fa3, $fa4
	fst.s	$fa3, $t0, 0
	addi.d	$a0, $a0, 1
	addi.d	$a7, $a7, 1
	beq	$a0, $a6, .LBB2_38
.LBB2_67:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_71 Depth 2
                                        #     Child Loop BB2_76 Depth 2
                                        #       Child Loop BB2_78 Depth 3
	slli.d	$t0, $a0, 2
	fldx.s	$fa3, $s5, $t0
	fadd.s	$fa3, $fa3, $fa1
	fstx.s	$fa3, $s5, $t0
	fldx.s	$fa4, $a1, $t0
	fld.s	$fa5, $a2, 0
	slli.d	$t0, $a0, 3
	ldx.d	$t2, $a3, $t0
	fcvt.d.s	$fa4, $fa4
	fcvt.d.s	$fa5, $fa5
	fld.s	$fa6, $t2, 4
	fsub.d	$fa5, $fa2, $fa5
	fmul.d	$fa4, $fa5, $fa4
	fmul.d	$fa4, $fa4, $fa0
	fcmp.ceq.s	$fcc0, $fa6, $fa1
	fcvt.s.d	$fa4, $fa4
	bcnez	$fcc0, .LBB2_66
# %bb.68:                               #   in Loop: Header=BB2_67 Depth=1
	ld.w	$t0, $t2, 8
	fmov.s	$fa7, $fa1
	beqz	$t0, .LBB2_65
# %bb.69:                               # %.lr.ph.i508.preheader
                                        #   in Loop: Header=BB2_67 Depth=1
	ld.d	$t1, $a4, 0
	fld.s	$ft0, $a5, 0
	addi.d	$t2, $t2, 16
	move	$t3, $t2
	move	$t4, $t0
	fmov.s	$fa7, $fa1
	b	.LBB2_71
	.p2align	4, , 16
.LBB2_70:                               #   in Loop: Header=BB2_71 Depth=2
	ld.w	$t4, $t3, 0
	addi.d	$t3, $t3, 8
	beqz	$t4, .LBB2_73
.LBB2_71:                               # %.lr.ph.i508
                                        #   Parent Loop BB2_67 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	bstrpick.d	$t4, $t4, 31, 0
	bne	$a0, $t4, .LBB2_70
# %bb.72:                               #   in Loop: Header=BB2_71 Depth=2
	fld.s	$fa7, $t3, -4
	fmul.s	$fa7, $ft0, $fa7
	b	.LBB2_70
	.p2align	4, , 16
.LBB2_73:                               # %.preheader28.i
                                        #   in Loop: Header=BB2_67 Depth=1
	ld.w	$t4, $t1, 8
	beqz	$t4, .LBB2_65
# %bb.74:                               #   in Loop: Header=BB2_67 Depth=1
	addi.d	$t5, $t1, 8
	b	.LBB2_76
	.p2align	4, , 16
.LBB2_75:                               # %..loopexit_crit_edge.i
                                        #   in Loop: Header=BB2_76 Depth=2
	ld.w	$t4, $t1, 8
	addi.d	$t5, $t1, 8
	beqz	$t4, .LBB2_65
.LBB2_76:                               # %.preheader.i
                                        #   Parent Loop BB2_67 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_78 Depth 3
	move	$t3, $t1
	move	$t1, $t5
	add.w	$t4, $t4, $a7
	move	$t5, $t2
	move	$t6, $t0
	b	.LBB2_78
	.p2align	4, , 16
.LBB2_77:                               #   in Loop: Header=BB2_78 Depth=3
	ld.w	$t6, $t5, 0
	addi.d	$t5, $t5, 8
	beqz	$t6, .LBB2_75
.LBB2_78:                               #   Parent Loop BB2_67 Depth=1
                                        #     Parent Loop BB2_76 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	bne	$t4, $t6, .LBB2_77
# %bb.79:                               #   in Loop: Header=BB2_78 Depth=3
	fld.s	$ft0, $t3, 12
	fld.s	$ft1, $t5, -4
	fmadd.s	$fa7, $ft0, $ft1, $fa7
	b	.LBB2_77
.LBB2_80:                               # %.lr.ph680
	ld.d	$a0, $sp, 448                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.diaf2)
	ld.d	$a1, $sp, 296                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(H__align.gapf1)
	fcvt.d.s	$fa0, $ft2
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(H__align.gappat2)
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a3, $a3, %pc_lo12(H__align.gappat1)
	ld.d	$a4, $sp, 464                   # 8-byte Folded Reload
	ld.d	$a4, $a4, %pc_lo12(H__align.diaf1)
	addi.d	$a5, $t7, 1
	bstrpick.d	$a5, $a5, 31, 0
	ori	$a6, $zero, 1
	movgr2fr.w	$fa1, $zero
	vldi	$vr2, -912
	ori	$a7, $zero, 1
	b	.LBB2_83
	.p2align	4, , 16
.LBB2_81:                               # %countnocountx.exit532
                                        #   in Loop: Header=BB2_83 Depth=1
	fcvt.d.s	$fa6, $fa6
	fmul.d	$fa5, $fa5, $fa6
	fcvt.d.s	$fa4, $fa4
	fmadd.d	$fa4, $fa5, $fa0, $fa4
	fcvt.s.d	$fa4, $fa4
	fneg.s	$fa5, $fa7
	fmadd.s	$fa4, $fa5, $ft2, $fa4
.LBB2_82:                               #   in Loop: Header=BB2_83 Depth=1
	alsl.d	$t0, $a6, $s3, 2
	fadd.s	$fa3, $fa3, $fa4
	fst.s	$fa3, $t0, 0
	addi.d	$a6, $a6, 1
	addi.d	$a7, $a7, 1
	beq	$a6, $a5, .LBB2_54
.LBB2_83:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_87 Depth 2
                                        #     Child Loop BB2_92 Depth 2
                                        #       Child Loop BB2_94 Depth 3
	slli.d	$t0, $a6, 2
	fldx.s	$fa3, $s3, $t0
	fadd.s	$fa3, $fa3, $fa1
	fstx.s	$fa3, $s3, $t0
	fldx.s	$fa4, $a0, $t0
	fld.s	$fa5, $a1, 0
	slli.d	$t0, $a6, 3
	ldx.d	$t2, $a2, $t0
	fcvt.d.s	$fa4, $fa4
	fcvt.d.s	$fa5, $fa5
	fld.s	$fa6, $t2, 4
	fsub.d	$fa5, $fa2, $fa5
	fmul.d	$fa4, $fa5, $fa4
	fmul.d	$fa4, $fa4, $fa0
	fcmp.ceq.s	$fcc0, $fa6, $fa1
	fcvt.s.d	$fa4, $fa4
	bcnez	$fcc0, .LBB2_82
# %bb.84:                               #   in Loop: Header=BB2_83 Depth=1
	ld.w	$t0, $t2, 8
	fmov.s	$fa7, $fa1
	beqz	$t0, .LBB2_81
# %bb.85:                               # %.lr.ph.i512.preheader
                                        #   in Loop: Header=BB2_83 Depth=1
	ld.d	$t1, $a3, 0
	fld.s	$ft0, $a4, 0
	addi.d	$t2, $t2, 16
	move	$t3, $t2
	move	$t4, $t0
	fmov.s	$fa7, $fa1
	b	.LBB2_87
	.p2align	4, , 16
.LBB2_86:                               #   in Loop: Header=BB2_87 Depth=2
	ld.w	$t4, $t3, 0
	addi.d	$t3, $t3, 8
	beqz	$t4, .LBB2_89
.LBB2_87:                               # %.lr.ph.i512
                                        #   Parent Loop BB2_83 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	bstrpick.d	$t4, $t4, 31, 0
	bne	$a6, $t4, .LBB2_86
# %bb.88:                               #   in Loop: Header=BB2_87 Depth=2
	fld.s	$fa7, $t3, -4
	fmul.s	$fa7, $ft0, $fa7
	b	.LBB2_86
	.p2align	4, , 16
.LBB2_89:                               # %.preheader28.i517
                                        #   in Loop: Header=BB2_83 Depth=1
	ld.w	$t4, $t1, 8
	beqz	$t4, .LBB2_81
# %bb.90:                               #   in Loop: Header=BB2_83 Depth=1
	addi.d	$t5, $t1, 8
	b	.LBB2_92
	.p2align	4, , 16
.LBB2_91:                               # %..loopexit_crit_edge.i528
                                        #   in Loop: Header=BB2_92 Depth=2
	ld.w	$t4, $t1, 8
	addi.d	$t5, $t1, 8
	beqz	$t4, .LBB2_81
.LBB2_92:                               # %.preheader.i520
                                        #   Parent Loop BB2_83 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_94 Depth 3
	move	$t3, $t1
	move	$t1, $t5
	add.w	$t4, $t4, $a7
	move	$t5, $t2
	move	$t6, $t0
	b	.LBB2_94
	.p2align	4, , 16
.LBB2_93:                               #   in Loop: Header=BB2_94 Depth=3
	ld.w	$t6, $t5, 0
	addi.d	$t5, $t5, 8
	beqz	$t6, .LBB2_91
.LBB2_94:                               #   Parent Loop BB2_83 Depth=1
                                        #     Parent Loop BB2_92 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	bne	$t4, $t6, .LBB2_93
# %bb.95:                               #   in Loop: Header=BB2_94 Depth=3
	fld.s	$ft0, $t3, 12
	fld.s	$ft1, $t5, -4
	fmadd.s	$fa7, $ft0, $ft1, $fa7
	b	.LBB2_93
.LBB2_96:                               # %vector.main.loop.iter.check
	ori	$a2, $zero, 16
	bgeu	$a0, $a2, .LBB2_105
# %bb.97:
	move	$a5, $zero
.LBB2_98:                               # %vec.epilog.ph
	bstrpick.d	$a4, $t7, 31, 2
	slli.d	$a6, $a4, 2
	alsl.d	$a2, $a4, $a1, 4
	andi	$a3, $t7, 3
	alsl.d	$a4, $a4, $s3, 4
	alsl.d	$a7, $a5, $s3, 2
	alsl.d	$a1, $a5, $a1, 2
	sub.d	$a5, $a5, $a6
	.p2align	4, , 16
.LBB2_99:                               # %vec.epilog.vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a1, 0
	vld	$vr1, $a7, 0
	vfadd.s	$vr0, $vr0, $vr1
	vst	$vr0, $a7, 0
	addi.d	$a7, $a7, 16
	addi.d	$a5, $a5, 4
	addi.d	$a1, $a1, 16
	bnez	$a5, .LBB2_99
# %bb.100:                              # %vec.epilog.middle.block
	bne	$a0, $a6, .LBB2_35
	b	.LBB2_36
.LBB2_101:                              # %vector.ph907
	move	$a4, $zero
	move	$a5, $a2
	bstrins.d	$a5, $zero, 3, 0
	xvreplve0.w	$xr0, $xr10
	addi.d	$a6, $a0, 36
	xvrepli.b	$xr1, 0
	xvreplgr2vr.w	$xr2, $a3
	move	$a7, $a5
	.p2align	4, , 16
.LBB2_102:                              # %vector.body912
                                        # =>This Inner Loop Header: Depth=1
	add.d	$t0, $s3, $a4
	xvldx	$xr3, $s3, $a4
	xvld	$xr4, $t0, 32
	add.d	$t0, $a6, $a4
	xvst	$xr1, $t0, -32
	xvstx	$xr1, $a6, $a4
	xvfadd.s	$xr3, $xr3, $xr1
	xvfadd.s	$xr4, $xr4, $xr1
	xvfmadd.s	$xr3, $xr0, $xr2, $xr3
	xvfmadd.s	$xr4, $xr0, $xr2, $xr4
	add.d	$t0, $t4, $a4
	xvst	$xr3, $t0, 4
	xvst	$xr4, $t0, 36
	addi.d	$a7, $a7, -16
	addi.d	$a4, $a4, 64
	bnez	$a7, .LBB2_102
# %bb.103:                              # %middle.block917
	bne	$a2, $a5, .LBB2_110
# %bb.104:
	move	$a0, $zero
	ld.d	$a6, $sp, 416                   # 8-byte Folded Reload
	b	.LBB2_115
.LBB2_105:                              # %vector.ph
	bstrpick.d	$a2, $t7, 31, 4
	slli.d	$a5, $a2, 4
	addi.d	$a2, $s3, 32
	addi.d	$a3, $a1, 32
	move	$a4, $a5
	.p2align	4, , 16
.LBB2_106:                              # %vector.body
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
	bnez	$a4, .LBB2_106
# %bb.107:                              # %middle.block
	beq	$a0, $a5, .LBB2_36
# %bb.108:                              # %vec.epilog.iter.check
	andi	$a2, $t7, 12
	bnez	$a2, .LBB2_98
# %bb.109:
	alsl.d	$a2, $a5, $a1, 2
	sub.d	$a3, $t7, $a5
	alsl.d	$a4, $a5, $s3, 2
	b	.LBB2_35
.LBB2_110:                              # %vec.epilog.iter.check922
	andi	$a4, $a2, 12
	ld.d	$a6, $sp, 416                   # 8-byte Folded Reload
	bnez	$a4, .LBB2_61
# %bb.111:
	addi.d	$a4, $a5, 1
.LBB2_112:                              # %vec.epilog.scalar.ph920.preheader
	addi.d	$a2, $s3, -4
	ld.d	$a3, $sp, 288                   # 8-byte Folded Reload
	fld.s	$fa0, $a3, %pc_lo12(.LCPI2_2)
	slli.d	$a3, $a4, 2
	sub.d	$a1, $a1, $a4
	movgr2fr.w	$fa1, $zero
	.p2align	4, , 16
.LBB2_113:                              # %vec.epilog.scalar.ph920
                                        # =>This Inner Loop Header: Depth=1
	fldx.s	$fa2, $a2, $a3
	stx.w	$zero, $a0, $a3
	fadd.s	$fa2, $fa2, $fa1
	fmadd.s	$fa2, $ft2, $fa0, $fa2
	fstx.s	$fa2, $t4, $a3
	addi.d	$a1, $a1, -1
	addi.d	$a3, $a3, 4
	bnez	$a1, .LBB2_113
.LBB2_114:
	move	$a0, $zero
.LBB2_115:                              # %._crit_edge685.thread
	ld.d	$s2, $sp, 432                   # 8-byte Folded Reload
.LBB2_116:                              # %._crit_edge685.thread
	ori	$a1, $zero, 0
	lu32i.d	$a1, -1
	add.d	$a1, $s2, $a1
	srai.d	$a1, $a1, 30
	fldx.s	$fa0, $s3, $a1
	st.d	$a0, $sp, 344                   # 8-byte Folded Spill
	move	$a0, $zero
.LBB2_117:
	pcalau12i	$a1, %got_pc_hi20(outgap)
	ld.d	$a1, $a1, %got_pc_lo12(outgap)
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	ld.w	$a1, $a1, 0
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a4, $a2, %pc_lo12(H__align.lastverticalw)
	sltu	$a2, $zero, $a1
	ld.d	$a3, $sp, 104                   # 8-byte Folded Reload
	add.w	$a3, $a2, $a3
	ori	$a2, $zero, 2
	st.d	$a4, $sp, 336                   # 8-byte Folded Spill
	fst.s	$fa0, $a4, 0
	st.d	$a3, $sp, 328                   # 8-byte Folded Spill
	blt	$a3, $a2, .LBB2_176
# %bb.118:                              # %.lr.ph706
	st.d	$t4, $sp, 280                   # 8-byte Folded Spill
	st.d	$s6, $sp, 320                   # 8-byte Folded Spill
	st.d	$s5, $sp, 440                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	sltui	$a1, $a1, 1
	or	$a0, $a1, $a0
	st.d	$a0, $sp, 312                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(impmtx)
	st.d	$a0, $sp, 272                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.ijp)
	st.d	$a0, $sp, 472                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(H__align.mp)
	ld.d	$a0, $a0, %pc_lo12(H__align.mp)
	st.d	$a0, $sp, 264                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s5, $a0, %pc_lo12(H__align.gappat2)
	ld.d	$a0, $sp, 464                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.diaf1)
	st.d	$a0, $sp, 256                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.gappat1)
	st.d	$a0, $sp, 248                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 448                   # 8-byte Folded Reload
	ld.d	$s1, $a0, %pc_lo12(H__align.diaf2)
	ld.d	$a0, $sp, 296                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.gapf1)
	st.d	$a0, $sp, 240                   # 8-byte Folded Spill
	fcvt.d.s	$fs1, $ft2
	ld.d	$a0, $sp, 304                   # 8-byte Folded Reload
	ld.d	$s0, $a0, %pc_lo12(H__align.gapf2)
	ori	$a0, $zero, 0
	lu32i.d	$a0, -1
	add.d	$a0, $s2, $a0
	srai.d	$a0, $a0, 30
	st.d	$a0, $sp, 304                   # 8-byte Folded Spill
	addi.d	$a0, $t7, 1
	bstrpick.d	$s4, $a0, 31, 0
	addi.w	$a0, $t7, -1
	st.d	$a0, $sp, 296                   # 8-byte Folded Spill
	bstrpick.d	$a0, $a0, 31, 0
	slli.d	$a1, $a0, 2
	addi.d	$a1, $a1, 4
	st.d	$a1, $sp, 224                   # 8-byte Folded Spill
	addi.d	$a1, $a0, 1
	bstrpick.d	$a0, $a1, 32, 4
	slli.d	$a2, $a0, 4
	slli.d	$a0, $a0, 6
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	st.d	$a2, $sp, 216                   # 8-byte Folded Spill
	sub.d	$a0, $t7, $a2
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	andi	$a0, $a1, 12
	st.d	$a0, $sp, 160                   # 8-byte Folded Spill
	st.d	$a1, $sp, 208                   # 8-byte Folded Spill
	bstrpick.d	$a0, $a1, 32, 2
	slli.d	$a1, $a0, 2
	slli.d	$a0, $a0, 4
	st.d	$a0, $sp, 184                   # 8-byte Folded Spill
	sub.d	$a0, $t7, $a1
	st.d	$a0, $sp, 176                   # 8-byte Folded Spill
	st.d	$a1, $sp, 192                   # 8-byte Folded Spill
	sub.d	$a0, $zero, $a1
	st.d	$a0, $sp, 168                   # 8-byte Folded Spill
	movgr2fr.w	$fs2, $zero
	ori	$s6, $zero, 1
	fmov.s	$fs0, $fs2
	move	$a2, $t1
	b	.LBB2_120
	.p2align	4, , 16
.LBB2_119:                              # %._crit_edge698
                                        #   in Loop: Header=BB2_120 Depth=1
	ld.d	$a0, $sp, 304                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 448                   # 8-byte Folded Reload
	fldx.s	$fa0, $a3, $a0
	addi.d	$s6, $s6, 1
	ld.d	$a0, $sp, 336                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 432                   # 8-byte Folded Reload
	fstx.s	$fa0, $a0, $a1
	move	$s3, $a3
	ld.d	$a2, $sp, 408                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 400                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 416                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 328                   # 8-byte Folded Reload
	beq	$s6, $a0, .LBB2_177
.LBB2_120:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_169 Depth 2
                                        #     Child Loop BB2_173 Depth 2
                                        #     Child Loop BB2_125 Depth 2
                                        #     Child Loop BB2_129 Depth 2
                                        #       Child Loop BB2_135 Depth 3
                                        #       Child Loop BB2_146 Depth 3
                                        #         Child Loop BB2_148 Depth 4
                                        #       Child Loop BB2_151 Depth 3
                                        #       Child Loop BB2_156 Depth 3
                                        #         Child Loop BB2_158 Depth 4
	addi.d	$a0, $s6, -1
	st.d	$a0, $sp, 464                   # 8-byte Folded Spill
	slli.d	$a0, $a0, 2
	ld.d	$a1, $sp, 440                   # 8-byte Folded Reload
	fldx.s	$fa0, $a1, $a0
	ld.d	$s2, $sp, 456                   # 8-byte Folded Reload
	st.d	$s3, $sp, 456                   # 8-byte Folded Spill
	fst.s	$fa0, $s3, 0
	move	$a0, $s2
	move	$a1, $t2
	move	$a3, $s6
	ld.d	$a4, $sp, 424                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 320                   # 8-byte Folded Reload
	move	$a7, $zero
	pcaddu18i	$ra, %call36(match_calc)
	jirl	$ra, $ra, 0
	slli.d	$a3, $s6, 3
	ld.d	$a0, $sp, 312                   # 8-byte Folded Reload
	bnez	$a0, .LBB2_126
# %bb.121:                              # %iter.check947
                                        #   in Loop: Header=BB2_120 Depth=1
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	ldx.d	$a2, $a0, $a3
	ld.d	$a0, $sp, 296                   # 8-byte Folded Reload
	ori	$a1, $zero, 3
	bltu	$a0, $a1, .LBB2_124
# %bb.122:                              # %vector.memcheck938
                                        #   in Loop: Header=BB2_120 Depth=1
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	add.d	$a0, $a2, $a1
	bgeu	$s2, $a0, .LBB2_166
# %bb.123:                              # %vector.memcheck938
                                        #   in Loop: Header=BB2_120 Depth=1
	add.d	$a0, $s2, $a1
	bgeu	$a2, $a0, .LBB2_166
.LBB2_124:                              #   in Loop: Header=BB2_120 Depth=1
	move	$a0, $a2
	ld.d	$a2, $sp, 232                   # 8-byte Folded Reload
	move	$a1, $s2
	.p2align	4, , 16
.LBB2_125:                              # %.lr.ph.i535
                                        #   Parent Loop BB2_120 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.s	$fa0, $a0, 0
	fld.s	$fa1, $a1, 0
	addi.w	$a2, $a2, -1
	addi.d	$a0, $a0, 4
	addi.d	$a4, $a1, 4
	fadd.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $a1, 0
	move	$a1, $a4
	bnez	$a2, .LBB2_125
.LBB2_126:                              # %imp_match_out_veadH.exit540
                                        #   in Loop: Header=BB2_120 Depth=1
	slli.d	$a1, $s6, 2
	ld.d	$a0, $sp, 440                   # 8-byte Folded Reload
	st.d	$a1, $sp, 432                   # 8-byte Folded Spill
	fldx.s	$fa0, $a0, $a1
	st.d	$s2, $sp, 448                   # 8-byte Folded Spill
	fst.s	$fa0, $s2, 0
	xvld	$xr11, $sp, 352                 # 32-byte Folded Reload
	ld.d	$a0, $sp, 344                   # 8-byte Folded Reload
	vldi	$vr12, -912
	bnez	$a0, .LBB2_119
# %bb.127:                              # %.lr.ph697
                                        #   in Loop: Header=BB2_120 Depth=1
	ld.d	$t4, $sp, 456                   # 8-byte Folded Reload
	fld.s	$fa0, $t4, 0
	ld.d	$a0, $sp, 288                   # 8-byte Folded Reload
	fld.s	$fa1, $a0, %pc_lo12(.LCPI2_2)
	move	$a1, $zero
	fadd.s	$fa0, $fa0, $fs2
	fmadd.s	$fa0, $ft3, $fa1, $fa0
	ld.d	$a0, $sp, 248                   # 8-byte Folded Reload
	ldx.d	$a0, $a0, $a3
	ld.d	$a2, $sp, 472                   # 8-byte Folded Reload
	ldx.d	$a3, $a2, $a3
	ld.d	$a2, $sp, 256                   # 8-byte Folded Reload
	alsl.d	$a4, $s6, $a2, 2
	ld.d	$a2, $sp, 240                   # 8-byte Folded Reload
	alsl.d	$a5, $s6, $a2, 2
	addi.d	$a6, $a0, 8
	addi.d	$a7, $a0, 16
	ori	$t0, $zero, 1
	ld.d	$t1, $sp, 448                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 280                   # 8-byte Folded Reload
	ld.d	$t3, $sp, 264                   # 8-byte Folded Reload
	b	.LBB2_129
	.p2align	4, , 16
.LBB2_128:                              #   in Loop: Header=BB2_129 Depth=2
	addi.d	$t1, $t1, 4
	fcmp.cult.s	$fcc0, $fa1, $fa0
	addi.d	$a2, $t0, -1
	fsel	$fa0, $fa1, $fa0, $fcc0
	movcf2gr	$t5, $fcc0
	fld.s	$fa1, $t1, 0
	maskeqz	$a1, $a1, $t5
	masknez	$a2, $a2, $t5
	or	$a1, $a1, $a2
	fadd.s	$fa1, $fs0, $fa1
	fst.s	$fa1, $t1, 0
	addi.d	$t0, $t0, 1
	addi.d	$t4, $t4, 4
	beq	$t0, $s4, .LBB2_119
.LBB2_129:                              #   Parent Loop BB2_120 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_135 Depth 3
                                        #       Child Loop BB2_146 Depth 3
                                        #         Child Loop BB2_148 Depth 4
                                        #       Child Loop BB2_151 Depth 3
                                        #       Child Loop BB2_156 Depth 3
                                        #         Child Loop BB2_158 Depth 4
	slli.d	$a2, $t0, 3
	ldx.d	$t5, $s5, $a2
	fld.s	$fa4, $t5, 4
	fld.s	$fa1, $t4, 0
	fcmp.ceq.s	$fcc0, $fa4, $fs2
	fmov.s	$fa5, $fa1
	bcnez	$fcc0, .LBB2_131
# %bb.130:                              #   in Loop: Header=BB2_129 Depth=2
	fld.s	$fa2, $a4, 0
	fmul.s	$fa2, $fa4, $fa2
	fmul.s	$fa2, $fa2, $ft3
	fadd.s	$fa5, $fa1, $fa2
.LBB2_131:                              # %._crit_edge815
                                        #   in Loop: Header=BB2_129 Depth=2
	addi.d	$a3, $a3, 4
	slli.d	$t6, $t0, 2
	fldx.s	$fa2, $s1, $t6
	fld.s	$fa6, $a5, 0
	fld.s	$fa3, $a0, 4
	st.w	$zero, $a3, 0
	fcvt.d.s	$ft0, $fa2
	fcvt.d.s	$fa6, $fa6
	fsub.d	$fa7, $ft4, $fa6
	fmul.d	$fa6, $fa7, $ft0
	fmul.d	$fa6, $fa6, $fs1
	fcvt.s.d	$fa6, $fa6
	bcnez	$fcc0, .LBB2_139
# %bb.132:                              #   in Loop: Header=BB2_129 Depth=2
	ld.w	$s2, $t5, 8
	fmov.s	$ft0, $fs2
	beqz	$s2, .LBB2_138
# %bb.133:                              # %.lr.ph.i542.preheader
                                        #   in Loop: Header=BB2_129 Depth=2
	fld.s	$ft1, $a4, 0
	nor	$a2, $a1, $zero
	addi.d	$s7, $t5, 16
	add.w	$s3, $t0, $a2
	move	$a2, $s7
	move	$t8, $s2
	fmov.s	$ft0, $fs2
	b	.LBB2_135
	.p2align	4, , 16
.LBB2_134:                              #   in Loop: Header=BB2_135 Depth=3
	ld.w	$t8, $a2, 0
	addi.d	$a2, $a2, 8
	beqz	$t8, .LBB2_137
.LBB2_135:                              # %.lr.ph.i542
                                        #   Parent Loop BB2_120 Depth=1
                                        #     Parent Loop BB2_129 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	bne	$t8, $s3, .LBB2_134
# %bb.136:                              #   in Loop: Header=BB2_135 Depth=3
	fld.s	$ft0, $a2, -4
	fmul.s	$ft0, $ft1, $ft0
	b	.LBB2_134
	.p2align	4, , 16
.LBB2_137:                              # %.preheader28.i547
                                        #   in Loop: Header=BB2_129 Depth=2
	ld.w	$t8, $a6, 0
	move	$s8, $a6
	move	$a2, $a0
	bnez	$t8, .LBB2_146
.LBB2_138:                              # %countnocountx.exit562
                                        #   in Loop: Header=BB2_129 Depth=2
	fcvt.d.s	$ft1, $fa4
	fmul.d	$fa7, $fa7, $ft1
	fcvt.d.s	$fa6, $fa6
	fmadd.d	$fa6, $fa7, $fs1, $fa6
	fcvt.s.d	$fa6, $fa6
	fneg.s	$fa7, $ft0
	fmadd.s	$fa6, $fa7, $ft3, $fa6
.LBB2_139:                              #   in Loop: Header=BB2_129 Depth=2
	fmul.s	$fa7, $fa3, $fa2
	fmul.s	$fa7, $fa7, $ft3
	fadd.s	$fa7, $fa5, $fa7
	fcmp.cune.s	$fcc0, $fa3, $fs2
	fsel	$fa5, $fa5, $fa7, $fcc0
	fmul.s	$fa4, $fa4, $fa3
	fmul.s	$fa4, $fa4, $ft3
	fadd.s	$fs0, $fa4, $fa5
	fadd.s	$fa4, $fa6, $fa0
	fcmp.cule.s	$fcc0, $fa4, $fs0
	bcnez	$fcc0, .LBB2_141
# %bb.140:                              #   in Loop: Header=BB2_129 Depth=2
	sub.d	$a2, $a1, $t0
	st.w	$a2, $a3, 0
	fmov.s	$fs0, $fa4
.LBB2_141:                              #   in Loop: Header=BB2_129 Depth=2
	fld.s	$fa4, $a4, 0
	fldx.s	$fa5, $s0, $t6
	addi.d	$t3, $t3, 4
	fcvt.d.s	$fa4, $fa4
	fcvt.d.s	$fa5, $fa5
	fsub.d	$fa5, $ft4, $fa5
	fmul.d	$fa4, $fa5, $fa4
	fmul.d	$fa4, $fa4, $fs1
	fcmp.ceq.s	$fcc0, $fa3, $fs2
	fcvt.s.d	$fa4, $fa4
	bcnez	$fcc0, .LBB2_162
# %bb.142:                              #   in Loop: Header=BB2_129 Depth=2
	ld.w	$a2, $t3, 0
	slli.d	$t6, $a2, 3
	ld.d	$t7, $sp, 472                   # 8-byte Folded Reload
	ldx.d	$t6, $t7, $t6
	fcvt.d.s	$fa3, $fa3
	alsl.d	$t6, $t0, $t6, 2
	ld.w	$t6, $t6, -4
	fmul.d	$fa3, $fa5, $fa3
	fcvt.d.s	$fa4, $fa4
	fmadd.d	$fa3, $fa3, $fs1, $fa4
	fcvt.s.d	$fa4, $fa3
	bnez	$t6, .LBB2_162
# %bb.143:                              #   in Loop: Header=BB2_129 Depth=2
	ld.w	$t6, $a6, 0
	beqz	$t6, .LBB2_160
# %bb.144:                              # %.lr.ph.i564.preheader
                                        #   in Loop: Header=BB2_129 Depth=2
	nor	$a2, $a2, $zero
	add.w	$t7, $s6, $a2
	movgr2fr.w	$fa3, $zero
	move	$a2, $a7
	move	$t8, $t6
	b	.LBB2_151
	.p2align	4, , 16
.LBB2_145:                              # %..loopexit_crit_edge.i558
                                        #   in Loop: Header=BB2_146 Depth=3
	ld.w	$t8, $a2, 8
	addi.d	$s8, $a2, 8
	beqz	$t8, .LBB2_138
.LBB2_146:                              # %.preheader.i550
                                        #   Parent Loop BB2_120 Depth=1
                                        #     Parent Loop BB2_129 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB2_148 Depth 4
	move	$ra, $a2
	move	$a2, $s8
	add.w	$s8, $t8, $s3
	move	$t8, $s7
	move	$t7, $s2
	b	.LBB2_148
	.p2align	4, , 16
.LBB2_147:                              #   in Loop: Header=BB2_148 Depth=4
	ld.w	$t7, $t8, 0
	addi.d	$t8, $t8, 8
	beqz	$t7, .LBB2_145
.LBB2_148:                              #   Parent Loop BB2_120 Depth=1
                                        #     Parent Loop BB2_129 Depth=2
                                        #       Parent Loop BB2_146 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	bne	$s8, $t7, .LBB2_147
# %bb.149:                              #   in Loop: Header=BB2_148 Depth=4
	fld.s	$ft1, $ra, 12
	fld.s	$ft2, $t8, -4
	fmadd.s	$ft0, $ft1, $ft2, $ft0
	b	.LBB2_147
	.p2align	4, , 16
.LBB2_150:                              #   in Loop: Header=BB2_151 Depth=3
	ld.w	$t8, $a2, 0
	addi.d	$a2, $a2, 8
	beqz	$t8, .LBB2_153
.LBB2_151:                              # %.lr.ph.i564
                                        #   Parent Loop BB2_120 Depth=1
                                        #     Parent Loop BB2_129 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	bne	$t8, $t7, .LBB2_150
# %bb.152:                              #   in Loop: Header=BB2_151 Depth=3
	fld.s	$fa3, $a2, -4
	fmul.s	$fa3, $fa2, $fa3
	b	.LBB2_150
.LBB2_153:                              # %.preheader28.i569
                                        #   in Loop: Header=BB2_129 Depth=2
	ld.w	$t8, $t5, 8
	beqz	$t8, .LBB2_161
# %bb.154:                              #   in Loop: Header=BB2_129 Depth=2
	addi.d	$s3, $t5, 8
	b	.LBB2_156
	.p2align	4, , 16
.LBB2_155:                              # %..loopexit_crit_edge.i580
                                        #   in Loop: Header=BB2_156 Depth=3
	ld.w	$t8, $t5, 8
	addi.d	$s3, $t5, 8
	beqz	$t8, .LBB2_161
.LBB2_156:                              # %.preheader.i572
                                        #   Parent Loop BB2_120 Depth=1
                                        #     Parent Loop BB2_129 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB2_158 Depth 4
	move	$a2, $t5
	move	$t5, $s3
	add.w	$t8, $t8, $t7
	move	$s3, $a7
	move	$s2, $t6
	b	.LBB2_158
	.p2align	4, , 16
.LBB2_157:                              #   in Loop: Header=BB2_158 Depth=4
	ld.w	$s2, $s3, 0
	addi.d	$s3, $s3, 8
	beqz	$s2, .LBB2_155
.LBB2_158:                              #   Parent Loop BB2_120 Depth=1
                                        #     Parent Loop BB2_129 Depth=2
                                        #       Parent Loop BB2_156 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	bne	$t8, $s2, .LBB2_157
# %bb.159:                              #   in Loop: Header=BB2_158 Depth=4
	fld.s	$fa2, $a2, 12
	fld.s	$fa5, $s3, -4
	fmadd.s	$fa3, $fa2, $fa5, $fa3
	b	.LBB2_157
.LBB2_160:                              #   in Loop: Header=BB2_129 Depth=2
	movgr2fr.w	$fa3, $zero
.LBB2_161:                              # %countnocountx.exit584
                                        #   in Loop: Header=BB2_129 Depth=2
	fneg.s	$fa2, $fa3
	fmadd.s	$fa4, $fa2, $ft3, $fa4
.LBB2_162:                              #   in Loop: Header=BB2_129 Depth=2
	addi.d	$t2, $t2, 4
	fld.s	$fa2, $t2, 0
	fadd.s	$fa3, $fa4, $fa2
	fcmp.cule.s	$fcc0, $fa3, $fs0
	bcnez	$fcc0, .LBB2_164
# %bb.163:                              #   in Loop: Header=BB2_129 Depth=2
	ld.w	$a2, $t3, 0
	sub.d	$a2, $s6, $a2
	st.w	$a2, $a3, 0
	fmov.s	$fs0, $fa3
.LBB2_164:                              #   in Loop: Header=BB2_129 Depth=2
	fcmp.cult.s	$fcc0, $fa1, $fa2
	bcnez	$fcc0, .LBB2_128
# %bb.165:                              #   in Loop: Header=BB2_129 Depth=2
	fst.s	$fa1, $t2, 0
	ld.d	$a2, $sp, 464                   # 8-byte Folded Reload
	st.w	$a2, $t3, 0
	b	.LBB2_128
.LBB2_166:                              # %vector.main.loop.iter.check949
                                        #   in Loop: Header=BB2_120 Depth=1
	ld.d	$a0, $sp, 296                   # 8-byte Folded Reload
	ori	$a1, $zero, 15
	bgeu	$a0, $a1, .LBB2_168
# %bb.167:                              #   in Loop: Header=BB2_120 Depth=1
	move	$a5, $zero
	b	.LBB2_172
.LBB2_168:                              # %vector.body953.preheader
                                        #   in Loop: Header=BB2_120 Depth=1
	addi.d	$a0, $s2, 32
	addi.d	$a1, $a2, 32
	ld.d	$a4, $sp, 216                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB2_169:                              # %vector.body953
                                        #   Parent Loop BB2_120 Depth=1
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
	addi.d	$a4, $a4, -16
	addi.d	$a1, $a1, 64
	bnez	$a4, .LBB2_169
# %bb.170:                              # %middle.block962
                                        #   in Loop: Header=BB2_120 Depth=1
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	beq	$a0, $a1, .LBB2_126
# %bb.171:                              # %vec.epilog.iter.check967
                                        #   in Loop: Header=BB2_120 Depth=1
	ld.d	$a5, $sp, 216                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	beqz	$a0, .LBB2_175
.LBB2_172:                              # %vec.epilog.ph966
                                        #   in Loop: Header=BB2_120 Depth=1
	ld.d	$a1, $sp, 184                   # 8-byte Folded Reload
	add.d	$a0, $a2, $a1
	add.d	$a1, $s2, $a1
	alsl.d	$a4, $a5, $s2, 2
	alsl.d	$a2, $a5, $a2, 2
	ld.d	$a6, $sp, 168                   # 8-byte Folded Reload
	add.d	$a5, $a6, $a5
	.p2align	4, , 16
.LBB2_173:                              # %vec.epilog.vector.body973
                                        #   Parent Loop BB2_120 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $a2, 0
	vld	$vr1, $a4, 0
	vfadd.s	$vr0, $vr0, $vr1
	vst	$vr0, $a4, 0
	addi.d	$a4, $a4, 16
	addi.d	$a5, $a5, 4
	addi.d	$a2, $a2, 16
	bnez	$a5, .LBB2_173
# %bb.174:                              # %vec.epilog.middle.block982
                                        #   in Loop: Header=BB2_120 Depth=1
	ld.d	$a2, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 208                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 192                   # 8-byte Folded Reload
	bne	$a4, $a5, .LBB2_125
	b	.LBB2_126
.LBB2_175:                              #   in Loop: Header=BB2_120 Depth=1
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	add.d	$a0, $a2, $a1
	add.d	$a1, $s2, $a1
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	b	.LBB2_125
.LBB2_176:
	movgr2fr.w	$fs0, $zero
	ld.d	$s2, $sp, 152                   # 8-byte Folded Reload
	beqz	$a1, .LBB2_178
	b	.LBB2_192
.LBB2_177:                              # %._crit_edge707.loopexit
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ld.w	$a1, $a0, 0
	move	$s3, $a3
	ld.d	$s2, $sp, 152                   # 8-byte Folded Reload
	ld.d	$t7, $sp, 232                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 120                   # 8-byte Folded Reload
	bnez	$a1, .LBB2_192
.LBB2_178:                              # %.preheader647
	ld.d	$a0, $sp, 344                   # 8-byte Folded Reload
	bnez	$a0, .LBB2_185
# %bb.179:                              # %.lr.ph712
	pcalau12i	$a0, %got_pc_hi20(offset)
	ld.d	$a0, $a0, %got_pc_lo12(offset)
	ld.w	$a0, $a0, 0
	addi.d	$a1, $t7, 1
	bstrpick.d	$a1, $a1, 31, 0
	addi.d	$a2, $a1, -1
	ori	$a4, $zero, 8
	ori	$a3, $zero, 1
	bltu	$a2, $a4, .LBB2_183
# %bb.180:                              # %vector.ph993
	move	$a4, $a2
	bstrins.d	$a4, $zero, 2, 0
	ori	$a5, $zero, 1
	move	$a3, $a2
	bstrins.d	$a3, $a5, 2, 0
	xvreplgr2vr.w	$xr0, $a0
	xvreplgr2vr.d	$xr1, $t7
	pcalau12i	$a5, %pc_hi20(.LCPI2_3)
	xvld	$xr2, $a5, %pc_lo12(.LCPI2_3)
	pcalau12i	$a5, %pc_hi20(.LCPI2_4)
	xvld	$xr3, $a5, %pc_lo12(.LCPI2_4)
	addi.d	$a5, $s3, 4
	lu52i.d	$a6, $zero, -1026
	xvreplgr2vr.d	$xr4, $a6
	move	$a6, $a4
	.p2align	4, , 16
.LBB2_181:                              # %vector.body1000
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
	bnez	$a6, .LBB2_181
# %bb.182:                              # %middle.block1007
	beq	$a2, $a4, .LBB2_185
.LBB2_183:                              # %scalar.ph991.preheader
	sub.w	$a2, $t7, $a3
	mul.d	$a2, $a0, $a2
	alsl.d	$a4, $a3, $s3, 2
	sub.d	$a1, $a1, $a3
	vldi	$vr0, -800
	.p2align	4, , 16
.LBB2_184:                              # %scalar.ph991
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
	bnez	$a1, .LBB2_184
.LBB2_185:                              # %.preheader646
	ori	$a0, $zero, 1
	blt	$s1, $a0, .LBB2_192
# %bb.186:                              # %.lr.ph715
	pcalau12i	$a1, %got_pc_hi20(offset)
	ld.d	$a1, $a1, %got_pc_lo12(offset)
	ld.w	$a1, $a1, 0
	ld.d	$a3, $sp, 104                   # 8-byte Folded Reload
	bstrpick.d	$a2, $a3, 31, 0
	movgr2fr.w	$fa0, $a1
	ffint.d.w	$fa1, $fa0
	movgr2fr.d	$fa0, $a2
	ffint.d.l	$fa0, $fa0
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(H__align.lastverticalw)
	addi.d	$a2, $a3, 1
	bstrpick.d	$a2, $a2, 31, 0
	addi.d	$a3, $a2, -1
	ori	$a4, $zero, 4
	fneg.d	$fa1, $fa1
	bltu	$a3, $a4, .LBB2_190
# %bb.187:                              # %vector.ph1012
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
.LBB2_188:                              # %vector.body1019
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
	bnez	$a6, .LBB2_188
# %bb.189:                              # %middle.block1026
	beq	$a3, $a4, .LBB2_192
.LBB2_190:                              # %scalar.ph1010.preheader
	alsl.d	$a1, $a0, $a1, 2
	sub.d	$a2, $a2, $a0
	vldi	$vr2, -800
	.p2align	4, , 16
.LBB2_191:                              # %scalar.ph1010
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
	bnez	$a2, .LBB2_191
.LBB2_192:                              # %.loopexit
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s1, $a0, %pc_lo12(H__align.lastverticalw)
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s0, $a0, %pc_lo12(H__align.mseq1)
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s8, $a0, %pc_lo12(H__align.mseq2)
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.ijp)
	st.d	$a0, $sp, 464                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s2, 0
	move	$s6, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	add.w	$a0, $a0, $s6
	st.d	$a0, $sp, 472                   # 8-byte Folded Spill
	addi.w	$s2, $a0, 1
	move	$a0, $s2
	pcaddu18i	$ra, %call36(AllocateCharVec)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(AllocateCharVec)
	jirl	$ra, $ra, 0
	move	$t1, $a0
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	addi.w	$a2, $s6, 0
	addi.w	$a3, $s4, 0
	pcalau12i	$a1, %pc_hi20(.LCPI2_9)
	st.d	$a1, $sp, 456                   # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(.LCPI2_10)
	st.d	$a1, $sp, 448                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	st.d	$s5, $sp, 440                   # 8-byte Folded Spill
	st.d	$t1, $sp, 432                   # 8-byte Folded Spill
	bnez	$a1, .LBB2_199
# %bb.193:
	ori	$a1, $zero, 1
	ld.d	$s7, $sp, 464                   # 8-byte Folded Reload
	beq	$a0, $a1, .LBB2_210
# %bb.194:
	fld.s	$fa0, $s1, 0
	blt	$a2, $a1, .LBB2_205
# %bb.195:                              # %.lr.ph.i640
	slli.d	$a0, $s6, 3
	bstrpick.d	$a0, $a0, 33, 3
	slli.d	$a0, $a0, 3
	slli.d	$a1, $s4, 32
	srai.d	$a4, $a1, 30
	bstrpick.d	$a5, $s6, 30, 0
	move	$a6, $s6
	b	.LBB2_197
	.p2align	4, , 16
.LBB2_196:                              #   in Loop: Header=BB2_197 Depth=1
	addi.d	$a5, $a5, -1
	addi.d	$a6, $a6, -1
	addi.d	$s1, $s1, 4
	beqz	$a5, .LBB2_205
.LBB2_197:                              # =>This Inner Loop Header: Depth=1
	fld.s	$fa1, $s1, 0
	fcmp.cult.s	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB2_196
# %bb.198:                              #   in Loop: Header=BB2_197 Depth=1
	ldx.d	$a1, $s7, $a0
	stx.w	$a6, $a1, $a4
	fmov.s	$fa0, $fa1
	b	.LBB2_196
.LBB2_199:
	ori	$a1, $zero, 1
	ld.d	$t8, $sp, 464                   # 8-byte Folded Reload
	beq	$a0, $a1, .LBB2_218
# %bb.200:
	fld.s	$fa0, $s1, 0
	blt	$a2, $a1, .LBB2_213
# %bb.201:                              # %.lr.ph.i586
	slli.d	$a0, $s6, 3
	bstrpick.d	$a0, $a0, 33, 3
	slli.d	$a0, $a0, 3
	slli.d	$a1, $s4, 32
	srai.d	$a4, $a1, 30
	bstrpick.d	$a5, $s6, 30, 0
	move	$a6, $s6
	b	.LBB2_203
	.p2align	4, , 16
.LBB2_202:                              #   in Loop: Header=BB2_203 Depth=1
	addi.d	$a5, $a5, -1
	addi.d	$a6, $a6, -1
	addi.d	$s1, $s1, 4
	beqz	$a5, .LBB2_213
.LBB2_203:                              # =>This Inner Loop Header: Depth=1
	fld.s	$fa1, $s1, 0
	fcmp.cult.s	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB2_202
# %bb.204:                              #   in Loop: Header=BB2_203 Depth=1
	ldx.d	$a1, $t8, $a0
	stx.w	$a6, $a1, $a4
	fmov.s	$fa0, $fa1
	b	.LBB2_202
.LBB2_205:                              # %.preheader2.i591
	ori	$a0, $zero, 1
	blt	$a3, $a0, .LBB2_210
# %bb.206:                              # %.lr.ph7.i634
	slli.d	$a0, $s6, 32
	srai.d	$a0, $a0, 29
	slli.d	$a1, $s4, 2
	bstrpick.d	$a1, $a1, 32, 2
	slli.d	$a4, $a1, 2
	bstrpick.d	$a5, $s4, 30, 0
	sub.d	$a6, $zero, $s4
	b	.LBB2_208
	.p2align	4, , 16
.LBB2_207:                              #   in Loop: Header=BB2_208 Depth=1
	addi.d	$a5, $a5, -1
	addi.d	$a6, $a6, 1
	addi.d	$s3, $s3, 4
	beqz	$a5, .LBB2_210
.LBB2_208:                              # =>This Inner Loop Header: Depth=1
	fld.s	$fa1, $s3, 0
	fcmp.cult.s	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB2_207
# %bb.209:                              #   in Loop: Header=BB2_208 Depth=1
	ldx.d	$a1, $s7, $a0
	stx.w	$a6, $a1, $a4
	fmov.s	$fa0, $fa1
	b	.LBB2_207
.LBB2_210:                              # %.loopexit.i592
	bltz	$a2, .LBB2_226
# %bb.211:                              # %.lr.ph10.preheader.i594
	addi.d	$a1, $s6, 1
	bstrpick.d	$a0, $a1, 31, 0
	ori	$a4, $zero, 4
	bgeu	$a0, $a4, .LBB2_221
# %bb.212:
	move	$a4, $zero
	b	.LBB2_224
.LBB2_213:                              # %.preheader2.i
	ori	$a0, $zero, 1
	blt	$a3, $a0, .LBB2_218
# %bb.214:                              # %.lr.ph7.i
	slli.d	$a0, $s6, 32
	srai.d	$a0, $a0, 29
	slli.d	$a1, $s4, 2
	bstrpick.d	$a1, $a1, 32, 2
	slli.d	$a4, $a1, 2
	bstrpick.d	$a5, $s4, 30, 0
	sub.d	$a6, $zero, $s4
	b	.LBB2_216
	.p2align	4, , 16
.LBB2_215:                              #   in Loop: Header=BB2_216 Depth=1
	addi.d	$a5, $a5, -1
	addi.d	$a6, $a6, 1
	addi.d	$s3, $s3, 4
	beqz	$a5, .LBB2_218
.LBB2_216:                              # =>This Inner Loop Header: Depth=1
	fld.s	$fa1, $s3, 0
	fcmp.cult.s	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB2_215
# %bb.217:                              #   in Loop: Header=BB2_216 Depth=1
	ldx.d	$a1, $t8, $a0
	stx.w	$a6, $a1, $a4
	fmov.s	$fa0, $fa1
	b	.LBB2_215
.LBB2_218:                              # %.loopexit.i
	bltz	$a2, .LBB2_234
# %bb.219:                              # %.lr.ph10.preheader.i
	addi.d	$a1, $s6, 1
	bstrpick.d	$a0, $a1, 31, 0
	ori	$a4, $zero, 4
	bgeu	$a0, $a4, .LBB2_229
# %bb.220:
	move	$a4, $zero
	b	.LBB2_232
.LBB2_221:                              # %vector.ph1124
	pcalau12i	$a4, %pc_hi20(.LCPI2_6)
	vld	$vr0, $a4, %pc_lo12(.LCPI2_6)
	bstrpick.d	$a1, $a1, 31, 2
	slli.d	$a4, $a1, 2
	addi.d	$a5, $s7, 16
	move	$a6, $a4
	.p2align	4, , 16
.LBB2_222:                              # %vector.body1127
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr1, $a5, -16
	vld	$vr2, $a5, 0
	vshuf4i.w	$vr3, $vr0, 8
	vaddi.wu	$vr4, $vr3, 1
	vaddi.wu	$vr3, $vr3, 3
	vpickve2gr.w	$a1, $vr4, 0
	vpickve2gr.d	$a7, $vr1, 0
	st.w	$a1, $a7, 0
	vpickve2gr.w	$a1, $vr4, 1
	vpickve2gr.d	$a7, $vr1, 1
	st.w	$a1, $a7, 0
	vpickve2gr.w	$a1, $vr3, 0
	vpickve2gr.d	$a7, $vr2, 0
	st.w	$a1, $a7, 0
	vpickve2gr.w	$a1, $vr3, 1
	vpickve2gr.d	$a7, $vr2, 1
	st.w	$a1, $a7, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a6, $a6, -4
	addi.d	$a5, $a5, 32
	bnez	$a6, .LBB2_222
# %bb.223:                              # %middle.block1135
	beq	$a0, $a4, .LBB2_226
.LBB2_224:                              # %.lr.ph10.i596.preheader
	alsl.d	$a1, $a4, $s7, 3
	sub.d	$a0, $a0, $a4
	addi.d	$a4, $a4, 1
	.p2align	4, , 16
.LBB2_225:                              # %.lr.ph10.i596
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a5, $a1, 0
	st.w	$a4, $a5, 0
	addi.d	$a1, $a1, 8
	addi.d	$a0, $a0, -1
	addi.d	$a4, $a4, 1
	bnez	$a0, .LBB2_225
.LBB2_226:                              # %.preheader1.i600
	bltz	$a3, .LBB2_253
# %bb.227:                              # %iter.check1141
	ld.d	$a4, $s7, 0
	addi.d	$a0, $s4, 1
	bstrpick.d	$a5, $a0, 31, 0
	ori	$a1, $zero, 3
	bltu	$a1, $a5, .LBB2_237
# %bb.228:
	move	$a6, $zero
	b	.LBB2_251
.LBB2_229:                              # %vector.ph1031
	pcalau12i	$a4, %pc_hi20(.LCPI2_6)
	vld	$vr0, $a4, %pc_lo12(.LCPI2_6)
	bstrpick.d	$a1, $a1, 31, 2
	slli.d	$a4, $a1, 2
	addi.d	$a5, $t8, 16
	move	$a6, $a4
	.p2align	4, , 16
.LBB2_230:                              # %vector.body1034
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr1, $a5, -16
	vld	$vr2, $a5, 0
	vshuf4i.w	$vr3, $vr0, 8
	vaddi.wu	$vr4, $vr3, 1
	vaddi.wu	$vr3, $vr3, 3
	vpickve2gr.w	$a1, $vr4, 0
	vpickve2gr.d	$a7, $vr1, 0
	st.w	$a1, $a7, 0
	vpickve2gr.w	$a1, $vr4, 1
	vpickve2gr.d	$a7, $vr1, 1
	st.w	$a1, $a7, 0
	vpickve2gr.w	$a1, $vr3, 0
	vpickve2gr.d	$a7, $vr2, 0
	st.w	$a1, $a7, 0
	vpickve2gr.w	$a1, $vr3, 1
	vpickve2gr.d	$a7, $vr2, 1
	st.w	$a1, $a7, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a6, $a6, -4
	addi.d	$a5, $a5, 32
	bnez	$a6, .LBB2_230
# %bb.231:                              # %middle.block1041
	beq	$a0, $a4, .LBB2_234
.LBB2_232:                              # %.lr.ph10.i.preheader
	alsl.d	$a1, $a4, $t8, 3
	sub.d	$a0, $a0, $a4
	addi.d	$a4, $a4, 1
	.p2align	4, , 16
.LBB2_233:                              # %.lr.ph10.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a5, $a1, 0
	st.w	$a4, $a5, 0
	addi.d	$a1, $a1, 8
	addi.d	$a0, $a0, -1
	addi.d	$a4, $a4, 1
	bnez	$a0, .LBB2_233
.LBB2_234:                              # %.preheader1.i
	ld.d	$a4, $fp, 0
	bltz	$a3, .LBB2_296
# %bb.235:                              # %iter.check1047
	ld.d	$a5, $t8, 0
	addi.d	$a0, $s4, 1
	bstrpick.d	$a6, $a0, 31, 0
	ori	$a1, $zero, 3
	bltu	$a1, $a6, .LBB2_242
# %bb.236:
	move	$a7, $zero
	b	.LBB2_294
.LBB2_237:                              # %vector.main.loop.iter.check1143
	ori	$a1, $zero, 16
	bgeu	$a5, $a1, .LBB2_247
# %bb.238:
	move	$a6, $zero
.LBB2_239:                              # %vec.epilog.ph1157
	move	$a1, $a6
	pcalau12i	$a6, %pc_hi20(.LCPI2_8)
	vld	$vr0, $a6, %pc_lo12(.LCPI2_8)
	bstrpick.d	$a0, $a0, 31, 2
	slli.d	$a6, $a0, 2
	vreplgr2vr.w	$vr1, $a1
	vor.v	$vr0, $vr1, $vr0
	sub.d	$a0, $a1, $a6
	alsl.d	$a1, $a1, $a4, 2
	vrepli.b	$vr1, -1
	.p2align	4, , 16
.LBB2_240:                              # %vec.epilog.vector.body1163
                                        # =>This Inner Loop Header: Depth=1
	vxor.v	$vr2, $vr0, $vr1
	vst	$vr2, $a1, 0
	vaddi.wu	$vr0, $vr0, 4
	addi.d	$a0, $a0, 4
	addi.d	$a1, $a1, 16
	bnez	$a0, .LBB2_240
# %bb.241:                              # %vec.epilog.middle.block1171
	bne	$a5, $a6, .LBB2_251
	b	.LBB2_253
.LBB2_242:                              # %vector.main.loop.iter.check1049
	ori	$a1, $zero, 16
	bgeu	$a6, $a1, .LBB2_290
# %bb.243:
	move	$a7, $zero
.LBB2_244:                              # %vec.epilog.ph1063
	move	$a1, $a7
	pcalau12i	$a7, %pc_hi20(.LCPI2_8)
	vld	$vr0, $a7, %pc_lo12(.LCPI2_8)
	bstrpick.d	$a0, $a0, 31, 2
	slli.d	$a7, $a0, 2
	vreplgr2vr.w	$vr1, $a1
	vor.v	$vr0, $vr1, $vr0
	sub.d	$a0, $a1, $a7
	alsl.d	$a1, $a1, $a5, 2
	vrepli.b	$vr1, -1
	.p2align	4, , 16
.LBB2_245:                              # %vec.epilog.vector.body1069
                                        # =>This Inner Loop Header: Depth=1
	vxor.v	$vr2, $vr0, $vr1
	vst	$vr2, $a1, 0
	vaddi.wu	$vr0, $vr0, 4
	addi.d	$a0, $a0, 4
	addi.d	$a1, $a1, 16
	bnez	$a0, .LBB2_245
# %bb.246:                              # %vec.epilog.middle.block1074
	bne	$a6, $a7, .LBB2_294
	b	.LBB2_296
.LBB2_247:                              # %vector.ph1144
	bstrpick.d	$a1, $a0, 31, 4
	slli.d	$a6, $a1, 4
	pcalau12i	$a1, %pc_hi20(.LCPI2_7)
	xvld	$xr0, $a1, %pc_lo12(.LCPI2_7)
	addi.d	$a1, $a4, 32
	xvrepli.b	$xr1, -1
	xvrepli.w	$xr2, -9
	move	$a7, $a6
	.p2align	4, , 16
.LBB2_248:                              # %vector.body1147
                                        # =>This Inner Loop Header: Depth=1
	xvxor.v	$xr3, $xr0, $xr1
	xvsub.w	$xr4, $xr2, $xr0
	xvst	$xr3, $a1, -32
	xvst	$xr4, $a1, 0
	xvaddi.wu	$xr0, $xr0, 16
	addi.d	$a7, $a7, -16
	addi.d	$a1, $a1, 64
	bnez	$a7, .LBB2_248
# %bb.249:                              # %middle.block1153
	beq	$a5, $a6, .LBB2_253
# %bb.250:                              # %vec.epilog.iter.check1158
	andi	$a1, $a0, 12
	bnez	$a1, .LBB2_239
.LBB2_251:                              # %vec.epilog.scalar.ph1156.preheader
	alsl.d	$a0, $a6, $a4, 2
	nor	$a1, $a6, $zero
	sub.d	$a4, $a5, $a6
	.p2align	4, , 16
.LBB2_252:                              # %vec.epilog.scalar.ph1156
                                        # =>This Inner Loop Header: Depth=1
	st.w	$a1, $a0, 0
	addi.d	$a0, $a0, 4
	addi.d	$a4, $a4, -1
	addi.d	$a1, $a1, -1
	bnez	$a4, .LBB2_252
.LBB2_253:                              # %._crit_edge.i606
	add.d	$a0, $s5, $a2
	add.d	$s2, $a0, $a3
	stx.b	$zero, $a0, $a3
	add.d	$a0, $t1, $a2
	add.d	$s3, $a0, $a3
	stx.b	$zero, $a0, $a3
	ld.d	$a0, $sp, 472                   # 8-byte Folded Reload
	bltz	$a0, .LBB2_283
# %bb.254:                              # %.lr.ph41.i607.preheader
	move	$t4, $zero
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
	.p2align	4, , 16
.LBB2_255:                              # %.lr.ph41.i607
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_274 Depth 2
                                        #     Child Loop BB2_278 Depth 2
                                        #     Child Loop BB2_263 Depth 2
                                        #     Child Loop BB2_267 Depth 2
	addi.w	$t0, $s6, 0
	slli.d	$a0, $t0, 3
	ldx.d	$a0, $s7, $a0
	addi.w	$t2, $s4, 0
	slli.d	$a1, $t2, 2
	ldx.w	$t3, $a0, $a1
	bge	$a2, $t3, .LBB2_258
# %bb.256:                              #   in Loop: Header=BB2_255 Depth=1
	beqz	$t3, .LBB2_269
# %bb.257:                              #   in Loop: Header=BB2_255 Depth=1
	sub.d	$t1, $s6, $t3
	b	.LBB2_270
	.p2align	4, , 16
.LBB2_258:                              #   in Loop: Header=BB2_255 Depth=1
	addi.d	$t1, $s6, -1
	nor	$a0, $t1, $zero
	add.w	$t5, $s6, $a0
	bnez	$t5, .LBB2_271
	.p2align	4, , 16
.LBB2_259:                              # %._crit_edge20.i612
                                        #   in Loop: Header=BB2_255 Depth=1
	beq	$t3, $a2, .LBB2_280
.LBB2_260:                              # %.lr.ph29.preheader.i614
                                        #   in Loop: Header=BB2_255 Depth=1
	addi.w	$a0, $zero, -17
	nor	$t8, $t3, $zero
	bltu	$a0, $t3, .LBB2_265
# %bb.261:                              # %.lr.ph29.preheader.i614
                                        #   in Loop: Header=BB2_255 Depth=1
	sub.d	$a0, $s2, $s3
	bltu	$a0, $a6, .LBB2_265
# %bb.262:                              # %vector.ph1180
                                        #   in Loop: Header=BB2_255 Depth=1
	bstrpick.d	$a0, $t8, 30, 4
	slli.d	$a0, $a0, 4
	sub.d	$t7, $t8, $a0
	sub.d	$t5, $s3, $a0
	sub.d	$t6, $s2, $a0
	xvinsgr2vr.w	$xr6, $t4, 0
	ld.d	$a1, $sp, 456                   # 8-byte Folded Reload
	xvld	$xr5, $a1, %pc_lo12(.LCPI2_9)
	xvpermi.d	$xr6, $xr6, 68
	xvinsgr2vr.w	$xr7, $zero, 0
	xvpermi.d	$xr7, $xr7, 68
	xvshuf.w	$xr5, $xr7, $xr6
	addi.d	$a1, $s2, -8
	addi.d	$t4, $s3, -8
	move	$s1, $a0
	xvori.b	$xr6, $xr0, 0
	.p2align	4, , 16
.LBB2_263:                              # %vector.body1184
                                        #   Parent Loop BB2_255 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vst	$vr1, $a1, -8
	vst	$vr2, $t4, -8
	xvaddi.wu	$xr5, $xr5, 1
	xvaddi.wu	$xr6, $xr6, 1
	addi.d	$s1, $s1, -16
	addi.d	$a1, $a1, -16
	addi.d	$t4, $t4, -16
	bnez	$s1, .LBB2_263
# %bb.264:                              # %middle.block1193
                                        #   in Loop: Header=BB2_255 Depth=1
	ld.d	$a1, $sp, 448                   # 8-byte Folded Reload
	xvld	$xr7, $a1, %pc_lo12(.LCPI2_10)
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
	xvpickve2gr.w	$t4, $xr5, 0
	bne	$a0, $t8, .LBB2_266
	b	.LBB2_268
	.p2align	4, , 16
.LBB2_265:                              #   in Loop: Header=BB2_255 Depth=1
	move	$t7, $t8
	move	$t5, $s3
	move	$t6, $s2
.LBB2_266:                              # %.lr.ph29.i615.preheader
                                        #   in Loop: Header=BB2_255 Depth=1
	add.d	$t4, $t4, $t7
	.p2align	4, , 16
.LBB2_267:                              # %.lr.ph29.i615
                                        #   Parent Loop BB2_255 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.b	$a5, $t6, -1
	addi.d	$t6, $t6, -1
	st.b	$a4, $t5, -1
	addi.w	$t7, $t7, -1
	addi.d	$t5, $t5, -1
	bnez	$t7, .LBB2_267
.LBB2_268:                              # %._crit_edge30.i616
                                        #   in Loop: Header=BB2_255 Depth=1
	bge	$t0, $a3, .LBB2_281
	b	.LBB2_284
	.p2align	4, , 16
.LBB2_269:                              #   in Loop: Header=BB2_255 Depth=1
	addi.d	$t1, $s6, -1
.LBB2_270:                              #   in Loop: Header=BB2_255 Depth=1
	move	$t3, $a2
	nor	$a0, $t1, $zero
	add.w	$t5, $s6, $a0
	beqz	$t5, .LBB2_259
.LBB2_271:                              # %.lr.ph19.preheader.i609
                                        #   in Loop: Header=BB2_255 Depth=1
	bltu	$t5, $a7, .LBB2_276
# %bb.272:                              # %.lr.ph19.preheader.i609
                                        #   in Loop: Header=BB2_255 Depth=1
	sub.d	$a0, $s2, $s3
	bltu	$a0, $a7, .LBB2_276
# %bb.273:                              # %vector.ph1206
                                        #   in Loop: Header=BB2_255 Depth=1
	bstrpick.d	$t7, $t5, 31, 0
	bstrpick.d	$a0, $t7, 31, 5
	slli.d	$a1, $a0, 5
	sub.d	$t5, $t5, $a1
	sub.d	$a0, $s3, $a1
	sub.d	$t6, $s2, $a1
	addi.d	$t8, $s2, -32
	addi.d	$s1, $s3, -32
	move	$s2, $a1
	.p2align	4, , 16
.LBB2_274:                              # %vector.body1210
                                        #   Parent Loop BB2_255 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvst	$xr3, $t8, 0
	xvst	$xr4, $s1, 0
	addi.d	$s2, $s2, -32
	addi.d	$t8, $t8, -32
	addi.d	$s1, $s1, -32
	bnez	$s2, .LBB2_274
# %bb.275:                              # %middle.block1217
                                        #   in Loop: Header=BB2_255 Depth=1
	bne	$a1, $t7, .LBB2_277
	b	.LBB2_279
	.p2align	4, , 16
.LBB2_276:                              #   in Loop: Header=BB2_255 Depth=1
	move	$a0, $s3
	move	$t6, $s2
.LBB2_277:                              # %.lr.ph19.i610.preheader
                                        #   in Loop: Header=BB2_255 Depth=1
	move	$a1, $a0
	move	$t7, $t6
	.p2align	4, , 16
.LBB2_278:                              # %.lr.ph19.i610
                                        #   Parent Loop BB2_255 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$t6, $t7, -1
	st.b	$a4, $t7, -1
	addi.d	$a0, $a1, -1
	addi.w	$t5, $t5, -1
	st.b	$a5, $a1, -1
	move	$a1, $a0
	move	$t7, $t6
	bnez	$t5, .LBB2_278
.LBB2_279:                              # %._crit_edge20.loopexit.i611
                                        #   in Loop: Header=BB2_255 Depth=1
	addi.d	$a1, $s6, -1
	add.d	$a1, $a1, $t4
	sub.d	$t4, $a1, $t1
	move	$s2, $t6
	move	$s3, $a0
	bne	$t3, $a2, .LBB2_260
.LBB2_280:                              #   in Loop: Header=BB2_255 Depth=1
	move	$t6, $s2
	move	$t5, $s3
	blt	$t0, $a3, .LBB2_284
.LBB2_281:                              # %._crit_edge30.i616
                                        #   in Loop: Header=BB2_255 Depth=1
	blt	$t2, $a3, .LBB2_284
# %bb.282:                              #   in Loop: Header=BB2_255 Depth=1
	add.d	$s4, $t3, $s4
	addi.d	$s2, $t6, -1
	st.b	$a4, $t6, -1
	addi.d	$s3, $t5, -1
	addi.w	$t4, $t4, 2
	st.b	$a4, $t5, -1
	move	$s6, $t1
	ld.d	$a0, $sp, 472                   # 8-byte Folded Reload
	bge	$a0, $t4, .LBB2_255
.LBB2_283:                              # %._crit_edge42.i619
	ori	$s1, $zero, 1
	ld.d	$s6, $sp, 128                   # 8-byte Folded Reload
	bge	$s6, $s1, .LBB2_285
	b	.LBB2_287
.LBB2_284:
	move	$s2, $t6
	move	$s3, $t5
	ori	$s1, $zero, 1
	ld.d	$s6, $sp, 128                   # 8-byte Folded Reload
	blt	$s6, $s1, .LBB2_287
.LBB2_285:                              # %.lr.ph50.preheader.i628
	ld.d	$s4, $sp, 144                   # 8-byte Folded Reload
	move	$s5, $s6
	.p2align	4, , 16
.LBB2_286:                              # %.lr.ph50.i630
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s0, 0
	ld.d	$a1, $s4, 0
	move	$a2, $s2
	pcaddu18i	$ra, %call36(gapireru)
	jirl	$ra, $ra, 0
	addi.d	$s5, $s5, -1
	addi.d	$s4, $s4, 8
	addi.d	$s0, $s0, 8
	bnez	$s5, .LBB2_286
.LBB2_287:                              # %.preheader.i621
	ld.d	$s2, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 152                   # 8-byte Folded Reload
	blt	$s2, $s1, .LBB2_336
# %bb.288:                              # %.lr.ph52.preheader.i622
	move	$s0, $s4
	move	$s1, $s2
	.p2align	4, , 16
.LBB2_289:                              # %.lr.ph52.i624
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s8, 0
	ld.d	$a1, $s0, 0
	move	$a2, $s3
	pcaddu18i	$ra, %call36(gapireru)
	jirl	$ra, $ra, 0
	addi.d	$s1, $s1, -1
	addi.d	$s0, $s0, 8
	addi.d	$s8, $s8, 8
	bnez	$s1, .LBB2_289
	b	.LBB2_336
.LBB2_290:                              # %vector.ph1050
	bstrpick.d	$a1, $a0, 31, 4
	slli.d	$a7, $a1, 4
	pcalau12i	$a1, %pc_hi20(.LCPI2_7)
	xvld	$xr0, $a1, %pc_lo12(.LCPI2_7)
	addi.d	$a1, $a5, 32
	xvrepli.b	$xr1, -1
	xvrepli.w	$xr2, -9
	move	$t0, $a7
	.p2align	4, , 16
.LBB2_291:                              # %vector.body1053
                                        # =>This Inner Loop Header: Depth=1
	xvxor.v	$xr3, $xr0, $xr1
	xvsub.w	$xr4, $xr2, $xr0
	xvst	$xr3, $a1, -32
	xvst	$xr4, $a1, 0
	xvaddi.wu	$xr0, $xr0, 16
	addi.d	$t0, $t0, -16
	addi.d	$a1, $a1, 64
	bnez	$t0, .LBB2_291
# %bb.292:                              # %middle.block1059
	beq	$a6, $a7, .LBB2_296
# %bb.293:                              # %vec.epilog.iter.check1064
	andi	$a1, $a0, 12
	bnez	$a1, .LBB2_244
.LBB2_294:                              # %vec.epilog.scalar.ph1062.preheader
	alsl.d	$a0, $a7, $a5, 2
	nor	$a1, $a7, $zero
	sub.d	$a5, $a6, $a7
	.p2align	4, , 16
.LBB2_295:                              # %vec.epilog.scalar.ph1062
                                        # =>This Inner Loop Header: Depth=1
	st.w	$a1, $a0, 0
	addi.d	$a0, $a0, 4
	addi.d	$a5, $a5, -1
	addi.d	$a1, $a1, -1
	bnez	$a5, .LBB2_295
.LBB2_296:                              # %._crit_edge.i
	add.d	$a0, $s5, $a2
	add.d	$s2, $a0, $a3
	stx.b	$zero, $a0, $a3
	add.d	$a0, $t1, $a2
	add.d	$s3, $a0, $a3
	stx.b	$zero, $a0, $a3
	st.w	$zero, $a4, 0
	ld.d	$a0, $sp, 472                   # 8-byte Folded Reload
	bltz	$a0, .LBB2_329
# %bb.297:                              # %.lr.ph41.i.preheader
	move	$s1, $zero
	addi.w	$a3, $zero, -1
	ori	$a5, $zero, 1
	ori	$a6, $zero, 111
	ori	$a7, $zero, 45
	xvrepli.b	$xr0, 0
	vrepli.b	$vr1, 45
	vrepli.b	$vr2, 111
	ori	$t1, $zero, 32
	xvrepli.b	$xr3, 111
	xvrepli.b	$xr4, 45
	move	$t2, $s4
	.p2align	4, , 16
.LBB2_298:                              # %.lr.ph41.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_317 Depth 2
                                        #     Child Loop BB2_321 Depth 2
                                        #     Child Loop BB2_306 Depth 2
                                        #     Child Loop BB2_310 Depth 2
	addi.w	$t3, $s6, 0
	slli.d	$t7, $t3, 3
	ldx.d	$a0, $t8, $t7
	addi.w	$t5, $t2, 0
	slli.d	$t8, $t5, 2
	ldx.w	$t6, $a0, $t8
	bge	$a3, $t6, .LBB2_301
# %bb.299:                              #   in Loop: Header=BB2_298 Depth=1
	beqz	$t6, .LBB2_312
# %bb.300:                              #   in Loop: Header=BB2_298 Depth=1
	sub.d	$t4, $s6, $t6
	b	.LBB2_313
	.p2align	4, , 16
.LBB2_301:                              #   in Loop: Header=BB2_298 Depth=1
	addi.d	$t4, $s6, -1
	nor	$a0, $t4, $zero
	add.w	$s5, $s6, $a0
	bnez	$s5, .LBB2_314
	.p2align	4, , 16
.LBB2_302:                              # %._crit_edge20.i
                                        #   in Loop: Header=BB2_298 Depth=1
	beq	$t6, $a3, .LBB2_323
.LBB2_303:                              # %.lr.ph29.preheader.i
                                        #   in Loop: Header=BB2_298 Depth=1
	addi.w	$a0, $zero, -17
	nor	$ra, $t6, $zero
	bltu	$a0, $t6, .LBB2_308
# %bb.304:                              # %.lr.ph29.preheader.i
                                        #   in Loop: Header=BB2_298 Depth=1
	sub.d	$a0, $s2, $s3
	ori	$a1, $zero, 16
	bltu	$a0, $a1, .LBB2_308
# %bb.305:                              # %vector.ph1083
                                        #   in Loop: Header=BB2_298 Depth=1
	bstrpick.d	$a0, $ra, 30, 4
	slli.d	$a0, $a0, 4
	sub.d	$s7, $ra, $a0
	sub.d	$s5, $s3, $a0
	sub.d	$s6, $s2, $a0
	xvinsgr2vr.w	$xr6, $s1, 0
	ld.d	$a1, $sp, 456                   # 8-byte Folded Reload
	xvld	$xr5, $a1, %pc_lo12(.LCPI2_9)
	xvpermi.d	$xr6, $xr6, 68
	xvinsgr2vr.w	$xr7, $zero, 0
	xvpermi.d	$xr7, $xr7, 68
	xvshuf.w	$xr5, $xr7, $xr6
	addi.d	$a1, $s2, -8
	addi.d	$s1, $s3, -8
	move	$s2, $a0
	xvori.b	$xr6, $xr0, 0
	.p2align	4, , 16
.LBB2_306:                              # %vector.body1087
                                        #   Parent Loop BB2_298 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vst	$vr1, $a1, -8
	vst	$vr2, $s1, -8
	xvaddi.wu	$xr5, $xr5, 1
	xvaddi.wu	$xr6, $xr6, 1
	addi.d	$s2, $s2, -16
	addi.d	$a1, $a1, -16
	addi.d	$s1, $s1, -16
	bnez	$s2, .LBB2_306
# %bb.307:                              # %middle.block1095
                                        #   in Loop: Header=BB2_298 Depth=1
	ld.d	$a1, $sp, 448                   # 8-byte Folded Reload
	xvld	$xr7, $a1, %pc_lo12(.LCPI2_10)
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
	xvpickve2gr.w	$s1, $xr5, 0
	bne	$a0, $ra, .LBB2_309
	b	.LBB2_311
	.p2align	4, , 16
.LBB2_308:                              #   in Loop: Header=BB2_298 Depth=1
	move	$s7, $ra
	move	$s5, $s3
	move	$s6, $s2
.LBB2_309:                              # %.lr.ph29.i.preheader
                                        #   in Loop: Header=BB2_298 Depth=1
	add.d	$s1, $s1, $s7
	.p2align	4, , 16
.LBB2_310:                              # %.lr.ph29.i
                                        #   Parent Loop BB2_298 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.b	$a7, $s6, -1
	addi.d	$s6, $s6, -1
	st.b	$a6, $s5, -1
	addi.w	$s7, $s7, -1
	addi.d	$s5, $s5, -1
	bnez	$s7, .LBB2_310
.LBB2_311:                              # %._crit_edge30.i
                                        #   in Loop: Header=BB2_298 Depth=1
	bne	$t3, $a2, .LBB2_324
	b	.LBB2_326
	.p2align	4, , 16
.LBB2_312:                              #   in Loop: Header=BB2_298 Depth=1
	addi.d	$t4, $s6, -1
.LBB2_313:                              #   in Loop: Header=BB2_298 Depth=1
	move	$t6, $a3
	nor	$a0, $t4, $zero
	add.w	$s5, $s6, $a0
	beqz	$s5, .LBB2_302
.LBB2_314:                              # %.lr.ph19.preheader.i
                                        #   in Loop: Header=BB2_298 Depth=1
	bltu	$s5, $t1, .LBB2_319
# %bb.315:                              # %.lr.ph19.preheader.i
                                        #   in Loop: Header=BB2_298 Depth=1
	sub.d	$a0, $s2, $s3
	bltu	$a0, $t1, .LBB2_319
# %bb.316:                              # %vector.ph1106
                                        #   in Loop: Header=BB2_298 Depth=1
	bstrpick.d	$ra, $s5, 31, 0
	bstrpick.d	$a0, $ra, 31, 5
	slli.d	$t0, $a0, 5
	sub.d	$s5, $s5, $t0
	sub.d	$a0, $s3, $t0
	sub.d	$s7, $s2, $t0
	addi.d	$s2, $s2, -32
	addi.d	$s3, $s3, -32
	move	$a1, $t0
	.p2align	4, , 16
.LBB2_317:                              # %vector.body1110
                                        #   Parent Loop BB2_298 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvst	$xr3, $s2, 0
	xvst	$xr4, $s3, 0
	addi.d	$a1, $a1, -32
	addi.d	$s2, $s2, -32
	addi.d	$s3, $s3, -32
	bnez	$a1, .LBB2_317
# %bb.318:                              # %middle.block1117
                                        #   in Loop: Header=BB2_298 Depth=1
	bne	$t0, $ra, .LBB2_320
	b	.LBB2_322
	.p2align	4, , 16
.LBB2_319:                              #   in Loop: Header=BB2_298 Depth=1
	move	$a0, $s3
	move	$s7, $s2
.LBB2_320:                              # %.lr.ph19.i.preheader
                                        #   in Loop: Header=BB2_298 Depth=1
	move	$a1, $a0
	move	$t0, $s7
	.p2align	4, , 16
.LBB2_321:                              # %.lr.ph19.i
                                        #   Parent Loop BB2_298 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$s7, $t0, -1
	st.b	$a6, $t0, -1
	addi.d	$a0, $a1, -1
	addi.w	$s5, $s5, -1
	st.b	$a7, $a1, -1
	move	$a1, $a0
	move	$t0, $s7
	bnez	$s5, .LBB2_321
.LBB2_322:                              # %._crit_edge20.loopexit.i
                                        #   in Loop: Header=BB2_298 Depth=1
	addi.d	$a1, $s6, -1
	add.d	$a1, $a1, $s1
	sub.d	$s1, $a1, $t4
	move	$s2, $s7
	move	$s3, $a0
	bne	$t6, $a3, .LBB2_303
.LBB2_323:                              #   in Loop: Header=BB2_298 Depth=1
	move	$s6, $s2
	move	$s5, $s3
	beq	$t3, $a2, .LBB2_326
.LBB2_324:                              # %._crit_edge30.i
                                        #   in Loop: Header=BB2_298 Depth=1
	addi.w	$a0, $s4, 0
	beq	$t5, $a0, .LBB2_326
# %bb.325:                              #   in Loop: Header=BB2_298 Depth=1
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(impmtx)
	ldx.d	$a0, $a0, $t7
	fldx.s	$fa5, $a0, $t8
	fld.s	$fa6, $a4, 0
	fadd.s	$fa5, $fa5, $fa6
	fst.s	$fa5, $a4, 0
.LBB2_326:                              #   in Loop: Header=BB2_298 Depth=1
	ld.d	$t8, $sp, 464                   # 8-byte Folded Reload
	blt	$t3, $a5, .LBB2_330
# %bb.327:                              #   in Loop: Header=BB2_298 Depth=1
	blt	$t5, $a5, .LBB2_330
# %bb.328:                              #   in Loop: Header=BB2_298 Depth=1
	add.d	$t2, $t6, $t2
	addi.d	$s2, $s6, -1
	st.b	$a6, $s6, -1
	addi.d	$s3, $s5, -1
	addi.w	$s1, $s1, 2
	st.b	$a6, $s5, -1
	move	$s6, $t4
	ld.d	$a0, $sp, 472                   # 8-byte Folded Reload
	bge	$a0, $s1, .LBB2_298
.LBB2_329:                              # %._crit_edge42.i
	ori	$s1, $zero, 1
	ld.d	$s6, $sp, 128                   # 8-byte Folded Reload
	bge	$s6, $s1, .LBB2_331
	b	.LBB2_333
.LBB2_330:
	move	$s2, $s6
	move	$s3, $s5
	ori	$s1, $zero, 1
	ld.d	$s6, $sp, 128                   # 8-byte Folded Reload
	blt	$s6, $s1, .LBB2_333
.LBB2_331:                              # %.lr.ph50.preheader.i
	ld.d	$s4, $sp, 144                   # 8-byte Folded Reload
	move	$s5, $s6
	.p2align	4, , 16
.LBB2_332:                              # %.lr.ph50.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s0, 0
	ld.d	$a1, $s4, 0
	move	$a2, $s2
	pcaddu18i	$ra, %call36(gapireru)
	jirl	$ra, $ra, 0
	addi.d	$s5, $s5, -1
	addi.d	$s4, $s4, 8
	addi.d	$s0, $s0, 8
	bnez	$s5, .LBB2_332
.LBB2_333:                              # %.preheader.i585
	ld.d	$s2, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 152                   # 8-byte Folded Reload
	blt	$s2, $s1, .LBB2_336
# %bb.334:                              # %.lr.ph52.preheader.i
	move	$s0, $s4
	move	$s1, $s2
	.p2align	4, , 16
.LBB2_335:                              # %.lr.ph52.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s8, 0
	ld.d	$a1, $s0, 0
	move	$a2, $s3
	pcaddu18i	$ra, %call36(gapireru)
	jirl	$ra, $ra, 0
	addi.d	$s1, $s1, -1
	addi.d	$s0, $s0, 8
	addi.d	$s8, $s8, 8
	bnez	$s1, .LBB2_335
.LBB2_336:                              # %Atracking_localhom.exit
	ld.d	$a0, $sp, 440                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 432                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(H__align.mseq1)
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.w	$a3, $a0, 0
	lu12i.w	$a4, 1220
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	blt	$a2, $a3, .LBB2_338
# %bb.337:                              # %Atracking_localhom.exit
	ori	$a0, $a4, 2881
	blt	$a3, $a0, .LBB2_339
.LBB2_338:
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
.LBB2_339:
	ori	$s0, $zero, 1
	ld.d	$s3, $sp, 144                   # 8-byte Folded Reload
	blt	$s6, $s0, .LBB2_342
# %bb.340:                              # %.lr.ph718
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s1, $a0, %pc_lo12(H__align.mseq1)
	.p2align	4, , 16
.LBB2_341:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s3, 0
	ld.d	$a1, $s1, 0
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	addi.d	$s1, $s1, 8
	addi.d	$s6, $s6, -1
	addi.d	$s3, $s3, 8
	bnez	$s6, .LBB2_341
.LBB2_342:                              # %.preheader645
	blt	$s2, $s0, .LBB2_345
# %bb.343:                              # %.lr.ph720
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s0, $a0, %pc_lo12(H__align.mseq2)
	.p2align	4, , 16
.LBB2_344:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s4, 0
	ld.d	$a1, $s0, 0
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	addi.d	$s0, $s0, 8
	addi.d	$s2, $s2, -1
	addi.d	$s4, $s4, 8
	bnez	$s2, .LBB2_344
.LBB2_345:                              # %._crit_edge721
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	fcvt.d.s	$fa0, $fs0
	movfr2gr.d	$a2, $fa0
	pcalau12i	$a1, %pc_hi20(.L.str.2)
	addi.d	$a1, $a1, %pc_lo12(.L.str.2)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	bltz	$a0, .LBB2_348
# %bb.346:                              # %.lr.ph725
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s0, $a0, %pc_lo12(H__align.gappat1)
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	addi.d	$a0, $a0, 1
	bstrpick.d	$s1, $a0, 31, 0
	.p2align	4, , 16
.LBB2_347:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s0, 0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	st.d	$zero, $s0, 0
	addi.d	$s1, $s1, -1
	addi.d	$s0, $s0, 8
	bnez	$s1, .LBB2_347
.LBB2_348:                              # %.preheader
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 424                   # 8-byte Folded Reload
	bltz	$a1, .LBB2_351
# %bb.349:                              # %.lr.ph728
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s0, $a1, %pc_lo12(H__align.gappat2)
	addi.d	$a0, $a0, 1
	bstrpick.d	$s1, $a0, 31, 0
	.p2align	4, , 16
.LBB2_350:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s0, 0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	st.d	$zero, $s0, 0
	addi.d	$s1, $s1, -1
	addi.d	$s0, $s0, 8
	bnez	$s1, .LBB2_350
.LBB2_351:                              # %._crit_edge729
	fmov.s	$fa0, $fs0
	addi.d	$sp, $fp, -800
	fld.d	$fs2, $sp, 688                  # 8-byte Folded Reload
	fld.d	$fs1, $sp, 696                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 704                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 712                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 720                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 728                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 736                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 744                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 752                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 760                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 768                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 776                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 784                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 792                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 800
	ret
.Lfunc_end2:
	.size	H__align, .Lfunc_end2-H__align
                                        # -- End function
	.p2align	5                               # -- Begin function match_calc
	.type	match_calc,@function
match_calc:                             # @match_calc
# %bb.0:
	addi.d	$sp, $sp, -160
	st.d	$fp, $sp, 152                   # 8-byte Folded Spill
	st.d	$s0, $sp, 144                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 136                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 128                  # 8-byte Folded Spill
	fst.d	$fs2, $sp, 120                  # 8-byte Folded Spill
	fst.d	$fs3, $sp, 112                  # 8-byte Folded Spill
	fst.d	$fs4, $sp, 104                  # 8-byte Folded Spill
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
	addi.d	$a3, $sp, 0
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
	addi.d	$a1, $sp, 0
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
	fld.d	$fs4, $sp, 104                  # 8-byte Folded Reload
	fld.d	$fs3, $sp, 112                  # 8-byte Folded Reload
	fld.d	$fs2, $sp, 120                  # 8-byte Folded Reload
	fld.d	$fs1, $sp, 128                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 136                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 144                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 152                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 160
	ret
.Lfunc_end3:
	.size	match_calc, .Lfunc_end3-match_calc
                                        # -- End function
	.type	impmtx,@object                  # @impmtx
	.local	impmtx
	.comm	impmtx,8,8
	.type	imp_match_init_strictH.impalloclen,@object # @imp_match_init_strictH.impalloclen
	.local	imp_match_init_strictH.impalloclen
	.comm	imp_match_init_strictH.impalloclen,4,4
	.type	imp_match_init_strictH.nocount1,@object # @imp_match_init_strictH.nocount1
	.local	imp_match_init_strictH.nocount1
	.comm	imp_match_init_strictH.nocount1,8,8
	.type	imp_match_init_strictH.nocount2,@object # @imp_match_init_strictH.nocount2
	.local	imp_match_init_strictH.nocount2
	.comm	imp_match_init_strictH.nocount2,8,8
	.type	H__align.m,@object              # @H__align.m
	.local	H__align.m
	.comm	H__align.m,8,8
	.type	H__align.ijp,@object            # @H__align.ijp
	.local	H__align.ijp
	.comm	H__align.ijp,8,8
	.type	H__align.mp,@object             # @H__align.mp
	.local	H__align.mp
	.comm	H__align.mp,8,8
	.type	H__align.w1,@object             # @H__align.w1
	.local	H__align.w1
	.comm	H__align.w1,8,8
	.type	H__align.w2,@object             # @H__align.w2
	.local	H__align.w2
	.comm	H__align.w2,8,8
	.type	H__align.match,@object          # @H__align.match
	.local	H__align.match
	.comm	H__align.match,8,8
	.type	H__align.initverticalw,@object  # @H__align.initverticalw
	.local	H__align.initverticalw
	.comm	H__align.initverticalw,8,8
	.type	H__align.lastverticalw,@object  # @H__align.lastverticalw
	.local	H__align.lastverticalw
	.comm	H__align.lastverticalw,8,8
	.type	H__align.mseq1,@object          # @H__align.mseq1
	.local	H__align.mseq1
	.comm	H__align.mseq1,8,8
	.type	H__align.mseq2,@object          # @H__align.mseq2
	.local	H__align.mseq2
	.comm	H__align.mseq2,8,8
	.type	H__align.mseq,@object           # @H__align.mseq
	.local	H__align.mseq
	.comm	H__align.mseq,8,8
	.type	H__align.gappat1,@object        # @H__align.gappat1
	.local	H__align.gappat1
	.comm	H__align.gappat1,8,8
	.type	H__align.gappat2,@object        # @H__align.gappat2
	.local	H__align.gappat2
	.comm	H__align.gappat2,8,8
	.type	H__align.digf1,@object          # @H__align.digf1
	.local	H__align.digf1
	.comm	H__align.digf1,8,8
	.type	H__align.digf2,@object          # @H__align.digf2
	.local	H__align.digf2
	.comm	H__align.digf2,8,8
	.type	H__align.diaf1,@object          # @H__align.diaf1
	.local	H__align.diaf1
	.comm	H__align.diaf1,8,8
	.type	H__align.diaf2,@object          # @H__align.diaf2
	.local	H__align.diaf2
	.comm	H__align.diaf2,8,8
	.type	H__align.gapz1,@object          # @H__align.gapz1
	.local	H__align.gapz1
	.comm	H__align.gapz1,8,8
	.type	H__align.gapz2,@object          # @H__align.gapz2
	.local	H__align.gapz2
	.comm	H__align.gapz2,8,8
	.type	H__align.gapf1,@object          # @H__align.gapf1
	.local	H__align.gapf1
	.comm	H__align.gapf1,8,8
	.type	H__align.gapf2,@object          # @H__align.gapf2
	.local	H__align.gapf2
	.comm	H__align.gapf2,8,8
	.type	H__align.ogcp1g,@object         # @H__align.ogcp1g
	.local	H__align.ogcp1g
	.comm	H__align.ogcp1g,8,8
	.type	H__align.ogcp2g,@object         # @H__align.ogcp2g
	.local	H__align.ogcp2g
	.comm	H__align.ogcp2g,8,8
	.type	H__align.fgcp1g,@object         # @H__align.fgcp1g
	.local	H__align.fgcp1g
	.comm	H__align.fgcp1g,8,8
	.type	H__align.fgcp2g,@object         # @H__align.fgcp2g
	.local	H__align.fgcp2g
	.comm	H__align.fgcp2g,8,8
	.type	H__align.ogcp1,@object          # @H__align.ogcp1
	.local	H__align.ogcp1
	.comm	H__align.ogcp1,8,8
	.type	H__align.ogcp2,@object          # @H__align.ogcp2
	.local	H__align.ogcp2
	.comm	H__align.ogcp2,8,8
	.type	H__align.fgcp1,@object          # @H__align.fgcp1
	.local	H__align.fgcp1
	.comm	H__align.fgcp1,8,8
	.type	H__align.fgcp2,@object          # @H__align.fgcp2
	.local	H__align.fgcp2
	.comm	H__align.fgcp2,8,8
	.type	H__align.cpmx1,@object          # @H__align.cpmx1
	.local	H__align.cpmx1
	.comm	H__align.cpmx1,8,8
	.type	H__align.cpmx2,@object          # @H__align.cpmx2
	.local	H__align.cpmx2
	.comm	H__align.cpmx2,8,8
	.type	H__align.intwork,@object        # @H__align.intwork
	.local	H__align.intwork
	.comm	H__align.intwork,8,8
	.type	H__align.floatwork,@object      # @H__align.floatwork
	.local	H__align.floatwork
	.comm	H__align.floatwork,8,8
	.type	H__align.orlgth1,@object        # @H__align.orlgth1
	.local	H__align.orlgth1
	.comm	H__align.orlgth1,4,4
	.type	H__align.orlgth2,@object        # @H__align.orlgth2
	.local	H__align.orlgth2
	.comm	H__align.orlgth2,4,4
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
