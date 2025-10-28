	.file	"placepin.c"
	.text
	.globl	placepin                        # -- Begin function placepin
	.p2align	5
	.type	placepin,@function
placepin:                               # @placepin
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
	pcalau12i	$a0, %got_pc_hi20(numcells)
	ld.d	$a0, $a0, %got_pc_lo12(numcells)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	ld.w	$t2, $a0, 0
	blez	$t2, .LBB0_87
# %bb.1:                                # %.lr.ph265
	pcalau12i	$a0, %got_pc_hi20(cellarray)
	ld.d	$a0, $a0, %got_pc_lo12(cellarray)
	ld.d	$a1, $a0, 0
	ori	$a2, $zero, 1
	ori	$a3, $zero, 44
	ori	$a4, $zero, 2
	lu12i.w	$a0, 269412
	ori	$a5, $a0, 3693
	lu12i.w	$a0, 3
	ori	$a6, $a0, 57
	lu12i.w	$a0, -1024
	lu52i.d	$a0, $a0, 1053
	movgr2fr.d	$fa0, $a0
	ori	$a0, $zero, 1
                                        # implicit-def: $r26
	st.d	$a1, $sp, 8                     # 8-byte Folded Spill
	b	.LBB0_4
	.p2align	4, , 16
.LBB0_2:                                # %.loopexit195.loopexit
                                        #   in Loop: Header=BB0_4 Depth=1
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	ld.w	$t2, $a0, 0
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
.LBB0_3:                                # %.loopexit195
                                        #   in Loop: Header=BB0_4 Depth=1
	addi.d	$a0, $fp, 1
	bge	$fp, $t2, .LBB0_87
.LBB0_4:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_9 Depth 2
                                        #       Child Loop BB0_20 Depth 3
                                        #       Child Loop BB0_23 Depth 3
                                        #       Child Loop BB0_61 Depth 3
                                        #       Child Loop BB0_31 Depth 3
                                        #       Child Loop BB0_34 Depth 3
                                        #       Child Loop BB0_38 Depth 3
                                        #       Child Loop BB0_41 Depth 3
                                        #       Child Loop BB0_48 Depth 3
                                        #       Child Loop BB0_51 Depth 3
                                        #       Child Loop BB0_54 Depth 3
                                        #       Child Loop BB0_65 Depth 3
                                        #         Child Loop BB0_67 Depth 4
                                        #       Child Loop BB0_74 Depth 3
                                        #         Child Loop BB0_78 Depth 4
                                        #         Child Loop BB0_81 Depth 4
                                        #       Child Loop BB0_83 Depth 3
                                        #       Child Loop BB0_86 Depth 3
	move	$fp, $a0
	slli.d	$a0, $a0, 3
	ldx.d	$t0, $a1, $a0
	ld.w	$a0, $t0, 76
	beqz	$a0, .LBB0_3
# %bb.5:                                #   in Loop: Header=BB0_4 Depth=1
	ld.w	$a0, $t0, 128
	beqz	$a0, .LBB0_3
# %bb.6:                                #   in Loop: Header=BB0_4 Depth=1
	ld.w	$t1, $t0, 132
	blez	$t1, .LBB0_3
# %bb.7:                                # %.lr.ph258
                                        #   in Loop: Header=BB0_4 Depth=1
	ld.d	$t2, $t0, 136
	ld.d	$t3, $t0, 144
	addi.d	$t5, $t2, 8
	addi.d	$t7, $t3, 48
	addi.d	$t8, $t3, 4
	ori	$a0, $zero, 1
	b	.LBB0_9
	.p2align	4, , 16
.LBB0_8:                                # %.loopexit191
                                        #   in Loop: Header=BB0_9 Depth=2
	addi.d	$a0, $s0, 1
	bgeu	$s0, $t1, .LBB0_2
