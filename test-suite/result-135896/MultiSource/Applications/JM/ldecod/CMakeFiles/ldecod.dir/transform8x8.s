	.file	"transform8x8.c"
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function intrapred8x8
.LCPI0_0:
	.half	0                               # 0x0
	.half	1                               # 0x1
	.half	9                               # 0x9
	.half	10                              # 0xa
	.half	11                              # 0xb
	.half	12                              # 0xc
	.half	13                              # 0xd
	.half	14                              # 0xe
.LCPI0_1:
	.half	3                               # 0x3
	.half	9                               # 0x9
	.half	4                               # 0x4
	.half	11                              # 0xb
	.half	5                               # 0x5
	.half	13                              # 0xd
	.half	6                               # 0x6
	.half	15                              # 0xf
	.text
	.globl	intrapred8x8
	.p2align	5
	.type	intrapred8x8,@function
intrapred8x8:                           # @intrapred8x8
# %bb.0:
	addi.d	$sp, $sp, -512
	st.d	$ra, $sp, 504                   # 8-byte Folded Spill
	st.d	$fp, $sp, 496                   # 8-byte Folded Spill
	st.d	$s0, $sp, 488                   # 8-byte Folded Spill
	st.d	$s1, $sp, 480                   # 8-byte Folded Spill
	st.d	$s2, $sp, 472                   # 8-byte Folded Spill
	st.d	$s3, $sp, 464                   # 8-byte Folded Spill
	st.d	$s4, $sp, 456                   # 8-byte Folded Spill
	st.d	$s5, $sp, 448                   # 8-byte Folded Spill
	st.d	$s6, $sp, 440                   # 8-byte Folded Spill
	st.d	$s7, $sp, 432                   # 8-byte Folded Spill
	st.d	$s8, $sp, 424                   # 8-byte Folded Spill
	pcalau12i	$a2, %got_pc_hi20(dec_picture)
	ld.d	$a2, $a2, %got_pc_lo12(dec_picture)
	move	$a4, $a1
	ld.d	$a3, $a2, 0
	lu12i.w	$a1, 77
	ld.w	$a2, $a0, 72
	ori	$a1, $a1, 1528
	ldx.d	$a1, $a3, $a1
	st.d	$a1, $sp, 88                    # 8-byte Folded Spill
	ld.w	$s2, $a0, 4
	slli.d	$a3, $a2, 2
	bstrpick.d	$a1, $a4, 31, 31
	add.w	$a1, $a4, $a1
	slli.d	$s0, $a1, 2
	ld.w	$a2, $a0, 68
	bstrins.d	$a1, $zero, 0, 0
	st.d	$a4, $sp, 16                    # 8-byte Folded Spill
	sub.w	$s7, $a4, $a1
	alsl.w	$a5, $s7, $a3, 1
	alsl.w	$a1, $a2, $a1, 2
	slli.w	$a2, $s7, 3
	st.d	$a2, $sp, 72                    # 8-byte Folded Spill
	move	$fp, $s0
	bstrins.d	$fp, $zero, 2, 0
	addi.w	$a2, $fp, 0
	ori	$a3, $zero, 1
	move	$s1, $s0
	bstrins.d	$s1, $a3, 2, 0
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	ldptr.d	$a4, $a0, 5544
	ori	$a3, $zero, 3
	move	$s6, $s0
	bstrins.d	$s6, $a3, 2, 0
	slli.d	$a1, $a1, 3
	ldx.d	$a1, $a4, $a1
	ori	$a3, $zero, 5
	move	$s5, $s0
	bstrins.d	$s5, $a3, 2, 0
	ori	$a3, $zero, 7
	move	$s4, $s0
	ldx.bu	$a0, $a1, $a5
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	pcalau12i	$s8, %pc_hi20(getNeighbour)
	ld.d	$a5, $s8, %pc_lo12(getNeighbour)
	bstrins.d	$s4, $a3, 2, 0
	addi.d	$a0, $zero, -1
	alsl.w	$s3, $s7, $a0, 3
	addi.d	$a4, $sp, 176
	move	$a0, $s2
	move	$a1, $s3
	st.d	$a2, $sp, 64                    # 8-byte Folded Spill
	move	$a3, $zero
	jirl	$ra, $a5, 0
	ld.d	$a5, $s8, %pc_lo12(getNeighbour)
	addi.d	$a4, $sp, 200
	addi.w	$a2, $s1, 0
	move	$a0, $s2
	move	$a1, $s3
	st.d	$a2, $sp, 56                    # 8-byte Folded Spill
	move	$a3, $zero
	jirl	$ra, $a5, 0
	ld.d	$a5, $s8, %pc_lo12(getNeighbour)
	ori	$a0, $zero, 2
	move	$a1, $s0
	bstrins.d	$a1, $a0, 2, 0
	addi.d	$a4, $sp, 224
	addi.w	$a2, $a1, 0
	move	$a0, $s2
	move	$a1, $s3
	st.d	$a2, $sp, 40                    # 8-byte Folded Spill
	move	$a3, $zero
	jirl	$ra, $a5, 0
	ld.d	$a5, $s8, %pc_lo12(getNeighbour)
	addi.d	$a4, $sp, 248
	addi.w	$a2, $s6, 0
	move	$a0, $s2
	move	$a1, $s3
	st.d	$a2, $sp, 48                    # 8-byte Folded Spill
	move	$a3, $zero
	jirl	$ra, $a5, 0
	ld.d	$a5, $s8, %pc_lo12(getNeighbour)
	ori	$a0, $zero, 4
	move	$a1, $s0
	bstrins.d	$a1, $a0, 2, 0
	addi.d	$a4, $sp, 272
	addi.w	$a2, $a1, 0
	move	$a0, $s2
	move	$a1, $s3
	st.d	$a2, $sp, 32                    # 8-byte Folded Spill
	move	$a3, $zero
	jirl	$ra, $a5, 0
	ld.d	$a5, $s8, %pc_lo12(getNeighbour)
	addi.d	$a4, $sp, 296
	addi.w	$s6, $s5, 0
	move	$a0, $s2
	move	$a1, $s3
	move	$a2, $s6
	move	$a3, $zero
	jirl	$ra, $a5, 0
	ld.d	$a5, $s8, %pc_lo12(getNeighbour)
	ori	$a0, $zero, 6
	bstrins.d	$s0, $a0, 2, 0
	addi.d	$a4, $sp, 320
	addi.w	$a2, $s0, 0
	move	$a0, $s2
	move	$a1, $s3
	st.d	$a2, $sp, 24                    # 8-byte Folded Spill
	move	$a3, $zero
	jirl	$ra, $a5, 0
	ld.d	$a5, $s8, %pc_lo12(getNeighbour)
	addi.d	$a4, $sp, 344
	addi.w	$s5, $s4, 0
	ld.d	$s4, $sp, 72                    # 8-byte Folded Reload
	move	$a0, $s2
	move	$a1, $s3
	move	$a2, $s5
	move	$a3, $zero
	jirl	$ra, $a5, 0
	ld.d	$a5, $s8, %pc_lo12(getNeighbour)
	addi.w	$s0, $fp, -1
	addi.d	$a4, $sp, 152
	move	$a0, $s2
	move	$a1, $s4
	move	$a2, $s0
	move	$a3, $zero
	jirl	$ra, $a5, 0
	ld.d	$a5, $s8, %pc_lo12(getNeighbour)
	ori	$a0, $zero, 8
	alsl.w	$a1, $s7, $a0, 3
	addi.d	$a4, $sp, 128
	move	$a0, $s2
	move	$a2, $s0
	move	$a3, $zero
	jirl	$ra, $a5, 0
	ld.d	$a5, $s8, %pc_lo12(getNeighbour)
	addi.d	$a4, $sp, 104
	move	$a0, $s2
	move	$a1, $s3
	move	$a2, $s0
	move	$a3, $zero
	jirl	$ra, $a5, 0
	ld.w	$a0, $sp, 128
	beqz	$a0, .LBB0_2
# %bb.1:
	addi.d	$a0, $s7, -1
	sltu	$a0, $zero, $a0
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	bstrins.d	$a1, $zero, 0, 0
	addi.d	$a1, $a1, -2
	sltu	$a1, $zero, $a1
	or	$a0, $a0, $a1
	b	.LBB0_3
.LBB0_2:
	move	$a0, $zero
.LBB0_3:
	pcalau12i	$a1, %pc_hi20(active_pps)
	ld.d	$a1, $a1, %pc_lo12(active_pps)
	ld.w	$a1, $a1, 1148
	st.w	$a0, $sp, 128
	ld.d	$s7, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a6, $sp, 88                    # 8-byte Folded Reload
	beqz	$a1, .LBB0_16
# %bb.4:                                # %.preheader1382
	ld.w	$a1, $sp, 176
	beqz	$a1, .LBB0_21
# %bb.5:
	ld.w	$a1, $sp, 180
	ld.d	$a2, $s7, 16
	slli.d	$a1, $a1, 2
	ldx.wu	$a1, $a2, $a1
	andi	$a1, $a1, 1
	ld.w	$a2, $sp, 200
	beqz	$a2, .LBB0_22
.LBB0_6:
	ld.w	$a2, $sp, 204
	ld.d	$a3, $s7, 16
	slli.d	$a2, $a2, 2
	ldx.w	$a4, $a3, $a2
	ld.w	$a2, $sp, 224
	beqz	$a2, .LBB0_23
.LBB0_7:
	ld.w	$a2, $sp, 228
	ld.d	$a3, $s7, 16
	slli.d	$a2, $a2, 2
	ldx.w	$a3, $a3, $a2
	ld.w	$a2, $sp, 248
	beqz	$a2, .LBB0_24
.LBB0_8:
	ld.w	$a2, $sp, 252
	ld.d	$a5, $s7, 16
	slli.d	$a2, $a2, 2
	ldx.w	$a2, $a5, $a2
	ld.w	$a5, $sp, 272
	and	$a4, $a4, $a1
	beqz	$a5, .LBB0_25
.LBB0_9:
	ld.w	$a1, $sp, 276
	ld.d	$a5, $s7, 16
	slli.d	$a1, $a1, 2
	ldx.w	$a1, $a5, $a1
	ld.w	$a5, $sp, 296
	and	$a4, $a3, $a4
	beqz	$a5, .LBB0_26
.LBB0_10:
	ld.w	$a3, $sp, 300
	ld.d	$a5, $s7, 16
	slli.d	$a3, $a3, 2
	ldx.w	$a3, $a5, $a3
	ld.w	$a5, $sp, 320
	and	$a4, $a2, $a4
	beqz	$a5, .LBB0_27
.LBB0_11:
	ld.w	$a2, $sp, 324
	ld.d	$a5, $s7, 16
	slli.d	$a2, $a2, 2
	ldx.w	$a2, $a5, $a2
	ld.w	$a5, $sp, 344
	and	$a4, $a1, $a4
	beqz	$a5, .LBB0_28
.LBB0_12:
	ld.w	$a1, $sp, 348
	ld.d	$a5, $s7, 16
	slli.d	$a1, $a1, 2
	ldx.w	$a1, $a5, $a1
	ld.w	$a5, $sp, 152
	and	$a3, $a3, $a4
	beqz	$a5, .LBB0_29
.LBB0_13:
	ld.w	$a4, $sp, 156
	ld.d	$a5, $s7, 16
	slli.d	$a4, $a4, 2
	ldx.w	$s1, $a5, $a4
	and	$a2, $a2, $a3
	beqz	$a0, .LBB0_30
.LBB0_14:
	ld.w	$a0, $sp, 132
	ld.d	$a3, $s7, 16
	slli.d	$a0, $a0, 2
	ldx.w	$a0, $a3, $a0
	ld.w	$a3, $sp, 104
	and	$s2, $a1, $a2
	beqz	$a3, .LBB0_31
.LBB0_15:
	ld.w	$a1, $sp, 108
	ld.d	$a2, $s7, 16
	slli.d	$a1, $a1, 2
	ldx.w	$s3, $a2, $a1
	bnez	$s1, .LBB0_17
	b	.LBB0_32
.LBB0_16:
	ld.w	$s2, $sp, 176
	ld.w	$s1, $sp, 152
	ld.w	$s3, $sp, 104
	beqz	$s1, .LBB0_32
.LBB0_17:
	ld.w	$a1, $sp, 172
	slli.d	$a1, $a1, 3
	ld.w	$a2, $sp, 168
	ldx.d	$a1, $a6, $a1
	slli.d	$a3, $a2, 1
	ldx.h	$a3, $a1, $a3
	alsl.d	$a1, $a2, $a1, 1
	st.h	$a3, $sp, 370
	ld.h	$a2, $a1, 2
	st.h	$a2, $sp, 372
	ld.h	$a2, $a1, 4
	st.h	$a2, $sp, 374
	ld.h	$a2, $a1, 6
	st.h	$a2, $sp, 376
	ld.h	$a2, $a1, 8
	st.h	$a2, $sp, 378
	ld.h	$a2, $a1, 10
	st.h	$a2, $sp, 380
	ld.h	$a2, $a1, 12
	st.h	$a2, $sp, 382
	ld.hu	$a1, $a1, 14
	st.h	$a1, $sp, 384
	beqz	$a0, .LBB0_33
.LBB0_18:
	ld.w	$a0, $sp, 148
	slli.d	$a0, $a0, 3
	ld.w	$a1, $sp, 144
	ldx.d	$a0, $a6, $a0
	slli.d	$a2, $a1, 1
	ldx.h	$a2, $a0, $a2
	alsl.d	$a0, $a1, $a0, 1
	st.h	$a2, $sp, 386
	ld.h	$a1, $a0, 2
	st.h	$a1, $sp, 388
	ld.h	$a1, $a0, 4
	st.h	$a1, $sp, 390
	ld.h	$a1, $a0, 6
	st.h	$a1, $sp, 392
	ld.h	$a1, $a0, 8
	st.h	$a1, $sp, 394
	ld.h	$a1, $a0, 10
	st.h	$a1, $sp, 396
	ld.h	$a1, $a0, 12
	st.h	$a1, $sp, 398
	ld.hu	$a1, $a0, 14
	addi.d	$a0, $sp, 400
	st.h	$a1, $a0, 0
	beqz	$s2, .LBB0_34
.LBB0_19:
	ld.w	$a0, $sp, 196
	slli.d	$a0, $a0, 3
	ld.w	$a1, $sp, 192
	ldx.d	$a0, $a6, $a0
	ld.w	$a2, $sp, 220
	slli.d	$a1, $a1, 1
	ldx.h	$a0, $a0, $a1
	slli.d	$a1, $a2, 3
	ld.w	$a2, $sp, 216
	ldx.d	$a1, $a6, $a1
	ld.w	$a3, $sp, 244
	st.h	$a0, $sp, 402
	slli.d	$a0, $a2, 1
	ldx.h	$a0, $a1, $a0
	slli.d	$a1, $a3, 3
	ld.w	$a2, $sp, 240
	ldx.d	$a1, $a6, $a1
	ld.w	$a3, $sp, 268
	st.h	$a0, $sp, 404
	slli.d	$a0, $a2, 1
	ldx.h	$a0, $a1, $a0
	slli.d	$a1, $a3, 3
	ld.w	$a2, $sp, 264
	ldx.d	$a1, $a6, $a1
	ld.w	$a3, $sp, 292
	st.h	$a0, $sp, 406
	slli.d	$a0, $a2, 1
	ldx.h	$a0, $a1, $a0
	slli.d	$a1, $a3, 3
	ld.w	$a2, $sp, 288
	ldx.d	$a1, $a6, $a1
	ld.w	$a3, $sp, 316
	st.h	$a0, $sp, 408
	slli.d	$a0, $a2, 1
	ldx.h	$a0, $a1, $a0
	slli.d	$a1, $a3, 3
	ld.w	$a2, $sp, 312
	ldx.d	$a1, $a6, $a1
	ld.w	$a3, $sp, 340
	st.h	$a0, $sp, 410
	slli.d	$a0, $a2, 1
	ldx.h	$a0, $a1, $a0
	slli.d	$a1, $a3, 3
	ld.w	$a2, $sp, 336
	ldx.d	$a1, $a6, $a1
	ld.w	$a3, $sp, 364
	st.h	$a0, $sp, 412
	slli.d	$a0, $a2, 1
	ldx.h	$a0, $a1, $a0
	slli.d	$a1, $a3, 3
	ld.w	$a2, $sp, 360
	ldx.d	$a1, $a6, $a1
	st.h	$a0, $sp, 414
	slli.d	$a0, $a2, 1
	ldx.hu	$a0, $a1, $a0
	st.h	$a0, $sp, 416
	beqz	$s3, .LBB0_35
.LBB0_20:                               # %.split
	ld.w	$a0, $sp, 124
	slli.d	$a0, $a0, 3
	ld.w	$a1, $sp, 120
	ldx.d	$a0, $a6, $a0
	slli.d	$a1, $a1, 1
	ldx.hu	$a0, $a0, $a1
	move	$a1, $s3
	b	.LBB0_36
.LBB0_21:
	move	$a1, $zero
	ld.w	$a2, $sp, 200
	bnez	$a2, .LBB0_6
.LBB0_22:
	move	$a4, $zero
	ld.w	$a2, $sp, 224
	bnez	$a2, .LBB0_7
.LBB0_23:
	move	$a3, $zero
	ld.w	$a2, $sp, 248
	bnez	$a2, .LBB0_8
.LBB0_24:
	move	$a2, $zero
	ld.w	$a5, $sp, 272
	and	$a4, $a4, $a1
	bnez	$a5, .LBB0_9
.LBB0_25:
	move	$a1, $zero
	ld.w	$a5, $sp, 296
	and	$a4, $a3, $a4
	bnez	$a5, .LBB0_10
.LBB0_26:
	move	$a3, $zero
	ld.w	$a5, $sp, 320
	and	$a4, $a2, $a4
	bnez	$a5, .LBB0_11
.LBB0_27:
	move	$a2, $zero
	ld.w	$a5, $sp, 344
	and	$a4, $a1, $a4
	bnez	$a5, .LBB0_12
.LBB0_28:
	move	$a1, $zero
	ld.w	$a5, $sp, 152
	and	$a3, $a3, $a4
	bnez	$a5, .LBB0_13
.LBB0_29:
	move	$s1, $zero
	and	$a2, $a2, $a3
	bnez	$a0, .LBB0_14
.LBB0_30:
	move	$a0, $zero
	ld.w	$a3, $sp, 104
	and	$s2, $a1, $a2
	bnez	$a3, .LBB0_15
.LBB0_31:
	move	$s3, $zero
	bnez	$s1, .LBB0_17
.LBB0_32:
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1796
	ldx.h	$a1, $s7, $a1
	st.h	$a1, $sp, 382
	st.h	$a1, $sp, 380
	st.h	$a1, $sp, 378
	st.h	$a1, $sp, 376
	st.h	$a1, $sp, 374
	st.h	$a1, $sp, 372
	st.h	$a1, $sp, 370
	st.h	$a1, $sp, 384
	bnez	$a0, .LBB0_18
