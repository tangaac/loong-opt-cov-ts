	.file	"ReedSolomon.c"
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0                          # -- Begin function rsdec_204
.LCPI0_0:
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	4                               # 0x4
	.word	8                               # 0x8
	.word	16                              # 0x10
	.word	32                              # 0x20
	.word	64                              # 0x40
	.word	128                             # 0x80
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI0_1:
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
	addi.d	$sp, $sp, -2032
	st.d	$ra, $sp, 2024                  # 8-byte Folded Spill
	st.d	$fp, $sp, 2016                  # 8-byte Folded Spill
	st.d	$s0, $sp, 2008                  # 8-byte Folded Spill
	st.d	$s1, $sp, 2000                  # 8-byte Folded Spill
	st.d	$s2, $sp, 1992                  # 8-byte Folded Spill
	st.d	$s3, $sp, 1984                  # 8-byte Folded Spill
	st.d	$s4, $sp, 1976                  # 8-byte Folded Spill
	st.d	$s5, $sp, 1968                  # 8-byte Folded Spill
	st.d	$s6, $sp, 1960                  # 8-byte Folded Spill
	st.d	$s7, $sp, 1952                  # 8-byte Folded Spill
	st.d	$s8, $sp, 1944                  # 8-byte Folded Spill
	addi.d	$fp, $sp, 2032
	addi.d	$sp, $sp, -240
	bstrins.d	$sp, $zero, 4, 0
	move	$s1, $a1
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$s0, %pc_hi20(inited)
	ld.bu	$a0, $s0, %pc_lo12(inited)
	pcalau12i	$a1, %pc_hi20(index_of)
	addi.d	$s4, $a1, %pc_lo12(index_of)
	pcalau12i	$a1, %pc_hi20(alpha_to)
	addi.d	$s3, $a1, %pc_lo12(alpha_to)
	bnez	$a0, .LBB0_6
# %bb.1:
	ori	$a0, $zero, 0
	lu32i.d	$a0, 1
	st.d	$a0, $s4, 4
	ori	$a0, $zero, 2
	st.w	$a0, $s4, 16
	ori	$a0, $zero, 3
	st.w	$a0, $s4, 32
	ori	$a0, $zero, 4
	st.w	$a0, $s4, 64
	ori	$a4, $zero, 29
	st.w	$a4, $s3, 32
	ori	$a0, $zero, 5
	pcalau12i	$a1, %pc_hi20(.LCPI0_0)
	xvld	$xr0, $a1, %pc_lo12(.LCPI0_0)
	st.w	$a0, $s4, 128
	ori	$a0, $zero, 6
	st.w	$a0, $s4, 256
	xvst	$xr0, $s3, 0
	ori	$a0, $zero, 7
	st.w	$a0, $s4, 512
	ori	$a0, $zero, 8
	st.w	$a0, $s4, 116
	ori	$a0, $zero, 36
	ori	$a1, $zero, 9
	ori	$a2, $zero, 128
	ori	$a3, $zero, 1020
	b	.LBB0_3
	.p2align	4, , 16
.LBB0_2:                                #   in Loop: Header=BB0_3 Depth=1
	stx.w	$a5, $s3, $a0
	slli.d	$a4, $a5, 2
	stx.w	$a1, $s4, $a4
	addi.d	$a0, $a0, 4
	addi.d	$a1, $a1, 1
	move	$a4, $a5
	beq	$a0, $a3, .LBB0_5
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	slli.w	$a5, $a4, 1
	blt	$a4, $a2, .LBB0_2
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=1
	ld.w	$a4, $s3, 32
	xor	$a4, $a5, $a4
	xori	$a5, $a4, 256
	b	.LBB0_2
.LBB0_5:                                # %generate_gf.exit
	addi.w	$a0, $zero, -1
	lu32i.d	$a0, 0
	st.w	$a0, $s4, 0
	pcaddu18i	$ra, %call36(gen_poly)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	st.b	$a0, $s0, %pc_lo12(inited)
.LBB0_6:                                # %.preheader32.preheader
	ld.d	$a0, $s1, 188
	vinsgr2vr.d	$vr0, $a0, 0
	vst	$vr0, $sp, 576
	st.b	$zero, $sp, 511
	st.h	$zero, $sp, 509
	st.b	$zero, $sp, 507
	st.h	$zero, $sp, 505
	st.b	$zero, $sp, 503
	st.h	$zero, $sp, 501
	st.b	$zero, $sp, 499
	st.h	$zero, $sp, 497
	st.b	$zero, $sp, 495
	st.h	$zero, $sp, 493
	st.b	$zero, $sp, 491
	st.h	$zero, $sp, 489
	st.b	$zero, $sp, 487
	st.h	$zero, $sp, 485
	st.b	$zero, $sp, 483
	st.h	$zero, $sp, 481
	xvld	$xr0, $sp, 576
	addi.d	$a0, $sp, 508
	xvstelm.b	$xr0, $a0, 0, 7
	addi.d	$a0, $sp, 504
	xvstelm.b	$xr0, $a0, 0, 6
	addi.d	$a0, $sp, 500
	xvstelm.b	$xr0, $a0, 0, 5
	addi.d	$a0, $sp, 496
	xvstelm.b	$xr0, $a0, 0, 4
	addi.d	$a0, $sp, 492
	xvstelm.b	$xr0, $a0, 0, 3
	addi.d	$a0, $sp, 488
	xvstelm.b	$xr0, $a0, 0, 2
	addi.d	$a0, $sp, 484
	xvstelm.b	$xr0, $a0, 0, 1
	addi.d	$a0, $sp, 480
	xvstelm.b	$xr0, $a0, 0, 0
	xvld	$xr0, $sp, 480
	ld.d	$a0, $s1, 196
	pcalau12i	$a1, %pc_hi20(recd)
	addi.d	$s2, $a1, %pc_lo12(recd)
	xvst	$xr0, $s2, 0
	vinsgr2vr.d	$vr0, $a0, 0
	vst	$vr0, $sp, 544
	st.b	$zero, $sp, 543
	st.h	$zero, $sp, 541
	st.b	$zero, $sp, 539
	st.h	$zero, $sp, 537
	st.b	$zero, $sp, 535
	st.h	$zero, $sp, 533
	st.b	$zero, $sp, 531
	st.h	$zero, $sp, 529
	st.b	$zero, $sp, 527
	st.h	$zero, $sp, 525
	st.b	$zero, $sp, 523
	st.h	$zero, $sp, 521
	st.b	$zero, $sp, 519
	st.h	$zero, $sp, 517
	st.b	$zero, $sp, 515
	st.h	$zero, $sp, 513
	xvld	$xr0, $sp, 544
	addi.d	$a0, $sp, 540
	xvstelm.b	$xr0, $a0, 0, 7
	addi.d	$a0, $sp, 536
	xvstelm.b	$xr0, $a0, 0, 6
	addi.d	$a0, $sp, 532
	xvstelm.b	$xr0, $a0, 0, 5
	addi.d	$a0, $sp, 528
	xvstelm.b	$xr0, $a0, 0, 4
	addi.d	$a0, $sp, 524
	xvstelm.b	$xr0, $a0, 0, 3
	addi.d	$a0, $sp, 520
	xvstelm.b	$xr0, $a0, 0, 2
	addi.d	$a0, $sp, 516
	xvstelm.b	$xr0, $a0, 0, 1
	addi.d	$a0, $sp, 512
	xvstelm.b	$xr0, $a0, 0, 0
	xvld	$xr0, $sp, 512
	xvst	$xr0, $s2, 32
	addi.d	$a0, $s2, 64
	ori	$a2, $zero, 204
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s1, 0
	ld.w	$a1, $s1, 4
	vinsgr2vr.w	$vr1, $a0, 0
	vinsgr2vr.w	$vr2, $a1, 0
	vrepli.b	$vr0, 0
	vilvl.b	$vr1, $vr0, $vr1
	vilvl.h	$vr1, $vr0, $vr1
	vilvl.b	$vr2, $vr0, $vr2
	vilvl.h	$vr2, $vr0, $vr2
	vst	$vr1, $s2, 268
	vst	$vr2, $s2, 284
	ld.w	$a0, $s1, 8
	ld.w	$a1, $s1, 12
	vinsgr2vr.w	$vr1, $a0, 0
	vinsgr2vr.w	$vr2, $a1, 0
	vilvl.b	$vr1, $vr0, $vr1
	vilvl.h	$vr1, $vr0, $vr1
	vilvl.b	$vr2, $vr0, $vr2
	vilvl.h	$vr2, $vr0, $vr2
	vst	$vr1, $s2, 300
	vst	$vr2, $s2, 316
	ld.w	$a0, $s1, 16
	ld.w	$a1, $s1, 20
	vinsgr2vr.w	$vr1, $a0, 0
	vinsgr2vr.w	$vr2, $a1, 0
	vilvl.b	$vr1, $vr0, $vr1
	vilvl.h	$vr1, $vr0, $vr1
	vilvl.b	$vr2, $vr0, $vr2
	vilvl.h	$vr2, $vr0, $vr2
	vst	$vr1, $s2, 332
	vst	$vr2, $s2, 348
	ld.w	$a0, $s1, 24
	ld.w	$a1, $s1, 28
	vinsgr2vr.w	$vr1, $a0, 0
	vinsgr2vr.w	$vr2, $a1, 0
	vilvl.b	$vr1, $vr0, $vr1
	vilvl.h	$vr1, $vr0, $vr1
	vilvl.b	$vr2, $vr0, $vr2
	vilvl.h	$vr2, $vr0, $vr2
	vst	$vr1, $s2, 364
	vst	$vr2, $s2, 380
	ld.w	$a0, $s1, 32
	ld.w	$a1, $s1, 36
	vinsgr2vr.w	$vr1, $a0, 0
	vinsgr2vr.w	$vr2, $a1, 0
	vilvl.b	$vr1, $vr0, $vr1
	vilvl.h	$vr1, $vr0, $vr1
	vilvl.b	$vr2, $vr0, $vr2
	vilvl.h	$vr2, $vr0, $vr2
	vst	$vr1, $s2, 396
	vst	$vr2, $s2, 412
	ld.w	$a0, $s1, 40
	ld.w	$a1, $s1, 44
	vinsgr2vr.w	$vr1, $a0, 0
	vinsgr2vr.w	$vr2, $a1, 0
	vilvl.b	$vr1, $vr0, $vr1
	vilvl.h	$vr1, $vr0, $vr1
	vilvl.b	$vr2, $vr0, $vr2
	vilvl.h	$vr2, $vr0, $vr2
	vst	$vr1, $s2, 428
	vst	$vr2, $s2, 444
	ld.w	$a0, $s1, 48
	ld.w	$a1, $s1, 52
	vinsgr2vr.w	$vr1, $a0, 0
	vinsgr2vr.w	$vr2, $a1, 0
	vilvl.b	$vr1, $vr0, $vr1
	vilvl.h	$vr1, $vr0, $vr1
	vilvl.b	$vr2, $vr0, $vr2
	vilvl.h	$vr2, $vr0, $vr2
	vst	$vr1, $s2, 460
	vst	$vr2, $s2, 476
	ld.w	$a0, $s1, 56
	ld.w	$a1, $s1, 60
	vinsgr2vr.w	$vr1, $a0, 0
	vinsgr2vr.w	$vr2, $a1, 0
	vilvl.b	$vr1, $vr0, $vr1
	vilvl.h	$vr1, $vr0, $vr1
	vilvl.b	$vr2, $vr0, $vr2
	vilvl.h	$vr2, $vr0, $vr2
	vst	$vr1, $s2, 492
	vst	$vr2, $s2, 508
	ld.w	$a0, $s1, 64
	ld.w	$a1, $s1, 68
	vinsgr2vr.w	$vr1, $a0, 0
	vinsgr2vr.w	$vr2, $a1, 0
	vilvl.b	$vr1, $vr0, $vr1
	vilvl.h	$vr1, $vr0, $vr1
	vilvl.b	$vr2, $vr0, $vr2
	vilvl.h	$vr2, $vr0, $vr2
	vst	$vr1, $s2, 524
	vst	$vr2, $s2, 540
	ld.w	$a0, $s1, 72
	ld.w	$a1, $s1, 76
	vinsgr2vr.w	$vr1, $a0, 0
	vinsgr2vr.w	$vr2, $a1, 0
	vilvl.b	$vr1, $vr0, $vr1
	vilvl.h	$vr1, $vr0, $vr1
	vilvl.b	$vr2, $vr0, $vr2
	vilvl.h	$vr2, $vr0, $vr2
	vst	$vr1, $s2, 556
	vst	$vr2, $s2, 572
	ld.w	$a0, $s1, 80
	ld.w	$a1, $s1, 84
	vinsgr2vr.w	$vr1, $a0, 0
	vinsgr2vr.w	$vr2, $a1, 0
	vilvl.b	$vr1, $vr0, $vr1
	vilvl.h	$vr1, $vr0, $vr1
	vilvl.b	$vr2, $vr0, $vr2
	vilvl.h	$vr2, $vr0, $vr2
	vst	$vr1, $s2, 588
	vst	$vr2, $s2, 604
	ld.w	$a0, $s1, 88
	ld.w	$a1, $s1, 92
	vinsgr2vr.w	$vr1, $a0, 0
	vinsgr2vr.w	$vr2, $a1, 0
	vilvl.b	$vr1, $vr0, $vr1
	vilvl.h	$vr1, $vr0, $vr1
	vilvl.b	$vr2, $vr0, $vr2
	vilvl.h	$vr2, $vr0, $vr2
	vst	$vr1, $s2, 620
	vst	$vr2, $s2, 636
	ld.w	$a0, $s1, 96
	ld.w	$a1, $s1, 100
	vinsgr2vr.w	$vr1, $a0, 0
	vinsgr2vr.w	$vr2, $a1, 0
	vilvl.b	$vr1, $vr0, $vr1
	vilvl.h	$vr1, $vr0, $vr1
	vilvl.b	$vr2, $vr0, $vr2
	vilvl.h	$vr2, $vr0, $vr2
	vst	$vr1, $s2, 652
	vst	$vr2, $s2, 668
	ld.w	$a0, $s1, 104
	ld.w	$a1, $s1, 108
	vinsgr2vr.w	$vr1, $a0, 0
	vinsgr2vr.w	$vr2, $a1, 0
	vilvl.b	$vr1, $vr0, $vr1
	vilvl.h	$vr1, $vr0, $vr1
	vilvl.b	$vr2, $vr0, $vr2
	vilvl.h	$vr2, $vr0, $vr2
	vst	$vr1, $s2, 684
	vst	$vr2, $s2, 700
	ld.w	$a0, $s1, 112
	ld.w	$a1, $s1, 116
	vinsgr2vr.w	$vr1, $a0, 0
	vinsgr2vr.w	$vr2, $a1, 0
	vilvl.b	$vr1, $vr0, $vr1
	vilvl.h	$vr1, $vr0, $vr1
	vilvl.b	$vr2, $vr0, $vr2
	vilvl.h	$vr2, $vr0, $vr2
	vst	$vr1, $s2, 716
	vst	$vr2, $s2, 732
	ld.w	$a0, $s1, 120
	ld.w	$a1, $s1, 124
	vinsgr2vr.w	$vr1, $a0, 0
	vinsgr2vr.w	$vr2, $a1, 0
	vilvl.b	$vr1, $vr0, $vr1
	vilvl.h	$vr1, $vr0, $vr1
	vilvl.b	$vr2, $vr0, $vr2
	vilvl.h	$vr2, $vr0, $vr2
	vst	$vr1, $s2, 748
	vst	$vr2, $s2, 764
	ld.w	$a0, $s1, 128
	ld.w	$a1, $s1, 132
	vinsgr2vr.w	$vr1, $a0, 0
	vinsgr2vr.w	$vr2, $a1, 0
	vilvl.b	$vr1, $vr0, $vr1
	vilvl.h	$vr1, $vr0, $vr1
	vilvl.b	$vr2, $vr0, $vr2
	vilvl.h	$vr2, $vr0, $vr2
	vst	$vr1, $s2, 780
	vst	$vr2, $s2, 796
	ld.w	$a0, $s1, 136
	ld.w	$a1, $s1, 140
	vinsgr2vr.w	$vr1, $a0, 0
	vinsgr2vr.w	$vr2, $a1, 0
	vilvl.b	$vr1, $vr0, $vr1
	vilvl.h	$vr1, $vr0, $vr1
	vilvl.b	$vr2, $vr0, $vr2
	vilvl.h	$vr2, $vr0, $vr2
	vst	$vr1, $s2, 812
	vst	$vr2, $s2, 828
	ld.w	$a0, $s1, 144
	ld.w	$a1, $s1, 148
	vinsgr2vr.w	$vr1, $a0, 0
	vinsgr2vr.w	$vr2, $a1, 0
	vilvl.b	$vr1, $vr0, $vr1
	vilvl.h	$vr1, $vr0, $vr1
	vilvl.b	$vr2, $vr0, $vr2
	vilvl.h	$vr2, $vr0, $vr2
	vst	$vr1, $s2, 844
	vst	$vr2, $s2, 860
	ld.w	$a0, $s1, 152
	ld.w	$a1, $s1, 156
	vinsgr2vr.w	$vr1, $a0, 0
	vinsgr2vr.w	$vr2, $a1, 0
	vilvl.b	$vr1, $vr0, $vr1
	vilvl.h	$vr1, $vr0, $vr1
	vilvl.b	$vr2, $vr0, $vr2
	vilvl.h	$vr2, $vr0, $vr2
	vst	$vr1, $s2, 876
	vst	$vr2, $s2, 892
	ld.w	$a0, $s1, 160
	ld.w	$a1, $s1, 164
	vinsgr2vr.w	$vr1, $a0, 0
	vinsgr2vr.w	$vr2, $a1, 0
	vilvl.b	$vr1, $vr0, $vr1
	vilvl.h	$vr1, $vr0, $vr1
	vilvl.b	$vr2, $vr0, $vr2
	vilvl.h	$vr2, $vr0, $vr2
	vst	$vr1, $s2, 908
	vst	$vr2, $s2, 924
	ld.w	$a0, $s1, 168
	ld.w	$a1, $s1, 172
	vinsgr2vr.w	$vr1, $a0, 0
	vinsgr2vr.w	$vr2, $a1, 0
	vilvl.b	$vr1, $vr0, $vr1
	vilvl.h	$vr1, $vr0, $vr1
	vilvl.b	$vr2, $vr0, $vr2
	vilvl.h	$vr2, $vr0, $vr2
	vst	$vr1, $s2, 940
	vst	$vr2, $s2, 956
	ld.w	$a0, $s1, 176
	ld.w	$a1, $s1, 180
	vinsgr2vr.w	$vr1, $a0, 0
	vinsgr2vr.w	$vr2, $a1, 0
	vilvl.b	$vr1, $vr0, $vr1
	vilvl.h	$vr1, $vr0, $vr1
	vilvl.b	$vr2, $vr0, $vr2
	vilvl.h	$vr2, $vr0, $vr2
	vst	$vr1, $s2, 972
	vst	$vr2, $s2, 988
	ld.bu	$a0, $s1, 184
	st.w	$a0, $s2, 1004
	ld.bu	$a0, $s1, 185
	st.w	$a0, $s2, 1008
	ld.bu	$a0, $s1, 186
	st.w	$a0, $s2, 1012
	ld.bu	$a1, $s1, 187
	move	$a0, $zero
	st.w	$a1, $s2, 1016
	ori	$a1, $zero, 992
	.p2align	4, , 16
