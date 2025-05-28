	.file	"Ppmd8Enc.c"
	.text
	.globl	Ppmd8_RangeEnc_FlushData        # -- Begin function Ppmd8_RangeEnc_FlushData
	.p2align	5
	.type	Ppmd8_RangeEnc_FlushData,@function
Ppmd8_RangeEnc_FlushData:               # @Ppmd8_RangeEnc_FlushData
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.d	$a0, $a0, 120
	ld.d	$a2, $a0, 0
	ld.bu	$a1, $fp, 115
	jirl	$ra, $a2, 0
	ld.d	$a0, $fp, 120
	ld.w	$a1, $fp, 112
	ld.d	$a2, $a0, 0
	slli.d	$a3, $a1, 8
	st.w	$a3, $fp, 112
	bstrpick.d	$a1, $a1, 23, 16
	jirl	$ra, $a2, 0
	ld.d	$a0, $fp, 120
	ld.w	$a1, $fp, 112
	ld.d	$a2, $a0, 0
	slli.d	$a3, $a1, 8
	st.w	$a3, $fp, 112
	bstrpick.d	$a1, $a1, 23, 16
	jirl	$ra, $a2, 0
	ld.d	$a0, $fp, 120
	ld.w	$a1, $fp, 112
	ld.d	$a2, $a0, 0
	slli.d	$a3, $a1, 8
	st.w	$a3, $fp, 112
	bstrpick.d	$a1, $a1, 23, 16
	jirl	$ra, $a2, 0
	ld.w	$a0, $fp, 112
	slli.d	$a0, $a0, 8
	st.w	$a0, $fp, 112
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end0:
	.size	Ppmd8_RangeEnc_FlushData, .Lfunc_end0-Ppmd8_RangeEnc_FlushData
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function Ppmd8_EncodeSymbol
.LCPI1_0:
	.word	0                               # 0x0
	.word	4                               # 0x4
	.word	4                               # 0x4
	.word	4                               # 0x4
.LCPI1_1:
	.byte	1                               # 0x1
	.byte	7                               # 0x7
	.byte	13                              # 0xd
	.byte	19                              # 0x13
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
.LCPI1_2:
	.byte	0                               # 0x0
	.byte	17                              # 0x11
	.byte	18                              # 0x12
	.byte	19                              # 0x13
	.byte	20                              # 0x14
	.byte	21                              # 0x15
	.byte	22                              # 0x16
	.byte	23                              # 0x17
	.byte	6                               # 0x6
	.byte	25                              # 0x19
	.byte	26                              # 0x1a
	.byte	27                              # 0x1b
	.byte	28                              # 0x1c
	.byte	29                              # 0x1d
	.byte	30                              # 0x1e
	.byte	31                              # 0x1f
.LCPI1_3:
	.byte	12                              # 0xc
	.byte	18                              # 0x12
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.byte	255                             # 0xff
	.text
	.globl	Ppmd8_EncodeSymbol
	.p2align	5
	.type	Ppmd8_EncodeSymbol,@function
Ppmd8_EncodeSymbol:                     # @Ppmd8_EncodeSymbol
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
	move	$fp, $a0
	ld.d	$s2, $a0, 0
	ld.bu	$s4, $s2, 0
	move	$s0, $a1
	beqz	$s4, .LBB1_7
# %bb.1:
	ld.d	$a0, $fp, 56
	ld.wu	$a1, $s2, 4
	ldx.bu	$a2, $a0, $a1
	add.d	$s1, $a0, $a1
	bne	$s0, $a2, .LBB1_14
# %bb.2:
	ld.hu	$a0, $s2, 2
	ld.w	$a2, $fp, 104
	ld.bu	$a3, $s1, 1
	ld.w	$a1, $fp, 112
	div.wu	$a0, $a2, $a0
	mul.d	$a0, $a0, $a3
	st.w	$a0, $fp, 104
	b	.LBB1_4
	.p2align	4, , 16