.LBB0_33:
	addi.d	$a0, $sp, 386
	st.h	$a1, $sp, 400
	st.h	$a1, $sp, 398
	st.h	$a1, $sp, 396
	st.h	$a1, $sp, 394
	st.h	$a1, $sp, 392
	st.h	$a1, $sp, 390
	st.h	$a1, $sp, 388
	st.h	$a1, $a0, 0
	bnez	$s2, .LBB0_19
.LBB0_34:
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1796
	ldx.h	$a0, $s7, $a0
	st.h	$a0, $sp, 414
	st.h	$a0, $sp, 412
	st.h	$a0, $sp, 410
	st.h	$a0, $sp, 408
	st.h	$a0, $sp, 406
	st.h	$a0, $sp, 404
	st.h	$a0, $sp, 402
	st.h	$a0, $sp, 416
	bnez	$s3, .LBB0_20
.LBB0_35:                               # %.split1370
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1796
	ldx.h	$a0, $s7, $a0
	move	$a1, $zero
.LBB0_36:
	st.h	$a0, $sp, 368
	addi.d	$a0, $sp, 368
	move	$a2, $s1
	move	$a3, $s2
	pcaddu18i	$ra, %call36(LowPassForIntra8x8Pred)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 8
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	bltu	$a0, $a1, .LBB0_71
# %bb.37:
	st.d	$s6, $sp, 88                    # 8-byte Folded Spill
	addi.w	$s0, $s4, 2
	addi.w	$s6, $s4, 4
	addi.w	$t6, $s4, 6
	slli.d	$a0, $a1, 2
	pcalau12i	$a1, %pc_hi20(.LJTI0_0)
	addi.d	$a1, $a1, %pc_lo12(.LJTI0_0)
	ldx.w	$a0, $a1, $a0
	addi.w	$fp, $s4, 1
	addi.w	$a4, $s4, 3
	addi.w	$ra, $s4, 5
	add.d	$a0, $a1, $a0
	addi.w	$s8, $s4, 7
	jr	$a0
.LBB0_38:
	bnez	$s1, .LBB0_40
# %bb.39:
	ld.w	$a1, $s7, 4
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB0_40:                               # %.loopexit.loopexit1390
	move	$a0, $zero
	addi.d	$a1, $s7, 104
	slli.d	$a2, $s5, 5
	add.d	$a2, $a1, $a2
	ld.d	$a3, $sp, 24                    # 8-byte Folded Reload
	slli.d	$a3, $a3, 5
	add.d	$a3, $a1, $a3
	ld.d	$a4, $sp, 88                    # 8-byte Folded Reload
	slli.d	$a4, $a4, 5
	add.d	$a4, $a1, $a4
	ld.d	$a5, $sp, 32                    # 8-byte Folded Reload
	slli.d	$a5, $a5, 5
	add.d	$a5, $a1, $a5
	ld.d	$a6, $sp, 48                    # 8-byte Folded Reload
	slli.d	$a6, $a6, 5
	add.d	$a6, $a1, $a6
	ld.d	$a7, $sp, 40                    # 8-byte Folded Reload
	slli.d	$a7, $a7, 5
	add.d	$a7, $a1, $a7
	ld.d	$t0, $sp, 56                    # 8-byte Folded Reload
	slli.d	$t0, $t0, 5
	add.d	$t0, $a1, $t0
	vld	$vr0, $sp, 370
	ld.d	$t1, $sp, 64                    # 8-byte Folded Reload
	slli.d	$t1, $t1, 5
	add.d	$a1, $a1, $t1
	slli.d	$t1, $s4, 1
	vstx	$vr0, $a2, $t1
	vstx	$vr0, $a3, $t1
	vstx	$vr0, $a4, $t1
	vstx	$vr0, $a5, $t1
	vstx	$vr0, $a6, $t1
	vstx	$vr0, $a7, $t1
	vstx	$vr0, $t0, $t1
	vstx	$vr0, $a1, $t1
	b	.LBB0_81
.LBB0_41:
	st.d	$a4, $sp, 80                    # 8-byte Folded Spill
	beqz	$s3, .LBB0_44
# %bb.42:
	beqz	$s2, .LBB0_44
# %bb.43:
	bnez	$s1, .LBB0_45
.LBB0_44:
	ld.w	$a1, $s7, 4
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a0, $a0, %pc_lo12(.L.str.4)
	move	$s1, $ra
	move	$s2, $t6
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	move	$t6, $s2
	move	$ra, $s1
.LBB0_45:
	ld.hu	$a1, $sp, 412
	ld.hu	$a3, $sp, 416
	ld.hu	$a2, $sp, 414
	move	$a0, $zero
	addi.d	$a5, $a1, 2
	add.d	$a3, $a5, $a3
	alsl.d	$a3, $a2, $a3, 1
	srli.d	$a6, $a3, 2
	addi.d	$t8, $s7, 104
	slli.d	$a3, $s5, 5
	ld.hu	$a7, $sp, 410
	add.d	$a4, $t8, $a3
	slli.d	$a3, $s4, 1
	stx.h	$a6, $a4, $a3
	addi.d	$t0, $a7, 2
	add.d	$a2, $t0, $a2
	alsl.d	$a1, $a1, $a2, 1
	srli.d	$a6, $a1, 2
	slli.d	$a1, $fp, 1
	stx.h	$a6, $a4, $a1
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	slli.d	$a2, $a2, 5
	ld.hu	$t1, $sp, 408
	add.d	$a2, $t8, $a2
	stx.h	$a6, $a2, $a3
	alsl.d	$a5, $a7, $a5, 1
	add.d	$a5, $a5, $t1
	srli.d	$a7, $a5, 2
	slli.d	$a5, $s0, 1
	stx.h	$a7, $a4, $a5
	stx.h	$a7, $a2, $a1
	ld.d	$a6, $sp, 88                    # 8-byte Folded Reload
	slli.d	$a6, $a6, 5
	ld.hu	$t3, $sp, 406
	add.d	$a6, $t8, $a6
	stx.h	$a7, $a6, $a3
	alsl.d	$a7, $t1, $t0, 1
	add.d	$a7, $a7, $t3
	srli.d	$t2, $a7, 2
	ld.d	$a7, $sp, 80                    # 8-byte Folded Reload
	slli.d	$a7, $a7, 1
	stx.h	$t2, $a4, $a7
	stx.h	$t2, $a2, $a5
	stx.h	$t2, $a6, $a1
	ld.d	$t0, $sp, 32                    # 8-byte Folded Reload
	slli.d	$t0, $t0, 5
	ld.hu	$t5, $sp, 404
	add.d	$t0, $t8, $t0
	stx.h	$t2, $t0, $a3
	alsl.d	$t1, $t3, $t1, 1
	add.d	$t1, $t1, $t5
	addi.d	$t1, $t1, 2
	srli.d	$t4, $t1, 2
	slli.d	$t1, $s6, 1
	stx.h	$t4, $a4, $t1
	stx.h	$t4, $a2, $a7
	stx.h	$t4, $a6, $a5
	stx.h	$t4, $t0, $a1
	ld.d	$t2, $sp, 48                    # 8-byte Folded Reload
	slli.d	$t2, $t2, 5
	ld.hu	$fp, $sp, 402
	add.d	$t2, $t8, $t2
	stx.h	$t4, $t2, $a3
	alsl.d	$t3, $t5, $t3, 1
	add.d	$s0, $t3, $fp
	slli.d	$t3, $ra, 1
	ld.d	$t4, $sp, 40                    # 8-byte Folded Reload
	slli.d	$t4, $t4, 5
	add.d	$t4, $t8, $t4
	alsl.d	$s1, $fp, $t5, 1
	slli.d	$t5, $t6, 1
	ld.d	$t6, $sp, 56                    # 8-byte Folded Reload
	slli.d	$t6, $t6, 5
	add.d	$t6, $t8, $t6
	slli.d	$t7, $s8, 1
	ld.d	$s2, $sp, 64                    # 8-byte Folded Reload
	slli.d	$s2, $s2, 5
	add.d	$t8, $t8, $s2
	ld.hu	$s2, $sp, 368
	vld	$vr0, $sp, 368
	vld	$vr1, $sp, 370
	vinsgr2vr.h	$vr2, $fp, 0
	vinsgr2vr.h	$vr3, $s2, 0
	pcalau12i	$fp, %pc_hi20(.LCPI0_0)
	vld	$vr4, $fp, %pc_lo12(.LCPI0_0)
	pcalau12i	$fp, %pc_hi20(.LCPI0_1)
	vld	$vr5, $fp, %pc_lo12(.LCPI0_1)
	vpackev.h	$vr2, $vr3, $vr2
	vshuf.h	$vr4, $vr0, $vr2
	vrepli.b	$vr2, 0
	vshuf.h	$vr5, $vr2, $vr0
	vilvl.h	$vr3, $vr2, $vr4
	addi.d	$fp, $s0, 2
	srli.d	$fp, $fp, 2
	stx.h	$fp, $a4, $t3
	stx.h	$fp, $a2, $t1
	stx.h	$fp, $a6, $a7
	stx.h	$fp, $t0, $a5
	stx.h	$fp, $t2, $a1
	stx.h	$fp, $t4, $a3
	add.d	$fp, $s1, $s2
	vilvl.h	$vr4, $vr2, $vr0
	vilvh.h	$vr0, $vr2, $vr0
	addi.d	$fp, $fp, 2
	srli.d	$fp, $fp, 2
	stx.h	$fp, $a4, $t5
	stx.h	$fp, $a2, $t3
	stx.h	$fp, $a6, $t1
	stx.h	$fp, $t0, $a7
	stx.h	$fp, $t2, $a5
	stx.h	$fp, $t4, $a1
	stx.h	$fp, $t6, $a3
	vilvl.h	$vr6, $vr2, $vr1
	vilvh.h	$vr1, $vr2, $vr1
	vslli.w	$vr0, $vr0, 1
	vslli.w	$vr2, $vr4, 1
	vadd.w	$vr2, $vr3, $vr2
	vadd.w	$vr0, $vr5, $vr0
	vadd.w	$vr0, $vr0, $vr1
	vadd.w	$vr1, $vr2, $vr6
	vaddi.wu	$vr1, $vr1, 2
	vaddi.wu	$vr0, $vr0, 2
	vsrli.w	$vr0, $vr0, 2
	vsrli.w	$vr1, $vr1, 2
	vpickev.h	$vr2, $vr0, $vr1
	vpickve2gr.h	$fp, $vr0, 4
	vpickve2gr.h	$s0, $vr0, 2
	vpickve2gr.h	$s1, $vr0, 0
	vpickve2gr.h	$s2, $vr1, 6
	vpickve2gr.h	$s3, $vr1, 4
	vpickve2gr.h	$s4, $vr1, 0
	stx.h	$s4, $a4, $t7
	vpickve2gr.h	$a4, $vr1, 2
	stx.h	$s4, $a2, $t5
	stx.h	$s4, $a6, $t3
	stx.h	$s4, $t0, $t1
	stx.h	$s4, $t2, $a7
	stx.h	$s4, $t4, $a5
	stx.h	$s4, $t6, $a1
	stx.h	$a4, $a2, $t7
	stx.h	$a4, $a6, $t5
	stx.h	$a4, $t0, $t3
	stx.h	$a4, $t2, $t1
	stx.h	$a4, $t4, $a7
	stx.h	$a4, $t6, $a5
	stx.h	$s3, $a6, $t7
	stx.h	$s3, $t0, $t5
	stx.h	$s3, $t2, $t3
	stx.h	$s3, $t4, $t1
	stx.h	$s3, $t6, $a7
	stx.h	$s2, $t0, $t7
	stx.h	$s2, $t2, $t5
	stx.h	$s2, $t4, $t3
	stx.h	$s2, $t6, $t1
	stx.h	$s1, $t2, $t7
	stx.h	$s1, $t4, $t5
	stx.h	$s1, $t6, $t3
	stx.h	$s0, $t4, $t7
	stx.h	$s0, $t6, $t5
	stx.h	$fp, $t6, $t7
	vstx	$vr2, $t8, $a3
	b	.LBB0_81
.LBB0_46:
	beqz	$s2, .LBB0_72
# %bb.47:
	beqz	$s1, .LBB0_72
# %bb.48:
	ld.hu	$a0, $sp, 370
	ld.hu	$a1, $sp, 372
	ld.hu	$a2, $sp, 374
	ld.hu	$a3, $sp, 376
	ld.hu	$a4, $sp, 378
	ld.hu	$a5, $sp, 380
	ld.hu	$a6, $sp, 382
	ld.hu	$a7, $sp, 384
	ld.hu	$t0, $sp, 402
	ld.hu	$t1, $sp, 404
	ld.hu	$t2, $sp, 406
	ld.hu	$t3, $sp, 408
	ld.hu	$t4, $sp, 410
	ld.hu	$t5, $sp, 412
	ld.hu	$t6, $sp, 414
	ld.hu	$t7, $sp, 416
	add.d	$a0, $a0, $a1
	add.d	$a0, $a0, $a2
	add.d	$a0, $a0, $a3
	add.d	$a0, $a0, $a4
	add.d	$a0, $a0, $a5
	add.d	$a0, $a0, $a6
	add.d	$a0, $a0, $a7
	add.d	$a0, $a0, $t0
	add.d	$a0, $a0, $t1
	add.d	$a0, $a0, $t2
	add.w	$a0, $a0, $t3
	add.d	$a0, $a0, $t4
	add.d	$a0, $a0, $t5
	add.d	$a0, $a0, $t6
	add.d	$a0, $a0, $t7
	addi.d	$a0, $a0, 8
	bstrpick.d	$a1, $a0, 31, 4
	b	.LBB0_80
.LBB0_49:
	move	$s3, $t6
	bnez	$s1, .LBB0_51
# %bb.50:
	ld.w	$a1, $s7, 4
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	move	$s1, $ra
	move	$s2, $a4
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	move	$a4, $s2
	move	$ra, $s1
.LBB0_51:
	move	$a0, $zero
	ld.hu	$s1, $sp, 370
	ld.hu	$s2, $sp, 372
	addi.d	$a3, $s7, 104
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	slli.d	$a1, $a1, 5
	add.d	$t8, $a3, $a1
	slli.d	$t4, $s4, 1
	slli.d	$t5, $fp, 1
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	slli.d	$a1, $a1, 5
	add.d	$t7, $a3, $a1
	slli.d	$t3, $s0, 1
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	slli.d	$a1, $a1, 5
	add.d	$t6, $a3, $a1
	slli.d	$t0, $a4, 1
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	slli.d	$a1, $a1, 5
	add.d	$t2, $a3, $a1
	slli.d	$a6, $s6, 1
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	slli.d	$a1, $a1, 5
	add.d	$t1, $a3, $a1
	slli.d	$a4, $ra, 1
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	slli.d	$a1, $a1, 5
	add.d	$a7, $a3, $a1
	slli.d	$a2, $s3, 1
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	slli.d	$a1, $a1, 5
	add.d	$a5, $a3, $a1
	slli.d	$a1, $s8, 1
	slli.d	$fp, $s5, 5
	add.d	$a3, $a3, $fp
	ld.hu	$s0, $sp, 374
	vld	$vr0, $sp, 374
	vld	$vr1, $sp, 376
	vld	$vr2, $sp, 378
	ld.hu	$fp, $sp, 390
	vrepli.b	$vr3, 0
	vilvl.h	$vr4, $vr3, $vr0
	vilvh.h	$vr5, $vr3, $vr0
	vilvl.h	$vr6, $vr3, $vr1
	vilvh.h	$vr1, $vr3, $vr1
	vilvl.h	$vr7, $vr3, $vr2
	vilvh.h	$vr0, $vr3, $vr2
	vslli.w	$vr1, $vr1, 1
	vadd.w	$vr1, $vr5, $vr1
	vaddi.wu	$vr2, $vr4, 2
	vpickve2gr.w	$s3, $vr2, 0
	add.d	$s1, $s3, $s1
	alsl.d	$s1, $s2, $s1, 1
	srli.d	$s1, $s1, 2
	stx.h	$s1, $t8, $t4
	vpickve2gr.w	$s1, $vr2, 1
	add.d	$s1, $s1, $s2
	alsl.d	$s0, $s0, $s1, 1
	bstrpick.d	$s0, $s0, 18, 2
	stx.h	$s0, $t8, $t5
	stx.h	$s0, $t7, $t4
	vslli.w	$vr3, $vr6, 1
	vadd.w	$vr2, $vr2, $vr3
	vadd.w	$vr1, $vr1, $vr0
	vaddi.wu	$vr1, $vr1, 2
	vadd.w	$vr2, $vr2, $vr7
	vsrli.w	$vr2, $vr2, 2
	vsrli.w	$vr1, $vr1, 2
	vpickev.h	$vr3, $vr1, $vr2
	vpickve2gr.h	$s0, $vr1, 6
	vpickve2gr.h	$s1, $vr1, 4
	vpickve2gr.h	$s2, $vr1, 2
	vpickve2gr.h	$s3, $vr1, 0
	vpickve2gr.h	$s4, $vr2, 6
	vpickve2gr.h	$s5, $vr2, 4
	vpickve2gr.h	$s6, $vr2, 0
	stx.h	$s6, $t8, $t3
	stx.h	$s6, $t7, $t5
	vpickve2gr.h	$s6, $vr2, 2
	stx.h	$s6, $t8, $t0
	stx.h	$s6, $t7, $t3
	stx.h	$s6, $t2, $t4
	stx.h	$s5, $t8, $a6
	stx.h	$s5, $t7, $t0
	stx.h	$s5, $t2, $t5
	stx.h	$s5, $t1, $t4
	stx.h	$s4, $t8, $a4
	stx.h	$s4, $t7, $a6
	stx.h	$s4, $t2, $t3
	stx.h	$s4, $t1, $t5
	stx.h	$s4, $a7, $t4
	stx.h	$s3, $t8, $a2
	stx.h	$s3, $t7, $a4
	stx.h	$s3, $t2, $t0
	stx.h	$s3, $t1, $t3
	stx.h	$s3, $a7, $t5
	stx.h	$s3, $a5, $t4
	stx.h	$s2, $t8, $a1
	stx.h	$s2, $t7, $a2
	stx.h	$s2, $t2, $a6
	stx.h	$s2, $t1, $t0
	stx.h	$s2, $a7, $t3
	stx.h	$s2, $a5, $t5
	stx.h	$s2, $a3, $t4
	stx.h	$s1, $t7, $a1
	stx.h	$s1, $t2, $a4
	stx.h	$s1, $t1, $a6
	stx.h	$s1, $a7, $t0
	stx.h	$s1, $a5, $t3
	stx.h	$s1, $a3, $t5
	vstx	$vr3, $t6, $t4
	stx.h	$s0, $t2, $a2
	stx.h	$s0, $t1, $a4
	stx.h	$s0, $a7, $a6
	stx.h	$s0, $a5, $t0
	ld.hu	$t4, $sp, 394
	stx.h	$s0, $a3, $t3
	vpickve2gr.w	$t3, $vr0, 3
	alsl.d	$t5, $t3, $fp, 1
	add.d	$t5, $t5, $t4
	addi.d	$t5, $t5, 2
	bstrpick.d	$t5, $t5, 19, 2
	stx.h	$t5, $t2, $a1
	stx.h	$t5, $t1, $a2
	stx.h	$t5, $a7, $a4
	ld.hu	$t2, $sp, 396
	stx.h	$t5, $a5, $a6
	stx.h	$t5, $a3, $t0
	alsl.d	$t0, $t4, $t3, 1
	add.d	$t0, $t0, $t2
	addi.d	$t0, $t0, 2
	bstrpick.d	$t0, $t0, 19, 2
	stx.h	$t0, $t1, $a1
	stx.h	$t0, $a7, $a2
	ld.hu	$t1, $sp, 398
	stx.h	$t0, $a5, $a4
	stx.h	$t0, $a3, $a6
	alsl.d	$a6, $t2, $t4, 1
	add.d	$a6, $a6, $t1
	addi.d	$a6, $a6, 2
	srli.d	$a6, $a6, 2
	stx.h	$a6, $a7, $a1
	ld.hu	$a7, $sp, 400
	stx.h	$a6, $a5, $a2
	stx.h	$a6, $a3, $a4
	alsl.d	$a4, $t1, $t2, 1
	add.d	$a4, $a4, $a7
	addi.d	$a4, $a4, 2
	srli.d	$a4, $a4, 2
	stx.h	$a4, $a5, $a1
	stx.h	$a4, $a3, $a2
	alsl.d	$a2, $a7, $a7, 1
	add.d	$a2, $t1, $a2
	addi.d	$a2, $a2, 2
	srli.d	$a2, $a2, 2
	stx.h	$a2, $a3, $a1
	b	.LBB0_81
