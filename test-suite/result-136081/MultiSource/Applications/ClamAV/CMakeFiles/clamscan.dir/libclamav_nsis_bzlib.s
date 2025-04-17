	.file	"libclamav_nsis_bzlib.c"
	.text
	.globl	nsis_BZ2_bzDecompressInit       # -- Begin function nsis_BZ2_bzDecompressInit
	.p2align	5
	.type	nsis_BZ2_bzDecompressInit,@function
nsis_BZ2_bzDecompressInit:              # @nsis_BZ2_bzDecompressInit
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a1
	move	$s1, $a0
	ori	$a1, $zero, 4
	addi.w	$a0, $zero, -2
	bltu	$a1, $fp, .LBB0_10
# %bb.1:
	beqz	$s1, .LBB0_10
# %bb.2:
	move	$s0, $a2
	ori	$a1, $zero, 1
	bltu	$a1, $a2, .LBB0_10
# %bb.3:
	ld.d	$a3, $s1, 56
	beqz	$a3, .LBB0_7
# %bb.4:
	ld.d	$a0, $s1, 64
	beqz	$a0, .LBB0_8
.LBB0_5:
	ld.d	$a0, $s1, 72
	lu12i.w	$a1, 15
	ori	$a1, $a1, 2704
	ori	$a2, $zero, 1
	jirl	$ra, $a3, 0
	beqz	$a0, .LBB0_9
# %bb.6:
	ori	$a2, $zero, 10
	st.w	$a2, $a0, 8
	st.d	$s1, $a0, 0
	st.d	$a0, $s1, 48
	st.d	$zero, $a0, 32
	stptr.w	$zero, $a0, 3188
	st.d	$zero, $s1, 12
	st.d	$zero, $s1, 36
	st.b	$s0, $a0, 44
	st.w	$zero, $a0, 48
	vrepli.b	$vr0, 0
	ori	$a2, $zero, 3160
	vstx	$vr0, $a0, $a2
	stptr.d	$zero, $a0, 3152
	st.w	$fp, $a0, 52
	move	$a0, $zero
	b	.LBB0_10
.LBB0_7:
	pcalau12i	$a0, %pc_hi20(default_bzalloc)
	addi.d	$a3, $a0, %pc_lo12(default_bzalloc)
	st.d	$a3, $s1, 56
	ld.d	$a0, $s1, 64
	bnez	$a0, .LBB0_5
.LBB0_8:
	pcalau12i	$a0, %pc_hi20(default_bzfree)
	addi.d	$a0, $a0, %pc_lo12(default_bzfree)
	st.d	$a0, $s1, 64
	b	.LBB0_5
.LBB0_9:
	addi.w	$a0, $zero, -3
.LBB0_10:
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end0:
	.size	nsis_BZ2_bzDecompressInit, .Lfunc_end0-nsis_BZ2_bzDecompressInit
                                        # -- End function
	.p2align	5                               # -- Begin function default_bzalloc
	.type	default_bzalloc,@function
default_bzalloc:                        # @default_bzalloc
# %bb.0:
	mul.w	$a0, $a2, $a1
	pcaddu18i	$t8, %call36(cli_malloc)
	jr	$t8
.Lfunc_end1:
	.size	default_bzalloc, .Lfunc_end1-default_bzalloc
                                        # -- End function
	.p2align	5                               # -- Begin function default_bzfree
	.type	default_bzfree,@function
default_bzfree:                         # @default_bzfree
# %bb.0:
	beqz	$a1, .LBB2_2
# %bb.1:
	move	$a0, $a1
	pcaddu18i	$t8, %call36(free)
	jr	$t8
.LBB2_2:
	ret
.Lfunc_end2:
	.size	default_bzfree, .Lfunc_end2-default_bzfree
                                        # -- End function
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0                          # -- Begin function nsis_BZ2_bzDecompress
.LCPI3_0:
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	2                               # 0x2
	.byte	3                               # 0x3
	.byte	4                               # 0x4
	.byte	5                               # 0x5
	.byte	6                               # 0x6
	.byte	7                               # 0x7
	.byte	8                               # 0x8
	.byte	9                               # 0x9
	.byte	10                              # 0xa
	.byte	11                              # 0xb
	.byte	12                              # 0xc
	.byte	13                              # 0xd
	.byte	14                              # 0xe
	.byte	15                              # 0xf
	.byte	16                              # 0x10
	.byte	17                              # 0x11
	.byte	18                              # 0x12
	.byte	19                              # 0x13
	.byte	20                              # 0x14
	.byte	21                              # 0x15
	.byte	22                              # 0x16
	.byte	23                              # 0x17
	.byte	24                              # 0x18
	.byte	25                              # 0x19
	.byte	26                              # 0x1a
	.byte	27                              # 0x1b
	.byte	28                              # 0x1c
	.byte	29                              # 0x1d
	.byte	30                              # 0x1e
	.byte	31                              # 0x1f
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI3_1:
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	2                               # 0x2
	.byte	3                               # 0x3
	.byte	4                               # 0x4
	.byte	5                               # 0x5
	.byte	6                               # 0x6
	.byte	7                               # 0x7
	.byte	8                               # 0x8
	.byte	9                               # 0x9
	.byte	10                              # 0xa
	.byte	11                              # 0xb
	.byte	12                              # 0xc
	.byte	13                              # 0xd
	.byte	14                              # 0xe
	.byte	15                              # 0xf
	.text
	.globl	nsis_BZ2_bzDecompress
	.p2align	5
	.type	nsis_BZ2_bzDecompress,@function
nsis_BZ2_bzDecompress:                  # @nsis_BZ2_bzDecompress
# %bb.0:
	addi.d	$sp, $sp, -832
	st.d	$ra, $sp, 824                   # 8-byte Folded Spill
	st.d	$fp, $sp, 816                   # 8-byte Folded Spill
	st.d	$s0, $sp, 808                   # 8-byte Folded Spill
	st.d	$s1, $sp, 800                   # 8-byte Folded Spill
	st.d	$s2, $sp, 792                   # 8-byte Folded Spill
	st.d	$s3, $sp, 784                   # 8-byte Folded Spill
	st.d	$s4, $sp, 776                   # 8-byte Folded Spill
	st.d	$s5, $sp, 768                   # 8-byte Folded Spill
	st.d	$s6, $sp, 760                   # 8-byte Folded Spill
	st.d	$s7, $sp, 752                   # 8-byte Folded Spill
	st.d	$s8, $sp, 744                   # 8-byte Folded Spill
	move	$a1, $a0
	addi.w	$a0, $zero, -2
	beqz	$a1, .LBB3_472
# %bb.1:
	ld.d	$s5, $a1, 48
	beqz	$s5, .LBB3_472
# %bb.2:
	ld.d	$a2, $s5, 0
	bne	$a2, $a1, .LBB3_472
# %bb.3:                                # %.preheader
	addu16i.d	$a2, $s5, 1
	addi.d	$s1, $a2, -1500
	lu12i.w	$a0, 6
	ori	$a0, $a0, 1310
	add.d	$a0, $s5, $a0
	st.d	$a0, $sp, 352                   # 8-byte Folded Spill
	lu12i.w	$s8, 1
	ori	$a0, $s8, 3788
	add.d	$a0, $s5, $a0
	st.d	$a0, $sp, 360                   # 8-byte Folded Spill
	lu12i.w	$a0, 10
	ori	$a1, $a0, 2928
	add.d	$a1, $s5, $a1
	st.d	$a1, $sp, 160                   # 8-byte Folded Spill
	lu12i.w	$a1, 11
	ori	$a1, $a1, 380
	add.d	$a1, $s5, $a1
	st.d	$a1, $sp, 568                   # 8-byte Folded Spill
	lu12i.w	$a1, 12
	ori	$a3, $a1, 2476
	add.d	$a3, $s5, $a3
	st.d	$a3, $sp, 664                   # 8-byte Folded Spill
	lu12i.w	$a3, 14
	ori	$a3, $a3, 476
	add.d	$a3, $s5, $a3
	st.d	$a3, $sp, 368                   # 8-byte Folded Spill
	addi.d	$a2, $a2, -1524
	st.d	$a2, $sp, 560                   # 8-byte Folded Spill
	ori	$a2, $a1, 2484
	add.d	$a2, $s5, $a2
	st.d	$a2, $sp, 544                   # 8-byte Folded Spill
	ori	$a2, $a1, 2488
	add.d	$a2, $s5, $a2
	st.d	$a2, $sp, 536                   # 8-byte Folded Spill
	ori	$a2, $a1, 2492
	add.d	$a2, $s5, $a2
	st.d	$a2, $sp, 528                   # 8-byte Folded Spill
	ori	$a2, $a1, 2496
	add.d	$a2, $s5, $a2
	st.d	$a2, $sp, 520                   # 8-byte Folded Spill
	ori	$a2, $a1, 2500
	add.d	$a2, $s5, $a2
	st.d	$a2, $sp, 512                   # 8-byte Folded Spill
	ori	$a2, $a1, 2504
	add.d	$a2, $s5, $a2
	st.d	$a2, $sp, 504                   # 8-byte Folded Spill
	ori	$a2, $a1, 2508
	add.d	$a2, $s5, $a2
	st.d	$a2, $sp, 496                   # 8-byte Folded Spill
	ori	$a2, $a1, 2512
	add.d	$a2, $s5, $a2
	st.d	$a2, $sp, 488                   # 8-byte Folded Spill
	ori	$a2, $a1, 2516
	add.d	$a2, $s5, $a2
	st.d	$a2, $sp, 480                   # 8-byte Folded Spill
	ori	$a2, $a1, 2520
	add.d	$a2, $s5, $a2
	st.d	$a2, $sp, 472                   # 8-byte Folded Spill
	ori	$a2, $a1, 2524
	add.d	$a2, $s5, $a2
	st.d	$a2, $sp, 464                   # 8-byte Folded Spill
	ori	$a2, $a1, 2528
	add.d	$a2, $s5, $a2
	st.d	$a2, $sp, 456                   # 8-byte Folded Spill
	ori	$a2, $a1, 2532
	add.d	$a2, $s5, $a2
	st.d	$a2, $sp, 448                   # 8-byte Folded Spill
	ori	$a2, $a1, 2536
	add.d	$a2, $s5, $a2
	st.d	$a2, $sp, 440                   # 8-byte Folded Spill
	ori	$a2, $a1, 2540
	add.d	$a2, $s5, $a2
	st.d	$a2, $sp, 432                   # 8-byte Folded Spill
	ori	$a2, $a1, 2544
	add.d	$a2, $s5, $a2
	st.d	$a2, $sp, 424                   # 8-byte Folded Spill
	lu12i.w	$a2, 45216
	ori	$a2, $a2, 2312
	lu32i.d	$a2, -127732
	lu52i.d	$a2, $a2, 240
	vreplgr2vr.d	$vr0, $a2
	vst	$vr0, $sp, 128                  # 16-byte Folded Spill
	ori	$a2, $a1, 2548
	add.d	$a2, $s5, $a2
	st.d	$a2, $sp, 416                   # 8-byte Folded Spill
	ori	$a2, $a1, 2552
	add.d	$a2, $s5, $a2
	st.d	$a2, $sp, 408                   # 8-byte Folded Spill
	ori	$a2, $a1, 2556
	add.d	$a2, $s5, $a2
	st.d	$a2, $sp, 400                   # 8-byte Folded Spill
	ori	$a2, $a1, 2560
	add.d	$a2, $s5, $a2
	st.d	$a2, $sp, 392                   # 8-byte Folded Spill
	ori	$a2, $a1, 2564
	add.d	$a2, $s5, $a2
	st.d	$a2, $sp, 384                   # 8-byte Folded Spill
	ori	$a2, $s8, 3724
	add.d	$a2, $s5, $a2
	st.d	$a2, $sp, 80                    # 8-byte Folded Spill
	addi.d	$a2, $s5, 2047
	addi.d	$ra, $a2, 1149
	addi.d	$a3, $a2, 1421
	st.d	$a3, $sp, 176                   # 8-byte Folded Spill
	addi.d	$a3, $a2, 1677
	st.d	$a3, $sp, 264                   # 8-byte Folded Spill
	addi.d	$a3, $a2, 77
	st.d	$a3, $sp, 96                    # 8-byte Folded Spill
	addi.d	$a2, $a2, 1405
	st.d	$a2, $sp, 200                   # 8-byte Folded Spill
	ori	$a0, $a0, 2932
	add.d	$a0, $s5, $a0
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	ori	$a0, $a1, 2480
	add.d	$a0, $s5, $a0
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	ori	$a0, $s8, 3784
	add.d	$a0, $s5, $a0
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	ori	$a0, $s8, 3708
	add.d	$a0, $s5, $a0
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	ori	$a0, $s8, 3723
	add.d	$a0, $s5, $a0
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	ori	$t4, $zero, 0
	lu32i.d	$t4, 1
	lu12i.w	$a0, 24
	ori	$a0, $a0, 1696
	st.d	$a0, $sp, 608                   # 8-byte Folded Spill
	xvrepli.b	$xr3, 32
	xvrepli.b	$xr4, 64
	vrepli.b	$vr6, 0
	vrepli.w	$vr0, 32
	vst	$vr0, $sp, 240                  # 16-byte Folded Spill
	lu12i.w	$a0, 878
	ori	$a0, $a0, 3712
	st.d	$a0, $sp, 184                   # 8-byte Folded Spill
	lu12i.w	$a0, 439
	ori	$a0, $a0, 1856
	st.d	$a0, $sp, 216                   # 8-byte Folded Spill
	addi.d	$t7, $s5, 1096
	addi.d	$a0, $s5, 68
	st.d	$a0, $sp, 168                   # 8-byte Folded Spill
	ld.w	$a1, $s5, 8
	addi.d	$a0, $s5, 1100
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	ori	$t8, $zero, 1
	ori	$s4, $zero, 2
	st.d	$ra, $sp, 344                   # 8-byte Folded Spill
	st.d	$t4, $sp, 376                   # 8-byte Folded Spill
	xvst	$xr3, $sp, 304                  # 32-byte Folded Spill
	xvst	$xr4, $sp, 272                  # 32-byte Folded Spill
	vst	$vr6, $sp, 624                  # 16-byte Folded Spill
	st.d	$t7, $sp, 616                   # 8-byte Folded Spill
.LBB3_4:                                # %.outer
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_5 Depth 2
                                        #     Child Loop BB3_16 Depth 2
                                        #       Child Loop BB3_20 Depth 3
                                        #       Child Loop BB3_24 Depth 3
                                        #       Child Loop BB3_28 Depth 3
                                        #       Child Loop BB3_32 Depth 3
                                        #       Child Loop BB3_34 Depth 3
                                        #     Child Loop BB3_44 Depth 2
                                        #       Child Loop BB3_45 Depth 3
                                        #         Child Loop BB3_49 Depth 4
                                        #         Child Loop BB3_51 Depth 4
                                        #     Child Loop BB3_95 Depth 2
                                        #     Child Loop BB3_103 Depth 2
                                        #     Child Loop BB3_141 Depth 2
                                        #     Child Loop BB3_136 Depth 2
                                        #     Child Loop BB3_304 Depth 2
                                        #     Child Loop BB3_314 Depth 2
                                        #     Child Loop BB3_156 Depth 2
                                        #     Child Loop BB3_115 Depth 2
                                        #       Child Loop BB3_121 Depth 3
                                        #     Child Loop BB3_195 Depth 2
                                        #     Child Loop BB3_199 Depth 2
                                        #     Child Loop BB3_166 Depth 2
                                        #     Child Loop BB3_170 Depth 2
                                        #       Child Loop BB3_183 Depth 3
                                        #       Child Loop BB3_180 Depth 3
                                        #       Child Loop BB3_176 Depth 3
                                        #     Child Loop BB3_238 Depth 2
                                        #       Child Loop BB3_243 Depth 3
                                        #       Child Loop BB3_246 Depth 3
                                        #       Child Loop BB3_249 Depth 3
                                        #         Child Loop BB3_251 Depth 4
                                        #       Child Loop BB3_254 Depth 3
                                        #       Child Loop BB3_258 Depth 3
                                        #       Child Loop BB3_263 Depth 3
                                        #       Child Loop BB3_266 Depth 3
                                        #     Child Loop BB3_270 Depth 2
                                        #     Child Loop BB3_276 Depth 2
                                        #     Child Loop BB3_414 Depth 2
                                        #     Child Loop BB3_416 Depth 2
                                        #     Child Loop BB3_419 Depth 2
                                        #     Child Loop BB3_386 Depth 2
                                        #     Child Loop BB3_393 Depth 2
                                        #     Child Loop BB3_442 Depth 2
                                        #     Child Loop BB3_215 Depth 2
                                        #     Child Loop BB3_375 Depth 2
                                        #     Child Loop BB3_428 Depth 2
                                        #     Child Loop BB3_431 Depth 2
                                        #     Child Loop BB3_464 Depth 2
                                        #     Child Loop BB3_467 Depth 2
                                        #     Child Loop BB3_223 Depth 2
                                        #     Child Loop BB3_355 Depth 2
                                        #     Child Loop BB3_357 Depth 2
                                        #     Child Loop BB3_364 Depth 2
                                        #     Child Loop BB3_407 Depth 2
                                        #     Child Loop BB3_410 Depth 2
                                        #     Child Loop BB3_454 Depth 2
                                        #     Child Loop BB3_207 Depth 2
                                        #     Child Loop BB3_232 Depth 2
                                        #     Child Loop BB3_340 Depth 2
                                        #     Child Loop BB3_345 Depth 2
                                        #     Child Loop BB3_325 Depth 2
                                        #     Child Loop BB3_294 Depth 2
	ori	$a0, $zero, 10
	.p2align	4, , 16
.LBB3_5:                                #   Parent Loop BB3_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$a1, $t8, .LBB3_471
# %bb.6:                                #   in Loop: Header=BB3_5 Depth=2
	beq	$a1, $s4, .LBB3_12
# %bb.7:                                #   in Loop: Header=BB3_5 Depth=2
	blt	$a1, $a0, .LBB3_5
# %bb.8:                                #   in Loop: Header=BB3_4 Depth=1
	bne	$a1, $a0, .LBB3_42
# %bb.9:                                # %.thread
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.d	$fp, $s5, 0
	ori	$a2, $zero, 108
	move	$a0, $s1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.bu	$a1, $s5, 44
	ld.d	$a3, $fp, 56
	ld.d	$a0, $fp, 72
	ori	$a2, $zero, 9
	st.w	$a2, $s5, 40
	ori	$a2, $zero, 1
	beqz	$a1, .LBB3_83
# %bb.10:                               #   in Loop: Header=BB3_4 Depth=1
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	jirl	$ra, $a3, 0
	ld.w	$a1, $s5, 40
	ld.d	$a4, $fp, 56
	ld.d	$a3, $fp, 72
	stptr.d	$a0, $s5, 3160
	ld.d	$a0, $sp, 608                   # 8-byte Folded Reload
	mul.w	$a0, $a1, $a0
	srai.d	$a1, $a0, 1
	ori	$a2, $zero, 1
	move	$a0, $a3
	jirl	$ra, $a4, 0
	ldptr.d	$a3, $s5, 3160
	move	$a1, $a0
	move	$a2, $zero
	stptr.d	$a0, $s5, 3168
	addi.w	$a0, $zero, -3
	beqz	$a3, .LBB3_100
# %bb.11:                               #   in Loop: Header=BB3_4 Depth=1
	st.d	$a2, $sp, 704                   # 8-byte Folded Spill
	move	$t0, $a2
	move	$t6, $a2
	move	$fp, $a2
	move	$t1, $a2
	st.d	$a2, $sp, 656                   # 8-byte Folded Spill
	move	$s2, $a2
	move	$t2, $a2
	move	$t3, $a2
	move	$t5, $a2
	move	$t7, $a2
	move	$s0, $a2
	st.d	$a2, $sp, 648                   # 8-byte Folded Spill
	st.d	$a2, $sp, 712                   # 8-byte Folded Spill
	move	$s7, $a2
	move	$s3, $a2
	move	$a7, $a2
	st.d	$a2, $sp, 688                   # 8-byte Folded Spill
	move	$s4, $a2
	st.d	$a2, $sp, 672                   # 8-byte Folded Spill
	st.d	$a2, $sp, 680                   # 8-byte Folded Spill
	st.d	$a2, $sp, 696                   # 8-byte Folded Spill
	move	$s6, $a2
	move	$a3, $a2
	ld.d	$ra, $sp, 344                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 376                   # 8-byte Folded Reload
	xvld	$xr3, $sp, 304                  # 32-byte Folded Reload
	xvld	$xr4, $sp, 272                  # 32-byte Folded Reload
	vld	$vr6, $sp, 624                  # 16-byte Folded Reload
	ori	$t8, $zero, 1
	bnez	$a1, .LBB3_85
	b	.LBB3_449
.LBB3_12:                               #   in Loop: Header=BB3_4 Depth=1
	ld.bu	$a0, $s5, 44
	beqz	$a0, .LBB3_43
# %bb.13:                               #   in Loop: Header=BB3_4 Depth=1
	ld.d	$a0, $s5, 0
	ld.w	$a1, $a0, 32
	beqz	$a1, .LBB3_77
# %bb.14:                               # %.lr.ph.lr.ph.i
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.w	$a1, $s5, 16
	b	.LBB3_16
	.p2align	4, , 16
.LBB3_15:                               #   in Loop: Header=BB3_16 Depth=2
	beqz	$a2, .LBB3_77
.LBB3_16:                               # %.lr.ph.i.outer
                                        #   Parent Loop BB3_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB3_20 Depth 3
                                        #       Child Loop BB3_24 Depth 3
                                        #       Child Loop BB3_28 Depth 3
                                        #       Child Loop BB3_32 Depth 3
                                        #       Child Loop BB3_34 Depth 3
	bnez	$a1, .LBB3_38
# %bb.17:                               #   in Loop: Header=BB3_16 Depth=2
	ld.w	$a4, $s1, 44
	ld.w	$a1, $s5, 1092
	addi.w	$a2, $a4, 1
	beq	$a1, $a2, .LBB3_77
# %bb.18:                               #   in Loop: Header=BB3_16 Depth=2
	blt	$a2, $a1, .LBB3_473
# %bb.19:                               #   in Loop: Header=BB3_16 Depth=2
	ld.w	$a5, $s5, 64
	ld.w	$t0, $s5, 60
	move	$a7, $zero
	st.w	$t8, $s5, 16
	st.b	$a5, $s5, 12
	bstrpick.d	$t1, $t0, 31, 0
	ori	$a2, $zero, 256
	.p2align	4, , 16
.LBB3_20:                               #   Parent Loop BB3_4 Depth=1
                                        #     Parent Loop BB3_16 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.w	$a3, $a7, $a2
	srai.d	$a3, $a3, 1
	slli.d	$a6, $a3, 2
	ldx.w	$a6, $t7, $a6
	slt	$a6, $t0, $a6
	maskeqz	$t2, $a3, $a6
	masknez	$a2, $a2, $a6
	or	$a2, $t2, $a2
	masknez	$a3, $a3, $a6
	maskeqz	$a6, $a7, $a6
	or	$a7, $a6, $a3
	sub.w	$a3, $a2, $a7
	bne	$a3, $t8, .LBB3_20
# %bb.21:                               # %indexIntoF.exit.i
                                        #   in Loop: Header=BB3_16 Depth=2
	ldptr.d	$a2, $s5, 3160
	ldptr.d	$a3, $s5, 3168
	slli.d	$a6, $t1, 1
	ldx.hu	$a6, $a2, $a6
	srli.d	$t1, $t1, 1
	ldx.bu	$t1, $a3, $t1
	slli.d	$t0, $t0, 2
	andi	$t0, $t0, 4
	srl.w	$t0, $t1, $t0
	move	$t1, $a6
	bstrins.d	$t1, $t0, 19, 16
	st.w	$t1, $s5, 60
	addi.w	$t0, $a1, 1
	st.w	$t0, $s5, 1092
	beq	$a1, $a4, .LBB3_37
# %bb.22:                               #   in Loop: Header=BB3_16 Depth=2
	andi	$a7, $a7, 255
	bne	$a7, $a5, .LBB3_36
# %bb.23:                               #   in Loop: Header=BB3_16 Depth=2
	move	$fp, $t4
	move	$t3, $zero
	st.w	$s4, $s5, 16
	ori	$a7, $zero, 256
	.p2align	4, , 16
.LBB3_24:                               #   Parent Loop BB3_4 Depth=1
                                        #     Parent Loop BB3_16 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.w	$t2, $t3, $a7
	srai.d	$t4, $t2, 1
	slli.d	$t2, $t4, 2
	ldx.w	$t5, $t7, $t2
	addi.w	$t2, $t1, 0
	slt	$t5, $t2, $t5
	maskeqz	$t6, $t4, $t5
	masknez	$a7, $a7, $t5
	or	$a7, $t6, $a7
	masknez	$t4, $t4, $t5
	maskeqz	$t3, $t3, $t5
	or	$t3, $t3, $t4
	sub.w	$t4, $a7, $t3
	bne	$t4, $t8, .LBB3_24
# %bb.25:                               # %indexIntoF.exit98.i
                                        #   in Loop: Header=BB3_16 Depth=2
	slli.d	$a7, $t2, 1
	ldx.hu	$a7, $a2, $a7
	bstrpick.d	$t1, $t1, 31, 1
	ldx.bu	$t1, $a3, $t1
	slli.d	$a6, $a6, 2
	andi	$a6, $a6, 4
	srl.w	$a6, $t1, $a6
	move	$t2, $a7
	bstrins.d	$t2, $a6, 19, 16
	st.w	$t2, $s5, 60
	addi.w	$t1, $a1, 2
	st.w	$t1, $s5, 1092
	move	$t4, $fp
	beq	$t0, $a4, .LBB3_37
# %bb.26:                               #   in Loop: Header=BB3_16 Depth=2
	andi	$a6, $t3, 255
	bne	$a6, $a5, .LBB3_40
# %bb.27:                               #   in Loop: Header=BB3_16 Depth=2
	move	$t0, $zero
	ori	$a6, $zero, 3
	st.w	$a6, $s5, 16
	ori	$a6, $zero, 256
	.p2align	4, , 16
.LBB3_28:                               #   Parent Loop BB3_4 Depth=1
                                        #     Parent Loop BB3_16 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.w	$t3, $t0, $a6
	srai.d	$t4, $t3, 1
	slli.d	$t3, $t4, 2
	ldx.w	$t5, $t7, $t3
	addi.w	$t3, $t2, 0
	slt	$t5, $t3, $t5
	maskeqz	$t6, $t4, $t5
	masknez	$a6, $a6, $t5
	or	$a6, $t6, $a6
	masknez	$t4, $t4, $t5
	maskeqz	$t0, $t0, $t5
	or	$t0, $t0, $t4
	sub.w	$t4, $a6, $t0
	bne	$t4, $t8, .LBB3_28
