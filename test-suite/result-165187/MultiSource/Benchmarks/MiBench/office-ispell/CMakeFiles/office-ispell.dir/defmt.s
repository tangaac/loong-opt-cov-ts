	.file	"defmt.c"
	.text
	.globl	skipoverword                    # -- Begin function skipoverword
	.p2align	5
	.type	skipoverword,@function
skipoverword:                           # @skipoverword
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	ld.bu	$a1, $a0, 0
	beqz	$a1, .LBB0_12
# %bb.1:                                # %.lr.ph.preheader
	pcalau12i	$a2, %got_pc_hi20(hashheader)
	ld.d	$s1, $a2, %got_pc_lo12(hashheader)
	move	$s0, $zero
	move	$fp, $a0
	b	.LBB0_5
	.p2align	4, , 16
.LBB0_2:                                #   in Loop: Header=BB0_5 Depth=1
	add.d	$a1, $s1, $a1
	ld.bu	$a2, $a1, 982
	ori	$a0, $zero, 1
	beqz	$a2, .LBB0_8
.LBB0_3:                                #   in Loop: Header=BB0_5 Depth=1
	move	$s0, $zero
.LBB0_4:                                #   in Loop: Header=BB0_5 Depth=1
	ldx.bu	$a1, $fp, $a0
	add.d	$a0, $fp, $a0
	move	$fp, $a0
	beqz	$a1, .LBB0_13
.LBB0_5:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a0, $s1, $a1
	ld.bu	$a0, $a0, 1894
	beqz	$a0, .LBB0_2
# %bb.6:                                #   in Loop: Header=BB0_5 Depth=1
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(stringcharlen)
	jirl	$ra, $ra, 0
	bgtz	$a0, .LBB0_3
# %bb.7:                                # %._crit_edge30
                                        #   in Loop: Header=BB0_5 Depth=1
	ld.bu	$a1, $fp, 0
	b	.LBB0_2
	.p2align	4, , 16
.LBB0_8:                                #   in Loop: Header=BB0_5 Depth=1
	ld.bu	$a1, $a1, 1666
	beqz	$a1, .LBB0_15
# %bb.9:                                #   in Loop: Header=BB0_5 Depth=1
	beqz	$s0, .LBB0_11
# %bb.10:                               #   in Loop: Header=BB0_5 Depth=1
	addi.d	$a1, $fp, -1
	bne	$s0, $a1, .LBB0_4
	b	.LBB0_15
.LBB0_11:                               #   in Loop: Header=BB0_5 Depth=1
	move	$s0, $fp
	b	.LBB0_4
.LBB0_12:
	move	$s0, $zero
.LBB0_13:                               # %._crit_edge
	pcalau12i	$a1, %pc_hi20(TeX_comment)
	ld.bu	$a2, $a1, %pc_lo12(TeX_comment)
	beqz	$a2, .LBB0_16
# %bb.14:
	pcalau12i	$a2, %pc_hi20(save_math_mode)
	ld.w	$a2, $a2, %pc_lo12(save_math_mode)
	pcalau12i	$a3, %got_pc_hi20(math_mode)
	ld.d	$a3, $a3, %got_pc_lo12(math_mode)
	pcalau12i	$a4, %pc_hi20(save_LaTeX_Mode)
	ld.b	$a4, $a4, %pc_lo12(save_LaTeX_Mode)
	st.w	$a2, $a3, 0
	pcalau12i	$a2, %got_pc_hi20(LaTeX_Mode)
	ld.d	$a2, $a2, %got_pc_lo12(LaTeX_Mode)
	st.b	$a4, $a2, 0
	st.b	$zero, $a1, %pc_lo12(TeX_comment)
	b	.LBB0_16
.LBB0_15:
	move	$a0, $fp
.LBB0_16:                               # %.loopexit
	sltui	$a1, $s0, 1
	masknez	$a2, $s0, $a1
	maskeqz	$a0, $a0, $a1
	or	$a0, $a0, $a2
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end0:
	.size	skipoverword, .Lfunc_end0-skipoverword
                                        # -- End function
	.globl	checkline                       # -- Begin function checkline
	.p2align	5
	.type	checkline,@function
checkline:                              # @checkline
# %bb.0:
	addi.d	$sp, $sp, -208
	st.d	$ra, $sp, 200                   # 8-byte Folded Spill
	st.d	$fp, $sp, 192                   # 8-byte Folded Spill
	st.d	$s0, $sp, 184                   # 8-byte Folded Spill
	st.d	$s1, $sp, 176                   # 8-byte Folded Spill
	st.d	$s2, $sp, 168                   # 8-byte Folded Spill
	st.d	$s3, $sp, 160                   # 8-byte Folded Spill
	st.d	$s4, $sp, 152                   # 8-byte Folded Spill
	st.d	$s5, $sp, 144                   # 8-byte Folded Spill
	st.d	$s6, $sp, 136                   # 8-byte Folded Spill
	st.d	$s7, $sp, 128                   # 8-byte Folded Spill
	st.d	$s8, $sp, 120                   # 8-byte Folded Spill
	move	$s7, $a0
	pcalau12i	$a0, %got_pc_hi20(currentchar)
	ld.d	$s0, $a0, %got_pc_lo12(currentchar)
	pcalau12i	$a0, %got_pc_hi20(contextbufs)
	ld.d	$s3, $a0, %got_pc_lo12(contextbufs)
	st.d	$s3, $s0, 0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	slli.d	$a0, $a0, 32
	ori	$a1, $zero, 0
	lu32i.d	$a1, -1
	add.d	$a0, $a0, $a1
	srai.d	$a0, $a0, 32
	ldx.bu	$s5, $s3, $a0
	ori	$a1, $zero, 10
	bne	$s5, $a1, .LBB1_2
# %bb.1:
	pcalau12i	$a1, %got_pc_hi20(contextbufs)
	ld.d	$a1, $a1, %got_pc_lo12(contextbufs)
	stx.b	$zero, $a1, $a0
.LBB1_2:
	pcalau12i	$a0, %got_pc_hi20(tflag)
	ld.d	$s2, $a0, %got_pc_lo12(tflag)
	ld.w	$a0, $s2, 0
	st.d	$s2, $sp, 56                    # 8-byte Folded Spill
	bnez	$a0, .LBB1_36
# %bb.3:
	pcalau12i	$a0, %got_pc_hi20(contextbufs)
	ld.d	$s3, $a0, %got_pc_lo12(contextbufs)
	ld.bu	$s2, $s3, 0
	pcalau12i	$a0, %got_pc_hi20(hashheader)
	ld.d	$fp, $a0, %got_pc_lo12(hashheader)
	ld.bu	$a0, $fp, 50
	bne	$s2, $a0, .LBB1_10
# %bb.4:
	pcalau12i	$a0, %got_pc_hi20(contextbufs)
	ld.d	$s3, $a0, %got_pc_lo12(contextbufs)
	ld.w	$a0, $s3, 1
	lu12i.w	$a1, 475654
	ori	$a1, $a1, 1641
	beq	$a0, $a1, .LBB1_6
# %bb.5:
	ld.w	$a0, $s3, 1
	lu12i.w	$a1, 451078
	ori	$a1, $a1, 1641
	bne	$a0, $a1, .LBB1_10
.LBB1_6:
	ori	$a1, $zero, 5
	move	$a0, $s0
	pcaddu18i	$ra, %call36(copyout)
	jirl	$ra, $ra, 0
	ld.d	$s3, $s0, 0
	ld.b	$s2, $s3, 0
	blez	$s2, .LBB1_10
# %bb.7:                                # %.lr.ph
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	ld.d	$a0, $a0, 0
	slli.d	$a1, $s2, 1
	ldx.hu	$a0, $a0, $a1
	slli.d	$a0, $a0, 50
	bgez	$a0, .LBB1_10
	.p2align	4, , 16
.LBB1_8:                                # %.lr.ph395
                                        # =>This Inner Loop Header: Depth=1
	ori	$a1, $zero, 1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(copyout)
	jirl	$ra, $ra, 0
	ld.d	$s3, $s0, 0
	ld.b	$s2, $s3, 0
	blez	$s2, .LBB1_10
# %bb.9:                                #   in Loop: Header=BB1_8 Depth=1
	ld.d	$a0, $s1, 0
	slli.d	$a1, $s2, 1
	ldx.hu	$a0, $a0, $a1
	slli.d	$a0, $a0, 50
	bltz	$a0, .LBB1_8
.LBB1_10:                               # %.critedge
	ld.bu	$a0, $fp, 50
	andi	$a1, $s2, 255
	bne	$a1, $a0, .LBB1_26
# %bb.11:                               # %sub_0
	ld.bu	$a0, $s3, 1
	ori	$a1, $zero, 110
	beq	$a0, $a1, .LBB1_16
# %bb.12:                               # %sub_0
	ori	$a1, $zero, 100
	bne	$a0, $a1, .LBB1_26
# %bb.13:                               # %sub_1
	ld.bu	$a0, $s3, 2
	ori	$a1, $zero, 115
	bne	$a0, $a1, .LBB1_15
# %bb.14:                               # %.tail
	ld.bu	$a0, $s3, 3
	ori	$a1, $zero, 32
	beq	$a0, $a1, .LBB1_18
.LBB1_15:                               # %sub_1108
	ld.bu	$a0, $s3, 2
	ori	$a1, $zero, 101
	beq	$a0, $a1, .LBB1_17
	b	.LBB1_26
.LBB1_16:                               # %sub_1113
	ld.bu	$a0, $s3, 2
	ori	$a1, $zero, 114
	bne	$a0, $a1, .LBB1_26
.LBB1_17:                               # %.tail111
	ld.bu	$a0, $s3, 3
	ori	$a1, $zero, 32
	bne	$a0, $a1, .LBB1_26
.LBB1_18:
	ori	$a1, $zero, 4
	move	$a0, $s0
	pcaddu18i	$ra, %call36(copyout)
	jirl	$ra, $ra, 0
	ld.d	$s3, $s0, 0
	ld.b	$s2, $s3, 0
	blez	$s2, .LBB1_22
# %bb.19:                               # %.lr.ph156
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	ld.d	$a0, $a0, 0
	slli.d	$a1, $s2, 1
	ldx.hu	$a0, $a0, $a1
	slli.d	$a0, $a0, 50
	bgez	$a0, .LBB1_24
	.p2align	4, , 16
.LBB1_20:                               # %.lr.ph401
                                        # =>This Inner Loop Header: Depth=1
	ori	$a1, $zero, 1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(copyout)
	jirl	$ra, $ra, 0
	ld.d	$s3, $s0, 0
	ld.b	$s2, $s3, 0
	blez	$s2, .LBB1_22
# %bb.21:                               #   in Loop: Header=BB1_20 Depth=1
	ld.d	$a0, $s1, 0
	slli.d	$a1, $s2, 1
	ldx.hu	$a0, $a0, $a1
	slli.d	$a0, $a0, 50
	bltz	$a0, .LBB1_20
	b	.LBB1_24
.LBB1_22:                               # %.critedge2
	bnez	$s2, .LBB1_24
	b	.LBB1_333
	.p2align	4, , 16
.LBB1_23:                               # %.critedge88
                                        #   in Loop: Header=BB1_24 Depth=1
	ori	$a1, $zero, 1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(copyout)
	jirl	$ra, $ra, 0
	ld.d	$s3, $s0, 0
	ld.bu	$s2, $s3, 0
	beqz	$s2, .LBB1_333
.LBB1_24:                               # %.lr.ph159
                                        # =>This Inner Loop Header: Depth=1
	ext.w.b	$a0, $s2
	bltz	$a0, .LBB1_23
# %bb.25:                               #   in Loop: Header=BB1_24 Depth=1
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $a0, 0
	andi	$a1, $s2, 255
	slli.d	$a1, $a1, 1
	ldx.hu	$a0, $a0, $a1
	slli.d	$a0, $a0, 50
	bgez	$a0, .LBB1_23
.LBB1_26:                               # %.critedge4
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	bnez	$a0, .LBB1_35
# %bb.27:                               # %.critedge4
	ld.bu	$a1, $fp, 50
	andi	$a0, $s2, 255
	bne	$a0, $a1, .LBB1_35
# %bb.28:                               # %.preheader
	beqz	$a0, .LBB1_333
# %bb.29:                               # %.lr.ph161.preheader
	pcalau12i	$a0, %got_pc_hi20(aflag)
	ld.d	$fp, $a0, %got_pc_lo12(aflag)
	pcalau12i	$a0, %got_pc_hi20(lflag)
	ld.d	$s4, $a0, %got_pc_lo12(lflag)
	b	.LBB1_31
	.p2align	4, , 16
.LBB1_30:                               #   in Loop: Header=BB1_31 Depth=1
	addi.d	$a0, $s3, 1
	st.d	$a0, $s0, 0
	ld.bu	$s2, $s3, 1
	move	$s3, $a0
	beqz	$s2, .LBB1_333
.LBB1_31:                               # %.lr.ph161
                                        # =>This Inner Loop Header: Depth=1
	ext.w.b	$s1, $s2
	bltz	$s1, .LBB1_33
# %bb.32:                               #   in Loop: Header=BB1_31 Depth=1
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $a0, 0
	andi	$a1, $s2, 255
	slli.d	$a1, $a1, 1
	ldx.hu	$a0, $a0, $a1
	slli.d	$a0, $a0, 50
	bltz	$a0, .LBB1_35
.LBB1_33:                               # %.critedge90
                                        #   in Loop: Header=BB1_31 Depth=1
	ld.w	$a0, $fp, 0
	ld.w	$a1, $s4, 0
	or	$a0, $a0, $a1
	bnez	$a0, .LBB1_30
# %bb.34:                               #   in Loop: Header=BB1_31 Depth=1
	move	$a0, $s1
	move	$a1, $s7
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	ld.d	$s3, $s0, 0
	b	.LBB1_30
