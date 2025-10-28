	.file	"ReedSolomon.c"
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function rsdec_204
.LCPI0_0:
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	4                               # 0x4
	.word	8                               # 0x8
.LCPI0_1:
	.word	16                              # 0x10
	.word	32                              # 0x20
	.word	64                              # 0x40
	.word	128                             # 0x80
.LCPI0_2:
	.byte	0                               # 0x0
	.byte	4                               # 0x4
	.byte	8                               # 0x8
	.byte	12                              # 0xc
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
	.globl	rsdec_204
	.p2align	5
	.type	rsdec_204,@function
rsdec_204:                              # @rsdec_204
# %bb.0:
	addi.d	$sp, $sp, -1680
	st.d	$ra, $sp, 1672                  # 8-byte Folded Spill
	st.d	$fp, $sp, 1664                  # 8-byte Folded Spill
	st.d	$s0, $sp, 1656                  # 8-byte Folded Spill
	st.d	$s1, $sp, 1648                  # 8-byte Folded Spill
	st.d	$s2, $sp, 1640                  # 8-byte Folded Spill
	st.d	$s3, $sp, 1632                  # 8-byte Folded Spill
	st.d	$s4, $sp, 1624                  # 8-byte Folded Spill
	st.d	$s5, $sp, 1616                  # 8-byte Folded Spill
	st.d	$s6, $sp, 1608                  # 8-byte Folded Spill
	st.d	$s7, $sp, 1600                  # 8-byte Folded Spill
	st.d	$s8, $sp, 1592                  # 8-byte Folded Spill
	pcalau12i	$s1, %pc_hi20(inited)
	ld.bu	$a2, $s1, %pc_lo12(inited)
	move	$s0, $a1
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(index_of)
	addi.d	$s3, $a0, %pc_lo12(index_of)
	pcalau12i	$a0, %pc_hi20(alpha_to)
	addi.d	$s2, $a0, %pc_lo12(alpha_to)
	bnez	$a2, .LBB0_6
# %bb.1:
	ori	$a0, $zero, 0
	lu32i.d	$a0, 1
	pcalau12i	$a1, %pc_hi20(.LCPI0_0)
	vld	$vr0, $a1, %pc_lo12(.LCPI0_0)
	st.d	$a0, $s3, 4
	ori	$a0, $zero, 2
	st.w	$a0, $s3, 16
	vst	$vr0, $s2, 0
	ori	$a0, $zero, 3
	st.w	$a0, $s3, 32
	ori	$a0, $zero, 4
	st.w	$a0, $s3, 64
	ori	$a4, $zero, 29
	st.w	$a4, $s2, 32
	ori	$a0, $zero, 5
	pcalau12i	$a1, %pc_hi20(.LCPI0_1)
	vld	$vr0, $a1, %pc_lo12(.LCPI0_1)
	st.w	$a0, $s3, 128
	ori	$a0, $zero, 6
	st.w	$a0, $s3, 256
	vst	$vr0, $s2, 16
	ori	$a0, $zero, 7
	st.w	$a0, $s3, 512
	ori	$a0, $zero, 8
	st.w	$a0, $s3, 116
	ori	$a0, $zero, 36
	ori	$a1, $zero, 9
	ori	$a2, $zero, 128
	ori	$a3, $zero, 1020
	b	.LBB0_3
	.p2align	4, , 16
.LBB0_2:                                #   in Loop: Header=BB0_3 Depth=1
	stx.w	$a5, $s2, $a0
	slli.d	$a4, $a5, 2
	stx.w	$a1, $s3, $a4
	addi.d	$a0, $a0, 4
	addi.d	$a1, $a1, 1
	move	$a4, $a5
	beq	$a0, $a3, .LBB0_5
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	slli.w	$a5, $a4, 1
	blt	$a4, $a2, .LBB0_2
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=1
	ld.w	$a4, $s2, 32
	xor	$a4, $a5, $a4
	xori	$a5, $a4, 256
	b	.LBB0_2
.LBB0_5:                                # %generate_gf.exit
	addi.w	$a0, $zero, -1
	lu32i.d	$a0, 0
	st.w	$a0, $s3, 0
	pcaddu18i	$ra, %call36(gen_poly)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	st.b	$a0, $s1, %pc_lo12(inited)
.LBB0_6:                                # %.preheader32.preheader
	ld.bu	$a0, $s0, 188
	pcalau12i	$a1, %pc_hi20(recd)
	addi.d	$s1, $a1, %pc_lo12(recd)
	ld.bu	$a1, $s0, 189
	ld.bu	$a2, $s0, 190
	ld.bu	$a3, $s0, 191
	st.w	$a0, $s1, 0
	st.w	$a1, $s1, 4
	st.w	$a2, $s1, 8
	st.w	$a3, $s1, 12
	ld.bu	$a0, $s0, 192
	ld.bu	$a1, $s0, 193
	ld.bu	$a2, $s0, 194
	ld.bu	$a3, $s0, 195
	st.w	$a0, $s1, 16
	st.w	$a1, $s1, 20
	st.w	$a2, $s1, 24
	st.w	$a3, $s1, 28
	ld.bu	$a0, $s0, 196
	ld.bu	$a1, $s0, 197
	ld.bu	$a2, $s0, 198
	ld.bu	$a3, $s0, 199
	st.w	$a0, $s1, 32
	st.w	$a1, $s1, 36
	st.w	$a2, $s1, 40
	st.w	$a3, $s1, 44
	ld.bu	$a0, $s0, 200
	ld.bu	$a1, $s0, 201
	ld.bu	$a2, $s0, 202
	ld.bu	$a3, $s0, 203
	st.w	$a0, $s1, 48
	st.w	$a1, $s1, 52
	st.w	$a2, $s1, 56
	st.w	$a3, $s1, 60
	addi.d	$a0, $s1, 64
	ori	$a2, $zero, 204
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s0, 0
	vinsgr2vr.w	$vr1, $a0, 0
	vrepli.b	$vr0, 0
	vilvl.b	$vr1, $vr0, $vr1
	vilvl.h	$vr1, $vr0, $vr1
	vst	$vr1, $s1, 268
	ld.w	$a0, $s0, 4
	vinsgr2vr.w	$vr1, $a0, 0
	vilvl.b	$vr1, $vr0, $vr1
	vilvl.h	$vr1, $vr0, $vr1
	vst	$vr1, $s1, 284
	ld.w	$a0, $s0, 8
	vinsgr2vr.w	$vr1, $a0, 0
	vilvl.b	$vr1, $vr0, $vr1
	vilvl.h	$vr1, $vr0, $vr1
	vst	$vr1, $s1, 300
	ld.w	$a0, $s0, 12
	vinsgr2vr.w	$vr1, $a0, 0
	vilvl.b	$vr1, $vr0, $vr1
	vilvl.h	$vr1, $vr0, $vr1
	vst	$vr1, $s1, 316
	ld.w	$a0, $s0, 16
	vinsgr2vr.w	$vr1, $a0, 0
	vilvl.b	$vr1, $vr0, $vr1
	vilvl.h	$vr1, $vr0, $vr1
	vst	$vr1, $s1, 332
	ld.w	$a0, $s0, 20
	vinsgr2vr.w	$vr1, $a0, 0
	vilvl.b	$vr1, $vr0, $vr1
	vilvl.h	$vr1, $vr0, $vr1
	vst	$vr1, $s1, 348
	ld.w	$a0, $s0, 24
	vinsgr2vr.w	$vr1, $a0, 0
	vilvl.b	$vr1, $vr0, $vr1
	vilvl.h	$vr1, $vr0, $vr1
	vst	$vr1, $s1, 364
	ld.w	$a0, $s0, 28
	vinsgr2vr.w	$vr1, $a0, 0
	vilvl.b	$vr1, $vr0, $vr1
	vilvl.h	$vr1, $vr0, $vr1
	vst	$vr1, $s1, 380
	ld.w	$a0, $s0, 32
	vinsgr2vr.w	$vr1, $a0, 0
	vilvl.b	$vr1, $vr0, $vr1
	vilvl.h	$vr1, $vr0, $vr1
	vst	$vr1, $s1, 396
	ld.w	$a0, $s0, 36
	vinsgr2vr.w	$vr1, $a0, 0
	vilvl.b	$vr1, $vr0, $vr1
	vilvl.h	$vr1, $vr0, $vr1
	vst	$vr1, $s1, 412
	ld.w	$a0, $s0, 40
	vinsgr2vr.w	$vr1, $a0, 0
	vilvl.b	$vr1, $vr0, $vr1
	vilvl.h	$vr1, $vr0, $vr1
	vst	$vr1, $s1, 428
	ld.w	$a0, $s0, 44
	vinsgr2vr.w	$vr1, $a0, 0
	vilvl.b	$vr1, $vr0, $vr1
	vilvl.h	$vr1, $vr0, $vr1
	vst	$vr1, $s1, 444
	ld.w	$a0, $s0, 48
	vinsgr2vr.w	$vr1, $a0, 0
	vilvl.b	$vr1, $vr0, $vr1
	vilvl.h	$vr1, $vr0, $vr1
	vst	$vr1, $s1, 460
	ld.w	$a0, $s0, 52
	vinsgr2vr.w	$vr1, $a0, 0
	vilvl.b	$vr1, $vr0, $vr1
	vilvl.h	$vr1, $vr0, $vr1
	vst	$vr1, $s1, 476
	ld.w	$a0, $s0, 56
	vinsgr2vr.w	$vr1, $a0, 0
	vilvl.b	$vr1, $vr0, $vr1
	vilvl.h	$vr1, $vr0, $vr1
	vst	$vr1, $s1, 492
	ld.w	$a0, $s0, 60
	vinsgr2vr.w	$vr1, $a0, 0
	vilvl.b	$vr1, $vr0, $vr1
	vilvl.h	$vr1, $vr0, $vr1
	vst	$vr1, $s1, 508
	ld.w	$a0, $s0, 64
	vinsgr2vr.w	$vr1, $a0, 0
	vilvl.b	$vr1, $vr0, $vr1
	vilvl.h	$vr1, $vr0, $vr1
	vst	$vr1, $s1, 524
	ld.w	$a0, $s0, 68
	vinsgr2vr.w	$vr1, $a0, 0
	vilvl.b	$vr1, $vr0, $vr1
	vilvl.h	$vr1, $vr0, $vr1
	vst	$vr1, $s1, 540
	ld.w	$a0, $s0, 72
	vinsgr2vr.w	$vr1, $a0, 0
	vilvl.b	$vr1, $vr0, $vr1
	vilvl.h	$vr1, $vr0, $vr1
	vst	$vr1, $s1, 556
	ld.w	$a0, $s0, 76
	vinsgr2vr.w	$vr1, $a0, 0
	vilvl.b	$vr1, $vr0, $vr1
	vilvl.h	$vr1, $vr0, $vr1
	vst	$vr1, $s1, 572
	ld.w	$a0, $s0, 80
	vinsgr2vr.w	$vr1, $a0, 0
	vilvl.b	$vr1, $vr0, $vr1
	vilvl.h	$vr1, $vr0, $vr1
	vst	$vr1, $s1, 588
	ld.w	$a0, $s0, 84
	vinsgr2vr.w	$vr1, $a0, 0
	vilvl.b	$vr1, $vr0, $vr1
	vilvl.h	$vr1, $vr0, $vr1
	vst	$vr1, $s1, 604
	ld.w	$a0, $s0, 88
	vinsgr2vr.w	$vr1, $a0, 0
	vilvl.b	$vr1, $vr0, $vr1
	vilvl.h	$vr1, $vr0, $vr1
	vst	$vr1, $s1, 620
	ld.w	$a0, $s0, 92
	vinsgr2vr.w	$vr1, $a0, 0
	vilvl.b	$vr1, $vr0, $vr1
	vilvl.h	$vr1, $vr0, $vr1
	vst	$vr1, $s1, 636
	ld.w	$a0, $s0, 96
	vinsgr2vr.w	$vr1, $a0, 0
	vilvl.b	$vr1, $vr0, $vr1
	vilvl.h	$vr1, $vr0, $vr1
	vst	$vr1, $s1, 652
	ld.w	$a0, $s0, 100
	vinsgr2vr.w	$vr1, $a0, 0
	vilvl.b	$vr1, $vr0, $vr1
	vilvl.h	$vr1, $vr0, $vr1
	vst	$vr1, $s1, 668
	ld.w	$a0, $s0, 104
	vinsgr2vr.w	$vr1, $a0, 0
	vilvl.b	$vr1, $vr0, $vr1
	vilvl.h	$vr1, $vr0, $vr1
	vst	$vr1, $s1, 684
	ld.w	$a0, $s0, 108
	vinsgr2vr.w	$vr1, $a0, 0
	vilvl.b	$vr1, $vr0, $vr1
	vilvl.h	$vr1, $vr0, $vr1
	vst	$vr1, $s1, 700
	ld.w	$a0, $s0, 112
	vinsgr2vr.w	$vr1, $a0, 0
	vilvl.b	$vr1, $vr0, $vr1
	vilvl.h	$vr1, $vr0, $vr1
	vst	$vr1, $s1, 716
	ld.w	$a0, $s0, 116
	vinsgr2vr.w	$vr1, $a0, 0
	vilvl.b	$vr1, $vr0, $vr1
	vilvl.h	$vr1, $vr0, $vr1
	vst	$vr1, $s1, 732
	ld.w	$a0, $s0, 120
	vinsgr2vr.w	$vr1, $a0, 0
	vilvl.b	$vr1, $vr0, $vr1
	vilvl.h	$vr1, $vr0, $vr1
	vst	$vr1, $s1, 748
	ld.w	$a0, $s0, 124
	vinsgr2vr.w	$vr1, $a0, 0
	vilvl.b	$vr1, $vr0, $vr1
	vilvl.h	$vr1, $vr0, $vr1
	vst	$vr1, $s1, 764
	ld.w	$a0, $s0, 128
	vinsgr2vr.w	$vr1, $a0, 0
	vilvl.b	$vr1, $vr0, $vr1
	vilvl.h	$vr1, $vr0, $vr1
	vst	$vr1, $s1, 780
	ld.w	$a0, $s0, 132
	vinsgr2vr.w	$vr1, $a0, 0
	vilvl.b	$vr1, $vr0, $vr1
	vilvl.h	$vr1, $vr0, $vr1
	vst	$vr1, $s1, 796
	ld.w	$a0, $s0, 136
	vinsgr2vr.w	$vr1, $a0, 0
	vilvl.b	$vr1, $vr0, $vr1
	vilvl.h	$vr1, $vr0, $vr1
	vst	$vr1, $s1, 812
	ld.w	$a0, $s0, 140
	vinsgr2vr.w	$vr1, $a0, 0
	vilvl.b	$vr1, $vr0, $vr1
	vilvl.h	$vr1, $vr0, $vr1
	vst	$vr1, $s1, 828
	ld.w	$a0, $s0, 144
	vinsgr2vr.w	$vr1, $a0, 0
	vilvl.b	$vr1, $vr0, $vr1
	vilvl.h	$vr1, $vr0, $vr1
	vst	$vr1, $s1, 844
	ld.w	$a0, $s0, 148
	vinsgr2vr.w	$vr1, $a0, 0
	vilvl.b	$vr1, $vr0, $vr1
	vilvl.h	$vr1, $vr0, $vr1
	vst	$vr1, $s1, 860
	ld.w	$a0, $s0, 152
	vinsgr2vr.w	$vr1, $a0, 0
	vilvl.b	$vr1, $vr0, $vr1
	vilvl.h	$vr1, $vr0, $vr1
	vst	$vr1, $s1, 876
	ld.w	$a0, $s0, 156
	vinsgr2vr.w	$vr1, $a0, 0
	vilvl.b	$vr1, $vr0, $vr1
	vilvl.h	$vr1, $vr0, $vr1
	vst	$vr1, $s1, 892
	ld.w	$a0, $s0, 160
	vinsgr2vr.w	$vr1, $a0, 0
	vilvl.b	$vr1, $vr0, $vr1
	vilvl.h	$vr1, $vr0, $vr1
	vst	$vr1, $s1, 908
	ld.w	$a0, $s0, 164
	vinsgr2vr.w	$vr1, $a0, 0
	vilvl.b	$vr1, $vr0, $vr1
	vilvl.h	$vr1, $vr0, $vr1
	vst	$vr1, $s1, 924
	ld.w	$a0, $s0, 168
	vinsgr2vr.w	$vr1, $a0, 0
	vilvl.b	$vr1, $vr0, $vr1
	vilvl.h	$vr1, $vr0, $vr1
	vst	$vr1, $s1, 940
	ld.w	$a0, $s0, 172
	vinsgr2vr.w	$vr1, $a0, 0
	vilvl.b	$vr1, $vr0, $vr1
	vilvl.h	$vr1, $vr0, $vr1
	vst	$vr1, $s1, 956
	ld.w	$a0, $s0, 176
	vinsgr2vr.w	$vr1, $a0, 0
	vilvl.b	$vr1, $vr0, $vr1
	vilvl.h	$vr1, $vr0, $vr1
	vst	$vr1, $s1, 972
	ld.w	$a0, $s0, 180
	vinsgr2vr.w	$vr1, $a0, 0
	vilvl.b	$vr1, $vr0, $vr1
	vilvl.h	$vr1, $vr0, $vr1
	vst	$vr1, $s1, 988
	ld.w	$a1, $s0, 184
	move	$a0, $zero
	vinsgr2vr.w	$vr1, $a1, 0
	vilvl.b	$vr1, $vr0, $vr1
	vilvl.h	$vr1, $vr0, $vr1
	vst	$vr1, $s1, 1004
	ori	$a1, $zero, 1016
	.p2align	4, , 16