.LBB0_52:
	bnez	$s1, .LBB0_54
# %bb.53:
	ld.w	$a1, $s7, 4
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
	move	$s1, $ra
	move	$s2, $a4
	move	$s3, $t6
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	move	$t6, $s3
	move	$a4, $s2
	move	$ra, $s1
.LBB0_54:
	move	$a0, $zero
	ld.hu	$t5, $sp, 370
	addi.d	$t0, $s7, 104
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	slli.d	$a1, $a1, 5
	add.d	$t2, $t0, $a1
	slli.d	$t1, $s4, 1
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	slli.d	$a1, $a1, 5
	add.d	$t3, $t0, $a1
	slli.d	$a7, $fp, 1
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	slli.d	$a1, $a1, 5
	add.d	$t8, $t0, $a1
	slli.d	$a6, $s0, 1
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	slli.d	$a1, $a1, 5
	add.d	$t7, $t0, $a1
	slli.d	$a5, $a4, 1
	slli.d	$a4, $s6, 1
	slli.d	$a3, $ra, 1
	slli.d	$a2, $t6, 1
	vld	$vr1, $sp, 372
	slli.d	$a1, $s8, 1
	vld	$vr3, $sp, 374
	vrepli.b	$vr2, 0
	vilvl.h	$vr0, $vr2, $vr1
	vpickve2gr.w	$t6, $vr0, 0
	vreplvei.h	$vr4, $vr3, 7
	vilvl.h	$vr4, $vr2, $vr4
	bstrpick.d	$t4, $t6, 15, 0
	or	$fp, $t4, $t5
	xor	$t4, $t4, $t5
	srli.d	$t4, $t4, 1
	sub.d	$t4, $fp, $t4
	stx.h	$t4, $t2, $t1
	vor.v	$vr5, $vr1, $vr3
	vxor.v	$vr3, $vr1, $vr3
	vsrli.h	$vr3, $vr3, 1
	vsub.h	$vr3, $vr5, $vr3
	vpickve2gr.h	$t4, $vr3, 0
	stx.h	$t4, $t2, $a7
	vpickve2gr.h	$t4, $vr3, 1
	stx.h	$t4, $t8, $t1
	stx.h	$t4, $t2, $a6
	vpickve2gr.h	$t4, $vr3, 2
	stx.h	$t4, $t7, $t1
	stx.h	$t4, $t8, $a7
	stx.h	$t4, $t2, $a5
	vpickve2gr.h	$t4, $vr3, 3
	stx.h	$t4, $t7, $a7
	stx.h	$t4, $t8, $a6
	stx.h	$t4, $t2, $a4
	vpickve2gr.h	$t4, $vr3, 4
	stx.h	$t4, $t7, $a6
	stx.h	$t4, $t8, $a5
	stx.h	$t4, $t2, $a3
	vpickve2gr.h	$t4, $vr3, 5
	stx.h	$t4, $t7, $a5
	stx.h	$t4, $t8, $a4
	stx.h	$t4, $t2, $a2
	vpickve2gr.h	$t4, $vr3, 6
	stx.h	$t4, $t7, $a4
	stx.h	$t4, $t8, $a3
	stx.h	$t4, $t2, $a1
	vpickve2gr.h	$t2, $vr3, 7
	stx.h	$t2, $t7, $a3
	stx.h	$t2, $t8, $a2
	ld.hu	$t2, $sp, 390
	vstx	$vr3, $t3, $t1
	vpickve2gr.w	$t4, $vr4, 3
	bstrpick.d	$t3, $t4, 15, 0
	or	$fp, $t3, $t2
	xor	$t3, $t3, $t2
	srli.d	$s0, $t3, 1
	ld.hu	$t3, $sp, 392
	sub.d	$fp, $fp, $s0
	stx.h	$fp, $t7, $a2
	stx.h	$fp, $t8, $a1
	add.d	$t8, $t2, $t3
	addi.d	$t8, $t8, 1
	srli.d	$t8, $t8, 1
	stx.h	$t8, $t7, $a1
	vpickve2gr.w	$t7, $vr0, 1
	addi.d	$t8, $t7, 2
	add.d	$t5, $t8, $t5
	alsl.d	$t5, $t6, $t5, 1
	srli.d	$fp, $t5, 2
	ld.d	$t5, $sp, 56                    # 8-byte Folded Reload
	slli.d	$t5, $t5, 5
	add.d	$t5, $t0, $t5
	stx.h	$fp, $t5, $t1
	vpickve2gr.w	$fp, $vr0, 2
	addi.d	$s0, $fp, 2
	add.d	$t6, $s0, $t6
	alsl.d	$t6, $t7, $t6, 1
	vilvh.h	$vr1, $vr2, $vr1
	bstrpick.d	$t7, $t6, 18, 2
	ld.d	$t6, $sp, 48                    # 8-byte Folded Reload
	slli.d	$t6, $t6, 5
	add.d	$t6, $t0, $t6
	stx.h	$t7, $t6, $t1
	stx.h	$t7, $t5, $a7
	alsl.d	$t7, $fp, $t8, 1
	vpickve2gr.w	$t8, $vr0, 3
	add.d	$t7, $t7, $t8
	bstrpick.d	$fp, $t7, 18, 2
	ld.d	$t7, $sp, 88                    # 8-byte Folded Reload
	slli.d	$t7, $t7, 5
	add.d	$t7, $t0, $t7
	stx.h	$fp, $t7, $t1
	stx.h	$fp, $t6, $a7
	stx.h	$fp, $t5, $a6
	alsl.d	$fp, $t8, $s0, 1
	vpickve2gr.w	$s0, $vr1, 0
	add.d	$fp, $fp, $s0
	bstrpick.d	$fp, $fp, 18, 2
	slli.d	$s1, $s5, 5
	add.d	$t0, $t0, $s1
	stx.h	$fp, $t0, $t1
	stx.h	$fp, $t7, $a7
	stx.h	$fp, $t6, $a6
	stx.h	$fp, $t5, $a5
	alsl.d	$t1, $s0, $t8, 1
	vpickve2gr.w	$t8, $vr1, 1
	add.d	$t1, $t1, $t8
	addi.d	$t1, $t1, 2
	bstrpick.d	$t1, $t1, 19, 2
	stx.h	$t1, $t0, $a7
	stx.h	$t1, $t7, $a6
	stx.h	$t1, $t6, $a5
	stx.h	$t1, $t5, $a4
	alsl.d	$a7, $t8, $s0, 1
	vpickve2gr.w	$t1, $vr1, 2
	add.d	$a7, $a7, $t1
	addi.d	$a7, $a7, 2
	bstrpick.d	$a7, $a7, 19, 2
	stx.h	$a7, $t0, $a6
	stx.h	$a7, $t7, $a5
	stx.h	$a7, $t6, $a4
	stx.h	$a7, $t5, $a3
	alsl.d	$a6, $t1, $t8, 1
	vpickve2gr.w	$a7, $vr1, 3
	add.d	$a6, $a6, $a7
	addi.d	$a6, $a6, 2
	bstrpick.d	$a6, $a6, 19, 2
	stx.h	$a6, $t0, $a5
	stx.h	$a6, $t7, $a4
	stx.h	$a6, $t6, $a3
	stx.h	$a6, $t5, $a2
	alsl.d	$a5, $a7, $t1, 1
	add.d	$a5, $a5, $t4
	addi.d	$a5, $a5, 2
	bstrpick.d	$a5, $a5, 19, 2
	stx.h	$a5, $t0, $a4
	stx.h	$a5, $t7, $a3
	stx.h	$a5, $t6, $a2
	stx.h	$a5, $t5, $a1
	alsl.d	$a4, $t4, $a7, 1
	add.d	$a4, $a4, $t2
	addi.d	$a4, $a4, 2
	bstrpick.d	$a4, $a4, 19, 2
	stx.h	$a4, $t0, $a3
	stx.h	$a4, $t7, $a2
	stx.h	$a4, $t6, $a1
	alsl.d	$a3, $t2, $t4, 1
	add.d	$a3, $a3, $t3
	addi.d	$a3, $a3, 2
	bstrpick.d	$a3, $a3, 19, 2
	ld.hu	$a4, $sp, 394
	stx.h	$a3, $t0, $a2
	stx.h	$a3, $t7, $a1
	alsl.d	$a2, $t3, $t2, 1
	add.d	$a2, $a2, $a4
	addi.d	$a2, $a2, 2
	srli.d	$a2, $a2, 2
	stx.h	$a2, $t0, $a1
	b	.LBB0_81
.LBB0_55:
	bnez	$s2, .LBB0_57
# %bb.56:
	ld.w	$a1, $s7, 4
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB0_57:                               # %.loopexit.loopexit1391
	vld	$vr0, $sp, 402
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	slli.d	$a0, $a0, 5
	add.d	$a0, $s7, $a0
	alsl.d	$a1, $s4, $a0, 1
	vreplvei.h	$vr0, $vr0, 0
	vst	$vr0, $a1, 104
	vldrepl.h	$vr0, $sp, 404
	vst	$vr0, $a1, 136
	vldrepl.h	$vr0, $sp, 406
	vst	$vr0, $a1, 168
	vldrepl.h	$vr0, $sp, 408
	vst	$vr0, $a1, 200
	vldrepl.h	$vr0, $sp, 410
	vst	$vr0, $a1, 232
	vldrepl.h	$vr0, $sp, 412
	vst	$vr0, $a1, 264
	vldrepl.h	$vr0, $sp, 414
	vst	$vr0, $a1, 296
	vldrepl.h	$vr0, $sp, 416
	move	$a0, $zero
	vst	$vr0, $a1, 328
	b	.LBB0_81
.LBB0_58:
	st.d	$t6, $sp, 16                    # 8-byte Folded Spill
	st.d	$s5, $sp, 80                    # 8-byte Folded Spill
	beqz	$s3, .LBB0_61
# %bb.59:
	beqz	$s2, .LBB0_61
# %bb.60:
	bnez	$s1, .LBB0_62
.LBB0_61:
	ld.w	$a1, $s7, 4
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a0, $a0, %pc_lo12(.L.str.5)
	move	$s1, $ra
	move	$s2, $a4
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	move	$a4, $s2
	move	$ra, $s1
.LBB0_62:
	ld.hu	$a1, $sp, 368
	ld.hu	$a2, $sp, 370
	move	$a0, $zero
	add.d	$a3, $a2, $a1
	addi.d	$a3, $a3, 1
	srli.d	$t2, $a3, 1
	addi.d	$s3, $s7, 104
	ld.d	$a3, $sp, 24                    # 8-byte Folded Reload
	slli.d	$a3, $a3, 5
	add.d	$a3, $s3, $a3
	slli.d	$t1, $a4, 1
	stx.h	$t2, $a3, $t1
	ld.d	$a4, $sp, 32                    # 8-byte Folded Reload
	slli.d	$a4, $a4, 5
	add.d	$a6, $s3, $a4
	slli.d	$a7, $s0, 1
	stx.h	$t2, $a6, $a7
	ld.d	$a4, $sp, 40                    # 8-byte Folded Reload
	slli.d	$a4, $a4, 5
	add.d	$t0, $s3, $a4
	slli.d	$a5, $fp, 1
	stx.h	$t2, $t0, $a5
	ld.d	$a4, $sp, 64                    # 8-byte Folded Reload
	slli.d	$a4, $a4, 5
	ld.hu	$t7, $sp, 372
	add.d	$t6, $s3, $a4
	slli.d	$a4, $s4, 1
	stx.h	$t2, $t6, $a4
	add.d	$t2, $a2, $t7
	addi.d	$t2, $t2, 1
	srli.d	$t2, $t2, 1
	slli.d	$t3, $s6, 1
	stx.h	$t2, $a3, $t3
	ld.hu	$fp, $sp, 374
	stx.h	$t2, $a6, $t1
	stx.h	$t2, $t0, $a7
	stx.h	$t2, $t6, $a5
	add.d	$t2, $t7, $fp
	addi.d	$t2, $t2, 1
	srli.d	$t2, $t2, 1
	slli.d	$t4, $ra, 1
	stx.h	$t2, $a3, $t4
	ld.hu	$s0, $sp, 376
	stx.h	$t2, $a6, $t3
	stx.h	$t2, $t0, $t1
	stx.h	$t2, $t6, $a7
	add.d	$t2, $fp, $s0
	addi.d	$t2, $t2, 1
	srli.d	$t2, $t2, 1
	ld.d	$t5, $sp, 16                    # 8-byte Folded Reload
	slli.d	$t5, $t5, 1
	stx.h	$t2, $a3, $t5
	ld.hu	$s1, $sp, 378
	stx.h	$t2, $a6, $t4
	stx.h	$t2, $t0, $t3
	stx.h	$t2, $t6, $t1
	add.d	$t2, $s0, $s1
	addi.d	$t2, $t2, 1
	srli.d	$t2, $t2, 1
	slli.d	$t8, $s8, 1
	stx.h	$t2, $a3, $t8
	ld.hu	$s2, $sp, 380
	stx.h	$t2, $a6, $t5
	stx.h	$t2, $t0, $t4
	stx.h	$t2, $t6, $t3
	add.d	$t2, $s1, $s2
	addi.d	$t2, $t2, 1
	srli.d	$t2, $t2, 1
	ld.hu	$s4, $sp, 382
	stx.h	$t2, $a6, $t8
	stx.h	$t2, $t0, $t5
	stx.h	$t2, $t6, $t4
	add.d	$t2, $s2, $s4
	addi.d	$t2, $t2, 1
	ld.hu	$s7, $sp, 384
	srli.d	$t2, $t2, 1
	stx.h	$t2, $t0, $t8
	stx.h	$t2, $t6, $t5
	add.d	$t2, $s4, $s7
	addi.d	$t2, $t2, 1
	srli.d	$t2, $t2, 1
	stx.h	$t2, $t6, $t8
	ld.hu	$s5, $sp, 402
	addi.d	$s8, $a2, 2
	ld.d	$t2, $sp, 80                    # 8-byte Folded Reload
	slli.d	$t2, $t2, 5
	add.d	$t2, $s3, $t2
	ld.d	$t6, $sp, 88                    # 8-byte Folded Reload
	slli.d	$t6, $t6, 5
	add.d	$t6, $s3, $t6
	ld.d	$s6, $sp, 48                    # 8-byte Folded Reload
	slli.d	$s6, $s6, 5
	add.d	$s6, $s3, $s6
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	slli.d	$ra, $ra, 5
	add.d	$s3, $s3, $ra
	alsl.d	$ra, $a1, $s8, 1
	add.d	$ra, $ra, $s5
	srli.d	$ra, $ra, 2
	stx.h	$ra, $t2, $t1
	stx.h	$ra, $t6, $a7
	stx.h	$ra, $s6, $a5
	stx.h	$ra, $s3, $a4
	addi.d	$a1, $a1, 2
	alsl.d	$a2, $a2, $a1, 1
	add.d	$a2, $a2, $t7
	srli.d	$a2, $a2, 2
	stx.h	$a2, $t2, $t3
	stx.h	$a2, $t6, $t1
	stx.h	$a2, $s6, $a7
	stx.h	$a2, $s3, $a5
	alsl.d	$a2, $t7, $s8, 1
	add.d	$a2, $a2, $fp
	srli.d	$a2, $a2, 2
	stx.h	$a2, $t2, $t4
	stx.h	$a2, $t6, $t3
	stx.h	$a2, $s6, $t1
	stx.h	$a2, $s3, $a7
	alsl.d	$a2, $fp, $t7, 1
	add.d	$a2, $a2, $s0
	addi.d	$a2, $a2, 2
	srli.d	$a2, $a2, 2
	stx.h	$a2, $t2, $t5
	stx.h	$a2, $t6, $t4
	stx.h	$a2, $s6, $t3
	stx.h	$a2, $s3, $t1
	alsl.d	$a2, $s0, $fp, 1
	add.d	$a2, $a2, $s1
	addi.d	$a2, $a2, 2
	srli.d	$a2, $a2, 2
	stx.h	$a2, $t2, $t8
	stx.h	$a2, $t6, $t5
	stx.h	$a2, $s6, $t4
	stx.h	$a2, $s3, $t3
	alsl.d	$a2, $s1, $s0, 1
	add.d	$a2, $a2, $s2
	addi.d	$a2, $a2, 2
	srli.d	$a2, $a2, 2
	stx.h	$a2, $t6, $t8
	stx.h	$a2, $s6, $t5
	stx.h	$a2, $s3, $t4
	alsl.d	$a2, $s2, $s1, 1
	add.d	$a2, $a2, $s4
	addi.d	$a2, $a2, 2
	srli.d	$a2, $a2, 2
	stx.h	$a2, $s6, $t8
	stx.h	$a2, $s3, $t5
	alsl.d	$a2, $s4, $s2, 1
	add.d	$a2, $a2, $s7
	addi.d	$a2, $a2, 2
	ld.hu	$t1, $sp, 404
	srli.d	$a2, $a2, 2
	stx.h	$a2, $s3, $t8
	alsl.d	$a1, $s5, $a1, 1
	add.d	$a1, $a1, $t1
	srli.d	$a1, $a1, 2
	stx.h	$a1, $a3, $a7
	ld.hu	$a2, $sp, 406
	stx.h	$a1, $a6, $a5
	stx.h	$a1, $t0, $a4
	alsl.d	$a1, $t1, $s5, 1
	add.d	$a1, $a1, $a2
	addi.d	$a1, $a1, 2
	srli.d	$a1, $a1, 2
	stx.h	$a1, $t2, $a7
	ld.hu	$a7, $sp, 408
	stx.h	$a1, $t6, $a5
	stx.h	$a1, $s6, $a4
	alsl.d	$a1, $a2, $t1, 1
	add.d	$a1, $a1, $a7
	addi.d	$a1, $a1, 2
	srli.d	$a1, $a1, 2
	ld.hu	$t0, $sp, 410
	stx.h	$a1, $a3, $a5
	stx.h	$a1, $a6, $a4
	alsl.d	$a1, $a7, $a2, 1
	add.d	$a1, $a1, $t0
	addi.d	$a1, $a1, 2
	srli.d	$a1, $a1, 2
	ld.hu	$a2, $sp, 412
	stx.h	$a1, $t2, $a5
	stx.h	$a1, $t6, $a4
	alsl.d	$a1, $t0, $a7, 1
	add.d	$a1, $a1, $a2
	addi.d	$a1, $a1, 2
	ld.hu	$a5, $sp, 414
	srli.d	$a1, $a1, 2
	stx.h	$a1, $a3, $a4
	alsl.d	$a1, $a2, $t0, 1
	add.d	$a1, $a1, $a5
	addi.d	$a1, $a1, 2
	srli.d	$a1, $a1, 2
	stx.h	$a1, $t2, $a4
	b	.LBB0_81