# %bb.29:                               # %indexIntoF.exit105.i
                                        #   in Loop: Header=BB3_16 Depth=2
	slli.d	$a6, $t3, 1
	ldx.hu	$a6, $a2, $a6
	bstrpick.d	$t2, $t2, 31, 1
	ldx.bu	$t2, $a3, $t2
	slli.d	$a7, $a7, 2
	andi	$a7, $a7, 4
	srl.w	$t2, $t2, $a7
	move	$a7, $a6
	bstrins.d	$a7, $t2, 19, 16
	st.w	$a7, $s5, 60
	addi.d	$t2, $a1, 3
	st.w	$t2, $s5, 1092
	move	$t4, $fp
	beq	$t1, $a4, .LBB3_37
# %bb.30:                               #   in Loop: Header=BB3_16 Depth=2
	andi	$a4, $t0, 255
	bne	$a4, $a5, .LBB3_41
# %bb.31:                               # %.preheader.i.preheader
                                        #   in Loop: Header=BB3_16 Depth=2
	move	$a5, $zero
	ori	$a4, $zero, 256
.LBB3_32:                               # %.preheader.i
                                        #   Parent Loop BB3_4 Depth=1
                                        #     Parent Loop BB3_16 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.w	$t0, $a5, $a4
	srai.d	$t1, $t0, 1
	slli.d	$t0, $t1, 2
	ldx.w	$t2, $t7, $t0
	addi.w	$t0, $a7, 0
	slt	$t2, $t0, $t2
	maskeqz	$t3, $t1, $t2
	masknez	$a4, $a4, $t2
	or	$a4, $t3, $a4
	masknez	$t1, $t1, $t2
	maskeqz	$a5, $a5, $t2
	or	$a5, $a5, $t1
	sub.w	$t1, $a4, $a5
	bne	$t1, $t8, .LBB3_32
# %bb.33:                               # %indexIntoF.exit112.i
                                        #   in Loop: Header=BB3_16 Depth=2
	slli.d	$a4, $t0, 1
	ldx.hu	$a4, $a2, $a4
	bstrpick.d	$a7, $a7, 31, 1
	ldx.bu	$t0, $a3, $a7
	move	$a7, $zero
	slli.d	$a6, $a6, 2
	andi	$a6, $a6, 4
	srl.w	$t0, $t0, $a6
	move	$a6, $a4
	bstrins.d	$a6, $t0, 19, 16
	addi.d	$t0, $a1, 4
	st.w	$t0, $s5, 1092
	st.w	$a6, $s5, 60
	andi	$a5, $a5, 255
	addi.d	$a5, $a5, 4
	st.w	$a5, $s5, 16
	ori	$a5, $zero, 256
.LBB3_34:                               #   Parent Loop BB3_4 Depth=1
                                        #     Parent Loop BB3_16 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.w	$t0, $a7, $a5
	srai.d	$t1, $t0, 1
	slli.d	$t0, $t1, 2
	ldx.w	$t2, $t7, $t0
	addi.w	$t0, $a6, 0
	slt	$t2, $t0, $t2
	maskeqz	$t3, $t1, $t2
	masknez	$a5, $a5, $t2
	or	$a5, $t3, $a5
	masknez	$t1, $t1, $t2
	maskeqz	$a7, $a7, $t2
	or	$a7, $a7, $t1
	sub.w	$t1, $a5, $a7
	bne	$t1, $t8, .LBB3_34
# %bb.35:                               # %indexIntoF.exit119.i
                                        #   in Loop: Header=BB3_16 Depth=2
	st.w	$a7, $s5, 64
	slli.d	$a5, $t0, 1
	bstrpick.d	$a6, $a6, 31, 1
	ldx.bu	$a3, $a3, $a6
	ldx.hu	$a2, $a2, $a5
	slli.d	$a4, $a4, 2
	andi	$a4, $a4, 4
	srl.w	$a3, $a3, $a4
	bstrins.d	$a2, $a3, 19, 16
	st.w	$a2, $s5, 60
	addi.d	$a1, $a1, 5
	st.w	$a1, $s5, 1092
	b	.LBB3_37
.LBB3_36:                               #   in Loop: Header=BB3_16 Depth=2
	st.w	$a7, $s5, 64
.LBB3_37:                               # %.backedge.i
                                        #   in Loop: Header=BB3_16 Depth=2
	ld.w	$a1, $a0, 32
	beqz	$a1, .LBB3_77
.LBB3_38:                               # %.critedge
                                        #   in Loop: Header=BB3_16 Depth=2
	ld.b	$a1, $s5, 12
	ld.d	$a0, $a0, 24
	st.b	$a1, $a0, 0
	ld.d	$a0, $s5, 0
	ld.w	$a1, $s5, 16
	ld.d	$a2, $a0, 24
	addi.w	$a1, $a1, -1
	st.w	$a1, $s5, 16
	ld.w	$a3, $a0, 32
	addi.d	$a2, $a2, 1
	ld.wu	$a4, $a0, 36
	st.d	$a2, $a0, 24
	addi.w	$a2, $a3, -1
	st.w	$a2, $a0, 32
	addi.d	$a3, $a4, 1
	and	$a4, $a3, $t4
	st.w	$a3, $a0, 36
	beqz	$a4, .LBB3_15
# %bb.39:                               #   in Loop: Header=BB3_16 Depth=2
	ld.w	$a3, $a0, 40
	addi.d	$a3, $a3, 1
	st.w	$a3, $a0, 40
	b	.LBB3_15
.LBB3_40:                               #   in Loop: Header=BB3_16 Depth=2
	st.w	$a6, $s5, 64
	b	.LBB3_37
.LBB3_41:                               #   in Loop: Header=BB3_16 Depth=2
	st.w	$a4, $s5, 64
	b	.LBB3_37
.LBB3_42:                               # %.._crit_edge1797.i_crit_edge
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.w	$t7, $s1, 44
	b	.LBB3_80
.LBB3_43:                               #   in Loop: Header=BB3_4 Depth=1
	ori	$a0, $zero, 3184
	ldx.w	$a1, $s5, $a0
	ld.bu	$t2, $s5, 12
	ld.w	$t3, $s5, 16
	ld.w	$t4, $s5, 1092
	ld.d	$a0, $s5, 0
	ld.w	$t1, $s5, 64
	ldptr.d	$a2, $s5, 3152
	ld.w	$a5, $s5, 60
	ld.w	$a4, $a0, 32
	ld.w	$t0, $s1, 44
	ld.d	$a3, $a0, 24
	addi.w	$a7, $t0, 1
	move	$a6, $a4
.LBB3_44:                               # %.backedge.i33
                                        #   Parent Loop BB3_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB3_45 Depth 3
                                        #         Child Loop BB3_49 Depth 4
                                        #         Child Loop BB3_51 Depth 4
	ori	$s4, $zero, 64
.LBB3_45:                               # %.backedge.i33
                                        #   Parent Loop BB3_4 Depth=1
                                        #     Parent Loop BB3_44 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB3_49 Depth 4
                                        #         Child Loop BB3_51 Depth 4
	ori	$t8, $zero, 1
	blt	$t3, $t8, .LBB3_53
# %bb.46:                               # %.preheader.i34
                                        #   in Loop: Header=BB3_45 Depth=3
	ld.d	$t7, $sp, 376                   # 8-byte Folded Reload
	beqz	$a6, .LBB3_73
# %bb.47:                               # %.lr.ph.i35.preheader
                                        #   in Loop: Header=BB3_45 Depth=3
	addi.w	$a0, $a6, -1
	addi.w	$t5, $t3, -1
	sltu	$t6, $a0, $t5
	masknez	$t5, $t5, $t6
	maskeqz	$a0, $a0, $t6
	or	$a0, $a0, $t5
	bltu	$a0, $s4, .LBB3_51
# %bb.48:                               # %vector.ph652
                                        #   in Loop: Header=BB3_45 Depth=3
	bstrpick.d	$a0, $a0, 31, 0
	addi.d	$a0, $a0, 1
	andi	$t5, $a0, 63
	sltui	$t6, $t5, 1
	masknez	$t5, $t5, $t6
	maskeqz	$t6, $s4, $t6
	or	$t5, $t6, $t5
	sub.d	$a0, $a0, $t5
	sub.w	$a6, $a6, $a0
	add.d	$t5, $a3, $a0
	sub.w	$t3, $t3, $a0
	xvreplgr2vr.b	$xr0, $t2
	addi.d	$a3, $a3, 32
	.p2align	4, , 16
.LBB3_49:                               # %vector.body657
                                        #   Parent Loop BB3_4 Depth=1
                                        #     Parent Loop BB3_44 Depth=2
                                        #       Parent Loop BB3_45 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	xvst	$xr0, $a3, -32
	xvst	$xr0, $a3, 0
	addi.d	$a0, $a0, -64
	addi.d	$a3, $a3, 64
	bnez	$a0, .LBB3_49
# %bb.50:                               #   in Loop: Header=BB3_45 Depth=3
	move	$a3, $t5
	.p2align	4, , 16
.LBB3_51:                               # %.lr.ph.i35
                                        #   Parent Loop BB3_4 Depth=1
                                        #     Parent Loop BB3_44 Depth=2
                                        #       Parent Loop BB3_45 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	beq	$t3, $t8, .LBB3_54
# %bb.52:                               #   in Loop: Header=BB3_51 Depth=4
	st.b	$t2, $a3, 0
	addi.w	$t3, $t3, -1
	addi.w	$a6, $a6, -1
	addi.d	$a3, $a3, 1
	bnez	$a6, .LBB3_51
	b	.LBB3_73
.LBB3_53:                               #   in Loop: Header=BB3_45 Depth=3
	move	$t5, $t4
	move	$t6, $t1
	ld.d	$t3, $sp, 376                   # 8-byte Folded Reload
	b	.LBB3_57
.LBB3_54:                               #   in Loop: Header=BB3_45 Depth=3
	move	$t5, $t4
	move	$t3, $t7
.LBB3_55:                               # %.loopexit156.i
                                        #   in Loop: Header=BB3_45 Depth=3
	beqz	$a6, .LBB3_159
# %bb.56:                               #   in Loop: Header=BB3_45 Depth=3
	st.b	$t2, $a3, 0
	addi.d	$a3, $a3, 1
	addi.w	$a6, $a6, -1
	move	$t6, $t1
.LBB3_57:                               #   in Loop: Header=BB3_45 Depth=3
	addi.w	$a0, $zero, -4
	blt	$a7, $t5, .LBB3_472
# %bb.58:                               #   in Loop: Header=BB3_45 Depth=3
	beq	$t5, $a7, .LBB3_160
# %bb.59:                               #   in Loop: Header=BB3_45 Depth=3
	ld.w	$t1, $s5, 40
	ld.d	$t2, $sp, 608                   # 8-byte Folded Reload
	mul.w	$t7, $t1, $t2
	addi.w	$t1, $a5, 0
	bgeu	$t1, $t7, .LBB3_472
# %bb.60:                               #   in Loop: Header=BB3_45 Depth=3
	bstrpick.d	$a5, $a5, 31, 0
	slli.d	$a5, $a5, 2
	ldx.wu	$t1, $a2, $a5
	srli.d	$a5, $t1, 8
	andi	$t1, $t1, 255
	addi.w	$t2, $t5, 1
	bne	$t1, $t6, .LBB3_63
# %bb.61:                               #   in Loop: Header=BB3_45 Depth=3
	bne	$t5, $t0, .LBB3_64
# %bb.62:                               #   in Loop: Header=BB3_45 Depth=3
	move	$t5, $t2
	move	$t1, $t6
	move	$t2, $t6
	b	.LBB3_55
.LBB3_63:                               #   in Loop: Header=BB3_45 Depth=3
	move	$t5, $t2
	move	$t2, $t6
	b	.LBB3_55
.LBB3_64:                               #   in Loop: Header=BB3_45 Depth=3
	bgeu	$a5, $t7, .LBB3_472
# %bb.65:                               #   in Loop: Header=BB3_45 Depth=3
	slli.d	$a5, $a5, 2
	ldx.wu	$t8, $a2, $a5
	srli.d	$a5, $t8, 8
	addi.w	$fp, $t5, 2
	ori	$t3, $zero, 2
	move	$t4, $a7
	move	$t1, $t6
	move	$t2, $t6
	beq	$fp, $a7, .LBB3_45
# %bb.66:                               #   in Loop: Header=BB3_45 Depth=3
	andi	$t1, $t8, 255
	move	$t4, $fp
	move	$t2, $t6
	bne	$t1, $t6, .LBB3_45
# %bb.67:                               #   in Loop: Header=BB3_45 Depth=3
	bgeu	$a5, $t7, .LBB3_472
# %bb.68:                               #   in Loop: Header=BB3_45 Depth=3
	slli.d	$a5, $a5, 2
	ldx.wu	$t8, $a2, $a5
	srli.d	$a5, $t8, 8
	addi.w	$fp, $t5, 3
	ori	$t3, $zero, 3
	move	$t4, $a7
	move	$t1, $t6
	move	$t2, $t6
	beq	$fp, $a7, .LBB3_45
# %bb.69:                               #   in Loop: Header=BB3_45 Depth=3
	andi	$t1, $t8, 255
	move	$t4, $fp
	move	$t2, $t6
	bne	$t1, $t6, .LBB3_45
# %bb.70:                               #   in Loop: Header=BB3_44 Depth=2
	bgeu	$a5, $t7, .LBB3_472
# %bb.71:                               #   in Loop: Header=BB3_44 Depth=2
	slli.d	$a5, $a5, 2
	ldx.wu	$a5, $a2, $a5
	srli.d	$t1, $a5, 8
	bgeu	$t1, $t7, .LBB3_472
# %bb.72:                               #   in Loop: Header=BB3_44 Depth=2
	slli.d	$a0, $t1, 2
	ldx.wu	$a0, $a2, $a0
	andi	$a5, $a5, 255
	addi.w	$t3, $a5, 4
	andi	$t1, $a0, 255
	srli.d	$a5, $a0, 8
	addi.w	$t4, $t5, 5
	move	$t2, $t6
	b	.LBB3_44
.LBB3_73:                               #   in Loop: Header=BB3_4 Depth=1
	move	$a6, $zero
.LBB3_74:                               # %.loopexit.i
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.d	$a0, $s5, 0
	ld.wu	$a7, $a0, 36
	sub.d	$a4, $a4, $a6
	bstrpick.d	$a4, $a4, 31, 0
	add.d	$a4, $a7, $a4
	and	$a7, $a4, $t7
	st.w	$a4, $a0, 36
	beqz	$a7, .LBB3_76
# %bb.75:                               #   in Loop: Header=BB3_4 Depth=1
	ld.w	$a4, $a0, 40
	addi.d	$a4, $a4, 1
	st.w	$a4, $a0, 40
.LBB3_76:                               #   in Loop: Header=BB3_4 Depth=1
	stptr.w	$a1, $s5, 3184
	st.b	$t2, $s5, 12
	st.w	$t3, $s5, 16
	st.w	$t4, $s5, 1092
	st.w	$t1, $s5, 64
	stptr.d	$a2, $s5, 3152
	st.w	$a5, $s5, 60
	st.d	$a3, $a0, 24
	st.w	$a6, $a0, 32
	move	$t4, $t7
.LBB3_77:                               # %unRLE_obuf_to_output_SMALL.exit
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.w	$t7, $s1, 44
	ld.w	$a0, $s5, 1092
	addi.w	$a1, $t7, 1
	bne	$a0, $a1, .LBB3_475
# %bb.78:                               #   in Loop: Header=BB3_4 Depth=1
	ld.w	$a0, $s5, 16
	bnez	$a0, .LBB3_475
# %bb.79:                               # %.thread53
                                        #   in Loop: Header=BB3_4 Depth=1
	ori	$a1, $zero, 14
	st.w	$a1, $s5, 8
.LBB3_80:                               #   in Loop: Header=BB3_4 Depth=1
	ld.w	$a2, $s1, 0
	ld.w	$a0, $s1, 4
	st.d	$a0, $sp, 704                   # 8-byte Folded Spill
	ld.w	$t0, $s1, 8
	ld.w	$t6, $s1, 12
	ld.w	$fp, $s1, 16
	ld.w	$t1, $s1, 20
	ld.w	$a0, $s1, 24
	st.d	$a0, $sp, 656                   # 8-byte Folded Spill
	ld.w	$s2, $s1, 28
	ld.w	$t2, $s1, 32
	ld.w	$t3, $s1, 36
	ld.w	$t5, $s1, 40
	ld.w	$s0, $s1, 48
	ld.w	$a0, $s1, 52
	st.d	$a0, $sp, 648                   # 8-byte Folded Spill
	ld.w	$a0, $s1, 56
	st.d	$a0, $sp, 712                   # 8-byte Folded Spill
	ld.w	$s7, $s1, 60
	ld.w	$s3, $s1, 64
	ld.w	$a7, $s1, 68
	ld.w	$a0, $s1, 72
	st.d	$a0, $sp, 688                   # 8-byte Folded Spill
	ld.w	$s4, $s1, 76
	ld.w	$a0, $s1, 80
	st.d	$a0, $sp, 672                   # 8-byte Folded Spill
	ld.d	$a0, $s1, 84
	st.d	$a0, $sp, 680                   # 8-byte Folded Spill
	ld.d	$a0, $s1, 92
	st.d	$a0, $sp, 696                   # 8-byte Folded Spill
	ld.d	$s6, $s1, 100
	move	$a3, $zero
	addi.d	$a1, $a1, -14
	addi.w	$a0, $zero, -4
	ori	$a4, $zero, 27
	bltu	$a4, $a1, .LBB3_449
# %bb.81:                               #   in Loop: Header=BB3_4 Depth=1
	slli.d	$a1, $a1, 2
	pcalau12i	$a4, %pc_hi20(.LJTI3_0)
	addi.d	$a4, $a4, %pc_lo12(.LJTI3_0)
	ldx.w	$a1, $a4, $a1
	add.d	$a1, $a4, $a1
	jr	$a1
.LBB3_82:                               # %._crit_edge1846.i
                                        #   in Loop: Header=BB3_4 Depth=1
	st.d	$fp, $sp, 552                   # 8-byte Folded Spill
	move	$fp, $t1
	move	$t1, $t0
	move	$t0, $t2
	move	$t2, $t5
	move	$t5, $s0
	move	$s0, $s3
	ld.w	$a1, $s5, 36
	b	.LBB3_90
.LBB3_83:                               #   in Loop: Header=BB3_4 Depth=1
	ld.d	$a1, $sp, 184                   # 8-byte Folded Reload
	jirl	$ra, $a3, 0
	stptr.d	$a0, $s5, 3152
	ld.d	$t4, $sp, 376                   # 8-byte Folded Reload
	beqz	$a0, .LBB3_106
# %bb.84:                               #   in Loop: Header=BB3_4 Depth=1
	move	$a2, $zero
	st.d	$zero, $sp, 704                 # 8-byte Folded Spill
	move	$t0, $zero
	move	$t6, $zero
	move	$fp, $zero
	move	$t1, $zero
	st.d	$zero, $sp, 656                 # 8-byte Folded Spill
	move	$s2, $zero
	move	$t2, $zero
	move	$t3, $zero
	move	$t5, $zero
	move	$t7, $zero
	move	$s0, $zero
	st.d	$zero, $sp, 648                 # 8-byte Folded Spill
	st.d	$zero, $sp, 712                 # 8-byte Folded Spill
	move	$s7, $zero
	move	$s3, $zero
	move	$a7, $zero
	st.d	$zero, $sp, 688                 # 8-byte Folded Spill
	move	$s4, $zero
	st.d	$zero, $sp, 672                 # 8-byte Folded Spill
	st.d	$zero, $sp, 680                 # 8-byte Folded Spill
	st.d	$zero, $sp, 696                 # 8-byte Folded Spill
	move	$s6, $zero
	ld.d	$ra, $sp, 344                   # 8-byte Folded Reload
	xvld	$xr3, $sp, 304                  # 32-byte Folded Reload
	xvld	$xr4, $sp, 272                  # 32-byte Folded Reload
	vld	$vr6, $sp, 624                  # 16-byte Folded Reload
	ori	$t8, $zero, 1
.LBB3_85:                               #   in Loop: Header=BB3_4 Depth=1
	st.d	$fp, $sp, 552                   # 8-byte Folded Spill
	move	$fp, $t1
	move	$t1, $t0
	move	$t0, $t2
	move	$t2, $t5
	move	$t5, $s0
	move	$s0, $s3
	ld.w	$a0, $s5, 36
	ori	$a1, $zero, 14
	st.w	$a1, $s5, 8
	addi.w	$a1, $a0, -8
	move	$s3, $a7
	ori	$a3, $zero, 8
	blt	$a0, $a3, .LBB3_93
# %bb.86:                               # %.._crit_edge_crit_edge.i
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.w	$a5, $s5, 32
.LBB3_87:                               # %._crit_edge.i
                                        #   in Loop: Header=BB3_4 Depth=1
	srl.w	$a0, $a5, $a1
	andi	$a0, $a0, 255
	st.w	$a1, $s5, 36
	ori	$a3, $zero, 23
	move	$a7, $s3
	beq	$a0, $a3, .LBB3_98
# %bb.88:                               # %._crit_edge.i
                                        #   in Loop: Header=BB3_4 Depth=1
	ori	$a3, $zero, 49
	bne	$a0, $a3, .LBB3_99
# %bb.89:                               #   in Loop: Header=BB3_4 Depth=1
	st.w	$zero, $s5, 56
.LBB3_90:                               #   in Loop: Header=BB3_4 Depth=1
	move	$s3, $a7
	ori	$a0, $zero, 25
	st.w	$a0, $s5, 8
	addi.w	$a0, $a1, -8
	ori	$a3, $zero, 8
	blt	$a1, $a3, .LBB3_101
# %bb.91:                               # %.._crit_edge1486_crit_edge.i
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.w	$a4, $s5, 32
.LBB3_92:                               # %._crit_edge1486.i
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.w	$a1, $s5, 56
	srl.w	$a3, $a4, $a0
	st.w	$a0, $s5, 36
	bstrins.d	$a3, $a1, 63, 8
	st.w	$a3, $s5, 56
	b	.LBB3_126
.LBB3_93:                               # %.lr.ph.i49
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.d	$a0, $s5, 0
	ld.w	$a3, $a0, 8
	addi.w	$a3, $a3, -1
	b	.LBB3_95
	.p2align	4, , 16
.LBB3_94:                               #   in Loop: Header=BB3_95 Depth=2
	addi.w	$a1, $a1, 8
	addi.w	$a3, $a3, -1
	blt	$a4, $a1, .LBB3_87
.LBB3_95:                               #   Parent Loop BB3_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.w	$a4, $zero, -1
	beq	$a3, $a4, .LBB3_144
# %bb.96:                               #   in Loop: Header=BB3_95 Depth=2
	ld.d	$a6, $a0, 0
	ld.w	$a5, $s5, 32
	ld.bu	$a7, $a6, 0
	slli.d	$a5, $a5, 8
	or	$a5, $a5, $a7
	st.w	$a5, $s5, 32
	addi.d	$a7, $a1, 16
	st.w	$a7, $s5, 36
	ld.wu	$a7, $a0, 12
	addi.d	$a6, $a6, 1
	st.d	$a6, $a0, 0
	st.w	$a3, $a0, 8
	addi.d	$a6, $a7, 1
	and	$a7, $a6, $t4
	st.w	$a6, $a0, 12
	beqz	$a7, .LBB3_94
# %bb.97:                               #   in Loop: Header=BB3_95 Depth=2
	ld.w	$a6, $a0, 16
	addi.d	$a6, $a6, 1
	st.w	$a6, $a0, 16
	b	.LBB3_94
.LBB3_98:                               #   in Loop: Header=BB3_4 Depth=1
	ori	$a3, $zero, 1
	st.w	$a3, $s5, 8
	ori	$a0, $zero, 4
	b	.LBB3_151
.LBB3_99:                               #   in Loop: Header=BB3_4 Depth=1
	move	$s3, $s0
	move	$a3, $zero
	addi.w	$a0, $zero, -4
	b	.LBB3_152
.LBB3_100:                              #   in Loop: Header=BB3_4 Depth=1
	move	$s7, $a2
	st.d	$a2, $sp, 688                   # 8-byte Folded Spill
	move	$s4, $a2
	st.d	$a2, $sp, 672                   # 8-byte Folded Spill
	st.d	$a2, $sp, 680                   # 8-byte Folded Spill
	st.d	$a2, $sp, 696                   # 8-byte Folded Spill
	move	$s6, $a2
	move	$a7, $a2
	move	$s3, $a2
	st.d	$a2, $sp, 712                   # 8-byte Folded Spill
	st.d	$a2, $sp, 648                   # 8-byte Folded Spill
	move	$s0, $a2
	move	$t7, $a2
	move	$t5, $a2
	move	$t3, $a2
	move	$t2, $a2
	move	$s2, $a2
	st.d	$a2, $sp, 656                   # 8-byte Folded Spill
	move	$t1, $a2
	move	$fp, $a2
	move	$t6, $a2
	move	$t0, $a2
	st.d	$a2, $sp, 704                   # 8-byte Folded Spill
	move	$a3, $a2
	ld.d	$ra, $sp, 344                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 376                   # 8-byte Folded Reload
	b	.LBB3_107
.LBB3_101:                              # %.lr.ph1485.i
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.d	$a1, $s5, 0
	ld.w	$a3, $a1, 8
	addi.w	$a3, $a3, -1
	b	.LBB3_103
.LBB3_102:                              #   in Loop: Header=BB3_103 Depth=2
	addi.w	$a0, $a0, 8
	addi.w	$a3, $a3, -1
	blt	$a5, $a0, .LBB3_92
.LBB3_103:                              #   Parent Loop BB3_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.w	$a5, $zero, -1
	beq	$a3, $a5, .LBB3_144
# %bb.104:                              #   in Loop: Header=BB3_103 Depth=2
	ld.d	$a6, $a1, 0
	ld.w	$a4, $s5, 32
	ld.bu	$a7, $a6, 0
	slli.d	$a4, $a4, 8
	or	$a4, $a4, $a7
	st.w	$a4, $s5, 32
	addi.d	$a7, $a0, 16
	st.w	$a7, $s5, 36
	ld.wu	$a7, $a1, 12
	addi.d	$a6, $a6, 1
	st.d	$a6, $a1, 0
	st.w	$a3, $a1, 8
	addi.d	$a6, $a7, 1
	and	$a7, $a6, $t4
	st.w	$a6, $a1, 12
	beqz	$a7, .LBB3_102
# %bb.105:                              #   in Loop: Header=BB3_103 Depth=2
	ld.w	$a6, $a1, 16
	addi.d	$a6, $a6, 1
	st.w	$a6, $a1, 16
	b	.LBB3_102