.LBB0_7:                                # %vector.body122
                                        # =>This Inner Loop Header: Depth=1
	ldx.w	$a2, $s1, $a0
	add.d	$a3, $s1, $a0
	ld.w	$a4, $a3, 4
	slli.d	$a2, $a2, 2
	ldx.w	$a2, $s3, $a2
	slli.d	$a4, $a4, 2
	ldx.w	$a4, $s3, $a4
	stx.w	$a2, $s1, $a0
	addi.d	$a0, $a0, 8
	st.w	$a4, $a3, 4
	bne	$a0, $a1, .LBB0_7
# %bb.8:                                # %.preheader
	ld.w	$a0, $s1, 1016
	slli.d	$a0, $a0, 2
	ldx.w	$a0, $s3, $a0
	move	$a1, $zero
	st.w	$a0, $s1, 1016
	ori	$a2, $zero, 1
	addi.d	$a3, $sp, 156
	addi.w	$a0, $zero, -1
	ori	$a4, $zero, 1020
	ori	$a5, $zero, 17
	lu12i.w	$a6, -522232
	ori	$s4, $a6, 129
	ori	$a6, $zero, 1
	ori	$a7, $zero, 1
	b	.LBB0_10
	.p2align	4, , 16
.LBB0_9:                                #   in Loop: Header=BB0_10 Depth=1
	sltui	$t2, $t1, 1
	slli.d	$t1, $t1, 2
	ldx.w	$t1, $s3, $t1
	masknez	$t3, $a2, $t2
	maskeqz	$a1, $a1, $t2
	or	$a1, $a1, $t3
	st.w	$t1, $t0, 0
	addi.d	$a7, $a7, 1
	addi.d	$a6, $a6, 1
	beq	$a7, $a5, .LBB0_14
.LBB0_10:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_12 Depth 2
	move	$t2, $zero
	move	$t3, $zero
	move	$t1, $zero
	alsl.d	$t0, $a7, $a3, 2
	b	.LBB0_12
	.p2align	4, , 16
.LBB0_11:                               #   in Loop: Header=BB0_12 Depth=2
	addi.d	$t3, $t3, 4
	add.d	$t2, $t2, $a6
	beq	$t3, $a4, .LBB0_9
.LBB0_12:                               #   Parent Loop BB0_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.w	$t4, $s1, $t3
	beq	$t4, $a0, .LBB0_11
# %bb.13:                               #   in Loop: Header=BB0_12 Depth=2
	add.w	$t4, $t2, $t4
	mul.d	$t5, $t4, $s4
	srli.d	$t5, $t5, 32
	add.w	$t5, $t5, $t4
	bstrpick.d	$t6, $t5, 31, 31
	srai.d	$t5, $t5, 7
	add.d	$t5, $t5, $t6
	slli.d	$t6, $t5, 8
	sub.d	$t5, $t5, $t6
	add.w	$t4, $t4, $t5
	slli.d	$t4, $t4, 2
	ldx.w	$t4, $s2, $t4
	xor	$t1, $t4, $t1
	st.w	$t1, $t0, 0
	b	.LBB0_11
.LBB0_14:
	beqz	$a1, .LBB0_49
# %bb.15:
	ld.w	$s6, $sp, 160
	move	$s0, $zero
	st.w	$zero, $sp, 368
	addi.d	$a1, $sp, 160
	st.w	$s6, $sp, 372
	st.w	$zero, $sp, 440
	addi.d	$a2, $sp, 504
	st.d	$a0, $sp, 444
	st.d	$a0, $sp, 452
	st.d	$a0, $sp, 460
	st.d	$a0, $sp, 468
	st.d	$a0, $sp, 476
	st.d	$a0, $sp, 484
	st.d	$a0, $sp, 492
	move	$a3, $a0
	lu32i.d	$a3, 1
	st.d	$a3, $sp, 500
	st.d	$zero, $sp, 508
	vst	$vr0, $sp, 516
	vst	$vr0, $sp, 532
	vst	$vr0, $sp, 548
	st.w	$zero, $sp, 564
	st.d	$zero, $sp, 296
	move	$a3, $a0
	lu32i.d	$a3, 0
	st.d	$a3, $sp, 224
	addi.d	$a3, $sp, 568
	addi.d	$a4, $sp, 572
	ori	$a5, $zero, 1
	addi.d	$a6, $sp, 368
	addi.d	$fp, $sp, 296
	addi.d	$t1, $sp, 224
	move	$a7, $a0
	addi.d	$t6, $sp, 368
	ori	$t7, $zero, 1
	b	.LBB0_17
	.p2align	4, , 16
.LBB0_16:                               # %._crit_edge.i
                                        #   in Loop: Header=BB0_17 Depth=1
	slli.d	$t0, $t3, 2
	ldx.w	$s6, $s3, $t0
	st.w	$s6, $s7, 0
	addi.d	$t7, $t7, 1
	addi.d	$t6, $t6, 4
	addi.w	$a7, $a7, 1
	addi.d	$a3, $a3, 64
	addi.d	$a2, $a2, 64
	addi.d	$a4, $a4, 64
	addi.d	$a1, $a1, 4
	move	$s0, $t5
	ori	$t0, $zero, 9
	bge	$s5, $t0, .LBB0_81
.LBB0_17:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_19 Depth 2
                                        #     Child Loop BB0_24 Depth 2
                                        #     Child Loop BB0_34 Depth 2
                                        #     Child Loop BB0_38 Depth 2
                                        #     Child Loop BB0_28 Depth 2
                                        #     Child Loop BB0_46 Depth 2
	addi.d	$t5, $s0, 1
	slli.d	$s5, $t5, 2
	alsl.d	$ra, $s0, $fp, 2
	beq	$s6, $a0, .LBB0_26
# %bb.18:                               #   in Loop: Header=BB0_17 Depth=1
	slli.d	$t2, $s0, 6
	addi.d	$t0, $sp, 440
	add.d	$t2, $t0, $t2
	addi.d	$s7, $t2, 128
	move	$t5, $a7
	move	$t4, $t6
	move	$s8, $t7
	move	$t2, $s0
	.p2align	4, , 16
.LBB0_19:                               # %.preheader328.i
                                        #   Parent Loop BB0_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$fp, $t2
	move	$t3, $t5
	addi.w	$s8, $s8, -1
	blez	$t2, .LBB0_21
# %bb.20:                               # %.preheader328.i
                                        #   in Loop: Header=BB0_19 Depth=2
	ld.w	$t0, $t4, 0
	addi.d	$t2, $fp, -1
	addi.d	$t4, $t4, -4
	addi.w	$t8, $zero, -1
	addi.w	$t5, $t3, -1
	beq	$t0, $t8, .LBB0_19
.LBB0_21:                               #   in Loop: Header=BB0_17 Depth=1
	blez	$fp, .LBB0_30
# %bb.22:                               # %.preheader326.preheader.i
                                        #   in Loop: Header=BB0_17 Depth=1
	bstrpick.d	$t0, $fp, 31, 0
	addi.d	$t2, $t0, 1
	addi.d	$fp, $sp, 296
	b	.LBB0_24
	.p2align	4, , 16
.LBB0_23:                               #   in Loop: Header=BB0_24 Depth=2
	addi.d	$t2, $t2, -1
	addi.w	$t3, $t3, -1
	bgeu	$a5, $t2, .LBB0_31
.LBB0_24:                               # %.preheader326.i
                                        #   Parent Loop BB0_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	slli.d	$t4, $t3, 2
	ldx.w	$t0, $t4, $a6
	addi.w	$t5, $zero, -1
	beq	$t0, $t5, .LBB0_23
# %bb.25:                               #   in Loop: Header=BB0_24 Depth=2
	slli.d	$t0, $s8, 2
	ldx.w	$t0, $t0, $t1
	ldx.w	$t4, $t4, $t1
	slt	$t0, $t0, $t4
	masknez	$t4, $s8, $t0
	maskeqz	$t0, $t3, $t0
	or	$s8, $t0, $t4
	b	.LBB0_23
	.p2align	4, , 16
.LBB0_26:                               #   in Loop: Header=BB0_17 Depth=1
	ldx.w	$s5, $s5, $fp
	st.w	$s5, $ra, 8
	bltz	$s5, .LBB0_40
# %bb.27:                               # %.lr.ph343.i
                                        #   in Loop: Header=BB0_17 Depth=1
	move	$t0, $t5
	addi.d	$t2, $s5, 1
	bstrpick.d	$t2, $t2, 31, 0
	move	$t3, $a2
	.p2align	4, , 16
