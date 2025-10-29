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
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function nsis_BZ2_bzDecompress
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
	.text
	.globl	nsis_BZ2_bzDecompress
	.p2align	5
	.type	nsis_BZ2_bzDecompress,@function
nsis_BZ2_bzDecompress:                  # @nsis_BZ2_bzDecompress
# %bb.0:
	addi.d	$sp, $sp, -592
	st.d	$ra, $sp, 584                   # 8-byte Folded Spill
	st.d	$fp, $sp, 576                   # 8-byte Folded Spill
	st.d	$s0, $sp, 568                   # 8-byte Folded Spill
	st.d	$s1, $sp, 560                   # 8-byte Folded Spill
	st.d	$s2, $sp, 552                   # 8-byte Folded Spill
	st.d	$s3, $sp, 544                   # 8-byte Folded Spill
	st.d	$s4, $sp, 536                   # 8-byte Folded Spill
	st.d	$s5, $sp, 528                   # 8-byte Folded Spill
	st.d	$s6, $sp, 520                   # 8-byte Folded Spill
	st.d	$s7, $sp, 512                   # 8-byte Folded Spill
	st.d	$s8, $sp, 504                   # 8-byte Folded Spill
	move	$a1, $a0
	addi.w	$a0, $zero, -2
	beqz	$a1, .LBB3_474
# %bb.1:
	ld.d	$s1, $a1, 48
	beqz	$s1, .LBB3_474
# %bb.2:
	ld.d	$a2, $s1, 0
	bne	$a2, $a1, .LBB3_474
# %bb.3:                                # %.preheader
	lu12i.w	$a1, 10
	ori	$a0, $a1, 2932
	add.d	$a0, $s1, $a0
	st.d	$a0, $sp, 176                   # 8-byte Folded Spill
	lu12i.w	$a0, 1
	ori	$a2, $a0, 3723
	add.d	$a2, $s1, $a2
	st.d	$a2, $sp, 216                   # 8-byte Folded Spill
	addu16i.d	$a2, $s1, 1
	addi.d	$s5, $a2, -1500
	addi.d	$s6, $s1, 1096
	addi.d	$a3, $s1, 2047
	addi.d	$a4, $a3, 1149
	st.d	$a4, $sp, 488                   # 8-byte Folded Spill
	addi.d	$a4, $a3, 1421
	st.d	$a4, $sp, 224                   # 8-byte Folded Spill
	lu12i.w	$a4, 6
	ori	$a4, $a4, 1310
	add.d	$a4, $s1, $a4
	st.d	$a4, $sp, 320                   # 8-byte Folded Spill
	ori	$a4, $a0, 3788
	add.d	$a4, $s1, $a4
	st.d	$a4, $sp, 328                   # 8-byte Folded Spill
	ori	$a1, $a1, 2928
	add.d	$a1, $s1, $a1
	st.d	$a1, $sp, 192                   # 8-byte Folded Spill
	lu12i.w	$a1, 11
	ori	$a1, $a1, 380
	add.d	$a1, $s1, $a1
	st.d	$a1, $sp, 400                   # 8-byte Folded Spill
	lu12i.w	$a4, 12
	ori	$a1, $a4, 2476
	add.d	$ra, $s1, $a1
	lu12i.w	$a1, 14
	ori	$a1, $a1, 476
	add.d	$a1, $s1, $a1
	st.d	$a1, $sp, 336                   # 8-byte Folded Spill
	addi.d	$a1, $a2, -1524
	st.d	$a1, $sp, 392                   # 8-byte Folded Spill
	addi.d	$a1, $s1, 68
	st.d	$a1, $sp, 200                   # 8-byte Folded Spill
	addi.d	$a1, $a3, 1677
	st.d	$a1, $sp, 160                   # 8-byte Folded Spill
	ori	$a1, $a0, 3724
	add.d	$a1, $s1, $a1
	st.d	$a1, $sp, 136                   # 8-byte Folded Spill
	addi.d	$a1, $a3, 77
	st.d	$a1, $sp, 152                   # 8-byte Folded Spill
	addi.d	$a1, $a3, 1405
	st.d	$a1, $sp, 248                   # 8-byte Folded Spill
	ld.w	$a1, $s1, 8
	ori	$a2, $a4, 2480
	add.d	$a2, $s1, $a2
	st.d	$a2, $sp, 168                   # 8-byte Folded Spill
	ori	$a2, $a0, 3784
	add.d	$a2, $s1, $a2
	st.d	$a2, $sp, 184                   # 8-byte Folded Spill
	addi.d	$a2, $a3, 1676
	st.d	$a2, $sp, 128                   # 8-byte Folded Spill
	addi.d	$a2, $s1, 1100
	st.d	$a2, $sp, 144                   # 8-byte Folded Spill
	lu12i.w	$a2, 24
	ori	$a2, $a2, 1696
	st.d	$a2, $sp, 408                   # 8-byte Folded Spill
	lu12i.w	$a2, 12320
	ori	$a2, $a2, 256
	vreplgr2vr.w	$vr0, $a2
	vst	$vr0, $sp, 112                  # 16-byte Folded Spill
	vrepli.b	$vr3, 32
	ori	$a0, $a0, 2100
	st.d	$a0, $sp, 344                   # 8-byte Folded Spill
	vrepli.b	$vr6, 0
	vrepli.w	$vr0, 32
	vst	$vr0, $sp, 272                  # 16-byte Folded Spill
	lu12i.w	$a0, 878
	ori	$a0, $a0, 3712
	st.d	$a0, $sp, 232                   # 8-byte Folded Spill
	lu12i.w	$a0, 439
	ori	$a0, $a0, 1856
	st.d	$a0, $sp, 256                   # 8-byte Folded Spill
	ori	$s8, $zero, 1
	ori	$t7, $zero, 2
	ori	$a3, $zero, 10
	st.d	$ra, $sp, 480                   # 8-byte Folded Spill
	vst	$vr3, $sp, 304                  # 16-byte Folded Spill
	vst	$vr6, $sp, 416                  # 16-byte Folded Spill
	.p2align	4, , 16
.LBB3_4:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_14 Depth 2
                                        #       Child Loop BB3_17 Depth 3
                                        #         Child Loop BB3_21 Depth 4
                                        #         Child Loop BB3_25 Depth 4
                                        #         Child Loop BB3_29 Depth 4
                                        #         Child Loop BB3_33 Depth 4
                                        #         Child Loop BB3_35 Depth 4
                                        #     Child Loop BB3_44 Depth 2
                                        #       Child Loop BB3_48 Depth 3
                                        #       Child Loop BB3_50 Depth 3
                                        #     Child Loop BB3_94 Depth 2
                                        #     Child Loop BB3_101 Depth 2
                                        #     Child Loop BB3_124 Depth 2
                                        #     Child Loop BB3_119 Depth 2
                                        #     Child Loop BB3_162 Depth 2
                                        #     Child Loop BB3_186 Depth 2
                                        #     Child Loop BB3_191 Depth 2
                                        #     Child Loop BB3_175 Depth 2
                                        #       Child Loop BB3_181 Depth 3
                                        #     Child Loop BB3_220 Depth 2
                                        #     Child Loop BB3_224 Depth 2
                                        #     Child Loop BB3_204 Depth 2
                                        #     Child Loop BB3_208 Depth 2
                                        #       Child Loop BB3_210 Depth 3
                                        #     Child Loop BB3_252 Depth 2
                                        #       Child Loop BB3_257 Depth 3
                                        #       Child Loop BB3_260 Depth 3
                                        #       Child Loop BB3_263 Depth 3
                                        #         Child Loop BB3_265 Depth 4
                                        #       Child Loop BB3_268 Depth 3
                                        #       Child Loop BB3_272 Depth 3
                                        #       Child Loop BB3_277 Depth 3
                                        #       Child Loop BB3_280 Depth 3
                                        #     Child Loop BB3_284 Depth 2
                                        #     Child Loop BB3_290 Depth 2
                                        #     Child Loop BB3_393 Depth 2
                                        #     Child Loop BB3_395 Depth 2
                                        #     Child Loop BB3_403 Depth 2
                                        #     Child Loop BB3_371 Depth 2
                                        #     Child Loop BB3_374 Depth 2
                                        #     Child Loop BB3_415 Depth 2
                                        #     Child Loop BB3_140 Depth 2
                                        #     Child Loop BB3_363 Depth 2
                                        #     Child Loop BB3_456 Depth 2
                                        #     Child Loop BB3_459 Depth 2
                                        #     Child Loop BB3_464 Depth 2
                                        #     Child Loop BB3_467 Depth 2
                                        #     Child Loop BB3_440 Depth 2
                                        #     Child Loop BB3_343 Depth 2
                                        #     Child Loop BB3_345 Depth 2
                                        #     Child Loop BB3_352 Depth 2
                                        #     Child Loop BB3_386 Depth 2
                                        #     Child Loop BB3_389 Depth 2
                                        #     Child Loop BB3_399 Depth 2
                                        #     Child Loop BB3_307 Depth 2
                                        #     Child Loop BB3_246 Depth 2
                                        #     Child Loop BB3_324 Depth 2
                                        #     Child Loop BB3_329 Depth 2
                                        #     Child Loop BB3_236 Depth 2
                                        #     Child Loop BB3_154 Depth 2
	beq	$a1, $s8, .LBB3_473
# %bb.5:                                #   in Loop: Header=BB3_4 Depth=1
	beq	$a1, $t7, .LBB3_11
# %bb.6:                                #   in Loop: Header=BB3_4 Depth=1
	blt	$a1, $a3, .LBB3_4
# %bb.7:                                #   in Loop: Header=BB3_4 Depth=1
	bne	$a1, $a3, .LBB3_42
# %bb.8:                                # %.thread
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.d	$fp, $s1, 0
	ori	$a2, $zero, 108
	move	$a0, $s5
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.bu	$a1, $s1, 44
	ld.d	$a3, $fp, 56
	ld.d	$a0, $fp, 72
	ori	$a2, $zero, 9
	st.w	$a2, $s1, 40
	ori	$a2, $zero, 1
	beqz	$a1, .LBB3_82
# %bb.9:                                #   in Loop: Header=BB3_4 Depth=1
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	jirl	$ra, $a3, 0
	ld.w	$a1, $s1, 40
	ld.d	$a4, $fp, 56
	ld.d	$a3, $fp, 72
	stptr.d	$a0, $s1, 3160
	ld.d	$a0, $sp, 408                   # 8-byte Folded Reload
	mul.w	$a0, $a1, $a0
	srai.d	$a1, $a0, 1
	ori	$a2, $zero, 1
	move	$a0, $a3
	jirl	$ra, $a4, 0
	ldptr.d	$a3, $s1, 3160
	move	$a1, $a0
	move	$a2, $zero
	stptr.d	$a0, $s1, 3168
	addi.w	$a0, $zero, -3
	beqz	$a3, .LBB3_98
# %bb.10:                               #   in Loop: Header=BB3_4 Depth=1
	st.d	$a2, $sp, 472                   # 8-byte Folded Spill
	move	$t2, $a2
	move	$t4, $a2
	move	$t5, $a2
	move	$t7, $a2
	st.d	$a2, $sp, 432                   # 8-byte Folded Spill
	move	$t6, $a2
	move	$t8, $a2
	move	$t1, $a2
	move	$fp, $a2
	move	$t3, $a2
	move	$s3, $a2
	st.d	$a2, $sp, 464                   # 8-byte Folded Spill
	move	$s0, $a2
	move	$t0, $a2
	move	$s2, $a2
	move	$a5, $a2
	move	$a7, $a2
	move	$s4, $a2
	move	$s7, $a2
	st.d	$a2, $sp, 440                   # 8-byte Folded Spill
	st.d	$a2, $sp, 456                   # 8-byte Folded Spill
	st.d	$a2, $sp, 448                   # 8-byte Folded Spill
	move	$a3, $a2
	ld.d	$ra, $sp, 480                   # 8-byte Folded Reload
	vld	$vr3, $sp, 304                  # 16-byte Folded Reload
	vld	$vr6, $sp, 416                  # 16-byte Folded Reload
	bnez	$a1, .LBB3_84
	b	.LBB3_431
.LBB3_11:                               #   in Loop: Header=BB3_4 Depth=1
	ld.bu	$a0, $s1, 44
	beqz	$a0, .LBB3_43
# %bb.12:                               #   in Loop: Header=BB3_4 Depth=1
	ld.d	$a0, $s1, 0
	ld.w	$a1, $a0, 32
	beqz	$a1, .LBB3_76
# %bb.13:                               # %.lr.ph.lr.ph.i
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.w	$a1, $s1, 16
.LBB3_14:                               # %.lr.ph.i.outer
                                        #   Parent Loop BB3_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB3_17 Depth 3
                                        #         Child Loop BB3_21 Depth 4
                                        #         Child Loop BB3_25 Depth 4
                                        #         Child Loop BB3_29 Depth 4
                                        #         Child Loop BB3_33 Depth 4
                                        #         Child Loop BB3_35 Depth 4
	sltui	$a1, $a1, 1
	b	.LBB3_17
.LBB3_15:                               #   in Loop: Header=BB3_17 Depth=3
	st.w	$a7, $s1, 64
.LBB3_16:                               # %.backedge.i
                                        #   in Loop: Header=BB3_17 Depth=3
	ld.w	$a2, $a0, 32
	move	$a1, $zero
	beqz	$a2, .LBB3_76
.LBB3_17:                               # %.lr.ph.i
                                        #   Parent Loop BB3_4 Depth=1
                                        #     Parent Loop BB3_14 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB3_21 Depth 4
                                        #         Child Loop BB3_25 Depth 4
                                        #         Child Loop BB3_29 Depth 4
                                        #         Child Loop BB3_33 Depth 4
                                        #         Child Loop BB3_35 Depth 4
	andi	$a1, $a1, 1
	beqz	$a1, .LBB3_39
# %bb.18:                               #   in Loop: Header=BB3_17 Depth=3
	ld.w	$a4, $s5, 44
	ld.w	$a1, $s1, 1092
	addi.w	$a2, $a4, 1
	beq	$a1, $a2, .LBB3_76
# %bb.19:                               #   in Loop: Header=BB3_17 Depth=3
	blt	$a2, $a1, .LBB3_475
# %bb.20:                               #   in Loop: Header=BB3_17 Depth=3
	ld.w	$a5, $s1, 64
	ld.w	$t0, $s1, 60
	move	$a7, $zero
	st.w	$s8, $s1, 16
	st.b	$a5, $s1, 12
	bstrpick.d	$t1, $t0, 31, 0
	ori	$a2, $zero, 256
	.p2align	4, , 16
.LBB3_21:                               #   Parent Loop BB3_4 Depth=1
                                        #     Parent Loop BB3_14 Depth=2
                                        #       Parent Loop BB3_17 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	add.w	$a3, $a7, $a2
	srai.d	$a3, $a3, 1
	slli.d	$a6, $a3, 2
	ldx.w	$a6, $s6, $a6
	slt	$a6, $t0, $a6
	maskeqz	$t2, $a3, $a6
	masknez	$a2, $a2, $a6
	or	$a2, $t2, $a2
	masknez	$a3, $a3, $a6
	maskeqz	$a6, $a7, $a6
	or	$a7, $a6, $a3
	sub.w	$a3, $a2, $a7
	bne	$a3, $s8, .LBB3_21
# %bb.22:                               # %indexIntoF.exit.i
                                        #   in Loop: Header=BB3_17 Depth=3
	ldptr.d	$a2, $s1, 3160
	ldptr.d	$a3, $s1, 3168
	slli.d	$a6, $t1, 1
	ldx.hu	$a6, $a2, $a6
	srli.d	$t1, $t1, 1
	ldx.bu	$t1, $a3, $t1
	slli.d	$t0, $t0, 2
	andi	$t0, $t0, 4
	srl.w	$t0, $t1, $t0
	move	$t1, $a6
	bstrins.d	$t1, $t0, 19, 16
	st.w	$t1, $s1, 60
	addi.w	$t0, $a1, 1
	st.w	$t0, $s1, 1092
	beq	$a1, $a4, .LBB3_16
# %bb.23:                               #   in Loop: Header=BB3_17 Depth=3
	andi	$a7, $a7, 255
	bne	$a7, $a5, .LBB3_15
# %bb.24:                               #   in Loop: Header=BB3_17 Depth=3
	move	$t3, $zero
	st.w	$t7, $s1, 16
	ori	$a7, $zero, 256
	.p2align	4, , 16
.LBB3_25:                               #   Parent Loop BB3_4 Depth=1
                                        #     Parent Loop BB3_14 Depth=2
                                        #       Parent Loop BB3_17 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	add.w	$t2, $t3, $a7
	srai.d	$t4, $t2, 1
	slli.d	$t2, $t4, 2
	ldx.w	$t5, $s6, $t2
	addi.w	$t2, $t1, 0
	slt	$t5, $t2, $t5
	maskeqz	$t6, $t4, $t5
	masknez	$a7, $a7, $t5
	or	$a7, $t6, $a7
	masknez	$t4, $t4, $t5
	maskeqz	$t3, $t3, $t5
	or	$t3, $t3, $t4
	sub.w	$t4, $a7, $t3
	bne	$t4, $s8, .LBB3_25
# %bb.26:                               # %indexIntoF.exit98.i
                                        #   in Loop: Header=BB3_17 Depth=3
	slli.d	$a7, $t2, 1
	ldx.hu	$a7, $a2, $a7
	bstrpick.d	$t1, $t1, 31, 1
	ldx.bu	$t1, $a3, $t1
	slli.d	$a6, $a6, 2
	andi	$a6, $a6, 4
	srl.w	$a6, $t1, $a6
	move	$t2, $a7
	bstrins.d	$t2, $a6, 19, 16
	st.w	$t2, $s1, 60
	addi.w	$t1, $a1, 2
	st.w	$t1, $s1, 1092
	beq	$t0, $a4, .LBB3_16
# %bb.27:                               #   in Loop: Header=BB3_17 Depth=3
	andi	$a6, $t3, 255
	bne	$a6, $a5, .LBB3_37
# %bb.28:                               #   in Loop: Header=BB3_17 Depth=3
	move	$t0, $zero
	ori	$a6, $zero, 3
	st.w	$a6, $s1, 16
	ori	$a6, $zero, 256
	.p2align	4, , 16
.LBB3_29:                               #   Parent Loop BB3_4 Depth=1
                                        #     Parent Loop BB3_14 Depth=2
                                        #       Parent Loop BB3_17 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	add.w	$t3, $t0, $a6
	srai.d	$t4, $t3, 1
	slli.d	$t3, $t4, 2
	ldx.w	$t5, $s6, $t3
	addi.w	$t3, $t2, 0
	slt	$t5, $t3, $t5
	maskeqz	$t6, $t4, $t5
	masknez	$a6, $a6, $t5
	or	$a6, $t6, $a6
	masknez	$t4, $t4, $t5
	maskeqz	$t0, $t0, $t5
	or	$t0, $t0, $t4
	sub.w	$t4, $a6, $t0
	bne	$t4, $s8, .LBB3_29
# %bb.30:                               # %indexIntoF.exit105.i
                                        #   in Loop: Header=BB3_17 Depth=3
	slli.d	$a6, $t3, 1
	ldx.hu	$a6, $a2, $a6
	bstrpick.d	$t2, $t2, 31, 1
	ldx.bu	$t2, $a3, $t2
	slli.d	$a7, $a7, 2
	andi	$a7, $a7, 4
	srl.w	$t2, $t2, $a7
	move	$a7, $a6
	bstrins.d	$a7, $t2, 19, 16
	st.w	$a7, $s1, 60
	addi.d	$t2, $a1, 3
	st.w	$t2, $s1, 1092
	beq	$t1, $a4, .LBB3_16
# %bb.31:                               #   in Loop: Header=BB3_17 Depth=3
	andi	$a4, $t0, 255
	bne	$a4, $a5, .LBB3_38
# %bb.32:                               # %.preheader.i.preheader
                                        #   in Loop: Header=BB3_17 Depth=3
	move	$a5, $zero
	ori	$a4, $zero, 256
	.p2align	4, , 16
.LBB3_33:                               # %.preheader.i
                                        #   Parent Loop BB3_4 Depth=1
                                        #     Parent Loop BB3_14 Depth=2
                                        #       Parent Loop BB3_17 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	add.w	$t0, $a5, $a4
	srai.d	$t1, $t0, 1
	slli.d	$t0, $t1, 2
	ldx.w	$t2, $s6, $t0
	addi.w	$t0, $a7, 0
	slt	$t2, $t0, $t2
	maskeqz	$t3, $t1, $t2
	masknez	$a4, $a4, $t2
	or	$a4, $t3, $a4
	masknez	$t1, $t1, $t2
	maskeqz	$a5, $a5, $t2
	or	$a5, $a5, $t1
	sub.w	$t1, $a4, $a5
	bne	$t1, $s8, .LBB3_33
# %bb.34:                               # %indexIntoF.exit112.i
                                        #   in Loop: Header=BB3_17 Depth=3
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
	st.w	$t0, $s1, 1092
	st.w	$a6, $s1, 60
	andi	$a5, $a5, 255
	addi.d	$a5, $a5, 4
	st.w	$a5, $s1, 16
	ori	$a5, $zero, 256
	.p2align	4, , 16
.LBB3_35:                               #   Parent Loop BB3_4 Depth=1
                                        #     Parent Loop BB3_14 Depth=2
                                        #       Parent Loop BB3_17 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	add.w	$t0, $a7, $a5
	srai.d	$t1, $t0, 1
	slli.d	$t0, $t1, 2
	ldx.w	$t2, $s6, $t0
	addi.w	$t0, $a6, 0
	slt	$t2, $t0, $t2
	maskeqz	$t3, $t1, $t2
	masknez	$a5, $a5, $t2
	or	$a5, $t3, $a5
	masknez	$t1, $t1, $t2
	maskeqz	$a7, $a7, $t2
	or	$a7, $a7, $t1
	sub.w	$t1, $a5, $a7
	bne	$t1, $s8, .LBB3_35
# %bb.36:                               # %indexIntoF.exit119.i
                                        #   in Loop: Header=BB3_17 Depth=3
	st.w	$a7, $s1, 64
	slli.d	$a5, $t0, 1
	bstrpick.d	$a6, $a6, 31, 1
	ldx.bu	$a3, $a3, $a6
	ldx.hu	$a2, $a2, $a5
	slli.d	$a4, $a4, 2
	andi	$a4, $a4, 4
	srl.w	$a3, $a3, $a4
	bstrins.d	$a2, $a3, 19, 16
	st.w	$a2, $s1, 60
	addi.d	$a1, $a1, 5
	st.w	$a1, $s1, 1092
	b	.LBB3_16
.LBB3_37:                               #   in Loop: Header=BB3_17 Depth=3
	st.w	$a6, $s1, 64
	b	.LBB3_16
.LBB3_38:                               #   in Loop: Header=BB3_17 Depth=3
	st.w	$a4, $s1, 64
	b	.LBB3_16
.LBB3_39:                               #   in Loop: Header=BB3_14 Depth=2
	ld.b	$a1, $s1, 12
	ld.d	$a0, $a0, 24
	st.b	$a1, $a0, 0
	ld.d	$a0, $s1, 0
	ld.d	$a1, $a0, 24
	ld.w	$a2, $s1, 16
	addi.d	$a1, $a1, 1
	st.d	$a1, $a0, 24
	ld.w	$a3, $a0, 32
	ld.wu	$a4, $a0, 36
	addi.w	$a1, $a2, -1
	st.w	$a1, $s1, 16
	addi.w	$a2, $a3, -1
	addi.d	$a3, $a4, 1
	st.w	$a3, $a0, 36
	slli.d	$a3, $a3, 31
	st.w	$a2, $a0, 32
	bgez	$a3, .LBB3_41
# %bb.40:                               #   in Loop: Header=BB3_14 Depth=2
	ld.w	$a3, $a0, 40
	addi.d	$a3, $a3, 1
	st.w	$a3, $a0, 40
.LBB3_41:                               #   in Loop: Header=BB3_14 Depth=2
	bnez	$a2, .LBB3_14
	b	.LBB3_76
.LBB3_42:                               # %.._crit_edge1793.i_crit_edge
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.w	$t3, $s5, 44
	b	.LBB3_79