.LBB0_9:                                #   Parent Loop BB0_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_20 Depth 3
                                        #       Child Loop BB0_23 Depth 3
                                        #       Child Loop BB0_61 Depth 3
                                        #       Child Loop BB0_31 Depth 3
                                        #       Child Loop BB0_34 Depth 3
                                        #       Child Loop BB0_38 Depth 3
                                        #       Child Loop BB0_41 Depth 3
                                        #       Child Loop BB0_48 Depth 3
                                        #       Child Loop BB0_51 Depth 3
                                        #       Child Loop BB0_54 Depth 3
                                        #       Child Loop BB0_65 Depth 3
                                        #         Child Loop BB0_67 Depth 4
                                        #       Child Loop BB0_74 Depth 3
                                        #         Child Loop BB0_78 Depth 4
                                        #         Child Loop BB0_81 Depth 4
                                        #       Child Loop BB0_83 Depth 3
                                        #       Child Loop BB0_86 Depth 3
	move	$s0, $a0
	mul.d	$a0, $a0, $a3
	add.d	$s1, $t3, $a0
	ld.w	$s2, $s1, 28
	beqz	$s2, .LBB0_8
# %bb.10:                               #   in Loop: Header=BB0_9 Depth=2
	ld.w	$s4, $s1, 16
	beq	$s4, $a4, .LBB0_14
# %bb.11:                               #   in Loop: Header=BB0_9 Depth=2
	bne	$s4, $a2, .LBB0_16
# %bb.12:                               #   in Loop: Header=BB0_9 Depth=2
	ld.d	$a0, $t0, 216
	ld.w	$a7, $s1, 20
	alsl.d	$t4, $a7, $a0, 3
	slli.d	$a7, $a7, 3
	ldx.w	$t6, $a0, $a7
	ld.w	$s3, $t4, 4
	bge	$s3, $t6, .LBB0_25
# %bb.13:                               #   in Loop: Header=BB0_9 Depth=2
	move	$a0, $zero
	b	.LBB0_35
	.p2align	4, , 16
.LBB0_14:                               #   in Loop: Header=BB0_9 Depth=2
	ld.d	$s3, $t0, 216
	ld.w	$a0, $s1, 20
	alsl.d	$a7, $a0, $s3, 3
	slli.d	$a0, $a0, 3
	ldx.w	$t6, $s3, $a0
	ld.w	$s4, $a7, 4
	bge	$s4, $t6, .LBB0_27
# %bb.15:                               #   in Loop: Header=BB0_9 Depth=2
	move	$a0, $zero
	b	.LBB0_42
	.p2align	4, , 16
.LBB0_16:                               #   in Loop: Header=BB0_9 Depth=2
	ori	$a0, $zero, 3
	blt	$s4, $a0, .LBB0_29
# %bb.17:                               # %.preheader194
                                        #   in Loop: Header=BB0_9 Depth=2
	ld.d	$a0, $t0, 216
	ld.w	$a7, $t0, 64
	alsl.d	$a0, $a7, $a0, 3
	ld.w	$s3, $a0, 4
	blez	$s3, .LBB0_59
# %bb.18:                               # %.lr.ph231.preheader
                                        #   in Loop: Header=BB0_9 Depth=2
	move	$t6, $zero
	ori	$a0, $zero, 1
	beq	$s3, $a0, .LBB0_22
# %bb.19:                               # %vector.ph397
                                        #   in Loop: Header=BB0_9 Depth=2
	move	$s5, $zero
	bstrpick.d	$a0, $s3, 30, 1
	slli.d	$t4, $a0, 1
	ori	$a0, $s3, 1
	move	$a7, $t4
	addi.d	$s6, $t2, 48
	.p2align	4, , 16
.LBB0_20:                               # %vector.body400
                                        #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$s7, $s6, -20
	ld.w	$s8, $s6, 0
	add.d	$t6, $s7, $t6
	add.d	$s5, $s8, $s5
	addi.d	$a7, $a7, -2
	addi.d	$s6, $s6, 40
	bnez	$a7, .LBB0_20
# %bb.21:                               # %middle.block405
                                        #   in Loop: Header=BB0_9 Depth=2
	add.w	$t6, $s5, $t6
	beq	$t4, $s3, .LBB0_24