.LBB0_7:                                # %vector.body100
                                        # =>This Inner Loop Header: Depth=1
	xvldx	$xr1, $s2, $a0
	xvst	$xr1, $sp, 448
	vld	$vr1, $sp, 464
	vpickve2gr.w	$a2, $vr1, 3
	vld	$vr2, $sp, 448
	vpickve2gr.w	$a3, $vr1, 2
	vpickve2gr.w	$a4, $vr1, 1
	vpickve2gr.w	$a5, $vr1, 0
	vpickve2gr.w	$a6, $vr2, 3
	vpickve2gr.w	$a7, $vr2, 2
	vpickve2gr.w	$t0, $vr2, 1
	vpickve2gr.w	$t1, $vr2, 0
	slli.d	$t1, $t1, 2
	slli.d	$t0, $t0, 2
	slli.d	$a7, $a7, 2
	slli.d	$a6, $a6, 2
	slli.d	$a5, $a5, 2
	slli.d	$a4, $a4, 2
	slli.d	$a3, $a3, 2
	slli.d	$a2, $a2, 2
	ldx.w	$t1, $s4, $t1
	ldx.w	$t0, $s4, $t0
	ldx.w	$a7, $s4, $a7
	ldx.w	$a6, $s4, $a6
	ldx.w	$a5, $s4, $a5
	ldx.w	$a4, $s4, $a4
	ldx.w	$a3, $s4, $a3
	ldx.w	$a2, $s4, $a2
	xvinsgr2vr.w	$xr1, $t1, 0
	xvinsgr2vr.w	$xr1, $t0, 1
	xvinsgr2vr.w	$xr1, $a7, 2
	xvinsgr2vr.w	$xr1, $a6, 3
	xvinsgr2vr.w	$xr1, $a5, 4
	xvinsgr2vr.w	$xr1, $a4, 5
	xvinsgr2vr.w	$xr1, $a3, 6
	xvinsgr2vr.w	$xr1, $a2, 7
	xvstx	$xr1, $s2, $a0
	addi.d	$a0, $a0, 32
	bne	$a0, $a1, .LBB0_7
# %bb.8:                                # %.preheader
	ld.w	$a0, $s2, 992
	move	$a1, $zero
	ld.w	$a2, $s2, 996
	slli.d	$a0, $a0, 2
	ld.w	$a3, $s2, 1000
	ldx.w	$a0, $s4, $a0
	slli.d	$a2, $a2, 2
	ldx.w	$a2, $s4, $a2
	slli.d	$a3, $a3, 2
	ldx.w	$a3, $s4, $a3
	st.w	$a0, $s2, 992
	ld.w	$a0, $s2, 1004
	st.w	$a2, $s2, 996
	st.w	$a3, $s2, 1000
	ld.w	$a2, $s2, 1008
	slli.d	$a0, $a0, 2
	ldx.w	$a0, $s4, $a0
	ld.w	$a3, $s2, 1012
	slli.d	$a2, $a2, 2
	ld.w	$a4, $s2, 1016
	ldx.w	$a2, $s4, $a2
	slli.d	$a3, $a3, 2
	ldx.w	$a3, $s4, $a3
	slli.d	$a4, $a4, 2
	ldx.w	$a4, $s4, $a4
	st.w	$a0, $s2, 1004
	st.w	$a2, $s2, 1008
	st.w	$a3, $s2, 1012
	st.w	$a4, $s2, 1016
	ori	$a2, $zero, 1
	ori	$a3, $zero, 1
	addi.d	$a4, $sp, 748
	addi.w	$a0, $zero, -1
	ori	$a5, $zero, 1020
	ori	$a6, $zero, 17
	lu12i.w	$a7, -522232
	ori	$s5, $a7, 129
	ori	$a7, $zero, 1
	b	.LBB0_10
	.p2align	4, , 16
.LBB0_9:                                #   in Loop: Header=BB0_10 Depth=1
	sltui	$t2, $t1, 1
	slli.d	$t1, $t1, 2
	ldx.w	$t1, $s4, $t1
	masknez	$t3, $a2, $t2
	maskeqz	$a1, $a1, $t2
	or	$a1, $a1, $t3
	st.w	$t1, $t0, 0
	addi.d	$a3, $a3, 1
	addi.d	$a7, $a7, 1
	beq	$a3, $a6, .LBB0_14
.LBB0_10:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_12 Depth 2
	move	$t2, $zero
	move	$t3, $zero
	move	$t1, $zero
	alsl.d	$t0, $a3, $a4, 2
	b	.LBB0_12
	.p2align	4, , 16
.LBB0_11:                               #   in Loop: Header=BB0_12 Depth=2
	addi.d	$t3, $t3, 4
	add.d	$t2, $t2, $a7
	beq	$t3, $a5, .LBB0_9
.LBB0_12:                               #   Parent Loop BB0_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.w	$t4, $s2, $t3
	beq	$t4, $a0, .LBB0_11
# %bb.13:                               #   in Loop: Header=BB0_12 Depth=2
	add.w	$t4, $t2, $t4
	mul.d	$t5, $t4, $s5
	srli.d	$t5, $t5, 32
	add.w	$t5, $t5, $t4
	bstrpick.d	$t6, $t5, 31, 31
	srai.d	$t5, $t5, 7
	add.d	$t5, $t5, $t6
	slli.d	$t6, $t5, 8
	sub.d	$t5, $t5, $t6
	add.w	$t4, $t4, $t5
	slli.d	$t4, $t4, 2
	ldx.w	$t4, $s3, $t4
	xor	$t1, $t4, $t1
	st.w	$t1, $t0, 0
	b	.LBB0_11