.LBB3_43:                               #   in Loop: Header=BB3_4 Depth=1
	ori	$a0, $zero, 3184
	ldx.w	$a1, $s1, $a0
	ld.bu	$t2, $s1, 12
	ld.w	$t3, $s1, 16
	ld.w	$t4, $s1, 1092
	ld.d	$a0, $s1, 0
	ld.w	$t1, $s1, 64
	ldptr.d	$a2, $s1, 3152
	ld.w	$a5, $s1, 60
	ld.w	$a4, $a0, 32
	ld.w	$t0, $s5, 44
	ld.d	$a3, $a0, 24
	addi.w	$a7, $t0, 1
	move	$a6, $a4
.LBB3_44:                               # %.backedge.i33
                                        #   Parent Loop BB3_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB3_48 Depth 3
                                        #       Child Loop BB3_50 Depth 3
	blez	$t3, .LBB3_52
# %bb.45:                               # %.preheader.i34
                                        #   in Loop: Header=BB3_44 Depth=2
	beqz	$a6, .LBB3_72
# %bb.46:                               # %.lr.ph.i35.preheader
                                        #   in Loop: Header=BB3_44 Depth=2
	addi.w	$a0, $a6, -1
	addi.w	$t5, $t3, -1
	sltu	$t6, $a0, $t5
	masknez	$t5, $t5, $t6
	maskeqz	$a0, $a0, $t6
	or	$a0, $a0, $t5
	ori	$t7, $zero, 32
	bltu	$a0, $t7, .LBB3_50
# %bb.47:                               # %vector.ph574
                                        #   in Loop: Header=BB3_44 Depth=2
	bstrpick.d	$a0, $a0, 31, 0
	addi.d	$a0, $a0, 1
	andi	$t5, $a0, 31
	sltui	$t6, $t5, 1
	masknez	$t5, $t5, $t6
	maskeqz	$t6, $t7, $t6
	or	$t5, $t6, $t5
	sub.d	$a0, $a0, $t5
	sub.w	$a6, $a6, $a0
	add.d	$t5, $a3, $a0
	sub.w	$t3, $t3, $a0
	vreplgr2vr.b	$vr0, $t2
	addi.d	$a3, $a3, 16
	.p2align	4, , 16
.LBB3_48:                               # %vector.body581
                                        #   Parent Loop BB3_4 Depth=1
                                        #     Parent Loop BB3_44 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	vst	$vr0, $a3, -16
	vst	$vr0, $a3, 0
	addi.d	$a0, $a0, -32
	addi.d	$a3, $a3, 32
	bnez	$a0, .LBB3_48
# %bb.49:                               #   in Loop: Header=BB3_44 Depth=2
	move	$a3, $t5
	.p2align	4, , 16
.LBB3_50:                               # %.lr.ph.i35
                                        #   Parent Loop BB3_4 Depth=1
                                        #     Parent Loop BB3_44 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	beq	$t3, $s8, .LBB3_53
# %bb.51:                               #   in Loop: Header=BB3_50 Depth=3
	st.b	$t2, $a3, 0
	addi.w	$t3, $t3, -1
	addi.w	$a6, $a6, -1
	addi.d	$a3, $a3, 1
	bnez	$a6, .LBB3_50
	b	.LBB3_72
.LBB3_52:                               #   in Loop: Header=BB3_44 Depth=2
	move	$t5, $t4
	b	.LBB3_56
.LBB3_53:                               #   in Loop: Header=BB3_44 Depth=2
	move	$t5, $t4
.LBB3_54:                               # %.loopexit156.i
                                        #   in Loop: Header=BB3_44 Depth=2
	beqz	$a6, .LBB3_133
# %bb.55:                               #   in Loop: Header=BB3_44 Depth=2
	st.b	$t2, $a3, 0
	addi.d	$a3, $a3, 1
	addi.w	$a6, $a6, -1
.LBB3_56:                               #   in Loop: Header=BB3_44 Depth=2
	move	$t6, $t1
	addi.w	$a0, $zero, -4
	blt	$a7, $t5, .LBB3_474
# %bb.57:                               #   in Loop: Header=BB3_44 Depth=2
	beq	$t5, $a7, .LBB3_134
# %bb.58:                               #   in Loop: Header=BB3_44 Depth=2
	ld.w	$t1, $s1, 40
	ld.d	$t2, $sp, 408                   # 8-byte Folded Reload
	mul.w	$t7, $t1, $t2
	addi.w	$t1, $a5, 0
	bgeu	$t1, $t7, .LBB3_474
# %bb.59:                               #   in Loop: Header=BB3_44 Depth=2
	bstrpick.d	$a5, $a5, 31, 0
	slli.d	$a5, $a5, 2
	ldx.wu	$t1, $a2, $a5
	srli.d	$a5, $t1, 8
	andi	$t1, $t1, 255
	addi.w	$t2, $t5, 1
	bne	$t1, $t6, .LBB3_62
# %bb.60:                               #   in Loop: Header=BB3_44 Depth=2
	bne	$t5, $t0, .LBB3_63
# %bb.61:                               #   in Loop: Header=BB3_44 Depth=2
	move	$t5, $t2
	move	$t1, $t6
	move	$t2, $t6
	b	.LBB3_54
.LBB3_62:                               #   in Loop: Header=BB3_44 Depth=2
	move	$t5, $t2
	move	$t2, $t6
	b	.LBB3_54
.LBB3_63:                               #   in Loop: Header=BB3_44 Depth=2
	bgeu	$a5, $t7, .LBB3_474
# %bb.64:                               #   in Loop: Header=BB3_44 Depth=2
	slli.d	$a5, $a5, 2
	ldx.wu	$t8, $a2, $a5
	srli.d	$a5, $t8, 8
	addi.w	$fp, $t5, 2
	ori	$t3, $zero, 2
	move	$t4, $a7
	move	$t1, $t6
	move	$t2, $t6
	beq	$fp, $a7, .LBB3_44
# %bb.65:                               #   in Loop: Header=BB3_44 Depth=2
	andi	$t1, $t8, 255
	move	$t4, $fp
	move	$t2, $t6
	bne	$t1, $t6, .LBB3_44
# %bb.66:                               #   in Loop: Header=BB3_44 Depth=2
	bgeu	$a5, $t7, .LBB3_474
# %bb.67:                               #   in Loop: Header=BB3_44 Depth=2
	slli.d	$a5, $a5, 2
	ldx.wu	$t8, $a2, $a5
	srli.d	$a5, $t8, 8
	addi.w	$fp, $t5, 3
	ori	$t3, $zero, 3
	move	$t4, $a7
	move	$t1, $t6
	move	$t2, $t6
	beq	$fp, $a7, .LBB3_44
# %bb.68:                               #   in Loop: Header=BB3_44 Depth=2
	andi	$t1, $t8, 255
	move	$t4, $fp
	move	$t2, $t6
	bne	$t1, $t6, .LBB3_44
# %bb.69:                               #   in Loop: Header=BB3_44 Depth=2
	bgeu	$a5, $t7, .LBB3_474
# %bb.70:                               #   in Loop: Header=BB3_44 Depth=2
	slli.d	$a5, $a5, 2
	ldx.wu	$a5, $a2, $a5
	srli.d	$t1, $a5, 8
	bgeu	$t1, $t7, .LBB3_474
# %bb.71:                               #   in Loop: Header=BB3_44 Depth=2
	slli.d	$a0, $t1, 2
	ldx.wu	$a0, $a2, $a0
	andi	$a5, $a5, 255
	addi.w	$t3, $a5, 4
	andi	$t1, $a0, 255
	srli.d	$a5, $a0, 8
	addi.w	$t4, $t5, 5
	move	$t2, $t6
	b	.LBB3_44
.LBB3_72:                               #   in Loop: Header=BB3_4 Depth=1
	move	$a6, $zero
.LBB3_73:                               # %.loopexit.i
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.d	$a0, $s1, 0
	ld.wu	$a7, $a0, 36
	sub.d	$a4, $a4, $a6
	bstrpick.d	$a4, $a4, 31, 0
	add.d	$a4, $a7, $a4
	slli.d	$a7, $a4, 31
	st.w	$a4, $a0, 36
	bgez	$a7, .LBB3_75
# %bb.74:                               #   in Loop: Header=BB3_4 Depth=1
	ld.w	$a4, $a0, 40
	addi.d	$a4, $a4, 1
	st.w	$a4, $a0, 40
.LBB3_75:                               #   in Loop: Header=BB3_4 Depth=1
	stptr.w	$a1, $s1, 3184
	st.b	$t2, $s1, 12
	st.w	$t3, $s1, 16
	st.w	$t4, $s1, 1092
	st.w	$t1, $s1, 64
	stptr.d	$a2, $s1, 3152
	st.w	$a5, $s1, 60
	st.d	$a3, $a0, 24
	st.w	$a6, $a0, 32
.LBB3_76:                               # %unRLE_obuf_to_output_SMALL.exit
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.w	$t3, $s5, 44
	ld.w	$a0, $s1, 1092
	addi.w	$a1, $t3, 1
	bne	$a0, $a1, .LBB3_477
# %bb.77:                               #   in Loop: Header=BB3_4 Depth=1
	ld.w	$a0, $s1, 16
	bnez	$a0, .LBB3_477
# %bb.78:                               # %.thread53
                                        #   in Loop: Header=BB3_4 Depth=1
	ori	$a1, $zero, 14
	st.w	$a1, $s1, 8
.LBB3_79:                               #   in Loop: Header=BB3_4 Depth=1
	ld.w	$a2, $s5, 0
	ld.w	$a0, $s5, 4
	st.d	$a0, $sp, 472                   # 8-byte Folded Spill
	ld.w	$t2, $s5, 8
	ld.w	$t4, $s5, 12
	ld.w	$t5, $s5, 16
	ld.w	$t7, $s5, 20
	ld.w	$a0, $s5, 24
	st.d	$a0, $sp, 432                   # 8-byte Folded Spill
	ld.w	$t6, $s5, 28
	ld.w	$t8, $s5, 32
	ld.w	$t1, $s5, 36
	ld.w	$fp, $s5, 40
	ld.w	$s3, $s5, 48
	ld.w	$a0, $s5, 52
	st.d	$a0, $sp, 464                   # 8-byte Folded Spill
	ld.w	$s0, $s5, 56
	ld.w	$t0, $s5, 60
	ld.w	$s2, $s5, 64
	ld.w	$a5, $s5, 68
	ld.w	$a7, $s5, 72
	ld.w	$s4, $s5, 76
	ld.w	$s7, $s5, 80
	ld.d	$a0, $s5, 84
	st.d	$a0, $sp, 440                   # 8-byte Folded Spill
	ld.d	$a0, $s5, 92
	st.d	$a0, $sp, 456                   # 8-byte Folded Spill
	ld.d	$a0, $s5, 100
	st.d	$a0, $sp, 448                   # 8-byte Folded Spill
	move	$a3, $zero
	addi.d	$a1, $a1, -14
	addi.w	$a0, $zero, -4
	ori	$a4, $zero, 27
	bltu	$a4, $a1, .LBB3_431
# %bb.80:                               #   in Loop: Header=BB3_4 Depth=1
	slli.d	$a1, $a1, 2
	pcalau12i	$a4, %pc_hi20(.LJTI3_0)
	addi.d	$a4, $a4, %pc_lo12(.LJTI3_0)
	ldx.w	$a1, $a4, $a1
	add.d	$a1, $a4, $a1
	jr	$a1
.LBB3_81:                               # %._crit_edge1842.i
                                        #   in Loop: Header=BB3_4 Depth=1
	st.d	$s2, $sp, 208                   # 8-byte Folded Spill
	ld.w	$a0, $s1, 36
	b	.LBB3_89
.LBB3_82:                               #   in Loop: Header=BB3_4 Depth=1
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	jirl	$ra, $a3, 0
	stptr.d	$a0, $s1, 3152
	beqz	$a0, .LBB3_104
# %bb.83:                               #   in Loop: Header=BB3_4 Depth=1
	move	$a2, $zero
	st.d	$zero, $sp, 472                 # 8-byte Folded Spill
	move	$t2, $zero
	move	$t4, $zero
	move	$t5, $zero
	move	$t7, $zero
	st.d	$zero, $sp, 432                 # 8-byte Folded Spill
	move	$t6, $zero
	move	$t8, $zero
	move	$t1, $zero
	move	$fp, $zero
	move	$t3, $zero
	move	$s3, $zero
	st.d	$zero, $sp, 464                 # 8-byte Folded Spill
	move	$s0, $zero
	move	$t0, $zero
	move	$s2, $zero
	move	$a5, $zero
	move	$a7, $zero
	move	$s4, $zero
	move	$s7, $zero
	st.d	$zero, $sp, 440                 # 8-byte Folded Spill
	st.d	$zero, $sp, 456                 # 8-byte Folded Spill
	st.d	$zero, $sp, 448                 # 8-byte Folded Spill
	ld.d	$ra, $sp, 480                   # 8-byte Folded Reload
	vld	$vr3, $sp, 304                  # 16-byte Folded Reload
	vld	$vr6, $sp, 416                  # 16-byte Folded Reload
.LBB3_84:                               #   in Loop: Header=BB3_4 Depth=1
	st.d	$s2, $sp, 208                   # 8-byte Folded Spill
	ld.w	$a1, $s1, 36
	ori	$a0, $zero, 14
	st.w	$a0, $s1, 8
	addi.w	$a0, $a1, -8
	move	$s2, $a5
	ori	$a3, $zero, 8
	blt	$a1, $a3, .LBB3_92
# %bb.85:                               # %.._crit_edge_crit_edge.i
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.w	$a4, $s1, 32
.LBB3_86:                               # %._crit_edge.i
                                        #   in Loop: Header=BB3_4 Depth=1
	srl.w	$a1, $a4, $a0
	andi	$a1, $a1, 255
	st.w	$a0, $s1, 36
	ori	$a3, $zero, 23
	move	$a5, $s2
	beq	$a1, $a3, .LBB3_97
# %bb.87:                               # %._crit_edge.i
                                        #   in Loop: Header=BB3_4 Depth=1
	ori	$a3, $zero, 49
	ld.d	$s2, $sp, 208                   # 8-byte Folded Reload
	bne	$a1, $a3, .LBB3_377
# %bb.88:                               #   in Loop: Header=BB3_4 Depth=1
	st.w	$zero, $s1, 56
.LBB3_89:                               #   in Loop: Header=BB3_4 Depth=1
	move	$s2, $a5
	ori	$a1, $zero, 25
	st.w	$a1, $s1, 8
	addi.w	$a1, $a0, -8
	ori	$a3, $zero, 8
	blt	$a0, $a3, .LBB3_99
# %bb.90:                               # %.._crit_edge1486_crit_edge.i
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.w	$a4, $s1, 32
.LBB3_91:                               # %._crit_edge1486.i
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.w	$a0, $s1, 56
	srl.w	$a3, $a4, $a1
	st.w	$a1, $s1, 36
	bstrins.d	$a3, $a0, 63, 8
	st.w	$a3, $s1, 56
	b	.LBB3_109
.LBB3_92:                               # %.lr.ph.i49
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.d	$a1, $s1, 0
	ld.w	$a3, $a1, 8
	addi.w	$a3, $a3, -1
	b	.LBB3_94
	.p2align	4, , 16
.LBB3_93:                               #   in Loop: Header=BB3_94 Depth=2
	addi.w	$a0, $a0, 8
	addi.w	$a3, $a3, -1
	bgez	$a0, .LBB3_86
.LBB3_94:                               #   Parent Loop BB3_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.w	$a4, $zero, -1
	beq	$a3, $a4, .LBB3_143
# %bb.95:                               #   in Loop: Header=BB3_94 Depth=2
	ld.d	$a5, $a1, 0
	ld.w	$a4, $s1, 32
	ld.bu	$a6, $a5, 0
	slli.d	$a4, $a4, 8
	or	$a4, $a4, $a6
	st.w	$a4, $s1, 32
	addi.d	$a6, $a0, 16
	st.w	$a6, $s1, 36
	ld.wu	$a6, $a1, 12
	addi.d	$a5, $a5, 1
	st.d	$a5, $a1, 0
	st.w	$a3, $a1, 8
	addi.d	$a5, $a6, 1
	slli.d	$a6, $a5, 31
	st.w	$a5, $a1, 12
	bgez	$a6, .LBB3_93
# %bb.96:                               #   in Loop: Header=BB3_94 Depth=2
	ld.w	$a5, $a1, 16
	addi.d	$a5, $a5, 1
	st.w	$a5, $a1, 16
	b	.LBB3_93
.LBB3_97:                               #   in Loop: Header=BB3_4 Depth=1
	ori	$a3, $zero, 1
	st.w	$a3, $s1, 8
	ori	$a0, $zero, 4
	b	.LBB3_145
.LBB3_98:                               #   in Loop: Header=BB3_4 Depth=1
	move	$t0, $a2
	move	$a7, $a2
	move	$s4, $a2
	move	$s7, $a2
	st.d	$a2, $sp, 440                   # 8-byte Folded Spill
	st.d	$a2, $sp, 456                   # 8-byte Folded Spill
	st.d	$a2, $sp, 448                   # 8-byte Folded Spill
	move	$a5, $a2
	move	$s2, $a2
	move	$s0, $a2
	st.d	$a2, $sp, 464                   # 8-byte Folded Spill
	move	$s3, $a2
	move	$t3, $a2
	move	$fp, $a2
	move	$t1, $a2
	move	$t8, $a2
	move	$t6, $a2
	st.d	$a2, $sp, 432                   # 8-byte Folded Spill
	move	$t7, $a2
	move	$t5, $a2
	move	$t4, $a2
	move	$t2, $a2
	st.d	$a2, $sp, 472                   # 8-byte Folded Spill
	move	$a3, $a2
	b	.LBB3_105
.LBB3_99:                               # %.lr.ph1485.i
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.d	$a0, $s1, 0
	ld.w	$a3, $a0, 8
	addi.w	$a3, $a3, -1
	b	.LBB3_101
.LBB3_100:                              #   in Loop: Header=BB3_101 Depth=2
	addi.w	$a1, $a1, 8
	addi.w	$a3, $a3, -1
	bgez	$a1, .LBB3_91
.LBB3_101:                              #   Parent Loop BB3_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.w	$a4, $zero, -1
	beq	$a3, $a4, .LBB3_143
# %bb.102:                              #   in Loop: Header=BB3_101 Depth=2
	ld.d	$a5, $a0, 0
	ld.w	$a4, $s1, 32
	ld.bu	$a6, $a5, 0
	slli.d	$a4, $a4, 8
	or	$a4, $a4, $a6
	st.w	$a4, $s1, 32
	addi.d	$a6, $a1, 16
	st.w	$a6, $s1, 36
	ld.wu	$a6, $a0, 12
	addi.d	$a5, $a5, 1
	st.d	$a5, $a0, 0
	st.w	$a3, $a0, 8
	addi.d	$a5, $a6, 1
	slli.d	$a6, $a5, 31
	st.w	$a5, $a0, 12
	bgez	$a6, .LBB3_100
# %bb.103:                              #   in Loop: Header=BB3_101 Depth=2
	ld.w	$a5, $a0, 16
	addi.d	$a5, $a5, 1
	st.w	$a5, $a0, 16
	b	.LBB3_100
.LBB3_104:                              #   in Loop: Header=BB3_4 Depth=1
	move	$t0, $zero
	move	$a7, $zero
	move	$s4, $zero
	move	$s7, $zero
	st.d	$zero, $sp, 440                 # 8-byte Folded Spill
	st.d	$zero, $sp, 456                 # 8-byte Folded Spill
	st.d	$zero, $sp, 448                 # 8-byte Folded Spill
	move	$a5, $zero
	move	$s2, $zero
	move	$s0, $zero
	st.d	$zero, $sp, 464                 # 8-byte Folded Spill
	move	$s3, $zero
	move	$t3, $zero
	move	$fp, $zero
	move	$t1, $zero
	move	$t8, $zero
	move	$t6, $zero
	st.d	$zero, $sp, 432                 # 8-byte Folded Spill
	move	$t7, $zero
	move	$t5, $zero
	move	$t4, $zero
	move	$t2, $zero
	st.d	$zero, $sp, 472                 # 8-byte Folded Spill
	move	$a2, $zero
	move	$a3, $zero
	addi.w	$a0, $zero, -3
.LBB3_105:                              # %BZ2_decompress.exit
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.d	$ra, $sp, 480                   # 8-byte Folded Reload
	vld	$vr3, $sp, 304                  # 16-byte Folded Reload
	vld	$vr6, $sp, 416                  # 16-byte Folded Reload
	b	.LBB3_431
.LBB3_106:                              # %._crit_edge1859.i
                                        #   in Loop: Header=BB3_4 Depth=1
	move	$ra, $t1
	move	$t1, $t7
	move	$t7, $t0
	move	$t0, $s0
	move	$s0, $a7
	move	$a7, $s4
	move	$s4, $t8
	move	$t8, $t2
	move	$t2, $t3
	move	$t3, $fp
	move	$fp, $s3
	move	$s3, $s2
	ld.w	$a0, $s1, 36
	b	.LBB3_169
.LBB3_107:                              # %._crit_edge1852.i
                                        #   in Loop: Header=BB3_4 Depth=1
	st.d	$s2, $sp, 208                   # 8-byte Folded Spill
	move	$s2, $a5
	ld.w	$a0, $s1, 36
	b	.LBB3_112
.LBB3_108:                              # %._crit_edge1847.i
                                        #   in Loop: Header=BB3_4 Depth=1
	st.d	$s2, $sp, 208                   # 8-byte Folded Spill
	move	$s2, $a5
	ld.w	$a1, $s1, 36
.LBB3_109:                              #   in Loop: Header=BB3_4 Depth=1
	ori	$a0, $zero, 26
	st.w	$a0, $s1, 8
	addi.w	$a0, $a1, -8
	ori	$a3, $zero, 8
	blt	$a1, $a3, .LBB3_122
# %bb.110:                              # %.._crit_edge1493_crit_edge.i
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.w	$a4, $s1, 32
.LBB3_111:                              # %._crit_edge1493.i
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.w	$a1, $s1, 56
	srl.w	$a3, $a4, $a0
	st.w	$a0, $s1, 36
	bstrins.d	$a3, $a1, 63, 8
	st.w	$a3, $s1, 56
.LBB3_112:                              #   in Loop: Header=BB3_4 Depth=1
	ori	$a1, $zero, 27
	st.w	$a1, $s1, 8
	ori	$a1, $zero, 8
	blt	$a0, $a1, .LBB3_117
# %bb.113:                              # %.._crit_edge1500_crit_edge.i
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.w	$a4, $s1, 32
	addi.d	$a0, $a0, -8
.LBB3_114:                              # %._crit_edge1500.i
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.w	$a3, $s1, 56
	srl.w	$a1, $a4, $a0
	st.w	$a0, $s1, 36
	slli.w	$a4, $a3, 8
	bstrins.d	$a1, $a3, 63, 8
	st.w	$a1, $s1, 56
	addi.w	$a0, $zero, -4
	bltz	$a4, .LBB3_131
# %bb.115:                              #   in Loop: Header=BB3_4 Depth=1
	ld.w	$a3, $s1, 40
	addi.w	$a1, $a1, 0
	ld.d	$a4, $sp, 408                   # 8-byte Folded Reload
	mul.d	$a3, $a3, $a4
	addi.w	$a3, $a3, 10
	move	$a5, $s2
	bge	$a3, $a1, .LBB3_132
# %bb.116:                              #   in Loop: Header=BB3_4 Depth=1
	move	$a3, $zero
	b	.LBB3_145
.LBB3_117:                              # %.lr.ph1499.i
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.d	$a1, $s1, 0
	ld.w	$a3, $a1, 8
	addi.w	$a3, $a3, -1
	addi.d	$a0, $a0, -8
	b	.LBB3_119
.LBB3_118:                              #   in Loop: Header=BB3_119 Depth=2
	addi.w	$a0, $a0, 8
	addi.w	$a3, $a3, -1
	bgez	$a0, .LBB3_114
.LBB3_119:                              #   Parent Loop BB3_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.w	$a4, $zero, -1
	beq	$a3, $a4, .LBB3_143
# %bb.120:                              #   in Loop: Header=BB3_119 Depth=2
	ld.d	$a5, $a1, 0
	ld.w	$a4, $s1, 32
	ld.bu	$a6, $a5, 0
	slli.d	$a4, $a4, 8
	or	$a4, $a4, $a6
	st.w	$a4, $s1, 32
	addi.d	$a6, $a0, 16
	st.w	$a6, $s1, 36
	ld.wu	$a6, $a1, 12
	addi.d	$a5, $a5, 1
	st.d	$a5, $a1, 0
	st.w	$a3, $a1, 8
	addi.d	$a5, $a6, 1
	slli.d	$a6, $a5, 31
	st.w	$a5, $a1, 12
	bgez	$a6, .LBB3_118
