	.file	"crc32.be.c"
	.text
	.globl	main                            # -- Begin function main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:
	addi.d	$sp, $sp, -480
	st.d	$ra, $sp, 472                   # 8-byte Folded Spill
	st.d	$fp, $sp, 464                   # 8-byte Folded Spill
	st.d	$s0, $sp, 456                   # 8-byte Folded Spill
	st.d	$s1, $sp, 448                   # 8-byte Folded Spill
	st.d	$s2, $sp, 440                   # 8-byte Folded Spill
	st.d	$s3, $sp, 432                   # 8-byte Folded Spill
	st.d	$s4, $sp, 424                   # 8-byte Folded Spill
	st.d	$s5, $sp, 416                   # 8-byte Folded Spill
	st.d	$s6, $sp, 408                   # 8-byte Folded Spill
	st.d	$s7, $sp, 400                   # 8-byte Folded Spill
	st.d	$s8, $sp, 392                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(CRCTable)
	addi.d	$a1, $a0, %pc_lo12(CRCTable)
	ld.w	$t6, $a1, 0
	move	$a2, $zero
	move	$a0, $zero
	lu12i.w	$a3, 8
	ori	$a3, $a3, 1032
	xor	$a3, $t6, $a3
	st.d	$a3, $sp, 384                   # 8-byte Folded Spill
	lu12i.w	$a3, 16
	ori	$a3, $a3, 2064
	xor	$a3, $t6, $a3
	st.d	$a3, $sp, 376                   # 8-byte Folded Spill
	lu12i.w	$a3, 24
	ori	$a3, $a3, 3096
	xor	$a3, $t6, $a3
	st.d	$a3, $sp, 368                   # 8-byte Folded Spill
	lu12i.w	$a3, 33
	ori	$a3, $a3, 32
	xor	$a3, $t6, $a3
	st.d	$a3, $sp, 360                   # 8-byte Folded Spill
	lu12i.w	$a3, 41
	ori	$a3, $a3, 1064
	xor	$a3, $t6, $a3
	st.d	$a3, $sp, 352                   # 8-byte Folded Spill
	lu12i.w	$a3, 49
	ori	$a3, $a3, 2096
	xor	$a3, $t6, $a3
	st.d	$a3, $sp, 344                   # 8-byte Folded Spill
	lu12i.w	$a3, 57
	ori	$a3, $a3, 3128
	xor	$a3, $t6, $a3
	st.d	$a3, $sp, 336                   # 8-byte Folded Spill
	lu12i.w	$a3, 66
	ori	$a3, $a3, 64
	xor	$a3, $t6, $a3
	st.d	$a3, $sp, 328                   # 8-byte Folded Spill
	lu12i.w	$a3, 74
	ori	$a3, $a3, 1096
	xor	$a3, $t6, $a3
	st.d	$a3, $sp, 320                   # 8-byte Folded Spill
	lu12i.w	$a3, 82
	ori	$a3, $a3, 2128
	xor	$a3, $t6, $a3
	st.d	$a3, $sp, 312                   # 8-byte Folded Spill
	lu12i.w	$a3, 90
	ori	$a3, $a3, 3160
	xor	$a3, $t6, $a3
	st.d	$a3, $sp, 304                   # 8-byte Folded Spill
	lu12i.w	$a3, 99
	ori	$a3, $a3, 96
	xor	$a3, $t6, $a3
	st.d	$a3, $sp, 296                   # 8-byte Folded Spill
	lu12i.w	$a3, 107
	ori	$a3, $a3, 1128
	xor	$a3, $t6, $a3
	st.d	$a3, $sp, 288                   # 8-byte Folded Spill
	lu12i.w	$a3, 115
	ori	$a3, $a3, 2160
	xor	$a3, $t6, $a3
	st.d	$a3, $sp, 280                   # 8-byte Folded Spill
	lu12i.w	$a3, 123
	ori	$a3, $a3, 3192
	xor	$a3, $t6, $a3
	st.d	$a3, $sp, 272                   # 8-byte Folded Spill
	lu12i.w	$a3, 132
	ori	$a3, $a3, 128
	xor	$a3, $t6, $a3
	st.d	$a3, $sp, 264                   # 8-byte Folded Spill
	lu12i.w	$a3, 140
	ori	$a3, $a3, 1160
	xor	$a3, $t6, $a3
	st.d	$a3, $sp, 256                   # 8-byte Folded Spill
	lu12i.w	$a3, 148
	ori	$a3, $a3, 2192
	xor	$a3, $t6, $a3
	st.d	$a3, $sp, 248                   # 8-byte Folded Spill
	lu12i.w	$a3, 156
	ori	$a3, $a3, 3224
	xor	$a3, $t6, $a3
	st.d	$a3, $sp, 240                   # 8-byte Folded Spill
	lu12i.w	$a3, 165
	ori	$a3, $a3, 160
	xor	$a3, $t6, $a3
	st.d	$a3, $sp, 232                   # 8-byte Folded Spill
	lu12i.w	$a3, 173
	ori	$a3, $a3, 1192
	xor	$a3, $t6, $a3
	st.d	$a3, $sp, 224                   # 8-byte Folded Spill
	lu12i.w	$a3, 181
	ori	$a3, $a3, 2224
	xor	$a3, $t6, $a3
	st.d	$a3, $sp, 216                   # 8-byte Folded Spill
	lu12i.w	$a3, 189
	ori	$a3, $a3, 3256
	xor	$a3, $t6, $a3
	st.d	$a3, $sp, 208                   # 8-byte Folded Spill
	lu12i.w	$a3, 198
	ori	$a3, $a3, 192
	xor	$a3, $t6, $a3
	st.d	$a3, $sp, 200                   # 8-byte Folded Spill
	lu12i.w	$a3, 206
	ori	$a3, $a3, 1224
	xor	$a3, $t6, $a3
	st.d	$a3, $sp, 192                   # 8-byte Folded Spill
	lu12i.w	$a3, 214
	ori	$a3, $a3, 2256
	xor	$a3, $t6, $a3
	st.d	$a3, $sp, 184                   # 8-byte Folded Spill
	lu12i.w	$a3, 222
	ori	$a3, $a3, 3288
	xor	$a3, $t6, $a3
	st.d	$a3, $sp, 176                   # 8-byte Folded Spill
	lu12i.w	$a3, 231
	ori	$a3, $a3, 224
	xor	$a3, $t6, $a3
	st.d	$a3, $sp, 168                   # 8-byte Folded Spill
	lu12i.w	$a3, 239
	ori	$a3, $a3, 1256
	xor	$a3, $t6, $a3
	st.d	$a3, $sp, 160                   # 8-byte Folded Spill
	lu12i.w	$a3, 247
	ori	$a3, $a3, 2288
	xor	$a3, $t6, $a3
	st.d	$a3, $sp, 152                   # 8-byte Folded Spill
	lu12i.w	$a3, 255
	ori	$a3, $a3, 3320
	xor	$a3, $t6, $a3
	st.d	$a3, $sp, 144                   # 8-byte Folded Spill
	lu12i.w	$a3, 264
	ori	$a3, $a3, 256
	xor	$a3, $t6, $a3
	st.d	$a3, $sp, 136                   # 8-byte Folded Spill
	lu12i.w	$a3, 256
	ori	$a3, $a3, 1288
	xor	$a3, $t6, $a3
	st.d	$a3, $sp, 128                   # 8-byte Folded Spill
	lu12i.w	$a3, 280
	ori	$a3, $a3, 2320
	xor	$a3, $t6, $a3
	st.d	$a3, $sp, 120                   # 8-byte Folded Spill
	lu12i.w	$a3, 272
	ori	$a3, $a3, 3352
	xor	$a3, $t6, $a3
	st.d	$a3, $sp, 112                   # 8-byte Folded Spill
	lu12i.w	$a3, 297
	ori	$a3, $a3, 288
	xor	$a3, $t6, $a3
	st.d	$a3, $sp, 104                   # 8-byte Folded Spill
	lu12i.w	$a3, 289
	ori	$a3, $a3, 1320
	xor	$a3, $t6, $a3
	st.d	$a3, $sp, 96                    # 8-byte Folded Spill
	lu12i.w	$a3, 313
	ori	$a3, $a3, 2352
	xor	$a3, $t6, $a3
	st.d	$a3, $sp, 88                    # 8-byte Folded Spill
	lu12i.w	$a3, 305
	ori	$a3, $a3, 3384
	xor	$a3, $t6, $a3
	st.d	$a3, $sp, 80                    # 8-byte Folded Spill
	lu12i.w	$a3, 330
	ori	$a3, $a3, 320
	xor	$a3, $t6, $a3
	st.d	$a3, $sp, 72                    # 8-byte Folded Spill
	lu12i.w	$a3, 322
	ori	$a3, $a3, 1352
	xor	$a3, $t6, $a3
	st.d	$a3, $sp, 64                    # 8-byte Folded Spill
	lu12i.w	$a3, 346
	ori	$a3, $a3, 2384
	xor	$a3, $t6, $a3
	st.d	$a3, $sp, 56                    # 8-byte Folded Spill
	lu12i.w	$a3, 338
	ori	$a3, $a3, 3416
	xor	$a3, $t6, $a3
	st.d	$a3, $sp, 48                    # 8-byte Folded Spill
	lu12i.w	$a3, 363
	ori	$a3, $a3, 352
	xor	$a3, $t6, $a3
	st.d	$a3, $sp, 40                    # 8-byte Folded Spill
	lu12i.w	$a3, 355
	ori	$a3, $a3, 1384
	xor	$a3, $t6, $a3
	st.d	$a3, $sp, 32                    # 8-byte Folded Spill
	lu12i.w	$a3, 379
	ori	$a3, $a3, 2416
	xor	$a3, $t6, $a3
	st.d	$a3, $sp, 24                    # 8-byte Folded Spill
	lu12i.w	$a3, 371
	ori	$a3, $a3, 3448
	xor	$a3, $t6, $a3
	st.d	$a3, $sp, 16                    # 8-byte Folded Spill
	lu12i.w	$a3, 396
	ori	$a3, $a3, 384
	xor	$a3, $t6, $a3
	st.d	$a3, $sp, 8                     # 8-byte Folded Spill
	lu12i.w	$a3, 388
	ori	$a3, $a3, 1416
	xor	$ra, $t6, $a3
	lu12i.w	$a3, 412
	ori	$a3, $a3, 2448
	xor	$a3, $t6, $a3
	lu12i.w	$a4, 404
	ori	$a4, $a4, 3480
	xor	$a4, $t6, $a4
	lu12i.w	$a5, 429
	ori	$a5, $a5, 416
	xor	$a5, $t6, $a5
	lu12i.w	$a6, 421
	ori	$a6, $a6, 1448
	xor	$a6, $t6, $a6
	lu12i.w	$a7, 445
	ori	$a7, $a7, 2480
	xor	$a7, $t6, $a7
	lu12i.w	$t0, 437
	ori	$t0, $t0, 3512
	xor	$t0, $t6, $t0
	lu12i.w	$t1, 462
	ori	$t1, $t1, 448
	xor	$t1, $t6, $t1
	lu12i.w	$t2, 454
	ori	$t2, $t2, 1480
	xor	$t2, $t6, $t2
	lu12i.w	$t3, 478
	ori	$t3, $t3, 2512
	xor	$t3, $t6, $t3
	lu12i.w	$t4, 470
	ori	$t4, $t4, 3544
	xor	$t4, $t6, $t4
	lu12i.w	$t5, 495
	ori	$t5, $t5, 480
	xor	$t5, $t6, $t5
	lu12i.w	$t7, 487
	ori	$t7, $t7, 1512
	xor	$t7, $t6, $t7
	lu12i.w	$t8, 511
	ori	$t8, $t8, 2544
	xor	$t8, $t6, $t8
	lu12i.w	$fp, 503
	ori	$fp, $fp, 3576
	xor	$t6, $t6, $fp
	lu12i.w	$fp, 528
	ori	$fp, $fp, 512
	vreplgr2vr.w	$vr0, $fp
	lu12i.w	$fp, 1056
	ori	$fp, $fp, 1024
	vreplgr2vr.w	$vr1, $fp
	lu12i.w	$fp, 1584
	ori	$fp, $fp, 1536
	vreplgr2vr.w	$vr2, $fp
	lu12i.w	$fp, -4096
	lu32i.d	$fp, 0
	ori	$s0, $zero, 28
	ori	$s1, $zero, 1
	b	.LBB0_2
	.p2align	4, , 16