.LBB3_106:                              #   in Loop: Header=BB3_4 Depth=1
	move	$s7, $zero
	st.d	$zero, $sp, 688                 # 8-byte Folded Spill
	move	$s4, $zero
	st.d	$zero, $sp, 672                 # 8-byte Folded Spill
	st.d	$zero, $sp, 680                 # 8-byte Folded Spill
	st.d	$zero, $sp, 696                 # 8-byte Folded Spill
	move	$s6, $zero
	move	$a7, $zero
	move	$s3, $zero
	st.d	$zero, $sp, 712                 # 8-byte Folded Spill
	st.d	$zero, $sp, 648                 # 8-byte Folded Spill
	move	$s0, $zero
	move	$t7, $zero
	move	$t5, $zero
	move	$t3, $zero
	move	$t2, $zero
	move	$s2, $zero
	st.d	$zero, $sp, 656                 # 8-byte Folded Spill
	move	$t1, $zero
	move	$fp, $zero
	move	$t6, $zero
	move	$t0, $zero
	st.d	$zero, $sp, 704                 # 8-byte Folded Spill
	move	$a2, $zero
	move	$a3, $zero
	addi.w	$a0, $zero, -3
	ld.d	$ra, $sp, 344                   # 8-byte Folded Reload
.LBB3_107:                              # %BZ2_decompress.exit
                                        #   in Loop: Header=BB3_4 Depth=1
	xvld	$xr3, $sp, 304                  # 32-byte Folded Reload
	xvld	$xr4, $sp, 272                  # 32-byte Folded Reload
	vld	$vr6, $sp, 624                  # 16-byte Folded Reload
	ori	$t8, $zero, 1
	b	.LBB3_449
.LBB3_108:                              # %._crit_edge1863.i
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.w	$a0, $s5, 36
.LBB3_109:                              #   in Loop: Header=BB3_4 Depth=1
	ori	$a1, $zero, 31
	st.w	$a1, $s5, 8
	ori	$a1, $zero, 15
	blt	$a0, $a1, .LBB3_154
# %bb.110:                              # %.._crit_edge1515_crit_edge.i
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.w	$a4, $s5, 32
.LBB3_111:                              # %._crit_edge1515.i
                                        #   in Loop: Header=BB3_4 Depth=1
	addi.d	$a0, $a0, -15
	srl.w	$a1, $a4, $a0
	bstrpick.d	$t1, $a1, 14, 0
	st.w	$a0, $s5, 36
	beqz	$t1, .LBB3_161
# %bb.112:                              #   in Loop: Header=BB3_4 Depth=1
	move	$a2, $zero
	st.d	$s7, $sp, 24                    # 8-byte Folded Spill
	st.d	$t2, $sp, 592                   # 8-byte Folded Spill
	st.d	$t3, $sp, 48                    # 8-byte Folded Spill
	bge	$a2, $t1, .LBB3_163
.LBB3_113:                              #   in Loop: Header=BB3_4 Depth=1
	st.d	$zero, $sp, 704                 # 8-byte Folded Spill
.LBB3_114:                              # %.preheader671
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.w	$a1, $s5, 36
.LBB3_115:                              #   Parent Loop BB3_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB3_121 Depth 3
	ori	$a0, $zero, 32
	st.w	$a0, $s5, 8
	blt	$a1, $t8, .LBB3_119
# %bb.116:                              # %.._crit_edge1657_crit_edge.i
                                        #   in Loop: Header=BB3_115 Depth=2
	ld.w	$a4, $s5, 32
.LBB3_117:                              # %._crit_edge1657.i
                                        #   in Loop: Header=BB3_115 Depth=2
	addi.w	$a1, $a1, -1
	srl.w	$a0, $a4, $a1
	andi	$a0, $a0, 1
	st.w	$a1, $s5, 36
	beqz	$a0, .LBB3_162
# %bb.118:                              #   in Loop: Header=BB3_115 Depth=2
	ld.d	$a3, $sp, 704                   # 8-byte Folded Reload
	addi.w	$a3, $a3, 1
	addi.w	$a0, $zero, -4
	st.d	$a3, $sp, 704                   # 8-byte Folded Spill
	blt	$a3, $fp, .LBB3_115
	b	.LBB3_448
.LBB3_119:                              # %.lr.ph1656.i
                                        #   in Loop: Header=BB3_115 Depth=2
	ld.d	$a0, $s5, 0
	ld.w	$a3, $a0, 8
	addi.w	$a3, $a3, -1
	b	.LBB3_121
	.p2align	4, , 16
.LBB3_120:                              #   in Loop: Header=BB3_121 Depth=3
	addi.w	$a5, $a1, -8
	addi.w	$a6, $zero, -8
	addi.w	$a3, $a3, -1
	blt	$a6, $a5, .LBB3_117
.LBB3_121:                              #   Parent Loop BB3_4 Depth=1
                                        #     Parent Loop BB3_115 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	addi.w	$a4, $zero, -1
	beq	$a3, $a4, .LBB3_297
# %bb.122:                              #   in Loop: Header=BB3_121 Depth=3
	ld.d	$a5, $a0, 0
	ld.w	$a4, $s5, 32
	ld.bu	$a6, $a5, 0
	slli.d	$a4, $a4, 8
	or	$a4, $a4, $a6
	st.w	$a4, $s5, 32
	addi.d	$a1, $a1, 8
	st.w	$a1, $s5, 36
	ld.wu	$a6, $a0, 12
	addi.d	$a5, $a5, 1
	st.d	$a5, $a0, 0
	st.w	$a3, $a0, 8
	addi.d	$a5, $a6, 1
	and	$a6, $a5, $t4
	st.w	$a5, $a0, 12
	beqz	$a6, .LBB3_120
# %bb.123:                              #   in Loop: Header=BB3_121 Depth=3
	ld.w	$a5, $a0, 16
	addi.d	$a5, $a5, 1
	st.w	$a5, $a0, 16
	b	.LBB3_120
.LBB3_124:                              # %._crit_edge1856.i
                                        #   in Loop: Header=BB3_4 Depth=1
	st.d	$fp, $sp, 552                   # 8-byte Folded Spill
	move	$fp, $t1
	move	$t1, $t0
	move	$t0, $t2
	move	$t2, $t5
	move	$t5, $s0
	move	$s0, $s3
	move	$s3, $a7
	ld.w	$a0, $s5, 36
	b	.LBB3_129
.LBB3_125:                              # %._crit_edge1851.i
                                        #   in Loop: Header=BB3_4 Depth=1
	st.d	$fp, $sp, 552                   # 8-byte Folded Spill
	move	$fp, $t1
	move	$t1, $t0
	move	$t0, $t2
	move	$t2, $t5
	move	$t5, $s0
	move	$s0, $s3
	move	$s3, $a7
	ld.w	$a0, $s5, 36
.LBB3_126:                              #   in Loop: Header=BB3_4 Depth=1
	ori	$a1, $zero, 26
	st.w	$a1, $s5, 8
	ori	$a1, $zero, 8
	blt	$a0, $a1, .LBB3_139
# %bb.127:                              # %.._crit_edge1493_crit_edge.i
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.w	$a4, $s5, 32
	addi.w	$a0, $a0, -8
.LBB3_128:                              # %._crit_edge1493.i
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.w	$a1, $s5, 56
	srl.w	$a3, $a4, $a0
	st.w	$a0, $s5, 36
	bstrins.d	$a3, $a1, 63, 8
	st.w	$a3, $s5, 56
.LBB3_129:                              #   in Loop: Header=BB3_4 Depth=1
	ori	$a1, $zero, 27
	st.w	$a1, $s5, 8
	addi.d	$a1, $a0, -8
	ori	$a3, $zero, 8
	blt	$a0, $a3, .LBB3_134
# %bb.130:                              # %.._crit_edge1500_crit_edge.i
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.w	$a4, $s5, 32
.LBB3_131:                              # %._crit_edge1500.i
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.w	$a0, $s5, 56
	srl.w	$a3, $a4, $a1
	st.w	$a1, $s5, 36
	slli.w	$a1, $a0, 8
	bstrins.d	$a3, $a0, 63, 8
	st.w	$a3, $s5, 56
	addi.w	$a0, $zero, -4
	bltz	$a1, .LBB3_149
# %bb.132:                              #   in Loop: Header=BB3_4 Depth=1
	ld.w	$a1, $s5, 40
	addi.w	$a3, $a3, 0
	ld.d	$a4, $sp, 608                   # 8-byte Folded Reload
	mul.d	$a1, $a1, $a4
	addi.w	$a1, $a1, 10
	move	$a7, $s3
	bge	$a1, $a3, .LBB3_153
# %bb.133:                              #   in Loop: Header=BB3_4 Depth=1
	move	$a3, $zero
	b	.LBB3_151
.LBB3_134:                              # %.lr.ph1499.i
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.d	$a0, $s5, 0
	ld.w	$a3, $a0, 8
	addi.w	$a3, $a3, -1
	b	.LBB3_136
.LBB3_135:                              #   in Loop: Header=BB3_136 Depth=2
	addi.w	$a1, $a1, 8
	addi.w	$a3, $a3, -1
	blt	$a5, $a1, .LBB3_131
.LBB3_136:                              #   Parent Loop BB3_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.w	$a5, $zero, -1
	beq	$a3, $a5, .LBB3_144
# %bb.137:                              #   in Loop: Header=BB3_136 Depth=2
	ld.d	$a6, $a0, 0
	ld.w	$a4, $s5, 32
	ld.bu	$a7, $a6, 0
	slli.d	$a4, $a4, 8
	or	$a4, $a4, $a7
	st.w	$a4, $s5, 32
	addi.d	$a7, $a1, 16
	st.w	$a7, $s5, 36
	ld.wu	$a7, $a0, 12
	addi.d	$a6, $a6, 1
	st.d	$a6, $a0, 0
	st.w	$a3, $a0, 8
	addi.d	$a6, $a7, 1
	and	$a7, $a6, $t4
	st.w	$a6, $a0, 12
	beqz	$a7, .LBB3_135
# %bb.138:                              #   in Loop: Header=BB3_136 Depth=2
	ld.w	$a6, $a0, 16
	addi.d	$a6, $a6, 1
	st.w	$a6, $a0, 16
	b	.LBB3_135
.LBB3_139:                              # %.lr.ph1492.i
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.d	$a1, $s5, 0
	ld.w	$a3, $a1, 8
	addi.w	$a3, $a3, -1
	addi.d	$a0, $a0, -8
	b	.LBB3_141
.LBB3_140:                              #   in Loop: Header=BB3_141 Depth=2
	addi.w	$a0, $a0, 8
	addi.w	$a3, $a3, -1
	blt	$a5, $a0, .LBB3_128
.LBB3_141:                              #   Parent Loop BB3_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.w	$a5, $zero, -1
	beq	$a3, $a5, .LBB3_144
# %bb.142:                              #   in Loop: Header=BB3_141 Depth=2
	ld.d	$a6, $a1, 0
	ld.w	$a4, $s5, 32
	ld.bu	$a7, $a6, 0
	slli.d	$a4, $a4, 8
	or	$a4, $a4, $a7
	st.w	$a4, $s5, 32
	addi.d	$a7, $a0, 16
	st.w	$a7, $s5, 36
	ld.wu	$a7, $a1, 12
	addi.d	$a6, $a6, 1
	st.d	$a6, $a1, 0
	st.w	$a3, $a1, 8
	addi.d	$a6, $a7, 1
	and	$a7, $a6, $t4
	st.w	$a6, $a1, 12
	beqz	$a7, .LBB3_140
# %bb.143:                              #   in Loop: Header=BB3_141 Depth=2
	ld.w	$a6, $a1, 16
	addi.d	$a6, $a6, 1
	st.w	$a6, $a1, 16
	b	.LBB3_140
.LBB3_144:                              #   in Loop: Header=BB3_4 Depth=1
	move	$a3, $zero
	move	$a0, $zero
	b	.LBB3_150
.LBB3_145:                              # %._crit_edge1906.i
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.w	$a0, $s5, 36
	b	.LBB3_335
.LBB3_146:                              # %._crit_edge1896.i
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.w	$a1, $s5, 36
	b	.LBB3_202
.LBB3_147:                              # %._crit_edge1878.i
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.w	$a1, $s5, 36
	b	.LBB3_210
.LBB3_148:                              # %._crit_edge1886.i
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.w	$a1, $s5, 36
	b	.LBB3_218
.LBB3_149:                              #   in Loop: Header=BB3_4 Depth=1
	move	$a3, $zero
.LBB3_150:                              # %BZ2_decompress.exit
                                        #   in Loop: Header=BB3_4 Depth=1
	move	$a7, $s3
.LBB3_151:                              # %BZ2_decompress.exit
                                        #   in Loop: Header=BB3_4 Depth=1
	move	$s3, $s0
.LBB3_152:                              # %BZ2_decompress.exit
                                        #   in Loop: Header=BB3_4 Depth=1
	move	$s0, $t5
	move	$t5, $t2
	move	$t2, $t0
	move	$t0, $t1
	move	$t1, $fp
	ld.d	$fp, $sp, 552                   # 8-byte Folded Reload
	b	.LBB3_449
.LBB3_153:                              #   in Loop: Header=BB3_4 Depth=1
	move	$a2, $zero
	ori	$a0, $zero, 16
	move	$s3, $s0
	move	$s0, $t5
	move	$t5, $t2
	move	$t2, $t0
	move	$t0, $t1
	move	$t1, $fp
	ld.d	$fp, $sp, 552                   # 8-byte Folded Reload
	b	.LBB3_287
.LBB3_154:                              # %.lr.ph1514.i
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.d	$a1, $s5, 0
	ld.w	$a3, $a1, 8
	addi.w	$a3, $a3, -1
	b	.LBB3_156
.LBB3_155:                              #   in Loop: Header=BB3_156 Depth=2
	addi.w	$a5, $a0, -8
	addi.w	$a3, $a3, -1
	ori	$a6, $zero, 6
	blt	$a6, $a5, .LBB3_111
.LBB3_156:                              #   Parent Loop BB3_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.w	$a4, $zero, -1
	beq	$a3, $a4, .LBB3_297
# %bb.157:                              #   in Loop: Header=BB3_156 Depth=2
	ld.d	$a5, $a1, 0
	ld.w	$a4, $s5, 32
	ld.bu	$a6, $a5, 0
	slli.d	$a4, $a4, 8
	or	$a4, $a4, $a6
	st.w	$a4, $s5, 32
	addi.d	$a0, $a0, 8
	st.w	$a0, $s5, 36
	ld.wu	$a6, $a1, 12
	addi.d	$a5, $a5, 1
	st.d	$a5, $a1, 0
	st.w	$a3, $a1, 8
	addi.d	$a5, $a6, 1
	and	$a6, $a5, $t4
	st.w	$a5, $a1, 12
	beqz	$a6, .LBB3_155
# %bb.158:                              #   in Loop: Header=BB3_156 Depth=2
	ld.w	$a5, $a1, 16
	addi.d	$a5, $a5, 1
	st.w	$a5, $a1, 16
	b	.LBB3_155
.LBB3_159:                              #   in Loop: Header=BB3_4 Depth=1
	move	$t7, $t3
	move	$a6, $zero
	ori	$t3, $zero, 1
	move	$t4, $t5
	b	.LBB3_74
.LBB3_160:                              #   in Loop: Header=BB3_4 Depth=1
	move	$t7, $t3
	move	$t3, $zero
	move	$t4, $a7
	move	$t1, $t6
	b	.LBB3_74
.LBB3_161:                              #   in Loop: Header=BB3_4 Depth=1
	move	$t1, $zero
	b	.LBB3_328
.LBB3_162:                              #   in Loop: Header=BB3_4 Depth=1
	ld.d	$a0, $sp, 352                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 704                   # 8-byte Folded Reload
	stx.b	$a1, $a0, $a2
	addi.w	$a2, $a2, 1
	st.d	$s7, $sp, 24                    # 8-byte Folded Spill
	st.d	$t2, $sp, 592                   # 8-byte Folded Spill
	st.d	$t3, $sp, 48                    # 8-byte Folded Spill
	blt	$a2, $t1, .LBB3_113
.LBB3_163:                              #   in Loop: Header=BB3_4 Depth=1
	ld.d	$a0, $sp, 672                   # 8-byte Folded Reload
	st.d	$a0, $sp, 672                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 712                   # 8-byte Folded Reload
	st.d	$a0, $sp, 712                   # 8-byte Folded Spill
	move	$s7, $t1
	ld.d	$a0, $sp, 688                   # 8-byte Folded Reload
	st.d	$a0, $sp, 688                   # 8-byte Folded Spill
	addi.d	$t2, $sp, 723
	addi.d	$t3, $sp, 731
	addi.d	$t4, $sp, 738
	ld.d	$t1, $sp, 696                   # 8-byte Folded Reload
	blt	$fp, $t8, .LBB3_167
# %bb.164:                              # %iter.check614
                                        #   in Loop: Header=BB3_4 Depth=1
	ori	$a0, $zero, 15
	bltu	$a0, $fp, .LBB3_190
# %bb.165:                              #   in Loop: Header=BB3_4 Depth=1
	move	$a1, $zero
.LBB3_166:                              # %.lr.ph1521.i
                                        #   Parent Loop BB3_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	andi	$a0, $a1, 255
	stx.b	$a1, $a0, $t4
	addi.d	$a1, $a1, 1
	andi	$a0, $a1, 255
	bltu	$a0, $fp, .LBB3_166
.LBB3_167:                              # %.preheader1393.i
                                        #   in Loop: Header=BB3_4 Depth=1
	blt	$s7, $t8, .LBB3_188
# %bb.168:                              # %.lr.ph1528.i
                                        #   in Loop: Header=BB3_4 Depth=1
	st.d	$t7, $sp, 600                   # 8-byte Folded Spill
	move	$t7, $s2
	st.d	$t5, $sp, 584                   # 8-byte Folded Spill
	move	$t5, $s0
	move	$s0, $s3
	move	$s3, $a7
	st.d	$s6, $sp, 40                    # 8-byte Folded Spill
	move	$a0, $zero
	ld.d	$s6, $sp, 680                   # 8-byte Folded Reload
	move	$s2, $t1
	st.d	$s6, $sp, 680                   # 8-byte Folded Spill
	b	.LBB3_170
.LBB3_169:                              # %._crit_edge1526.i
                                        #   in Loop: Header=BB3_170 Depth=2
	ld.d	$a2, $sp, 360                   # 8-byte Folded Reload
	stx.b	$a1, $a2, $a0
	addi.d	$a0, $a0, 1
	st.b	$a1, $sp, 738
	beq	$a0, $s7, .LBB3_187
.LBB3_170:                              #   Parent Loop BB3_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB3_183 Depth 3
                                        #       Child Loop BB3_180 Depth 3
                                        #       Child Loop BB3_176 Depth 3
	ld.d	$a1, $sp, 352                   # 8-byte Folded Reload
	ldx.bu	$a2, $a1, $a0
	ldx.bu	$a1, $a2, $t4
	beqz	$a2, .LBB3_169
# %bb.171:                              # %iter.check573
                                        #   in Loop: Header=BB3_170 Depth=2
	ori	$a3, $zero, 8
	bltu	$a2, $a3, .LBB3_174
# %bb.172:                              # %vector.scevcheck564
                                        #   in Loop: Header=BB3_170 Depth=2
	addi.d	$a3, $a2, -1
	andi	$a4, $a3, 255
	bltu	$a3, $a4, .LBB3_174
# %bb.173:                              # %vector.memcheck568
                                        #   in Loop: Header=BB3_170 Depth=2
	addi.w	$a4, $zero, -1
	lu32i.d	$a4, 0
	add.d	$a3, $a2, $a4
	bstrpick.d	$a5, $a3, 31, 0
	sub.d	$a5, $a5, $a2
	ori	$a6, $zero, 16
	bgeu	$a5, $a6, .LBB3_177
.LBB3_174:                              #   in Loop: Header=BB3_170 Depth=2
	move	$a5, $a2
	move	$a3, $a2
.LBB3_175:                              # %.lr.ph1525.i.preheader
                                        #   in Loop: Header=BB3_170 Depth=2
	add.d	$a2, $t4, $a5
	addi.w	$a4, $zero, -1
	lu32i.d	$a4, 0
	add.d	$a4, $a5, $a4
	.p2align	4, , 16
.LBB3_176:                              # %.lr.ph1525.i
                                        #   Parent Loop BB3_4 Depth=1
                                        #     Parent Loop BB3_170 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	bstrpick.d	$a5, $a4, 31, 0
	ldx.b	$a5, $a5, $t4
	st.b	$a5, $a2, 0
	addi.d	$a3, $a3, -1
	andi	$a5, $a3, 255
	addi.d	$a2, $a2, -1
	addi.d	$a4, $a4, -1
	bnez	$a5, .LBB3_176
	b	.LBB3_169
.LBB3_177:                              # %vector.main.loop.iter.check575
                                        #   in Loop: Header=BB3_170 Depth=2
	bgeu	$a2, $a6, .LBB3_182
# %bb.178:                              #   in Loop: Header=BB3_170 Depth=2
	move	$a6, $zero
.LBB3_179:                              # %vec.epilog.ph589
                                        #   in Loop: Header=BB3_170 Depth=2
	andi	$a7, $a2, 248
	andi	$a5, $a2, 7
	sub.d	$a3, $a2, $a7
	sub.d	$t0, $a6, $a7
	sub.d	$t1, $a2, $a6
	add.d	$a6, $t3, $t1
	add.d	$a4, $t1, $a4
.LBB3_180:                              # %vec.epilog.vector.body596
                                        #   Parent Loop BB3_4 Depth=1
                                        #     Parent Loop BB3_170 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	bstrpick.d	$t1, $a4, 31, 0
	ldx.d	$t1, $t3, $t1
	st.d	$t1, $a6, 0
	addi.d	$t0, $t0, 8
	addi.d	$a6, $a6, -8
	addi.d	$a4, $a4, -8
	bnez	$t0, .LBB3_180
# %bb.181:                              # %vec.epilog.middle.block603
                                        #   in Loop: Header=BB3_170 Depth=2
	move	$t1, $s2
	beq	$a7, $a2, .LBB3_169
	b	.LBB3_175
.LBB3_182:                              # %vector.ph576
                                        #   in Loop: Header=BB3_170 Depth=2
	andi	$a6, $a2, 240
	add.d	$a5, $t2, $a2
	move	$a7, $a6
.LBB3_183:                              # %vector.body579
                                        #   Parent Loop BB3_4 Depth=1
                                        #     Parent Loop BB3_170 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	bstrpick.d	$t0, $a3, 31, 0
	vldx	$vr0, $t2, $t0
	vst	$vr0, $a5, 0
	addi.d	$a7, $a7, -16
	addi.d	$a5, $a5, -16
	addi.d	$a3, $a3, -16
	bnez	$a7, .LBB3_183
# %bb.184:                              # %middle.block585
                                        #   in Loop: Header=BB3_170 Depth=2
	beq	$a6, $a2, .LBB3_169
# %bb.185:                              # %vec.epilog.iter.check590
                                        #   in Loop: Header=BB3_170 Depth=2
	andi	$a3, $a2, 8
	bnez	$a3, .LBB3_179
# %bb.186:                              #   in Loop: Header=BB3_170 Depth=2
	andi	$a5, $a2, 15
	sub.d	$a3, $a2, $a6
	b	.LBB3_175
.LBB3_187:                              #   in Loop: Header=BB3_4 Depth=1
	st.d	$t1, $sp, 696                   # 8-byte Folded Spill
	move	$a2, $s7
	ld.d	$s6, $sp, 40                    # 8-byte Folded Reload
	move	$a7, $s3
	move	$s3, $s0
	move	$s0, $t5
	ld.d	$t5, $sp, 584                   # 8-byte Folded Reload
	move	$s2, $t7
	ld.d	$t7, $sp, 600                   # 8-byte Folded Reload
	b	.LBB3_189
.LBB3_188:                              #   in Loop: Header=BB3_4 Depth=1
	move	$a2, $zero
.LBB3_189:                              # %._crit_edge1529.i
                                        #   in Loop: Header=BB3_4 Depth=1
	move	$t0, $zero
	move	$t1, $s7
	ld.d	$a3, $sp, 712                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 376                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 24                    # 8-byte Folded Reload
	ld.d	$t2, $sp, 592                   # 8-byte Folded Reload
	ld.d	$t3, $sp, 48                    # 8-byte Folded Reload
	b	.LBB3_226
.LBB3_190:                              # %vector.scevcheck610
                                        #   in Loop: Header=BB3_4 Depth=1
	addi.w	$a0, $fp, -1
	ori	$a3, $zero, 255
	andi	$a2, $a0, 255
	move	$a1, $zero
	beq	$a2, $a3, .LBB3_166
# %bb.191:                              # %vector.scevcheck610
                                        #   in Loop: Header=BB3_4 Depth=1
	ori	$a2, $zero, 255
	bltu	$a2, $a0, .LBB3_166
# %bb.192:                              # %vector.main.loop.iter.check616
                                        #   in Loop: Header=BB3_4 Depth=1
	ori	$a0, $zero, 64
	bgeu	$fp, $a0, .LBB3_194
# %bb.193:                              #   in Loop: Header=BB3_4 Depth=1
	move	$a0, $zero
	b	.LBB3_198
.LBB3_194:                              # %vector.ph617
                                        #   in Loop: Header=BB3_4 Depth=1
	pcalau12i	$a0, %pc_hi20(.LCPI3_0)
	xvld	$xr0, $a0, %pc_lo12(.LCPI3_0)
	andi	$a0, $fp, 448
	move	$a1, $a0
	addi.d	$a2, $sp, 770
.LBB3_195:                              # %vector.body621
                                        #   Parent Loop BB3_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvadd.b	$xr1, $xr0, $xr3
	xvst	$xr0, $a2, -32
	xvst	$xr1, $a2, 0
	xvadd.b	$xr0, $xr0, $xr4
	addi.w	$a1, $a1, -64
	addi.d	$a2, $a2, 64
	bnez	$a1, .LBB3_195
# %bb.196:                              # %middle.block625
                                        #   in Loop: Header=BB3_4 Depth=1
	beq	$fp, $a0, .LBB3_167
# %bb.197:                              # %vec.epilog.iter.check631
                                        #   in Loop: Header=BB3_4 Depth=1
	andi	$a1, $fp, 48
	beqz	$a1, .LBB3_201
.LBB3_198:                              # %vec.epilog.ph630
                                        #   in Loop: Header=BB3_4 Depth=1
	pcalau12i	$a1, %pc_hi20(.LCPI3_1)
	vld	$vr0, $a1, %pc_lo12(.LCPI3_1)
	andi	$a1, $fp, 496
	vreplgr2vr.b	$vr1, $a0
	vadd.b	$vr0, $vr1, $vr0