.LBB0_14:
	beqz	$a1, .LBB0_59
# %bb.15:
	ld.w	$t0, $sp, 752
	move	$s8, $zero
	st.w	$zero, $sp, 960
	addi.d	$t5, $sp, 752
	st.w	$t0, $sp, 964
	st.w	$zero, $sp, 1032
	addi.d	$a2, $sp, 1096
	st.d	$a0, $sp, 1036
	st.d	$a0, $sp, 1044
	st.d	$a0, $sp, 1052
	st.d	$a0, $sp, 1060
	st.d	$a0, $sp, 1068
	st.d	$a0, $sp, 1076
	st.d	$a0, $sp, 1084
	move	$a3, $a0
	lu32i.d	$a3, 1
	st.d	$a3, $sp, 1092
	st.d	$zero, $sp, 1100
	vst	$vr0, $sp, 1108
	xvrepli.b	$xr0, 0
	xvst	$xr0, $sp, 1124
	st.w	$zero, $sp, 1156
	st.d	$zero, $sp, 888
	move	$a3, $a0
	lu32i.d	$a3, 0
	st.d	$a3, $sp, 816
	addi.d	$t6, $sp, 1160
	addi.d	$a4, $sp, 1164
	ori	$a5, $zero, 1
	addi.d	$a6, $sp, 960
	addi.d	$t1, $sp, 816
	move	$a7, $a0
	addi.d	$t8, $sp, 960
	ori	$s0, $zero, 1
	b	.LBB0_17
	.p2align	4, , 16
.LBB0_16:                               # %._crit_edge.i
                                        #   in Loop: Header=BB0_17 Depth=1
	slli.d	$a1, $t0, 2
	ldx.w	$t0, $s4, $a1
	st.w	$t0, $t3, 0
	addi.d	$s0, $s0, 1
	addi.d	$t8, $t8, 4
	addi.w	$a7, $a7, 1
	addi.d	$t6, $t6, 64
	addi.d	$a2, $a2, 64
	addi.d	$a4, $a4, 64
	addi.d	$t5, $t5, 4
	move	$s8, $t7
	ori	$a1, $zero, 9
	bge	$s6, $a1, .LBB0_91
.LBB0_17:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_19 Depth 2
                                        #     Child Loop BB0_24 Depth 2
                                        #     Child Loop BB0_33 Depth 2
                                        #     Child Loop BB0_40 Depth 2
                                        #     Child Loop BB0_44 Depth 2
                                        #     Child Loop BB0_46 Depth 2
                                        #     Child Loop BB0_49 Depth 2
                                        #     Child Loop BB0_56 Depth 2
	addi.d	$t7, $s8, 1
	slli.d	$s6, $t7, 2
	beq	$t0, $a0, .LBB0_26
# %bb.18:                               #   in Loop: Header=BB0_17 Depth=1
	st.d	$t7, $sp, 56                    # 8-byte Folded Spill
	st.d	$t5, $sp, 48                    # 8-byte Folded Spill
	slli.d	$a3, $s8, 6
	addi.d	$a1, $sp, 1160
	add.d	$a3, $a1, $a3
	addi.d	$ra, $s8, 2
	move	$t7, $a7
	move	$t4, $t8
	move	$s1, $s0
	move	$t2, $s8
	.p2align	4, , 16
.LBB0_19:                               # %.preheader328.i
                                        #   Parent Loop BB0_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$t5, $t2
	move	$t3, $t7
	addi.w	$s1, $s1, -1
	blt	$t2, $a5, .LBB0_21
# %bb.20:                               # %.preheader328.i
                                        #   in Loop: Header=BB0_19 Depth=2
	ld.w	$s7, $t4, 0
	addi.d	$t2, $t5, -1
	addi.d	$t4, $t4, -4
	addi.w	$a1, $zero, -1
	addi.w	$t7, $t3, -1
	beq	$s7, $a1, .LBB0_19
.LBB0_21:                               #   in Loop: Header=BB0_17 Depth=1
	blt	$t5, $a5, .LBB0_29
# %bb.22:                               # %.preheader326.preheader.i
                                        #   in Loop: Header=BB0_17 Depth=1
	bstrpick.d	$a1, $t5, 31, 0
	addi.d	$t2, $a1, 1
	addi.d	$s7, $sp, 1032
	b	.LBB0_24
	.p2align	4, , 16
.LBB0_23:                               #   in Loop: Header=BB0_24 Depth=2
	addi.d	$t2, $t2, -1
	addi.w	$t3, $t3, -1
	bgeu	$a5, $t2, .LBB0_30
.LBB0_24:                               # %.preheader326.i
                                        #   Parent Loop BB0_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	slli.d	$t4, $t3, 2
	ldx.w	$a1, $t4, $a6
	addi.w	$t5, $zero, -1
	beq	$a1, $t5, .LBB0_23
# %bb.25:                               #   in Loop: Header=BB0_24 Depth=2
	slli.d	$a1, $s1, 2
	ldx.w	$a1, $a1, $t1
	ldx.w	$t4, $t4, $t1
	slt	$a1, $a1, $t4
	masknez	$t4, $s1, $a1
	maskeqz	$a1, $t3, $a1
	or	$s1, $a1, $t4
	b	.LBB0_23
	.p2align	4, , 16
.LBB0_26:                               #   in Loop: Header=BB0_17 Depth=1
	addi.d	$a1, $sp, 888
	ldx.w	$s6, $s6, $a1
	addi.d	$ra, $s8, 2
	slli.d	$a3, $ra, 2
	stx.w	$s6, $a3, $a1
	bltz	$s6, .LBB0_50
# %bb.27:                               # %.lr.ph343.preheader.i
                                        #   in Loop: Header=BB0_17 Depth=1
	addi.d	$a3, $s6, 1
	bstrpick.d	$a3, $a3, 31, 0
	ori	$a1, $zero, 7
	bgeu	$s6, $a1, .LBB0_45
# %bb.28:                               #   in Loop: Header=BB0_17 Depth=1
	move	$a1, $zero
	b	.LBB0_48
	.p2align	4, , 16
.LBB0_29:                               #   in Loop: Header=BB0_17 Depth=1
	addi.d	$s7, $sp, 1032
.LBB0_30:                               # %.loopexit327.i
                                        #   in Loop: Header=BB0_17 Depth=1
	slli.d	$a1, $s1, 2
	addi.d	$t7, $sp, 888
	ldx.w	$t2, $a1, $t7
	ldx.w	$t3, $s6, $t7
	ld.d	$t4, $sp, 56                    # 8-byte Folded Reload
	sub.d	$t4, $t4, $s1
	add.w	$t2, $t2, $t4
	slli.d	$t4, $ra, 2
	slt	$t5, $t2, $t3
	masknez	$t2, $t2, $t5
	maskeqz	$t5, $t3, $t5
	or	$s6, $t5, $t2
	stx.w	$s6, $t4, $t7
	ldx.w	$t2, $a1, $t7
	xvst	$xr0, $a3, 0
	xvst	$xr0, $a3, 32
	bltz	$t2, .LBB0_35
# %bb.31:                               # %.lr.ph.i
                                        #   in Loop: Header=BB0_17 Depth=1
	addi.d	$a3, $t0, 255
	alsl.d	$t0, $s1, $a6, 2
	addi.d	$a1, $t2, 1
	bstrpick.d	$t4, $a1, 31, 0
	sub.w	$t2, $s0, $s1
	slli.d	$a1, $s1, 6
	add.d	$s1, $s7, $a1
	b	.LBB0_33
	.p2align	4, , 16
.LBB0_32:                               #   in Loop: Header=BB0_33 Depth=2
	addi.d	$t4, $t4, -1
	addi.w	$t2, $t2, 1
	addi.d	$s1, $s1, 4
	beqz	$t4, .LBB0_35
.LBB0_33:                               #   Parent Loop BB0_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t5, $s1, 0
	addi.w	$a1, $zero, -1
	beq	$t5, $a1, .LBB0_32
# %bb.34:                               #   in Loop: Header=BB0_33 Depth=2
	ld.w	$a1, $t0, 0
	add.d	$t5, $a3, $t5
	sub.w	$a1, $t5, $a1
	mul.d	$t5, $a1, $s5
	srli.d	$t5, $t5, 32
	add.w	$t5, $t5, $a1
	bstrpick.d	$t7, $t5, 31, 31
	srai.d	$t5, $t5, 7
	add.d	$t5, $t5, $t7
	slli.d	$t7, $t5, 8
	sub.d	$t5, $t5, $t7
	add.w	$a1, $a1, $t5
	slli.d	$a1, $a1, 2
	ldx.w	$a1, $s3, $a1
	slli.d	$t5, $ra, 6
	add.d	$t5, $s7, $t5
	slli.d	$t7, $t2, 2
	stx.w	$a1, $t5, $t7
	b	.LBB0_32
	.p2align	4, , 16
.LBB0_35:                               # %.preheader323.i
                                        #   in Loop: Header=BB0_17 Depth=1
	bltz	$t3, .LBB0_38
# %bb.36:                               # %.lr.ph340.i
                                        #   in Loop: Header=BB0_17 Depth=1
	addi.d	$a1, $t3, 1
	bstrpick.d	$a3, $a1, 31, 0
	ori	$a1, $zero, 7
	bgeu	$t3, $a1, .LBB0_39
# %bb.37:                               #   in Loop: Header=BB0_17 Depth=1
	move	$t0, $zero
	ld.d	$t5, $sp, 48                    # 8-byte Folded Reload
	b	.LBB0_43
	.p2align	4, , 16
.LBB0_38:                               #   in Loop: Header=BB0_17 Depth=1
	ld.d	$t5, $sp, 48                    # 8-byte Folded Reload
	b	.LBB0_42
.LBB0_39:                               # %vector.ph116
                                        #   in Loop: Header=BB0_17 Depth=1
	st.d	$s6, $sp, 40                    # 8-byte Folded Spill
	st.d	$a3, $sp, 32                    # 8-byte Folded Spill
	bstrpick.d	$a1, $a3, 31, 3
	slli.d	$t0, $a1, 3
	move	$t3, $t6
	move	$s1, $t0
	.p2align	4, , 16
.LBB0_40:                               # %vector.body119
                                        #   Parent Loop BB0_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvld	$xr1, $t3, -64
	xvld	$xr2, $t3, 0
	xvxor.v	$xr2, $xr2, $xr1
	xvst	$xr2, $t3, 0
	xvst	$xr1, $sp, 416
	vld	$vr1, $sp, 432
	vpickve2gr.w	$a1, $vr1, 3
	vld	$vr2, $sp, 416
	vpickve2gr.w	$t2, $vr1, 2
	vpickve2gr.w	$t4, $vr1, 1
	vpickve2gr.w	$t5, $vr1, 0
	vpickve2gr.w	$t7, $vr2, 3
	vpickve2gr.w	$s6, $vr2, 2
	vpickve2gr.w	$s7, $vr2, 1
	vpickve2gr.w	$a3, $vr2, 0
	slli.d	$a3, $a3, 2
	slli.d	$s7, $s7, 2
	slli.d	$s6, $s6, 2
	slli.d	$t7, $t7, 2
	slli.d	$t5, $t5, 2
	slli.d	$t4, $t4, 2
	slli.d	$t2, $t2, 2
	slli.d	$a1, $a1, 2
	ldx.w	$a3, $s4, $a3
	ldx.w	$s7, $s4, $s7
	ldx.w	$s6, $s4, $s6
	ldx.w	$t7, $s4, $t7
	ldx.w	$t5, $s4, $t5
	ldx.w	$t4, $s4, $t4
	ldx.w	$t2, $s4, $t2
	ldx.w	$a1, $s4, $a1
	xvinsgr2vr.w	$xr1, $a3, 0
	xvinsgr2vr.w	$xr1, $s7, 1
	xvinsgr2vr.w	$xr1, $s6, 2
	xvinsgr2vr.w	$xr1, $t7, 3
	xvinsgr2vr.w	$xr1, $t5, 4
	xvinsgr2vr.w	$xr1, $t4, 5
	xvinsgr2vr.w	$xr1, $t2, 6
	xvinsgr2vr.w	$xr1, $a1, 7
	xvst	$xr1, $t3, -64
	addi.d	$s1, $s1, -8
	addi.d	$t3, $t3, 32
	bnez	$s1, .LBB0_40
# %bb.41:                               # %middle.block124
                                        #   in Loop: Header=BB0_17 Depth=1
	ld.d	$s6, $sp, 40                    # 8-byte Folded Reload
	ld.d	$t5, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a3, $sp, 32                    # 8-byte Folded Reload
	bne	$t0, $a3, .LBB0_43