.LBB0_1:                                # %crc_table.exit
                                        #   in Loop: Header=BB0_2 Depth=1
	pcalau12i	$s2, %pc_hi20(main.sample)
	addi.d	$s2, $s2, %pc_lo12(main.sample)
	ldx.w	$s3, $s2, $a2
	ldx.w	$s2, $s2, $s0
	xor	$s4, $s2, $s3
	and	$s5, $s4, $fp
	srli.d	$s5, $s5, 22
	ldx.w	$s6, $a1, $s5
	slli.d	$s4, $s4, 8
	xor	$s7, $s6, $s4
	and	$s7, $s7, $fp
	srli.d	$s7, $s7, 22
	ldx.w	$s7, $a1, $s7
	slli.d	$s3, $s3, 16
	slli.d	$s6, $s6, 8
	xor	$s6, $s7, $s6
	xor	$s6, $s6, $s3
	slli.d	$s7, $s2, 16
	xor	$s8, $s6, $s7
	and	$s8, $s8, $fp
	srli.d	$s8, $s8, 22
	ldx.w	$s8, $a1, $s8
	slli.d	$s6, $s6, 8
	xor	$s6, $s6, $s8
	slli.d	$s2, $s2, 24
	xor	$s8, $s6, $s2
	and	$s8, $s8, $fp
	srli.d	$s8, $s8, 22
	ldx.w	$s8, $a1, $s8
	slli.w	$s6, $s6, 8
	xor	$s6, $s6, $s8
	pcalau12i	$s8, %pc_hi20(.L.crctable)
	addi.d	$s8, $s8, %pc_lo12(.L.crctable)
	ldx.w	$s5, $s8, $s5
	xor	$s4, $s5, $s4
	and	$s4, $s4, $fp
	srli.d	$s4, $s4, 22
	ldx.w	$s4, $s8, $s4
	slli.d	$s5, $s5, 8
	xor	$s4, $s4, $s5
	xor	$s3, $s4, $s3
	xor	$s4, $s3, $s7
	and	$s4, $s4, $fp
	srli.d	$s4, $s4, 22
	ldx.w	$s4, $s8, $s4
	slli.d	$s3, $s3, 8
	xor	$s3, $s3, $s4
	xor	$s2, $s3, $s2
	and	$s2, $s2, $fp
	srli.d	$s2, $s2, 22
	ldx.w	$s2, $s8, $s2
	slli.w	$s3, $s3, 8
	xor	$s2, $s3, $s2
	xor	$s2, $s6, $s2
	sltui	$s2, $s2, 1
	masknez	$s3, $s1, $s2
	maskeqz	$a0, $a0, $s2
	or	$a0, $a0, $s3
	addi.d	$s0, $s0, -4
	addi.w	$s2, $zero, -4
	addi.d	$a2, $a2, 4
	beq	$s0, $s2, .LBB0_4
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	ld.w	$s2, $a1, 1020
	bnez	$s2, .LBB0_1