.LBB1_35:
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
.LBB1_36:                               # %.critedge7.preheader
	st.d	$s5, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(TeX_comment)
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(save_math_mode)
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(math_mode)
	ld.d	$s5, $a0, %got_pc_lo12(math_mode)
	pcalau12i	$a0, %pc_hi20(save_LaTeX_Mode)
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(LaTeX_Mode)
	ld.d	$a0, $a0, %got_pc_lo12(LaTeX_Mode)
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(hashheader)
	ld.d	$fp, $a0, %got_pc_lo12(hashheader)
	pcalau12i	$a0, %got_pc_hi20(ctoken)
	ld.d	$s1, $a0, %got_pc_lo12(ctoken)
	pcalau12i	$a0, %got_pc_hi20(itoken)
	ld.d	$a0, $a0, %got_pc_lo12(itoken)
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(lflag)
	ld.d	$a0, $a0, %got_pc_lo12(lflag)
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(aflag)
	ld.d	$a0, $a0, %got_pc_lo12(aflag)
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	st.d	$s7, $sp, 32                    # 8-byte Folded Spill
	st.d	$s5, $sp, 40                    # 8-byte Folded Spill
	st.d	$s3, $sp, 112
	ld.bu	$a1, $s3, 0
	beqz	$a1, .LBB1_272
	.p2align	4, , 16
.LBB1_37:                               # %.lr.ph109.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_70 Depth 2
                                        #     Child Loop BB1_227 Depth 2
                                        #     Child Loop BB1_215 Depth 2
                                        #     Child Loop BB1_123 Depth 2
                                        #       Child Loop BB1_126 Depth 3
                                        #       Child Loop BB1_141 Depth 3
                                        #     Child Loop BB1_201 Depth 2
                                        #     Child Loop BB1_264 Depth 2
                                        #     Child Loop BB1_256 Depth 2
                                        #     Child Loop BB1_103 Depth 2
                                        #     Child Loop BB1_121 Depth 2
	andi	$s4, $a1, 255
	add.d	$a0, $fp, $s4
	ld.bu	$a0, $a0, 1894
	beqz	$a0, .LBB1_41
# %bb.38:                               #   in Loop: Header=BB1_37 Depth=1
	move	$a0, $s3
	move	$a1, $zero
	pcaddu18i	$ra, %call36(stringcharlen)
	jirl	$ra, $ra, 0
	ld.bu	$s4, $s3, 0
	blez	$a0, .LBB1_40
# %bb.39:                               # %._crit_edge153.i
                                        #   in Loop: Header=BB1_37 Depth=1
	ld.w	$a0, $s2, 0
	b	.LBB1_42
	.p2align	4, , 16
.LBB1_40:                               # %._crit_edge.i
                                        #   in Loop: Header=BB1_37 Depth=1
	move	$a1, $s4
.LBB1_41:                               #   in Loop: Header=BB1_37 Depth=1
	add.d	$a0, $fp, $s4
	ld.bu	$a2, $a0, 982
	ld.w	$a0, $s2, 0
	move	$s4, $a1
	beqz	$a2, .LBB1_43
.LBB1_42:                               #   in Loop: Header=BB1_37 Depth=1
	andi	$a1, $s4, 255
	add.d	$a1, $fp, $a1
	ld.bu	$a1, $a1, 1666
	beqz	$a1, .LBB1_49
.LBB1_43:                               # %.critedge2.i
                                        #   in Loop: Header=BB1_37 Depth=1
	bnez	$a0, .LBB1_51
# %bb.44:                               #   in Loop: Header=BB1_37 Depth=1
	ld.bu	$a0, $fp, 51
	andi	$a1, $s4, 255
	bne	$a1, $a0, .LBB1_113
# %bb.45:                               #   in Loop: Header=BB1_37 Depth=1
	ld.bu	$a0, $s3, 1
	ori	$a1, $zero, 115
	beq	$a0, $a1, .LBB1_80
# %bb.46:                               #   in Loop: Header=BB1_37 Depth=1
	ori	$a1, $zero, 102
	bne	$a0, $a1, .LBB1_85
# %bb.47:                               #   in Loop: Header=BB1_37 Depth=1
	ld.bu	$a0, $s3, 2
	ld.bu	$a1, $fp, 48
.LBB1_48:                               # %.backedge.sink.split.i
                                        #   in Loop: Header=BB1_37 Depth=1
	xor	$a0, $a0, $a1
	sltui	$a0, $a0, 1
	ori	$a1, $zero, 3
	masknez	$a1, $a1, $a0
	ori	$a2, $zero, 5
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
	add.d	$s3, $s3, $a0
	b	.LBB1_118
	.p2align	4, , 16
.LBB1_49:                               #   in Loop: Header=BB1_37 Depth=1
	beqz	$a0, .LBB1_267
# %bb.50:                               #   in Loop: Header=BB1_37 Depth=1
	ld.wu	$a0, $s5, 0
	andi	$a0, $a0, 1
	beqz	$a0, .LBB1_267
.LBB1_51:                               # %.critedge2.thread.i
                                        #   in Loop: Header=BB1_37 Depth=1
	ld.bu	$a0, $fp, 65
	andi	$a1, $s4, 255
	bne	$a1, $a0, .LBB1_54
# %bb.52:                               #   in Loop: Header=BB1_37 Depth=1
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.bu	$a0, $a0, %pc_lo12(TeX_comment)
	bnez	$a0, .LBB1_112
# %bb.53:                               #   in Loop: Header=BB1_37 Depth=1
	ld.w	$a0, $s5, 0
	ld.d	$a3, $sp, 96                    # 8-byte Folded Reload
	ld.b	$a1, $a3, 0
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	st.w	$a0, $a2, %pc_lo12(save_math_mode)
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	st.b	$a1, $a0, %pc_lo12(save_LaTeX_Mode)
	st.w	$zero, $s5, 0
	ori	$a0, $zero, 80
	st.b	$a0, $a3, 0
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ori	$a1, $zero, 1
	st.b	$a1, $a0, %pc_lo12(TeX_comment)
	b	.LBB1_112
	.p2align	4, , 16
.LBB1_54:                               #   in Loop: Header=BB1_37 Depth=1
	ld.w	$a0, $s5, 0
	andi	$a2, $a0, 1
	bnez	$a2, .LBB1_62
# %bb.55:                               #   in Loop: Header=BB1_37 Depth=1
	ori	$a2, $zero, 2
	blt	$a0, $a2, .LBB1_58
# %bb.56:                               #   in Loop: Header=BB1_37 Depth=1
	ld.bu	$a2, $fp, 58
	bne	$a1, $a2, .LBB1_58
# %bb.57:                               #   in Loop: Header=BB1_37 Depth=1
	slli.d	$a1, $a0, 7
	bstrpick.d	$a1, $a1, 13, 8
	slli.d	$a1, $a1, 8
	bltu	$a0, $a1, .LBB1_61
.LBB1_58:                               #   in Loop: Header=BB1_37 Depth=1
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ld.bu	$s6, $a1, 0
	ori	$a1, $zero, 109
	bne	$s6, $a1, .LBB1_74
.LBB1_59:                               # %TeX_strncmp.exit.thread72.i
                                        #   in Loop: Header=BB1_37 Depth=1
	addi.d	$a1, $sp, 112
	move	$a0, $zero
	pcaddu18i	$ra, %call36(TeX_LR_check)
	jirl	$ra, $ra, 0
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	beqz	$a0, .LBB1_112
# %bb.60:                               #   in Loop: Header=BB1_37 Depth=1
	ld.w	$a0, $s5, 0
.LBB1_61:                               #   in Loop: Header=BB1_37 Depth=1
	addi.d	$a0, $a0, -1
	st.w	$a0, $s5, 0
	b	.LBB1_112
.LBB1_62:                               #   in Loop: Header=BB1_37 Depth=1
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.bu	$a0, $a0, 0
	ori	$a1, $zero, 101
	bne	$a0, $a1, .LBB1_65
# %bb.63:                               #   in Loop: Header=BB1_37 Depth=1
	ori	$a0, $zero, 101
	addi.d	$a1, $sp, 112
	pcaddu18i	$ra, %call36(TeX_math_check)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB1_67
# %bb.64:                               # %thread-pre-split.i
                                        #   in Loop: Header=BB1_37 Depth=1
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.bu	$a0, $a0, 0
.LBB1_65:                               #   in Loop: Header=BB1_37 Depth=1
	ori	$a1, $zero, 109
	bne	$a0, $a1, .LBB1_68
# %bb.66:                               #   in Loop: Header=BB1_37 Depth=1
	ori	$a0, $zero, 1
	addi.d	$a1, $sp, 112
	pcaddu18i	$ra, %call36(TeX_LR_check)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_68
.LBB1_67:                               #   in Loop: Header=BB1_37 Depth=1
	ld.w	$a0, $s5, 0
	addi.w	$a0, $a0, -1
	st.w	$a0, $s5, 0
	bgez	$a0, .LBB1_112
	b	.LBB1_92
.LBB1_68:                               #   in Loop: Header=BB1_37 Depth=1
	ld.d	$s3, $sp, 112
	ld.bu	$a0, $s3, 0
	beqz	$a0, .LBB1_272
# %bb.69:                               # %.lr.ph.i
                                        #   in Loop: Header=BB1_37 Depth=1
	ld.bu	$a2, $fp, 61
	ld.bu	$s4, $fp, 62
	ld.bu	$a1, $fp, 65
	addi.d	$s6, $s3, 2
	.p2align	4, , 16
.LBB1_70:                               #   Parent Loop BB1_37 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$a0, $a2, .LBB1_87
# %bb.71:                               #   in Loop: Header=BB1_70 Depth=2
	beq	$a0, $s4, .LBB1_87
# %bb.72:                               #   in Loop: Header=BB1_70 Depth=2
	beq	$a0, $a1, .LBB1_87
# %bb.73:                               #   in Loop: Header=BB1_70 Depth=2
	ld.bu	$a0, $s3, 1
	addi.d	$a3, $s3, 1
	addi.d	$s6, $s6, 1
	move	$s3, $a3
	bnez	$a0, .LBB1_70
	b	.LBB1_268
.LBB1_74:                               #   in Loop: Header=BB1_37 Depth=1
	beqz	$a0, .LBB1_77
# %bb.75:                               #   in Loop: Header=BB1_37 Depth=1
	slli.d	$a1, $a0, 7
	bstrpick.d	$a1, $a1, 13, 8
	slli.d	$a1, $a1, 8
	blt	$a0, $a1, .LBB1_77
# %bb.76:                               #   in Loop: Header=BB1_37 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.17)
	addi.d	$a1, $a0, %pc_lo12(.L.str.17)
	ori	$a2, $zero, 4
	move	$a0, $s3
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_160
.LBB1_77:                               # %TeX_strncmp.exit.i
                                        #   in Loop: Header=BB1_37 Depth=1
	ori	$a0, $zero, 98
	bne	$s6, $a0, .LBB1_99
# %bb.78:                               #   in Loop: Header=BB1_37 Depth=1
	ori	$a0, $zero, 98
	addi.d	$a1, $sp, 112
	pcaddu18i	$ra, %call36(TeX_math_check)
	jirl	$ra, $ra, 0
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	beqz	$a0, .LBB1_98
# %bb.79:                               #   in Loop: Header=BB1_37 Depth=1
	ld.w	$a0, $s5, 0
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, 0
	b	.LBB1_112
.LBB1_80:                               #   in Loop: Header=BB1_37 Depth=1
	addi.d	$s4, $s3, 2
	st.d	$s4, $sp, 112
	ld.bu	$a0, $s3, 2
	ori	$a1, $zero, 45
	beq	$a0, $a1, .LBB1_82
# %bb.81:                               #   in Loop: Header=BB1_37 Depth=1
	ori	$a1, $zero, 43
	bne	$a0, $a1, .LBB1_83
.LBB1_82:                               #   in Loop: Header=BB1_37 Depth=1
	addi.d	$s4, $s3, 3
.LBB1_83:                               #   in Loop: Header=BB1_37 Depth=1
	addi.d	$s3, $s4, 1
	st.d	$s3, $sp, 112
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	ld.bu	$a1, $s4, 1
	ld.d	$a0, $a0, 0
	ext.w.b	$a2, $a1
	slli.d	$a2, $a2, 1
	ldx.hu	$a0, $a0, $a2
	slli.d	$a0, $a0, 52
	bgez	$a0, .LBB1_119
# %bb.84:                               #   in Loop: Header=BB1_37 Depth=1
	addi.d	$s3, $s4, 2
	b	.LBB1_118
.LBB1_85:                               #   in Loop: Header=BB1_37 Depth=1
	ld.bu	$a1, $fp, 48
	bne	$a0, $a1, .LBB1_93
# %bb.86:                               #   in Loop: Header=BB1_37 Depth=1
	addi.d	$s3, $s3, 4
	b	.LBB1_118
.LBB1_87:                               # %.critedge4.i
                                        #   in Loop: Header=BB1_37 Depth=1
	st.d	$s3, $sp, 112
	bne	$a0, $s4, .LBB1_95
# %bb.88:                               #   in Loop: Header=BB1_37 Depth=1
	ld.bu	$a0, $s3, 1
	bne	$a0, $s4, .LBB1_90
# %bb.89:                               #   in Loop: Header=BB1_37 Depth=1
	addi.d	$a0, $s3, 1
	st.d	$a0, $sp, 112
.LBB1_90:                               # %TeX_math_end.exit.thread66.i
                                        #   in Loop: Header=BB1_37 Depth=1
	ld.w	$a0, $s5, 0
	addi.w	$a0, $a0, -1
	st.w	$a0, $s5, 0
.LBB1_91:                               #   in Loop: Header=BB1_37 Depth=1
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	bgez	$a0, .LBB1_112
.LBB1_92:                               #   in Loop: Header=BB1_37 Depth=1
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.16)
	addi.d	$a0, $a0, %pc_lo12(.L.str.16)
	ori	$a1, $zero, 37
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	st.w	$zero, $s5, 0
	b	.LBB1_112