.LBB0_42:                               #   in Loop: Header=BB0_17 Depth=1
	ld.d	$t7, $sp, 56                    # 8-byte Folded Reload
	b	.LBB0_50
	.p2align	4, , 16
.LBB0_43:                               # %scalar.ph114.preheader
                                        #   in Loop: Header=BB0_17 Depth=1
	sub.d	$a3, $a3, $t0
	slli.d	$t0, $t0, 2
	ld.d	$t7, $sp, 56                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_44:                               # %scalar.ph114
                                        #   Parent Loop BB0_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.w	$a1, $a2, $t0
	ldx.w	$t2, $t6, $t0
	slli.d	$t3, $a1, 2
	ldx.w	$t3, $s4, $t3
	xor	$a1, $t2, $a1
	stx.w	$a1, $t6, $t0
	stx.w	$t3, $a2, $t0
	addi.d	$a3, $a3, -1
	addi.d	$t0, $t0, 4
	bnez	$a3, .LBB0_44
	b	.LBB0_50
.LBB0_45:                               # %vector.ph107
                                        #   in Loop: Header=BB0_17 Depth=1
	st.d	$t7, $sp, 56                    # 8-byte Folded Spill
	st.d	$t5, $sp, 48                    # 8-byte Folded Spill
	st.d	$s6, $sp, 40                    # 8-byte Folded Spill
	move	$t3, $zero
	bstrpick.d	$t0, $a3, 31, 3
	slli.d	$a1, $t0, 3
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	move	$a1, $a3
	slli.d	$s1, $a3, 2
	bstrins.d	$s1, $zero, 4, 0
	.p2align	4, , 16
.LBB0_46:                               # %vector.body108
                                        #   Parent Loop BB0_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvldx	$xr1, $a2, $t3
	add.d	$t2, $t6, $t3
	xvstx	$xr1, $t6, $t3
	vld	$vr1, $t2, 16
	vpickve2gr.w	$t2, $vr1, 3
	vldx	$vr2, $t6, $t3
	vpickve2gr.w	$t4, $vr1, 2
	vpickve2gr.w	$t5, $vr1, 1
	vpickve2gr.w	$t7, $vr1, 0
	vpickve2gr.w	$a3, $vr2, 3
	vpickve2gr.w	$t0, $vr2, 2
	vpickve2gr.w	$s7, $vr2, 1
	vpickve2gr.w	$s6, $vr2, 0
	slli.d	$s6, $s6, 2
	slli.d	$s7, $s7, 2
	slli.d	$t0, $t0, 2
	slli.d	$a3, $a3, 2
	slli.d	$t7, $t7, 2
	slli.d	$t5, $t5, 2
	slli.d	$t4, $t4, 2
	slli.d	$t2, $t2, 2
	ldx.w	$s6, $s4, $s6
	ldx.w	$s7, $s4, $s7
	ldx.w	$t0, $s4, $t0
	ldx.w	$a3, $s4, $a3
	ldx.w	$t7, $s4, $t7
	ldx.w	$t5, $s4, $t5
	ldx.w	$t4, $s4, $t4
	ldx.w	$t2, $s4, $t2
	xvinsgr2vr.w	$xr1, $s6, 0
	xvinsgr2vr.w	$xr1, $s7, 1
	xvinsgr2vr.w	$xr1, $t0, 2
	xvinsgr2vr.w	$xr1, $a3, 3
	xvinsgr2vr.w	$xr1, $t7, 4
	xvinsgr2vr.w	$xr1, $t5, 5
	xvinsgr2vr.w	$xr1, $t4, 6
	xvinsgr2vr.w	$xr1, $t2, 7
	xvstx	$xr1, $a2, $t3
	addi.d	$t3, $t3, 32
	bne	$s1, $t3, .LBB0_46
# %bb.47:                               # %middle.block112
                                        #   in Loop: Header=BB0_17 Depth=1
	ld.d	$s6, $sp, 40                    # 8-byte Folded Reload
	ld.d	$t5, $sp, 48                    # 8-byte Folded Reload
	ld.d	$t7, $sp, 56                    # 8-byte Folded Reload
	move	$a3, $a1
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	beq	$a1, $a3, .LBB0_50
.LBB0_48:                               # %.lr.ph343.i.preheader
                                        #   in Loop: Header=BB0_17 Depth=1
	sub.d	$a3, $a3, $a1
	slli.d	$t0, $a1, 2
	.p2align	4, , 16
.LBB0_49:                               # %.lr.ph343.i
                                        #   Parent Loop BB0_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.w	$t2, $a2, $t0
	slli.d	$t3, $t2, 2
	ldx.w	$t3, $s4, $t3
	stx.w	$t2, $t6, $t0
	stx.w	$t3, $a2, $t0
	addi.d	$a3, $a3, -1
	addi.d	$t0, $t0, 4
	bnez	$a3, .LBB0_49
	.p2align	4, , 16
.LBB0_50:                               # %.loopexit322.i
                                        #   in Loop: Header=BB0_17 Depth=1
	sub.d	$a1, $t7, $s6
	slli.d	$a3, $ra, 2
	stx.w	$a1, $a3, $t1
	ori	$a1, $zero, 15
	beq	$s8, $a1, .LBB0_63
# %bb.51:                               #   in Loop: Header=BB0_17 Depth=1
	addi.d	$a1, $sp, 748
	ldx.w	$t0, $a3, $a1
	addi.w	$a3, $zero, -1
	beq	$t0, $a3, .LBB0_53
# %bb.52:                               #   in Loop: Header=BB0_17 Depth=1
	slli.d	$a1, $t0, 2
	ldx.w	$t0, $s3, $a1
	alsl.d	$t3, $ra, $a6, 2
	bge	$s6, $a5, .LBB0_54
	b	.LBB0_16
	.p2align	4, , 16
.LBB0_53:                               #   in Loop: Header=BB0_17 Depth=1
	move	$t0, $zero
	alsl.d	$t3, $ra, $a6, 2
	blt	$s6, $a5, .LBB0_16
.LBB0_54:                               # %.lr.ph346.i
                                        #   in Loop: Header=BB0_17 Depth=1
	addi.d	$a1, $s6, 1
	bstrpick.d	$a1, $a1, 31, 0
	addi.d	$s1, $a1, -1
	move	$s8, $t5
	move	$ra, $a4
	b	.LBB0_56
	.p2align	4, , 16
.LBB0_55:                               #   in Loop: Header=BB0_56 Depth=2
	addi.d	$s1, $s1, -1
	addi.d	$ra, $ra, 4
	addi.d	$s8, $s8, -4
	beqz	$s1, .LBB0_16
.LBB0_56:                               #   Parent Loop BB0_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t2, $s8, 0
	beq	$t2, $a3, .LBB0_55
# %bb.57:                               #   in Loop: Header=BB0_56 Depth=2
	ld.w	$t4, $ra, 0
	beqz	$t4, .LBB0_55
# %bb.58:                               #   in Loop: Header=BB0_56 Depth=2
	slli.d	$a1, $t4, 2
	ldx.w	$a1, $s4, $a1
	add.w	$a1, $a1, $t2
	mul.d	$t2, $a1, $s5
	srli.d	$t2, $t2, 32
	add.w	$t2, $t2, $a1
	bstrpick.d	$t4, $t2, 31, 31
	srai.d	$t2, $t2, 7
	add.d	$t2, $t2, $t4
	slli.d	$t4, $t2, 8
	sub.d	$t2, $t2, $t4
	add.w	$a1, $a1, $t2
	slli.d	$a1, $a1, 2
	ldx.w	$a1, $s3, $a1
	xor	$t0, $a1, $t0
	st.w	$t0, $t3, 0
	b	.LBB0_55
.LBB0_59:                               # %.preheader.i.preheader
	move	$a0, $zero
	addi.w	$a1, $zero, -1
	ori	$a2, $zero, 1020
	b	.LBB0_61
	.p2align	4, , 16
.LBB0_60:                               #   in Loop: Header=BB0_61 Depth=1
	slli.d	$a3, $a3, 2
	ldx.w	$a3, $s3, $a3
	stx.w	$a3, $s2, $a0
	addi.d	$a0, $a0, 4
	beq	$a0, $a2, .LBB0_95
.LBB0_61:                               # %.preheader.i
                                        # =>This Inner Loop Header: Depth=1
	ldx.w	$a3, $s2, $a0
	bne	$a3, $a1, .LBB0_60
# %bb.62:                               #   in Loop: Header=BB0_61 Depth=1
	move	$a3, $zero
	stx.w	$a3, $s2, $a0
	addi.d	$a0, $a0, 4
	bne	$a0, $a2, .LBB0_61
	b	.LBB0_95
.LBB0_63:                               # %.critedge.i
	ori	$a0, $zero, 9
	bge	$s6, $a0, .LBB0_91
# %bb.64:                               # %.preheader319.i
	addi.d	$a0, $s6, 1
	bstrpick.d	$s7, $a0, 31, 0
	bltz	$s6, .LBB0_97
# %bb.65:                               # %.lr.ph350.i.preheader
	ori	$a0, $zero, 2120
	add.d	$a0, $sp, $a0
	move	$a1, $s7
	.p2align	4, , 16
.LBB0_66:                               # %.lr.ph350.i
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a2, $a0, 0
	slli.d	$a2, $a2, 2
	ldx.w	$a2, $s4, $a2
	st.w	$a2, $a0, 0
	addi.d	$a1, $a1, -1
	addi.d	$a0, $a0, 4
	bnez	$a1, .LBB0_66
# %bb.67:                               # %.preheader318.i
	beqz	$s6, .LBB0_96
# %bb.68:                               # %.preheader316.i.preheader
	addi.d	$s1, $sp, 616
	ori	$a0, $zero, 2124
	add.d	$a1, $sp, $a0
	slli.d	$a2, $s6, 2
	move	$a0, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	move	$a1, $zero
	addi.d	$a2, $s7, -1
	ori	$a3, $zero, 1
	addi.w	$a0, $zero, -1
	addi.d	$a4, $sp, 716
	ori	$a5, $zero, 255
	addi.d	$a6, $sp, 684
	ori	$a7, $zero, 256
	b	.LBB0_71
	.p2align	4, , 16
.LBB0_69:                               # %._crit_edge358.i
                                        #   in Loop: Header=BB0_71 Depth=1
	beqz	$t2, .LBB0_75
# %bb.70:                               # %._crit_edge358.thread.i
                                        #   in Loop: Header=BB0_71 Depth=1
	addi.w	$a3, $a3, 1
	beq	$a3, $a7, .LBB0_76
.LBB0_71:                               # %.preheader316.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_73 Depth 2
	move	$t0, $s1
	ori	$t1, $zero, 1
	move	$t3, $a2
	ori	$t2, $zero, 1
	b	.LBB0_73
	.p2align	4, , 16
.LBB0_72:                               #   in Loop: Header=BB0_73 Depth=2
	addi.d	$t3, $t3, -1
	addi.d	$t1, $t1, 1
	addi.d	$t0, $t0, 4
	beqz	$t3, .LBB0_69
.LBB0_73:                               # %.lr.ph357.i
                                        #   Parent Loop BB0_71 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t4, $t0, 0
	beq	$t4, $a0, .LBB0_72
# %bb.74:                               #   in Loop: Header=BB0_73 Depth=2
	add.w	$t4, $t1, $t4
	mul.d	$t5, $t4, $s5
	srli.d	$t5, $t5, 32
	add.w	$t5, $t5, $t4
	bstrpick.d	$t6, $t5, 31, 31
	srai.d	$t5, $t5, 7
	add.d	$t5, $t5, $t6
	slli.d	$t6, $t5, 8
	sub.d	$t5, $t5, $t6
	add.w	$t4, $t4, $t5
	slli.d	$t5, $t4, 2
	ldx.w	$t5, $s3, $t5
	st.w	$t4, $t0, 0
	xor	$t2, $t5, $t2
	b	.LBB0_72
	.p2align	4, , 16
.LBB0_75:                               #   in Loop: Header=BB0_71 Depth=1
	slli.d	$t0, $a1, 2
	stx.w	$a3, $t0, $a4
	sub.d	$t1, $a5, $a3
	stx.w	$t1, $t0, $a6
	addi.w	$a1, $a1, 1
	addi.w	$a3, $a3, 1
	bne	$a3, $a7, .LBB0_71
.LBB0_76:                               # %.split.us.thread
	bne	$a1, $s6, .LBB0_98