.LBB1_3:                                # %.critedge.i.i
                                        #   in Loop: Header=BB1_4 Depth=1
	ld.d	$a0, $fp, 120
	ld.d	$a2, $a0, 0
	bstrpick.d	$a1, $a1, 31, 24
	jirl	$ra, $a2, 0
	ld.w	$a0, $fp, 104
	ld.w	$a1, $fp, 112
	slli.d	$a0, $a0, 8
	st.w	$a0, $fp, 104
	slli.d	$a1, $a1, 8
	st.w	$a1, $fp, 112
.LBB1_4:                                # =>This Inner Loop Header: Depth=1
	add.d	$a2, $a1, $a0
	xor	$a2, $a2, $a1
	bstrpick.d	$a2, $a2, 31, 24
	beqz	$a2, .LBB1_3
# %bb.5:                                #   in Loop: Header=BB1_4 Depth=1
	bstrpick.d	$a0, $a0, 31, 15
	bnez	$a0, .LBB1_13
# %bb.6:                                #   in Loop: Header=BB1_4 Depth=1
	sub.d	$a0, $zero, $a1
	bstrpick.d	$a0, $a0, 14, 0
	st.w	$a0, $fp, 104
	b	.LBB1_3
.LBB1_7:
	ld.bu	$a0, $s2, 3
	ld.d	$a1, $fp, 56
	ld.wu	$a2, $s2, 8
	add.d	$a0, $a0, $fp
	ld.bu	$a0, $a0, 855
	ldx.bu	$a1, $a1, $a2
	slli.d	$a0, $a0, 7
	add.d	$a1, $fp, $a1
	ld.bu	$a1, $a1, 600
	ld.w	$a2, $fp, 32
	ld.bu	$a3, $s2, 1
	ld.w	$a4, $fp, 40
	add.d	$a0, $fp, $a0
	add.d	$a1, $a2, $a1
	add.d	$a1, $a1, $a3
	srli.d	$a2, $a4, 26
	andi	$a2, $a2, 32
	add.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 31, 0
	alsl.d	$a0, $a1, $a0, 1
	lu12i.w	$a1, 1
	ori	$a1, $a1, 96
	ld.bu	$s1, $s2, 2
	ld.wu	$a3, $fp, 104
	ldx.hu	$a2, $a0, $a1
	addi.d	$s2, $s2, 2
	add.d	$s3, $a0, $a1
	srli.d	$a3, $a3, 14
	mul.d	$a0, $a3, $a2
	bne	$s0, $s1, .LBB1_24
# %bb.8:
	ld.w	$a1, $fp, 112
	st.w	$a0, $fp, 104
	b	.LBB1_10
	.p2align	4, , 16
.LBB1_9:                                # %.critedge.i.i175
                                        #   in Loop: Header=BB1_10 Depth=1
	ld.d	$a0, $fp, 120
	ld.d	$a2, $a0, 0
	bstrpick.d	$a1, $a1, 31, 24
	jirl	$ra, $a2, 0
	ld.w	$a0, $fp, 104
	ld.w	$a1, $fp, 112
	slli.d	$a0, $a0, 8
	st.w	$a0, $fp, 104
	slli.d	$a1, $a1, 8
	st.w	$a1, $fp, 112
.LBB1_10:                               # =>This Inner Loop Header: Depth=1
	add.d	$a2, $a1, $a0
	xor	$a2, $a2, $a1
	bstrpick.d	$a2, $a2, 31, 24
	beqz	$a2, .LBB1_9
# %bb.11:                               #   in Loop: Header=BB1_10 Depth=1
	bstrpick.d	$a0, $a0, 31, 15
	bnez	$a0, .LBB1_29
# %bb.12:                               #   in Loop: Header=BB1_10 Depth=1
	sub.d	$a0, $zero, $a1
	bstrpick.d	$a0, $a0, 14, 0
	st.w	$a0, $fp, 104
	b	.LBB1_9
.LBB1_13:                               # %RangeEnc_Encode.exit
	st.d	$s1, $fp, 16
	move	$a0, $fp
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
	pcaddu18i	$t8, %call36(Ppmd8_Update1_0)
	jr	$t8
.LBB1_14:
	ld.bu	$s3, $s1, 1
	st.w	$zero, $fp, 32
	move	$a0, $s4
	.p2align	4, , 16
.LBB1_15:                               # =>This Inner Loop Header: Depth=1
	ld.bu	$s5, $s1, 6
	ld.bu	$a2, $s1, 7
	addi.d	$s1, $s1, 6
	beq	$s0, $s5, .LBB1_45