.LBB0_22:                               # %.lr.ph231.preheader458
                                        #   in Loop: Header=BB0_9 Depth=2
	addi.d	$a7, $s3, 1
	bstrpick.d	$t4, $a7, 31, 0
	slli.d	$a7, $a0, 4
	alsl.d	$a7, $a0, $a7, 2
	add.d	$a7, $t5, $a7
	sub.d	$a0, $t4, $a0
	.p2align	4, , 16
.LBB0_23:                               # %.lr.ph231
                                        #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$t4, $a7, 0
	add.w	$t6, $t4, $t6
	addi.d	$a0, $a0, -1
	addi.d	$a7, $a7, 20
	bnez	$a0, .LBB0_23
.LBB0_24:                               # %._crit_edge232
                                        #   in Loop: Header=BB0_9 Depth=2
	bge	$t6, $s2, .LBB0_60
	b	.LBB0_88
.LBB0_25:                               # %.lr.ph225.preheader
                                        #   in Loop: Header=BB0_9 Depth=2
	move	$a0, $zero
	bne	$s3, $t6, .LBB0_30
# %bb.26:                               #   in Loop: Header=BB0_9 Depth=2
	move	$t4, $t6
	b	.LBB0_33
.LBB0_27:                               # %.lr.ph.preheader
                                        #   in Loop: Header=BB0_9 Depth=2
	move	$a0, $zero
	bne	$s4, $t6, .LBB0_37
# %bb.28:                               #   in Loop: Header=BB0_9 Depth=2
	move	$t4, $t6
	b	.LBB0_40
.LBB0_29:                               #   in Loop: Header=BB0_9 Depth=2
	move	$a0, $s4
	bnez	$a0, .LBB0_63
	b	.LBB0_58
.LBB0_30:                               # %vector.ph410
                                        #   in Loop: Header=BB0_9 Depth=2
	move	$s5, $zero
	sub.d	$a7, $s3, $t6
	bstrpick.d	$a7, $a7, 31, 0
	addi.d	$s4, $a7, 1
	bstrpick.d	$a7, $s4, 32, 1
	slli.d	$s6, $a7, 1
	alsl.d	$t4, $a7, $t6, 1
	slli.d	$a7, $t6, 4
	alsl.d	$a7, $t6, $a7, 2
	addi.d	$a1, $t2, 28
	add.d	$a7, $a1, $a7
	move	$t6, $s6
	.p2align	4, , 16
.LBB0_31:                               # %vector.body413
                                        #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$s7, $a7, -20
	ld.w	$s8, $a7, 0
	add.d	$a0, $s7, $a0
	add.d	$s5, $s8, $s5
	addi.d	$t6, $t6, -2
	addi.d	$a7, $a7, 40
	bnez	$t6, .LBB0_31
# %bb.32:                               # %middle.block419
                                        #   in Loop: Header=BB0_9 Depth=2
	add.w	$a0, $s5, $a0
	beq	$s4, $s6, .LBB0_35
.LBB0_33:                               # %.lr.ph225.preheader459
                                        #   in Loop: Header=BB0_9 Depth=2
	slli.d	$a7, $t4, 4
	alsl.d	$a7, $t4, $a7, 2
	add.d	$a7, $t5, $a7
	sub.d	$t4, $s3, $t4
	addi.d	$t4, $t4, 1
	.p2align	4, , 16
.LBB0_34:                               # %.lr.ph225
                                        #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$t6, $a7, 0
	add.w	$a0, $t6, $a0
	addi.w	$t4, $t4, -1
	addi.d	$a7, $a7, 20
	bnez	$t4, .LBB0_34
.LBB0_35:                               # %._crit_edge226
                                        #   in Loop: Header=BB0_9 Depth=2
	blt	$a0, $s2, .LBB0_88
# %bb.36:                               # %thread-pre-split.thread
                                        #   in Loop: Header=BB0_9 Depth=2
	ld.w	$s3, $s1, 20
	b	.LBB0_63