# %bb.77:                               # %.lr.ph368.i.preheader
	move	$a1, $zero
	ori	$a2, $zero, 2120
	add.d	$a2, $sp, $a2
	ori	$a3, $zero, 1
	addi.d	$a4, $sp, 752
	addi.d	$a5, $sp, 748
	addi.d	$a6, $sp, 1032
	ori	$a7, $zero, 2
	addi.d	$t0, $sp, 648
	b	.LBB0_79
	.p2align	4, , 16
.LBB0_78:                               # %._crit_edge365.i
                                        #   in Loop: Header=BB0_79 Depth=1
	slli.d	$t2, $t2, 2
	ldx.w	$t2, $s4, $t2
	stx.w	$t2, $t1, $t0
	addi.d	$a3, $a3, 1
	addi.d	$a1, $a1, 4
	beq	$a3, $s7, .LBB0_102
.LBB0_79:                               # %.lr.ph368.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_87 Depth 2
	slli.d	$t1, $a3, 2
	ldx.w	$t2, $t1, $a5
	alsl.d	$t3, $a3, $a6, 2
	ld.w	$t3, $t3, 1088
	beq	$t2, $a0, .LBB0_82
# %bb.80:                               #   in Loop: Header=BB0_79 Depth=1
	slli.d	$t2, $t2, 2
	ldx.w	$t2, $s3, $t2
	beq	$t3, $a0, .LBB0_84
# %bb.81:                               #   in Loop: Header=BB0_79 Depth=1
	slli.d	$t3, $t3, 2
	ldx.w	$t3, $s3, $t3
	xor	$t2, $t3, $t2
	bltu	$a3, $a7, .LBB0_78
	b	.LBB0_85
	.p2align	4, , 16
.LBB0_82:                               #   in Loop: Header=BB0_79 Depth=1
	beq	$t3, $a0, .LBB0_90
# %bb.83:                               #   in Loop: Header=BB0_79 Depth=1
	slli.d	$t2, $t3, 2
	ldx.w	$t2, $s3, $t2
.LBB0_84:                               #   in Loop: Header=BB0_79 Depth=1
	bltu	$a3, $a7, .LBB0_78
.LBB0_85:                               # %.lr.ph364.i
                                        #   in Loop: Header=BB0_79 Depth=1
	alsl.d	$t3, $a3, $t0, 2
	move	$t4, $a4
	move	$t5, $a1
	b	.LBB0_87
	.p2align	4, , 16
.LBB0_86:                               #   in Loop: Header=BB0_87 Depth=2
	addi.d	$t5, $t5, -4
	addi.d	$t4, $t4, 4
	beqz	$t5, .LBB0_78
.LBB0_87:                               #   Parent Loop BB0_79 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t6, $t4, 0
	beq	$t6, $a0, .LBB0_86
# %bb.88:                               #   in Loop: Header=BB0_87 Depth=2
	ldx.w	$t7, $a2, $t5
	beq	$t7, $a0, .LBB0_86
# %bb.89:                               #   in Loop: Header=BB0_87 Depth=2
	add.w	$t6, $t7, $t6
	mul.d	$t7, $t6, $s5
	srli.d	$t7, $t7, 32
	add.w	$t7, $t7, $t6
	bstrpick.d	$t8, $t7, 31, 31
	srai.d	$t7, $t7, 7
	add.d	$t7, $t7, $t8
	slli.d	$t8, $t7, 8
	sub.d	$t7, $t7, $t8
	add.w	$t6, $t6, $t7
	slli.d	$t6, $t6, 2
	ldx.w	$t6, $s3, $t6
	xor	$t2, $t6, $t2
	st.w	$t2, $t3, 0
	b	.LBB0_86
.LBB0_90:                               #   in Loop: Header=BB0_79 Depth=1
	move	$t2, $zero
	bltu	$a3, $a7, .LBB0_78
	b	.LBB0_85
.LBB0_91:                               # %.preheader320.i.preheader
	move	$a0, $zero
	addi.w	$a1, $zero, -1
	ori	$a2, $zero, 1020
	b	.LBB0_93
	.p2align	4, , 16
.LBB0_92:                               #   in Loop: Header=BB0_93 Depth=1
	slli.d	$a3, $a3, 2
	ldx.w	$a3, $s3, $a3
	stx.w	$a3, $s2, $a0
	addi.d	$a0, $a0, 4
	beq	$a0, $a2, .LBB0_95
.LBB0_93:                               # %.preheader320.i
                                        # =>This Inner Loop Header: Depth=1
	ldx.w	$a3, $s2, $a0
	bne	$a3, $a1, .LBB0_92
# %bb.94:                               #   in Loop: Header=BB0_93 Depth=1
	move	$a3, $zero
	stx.w	$a3, $s2, $a0
	addi.d	$a0, $a0, 4
	bne	$a0, $a2, .LBB0_93
