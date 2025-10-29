	.file	"crc16.be.data8.c"
	.text
	.globl	main                            # -- Begin function main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:
	pcalau12i	$a0, %pc_hi20(CRCTable)
	addi.d	$a1, $a0, %pc_lo12(CRCTable)
	ld.hu	$a0, $a1, 510
	ld.hu	$t0, $a1, 0
	beqz	$a0, .LBB0_2
# %bb.1:                                # %crc_table.exit.us.preheader
	sltu	$a0, $zero, $t0
	ret
.LBB0_2:                                # %.split.preheader
	addi.d	$sp, $sp, -448
	st.d	$ra, $sp, 440                   # 8-byte Folded Spill
	st.d	$fp, $sp, 432                   # 8-byte Folded Spill
	st.d	$s0, $sp, 424                   # 8-byte Folded Spill
	st.d	$s1, $sp, 416                   # 8-byte Folded Spill
	st.d	$s2, $sp, 408                   # 8-byte Folded Spill
	st.d	$s3, $sp, 400                   # 8-byte Folded Spill
	st.d	$s4, $sp, 392                   # 8-byte Folded Spill
	st.d	$s5, $sp, 384                   # 8-byte Folded Spill
	st.d	$s6, $sp, 376                   # 8-byte Folded Spill
	st.d	$s7, $sp, 368                   # 8-byte Folded Spill
	st.d	$s8, $sp, 360                   # 8-byte Folded Spill
	move	$a2, $zero
	move	$s2, $zero
	move	$a0, $zero
	lu12i.w	$a3, 1
	ori	$a4, $a3, 33
	xor	$a4, $t0, $a4
	st.d	$a4, $sp, 352                   # 8-byte Folded Spill
	lu12i.w	$a4, 2
	ori	$a5, $a4, 66
	xor	$a5, $t0, $a5
	st.d	$a5, $sp, 344                   # 8-byte Folded Spill
	lu12i.w	$a7, 3
	ori	$a5, $a7, 99
	xor	$a5, $t0, $a5
	st.d	$a5, $sp, 336                   # 8-byte Folded Spill
	lu12i.w	$a6, 4
	ori	$a5, $a6, 132
	xor	$a5, $t0, $a5
	st.d	$a5, $sp, 328                   # 8-byte Folded Spill
	lu12i.w	$a5, 5
	ori	$t1, $a5, 165
	xor	$t1, $t0, $t1
	st.d	$t1, $sp, 320                   # 8-byte Folded Spill
	lu12i.w	$t1, 6
	ori	$t2, $t1, 198
	xor	$t2, $t0, $t2
	st.d	$t2, $sp, 312                   # 8-byte Folded Spill
	lu12i.w	$t5, 7
	ori	$t2, $t5, 231
	xor	$t2, $t0, $t2
	st.d	$t2, $sp, 304                   # 8-byte Folded Spill
	lu12i.w	$t3, 8
	ori	$t2, $t3, 264
	xor	$t2, $t0, $t2
	st.d	$t2, $sp, 296                   # 8-byte Folded Spill
	lu12i.w	$t2, 9
	ori	$t4, $t2, 297
	xor	$t4, $t0, $t4
	st.d	$t4, $sp, 288                   # 8-byte Folded Spill
	lu12i.w	$t4, 10
	ori	$t6, $t4, 330
	xor	$t6, $t0, $t6
	st.d	$t6, $sp, 280                   # 8-byte Folded Spill
	lu12i.w	$t8, 11
	ori	$t6, $t8, 363
	xor	$t6, $t0, $t6
	st.d	$t6, $sp, 272                   # 8-byte Folded Spill
	lu12i.w	$t6, 13
	ori	$t7, $a6, 2244
	vreplgr2vr.h	$vr0, $t7
	ori	$t7, $t2, 392
	vreplgr2vr.h	$vr1, $t7
	ori	$t7, $t6, 2380
	vreplgr2vr.h	$vr2, $t7
	lu12i.w	$t7, 12
	ori	$fp, $t7, 396
	xor	$fp, $t0, $fp
	st.d	$fp, $sp, 264                   # 8-byte Folded Spill
	ori	$fp, $t6, 429
	xor	$fp, $t0, $fp
	st.d	$fp, $sp, 256                   # 8-byte Folded Spill
	lu12i.w	$fp, 14
	ori	$s0, $fp, 462
	xor	$s0, $t0, $s0
	st.d	$s0, $sp, 248                   # 8-byte Folded Spill
	lu12i.w	$s0, 15
	ori	$s1, $s0, 495
	xor	$s1, $t0, $s1
	st.d	$s1, $sp, 240                   # 8-byte Folded Spill
	ori	$s1, $a3, 561
	xor	$s1, $t0, $s1
	st.d	$s1, $sp, 232                   # 8-byte Folded Spill
	ori	$s1, $a7, 627
	xor	$s1, $t0, $s1
	st.d	$s1, $sp, 224                   # 8-byte Folded Spill
	ori	$s1, $a4, 594
	xor	$s1, $t0, $s1
	st.d	$s1, $sp, 216                   # 8-byte Folded Spill
	ori	$s1, $a5, 693
	xor	$s1, $t0, $s1
	st.d	$s1, $sp, 208                   # 8-byte Folded Spill
	ori	$s1, $a6, 660
	xor	$s1, $t0, $s1
	st.d	$s1, $sp, 200                   # 8-byte Folded Spill
	ori	$s1, $t5, 759
	xor	$s1, $t0, $s1
	st.d	$s1, $sp, 192                   # 8-byte Folded Spill
	ori	$s1, $t1, 726
	xor	$s1, $t0, $s1
	st.d	$s1, $sp, 184                   # 8-byte Folded Spill
	ori	$s1, $t2, 825
	xor	$s1, $t0, $s1
	st.d	$s1, $sp, 176                   # 8-byte Folded Spill
	ori	$s1, $t3, 792
	xor	$s1, $t0, $s1
	st.d	$s1, $sp, 168                   # 8-byte Folded Spill
	ori	$s1, $t8, 891
	xor	$s1, $t0, $s1
	st.d	$s1, $sp, 160                   # 8-byte Folded Spill
	ori	$s1, $t4, 858
	xor	$s1, $t0, $s1
	st.d	$s1, $sp, 152                   # 8-byte Folded Spill
	ori	$s1, $t6, 957
	xor	$s1, $t0, $s1
	st.d	$s1, $sp, 144                   # 8-byte Folded Spill
	ori	$s1, $t7, 924
	xor	$s1, $t0, $s1
	st.d	$s1, $sp, 136                   # 8-byte Folded Spill
	ori	$s1, $s0, 1023
	xor	$s1, $t0, $s1
	st.d	$s1, $sp, 128                   # 8-byte Folded Spill
	ori	$s1, $fp, 990
	xor	$s1, $t0, $s1
	st.d	$s1, $sp, 120                   # 8-byte Folded Spill
	ori	$s1, $a4, 1122
	xor	$s1, $t0, $s1
	st.d	$s1, $sp, 112                   # 8-byte Folded Spill
	ori	$s1, $a7, 1091
	xor	$s1, $t0, $s1
	st.d	$s1, $sp, 104                   # 8-byte Folded Spill
	ori	$s1, $a3, 1025
	xor	$s1, $t0, $s1
	st.d	$s1, $sp, 96                    # 8-byte Folded Spill
	ori	$s1, $t1, 1254
	xor	$s1, $t0, $s1
	st.d	$s1, $sp, 88                    # 8-byte Folded Spill
	ori	$s1, $t5, 1223
	xor	$s1, $t0, $s1
	st.d	$s1, $sp, 80                    # 8-byte Folded Spill
	ori	$s1, $a6, 1188
	xor	$s1, $t0, $s1
	st.d	$s1, $sp, 72                    # 8-byte Folded Spill
	ori	$s1, $a5, 1157
	xor	$s1, $t0, $s1
	st.d	$s1, $sp, 64                    # 8-byte Folded Spill
	ori	$s1, $t4, 1386
	xor	$s1, $t0, $s1
	st.d	$s1, $sp, 56                    # 8-byte Folded Spill
	ori	$s1, $t8, 1355
	xor	$s1, $t0, $s1
	st.d	$s1, $sp, 48                    # 8-byte Folded Spill
	ori	$s1, $t3, 1320
	xor	$s1, $t0, $s1
	st.d	$s1, $sp, 40                    # 8-byte Folded Spill
	ori	$s1, $t2, 1289
	xor	$s1, $t0, $s1
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	ori	$s1, $fp, 1518
	xor	$s1, $t0, $s1
	st.d	$s1, $sp, 24                    # 8-byte Folded Spill
	ori	$s1, $s0, 1487
	xor	$s1, $t0, $s1
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	ori	$s1, $t7, 1452
	xor	$s5, $t0, $s1
	ori	$s1, $t6, 1421
	xor	$s6, $t0, $s1
	ori	$a7, $a7, 1619
	xor	$s7, $t0, $a7
	ori	$a4, $a4, 1650
	xor	$s8, $t0, $a4
	ori	$a3, $a3, 1553
	xor	$ra, $t0, $a3
	ori	$a3, $t5, 1751
	xor	$a3, $t0, $a3
	ori	$a4, $t1, 1782
	xor	$a4, $t0, $a4
	ori	$a5, $a5, 1685
	xor	$a5, $t0, $a5
	ori	$a6, $a6, 1716
	xor	$a6, $t0, $a6
	ori	$a7, $t8, 1883
	xor	$a7, $t0, $a7
	ori	$t1, $t4, 1914
	xor	$t1, $t0, $t1
	ori	$t2, $t2, 1817
	xor	$t2, $t0, $t2
	ori	$t3, $t3, 1848
	xor	$t3, $t0, $t3
	ori	$t4, $s0, 2015
	xor	$t4, $t0, $t4
	ori	$t5, $fp, 2046
	xor	$t5, $t0, $t5
	ori	$t6, $t6, 1949
	xor	$t6, $t0, $t6
	ori	$t7, $t7, 1980
	xor	$t7, $t0, $t7
	xori	$t8, $t0, 528
	xori	$fp, $t0, 1056
	xori	$t0, $t0, 1584
	ori	$s0, $zero, 1
	ori	$s1, $zero, 28
	bnez	$s2, .LBB0_4
	.p2align	4, , 16