.LBB0_37:                               # %vector.ph442
                                        #   in Loop: Header=BB0_9 Depth=2
	move	$s6, $zero
	sub.d	$a7, $s4, $t6
	bstrpick.d	$a7, $a7, 31, 0
	addi.d	$s5, $a7, 1
	bstrpick.d	$a7, $s5, 32, 1
	slli.d	$s7, $a7, 1
	alsl.d	$t4, $a7, $t6, 1
	slli.d	$a7, $t6, 4
	alsl.d	$a7, $t6, $a7, 2
	addi.d	$a1, $t2, 28
	add.d	$a7, $a1, $a7
	move	$t6, $s7
	.p2align	4, , 16
.LBB0_38:                               # %vector.body445
                                        #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$s8, $a7, -20
	ld.w	$ra, $a7, 0
	add.d	$a0, $s8, $a0
	add.d	$s6, $ra, $s6
	addi.d	$t6, $t6, -2
	addi.d	$a7, $a7, 40
	bnez	$t6, .LBB0_38
# %bb.39:                               # %middle.block451
                                        #   in Loop: Header=BB0_9 Depth=2
	add.w	$a0, $s6, $a0
	beq	$s5, $s7, .LBB0_42
.LBB0_40:                               # %.lr.ph.preheader461
                                        #   in Loop: Header=BB0_9 Depth=2
	slli.d	$a7, $t4, 4
	alsl.d	$a7, $t4, $a7, 2
	add.d	$a7, $t5, $a7
	sub.d	$t4, $s4, $t4
	addi.d	$t4, $t4, 1
	.p2align	4, , 16
.LBB0_41:                               # %.lr.ph
                                        #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$t6, $a7, 0
	add.w	$a0, $t6, $a0
	addi.w	$t4, $t4, -1
	addi.d	$a7, $a7, 20
	bnez	$t4, .LBB0_41
.LBB0_42:                               # %._crit_edge
                                        #   in Loop: Header=BB0_9 Depth=2
	blt	$a0, $s2, .LBB0_88
# %bb.43:                               #   in Loop: Header=BB0_9 Depth=2
	ld.w	$a0, $s1, 24
	alsl.d	$a7, $a0, $s3, 3
	slli.d	$a0, $a0, 3
	ldx.w	$t6, $s3, $a0
	ld.w	$s3, $a7, 4
	bge	$s3, $t6, .LBB0_45
# %bb.44:                               #   in Loop: Header=BB0_9 Depth=2
	move	$a0, $zero
	b	.LBB0_52
.LBB0_45:                               # %.lr.ph218.preheader
                                        #   in Loop: Header=BB0_9 Depth=2
	move	$a0, $zero
	bne	$s3, $t6, .LBB0_47
# %bb.46:                               #   in Loop: Header=BB0_9 Depth=2
	move	$t4, $t6
	b	.LBB0_50
.LBB0_47:                               # %vector.ph426
                                        #   in Loop: Header=BB0_9 Depth=2
	move	$s5, $zero
	sub.d	$a7, $s3, $t6
	bstrpick.d	$a7, $a7, 31, 0
	addi.d	$s4, $a7, 1
	bstrpick.d	$a7, $s4, 32, 1
	slli.d	$s6, $a7, 1
	alsl.d	$t4, $a7, $t6, 1
	slli.d	$a7, $t6, 4
	alsl.d	$a7, $t6, $a7, 2
	addi.d	$a1, $t2, 28
	add.d	$a7, $a1, $a7
	move	$t6, $s6
	.p2align	4, , 16
.LBB0_48:                               # %vector.body429
                                        #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$s7, $a7, -20
	ld.w	$s8, $a7, 0
	add.d	$a0, $s7, $a0
	add.d	$s5, $s8, $s5
	addi.d	$t6, $t6, -2
	addi.d	$a7, $a7, 40
	bnez	$t6, .LBB0_48
# %bb.49:                               # %middle.block435
                                        #   in Loop: Header=BB0_9 Depth=2
	add.w	$a0, $s5, $a0
	beq	$s4, $s6, .LBB0_52
.LBB0_50:                               # %.lr.ph218.preheader460
                                        #   in Loop: Header=BB0_9 Depth=2
	slli.d	$a7, $t4, 4
	alsl.d	$a7, $t4, $a7, 2
	add.d	$a7, $t5, $a7
	sub.d	$t4, $s3, $t4
	addi.d	$t4, $t4, 1
	.p2align	4, , 16