# %bb.16:                               #   in Loop: Header=BB1_15 Depth=1
	addi.w	$a0, $a0, -1
	add.d	$s3, $s3, $a2
	bnez	$a0, .LBB1_15
# %bb.17:                               # %.preheader187
	addi.d	$a0, $sp, 40
	ori	$a1, $zero, 255
	ori	$a2, $zero, 256
	addi.d	$s6, $sp, 40
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	stx.b	$zero, $s5, $s6
	addi.w	$a0, $zero, -6
	.p2align	4, , 16
.LBB1_18:                               # =>This Inner Loop Header: Depth=1
	ldx.bu	$a1, $s1, $a0
	stx.b	$zero, $a1, $s6
	addi.w	$s4, $s4, -1
	addi.d	$a0, $a0, -6
	bnez	$s4, .LBB1_18
# %bb.19:
	ld.hu	$a0, $s2, 2
	ld.w	$a1, $fp, 104
	ld.w	$a2, $fp, 112
	sub.w	$a3, $a0, $s3
	div.wu	$a0, $a1, $a0
	mul.d	$a1, $a0, $s3
	add.w	$a1, $a2, $a1
	st.w	$a1, $fp, 112
	mul.d	$a0, $a0, $a3
	st.w	$a0, $fp, 104
	b	.LBB1_21
	.p2align	4, , 16
.LBB1_20:                               # %.critedge.i.i173
                                        #   in Loop: Header=BB1_21 Depth=1
	ld.d	$a0, $fp, 120
	ld.d	$a2, $a0, 0
	bstrpick.d	$a1, $a1, 31, 24
	jirl	$ra, $a2, 0
	ld.w	$a0, $fp, 104
	ld.w	$a1, $fp, 112
	slli.d	$a0, $a0, 8
	st.w	$a0, $fp, 104
	slli.d	$a1, $a1, 8
	st.w	$a1, $fp, 112
.LBB1_21:                               # =>This Inner Loop Header: Depth=1
	add.d	$a2, $a1, $a0
	xor	$a2, $a2, $a1
	bstrpick.d	$a2, $a2, 31, 24
	beqz	$a2, .LBB1_20
# %bb.22:                               #   in Loop: Header=BB1_21 Depth=1
	bstrpick.d	$a0, $a0, 31, 15
	bnez	$a0, .LBB1_31
# %bb.23:                               #   in Loop: Header=BB1_21 Depth=1
	sub.d	$a0, $zero, $a1
	bstrpick.d	$a0, $a0, 14, 0
	st.w	$a0, $fp, 104
	b	.LBB1_20
.LBB1_24:
	ld.w	$a1, $fp, 112
	add.w	$a1, $a0, $a1
	st.w	$a1, $fp, 112
	lu12i.w	$a0, 4
	sub.d	$a0, $a0, $a2
	mul.d	$a0, $a3, $a0
	st.w	$a0, $fp, 104
	b	.LBB1_26
	.p2align	4, , 16
.LBB1_25:                               # %.critedge.i.i176
                                        #   in Loop: Header=BB1_26 Depth=1
	ld.d	$a0, $fp, 120
	ld.d	$a2, $a0, 0
	bstrpick.d	$a1, $a1, 31, 24
	jirl	$ra, $a2, 0
	ld.w	$a0, $fp, 104
	ld.w	$a1, $fp, 112
	slli.d	$a0, $a0, 8
	st.w	$a0, $fp, 104
	slli.d	$a1, $a1, 8
	st.w	$a1, $fp, 112
.LBB1_26:                               # =>This Inner Loop Header: Depth=1
	add.d	$a2, $a1, $a0
	xor	$a2, $a2, $a1
	bstrpick.d	$a2, $a2, 31, 24
	beqz	$a2, .LBB1_25
# %bb.27:                               #   in Loop: Header=BB1_26 Depth=1
	bstrpick.d	$a0, $a0, 31, 15
	bnez	$a0, .LBB1_30
# %bb.28:                               #   in Loop: Header=BB1_26 Depth=1
	sub.d	$a0, $zero, $a1
	bstrpick.d	$a0, $a0, 14, 0
	st.w	$a0, $fp, 104
	b	.LBB1_25