.LBB0_28:                               #   Parent Loop BB0_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t4, $t3, 0
	slli.d	$t5, $t4, 2
	ldx.w	$t5, $s3, $t5
	st.w	$t4, $t3, 64
	st.w	$t5, $t3, 0
	addi.d	$t2, $t2, -1
	addi.d	$t3, $t3, 4
	bnez	$t2, .LBB0_28
# %bb.29:                               #   in Loop: Header=BB0_17 Depth=1
	move	$t5, $t0
	b	.LBB0_40
	.p2align	4, , 16
.LBB0_30:                               #   in Loop: Header=BB0_17 Depth=1
	move	$s8, $zero
	addi.d	$fp, $sp, 296
.LBB0_31:                               # %.loopexit327.i
                                        #   in Loop: Header=BB0_17 Depth=1
	slli.d	$t0, $s8, 2
	ldx.w	$t2, $t0, $fp
	ldx.w	$t3, $s5, $fp
	addi.d	$t4, $s0, 1
	sub.d	$t4, $t4, $s8
	add.w	$t2, $t2, $t4
	slt	$t4, $t2, $t3
	masknez	$t2, $t2, $t4
	maskeqz	$t4, $t3, $t4
	or	$s5, $t4, $t2
	st.w	$s5, $ra, 8
	ldx.w	$t2, $t0, $fp
	vst	$vr0, $s7, 0
	vst	$vr0, $s7, 16
	vst	$vr0, $s7, 32
	vst	$vr0, $s7, 48
	bltz	$t2, .LBB0_36
# %bb.32:                               # %.lr.ph.i
                                        #   in Loop: Header=BB0_17 Depth=1
	slli.d	$t0, $s8, 6
	addi.d	$t4, $sp, 440
	add.d	$ra, $t4, $t0
	addi.d	$s6, $s6, 255
	alsl.d	$t4, $s8, $a6, 2
	addi.d	$t0, $t2, 1
	bstrpick.d	$t2, $t0, 31, 0
	sub.w	$s8, $t7, $s8
	b	.LBB0_34
	.p2align	4, , 16
.LBB0_33:                               #   in Loop: Header=BB0_34 Depth=2
	addi.d	$t2, $t2, -1
	addi.w	$s8, $s8, 1
	addi.d	$ra, $ra, 4
	beqz	$t2, .LBB0_36
.LBB0_34:                               #   Parent Loop BB0_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t5, $ra, 0
	addi.w	$t0, $zero, -1
	beq	$t5, $t0, .LBB0_33
# %bb.35:                               #   in Loop: Header=BB0_34 Depth=2
	ld.w	$t0, $t4, 0
	add.d	$t5, $s6, $t5
	sub.w	$t0, $t5, $t0
	mul.d	$t5, $t0, $s4
	srli.d	$t5, $t5, 32
	add.w	$t5, $t5, $t0
	bstrpick.d	$t8, $t5, 31, 31
	srai.d	$t5, $t5, 7
	add.d	$t5, $t5, $t8
	slli.d	$t8, $t5, 8
	sub.d	$t5, $t5, $t8
	add.w	$t0, $t0, $t5
	slli.d	$t0, $t0, 2
	ldx.w	$t0, $s2, $t0
	slli.d	$t5, $s8, 2
	stx.w	$t0, $s7, $t5
	b	.LBB0_33
	.p2align	4, , 16
.LBB0_36:                               # %.preheader323.i
                                        #   in Loop: Header=BB0_17 Depth=1
	bltz	$t3, .LBB0_39
# %bb.37:                               # %.lr.ph340.i
                                        #   in Loop: Header=BB0_17 Depth=1
	addi.d	$t0, $t3, 1
	bstrpick.d	$t2, $t0, 31, 0
	move	$t3, $a3
	.p2align	4, , 16
.LBB0_38:                               #   Parent Loop BB0_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t0, $t3, -64
	ld.w	$t4, $t3, 0
	slli.d	$t5, $t0, 2
	ldx.w	$t5, $s3, $t5
	xor	$t0, $t4, $t0
	st.w	$t0, $t3, 0
	st.w	$t5, $t3, -64
	addi.d	$t2, $t2, -1
	addi.d	$t3, $t3, 4
	bnez	$t2, .LBB0_38
.LBB0_39:                               #   in Loop: Header=BB0_17 Depth=1
	addi.d	$t5, $s0, 1
.LBB0_40:                               # %.loopexit322.i
                                        #   in Loop: Header=BB0_17 Depth=1
	addi.d	$t2, $s0, 2
	sub.d	$t0, $t5, $s5
	slli.d	$t3, $t2, 2
	stx.w	$t0, $t3, $t1
	ori	$t0, $zero, 15
	beq	$s0, $t0, .LBB0_53
# %bb.41:                               #   in Loop: Header=BB0_17 Depth=1
	addi.d	$t0, $sp, 156
	ldx.w	$t3, $t3, $t0
	addi.w	$s0, $zero, -1
	beq	$t3, $s0, .LBB0_43
# %bb.42:                               #   in Loop: Header=BB0_17 Depth=1
	slli.d	$t0, $t3, 2
	ldx.w	$t3, $s2, $t0
	alsl.d	$s7, $t2, $a6, 2
	bgtz	$s5, .LBB0_44
	b	.LBB0_16
	.p2align	4, , 16
.LBB0_43:                               #   in Loop: Header=BB0_17 Depth=1
	move	$t3, $zero
	alsl.d	$s7, $t2, $a6, 2
	blez	$s5, .LBB0_16
.LBB0_44:                               # %.lr.ph346.i
                                        #   in Loop: Header=BB0_17 Depth=1
	addi.d	$t0, $s5, 1
	bstrpick.d	$t0, $t0, 31, 0
	addi.d	$s6, $t0, -1
	move	$s8, $a1
	move	$ra, $a4
	b	.LBB0_46
	.p2align	4, , 16
.LBB0_45:                               #   in Loop: Header=BB0_46 Depth=2
	addi.d	$s6, $s6, -1
	addi.d	$ra, $ra, 4
	addi.d	$s8, $s8, -4
	beqz	$s6, .LBB0_16
.LBB0_46:                               #   Parent Loop BB0_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t2, $s8, 0
	beq	$t2, $s0, .LBB0_45
# %bb.47:                               #   in Loop: Header=BB0_46 Depth=2
	ld.w	$t4, $ra, 0
	beqz	$t4, .LBB0_45
# %bb.48:                               #   in Loop: Header=BB0_46 Depth=2
	slli.d	$t0, $t4, 2
	ldx.w	$t0, $s3, $t0
	add.w	$t0, $t0, $t2
	mul.d	$t2, $t0, $s4
	srli.d	$t2, $t2, 32
	add.w	$t2, $t2, $t0
	bstrpick.d	$t4, $t2, 31, 31
	srai.d	$t2, $t2, 7
	add.d	$t2, $t2, $t4
	slli.d	$t4, $t2, 8
	sub.d	$t2, $t2, $t4
	add.w	$t0, $t0, $t2
	slli.d	$t0, $t0, 2
	ldx.w	$t0, $s2, $t0
	xor	$t3, $t0, $t3
	st.w	$t3, $s7, 0
	b	.LBB0_45
.LBB0_49:                               # %.preheader.i.preheader
	move	$a0, $zero
	addi.w	$a1, $zero, -1
	ori	$a2, $zero, 1020
	b	.LBB0_51
	.p2align	4, , 16
.LBB0_50:                               #   in Loop: Header=BB0_51 Depth=1
	slli.d	$a3, $a3, 2
	ldx.w	$a3, $s2, $a3
	stx.w	$a3, $s1, $a0
	addi.d	$a0, $a0, 4
	beq	$a0, $a2, .LBB0_85
.LBB0_51:                               # %.preheader.i
                                        # =>This Inner Loop Header: Depth=1
	ldx.w	$a3, $s1, $a0
	bne	$a3, $a1, .LBB0_50
# %bb.52:                               #   in Loop: Header=BB0_51 Depth=1
	move	$a3, $zero
	stx.w	$a3, $s1, $a0
	addi.d	$a0, $a0, 4
	bne	$a0, $a2, .LBB0_51
	b	.LBB0_85
.LBB0_53:                               # %.critedge.i
	ori	$a0, $zero, 9
	bge	$s5, $a0, .LBB0_81
# %bb.54:                               # %.preheader319.i
	addi.w	$s6, $s5, 1
	bltz	$s5, .LBB0_87
# %bb.55:                               # %.lr.ph350.i
	addi.d	$a0, $sp, 1528
	move	$a1, $s6
	.p2align	4, , 16
.LBB0_56:                               # =>This Inner Loop Header: Depth=1
	ld.w	$a2, $a0, 0
	slli.d	$a2, $a2, 2
	ldx.w	$a2, $s3, $a2
	st.w	$a2, $a0, 0
	addi.d	$a1, $a1, -1
	addi.d	$a0, $a0, 4
	bnez	$a1, .LBB0_56
# %bb.57:                               # %.preheader318.i
	beqz	$s5, .LBB0_86
# %bb.58:                               # %.preheader316.i.preheader
	addi.d	$s0, $sp, 24
	addi.d	$a1, $sp, 1532
	slli.d	$a2, $s5, 2
	move	$a0, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	move	$a1, $zero
	addi.d	$a2, $s6, -1
	ori	$a3, $zero, 1
	addi.w	$a0, $zero, -1
	addi.d	$a4, $sp, 124
	ori	$a5, $zero, 255
	addi.d	$a6, $sp, 92
	ori	$a7, $zero, 256
	b	.LBB0_61
	.p2align	4, , 16
.LBB0_59:                               # %._crit_edge358.i
                                        #   in Loop: Header=BB0_61 Depth=1
	beqz	$t2, .LBB0_65
# %bb.60:                               # %._crit_edge358.thread.i
                                        #   in Loop: Header=BB0_61 Depth=1
	addi.w	$a3, $a3, 1
	beq	$a3, $a7, .LBB0_66
.LBB0_61:                               # %.preheader316.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_63 Depth 2
	move	$t0, $s0
	ori	$t1, $zero, 1
	move	$t3, $a2
	ori	$t2, $zero, 1
	b	.LBB0_63
	.p2align	4, , 16
.LBB0_62:                               #   in Loop: Header=BB0_63 Depth=2
	addi.d	$t3, $t3, -1
	addi.d	$t1, $t1, 1
	addi.d	$t0, $t0, 4
	beqz	$t3, .LBB0_59
.LBB0_63:                               # %.lr.ph357.i
                                        #   Parent Loop BB0_61 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t4, $t0, 0
	beq	$t4, $a0, .LBB0_62
# %bb.64:                               #   in Loop: Header=BB0_63 Depth=2
	add.w	$t4, $t1, $t4
	mul.d	$t5, $t4, $s4
	srli.d	$t5, $t5, 32
	add.w	$t5, $t5, $t4
	bstrpick.d	$t6, $t5, 31, 31
	srai.d	$t5, $t5, 7
	add.d	$t5, $t5, $t6
	slli.d	$t6, $t5, 8
	sub.d	$t5, $t5, $t6
	add.w	$t4, $t4, $t5
	slli.d	$t5, $t4, 2
	ldx.w	$t5, $s2, $t5
	st.w	$t4, $t0, 0
	xor	$t2, $t5, $t2
	b	.LBB0_62
	.p2align	4, , 16
.LBB0_65:                               #   in Loop: Header=BB0_61 Depth=1
	slli.d	$t0, $a1, 2
	stx.w	$a3, $t0, $a4
	sub.d	$t1, $a5, $a3
	stx.w	$t1, $t0, $a6
	addi.w	$a1, $a1, 1
	addi.w	$a3, $a3, 1
	bne	$a3, $a7, .LBB0_61
.LBB0_66:                               # %.split.us.thread
	bne	$a1, $s5, .LBB0_88
# %bb.67:                               # %.lr.ph368.i
	move	$a1, $zero
	addi.d	$a2, $sp, 1528
	ori	$a3, $zero, 1
	addi.d	$a4, $sp, 160
	addi.d	$a5, $sp, 156
	ori	$a6, $zero, 2
	addi.d	$a7, $sp, 56
	b	.LBB0_69
	.p2align	4, , 16
.LBB0_68:                               # %._crit_edge365.i
                                        #   in Loop: Header=BB0_69 Depth=1
	slli.d	$t1, $t1, 2
	ldx.w	$t1, $s3, $t1
	stx.w	$t1, $t0, $a7
	addi.d	$a3, $a3, 1
	addi.d	$a1, $a1, 4
	beq	$a3, $s6, .LBB0_92
.LBB0_69:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_77 Depth 2
	slli.d	$t0, $a3, 2
	ldx.w	$t1, $t0, $a5
	ldx.w	$t2, $a2, $t0
	beq	$t1, $a0, .LBB0_72
# %bb.70:                               #   in Loop: Header=BB0_69 Depth=1
	slli.d	$t1, $t1, 2
	ldx.w	$t1, $s2, $t1
	beq	$t2, $a0, .LBB0_74
# %bb.71:                               #   in Loop: Header=BB0_69 Depth=1
	slli.d	$t2, $t2, 2
	ldx.w	$t2, $s2, $t2
	xor	$t1, $t2, $t1
	bltu	$a3, $a6, .LBB0_68
	b	.LBB0_75
	.p2align	4, , 16
.LBB0_72:                               #   in Loop: Header=BB0_69 Depth=1
	beq	$t2, $a0, .LBB0_80