# %bb.121:                              #   in Loop: Header=BB3_119 Depth=2
	ld.w	$a5, $a1, 16
	addi.d	$a5, $a5, 1
	st.w	$a5, $a1, 16
	b	.LBB3_118
.LBB3_122:                              # %.lr.ph1492.i
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.d	$a1, $s1, 0
	ld.w	$a3, $a1, 8
	addi.w	$a3, $a3, -1
	b	.LBB3_124
.LBB3_123:                              #   in Loop: Header=BB3_124 Depth=2
	addi.w	$a0, $a0, 8
	addi.w	$a3, $a3, -1
	bgez	$a0, .LBB3_111
.LBB3_124:                              #   Parent Loop BB3_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.w	$a4, $zero, -1
	beq	$a3, $a4, .LBB3_143
# %bb.125:                              #   in Loop: Header=BB3_124 Depth=2
	ld.d	$a5, $a1, 0
	ld.w	$a4, $s1, 32
	ld.bu	$a6, $a5, 0
	slli.d	$a4, $a4, 8
	or	$a4, $a4, $a6
	st.w	$a4, $s1, 32
	addi.d	$a6, $a0, 16
	st.w	$a6, $s1, 36
	ld.wu	$a6, $a1, 12
	addi.d	$a5, $a5, 1
	st.d	$a5, $a1, 0
	st.w	$a3, $a1, 8
	addi.d	$a5, $a6, 1
	slli.d	$a6, $a5, 31
	st.w	$a5, $a1, 12
	bgez	$a6, .LBB3_123
# %bb.126:                              #   in Loop: Header=BB3_124 Depth=2
	ld.w	$a5, $a1, 16
	addi.d	$a5, $a5, 1
	st.w	$a5, $a1, 16
	b	.LBB3_123
.LBB3_127:                              # %._crit_edge1900.i
                                        #   in Loop: Header=BB3_4 Depth=1
	st.d	$t1, $sp, 96                    # 8-byte Folded Spill
	move	$t1, $t0
	move	$t0, $s0
	move	$s0, $a7
	move	$a7, $s4
	move	$s4, $t8
	move	$t8, $t2
	move	$t2, $t6
	move	$t6, $t3
	move	$t3, $fp
	move	$fp, $s3
	move	$s3, $s2
	move	$s2, $a5
	ld.w	$a0, $s1, 36
	b	.LBB3_319
.LBB3_128:                              # %._crit_edge1890.i
                                        #   in Loop: Header=BB3_4 Depth=1
	st.d	$t0, $sp, 104                   # 8-byte Folded Spill
	move	$t0, $s0
	move	$s0, $a7
	move	$a7, $s4
	move	$s4, $t8
	move	$t8, $t2
	move	$t2, $t6
	move	$t6, $t3
	move	$t3, $fp
	move	$fp, $s3
	move	$s3, $s2
	move	$s2, $a5
	ld.w	$a1, $s1, 36
	b	.LBB3_302
.LBB3_129:                              # %._crit_edge1874.i
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.w	$a1, $s1, 36
	b	.LBB3_135
.LBB3_130:                              # %._crit_edge1882.i
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.w	$a1, $s1, 36
	b	.LBB3_435
.LBB3_131:                              #   in Loop: Header=BB3_4 Depth=1
	move	$a3, $zero
	b	.LBB3_144
.LBB3_132:                              #   in Loop: Header=BB3_4 Depth=1
	move	$a2, $zero
	b	.LBB3_146
.LBB3_133:                              #   in Loop: Header=BB3_4 Depth=1
	move	$a6, $zero
	ori	$t3, $zero, 1
	move	$t4, $t5
	b	.LBB3_73
.LBB3_134:                              #   in Loop: Header=BB3_4 Depth=1
	move	$t3, $zero
	move	$t4, $a7
	move	$t1, $t6
	b	.LBB3_73
.LBB3_135:                              #   in Loop: Header=BB3_4 Depth=1
	st.d	$t0, $sp, 104                   # 8-byte Folded Spill
	move	$t0, $s0
	move	$s0, $a7
	move	$a7, $s4
	move	$s4, $t8
	move	$t8, $t2
	move	$t2, $t6
	move	$t6, $t3
	move	$t3, $fp
	move	$fp, $s3
	move	$s3, $s2
	move	$s2, $a5
	ori	$a0, $zero, 41
	st.w	$a0, $s1, 8
	blez	$a1, .LBB3_138
# %bb.136:                              # %.._crit_edge1586_crit_edge.i
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.w	$a4, $s1, 32
.LBB3_137:                              # %._crit_edge1586.i
                                        #   in Loop: Header=BB3_4 Depth=1
	addi.w	$a1, $a1, -1
	srl.w	$a0, $a4, $a1
	andi	$s0, $a0, 1
	bstrins.d	$a0, $s2, 63, 1
	st.w	$a1, $s1, 36
	move	$a5, $a0
	ori	$a3, $zero, 20
	move	$s2, $s3
	b	.LBB3_420
.LBB3_138:                              # %.lr.ph1585.i
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.d	$a0, $s1, 0
	ld.w	$a3, $a0, 8
	addi.w	$a3, $a3, -1
	b	.LBB3_140
.LBB3_139:                              #   in Loop: Header=BB3_140 Depth=2
	addi.w	$a5, $a1, -8
	addi.w	$a6, $zero, -8
	addi.w	$a3, $a3, -1
	blt	$a6, $a5, .LBB3_137
.LBB3_140:                              #   Parent Loop BB3_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.w	$a4, $zero, -1
	beq	$a3, $a4, .LBB3_337
# %bb.141:                              #   in Loop: Header=BB3_140 Depth=2
	ld.d	$a5, $a0, 0
	ld.w	$a4, $s1, 32
	ld.bu	$a6, $a5, 0
	slli.d	$a4, $a4, 8
	or	$a4, $a4, $a6
	st.w	$a4, $s1, 32
	addi.d	$a1, $a1, 8
	st.w	$a1, $s1, 36
	ld.wu	$a6, $a0, 12
	addi.d	$a5, $a5, 1
	st.d	$a5, $a0, 0
	st.w	$a3, $a0, 8
	addi.d	$a5, $a6, 1
	slli.d	$a6, $a5, 31
	st.w	$a5, $a0, 12
	bgez	$a6, .LBB3_139
# %bb.142:                              #   in Loop: Header=BB3_140 Depth=2
	ld.w	$a5, $a0, 16
	addi.d	$a5, $a5, 1
	st.w	$a5, $a0, 16
	b	.LBB3_139
.LBB3_143:                              #   in Loop: Header=BB3_4 Depth=1
	move	$a3, $zero
	move	$a0, $zero
.LBB3_144:                              # %BZ2_decompress.exit
                                        #   in Loop: Header=BB3_4 Depth=1
	move	$a5, $s2
.LBB3_145:                              # %BZ2_decompress.exit
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.d	$s2, $sp, 208                   # 8-byte Folded Reload
	b	.LBB3_431
.LBB3_146:                              #   in Loop: Header=BB3_4 Depth=1
	ori	$a0, $zero, 16
	bge	$a2, $a0, .LBB3_151
# %bb.147:                              #   in Loop: Header=BB3_4 Depth=1
	ld.d	$s2, $sp, 208                   # 8-byte Folded Reload
.LBB3_148:                              #   in Loop: Header=BB3_4 Depth=1
	st.d	$s2, $sp, 208                   # 8-byte Folded Spill
	ld.w	$a0, $s1, 36
	ori	$a1, $zero, 28
	st.w	$a1, $s1, 8
	move	$s2, $a5
	blez	$a0, .LBB3_152
# %bb.149:                              # %.._crit_edge1671_crit_edge.i
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.w	$a4, $s1, 32
.LBB3_150:                              # %._crit_edge1671.i
                                        #   in Loop: Header=BB3_4 Depth=1
	addi.d	$a0, $a0, -1
	st.w	$a0, $s1, 36
	srl.w	$a0, $a4, $a0
	andi	$a0, $a0, 1
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	stx.b	$a0, $a1, $a2
	addi.w	$a2, $a2, 1
	move	$a5, $s2
	b	.LBB3_146
.LBB3_151:                              # %.preheader1396.i
                                        #   in Loop: Header=BB3_4 Depth=1
	ori	$a2, $zero, 256
	ld.d	$a0, $sp, 488                   # 8-byte Folded Reload
	move	$a1, $zero
	st.d	$t1, $sp, 96                    # 8-byte Folded Spill
	move	$a3, $s0
	move	$s0, $t4
	st.d	$s7, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 360                   # 8-byte Folded Spill
	move	$fp, $t5
	st.d	$a7, $sp, 64                    # 8-byte Folded Spill
	st.d	$s3, $sp, 48                    # 8-byte Folded Spill
	move	$s3, $t7
	st.d	$a3, $sp, 72                    # 8-byte Folded Spill
	ld.d	$a3, $sp, 456                   # 8-byte Folded Reload
	st.d	$a3, $sp, 456                   # 8-byte Folded Spill
	ld.d	$a3, $sp, 464                   # 8-byte Folded Reload
	st.d	$a3, $sp, 464                   # 8-byte Folded Spill
	st.d	$a5, $sp, 80                    # 8-byte Folded Spill
	st.d	$t3, $sp, 352                   # 8-byte Folded Spill
	st.d	$t6, $sp, 384                   # 8-byte Folded Spill
	st.d	$t2, $sp, 376                   # 8-byte Folded Spill
	st.d	$t8, $sp, 368                   # 8-byte Folded Spill
	st.d	$t0, $sp, 104                   # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$t0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$t8, $sp, 368                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 376                   # 8-byte Folded Reload
	ld.d	$t6, $sp, 384                   # 8-byte Folded Reload
	ld.d	$t3, $sp, 352                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	move	$t7, $s3
	ld.d	$s3, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a7, $sp, 64                    # 8-byte Folded Reload
	move	$t5, $fp
	ld.d	$fp, $sp, 360                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 56                    # 8-byte Folded Reload
	move	$t4, $s0
	move	$s0, $a0
	ld.d	$t1, $sp, 96                    # 8-byte Folded Reload
	vld	$vr6, $sp, 416                  # 16-byte Folded Reload
	vld	$vr3, $sp, 304                  # 16-byte Folded Reload
	ld.d	$ra, $sp, 480                   # 8-byte Folded Reload
	move	$a2, $zero
	ld.d	$s2, $sp, 208                   # 8-byte Folded Reload
	b	.LBB3_157
.LBB3_152:                              # %.lr.ph1670.i
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.d	$a1, $s1, 0
	ld.w	$a3, $a1, 8
	addi.w	$a3, $a3, -1
	b	.LBB3_154
.LBB3_153:                              #   in Loop: Header=BB3_154 Depth=2
	addi.w	$a5, $a0, -8
	addi.w	$a6, $zero, -8
	addi.w	$a3, $a3, -1
	blt	$a6, $a5, .LBB3_150
.LBB3_154:                              #   Parent Loop BB3_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.w	$a4, $zero, -1
	beq	$a3, $a4, .LBB3_143
# %bb.155:                              #   in Loop: Header=BB3_154 Depth=2
	ld.d	$a5, $a1, 0
	ld.w	$a4, $s1, 32
	ld.bu	$a6, $a5, 0
	slli.d	$a4, $a4, 8
	or	$a4, $a4, $a6
	st.w	$a4, $s1, 32
	addi.d	$a0, $a0, 8
	st.w	$a0, $s1, 36
	ld.wu	$a6, $a1, 12
	addi.d	$a5, $a5, 1
	st.d	$a5, $a1, 0
	st.w	$a3, $a1, 8
	addi.d	$a5, $a6, 1
	slli.d	$a6, $a5, 31
	st.w	$a5, $a1, 12
	bgez	$a6, .LBB3_153
# %bb.156:                              #   in Loop: Header=BB3_154 Depth=2
	ld.w	$a5, $a1, 16
	addi.d	$a5, $a5, 1
	st.w	$a5, $a1, 16
	b	.LBB3_153
.LBB3_157:                              # %.loopexit1397.i
                                        #   in Loop: Header=BB3_4 Depth=1
	ori	$a0, $zero, 15
	blt	$a0, $a2, .LBB3_160
# %bb.158:                              #   in Loop: Header=BB3_4 Depth=1
	ld.d	$a0, $sp, 248                   # 8-byte Folded Reload
	ldx.bu	$a0, $a0, $a2
	beqz	$a0, .LBB3_233
# %bb.159:                              #   in Loop: Header=BB3_4 Depth=1
	move	$a3, $zero
	b	.LBB3_227
.LBB3_160:                              #   in Loop: Header=BB3_4 Depth=1
	move	$a6, $a5
	move	$a0, $zero
	move	$a1, $zero
	stptr.w	$zero, $s1, 3192
	ld.d	$a4, $sp, 224                   # 8-byte Folded Reload
	ori	$a5, $zero, 256
	b	.LBB3_162
	.p2align	4, , 16
.LBB3_161:                              #   in Loop: Header=BB3_162 Depth=2
	addi.d	$a1, $a1, 1
	beq	$a1, $a5, .LBB3_164
.LBB3_162:                              #   Parent Loop BB3_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a3, $sp, 488                   # 8-byte Folded Reload
	ldx.bu	$a3, $a3, $a1
	beqz	$a3, .LBB3_161
# %bb.163:                              #   in Loop: Header=BB3_162 Depth=2
	stx.b	$a1, $a4, $a0
	ori	$a0, $zero, 3192
	ldx.w	$a0, $s1, $a0
	addi.w	$a0, $a0, 1
	stptr.w	$a0, $s1, 3192
	b	.LBB3_161
.LBB3_164:                              # %makeMaps_d.exit.i
                                        #   in Loop: Header=BB3_4 Depth=1
	beqz	$a0, .LBB3_198
# %bb.165:                              #   in Loop: Header=BB3_4 Depth=1
	addi.w	$t4, $a0, 2
	move	$a5, $a6
.LBB3_166:                              #   in Loop: Header=BB3_4 Depth=1
	move	$ra, $t1
	move	$t1, $t7
	move	$t7, $t0
	move	$t0, $s0
	move	$s0, $a7
	move	$a7, $s4
	move	$s4, $t8
	move	$t8, $t2
	move	$t2, $t3
	move	$t3, $fp
	move	$fp, $s3
	move	$s3, $s2
	ld.w	$a0, $s1, 36
	ori	$a1, $zero, 30
	st.w	$a1, $s1, 8
	move	$s2, $a5
	ori	$a1, $zero, 3
	blt	$a0, $a1, .LBB3_184
# %bb.167:                              # %.._crit_edge1508_crit_edge.i
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.w	$a4, $s1, 32
.LBB3_168:                              # %._crit_edge1508.i
                                        #   in Loop: Header=BB3_4 Depth=1
	addi.w	$a0, $a0, -3
	srl.w	$a1, $a4, $a0
	andi	$a1, $a1, 7
	move	$t5, $a1
	addi.d	$a1, $a1, -2
	st.w	$a0, $s1, 36
	ori	$a3, $zero, 5
	move	$a5, $s2
	bgeu	$a1, $a3, .LBB3_195
.LBB3_169:                              #   in Loop: Header=BB3_4 Depth=1
	move	$s2, $a5
	ori	$a1, $zero, 31
	st.w	$a1, $s1, 8
	ori	$a1, $zero, 15
	blt	$a0, $a1, .LBB3_189
# %bb.170:                              # %.._crit_edge1515_crit_edge.i
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.w	$a4, $s1, 32
.LBB3_171:                              # %._crit_edge1515.i
                                        #   in Loop: Header=BB3_4 Depth=1
	addi.d	$a0, $a0, -15
	srl.w	$a1, $a4, $a0
	bstrpick.d	$a1, $a1, 14, 0
	st.w	$a0, $s1, 36
	move	$a5, $s2
	beqz	$a1, .LBB3_199
# %bb.172:                              #   in Loop: Header=BB3_4 Depth=1
	move	$t1, $a1
	move	$a2, $zero
	move	$s2, $s3
	bge	$a2, $t1, .LBB3_201
.LBB3_173:                              #   in Loop: Header=BB3_4 Depth=1
	st.d	$zero, $sp, 472                 # 8-byte Folded Spill
	move	$s3, $fp
	move	$fp, $t3
	move	$t3, $t2
	move	$t2, $t8
	move	$t8, $s4
	move	$s4, $a7
	move	$a7, $s0
	move	$s0, $t0
	move	$t0, $t7
	move	$t7, $t1
	move	$t1, $ra
.LBB3_174:                              # %.preheader594
                                        #   in Loop: Header=BB3_4 Depth=1
	move	$ra, $t1
	move	$t1, $t7
	move	$t7, $t0
	move	$t0, $s0
	move	$s0, $a7
	move	$a7, $s4
	move	$s4, $t8
	move	$t8, $t2
	move	$t2, $t3
	move	$t3, $fp
	move	$fp, $s3
	move	$s3, $s2
	ld.w	$a1, $s1, 36
.LBB3_175:                              #   Parent Loop BB3_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB3_181 Depth 3
	move	$s2, $a5
	ori	$a0, $zero, 32
	st.w	$a0, $s1, 8
	blez	$a1, .LBB3_179
# %bb.176:                              # %.._crit_edge1657_crit_edge.i
                                        #   in Loop: Header=BB3_175 Depth=2
	ld.w	$a4, $s1, 32
.LBB3_177:                              # %._crit_edge1657.i
                                        #   in Loop: Header=BB3_175 Depth=2
	addi.w	$a1, $a1, -1
	srl.w	$a0, $a4, $a1
	andi	$a0, $a0, 1
	st.w	$a1, $s1, 36
	beqz	$a0, .LBB3_200
# %bb.178:                              #   in Loop: Header=BB3_175 Depth=2
	ld.d	$a3, $sp, 472                   # 8-byte Folded Reload
	addi.w	$a3, $a3, 1
	addi.w	$a0, $zero, -4
	move	$a5, $s2
	st.d	$a3, $sp, 472                   # 8-byte Folded Spill
	blt	$a3, $t5, .LBB3_175
	b	.LBB3_218
.LBB3_179:                              # %.lr.ph1656.i
                                        #   in Loop: Header=BB3_175 Depth=2
	ld.d	$a0, $s1, 0
	ld.w	$a3, $a0, 8
	addi.w	$a3, $a3, -1
	b	.LBB3_181
	.p2align	4, , 16
.LBB3_180:                              #   in Loop: Header=BB3_181 Depth=3
	addi.w	$a5, $a1, -8
	addi.w	$a6, $zero, -8
	addi.w	$a3, $a3, -1
	blt	$a6, $a5, .LBB3_177
.LBB3_181:                              #   Parent Loop BB3_4 Depth=1
                                        #     Parent Loop BB3_175 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	addi.w	$a4, $zero, -1
	beq	$a3, $a4, .LBB3_194
# %bb.182:                              #   in Loop: Header=BB3_181 Depth=3
	ld.d	$a5, $a0, 0
	ld.w	$a4, $s1, 32
	ld.bu	$a6, $a5, 0
	slli.d	$a4, $a4, 8
	or	$a4, $a4, $a6
	st.w	$a4, $s1, 32
	addi.d	$a1, $a1, 8
	st.w	$a1, $s1, 36
	ld.wu	$a6, $a0, 12
	addi.d	$a5, $a5, 1
	st.d	$a5, $a0, 0
	st.w	$a3, $a0, 8
	addi.d	$a5, $a6, 1
	slli.d	$a6, $a5, 31
	st.w	$a5, $a0, 12
	bgez	$a6, .LBB3_180
# %bb.183:                              #   in Loop: Header=BB3_181 Depth=3
	ld.w	$a5, $a0, 16
	addi.d	$a5, $a5, 1
	st.w	$a5, $a0, 16
	b	.LBB3_180
.LBB3_184:                              # %.lr.ph1507.i
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.d	$a1, $s1, 0
	ld.w	$a3, $a1, 8
	addi.w	$a3, $a3, -1
	b	.LBB3_186
.LBB3_185:                              #   in Loop: Header=BB3_186 Depth=2
	addi.w	$a5, $a0, -8
	addi.w	$a6, $zero, -6
	addi.w	$a3, $a3, -1
	blt	$a6, $a5, .LBB3_168
.LBB3_186:                              #   Parent Loop BB3_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.w	$a4, $zero, -1
	beq	$a3, $a4, .LBB3_194
# %bb.187:                              #   in Loop: Header=BB3_186 Depth=2
	ld.d	$a5, $a1, 0
	ld.w	$a4, $s1, 32
	ld.bu	$a6, $a5, 0
	slli.d	$a4, $a4, 8
	or	$a4, $a4, $a6
	st.w	$a4, $s1, 32
	addi.d	$a0, $a0, 8
	st.w	$a0, $s1, 36
	ld.wu	$a6, $a1, 12
	addi.d	$a5, $a5, 1
	st.d	$a5, $a1, 0
	st.w	$a3, $a1, 8
	addi.d	$a5, $a6, 1
	slli.d	$a6, $a5, 31
	st.w	$a5, $a1, 12
	bgez	$a6, .LBB3_185
# %bb.188:                              #   in Loop: Header=BB3_186 Depth=2
	ld.w	$a5, $a1, 16
	addi.d	$a5, $a5, 1
	st.w	$a5, $a1, 16
	b	.LBB3_185
.LBB3_189:                              # %.lr.ph1514.i
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.d	$a1, $s1, 0
	ld.w	$a3, $a1, 8
	addi.w	$a3, $a3, -1
	b	.LBB3_191
.LBB3_190:                              #   in Loop: Header=BB3_191 Depth=2
	addi.w	$a5, $a0, -8
	addi.w	$a3, $a3, -1
	ori	$a6, $zero, 6
	blt	$a6, $a5, .LBB3_171
.LBB3_191:                              #   Parent Loop BB3_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.w	$a4, $zero, -1
	beq	$a3, $a4, .LBB3_194
# %bb.192:                              #   in Loop: Header=BB3_191 Depth=2
	ld.d	$a5, $a1, 0
	ld.w	$a4, $s1, 32
	ld.bu	$a6, $a5, 0
	slli.d	$a4, $a4, 8
	or	$a4, $a4, $a6
	st.w	$a4, $s1, 32
	addi.d	$a0, $a0, 8
	st.w	$a0, $s1, 36
	ld.wu	$a6, $a1, 12
	addi.d	$a5, $a5, 1
	st.d	$a5, $a1, 0
	st.w	$a3, $a1, 8
	addi.d	$a5, $a6, 1
	slli.d	$a6, $a5, 31
	st.w	$a5, $a1, 12
	bgez	$a6, .LBB3_190
# %bb.193:                              #   in Loop: Header=BB3_191 Depth=2
	ld.w	$a5, $a1, 16
	addi.d	$a5, $a5, 1
	st.w	$a5, $a1, 16
	b	.LBB3_190
.LBB3_194:                              #   in Loop: Header=BB3_4 Depth=1
	move	$a3, $zero
	move	$a0, $zero
	move	$a5, $s2
	b	.LBB3_196
.LBB3_195:                              #   in Loop: Header=BB3_4 Depth=1
	move	$a3, $zero
	addi.w	$a0, $zero, -4
.LBB3_196:                              # %BZ2_decompress.exit
                                        #   in Loop: Header=BB3_4 Depth=1
	move	$s2, $s3
	move	$s3, $fp
	move	$fp, $t3
	move	$t3, $t2
	move	$t2, $t8
	move	$t8, $s4
	move	$s4, $a7
	move	$a7, $s0
	move	$s0, $t0
	move	$t0, $t7
	move	$t7, $t1
.LBB3_197:                              # %BZ2_decompress.exit
                                        #   in Loop: Header=BB3_4 Depth=1
	move	$t1, $ra
	ld.d	$ra, $sp, 480                   # 8-byte Folded Reload
	b	.LBB3_431
.LBB3_198:                              #   in Loop: Header=BB3_4 Depth=1
	move	$a3, $zero
	addi.w	$a0, $zero, -4
	move	$a5, $a6
	b	.LBB3_431
.LBB3_199:                              #   in Loop: Header=BB3_4 Depth=1
	move	$a3, $zero
	addi.w	$a0, $zero, -4
	move	$s2, $s3
	move	$s3, $fp
	move	$fp, $t3
	move	$t3, $t2
	move	$t2, $t8
	move	$t8, $s4
	move	$s4, $a7
	move	$a7, $s0
	move	$s0, $t0
	move	$t0, $t7
	move	$t7, $zero
	b	.LBB3_197