.LBB0_63:
	st.d	$a4, $sp, 80                    # 8-byte Folded Spill
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$s8, $sp, 16                    # 8-byte Folded Spill
	beqz	$s3, .LBB0_66
# %bb.64:
	beqz	$s2, .LBB0_66
# %bb.65:
	bnez	$s1, .LBB0_67
.LBB0_66:
	ld.w	$a1, $s7, 4
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a0, $a0, %pc_lo12(.L.str.6)
	move	$s1, $t6
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	move	$t6, $s1
.LBB0_67:
	ld.hu	$a1, $sp, 402
	ld.hu	$a2, $sp, 368
	move	$a0, $zero
	add.d	$a3, $a1, $a2
	addi.d	$a3, $a3, 1
	srli.d	$t3, $a3, 1
	addi.d	$s1, $s7, 104
	ld.d	$a3, $sp, 48                    # 8-byte Folded Reload
	slli.d	$a3, $a3, 5
	add.d	$t1, $s1, $a3
	slli.d	$a3, $t6, 1
	stx.h	$t3, $t1, $a3
	ld.d	$a4, $sp, 40                    # 8-byte Folded Reload
	slli.d	$a4, $a4, 5
	add.d	$a7, $s1, $a4
	slli.d	$a6, $s6, 1
	stx.h	$t3, $a7, $a6
	ld.d	$a4, $sp, 56                    # 8-byte Folded Reload
	slli.d	$a4, $a4, 5
	add.d	$a5, $s1, $a4
	slli.d	$t0, $s0, 1
	stx.h	$t3, $a5, $t0
	ld.d	$a4, $sp, 64                    # 8-byte Folded Reload
	slli.d	$a4, $a4, 5
	ld.hu	$t5, $sp, 404
	add.d	$a4, $s1, $a4
	slli.d	$t2, $s4, 1
	stx.h	$t3, $a4, $t2
	add.d	$t3, $a1, $t5
	addi.d	$t3, $t3, 1
	srli.d	$t4, $t3, 1
	ld.d	$t3, $sp, 32                    # 8-byte Folded Reload
	slli.d	$t3, $t3, 5
	add.d	$t3, $s1, $t3
	stx.h	$t4, $t3, $a3
	ld.hu	$t7, $sp, 406
	stx.h	$t4, $t1, $a6
	stx.h	$t4, $a7, $t0
	stx.h	$t4, $a5, $t2
	add.d	$t4, $t5, $t7
	addi.d	$t4, $t4, 1
	srli.d	$t6, $t4, 1
	ld.d	$t4, $sp, 88                    # 8-byte Folded Reload
	slli.d	$t4, $t4, 5
	add.d	$t4, $s1, $t4
	stx.h	$t6, $t4, $a3
	ld.hu	$t8, $sp, 408
	stx.h	$t6, $t3, $a6
	stx.h	$t6, $t1, $t0
	stx.h	$t6, $a7, $t2
	add.d	$t6, $t7, $t8
	addi.d	$t6, $t6, 1
	srli.d	$s0, $t6, 1
	ld.d	$t6, $sp, 24                    # 8-byte Folded Reload
	slli.d	$t6, $t6, 5
	add.d	$t6, $s1, $t6
	stx.h	$s0, $t6, $a3
	ld.hu	$s2, $sp, 410
	stx.h	$s0, $t4, $a6
	stx.h	$s0, $t3, $t0
	stx.h	$s0, $t1, $t2
	add.d	$s0, $t8, $s2
	addi.d	$s0, $s0, 1
	srli.d	$s4, $s0, 1
	slli.d	$s0, $s5, 5
	add.d	$s0, $s1, $s0
	stx.h	$s4, $s0, $a3
	ld.hu	$s3, $sp, 412
	stx.h	$s4, $t6, $a6
	stx.h	$s4, $t4, $t0
	stx.h	$s4, $t3, $t2
	add.d	$s1, $s2, $s3
	addi.d	$s1, $s1, 1
	srli.d	$s1, $s1, 1
	ld.hu	$s4, $sp, 414
	stx.h	$s1, $s0, $a6
	stx.h	$s1, $t6, $t0
	stx.h	$s1, $t4, $t2
	add.d	$s1, $s3, $s4
	addi.d	$s1, $s1, 1
	ld.hu	$s7, $sp, 416
	srli.d	$s1, $s1, 1
	stx.h	$s1, $s0, $t0
	stx.h	$s1, $t6, $t2
	add.d	$s1, $s4, $s7
	addi.d	$s1, $s1, 1
	srli.d	$s1, $s1, 1
	ld.hu	$s5, $sp, 370
	stx.h	$s1, $s0, $t2
	addi.d	$s8, $a1, 2
	alsl.d	$t2, $a2, $s8, 1
	add.d	$t2, $t2, $s5
	srli.d	$ra, $t2, 2
	ld.d	$t2, $sp, 16                    # 8-byte Folded Reload
	slli.d	$t2, $t2, 1
	stx.h	$ra, $t1, $t2
	ld.d	$s1, $sp, 8                     # 8-byte Folded Reload
	slli.d	$s1, $s1, 1
	stx.h	$ra, $a7, $s1
	ld.d	$s6, $sp, 80                    # 8-byte Folded Reload
	slli.d	$s6, $s6, 1
	stx.h	$ra, $a5, $s6
	slli.d	$fp, $fp, 1
	stx.h	$ra, $a4, $fp
	addi.d	$a2, $a2, 2
	alsl.d	$a1, $a1, $a2, 1
	add.d	$a1, $a1, $t5
	srli.d	$a1, $a1, 2
	stx.h	$a1, $t3, $t2
	stx.h	$a1, $t1, $s1
	stx.h	$a1, $a7, $s6
	stx.h	$a1, $a5, $fp
	alsl.d	$a1, $t5, $s8, 1
	add.d	$a1, $a1, $t7
	srli.d	$a1, $a1, 2
	stx.h	$a1, $t4, $t2
	stx.h	$a1, $t3, $s1
	stx.h	$a1, $t1, $s6
	stx.h	$a1, $a7, $fp
	alsl.d	$a1, $t7, $t5, 1
	add.d	$a1, $a1, $t8
	addi.d	$a1, $a1, 2
	srli.d	$a1, $a1, 2
	stx.h	$a1, $t6, $t2
	stx.h	$a1, $t4, $s1
	stx.h	$a1, $t3, $s6
	stx.h	$a1, $t1, $fp
	alsl.d	$a1, $t8, $t7, 1
	add.d	$a1, $a1, $s2
	addi.d	$a1, $a1, 2
	srli.d	$a1, $a1, 2
	stx.h	$a1, $s0, $t2
	stx.h	$a1, $t6, $s1
	stx.h	$a1, $t4, $s6
	stx.h	$a1, $t3, $fp
	alsl.d	$a1, $s2, $t8, 1
	add.d	$a1, $a1, $s3
	addi.d	$a1, $a1, 2
	srli.d	$a1, $a1, 2
	stx.h	$a1, $s0, $s1
	stx.h	$a1, $t6, $s6
	stx.h	$a1, $t4, $fp
	alsl.d	$a1, $s3, $s2, 1
	add.d	$a1, $a1, $s4
	addi.d	$a1, $a1, 2
	srli.d	$a1, $a1, 2
	stx.h	$a1, $s0, $s6
	stx.h	$a1, $t6, $fp
	alsl.d	$a1, $s4, $s3, 1
	add.d	$a1, $a1, $s7
	addi.d	$a1, $a1, 2
	ld.hu	$t1, $sp, 372
	srli.d	$a1, $a1, 2
	stx.h	$a1, $s0, $fp
	alsl.d	$a1, $s5, $a2, 1
	add.d	$a1, $a1, $t1
	srli.d	$a1, $a1, 2
	stx.h	$a1, $a7, $a3
	ld.hu	$a2, $sp, 374
	stx.h	$a1, $a5, $a6
	stx.h	$a1, $a4, $t0
	alsl.d	$a1, $t1, $s5, 1
	add.d	$a1, $a1, $a2
	addi.d	$a1, $a1, 2
	srli.d	$a1, $a1, 2
	stx.h	$a1, $a7, $t2
	ld.hu	$a7, $sp, 376
	stx.h	$a1, $a5, $s1
	stx.h	$a1, $a4, $s6
	alsl.d	$a1, $a2, $t1, 1
	add.d	$a1, $a1, $a7
	addi.d	$a1, $a1, 2
	srli.d	$a1, $a1, 2
	ld.hu	$t0, $sp, 378
	stx.h	$a1, $a5, $a3
	stx.h	$a1, $a4, $a6
	alsl.d	$a1, $a7, $a2, 1
	add.d	$a1, $a1, $t0
	addi.d	$a1, $a1, 2
	srli.d	$a1, $a1, 2
	ld.hu	$a2, $sp, 380
	stx.h	$a1, $a5, $t2
	stx.h	$a1, $a4, $s1
	alsl.d	$a1, $t0, $a7, 1
	add.d	$a1, $a1, $a2
	addi.d	$a1, $a1, 2
	ld.hu	$a5, $sp, 382
	srli.d	$a1, $a1, 2
	stx.h	$a1, $a4, $a3
	alsl.d	$a1, $a2, $t0, 1
	add.d	$a1, $a1, $a5
	addi.d	$a1, $a1, 2
	srli.d	$a1, $a1, 2
	stx.h	$a1, $a4, $t2
	b	.LBB0_81
.LBB0_68:
	move	$s3, $t6
	st.d	$a4, $sp, 80                    # 8-byte Folded Spill
	bnez	$s2, .LBB0_70
# %bb.69:
	ld.w	$a1, $s7, 4
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a0, $a0, %pc_lo12(.L.str.7)
	move	$s1, $ra
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	move	$ra, $s1
.LBB0_70:
	ld.hu	$a1, $sp, 402
	ld.hu	$a2, $sp, 404
	add.d	$a0, $a2, $a1
	addi.d	$a0, $a0, 1
	srli.d	$a0, $a0, 1
	addi.d	$t2, $s7, 104
	ld.d	$a3, $sp, 64                    # 8-byte Folded Reload
	slli.d	$a3, $a3, 5
	ld.hu	$a4, $sp, 406
	add.d	$a3, $t2, $a3
	slli.d	$t5, $s4, 1
	stx.h	$a0, $a3, $t5
	add.d	$a0, $a2, $a4
	addi.d	$a0, $a0, 1
	srli.d	$a0, $a0, 1
	slli.d	$t4, $s0, 1
	stx.h	$a0, $a3, $t4
	ld.hu	$a6, $sp, 408
	ld.d	$a5, $sp, 56                    # 8-byte Folded Reload
	slli.d	$a5, $a5, 5
	add.d	$a5, $t2, $a5
	stx.h	$a0, $a5, $t5
	add.d	$a0, $a4, $a6
	addi.d	$a0, $a0, 1
	srli.d	$a0, $a0, 1
	slli.d	$t6, $s6, 1
	stx.h	$a0, $a3, $t6
	stx.h	$a0, $a5, $t4
	ld.hu	$t0, $sp, 410
	ld.d	$a7, $sp, 40                    # 8-byte Folded Reload
	slli.d	$a7, $a7, 5
	add.d	$a7, $t2, $a7
	stx.h	$a0, $a7, $t5
	add.d	$a0, $a6, $t0
	addi.d	$a0, $a0, 1
	srli.d	$a0, $a0, 1
	slli.d	$t8, $s3, 1
	stx.h	$a0, $a3, $t8
	stx.h	$a0, $a5, $t6
	stx.h	$a0, $a7, $t4
	ld.hu	$t3, $sp, 412
	ld.d	$t1, $sp, 48                    # 8-byte Folded Reload
	slli.d	$t1, $t1, 5
	add.d	$t1, $t2, $t1
	stx.h	$a0, $t1, $t5
	add.d	$a0, $t0, $t3
	addi.d	$a0, $a0, 1
	srli.d	$a0, $a0, 1
	stx.h	$a0, $a5, $t8
	stx.h	$a0, $a7, $t6
	stx.h	$a0, $t1, $t4
	ld.hu	$s0, $sp, 414
	ld.d	$t7, $sp, 32                    # 8-byte Folded Reload
	slli.d	$t7, $t7, 5
	add.d	$t7, $t2, $t7
	stx.h	$a0, $t7, $t5
	add.d	$a0, $t3, $s0
	addi.d	$a0, $a0, 1
	srli.d	$a0, $a0, 1
	stx.h	$a0, $a7, $t8
	stx.h	$a0, $t1, $t6
	stx.h	$a0, $t7, $t4
	ld.hu	$s2, $sp, 416
	ld.d	$s1, $sp, 88                    # 8-byte Folded Reload
	slli.d	$s1, $s1, 5
	add.d	$s1, $t2, $s1
	stx.h	$a0, $s1, $t5
	add.d	$a0, $s0, $s2
	addi.d	$a0, $a0, 1
	srli.d	$a0, $a0, 1
	stx.h	$a0, $t1, $t8
	stx.h	$a0, $t7, $t6
	stx.h	$a0, $s1, $t4
	ld.d	$s3, $sp, 24                    # 8-byte Folded Reload
	slli.d	$s3, $s3, 5
	add.d	$s3, $t2, $s3
	stx.h	$a0, $s3, $t5
	vldrepl.h	$vr0, $sp, 416
	move	$a0, $zero
	slli.d	$s4, $s5, 5
	add.d	$t2, $t2, $s4
	vstx	$vr0, $t2, $t5
	slli.d	$t2, $s8, 1
	stx.h	$s2, $s3, $t2
	stx.h	$s2, $s3, $t8
	slli.d	$t5, $ra, 1
	stx.h	$s2, $s3, $t5
	stx.h	$s2, $s3, $t6
	ld.d	$s4, $sp, 80                    # 8-byte Folded Reload
	slli.d	$s4, $s4, 1
	stx.h	$s2, $s3, $s4
	stx.h	$s2, $s3, $t4
	stx.h	$s2, $s1, $t2
	stx.h	$s2, $s1, $t8
	stx.h	$s2, $s1, $t5
	stx.h	$s2, $s1, $t6
	stx.h	$s2, $t7, $t2
	stx.h	$s2, $t7, $t8
	alsl.d	$t4, $s2, $s2, 1
	addi.d	$t6, $s0, 2
	add.d	$t4, $t6, $t4
	srli.d	$t4, $t4, 2
	stx.h	$t4, $t1, $t2
	stx.h	$t4, $t7, $t5
	stx.h	$t4, $s1, $s4
	slli.d	$t8, $fp, 1
	stx.h	$t4, $s3, $t8
	alsl.d	$t4, $s0, $t3, 1
	add.d	$t4, $t4, $s2
	addi.d	$t4, $t4, 2
	srli.d	$t4, $t4, 2
	stx.h	$t4, $a7, $t2
	stx.h	$t4, $t1, $t5
	stx.h	$t4, $t7, $s4
	stx.h	$t4, $s1, $t8
	alsl.d	$t4, $t3, $t0, 1
	add.d	$t4, $t6, $t4
	srli.d	$t4, $t4, 2
	stx.h	$t4, $a5, $t2
	stx.h	$t4, $a7, $t5
	stx.h	$t4, $t1, $s4
	stx.h	$t4, $t7, $t8
	addi.d	$t4, $a6, 2
	alsl.d	$t6, $t0, $t4, 1
	add.d	$t3, $t6, $t3
	srli.d	$t3, $t3, 2
	stx.h	$t3, $a3, $t2
	stx.h	$t3, $a5, $t5
	stx.h	$t3, $a7, $s4
	stx.h	$t3, $t1, $t8
	addi.d	$t1, $a4, 2
	alsl.d	$a6, $a6, $t1, 1
	add.d	$a6, $a6, $t0
	srli.d	$a6, $a6, 2
	stx.h	$a6, $a3, $t5
	stx.h	$a6, $a5, $s4
	stx.h	$a6, $a7, $t8
	add.d	$a6, $t4, $a2
	alsl.d	$a4, $a4, $a6, 1
	srli.d	$a4, $a4, 2
	stx.h	$a4, $a3, $s4
	stx.h	$a4, $a5, $t8
	add.d	$a1, $t1, $a1
	alsl.d	$a1, $a2, $a1, 1
	srli.d	$a1, $a1, 2
	stx.h	$a1, $a3, $t8
	b	.LBB0_81
.LBB0_71:
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a0, $a0, %pc_lo12(.L.str.8)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	b	.LBB0_81
.LBB0_72:
	beqz	$s2, .LBB0_75
# %bb.73:
	bnez	$s1, .LBB0_75
# %bb.74:
	ld.hu	$a0, $sp, 402
	ld.hu	$a1, $sp, 404
	ld.hu	$a2, $sp, 406
	ld.hu	$a3, $sp, 408
	ld.hu	$a4, $sp, 410
	ld.hu	$a5, $sp, 412
	ld.hu	$a6, $sp, 414
	ld.hu	$a7, $sp, 416
	b	.LBB0_78