.LBB3_199:                              # %vec.epilog.vector.body637
                                        #   Parent Loop BB3_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	andi	$a2, $a0, 240
	vstx	$vr0, $a2, $t4
	addi.w	$a0, $a0, 16
	vaddi.bu	$vr0, $vr0, 16
	bne	$a1, $a0, .LBB3_199
# %bb.200:                              # %vec.epilog.middle.block644
                                        #   in Loop: Header=BB3_4 Depth=1
	bne	$fp, $a1, .LBB3_166
	b	.LBB3_167
.LBB3_201:                              #   in Loop: Header=BB3_4 Depth=1
	move	$a1, $a0
	b	.LBB3_166
.LBB3_202:                              #   in Loop: Header=BB3_4 Depth=1
	ori	$a0, $zero, 37
	st.w	$a0, $s5, 8
	blt	$a1, $t8, .LBB3_205
# %bb.203:                              # %.._crit_edge1629_crit_edge.i
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.w	$a4, $s5, 32
.LBB3_204:                              # %._crit_edge1629.i
                                        #   in Loop: Header=BB3_4 Depth=1
	addi.w	$a1, $a1, -1
	srl.w	$a0, $a4, $a1
	andi	$a3, $a0, 1
	st.d	$a3, $sp, 688                   # 8-byte Folded Spill
	bstrins.d	$a0, $a7, 63, 1
	st.w	$a1, $s5, 36
	move	$a7, $a0
	b	.LBB3_281
.LBB3_205:                              # %.lr.ph1628.i
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.d	$a0, $s5, 0
	ld.w	$a3, $a0, 8
	addi.w	$a3, $a3, -1
	b	.LBB3_207
.LBB3_206:                              #   in Loop: Header=BB3_207 Depth=2
	addi.w	$a5, $a1, -8
	addi.w	$a6, $zero, -8
	addi.w	$a3, $a3, -1
	blt	$a6, $a5, .LBB3_204
.LBB3_207:                              #   Parent Loop BB3_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.w	$a4, $zero, -1
	beq	$a3, $a4, .LBB3_297
# %bb.208:                              #   in Loop: Header=BB3_207 Depth=2
	ld.d	$a5, $a0, 0
	ld.w	$a4, $s5, 32
	ld.bu	$a6, $a5, 0
	slli.d	$a4, $a4, 8
	or	$a4, $a4, $a6
	st.w	$a4, $s5, 32
	addi.d	$a1, $a1, 8
	st.w	$a1, $s5, 36
	ld.wu	$a6, $a0, 12
	addi.d	$a5, $a5, 1
	st.d	$a5, $a0, 0
	st.w	$a3, $a0, 8
	addi.d	$a5, $a6, 1
	and	$a6, $a5, $t4
	st.w	$a5, $a0, 12
	beqz	$a6, .LBB3_206
# %bb.209:                              #   in Loop: Header=BB3_207 Depth=2
	ld.w	$a5, $a0, 16
	addi.d	$a5, $a5, 1
	st.w	$a5, $a0, 16
	b	.LBB3_206
.LBB3_210:                              #   in Loop: Header=BB3_4 Depth=1
	ori	$a0, $zero, 41
	st.w	$a0, $s5, 8
	blt	$a1, $t8, .LBB3_213
# %bb.211:                              # %.._crit_edge1586_crit_edge.i
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.w	$a4, $s5, 32
.LBB3_212:                              # %._crit_edge1586.i
                                        #   in Loop: Header=BB3_4 Depth=1
	addi.w	$a1, $a1, -1
	srl.w	$a0, $a4, $a1
	andi	$a3, $a0, 1
	st.d	$a3, $sp, 688                   # 8-byte Folded Spill
	bstrins.d	$a0, $a7, 63, 1
	st.w	$a1, $s5, 36
	move	$a7, $a0
	b	.LBB3_447
.LBB3_213:                              # %.lr.ph1585.i
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.d	$a0, $s5, 0
	ld.w	$a3, $a0, 8
	addi.w	$a3, $a3, -1
	b	.LBB3_215
.LBB3_214:                              #   in Loop: Header=BB3_215 Depth=2
	addi.w	$a5, $a1, -8
	addi.w	$a6, $zero, -8
	addi.w	$a3, $a3, -1
	blt	$a6, $a5, .LBB3_212
.LBB3_215:                              #   Parent Loop BB3_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.w	$a4, $zero, -1
	beq	$a3, $a4, .LBB3_297
# %bb.216:                              #   in Loop: Header=BB3_215 Depth=2
	ld.d	$a5, $a0, 0
	ld.w	$a4, $s5, 32
	ld.bu	$a6, $a5, 0
	slli.d	$a4, $a4, 8
	or	$a4, $a4, $a6
	st.w	$a4, $s5, 32
	addi.d	$a1, $a1, 8
	st.w	$a1, $s5, 36
	ld.wu	$a6, $a0, 12
	addi.d	$a5, $a5, 1
	st.d	$a5, $a0, 0
	st.w	$a3, $a0, 8
	addi.d	$a5, $a6, 1
	and	$a6, $a5, $t4
	st.w	$a5, $a0, 12
	beqz	$a6, .LBB3_214
# %bb.217:                              #   in Loop: Header=BB3_215 Depth=2
	ld.w	$a5, $a0, 16
	addi.d	$a5, $a5, 1
	st.w	$a5, $a0, 16
	b	.LBB3_214
.LBB3_218:                              #   in Loop: Header=BB3_4 Depth=1
	ori	$a0, $zero, 39
	st.w	$a0, $s5, 8
	blt	$a1, $t8, .LBB3_221
# %bb.219:                              # %.._crit_edge1611_crit_edge.i
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.w	$a4, $s5, 32
.LBB3_220:                              # %._crit_edge1611.i
                                        #   in Loop: Header=BB3_4 Depth=1
	addi.w	$a1, $a1, -1
	srl.w	$a0, $a4, $a1
	andi	$a3, $a0, 1
	st.d	$a3, $sp, 688                   # 8-byte Folded Spill
	bstrins.d	$a0, $a7, 63, 1
	st.w	$a1, $s5, 36
	move	$a7, $a0
	b	.LBB3_380
.LBB3_221:                              # %.lr.ph1610.i
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.d	$a0, $s5, 0
	ld.w	$a3, $a0, 8
	addi.w	$a3, $a3, -1
	b	.LBB3_223
.LBB3_222:                              #   in Loop: Header=BB3_223 Depth=2
	addi.w	$a5, $a1, -8
	addi.w	$a6, $zero, -8
	addi.w	$a3, $a3, -1
	blt	$a6, $a5, .LBB3_220
.LBB3_223:                              #   Parent Loop BB3_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.w	$a4, $zero, -1
	beq	$a3, $a4, .LBB3_297
# %bb.224:                              #   in Loop: Header=BB3_223 Depth=2
	ld.d	$a5, $a0, 0
	ld.w	$a4, $s5, 32
	ld.bu	$a6, $a5, 0
	slli.d	$a4, $a4, 8
	or	$a4, $a4, $a6
	st.w	$a4, $s5, 32
	addi.d	$a1, $a1, 8
	st.w	$a1, $s5, 36
	ld.wu	$a6, $a0, 12
	addi.d	$a5, $a5, 1
	st.d	$a5, $a0, 0
	st.w	$a3, $a0, 8
	addi.d	$a5, $a6, 1
	and	$a6, $a5, $t4
	st.w	$a5, $a0, 12
	beqz	$a6, .LBB3_222
# %bb.225:                              #   in Loop: Header=BB3_223 Depth=2
	ld.w	$a5, $a0, 16
	addi.d	$a5, $a5, 1
	st.w	$a5, $a0, 16
	b	.LBB3_222
.LBB3_226:                              #   in Loop: Header=BB3_4 Depth=1
	st.d	$a3, $sp, 712                   # 8-byte Folded Spill
	bge	$t0, $fp, .LBB3_235
.LBB3_227:                              #   in Loop: Header=BB3_4 Depth=1
	ld.w	$a0, $s5, 36
	ori	$a1, $zero, 33
	st.w	$a1, $s5, 8
	ori	$a1, $zero, 5
	blt	$a0, $a1, .LBB3_230
# %bb.228:                              # %.._crit_edge1636_crit_edge.i
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.w	$a1, $s5, 32
.LBB3_229:                              # %._crit_edge1636.i
                                        #   in Loop: Header=BB3_4 Depth=1
	move	$a2, $zero
	addi.d	$a0, $a0, -5
	srl.w	$a1, $a1, $a0
	andi	$a3, $a1, 31
	st.w	$a0, $s5, 36
	b	.LBB3_285
.LBB3_230:                              # %.lr.ph1635.i
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.d	$a3, $s5, 0
	ld.w	$a1, $a3, 8
	addi.w	$a4, $a1, -1
	b	.LBB3_232
.LBB3_231:                              #   in Loop: Header=BB3_232 Depth=2
	addi.w	$a5, $a0, -8
	addi.w	$a6, $zero, -4
	addi.w	$a4, $a4, -1
	blt	$a6, $a5, .LBB3_229
.LBB3_232:                              #   Parent Loop BB3_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.w	$a1, $zero, -1
	beq	$a4, $a1, .LBB3_297
# %bb.233:                              #   in Loop: Header=BB3_232 Depth=2
	ld.d	$a5, $a3, 0
	ld.w	$a1, $s5, 32
	ld.bu	$a6, $a5, 0
	slli.d	$a1, $a1, 8
	or	$a1, $a1, $a6
	st.w	$a1, $s5, 32
	addi.d	$a0, $a0, 8
	st.w	$a0, $s5, 36
	ld.wu	$a6, $a3, 12
	addi.d	$a5, $a5, 1
	st.d	$a5, $a3, 0
	st.w	$a4, $a3, 8
	addi.d	$a5, $a6, 1
	and	$a6, $a5, $t4
	st.w	$a5, $a3, 12
	beqz	$a6, .LBB3_231
# %bb.234:                              #   in Loop: Header=BB3_232 Depth=2
	ld.w	$a5, $a3, 16
	addi.d	$a5, $a5, 1
	st.w	$a5, $a3, 16
	b	.LBB3_231
.LBB3_235:                              # %.preheader1392.i
                                        #   in Loop: Header=BB3_4 Depth=1
	st.d	$s0, $sp, 32                    # 8-byte Folded Spill
	st.d	$s7, $sp, 24                    # 8-byte Folded Spill
	st.d	$t6, $sp, 208                   # 8-byte Folded Spill
	st.d	$t3, $sp, 48                    # 8-byte Folded Spill
	st.d	$fp, $sp, 552                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 688                   # 8-byte Folded Reload
	st.d	$a0, $sp, 688                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 672                   # 8-byte Folded Reload
	st.d	$a0, $sp, 672                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 680                   # 8-byte Folded Reload
	st.d	$a0, $sp, 680                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 696                   # 8-byte Folded Reload
	st.d	$a0, $sp, 696                   # 8-byte Folded Spill
	st.d	$a7, $sp, 16                    # 8-byte Folded Spill
	st.d	$s6, $sp, 40                    # 8-byte Folded Spill
	blt	$fp, $t8, .LBB3_268
# %bb.236:                              # %.preheader1391.lr.ph.i
                                        #   in Loop: Header=BB3_4 Depth=1
	st.d	$t1, $sp, 56                    # 8-byte Folded Spill
	st.d	$s1, $sp, 8                     # 8-byte Folded Spill
	move	$s1, $zero
	bstrpick.d	$s0, $t6, 31, 0
	bstrpick.d	$a0, $t6, 30, 3
	slli.d	$a0, $a0, 3
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	ld.d	$s7, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 568                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	st.d	$s4, $sp, 224                   # 8-byte Folded Spill
	st.d	$s3, $sp, 232                   # 8-byte Folded Spill
	st.d	$s5, $sp, 192                   # 8-byte Folded Spill
	b	.LBB3_238
.LBB3_237:                              # %CreateDecodeTables.exit.i
                                        #   in Loop: Header=BB3_238 Depth=2
	slli.d	$a0, $s1, 2
	ld.d	$a1, $sp, 560                   # 8-byte Folded Reload
	stx.w	$fp, $a1, $a0
	addi.d	$s1, $s1, 1
	ld.d	$a1, $sp, 656                   # 8-byte Folded Reload
	addi.d	$a1, $a1, 258
	addi.d	$s6, $s6, 258
	addi.d	$s2, $s2, 1032
	addi.d	$s7, $s7, 1032
	ld.d	$a0, $sp, 552                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 232                   # 8-byte Folded Reload
	beq	$s1, $a0, .LBB3_267
.LBB3_238:                              # %.preheader1391.i
                                        #   Parent Loop BB3_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB3_243 Depth 3
                                        #       Child Loop BB3_246 Depth 3
                                        #       Child Loop BB3_249 Depth 3
                                        #         Child Loop BB3_251 Depth 4
                                        #       Child Loop BB3_254 Depth 3
                                        #       Child Loop BB3_258 Depth 3
                                        #       Child Loop BB3_263 Depth 3
                                        #       Child Loop BB3_266 Depth 3
	slli.d	$a5, $s1, 10
	st.d	$a1, $sp, 656                   # 8-byte Folded Spill
	blt	$t6, $t8, .LBB3_241
# %bb.239:                              # %.lr.ph1534.i.preheader
                                        #   in Loop: Header=BB3_238 Depth=2
	ori	$a0, $zero, 8
	bgeu	$t6, $a0, .LBB3_242
# %bb.240:                              #   in Loop: Header=BB3_238 Depth=2
	move	$a1, $zero
	move	$s3, $zero
	ori	$fp, $zero, 32
	b	.LBB3_245
.LBB3_241:                              # %.preheader68.i.thread.i
                                        #   in Loop: Header=BB3_238 Depth=2
	alsl.d	$a0, $s1, $a5, 3
	ld.d	$a1, $sp, 664                   # 8-byte Folded Reload
	add.d	$s4, $a1, $a0
	ori	$a2, $zero, 92
	move	$a0, $s4
	move	$a1, $zero
	move	$s5, $a5
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	move	$s3, $zero
	st.d	$zero, $sp, 600                 # 8-byte Folded Spill
	st.d	$zero, $sp, 592                 # 8-byte Folded Spill
	st.d	$zero, $sp, 584                 # 8-byte Folded Spill
	st.d	$zero, $sp, 576                 # 8-byte Folded Spill
	move	$a4, $zero
	move	$a5, $zero
	move	$a6, $zero
	move	$a7, $zero
	move	$t0, $zero
	move	$t1, $zero
	move	$t2, $zero
	move	$t3, $zero
	move	$t4, $zero
	move	$t5, $zero
	move	$t7, $zero
	move	$t8, $zero
	move	$ra, $zero
	move	$s8, $zero
	move	$a0, $zero
	move	$a1, $zero
	move	$a2, $zero
	move	$a3, $zero
	addi.d	$t6, $s4, 4
	ori	$fp, $zero, 32
	b	.LBB3_256
.LBB3_242:                              # %vector.body551.preheader
                                        #   in Loop: Header=BB3_238 Depth=2
	move	$a0, $a1
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	vld	$vr3, $sp, 240                  # 16-byte Folded Reload
	vori.b	$vr2, $vr3, 0
	vori.b	$vr0, $vr6, 0
	vori.b	$vr1, $vr6, 0
	.p2align	4, , 16
.LBB3_243:                              # %vector.body551
                                        #   Parent Loop BB3_4 Depth=1
                                        #     Parent Loop BB3_238 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$a2, $a0, -4
	ld.w	$a3, $a0, 0
	vinsgr2vr.w	$vr4, $a2, 0
	vinsgr2vr.w	$vr5, $a3, 0
	vilvl.b	$vr4, $vr6, $vr4
	vilvl.h	$vr4, $vr6, $vr4
	vilvl.b	$vr5, $vr6, $vr5
	vilvl.h	$vr5, $vr6, $vr5
	vmax.wu	$vr0, $vr0, $vr4
	vmax.wu	$vr1, $vr1, $vr5
	vmin.wu	$vr2, $vr2, $vr4
	vmin.wu	$vr3, $vr3, $vr5
	addi.d	$a1, $a1, -8
	addi.d	$a0, $a0, 8
	bnez	$a1, .LBB3_243
# %bb.244:                              # %middle.block559
                                        #   in Loop: Header=BB3_238 Depth=2
	vmin.wu	$vr2, $vr2, $vr3
	vreplvei.d	$vr3, $vr2, 1
	vmin.wu	$vr2, $vr2, $vr3
	vreplvei.w	$vr3, $vr2, 1
	vmin.wu	$vr2, $vr2, $vr3
	vpickve2gr.w	$fp, $vr2, 0
	vmax.wu	$vr0, $vr0, $vr1
	vreplvei.d	$vr1, $vr0, 1
	vmax.wu	$vr0, $vr0, $vr1
	vreplvei.w	$vr1, $vr0, 1
	vmax.wu	$vr0, $vr0, $vr1
	vpickve2gr.w	$s3, $vr0, 0
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	move	$a1, $a0
	beq	$a0, $s0, .LBB3_247
.LBB3_245:                              # %.lr.ph1534.i.preheader667
                                        #   in Loop: Header=BB3_238 Depth=2
	sub.d	$a0, $s0, $a1
	add.d	$a1, $s6, $a1
	.p2align	4, , 16
.LBB3_246:                              # %.lr.ph1534.i
                                        #   Parent Loop BB3_4 Depth=1
                                        #     Parent Loop BB3_238 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.bu	$a2, $a1, 0
	sltu	$a3, $a2, $s3
	masknez	$a4, $a2, $a3
	maskeqz	$a3, $s3, $a3
	or	$s3, $a3, $a4
	sltu	$a3, $fp, $a2
	masknez	$a2, $a2, $a3
	maskeqz	$a3, $fp, $a3
	or	$fp, $a3, $a2
	addi.d	$a0, $a0, -1
	addi.d	$a1, $a1, 1
	bnez	$a0, .LBB3_246
.LBB3_247:                              # %.preheader69.us.i.preheader.i
                                        #   in Loop: Header=BB3_238 Depth=2
	move	$a1, $zero
	st.d	$a5, $sp, 256                   # 8-byte Folded Spill
	alsl.d	$a0, $s1, $a5, 3
	ld.d	$a2, $sp, 368                   # 8-byte Folded Reload
	add.d	$a2, $a2, $a0
	move	$a6, $fp
	b	.LBB3_249
	.p2align	4, , 16
.LBB3_248:                              # %._crit_edge.us.i.i
                                        #   in Loop: Header=BB3_249 Depth=3
	addi.w	$a6, $a3, 1
	beq	$a3, $s3, .LBB3_253
.LBB3_249:                              # %.preheader69.us.i.i
                                        #   Parent Loop BB3_4 Depth=1
                                        #     Parent Loop BB3_238 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB3_251 Depth 4
	move	$a4, $zero
	move	$a5, $zero
	move	$a3, $a6
	b	.LBB3_251
	.p2align	4, , 16
.LBB3_250:                              #   in Loop: Header=BB3_251 Depth=4
	addi.d	$a5, $a5, 1
	addi.d	$a4, $a4, 1
	beq	$s0, $a5, .LBB3_248
.LBB3_251:                              #   Parent Loop BB3_4 Depth=1
                                        #     Parent Loop BB3_238 Depth=2
                                        #       Parent Loop BB3_249 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ldx.bu	$a6, $s6, $a5
	bne	$a3, $a6, .LBB3_250
# %bb.252:                              #   in Loop: Header=BB3_251 Depth=4
	slli.d	$a6, $a1, 2
	stx.w	$a4, $a2, $a6
	addi.w	$a1, $a1, 1
	b	.LBB3_250
.LBB3_253:                              # %.preheader68.i.i
                                        #   in Loop: Header=BB3_238 Depth=2
	ld.d	$a1, $sp, 664                   # 8-byte Folded Reload
	add.d	$s4, $a1, $a0
	ori	$a2, $zero, 92
	move	$a0, $s4
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	addi.d	$t6, $s4, 4
	.p2align	4, , 16
.LBB3_254:                              # %.lr.ph.i.i
                                        #   Parent Loop BB3_4 Depth=1
                                        #     Parent Loop BB3_238 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ldx.bu	$a1, $s6, $a0
	slli.d	$a1, $a1, 2
	ldx.w	$a2, $t6, $a1
	addi.d	$a2, $a2, 1
	addi.d	$a0, $a0, 1
	stx.w	$a2, $t6, $a1
	bne	$s0, $a0, .LBB3_254
# %bb.255:                              # %.preheader66.loopexit.i.i
                                        #   in Loop: Header=BB3_238 Depth=2
	ld.w	$a3, $s4, 4
	ld.w	$a2, $s4, 8
	ld.w	$a1, $s4, 12
	ld.w	$a0, $s4, 16
	ld.w	$s8, $s4, 20
	ld.w	$ra, $s4, 24
	ld.w	$t8, $s4, 28
	ld.w	$t7, $s4, 32
	ld.w	$t5, $s4, 36
	ld.w	$t4, $s4, 40
	ld.w	$t3, $s4, 44
	ld.w	$t2, $s4, 48
	ld.w	$t1, $s4, 52
	ld.w	$t0, $s4, 56
	ld.w	$a7, $s4, 60
	ld.w	$a6, $s4, 64
	ld.w	$a5, $s4, 68
	ld.w	$a4, $s4, 72
	ld.w	$s5, $s4, 76
	st.d	$s5, $sp, 576                   # 8-byte Folded Spill
	ld.w	$s5, $s4, 80
	st.d	$s5, $sp, 584                   # 8-byte Folded Spill
	ld.w	$s5, $s4, 84
	st.d	$s5, $sp, 592                   # 8-byte Folded Spill
	ld.w	$s4, $s4, 88
	st.d	$s4, $sp, 600                   # 8-byte Folded Spill
	ld.d	$s5, $sp, 256                   # 8-byte Folded Reload
.LBB3_256:                              # %.preheader66.i.i
                                        #   in Loop: Header=BB3_238 Depth=2
	st.w	$a3, $t6, 0
	add.d	$a2, $a3, $a2
	alsl.d	$s4, $s1, $s5, 3
	ld.d	$a3, $sp, 544                   # 8-byte Folded Reload
	stx.w	$a2, $a3, $s4
	add.d	$a1, $a2, $a1
	ld.d	$a2, $sp, 536                   # 8-byte Folded Reload
	stx.w	$a1, $a2, $s4
	add.d	$a0, $a1, $a0
	ld.d	$a1, $sp, 528                   # 8-byte Folded Reload
	stx.w	$a0, $a1, $s4
	add.d	$a0, $a0, $s8
	ld.d	$a1, $sp, 520                   # 8-byte Folded Reload
	stx.w	$a0, $a1, $s4
	add.d	$a0, $a0, $ra
	ld.d	$a1, $sp, 512                   # 8-byte Folded Reload
	stx.w	$a0, $a1, $s4
	add.d	$a0, $a0, $t8
	ld.d	$a1, $sp, 504                   # 8-byte Folded Reload
	stx.w	$a0, $a1, $s4
	add.d	$a0, $a0, $t7
	ld.d	$a1, $sp, 496                   # 8-byte Folded Reload
	stx.w	$a0, $a1, $s4
	add.d	$a0, $a0, $t5
	ld.d	$a1, $sp, 488                   # 8-byte Folded Reload
	stx.w	$a0, $a1, $s4
	add.d	$a0, $a0, $t4
	ld.d	$a1, $sp, 480                   # 8-byte Folded Reload
	stx.w	$a0, $a1, $s4
	add.d	$a0, $a0, $t3
	ld.d	$a1, $sp, 472                   # 8-byte Folded Reload
	stx.w	$a0, $a1, $s4
	add.d	$a0, $a0, $t2
	ld.d	$a1, $sp, 464                   # 8-byte Folded Reload
	stx.w	$a0, $a1, $s4
	add.d	$a0, $a0, $t1
	ld.d	$a1, $sp, 456                   # 8-byte Folded Reload
	stx.w	$a0, $a1, $s4
	add.d	$a0, $a0, $t0
	ld.d	$a1, $sp, 448                   # 8-byte Folded Reload
	stx.w	$a0, $a1, $s4
	add.d	$a0, $a0, $a7
	ld.d	$a1, $sp, 440                   # 8-byte Folded Reload
	stx.w	$a0, $a1, $s4
	add.d	$a0, $a0, $a6
	ld.d	$a1, $sp, 432                   # 8-byte Folded Reload
	stx.w	$a0, $a1, $s4
	add.d	$a0, $a0, $a5
	ld.d	$a1, $sp, 424                   # 8-byte Folded Reload
	stx.w	$a0, $a1, $s4
	add.d	$a0, $a0, $a4
	ld.d	$a1, $sp, 416                   # 8-byte Folded Reload
	stx.w	$a0, $a1, $s4
	ld.d	$a1, $sp, 576                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a1
	ld.d	$a1, $sp, 408                   # 8-byte Folded Reload
	stx.w	$a0, $a1, $s4
	ld.d	$a1, $sp, 584                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a1
	ld.d	$a1, $sp, 400                   # 8-byte Folded Reload
	stx.w	$a0, $a1, $s4
	ld.d	$a1, $sp, 592                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a1
	ld.d	$a1, $sp, 392                   # 8-byte Folded Reload
	stx.w	$a0, $a1, $s4
	ld.d	$a1, $sp, 600                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a1
	ld.d	$a1, $sp, 384                   # 8-byte Folded Reload
	stx.w	$a0, $a1, $s4
	ld.d	$a0, $sp, 568                   # 8-byte Folded Reload
	add.d	$a0, $a0, $s4
	ori	$a2, $zero, 92
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	lu12i.w	$s8, 1
	ori	$t8, $zero, 1
	ld.d	$t6, $sp, 208                   # 8-byte Folded Reload
	blt	$t6, $t8, .LBB3_259
# %bb.257:                              # %.lr.ph82.preheader.i.i
                                        #   in Loop: Header=BB3_238 Depth=2
	ld.d	$a0, $sp, 664                   # 8-byte Folded Reload
	add.d	$a1, $a0, $s4
	slli.d	$a0, $fp, 2
	ldx.w	$a3, $a1, $a0
	move	$a4, $zero
	addi.w	$a1, $s3, 1
	sub.d	$a1, $a1, $fp
	move	$a2, $s2
	.p2align	4, , 16
.LBB3_258:                              # %.lr.ph82.i.i
                                        #   Parent Loop BB3_4 Depth=1
                                        #     Parent Loop BB3_238 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$a5, $a2, $a0
	ori	$a6, $s8, 2100
	ldx.w	$a5, $a5, $a6
	sub.d	$a3, $a5, $a3
	add.d	$a3, $a3, $a4
	addi.d	$a4, $a3, -1
	stx.w	$a4, $a2, $a0
	slli.d	$a4, $a3, 1
	addi.d	$a1, $a1, -1
	addi.d	$a2, $a2, 4
	move	$a3, $a5
	bnez	$a1, .LBB3_258