# %bb.3:                                # %vector.ph11
                                        #   in Loop: Header=BB0_2 Depth=1
	ld.d	$s2, $sp, 384                   # 8-byte Folded Reload
	st.w	$s2, $a1, 4
	ld.d	$s2, $sp, 376                   # 8-byte Folded Reload
	st.w	$s2, $a1, 8
	ld.d	$s2, $sp, 368                   # 8-byte Folded Reload
	st.w	$s2, $a1, 12
	ld.d	$s2, $sp, 360                   # 8-byte Folded Reload
	st.w	$s2, $a1, 16
	ld.d	$s2, $sp, 352                   # 8-byte Folded Reload
	st.w	$s2, $a1, 20
	ld.d	$s2, $sp, 344                   # 8-byte Folded Reload
	st.w	$s2, $a1, 24
	ld.d	$s2, $sp, 336                   # 8-byte Folded Reload
	st.w	$s2, $a1, 28
	ld.d	$s2, $sp, 328                   # 8-byte Folded Reload
	st.w	$s2, $a1, 32
	ld.d	$s2, $sp, 320                   # 8-byte Folded Reload
	st.w	$s2, $a1, 36
	ld.d	$s2, $sp, 312                   # 8-byte Folded Reload
	st.w	$s2, $a1, 40
	ld.d	$s2, $sp, 304                   # 8-byte Folded Reload
	st.w	$s2, $a1, 44
	ld.d	$s2, $sp, 296                   # 8-byte Folded Reload
	st.w	$s2, $a1, 48
	ld.d	$s2, $sp, 288                   # 8-byte Folded Reload
	st.w	$s2, $a1, 52
	ld.d	$s2, $sp, 280                   # 8-byte Folded Reload
	st.w	$s2, $a1, 56
	ld.d	$s2, $sp, 272                   # 8-byte Folded Reload
	st.w	$s2, $a1, 60
	ld.d	$s2, $sp, 264                   # 8-byte Folded Reload
	st.w	$s2, $a1, 64
	ld.d	$s2, $sp, 256                   # 8-byte Folded Reload
	st.w	$s2, $a1, 68
	ld.d	$s2, $sp, 248                   # 8-byte Folded Reload
	st.w	$s2, $a1, 72
	ld.d	$s2, $sp, 240                   # 8-byte Folded Reload
	st.w	$s2, $a1, 76
	ld.d	$s2, $sp, 232                   # 8-byte Folded Reload
	st.w	$s2, $a1, 80
	ld.d	$s2, $sp, 224                   # 8-byte Folded Reload
	st.w	$s2, $a1, 84
	ld.d	$s2, $sp, 216                   # 8-byte Folded Reload
	st.w	$s2, $a1, 88
	ld.d	$s2, $sp, 208                   # 8-byte Folded Reload
	st.w	$s2, $a1, 92
	ld.d	$s2, $sp, 200                   # 8-byte Folded Reload
	st.w	$s2, $a1, 96
	ld.d	$s2, $sp, 192                   # 8-byte Folded Reload
	st.w	$s2, $a1, 100
	ld.d	$s2, $sp, 184                   # 8-byte Folded Reload
	st.w	$s2, $a1, 104
	ld.d	$s2, $sp, 176                   # 8-byte Folded Reload
	st.w	$s2, $a1, 108
	ld.d	$s2, $sp, 168                   # 8-byte Folded Reload
	st.w	$s2, $a1, 112
	ld.d	$s2, $sp, 160                   # 8-byte Folded Reload
	st.w	$s2, $a1, 116
	ld.d	$s2, $sp, 152                   # 8-byte Folded Reload
	st.w	$s2, $a1, 120
	ld.d	$s2, $sp, 144                   # 8-byte Folded Reload
	st.w	$s2, $a1, 124
	ld.d	$s2, $sp, 136                   # 8-byte Folded Reload
	st.w	$s2, $a1, 128
	ld.d	$s2, $sp, 128                   # 8-byte Folded Reload
	st.w	$s2, $a1, 132
	ld.d	$s2, $sp, 120                   # 8-byte Folded Reload
	st.w	$s2, $a1, 136
	ld.d	$s2, $sp, 112                   # 8-byte Folded Reload
	st.w	$s2, $a1, 140
	ld.d	$s2, $sp, 104                   # 8-byte Folded Reload
	st.w	$s2, $a1, 144
	ld.d	$s2, $sp, 96                    # 8-byte Folded Reload
	st.w	$s2, $a1, 148
	ld.d	$s2, $sp, 88                    # 8-byte Folded Reload
	st.w	$s2, $a1, 152
	ld.d	$s2, $sp, 80                    # 8-byte Folded Reload
	st.w	$s2, $a1, 156
	ld.d	$s2, $sp, 72                    # 8-byte Folded Reload
	st.w	$s2, $a1, 160
	ld.d	$s2, $sp, 64                    # 8-byte Folded Reload
	st.w	$s2, $a1, 164
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	st.w	$s2, $a1, 168
	ld.d	$s2, $sp, 48                    # 8-byte Folded Reload
	st.w	$s2, $a1, 172
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	st.w	$s2, $a1, 176
	ld.d	$s2, $sp, 32                    # 8-byte Folded Reload
	st.w	$s2, $a1, 180
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	st.w	$s2, $a1, 184
	ld.d	$s2, $sp, 16                    # 8-byte Folded Reload
	st.w	$s2, $a1, 188
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	st.w	$s2, $a1, 192
	st.w	$ra, $a1, 196
	st.w	$a3, $a1, 200
	st.w	$a4, $a1, 204
	st.w	$a5, $a1, 208
	st.w	$a6, $a1, 212
	st.w	$a7, $a1, 216
	st.w	$t0, $a1, 220
	st.w	$t1, $a1, 224
	st.w	$t2, $a1, 228
	st.w	$t3, $a1, 232
	st.w	$t4, $a1, 236
	st.w	$t5, $a1, 240
	st.w	$t7, $a1, 244
	vld	$vr3, $a1, 0
	vld	$vr4, $a1, 16
	st.w	$t8, $a1, 248
	st.w	$t6, $a1, 252
	vxor.v	$vr7, $vr3, $vr0
	vxor.v	$vr8, $vr4, $vr0
	vld	$vr5, $a1, 32
	vld	$vr6, $a1, 48
	vst	$vr7, $a1, 256
	vst	$vr8, $a1, 272
	vxor.v	$vr9, $vr5, $vr0
	vxor.v	$vr10, $vr6, $vr0
	vld	$vr7, $a1, 64
	vld	$vr8, $a1, 80
	vst	$vr9, $a1, 288
	vst	$vr10, $a1, 304
	vxor.v	$vr11, $vr7, $vr0
	vxor.v	$vr12, $vr8, $vr0
	vld	$vr9, $a1, 96
	vld	$vr10, $a1, 112
	vst	$vr11, $a1, 320
	vst	$vr12, $a1, 336
	vxor.v	$vr13, $vr9, $vr0
	vxor.v	$vr14, $vr10, $vr0
	vld	$vr11, $a1, 128
	vld	$vr12, $a1, 144
	vst	$vr13, $a1, 352
	vst	$vr14, $a1, 368
	vxor.v	$vr15, $vr11, $vr0
	vxor.v	$vr16, $vr12, $vr0
	vld	$vr13, $a1, 160
	vld	$vr14, $a1, 176
	vst	$vr15, $a1, 384
	vst	$vr16, $a1, 400
	vxor.v	$vr17, $vr13, $vr0
	vxor.v	$vr18, $vr14, $vr0
	vld	$vr15, $a1, 192
	vld	$vr16, $a1, 208
	vst	$vr17, $a1, 416
	vst	$vr18, $a1, 432
	vxor.v	$vr19, $vr15, $vr0
	vxor.v	$vr20, $vr16, $vr0
	vld	$vr17, $a1, 224
	vld	$vr18, $a1, 240
	vst	$vr19, $a1, 448
	vst	$vr20, $a1, 464
	vxor.v	$vr19, $vr17, $vr0
	vxor.v	$vr20, $vr18, $vr0
	vld	$vr21, $a1, 0
	vst	$vr19, $a1, 480
	vst	$vr20, $a1, 496
	vld	$vr19, $a1, 16
	vxor.v	$vr20, $vr21, $vr1
	vst	$vr20, $a1, 512
	vld	$vr20, $a1, 32
	vld	$vr21, $a1, 48
	vxor.v	$vr19, $vr19, $vr1
	vst	$vr19, $a1, 528
	vxor.v	$vr19, $vr20, $vr1
	vxor.v	$vr20, $vr21, $vr1
	vld	$vr21, $a1, 64
	vst	$vr19, $a1, 544
	vst	$vr20, $a1, 560
	vld	$vr19, $a1, 80
	vxor.v	$vr20, $vr21, $vr1
	vst	$vr20, $a1, 576
	vld	$vr20, $a1, 96
	vld	$vr21, $a1, 112
	vxor.v	$vr19, $vr19, $vr1
	vst	$vr19, $a1, 592
	vxor.v	$vr19, $vr20, $vr1
	vxor.v	$vr20, $vr21, $vr1
	vld	$vr21, $a1, 128
	vst	$vr19, $a1, 608
	vst	$vr20, $a1, 624
	vld	$vr19, $a1, 144
	vxor.v	$vr20, $vr21, $vr1
	vst	$vr20, $a1, 640
	vld	$vr20, $a1, 160
	vld	$vr21, $a1, 176
	vxor.v	$vr19, $vr19, $vr1
	vst	$vr19, $a1, 656
	vxor.v	$vr19, $vr20, $vr1
	vxor.v	$vr20, $vr21, $vr1
	vld	$vr21, $a1, 192
	vst	$vr19, $a1, 672
	vst	$vr20, $a1, 688
	vld	$vr19, $a1, 208
	vxor.v	$vr20, $vr21, $vr1
	vst	$vr20, $a1, 704
	vld	$vr20, $a1, 224
	vld	$vr21, $a1, 240
	vxor.v	$vr19, $vr19, $vr1
	vst	$vr19, $a1, 720
	vxor.v	$vr19, $vr20, $vr1
	vxor.v	$vr20, $vr21, $vr1
	vst	$vr19, $a1, 736
	vst	$vr20, $a1, 752
	vxor.v	$vr3, $vr3, $vr2
	vxor.v	$vr4, $vr4, $vr2
	vst	$vr3, $a1, 768
	vst	$vr4, $a1, 784
	vxor.v	$vr3, $vr5, $vr2
	vxor.v	$vr4, $vr6, $vr2
	vst	$vr3, $a1, 800
	vst	$vr4, $a1, 816
	vxor.v	$vr3, $vr7, $vr2
	vxor.v	$vr4, $vr8, $vr2
	vst	$vr3, $a1, 832
	vst	$vr4, $a1, 848
	vxor.v	$vr3, $vr9, $vr2
	vxor.v	$vr4, $vr10, $vr2
	vst	$vr3, $a1, 864
	vst	$vr4, $a1, 880
	vxor.v	$vr3, $vr11, $vr2
	vxor.v	$vr4, $vr12, $vr2
	vst	$vr3, $a1, 896
	vst	$vr4, $a1, 912
	vxor.v	$vr3, $vr13, $vr2
	vxor.v	$vr4, $vr14, $vr2
	vst	$vr3, $a1, 928
	vst	$vr4, $a1, 944
	vxor.v	$vr3, $vr15, $vr2
	vxor.v	$vr4, $vr16, $vr2
	vst	$vr3, $a1, 960
	vst	$vr4, $a1, 976
	vxor.v	$vr3, $vr17, $vr2
	vxor.v	$vr4, $vr18, $vr2
	vst	$vr3, $a1, 992
	vst	$vr4, $a1, 1008
	b	.LBB0_1
