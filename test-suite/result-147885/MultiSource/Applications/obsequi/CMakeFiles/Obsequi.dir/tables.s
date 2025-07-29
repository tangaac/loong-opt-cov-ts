	.file	"tables.c"
	.text
	.globl	init_static_tables              # -- Begin function init_static_tables
	.p2align	5
	.type	init_static_tables,@function
init_static_tables:                     # @init_static_tables
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$fp, $sp, 40                    # 8-byte Folded Spill
	st.d	$s0, $sp, 32                    # 8-byte Folded Spill
	st.d	$s1, $sp, 24                    # 8-byte Folded Spill
	st.d	$s2, $sp, 16                    # 8-byte Folded Spill
	st.d	$s3, $sp, 8                     # 8-byte Folded Spill
	st.d	$s4, $sp, 0                     # 8-byte Folded Spill
	move	$a1, $zero
	pcalau12i	$a0, %pc_hi20(countbits16)
	addi.d	$a2, $a0, %pc_lo12(countbits16)
	st.w	$zero, $a2, 0
	addi.d	$a3, $a2, 4
	ori	$a4, $zero, 1
	lu12i.w	$a0, 15
	ori	$a0, $a0, 4095
	.p2align	4, , 16
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	addi.d	$a1, $a1, 1
	slli.d	$a5, $a1, 1
	bstrpick.d	$a5, $a5, 32, 2
	slli.d	$a5, $a5, 2
	ldx.w	$a5, $a2, $a5
	andi	$a6, $a4, 1
	add.d	$a5, $a6, $a5
	st.w	$a5, $a3, 0
	addi.d	$a3, $a3, 4
	addi.d	$a4, $a4, 1
	bne	$a1, $a0, .LBB0_1
# %bb.2:                                # %init_countbits.exit.preheader
	pcalau12i	$a1, %pc_hi20(lastbit16)
	addi.d	$a1, $a1, %pc_lo12(lastbit16)
	addi.d	$a2, $a1, 4
	ori	$a3, $zero, 1
	lu12i.w	$a4, 1
	lu12i.w	$a5, 2
	lu12i.w	$a6, 4
	ori	$a7, $zero, 15
	ori	$t0, $zero, 14
	ori	$t1, $zero, 13
	ori	$t2, $zero, 12
	ori	$t3, $zero, 11
	ori	$t4, $zero, 10
	ori	$t5, $zero, 9
	ori	$t6, $zero, 8
	ori	$t7, $zero, 7
	ori	$t8, $zero, 6
	ori	$fp, $zero, 5
	ori	$s0, $zero, 4
	ori	$s1, $zero, 3
	ori	$s2, $zero, 2
	ori	$s3, $zero, 1
	b	.LBB0_5
	.p2align	4, , 16
.LBB0_3:                                #   in Loop: Header=BB0_5 Depth=1
	st.w	$zero, $a2, 0
.LBB0_4:                                #   in Loop: Header=BB0_5 Depth=1
	addi.d	$a2, $a2, 4
	addi.d	$a0, $a0, -1
	addi.w	$s3, $s3, 1
	beqz	$a0, .LBB0_35
.LBB0_5:                                # %init_countbits.exit
                                        # =>This Inner Loop Header: Depth=1
	andi	$s4, $s3, 1
	bnez	$s4, .LBB0_3
# %bb.6:                                #   in Loop: Header=BB0_5 Depth=1
	andi	$s4, $s3, 2
	bnez	$s4, .LBB0_21
# %bb.7:                                #   in Loop: Header=BB0_5 Depth=1
	andi	$s4, $s3, 4
	bnez	$s4, .LBB0_22
# %bb.8:                                #   in Loop: Header=BB0_5 Depth=1
	andi	$s4, $s3, 8
	bnez	$s4, .LBB0_23
# %bb.9:                                #   in Loop: Header=BB0_5 Depth=1
	andi	$s4, $s3, 16
	bnez	$s4, .LBB0_24
# %bb.10:                               #   in Loop: Header=BB0_5 Depth=1
	andi	$s4, $s3, 32
	bnez	$s4, .LBB0_25
# %bb.11:                               #   in Loop: Header=BB0_5 Depth=1
	andi	$s4, $s3, 64
	bnez	$s4, .LBB0_26