.LBB0_95:                               # %iter.check
	xvld	$xr0, $s2, 268
	xvld	$xr1, $s2, 300
	xvpickve2gr.w	$a0, $xr0, 7
	st.b	$a0, $sp, 71
	xvpickve2gr.w	$a0, $xr0, 6
	st.b	$a0, $sp, 70
	xvpickve2gr.w	$a0, $xr0, 5
	st.b	$a0, $sp, 69
	xvpickve2gr.w	$a0, $xr0, 4
	st.b	$a0, $sp, 68
	xvpickve2gr.w	$a0, $xr0, 3
	st.b	$a0, $sp, 67
	xvpickve2gr.w	$a0, $xr0, 2
	st.b	$a0, $sp, 66
	xvpickve2gr.w	$a0, $xr0, 1
	st.b	$a0, $sp, 65
	xvpickve2gr.w	$a0, $xr0, 0
	st.b	$a0, $sp, 64
	xvpickve2gr.w	$a0, $xr1, 7
	st.b	$a0, $sp, 87
	xvpickve2gr.w	$a0, $xr1, 6
	st.b	$a0, $sp, 86
	xvpickve2gr.w	$a0, $xr1, 5
	st.b	$a0, $sp, 85
	xvpickve2gr.w	$a0, $xr1, 4
	st.b	$a0, $sp, 84
	xvpickve2gr.w	$a0, $xr1, 3
	st.b	$a0, $sp, 83
	xvpickve2gr.w	$a0, $xr1, 2
	st.b	$a0, $sp, 82
	xvpickve2gr.w	$a0, $xr1, 1
	st.b	$a0, $sp, 81
	xvpickve2gr.w	$a0, $xr1, 0
	st.b	$a0, $sp, 80
	vld	$vr0, $sp, 64
	vld	$vr1, $sp, 80
	vpackev.d	$vr0, $vr1, $vr0
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	vst	$vr0, $a1, 0
	xvld	$xr0, $s2, 332
	xvld	$xr1, $s2, 364
	xvpickve2gr.w	$a0, $xr0, 7
	st.b	$a0, $sp, 119
	xvpickve2gr.w	$a0, $xr0, 6
	st.b	$a0, $sp, 118
	xvpickve2gr.w	$a0, $xr0, 5
	st.b	$a0, $sp, 117
	xvpickve2gr.w	$a0, $xr0, 4
	st.b	$a0, $sp, 116
	xvpickve2gr.w	$a0, $xr0, 3
	st.b	$a0, $sp, 115
	xvpickve2gr.w	$a0, $xr0, 2
	st.b	$a0, $sp, 114
	xvpickve2gr.w	$a0, $xr0, 1
	st.b	$a0, $sp, 113
	xvpickve2gr.w	$a0, $xr0, 0
	st.b	$a0, $sp, 112
	xvpickve2gr.w	$a0, $xr1, 7
	st.b	$a0, $sp, 103
	xvpickve2gr.w	$a0, $xr1, 6
	st.b	$a0, $sp, 102
	xvpickve2gr.w	$a0, $xr1, 5
	st.b	$a0, $sp, 101
	xvpickve2gr.w	$a0, $xr1, 4
	st.b	$a0, $sp, 100
	xvpickve2gr.w	$a0, $xr1, 3
	st.b	$a0, $sp, 99
	xvpickve2gr.w	$a0, $xr1, 2
	st.b	$a0, $sp, 98
	xvpickve2gr.w	$a0, $xr1, 1
	st.b	$a0, $sp, 97
	xvpickve2gr.w	$a0, $xr1, 0
	st.b	$a0, $sp, 96
	vld	$vr0, $sp, 112
	vld	$vr1, $sp, 96
	vpackev.d	$vr0, $vr1, $vr0
	vst	$vr0, $a1, 16
	xvld	$xr0, $s2, 396
	xvld	$xr1, $s2, 428
	xvpickve2gr.w	$a0, $xr0, 7
	st.b	$a0, $sp, 151
	xvpickve2gr.w	$a0, $xr0, 6
	st.b	$a0, $sp, 150
	xvpickve2gr.w	$a0, $xr0, 5
	st.b	$a0, $sp, 149
	xvpickve2gr.w	$a0, $xr0, 4
	st.b	$a0, $sp, 148
	xvpickve2gr.w	$a0, $xr0, 3
	st.b	$a0, $sp, 147
	xvpickve2gr.w	$a0, $xr0, 2
	st.b	$a0, $sp, 146
	xvpickve2gr.w	$a0, $xr0, 1
	st.b	$a0, $sp, 145
	xvpickve2gr.w	$a0, $xr0, 0
	st.b	$a0, $sp, 144
	xvpickve2gr.w	$a0, $xr1, 7
	st.b	$a0, $sp, 135
	xvpickve2gr.w	$a0, $xr1, 6
	st.b	$a0, $sp, 134
	xvpickve2gr.w	$a0, $xr1, 5
	st.b	$a0, $sp, 133
	xvpickve2gr.w	$a0, $xr1, 4
	st.b	$a0, $sp, 132
	xvpickve2gr.w	$a0, $xr1, 3
	st.b	$a0, $sp, 131
	xvpickve2gr.w	$a0, $xr1, 2
	st.b	$a0, $sp, 130
	xvpickve2gr.w	$a0, $xr1, 1
	st.b	$a0, $sp, 129
	xvpickve2gr.w	$a0, $xr1, 0
	st.b	$a0, $sp, 128
	vld	$vr0, $sp, 144
	vld	$vr1, $sp, 128
	vpackev.d	$vr0, $vr1, $vr0
	vst	$vr0, $a1, 32
	xvld	$xr0, $s2, 460
	xvld	$xr1, $s2, 492
	xvpickve2gr.w	$a0, $xr0, 7
	st.b	$a0, $sp, 183
	xvpickve2gr.w	$a0, $xr0, 6
	st.b	$a0, $sp, 182
	xvpickve2gr.w	$a0, $xr0, 5
	st.b	$a0, $sp, 181
	xvpickve2gr.w	$a0, $xr0, 4
	st.b	$a0, $sp, 180
	xvpickve2gr.w	$a0, $xr0, 3
	st.b	$a0, $sp, 179
	xvpickve2gr.w	$a0, $xr0, 2
	st.b	$a0, $sp, 178
	xvpickve2gr.w	$a0, $xr0, 1
	st.b	$a0, $sp, 177
	xvpickve2gr.w	$a0, $xr0, 0
	st.b	$a0, $sp, 176
	xvpickve2gr.w	$a0, $xr1, 7
	st.b	$a0, $sp, 167
	xvpickve2gr.w	$a0, $xr1, 6
	st.b	$a0, $sp, 166
	xvpickve2gr.w	$a0, $xr1, 5
	st.b	$a0, $sp, 165
	xvpickve2gr.w	$a0, $xr1, 4
	st.b	$a0, $sp, 164
	xvpickve2gr.w	$a0, $xr1, 3
	st.b	$a0, $sp, 163
	xvpickve2gr.w	$a0, $xr1, 2
	st.b	$a0, $sp, 162
	xvpickve2gr.w	$a0, $xr1, 1
	st.b	$a0, $sp, 161
	xvpickve2gr.w	$a0, $xr1, 0
	st.b	$a0, $sp, 160
	vld	$vr0, $sp, 176
	vld	$vr1, $sp, 160
	vpackev.d	$vr0, $vr1, $vr0
	vst	$vr0, $a1, 48
	xvld	$xr0, $s2, 524
	xvld	$xr1, $s2, 556
	xvpickve2gr.w	$a0, $xr0, 7
	st.b	$a0, $sp, 215
	xvpickve2gr.w	$a0, $xr0, 6
	st.b	$a0, $sp, 214
	xvpickve2gr.w	$a0, $xr0, 5
	st.b	$a0, $sp, 213
	xvpickve2gr.w	$a0, $xr0, 4
	st.b	$a0, $sp, 212
	xvpickve2gr.w	$a0, $xr0, 3
	st.b	$a0, $sp, 211
	xvpickve2gr.w	$a0, $xr0, 2
	st.b	$a0, $sp, 210
	xvpickve2gr.w	$a0, $xr0, 1
	st.b	$a0, $sp, 209
	xvpickve2gr.w	$a0, $xr0, 0
	st.b	$a0, $sp, 208
	xvpickve2gr.w	$a0, $xr1, 7
	st.b	$a0, $sp, 199
	xvpickve2gr.w	$a0, $xr1, 6
	st.b	$a0, $sp, 198
	xvpickve2gr.w	$a0, $xr1, 5
	st.b	$a0, $sp, 197
	xvpickve2gr.w	$a0, $xr1, 4
	st.b	$a0, $sp, 196
	xvpickve2gr.w	$a0, $xr1, 3
	st.b	$a0, $sp, 195
	xvpickve2gr.w	$a0, $xr1, 2
	st.b	$a0, $sp, 194
	xvpickve2gr.w	$a0, $xr1, 1
	st.b	$a0, $sp, 193
	xvpickve2gr.w	$a0, $xr1, 0
	st.b	$a0, $sp, 192
	vld	$vr0, $sp, 208
	vld	$vr1, $sp, 192
	vpackev.d	$vr0, $vr1, $vr0
	vst	$vr0, $a1, 64
	xvld	$xr0, $s2, 588
	xvld	$xr1, $s2, 620
	xvpickve2gr.w	$a0, $xr0, 7
	st.b	$a0, $sp, 247
	xvpickve2gr.w	$a0, $xr0, 6
	st.b	$a0, $sp, 246
	xvpickve2gr.w	$a0, $xr0, 5
	st.b	$a0, $sp, 245
	xvpickve2gr.w	$a0, $xr0, 4
	st.b	$a0, $sp, 244
	xvpickve2gr.w	$a0, $xr0, 3
	st.b	$a0, $sp, 243
	xvpickve2gr.w	$a0, $xr0, 2
	st.b	$a0, $sp, 242
	xvpickve2gr.w	$a0, $xr0, 1
	st.b	$a0, $sp, 241
	xvpickve2gr.w	$a0, $xr0, 0
	st.b	$a0, $sp, 240
	xvpickve2gr.w	$a0, $xr1, 7
	st.b	$a0, $sp, 231
	xvpickve2gr.w	$a0, $xr1, 6
	st.b	$a0, $sp, 230
	xvpickve2gr.w	$a0, $xr1, 5
	st.b	$a0, $sp, 229
	xvpickve2gr.w	$a0, $xr1, 4
	st.b	$a0, $sp, 228
	xvpickve2gr.w	$a0, $xr1, 3
	st.b	$a0, $sp, 227
	xvpickve2gr.w	$a0, $xr1, 2
	st.b	$a0, $sp, 226
	xvpickve2gr.w	$a0, $xr1, 1
	st.b	$a0, $sp, 225
	xvpickve2gr.w	$a0, $xr1, 0
	st.b	$a0, $sp, 224
	vld	$vr0, $sp, 240
	vld	$vr1, $sp, 224
	vpackev.d	$vr0, $vr1, $vr0
	vst	$vr0, $a1, 80
	xvld	$xr0, $s2, 652
	xvld	$xr1, $s2, 684
	xvpickve2gr.w	$a0, $xr0, 7
	st.b	$a0, $sp, 279
	xvpickve2gr.w	$a0, $xr0, 6
	st.b	$a0, $sp, 278
	xvpickve2gr.w	$a0, $xr0, 5
	st.b	$a0, $sp, 277
	xvpickve2gr.w	$a0, $xr0, 4
	st.b	$a0, $sp, 276
	xvpickve2gr.w	$a0, $xr0, 3
	st.b	$a0, $sp, 275
	xvpickve2gr.w	$a0, $xr0, 2
	st.b	$a0, $sp, 274
	xvpickve2gr.w	$a0, $xr0, 1
	st.b	$a0, $sp, 273
	xvpickve2gr.w	$a0, $xr0, 0
	st.b	$a0, $sp, 272
	xvpickve2gr.w	$a0, $xr1, 7
	st.b	$a0, $sp, 263
	xvpickve2gr.w	$a0, $xr1, 6
	st.b	$a0, $sp, 262
	xvpickve2gr.w	$a0, $xr1, 5
	st.b	$a0, $sp, 261
	xvpickve2gr.w	$a0, $xr1, 4
	st.b	$a0, $sp, 260
	xvpickve2gr.w	$a0, $xr1, 3
	st.b	$a0, $sp, 259
	xvpickve2gr.w	$a0, $xr1, 2
	st.b	$a0, $sp, 258
	xvpickve2gr.w	$a0, $xr1, 1
	st.b	$a0, $sp, 257
	xvpickve2gr.w	$a0, $xr1, 0
	st.b	$a0, $sp, 256
	vld	$vr0, $sp, 272
	vld	$vr1, $sp, 256
	vpackev.d	$vr0, $vr1, $vr0
	vst	$vr0, $a1, 96
	xvld	$xr0, $s2, 716
	xvld	$xr1, $s2, 748
	xvpickve2gr.w	$a0, $xr0, 7
	st.b	$a0, $sp, 311
	xvpickve2gr.w	$a0, $xr0, 6
	st.b	$a0, $sp, 310
	xvpickve2gr.w	$a0, $xr0, 5
	st.b	$a0, $sp, 309
	xvpickve2gr.w	$a0, $xr0, 4
	st.b	$a0, $sp, 308
	xvpickve2gr.w	$a0, $xr0, 3
	st.b	$a0, $sp, 307
	xvpickve2gr.w	$a0, $xr0, 2
	st.b	$a0, $sp, 306
	xvpickve2gr.w	$a0, $xr0, 1
	st.b	$a0, $sp, 305
	xvpickve2gr.w	$a0, $xr0, 0
	st.b	$a0, $sp, 304
	xvpickve2gr.w	$a0, $xr1, 7
	st.b	$a0, $sp, 295
	xvpickve2gr.w	$a0, $xr1, 6
	st.b	$a0, $sp, 294
	xvpickve2gr.w	$a0, $xr1, 5
	st.b	$a0, $sp, 293
	xvpickve2gr.w	$a0, $xr1, 4
	st.b	$a0, $sp, 292
	xvpickve2gr.w	$a0, $xr1, 3
	st.b	$a0, $sp, 291
	xvpickve2gr.w	$a0, $xr1, 2
	st.b	$a0, $sp, 290
	xvpickve2gr.w	$a0, $xr1, 1
	st.b	$a0, $sp, 289
	xvpickve2gr.w	$a0, $xr1, 0
	st.b	$a0, $sp, 288
	vld	$vr0, $sp, 304
	vld	$vr1, $sp, 288
	vpackev.d	$vr0, $vr1, $vr0
	vst	$vr0, $a1, 112
	xvld	$xr0, $s2, 780
	xvld	$xr1, $s2, 812
	xvpickve2gr.w	$a0, $xr0, 7
	st.b	$a0, $sp, 343
	xvpickve2gr.w	$a0, $xr0, 6
	st.b	$a0, $sp, 342
	xvpickve2gr.w	$a0, $xr0, 5
	st.b	$a0, $sp, 341
	xvpickve2gr.w	$a0, $xr0, 4
	st.b	$a0, $sp, 340
	xvpickve2gr.w	$a0, $xr0, 3
	st.b	$a0, $sp, 339
	xvpickve2gr.w	$a0, $xr0, 2
	st.b	$a0, $sp, 338
	xvpickve2gr.w	$a0, $xr0, 1
	st.b	$a0, $sp, 337
	xvpickve2gr.w	$a0, $xr0, 0
	st.b	$a0, $sp, 336
	xvpickve2gr.w	$a0, $xr1, 7
	st.b	$a0, $sp, 327
	xvpickve2gr.w	$a0, $xr1, 6
	st.b	$a0, $sp, 326
	xvpickve2gr.w	$a0, $xr1, 5
	st.b	$a0, $sp, 325
	xvpickve2gr.w	$a0, $xr1, 4
	st.b	$a0, $sp, 324
	xvpickve2gr.w	$a0, $xr1, 3
	st.b	$a0, $sp, 323
	xvpickve2gr.w	$a0, $xr1, 2
	st.b	$a0, $sp, 322
	xvpickve2gr.w	$a0, $xr1, 1
	st.b	$a0, $sp, 321
	xvpickve2gr.w	$a0, $xr1, 0
	st.b	$a0, $sp, 320
	vld	$vr0, $sp, 336
	vld	$vr1, $sp, 320
	vpackev.d	$vr0, $vr1, $vr0
	vst	$vr0, $a1, 128
	xvld	$xr0, $s2, 844
	xvld	$xr1, $s2, 876
	xvpickve2gr.w	$a0, $xr0, 7
	st.b	$a0, $sp, 375
	xvpickve2gr.w	$a0, $xr0, 6
	st.b	$a0, $sp, 374
	xvpickve2gr.w	$a0, $xr0, 5
	st.b	$a0, $sp, 373
	xvpickve2gr.w	$a0, $xr0, 4
	st.b	$a0, $sp, 372
	xvpickve2gr.w	$a0, $xr0, 3
	st.b	$a0, $sp, 371
	xvpickve2gr.w	$a0, $xr0, 2
	st.b	$a0, $sp, 370
	xvpickve2gr.w	$a0, $xr0, 1
	st.b	$a0, $sp, 369
	xvpickve2gr.w	$a0, $xr0, 0
	st.b	$a0, $sp, 368
	xvpickve2gr.w	$a0, $xr1, 7
	st.b	$a0, $sp, 359
	xvpickve2gr.w	$a0, $xr1, 6
	st.b	$a0, $sp, 358
	xvpickve2gr.w	$a0, $xr1, 5
	st.b	$a0, $sp, 357
	xvpickve2gr.w	$a0, $xr1, 4
	st.b	$a0, $sp, 356
	xvpickve2gr.w	$a0, $xr1, 3
	st.b	$a0, $sp, 355
	xvpickve2gr.w	$a0, $xr1, 2
	st.b	$a0, $sp, 354
	xvpickve2gr.w	$a0, $xr1, 1
	st.b	$a0, $sp, 353
	xvpickve2gr.w	$a0, $xr1, 0
	st.b	$a0, $sp, 352
	vld	$vr0, $sp, 368
	vld	$vr1, $sp, 352
	vpackev.d	$vr0, $vr1, $vr0
	vst	$vr0, $a1, 144
	xvld	$xr0, $s2, 908
	xvld	$xr1, $s2, 940
	xvpickve2gr.w	$a0, $xr0, 7
	st.b	$a0, $sp, 407
	xvpickve2gr.w	$a0, $xr0, 6
	st.b	$a0, $sp, 406
	xvpickve2gr.w	$a0, $xr0, 5
	st.b	$a0, $sp, 405
	xvpickve2gr.w	$a0, $xr0, 4
	st.b	$a0, $sp, 404
	xvpickve2gr.w	$a0, $xr0, 3
	st.b	$a0, $sp, 403
	xvpickve2gr.w	$a0, $xr0, 2
	st.b	$a0, $sp, 402
	xvpickve2gr.w	$a0, $xr0, 1
	st.b	$a0, $sp, 401
	xvpickve2gr.w	$a0, $xr0, 0
	st.b	$a0, $sp, 400
	xvpickve2gr.w	$a0, $xr1, 7
	st.b	$a0, $sp, 391
	xvpickve2gr.w	$a0, $xr1, 6
	st.b	$a0, $sp, 390
	xvpickve2gr.w	$a0, $xr1, 5
	st.b	$a0, $sp, 389
	xvpickve2gr.w	$a0, $xr1, 4
	st.b	$a0, $sp, 388
	xvpickve2gr.w	$a0, $xr1, 3
	st.b	$a0, $sp, 387
	xvpickve2gr.w	$a0, $xr1, 2
	st.b	$a0, $sp, 386
	xvpickve2gr.w	$a0, $xr1, 1
	st.b	$a0, $sp, 385
	xvpickve2gr.w	$a0, $xr1, 0
	st.b	$a0, $sp, 384
	vld	$vr0, $sp, 400
	vld	$vr1, $sp, 384
	vpackev.d	$vr0, $vr1, $vr0
	vst	$vr0, $a1, 160
	vld	$vr0, $s2, 972
	pcalau12i	$a0, %pc_hi20(.LCPI0_1)
	vld	$vr1, $a0, %pc_lo12(.LCPI0_1)
	vshuf.b	$vr0, $vr0, $vr0, $vr1
	vstelm.w	$vr0, $a1, 176, 0
	vld	$vr0, $s2, 988
	vshuf.b	$vr0, $vr0, $vr0, $vr1
	vstelm.w	$vr0, $a1, 180, 0
	vld	$vr0, $s2, 1004
	vshuf.b	$vr0, $vr0, $vr0, $vr1
	vstelm.w	$vr0, $a1, 184, 0
	addi.d	$sp, $fp, -2048
	addi.d	$sp, $sp, -224
	addi.d	$sp, $sp, 240
	ld.d	$s8, $sp, 1944                  # 8-byte Folded Reload
	ld.d	$s7, $sp, 1952                  # 8-byte Folded Reload
	ld.d	$s6, $sp, 1960                  # 8-byte Folded Reload
	ld.d	$s5, $sp, 1968                  # 8-byte Folded Reload
	ld.d	$s4, $sp, 1976                  # 8-byte Folded Reload
	ld.d	$s3, $sp, 1984                  # 8-byte Folded Reload
	ld.d	$s2, $sp, 1992                  # 8-byte Folded Reload
	ld.d	$s1, $sp, 2000                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 2008                  # 8-byte Folded Reload
	ld.d	$fp, $sp, 2016                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 2024                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 2032
	ret