.LBB1_29:                               # %RangeEnc_EncodeBit_0.exit
	ld.hu	$a0, $s3, 0
	addi.d	$a1, $a0, 32
	srli.d	$a1, $a1, 7
	sub.d	$a0, $a0, $a1
	addi.d	$a0, $a0, 128
	st.h	$a0, $s3, 0
	st.d	$s2, $fp, 16
	move	$a0, $fp
	pcaddu18i	$ra, %call36(Ppmd8_UpdateBin)
	jirl	$ra, $ra, 0
	bne	$s0, $s1, .LBB1_31
	b	.LBB1_66
.LBB1_30:                               # %RangeEnc_EncodeBit_1.exit
	ld.hu	$a0, $s3, 0
	addi.d	$a1, $a0, 32
	srli.d	$a1, $a1, 7
	pcalau12i	$a2, %got_pc_hi20(PPMD8_kExpEscape)
	ld.d	$a2, $a2, %got_pc_lo12(PPMD8_kExpEscape)
	sub.d	$a0, $a0, $a1
	st.h	$a0, $s3, 0
	bstrpick.d	$a0, $a0, 15, 10
	ldx.bu	$a0, $a2, $a0
	st.w	$a0, $fp, 28
	addi.d	$a0, $sp, 40
	ori	$a1, $zero, 255
	ori	$a2, $zero, 256
	addi.d	$s3, $sp, 40
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $s2, 0
	stx.b	$zero, $a0, $s3
	st.w	$zero, $fp, 32
	beq	$s0, $s1, .LBB1_66
.LBB1_31:                               # %RangeEnc_Encode.exit174
	addi.w	$s4, $zero, -6
	addi.d	$s5, $sp, 40
.LBB1_32:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_33 Depth 2
                                        #     Child Loop BB1_36 Depth 2
                                        #     Child Loop BB1_41 Depth 2
	ld.d	$a2, $fp, 0
	ld.bu	$a1, $a2, 0
	ld.w	$a0, $fp, 24
	.p2align	4, , 16
.LBB1_33:                               #   Parent Loop BB1_32 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.wu	$a2, $a2, 8
	addi.d	$a0, $a0, 1
	beqz	$a2, .LBB1_44
# %bb.34:                               #   in Loop: Header=BB1_33 Depth=2
	ld.d	$a3, $fp, 56
	ldx.bu	$a4, $a3, $a2
	add.d	$a2, $a3, $a2
	st.d	$a2, $fp, 0
	beq	$a4, $a1, .LBB1_33
# %bb.35:                               #   in Loop: Header=BB1_32 Depth=1
	st.w	$a0, $fp, 24
	addi.d	$a2, $sp, 36
	move	$a0, $fp
	pcaddu18i	$ra, %call36(Ppmd8_MakeEscFreq)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 0
	ld.d	$a2, $fp, 56
	ld.wu	$a3, $a1, 4
	ld.bu	$a1, $a1, 0
	move	$s1, $a0
	move	$s3, $zero
	add.d	$s2, $a2, $a3
	addi.d	$a0, $a1, 1
	nor	$a2, $a1, $zero
	slli.d	$a3, $a1, 2
	alsl.d	$a1, $a1, $a3, 1
	sub.d	$a3, $s4, $a1
	.p2align	4, , 16
.LBB1_36:                               #   Parent Loop BB1_32 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$a1, $s2, 0
	beq	$s0, $a1, .LBB1_51
# %bb.37:                               # %.thread
                                        #   in Loop: Header=BB1_36 Depth=2
	ld.bu	$a4, $s2, 1
	ldx.bu	$a5, $a1, $s5
	and	$a4, $a5, $a4
	add.d	$s3, $s3, $a4
	stx.b	$zero, $a1, $s5
	addi.d	$s2, $s2, 6
	addi.w	$a0, $a0, -1
	addi.d	$a2, $a2, 1
	addi.d	$a3, $a3, 6
	bnez	$a0, .LBB1_36