# %bb.73:                               #   in Loop: Header=BB0_69 Depth=1
	slli.d	$t1, $t2, 2
	ldx.w	$t1, $s2, $t1
.LBB0_74:                               #   in Loop: Header=BB0_69 Depth=1
	bltu	$a3, $a6, .LBB0_68
.LBB0_75:                               # %.lr.ph364.i
                                        #   in Loop: Header=BB0_69 Depth=1
	alsl.d	$t2, $a3, $a7, 2
	move	$t3, $a4
	move	$t4, $a1
	b	.LBB0_77
	.p2align	4, , 16
.LBB0_76:                               #   in Loop: Header=BB0_77 Depth=2
	addi.d	$t4, $t4, -4
	addi.d	$t3, $t3, 4
	beqz	$t4, .LBB0_68
.LBB0_77:                               #   Parent Loop BB0_69 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t5, $t3, 0
	beq	$t5, $a0, .LBB0_76
# %bb.78:                               #   in Loop: Header=BB0_77 Depth=2
	ldx.w	$t6, $a2, $t4
	beq	$t6, $a0, .LBB0_76
# %bb.79:                               #   in Loop: Header=BB0_77 Depth=2
	add.w	$t5, $t6, $t5
	mul.d	$t6, $t5, $s4
	srli.d	$t6, $t6, 32
	add.w	$t6, $t6, $t5
	bstrpick.d	$t7, $t6, 31, 31
	srai.d	$t6, $t6, 7
	add.d	$t6, $t6, $t7
	slli.d	$t7, $t6, 8
	sub.d	$t6, $t6, $t7
	add.w	$t5, $t5, $t6
	slli.d	$t5, $t5, 2
	ldx.w	$t5, $s2, $t5
	xor	$t1, $t5, $t1
	st.w	$t1, $t2, 0
	b	.LBB0_76
.LBB0_80:                               #   in Loop: Header=BB0_69 Depth=1
	move	$t1, $zero
	bltu	$a3, $a6, .LBB0_68
	b	.LBB0_75
.LBB0_81:                               # %.preheader320.i.preheader
	move	$a0, $zero
	addi.w	$a1, $zero, -1
	ori	$a2, $zero, 1020
	b	.LBB0_83
	.p2align	4, , 16
.LBB0_82:                               #   in Loop: Header=BB0_83 Depth=1
	slli.d	$a3, $a3, 2
	ldx.w	$a3, $s2, $a3
	stx.w	$a3, $s1, $a0
	addi.d	$a0, $a0, 4
	beq	$a0, $a2, .LBB0_85
.LBB0_83:                               # %.preheader320.i
                                        # =>This Inner Loop Header: Depth=1
	ldx.w	$a3, $s1, $a0
	bne	$a3, $a1, .LBB0_82
# %bb.84:                               #   in Loop: Header=BB0_83 Depth=1
	move	$a3, $zero
	stx.w	$a3, $s1, $a0
	addi.d	$a0, $a0, 4
	bne	$a0, $a2, .LBB0_83
.LBB0_85:                               # %decode_rs.exit
	vld	$vr1, $s1, 268
	pcalau12i	$a0, %pc_hi20(.LCPI0_2)
	vld	$vr0, $a0, %pc_lo12(.LCPI0_2)
	vshuf.b	$vr1, $vr0, $vr1, $vr0
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	vstelm.w	$vr1, $a0, 0, 0
	vld	$vr1, $s1, 284
	vshuf.b	$vr1, $vr0, $vr1, $vr0
	vstelm.w	$vr1, $a0, 4, 0
	vld	$vr1, $s1, 300
	vshuf.b	$vr1, $vr0, $vr1, $vr0
	vstelm.w	$vr1, $a0, 8, 0
	vld	$vr1, $s1, 316
	vshuf.b	$vr1, $vr0, $vr1, $vr0
	vstelm.w	$vr1, $a0, 12, 0
	vld	$vr1, $s1, 332
	vshuf.b	$vr1, $vr0, $vr1, $vr0
	vstelm.w	$vr1, $a0, 16, 0
	vld	$vr1, $s1, 348
	vshuf.b	$vr1, $vr0, $vr1, $vr0
	vstelm.w	$vr1, $a0, 20, 0
	vld	$vr1, $s1, 364
	vshuf.b	$vr1, $vr0, $vr1, $vr0
	vstelm.w	$vr1, $a0, 24, 0
	vld	$vr1, $s1, 380
	vshuf.b	$vr1, $vr0, $vr1, $vr0
	vstelm.w	$vr1, $a0, 28, 0
	vld	$vr1, $s1, 396
	vshuf.b	$vr1, $vr0, $vr1, $vr0
	vstelm.w	$vr1, $a0, 32, 0
	vld	$vr1, $s1, 412
	vshuf.b	$vr1, $vr0, $vr1, $vr0
	vstelm.w	$vr1, $a0, 36, 0
	vld	$vr1, $s1, 428
	vshuf.b	$vr1, $vr0, $vr1, $vr0
	vstelm.w	$vr1, $a0, 40, 0
	vld	$vr1, $s1, 444
	vshuf.b	$vr1, $vr0, $vr1, $vr0
	vstelm.w	$vr1, $a0, 44, 0
	vld	$vr1, $s1, 460
	vshuf.b	$vr1, $vr0, $vr1, $vr0
	vstelm.w	$vr1, $a0, 48, 0
	vld	$vr1, $s1, 476
	vshuf.b	$vr1, $vr0, $vr1, $vr0
	vstelm.w	$vr1, $a0, 52, 0
	vld	$vr1, $s1, 492
	vshuf.b	$vr1, $vr0, $vr1, $vr0
	vstelm.w	$vr1, $a0, 56, 0
	vld	$vr1, $s1, 508
	vshuf.b	$vr1, $vr0, $vr1, $vr0
	vstelm.w	$vr1, $a0, 60, 0
	vld	$vr1, $s1, 524
	vshuf.b	$vr1, $vr0, $vr1, $vr0
	vstelm.w	$vr1, $a0, 64, 0
	vld	$vr1, $s1, 540
	vshuf.b	$vr1, $vr0, $vr1, $vr0
	vstelm.w	$vr1, $a0, 68, 0
	vld	$vr1, $s1, 556
	vshuf.b	$vr1, $vr0, $vr1, $vr0
	vstelm.w	$vr1, $a0, 72, 0
	vld	$vr1, $s1, 572
	vshuf.b	$vr1, $vr0, $vr1, $vr0
	vstelm.w	$vr1, $a0, 76, 0
	vld	$vr1, $s1, 588
	vshuf.b	$vr1, $vr0, $vr1, $vr0
	vstelm.w	$vr1, $a0, 80, 0
	vld	$vr1, $s1, 604
	vshuf.b	$vr1, $vr0, $vr1, $vr0
	vstelm.w	$vr1, $a0, 84, 0
	vld	$vr1, $s1, 620
	vshuf.b	$vr1, $vr0, $vr1, $vr0
	vstelm.w	$vr1, $a0, 88, 0
	vld	$vr1, $s1, 636
	vshuf.b	$vr1, $vr0, $vr1, $vr0
	vstelm.w	$vr1, $a0, 92, 0
	vld	$vr1, $s1, 652
	vshuf.b	$vr1, $vr0, $vr1, $vr0
	vstelm.w	$vr1, $a0, 96, 0
	vld	$vr1, $s1, 668
	vshuf.b	$vr1, $vr0, $vr1, $vr0
	vstelm.w	$vr1, $a0, 100, 0
	vld	$vr1, $s1, 684
	vshuf.b	$vr1, $vr0, $vr1, $vr0
	vstelm.w	$vr1, $a0, 104, 0
	vld	$vr1, $s1, 700
	vshuf.b	$vr1, $vr0, $vr1, $vr0
	vstelm.w	$vr1, $a0, 108, 0
	vld	$vr1, $s1, 716
	vshuf.b	$vr1, $vr0, $vr1, $vr0
	vstelm.w	$vr1, $a0, 112, 0
	vld	$vr1, $s1, 732
	vshuf.b	$vr1, $vr0, $vr1, $vr0
	vstelm.w	$vr1, $a0, 116, 0
	vld	$vr1, $s1, 748
	vshuf.b	$vr1, $vr0, $vr1, $vr0
	vstelm.w	$vr1, $a0, 120, 0
	vld	$vr1, $s1, 764
	vshuf.b	$vr1, $vr0, $vr1, $vr0
	vstelm.w	$vr1, $a0, 124, 0
	vld	$vr1, $s1, 780
	vshuf.b	$vr1, $vr0, $vr1, $vr0
	vstelm.w	$vr1, $a0, 128, 0
	vld	$vr1, $s1, 796
	vshuf.b	$vr1, $vr0, $vr1, $vr0
	vstelm.w	$vr1, $a0, 132, 0
	vld	$vr1, $s1, 812
	vshuf.b	$vr1, $vr0, $vr1, $vr0
	vstelm.w	$vr1, $a0, 136, 0
	vld	$vr1, $s1, 828
	vshuf.b	$vr1, $vr0, $vr1, $vr0
	vstelm.w	$vr1, $a0, 140, 0
	vld	$vr1, $s1, 844
	vshuf.b	$vr1, $vr0, $vr1, $vr0
	vstelm.w	$vr1, $a0, 144, 0
	vld	$vr1, $s1, 860
	vshuf.b	$vr1, $vr0, $vr1, $vr0
	vstelm.w	$vr1, $a0, 148, 0
	vld	$vr1, $s1, 876
	vshuf.b	$vr1, $vr0, $vr1, $vr0
	vstelm.w	$vr1, $a0, 152, 0
	vld	$vr1, $s1, 892
	vshuf.b	$vr1, $vr0, $vr1, $vr0
	vstelm.w	$vr1, $a0, 156, 0
	vld	$vr1, $s1, 908
	vshuf.b	$vr1, $vr0, $vr1, $vr0
	vstelm.w	$vr1, $a0, 160, 0
	vld	$vr1, $s1, 924
	vshuf.b	$vr1, $vr0, $vr1, $vr0
	vstelm.w	$vr1, $a0, 164, 0
	vld	$vr1, $s1, 940
	vshuf.b	$vr1, $vr0, $vr1, $vr0
	vstelm.w	$vr1, $a0, 168, 0
	vld	$vr1, $s1, 956
	vshuf.b	$vr1, $vr0, $vr1, $vr0
	vstelm.w	$vr1, $a0, 172, 0
	vld	$vr1, $s1, 972
	vshuf.b	$vr1, $vr0, $vr1, $vr0
	vstelm.w	$vr1, $a0, 176, 0
	vld	$vr1, $s1, 988
	vshuf.b	$vr1, $vr0, $vr1, $vr0
	vstelm.w	$vr1, $a0, 180, 0
	vld	$vr1, $s1, 1004
	vshuf.b	$vr0, $vr0, $vr1, $vr0
	vstelm.w	$vr0, $a0, 184, 0
	ld.d	$s8, $sp, 1592                  # 8-byte Folded Reload
	ld.d	$s7, $sp, 1600                  # 8-byte Folded Reload
	ld.d	$s6, $sp, 1608                  # 8-byte Folded Reload
	ld.d	$s5, $sp, 1616                  # 8-byte Folded Reload
	ld.d	$s4, $sp, 1624                  # 8-byte Folded Reload
	ld.d	$s3, $sp, 1632                  # 8-byte Folded Reload
	ld.d	$s2, $sp, 1640                  # 8-byte Folded Reload
	ld.d	$s1, $sp, 1648                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 1656                  # 8-byte Folded Reload
	ld.d	$fp, $sp, 1664                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 1672                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 1680
	ret
.LBB0_86:
	ori	$s6, $zero, 1
.LBB0_87:                               # %.split.us
	beqz	$s5, .LBB0_92
.LBB0_88:                               # %.preheader314.i.preheader
	move	$a0, $zero
	addi.w	$a1, $zero, -1
	ori	$a2, $zero, 1020
	b	.LBB0_90
	.p2align	4, , 16
.LBB0_89:                               #   in Loop: Header=BB0_90 Depth=1
	slli.d	$a3, $a3, 2
	ldx.w	$a3, $s2, $a3
	stx.w	$a3, $s1, $a0
	addi.d	$a0, $a0, 4
	beq	$a0, $a2, .LBB0_85
.LBB0_90:                               # %.preheader314.i
                                        # =>This Inner Loop Header: Depth=1
	ldx.w	$a3, $s1, $a0
	bne	$a3, $a1, .LBB0_89
# %bb.91:                               #   in Loop: Header=BB0_90 Depth=1
	move	$a3, $zero
	stx.w	$a3, $s1, $a0
	addi.d	$a0, $a0, 4
	bne	$a0, $a2, .LBB0_90
	b	.LBB0_85
.LBB0_92:                               # %.preheader312.i
	move	$a1, $zero
	addi.w	$a0, $zero, -1
	ori	$a2, $zero, 1020
	b	.LBB0_94
	.p2align	4, , 16
.LBB0_93:                               #   in Loop: Header=BB0_94 Depth=1
	slli.d	$a3, $a3, 2
	ldx.w	$a3, $s2, $a3
	stx.w	$a3, $s1, $a1
	addi.d	$a1, $a1, 4
	beq	$a1, $a2, .LBB0_96