# %bb.12:                               #   in Loop: Header=BB0_5 Depth=1
	andi	$s4, $s3, 128
	bnez	$s4, .LBB0_27
# %bb.13:                               #   in Loop: Header=BB0_5 Depth=1
	andi	$s4, $s3, 256
	bnez	$s4, .LBB0_28
# %bb.14:                               #   in Loop: Header=BB0_5 Depth=1
	andi	$s4, $s3, 512
	bnez	$s4, .LBB0_29
# %bb.15:                               #   in Loop: Header=BB0_5 Depth=1
	andi	$s4, $s3, 1024
	bnez	$s4, .LBB0_30
# %bb.16:                               #   in Loop: Header=BB0_5 Depth=1
	andi	$s4, $s3, 2048
	bnez	$s4, .LBB0_31
# %bb.17:                               #   in Loop: Header=BB0_5 Depth=1
	and	$s4, $s3, $a4
	bnez	$s4, .LBB0_32
# %bb.18:                               #   in Loop: Header=BB0_5 Depth=1
	and	$s4, $s3, $a5
	bnez	$s4, .LBB0_33
# %bb.19:                               #   in Loop: Header=BB0_5 Depth=1
	and	$s4, $s3, $a6
	bnez	$s4, .LBB0_34
# %bb.20:                               #   in Loop: Header=BB0_5 Depth=1
	st.w	$a7, $a2, 0
	b	.LBB0_4
	.p2align	4, , 16
.LBB0_21:                               #   in Loop: Header=BB0_5 Depth=1
	st.w	$a3, $a2, 0
	b	.LBB0_4
.LBB0_22:                               #   in Loop: Header=BB0_5 Depth=1
	st.w	$s2, $a2, 0
	b	.LBB0_4
.LBB0_23:                               #   in Loop: Header=BB0_5 Depth=1
	st.w	$s1, $a2, 0
	b	.LBB0_4
.LBB0_24:                               #   in Loop: Header=BB0_5 Depth=1
	st.w	$s0, $a2, 0
	b	.LBB0_4
.LBB0_25:                               #   in Loop: Header=BB0_5 Depth=1
	st.w	$fp, $a2, 0
	b	.LBB0_4
.LBB0_26:                               #   in Loop: Header=BB0_5 Depth=1
	st.w	$t8, $a2, 0
	b	.LBB0_4
.LBB0_27:                               #   in Loop: Header=BB0_5 Depth=1
	st.w	$t7, $a2, 0
	b	.LBB0_4
.LBB0_28:                               #   in Loop: Header=BB0_5 Depth=1
	st.w	$t6, $a2, 0
	b	.LBB0_4
.LBB0_29:                               #   in Loop: Header=BB0_5 Depth=1
	st.w	$t5, $a2, 0
	b	.LBB0_4
.LBB0_30:                               #   in Loop: Header=BB0_5 Depth=1
	st.w	$t4, $a2, 0
	b	.LBB0_4
.LBB0_31:                               #   in Loop: Header=BB0_5 Depth=1
	st.w	$t3, $a2, 0
	b	.LBB0_4
.LBB0_32:                               #   in Loop: Header=BB0_5 Depth=1
	st.w	$t2, $a2, 0
	b	.LBB0_4
.LBB0_33:                               #   in Loop: Header=BB0_5 Depth=1
	st.w	$t1, $a2, 0
	b	.LBB0_4
.LBB0_34:                               #   in Loop: Header=BB0_5 Depth=1
	st.w	$t0, $a2, 0
	b	.LBB0_4
.LBB0_35:                               # %init_lastbit.exit
	move	$a0, $zero
	move	$a5, $zero
	ori	$a2, $zero, 100
	st.w	$a2, $a1, 0
	lu12i.w	$a1, 8
	lu12i.w	$a2, -65536
	lu32i.d	$a2, 0
	pcalau12i	$a3, %pc_hi20(move_table16)
	addi.d	$a3, $a3, %pc_lo12(move_table16)
	lu12i.w	$a4, 16
	b	.LBB0_37
	.p2align	4, , 16