.LBB3_259:                              # %.preheader.i.i
                                        #   in Loop: Header=BB3_238 Depth=2
	vld	$vr6, $sp, 624                  # 16-byte Folded Reload
	ld.d	$s4, $sp, 224                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 192                   # 8-byte Folded Reload
	bgeu	$fp, $s3, .LBB3_237
# %bb.260:                              # %.lr.ph85.preheader.i.i
                                        #   in Loop: Header=BB3_238 Depth=2
	bstrpick.d	$a3, $fp, 31, 0
	sub.d	$a1, $s3, $a3
	ori	$a0, $zero, 8
	bgeu	$a1, $a0, .LBB3_262
# %bb.261:                              #   in Loop: Header=BB3_238 Depth=2
	move	$a0, $a3
	b	.LBB3_265
.LBB3_262:                              # %vector.ph534
                                        #   in Loop: Header=BB3_238 Depth=2
	move	$a2, $a1
	bstrins.d	$a2, $zero, 2, 0
	add.d	$a0, $a2, $a3
	slli.d	$a3, $a3, 2
	move	$a4, $a2
	.p2align	4, , 16
.LBB3_263:                              # %vector.body537
                                        #   Parent Loop BB3_4 Depth=1
                                        #     Parent Loop BB3_238 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	xvldx	$xr0, $s2, $a3
	xvldx	$xr1, $s7, $a3
	xvslli.w	$xr0, $xr0, 1
	xvsub.w	$xr0, $xr0, $xr1
	xvaddi.wu	$xr0, $xr0, 2
	xvstx	$xr0, $s7, $a3
	addi.d	$a4, $a4, -8
	addi.d	$a3, $a3, 32
	bnez	$a4, .LBB3_263
# %bb.264:                              # %middle.block543
                                        #   in Loop: Header=BB3_238 Depth=2
	beq	$a1, $a2, .LBB3_237
.LBB3_265:                              # %.lr.ph85.i.i.preheader
                                        #   in Loop: Header=BB3_238 Depth=2
	slli.d	$a1, $a0, 2
	sub.d	$a0, $s3, $a0
	.p2align	4, , 16
.LBB3_266:                              # %.lr.ph85.i.i
                                        #   Parent Loop BB3_4 Depth=1
                                        #     Parent Loop BB3_238 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ldx.w	$a2, $s2, $a1
	ldx.w	$a3, $s7, $a1
	slli.d	$a2, $a2, 1
	sub.d	$a2, $a2, $a3
	addi.d	$a2, $a2, 2
	stx.w	$a2, $s7, $a1
	addi.d	$a0, $a0, -1
	addi.d	$a1, $a1, 4
	bnez	$a0, .LBB3_266
	b	.LBB3_237
.LBB3_267:                              #   in Loop: Header=BB3_4 Depth=1
	move	$s6, $a0
	ld.d	$s1, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	b	.LBB3_269
.LBB3_268:                              #   in Loop: Header=BB3_4 Depth=1
	move	$s2, $t1
	move	$s6, $zero
.LBB3_269:                              # %._crit_edge1539.i
                                        #   in Loop: Header=BB3_4 Depth=1
	ori	$a0, $zero, 3192
	ldx.w	$fp, $s5, $a0
	ld.w	$s0, $s5, 40
	ori	$a2, $zero, 1024
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 15
	ori	$a1, $zero, 4080
	ld.d	$a2, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 152                   # 8-byte Folded Reload
	vld	$vr2, $sp, 128                  # 16-byte Folded Reload
	.p2align	4, , 16
.LBB3_270:                              # %.preheader1389.i
                                        #   Parent Loop BB3_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	slli.d	$a4, $a0, 4
	addi.d	$a5, $a4, 7
	addi.d	$a6, $a4, 6
	addi.d	$a7, $a4, 5
	addi.d	$t0, $a4, 4
	addi.d	$t1, $a4, 3
	addi.d	$t2, $a4, 2
	addi.d	$t3, $a4, 1
	st.b	$a4, $sp, 720
	st.b	$a5, $sp, 727
	st.b	$a6, $sp, 726
	st.b	$a7, $sp, 725
	st.b	$t0, $sp, 724
	st.b	$t1, $sp, 723
	st.b	$t2, $sp, 722
	st.b	$t3, $sp, 721
	vld	$vr0, $sp, 720
	vinsgr2vr.b	$vr1, $a4, 0
	vreplvei.b	$vr1, $vr1, 0
	vor.v	$vr1, $vr1, $vr2
	vpackev.d	$vr0, $vr1, $vr0
	vst	$vr0, $a2, 0
	st.w	$a1, $a3, 0
	addi.d	$a0, $a0, -1
	addi.d	$a3, $a3, -4
	addi.d	$a1, $a1, -16
	addi.w	$a4, $zero, -1
	addi.d	$a2, $a2, -16
	bne	$a0, $a4, .LBB3_270
# %bb.271:                              #   in Loop: Header=BB3_4 Depth=1
	ld.d	$a0, $sp, 608                   # 8-byte Folded Reload
	mul.w	$t5, $s0, $a0
	addi.w	$a0, $fp, 1
	st.d	$a0, $sp, 656                   # 8-byte Folded Spill
	ld.d	$ra, $sp, 344                   # 8-byte Folded Reload
	xvld	$xr3, $sp, 304                  # 32-byte Folded Reload
	xvld	$xr4, $sp, 272                  # 32-byte Folded Reload
	vld	$vr6, $sp, 624                  # 16-byte Folded Reload
	ori	$t8, $zero, 1
	ld.d	$s7, $sp, 24                    # 8-byte Folded Reload
	ld.d	$t6, $sp, 208                   # 8-byte Folded Reload
	move	$t1, $s2
	blt	$s2, $t8, .LBB3_284
# %bb.272:                              #   in Loop: Header=BB3_4 Depth=1
	ld.d	$a0, $sp, 360                   # 8-byte Folded Reload
	ld.bu	$s4, $a0, 0
	move	$t7, $zero
	move	$s2, $zero
	slli.d	$a0, $s4, 10
	alsl.d	$a0, $s4, $a0, 3
	ld.d	$a1, $sp, 664                   # 8-byte Folded Reload
	add.d	$a1, $a1, $a0
	st.d	$a1, $sp, 696                   # 8-byte Folded Spill
	slli.d	$a1, $s4, 2
	ld.d	$a2, $sp, 560                   # 8-byte Folded Reload
	ldx.w	$s3, $a2, $a1
	ld.d	$a1, $sp, 368                   # 8-byte Folded Reload
	add.d	$a3, $a1, $a0
	ld.d	$a1, $sp, 568                   # 8-byte Folded Reload
	add.d	$a0, $a1, $a0
	st.d	$a0, $sp, 680                   # 8-byte Folded Spill
	ori	$a2, $zero, 256
	ori	$t2, $zero, 49
	st.d	$s3, $sp, 672                   # 8-byte Folded Spill
	ld.d	$t4, $sp, 376                   # 8-byte Folded Reload
	ld.d	$t3, $sp, 48                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 552                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 32                    # 8-byte Folded Reload
	move	$t0, $s6
	move	$s6, $a3
.LBB3_273:                              #   in Loop: Header=BB3_4 Depth=1
	ld.w	$a0, $s5, 36
	ori	$a1, $zero, 36
	st.w	$a1, $s5, 8
	bge	$a0, $s3, .LBB3_279
# %bb.274:                              # %.lr.ph1549.i
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.d	$a1, $s5, 0
	ld.w	$a3, $a1, 8
	addi.w	$a3, $a3, -1
	b	.LBB3_276
.LBB3_275:                              #   in Loop: Header=BB3_276 Depth=2
	addi.w	$a3, $a3, -1
	bge	$a0, $s3, .LBB3_280
.LBB3_276:                              #   Parent Loop BB3_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.w	$a4, $zero, -1
	beq	$a3, $a4, .LBB3_297
# %bb.277:                              #   in Loop: Header=BB3_276 Depth=2
	ld.d	$a5, $a1, 0
	ld.w	$a4, $s5, 32
	ld.bu	$a6, $a5, 0
	slli.d	$a4, $a4, 8
	or	$a4, $a4, $a6
	st.w	$a4, $s5, 32
	addi.w	$a0, $a0, 8
	st.w	$a0, $s5, 36
	ld.wu	$a6, $a1, 12
	addi.d	$a5, $a5, 1
	st.d	$a5, $a1, 0
	st.w	$a3, $a1, 8
	addi.d	$a5, $a6, 1
	and	$a6, $a5, $t4
	st.w	$a5, $a1, 12
	beqz	$a6, .LBB3_275
# %bb.278:                              #   in Loop: Header=BB3_276 Depth=2
	ld.w	$a5, $a1, 16
	addi.d	$a5, $a5, 1
	st.w	$a5, $a1, 16
	b	.LBB3_275
.LBB3_279:                              # %.._crit_edge1550_crit_edge.i
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.w	$a4, $s5, 32
.LBB3_280:                              # %._crit_edge1550.i
                                        #   in Loop: Header=BB3_4 Depth=1
	sub.w	$a1, $a0, $s3
	srl.w	$a0, $a4, $a1
	addi.d	$a3, $zero, -1
	sll.w	$a3, $a3, $s3
	andn	$a7, $a0, $a3
	st.w	$a1, $s5, 36
.LBB3_281:                              #   in Loop: Header=BB3_4 Depth=1
	ori	$a3, $zero, 20
	addi.w	$a0, $zero, -4
	blt	$a3, $s3, .LBB3_448
# %bb.282:                              #   in Loop: Header=BB3_4 Depth=1
	slli.d	$a3, $s3, 2
	ld.d	$a4, $sp, 680                   # 8-byte Folded Reload
	ldx.w	$a4, $a4, $a3
	addi.w	$a5, $a7, 0
	bge	$a4, $a5, .LBB3_349
# %bb.283:                              #   in Loop: Header=BB3_4 Depth=1
	addi.w	$s3, $s3, 1
	b	.LBB3_202
.LBB3_284:                              #   in Loop: Header=BB3_4 Depth=1
	move	$t7, $zero
	move	$t2, $zero
	move	$s2, $zero
	move	$a3, $zero
	addi.w	$a0, $zero, -4
	ori	$a2, $zero, 256
	ld.d	$t4, $sp, 376                   # 8-byte Folded Reload
	ld.d	$t3, $sp, 48                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 552                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 32                    # 8-byte Folded Reload
	move	$t0, $s6
	ld.d	$s6, $sp, 40                    # 8-byte Folded Reload
	b	.LBB3_449
.LBB3_285:                              #   in Loop: Header=BB3_4 Depth=1
	blt	$a2, $t6, .LBB3_329
# %bb.286:                              #   in Loop: Header=BB3_4 Depth=1
	addi.w	$t0, $t0, 1
	b	.LBB3_226
.LBB3_287:                              #   in Loop: Header=BB3_4 Depth=1
	bge	$a2, $a0, .LBB3_291
.LBB3_288:                              #   in Loop: Header=BB3_4 Depth=1
	ld.w	$a0, $s5, 36
	ori	$a1, $zero, 28
	st.w	$a1, $s5, 8
	blt	$a0, $t8, .LBB3_292
# %bb.289:                              # %.._crit_edge1671_crit_edge.i
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.w	$a4, $s5, 32
.LBB3_290:                              # %._crit_edge1671.i
                                        #   in Loop: Header=BB3_4 Depth=1
	addi.d	$a0, $a0, -1
	st.w	$a0, $s5, 36
	srl.w	$a0, $a4, $a0
	andi	$a0, $a0, 1
	ld.d	$a1, $sp, 200                   # 8-byte Folded Reload
	stx.b	$a0, $a1, $a2
	addi.w	$a2, $a2, 1
	ori	$a0, $zero, 16
	b	.LBB3_287
.LBB3_291:                              # %.preheader1396.i
                                        #   in Loop: Header=BB3_4 Depth=1
	ori	$a2, $zero, 256
	move	$a0, $ra
	move	$a1, $zero
	st.d	$s4, $sp, 224                   # 8-byte Folded Spill
	st.d	$t1, $sp, 56                    # 8-byte Folded Spill
	st.d	$t3, $sp, 48                    # 8-byte Folded Spill
	st.d	$fp, $sp, 552                   # 8-byte Folded Spill
	move	$fp, $t6
	ld.d	$a3, $sp, 712                   # 8-byte Folded Reload
	st.d	$a3, $sp, 712                   # 8-byte Folded Spill
	st.d	$s3, $sp, 232                   # 8-byte Folded Spill
	st.d	$s0, $sp, 32                    # 8-byte Folded Spill
	st.d	$s6, $sp, 40                    # 8-byte Folded Spill
	st.d	$s2, $sp, 584                   # 8-byte Folded Spill
	ld.d	$a3, $sp, 696                   # 8-byte Folded Reload
	st.d	$a3, $sp, 696                   # 8-byte Folded Spill
	move	$s8, $a7
	move	$s0, $t5
	st.d	$t7, $sp, 600                   # 8-byte Folded Spill
	move	$s4, $t2
	st.d	$t0, $sp, 592                   # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$t0, $sp, 592                   # 8-byte Folded Reload
	move	$t2, $s4
	ld.d	$t7, $sp, 600                   # 8-byte Folded Reload
	move	$t5, $s0
	move	$a7, $s8
	ld.d	$s2, $sp, 584                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 40                    # 8-byte Folded Reload
	ld.d	$t4, $sp, 376                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 232                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 712                   # 8-byte Folded Reload
	move	$t6, $fp
	ld.d	$fp, $sp, 552                   # 8-byte Folded Reload
	lu12i.w	$s8, 1
	ld.d	$t3, $sp, 48                    # 8-byte Folded Reload
	ld.d	$t1, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 224                   # 8-byte Folded Reload
	ori	$t8, $zero, 1
	vld	$vr6, $sp, 624                  # 16-byte Folded Reload
	xvld	$xr4, $sp, 272                  # 32-byte Folded Reload
	xvld	$xr3, $sp, 304                  # 32-byte Folded Reload
	ld.d	$ra, $sp, 344                   # 8-byte Folded Reload
	move	$a2, $zero
	b	.LBB3_299
.LBB3_292:                              # %.lr.ph1670.i
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.d	$a1, $s5, 0
	ld.w	$a3, $a1, 8
	addi.w	$a3, $a3, -1
	b	.LBB3_294
.LBB3_293:                              #   in Loop: Header=BB3_294 Depth=2
	addi.w	$a5, $a0, -8
	addi.w	$a6, $zero, -8
	addi.w	$a3, $a3, -1
	blt	$a6, $a5, .LBB3_290
.LBB3_294:                              #   Parent Loop BB3_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.w	$a4, $zero, -1
	beq	$a3, $a4, .LBB3_297
# %bb.295:                              #   in Loop: Header=BB3_294 Depth=2
	ld.d	$a5, $a1, 0
	ld.w	$a4, $s5, 32
	ld.bu	$a6, $a5, 0
	slli.d	$a4, $a4, 8
	or	$a4, $a4, $a6
	st.w	$a4, $s5, 32
	addi.d	$a0, $a0, 8
	st.w	$a0, $s5, 36
	ld.wu	$a6, $a1, 12
	addi.d	$a5, $a5, 1
	st.d	$a5, $a1, 0
	st.w	$a3, $a1, 8
	addi.d	$a5, $a6, 1
	and	$a6, $a5, $t4
	st.w	$a5, $a1, 12
	beqz	$a6, .LBB3_293
# %bb.296:                              #   in Loop: Header=BB3_294 Depth=2
	ld.w	$a5, $a1, 16
	addi.d	$a5, $a5, 1
	st.w	$a5, $a1, 16
	b	.LBB3_293
.LBB3_297:                              #   in Loop: Header=BB3_4 Depth=1
	move	$a3, $zero
	move	$a0, $zero
	b	.LBB3_449
.LBB3_298:                              #   in Loop: Header=BB3_4 Depth=1
	addi.w	$a2, $a2, 1
	ld.d	$a1, $sp, 712                   # 8-byte Folded Reload
.LBB3_299:                              # %.loopexit1397.i
                                        #   in Loop: Header=BB3_4 Depth=1
	ori	$a0, $zero, 15
	st.d	$a1, $sp, 712                   # 8-byte Folded Spill
	blt	$a0, $a2, .LBB3_302
# %bb.300:                              #   in Loop: Header=BB3_4 Depth=1
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	ldx.bu	$a0, $a0, $a2
	beqz	$a0, .LBB3_298
# %bb.301:                              #   in Loop: Header=BB3_4 Depth=1
	move	$a3, $zero
	b	.LBB3_317
.LBB3_302:                              #   in Loop: Header=BB3_4 Depth=1
	move	$a0, $zero
	move	$a1, $zero
	stptr.w	$zero, $s5, 3192
	ld.d	$a4, $sp, 176                   # 8-byte Folded Reload
	ori	$a5, $zero, 256
	b	.LBB3_304
	.p2align	4, , 16
.LBB3_303:                              #   in Loop: Header=BB3_304 Depth=2
	addi.d	$a1, $a1, 1
	beq	$a1, $a5, .LBB3_306
.LBB3_304:                              #   Parent Loop BB3_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.bu	$a3, $ra, $a1
	beqz	$a3, .LBB3_303
# %bb.305:                              #   in Loop: Header=BB3_304 Depth=2
	stx.b	$a1, $a4, $a0
	ori	$a0, $zero, 3192
	ldx.w	$a0, $s5, $a0
	addi.w	$a0, $a0, 1
	stptr.w	$a0, $s5, 3192
	b	.LBB3_303
.LBB3_306:                              # %makeMaps_d.exit.i
                                        #   in Loop: Header=BB3_4 Depth=1
	beqz	$a0, .LBB3_328
# %bb.307:                              #   in Loop: Header=BB3_4 Depth=1
	addi.w	$t6, $a0, 2
.LBB3_308:                              #   in Loop: Header=BB3_4 Depth=1
	ld.w	$a0, $s5, 36
	ori	$a1, $zero, 30
	st.w	$a1, $s5, 8
	ori	$a1, $zero, 3
	blt	$a0, $a1, .LBB3_312
# %bb.309:                              # %.._crit_edge1508_crit_edge.i
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.w	$a4, $s5, 32
.LBB3_310:                              # %._crit_edge1508.i
                                        #   in Loop: Header=BB3_4 Depth=1
	addi.w	$a0, $a0, -3
	srl.w	$a1, $a4, $a0
	andi	$fp, $a1, 7
	st.w	$a0, $s5, 36
	ori	$a1, $zero, 7
	bltu	$a1, $fp, .LBB3_109
# %bb.311:                              # %._crit_edge1508.i
                                        #   in Loop: Header=BB3_4 Depth=1
	sll.d	$a1, $t8, $fp
	andi	$a1, $a1, 131
	bnez	$a1, .LBB3_328
	b	.LBB3_109
.LBB3_312:                              # %.lr.ph1507.i
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.d	$a1, $s5, 0
	ld.w	$a3, $a1, 8
	addi.w	$a3, $a3, -1
	b	.LBB3_314
.LBB3_313:                              #   in Loop: Header=BB3_314 Depth=2
	addi.w	$a5, $a0, -8
	addi.w	$a6, $zero, -6
	addi.w	$a3, $a3, -1
	blt	$a6, $a5, .LBB3_310
.LBB3_314:                              #   Parent Loop BB3_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.w	$a4, $zero, -1
	beq	$a3, $a4, .LBB3_297
# %bb.315:                              #   in Loop: Header=BB3_314 Depth=2
	ld.d	$a5, $a1, 0
	ld.w	$a4, $s5, 32
	ld.bu	$a6, $a5, 0
	slli.d	$a4, $a4, 8
	or	$a4, $a4, $a6
	st.w	$a4, $s5, 32
	addi.d	$a0, $a0, 8
	st.w	$a0, $s5, 36
	ld.wu	$a6, $a1, 12
	addi.d	$a5, $a5, 1
	st.d	$a5, $a1, 0
	st.w	$a3, $a1, 8
	addi.d	$a5, $a6, 1
	and	$a6, $a5, $t4
	st.w	$a5, $a1, 12
	beqz	$a6, .LBB3_313
# %bb.316:                              #   in Loop: Header=BB3_314 Depth=2
	ld.w	$a5, $a1, 16
	addi.d	$a5, $a5, 1
	st.w	$a5, $a1, 16
	b	.LBB3_313
.LBB3_317:                              #   in Loop: Header=BB3_4 Depth=1
	ori	$a0, $zero, 15
	st.d	$a3, $sp, 704                   # 8-byte Folded Spill
	blt	$a0, $a3, .LBB3_298
.LBB3_318:                              #   in Loop: Header=BB3_4 Depth=1
	ld.w	$a0, $s5, 36
	ori	$a1, $zero, 29
	st.w	$a1, $s5, 8
	blt	$a0, $t8, .LBB3_323
# %bb.319:                              # %.._crit_edge1664_crit_edge.i
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.w	$a4, $s5, 32
.LBB3_320:                              # %._crit_edge1664.i
                                        #   in Loop: Header=BB3_4 Depth=1
	addi.d	$a0, $a0, -1
	srl.w	$a1, $a4, $a0
	andi	$a1, $a1, 1
	st.w	$a0, $s5, 36
	ld.d	$a3, $sp, 704                   # 8-byte Folded Reload
	beqz	$a1, .LBB3_322
# %bb.321:                              #   in Loop: Header=BB3_4 Depth=1
	alsl.w	$a0, $a2, $a3, 4
	stx.b	$t8, $ra, $a0
.LBB3_322:                              #   in Loop: Header=BB3_4 Depth=1
	addi.w	$a3, $a3, 1
	b	.LBB3_317
.LBB3_323:                              # %.lr.ph1663.i
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.d	$a1, $s5, 0
	ld.w	$a3, $a1, 8
	addi.w	$a3, $a3, -1
	b	.LBB3_325
.LBB3_324:                              #   in Loop: Header=BB3_325 Depth=2
	addi.w	$a5, $a0, -8
	addi.w	$a6, $zero, -8
	addi.w	$a3, $a3, -1
	blt	$a6, $a5, .LBB3_320
.LBB3_325:                              #   Parent Loop BB3_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.w	$a4, $zero, -1
	beq	$a3, $a4, .LBB3_297
# %bb.326:                              #   in Loop: Header=BB3_325 Depth=2
	ld.d	$a5, $a1, 0
	ld.w	$a4, $s5, 32
	ld.bu	$a6, $a5, 0
	slli.d	$a4, $a4, 8
	or	$a4, $a4, $a6
	st.w	$a4, $s5, 32
	addi.d	$a0, $a0, 8
	st.w	$a0, $s5, 36
	ld.wu	$a6, $a1, 12
	addi.d	$a5, $a5, 1
	st.d	$a5, $a1, 0
	st.w	$a3, $a1, 8
	addi.d	$a5, $a6, 1
	and	$a6, $a5, $t4
	st.w	$a5, $a1, 12
	beqz	$a6, .LBB3_324
# %bb.327:                              #   in Loop: Header=BB3_325 Depth=2
	ld.w	$a5, $a1, 16
	addi.d	$a5, $a5, 1
	st.w	$a5, $a1, 16
	b	.LBB3_324
.LBB3_328:                              #   in Loop: Header=BB3_4 Depth=1
	move	$a3, $zero
	addi.w	$a0, $zero, -4
	b	.LBB3_449
.LBB3_329:                              #   in Loop: Header=BB3_4 Depth=1
	addi.w	$a0, $a3, -21
	addi.w	$a1, $zero, -20
	bgeu	$a0, $a1, .LBB3_331
# %bb.330:                              #   in Loop: Header=BB3_4 Depth=1
	st.d	$a3, $sp, 712                   # 8-byte Folded Spill
	b	.LBB3_328
.LBB3_331:                              #   in Loop: Header=BB3_4 Depth=1
	st.d	$a3, $sp, 712                   # 8-byte Folded Spill
.LBB3_332:                              #   in Loop: Header=BB3_4 Depth=1
	ld.w	$a0, $s5, 36
	ori	$a1, $zero, 34
	st.w	$a1, $s5, 8
	blt	$a0, $t8, .LBB3_338
# %bb.333:                              # %.._crit_edge1643_crit_edge.i
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.w	$a4, $s5, 32
.LBB3_334:                              # %._crit_edge1643.i
                                        #   in Loop: Header=BB3_4 Depth=1
	addi.w	$a0, $a0, -1
	srl.w	$a1, $a4, $a0
	andi	$a1, $a1, 1
	st.w	$a0, $s5, 36
	beqz	$a1, .LBB3_348
.LBB3_335:                              #   in Loop: Header=BB3_4 Depth=1
	ori	$a1, $zero, 35
	st.w	$a1, $s5, 8
	blt	$a0, $t8, .LBB3_343
# %bb.336:                              # %.._crit_edge1650_crit_edge.i
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.w	$a4, $s5, 32
.LBB3_337:                              # %._crit_edge1650.i
                                        #   in Loop: Header=BB3_4 Depth=1
	addi.d	$a0, $a0, -1
	st.w	$a0, $s5, 36
	srl.w	$a0, $a4, $a0
	andi	$a0, $a0, 1
	sub.d	$a0, $zero, $a0
	ori	$a0, $a0, 1
	ld.d	$a3, $sp, 712                   # 8-byte Folded Reload
	add.d	$a3, $a0, $a3
	b	.LBB3_329
.LBB3_338:                              # %.lr.ph1642.i
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.d	$a1, $s5, 0
	ld.w	$a3, $a1, 8
	addi.w	$a3, $a3, -1
	b	.LBB3_340
.LBB3_339:                              #   in Loop: Header=BB3_340 Depth=2
	addi.w	$a5, $a0, -8
	addi.w	$a6, $zero, -8
	addi.w	$a3, $a3, -1
	blt	$a6, $a5, .LBB3_334
.LBB3_340:                              #   Parent Loop BB3_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.w	$a4, $zero, -1
	beq	$a3, $a4, .LBB3_297
# %bb.341:                              #   in Loop: Header=BB3_340 Depth=2
	ld.d	$a5, $a1, 0
	ld.w	$a4, $s5, 32
	ld.bu	$a6, $a5, 0
	slli.d	$a4, $a4, 8
	or	$a4, $a4, $a6
	st.w	$a4, $s5, 32
	addi.d	$a0, $a0, 8
	st.w	$a0, $s5, 36
	ld.wu	$a6, $a1, 12
	addi.d	$a5, $a5, 1
	st.d	$a5, $a1, 0
	st.w	$a3, $a1, 8
	addi.d	$a5, $a6, 1
	and	$a6, $a5, $t4
	st.w	$a5, $a1, 12
	beqz	$a6, .LBB3_339