.LBB0_94:                               # =>This Inner Loop Header: Depth=1
	ldx.w	$a3, $s1, $a1
	bne	$a3, $a0, .LBB0_93
# %bb.95:                               #   in Loop: Header=BB0_94 Depth=1
	move	$a3, $zero
	stx.w	$a3, $s1, $a1
	addi.d	$a1, $a1, 4
	bne	$a1, $a2, .LBB0_94
.LBB0_96:                               # %.preheader310.i
	blez	$s5, .LBB0_85
# %bb.97:                               # %.lr.ph383.i
	move	$a1, $zero
	addi.d	$a2, $s6, -1
	addi.d	$a3, $sp, 60
	addi.d	$a4, $sp, 92
	addi.d	$a5, $sp, 124
	b	.LBB0_100
	.p2align	4, , 16
.LBB0_98:                               # %._crit_edge379.i
                                        #   in Loop: Header=BB0_100 Depth=1
	mul.d	$a7, $t1, $s4
	srli.d	$a7, $a7, 32
	add.w	$a7, $a7, $t1
	bstrpick.d	$t2, $a7, 31, 31
	srai.d	$a7, $a7, 7
	add.d	$a7, $a7, $t2
	slli.d	$t2, $a7, 8
	sub.d	$a7, $t2, $a7
	sub.d	$a7, $a7, $t1
	add.d	$a7, $t0, $a7
	addi.w	$a7, $a7, 255
	mul.d	$t0, $a7, $s4
	srli.d	$t0, $t0, 32
	add.w	$t0, $t0, $a7
	bstrpick.d	$t1, $t0, 31, 31
	srai.d	$t0, $t0, 7
	add.d	$t0, $t0, $t1
	slli.d	$t1, $t0, 8
	sub.d	$t0, $t0, $t1
	add.w	$a7, $a7, $t0
	slli.d	$a7, $a7, 2
	ldx.w	$a7, $s2, $a7
	slli.d	$a6, $a6, 2
	ldx.w	$t0, $s1, $a6
	xor	$a7, $t0, $a7
	stx.w	$a7, $s1, $a6
.LBB0_99:                               #   in Loop: Header=BB0_100 Depth=1
	addi.d	$a1, $a1, 1
	beq	$a1, $s5, .LBB0_85
.LBB0_100:                              # %.lr.ph373.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_102 Depth 2
                                        #     Child Loop BB0_107 Depth 2
	slli.d	$a6, $a1, 2
	ldx.w	$a6, $a6, $a4
	alsl.d	$a7, $a1, $a5, 2
	ori	$t1, $zero, 1
	move	$t2, $a3
	move	$t3, $a2
	ori	$t0, $zero, 1
	b	.LBB0_102
	.p2align	4, , 16
.LBB0_101:                              #   in Loop: Header=BB0_102 Depth=2
	addi.d	$t3, $t3, -1
	addi.d	$t1, $t1, 1
	addi.d	$t2, $t2, 4
	beqz	$t3, .LBB0_104
.LBB0_102:                              #   Parent Loop BB0_100 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t4, $t2, 0
	beq	$t4, $a0, .LBB0_101
# %bb.103:                              #   in Loop: Header=BB0_102 Depth=2
	ld.w	$t5, $a7, 0
	mul.d	$t5, $t5, $t1
	add.w	$t4, $t5, $t4
	mul.d	$t5, $t4, $s4
	srli.d	$t5, $t5, 32
	add.w	$t5, $t5, $t4
	bstrpick.d	$t6, $t5, 31, 31
	srai.d	$t5, $t5, 7
	add.d	$t5, $t5, $t6
	slli.d	$t6, $t5, 8
	sub.d	$t5, $t5, $t6
	add.w	$t4, $t4, $t5
	slli.d	$t4, $t4, 2
	ldx.w	$t4, $s2, $t4
	xor	$t0, $t4, $t0
	b	.LBB0_101
	.p2align	4, , 16
.LBB0_104:                              # %._crit_edge374.i
                                        #   in Loop: Header=BB0_100 Depth=1
	beqz	$t0, .LBB0_99
# %bb.105:                              # %.lr.ph378.i
                                        #   in Loop: Header=BB0_100 Depth=1
	slli.d	$t0, $t0, 2
	ldx.w	$t0, $s3, $t0
	move	$t2, $zero
	move	$t1, $zero
	addi.d	$t3, $sp, 92
	b	.LBB0_107
	.p2align	4, , 16
.LBB0_106:                              #   in Loop: Header=BB0_107 Depth=2
	addi.d	$t2, $t2, 1
	addi.d	$t3, $t3, 4
	beq	$s5, $t2, .LBB0_98
.LBB0_107:                              #   Parent Loop BB0_100 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$a1, $t2, .LBB0_106
# %bb.108:                              #   in Loop: Header=BB0_107 Depth=2
	ld.w	$t4, $t3, 0
	ld.w	$t5, $a7, 0
	add.w	$t4, $t5, $t4
	mul.d	$t5, $t4, $s4
	srli.d	$t5, $t5, 32
	add.w	$t5, $t5, $t4
	bstrpick.d	$t6, $t5, 31, 31
	srai.d	$t5, $t5, 7
	add.d	$t5, $t5, $t6
	slli.d	$t6, $t5, 8
	sub.d	$t5, $t5, $t6
	add.w	$t4, $t4, $t5
	slli.d	$t4, $t4, 2
	ldx.w	$t4, $s2, $t4
	xori	$t4, $t4, 1
	slli.d	$t4, $t4, 2
	ldx.w	$t4, $s3, $t4
	add.w	$t1, $t4, $t1
	b	.LBB0_106
.Lfunc_end0:
	.size	rsdec_204, .Lfunc_end0-rsdec_204
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function rsenc_204
.LCPI1_0:
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	4                               # 0x4
	.word	8                               # 0x8
.LCPI1_1:
	.word	16                              # 0x10
	.word	32                              # 0x20
	.word	64                              # 0x40
	.word	128                             # 0x80
	.text
	.globl	rsenc_204
	.p2align	5
	.type	rsenc_204,@function
rsenc_204:                              # @rsenc_204
# %bb.0:
	addi.d	$sp, $sp, -144
	st.d	$ra, $sp, 136                   # 8-byte Folded Spill
	st.d	$fp, $sp, 128                   # 8-byte Folded Spill
	st.d	$s0, $sp, 120                   # 8-byte Folded Spill
	st.d	$s1, $sp, 112                   # 8-byte Folded Spill
	st.d	$s2, $sp, 104                   # 8-byte Folded Spill
	st.d	$s3, $sp, 96                    # 8-byte Folded Spill
	st.d	$s4, $sp, 88                    # 8-byte Folded Spill
	st.d	$s5, $sp, 80                    # 8-byte Folded Spill
	st.d	$s6, $sp, 72                    # 8-byte Folded Spill
	st.d	$s7, $sp, 64                    # 8-byte Folded Spill
	st.d	$s8, $sp, 56                    # 8-byte Folded Spill
	pcalau12i	$s1, %pc_hi20(inited)
	ld.bu	$a2, $s1, %pc_lo12(inited)
	move	$s0, $a1
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(index_of)
	addi.d	$fp, $a0, %pc_lo12(index_of)
	pcalau12i	$a0, %pc_hi20(alpha_to)
	addi.d	$s3, $a0, %pc_lo12(alpha_to)
	bnez	$a2, .LBB1_6
# %bb.1:
	ori	$a0, $zero, 0
	lu32i.d	$a0, 1
	pcalau12i	$a1, %pc_hi20(.LCPI1_0)
	vld	$vr0, $a1, %pc_lo12(.LCPI1_0)
	st.d	$a0, $fp, 4
	ori	$a0, $zero, 2
	st.w	$a0, $fp, 16
	vst	$vr0, $s3, 0
	ori	$a0, $zero, 3
	st.w	$a0, $fp, 32
	ori	$a0, $zero, 4
	st.w	$a0, $fp, 64
	ori	$a4, $zero, 29
	st.w	$a4, $s3, 32
	ori	$a0, $zero, 5
	pcalau12i	$a1, %pc_hi20(.LCPI1_1)
	vld	$vr0, $a1, %pc_lo12(.LCPI1_1)
	st.w	$a0, $fp, 128
	ori	$a0, $zero, 6
	st.w	$a0, $fp, 256
	vst	$vr0, $s3, 16
	ori	$a0, $zero, 7
	st.w	$a0, $fp, 512
	ori	$a0, $zero, 8
	st.w	$a0, $fp, 116
	ori	$a0, $zero, 36
	ori	$a1, $zero, 9
	ori	$a2, $zero, 128
	ori	$a3, $zero, 1020
	b	.LBB1_3
	.p2align	4, , 16
.LBB1_2:                                #   in Loop: Header=BB1_3 Depth=1
	stx.w	$a5, $s3, $a0
	slli.d	$a4, $a5, 2
	stx.w	$a1, $fp, $a4
	addi.d	$a0, $a0, 4
	addi.d	$a1, $a1, 1
	move	$a4, $a5
	beq	$a0, $a3, .LBB1_5
.LBB1_3:                                # =>This Inner Loop Header: Depth=1
	slli.w	$a5, $a4, 1
	blt	$a4, $a2, .LBB1_2
# %bb.4:                                #   in Loop: Header=BB1_3 Depth=1
	ld.w	$a4, $s3, 32
	xor	$a4, $a5, $a4
	xori	$a5, $a4, 256
	b	.LBB1_2
.LBB1_5:                                # %generate_gf.exit
	addi.w	$a0, $zero, -1
	lu32i.d	$a0, 0
	st.w	$a0, $fp, 0
	pcaddu18i	$ra, %call36(gen_poly)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	st.b	$a0, $s1, %pc_lo12(inited)