.LBB0_36:                               # %._crit_edge.i
                                        #   in Loop: Header=BB0_37 Depth=1
	and	$a7, $a5, $a1
	sltui	$a7, $a7, 1
	or	$t0, $a6, $a2
	masknez	$t0, $t0, $a7
	maskeqz	$a6, $a6, $a7
	or	$a6, $a6, $t0
	slli.d	$a7, $a0, 2
	addi.d	$a0, $a0, 1
	stx.w	$a6, $a3, $a7
	beq	$a0, $a4, .LBB0_40
.LBB0_37:                               # %.preheader.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_39 Depth 2
	move	$a6, $zero
	beqz	$a0, .LBB0_36
# %bb.38:                               # %.lr.ph.preheader.i
                                        #   in Loop: Header=BB0_37 Depth=1
	move	$a7, $a0
	.p2align	4, , 16
.LBB0_39:                               # %.lr.ph.i
                                        #   Parent Loop BB0_37 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	sub.w	$t0, $zero, $a7
	and	$a5, $a7, $t0
	slli.d	$t1, $a5, 1
	or	$t0, $t1, $t0
	andn	$a7, $a7, $t0
	addi.w	$t0, $a7, 0
	addi.d	$a6, $a6, 1
	bnez	$t0, .LBB0_39
	b	.LBB0_36
.LBB0_40:                               # %init_movetable.exit
	ld.d	$s4, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end0:
	.size	init_static_tables, .Lfunc_end0-init_static_tables
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function init_less_static_tables
.LCPI1_0:
	.word	4294967295                      # 0xffffffff
	.word	0                               # 0x0
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
.LCPI1_1:
	.word	0                               # 0x0
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	0                               # 0x0
	.text
	.globl	init_less_static_tables
	.p2align	5
	.type	init_less_static_tables,@function
init_less_static_tables:                # @init_less_static_tables
# %bb.0:
	addi.d	$sp, $sp, -64
	st.d	$fp, $sp, 56                    # 8-byte Folded Spill
	st.d	$s0, $sp, 48                    # 8-byte Folded Spill
	st.d	$s1, $sp, 40                    # 8-byte Folded Spill
	st.d	$s2, $sp, 32                    # 8-byte Folded Spill
	st.d	$s3, $sp, 24                    # 8-byte Folded Spill
	st.d	$s4, $sp, 16                    # 8-byte Folded Spill
	st.d	$s5, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(g_board_size)
	ld.d	$a1, $a0, %got_pc_lo12(g_board_size)
	ld.w	$a0, $a1, 0
	ld.w	$a1, $a1, 4
	ori	$a4, $zero, 32
	pcalau12i	$a3, %pc_hi20(g_keyinfo)
	addi.w	$a2, $zero, -1
	addi.d	$a5, $a3, %pc_lo12(g_keyinfo)
	move	$a6, $a2
	lu32i.d	$a6, 0
	lu12i.w	$a3, 12
	ori	$a7, $a3, 768
	.p2align	4, , 16