# %bb.342:                              #   in Loop: Header=BB3_340 Depth=2
	ld.w	$a5, $a1, 16
	addi.d	$a5, $a5, 1
	st.w	$a5, $a1, 16
	b	.LBB3_339
.LBB3_343:                              # %.lr.ph1649.i
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.d	$a1, $s5, 0
	ld.w	$a3, $a1, 8
	addi.w	$a3, $a3, -1
	b	.LBB3_345
.LBB3_344:                              #   in Loop: Header=BB3_345 Depth=2
	addi.w	$a5, $a0, -8
	addi.w	$a6, $zero, -8
	addi.w	$a3, $a3, -1
	blt	$a6, $a5, .LBB3_337
.LBB3_345:                              #   Parent Loop BB3_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.w	$a4, $zero, -1
	beq	$a3, $a4, .LBB3_297
# %bb.346:                              #   in Loop: Header=BB3_345 Depth=2
	ld.d	$a5, $a1, 0
	ld.w	$a4, $s5, 32
	ld.bu	$a6, $a5, 0
	slli.d	$a4, $a4, 8
	or	$a4, $a4, $a6
	st.w	$a4, $s5, 32
	addi.d	$a0, $a0, 8
	st.w	$a0, $s5, 36
	ld.wu	$a6, $a1, 12
	addi.d	$a5, $a5, 1
	st.d	$a5, $a1, 0
	st.w	$a3, $a1, 8
	addi.d	$a5, $a6, 1
	and	$a6, $a5, $t4
	st.w	$a5, $a1, 12
	beqz	$a6, .LBB3_344
# %bb.347:                              #   in Loop: Header=BB3_345 Depth=2
	ld.w	$a5, $a1, 16
	addi.d	$a5, $a5, 1
	st.w	$a5, $a1, 16
	b	.LBB3_344
.LBB3_348:                              #   in Loop: Header=BB3_4 Depth=1
	slli.d	$a0, $t0, 8
	alsl.d	$a0, $t0, $a0, 1
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	add.d	$a0, $a1, $a0
	ld.d	$a3, $sp, 712                   # 8-byte Folded Reload
	stx.b	$a3, $a0, $a2
	addi.w	$a2, $a2, 1
	b	.LBB3_285
.LBB3_349:                              #   in Loop: Header=BB3_4 Depth=1
	ld.d	$a4, $sp, 696                   # 8-byte Folded Reload
	ldx.w	$a1, $a4, $a3
	sub.w	$a1, $a7, $a1
	ori	$a3, $zero, 257
	bltu	$a3, $a1, .LBB3_448
# %bb.350:                              #   in Loop: Header=BB3_4 Depth=1
	st.d	$t1, $sp, 56                    # 8-byte Folded Spill
	st.d	$a4, $sp, 696                   # 8-byte Folded Spill
	slli.d	$a0, $a1, 2
	ldx.w	$t3, $s6, $a0
	ld.d	$t1, $sp, 176                   # 8-byte Folded Reload
.LBB3_351:                              # %.loopexit1376.i
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.d	$a0, $sp, 656                   # 8-byte Folded Reload
	bne	$t3, $a0, .LBB3_366
# %bb.352:                              #   in Loop: Header=BB3_4 Depth=1
	ld.w	$a1, $s5, 56
	move	$a3, $zero
	addi.w	$a0, $zero, -4
	bltz	$a1, .LBB3_402
# %bb.353:                              #   in Loop: Header=BB3_4 Depth=1
	ld.d	$a4, $sp, 696                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 56                    # 8-byte Folded Reload
	st.d	$a4, $sp, 696                   # 8-byte Folded Spill
	bge	$a1, $t7, .LBB3_401
# %bb.354:                              # %vector.ph474
                                        #   in Loop: Header=BB3_4 Depth=1
	xvld	$xr0, $s5, 68
	move	$a1, $zero
	move	$a2, $zero
	xvld	$xr1, $s5, 100
	xvst	$xr0, $s5, 1100
	xvld	$xr0, $s5, 132
	xvld	$xr2, $s5, 164
	xvst	$xr1, $s5, 1132
	xvld	$xr1, $s5, 196
	xvst	$xr0, $s5, 1164
	xvst	$xr2, $s5, 1196
	xvld	$xr0, $s5, 228
	xvst	$xr1, $s5, 1228
	xvld	$xr1, $s5, 260
	xvld	$xr2, $s5, 292
	xvst	$xr0, $s5, 1260
	xvld	$xr0, $s5, 324
	xvst	$xr1, $s5, 1292
	xvst	$xr2, $s5, 1324
	xvld	$xr1, $s5, 356
	xvst	$xr0, $s5, 1356
	xvld	$xr0, $s5, 388
	xvld	$xr2, $s5, 420
	xvst	$xr1, $s5, 1388
	xvld	$xr1, $s5, 452
	xvst	$xr0, $s5, 1420
	xvst	$xr2, $s5, 1452
	xvld	$xr0, $s5, 484
	xvst	$xr1, $s5, 1484
	xvld	$xr1, $s5, 516
	xvld	$xr2, $s5, 548
	xvst	$xr0, $s5, 1516
	xvld	$xr0, $s5, 580
	xvst	$xr1, $s5, 1548
	xvst	$xr2, $s5, 1580
	xvld	$xr1, $s5, 612
	xvst	$xr0, $s5, 1612
	xvld	$xr0, $s5, 644
	xvld	$xr2, $s5, 676
	xvst	$xr1, $s5, 1644
	xvld	$xr1, $s5, 708
	xvst	$xr0, $s5, 1676
	xvst	$xr2, $s5, 1708
	xvld	$xr0, $s5, 740
	xvst	$xr1, $s5, 1740
	xvld	$xr1, $s5, 772
	xvld	$xr2, $s5, 804
	xvst	$xr0, $s5, 1772
	xvld	$xr0, $s5, 836
	xvst	$xr1, $s5, 1804
	xvst	$xr2, $s5, 1836
	xvld	$xr1, $s5, 868
	xvst	$xr0, $s5, 1868
	xvld	$xr0, $s5, 900
	xvld	$xr2, $s5, 932
	xvst	$xr1, $s5, 1900
	xvld	$xr1, $s5, 964
	xvst	$xr0, $s5, 1932
	xvst	$xr2, $s5, 1964
	xvld	$xr0, $s5, 996
	xvst	$xr1, $s5, 1996
	xvld	$xr1, $s5, 1028
	xvld	$xr2, $s5, 1060
	xvst	$xr0, $s5, 2028
	st.w	$zero, $s5, 1096
	ori	$a3, $zero, 2060
	xvstx	$xr1, $s5, $a3
	ori	$a3, $zero, 2092
	xvstx	$xr2, $s5, $a3
	ld.d	$a4, $sp, 88                    # 8-byte Folded Reload
	ori	$a5, $zero, 1024
.LBB3_355:                              # %.preheader1373.i
                                        #   Parent Loop BB3_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.w	$a3, $a4, $a1
	add.d	$a2, $a3, $a2
	stx.w	$a2, $a4, $a1
	addi.d	$a1, $a1, 4
	bne	$a1, $a5, .LBB3_355
# %bb.356:                              # %.preheader1371.i.preheader
                                        #   in Loop: Header=BB3_4 Depth=1
	move	$a1, $zero
	move	$a2, $zero
	ld.d	$t1, $sp, 96                    # 8-byte Folded Reload
.LBB3_357:                              # %.preheader1371.i
                                        #   Parent Loop BB3_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a3, $sp, 616                   # 8-byte Folded Reload
	ldx.w	$a3, $a3, $a1
	bltz	$a3, .LBB3_399
# %bb.358:                              # %.preheader1371.i
                                        #   in Loop: Header=BB3_357 Depth=2
	blt	$t7, $a3, .LBB3_399
# %bb.359:                              #   in Loop: Header=BB3_357 Depth=2
	addi.d	$a1, $a1, 4
	addi.d	$a2, $a2, 1
	ori	$a3, $zero, 1028
	bne	$a1, $a3, .LBB3_357
# %bb.360:                              #   in Loop: Header=BB3_4 Depth=1
	st.d	$s7, $sp, 24                    # 8-byte Folded Spill
	move	$s7, $t7
	move	$t7, $s2
	move	$s2, $t5
	move	$t5, $s0
	move	$s0, $s3
	move	$s3, $a7
	ld.bu	$a0, $s5, 44
	st.w	$zero, $s5, 16
	st.b	$zero, $s5, 12
	ori	$a1, $zero, 2
	st.w	$a1, $s5, 8
	beqz	$a0, .LBB3_453
# %bb.361:                              # %vector.body
                                        #   in Loop: Header=BB3_4 Depth=1
	st.d	$s6, $sp, 40                    # 8-byte Folded Spill
	move	$s6, $t0
	ld.d	$a0, $sp, 680                   # 8-byte Folded Reload
	st.d	$a0, $sp, 680                   # 8-byte Folded Spill
	xvld	$xr0, $s5, 1096
	move	$a0, $zero
	move	$a1, $zero
	xvld	$xr1, $s5, 1128
	ori	$a2, $zero, 2124
	xvstx	$xr0, $s5, $a2
	xvld	$xr0, $s5, 1160
	xvld	$xr2, $s5, 1192
	ori	$a2, $zero, 2156
	xvstx	$xr1, $s5, $a2
	xvld	$xr1, $s5, 1224
	ori	$a2, $zero, 2188
	xvstx	$xr0, $s5, $a2
	ori	$a2, $zero, 2220
	xvstx	$xr2, $s5, $a2
	xvld	$xr0, $s5, 1256
	ori	$a2, $zero, 2252
	xvstx	$xr1, $s5, $a2
	xvld	$xr1, $s5, 1288
	xvld	$xr2, $s5, 1320
	ori	$a2, $zero, 2284
	xvstx	$xr0, $s5, $a2
	xvld	$xr0, $s5, 1352
	ori	$a2, $zero, 2316
	xvstx	$xr1, $s5, $a2
	ori	$a2, $zero, 2348
	xvstx	$xr2, $s5, $a2
	xvld	$xr1, $s5, 1384
	ori	$a2, $zero, 2380
	xvstx	$xr0, $s5, $a2
	xvld	$xr0, $s5, 1416
	xvld	$xr2, $s5, 1448
	ori	$a2, $zero, 2412
	xvstx	$xr1, $s5, $a2
	xvld	$xr1, $s5, 1480
	ori	$a2, $zero, 2444
	xvstx	$xr0, $s5, $a2
	ori	$a2, $zero, 2476
	xvstx	$xr2, $s5, $a2
	xvld	$xr0, $s5, 1512
	ori	$a2, $zero, 2508
	xvstx	$xr1, $s5, $a2
	xvld	$xr1, $s5, 1544
	xvld	$xr2, $s5, 1576
	ori	$a2, $zero, 2540
	xvstx	$xr0, $s5, $a2
	xvld	$xr0, $s5, 1608
	ori	$a2, $zero, 2572
	xvstx	$xr1, $s5, $a2
	ori	$a2, $zero, 2604
	xvstx	$xr2, $s5, $a2
	xvld	$xr1, $s5, 1640
	ori	$a2, $zero, 2636
	xvstx	$xr0, $s5, $a2
	xvld	$xr0, $s5, 1672
	xvld	$xr2, $s5, 1704
	ori	$a2, $zero, 2668
	xvstx	$xr1, $s5, $a2
	xvld	$xr1, $s5, 1736
	ori	$a2, $zero, 2700
	xvstx	$xr0, $s5, $a2
	ori	$a2, $zero, 2732
	xvstx	$xr2, $s5, $a2
	xvld	$xr0, $s5, 1768
	ori	$a2, $zero, 2764
	xvstx	$xr1, $s5, $a2
	xvld	$xr1, $s5, 1800
	xvld	$xr2, $s5, 1832
	ori	$a2, $zero, 2796
	xvstx	$xr0, $s5, $a2
	xvld	$xr0, $s5, 1864
	ori	$a2, $zero, 2828
	xvstx	$xr1, $s5, $a2
	ori	$a2, $zero, 2860
	xvstx	$xr2, $s5, $a2
	xvld	$xr1, $s5, 1896
	ori	$a2, $zero, 2892
	xvstx	$xr0, $s5, $a2
	xvld	$xr0, $s5, 1928
	xvld	$xr2, $s5, 1960
	ori	$a2, $zero, 2924
	xvstx	$xr1, $s5, $a2
	xvld	$xr1, $s5, 1992
	ori	$a2, $zero, 2956
	xvstx	$xr0, $s5, $a2
	ori	$a2, $zero, 2988
	xvstx	$xr2, $s5, $a2
	xvld	$xr0, $s5, 2024
	ori	$a2, $zero, 3020
	xvstx	$xr1, $s5, $a2
	ori	$a2, $zero, 2056
	xvldx	$xr1, $s5, $a2
	ori	$a2, $zero, 2088
	xvldx	$xr2, $s5, $a2
	ori	$a2, $zero, 2120
	ldx.w	$a2, $s5, $a2
	ori	$a3, $zero, 3052
	xvstx	$xr0, $s5, $a3
	ori	$a3, $zero, 3084
	xvstx	$xr1, $s5, $a3
	ori	$a3, $zero, 3116
	xvstx	$xr2, $s5, $a3
	stptr.w	$a2, $s5, 3148
	bstrpick.d	$a2, $s7, 31, 0
	b	.LBB3_364
.LBB3_362:                              #   in Loop: Header=BB3_364 Depth=2
	bstrins.d	$a6, $a7, 63, 4
.LBB3_363:                              #   in Loop: Header=BB3_364 Depth=2
	alsl.d	$a3, $a3, $t1, 2
	stx.b	$a6, $a4, $a5
	ld.w	$a4, $a3, 0
	addi.d	$a4, $a4, 1
	st.w	$a4, $a3, 0
	addi.d	$a1, $a1, 1
	addi.d	$a0, $a0, 2
	beq	$a2, $a1, .LBB3_404
.LBB3_364:                              #   Parent Loop BB3_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldptr.d	$a5, $s5, 3160
	ldx.bu	$a3, $a5, $a0
	slli.d	$a4, $a3, 2
	ldx.w	$a7, $t1, $a4
	ldptr.d	$a4, $s5, 3168
	stx.h	$a7, $a5, $a0
	bstrpick.d	$a5, $a1, 31, 1
	ldx.bu	$a6, $a4, $a5
	andi	$t0, $a1, 1
	bstrpick.d	$a7, $a7, 31, 16
	bnez	$t0, .LBB3_362
# %bb.365:                              #   in Loop: Header=BB3_364 Depth=2
	andi	$a6, $a6, 240
	or	$a6, $a6, $a7
	b	.LBB3_363
.LBB3_366:                              #   in Loop: Header=BB3_4 Depth=1
	ori	$a0, $zero, 1
	bltu	$a0, $t3, .LBB3_383
# %bb.367:                              #   in Loop: Header=BB3_4 Depth=1
	addi.d	$s0, $zero, -1
	ld.d	$a1, $sp, 696                   # 8-byte Folded Reload
	st.d	$a1, $sp, 696                   # 8-byte Folded Spill
.LBB3_368:                              #   in Loop: Header=BB3_4 Depth=1
	ld.d	$t1, $sp, 56                    # 8-byte Folded Reload
	sltui	$a1, $t3, 1
	slli.d	$a3, $a0, 1
	st.d	$a3, $sp, 648                   # 8-byte Folded Spill
	masknez	$a3, $a3, $a1
	maskeqz	$a0, $a0, $a1
	or	$a0, $a0, $a3
	add.w	$s0, $a0, $s0
	bnez	$t2, .LBB3_371
# %bb.369:                              #   in Loop: Header=BB3_4 Depth=1
	addi.w	$s2, $s2, 1
	bge	$s2, $t1, .LBB3_398
# %bb.370:                              #   in Loop: Header=BB3_4 Depth=1
	ld.d	$a0, $sp, 360                   # 8-byte Folded Reload
	ldx.bu	$s4, $a0, $s2
	slli.d	$a0, $s4, 2
	ld.d	$a1, $sp, 560                   # 8-byte Folded Reload
	ldx.w	$a0, $a1, $a0
	st.d	$a0, $sp, 672                   # 8-byte Folded Spill
	slli.d	$a0, $s4, 10
	alsl.d	$a0, $s4, $a0, 3
	ld.d	$a1, $sp, 568                   # 8-byte Folded Reload
	add.d	$a1, $a1, $a0
	st.d	$a1, $sp, 680                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 368                   # 8-byte Folded Reload
	add.d	$s6, $a1, $a0
	ld.d	$a1, $sp, 664                   # 8-byte Folded Reload
	add.d	$a0, $a1, $a0
	st.d	$a0, $sp, 696                   # 8-byte Folded Spill
	ori	$t2, $zero, 50
.LBB3_371:                              #   in Loop: Header=BB3_4 Depth=1
	addi.w	$t2, $t2, -1
	ld.d	$s3, $sp, 672                   # 8-byte Folded Reload
.LBB3_372:                              #   in Loop: Header=BB3_4 Depth=1
	ld.w	$a0, $s5, 36
	ori	$a1, $zero, 38
	st.w	$a1, $s5, 8
	bge	$a0, $s3, .LBB3_378
# %bb.373:                              # %.lr.ph1593.i
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.d	$a1, $s5, 0
	ld.w	$a3, $a1, 8
	addi.w	$a3, $a3, -1
	b	.LBB3_375
.LBB3_374:                              #   in Loop: Header=BB3_375 Depth=2
	addi.w	$a3, $a3, -1
	bge	$a0, $s3, .LBB3_379
.LBB3_375:                              #   Parent Loop BB3_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.w	$a4, $zero, -1
	beq	$a3, $a4, .LBB3_297
# %bb.376:                              #   in Loop: Header=BB3_375 Depth=2
	ld.d	$a5, $a1, 0
	ld.w	$a4, $s5, 32
	ld.bu	$a6, $a5, 0
	slli.d	$a4, $a4, 8
	or	$a4, $a4, $a6
	st.w	$a4, $s5, 32
	addi.w	$a0, $a0, 8
	st.w	$a0, $s5, 36
	ld.wu	$a6, $a1, 12
	addi.d	$a5, $a5, 1
	st.d	$a5, $a1, 0
	st.w	$a3, $a1, 8
	addi.d	$a5, $a6, 1
	and	$a6, $a5, $t4
	st.w	$a5, $a1, 12
	beqz	$a6, .LBB3_374
# %bb.377:                              #   in Loop: Header=BB3_375 Depth=2
	ld.w	$a5, $a1, 16
	addi.d	$a5, $a5, 1
	st.w	$a5, $a1, 16
	b	.LBB3_374
.LBB3_378:                              # %.._crit_edge1594_crit_edge.i
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.w	$a4, $s5, 32
.LBB3_379:                              # %._crit_edge1594.i
                                        #   in Loop: Header=BB3_4 Depth=1
	sub.w	$a1, $a0, $s3
	srl.w	$a0, $a4, $a1
	addi.d	$a3, $zero, -1
	sll.w	$a3, $a3, $s3
	andn	$a7, $a0, $a3
	st.w	$a1, $s5, 36
.LBB3_380:                              #   in Loop: Header=BB3_4 Depth=1
	ori	$a3, $zero, 20
	addi.w	$a0, $zero, -4
	blt	$a3, $s3, .LBB3_448
# %bb.381:                              #   in Loop: Header=BB3_4 Depth=1
	slli.d	$a3, $s3, 2
	ld.d	$a4, $sp, 680                   # 8-byte Folded Reload
	ldx.w	$a4, $a4, $a3
	addi.w	$a5, $a7, 0
	bge	$a4, $a5, .LBB3_395
# %bb.382:                              #   in Loop: Header=BB3_4 Depth=1
	addi.w	$s3, $s3, 1
	b	.LBB3_218
.LBB3_383:                              #   in Loop: Header=BB3_4 Depth=1
	addi.w	$a0, $zero, -4
	bge	$t7, $t5, .LBB3_400
# %bb.384:                              #   in Loop: Header=BB3_4 Depth=1
	st.d	$s6, $sp, 40                    # 8-byte Folded Spill
	move	$s6, $t0
	st.d	$s3, $sp, 232                   # 8-byte Folded Spill
	move	$s3, $a7
	ld.d	$a1, $sp, 680                   # 8-byte Folded Reload
	st.d	$a1, $sp, 680                   # 8-byte Folded Spill
	addi.w	$a3, $t3, -1
	ld.d	$t0, $sp, 72                    # 8-byte Folded Reload
	ori	$a1, $zero, 16
	bltu	$a1, $t3, .LBB3_412
# %bb.385:                              #   in Loop: Header=BB3_4 Depth=1
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	ld.w	$a4, $a1, 0
	add.d	$a1, $a4, $a3
	bstrpick.d	$a1, $a1, 31, 0
	ld.d	$a5, $sp, 264                   # 8-byte Folded Reload
	ldx.bu	$a1, $a5, $a1
	move	$a5, $t3
	ori	$a6, $zero, 4
	bltu	$a3, $a6, .LBB3_388
.LBB3_386:                              # %.lr.ph1569.i
                                        #   Parent Loop BB3_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$a3, $a4, $a5
	addi.w	$a6, $a3, -5
	ld.d	$a7, $sp, 264                   # 8-byte Folded Reload
	ldx.w	$a6, $a7, $a6
	addi.w	$a3, $a3, -4
	stx.w	$a6, $a7, $a3
	addi.w	$a3, $a5, -5
	addi.w	$a5, $a5, -4
	ori	$a6, $zero, 3
	bltu	$a6, $a3, .LBB3_386
# %bb.387:                              # %.preheader1384.i
                                        #   in Loop: Header=BB3_4 Depth=1
	addi.w	$a3, $a5, -1
	beq	$a5, $t8, .LBB3_394
.LBB3_388:                              # %iter.check
                                        #   in Loop: Header=BB3_4 Depth=1
	add.d	$a6, $a3, $a4
	ori	$a5, $zero, 15
	bgeu	$a5, $a3, .LBB3_392
# %bb.389:                              # %vector.scevcheck
                                        #   in Loop: Header=BB3_4 Depth=1
	addi.w	$a5, $a6, 0
	addi.w	$a7, $a4, 1
	bltu	$a5, $a7, .LBB3_392
# %bb.390:                              # %vector.scevcheck
                                        #   in Loop: Header=BB3_4 Depth=1
	sub.w	$a7, $zero, $a3
	bltu	$a7, $a4, .LBB3_392
# %bb.391:                              # %vector.memcheck
                                        #   in Loop: Header=BB3_4 Depth=1
	addi.d	$a7, $a6, -1
	bstrpick.d	$a7, $a7, 31, 0
	bstrpick.d	$t0, $a6, 31, 0
	sub.d	$a7, $a7, $t0
	ori	$t0, $zero, 32
	bgeu	$a7, $t0, .LBB3_476
.LBB3_392:                              # %.lr.ph1573.i.preheader
                                        #   in Loop: Header=BB3_4 Depth=1
	addi.w	$a5, $a6, 0
.LBB3_393:                              # %.lr.ph1573.i
                                        #   Parent Loop BB3_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.w	$a6, $a5, -1
	bstrpick.d	$a7, $a6, 31, 0
	ld.d	$t0, $sp, 264                   # 8-byte Folded Reload
	ldx.b	$a7, $t0, $a7
	bstrpick.d	$a5, $a5, 31, 0
	addi.w	$a3, $a3, -1
	stx.b	$a7, $t0, $a5
	move	$a5, $a6
	bnez	$a3, .LBB3_393
.LBB3_394:                              # %._crit_edge1574.i
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.d	$a3, $sp, 264                   # 8-byte Folded Reload
	stx.b	$a1, $a3, $a4
	b	.LBB3_422
.LBB3_395:                              #   in Loop: Header=BB3_4 Depth=1
	ld.d	$a4, $sp, 696                   # 8-byte Folded Reload
	ldx.w	$a1, $a4, $a3
	sub.w	$a1, $a7, $a1
	ori	$a3, $zero, 257
	bltu	$a3, $a1, .LBB3_448
# %bb.396:                              #   in Loop: Header=BB3_4 Depth=1
	st.d	$t1, $sp, 56                    # 8-byte Folded Spill
	st.d	$a4, $sp, 696                   # 8-byte Folded Spill
	slli.d	$a1, $a1, 2
	ldx.w	$t3, $s6, $a1
	ld.d	$t1, $sp, 176                   # 8-byte Folded Reload
	ori	$a1, $zero, 2
	bgeu	$t3, $a1, .LBB3_424
# %bb.397:                              #   in Loop: Header=BB3_4 Depth=1
	ld.d	$a0, $sp, 648                   # 8-byte Folded Reload
	b	.LBB3_368
.LBB3_398:                              #   in Loop: Header=BB3_4 Depth=1
	move	$t2, $zero
	b	.LBB3_328
.LBB3_399:                              #   in Loop: Header=BB3_4 Depth=1
	move	$a3, $zero
	st.d	$t3, $sp, 656                   # 8-byte Folded Spill
	ld.d	$t1, $sp, 56                    # 8-byte Folded Reload
	b	.LBB3_449
.LBB3_400:                              #   in Loop: Header=BB3_4 Depth=1
	move	$a3, $zero
	b	.LBB3_403
.LBB3_401:                              #   in Loop: Header=BB3_4 Depth=1
	st.d	$t3, $sp, 656                   # 8-byte Folded Spill
	b	.LBB3_449
.LBB3_402:                              #   in Loop: Header=BB3_4 Depth=1
	st.d	$t3, $sp, 656                   # 8-byte Folded Spill
.LBB3_403:                              # %BZ2_decompress.exit
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.d	$a1, $sp, 696                   # 8-byte Folded Reload
	st.d	$a1, $sp, 696                   # 8-byte Folded Spill
	ld.d	$t1, $sp, 56                    # 8-byte Folded Reload
	b	.LBB3_449
.LBB3_404:                              # %._crit_edge1621.loopexit.i
                                        #   in Loop: Header=BB3_4 Depth=1
	st.d	$t2, $sp, 592                   # 8-byte Folded Spill
	ld.d	$t4, $sp, 672                   # 8-byte Folded Reload
	ld.w	$a2, $s5, 56
	ldptr.d	$a0, $s5, 3168
	ldptr.d	$a1, $s5, 3160
	slli.d	$a3, $a2, 1
	srai.d	$a4, $a2, 1
	ldx.bu	$a0, $a0, $a4
	ldx.hu	$t1, $a1, $a3
	slli.d	$a1, $a2, 2
	andi	$a1, $a1, 4
	srl.w	$a0, $a0, $a1
	bstrins.d	$t1, $a0, 19, 16
	b	.LBB3_407
.LBB3_405:                              #   in Loop: Header=BB3_407 Depth=2
	bstrins.d	$a6, $a7, 63, 4