.LBB3_200:                              #   in Loop: Header=BB3_4 Depth=1
	ld.d	$a0, $sp, 320                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 472                   # 8-byte Folded Reload
	stx.b	$a1, $a0, $a2
	addi.w	$a2, $a2, 1
	move	$a5, $s2
	move	$s2, $s3
	blt	$a2, $t1, .LBB3_173
.LBB3_201:                              #   in Loop: Header=BB3_4 Depth=1
	addi.d	$a6, $sp, 498
	move	$t8, $s4
	move	$s4, $a7
	move	$a7, $s0
	move	$s0, $t0
	move	$t0, $t7
	move	$t7, $t1
	move	$t1, $ra
	ld.d	$ra, $sp, 480                   # 8-byte Folded Reload
	blez	$t5, .LBB3_205
# %bb.202:                              # %iter.check
                                        #   in Loop: Header=BB3_4 Depth=1
	ori	$a0, $zero, 4
	bgeu	$t5, $a0, .LBB3_214
# %bb.203:                              #   in Loop: Header=BB3_4 Depth=1
	move	$a1, $zero
.LBB3_204:                              # %.lr.ph1521.i
                                        #   Parent Loop BB3_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	andi	$a0, $a1, 255
	stx.b	$a1, $a0, $a6
	addi.d	$a1, $a1, 1
	andi	$a0, $a1, 255
	bltu	$a0, $t5, .LBB3_204
.LBB3_205:                              # %.preheader1393.i
                                        #   in Loop: Header=BB3_4 Depth=1
	blez	$t7, .LBB3_212
# %bb.206:                              # %.lr.ph1528.i
                                        #   in Loop: Header=BB3_4 Depth=1
	move	$s2, $a5
	move	$a0, $zero
	b	.LBB3_208
.LBB3_207:                              # %._crit_edge1526.i
                                        #   in Loop: Header=BB3_208 Depth=2
	ld.d	$a2, $sp, 328                   # 8-byte Folded Reload
	stx.b	$a1, $a2, $a0
	addi.d	$a0, $a0, 1
	st.b	$a1, $sp, 498
	beq	$a0, $t7, .LBB3_211
.LBB3_208:                              #   Parent Loop BB3_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB3_210 Depth 3
	ld.d	$a1, $sp, 320                   # 8-byte Folded Reload
	ldx.bu	$a2, $a1, $a0
	ldx.bu	$a1, $a2, $a6
	beqz	$a2, .LBB3_207
# %bb.209:                              # %.lr.ph1525.i.preheader
                                        #   in Loop: Header=BB3_208 Depth=2
	add.d	$a3, $a6, $a2
	addi.w	$a4, $zero, -1
	lu32i.d	$a4, 0
	add.d	$a4, $a2, $a4
	.p2align	4, , 16
.LBB3_210:                              # %.lr.ph1525.i
                                        #   Parent Loop BB3_4 Depth=1
                                        #     Parent Loop BB3_208 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	bstrpick.d	$a5, $a4, 31, 0
	ldx.b	$a5, $a5, $a6
	st.b	$a5, $a3, 0
	addi.d	$a2, $a2, -1
	andi	$a5, $a2, 255
	addi.d	$a3, $a3, -1
	addi.d	$a4, $a4, -1
	bnez	$a5, .LBB3_210
	b	.LBB3_207
.LBB3_211:                              #   in Loop: Header=BB3_4 Depth=1
	move	$a2, $t7
	move	$a5, $s2
	move	$s2, $s3
	b	.LBB3_213
.LBB3_212:                              #   in Loop: Header=BB3_4 Depth=1
	move	$a2, $zero
.LBB3_213:                              # %._crit_edge1529.i
                                        #   in Loop: Header=BB3_4 Depth=1
	move	$s3, $fp
	move	$fp, $t3
	move	$t3, $t2
	move	$t2, $zero
	b	.LBB3_240
.LBB3_214:                              # %vector.scevcheck
                                        #   in Loop: Header=BB3_4 Depth=1
	addi.w	$a0, $t5, -1
	ori	$a3, $zero, 255
	andi	$a2, $a0, 255
	move	$a1, $zero
	beq	$a2, $a3, .LBB3_204
# %bb.215:                              # %vector.scevcheck
                                        #   in Loop: Header=BB3_4 Depth=1
	ori	$a2, $zero, 255
	bltu	$a2, $a0, .LBB3_204
# %bb.216:                              # %vector.main.loop.iter.check
                                        #   in Loop: Header=BB3_4 Depth=1
	ori	$a0, $zero, 32
	bgeu	$t5, $a0, .LBB3_219
# %bb.217:                              #   in Loop: Header=BB3_4 Depth=1
	move	$a0, $zero
	b	.LBB3_223
.LBB3_218:                              #   in Loop: Header=BB3_4 Depth=1
	move	$a3, $zero
	b	.LBB3_196
.LBB3_219:                              # %vector.ph548
                                        #   in Loop: Header=BB3_4 Depth=1
	pcalau12i	$a0, %pc_hi20(.LCPI3_0)
	vld	$vr0, $a0, %pc_lo12(.LCPI3_0)
	andi	$a0, $t5, 480
	andi	$a1, $t5, 28
	move	$a2, $a0
	addi.d	$a3, $sp, 514
.LBB3_220:                              # %vector.body552
                                        #   Parent Loop BB3_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vaddi.bu	$vr1, $vr0, 16
	vst	$vr0, $a3, -16
	vst	$vr1, $a3, 0
	vadd.b	$vr0, $vr0, $vr3
	addi.w	$a2, $a2, -32
	addi.d	$a3, $a3, 32
	bnez	$a2, .LBB3_220
# %bb.221:                              # %middle.block556
                                        #   in Loop: Header=BB3_4 Depth=1
	beq	$t5, $a0, .LBB3_205
# %bb.222:                              # %vec.epilog.iter.check
                                        #   in Loop: Header=BB3_4 Depth=1
	beqz	$a1, .LBB3_226
.LBB3_223:                              # %vec.epilog.ph
                                        #   in Loop: Header=BB3_4 Depth=1
	andi	$a1, $t5, 508
	vinsgr2vr.b	$vr0, $a0, 0
	vinsgr2vr.b	$vr0, $a0, 1
	vinsgr2vr.b	$vr0, $a0, 2
	vinsgr2vr.b	$vr0, $a0, 3
	vld	$vr1, $sp, 112                  # 16-byte Folded Reload
	vadd.b	$vr0, $vr0, $vr1
.LBB3_224:                              # %vec.epilog.vector.body
                                        #   Parent Loop BB3_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	andi	$a2, $a0, 252
	add.d	$a2, $a6, $a2
	vstelm.w	$vr0, $a2, 0, 0
	addi.w	$a0, $a0, 4
	vaddi.bu	$vr0, $vr0, 4
	bne	$a1, $a0, .LBB3_224
# %bb.225:                              # %vec.epilog.middle.block
                                        #   in Loop: Header=BB3_4 Depth=1
	bne	$t5, $a1, .LBB3_204
	b	.LBB3_205
.LBB3_226:                              #   in Loop: Header=BB3_4 Depth=1
	move	$a1, $a0
	b	.LBB3_204
.LBB3_227:                              #   in Loop: Header=BB3_4 Depth=1
	ori	$a0, $zero, 15
	st.d	$a3, $sp, 472                   # 8-byte Folded Spill
	blt	$a0, $a3, .LBB3_233
.LBB3_228:                              #   in Loop: Header=BB3_4 Depth=1
	st.d	$t4, $sp, 296                   # 8-byte Folded Spill
	move	$t4, $s7
	move	$s7, $ra
	move	$ra, $t5
	move	$t5, $t1
	move	$t1, $t7
	move	$t7, $t0
	move	$t0, $s0
	move	$s0, $a7
	move	$a7, $s4
	move	$s4, $t8
	move	$t8, $t2
	move	$t2, $t6
	move	$t6, $t3
	move	$t3, $fp
	move	$fp, $s3
	move	$s3, $s2
	move	$s2, $a5
	ld.w	$a0, $s1, 36
	ori	$a1, $zero, 29
	st.w	$a1, $s1, 8
	blez	$a0, .LBB3_234
# %bb.229:                              # %.._crit_edge1664_crit_edge.i
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.w	$a4, $s1, 32
.LBB3_230:                              # %._crit_edge1664.i
                                        #   in Loop: Header=BB3_4 Depth=1
	addi.d	$a0, $a0, -1
	srl.w	$a1, $a4, $a0
	andi	$a1, $a1, 1
	st.w	$a0, $s1, 36
	ld.d	$a3, $sp, 472                   # 8-byte Folded Reload
	beqz	$a1, .LBB3_232
# %bb.231:                              #   in Loop: Header=BB3_4 Depth=1
	alsl.w	$a0, $a2, $a3, 4
	ld.d	$a1, $sp, 488                   # 8-byte Folded Reload
	stx.b	$s8, $a1, $a0
.LBB3_232:                              #   in Loop: Header=BB3_4 Depth=1
	addi.w	$a3, $a3, 1
	move	$a5, $s2
	move	$s2, $s3
	move	$s3, $fp
	move	$fp, $t3
	move	$t3, $t6
	move	$t6, $t2
	move	$t2, $t8
	move	$t8, $s4
	move	$s4, $a7
	move	$a7, $s0
	move	$s0, $t0
	move	$t0, $t7
	move	$t7, $t1
	move	$t1, $t5
	move	$t5, $ra
	move	$ra, $s7
	move	$s7, $t4
	ld.d	$t4, $sp, 296                   # 8-byte Folded Reload
	b	.LBB3_227
.LBB3_233:                              #   in Loop: Header=BB3_4 Depth=1
	addi.w	$a2, $a2, 1
	b	.LBB3_157
.LBB3_234:                              # %.lr.ph1663.i
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.d	$a1, $s1, 0
	ld.w	$a3, $a1, 8
	addi.w	$a3, $a3, -1
	b	.LBB3_236
.LBB3_235:                              #   in Loop: Header=BB3_236 Depth=2
	addi.w	$a5, $a0, -8
	addi.w	$a6, $zero, -8
	addi.w	$a3, $a3, -1
	blt	$a6, $a5, .LBB3_230
.LBB3_236:                              #   Parent Loop BB3_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.w	$a4, $zero, -1
	beq	$a3, $a4, .LBB3_239
# %bb.237:                              #   in Loop: Header=BB3_236 Depth=2
	ld.d	$a5, $a1, 0
	ld.w	$a4, $s1, 32
	ld.bu	$a6, $a5, 0
	slli.d	$a4, $a4, 8
	or	$a4, $a4, $a6
	st.w	$a4, $s1, 32
	addi.d	$a0, $a0, 8
	st.w	$a0, $s1, 36
	ld.wu	$a6, $a1, 12
	addi.d	$a5, $a5, 1
	st.d	$a5, $a1, 0
	st.w	$a3, $a1, 8
	addi.d	$a5, $a6, 1
	slli.d	$a6, $a5, 31
	st.w	$a5, $a1, 12
	bgez	$a6, .LBB3_235
# %bb.238:                              #   in Loop: Header=BB3_236 Depth=2
	ld.w	$a5, $a1, 16
	addi.d	$a5, $a5, 1
	st.w	$a5, $a1, 16
	b	.LBB3_235
.LBB3_239:                              #   in Loop: Header=BB3_4 Depth=1
	move	$a3, $zero
	move	$a0, $zero
	move	$a5, $s2
	move	$s2, $s3
	move	$s3, $fp
	move	$fp, $t3
	move	$t3, $t6
	move	$t6, $t2
	move	$t2, $t8
	move	$t8, $s4
	move	$s4, $a7
	move	$a7, $s0
	move	$s0, $t0
	move	$t0, $t7
	move	$t7, $t1
	move	$t1, $t5
	move	$t5, $ra
	move	$ra, $s7
	move	$s7, $t4
	ld.d	$t4, $sp, 296                   # 8-byte Folded Reload
	b	.LBB3_431
.LBB3_240:                              #   in Loop: Header=BB3_4 Depth=1
	bge	$t2, $t5, .LBB3_249
.LBB3_241:                              #   in Loop: Header=BB3_4 Depth=1
	st.d	$t1, $sp, 96                    # 8-byte Folded Spill
	move	$t1, $t0
	move	$t0, $s0
	move	$s0, $a7
	move	$a7, $s4
	move	$s4, $t8
	move	$t8, $t2
	move	$t2, $t6
	move	$t6, $t3
	move	$t3, $fp
	move	$fp, $s3
	move	$s3, $s2
	ld.w	$a0, $s1, 36
	ori	$a1, $zero, 33
	st.w	$a1, $s1, 8
	move	$s2, $a5
	ori	$a1, $zero, 5
	blt	$a0, $a1, .LBB3_244
# %bb.242:                              # %.._crit_edge1636_crit_edge.i
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.w	$a1, $s1, 32
.LBB3_243:                              # %._crit_edge1636.i
                                        #   in Loop: Header=BB3_4 Depth=1
	move	$a2, $zero
	addi.d	$a0, $a0, -5
	srl.w	$a1, $a1, $a0
	andi	$t0, $a1, 31
	st.w	$a0, $s1, 36
	b	.LBB3_296
.LBB3_244:                              # %.lr.ph1635.i
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.d	$a3, $s1, 0
	ld.w	$a1, $a3, 8
	addi.w	$a4, $a1, -1
	b	.LBB3_246
.LBB3_245:                              #   in Loop: Header=BB3_246 Depth=2
	addi.w	$a5, $a0, -8
	addi.w	$a6, $zero, -4
	addi.w	$a4, $a4, -1
	blt	$a6, $a5, .LBB3_243
.LBB3_246:                              #   Parent Loop BB3_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.w	$a1, $zero, -1
	beq	$a4, $a1, .LBB3_332
# %bb.247:                              #   in Loop: Header=BB3_246 Depth=2
	ld.d	$a5, $a3, 0
	ld.w	$a1, $s1, 32
	ld.bu	$a6, $a5, 0
	slli.d	$a1, $a1, 8
	or	$a1, $a1, $a6
	st.w	$a1, $s1, 32
	addi.d	$a0, $a0, 8
	st.w	$a0, $s1, 36
	ld.wu	$a6, $a3, 12
	addi.d	$a5, $a5, 1
	st.d	$a5, $a3, 0
	st.w	$a4, $a3, 8
	addi.d	$a5, $a6, 1
	slli.d	$a6, $a5, 31
	st.w	$a5, $a3, 12
	bgez	$a6, .LBB3_245
# %bb.248:                              #   in Loop: Header=BB3_246 Depth=2
	ld.w	$a5, $a3, 16
	addi.d	$a5, $a5, 1
	st.w	$a5, $a3, 16
	b	.LBB3_245
.LBB3_249:                              # %.preheader1392.i
                                        #   in Loop: Header=BB3_4 Depth=1
	st.d	$a5, $sp, 80                    # 8-byte Folded Spill
	st.d	$t0, $sp, 104                   # 8-byte Folded Spill
	st.d	$s4, $sp, 40                    # 8-byte Folded Spill
	st.d	$t4, $sp, 296                   # 8-byte Folded Spill
	st.d	$t5, $sp, 240                   # 8-byte Folded Spill
	st.d	$a7, $sp, 64                    # 8-byte Folded Spill
	st.d	$t7, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 72                    # 8-byte Folded Spill
	st.d	$s7, $sp, 56                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 440                   # 8-byte Folded Reload
	st.d	$a0, $sp, 440                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 456                   # 8-byte Folded Reload
	st.d	$a0, $sp, 456                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 448                   # 8-byte Folded Reload
	st.d	$a0, $sp, 448                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 464                   # 8-byte Folded Reload
	st.d	$a0, $sp, 464                   # 8-byte Folded Spill
	st.d	$t1, $sp, 96                    # 8-byte Folded Spill
	blez	$t5, .LBB3_282
# %bb.250:                              # %.preheader1391.lr.ph.i
                                        #   in Loop: Header=BB3_4 Depth=1
	st.d	$s3, $sp, 48                    # 8-byte Folded Spill
	st.d	$s2, $sp, 208                   # 8-byte Folded Spill
	st.d	$s6, $sp, 8                     # 8-byte Folded Spill
	st.d	$s5, $sp, 16                    # 8-byte Folded Spill
	st.d	$s1, $sp, 24                    # 8-byte Folded Spill
	move	$s0, $zero
	bstrpick.d	$s1, $t4, 31, 0
	bstrpick.d	$a0, $t4, 30, 3
	slli.d	$a0, $a0, 3
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	ld.d	$s6, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 400                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 192                   # 8-byte Folded Reload
	b	.LBB3_252
.LBB3_251:                              # %CreateDecodeTables.exit.i
                                        #   in Loop: Header=BB3_252 Depth=2
	slli.d	$a0, $s0, 2
	ld.d	$a1, $sp, 392                   # 8-byte Folded Reload
	stx.w	$s8, $a1, $a0
	addi.d	$s0, $s0, 1
	ld.d	$a1, $sp, 432                   # 8-byte Folded Reload
	addi.d	$a1, $a1, 258
	addi.d	$s2, $s2, 258
	addi.d	$s3, $s3, 1032
	addi.d	$s6, $s6, 1032
	ori	$s8, $zero, 1
	beq	$s0, $s4, .LBB3_281
.LBB3_252:                              # %.preheader1391.i
                                        #   Parent Loop BB3_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB3_257 Depth 3
                                        #       Child Loop BB3_260 Depth 3
                                        #       Child Loop BB3_263 Depth 3
                                        #         Child Loop BB3_265 Depth 4
                                        #       Child Loop BB3_268 Depth 3
                                        #       Child Loop BB3_272 Depth 3
                                        #       Child Loop BB3_277 Depth 3
                                        #       Child Loop BB3_280 Depth 3
	slli.d	$fp, $s0, 10
	st.d	$a1, $sp, 432                   # 8-byte Folded Spill
	blez	$t4, .LBB3_255
# %bb.253:                              # %.lr.ph1534.i
                                        #   in Loop: Header=BB3_252 Depth=2
	ori	$a0, $zero, 8
	bgeu	$t4, $a0, .LBB3_256
# %bb.254:                              #   in Loop: Header=BB3_252 Depth=2
	move	$a1, $zero
	move	$s7, $zero
	ori	$s8, $zero, 32
	b	.LBB3_259
.LBB3_255:                              # %.preheader68.i.thread.i
                                        #   in Loop: Header=BB3_252 Depth=2
	alsl.d	$a0, $s0, $fp, 3
	add.d	$a0, $ra, $a0
	ori	$a2, $zero, 92
	move	$a1, $zero
	move	$s4, $ra
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	move	$s7, $zero
	st.d	$zero, $sp, 384                 # 8-byte Folded Spill
	st.d	$zero, $sp, 376                 # 8-byte Folded Spill
	st.d	$zero, $sp, 368                 # 8-byte Folded Spill
	st.d	$zero, $sp, 360                 # 8-byte Folded Spill
	st.d	$zero, $sp, 352                 # 8-byte Folded Spill
	move	$a6, $zero
	move	$a7, $zero
	move	$t0, $zero
	move	$t1, $zero
	move	$t2, $zero
	move	$t3, $zero
	move	$t4, $zero
	move	$t5, $zero
	move	$t6, $zero
	move	$t7, $zero
	move	$t8, $zero
	move	$ra, $zero
	move	$a5, $zero
	move	$a1, $zero
	move	$s5, $zero
	move	$a2, $zero
	move	$a3, $zero
	ori	$s8, $zero, 32
	b	.LBB3_270
.LBB3_256:                              # %vector.body531.preheader
                                        #   in Loop: Header=BB3_252 Depth=2
	move	$a0, $a1
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	vld	$vr3, $sp, 272                  # 16-byte Folded Reload
	vori.b	$vr2, $vr3, 0
	vori.b	$vr0, $vr6, 0
	vori.b	$vr1, $vr6, 0
	.p2align	4, , 16
.LBB3_257:                              # %vector.body531
                                        #   Parent Loop BB3_4 Depth=1
                                        #     Parent Loop BB3_252 Depth=2
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
	bnez	$a1, .LBB3_257
# %bb.258:                              # %middle.block539
                                        #   in Loop: Header=BB3_252 Depth=2
	vmin.wu	$vr2, $vr2, $vr3
	vbsrl.v	$vr3, $vr2, 8
	vmin.wu	$vr2, $vr3, $vr2
	vbsrl.v	$vr3, $vr2, 4
	vmin.wu	$vr2, $vr3, $vr2
	vpickve2gr.w	$s8, $vr2, 0
	vmax.wu	$vr0, $vr0, $vr1
	vbsrl.v	$vr1, $vr0, 8
	vmax.wu	$vr0, $vr1, $vr0
	vbsrl.v	$vr1, $vr0, 4
	vmax.wu	$vr0, $vr1, $vr0
	vpickve2gr.w	$s7, $vr0, 0
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	move	$a1, $a0
	beq	$a0, $s1, .LBB3_261
.LBB3_259:                              # %scalar.ph526.preheader
                                        #   in Loop: Header=BB3_252 Depth=2
	sub.d	$a0, $s1, $a1
	add.d	$a1, $s2, $a1
	.p2align	4, , 16
.LBB3_260:                              # %scalar.ph526
                                        #   Parent Loop BB3_4 Depth=1
                                        #     Parent Loop BB3_252 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.bu	$a2, $a1, 0
	sltu	$a3, $a2, $s7
	masknez	$a4, $a2, $a3
	maskeqz	$a3, $s7, $a3
	or	$s7, $a3, $a4
	sltu	$a3, $s8, $a2
	masknez	$a2, $a2, $a3
	maskeqz	$a3, $s8, $a3
	or	$s8, $a3, $a2
	addi.d	$a0, $a0, -1
	addi.d	$a1, $a1, 1
	bnez	$a0, .LBB3_260
.LBB3_261:                              # %.preheader69.us.i.preheader.i
                                        #   in Loop: Header=BB3_252 Depth=2
	move	$a1, $zero
	st.d	$fp, $sp, 264                   # 8-byte Folded Spill
	alsl.d	$a0, $s0, $fp, 3
	ld.d	$a2, $sp, 336                   # 8-byte Folded Reload
	add.d	$a2, $a2, $a0
	move	$a6, $s8
	b	.LBB3_263
	.p2align	4, , 16
.LBB3_262:                              # %._crit_edge.us.i.i
                                        #   in Loop: Header=BB3_263 Depth=3
	addi.w	$a6, $a3, 1
	beq	$a3, $s7, .LBB3_267
.LBB3_263:                              # %.preheader69.us.i.i
                                        #   Parent Loop BB3_4 Depth=1
                                        #     Parent Loop BB3_252 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB3_265 Depth 4
	move	$a4, $zero
	move	$a5, $zero
	move	$a3, $a6
	b	.LBB3_265
	.p2align	4, , 16
.LBB3_264:                              #   in Loop: Header=BB3_265 Depth=4
	addi.d	$a5, $a5, 1
	addi.d	$a4, $a4, 1
	beq	$s1, $a5, .LBB3_262
.LBB3_265:                              #   Parent Loop BB3_4 Depth=1
                                        #     Parent Loop BB3_252 Depth=2
                                        #       Parent Loop BB3_263 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ldx.bu	$a6, $s2, $a5
	bne	$a3, $a6, .LBB3_264
# %bb.266:                              #   in Loop: Header=BB3_265 Depth=4
	slli.d	$a6, $a1, 2
	stx.w	$a4, $a2, $a6
	addi.w	$a1, $a1, 1
	b	.LBB3_264
.LBB3_267:                              # %.preheader68.i.i
                                        #   in Loop: Header=BB3_252 Depth=2
	add.d	$s4, $ra, $a0
	ori	$a2, $zero, 92
	move	$a0, $s4
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	.p2align	4, , 16
.LBB3_268:                              # %.lr.ph.i.i
                                        #   Parent Loop BB3_4 Depth=1
                                        #     Parent Loop BB3_252 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ldx.bu	$a1, $s2, $a0
	alsl.d	$a1, $a1, $s4, 2
	ld.w	$a2, $a1, 4
	addi.d	$a2, $a2, 1
	addi.d	$a0, $a0, 1
	st.w	$a2, $a1, 4
	bne	$s1, $a0, .LBB3_268