.LBB1_1:                                # %vector.ph
                                        # =>This Inner Loop Header: Depth=1
	st.d	$a6, $a5, 4
	st.w	$a6, $a5, 0
	st.d	$a2, $a5, 48
	st.w	$zero, $a5, 56
	add.d	$t0, $a5, $a7
	st.d	$a2, $t0, -768
	st.d	$a2, $t0, -720
	st.w	$zero, $t0, -760
	st.w	$zero, $t0, -712
	st.d	$a2, $a5, 96
	st.d	$a2, $a5, 144
	st.w	$zero, $a5, 104
	st.w	$zero, $a5, 152
	st.d	$a6, $t0, -620
	st.d	$a2, $t0, -672
	st.w	$a6, $t0, -624
	st.w	$zero, $t0, -664
	st.w	$a6, $a5, 196
	st.w	$a6, $a5, 244
	st.w	$a6, $a5, 192
	st.w	$a6, $a5, 240
	st.w	$zero, $a5, 200
	st.w	$zero, $a5, 248
	st.d	$a2, $t0, -576
	st.d	$a2, $t0, -528
	st.w	$zero, $t0, -568
	st.w	$zero, $t0, -520
	st.d	$a2, $a5, 288
	st.d	$a2, $a5, 336
	st.w	$zero, $a5, 296
	st.w	$zero, $a5, 344
	st.d	$a2, $t0, -480
	st.d	$a2, $t0, -432
	st.w	$zero, $t0, -472
	st.w	$zero, $t0, -424
	st.w	$a6, $a5, 388
	st.w	$a6, $a5, 436
	st.w	$a6, $a5, 384
	st.w	$a6, $a5, 432
	st.w	$zero, $a5, 392
	st.w	$zero, $a5, 440
	st.d	$a2, $t0, -384
	st.d	$a2, $t0, -336
	st.w	$zero, $t0, -376
	st.w	$zero, $t0, -328
	st.d	$a2, $a5, 480
	st.d	$a2, $a5, 528
	st.w	$zero, $a5, 488
	st.w	$zero, $a5, 536
	st.d	$a2, $t0, -288
	st.d	$a2, $t0, -240
	st.w	$zero, $t0, -280
	st.w	$zero, $t0, -232
	st.w	$a6, $a5, 580
	st.w	$a6, $a5, 628
	st.w	$a6, $a5, 576
	st.w	$a6, $a5, 624
	st.w	$zero, $a5, 584
	st.w	$zero, $a5, 632
	st.w	$a6, $t0, -188
	st.w	$a6, $t0, -140
	st.w	$a6, $t0, -192
	st.w	$a6, $t0, -144
	st.w	$zero, $t0, -184
	st.w	$zero, $t0, -136
	st.w	$a6, $a5, 676
	st.w	$a6, $a5, 724
	st.w	$a6, $a5, 672
	st.w	$a6, $a5, 720
	st.w	$zero, $a5, 680
	st.w	$zero, $a5, 728
	st.w	$a6, $t0, -92
	st.w	$a6, $t0, -44
	st.w	$a6, $t0, -96
	st.w	$a6, $t0, -48
	st.w	$zero, $t0, -88
	st.w	$zero, $t0, -40
	st.w	$a6, $a5, 772
	st.w	$a6, $a5, 820
	st.w	$a6, $a5, 768
	st.w	$a6, $a5, 816
	st.w	$zero, $a5, 776
	st.w	$zero, $a5, 824
	st.w	$a6, $t0, 4
	st.w	$a6, $t0, 52
	stx.w	$a6, $a5, $a7
	st.w	$a6, $t0, 48
	st.w	$zero, $t0, 8
	st.w	$zero, $t0, 56
	st.w	$a6, $a5, 868
	st.w	$a6, $a5, 916
	st.w	$a6, $a5, 864
	st.w	$a6, $a5, 912
	st.w	$zero, $a5, 872
	st.w	$zero, $a5, 920
	st.w	$a6, $t0, 100
	st.w	$a6, $t0, 148
	st.w	$a6, $t0, 96
	st.w	$a6, $t0, 144
	st.w	$zero, $t0, 104
	st.w	$zero, $t0, 152
	st.w	$a6, $a5, 964
	st.w	$a6, $a5, 1012
	st.w	$a6, $a5, 960
	st.w	$a6, $a5, 1008
	st.w	$zero, $a5, 968
	st.w	$zero, $a5, 1016
	st.w	$a6, $t0, 196
	st.w	$a6, $t0, 244
	st.w	$a6, $t0, 192
	st.w	$a6, $t0, 240
	st.w	$zero, $t0, 200
	st.w	$zero, $t0, 248
	st.w	$a6, $a5, 1060
	st.w	$a6, $a5, 1108
	st.w	$a6, $a5, 1056
	st.w	$a6, $a5, 1104
	st.w	$zero, $a5, 1064
	st.w	$zero, $a5, 1112
	st.w	$a6, $t0, 292
	st.w	$a6, $t0, 340
	st.w	$a6, $t0, 288
	st.w	$a6, $t0, 336
	st.w	$zero, $t0, 296
	st.w	$zero, $t0, 344
	st.w	$a6, $a5, 1156
	st.w	$a6, $a5, 1204
	st.w	$a6, $a5, 1152
	st.w	$a6, $a5, 1200
	st.w	$zero, $a5, 1160
	st.w	$zero, $a5, 1208
	st.w	$a6, $t0, 388
	st.w	$a6, $t0, 436
	st.w	$a6, $t0, 384
	st.w	$a6, $t0, 432
	st.w	$zero, $t0, 392
	st.w	$zero, $t0, 440
	st.w	$a6, $a5, 1252
	st.w	$a6, $a5, 1300
	st.w	$a6, $a5, 1248
	st.w	$a6, $a5, 1296
	st.w	$zero, $a5, 1256
	st.w	$zero, $a5, 1304
	st.w	$a6, $t0, 484
	st.w	$a6, $t0, 532
	st.w	$a6, $t0, 480
	st.w	$a6, $t0, 528
	st.w	$zero, $t0, 488
	st.w	$zero, $t0, 536
	st.w	$a6, $a5, 1348
	st.w	$a6, $a5, 1396
	st.w	$a6, $a5, 1344
	st.w	$a6, $a5, 1392
	st.w	$zero, $a5, 1352
	st.w	$zero, $a5, 1400
	st.w	$a6, $t0, 580
	st.w	$a6, $t0, 628
	st.w	$a6, $t0, 576
	st.w	$a6, $t0, 624
	st.w	$zero, $t0, 584
	st.w	$zero, $t0, 632
	st.w	$a6, $a5, 1444
	st.w	$a6, $a5, 1492
	st.w	$a6, $a5, 1440
	st.w	$a6, $a5, 1488
	st.w	$zero, $a5, 1448
	st.w	$zero, $a5, 1496
	st.w	$a6, $t0, 676
	st.w	$a6, $t0, 724
	st.w	$a6, $t0, 672
	st.w	$a6, $t0, 720
	st.w	$zero, $t0, 680
	st.w	$zero, $t0, 728
	addi.d	$a4, $a4, -1
	addi.d	$a5, $a5, 1536
	bnez	$a4, .LBB1_1