.LBB3_406:                              #   in Loop: Header=BB3_407 Depth=2
	stx.b	$a6, $a1, $a3
	ld.w	$a6, $s5, 56
	slli.d	$a1, $a2, 2
	andi	$a1, $a1, 4
	srl.w	$a5, $a5, $a1
	bstrins.d	$t1, $a5, 19, 16
	beq	$a4, $a6, .LBB3_409
.LBB3_407:                              #   Parent Loop BB3_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a7, $a2
	move	$a2, $t1
	ldptr.d	$a6, $s5, 3160
	addi.w	$a4, $t1, 0
	ldptr.d	$a1, $s5, 3168
	slli.d	$a0, $a4, 1
	ldx.hu	$t1, $a6, $a0
	bstrpick.d	$a3, $a2, 31, 1
	ldx.bu	$a5, $a1, $a3
	stx.h	$a7, $a6, $a0
	ldx.bu	$a6, $a1, $a3
	andi	$t0, $a2, 1
	bstrpick.d	$a7, $a7, 31, 16
	bnez	$t0, .LBB3_405
# %bb.408:                              #   in Loop: Header=BB3_407 Depth=2
	andi	$a6, $a6, 240
	or	$a6, $a6, $a7
	b	.LBB3_406
.LBB3_409:                              #   in Loop: Header=BB3_4 Depth=1
	st.d	$t1, $sp, 704                   # 8-byte Folded Spill
	move	$a5, $zero
	st.w	$a2, $s5, 60
	st.w	$zero, $s5, 1092
	ori	$a6, $zero, 256
	ld.d	$t2, $sp, 616                   # 8-byte Folded Reload
.LBB3_410:                              #   Parent Loop BB3_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.w	$a7, $a5, $a6
	srai.d	$a7, $a7, 1
	slli.d	$t0, $a7, 2
	ldx.w	$t0, $t2, $t0
	slt	$t0, $a4, $t0
	maskeqz	$t1, $a7, $t0
	masknez	$a6, $a6, $t0
	or	$a6, $t1, $a6
	masknez	$a7, $a7, $t0
	maskeqz	$a5, $a5, $t0
	or	$a5, $a5, $a7
	sub.w	$a7, $a6, $a5
	bne	$a7, $t8, .LBB3_410
# %bb.411:                              # %indexIntoF.exit.i44
                                        #   in Loop: Header=BB3_4 Depth=1
	ldptr.d	$a4, $s5, 3168
	ldptr.d	$a6, $s5, 3160
	st.w	$a5, $s5, 64
	ldx.bu	$a4, $a4, $a3
	ldx.hu	$a5, $a6, $a0
	move	$a3, $zero
	move	$a0, $zero
	srl.w	$a1, $a4, $a1
	bstrins.d	$a5, $a1, 19, 16
	st.w	$a5, $s5, 60
	st.w	$t8, $s5, 1092
	st.d	$t3, $sp, 656                   # 8-byte Folded Spill
	st.d	$t4, $sp, 672                   # 8-byte Folded Spill
	ld.d	$t4, $sp, 376                   # 8-byte Folded Reload
	move	$a7, $s3
	move	$s3, $s0
	move	$s0, $t5
	move	$t5, $s2
	move	$s2, $t7
	move	$t7, $s7
	ld.d	$s7, $sp, 24                    # 8-byte Folded Reload
	ld.d	$t2, $sp, 592                   # 8-byte Folded Reload
	move	$t0, $s6
	ld.d	$s6, $sp, 40                    # 8-byte Folded Reload
	ld.d	$t1, $sp, 56                    # 8-byte Folded Reload
	b	.LBB3_449
.LBB3_412:                              #   in Loop: Header=BB3_4 Depth=1
	st.d	$t3, $sp, 48                    # 8-byte Folded Spill
	move	$t3, $t2
	move	$t2, $s7
	move	$s7, $t7
	move	$t7, $s2
	move	$s2, $t5
	move	$t5, $s0
	bstrpick.d	$a5, $a3, 31, 4
	slli.d	$a1, $a5, 2
	ld.d	$a4, $sp, 80                    # 8-byte Folded Reload
	ldx.w	$a6, $a4, $a1
	andi	$a7, $a3, 15
	add.w	$a1, $a6, $a7
	ld.d	$s0, $sp, 264                   # 8-byte Folded Reload
	ldx.bu	$a1, $s0, $a1
	alsl.d	$a4, $a5, $a4, 2
	beqz	$a7, .LBB3_415
# %bb.413:                              # %.lr.ph1556.preheader.i
                                        #   in Loop: Header=BB3_4 Depth=1
	andi	$a3, $a3, 15
	add.d	$a3, $a6, $a3
	ld.d	$a6, $sp, 264                   # 8-byte Folded Reload
	add.d	$a7, $a6, $a3
.LBB3_414:                              # %.lr.ph1556.i
                                        #   Parent Loop BB3_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.b	$a6, $a7, -1
	st.b	$a6, $a7, 0
	ld.w	$a6, $a4, 0
	addi.d	$a3, $a3, -1
	addi.d	$a7, $a7, -1
	blt	$a6, $a3, .LBB3_414
.LBB3_415:                              # %.lr.ph1561.preheader.i
                                        #   in Loop: Header=BB3_4 Depth=1
	addi.d	$a3, $a6, 1
	st.w	$a3, $a4, 0
	addi.d	$a3, $a5, 1
	move	$s0, $t5
.LBB3_416:                              # %.lr.ph1561.i
                                        #   Parent Loop BB3_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a5, $a4, 0
	ld.w	$a6, $a4, -4
	addi.w	$a5, $a5, -1
	st.w	$a5, $a4, 0
	ld.d	$a7, $sp, 264                   # 8-byte Folded Reload
	add.d	$a6, $a6, $a7
	ld.b	$a6, $a6, 15
	addi.d	$a4, $a4, -4
	addi.d	$a3, $a3, -1
	stx.b	$a6, $a7, $a5
	bltu	$t8, $a3, .LBB3_416
# %bb.417:                              # %._crit_edge1562.i
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.d	$a4, $sp, 80                    # 8-byte Folded Reload
	ld.w	$a3, $a4, 0
	addi.w	$a3, $a3, -1
	st.w	$a3, $a4, 0
	ld.d	$a5, $sp, 264                   # 8-byte Folded Reload
	stx.b	$a1, $a5, $a3
	ld.w	$a3, $a4, 0
	bnez	$a3, .LBB3_421
# %bb.418:                              # %.preheader1385.i.preheader
                                        #   in Loop: Header=BB3_4 Depth=1
	move	$a3, $zero
	ori	$a4, $zero, 4080
	ld.d	$a5, $sp, 152                   # 8-byte Folded Reload
.LBB3_419:                              # %.preheader1385.i
                                        #   Parent Loop BB3_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a6, $a5, 0
	ld.d	$s0, $sp, 264                   # 8-byte Folded Reload
	add.d	$a6, $a6, $s0
	ld.b	$a6, $a6, 15
	stx.b	$a6, $t0, $a3
	ld.w	$a6, $a5, 0
	add.d	$a6, $a6, $s0
	ld.b	$a6, $a6, 14
	add.d	$a7, $t0, $a3
	st.b	$a6, $a7, -1
	ld.w	$a6, $a5, 0
	add.d	$a6, $a6, $s0
	ld.b	$a6, $a6, 13
	st.b	$a6, $a7, -2
	ld.w	$a6, $a5, 0
	add.d	$a6, $a6, $s0
	ld.b	$a6, $a6, 12
	st.b	$a6, $a7, -3
	ld.w	$a6, $a5, 0
	add.d	$a6, $a6, $s0
	ld.b	$a6, $a6, 11
	st.b	$a6, $a7, -4
	ld.w	$a6, $a5, 0
	add.d	$a6, $a6, $s0
	ld.b	$a6, $a6, 10
	st.b	$a6, $a7, -5
	ld.w	$a6, $a5, 0
	add.d	$a6, $a6, $s0
	ld.b	$a6, $a6, 9
	st.b	$a6, $a7, -6
	ld.w	$a6, $a5, 0
	add.d	$a6, $a6, $s0
	ld.b	$a6, $a6, 8
	st.b	$a6, $a7, -7
	ld.w	$a6, $a5, 0
	add.d	$a6, $a6, $s0
	ld.b	$a6, $a6, 7
	st.b	$a6, $a7, -8
	ld.w	$a6, $a5, 0
	add.d	$a6, $a6, $s0
	ld.b	$a6, $a6, 6
	st.b	$a6, $a7, -9
	ld.w	$a6, $a5, 0
	add.d	$a6, $a6, $s0
	ld.b	$a6, $a6, 5
	st.b	$a6, $a7, -10
	ld.w	$a6, $a5, 0
	add.d	$a6, $a6, $s0
	ld.b	$a6, $a6, 4
	st.b	$a6, $a7, -11
	ld.w	$a6, $a5, 0
	add.d	$a6, $a6, $s0
	ld.b	$a6, $a6, 3
	st.b	$a6, $a7, -12
	ld.w	$a6, $a5, 0
	add.d	$a6, $a6, $s0
	ld.b	$a6, $a6, 2
	st.b	$a6, $a7, -13
	ld.w	$a6, $a5, 0
	add.d	$a6, $a6, $s0
	ld.b	$a6, $a6, 1
	st.b	$a6, $a7, -14
	ld.w	$a6, $a5, 0
	ldx.b	$a6, $s0, $a6
	st.b	$a6, $a7, -15
	st.w	$a4, $a5, 0
	addi.d	$a3, $a3, -16
	addi.d	$a5, $a5, -4
	addi.w	$a6, $zero, -256
	addi.d	$a4, $a4, -16
	bne	$a3, $a6, .LBB3_419
# %bb.420:                              #   in Loop: Header=BB3_4 Depth=1
	move	$s0, $t5
.LBB3_421:                              # %.loopexit1387.i
                                        #   in Loop: Header=BB3_4 Depth=1
	move	$t5, $s2
	move	$s2, $t7
	move	$t7, $s7
	move	$s7, $t2
	move	$t2, $t3
	ld.d	$t3, $sp, 48                    # 8-byte Folded Reload
.LBB3_422:                              # %.loopexit1387.i
                                        #   in Loop: Header=BB3_4 Depth=1
	ldx.bu	$a1, $t1, $a1
	slli.d	$a3, $a1, 2
	ld.d	$a6, $sp, 168                   # 8-byte Folded Reload
	ldx.w	$a4, $a6, $a3
	ld.bu	$a5, $s5, 44
	addi.d	$a4, $a4, 1
	stx.w	$a4, $a6, $a3
	move	$t0, $s6
	beqz	$a5, .LBB3_434
# %bb.423:                              #   in Loop: Header=BB3_4 Depth=1
	ldptr.d	$a3, $s5, 3160
	slli.d	$a4, $t7, 1
	stx.h	$a1, $a3, $a4
	b	.LBB3_435
.LBB3_424:                              #   in Loop: Header=BB3_4 Depth=1
	st.d	$t0, $sp, 592                   # 8-byte Folded Spill
	move	$t0, $t3
	move	$t3, $t2
	move	$t2, $s7
	move	$s7, $s2
	move	$s2, $t5
	move	$t5, $s0
	move	$s0, $s3
	move	$s3, $a7
	ldptr.w	$a1, $s5, 7820
	ld.d	$a3, $sp, 264                   # 8-byte Folded Reload
	ldx.bu	$a1, $a3, $a1
	ldx.bu	$a3, $t1, $a1
	slli.d	$a4, $a3, 2
	ld.d	$a7, $sp, 168                   # 8-byte Folded Reload
	ldx.w	$a5, $a7, $a4
	ld.bu	$a6, $s5, 44
	addi.w	$a1, $t5, 1
	add.d	$a5, $a5, $a1
	stx.w	$a5, $a7, $a4
	beqz	$a6, .LBB3_457
# %bb.425:                              # %.preheader1378.i
                                        #   in Loop: Header=BB3_4 Depth=1
	bltz	$t5, .LBB3_460
# %bb.426:                              # %.lr.ph1600.i
                                        #   in Loop: Header=BB3_4 Depth=1
	slt	$a4, $s2, $t7
	masknez	$a5, $s2, $a4
	maskeqz	$a4, $t7, $a4
	or	$a4, $a4, $a5
	slti	$a5, $a1, 1
	masknez	$a6, $t8, $a5
	maskeqz	$a5, $a1, $a5
	or	$a5, $a5, $a6
	sub.d	$a5, $t5, $a5
	addi.d	$a5, $a5, 1
	bstrpick.d	$a5, $a5, 31, 0
	sub.d	$a6, $a4, $t7
	sltu	$a7, $a5, $a6
	masknez	$a6, $a6, $a7
	maskeqz	$a5, $a5, $a7
	or	$a5, $a5, $a6
	bgeu	$t8, $a5, .LBB3_430
# %bb.427:                              # %vector.ph495
                                        #   in Loop: Header=BB3_4 Depth=1
	bstrpick.d	$a5, $a5, 31, 1
	ldptr.d	$a7, $s5, 3160
	slli.d	$a6, $a5, 1
	alsl.d	$a5, $a5, $t7, 1
	sub.w	$a1, $a1, $a6
	alsl.d	$a7, $t7, $a7, 1
	addi.d	$a7, $a7, 2
.LBB3_428:                              # %vector.body499
                                        #   Parent Loop BB3_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.h	$a3, $a7, -2
	st.h	$a3, $a7, 0
	addi.d	$a6, $a6, -2
	addi.d	$a7, $a7, 4
	bnez	$a6, .LBB3_428
# %bb.429:                              #   in Loop: Header=BB3_4 Depth=1
	move	$t7, $a5
.LBB3_430:                              #   in Loop: Header=BB3_4 Depth=1
	move	$t5, $s2
	slli.d	$a5, $t7, 1
	sub.d	$a6, $a4, $t7
	move	$a7, $s3
	move	$s3, $s0
	move	$s2, $s7
	move	$s7, $t2
	move	$t2, $t3
	move	$t3, $t0
	ld.d	$t0, $sp, 592                   # 8-byte Folded Reload
.LBB3_431:                              # %scalar.ph493
                                        #   Parent Loop BB3_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$s0, $a1
	beqz	$a6, .LBB3_462
# %bb.432:                              #   in Loop: Header=BB3_431 Depth=2
	ldptr.d	$a1, $s5, 3160
	stx.h	$a3, $a1, $a5
	addi.w	$a1, $s0, -1
	addi.w	$t7, $t7, 1
	addi.d	$a5, $a5, 2
	addi.d	$a6, $a6, -1
	blt	$t8, $s0, .LBB3_431
# %bb.433:                              #   in Loop: Header=BB3_4 Depth=1
	move	$s0, $a1
	b	.LBB3_351
.LBB3_434:                              #   in Loop: Header=BB3_4 Depth=1
	ldptr.d	$a3, $s5, 3152
	slli.d	$a4, $t7, 2
	stx.w	$a1, $a3, $a4
.LBB3_435:                              #   in Loop: Header=BB3_4 Depth=1
	ld.d	$a1, $sp, 696                   # 8-byte Folded Reload
	st.d	$a1, $sp, 696                   # 8-byte Folded Spill
	move	$a7, $s3
	ld.d	$s6, $sp, 40                    # 8-byte Folded Reload
	ld.d	$t1, $sp, 56                    # 8-byte Folded Reload
	addi.w	$t7, $t7, 1
	ld.d	$s3, $sp, 232                   # 8-byte Folded Reload
	bnez	$t2, .LBB3_438
# %bb.436:                              #   in Loop: Header=BB3_4 Depth=1
	addi.w	$s2, $s2, 1
	bge	$s2, $t1, .LBB3_461
# %bb.437:                              #   in Loop: Header=BB3_4 Depth=1
	ld.d	$a0, $sp, 360                   # 8-byte Folded Reload
	ldx.bu	$s4, $a0, $s2
	slli.d	$a0, $s4, 2
	ld.d	$a1, $sp, 560                   # 8-byte Folded Reload
	ldx.w	$a0, $a1, $a0
	st.d	$a0, $sp, 672                   # 8-byte Folded Spill
	slli.d	$a0, $s4, 10
	alsl.d	$a0, $s4, $a0, 3
	ld.d	$a1, $sp, 568                   # 8-byte Folded Reload
	add.d	$a1, $a1, $a0
	st.d	$a1, $sp, 680                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 368                   # 8-byte Folded Reload
	add.d	$s6, $a1, $a0
	ld.d	$a1, $sp, 664                   # 8-byte Folded Reload
	add.d	$a0, $a1, $a0
	st.d	$a0, $sp, 696                   # 8-byte Folded Spill
	ori	$t2, $zero, 50
.LBB3_438:                              #   in Loop: Header=BB3_4 Depth=1
	addi.w	$t2, $t2, -1
	ld.d	$s3, $sp, 672                   # 8-byte Folded Reload
.LBB3_439:                              #   in Loop: Header=BB3_4 Depth=1
	ld.w	$a0, $s5, 36
	ori	$a1, $zero, 40
	st.w	$a1, $s5, 8
	bge	$a0, $s3, .LBB3_445
# %bb.440:                              # %.lr.ph1578.i
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.d	$a1, $s5, 0
	ld.w	$a3, $a1, 8
	addi.w	$a3, $a3, -1
	b	.LBB3_442
.LBB3_441:                              #   in Loop: Header=BB3_442 Depth=2
	addi.w	$a3, $a3, -1
	bge	$a0, $s3, .LBB3_446
.LBB3_442:                              #   Parent Loop BB3_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.w	$a4, $zero, -1
	beq	$a3, $a4, .LBB3_297
# %bb.443:                              #   in Loop: Header=BB3_442 Depth=2
	ld.d	$a5, $a1, 0
	ld.w	$a4, $s5, 32
	ld.bu	$a6, $a5, 0
	slli.d	$a4, $a4, 8
	or	$a4, $a4, $a6
	st.w	$a4, $s5, 32
	addi.w	$a0, $a0, 8
	st.w	$a0, $s5, 36
	ld.wu	$a6, $a1, 12
	addi.d	$a5, $a5, 1
	st.d	$a5, $a1, 0
	st.w	$a3, $a1, 8
	addi.d	$a5, $a6, 1
	and	$a6, $a5, $t4
	st.w	$a5, $a1, 12
	beqz	$a6, .LBB3_441
# %bb.444:                              #   in Loop: Header=BB3_442 Depth=2
	ld.w	$a5, $a1, 16
	addi.d	$a5, $a5, 1
	st.w	$a5, $a1, 16
	b	.LBB3_441
.LBB3_445:                              # %.._crit_edge1579_crit_edge.i
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.w	$a4, $s5, 32
.LBB3_446:                              # %._crit_edge1579.i
                                        #   in Loop: Header=BB3_4 Depth=1
	sub.w	$a1, $a0, $s3
	srl.w	$a0, $a4, $a1
	addi.d	$a3, $zero, -1
	sll.w	$a3, $a3, $s3
	andn	$a7, $a0, $a3
	st.w	$a1, $s5, 36
.LBB3_447:                              #   in Loop: Header=BB3_4 Depth=1
	ori	$a3, $zero, 20
	addi.w	$a0, $zero, -4
	bge	$a3, $s3, .LBB3_451
.LBB3_448:                              #   in Loop: Header=BB3_4 Depth=1
	move	$a3, $zero
.LBB3_449:                              # %BZ2_decompress.exit
                                        #   in Loop: Header=BB3_4 Depth=1
	st.w	$a2, $s1, 0
	ld.d	$a1, $sp, 704                   # 8-byte Folded Reload
	st.w	$a1, $s1, 4
	st.w	$t0, $s1, 8
	st.w	$t6, $s1, 12
	st.w	$fp, $s1, 16
	st.w	$t1, $s1, 20
	ld.d	$a1, $sp, 656                   # 8-byte Folded Reload
	st.w	$a1, $s1, 24
	st.w	$s2, $s1, 28
	st.w	$t2, $s1, 32
	st.w	$t3, $s1, 36
	st.w	$t5, $s1, 40
	st.w	$t7, $s1, 44
	st.w	$s0, $s1, 48
	ld.d	$a1, $sp, 648                   # 8-byte Folded Reload
	st.w	$a1, $s1, 52
	ld.d	$a1, $sp, 712                   # 8-byte Folded Reload
	st.w	$a1, $s1, 56
	st.w	$s7, $s1, 60
	st.w	$s3, $s1, 64
	st.w	$a7, $s1, 68
	ld.d	$a1, $sp, 688                   # 8-byte Folded Reload
	st.w	$a1, $s1, 72
	st.w	$s4, $s1, 76
	ld.d	$a1, $sp, 672                   # 8-byte Folded Reload
	st.w	$a1, $s1, 80
	ld.d	$a1, $sp, 680                   # 8-byte Folded Reload
	st.d	$a1, $s1, 84
	ld.d	$a1, $sp, 696                   # 8-byte Folded Reload
	st.d	$a1, $s1, 92
	st.d	$s6, $s1, 100
	bnez	$a3, .LBB3_474
.LBB3_450:                              # %BZ2_decompress.exit.thread
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.w	$a2, $s5, 8
	ori	$a1, $zero, 2
	ld.d	$t7, $sp, 616                   # 8-byte Folded Reload
	ori	$s4, $zero, 2
	beq	$a2, $a1, .LBB3_4
	b	.LBB3_472
.LBB3_451:                              #   in Loop: Header=BB3_4 Depth=1
	slli.d	$a3, $s3, 2
	ld.d	$a4, $sp, 680                   # 8-byte Folded Reload
	ldx.w	$a4, $a4, $a3
	addi.w	$a5, $a7, 0
	bge	$a4, $a5, .LBB3_349
# %bb.452:                              #   in Loop: Header=BB3_4 Depth=1
	addi.w	$s3, $s3, 1
	b	.LBB3_210
.LBB3_453:                              # %.preheader.i45
                                        #   in Loop: Header=BB3_4 Depth=1
	ldptr.d	$a1, $s5, 3152
	move	$a0, $zero
	move	$a2, $a1
	move	$a3, $s7
	ld.d	$a7, $sp, 616                   # 8-byte Folded Reload
.LBB3_454:                              #   Parent Loop BB3_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$a4, $a2, 0
	slli.d	$a4, $a4, 2
	ldx.w	$a5, $a7, $a4
	slli.d	$a5, $a5, 2
	ldx.w	$a6, $a1, $a5
	or	$a6, $a6, $a0
	stx.w	$a6, $a1, $a5
	ldx.w	$a5, $a7, $a4
	addi.d	$a5, $a5, 1
	stx.w	$a5, $a7, $a4
	addi.d	$a3, $a3, -1
	addi.d	$a0, $a0, 256
	addi.d	$a2, $a2, 4
	bnez	$a3, .LBB3_454
# %bb.455:                              # %._crit_edge1624.loopexit.i
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.w	$a0, $s5, 56
	slli.d	$a0, $a0, 2
	ldx.wu	$a0, $a1, $a0
	ld.w	$a3, $s5, 40
	srli.d	$a2, $a0, 8
	st.w	$a2, $s5, 60
	st.w	$zero, $s5, 1092
	ld.d	$a0, $sp, 608                   # 8-byte Folded Reload
	mul.w	$a3, $a3, $a0
	ori	$a0, $zero, 1
	ld.d	$t1, $sp, 56                    # 8-byte Folded Reload
	bgeu	$a2, $a3, .LBB3_450
# %bb.456:                              #   in Loop: Header=BB3_4 Depth=1
	slli.d	$a0, $a2, 2
	ldx.wu	$a1, $a1, $a0
	move	$a3, $zero
	move	$a0, $zero
	andi	$a2, $a1, 255
	st.w	$a2, $s5, 64
	srli.d	$a1, $a1, 8
	st.w	$a1, $s5, 60
	st.w	$t8, $s5, 1092
	st.d	$t3, $sp, 656                   # 8-byte Folded Spill
	move	$a2, $s7
	move	$a7, $s3
	move	$s3, $s0
	move	$s0, $t5
	move	$t5, $s2
	move	$s2, $t7
	move	$t7, $s7
	ld.d	$s7, $sp, 24                    # 8-byte Folded Reload
	b	.LBB3_449
.LBB3_457:                              # %.preheader1375.i
                                        #   in Loop: Header=BB3_4 Depth=1
	bltz	$t5, .LBB3_460
# %bb.458:                              # %.lr.ph1605.i
                                        #   in Loop: Header=BB3_4 Depth=1
	st.d	$s6, $sp, 40                    # 8-byte Folded Spill
	ld.d	$a4, $sp, 680                   # 8-byte Folded Reload
	st.d	$a4, $sp, 680                   # 8-byte Folded Spill
	ld.d	$a4, $sp, 672                   # 8-byte Folded Reload
	st.d	$a4, $sp, 672                   # 8-byte Folded Spill
	ld.d	$a4, $sp, 712                   # 8-byte Folded Reload
	st.d	$a4, $sp, 712                   # 8-byte Folded Spill
	slt	$a4, $s2, $t7
	masknez	$a5, $s2, $a4
	maskeqz	$a4, $t7, $a4
	or	$t4, $a4, $a5
	slti	$a5, $a1, 1
	masknez	$a6, $t8, $a5
	maskeqz	$a5, $a1, $a5
	or	$a5, $a5, $a6
	sub.d	$a5, $t5, $a5
	addi.d	$a5, $a5, 1
	bstrpick.d	$a5, $a5, 31, 0
	sub.d	$a6, $t4, $t7
	sltu	$a7, $a5, $a6
	masknez	$a6, $a6, $a7
	maskeqz	$a5, $a5, $a7
	or	$a5, $a5, $a6
	st.d	$fp, $sp, 552                   # 8-byte Folded Spill
	st.d	$t0, $sp, 48                    # 8-byte Folded Spill
	bltu	$t8, $a5, .LBB3_463
# %bb.459:                              #   in Loop: Header=BB3_4 Depth=1
	ld.d	$a4, $sp, 688                   # 8-byte Folded Reload
	st.d	$a4, $sp, 688                   # 8-byte Folded Spill
	move	$t5, $t2
	b	.LBB3_466
.LBB3_460:                              #   in Loop: Header=BB3_4 Depth=1
	move	$a7, $s3
	move	$s3, $s0
	move	$s0, $a1
	move	$t5, $s2
	move	$s2, $s7
	move	$s7, $t2
	move	$t2, $t3
	move	$t3, $t0
	ld.d	$t0, $sp, 592                   # 8-byte Folded Reload
	b	.LBB3_351
.LBB3_461:                              #   in Loop: Header=BB3_4 Depth=1
	move	$t2, $zero
	b	.LBB3_448
.LBB3_462:                              #   in Loop: Header=BB3_4 Depth=1
	move	$a3, $zero
	move	$t7, $a4
	ld.d	$t1, $sp, 56                    # 8-byte Folded Reload
	b	.LBB3_449