.LBB0_51:                               # %.lr.ph218
                                        #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$t6, $a7, 0
	add.w	$a0, $t6, $a0
	addi.w	$t4, $t4, -1
	addi.d	$a7, $a7, 20
	bnez	$t4, .LBB0_51
.LBB0_52:                               # %._crit_edge219
                                        #   in Loop: Header=BB0_9 Depth=2
	blt	$a0, $s2, .LBB0_88
# %bb.53:                               # %.preheader193.preheader
                                        #   in Loop: Header=BB0_9 Depth=2
	pcalau12i	$a0, %got_pc_hi20(randVar)
	ld.d	$t4, $a0, %got_pc_lo12(randVar)
	ld.w	$t6, $t4, 0
	ori	$a7, $zero, 2
	.p2align	4, , 16
.LBB0_54:                               # %.preheader193
                                        #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movgr2fr.w	$fa1, $a7
	ffint.d.w	$fa1, $fa1
	mul.d	$a0, $t6, $a5
	add.w	$t6, $a0, $a6
	st.w	$t6, $t4, 0
	bstrpick.d	$a0, $t6, 30, 0
	movgr2fr.w	$fa2, $a0
	ffint.d.w	$fa2, $fa2
	fdiv.d	$fa2, $fa2, $fa0
	ld.w	$a0, $s1, 16
	fmul.d	$fa1, $fa2, $fa1
	ftintrz.w.d	$fa1, $fa1
	movfr2gr.s	$a7, $fa1
	beq	$a0, $a7, .LBB0_54
# %bb.55:                               #   in Loop: Header=BB0_9 Depth=2
	beqz	$a7, .LBB0_57
# %bb.56:                               #   in Loop: Header=BB0_9 Depth=2
	ld.w	$s3, $s1, 24
	bnez	$a0, .LBB0_63
	b	.LBB0_58
.LBB0_57:                               #   in Loop: Header=BB0_9 Depth=2
	ld.w	$s3, $s1, 20
	bnez	$a0, .LBB0_63
.LBB0_58:                               #   in Loop: Header=BB0_9 Depth=2
	ld.w	$s7, $s1, 20
	vldi	$vr1, -912
	move	$s8, $s7
	b	.LBB0_64
.LBB0_59:                               #   in Loop: Header=BB0_9 Depth=2
	move	$t6, $zero
	blt	$t6, $s2, .LBB0_88
.LBB0_60:                               # %.preheader.preheader
                                        #   in Loop: Header=BB0_9 Depth=2
	pcalau12i	$a0, %got_pc_hi20(randVar)
	ld.d	$t4, $a0, %got_pc_lo12(randVar)
	ld.w	$t6, $t4, 0
	.p2align	4, , 16
.LBB0_61:                               # %.preheader
                                        #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movgr2fr.w	$fa1, $s4
	ffint.d.w	$fa1, $fa1
	mul.d	$a0, $t6, $a5
	add.w	$t6, $a0, $a6
	st.w	$t6, $t4, 0
	bstrpick.d	$a0, $t6, 30, 0
	movgr2fr.w	$fa2, $a0
	ffint.d.w	$fa2, $fa2
	fdiv.d	$fa2, $fa2, $fa0
	ld.w	$a0, $s1, 16
	fmul.d	$fa1, $fa2, $fa1
	ftintrz.w.d	$fa1, $fa1
	movfr2gr.s	$s4, $fa1
	beq	$a0, $s4, .LBB0_61
# %bb.62:                               # %.loopexit192
                                        #   in Loop: Header=BB0_9 Depth=2
	addi.d	$s3, $s4, 1
	beqz	$a0, .LBB0_58
	.p2align	4, , 16
.LBB0_63:                               #   in Loop: Header=BB0_9 Depth=2
	ld.d	$a0, $t0, 216
	addi.w	$a7, $s3, 0
	alsl.d	$t4, $a7, $a0, 3
	slli.d	$a7, $a7, 3
	ldx.w	$s7, $a0, $a7
	ld.w	$s8, $t4, 4
	sub.d	$a0, $s8, $s7
	addi.d	$a0, $a0, 1
	movgr2fr.w	$fa1, $a0
	ffint.d.w	$fa1, $fa1