# %bb.2:                                # %.preheader63
	ori	$a4, $zero, 1
	blt	$a0, $a4, .LBB1_15
# %bb.3:                                # %.preheader63
	blez	$a1, .LBB1_15
# %bb.4:                                # %.preheader62.us.preheader
	move	$a4, $zero
	move	$a7, $zero
	pcalau12i	$a5, %pc_hi20(g_keyinfo)
	addi.d	$a5, $a5, %pc_lo12(g_keyinfo)
	ori	$a3, $a3, 1588
	add.d	$a3, $a5, $a3
	addi.d	$a5, $a5, 1588
	b	.LBB1_6
	.p2align	4, , 16
.LBB1_5:                                # %._crit_edge.us
                                        #   in Loop: Header=BB1_6 Depth=1
	add.d	$a4, $a4, $a1
	addi.d	$a5, $a5, 1536
	addi.d	$a3, $a3, 48
	move	$a7, $a6
	beq	$a6, $a0, .LBB1_15
.LBB1_6:                                # %.preheader62.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_13 Depth 2
                                        #     Child Loop BB1_9 Depth 2
	addi.d	$a6, $a7, 1
	bgeu	$a6, $a0, .LBB1_11
# %bb.7:                                # %.lr.ph.split.us.us.preheader
                                        #   in Loop: Header=BB1_6 Depth=1
	move	$t4, $zero
	mul.d	$a7, $a7, $a1
	move	$t0, $a5
	move	$t1, $a3
	move	$t2, $a4
	b	.LBB1_9
	.p2align	4, , 16
.LBB1_8:                                #   in Loop: Header=BB1_9 Depth=2
	st.w	$t6, $t1, -4
	add.d	$t2, $a1, $t2
	st.w	$t2, $t1, 0
	addi.d	$t1, $t1, 1536
	addi.d	$t0, $t0, 48
	move	$t2, $t5
	move	$t4, $t3
	beq	$a1, $t3, .LBB1_5
.LBB1_9:                                # %.lr.ph.split.us.us
                                        #   Parent Loop BB1_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$t3, $t4, 1
	addi.d	$t5, $t2, 1
	move	$t6, $t2
	bgeu	$t3, $a1, .LBB1_8
# %bb.10:                               #   in Loop: Header=BB1_9 Depth=2
	add.d	$t6, $t4, $a7
	st.w	$t2, $t0, -4
	st.w	$t5, $t0, 0
	b	.LBB1_8
	.p2align	4, , 16