# %bb.269:                              # %.preheader66.loopexit.i.i
                                        #   in Loop: Header=BB3_252 Depth=2
	ld.w	$a3, $s4, 4
	ld.w	$a2, $s4, 8
	ld.w	$s5, $s4, 12
	ld.w	$a1, $s4, 16
	ld.w	$a5, $s4, 20
	ld.w	$ra, $s4, 24
	ld.w	$t8, $s4, 28
	ld.w	$t7, $s4, 32
	ld.w	$t6, $s4, 36
	ld.w	$t5, $s4, 40
	ld.w	$t4, $s4, 44
	ld.w	$t3, $s4, 48
	ld.w	$t2, $s4, 52
	ld.w	$t1, $s4, 56
	ld.w	$t0, $s4, 60
	ld.w	$a7, $s4, 64
	ld.w	$a6, $s4, 68
	ld.w	$a0, $s4, 72
	st.d	$a0, $sp, 352                   # 8-byte Folded Spill
	ld.w	$a0, $s4, 76
	st.d	$a0, $sp, 360                   # 8-byte Folded Spill
	ld.w	$a0, $s4, 80
	st.d	$a0, $sp, 368                   # 8-byte Folded Spill
	ld.w	$a0, $s4, 84
	st.d	$a0, $sp, 376                   # 8-byte Folded Spill
	ld.w	$a0, $s4, 88
	st.d	$a0, $sp, 384                   # 8-byte Folded Spill
	ld.d	$s4, $sp, 480                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 264                   # 8-byte Folded Reload
.LBB3_270:                              # %.preheader66.i.i
                                        #   in Loop: Header=BB3_252 Depth=2
	alsl.d	$a0, $s0, $fp, 3
	add.d	$s4, $s4, $a0
	ld.d	$a4, $sp, 400                   # 8-byte Folded Reload
	add.d	$a0, $a4, $a0
	st.w	$a3, $s4, 4
	add.d	$a2, $a3, $a2
	st.w	$a2, $s4, 8
	add.d	$a2, $a2, $s5
	st.w	$a2, $s4, 12
	add.d	$a1, $a2, $a1
	st.w	$a1, $s4, 16
	add.d	$a1, $a1, $a5
	st.w	$a1, $s4, 20
	add.d	$a1, $a1, $ra
	st.w	$a1, $s4, 24
	add.d	$a1, $a1, $t8
	st.w	$a1, $s4, 28
	add.d	$a1, $a1, $t7
	st.w	$a1, $s4, 32
	add.d	$a1, $a1, $t6
	st.w	$a1, $s4, 36
	add.d	$a1, $a1, $t5
	st.w	$a1, $s4, 40
	add.d	$a1, $a1, $t4
	st.w	$a1, $s4, 44
	add.d	$a1, $a1, $t3
	st.w	$a1, $s4, 48
	add.d	$a1, $a1, $t2
	st.w	$a1, $s4, 52
	add.d	$a1, $a1, $t1
	st.w	$a1, $s4, 56
	add.d	$a1, $a1, $t0
	st.w	$a1, $s4, 60
	add.d	$a1, $a1, $a7
	st.w	$a1, $s4, 64
	add.d	$a1, $a1, $a6
	st.w	$a1, $s4, 68
	ld.d	$a2, $sp, 352                   # 8-byte Folded Reload
	add.d	$a1, $a1, $a2
	st.w	$a1, $s4, 72
	ld.d	$a2, $sp, 360                   # 8-byte Folded Reload
	add.d	$a1, $a1, $a2
	st.w	$a1, $s4, 76
	ld.d	$a2, $sp, 368                   # 8-byte Folded Reload
	add.d	$a1, $a1, $a2
	st.w	$a1, $s4, 80
	ld.d	$a2, $sp, 376                   # 8-byte Folded Reload
	add.d	$a1, $a1, $a2
	st.w	$a1, $s4, 84
	ld.d	$a2, $sp, 384                   # 8-byte Folded Reload
	add.d	$a1, $a1, $a2
	st.w	$a1, $s4, 88
	ori	$a2, $zero, 92
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a6, $sp, 344                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 296                   # 8-byte Folded Reload
	blez	$t4, .LBB3_273
# %bb.271:                              # %.lr.ph82.preheader.i.i
                                        #   in Loop: Header=BB3_252 Depth=2
	slli.d	$a0, $s8, 2
	ldx.w	$a3, $s4, $a0
	move	$a4, $zero
	addi.w	$a1, $s7, 1
	sub.d	$a1, $a1, $s8
	move	$a2, $s3
	.p2align	4, , 16
.LBB3_272:                              # %.lr.ph82.i.i
                                        #   Parent Loop BB3_4 Depth=1
                                        #     Parent Loop BB3_252 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$a5, $a2, $a0
	ldx.w	$a5, $a5, $a6
	sub.d	$a3, $a5, $a3
	add.d	$a3, $a3, $a4
	addi.d	$a4, $a3, -1
	stx.w	$a4, $a2, $a0
	slli.d	$a4, $a3, 1
	addi.d	$a1, $a1, -1
	addi.d	$a2, $a2, 4
	move	$a3, $a5
	bnez	$a1, .LBB3_272
.LBB3_273:                              # %.preheader.i.i
                                        #   in Loop: Header=BB3_252 Depth=2
	ld.d	$ra, $sp, 480                   # 8-byte Folded Reload
	vld	$vr6, $sp, 416                  # 16-byte Folded Reload
	ld.d	$s4, $sp, 240                   # 8-byte Folded Reload
	bgeu	$s8, $s7, .LBB3_251
# %bb.274:                              # %.lr.ph85.preheader.i.i
                                        #   in Loop: Header=BB3_252 Depth=2
	bstrpick.d	$a3, $s8, 31, 0
	sub.d	$a1, $s7, $a3
	ori	$a0, $zero, 4
	bgeu	$a1, $a0, .LBB3_276
# %bb.275:                              #   in Loop: Header=BB3_252 Depth=2
	move	$a0, $a3
	b	.LBB3_279
.LBB3_276:                              # %vector.ph515
                                        #   in Loop: Header=BB3_252 Depth=2
	move	$a2, $a1
	bstrins.d	$a2, $zero, 1, 0
	add.d	$a0, $a2, $a3
	slli.d	$a3, $a3, 2
	move	$a4, $a2
	.p2align	4, , 16
.LBB3_277:                              # %vector.body518
                                        #   Parent Loop BB3_4 Depth=1
                                        #     Parent Loop BB3_252 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	vldx	$vr0, $s3, $a3
	vldx	$vr1, $s6, $a3
	vslli.w	$vr0, $vr0, 1
	vsub.w	$vr0, $vr0, $vr1
	vaddi.wu	$vr0, $vr0, 2
	vstx	$vr0, $s6, $a3
	addi.d	$a4, $a4, -4
	addi.d	$a3, $a3, 16
	bnez	$a4, .LBB3_277
# %bb.278:                              # %middle.block524
                                        #   in Loop: Header=BB3_252 Depth=2
	beq	$a1, $a2, .LBB3_251
.LBB3_279:                              # %.lr.ph85.i.i.preheader
                                        #   in Loop: Header=BB3_252 Depth=2
	slli.d	$a1, $a0, 2
	sub.d	$a0, $s7, $a0
	.p2align	4, , 16
.LBB3_280:                              # %.lr.ph85.i.i
                                        #   Parent Loop BB3_4 Depth=1
                                        #     Parent Loop BB3_252 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ldx.w	$a2, $s3, $a1
	ldx.w	$a3, $s6, $a1
	slli.d	$a2, $a2, 1
	sub.d	$a2, $a2, $a3
	addi.d	$a2, $a2, 2
	stx.w	$a2, $s6, $a1
	addi.d	$a0, $a0, -1
	addi.d	$a1, $a1, 4
	bnez	$a0, .LBB3_280
	b	.LBB3_251
.LBB3_281:                              #   in Loop: Header=BB3_4 Depth=1
	ld.d	$s1, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 208                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 48                    # 8-byte Folded Reload
	b	.LBB3_283
.LBB3_282:                              #   in Loop: Header=BB3_4 Depth=1
	move	$s4, $zero
.LBB3_283:                              # %._crit_edge1539.i
                                        #   in Loop: Header=BB3_4 Depth=1
	ori	$a0, $zero, 3192
	ldx.w	$fp, $s1, $a0
	ld.w	$s0, $s1, 40
	ori	$a2, $zero, 1024
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 15
	ori	$a1, $zero, 4080
	ld.d	$a2, $sp, 216                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 184                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB3_284:                              # %.preheader1389.i
                                        #   Parent Loop BB3_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	slli.d	$a4, $a0, 4
	addi.d	$a5, $a4, 15
	st.b	$a5, $a2, 0
	addi.d	$a5, $a4, 14
	st.b	$a5, $a2, -1
	addi.d	$a5, $a4, 13
	st.b	$a5, $a2, -2
	addi.d	$a5, $a4, 12
	st.b	$a5, $a2, -3
	addi.d	$a5, $a4, 11
	st.b	$a5, $a2, -4
	addi.d	$a5, $a4, 10
	st.b	$a5, $a2, -5
	addi.d	$a5, $a4, 9
	st.b	$a5, $a2, -6
	addi.d	$a5, $a4, 8
	st.b	$a5, $a2, -7
	addi.d	$a5, $a4, 7
	st.b	$a5, $a2, -8
	addi.d	$a5, $a4, 6
	st.b	$a5, $a2, -9
	addi.d	$a5, $a4, 5
	st.b	$a5, $a2, -10
	addi.d	$a5, $a4, 4
	st.b	$a5, $a2, -11
	addi.d	$a5, $a4, 3
	st.b	$a5, $a2, -12
	addi.d	$a5, $a4, 2
	st.b	$a5, $a2, -13
	addi.d	$a5, $a4, 1
	st.b	$a5, $a2, -14
	st.b	$a4, $a2, -15
	st.w	$a1, $a3, 0
	addi.d	$a0, $a0, -1
	addi.d	$a3, $a3, -4
	addi.d	$a1, $a1, -16
	addi.w	$a4, $zero, -1
	addi.d	$a2, $a2, -16
	bne	$a0, $a4, .LBB3_284
# %bb.285:                              #   in Loop: Header=BB3_4 Depth=1
	addi.w	$a0, $fp, 1
	st.d	$a0, $sp, 432                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 408                   # 8-byte Folded Reload
	mul.w	$fp, $s0, $a0
	ld.d	$ra, $sp, 480                   # 8-byte Folded Reload
	vld	$vr3, $sp, 304                  # 16-byte Folded Reload
	vld	$vr6, $sp, 416                  # 16-byte Folded Reload
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	ld.d	$t4, $sp, 296                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 64                    # 8-byte Folded Reload
	ld.d	$t7, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	blez	$t7, .LBB3_295
# %bb.286:                              #   in Loop: Header=BB3_4 Depth=1
	ld.d	$a0, $sp, 328                   # 8-byte Folded Reload
	ld.bu	$a3, $a0, 0
	move	$t3, $zero
	move	$t6, $zero
	slli.d	$a0, $a3, 10
	alsl.d	$a0, $a3, $a0, 3
	add.d	$a1, $ra, $a0
	st.d	$a1, $sp, 456                   # 8-byte Folded Spill
	slli.d	$a1, $a3, 2
	ld.d	$a2, $sp, 392                   # 8-byte Folded Reload
	ldx.w	$s7, $a2, $a1
	ld.d	$a1, $sp, 336                   # 8-byte Folded Reload
	add.d	$a1, $a1, $a0
	st.d	$a1, $sp, 448                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 400                   # 8-byte Folded Reload
	add.d	$a0, $a1, $a0
	st.d	$a0, $sp, 440                   # 8-byte Folded Spill
	ori	$a2, $zero, 256
	ori	$t8, $zero, 49
	move	$s2, $s7
	ld.d	$t0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$t5, $sp, 240                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 80                    # 8-byte Folded Reload
	move	$t2, $s4
	move	$s4, $a3
	ld.d	$t1, $sp, 96                    # 8-byte Folded Reload
.LBB3_287:                              #   in Loop: Header=BB3_4 Depth=1
	st.d	$t0, $sp, 104                   # 8-byte Folded Spill
	move	$t0, $s0
	move	$s0, $a7
	move	$a7, $s4
	move	$s4, $t8
	move	$t8, $t2
	move	$t2, $t6
	move	$t6, $t3
	move	$t3, $fp
	move	$fp, $s3
	ld.w	$a0, $s1, 36
	ori	$a1, $zero, 36
	st.w	$a1, $s1, 8
	move	$s3, $s2
	bge	$a0, $s2, .LBB3_293
# %bb.288:                              # %.lr.ph1549.i
                                        #   in Loop: Header=BB3_4 Depth=1
	move	$s2, $a5
	ld.d	$a1, $s1, 0
	ld.w	$a3, $a1, 8
	addi.w	$a3, $a3, -1
	b	.LBB3_290
.LBB3_289:                              #   in Loop: Header=BB3_290 Depth=2
	addi.w	$a3, $a3, -1
	bge	$a0, $s3, .LBB3_294
.LBB3_290:                              #   Parent Loop BB3_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.w	$a4, $zero, -1
	beq	$a3, $a4, .LBB3_337
# %bb.291:                              #   in Loop: Header=BB3_290 Depth=2
	ld.d	$a5, $a1, 0
	ld.w	$a4, $s1, 32
	ld.bu	$a6, $a5, 0
	slli.d	$a4, $a4, 8
	or	$a4, $a4, $a6
	st.w	$a4, $s1, 32
	addi.w	$a0, $a0, 8
	st.w	$a0, $s1, 36
	ld.wu	$a6, $a1, 12
	addi.d	$a5, $a5, 1
	st.d	$a5, $a1, 0
	st.w	$a3, $a1, 8
	addi.d	$a5, $a6, 1
	slli.d	$a6, $a5, 31
	st.w	$a5, $a1, 12
	bgez	$a6, .LBB3_289
# %bb.292:                              #   in Loop: Header=BB3_290 Depth=2
	ld.w	$a5, $a1, 16
	addi.d	$a5, $a5, 1
	st.w	$a5, $a1, 16
	b	.LBB3_289
.LBB3_293:                              # %.._crit_edge1550_crit_edge.i
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.w	$a4, $s1, 32
.LBB3_294:                              # %._crit_edge1550.i
                                        #   in Loop: Header=BB3_4 Depth=1
	move	$s2, $s3
	sub.w	$a1, $a0, $s3
	srl.w	$a0, $a4, $a1
	addi.d	$a3, $zero, -1
	sll.w	$a3, $a3, $s3
	andn	$a5, $a0, $a3
	st.w	$a1, $s1, 36
	ori	$a3, $zero, 20
	b	.LBB3_298
.LBB3_295:                              #   in Loop: Header=BB3_4 Depth=1
	move	$t3, $zero
	move	$t8, $zero
	move	$t6, $zero
	move	$a3, $zero
	addi.w	$a0, $zero, -4
	ori	$a2, $zero, 256
	ld.d	$t0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$t5, $sp, 240                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a5, $sp, 80                    # 8-byte Folded Reload
	move	$t2, $s4
	ld.d	$t1, $sp, 96                    # 8-byte Folded Reload
	move	$s4, $a1
	b	.LBB3_431
.LBB3_296:                              #   in Loop: Header=BB3_4 Depth=1
	move	$a5, $s2
	move	$s2, $s3
	move	$s3, $fp
	move	$fp, $t3
	move	$t3, $t6
	move	$t6, $t2
	blt	$a2, $t4, .LBB3_313
# %bb.297:                              #   in Loop: Header=BB3_4 Depth=1
	addi.w	$t2, $t8, 1
	move	$t8, $s4
	move	$s4, $a7
	move	$a7, $s0
	move	$s0, $t0
	move	$t0, $t1
	ld.d	$t1, $sp, 96                    # 8-byte Folded Reload
	b	.LBB3_240
.LBB3_298:                              #   in Loop: Header=BB3_4 Depth=1
	move	$s3, $fp
	addi.w	$a0, $zero, -4
	bge	$a3, $s2, .LBB3_300
# %bb.299:                              #   in Loop: Header=BB3_4 Depth=1
	move	$a3, $zero
	b	.LBB3_336
.LBB3_300:                              #   in Loop: Header=BB3_4 Depth=1
	move	$fp, $s3
	slli.d	$a3, $s2, 2
	ld.d	$a4, $sp, 440                   # 8-byte Folded Reload
	ldx.w	$a4, $a4, $a3
	move	$s3, $s2
	move	$s2, $a5
	addi.w	$a5, $a5, 0
	bge	$a4, $a5, .LBB3_310
# %bb.301:                              #   in Loop: Header=BB3_4 Depth=1
	addi.w	$s3, $s3, 1
.LBB3_302:                              #   in Loop: Header=BB3_4 Depth=1
	ori	$a0, $zero, 37
	st.w	$a0, $s1, 8
	blez	$a1, .LBB3_305
# %bb.303:                              # %.._crit_edge1629_crit_edge.i
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.w	$a4, $s1, 32
.LBB3_304:                              # %._crit_edge1629.i
                                        #   in Loop: Header=BB3_4 Depth=1
	addi.w	$a1, $a1, -1
	srl.w	$a0, $a4, $a1
	andi	$s0, $a0, 1
	bstrins.d	$a0, $s2, 63, 1
	st.w	$a1, $s1, 36
	move	$a5, $a0
	ori	$a3, $zero, 20
	move	$s2, $s3
	b	.LBB3_298
.LBB3_305:                              # %.lr.ph1628.i
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.d	$a0, $s1, 0
	ld.w	$a3, $a0, 8
	addi.w	$a3, $a3, -1
	b	.LBB3_307
.LBB3_306:                              #   in Loop: Header=BB3_307 Depth=2
	addi.w	$a5, $a1, -8
	addi.w	$a6, $zero, -8
	addi.w	$a3, $a3, -1
	blt	$a6, $a5, .LBB3_304
.LBB3_307:                              #   Parent Loop BB3_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.w	$a4, $zero, -1
	beq	$a3, $a4, .LBB3_337
# %bb.308:                              #   in Loop: Header=BB3_307 Depth=2
	ld.d	$a5, $a0, 0
	ld.w	$a4, $s1, 32
	ld.bu	$a6, $a5, 0
	slli.d	$a4, $a4, 8
	or	$a4, $a4, $a6
	st.w	$a4, $s1, 32
	addi.d	$a1, $a1, 8
	st.w	$a1, $s1, 36
	ld.wu	$a6, $a0, 12
	addi.d	$a5, $a5, 1
	st.d	$a5, $a0, 0
	st.w	$a3, $a0, 8
	addi.d	$a5, $a6, 1
	slli.d	$a6, $a5, 31
	st.w	$a5, $a0, 12
	bgez	$a6, .LBB3_306
# %bb.309:                              #   in Loop: Header=BB3_307 Depth=2
	ld.w	$a5, $a0, 16
	addi.d	$a5, $a5, 1
	st.w	$a5, $a0, 16
	b	.LBB3_306
.LBB3_310:                              #   in Loop: Header=BB3_4 Depth=1
	move	$a4, $s3
	ld.d	$a1, $sp, 456                   # 8-byte Folded Reload
	ldx.w	$a1, $a1, $a3
	sub.w	$a1, $s2, $a1
	ori	$a3, $zero, 257
	move	$a5, $s2
	bgeu	$a3, $a1, .LBB3_312
# %bb.311:                              #   in Loop: Header=BB3_4 Depth=1
	move	$a3, $zero
	move	$s2, $a4
	b	.LBB3_335
.LBB3_312:                              #   in Loop: Header=BB3_4 Depth=1
	move	$ra, $t5
	ld.d	$a0, $sp, 464                   # 8-byte Folded Reload
	st.d	$a0, $sp, 464                   # 8-byte Folded Spill
	slli.d	$a0, $a1, 2
	ld.d	$a1, $sp, 448                   # 8-byte Folded Reload
	st.d	$a1, $sp, 448                   # 8-byte Folded Spill
	ldx.w	$t5, $a1, $a0
	ld.d	$a3, $sp, 224                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 160                   # 8-byte Folded Reload
	move	$s2, $a4
	move	$s3, $fp
	move	$fp, $t3
	move	$t3, $t6
	move	$t6, $t2
	move	$t2, $t8
	move	$t8, $s4
	move	$s4, $a7
	move	$a7, $s0
	b	.LBB3_338
.LBB3_313:                              #   in Loop: Header=BB3_4 Depth=1
	move	$a4, $t0
	addi.w	$a0, $t0, -21
	addi.w	$a1, $zero, -20
	bgeu	$a0, $a1, .LBB3_315
# %bb.314:                              #   in Loop: Header=BB3_4 Depth=1
	move	$a3, $zero
	addi.w	$a0, $zero, -4
	move	$t2, $t8
	move	$t8, $s4
	move	$s4, $a7
	move	$a7, $s0
	move	$s0, $a4
	b	.LBB3_333
.LBB3_315:                              #   in Loop: Header=BB3_4 Depth=1
	move	$t2, $t8
	move	$t8, $s4
	move	$s4, $a7
	move	$a7, $s0
	move	$s0, $a4
	move	$t0, $t1
	ld.d	$t1, $sp, 96                    # 8-byte Folded Reload
.LBB3_316:                              #   in Loop: Header=BB3_4 Depth=1
	st.d	$t1, $sp, 96                    # 8-byte Folded Spill
	move	$t1, $t0
	move	$t0, $s0
	move	$s0, $a7
	move	$a7, $s4
	move	$s4, $t8
	move	$t8, $t2
	move	$t2, $t6
	move	$t6, $t3
	move	$t3, $fp
	move	$fp, $s3
	move	$s3, $s2
	ld.w	$a0, $s1, 36
	ori	$a1, $zero, 34
	st.w	$a1, $s1, 8
	move	$s2, $a5
	blez	$a0, .LBB3_322
# %bb.317:                              # %.._crit_edge1643_crit_edge.i
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.w	$a4, $s1, 32
.LBB3_318:                              # %._crit_edge1643.i
                                        #   in Loop: Header=BB3_4 Depth=1
	addi.w	$a0, $a0, -1
	srl.w	$a1, $a4, $a0
	andi	$a1, $a1, 1
	st.w	$a0, $s1, 36
	beqz	$a1, .LBB3_334
.LBB3_319:                              #   in Loop: Header=BB3_4 Depth=1
	ori	$a1, $zero, 35
	st.w	$a1, $s1, 8
	blez	$a0, .LBB3_327
# %bb.320:                              # %.._crit_edge1650_crit_edge.i
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.w	$a4, $s1, 32
.LBB3_321:                              # %._crit_edge1650.i
                                        #   in Loop: Header=BB3_4 Depth=1
	addi.d	$a0, $a0, -1
	st.w	$a0, $s1, 36
	srl.w	$a0, $a4, $a0
	andi	$a0, $a0, 1
	sub.d	$a0, $zero, $a0
	ori	$a0, $a0, 1
	add.d	$t0, $a0, $t0
	move	$a5, $s2
	move	$s2, $s3
	move	$s3, $fp
	move	$fp, $t3
	move	$t3, $t6
	move	$t6, $t2
	b	.LBB3_313
.LBB3_322:                              # %.lr.ph1642.i
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.d	$a1, $s1, 0
	ld.w	$a3, $a1, 8
	addi.w	$a3, $a3, -1
	b	.LBB3_324
.LBB3_323:                              #   in Loop: Header=BB3_324 Depth=2
	addi.w	$a5, $a0, -8
	addi.w	$a6, $zero, -8
	addi.w	$a3, $a3, -1
	blt	$a6, $a5, .LBB3_318
.LBB3_324:                              #   Parent Loop BB3_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.w	$a4, $zero, -1
	beq	$a3, $a4, .LBB3_332
# %bb.325:                              #   in Loop: Header=BB3_324 Depth=2
	ld.d	$a5, $a1, 0
	ld.w	$a4, $s1, 32
	ld.bu	$a6, $a5, 0
	slli.d	$a4, $a4, 8
	or	$a4, $a4, $a6
	st.w	$a4, $s1, 32
	addi.d	$a0, $a0, 8
	st.w	$a0, $s1, 36
	ld.wu	$a6, $a1, 12
	addi.d	$a5, $a5, 1
	st.d	$a5, $a1, 0
	st.w	$a3, $a1, 8
	addi.d	$a5, $a6, 1
	slli.d	$a6, $a5, 31
	st.w	$a5, $a1, 12
	bgez	$a6, .LBB3_323
# %bb.326:                              #   in Loop: Header=BB3_324 Depth=2
	ld.w	$a5, $a1, 16
	addi.d	$a5, $a5, 1
	st.w	$a5, $a1, 16
	b	.LBB3_323