.LBB0_3:                                # %vector.ph14
	ld.d	$s2, $sp, 352                   # 8-byte Folded Reload
	st.h	$s2, $a1, 2
	ld.d	$s2, $sp, 344                   # 8-byte Folded Reload
	st.h	$s2, $a1, 4
	ld.d	$s2, $sp, 336                   # 8-byte Folded Reload
	st.h	$s2, $a1, 6
	ld.d	$s2, $sp, 328                   # 8-byte Folded Reload
	st.h	$s2, $a1, 8
	ld.d	$s2, $sp, 320                   # 8-byte Folded Reload
	st.h	$s2, $a1, 10
	ld.d	$s2, $sp, 312                   # 8-byte Folded Reload
	st.h	$s2, $a1, 12
	ld.d	$s2, $sp, 304                   # 8-byte Folded Reload
	st.h	$s2, $a1, 14
	ld.d	$s2, $sp, 296                   # 8-byte Folded Reload
	st.h	$s2, $a1, 16
	ld.d	$s2, $sp, 288                   # 8-byte Folded Reload
	st.h	$s2, $a1, 18
	ld.d	$s2, $sp, 280                   # 8-byte Folded Reload
	st.h	$s2, $a1, 20
	ld.d	$s2, $sp, 272                   # 8-byte Folded Reload
	st.h	$s2, $a1, 22
	ld.d	$s2, $sp, 264                   # 8-byte Folded Reload
	st.h	$s2, $a1, 24
	ld.d	$s2, $sp, 256                   # 8-byte Folded Reload
	st.h	$s2, $a1, 26
	ld.d	$s2, $sp, 248                   # 8-byte Folded Reload
	st.h	$s2, $a1, 28
	ld.d	$s2, $sp, 240                   # 8-byte Folded Reload
	st.h	$s2, $a1, 30
	ld.d	$s2, $sp, 232                   # 8-byte Folded Reload
	st.h	$s2, $a1, 32
	st.h	$t8, $a1, 34
	ld.d	$s2, $sp, 224                   # 8-byte Folded Reload
	st.h	$s2, $a1, 36
	ld.d	$s2, $sp, 216                   # 8-byte Folded Reload
	st.h	$s2, $a1, 38
	ld.d	$s2, $sp, 208                   # 8-byte Folded Reload
	st.h	$s2, $a1, 40
	ld.d	$s2, $sp, 200                   # 8-byte Folded Reload
	st.h	$s2, $a1, 42
	ld.d	$s2, $sp, 192                   # 8-byte Folded Reload
	st.h	$s2, $a1, 44
	ld.d	$s2, $sp, 184                   # 8-byte Folded Reload
	st.h	$s2, $a1, 46
	ld.d	$s2, $sp, 176                   # 8-byte Folded Reload
	st.h	$s2, $a1, 48
	ld.d	$s2, $sp, 168                   # 8-byte Folded Reload
	st.h	$s2, $a1, 50
	ld.d	$s2, $sp, 160                   # 8-byte Folded Reload
	st.h	$s2, $a1, 52
	ld.d	$s2, $sp, 152                   # 8-byte Folded Reload
	st.h	$s2, $a1, 54
	ld.d	$s2, $sp, 144                   # 8-byte Folded Reload
	st.h	$s2, $a1, 56
	ld.d	$s2, $sp, 136                   # 8-byte Folded Reload
	st.h	$s2, $a1, 58
	ld.d	$s2, $sp, 128                   # 8-byte Folded Reload
	st.h	$s2, $a1, 60
	ld.d	$s2, $sp, 120                   # 8-byte Folded Reload
	st.h	$s2, $a1, 62
	ld.d	$s2, $sp, 112                   # 8-byte Folded Reload
	st.h	$s2, $a1, 64
	ld.d	$s2, $sp, 104                   # 8-byte Folded Reload
	st.h	$s2, $a1, 66
	st.h	$fp, $a1, 68
	ld.d	$s2, $sp, 96                    # 8-byte Folded Reload
	st.h	$s2, $a1, 70
	ld.d	$s2, $sp, 88                    # 8-byte Folded Reload
	st.h	$s2, $a1, 72
	ld.d	$s2, $sp, 80                    # 8-byte Folded Reload
	st.h	$s2, $a1, 74
	ld.d	$s2, $sp, 72                    # 8-byte Folded Reload
	st.h	$s2, $a1, 76
	ld.d	$s2, $sp, 64                    # 8-byte Folded Reload
	st.h	$s2, $a1, 78
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	st.h	$s2, $a1, 80
	ld.d	$s2, $sp, 48                    # 8-byte Folded Reload
	st.h	$s2, $a1, 82
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	st.h	$s2, $a1, 84
	ld.d	$s2, $sp, 32                    # 8-byte Folded Reload
	st.h	$s2, $a1, 86
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	st.h	$s2, $a1, 88
	ld.d	$s2, $sp, 16                    # 8-byte Folded Reload
	st.h	$s2, $a1, 90
	st.h	$s5, $a1, 92
	st.h	$s6, $a1, 94
	st.h	$s7, $a1, 96
	st.h	$s8, $a1, 98
	st.h	$ra, $a1, 100
	st.h	$t0, $a1, 102
	st.h	$a3, $a1, 104
	st.h	$a4, $a1, 106
	st.h	$a5, $a1, 108
	st.h	$a6, $a1, 110
	st.h	$a7, $a1, 112
	st.h	$t1, $a1, 114
	st.h	$t2, $a1, 116
	st.h	$t3, $a1, 118
	st.h	$t4, $a1, 120
	st.h	$t5, $a1, 122
	vld	$vr3, $a1, 0
	vld	$vr4, $a1, 16
	st.h	$t6, $a1, 124
	st.h	$t7, $a1, 126
	vxor.v	$vr5, $vr3, $vr0
	vxor.v	$vr6, $vr4, $vr0
	vld	$vr7, $a1, 32
	vld	$vr8, $a1, 48
	vst	$vr5, $a1, 128
	vst	$vr6, $a1, 144
	vxor.v	$vr5, $vr7, $vr0
	vxor.v	$vr6, $vr8, $vr0
	vld	$vr9, $a1, 64
	vld	$vr10, $a1, 80
	vst	$vr5, $a1, 160
	vst	$vr6, $a1, 176
	vxor.v	$vr5, $vr9, $vr0
	vxor.v	$vr6, $vr10, $vr0
	vld	$vr11, $a1, 96
	vld	$vr12, $a1, 112
	vst	$vr5, $a1, 192
	vst	$vr6, $a1, 208
	vxor.v	$vr5, $vr11, $vr0
	vxor.v	$vr6, $vr12, $vr0
	vst	$vr5, $a1, 224
	vst	$vr6, $a1, 240
	vxor.v	$vr5, $vr3, $vr1
	vst	$vr5, $a1, 256
	vld	$vr5, $a1, 32
	vld	$vr6, $a1, 48
	vxor.v	$vr13, $vr4, $vr1
	vst	$vr13, $a1, 272
	vxor.v	$vr5, $vr5, $vr1
	vxor.v	$vr6, $vr6, $vr1
	vld	$vr13, $a1, 64
	vst	$vr5, $a1, 288
	vst	$vr6, $a1, 304
	vld	$vr5, $a1, 80
	vxor.v	$vr6, $vr13, $vr1
	vst	$vr6, $a1, 320
	vld	$vr6, $a1, 96
	vld	$vr13, $a1, 112
	vxor.v	$vr5, $vr5, $vr1
	vst	$vr5, $a1, 336
	vxor.v	$vr5, $vr6, $vr1
	vxor.v	$vr6, $vr13, $vr1
	vst	$vr5, $a1, 352
	vst	$vr6, $a1, 368
	vxor.v	$vr3, $vr3, $vr2
	vxor.v	$vr4, $vr4, $vr2
	vst	$vr3, $a1, 384
	vst	$vr4, $a1, 400
	vxor.v	$vr3, $vr7, $vr2
	vxor.v	$vr4, $vr8, $vr2
	vst	$vr3, $a1, 416
	vst	$vr4, $a1, 432
	vxor.v	$vr3, $vr9, $vr2
	vxor.v	$vr4, $vr10, $vr2
	vst	$vr3, $a1, 448
	vst	$vr4, $a1, 464
	vxor.v	$vr3, $vr11, $vr2
	vxor.v	$vr4, $vr12, $vr2
	vst	$vr3, $a1, 480
	vst	$vr4, $a1, 496