.LBB0_75:
	bnez	$s2, .LBB0_79
# %bb.76:
	beqz	$s1, .LBB0_79
# %bb.77:
	ld.hu	$a0, $sp, 370
	ld.hu	$a1, $sp, 372
	ld.hu	$a2, $sp, 374
	ld.hu	$a3, $sp, 376
	ld.hu	$a4, $sp, 378
	ld.hu	$a5, $sp, 380
	ld.hu	$a6, $sp, 382
	ld.hu	$a7, $sp, 384
.LBB0_78:                               # %.preheader
	add.d	$a0, $a0, $a1
	add.d	$a0, $a0, $a2
	add.d	$a0, $a0, $a3
	add.d	$a0, $a0, $a4
	add.d	$a0, $a0, $a5
	add.d	$a0, $a0, $a6
	add.d	$a0, $a0, $a7
	addi.d	$a0, $a0, 4
	bstrpick.d	$a1, $a0, 31, 3
	b	.LBB0_80
.LBB0_79:
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1796
	ldx.w	$a1, $s7, $a0
.LBB0_80:                               # %.preheader
	ld.d	$a2, $sp, 64                    # 8-byte Folded Reload
	move	$a0, $zero
	slli.d	$a2, $a2, 5
	add.d	$a2, $s7, $a2
	alsl.d	$a2, $s4, $a2, 1
	vreplgr2vr.h	$vr0, $a1
	vst	$vr0, $a2, 104
	vst	$vr0, $a2, 136
	vst	$vr0, $a2, 168
	vst	$vr0, $a2, 200
	vst	$vr0, $a2, 232
	vst	$vr0, $a2, 264
	vst	$vr0, $a2, 296
	vst	$vr0, $a2, 328
.LBB0_81:                               # %.loopexit
	ld.d	$s8, $sp, 424                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 432                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 440                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 448                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 456                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 464                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 472                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 480                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 488                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 496                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 504                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 512
	ret
.Lfunc_end0:
	.size	intrapred8x8, .Lfunc_end0-intrapred8x8
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI0_0:
	.word	.LBB0_38-.LJTI0_0
	.word	.LBB0_55-.LJTI0_0
	.word	.LBB0_46-.LJTI0_0
	.word	.LBB0_49-.LJTI0_0
	.word	.LBB0_41-.LJTI0_0
	.word	.LBB0_58-.LJTI0_0
	.word	.LBB0_63-.LJTI0_0
	.word	.LBB0_52-.LJTI0_0
	.word	.LBB0_68-.LJTI0_0
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function LowPassForIntra8x8Pred
.LCPI1_0:
	.word	3                               # 0x3
	.word	4                               # 0x4
	.word	5                               # 0x5
	.word	6                               # 0x6
.LCPI1_1:
	.word	0                               # 0x0
	.word	4                               # 0x4
	.word	5                               # 0x5
	.word	6                               # 0x6
.LCPI1_2:
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	4                               # 0x4
	.word	5                               # 0x5
.LCPI1_3:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	4                               # 0x4
	.word	5                               # 0x5
	.text
	.globl	LowPassForIntra8x8Pred
	.p2align	5
	.type	LowPassForIntra8x8Pred,@function
LowPassForIntra8x8Pred:                 # @LowPassForIntra8x8Pred
# %bb.0:
	ld.hu	$a6, $a0, 0
	ld.hu	$t2, $a0, 2
	ld.hu	$t1, $a0, 20
	ld.hu	$t0, $a0, 22
	ld.hu	$a7, $a0, 24
	ld.hu	$a4, $a0, 26
	ld.hu	$a5, $a0, 28
	vrepli.b	$vr0, 0
	beqz	$a2, .LBB1_3
# %bb.1:
	ld.hu	$t4, $a0, 4
	vld	$vr1, $a0, 6
	beqz	$a1, .LBB1_6
# %bb.2:
	alsl.d	$t5, $t2, $a6, 1
	b	.LBB1_7
.LBB1_3:
	vld	$vr1, $a0, 4
	ld.hu	$t3, $a0, 30
	ld.hu	$t4, $a0, 32
	vld	$vr2, $a0, 34
	bnez	$a1, .LBB1_8
.LBB1_4:
	beqz	$a3, .LBB1_17
# %bb.5:
	ld.hu	$a2, $a0, 34
	ld.hu	$t5, $a0, 36
	alsl.d	$a1, $a2, $a2, 1
	b	.LBB1_16
.LBB1_6:
	alsl.d	$t5, $t2, $t2, 1
.LBB1_7:
	addi.d	$t3, $t4, 2
	add.d	$t5, $t3, $t5
	addi.d	$t6, $t2, 2
	srli.d	$t2, $t5, 2
	vilvh.h	$vr2, $vr0, $vr1
	vilvl.h	$vr1, $vr0, $vr1
	vinsgr2vr.w	$vr3, $t4, 0
	pcalau12i	$t4, %pc_hi20(.LCPI1_0)
	vld	$vr4, $t4, %pc_lo12(.LCPI1_0)
	pcalau12i	$t4, %pc_hi20(.LCPI1_1)
	vld	$vr5, $t4, %pc_lo12(.LCPI1_1)
	pcalau12i	$t4, %pc_hi20(.LCPI1_2)
	vld	$vr6, $t4, %pc_lo12(.LCPI1_2)
	vshuf.w	$vr4, $vr2, $vr1
	vshuf.w	$vr5, $vr1, $vr3
	vslli.w	$vr3, $vr4, 1
	vshuf.w	$vr6, $vr2, $vr1
	vadd.w	$vr3, $vr6, $vr3
	vinsgr2vr.w	$vr4, $t3, 0
	vinsgr2vr.w	$vr6, $t6, 0
	pcalau12i	$t3, %pc_hi20(.LCPI1_3)
	vld	$vr7, $t3, %pc_lo12(.LCPI1_3)
	vpackev.w	$vr4, $vr4, $vr6
	vaddi.wu	$vr6, $vr1, 2
	vslli.w	$vr5, $vr5, 1
	vshuf.w	$vr7, $vr6, $vr4
	vadd.w	$vr4, $vr7, $vr5
	vadd.w	$vr3, $vr3, $vr2
	vaddi.wu	$vr3, $vr3, 2
	vadd.w	$vr1, $vr4, $vr1
	vsrli.w	$vr1, $vr1, 2
	vsrli.w	$vr3, $vr3, 2
	vpickev.h	$vr1, $vr3, $vr1
	vpickve2gr.w	$t3, $vr2, 2
	alsl.d	$t3, $t1, $t3, 1
	add.d	$t3, $t3, $t0
	addi.d	$t3, $t3, 2
	alsl.d	$t1, $t0, $t1, 1
	bstrpick.d	$t5, $t3, 19, 2
	add.d	$t1, $t1, $a7
	addi.d	$t1, $t1, 2
	alsl.d	$t0, $a7, $t0, 1
	srli.d	$t1, $t1, 2
	add.d	$t0, $t0, $a4
	addi.d	$t0, $t0, 2
	alsl.d	$a4, $a4, $a7, 1
	srli.d	$a7, $t0, 2
	add.d	$a4, $a4, $a5
	ld.hu	$a5, $a0, 26
	ld.hu	$t0, $a0, 28
	ld.hu	$t4, $a0, 30
	addi.d	$a4, $a4, 2
	srli.d	$a4, $a4, 2
	alsl.d	$a5, $t0, $a5, 1
	add.d	$a5, $a5, $t4
	ld.hu	$t6, $a0, 32
	addi.d	$a5, $a5, 2
	srli.d	$a5, $a5, 2
	alsl.d	$t0, $t4, $t0, 1
	add.d	$t0, $t0, $t6
	addi.d	$t0, $t0, 2
	srli.d	$t3, $t0, 2
	alsl.d	$t0, $t6, $t6, 1
	add.d	$t0, $t4, $t0
	addi.d	$t0, $t0, 2
	srli.d	$t4, $t0, 2
	move	$t0, $t1
	move	$t1, $t5
	vld	$vr2, $a0, 34
	beqz	$a1, .LBB1_4
.LBB1_8:
	beqz	$a2, .LBB1_12
# %bb.9:
	beqz	$a3, .LBB1_12
# %bb.10:
	ld.hu	$a2, $a0, 34
	ld.hu	$a1, $a0, 0
	ld.hu	$a3, $a0, 2
	alsl.d	$a6, $a1, $a2, 1
	add.d	$a3, $a6, $a3
.LBB1_11:                               # %.thread61
	addi.d	$a3, $a3, 2
	srli.d	$a6, $a3, 2
	b	.LBB1_15
.LBB1_12:
	beqz	$a2, .LBB1_18
# %bb.13:                               # %.thread62
	ld.hu	$a1, $a0, 0
	ld.hu	$a2, $a0, 2
	alsl.d	$a6, $a1, $a1, 1
	add.d	$a2, $a2, $a6
	addi.d	$a2, $a2, 2
	srli.d	$a6, $a2, 2
	beqz	$a3, .LBB1_17
# %bb.14:                               # %.thread62..thread61_crit_edge
	ld.hu	$a2, $a0, 34
.LBB1_15:                               # %.thread61
	ld.hu	$t5, $a0, 36
	alsl.d	$a1, $a2, $a1, 1
.LBB1_16:
	addi.d	$a3, $t5, 2
	add.d	$a1, $a3, $a1
	addi.d	$sp, $sp, -16
	st.d	$fp, $sp, 8                     # 8-byte Folded Spill
	st.d	$s0, $sp, 0                     # 8-byte Folded Spill
	ld.hu	$t6, $a0, 38
	alsl.d	$a2, $t5, $a2, 1
	ld.d	$t5, $a0, 40
	add.d	$a2, $a2, $t6
	addi.d	$a2, $a2, 2
	alsl.d	$a3, $t6, $a3, 1
	vinsgr2vr.d	$vr2, $t5, 0
	ld.hu	$t5, $a0, 48
	vilvl.h	$vr0, $vr0, $vr2
	vpickve2gr.w	$t7, $vr0, 0
	alsl.d	$t6, $t7, $t6, 1
	slli.d	$t8, $t5, 1
	add.d	$a3, $a3, $t7
	bstrpick.d	$a3, $a3, 18, 0
	vpickve2gr.w	$t7, $vr0, 1
	add.d	$t6, $t6, $t7
	addi.d	$t6, $t6, 2
	bstrpick.d	$t6, $t6, 19, 0
	slli.d	$t7, $t7, 1
	vpickve2gr.w	$fp, $vr0, 2
	slli.d	$fp, $fp, 1
	vpickve2gr.w	$s0, $vr0, 3
	slli.d	$s0, $s0, 1
	vinsgr2vr.w	$vr2, $t7, 0
	vinsgr2vr.w	$vr2, $fp, 1
	vinsgr2vr.w	$vr2, $s0, 2
	vinsgr2vr.w	$vr2, $t5, 3
	vadd.w	$vr2, $vr0, $vr2
	vshuf4i.w	$vr0, $vr0, 14
	vinsgr2vr.w	$vr0, $t5, 2
	vinsgr2vr.w	$vr0, $t8, 3
	vadd.w	$vr0, $vr2, $vr0
	vaddi.wu	$vr0, $vr0, 2
	vinsgr2vr.w	$vr2, $a1, 0
	vinsgr2vr.w	$vr2, $a2, 1
	vinsgr2vr.w	$vr2, $a3, 2
	vinsgr2vr.w	$vr2, $t6, 3
	vsrli.w	$vr2, $vr2, 2
	vsrli.w	$vr0, $vr0, 2
	vpickev.h	$vr2, $vr0, $vr2
	ld.d	$s0, $sp, 0                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
.LBB1_17:                               # %.thread59
	st.h	$a6, $a0, 0
	st.h	$t2, $a0, 2
	vst	$vr1, $a0, 4
	st.h	$t1, $a0, 20
	st.h	$t0, $a0, 22
	st.h	$a7, $a0, 24
	st.h	$a4, $a0, 26
	st.h	$a5, $a0, 28
	st.h	$t3, $a0, 30
	st.h	$t4, $a0, 32
	vst	$vr2, $a0, 34
	ret
.LBB1_18:
	beqz	$a3, .LBB1_17
# %bb.19:
	ld.hu	$a1, $a0, 0
	ld.hu	$a2, $a0, 34
	alsl.d	$a3, $a1, $a1, 1
	add.d	$a3, $a2, $a3
	b	.LBB1_11
.Lfunc_end1:
	.size	LowPassForIntra8x8Pred, .Lfunc_end1-LowPassForIntra8x8Pred
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function itrans8x8
.LCPI2_0:
	.dword	2                               # 0x2
	.dword	3                               # 0x3
.LCPI2_1:
	.dword	6                               # 0x6
	.dword	7                               # 0x7
.LCPI2_2:
	.dword	4                               # 0x4
	.dword	5                               # 0x5
	.text
	.globl	itrans8x8
	.p2align	5
	.type	itrans8x8,@function
itrans8x8:                              # @itrans8x8
# %bb.0:
	addi.d	$sp, $sp, -336
	st.d	$fp, $sp, 328                   # 8-byte Folded Spill
	st.d	$s0, $sp, 320                   # 8-byte Folded Spill
	st.d	$s1, $sp, 312                   # 8-byte Folded Spill
	st.d	$s2, $sp, 304                   # 8-byte Folded Spill
	st.d	$s3, $sp, 296                   # 8-byte Folded Spill
	st.d	$s4, $sp, 288                   # 8-byte Folded Spill
	st.d	$s5, $sp, 280                   # 8-byte Folded Spill
	st.d	$s6, $sp, 272                   # 8-byte Folded Spill
	st.d	$s7, $sp, 264                   # 8-byte Folded Spill
	lu12i.w	$a3, 1
	ori	$a3, $a3, 1788
	ldx.w	$a3, $a0, $a3
	ld.w	$a4, $a0, 28
	sub.w	$a3, $zero, $a3
	bne	$a4, $a3, .LBB2_4
# %bb.1:
	ldptr.w	$a3, $a0, 5920
	ori	$a4, $zero, 1
	bne	$a3, $a4, .LBB2_4
# %bb.2:                                # %.preheader139
	addi.w	$a3, $a2, 7
	addi.d	$a4, $a2, -1
	slli.d	$a5, $a2, 6
	alsl.d	$a5, $a1, $a5, 2
	add.d	$a5, $a5, $a0
	addi.d	$a5, $a5, 1412
	slli.d	$a2, $a2, 5
	alsl.d	$a1, $a1, $a2, 1
	add.d	$a1, $a1, $a0
	addi.d	$a1, $a1, 118
	.p2align	4, , 16
.LBB2_3:                                # =>This Inner Loop Header: Depth=1
	ld.w	$a2, $a5, -28
	ld.hu	$a6, $a1, -14
	ldptr.w	$a7, $a0, 5900
	add.w	$a2, $a2, $a6
	srai.d	$a6, $a2, 63
	andn	$a2, $a2, $a6
	slt	$a6, $a2, $a7
	maskeqz	$a2, $a2, $a6
	masknez	$a6, $a7, $a6
	ld.w	$a7, $a5, -24
	ld.hu	$t0, $a1, -12
	or	$a2, $a2, $a6
	st.w	$a2, $a5, -28
	ldptr.w	$a2, $a0, 5900
	add.w	$a6, $a7, $t0
	srai.d	$a7, $a6, 63
	andn	$a6, $a6, $a7
	slt	$a7, $a6, $a2
	maskeqz	$a6, $a6, $a7
	masknez	$a2, $a2, $a7
	ld.w	$a7, $a5, -20
	ld.hu	$t0, $a1, -10
	or	$a2, $a6, $a2
	st.w	$a2, $a5, -24
	ldptr.w	$a2, $a0, 5900
	add.w	$a6, $a7, $t0
	srai.d	$a7, $a6, 63
	andn	$a6, $a6, $a7
	slt	$a7, $a6, $a2
	maskeqz	$a6, $a6, $a7
	masknez	$a2, $a2, $a7
	ld.w	$a7, $a5, -16
	ld.hu	$t0, $a1, -8
	or	$a2, $a6, $a2
	st.w	$a2, $a5, -20
	ldptr.w	$a2, $a0, 5900
	add.w	$a6, $a7, $t0
	srai.d	$a7, $a6, 63
	andn	$a6, $a6, $a7
	slt	$a7, $a6, $a2
	maskeqz	$a6, $a6, $a7
	masknez	$a2, $a2, $a7
	ld.w	$a7, $a5, -12
	ld.hu	$t0, $a1, -6
	or	$a2, $a6, $a2
	st.w	$a2, $a5, -16
	ldptr.w	$a2, $a0, 5900
	add.w	$a6, $a7, $t0
	srai.d	$a7, $a6, 63
	andn	$a6, $a6, $a7
	slt	$a7, $a6, $a2
	maskeqz	$a6, $a6, $a7
	masknez	$a2, $a2, $a7
	ld.w	$a7, $a5, -8
	ld.hu	$t0, $a1, -4
	or	$a2, $a6, $a2
	st.w	$a2, $a5, -12
	ldptr.w	$a2, $a0, 5900
	add.w	$a6, $a7, $t0
	srai.d	$a7, $a6, 63
	andn	$a6, $a6, $a7
	slt	$a7, $a6, $a2
	maskeqz	$a6, $a6, $a7
	masknez	$a2, $a2, $a7
	ld.w	$a7, $a5, -4
	ld.hu	$t0, $a1, -2
	or	$a2, $a6, $a2
	st.w	$a2, $a5, -8
	ldptr.w	$a2, $a0, 5900
	add.w	$a6, $a7, $t0
	srai.d	$a7, $a6, 63
	andn	$a6, $a6, $a7
	slt	$a7, $a6, $a2
	maskeqz	$a6, $a6, $a7
	masknez	$a2, $a2, $a7
	ld.w	$a7, $a5, 0
	ld.hu	$t0, $a1, 0
	or	$a2, $a6, $a2
	st.w	$a2, $a5, -4
	ldptr.w	$a2, $a0, 5900
	add.w	$a6, $a7, $t0
	srai.d	$a7, $a6, 63
	andn	$a6, $a6, $a7
	slt	$a7, $a6, $a2
	maskeqz	$a6, $a6, $a7
	masknez	$a2, $a2, $a7
	or	$a2, $a6, $a2
	st.w	$a2, $a5, 0
	addi.d	$a4, $a4, 1
	addi.d	$a5, $a5, 64
	addi.d	$a1, $a1, 32
	blt	$a4, $a3, .LBB2_3
	b	.LBB2_8