.LBB3_327:                              # %.lr.ph1649.i
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.d	$a1, $s1, 0
	ld.w	$a3, $a1, 8
	addi.w	$a3, $a3, -1
	b	.LBB3_329
.LBB3_328:                              #   in Loop: Header=BB3_329 Depth=2
	addi.w	$a5, $a0, -8
	addi.w	$a6, $zero, -8
	addi.w	$a3, $a3, -1
	blt	$a6, $a5, .LBB3_321
.LBB3_329:                              #   Parent Loop BB3_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.w	$a4, $zero, -1
	beq	$a3, $a4, .LBB3_332
# %bb.330:                              #   in Loop: Header=BB3_329 Depth=2
	ld.d	$a5, $a1, 0
	ld.w	$a4, $s1, 32
	ld.bu	$a6, $a5, 0
	slli.d	$a4, $a4, 8
	or	$a4, $a4, $a6
	st.w	$a4, $s1, 32
	addi.d	$a0, $a0, 8
	st.w	$a0, $s1, 36
	ld.wu	$a6, $a1, 12
	addi.d	$a5, $a5, 1
	st.d	$a5, $a1, 0
	st.w	$a3, $a1, 8
	addi.d	$a5, $a6, 1
	slli.d	$a6, $a5, 31
	st.w	$a5, $a1, 12
	bgez	$a6, .LBB3_328
# %bb.331:                              #   in Loop: Header=BB3_329 Depth=2
	ld.w	$a5, $a1, 16
	addi.d	$a5, $a5, 1
	st.w	$a5, $a1, 16
	b	.LBB3_328
.LBB3_332:                              #   in Loop: Header=BB3_4 Depth=1
	move	$a3, $zero
	move	$a0, $zero
	move	$a5, $s2
	move	$s2, $s3
	move	$s3, $fp
	move	$fp, $t3
	move	$t3, $t6
	move	$t6, $t2
	move	$t2, $t8
	move	$t8, $s4
	move	$s4, $a7
	move	$a7, $s0
	move	$s0, $t0
.LBB3_333:                              # %BZ2_decompress.exit
                                        #   in Loop: Header=BB3_4 Depth=1
	move	$t0, $t1
	ld.d	$t1, $sp, 96                    # 8-byte Folded Reload
	b	.LBB3_431
.LBB3_334:                              #   in Loop: Header=BB3_4 Depth=1
	slli.d	$a0, $t8, 8
	alsl.d	$a0, $t8, $a0, 1
	ld.d	$a1, $sp, 192                   # 8-byte Folded Reload
	add.d	$a0, $a1, $a0
	stx.b	$t0, $a0, $a2
	addi.w	$a2, $a2, 1
	b	.LBB3_296
.LBB3_335:                              # %BZ2_decompress.exit
                                        #   in Loop: Header=BB3_4 Depth=1
	move	$s3, $fp
.LBB3_336:                              # %BZ2_decompress.exit
                                        #   in Loop: Header=BB3_4 Depth=1
	move	$fp, $t3
	move	$t3, $t6
	move	$t6, $t2
	move	$t2, $t8
	move	$t8, $s4
	move	$s4, $a7
	b	.LBB3_428
.LBB3_337:                              #   in Loop: Header=BB3_4 Depth=1
	move	$a3, $zero
	move	$a0, $zero
	move	$a5, $s2
	move	$s2, $s3
	b	.LBB3_335
.LBB3_338:                              # %.loopexit1376.i
                                        #   in Loop: Header=BB3_4 Depth=1
	move	$s0, $t0
.LBB3_339:                              # %.loopexit1376.i
                                        #   in Loop: Header=BB3_4 Depth=1
	st.d	$t5, $sp, 96                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 432                   # 8-byte Folded Reload
	bne	$t5, $a0, .LBB3_354
# %bb.340:                              #   in Loop: Header=BB3_4 Depth=1
	ld.w	$a1, $s1, 56
	move	$a3, $zero
	addi.w	$a0, $zero, -4
	bltz	$a1, .LBB3_381
# %bb.341:                              #   in Loop: Header=BB3_4 Depth=1
	ld.d	$a4, $sp, 448                   # 8-byte Folded Reload
	st.d	$a4, $sp, 448                   # 8-byte Folded Spill
	ld.d	$a4, $sp, 464                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 96                    # 8-byte Folded Reload
	move	$t5, $ra
	st.d	$a4, $sp, 464                   # 8-byte Folded Spill
	bge	$a1, $t3, .LBB3_380
# %bb.342:                              # %vector.ph482
                                        #   in Loop: Header=BB3_4 Depth=1
	st.d	$a5, $sp, 80                    # 8-byte Folded Spill
	vld	$vr0, $s1, 68
	move	$a1, $zero
	st.w	$zero, $s1, 1096
	vld	$vr1, $s1, 84
	vst	$vr0, $s1, 1100
	vld	$vr0, $s1, 100
	vld	$vr2, $s1, 116
	vst	$vr1, $s1, 1116
	vld	$vr1, $s1, 132
	vst	$vr0, $s1, 1132
	vst	$vr2, $s1, 1148
	vld	$vr0, $s1, 148
	vst	$vr1, $s1, 1164
	vld	$vr1, $s1, 164
	vld	$vr2, $s1, 180
	vst	$vr0, $s1, 1180
	vld	$vr0, $s1, 196
	vst	$vr1, $s1, 1196
	vst	$vr2, $s1, 1212
	vld	$vr1, $s1, 212
	vst	$vr0, $s1, 1228
	vld	$vr0, $s1, 228
	vld	$vr2, $s1, 244
	vst	$vr1, $s1, 1244
	vld	$vr1, $s1, 260
	vst	$vr0, $s1, 1260
	vst	$vr2, $s1, 1276
	vld	$vr0, $s1, 276
	vst	$vr1, $s1, 1292
	vld	$vr1, $s1, 292
	vld	$vr2, $s1, 308
	vst	$vr0, $s1, 1308
	vld	$vr0, $s1, 324
	vst	$vr1, $s1, 1324
	vst	$vr2, $s1, 1340
	vld	$vr1, $s1, 340
	vst	$vr0, $s1, 1356
	vld	$vr0, $s1, 356
	vld	$vr2, $s1, 372
	vst	$vr1, $s1, 1372
	vld	$vr1, $s1, 388
	vst	$vr0, $s1, 1388
	vst	$vr2, $s1, 1404
	vld	$vr0, $s1, 404
	vst	$vr1, $s1, 1420
	vld	$vr1, $s1, 420
	vld	$vr2, $s1, 436
	vst	$vr0, $s1, 1436
	vld	$vr0, $s1, 452
	vst	$vr1, $s1, 1452
	vst	$vr2, $s1, 1468
	vld	$vr1, $s1, 468
	vst	$vr0, $s1, 1484
	vld	$vr0, $s1, 484
	vld	$vr2, $s1, 500
	vst	$vr1, $s1, 1500
	vld	$vr1, $s1, 516
	vst	$vr0, $s1, 1516
	vst	$vr2, $s1, 1532
	vld	$vr0, $s1, 532
	vst	$vr1, $s1, 1548
	vld	$vr1, $s1, 548
	vld	$vr2, $s1, 564
	vst	$vr0, $s1, 1564
	vld	$vr0, $s1, 580
	vst	$vr1, $s1, 1580
	vst	$vr2, $s1, 1596
	vld	$vr1, $s1, 596
	vst	$vr0, $s1, 1612
	vld	$vr0, $s1, 612
	vld	$vr2, $s1, 628
	vst	$vr1, $s1, 1628
	vld	$vr1, $s1, 644
	vst	$vr0, $s1, 1644
	vst	$vr2, $s1, 1660
	vld	$vr0, $s1, 660
	vst	$vr1, $s1, 1676
	vld	$vr1, $s1, 676
	vld	$vr2, $s1, 692
	vst	$vr0, $s1, 1692
	vld	$vr0, $s1, 708
	vst	$vr1, $s1, 1708
	vst	$vr2, $s1, 1724
	vld	$vr1, $s1, 724
	vst	$vr0, $s1, 1740
	vld	$vr0, $s1, 740
	vld	$vr2, $s1, 756
	vst	$vr1, $s1, 1756
	vld	$vr1, $s1, 772
	vst	$vr0, $s1, 1772
	vst	$vr2, $s1, 1788
	vld	$vr0, $s1, 788
	vst	$vr1, $s1, 1804
	vld	$vr1, $s1, 804
	vld	$vr2, $s1, 820
	vst	$vr0, $s1, 1820
	vld	$vr0, $s1, 836
	vst	$vr1, $s1, 1836
	vst	$vr2, $s1, 1852
	vld	$vr1, $s1, 852
	vst	$vr0, $s1, 1868
	vld	$vr0, $s1, 868
	vld	$vr2, $s1, 884
	vst	$vr1, $s1, 1884
	vld	$vr1, $s1, 900
	vst	$vr0, $s1, 1900
	vst	$vr2, $s1, 1916
	vld	$vr0, $s1, 916
	vst	$vr1, $s1, 1932
	vld	$vr1, $s1, 932
	vld	$vr2, $s1, 948
	vst	$vr0, $s1, 1948
	vld	$vr0, $s1, 964
	vst	$vr1, $s1, 1964
	vst	$vr2, $s1, 1980
	vld	$vr1, $s1, 980
	vst	$vr0, $s1, 1996
	vld	$vr0, $s1, 996
	vld	$vr2, $s1, 1012
	vst	$vr1, $s1, 2012
	vld	$vr1, $s1, 1028
	vst	$vr0, $s1, 2028
	vst	$vr2, $s1, 2044
	vld	$vr0, $s1, 1044
	ori	$a2, $zero, 2060
	vstx	$vr1, $s1, $a2
	vld	$vr1, $s1, 1060
	vld	$vr2, $s1, 1076
	ld.w	$a2, $s1, 1096
	ori	$a3, $zero, 2076
	vstx	$vr0, $s1, $a3
	ori	$a3, $zero, 2092
	vstx	$vr1, $s1, $a3
	ori	$a3, $zero, 2108
	vstx	$vr2, $s1, $a3
	ld.d	$a4, $sp, 144                   # 8-byte Folded Reload
	ori	$a5, $zero, 1024
	ld.d	$ra, $sp, 480                   # 8-byte Folded Reload
.LBB3_343:                              # %.preheader1373.i
                                        #   Parent Loop BB3_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.w	$a3, $a4, $a1
	add.d	$a2, $a3, $a2
	stx.w	$a2, $a4, $a1
	addi.d	$a1, $a1, 4
	bne	$a1, $a5, .LBB3_343
# %bb.344:                              # %.preheader1371.i.preheader
                                        #   in Loop: Header=BB3_4 Depth=1
	move	$a1, $zero
	move	$a2, $zero
	ld.d	$t1, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 80                    # 8-byte Folded Reload
.LBB3_345:                              # %.preheader1371.i
                                        #   Parent Loop BB3_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.w	$a3, $s6, $a1
	bltz	$a3, .LBB3_378
# %bb.346:                              # %.preheader1371.i
                                        #   in Loop: Header=BB3_345 Depth=2
	blt	$t3, $a3, .LBB3_378
# %bb.347:                              #   in Loop: Header=BB3_345 Depth=2
	addi.d	$a1, $a1, 4
	addi.d	$a2, $a2, 1
	ori	$a3, $zero, 1028
	bne	$a1, $a3, .LBB3_345
# %bb.348:                              #   in Loop: Header=BB3_4 Depth=1
	ld.bu	$a0, $s1, 44
	st.w	$zero, $s1, 16
	st.b	$zero, $s1, 12
	ori	$a1, $zero, 2
	st.w	$a1, $s1, 8
	beqz	$a0, .LBB3_398
# %bb.349:                              # %vector.body
                                        #   in Loop: Header=BB3_4 Depth=1
	st.d	$s0, $sp, 72                    # 8-byte Folded Spill
	move	$s0, $a7
	ld.d	$a0, $sp, 456                   # 8-byte Folded Reload
	st.d	$a0, $sp, 456                   # 8-byte Folded Spill
	vld	$vr0, $s1, 1096
	move	$a0, $zero
	move	$a1, $zero
	vld	$vr1, $s1, 1112
	ori	$a2, $zero, 2124
	vstx	$vr0, $s1, $a2
	vld	$vr0, $s1, 1128
	vld	$vr2, $s1, 1144
	ori	$a2, $zero, 2140
	vstx	$vr1, $s1, $a2
	vld	$vr1, $s1, 1160
	ori	$a2, $zero, 2156
	vstx	$vr0, $s1, $a2
	ori	$a2, $zero, 2172
	vstx	$vr2, $s1, $a2
	vld	$vr0, $s1, 1176
	ori	$a2, $zero, 2188
	vstx	$vr1, $s1, $a2
	vld	$vr1, $s1, 1192
	vld	$vr2, $s1, 1208
	ori	$a2, $zero, 2204
	vstx	$vr0, $s1, $a2
	vld	$vr0, $s1, 1224
	ori	$a2, $zero, 2220
	vstx	$vr1, $s1, $a2
	ori	$a2, $zero, 2236
	vstx	$vr2, $s1, $a2
	vld	$vr1, $s1, 1240
	ori	$a2, $zero, 2252
	vstx	$vr0, $s1, $a2
	vld	$vr0, $s1, 1256
	vld	$vr2, $s1, 1272
	ori	$a2, $zero, 2268
	vstx	$vr1, $s1, $a2
	vld	$vr1, $s1, 1288
	ori	$a2, $zero, 2284
	vstx	$vr0, $s1, $a2
	ori	$a2, $zero, 2300
	vstx	$vr2, $s1, $a2
	vld	$vr0, $s1, 1304
	ori	$a2, $zero, 2316
	vstx	$vr1, $s1, $a2
	vld	$vr1, $s1, 1320
	vld	$vr2, $s1, 1336
	ori	$a2, $zero, 2332
	vstx	$vr0, $s1, $a2
	vld	$vr0, $s1, 1352
	ori	$a2, $zero, 2348
	vstx	$vr1, $s1, $a2
	ori	$a2, $zero, 2364
	vstx	$vr2, $s1, $a2
	vld	$vr1, $s1, 1368
	ori	$a2, $zero, 2380
	vstx	$vr0, $s1, $a2
	vld	$vr0, $s1, 1384
	vld	$vr2, $s1, 1400
	ori	$a2, $zero, 2396
	vstx	$vr1, $s1, $a2
	vld	$vr1, $s1, 1416
	ori	$a2, $zero, 2412
	vstx	$vr0, $s1, $a2
	ori	$a2, $zero, 2428
	vstx	$vr2, $s1, $a2
	vld	$vr0, $s1, 1432
	ori	$a2, $zero, 2444
	vstx	$vr1, $s1, $a2
	vld	$vr1, $s1, 1448
	vld	$vr2, $s1, 1464
	ori	$a2, $zero, 2460
	vstx	$vr0, $s1, $a2
	vld	$vr0, $s1, 1480
	ori	$a2, $zero, 2476
	vstx	$vr1, $s1, $a2
	ori	$a2, $zero, 2492
	vstx	$vr2, $s1, $a2
	vld	$vr1, $s1, 1496
	ori	$a2, $zero, 2508
	vstx	$vr0, $s1, $a2
	vld	$vr0, $s1, 1512
	vld	$vr2, $s1, 1528
	ori	$a2, $zero, 2524
	vstx	$vr1, $s1, $a2
	vld	$vr1, $s1, 1544
	ori	$a2, $zero, 2540
	vstx	$vr0, $s1, $a2
	ori	$a2, $zero, 2556
	vstx	$vr2, $s1, $a2
	vld	$vr0, $s1, 1560
	ori	$a2, $zero, 2572
	vstx	$vr1, $s1, $a2
	vld	$vr1, $s1, 1576
	vld	$vr2, $s1, 1592
	ori	$a2, $zero, 2588
	vstx	$vr0, $s1, $a2
	vld	$vr0, $s1, 1608
	ori	$a2, $zero, 2604
	vstx	$vr1, $s1, $a2
	ori	$a2, $zero, 2620
	vstx	$vr2, $s1, $a2
	vld	$vr1, $s1, 1624
	ori	$a2, $zero, 2636
	vstx	$vr0, $s1, $a2
	vld	$vr0, $s1, 1640
	vld	$vr2, $s1, 1656
	ori	$a2, $zero, 2652
	vstx	$vr1, $s1, $a2
	vld	$vr1, $s1, 1672
	ori	$a2, $zero, 2668
	vstx	$vr0, $s1, $a2
	ori	$a2, $zero, 2684
	vstx	$vr2, $s1, $a2
	vld	$vr0, $s1, 1688
	ori	$a2, $zero, 2700
	vstx	$vr1, $s1, $a2
	vld	$vr1, $s1, 1704
	vld	$vr2, $s1, 1720
	ori	$a2, $zero, 2716
	vstx	$vr0, $s1, $a2
	vld	$vr0, $s1, 1736
	ori	$a2, $zero, 2732
	vstx	$vr1, $s1, $a2
	ori	$a2, $zero, 2748
	vstx	$vr2, $s1, $a2
	vld	$vr1, $s1, 1752
	ori	$a2, $zero, 2764
	vstx	$vr0, $s1, $a2
	vld	$vr0, $s1, 1768
	vld	$vr2, $s1, 1784
	ori	$a2, $zero, 2780
	vstx	$vr1, $s1, $a2
	vld	$vr1, $s1, 1800
	ori	$a2, $zero, 2796
	vstx	$vr0, $s1, $a2
	ori	$a2, $zero, 2812
	vstx	$vr2, $s1, $a2
	vld	$vr0, $s1, 1816
	ori	$a2, $zero, 2828
	vstx	$vr1, $s1, $a2
	vld	$vr1, $s1, 1832
	vld	$vr2, $s1, 1848
	ori	$a2, $zero, 2844
	vstx	$vr0, $s1, $a2
	vld	$vr0, $s1, 1864
	ori	$a2, $zero, 2860
	vstx	$vr1, $s1, $a2
	ori	$a2, $zero, 2876
	vstx	$vr2, $s1, $a2
	vld	$vr1, $s1, 1880
	ori	$a2, $zero, 2892
	vstx	$vr0, $s1, $a2
	vld	$vr0, $s1, 1896
	vld	$vr2, $s1, 1912
	ori	$a2, $zero, 2908
	vstx	$vr1, $s1, $a2
	vld	$vr1, $s1, 1928
	ori	$a2, $zero, 2924
	vstx	$vr0, $s1, $a2
	ori	$a2, $zero, 2940
	vstx	$vr2, $s1, $a2
	vld	$vr0, $s1, 1944
	ori	$a2, $zero, 2956
	vstx	$vr1, $s1, $a2
	vld	$vr1, $s1, 1960
	vld	$vr2, $s1, 1976
	ori	$a2, $zero, 2972
	vstx	$vr0, $s1, $a2
	vld	$vr0, $s1, 1992
	ori	$a2, $zero, 2988
	vstx	$vr1, $s1, $a2
	ori	$a2, $zero, 3004
	vstx	$vr2, $s1, $a2
	vld	$vr1, $s1, 2008
	ori	$a2, $zero, 3020
	vstx	$vr0, $s1, $a2
	vld	$vr0, $s1, 2024
	vld	$vr2, $s1, 2040
	ori	$a2, $zero, 3036
	vstx	$vr1, $s1, $a2
	ori	$a2, $zero, 2056
	vldx	$vr1, $s1, $a2
	ori	$a2, $zero, 3052
	vstx	$vr0, $s1, $a2
	ori	$a2, $zero, 3068
	vstx	$vr2, $s1, $a2
	ori	$a2, $zero, 2072
	vldx	$vr0, $s1, $a2
	ori	$a2, $zero, 3084
	vstx	$vr1, $s1, $a2
	ori	$a2, $zero, 2088
	vldx	$vr1, $s1, $a2
	ori	$a2, $zero, 2104
	vldx	$vr2, $s1, $a2
	ori	$a2, $zero, 2120
	ldx.w	$a2, $s1, $a2
	ori	$a3, $zero, 3100
	vstx	$vr0, $s1, $a3
	ori	$a3, $zero, 3116
	vstx	$vr1, $s1, $a3
	ori	$a3, $zero, 3132
	vstx	$vr2, $s1, $a3
	stptr.w	$a2, $s1, 3148
	bstrpick.d	$a2, $t3, 31, 0
	b	.LBB3_352
.LBB3_350:                              #   in Loop: Header=BB3_352 Depth=2
	bstrins.d	$a6, $a7, 63, 4
.LBB3_351:                              #   in Loop: Header=BB3_352 Depth=2
	alsl.d	$a3, $a3, $t1, 2
	stx.b	$a6, $a4, $a5
	ld.w	$a4, $a3, 0
	addi.d	$a4, $a4, 1
	st.w	$a4, $a3, 0
	addi.d	$a1, $a1, 1
	addi.d	$a0, $a0, 2
	beq	$a2, $a1, .LBB3_383
.LBB3_352:                              #   Parent Loop BB3_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldptr.d	$a5, $s1, 3160
	ldx.bu	$a3, $a5, $a0
	slli.d	$a4, $a3, 2
	ldx.w	$a7, $t1, $a4
	ldptr.d	$a4, $s1, 3168
	stx.h	$a7, $a5, $a0
	bstrpick.d	$a5, $a1, 31, 1
	ldx.bu	$a6, $a4, $a5
	andi	$t0, $a1, 1
	bstrpick.d	$a7, $a7, 31, 16
	bnez	$t0, .LBB3_350
# %bb.353:                              #   in Loop: Header=BB3_352 Depth=2
	andi	$a6, $a6, 240
	or	$a6, $a6, $a7
	b	.LBB3_351
.LBB3_354:                              #   in Loop: Header=BB3_4 Depth=1
	ori	$a0, $zero, 1
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	bltu	$a0, $a1, .LBB3_368
# %bb.355:                              #   in Loop: Header=BB3_4 Depth=1
	addi.d	$s3, $zero, -1
	ld.d	$a1, $sp, 448                   # 8-byte Folded Reload
	st.d	$a1, $sp, 448                   # 8-byte Folded Spill
	ld.d	$t0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 96                    # 8-byte Folded Reload
.LBB3_356:                              #   in Loop: Header=BB3_4 Depth=1
	move	$t5, $ra
	ld.d	$ra, $sp, 480                   # 8-byte Folded Reload
	sltui	$a1, $t1, 1
	slli.d	$a3, $a0, 1
	st.d	$a3, $sp, 464                   # 8-byte Folded Spill
	masknez	$a3, $a3, $a1
	maskeqz	$a0, $a0, $a1
	or	$a0, $a0, $a3
	add.w	$s3, $a0, $s3
	bnez	$t8, .LBB3_359
# %bb.357:                              #   in Loop: Header=BB3_4 Depth=1
	addi.w	$t6, $t6, 1
	bge	$t6, $t7, .LBB3_376
# %bb.358:                              #   in Loop: Header=BB3_4 Depth=1
	ld.d	$a0, $sp, 328                   # 8-byte Folded Reload
	ldx.bu	$s4, $a0, $t6
	slli.d	$a0, $s4, 2
	ld.d	$a1, $sp, 392                   # 8-byte Folded Reload
	ldx.w	$s7, $a1, $a0
	slli.d	$a0, $s4, 10
	alsl.d	$a0, $s4, $a0, 3
	ld.d	$a1, $sp, 400                   # 8-byte Folded Reload
	add.d	$a1, $a1, $a0
	st.d	$a1, $sp, 440                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 336                   # 8-byte Folded Reload
	add.d	$a1, $a1, $a0
	st.d	$a1, $sp, 448                   # 8-byte Folded Spill
	add.d	$a0, $ra, $a0
	st.d	$a0, $sp, 456                   # 8-byte Folded Spill
	ori	$t8, $zero, 50
.LBB3_359:                              #   in Loop: Header=BB3_4 Depth=1
	addi.w	$t8, $t8, -1
	move	$s2, $s7
.LBB3_360:                              #   in Loop: Header=BB3_4 Depth=1
	ld.w	$a0, $s1, 36
	ori	$a1, $zero, 38
	st.w	$a1, $s1, 8
	bge	$a0, $s2, .LBB3_366
# %bb.361:                              # %.lr.ph1593.i
                                        #   in Loop: Header=BB3_4 Depth=1
	st.d	$t0, $sp, 104                   # 8-byte Folded Spill
	move	$t0, $s0
	move	$s0, $a7
	move	$a7, $s4
	move	$s4, $t8
	move	$t8, $t2
	move	$t2, $t6
	move	$t6, $t3
	move	$t3, $fp
	move	$fp, $s3
	move	$s3, $s2
	move	$s2, $a5
	ld.d	$a1, $s1, 0
	ld.w	$a3, $a1, 8
	addi.w	$a3, $a3, -1
	b	.LBB3_363