.LBB1_93:                               #   in Loop: Header=BB1_37 Depth=1
	ld.bu	$a2, $fp, 52
	bne	$a0, $a2, .LBB1_113
# %bb.94:                               #   in Loop: Header=BB1_37 Depth=1
	ld.bu	$a0, $s3, 2
	b	.LBB1_48
.LBB1_95:                               #   in Loop: Header=BB1_37 Depth=1
	bne	$a0, $a1, .LBB1_145
# %bb.96:                               #   in Loop: Header=BB1_37 Depth=1
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.bu	$a0, $a0, %pc_lo12(TeX_comment)
	beqz	$a0, .LBB1_162
.LBB1_97:                               # %thread-pre-split69.i
                                        #   in Loop: Header=BB1_37 Depth=1
	ld.w	$a0, $s5, 0
	b	.LBB1_91
.LBB1_98:                               # %._crit_edge143.i
                                        #   in Loop: Header=BB1_37 Depth=1
	ld.d	$s3, $sp, 112
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.bu	$s6, $a0, 0
	ld.bu	$s4, $s3, 0
.LBB1_99:                               #   in Loop: Header=BB1_37 Depth=1
	andi	$a2, $s4, 255
	ori	$a0, $zero, 114
	bne	$s6, $a0, .LBB1_108
# %bb.100:                              #   in Loop: Header=BB1_37 Depth=1
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	beqz	$a2, .LBB1_107
# %bb.101:                              #   in Loop: Header=BB1_37 Depth=1
	ld.bu	$a0, $fp, 58
	beq	$a2, $a0, .LBB1_107
# %bb.102:                              #   in Loop: Header=BB1_37 Depth=1
	ld.bu	$a1, $fp, 62
	beq	$a2, $a1, .LBB1_107
	.p2align	4, , 16
.LBB1_103:                              # %.lr.ph.i.i
                                        #   Parent Loop BB1_37 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$a2, $s3, 1
	addi.d	$s3, $s3, 1
	beqz	$a2, .LBB1_106
# %bb.104:                              # %.lr.ph.i.i
                                        #   in Loop: Header=BB1_103 Depth=2
	beq	$a2, $a0, .LBB1_106
# %bb.105:                              # %.lr.ph.i.i
                                        #   in Loop: Header=BB1_103 Depth=2
	bne	$a2, $a1, .LBB1_103
.LBB1_106:                              # %TeX_skip_parens.exit.loopexit.i
                                        #   in Loop: Header=BB1_37 Depth=1
	st.d	$s3, $sp, 112
.LBB1_107:                              # %TeX_skip_parens.exit.i
                                        #   in Loop: Header=BB1_37 Depth=1
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ori	$a1, $zero, 80
	st.b	$a1, $a0, 0
	b	.LBB1_112
.LBB1_108:                              #   in Loop: Header=BB1_37 Depth=1
	ld.bu	$a0, $fp, 62
	bne	$a2, $a0, .LBB1_122
.LBB1_109:                              # %tailrecurse._crit_edge.i.i
                                        #   in Loop: Header=BB1_37 Depth=1
	ld.bu	$a0, $s3, 1
	andi	$a1, $s4, 255
	bne	$a0, $a1, .LBB1_111
# %bb.110:                              #   in Loop: Header=BB1_37 Depth=1
	addi.d	$a0, $s3, 1
	st.d	$a0, $sp, 112
.LBB1_111:                              # %TeX_math_begin.exit.i
                                        #   in Loop: Header=BB1_37 Depth=1
	ld.w	$a0, $s5, 0
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, 0
	ld.d	$s7, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB1_112:                              # %TeX_math_begin.exit.thread.i
                                        #   in Loop: Header=BB1_37 Depth=1
	ld.d	$s3, $sp, 112
	ld.bu	$s4, $s3, 0
	beqz	$s4, .LBB1_266
.LBB1_113:                              #   in Loop: Header=BB1_37 Depth=1
	andi	$a0, $s4, 255
	ori	$a1, $zero, 48
	bne	$a0, $a1, .LBB1_117
# %bb.114:                              #   in Loop: Header=BB1_37 Depth=1
	ld.bu	$a0, $s3, 1
	ori	$a0, $a0, 32
	ori	$a1, $zero, 120
	bne	$a0, $a1, .LBB1_117
# %bb.115:                              #   in Loop: Header=BB1_37 Depth=1
	pcalau12i	$a0, %got_pc_hi20(terse)
	ld.d	$a0, $a0, %got_pc_lo12(terse)
	ld.w	$a0, $a0, 0
	bnez	$a0, .LBB1_120
# %bb.116:                              #   in Loop: Header=BB1_37 Depth=1
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	beqz	$a0, .LBB1_120
	.p2align	4, , 16
.LBB1_117:                              #   in Loop: Header=BB1_37 Depth=1
	addi.d	$s3, $s3, 1
.LBB1_118:                              # %.backedge.sink.split.i
                                        #   in Loop: Header=BB1_37 Depth=1
	st.d	$s3, $sp, 112
	ld.bu	$a1, $s3, 0
.LBB1_119:                              # %.backedge.i
                                        #   in Loop: Header=BB1_37 Depth=1
	bnez	$a1, .LBB1_37
	b	.LBB1_266
.LBB1_120:                              #   in Loop: Header=BB1_37 Depth=1
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $a0, 0
	addi.d	$a1, $s3, 1
	.p2align	4, , 16
.LBB1_121:                              #   Parent Loop BB1_37 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.b	$a2, $a1, 1
	slli.d	$a2, $a2, 1
	ldx.hu	$a2, $a0, $a2
	addi.d	$s3, $a1, 1
	slli.d	$a2, $a2, 51
	move	$a1, $s3
	bltz	$a2, .LBB1_121
	b	.LBB1_118
.LBB1_122:                              # %.preheader.i.preheader.i
                                        #   in Loop: Header=BB1_37 Depth=1
	ld.bu	$a5, $fp, 61
	ld.bu	$s6, $fp, 55
.LBB1_123:                              # %.preheader.i.i
                                        #   Parent Loop BB1_37 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_126 Depth 3
                                        #       Child Loop BB1_141 Depth 3
	andi	$a0, $a5, 255
	andi	$a1, $s4, 255
	bne	$a1, $a0, .LBB1_135
# %bb.124:                              # %.lr.ph.i48.preheader.i
                                        #   in Loop: Header=BB1_123 Depth=2
	ld.bu	$s7, $fp, 53
	b	.LBB1_126
	.p2align	4, , 16
.LBB1_125:                              #   in Loop: Header=BB1_126 Depth=3
	addi.d	$s3, $s3, 2
	move	$a5, $s5
	ld.d	$s5, $sp, 40                    # 8-byte Folded Reload
	st.d	$s3, $sp, 112
	ld.bu	$s4, $s3, 0
	andi	$a0, $a5, 255
	bne	$s4, $a0, .LBB1_135
.LBB1_126:                              # %.lr.ph.i48.i
                                        #   Parent Loop BB1_37 Depth=1
                                        #     Parent Loop BB1_123 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	addi.d	$a0, $s3, 1
	move	$s8, $a0
	st.d	$a0, $sp, 112
	ld.b	$s2, $s3, 1
	andi	$s4, $s2, 255
	andi	$a0, $s7, 255
	beq	$s4, $a0, .LBB1_111
# %bb.127:                              # %.lr.ph.i48.i
                                        #   in Loop: Header=BB1_126 Depth=3
	andi	$a0, $s6, 255
	beq	$s4, $a0, .LBB1_111
# %bb.128:                              #   in Loop: Header=BB1_126 Depth=3
	move	$s5, $a5
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	ld.d	$a3, $a0, 0
	ori	$a0, $zero, 64
	beq	$s4, $a0, .LBB1_130
# %bb.129:                              #   in Loop: Header=BB1_126 Depth=3
	slli.d	$a0, $s2, 1
	ldx.hu	$a0, $a3, $a0
	andi	$a0, $a0, 1024
	beqz	$a0, .LBB1_125
.LBB1_130:                              #   in Loop: Header=BB1_126 Depth=3
	pcalau12i	$a0, %pc_hi20(.L.str.34)
	addi.d	$a1, $a0, %pc_lo12(.L.str.34)
	ori	$a2, $zero, 5
	move	$a0, $s8
	move	$s6, $a3
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB1_165
# %bb.131:                              #   in Loop: Header=BB1_126 Depth=3
	ld.b	$a0, $s3, 6
	bltz	$a0, .LBB1_133
# %bb.132:                              #   in Loop: Header=BB1_126 Depth=3
	slli.d	$a0, $a0, 1
	ldx.hu	$a0, $s6, $a0
	andi	$a0, $a0, 1024
	bnez	$a0, .LBB1_165
.LBB1_133:                              #   in Loop: Header=BB1_126 Depth=3
	ori	$a0, $zero, 98
	addi.d	$a1, $sp, 112
	pcaddu18i	$ra, %call36(TeX_math_check)
	jirl	$ra, $ra, 0
	ld.d	$s5, $sp, 40                    # 8-byte Folded Reload
	bnez	$a0, .LBB1_111
# %bb.134:                              #   in Loop: Header=BB1_126 Depth=3
	ld.bu	$s6, $fp, 55
	ld.bu	$s7, $fp, 53
	ld.d	$a0, $sp, 112
	ld.bu	$a5, $fp, 61
	addi.d	$s3, $a0, -1
	st.d	$s3, $sp, 112
	ld.bu	$s4, $s3, 0
	andi	$a0, $a5, 255
	beq	$s4, $a0, .LBB1_126
	.p2align	4, , 16
.LBB1_135:                              # %._crit_edge.i.i
                                        #   in Loop: Header=BB1_123 Depth=2
	andi	$a1, $s6, 255
	andi	$a0, $s4, 255
	ld.d	$s7, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	beq	$a0, $a1, .LBB1_137
# %bb.136:                              # %._crit_edge.i.i
                                        #   in Loop: Header=BB1_123 Depth=2
	ld.bu	$a1, $fp, 59
	bne	$a0, $a1, .LBB1_112
.LBB1_137:                              #   in Loop: Header=BB1_123 Depth=2
	ld.bu	$a0, $s3, 1
	ld.bu	$a1, $fp, 64
	bne	$a0, $a1, .LBB1_112
# %bb.138:                              #   in Loop: Header=BB1_123 Depth=2
	addi.d	$a1, $s3, 1
	st.d	$a1, $sp, 112
	ld.bu	$a1, $a1, 0
	beqz	$a1, .LBB1_112
# %bb.139:                              # %.lr.ph67.i.preheader.i
                                        #   in Loop: Header=BB1_123 Depth=2
	ld.bu	$a1, $fp, 56
	ld.bu	$a2, $fp, 60
	addi.d	$s3, $s3, 2
	b	.LBB1_141
	.p2align	4, , 16
.LBB1_140:                              #   in Loop: Header=BB1_141 Depth=3
	addi.d	$s3, $s3, 1
	beqz	$s4, .LBB1_112
.LBB1_141:                              # %.lr.ph67.i.i
                                        #   Parent Loop BB1_37 Depth=1
                                        #     Parent Loop BB1_123 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	st.d	$s3, $sp, 112
	ld.bu	$a3, $s3, -1
	ld.bu	$s4, $s3, 0
	bne	$a3, $a0, .LBB1_140
# %bb.142:                              #   in Loop: Header=BB1_141 Depth=3
	beq	$s4, $a1, .LBB1_144
# %bb.143:                              #   in Loop: Header=BB1_141 Depth=3
	bne	$s4, $a2, .LBB1_140
.LBB1_144:                              # %tailrecurse.loopexit.i.i
                                        #   in Loop: Header=BB1_123 Depth=2
	ld.bu	$a0, $fp, 62
	bne	$s4, $a0, .LBB1_123
	b	.LBB1_109
.LBB1_145:                              #   in Loop: Header=BB1_37 Depth=1
	ld.bu	$a1, $s3, 1
	ld.bu	$a0, $fp, 54
	addi.d	$s8, $s3, 1
	st.d	$s8, $sp, 112
	beq	$a1, $a0, .LBB1_90
# %bb.146:                              #   in Loop: Header=BB1_37 Depth=1
	ld.bu	$a0, $fp, 56
	beq	$a1, $a0, .LBB1_90
# %bb.147:                              #   in Loop: Header=BB1_37 Depth=1
	st.d	$a1, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.28)
	addi.d	$a1, $a0, %pc_lo12(.L.str.28)
	ori	$a2, $zero, 4
	move	$a0, $s8
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_163
.LBB1_148:                              # %TeX_strncmp.exit.i.i.i
                                        #   in Loop: Header=BB1_37 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.29)
	addi.d	$a1, $a0, %pc_lo12(.L.str.29)
	ori	$a2, $zero, 7
	move	$a0, $s8
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_204
.LBB1_149:                              # %TeX_strncmp.exit14.i.i.i
                                        #   in Loop: Header=BB1_37 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.30)
	addi.d	$a1, $a0, %pc_lo12(.L.str.30)
	ori	$a2, $zero, 4
	move	$a0, $s8
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_206
.LBB1_150:                              # %TeX_strncmp.exit17.i.i.i
                                        #   in Loop: Header=BB1_37 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.31)
	addi.d	$a1, $a0, %pc_lo12(.L.str.31)
	ori	$a2, $zero, 8
	move	$a0, $s8
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_208
.LBB1_151:                              # %TeX_strncmp.exit20.i.i.i
                                        #   in Loop: Header=BB1_37 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.32)
	addi.d	$a1, $a0, %pc_lo12(.L.str.32)
	ori	$a2, $zero, 6
	move	$a0, $s8
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_218
.LBB1_152:                              # %TeX_strncmp.exit23.i.i.i
                                        #   in Loop: Header=BB1_37 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.33)
	addi.d	$a1, $a0, %pc_lo12(.L.str.33)
	ori	$a2, $zero, 8
	move	$a0, $s8
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_222
.LBB1_153:                              # %TeX_strncmp.exit26.i.i.i
                                        #   in Loop: Header=BB1_37 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.34)
	addi.d	$a1, $a0, %pc_lo12(.L.str.34)
	ori	$a2, $zero, 5
	move	$a0, $s8
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_235
.LBB1_154:                              # %TeX_LR_begin.exit.thread.i.i
                                        #   in Loop: Header=BB1_37 Depth=1
	ori	$a0, $zero, 101
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	bne	$a1, $a0, .LBB1_97
# %bb.155:                              # %sub_1.i.i
                                        #   in Loop: Header=BB1_37 Depth=1
	ld.bu	$a0, $s8, 1
	ori	$a1, $zero, 110
	bne	$a0, $a1, .LBB1_97