.LBB0_64:                               #   in Loop: Header=BB0_9 Depth=2
	addi.w	$ra, $s8, 1
	pcalau12i	$a0, %got_pc_hi20(randVar)
	ld.d	$t6, $a0, %got_pc_lo12(randVar)
	ld.w	$a0, $t6, 0
.LBB0_65:                               # %.critedge
                                        #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_67 Depth 4
	mul.d	$a0, $a0, $a5
	add.w	$a0, $a0, $a6
	bstrpick.d	$a7, $a0, 30, 0
	movgr2fr.w	$fa2, $a7
	ffint.d.w	$fa2, $fa2
	fdiv.d	$fa2, $fa2, $fa0
	fmul.d	$fa2, $fa1, $fa2
	ftintrz.w.d	$fa2, $fa2
	movfr2gr.s	$s2, $fa2
	add.w	$t4, $s7, $s2
	st.w	$a0, $t6, 0
	blt	$s8, $t4, .LBB0_65
# %bb.66:                               # %.lr.ph237
                                        #   in Loop: Header=BB0_65 Depth=3
	move	$a7, $zero
	ld.w	$s4, $s1, 28
	add.d	$s6, $s7, $s2
	slli.d	$s2, $s6, 4
	alsl.d	$s2, $s6, $s2, 2
	add.d	$s5, $t2, $s2
	move	$s2, $t4
	.p2align	4, , 16
.LBB0_67:                               #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        #       Parent Loop BB0_65 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.w	$a1, $s5, 8
	add.w	$a7, $a1, $a7
	bge	$a7, $s4, .LBB0_69
# %bb.68:                               #   in Loop: Header=BB0_67 Depth=4
	addi.w	$s2, $s2, 1
	addi.d	$s5, $s5, 20
	bne	$ra, $s2, .LBB0_67
	b	.LBB0_65
	.p2align	4, , 16
.LBB0_69:                               # %.loopexit
                                        #   in Loop: Header=BB0_9 Depth=2
	move	$s7, $zero
	move	$s1, $s0
	blt	$t4, $s2, .LBB0_74
.LBB0_70:                               # %._crit_edge247
                                        #   in Loop: Header=BB0_9 Depth=2
	ld.w	$a1, $s5, 0
	sub.w	$a0, $s4, $s7
	add.d	$a1, $a1, $a0
	st.w	$a1, $s5, 0
	blez	$a0, .LBB0_8
# %bb.71:                               # %.lr.ph252.preheader
                                        #   in Loop: Header=BB0_9 Depth=2
	add.w	$a0, $s1, $a0
	addi.w	$s1, $s1, 0
	addi.d	$a1, $s1, 1
	slt	$a7, $a0, $a1
	masknez	$t4, $a0, $a7
	maskeqz	$a1, $a1, $a7
	or	$a1, $a1, $t4
	sub.d	$t6, $a1, $s1
	bgeu	$t6, $a4, .LBB0_82
# %bb.72:                               #   in Loop: Header=BB0_9 Depth=2
	move	$t4, $s1
	b	.LBB0_85
	.p2align	4, , 16
.LBB0_73:                               # %._crit_edge241
                                        #   in Loop: Header=BB0_74 Depth=3
	addi.d	$s6, $s6, 1
	add.d	$s7, $s8, $s7
	beq	$s6, $s2, .LBB0_70
.LBB0_74:                               # %.lr.ph246
                                        #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_78 Depth 4
                                        #         Child Loop BB0_81 Depth 4
	slli.d	$a0, $s6, 4
	alsl.d	$a1, $s6, $a0, 2
	add.d	$a0, $t2, $a1
	ld.w	$s8, $a0, 8
	ldx.w	$a7, $t2, $a1
	move	$a0, $s1
	add.d	$a7, $a7, $s8
	stx.w	$a7, $t2, $a1
	add.w	$s1, $s8, $s1
	blez	$s8, .LBB0_73