.LBB3_362:                              #   in Loop: Header=BB3_363 Depth=2
	addi.w	$a3, $a3, -1
	bge	$a0, $s3, .LBB3_367
.LBB3_363:                              #   Parent Loop BB3_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.w	$a4, $zero, -1
	beq	$a3, $a4, .LBB3_337
# %bb.364:                              #   in Loop: Header=BB3_363 Depth=2
	ld.d	$a5, $a1, 0
	ld.w	$a4, $s1, 32
	ld.bu	$a6, $a5, 0
	slli.d	$a4, $a4, 8
	or	$a4, $a4, $a6
	st.w	$a4, $s1, 32
	addi.w	$a0, $a0, 8
	st.w	$a0, $s1, 36
	ld.wu	$a6, $a1, 12
	addi.d	$a5, $a5, 1
	st.d	$a5, $a1, 0
	st.w	$a3, $a1, 8
	addi.d	$a5, $a6, 1
	slli.d	$a6, $a5, 31
	st.w	$a5, $a1, 12
	bgez	$a6, .LBB3_362
# %bb.365:                              #   in Loop: Header=BB3_363 Depth=2
	ld.w	$a5, $a1, 16
	addi.d	$a5, $a5, 1
	st.w	$a5, $a1, 16
	b	.LBB3_362
.LBB3_366:                              # %.._crit_edge1594_crit_edge.i
                                        #   in Loop: Header=BB3_4 Depth=1
	st.d	$t0, $sp, 104                   # 8-byte Folded Spill
	move	$t0, $s0
	move	$s0, $a7
	move	$a7, $s4
	move	$s4, $t8
	move	$t8, $t2
	move	$t2, $t6
	move	$t6, $t3
	move	$t3, $fp
	move	$fp, $s3
	move	$s3, $s2
	ld.w	$a4, $s1, 32
.LBB3_367:                              # %._crit_edge1594.i
                                        #   in Loop: Header=BB3_4 Depth=1
	move	$s2, $s3
	sub.w	$a1, $a0, $s3
	srl.w	$a0, $a4, $a1
	addi.d	$a3, $zero, -1
	sll.w	$a3, $a3, $s3
	andn	$a5, $a0, $a3
	st.w	$a1, $s1, 36
	ori	$a3, $zero, 20
	b	.LBB3_426
.LBB3_368:                              #   in Loop: Header=BB3_4 Depth=1
	addi.w	$a0, $zero, -4
	bge	$t3, $fp, .LBB3_379
# %bb.369:                              #   in Loop: Header=BB3_4 Depth=1
	move	$t0, $a3
	st.d	$s0, $sp, 72                    # 8-byte Folded Spill
	move	$s0, $a7
	st.d	$s4, $sp, 40                    # 8-byte Folded Spill
	move	$s4, $t8
	move	$t8, $t2
	st.d	$t6, $sp, 384                   # 8-byte Folded Spill
	move	$t6, $t3
	move	$t3, $fp
	move	$fp, $s3
	move	$s3, $s2
	move	$s2, $a5
	ld.d	$a1, $sp, 456                   # 8-byte Folded Reload
	st.d	$a1, $sp, 456                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 440                   # 8-byte Folded Reload
	st.d	$a1, $sp, 440                   # 8-byte Folded Spill
	ld.d	$a4, $sp, 96                    # 8-byte Folded Reload
	addi.w	$a3, $a4, -1
	ld.d	$t2, $sp, 128                   # 8-byte Folded Reload
	ori	$a1, $zero, 16
	move	$t5, $ra
	bltu	$a1, $a4, .LBB3_391
# %bb.370:                              #   in Loop: Header=BB3_4 Depth=1
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	ld.w	$a4, $a1, 0
	add.d	$a1, $a4, $a3
	bstrpick.d	$a1, $a1, 31, 0
	ldx.bu	$a1, $t1, $a1
	ori	$a5, $zero, 3
	ld.d	$ra, $sp, 480                   # 8-byte Folded Reload
	bgeu	$a5, $a3, .LBB3_373
.LBB3_371:                              # %.lr.ph1569.i
                                        #   Parent Loop BB3_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.w	$a5, $a4, $a3
	add.d	$a5, $t1, $a5
	ld.w	$a6, $a5, -4
	addi.w	$a3, $a3, -4
	st.w	$a6, $a5, -3
	ori	$a5, $zero, 3
	bltu	$a5, $a3, .LBB3_371
# %bb.372:                              # %.preheader1384.i
                                        #   in Loop: Header=BB3_4 Depth=1
	beqz	$a3, .LBB3_375
.LBB3_373:                              # %.lr.ph1573.i.preheader
                                        #   in Loop: Header=BB3_4 Depth=1
	add.w	$a5, $a3, $a4
.LBB3_374:                              # %.lr.ph1573.i
                                        #   Parent Loop BB3_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.w	$a6, $a5, -1
	bstrpick.d	$a7, $a6, 31, 0
	ldx.b	$a7, $t1, $a7
	bstrpick.d	$a5, $a5, 31, 0
	addi.w	$a3, $a3, -1
	stx.b	$a7, $t1, $a5
	move	$a5, $a6
	bnez	$a3, .LBB3_374
.LBB3_375:                              # %._crit_edge1574.i
                                        #   in Loop: Header=BB3_4 Depth=1
	stx.b	$a1, $t1, $a4
	move	$t2, $t8
	move	$t8, $s4
	b	.LBB3_404
.LBB3_376:                              #   in Loop: Header=BB3_4 Depth=1
	move	$t8, $zero
.LBB3_377:                              #   in Loop: Header=BB3_4 Depth=1
	move	$a3, $zero
	addi.w	$a0, $zero, -4
	b	.LBB3_431
.LBB3_378:                              #   in Loop: Header=BB3_4 Depth=1
	move	$a3, $zero
	ld.d	$t1, $sp, 96                    # 8-byte Folded Reload
	st.d	$t1, $sp, 432                   # 8-byte Folded Spill
	b	.LBB3_431
.LBB3_379:                              #   in Loop: Header=BB3_4 Depth=1
	move	$a3, $zero
	ld.d	$a1, $sp, 448                   # 8-byte Folded Reload
	st.d	$a1, $sp, 448                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 464                   # 8-byte Folded Reload
	st.d	$a1, $sp, 464                   # 8-byte Folded Spill
	ld.d	$t0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 96                    # 8-byte Folded Reload
	b	.LBB3_382
.LBB3_380:                              #   in Loop: Header=BB3_4 Depth=1
	st.d	$t1, $sp, 432                   # 8-byte Folded Spill
	ld.d	$ra, $sp, 480                   # 8-byte Folded Reload
	b	.LBB3_431
.LBB3_381:                              #   in Loop: Header=BB3_4 Depth=1
	ld.d	$t1, $sp, 96                    # 8-byte Folded Reload
	st.d	$t1, $sp, 432                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 448                   # 8-byte Folded Reload
	st.d	$a1, $sp, 448                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 464                   # 8-byte Folded Reload
	st.d	$a1, $sp, 464                   # 8-byte Folded Spill
	ld.d	$t0, $sp, 104                   # 8-byte Folded Reload
.LBB3_382:                              # %BZ2_decompress.exit
                                        #   in Loop: Header=BB3_4 Depth=1
	move	$t5, $ra
	ld.d	$ra, $sp, 480                   # 8-byte Folded Reload
	b	.LBB3_431
.LBB3_383:                              # %._crit_edge1621.i
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.w	$a2, $s1, 56
	ldptr.d	$a0, $s1, 3168
	ldptr.d	$a1, $s1, 3160
	slli.d	$a3, $a2, 1
	srai.d	$a4, $a2, 1
	ldx.bu	$a0, $a0, $a4
	ldx.hu	$t1, $a1, $a3
	slli.d	$a1, $a2, 2
	andi	$a1, $a1, 4
	srl.w	$a0, $a0, $a1
	bstrins.d	$t1, $a0, 19, 16
	b	.LBB3_386
.LBB3_384:                              #   in Loop: Header=BB3_386 Depth=2
	bstrins.d	$a6, $a7, 63, 4
.LBB3_385:                              #   in Loop: Header=BB3_386 Depth=2
	stx.b	$a6, $a1, $a3
	ld.w	$a6, $s1, 56
	slli.d	$a1, $a2, 2
	andi	$a1, $a1, 4
	srl.w	$a5, $a5, $a1
	bstrins.d	$t1, $a5, 19, 16
	beq	$a4, $a6, .LBB3_388
.LBB3_386:                              #   Parent Loop BB3_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a7, $a2
	move	$a2, $t1
	ldptr.d	$a6, $s1, 3160
	addi.w	$a4, $t1, 0
	ldptr.d	$a1, $s1, 3168
	slli.d	$a0, $a4, 1
	ldx.hu	$t1, $a6, $a0
	bstrpick.d	$a3, $a2, 31, 1
	ldx.bu	$a5, $a1, $a3
	stx.h	$a7, $a6, $a0
	ldx.bu	$a6, $a1, $a3
	andi	$t0, $a2, 1
	bstrpick.d	$a7, $a7, 31, 16
	bnez	$t0, .LBB3_384
# %bb.387:                              #   in Loop: Header=BB3_386 Depth=2
	andi	$a6, $a6, 240
	or	$a6, $a6, $a7
	b	.LBB3_385
.LBB3_388:                              #   in Loop: Header=BB3_4 Depth=1
	st.d	$t1, $sp, 472                   # 8-byte Folded Spill
	move	$a5, $zero
	st.w	$a2, $s1, 60
	st.w	$zero, $s1, 1092
	ori	$a6, $zero, 256
.LBB3_389:                              #   Parent Loop BB3_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.w	$a7, $a5, $a6
	srai.d	$a7, $a7, 1
	slli.d	$t0, $a7, 2
	ldx.w	$t0, $s6, $t0
	slt	$t0, $a4, $t0
	maskeqz	$t1, $a7, $t0
	masknez	$a6, $a6, $t0
	or	$a6, $t1, $a6
	masknez	$a7, $a7, $t0
	maskeqz	$a5, $a5, $t0
	or	$a5, $a5, $a7
	sub.w	$a7, $a6, $a5
	bne	$a7, $s8, .LBB3_389
# %bb.390:                              # %indexIntoF.exit.i44
                                        #   in Loop: Header=BB3_4 Depth=1
	ldptr.d	$a4, $s1, 3168
	ldptr.d	$a6, $s1, 3160
	st.w	$a5, $s1, 64
	ldx.bu	$a4, $a4, $a3
	ldx.hu	$a5, $a6, $a0
	move	$a3, $zero
	move	$a0, $zero
	srl.w	$a1, $a4, $a1
	bstrins.d	$a5, $a1, 19, 16
	st.w	$a5, $s1, 60
	st.w	$s8, $s1, 1092
	ld.d	$t1, $sp, 96                    # 8-byte Folded Reload
	st.d	$t1, $sp, 432                   # 8-byte Folded Spill
	ld.d	$a5, $sp, 80                    # 8-byte Folded Reload
	move	$a7, $s0
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	b	.LBB3_430
.LBB3_391:                              #   in Loop: Header=BB3_4 Depth=1
	bstrpick.d	$a5, $a3, 31, 4
	slli.d	$a1, $a5, 2
	ld.d	$a4, $sp, 136                   # 8-byte Folded Reload
	ldx.w	$a6, $a4, $a1
	andi	$a7, $a3, 15
	add.w	$a1, $a6, $a7
	ldx.bu	$a1, $t1, $a1
	alsl.d	$a4, $a5, $a4, 2
	ld.d	$ra, $sp, 480                   # 8-byte Folded Reload
	beqz	$a7, .LBB3_394
# %bb.392:                              # %.lr.ph1556.preheader.i
                                        #   in Loop: Header=BB3_4 Depth=1
	andi	$a3, $a3, 15
	add.d	$a3, $a6, $a3
.LBB3_393:                              # %.lr.ph1556.i
                                        #   Parent Loop BB3_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.b	$a6, $t2, $a3
	stx.b	$a6, $t1, $a3
	ld.w	$a6, $a4, 0
	addi.d	$a3, $a3, -1
	blt	$a6, $a3, .LBB3_393
.LBB3_394:                              # %.lr.ph1561.preheader.i
                                        #   in Loop: Header=BB3_4 Depth=1
	addi.d	$a3, $a6, 1
	st.w	$a3, $a4, 0
	addi.d	$a3, $a5, 1
.LBB3_395:                              # %.lr.ph1561.i
                                        #   Parent Loop BB3_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a5, $a4, 0
	ld.w	$a6, $a4, -4
	addi.w	$a5, $a5, -1
	st.w	$a5, $a4, 0
	add.d	$a6, $t1, $a6
	ld.b	$a6, $a6, 15
	addi.d	$a4, $a4, -4
	addi.d	$a3, $a3, -1
	stx.b	$a6, $t1, $a5
	bltu	$s8, $a3, .LBB3_395
# %bb.396:                              # %._crit_edge1562.i
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.d	$a4, $sp, 136                   # 8-byte Folded Reload
	ld.w	$a3, $a4, 0
	addi.w	$a3, $a3, -1
	st.w	$a3, $a4, 0
	stx.b	$a1, $t1, $a3
	ld.w	$a3, $a4, 0
	move	$t2, $t8
	beqz	$a3, .LBB3_402
# %bb.397:                              #   in Loop: Header=BB3_4 Depth=1
	move	$t8, $s4
	b	.LBB3_404
.LBB3_398:                              # %.preheader.i45
                                        #   in Loop: Header=BB3_4 Depth=1
	ldptr.d	$a1, $s1, 3152
	move	$a0, $zero
	move	$a2, $a1
	move	$a3, $t3
.LBB3_399:                              #   Parent Loop BB3_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$a4, $a2, 0
	slli.d	$a4, $a4, 2
	ldx.w	$a5, $s6, $a4
	slli.d	$a5, $a5, 2
	ldx.w	$a6, $a1, $a5
	or	$a6, $a6, $a0
	stx.w	$a6, $a1, $a5
	ldx.w	$a5, $s6, $a4
	addi.d	$a5, $a5, 1
	stx.w	$a5, $s6, $a4
	addi.d	$a3, $a3, -1
	addi.d	$a0, $a0, 256
	addi.d	$a2, $a2, 4
	bnez	$a3, .LBB3_399
# %bb.400:                              # %._crit_edge1624.i
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.w	$a0, $s1, 56
	slli.d	$a0, $a0, 2
	ldx.wu	$a0, $a1, $a0
	ld.w	$a3, $s1, 40
	srli.d	$a2, $a0, 8
	st.w	$a2, $s1, 60
	st.w	$zero, $s1, 1092
	ld.d	$a0, $sp, 408                   # 8-byte Folded Reload
	mul.w	$a3, $a3, $a0
	ori	$a0, $zero, 1
	ld.d	$t1, $sp, 96                    # 8-byte Folded Reload
	bgeu	$a2, $a3, .LBB3_432
# %bb.401:                              #   in Loop: Header=BB3_4 Depth=1
	slli.d	$a0, $a2, 2
	ldx.wu	$a1, $a1, $a0
	move	$a3, $zero
	move	$a0, $zero
	andi	$a2, $a1, 255
	st.w	$a2, $s1, 64
	srli.d	$a1, $a1, 8
	st.w	$a1, $s1, 60
	st.w	$s8, $s1, 1092
	st.d	$t1, $sp, 432                   # 8-byte Folded Spill
	move	$a2, $t3
	ld.d	$a5, $sp, 80                    # 8-byte Folded Reload
	b	.LBB3_431
.LBB3_402:                              # %.preheader1385.i.preheader
                                        #   in Loop: Header=BB3_4 Depth=1
	move	$a3, $zero
	ori	$a4, $zero, 4080
	ld.d	$a5, $sp, 184                   # 8-byte Folded Reload
	move	$t8, $s4
.LBB3_403:                              # %.preheader1385.i
                                        #   Parent Loop BB3_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a6, $a5, 0
	add.d	$a6, $t1, $a6
	ld.b	$a6, $a6, 15
	ld.d	$a7, $sp, 216                   # 8-byte Folded Reload
	stx.b	$a6, $a7, $a3
	ld.w	$a6, $a5, 0
	add.d	$a6, $t1, $a6
	ld.b	$a6, $a6, 14
	add.d	$a7, $a7, $a3
	st.b	$a6, $a7, -1
	ld.w	$a6, $a5, 0
	add.d	$a6, $t1, $a6
	ld.b	$a6, $a6, 13
	st.b	$a6, $a7, -2
	ld.w	$a6, $a5, 0
	add.d	$a6, $t1, $a6
	ld.b	$a6, $a6, 12
	st.b	$a6, $a7, -3
	ld.w	$a6, $a5, 0
	add.d	$a6, $t1, $a6
	ld.b	$a6, $a6, 11
	st.b	$a6, $a7, -4
	ld.w	$a6, $a5, 0
	add.d	$a6, $t1, $a6
	ld.b	$a6, $a6, 10
	st.b	$a6, $a7, -5
	ld.w	$a6, $a5, 0
	add.d	$a6, $t1, $a6
	ld.b	$a6, $a6, 9
	st.b	$a6, $a7, -6
	ld.w	$a6, $a5, 0
	add.d	$a6, $t1, $a6
	ld.b	$a6, $a6, 8
	st.b	$a6, $a7, -7
	ld.w	$a6, $a5, 0
	add.d	$a6, $t1, $a6
	ld.b	$a6, $a6, 7
	st.b	$a6, $a7, -8
	ld.w	$a6, $a5, 0
	add.d	$a6, $t1, $a6
	ld.b	$a6, $a6, 6
	st.b	$a6, $a7, -9
	ld.w	$a6, $a5, 0
	add.d	$a6, $t1, $a6
	ld.b	$a6, $a6, 5
	st.b	$a6, $a7, -10
	ld.w	$a6, $a5, 0
	add.d	$a6, $t1, $a6
	ld.b	$a6, $a6, 4
	st.b	$a6, $a7, -11
	ld.w	$a6, $a5, 0
	add.d	$a6, $t1, $a6
	ld.b	$a6, $a6, 3
	st.b	$a6, $a7, -12
	ld.w	$a6, $a5, 0
	add.d	$a6, $t1, $a6
	ld.b	$a6, $a6, 2
	st.b	$a6, $a7, -13
	ld.w	$a6, $a5, 0
	add.d	$a6, $t1, $a6
	ld.b	$a6, $a6, 1
	st.b	$a6, $a7, -14
	ld.w	$a6, $a5, 0
	ldx.b	$a6, $t1, $a6
	st.b	$a6, $a7, -15
	st.w	$a4, $a5, 0
	addi.d	$a3, $a3, -16
	addi.d	$a5, $a5, -4
	addi.w	$a6, $zero, -256
	addi.d	$a4, $a4, -16
	bne	$a3, $a6, .LBB3_403
.LBB3_404:                              #   in Loop: Header=BB3_4 Depth=1
	ld.d	$s4, $sp, 40                    # 8-byte Folded Reload
	ldx.bu	$a1, $t0, $a1
	slli.d	$a3, $a1, 2
	ld.d	$a6, $sp, 200                   # 8-byte Folded Reload
	ldx.w	$a4, $a6, $a3
	ld.bu	$a5, $s1, 44
	addi.d	$a4, $a4, 1
	stx.w	$a4, $a6, $a3
	ld.d	$a3, $sp, 464                   # 8-byte Folded Reload
	st.d	$a3, $sp, 464                   # 8-byte Folded Spill
	ld.d	$t1, $sp, 96                    # 8-byte Folded Reload
	beqz	$a5, .LBB3_406
# %bb.405:                              #   in Loop: Header=BB3_4 Depth=1
	ldptr.d	$a3, $s1, 3160
	slli.d	$a4, $t6, 1
	stx.h	$a1, $a3, $a4
	b	.LBB3_407
.LBB3_406:                              #   in Loop: Header=BB3_4 Depth=1
	ldptr.d	$a3, $s1, 3152
	slli.d	$a4, $t6, 2
	stx.w	$a1, $a3, $a4
.LBB3_407:                              #   in Loop: Header=BB3_4 Depth=1
	ld.d	$a1, $sp, 448                   # 8-byte Folded Reload
	st.d	$a1, $sp, 448                   # 8-byte Folded Spill
	move	$a7, $s0
	addi.w	$a4, $t6, 1
	move	$a5, $s2
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	beqz	$t8, .LBB3_409
# %bb.408:                              #   in Loop: Header=BB3_4 Depth=1
	ld.d	$t6, $sp, 384                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 104                   # 8-byte Folded Reload
	b	.LBB3_411
.LBB3_409:                              #   in Loop: Header=BB3_4 Depth=1
	ld.d	$t6, $sp, 384                   # 8-byte Folded Reload
	addi.w	$t6, $t6, 1
	ld.d	$t0, $sp, 104                   # 8-byte Folded Reload
	bge	$t6, $t7, .LBB3_425
# %bb.410:                              #   in Loop: Header=BB3_4 Depth=1
	ld.d	$a0, $sp, 328                   # 8-byte Folded Reload
	ldx.bu	$s4, $a0, $t6
	slli.d	$a0, $s4, 2
	ld.d	$a1, $sp, 392                   # 8-byte Folded Reload
	ldx.w	$s7, $a1, $a0
	slli.d	$a0, $s4, 10
	alsl.d	$a0, $s4, $a0, 3
	ld.d	$a1, $sp, 400                   # 8-byte Folded Reload
	add.d	$a1, $a1, $a0
	st.d	$a1, $sp, 440                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 336                   # 8-byte Folded Reload
	add.d	$a1, $a1, $a0
	st.d	$a1, $sp, 448                   # 8-byte Folded Spill
	add.d	$a0, $ra, $a0
	st.d	$a0, $sp, 456                   # 8-byte Folded Spill
	ori	$t8, $zero, 50
.LBB3_411:                              #   in Loop: Header=BB3_4 Depth=1
	addi.w	$t8, $t8, -1
	move	$s2, $s7
	move	$s3, $fp
	move	$fp, $t3
	move	$t3, $a4
.LBB3_412:                              #   in Loop: Header=BB3_4 Depth=1
	st.d	$t0, $sp, 104                   # 8-byte Folded Spill
	move	$t0, $s0
	move	$s0, $a7
	move	$a7, $s4
	move	$s4, $t8
	move	$t8, $t2
	move	$t2, $t6
	move	$t6, $t3
	move	$t3, $fp
	move	$fp, $s3
	ld.w	$a0, $s1, 36
	ori	$a1, $zero, 40
	st.w	$a1, $s1, 8
	move	$s3, $s2
	bge	$a0, $s2, .LBB3_418
# %bb.413:                              # %.lr.ph1578.i
                                        #   in Loop: Header=BB3_4 Depth=1
	move	$s2, $a5
	ld.d	$a1, $s1, 0
	ld.w	$a3, $a1, 8
	addi.w	$a3, $a3, -1
	b	.LBB3_415
.LBB3_414:                              #   in Loop: Header=BB3_415 Depth=2
	addi.w	$a3, $a3, -1
	bge	$a0, $s3, .LBB3_419
.LBB3_415:                              #   Parent Loop BB3_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.w	$a4, $zero, -1
	beq	$a3, $a4, .LBB3_337
# %bb.416:                              #   in Loop: Header=BB3_415 Depth=2
	ld.d	$a5, $a1, 0
	ld.w	$a4, $s1, 32
	ld.bu	$a6, $a5, 0
	slli.d	$a4, $a4, 8
	or	$a4, $a4, $a6
	st.w	$a4, $s1, 32
	addi.w	$a0, $a0, 8
	st.w	$a0, $s1, 36
	ld.wu	$a6, $a1, 12
	addi.d	$a5, $a5, 1
	st.d	$a5, $a1, 0
	st.w	$a3, $a1, 8
	addi.d	$a5, $a6, 1
	slli.d	$a6, $a5, 31
	st.w	$a5, $a1, 12
	bgez	$a6, .LBB3_414
# %bb.417:                              #   in Loop: Header=BB3_415 Depth=2
	ld.w	$a5, $a1, 16
	addi.d	$a5, $a5, 1
	st.w	$a5, $a1, 16
	b	.LBB3_414