.LBB0_96:
	ori	$s7, $zero, 1
.LBB0_97:                               # %.split.us
	beqz	$s6, .LBB0_102
.LBB0_98:                               # %.preheader314.i.preheader
	move	$a0, $zero
	addi.w	$a1, $zero, -1
	ori	$a2, $zero, 1020
	b	.LBB0_100
	.p2align	4, , 16
.LBB0_99:                               #   in Loop: Header=BB0_100 Depth=1
	slli.d	$a3, $a3, 2
	ldx.w	$a3, $s3, $a3
	stx.w	$a3, $s2, $a0
	addi.d	$a0, $a0, 4
	beq	$a0, $a2, .LBB0_95
.LBB0_100:                              # %.preheader314.i
                                        # =>This Inner Loop Header: Depth=1
	ldx.w	$a3, $s2, $a0
	bne	$a3, $a1, .LBB0_99
# %bb.101:                              #   in Loop: Header=BB0_100 Depth=1
	move	$a3, $zero
	stx.w	$a3, $s2, $a0
	addi.d	$a0, $a0, 4
	bne	$a0, $a2, .LBB0_100
	b	.LBB0_95
.LBB0_102:                              # %.preheader312.i
	move	$a1, $zero
	addi.w	$a0, $zero, -1
	ori	$a2, $zero, 1020
	b	.LBB0_104
	.p2align	4, , 16
.LBB0_103:                              #   in Loop: Header=BB0_104 Depth=1
	slli.d	$a3, $a3, 2
	ldx.w	$a3, $s3, $a3
	stx.w	$a3, $s2, $a1
	addi.d	$a1, $a1, 4
	beq	$a1, $a2, .LBB0_106
.LBB0_104:                              # =>This Inner Loop Header: Depth=1
	ldx.w	$a3, $s2, $a1
	bne	$a3, $a0, .LBB0_103
# %bb.105:                              #   in Loop: Header=BB0_104 Depth=1
	move	$a3, $zero
	stx.w	$a3, $s2, $a1
	addi.d	$a1, $a1, 4
	bne	$a1, $a2, .LBB0_104
.LBB0_106:                              # %.preheader310.i
	ori	$a1, $zero, 1
	blt	$s6, $a1, .LBB0_95
# %bb.107:                              # %.lr.ph383.i
	move	$a1, $zero
	addi.d	$a2, $s7, -1
	addi.d	$a3, $sp, 652
	addi.d	$a4, $sp, 684
	addi.d	$a5, $sp, 716
	b	.LBB0_110
	.p2align	4, , 16
.LBB0_108:                              # %._crit_edge379.i
                                        #   in Loop: Header=BB0_110 Depth=1
	mul.d	$a7, $t1, $s5
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
	mul.d	$t0, $a7, $s5
	srli.d	$t0, $t0, 32
	add.w	$t0, $t0, $a7
	bstrpick.d	$t1, $t0, 31, 31
	srai.d	$t0, $t0, 7
	add.d	$t0, $t0, $t1
	slli.d	$t1, $t0, 8
	sub.d	$t0, $t0, $t1
	add.w	$a7, $a7, $t0
	slli.d	$a7, $a7, 2
	ldx.w	$a7, $s3, $a7
	slli.d	$a6, $a6, 2
	ldx.w	$t0, $s2, $a6
	xor	$a7, $t0, $a7
	stx.w	$a7, $s2, $a6
.LBB0_109:                              #   in Loop: Header=BB0_110 Depth=1
	addi.d	$a1, $a1, 1
	beq	$a1, $s6, .LBB0_95
.LBB0_110:                              # %.lr.ph373.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_112 Depth 2
                                        #     Child Loop BB0_117 Depth 2
	slli.d	$a6, $a1, 2
	ldx.w	$a6, $a6, $a4
	alsl.d	$a7, $a1, $a5, 2
	ori	$t1, $zero, 1
	move	$t2, $a3
	move	$t3, $a2
	ori	$t0, $zero, 1
	b	.LBB0_112
	.p2align	4, , 16
.LBB0_111:                              #   in Loop: Header=BB0_112 Depth=2
	addi.d	$t3, $t3, -1
	addi.d	$t1, $t1, 1
	addi.d	$t2, $t2, 4
	beqz	$t3, .LBB0_114
.LBB0_112:                              #   Parent Loop BB0_110 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t4, $t2, 0
	beq	$t4, $a0, .LBB0_111
# %bb.113:                              #   in Loop: Header=BB0_112 Depth=2
	ld.w	$t5, $a7, 0
	mul.d	$t5, $t5, $t1
	add.w	$t4, $t5, $t4
	mul.d	$t5, $t4, $s5
	srli.d	$t5, $t5, 32
	add.w	$t5, $t5, $t4
	bstrpick.d	$t6, $t5, 31, 31
	srai.d	$t5, $t5, 7
	add.d	$t5, $t5, $t6
	slli.d	$t6, $t5, 8
	sub.d	$t5, $t5, $t6
	add.w	$t4, $t4, $t5
	slli.d	$t4, $t4, 2
	ldx.w	$t4, $s3, $t4
	xor	$t0, $t4, $t0
	b	.LBB0_111
	.p2align	4, , 16
.LBB0_114:                              # %._crit_edge374.i
                                        #   in Loop: Header=BB0_110 Depth=1
	beqz	$t0, .LBB0_109
# %bb.115:                              # %.lr.ph378.i
                                        #   in Loop: Header=BB0_110 Depth=1
	slli.d	$t0, $t0, 2
	ldx.w	$t0, $s4, $t0
	move	$t2, $zero
	move	$t1, $zero
	addi.d	$t3, $sp, 684
	b	.LBB0_117
	.p2align	4, , 16
.LBB0_116:                              #   in Loop: Header=BB0_117 Depth=2
	addi.d	$t2, $t2, 1
	addi.d	$t3, $t3, 4
	beq	$s6, $t2, .LBB0_108
.LBB0_117:                              #   Parent Loop BB0_110 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$a1, $t2, .LBB0_116
# %bb.118:                              #   in Loop: Header=BB0_117 Depth=2
	ld.w	$t4, $t3, 0
	ld.w	$t5, $a7, 0
	add.w	$t4, $t5, $t4
	mul.d	$t5, $t4, $s5
	srli.d	$t5, $t5, 32
	add.w	$t5, $t5, $t4
	bstrpick.d	$t6, $t5, 31, 31
	srai.d	$t5, $t5, 7
	add.d	$t5, $t5, $t6
	slli.d	$t6, $t5, 8
	sub.d	$t5, $t5, $t6
	add.w	$t4, $t4, $t5
	slli.d	$t4, $t4, 2
	ldx.w	$t4, $s3, $t4
	xori	$t4, $t4, 1
	slli.d	$t4, $t4, 2
	ldx.w	$t4, $s4, $t4
	add.w	$t1, $t4, $t1
	b	.LBB0_116
.Lfunc_end0:
	.size	rsdec_204, .Lfunc_end0-rsdec_204
                                        # -- End function
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0                          # -- Begin function rsenc_204
.LCPI1_0:
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	4                               # 0x4
	.word	8                               # 0x8
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
	addi.d	$sp, $sp, -128
	st.d	$ra, $sp, 120                   # 8-byte Folded Spill
	st.d	$fp, $sp, 112                   # 8-byte Folded Spill
	st.d	$s0, $sp, 104                   # 8-byte Folded Spill
	st.d	$s1, $sp, 96                    # 8-byte Folded Spill
	st.d	$s2, $sp, 88                    # 8-byte Folded Spill
	st.d	$s3, $sp, 80                    # 8-byte Folded Spill
	st.d	$s4, $sp, 72                    # 8-byte Folded Spill
	st.d	$s5, $sp, 64                    # 8-byte Folded Spill
	st.d	$s6, $sp, 56                    # 8-byte Folded Spill
	st.d	$s7, $sp, 48                    # 8-byte Folded Spill
	st.d	$s8, $sp, 40                    # 8-byte Folded Spill
	move	$s0, $a1
	st.d	$a0, $sp, 0                     # 8-byte Folded Spill
	pcalau12i	$s1, %pc_hi20(inited)
	ld.bu	$a0, $s1, %pc_lo12(inited)
	pcalau12i	$a1, %pc_hi20(index_of)
	addi.d	$fp, $a1, %pc_lo12(index_of)
	pcalau12i	$a1, %pc_hi20(alpha_to)
	addi.d	$s3, $a1, %pc_lo12(alpha_to)
	bnez	$a0, .LBB1_6