# %bb.75:                               # %.lr.ph240.preheader
                                        #   in Loop: Header=BB0_74 Depth=3
	addi.w	$t6, $a0, 0
	addi.d	$a0, $t6, 1
	slt	$a1, $s1, $a0
	masknez	$a7, $s1, $a1
	maskeqz	$a0, $a0, $a1
	or	$a0, $a0, $a7
	sub.d	$t4, $a0, $t6
	bgeu	$t4, $a4, .LBB0_77
# %bb.76:                               #   in Loop: Header=BB0_74 Depth=3
	move	$a0, $t6
	b	.LBB0_80
	.p2align	4, , 16
.LBB0_77:                               # %vector.ph385
                                        #   in Loop: Header=BB0_74 Depth=3
	move	$a7, $t4
	bstrins.d	$a7, $zero, 0, 0
	add.d	$a0, $a7, $t6
	mul.d	$a1, $t6, $a3
	add.d	$t6, $t7, $a1
	move	$ra, $a7
	.p2align	4, , 16
.LBB0_78:                               # %vector.body388
                                        #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        #       Parent Loop BB0_74 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	st.w	$s6, $t6, -44
	st.w	$s6, $t6, 0
	addi.d	$ra, $ra, -2
	addi.d	$t6, $t6, 88
	bnez	$ra, .LBB0_78
# %bb.79:                               # %middle.block392
                                        #   in Loop: Header=BB0_74 Depth=3
	beq	$t4, $a7, .LBB0_73
.LBB0_80:                               # %.lr.ph240.preheader456
                                        #   in Loop: Header=BB0_74 Depth=3
	mul.d	$a1, $a0, $a3
	add.d	$a7, $t8, $a1
	.p2align	4, , 16
.LBB0_81:                               # %.lr.ph240
                                        #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        #       Parent Loop BB0_74 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	st.w	$s6, $a7, 0
	addi.d	$a0, $a0, 1
	addi.d	$a7, $a7, 44
	blt	$a0, $s1, .LBB0_81
	b	.LBB0_73
.LBB0_82:                               # %vector.ph
                                        #   in Loop: Header=BB0_9 Depth=2
	move	$a7, $t6
	bstrins.d	$a7, $zero, 0, 0
	add.d	$t4, $a7, $s1
	mul.d	$a1, $s1, $a3
	add.d	$s1, $t7, $a1
	move	$s4, $a7
	.p2align	4, , 16
.LBB0_83:                               # %vector.body
                                        #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	st.w	$s2, $s1, -44
	st.w	$s2, $s1, 0
	addi.d	$s4, $s4, -2
	addi.d	$s1, $s1, 88
	bnez	$s4, .LBB0_83
# %bb.84:                               # %middle.block
                                        #   in Loop: Header=BB0_9 Depth=2
	beq	$t6, $a7, .LBB0_8
.LBB0_85:                               # %.lr.ph252.preheader457
                                        #   in Loop: Header=BB0_9 Depth=2
	mul.d	$a1, $t4, $a3
	add.d	$a7, $t8, $a1
	.p2align	4, , 16
.LBB0_86:                               # %.lr.ph252
                                        #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	st.w	$s2, $a7, 0
	addi.d	$t4, $t4, 1
	addi.d	$a7, $a7, 44
	blt	$t4, $a0, .LBB0_86
	b	.LBB0_8
.LBB0_87:                               # %._crit_edge266
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
.LBB0_88:
	pcalau12i	$a0, %got_pc_hi20(fpo)
	ld.d	$s0, $a0, %got_pc_lo12(fpo)
	ld.d	$a3, $s0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	ori	$a1, $zero, 35
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	ori	$a1, $zero, 35
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 0
	pcalau12i	$a1, %pc_hi20(.L.str.2)
	addi.d	$a1, $a1, %pc_lo12(.L.str.2)
	move	$a2, $fp
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end0:
	.size	placepin, .Lfunc_end0-placepin
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"DEATH: Sequence was specified which"
	.size	.L.str, 36

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	" required more capacity than given\n"
	.size	.L.str.1, 36

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"sides could hanlde. Problem cell:%d\n"
	.size	.L.str.2, 37

	.section	".note.GNU-stack","",@progbits
	.addrsig