.LBB1_11:                               # %.lr.ph.split.us73.preheader
                                        #   in Loop: Header=BB1_6 Depth=1
	move	$a7, $zero
	move	$t0, $a5
	move	$t1, $a4
	b	.LBB1_13
	.p2align	4, , 16
.LBB1_12:                               #   in Loop: Header=BB1_13 Depth=2
	addi.d	$t0, $t0, 48
	move	$t1, $t2
	beq	$a1, $a7, .LBB1_5
.LBB1_13:                               # %.lr.ph.split.us73
                                        #   Parent Loop BB1_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$a7, $a7, 1
	addi.d	$t2, $t1, 1
	bgeu	$a7, $a1, .LBB1_12
# %bb.14:                               #   in Loop: Header=BB1_13 Depth=2
	st.w	$t1, $t0, -4
	st.w	$t2, $t0, 0
	b	.LBB1_12
.LBB1_15:                               # %.preheader60.preheader
	move	$a3, $zero
	pcalau12i	$a4, %pc_hi20(.LCPI1_0)
	vld	$vr0, $a4, %pc_lo12(.LCPI1_0)
	pcalau12i	$a4, %pc_hi20(.LCPI1_1)
	vld	$vr1, $a4, %pc_lo12(.LCPI1_1)
	pcalau12i	$a4, %got_pc_hi20(g_zobrist)
	ld.d	$a4, $a4, %got_pc_lo12(g_zobrist)
	pcalau12i	$a5, %pc_hi20(g_keyinfo)
	addi.d	$a5, $a5, %pc_lo12(g_keyinfo)
	ori	$a6, $zero, 32
	b	.LBB1_17
	.p2align	4, , 16
.LBB1_16:                               #   in Loop: Header=BB1_17 Depth=1
	addi.d	$a3, $a3, 1
	beq	$a3, $a6, .LBB1_24
.LBB1_17:                               # %.preheader60
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_19 Depth 2
                                        #       Child Loop BB1_22 Depth 3
	move	$a7, $zero
	alsl.d	$t0, $a3, $a3, 1
	slli.d	$t0, $t0, 9
	b	.LBB1_19
	.p2align	4, , 16
.LBB1_18:                               #   in Loop: Header=BB1_19 Depth=2
	addi.d	$a7, $a7, 1
	beq	$a7, $a6, .LBB1_16
.LBB1_19:                               # %.preheader
                                        #   Parent Loop BB1_17 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_22 Depth 3
	move	$t3, $zero
	ori	$t2, $zero, 1
	slli.d	$t1, $a7, 5
	alsl.d	$t1, $a7, $t1, 4
	b	.LBB1_22
	.p2align	4, , 16