# %bb.38:                               # %.critedge170
                                        #   in Loop: Header=BB1_32 Depth=1
	ld.w	$a0, $sp, 36
	ld.w	$a1, $fp, 104
	ld.w	$a2, $fp, 112
	add.w	$a3, $a0, $s3
	div.wu	$a3, $a1, $a3
	mul.d	$a1, $a3, $s3
	add.w	$a1, $a2, $a1
	st.w	$a1, $fp, 112
	mul.d	$a0, $a3, $a0
	st.w	$a0, $fp, 104
	b	.LBB1_41
	.p2align	4, , 16
.LBB1_39:                               #   in Loop: Header=BB1_41 Depth=2
	sub.d	$a0, $zero, $a1
	bstrpick.d	$a0, $a0, 14, 0
	st.w	$a0, $fp, 104
.LBB1_40:                               # %.critedge.i.i179
                                        #   in Loop: Header=BB1_41 Depth=2
	ld.d	$a0, $fp, 120
	ld.d	$a2, $a0, 0
	bstrpick.d	$a1, $a1, 31, 24
	jirl	$ra, $a2, 0
	ld.w	$a0, $fp, 104
	ld.w	$a1, $fp, 112
	slli.d	$a0, $a0, 8
	st.w	$a0, $fp, 104
	slli.d	$a1, $a1, 8
	st.w	$a1, $fp, 112
.LBB1_41:                               #   Parent Loop BB1_32 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$a2, $a1, $a0
	xor	$a2, $a2, $a1
	bstrpick.d	$a2, $a2, 31, 24
	beqz	$a2, .LBB1_40
# %bb.42:                               #   in Loop: Header=BB1_41 Depth=2
	bstrpick.d	$a0, $a0, 31, 15
	beqz	$a0, .LBB1_39
# %bb.43:                               # %RangeEnc_Encode.exit180
                                        #   in Loop: Header=BB1_32 Depth=1
	ld.h	$a0, $s1, 0
	ld.w	$a1, $sp, 36
	add.d	$a0, $s3, $a0
	add.d	$a0, $a0, $a1
	st.h	$a0, $s1, 0
	b	.LBB1_32
.LBB1_44:                               # %.loopexit
	st.w	$a0, $fp, 24
	b	.LBB1_66
.LBB1_45:
	ld.hu	$a0, $s2, 2
	ld.w	$a1, $fp, 104
	ld.w	$a3, $fp, 112
	div.wu	$a0, $a1, $a0
	mul.d	$a1, $a0, $s3
	add.w	$a1, $a3, $a1
	st.w	$a1, $fp, 112
	mul.d	$a0, $a0, $a2
	st.w	$a0, $fp, 104
	b	.LBB1_47
	.p2align	4, , 16
.LBB1_46:                               # %.critedge.i.i171
                                        #   in Loop: Header=BB1_47 Depth=1
	ld.d	$a0, $fp, 120
	ld.d	$a2, $a0, 0
	bstrpick.d	$a1, $a1, 31, 24
	jirl	$ra, $a2, 0
	ld.w	$a0, $fp, 104
	ld.w	$a1, $fp, 112
	slli.d	$a0, $a0, 8
	st.w	$a0, $fp, 104
	slli.d	$a1, $a1, 8
	st.w	$a1, $fp, 112
.LBB1_47:                               # =>This Inner Loop Header: Depth=1
	add.d	$a2, $a1, $a0
	xor	$a2, $a2, $a1
	bstrpick.d	$a2, $a2, 31, 24
	beqz	$a2, .LBB1_46
# %bb.48:                               #   in Loop: Header=BB1_47 Depth=1
	bstrpick.d	$a0, $a0, 31, 15
	bnez	$a0, .LBB1_50
# %bb.49:                               #   in Loop: Header=BB1_47 Depth=1
	sub.d	$a0, $zero, $a1
	bstrpick.d	$a0, $a0, 14, 0
	st.w	$a0, $fp, 104
	b	.LBB1_46
.LBB1_50:                               # %RangeEnc_Encode.exit172
	st.d	$s1, $fp, 16
	move	$a0, $fp
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
	pcaddu18i	$t8, %call36(Ppmd8_Update1)
	jr	$t8
