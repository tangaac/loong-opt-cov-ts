	.file	"maskgen.c"
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function maskgen
.LCPI0_0:
	.word	0                               # 0x0
	.word	4                               # 0x4
	.word	4                               # 0x4
	.word	4                               # 0x4
	.text
	.globl	maskgen
	.p2align	5
	.type	maskgen,@function
maskgen:                                # @maskgen
# %bb.0:                                # %.preheader207.preheader
	addi.d	$sp, $sp, -1648
	st.d	$ra, $sp, 1640                  # 8-byte Folded Spill
	st.d	$fp, $sp, 1632                  # 8-byte Folded Spill
	st.d	$s0, $sp, 1624                  # 8-byte Folded Spill
	st.d	$s1, $sp, 1616                  # 8-byte Folded Spill
	st.d	$s2, $sp, 1608                  # 8-byte Folded Spill
	st.d	$s3, $sp, 1600                  # 8-byte Folded Spill
	st.d	$s4, $sp, 1592                  # 8-byte Folded Spill
	st.d	$s5, $sp, 1584                  # 8-byte Folded Spill
	st.d	$s6, $sp, 1576                  # 8-byte Folded Spill
	st.d	$s7, $sp, 1568                  # 8-byte Folded Spill
	st.d	$s8, $sp, 1560                  # 8-byte Folded Spill
	move	$fp, $a0
	st.b	$zero, $sp, 52
	st.b	$zero, $sp, 88
	st.b	$zero, $sp, 124
	st.b	$zero, $sp, 160
	st.b	$zero, $sp, 196
	st.b	$zero, $sp, 232
	st.b	$zero, $sp, 268
	st.b	$zero, $sp, 304
	st.b	$zero, $sp, 340
	st.b	$zero, $sp, 376
	st.b	$zero, $sp, 412
	st.b	$zero, $sp, 448
	st.b	$zero, $sp, 484
	st.b	$zero, $sp, 520
	st.b	$zero, $sp, 556
	st.b	$zero, $sp, 592
	st.b	$zero, $sp, 628
	st.b	$zero, $sp, 664
	st.b	$zero, $sp, 700
	st.b	$zero, $sp, 736
	st.b	$zero, $sp, 772
	st.b	$zero, $sp, 808
	st.b	$zero, $sp, 844
	st.b	$zero, $sp, 880
	st.b	$zero, $sp, 916
	st.b	$zero, $sp, 952
	st.b	$zero, $sp, 988
	st.b	$zero, $sp, 1024
	st.b	$zero, $sp, 1060
	st.b	$zero, $sp, 1096
	st.b	$zero, $sp, 1132
	st.b	$zero, $sp, 1168
	st.w	$zero, $sp, 48
	st.w	$zero, $sp, 84
	st.w	$zero, $sp, 120
	st.w	$zero, $sp, 156
	st.w	$zero, $sp, 192
	st.w	$zero, $sp, 228
	st.w	$zero, $sp, 264
	st.w	$zero, $sp, 300
	st.w	$zero, $sp, 336
	st.w	$zero, $sp, 372
	st.w	$zero, $sp, 408
	st.w	$zero, $sp, 444
	st.w	$zero, $sp, 480
	st.w	$zero, $sp, 516
	st.w	$zero, $sp, 552
	st.w	$zero, $sp, 588
	st.w	$zero, $sp, 624
	st.w	$zero, $sp, 660
	st.w	$zero, $sp, 696
	st.w	$zero, $sp, 732
	st.w	$zero, $sp, 768
	st.w	$zero, $sp, 804
	st.w	$zero, $sp, 840
	st.w	$zero, $sp, 876
	st.w	$zero, $sp, 912
	st.w	$zero, $sp, 948
	st.w	$zero, $sp, 984
	st.w	$zero, $sp, 1020
	st.w	$zero, $sp, 1056
	st.w	$zero, $sp, 1092
	st.w	$zero, $sp, 1128
	pcalau12i	$a0, %got_pc_hi20(endposition)
	ld.d	$s3, $a0, %got_pc_lo12(endposition)
	pcalau12i	$a0, %got_pc_hi20(NO_ERR_MASK)
	ld.d	$s5, $a0, %got_pc_lo12(NO_ERR_MASK)
	pcalau12i	$a0, %got_pc_hi20(wildmask)
	ld.d	$s4, $a0, %got_pc_lo12(wildmask)
	st.w	$zero, $sp, 1164
	st.w	$zero, $s3, 0
	st.w	$zero, $s5, 0
	st.w	$zero, $s4, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(NOUPPER)
	ld.d	$a1, $a1, %got_pc_lo12(NOUPPER)
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	ld.w	$a1, $a1, 0
	addi.w	$s6, $a0, 0
	beqz	$a1, .LBB0_6