.LBB2_4:                                # %.critedge
	pcalau12i	$a3, %pc_hi20(.LCPI2_0)
	vld	$vr0, $a3, %pc_lo12(.LCPI2_0)
	move	$a3, $zero
	addi.d	$a5, $a0, 1384
	vreplgr2vr.d	$vr1, $a2
	vadd.d	$vr0, $vr1, $vr0
	vaddi.du	$vr2, $vr1, 1
	slli.d	$a6, $a1, 2
	slli.d	$a4, $a2, 6
	vpickve2gr.d	$a7, $vr2, 1
	slli.d	$a7, $a7, 6
	add.d	$t2, $a5, $a7
	alsl.d	$a7, $a1, $t2, 2
	vpickve2gr.d	$t0, $vr0, 0
	slli.d	$t0, $t0, 6
	add.d	$t3, $a5, $t0
	alsl.d	$t0, $a1, $t3, 2
	vpickve2gr.d	$t1, $vr0, 1
	slli.d	$t1, $t1, 6
	add.d	$t4, $a5, $t1
	alsl.d	$t1, $a1, $t4, 2
	alsl.d	$a4, $a1, $a4, 2
	ldx.w	$t5, $a5, $a4
	ldx.w	$t2, $t2, $a6
	ldx.w	$t3, $t3, $a6
	ldx.w	$t4, $t4, $a6
	vinsgr2vr.w	$vr0, $t5, 0
	vinsgr2vr.w	$vr0, $t2, 1
	vinsgr2vr.w	$vr0, $t3, 2
	vinsgr2vr.w	$vr0, $t4, 3
	add.d	$a4, $a5, $a4
	ld.w	$t2, $a4, 16
	ld.w	$t3, $a7, 16
	ld.w	$t4, $t0, 16
	ld.w	$t5, $t1, 16
	vinsgr2vr.w	$vr2, $t2, 0
	vinsgr2vr.w	$vr2, $t3, 1
	vinsgr2vr.w	$vr2, $t4, 2
	vinsgr2vr.w	$vr2, $t5, 3
	vadd.w	$vr4, $vr2, $vr0
	vsub.w	$vr3, $vr0, $vr2
	ld.w	$t2, $a4, 8
	ld.w	$t3, $a7, 8
	ld.w	$t4, $t0, 8
	ld.w	$t5, $t1, 8
	vinsgr2vr.w	$vr0, $t2, 0
	vinsgr2vr.w	$vr0, $t3, 1
	vinsgr2vr.w	$vr0, $t4, 2
	vinsgr2vr.w	$vr0, $t5, 3
	vsrai.w	$vr2, $vr0, 1
	ld.w	$t2, $a4, 24
	ld.w	$t3, $a7, 24
	ld.w	$t4, $t0, 24
	ld.w	$t5, $t1, 24
	vinsgr2vr.w	$vr5, $t2, 0
	vinsgr2vr.w	$vr5, $t3, 1
	vinsgr2vr.w	$vr5, $t4, 2
	vinsgr2vr.w	$vr5, $t5, 3
	vsub.w	$vr6, $vr2, $vr5
	vsrai.w	$vr2, $vr5, 1
	vadd.w	$vr5, $vr2, $vr0
	vadd.w	$vr0, $vr5, $vr4
	vadd.w	$vr2, $vr6, $vr3
	vsub.w	$vr3, $vr3, $vr6
	vsub.w	$vr4, $vr4, $vr5
	ld.w	$t2, $a4, 12
	ld.w	$t3, $a7, 12
	ld.w	$t4, $t0, 12
	ld.w	$t5, $t1, 12
	vinsgr2vr.w	$vr5, $t2, 0
	vinsgr2vr.w	$vr5, $t3, 1
	vinsgr2vr.w	$vr5, $t4, 2
	vinsgr2vr.w	$vr5, $t5, 3
	ld.w	$t2, $a4, 20
	ld.w	$t3, $a7, 20
	ld.w	$t4, $t0, 20
	ld.w	$t5, $t1, 20
	vinsgr2vr.w	$vr6, $t2, 0
	vinsgr2vr.w	$vr6, $t3, 1
	vinsgr2vr.w	$vr6, $t4, 2
	vinsgr2vr.w	$vr6, $t5, 3
	ld.w	$t2, $a4, 28
	ld.w	$t3, $a7, 28
	ld.w	$t4, $t0, 28
	ld.w	$t5, $t1, 28
	vinsgr2vr.w	$vr7, $t2, 0
	vinsgr2vr.w	$vr7, $t3, 1
	vinsgr2vr.w	$vr7, $t4, 2
	vinsgr2vr.w	$vr7, $t5, 3
	vsrai.w	$vr8, $vr7, 1
	vadd.w	$vr9, $vr5, $vr7
	vadd.w	$vr8, $vr9, $vr8
	vsub.w	$vr8, $vr6, $vr8
	ld.w	$t2, $a4, 4
	ld.w	$a7, $a7, 4
	ld.w	$t0, $t0, 4
	ld.w	$t1, $t1, 4
	vinsgr2vr.w	$vr9, $t2, 0
	vinsgr2vr.w	$vr9, $a7, 1
	vinsgr2vr.w	$vr9, $t0, 2
	vinsgr2vr.w	$vr9, $t1, 3
	vsrai.w	$vr10, $vr5, 1
	vadd.w	$vr10, $vr10, $vr5
	vsub.w	$vr10, $vr7, $vr10
	vadd.w	$vr10, $vr10, $vr9
	vsrai.w	$vr11, $vr6, 1
	vadd.w	$vr7, $vr7, $vr6
	vadd.w	$vr7, $vr7, $vr11
	vsub.w	$vr7, $vr7, $vr9
	vadd.w	$vr5, $vr6, $vr5
	vadd.w	$vr5, $vr5, $vr9
	vsrai.w	$vr6, $vr9, 1
	vadd.w	$vr5, $vr5, $vr6
	vsrai.w	$vr6, $vr5, 2
	vadd.w	$vr6, $vr6, $vr8
	vsrai.w	$vr8, $vr8, 2
	vsub.w	$vr5, $vr5, $vr8
	vsrai.w	$vr8, $vr7, 2
	vadd.w	$vr8, $vr8, $vr10
	vsrai.w	$vr9, $vr10, 2
	vsub.w	$vr7, $vr9, $vr7
	vadd.w	$vr9, $vr5, $vr0
	vst	$vr9, $sp, 0
	vadd.w	$vr9, $vr7, $vr2
	vst	$vr9, $sp, 32
	vadd.w	$vr9, $vr8, $vr3
	vst	$vr9, $sp, 64
	vadd.w	$vr9, $vr6, $vr4
	vst	$vr9, $sp, 96
	vsub.w	$vr4, $vr4, $vr6
	vst	$vr4, $sp, 128
	vsub.w	$vr3, $vr3, $vr8
	vst	$vr3, $sp, 160
	vsub.w	$vr2, $vr2, $vr7
	vst	$vr2, $sp, 192
	pcalau12i	$a7, %pc_hi20(.LCPI2_1)
	vld	$vr2, $a7, %pc_lo12(.LCPI2_1)
	pcalau12i	$a7, %pc_hi20(.LCPI2_2)
	vld	$vr3, $a7, %pc_lo12(.LCPI2_2)
	vsub.w	$vr0, $vr0, $vr5
	vst	$vr0, $sp, 224
	vadd.d	$vr0, $vr1, $vr2
	vadd.d	$vr1, $vr1, $vr3
	vpickve2gr.d	$a7, $vr1, 0
	slli.d	$a7, $a7, 6
	add.d	$t3, $a5, $a7
	alsl.d	$a7, $a1, $t3, 2
	vpickve2gr.d	$t0, $vr1, 1
	slli.d	$t0, $t0, 6
	add.d	$t4, $a5, $t0
	alsl.d	$t0, $a1, $t4, 2
	vpickve2gr.d	$t1, $vr0, 0
	slli.d	$t1, $t1, 6
	add.d	$t5, $a5, $t1
	alsl.d	$t1, $a1, $t5, 2
	vpickve2gr.d	$t2, $vr0, 1
	slli.d	$t2, $t2, 6
	add.d	$t6, $a5, $t2
	alsl.d	$t2, $a1, $t6, 2
	ldx.w	$t3, $t3, $a6
	ldx.w	$t4, $t4, $a6
	ldx.w	$t5, $t5, $a6
	ldx.w	$a6, $t6, $a6
	vinsgr2vr.w	$vr0, $t3, 0
	vinsgr2vr.w	$vr0, $t4, 1
	vinsgr2vr.w	$vr0, $t5, 2
	vinsgr2vr.w	$vr0, $a6, 3
	ld.w	$a6, $a7, 16
	ld.w	$t3, $t0, 16
	ld.w	$t4, $t1, 16
	ld.w	$t5, $t2, 16
	vinsgr2vr.w	$vr1, $a6, 0
	vinsgr2vr.w	$vr1, $t3, 1
	vinsgr2vr.w	$vr1, $t4, 2
	vinsgr2vr.w	$vr1, $t5, 3
	vadd.w	$vr3, $vr1, $vr0
	vsub.w	$vr2, $vr0, $vr1
	ld.w	$a6, $a7, 8
	ld.w	$t3, $t0, 8
	ld.w	$t4, $t1, 8
	ld.w	$t5, $t2, 8
	vinsgr2vr.w	$vr0, $a6, 0
	vinsgr2vr.w	$vr0, $t3, 1
	vinsgr2vr.w	$vr0, $t4, 2
	vinsgr2vr.w	$vr0, $t5, 3
	vsrai.w	$vr1, $vr0, 1
	ld.w	$a6, $a7, 24
	ld.w	$t3, $t0, 24
	ld.w	$t4, $t1, 24
	ld.w	$t5, $t2, 24
	vinsgr2vr.w	$vr4, $a6, 0
	vinsgr2vr.w	$vr4, $t3, 1
	vinsgr2vr.w	$vr4, $t4, 2
	vinsgr2vr.w	$vr4, $t5, 3
	vsub.w	$vr5, $vr1, $vr4
	vsrai.w	$vr1, $vr4, 1
	vadd.w	$vr4, $vr1, $vr0
	vadd.w	$vr0, $vr4, $vr3
	vadd.w	$vr1, $vr5, $vr2
	vsub.w	$vr2, $vr2, $vr5
	vsub.w	$vr3, $vr3, $vr4
	ld.w	$a6, $a7, 12
	ld.w	$t3, $t0, 12
	ld.w	$t4, $t1, 12
	ld.w	$t5, $t2, 12
	vinsgr2vr.w	$vr4, $a6, 0
	vinsgr2vr.w	$vr4, $t3, 1
	vinsgr2vr.w	$vr4, $t4, 2
	vinsgr2vr.w	$vr4, $t5, 3
	ld.w	$a6, $a7, 20
	ld.w	$t3, $t0, 20
	ld.w	$t4, $t1, 20
	ld.w	$t5, $t2, 20
	vinsgr2vr.w	$vr5, $a6, 0
	vinsgr2vr.w	$vr5, $t3, 1
	vinsgr2vr.w	$vr5, $t4, 2
	vinsgr2vr.w	$vr5, $t5, 3
	ld.w	$a6, $a7, 28
	ld.w	$t3, $t0, 28
	ld.w	$t4, $t1, 28
	ld.w	$t5, $t2, 28
	vinsgr2vr.w	$vr6, $a6, 0
	vinsgr2vr.w	$vr6, $t3, 1
	vinsgr2vr.w	$vr6, $t4, 2
	vinsgr2vr.w	$vr6, $t5, 3
	vsrai.w	$vr7, $vr6, 1
	vadd.w	$vr8, $vr4, $vr6
	vadd.w	$vr7, $vr8, $vr7
	vsub.w	$vr7, $vr5, $vr7
	ld.w	$a6, $a7, 4
	ld.w	$a7, $t0, 4
	ld.w	$t0, $t1, 4
	ld.w	$t1, $t2, 4
	vinsgr2vr.w	$vr8, $a6, 0
	vinsgr2vr.w	$vr8, $a7, 1
	vinsgr2vr.w	$vr8, $t0, 2
	vinsgr2vr.w	$vr8, $t1, 3
	vsrai.w	$vr9, $vr4, 1
	vadd.w	$vr9, $vr9, $vr4
	vsub.w	$vr9, $vr6, $vr9
	vadd.w	$vr9, $vr9, $vr8
	vsrai.w	$vr10, $vr5, 1
	vadd.w	$vr6, $vr6, $vr5
	vadd.w	$vr6, $vr6, $vr10
	vsub.w	$vr6, $vr6, $vr8
	vadd.w	$vr4, $vr5, $vr4
	vadd.w	$vr4, $vr4, $vr8
	vsrai.w	$vr5, $vr8, 1
	vadd.w	$vr4, $vr4, $vr5
	vsrai.w	$vr5, $vr4, 2
	vadd.w	$vr5, $vr5, $vr7
	vsrai.w	$vr7, $vr7, 2
	vsub.w	$vr4, $vr4, $vr7
	vsrai.w	$vr7, $vr6, 2
	vadd.w	$vr7, $vr7, $vr9
	vsrai.w	$vr8, $vr9, 2
	vsub.w	$vr6, $vr8, $vr6
	vadd.w	$vr8, $vr4, $vr0
	addi.d	$a6, $sp, 16
	vst	$vr8, $sp, 16
	vadd.w	$vr8, $vr6, $vr1
	vst	$vr8, $sp, 48
	vadd.w	$vr8, $vr7, $vr2
	vst	$vr8, $sp, 80
	vadd.w	$vr8, $vr5, $vr3
	vst	$vr8, $sp, 112
	vsub.w	$vr3, $vr3, $vr5
	vst	$vr3, $sp, 144
	vsub.w	$vr2, $vr2, $vr7
	vst	$vr2, $sp, 176
	vsub.w	$vr1, $vr1, $vr6
	vst	$vr1, $sp, 208
	vsub.w	$vr0, $vr0, $vr4
	vst	$vr0, $sp, 240
	addi.w	$t0, $a2, 1
	addi.w	$t1, $a2, 2
	addi.w	$t2, $a2, 3
	addi.w	$t3, $a2, 4
	addi.w	$t4, $a2, 5
	addi.w	$t5, $a2, 6
	addi.w	$a7, $a2, 7
	slli.d	$t0, $t0, 6
	alsl.d	$t0, $a1, $t0, 2
	add.d	$t0, $a5, $t0
	slli.d	$t1, $t1, 6
	alsl.d	$t1, $a1, $t1, 2
	add.d	$t1, $a5, $t1
	slli.d	$t2, $t2, 6
	alsl.d	$t2, $a1, $t2, 2
	add.d	$t2, $a5, $t2
	slli.d	$t3, $t3, 6
	alsl.d	$t3, $a1, $t3, 2
	add.d	$t3, $a5, $t3
	slli.d	$t4, $t4, 6
	alsl.d	$t4, $a1, $t4, 2
	add.d	$t4, $a5, $t4
	slli.d	$t5, $t5, 6
	alsl.d	$t5, $a1, $t5, 2
	add.d	$t5, $a5, $t5
	slli.d	$t6, $a7, 6
	alsl.d	$t6, $a1, $t6, 2
	add.d	$a5, $a5, $t6
	ori	$t6, $zero, 32
	.p2align	4, , 16
.LBB2_5:                                # =>This Inner Loop Header: Depth=1
	ld.w	$t7, $a6, -16
	ld.w	$t8, $a6, 0
	ld.w	$fp, $a6, -8
	ld.w	$s0, $a6, 8
	add.d	$s1, $t8, $t7
	sub.d	$t7, $t7, $t8
	srli.d	$t8, $fp, 1
	sub.d	$t8, $t8, $s0
	srli.d	$s0, $s0, 1
	add.d	$fp, $s0, $fp
	add.d	$s0, $fp, $s1
	add.d	$s2, $t8, $t7
	sub.d	$t7, $t7, $t8
	ld.w	$t8, $a6, 12
	ld.w	$s3, $a6, -4
	sub.d	$fp, $s1, $fp
	ld.w	$s1, $a6, 4
	srli.d	$s4, $t8, 1
	add.d	$s5, $s3, $t8
	add.d	$s4, $s5, $s4
	sub.w	$s4, $s1, $s4
	ld.w	$s5, $a6, -12
	srli.d	$s6, $s3, 1
	add.d	$s6, $s6, $s3
	sub.d	$s6, $t8, $s6
	add.w	$s6, $s6, $s5
	srai.d	$s7, $s1, 1
	add.d	$t8, $t8, $s1
	add.d	$t8, $t8, $s7
	sub.w	$t8, $t8, $s5
	add.d	$s1, $s1, $s3
	add.d	$s1, $s1, $s5
	srli.d	$s3, $s5, 1
	add.w	$s1, $s1, $s3
	srli.d	$s3, $s1, 2
	add.d	$s3, $s3, $s4
	srli.d	$s4, $s4, 2
	sub.d	$s1, $s1, $s4
	srli.d	$s4, $t8, 2
	add.d	$s4, $s4, $s6
	srli.d	$s5, $s6, 2
	sub.d	$t8, $s5, $t8
	add.d	$s5, $s1, $s0
	stx.w	$s5, $a4, $a3
	add.d	$s5, $t8, $s2
	stx.w	$s5, $t0, $a3
	add.d	$s5, $s4, $t7
	stx.w	$s5, $t1, $a3
	add.d	$s5, $s3, $fp
	stx.w	$s5, $t2, $a3
	sub.d	$fp, $fp, $s3
	stx.w	$fp, $t3, $a3
	sub.d	$t7, $t7, $s4
	stx.w	$t7, $t4, $a3
	sub.d	$t7, $s2, $t8
	stx.w	$t7, $t5, $a3
	sub.d	$t7, $s0, $s1
	stx.w	$t7, $a5, $a3
	addi.d	$a3, $a3, 4
	addi.d	$a6, $a6, 32
	bne	$a3, $t6, .LBB2_5
# %bb.6:                                # %.preheader141
	slt	$a3, $a7, $a2
	masknez	$a4, $a7, $a3
	maskeqz	$a3, $a2, $a3
	or	$a3, $a3, $a4
	sub.d	$a3, $a3, $a2
	addi.d	$a3, $a3, 1
	slli.d	$a4, $a2, 5
	alsl.d	$a4, $a1, $a4, 1
	add.d	$a4, $a4, $a0
	addi.d	$a4, $a4, 118
	slli.d	$a2, $a2, 6
	alsl.d	$a1, $a1, $a2, 2
	add.d	$a1, $a1, $a0
	addi.d	$a1, $a1, 1412
	.p2align	4, , 16