.LBB1_51:                               # %.preheader
	sub.d	$a5, $zero, $a2
	ori	$a6, $zero, 9
	move	$a1, $s2
	move	$a4, $s3
	bltu	$a5, $a6, .LBB1_55
# %bb.52:                               # %vector.ph
	andi	$a0, $a5, 7
	sltui	$a1, $a0, 1
	masknez	$a0, $a0, $a1
	ori	$a4, $zero, 8
	maskeqz	$a1, $a4, $a1
	or	$a0, $a1, $a0
	mul.d	$a1, $a0, $s4
	sub.d	$a1, $a1, $a3
	pcalau12i	$a3, %pc_hi20(.LCPI1_0)
	vld	$vr0, $a3, %pc_lo12(.LCPI1_0)
	add.d	$a1, $s2, $a1
	vinsgr2vr.w	$vr1, $s3, 0
	vinsgr2vr.w	$vr2, $zero, 0
	vshuf.w	$vr0, $vr2, $vr1
	add.d	$a2, $a0, $a2
	pcalau12i	$a3, %pc_hi20(.LCPI1_1)
	vld	$vr1, $a3, %pc_lo12(.LCPI1_1)
	pcalau12i	$a3, %pc_hi20(.LCPI1_2)
	vld	$vr2, $a3, %pc_lo12(.LCPI1_2)
	pcalau12i	$a3, %pc_hi20(.LCPI1_3)
	vld	$vr3, $a3, %pc_lo12(.LCPI1_3)
	sub.d	$a2, $zero, $a2
	vrepli.b	$vr4, 0
	addi.d	$a3, $sp, 40
	move	$a4, $s2
	vori.b	$vr5, $vr4, 0
	.p2align	4, , 16
.LBB1_53:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a5, $a4, 16
	ld.d	$a6, $a4, 40
	vld	$vr6, $a4, 0
	vinsgr2vr.d	$vr7, $a5, 0
	vinsgr2vr.d	$vr8, $a6, 0
	vld	$vr9, $a4, 24
	vshuf.b	$vr10, $vr4, $vr6, $vr2
	vshuf.b	$vr11, $vr7, $vr6, $vr3
	vilvl.b	$vr11, $vr4, $vr11
	vilvl.h	$vr11, $vr4, $vr11
	vilvl.w	$vr11, $vr4, $vr11
	vshuf.b	$vr12, $vr4, $vr9, $vr2
	vpickve2gr.d	$a5, $vr10, 0
	vpickve2gr.d	$a6, $vr10, 1
	vshuf.b	$vr10, $vr8, $vr9, $vr3
	vilvl.b	$vr10, $vr4, $vr10
	vilvl.h	$vr10, $vr4, $vr10
	vilvl.w	$vr10, $vr4, $vr10
	vpickve2gr.d	$a7, $vr11, 0
	vpickve2gr.d	$t0, $vr11, 1
	vpickve2gr.d	$t1, $vr12, 0
	vpickve2gr.d	$t2, $vr12, 1
	vpickve2gr.d	$t3, $vr10, 0
	vpickve2gr.d	$t4, $vr10, 1
	ldx.b	$a6, $a6, $a3
	ldx.b	$a5, $a5, $a3
	ldx.b	$t0, $t0, $a3
	ldx.b	$a7, $a7, $a3
	st.b	$a6, $sp, 17
	st.b	$a5, $sp, 16
	st.b	$t0, $sp, 19
	st.b	$a7, $sp, 18
	vld	$vr10, $sp, 16
	ldx.b	$a5, $t2, $a3
	ldx.b	$a6, $t1, $a3
	ldx.b	$a7, $t4, $a3
	ldx.b	$t0, $t3, $a3
	st.b	$a5, $sp, 1
	st.b	$a6, $sp, 0
	st.b	$a7, $sp, 3
	st.b	$t0, $sp, 2
	vld	$vr11, $sp, 0
	vshuf.b	$vr6, $vr7, $vr6, $vr1
	vshuf.b	$vr7, $vr8, $vr9, $vr1
	vand.v	$vr6, $vr10, $vr6
	vand.v	$vr7, $vr11, $vr7
	vilvl.b	$vr6, $vr4, $vr6
	vilvl.h	$vr6, $vr4, $vr6
	vilvl.b	$vr7, $vr4, $vr7
	vilvl.h	$vr7, $vr4, $vr7
	vadd.w	$vr0, $vr0, $vr6
	vadd.w	$vr5, $vr5, $vr7
	addi.d	$a2, $a2, -8
	addi.d	$a4, $a4, 48
	bnez	$a2, .LBB1_53