.LBB0_4:                                # %crc_table.exit
                                        # =>This Inner Loop Header: Depth=1
	pcalau12i	$s2, %pc_hi20(main.sample)
	addi.d	$s2, $s2, %pc_lo12(main.sample)
	ldx.w	$s2, $s2, $a2
	srli.d	$s2, $s2, 7
	andi	$s2, $s2, 510
	ldx.hu	$s3, $a1, $s2
	pcalau12i	$s4, %pc_hi20(.L.crctable)
	addi.d	$s4, $s4, %pc_lo12(.L.crctable)
	ldx.hu	$s2, $s4, $s2
	xor	$s2, $s3, $s2
	sltui	$s2, $s2, 1
	masknez	$s3, $s0, $s2
	maskeqz	$a0, $a0, $s2
	or	$a0, $a0, $s3
	beq	$a2, $s1, .LBB0_6
# %bb.5:                                # %.splitthread-pre-split
                                        #   in Loop: Header=BB0_4 Depth=1
	ld.hu	$s2, $a1, 510
	addi.d	$a2, $a2, 4
	bnez	$s2, .LBB0_4
	b	.LBB0_3
.LBB0_6:
	ld.d	$s8, $sp, 360                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 368                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 376                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 384                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 392                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 400                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 408                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 416                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 424                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 432                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 440                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 448
	ret
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
                                        # -- End function
	.type	main.sample,@object             # @main.sample
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	2, 0x0
main.sample:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	11                              # 0xb
	.word	16                              # 0x10
	.word	129                             # 0x81
	.word	142                             # 0x8e
	.word	196                             # 0xc4
	.word	255                             # 0xff
	.size	main.sample, 32

	.type	CRCTable,@object                # @CRCTable
	.local	CRCTable
	.comm	CRCTable,512,16
	.type	.L.crctable,@object             # @.crctable
	.section	.rodata,"a",@progbits
	.p2align	4, 0x0