.LBB1_6:                                # %.preheader22.preheader
	pcalau12i	$a0, %pc_hi20(data)
	addi.d	$s1, $a0, %pc_lo12(data)
	ori	$a2, $zero, 204
	move	$a0, $s1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s0, 0
	vinsgr2vr.w	$vr1, $a0, 0
	vrepli.b	$vr0, 0
	vilvl.b	$vr1, $vr0, $vr1
	vilvl.h	$vr1, $vr0, $vr1
	vst	$vr1, $s1, 204
	ld.w	$a0, $s0, 4
	vinsgr2vr.w	$vr1, $a0, 0
	vilvl.b	$vr1, $vr0, $vr1
	vilvl.h	$vr1, $vr0, $vr1
	vst	$vr1, $s1, 220
	ld.w	$a0, $s0, 8
	vinsgr2vr.w	$vr1, $a0, 0
	vilvl.b	$vr1, $vr0, $vr1
	vilvl.h	$vr1, $vr0, $vr1
	vst	$vr1, $s1, 236
	ld.w	$a0, $s0, 12
	vinsgr2vr.w	$vr1, $a0, 0
	vilvl.b	$vr1, $vr0, $vr1
	vilvl.h	$vr1, $vr0, $vr1
	vst	$vr1, $s1, 252
	ld.w	$a0, $s0, 16
	vinsgr2vr.w	$vr1, $a0, 0
	vilvl.b	$vr1, $vr0, $vr1
	vilvl.h	$vr1, $vr0, $vr1
	vst	$vr1, $s1, 268
	ld.w	$a0, $s0, 20
	vinsgr2vr.w	$vr1, $a0, 0
	vilvl.b	$vr1, $vr0, $vr1
	vilvl.h	$vr1, $vr0, $vr1
	vst	$vr1, $s1, 284
	ld.w	$a0, $s0, 24
	vinsgr2vr.w	$vr1, $a0, 0
	vilvl.b	$vr1, $vr0, $vr1
	vilvl.h	$vr1, $vr0, $vr1
	vst	$vr1, $s1, 300
	ld.w	$a0, $s0, 28
	vinsgr2vr.w	$vr1, $a0, 0
	vilvl.b	$vr1, $vr0, $vr1
	vilvl.h	$vr1, $vr0, $vr1
	vst	$vr1, $s1, 316
	ld.w	$a0, $s0, 32
	vinsgr2vr.w	$vr1, $a0, 0
	vilvl.b	$vr1, $vr0, $vr1
	vilvl.h	$vr1, $vr0, $vr1
	vst	$vr1, $s1, 332
	ld.w	$a0, $s0, 36
	vinsgr2vr.w	$vr1, $a0, 0
	vilvl.b	$vr1, $vr0, $vr1
	vilvl.h	$vr1, $vr0, $vr1
	vst	$vr1, $s1, 348
	ld.w	$a0, $s0, 40
	vinsgr2vr.w	$vr1, $a0, 0
	vilvl.b	$vr1, $vr0, $vr1
	vilvl.h	$vr1, $vr0, $vr1
	vst	$vr1, $s1, 364
	ld.w	$a0, $s0, 44
	vinsgr2vr.w	$vr1, $a0, 0
	vilvl.b	$vr1, $vr0, $vr1
	vilvl.h	$vr1, $vr0, $vr1
	vst	$vr1, $s1, 380
	ld.w	$a0, $s0, 48
	vinsgr2vr.w	$vr1, $a0, 0
	vilvl.b	$vr1, $vr0, $vr1
	vilvl.h	$vr1, $vr0, $vr1
	vst	$vr1, $s1, 396
	ld.w	$a0, $s0, 52
	vinsgr2vr.w	$vr1, $a0, 0
	vilvl.b	$vr1, $vr0, $vr1
	vilvl.h	$vr1, $vr0, $vr1
	vst	$vr1, $s1, 412
	ld.w	$a0, $s0, 56
	vinsgr2vr.w	$vr1, $a0, 0
	vilvl.b	$vr1, $vr0, $vr1
	vilvl.h	$vr1, $vr0, $vr1
	vst	$vr1, $s1, 428
	ld.w	$a0, $s0, 60
	vinsgr2vr.w	$vr1, $a0, 0
	vilvl.b	$vr1, $vr0, $vr1
	vilvl.h	$vr1, $vr0, $vr1
	vst	$vr1, $s1, 444
	ld.w	$a0, $s0, 64
	vinsgr2vr.w	$vr1, $a0, 0
	vilvl.b	$vr1, $vr0, $vr1
	vilvl.h	$vr1, $vr0, $vr1
	vst	$vr1, $s1, 460
	ld.w	$a0, $s0, 68
	vinsgr2vr.w	$vr1, $a0, 0
	vilvl.b	$vr1, $vr0, $vr1
	vilvl.h	$vr1, $vr0, $vr1
	vst	$vr1, $s1, 476
	ld.w	$a0, $s0, 72
	vinsgr2vr.w	$vr1, $a0, 0
	vilvl.b	$vr1, $vr0, $vr1
	vilvl.h	$vr1, $vr0, $vr1
	vst	$vr1, $s1, 492
	ld.w	$a0, $s0, 76
	vinsgr2vr.w	$vr1, $a0, 0
	vilvl.b	$vr1, $vr0, $vr1
	vilvl.h	$vr1, $vr0, $vr1
	vst	$vr1, $s1, 508
	ld.w	$a0, $s0, 80
	vinsgr2vr.w	$vr1, $a0, 0
	vilvl.b	$vr1, $vr0, $vr1
	vilvl.h	$vr1, $vr0, $vr1
	vst	$vr1, $s1, 524
	ld.w	$a0, $s0, 84
	vinsgr2vr.w	$vr1, $a0, 0
	vilvl.b	$vr1, $vr0, $vr1
	vilvl.h	$vr1, $vr0, $vr1
	vst	$vr1, $s1, 540
	ld.w	$a0, $s0, 88
	vinsgr2vr.w	$vr1, $a0, 0
	vilvl.b	$vr1, $vr0, $vr1
	vilvl.h	$vr1, $vr0, $vr1
	vst	$vr1, $s1, 556
	ld.w	$a0, $s0, 92
	vinsgr2vr.w	$vr1, $a0, 0
	vilvl.b	$vr1, $vr0, $vr1
	vilvl.h	$vr1, $vr0, $vr1
	vst	$vr1, $s1, 572
	ld.w	$a0, $s0, 96
	vinsgr2vr.w	$vr1, $a0, 0
	vilvl.b	$vr1, $vr0, $vr1
	vilvl.h	$vr1, $vr0, $vr1
	vst	$vr1, $s1, 588
	ld.w	$a0, $s0, 100
	vinsgr2vr.w	$vr1, $a0, 0
	vilvl.b	$vr1, $vr0, $vr1
	vilvl.h	$vr1, $vr0, $vr1
	vst	$vr1, $s1, 604
	ld.w	$a0, $s0, 104
	vinsgr2vr.w	$vr1, $a0, 0
	vilvl.b	$vr1, $vr0, $vr1
	vilvl.h	$vr1, $vr0, $vr1
	vst	$vr1, $s1, 620
	ld.w	$a0, $s0, 108
	vinsgr2vr.w	$vr1, $a0, 0
	vilvl.b	$vr1, $vr0, $vr1
	vilvl.h	$vr1, $vr0, $vr1
	vst	$vr1, $s1, 636
	ld.w	$a0, $s0, 112
	vinsgr2vr.w	$vr1, $a0, 0
	vilvl.b	$vr1, $vr0, $vr1
	vilvl.h	$vr1, $vr0, $vr1
	vst	$vr1, $s1, 652
	ld.w	$a0, $s0, 116
	vinsgr2vr.w	$vr1, $a0, 0
	vilvl.b	$vr1, $vr0, $vr1
	vilvl.h	$vr1, $vr0, $vr1
	vst	$vr1, $s1, 668
	ld.w	$a0, $s0, 120
	vinsgr2vr.w	$vr1, $a0, 0
	vilvl.b	$vr1, $vr0, $vr1
	vilvl.h	$vr1, $vr0, $vr1
	vst	$vr1, $s1, 684
	ld.w	$a0, $s0, 124
	vinsgr2vr.w	$vr1, $a0, 0
	vilvl.b	$vr1, $vr0, $vr1
	vilvl.h	$vr1, $vr0, $vr1
	vst	$vr1, $s1, 700
	ld.w	$a0, $s0, 128
	vinsgr2vr.w	$vr1, $a0, 0
	vilvl.b	$vr1, $vr0, $vr1
	vilvl.h	$vr1, $vr0, $vr1
	vst	$vr1, $s1, 716
	ld.w	$a0, $s0, 132
	vinsgr2vr.w	$vr1, $a0, 0
	vilvl.b	$vr1, $vr0, $vr1
	vilvl.h	$vr1, $vr0, $vr1
	vst	$vr1, $s1, 732
	ld.w	$a0, $s0, 136
	vinsgr2vr.w	$vr1, $a0, 0
	vilvl.b	$vr1, $vr0, $vr1
	vilvl.h	$vr1, $vr0, $vr1
	vst	$vr1, $s1, 748
	ld.w	$a0, $s0, 140
	vinsgr2vr.w	$vr1, $a0, 0
	vilvl.b	$vr1, $vr0, $vr1
	vilvl.h	$vr1, $vr0, $vr1
	vst	$vr1, $s1, 764
	ld.w	$a0, $s0, 144
	vinsgr2vr.w	$vr1, $a0, 0
	vilvl.b	$vr1, $vr0, $vr1
	vilvl.h	$vr1, $vr0, $vr1
	vst	$vr1, $s1, 780
	ld.w	$a0, $s0, 148
	vinsgr2vr.w	$vr1, $a0, 0
	vilvl.b	$vr1, $vr0, $vr1
	vilvl.h	$vr1, $vr0, $vr1
	vst	$vr1, $s1, 796
	ld.w	$a0, $s0, 152
	vinsgr2vr.w	$vr1, $a0, 0
	vilvl.b	$vr1, $vr0, $vr1
	vilvl.h	$vr1, $vr0, $vr1
	vst	$vr1, $s1, 812
	ld.w	$a0, $s0, 156
	vinsgr2vr.w	$vr1, $a0, 0
	vilvl.b	$vr1, $vr0, $vr1
	vilvl.h	$vr1, $vr0, $vr1
	vst	$vr1, $s1, 828
	ld.w	$a0, $s0, 160
	vinsgr2vr.w	$vr1, $a0, 0
	vilvl.b	$vr1, $vr0, $vr1
	vilvl.h	$vr1, $vr0, $vr1
	vst	$vr1, $s1, 844
	ld.w	$a0, $s0, 164
	vinsgr2vr.w	$vr1, $a0, 0
	vilvl.b	$vr1, $vr0, $vr1
	vilvl.h	$vr1, $vr0, $vr1
	vst	$vr1, $s1, 860
	ld.w	$a0, $s0, 168
	vinsgr2vr.w	$vr1, $a0, 0
	vilvl.b	$vr1, $vr0, $vr1
	vilvl.h	$vr1, $vr0, $vr1
	vst	$vr1, $s1, 876
	ld.w	$a0, $s0, 172
	vinsgr2vr.w	$vr1, $a0, 0
	vilvl.b	$vr1, $vr0, $vr1
	vilvl.h	$vr1, $vr0, $vr1
	vst	$vr1, $s1, 892
	ld.w	$a0, $s0, 176
	vinsgr2vr.w	$vr1, $a0, 0
	vilvl.b	$vr1, $vr0, $vr1
	vilvl.h	$vr1, $vr0, $vr1
	vst	$vr1, $s1, 908
	ld.w	$a0, $s0, 180
	vinsgr2vr.w	$vr1, $a0, 0
	vilvl.b	$vr1, $vr0, $vr1
	vilvl.h	$vr1, $vr0, $vr1
	vst	$vr1, $s1, 924
	ld.w	$a0, $s0, 184
	vinsgr2vr.w	$vr1, $a0, 0
	vilvl.b	$vr1, $vr0, $vr1
	vilvl.h	$vr1, $vr0, $vr1
	vst	$vr1, $s1, 940
	pcalau12i	$a0, %pc_hi20(bb)
	addi.d	$a0, $a0, %pc_lo12(bb)
	vst	$vr0, $a0, 0
	vst	$vr0, $a0, 48
	vst	$vr0, $a0, 32
	vst	$vr0, $a0, 16
	pcalau12i	$a1, %pc_hi20(gg)
	addi.d	$a3, $a1, %pc_lo12(gg)
	move	$a2, $zero
	move	$a1, $zero
	ld.w	$a4, $a3, 0
	st.d	$a4, $sp, 48                    # 8-byte Folded Spill
	ld.w	$a4, $a3, 60
	ld.w	$a5, $a3, 56
	ld.w	$a6, $a3, 52
	st.d	$a6, $sp, 24                    # 8-byte Folded Spill
	ld.w	$a7, $a3, 48
	ld.w	$t0, $a3, 44
	ld.w	$t1, $a3, 40
	ld.w	$t2, $a3, 36
	ld.w	$t3, $a3, 32
	ld.w	$t4, $a3, 28
	ld.w	$t5, $a3, 24
	ld.w	$t6, $a3, 20
	ld.w	$t7, $a3, 16
	ld.w	$t8, $a3, 12
	ld.w	$s4, $a3, 8
	ld.w	$s5, $a3, 4
	ori	$s6, $zero, 952
	addi.w	$s7, $zero, -1
	addi.w	$s8, $zero, -4
	lu12i.w	$a3, -522232
	ori	$ra, $a3, 129
	st.d	$a4, $sp, 40                    # 8-byte Folded Spill
	st.d	$a5, $sp, 32                    # 8-byte Folded Spill
	b	.LBB1_8
	.p2align	4, , 16
.LBB1_7:                                # %.preheader.preheader.i
                                        #   in Loop: Header=BB1_8 Depth=1
	ld.d	$a1, $a0, 0
	ld.d	$a2, $a0, 8
	st.d	$a1, $a0, 4
	ld.d	$a1, $a0, 16
	st.d	$a2, $a0, 12
	ld.d	$a2, $a0, 24
	st.d	$a1, $a0, 20
	ld.d	$a1, $a0, 32
	st.d	$a2, $a0, 28
	ld.d	$a2, $a0, 40
	st.d	$a1, $a0, 36
	ld.d	$a3, $a0, 48
	st.d	$a2, $a0, 44
	ld.w	$a1, $a0, 56
	move	$a2, $zero
	st.d	$a3, $a0, 52
	st.w	$a1, $a0, 60
	addi.d	$s6, $s6, -4
	st.w	$a2, $a0, 0
	beq	$s6, $s8, .LBB1_40
.LBB1_8:                                # =>This Inner Loop Header: Depth=1
	ldx.w	$a3, $s1, $s6
	xor	$a1, $a1, $a3
	slli.d	$a1, $a1, 2
	ldx.w	$a3, $fp, $a1
	beq	$a3, $s7, .LBB1_7
# %bb.9:                                # %.preheader26.i.preheader
                                        #   in Loop: Header=BB1_8 Depth=1
	move	$a6, $fp
	ld.w	$a1, $a0, 56
	beq	$a4, $s7, .LBB1_11
# %bb.10:                               #   in Loop: Header=BB1_8 Depth=1
	add.w	$fp, $a4, $a3
	mul.d	$s2, $fp, $ra
	srli.d	$s2, $s2, 32
	add.w	$s2, $s2, $fp
	bstrpick.d	$a4, $s2, 31, 31
	srai.d	$s2, $s2, 7
	add.d	$a4, $s2, $a4
	slli.d	$s2, $a4, 8
	sub.d	$a4, $a4, $s2
	add.w	$a4, $fp, $a4
	slli.d	$a4, $a4, 2
	ldx.w	$a4, $s3, $a4
	xor	$a1, $a4, $a1
.LBB1_11:                               # %.preheader26.i.1
                                        #   in Loop: Header=BB1_8 Depth=1
	ld.w	$fp, $a0, 52
	st.w	$a1, $a0, 60
	beq	$a5, $s7, .LBB1_13
# %bb.12:                               #   in Loop: Header=BB1_8 Depth=1
	add.w	$a4, $a5, $a3
	mul.d	$s2, $a4, $ra
	srli.d	$s2, $s2, 32
	add.w	$s2, $s2, $a4
	bstrpick.d	$a5, $s2, 31, 31
	srai.d	$s2, $s2, 7
	add.d	$a5, $s2, $a5
	slli.d	$s2, $a5, 8
	sub.d	$a5, $a5, $s2
	add.w	$a4, $a4, $a5
	slli.d	$a4, $a4, 2
	ldx.w	$a4, $s3, $a4
	xor	$fp, $a4, $fp