# %bb.1:                                # %.preheader207.preheader
	move	$s1, $a0
	ori	$a0, $zero, 1
	blt	$s6, $a0, .LBB0_6
# %bb.2:                                # %.lr.ph
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	bstrpick.d	$s1, $s1, 30, 0
	ori	$s2, $zero, 1280
	move	$s7, $fp
	b	.LBB0_4
	.p2align	4, , 16
.LBB0_3:                                #   in Loop: Header=BB0_4 Depth=1
	addi.d	$s1, $s1, -1
	addi.d	$s7, $s7, 1
	beqz	$s1, .LBB0_6
.LBB0_4:                                # =>This Inner Loop Header: Depth=1
	ld.bu	$s8, $s7, 0
	ld.d	$a0, $s0, 0
	slli.d	$a1, $s8, 1
	ldx.hu	$a0, $a0, $a1
	andi	$a0, $a0, 1280
	bne	$a0, $s2, .LBB0_3
# %bb.5:                                #   in Loop: Header=BB0_4 Depth=1
	pcaddu18i	$ra, %call36(__ctype_tolower_loc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $a0, 0
	slli.d	$a1, $s8, 2
	ldx.b	$a0, $a0, $a1
	st.b	$a0, $s7, 0
	b	.LBB0_3
.LBB0_6:                                # %.loopexit206
	ori	$a0, $zero, 1
	blt	$s6, $a0, .LBB0_48
# %bb.7:                                # %.lr.ph235
	move	$t5, $zero
	move	$t1, $zero
	move	$a1, $zero
	move	$s2, $zero
	ld.w	$a0, $s4, 0
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	ld.w	$a3, $s3, 0
	pcalau12i	$a0, %got_pc_hi20(AND)
	ld.d	$a2, $a0, %got_pc_lo12(AND)
	pcalau12i	$a0, %got_pc_hi20(D_length)
	ld.d	$a0, $a0, %got_pc_lo12(D_length)
	pcalau12i	$a4, %got_pc_hi20(REGEX)
	ld.d	$a4, $a4, %got_pc_lo12(REGEX)
	st.d	$a2, $sp, 8                     # 8-byte Folded Spill
	ld.w	$a6, $a2, 0
	ld.w	$a5, $s5, 0
	ld.w	$a7, $a0, 0
	ld.w	$t0, $a4, 0
	addi.d	$t2, $fp, 1
	ori	$t3, $zero, 1
	ori	$t4, $zero, 14
	pcalau12i	$a0, %got_pc_hi20(Bit)
	ld.d	$t6, $a0, %got_pc_lo12(Bit)
	addi.d	$t7, $sp, 48
	ori	$s0, $zero, 32
	lu12i.w	$a0, -65808
	ori	$s1, $a0, 2570
	lu32i.d	$s1, 0
	lu12i.w	$a0, 263074
	ori	$a0, $a0, 3841
	lu32i.d	$a0, -303013
	lu52i.d	$a0, $a0, 2039
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	ori	$ra, $zero, 245
	ori	$t8, $zero, 237
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3630
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	ori	$a0, $zero, 1
	b	.LBB0_10
.LBB0_8:                                #   in Loop: Header=BB0_10 Depth=1
	addi.w	$a1, $a1, 1
	ori	$t1, $zero, 1
	.p2align	4, , 16
.LBB0_9:                                # %.thread
                                        #   in Loop: Header=BB0_10 Depth=1
	addi.w	$t5, $t5, 1
	bge	$t5, $s6, .LBB0_47
.LBB0_10:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_38 Depth 2
	ldx.bu	$a4, $fp, $t5
	addi.d	$s7, $a4, -239
	bltu	$t4, $s7, .LBB0_13
# %bb.11:                               #   in Loop: Header=BB0_10 Depth=1
	slli.d	$s7, $s7, 2
	pcalau12i	$s8, %pc_hi20(.LJTI0_0)
	addi.d	$s8, $s8, %pc_lo12(.LJTI0_0)
	ldx.w	$s7, $s8, $s7
	add.d	$s7, $s8, $s7
	jr	$s7
.LBB0_12:                               #   in Loop: Header=BB0_10 Depth=1
	slli.d	$a2, $a0, 2
	ldx.w	$a2, $t6, $a2
	or	$a5, $a5, $a2
	st.w	$a5, $s5, 0
	slli.d	$a2, $a0, 5
	alsl.d	$a2, $a0, $a2, 2
	add.d	$a2, $t7, $a2
	st.w	$s1, $a2, 4
	st.b	$zero, $a2, 8
	b	.LBB0_44
.LBB0_13:                               #   in Loop: Header=BB0_10 Depth=1
	ori	$a2, $zero, 10
	bne	$a4, $a2, .LBB0_15
# %bb.14:                               #   in Loop: Header=BB0_10 Depth=1
	slli.d	$a2, $a0, 2
	ldx.w	$a2, $t6, $a2
	or	$a5, $a2, $a5
	st.w	$a5, $s5, 0
	slli.d	$a2, $a0, 5
	alsl.d	$a2, $a0, $a2, 2
	add.d	$a2, $t7, $a2
	ori	$a4, $zero, 2570
	st.h	$a4, $a2, 4
	st.b	$zero, $a2, 6
	b	.LBB0_44
.LBB0_15:                               #   in Loop: Header=BB0_10 Depth=1
	bne	$t1, $t3, .LBB0_17
# %bb.16:                               #   in Loop: Header=BB0_10 Depth=1
	slli.d	$a2, $a0, 2
	ldx.w	$a2, $t6, $a2
	or	$a5, $a2, $a5
	st.w	$a5, $s5, 0
	ldx.bu	$a4, $fp, $t5
.LBB0_17:                               # %._crit_edge293
                                        #   in Loop: Header=BB0_10 Depth=1
	slli.d	$a2, $a0, 5
	alsl.d	$a2, $a0, $a2, 2
	add.d	$s7, $t7, $a2
	stx.w	$zero, $a2, $t7
	st.b	$a4, $s7, 5
	st.b	$a4, $s7, 4
	st.b	$zero, $s7, 6
	b	.LBB0_44
.LBB0_18:                               #   in Loop: Header=BB0_10 Depth=1
	beq	$t0, $t3, .LBB0_86
# %bb.19:                               #   in Loop: Header=BB0_10 Depth=1
	beq	$a6, $t3, .LBB0_86
# %bb.20:                               #   in Loop: Header=BB0_10 Depth=1
	slli.d	$a2, $a0, 5
	alsl.d	$a2, $a0, $a2, 2
	slli.d	$a4, $a0, 2
	ldx.w	$a4, $t6, $a4
	add.d	$s2, $t7, $a2
	ori	$s7, $zero, 2
	stx.w	$s7, $a2, $t7
	st.b	$zero, $s2, 4
	or	$a3, $a4, $a3
	st.w	$a3, $s3, 0
	ori	$s2, $zero, 1
	b	.LBB0_44
.LBB0_21:                               #   in Loop: Header=BB0_10 Depth=1
	slli.d	$a2, $a0, 5
	alsl.d	$a2, $a0, $a2, 2
	add.d	$a4, $t7, $a2
	ori	$s7, $zero, 2
	stx.w	$s7, $a2, $t7
	st.b	$zero, $a4, 4
	bge	$a7, $a0, .LBB0_23
# %bb.22:                               #   in Loop: Header=BB0_10 Depth=1
	ori	$a6, $zero, 1
	ld.d	$a2, $sp, 8                     # 8-byte Folded Reload
	st.w	$a6, $a2, 0
.LBB0_23:                               #   in Loop: Header=BB0_10 Depth=1
	bnez	$s2, .LBB0_86
# %bb.24:                               #   in Loop: Header=BB0_10 Depth=1
	slt	$a2, $a7, $a0
	addi.d	$a4, $t0, -1
	sltui	$a4, $a4, 1
	and	$a2, $a2, $a4
	bnez	$a2, .LBB0_86
# %bb.25:                               #   in Loop: Header=BB0_10 Depth=1
	slli.d	$a2, $a0, 2
	ldx.w	$a2, $t6, $a2
	move	$s2, $zero
	or	$a3, $a2, $a3
	st.w	$a3, $s3, 0
	b	.LBB0_44
.LBB0_26:                               #   in Loop: Header=BB0_10 Depth=1
	slli.d	$a2, $a0, 2
	ldx.w	$a2, $t6, $a2
	or	$a5, $a2, $a5
	st.w	$a5, $s5, 0
	slli.d	$a2, $a0, 5
	alsl.d	$a2, $a0, $a2, 2
	add.d	$a2, $t7, $a2
	ld.d	$a4, $sp, 40                    # 8-byte Folded Reload
	st.d	$a4, $a2, 4
	st.b	$zero, $a2, 12
	b	.LBB0_44
.LBB0_27:                               #   in Loop: Header=BB0_10 Depth=1
	beqz	$t0, .LBB0_46
# %bb.28:                               #   in Loop: Header=BB0_10 Depth=1
	slli.d	$a4, $a0, 5
	alsl.d	$a4, $a0, $a4, 2
	add.d	$a4, $t7, $a4
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	st.h	$a2, $a4, 4
	st.b	$zero, $a4, 6
	b	.LBB0_44
.LBB0_29:                               #   in Loop: Header=BB0_10 Depth=1
	blez	$a1, .LBB0_88
# %bb.30:                               #   in Loop: Header=BB0_10 Depth=1
	move	$t1, $zero
	addi.w	$a1, $a1, -1
	b	.LBB0_9
.LBB0_31:                               #   in Loop: Header=BB0_10 Depth=1
	beq	$t1, $t3, .LBB0_34
# %bb.32:                               #   in Loop: Header=BB0_10 Depth=1
	addi.w	$s8, $t5, 1
	ldx.bu	$a4, $fp, $s8
	ori	$a2, $zero, 248
	beq	$a4, $a2, .LBB0_35
.LBB0_33:                               #   in Loop: Header=BB0_10 Depth=1
	move	$t5, $zero
	bne	$a4, $ra, .LBB0_36
	b	.LBB0_42
.LBB0_34:                               #   in Loop: Header=BB0_10 Depth=1
	slli.d	$a4, $a0, 2
	ldx.w	$a4, $t6, $a4
	or	$a5, $a4, $a5
	st.w	$a5, $s5, 0
	addi.w	$s8, $t5, 1
	ldx.bu	$a4, $fp, $s8
	ori	$a2, $zero, 248
	bne	$a4, $a2, .LBB0_33
.LBB0_35:                               #   in Loop: Header=BB0_10 Depth=1
	addi.w	$s8, $t5, 2
	ldx.bu	$a4, $fp, $s8
	slli.d	$t5, $a0, 5
	alsl.d	$t5, $a0, $t5, 2
	stx.w	$t3, $t5, $t7
	move	$t5, $zero
	beq	$a4, $ra, .LBB0_42
.LBB0_36:                               #   in Loop: Header=BB0_10 Depth=1
	bge	$s8, $s6, .LBB0_42
# %bb.37:                               # %.lr.ph227
                                        #   in Loop: Header=BB0_10 Depth=1
	move	$t5, $zero
	.p2align	4, , 16
.LBB0_38:                               #   Parent Loop BB0_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	slli.d	$s7, $a0, 5
	bne	$a4, $t8, .LBB0_40
# %bb.39:                               #   in Loop: Header=BB0_38 Depth=2
	ldx.b	$a4, $t2, $s8
	addi.w	$a2, $t5, -1
	alsl.d	$s7, $a0, $s7, 2
	add.d	$s7, $t7, $s7
	add.d	$a2, $s7, $a2
	st.b	$a4, $a2, 4
	ori	$a4, $zero, 2
	add.w	$s8, $s8, $a4
	ldx.bu	$a4, $fp, $s8
	bne	$a4, $ra, .LBB0_41
	b	.LBB0_42
	.p2align	4, , 16
.LBB0_40:                               #   in Loop: Header=BB0_38 Depth=2
	addi.w	$a2, $t5, 1
	alsl.d	$s7, $a0, $s7, 2
	add.d	$s7, $t7, $s7
	addi.d	$s7, $s7, 4
	stx.b	$a4, $s7, $a2
	stx.b	$a4, $s7, $t5
	addi.w	$t5, $t5, 2
	ori	$a4, $zero, 1
	add.w	$s8, $s8, $a4
	ldx.bu	$a4, $fp, $s8
	beq	$a4, $ra, .LBB0_42
.LBB0_41:                               #   in Loop: Header=BB0_38 Depth=2
	blt	$s8, $s6, .LBB0_38
.LBB0_42:                               # %._crit_edge
                                        #   in Loop: Header=BB0_10 Depth=1
	beq	$s8, $s6, .LBB0_87
# %bb.43:                               #   in Loop: Header=BB0_10 Depth=1
	slli.d	$a2, $a0, 5
	alsl.d	$a2, $a0, $a2, 2
	add.d	$a2, $t7, $a2
	add.d	$a2, $a2, $t5
	st.b	$zero, $a2, 4
	move	$t5, $s8
	.p2align	4, , 16
.LBB0_44:                               #   in Loop: Header=BB0_10 Depth=1
	bge	$a0, $s0, .LBB0_85
# %bb.45:                               #   in Loop: Header=BB0_10 Depth=1
	addi.w	$a0, $a0, 1
	b	.LBB0_9
.LBB0_46:                               #   in Loop: Header=BB0_10 Depth=1
	alsl.d	$a4, $a0, $t6, 2
	ld.w	$a4, $a4, -4
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	or	$a2, $a4, $a2
	st.d	$a2, $sp, 24                    # 8-byte Folded Spill
	st.w	$a2, $s4, 0
	b	.LBB0_9
.LBB0_47:                               # %._crit_edge236
	bnez	$a1, .LBB0_88
.LBB0_48:                               # %._crit_edge236.thread
	pcalau12i	$a1, %got_pc_hi20(Bit)
	ld.d	$a1, $a1, %got_pc_lo12(Bit)
	addi.w	$fp, $a0, -1
	ld.w	$a3, $s5, 0
	ld.w	$a4, $a1, 4
	ori	$a2, $zero, 33
	sub.w	$a2, $a2, $a0
	srai.d	$a3, $a3, 1
	orn	$a3, $a4, $a3
	ori	$a7, $zero, 32
	sub.d	$a4, $a7, $a0
	sra.w	$a3, $a3, $a4
	pcalau12i	$a4, %got_pc_hi20(Init)
	ld.d	$a4, $a4, %got_pc_lo12(Init)
	ld.w	$a5, $s4, 0
	st.w	$a3, $s5, 0
	ld.w	$t0, $s3, 0
	ld.w	$a6, $a4, 0
	srl.w	$a3, $a5, $a2
	st.w	$a3, $s4, 0
	srl.w	$a5, $t0, $a2
	blt	$a7, $a0, .LBB0_55
# %bb.49:                               # %.lr.ph242
	ori	$a7, $zero, 1
	slt	$t0, $a7, $a2
	masknez	$t1, $a7, $t0
	maskeqz	$t0, $a2, $t0
	ori	$t2, $zero, 8
	or	$t0, $t0, $t1
	blt	$a2, $t2, .LBB0_53
# %bb.50:                               # %vector.ph
	bstrpick.d	$a7, $t0, 30, 3
	slli.d	$t1, $a7, 3
	srli.d	$t2, $t0, 3
	ori	$a7, $zero, 1
	pcalau12i	$t3, %pc_hi20(.LCPI0_0)
	vld	$vr0, $t3, %pc_lo12(.LCPI0_0)
	bstrins.d	$a7, $t2, 30, 3
	vinsgr2vr.w	$vr1, $a6, 0
	vinsgr2vr.w	$vr2, $zero, 0
	vshuf.w	$vr0, $vr2, $vr1
	addi.d	$a6, $a1, 20
	vrepli.b	$vr1, 0
	move	$t2, $t1
	.p2align	4, , 16
.LBB0_51:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr2, $a6, -16
	vld	$vr3, $a6, 0
	vor.v	$vr0, $vr2, $vr0
	vor.v	$vr1, $vr3, $vr1
	addi.d	$t2, $t2, -8
	addi.d	$a6, $a6, 32
	bnez	$t2, .LBB0_51
# %bb.52:                               # %middle.block
	vor.v	$vr0, $vr1, $vr0
	vshuf4i.w	$vr1, $vr0, 14
	vor.v	$vr0, $vr0, $vr1
	vreplvei.w	$vr1, $vr0, 1
	vor.v	$vr0, $vr0, $vr1
	vpickve2gr.w	$a6, $vr0, 0
	beq	$t1, $t0, .LBB0_55
.LBB0_53:                               # %scalar.ph.preheader
	alsl.d	$t1, $a7, $a1, 2
	sub.d	$a7, $t0, $a7
	addi.d	$a7, $a7, 1
	.p2align	4, , 16
.LBB0_54:                               # %scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$t0, $t1, 0
	or	$a6, $t0, $a6
	addi.d	$a7, $a7, -1
	addi.d	$t1, $t1, 4
	bnez	$a7, .LBB0_54
.LBB0_55:                               # %._crit_edge243
	or	$a6, $a6, $a5
	st.w	$a6, $a4, 0
	slli.d	$a4, $a5, 1
	pcalau12i	$a5, %got_pc_hi20(D_length)
	ld.d	$a5, $a5, %got_pc_lo12(D_length)
	addi.d	$a4, $a4, 1
	pcalau12i	$a7, %got_pc_hi20(Init1)
	ld.d	$a7, $a7, %got_pc_lo12(Init1)
	ld.w	$a5, $a5, 0
	or	$a3, $a4, $a3
	or	$a3, $a3, $a6
	st.w	$a3, $a7, 0
	sub.d	$a3, $fp, $a5
	pcalau12i	$a5, %got_pc_hi20(D_endpos)
	ld.d	$a5, $a5, %got_pc_lo12(D_endpos)
	addi.d	$a6, $zero, -1
	sll.w	$a3, $a6, $a3
	and	$a3, $a3, $a4
	st.w	$a3, $a5, 0
	xor	$a3, $a3, $a4
	ori	$a4, $zero, 2
	st.w	$a3, $s3, 0
	blt	$a0, $a4, .LBB0_79
# %bb.56:                               # %.preheader204.us.preheader
	pcalau12i	$a3, %got_pc_hi20(REGEX)
	ld.d	$a3, $a3, %got_pc_lo12(REGEX)
	ld.w	$a6, $a3, 0
	move	$a3, $zero
	addi.d	$a4, $sp, 90
	addi.d	$a5, $sp, 89
	sltu	$a6, $zero, $a6
	pcalau12i	$a7, %got_pc_hi20(Mask)
	ld.d	$a7, $a7, %got_pc_lo12(Mask)
	addi.d	$t0, $sp, 48
	ori	$t1, $zero, 1
	ori	$t2, $zero, 238
	ori	$t3, $zero, 256
	b	.LBB0_58
	.p2align	4, , 16
.LBB0_57:                               # %._crit_edge252.us
                                        #   in Loop: Header=BB0_58 Depth=1
	addi.d	$a3, $a3, 1
	beq	$a3, $t3, .LBB0_79
.LBB0_58:                               # %.preheader204.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_72 Depth 2
                                        #       Child Loop BB0_76 Depth 3
                                        #     Child Loop BB0_61 Depth 2
                                        #       Child Loop BB0_63 Depth 3
	addi.d	$t4, $a3, -10
	sltu	$t4, $zero, $t4
	or	$t5, $t4, $a6
	alsl.d	$t4, $a3, $a7, 2
	beqz	$t5, .LBB0_70
# %bb.59:                               # %.preheader202.us.us.preheader
                                        #   in Loop: Header=BB0_58 Depth=1
	ori	$t5, $zero, 1
	move	$t6, $a5
	b	.LBB0_61
	.p2align	4, , 16
.LBB0_60:                               #   in Loop: Header=BB0_61 Depth=2
	addi.d	$t5, $t5, 1
	addi.d	$t6, $t6, 36
	beq	$t5, $a0, .LBB0_57
.LBB0_61:                               # %.preheader202.us.us
                                        #   Parent Loop BB0_58 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_63 Depth 3
	slli.d	$t7, $t5, 5
	alsl.d	$t7, $t5, $t7, 2
	add.d	$t7, $t0, $t7
	move	$t8, $t6
	b	.LBB0_63
	.p2align	4, , 16
.LBB0_62:                               #   in Loop: Header=BB0_63 Depth=3
	addi.d	$t8, $t8, 2
.LBB0_63:                               #   Parent Loop BB0_58 Depth=1
                                        #     Parent Loop BB0_61 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.bu	$s0, $t8, -1
	beqz	$s0, .LBB0_68
# %bb.64:                               #   in Loop: Header=BB0_63 Depth=3
	beq	$s0, $t2, .LBB0_67
# %bb.65:                               #   in Loop: Header=BB0_63 Depth=3
	bltu	$a3, $s0, .LBB0_62
# %bb.66:                               #   in Loop: Header=BB0_63 Depth=3
	ld.bu	$s0, $t8, 0
	bltu	$s0, $a3, .LBB0_62
.LBB0_67:                               # %.loopexit203.split.us.us.us.sink.split
                                        #   in Loop: Header=BB0_61 Depth=2
	ld.w	$t8, $t4, 0
	add.d	$s0, $t5, $a2
	slli.d	$s0, $s0, 2
	ldx.w	$s0, $a1, $s0
	or	$t8, $s0, $t8
	st.w	$t8, $t4, 0
.LBB0_68:                               # %.loopexit203.split.us.us.us
                                        #   in Loop: Header=BB0_61 Depth=2
	ld.w	$t7, $t7, 0
	bne	$t7, $t1, .LBB0_60
# %bb.69:                               #   in Loop: Header=BB0_61 Depth=2
	ld.w	$t7, $t4, 0
	add.d	$t8, $t5, $a2
	slli.d	$t8, $t8, 2
	ldx.w	$t8, $a1, $t8
	xor	$t7, $t8, $t7
	st.w	$t7, $t4, 0
	b	.LBB0_60
	.p2align	4, , 16
.LBB0_70:                               # %.preheader202.us257.preheader
                                        #   in Loop: Header=BB0_58 Depth=1
	ori	$t5, $zero, 1
	move	$t6, $a4
	b	.LBB0_72
	.p2align	4, , 16
.LBB0_71:                               #   in Loop: Header=BB0_72 Depth=2
	addi.d	$t5, $t5, 1
	addi.d	$t6, $t6, 36
	beq	$t5, $a0, .LBB0_57
.LBB0_72:                               # %.preheader202.us257
                                        #   Parent Loop BB0_58 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_76 Depth 3
	slli.d	$t7, $t5, 5
	alsl.d	$t7, $t5, $t7, 2
	add.d	$t7, $t0, $t7
	ld.bu	$s0, $t7, 4
	move	$t8, $t6
	bnez	$s0, .LBB0_76
.LBB0_73:                               # %.loopexit203.split.us
                                        #   in Loop: Header=BB0_72 Depth=2
	ld.w	$t7, $t7, 0
	bne	$t7, $t1, .LBB0_71
.LBB0_74:                               #   in Loop: Header=BB0_72 Depth=2
	ld.w	$t7, $t4, 0
	add.d	$t8, $t5, $a2
	slli.d	$t8, $t8, 2
	ldx.w	$t8, $a1, $t8
	xor	$t7, $t8, $t7
	st.w	$t7, $t4, 0
	b	.LBB0_71
	.p2align	4, , 16
.LBB0_75:                               #   in Loop: Header=BB0_76 Depth=3
	ld.bu	$s0, $t8, 0
	addi.d	$t8, $t8, 2
	beqz	$s0, .LBB0_73
.LBB0_76:                               # %.lr.ph309
                                        #   Parent Loop BB0_58 Depth=1
                                        #     Parent Loop BB0_72 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	bltu	$a3, $s0, .LBB0_75
# %bb.77:                               #   in Loop: Header=BB0_76 Depth=3
	ld.bu	$s0, $t8, -1
	bltu	$s0, $a3, .LBB0_75
# %bb.78:                               # %.split247.us
                                        #   in Loop: Header=BB0_72 Depth=2
	ld.w	$t8, $t4, 0
	add.d	$s0, $t5, $a2
	slli.d	$s0, $s0, 2
	ldx.w	$s0, $a1, $s0
	or	$t8, $s0, $t8
	st.w	$t8, $t4, 0
	ld.w	$t7, $t7, 0
	bne	$t7, $t1, .LBB0_71
	b	.LBB0_74
.LBB0_79:                               # %.split262.us
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	beqz	$a0, .LBB0_84
# %bb.80:                               # %.preheader
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $a0, 0
	pcalau12i	$a1, %got_pc_hi20(Mask)
	ld.d	$s0, $a1, %got_pc_lo12(Mask)
	addi.d	$s1, $a0, 130
	ori	$s2, $zero, 260
	ori	$s3, $zero, 364
	b	.LBB0_82
	.p2align	4, , 16
.LBB0_81:                               #   in Loop: Header=BB0_82 Depth=1
	addi.d	$s2, $s2, 4
	addi.d	$s1, $s1, 2
	beq	$s2, $s3, .LBB0_84
.LBB0_82:                               # =>This Inner Loop Header: Depth=1
	ld.hu	$a0, $s1, 0
	andi	$a0, $a0, 256
	beqz	$a0, .LBB0_81
# %bb.83:                               #   in Loop: Header=BB0_82 Depth=1
	pcaddu18i	$ra, %call36(__ctype_tolower_loc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $a0, 0
	ldx.w	$a0, $a0, $s2
	slli.d	$a0, $a0, 2
	ldx.w	$a0, $s0, $a0
	stx.w	$a0, $s0, $s2
	b	.LBB0_81
.LBB0_84:                               # %.loopexit
	move	$a0, $fp
	ld.d	$s8, $sp, 1560                  # 8-byte Folded Reload
	ld.d	$s7, $sp, 1568                  # 8-byte Folded Reload
	ld.d	$s6, $sp, 1576                  # 8-byte Folded Reload
	ld.d	$s5, $sp, 1584                  # 8-byte Folded Reload
	ld.d	$s4, $sp, 1592                  # 8-byte Folded Reload
	ld.d	$s3, $sp, 1600                  # 8-byte Folded Reload
	ld.d	$s2, $sp, 1608                  # 8-byte Folded Reload
	ld.d	$s1, $sp, 1616                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 1624                  # 8-byte Folded Reload
	ld.d	$fp, $sp, 1632                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 1640                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 1648
	ret
.LBB0_85:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	pcalau12i	$a1, %got_pc_hi20(Progname)
	ld.d	$a2, $a1, %got_pc_lo12(Progname)
	pcalau12i	$a1, %pc_hi20(.L.str.3)
	addi.d	$a1, $a1, %pc_lo12(.L.str.3)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB0_86:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	ori	$a1, $zero, 17
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB0_87:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	pcalau12i	$a1, %got_pc_hi20(Progname)
	ld.d	$a2, $a1, %got_pc_lo12(Progname)
	pcalau12i	$a1, %pc_hi20(.L.str.1)
	addi.d	$a1, $a1, %pc_lo12(.L.str.1)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB0_88:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	pcalau12i	$a1, %got_pc_hi20(Progname)
	ld.d	$a2, $a1, %got_pc_lo12(Progname)
	pcalau12i	$a1, %pc_hi20(.L.str)
	addi.d	$a1, $a1, %pc_lo12(.L.str)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end0:
	.size	maskgen, .Lfunc_end0-maskgen
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI0_0:
	.word	.LBB0_12-.LJTI0_0
	.word	.LBB0_15-.LJTI0_0
	.word	.LBB0_26-.LJTI0_0
	.word	.LBB0_9-.LJTI0_0
	.word	.LBB0_9-.LJTI0_0
	.word	.LBB0_31-.LJTI0_0
	.word	.LBB0_87-.LJTI0_0
	.word	.LBB0_8-.LJTI0_0
	.word	.LBB0_29-.LJTI0_0
	.word	.LBB0_15-.LJTI0_0
	.word	.LBB0_27-.LJTI0_0
	.word	.LBB0_9-.LJTI0_0
	.word	.LBB0_18-.LJTI0_0
	.word	.LBB0_21-.LJTI0_0
	.word	.LBB0_9-.LJTI0_0
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%s: illegal pattern, unmatched '<', '>'\n"
	.size	.L.str, 41

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"%s: illegal pattern, unmatched '[', ']'\n"
	.size	.L.str.1, 41

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"illegal pattern \n"
	.size	.L.str.2, 18

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"%s: pattern too long\n"
	.size	.L.str.3, 22

	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym Progname