# %bb.1:
	ori	$a0, $zero, 0
	lu32i.d	$a0, 1
	st.d	$a0, $fp, 4
	ori	$a0, $zero, 2
	st.w	$a0, $fp, 16
	ori	$a0, $zero, 3
	st.w	$a0, $fp, 32
	ori	$a0, $zero, 4
	st.w	$a0, $fp, 64
	ori	$a4, $zero, 29
	st.w	$a4, $s3, 32
	ori	$a0, $zero, 5
	pcalau12i	$a1, %pc_hi20(.LCPI1_0)
	xvld	$xr0, $a1, %pc_lo12(.LCPI1_0)
	st.w	$a0, $fp, 128
	ori	$a0, $zero, 6
	st.w	$a0, $fp, 256
	xvst	$xr0, $s3, 0
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
.LBB1_6:                                # %.preheader21.preheader
	pcalau12i	$a0, %pc_hi20(data)
	addi.d	$s1, $a0, %pc_lo12(data)
	ori	$a2, $zero, 204
	move	$a0, $s1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s0, 0
	ld.w	$a1, $s0, 4
	vinsgr2vr.w	$vr1, $a0, 0
	vinsgr2vr.w	$vr2, $a1, 0
	vrepli.b	$vr0, 0
	vilvl.b	$vr1, $vr0, $vr1
	vilvl.h	$vr1, $vr0, $vr1
	vilvl.b	$vr2, $vr0, $vr2
	vilvl.h	$vr2, $vr0, $vr2
	vst	$vr1, $s1, 204
	vst	$vr2, $s1, 220
	ld.w	$a0, $s0, 8
	ld.w	$a1, $s0, 12
	vinsgr2vr.w	$vr1, $a0, 0
	vinsgr2vr.w	$vr2, $a1, 0
	vilvl.b	$vr1, $vr0, $vr1
	vilvl.h	$vr1, $vr0, $vr1
	vilvl.b	$vr2, $vr0, $vr2
	vilvl.h	$vr2, $vr0, $vr2
	vst	$vr1, $s1, 236
	vst	$vr2, $s1, 252
	ld.w	$a0, $s0, 16
	ld.w	$a1, $s0, 20
	vinsgr2vr.w	$vr1, $a0, 0
	vinsgr2vr.w	$vr2, $a1, 0
	vilvl.b	$vr1, $vr0, $vr1
	vilvl.h	$vr1, $vr0, $vr1
	vilvl.b	$vr2, $vr0, $vr2
	vilvl.h	$vr2, $vr0, $vr2
	vst	$vr1, $s1, 268
	vst	$vr2, $s1, 284
	ld.w	$a0, $s0, 24
	ld.w	$a1, $s0, 28
	vinsgr2vr.w	$vr1, $a0, 0
	vinsgr2vr.w	$vr2, $a1, 0
	vilvl.b	$vr1, $vr0, $vr1
	vilvl.h	$vr1, $vr0, $vr1
	vilvl.b	$vr2, $vr0, $vr2
	vilvl.h	$vr2, $vr0, $vr2
	vst	$vr1, $s1, 300
	vst	$vr2, $s1, 316
	ld.w	$a0, $s0, 32
	ld.w	$a1, $s0, 36
	vinsgr2vr.w	$vr1, $a0, 0
	vinsgr2vr.w	$vr2, $a1, 0
	vilvl.b	$vr1, $vr0, $vr1
	vilvl.h	$vr1, $vr0, $vr1
	vilvl.b	$vr2, $vr0, $vr2
	vilvl.h	$vr2, $vr0, $vr2
	vst	$vr1, $s1, 332
	vst	$vr2, $s1, 348
	ld.w	$a0, $s0, 40
	ld.w	$a1, $s0, 44
	vinsgr2vr.w	$vr1, $a0, 0
	vinsgr2vr.w	$vr2, $a1, 0
	vilvl.b	$vr1, $vr0, $vr1
	vilvl.h	$vr1, $vr0, $vr1
	vilvl.b	$vr2, $vr0, $vr2
	vilvl.h	$vr2, $vr0, $vr2
	vst	$vr1, $s1, 364
	vst	$vr2, $s1, 380
	ld.w	$a0, $s0, 48
	ld.w	$a1, $s0, 52
	vinsgr2vr.w	$vr1, $a0, 0
	vinsgr2vr.w	$vr2, $a1, 0
	vilvl.b	$vr1, $vr0, $vr1
	vilvl.h	$vr1, $vr0, $vr1
	vilvl.b	$vr2, $vr0, $vr2
	vilvl.h	$vr2, $vr0, $vr2
	vst	$vr1, $s1, 396
	vst	$vr2, $s1, 412
	ld.w	$a0, $s0, 56
	ld.w	$a1, $s0, 60
	vinsgr2vr.w	$vr1, $a0, 0
	vinsgr2vr.w	$vr2, $a1, 0
	vilvl.b	$vr1, $vr0, $vr1
	vilvl.h	$vr1, $vr0, $vr1
	vilvl.b	$vr2, $vr0, $vr2
	vilvl.h	$vr2, $vr0, $vr2
	vst	$vr1, $s1, 428
	vst	$vr2, $s1, 444
	ld.w	$a0, $s0, 64
	ld.w	$a1, $s0, 68
	vinsgr2vr.w	$vr1, $a0, 0
	vinsgr2vr.w	$vr2, $a1, 0
	vilvl.b	$vr1, $vr0, $vr1
	vilvl.h	$vr1, $vr0, $vr1
	vilvl.b	$vr2, $vr0, $vr2
	vilvl.h	$vr2, $vr0, $vr2
	vst	$vr1, $s1, 460
	vst	$vr2, $s1, 476
	ld.w	$a0, $s0, 72
	ld.w	$a1, $s0, 76
	vinsgr2vr.w	$vr1, $a0, 0
	vinsgr2vr.w	$vr2, $a1, 0
	vilvl.b	$vr1, $vr0, $vr1
	vilvl.h	$vr1, $vr0, $vr1
	vilvl.b	$vr2, $vr0, $vr2
	vilvl.h	$vr2, $vr0, $vr2
	vst	$vr1, $s1, 492
	vst	$vr2, $s1, 508
	ld.w	$a0, $s0, 80
	ld.w	$a1, $s0, 84
	vinsgr2vr.w	$vr1, $a0, 0
	vinsgr2vr.w	$vr2, $a1, 0
	vilvl.b	$vr1, $vr0, $vr1
	vilvl.h	$vr1, $vr0, $vr1
	vilvl.b	$vr2, $vr0, $vr2
	vilvl.h	$vr2, $vr0, $vr2
	vst	$vr1, $s1, 524
	vst	$vr2, $s1, 540
	ld.w	$a0, $s0, 88
	ld.w	$a1, $s0, 92
	vinsgr2vr.w	$vr1, $a0, 0
	vinsgr2vr.w	$vr2, $a1, 0
	vilvl.b	$vr1, $vr0, $vr1
	vilvl.h	$vr1, $vr0, $vr1
	vilvl.b	$vr2, $vr0, $vr2
	vilvl.h	$vr2, $vr0, $vr2
	vst	$vr1, $s1, 556
	vst	$vr2, $s1, 572
	ld.w	$a0, $s0, 96
	ld.w	$a1, $s0, 100
	vinsgr2vr.w	$vr1, $a0, 0
	vinsgr2vr.w	$vr2, $a1, 0
	vilvl.b	$vr1, $vr0, $vr1
	vilvl.h	$vr1, $vr0, $vr1
	vilvl.b	$vr2, $vr0, $vr2
	vilvl.h	$vr2, $vr0, $vr2
	vst	$vr1, $s1, 588
	vst	$vr2, $s1, 604
	ld.w	$a0, $s0, 104
	ld.w	$a1, $s0, 108
	vinsgr2vr.w	$vr1, $a0, 0
	vinsgr2vr.w	$vr2, $a1, 0
	vilvl.b	$vr1, $vr0, $vr1
	vilvl.h	$vr1, $vr0, $vr1
	vilvl.b	$vr2, $vr0, $vr2
	vilvl.h	$vr2, $vr0, $vr2
	vst	$vr1, $s1, 620
	vst	$vr2, $s1, 636
	ld.w	$a0, $s0, 112
	ld.w	$a1, $s0, 116
	vinsgr2vr.w	$vr1, $a0, 0
	vinsgr2vr.w	$vr2, $a1, 0
	vilvl.b	$vr1, $vr0, $vr1
	vilvl.h	$vr1, $vr0, $vr1
	vilvl.b	$vr2, $vr0, $vr2
	vilvl.h	$vr2, $vr0, $vr2
	vst	$vr1, $s1, 652
	vst	$vr2, $s1, 668
	ld.w	$a0, $s0, 120
	ld.w	$a1, $s0, 124
	vinsgr2vr.w	$vr1, $a0, 0
	vinsgr2vr.w	$vr2, $a1, 0
	vilvl.b	$vr1, $vr0, $vr1
	vilvl.h	$vr1, $vr0, $vr1
	vilvl.b	$vr2, $vr0, $vr2
	vilvl.h	$vr2, $vr0, $vr2
	vst	$vr1, $s1, 684
	vst	$vr2, $s1, 700
	ld.w	$a0, $s0, 128
	ld.w	$a1, $s0, 132
	vinsgr2vr.w	$vr1, $a0, 0
	vinsgr2vr.w	$vr2, $a1, 0
	vilvl.b	$vr1, $vr0, $vr1
	vilvl.h	$vr1, $vr0, $vr1
	vilvl.b	$vr2, $vr0, $vr2
	vilvl.h	$vr2, $vr0, $vr2
	vst	$vr1, $s1, 716
	vst	$vr2, $s1, 732
	ld.w	$a0, $s0, 136
	ld.w	$a1, $s0, 140
	vinsgr2vr.w	$vr1, $a0, 0
	vinsgr2vr.w	$vr2, $a1, 0
	vilvl.b	$vr1, $vr0, $vr1
	vilvl.h	$vr1, $vr0, $vr1
	vilvl.b	$vr2, $vr0, $vr2
	vilvl.h	$vr2, $vr0, $vr2
	vst	$vr1, $s1, 748
	vst	$vr2, $s1, 764
	ld.w	$a0, $s0, 144
	ld.w	$a1, $s0, 148
	vinsgr2vr.w	$vr1, $a0, 0
	vinsgr2vr.w	$vr2, $a1, 0
	vilvl.b	$vr1, $vr0, $vr1
	vilvl.h	$vr1, $vr0, $vr1
	vilvl.b	$vr2, $vr0, $vr2
	vilvl.h	$vr2, $vr0, $vr2
	vst	$vr1, $s1, 780
	vst	$vr2, $s1, 796
	ld.w	$a0, $s0, 152
	ld.w	$a1, $s0, 156
	vinsgr2vr.w	$vr1, $a0, 0
	vinsgr2vr.w	$vr2, $a1, 0
	vilvl.b	$vr1, $vr0, $vr1
	vilvl.h	$vr1, $vr0, $vr1
	vilvl.b	$vr2, $vr0, $vr2
	vilvl.h	$vr2, $vr0, $vr2
	vst	$vr1, $s1, 812
	vst	$vr2, $s1, 828
	ld.w	$a0, $s0, 160
	ld.w	$a1, $s0, 164
	vinsgr2vr.w	$vr1, $a0, 0
	vinsgr2vr.w	$vr2, $a1, 0
	vilvl.b	$vr1, $vr0, $vr1
	vilvl.h	$vr1, $vr0, $vr1
	vilvl.b	$vr2, $vr0, $vr2
	vilvl.h	$vr2, $vr0, $vr2
	vst	$vr1, $s1, 844
	vst	$vr2, $s1, 860
	ld.w	$a0, $s0, 168
	ld.w	$a1, $s0, 172
	vinsgr2vr.w	$vr1, $a0, 0
	vinsgr2vr.w	$vr2, $a1, 0
	vilvl.b	$vr1, $vr0, $vr1
	vilvl.h	$vr1, $vr0, $vr1
	vilvl.b	$vr2, $vr0, $vr2
	vilvl.h	$vr2, $vr0, $vr2
	vst	$vr1, $s1, 876
	vst	$vr2, $s1, 892
	ld.w	$a0, $s0, 176
	ld.w	$a1, $s0, 180
	vinsgr2vr.w	$vr1, $a0, 0
	vinsgr2vr.w	$vr2, $a1, 0
	vilvl.b	$vr1, $vr0, $vr1
	vilvl.h	$vr1, $vr0, $vr1
	vilvl.b	$vr2, $vr0, $vr2
	vilvl.h	$vr0, $vr0, $vr2
	vst	$vr1, $s1, 908
	vst	$vr0, $s1, 924
	ld.bu	$a0, $s0, 184
	st.w	$a0, $s1, 940
	ld.bu	$a0, $s0, 185
	st.w	$a0, $s1, 944
	ld.bu	$a0, $s0, 186
	st.w	$a0, $s1, 948
	ld.bu	$a0, $s0, 187
	move	$a2, $zero
	move	$a1, $zero
	st.w	$a0, $s1, 952
	pcalau12i	$a0, %pc_hi20(bb)
	addi.d	$a0, $a0, %pc_lo12(bb)
	xvrepli.b	$xr0, 0
	xvst	$xr0, $a0, 32
	xvst	$xr0, $a0, 0
	pcalau12i	$a3, %pc_hi20(gg)
	addi.d	$a3, $a3, %pc_lo12(gg)
	ld.w	$a4, $a3, 0
	st.d	$a4, $sp, 32                    # 8-byte Folded Spill
	ld.w	$a4, $a3, 60
	ld.w	$a5, $a3, 56
	ld.w	$a6, $a3, 52
	st.d	$a6, $sp, 8                     # 8-byte Folded Spill
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
	st.d	$a4, $sp, 24                    # 8-byte Folded Spill
	st.d	$a5, $sp, 16                    # 8-byte Folded Spill
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
	ld.d	$a4, $sp, 8                     # 8-byte Folded Reload
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
	ld.d	$a5, $sp, 16                    # 8-byte Folded Reload
	st.w	$a2, $a0, 4
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
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
	ld.d	$a4, $sp, 24                    # 8-byte Folded Reload
	addi.d	$s6, $s6, -4
	st.w	$a2, $a0, 0
	bne	$s6, $s8, .LBB1_8
.LBB1_40:                               # %vector.memcheck
	ld.d	$a6, $sp, 0                     # 8-byte Folded Reload
	sub.d	$a3, $a6, $s0
	ori	$a4, $zero, 31
	bltu	$a4, $a3, .LBB1_42
# %bb.41:
	move	$a3, $zero
	b	.LBB1_43
.LBB1_42:                               # %vector.body39
	xvld	$xr0, $s0, 0
	xvst	$xr0, $a6, 0
	xvld	$xr0, $s0, 32
	xvst	$xr0, $a6, 32
	xvld	$xr0, $s0, 64
	xvst	$xr0, $a6, 64
	xvld	$xr0, $s0, 96
	xvst	$xr0, $a6, 96
	xvld	$xr0, $s0, 128
	xvst	$xr0, $a6, 128
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
# %bb.45:                               # %.preheader
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
	ld.d	$s8, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 112                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 120                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 128
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
	.comm	recd,1020,32
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
	.comm	alpha_to,1024,32
	.type	gg,@object                      # @gg
	.local	gg
	.comm	gg,68,4
	.section	".note.GNU-stack","",@progbits
	.addrsig