# %bb.156:                              # %TeX_LR_begin.exit.thread.tail.i.i
                                        #   in Loop: Header=BB1_37 Depth=1
	ld.bu	$a0, $s8, 2
	ori	$a1, $zero, 100
	bne	$a0, $a1, .LBB1_97
# %bb.157:                              #   in Loop: Header=BB1_37 Depth=1
	ld.b	$s2, $s8, 3
	bltz	$s2, .LBB1_159
# %bb.158:                              #   in Loop: Header=BB1_37 Depth=1
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $a0, 0
	slli.d	$a1, $s2, 1
	ldx.hu	$a0, $a0, $a1
	andi	$a0, $a0, 1024
	bnez	$a0, .LBB1_97
.LBB1_159:                              # %TeX_math_end.exit.i
                                        #   in Loop: Header=BB1_37 Depth=1
	ori	$a0, $zero, 101
	addi.d	$a1, $sp, 112
	pcaddu18i	$ra, %call36(TeX_math_check)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB1_90
	b	.LBB1_97
.LBB1_160:                              #   in Loop: Header=BB1_37 Depth=1
	ld.b	$s2, $s3, 4
	bltz	$s2, .LBB1_59
# %bb.161:                              #   in Loop: Header=BB1_37 Depth=1
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $a0, 0
	slli.d	$a1, $s2, 1
	ldx.hu	$a0, $a0, $a1
	andi	$a0, $a0, 1024
	beqz	$a0, .LBB1_59
	b	.LBB1_77
.LBB1_162:                              #   in Loop: Header=BB1_37 Depth=1
	ld.w	$a0, $s5, 0
	ld.d	$a3, $sp, 96                    # 8-byte Folded Reload
	ld.b	$a1, $a3, 0
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	st.w	$a0, $a2, %pc_lo12(save_math_mode)
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	st.b	$a1, $a0, %pc_lo12(save_LaTeX_Mode)
	st.w	$zero, $s5, 0
	ori	$a0, $zero, 80
	st.b	$a0, $a3, 0
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ori	$a1, $zero, 1
	st.b	$a1, $a0, %pc_lo12(TeX_comment)
	ld.w	$a0, $s5, 0
	b	.LBB1_91
.LBB1_163:                              #   in Loop: Header=BB1_37 Depth=1
	ld.b	$s2, $s3, 5
	bltz	$s2, .LBB1_210
# %bb.164:                              #   in Loop: Header=BB1_37 Depth=1
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $a0, 0
	slli.d	$a1, $s2, 1
	ldx.hu	$a0, $a0, $a1
	andi	$a0, $a0, 1024
	bnez	$a0, .LBB1_148
	b	.LBB1_210
.LBB1_165:                              # %TeX_strncmp.exit.i.i
                                        #   in Loop: Header=BB1_37 Depth=1
	ori	$a0, $zero, 101
	ld.d	$s5, $sp, 40                    # 8-byte Folded Reload
	bne	$s4, $a0, .LBB1_170
# %bb.166:                              # %sub_1.i.i.i
                                        #   in Loop: Header=BB1_37 Depth=1
	ld.bu	$a0, $s3, 2
	ori	$a1, $zero, 110
	bne	$a0, $a1, .LBB1_170
# %bb.167:                              # %.tail.i.i.i
                                        #   in Loop: Header=BB1_37 Depth=1
	ld.bu	$a0, $s3, 3
	ori	$a1, $zero, 100
	bne	$a0, $a1, .LBB1_170
# %bb.168:                              #   in Loop: Header=BB1_37 Depth=1
	ld.b	$a0, $s3, 4
	bltz	$a0, .LBB1_252
# %bb.169:                              #   in Loop: Header=BB1_37 Depth=1
	slli.d	$a0, $a0, 1
	ldx.hu	$a0, $s6, $a0
	andi	$a0, $a0, 1024
	beqz	$a0, .LBB1_252
.LBB1_170:                              # %TeX_strncmp.exit.i.i50.i
                                        #   in Loop: Header=BB1_37 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.35)
	addi.d	$a1, $a0, %pc_lo12(.L.str.35)
	ori	$a2, $zero, 6
	move	$a0, $s8
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_220
.LBB1_171:                              # %TeX_strncmp.exit50.i.i.i
                                        #   in Loop: Header=BB1_37 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.36)
	addi.d	$a1, $a0, %pc_lo12(.L.str.36)
	ori	$a2, $zero, 6
	move	$a0, $s8
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_233
.LBB1_172:                              # %TeX_strncmp.exit53.i.i.i
                                        #   in Loop: Header=BB1_37 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.37)
	addi.d	$a1, $a0, %pc_lo12(.L.str.37)
	ori	$a2, $zero, 4
	move	$a0, $s8
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_239
.LBB1_173:                              # %sub_091.i.i.i
                                        #   in Loop: Header=BB1_37 Depth=1
	ori	$a0, $zero, 114
	bne	$s4, $a0, .LBB1_178
# %bb.174:                              # %sub_192.i.i.i
                                        #   in Loop: Header=BB1_37 Depth=1
	ld.bu	$a0, $s3, 2
	ori	$a1, $zero, 101
	bne	$a0, $a1, .LBB1_178
# %bb.175:                              # %TeX_strncmp.exit56.tail.i.i.i
                                        #   in Loop: Header=BB1_37 Depth=1
	ld.bu	$a0, $s3, 3
	ori	$a1, $zero, 102
	bne	$a0, $a1, .LBB1_178
# %bb.176:                              #   in Loop: Header=BB1_37 Depth=1
	ld.b	$a0, $s3, 4
	bltz	$a0, .LBB1_252
# %bb.177:                              #   in Loop: Header=BB1_37 Depth=1
	slli.d	$a0, $a0, 1
	ldx.hu	$a0, $s6, $a0
	andi	$a0, $a0, 1024
	beqz	$a0, .LBB1_252