.LBB3_418:                              # %.._crit_edge1579_crit_edge.i
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.w	$a4, $s1, 32
.LBB3_419:                              # %._crit_edge1579.i
                                        #   in Loop: Header=BB3_4 Depth=1
	move	$s2, $s3
	sub.w	$a1, $a0, $s3
	srl.w	$a0, $a4, $a1
	addi.d	$a3, $zero, -1
	sll.w	$a3, $a3, $s3
	andn	$a5, $a0, $a3
	st.w	$a1, $s1, 36
	ori	$a3, $zero, 20
.LBB3_420:                              #   in Loop: Header=BB3_4 Depth=1
	move	$s3, $fp
	move	$fp, $t3
	move	$t3, $t6
	move	$t6, $t2
	move	$t2, $t8
	move	$t8, $s4
	move	$s4, $a7
	addi.w	$a0, $zero, -4
	blt	$a3, $s2, .LBB3_427
# %bb.421:                              #   in Loop: Header=BB3_4 Depth=1
	slli.d	$a3, $s2, 2
	ld.d	$a4, $sp, 440                   # 8-byte Folded Reload
	ldx.w	$a4, $a4, $a3
	move	$a6, $a5
	addi.w	$a5, $a5, 0
	bge	$a4, $a5, .LBB3_423
# %bb.422:                              #   in Loop: Header=BB3_4 Depth=1
	addi.w	$s2, $s2, 1
	move	$a5, $a6
	move	$a7, $s0
	move	$s0, $t0
	ld.d	$t0, $sp, 104                   # 8-byte Folded Reload
	b	.LBB3_135
.LBB3_423:                              #   in Loop: Header=BB3_4 Depth=1
	ld.d	$a1, $sp, 456                   # 8-byte Folded Reload
	ldx.w	$a1, $a1, $a3
	sub.w	$a1, $a6, $a1
	ori	$a3, $zero, 257
	move	$a5, $a6
	move	$a7, $s0
	bltu	$a3, $a1, .LBB3_444
# %bb.424:                              #   in Loop: Header=BB3_4 Depth=1
	move	$ra, $t5
	ld.d	$a0, $sp, 464                   # 8-byte Folded Reload
	st.d	$a0, $sp, 464                   # 8-byte Folded Spill
	slli.d	$a0, $a1, 2
	ld.d	$a1, $sp, 448                   # 8-byte Folded Reload
	st.d	$a1, $sp, 448                   # 8-byte Folded Spill
	ldx.w	$t5, $a1, $a0
	ld.d	$a3, $sp, 224                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 160                   # 8-byte Folded Reload
	b	.LBB3_338
.LBB3_425:                              #   in Loop: Header=BB3_4 Depth=1
	move	$t8, $zero
	move	$a3, $zero
	move	$s2, $s3
	move	$s3, $fp
	move	$fp, $t3
	move	$t3, $a4
	b	.LBB3_431
.LBB3_426:                              #   in Loop: Header=BB3_4 Depth=1
	move	$s3, $fp
	move	$fp, $t3
	move	$t3, $t6
	move	$t6, $t2
	move	$t2, $t8
	move	$t8, $s4
	move	$s4, $a7
	addi.w	$a0, $zero, -4
	bge	$a3, $s2, .LBB3_433
.LBB3_427:                              #   in Loop: Header=BB3_4 Depth=1
	move	$a3, $zero
.LBB3_428:                              # %BZ2_decompress.exit
                                        #   in Loop: Header=BB3_4 Depth=1
	move	$a7, $s0
.LBB3_429:                              # %BZ2_decompress.exit
                                        #   in Loop: Header=BB3_4 Depth=1
	move	$s0, $t0
.LBB3_430:                              # %BZ2_decompress.exit
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.d	$t0, $sp, 104                   # 8-byte Folded Reload
.LBB3_431:                              # %BZ2_decompress.exit
                                        #   in Loop: Header=BB3_4 Depth=1
	st.w	$a2, $s5, 0
	ld.d	$a1, $sp, 472                   # 8-byte Folded Reload
	st.w	$a1, $s5, 4
	st.w	$t2, $s5, 8
	st.w	$t4, $s5, 12
	st.w	$t5, $s5, 16
	st.w	$t7, $s5, 20
	ld.d	$a1, $sp, 432                   # 8-byte Folded Reload
	st.w	$a1, $s5, 24
	st.w	$t6, $s5, 28
	st.w	$t8, $s5, 32
	st.w	$t1, $s5, 36
	st.w	$fp, $s5, 40
	st.w	$t3, $s5, 44
	st.w	$s3, $s5, 48
	ld.d	$a1, $sp, 464                   # 8-byte Folded Reload
	st.w	$a1, $s5, 52
	st.w	$s0, $s5, 56
	st.w	$t0, $s5, 60
	st.w	$s2, $s5, 64
	st.w	$a5, $s5, 68
	st.w	$a7, $s5, 72
	st.w	$s4, $s5, 76
	st.w	$s7, $s5, 80
	ld.d	$a1, $sp, 440                   # 8-byte Folded Reload
	st.d	$a1, $s5, 84
	ld.d	$a1, $sp, 456                   # 8-byte Folded Reload
	st.d	$a1, $s5, 92
	ld.d	$a1, $sp, 448                   # 8-byte Folded Reload
	st.d	$a1, $s5, 100
	bnez	$a3, .LBB3_476
.LBB3_432:                              # %BZ2_decompress.exit.thread
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.w	$a2, $s1, 8
	ori	$a1, $zero, 2
	ori	$t7, $zero, 2
	ori	$a3, $zero, 10
	beq	$a2, $a1, .LBB3_4
	b	.LBB3_474
.LBB3_433:                              #   in Loop: Header=BB3_4 Depth=1
	slli.d	$a3, $s2, 2
	ld.d	$a4, $sp, 440                   # 8-byte Folded Reload
	ldx.w	$a4, $a4, $a3
	move	$a6, $a5
	addi.w	$a5, $a5, 0
	bge	$a4, $a5, .LBB3_443
# %bb.434:                              #   in Loop: Header=BB3_4 Depth=1
	addi.w	$s2, $s2, 1
	move	$a5, $a6
	move	$a7, $s0
	move	$s0, $t0
	ld.d	$t0, $sp, 104                   # 8-byte Folded Reload
.LBB3_435:                              #   in Loop: Header=BB3_4 Depth=1
	st.d	$t0, $sp, 104                   # 8-byte Folded Spill
	move	$t0, $s0
	move	$s0, $a7
	move	$a7, $s4
	move	$s4, $t8
	move	$t8, $t2
	move	$t2, $t6
	move	$t6, $t3
	move	$t3, $fp
	move	$fp, $s3
	move	$s3, $s2
	move	$s2, $a5
	ori	$a0, $zero, 39
	st.w	$a0, $s1, 8
	blez	$a1, .LBB3_438
# %bb.436:                              # %.._crit_edge1611_crit_edge.i
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.w	$a4, $s1, 32
.LBB3_437:                              # %._crit_edge1611.i
                                        #   in Loop: Header=BB3_4 Depth=1
	addi.w	$a1, $a1, -1
	srl.w	$a0, $a4, $a1
	andi	$s0, $a0, 1
	bstrins.d	$a0, $s2, 63, 1
	st.w	$a1, $s1, 36
	move	$a5, $a0
	ori	$a3, $zero, 20
	move	$s2, $s3
	b	.LBB3_426
.LBB3_438:                              # %.lr.ph1610.i
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.d	$a0, $s1, 0
	ld.w	$a3, $a0, 8
	addi.w	$a3, $a3, -1
	b	.LBB3_440
.LBB3_439:                              #   in Loop: Header=BB3_440 Depth=2
	addi.w	$a5, $a1, -8
	addi.w	$a6, $zero, -8
	addi.w	$a3, $a3, -1
	blt	$a6, $a5, .LBB3_437
.LBB3_440:                              #   Parent Loop BB3_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.w	$a4, $zero, -1
	beq	$a3, $a4, .LBB3_337
# %bb.441:                              #   in Loop: Header=BB3_440 Depth=2
	ld.d	$a5, $a0, 0
	ld.w	$a4, $s1, 32
	ld.bu	$a6, $a5, 0
	slli.d	$a4, $a4, 8
	or	$a4, $a4, $a6
	st.w	$a4, $s1, 32
	addi.d	$a1, $a1, 8
	st.w	$a1, $s1, 36
	ld.wu	$a6, $a0, 12
	addi.d	$a5, $a5, 1
	st.d	$a5, $a0, 0
	st.w	$a3, $a0, 8
	addi.d	$a5, $a6, 1
	slli.d	$a6, $a5, 31
	st.w	$a5, $a0, 12
	bgez	$a6, .LBB3_439
# %bb.442:                              #   in Loop: Header=BB3_440 Depth=2
	ld.w	$a5, $a0, 16
	addi.d	$a5, $a5, 1
	st.w	$a5, $a0, 16
	b	.LBB3_439
.LBB3_443:                              #   in Loop: Header=BB3_4 Depth=1
	ld.d	$a1, $sp, 456                   # 8-byte Folded Reload
	ldx.w	$a1, $a1, $a3
	sub.w	$a1, $a6, $a1
	ori	$a3, $zero, 257
	move	$a5, $a6
	move	$a7, $s0
	bgeu	$a3, $a1, .LBB3_445
.LBB3_444:                              #   in Loop: Header=BB3_4 Depth=1
	move	$a3, $zero
	b	.LBB3_429
.LBB3_445:                              #   in Loop: Header=BB3_4 Depth=1
	move	$ra, $t5
	ld.d	$a3, $sp, 464                   # 8-byte Folded Reload
	st.d	$a3, $sp, 464                   # 8-byte Folded Spill
	slli.d	$a1, $a1, 2
	ld.d	$a3, $sp, 448                   # 8-byte Folded Reload
	st.d	$a3, $sp, 448                   # 8-byte Folded Spill
	ldx.w	$a3, $a3, $a1
	ld.d	$a4, $sp, 224                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 160                   # 8-byte Folded Reload
	ori	$a1, $zero, 2
	move	$t5, $a3
	bgeu	$a3, $a1, .LBB3_447
# %bb.446:                              #   in Loop: Header=BB3_4 Depth=1
	ld.d	$a0, $sp, 464                   # 8-byte Folded Reload
	move	$s0, $t0
	ld.d	$t0, $sp, 104                   # 8-byte Folded Reload
	move	$t1, $t5
	b	.LBB3_356
.LBB3_447:                              #   in Loop: Header=BB3_4 Depth=1
	st.d	$a5, $sp, 80                    # 8-byte Folded Spill
	ld.d	$a1, $sp, 456                   # 8-byte Folded Reload
	st.d	$a1, $sp, 456                   # 8-byte Folded Spill
	ldptr.w	$a1, $s1, 7820
	ldx.bu	$a1, $t1, $a1
	ldx.bu	$a3, $a4, $a1
	slli.d	$a4, $a3, 2
	ld.d	$a7, $sp, 200                   # 8-byte Folded Reload
	ldx.w	$a5, $a7, $a4
	ld.bu	$a6, $s1, 44
	addi.w	$a1, $s3, 1
	add.d	$a5, $a5, $a1
	stx.w	$a5, $a7, $a4
	beqz	$a6, .LBB3_451
# %bb.448:                              # %.preheader1378.i
                                        #   in Loop: Header=BB3_4 Depth=1
	bltz	$s3, .LBB3_454
# %bb.449:                              # %.lr.ph1600.i
                                        #   in Loop: Header=BB3_4 Depth=1
	move	$t1, $s4
	st.d	$t8, $sp, 368                   # 8-byte Folded Spill
	st.d	$t2, $sp, 376                   # 8-byte Folded Spill
	st.d	$t6, $sp, 384                   # 8-byte Folded Spill
	st.d	$s2, $sp, 208                   # 8-byte Folded Spill
	st.d	$s7, $sp, 56                    # 8-byte Folded Spill
	slti	$a4, $a1, 1
	masknez	$a5, $s8, $a4
	maskeqz	$a4, $a1, $a4
	or	$a4, $a4, $a5
	sub.d	$a4, $s3, $a4
	addi.d	$a4, $a4, 1
	bstrpick.d	$a4, $a4, 31, 0
	slt	$a5, $fp, $t3
	move	$t6, $fp
	masknez	$a6, $fp, $a5
	maskeqz	$a5, $t3, $a5
	or	$a5, $a5, $a6
	sub.d	$a5, $a5, $t3
	sltu	$a6, $a4, $a5
	masknez	$a5, $a5, $a6
	maskeqz	$a4, $a4, $a6
	or	$a4, $a4, $a5
	st.d	$t7, $sp, 32                    # 8-byte Folded Spill
	bltu	$s8, $a4, .LBB3_455
# %bb.450:                              #   in Loop: Header=BB3_4 Depth=1
	ld.d	$a4, $sp, 440                   # 8-byte Folded Reload
	st.d	$a4, $sp, 440                   # 8-byte Folded Spill
	move	$t8, $t0
	move	$t2, $s0
	move	$t7, $ra
	move	$a7, $t1
	ld.d	$fp, $sp, 104                   # 8-byte Folded Reload
	b	.LBB3_458
.LBB3_451:                              # %.preheader1375.i
                                        #   in Loop: Header=BB3_4 Depth=1
	bltz	$s3, .LBB3_454
# %bb.452:                              # %.lr.ph1605.i
                                        #   in Loop: Header=BB3_4 Depth=1
	move	$t1, $s4
	st.d	$t8, $sp, 368                   # 8-byte Folded Spill
	st.d	$t2, $sp, 376                   # 8-byte Folded Spill
	st.d	$t6, $sp, 384                   # 8-byte Folded Spill
	st.d	$s2, $sp, 208                   # 8-byte Folded Spill
	st.d	$s7, $sp, 56                    # 8-byte Folded Spill
	slti	$a4, $a1, 1
	masknez	$a5, $s8, $a4
	maskeqz	$a4, $a1, $a4
	or	$a4, $a4, $a5
	sub.d	$a4, $s3, $a4
	addi.d	$a4, $a4, 1
	bstrpick.d	$a4, $a4, 31, 0
	slt	$a5, $fp, $t3
	move	$t6, $fp
	masknez	$a6, $fp, $a5
	maskeqz	$a5, $t3, $a5
	or	$a5, $a5, $a6
	sub.d	$a5, $a5, $t3
	sltu	$a6, $a4, $a5
	masknez	$a5, $a5, $a6
	maskeqz	$a4, $a4, $a6
	or	$a4, $a4, $a5
	st.d	$ra, $sp, 240                   # 8-byte Folded Spill
	bltu	$s8, $a4, .LBB3_463
# %bb.453:                              #   in Loop: Header=BB3_4 Depth=1
	ld.d	$t2, $sp, 440                   # 8-byte Folded Reload
	move	$t8, $t0
	move	$fp, $s0
	move	$a7, $t1
	ld.d	$a4, $sp, 104                   # 8-byte Folded Reload
	st.d	$a4, $sp, 104                   # 8-byte Folded Spill
	b	.LBB3_466
.LBB3_454:                              #   in Loop: Header=BB3_4 Depth=1
	move	$s3, $a1
	ld.d	$a5, $sp, 80                    # 8-byte Folded Reload
	move	$a7, $s0
	move	$s0, $t0
	ld.d	$a3, $sp, 224                   # 8-byte Folded Reload
	b	.LBB3_339
.LBB3_455:                              # %vector.ph502
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.d	$a5, $sp, 440                   # 8-byte Folded Reload
	st.d	$a5, $sp, 440                   # 8-byte Folded Spill
	move	$t8, $t0
	move	$t2, $s0
	move	$t7, $ra
	move	$a7, $t1
	ld.d	$fp, $sp, 104                   # 8-byte Folded Reload
	bstrpick.d	$a4, $a4, 31, 1
	ldptr.d	$a6, $s1, 3160
	slli.d	$a5, $a4, 1
	alsl.d	$a4, $a4, $t3, 1
	sub.w	$a1, $a1, $a5
	alsl.d	$a6, $t3, $a6, 1
	addi.d	$a6, $a6, 2
.LBB3_456:                              # %vector.body506
                                        #   Parent Loop BB3_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.h	$a3, $a6, -2
	st.h	$a3, $a6, 0
	addi.d	$a5, $a5, -2
	addi.d	$a6, $a6, 4
	bnez	$a5, .LBB3_456
# %bb.457:                              #   in Loop: Header=BB3_4 Depth=1
	move	$t3, $a4
.LBB3_458:                              # %scalar.ph500.preheader
                                        #   in Loop: Header=BB3_4 Depth=1
	move	$a5, $t3
	slli.d	$a4, $t3, 1
.LBB3_459:                              # %scalar.ph500
                                        #   Parent Loop BB3_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a6, $a1
	bge	$a5, $t6, .LBB3_462
# %bb.460:                              #   in Loop: Header=BB3_459 Depth=2
	ldptr.d	$a1, $s1, 3160
	stx.h	$a3, $a1, $a4
	addi.d	$a5, $a5, 1
	addi.w	$a1, $a6, -1
	addi.w	$t3, $t3, 1
	addi.d	$a4, $a4, 2
	blt	$s8, $a6, .LBB3_459
# %bb.461:                              #   in Loop: Header=BB3_4 Depth=1
	move	$s3, $a1
	ld.d	$a3, $sp, 224                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 160                   # 8-byte Folded Reload
	vld	$vr3, $sp, 304                  # 16-byte Folded Reload
	vld	$vr6, $sp, 416                  # 16-byte Folded Reload
	st.d	$fp, $sp, 104                   # 8-byte Folded Spill
	move	$s4, $a7
	move	$ra, $t7
	move	$a7, $t2
	ld.d	$t7, $sp, 32                    # 8-byte Folded Reload
	move	$s0, $t8
	ld.d	$s7, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a0, $sp, 440                   # 8-byte Folded Reload
	st.d	$a0, $sp, 440                   # 8-byte Folded Spill
	b	.LBB3_470
.LBB3_462:                              #   in Loop: Header=BB3_4 Depth=1
	move	$a3, $zero
	ld.d	$ra, $sp, 480                   # 8-byte Folded Reload
	vld	$vr3, $sp, 304                  # 16-byte Folded Reload
	vld	$vr6, $sp, 416                  # 16-byte Folded Reload
	move	$t0, $fp
	move	$t1, $t5
	move	$s4, $a7
	move	$t5, $t7
	move	$a7, $t2
	ld.d	$t7, $sp, 32                    # 8-byte Folded Reload
	move	$s0, $t8
	ld.d	$s7, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 440                   # 8-byte Folded Reload
	st.d	$a1, $sp, 440                   # 8-byte Folded Spill
	b	.LBB3_472
.LBB3_463:                              # %vector.ph490
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.d	$t2, $sp, 440                   # 8-byte Folded Reload
	move	$t8, $t0
	move	$fp, $s0
	move	$a7, $t1
	ld.d	$a5, $sp, 104                   # 8-byte Folded Reload
	st.d	$a5, $sp, 104                   # 8-byte Folded Spill
	bstrpick.d	$a4, $a4, 31, 1
	ldptr.d	$a6, $s1, 3152
	slli.d	$a5, $a4, 1
	alsl.d	$a4, $a4, $t3, 1
	sub.w	$a1, $a1, $a5
	alsl.d	$a6, $t3, $a6, 2
	addi.d	$a6, $a6, 4
.LBB3_464:                              # %vector.body491
                                        #   Parent Loop BB3_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.w	$a3, $a6, -4
	st.w	$a3, $a6, 0
	addi.d	$a5, $a5, -2
	addi.d	$a6, $a6, 8
	bnez	$a5, .LBB3_464
# %bb.465:                              #   in Loop: Header=BB3_4 Depth=1
	move	$t3, $a4
.LBB3_466:                              # %scalar.ph489.preheader
                                        #   in Loop: Header=BB3_4 Depth=1
	move	$a5, $t3
	slli.d	$a4, $t3, 2
	st.d	$t2, $sp, 440                   # 8-byte Folded Spill
.LBB3_467:                              # %scalar.ph489
                                        #   Parent Loop BB3_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a6, $a1
	bge	$a5, $t6, .LBB3_471
# %bb.468:                              #   in Loop: Header=BB3_467 Depth=2
	ldptr.d	$a1, $s1, 3152
	stx.w	$a3, $a1, $a4
	addi.d	$a5, $a5, 1
	addi.w	$a1, $a6, -1
	addi.w	$t3, $t3, 1
	addi.d	$a4, $a4, 4
	blt	$s8, $a6, .LBB3_467
# %bb.469:                              #   in Loop: Header=BB3_4 Depth=1
	move	$s3, $a1
	ld.d	$a3, $sp, 224                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 160                   # 8-byte Folded Reload
	vld	$vr3, $sp, 304                  # 16-byte Folded Reload
	vld	$vr6, $sp, 416                  # 16-byte Folded Reload
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	move	$s4, $a7
	ld.d	$ra, $sp, 240                   # 8-byte Folded Reload
	move	$a7, $fp
	move	$s0, $t8
	ld.d	$s7, $sp, 56                    # 8-byte Folded Reload
.LBB3_470:                              # %.loopexit1376.i
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.d	$a5, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 208                   # 8-byte Folded Reload
	move	$fp, $t6
	ld.d	$t6, $sp, 384                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 376                   # 8-byte Folded Reload
	ld.d	$t8, $sp, 368                   # 8-byte Folded Reload
	b	.LBB3_339
.LBB3_471:                              #   in Loop: Header=BB3_4 Depth=1
	move	$a3, $zero
	ld.d	$ra, $sp, 480                   # 8-byte Folded Reload
	vld	$vr3, $sp, 304                  # 16-byte Folded Reload
	vld	$vr6, $sp, 416                  # 16-byte Folded Reload
	ld.d	$t0, $sp, 104                   # 8-byte Folded Reload
	move	$t1, $t5
	move	$s4, $a7
	ld.d	$t5, $sp, 240                   # 8-byte Folded Reload
	move	$a7, $fp
	move	$s0, $t8
	ld.d	$s7, $sp, 56                    # 8-byte Folded Reload
.LBB3_472:                              # %BZ2_decompress.exit
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.d	$a5, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 208                   # 8-byte Folded Reload
	move	$s3, $a6
	move	$fp, $t6
	ld.d	$t6, $sp, 384                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 376                   # 8-byte Folded Reload
	ld.d	$t8, $sp, 368                   # 8-byte Folded Reload
	b	.LBB3_431
.LBB3_473:                              # %unRLE_obuf_to_output_SMALL.exit.thread.loopexit807
	addi.w	$a0, $zero, -1
.LBB3_474:                              # %unRLE_obuf_to_output_SMALL.exit.thread
	ld.d	$s8, $sp, 504                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 512                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 520                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 528                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 536                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 544                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 552                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 560                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 568                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 576                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 584                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 592
	ret
.LBB3_475:
	addi.w	$a0, $zero, -4
	b	.LBB3_474
.LBB3_476:
	ori	$a0, $zero, 4
	b	.LBB3_474
.LBB3_477:
	move	$a0, $zero
	b	.LBB3_474
.Lfunc_end3:
	.size	nsis_BZ2_bzDecompress, .Lfunc_end3-nsis_BZ2_bzDecompress
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI3_0:
	.word	.LBB3_84-.LJTI3_0
	.word	.LBB3_431-.LJTI3_0
	.word	.LBB3_431-.LJTI3_0
	.word	.LBB3_431-.LJTI3_0
	.word	.LBB3_431-.LJTI3_0
	.word	.LBB3_431-.LJTI3_0
	.word	.LBB3_431-.LJTI3_0
	.word	.LBB3_431-.LJTI3_0
	.word	.LBB3_431-.LJTI3_0
	.word	.LBB3_431-.LJTI3_0
	.word	.LBB3_431-.LJTI3_0
	.word	.LBB3_81-.LJTI3_0
	.word	.LBB3_108-.LJTI3_0
	.word	.LBB3_107-.LJTI3_0
	.word	.LBB3_148-.LJTI3_0
	.word	.LBB3_228-.LJTI3_0
	.word	.LBB3_166-.LJTI3_0
	.word	.LBB3_106-.LJTI3_0
	.word	.LBB3_174-.LJTI3_0
	.word	.LBB3_241-.LJTI3_0
	.word	.LBB3_316-.LJTI3_0
	.word	.LBB3_127-.LJTI3_0
	.word	.LBB3_287-.LJTI3_0
	.word	.LBB3_128-.LJTI3_0
	.word	.LBB3_360-.LJTI3_0
	.word	.LBB3_130-.LJTI3_0
	.word	.LBB3_412-.LJTI3_0
	.word	.LBB3_129-.LJTI3_0
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