.LBB1_13:                               # %.preheader26.i.2
                                        #   in Loop: Header=BB1_8 Depth=1
	ld.w	$s2, $a0, 48
	st.w	$fp, $a0, 56
	ld.d	$a4, $sp, 24                    # 8-byte Folded Reload
	beq	$a4, $s7, .LBB1_15
# %bb.14:                               #   in Loop: Header=BB1_8 Depth=1
	add.w	$a4, $a4, $a3
	mul.d	$a5, $a4, $ra
	srli.d	$a5, $a5, 32
	add.w	$a5, $a5, $a4
	bstrpick.d	$fp, $a5, 31, 31
	srai.d	$a5, $a5, 7
	add.d	$a5, $a5, $fp
	slli.d	$fp, $a5, 8
	sub.d	$a5, $a5, $fp
	add.w	$a4, $a4, $a5
	slli.d	$a4, $a4, 2
	ldx.w	$a4, $s3, $a4
	xor	$s2, $a4, $s2
.LBB1_15:                               # %.preheader26.i.3
                                        #   in Loop: Header=BB1_8 Depth=1
	ld.w	$fp, $a0, 44
	st.w	$s2, $a0, 52
	beq	$a7, $s7, .LBB1_17
# %bb.16:                               #   in Loop: Header=BB1_8 Depth=1
	add.w	$a4, $a7, $a3
	mul.d	$a5, $a4, $ra
	srli.d	$a5, $a5, 32
	add.w	$a5, $a5, $a4
	bstrpick.d	$s2, $a5, 31, 31
	srai.d	$a5, $a5, 7
	add.d	$a5, $a5, $s2
	slli.d	$s2, $a5, 8
	sub.d	$a5, $a5, $s2
	add.w	$a4, $a4, $a5
	slli.d	$a4, $a4, 2
	ldx.w	$a4, $s3, $a4
	xor	$fp, $a4, $fp
.LBB1_17:                               # %.preheader26.i.4
                                        #   in Loop: Header=BB1_8 Depth=1
	ld.w	$s2, $a0, 40
	st.w	$fp, $a0, 48
	beq	$t0, $s7, .LBB1_19
# %bb.18:                               #   in Loop: Header=BB1_8 Depth=1
	add.w	$a4, $t0, $a3
	mul.d	$a5, $a4, $ra
	srli.d	$a5, $a5, 32
	add.w	$a5, $a5, $a4
	bstrpick.d	$fp, $a5, 31, 31
	srai.d	$a5, $a5, 7
	add.d	$a5, $a5, $fp
	slli.d	$fp, $a5, 8
	sub.d	$a5, $a5, $fp
	add.w	$a4, $a4, $a5
	slli.d	$a4, $a4, 2
	ldx.w	$a4, $s3, $a4
	xor	$s2, $a4, $s2
.LBB1_19:                               # %.preheader26.i.5
                                        #   in Loop: Header=BB1_8 Depth=1
	ld.w	$fp, $a0, 36
	st.w	$s2, $a0, 44
	beq	$t1, $s7, .LBB1_21
# %bb.20:                               #   in Loop: Header=BB1_8 Depth=1
	add.w	$a4, $t1, $a3
	mul.d	$a5, $a4, $ra
	srli.d	$a5, $a5, 32
	add.w	$a5, $a5, $a4
	bstrpick.d	$s2, $a5, 31, 31
	srai.d	$a5, $a5, 7
	add.d	$a5, $a5, $s2
	slli.d	$s2, $a5, 8
	sub.d	$a5, $a5, $s2
	add.w	$a4, $a4, $a5
	slli.d	$a4, $a4, 2
	ldx.w	$a4, $s3, $a4
	xor	$fp, $a4, $fp
.LBB1_21:                               # %.preheader26.i.6
                                        #   in Loop: Header=BB1_8 Depth=1
	ld.w	$s2, $a0, 32
	st.w	$fp, $a0, 40
	beq	$t2, $s7, .LBB1_23
# %bb.22:                               #   in Loop: Header=BB1_8 Depth=1
	add.w	$a4, $t2, $a3
	mul.d	$a5, $a4, $ra
	srli.d	$a5, $a5, 32
	add.w	$a5, $a5, $a4
	bstrpick.d	$fp, $a5, 31, 31
	srai.d	$a5, $a5, 7
	add.d	$a5, $a5, $fp
	slli.d	$fp, $a5, 8
	sub.d	$a5, $a5, $fp
	add.w	$a4, $a4, $a5
	slli.d	$a4, $a4, 2
	ldx.w	$a4, $s3, $a4
	xor	$s2, $a4, $s2
.LBB1_23:                               # %.preheader26.i.7
                                        #   in Loop: Header=BB1_8 Depth=1
	ld.w	$fp, $a0, 28
	st.w	$s2, $a0, 36
	beq	$t3, $s7, .LBB1_25
# %bb.24:                               #   in Loop: Header=BB1_8 Depth=1
	add.w	$a4, $t3, $a3
	mul.d	$a5, $a4, $ra
	srli.d	$a5, $a5, 32
	add.w	$a5, $a5, $a4
	bstrpick.d	$s2, $a5, 31, 31
	srai.d	$a5, $a5, 7
	add.d	$a5, $a5, $s2
	slli.d	$s2, $a5, 8
	sub.d	$a5, $a5, $s2
	add.w	$a4, $a4, $a5
	slli.d	$a4, $a4, 2
	ldx.w	$a4, $s3, $a4
	xor	$fp, $a4, $fp
.LBB1_25:                               # %.preheader26.i.8
                                        #   in Loop: Header=BB1_8 Depth=1
	ld.w	$s2, $a0, 24
	st.w	$fp, $a0, 32
	beq	$t4, $s7, .LBB1_27
# %bb.26:                               #   in Loop: Header=BB1_8 Depth=1
	add.w	$a4, $t4, $a3
	mul.d	$a5, $a4, $ra
	srli.d	$a5, $a5, 32
	add.w	$a5, $a5, $a4
	bstrpick.d	$fp, $a5, 31, 31
	srai.d	$a5, $a5, 7
	add.d	$a5, $a5, $fp
	slli.d	$fp, $a5, 8
	sub.d	$a5, $a5, $fp
	add.w	$a4, $a4, $a5
	slli.d	$a4, $a4, 2
	ldx.w	$a4, $s3, $a4
	xor	$s2, $a4, $s2
.LBB1_27:                               # %.preheader26.i.9
                                        #   in Loop: Header=BB1_8 Depth=1
	ld.w	$fp, $a0, 20
	st.w	$s2, $a0, 28
	beq	$t5, $s7, .LBB1_29
# %bb.28:                               #   in Loop: Header=BB1_8 Depth=1
	add.w	$a4, $t5, $a3
	mul.d	$a5, $a4, $ra
	srli.d	$a5, $a5, 32
	add.w	$a5, $a5, $a4
	bstrpick.d	$s2, $a5, 31, 31
	srai.d	$a5, $a5, 7
	add.d	$a5, $a5, $s2
	slli.d	$s2, $a5, 8
	sub.d	$a5, $a5, $s2
	add.w	$a4, $a4, $a5
	slli.d	$a4, $a4, 2
	ldx.w	$a4, $s3, $a4
	xor	$fp, $a4, $fp
.LBB1_29:                               # %.preheader26.i.10
                                        #   in Loop: Header=BB1_8 Depth=1
	ld.w	$s2, $a0, 16
	st.w	$fp, $a0, 24
	beq	$t6, $s7, .LBB1_31
# %bb.30:                               #   in Loop: Header=BB1_8 Depth=1
	add.w	$a4, $t6, $a3
	mul.d	$a5, $a4, $ra
	srli.d	$a5, $a5, 32
	add.w	$a5, $a5, $a4
	bstrpick.d	$fp, $a5, 31, 31
	srai.d	$a5, $a5, 7
	add.d	$a5, $a5, $fp
	slli.d	$fp, $a5, 8
	sub.d	$a5, $a5, $fp
	add.w	$a4, $a4, $a5
	slli.d	$a4, $a4, 2
	ldx.w	$a4, $s3, $a4
	xor	$s2, $a4, $s2
.LBB1_31:                               # %.preheader26.i.11
                                        #   in Loop: Header=BB1_8 Depth=1
	ld.w	$fp, $a0, 12
	st.w	$s2, $a0, 20
	beq	$t7, $s7, .LBB1_33
# %bb.32:                               #   in Loop: Header=BB1_8 Depth=1
	add.w	$a4, $t7, $a3
	mul.d	$a5, $a4, $ra
	srli.d	$a5, $a5, 32
	add.w	$a5, $a5, $a4
	bstrpick.d	$s2, $a5, 31, 31
	srai.d	$a5, $a5, 7
	add.d	$a5, $a5, $s2
	slli.d	$s2, $a5, 8
	sub.d	$a5, $a5, $s2
	add.w	$a4, $a4, $a5
	slli.d	$a4, $a4, 2
	ldx.w	$a4, $s3, $a4
	xor	$fp, $a4, $fp
.LBB1_33:                               # %.preheader26.i.12
                                        #   in Loop: Header=BB1_8 Depth=1
	ld.w	$s2, $a0, 8
	st.w	$fp, $a0, 16
	beq	$t8, $s7, .LBB1_35
# %bb.34:                               #   in Loop: Header=BB1_8 Depth=1
	add.w	$a4, $t8, $a3
	mul.d	$a5, $a4, $ra
	srli.d	$a5, $a5, 32
	add.w	$a5, $a5, $a4
	bstrpick.d	$fp, $a5, 31, 31
	srai.d	$a5, $a5, 7
	add.d	$a5, $a5, $fp
	slli.d	$fp, $a5, 8
	sub.d	$a5, $a5, $fp
	add.w	$a4, $a4, $a5
	slli.d	$a4, $a4, 2
	ldx.w	$a4, $s3, $a4
	xor	$s2, $a4, $s2
.LBB1_35:                               # %.preheader26.i.13
                                        #   in Loop: Header=BB1_8 Depth=1
	ld.w	$fp, $a0, 4
	st.w	$s2, $a0, 12
	beq	$s4, $s7, .LBB1_37
# %bb.36:                               #   in Loop: Header=BB1_8 Depth=1
	add.w	$a4, $s4, $a3
	mul.d	$a5, $a4, $ra
	srli.d	$a5, $a5, 32
	add.w	$a5, $a5, $a4
	bstrpick.d	$s2, $a5, 31, 31
	srai.d	$a5, $a5, 7
	add.d	$a5, $a5, $s2
	slli.d	$s2, $a5, 8
	sub.d	$a5, $a5, $s2
	add.w	$a4, $a4, $a5
	slli.d	$a4, $a4, 2
	ldx.w	$a4, $s3, $a4
	xor	$fp, $a4, $fp
.LBB1_37:                               # %.preheader26.i.14
                                        #   in Loop: Header=BB1_8 Depth=1
	st.w	$fp, $a0, 8
	beq	$s5, $s7, .LBB1_39
# %bb.38:                               #   in Loop: Header=BB1_8 Depth=1
	add.w	$a4, $s5, $a3
	mul.d	$a5, $a4, $ra
	srli.d	$a5, $a5, 32
	add.w	$a5, $a5, $a4
	bstrpick.d	$fp, $a5, 31, 31
	srai.d	$a5, $a5, 7
	add.d	$a5, $a5, $fp
	slli.d	$fp, $a5, 8
	sub.d	$a5, $a5, $fp
	add.w	$a4, $a4, $a5
	slli.d	$a4, $a4, 2
	ldx.w	$a4, $s3, $a4
	xor	$a2, $a4, $a2
.LBB1_39:                               #   in Loop: Header=BB1_8 Depth=1
	move	$fp, $a6
	ld.d	$a5, $sp, 32                    # 8-byte Folded Reload
	st.w	$a2, $a0, 4
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	add.w	$a2, $a3, $a2
	mul.d	$a3, $a2, $ra
	srli.d	$a3, $a3, 32
	add.w	$a3, $a3, $a2
	bstrpick.d	$a4, $a3, 31, 31
	srai.d	$a3, $a3, 7
	add.d	$a3, $a3, $a4
	slli.d	$a4, $a3, 8
	sub.d	$a3, $a3, $a4
	add.w	$a2, $a2, $a3
	slli.d	$a2, $a2, 2
	ldx.w	$a2, $s3, $a2
	ld.d	$a4, $sp, 40                    # 8-byte Folded Reload
	addi.d	$s6, $s6, -4
	st.w	$a2, $a0, 0
	bne	$s6, $s8, .LBB1_8
.LBB1_40:                               # %vector.memcheck
	ld.d	$a6, $sp, 16                    # 8-byte Folded Reload
	sub.d	$a3, $a6, $s0
	ori	$a4, $zero, 32
	bgeu	$a3, $a4, .LBB1_42
# %bb.41:
	move	$a3, $zero
	b	.LBB1_43