# %bb.54:                               # %middle.block
	vadd.w	$vr0, $vr5, $vr0
	vshuf4i.w	$vr1, $vr0, 14
	vadd.w	$vr0, $vr0, $vr1
	vreplvei.w	$vr1, $vr0, 1
	vadd.w	$vr0, $vr0, $vr1
	vpickve2gr.w	$a4, $vr0, 0
.LBB1_55:                               # %scalar.ph.preheader
	addi.d	$a1, $a1, 1
	addi.d	$a2, $sp, 40
	.p2align	4, , 16
.LBB1_56:                               # %scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a3, $a1, -1
	ld.bu	$a5, $a1, 0
	ldx.bu	$a3, $a3, $a2
	and	$a3, $a3, $a5
	add.d	$a4, $a4, $a3
	addi.w	$a0, $a0, -1
	addi.d	$a1, $a1, 6
	bnez	$a0, .LBB1_56
# %bb.57:
	ld.w	$a0, $sp, 36
	ld.w	$a1, $fp, 104
	ld.bu	$a2, $s2, 1
	ld.w	$a3, $fp, 112
	add.w	$a0, $a0, $a4
	div.wu	$a0, $a1, $a0
	mul.d	$a1, $a0, $s3
	add.w	$a1, $a3, $a1
	st.w	$a1, $fp, 112
	mul.d	$a0, $a0, $a2
	st.w	$a0, $fp, 104
	b	.LBB1_59
	.p2align	4, , 16
.LBB1_58:                               # %.critedge.i.i177
                                        #   in Loop: Header=BB1_59 Depth=1
	ld.d	$a0, $fp, 120
	ld.d	$a2, $a0, 0
	bstrpick.d	$a1, $a1, 31, 24
	jirl	$ra, $a2, 0
	ld.w	$a0, $fp, 104
	ld.w	$a1, $fp, 112
	slli.d	$a0, $a0, 8
	st.w	$a0, $fp, 104
	slli.d	$a1, $a1, 8
	st.w	$a1, $fp, 112
.LBB1_59:                               # =>This Inner Loop Header: Depth=1
	add.d	$a2, $a1, $a0
	xor	$a2, $a2, $a1
	bstrpick.d	$a2, $a2, 31, 24
	beqz	$a2, .LBB1_58
# %bb.60:                               #   in Loop: Header=BB1_59 Depth=1
	bstrpick.d	$a0, $a0, 31, 15
	bnez	$a0, .LBB1_62
# %bb.61:                               #   in Loop: Header=BB1_59 Depth=1
	sub.d	$a0, $zero, $a1
	bstrpick.d	$a0, $a0, 14, 0
	st.w	$a0, $fp, 104
	b	.LBB1_58
.LBB1_62:                               # %RangeEnc_Encode.exit178
	ld.bu	$a0, $s1, 2
	ori	$a1, $zero, 6
	bltu	$a1, $a0, .LBB1_65
# %bb.63:
	ld.b	$a1, $s1, 3
	addi.d	$a1, $a1, -1
	andi	$a2, $a1, 255
	st.b	$a1, $s1, 3
	bnez	$a2, .LBB1_65
# %bb.64:
	ld.h	$a1, $s1, 0
	slli.d	$a1, $a1, 1
	st.h	$a1, $s1, 0
	addi.d	$a1, $a0, 1
	st.b	$a1, $s1, 2
	ori	$a1, $zero, 3
	sll.w	$a0, $a1, $a0
	st.b	$a0, $s1, 3
.LBB1_65:
	st.d	$s2, $fp, 16
	move	$a0, $fp
	pcaddu18i	$ra, %call36(Ppmd8_Update2)
	jirl	$ra, $ra, 0
.LBB1_66:                               # %.critedge
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
.Lfunc_end1:
	.size	Ppmd8_EncodeSymbol, .Lfunc_end1-Ppmd8_EncodeSymbol
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