.LBB2_7:                                # =>This Inner Loop Header: Depth=1
	ld.hu	$a2, $a4, -14
	ld.w	$a5, $a1, -28
	ldptr.w	$a6, $a0, 5900
	slli.d	$a2, $a2, 6
	add.d	$a2, $a5, $a2
	addi.w	$a2, $a2, 32
	srai.d	$a5, $a2, 6
	srai.d	$a2, $a2, 63
	andn	$a2, $a5, $a2
	slt	$a5, $a2, $a6
	maskeqz	$a2, $a2, $a5
	masknez	$a5, $a6, $a5
	or	$a2, $a2, $a5
	ld.hu	$a5, $a4, -12
	ld.w	$a6, $a1, -24
	st.w	$a2, $a1, -28
	ldptr.w	$a2, $a0, 5900
	slli.d	$a5, $a5, 6
	add.d	$a5, $a6, $a5
	addi.w	$a5, $a5, 32
	srai.d	$a6, $a5, 6
	srai.d	$a5, $a5, 63
	andn	$a5, $a6, $a5
	slt	$a6, $a5, $a2
	maskeqz	$a5, $a5, $a6
	masknez	$a2, $a2, $a6
	or	$a2, $a5, $a2
	ld.hu	$a5, $a4, -10
	ld.w	$a6, $a1, -20
	st.w	$a2, $a1, -24
	ldptr.w	$a2, $a0, 5900
	slli.d	$a5, $a5, 6
	add.d	$a5, $a6, $a5
	addi.w	$a5, $a5, 32
	srai.d	$a6, $a5, 6
	srai.d	$a5, $a5, 63
	andn	$a5, $a6, $a5
	slt	$a6, $a5, $a2
	maskeqz	$a5, $a5, $a6
	masknez	$a2, $a2, $a6
	or	$a2, $a5, $a2
	ld.hu	$a5, $a4, -8
	ld.w	$a6, $a1, -16
	st.w	$a2, $a1, -20
	ldptr.w	$a2, $a0, 5900
	slli.d	$a5, $a5, 6
	add.d	$a5, $a6, $a5
	addi.w	$a5, $a5, 32
	srai.d	$a6, $a5, 6
	srai.d	$a5, $a5, 63
	andn	$a5, $a6, $a5
	slt	$a6, $a5, $a2
	maskeqz	$a5, $a5, $a6
	masknez	$a2, $a2, $a6
	or	$a2, $a5, $a2
	ld.hu	$a5, $a4, -6
	ld.w	$a6, $a1, -12
	st.w	$a2, $a1, -16
	ldptr.w	$a2, $a0, 5900
	slli.d	$a5, $a5, 6
	add.d	$a5, $a6, $a5
	addi.w	$a5, $a5, 32
	srai.d	$a6, $a5, 6
	srai.d	$a5, $a5, 63
	andn	$a5, $a6, $a5
	slt	$a6, $a5, $a2
	maskeqz	$a5, $a5, $a6
	masknez	$a2, $a2, $a6
	or	$a2, $a5, $a2
	ld.hu	$a5, $a4, -4
	ld.w	$a6, $a1, -8
	st.w	$a2, $a1, -12
	ldptr.w	$a2, $a0, 5900
	slli.d	$a5, $a5, 6
	add.d	$a5, $a6, $a5
	addi.w	$a5, $a5, 32
	srai.d	$a6, $a5, 6
	srai.d	$a5, $a5, 63
	andn	$a5, $a6, $a5
	slt	$a6, $a5, $a2
	maskeqz	$a5, $a5, $a6
	masknez	$a2, $a2, $a6
	or	$a2, $a5, $a2
	ld.hu	$a5, $a4, -2
	ld.w	$a6, $a1, -4
	st.w	$a2, $a1, -8
	ldptr.w	$a2, $a0, 5900
	slli.d	$a5, $a5, 6
	add.d	$a5, $a6, $a5
	addi.w	$a5, $a5, 32
	srai.d	$a6, $a5, 6
	srai.d	$a5, $a5, 63
	andn	$a5, $a6, $a5
	slt	$a6, $a5, $a2
	maskeqz	$a5, $a5, $a6
	masknez	$a2, $a2, $a6
	or	$a2, $a5, $a2
	ld.hu	$a5, $a4, 0
	ld.w	$a6, $a1, 0
	st.w	$a2, $a1, -4
	ldptr.w	$a2, $a0, 5900
	slli.d	$a5, $a5, 6
	add.d	$a5, $a6, $a5
	addi.w	$a5, $a5, 32
	srai.d	$a6, $a5, 6
	srai.d	$a5, $a5, 63
	andn	$a5, $a6, $a5
	slt	$a6, $a5, $a2
	maskeqz	$a5, $a5, $a6
	masknez	$a2, $a2, $a6
	or	$a2, $a5, $a2
	st.w	$a2, $a1, 0
	addi.w	$a3, $a3, -1
	addi.d	$a4, $a4, 32
	addi.d	$a1, $a1, 64
	bnez	$a3, .LBB2_7
.LBB2_8:                                # %.loopexit
	ld.d	$s7, $sp, 264                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 272                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 280                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 288                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 296                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 304                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 312                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 320                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 328                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 336
	ret
.Lfunc_end2:
	.size	itrans8x8, .Lfunc_end2-itrans8x8
                                        # -- End function
	.type	quant_coef8,@object             # @quant_coef8
	.section	.rodata,"a",@progbits
	.globl	quant_coef8
	.p2align	2, 0x0
quant_coef8:
	.word	13107                           # 0x3333
	.word	12222                           # 0x2fbe
	.word	16777                           # 0x4189
	.word	12222                           # 0x2fbe
	.word	13107                           # 0x3333
	.word	12222                           # 0x2fbe
	.word	16777                           # 0x4189
	.word	12222                           # 0x2fbe
	.word	12222                           # 0x2fbe
	.word	11428                           # 0x2ca4
	.word	15481                           # 0x3c79
	.word	11428                           # 0x2ca4
	.word	12222                           # 0x2fbe
	.word	11428                           # 0x2ca4
	.word	15481                           # 0x3c79
	.word	11428                           # 0x2ca4
	.word	16777                           # 0x4189
	.word	15481                           # 0x3c79
	.word	20972                           # 0x51ec
	.word	15481                           # 0x3c79
	.word	16777                           # 0x4189
	.word	15481                           # 0x3c79
	.word	20972                           # 0x51ec
	.word	15481                           # 0x3c79
	.word	12222                           # 0x2fbe
	.word	11428                           # 0x2ca4
	.word	15481                           # 0x3c79
	.word	11428                           # 0x2ca4
	.word	12222                           # 0x2fbe
	.word	11428                           # 0x2ca4
	.word	15481                           # 0x3c79
	.word	11428                           # 0x2ca4
	.word	13107                           # 0x3333
	.word	12222                           # 0x2fbe
	.word	16777                           # 0x4189
	.word	12222                           # 0x2fbe
	.word	13107                           # 0x3333
	.word	12222                           # 0x2fbe
	.word	16777                           # 0x4189
	.word	12222                           # 0x2fbe
	.word	12222                           # 0x2fbe
	.word	11428                           # 0x2ca4
	.word	15481                           # 0x3c79
	.word	11428                           # 0x2ca4
	.word	12222                           # 0x2fbe
	.word	11428                           # 0x2ca4
	.word	15481                           # 0x3c79
	.word	11428                           # 0x2ca4
	.word	16777                           # 0x4189
	.word	15481                           # 0x3c79
	.word	20972                           # 0x51ec
	.word	15481                           # 0x3c79
	.word	16777                           # 0x4189
	.word	15481                           # 0x3c79
	.word	20972                           # 0x51ec
	.word	15481                           # 0x3c79
	.word	12222                           # 0x2fbe
	.word	11428                           # 0x2ca4
	.word	15481                           # 0x3c79
	.word	11428                           # 0x2ca4
	.word	12222                           # 0x2fbe
	.word	11428                           # 0x2ca4
	.word	15481                           # 0x3c79
	.word	11428                           # 0x2ca4
	.word	11916                           # 0x2e8c
	.word	11058                           # 0x2b32
	.word	14980                           # 0x3a84
	.word	11058                           # 0x2b32
	.word	11916                           # 0x2e8c
	.word	11058                           # 0x2b32
	.word	14980                           # 0x3a84
	.word	11058                           # 0x2b32
	.word	11058                           # 0x2b32
	.word	10826                           # 0x2a4a
	.word	14290                           # 0x37d2
	.word	10826                           # 0x2a4a
	.word	11058                           # 0x2b32
	.word	10826                           # 0x2a4a
	.word	14290                           # 0x37d2
	.word	10826                           # 0x2a4a
	.word	14980                           # 0x3a84
	.word	14290                           # 0x37d2
	.word	19174                           # 0x4ae6
	.word	14290                           # 0x37d2
	.word	14980                           # 0x3a84
	.word	14290                           # 0x37d2
	.word	19174                           # 0x4ae6
	.word	14290                           # 0x37d2
	.word	11058                           # 0x2b32
	.word	10826                           # 0x2a4a
	.word	14290                           # 0x37d2
	.word	10826                           # 0x2a4a
	.word	11058                           # 0x2b32
	.word	10826                           # 0x2a4a
	.word	14290                           # 0x37d2
	.word	10826                           # 0x2a4a
	.word	11916                           # 0x2e8c
	.word	11058                           # 0x2b32
	.word	14980                           # 0x3a84
	.word	11058                           # 0x2b32
	.word	11916                           # 0x2e8c
	.word	11058                           # 0x2b32
	.word	14980                           # 0x3a84
	.word	11058                           # 0x2b32
	.word	11058                           # 0x2b32
	.word	10826                           # 0x2a4a
	.word	14290                           # 0x37d2
	.word	10826                           # 0x2a4a
	.word	11058                           # 0x2b32
	.word	10826                           # 0x2a4a
	.word	14290                           # 0x37d2
	.word	10826                           # 0x2a4a
	.word	14980                           # 0x3a84
	.word	14290                           # 0x37d2
	.word	19174                           # 0x4ae6
	.word	14290                           # 0x37d2
	.word	14980                           # 0x3a84
	.word	14290                           # 0x37d2
	.word	19174                           # 0x4ae6
	.word	14290                           # 0x37d2
	.word	11058                           # 0x2b32
	.word	10826                           # 0x2a4a
	.word	14290                           # 0x37d2
	.word	10826                           # 0x2a4a
	.word	11058                           # 0x2b32
	.word	10826                           # 0x2a4a
	.word	14290                           # 0x37d2
	.word	10826                           # 0x2a4a
	.word	10082                           # 0x2762
	.word	9675                            # 0x25cb
	.word	12710                           # 0x31a6
	.word	9675                            # 0x25cb
	.word	10082                           # 0x2762
	.word	9675                            # 0x25cb
	.word	12710                           # 0x31a6
	.word	9675                            # 0x25cb
	.word	9675                            # 0x25cb
	.word	8943                            # 0x22ef
	.word	11985                           # 0x2ed1
	.word	8943                            # 0x22ef
	.word	9675                            # 0x25cb
	.word	8943                            # 0x22ef
	.word	11985                           # 0x2ed1
	.word	8943                            # 0x22ef
	.word	12710                           # 0x31a6
	.word	11985                           # 0x2ed1
	.word	15978                           # 0x3e6a
	.word	11985                           # 0x2ed1
	.word	12710                           # 0x31a6
	.word	11985                           # 0x2ed1
	.word	15978                           # 0x3e6a
	.word	11985                           # 0x2ed1
	.word	9675                            # 0x25cb
	.word	8943                            # 0x22ef
	.word	11985                           # 0x2ed1
	.word	8943                            # 0x22ef
	.word	9675                            # 0x25cb
	.word	8943                            # 0x22ef
	.word	11985                           # 0x2ed1
	.word	8943                            # 0x22ef
	.word	10082                           # 0x2762
	.word	9675                            # 0x25cb
	.word	12710                           # 0x31a6
	.word	9675                            # 0x25cb
	.word	10082                           # 0x2762
	.word	9675                            # 0x25cb
	.word	12710                           # 0x31a6
	.word	9675                            # 0x25cb
	.word	9675                            # 0x25cb
	.word	8943                            # 0x22ef
	.word	11985                           # 0x2ed1
	.word	8943                            # 0x22ef
	.word	9675                            # 0x25cb
	.word	8943                            # 0x22ef
	.word	11985                           # 0x2ed1
	.word	8943                            # 0x22ef
	.word	12710                           # 0x31a6
	.word	11985                           # 0x2ed1
	.word	15978                           # 0x3e6a
	.word	11985                           # 0x2ed1
	.word	12710                           # 0x31a6
	.word	11985                           # 0x2ed1
	.word	15978                           # 0x3e6a
	.word	11985                           # 0x2ed1
	.word	9675                            # 0x25cb
	.word	8943                            # 0x22ef
	.word	11985                           # 0x2ed1
	.word	8943                            # 0x22ef
	.word	9675                            # 0x25cb
	.word	8943                            # 0x22ef
	.word	11985                           # 0x2ed1
	.word	8943                            # 0x22ef
	.word	9362                            # 0x2492
	.word	8931                            # 0x22e3
	.word	11984                           # 0x2ed0
	.word	8931                            # 0x22e3
	.word	9362                            # 0x2492
	.word	8931                            # 0x22e3
	.word	11984                           # 0x2ed0
	.word	8931                            # 0x22e3
	.word	8931                            # 0x22e3
	.word	8228                            # 0x2024
	.word	11259                           # 0x2bfb
	.word	8228                            # 0x2024
	.word	8931                            # 0x22e3
	.word	8228                            # 0x2024
	.word	11259                           # 0x2bfb
	.word	8228                            # 0x2024
	.word	11984                           # 0x2ed0
	.word	11259                           # 0x2bfb
	.word	14913                           # 0x3a41
	.word	11259                           # 0x2bfb
	.word	11984                           # 0x2ed0
	.word	11259                           # 0x2bfb
	.word	14913                           # 0x3a41
	.word	11259                           # 0x2bfb
	.word	8931                            # 0x22e3
	.word	8228                            # 0x2024
	.word	11259                           # 0x2bfb
	.word	8228                            # 0x2024
	.word	8931                            # 0x22e3
	.word	8228                            # 0x2024
	.word	11259                           # 0x2bfb
	.word	8228                            # 0x2024
	.word	9362                            # 0x2492
	.word	8931                            # 0x22e3
	.word	11984                           # 0x2ed0
	.word	8931                            # 0x22e3
	.word	9362                            # 0x2492
	.word	8931                            # 0x22e3
	.word	11984                           # 0x2ed0
	.word	8931                            # 0x22e3
	.word	8931                            # 0x22e3
	.word	8228                            # 0x2024
	.word	11259                           # 0x2bfb
	.word	8228                            # 0x2024
	.word	8931                            # 0x22e3
	.word	8228                            # 0x2024
	.word	11259                           # 0x2bfb
	.word	8228                            # 0x2024
	.word	11984                           # 0x2ed0
	.word	11259                           # 0x2bfb
	.word	14913                           # 0x3a41
	.word	11259                           # 0x2bfb
	.word	11984                           # 0x2ed0
	.word	11259                           # 0x2bfb
	.word	14913                           # 0x3a41
	.word	11259                           # 0x2bfb
	.word	8931                            # 0x22e3
	.word	8228                            # 0x2024
	.word	11259                           # 0x2bfb
	.word	8228                            # 0x2024
	.word	8931                            # 0x22e3
	.word	8228                            # 0x2024
	.word	11259                           # 0x2bfb
	.word	8228                            # 0x2024
	.word	8192                            # 0x2000
	.word	7740                            # 0x1e3c
	.word	10486                           # 0x28f6
	.word	7740                            # 0x1e3c
	.word	8192                            # 0x2000
	.word	7740                            # 0x1e3c
	.word	10486                           # 0x28f6
	.word	7740                            # 0x1e3c
	.word	7740                            # 0x1e3c
	.word	7346                            # 0x1cb2
	.word	9777                            # 0x2631
	.word	7346                            # 0x1cb2
	.word	7740                            # 0x1e3c
	.word	7346                            # 0x1cb2
	.word	9777                            # 0x2631
	.word	7346                            # 0x1cb2
	.word	10486                           # 0x28f6
	.word	9777                            # 0x2631
	.word	13159                           # 0x3367
	.word	9777                            # 0x2631
	.word	10486                           # 0x28f6
	.word	9777                            # 0x2631
	.word	13159                           # 0x3367
	.word	9777                            # 0x2631
	.word	7740                            # 0x1e3c
	.word	7346                            # 0x1cb2
	.word	9777                            # 0x2631
	.word	7346                            # 0x1cb2
	.word	7740                            # 0x1e3c
	.word	7346                            # 0x1cb2
	.word	9777                            # 0x2631
	.word	7346                            # 0x1cb2
	.word	8192                            # 0x2000
	.word	7740                            # 0x1e3c
	.word	10486                           # 0x28f6
	.word	7740                            # 0x1e3c
	.word	8192                            # 0x2000
	.word	7740                            # 0x1e3c
	.word	10486                           # 0x28f6
	.word	7740                            # 0x1e3c
	.word	7740                            # 0x1e3c
	.word	7346                            # 0x1cb2
	.word	9777                            # 0x2631
	.word	7346                            # 0x1cb2
	.word	7740                            # 0x1e3c
	.word	7346                            # 0x1cb2
	.word	9777                            # 0x2631
	.word	7346                            # 0x1cb2
	.word	10486                           # 0x28f6
	.word	9777                            # 0x2631
	.word	13159                           # 0x3367
	.word	9777                            # 0x2631
	.word	10486                           # 0x28f6
	.word	9777                            # 0x2631
	.word	13159                           # 0x3367
	.word	9777                            # 0x2631
	.word	7740                            # 0x1e3c
	.word	7346                            # 0x1cb2
	.word	9777                            # 0x2631
	.word	7346                            # 0x1cb2
	.word	7740                            # 0x1e3c
	.word	7346                            # 0x1cb2
	.word	9777                            # 0x2631
	.word	7346                            # 0x1cb2
	.word	7282                            # 0x1c72
	.word	6830                            # 0x1aae
	.word	9118                            # 0x239e
	.word	6830                            # 0x1aae
	.word	7282                            # 0x1c72
	.word	6830                            # 0x1aae
	.word	9118                            # 0x239e
	.word	6830                            # 0x1aae
	.word	6830                            # 0x1aae
	.word	6428                            # 0x191c
	.word	8640                            # 0x21c0
	.word	6428                            # 0x191c
	.word	6830                            # 0x1aae
	.word	6428                            # 0x191c
	.word	8640                            # 0x21c0
	.word	6428                            # 0x191c
	.word	9118                            # 0x239e
	.word	8640                            # 0x21c0
	.word	11570                           # 0x2d32
	.word	8640                            # 0x21c0
	.word	9118                            # 0x239e
	.word	8640                            # 0x21c0
	.word	11570                           # 0x2d32
	.word	8640                            # 0x21c0
	.word	6830                            # 0x1aae
	.word	6428                            # 0x191c
	.word	8640                            # 0x21c0
	.word	6428                            # 0x191c
	.word	6830                            # 0x1aae
	.word	6428                            # 0x191c
	.word	8640                            # 0x21c0
	.word	6428                            # 0x191c
	.word	7282                            # 0x1c72
	.word	6830                            # 0x1aae
	.word	9118                            # 0x239e
	.word	6830                            # 0x1aae
	.word	7282                            # 0x1c72
	.word	6830                            # 0x1aae
	.word	9118                            # 0x239e
	.word	6830                            # 0x1aae
	.word	6830                            # 0x1aae
	.word	6428                            # 0x191c
	.word	8640                            # 0x21c0
	.word	6428                            # 0x191c
	.word	6830                            # 0x1aae
	.word	6428                            # 0x191c
	.word	8640                            # 0x21c0
	.word	6428                            # 0x191c
	.word	9118                            # 0x239e
	.word	8640                            # 0x21c0
	.word	11570                           # 0x2d32
	.word	8640                            # 0x21c0
	.word	9118                            # 0x239e
	.word	8640                            # 0x21c0
	.word	11570                           # 0x2d32
	.word	8640                            # 0x21c0
	.word	6830                            # 0x1aae
	.word	6428                            # 0x191c
	.word	8640                            # 0x21c0
	.word	6428                            # 0x191c
	.word	6830                            # 0x1aae
	.word	6428                            # 0x191c
	.word	8640                            # 0x21c0
	.word	6428                            # 0x191c
	.size	quant_coef8, 1536

	.type	dequant_coef8,@object           # @dequant_coef8
	.globl	dequant_coef8
	.p2align	2, 0x0