.LBB1_42:                               # %vector.body54
	vld	$vr0, $s0, 0
	vld	$vr1, $s0, 16
	vst	$vr0, $a6, 0
	vst	$vr1, $a6, 16
	vld	$vr0, $s0, 32
	vld	$vr1, $s0, 48
	vst	$vr0, $a6, 32
	vst	$vr1, $a6, 48
	vld	$vr0, $s0, 64
	vld	$vr1, $s0, 80
	vst	$vr0, $a6, 64
	vst	$vr1, $a6, 80
	vld	$vr0, $s0, 96
	vld	$vr1, $s0, 112
	vst	$vr0, $a6, 96
	vst	$vr1, $a6, 112
	vld	$vr0, $s0, 128
	vld	$vr1, $s0, 144
	vst	$vr0, $a6, 128
	vst	$vr1, $a6, 144
	vld	$vr0, $s0, 160
	vst	$vr0, $a6, 160
	ori	$a3, $zero, 176
.LBB1_43:                               # %encode_rs.exit.preheader
	ori	$a4, $zero, 188
	.p2align	4, , 16
.LBB1_44:                               # %encode_rs.exit
                                        # =>This Inner Loop Header: Depth=1
	ldx.b	$a5, $s0, $a3
	stx.b	$a5, $a6, $a3
	addi.d	$a3, $a3, 1
	bne	$a3, $a4, .LBB1_44
# %bb.45:                               # %.preheader.preheader
	ld.b	$a3, $a0, 4
	ld.b	$a4, $a0, 8
	st.b	$a2, $a6, 188
	st.b	$a3, $a6, 189
	st.b	$a4, $a6, 190
	ld.b	$a2, $a0, 12
	ld.b	$a3, $a0, 16
	ld.b	$a4, $a0, 20
	ld.b	$a5, $a0, 24
	st.b	$a2, $a6, 191
	st.b	$a3, $a6, 192
	st.b	$a4, $a6, 193
	st.b	$a5, $a6, 194
	ld.b	$a2, $a0, 28
	ld.b	$a3, $a0, 32
	ld.b	$a4, $a0, 36
	ld.b	$a5, $a0, 40
	st.b	$a2, $a6, 195
	st.b	$a3, $a6, 196
	st.b	$a4, $a6, 197
	st.b	$a5, $a6, 198
	ld.b	$a2, $a0, 44
	ld.b	$a3, $a0, 48
	ld.b	$a4, $a0, 52
	ld.b	$a0, $a0, 56
	st.b	$a2, $a6, 199
	st.b	$a3, $a6, 200
	st.b	$a4, $a6, 201
	st.b	$a0, $a6, 202
	st.b	$a1, $a6, 203
	ld.d	$s8, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 128                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 136                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 144
	ret
.Lfunc_end1:
	.size	rsenc_204, .Lfunc_end1-rsenc_204
                                        # -- End function
	.globl	main                            # -- Begin function main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:
	addi.d	$sp, $sp, -496
	st.d	$ra, $sp, 488                   # 8-byte Folded Spill
	st.d	$fp, $sp, 480                   # 8-byte Folded Spill
	st.d	$s0, $sp, 472                   # 8-byte Folded Spill
	st.d	$s1, $sp, 464                   # 8-byte Folded Spill
	st.d	$s2, $sp, 456                   # 8-byte Folded Spill
	st.d	$s3, $sp, 448                   # 8-byte Folded Spill
	st.d	$s4, $sp, 440                   # 8-byte Folded Spill
	st.d	$s5, $sp, 432                   # 8-byte Folded Spill
	st.d	$s6, $sp, 424                   # 8-byte Folded Spill
	st.d	$s7, $sp, 416                   # 8-byte Folded Spill
	move	$s0, $zero
	addi.d	$s1, $sp, 212
	ori	$s2, $zero, 188
	addi.d	$s3, $sp, 8
	lu12i.w	$a0, 36
	ori	$s4, $a0, 2544
	lu12i.w	$a0, -390646
	ori	$a0, $a0, 161
	lu32i.d	$a0, 41120
	lu52i.d	$s5, $a0, -1526
	ori	$s6, $zero, 204
	b	.LBB2_2
	.p2align	4, , 16
.LBB2_1:                                # %._crit_edge
                                        #   in Loop: Header=BB2_2 Depth=1
	addi.d	$a0, $sp, 212
	addi.d	$a1, $sp, 8
	pcaddu18i	$ra, %call36(rsdec_204)
	jirl	$ra, $ra, 0
	addi.w	$s0, $s0, 1
	beq	$s0, $s4, .LBB2_6
.LBB2_2:                                # %.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_3 Depth 2
                                        #     Child Loop BB2_5 Depth 2
	move	$fp, $zero
	.p2align	4, , 16
.LBB2_3:                                #   Parent Loop BB2_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	pcaddu18i	$ra, %call36(random)
	jirl	$ra, $ra, 0
	stx.b	$a0, $fp, $s1
	addi.d	$fp, $fp, 1
	bne	$fp, $s2, .LBB2_3
# %bb.4:                                #   in Loop: Header=BB2_2 Depth=1
	addi.d	$a0, $sp, 8
	addi.d	$a1, $sp, 212
	pcaddu18i	$ra, %call36(rsenc_204)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(random)
	jirl	$ra, $ra, 0
	andi	$s7, $a0, 127
	beqz	$s7, .LBB2_1
	.p2align	4, , 16
.LBB2_5:                                # %.lr.ph
                                        #   Parent Loop BB2_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	pcaddu18i	$ra, %call36(random)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	pcaddu18i	$ra, %call36(random)
	jirl	$ra, $ra, 0
	mulh.d	$a1, $a0, $s5
	add.d	$a1, $a1, $a0
	srli.d	$a2, $a1, 63
	srai.d	$a1, $a1, 7
	add.d	$a1, $a1, $a2
	mul.d	$a1, $a1, $s6
	sub.d	$a0, $a0, $a1
	addi.w	$s7, $s7, -1
	stx.b	$fp, $a0, $s3
	bnez	$s7, .LBB2_5
	b	.LBB2_1
.LBB2_6:
	move	$a0, $zero
	ld.d	$s7, $sp, 416                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 424                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 432                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 440                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 448                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 456                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 464                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 472                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 480                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 488                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 496
	ret
.Lfunc_end2:
	.size	main, .Lfunc_end2-main
                                        # -- End function
	.p2align	5                               # -- Begin function gen_poly
	.type	gen_poly,@function
gen_poly:                               # @gen_poly
# %bb.0:
	pcalau12i	$a0, %pc_hi20(gg)
	addi.d	$a0, $a0, %pc_lo12(gg)
	ori	$a2, $zero, 2
	ori	$a1, $zero, 2
	lu32i.d	$a1, 1
	st.d	$a1, $a0, 0
	addi.d	$a3, $a0, 4
	ori	$a4, $zero, 3
	ori	$a5, $zero, 1
	pcalau12i	$a1, %pc_hi20(index_of)
	addi.d	$a1, $a1, %pc_lo12(index_of)
	lu12i.w	$a6, -522232
	ori	$a6, $a6, 129
	pcalau12i	$a7, %pc_hi20(alpha_to)
	addi.d	$a7, $a7, %pc_lo12(alpha_to)
	ori	$t0, $zero, 17
	ori	$t1, $zero, 2
	b	.LBB3_2
	.p2align	4, , 16
.LBB3_1:                                #   in Loop: Header=BB3_2 Depth=1
	ld.w	$t2, $a0, 0
	slli.d	$t2, $t2, 2
	ldx.w	$t2, $a1, $t2
	add.w	$t2, $t2, $t1
	mul.d	$t3, $t2, $a6
	srli.d	$t3, $t3, 32
	add.w	$t3, $t3, $t2
	bstrpick.d	$t4, $t3, 31, 31
	srai.d	$t3, $t3, 7
	add.d	$t3, $t3, $t4
	slli.d	$t4, $t3, 8
	sub.d	$t3, $t3, $t4
	add.w	$t2, $t2, $t3
	slli.d	$t2, $t2, 2
	ldx.w	$t2, $a7, $t2
	st.w	$t2, $a0, 0
	addi.d	$t1, $t1, 1
	addi.d	$a4, $a4, 1
	addi.d	$a3, $a3, 4
	beq	$t1, $t0, .LBB3_6
.LBB3_2:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_4 Depth 2
	slli.d	$t2, $t1, 2
	stx.w	$a5, $a0, $t2
	move	$t2, $a3
	move	$t3, $a4
	b	.LBB3_4
	.p2align	4, , 16
.LBB3_3:                                #   in Loop: Header=BB3_4 Depth=2
	st.w	$t4, $t2, 0
	addi.d	$t3, $t3, -1
	addi.d	$t2, $t2, -4
	bge	$a2, $t3, .LBB3_1
.LBB3_4:                                #   Parent Loop BB3_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t5, $t2, 0
	ld.w	$t4, $t2, -4
	beqz	$t5, .LBB3_3
# %bb.5:                                #   in Loop: Header=BB3_4 Depth=2
	slli.d	$t5, $t5, 2
	ldx.w	$t5, $a1, $t5
	add.w	$t5, $t5, $t1
	mul.d	$t6, $t5, $a6
	srli.d	$t6, $t6, 32
	add.w	$t6, $t6, $t5
	bstrpick.d	$t7, $t6, 31, 31
	srai.d	$t6, $t6, 7
	add.d	$t6, $t6, $t7
	slli.d	$t7, $t6, 8
	sub.d	$t6, $t6, $t7
	add.w	$t5, $t5, $t6
	slli.d	$t5, $t5, 2
	ldx.w	$t5, $a7, $t5
	xor	$t4, $t5, $t4
	b	.LBB3_3
.LBB3_6:                                # %.preheader.preheader
	slli.d	$a2, $t2, 2
	ldx.w	$a2, $a1, $a2
	ld.w	$a3, $a0, 4
	st.w	$a2, $a0, 0
	ld.w	$a2, $a0, 8
	slli.d	$a3, $a3, 2
	ld.w	$a4, $a0, 12
	ldx.w	$a3, $a1, $a3
	slli.d	$a2, $a2, 2
	ldx.w	$a2, $a1, $a2
	slli.d	$a4, $a4, 2
	ldx.w	$a4, $a1, $a4
	st.w	$a3, $a0, 4
	ld.w	$a3, $a0, 16
	st.w	$a2, $a0, 8
	st.w	$a4, $a0, 12
	ld.w	$a2, $a0, 20
	slli.d	$a3, $a3, 2
	ld.w	$a4, $a0, 24
	ldx.w	$a3, $a1, $a3
	slli.d	$a2, $a2, 2
	ldx.w	$a2, $a1, $a2
	slli.d	$a4, $a4, 2
	ldx.w	$a4, $a1, $a4
	st.w	$a3, $a0, 16
	ld.w	$a3, $a0, 28
	st.w	$a2, $a0, 20
	st.w	$a4, $a0, 24
	ld.w	$a2, $a0, 32
	slli.d	$a3, $a3, 2
	ld.w	$a4, $a0, 36
	ldx.w	$a3, $a1, $a3
	slli.d	$a2, $a2, 2
	ldx.w	$a2, $a1, $a2
	slli.d	$a4, $a4, 2
	ldx.w	$a4, $a1, $a4
	st.w	$a3, $a0, 28
	ld.w	$a3, $a0, 40
	st.w	$a2, $a0, 32
	st.w	$a4, $a0, 36
	ld.w	$a2, $a0, 44
	slli.d	$a3, $a3, 2
	ld.w	$a4, $a0, 48
	ldx.w	$a3, $a1, $a3
	slli.d	$a2, $a2, 2
	ldx.w	$a2, $a1, $a2
	slli.d	$a4, $a4, 2
	ldx.w	$a4, $a1, $a4
	st.w	$a3, $a0, 40
	ld.w	$a3, $a0, 52
	st.w	$a2, $a0, 44
	st.w	$a4, $a0, 48
	ld.w	$a2, $a0, 56
	slli.d	$a3, $a3, 2
	ldx.w	$a3, $a1, $a3
	ld.w	$a4, $a0, 60
	slli.d	$a2, $a2, 2
	ld.w	$a5, $a0, 64
	ldx.w	$a2, $a1, $a2
	slli.d	$a4, $a4, 2
	ldx.w	$a4, $a1, $a4
	slli.d	$a5, $a5, 2
	ldx.w	$a1, $a1, $a5
	st.w	$a3, $a0, 52
	st.w	$a2, $a0, 56
	st.w	$a4, $a0, 60
	st.w	$a1, $a0, 64
	ret
.Lfunc_end3:
	.size	gen_poly, .Lfunc_end3-gen_poly
                                        # -- End function
	.type	inited,@object                  # @inited
	.local	inited
	.comm	inited,1,4
	.type	recd,@object                    # @recd
	.local	recd
	.comm	recd,1020,8
	.type	index_of,@object                # @index_of
	.local	index_of
	.comm	index_of,1024,4
	.type	data,@object                    # @data
	.local	data
	.comm	data,956,8
	.type	bb,@object                      # @bb
	.local	bb
	.comm	bb,64,8
	.type	alpha_to,@object                # @alpha_to
	.local	alpha_to
	.comm	alpha_to,1024,16
	.type	gg,@object                      # @gg
	.local	gg
	.comm	gg,68,4
	.section	".note.GNU-stack","",@progbits
	.addrsig