.LBB1_178:                              # %TeX_strncmp.exit59.i.i.i
                                        #   in Loop: Header=BB1_37 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.32)
	addi.d	$a1, $a0, %pc_lo12(.L.str.32)
	ori	$a2, $zero, 6
	move	$a0, $s8
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_242
.LBB1_179:                              # %TeX_strncmp.exit62.i.i.i
                                        #   in Loop: Header=BB1_37 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.39)
	addi.d	$a1, $a0, %pc_lo12(.L.str.39)
	ori	$a2, $zero, 5
	move	$a0, $s8
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_244
.LBB1_180:                              # %TeX_strncmp.exit65.i.i.i
                                        #   in Loop: Header=BB1_37 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.40)
	addi.d	$a1, $a0, %pc_lo12(.L.str.40)
	ori	$a2, $zero, 5
	move	$a0, $s8
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_246
.LBB1_181:                              # %TeX_strncmp.exit68.i.i.i
                                        #   in Loop: Header=BB1_37 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.41)
	addi.d	$a1, $a0, %pc_lo12(.L.str.41)
	ori	$a2, $zero, 6
	move	$a0, $s8
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_248
.LBB1_182:                              # %TeX_strncmp.exit71.i.i.i
                                        #   in Loop: Header=BB1_37 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.42)
	addi.d	$a1, $a0, %pc_lo12(.L.str.42)
	ori	$a2, $zero, 7
	move	$a0, $s8
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_250
.LBB1_183:                              # %TeX_strncmp.exit
                                        #   in Loop: Header=BB1_37 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.43)
	addi.d	$a1, $a0, %pc_lo12(.L.str.43)
	ori	$a2, $zero, 11
	move	$a0, $s8
	pcaddu18i	$ra, %call36(TeX_strncmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_252
# %bb.184:                              #   in Loop: Header=BB1_37 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.44)
	addi.d	$a1, $a0, %pc_lo12(.L.str.44)
	ori	$a2, $zero, 13
	move	$a0, $s8
	pcaddu18i	$ra, %call36(TeX_strncmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_252
# %bb.185:                              #   in Loop: Header=BB1_37 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.45)
	addi.d	$a1, $a0, %pc_lo12(.L.str.45)
	ori	$a2, $zero, 13
	move	$a0, $s8
	pcaddu18i	$ra, %call36(TeX_strncmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_252
# %bb.186:                              #   in Loop: Header=BB1_37 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.46)
	addi.d	$a1, $a0, %pc_lo12(.L.str.46)
	ori	$a2, $zero, 10
	move	$a0, $s8
	pcaddu18i	$ra, %call36(TeX_strncmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_252
# %bb.187:                              #   in Loop: Header=BB1_37 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.47)
	addi.d	$a1, $a0, %pc_lo12(.L.str.47)
	ori	$a2, $zero, 9
	move	$a0, $s8
	pcaddu18i	$ra, %call36(TeX_strncmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_252
# %bb.188:                              #   in Loop: Header=BB1_37 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.48)
	addi.d	$a1, $a0, %pc_lo12(.L.str.48)
	ori	$a2, $zero, 13
	move	$a0, $s8
	pcaddu18i	$ra, %call36(TeX_strncmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_252
# %bb.189:                              #   in Loop: Header=BB1_37 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.49)
	addi.d	$a1, $a0, %pc_lo12(.L.str.49)
	ori	$a2, $zero, 12
	move	$a0, $s8
	pcaddu18i	$ra, %call36(TeX_strncmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_252
# %bb.190:                              #   in Loop: Header=BB1_37 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.50)
	addi.d	$a1, $a0, %pc_lo12(.L.str.50)
	ori	$a2, $zero, 7
	move	$a0, $s8
	pcaddu18i	$ra, %call36(TeX_strncmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_252
# %bb.191:                              #   in Loop: Header=BB1_37 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.51)
	addi.d	$a1, $a0, %pc_lo12(.L.str.51)
	ori	$a2, $zero, 11
	move	$a0, $s8
	pcaddu18i	$ra, %call36(TeX_strncmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_252
# %bb.192:                              #   in Loop: Header=BB1_37 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.52)
	addi.d	$a1, $a0, %pc_lo12(.L.str.52)
	ori	$a2, $zero, 7
	move	$a0, $s8
	pcaddu18i	$ra, %call36(TeX_strncmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_252
# %bb.193:                              #   in Loop: Header=BB1_37 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.53)
	addi.d	$a1, $a0, %pc_lo12(.L.str.53)
	ori	$a2, $zero, 4
	move	$a0, $s8
	pcaddu18i	$ra, %call36(TeX_strncmp)
	jirl	$ra, $ra, 0
	ld.d	$s7, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	beqz	$a0, .LBB1_261
# %bb.194:                              #   in Loop: Header=BB1_37 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.54)
	addi.d	$a1, $a0, %pc_lo12(.L.str.54)
	ori	$a2, $zero, 10
	move	$a0, $s8
	pcaddu18i	$ra, %call36(TeX_strncmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_261
# %bb.195:                              #   in Loop: Header=BB1_37 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.55)
	addi.d	$a1, $a0, %pc_lo12(.L.str.55)
	ori	$a2, $zero, 12
	move	$a0, $s8
	pcaddu18i	$ra, %call36(TeX_strncmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_261
# %bb.196:                              #   in Loop: Header=BB1_37 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.56)
	addi.d	$a1, $a0, %pc_lo12(.L.str.56)
	ori	$a2, $zero, 9
	move	$a0, $s8
	pcaddu18i	$ra, %call36(TeX_strncmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_261
# %bb.197:                              #   in Loop: Header=BB1_37 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.57)
	addi.d	$a1, $a0, %pc_lo12(.L.str.57)
	ori	$a2, $zero, 11
	move	$a0, $s8
	pcaddu18i	$ra, %call36(TeX_strncmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_261
# %bb.198:                              #   in Loop: Header=BB1_37 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.58)
	addi.d	$a1, $a0, %pc_lo12(.L.str.58)
	ori	$a2, $zero, 10
	move	$a0, $s8
	pcaddu18i	$ra, %call36(TeX_strncmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_261
# %bb.199:                              #   in Loop: Header=BB1_37 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.59)
	addi.d	$a1, $a0, %pc_lo12(.L.str.59)
	ori	$a2, $zero, 4
	move	$a0, $s8
	pcaddu18i	$ra, %call36(TeX_strncmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_263
# %bb.200:                              # %.critedge2.i.i.i.preheader
                                        #   in Loop: Header=BB1_37 Depth=1
	addi.d	$a0, $s3, 2
.LBB1_201:                              # %.critedge2.i.i.i
                                        #   Parent Loop BB1_37 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.d	$a0, $sp, 112
	ld.b	$a1, $a0, 0
	addi.d	$a0, $a0, 1
	ori	$a2, $zero, 64
	beq	$a1, $a2, .LBB1_201
# %bb.202:                              # %.critedge2.i.i.i
                                        #   in Loop: Header=BB1_201 Depth=2
	slli.d	$a1, $a1, 1
	ldx.hu	$a1, $s6, $a1
	andi	$a1, $a1, 1024
	bnez	$a1, .LBB1_201
# %bb.203:                              # %._crit_edge.i.i.i
                                        #   in Loop: Header=BB1_37 Depth=1
	addi.d	$a0, $a0, -2
	st.d	$a0, $sp, 112
	ld.d	$s7, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 40                    # 8-byte Folded Reload
	b	.LBB1_112
.LBB1_204:                              #   in Loop: Header=BB1_37 Depth=1
	ld.b	$s2, $s3, 8
	bltz	$s2, .LBB1_210
# %bb.205:                              #   in Loop: Header=BB1_37 Depth=1
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $a0, 0
	slli.d	$a1, $s2, 1
	ldx.hu	$a0, $a0, $a1
	andi	$a0, $a0, 1024
	bnez	$a0, .LBB1_149
	b	.LBB1_210
.LBB1_206:                              #   in Loop: Header=BB1_37 Depth=1
	ld.b	$s2, $s3, 5
	bltz	$s2, .LBB1_210
# %bb.207:                              #   in Loop: Header=BB1_37 Depth=1
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $a0, 0
	slli.d	$a1, $s2, 1
	ldx.hu	$a0, $a0, $a1
	andi	$a0, $a0, 1024
	bnez	$a0, .LBB1_150
	b	.LBB1_210
.LBB1_208:                              #   in Loop: Header=BB1_37 Depth=1
	ld.b	$s2, $s3, 9
	bltz	$s2, .LBB1_210
# %bb.209:                              #   in Loop: Header=BB1_37 Depth=1
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $a0, 0
	slli.d	$a1, $s2, 1
	ldx.hu	$a0, $a0, $a1
	andi	$a0, $a0, 1024
	bnez	$a0, .LBB1_151
.LBB1_210:                              # %TeX_strncmp.exit.thread44.i.i.i
                                        #   in Loop: Header=BB1_37 Depth=1
	ld.w	$a0, $s5, 0
	addi.d	$a0, $a0, 2
	st.w	$a0, $s5, 0
.LBB1_211:                              #   in Loop: Header=BB1_37 Depth=1
	ld.bu	$a1, $s8, 0
	beq	$a1, $s4, .LBB1_90
# %bb.212:                              #   in Loop: Header=BB1_37 Depth=1
	beqz	$a1, .LBB1_90
# %bb.213:                              #   in Loop: Header=BB1_37 Depth=1
	ld.bu	$a0, $fp, 57
	beq	$a1, $a0, .LBB1_90
# %bb.214:                              # %.lr.ph.i36.i.i.i.preheader
                                        #   in Loop: Header=BB1_37 Depth=1
	addi.d	$a1, $s8, 1
	.p2align	4, , 16
.LBB1_215:                              # %.lr.ph.i36.i.i.i
                                        #   Parent Loop BB1_37 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.d	$a1, $sp, 112
	ld.bu	$a2, $a1, 0
	beq	$a2, $s4, .LBB1_90
# %bb.216:                              # %.lr.ph.i36.i.i.i
                                        #   in Loop: Header=BB1_215 Depth=2
	beqz	$a2, .LBB1_90
# %bb.217:                              # %.lr.ph.i36.i.i.i
                                        #   in Loop: Header=BB1_215 Depth=2
	addi.d	$a1, $a1, 1
	bne	$a2, $a0, .LBB1_215
	b	.LBB1_90
.LBB1_218:                              #   in Loop: Header=BB1_37 Depth=1
	ld.b	$s2, $s3, 7
	bltz	$s2, .LBB1_224
# %bb.219:                              #   in Loop: Header=BB1_37 Depth=1
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $a0, 0
	slli.d	$a1, $s2, 1
	ldx.hu	$a0, $a0, $a1
	andi	$a0, $a0, 1024
	bnez	$a0, .LBB1_152
	b	.LBB1_224
.LBB1_220:                              #   in Loop: Header=BB1_37 Depth=1
	ld.b	$a0, $s3, 7
	bltz	$a0, .LBB1_252
# %bb.221:                              #   in Loop: Header=BB1_37 Depth=1
	slli.d	$a0, $a0, 1
	ldx.hu	$a0, $s6, $a0
	andi	$a0, $a0, 1024
	bnez	$a0, .LBB1_171
	b	.LBB1_252
.LBB1_222:                              #   in Loop: Header=BB1_37 Depth=1
	ld.b	$s2, $s3, 9
	bltz	$s2, .LBB1_224
# %bb.223:                              #   in Loop: Header=BB1_37 Depth=1
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $a0, 0
	slli.d	$a1, $s2, 1
	ldx.hu	$a0, $a0, $a1
	andi	$a0, $a0, 1024
	bnez	$a0, .LBB1_153
.LBB1_224:                              # %TeX_strncmp.exit23.thread52.i.i.i
                                        #   in Loop: Header=BB1_37 Depth=1
	ld.w	$a0, $s5, 0
	addi.d	$a0, $a0, 2
	st.w	$a0, $s5, 0
	ld.bu	$a0, $s8, 0
	beq	$a0, $s4, .LBB1_231
# %bb.225:                              # %TeX_strncmp.exit23.thread52.i.i.i
                                        #   in Loop: Header=BB1_37 Depth=1
	beqz	$a0, .LBB1_231
# %bb.226:                              # %TeX_strncmp.exit23.thread52.i.i.i
                                        #   in Loop: Header=BB1_37 Depth=1
	ld.bu	$a1, $fp, 57
	beq	$a0, $a1, .LBB1_231
	.p2align	4, , 16
.LBB1_227:                              # %.lr.ph.i.i.i.i
                                        #   Parent Loop BB1_37 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$a0, $s6, 0
	st.d	$s6, $sp, 112
	addi.d	$s6, $s6, 1
	beq	$a0, $s4, .LBB1_230
# %bb.228:                              # %.lr.ph.i.i.i.i
                                        #   in Loop: Header=BB1_227 Depth=2
	beqz	$a0, .LBB1_230
# %bb.229:                              # %.lr.ph.i.i.i.i
                                        #   in Loop: Header=BB1_227 Depth=2
	bne	$a0, $a1, .LBB1_227
.LBB1_230:                              # %TeX_open_paren.exit.i.i.i.loopexit
                                        #   in Loop: Header=BB1_37 Depth=1
	addi.d	$s3, $s6, -2
	addi.d	$s8, $s6, -1
.LBB1_231:                              # %TeX_open_paren.exit.i.i.i
                                        #   in Loop: Header=BB1_37 Depth=1
	beqz	$a0, .LBB1_241
# %bb.232:                              #   in Loop: Header=BB1_37 Depth=1
	addi.d	$s8, $s3, 2
	st.d	$s8, $sp, 112
	b	.LBB1_211
.LBB1_233:                              #   in Loop: Header=BB1_37 Depth=1
	ld.b	$a0, $s3, 7
	bltz	$a0, .LBB1_252
# %bb.234:                              #   in Loop: Header=BB1_37 Depth=1
	slli.d	$a0, $a0, 1
	ldx.hu	$a0, $s6, $a0
	andi	$a0, $a0, 1024
	bnez	$a0, .LBB1_172
	b	.LBB1_252
.LBB1_235:                              #   in Loop: Header=BB1_37 Depth=1
	ld.b	$s2, $s3, 6
	bltz	$s2, .LBB1_237
# %bb.236:                              #   in Loop: Header=BB1_37 Depth=1
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $a0, 0
	slli.d	$a1, $s2, 1
	ldx.hu	$a0, $a0, $a1
	andi	$a0, $a0, 1024
	bnez	$a0, .LBB1_154
.LBB1_237:                              # %TeX_LR_begin.exit.i.i
                                        #   in Loop: Header=BB1_37 Depth=1
	ori	$a0, $zero, 1
	addi.d	$a1, $sp, 112
	pcaddu18i	$ra, %call36(TeX_LR_check)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB1_90
# %bb.238:                              # %TeX_LR_begin.exit.TeX_LR_begin.exit.thread_crit_edge.i.i
                                        #   in Loop: Header=BB1_37 Depth=1
	ld.d	$s8, $sp, 112
	ld.bu	$a0, $s8, 0
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	b	.LBB1_154
.LBB1_239:                              #   in Loop: Header=BB1_37 Depth=1
	ld.b	$a0, $s3, 5
	bltz	$a0, .LBB1_252
# %bb.240:                              #   in Loop: Header=BB1_37 Depth=1
	slli.d	$a0, $a0, 1
	ldx.hu	$a0, $s6, $a0
	andi	$a0, $a0, 1024
	bnez	$a0, .LBB1_173
	b	.LBB1_252
.LBB1_241:                              #   in Loop: Header=BB1_37 Depth=1
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ori	$a1, $zero, 114
	st.b	$a1, $a0, 0
	b	.LBB1_211
.LBB1_242:                              #   in Loop: Header=BB1_37 Depth=1
	ld.b	$a0, $s3, 7
	bltz	$a0, .LBB1_252
# %bb.243:                              #   in Loop: Header=BB1_37 Depth=1
	slli.d	$a0, $a0, 1
	ldx.hu	$a0, $s6, $a0
	andi	$a0, $a0, 1024
	bnez	$a0, .LBB1_179
	b	.LBB1_252
.LBB1_244:                              #   in Loop: Header=BB1_37 Depth=1
	ld.b	$a0, $s3, 6
	bltz	$a0, .LBB1_252
# %bb.245:                              #   in Loop: Header=BB1_37 Depth=1
	slli.d	$a0, $a0, 1
	ldx.hu	$a0, $s6, $a0
	andi	$a0, $a0, 1024
	bnez	$a0, .LBB1_180
	b	.LBB1_252
.LBB1_246:                              #   in Loop: Header=BB1_37 Depth=1
	ld.b	$a0, $s3, 6
	bltz	$a0, .LBB1_252
# %bb.247:                              #   in Loop: Header=BB1_37 Depth=1
	slli.d	$a0, $a0, 1
	ldx.hu	$a0, $s6, $a0
	andi	$a0, $a0, 1024
	bnez	$a0, .LBB1_181
	b	.LBB1_252
.LBB1_248:                              #   in Loop: Header=BB1_37 Depth=1
	ld.b	$a0, $s3, 7
	bltz	$a0, .LBB1_252
# %bb.249:                              #   in Loop: Header=BB1_37 Depth=1
	slli.d	$a0, $a0, 1
	ldx.hu	$a0, $s6, $a0
	andi	$a0, $a0, 1024
	bnez	$a0, .LBB1_182
	b	.LBB1_252
.LBB1_250:                              #   in Loop: Header=BB1_37 Depth=1
	ld.b	$a0, $s3, 8
	bltz	$a0, .LBB1_252
# %bb.251:                              #   in Loop: Header=BB1_37 Depth=1
	slli.d	$a0, $a0, 1
	ldx.hu	$a0, $s6, $a0
	andi	$a0, $a0, 1024
	bnez	$a0, .LBB1_183
.LBB1_252:                              # %TeX_strncmp.exit.thread74.i.i.i
                                        #   in Loop: Header=BB1_37 Depth=1
	ld.d	$s7, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	beqz	$s4, .LBB1_259
# %bb.253:                              # %TeX_strncmp.exit.thread74.i.i.i
                                        #   in Loop: Header=BB1_37 Depth=1
	ld.bu	$a0, $fp, 58
	beq	$s4, $a0, .LBB1_259
# %bb.254:                              # %TeX_strncmp.exit.thread74.i.i.i
                                        #   in Loop: Header=BB1_37 Depth=1
	ld.bu	$a1, $fp, 62
	beq	$s4, $a1, .LBB1_259
# %bb.255:                              # %.lr.ph.i.i.i56.i.preheader
                                        #   in Loop: Header=BB1_37 Depth=1
	addi.d	$a2, $s3, 2
	.p2align	4, , 16
.LBB1_256:                              # %.lr.ph.i.i.i56.i
                                        #   Parent Loop BB1_37 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.d	$a2, $sp, 112
	ld.bu	$s4, $a2, 0
	beqz	$s4, .LBB1_259
# %bb.257:                              # %.lr.ph.i.i.i56.i
                                        #   in Loop: Header=BB1_256 Depth=2
	beq	$s4, $a0, .LBB1_259
# %bb.258:                              # %.lr.ph.i.i.i56.i
                                        #   in Loop: Header=BB1_256 Depth=2
	addi.d	$a2, $a2, 1
	bne	$s4, $a1, .LBB1_256
.LBB1_259:                              # %TeX_skip_parens.exit.i.i.i
                                        #   in Loop: Header=BB1_37 Depth=1
	bnez	$s4, .LBB1_112
.LBB1_260:                              #   in Loop: Header=BB1_37 Depth=1
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ori	$a1, $zero, 114
	st.b	$a1, $a0, 0
	b	.LBB1_112
.LBB1_261:                              #   in Loop: Header=BB1_37 Depth=1
	addi.d	$a0, $sp, 112
	pcaddu18i	$ra, %call36(TeX_skip_parens)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 112
	ld.bu	$a1, $a0, 0
	beqz	$a1, .LBB1_260
# %bb.262:                              #   in Loop: Header=BB1_37 Depth=1
	addi.d	$a0, $a0, 1
	st.d	$a0, $sp, 112
	addi.d	$a0, $sp, 112
	pcaddu18i	$ra, %call36(TeX_skip_parens)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 112
	ld.bu	$a0, $a0, 0
	bnez	$a0, .LBB1_112
	b	.LBB1_260
.LBB1_263:                              #   in Loop: Header=BB1_37 Depth=1
	ld.bu	$a0, $s3, 5
	addi.d	$a1, $s3, 6
	ld.d	$s7, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 40                    # 8-byte Folded Reload
.LBB1_264:                              #   Parent Loop BB1_37 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.d	$a1, $sp, 112
	ld.bu	$a2, $a1, 0
	beq	$a2, $a0, .LBB1_112
# %bb.265:                              #   in Loop: Header=BB1_264 Depth=2
	addi.d	$a1, $a1, 1
	bnez	$a2, .LBB1_264
	b	.LBB1_112
.LBB1_266:
	move	$s4, $zero
.LBB1_267:                              # %.critedge.loopexit113.i
	andi	$a0, $s4, 255
	sltui	$a0, $a0, 1
	b	.LBB1_273
.LBB1_268:
	ori	$a0, $zero, 1
	move	$s3, $a3
	b	.LBB1_273
.LBB1_269:
	pcalau12i	$a0, %got_pc_hi20(terse)
	ld.d	$a0, $a0, %got_pc_lo12(terse)
	ld.w	$a0, $a0, 0
	bnez	$a0, .LBB1_271
# %bb.270:
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a0, $a0, %pc_lo12(.L.str.8)
	ori	$a1, $zero, 2
	ori	$a2, $zero, 1
	move	$a3, $s7
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
.LBB1_271:                              # %.backedge
	ld.d	$s3, $s0, 0
	st.d	$s3, $sp, 112
	ld.bu	$a1, $s3, 0
	bnez	$a1, .LBB1_37
.LBB1_272:
	ori	$a0, $zero, 1
.LBB1_273:                              # %.critedge.i
	beqz	$a0, .LBB1_276
# %bb.274:                              # %.critedge.i
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.b	$a0, $a0, %pc_lo12(TeX_comment)
	andi	$a0, $a0, 1
	beqz	$a0, .LBB1_276
# %bb.275:
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(save_math_mode)
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	ld.b	$a1, $a1, %pc_lo12(save_LaTeX_Mode)
	st.w	$a0, $s5, 0
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	st.b	$a1, $a0, 0
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	st.b	$zero, $a0, %pc_lo12(TeX_comment)
.LBB1_276:                              # %skiptoword.exit
	ld.d	$a0, $s0, 0
	beq	$s3, $a0, .LBB1_278
# %bb.277:
	sub.w	$a1, $s3, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(copyout)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 0
.LBB1_278:
	ld.bu	$a1, $a0, 0
	beqz	$a1, .LBB1_329
# %bb.279:                              # %.lr.ph.i91.preheader
	move	$s4, $zero
	b	.LBB1_283
	.p2align	4, , 16
.LBB1_280:                              #   in Loop: Header=BB1_283 Depth=1
	add.d	$a1, $fp, $a1
	ld.bu	$a2, $a1, 982
	ori	$a0, $zero, 1
	beqz	$a2, .LBB1_286
.LBB1_281:                              #   in Loop: Header=BB1_283 Depth=1
	move	$s4, $zero
.LBB1_282:                              #   in Loop: Header=BB1_283 Depth=1
	ldx.bu	$a1, $s3, $a0
	add.d	$a0, $s3, $a0
	beqz	$a1, .LBB1_290
.LBB1_283:                              # %.lr.ph.i91
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a2, $fp, $a1
	ld.bu	$a2, $a2, 1894
	move	$s3, $a0
	beqz	$a2, .LBB1_280
# %bb.284:                              #   in Loop: Header=BB1_283 Depth=1
	move	$a0, $s3
	move	$a1, $zero
	pcaddu18i	$ra, %call36(stringcharlen)
	jirl	$ra, $ra, 0
	bgtz	$a0, .LBB1_281
# %bb.285:                              # %._crit_edge30.i
                                        #   in Loop: Header=BB1_283 Depth=1
	ld.bu	$a1, $s3, 0
	b	.LBB1_280
	.p2align	4, , 16
.LBB1_286:                              #   in Loop: Header=BB1_283 Depth=1
	ld.bu	$a1, $a1, 1666
	beqz	$a1, .LBB1_292
# %bb.287:                              #   in Loop: Header=BB1_283 Depth=1
	beqz	$s4, .LBB1_289
# %bb.288:                              #   in Loop: Header=BB1_283 Depth=1
	addi.d	$a1, $s3, -1
	bne	$s4, $a1, .LBB1_282
	b	.LBB1_292
.LBB1_289:                              #   in Loop: Header=BB1_283 Depth=1
	move	$s4, $s3
	b	.LBB1_282
.LBB1_290:                              # %._crit_edge.i96
	ld.d	$a3, $sp, 104                   # 8-byte Folded Reload
	ld.bu	$a1, $a3, %pc_lo12(TeX_comment)
	beqz	$a1, .LBB1_293
# %bb.291:
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	ld.w	$a1, $a1, %pc_lo12(save_math_mode)
	ld.d	$a2, $sp, 72                    # 8-byte Folded Reload
	ld.b	$a2, $a2, %pc_lo12(save_LaTeX_Mode)
	st.w	$a1, $s5, 0
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	st.b	$a2, $a1, 0
	st.b	$zero, $a3, %pc_lo12(TeX_comment)
	b	.LBB1_293
.LBB1_292:
	move	$a0, $s3
.LBB1_293:
	ori	$a6, $zero, 118
	ld.d	$s3, $sp, 48                    # 8-byte Folded Reload
	sltui	$a2, $s4, 1
	ld.d	$a1, $s0, 0
	masknez	$a3, $s4, $a2
	maskeqz	$a0, $a0, $a2
	or	$a0, $a0, $a3
	move	$a2, $s1
	bgeu	$a1, $a0, .LBB1_298
# %bb.294:                              # %.lr.ph165.preheader
	move	$a3, $zero
	.p2align	4, , 16
.LBB1_295:                              # %.lr.ph165
                                        # =>This Inner Loop Header: Depth=1
	move	$a2, $a3
	add.d	$a3, $a1, $a3
	addi.d	$a4, $a3, 1
	st.d	$a4, $s0, 0
	ldx.b	$a5, $a1, $a2
	addi.d	$a3, $a2, 1
	stx.b	$a5, $s1, $a2
	bgeu	$a4, $a0, .LBB1_297
# %bb.296:                              # %.lr.ph165
                                        #   in Loop: Header=BB1_295 Depth=1
	bltu	$a2, $a6, .LBB1_295
.LBB1_297:                              # %._crit_edge166.loopexit
	add.d	$a2, $s1, $a3
.LBB1_298:                              # %._crit_edge166
	st.b	$zero, $a2, 0
	ori	$a2, $zero, 100
	move	$a0, $s3
	move	$a1, $s1
	move	$a3, $zero
	pcaddu18i	$ra, %call36(strtoichar)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB1_312
.LBB1_299:
	move	$a0, $s3
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	ld.w	$a1, $a1, 0
	beqz	$a1, .LBB1_304
# %bb.300:
	addi.w	$a0, $a0, 0
	pcalau12i	$a1, %got_pc_hi20(minword)
	ld.d	$a1, $a1, %got_pc_lo12(minword)
	ld.w	$a1, $a1, 0
	bge	$a1, $a0, .LBB1_327
# %bb.301:
	move	$a0, $s3
	move	$a1, $zero
	move	$a2, $zero
	move	$a3, $zero
	move	$a4, $zero
	pcaddu18i	$ra, %call36(good)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(cflag)
	ld.d	$a1, $a1, %got_pc_lo12(cflag)
	ld.w	$a1, $a1, 0
	or	$a0, $a0, $a1
	bnez	$a0, .LBB1_327
# %bb.302:
	move	$a0, $s3
	move	$a1, $zero
	pcaddu18i	$ra, %call36(compoundgood)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB1_327
# %bb.303:
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a1, $a0, %pc_lo12(.L.str.7)
	move	$a0, $s7
	move	$a2, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	b	.LBB1_327
.LBB1_304:
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	ld.w	$a1, $a1, 0
	beqz	$a1, .LBB1_310
# %bb.305:
	addi.w	$a0, $a0, 0
	pcalau12i	$a1, %got_pc_hi20(minword)
	ld.d	$a1, $a1, %got_pc_lo12(minword)
	ld.w	$a1, $a1, 0
	bge	$a1, $a0, .LBB1_269
# %bb.306:
	move	$a0, $s3
	move	$a1, $zero
	move	$a2, $zero
	move	$a3, $zero
	move	$a4, $zero
	pcaddu18i	$ra, %call36(good)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_313
# %bb.307:
	pcalau12i	$a0, %got_pc_hi20(hits)
	ld.d	$a0, $a0, %got_pc_lo12(hits)
	ld.d	$a1, $a0, 8
	ld.d	$a2, $a0, 16
	or	$a2, $a1, $a2
	pcalau12i	$a1, %got_pc_hi20(terse)
	ld.d	$a1, $a1, %got_pc_lo12(terse)
	ld.w	$a1, $a1, 0
	bnez	$a2, .LBB1_317
# %bb.308:
	bnez	$a1, .LBB1_327
# %bb.309:
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a0, $a0, %pc_lo12(.L.str.8)
	b	.LBB1_316
.LBB1_310:
	pcalau12i	$a0, %got_pc_hi20(quit)
	ld.d	$a0, $a0, %got_pc_lo12(quit)
	ld.w	$a0, $a0, 0
	bnez	$a0, .LBB1_327
# %bb.311:
	ori	$a1, $zero, 120
	ori	$a3, $zero, 120
	move	$a0, $s1
	move	$a2, $s3
	move	$a4, $s0
	pcaddu18i	$ra, %call36(correct)
	jirl	$ra, $ra, 0
	b	.LBB1_327
.LBB1_312:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	pcalau12i	$a1, %pc_hi20(.L.str.5)
	addi.d	$a1, $a1, %pc_lo12(.L.str.5)
	pcalau12i	$a2, %pc_hi20(.L.str.6)
	addi.d	$a4, $a2, %pc_lo12(.L.str.6)
	ori	$a3, $zero, 466
	move	$a2, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	b	.LBB1_299
.LBB1_313:
	move	$a0, $s3
	move	$a1, $zero
	pcaddu18i	$ra, %call36(compoundgood)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_319
# %bb.314:
	pcalau12i	$a0, %got_pc_hi20(terse)
	ld.d	$a0, $a0, %got_pc_lo12(terse)
	ld.w	$a0, $a0, 0
	bnez	$a0, .LBB1_327
# %bb.315:
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a0, $a0, %pc_lo12(.L.str.10)
.LBB1_316:
	ori	$a1, $zero, 2
	ori	$a2, $zero, 1
	move	$a3, $s7
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	b	.LBB1_327
.LBB1_317:
	bnez	$a1, .LBB1_327
# %bb.318:
	ld.d	$a0, $a0, 0
	ld.d	$a2, $a0, 8
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$a1, $a0, %pc_lo12(.L.str.9)
	move	$a0, $s7
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	b	.LBB1_327
.LBB1_319:
	move	$a0, $s3
	pcaddu18i	$ra, %call36(makepossibilities)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(pcount)
	ld.d	$a0, $a0, %got_pc_lo12(pcount)
	ld.w	$a0, $a0, 0
	beqz	$a0, .LBB1_325
# %bb.320:                              # %.peel.begin
	pcalau12i	$a0, %got_pc_hi20(easypossibilities)
	ld.d	$a0, $a0, %got_pc_lo12(easypossibilities)
	ld.w	$s3, $a0, 0
	ld.d	$s2, $s0, 0
	sltui	$s4, $s3, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(contextbufs)
	ld.d	$a1, $a1, %got_pc_lo12(contextbufs)
	add.d	$a0, $a1, $a0
	sub.d	$a0, $s2, $a0
	pcalau12i	$a1, %got_pc_hi20(contextoffset)
	ld.d	$a1, $a1, %got_pc_lo12(contextoffset)
	ld.w	$a1, $a1, 0
	add.w	$a5, $a1, $a0
	ori	$a0, $zero, 38
	masknez	$a0, $a0, $s4
	ori	$a1, $zero, 63
	maskeqz	$a1, $a1, $s4
	or	$a2, $a1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.11)
	addi.d	$a1, $a0, %pc_lo12(.L.str.11)
	move	$a0, $s7
	move	$a3, $s1
	move	$a4, $s3
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(possibilities)
	ld.d	$s3, $a0, %got_pc_lo12(possibilities)
	ld.bu	$a0, $s3, 0
	beqz	$a0, .LBB1_324
# %bb.321:                              # %.peel.next
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a1, $a0, %pc_lo12(.L.str.12)
	ori	$a2, $zero, 58
	move	$a0, $s7
	move	$a3, $s3
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	addi.d	$s3, $s3, 120
	ori	$s4, $zero, 99
	.p2align	4, , 16
.LBB1_322:                              # =>This Inner Loop Header: Depth=1
	ld.bu	$a0, $s3, 0
	beqz	$a0, .LBB1_324
# %bb.323:                              #   in Loop: Header=BB1_322 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a1, $a0, %pc_lo12(.L.str.12)
	ori	$a2, $zero, 44
	move	$a0, $s7
	move	$a3, $s3
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	addi.d	$s4, $s4, -1
	addi.d	$s3, $s3, 120
	bnez	$s4, .LBB1_322
.LBB1_324:                              # %.loopexit
	ori	$a0, $zero, 10
	move	$a1, $s7
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	b	.LBB1_326
.LBB1_325:
	ld.d	$s2, $s0, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(contextbufs)
	ld.d	$a1, $a1, %got_pc_lo12(contextbufs)
	add.d	$a0, $a1, $a0
	sub.d	$a0, $s2, $a0
	pcalau12i	$a1, %got_pc_hi20(contextoffset)
	ld.d	$a1, $a1, %got_pc_lo12(contextoffset)
	ld.w	$a1, $a1, 0
	add.w	$a3, $a1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a1, $a0, %pc_lo12(.L.str.14)
	move	$a0, $s7
	move	$a2, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
.LBB1_326:
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
.LBB1_327:
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	ld.w	$a1, $a1, 0
	or	$a0, $a0, $a1
	bnez	$a0, .LBB1_271
# %bb.328:
	move	$a0, $s1
	move	$a1, $s7
	pcaddu18i	$ra, %call36(fputs)
	jirl	$ra, $ra, 0
	ld.d	$s3, $s0, 0
	st.d	$s3, $sp, 112
	ld.bu	$a1, $s3, 0
	bnez	$a1, .LBB1_37
	b	.LBB1_272
.LBB1_329:
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	bnez	$a0, .LBB1_336
# %bb.330:
	ori	$a0, $zero, 10
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	beq	$a1, $a0, .LBB1_332
# %bb.331:
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	beqz	$a0, .LBB1_336
.LBB1_332:                              # %.sink.split
	ori	$a0, $zero, 10
	move	$a1, $s7
	ld.d	$s8, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 192                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 200                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 208
	pcaddu18i	$t8, %call36(putc)
	jr	$t8
.LBB1_333:                              # %._crit_edge
	pcalau12i	$a0, %got_pc_hi20(lflag)
	ld.d	$a0, $a0, %got_pc_lo12(lflag)
	ld.w	$a0, $a0, 0
	bnez	$a0, .LBB1_336
# %bb.334:
	ori	$a0, $zero, 10
	beq	$s5, $a0, .LBB1_332
# %bb.335:
	pcalau12i	$a0, %got_pc_hi20(aflag)
	ld.d	$a0, $a0, %got_pc_lo12(aflag)
	ld.w	$a0, $a0, 0
	bnez	$a0, .LBB1_332
.LBB1_336:
	ld.d	$s8, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 192                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 200                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 208
	ret
.Lfunc_end1:
	.size	checkline, .Lfunc_end1-checkline
                                        # -- End function
	.p2align	5                               # -- Begin function TeX_math_check
	.type	TeX_math_check,@function
TeX_math_check:                         # @TeX_math_check
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a1
	ld.d	$a3, $a1, 0
	ld.bu	$a2, $a3, 0
	move	$a1, $a0
	pcalau12i	$a0, %got_pc_hi20(hashheader)
	ld.d	$s1, $a0, %got_pc_lo12(hashheader)
	beqz	$a2, .LBB2_7
# %bb.1:
	ld.bu	$a0, $s1, 57
	beq	$a2, $a0, .LBB2_7
# %bb.2:
	ld.bu	$a0, $s1, 62
	beq	$a2, $a0, .LBB2_7
# %bb.3:                                # %.lr.ph.i.preheader
	addi.d	$a0, $a3, 1
	.p2align	4, , 16
.LBB2_4:                                # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	st.d	$a0, $fp, 0
	ld.bu	$a2, $a0, 0
	beqz	$a2, .LBB2_7
# %bb.5:                                # %.lr.ph.i
                                        #   in Loop: Header=BB2_4 Depth=1
	ld.bu	$a3, $s1, 57
	beq	$a2, $a3, .LBB2_7
# %bb.6:                                # %.lr.ph.i
                                        #   in Loop: Header=BB2_4 Depth=1
	ld.bu	$a3, $s1, 62
	addi.d	$a0, $a0, 1
	bne	$a2, $a3, .LBB2_4
.LBB2_7:                                # %TeX_open_paren.exit
	beqz	$a2, .LBB2_24
# %bb.8:
	move	$s3, $a1
	pcalau12i	$a0, %got_pc_hi20(LaTeX_Mode)
	ld.d	$a0, $a0, %got_pc_lo12(LaTeX_Mode)
	ori	$a1, $zero, 80
	st.b	$a1, $a0, 0
	ld.d	$s2, $fp, 0
	addi.d	$s0, $s2, 1
	st.d	$s0, $fp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.18)
	addi.d	$a1, $a0, %pc_lo12(.L.str.18)
	ori	$a2, $zero, 8
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB2_17
# %bb.9:
	pcalau12i	$a0, %pc_hi20(.L.str.19)
	addi.d	$a1, $a0, %pc_lo12(.L.str.19)
	ori	$a2, $zero, 8
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB2_17
# %bb.10:
	pcalau12i	$a0, %pc_hi20(.L.str.20)
	addi.d	$a1, $a0, %pc_lo12(.L.str.20)
	ori	$a2, $zero, 11
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB2_17
# %bb.11:
	pcalau12i	$a0, %pc_hi20(.L.str.21)
	addi.d	$a1, $a0, %pc_lo12(.L.str.21)
	ori	$a2, $zero, 7
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB2_17
# %bb.12:
	pcalau12i	$a0, %pc_hi20(.L.str.22)
	addi.d	$a1, $a0, %pc_lo12(.L.str.22)
	ori	$a2, $zero, 4
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB2_17
# %bb.13:
	ori	$a0, $zero, 98
	bne	$s3, $a0, .LBB2_26
# %bb.14:
	pcalau12i	$a0, %pc_hi20(.L.str.23)
	addi.d	$a1, $a0, %pc_lo12(.L.str.23)
	ori	$a2, $zero, 7
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB2_33
# %bb.15:
	pcalau12i	$a0, %pc_hi20(.L.str.24)
	addi.d	$a1, $a0, %pc_lo12(.L.str.24)
	ori	$a2, $zero, 8
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB2_33
# %bb.16:
	move	$s3, $zero
	b	.LBB2_34
.LBB2_17:
	st.d	$s2, $fp, 0
	ld.bu	$a1, $s2, 0
	ori	$a0, $zero, 1
	beqz	$a1, .LBB2_25
# %bb.18:
	ld.bu	$a2, $s1, 58
	beq	$a1, $a2, .LBB2_25
# %bb.19:
	ld.bu	$a2, $s1, 62
	beq	$a1, $a2, .LBB2_25
# %bb.20:                               # %.lr.ph.i18.preheader
	addi.d	$a1, $s2, 1
	.p2align	4, , 16
.LBB2_21:                               # %.lr.ph.i18
                                        # =>This Inner Loop Header: Depth=1
	st.d	$a1, $fp, 0
	ld.bu	$a2, $a1, 0
	beqz	$a2, .LBB2_25
# %bb.22:                               # %.lr.ph.i18
                                        #   in Loop: Header=BB2_21 Depth=1
	ld.bu	$a3, $s1, 58
	beq	$a2, $a3, .LBB2_25
# %bb.23:                               # %.lr.ph.i18
                                        #   in Loop: Header=BB2_21 Depth=1
	ld.bu	$a3, $s1, 62
	addi.d	$a1, $a1, 1
	bne	$a2, $a3, .LBB2_21
	b	.LBB2_25
.LBB2_24:
	pcalau12i	$a0, %got_pc_hi20(LaTeX_Mode)
	ld.d	$a2, $a0, %got_pc_lo12(LaTeX_Mode)
	move	$a0, $zero
	st.b	$a1, $a2, 0
.LBB2_25:                               # %TeX_skip_parens.exit
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.LBB2_26:
	ld.bu	$a1, $s0, 0
	move	$a0, $zero
	beqz	$a1, .LBB2_25
# %bb.27:
	ld.bu	$a2, $s1, 58
	beq	$a1, $a2, .LBB2_25
# %bb.28:
	ld.bu	$a2, $s1, 62
	beq	$a1, $a2, .LBB2_25
# %bb.29:                               # %.lr.ph.i30.preheader
	addi.d	$a1, $s2, 2
	move	$a0, $zero
	.p2align	4, , 16
.LBB2_30:                               # %.lr.ph.i30
                                        # =>This Inner Loop Header: Depth=1
	st.d	$a1, $fp, 0
	ld.bu	$a2, $a1, 0
	beqz	$a2, .LBB2_25
# %bb.31:                               # %.lr.ph.i30
                                        #   in Loop: Header=BB2_30 Depth=1
	ld.bu	$a3, $s1, 58
	beq	$a2, $a3, .LBB2_25
# %bb.32:                               # %.lr.ph.i30
                                        #   in Loop: Header=BB2_30 Depth=1
	ld.bu	$a3, $s1, 62
	addi.d	$a1, $a1, 1
	bne	$a2, $a3, .LBB2_30
	b	.LBB2_25
.LBB2_33:
	ori	$s3, $zero, 1
.LBB2_34:
	pcalau12i	$a0, %pc_hi20(.L.str.25)
	addi.d	$a1, $a0, %pc_lo12(.L.str.25)
	ori	$a2, $zero, 8
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	ld.bu	$a1, $s0, 0
	beqz	$a1, .LBB2_42
# %bb.35:
	ld.bu	$a2, $s1, 58
	beq	$a1, $a2, .LBB2_42
# %bb.36:
	ld.bu	$a2, $s1, 62
	beq	$a1, $a2, .LBB2_42
# %bb.37:                               # %.lr.ph.i.i.preheader
	addi.d	$a2, $s2, 2
	.p2align	4, , 16
.LBB2_38:                               # %.lr.ph.i.i
                                        # =>This Inner Loop Header: Depth=1
	st.d	$a2, $fp, 0
	ld.bu	$a1, $a2, 0
	addi.d	$a2, $a2, 1
	beqz	$a1, .LBB2_41
# %bb.39:                               # %.lr.ph.i.i
                                        #   in Loop: Header=BB2_38 Depth=1
	ld.bu	$a3, $s1, 58
	beq	$a1, $a3, .LBB2_41
# %bb.40:                               # %.lr.ph.i.i
                                        #   in Loop: Header=BB2_38 Depth=1
	ld.bu	$a3, $s1, 62
	bne	$a1, $a3, .LBB2_38
.LBB2_41:                               # %TeX_skip_parens.exit.i.loopexit
	addi.d	$s0, $a2, -1
.LBB2_42:                               # %TeX_skip_parens.exit.i
	beqz	$a1, .LBB2_54
# %bb.43:
	sltui	$a0, $a0, 1
	add.d	$a0, $s3, $a0
	addi.d	$a1, $s0, 1
	st.d	$a1, $fp, 0
	beqz	$a0, .LBB2_54
# %bb.44:
	ld.bu	$a1, $a1, 0
	beqz	$a1, .LBB2_52
# %bb.45:
	ld.bu	$a2, $s1, 58
	beq	$a1, $a2, .LBB2_52
# %bb.46:
	ld.bu	$a2, $s1, 62
	beq	$a1, $a2, .LBB2_52
# %bb.47:                               # %.lr.ph.i21.i.preheader
	addi.d	$a2, $s0, 2
.LBB2_48:                               # %.lr.ph.i21.i
                                        # =>This Inner Loop Header: Depth=1
	st.d	$a2, $fp, 0
	ld.bu	$a1, $a2, 0
	addi.d	$a2, $a2, 1
	beqz	$a1, .LBB2_51
# %bb.49:                               # %.lr.ph.i21.i
                                        #   in Loop: Header=BB2_48 Depth=1
	ld.bu	$a3, $s1, 58
	beq	$a1, $a3, .LBB2_51
# %bb.50:                               # %.lr.ph.i21.i
                                        #   in Loop: Header=BB2_48 Depth=1
	ld.bu	$a3, $s1, 62
	bne	$a1, $a3, .LBB2_48
.LBB2_51:                               # %TeX_skip_parens.exit27.i.loopexit
	addi.d	$s0, $a2, -2
.LBB2_52:                               # %TeX_skip_parens.exit27.i
	beqz	$a1, .LBB2_54
# %bb.53:
	addi.d	$a1, $s0, 2
	ori	$a2, $zero, 1
	st.d	$a1, $fp, 0
	bne	$a0, $a2, .LBB2_55
.LBB2_54:
	move	$a0, $zero
	b	.LBB2_25
.LBB2_55:
	ld.bu	$a1, $a1, 0
	move	$a0, $zero
	beqz	$a1, .LBB2_25
# %bb.56:
	ld.bu	$a2, $s1, 58
	beq	$a1, $a2, .LBB2_25
# %bb.57:
	ld.bu	$a2, $s1, 62
	beq	$a1, $a2, .LBB2_25
# %bb.58:                               # %.lr.ph.i33.i.preheader
	addi.d	$a1, $s0, 3
	move	$a0, $zero
.LBB2_59:                               # %.lr.ph.i33.i
                                        # =>This Inner Loop Header: Depth=1
	st.d	$a1, $fp, 0
	ld.bu	$a2, $a1, 0
	beqz	$a2, .LBB2_25
# %bb.60:                               # %.lr.ph.i33.i
                                        #   in Loop: Header=BB2_59 Depth=1
	ld.bu	$a3, $s1, 58
	beq	$a2, $a3, .LBB2_25
# %bb.61:                               # %.lr.ph.i33.i
                                        #   in Loop: Header=BB2_59 Depth=1
	ld.bu	$a3, $s1, 62
	addi.d	$a1, $a1, 1
	bne	$a2, $a3, .LBB2_59
	b	.LBB2_25
.Lfunc_end2:
	.size	TeX_math_check, .Lfunc_end2-TeX_math_check
                                        # -- End function
	.p2align	5                               # -- Begin function TeX_LR_check
	.type	TeX_LR_check,@function
TeX_LR_check:                           # @TeX_LR_check
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a1
	ld.d	$a2, $a1, 0
	ld.bu	$a1, $a2, 0
	move	$s0, $a0
	pcalau12i	$a0, %got_pc_hi20(hashheader)
	ld.d	$s2, $a0, %got_pc_lo12(hashheader)
	beqz	$a1, .LBB3_7
# %bb.1:
	ld.bu	$a0, $s2, 57
	beq	$a1, $a0, .LBB3_7
# %bb.2:
	ld.bu	$a0, $s2, 62
	beq	$a1, $a0, .LBB3_7
# %bb.3:                                # %.lr.ph.i.preheader
	addi.d	$a0, $a2, 1
	.p2align	4, , 16
.LBB3_4:                                # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	st.d	$a0, $fp, 0
	ld.bu	$a1, $a0, 0
	beqz	$a1, .LBB3_7
# %bb.5:                                # %.lr.ph.i
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.bu	$a2, $s2, 57
	beq	$a1, $a2, .LBB3_7
# %bb.6:                                # %.lr.ph.i
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.bu	$a2, $s2, 62
	addi.d	$a0, $a0, 1
	bne	$a1, $a2, .LBB3_4
.LBB3_7:                                # %TeX_open_paren.exit
	pcalau12i	$a0, %got_pc_hi20(LaTeX_Mode)
	beqz	$a1, .LBB3_10
# %bb.8:
	ld.d	$a0, $a0, %got_pc_lo12(LaTeX_Mode)
	ori	$a1, $zero, 80
	st.b	$a1, $a0, 0
	ld.d	$s3, $fp, 0
	addi.d	$s1, $s3, 1
	st.d	$s1, $fp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.24)
	addi.d	$a1, $a0, %pc_lo12(.L.str.24)
	ori	$a2, $zero, 8
	move	$a0, $s1
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_11
# %bb.9:
	move	$a0, $zero
	st.d	$s3, $fp, 0
	b	.LBB3_31
.LBB3_10:
	ld.d	$a1, $a0, %got_pc_lo12(LaTeX_Mode)
	move	$a0, $zero
	ori	$a2, $zero, 109
	st.b	$a2, $a1, 0
	b	.LBB3_31
.LBB3_11:
	ld.bu	$a0, $s1, 0
	beqz	$a0, .LBB3_19
# %bb.12:
	ld.bu	$a1, $s2, 58
	beq	$a0, $a1, .LBB3_19
# %bb.13:
	ld.bu	$a1, $s2, 62
	beq	$a0, $a1, .LBB3_19
# %bb.14:                               # %.lr.ph.i15.preheader
	addi.d	$a1, $s3, 2
	.p2align	4, , 16
.LBB3_15:                               # %.lr.ph.i15
                                        # =>This Inner Loop Header: Depth=1
	st.d	$a1, $fp, 0
	ld.bu	$a0, $a1, 0
	addi.d	$a1, $a1, 1
	beqz	$a0, .LBB3_18
# %bb.16:                               # %.lr.ph.i15
                                        #   in Loop: Header=BB3_15 Depth=1
	ld.bu	$a2, $s2, 58
	beq	$a0, $a2, .LBB3_18
# %bb.17:                               # %.lr.ph.i15
                                        #   in Loop: Header=BB3_15 Depth=1
	ld.bu	$a2, $s2, 62
	bne	$a0, $a2, .LBB3_15
.LBB3_18:                               # %TeX_skip_parens.exit.loopexit
	addi.d	$s1, $a1, -1
.LBB3_19:                               # %TeX_skip_parens.exit
	beqz	$a0, .LBB3_21
# %bb.20:
	addi.d	$s1, $s1, 1
	st.d	$s1, $fp, 0
.LBB3_21:
	beqz	$s0, .LBB3_30
# %bb.22:
	ld.bu	$a0, $s1, 0
	beqz	$a0, .LBB3_29
# %bb.23:
	ld.bu	$a1, $s2, 58
	beq	$a0, $a1, .LBB3_29
# %bb.24:
	ld.bu	$a1, $s2, 62
	beq	$a0, $a1, .LBB3_29
# %bb.25:                               # %.lr.ph.i26.preheader
	addi.d	$a0, $s1, 1
	.p2align	4, , 16
.LBB3_26:                               # %.lr.ph.i26
                                        # =>This Inner Loop Header: Depth=1
	st.d	$a0, $fp, 0
	ld.bu	$a1, $a0, 0
	beqz	$a1, .LBB3_29
# %bb.27:                               # %.lr.ph.i26
                                        #   in Loop: Header=BB3_26 Depth=1
	ld.bu	$a2, $s2, 58
	beq	$a1, $a2, .LBB3_29
# %bb.28:                               # %.lr.ph.i26
                                        #   in Loop: Header=BB3_26 Depth=1
	ld.bu	$a2, $s2, 62
	addi.d	$a0, $a0, 1
	bne	$a1, $a2, .LBB3_26
.LBB3_29:                               # %TeX_skip_parens.exit32
	pcalau12i	$a0, %got_pc_hi20(math_mode)
	ld.d	$a0, $a0, %got_pc_lo12(math_mode)
	ld.w	$a1, $a0, 0
	slli.d	$a2, $a1, 7
	addi.d	$a2, $a2, 256
	bstrpick.d	$a2, $a2, 13, 7
	slli.d	$a2, $a2, 7
	add.d	$a1, $a1, $a2
	addi.d	$a1, $a1, -126
	st.w	$a1, $a0, 0
	ori	$a0, $zero, 1
	b	.LBB3_31
.LBB3_30:
	pcalau12i	$a0, %got_pc_hi20(math_mode)
	ld.d	$fp, $a0, %got_pc_lo12(math_mode)
	ld.w	$a0, $fp, 0
	slli.d	$a1, $a0, 7
	bstrpick.d	$a1, $a1, 13, 7
	slli.d	$a1, $a1, 7
	sub.w	$a1, $a0, $a1
	st.w	$a1, $fp, 0
	ori	$a0, $zero, 1
	bltz	$a1, .LBB3_32
.LBB3_31:
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.LBB3_32:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a0, $a0, %pc_lo12(.L.str.26)
	ori	$a1, $zero, 36
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	st.w	$a0, $fp, 0
	b	.LBB3_31
.Lfunc_end3:
	.size	TeX_LR_check, .Lfunc_end3-TeX_LR_check
                                        # -- End function
	.p2align	5                               # -- Begin function TeX_strncmp
	.type	TeX_strncmp,@function
TeX_strncmp:                            # @TeX_strncmp
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a2
	move	$s0, $a0
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB4_3
.LBB4_1:
	move	$a1, $a0
.LBB4_2:
	move	$a0, $a1
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB4_3:
	ldx.b	$fp, $s0, $fp
	bltz	$fp, .LBB4_1
# %bb.4:
	move	$s0, $a0
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $s0
	ld.d	$a1, $a1, 0
	slli.d	$a2, $fp, 1
	ldx.hu	$a1, $a1, $a2
	andi	$a2, $a1, 1024
	ori	$a1, $zero, 1
	beqz	$a2, .LBB4_1
	b	.LBB4_2
.Lfunc_end4:
	.size	TeX_strncmp, .Lfunc_end4-TeX_strncmp
                                        # -- End function
	.p2align	5                               # -- Begin function TeX_skip_parens
	.type	TeX_skip_parens,@function
TeX_skip_parens:                        # @TeX_skip_parens
# %bb.0:
	ld.d	$a2, $a0, 0
	ld.bu	$a3, $a2, 0
	beqz	$a3, .LBB5_7
# %bb.1:
	pcalau12i	$a1, %got_pc_hi20(hashheader)
	ld.d	$a1, $a1, %got_pc_lo12(hashheader)
	ld.bu	$a4, $a1, 58
	beq	$a3, $a4, .LBB5_7
# %bb.2:
	ld.bu	$a4, $a1, 62
	beq	$a3, $a4, .LBB5_7
# %bb.3:                                # %.lr.ph.preheader
	addi.d	$a2, $a2, 1
	.p2align	4, , 16
.LBB5_4:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	st.d	$a2, $a0, 0
	ld.bu	$a3, $a2, 0
	beqz	$a3, .LBB5_7
# %bb.5:                                # %.lr.ph
                                        #   in Loop: Header=BB5_4 Depth=1
	ld.bu	$a4, $a1, 58
	beq	$a3, $a4, .LBB5_7
# %bb.6:                                # %.lr.ph
                                        #   in Loop: Header=BB5_4 Depth=1
	ld.bu	$a4, $a1, 62
	addi.d	$a2, $a2, 1
	bne	$a3, $a4, .LBB5_4
.LBB5_7:                                # %.critedge
	ret
.Lfunc_end5:
	.size	TeX_skip_parens, .Lfunc_end5-TeX_skip_parens
                                        # -- End function
	.type	TeX_comment,@object             # @TeX_comment
	.local	TeX_comment
	.comm	TeX_comment,1,4
	.type	save_math_mode,@object          # @save_math_mode
	.local	save_math_mode
	.comm	save_math_mode,4,4
	.type	save_LaTeX_Mode,@object         # @save_LaTeX_Mode
	.local	save_LaTeX_Mode
	.comm	save_LaTeX_Mode,1,1
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"if t"
	.size	.L.str, 5

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"if n"
	.size	.L.str.1, 5

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"\r\nWord '%s' too long at line %d of %s, truncated\r\n"
	.size	.L.str.5, 51

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"/home/tangyan/code/auto-tests/loong-opt-cov-ts/test-suite/llvm-test-suite/MultiSource/Benchmarks/MiBench/office-ispell/defmt.c"
	.size	.L.str.6, 127

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"%s\n"
	.size	.L.str.7, 4

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"*\n"
	.size	.L.str.8, 3

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"+ %s\n"
	.size	.L.str.9, 6

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"-\n"
	.size	.L.str.10, 3

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"%c %s %d %d"
	.size	.L.str.11, 12

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"%c %s"
	.size	.L.str.12, 6

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"# %s %d\n"
	.size	.L.str.14, 9

	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	"****ERROR in parsing TeX math mode!\r\n"
	.size	.L.str.16, 38

	.type	.L.str.17,@object               # @.str.17
.L.str.17:
	.asciz	"\\end"
	.size	.L.str.17, 5

	.type	.L.str.18,@object               # @.str.18
.L.str.18:
	.asciz	"equation"
	.size	.L.str.18, 9

	.type	.L.str.19,@object               # @.str.19
.L.str.19:
	.asciz	"eqnarray"
	.size	.L.str.19, 9

	.type	.L.str.20,@object               # @.str.20
.L.str.20:
	.asciz	"displaymath"
	.size	.L.str.20, 12

	.type	.L.str.21,@object               # @.str.21
.L.str.21:
	.asciz	"picture"
	.size	.L.str.21, 8

	.type	.L.str.22,@object               # @.str.22
.L.str.22:
	.asciz	"math"
	.size	.L.str.22, 5

	.type	.L.str.23,@object               # @.str.23
.L.str.23:
	.asciz	"tabular"
	.size	.L.str.23, 8

	.type	.L.str.24,@object               # @.str.24
.L.str.24:
	.asciz	"minipage"
	.size	.L.str.24, 9

	.type	.L.str.25,@object               # @.str.25
.L.str.25:
	.asciz	"tabular*"
	.size	.L.str.25, 9

	.type	.L.str.26,@object               # @.str.26
.L.str.26:
	.asciz	"***ERROR in LR to math-mode switch.\n"
	.size	.L.str.26, 37

	.type	.L.str.28,@object               # @.str.28
.L.str.28:
	.asciz	"mbox"
	.size	.L.str.28, 5

	.type	.L.str.29,@object               # @.str.29
.L.str.29:
	.asciz	"makebox"
	.size	.L.str.29, 8

	.type	.L.str.30,@object               # @.str.30
.L.str.30:
	.asciz	"fbox"
	.size	.L.str.30, 5

	.type	.L.str.31,@object               # @.str.31
.L.str.31:
	.asciz	"framebox"
	.size	.L.str.31, 9

	.type	.L.str.32,@object               # @.str.32
.L.str.32:
	.asciz	"parbox"
	.size	.L.str.32, 7

	.type	.L.str.33,@object               # @.str.33
.L.str.33:
	.asciz	"raisebox"
	.size	.L.str.33, 9

	.type	.L.str.34,@object               # @.str.34
.L.str.34:
	.asciz	"begin"
	.size	.L.str.34, 6

	.type	.L.str.35,@object               # @.str.35
.L.str.35:
	.asciz	"vspace"
	.size	.L.str.35, 7

	.type	.L.str.36,@object               # @.str.36
.L.str.36:
	.asciz	"hspace"
	.size	.L.str.36, 7

	.type	.L.str.37,@object               # @.str.37
.L.str.37:
	.asciz	"cite"
	.size	.L.str.37, 5

	.type	.L.str.39,@object               # @.str.39
.L.str.39:
	.asciz	"label"
	.size	.L.str.39, 6

	.type	.L.str.40,@object               # @.str.40
.L.str.40:
	.asciz	"input"
	.size	.L.str.40, 6

	.type	.L.str.41,@object               # @.str.41
.L.str.41:
	.asciz	"nocite"
	.size	.L.str.41, 7

	.type	.L.str.42,@object               # @.str.42
.L.str.42:
	.asciz	"include"
	.size	.L.str.42, 8

	.type	.L.str.43,@object               # @.str.43
.L.str.43:
	.asciz	"includeonly"
	.size	.L.str.43, 12

	.type	.L.str.44,@object               # @.str.44
.L.str.44:
	.asciz	"documentstyle"
	.size	.L.str.44, 14

	.type	.L.str.45,@object               # @.str.45
.L.str.45:
	.asciz	"documentclass"
	.size	.L.str.45, 14

	.type	.L.str.46,@object               # @.str.46
.L.str.46:
	.asciz	"usepackage"
	.size	.L.str.46, 11

	.type	.L.str.47,@object               # @.str.47
.L.str.47:
	.asciz	"pagestyle"
	.size	.L.str.47, 10

	.type	.L.str.48,@object               # @.str.48
.L.str.48:
	.asciz	"pagenumbering"
	.size	.L.str.48, 14

	.type	.L.str.49,@object               # @.str.49
.L.str.49:
	.asciz	"bibliography"
	.size	.L.str.49, 13

	.type	.L.str.50,@object               # @.str.50
.L.str.50:
	.asciz	"bibitem"
	.size	.L.str.50, 8

	.type	.L.str.51,@object               # @.str.51
.L.str.51:
	.asciz	"hyphenation"
	.size	.L.str.51, 12

	.type	.L.str.52,@object               # @.str.52
.L.str.52:
	.asciz	"pageref"
	.size	.L.str.52, 8

	.type	.L.str.53,@object               # @.str.53
.L.str.53:
	.asciz	"rule"
	.size	.L.str.53, 5

	.type	.L.str.54,@object               # @.str.54
.L.str.54:
	.asciz	"setcounter"
	.size	.L.str.54, 11

	.type	.L.str.55,@object               # @.str.55
.L.str.55:
	.asciz	"addtocounter"
	.size	.L.str.55, 13

	.type	.L.str.56,@object               # @.str.56
.L.str.56:
	.asciz	"setlength"
	.size	.L.str.56, 10

	.type	.L.str.57,@object               # @.str.57
.L.str.57:
	.asciz	"addtolength"
	.size	.L.str.57, 12

	.type	.L.str.58,@object               # @.str.58
.L.str.58:
	.asciz	"settowidth"
	.size	.L.str.58, 11

	.type	.L.str.59,@object               # @.str.59
.L.str.59:
	.asciz	"verb"
	.size	.L.str.59, 5

	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym contextbufs
	.addrsig_sym currentchar
	.addrsig_sym ctoken
	.addrsig_sym itoken
	.addrsig_sym possibilities