dequant_coef8:
	.word	20                              # 0x14
	.word	19                              # 0x13
	.word	25                              # 0x19
	.word	19                              # 0x13
	.word	20                              # 0x14
	.word	19                              # 0x13
	.word	25                              # 0x19
	.word	19                              # 0x13
	.word	19                              # 0x13
	.word	18                              # 0x12
	.word	24                              # 0x18
	.word	18                              # 0x12
	.word	19                              # 0x13
	.word	18                              # 0x12
	.word	24                              # 0x18
	.word	18                              # 0x12
	.word	25                              # 0x19
	.word	24                              # 0x18
	.word	32                              # 0x20
	.word	24                              # 0x18
	.word	25                              # 0x19
	.word	24                              # 0x18
	.word	32                              # 0x20
	.word	24                              # 0x18
	.word	19                              # 0x13
	.word	18                              # 0x12
	.word	24                              # 0x18
	.word	18                              # 0x12
	.word	19                              # 0x13
	.word	18                              # 0x12
	.word	24                              # 0x18
	.word	18                              # 0x12
	.word	20                              # 0x14
	.word	19                              # 0x13
	.word	25                              # 0x19
	.word	19                              # 0x13
	.word	20                              # 0x14
	.word	19                              # 0x13
	.word	25                              # 0x19
	.word	19                              # 0x13
	.word	19                              # 0x13
	.word	18                              # 0x12
	.word	24                              # 0x18
	.word	18                              # 0x12
	.word	19                              # 0x13
	.word	18                              # 0x12
	.word	24                              # 0x18
	.word	18                              # 0x12
	.word	25                              # 0x19
	.word	24                              # 0x18
	.word	32                              # 0x20
	.word	24                              # 0x18
	.word	25                              # 0x19
	.word	24                              # 0x18
	.word	32                              # 0x20
	.word	24                              # 0x18
	.word	19                              # 0x13
	.word	18                              # 0x12
	.word	24                              # 0x18
	.word	18                              # 0x12
	.word	19                              # 0x13
	.word	18                              # 0x12
	.word	24                              # 0x18
	.word	18                              # 0x12
	.word	22                              # 0x16
	.word	21                              # 0x15
	.word	28                              # 0x1c
	.word	21                              # 0x15
	.word	22                              # 0x16
	.word	21                              # 0x15
	.word	28                              # 0x1c
	.word	21                              # 0x15
	.word	21                              # 0x15
	.word	19                              # 0x13
	.word	26                              # 0x1a
	.word	19                              # 0x13
	.word	21                              # 0x15
	.word	19                              # 0x13
	.word	26                              # 0x1a
	.word	19                              # 0x13
	.word	28                              # 0x1c
	.word	26                              # 0x1a
	.word	35                              # 0x23
	.word	26                              # 0x1a
	.word	28                              # 0x1c
	.word	26                              # 0x1a
	.word	35                              # 0x23
	.word	26                              # 0x1a
	.word	21                              # 0x15
	.word	19                              # 0x13
	.word	26                              # 0x1a
	.word	19                              # 0x13
	.word	21                              # 0x15
	.word	19                              # 0x13
	.word	26                              # 0x1a
	.word	19                              # 0x13
	.word	22                              # 0x16
	.word	21                              # 0x15
	.word	28                              # 0x1c
	.word	21                              # 0x15
	.word	22                              # 0x16
	.word	21                              # 0x15
	.word	28                              # 0x1c
	.word	21                              # 0x15
	.word	21                              # 0x15
	.word	19                              # 0x13
	.word	26                              # 0x1a
	.word	19                              # 0x13
	.word	21                              # 0x15
	.word	19                              # 0x13
	.word	26                              # 0x1a
	.word	19                              # 0x13
	.word	28                              # 0x1c
	.word	26                              # 0x1a
	.word	35                              # 0x23
	.word	26                              # 0x1a
	.word	28                              # 0x1c
	.word	26                              # 0x1a
	.word	35                              # 0x23
	.word	26                              # 0x1a
	.word	21                              # 0x15
	.word	19                              # 0x13
	.word	26                              # 0x1a
	.word	19                              # 0x13
	.word	21                              # 0x15
	.word	19                              # 0x13
	.word	26                              # 0x1a
	.word	19                              # 0x13
	.word	26                              # 0x1a
	.word	24                              # 0x18
	.word	33                              # 0x21
	.word	24                              # 0x18
	.word	26                              # 0x1a
	.word	24                              # 0x18
	.word	33                              # 0x21
	.word	24                              # 0x18
	.word	24                              # 0x18
	.word	23                              # 0x17
	.word	31                              # 0x1f
	.word	23                              # 0x17
	.word	24                              # 0x18
	.word	23                              # 0x17
	.word	31                              # 0x1f
	.word	23                              # 0x17
	.word	33                              # 0x21
	.word	31                              # 0x1f
	.word	42                              # 0x2a
	.word	31                              # 0x1f
	.word	33                              # 0x21
	.word	31                              # 0x1f
	.word	42                              # 0x2a
	.word	31                              # 0x1f
	.word	24                              # 0x18
	.word	23                              # 0x17
	.word	31                              # 0x1f
	.word	23                              # 0x17
	.word	24                              # 0x18
	.word	23                              # 0x17
	.word	31                              # 0x1f
	.word	23                              # 0x17
	.word	26                              # 0x1a
	.word	24                              # 0x18
	.word	33                              # 0x21
	.word	24                              # 0x18
	.word	26                              # 0x1a
	.word	24                              # 0x18
	.word	33                              # 0x21
	.word	24                              # 0x18
	.word	24                              # 0x18
	.word	23                              # 0x17
	.word	31                              # 0x1f
	.word	23                              # 0x17
	.word	24                              # 0x18
	.word	23                              # 0x17
	.word	31                              # 0x1f
	.word	23                              # 0x17
	.word	33                              # 0x21
	.word	31                              # 0x1f
	.word	42                              # 0x2a
	.word	31                              # 0x1f
	.word	33                              # 0x21
	.word	31                              # 0x1f
	.word	42                              # 0x2a
	.word	31                              # 0x1f
	.word	24                              # 0x18
	.word	23                              # 0x17
	.word	31                              # 0x1f
	.word	23                              # 0x17
	.word	24                              # 0x18
	.word	23                              # 0x17
	.word	31                              # 0x1f
	.word	23                              # 0x17
	.word	28                              # 0x1c
	.word	26                              # 0x1a
	.word	35                              # 0x23
	.word	26                              # 0x1a
	.word	28                              # 0x1c
	.word	26                              # 0x1a
	.word	35                              # 0x23
	.word	26                              # 0x1a
	.word	26                              # 0x1a
	.word	25                              # 0x19
	.word	33                              # 0x21
	.word	25                              # 0x19
	.word	26                              # 0x1a
	.word	25                              # 0x19
	.word	33                              # 0x21
	.word	25                              # 0x19
	.word	35                              # 0x23
	.word	33                              # 0x21
	.word	45                              # 0x2d
	.word	33                              # 0x21
	.word	35                              # 0x23
	.word	33                              # 0x21
	.word	45                              # 0x2d
	.word	33                              # 0x21
	.word	26                              # 0x1a
	.word	25                              # 0x19
	.word	33                              # 0x21
	.word	25                              # 0x19
	.word	26                              # 0x1a
	.word	25                              # 0x19
	.word	33                              # 0x21
	.word	25                              # 0x19
	.word	28                              # 0x1c
	.word	26                              # 0x1a
	.word	35                              # 0x23
	.word	26                              # 0x1a
	.word	28                              # 0x1c
	.word	26                              # 0x1a
	.word	35                              # 0x23
	.word	26                              # 0x1a
	.word	26                              # 0x1a
	.word	25                              # 0x19
	.word	33                              # 0x21
	.word	25                              # 0x19
	.word	26                              # 0x1a
	.word	25                              # 0x19
	.word	33                              # 0x21
	.word	25                              # 0x19
	.word	35                              # 0x23
	.word	33                              # 0x21
	.word	45                              # 0x2d
	.word	33                              # 0x21
	.word	35                              # 0x23
	.word	33                              # 0x21
	.word	45                              # 0x2d
	.word	33                              # 0x21
	.word	26                              # 0x1a
	.word	25                              # 0x19
	.word	33                              # 0x21
	.word	25                              # 0x19
	.word	26                              # 0x1a
	.word	25                              # 0x19
	.word	33                              # 0x21
	.word	25                              # 0x19
	.word	32                              # 0x20
	.word	30                              # 0x1e
	.word	40                              # 0x28
	.word	30                              # 0x1e
	.word	32                              # 0x20
	.word	30                              # 0x1e
	.word	40                              # 0x28
	.word	30                              # 0x1e
	.word	30                              # 0x1e
	.word	28                              # 0x1c
	.word	38                              # 0x26
	.word	28                              # 0x1c
	.word	30                              # 0x1e
	.word	28                              # 0x1c
	.word	38                              # 0x26
	.word	28                              # 0x1c
	.word	40                              # 0x28
	.word	38                              # 0x26
	.word	51                              # 0x33
	.word	38                              # 0x26
	.word	40                              # 0x28
	.word	38                              # 0x26
	.word	51                              # 0x33
	.word	38                              # 0x26
	.word	30                              # 0x1e
	.word	28                              # 0x1c
	.word	38                              # 0x26
	.word	28                              # 0x1c
	.word	30                              # 0x1e
	.word	28                              # 0x1c
	.word	38                              # 0x26
	.word	28                              # 0x1c
	.word	32                              # 0x20
	.word	30                              # 0x1e
	.word	40                              # 0x28
	.word	30                              # 0x1e
	.word	32                              # 0x20
	.word	30                              # 0x1e
	.word	40                              # 0x28
	.word	30                              # 0x1e
	.word	30                              # 0x1e
	.word	28                              # 0x1c
	.word	38                              # 0x26
	.word	28                              # 0x1c
	.word	30                              # 0x1e
	.word	28                              # 0x1c
	.word	38                              # 0x26
	.word	28                              # 0x1c
	.word	40                              # 0x28
	.word	38                              # 0x26
	.word	51                              # 0x33
	.word	38                              # 0x26
	.word	40                              # 0x28
	.word	38                              # 0x26
	.word	51                              # 0x33
	.word	38                              # 0x26
	.word	30                              # 0x1e
	.word	28                              # 0x1c
	.word	38                              # 0x26
	.word	28                              # 0x1c
	.word	30                              # 0x1e
	.word	28                              # 0x1c
	.word	38                              # 0x26
	.word	28                              # 0x1c
	.word	36                              # 0x24
	.word	34                              # 0x22
	.word	46                              # 0x2e
	.word	34                              # 0x22
	.word	36                              # 0x24
	.word	34                              # 0x22
	.word	46                              # 0x2e
	.word	34                              # 0x22
	.word	34                              # 0x22
	.word	32                              # 0x20
	.word	43                              # 0x2b
	.word	32                              # 0x20
	.word	34                              # 0x22
	.word	32                              # 0x20
	.word	43                              # 0x2b
	.word	32                              # 0x20
	.word	46                              # 0x2e
	.word	43                              # 0x2b
	.word	58                              # 0x3a
	.word	43                              # 0x2b
	.word	46                              # 0x2e
	.word	43                              # 0x2b
	.word	58                              # 0x3a
	.word	43                              # 0x2b
	.word	34                              # 0x22
	.word	32                              # 0x20
	.word	43                              # 0x2b
	.word	32                              # 0x20
	.word	34                              # 0x22
	.word	32                              # 0x20
	.word	43                              # 0x2b
	.word	32                              # 0x20
	.word	36                              # 0x24
	.word	34                              # 0x22
	.word	46                              # 0x2e
	.word	34                              # 0x22
	.word	36                              # 0x24
	.word	34                              # 0x22
	.word	46                              # 0x2e
	.word	34                              # 0x22
	.word	34                              # 0x22
	.word	32                              # 0x20
	.word	43                              # 0x2b
	.word	32                              # 0x20
	.word	34                              # 0x22
	.word	32                              # 0x20
	.word	43                              # 0x2b
	.word	32                              # 0x20
	.word	46                              # 0x2e
	.word	43                              # 0x2b
	.word	58                              # 0x3a
	.word	43                              # 0x2b
	.word	46                              # 0x2e
	.word	43                              # 0x2b
	.word	58                              # 0x3a
	.word	43                              # 0x2b
	.word	34                              # 0x22
	.word	32                              # 0x20
	.word	43                              # 0x2b
	.word	32                              # 0x20
	.word	34                              # 0x22
	.word	32                              # 0x20
	.word	43                              # 0x2b
	.word	32                              # 0x20
	.size	dequant_coef8, 1536

	.type	getNeighbour,@object            # @getNeighbour
	.comm	getNeighbour,8,8
	.type	active_pps,@object              # @active_pps
	.comm	active_pps,8,8
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"warning: Intra_8x8_Vertical prediction mode not allowed at mb %d\n"
	.size	.L.str, 66

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"warning: Intra_8x8_Horizontal prediction mode not allowed at mb %d\n"
	.size	.L.str.1, 68

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"warning: Intra_8x8_Diagonal_Down_Left prediction mode not allowed at mb %d\n"
	.size	.L.str.2, 76

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"warning: Intra_4x4_Vertical_Left prediction mode not allowed at mb %d\n"
	.size	.L.str.3, 71

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"warning: Intra_8x8_Diagonal_Down_Right prediction mode not allowed at mb %d\n"
	.size	.L.str.4, 77

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"warning: Intra_8x8_Vertical_Right prediction mode not allowed at mb %d\n"
	.size	.L.str.5, 72

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"warning: Intra_8x8_Horizontal_Down prediction mode not allowed at mb %d\n"
	.size	.L.str.6, 73

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"warning: Intra_8x8_Horizontal_Up prediction mode not allowed at mb %d\n"
	.size	.L.str.7, 71

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"Error: illegal intra_4x4 prediction mode: %d\n"
	.size	.L.str.8, 46

	.type	active_sps,@object              # @active_sps
	.comm	active_sps,8,8
	.type	imgY_ref,@object                # @imgY_ref
	.comm	imgY_ref,8,8
	.type	imgUV_ref,@object               # @imgUV_ref
	.comm	imgUV_ref,8,8
	.type	PicPos,@object                  # @PicPos
	.comm	PicPos,8,8
	.type	ReMapRef,@object                # @ReMapRef
	.comm	ReMapRef,80,4
	.type	Bframe_ctr,@object              # @Bframe_ctr
	.comm	Bframe_ctr,4,4
	.type	frame_no,@object                # @frame_no
	.comm	frame_no,4,4
	.type	g_nFrame,@object                # @g_nFrame
	.comm	g_nFrame,4,4
	.type	TopFieldForSkip_Y,@object       # @TopFieldForSkip_Y
	.comm	TopFieldForSkip_Y,1024,4
	.type	TopFieldForSkip_UV,@object      # @TopFieldForSkip_UV
	.comm	TopFieldForSkip_UV,2048,4
	.type	InvLevelScale4x4Luma_Intra,@object # @InvLevelScale4x4Luma_Intra
	.comm	InvLevelScale4x4Luma_Intra,384,4
	.type	InvLevelScale4x4Chroma_Intra,@object # @InvLevelScale4x4Chroma_Intra
	.comm	InvLevelScale4x4Chroma_Intra,768,4
	.type	InvLevelScale4x4Luma_Inter,@object # @InvLevelScale4x4Luma_Inter
	.comm	InvLevelScale4x4Luma_Inter,384,4
	.type	InvLevelScale4x4Chroma_Inter,@object # @InvLevelScale4x4Chroma_Inter
	.comm	InvLevelScale4x4Chroma_Inter,768,4
	.type	InvLevelScale8x8Luma_Intra,@object # @InvLevelScale8x8Luma_Intra
	.comm	InvLevelScale8x8Luma_Intra,1536,4
	.type	InvLevelScale8x8Luma_Inter,@object # @InvLevelScale8x8Luma_Inter
	.comm	InvLevelScale8x8Luma_Inter,1536,4
	.type	qmatrix,@object                 # @qmatrix
	.comm	qmatrix,64,8
	.type	errortext,@object               # @errortext
	.comm	errortext,300,1
	.type	tot_time,@object                # @tot_time
	.comm	tot_time,8,8
	.type	p_out,@object                   # @p_out
	.comm	p_out,4,4
	.type	p_ref,@object                   # @p_ref
	.comm	p_ref,4,4
	.type	p_log,@object                   # @p_log
	.comm	p_log,8,8
	.type	previous_frame_num,@object      # @previous_frame_num
	.comm	previous_frame_num,4,4
	.type	ref_flag,@object                # @ref_flag
	.comm	ref_flag,68,4
	.type	Is_primary_correct,@object      # @Is_primary_correct
	.comm	Is_primary_correct,4,4
	.type	Is_redundant_correct,@object    # @Is_redundant_correct
	.comm	Is_redundant_correct,4,4
	.type	redundant_slice_ref_idx,@object # @redundant_slice_ref_idx
	.comm	redundant_slice_ref_idx,4,4
	.type	nal_startcode_follows,@object   # @nal_startcode_follows
	.comm	nal_startcode_follows,8,8
	.type	get_mb_block_pos,@object        # @get_mb_block_pos
	.comm	get_mb_block_pos,8,8
	.type	cofAC8x8_intra,@object          # @cofAC8x8_intra
	.comm	cofAC8x8_intra,8,8
	.type	cofAC8x8_iintra,@object         # @cofAC8x8_iintra
	.comm	cofAC8x8_iintra,8,8
	.section	".note.GNU-stack","",@progbits
	.addrsig