.LBB3_463:                              # %vector.ph483
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.d	$a4, $sp, 688                   # 8-byte Folded Reload
	st.d	$a4, $sp, 688                   # 8-byte Folded Spill
	move	$t5, $t2
	bstrpick.d	$a5, $a5, 31, 1
	ldptr.d	$a7, $s5, 3152
	slli.d	$a6, $a5, 1
	alsl.d	$a5, $a5, $t7, 1
	sub.w	$a1, $a1, $a6
	alsl.d	$a7, $t7, $a7, 2
	addi.d	$a7, $a7, 4
.LBB3_464:                              # %vector.body484
                                        #   Parent Loop BB3_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.w	$a3, $a7, -4
	st.w	$a3, $a7, 0
	addi.d	$a6, $a6, -2
	addi.d	$a7, $a7, 8
	bnez	$a6, .LBB3_464
# %bb.465:                              #   in Loop: Header=BB3_4 Depth=1
	move	$t7, $a5
.LBB3_466:                              # %scalar.ph482.preheader
                                        #   in Loop: Header=BB3_4 Depth=1
	slli.d	$a5, $t7, 2
	sub.d	$a6, $t4, $t7
.LBB3_467:                              # %scalar.ph482
                                        #   Parent Loop BB3_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a4, $a1
	beqz	$a6, .LBB3_470
# %bb.468:                              #   in Loop: Header=BB3_467 Depth=2
	ldptr.d	$a1, $s5, 3152
	stx.w	$a3, $a1, $a5
	addi.w	$a1, $a4, -1
	addi.w	$t7, $t7, 1
	addi.d	$a5, $a5, 4
	addi.d	$a6, $a6, -1
	blt	$t8, $a4, .LBB3_467
# %bb.469:                              #   in Loop: Header=BB3_4 Depth=1
	ld.d	$ra, $sp, 344                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 176                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 376                   # 8-byte Folded Reload
	xvld	$xr3, $sp, 304                  # 32-byte Folded Reload
	xvld	$xr4, $sp, 272                  # 32-byte Folded Reload
	vld	$vr6, $sp, 624                  # 16-byte Folded Reload
	move	$a3, $t5
	ld.d	$fp, $sp, 552                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 688                   # 8-byte Folded Reload
	st.d	$a4, $sp, 688                   # 8-byte Folded Spill
	ld.d	$s6, $sp, 40                    # 8-byte Folded Reload
	move	$a7, $s3
	move	$s3, $s0
	move	$s0, $a1
	move	$t5, $s2
	move	$s2, $s7
	move	$s7, $a3
	move	$t2, $t3
	ld.d	$t3, $sp, 48                    # 8-byte Folded Reload
	ld.d	$t0, $sp, 592                   # 8-byte Folded Reload
	b	.LBB3_351
.LBB3_470:                              #   in Loop: Header=BB3_4 Depth=1
	move	$a3, $zero
	move	$t7, $t4
	ld.d	$ra, $sp, 344                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 376                   # 8-byte Folded Reload
	xvld	$xr3, $sp, 304                  # 32-byte Folded Reload
	xvld	$xr4, $sp, 272                  # 32-byte Folded Reload
	vld	$vr6, $sp, 624                  # 16-byte Folded Reload
	move	$a6, $t5
	ld.d	$fp, $sp, 552                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 688                   # 8-byte Folded Reload
	st.d	$a5, $sp, 688                   # 8-byte Folded Spill
	ld.d	$t1, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 40                    # 8-byte Folded Reload
	move	$a7, $s3
	move	$s3, $s0
	move	$s0, $a4
	move	$t5, $s2
	move	$s2, $s7
	move	$s7, $a6
	move	$t2, $t3
	ld.d	$t3, $sp, 48                    # 8-byte Folded Reload
	ld.d	$t0, $sp, 592                   # 8-byte Folded Reload
	b	.LBB3_449
.LBB3_471:                              # %unRLE_obuf_to_output_SMALL.exit.thread.loopexit907
	addi.w	$a0, $zero, -1
.LBB3_472:                              # %unRLE_obuf_to_output_SMALL.exit.thread
	ld.d	$s8, $sp, 744                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 752                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 760                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 768                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 776                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 784                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 792                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 800                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 808                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 816                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 824                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 832
	ret
.LBB3_473:
	addi.w	$a0, $zero, -4
	b	.LBB3_472
.LBB3_474:
	ori	$a0, $zero, 4
	b	.LBB3_472
.LBB3_475:
	move	$a0, $zero
	b	.LBB3_472
.LBB3_476:                              # %vector.main.loop.iter.check
	ld.d	$s0, $sp, 264                   # 8-byte Folded Reload
	ori	$a0, $zero, 32
	bgeu	$a3, $a0, .LBB3_479
# %bb.477:                              # %vec.epilog.vector.body.preheader
	addi.d	$a0, $s0, -15
	addi.w	$a1, $a6, 0
.LBB3_478:                              # %vec.epilog.vector.body
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$a2, $a1, -1
	bstrpick.d	$a2, $a2, 31, 0
	vldx	$vr0, $a0, $a2
	bstrpick.d	$a2, $a1, 31, 0
	vstx	$vr0, $a0, $a2
	addi.w	$a1, $a1, -16
	b	.LBB3_478
.LBB3_479:                              # %vector.body516.preheader
	addi.d	$a0, $s0, -31
.LBB3_480:                              # %vector.body516
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$a1, $a5, -1
	bstrpick.d	$a1, $a1, 31, 0
	xvldx	$xr0, $a0, $a1
	bstrpick.d	$a1, $a5, 31, 0
	xvstx	$xr0, $a0, $a1
	addi.w	$a5, $a5, -32
	b	.LBB3_480
.Lfunc_end3:
	.size	nsis_BZ2_bzDecompress, .Lfunc_end3-nsis_BZ2_bzDecompress
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI3_0:
	.word	.LBB3_85-.LJTI3_0
	.word	.LBB3_449-.LJTI3_0
	.word	.LBB3_449-.LJTI3_0
	.word	.LBB3_449-.LJTI3_0
	.word	.LBB3_449-.LJTI3_0
	.word	.LBB3_449-.LJTI3_0
	.word	.LBB3_449-.LJTI3_0
	.word	.LBB3_449-.LJTI3_0
	.word	.LBB3_449-.LJTI3_0
	.word	.LBB3_449-.LJTI3_0
	.word	.LBB3_449-.LJTI3_0
	.word	.LBB3_82-.LJTI3_0
	.word	.LBB3_125-.LJTI3_0
	.word	.LBB3_124-.LJTI3_0
	.word	.LBB3_288-.LJTI3_0
	.word	.LBB3_318-.LJTI3_0
	.word	.LBB3_308-.LJTI3_0
	.word	.LBB3_108-.LJTI3_0
	.word	.LBB3_114-.LJTI3_0
	.word	.LBB3_227-.LJTI3_0
	.word	.LBB3_332-.LJTI3_0
	.word	.LBB3_145-.LJTI3_0
	.word	.LBB3_273-.LJTI3_0
	.word	.LBB3_146-.LJTI3_0
	.word	.LBB3_372-.LJTI3_0
	.word	.LBB3_148-.LJTI3_0
	.word	.LBB3_439-.LJTI3_0
	.word	.LBB3_147-.LJTI3_0
                                        # -- End function
	.text
	.globl	nsis_BZ2_bzDecompressEnd        # -- Begin function nsis_BZ2_bzDecompressEnd
	.p2align	5
	.type	nsis_BZ2_bzDecompressEnd,@function
nsis_BZ2_bzDecompressEnd:               # @nsis_BZ2_bzDecompressEnd
# %bb.0:
	addi.w	$a1, $zero, -2
	beqz	$a0, .LBB4_11
# %bb.1:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	ld.d	$s0, $a0, 48
	beqz	$s0, .LBB4_10
# %bb.2:
	ld.d	$a2, $s0, 0
	bne	$a2, $a0, .LBB4_10
# %bb.3:
	ldptr.d	$a1, $s0, 3152
	move	$fp, $a0
	beqz	$a1, .LBB4_5
# %bb.4:
	ld.d	$a2, $a0, 64
	ld.d	$a0, $a0, 72
	jirl	$ra, $a2, 0
	move	$a0, $fp
.LBB4_5:
	ldptr.d	$a1, $s0, 3160
	beqz	$a1, .LBB4_7
# %bb.6:
	ld.d	$a2, $a0, 64
	ld.d	$a0, $a0, 72
	jirl	$ra, $a2, 0
	move	$a0, $fp
.LBB4_7:
	ldptr.d	$a1, $s0, 3168
	beqz	$a1, .LBB4_9
# %bb.8:
	ld.d	$a2, $a0, 64
	ld.d	$a0, $a0, 72
	jirl	$ra, $a2, 0
	move	$a0, $fp
.LBB4_9:
	ld.d	$a3, $a0, 64
	ld.d	$a2, $a0, 72
	ld.d	$a1, $a0, 48
	move	$fp, $a0
	move	$a0, $a2
	jirl	$ra, $a3, 0
	move	$a1, $zero
	st.d	$zero, $fp, 48
.LBB4_10:
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
.LBB4_11:
	move	$a0, $a1
	ret
.Lfunc_end4:
	.size	nsis_BZ2_bzDecompressEnd, .Lfunc_end4-nsis_BZ2_bzDecompressEnd
                                        # -- End function
	.type	BZ2_rNums,@object               # @BZ2_rNums
	.section	.rodata,"a",@progbits
	.globl	BZ2_rNums
	.p2align	2, 0x0
BZ2_rNums:
	.word	619                             # 0x26b
	.word	720                             # 0x2d0
	.word	127                             # 0x7f
	.word	481                             # 0x1e1
	.word	931                             # 0x3a3
	.word	816                             # 0x330
	.word	813                             # 0x32d
	.word	233                             # 0xe9
	.word	566                             # 0x236
	.word	247                             # 0xf7
	.word	985                             # 0x3d9
	.word	724                             # 0x2d4
	.word	205                             # 0xcd
	.word	454                             # 0x1c6
	.word	863                             # 0x35f
	.word	491                             # 0x1eb
	.word	741                             # 0x2e5
	.word	242                             # 0xf2
	.word	949                             # 0x3b5
	.word	214                             # 0xd6
	.word	733                             # 0x2dd
	.word	859                             # 0x35b
	.word	335                             # 0x14f
	.word	708                             # 0x2c4
	.word	621                             # 0x26d
	.word	574                             # 0x23e
	.word	73                              # 0x49
	.word	654                             # 0x28e
	.word	730                             # 0x2da
	.word	472                             # 0x1d8
	.word	419                             # 0x1a3
	.word	436                             # 0x1b4
	.word	278                             # 0x116
	.word	496                             # 0x1f0
	.word	867                             # 0x363
	.word	210                             # 0xd2
	.word	399                             # 0x18f
	.word	680                             # 0x2a8
	.word	480                             # 0x1e0
	.word	51                              # 0x33
	.word	878                             # 0x36e
	.word	465                             # 0x1d1
	.word	811                             # 0x32b
	.word	169                             # 0xa9
	.word	869                             # 0x365
	.word	675                             # 0x2a3
	.word	611                             # 0x263
	.word	697                             # 0x2b9
	.word	867                             # 0x363
	.word	561                             # 0x231
	.word	862                             # 0x35e
	.word	687                             # 0x2af
	.word	507                             # 0x1fb
	.word	283                             # 0x11b
	.word	482                             # 0x1e2
	.word	129                             # 0x81
	.word	807                             # 0x327
	.word	591                             # 0x24f
	.word	733                             # 0x2dd
	.word	623                             # 0x26f
	.word	150                             # 0x96
	.word	238                             # 0xee
	.word	59                              # 0x3b
	.word	379                             # 0x17b
	.word	684                             # 0x2ac
	.word	877                             # 0x36d
	.word	625                             # 0x271
	.word	169                             # 0xa9
	.word	643                             # 0x283
	.word	105                             # 0x69
	.word	170                             # 0xaa
	.word	607                             # 0x25f
	.word	520                             # 0x208
	.word	932                             # 0x3a4
	.word	727                             # 0x2d7
	.word	476                             # 0x1dc
	.word	693                             # 0x2b5
	.word	425                             # 0x1a9
	.word	174                             # 0xae
	.word	647                             # 0x287
	.word	73                              # 0x49
	.word	122                             # 0x7a
	.word	335                             # 0x14f
	.word	530                             # 0x212
	.word	442                             # 0x1ba
	.word	853                             # 0x355
	.word	695                             # 0x2b7
	.word	249                             # 0xf9
	.word	445                             # 0x1bd
	.word	515                             # 0x203
	.word	909                             # 0x38d
	.word	545                             # 0x221
	.word	703                             # 0x2bf
	.word	919                             # 0x397
	.word	874                             # 0x36a
	.word	474                             # 0x1da
	.word	882                             # 0x372
	.word	500                             # 0x1f4
	.word	594                             # 0x252
	.word	612                             # 0x264
	.word	641                             # 0x281
	.word	801                             # 0x321
	.word	220                             # 0xdc
	.word	162                             # 0xa2
	.word	819                             # 0x333
	.word	984                             # 0x3d8
	.word	589                             # 0x24d
	.word	513                             # 0x201
	.word	495                             # 0x1ef
	.word	799                             # 0x31f
	.word	161                             # 0xa1
	.word	604                             # 0x25c
	.word	958                             # 0x3be
	.word	533                             # 0x215
	.word	221                             # 0xdd
	.word	400                             # 0x190
	.word	386                             # 0x182
	.word	867                             # 0x363
	.word	600                             # 0x258
	.word	782                             # 0x30e
	.word	382                             # 0x17e
	.word	596                             # 0x254
	.word	414                             # 0x19e
	.word	171                             # 0xab
	.word	516                             # 0x204
	.word	375                             # 0x177
	.word	682                             # 0x2aa
	.word	485                             # 0x1e5
	.word	911                             # 0x38f
	.word	276                             # 0x114
	.word	98                              # 0x62
	.word	553                             # 0x229
	.word	163                             # 0xa3
	.word	354                             # 0x162
	.word	666                             # 0x29a
	.word	933                             # 0x3a5
	.word	424                             # 0x1a8
	.word	341                             # 0x155
	.word	533                             # 0x215
	.word	870                             # 0x366
	.word	227                             # 0xe3
	.word	730                             # 0x2da
	.word	475                             # 0x1db
	.word	186                             # 0xba
	.word	263                             # 0x107
	.word	647                             # 0x287
	.word	537                             # 0x219
	.word	686                             # 0x2ae
	.word	600                             # 0x258
	.word	224                             # 0xe0
	.word	469                             # 0x1d5
	.word	68                              # 0x44
	.word	770                             # 0x302
	.word	919                             # 0x397
	.word	190                             # 0xbe
	.word	373                             # 0x175
	.word	294                             # 0x126
	.word	822                             # 0x336
	.word	808                             # 0x328
	.word	206                             # 0xce
	.word	184                             # 0xb8
	.word	943                             # 0x3af
	.word	795                             # 0x31b
	.word	384                             # 0x180
	.word	383                             # 0x17f
	.word	461                             # 0x1cd
	.word	404                             # 0x194
	.word	758                             # 0x2f6
	.word	839                             # 0x347
	.word	887                             # 0x377
	.word	715                             # 0x2cb
	.word	67                              # 0x43
	.word	618                             # 0x26a
	.word	276                             # 0x114
	.word	204                             # 0xcc
	.word	918                             # 0x396
	.word	873                             # 0x369
	.word	777                             # 0x309
	.word	604                             # 0x25c
	.word	560                             # 0x230
	.word	951                             # 0x3b7
	.word	160                             # 0xa0
	.word	578                             # 0x242
	.word	722                             # 0x2d2
	.word	79                              # 0x4f
	.word	804                             # 0x324
	.word	96                              # 0x60
	.word	409                             # 0x199
	.word	713                             # 0x2c9
	.word	940                             # 0x3ac
	.word	652                             # 0x28c
	.word	934                             # 0x3a6
	.word	970                             # 0x3ca
	.word	447                             # 0x1bf
	.word	318                             # 0x13e
	.word	353                             # 0x161
	.word	859                             # 0x35b
	.word	672                             # 0x2a0
	.word	112                             # 0x70
	.word	785                             # 0x311
	.word	645                             # 0x285
	.word	863                             # 0x35f
	.word	803                             # 0x323
	.word	350                             # 0x15e
	.word	139                             # 0x8b
	.word	93                              # 0x5d
	.word	354                             # 0x162
	.word	99                              # 0x63
	.word	820                             # 0x334
	.word	908                             # 0x38c
	.word	609                             # 0x261
	.word	772                             # 0x304
	.word	154                             # 0x9a
	.word	274                             # 0x112
	.word	580                             # 0x244
	.word	184                             # 0xb8
	.word	79                              # 0x4f
	.word	626                             # 0x272
	.word	630                             # 0x276
	.word	742                             # 0x2e6
	.word	653                             # 0x28d
	.word	282                             # 0x11a
	.word	762                             # 0x2fa
	.word	623                             # 0x26f
	.word	680                             # 0x2a8
	.word	81                              # 0x51
	.word	927                             # 0x39f
	.word	626                             # 0x272
	.word	789                             # 0x315
	.word	125                             # 0x7d
	.word	411                             # 0x19b
	.word	521                             # 0x209
	.word	938                             # 0x3aa
	.word	300                             # 0x12c
	.word	821                             # 0x335
	.word	78                              # 0x4e
	.word	343                             # 0x157
	.word	175                             # 0xaf
	.word	128                             # 0x80
	.word	250                             # 0xfa
	.word	170                             # 0xaa
	.word	774                             # 0x306
	.word	972                             # 0x3cc
	.word	275                             # 0x113
	.word	999                             # 0x3e7
	.word	639                             # 0x27f
	.word	495                             # 0x1ef
	.word	78                              # 0x4e
	.word	352                             # 0x160
	.word	126                             # 0x7e
	.word	857                             # 0x359
	.word	956                             # 0x3bc
	.word	358                             # 0x166
	.word	619                             # 0x26b
	.word	580                             # 0x244
	.word	124                             # 0x7c
	.word	737                             # 0x2e1
	.word	594                             # 0x252
	.word	701                             # 0x2bd
	.word	612                             # 0x264
	.word	669                             # 0x29d
	.word	112                             # 0x70
	.word	134                             # 0x86
	.word	694                             # 0x2b6
	.word	363                             # 0x16b
	.word	992                             # 0x3e0
	.word	809                             # 0x329
	.word	743                             # 0x2e7
	.word	168                             # 0xa8
	.word	974                             # 0x3ce
	.word	944                             # 0x3b0
	.word	375                             # 0x177
	.word	748                             # 0x2ec
	.word	52                              # 0x34
	.word	600                             # 0x258
	.word	747                             # 0x2eb
	.word	642                             # 0x282
	.word	182                             # 0xb6
	.word	862                             # 0x35e
	.word	81                              # 0x51
	.word	344                             # 0x158
	.word	805                             # 0x325
	.word	988                             # 0x3dc
	.word	739                             # 0x2e3
	.word	511                             # 0x1ff
	.word	655                             # 0x28f
	.word	814                             # 0x32e
	.word	334                             # 0x14e
	.word	249                             # 0xf9
	.word	515                             # 0x203
	.word	897                             # 0x381
	.word	955                             # 0x3bb
	.word	664                             # 0x298
	.word	981                             # 0x3d5
	.word	649                             # 0x289
	.word	113                             # 0x71
	.word	974                             # 0x3ce
	.word	459                             # 0x1cb
	.word	893                             # 0x37d
	.word	228                             # 0xe4
	.word	433                             # 0x1b1
	.word	837                             # 0x345
	.word	553                             # 0x229
	.word	268                             # 0x10c
	.word	926                             # 0x39e
	.word	240                             # 0xf0
	.word	102                             # 0x66
	.word	654                             # 0x28e
	.word	459                             # 0x1cb
	.word	51                              # 0x33
	.word	686                             # 0x2ae
	.word	754                             # 0x2f2
	.word	806                             # 0x326
	.word	760                             # 0x2f8
	.word	493                             # 0x1ed
	.word	403                             # 0x193
	.word	415                             # 0x19f
	.word	394                             # 0x18a
	.word	687                             # 0x2af
	.word	700                             # 0x2bc
	.word	946                             # 0x3b2
	.word	670                             # 0x29e
	.word	656                             # 0x290
	.word	610                             # 0x262
	.word	738                             # 0x2e2
	.word	392                             # 0x188
	.word	760                             # 0x2f8
	.word	799                             # 0x31f
	.word	887                             # 0x377
	.word	653                             # 0x28d
	.word	978                             # 0x3d2
	.word	321                             # 0x141
	.word	576                             # 0x240
	.word	617                             # 0x269
	.word	626                             # 0x272
	.word	502                             # 0x1f6
	.word	894                             # 0x37e
	.word	679                             # 0x2a7
	.word	243                             # 0xf3
	.word	440                             # 0x1b8
	.word	680                             # 0x2a8
	.word	879                             # 0x36f
	.word	194                             # 0xc2
	.word	572                             # 0x23c
	.word	640                             # 0x280
	.word	724                             # 0x2d4
	.word	926                             # 0x39e
	.word	56                              # 0x38
	.word	204                             # 0xcc
	.word	700                             # 0x2bc
	.word	707                             # 0x2c3
	.word	151                             # 0x97
	.word	457                             # 0x1c9
	.word	449                             # 0x1c1
	.word	797                             # 0x31d
	.word	195                             # 0xc3
	.word	791                             # 0x317
	.word	558                             # 0x22e
	.word	945                             # 0x3b1
	.word	679                             # 0x2a7
	.word	297                             # 0x129
	.word	59                              # 0x3b
	.word	87                              # 0x57
	.word	824                             # 0x338
	.word	713                             # 0x2c9
	.word	663                             # 0x297
	.word	412                             # 0x19c
	.word	693                             # 0x2b5
	.word	342                             # 0x156
	.word	606                             # 0x25e
	.word	134                             # 0x86
	.word	108                             # 0x6c
	.word	571                             # 0x23b
	.word	364                             # 0x16c
	.word	631                             # 0x277
	.word	212                             # 0xd4
	.word	174                             # 0xae
	.word	643                             # 0x283
	.word	304                             # 0x130
	.word	329                             # 0x149
	.word	343                             # 0x157
	.word	97                              # 0x61
	.word	430                             # 0x1ae
	.word	751                             # 0x2ef
	.word	497                             # 0x1f1
	.word	314                             # 0x13a
	.word	983                             # 0x3d7
	.word	374                             # 0x176
	.word	822                             # 0x336
	.word	928                             # 0x3a0
	.word	140                             # 0x8c
	.word	206                             # 0xce
	.word	73                              # 0x49
	.word	263                             # 0x107
	.word	980                             # 0x3d4
	.word	736                             # 0x2e0
	.word	876                             # 0x36c
	.word	478                             # 0x1de
	.word	430                             # 0x1ae
	.word	305                             # 0x131
	.word	170                             # 0xaa
	.word	514                             # 0x202
	.word	364                             # 0x16c
	.word	692                             # 0x2b4
	.word	829                             # 0x33d
	.word	82                              # 0x52
	.word	855                             # 0x357
	.word	953                             # 0x3b9
	.word	676                             # 0x2a4
	.word	246                             # 0xf6
	.word	369                             # 0x171
	.word	970                             # 0x3ca
	.word	294                             # 0x126
	.word	750                             # 0x2ee
	.word	807                             # 0x327
	.word	827                             # 0x33b
	.word	150                             # 0x96
	.word	790                             # 0x316
	.word	288                             # 0x120
	.word	923                             # 0x39b
	.word	804                             # 0x324
	.word	378                             # 0x17a
	.word	215                             # 0xd7
	.word	828                             # 0x33c
	.word	592                             # 0x250
	.word	281                             # 0x119
	.word	565                             # 0x235
	.word	555                             # 0x22b
	.word	710                             # 0x2c6
	.word	82                              # 0x52
	.word	896                             # 0x380
	.word	831                             # 0x33f
	.word	547                             # 0x223
	.word	261                             # 0x105
	.word	524                             # 0x20c
	.word	462                             # 0x1ce
	.word	293                             # 0x125
	.word	465                             # 0x1d1
	.word	502                             # 0x1f6
	.word	56                              # 0x38
	.word	661                             # 0x295
	.word	821                             # 0x335
	.word	976                             # 0x3d0
	.word	991                             # 0x3df
	.word	658                             # 0x292
	.word	869                             # 0x365
	.word	905                             # 0x389
	.word	758                             # 0x2f6
	.word	745                             # 0x2e9
	.word	193                             # 0xc1
	.word	768                             # 0x300
	.word	550                             # 0x226
	.word	608                             # 0x260
	.word	933                             # 0x3a5
	.word	378                             # 0x17a
	.word	286                             # 0x11e
	.word	215                             # 0xd7
	.word	979                             # 0x3d3
	.word	792                             # 0x318
	.word	961                             # 0x3c1
	.word	61                              # 0x3d
	.word	688                             # 0x2b0
	.word	793                             # 0x319
	.word	644                             # 0x284
	.word	986                             # 0x3da
	.word	403                             # 0x193
	.word	106                             # 0x6a
	.word	366                             # 0x16e
	.word	905                             # 0x389
	.word	644                             # 0x284
	.word	372                             # 0x174
	.word	567                             # 0x237
	.word	466                             # 0x1d2
	.word	434                             # 0x1b2
	.word	645                             # 0x285
	.word	210                             # 0xd2
	.word	389                             # 0x185
	.word	550                             # 0x226
	.word	919                             # 0x397
	.word	135                             # 0x87
	.word	780                             # 0x30c
	.word	773                             # 0x305
	.word	635                             # 0x27b
	.word	389                             # 0x185
	.word	707                             # 0x2c3
	.word	100                             # 0x64
	.word	626                             # 0x272
	.word	958                             # 0x3be
	.word	165                             # 0xa5
	.word	504                             # 0x1f8
	.word	920                             # 0x398
	.word	176                             # 0xb0
	.word	193                             # 0xc1
	.word	713                             # 0x2c9
	.word	857                             # 0x359
	.word	265                             # 0x109
	.word	203                             # 0xcb
	.word	50                              # 0x32
	.word	668                             # 0x29c
	.word	108                             # 0x6c
	.word	645                             # 0x285
	.word	990                             # 0x3de
	.word	626                             # 0x272
	.word	197                             # 0xc5
	.word	510                             # 0x1fe
	.word	357                             # 0x165
	.word	358                             # 0x166
	.word	850                             # 0x352
	.word	858                             # 0x35a
	.word	364                             # 0x16c
	.word	936                             # 0x3a8
	.word	638                             # 0x27e
	.size	BZ2_rNums, 2048

	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym default_bzalloc
	.addrsig_sym default_bzfree