.LBB1_20:                               #   in Loop: Header=BB1_22 Depth=3
	ld.w	$t5, $t3, 4
	div.w	$t6, $t4, $a1
	mul.d	$t7, $t6, $a1
	sub.w	$t8, $t4, $t7
	div.w	$fp, $t5, $a1
	mul.d	$t4, $fp, $a1
	sub.w	$t5, $t5, $t4
	nor	$s0, $t8, $zero
	add.d	$s0, $a1, $s0
	add.w	$t7, $s0, $t7
	st.w	$t7, $t3, 12
	nor	$s1, $t5, $zero
	add.d	$s1, $a1, $s1
	add.w	$s2, $s1, $t4
	st.w	$s2, $t3, 16
	nor	$t4, $t6, $zero
	add.d	$t4, $a0, $t4
	mul.d	$t4, $t4, $a1
	add.w	$s3, $t4, $t8
	st.w	$s3, $t3, 24
	nor	$s4, $fp, $zero
	add.d	$s4, $a0, $s4
	mul.d	$s4, $s4, $a1
	add.w	$s5, $s4, $t5
	st.w	$s5, $t3, 28
	add.w	$t4, $t4, $s0
	slli.d	$t6, $t6, 7
	add.d	$t6, $t6, $a4
	alsl.d	$t6, $t8, $t6, 2
	ld.w	$t6, $t6, 132
	slli.d	$t8, $fp, 7
	add.d	$t8, $t8, $a4
	alsl.d	$t5, $t5, $t8, 2
	ld.w	$t8, $t5, 132
	div.w	$t5, $t7, $a1
	mul.d	$fp, $t5, $a1
	sub.w	$t7, $t7, $fp
	slli.d	$t5, $t5, 7
	add.d	$t5, $t5, $a4
	alsl.d	$t5, $t7, $t5, 2
	ld.w	$t7, $t5, 132
	div.w	$t5, $s2, $a1
	mul.d	$fp, $t5, $a1
	sub.w	$fp, $s2, $fp
	slli.d	$t5, $t5, 7
	add.d	$t5, $t5, $a4
	alsl.d	$t5, $fp, $t5, 2
	ld.w	$fp, $t5, 132
	add.w	$t5, $s4, $s1
	xor	$t6, $t8, $t6
	st.w	$t6, $t3, 8
	xor	$t6, $fp, $t7
	div.w	$t7, $s3, $a1
	mul.d	$t8, $t7, $a1
	sub.w	$t8, $s3, $t8
	slli.d	$t7, $t7, 7
	add.d	$t7, $t7, $a4
	alsl.d	$t7, $t8, $t7, 2
	ld.w	$t7, $t7, 132
	div.w	$t8, $s5, $a1
	mul.d	$fp, $t8, $a1
	sub.w	$fp, $s5, $fp
	slli.d	$t8, $t8, 7
	add.d	$t8, $t8, $a4
	alsl.d	$t8, $fp, $t8, 2
	ld.w	$t8, $t8, 132
	div.w	$fp, $t4, $a1
	mul.d	$s0, $fp, $a1
	sub.w	$s0, $t4, $s0
	slli.d	$fp, $fp, 7
	add.d	$fp, $fp, $a4
	alsl.d	$fp, $s0, $fp, 2
	ld.w	$fp, $fp, 132
	div.w	$s0, $t5, $a1
	mul.d	$s1, $s0, $a1
	sub.w	$s1, $t5, $s1
	slli.d	$s0, $s0, 7
	add.d	$s0, $s0, $a4
	alsl.d	$s0, $s1, $s0, 2
	ld.w	$s0, $s0, 132
	st.w	$t6, $t3, 20
	xor	$t6, $t8, $t7
	st.w	$t6, $t3, 32
	xor	$t6, $s0, $fp
.LBB1_21:                               # %fill_in_key_entry.exit
                                        #   in Loop: Header=BB1_22 Depth=3
	st.w	$t5, $t3, 40
	st.w	$t4, $t3, 36
	st.w	$t6, $t3, 44
	andi	$t4, $t2, 1
	ori	$t3, $zero, 1
	move	$t2, $zero
	beqz	$t4, .LBB1_18
.LBB1_22:                               #   Parent Loop BB1_17 Depth=1
                                        #     Parent Loop BB1_19 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	alsl.d	$t3, $t3, $t3, 1
	slli.d	$t3, $t3, 14
	add.d	$t3, $a5, $t3
	add.d	$t3, $t3, $t0
	ldx.w	$t4, $t3, $t1
	add.d	$t3, $t3, $t1
	bne	$t4, $a2, .LBB1_20
# %bb.23:                               #   in Loop: Header=BB1_22 Depth=3
	move	$t6, $zero
	vst	$vr0, $t3, 4
	vst	$vr1, $t3, 20
	move	$t5, $a2
	move	$t4, $a2
	b	.LBB1_21
.LBB1_24:
	ld.d	$s5, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s4, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 48                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.Lfunc_end1:
	.size	init_less_static_tables, .Lfunc_end1-init_less_static_tables
                                        # -- End function
	.type	g_keyinfo,@object               # @g_keyinfo
	.bss
	.globl	g_keyinfo
	.p2align	2, 0x0
g_keyinfo:
	.space	98304
	.size	g_keyinfo, 98304

	.type	countbits16,@object             # @countbits16
	.globl	countbits16
	.p2align	2, 0x0
countbits16:
	.space	262144
	.size	countbits16, 262144

	.type	lastbit16,@object               # @lastbit16
	.globl	lastbit16
	.p2align	2, 0x0
lastbit16:
	.space	262144
	.size	lastbit16, 262144

	.type	move_table16,@object            # @move_table16
	.globl	move_table16
	.p2align	2, 0x0
move_table16:
	.space	262144
	.size	move_table16, 262144

	.section	".note.GNU-stack","",@progbits
	.addrsig