.L.crctable:
	.half	0                               # 0x0
	.half	4129                            # 0x1021
	.half	8258                            # 0x2042
	.half	12387                           # 0x3063
	.half	16516                           # 0x4084
	.half	20645                           # 0x50a5
	.half	24774                           # 0x60c6
	.half	28903                           # 0x70e7
	.half	33032                           # 0x8108
	.half	37161                           # 0x9129
	.half	41290                           # 0xa14a
	.half	45419                           # 0xb16b
	.half	49548                           # 0xc18c
	.half	53677                           # 0xd1ad
	.half	57806                           # 0xe1ce
	.half	61935                           # 0xf1ef
	.half	4657                            # 0x1231
	.half	528                             # 0x210
	.half	12915                           # 0x3273
	.half	8786                            # 0x2252
	.half	21173                           # 0x52b5
	.half	17044                           # 0x4294
	.half	29431                           # 0x72f7
	.half	25302                           # 0x62d6
	.half	37689                           # 0x9339
	.half	33560                           # 0x8318
	.half	45947                           # 0xb37b
	.half	41818                           # 0xa35a
	.half	54205                           # 0xd3bd
	.half	50076                           # 0xc39c
	.half	62463                           # 0xf3ff
	.half	58334                           # 0xe3de
	.half	9314                            # 0x2462
	.half	13379                           # 0x3443
	.half	1056                            # 0x420
	.half	5121                            # 0x1401
	.half	25830                           # 0x64e6
	.half	29895                           # 0x74c7
	.half	17572                           # 0x44a4
	.half	21637                           # 0x5485
	.half	42346                           # 0xa56a
	.half	46411                           # 0xb54b
	.half	34088                           # 0x8528
	.half	38153                           # 0x9509
	.half	58862                           # 0xe5ee
	.half	62927                           # 0xf5cf
	.half	50604                           # 0xc5ac
	.half	54669                           # 0xd58d
	.half	13907                           # 0x3653
	.half	9842                            # 0x2672
	.half	5649                            # 0x1611
	.half	1584                            # 0x630
	.half	30423                           # 0x76d7
	.half	26358                           # 0x66f6
	.half	22165                           # 0x5695
	.half	18100                           # 0x46b4
	.half	46939                           # 0xb75b
	.half	42874                           # 0xa77a
	.half	38681                           # 0x9719
	.half	34616                           # 0x8738
	.half	63455                           # 0xf7df
	.half	59390                           # 0xe7fe
	.half	55197                           # 0xd79d
	.half	51132                           # 0xc7bc
	.half	18628                           # 0x48c4
	.half	22757                           # 0x58e5
	.half	26758                           # 0x6886
	.half	30887                           # 0x78a7
	.half	2112                            # 0x840
	.half	6241                            # 0x1861
	.half	10242                           # 0x2802
	.half	14371                           # 0x3823
	.half	51660                           # 0xc9cc
	.half	55789                           # 0xd9ed
	.half	59790                           # 0xe98e
	.half	63919                           # 0xf9af
	.half	35144                           # 0x8948
	.half	39273                           # 0x9969
	.half	43274                           # 0xa90a
	.half	47403                           # 0xb92b
	.half	23285                           # 0x5af5
	.half	19156                           # 0x4ad4
	.half	31415                           # 0x7ab7
	.half	27286                           # 0x6a96
	.half	6769                            # 0x1a71
	.half	2640                            # 0xa50
	.half	14899                           # 0x3a33
	.half	10770                           # 0x2a12
	.half	56317                           # 0xdbfd
	.half	52188                           # 0xcbdc
	.half	64447                           # 0xfbbf
	.half	60318                           # 0xeb9e
	.half	39801                           # 0x9b79
	.half	35672                           # 0x8b58
	.half	47931                           # 0xbb3b
	.half	43802                           # 0xab1a
	.half	27814                           # 0x6ca6
	.half	31879                           # 0x7c87
	.half	19684                           # 0x4ce4
	.half	23749                           # 0x5cc5
	.half	11298                           # 0x2c22
	.half	15363                           # 0x3c03
	.half	3168                            # 0xc60
	.half	7233                            # 0x1c41
	.half	60846                           # 0xedae
	.half	64911                           # 0xfd8f
	.half	52716                           # 0xcdec
	.half	56781                           # 0xddcd
	.half	44330                           # 0xad2a
	.half	48395                           # 0xbd0b
	.half	36200                           # 0x8d68
	.half	40265                           # 0x9d49
	.half	32407                           # 0x7e97
	.half	28342                           # 0x6eb6
	.half	24277                           # 0x5ed5
	.half	20212                           # 0x4ef4
	.half	15891                           # 0x3e13
	.half	11826                           # 0x2e32
	.half	7761                            # 0x1e51
	.half	3696                            # 0xe70
	.half	65439                           # 0xff9f
	.half	61374                           # 0xefbe
	.half	57309                           # 0xdfdd
	.half	53244                           # 0xcffc
	.half	48923                           # 0xbf1b
	.half	44858                           # 0xaf3a
	.half	40793                           # 0x9f59
	.half	36728                           # 0x8f78
	.half	37256                           # 0x9188
	.half	33193                           # 0x81a9
	.half	45514                           # 0xb1ca
	.half	41451                           # 0xa1eb
	.half	53516                           # 0xd10c
	.half	49453                           # 0xc12d
	.half	61774                           # 0xf14e
	.half	57711                           # 0xe16f
	.half	4224                            # 0x1080
	.half	161                             # 0xa1
	.half	12482                           # 0x30c2
	.half	8419                            # 0x20e3
	.half	20484                           # 0x5004
	.half	16421                           # 0x4025
	.half	28742                           # 0x7046
	.half	24679                           # 0x6067
	.half	33721                           # 0x83b9
	.half	37784                           # 0x9398
	.half	41979                           # 0xa3fb
	.half	46042                           # 0xb3da
	.half	49981                           # 0xc33d
	.half	54044                           # 0xd31c
	.half	58239                           # 0xe37f
	.half	62302                           # 0xf35e
	.half	689                             # 0x2b1
	.half	4752                            # 0x1290
	.half	8947                            # 0x22f3
	.half	13010                           # 0x32d2
	.half	16949                           # 0x4235
	.half	21012                           # 0x5214
	.half	25207                           # 0x6277
	.half	29270                           # 0x7256
	.half	46570                           # 0xb5ea
	.half	42443                           # 0xa5cb
	.half	38312                           # 0x95a8
	.half	34185                           # 0x8589
	.half	62830                           # 0xf56e
	.half	58703                           # 0xe54f
	.half	54572                           # 0xd52c
	.half	50445                           # 0xc50d
	.half	13538                           # 0x34e2
	.half	9411                            # 0x24c3
	.half	5280                            # 0x14a0
	.half	1153                            # 0x481
	.half	29798                           # 0x7466
	.half	25671                           # 0x6447
	.half	21540                           # 0x5424
	.half	17413                           # 0x4405
	.half	42971                           # 0xa7db
	.half	47098                           # 0xb7fa
	.half	34713                           # 0x8799
	.half	38840                           # 0x97b8
	.half	59231                           # 0xe75f
	.half	63358                           # 0xf77e
	.half	50973                           # 0xc71d
	.half	55100                           # 0xd73c
	.half	9939                            # 0x26d3
	.half	14066                           # 0x36f2
	.half	1681                            # 0x691
	.half	5808                            # 0x16b0
	.half	26199                           # 0x6657
	.half	30326                           # 0x7676
	.half	17941                           # 0x4615
	.half	22068                           # 0x5634
	.half	55628                           # 0xd94c
	.half	51565                           # 0xc96d
	.half	63758                           # 0xf90e
	.half	59695                           # 0xe92f
	.half	39368                           # 0x99c8
	.half	35305                           # 0x89e9
	.half	47498                           # 0xb98a
	.half	43435                           # 0xa9ab
	.half	22596                           # 0x5844
	.half	18533                           # 0x4865
	.half	30726                           # 0x7806
	.half	26663                           # 0x6827
	.half	6336                            # 0x18c0
	.half	2273                            # 0x8e1
	.half	14466                           # 0x3882
	.half	10403                           # 0x28a3
	.half	52093                           # 0xcb7d
	.half	56156                           # 0xdb5c
	.half	60223                           # 0xeb3f
	.half	64286                           # 0xfb1e
	.half	35833                           # 0x8bf9
	.half	39896                           # 0x9bd8
	.half	43963                           # 0xabbb
	.half	48026                           # 0xbb9a
	.half	19061                           # 0x4a75
	.half	23124                           # 0x5a54
	.half	27191                           # 0x6a37
	.half	31254                           # 0x7a16
	.half	2801                            # 0xaf1
	.half	6864                            # 0x1ad0
	.half	10931                           # 0x2ab3
	.half	14994                           # 0x3a92
	.half	64814                           # 0xfd2e
	.half	60687                           # 0xed0f
	.half	56684                           # 0xdd6c
	.half	52557                           # 0xcd4d
	.half	48554                           # 0xbdaa
	.half	44427                           # 0xad8b
	.half	40424                           # 0x9de8
	.half	36297                           # 0x8dc9
	.half	31782                           # 0x7c26
	.half	27655                           # 0x6c07
	.half	23652                           # 0x5c64
	.half	19525                           # 0x4c45
	.half	15522                           # 0x3ca2
	.half	11395                           # 0x2c83
	.half	7392                            # 0x1ce0
	.half	3265                            # 0xcc1
	.half	61215                           # 0xef1f
	.half	65342                           # 0xff3e
	.half	53085                           # 0xcf5d
	.half	57212                           # 0xdf7c
	.half	44955                           # 0xaf9b
	.half	49082                           # 0xbfba
	.half	36825                           # 0x8fd9
	.half	40952                           # 0x9ff8
	.half	28183                           # 0x6e17
	.half	32310                           # 0x7e36
	.half	20053                           # 0x4e55
	.half	24180                           # 0x5e74
	.half	11923                           # 0x2e93
	.half	16050                           # 0x3eb2
	.half	3793                            # 0xed1
	.half	7920                            # 0x1ef0
	.size	.L.crctable, 512

	.section	".note.GNU-stack","",@progbits
	.addrsig