.LBB0_4:
	ld.d	$s8, $sp, 392                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 400                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 408                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 416                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 424                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 432                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 440                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 448                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 456                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 464                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 472                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 480
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
	.comm	CRCTable,1024,16
	.type	.L.crctable,@object             # @.crctable
	.section	.rodata,"a",@progbits
	.p2align	4, 0x0
.L.crctable:
	.word	0                               # 0x0
	.word	33800                           # 0x8408
	.word	67600                           # 0x10810
	.word	101400                          # 0x18c18
	.word	135200                          # 0x21020
	.word	169000                          # 0x29428
	.word	202800                          # 0x31830
	.word	236600                          # 0x39c38
	.word	270400                          # 0x42040
	.word	304200                          # 0x4a448
	.word	338000                          # 0x52850
	.word	371800                          # 0x5ac58
	.word	405600                          # 0x63060
	.word	439400                          # 0x6b468
	.word	473200                          # 0x73870
	.word	507000                          # 0x7bc78
	.word	540800                          # 0x84080
	.word	574600                          # 0x8c488
	.word	608400                          # 0x94890
	.word	642200                          # 0x9cc98
	.word	676000                          # 0xa50a0
	.word	709800                          # 0xad4a8
	.word	743600                          # 0xb58b0
	.word	777400                          # 0xbdcb8
	.word	811200                          # 0xc60c0
	.word	845000                          # 0xce4c8
	.word	878800                          # 0xd68d0
	.word	912600                          # 0xdecd8
	.word	946400                          # 0xe70e0
	.word	980200                          # 0xef4e8
	.word	1014000                         # 0xf78f0
	.word	1047800                         # 0xffcf8
	.word	1081600                         # 0x108100
	.word	1049864                         # 0x100508
	.word	1149200                         # 0x118910
	.word	1117464                         # 0x110d18
	.word	1216800                         # 0x129120
	.word	1185064                         # 0x121528
	.word	1284400                         # 0x139930
	.word	1252664                         # 0x131d38
	.word	1352000                         # 0x14a140
	.word	1320264                         # 0x142548
	.word	1419600                         # 0x15a950
	.word	1387864                         # 0x152d58
	.word	1487200                         # 0x16b160
	.word	1455464                         # 0x163568
	.word	1554800                         # 0x17b970
	.word	1523064                         # 0x173d78
	.word	1622400                         # 0x18c180
	.word	1590664                         # 0x184588
	.word	1690000                         # 0x19c990
	.word	1658264                         # 0x194d98
	.word	1757600                         # 0x1ad1a0
	.word	1725864                         # 0x1a55a8
	.word	1825200                         # 0x1bd9b0
	.word	1793464                         # 0x1b5db8
	.word	1892800                         # 0x1ce1c0
	.word	1861064                         # 0x1c65c8
	.word	1960400                         # 0x1de9d0
	.word	1928664                         # 0x1d6dd8
	.word	2028000                         # 0x1ef1e0
	.word	1996264                         # 0x1e75e8
	.word	2095600                         # 0x1ff9f0
	.word	2063864                         # 0x1f7df8
	.word	2163200                         # 0x210200
	.word	2197000                         # 0x218608
	.word	2099728                         # 0x200a10
	.word	2133528                         # 0x208e18
	.word	2298400                         # 0x231220
	.word	2332200                         # 0x239628
	.word	2234928                         # 0x221a30
	.word	2268728                         # 0x229e38
	.word	2433600                         # 0x252240
	.word	2467400                         # 0x25a648
	.word	2370128                         # 0x242a50
	.word	2403928                         # 0x24ae58
	.word	2568800                         # 0x273260
	.word	2602600                         # 0x27b668
	.word	2505328                         # 0x263a70
	.word	2539128                         # 0x26be78
	.word	2704000                         # 0x294280
	.word	2737800                         # 0x29c688
	.word	2640528                         # 0x284a90
	.word	2674328                         # 0x28ce98
	.word	2839200                         # 0x2b52a0
	.word	2873000                         # 0x2bd6a8
	.word	2775728                         # 0x2a5ab0
	.word	2809528                         # 0x2adeb8
	.word	2974400                         # 0x2d62c0
	.word	3008200                         # 0x2de6c8
	.word	2910928                         # 0x2c6ad0
	.word	2944728                         # 0x2ceed8
	.word	3109600                         # 0x2f72e0
	.word	3143400                         # 0x2ff6e8
	.word	3046128                         # 0x2e7af0
	.word	3079928                         # 0x2efef8
	.word	3244800                         # 0x318300
	.word	3213064                         # 0x310708
	.word	3181328                         # 0x308b10
	.word	3149592                         # 0x300f18
	.word	3380000                         # 0x339320
	.word	3348264                         # 0x331728
	.word	3316528                         # 0x329b30
	.word	3284792                         # 0x321f38
	.word	3515200                         # 0x35a340
	.word	3483464                         # 0x352748
	.word	3451728                         # 0x34ab50
	.word	3419992                         # 0x342f58
	.word	3650400                         # 0x37b360
	.word	3618664                         # 0x373768
	.word	3586928                         # 0x36bb70
	.word	3555192                         # 0x363f78
	.word	3785600                         # 0x39c380
	.word	3753864                         # 0x394788
	.word	3722128                         # 0x38cb90
	.word	3690392                         # 0x384f98
	.word	3920800                         # 0x3bd3a0
	.word	3889064                         # 0x3b57a8
	.word	3857328                         # 0x3adbb0
	.word	3825592                         # 0x3a5fb8
	.word	4056000                         # 0x3de3c0
	.word	4024264                         # 0x3d67c8
	.word	3992528                         # 0x3cebd0
	.word	3960792                         # 0x3c6fd8
	.word	4191200                         # 0x3ff3e0
	.word	4159464                         # 0x3f77e8
	.word	4127728                         # 0x3efbf0
	.word	4095992                         # 0x3e7ff8
	.word	4326400                         # 0x420400
	.word	4358152                         # 0x428008
	.word	4394000                         # 0x430c10
	.word	4425752                         # 0x438818
	.word	4199456                         # 0x401420
	.word	4231208                         # 0x409028
	.word	4267056                         # 0x411c30
	.word	4298808                         # 0x419838
	.word	4596800                         # 0x462440
	.word	4628552                         # 0x46a048
	.word	4664400                         # 0x472c50
	.word	4696152                         # 0x47a858
	.word	4469856                         # 0x443460
	.word	4501608                         # 0x44b068
	.word	4537456                         # 0x453c70
	.word	4569208                         # 0x45b878
	.word	4867200                         # 0x4a4480
	.word	4898952                         # 0x4ac088
	.word	4934800                         # 0x4b4c90
	.word	4966552                         # 0x4bc898
	.word	4740256                         # 0x4854a0
	.word	4772008                         # 0x48d0a8
	.word	4807856                         # 0x495cb0
	.word	4839608                         # 0x49d8b8
	.word	5137600                         # 0x4e64c0
	.word	5169352                         # 0x4ee0c8
	.word	5205200                         # 0x4f6cd0
	.word	5236952                         # 0x4fe8d8
	.word	5010656                         # 0x4c74e0
	.word	5042408                         # 0x4cf0e8
	.word	5078256                         # 0x4d7cf0
	.word	5110008                         # 0x4df8f8
	.word	5408000                         # 0x528500
	.word	5374216                         # 0x520108
	.word	5475600                         # 0x538d10
	.word	5441816                         # 0x530918
	.word	5281056                         # 0x509520
	.word	5247272                         # 0x501128
	.word	5348656                         # 0x519d30
	.word	5314872                         # 0x511938
	.word	5678400                         # 0x56a540
	.word	5644616                         # 0x562148
	.word	5746000                         # 0x57ad50
	.word	5712216                         # 0x572958
	.word	5551456                         # 0x54b560
	.word	5517672                         # 0x543168
	.word	5619056                         # 0x55bd70
	.word	5585272                         # 0x553978
	.word	5948800                         # 0x5ac580
	.word	5915016                         # 0x5a4188
	.word	6016400                         # 0x5bcd90
	.word	5982616                         # 0x5b4998
	.word	5821856                         # 0x58d5a0
	.word	5788072                         # 0x5851a8
	.word	5889456                         # 0x59ddb0
	.word	5855672                         # 0x5959b8
	.word	6219200                         # 0x5ee5c0
	.word	6185416                         # 0x5e61c8
	.word	6286800                         # 0x5fedd0
	.word	6253016                         # 0x5f69d8
	.word	6092256                         # 0x5cf5e0
	.word	6058472                         # 0x5c71e8
	.word	6159856                         # 0x5dfdf0
	.word	6126072                         # 0x5d79f8
	.word	6489600                         # 0x630600
	.word	6521352                         # 0x638208
	.word	6426128                         # 0x620e10
	.word	6457880                         # 0x628a18
	.word	6362656                         # 0x611620
	.word	6394408                         # 0x619228
	.word	6299184                         # 0x601e30
	.word	6330936                         # 0x609a38
	.word	6760000                         # 0x672640
	.word	6791752                         # 0x67a248
	.word	6696528                         # 0x662e50
	.word	6728280                         # 0x66aa58
	.word	6633056                         # 0x653660
	.word	6664808                         # 0x65b268
	.word	6569584                         # 0x643e70
	.word	6601336                         # 0x64ba78
	.word	7030400                         # 0x6b4680
	.word	7062152                         # 0x6bc288
	.word	6966928                         # 0x6a4e90
	.word	6998680                         # 0x6aca98
	.word	6903456                         # 0x6956a0
	.word	6935208                         # 0x69d2a8
	.word	6839984                         # 0x685eb0
	.word	6871736                         # 0x68dab8
	.word	7300800                         # 0x6f66c0
	.word	7332552                         # 0x6fe2c8
	.word	7237328                         # 0x6e6ed0
	.word	7269080                         # 0x6eead8
	.word	7173856                         # 0x6d76e0
	.word	7205608                         # 0x6df2e8
	.word	7110384                         # 0x6c7ef0
	.word	7142136                         # 0x6cfaf8
	.word	7571200                         # 0x738700
	.word	7537416                         # 0x730308
	.word	7507728                         # 0x728f10
	.word	7473944                         # 0x720b18
	.word	7444256                         # 0x719720
	.word	7410472                         # 0x711328
	.word	7380784                         # 0x709f30
	.word	7347000                         # 0x701b38
	.word	7841600                         # 0x77a740
	.word	7807816                         # 0x772348
	.word	7778128                         # 0x76af50
	.word	7744344                         # 0x762b58
	.word	7714656                         # 0x75b760
	.word	7680872                         # 0x753368
	.word	7651184                         # 0x74bf70
	.word	7617400                         # 0x743b78
	.word	8112000                         # 0x7bc780
	.word	8078216                         # 0x7b4388
	.word	8048528                         # 0x7acf90
	.word	8014744                         # 0x7a4b98
	.word	7985056                         # 0x79d7a0
	.word	7951272                         # 0x7953a8
	.word	7921584                         # 0x78dfb0
	.word	7887800                         # 0x785bb8
	.word	8382400                         # 0x7fe7c0
	.word	8348616                         # 0x7f63c8
	.word	8318928                         # 0x7eefd0
	.word	8285144                         # 0x7e6bd8
	.word	8255456                         # 0x7df7e0
	.word	8221672                         # 0x7d73e8
	.word	8191984                         # 0x7cfff0
	.word	8158200                         # 0x7c7bf8
	.size	.L.crctable, 1024

	.section	".note.GNU-stack","",@progbits
	.addrsig
